; ModuleID = './[inter]keepalived--vrrp--vrrp_iptables.o.i'
source_filename = "./[inter]keepalived--vrrp--vrrp_iptables.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._data = type { i8*, i8, i8*, i8, i8*, i8*, %struct.sockaddr_storage, i8*, i64, %struct._list*, i32, i8, i8, i32, i8*, %struct._interface*, i32, i32, i32, i32, %struct.lvs_syncd_config, i8, %struct.sockaddr_in, %struct.sockaddr_in6, i32, %struct.timeval, i32, i32, i32, i32, i32, i32, i8, i8, i32, [29 x i8], [29 x i8], i8, [32 x i8], [32 x i8], [32 x i8], i8, i8, i8, i8, i8, i8, i32, i64, i8, i8, i8, i32, i64, %struct._notify_fifo, %struct._notify_fifo, %struct._notify_fifo, i32, i8, i32, i8, i32, i8, i32, i8, i8, i8, i32, i64, i32 }
%struct.sockaddr_storage = type { i16, [118 x i8], i64 }
%struct._list = type { %struct._element*, %struct._element*, i32, void (i8*)*, void (%struct._IO_FILE*, i8*)* }
%struct._element = type { %struct._element*, %struct._element*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._interface = type { [16 x i8], i32, %struct.in_addr, %struct.in6_addr, i32, i8, i32, i16, [32 x i8], [32 x i8], i64, i32, i8, i32, %struct._interface*, i32, %struct._interface*, i8, %struct._garp_delay*, i8, i32, i32, i32, i32, i32, i8, %struct._list* }
%struct.in_addr = type { i32 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct._garp_delay = type { %struct.timeval, i8, %struct.timeval, i8, %struct.timeval, %struct.timeval, i32 }
%struct.lvs_syncd_config = type { i8*, %struct._vrrp_t*, i32, i16, %struct.sockaddr_storage, i16, i8, i8* }
%struct._vrrp_t = type { i16, i8*, %struct._vrrp_sgroup*, %struct._vrrp_stats*, %struct._interface*, i8, i8, i8, i32, i64, [16 x i8], %struct._list*, %struct._list*, %struct._list*, i32, i32, %struct.sockaddr_storage, i8, i8, %struct.sockaddr_storage, %struct._list*, i32, %struct.sockaddr_storage, i8, %struct.timeval, i32, %struct.timeval, %struct.timeval, i32, i32, i32, i8, i8, i32, i32, i32, i8, i8, i8, i32, i8, %struct._list*, %struct._list*, i8, i8, %struct._list*, %struct._list*, i32, i32, i32, i64, i8, i8, i64, %struct.timeval, i32, i32, i8, %struct._sock*, i32, i32, i32, i32, i8, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, i32, %struct.timeval, i8*, i64, i32, i8, [8 x i8], %struct._seq_counter, i32 }
%struct._vrrp_sgroup = type { i8*, %struct._vector*, %struct._list*, i32, i32, i32, i8, %struct._list*, %struct._list*, %struct._list*, %struct._list*, i8, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, i32, i32 }
%struct._vector = type { i32, i32, i8** }
%struct._vrrp_stats = type { i64, i32, i32, i32, i64, i64, i64, i64, i64, i32, i32, i32, i64, i64 }
%struct._sock = type { i16, %struct.sockaddr_storage, i32, i32, i8, i32, i32, i32, %struct._thread* }
%struct._thread = type { i64, i32, %struct._thread_master*, i32 (%struct._thread*)*, i8*, %struct.timeval, %union.anon.0, %struct._thread_event*, %union.anon.1 }
%struct._thread_master = type { %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.list_head, %struct.list_head, %struct.list_head, %struct._list*, %struct.rb_root, %struct.epoll_event*, %struct._thread_event*, i32, i32, i32, i32, %struct._thread*, i64, i64, i8 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.rb_root = type { %struct.rb_node* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.epoll_event = type opaque
%union.anon.0 = type { %struct.anon }
%struct.anon = type { i32, i32 }
%struct._thread_event = type { %struct._thread*, %struct._thread*, i64, i32, %struct.rb_node }
%union.anon.1 = type { %struct.rb_node }
%struct._notify_script = type { i8**, i32, i32, i32, i32 }
%struct._seq_counter = type { i8, i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.timeval = type { i64, i64 }
%struct._notify_fifo = type { i8*, i32, i8, %struct._notify_script* }
%struct.ipt_handle = type { %struct.iptc_handle*, %struct.ip6tc_handle*, i8, i8, %struct.ipset_session* }
%struct.iptc_handle = type opaque
%struct.ip6tc_handle = type opaque
%struct.ipset_session = type opaque
%struct._ip_address = type { %struct.ifaddrmsg, %union.anon.2, %struct._interface*, i8*, i32, i32, i8, %union.anon.4, i8, %struct._static_track_group*, i8, i8, i8 }
%struct.ifaddrmsg = type { i8, i8, i8, i8, i32 }
%union.anon.2 = type { %struct.in6_addr }
%union.anon.4 = type { %struct.in6_addr }
%struct._static_track_group = type { i8*, %struct._vector*, %struct._list* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.statfs = type { i64, i64, i64, i64, i64, i64, i64, %struct.__fsid_t, i64, i64, i64, [4 x i64] }
%struct.__fsid_t = type { [2 x i32] }

@block_ipv4 = external global i8, align 1
@.str = private unnamed_addr constant [7 x i8] c"filter\00", align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"WARNING, ip_tables module not installed - can't filter IPv4 addresses\00", align 1
@global_data = external global %struct._data*, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"iptables chain %s doesn't exist\00", align 1
@block_ipv6 = external global i8, align 1
@.str.3 = private unnamed_addr constant [71 x i8] c"WARNING, ip6_tables module not installed - can't filter IPv6 addresses\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"ip6tables chain %s doesn't exist\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"DROP\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"/proc/net/ip_tables_names\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"ip_tables\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"iptables\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"Unable to load module ip_tables\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"/proc/net/ip6_tables_names\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"ip6_tables\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"ip6tables\00", align 1
@garp_delay = common global %struct._list* null, align 8
@.str.13 = private unnamed_addr constant [7 x i8] c"ACCEPT\00", align 1

; Function Attrs: nounwind uwtable
define %struct.ipt_handle* @iptables_open() #0 !dbg !146 {
  %1 = alloca %struct.ipt_handle*, align 8
  call void @llvm.dbg.declare(metadata %struct.ipt_handle** %1, metadata !167, metadata !168), !dbg !169
  %2 = call i8* @zalloc(i64 32), !dbg !170
  %3 = bitcast i8* %2 to %struct.ipt_handle*, !dbg !171
  store %struct.ipt_handle* %3, %struct.ipt_handle** %1, align 8, !dbg !169
  %4 = load %struct.ipt_handle*, %struct.ipt_handle** %1, align 8, !dbg !172
  ret %struct.ipt_handle* %4, !dbg !173
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i8* @zalloc(i64) #2

; Function Attrs: nounwind uwtable
define i32 @iptables_close(%struct.ipt_handle*) #0 !dbg !174 {
  %2 = alloca %struct.ipt_handle*, align 8
  %3 = alloca i32, align 4
  store %struct.ipt_handle* %0, %struct.ipt_handle** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.ipt_handle** %2, metadata !177, metadata !168), !dbg !178
  call void @llvm.dbg.declare(metadata i32* %3, metadata !179, metadata !168), !dbg !180
  store i32 0, i32* %3, align 4, !dbg !180
  %4 = load %struct.ipt_handle*, %struct.ipt_handle** %2, align 8, !dbg !181
  %5 = getelementptr inbounds %struct.ipt_handle, %struct.ipt_handle* %4, i32 0, i32 0, !dbg !183
  %6 = load %struct.iptc_handle*, %struct.iptc_handle** %5, align 8, !dbg !183
  %7 = icmp ne %struct.iptc_handle* %6, null, !dbg !181
  br i1 %7, label %8, label %18, !dbg !184

; <label>:8:                                      ; preds = %1
  %9 = load %struct.ipt_handle*, %struct.ipt_handle** %2, align 8, !dbg !185
  %10 = getelementptr inbounds %struct.ipt_handle, %struct.ipt_handle* %9, i32 0, i32 0, !dbg !186
  %11 = load %struct.iptc_handle*, %struct.iptc_handle** %10, align 8, !dbg !186
  %12 = load %struct.ipt_handle*, %struct.ipt_handle** %2, align 8, !dbg !187
  %13 = getelementptr inbounds %struct.ipt_handle, %struct.ipt_handle* %12, i32 0, i32 2, !dbg !188
  %14 = load i8, i8* %13, align 8, !dbg !188
  %15 = trunc i8 %14 to i1, !dbg !188
  %16 = zext i1 %15 to i32, !dbg !187
  %17 = call i32 @ip4tables_close(%struct.iptc_handle* %11, i32 %16), !dbg !189
  store i32 %17, i32* %3, align 4, !dbg !190
  br label %18, !dbg !191

; <label>:18:                                     ; preds = %8, %1
  %19 = load %struct.ipt_handle*, %struct.ipt_handle** %2, align 8, !dbg !192
  %20 = getelementptr inbounds %struct.ipt_handle, %struct.ipt_handle* %19, i32 0, i32 1, !dbg !194
  %21 = load %struct.ip6tc_handle*, %struct.ip6tc_handle** %20, align 8, !dbg !194
  %22 = icmp ne %struct.ip6tc_handle* %21, null, !dbg !192
  br i1 %22, label %23, label %35, !dbg !195

; <label>:23:                                     ; preds = %18
  %24 = load %struct.ipt_handle*, %struct.ipt_handle** %2, align 8, !dbg !196
  %25 = getelementptr inbounds %struct.ipt_handle, %struct.ipt_handle* %24, i32 0, i32 1, !dbg !197
  %26 = load %struct.ip6tc_handle*, %struct.ip6tc_handle** %25, align 8, !dbg !197
  %27 = load %struct.ipt_handle*, %struct.ipt_handle** %2, align 8, !dbg !198
  %28 = getelementptr inbounds %struct.ipt_handle, %struct.ipt_handle* %27, i32 0, i32 3, !dbg !199
  %29 = load i8, i8* %28, align 1, !dbg !199
  %30 = trunc i8 %29 to i1, !dbg !199
  %31 = zext i1 %30 to i32, !dbg !198
  %32 = call i32 @ip6tables_close(%struct.ip6tc_handle* %26, i32 %31), !dbg !200
  %33 = load i32, i32* %3, align 4, !dbg !201
  %34 = add nsw i32 %33, %32, !dbg !201
  store i32 %34, i32* %3, align 4, !dbg !201
  br label %35, !dbg !202

; <label>:35:                                     ; preds = %23, %18
  %36 = load %struct.ipt_handle*, %struct.ipt_handle** %2, align 8, !dbg !203
  %37 = getelementptr inbounds %struct.ipt_handle, %struct.ipt_handle* %36, i32 0, i32 4, !dbg !205
  %38 = load %struct.ipset_session*, %struct.ipset_session** %37, align 8, !dbg !205
  %39 = icmp ne %struct.ipset_session* %38, null, !dbg !203
  br i1 %39, label %40, label %45, !dbg !206

; <label>:40:                                     ; preds = %35
  %41 = load %struct.ipt_handle*, %struct.ipt_handle** %2, align 8, !dbg !207
  %42 = getelementptr inbounds %struct.ipt_handle, %struct.ipt_handle* %41, i32 0, i32 4, !dbg !208
  %43 = load %struct.ipset_session*, %struct.ipset_session** %42, align 8, !dbg !208
  %44 = bitcast %struct.ipset_session* %43 to i8*, !dbg !207
  call void @ipset_session_end(i8* %44), !dbg !209
  br label %45, !dbg !209

; <label>:45:                                     ; preds = %40, %35
  %46 = load %struct.ipt_handle*, %struct.ipt_handle** %2, align 8, !dbg !210
  %47 = bitcast %struct.ipt_handle* %46 to i8*, !dbg !210
  call void @free(i8* %47) #5, !dbg !211
  store %struct.ipt_handle* null, %struct.ipt_handle** %2, align 8, !dbg !212
  %48 = load i32, i32* %3, align 4, !dbg !213
  ret i32 %48, !dbg !214
}

declare i32 @ip4tables_close(%struct.iptc_handle*, i32) #2

declare i32 @ip6tables_close(%struct.ip6tc_handle*, i32) #2

declare void @ipset_session_end(i8*) #2

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define void @check_chains_exist_lib() #0 !dbg !215 {
  %1 = alloca %struct.iptc_handle*, align 8
  %2 = alloca %struct.ip6tc_handle*, align 8
  call void @llvm.dbg.declare(metadata %struct.iptc_handle** %1, metadata !218, metadata !168), !dbg !219
  call void @llvm.dbg.declare(metadata %struct.ip6tc_handle** %2, metadata !220, metadata !168), !dbg !221
  %3 = load i8, i8* @block_ipv4, align 1, !dbg !222
  %4 = trunc i8 %3 to i1, !dbg !222
  br i1 %4, label %5, label %50, !dbg !224

; <label>:5:                                      ; preds = %0
  %6 = call %struct.iptc_handle* @ip4tables_open(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)), !dbg !225
  store %struct.iptc_handle* %6, %struct.iptc_handle** %1, align 8, !dbg !228
  %7 = load %struct.iptc_handle*, %struct.iptc_handle** %1, align 8, !dbg !229
  %8 = icmp ne %struct.iptc_handle* %7, null, !dbg !229
  br i1 %8, label %10, label %9, !dbg !231

; <label>:9:                                      ; preds = %5
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i32 0, i32 0)), !dbg !232
  store i8 0, i8* @block_ipv4, align 1, !dbg !234
  br label %49, !dbg !235

; <label>:10:                                     ; preds = %5
  %11 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !236
  %12 = getelementptr inbounds %struct._data, %struct._data* %11, i32 0, i32 35, !dbg !239
  %13 = getelementptr inbounds [29 x i8], [29 x i8]* %12, i64 0, i64 0, !dbg !236
  %14 = load i8, i8* %13, align 8, !dbg !236
  %15 = sext i8 %14 to i32, !dbg !236
  %16 = icmp ne i32 %15, 0, !dbg !236
  br i1 %16, label %17, label %28, !dbg !240

; <label>:17:                                     ; preds = %10
  %18 = load %struct.iptc_handle*, %struct.iptc_handle** %1, align 8, !dbg !241
  %19 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !242
  %20 = getelementptr inbounds %struct._data, %struct._data* %19, i32 0, i32 35, !dbg !243
  %21 = getelementptr inbounds [29 x i8], [29 x i8]* %20, i32 0, i32 0, !dbg !242
  %22 = call i32 @ip4tables_is_chain(%struct.iptc_handle* %18, i8* %21), !dbg !244
  %23 = icmp ne i32 %22, 0, !dbg !244
  br i1 %23, label %28, label %24, !dbg !245

; <label>:24:                                     ; preds = %17
  %25 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !247
  %26 = getelementptr inbounds %struct._data, %struct._data* %25, i32 0, i32 35, !dbg !249
  %27 = getelementptr inbounds [29 x i8], [29 x i8]* %26, i32 0, i32 0, !dbg !247
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0), i8* %27), !dbg !250
  store i8 0, i8* @block_ipv4, align 1, !dbg !251
  br label %28, !dbg !252

; <label>:28:                                     ; preds = %24, %17, %10
  %29 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !253
  %30 = getelementptr inbounds %struct._data, %struct._data* %29, i32 0, i32 36, !dbg !255
  %31 = getelementptr inbounds [29 x i8], [29 x i8]* %30, i64 0, i64 0, !dbg !253
  %32 = load i8, i8* %31, align 1, !dbg !253
  %33 = sext i8 %32 to i32, !dbg !253
  %34 = icmp ne i32 %33, 0, !dbg !253
  br i1 %34, label %35, label %46, !dbg !256

; <label>:35:                                     ; preds = %28
  %36 = load %struct.iptc_handle*, %struct.iptc_handle** %1, align 8, !dbg !257
  %37 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !258
  %38 = getelementptr inbounds %struct._data, %struct._data* %37, i32 0, i32 36, !dbg !259
  %39 = getelementptr inbounds [29 x i8], [29 x i8]* %38, i32 0, i32 0, !dbg !258
  %40 = call i32 @ip4tables_is_chain(%struct.iptc_handle* %36, i8* %39), !dbg !260
  %41 = icmp ne i32 %40, 0, !dbg !260
  br i1 %41, label %46, label %42, !dbg !261

; <label>:42:                                     ; preds = %35
  %43 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !262
  %44 = getelementptr inbounds %struct._data, %struct._data* %43, i32 0, i32 36, !dbg !264
  %45 = getelementptr inbounds [29 x i8], [29 x i8]* %44, i32 0, i32 0, !dbg !262
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0), i8* %45), !dbg !265
  store i8 0, i8* @block_ipv4, align 1, !dbg !266
  br label %46, !dbg !267

; <label>:46:                                     ; preds = %42, %35, %28
  %47 = load %struct.iptc_handle*, %struct.iptc_handle** %1, align 8, !dbg !268
  %48 = call i32 @ip4tables_close(%struct.iptc_handle* %47, i32 0), !dbg !269
  br label %49

; <label>:49:                                     ; preds = %46, %9
  br label %50, !dbg !270

; <label>:50:                                     ; preds = %49, %0
  %51 = load i8, i8* @block_ipv6, align 1, !dbg !271
  %52 = trunc i8 %51 to i1, !dbg !271
  br i1 %52, label %53, label %98, !dbg !273

; <label>:53:                                     ; preds = %50
  %54 = call %struct.ip6tc_handle* @ip6tables_open(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)), !dbg !274
  store %struct.ip6tc_handle* %54, %struct.ip6tc_handle** %2, align 8, !dbg !277
  %55 = load %struct.ip6tc_handle*, %struct.ip6tc_handle** %2, align 8, !dbg !278
  %56 = icmp ne %struct.ip6tc_handle* %55, null, !dbg !278
  br i1 %56, label %58, label %57, !dbg !280

; <label>:57:                                     ; preds = %53
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i32 0, i32 0)), !dbg !281
  store i8 0, i8* @block_ipv6, align 1, !dbg !283
  br label %97, !dbg !284

; <label>:58:                                     ; preds = %53
  %59 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !285
  %60 = getelementptr inbounds %struct._data, %struct._data* %59, i32 0, i32 35, !dbg !288
  %61 = getelementptr inbounds [29 x i8], [29 x i8]* %60, i64 0, i64 0, !dbg !285
  %62 = load i8, i8* %61, align 8, !dbg !285
  %63 = sext i8 %62 to i32, !dbg !285
  %64 = icmp ne i32 %63, 0, !dbg !285
  br i1 %64, label %65, label %76, !dbg !289

; <label>:65:                                     ; preds = %58
  %66 = load %struct.ip6tc_handle*, %struct.ip6tc_handle** %2, align 8, !dbg !290
  %67 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !291
  %68 = getelementptr inbounds %struct._data, %struct._data* %67, i32 0, i32 35, !dbg !292
  %69 = getelementptr inbounds [29 x i8], [29 x i8]* %68, i32 0, i32 0, !dbg !291
  %70 = call i32 @ip6tables_is_chain(%struct.ip6tc_handle* %66, i8* %69), !dbg !293
  %71 = icmp ne i32 %70, 0, !dbg !293
  br i1 %71, label %76, label %72, !dbg !294

; <label>:72:                                     ; preds = %65
  %73 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !296
  %74 = getelementptr inbounds %struct._data, %struct._data* %73, i32 0, i32 35, !dbg !298
  %75 = getelementptr inbounds [29 x i8], [29 x i8]* %74, i32 0, i32 0, !dbg !296
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0), i8* %75), !dbg !299
  store i8 0, i8* @block_ipv6, align 1, !dbg !300
  br label %76, !dbg !301

; <label>:76:                                     ; preds = %72, %65, %58
  %77 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !302
  %78 = getelementptr inbounds %struct._data, %struct._data* %77, i32 0, i32 36, !dbg !304
  %79 = getelementptr inbounds [29 x i8], [29 x i8]* %78, i64 0, i64 0, !dbg !302
  %80 = load i8, i8* %79, align 1, !dbg !302
  %81 = sext i8 %80 to i32, !dbg !302
  %82 = icmp ne i32 %81, 0, !dbg !302
  br i1 %82, label %83, label %94, !dbg !305

; <label>:83:                                     ; preds = %76
  %84 = load %struct.ip6tc_handle*, %struct.ip6tc_handle** %2, align 8, !dbg !306
  %85 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !307
  %86 = getelementptr inbounds %struct._data, %struct._data* %85, i32 0, i32 36, !dbg !308
  %87 = getelementptr inbounds [29 x i8], [29 x i8]* %86, i32 0, i32 0, !dbg !307
  %88 = call i32 @ip6tables_is_chain(%struct.ip6tc_handle* %84, i8* %87), !dbg !309
  %89 = icmp ne i32 %88, 0, !dbg !309
  br i1 %89, label %94, label %90, !dbg !310

; <label>:90:                                     ; preds = %83
  %91 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !311
  %92 = getelementptr inbounds %struct._data, %struct._data* %91, i32 0, i32 36, !dbg !313
  %93 = getelementptr inbounds [29 x i8], [29 x i8]* %92, i32 0, i32 0, !dbg !311
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0), i8* %93), !dbg !314
  store i8 0, i8* @block_ipv6, align 1, !dbg !315
  br label %94, !dbg !316

