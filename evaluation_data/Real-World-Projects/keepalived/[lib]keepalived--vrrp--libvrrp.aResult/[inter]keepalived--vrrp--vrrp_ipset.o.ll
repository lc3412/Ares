; ModuleID = './[inter]keepalived--vrrp--vrrp_ipset.o.i'
source_filename = "./[inter]keepalived--vrrp--vrrp_ipset.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ipset_data = type opaque
%struct.ipset_session = type opaque
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
%struct.ipset_type = type { i8*, i8, i8, i8, i8, i8, [3 x %struct.ipset_elem], i32 (%struct.ipset_session*, i32, i8*)*, [4 x %struct.ipset_arg*], [4 x i64], [4 x i64], i8*, void ()*, i8*, %struct.ipset_type*, [0 x i8*] }
%struct.ipset_elem = type { i32 (%struct.ipset_session*, i32, i8*)*, i32 (i8*, i32, %struct.ipset_data*, i32, i8)*, i32 }
%struct.ipset_arg = type { [2 x i8*], i32, i32, i32 (%struct.ipset_session*, i32, i8*)*, i32 (i8*, i32, %struct.ipset_data*, i32, i8)* }
%struct._ip_address = type { %struct.ifaddrmsg, %union.anon.2, %struct._interface*, i8*, i32, i32, i8, %union.anon.4, i8, %struct._static_track_group*, i8, i8, i8 }
%struct.ifaddrmsg = type { i8, i8, i8, i8, i32 }
%union.anon.2 = type { %struct.in6_addr }
%union.anon.4 = type { %struct.in6_addr }
%struct._static_track_group = type { i8*, %struct._vector*, %struct._list* }

@ipset_data_set_addr = common global i32 (%struct.ipset_data*, i32, i8*)* null, align 8
@ipset_session_data_addr = common global %struct.ipset_data* (%struct.ipset_session*)* null, align 8
@ipset_cmd_addr = common global i32 (%struct.ipset_session*, i32, i32)* null, align 8
@libipset_handle = internal global i8* null, align 8
@global_data = external global %struct._data*, align 8
@.str = private unnamed_addr constant [11 x i8] c"keepalived\00", align 1
@os_major = external global i32, align 4
@os_minor = external global i32, align 4
@.str.1 = private unnamed_addr constant [87 x i8] c"Not using ipsets with network namespace since not supported with kernel version < 3.13\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"libipset.so\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"libipset.so.3\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Unable to load ipset library - %s\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"ipset_session_init\00", align 1
@ipset_session_init_addr = common global %struct.ipset_session* (i32 (i8*, ...)*)* null, align 8
@.str.6 = private unnamed_addr constant [19 x i8] c"ipset_session_fini\00", align 1
@ipset_session_fini_addr = common global i32 (%struct.ipset_session*)* null, align 8
@.str.7 = private unnamed_addr constant [19 x i8] c"ipset_session_data\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"ipset_session_error\00", align 1
@ipset_session_error_addr = common global i8* (%struct.ipset_session*)* null, align 8
@.str.9 = private unnamed_addr constant [19 x i8] c"ipset_envopt_parse\00", align 1
@ipset_envopt_parse_addr = common global i32 (%struct.ipset_session*, i32, i8*)* null, align 8
@.str.10 = private unnamed_addr constant [15 x i8] c"ipset_type_get\00", align 1
@ipset_type_get_addr = common global %struct.ipset_type* (%struct.ipset_session*, i32)* null, align 8
@.str.11 = private unnamed_addr constant [15 x i8] c"ipset_data_set\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"ipset_cmd\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"ipset_load_types\00", align 1
@ipset_load_types_addr = common global void ()* null, align 8
@.str.14 = private unnamed_addr constant [46 x i8] c"Failed to dynamic link an ipset function - %s\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"xt_set\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"ipsets\00", align 1
@.str.17 = private unnamed_addr constant [48 x i8] c"Unable to load module xt_set - not using ipsets\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"Cannot initialize ipset session.\00", align 1
@block_ipv4 = external global i8, align 1
@block_ipv6 = external global i8, align 1
@garp_delay = common global %struct._list* null, align 8
@.str.19 = private unnamed_addr constant [28 x i8] c"/proc/net/ip_tables_matches\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"hash:ip\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"hash:net,iface\00", align 1

; Function Attrs: nounwind uwtable
define zeroext i1 @has_ipset_setname(i8*, i8*) #0 !dbg !345 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ipset_session*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !349, metadata !350), !dbg !351
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !352, metadata !350), !dbg !353
  call void @llvm.dbg.declare(metadata %struct.ipset_session** %5, metadata !354, metadata !350), !dbg !355
  %6 = load i8*, i8** %3, align 8, !dbg !356
  %7 = bitcast i8* %6 to %struct.ipset_session*, !dbg !356
  store %struct.ipset_session* %7, %struct.ipset_session** %5, align 8, !dbg !355
  %8 = load i32 (%struct.ipset_data*, i32, i8*)*, i32 (%struct.ipset_data*, i32, i8*)** @ipset_data_set_addr, align 8, !dbg !357
  %9 = load %struct.ipset_data* (%struct.ipset_session*)*, %struct.ipset_data* (%struct.ipset_session*)** @ipset_session_data_addr, align 8, !dbg !358
  %10 = load %struct.ipset_session*, %struct.ipset_session** %5, align 8, !dbg !359
  %11 = call %struct.ipset_data* %9(%struct.ipset_session* %10), !dbg !359
  %12 = load i8*, i8** %4, align 8, !dbg !359
  %13 = call i32 %8(%struct.ipset_data* %11, i32 1, i8* %12), !dbg !360
  %14 = load i32 (%struct.ipset_session*, i32, i32)*, i32 (%struct.ipset_session*, i32, i32)** @ipset_cmd_addr, align 8, !dbg !362
  %15 = load %struct.ipset_session*, %struct.ipset_session** %5, align 8, !dbg !363
  %16 = call i32 %14(%struct.ipset_session* %15, i32 12, i32 0), !dbg !364
  %17 = icmp eq i32 %16, 0, !dbg !365
  ret i1 %17, !dbg !366
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define zeroext i1 @ipset_init() #0 !dbg !367 {
  %1 = alloca i1, align 1
  %2 = load i8*, i8** @libipset_handle, align 8, !dbg !370
  %3 = icmp ne i8* %2, null, !dbg !370
  br i1 %3, label %4, label %5, !dbg !372

; <label>:4:                                      ; preds = %0
  store i1 true, i1* %1, align 1, !dbg !373
  br label %93, !dbg !373

; <label>:5:                                      ; preds = %0
  %6 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !374
  %7 = getelementptr inbounds %struct._data, %struct._data* %6, i32 0, i32 0, !dbg !376
  %8 = load i8*, i8** %7, align 8, !dbg !376
  %9 = icmp ne i8* %8, null, !dbg !374
  br i1 %9, label %10, label %31, !dbg !377

; <label>:10:                                     ; preds = %5
  %11 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !378
  %12 = getelementptr inbounds %struct._data, %struct._data* %11, i32 0, i32 1, !dbg !379
  %13 = load i8, i8* %12, align 8, !dbg !379
  %14 = trunc i8 %13 to i1, !dbg !379
  br i1 %14, label %31, label %15, !dbg !380

; <label>:15:                                     ; preds = %10
  %16 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !381
  %17 = getelementptr inbounds %struct._data, %struct._data* %16, i32 0, i32 38, !dbg !382
  %18 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i32 0, i32 0, !dbg !381
  %19 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0)) #6, !dbg !383
  %20 = icmp ne i32 %19, 0, !dbg !383
  br i1 %20, label %31, label %21, !dbg !384

; <label>:21:                                     ; preds = %15
  %22 = load i32, i32* @os_major, align 4, !dbg !385
  %23 = icmp ule i32 %22, 2, !dbg !386
  br i1 %23, label %30, label %24, !dbg !387

; <label>:24:                                     ; preds = %21
  %25 = load i32, i32* @os_major, align 4, !dbg !388
  %26 = icmp eq i32 %25, 3, !dbg !389
  br i1 %26, label %27, label %31, !dbg !390

; <label>:27:                                     ; preds = %24
  %28 = load i32, i32* @os_minor, align 4, !dbg !391
  %29 = icmp ult i32 %28, 13, !dbg !393
  br i1 %29, label %30, label %31, !dbg !394

; <label>:30:                                     ; preds = %27, %21
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i32 0, i32 0)), !dbg !396
  store i1 false, i1* %1, align 1, !dbg !398
  br label %93, !dbg !398

; <label>:31:                                     ; preds = %27, %24, %15, %10, %5
  %32 = call i8* @dlopen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 2) #7, !dbg !399
  store i8* %32, i8** @libipset_handle, align 8, !dbg !401
  %33 = icmp ne i8* %32, null, !dbg !401
  br i1 %33, label %39, label %34, !dbg !402

; <label>:34:                                     ; preds = %31
  %35 = call i8* @dlopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 2) #7, !dbg !403
  store i8* %35, i8** @libipset_handle, align 8, !dbg !404
  %36 = icmp ne i8* %35, null, !dbg !404
  br i1 %36, label %39, label %37, !dbg !405

; <label>:37:                                     ; preds = %34
  %38 = call i8* @dlerror() #7, !dbg !406
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i32 0, i32 0), i8* %38), !dbg !408
  store i1 false, i1* %1, align 1, !dbg !410
  br label %93, !dbg !410

; <label>:39:                                     ; preds = %34, %31
  %40 = load i8*, i8** @libipset_handle, align 8, !dbg !411
  %41 = call i8* @dlsym(i8* %40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0)) #7, !dbg !413
  %42 = bitcast i8* %41 to %struct.ipset_session* (i32 (i8*, ...)*)*, !dbg !413
  store %struct.ipset_session* (i32 (i8*, ...)*)* %42, %struct.ipset_session* (i32 (i8*, ...)*)** @ipset_session_init_addr, align 8, !dbg !414
  %43 = icmp ne %struct.ipset_session* (i32 (i8*, ...)*)* %42, null, !dbg !414
  br i1 %43, label %44, label %84, !dbg !415

; <label>:44:                                     ; preds = %39
  %45 = load i8*, i8** @libipset_handle, align 8, !dbg !416
  %46 = call i8* @dlsym(i8* %45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0)) #7, !dbg !417
  %47 = bitcast i8* %46 to i32 (%struct.ipset_session*)*, !dbg !417
  store i32 (%struct.ipset_session*)* %47, i32 (%struct.ipset_session*)** @ipset_session_fini_addr, align 8, !dbg !418
  %48 = icmp ne i32 (%struct.ipset_session*)* %47, null, !dbg !418
  br i1 %48, label %49, label %84, !dbg !419

; <label>:49:                                     ; preds = %44
  %50 = load i8*, i8** @libipset_handle, align 8, !dbg !420
  %51 = call i8* @dlsym(i8* %50, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0)) #7, !dbg !421
  %52 = bitcast i8* %51 to %struct.ipset_data* (%struct.ipset_session*)*, !dbg !421
  store %struct.ipset_data* (%struct.ipset_session*)* %52, %struct.ipset_data* (%struct.ipset_session*)** @ipset_session_data_addr, align 8, !dbg !422
  %53 = icmp ne %struct.ipset_data* (%struct.ipset_session*)* %52, null, !dbg !422
  br i1 %53, label %54, label %84, !dbg !423

; <label>:54:                                     ; preds = %49
  %55 = load i8*, i8** @libipset_handle, align 8, !dbg !424
  %56 = call i8* @dlsym(i8* %55, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0)) #7, !dbg !425
  %57 = bitcast i8* %56 to i8* (%struct.ipset_session*)*, !dbg !425
  store i8* (%struct.ipset_session*)* %57, i8* (%struct.ipset_session*)** @ipset_session_error_addr, align 8, !dbg !426
  %58 = icmp ne i8* (%struct.ipset_session*)* %57, null, !dbg !426
  br i1 %58, label %59, label %84, !dbg !427

; <label>:59:                                     ; preds = %54
  %60 = load i8*, i8** @libipset_handle, align 8, !dbg !428
  %61 = call i8* @dlsym(i8* %60, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i32 0, i32 0)) #7, !dbg !429
  %62 = bitcast i8* %61 to i32 (%struct.ipset_session*, i32, i8*)*, !dbg !429
  store i32 (%struct.ipset_session*, i32, i8*)* %62, i32 (%struct.ipset_session*, i32, i8*)** @ipset_envopt_parse_addr, align 8, !dbg !430
  %63 = icmp ne i32 (%struct.ipset_session*, i32, i8*)* %62, null, !dbg !430
  br i1 %63, label %64, label %84, !dbg !431

; <label>:64:                                     ; preds = %59
  %65 = load i8*, i8** @libipset_handle, align 8, !dbg !432
  %66 = call i8* @dlsym(i8* %65, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0)) #7, !dbg !433
  %67 = bitcast i8* %66 to %struct.ipset_type* (%struct.ipset_session*, i32)*, !dbg !433
  store %struct.ipset_type* (%struct.ipset_session*, i32)* %67, %struct.ipset_type* (%struct.ipset_session*, i32)** @ipset_type_get_addr, align 8, !dbg !434
  %68 = icmp ne %struct.ipset_type* (%struct.ipset_session*, i32)* %67, null, !dbg !434
  br i1 %68, label %69, label %84, !dbg !435

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** @libipset_handle, align 8, !dbg !436
  %71 = call i8* @dlsym(i8* %70, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0)) #7, !dbg !437
  %72 = bitcast i8* %71 to i32 (%struct.ipset_data*, i32, i8*)*, !dbg !437
  store i32 (%struct.ipset_data*, i32, i8*)* %72, i32 (%struct.ipset_data*, i32, i8*)** @ipset_data_set_addr, align 8, !dbg !438
  %73 = icmp ne i32 (%struct.ipset_data*, i32, i8*)* %72, null, !dbg !438
  br i1 %73, label %74, label %84, !dbg !439

; <label>:74:                                     ; preds = %69
  %75 = load i8*, i8** @libipset_handle, align 8, !dbg !440
  %76 = call i8* @dlsym(i8* %75, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0)) #7, !dbg !441
  %77 = bitcast i8* %76 to i32 (%struct.ipset_session*, i32, i32)*, !dbg !441
  store i32 (%struct.ipset_session*, i32, i32)* %77, i32 (%struct.ipset_session*, i32, i32)** @ipset_cmd_addr, align 8, !dbg !442
  %78 = icmp ne i32 (%struct.ipset_session*, i32, i32)* %77, null, !dbg !442
  br i1 %78, label %79, label %84, !dbg !443

; <label>:79:                                     ; preds = %74
  %80 = load i8*, i8** @libipset_handle, align 8, !dbg !444
  %81 = call i8* @dlsym(i8* %80, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0)) #7, !dbg !445
  %82 = bitcast i8* %81 to void ()*, !dbg !445
  store void ()* %82, void ()** @ipset_load_types_addr, align 8, !dbg !446
  %83 = icmp ne void ()* %82, null, !dbg !446
  br i1 %83, label %86, label %84, !dbg !447

; <label>:84:                                     ; preds = %79, %74, %69, %64, %59, %54, %49, %44, %39
  %85 = call i8* @dlerror() #7, !dbg !448
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.14, i32 0, i32 0), i8* %85), !dbg !450
  store i1 false, i1* %1, align 1, !dbg !452
  br label %93, !dbg !452

; <label>:86:                                     ; preds = %79
  %87 = load void ()*, void ()** @ipset_load_types_addr, align 8, !dbg !453
  call void %87(), !dbg !454
  %88 = call zeroext i1 @set_match_loaded(), !dbg !455
  br i1 %88, label %92, label %89, !dbg !457

; <label>:89:                                     ; preds = %86
  %90 = call zeroext i1 @load_xtables_module(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0)), !dbg !458
  br i1 %90, label %92, label %91, !dbg !460

; <label>:91:                                     ; preds = %89
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.17, i32 0, i32 0)), !dbg !461
  store i1 false, i1* %1, align 1, !dbg !463
  br label %93, !dbg !463

; <label>:92:                                     ; preds = %89, %86
  store i1 true, i1* %1, align 1, !dbg !464
  br label %93, !dbg !464