; <label>:94:                                     ; preds = %90, %83, %76
  %95 = load %struct.ip6tc_handle*, %struct.ip6tc_handle** %2, align 8, !dbg !317
  %96 = call i32 @ip6tables_close(%struct.ip6tc_handle* %95, i32 0), !dbg !318
  br label %97

; <label>:97:                                     ; preds = %94, %57
  br label %98, !dbg !319

; <label>:98:                                     ; preds = %97, %50
  ret void, !dbg !320
}

declare %struct.iptc_handle* @ip4tables_open(i8*) #2

declare void @log_message(i32, i8*, ...) #2

declare i32 @ip4tables_is_chain(%struct.iptc_handle*, i8*) #2

declare %struct.ip6tc_handle* @ip6tables_open(i8*) #2

declare i32 @ip6tables_is_chain(%struct.ip6tc_handle*, i8*) #2

; Function Attrs: nounwind uwtable
define void @handle_iptable_rule_to_vip_lib(%struct._ip_address*, i32, %struct.ipt_handle*, i1 zeroext) #0 !dbg !321 {
  %5 = alloca %struct._ip_address*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ipt_handle*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca %struct.in6_addr*, align 8
  %11 = alloca i32, align 4
  store %struct._ip_address* %0, %struct._ip_address** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._ip_address** %5, metadata !446, metadata !168), !dbg !447
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !448, metadata !168), !dbg !449
  store %struct.ipt_handle* %2, %struct.ipt_handle** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.ipt_handle** %7, metadata !450, metadata !168), !dbg !451
  %12 = zext i1 %3 to i8
  store i8 %12, i8* %8, align 1
  call void @llvm.dbg.declare(metadata i8* %8, metadata !452, metadata !168), !dbg !453
  call void @llvm.dbg.declare(metadata i8** %9, metadata !454, metadata !168), !dbg !455
  store i8* null, i8** %9, align 8, !dbg !455
  %13 = load %struct._ip_address*, %struct._ip_address** %5, align 8, !dbg !456
  %14 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %13, i32 0, i32 0, !dbg !458
  %15 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %14, i32 0, i32 0, !dbg !459
  %16 = load i8, i8* %15, align 8, !dbg !459
  %17 = zext i8 %16 to i32, !dbg !456
  %18 = icmp eq i32 %17, 2, !dbg !460
  br i1 %18, label %19, label %22, !dbg !461

; <label>:19:                                     ; preds = %4
  %20 = load i8, i8* @block_ipv4, align 1, !dbg !462
  %21 = trunc i8 %20 to i1, !dbg !462
  br i1 %21, label %22, label %32, !dbg !464

; <label>:22:                                     ; preds = %19, %4
  %23 = load %struct._ip_address*, %struct._ip_address** %5, align 8, !dbg !465
  %24 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %23, i32 0, i32 0, !dbg !466
  %25 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %24, i32 0, i32 0, !dbg !467
  %26 = load i8, i8* %25, align 8, !dbg !467
  %27 = zext i8 %26 to i32, !dbg !465
  %28 = icmp eq i32 %27, 10, !dbg !468
  br i1 %28, label %29, label %33, !dbg !469

; <label>:29:                                     ; preds = %22
  %30 = load i8, i8* @block_ipv6, align 1, !dbg !470
  %31 = trunc i8 %30 to i1, !dbg !470
  br i1 %31, label %33, label %32, !dbg !471

; <label>:32:                                     ; preds = %29, %19
  br label %130, !dbg !473

; <label>:33:                                     ; preds = %29, %22
  %34 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !474
  %35 = getelementptr inbounds %struct._data, %struct._data* %34, i32 0, i32 37, !dbg !476
  %36 = load i8, i8* %35, align 2, !dbg !476
  %37 = trunc i8 %36 to i1, !dbg !476
  br i1 %37, label %38, label %60, !dbg !477

; <label>:38:                                     ; preds = %33
  %39 = load %struct.ipt_handle*, %struct.ipt_handle** %7, align 8, !dbg !478
  %40 = getelementptr inbounds %struct.ipt_handle, %struct.ipt_handle* %39, i32 0, i32 4, !dbg !481
  %41 = load %struct.ipset_session*, %struct.ipset_session** %40, align 8, !dbg !481
  %42 = icmp ne %struct.ipset_session* %41, null, !dbg !478
  br i1 %42, label %48, label %43, !dbg !482

; <label>:43:                                     ; preds = %38
  %44 = call i8* @ipset_session_start(), !dbg !483
  %45 = bitcast i8* %44 to %struct.ipset_session*, !dbg !483
  %46 = load %struct.ipt_handle*, %struct.ipt_handle** %7, align 8, !dbg !484
  %47 = getelementptr inbounds %struct.ipt_handle, %struct.ipt_handle* %46, i32 0, i32 4, !dbg !485
  store %struct.ipset_session* %45, %struct.ipset_session** %47, align 8, !dbg !486
  br label %48, !dbg !484

; <label>:48:                                     ; preds = %43, %38
  %49 = load %struct.ipt_handle*, %struct.ipt_handle** %7, align 8, !dbg !487
  %50 = getelementptr inbounds %struct.ipt_handle, %struct.ipt_handle* %49, i32 0, i32 4, !dbg !488
  %51 = load %struct.ipset_session*, %struct.ipset_session** %50, align 8, !dbg !488
  %52 = bitcast %struct.ipset_session* %51 to i8*, !dbg !487
  %53 = load i32, i32* %6, align 4, !dbg !489
  %54 = load %struct._ip_address*, %struct._ip_address** %5, align 8, !dbg !490
  call void @ipset_entry(i8* %52, i32 %53, %struct._ip_address* %54), !dbg !491
  %55 = load i32, i32* %6, align 4, !dbg !492
  %56 = icmp ne i32 %55, 0, !dbg !493
  %57 = load %struct._ip_address*, %struct._ip_address** %5, align 8, !dbg !494
  %58 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %57, i32 0, i32 11, !dbg !495
  %59 = zext i1 %56 to i8, !dbg !496
  store i8 %59, i8* %58, align 1, !dbg !496
  br label %130, !dbg !497

; <label>:60:                                     ; preds = %33
  %61 = load %struct._ip_address*, %struct._ip_address** %5, align 8, !dbg !498
  %62 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %61, i32 0, i32 0, !dbg !500
  %63 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %62, i32 0, i32 0, !dbg !501
  %64 = load i8, i8* %63, align 8, !dbg !501
  %65 = zext i8 %64 to i32, !dbg !502
  %66 = icmp eq i32 %65, 10, !dbg !503
  br i1 %66, label %67, label %96, !dbg !504

; <label>:67:                                     ; preds = %60
  call void @llvm.dbg.declare(metadata %struct.in6_addr** %10, metadata !505, metadata !168), !dbg !509
  %68 = load %struct._ip_address*, %struct._ip_address** %5, align 8, !dbg !510
  %69 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %68, i32 0, i32 1, !dbg !511
  %70 = bitcast %union.anon.2* %69 to %struct.in6_addr*, !dbg !512
  store %struct.in6_addr* %70, %struct.in6_addr** %10, align 8, !dbg !509
  %71 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8, !dbg !513
  %72 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %71, i32 0, i32 0, !dbg !514
  %73 = bitcast %union.anon* %72 to [4 x i32]*, !dbg !515
  %74 = getelementptr inbounds [4 x i32], [4 x i32]* %73, i64 0, i64 0, !dbg !513
  %75 = load i32, i32* %74, align 4, !dbg !513
  %76 = call i32 @htonl(i32 -4194304) #1, !dbg !516
  %77 = and i32 %75, %76, !dbg !517
  %78 = call i32 @htonl(i32 -25165824) #1, !dbg !518
  %79 = icmp eq i32 %77, %78, !dbg !520
  %80 = zext i1 %79 to i32, !dbg !520
  store i32 %80, i32* %11, align 4, !dbg !521
  %81 = load i32, i32* %11, align 4, !dbg !522
  %82 = icmp ne i32 %81, 0, !dbg !523
  br i1 %82, label %83, label %89, !dbg !524

; <label>:83:                                     ; preds = %67
  %84 = load %struct._ip_address*, %struct._ip_address** %5, align 8, !dbg !525
  %85 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %84, i32 0, i32 2, !dbg !526
  %86 = load %struct._interface*, %struct._interface** %85, align 8, !dbg !526
  %87 = getelementptr inbounds %struct._interface, %struct._interface* %86, i32 0, i32 0, !dbg !527
  %88 = getelementptr inbounds [16 x i8], [16 x i8]* %87, i32 0, i32 0, !dbg !525
  store i8* %88, i8** %9, align 8, !dbg !528
  br label %89, !dbg !529

; <label>:89:                                     ; preds = %83, %67
  %90 = load %struct._ip_address*, %struct._ip_address** %5, align 8, !dbg !530
  %91 = load i32, i32* %6, align 4, !dbg !531
  %92 = load %struct.ipt_handle*, %struct.ipt_handle** %7, align 8, !dbg !532
  %93 = bitcast %struct.ipt_handle* %92 to i8*, !dbg !532
  %94 = load i8, i8* %8, align 1, !dbg !533
  %95 = trunc i8 %94 to i1, !dbg !533
  call void @handle_iptable_rule_to_NA(%struct._ip_address* %90, i32 %91, i8* %93, i1 zeroext %95), !dbg !534
  br label %96, !dbg !535

; <label>:96:                                     ; preds = %89, %60
  %97 = load %struct.ipt_handle*, %struct.ipt_handle** %7, align 8, !dbg !536
  %98 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !537
  %99 = getelementptr inbounds %struct._data, %struct._data* %98, i32 0, i32 35, !dbg !538
  %100 = getelementptr inbounds [29 x i8], [29 x i8]* %99, i32 0, i32 0, !dbg !537
  %101 = load %struct._ip_address*, %struct._ip_address** %5, align 8, !dbg !539
  %102 = load i8*, i8** %9, align 8, !dbg !540
  %103 = load i32, i32* %6, align 4, !dbg !541
  %104 = load i8, i8* %8, align 1, !dbg !542
  %105 = trunc i8 %104 to i1, !dbg !542
  %106 = call i32 @iptables_entry(%struct.ipt_handle* %97, i8* %100, i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), %struct._ip_address* null, %struct._ip_address* %101, i8* %102, i8* null, i16 zeroext 59, i8 zeroext 0, i32 %103, i1 zeroext %105), !dbg !543
  %107 = load i32, i32* %6, align 4, !dbg !544
  %108 = icmp ne i32 %107, 0, !dbg !545
  %109 = load %struct._ip_address*, %struct._ip_address** %5, align 8, !dbg !546
  %110 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %109, i32 0, i32 11, !dbg !547
  %111 = zext i1 %108 to i8, !dbg !548
  store i8 %111, i8* %110, align 1, !dbg !548
  %112 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !549
  %113 = getelementptr inbounds %struct._data, %struct._data* %112, i32 0, i32 36, !dbg !551
  %114 = getelementptr inbounds [29 x i8], [29 x i8]* %113, i64 0, i64 0, !dbg !549
  %115 = load i8, i8* %114, align 1, !dbg !549
  %116 = sext i8 %115 to i32, !dbg !549
  %117 = icmp eq i32 %116, 0, !dbg !552
  br i1 %117, label %118, label %119, !dbg !553

; <label>:118:                                    ; preds = %96
  br label %130, !dbg !554

; <label>:119:                                    ; preds = %96
  %120 = load %struct.ipt_handle*, %struct.ipt_handle** %7, align 8, !dbg !555
  %121 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !556
  %122 = getelementptr inbounds %struct._data, %struct._data* %121, i32 0, i32 36, !dbg !557
  %123 = getelementptr inbounds [29 x i8], [29 x i8]* %122, i32 0, i32 0, !dbg !556
  %124 = load %struct._ip_address*, %struct._ip_address** %5, align 8, !dbg !558
  %125 = load i8*, i8** %9, align 8, !dbg !559
  %126 = load i32, i32* %6, align 4, !dbg !560
  %127 = load i8, i8* %8, align 1, !dbg !561
  %128 = trunc i8 %127 to i1, !dbg !561
  %129 = call i32 @iptables_entry(%struct.ipt_handle* %120, i8* %123, i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), %struct._ip_address* %124, %struct._ip_address* null, i8* null, i8* %125, i16 zeroext 59, i8 zeroext 0, i32 %126, i1 zeroext %128), !dbg !562
  br label %130, !dbg !563

; <label>:130:                                    ; preds = %119, %118, %48, %32
  ret void, !dbg !564
}

declare i8* @ipset_session_start() #2

declare void @ipset_entry(i8*, i32, %struct._ip_address*) #2

; Function Attrs: nounwind readnone
declare i32 @htonl(i32) #4

; Function Attrs: nounwind uwtable
define internal void @handle_iptable_rule_to_NA(%struct._ip_address*, i32, i8*, i1 zeroext) #0 !dbg !566 {
  %5 = alloca %struct._ip_address*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca %struct.in6_addr*, align 8
  %11 = alloca i32, align 4
  store %struct._ip_address* %0, %struct._ip_address** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._ip_address** %5, metadata !569, metadata !168), !dbg !570
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !571, metadata !168), !dbg !572
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !573, metadata !168), !dbg !574
  %12 = zext i1 %3 to i8
  store i8 %12, i8* %8, align 1
  call void @llvm.dbg.declare(metadata i8* %8, metadata !575, metadata !168), !dbg !576
  call void @llvm.dbg.declare(metadata i8** %9, metadata !577, metadata !168), !dbg !578
  store i8* null, i8** %9, align 8, !dbg !578
  %13 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !579
  %14 = getelementptr inbounds %struct._data, %struct._data* %13, i32 0, i32 35, !dbg !581
  %15 = getelementptr inbounds [29 x i8], [29 x i8]* %14, i64 0, i64 0, !dbg !579
  %16 = load i8, i8* %15, align 8, !dbg !579
  %17 = sext i8 %16 to i32, !dbg !579
  %18 = icmp eq i32 %17, 0, !dbg !582
  br i1 %18, label %19, label %20, !dbg !583

; <label>:19:                                     ; preds = %4
  br label %95, !dbg !584

; <label>:20:                                     ; preds = %4
  call void @llvm.dbg.declare(metadata %struct.in6_addr** %10, metadata !585, metadata !168), !dbg !588
  %21 = load %struct._ip_address*, %struct._ip_address** %5, align 8, !dbg !589
  %22 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %21, i32 0, i32 1, !dbg !590
  %23 = bitcast %union.anon.2* %22 to %struct.in6_addr*, !dbg !591
  store %struct.in6_addr* %23, %struct.in6_addr** %10, align 8, !dbg !588
  %24 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8, !dbg !592
  %25 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %24, i32 0, i32 0, !dbg !593
  %26 = bitcast %union.anon* %25 to [4 x i32]*, !dbg !594
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i64 0, i64 0, !dbg !592
  %28 = load i32, i32* %27, align 4, !dbg !592
  %29 = call i32 @htonl(i32 -4194304) #1, !dbg !595
  %30 = and i32 %28, %29, !dbg !596
  %31 = call i32 @htonl(i32 -25165824) #1, !dbg !597
  %32 = icmp eq i32 %30, %31, !dbg !599
  %33 = zext i1 %32 to i32, !dbg !599
  store i32 %33, i32* %11, align 4, !dbg !600
  %34 = load i32, i32* %11, align 4, !dbg !601
  %35 = icmp ne i32 %34, 0, !dbg !602
  br i1 %35, label %36, label %42, !dbg !603

; <label>:36:                                     ; preds = %20
  %37 = load %struct._ip_address*, %struct._ip_address** %5, align 8, !dbg !604
  %38 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %37, i32 0, i32 2, !dbg !605
  %39 = load %struct._interface*, %struct._interface** %38, align 8, !dbg !605
  %40 = getelementptr inbounds %struct._interface, %struct._interface* %39, i32 0, i32 0, !dbg !606
  %41 = getelementptr inbounds [16 x i8], [16 x i8]* %40, i32 0, i32 0, !dbg !604
  store i8* %41, i8** %9, align 8, !dbg !607
  br label %42, !dbg !608

; <label>:42:                                     ; preds = %36, %20
  %43 = load i8*, i8** %7, align 8, !dbg !609
  %44 = bitcast i8* %43 to %struct.ipt_handle*, !dbg !609
  %45 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !610
  %46 = getelementptr inbounds %struct._data, %struct._data* %45, i32 0, i32 35, !dbg !611
  %47 = getelementptr inbounds [29 x i8], [29 x i8]* %46, i32 0, i32 0, !dbg !610
  %48 = load %struct._ip_address*, %struct._ip_address** %5, align 8, !dbg !612
  %49 = load i8*, i8** %9, align 8, !dbg !613
  %50 = load i32, i32* %6, align 4, !dbg !614
  %51 = load i8, i8* %8, align 1, !dbg !615
  %52 = trunc i8 %51 to i1, !dbg !615
  %53 = call i32 @iptables_entry(%struct.ipt_handle* %44, i8* %47, i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), %struct._ip_address* null, %struct._ip_address* %48, i8* %49, i8* null, i16 zeroext 58, i8 zeroext -121, i32 %50, i1 zeroext %52), !dbg !616
  %54 = load i8*, i8** %7, align 8, !dbg !617
  %55 = bitcast i8* %54 to %struct.ipt_handle*, !dbg !617
  %56 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !618
  %57 = getelementptr inbounds %struct._data, %struct._data* %56, i32 0, i32 35, !dbg !619
  %58 = getelementptr inbounds [29 x i8], [29 x i8]* %57, i32 0, i32 0, !dbg !618
  %59 = load %struct._ip_address*, %struct._ip_address** %5, align 8, !dbg !620
  %60 = load i8*, i8** %9, align 8, !dbg !621
  %61 = load i32, i32* %6, align 4, !dbg !622
  %62 = load i8, i8* %8, align 1, !dbg !623
  %63 = trunc i8 %62 to i1, !dbg !623
  %64 = call i32 @iptables_entry(%struct.ipt_handle* %55, i8* %58, i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), %struct._ip_address* null, %struct._ip_address* %59, i8* %60, i8* null, i16 zeroext 58, i8 zeroext -120, i32 %61, i1 zeroext %63), !dbg !624
  %65 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !625
  %66 = getelementptr inbounds %struct._data, %struct._data* %65, i32 0, i32 36, !dbg !627
  %67 = getelementptr inbounds [29 x i8], [29 x i8]* %66, i64 0, i64 0, !dbg !625
  %68 = load i8, i8* %67, align 1, !dbg !625
  %69 = sext i8 %68 to i32, !dbg !625
  %70 = icmp eq i32 %69, 0, !dbg !628
  br i1 %70, label %71, label %72, !dbg !629

; <label>:71:                                     ; preds = %42
  br label %95, !dbg !630

; <label>:72:                                     ; preds = %42
  %73 = load i8*, i8** %7, align 8, !dbg !631
  %74 = bitcast i8* %73 to %struct.ipt_handle*, !dbg !631
  %75 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !632
  %76 = getelementptr inbounds %struct._data, %struct._data* %75, i32 0, i32 36, !dbg !633
  %77 = getelementptr inbounds [29 x i8], [29 x i8]* %76, i32 0, i32 0, !dbg !632
  %78 = load %struct._ip_address*, %struct._ip_address** %5, align 8, !dbg !634
  %79 = load i8*, i8** %9, align 8, !dbg !635
  %80 = load i32, i32* %6, align 4, !dbg !636
  %81 = load i8, i8* %8, align 1, !dbg !637
  %82 = trunc i8 %81 to i1, !dbg !637
  %83 = call i32 @iptables_entry(%struct.ipt_handle* %74, i8* %77, i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), %struct._ip_address* %78, %struct._ip_address* null, i8* null, i8* %79, i16 zeroext 58, i8 zeroext -121, i32 %80, i1 zeroext %82), !dbg !638
  %84 = load i8*, i8** %7, align 8, !dbg !639
  %85 = bitcast i8* %84 to %struct.ipt_handle*, !dbg !639
  %86 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !640
  %87 = getelementptr inbounds %struct._data, %struct._data* %86, i32 0, i32 36, !dbg !641
  %88 = getelementptr inbounds [29 x i8], [29 x i8]* %87, i32 0, i32 0, !dbg !640
  %89 = load %struct._ip_address*, %struct._ip_address** %5, align 8, !dbg !642
  %90 = load i8*, i8** %9, align 8, !dbg !643
  %91 = load i32, i32* %6, align 4, !dbg !644
  %92 = load i8, i8* %8, align 1, !dbg !645
  %93 = trunc i8 %92 to i1, !dbg !645
  %94 = call i32 @iptables_entry(%struct.ipt_handle* %85, i8* %88, i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), %struct._ip_address* %89, %struct._ip_address* null, i8* null, i8* %90, i16 zeroext 58, i8 zeroext -120, i32 %91, i1 zeroext %93), !dbg !646
  br label %95, !dbg !647

; <label>:95:                                     ; preds = %72, %71, %19
  ret void, !dbg !648
}

; Function Attrs: nounwind uwtable
define internal i32 @iptables_entry(%struct.ipt_handle*, i8*, i32, i8*, %struct._ip_address*, %struct._ip_address*, i8*, i8*, i16 zeroext, i8 zeroext, i32, i1 zeroext) #0 !dbg !650 {
  %13 = alloca i32, align 4
  %14 = alloca %struct.ipt_handle*, align 8
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
  %26 = alloca i32, align 4
  store %struct.ipt_handle* %0, %struct.ipt_handle** %14, align 8
  call void @llvm.dbg.declare(metadata %struct.ipt_handle** %14, metadata !657, metadata !168), !dbg !658
  store i8* %1, i8** %15, align 8
  call void @llvm.dbg.declare(metadata i8** %15, metadata !659, metadata !168), !dbg !660
  store i32 %2, i32* %16, align 4
  call void @llvm.dbg.declare(metadata i32* %16, metadata !661, metadata !168), !dbg !662
  store i8* %3, i8** %17, align 8
  call void @llvm.dbg.declare(metadata i8** %17, metadata !663, metadata !168), !dbg !664
  store %struct._ip_address* %4, %struct._ip_address** %18, align 8
  call void @llvm.dbg.declare(metadata %struct._ip_address** %18, metadata !665, metadata !168), !dbg !666
  store %struct._ip_address* %5, %struct._ip_address** %19, align 8
  call void @llvm.dbg.declare(metadata %struct._ip_address** %19, metadata !667, metadata !168), !dbg !668
  store i8* %6, i8** %20, align 8
  call void @llvm.dbg.declare(metadata i8** %20, metadata !669, metadata !168), !dbg !670
  store i8* %7, i8** %21, align 8
  call void @llvm.dbg.declare(metadata i8** %21, metadata !671, metadata !168), !dbg !672
  store i16 %8, i16* %22, align 2
  call void @llvm.dbg.declare(metadata i16* %22, metadata !673, metadata !168), !dbg !674
  store i8 %9, i8* %23, align 1
  call void @llvm.dbg.declare(metadata i8* %23, metadata !675, metadata !168), !dbg !676
  store i32 %10, i32* %24, align 4
  call void @llvm.dbg.declare(metadata i32* %24, metadata !677, metadata !168), !dbg !678
  %27 = zext i1 %11 to i8
  store i8 %27, i8* %25, align 1
  call void @llvm.dbg.declare(metadata i8* %25, metadata !679, metadata !168), !dbg !680
  call void @llvm.dbg.declare(metadata i32* %26, metadata !681, metadata !168), !dbg !682
  %28 = load %struct._ip_address*, %struct._ip_address** %18, align 8, !dbg !683
  %29 = icmp ne %struct._ip_address* %28, null, !dbg !683
  br i1 %29, label %30, label %37, !dbg !685

; <label>:30:                                     ; preds = %12
  %31 = load %struct._ip_address*, %struct._ip_address** %18, align 8, !dbg !686
  %32 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %31, i32 0, i32 0, !dbg !688
  %33 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %32, i32 0, i32 0, !dbg !689
  %34 = load i8, i8* %33, align 8, !dbg !689
  %35 = zext i8 %34 to i32, !dbg !686
  %36 = icmp eq i32 %35, 2, !dbg !690
  br i1 %36, label %47, label %37, !dbg !691

; <label>:37:                                     ; preds = %30, %12
  %38 = load %struct._ip_address*, %struct._ip_address** %19, align 8, !dbg !692
  %39 = icmp ne %struct._ip_address* %38, null, !dbg !692
  br i1 %39, label %40, label %80, !dbg !693

; <label>:40:                                     ; preds = %37
  %41 = load %struct._ip_address*, %struct._ip_address** %19, align 8, !dbg !694
  %42 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %41, i32 0, i32 0, !dbg !695
  %43 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %42, i32 0, i32 0, !dbg !696
  %44 = load i8, i8* %43, align 8, !dbg !696
  %45 = zext i8 %44 to i32, !dbg !694
  %46 = icmp eq i32 %45, 2, !dbg !697
  br i1 %46, label %47, label %80, !dbg !698

; <label>:47:                                     ; preds = %40, %30
  %48 = load %struct.ipt_handle*, %struct.ipt_handle** %14, align 8, !dbg !700
  %49 = getelementptr inbounds %struct.ipt_handle, %struct.ipt_handle* %48, i32 0, i32 0, !dbg !703
  %50 = load %struct.iptc_handle*, %struct.iptc_handle** %49, align 8, !dbg !703
  %51 = icmp ne %struct.iptc_handle* %50, null, !dbg !700
  br i1 %51, label %56, label %52, !dbg !704

; <label>:52:                                     ; preds = %47
  %53 = call %struct.iptc_handle* @ip4tables_open(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)), !dbg !705
  %54 = load %struct.ipt_handle*, %struct.ipt_handle** %14, align 8, !dbg !706
  %55 = getelementptr inbounds %struct.ipt_handle, %struct.ipt_handle* %54, i32 0, i32 0, !dbg !707
  store %struct.iptc_handle* %53, %struct.iptc_handle** %55, align 8, !dbg !708
  br label %56, !dbg !706

; <label>:56:                                     ; preds = %52, %47
  %57 = load %struct.ipt_handle*, %struct.ipt_handle** %14, align 8, !dbg !709
  %58 = getelementptr inbounds %struct.ipt_handle, %struct.ipt_handle* %57, i32 0, i32 0, !dbg !710
  %59 = load %struct.iptc_handle*, %struct.iptc_handle** %58, align 8, !dbg !710
  %60 = load i8*, i8** %15, align 8, !dbg !711
  %61 = load i32, i32* %16, align 4, !dbg !712
  %62 = load i8*, i8** %17, align 8, !dbg !713
  %63 = load %struct._ip_address*, %struct._ip_address** %18, align 8, !dbg !714
  %64 = load %struct._ip_address*, %struct._ip_address** %19, align 8, !dbg !715
  %65 = load i8*, i8** %20, align 8, !dbg !716
  %66 = load i8*, i8** %21, align 8, !dbg !717
  %67 = load i16, i16* %22, align 2, !dbg !718
  %68 = load i8, i8* %23, align 1, !dbg !719
  %69 = load i32, i32* %24, align 4, !dbg !720
  %70 = load i8, i8* %25, align 1, !dbg !721
  %71 = trunc i8 %70 to i1, !dbg !721
  %72 = call i32 @ip4tables_process_entry(%struct.iptc_handle* %59, i8* %60, i32 %61, i8* %62, %struct._ip_address* %63, %struct._ip_address* %64, i8* %65, i8* %66, i16 zeroext %67, i8 zeroext %68, i32 %69, i1 zeroext %71), !dbg !722
  store i32 %72, i32* %26, align 4, !dbg !723
  %73 = load i32, i32* %26, align 4, !dbg !724
  %74 = icmp ne i32 %73, 0, !dbg !724
  br i1 %74, label %78, label %75, !dbg !726

; <label>:75:                                     ; preds = %56
  %76 = load %struct.ipt_handle*, %struct.ipt_handle** %14, align 8, !dbg !727
  %77 = getelementptr inbounds %struct.ipt_handle, %struct.ipt_handle* %76, i32 0, i32 2, !dbg !728
  store i8 1, i8* %77, align 8, !dbg !729
  br label %78, !dbg !727

; <label>:78:                                     ; preds = %75, %56
  %79 = load i32, i32* %26, align 4, !dbg !730
  store i32 %79, i32* %13, align 4, !dbg !731
  br label %135, !dbg !731

; <label>:80:                                     ; preds = %40, %37
  %81 = load %struct._ip_address*, %struct._ip_address** %18, align 8, !dbg !732
  %82 = icmp ne %struct._ip_address* %81, null, !dbg !732
  br i1 %82, label %83, label %90, !dbg !734

; <label>:83:                                     ; preds = %80
  %84 = load %struct._ip_address*, %struct._ip_address** %18, align 8, !dbg !735
  %85 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %84, i32 0, i32 0, !dbg !737
  %86 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %85, i32 0, i32 0, !dbg !738
  %87 = load i8, i8* %86, align 8, !dbg !738
  %88 = zext i8 %87 to i32, !dbg !735
  %89 = icmp eq i32 %88, 10, !dbg !739
  br i1 %89, label %100, label %90, !dbg !740

; <label>:90:                                     ; preds = %83, %80
  %91 = load %struct._ip_address*, %struct._ip_address** %19, align 8, !dbg !741
  %92 = icmp ne %struct._ip_address* %91, null, !dbg !741
  br i1 %92, label %93, label %133, !dbg !742

; <label>:93:                                     ; preds = %90
  %94 = load %struct._ip_address*, %struct._ip_address** %19, align 8, !dbg !743
  %95 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %94, i32 0, i32 0, !dbg !744
  %96 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %95, i32 0, i32 0, !dbg !745
  %97 = load i8, i8* %96, align 8, !dbg !745
  %98 = zext i8 %97 to i32, !dbg !743
  %99 = icmp eq i32 %98, 10, !dbg !746
  br i1 %99, label %100, label %133, !dbg !747

; <label>:100:                                    ; preds = %93, %83
  %101 = load %struct.ipt_handle*, %struct.ipt_handle** %14, align 8, !dbg !749
  %102 = getelementptr inbounds %struct.ipt_handle, %struct.ipt_handle* %101, i32 0, i32 1, !dbg !752
  %103 = load %struct.ip6tc_handle*, %struct.ip6tc_handle** %102, align 8, !dbg !752
  %104 = icmp ne %struct.ip6tc_handle* %103, null, !dbg !749
  br i1 %104, label %109, label %105, !dbg !753

; <label>:105:                                    ; preds = %100
  %106 = call %struct.ip6tc_handle* @ip6tables_open(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)), !dbg !754
  %107 = load %struct.ipt_handle*, %struct.ipt_handle** %14, align 8, !dbg !755
  %108 = getelementptr inbounds %struct.ipt_handle, %struct.ipt_handle* %107, i32 0, i32 1, !dbg !756
  store %struct.ip6tc_handle* %106, %struct.ip6tc_handle** %108, align 8, !dbg !757
  br label %109, !dbg !755

; <label>:109:                                    ; preds = %105, %100
  %110 = load %struct.ipt_handle*, %struct.ipt_handle** %14, align 8, !dbg !758
  %111 = getelementptr inbounds %struct.ipt_handle, %struct.ipt_handle* %110, i32 0, i32 1, !dbg !759
  %112 = load %struct.ip6tc_handle*, %struct.ip6tc_handle** %111, align 8, !dbg !759
  %113 = load i8*, i8** %15, align 8, !dbg !760
  %114 = load i32, i32* %16, align 4, !dbg !761
  %115 = load i8*, i8** %17, align 8, !dbg !762
  %116 = load %struct._ip_address*, %struct._ip_address** %18, align 8, !dbg !763
  %117 = load %struct._ip_address*, %struct._ip_address** %19, align 8, !dbg !764
  %118 = load i8*, i8** %20, align 8, !dbg !765
  %119 = load i8*, i8** %21, align 8, !dbg !766
  %120 = load i16, i16* %22, align 2, !dbg !767
  %121 = load i8, i8* %23, align 1, !dbg !768
  %122 = load i32, i32* %24, align 4, !dbg !769
  %123 = load i8, i8* %25, align 1, !dbg !770
  %124 = trunc i8 %123 to i1, !dbg !770
  %125 = call i32 @ip6tables_process_entry(%struct.ip6tc_handle* %112, i8* %113, i32 %114, i8* %115, %struct._ip_address* %116, %struct._ip_address* %117, i8* %118, i8* %119, i16 zeroext %120, i8 zeroext %121, i32 %122, i1 zeroext %124), !dbg !771
  store i32 %125, i32* %26, align 4, !dbg !772
  %126 = load i32, i32* %26, align 4, !dbg !773
  %127 = icmp ne i32 %126, 0, !dbg !773
  br i1 %127, label %131, label %128, !dbg !775

; <label>:128:                                    ; preds = %109
  %129 = load %struct.ipt_handle*, %struct.ipt_handle** %14, align 8, !dbg !776
  %130 = getelementptr inbounds %struct.ipt_handle, %struct.ipt_handle* %129, i32 0, i32 3, !dbg !777
  store i8 1, i8* %130, align 1, !dbg !778
  br label %131, !dbg !776

; <label>:131:                                    ; preds = %128, %109
  %132 = load i32, i32* %26, align 4, !dbg !779
  store i32 %132, i32* %13, align 4, !dbg !780
  br label %135, !dbg !780

; <label>:133:                                    ; preds = %93, %90
  br label %134

; <label>:134:                                    ; preds = %133
  store i32 0, i32* %13, align 4, !dbg !781
  br label %135, !dbg !781

; <label>:135:                                    ; preds = %134, %131, %78
  %136 = load i32, i32* %13, align 4, !dbg !782
  ret i32 %136, !dbg !782
}

; Function Attrs: nounwind uwtable
define void @iptables_startup(i1 zeroext) #0 !dbg !783 {
  %2 = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !786, metadata !168), !dbg !787
  %4 = load i8, i8* @block_ipv4, align 1, !dbg !788
  %5 = trunc i8 %4 to i1, !dbg !788
  br i1 %5, label %12, label %6, !dbg !790

; <label>:6:                                      ; preds = %1
  %7 = load i8, i8* @block_ipv6, align 1, !dbg !791
  %8 = trunc i8 %7 to i1, !dbg !791
  br i1 %8, label %12, label %9, !dbg !793

; <label>:9:                                      ; preds = %6
  %10 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !794
  %11 = getelementptr inbounds %struct._data, %struct._data* %10, i32 0, i32 37, !dbg !795
  store i8 0, i8* %11, align 2, !dbg !796
  br label %12, !dbg !794

; <label>:12:                                     ; preds = %9, %6, %1
  %13 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !797
  %14 = getelementptr inbounds %struct._data, %struct._data* %13, i32 0, i32 37, !dbg !799
  %15 = load i8, i8* %14, align 2, !dbg !799
  %16 = trunc i8 %15 to i1, !dbg !799
  br i1 %16, label %17, label %20, !dbg !800

; <label>:17:                                     ; preds = %12
  %18 = load i8, i8* %2, align 1, !dbg !801
  %19 = trunc i8 %18 to i1, !dbg !801
  call void @add_del_sets(i32 1, i1 zeroext %19), !dbg !803
  call void @add_del_rules(i32 1, i1 zeroext false), !dbg !804
  br label %20, !dbg !805

; <label>:20:                                     ; preds = %17, %12
  ret void, !dbg !806
}

; Function Attrs: nounwind uwtable
define internal void @add_del_sets(i32, i1 zeroext) #0 !dbg !807 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !810, metadata !168), !dbg !811
  %5 = zext i1 %1 to i8
  store i8 %5, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !812, metadata !168), !dbg !813
  %6 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !814
  %7 = getelementptr inbounds %struct._data, %struct._data* %6, i32 0, i32 37, !dbg !816
  %8 = load i8, i8* %7, align 2, !dbg !816
  %9 = trunc i8 %8 to i1, !dbg !816
  br i1 %9, label %11, label %10, !dbg !817

; <label>:10:                                     ; preds = %2
  br label %20, !dbg !818

; <label>:11:                                     ; preds = %2
  %12 = load i32, i32* %3, align 4, !dbg !819
  %13 = icmp eq i32 %12, 1, !dbg !821
  br i1 %13, label %14, label %18, !dbg !822

; <label>:14:                                     ; preds = %11
  %15 = load i8, i8* %4, align 1, !dbg !823
  %16 = trunc i8 %15 to i1, !dbg !823
  %17 = call zeroext i1 @add_ipsets(i1 zeroext %16), !dbg !824
  br label %20, !dbg !824

; <label>:18:                                     ; preds = %11
  %19 = call zeroext i1 @remove_ipsets(), !dbg !825
  br label %20

; <label>:20:                                     ; preds = %10, %18, %14
  ret void, !dbg !826
}

; Function Attrs: nounwind uwtable
define internal void @add_del_rules(i32, i1 zeroext) #0 !dbg !827 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca %struct.iptc_handle*, align 8
  %6 = alloca %struct.ip6tc_handle*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !828, metadata !168), !dbg !829
  %7 = zext i1 %1 to i8
  store i8 %7, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !830, metadata !168), !dbg !831
  call void @llvm.dbg.declare(metadata %struct.iptc_handle** %5, metadata !832, metadata !168), !dbg !833
  call void @llvm.dbg.declare(metadata %struct.ip6tc_handle** %6, metadata !834, metadata !168), !dbg !835
  %8 = load i8, i8* @block_ipv4, align 1, !dbg !836
  %9 = trunc i8 %8 to i1, !dbg !836
  br i1 %9, label %10, label %67, !dbg !838

; <label>:10:                                     ; preds = %2
  %11 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !839
  %12 = getelementptr inbounds %struct._data, %struct._data* %11, i32 0, i32 35, !dbg !840
  %13 = getelementptr inbounds [29 x i8], [29 x i8]* %12, i64 0, i64 0, !dbg !839
  %14 = load i8, i8* %13, align 8, !dbg !839
  %15 = sext i8 %14 to i32, !dbg !839
  %16 = icmp ne i32 %15, 0, !dbg !839
  br i1 %16, label %24, label %17, !dbg !841

; <label>:17:                                     ; preds = %10
  %18 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !842
  %19 = getelementptr inbounds %struct._data, %struct._data* %18, i32 0, i32 36, !dbg !843
  %20 = getelementptr inbounds [29 x i8], [29 x i8]* %19, i64 0, i64 0, !dbg !842
  %21 = load i8, i8* %20, align 1, !dbg !842
  %22 = sext i8 %21 to i32, !dbg !842
  %23 = icmp ne i32 %22, 0, !dbg !842
  br i1 %23, label %24, label %67, !dbg !844

; <label>:24:                                     ; preds = %17, %10
  %25 = call %struct.iptc_handle* @ip4tables_open(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)), !dbg !846
  store %struct.iptc_handle* %25, %struct.iptc_handle** %5, align 8, !dbg !849
  %26 = icmp ne %struct.iptc_handle* %25, null, !dbg !849
  br i1 %26, label %27, label %66, !dbg !850

; <label>:27:                                     ; preds = %24
  %28 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !851
  %29 = getelementptr inbounds %struct._data, %struct._data* %28, i32 0, i32 35, !dbg !854
  %30 = getelementptr inbounds [29 x i8], [29 x i8]* %29, i64 0, i64 0, !dbg !851
  %31 = load i8, i8* %30, align 8, !dbg !851
  %32 = icmp ne i8 %31, 0, !dbg !851
  br i1 %32, label %33, label %45, !dbg !855

; <label>:33:                                     ; preds = %27
  %34 = load %struct.iptc_handle*, %struct.iptc_handle** %5, align 8, !dbg !856
  %35 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !857
  %36 = getelementptr inbounds %struct._data, %struct._data* %35, i32 0, i32 35, !dbg !858
  %37 = getelementptr inbounds [29 x i8], [29 x i8]* %36, i32 0, i32 0, !dbg !857
  %38 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !859
  %39 = getelementptr inbounds %struct._data, %struct._data* %38, i32 0, i32 38, !dbg !860
  %40 = getelementptr inbounds [32 x i8], [32 x i8]* %39, i32 0, i32 0, !dbg !859
  %41 = load i32, i32* %3, align 4, !dbg !861
  %42 = load i8, i8* %4, align 1, !dbg !862
  %43 = trunc i8 %42 to i1, !dbg !862
  %44 = call i32 @ip4tables_add_rules(%struct.iptc_handle* %34, i8* %37, i32 -1, i8 zeroext 1, i8 zeroext 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* %40, i16 zeroext 59, i8 zeroext 0, i32 %41, i1 zeroext %43), !dbg !863
  br label %45, !dbg !863

; <label>:45:                                     ; preds = %33, %27
  %46 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !864
  %47 = getelementptr inbounds %struct._data, %struct._data* %46, i32 0, i32 36, !dbg !866
  %48 = getelementptr inbounds [29 x i8], [29 x i8]* %47, i64 0, i64 0, !dbg !864
  %49 = load i8, i8* %48, align 1, !dbg !864
  %50 = icmp ne i8 %49, 0, !dbg !864
  br i1 %50, label %51, label %63, !dbg !867

; <label>:51:                                     ; preds = %45
  %52 = load %struct.iptc_handle*, %struct.iptc_handle** %5, align 8, !dbg !868
  %53 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !869
  %54 = getelementptr inbounds %struct._data, %struct._data* %53, i32 0, i32 36, !dbg !870
  %55 = getelementptr inbounds [29 x i8], [29 x i8]* %54, i32 0, i32 0, !dbg !869
  %56 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !871
  %57 = getelementptr inbounds %struct._data, %struct._data* %56, i32 0, i32 38, !dbg !872
  %58 = getelementptr inbounds [32 x i8], [32 x i8]* %57, i32 0, i32 0, !dbg !871
  %59 = load i32, i32* %3, align 4, !dbg !873
  %60 = load i8, i8* %4, align 1, !dbg !874
  %61 = trunc i8 %60 to i1, !dbg !874
  %62 = call i32 @ip4tables_add_rules(%struct.iptc_handle* %52, i8* %55, i32 -1, i8 zeroext 1, i8 zeroext 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* %58, i16 zeroext 59, i8 zeroext 0, i32 %59, i1 zeroext %61), !dbg !875
  br label %63, !dbg !875

; <label>:63:                                     ; preds = %51, %45
  %64 = load %struct.iptc_handle*, %struct.iptc_handle** %5, align 8, !dbg !876
  %65 = call i32 @ip4tables_close(%struct.iptc_handle* %64, i32 1), !dbg !877
  br label %66, !dbg !878

; <label>:66:                                     ; preds = %63, %24
  br label %67, !dbg !879

; <label>:67:                                     ; preds = %66, %17, %2
  %68 = load i8, i8* @block_ipv6, align 1, !dbg !880
  %69 = trunc i8 %68 to i1, !dbg !880
  br i1 %69, label %70, label %237, !dbg !882