; <label>:93:                                     ; preds = %92, %91, %84, %37, %30, %4
  %94 = load i1, i1* %1, align 1, !dbg !465
  ret i1 %94, !dbg !465
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare void @log_message(i32, i8*, ...) #3

; Function Attrs: nounwind
declare i8* @dlopen(i8*, i32) #4

; Function Attrs: nounwind
declare i8* @dlerror() #4

; Function Attrs: nounwind
declare i8* @dlsym(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define internal zeroext i1 @set_match_loaded() #0 !dbg !466 {
  %1 = alloca i1, align 1
  %2 = alloca [31 x i8], align 16
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata [31 x i8]* %2, metadata !467, metadata !350), !dbg !471
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !472, metadata !350), !dbg !473
  call void @llvm.dbg.declare(metadata i8* %4, metadata !474, metadata !350), !dbg !475
  store i8 0, i8* %4, align 1, !dbg !475
  %5 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0)), !dbg !476
  store %struct._IO_FILE* %5, %struct._IO_FILE** %3, align 8, !dbg !477
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !478
  %7 = icmp ne %struct._IO_FILE* %6, null, !dbg !478
  br i1 %7, label %9, label %8, !dbg !480

; <label>:8:                                      ; preds = %0
  store i1 false, i1* %1, align 1, !dbg !481
  br label %36, !dbg !481

; <label>:9:                                      ; preds = %0
  br label %10, !dbg !482

; <label>:10:                                     ; preds = %30, %9
  %11 = getelementptr inbounds [31 x i8], [31 x i8]* %2, i32 0, i32 0, !dbg !483
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !485
  %13 = call i8* @fgets(i8* %11, i32 31, %struct._IO_FILE* %12), !dbg !486
  %14 = icmp ne i8* %13, null, !dbg !487
  br i1 %14, label %15, label %31, !dbg !487

; <label>:15:                                     ; preds = %10
  %16 = getelementptr inbounds [31 x i8], [31 x i8]* %2, i64 0, i64 3, !dbg !488
  %17 = load i8, i8* %16, align 1, !dbg !488
  %18 = sext i8 %17 to i32, !dbg !488
  %19 = icmp eq i32 %18, 0, !dbg !491
  br i1 %19, label %25, label %20, !dbg !492

; <label>:20:                                     ; preds = %15
  %21 = getelementptr inbounds [31 x i8], [31 x i8]* %2, i64 0, i64 3, !dbg !493
  %22 = load i8, i8* %21, align 1, !dbg !493
  %23 = sext i8 %22 to i32, !dbg !493
  %24 = icmp eq i32 %23, 10, !dbg !495
  br i1 %24, label %25, label %30, !dbg !496

; <label>:25:                                     ; preds = %20, %15
  %26 = getelementptr inbounds [31 x i8], [31 x i8]* %2, i32 0, i32 0, !dbg !497
  %27 = call i32 @strncmp(i8* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i64 3) #6, !dbg !498
  %28 = icmp ne i32 %27, 0, !dbg !498
  br i1 %28, label %30, label %29, !dbg !499

; <label>:29:                                     ; preds = %25
  store i8 1, i8* %4, align 1, !dbg !501
  br label %31, !dbg !503

; <label>:30:                                     ; preds = %25, %20
  br label %10, !dbg !504, !llvm.loop !506

; <label>:31:                                     ; preds = %29, %10
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !507
  %33 = call i32 @fclose(%struct._IO_FILE* %32), !dbg !508
  %34 = load i8, i8* %4, align 1, !dbg !509
  %35 = trunc i8 %34 to i1, !dbg !509
  store i1 %35, i1* %1, align 1, !dbg !510
  br label %36, !dbg !510

; <label>:36:                                     ; preds = %31, %8
  %37 = load i1, i1* %1, align 1, !dbg !511
  ret i1 %37, !dbg !511
}

declare zeroext i1 @load_xtables_module(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define zeroext i1 @remove_ipsets() #0 !dbg !512 {
  %1 = alloca i1, align 1
  %2 = alloca %struct.ipset_session*, align 8
  call void @llvm.dbg.declare(metadata %struct.ipset_session** %2, metadata !513, metadata !350), !dbg !514
  %3 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !515
  %4 = getelementptr inbounds %struct._data, %struct._data* %3, i32 0, i32 37, !dbg !517
  %5 = load i8, i8* %4, align 2, !dbg !517
  %6 = trunc i8 %5 to i1, !dbg !517
  br i1 %6, label %8, label %7, !dbg !518

; <label>:7:                                      ; preds = %0
  store i1 true, i1* %1, align 1, !dbg !519
  br label %45, !dbg !519

; <label>:8:                                      ; preds = %0
  %9 = load i8*, i8** @libipset_handle, align 8, !dbg !520
  %10 = icmp ne i8* %9, null, !dbg !520
  br i1 %10, label %12, label %11, !dbg !522

; <label>:11:                                     ; preds = %8
  store i1 true, i1* %1, align 1, !dbg !523
  br label %45, !dbg !523

; <label>:12:                                     ; preds = %8
  %13 = load %struct.ipset_session* (i32 (i8*, ...)*)*, %struct.ipset_session* (i32 (i8*, ...)*)** @ipset_session_init_addr, align 8, !dbg !524
  %14 = call %struct.ipset_session* %13(i32 (i8*, ...)* @printf), !dbg !525
  store %struct.ipset_session* %14, %struct.ipset_session** %2, align 8, !dbg !526
  %15 = load %struct.ipset_session*, %struct.ipset_session** %2, align 8, !dbg !527
  %16 = icmp ne %struct.ipset_session* %15, null, !dbg !527
  br i1 %16, label %18, label %17, !dbg !529

; <label>:17:                                     ; preds = %12
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i32 0, i32 0)), !dbg !530
  store i1 false, i1* %1, align 1, !dbg !532
  br label %45, !dbg !532

; <label>:18:                                     ; preds = %12
  %19 = load i8, i8* @block_ipv4, align 1, !dbg !533
  %20 = trunc i8 %19 to i1, !dbg !533
  br i1 %20, label %21, label %27, !dbg !535

; <label>:21:                                     ; preds = %18
  %22 = load %struct.ipset_session*, %struct.ipset_session** %2, align 8, !dbg !536
  %23 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !537
  %24 = getelementptr inbounds %struct._data, %struct._data* %23, i32 0, i32 38, !dbg !538
  %25 = getelementptr inbounds [32 x i8], [32 x i8]* %24, i32 0, i32 0, !dbg !537
  %26 = call zeroext i1 @ipset_destroy(%struct.ipset_session* %22, i8* %25), !dbg !539
  br label %27, !dbg !539

; <label>:27:                                     ; preds = %21, %18
  %28 = load i8, i8* @block_ipv6, align 1, !dbg !540
  %29 = trunc i8 %28 to i1, !dbg !540
  br i1 %29, label %30, label %41, !dbg !542

; <label>:30:                                     ; preds = %27
  %31 = load %struct.ipset_session*, %struct.ipset_session** %2, align 8, !dbg !543
  %32 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !545
  %33 = getelementptr inbounds %struct._data, %struct._data* %32, i32 0, i32 39, !dbg !546
  %34 = getelementptr inbounds [32 x i8], [32 x i8]* %33, i32 0, i32 0, !dbg !545
  %35 = call zeroext i1 @ipset_destroy(%struct.ipset_session* %31, i8* %34), !dbg !547
  %36 = load %struct.ipset_session*, %struct.ipset_session** %2, align 8, !dbg !548
  %37 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !549
  %38 = getelementptr inbounds %struct._data, %struct._data* %37, i32 0, i32 40, !dbg !550
  %39 = getelementptr inbounds [32 x i8], [32 x i8]* %38, i32 0, i32 0, !dbg !549
  %40 = call zeroext i1 @ipset_destroy(%struct.ipset_session* %36, i8* %39), !dbg !551
  br label %41, !dbg !552

; <label>:41:                                     ; preds = %30, %27
  %42 = load i32 (%struct.ipset_session*)*, i32 (%struct.ipset_session*)** @ipset_session_fini_addr, align 8, !dbg !553
  %43 = load %struct.ipset_session*, %struct.ipset_session** %2, align 8, !dbg !554
  %44 = call i32 %42(%struct.ipset_session* %43), !dbg !555
  store i1 true, i1* %1, align 1, !dbg !556
  br label %45, !dbg !556

; <label>:45:                                     ; preds = %41, %17, %11, %7
  %46 = load i1, i1* %1, align 1, !dbg !557
  ret i1 %46, !dbg !557
}

declare i32 @printf(i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal zeroext i1 @ipset_destroy(%struct.ipset_session*, i8*) #0 !dbg !558 {
  %3 = alloca %struct.ipset_session*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.ipset_session* %0, %struct.ipset_session** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.ipset_session** %3, metadata !561, metadata !350), !dbg !562
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !563, metadata !350), !dbg !564
  call void @llvm.dbg.declare(metadata i32* %5, metadata !565, metadata !350), !dbg !566
  %6 = load i32 (%struct.ipset_data*, i32, i8*)*, i32 (%struct.ipset_data*, i32, i8*)** @ipset_data_set_addr, align 8, !dbg !567
  %7 = load %struct.ipset_data* (%struct.ipset_session*)*, %struct.ipset_data* (%struct.ipset_session*)** @ipset_session_data_addr, align 8, !dbg !568
  %8 = load %struct.ipset_session*, %struct.ipset_session** %3, align 8, !dbg !569
  %9 = call %struct.ipset_data* %7(%struct.ipset_session* %8), !dbg !569
  %10 = load i8*, i8** %4, align 8, !dbg !569
  %11 = call i32 %6(%struct.ipset_data* %9, i32 1, i8* %10), !dbg !570
  %12 = load i32 (%struct.ipset_session*, i32, i32)*, i32 (%struct.ipset_session*, i32, i32)** @ipset_cmd_addr, align 8, !dbg !572
  %13 = load %struct.ipset_session*, %struct.ipset_session** %3, align 8, !dbg !573
  %14 = call i32 %12(%struct.ipset_session* %13, i32 3, i32 0), !dbg !574
  store i32 %14, i32* %5, align 4, !dbg !575
  %15 = load i32, i32* %5, align 4, !dbg !576
  %16 = icmp eq i32 %15, 0, !dbg !577
  ret i1 %16, !dbg !578
}

; Function Attrs: nounwind uwtable
define zeroext i1 @add_ipsets(i1 zeroext) #0 !dbg !579 {
  %2 = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !582, metadata !350), !dbg !583
  %4 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !584
  %5 = getelementptr inbounds %struct._data, %struct._data* %4, i32 0, i32 38, !dbg !585
  %6 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i32 0, i32 0, !dbg !584
  %7 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !586
  %8 = getelementptr inbounds %struct._data, %struct._data* %7, i32 0, i32 39, !dbg !587
  %9 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i32 0, i32 0, !dbg !586
  %10 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !588
  %11 = getelementptr inbounds %struct._data, %struct._data* %10, i32 0, i32 40, !dbg !589
  %12 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i32 0, i32 0, !dbg !588
  %13 = load i8, i8* %2, align 1, !dbg !590
  %14 = trunc i8 %13 to i1, !dbg !590
  %15 = call zeroext i1 @create_sets(i8* %6, i8* %9, i8* %12, i1 zeroext %14), !dbg !591
  ret i1 %15, !dbg !592
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @create_sets(i8*, i8*, i8*, i1 zeroext) #0 !dbg !593 {
  %5 = alloca i1, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca %struct.ipset_session*, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !596, metadata !350), !dbg !597
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !598, metadata !350), !dbg !599
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !600, metadata !350), !dbg !601
  %11 = zext i1 %3 to i8
  store i8 %11, i8* %9, align 1
  call void @llvm.dbg.declare(metadata i8* %9, metadata !602, metadata !350), !dbg !603
  call void @llvm.dbg.declare(metadata %struct.ipset_session** %10, metadata !604, metadata !350), !dbg !605
  %12 = load %struct.ipset_session* (i32 (i8*, ...)*)*, %struct.ipset_session* (i32 (i8*, ...)*)** @ipset_session_init_addr, align 8, !dbg !606
  %13 = call %struct.ipset_session* %12(i32 (i8*, ...)* @printf), !dbg !607
  store %struct.ipset_session* %13, %struct.ipset_session** %10, align 8, !dbg !608
  %14 = load %struct.ipset_session*, %struct.ipset_session** %10, align 8, !dbg !609
  %15 = icmp ne %struct.ipset_session* %14, null, !dbg !609
  br i1 %15, label %17, label %16, !dbg !611

; <label>:16:                                     ; preds = %4
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i32 0, i32 0)), !dbg !612
  store i1 false, i1* %5, align 1, !dbg !614
  br label %72, !dbg !614

; <label>:17:                                     ; preds = %4
  %18 = load i8, i8* %9, align 1, !dbg !615
  %19 = trunc i8 %18 to i1, !dbg !615
  br i1 %19, label %24, label %20, !dbg !617

; <label>:20:                                     ; preds = %17
  %21 = load i32 (%struct.ipset_session*, i32, i8*)*, i32 (%struct.ipset_session*, i32, i8*)** @ipset_envopt_parse_addr, align 8, !dbg !618
  %22 = load %struct.ipset_session*, %struct.ipset_session** %10, align 8, !dbg !619
  %23 = call i32 %21(%struct.ipset_session* %22, i32 8, i8* null), !dbg !620
  br label %24, !dbg !620

; <label>:24:                                     ; preds = %20, %17
  %25 = load i8, i8* @block_ipv4, align 1, !dbg !621
  %26 = trunc i8 %25 to i1, !dbg !621
  br i1 %26, label %27, label %40, !dbg !623

; <label>:27:                                     ; preds = %24
  %28 = load i8, i8* %9, align 1, !dbg !624
  %29 = trunc i8 %28 to i1, !dbg !624
  br i1 %29, label %30, label %35, !dbg !627

; <label>:30:                                     ; preds = %27
  %31 = load %struct.ipset_session*, %struct.ipset_session** %10, align 8, !dbg !628
  %32 = bitcast %struct.ipset_session* %31 to i8*, !dbg !628
  %33 = load i8*, i8** %6, align 8, !dbg !630
  %34 = call zeroext i1 @has_ipset_setname(i8* %32, i8* %33), !dbg !631
  br i1 %34, label %39, label %35, !dbg !632

; <label>:35:                                     ; preds = %30, %27
  %36 = load %struct.ipset_session*, %struct.ipset_session** %10, align 8, !dbg !633
  %37 = load i8*, i8** %6, align 8, !dbg !634
  %38 = call zeroext i1 @ipset_create(%struct.ipset_session* %36, i8* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i8 zeroext 2), !dbg !635
  br label %39, !dbg !635

; <label>:39:                                     ; preds = %35, %30
  br label %40, !dbg !636

; <label>:40:                                     ; preds = %39, %24
  %41 = load i8, i8* @block_ipv6, align 1, !dbg !637
  %42 = trunc i8 %41 to i1, !dbg !637
  br i1 %42, label %43, label %68, !dbg !639

; <label>:43:                                     ; preds = %40
  %44 = load i8, i8* %9, align 1, !dbg !640
  %45 = trunc i8 %44 to i1, !dbg !640
  br i1 %45, label %46, label %51, !dbg !643

; <label>:46:                                     ; preds = %43
  %47 = load %struct.ipset_session*, %struct.ipset_session** %10, align 8, !dbg !644
  %48 = bitcast %struct.ipset_session* %47 to i8*, !dbg !644
  %49 = load i8*, i8** %7, align 8, !dbg !646
  %50 = call zeroext i1 @has_ipset_setname(i8* %48, i8* %49), !dbg !647
  br i1 %50, label %55, label %51, !dbg !648

; <label>:51:                                     ; preds = %46, %43
  %52 = load %struct.ipset_session*, %struct.ipset_session** %10, align 8, !dbg !649
  %53 = load i8*, i8** %7, align 8, !dbg !650
  %54 = call zeroext i1 @ipset_create(%struct.ipset_session* %52, i8* %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i8 zeroext 10), !dbg !651
  br label %55, !dbg !651

; <label>:55:                                     ; preds = %51, %46
  %56 = load i8, i8* %9, align 1, !dbg !652
  %57 = trunc i8 %56 to i1, !dbg !652
  br i1 %57, label %58, label %63, !dbg !654