; <label>:70:                                     ; preds = %67
  %71 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !883
  %72 = getelementptr inbounds %struct._data, %struct._data* %71, i32 0, i32 35, !dbg !884
  %73 = getelementptr inbounds [29 x i8], [29 x i8]* %72, i64 0, i64 0, !dbg !883
  %74 = load i8, i8* %73, align 8, !dbg !883
  %75 = sext i8 %74 to i32, !dbg !883
  %76 = icmp ne i32 %75, 0, !dbg !883
  br i1 %76, label %84, label %77, !dbg !885

; <label>:77:                                     ; preds = %70
  %78 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !886
  %79 = getelementptr inbounds %struct._data, %struct._data* %78, i32 0, i32 36, !dbg !887
  %80 = getelementptr inbounds [29 x i8], [29 x i8]* %79, i64 0, i64 0, !dbg !886
  %81 = load i8, i8* %80, align 1, !dbg !886
  %82 = sext i8 %81 to i32, !dbg !886
  %83 = icmp ne i32 %82, 0, !dbg !886
  br i1 %83, label %84, label %237, !dbg !888

; <label>:84:                                     ; preds = %77, %70
  %85 = call %struct.ip6tc_handle* @ip6tables_open(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)), !dbg !889
  store %struct.ip6tc_handle* %85, %struct.ip6tc_handle** %6, align 8, !dbg !892
  %86 = icmp ne %struct.ip6tc_handle* %85, null, !dbg !892
  br i1 %86, label %87, label %236, !dbg !893

; <label>:87:                                     ; preds = %84
  %88 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !894
  %89 = getelementptr inbounds %struct._data, %struct._data* %88, i32 0, i32 35, !dbg !897
  %90 = getelementptr inbounds [29 x i8], [29 x i8]* %89, i64 0, i64 0, !dbg !894
  %91 = load i8, i8* %90, align 8, !dbg !894
  %92 = icmp ne i8 %91, 0, !dbg !894
  br i1 %92, label %93, label %160, !dbg !898

; <label>:93:                                     ; preds = %87
  %94 = load %struct.ip6tc_handle*, %struct.ip6tc_handle** %6, align 8, !dbg !899
  %95 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !901
  %96 = getelementptr inbounds %struct._data, %struct._data* %95, i32 0, i32 35, !dbg !902
  %97 = getelementptr inbounds [29 x i8], [29 x i8]* %96, i32 0, i32 0, !dbg !901
  %98 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !903
  %99 = getelementptr inbounds %struct._data, %struct._data* %98, i32 0, i32 40, !dbg !904
  %100 = getelementptr inbounds [32 x i8], [32 x i8]* %99, i32 0, i32 0, !dbg !903
  %101 = load i32, i32* %3, align 4, !dbg !905
  %102 = load i8, i8* %4, align 1, !dbg !906
  %103 = trunc i8 %102 to i1, !dbg !906
  %104 = call i32 @ip6tables_add_rules(%struct.ip6tc_handle* %94, i8* %97, i32 -1, i8 zeroext 2, i8 zeroext 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i8* %100, i16 zeroext 58, i8 zeroext -121, i32 %101, i1 zeroext %103), !dbg !907
  %105 = load %struct.ip6tc_handle*, %struct.ip6tc_handle** %6, align 8, !dbg !908
  %106 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !909
  %107 = getelementptr inbounds %struct._data, %struct._data* %106, i32 0, i32 35, !dbg !910
  %108 = getelementptr inbounds [29 x i8], [29 x i8]* %107, i32 0, i32 0, !dbg !909
  %109 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !911
  %110 = getelementptr inbounds %struct._data, %struct._data* %109, i32 0, i32 40, !dbg !912
  %111 = getelementptr inbounds [32 x i8], [32 x i8]* %110, i32 0, i32 0, !dbg !911
  %112 = load i32, i32* %3, align 4, !dbg !913
  %113 = load i8, i8* %4, align 1, !dbg !914
  %114 = trunc i8 %113 to i1, !dbg !914
  %115 = call i32 @ip6tables_add_rules(%struct.ip6tc_handle* %105, i8* %108, i32 -1, i8 zeroext 2, i8 zeroext 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i8* %111, i16 zeroext 58, i8 zeroext -120, i32 %112, i1 zeroext %114), !dbg !915
  %116 = load %struct.ip6tc_handle*, %struct.ip6tc_handle** %6, align 8, !dbg !916
  %117 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !917
  %118 = getelementptr inbounds %struct._data, %struct._data* %117, i32 0, i32 35, !dbg !918
  %119 = getelementptr inbounds [29 x i8], [29 x i8]* %118, i32 0, i32 0, !dbg !917
  %120 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !919
  %121 = getelementptr inbounds %struct._data, %struct._data* %120, i32 0, i32 40, !dbg !920
  %122 = getelementptr inbounds [32 x i8], [32 x i8]* %121, i32 0, i32 0, !dbg !919
  %123 = load i32, i32* %3, align 4, !dbg !921
  %124 = load i8, i8* %4, align 1, !dbg !922
  %125 = trunc i8 %124 to i1, !dbg !922
  %126 = call i32 @ip6tables_add_rules(%struct.ip6tc_handle* %116, i8* %119, i32 -1, i8 zeroext 2, i8 zeroext 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* %122, i16 zeroext 59, i8 zeroext 0, i32 %123, i1 zeroext %125), !dbg !923
  %127 = load %struct.ip6tc_handle*, %struct.ip6tc_handle** %6, align 8, !dbg !924
  %128 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !925
  %129 = getelementptr inbounds %struct._data, %struct._data* %128, i32 0, i32 35, !dbg !926
  %130 = getelementptr inbounds [29 x i8], [29 x i8]* %129, i32 0, i32 0, !dbg !925
  %131 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !927
  %132 = getelementptr inbounds %struct._data, %struct._data* %131, i32 0, i32 39, !dbg !928
  %133 = getelementptr inbounds [32 x i8], [32 x i8]* %132, i32 0, i32 0, !dbg !927
  %134 = load i32, i32* %3, align 4, !dbg !929
  %135 = load i8, i8* %4, align 1, !dbg !930
  %136 = trunc i8 %135 to i1, !dbg !930
  %137 = call i32 @ip6tables_add_rules(%struct.ip6tc_handle* %127, i8* %130, i32 -1, i8 zeroext 1, i8 zeroext 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i8* %133, i16 zeroext 58, i8 zeroext -121, i32 %134, i1 zeroext %136), !dbg !931
  %138 = load %struct.ip6tc_handle*, %struct.ip6tc_handle** %6, align 8, !dbg !932
  %139 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !933
  %140 = getelementptr inbounds %struct._data, %struct._data* %139, i32 0, i32 35, !dbg !934
  %141 = getelementptr inbounds [29 x i8], [29 x i8]* %140, i32 0, i32 0, !dbg !933
  %142 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !935
  %143 = getelementptr inbounds %struct._data, %struct._data* %142, i32 0, i32 39, !dbg !936
  %144 = getelementptr inbounds [32 x i8], [32 x i8]* %143, i32 0, i32 0, !dbg !935
  %145 = load i32, i32* %3, align 4, !dbg !937
  %146 = load i8, i8* %4, align 1, !dbg !938
  %147 = trunc i8 %146 to i1, !dbg !938
  %148 = call i32 @ip6tables_add_rules(%struct.ip6tc_handle* %138, i8* %141, i32 -1, i8 zeroext 1, i8 zeroext 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i8* %144, i16 zeroext 58, i8 zeroext -120, i32 %145, i1 zeroext %147), !dbg !939
  %149 = load %struct.ip6tc_handle*, %struct.ip6tc_handle** %6, align 8, !dbg !940
  %150 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !941
  %151 = getelementptr inbounds %struct._data, %struct._data* %150, i32 0, i32 35, !dbg !942
  %152 = getelementptr inbounds [29 x i8], [29 x i8]* %151, i32 0, i32 0, !dbg !941
  %153 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !943
  %154 = getelementptr inbounds %struct._data, %struct._data* %153, i32 0, i32 39, !dbg !944
  %155 = getelementptr inbounds [32 x i8], [32 x i8]* %154, i32 0, i32 0, !dbg !943
  %156 = load i32, i32* %3, align 4, !dbg !945
  %157 = load i8, i8* %4, align 1, !dbg !946
  %158 = trunc i8 %157 to i1, !dbg !946
  %159 = call i32 @ip6tables_add_rules(%struct.ip6tc_handle* %149, i8* %152, i32 -1, i8 zeroext 1, i8 zeroext 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* %155, i16 zeroext 59, i8 zeroext 0, i32 %156, i1 zeroext %158), !dbg !947
  br label %160, !dbg !948

; <label>:160:                                    ; preds = %93, %87
  %161 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !949
  %162 = getelementptr inbounds %struct._data, %struct._data* %161, i32 0, i32 36, !dbg !951
  %163 = getelementptr inbounds [29 x i8], [29 x i8]* %162, i64 0, i64 0, !dbg !949
  %164 = load i8, i8* %163, align 1, !dbg !949
  %165 = icmp ne i8 %164, 0, !dbg !949
  br i1 %165, label %166, label %233, !dbg !952

; <label>:166:                                    ; preds = %160
  %167 = load %struct.ip6tc_handle*, %struct.ip6tc_handle** %6, align 8, !dbg !953
  %168 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !955
  %169 = getelementptr inbounds %struct._data, %struct._data* %168, i32 0, i32 36, !dbg !956
  %170 = getelementptr inbounds [29 x i8], [29 x i8]* %169, i32 0, i32 0, !dbg !955
  %171 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !957
  %172 = getelementptr inbounds %struct._data, %struct._data* %171, i32 0, i32 40, !dbg !958
  %173 = getelementptr inbounds [32 x i8], [32 x i8]* %172, i32 0, i32 0, !dbg !957
  %174 = load i32, i32* %3, align 4, !dbg !959
  %175 = load i8, i8* %4, align 1, !dbg !960
  %176 = trunc i8 %175 to i1, !dbg !960
  %177 = call i32 @ip6tables_add_rules(%struct.ip6tc_handle* %167, i8* %170, i32 -1, i8 zeroext 2, i8 zeroext 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i8* %173, i16 zeroext 58, i8 zeroext -121, i32 %174, i1 zeroext %176), !dbg !961
  %178 = load %struct.ip6tc_handle*, %struct.ip6tc_handle** %6, align 8, !dbg !962
  %179 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !963
  %180 = getelementptr inbounds %struct._data, %struct._data* %179, i32 0, i32 36, !dbg !964
  %181 = getelementptr inbounds [29 x i8], [29 x i8]* %180, i32 0, i32 0, !dbg !963
  %182 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !965
  %183 = getelementptr inbounds %struct._data, %struct._data* %182, i32 0, i32 40, !dbg !966
  %184 = getelementptr inbounds [32 x i8], [32 x i8]* %183, i32 0, i32 0, !dbg !965
  %185 = load i32, i32* %3, align 4, !dbg !967
  %186 = load i8, i8* %4, align 1, !dbg !968
  %187 = trunc i8 %186 to i1, !dbg !968
  %188 = call i32 @ip6tables_add_rules(%struct.ip6tc_handle* %178, i8* %181, i32 -1, i8 zeroext 2, i8 zeroext 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i8* %184, i16 zeroext 58, i8 zeroext -120, i32 %185, i1 zeroext %187), !dbg !969
  %189 = load %struct.ip6tc_handle*, %struct.ip6tc_handle** %6, align 8, !dbg !970
  %190 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !971
  %191 = getelementptr inbounds %struct._data, %struct._data* %190, i32 0, i32 36, !dbg !972
  %192 = getelementptr inbounds [29 x i8], [29 x i8]* %191, i32 0, i32 0, !dbg !971
  %193 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !973
  %194 = getelementptr inbounds %struct._data, %struct._data* %193, i32 0, i32 40, !dbg !974
  %195 = getelementptr inbounds [32 x i8], [32 x i8]* %194, i32 0, i32 0, !dbg !973
  %196 = load i32, i32* %3, align 4, !dbg !975
  %197 = load i8, i8* %4, align 1, !dbg !976
  %198 = trunc i8 %197 to i1, !dbg !976
  %199 = call i32 @ip6tables_add_rules(%struct.ip6tc_handle* %189, i8* %192, i32 -1, i8 zeroext 2, i8 zeroext 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* %195, i16 zeroext 59, i8 zeroext 0, i32 %196, i1 zeroext %198), !dbg !977
  %200 = load %struct.ip6tc_handle*, %struct.ip6tc_handle** %6, align 8, !dbg !978
  %201 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !979
  %202 = getelementptr inbounds %struct._data, %struct._data* %201, i32 0, i32 36, !dbg !980
  %203 = getelementptr inbounds [29 x i8], [29 x i8]* %202, i32 0, i32 0, !dbg !979
  %204 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !981
  %205 = getelementptr inbounds %struct._data, %struct._data* %204, i32 0, i32 39, !dbg !982
  %206 = getelementptr inbounds [32 x i8], [32 x i8]* %205, i32 0, i32 0, !dbg !981
  %207 = load i32, i32* %3, align 4, !dbg !983
  %208 = load i8, i8* %4, align 1, !dbg !984
  %209 = trunc i8 %208 to i1, !dbg !984
  %210 = call i32 @ip6tables_add_rules(%struct.ip6tc_handle* %200, i8* %203, i32 -1, i8 zeroext 1, i8 zeroext 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i8* %206, i16 zeroext 58, i8 zeroext -121, i32 %207, i1 zeroext %209), !dbg !985
  %211 = load %struct.ip6tc_handle*, %struct.ip6tc_handle** %6, align 8, !dbg !986
  %212 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !987
  %213 = getelementptr inbounds %struct._data, %struct._data* %212, i32 0, i32 36, !dbg !988
  %214 = getelementptr inbounds [29 x i8], [29 x i8]* %213, i32 0, i32 0, !dbg !987
  %215 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !989
  %216 = getelementptr inbounds %struct._data, %struct._data* %215, i32 0, i32 39, !dbg !990
  %217 = getelementptr inbounds [32 x i8], [32 x i8]* %216, i32 0, i32 0, !dbg !989
  %218 = load i32, i32* %3, align 4, !dbg !991
  %219 = load i8, i8* %4, align 1, !dbg !992
  %220 = trunc i8 %219 to i1, !dbg !992
  %221 = call i32 @ip6tables_add_rules(%struct.ip6tc_handle* %211, i8* %214, i32 -1, i8 zeroext 1, i8 zeroext 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i8* %217, i16 zeroext 58, i8 zeroext -120, i32 %218, i1 zeroext %220), !dbg !993
  %222 = load %struct.ip6tc_handle*, %struct.ip6tc_handle** %6, align 8, !dbg !994
  %223 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !995
  %224 = getelementptr inbounds %struct._data, %struct._data* %223, i32 0, i32 36, !dbg !996
  %225 = getelementptr inbounds [29 x i8], [29 x i8]* %224, i32 0, i32 0, !dbg !995
  %226 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !997
  %227 = getelementptr inbounds %struct._data, %struct._data* %226, i32 0, i32 39, !dbg !998
  %228 = getelementptr inbounds [32 x i8], [32 x i8]* %227, i32 0, i32 0, !dbg !997
  %229 = load i32, i32* %3, align 4, !dbg !999
  %230 = load i8, i8* %4, align 1, !dbg !1000
  %231 = trunc i8 %230 to i1, !dbg !1000
  %232 = call i32 @ip6tables_add_rules(%struct.ip6tc_handle* %222, i8* %225, i32 -1, i8 zeroext 1, i8 zeroext 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* %228, i16 zeroext 59, i8 zeroext 0, i32 %229, i1 zeroext %231), !dbg !1001
  br label %233, !dbg !1002

; <label>:233:                                    ; preds = %166, %160
  %234 = load %struct.ip6tc_handle*, %struct.ip6tc_handle** %6, align 8, !dbg !1003
  %235 = call i32 @ip6tables_close(%struct.ip6tc_handle* %234, i32 1), !dbg !1004
  br label %236, !dbg !1005

; <label>:236:                                    ; preds = %233, %84
  br label %237, !dbg !1006

; <label>:237:                                    ; preds = %236, %77, %67
  ret void, !dbg !1007
}

; Function Attrs: nounwind uwtable
define void @iptables_cleanup() #0 !dbg !1008 {
  call void @iptables_remove_structure(i1 zeroext true), !dbg !1009
  ret void, !dbg !1010
}

; Function Attrs: nounwind uwtable
define internal void @iptables_remove_structure(i1 zeroext) #0 !dbg !1011 {
  %2 = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !1012, metadata !168), !dbg !1013
  %4 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1014
  %5 = getelementptr inbounds %struct._data, %struct._data* %4, i32 0, i32 37, !dbg !1016
  %6 = load i8, i8* %5, align 2, !dbg !1016
  %7 = trunc i8 %6 to i1, !dbg !1016
  br i1 %7, label %8, label %11, !dbg !1017

; <label>:8:                                      ; preds = %1
  %9 = load i8, i8* %2, align 1, !dbg !1018
  %10 = trunc i8 %9 to i1, !dbg !1018
  call void @add_del_rules(i32 0, i1 zeroext %10), !dbg !1020
  call void @add_del_sets(i32 0, i1 zeroext false), !dbg !1021
  br label %11, !dbg !1022

; <label>:11:                                     ; preds = %8, %1
  ret void, !dbg !1023
}

; Function Attrs: nounwind uwtable
define void @iptables_init_lib() #0 !dbg !1024 {
  %1 = load i8, i8* @block_ipv4, align 1, !dbg !1025
  %2 = trunc i8 %1 to i1, !dbg !1025
  br i1 %2, label %3, label %9, !dbg !1027

; <label>:3:                                      ; preds = %0
  %4 = call zeroext i1 @proc_file_exists(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0)), !dbg !1028
  br i1 %4, label %8, label %5, !dbg !1031

; <label>:5:                                      ; preds = %3
  %6 = call zeroext i1 @load_xtables_module(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0)), !dbg !1032
  br i1 %6, label %8, label %7, !dbg !1033

; <label>:7:                                      ; preds = %5
  store i8 0, i8* @block_ipv4, align 1, !dbg !1035
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i32 0, i32 0)), !dbg !1037
  br label %8, !dbg !1038

; <label>:8:                                      ; preds = %7, %5, %3
  br label %9, !dbg !1039

; <label>:9:                                      ; preds = %8, %0
  %10 = load i8, i8* @block_ipv6, align 1, !dbg !1040
  %11 = trunc i8 %10 to i1, !dbg !1040
  br i1 %11, label %12, label %18, !dbg !1042

; <label>:12:                                     ; preds = %9
  %13 = call zeroext i1 @proc_file_exists(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i32 0, i32 0)), !dbg !1043
  br i1 %13, label %17, label %14, !dbg !1046

; <label>:14:                                     ; preds = %12
  %15 = call zeroext i1 @load_xtables_module(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0)), !dbg !1047
  br i1 %15, label %17, label %16, !dbg !1048

; <label>:16:                                     ; preds = %14
  store i8 0, i8* @block_ipv6, align 1, !dbg !1050
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i32 0, i32 0)), !dbg !1052
  br label %17, !dbg !1053

; <label>:17:                                     ; preds = %16, %14, %12
  br label %18, !dbg !1054

; <label>:18:                                     ; preds = %17, %9
  %19 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1055
  %20 = getelementptr inbounds %struct._data, %struct._data* %19, i32 0, i32 37, !dbg !1057
  %21 = load i8, i8* %20, align 2, !dbg !1057
  %22 = trunc i8 %21 to i1, !dbg !1057
  br i1 %22, label %23, label %28, !dbg !1058

; <label>:23:                                     ; preds = %18
  %24 = call zeroext i1 @ipset_init(), !dbg !1059
  br i1 %24, label %28, label %25, !dbg !1061

; <label>:25:                                     ; preds = %23
  %26 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1062
  %27 = getelementptr inbounds %struct._data, %struct._data* %26, i32 0, i32 37, !dbg !1063
  store i8 0, i8* %27, align 2, !dbg !1064
  br label %28, !dbg !1062

; <label>:28:                                     ; preds = %25, %23, %18
  ret void, !dbg !1065
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @proc_file_exists(i8*) #0 !dbg !1066 {
  %2 = alloca i1, align 1
  %3 = alloca i8*, align 8
  %4 = alloca %struct.stat, align 8
  %5 = alloca %struct.statfs, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1069, metadata !168), !dbg !1070
  call void @llvm.dbg.declare(metadata %struct.stat* %4, metadata !1071, metadata !168), !dbg !1107
  call void @llvm.dbg.declare(metadata %struct.statfs* %5, metadata !1108, metadata !168), !dbg !1135
  %6 = load i8*, i8** %3, align 8, !dbg !1136
  %7 = call i32 @lstat(i8* %6, %struct.stat* %4) #5, !dbg !1138
  %8 = icmp ne i32 %7, 0, !dbg !1138
  br i1 %8, label %9, label %10, !dbg !1139

; <label>:9:                                      ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !1140
  br label %27, !dbg !1140

; <label>:10:                                     ; preds = %1
  %11 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 3, !dbg !1141
  %12 = load i32, i32* %11, align 8, !dbg !1141
  %13 = and i32 %12, 61440, !dbg !1143
  %14 = icmp eq i32 %13, 32768, !dbg !1144
  br i1 %14, label %16, label %15, !dbg !1145

; <label>:15:                                     ; preds = %10
  store i1 false, i1* %2, align 1, !dbg !1146
  br label %27, !dbg !1146