; <label>:58:                                     ; preds = %55
  %59 = load %struct.ipset_session*, %struct.ipset_session** %10, align 8, !dbg !655
  %60 = bitcast %struct.ipset_session* %59 to i8*, !dbg !655
  %61 = load i8*, i8** %8, align 8, !dbg !657
  %62 = call zeroext i1 @has_ipset_setname(i8* %60, i8* %61), !dbg !658
  br i1 %62, label %67, label %63, !dbg !659

; <label>:63:                                     ; preds = %58, %55
  %64 = load %struct.ipset_session*, %struct.ipset_session** %10, align 8, !dbg !660
  %65 = load i8*, i8** %8, align 8, !dbg !662
  %66 = call zeroext i1 @ipset_create(%struct.ipset_session* %64, i8* %65, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0), i8 zeroext 10), !dbg !663
  br label %67, !dbg !664

; <label>:67:                                     ; preds = %63, %58
  br label %68, !dbg !665

; <label>:68:                                     ; preds = %67, %40
  %69 = load i32 (%struct.ipset_session*)*, i32 (%struct.ipset_session*)** @ipset_session_fini_addr, align 8, !dbg !666
  %70 = load %struct.ipset_session*, %struct.ipset_session** %10, align 8, !dbg !667
  %71 = call i32 %69(%struct.ipset_session* %70), !dbg !668
  store i1 true, i1* %5, align 1, !dbg !669
  br label %72, !dbg !669

; <label>:72:                                     ; preds = %68, %16
  %73 = load i1, i1* %5, align 1, !dbg !670
  ret i1 %73, !dbg !670
}

; Function Attrs: nounwind uwtable
define i8* @ipset_session_start() #0 !dbg !671 {
  %1 = load %struct.ipset_session* (i32 (i8*, ...)*)*, %struct.ipset_session* (i32 (i8*, ...)*)** @ipset_session_init_addr, align 8, !dbg !674
  %2 = call %struct.ipset_session* %1(i32 (i8*, ...)* null), !dbg !675
  %3 = bitcast %struct.ipset_session* %2 to i8*, !dbg !675
  ret i8* %3, !dbg !676
}

; Function Attrs: nounwind uwtable
define void @ipset_session_end(i8*) #0 !dbg !677 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ipset_session*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !678, metadata !350), !dbg !679
  call void @llvm.dbg.declare(metadata %struct.ipset_session** %3, metadata !680, metadata !350), !dbg !681
  %4 = load i8*, i8** %2, align 8, !dbg !682
  %5 = bitcast i8* %4 to %struct.ipset_session*, !dbg !682
  store %struct.ipset_session* %5, %struct.ipset_session** %3, align 8, !dbg !681
  %6 = load i32 (%struct.ipset_session*)*, i32 (%struct.ipset_session*)** @ipset_session_fini_addr, align 8, !dbg !683
  %7 = load %struct.ipset_session*, %struct.ipset_session** %3, align 8, !dbg !684
  %8 = call i32 %6(%struct.ipset_session* %7), !dbg !685
  ret void, !dbg !686
}

; Function Attrs: nounwind uwtable
define void @ipset_entry(i8*, i32, %struct._ip_address*) #0 !dbg !687 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._ip_address*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ipset_session*, align 8
  %10 = alloca %struct.in6_addr*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !812, metadata !350), !dbg !813
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !814, metadata !350), !dbg !815
  store %struct._ip_address* %2, %struct._ip_address** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._ip_address** %6, metadata !816, metadata !350), !dbg !817
  call void @llvm.dbg.declare(metadata i8** %7, metadata !818, metadata !350), !dbg !819
  call void @llvm.dbg.declare(metadata i8** %8, metadata !820, metadata !350), !dbg !821
  store i8* null, i8** %8, align 8, !dbg !821
  call void @llvm.dbg.declare(metadata %struct.ipset_session** %9, metadata !822, metadata !350), !dbg !823
  %12 = load i8*, i8** %4, align 8, !dbg !824
  %13 = bitcast i8* %12 to %struct.ipset_session*, !dbg !824
  store %struct.ipset_session* %13, %struct.ipset_session** %9, align 8, !dbg !823
  %14 = load %struct._ip_address*, %struct._ip_address** %6, align 8, !dbg !825
  %15 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %14, i32 0, i32 0, !dbg !827
  %16 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %15, i32 0, i32 0, !dbg !828
  %17 = load i8, i8* %16, align 8, !dbg !828
  %18 = zext i8 %17 to i32, !dbg !825
  %19 = icmp eq i32 %18, 2, !dbg !829
  br i1 %19, label %20, label %28, !dbg !830

; <label>:20:                                     ; preds = %3
  %21 = load i8, i8* @block_ipv4, align 1, !dbg !831
  %22 = trunc i8 %21 to i1, !dbg !831
  br i1 %22, label %24, label %23, !dbg !834

; <label>:23:                                     ; preds = %20
  br label %71, !dbg !835

; <label>:24:                                     ; preds = %20
  %25 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !836
  %26 = getelementptr inbounds %struct._data, %struct._data* %25, i32 0, i32 38, !dbg !837
  %27 = getelementptr inbounds [32 x i8], [32 x i8]* %26, i32 0, i32 0, !dbg !836
  store i8* %27, i8** %7, align 8, !dbg !838
  br label %62, !dbg !839

; <label>:28:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata %struct.in6_addr** %10, metadata !840, metadata !350), !dbg !843
  %29 = load %struct._ip_address*, %struct._ip_address** %6, align 8, !dbg !844
  %30 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %29, i32 0, i32 1, !dbg !845
  %31 = bitcast %union.anon.2* %30 to %struct.in6_addr*, !dbg !846
  store %struct.in6_addr* %31, %struct.in6_addr** %10, align 8, !dbg !843
  %32 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8, !dbg !847
  %33 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %32, i32 0, i32 0, !dbg !846
  %34 = bitcast %union.anon* %33 to [4 x i32]*, !dbg !848
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i64 0, i64 0, !dbg !847
  %36 = load i32, i32* %35, align 4, !dbg !847
  %37 = call i32 @htonl(i32 -4194304) #1, !dbg !849
  %38 = and i32 %36, %37, !dbg !850
  %39 = call i32 @htonl(i32 -25165824) #1, !dbg !851
  %40 = icmp eq i32 %38, %39, !dbg !853
  %41 = zext i1 %40 to i32, !dbg !853
  store i32 %41, i32* %11, align 4, !dbg !854
  %42 = load i32, i32* %11, align 4, !dbg !855
  %43 = icmp ne i32 %42, 0, !dbg !856
  br i1 %43, label %44, label %57, !dbg !857

; <label>:44:                                     ; preds = %28
  %45 = load i8, i8* @block_ipv6, align 1, !dbg !858
  %46 = trunc i8 %45 to i1, !dbg !858
  br i1 %46, label %48, label %47, !dbg !861

; <label>:47:                                     ; preds = %44
  br label %71, !dbg !862

; <label>:48:                                     ; preds = %44
  %49 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !863
  %50 = getelementptr inbounds %struct._data, %struct._data* %49, i32 0, i32 40, !dbg !864
  %51 = getelementptr inbounds [32 x i8], [32 x i8]* %50, i32 0, i32 0, !dbg !863
  store i8* %51, i8** %7, align 8, !dbg !865
  %52 = load %struct._ip_address*, %struct._ip_address** %6, align 8, !dbg !866
  %53 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %52, i32 0, i32 2, !dbg !867
  %54 = load %struct._interface*, %struct._interface** %53, align 8, !dbg !867
  %55 = getelementptr inbounds %struct._interface, %struct._interface* %54, i32 0, i32 0, !dbg !868
  %56 = getelementptr inbounds [16 x i8], [16 x i8]* %55, i32 0, i32 0, !dbg !866
  store i8* %56, i8** %8, align 8, !dbg !869
  br label %61, !dbg !870

; <label>:57:                                     ; preds = %28
  %58 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !871
  %59 = getelementptr inbounds %struct._data, %struct._data* %58, i32 0, i32 39, !dbg !872
  %60 = getelementptr inbounds [32 x i8], [32 x i8]* %59, i32 0, i32 0, !dbg !871
  store i8* %60, i8** %7, align 8, !dbg !873
  br label %61

; <label>:61:                                     ; preds = %57, %48
  br label %62

; <label>:62:                                     ; preds = %61, %24
  %63 = load %struct.ipset_session*, %struct.ipset_session** %9, align 8, !dbg !874
  %64 = load i32, i32* %5, align 4, !dbg !875
  %65 = icmp eq i32 %64, 0, !dbg !876
  %66 = select i1 %65, i32 10, i32 9, !dbg !877
  %67 = load i8*, i8** %7, align 8, !dbg !878
  %68 = load %struct._ip_address*, %struct._ip_address** %6, align 8, !dbg !879
  %69 = load i8*, i8** %8, align 8, !dbg !880
  %70 = call zeroext i1 @do_ipset_cmd(%struct.ipset_session* %63, i32 %66, i8* %67, %struct._ip_address* %68, i32 0, i8* %69), !dbg !881
  br label %71, !dbg !882

; <label>:71:                                     ; preds = %62, %47, %23
  ret void, !dbg !883
}

; Function Attrs: nounwind readnone
declare i32 @htonl(i32) #5

; Function Attrs: nounwind uwtable
define internal zeroext i1 @do_ipset_cmd(%struct.ipset_session*, i32, i8*, %struct._ip_address*, i32, i8*) #0 !dbg !885 {
  %7 = alloca i1, align 1
  %8 = alloca %struct.ipset_session*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct._ip_address*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.ipset_type*, align 8
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  store %struct.ipset_session* %0, %struct.ipset_session** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.ipset_session** %8, metadata !888, metadata !350), !dbg !889
  store i32 %1, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !890, metadata !350), !dbg !891
  store i8* %2, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !892, metadata !350), !dbg !893
  store %struct._ip_address* %3, %struct._ip_address** %11, align 8
  call void @llvm.dbg.declare(metadata %struct._ip_address** %11, metadata !894, metadata !350), !dbg !895
  store i32 %4, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !896, metadata !350), !dbg !897
  store i8* %5, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !898, metadata !350), !dbg !899
  call void @llvm.dbg.declare(metadata %struct.ipset_type** %14, metadata !900, metadata !350), !dbg !901
  call void @llvm.dbg.declare(metadata i8* %15, metadata !902, metadata !350), !dbg !903
  call void @llvm.dbg.declare(metadata i32* %16, metadata !904, metadata !350), !dbg !905
  %17 = load i32 (%struct.ipset_data*, i32, i8*)*, i32 (%struct.ipset_data*, i32, i8*)** @ipset_data_set_addr, align 8, !dbg !906
  %18 = load %struct.ipset_data* (%struct.ipset_session*)*, %struct.ipset_data* (%struct.ipset_session*)** @ipset_session_data_addr, align 8, !dbg !907
  %19 = load %struct.ipset_session*, %struct.ipset_session** %8, align 8, !dbg !908
  %20 = call %struct.ipset_data* %18(%struct.ipset_session* %19), !dbg !908
  %21 = load i8*, i8** %10, align 8, !dbg !908
  %22 = call i32 %17(%struct.ipset_data* %20, i32 1, i8* %21), !dbg !909
  %23 = load %struct.ipset_type* (%struct.ipset_session*, i32)*, %struct.ipset_type* (%struct.ipset_session*, i32)** @ipset_type_get_addr, align 8, !dbg !911
  %24 = load %struct.ipset_session*, %struct.ipset_session** %8, align 8, !dbg !912
  %25 = load i32, i32* %9, align 4, !dbg !913
  %26 = call %struct.ipset_type* %23(%struct.ipset_session* %24, i32 %25), !dbg !914
  store %struct.ipset_type* %26, %struct.ipset_type** %14, align 8, !dbg !915
  %27 = load %struct.ipset_type*, %struct.ipset_type** %14, align 8, !dbg !916
  %28 = icmp eq %struct.ipset_type* %27, null, !dbg !918
  br i1 %28, label %29, label %30, !dbg !919

; <label>:29:                                     ; preds = %6
  store i1 false, i1* %7, align 1, !dbg !920
  br label %78, !dbg !920

; <label>:30:                                     ; preds = %6
  %31 = load %struct._ip_address*, %struct._ip_address** %11, align 8, !dbg !922
  %32 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %31, i32 0, i32 0, !dbg !923
  %33 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %32, i32 0, i32 0, !dbg !924
  %34 = load i8, i8* %33, align 8, !dbg !924
  %35 = zext i8 %34 to i32, !dbg !922
  %36 = icmp eq i32 %35, 2, !dbg !925
  %37 = select i1 %36, i32 2, i32 10, !dbg !926
  %38 = trunc i32 %37 to i8, !dbg !926
  store i8 %38, i8* %15, align 1, !dbg !927
  %39 = load i32 (%struct.ipset_data*, i32, i8*)*, i32 (%struct.ipset_data*, i32, i8*)** @ipset_data_set_addr, align 8, !dbg !928
  %40 = load %struct.ipset_data* (%struct.ipset_session*)*, %struct.ipset_data* (%struct.ipset_session*)** @ipset_session_data_addr, align 8, !dbg !929
  %41 = load %struct.ipset_session*, %struct.ipset_session** %8, align 8, !dbg !930
  %42 = call %struct.ipset_data* %40(%struct.ipset_session* %41), !dbg !930
  %43 = call i32 %39(%struct.ipset_data* %42, i32 3, i8* %15), !dbg !931
  %44 = load i32 (%struct.ipset_data*, i32, i8*)*, i32 (%struct.ipset_data*, i32, i8*)** @ipset_data_set_addr, align 8, !dbg !932
  %45 = load %struct.ipset_data* (%struct.ipset_session*)*, %struct.ipset_data* (%struct.ipset_session*)** @ipset_session_data_addr, align 8, !dbg !933
  %46 = load %struct.ipset_session*, %struct.ipset_session** %8, align 8, !dbg !934
  %47 = call %struct.ipset_data* %45(%struct.ipset_session* %46), !dbg !934
  %48 = load %struct._ip_address*, %struct._ip_address** %11, align 8, !dbg !935
  %49 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %48, i32 0, i32 1, !dbg !936
  %50 = bitcast %union.anon.2* %49 to i8*, !dbg !934
  %51 = call i32 %44(%struct.ipset_data* %47, i32 4, i8* %50), !dbg !937
  %52 = load i32, i32* %12, align 4, !dbg !938
  %53 = icmp ne i32 %52, 0, !dbg !938
  br i1 %53, label %54, label %61, !dbg !940

; <label>:54:                                     ; preds = %30
  %55 = load i32 (%struct.ipset_data*, i32, i8*)*, i32 (%struct.ipset_data*, i32, i8*)** @ipset_data_set_addr, align 8, !dbg !941
  %56 = load %struct.ipset_data* (%struct.ipset_session*)*, %struct.ipset_data* (%struct.ipset_session*)** @ipset_session_data_addr, align 8, !dbg !942
  %57 = load %struct.ipset_session*, %struct.ipset_session** %8, align 8, !dbg !943
  %58 = call %struct.ipset_data* %56(%struct.ipset_session* %57), !dbg !943
  %59 = bitcast i32* %12 to i8*, !dbg !943
  %60 = call i32 %55(%struct.ipset_data* %58, i32 10, i8* %59), !dbg !944
  br label %61, !dbg !946

; <label>:61:                                     ; preds = %54, %30
  %62 = load i8*, i8** %13, align 8, !dbg !947
  %63 = icmp ne i8* %62, null, !dbg !947
  br i1 %63, label %64, label %71, !dbg !949

; <label>:64:                                     ; preds = %61
  %65 = load i32 (%struct.ipset_data*, i32, i8*)*, i32 (%struct.ipset_data*, i32, i8*)** @ipset_data_set_addr, align 8, !dbg !950
  %66 = load %struct.ipset_data* (%struct.ipset_session*)*, %struct.ipset_data* (%struct.ipset_session*)** @ipset_session_data_addr, align 8, !dbg !951
  %67 = load %struct.ipset_session*, %struct.ipset_session** %8, align 8, !dbg !952
  %68 = call %struct.ipset_data* %66(%struct.ipset_session* %67), !dbg !952
  %69 = load i8*, i8** %13, align 8, !dbg !952
  %70 = call i32 %65(%struct.ipset_data* %68, i32 30, i8* %69), !dbg !953
  br label %71, !dbg !955