; <label>:16:                                     ; preds = %10
  %17 = load i8*, i8** %3, align 8, !dbg !1147
  %18 = call i32 @statfs(i8* %17, %struct.statfs* %5) #5, !dbg !1149
  %19 = icmp ne i32 %18, 0, !dbg !1149
  br i1 %19, label %20, label %21, !dbg !1150

; <label>:20:                                     ; preds = %16
  store i1 false, i1* %2, align 1, !dbg !1151
  br label %27, !dbg !1151

; <label>:21:                                     ; preds = %16
  %22 = getelementptr inbounds %struct.statfs, %struct.statfs* %5, i32 0, i32 0, !dbg !1152
  %23 = load i64, i64* %22, align 8, !dbg !1152
  %24 = icmp ne i64 %23, 40864, !dbg !1154
  br i1 %24, label %25, label %26, !dbg !1155

; <label>:25:                                     ; preds = %21
  store i1 false, i1* %2, align 1, !dbg !1156
  br label %27, !dbg !1156

; <label>:26:                                     ; preds = %21
  store i1 true, i1* %2, align 1, !dbg !1157
  br label %27, !dbg !1157

; <label>:27:                                     ; preds = %26, %25, %20, %15, %9
  %28 = load i1, i1* %2, align 1, !dbg !1158
  ret i1 %28, !dbg !1158
}

declare zeroext i1 @load_xtables_module(i8*, i8*) #2

declare zeroext i1 @ipset_init() #2

; Function Attrs: nounwind uwtable
define void @iptables_fini() #0 !dbg !1159 {
  call void @iptables_remove_structure(i1 zeroext false), !dbg !1160
  ret void, !dbg !1161
}

declare i32 @ip4tables_process_entry(%struct.iptc_handle*, i8*, i32, i8*, %struct._ip_address*, %struct._ip_address*, i8*, i8*, i16 zeroext, i8 zeroext, i32, i1 zeroext) #2

declare i32 @ip6tables_process_entry(%struct.ip6tc_handle*, i8*, i32, i8*, %struct._ip_address*, %struct._ip_address*, i8*, i8*, i16 zeroext, i8 zeroext, i32, i1 zeroext) #2

declare zeroext i1 @add_ipsets(i1 zeroext) #2

declare zeroext i1 @remove_ipsets() #2

declare i32 @ip4tables_add_rules(%struct.iptc_handle*, i8*, i32, i8 zeroext, i8 zeroext, i8*, i8*, i16 zeroext, i8 zeroext, i32, i1 zeroext) #2

declare i32 @ip6tables_add_rules(%struct.ip6tc_handle*, i8*, i32, i8 zeroext, i8 zeroext, i8*, i8*, i16 zeroext, i8 zeroext, i32, i1 zeroext) #2

; Function Attrs: nounwind
declare i32 @lstat(i8*, %struct.stat*) #3