; <label>:71:                                     ; preds = %64, %61
  %72 = load i32 (%struct.ipset_session*, i32, i32)*, i32 (%struct.ipset_session*, i32, i32)** @ipset_cmd_addr, align 8, !dbg !956
  %73 = load %struct.ipset_session*, %struct.ipset_session** %8, align 8, !dbg !957
  %74 = load i32, i32* %9, align 4, !dbg !958
  %75 = call i32 %72(%struct.ipset_session* %73, i32 %74, i32 0), !dbg !959
  store i32 %75, i32* %16, align 4, !dbg !960
  %76 = load i32, i32* %16, align 4, !dbg !961
  %77 = icmp eq i32 %76, 0, !dbg !962
  store i1 %77, i1* %7, align 1, !dbg !963
  br label %78, !dbg !963

; <label>:78:                                     ; preds = %71, %29
  %79 = load i1, i1* %7, align 1, !dbg !964
  ret i1 %79, !dbg !964
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #3

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #2

declare i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define internal zeroext i1 @ipset_create(%struct.ipset_session*, i8*, i8*, i8 zeroext) #0 !dbg !965 {
  %5 = alloca i1, align 1
  %6 = alloca %struct.ipset_session*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca %struct.ipset_type*, align 8
  %11 = alloca i32, align 4
  store %struct.ipset_session* %0, %struct.ipset_session** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.ipset_session** %6, metadata !968, metadata !350), !dbg !969
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !970, metadata !350), !dbg !971
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !972, metadata !350), !dbg !973
  store i8 %3, i8* %9, align 1
  call void @llvm.dbg.declare(metadata i8* %9, metadata !974, metadata !350), !dbg !975
  call void @llvm.dbg.declare(metadata %struct.ipset_type** %10, metadata !976, metadata !350), !dbg !977
  call void @llvm.dbg.declare(metadata i32* %11, metadata !978, metadata !350), !dbg !979
  %12 = load i32 (%struct.ipset_data*, i32, i8*)*, i32 (%struct.ipset_data*, i32, i8*)** @ipset_data_set_addr, align 8, !dbg !980
  %13 = load %struct.ipset_data* (%struct.ipset_session*)*, %struct.ipset_data* (%struct.ipset_session*)** @ipset_session_data_addr, align 8, !dbg !981
  %14 = load %struct.ipset_session*, %struct.ipset_session** %6, align 8, !dbg !982
  %15 = call %struct.ipset_data* %13(%struct.ipset_session* %14), !dbg !982
  %16 = load i8*, i8** %7, align 8, !dbg !982
  %17 = call i32 %12(%struct.ipset_data* %15, i32 1, i8* %16), !dbg !983
  %18 = load i32 (%struct.ipset_data*, i32, i8*)*, i32 (%struct.ipset_data*, i32, i8*)** @ipset_data_set_addr, align 8, !dbg !985
  %19 = load %struct.ipset_data* (%struct.ipset_session*)*, %struct.ipset_data* (%struct.ipset_session*)** @ipset_session_data_addr, align 8, !dbg !986
  %20 = load %struct.ipset_session*, %struct.ipset_session** %6, align 8, !dbg !987
  %21 = call %struct.ipset_data* %19(%struct.ipset_session* %20), !dbg !987
  %22 = load i8*, i8** %8, align 8, !dbg !987
  %23 = call i32 %18(%struct.ipset_data* %21, i32 2, i8* %22), !dbg !988
  %24 = load %struct.ipset_type* (%struct.ipset_session*, i32)*, %struct.ipset_type* (%struct.ipset_session*, i32)** @ipset_type_get_addr, align 8, !dbg !989
  %25 = load %struct.ipset_session*, %struct.ipset_session** %6, align 8, !dbg !990
  %26 = call %struct.ipset_type* %24(%struct.ipset_session* %25, i32 2), !dbg !991
  store %struct.ipset_type* %26, %struct.ipset_type** %10, align 8, !dbg !992
  %27 = load %struct.ipset_type*, %struct.ipset_type** %10, align 8, !dbg !993
  %28 = icmp eq %struct.ipset_type* %27, null, !dbg !995
  br i1 %28, label %29, label %30, !dbg !996

; <label>:29:                                     ; preds = %4
  store i1 false, i1* %5, align 1, !dbg !997
  br label %48, !dbg !997

; <label>:30:                                     ; preds = %4
  %31 = load i32 (%struct.ipset_data*, i32, i8*)*, i32 (%struct.ipset_data*, i32, i8*)** @ipset_data_set_addr, align 8, !dbg !998
  %32 = load %struct.ipset_data* (%struct.ipset_session*)*, %struct.ipset_data* (%struct.ipset_session*)** @ipset_session_data_addr, align 8, !dbg !999
  %33 = load %struct.ipset_session*, %struct.ipset_session** %6, align 8, !dbg !1000
  %34 = call %struct.ipset_data* %32(%struct.ipset_session* %33), !dbg !1000
  %35 = load %struct.ipset_type*, %struct.ipset_type** %10, align 8, !dbg !1000
  %36 = bitcast %struct.ipset_type* %35 to i8*, !dbg !1000
  %37 = call i32 %31(%struct.ipset_data* %34, i32 51, i8* %36), !dbg !1001
  %38 = load i32 (%struct.ipset_data*, i32, i8*)*, i32 (%struct.ipset_data*, i32, i8*)** @ipset_data_set_addr, align 8, !dbg !1002
  %39 = load %struct.ipset_data* (%struct.ipset_session*)*, %struct.ipset_data* (%struct.ipset_session*)** @ipset_session_data_addr, align 8, !dbg !1003
  %40 = load %struct.ipset_session*, %struct.ipset_session** %6, align 8, !dbg !1004
  %41 = call %struct.ipset_data* %39(%struct.ipset_session* %40), !dbg !1004
  %42 = call i32 %38(%struct.ipset_data* %41, i32 3, i8* %9), !dbg !1005
  %43 = load i32 (%struct.ipset_session*, i32, i32)*, i32 (%struct.ipset_session*, i32, i32)** @ipset_cmd_addr, align 8, !dbg !1006
  %44 = load %struct.ipset_session*, %struct.ipset_session** %6, align 8, !dbg !1007
  %45 = call i32 %43(%struct.ipset_session* %44, i32 2, i32 0), !dbg !1008
  store i32 %45, i32* %11, align 4, !dbg !1009
  %46 = load i32, i32* %11, align 4, !dbg !1010
  %47 = icmp eq i32 %46, 0, !dbg !1011
  store i1 %47, i1* %5, align 1, !dbg !1012
  br label %48, !dbg !1012

; <label>:48:                                     ; preds = %30, %29
  %49 = load i1, i1* %5, align 1, !dbg !1013
  ret i1 %49, !dbg !1013
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!342, !343}
!llvm.ident = !{!344}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !112, globals: !141)
!1 = !DIFile(filename: "[inter]keepalived--vrrp--vrrp_ipset.o.i", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!2 = !{!3, !61, !85, !100}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ipset_opt", file: !4, line: 14, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/libipset/data.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60}
!6 = !DIEnumerator(name: "IPSET_OPT_NONE", value: 0)
!7 = !DIEnumerator(name: "IPSET_SETNAME", value: 1)
!8 = !DIEnumerator(name: "IPSET_OPT_TYPENAME", value: 2)
!9 = !DIEnumerator(name: "IPSET_OPT_FAMILY", value: 3)
!10 = !DIEnumerator(name: "IPSET_OPT_IP", value: 4)
!11 = !DIEnumerator(name: "IPSET_OPT_IP_FROM", value: 4)
!12 = !DIEnumerator(name: "IPSET_OPT_IP_TO", value: 5)
!13 = !DIEnumerator(name: "IPSET_OPT_CIDR", value: 6)
!14 = !DIEnumerator(name: "IPSET_OPT_MARK", value: 7)
!15 = !DIEnumerator(name: "IPSET_OPT_PORT", value: 8)
!16 = !DIEnumerator(name: "IPSET_OPT_PORT_FROM", value: 8)
!17 = !DIEnumerator(name: "IPSET_OPT_PORT_TO", value: 9)
!18 = !DIEnumerator(name: "IPSET_OPT_TIMEOUT", value: 10)
!19 = !DIEnumerator(name: "IPSET_OPT_GC", value: 11)
!20 = !DIEnumerator(name: "IPSET_OPT_HASHSIZE", value: 12)
!21 = !DIEnumerator(name: "IPSET_OPT_MAXELEM", value: 13)
!22 = !DIEnumerator(name: "IPSET_OPT_MARKMASK", value: 14)
!23 = !DIEnumerator(name: "IPSET_OPT_NETMASK", value: 15)
!24 = !DIEnumerator(name: "IPSET_OPT_PROBES", value: 16)
!25 = !DIEnumerator(name: "IPSET_OPT_RESIZE", value: 17)
!26 = !DIEnumerator(name: "IPSET_OPT_SIZE", value: 18)
!27 = !DIEnumerator(name: "IPSET_OPT_FORCEADD", value: 19)
!28 = !DIEnumerator(name: "IPSET_OPT_ELEMENTS", value: 20)
!29 = !DIEnumerator(name: "IPSET_OPT_REFERENCES", value: 21)
!30 = !DIEnumerator(name: "IPSET_OPT_MEMSIZE", value: 22)
!31 = !DIEnumerator(name: "IPSET_OPT_ETHER", value: 23)
!32 = !DIEnumerator(name: "IPSET_OPT_NAME", value: 24)
!33 = !DIEnumerator(name: "IPSET_OPT_NAMEREF", value: 25)
!34 = !DIEnumerator(name: "IPSET_OPT_IP2", value: 26)
!35 = !DIEnumerator(name: "IPSET_OPT_CIDR2", value: 27)
!36 = !DIEnumerator(name: "IPSET_OPT_IP2_TO", value: 28)
!37 = !DIEnumerator(name: "IPSET_OPT_PROTO", value: 29)
!38 = !DIEnumerator(name: "IPSET_OPT_IFACE", value: 30)
!39 = !DIEnumerator(name: "IPSET_OPT_SETNAME2", value: 31)
!40 = !DIEnumerator(name: "IPSET_OPT_EXIST", value: 32)
!41 = !DIEnumerator(name: "IPSET_OPT_BEFORE", value: 33)
!42 = !DIEnumerator(name: "IPSET_OPT_PHYSDEV", value: 34)
!43 = !DIEnumerator(name: "IPSET_OPT_NOMATCH", value: 35)
!44 = !DIEnumerator(name: "IPSET_OPT_COUNTERS", value: 36)
!45 = !DIEnumerator(name: "IPSET_OPT_PACKETS", value: 37)
!46 = !DIEnumerator(name: "IPSET_OPT_BYTES", value: 38)
!47 = !DIEnumerator(name: "IPSET_OPT_CREATE_COMMENT", value: 39)
!48 = !DIEnumerator(name: "IPSET_OPT_ADT_COMMENT", value: 40)
!49 = !DIEnumerator(name: "IPSET_OPT_SKBINFO", value: 41)
!50 = !DIEnumerator(name: "IPSET_OPT_SKBMARK", value: 42)
!51 = !DIEnumerator(name: "IPSET_OPT_SKBPRIO", value: 43)
!52 = !DIEnumerator(name: "IPSET_OPT_SKBQUEUE", value: 44)
!53 = !DIEnumerator(name: "IPSET_OPT_FLAGS", value: 48)
!54 = !DIEnumerator(name: "IPSET_OPT_CADT_FLAGS", value: 49)
!55 = !DIEnumerator(name: "IPSET_OPT_ELEM", value: 50)
!56 = !DIEnumerator(name: "IPSET_OPT_TYPE", value: 51)
!57 = !DIEnumerator(name: "IPSET_OPT_LINENO", value: 52)
!58 = !DIEnumerator(name: "IPSET_OPT_REVISION", value: 53)
!59 = !DIEnumerator(name: "IPSET_OPT_REVISION_MIN", value: 54)
!60 = !DIEnumerator(name: "IPSET_OPT_MAX", value: 55)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ipset_cmd", file: !62, line: 25, size: 32, align: 32, elements: !63)
!62 = !DIFile(filename: "/usr/include/linux/netfilter/ipset/ip_set.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!63 = !{!64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84}
!64 = !DIEnumerator(name: "IPSET_CMD_NONE", value: 0)
!65 = !DIEnumerator(name: "IPSET_CMD_PROTOCOL", value: 1)
!66 = !DIEnumerator(name: "IPSET_CMD_CREATE", value: 2)
!67 = !DIEnumerator(name: "IPSET_CMD_DESTROY", value: 3)
!68 = !DIEnumerator(name: "IPSET_CMD_FLUSH", value: 4)
!69 = !DIEnumerator(name: "IPSET_CMD_RENAME", value: 5)
!70 = !DIEnumerator(name: "IPSET_CMD_SWAP", value: 6)
!71 = !DIEnumerator(name: "IPSET_CMD_LIST", value: 7)
!72 = !DIEnumerator(name: "IPSET_CMD_SAVE", value: 8)
!73 = !DIEnumerator(name: "IPSET_CMD_ADD", value: 9)
!74 = !DIEnumerator(name: "IPSET_CMD_DEL", value: 10)
!75 = !DIEnumerator(name: "IPSET_CMD_TEST", value: 11)
!76 = !DIEnumerator(name: "IPSET_CMD_HEADER", value: 12)
!77 = !DIEnumerator(name: "IPSET_CMD_TYPE", value: 13)
!78 = !DIEnumerator(name: "IPSET_MSG_MAX", value: 14)
!79 = !DIEnumerator(name: "IPSET_CMD_RESTORE", value: 14)
!80 = !DIEnumerator(name: "IPSET_CMD_HELP", value: 15)
!81 = !DIEnumerator(name: "IPSET_CMD_VERSION", value: 16)
!82 = !DIEnumerator(name: "IPSET_CMD_QUIT", value: 17)
!83 = !DIEnumerator(name: "IPSET_CMD_MAX", value: 18)
!84 = !DIEnumerator(name: "IPSET_CMD_COMMIT", value: 18)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ipset_envopt", file: !86, line: 67, size: 32, align: 32, elements: !87)
!86 = !DIFile(filename: "/usr/include/libipset/session.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!87 = !{!88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99}
!88 = !DIEnumerator(name: "IPSET_ENV_BIT_SORTED", value: 0)
!89 = !DIEnumerator(name: "IPSET_ENV_SORTED", value: 1)
!90 = !DIEnumerator(name: "IPSET_ENV_BIT_QUIET", value: 1)
!91 = !DIEnumerator(name: "IPSET_ENV_QUIET", value: 2)
!92 = !DIEnumerator(name: "IPSET_ENV_BIT_RESOLVE", value: 2)
!93 = !DIEnumerator(name: "IPSET_ENV_RESOLVE", value: 4)
!94 = !DIEnumerator(name: "IPSET_ENV_BIT_EXIST", value: 3)
!95 = !DIEnumerator(name: "IPSET_ENV_EXIST", value: 8)
!96 = !DIEnumerator(name: "IPSET_ENV_BIT_LIST_SETNAME", value: 4)
!97 = !DIEnumerator(name: "IPSET_ENV_LIST_SETNAME", value: 16)
!98 = !DIEnumerator(name: "IPSET_ENV_BIT_LIST_HEADER", value: 5)
!99 = !DIEnumerator(name: "IPSET_ENV_LIST_HEADER", value: 32)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !101, line: 58, size: 32, align: 32, elements: !102)
!101 = !DIFile(filename: "/usr/include/linux/netfilter.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!102 = !{!103, !104, !105, !106, !107, !108, !109, !110, !111}
!103 = !DIEnumerator(name: "NFPROTO_UNSPEC", value: 0)
!104 = !DIEnumerator(name: "NFPROTO_INET", value: 1)
!105 = !DIEnumerator(name: "NFPROTO_IPV4", value: 2)
!106 = !DIEnumerator(name: "NFPROTO_ARP", value: 3)
!107 = !DIEnumerator(name: "NFPROTO_NETDEV", value: 5)
!108 = !DIEnumerator(name: "NFPROTO_BRIDGE", value: 7)
!109 = !DIEnumerator(name: "NFPROTO_IPV6", value: 10)
!110 = !DIEnumerator(name: "NFPROTO_DECNET", value: 12)
!111 = !DIEnumerator(name: "NFPROTO_NUMPROTO", value: 13)
!112 = !{!113, !140}
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64, align: 64)
!114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !116, line: 211, size: 128, align: 32, elements: !117)
!116 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!117 = !{!118}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !115, file: !116, line: 220, baseType: !119, size: 128, align: 32)
!119 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !115, file: !116, line: 213, size: 128, align: 32, elements: !120)
!120 = !{!121, !128, !134}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !119, file: !116, line: 215, baseType: !122, size: 128, align: 8)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 128, align: 8, elements: !126)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !124, line: 48, baseType: !125)
!124 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!125 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!126 = !{!127}
!127 = !DISubrange(count: 16)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !119, file: !116, line: 217, baseType: !129, size: 128, align: 16)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 128, align: 16, elements: !132)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !124, line: 49, baseType: !131)
!131 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!132 = !{!133}
!133 = !DISubrange(count: 8)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !119, file: !116, line: 218, baseType: !135, size: 128, align: 32)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 128, align: 32, elements: !138)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !124, line: 51, baseType: !137)
!137 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!138 = !{!139}
!139 = !DISubrange(count: 4)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!141 = !{!142, !227, !240, !244, !252, !256, !260, !330, !336, !340, !341}
!142 = distinct !DIGlobalVariable(name: "garp_delay", scope: !0, file: !143, line: 150, type: !144, isLocal: false, isDefinition: true, variable: %struct._list** @garp_delay)
!143 = !DIFile(filename: "./../include/vrrp_if.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !145, line: 31, baseType: !146)
!145 = !DIFile(filename: "../../lib/list.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64, align: 64)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_list", file: !145, line: 39, size: 320, align: 64, elements: !148)
!148 = !{!149, !156, !157, !158, !162}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !147, file: !145, line: 40, baseType: !150, size: 64, align: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64, align: 64)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_element", file: !145, line: 33, size: 192, align: 64, elements: !152)
!152 = !{!153, !154, !155}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !151, file: !145, line: 34, baseType: !150, size: 64, align: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !151, file: !145, line: 35, baseType: !150, size: 64, align: 64, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !151, file: !145, line: 36, baseType: !140, size: 64, align: 64, offset: 128)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !147, file: !145, line: 41, baseType: !150, size: 64, align: 64, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !147, file: !145, line: 42, baseType: !137, size: 32, align: 32, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !147, file: !145, line: 43, baseType: !159, size: 64, align: 64, offset: 192)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64, align: 64)
!160 = !DISubroutineType(types: !161)
!161 = !{null, !140}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "dump", scope: !147, file: !145, line: 44, baseType: !163, size: 64, align: 64, offset: 256)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64, align: 64)
!164 = !DISubroutineType(types: !165)
!165 = !{null, !166, !140}
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64, align: 64)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !168, line: 48, baseType: !169)
!168 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !170, line: 241, size: 1728, align: 64, elements: !171)
!170 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!171 = !{!172, !174, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !195, !196, !197, !198, !202, !203, !205, !209, !212, !214, !215, !216, !217, !218, !222, !223}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !169, file: !170, line: 242, baseType: !173, size: 32, align: 32)
!173 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !169, file: !170, line: 247, baseType: !175, size: 64, align: 64, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64, align: 64)
!176 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !169, file: !170, line: 248, baseType: !175, size: 64, align: 64, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !169, file: !170, line: 249, baseType: !175, size: 64, align: 64, offset: 192)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !169, file: !170, line: 250, baseType: !175, size: 64, align: 64, offset: 256)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !169, file: !170, line: 251, baseType: !175, size: 64, align: 64, offset: 320)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !169, file: !170, line: 252, baseType: !175, size: 64, align: 64, offset: 384)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !169, file: !170, line: 253, baseType: !175, size: 64, align: 64, offset: 448)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !169, file: !170, line: 254, baseType: !175, size: 64, align: 64, offset: 512)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !169, file: !170, line: 256, baseType: !175, size: 64, align: 64, offset: 576)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !169, file: !170, line: 257, baseType: !175, size: 64, align: 64, offset: 640)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !169, file: !170, line: 258, baseType: !175, size: 64, align: 64, offset: 704)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !169, file: !170, line: 260, baseType: !188, size: 64, align: 64, offset: 768)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64, align: 64)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !170, line: 156, size: 192, align: 64, elements: !190)
!190 = !{!191, !192, !194}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !189, file: !170, line: 157, baseType: !188, size: 64, align: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !189, file: !170, line: 158, baseType: !193, size: 64, align: 64, offset: 64)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64, align: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !189, file: !170, line: 162, baseType: !173, size: 32, align: 32, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !169, file: !170, line: 262, baseType: !193, size: 64, align: 64, offset: 832)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !169, file: !170, line: 264, baseType: !173, size: 32, align: 32, offset: 896)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !169, file: !170, line: 268, baseType: !173, size: 32, align: 32, offset: 928)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !169, file: !170, line: 270, baseType: !199, size: 64, align: 64, offset: 960)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !200, line: 131, baseType: !201)
!200 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!201 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !169, file: !170, line: 274, baseType: !131, size: 16, align: 16, offset: 1024)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !169, file: !170, line: 275, baseType: !204, size: 8, align: 8, offset: 1040)
!204 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !169, file: !170, line: 276, baseType: !206, size: 8, align: 8, offset: 1048)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 8, align: 8, elements: !207)
!207 = !{!208}
!208 = !DISubrange(count: 1)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !169, file: !170, line: 280, baseType: !210, size: 64, align: 64, offset: 1088)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !170, line: 150, baseType: null)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !169, file: !170, line: 289, baseType: !213, size: 64, align: 64, offset: 1152)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !200, line: 132, baseType: !201)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !169, file: !170, line: 297, baseType: !140, size: 64, align: 64, offset: 1216)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !169, file: !170, line: 298, baseType: !140, size: 64, align: 64, offset: 1280)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !169, file: !170, line: 299, baseType: !140, size: 64, align: 64, offset: 1344)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !169, file: !170, line: 300, baseType: !140, size: 64, align: 64, offset: 1408)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !169, file: !170, line: 302, baseType: !219, size: 64, align: 64, offset: 1472)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !220, line: 216, baseType: !221)
!220 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!221 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !169, file: !170, line: 303, baseType: !173, size: 32, align: 32, offset: 1536)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !169, file: !170, line: 305, baseType: !224, size: 160, align: 8, offset: 1568)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 160, align: 8, elements: !225)
!225 = !{!226}
!226 = !DISubrange(count: 20)
!227 = distinct !DIGlobalVariable(name: "ipset_session_init_addr", scope: !0, file: !228, line: 63, type: !229, isLocal: false, isDefinition: true, variable: %struct.ipset_session* (i32 (i8*, ...)*)** @ipset_session_init_addr)
!228 = !DIFile(filename: "vrrp_ipset.c", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64, align: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{!232, !234}
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipset_session", file: !86, line: 20, flags: DIFlagFwdDecl)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "ipset_outfn", file: !86, line: 101, baseType: !235)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64, align: 64)
!236 = !DISubroutineType(types: !237)
!237 = !{!173, !238, null}
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64, align: 64)
!239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !176)
!240 = distinct !DIGlobalVariable(name: "ipset_session_fini_addr", scope: !0, file: !228, line: 64, type: !241, isLocal: false, isDefinition: true, variable: i32 (%struct.ipset_session*)** @ipset_session_fini_addr)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64, align: 64)
!242 = !DISubroutineType(types: !243)
!243 = !{!173, !232}
!244 = distinct !DIGlobalVariable(name: "ipset_session_data_addr", scope: !0, file: !228, line: 65, type: !245, isLocal: false, isDefinition: true, variable: %struct.ipset_data* (%struct.ipset_session*)** @ipset_session_data_addr)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64, align: 64)
!246 = !DISubroutineType(types: !247)
!247 = !{!248, !250}
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64, align: 64)
!249 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipset_data", file: !86, line: 21, flags: DIFlagFwdDecl)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64, align: 64)
!251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !233)
!252 = distinct !DIGlobalVariable(name: "ipset_session_error_addr", scope: !0, file: !228, line: 66, type: !253, isLocal: false, isDefinition: true, variable: i8* (%struct.ipset_session*)** @ipset_session_error_addr)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{!238, !250}
!256 = distinct !DIGlobalVariable(name: "ipset_envopt_parse_addr", scope: !0, file: !228, line: 67, type: !257, isLocal: false, isDefinition: true, variable: i32 (%struct.ipset_session*, i32, i8*)** @ipset_envopt_parse_addr)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64, align: 64)
!258 = !DISubroutineType(types: !259)
!259 = !{!173, !232, !173, !238}
!260 = distinct !DIGlobalVariable(name: "ipset_type_get_addr", scope: !0, file: !228, line: 68, type: !261, isLocal: false, isDefinition: true, variable: %struct.ipset_type* (%struct.ipset_session*, i32)** @ipset_type_get_addr)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64, align: 64)
!262 = !DISubroutineType(types: !263)
!263 = !{!264, !232, !61}
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64, align: 64)
!265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !266)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipset_type", file: !267, line: 70, size: 1792, align: 64, elements: !268)
!267 = !DIFile(filename: "/usr/include/libipset/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!268 = !{!269, !270, !271, !272, !273, !276, !278, !299, !300, !314, !317, !318, !319, !323, !324, !326}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !266, file: !267, line: 71, baseType: !238, size: 64, align: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !266, file: !267, line: 72, baseType: !123, size: 8, align: 8, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !266, file: !267, line: 73, baseType: !123, size: 8, align: 8, offset: 72)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "dimension", scope: !266, file: !267, line: 74, baseType: !123, size: 8, align: 8, offset: 80)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_check", scope: !266, file: !267, line: 75, baseType: !274, size: 8, align: 8, offset: 88)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !275, line: 194, baseType: !204)
!275 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!276 = !DIDerivedType(tag: DW_TAG_member, name: "last_elem_optional", scope: !266, file: !267, line: 76, baseType: !277, size: 8, align: 8, offset: 96)
!277 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !266, file: !267, line: 77, baseType: !279, size: 576, align: 64, offset: 128)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !280, size: 576, align: 64, elements: !297)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipset_elem", file: !267, line: 60, size: 192, align: 64, elements: !281)
!281 = !{!282, !288, !296}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "parse", scope: !280, file: !267, line: 61, baseType: !283, size: 64, align: 64)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "ipset_parsefn", file: !284, line: 24, baseType: !285)
!284 = !DIFile(filename: "/usr/include/libipset/parse.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64, align: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{!173, !232, !3, !238}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "print", scope: !280, file: !267, line: 62, baseType: !289, size: 64, align: 64, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "ipset_printfn", file: !290, line: 12, baseType: !291)
!290 = !DIFile(filename: "/usr/include/libipset/print.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64, align: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{!173, !175, !137, !294, !3, !123}
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64, align: 64)
!295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !249)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "opt", scope: !280, file: !267, line: 63, baseType: !3, size: 32, align: 32, offset: 128)
!297 = !{!298}
!298 = !DISubrange(count: 3)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "compat_parse_elem", scope: !266, file: !267, line: 78, baseType: !283, size: 64, align: 64, offset: 704)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !266, file: !267, line: 79, baseType: !301, size: 256, align: 64, offset: 768)
!301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 256, align: 64, elements: !138)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64, align: 64)
!303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !304)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipset_arg", file: !267, line: 44, size: 320, align: 64, elements: !305)
!305 = !{!306, !310, !311, !312, !313}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !304, file: !267, line: 45, baseType: !307, size: 128, align: 64)
!307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, size: 128, align: 64, elements: !308)
!308 = !{!309}
!309 = !DISubrange(count: 2)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !304, file: !267, line: 46, baseType: !173, size: 32, align: 32, offset: 128)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "opt", scope: !304, file: !267, line: 47, baseType: !3, size: 32, align: 32, offset: 160)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "parse", scope: !304, file: !267, line: 48, baseType: !283, size: 64, align: 64, offset: 192)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "print", scope: !304, file: !267, line: 49, baseType: !289, size: 64, align: 64, offset: 256)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "mandatory", scope: !266, file: !267, line: 80, baseType: !315, size: 256, align: 64, offset: 1024)
!315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 256, align: 64, elements: !138)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !124, line: 55, baseType: !221)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !266, file: !267, line: 81, baseType: !315, size: 256, align: 64, offset: 1280)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !266, file: !267, line: 82, baseType: !238, size: 64, align: 64, offset: 1536)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "usagefn", scope: !266, file: !267, line: 83, baseType: !320, size: 64, align: 64, offset: 1600)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64, align: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{null}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !266, file: !267, line: 84, baseType: !238, size: 64, align: 64, offset: 1664)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !266, file: !267, line: 85, baseType: !325, size: 64, align: 64, offset: 1728)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64, align: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !266, file: !267, line: 86, baseType: !327, offset: 1792)
!327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, align: 64, elements: !328)
!328 = !{!329}
!329 = !DISubrange(count: -1)
!330 = distinct !DIGlobalVariable(name: "ipset_data_set_addr", scope: !0, file: !228, line: 69, type: !331, isLocal: false, isDefinition: true, variable: i32 (%struct.ipset_data*, i32, i8*)** @ipset_data_set_addr)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64, align: 64)
!332 = !DISubroutineType(types: !333)
!333 = !{!173, !248, !3, !334}
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64, align: 64)
!335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!336 = distinct !DIGlobalVariable(name: "ipset_cmd_addr", scope: !0, file: !228, line: 70, type: !337, isLocal: false, isDefinition: true, variable: i32 (%struct.ipset_session*, i32, i32)** @ipset_cmd_addr)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64, align: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{!173, !232, !61, !136}
!340 = distinct !DIGlobalVariable(name: "ipset_load_types_addr", scope: !0, file: !228, line: 71, type: !320, isLocal: false, isDefinition: true, variable: void ()** @ipset_load_types_addr)
!341 = distinct !DIGlobalVariable(name: "libipset_handle", scope: !0, file: !228, line: 85, type: !140, isLocal: true, isDefinition: true, variable: i8** @libipset_handle)
!342 = !{i32 2, !"Dwarf Version", i32 4}
!343 = !{i32 2, !"Debug Info Version", i32 3}
!344 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!345 = distinct !DISubprogram(name: "has_ipset_setname", scope: !228, file: !228, line: 152, type: !346, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !348)
!346 = !DISubroutineType(types: !347)
!347 = !{!277, !140, !238}
!348 = !{}
!349 = !DILocalVariable(name: "vsession", arg: 1, scope: !345, file: !228, line: 152, type: !140)
!350 = !DIExpression()
!351 = !DILocation(line: 152, column: 25, scope: !345)
!352 = !DILocalVariable(name: "setname", arg: 2, scope: !345, file: !228, line: 152, type: !238)
!353 = !DILocation(line: 152, column: 47, scope: !345)
!354 = !DILocalVariable(name: "session", scope: !345, file: !228, line: 154, type: !232)
!355 = !DILocation(line: 154, column: 24, scope: !345)
!356 = !DILocation(line: 154, column: 34, scope: !345)
!357 = !DILocation(line: 156, column: 4, scope: !345)
!358 = !DILocation(line: 156, column: 3, scope: !345)
!359 = !DILocation(line: 156, column: 1, scope: !345)
!360 = !DILocation(line: 156, column: 2, scope: !361)
!361 = !DILexicalBlockFile(scope: !345, file: !228, discriminator: 1)
!362 = !DILocation(line: 158, column: 11, scope: !345)
!363 = !DILocation(line: 158, column: 27, scope: !345)
!364 = !DILocation(line: 158, column: 9, scope: !345)
!365 = !DILocation(line: 158, column: 57, scope: !345)
!366 = !DILocation(line: 158, column: 2, scope: !345)
!367 = distinct !DISubprogram(name: "ipset_init", scope: !228, file: !228, line: 223, type: !368, isLocal: false, isDefinition: true, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !348)
!368 = !DISubroutineType(types: !369)
!369 = !{!277}
!370 = !DILocation(line: 226, column: 6, scope: !371)
!371 = distinct !DILexicalBlock(scope: !367, file: !228, line: 226, column: 6)
!372 = !DILocation(line: 226, column: 6, scope: !367)
!373 = !DILocation(line: 227, column: 3, scope: !371)
!374 = !DILocation(line: 234, column: 6, scope: !375)
!375 = distinct !DILexicalBlock(scope: !367, file: !228, line: 234, column: 6)
!376 = !DILocation(line: 234, column: 19, scope: !375)
!377 = !DILocation(line: 234, column: 37, scope: !375)
!378 = !DILocation(line: 235, column: 7, scope: !375)
!379 = !DILocation(line: 235, column: 20, scope: !375)
!380 = !DILocation(line: 235, column: 42, scope: !375)
!381 = !DILocation(line: 236, column: 14, scope: !375)
!382 = !DILocation(line: 236, column: 27, scope: !375)
!383 = !DILocation(line: 236, column: 7, scope: !375)
!384 = !DILocation(line: 236, column: 61, scope: !375)
!385 = !DILocation(line: 237, column: 7, scope: !375)
!386 = !DILocation(line: 237, column: 16, scope: !375)
!387 = !DILocation(line: 237, column: 21, scope: !375)
!388 = !DILocation(line: 238, column: 8, scope: !375)
!389 = !DILocation(line: 238, column: 17, scope: !375)
!390 = !DILocation(line: 238, column: 22, scope: !375)
!391 = !DILocation(line: 238, column: 25, scope: !392)
!392 = !DILexicalBlockFile(scope: !375, file: !228, discriminator: 1)
!393 = !DILocation(line: 238, column: 34, scope: !392)
!394 = !DILocation(line: 234, column: 6, scope: !395)
!395 = !DILexicalBlockFile(scope: !367, file: !228, discriminator: 1)
!396 = !DILocation(line: 239, column: 3, scope: !397)
!397 = distinct !DILexicalBlock(scope: !375, file: !228, line: 238, column: 42)
!398 = !DILocation(line: 240, column: 3, scope: !397)
!399 = !DILocation(line: 246, column: 26, scope: !400)
!400 = distinct !DILexicalBlock(scope: !367, file: !228, line: 246, column: 6)
!401 = !DILocation(line: 246, column: 24, scope: !400)
!402 = !DILocation(line: 246, column: 58, scope: !400)
!403 = !DILocation(line: 247, column: 26, scope: !400)
!404 = !DILocation(line: 247, column: 24, scope: !400)
!405 = !DILocation(line: 246, column: 6, scope: !395)
!406 = !DILocation(line: 248, column: 61, scope: !407)
!407 = distinct !DILexicalBlock(scope: !400, file: !228, line: 247, column: 60)
!408 = !DILocation(line: 248, column: 3, scope: !409)
!409 = !DILexicalBlockFile(scope: !407, file: !228, discriminator: 1)
!410 = !DILocation(line: 249, column: 3, scope: !407)
!411 = !DILocation(line: 252, column: 40, scope: !412)
!412 = distinct !DILexicalBlock(scope: !367, file: !228, line: 252, column: 6)
!413 = !DILocation(line: 252, column: 34, scope: !412)
!414 = !DILocation(line: 252, column: 32, scope: !412)
!415 = !DILocation(line: 252, column: 80, scope: !412)
!416 = !DILocation(line: 253, column: 40, scope: !412)
!417 = !DILocation(line: 253, column: 34, scope: !412)
!418 = !DILocation(line: 253, column: 32, scope: !412)
!419 = !DILocation(line: 253, column: 80, scope: !412)
!420 = !DILocation(line: 254, column: 40, scope: !412)
!421 = !DILocation(line: 254, column: 34, scope: !412)
!422 = !DILocation(line: 254, column: 32, scope: !412)
!423 = !DILocation(line: 254, column: 79, scope: !412)
!424 = !DILocation(line: 255, column: 41, scope: !412)
!425 = !DILocation(line: 255, column: 35, scope: !412)
!426 = !DILocation(line: 255, column: 33, scope: !412)
!427 = !DILocation(line: 255, column: 81, scope: !412)
!428 = !DILocation(line: 256, column: 40, scope: !412)
!429 = !DILocation(line: 256, column: 34, scope: !412)
!430 = !DILocation(line: 256, column: 32, scope: !412)
!431 = !DILocation(line: 256, column: 79, scope: !412)
!432 = !DILocation(line: 257, column: 36, scope: !412)
!433 = !DILocation(line: 257, column: 30, scope: !412)
!434 = !DILocation(line: 257, column: 28, scope: !412)
!435 = !DILocation(line: 257, column: 71, scope: !412)
!436 = !DILocation(line: 258, column: 36, scope: !412)
!437 = !DILocation(line: 258, column: 30, scope: !412)
!438 = !DILocation(line: 258, column: 28, scope: !412)
!439 = !DILocation(line: 258, column: 71, scope: !412)
!440 = !DILocation(line: 259, column: 31, scope: !412)
!441 = !DILocation(line: 259, column: 25, scope: !412)
!442 = !DILocation(line: 259, column: 23, scope: !412)
!443 = !DILocation(line: 259, column: 61, scope: !412)
!444 = !DILocation(line: 260, column: 38, scope: !412)
!445 = !DILocation(line: 260, column: 32, scope: !412)
!446 = !DILocation(line: 260, column: 30, scope: !412)
!447 = !DILocation(line: 252, column: 6, scope: !395)
!448 = !DILocation(line: 261, column: 73, scope: !449)
!449 = distinct !DILexicalBlock(scope: !412, file: !228, line: 260, column: 76)
!450 = !DILocation(line: 261, column: 3, scope: !451)
!451 = !DILexicalBlockFile(scope: !449, file: !228, discriminator: 1)
!452 = !DILocation(line: 262, column: 3, scope: !449)
!453 = !DILocation(line: 266, column: 4, scope: !367)
!454 = !DILocation(line: 266, column: 2, scope: !367)
!455 = !DILocation(line: 268, column: 7, scope: !456)
!456 = distinct !DILexicalBlock(scope: !367, file: !228, line: 268, column: 6)
!457 = !DILocation(line: 268, column: 26, scope: !456)
!458 = !DILocation(line: 268, column: 30, scope: !459)
!459 = !DILexicalBlockFile(scope: !456, file: !228, discriminator: 1)
!460 = !DILocation(line: 268, column: 6, scope: !459)
!461 = !DILocation(line: 269, column: 3, scope: !462)
!462 = distinct !DILexicalBlock(scope: !456, file: !228, line: 268, column: 71)
!463 = !DILocation(line: 270, column: 3, scope: !462)
!464 = !DILocation(line: 273, column: 2, scope: !367)
!465 = !DILocation(line: 274, column: 1, scope: !367)
!466 = distinct !DISubprogram(name: "set_match_loaded", scope: !228, file: !228, line: 200, type: !368, isLocal: true, isDefinition: true, scopeLine: 201, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !348)
!467 = !DILocalVariable(name: "buf", scope: !466, file: !228, line: 202, type: !468)
!468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 248, align: 8, elements: !469)
!469 = !{!470}
!470 = !DISubrange(count: 31)
!471 = !DILocation(line: 202, column: 7, scope: !466)
!472 = !DILocalVariable(name: "fp", scope: !466, file: !228, line: 203, type: !166)
!473 = !DILocation(line: 203, column: 8, scope: !466)
!474 = !DILocalVariable(name: "found", scope: !466, file: !228, line: 204, type: !277)
!475 = !DILocation(line: 204, column: 6, scope: !466)
!476 = !DILocation(line: 206, column: 7, scope: !466)
!477 = !DILocation(line: 206, column: 5, scope: !466)
!478 = !DILocation(line: 207, column: 7, scope: !479)
!479 = distinct !DILexicalBlock(scope: !466, file: !228, line: 207, column: 6)
!480 = !DILocation(line: 207, column: 6, scope: !466)
!481 = !DILocation(line: 208, column: 3, scope: !479)
!482 = !DILocation(line: 210, column: 2, scope: !466)
!483 = !DILocation(line: 210, column: 15, scope: !484)
!484 = !DILexicalBlockFile(scope: !466, file: !228, discriminator: 1)
!485 = !DILocation(line: 210, column: 33, scope: !484)
!486 = !DILocation(line: 210, column: 9, scope: !484)
!487 = !DILocation(line: 210, column: 2, scope: !484)
!488 = !DILocation(line: 211, column: 8, scope: !489)
!489 = distinct !DILexicalBlock(scope: !490, file: !228, line: 211, column: 7)
!490 = distinct !DILexicalBlock(scope: !466, file: !228, line: 210, column: 38)
!491 = !DILocation(line: 211, column: 15, scope: !489)
!492 = !DILocation(line: 211, column: 23, scope: !489)
!493 = !DILocation(line: 211, column: 26, scope: !494)
!494 = !DILexicalBlockFile(scope: !489, file: !228, discriminator: 1)
!495 = !DILocation(line: 211, column: 33, scope: !494)
!496 = !DILocation(line: 211, column: 42, scope: !494)
!497 = !DILocation(line: 212, column: 16, scope: !489)
!498 = !DILocation(line: 212, column: 8, scope: !489)
!499 = !DILocation(line: 211, column: 7, scope: !500)
!500 = !DILexicalBlockFile(scope: !490, file: !228, discriminator: 2)
!501 = !DILocation(line: 213, column: 10, scope: !502)
!502 = distinct !DILexicalBlock(scope: !489, file: !228, line: 212, column: 32)
!503 = !DILocation(line: 214, column: 4, scope: !502)
!504 = !DILocation(line: 210, column: 2, scope: !505)
!505 = !DILexicalBlockFile(scope: !466, file: !228, discriminator: 2)
!506 = distinct !{!506, !482}
!507 = !DILocation(line: 218, column: 9, scope: !466)
!508 = !DILocation(line: 218, column: 2, scope: !466)
!509 = !DILocation(line: 220, column: 9, scope: !466)
!510 = !DILocation(line: 220, column: 2, scope: !466)
!511 = !DILocation(line: 221, column: 1, scope: !466)
!512 = distinct !DISubprogram(name: "remove_ipsets", scope: !228, file: !228, line: 276, type: !368, isLocal: false, isDefinition: true, scopeLine: 277, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !348)
!513 = !DILocalVariable(name: "session", scope: !512, file: !228, line: 278, type: !232)
!514 = !DILocation(line: 278, column: 24, scope: !512)
!515 = !DILocation(line: 280, column: 7, scope: !516)
!516 = distinct !DILexicalBlock(scope: !512, file: !228, line: 280, column: 6)
!517 = !DILocation(line: 280, column: 20, scope: !516)
!518 = !DILocation(line: 280, column: 6, scope: !512)
!519 = !DILocation(line: 281, column: 3, scope: !516)
!520 = !DILocation(line: 284, column: 7, scope: !521)
!521 = distinct !DILexicalBlock(scope: !512, file: !228, line: 284, column: 6)
!522 = !DILocation(line: 284, column: 6, scope: !512)
!523 = !DILocation(line: 285, column: 3, scope: !521)
!524 = !DILocation(line: 288, column: 14, scope: !512)
!525 = !DILocation(line: 288, column: 12, scope: !512)
!526 = !DILocation(line: 288, column: 10, scope: !512)
!527 = !DILocation(line: 289, column: 7, scope: !528)
!528 = distinct !DILexicalBlock(scope: !512, file: !228, line: 289, column: 6)
!529 = !DILocation(line: 289, column: 6, scope: !512)
!530 = !DILocation(line: 290, column: 3, scope: !531)
!531 = distinct !DILexicalBlock(scope: !528, file: !228, line: 289, column: 16)
!532 = !DILocation(line: 291, column: 3, scope: !531)
!533 = !DILocation(line: 294, column: 6, scope: !534)
!534 = distinct !DILexicalBlock(scope: !512, file: !228, line: 294, column: 6)
!535 = !DILocation(line: 294, column: 6, scope: !512)
!536 = !DILocation(line: 295, column: 17, scope: !534)
!537 = !DILocation(line: 295, column: 26, scope: !534)
!538 = !DILocation(line: 295, column: 39, scope: !534)
!539 = !DILocation(line: 295, column: 3, scope: !534)
!540 = !DILocation(line: 297, column: 6, scope: !541)
!541 = distinct !DILexicalBlock(scope: !512, file: !228, line: 297, column: 6)
!542 = !DILocation(line: 297, column: 6, scope: !512)
!543 = !DILocation(line: 298, column: 17, scope: !544)
!544 = distinct !DILexicalBlock(scope: !541, file: !228, line: 297, column: 18)
!545 = !DILocation(line: 298, column: 26, scope: !544)
!546 = !DILocation(line: 298, column: 39, scope: !544)
!547 = !DILocation(line: 298, column: 3, scope: !544)
!548 = !DILocation(line: 299, column: 17, scope: !544)
!549 = !DILocation(line: 299, column: 26, scope: !544)
!550 = !DILocation(line: 299, column: 39, scope: !544)
!551 = !DILocation(line: 299, column: 3, scope: !544)
!552 = !DILocation(line: 300, column: 2, scope: !544)
!553 = !DILocation(line: 302, column: 4, scope: !512)
!554 = !DILocation(line: 302, column: 29, scope: !512)
!555 = !DILocation(line: 302, column: 2, scope: !512)
!556 = !DILocation(line: 304, column: 2, scope: !512)
!557 = !DILocation(line: 305, column: 1, scope: !512)
!558 = distinct !DISubprogram(name: "ipset_destroy", scope: !228, file: !228, line: 141, type: !559, isLocal: true, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !348)
!559 = !DISubroutineType(types: !560)
!560 = !{!277, !232, !238}
!561 = !DILocalVariable(name: "session", arg: 1, scope: !558, file: !228, line: 141, type: !232)
!562 = !DILocation(line: 141, column: 37, scope: !558)
!563 = !DILocalVariable(name: "setname", arg: 2, scope: !558, file: !228, line: 141, type: !238)
!564 = !DILocation(line: 141, column: 58, scope: !558)
!565 = !DILocalVariable(name: "r", scope: !558, file: !228, line: 143, type: !173)
!566 = !DILocation(line: 143, column: 6, scope: !558)
!567 = !DILocation(line: 145, column: 4, scope: !558)
!568 = !DILocation(line: 145, column: 3, scope: !558)
!569 = !DILocation(line: 145, column: 1, scope: !558)
!570 = !DILocation(line: 145, column: 2, scope: !571)
!571 = !DILexicalBlockFile(scope: !558, file: !228, discriminator: 1)
!572 = !DILocation(line: 147, column: 8, scope: !558)
!573 = !DILocation(line: 147, column: 24, scope: !558)
!574 = !DILocation(line: 147, column: 6, scope: !558)
!575 = !DILocation(line: 147, column: 4, scope: !558)
!576 = !DILocation(line: 148, column: 9, scope: !558)
!577 = !DILocation(line: 148, column: 11, scope: !558)
!578 = !DILocation(line: 148, column: 2, scope: !558)
!579 = distinct !DISubprogram(name: "add_ipsets", scope: !228, file: !228, line: 307, type: !580, isLocal: false, isDefinition: true, scopeLine: 308, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !348)
!580 = !DISubroutineType(types: !581)
!581 = !{!277, !277}
!582 = !DILocalVariable(name: "reload", arg: 1, scope: !579, file: !228, line: 307, type: !277)
!583 = !DILocation(line: 307, column: 21, scope: !579)
!584 = !DILocation(line: 309, column: 21, scope: !579)
!585 = !DILocation(line: 309, column: 34, scope: !579)
!586 = !DILocation(line: 309, column: 54, scope: !579)
!587 = !DILocation(line: 309, column: 67, scope: !579)
!588 = !DILocation(line: 309, column: 88, scope: !579)
!589 = !DILocation(line: 309, column: 101, scope: !579)
!590 = !DILocation(line: 309, column: 128, scope: !579)
!591 = !DILocation(line: 309, column: 9, scope: !579)
!592 = !DILocation(line: 309, column: 2, scope: !579)
!593 = distinct !DISubprogram(name: "create_sets", scope: !228, file: !228, line: 161, type: !594, isLocal: true, isDefinition: true, scopeLine: 162, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !348)
!594 = !DISubroutineType(types: !595)
!595 = !{!277, !238, !238, !238, !277}
!596 = !DILocalVariable(name: "addr4", arg: 1, scope: !593, file: !228, line: 161, type: !238)
!597 = !DILocation(line: 161, column: 36, scope: !593)
!598 = !DILocalVariable(name: "addr6", arg: 2, scope: !593, file: !228, line: 161, type: !238)
!599 = !DILocation(line: 161, column: 55, scope: !593)
!600 = !DILocalVariable(name: "addr_if6", arg: 3, scope: !593, file: !228, line: 161, type: !238)
!601 = !DILocation(line: 161, column: 74, scope: !593)
!602 = !DILocalVariable(name: "reload", arg: 4, scope: !593, file: !228, line: 161, type: !277)
!603 = !DILocation(line: 161, column: 89, scope: !593)
!604 = !DILocalVariable(name: "session", scope: !593, file: !228, line: 163, type: !232)
!605 = !DILocation(line: 163, column: 24, scope: !593)
!606 = !DILocation(line: 165, column: 14, scope: !593)
!607 = !DILocation(line: 165, column: 12, scope: !593)
!608 = !DILocation(line: 165, column: 10, scope: !593)
!609 = !DILocation(line: 166, column: 7, scope: !610)
!610 = distinct !DILexicalBlock(scope: !593, file: !228, line: 166, column: 6)
!611 = !DILocation(line: 166, column: 6, scope: !593)
!612 = !DILocation(line: 167, column: 3, scope: !613)
!613 = distinct !DILexicalBlock(scope: !610, file: !228, line: 166, column: 16)
!614 = !DILocation(line: 168, column: 3, scope: !613)
!615 = !DILocation(line: 173, column: 7, scope: !616)
!616 = distinct !DILexicalBlock(scope: !593, file: !228, line: 173, column: 6)
!617 = !DILocation(line: 173, column: 6, scope: !593)
!618 = !DILocation(line: 174, column: 5, scope: !616)
!619 = !DILocation(line: 174, column: 30, scope: !616)
!620 = !DILocation(line: 174, column: 3, scope: !616)
!621 = !DILocation(line: 176, column: 6, scope: !622)
!622 = distinct !DILexicalBlock(scope: !593, file: !228, line: 176, column: 6)
!623 = !DILocation(line: 176, column: 6, scope: !593)
!624 = !DILocation(line: 177, column: 8, scope: !625)
!625 = distinct !DILexicalBlock(scope: !626, file: !228, line: 177, column: 7)
!626 = distinct !DILexicalBlock(scope: !622, file: !228, line: 176, column: 18)
!627 = !DILocation(line: 177, column: 15, scope: !625)
!628 = !DILocation(line: 177, column: 37, scope: !629)
!629 = !DILexicalBlockFile(scope: !625, file: !228, discriminator: 1)
!630 = !DILocation(line: 177, column: 46, scope: !629)
!631 = !DILocation(line: 177, column: 19, scope: !629)
!632 = !DILocation(line: 177, column: 7, scope: !629)
!633 = !DILocation(line: 178, column: 17, scope: !625)
!634 = !DILocation(line: 178, column: 26, scope: !625)
!635 = !DILocation(line: 178, column: 4, scope: !625)
!636 = !DILocation(line: 179, column: 2, scope: !626)
!637 = !DILocation(line: 181, column: 6, scope: !638)
!638 = distinct !DILexicalBlock(scope: !593, file: !228, line: 181, column: 6)
!639 = !DILocation(line: 181, column: 6, scope: !593)
!640 = !DILocation(line: 182, column: 8, scope: !641)
!641 = distinct !DILexicalBlock(scope: !642, file: !228, line: 182, column: 7)
!642 = distinct !DILexicalBlock(scope: !638, file: !228, line: 181, column: 18)
!643 = !DILocation(line: 182, column: 15, scope: !641)
!644 = !DILocation(line: 182, column: 37, scope: !645)
!645 = !DILexicalBlockFile(scope: !641, file: !228, discriminator: 1)
!646 = !DILocation(line: 182, column: 46, scope: !645)
!647 = !DILocation(line: 182, column: 19, scope: !645)
!648 = !DILocation(line: 182, column: 7, scope: !645)
!649 = !DILocation(line: 183, column: 17, scope: !641)
!650 = !DILocation(line: 183, column: 26, scope: !641)
!651 = !DILocation(line: 183, column: 4, scope: !641)
!652 = !DILocation(line: 184, column: 8, scope: !653)
!653 = distinct !DILexicalBlock(scope: !642, file: !228, line: 184, column: 7)
!654 = !DILocation(line: 184, column: 15, scope: !653)
!655 = !DILocation(line: 184, column: 37, scope: !656)
!656 = !DILexicalBlockFile(scope: !653, file: !228, discriminator: 1)
!657 = !DILocation(line: 184, column: 46, scope: !656)
!658 = !DILocation(line: 184, column: 19, scope: !656)
!659 = !DILocation(line: 184, column: 7, scope: !656)
!660 = !DILocation(line: 187, column: 17, scope: !661)
!661 = distinct !DILexicalBlock(scope: !653, file: !228, line: 184, column: 57)
!662 = !DILocation(line: 187, column: 26, scope: !661)
!663 = !DILocation(line: 187, column: 4, scope: !661)
!664 = !DILocation(line: 191, column: 3, scope: !661)
!665 = !DILocation(line: 192, column: 2, scope: !642)
!666 = !DILocation(line: 194, column: 4, scope: !593)
!667 = !DILocation(line: 194, column: 29, scope: !593)
!668 = !DILocation(line: 194, column: 2, scope: !593)
!669 = !DILocation(line: 196, column: 2, scope: !593)
!670 = !DILocation(line: 197, column: 1, scope: !593)
!671 = distinct !DISubprogram(name: "ipset_session_start", scope: !228, file: !228, line: 312, type: !672, isLocal: false, isDefinition: true, scopeLine: 313, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !348)
!672 = !DISubroutineType(types: !673)
!673 = !{!140}
!674 = !DILocation(line: 314, column: 11, scope: !671)
!675 = !DILocation(line: 314, column: 9, scope: !671)
!676 = !DILocation(line: 314, column: 2, scope: !671)
!677 = distinct !DISubprogram(name: "ipset_session_end", scope: !228, file: !228, line: 317, type: !160, isLocal: false, isDefinition: true, scopeLine: 318, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !348)
!678 = !DILocalVariable(name: "vsession", arg: 1, scope: !677, file: !228, line: 317, type: !140)
!679 = !DILocation(line: 317, column: 30, scope: !677)
!680 = !DILocalVariable(name: "session", scope: !677, file: !228, line: 319, type: !232)
!681 = !DILocation(line: 319, column: 24, scope: !677)
!682 = !DILocation(line: 319, column: 34, scope: !677)
!683 = !DILocation(line: 321, column: 4, scope: !677)
!684 = !DILocation(line: 321, column: 29, scope: !677)
!685 = !DILocation(line: 321, column: 2, scope: !677)
!686 = !DILocation(line: 322, column: 1, scope: !677)
!687 = distinct !DISubprogram(name: "ipset_entry", scope: !228, file: !228, line: 324, type: !688, isLocal: false, isDefinition: true, scopeLine: 325, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !348)
!688 = !DISubroutineType(types: !689)
!689 = !{null, !140, !173, !690}
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64, align: 64)
!691 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !692)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_address_t", file: !693, line: 73, baseType: !694)
!693 = !DIFile(filename: "./../include/vrrp_ipaddress.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ip_address", file: !693, line: 41, size: 704, align: 64, elements: !695)
!695 = !{!696, !708, !721, !781, !782, !783, !784, !785, !790, !791, !809, !810, !811}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "ifa", scope: !694, file: !693, line: 42, baseType: !697, size: 64, align: 32)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ifaddrmsg", file: !698, line: 7, size: 64, align: 32, elements: !699)
!698 = !DIFile(filename: "/usr/include/linux/if_addr.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!699 = !{!700, !703, !704, !705, !706}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_family", scope: !697, file: !698, line: 8, baseType: !701, size: 8, align: 8)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !702, line: 20, baseType: !125)
!702 = !DIFile(filename: "/usr/include/asm-generic/int-ll64.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!703 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_prefixlen", scope: !697, file: !698, line: 9, baseType: !701, size: 8, align: 8, offset: 8)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_flags", scope: !697, file: !698, line: 10, baseType: !701, size: 8, align: 8, offset: 16)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_scope", scope: !697, file: !698, line: 11, baseType: !701, size: 8, align: 8, offset: 24)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_index", scope: !697, file: !698, line: 12, baseType: !707, size: 32, align: 32, offset: 32)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !702, line: 26, baseType: !137)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !694, file: !693, line: 50, baseType: !709, size: 128, align: 32, offset: 64)
!709 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !694, file: !693, line: 44, size: 128, align: 32, elements: !710)
!710 = !{!711, !720}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "sin", scope: !709, file: !693, line: 48, baseType: !712, size: 64, align: 32)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !709, file: !693, line: 45, size: 64, align: 32, elements: !713)
!713 = !{!714, !719}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !712, file: !693, line: 46, baseType: !715, size: 32, align: 32)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !116, line: 31, size: 32, align: 32, elements: !716)
!716 = !{!717}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !715, file: !116, line: 33, baseType: !718, size: 32, align: 32)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !116, line: 30, baseType: !136)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "sin_brd", scope: !712, file: !693, line: 47, baseType: !715, size: 32, align: 32, offset: 32)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !709, file: !693, line: 49, baseType: !115, size: 128, align: 32)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "ifp", scope: !694, file: !693, line: 52, baseType: !722, size: 64, align: 64, offset: 192)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64, align: 64)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "interface_t", file: !143, line: 111, baseType: !724)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_interface", file: !143, line: 76, size: 1792, align: 64, elements: !725)
!725 = !{!726, !728, !730, !731, !732, !733, !734, !735, !736, !742, !743, !744, !745, !746, !747, !749, !750, !751, !752, !773, !774, !775, !776, !777, !778, !779, !780}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "ifname", scope: !724, file: !143, line: 77, baseType: !727, size: 128, align: 8)
!727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 128, align: 8, elements: !126)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "ifindex", scope: !724, file: !143, line: 78, baseType: !729, size: 32, align: 32, offset: 128)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "ifindex_t", file: !143, line: 62, baseType: !136)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !724, file: !143, line: 79, baseType: !715, size: 32, align: 32, offset: 160)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !724, file: !143, line: 80, baseType: !115, size: 128, align: 32, offset: 192)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "ifi_flags", scope: !724, file: !143, line: 81, baseType: !137, size: 32, align: 32, offset: 320)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "linkbeat_use_polling", scope: !724, file: !143, line: 82, baseType: !277, size: 8, align: 8, offset: 352)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !724, file: !143, line: 83, baseType: !136, size: 32, align: 32, offset: 384)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "hw_type", scope: !724, file: !143, line: 84, baseType: !131, size: 16, align: 16, offset: 416)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr", scope: !724, file: !143, line: 85, baseType: !737, size: 256, align: 8, offset: 432)
!737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !738, size: 256, align: 8, elements: !740)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !275, line: 33, baseType: !739)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_char", file: !200, line: 30, baseType: !125)
!740 = !{!741}
!741 = !DISubrange(count: 32)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr_bcast", scope: !724, file: !143, line: 86, baseType: !737, size: 256, align: 8, offset: 688)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr_len", scope: !724, file: !143, line: 87, baseType: !219, size: 64, align: 64, offset: 960)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "lb_type", scope: !724, file: !143, line: 88, baseType: !173, size: 32, align: 32, offset: 1024)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "vmac", scope: !724, file: !143, line: 90, baseType: !277, size: 8, align: 8, offset: 1056)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "base_ifindex", scope: !724, file: !143, line: 91, baseType: !729, size: 32, align: 32, offset: 1088)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "base_ifp", scope: !724, file: !143, line: 92, baseType: !748, size: 64, align: 64, offset: 1152)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64, align: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master_ifindex", scope: !724, file: !143, line: 94, baseType: !729, size: 32, align: 32, offset: 1216)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master_ifp", scope: !724, file: !143, line: 96, baseType: !748, size: 64, align: 64, offset: 1280)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master", scope: !724, file: !143, line: 97, baseType: !277, size: 8, align: 8, offset: 1344)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "garp_delay", scope: !724, file: !143, line: 100, baseType: !753, size: 64, align: 64, offset: 1408)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64, align: 64)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "garp_delay_t", file: !143, line: 73, baseType: !755)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_garp_delay", file: !143, line: 65, size: 704, align: 64, elements: !756)
!756 = !{!757, !767, !768, !769, !770, !771, !772}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "garp_interval", scope: !755, file: !143, line: 66, baseType: !758, size: 128, align: 64)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "timeval_t", file: !759, line: 31, baseType: !760)
!759 = !DIFile(filename: "../../lib/timer.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !761, line: 30, size: 128, align: 64, elements: !762)
!761 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!762 = !{!763, !765}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !760, file: !761, line: 32, baseType: !764, size: 64, align: 64)
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !200, line: 139, baseType: !201)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !760, file: !761, line: 33, baseType: !766, size: 64, align: 64, offset: 64)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !200, line: 141, baseType: !201)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "have_garp_interval", scope: !755, file: !143, line: 67, baseType: !277, size: 8, align: 8, offset: 128)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "gna_interval", scope: !755, file: !143, line: 68, baseType: !758, size: 128, align: 64, offset: 192)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "have_gna_interval", scope: !755, file: !143, line: 69, baseType: !277, size: 8, align: 8, offset: 320)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "garp_next_time", scope: !755, file: !143, line: 70, baseType: !758, size: 128, align: 64, offset: 384)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "gna_next_time", scope: !755, file: !143, line: 71, baseType: !758, size: 128, align: 64, offset: 512)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "aggregation_group", scope: !755, file: !143, line: 72, baseType: !173, size: 32, align: 32, offset: 640)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "gna_router", scope: !724, file: !143, line: 101, baseType: !277, size: 8, align: 8, offset: 1472)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_config", scope: !724, file: !143, line: 102, baseType: !173, size: 32, align: 32, offset: 1504)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_ignore_value", scope: !724, file: !143, line: 103, baseType: !136, size: 32, align: 32, offset: 1536)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_filter_value", scope: !724, file: !143, line: 104, baseType: !136, size: 32, align: 32, offset: 1568)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "reset_promote_secondaries", scope: !724, file: !143, line: 105, baseType: !136, size: 32, align: 32, offset: 1600)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "rp_filter", scope: !724, file: !143, line: 107, baseType: !137, size: 32, align: 32, offset: 1632)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "promote_secondaries_already_set", scope: !724, file: !143, line: 109, baseType: !277, size: 8, align: 8, offset: 1664)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "tracking_vrrp", scope: !724, file: !143, line: 110, baseType: !144, size: 64, align: 64, offset: 1728)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !694, file: !693, line: 53, baseType: !175, size: 64, align: 64, offset: 256)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !694, file: !693, line: 55, baseType: !136, size: 32, align: 32, offset: 320)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "flagmask", scope: !694, file: !693, line: 56, baseType: !136, size: 32, align: 32, offset: 352)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "have_peer", scope: !694, file: !693, line: 61, baseType: !277, size: 8, align: 8, offset: 384)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !694, file: !693, line: 65, baseType: !786, size: 128, align: 32, offset: 416)
!786 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !694, file: !693, line: 62, size: 128, align: 32, elements: !787)
!787 = !{!788, !789}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !786, file: !693, line: 63, baseType: !715, size: 32, align: 32)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !786, file: !693, line: 64, baseType: !115, size: 128, align: 32)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "dont_track", scope: !694, file: !693, line: 66, baseType: !277, size: 8, align: 8, offset: 544)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "track_group", scope: !694, file: !693, line: 67, baseType: !792, size: 64, align: 64, offset: 576)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64, align: 64)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "static_track_group_t", file: !794, line: 39, baseType: !795)
!794 = !DIFile(filename: "./../include/vrrp_static_track.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_static_track_group", file: !794, line: 35, size: 192, align: 64, elements: !796)
!796 = !{!797, !798, !808}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !795, file: !794, line: 36, baseType: !175, size: 64, align: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !795, file: !794, line: 37, baseType: !799, size: 64, align: 64, offset: 64)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64, align: 64)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "vector_t", file: !801, line: 34, baseType: !802)
!801 = !DIFile(filename: "../../lib/vector.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vector", file: !801, line: 30, size: 128, align: 64, elements: !803)
!803 = !{!804, !805, !806}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !802, file: !801, line: 31, baseType: !137, size: 32, align: 32)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !802, file: !801, line: 32, baseType: !137, size: 32, align: 32, offset: 32)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !802, file: !801, line: 33, baseType: !807, size: 64, align: 64, offset: 64)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64, align: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "vrrp_instances", scope: !795, file: !794, line: 38, baseType: !144, size: 64, align: 64, offset: 128)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !694, file: !693, line: 69, baseType: !277, size: 8, align: 8, offset: 640)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "iptable_rule_set", scope: !694, file: !693, line: 70, baseType: !277, size: 8, align: 8, offset: 648)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "garp_gna_pending", scope: !694, file: !693, line: 72, baseType: !277, size: 8, align: 8, offset: 656)
!812 = !DILocalVariable(name: "vsession", arg: 1, scope: !687, file: !228, line: 324, type: !140)
!813 = !DILocation(line: 324, column: 24, scope: !687)
!814 = !DILocalVariable(name: "cmd", arg: 2, scope: !687, file: !228, line: 324, type: !173)
!815 = !DILocation(line: 324, column: 38, scope: !687)
!816 = !DILocalVariable(name: "addr", arg: 3, scope: !687, file: !228, line: 324, type: !690)
!817 = !DILocation(line: 324, column: 63, scope: !687)
!818 = !DILocalVariable(name: "set", scope: !687, file: !228, line: 326, type: !238)
!819 = !DILocation(line: 326, column: 14, scope: !687)
!820 = !DILocalVariable(name: "iface", scope: !687, file: !228, line: 327, type: !175)
!821 = !DILocation(line: 327, column: 8, scope: !687)
!822 = !DILocalVariable(name: "session", scope: !687, file: !228, line: 328, type: !232)
!823 = !DILocation(line: 328, column: 24, scope: !687)
!824 = !DILocation(line: 328, column: 34, scope: !687)
!825 = !DILocation(line: 331, column: 6, scope: !826)
!826 = distinct !DILexicalBlock(scope: !687, file: !228, line: 331, column: 6)
!827 = !DILocation(line: 331, column: 12, scope: !826)
!828 = !DILocation(line: 331, column: 16, scope: !826)
!829 = !DILocation(line: 331, column: 27, scope: !826)
!830 = !DILocation(line: 331, column: 6, scope: !687)
!831 = !DILocation(line: 332, column: 8, scope: !832)
!832 = distinct !DILexicalBlock(scope: !833, file: !228, line: 332, column: 7)
!833 = distinct !DILexicalBlock(scope: !826, file: !228, line: 331, column: 38)
!834 = !DILocation(line: 332, column: 7, scope: !833)
!835 = !DILocation(line: 333, column: 4, scope: !832)
!836 = !DILocation(line: 334, column: 9, scope: !833)
!837 = !DILocation(line: 334, column: 22, scope: !833)
!838 = !DILocation(line: 334, column: 7, scope: !833)
!839 = !DILocation(line: 335, column: 2, scope: !833)
!840 = !DILocalVariable(name: "__a", scope: !841, file: !228, line: 336, type: !113)
!841 = distinct !DILexicalBlock(scope: !842, file: !228, line: 336, column: 26)
!842 = distinct !DILexicalBlock(scope: !826, file: !228, line: 336, column: 10)
!843 = !DILocation(line: 336, column: 51, scope: !841)
!844 = !DILocation(line: 336, column: 11, scope: !841)
!845 = !DILocation(line: 336, column: 17, scope: !841)
!846 = !DILocation(line: 336, column: 19, scope: !841)
!847 = !DILocation(line: 336, column: 14, scope: !841)
!848 = !DILocation(line: 336, column: 27, scope: !841)
!849 = !DILocation(line: 336, column: 44, scope: !841)
!850 = !DILocation(line: 336, column: 42, scope: !841)
!851 = !DILocation(line: 336, column: 67, scope: !852)
!852 = !DILexicalBlockFile(scope: !841, file: !228, discriminator: 1)
!853 = !DILocation(line: 336, column: 64, scope: !841)
!854 = !DILocation(line: 336, column: 28, scope: !841)
!855 = !DILocation(line: 336, column: 87, scope: !841)
!856 = !DILocation(line: 336, column: 25, scope: !842)
!857 = !DILocation(line: 336, column: 10, scope: !826)
!858 = !DILocation(line: 337, column: 8, scope: !859)
!859 = distinct !DILexicalBlock(scope: !860, file: !228, line: 337, column: 7)
!860 = distinct !DILexicalBlock(scope: !842, file: !228, line: 336, column: 53)
!861 = !DILocation(line: 337, column: 7, scope: !860)
!862 = !DILocation(line: 338, column: 4, scope: !859)
!863 = !DILocation(line: 340, column: 9, scope: !860)
!864 = !DILocation(line: 340, column: 22, scope: !860)
!865 = !DILocation(line: 340, column: 7, scope: !860)
!866 = !DILocation(line: 342, column: 11, scope: !860)
!867 = !DILocation(line: 342, column: 17, scope: !860)
!868 = !DILocation(line: 342, column: 22, scope: !860)
!869 = !DILocation(line: 342, column: 9, scope: !860)
!870 = !DILocation(line: 344, column: 2, scope: !860)
!871 = !DILocation(line: 346, column: 9, scope: !842)
!872 = !DILocation(line: 346, column: 22, scope: !842)
!873 = !DILocation(line: 346, column: 7, scope: !842)
!874 = !DILocation(line: 348, column: 15, scope: !687)
!875 = !DILocation(line: 348, column: 25, scope: !687)
!876 = !DILocation(line: 348, column: 29, scope: !687)
!877 = !DILocation(line: 348, column: 24, scope: !687)
!878 = !DILocation(line: 348, column: 68, scope: !687)
!879 = !DILocation(line: 348, column: 73, scope: !687)
!880 = !DILocation(line: 348, column: 82, scope: !687)
!881 = !DILocation(line: 348, column: 2, scope: !687)
!882 = !DILocation(line: 349, column: 1, scope: !687)
!883 = !DILocation(line: 349, column: 1, scope: !884)
!884 = !DILexicalBlockFile(scope: !687, file: !228, discriminator: 1)
!885 = distinct !DISubprogram(name: "do_ipset_cmd", scope: !228, file: !228, line: 91, type: !886, isLocal: true, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !348)
!886 = !DISubroutineType(types: !887)
!887 = !{!277, !232, !61, !238, !690, !136, !238}
!888 = !DILocalVariable(name: "session", arg: 1, scope: !885, file: !228, line: 91, type: !232)
!889 = !DILocation(line: 91, column: 36, scope: !885)
!890 = !DILocalVariable(name: "cmd", arg: 2, scope: !885, file: !228, line: 91, type: !61)
!891 = !DILocation(line: 91, column: 60, scope: !885)
!892 = !DILocalVariable(name: "setname", arg: 3, scope: !885, file: !228, line: 91, type: !238)
!893 = !DILocation(line: 91, column: 77, scope: !885)
!894 = !DILocalVariable(name: "addr", arg: 4, scope: !885, file: !228, line: 92, type: !690)
!895 = !DILocation(line: 92, column: 23, scope: !885)
!896 = !DILocalVariable(name: "timeout", arg: 5, scope: !885, file: !228, line: 92, type: !136)
!897 = !DILocation(line: 92, column: 38, scope: !885)
!898 = !DILocalVariable(name: "iface", arg: 6, scope: !885, file: !228, line: 92, type: !238)
!899 = !DILocation(line: 92, column: 59, scope: !885)
!900 = !DILocalVariable(name: "type", scope: !885, file: !228, line: 94, type: !264)
!901 = !DILocation(line: 94, column: 27, scope: !885)
!902 = !DILocalVariable(name: "family", scope: !885, file: !228, line: 95, type: !123)
!903 = !DILocation(line: 95, column: 10, scope: !885)
!904 = !DILocalVariable(name: "r", scope: !885, file: !228, line: 96, type: !173)
!905 = !DILocation(line: 96, column: 6, scope: !885)
!906 = !DILocation(line: 98, column: 4, scope: !885)
!907 = !DILocation(line: 98, column: 3, scope: !885)
!908 = !DILocation(line: 98, column: 1, scope: !885)
!909 = !DILocation(line: 98, column: 2, scope: !910)
!910 = !DILexicalBlockFile(scope: !885, file: !228, discriminator: 1)
!911 = !DILocation(line: 100, column: 11, scope: !885)
!912 = !DILocation(line: 100, column: 32, scope: !885)
!913 = !DILocation(line: 100, column: 41, scope: !885)
!914 = !DILocation(line: 100, column: 9, scope: !885)
!915 = !DILocation(line: 100, column: 7, scope: !885)
!916 = !DILocation(line: 101, column: 6, scope: !917)
!917 = distinct !DILexicalBlock(scope: !885, file: !228, line: 101, column: 6)
!918 = !DILocation(line: 101, column: 11, scope: !917)
!919 = !DILocation(line: 101, column: 6, scope: !885)
!920 = !DILocation(line: 103, column: 3, scope: !921)
!921 = distinct !DILexicalBlock(scope: !917, file: !228, line: 101, column: 19)
!922 = !DILocation(line: 106, column: 12, scope: !885)
!923 = !DILocation(line: 106, column: 18, scope: !885)
!924 = !DILocation(line: 106, column: 22, scope: !885)
!925 = !DILocation(line: 106, column: 33, scope: !885)
!926 = !DILocation(line: 106, column: 11, scope: !885)
!927 = !DILocation(line: 106, column: 9, scope: !885)
!928 = !DILocation(line: 107, column: 4, scope: !885)
!929 = !DILocation(line: 107, column: 3, scope: !885)
!930 = !DILocation(line: 107, column: 1, scope: !885)
!931 = !DILocation(line: 107, column: 2, scope: !910)
!932 = !DILocation(line: 108, column: 4, scope: !885)
!933 = !DILocation(line: 108, column: 3, scope: !885)
!934 = !DILocation(line: 108, column: 1, scope: !885)
!935 = !DILocation(line: 108, column: 2, scope: !885)
!936 = !DILocation(line: 108, column: 8, scope: !885)
!937 = !DILocation(line: 108, column: 2, scope: !910)
!938 = !DILocation(line: 109, column: 6, scope: !939)
!939 = distinct !DILexicalBlock(scope: !885, file: !228, line: 109, column: 6)
!940 = !DILocation(line: 109, column: 6, scope: !885)
!941 = !DILocation(line: 110, column: 5, scope: !939)
!942 = !DILocation(line: 110, column: 4, scope: !939)
!943 = !DILocation(line: 110, column: 2, scope: !939)
!944 = !DILocation(line: 110, column: 3, scope: !945)
!945 = !DILexicalBlockFile(scope: !939, file: !228, discriminator: 1)
!946 = !DILocation(line: 110, column: 3, scope: !939)
!947 = !DILocation(line: 111, column: 6, scope: !948)
!948 = distinct !DILexicalBlock(scope: !885, file: !228, line: 111, column: 6)
!949 = !DILocation(line: 111, column: 6, scope: !885)
!950 = !DILocation(line: 112, column: 5, scope: !948)
!951 = !DILocation(line: 112, column: 4, scope: !948)
!952 = !DILocation(line: 112, column: 2, scope: !948)
!953 = !DILocation(line: 112, column: 3, scope: !954)
!954 = !DILexicalBlockFile(scope: !948, file: !228, discriminator: 1)
!955 = !DILocation(line: 112, column: 3, scope: !948)
!956 = !DILocation(line: 114, column: 8, scope: !885)
!957 = !DILocation(line: 114, column: 24, scope: !885)
!958 = !DILocation(line: 114, column: 33, scope: !885)
!959 = !DILocation(line: 114, column: 6, scope: !885)
!960 = !DILocation(line: 114, column: 4, scope: !885)
!961 = !DILocation(line: 116, column: 9, scope: !885)
!962 = !DILocation(line: 116, column: 11, scope: !885)
!963 = !DILocation(line: 116, column: 2, scope: !885)
!964 = !DILocation(line: 117, column: 1, scope: !885)
!965 = distinct !DISubprogram(name: "ipset_create", scope: !228, file: !228, line: 120, type: !966, isLocal: true, isDefinition: true, scopeLine: 121, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !348)
!966 = !DISubroutineType(types: !967)
!967 = !{!277, !232, !238, !238, !123}
!968 = !DILocalVariable(name: "session", arg: 1, scope: !965, file: !228, line: 120, type: !232)
!969 = !DILocation(line: 120, column: 36, scope: !965)
!970 = !DILocalVariable(name: "setname", arg: 2, scope: !965, file: !228, line: 120, type: !238)
!971 = !DILocation(line: 120, column: 57, scope: !965)
!972 = !DILocalVariable(name: "typename", arg: 3, scope: !965, file: !228, line: 120, type: !238)
!973 = !DILocation(line: 120, column: 78, scope: !965)
!974 = !DILocalVariable(name: "family", arg: 4, scope: !965, file: !228, line: 120, type: !123)
!975 = !DILocation(line: 120, column: 96, scope: !965)
!976 = !DILocalVariable(name: "type", scope: !965, file: !228, line: 122, type: !264)
!977 = !DILocation(line: 122, column: 27, scope: !965)
!978 = !DILocalVariable(name: "r", scope: !965, file: !228, line: 123, type: !173)
!979 = !DILocation(line: 123, column: 6, scope: !965)
!980 = !DILocation(line: 125, column: 4, scope: !965)
!981 = !DILocation(line: 125, column: 3, scope: !965)
!982 = !DILocation(line: 125, column: 1, scope: !965)
!983 = !DILocation(line: 125, column: 2, scope: !984)
!984 = !DILexicalBlockFile(scope: !965, file: !228, discriminator: 1)
!985 = !DILocation(line: 127, column: 4, scope: !965)
!986 = !DILocation(line: 127, column: 3, scope: !965)
!987 = !DILocation(line: 127, column: 1, scope: !965)
!988 = !DILocation(line: 127, column: 2, scope: !984)
!989 = !DILocation(line: 129, column: 11, scope: !965)
!990 = !DILocation(line: 129, column: 32, scope: !965)
!991 = !DILocation(line: 129, column: 9, scope: !965)
!992 = !DILocation(line: 129, column: 7, scope: !965)
!993 = !DILocation(line: 130, column: 6, scope: !994)
!994 = distinct !DILexicalBlock(scope: !965, file: !228, line: 130, column: 6)
!995 = !DILocation(line: 130, column: 11, scope: !994)
!996 = !DILocation(line: 130, column: 6, scope: !965)
!997 = !DILocation(line: 131, column: 3, scope: !994)
!998 = !DILocation(line: 133, column: 4, scope: !965)
!999 = !DILocation(line: 133, column: 3, scope: !965)
!1000 = !DILocation(line: 133, column: 1, scope: !965)
!1001 = !DILocation(line: 133, column: 2, scope: !984)
!1002 = !DILocation(line: 134, column: 4, scope: !965)
!1003 = !DILocation(line: 134, column: 3, scope: !965)
!1004 = !DILocation(line: 134, column: 1, scope: !965)
!1005 = !DILocation(line: 134, column: 2, scope: !984)
!1006 = !DILocation(line: 136, column: 8, scope: !965)
!1007 = !DILocation(line: 136, column: 24, scope: !965)
!1008 = !DILocation(line: 136, column: 6, scope: !965)
!1009 = !DILocation(line: 136, column: 4, scope: !965)
!1010 = !DILocation(line: 137, column: 9, scope: !965)
!1011 = !DILocation(line: 137, column: 11, scope: !965)
!1012 = !DILocation(line: 137, column: 2, scope: !965)
!1013 = !DILocation(line: 138, column: 1, scope: !965)