; Function Attrs: nounwind
declare i32 @statfs(i8*, %struct.statfs*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!143, !144}
!llvm.ident = !{!145}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !29, globals: !56)
!1 = !DIFile(filename: "[inter]keepalived--vrrp--vrrp_iptables.o.i", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!2 = !{!3, !13, !22}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 99, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!5 = !{!6, !7, !8, !9, !10, !11, !12}
!6 = !DIEnumerator(name: "IPPROTO_HOPOPTS", value: 0)
!7 = !DIEnumerator(name: "IPPROTO_ROUTING", value: 43)
!8 = !DIEnumerator(name: "IPPROTO_FRAGMENT", value: 44)
!9 = !DIEnumerator(name: "IPPROTO_ICMPV6", value: 58)
!10 = !DIEnumerator(name: "IPPROTO_NONE", value: 59)
!11 = !DIEnumerator(name: "IPPROTO_DSTOPTS", value: 60)
!12 = !DIEnumerator(name: "IPPROTO_MH", value: 135)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ip_set_dim", file: !14, line: 229, size: 32, align: 32, elements: !15)
!14 = !DIFile(filename: "/usr/include/linux/netfilter/ipset/ip_set.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!15 = !{!16, !17, !18, !19, !20, !21}
!16 = !DIEnumerator(name: "IPSET_DIM_ZERO", value: 0)
!17 = !DIEnumerator(name: "IPSET_DIM_ONE", value: 1)
!18 = !DIEnumerator(name: "IPSET_DIM_TWO", value: 2)
!19 = !DIEnumerator(name: "IPSET_DIM_THREE", value: 3)
!20 = !DIEnumerator(name: "IPSET_DIM_MAX", value: 6)
!21 = !DIEnumerator(name: "IPSET_BIT_RETURN_NOMATCH", value: 7)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ip_set_kopt", file: !14, line: 243, size: 32, align: 32, elements: !23)
!23 = !{!24, !25, !26, !27, !28}
!24 = !DIEnumerator(name: "IPSET_INV_MATCH", value: 1)
!25 = !DIEnumerator(name: "IPSET_DIM_ONE_SRC", value: 2)
!26 = !DIEnumerator(name: "IPSET_DIM_TWO_SRC", value: 4)
!27 = !DIEnumerator(name: "IPSET_DIM_THREE_SRC", value: 8)
!28 = !DIEnumerator(name: "IPSET_RETURN_NOMATCH", value: 128)
!29 = !{!30}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !4, line: 211, size: 128, align: 32, elements: !33)
!33 = !{!34}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !32, file: !4, line: 220, baseType: !35, size: 128, align: 32)
!35 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !32, file: !4, line: 213, size: 128, align: 32, elements: !36)
!36 = !{!37, !44, !50}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !35, file: !4, line: 215, baseType: !38, size: 128, align: 8)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 128, align: 8, elements: !42)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !40, line: 48, baseType: !41)
!40 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!41 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!42 = !{!43}
!43 = !DISubrange(count: 16)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !35, file: !4, line: 217, baseType: !45, size: 128, align: 16)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 128, align: 16, elements: !48)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !40, line: 49, baseType: !47)
!47 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!48 = !{!49}
!49 = !DISubrange(count: 8)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !35, file: !4, line: 218, baseType: !51, size: 128, align: 32)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 128, align: 32, elements: !54)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !40, line: 51, baseType: !53)
!53 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!54 = !{!55}
!55 = !DISubrange(count: 4)
!56 = !{!57}
!57 = distinct !DIGlobalVariable(name: "garp_delay", scope: !0, file: !58, line: 150, type: !59, isLocal: false, isDefinition: true, variable: %struct._list** @garp_delay)
!58 = !DIFile(filename: "./../include/vrrp_if.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !60, line: 31, baseType: !61)
!60 = !DIFile(filename: "../../lib/list.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, align: 64)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_list", file: !60, line: 39, size: 320, align: 64, elements: !63)
!63 = !{!64, !72, !73, !74, !78}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !62, file: !60, line: 40, baseType: !65, size: 64, align: 64)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_element", file: !60, line: 33, size: 192, align: 64, elements: !67)
!67 = !{!68, !69, !70}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !66, file: !60, line: 34, baseType: !65, size: 64, align: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !66, file: !60, line: 35, baseType: !65, size: 64, align: 64, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !66, file: !60, line: 36, baseType: !71, size: 64, align: 64, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !62, file: !60, line: 41, baseType: !65, size: 64, align: 64, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !62, file: !60, line: 42, baseType: !53, size: 32, align: 32, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !62, file: !60, line: 43, baseType: !75, size: 64, align: 64, offset: 192)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64, align: 64)
!76 = !DISubroutineType(types: !77)
!77 = !{null, !71}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "dump", scope: !62, file: !60, line: 44, baseType: !79, size: 64, align: 64, offset: 256)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64, align: 64)
!80 = !DISubroutineType(types: !81)
!81 = !{null, !82, !71}
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64, align: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !84, line: 48, baseType: !85)
!84 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !86, line: 241, size: 1728, align: 64, elements: !87)
!86 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!87 = !{!88, !90, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !111, !112, !113, !114, !118, !119, !121, !125, !128, !130, !131, !132, !133, !134, !138, !139}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !85, file: !86, line: 242, baseType: !89, size: 32, align: 32)
!89 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !85, file: !86, line: 247, baseType: !91, size: 64, align: 64, offset: 64)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64, align: 64)
!92 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !85, file: !86, line: 248, baseType: !91, size: 64, align: 64, offset: 128)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !85, file: !86, line: 249, baseType: !91, size: 64, align: 64, offset: 192)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !85, file: !86, line: 250, baseType: !91, size: 64, align: 64, offset: 256)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !85, file: !86, line: 251, baseType: !91, size: 64, align: 64, offset: 320)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !85, file: !86, line: 252, baseType: !91, size: 64, align: 64, offset: 384)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !85, file: !86, line: 253, baseType: !91, size: 64, align: 64, offset: 448)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !85, file: !86, line: 254, baseType: !91, size: 64, align: 64, offset: 512)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !85, file: !86, line: 256, baseType: !91, size: 64, align: 64, offset: 576)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !85, file: !86, line: 257, baseType: !91, size: 64, align: 64, offset: 640)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !85, file: !86, line: 258, baseType: !91, size: 64, align: 64, offset: 704)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !85, file: !86, line: 260, baseType: !104, size: 64, align: 64, offset: 768)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !86, line: 156, size: 192, align: 64, elements: !106)
!106 = !{!107, !108, !110}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !105, file: !86, line: 157, baseType: !104, size: 64, align: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !105, file: !86, line: 158, baseType: !109, size: 64, align: 64, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, align: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !105, file: !86, line: 162, baseType: !89, size: 32, align: 32, offset: 128)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !85, file: !86, line: 262, baseType: !109, size: 64, align: 64, offset: 832)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !85, file: !86, line: 264, baseType: !89, size: 32, align: 32, offset: 896)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !85, file: !86, line: 268, baseType: !89, size: 32, align: 32, offset: 928)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !85, file: !86, line: 270, baseType: !115, size: 64, align: 64, offset: 960)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !116, line: 131, baseType: !117)
!116 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!117 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !85, file: !86, line: 274, baseType: !47, size: 16, align: 16, offset: 1024)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !85, file: !86, line: 275, baseType: !120, size: 8, align: 8, offset: 1040)
!120 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !85, file: !86, line: 276, baseType: !122, size: 8, align: 8, offset: 1048)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 8, align: 8, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 1)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !85, file: !86, line: 280, baseType: !126, size: 64, align: 64, offset: 1088)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64, align: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !86, line: 150, baseType: null)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !85, file: !86, line: 289, baseType: !129, size: 64, align: 64, offset: 1152)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !116, line: 132, baseType: !117)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !85, file: !86, line: 297, baseType: !71, size: 64, align: 64, offset: 1216)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !85, file: !86, line: 298, baseType: !71, size: 64, align: 64, offset: 1280)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !85, file: !86, line: 299, baseType: !71, size: 64, align: 64, offset: 1344)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !85, file: !86, line: 300, baseType: !71, size: 64, align: 64, offset: 1408)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !85, file: !86, line: 302, baseType: !135, size: 64, align: 64, offset: 1472)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !136, line: 216, baseType: !137)
!136 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!137 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !85, file: !86, line: 303, baseType: !89, size: 32, align: 32, offset: 1536)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !85, file: !86, line: 305, baseType: !140, size: 160, align: 8, offset: 1568)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 160, align: 8, elements: !141)
!141 = !{!142}
!142 = !DISubrange(count: 20)
!143 = !{i32 2, !"Dwarf Version", i32 4}
!144 = !{i32 2, !"Debug Info Version", i32 3}
!145 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!146 = distinct !DISubprogram(name: "iptables_open", scope: !147, file: !147, line: 177, type: !148, isLocal: false, isDefinition: true, scopeLine: 178, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !166)
!147 = !DIFile(filename: "vrrp_iptables.c", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!148 = !DISubroutineType(types: !149)
!149 = !{!150}
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64, align: 64)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipt_handle", file: !147, line: 82, size: 256, align: 64, elements: !152)
!152 = !{!153, !157, !160, !162, !163}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "h4", scope: !151, file: !147, line: 83, baseType: !154, size: 64, align: 64)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64, align: 64)
!155 = !DICompositeType(tag: DW_TAG_structure_type, name: "iptc_handle", file: !156, line: 45, flags: DIFlagFwdDecl)
!156 = !DIFile(filename: "./../include/vrrp_iptables_calls.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!157 = !DIDerivedType(tag: DW_TAG_member, name: "h6", scope: !151, file: !147, line: 84, baseType: !158, size: 64, align: 64, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64, align: 64)
!159 = !DICompositeType(tag: DW_TAG_structure_type, name: "ip6tc_handle", file: !156, line: 49, flags: DIFlagFwdDecl)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "updated_v4", scope: !151, file: !147, line: 85, baseType: !161, size: 8, align: 8, offset: 128)
!161 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "updated_v6", scope: !151, file: !147, line: 86, baseType: !161, size: 8, align: 8, offset: 136)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !151, file: !147, line: 88, baseType: !164, size: 64, align: 64, offset: 192)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64, align: 64)
!165 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipset_session", file: !147, line: 88, flags: DIFlagFwdDecl)
!166 = !{}
!167 = !DILocalVariable(name: "h", scope: !146, file: !147, line: 179, type: !150)
!168 = !DIExpression()
!169 = !DILocation(line: 179, column: 21, scope: !146)
!170 = !DILocation(line: 179, column: 26, scope: !146)
!171 = !DILocation(line: 179, column: 25, scope: !146)
!172 = !DILocation(line: 181, column: 9, scope: !146)
!173 = !DILocation(line: 181, column: 2, scope: !146)
!174 = distinct !DISubprogram(name: "iptables_close", scope: !147, file: !147, line: 184, type: !175, isLocal: false, isDefinition: true, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !166)
!175 = !DISubroutineType(types: !176)
!176 = !{!89, !150}
!177 = !DILocalVariable(name: "h", arg: 1, scope: !174, file: !147, line: 184, type: !150)
!178 = !DILocation(line: 184, column: 39, scope: !174)
!179 = !DILocalVariable(name: "res", scope: !174, file: !147, line: 186, type: !89)
!180 = !DILocation(line: 186, column: 6, scope: !174)
!181 = !DILocation(line: 188, column: 6, scope: !182)
!182 = distinct !DILexicalBlock(scope: !174, file: !147, line: 188, column: 6)
!183 = !DILocation(line: 188, column: 9, scope: !182)
!184 = !DILocation(line: 188, column: 6, scope: !174)
!185 = !DILocation(line: 189, column: 25, scope: !182)
!186 = !DILocation(line: 189, column: 28, scope: !182)
!187 = !DILocation(line: 189, column: 32, scope: !182)
!188 = !DILocation(line: 189, column: 35, scope: !182)
!189 = !DILocation(line: 189, column: 9, scope: !182)
!190 = !DILocation(line: 189, column: 7, scope: !182)
!191 = !DILocation(line: 189, column: 3, scope: !182)
!192 = !DILocation(line: 190, column: 6, scope: !193)
!193 = distinct !DILexicalBlock(scope: !174, file: !147, line: 190, column: 6)
!194 = !DILocation(line: 190, column: 9, scope: !193)
!195 = !DILocation(line: 190, column: 6, scope: !174)
!196 = !DILocation(line: 191, column: 26, scope: !193)
!197 = !DILocation(line: 191, column: 29, scope: !193)
!198 = !DILocation(line: 191, column: 33, scope: !193)
!199 = !DILocation(line: 191, column: 36, scope: !193)
!200 = !DILocation(line: 191, column: 10, scope: !193)
!201 = !DILocation(line: 191, column: 7, scope: !193)
!202 = !DILocation(line: 191, column: 3, scope: !193)
!203 = !DILocation(line: 194, column: 6, scope: !204)
!204 = distinct !DILexicalBlock(scope: !174, file: !147, line: 194, column: 6)
!205 = !DILocation(line: 194, column: 9, scope: !204)
!206 = !DILocation(line: 194, column: 6, scope: !174)
!207 = !DILocation(line: 195, column: 21, scope: !204)
!208 = !DILocation(line: 195, column: 24, scope: !204)
!209 = !DILocation(line: 195, column: 3, scope: !204)
!210 = !DILocation(line: 198, column: 8, scope: !174)
!211 = !DILocation(line: 198, column: 3, scope: !174)
!212 = !DILocation(line: 198, column: 16, scope: !174)
!213 = !DILocation(line: 200, column: 9, scope: !174)
!214 = !DILocation(line: 200, column: 2, scope: !174)
!215 = distinct !DISubprogram(name: "check_chains_exist_lib", scope: !147, file: !147, line: 203, type: !216, isLocal: false, isDefinition: true, scopeLine: 204, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !166)
!216 = !DISubroutineType(types: !217)
!217 = !{null}
!218 = !DILocalVariable(name: "h4", scope: !215, file: !147, line: 205, type: !154)
!219 = !DILocation(line: 205, column: 22, scope: !215)
!220 = !DILocalVariable(name: "h6", scope: !215, file: !147, line: 206, type: !158)
!221 = !DILocation(line: 206, column: 23, scope: !215)
!222 = !DILocation(line: 208, column: 6, scope: !223)
!223 = distinct !DILexicalBlock(scope: !215, file: !147, line: 208, column: 6)
!224 = !DILocation(line: 208, column: 6, scope: !215)
!225 = !DILocation(line: 213, column: 9, scope: !226)
!226 = distinct !DILexicalBlock(scope: !227, file: !147, line: 212, column: 3)
!227 = distinct !DILexicalBlock(scope: !223, file: !147, line: 208, column: 18)
!228 = !DILocation(line: 213, column: 7, scope: !226)
!229 = !DILocation(line: 215, column: 9, scope: !230)
!230 = distinct !DILexicalBlock(scope: !226, file: !147, line: 215, column: 8)
!231 = !DILocation(line: 215, column: 8, scope: !226)
!232 = !DILocation(line: 216, column: 5, scope: !233)
!233 = distinct !DILexicalBlock(scope: !230, file: !147, line: 215, column: 13)
!234 = !DILocation(line: 217, column: 16, scope: !233)
!235 = !DILocation(line: 218, column: 4, scope: !233)
!236 = !DILocation(line: 219, column: 9, scope: !237)
!237 = distinct !DILexicalBlock(scope: !238, file: !147, line: 219, column: 9)
!238 = distinct !DILexicalBlock(scope: !230, file: !147, line: 218, column: 11)
!239 = !DILocation(line: 219, column: 22, scope: !237)
!240 = !DILocation(line: 219, column: 47, scope: !237)
!241 = !DILocation(line: 220, column: 29, scope: !237)
!242 = !DILocation(line: 220, column: 33, scope: !237)
!243 = !DILocation(line: 220, column: 46, scope: !237)
!244 = !DILocation(line: 220, column: 10, scope: !237)
!245 = !DILocation(line: 219, column: 9, scope: !246)
!246 = !DILexicalBlockFile(scope: !238, file: !147, discriminator: 1)
!247 = !DILocation(line: 221, column: 62, scope: !248)
!248 = distinct !DILexicalBlock(scope: !237, file: !147, line: 220, column: 70)
!249 = !DILocation(line: 221, column: 75, scope: !248)
!250 = !DILocation(line: 221, column: 6, scope: !248)
!251 = !DILocation(line: 222, column: 17, scope: !248)
!252 = !DILocation(line: 223, column: 5, scope: !248)
!253 = !DILocation(line: 224, column: 9, scope: !254)
!254 = distinct !DILexicalBlock(scope: !238, file: !147, line: 224, column: 9)
!255 = !DILocation(line: 224, column: 22, scope: !254)
!256 = !DILocation(line: 224, column: 48, scope: !254)
!257 = !DILocation(line: 225, column: 29, scope: !254)
!258 = !DILocation(line: 225, column: 33, scope: !254)
!259 = !DILocation(line: 225, column: 46, scope: !254)
!260 = !DILocation(line: 225, column: 10, scope: !254)
!261 = !DILocation(line: 224, column: 9, scope: !246)
!262 = !DILocation(line: 226, column: 62, scope: !263)
!263 = distinct !DILexicalBlock(scope: !254, file: !147, line: 225, column: 71)
!264 = !DILocation(line: 226, column: 75, scope: !263)
!265 = !DILocation(line: 226, column: 6, scope: !263)
!266 = !DILocation(line: 227, column: 17, scope: !263)
!267 = !DILocation(line: 228, column: 5, scope: !263)
!268 = !DILocation(line: 230, column: 21, scope: !238)
!269 = !DILocation(line: 230, column: 5, scope: !238)
!270 = !DILocation(line: 233, column: 2, scope: !227)
!271 = !DILocation(line: 235, column: 6, scope: !272)
!272 = distinct !DILexicalBlock(scope: !215, file: !147, line: 235, column: 6)
!273 = !DILocation(line: 235, column: 6, scope: !215)
!274 = !DILocation(line: 240, column: 9, scope: !275)
!275 = distinct !DILexicalBlock(scope: !276, file: !147, line: 239, column: 3)
!276 = distinct !DILexicalBlock(scope: !272, file: !147, line: 235, column: 18)
!277 = !DILocation(line: 240, column: 7, scope: !275)
!278 = !DILocation(line: 242, column: 9, scope: !279)
!279 = distinct !DILexicalBlock(scope: !275, file: !147, line: 242, column: 8)
!280 = !DILocation(line: 242, column: 8, scope: !275)
!281 = !DILocation(line: 243, column: 5, scope: !282)
!282 = distinct !DILexicalBlock(scope: !279, file: !147, line: 242, column: 13)
!283 = !DILocation(line: 244, column: 16, scope: !282)
!284 = !DILocation(line: 245, column: 4, scope: !282)
!285 = !DILocation(line: 246, column: 9, scope: !286)
!286 = distinct !DILexicalBlock(scope: !287, file: !147, line: 246, column: 9)
!287 = distinct !DILexicalBlock(scope: !279, file: !147, line: 245, column: 11)
!288 = !DILocation(line: 246, column: 22, scope: !286)
!289 = !DILocation(line: 246, column: 47, scope: !286)
!290 = !DILocation(line: 247, column: 29, scope: !286)
!291 = !DILocation(line: 247, column: 33, scope: !286)
!292 = !DILocation(line: 247, column: 46, scope: !286)
!293 = !DILocation(line: 247, column: 10, scope: !286)
!294 = !DILocation(line: 246, column: 9, scope: !295)
!295 = !DILexicalBlockFile(scope: !287, file: !147, discriminator: 1)
!296 = !DILocation(line: 248, column: 63, scope: !297)
!297 = distinct !DILexicalBlock(scope: !286, file: !147, line: 247, column: 70)
!298 = !DILocation(line: 248, column: 76, scope: !297)
!299 = !DILocation(line: 248, column: 6, scope: !297)
!300 = !DILocation(line: 249, column: 17, scope: !297)
!301 = !DILocation(line: 250, column: 5, scope: !297)
!302 = !DILocation(line: 251, column: 9, scope: !303)
!303 = distinct !DILexicalBlock(scope: !287, file: !147, line: 251, column: 9)
!304 = !DILocation(line: 251, column: 22, scope: !303)
!305 = !DILocation(line: 251, column: 48, scope: !303)
!306 = !DILocation(line: 252, column: 29, scope: !303)
!307 = !DILocation(line: 252, column: 33, scope: !303)
!308 = !DILocation(line: 252, column: 46, scope: !303)
!309 = !DILocation(line: 252, column: 10, scope: !303)
!310 = !DILocation(line: 251, column: 9, scope: !295)
!311 = !DILocation(line: 253, column: 63, scope: !312)
!312 = distinct !DILexicalBlock(scope: !303, file: !147, line: 252, column: 71)
!313 = !DILocation(line: 253, column: 76, scope: !312)
!314 = !DILocation(line: 253, column: 6, scope: !312)
!315 = !DILocation(line: 254, column: 17, scope: !312)
!316 = !DILocation(line: 255, column: 5, scope: !312)
!317 = !DILocation(line: 257, column: 21, scope: !287)
!318 = !DILocation(line: 257, column: 5, scope: !287)
!319 = !DILocation(line: 260, column: 2, scope: !276)
!320 = !DILocation(line: 261, column: 1, scope: !215)
!321 = distinct !DISubprogram(name: "handle_iptable_rule_to_vip_lib", scope: !147, file: !147, line: 322, type: !322, isLocal: false, isDefinition: true, scopeLine: 323, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !166)
!322 = !DISubroutineType(types: !323)
!323 = !{null, !324, !89, !150, !161}
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64, align: 64)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_address_t", file: !326, line: 73, baseType: !327)
!326 = !DIFile(filename: "./../include/vrrp_ipaddress.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ip_address", file: !326, line: 41, size: 704, align: 64, elements: !328)
!328 = !{!329, !341, !354, !415, !416, !417, !418, !419, !424, !425, !443, !444, !445}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "ifa", scope: !327, file: !326, line: 42, baseType: !330, size: 64, align: 32)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ifaddrmsg", file: !331, line: 7, size: 64, align: 32, elements: !332)
!331 = !DIFile(filename: "/usr/include/linux/if_addr.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!332 = !{!333, !336, !337, !338, !339}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_family", scope: !330, file: !331, line: 8, baseType: !334, size: 8, align: 8)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !335, line: 20, baseType: !41)
!335 = !DIFile(filename: "/usr/include/asm-generic/int-ll64.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!336 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_prefixlen", scope: !330, file: !331, line: 9, baseType: !334, size: 8, align: 8, offset: 8)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_flags", scope: !330, file: !331, line: 10, baseType: !334, size: 8, align: 8, offset: 16)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_scope", scope: !330, file: !331, line: 11, baseType: !334, size: 8, align: 8, offset: 24)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_index", scope: !330, file: !331, line: 12, baseType: !340, size: 32, align: 32, offset: 32)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !335, line: 26, baseType: !53)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !327, file: !326, line: 50, baseType: !342, size: 128, align: 32, offset: 64)
!342 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !327, file: !326, line: 44, size: 128, align: 32, elements: !343)
!343 = !{!344, !353}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "sin", scope: !342, file: !326, line: 48, baseType: !345, size: 64, align: 32)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !342, file: !326, line: 45, size: 64, align: 32, elements: !346)
!346 = !{!347, !352}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !345, file: !326, line: 46, baseType: !348, size: 32, align: 32)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !4, line: 31, size: 32, align: 32, elements: !349)
!349 = !{!350}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !348, file: !4, line: 33, baseType: !351, size: 32, align: 32)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !4, line: 30, baseType: !52)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "sin_brd", scope: !345, file: !326, line: 47, baseType: !348, size: 32, align: 32, offset: 32)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !342, file: !326, line: 49, baseType: !32, size: 128, align: 32)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "ifp", scope: !327, file: !326, line: 52, baseType: !355, size: 64, align: 64, offset: 192)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64, align: 64)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "interface_t", file: !58, line: 111, baseType: !357)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_interface", file: !58, line: 76, size: 1792, align: 64, elements: !358)
!358 = !{!359, !361, !363, !364, !365, !366, !367, !368, !369, !376, !377, !378, !379, !380, !381, !383, !384, !385, !386, !407, !408, !409, !410, !411, !412, !413, !414}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "ifname", scope: !357, file: !58, line: 77, baseType: !360, size: 128, align: 8)
!360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 128, align: 8, elements: !42)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "ifindex", scope: !357, file: !58, line: 78, baseType: !362, size: 32, align: 32, offset: 128)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "ifindex_t", file: !58, line: 62, baseType: !52)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !357, file: !58, line: 79, baseType: !348, size: 32, align: 32, offset: 160)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !357, file: !58, line: 80, baseType: !32, size: 128, align: 32, offset: 192)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "ifi_flags", scope: !357, file: !58, line: 81, baseType: !53, size: 32, align: 32, offset: 320)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "linkbeat_use_polling", scope: !357, file: !58, line: 82, baseType: !161, size: 8, align: 8, offset: 352)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !357, file: !58, line: 83, baseType: !52, size: 32, align: 32, offset: 384)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "hw_type", scope: !357, file: !58, line: 84, baseType: !47, size: 16, align: 16, offset: 416)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr", scope: !357, file: !58, line: 85, baseType: !370, size: 256, align: 8, offset: 432)
!370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 256, align: 8, elements: !374)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !372, line: 33, baseType: !373)
!372 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_char", file: !116, line: 30, baseType: !41)
!374 = !{!375}
!375 = !DISubrange(count: 32)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr_bcast", scope: !357, file: !58, line: 86, baseType: !370, size: 256, align: 8, offset: 688)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr_len", scope: !357, file: !58, line: 87, baseType: !135, size: 64, align: 64, offset: 960)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "lb_type", scope: !357, file: !58, line: 88, baseType: !89, size: 32, align: 32, offset: 1024)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "vmac", scope: !357, file: !58, line: 90, baseType: !161, size: 8, align: 8, offset: 1056)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "base_ifindex", scope: !357, file: !58, line: 91, baseType: !362, size: 32, align: 32, offset: 1088)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "base_ifp", scope: !357, file: !58, line: 92, baseType: !382, size: 64, align: 64, offset: 1152)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64, align: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master_ifindex", scope: !357, file: !58, line: 94, baseType: !362, size: 32, align: 32, offset: 1216)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master_ifp", scope: !357, file: !58, line: 96, baseType: !382, size: 64, align: 64, offset: 1280)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master", scope: !357, file: !58, line: 97, baseType: !161, size: 8, align: 8, offset: 1344)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "garp_delay", scope: !357, file: !58, line: 100, baseType: !387, size: 64, align: 64, offset: 1408)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64, align: 64)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "garp_delay_t", file: !58, line: 73, baseType: !389)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_garp_delay", file: !58, line: 65, size: 704, align: 64, elements: !390)
!390 = !{!391, !401, !402, !403, !404, !405, !406}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "garp_interval", scope: !389, file: !58, line: 66, baseType: !392, size: 128, align: 64)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "timeval_t", file: !393, line: 31, baseType: !394)
!393 = !DIFile(filename: "../../lib/timer.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !395, line: 30, size: 128, align: 64, elements: !396)
!395 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!396 = !{!397, !399}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !394, file: !395, line: 32, baseType: !398, size: 64, align: 64)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !116, line: 139, baseType: !117)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !394, file: !395, line: 33, baseType: !400, size: 64, align: 64, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !116, line: 141, baseType: !117)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "have_garp_interval", scope: !389, file: !58, line: 67, baseType: !161, size: 8, align: 8, offset: 128)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "gna_interval", scope: !389, file: !58, line: 68, baseType: !392, size: 128, align: 64, offset: 192)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "have_gna_interval", scope: !389, file: !58, line: 69, baseType: !161, size: 8, align: 8, offset: 320)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "garp_next_time", scope: !389, file: !58, line: 70, baseType: !392, size: 128, align: 64, offset: 384)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "gna_next_time", scope: !389, file: !58, line: 71, baseType: !392, size: 128, align: 64, offset: 512)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "aggregation_group", scope: !389, file: !58, line: 72, baseType: !89, size: 32, align: 32, offset: 640)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "gna_router", scope: !357, file: !58, line: 101, baseType: !161, size: 8, align: 8, offset: 1472)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_config", scope: !357, file: !58, line: 102, baseType: !89, size: 32, align: 32, offset: 1504)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_ignore_value", scope: !357, file: !58, line: 103, baseType: !52, size: 32, align: 32, offset: 1536)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_filter_value", scope: !357, file: !58, line: 104, baseType: !52, size: 32, align: 32, offset: 1568)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "reset_promote_secondaries", scope: !357, file: !58, line: 105, baseType: !52, size: 32, align: 32, offset: 1600)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "rp_filter", scope: !357, file: !58, line: 107, baseType: !53, size: 32, align: 32, offset: 1632)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "promote_secondaries_already_set", scope: !357, file: !58, line: 109, baseType: !161, size: 8, align: 8, offset: 1664)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "tracking_vrrp", scope: !357, file: !58, line: 110, baseType: !59, size: 64, align: 64, offset: 1728)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !327, file: !326, line: 53, baseType: !91, size: 64, align: 64, offset: 256)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !327, file: !326, line: 55, baseType: !52, size: 32, align: 32, offset: 320)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "flagmask", scope: !327, file: !326, line: 56, baseType: !52, size: 32, align: 32, offset: 352)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "have_peer", scope: !327, file: !326, line: 61, baseType: !161, size: 8, align: 8, offset: 384)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !327, file: !326, line: 65, baseType: !420, size: 128, align: 32, offset: 416)
!420 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !327, file: !326, line: 62, size: 128, align: 32, elements: !421)
!421 = !{!422, !423}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !420, file: !326, line: 63, baseType: !348, size: 32, align: 32)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !420, file: !326, line: 64, baseType: !32, size: 128, align: 32)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "dont_track", scope: !327, file: !326, line: 66, baseType: !161, size: 8, align: 8, offset: 544)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "track_group", scope: !327, file: !326, line: 67, baseType: !426, size: 64, align: 64, offset: 576)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64, align: 64)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "static_track_group_t", file: !428, line: 39, baseType: !429)
!428 = !DIFile(filename: "./../include/vrrp_static_track.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_static_track_group", file: !428, line: 35, size: 192, align: 64, elements: !430)
!430 = !{!431, !432, !442}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !429, file: !428, line: 36, baseType: !91, size: 64, align: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !429, file: !428, line: 37, baseType: !433, size: 64, align: 64, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64, align: 64)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "vector_t", file: !435, line: 34, baseType: !436)
!435 = !DIFile(filename: "../../lib/vector.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vector", file: !435, line: 30, size: 128, align: 64, elements: !437)
!437 = !{!438, !439, !440}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !436, file: !435, line: 31, baseType: !53, size: 32, align: 32)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !436, file: !435, line: 32, baseType: !53, size: 32, align: 32, offset: 32)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !436, file: !435, line: 33, baseType: !441, size: 64, align: 64, offset: 64)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "vrrp_instances", scope: !429, file: !428, line: 38, baseType: !59, size: 64, align: 64, offset: 128)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !327, file: !326, line: 69, baseType: !161, size: 8, align: 8, offset: 640)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "iptable_rule_set", scope: !327, file: !326, line: 70, baseType: !161, size: 8, align: 8, offset: 648)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "garp_gna_pending", scope: !327, file: !326, line: 72, baseType: !161, size: 8, align: 8, offset: 656)
!446 = !DILocalVariable(name: "ipaddress", arg: 1, scope: !321, file: !147, line: 322, type: !324)
!447 = !DILocation(line: 322, column: 46, scope: !321)
!448 = !DILocalVariable(name: "cmd", arg: 2, scope: !321, file: !147, line: 322, type: !89)
!449 = !DILocation(line: 322, column: 61, scope: !321)
!450 = !DILocalVariable(name: "h", arg: 3, scope: !321, file: !147, line: 322, type: !150)
!451 = !DILocation(line: 322, column: 85, scope: !321)
!452 = !DILocalVariable(name: "force", arg: 4, scope: !321, file: !147, line: 322, type: !161)
!453 = !DILocation(line: 322, column: 92, scope: !321)
!454 = !DILocalVariable(name: "ifname", scope: !321, file: !147, line: 324, type: !91)
!455 = !DILocation(line: 324, column: 8, scope: !321)
!456 = !DILocation(line: 327, column: 7, scope: !457)
!457 = distinct !DILexicalBlock(scope: !321, file: !147, line: 327, column: 6)
!458 = !DILocation(line: 327, column: 18, scope: !457)
!459 = !DILocation(line: 327, column: 22, scope: !457)
!460 = !DILocation(line: 327, column: 33, scope: !457)
!461 = !DILocation(line: 327, column: 43, scope: !457)
!462 = !DILocation(line: 327, column: 47, scope: !463)
!463 = !DILexicalBlockFile(scope: !457, file: !147, discriminator: 1)
!464 = !DILocation(line: 327, column: 59, scope: !463)
!465 = !DILocation(line: 328, column: 7, scope: !457)
!466 = !DILocation(line: 328, column: 18, scope: !457)
!467 = !DILocation(line: 328, column: 22, scope: !457)
!468 = !DILocation(line: 328, column: 33, scope: !457)
!469 = !DILocation(line: 328, column: 44, scope: !457)
!470 = !DILocation(line: 328, column: 48, scope: !463)
!471 = !DILocation(line: 327, column: 6, scope: !472)
!472 = !DILexicalBlockFile(scope: !321, file: !147, discriminator: 2)
!473 = !DILocation(line: 329, column: 3, scope: !457)
!474 = !DILocation(line: 332, column: 6, scope: !475)
!475 = distinct !DILexicalBlock(scope: !321, file: !147, line: 332, column: 6)
!476 = !DILocation(line: 332, column: 19, scope: !475)
!477 = !DILocation(line: 332, column: 6, scope: !321)
!478 = !DILocation(line: 334, column: 8, scope: !479)
!479 = distinct !DILexicalBlock(scope: !480, file: !147, line: 334, column: 7)
!480 = distinct !DILexicalBlock(scope: !475, file: !147, line: 333, column: 2)
!481 = !DILocation(line: 334, column: 11, scope: !479)
!482 = !DILocation(line: 334, column: 7, scope: !480)
!483 = !DILocation(line: 335, column: 17, scope: !479)
!484 = !DILocation(line: 335, column: 4, scope: !479)
!485 = !DILocation(line: 335, column: 7, scope: !479)
!486 = !DILocation(line: 335, column: 15, scope: !479)
!487 = !DILocation(line: 337, column: 15, scope: !480)
!488 = !DILocation(line: 337, column: 18, scope: !480)
!489 = !DILocation(line: 337, column: 27, scope: !480)
!490 = !DILocation(line: 337, column: 32, scope: !480)
!491 = !DILocation(line: 337, column: 3, scope: !480)
!492 = !DILocation(line: 338, column: 34, scope: !480)
!493 = !DILocation(line: 338, column: 38, scope: !480)
!494 = !DILocation(line: 338, column: 3, scope: !480)
!495 = !DILocation(line: 338, column: 14, scope: !480)
!496 = !DILocation(line: 338, column: 31, scope: !480)
!497 = !DILocation(line: 340, column: 3, scope: !480)
!498 = !DILocation(line: 344, column: 8, scope: !499)
!499 = distinct !DILexicalBlock(scope: !321, file: !147, line: 344, column: 6)
!500 = !DILocation(line: 344, column: 20, scope: !499)
!501 = !DILocation(line: 344, column: 24, scope: !499)
!502 = !DILocation(line: 344, column: 7, scope: !499)
!503 = !DILocation(line: 344, column: 35, scope: !499)
!504 = !DILocation(line: 344, column: 6, scope: !321)
!505 = !DILocalVariable(name: "__a", scope: !506, file: !147, line: 345, type: !30)
!506 = distinct !DILexicalBlock(scope: !507, file: !147, line: 345, column: 22)
!507 = distinct !DILexicalBlock(scope: !508, file: !147, line: 345, column: 6)
!508 = distinct !DILexicalBlock(scope: !499, file: !147, line: 344, column: 8)
!509 = !DILocation(line: 345, column: 47, scope: !506)
!510 = !DILocation(line: 345, column: 7, scope: !506)
!511 = !DILocation(line: 345, column: 18, scope: !506)
!512 = !DILocation(line: 345, column: 20, scope: !506)
!513 = !DILocation(line: 345, column: 10, scope: !506)
!514 = !DILocation(line: 345, column: 15, scope: !506)
!515 = !DILocation(line: 345, column: 23, scope: !506)
!516 = !DILocation(line: 345, column: 40, scope: !506)
!517 = !DILocation(line: 345, column: 38, scope: !506)
!518 = !DILocation(line: 345, column: 63, scope: !519)
!519 = !DILexicalBlockFile(scope: !506, file: !147, discriminator: 1)
!520 = !DILocation(line: 345, column: 60, scope: !506)
!521 = !DILocation(line: 345, column: 24, scope: !506)
!522 = !DILocation(line: 345, column: 83, scope: !506)
!523 = !DILocation(line: 345, column: 21, scope: !507)
!524 = !DILocation(line: 345, column: 6, scope: !508)
!525 = !DILocation(line: 346, column: 13, scope: !507)
!526 = !DILocation(line: 346, column: 24, scope: !507)
!527 = !DILocation(line: 346, column: 29, scope: !507)
!528 = !DILocation(line: 346, column: 11, scope: !507)
!529 = !DILocation(line: 346, column: 4, scope: !507)
!530 = !DILocation(line: 347, column: 29, scope: !508)
!531 = !DILocation(line: 347, column: 40, scope: !508)
!532 = !DILocation(line: 347, column: 45, scope: !508)
!533 = !DILocation(line: 347, column: 48, scope: !508)
!534 = !DILocation(line: 347, column: 3, scope: !508)
!535 = !DILocation(line: 348, column: 2, scope: !508)
!536 = !DILocation(line: 350, column: 17, scope: !321)
!537 = !DILocation(line: 350, column: 20, scope: !321)
!538 = !DILocation(line: 350, column: 33, scope: !321)
!539 = !DILocation(line: 351, column: 25, scope: !321)
!540 = !DILocation(line: 351, column: 36, scope: !321)
!541 = !DILocation(line: 352, column: 20, scope: !321)
!542 = !DILocation(line: 352, column: 25, scope: !321)
!543 = !DILocation(line: 350, column: 2, scope: !321)
!544 = !DILocation(line: 354, column: 33, scope: !321)
!545 = !DILocation(line: 354, column: 37, scope: !321)
!546 = !DILocation(line: 354, column: 2, scope: !321)
!547 = !DILocation(line: 354, column: 13, scope: !321)
!548 = !DILocation(line: 354, column: 30, scope: !321)
!549 = !DILocation(line: 356, column: 6, scope: !550)
!550 = distinct !DILexicalBlock(scope: !321, file: !147, line: 356, column: 6)
!551 = !DILocation(line: 356, column: 19, scope: !550)
!552 = !DILocation(line: 356, column: 45, scope: !550)
!553 = !DILocation(line: 356, column: 6, scope: !321)
!554 = !DILocation(line: 357, column: 3, scope: !550)
!555 = !DILocation(line: 359, column: 17, scope: !321)
!556 = !DILocation(line: 359, column: 20, scope: !321)
!557 = !DILocation(line: 359, column: 33, scope: !321)
!558 = !DILocation(line: 360, column: 19, scope: !321)
!559 = !DILocation(line: 360, column: 42, scope: !321)
!560 = !DILocation(line: 361, column: 20, scope: !321)
!561 = !DILocation(line: 361, column: 25, scope: !321)
!562 = !DILocation(line: 359, column: 2, scope: !321)
!563 = !DILocation(line: 362, column: 1, scope: !321)
!564 = !DILocation(line: 362, column: 1, scope: !565)
!565 = !DILexicalBlockFile(scope: !321, file: !147, discriminator: 1)
!566 = distinct !DISubprogram(name: "handle_iptable_rule_to_NA", scope: !147, file: !147, line: 292, type: !567, isLocal: true, isDefinition: true, scopeLine: 293, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !166)
!567 = !DISubroutineType(types: !568)
!568 = !{null, !324, !89, !71, !161}
!569 = !DILocalVariable(name: "ipaddress", arg: 1, scope: !566, file: !147, line: 292, type: !324)
!570 = !DILocation(line: 292, column: 41, scope: !566)
!571 = !DILocalVariable(name: "cmd", arg: 2, scope: !566, file: !147, line: 292, type: !89)
!572 = !DILocation(line: 292, column: 56, scope: !566)
!573 = !DILocalVariable(name: "h", arg: 3, scope: !566, file: !147, line: 292, type: !71)
!574 = !DILocation(line: 292, column: 67, scope: !566)
!575 = !DILocalVariable(name: "force", arg: 4, scope: !566, file: !147, line: 292, type: !161)
!576 = !DILocation(line: 292, column: 74, scope: !566)
!577 = !DILocalVariable(name: "ifname", scope: !566, file: !147, line: 295, type: !91)
!578 = !DILocation(line: 295, column: 8, scope: !566)
!579 = !DILocation(line: 297, column: 6, scope: !580)
!580 = distinct !DILexicalBlock(scope: !566, file: !147, line: 297, column: 6)
!581 = !DILocation(line: 297, column: 19, scope: !580)
!582 = !DILocation(line: 297, column: 44, scope: !580)
!583 = !DILocation(line: 297, column: 6, scope: !566)
!584 = !DILocation(line: 298, column: 3, scope: !580)
!585 = !DILocalVariable(name: "__a", scope: !586, file: !147, line: 300, type: !30)
!586 = distinct !DILexicalBlock(scope: !587, file: !147, line: 300, column: 21)
!587 = distinct !DILexicalBlock(scope: !566, file: !147, line: 300, column: 5)
!588 = !DILocation(line: 300, column: 46, scope: !586)
!589 = !DILocation(line: 300, column: 6, scope: !586)
!590 = !DILocation(line: 300, column: 17, scope: !586)
!591 = !DILocation(line: 300, column: 19, scope: !586)
!592 = !DILocation(line: 300, column: 9, scope: !586)
!593 = !DILocation(line: 300, column: 14, scope: !586)
!594 = !DILocation(line: 300, column: 22, scope: !586)
!595 = !DILocation(line: 300, column: 39, scope: !586)
!596 = !DILocation(line: 300, column: 37, scope: !586)
!597 = !DILocation(line: 300, column: 62, scope: !598)
!598 = !DILexicalBlockFile(scope: !586, file: !147, discriminator: 1)
!599 = !DILocation(line: 300, column: 59, scope: !586)
!600 = !DILocation(line: 300, column: 23, scope: !586)
!601 = !DILocation(line: 300, column: 82, scope: !586)
!602 = !DILocation(line: 300, column: 20, scope: !587)
!603 = !DILocation(line: 300, column: 5, scope: !566)
!604 = !DILocation(line: 301, column: 12, scope: !587)
!605 = !DILocation(line: 301, column: 23, scope: !587)
!606 = !DILocation(line: 301, column: 28, scope: !587)
!607 = !DILocation(line: 301, column: 10, scope: !587)
!608 = !DILocation(line: 301, column: 3, scope: !587)
!609 = !DILocation(line: 303, column: 17, scope: !566)
!610 = !DILocation(line: 303, column: 20, scope: !566)
!611 = !DILocation(line: 303, column: 33, scope: !566)
!612 = !DILocation(line: 304, column: 27, scope: !566)
!613 = !DILocation(line: 304, column: 38, scope: !566)
!614 = !DILocation(line: 305, column: 24, scope: !566)
!615 = !DILocation(line: 305, column: 29, scope: !566)
!616 = !DILocation(line: 303, column: 2, scope: !566)
!617 = !DILocation(line: 306, column: 17, scope: !566)
!618 = !DILocation(line: 306, column: 20, scope: !566)
!619 = !DILocation(line: 306, column: 33, scope: !566)
!620 = !DILocation(line: 307, column: 27, scope: !566)
!621 = !DILocation(line: 307, column: 38, scope: !566)
!622 = !DILocation(line: 308, column: 24, scope: !566)
!623 = !DILocation(line: 308, column: 29, scope: !566)
!624 = !DILocation(line: 306, column: 2, scope: !566)
!625 = !DILocation(line: 310, column: 6, scope: !626)
!626 = distinct !DILexicalBlock(scope: !566, file: !147, line: 310, column: 6)
!627 = !DILocation(line: 310, column: 19, scope: !626)
!628 = !DILocation(line: 310, column: 45, scope: !626)
!629 = !DILocation(line: 310, column: 6, scope: !566)
!630 = !DILocation(line: 311, column: 3, scope: !626)
!631 = !DILocation(line: 313, column: 17, scope: !566)
!632 = !DILocation(line: 313, column: 20, scope: !566)
!633 = !DILocation(line: 313, column: 33, scope: !566)
!634 = !DILocation(line: 314, column: 21, scope: !566)
!635 = !DILocation(line: 314, column: 44, scope: !566)
!636 = !DILocation(line: 315, column: 24, scope: !566)
!637 = !DILocation(line: 315, column: 29, scope: !566)
!638 = !DILocation(line: 313, column: 2, scope: !566)
!639 = !DILocation(line: 316, column: 17, scope: !566)
!640 = !DILocation(line: 316, column: 20, scope: !566)
!641 = !DILocation(line: 316, column: 33, scope: !566)
!642 = !DILocation(line: 317, column: 21, scope: !566)
!643 = !DILocation(line: 317, column: 44, scope: !566)
!644 = !DILocation(line: 318, column: 24, scope: !566)
!645 = !DILocation(line: 318, column: 29, scope: !566)
!646 = !DILocation(line: 316, column: 2, scope: !566)
!647 = !DILocation(line: 319, column: 1, scope: !566)
!648 = !DILocation(line: 319, column: 1, scope: !649)
!649 = !DILexicalBlockFile(scope: !566, file: !147, discriminator: 1)
!650 = distinct !DISubprogram(name: "iptables_entry", scope: !147, file: !147, line: 263, type: !651, isLocal: true, isDefinition: true, scopeLine: 264, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !166)
!651 = !DISubroutineType(types: !652)
!652 = !{!89, !150, !653, !53, !91, !655, !655, !653, !653, !46, !39, !89, !161}
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64, align: 64)
!654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64, align: 64)
!656 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !325)
!657 = !DILocalVariable(name: "h", arg: 1, scope: !650, file: !147, line: 263, type: !150)
!658 = !DILocation(line: 263, column: 46, scope: !650)
!659 = !DILocalVariable(name: "chain_name", arg: 2, scope: !650, file: !147, line: 263, type: !653)
!660 = !DILocation(line: 263, column: 61, scope: !650)
!661 = !DILocalVariable(name: "rulenum", arg: 3, scope: !650, file: !147, line: 263, type: !53)
!662 = !DILocation(line: 263, column: 86, scope: !650)
!663 = !DILocalVariable(name: "target_name", arg: 4, scope: !650, file: !147, line: 263, type: !91)
!664 = !DILocation(line: 263, column: 101, scope: !650)
!665 = !DILocalVariable(name: "src_ip_address", arg: 5, scope: !650, file: !147, line: 263, type: !655)
!666 = !DILocation(line: 263, column: 134, scope: !650)
!667 = !DILocalVariable(name: "dst_ip_address", arg: 6, scope: !650, file: !147, line: 263, type: !655)
!668 = !DILocation(line: 263, column: 170, scope: !650)
!669 = !DILocalVariable(name: "in_iface", arg: 7, scope: !650, file: !147, line: 263, type: !653)
!670 = !DILocation(line: 263, column: 198, scope: !650)
!671 = !DILocalVariable(name: "out_iface", arg: 8, scope: !650, file: !147, line: 263, type: !653)
!672 = !DILocation(line: 263, column: 220, scope: !650)
!673 = !DILocalVariable(name: "protocol", arg: 9, scope: !650, file: !147, line: 263, type: !46)
!674 = !DILocation(line: 263, column: 240, scope: !650)
!675 = !DILocalVariable(name: "type", arg: 10, scope: !650, file: !147, line: 263, type: !39)
!676 = !DILocation(line: 263, column: 258, scope: !650)
!677 = !DILocalVariable(name: "cmd", arg: 11, scope: !650, file: !147, line: 263, type: !89)
!678 = !DILocation(line: 263, column: 268, scope: !650)
!679 = !DILocalVariable(name: "force", arg: 12, scope: !650, file: !147, line: 263, type: !161)
!680 = !DILocation(line: 263, column: 277, scope: !650)
!681 = !DILocalVariable(name: "res", scope: !650, file: !147, line: 265, type: !89)
!682 = !DILocation(line: 265, column: 6, scope: !650)
!683 = !DILocation(line: 267, column: 7, scope: !684)
!684 = distinct !DILexicalBlock(scope: !650, file: !147, line: 267, column: 6)
!685 = !DILocation(line: 267, column: 22, scope: !684)
!686 = !DILocation(line: 267, column: 25, scope: !687)
!687 = !DILexicalBlockFile(scope: !684, file: !147, discriminator: 1)
!688 = !DILocation(line: 267, column: 41, scope: !687)
!689 = !DILocation(line: 267, column: 45, scope: !687)
!690 = !DILocation(line: 267, column: 56, scope: !687)
!691 = !DILocation(line: 267, column: 67, scope: !687)
!692 = !DILocation(line: 268, column: 7, scope: !684)
!693 = !DILocation(line: 268, column: 22, scope: !684)
!694 = !DILocation(line: 268, column: 25, scope: !687)
!695 = !DILocation(line: 268, column: 41, scope: !687)
!696 = !DILocation(line: 268, column: 45, scope: !687)
!697 = !DILocation(line: 268, column: 56, scope: !687)
!698 = !DILocation(line: 267, column: 6, scope: !699)
!699 = !DILexicalBlockFile(scope: !650, file: !147, discriminator: 2)
!700 = !DILocation(line: 269, column: 8, scope: !701)
!701 = distinct !DILexicalBlock(scope: !702, file: !147, line: 269, column: 7)
!702 = distinct !DILexicalBlock(scope: !684, file: !147, line: 268, column: 69)
!703 = !DILocation(line: 269, column: 11, scope: !701)
!704 = !DILocation(line: 269, column: 7, scope: !702)
!705 = !DILocation(line: 270, column: 12, scope: !701)
!706 = !DILocation(line: 270, column: 4, scope: !701)
!707 = !DILocation(line: 270, column: 7, scope: !701)
!708 = !DILocation(line: 270, column: 10, scope: !701)
!709 = !DILocation(line: 272, column: 33, scope: !702)
!710 = !DILocation(line: 272, column: 36, scope: !702)
!711 = !DILocation(line: 272, column: 40, scope: !702)
!712 = !DILocation(line: 272, column: 52, scope: !702)
!713 = !DILocation(line: 272, column: 61, scope: !702)
!714 = !DILocation(line: 272, column: 74, scope: !702)
!715 = !DILocation(line: 272, column: 90, scope: !702)
!716 = !DILocation(line: 272, column: 106, scope: !702)
!717 = !DILocation(line: 272, column: 116, scope: !702)
!718 = !DILocation(line: 272, column: 127, scope: !702)
!719 = !DILocation(line: 272, column: 137, scope: !702)
!720 = !DILocation(line: 272, column: 143, scope: !702)
!721 = !DILocation(line: 272, column: 148, scope: !702)
!722 = !DILocation(line: 272, column: 9, scope: !702)
!723 = !DILocation(line: 272, column: 7, scope: !702)
!724 = !DILocation(line: 273, column: 8, scope: !725)
!725 = distinct !DILexicalBlock(scope: !702, file: !147, line: 273, column: 7)
!726 = !DILocation(line: 273, column: 7, scope: !702)
!727 = !DILocation(line: 274, column: 4, scope: !725)
!728 = !DILocation(line: 274, column: 7, scope: !725)
!729 = !DILocation(line: 274, column: 18, scope: !725)
!730 = !DILocation(line: 275, column: 10, scope: !702)
!731 = !DILocation(line: 275, column: 3, scope: !702)
!732 = !DILocation(line: 277, column: 12, scope: !733)
!733 = distinct !DILexicalBlock(scope: !684, file: !147, line: 277, column: 11)
!734 = !DILocation(line: 277, column: 27, scope: !733)
!735 = !DILocation(line: 277, column: 30, scope: !736)
!736 = !DILexicalBlockFile(scope: !733, file: !147, discriminator: 1)
!737 = !DILocation(line: 277, column: 46, scope: !736)
!738 = !DILocation(line: 277, column: 50, scope: !736)
!739 = !DILocation(line: 277, column: 61, scope: !736)
!740 = !DILocation(line: 277, column: 73, scope: !736)
!741 = !DILocation(line: 278, column: 5, scope: !733)
!742 = !DILocation(line: 278, column: 20, scope: !733)
!743 = !DILocation(line: 278, column: 23, scope: !736)
!744 = !DILocation(line: 278, column: 39, scope: !736)
!745 = !DILocation(line: 278, column: 43, scope: !736)
!746 = !DILocation(line: 278, column: 54, scope: !736)
!747 = !DILocation(line: 277, column: 11, scope: !748)
!748 = !DILexicalBlockFile(scope: !684, file: !147, discriminator: 2)
!749 = !DILocation(line: 279, column: 8, scope: !750)
!750 = distinct !DILexicalBlock(scope: !751, file: !147, line: 279, column: 7)
!751 = distinct !DILexicalBlock(scope: !733, file: !147, line: 278, column: 67)
!752 = !DILocation(line: 279, column: 11, scope: !750)
!753 = !DILocation(line: 279, column: 7, scope: !751)
!754 = !DILocation(line: 280, column: 12, scope: !750)
!755 = !DILocation(line: 280, column: 4, scope: !750)
!756 = !DILocation(line: 280, column: 7, scope: !750)
!757 = !DILocation(line: 280, column: 10, scope: !750)
!758 = !DILocation(line: 282, column: 33, scope: !751)
!759 = !DILocation(line: 282, column: 36, scope: !751)
!760 = !DILocation(line: 282, column: 40, scope: !751)
!761 = !DILocation(line: 282, column: 52, scope: !751)
!762 = !DILocation(line: 282, column: 61, scope: !751)
!763 = !DILocation(line: 282, column: 74, scope: !751)
!764 = !DILocation(line: 282, column: 90, scope: !751)
!765 = !DILocation(line: 282, column: 106, scope: !751)
!766 = !DILocation(line: 282, column: 116, scope: !751)
!767 = !DILocation(line: 282, column: 127, scope: !751)
!768 = !DILocation(line: 282, column: 137, scope: !751)
!769 = !DILocation(line: 282, column: 143, scope: !751)
!770 = !DILocation(line: 282, column: 148, scope: !751)
!771 = !DILocation(line: 282, column: 9, scope: !751)
!772 = !DILocation(line: 282, column: 7, scope: !751)
!773 = !DILocation(line: 283, column: 8, scope: !774)
!774 = distinct !DILexicalBlock(scope: !751, file: !147, line: 283, column: 7)
!775 = !DILocation(line: 283, column: 7, scope: !751)
!776 = !DILocation(line: 284, column: 4, scope: !774)
!777 = !DILocation(line: 284, column: 7, scope: !774)
!778 = !DILocation(line: 284, column: 18, scope: !774)
!779 = !DILocation(line: 285, column: 10, scope: !751)
!780 = !DILocation(line: 285, column: 3, scope: !751)
!781 = !DILocation(line: 288, column: 2, scope: !650)
!782 = !DILocation(line: 289, column: 1, scope: !650)
!783 = distinct !DISubprogram(name: "iptables_startup", scope: !147, file: !147, line: 376, type: !784, isLocal: false, isDefinition: true, scopeLine: 381, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !166)
!784 = !DISubroutineType(types: !785)
!785 = !{null, !161}
!786 = !DILocalVariable(name: "reload", arg: 1, scope: !783, file: !147, line: 380, type: !161)
!787 = !DILocation(line: 380, column: 11, scope: !783)
!788 = !DILocation(line: 383, column: 7, scope: !789)
!789 = distinct !DILexicalBlock(scope: !783, file: !147, line: 383, column: 6)
!790 = !DILocation(line: 383, column: 18, scope: !789)
!791 = !DILocation(line: 383, column: 22, scope: !792)
!792 = !DILexicalBlockFile(scope: !789, file: !147, discriminator: 1)
!793 = !DILocation(line: 383, column: 6, scope: !792)
!794 = !DILocation(line: 384, column: 3, scope: !789)
!795 = !DILocation(line: 384, column: 16, scope: !789)
!796 = !DILocation(line: 384, column: 29, scope: !789)
!797 = !DILocation(line: 386, column: 6, scope: !798)
!798 = distinct !DILexicalBlock(scope: !783, file: !147, line: 386, column: 6)
!799 = !DILocation(line: 386, column: 19, scope: !798)
!800 = !DILocation(line: 386, column: 6, scope: !783)
!801 = !DILocation(line: 387, column: 19, scope: !802)
!802 = distinct !DILexicalBlock(scope: !798, file: !147, line: 386, column: 33)
!803 = !DILocation(line: 387, column: 3, scope: !802)
!804 = !DILocation(line: 388, column: 3, scope: !802)
!805 = !DILocation(line: 389, column: 2, scope: !802)
!806 = !DILocation(line: 391, column: 1, scope: !783)
!807 = distinct !DISubprogram(name: "add_del_sets", scope: !147, file: !147, line: 100, type: !808, isLocal: true, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !166)
!808 = !DISubroutineType(types: !809)
!809 = !{null, !89, !161}
!810 = !DILocalVariable(name: "cmd", arg: 1, scope: !807, file: !147, line: 100, type: !89)
!811 = !DILocation(line: 100, column: 23, scope: !807)
!812 = !DILocalVariable(name: "reload", arg: 2, scope: !807, file: !147, line: 100, type: !161)
!813 = !DILocation(line: 100, column: 32, scope: !807)
!814 = !DILocation(line: 102, column: 7, scope: !815)
!815 = distinct !DILexicalBlock(scope: !807, file: !147, line: 102, column: 6)
!816 = !DILocation(line: 102, column: 20, scope: !815)
!817 = !DILocation(line: 102, column: 6, scope: !807)
!818 = !DILocation(line: 103, column: 3, scope: !815)
!819 = !DILocation(line: 105, column: 6, scope: !820)
!820 = distinct !DILexicalBlock(scope: !807, file: !147, line: 105, column: 6)
!821 = !DILocation(line: 105, column: 10, scope: !820)
!822 = !DILocation(line: 105, column: 6, scope: !807)
!823 = !DILocation(line: 106, column: 14, scope: !820)
!824 = !DILocation(line: 106, column: 3, scope: !820)
!825 = !DILocation(line: 108, column: 3, scope: !820)
!826 = !DILocation(line: 109, column: 1, scope: !807)
!827 = distinct !DISubprogram(name: "add_del_rules", scope: !147, file: !147, line: 112, type: !808, isLocal: true, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !166)
!828 = !DILocalVariable(name: "cmd", arg: 1, scope: !827, file: !147, line: 112, type: !89)
!829 = !DILocation(line: 112, column: 24, scope: !827)
!830 = !DILocalVariable(name: "ignore_errors", arg: 2, scope: !827, file: !147, line: 112, type: !161)
!831 = !DILocation(line: 112, column: 33, scope: !827)
!832 = !DILocalVariable(name: "h4", scope: !827, file: !147, line: 114, type: !154)
!833 = !DILocation(line: 114, column: 22, scope: !827)
!834 = !DILocalVariable(name: "h6", scope: !827, file: !147, line: 115, type: !158)
!835 = !DILocation(line: 115, column: 23, scope: !827)
!836 = !DILocation(line: 117, column: 6, scope: !837)
!837 = distinct !DILexicalBlock(scope: !827, file: !147, line: 117, column: 6)
!838 = !DILocation(line: 117, column: 17, scope: !837)
!839 = !DILocation(line: 118, column: 7, scope: !837)
!840 = !DILocation(line: 118, column: 20, scope: !837)
!841 = !DILocation(line: 118, column: 45, scope: !837)
!842 = !DILocation(line: 119, column: 7, scope: !837)
!843 = !DILocation(line: 119, column: 20, scope: !837)
!844 = !DILocation(line: 117, column: 6, scope: !845)
!845 = !DILexicalBlockFile(scope: !827, file: !147, discriminator: 1)
!846 = !DILocation(line: 124, column: 13, scope: !847)
!847 = distinct !DILexicalBlock(scope: !848, file: !147, line: 124, column: 7)
!848 = distinct !DILexicalBlock(scope: !837, file: !147, line: 123, column: 12)
!849 = !DILocation(line: 124, column: 11, scope: !847)
!850 = !DILocation(line: 124, column: 7, scope: !848)
!851 = !DILocation(line: 125, column: 8, scope: !852)
!852 = distinct !DILexicalBlock(scope: !853, file: !147, line: 125, column: 8)
!853 = distinct !DILexicalBlock(scope: !847, file: !147, line: 124, column: 40)
!854 = !DILocation(line: 125, column: 21, scope: !852)
!855 = !DILocation(line: 125, column: 8, scope: !853)
!856 = !DILocation(line: 126, column: 25, scope: !852)
!857 = !DILocation(line: 126, column: 29, scope: !852)
!858 = !DILocation(line: 126, column: 42, scope: !852)
!859 = !DILocation(line: 126, column: 111, scope: !852)
!860 = !DILocation(line: 126, column: 124, scope: !852)
!861 = !DILocation(line: 126, column: 161, scope: !852)
!862 = !DILocation(line: 126, column: 166, scope: !852)
!863 = !DILocation(line: 126, column: 5, scope: !852)
!864 = !DILocation(line: 127, column: 8, scope: !865)
!865 = distinct !DILexicalBlock(scope: !853, file: !147, line: 127, column: 8)
!866 = !DILocation(line: 127, column: 21, scope: !865)
!867 = !DILocation(line: 127, column: 8, scope: !853)
!868 = !DILocation(line: 128, column: 25, scope: !865)
!869 = !DILocation(line: 128, column: 29, scope: !865)
!870 = !DILocation(line: 128, column: 42, scope: !865)
!871 = !DILocation(line: 128, column: 128, scope: !865)
!872 = !DILocation(line: 128, column: 141, scope: !865)
!873 = !DILocation(line: 128, column: 178, scope: !865)
!874 = !DILocation(line: 128, column: 183, scope: !865)
!875 = !DILocation(line: 128, column: 5, scope: !865)
!876 = !DILocation(line: 129, column: 20, scope: !853)
!877 = !DILocation(line: 129, column: 4, scope: !853)
!878 = !DILocation(line: 130, column: 3, scope: !853)
!879 = !DILocation(line: 131, column: 2, scope: !848)
!880 = !DILocation(line: 133, column: 6, scope: !881)
!881 = distinct !DILexicalBlock(scope: !827, file: !147, line: 133, column: 6)
!882 = !DILocation(line: 133, column: 17, scope: !881)
!883 = !DILocation(line: 134, column: 7, scope: !881)
!884 = !DILocation(line: 134, column: 20, scope: !881)
!885 = !DILocation(line: 134, column: 45, scope: !881)
!886 = !DILocation(line: 135, column: 7, scope: !881)
!887 = !DILocation(line: 135, column: 20, scope: !881)
!888 = !DILocation(line: 133, column: 6, scope: !845)
!889 = !DILocation(line: 140, column: 13, scope: !890)
!890 = distinct !DILexicalBlock(scope: !891, file: !147, line: 140, column: 7)
!891 = distinct !DILexicalBlock(scope: !881, file: !147, line: 139, column: 11)
!892 = !DILocation(line: 140, column: 11, scope: !890)
!893 = !DILocation(line: 140, column: 7, scope: !891)
!894 = !DILocation(line: 141, column: 8, scope: !895)
!895 = distinct !DILexicalBlock(scope: !896, file: !147, line: 141, column: 8)
!896 = distinct !DILexicalBlock(scope: !890, file: !147, line: 140, column: 40)
!897 = !DILocation(line: 141, column: 21, scope: !895)
!898 = !DILocation(line: 141, column: 8, scope: !896)
!899 = !DILocation(line: 143, column: 25, scope: !900)
!900 = distinct !DILexicalBlock(scope: !895, file: !147, line: 141, column: 47)
!901 = !DILocation(line: 143, column: 29, scope: !900)
!902 = !DILocation(line: 143, column: 42, scope: !900)
!903 = !DILocation(line: 143, column: 129, scope: !900)
!904 = !DILocation(line: 143, column: 142, scope: !900)
!905 = !DILocation(line: 143, column: 190, scope: !900)
!906 = !DILocation(line: 143, column: 195, scope: !900)
!907 = !DILocation(line: 143, column: 5, scope: !900)
!908 = !DILocation(line: 144, column: 25, scope: !900)
!909 = !DILocation(line: 144, column: 29, scope: !900)
!910 = !DILocation(line: 144, column: 42, scope: !900)
!911 = !DILocation(line: 144, column: 129, scope: !900)
!912 = !DILocation(line: 144, column: 142, scope: !900)
!913 = !DILocation(line: 144, column: 190, scope: !900)
!914 = !DILocation(line: 144, column: 195, scope: !900)
!915 = !DILocation(line: 144, column: 5, scope: !900)
!916 = !DILocation(line: 145, column: 25, scope: !900)
!917 = !DILocation(line: 145, column: 29, scope: !900)
!918 = !DILocation(line: 145, column: 42, scope: !900)
!919 = !DILocation(line: 145, column: 127, scope: !900)
!920 = !DILocation(line: 145, column: 140, scope: !900)
!921 = !DILocation(line: 145, column: 184, scope: !900)
!922 = !DILocation(line: 145, column: 189, scope: !900)
!923 = !DILocation(line: 145, column: 5, scope: !900)
!924 = !DILocation(line: 151, column: 25, scope: !900)
!925 = !DILocation(line: 151, column: 29, scope: !900)
!926 = !DILocation(line: 151, column: 42, scope: !900)
!927 = !DILocation(line: 151, column: 113, scope: !900)
!928 = !DILocation(line: 151, column: 126, scope: !900)
!929 = !DILocation(line: 151, column: 168, scope: !900)
!930 = !DILocation(line: 151, column: 173, scope: !900)
!931 = !DILocation(line: 151, column: 5, scope: !900)
!932 = !DILocation(line: 152, column: 25, scope: !900)
!933 = !DILocation(line: 152, column: 29, scope: !900)
!934 = !DILocation(line: 152, column: 42, scope: !900)
!935 = !DILocation(line: 152, column: 113, scope: !900)
!936 = !DILocation(line: 152, column: 126, scope: !900)
!937 = !DILocation(line: 152, column: 168, scope: !900)
!938 = !DILocation(line: 152, column: 173, scope: !900)
!939 = !DILocation(line: 152, column: 5, scope: !900)
!940 = !DILocation(line: 153, column: 25, scope: !900)
!941 = !DILocation(line: 153, column: 29, scope: !900)
!942 = !DILocation(line: 153, column: 42, scope: !900)
!943 = !DILocation(line: 153, column: 111, scope: !900)
!944 = !DILocation(line: 153, column: 124, scope: !900)
!945 = !DILocation(line: 153, column: 162, scope: !900)
!946 = !DILocation(line: 153, column: 167, scope: !900)
!947 = !DILocation(line: 153, column: 5, scope: !900)
!948 = !DILocation(line: 154, column: 4, scope: !900)
!949 = !DILocation(line: 156, column: 8, scope: !950)
!950 = distinct !DILexicalBlock(scope: !896, file: !147, line: 156, column: 8)
!951 = !DILocation(line: 156, column: 21, scope: !950)
!952 = !DILocation(line: 156, column: 8, scope: !896)
!953 = !DILocation(line: 158, column: 25, scope: !954)
!954 = distinct !DILexicalBlock(scope: !950, file: !147, line: 156, column: 48)
!955 = !DILocation(line: 158, column: 29, scope: !954)
!956 = !DILocation(line: 158, column: 42, scope: !954)
!957 = !DILocation(line: 158, column: 130, scope: !954)
!958 = !DILocation(line: 158, column: 143, scope: !954)
!959 = !DILocation(line: 158, column: 191, scope: !954)
!960 = !DILocation(line: 158, column: 196, scope: !954)
!961 = !DILocation(line: 158, column: 5, scope: !954)
!962 = !DILocation(line: 159, column: 25, scope: !954)
!963 = !DILocation(line: 159, column: 29, scope: !954)
!964 = !DILocation(line: 159, column: 42, scope: !954)
!965 = !DILocation(line: 159, column: 130, scope: !954)
!966 = !DILocation(line: 159, column: 143, scope: !954)
!967 = !DILocation(line: 159, column: 191, scope: !954)
!968 = !DILocation(line: 159, column: 196, scope: !954)
!969 = !DILocation(line: 159, column: 5, scope: !954)
!970 = !DILocation(line: 160, column: 25, scope: !954)
!971 = !DILocation(line: 160, column: 29, scope: !954)
!972 = !DILocation(line: 160, column: 42, scope: !954)
!973 = !DILocation(line: 160, column: 128, scope: !954)
!974 = !DILocation(line: 160, column: 141, scope: !954)
!975 = !DILocation(line: 160, column: 185, scope: !954)
!976 = !DILocation(line: 160, column: 190, scope: !954)
!977 = !DILocation(line: 160, column: 5, scope: !954)
!978 = !DILocation(line: 166, column: 25, scope: !954)
!979 = !DILocation(line: 166, column: 29, scope: !954)
!980 = !DILocation(line: 166, column: 42, scope: !954)
!981 = !DILocation(line: 166, column: 130, scope: !954)
!982 = !DILocation(line: 166, column: 143, scope: !954)
!983 = !DILocation(line: 166, column: 185, scope: !954)
!984 = !DILocation(line: 166, column: 190, scope: !954)
!985 = !DILocation(line: 166, column: 5, scope: !954)
!986 = !DILocation(line: 167, column: 25, scope: !954)
!987 = !DILocation(line: 167, column: 29, scope: !954)
!988 = !DILocation(line: 167, column: 42, scope: !954)
!989 = !DILocation(line: 167, column: 130, scope: !954)
!990 = !DILocation(line: 167, column: 143, scope: !954)
!991 = !DILocation(line: 167, column: 185, scope: !954)
!992 = !DILocation(line: 167, column: 190, scope: !954)
!993 = !DILocation(line: 167, column: 5, scope: !954)
!994 = !DILocation(line: 168, column: 25, scope: !954)
!995 = !DILocation(line: 168, column: 29, scope: !954)
!996 = !DILocation(line: 168, column: 42, scope: !954)
!997 = !DILocation(line: 168, column: 128, scope: !954)
!998 = !DILocation(line: 168, column: 141, scope: !954)
!999 = !DILocation(line: 168, column: 179, scope: !954)
!1000 = !DILocation(line: 168, column: 184, scope: !954)
!1001 = !DILocation(line: 168, column: 5, scope: !954)
!1002 = !DILocation(line: 169, column: 4, scope: !954)
!1003 = !DILocation(line: 171, column: 20, scope: !896)
!1004 = !DILocation(line: 171, column: 4, scope: !896)
!1005 = !DILocation(line: 172, column: 3, scope: !896)
!1006 = !DILocation(line: 173, column: 2, scope: !891)
!1007 = !DILocation(line: 174, column: 1, scope: !827)
!1008 = distinct !DISubprogram(name: "iptables_cleanup", scope: !147, file: !147, line: 394, type: !216, isLocal: false, isDefinition: true, scopeLine: 395, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !166)
!1009 = !DILocation(line: 397, column: 2, scope: !1008)
!1010 = !DILocation(line: 399, column: 1, scope: !1008)
!1011 = distinct !DISubprogram(name: "iptables_remove_structure", scope: !147, file: !147, line: 366, type: !784, isLocal: true, isDefinition: true, scopeLine: 367, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !166)
!1012 = !DILocalVariable(name: "ignore_errors", arg: 1, scope: !1011, file: !147, line: 366, type: !161)
!1013 = !DILocation(line: 366, column: 31, scope: !1011)
!1014 = !DILocation(line: 368, column: 6, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1011, file: !147, line: 368, column: 6)
!1016 = !DILocation(line: 368, column: 19, scope: !1015)
!1017 = !DILocation(line: 368, column: 6, scope: !1011)
!1018 = !DILocation(line: 369, column: 20, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1015, file: !147, line: 368, column: 33)
!1020 = !DILocation(line: 369, column: 3, scope: !1019)
!1021 = !DILocation(line: 370, column: 3, scope: !1019)
!1022 = !DILocation(line: 371, column: 2, scope: !1019)
!1023 = !DILocation(line: 372, column: 1, scope: !1011)
!1024 = distinct !DISubprogram(name: "iptables_init_lib", scope: !147, file: !147, line: 422, type: !216, isLocal: false, isDefinition: true, scopeLine: 423, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !166)
!1025 = !DILocation(line: 424, column: 6, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1024, file: !147, line: 424, column: 6)
!1027 = !DILocation(line: 424, column: 6, scope: !1024)
!1028 = !DILocation(line: 425, column: 8, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1030, file: !147, line: 425, column: 7)
!1030 = distinct !DILexicalBlock(scope: !1026, file: !147, line: 424, column: 18)
!1031 = !DILocation(line: 425, column: 54, scope: !1029)
!1032 = !DILocation(line: 426, column: 8, scope: !1029)
!1033 = !DILocation(line: 425, column: 7, scope: !1034)
!1034 = !DILexicalBlockFile(scope: !1030, file: !147, discriminator: 1)
!1035 = !DILocation(line: 433, column: 15, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1029, file: !147, line: 432, column: 3)
!1037 = !DILocation(line: 434, column: 4, scope: !1036)
!1038 = !DILocation(line: 435, column: 3, scope: !1036)
!1039 = !DILocation(line: 437, column: 2, scope: !1030)
!1040 = !DILocation(line: 439, column: 6, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1024, file: !147, line: 439, column: 6)
!1042 = !DILocation(line: 439, column: 6, scope: !1024)
!1043 = !DILocation(line: 440, column: 8, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1045, file: !147, line: 440, column: 7)
!1045 = distinct !DILexicalBlock(scope: !1041, file: !147, line: 439, column: 18)
!1046 = !DILocation(line: 440, column: 55, scope: !1044)
!1047 = !DILocation(line: 441, column: 8, scope: !1044)
!1048 = !DILocation(line: 440, column: 7, scope: !1049)
!1049 = !DILexicalBlockFile(scope: !1045, file: !147, discriminator: 1)
!1050 = !DILocation(line: 448, column: 15, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1044, file: !147, line: 447, column: 3)
!1052 = !DILocation(line: 449, column: 4, scope: !1051)
!1053 = !DILocation(line: 450, column: 3, scope: !1051)
!1054 = !DILocation(line: 452, column: 2, scope: !1045)
!1055 = !DILocation(line: 471, column: 6, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1024, file: !147, line: 471, column: 6)
!1057 = !DILocation(line: 471, column: 19, scope: !1056)
!1058 = !DILocation(line: 471, column: 32, scope: !1056)
!1059 = !DILocation(line: 471, column: 36, scope: !1060)
!1060 = !DILexicalBlockFile(scope: !1056, file: !147, discriminator: 1)
!1061 = !DILocation(line: 471, column: 6, scope: !1060)
!1062 = !DILocation(line: 472, column: 3, scope: !1056)
!1063 = !DILocation(line: 472, column: 16, scope: !1056)
!1064 = !DILocation(line: 472, column: 29, scope: !1056)
!1065 = !DILocation(line: 478, column: 1, scope: !1024)
!1066 = distinct !DISubprogram(name: "proc_file_exists", scope: !147, file: !147, line: 404, type: !1067, isLocal: true, isDefinition: true, scopeLine: 405, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !166)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!161, !653}
!1069 = !DILocalVariable(name: "filename", arg: 1, scope: !1066, file: !147, line: 404, type: !653)
!1070 = !DILocation(line: 404, column: 34, scope: !1066)
!1071 = !DILocalVariable(name: "s", scope: !1066, file: !147, line: 406, type: !1072)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1073, line: 46, size: 1152, align: 64, elements: !1074)
!1073 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!1074 = !{!1075, !1077, !1079, !1081, !1083, !1085, !1087, !1088, !1089, !1090, !1092, !1094, !1101, !1102, !1103}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1072, file: !1073, line: 48, baseType: !1076, size: 64, align: 64)
!1076 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !116, line: 124, baseType: !137)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1072, file: !1073, line: 53, baseType: !1078, size: 64, align: 64, offset: 64)
!1078 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !116, line: 127, baseType: !137)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1072, file: !1073, line: 61, baseType: !1080, size: 64, align: 64, offset: 128)
!1080 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !116, line: 130, baseType: !137)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1072, file: !1073, line: 62, baseType: !1082, size: 32, align: 32, offset: 192)
!1082 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !116, line: 129, baseType: !53)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1072, file: !1073, line: 64, baseType: !1084, size: 32, align: 32, offset: 224)
!1084 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !116, line: 125, baseType: !53)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1072, file: !1073, line: 65, baseType: !1086, size: 32, align: 32, offset: 256)
!1086 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !116, line: 126, baseType: !53)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1072, file: !1073, line: 67, baseType: !89, size: 32, align: 32, offset: 288)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1072, file: !1073, line: 69, baseType: !1076, size: 64, align: 64, offset: 320)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1072, file: !1073, line: 74, baseType: !115, size: 64, align: 64, offset: 384)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1072, file: !1073, line: 78, baseType: !1091, size: 64, align: 64, offset: 448)
!1091 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !116, line: 153, baseType: !117)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1072, file: !1073, line: 80, baseType: !1093, size: 64, align: 64, offset: 512)
!1093 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !116, line: 158, baseType: !117)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1072, file: !1073, line: 91, baseType: !1095, size: 128, align: 64, offset: 576)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1096, line: 120, size: 128, align: 64, elements: !1097)
!1096 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!1097 = !{!1098, !1099}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1095, file: !1096, line: 122, baseType: !398, size: 64, align: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1095, file: !1096, line: 123, baseType: !1100, size: 64, align: 64, offset: 64)
!1100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !116, line: 175, baseType: !117)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1072, file: !1073, line: 92, baseType: !1095, size: 128, align: 64, offset: 704)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1072, file: !1073, line: 93, baseType: !1095, size: 128, align: 64, offset: 832)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1072, file: !1073, line: 106, baseType: !1104, size: 192, align: 64, offset: 960)
!1104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1100, size: 192, align: 64, elements: !1105)
!1105 = !{!1106}
!1106 = !DISubrange(count: 3)
!1107 = !DILocation(line: 406, column: 14, scope: !1066)
!1108 = !DILocalVariable(name: "f", scope: !1066, file: !147, line: 407, type: !1109)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "statfs", file: !1110, line: 24, size: 960, align: 64, elements: !1111)
!1110 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/statfs.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!1111 = !{!1112, !1114, !1115, !1117, !1118, !1119, !1121, !1122, !1130, !1131, !1132, !1133}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "f_type", scope: !1109, file: !1110, line: 26, baseType: !1113, size: 64, align: 64)
!1113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fsword_t", file: !116, line: 170, baseType: !117)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "f_bsize", scope: !1109, file: !1110, line: 27, baseType: !1113, size: 64, align: 64, offset: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "f_blocks", scope: !1109, file: !1110, line: 29, baseType: !1116, size: 64, align: 64, offset: 128)
!1116 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fsblkcnt_t", file: !116, line: 162, baseType: !137)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "f_bfree", scope: !1109, file: !1110, line: 30, baseType: !1116, size: 64, align: 64, offset: 192)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "f_bavail", scope: !1109, file: !1110, line: 31, baseType: !1116, size: 64, align: 64, offset: 256)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "f_files", scope: !1109, file: !1110, line: 32, baseType: !1120, size: 64, align: 64, offset: 320)
!1120 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fsfilcnt_t", file: !116, line: 166, baseType: !137)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "f_ffree", scope: !1109, file: !1110, line: 33, baseType: !1120, size: 64, align: 64, offset: 384)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "f_fsid", scope: !1109, file: !1110, line: 41, baseType: !1123, size: 64, align: 32, offset: 448)
!1123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fsid_t", file: !116, line: 134, baseType: !1124)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !116, line: 134, size: 64, align: 32, elements: !1125)
!1125 = !{!1126}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !1124, file: !116, line: 134, baseType: !1127, size: 64, align: 32)
!1127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 64, align: 32, elements: !1128)
!1128 = !{!1129}
!1129 = !DISubrange(count: 2)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "f_namelen", scope: !1109, file: !1110, line: 42, baseType: !1113, size: 64, align: 64, offset: 512)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "f_frsize", scope: !1109, file: !1110, line: 43, baseType: !1113, size: 64, align: 64, offset: 576)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1109, file: !1110, line: 44, baseType: !1113, size: 64, align: 64, offset: 640)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "f_spare", scope: !1109, file: !1110, line: 45, baseType: !1134, size: 256, align: 64, offset: 704)
!1134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1113, size: 256, align: 64, elements: !54)
!1135 = !DILocation(line: 407, column: 16, scope: !1066)
!1136 = !DILocation(line: 409, column: 12, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1066, file: !147, line: 409, column: 6)
!1138 = !DILocation(line: 409, column: 6, scope: !1137)
!1139 = !DILocation(line: 409, column: 6, scope: !1066)
!1140 = !DILocation(line: 410, column: 3, scope: !1137)
!1141 = !DILocation(line: 411, column: 8, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1066, file: !147, line: 411, column: 6)
!1143 = !DILocation(line: 411, column: 9, scope: !1142)
!1144 = !DILocation(line: 411, column: 20, scope: !1142)
!1145 = !DILocation(line: 411, column: 6, scope: !1066)
!1146 = !DILocation(line: 412, column: 3, scope: !1142)
!1147 = !DILocation(line: 413, column: 13, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1066, file: !147, line: 413, column: 6)
!1149 = !DILocation(line: 413, column: 6, scope: !1148)
!1150 = !DILocation(line: 413, column: 6, scope: !1066)
!1151 = !DILocation(line: 414, column: 3, scope: !1148)
!1152 = !DILocation(line: 415, column: 8, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1066, file: !147, line: 415, column: 6)
!1154 = !DILocation(line: 415, column: 15, scope: !1153)
!1155 = !DILocation(line: 415, column: 6, scope: !1066)
!1156 = !DILocation(line: 416, column: 3, scope: !1153)
!1157 = !DILocation(line: 418, column: 2, scope: !1066)
!1158 = !DILocation(line: 419, column: 1, scope: !1066)
!1159 = distinct !DISubprogram(name: "iptables_fini", scope: !147, file: !147, line: 481, type: !216, isLocal: false, isDefinition: true, scopeLine: 482, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !166)
!1160 = !DILocation(line: 484, column: 2, scope: !1159)
!1161 = !DILocation(line: 486, column: 1, scope: !1159)
