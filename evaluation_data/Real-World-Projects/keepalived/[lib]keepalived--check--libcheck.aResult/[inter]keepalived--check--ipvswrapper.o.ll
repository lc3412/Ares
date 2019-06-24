; ModuleID = './[inter]keepalived--check--ipvswrapper.o.i'
source_filename = "./[inter]keepalived--check--ipvswrapper.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._list = type { %struct._element*, %struct._element*, i32, void (i8*)*, void (%struct._IO_FILE*, i8*)* }
%struct._element = type { %struct._element*, %struct._element*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._virtual_server_group = type { i8*, %struct._list*, %struct._list* }
%struct.sigaction = type { %union.anon.5, %struct.__sigset_t, i32, void ()* }
%union.anon.5 = type { void (i32)* }
%struct.__sigset_t = type { [16 x i64] }
%union.anon.15 = type { i32 }
%union.anon.16 = type { i32 }
%struct.ip_vs_timeout_user = type { i32, i32, i32 }
%struct.lvs_syncd_config = type { i8*, %struct._vrrp_t*, i32, i16, %struct.sockaddr_storage, i16, i8, i8* }
%struct._vrrp_t = type { i16, i8*, %struct._vrrp_sgroup*, %struct._vrrp_stats*, %struct._interface*, i8, i8, i8, i32, i64, [16 x i8], %struct._list*, %struct._list*, %struct._list*, i32, i32, %struct.sockaddr_storage, i8, i8, %struct.sockaddr_storage, %struct._list*, i32, %struct.sockaddr_storage, i8, %struct.timeval, i32, %struct.timeval, %struct.timeval, i32, i32, i32, i8, i8, i32, i32, i32, i8, i8, i8, i32, i8, %struct._list*, %struct._list*, i8, i8, %struct._list*, %struct._list*, i32, i32, i32, i64, i8, i8, i64, %struct.timeval, i32, i32, i8, %struct._sock*, i32, i32, i32, i32, i8, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, i32, %struct.timeval, i8*, i64, i32, i8, [8 x i8], %struct._seq_counter, i32 }
%struct._vrrp_sgroup = type { i8*, %struct._vector*, %struct._list*, i32, i32, i32, i8, %struct._list*, %struct._list*, %struct._list*, %struct._list*, i8, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, i32, i32 }
%struct._vector = type { i32, i32, i8** }
%struct._vrrp_stats = type { i64, i32, i32, i32, i64, i64, i64, i64, i64, i32, i32, i32, i64, i64 }
%struct._interface = type { [16 x i8], i32, %struct.in_addr, %struct.in6_addr, i32, i8, i32, i16, [32 x i8], [32 x i8], i64, i32, i8, i32, %struct._interface*, i32, %struct._interface*, i8, %struct._garp_delay*, i8, i32, i32, i32, i32, i32, i8, %struct._list* }
%struct.in_addr = type { i32 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct._garp_delay = type { %struct.timeval, i8, %struct.timeval, i8, %struct.timeval, %struct.timeval, i32 }
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
%struct.timeval = type { i64, i64 }
%struct._seq_counter = type { i8, i32 }
%struct.sockaddr_storage = type { i16, [118 x i8], i64 }
%struct.ip_vs_daemon_app = type { i32, [16 x i8], i32, i16, i16, i8, i16, %union.nf_inet_addr }
%union.nf_inet_addr = type { [4 x i32] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.ip_vs_service_app = type { %struct.ip_vs_service_user, i16, %union.nf_inet_addr, [16 x i8] }
%struct.ip_vs_service_user = type { i16, i32, i16, i32, [16 x i8], i32, i32, i32 }
%struct.ip_vs_dest_app = type { %struct.ip_vs_dest_user, i16, %union.nf_inet_addr }
%struct.ip_vs_dest_user = type { i32, i16, i32, i32, i32, i32 }
%struct._virtual_server = type { i8*, %struct._virtual_server_group*, %struct.sockaddr_storage, i32, %struct._real_server*, i16, i16, i8, i32, [16 x i8], i32, i32, [16 x i8], i32, i32, i8*, i32, %struct._list*, i32, i8, i8, i8, i64, i64, i32, i64, %struct._notify_script*, %struct._notify_script*, i32, i32, i32, i8, i8 }
%struct._real_server = type { %struct.sockaddr_storage, i32, i32, i32, i32, i32, i32, i32, %struct._notify_script*, %struct._notify_script*, i32, i64, i64, i32, i64, i32, i8, i32, i8, i8, i8* }
%struct._virtual_server_group_entry = type { i8, %union.anon.2, i8 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.sockaddr_storage, i32, i32, i32, i32 }
%struct.anon.4 = type { i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"Initializing ipvs\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"IPVS: Can't initialize ipvs: %s\00", align 1
@no_ipvs = internal global i8 0, align 1
@garp_delay = common global %struct._list* null, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"/sbin/modprobe\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"ip_vs\00", align 1
@log_file_name = external global i8*, align 8
@.str.6 = private unnamed_addr constant [25 x i8] c"IPVS: waitpid error (%s)\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"/proc/sys/kernel/modprobe\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"IPVS (cmd %d, errno %d): %s\00", align 1

; Function Attrs: nounwind uwtable
define %struct._virtual_server_group* @ipvs_get_group_by_name(i8*, %struct._list*) #0 !dbg !207 {
  %3 = alloca %struct._virtual_server_group*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._list*, align 8
  %6 = alloca %struct._element*, align 8
  %7 = alloca %struct._virtual_server_group*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !219, metadata !220), !dbg !221
  store %struct._list* %1, %struct._list** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._list** %5, metadata !222, metadata !220), !dbg !223
  call void @llvm.dbg.declare(metadata %struct._element** %6, metadata !224, metadata !220), !dbg !226
  call void @llvm.dbg.declare(metadata %struct._virtual_server_group** %7, metadata !227, metadata !220), !dbg !228
  %8 = load %struct._list*, %struct._list** %5, align 8, !dbg !229
  %9 = icmp ne %struct._list* %8, null, !dbg !231
  br i1 %9, label %11, label %10, !dbg !232

; <label>:10:                                     ; preds = %2
  br label %15, !dbg !233

; <label>:11:                                     ; preds = %2
  %12 = load %struct._list*, %struct._list** %5, align 8, !dbg !235
  %13 = getelementptr inbounds %struct._list, %struct._list* %12, i32 0, i32 0, !dbg !237
  %14 = load %struct._element*, %struct._element** %13, align 8, !dbg !237
  br label %15, !dbg !238

; <label>:15:                                     ; preds = %11, %10
  %16 = phi %struct._element* [ null, %10 ], [ %14, %11 ], !dbg !239
  store %struct._element* %16, %struct._element** %6, align 8, !dbg !241
  br label %17, !dbg !242

; <label>:17:                                     ; preds = %34, %15
  %18 = load %struct._element*, %struct._element** %6, align 8, !dbg !243
  %19 = icmp ne %struct._element* %18, null, !dbg !246
  br i1 %19, label %20, label %38, !dbg !246

; <label>:20:                                     ; preds = %17
  %21 = load %struct._element*, %struct._element** %6, align 8, !dbg !247
  %22 = getelementptr inbounds %struct._element, %struct._element* %21, i32 0, i32 2, !dbg !249
  %23 = load i8*, i8** %22, align 8, !dbg !249
  %24 = bitcast i8* %23 to %struct._virtual_server_group*, !dbg !250
  store %struct._virtual_server_group* %24, %struct._virtual_server_group** %7, align 8, !dbg !251
  %25 = load %struct._virtual_server_group*, %struct._virtual_server_group** %7, align 8, !dbg !252
  %26 = getelementptr inbounds %struct._virtual_server_group, %struct._virtual_server_group* %25, i32 0, i32 0, !dbg !254
  %27 = load i8*, i8** %26, align 8, !dbg !254
  %28 = load i8*, i8** %4, align 8, !dbg !255
  %29 = call i32 @strcmp(i8* %27, i8* %28) #8, !dbg !256
  %30 = icmp ne i32 %29, 0, !dbg !256
  br i1 %30, label %33, label %31, !dbg !257

; <label>:31:                                     ; preds = %20
  %32 = load %struct._virtual_server_group*, %struct._virtual_server_group** %7, align 8, !dbg !258
  store %struct._virtual_server_group* %32, %struct._virtual_server_group** %3, align 8, !dbg !259
  br label %39, !dbg !259

; <label>:33:                                     ; preds = %20
  br label %34, !dbg !260

; <label>:34:                                     ; preds = %33
  %35 = load %struct._element*, %struct._element** %6, align 8, !dbg !261
  %36 = getelementptr inbounds %struct._element, %struct._element* %35, i32 0, i32 0, !dbg !263
  %37 = load %struct._element*, %struct._element** %36, align 8, !dbg !263
  store %struct._element* %37, %struct._element** %6, align 8, !dbg !264
  br label %17, !dbg !265, !llvm.loop !266

; <label>:38:                                     ; preds = %17
  store %struct._virtual_server_group* null, %struct._virtual_server_group** %3, align 8, !dbg !268
  br label %39, !dbg !268

; <label>:39:                                     ; preds = %38, %31
  %40 = load %struct._virtual_server_group*, %struct._virtual_server_group** %3, align 8, !dbg !269
  ret %struct._virtual_server_group* %40, !dbg !269
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @ipvs_start() #0 !dbg !270 {
  %1 = alloca i32, align 4
  call void (i32, i8*, ...) @log_message(i32 7, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0)), !dbg !273
  %2 = call i32 @ipvs_init(), !dbg !274
  %3 = icmp ne i32 %2, 0, !dbg !274
  br i1 %3, label %4, label %14, !dbg !276

; <label>:4:                                      ; preds = %0
  %5 = call zeroext i1 @modprobe_ipvs(), !dbg !277
  br i1 %5, label %9, label %6, !dbg !280

; <label>:6:                                      ; preds = %4
  %7 = call i32 @ipvs_init(), !dbg !281
  %8 = icmp ne i32 %7, 0, !dbg !281
  br i1 %8, label %9, label %13, !dbg !283

; <label>:9:                                      ; preds = %6, %4
  %10 = call i32* @__errno_location() #1, !dbg !284
  %11 = load i32, i32* %10, align 4, !dbg !286
  %12 = call i8* @ipvs_strerror(i32 %11), !dbg !287
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0), i8* %12), !dbg !289
  store i8 1, i8* @no_ipvs, align 1, !dbg !290
  store i32 0, i32* %1, align 4, !dbg !291
  br label %15, !dbg !291

; <label>:13:                                     ; preds = %6
  br label %14, !dbg !292

; <label>:14:                                     ; preds = %13, %0
  store i32 1, i32* %1, align 4, !dbg !293
  br label %15, !dbg !293

; <label>:15:                                     ; preds = %14, %9
  %16 = load i32, i32* %1, align 4, !dbg !294
  ret i32 %16, !dbg !294
}

declare void @log_message(i32, i8*, ...) #3

declare i32 @ipvs_init() #3

; Function Attrs: nounwind uwtable
define internal zeroext i1 @modprobe_ipvs() #0 !dbg !295 {
  %1 = alloca i1, align 1
  %2 = alloca [5 x i8*], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sigaction, align 8
  %8 = alloca %struct.sigaction, align 8
  %9 = alloca %union.anon.15, align 4
  %10 = alloca %union.anon.16, align 4
  call void @llvm.dbg.declare(metadata [5 x i8*]* %2, metadata !298, metadata !220), !dbg !302
  %11 = bitcast [5 x i8*]* %2 to i8*, !dbg !302
  call void @llvm.memset.p0i8.i64(i8* %11, i8 0, i64 40, i32 16, i1 false), !dbg !302
  %12 = bitcast i8* %11 to [5 x i8*]*, !dbg !302
  %13 = getelementptr [5 x i8*], [5 x i8*]* %12, i32 0, i32 0, !dbg !302
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8** %13, !dbg !302
  %14 = getelementptr [5 x i8*], [5 x i8*]* %12, i32 0, i32 1, !dbg !302
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8** %14, !dbg !302
  %15 = getelementptr [5 x i8*], [5 x i8*]* %12, i32 0, i32 2, !dbg !302
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8** %15, !dbg !302
  %16 = getelementptr [5 x i8*], [5 x i8*]* %12, i32 0, i32 3, !dbg !302
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8** %16, !dbg !302
  call void @llvm.dbg.declare(metadata i32* %3, metadata !303, metadata !220), !dbg !304
  call void @llvm.dbg.declare(metadata i32* %4, metadata !305, metadata !220), !dbg !306
  call void @llvm.dbg.declare(metadata i32* %5, metadata !307, metadata !220), !dbg !308
  call void @llvm.dbg.declare(metadata i8** %6, metadata !309, metadata !220), !dbg !310
  %17 = call i8* @get_modprobe(), !dbg !311
  store i8* %17, i8** %6, align 8, !dbg !310
  call void @llvm.dbg.declare(metadata %struct.sigaction* %7, metadata !312, metadata !220), !dbg !407
  call void @llvm.dbg.declare(metadata %struct.sigaction* %8, metadata !408, metadata !220), !dbg !409
  %18 = load i8*, i8** %6, align 8, !dbg !410
  %19 = icmp ne i8* %18, null, !dbg !410
  br i1 %19, label %20, label %23, !dbg !412

; <label>:20:                                     ; preds = %0
  %21 = load i8*, i8** %6, align 8, !dbg !413
  %22 = getelementptr inbounds [5 x i8*], [5 x i8*]* %2, i64 0, i64 0, !dbg !414
  store i8* %21, i8** %22, align 16, !dbg !415
  br label %23, !dbg !414

; <label>:23:                                     ; preds = %20, %0
  %24 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %7, i32 0, i32 0, !dbg !416
  %25 = bitcast %union.anon.5* %24 to void (i32)**, !dbg !417
  store void (i32)* null, void (i32)** %25, align 8, !dbg !418
  %26 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %7, i32 0, i32 1, !dbg !419
  %27 = call i32 @sigemptyset(%struct.__sigset_t* %26) #9, !dbg !420
  %28 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %7, i32 0, i32 2, !dbg !421
  store i32 0, i32* %28, align 8, !dbg !422
  %29 = call i32 @sigaction(i32 17, %struct.sigaction* %7, %struct.sigaction* %8) #9, !dbg !423
  %30 = load i8*, i8** @log_file_name, align 8, !dbg !424
  %31 = icmp ne i8* %30, null, !dbg !424
  br i1 %31, label %32, label %33, !dbg !426

; <label>:32:                                     ; preds = %23
  call void @flush_log_file(), !dbg !427
  br label %33, !dbg !427

; <label>:33:                                     ; preds = %32, %23
  %34 = call i32 @fork() #9, !dbg !428
  store i32 %34, i32* %3, align 4, !dbg !430
  %35 = icmp ne i32 %34, 0, !dbg !430
  br i1 %35, label %41, label %36, !dbg !431

; <label>:36:                                     ; preds = %33
  %37 = getelementptr inbounds [5 x i8*], [5 x i8*]* %2, i64 0, i64 0, !dbg !432
  %38 = load i8*, i8** %37, align 16, !dbg !432
  %39 = getelementptr inbounds [5 x i8*], [5 x i8*]* %2, i32 0, i32 0, !dbg !434
  %40 = call i32 @execv(i8* %38, i8** %39) #9, !dbg !435
  call void @exit(i32 1) #10, !dbg !436
  unreachable, !dbg !436

; <label>:41:                                     ; preds = %33
  %42 = load i32, i32* %3, align 4, !dbg !437
  %43 = call i32 @waitpid(i32 %42, i32* %4, i32 0), !dbg !438
  store i32 %43, i32* %5, align 4, !dbg !439
  %44 = call i32 @sigaction(i32 17, %struct.sigaction* %8, %struct.sigaction* null) #9, !dbg !440
  %45 = load i32, i32* %5, align 4, !dbg !441
  %46 = icmp slt i32 %45, 0, !dbg !443
  br i1 %46, label %47, label %51, !dbg !444

; <label>:47:                                     ; preds = %41
  %48 = call i32* @__errno_location() #1, !dbg !445
  %49 = load i32, i32* %48, align 4, !dbg !447
  %50 = call i8* @strerror(i32 %49) #9, !dbg !448
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i32 0, i32 0), i8* %50), !dbg !450
  br label %51, !dbg !451

; <label>:51:                                     ; preds = %47, %41
  %52 = load i8*, i8** %6, align 8, !dbg !452
  %53 = icmp ne i8* %52, null, !dbg !452
  br i1 %53, label %54, label %56, !dbg !454

; <label>:54:                                     ; preds = %51
  %55 = load i8*, i8** %6, align 8, !dbg !455
  call void @free(i8* %55) #9, !dbg !456
  store i8* null, i8** %6, align 8, !dbg !457
  br label %56, !dbg !458

; <label>:56:                                     ; preds = %54, %51
  %57 = bitcast %union.anon.15* %9 to i32*, !dbg !459
  %58 = load i32, i32* %4, align 4, !dbg !461
  store i32 %58, i32* %57, align 4, !dbg !459
  %59 = bitcast %union.anon.15* %9 to i32*, !dbg !462
  %60 = load i32, i32* %59, align 4, !dbg !462
  %61 = and i32 %60, 127, !dbg !463
  %62 = icmp eq i32 %61, 0, !dbg !459
  br i1 %62, label %63, label %71, !dbg !464

; <label>:63:                                     ; preds = %56
  %64 = bitcast %union.anon.16* %10 to i32*, !dbg !465
  %65 = load i32, i32* %4, align 4, !dbg !467
  store i32 %65, i32* %64, align 4, !dbg !465
  %66 = bitcast %union.anon.16* %10 to i32*, !dbg !468
  %67 = load i32, i32* %66, align 4, !dbg !468
  %68 = and i32 %67, 65280, !dbg !469
  %69 = ashr i32 %68, 8, !dbg !470
  %70 = icmp ne i32 %69, 0, !dbg !470
  br i1 %70, label %71, label %72, !dbg !471

; <label>:71:                                     ; preds = %63, %56
  store i1 true, i1* %1, align 1, !dbg !472
  br label %73, !dbg !472

; <label>:72:                                     ; preds = %63
  store i1 false, i1* %1, align 1, !dbg !474
  br label %73, !dbg !474

; <label>:73:                                     ; preds = %72, %71
  %74 = load i1, i1* %1, align 1, !dbg !475
  ret i1 %74, !dbg !475
}

declare i8* @ipvs_strerror(i32) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

; Function Attrs: nounwind uwtable
define void @ipvs_stop() #0 !dbg !476 {
  %1 = load i8, i8* @no_ipvs, align 1, !dbg !477
  %2 = trunc i8 %1 to i1, !dbg !477
  br i1 %2, label %3, label %4, !dbg !479

; <label>:3:                                      ; preds = %0
  br label %5, !dbg !480

; <label>:4:                                      ; preds = %0
  call void @ipvs_close(), !dbg !481
  br label %5, !dbg !482

; <label>:5:                                      ; preds = %4, %3
  ret void, !dbg !483
}

declare void @ipvs_close() #3

; Function Attrs: nounwind uwtable
define void @ipvs_set_timeouts(i32, i32, i32) #0 !dbg !485 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ip_vs_timeout_user, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !488, metadata !220), !dbg !489
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !490, metadata !220), !dbg !491
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !492, metadata !220), !dbg !493
  call void @llvm.dbg.declare(metadata %struct.ip_vs_timeout_user* %7, metadata !494, metadata !220), !dbg !503
  %8 = load i32, i32* %4, align 4, !dbg !504
  %9 = icmp ne i32 %8, 0, !dbg !504
  br i1 %9, label %17, label %10, !dbg !506

; <label>:10:                                     ; preds = %3
  %11 = load i32, i32* %5, align 4, !dbg !507
  %12 = icmp ne i32 %11, 0, !dbg !507
  br i1 %12, label %17, label %13, !dbg !509

; <label>:13:                                     ; preds = %10
  %14 = load i32, i32* %6, align 4, !dbg !510
  %15 = icmp ne i32 %14, 0, !dbg !510
  br i1 %15, label %17, label %16, !dbg !512

; <label>:16:                                     ; preds = %13
  br label %25, !dbg !513

; <label>:17:                                     ; preds = %13, %10, %3
  %18 = load i32, i32* %4, align 4, !dbg !514
  %19 = getelementptr inbounds %struct.ip_vs_timeout_user, %struct.ip_vs_timeout_user* %7, i32 0, i32 0, !dbg !515
  store i32 %18, i32* %19, align 4, !dbg !516
  %20 = load i32, i32* %5, align 4, !dbg !517
  %21 = getelementptr inbounds %struct.ip_vs_timeout_user, %struct.ip_vs_timeout_user* %7, i32 0, i32 1, !dbg !518
  store i32 %20, i32* %21, align 4, !dbg !519
  %22 = load i32, i32* %6, align 4, !dbg !520
  %23 = getelementptr inbounds %struct.ip_vs_timeout_user, %struct.ip_vs_timeout_user* %7, i32 0, i32 2, !dbg !521
  store i32 %22, i32* %23, align 4, !dbg !522
  %24 = call i32 @ipvs_set_timeout(%struct.ip_vs_timeout_user* %7), !dbg !523
  br label %25, !dbg !524

; <label>:25:                                     ; preds = %17, %16
  ret void, !dbg !525
}

declare i32 @ipvs_set_timeout(%struct.ip_vs_timeout_user*) #3

; Function Attrs: nounwind uwtable
define void @ipvs_syncd_cmd(i32, %struct.lvs_syncd_config*, i32, i1 zeroext, i1 zeroext) #0 !dbg !527 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.lvs_syncd_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca %struct.ip_vs_daemon_app, align 4
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !867, metadata !220), !dbg !868
  store %struct.lvs_syncd_config* %1, %struct.lvs_syncd_config** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.lvs_syncd_config** %7, metadata !869, metadata !220), !dbg !870
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !871, metadata !220), !dbg !872
  %12 = zext i1 %3 to i8
  store i8 %12, i8* %9, align 1
  call void @llvm.dbg.declare(metadata i8* %9, metadata !873, metadata !220), !dbg !874
  %13 = zext i1 %4 to i8
  store i8 %13, i8* %10, align 1
  call void @llvm.dbg.declare(metadata i8* %10, metadata !875, metadata !220), !dbg !876
  call void @llvm.dbg.declare(metadata %struct.ip_vs_daemon_app* %11, metadata !877, metadata !220), !dbg !904
  %14 = bitcast %struct.ip_vs_daemon_app* %11 to i8*, !dbg !905
  call void @llvm.memset.p0i8.i64(i8* %14, i8 0, i64 48, i32 4, i1 false), !dbg !905
  %15 = load i32, i32* %8, align 4, !dbg !906
  %16 = getelementptr inbounds %struct.ip_vs_daemon_app, %struct.ip_vs_daemon_app* %11, i32 0, i32 0, !dbg !907
  store i32 %15, i32* %16, align 4, !dbg !908
  %17 = load %struct.lvs_syncd_config*, %struct.lvs_syncd_config** %7, align 8, !dbg !909
  %18 = icmp ne %struct.lvs_syncd_config* %17, null, !dbg !909
  br i1 %18, label %19, label %103, !dbg !911

; <label>:19:                                     ; preds = %5
  %20 = load %struct.lvs_syncd_config*, %struct.lvs_syncd_config** %7, align 8, !dbg !912
  %21 = getelementptr inbounds %struct.lvs_syncd_config, %struct.lvs_syncd_config* %20, i32 0, i32 2, !dbg !914
  %22 = load i32, i32* %21, align 8, !dbg !914
  %23 = getelementptr inbounds %struct.ip_vs_daemon_app, %struct.ip_vs_daemon_app* %11, i32 0, i32 2, !dbg !915
  store i32 %22, i32* %23, align 4, !dbg !916
  %24 = load i8, i8* %9, align 1, !dbg !917
  %25 = trunc i8 %24 to i1, !dbg !917
  br i1 %25, label %33, label %26, !dbg !919

; <label>:26:                                     ; preds = %19
  %27 = getelementptr inbounds %struct.ip_vs_daemon_app, %struct.ip_vs_daemon_app* %11, i32 0, i32 1, !dbg !920
  %28 = getelementptr inbounds [16 x i8], [16 x i8]* %27, i32 0, i32 0, !dbg !921
  %29 = load %struct.lvs_syncd_config*, %struct.lvs_syncd_config** %7, align 8, !dbg !922
  %30 = getelementptr inbounds %struct.lvs_syncd_config, %struct.lvs_syncd_config* %29, i32 0, i32 0, !dbg !923
  %31 = load i8*, i8** %30, align 8, !dbg !923
  %32 = call i8* @strcpy(i8* %28, i8* %31) #9, !dbg !924
  br label %33, !dbg !924

; <label>:33:                                     ; preds = %26, %19
  %34 = load i32, i32* %6, align 4, !dbg !925
  %35 = icmp eq i32 %34, 1163, !dbg !927
  br i1 %35, label %36, label %102, !dbg !928

; <label>:36:                                     ; preds = %33
  %37 = load %struct.lvs_syncd_config*, %struct.lvs_syncd_config** %7, align 8, !dbg !929
  %38 = getelementptr inbounds %struct.lvs_syncd_config, %struct.lvs_syncd_config* %37, i32 0, i32 3, !dbg !932
  %39 = load i16, i16* %38, align 4, !dbg !932
  %40 = icmp ne i16 %39, 0, !dbg !929
  br i1 %40, label %41, label %46, !dbg !933

; <label>:41:                                     ; preds = %36
  %42 = load %struct.lvs_syncd_config*, %struct.lvs_syncd_config** %7, align 8, !dbg !934
  %43 = getelementptr inbounds %struct.lvs_syncd_config, %struct.lvs_syncd_config* %42, i32 0, i32 3, !dbg !935
  %44 = load i16, i16* %43, align 4, !dbg !935
  %45 = getelementptr inbounds %struct.ip_vs_daemon_app, %struct.ip_vs_daemon_app* %11, i32 0, i32 3, !dbg !936
  store i16 %44, i16* %45, align 4, !dbg !937
  br label %46, !dbg !938

; <label>:46:                                     ; preds = %41, %36
  %47 = load %struct.lvs_syncd_config*, %struct.lvs_syncd_config** %7, align 8, !dbg !939
  %48 = getelementptr inbounds %struct.lvs_syncd_config, %struct.lvs_syncd_config* %47, i32 0, i32 5, !dbg !941
  %49 = load i16, i16* %48, align 8, !dbg !941
  %50 = icmp ne i16 %49, 0, !dbg !939
  br i1 %50, label %51, label %56, !dbg !942

; <label>:51:                                     ; preds = %46
  %52 = load %struct.lvs_syncd_config*, %struct.lvs_syncd_config** %7, align 8, !dbg !943
  %53 = getelementptr inbounds %struct.lvs_syncd_config, %struct.lvs_syncd_config* %52, i32 0, i32 5, !dbg !944
  %54 = load i16, i16* %53, align 8, !dbg !944
  %55 = getelementptr inbounds %struct.ip_vs_daemon_app, %struct.ip_vs_daemon_app* %11, i32 0, i32 4, !dbg !945
  store i16 %54, i16* %55, align 2, !dbg !946
  br label %56, !dbg !947

; <label>:56:                                     ; preds = %51, %46
  %57 = load %struct.lvs_syncd_config*, %struct.lvs_syncd_config** %7, align 8, !dbg !948
  %58 = getelementptr inbounds %struct.lvs_syncd_config, %struct.lvs_syncd_config* %57, i32 0, i32 6, !dbg !950
  %59 = load i8, i8* %58, align 2, !dbg !950
  %60 = icmp ne i8 %59, 0, !dbg !948
  br i1 %60, label %61, label %66, !dbg !951

; <label>:61:                                     ; preds = %56
  %62 = load %struct.lvs_syncd_config*, %struct.lvs_syncd_config** %7, align 8, !dbg !952
  %63 = getelementptr inbounds %struct.lvs_syncd_config, %struct.lvs_syncd_config* %62, i32 0, i32 6, !dbg !953
  %64 = load i8, i8* %63, align 2, !dbg !953
  %65 = getelementptr inbounds %struct.ip_vs_daemon_app, %struct.ip_vs_daemon_app* %11, i32 0, i32 5, !dbg !954
  store i8 %64, i8* %65, align 4, !dbg !955
  br label %66, !dbg !956

; <label>:66:                                     ; preds = %61, %56
  %67 = load %struct.lvs_syncd_config*, %struct.lvs_syncd_config** %7, align 8, !dbg !957
  %68 = getelementptr inbounds %struct.lvs_syncd_config, %struct.lvs_syncd_config* %67, i32 0, i32 4, !dbg !959
  %69 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %68, i32 0, i32 0, !dbg !960
  %70 = load i16, i16* %69, align 8, !dbg !960
  %71 = zext i16 %70 to i32, !dbg !957
  %72 = icmp eq i32 %71, 2, !dbg !961
  br i1 %72, label %73, label %83, !dbg !962

; <label>:73:                                     ; preds = %66
  %74 = getelementptr inbounds %struct.ip_vs_daemon_app, %struct.ip_vs_daemon_app* %11, i32 0, i32 6, !dbg !963
  store i16 2, i16* %74, align 2, !dbg !965
  %75 = load %struct.lvs_syncd_config*, %struct.lvs_syncd_config** %7, align 8, !dbg !966
  %76 = getelementptr inbounds %struct.lvs_syncd_config, %struct.lvs_syncd_config* %75, i32 0, i32 4, !dbg !967
  %77 = bitcast %struct.sockaddr_storage* %76 to %struct.sockaddr_in*, !dbg !968
  %78 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %77, i32 0, i32 2, !dbg !968
  %79 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %78, i32 0, i32 0, !dbg !969
  %80 = load i32, i32* %79, align 4, !dbg !969
  %81 = getelementptr inbounds %struct.ip_vs_daemon_app, %struct.ip_vs_daemon_app* %11, i32 0, i32 7, !dbg !970
  %82 = bitcast %union.nf_inet_addr* %81 to i32*, !dbg !971
  store i32 %80, i32* %82, align 4, !dbg !972
  br label %101, !dbg !973

; <label>:83:                                     ; preds = %66
  %84 = load %struct.lvs_syncd_config*, %struct.lvs_syncd_config** %7, align 8, !dbg !974
  %85 = getelementptr inbounds %struct.lvs_syncd_config, %struct.lvs_syncd_config* %84, i32 0, i32 4, !dbg !976
  %86 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %85, i32 0, i32 0, !dbg !977
  %87 = load i16, i16* %86, align 8, !dbg !977
  %88 = zext i16 %87 to i32, !dbg !974
  %89 = icmp eq i32 %88, 10, !dbg !978
  br i1 %89, label %90, label %100, !dbg !979

; <label>:90:                                     ; preds = %83
  %91 = getelementptr inbounds %struct.ip_vs_daemon_app, %struct.ip_vs_daemon_app* %11, i32 0, i32 6, !dbg !980
  store i16 10, i16* %91, align 2, !dbg !982
  %92 = getelementptr inbounds %struct.ip_vs_daemon_app, %struct.ip_vs_daemon_app* %11, i32 0, i32 7, !dbg !983
  %93 = bitcast %union.nf_inet_addr* %92 to %struct.in6_addr*, !dbg !984
  %94 = bitcast %struct.in6_addr* %93 to i8*, !dbg !985
  %95 = load %struct.lvs_syncd_config*, %struct.lvs_syncd_config** %7, align 8, !dbg !986
  %96 = getelementptr inbounds %struct.lvs_syncd_config, %struct.lvs_syncd_config* %95, i32 0, i32 4, !dbg !987
  %97 = bitcast %struct.sockaddr_storage* %96 to %struct.sockaddr_in6*, !dbg !988
  %98 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %97, i32 0, i32 3, !dbg !988
  %99 = bitcast %struct.in6_addr* %98 to i8*, !dbg !985
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %94, i8* %99, i64 16, i32 4, i1 false), !dbg !985
  br label %100, !dbg !989

; <label>:100:                                    ; preds = %90, %83
  br label %101

; <label>:101:                                    ; preds = %100, %73
  br label %102, !dbg !990

; <label>:102:                                    ; preds = %101, %33
  br label %103, !dbg !991

; <label>:103:                                    ; preds = %102, %5
  %104 = load i32, i32* %6, align 4, !dbg !992
  %105 = load i8, i8* %10, align 1, !dbg !993
  %106 = trunc i8 %105 to i1, !dbg !993
  %107 = call i32 @ipvs_talk(i32 %104, %struct.ip_vs_service_app* null, %struct.ip_vs_dest_app* null, %struct.ip_vs_daemon_app* %11, i1 zeroext %106), !dbg !994
  ret void, !dbg !995
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #5

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #6

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind uwtable
define internal i32 @ipvs_talk(i32, %struct.ip_vs_service_app*, %struct.ip_vs_dest_app*, %struct.ip_vs_daemon_app*, i1 zeroext) #0 !dbg !996 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ip_vs_service_app*, align 8
  %9 = alloca %struct.ip_vs_dest_app*, align 8
  %10 = alloca %struct.ip_vs_daemon_app*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1035, metadata !220), !dbg !1036
  store %struct.ip_vs_service_app* %1, %struct.ip_vs_service_app** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.ip_vs_service_app** %8, metadata !1037, metadata !220), !dbg !1038
  store %struct.ip_vs_dest_app* %2, %struct.ip_vs_dest_app** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.ip_vs_dest_app** %9, metadata !1039, metadata !220), !dbg !1040
  store %struct.ip_vs_daemon_app* %3, %struct.ip_vs_daemon_app** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.ip_vs_daemon_app** %10, metadata !1041, metadata !220), !dbg !1042
  %13 = zext i1 %4 to i8
  store i8 %13, i8* %11, align 1
  call void @llvm.dbg.declare(metadata i8* %11, metadata !1043, metadata !220), !dbg !1044
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1045, metadata !220), !dbg !1046
  store i32 -1, i32* %12, align 4, !dbg !1046
  %14 = load i8, i8* @no_ipvs, align 1, !dbg !1047
  %15 = trunc i8 %14 to i1, !dbg !1047
  br i1 %15, label %16, label %18, !dbg !1049

; <label>:16:                                     ; preds = %5
  %17 = load i32, i32* %12, align 4, !dbg !1050
  store i32 %17, i32* %6, align 4, !dbg !1051
  br label %102, !dbg !1051

; <label>:18:                                     ; preds = %5
  %19 = load i32, i32* %7, align 4, !dbg !1052
  switch i32 %19, label %62 [
    i32 1163, label %20
    i32 1164, label %23
    i32 1157, label %26
    i32 1154, label %28
    i32 1156, label %31
    i32 1155, label %34
    i32 1167, label %37
    i32 1159, label %40
    i32 1160, label %44
    i32 1161, label %48
  ], !dbg !1053

; <label>:20:                                     ; preds = %18
  %21 = load %struct.ip_vs_daemon_app*, %struct.ip_vs_daemon_app** %10, align 8, !dbg !1054
  %22 = call i32 @ipvs_start_daemon(%struct.ip_vs_daemon_app* %21), !dbg !1056
  store i32 %22, i32* %12, align 4, !dbg !1057
  br label %62, !dbg !1058

; <label>:23:                                     ; preds = %18
  %24 = load %struct.ip_vs_daemon_app*, %struct.ip_vs_daemon_app** %10, align 8, !dbg !1059
  %25 = call i32 @ipvs_stop_daemon(%struct.ip_vs_daemon_app* %24), !dbg !1060
  store i32 %25, i32* %12, align 4, !dbg !1061
  br label %62, !dbg !1062

; <label>:26:                                     ; preds = %18
  %27 = call i32 @ipvs_flush(), !dbg !1063
  store i32 %27, i32* %12, align 4, !dbg !1064
  br label %62, !dbg !1065

; <label>:28:                                     ; preds = %18
  %29 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %8, align 8, !dbg !1066
  %30 = call i32 @ipvs_add_service(%struct.ip_vs_service_app* %29), !dbg !1067
  store i32 %30, i32* %12, align 4, !dbg !1068
  br label %62, !dbg !1069

; <label>:31:                                     ; preds = %18
  %32 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %8, align 8, !dbg !1070
  %33 = call i32 @ipvs_del_service(%struct.ip_vs_service_app* %32), !dbg !1071
  store i32 %33, i32* %12, align 4, !dbg !1072
  br label %62, !dbg !1073

; <label>:34:                                     ; preds = %18
  %35 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %8, align 8, !dbg !1074
  %36 = call i32 @ipvs_update_service(%struct.ip_vs_service_app* %35), !dbg !1075
  store i32 %36, i32* %12, align 4, !dbg !1076
  br label %62, !dbg !1077

; <label>:37:                                     ; preds = %18
  %38 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %8, align 8, !dbg !1078
  %39 = call i32 @ipvs_zero_service(%struct.ip_vs_service_app* %38), !dbg !1079
  store i32 %39, i32* %12, align 4, !dbg !1080
  br label %62, !dbg !1081

; <label>:40:                                     ; preds = %18
  %41 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %8, align 8, !dbg !1082
  %42 = load %struct.ip_vs_dest_app*, %struct.ip_vs_dest_app** %9, align 8, !dbg !1083
  %43 = call i32 @ipvs_add_dest(%struct.ip_vs_service_app* %41, %struct.ip_vs_dest_app* %42), !dbg !1084
  store i32 %43, i32* %12, align 4, !dbg !1085
  br label %62, !dbg !1086

; <label>:44:                                     ; preds = %18
  %45 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %8, align 8, !dbg !1087
  %46 = load %struct.ip_vs_dest_app*, %struct.ip_vs_dest_app** %9, align 8, !dbg !1088
  %47 = call i32 @ipvs_del_dest(%struct.ip_vs_service_app* %45, %struct.ip_vs_dest_app* %46), !dbg !1089
  store i32 %47, i32* %12, align 4, !dbg !1090
  br label %62, !dbg !1091

; <label>:48:                                     ; preds = %18
  %49 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %8, align 8, !dbg !1092
  %50 = load %struct.ip_vs_dest_app*, %struct.ip_vs_dest_app** %9, align 8, !dbg !1094
  %51 = call i32 @ipvs_update_dest(%struct.ip_vs_service_app* %49, %struct.ip_vs_dest_app* %50), !dbg !1095
  store i32 %51, i32* %12, align 4, !dbg !1096
  %52 = icmp ne i32 %51, 0, !dbg !1096
  br i1 %52, label %53, label %61, !dbg !1097

; <label>:53:                                     ; preds = %48
  %54 = call i32* @__errno_location() #1, !dbg !1098
  %55 = load i32, i32* %54, align 4, !dbg !1099
  %56 = icmp eq i32 %55, 2, !dbg !1100
  br i1 %56, label %57, label %61, !dbg !1101

; <label>:57:                                     ; preds = %53
  store i32 1159, i32* %7, align 4, !dbg !1103
  %58 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %8, align 8, !dbg !1105
  %59 = load %struct.ip_vs_dest_app*, %struct.ip_vs_dest_app** %9, align 8, !dbg !1106
  %60 = call i32 @ipvs_add_dest(%struct.ip_vs_service_app* %58, %struct.ip_vs_dest_app* %59), !dbg !1107
  store i32 %60, i32* %12, align 4, !dbg !1108
  br label %61, !dbg !1109

; <label>:61:                                     ; preds = %57, %53, %48
  br label %62, !dbg !1110

; <label>:62:                                     ; preds = %18, %61, %44, %40, %37, %34, %31, %28, %26, %23, %20
  %63 = load i8, i8* %11, align 1, !dbg !1111
  %64 = trunc i8 %63 to i1, !dbg !1111
  br i1 %64, label %65, label %66, !dbg !1113

; <label>:65:                                     ; preds = %62
  store i32 0, i32* %12, align 4, !dbg !1114
  br label %100, !dbg !1115

; <label>:66:                                     ; preds = %62
  %67 = load i32, i32* %12, align 4, !dbg !1116
  %68 = icmp ne i32 %67, 0, !dbg !1116
  br i1 %68, label %69, label %99, !dbg !1118

; <label>:69:                                     ; preds = %66
  %70 = call i32* @__errno_location() #1, !dbg !1119
  %71 = load i32, i32* %70, align 4, !dbg !1122
  %72 = icmp eq i32 %71, 17, !dbg !1123
  br i1 %72, label %73, label %80, !dbg !1124

; <label>:73:                                     ; preds = %69
  %74 = load i32, i32* %7, align 4, !dbg !1125
  %75 = icmp eq i32 %74, 1154, !dbg !1126
  br i1 %75, label %79, label %76, !dbg !1127

; <label>:76:                                     ; preds = %73
  %77 = load i32, i32* %7, align 4, !dbg !1128
  %78 = icmp eq i32 %77, 1159, !dbg !1130
  br i1 %78, label %79, label %80, !dbg !1131

; <label>:79:                                     ; preds = %76, %73
  store i32 0, i32* %12, align 4, !dbg !1133
  br label %92, !dbg !1134

; <label>:80:                                     ; preds = %76, %69
  %81 = call i32* @__errno_location() #1, !dbg !1135
  %82 = load i32, i32* %81, align 4, !dbg !1137
  %83 = icmp eq i32 %82, 2, !dbg !1138
  br i1 %83, label %84, label %91, !dbg !1139

; <label>:84:                                     ; preds = %80
  %85 = load i32, i32* %7, align 4, !dbg !1140
  %86 = icmp eq i32 %85, 1156, !dbg !1141
  br i1 %86, label %90, label %87, !dbg !1142

; <label>:87:                                     ; preds = %84
  %88 = load i32, i32* %7, align 4, !dbg !1143
  %89 = icmp eq i32 %88, 1160, !dbg !1145
  br i1 %89, label %90, label %91, !dbg !1146

; <label>:90:                                     ; preds = %87, %84
  store i32 0, i32* %12, align 4, !dbg !1147
  br label %91, !dbg !1148

; <label>:91:                                     ; preds = %90, %87, %80
  br label %92

; <label>:92:                                     ; preds = %91, %79
  %93 = load i32, i32* %7, align 4, !dbg !1149
  %94 = call i32* @__errno_location() #1, !dbg !1150
  %95 = load i32, i32* %94, align 4, !dbg !1151
  %96 = call i32* @__errno_location() #1, !dbg !1152
  %97 = load i32, i32* %96, align 4, !dbg !1153
  %98 = call i8* @ipvs_strerror(i32 %97), !dbg !1154
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0), i32 %93, i32 %95, i8* %98), !dbg !1156
  br label %99, !dbg !1158

; <label>:99:                                     ; preds = %92, %66
  br label %100

; <label>:100:                                    ; preds = %99, %65
  %101 = load i32, i32* %12, align 4, !dbg !1159
  store i32 %101, i32* %6, align 4, !dbg !1160
  br label %102, !dbg !1160

; <label>:102:                                    ; preds = %100, %16
  %103 = load i32, i32* %6, align 4, !dbg !1161
  ret i32 %103, !dbg !1161
}

; Function Attrs: nounwind uwtable
define void @ipvs_flush_cmd() #0 !dbg !1162 {
  %1 = call i32 @ipvs_talk(i32 1157, %struct.ip_vs_service_app* null, %struct.ip_vs_dest_app* null, %struct.ip_vs_daemon_app* null, i1 zeroext false), !dbg !1163
  ret void, !dbg !1164
}

; Function Attrs: nounwind uwtable
define i32 @ipvs_cmd(i32, %struct._virtual_server*, %struct._real_server*) #0 !dbg !1165 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct._virtual_server*, align 8
  %7 = alloca %struct._real_server*, align 8
  %8 = alloca %struct.ip_vs_service_app, align 4
  %9 = alloca %struct.ip_vs_dest_app, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1230, metadata !220), !dbg !1231
  store %struct._virtual_server* %1, %struct._virtual_server** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %6, metadata !1232, metadata !220), !dbg !1233
  store %struct._real_server* %2, %struct._real_server** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._real_server** %7, metadata !1234, metadata !220), !dbg !1235
  call void @llvm.dbg.declare(metadata %struct.ip_vs_service_app* %8, metadata !1236, metadata !220), !dbg !1237
  call void @llvm.dbg.declare(metadata %struct.ip_vs_dest_app* %9, metadata !1238, metadata !220), !dbg !1239
  %10 = load i32, i32* %5, align 4, !dbg !1240
  %11 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !1241
  call void @ipvs_set_srule(i32 %10, %struct.ip_vs_service_app* %8, %struct._virtual_server* %11), !dbg !1242
  %12 = load %struct._real_server*, %struct._real_server** %7, align 8, !dbg !1243
  %13 = icmp ne %struct._real_server* %12, null, !dbg !1243
  br i1 %13, label %14, label %80, !dbg !1245

; <label>:14:                                     ; preds = %3
  %15 = load i32, i32* %5, align 4, !dbg !1246
  %16 = load %struct._real_server*, %struct._real_server** %7, align 8, !dbg !1248
  call void @ipvs_set_drule(i32 %15, %struct.ip_vs_dest_app* %9, %struct._real_server* %16), !dbg !1249
  %17 = load i32, i32* %5, align 4, !dbg !1250
  %18 = icmp eq i32 %17, 1160, !dbg !1252
  br i1 %18, label %19, label %27, !dbg !1253

; <label>:19:                                     ; preds = %14
  %20 = load %struct._real_server*, %struct._real_server** %7, align 8, !dbg !1254
  %21 = getelementptr inbounds %struct._real_server, %struct._real_server* %20, i32 0, i32 7, !dbg !1256
  %22 = load i32, i32* %21, align 8, !dbg !1256
  %23 = icmp ne i32 %22, 0, !dbg !1254
  br i1 %23, label %24, label %27, !dbg !1257

; <label>:24:                                     ; preds = %19
  %25 = getelementptr inbounds %struct.ip_vs_dest_app, %struct.ip_vs_dest_app* %9, i32 0, i32 0, !dbg !1258
  %26 = getelementptr inbounds %struct.ip_vs_dest_user, %struct.ip_vs_dest_user* %25, i32 0, i32 3, !dbg !1260
  store i32 0, i32* %26, align 4, !dbg !1261
  store i32 1161, i32* %5, align 4, !dbg !1262
  br label %79, !dbg !1263

; <label>:27:                                     ; preds = %19, %14
  %28 = load i32, i32* %5, align 4, !dbg !1264
  %29 = icmp eq i32 %28, 1159, !dbg !1266
  br i1 %29, label %30, label %41, !dbg !1267

; <label>:30:                                     ; preds = %27
  %31 = load %struct._real_server*, %struct._real_server** %7, align 8, !dbg !1268
  %32 = getelementptr inbounds %struct._real_server, %struct._real_server* %31, i32 0, i32 7, !dbg !1270
  %33 = load i32, i32* %32, align 8, !dbg !1270
  %34 = icmp ne i32 %33, 0, !dbg !1268
  br i1 %34, label %35, label %41, !dbg !1271

; <label>:35:                                     ; preds = %30
  %36 = load %struct._real_server*, %struct._real_server** %7, align 8, !dbg !1272
  %37 = getelementptr inbounds %struct._real_server, %struct._real_server* %36, i32 0, i32 18, !dbg !1274
  %38 = load i8, i8* %37, align 4, !dbg !1274
  %39 = trunc i8 %38 to i1, !dbg !1274
  br i1 %39, label %40, label %41, !dbg !1275

; <label>:40:                                     ; preds = %35
  store i32 1161, i32* %5, align 4, !dbg !1276
  br label %78, !dbg !1277

; <label>:41:                                     ; preds = %35, %30, %27
  %42 = load i32, i32* %5, align 4, !dbg !1278
  %43 = icmp eq i32 %42, 1159, !dbg !1280
  br i1 %43, label %44, label %65, !dbg !1281

; <label>:44:                                     ; preds = %41
  %45 = load %struct._real_server*, %struct._real_server** %7, align 8, !dbg !1282
  %46 = getelementptr inbounds %struct._real_server, %struct._real_server* %45, i32 0, i32 18, !dbg !1284
  %47 = load i8, i8* %46, align 4, !dbg !1284
  %48 = trunc i8 %47 to i1, !dbg !1284
  br i1 %48, label %65, label %49, !dbg !1285

; <label>:49:                                     ; preds = %44
  %50 = load %struct._real_server*, %struct._real_server** %7, align 8, !dbg !1286
  %51 = getelementptr inbounds %struct._real_server, %struct._real_server* %50, i32 0, i32 18, !dbg !1288
  store i8 1, i8* %51, align 4, !dbg !1289
  %52 = load %struct._real_server*, %struct._real_server** %7, align 8, !dbg !1290
  %53 = getelementptr inbounds %struct._real_server, %struct._real_server* %52, i32 0, i32 7, !dbg !1292
  %54 = load i32, i32* %53, align 8, !dbg !1292
  %55 = icmp ne i32 %54, 0, !dbg !1290
  br i1 %55, label %56, label %64, !dbg !1293

; <label>:56:                                     ; preds = %49
  %57 = load %struct._real_server*, %struct._real_server** %7, align 8, !dbg !1294
  %58 = getelementptr inbounds %struct._real_server, %struct._real_server* %57, i32 0, i32 17, !dbg !1296
  %59 = load i32, i32* %58, align 8, !dbg !1296
  %60 = icmp ne i32 %59, 0, !dbg !1294
  br i1 %60, label %61, label %64, !dbg !1297

; <label>:61:                                     ; preds = %56
  %62 = getelementptr inbounds %struct.ip_vs_dest_app, %struct.ip_vs_dest_app* %9, i32 0, i32 0, !dbg !1298
  %63 = getelementptr inbounds %struct.ip_vs_dest_user, %struct.ip_vs_dest_user* %62, i32 0, i32 3, !dbg !1299
  store i32 0, i32* %63, align 4, !dbg !1300
  br label %64, !dbg !1301

; <label>:64:                                     ; preds = %61, %56, %49
  br label %77, !dbg !1302

; <label>:65:                                     ; preds = %44, %41
  %66 = load i32, i32* %5, align 4, !dbg !1303
  %67 = icmp eq i32 %66, 1160, !dbg !1305
  br i1 %67, label %68, label %76, !dbg !1306

; <label>:68:                                     ; preds = %65
  %69 = load %struct._real_server*, %struct._real_server** %7, align 8, !dbg !1307
  %70 = getelementptr inbounds %struct._real_server, %struct._real_server* %69, i32 0, i32 18, !dbg !1309
  %71 = load i8, i8* %70, align 4, !dbg !1309
  %72 = trunc i8 %71 to i1, !dbg !1309
  br i1 %72, label %73, label %76, !dbg !1310

; <label>:73:                                     ; preds = %68
  %74 = load %struct._real_server*, %struct._real_server** %7, align 8, !dbg !1311
  %75 = getelementptr inbounds %struct._real_server, %struct._real_server* %74, i32 0, i32 18, !dbg !1312
  store i8 0, i8* %75, align 4, !dbg !1313
  br label %76, !dbg !1311

; <label>:76:                                     ; preds = %73, %68, %65
  br label %77

; <label>:77:                                     ; preds = %76, %64
  br label %78

; <label>:78:                                     ; preds = %77, %40
  br label %79

; <label>:79:                                     ; preds = %78, %24
  br label %80, !dbg !1314

; <label>:80:                                     ; preds = %79, %3
  %81 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !1315
  %82 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %81, i32 0, i32 1, !dbg !1317
  %83 = load %struct._virtual_server_group*, %struct._virtual_server_group** %82, align 8, !dbg !1317
  %84 = icmp ne %struct._virtual_server_group* %83, null, !dbg !1315
  br i1 %84, label %85, label %90, !dbg !1318

; <label>:85:                                     ; preds = %80
  %86 = load i32, i32* %5, align 4, !dbg !1319
  %87 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !1320
  %88 = load %struct._real_server*, %struct._real_server** %7, align 8, !dbg !1321
  %89 = call i32 @ipvs_group_cmd(i32 %86, %struct.ip_vs_service_app* %8, %struct.ip_vs_dest_app* %9, %struct._virtual_server* %87, %struct._real_server* %88), !dbg !1322
  store i32 %89, i32* %4, align 4, !dbg !1323
  br label %128, !dbg !1323

; <label>:90:                                     ; preds = %80
  %91 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !1324
  %92 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %91, i32 0, i32 3, !dbg !1326
  %93 = load i32, i32* %92, align 8, !dbg !1326
  %94 = icmp ne i32 %93, 0, !dbg !1324
  br i1 %94, label %95, label %101, !dbg !1327

; <label>:95:                                     ; preds = %90
  %96 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !1328
  %97 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %96, i32 0, i32 3, !dbg !1330
  %98 = load i32, i32* %97, align 8, !dbg !1330
  %99 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %8, i32 0, i32 0, !dbg !1331
  %100 = getelementptr inbounds %struct.ip_vs_service_user, %struct.ip_vs_service_user* %99, i32 0, i32 3, !dbg !1332
  store i32 %98, i32* %100, align 4, !dbg !1333
  br label %125, !dbg !1334

; <label>:101:                                    ; preds = %90
  %102 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !1335
  %103 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %102, i32 0, i32 5, !dbg !1338
  %104 = load i16, i16* %103, align 8, !dbg !1338
  %105 = zext i16 %104 to i32, !dbg !1335
  %106 = icmp eq i32 %105, 10, !dbg !1339
  br i1 %106, label %107, label %113, !dbg !1340

; <label>:107:                                    ; preds = %101
  %108 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !1341
  %109 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %108, i32 0, i32 2, !dbg !1342
  %110 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %8, i32 0, i32 2, !dbg !1343
  %111 = bitcast %union.nf_inet_addr* %110 to %struct.in6_addr*, !dbg !1344
  %112 = call i32 @inet_sockaddrip6(%struct.sockaddr_storage* %109, %struct.in6_addr* %111), !dbg !1345
  br label %119, !dbg !1345

; <label>:113:                                    ; preds = %101
  %114 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !1346
  %115 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %114, i32 0, i32 2, !dbg !1347
  %116 = call i32 @inet_sockaddrip4(%struct.sockaddr_storage* %115), !dbg !1348
  %117 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %8, i32 0, i32 2, !dbg !1349
  %118 = bitcast %union.nf_inet_addr* %117 to i32*, !dbg !1350
  store i32 %116, i32* %118, align 4, !dbg !1351
  br label %119

; <label>:119:                                    ; preds = %113, %107
  %120 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !1352
  %121 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %120, i32 0, i32 2, !dbg !1353
  %122 = call zeroext i16 @inet_sockaddrport(%struct.sockaddr_storage* %121), !dbg !1354
  %123 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %8, i32 0, i32 0, !dbg !1355
  %124 = getelementptr inbounds %struct.ip_vs_service_user, %struct.ip_vs_service_user* %123, i32 0, i32 2, !dbg !1356
  store i16 %122, i16* %124, align 4, !dbg !1357
  br label %125

; <label>:125:                                    ; preds = %119, %95
  %126 = load i32, i32* %5, align 4, !dbg !1358
  %127 = call i32 @ipvs_talk(i32 %126, %struct.ip_vs_service_app* %8, %struct.ip_vs_dest_app* %9, %struct.ip_vs_daemon_app* null, i1 zeroext false), !dbg !1359
  store i32 %127, i32* %4, align 4, !dbg !1360
  br label %128, !dbg !1360

; <label>:128:                                    ; preds = %125, %85
  %129 = load i32, i32* %4, align 4, !dbg !1361
  ret i32 %129, !dbg !1361
}

; Function Attrs: nounwind uwtable
define internal void @ipvs_set_srule(i32, %struct.ip_vs_service_app*, %struct._virtual_server*) #0 !dbg !1362 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_vs_service_app*, align 8
  %6 = alloca %struct._virtual_server*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1365, metadata !220), !dbg !1366
  store %struct.ip_vs_service_app* %1, %struct.ip_vs_service_app** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.ip_vs_service_app** %5, metadata !1367, metadata !220), !dbg !1368
  store %struct._virtual_server* %2, %struct._virtual_server** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %6, metadata !1369, metadata !220), !dbg !1370
  %7 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %5, align 8, !dbg !1371
  %8 = bitcast %struct.ip_vs_service_app* %7 to i8*, !dbg !1372
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 80, i32 4, i1 false), !dbg !1372
  %9 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %5, align 8, !dbg !1373
  %10 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %9, i32 0, i32 0, !dbg !1374
  %11 = getelementptr inbounds %struct.ip_vs_service_user, %struct.ip_vs_service_user* %10, i32 0, i32 4, !dbg !1375
  %12 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i32 0, i32 0, !dbg !1373
  %13 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !1376
  %14 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %13, i32 0, i32 9, !dbg !1377
  %15 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i32 0, i32 0, !dbg !1376
  %16 = call i8* @strncpy(i8* %12, i8* %15, i64 16) #9, !dbg !1378
  %17 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !1379
  %18 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %17, i32 0, i32 5, !dbg !1380
  %19 = load i16, i16* %18, align 8, !dbg !1380
  %20 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %5, align 8, !dbg !1381
  %21 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %20, i32 0, i32 1, !dbg !1382
  store i16 %19, i16* %21, align 4, !dbg !1383
  %22 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !1384
  %23 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %22, i32 0, i32 10, !dbg !1385
  %24 = load i32, i32* %23, align 4, !dbg !1385
  %25 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %5, align 8, !dbg !1386
  %26 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %25, i32 0, i32 0, !dbg !1387
  %27 = getelementptr inbounds %struct.ip_vs_service_user, %struct.ip_vs_service_user* %26, i32 0, i32 5, !dbg !1388
  store i32 %24, i32* %27, align 4, !dbg !1389
  %28 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !1390
  %29 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %28, i32 0, i32 5, !dbg !1391
  %30 = load i16, i16* %29, align 8, !dbg !1391
  %31 = zext i16 %30 to i32, !dbg !1390
  %32 = icmp eq i32 %31, 10, !dbg !1392
  %33 = select i1 %32, i32 128, i32 -1, !dbg !1393
  %34 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %5, align 8, !dbg !1394
  %35 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %34, i32 0, i32 0, !dbg !1395
  %36 = getelementptr inbounds %struct.ip_vs_service_user, %struct.ip_vs_service_user* %35, i32 0, i32 7, !dbg !1396
  store i32 %33, i32* %36, align 4, !dbg !1397
  %37 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !1398
  %38 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %37, i32 0, i32 6, !dbg !1399
  %39 = load i16, i16* %38, align 2, !dbg !1399
  %40 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %5, align 8, !dbg !1400
  %41 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %40, i32 0, i32 0, !dbg !1401
  %42 = getelementptr inbounds %struct.ip_vs_service_user, %struct.ip_vs_service_user* %41, i32 0, i32 0, !dbg !1402
  store i16 %39, i16* %42, align 4, !dbg !1403
  %43 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !1404
  %44 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %43, i32 0, i32 11, !dbg !1406
  %45 = load i32, i32* %44, align 8, !dbg !1406
  %46 = icmp ne i32 %45, 0, !dbg !1404
  br i1 %46, label %47, label %77, !dbg !1407

; <label>:47:                                     ; preds = %3
  %48 = load i32, i32* %4, align 4, !dbg !1408
  %49 = icmp eq i32 %48, 1154, !dbg !1409
  br i1 %49, label %53, label %50, !dbg !1410

; <label>:50:                                     ; preds = %47
  %51 = load i32, i32* %4, align 4, !dbg !1411
  %52 = icmp eq i32 %51, 1156, !dbg !1413
  br i1 %52, label %53, label %77, !dbg !1414

; <label>:53:                                     ; preds = %50, %47
  %54 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !1416
  %55 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %54, i32 0, i32 11, !dbg !1418
  %56 = load i32, i32* %55, align 8, !dbg !1418
  %57 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %5, align 8, !dbg !1419
  %58 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %57, i32 0, i32 0, !dbg !1420
  %59 = getelementptr inbounds %struct.ip_vs_service_user, %struct.ip_vs_service_user* %58, i32 0, i32 6, !dbg !1421
  store i32 %56, i32* %59, align 4, !dbg !1422
  %60 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %5, align 8, !dbg !1423
  %61 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %60, i32 0, i32 0, !dbg !1424
  %62 = getelementptr inbounds %struct.ip_vs_service_user, %struct.ip_vs_service_user* %61, i32 0, i32 5, !dbg !1425
  %63 = load i32, i32* %62, align 4, !dbg !1426
  %64 = or i32 %63, 1, !dbg !1426
  store i32 %64, i32* %62, align 4, !dbg !1426
  %65 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !1427
  %66 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %65, i32 0, i32 14, !dbg !1429
  %67 = load i32, i32* %66, align 8, !dbg !1429
  %68 = icmp ne i32 %67, 0, !dbg !1427
  br i1 %68, label %69, label %76, !dbg !1430

; <label>:69:                                     ; preds = %53
  %70 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !1431
  %71 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %70, i32 0, i32 14, !dbg !1432
  %72 = load i32, i32* %71, align 8, !dbg !1432
  %73 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %5, align 8, !dbg !1433
  %74 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %73, i32 0, i32 0, !dbg !1434
  %75 = getelementptr inbounds %struct.ip_vs_service_user, %struct.ip_vs_service_user* %74, i32 0, i32 7, !dbg !1435
  store i32 %72, i32* %75, align 4, !dbg !1436
  br label %76, !dbg !1433

; <label>:76:                                     ; preds = %69, %53
  br label %77, !dbg !1437

; <label>:77:                                     ; preds = %76, %50, %3
  %78 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %5, align 8, !dbg !1438
  %79 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %78, i32 0, i32 3, !dbg !1439
  %80 = getelementptr inbounds [16 x i8], [16 x i8]* %79, i32 0, i32 0, !dbg !1438
  %81 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !1440
  %82 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %81, i32 0, i32 12, !dbg !1441
  %83 = getelementptr inbounds [16 x i8], [16 x i8]* %82, i32 0, i32 0, !dbg !1440
  %84 = call i8* @strcpy(i8* %80, i8* %83) #9, !dbg !1442
  ret void, !dbg !1443
}

; Function Attrs: nounwind uwtable
define internal void @ipvs_set_drule(i32, %struct.ip_vs_dest_app*, %struct._real_server*) #0 !dbg !1444 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_vs_dest_app*, align 8
  %6 = alloca %struct._real_server*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1447, metadata !220), !dbg !1448
  store %struct.ip_vs_dest_app* %1, %struct.ip_vs_dest_app** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.ip_vs_dest_app** %5, metadata !1449, metadata !220), !dbg !1450
  store %struct._real_server* %2, %struct._real_server** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._real_server** %6, metadata !1451, metadata !220), !dbg !1452
  %7 = load i32, i32* %4, align 4, !dbg !1453
  %8 = icmp ne i32 %7, 1159, !dbg !1455
  br i1 %8, label %9, label %16, !dbg !1456

; <label>:9:                                      ; preds = %3
  %10 = load i32, i32* %4, align 4, !dbg !1457
  %11 = icmp ne i32 %10, 1160, !dbg !1458
  br i1 %11, label %12, label %16, !dbg !1459

; <label>:12:                                     ; preds = %9
  %13 = load i32, i32* %4, align 4, !dbg !1460
  %14 = icmp ne i32 %13, 1161, !dbg !1461
  br i1 %14, label %15, label %16, !dbg !1462

; <label>:15:                                     ; preds = %12
  br label %76, !dbg !1464

; <label>:16:                                     ; preds = %12, %9, %3
  %17 = load %struct.ip_vs_dest_app*, %struct.ip_vs_dest_app** %5, align 8, !dbg !1465
  %18 = bitcast %struct.ip_vs_dest_app* %17 to i8*, !dbg !1466
  call void @llvm.memset.p0i8.i64(i8* %18, i8 0, i64 44, i32 4, i1 false), !dbg !1466
  %19 = load %struct._real_server*, %struct._real_server** %6, align 8, !dbg !1467
  %20 = getelementptr inbounds %struct._real_server, %struct._real_server* %19, i32 0, i32 0, !dbg !1468
  %21 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %20, i32 0, i32 0, !dbg !1469
  %22 = load i16, i16* %21, align 8, !dbg !1469
  %23 = load %struct.ip_vs_dest_app*, %struct.ip_vs_dest_app** %5, align 8, !dbg !1470
  %24 = getelementptr inbounds %struct.ip_vs_dest_app, %struct.ip_vs_dest_app* %23, i32 0, i32 1, !dbg !1471
  store i16 %22, i16* %24, align 4, !dbg !1472
  %25 = load %struct._real_server*, %struct._real_server** %6, align 8, !dbg !1473
  %26 = getelementptr inbounds %struct._real_server, %struct._real_server* %25, i32 0, i32 0, !dbg !1475
  %27 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %26, i32 0, i32 0, !dbg !1476
  %28 = load i16, i16* %27, align 8, !dbg !1476
  %29 = zext i16 %28 to i32, !dbg !1473
  %30 = icmp eq i32 %29, 10, !dbg !1477
  br i1 %30, label %31, label %38, !dbg !1478

; <label>:31:                                     ; preds = %16
  %32 = load %struct._real_server*, %struct._real_server** %6, align 8, !dbg !1479
  %33 = getelementptr inbounds %struct._real_server, %struct._real_server* %32, i32 0, i32 0, !dbg !1480
  %34 = load %struct.ip_vs_dest_app*, %struct.ip_vs_dest_app** %5, align 8, !dbg !1481
  %35 = getelementptr inbounds %struct.ip_vs_dest_app, %struct.ip_vs_dest_app* %34, i32 0, i32 2, !dbg !1482
  %36 = bitcast %union.nf_inet_addr* %35 to %struct.in6_addr*, !dbg !1483
  %37 = call i32 @inet_sockaddrip6(%struct.sockaddr_storage* %33, %struct.in6_addr* %36), !dbg !1484
  br label %45, !dbg !1484

; <label>:38:                                     ; preds = %16
  %39 = load %struct._real_server*, %struct._real_server** %6, align 8, !dbg !1485
  %40 = getelementptr inbounds %struct._real_server, %struct._real_server* %39, i32 0, i32 0, !dbg !1486
  %41 = call i32 @inet_sockaddrip4(%struct.sockaddr_storage* %40), !dbg !1487
  %42 = load %struct.ip_vs_dest_app*, %struct.ip_vs_dest_app** %5, align 8, !dbg !1488
  %43 = getelementptr inbounds %struct.ip_vs_dest_app, %struct.ip_vs_dest_app* %42, i32 0, i32 2, !dbg !1489
  %44 = bitcast %union.nf_inet_addr* %43 to i32*, !dbg !1490
  store i32 %41, i32* %44, align 4, !dbg !1491
  br label %45

; <label>:45:                                     ; preds = %38, %31
  %46 = load %struct._real_server*, %struct._real_server** %6, align 8, !dbg !1492
  %47 = getelementptr inbounds %struct._real_server, %struct._real_server* %46, i32 0, i32 0, !dbg !1493
  %48 = call zeroext i16 @inet_sockaddrport(%struct.sockaddr_storage* %47), !dbg !1494
  %49 = load %struct.ip_vs_dest_app*, %struct.ip_vs_dest_app** %5, align 8, !dbg !1495
  %50 = getelementptr inbounds %struct.ip_vs_dest_app, %struct.ip_vs_dest_app* %49, i32 0, i32 0, !dbg !1496
  %51 = getelementptr inbounds %struct.ip_vs_dest_user, %struct.ip_vs_dest_user* %50, i32 0, i32 1, !dbg !1497
  store i16 %48, i16* %51, align 4, !dbg !1498
  %52 = load %struct._real_server*, %struct._real_server** %6, align 8, !dbg !1499
  %53 = getelementptr inbounds %struct._real_server, %struct._real_server* %52, i32 0, i32 4, !dbg !1500
  %54 = load i32, i32* %53, align 4, !dbg !1500
  %55 = load %struct.ip_vs_dest_app*, %struct.ip_vs_dest_app** %5, align 8, !dbg !1501
  %56 = getelementptr inbounds %struct.ip_vs_dest_app, %struct.ip_vs_dest_app* %55, i32 0, i32 0, !dbg !1502
  %57 = getelementptr inbounds %struct.ip_vs_dest_user, %struct.ip_vs_dest_user* %56, i32 0, i32 2, !dbg !1503
  store i32 %54, i32* %57, align 4, !dbg !1504
  %58 = load %struct._real_server*, %struct._real_server** %6, align 8, !dbg !1505
  %59 = getelementptr inbounds %struct._real_server, %struct._real_server* %58, i32 0, i32 1, !dbg !1506
  %60 = load i32, i32* %59, align 8, !dbg !1506
  %61 = load %struct.ip_vs_dest_app*, %struct.ip_vs_dest_app** %5, align 8, !dbg !1507
  %62 = getelementptr inbounds %struct.ip_vs_dest_app, %struct.ip_vs_dest_app* %61, i32 0, i32 0, !dbg !1508
  %63 = getelementptr inbounds %struct.ip_vs_dest_user, %struct.ip_vs_dest_user* %62, i32 0, i32 3, !dbg !1509
  store i32 %60, i32* %63, align 4, !dbg !1510
  %64 = load %struct._real_server*, %struct._real_server** %6, align 8, !dbg !1511
  %65 = getelementptr inbounds %struct._real_server, %struct._real_server* %64, i32 0, i32 5, !dbg !1512
  %66 = load i32, i32* %65, align 8, !dbg !1512
  %67 = load %struct.ip_vs_dest_app*, %struct.ip_vs_dest_app** %5, align 8, !dbg !1513
  %68 = getelementptr inbounds %struct.ip_vs_dest_app, %struct.ip_vs_dest_app* %67, i32 0, i32 0, !dbg !1514
  %69 = getelementptr inbounds %struct.ip_vs_dest_user, %struct.ip_vs_dest_user* %68, i32 0, i32 4, !dbg !1515
  store i32 %66, i32* %69, align 4, !dbg !1516
  %70 = load %struct._real_server*, %struct._real_server** %6, align 8, !dbg !1517
  %71 = getelementptr inbounds %struct._real_server, %struct._real_server* %70, i32 0, i32 6, !dbg !1518
  %72 = load i32, i32* %71, align 4, !dbg !1518
  %73 = load %struct.ip_vs_dest_app*, %struct.ip_vs_dest_app** %5, align 8, !dbg !1519
  %74 = getelementptr inbounds %struct.ip_vs_dest_app, %struct.ip_vs_dest_app* %73, i32 0, i32 0, !dbg !1520
  %75 = getelementptr inbounds %struct.ip_vs_dest_user, %struct.ip_vs_dest_user* %74, i32 0, i32 5, !dbg !1521
  store i32 %72, i32* %75, align 4, !dbg !1522
  br label %76, !dbg !1523

; <label>:76:                                     ; preds = %45, %15
  ret void, !dbg !1524
}

; Function Attrs: nounwind uwtable
define internal i32 @ipvs_group_cmd(i32, %struct.ip_vs_service_app*, %struct.ip_vs_dest_app*, %struct._virtual_server*, %struct._real_server*) #0 !dbg !1525 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ip_vs_service_app*, align 8
  %9 = alloca %struct.ip_vs_dest_app*, align 8
  %10 = alloca %struct._virtual_server*, align 8
  %11 = alloca %struct._real_server*, align 8
  %12 = alloca %struct._virtual_server_group*, align 8
  %13 = alloca %struct._virtual_server_group_entry*, align 8
  %14 = alloca %struct._element*, align 8
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1528, metadata !220), !dbg !1529
  store %struct.ip_vs_service_app* %1, %struct.ip_vs_service_app** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.ip_vs_service_app** %8, metadata !1530, metadata !220), !dbg !1531
  store %struct.ip_vs_dest_app* %2, %struct.ip_vs_dest_app** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.ip_vs_dest_app** %9, metadata !1532, metadata !220), !dbg !1533
  store %struct._virtual_server* %3, %struct._virtual_server** %10, align 8
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %10, metadata !1534, metadata !220), !dbg !1535
  store %struct._real_server* %4, %struct._real_server** %11, align 8
  call void @llvm.dbg.declare(metadata %struct._real_server** %11, metadata !1536, metadata !220), !dbg !1537
  call void @llvm.dbg.declare(metadata %struct._virtual_server_group** %12, metadata !1538, metadata !220), !dbg !1539
  %15 = load %struct._virtual_server*, %struct._virtual_server** %10, align 8, !dbg !1540
  %16 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %15, i32 0, i32 1, !dbg !1541
  %17 = load %struct._virtual_server_group*, %struct._virtual_server_group** %16, align 8, !dbg !1541
  store %struct._virtual_server_group* %17, %struct._virtual_server_group** %12, align 8, !dbg !1539
  call void @llvm.dbg.declare(metadata %struct._virtual_server_group_entry** %13, metadata !1542, metadata !220), !dbg !1566
  call void @llvm.dbg.declare(metadata %struct._element** %14, metadata !1567, metadata !220), !dbg !1568
  %18 = load %struct._virtual_server_group*, %struct._virtual_server_group** %12, align 8, !dbg !1569
  %19 = icmp ne %struct._virtual_server_group* %18, null, !dbg !1569
  br i1 %19, label %21, label %20, !dbg !1571

; <label>:20:                                     ; preds = %5
  store i32 0, i32* %6, align 4, !dbg !1572
  br label %196, !dbg !1572

; <label>:21:                                     ; preds = %5
  %22 = load %struct._virtual_server_group*, %struct._virtual_server_group** %12, align 8, !dbg !1573
  %23 = getelementptr inbounds %struct._virtual_server_group, %struct._virtual_server_group* %22, i32 0, i32 1, !dbg !1575
  %24 = load %struct._list*, %struct._list** %23, align 8, !dbg !1575
  %25 = icmp ne %struct._list* %24, null, !dbg !1576
  br i1 %25, label %26, label %40, !dbg !1576

; <label>:26:                                     ; preds = %21
  %27 = load %struct._virtual_server_group*, %struct._virtual_server_group** %12, align 8, !dbg !1577
  %28 = getelementptr inbounds %struct._virtual_server_group, %struct._virtual_server_group* %27, i32 0, i32 1, !dbg !1579
  %29 = load %struct._list*, %struct._list** %28, align 8, !dbg !1579
  %30 = icmp ne %struct._list* %29, null, !dbg !1580
  br i1 %30, label %32, label %31, !dbg !1581

; <label>:31:                                     ; preds = %26
  br label %38, !dbg !1582

; <label>:32:                                     ; preds = %26
  %33 = load %struct._virtual_server_group*, %struct._virtual_server_group** %12, align 8, !dbg !1584
  %34 = getelementptr inbounds %struct._virtual_server_group, %struct._virtual_server_group* %33, i32 0, i32 1, !dbg !1586
  %35 = load %struct._list*, %struct._list** %34, align 8, !dbg !1586
  %36 = getelementptr inbounds %struct._list, %struct._list* %35, i32 0, i32 0, !dbg !1587
  %37 = load %struct._element*, %struct._element** %36, align 8, !dbg !1587
  br label %38, !dbg !1588

; <label>:38:                                     ; preds = %32, %31
  %39 = phi %struct._element* [ null, %31 ], [ %37, %32 ], !dbg !1589
  br label %41, !dbg !1591

; <label>:40:                                     ; preds = %21
  br label %41, !dbg !1592

; <label>:41:                                     ; preds = %40, %38
  %42 = phi %struct._element* [ %39, %38 ], [ null, %40 ], !dbg !1594
  store %struct._element* %42, %struct._element** %14, align 8, !dbg !1596
  br label %43, !dbg !1597

; <label>:43:                                     ; preds = %123, %41
  %44 = load %struct._element*, %struct._element** %14, align 8, !dbg !1598
  %45 = icmp ne %struct._element* %44, null, !dbg !1601
  br i1 %45, label %46, label %51, !dbg !1602

; <label>:46:                                     ; preds = %43
  %47 = load %struct._element*, %struct._element** %14, align 8, !dbg !1603
  %48 = getelementptr inbounds %struct._element, %struct._element* %47, i32 0, i32 2, !dbg !1605
  %49 = load i8*, i8** %48, align 8, !dbg !1605
  %50 = bitcast i8* %49 to %struct._virtual_server_group_entry*, !dbg !1606
  store %struct._virtual_server_group_entry* %50, %struct._virtual_server_group_entry** %13, align 8, !dbg !1607
  br label %51

; <label>:51:                                     ; preds = %46, %43
  %52 = phi i1 [ false, %43 ], [ true, %46 ]
  br i1 %52, label %53, label %127, !dbg !1608

; <label>:53:                                     ; preds = %51
  %54 = load i32, i32* %7, align 4, !dbg !1610
  %55 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %13, align 8, !dbg !1613
  %56 = load %struct._virtual_server*, %struct._virtual_server** %10, align 8, !dbg !1614
  %57 = load %struct._real_server*, %struct._real_server** %11, align 8, !dbg !1615
  %58 = call zeroext i1 @ipvs_change_needed(i32 %54, %struct._virtual_server_group_entry* %55, %struct._virtual_server* %56, %struct._real_server* %57), !dbg !1616
  br i1 %58, label %59, label %119, !dbg !1617

; <label>:59:                                     ; preds = %53
  %60 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %13, align 8, !dbg !1618
  %61 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %60, i32 0, i32 1, !dbg !1620
  %62 = bitcast %union.anon.2* %61 to %struct.anon.3*, !dbg !1620
  %63 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %62, i32 0, i32 0, !dbg !1620
  %64 = call zeroext i16 @inet_sockaddrport(%struct.sockaddr_storage* %63), !dbg !1621
  %65 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %8, align 8, !dbg !1622
  %66 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %65, i32 0, i32 0, !dbg !1623
  %67 = getelementptr inbounds %struct.ip_vs_service_user, %struct.ip_vs_service_user* %66, i32 0, i32 2, !dbg !1624
  store i16 %64, i16* %67, align 4, !dbg !1625
  %68 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %13, align 8, !dbg !1626
  %69 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %68, i32 0, i32 1, !dbg !1628
  %70 = bitcast %union.anon.2* %69 to %struct.anon.3*, !dbg !1628
  %71 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %70, i32 0, i32 1, !dbg !1628
  %72 = load i32, i32* %71, align 8, !dbg !1628
  %73 = icmp ne i32 %72, 0, !dbg !1626
  br i1 %73, label %74, label %83, !dbg !1629

; <label>:74:                                     ; preds = %59
  %75 = load i32, i32* %7, align 4, !dbg !1630
  %76 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %8, align 8, !dbg !1633
  %77 = load %struct.ip_vs_dest_app*, %struct.ip_vs_dest_app** %9, align 8, !dbg !1634
  %78 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %13, align 8, !dbg !1635
  %79 = call i32 @ipvs_group_range_cmd(i32 %75, %struct.ip_vs_service_app* %76, %struct.ip_vs_dest_app* %77, %struct._virtual_server_group_entry* %78), !dbg !1636
  %80 = icmp ne i32 %79, 0, !dbg !1636
  br i1 %80, label %81, label %82, !dbg !1637

; <label>:81:                                     ; preds = %74
  store i32 -1, i32* %6, align 4, !dbg !1638
  br label %196, !dbg !1638

; <label>:82:                                     ; preds = %74
  br label %118, !dbg !1639

; <label>:83:                                     ; preds = %59
  %84 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %13, align 8, !dbg !1640
  %85 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %84, i32 0, i32 1, !dbg !1643
  %86 = bitcast %union.anon.2* %85 to %struct.anon.3*, !dbg !1643
  %87 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %86, i32 0, i32 0, !dbg !1643
  %88 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %87, i32 0, i32 0, !dbg !1644
  %89 = load i16, i16* %88, align 8, !dbg !1644
  %90 = zext i16 %89 to i32, !dbg !1640
  %91 = icmp eq i32 %90, 10, !dbg !1645
  br i1 %91, label %92, label %101, !dbg !1646

; <label>:92:                                     ; preds = %83
  %93 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %13, align 8, !dbg !1647
  %94 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %93, i32 0, i32 1, !dbg !1648
  %95 = bitcast %union.anon.2* %94 to %struct.anon.3*, !dbg !1648
  %96 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %95, i32 0, i32 0, !dbg !1648
  %97 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %8, align 8, !dbg !1649
  %98 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %97, i32 0, i32 2, !dbg !1650
  %99 = bitcast %union.nf_inet_addr* %98 to %struct.in6_addr*, !dbg !1651
  %100 = call i32 @inet_sockaddrip6(%struct.sockaddr_storage* %96, %struct.in6_addr* %99), !dbg !1652
  br label %110, !dbg !1652

; <label>:101:                                    ; preds = %83
  %102 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %13, align 8, !dbg !1653
  %103 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %102, i32 0, i32 1, !dbg !1654
  %104 = bitcast %union.anon.2* %103 to %struct.anon.3*, !dbg !1654
  %105 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %104, i32 0, i32 0, !dbg !1654
  %106 = call i32 @inet_sockaddrip4(%struct.sockaddr_storage* %105), !dbg !1655
  %107 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %8, align 8, !dbg !1656
  %108 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %107, i32 0, i32 2, !dbg !1657
  %109 = bitcast %union.nf_inet_addr* %108 to i32*, !dbg !1658
  store i32 %106, i32* %109, align 4, !dbg !1659
  br label %110

; <label>:110:                                    ; preds = %101, %92
  %111 = load i32, i32* %7, align 4, !dbg !1660
  %112 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %8, align 8, !dbg !1662
  %113 = load %struct.ip_vs_dest_app*, %struct.ip_vs_dest_app** %9, align 8, !dbg !1663
  %114 = call i32 @ipvs_talk(i32 %111, %struct.ip_vs_service_app* %112, %struct.ip_vs_dest_app* %113, %struct.ip_vs_daemon_app* null, i1 zeroext false), !dbg !1664
  %115 = icmp ne i32 %114, 0, !dbg !1664
  br i1 %115, label %116, label %117, !dbg !1665

; <label>:116:                                    ; preds = %110
  store i32 -1, i32* %6, align 4, !dbg !1666
  br label %196, !dbg !1666

; <label>:117:                                    ; preds = %110
  br label %118

; <label>:118:                                    ; preds = %117, %82
  br label %119, !dbg !1667

; <label>:119:                                    ; preds = %118, %53
  %120 = load i32, i32* %7, align 4, !dbg !1668
  %121 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %13, align 8, !dbg !1669
  %122 = load %struct._virtual_server*, %struct._virtual_server** %10, align 8, !dbg !1670
  call void @ipvs_set_vsge_alive_state(i32 %120, %struct._virtual_server_group_entry* %121, %struct._virtual_server* %122), !dbg !1671
  br label %123, !dbg !1672

; <label>:123:                                    ; preds = %119
  %124 = load %struct._element*, %struct._element** %14, align 8, !dbg !1673
  %125 = getelementptr inbounds %struct._element, %struct._element* %124, i32 0, i32 0, !dbg !1675
  %126 = load %struct._element*, %struct._element** %125, align 8, !dbg !1675
  store %struct._element* %126, %struct._element** %14, align 8, !dbg !1676
  br label %43, !dbg !1677, !llvm.loop !1678

; <label>:127:                                    ; preds = %51
  %128 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %8, align 8, !dbg !1680
  %129 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %128, i32 0, i32 2, !dbg !1681
  %130 = bitcast %union.nf_inet_addr* %129 to i8*, !dbg !1682
  call void @llvm.memset.p0i8.i64(i8* %130, i8 0, i64 16, i32 4, i1 false), !dbg !1682
  %131 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %8, align 8, !dbg !1683
  %132 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %131, i32 0, i32 0, !dbg !1684
  %133 = getelementptr inbounds %struct.ip_vs_service_user, %struct.ip_vs_service_user* %132, i32 0, i32 2, !dbg !1685
  store i16 0, i16* %133, align 4, !dbg !1686
  %134 = load %struct._virtual_server_group*, %struct._virtual_server_group** %12, align 8, !dbg !1687
  %135 = getelementptr inbounds %struct._virtual_server_group, %struct._virtual_server_group* %134, i32 0, i32 2, !dbg !1689
  %136 = load %struct._list*, %struct._list** %135, align 8, !dbg !1689
  %137 = icmp ne %struct._list* %136, null, !dbg !1690
  br i1 %137, label %138, label %152, !dbg !1690

; <label>:138:                                    ; preds = %127
  %139 = load %struct._virtual_server_group*, %struct._virtual_server_group** %12, align 8, !dbg !1691
  %140 = getelementptr inbounds %struct._virtual_server_group, %struct._virtual_server_group* %139, i32 0, i32 2, !dbg !1693
  %141 = load %struct._list*, %struct._list** %140, align 8, !dbg !1693
  %142 = icmp ne %struct._list* %141, null, !dbg !1694
  br i1 %142, label %144, label %143, !dbg !1695

; <label>:143:                                    ; preds = %138
  br label %150, !dbg !1696

; <label>:144:                                    ; preds = %138
  %145 = load %struct._virtual_server_group*, %struct._virtual_server_group** %12, align 8, !dbg !1698
  %146 = getelementptr inbounds %struct._virtual_server_group, %struct._virtual_server_group* %145, i32 0, i32 2, !dbg !1700
  %147 = load %struct._list*, %struct._list** %146, align 8, !dbg !1700
  %148 = getelementptr inbounds %struct._list, %struct._list* %147, i32 0, i32 0, !dbg !1701
  %149 = load %struct._element*, %struct._element** %148, align 8, !dbg !1701
  br label %150, !dbg !1702

; <label>:150:                                    ; preds = %144, %143
  %151 = phi %struct._element* [ null, %143 ], [ %149, %144 ], !dbg !1703
  br label %153, !dbg !1705

; <label>:152:                                    ; preds = %127
  br label %153, !dbg !1706

; <label>:153:                                    ; preds = %152, %150
  %154 = phi %struct._element* [ %151, %150 ], [ null, %152 ], !dbg !1708
  store %struct._element* %154, %struct._element** %14, align 8, !dbg !1710
  br label %155, !dbg !1711

; <label>:155:                                    ; preds = %191, %153
  %156 = load %struct._element*, %struct._element** %14, align 8, !dbg !1712
  %157 = icmp ne %struct._element* %156, null, !dbg !1715
  br i1 %157, label %158, label %163, !dbg !1716

; <label>:158:                                    ; preds = %155
  %159 = load %struct._element*, %struct._element** %14, align 8, !dbg !1717
  %160 = getelementptr inbounds %struct._element, %struct._element* %159, i32 0, i32 2, !dbg !1719
  %161 = load i8*, i8** %160, align 8, !dbg !1719
  %162 = bitcast i8* %161 to %struct._virtual_server_group_entry*, !dbg !1720
  store %struct._virtual_server_group_entry* %162, %struct._virtual_server_group_entry** %13, align 8, !dbg !1721
  br label %163

; <label>:163:                                    ; preds = %158, %155
  %164 = phi i1 [ false, %155 ], [ true, %158 ]
  br i1 %164, label %165, label %195, !dbg !1722

; <label>:165:                                    ; preds = %163
  %166 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %13, align 8, !dbg !1724
  %167 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %166, i32 0, i32 1, !dbg !1726
  %168 = bitcast %union.anon.2* %167 to %struct.anon.4*, !dbg !1726
  %169 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %168, i32 0, i32 0, !dbg !1726
  %170 = load i32, i32* %169, align 8, !dbg !1726
  %171 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %8, align 8, !dbg !1727
  %172 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %171, i32 0, i32 0, !dbg !1728
  %173 = getelementptr inbounds %struct.ip_vs_service_user, %struct.ip_vs_service_user* %172, i32 0, i32 3, !dbg !1729
  store i32 %170, i32* %173, align 4, !dbg !1730
  %174 = load i32, i32* %7, align 4, !dbg !1731
  %175 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %13, align 8, !dbg !1733
  %176 = load %struct._virtual_server*, %struct._virtual_server** %10, align 8, !dbg !1734
  %177 = load %struct._real_server*, %struct._real_server** %11, align 8, !dbg !1735
  %178 = call zeroext i1 @ipvs_change_needed(i32 %174, %struct._virtual_server_group_entry* %175, %struct._virtual_server* %176, %struct._real_server* %177), !dbg !1736
  br i1 %178, label %179, label %187, !dbg !1737

; <label>:179:                                    ; preds = %165
  %180 = load i32, i32* %7, align 4, !dbg !1738
  %181 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %8, align 8, !dbg !1741
  %182 = load %struct.ip_vs_dest_app*, %struct.ip_vs_dest_app** %9, align 8, !dbg !1742
  %183 = call i32 @ipvs_talk(i32 %180, %struct.ip_vs_service_app* %181, %struct.ip_vs_dest_app* %182, %struct.ip_vs_daemon_app* null, i1 zeroext false), !dbg !1743
  %184 = icmp ne i32 %183, 0, !dbg !1743
  br i1 %184, label %185, label %186, !dbg !1744

; <label>:185:                                    ; preds = %179
  store i32 -1, i32* %6, align 4, !dbg !1745
  br label %196, !dbg !1745

; <label>:186:                                    ; preds = %179
  br label %187, !dbg !1746

; <label>:187:                                    ; preds = %186, %165
  %188 = load i32, i32* %7, align 4, !dbg !1747
  %189 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %13, align 8, !dbg !1748
  %190 = load %struct._virtual_server*, %struct._virtual_server** %10, align 8, !dbg !1749
  call void @ipvs_set_vsge_alive_state(i32 %188, %struct._virtual_server_group_entry* %189, %struct._virtual_server* %190), !dbg !1750
  br label %191, !dbg !1751

; <label>:191:                                    ; preds = %187
  %192 = load %struct._element*, %struct._element** %14, align 8, !dbg !1752
  %193 = getelementptr inbounds %struct._element, %struct._element* %192, i32 0, i32 0, !dbg !1754
  %194 = load %struct._element*, %struct._element** %193, align 8, !dbg !1754
  store %struct._element* %194, %struct._element** %14, align 8, !dbg !1755
  br label %155, !dbg !1756, !llvm.loop !1757

; <label>:195:                                    ; preds = %163
  store i32 0, i32* %6, align 4, !dbg !1759
  br label %196, !dbg !1759

; <label>:196:                                    ; preds = %195, %185, %116, %81, %20
  %197 = load i32, i32* %6, align 4, !dbg !1760
  ret i32 %197, !dbg !1760
}

declare i32 @inet_sockaddrip6(%struct.sockaddr_storage*, %struct.in6_addr*) #3

declare i32 @inet_sockaddrip4(%struct.sockaddr_storage*) #3

declare zeroext i16 @inet_sockaddrport(%struct.sockaddr_storage*) #3

; Function Attrs: nounwind uwtable
define void @ipvs_group_sync_entry(%struct._virtual_server*, %struct._virtual_server_group_entry*) #0 !dbg !1761 {
  %3 = alloca %struct._virtual_server*, align 8
  %4 = alloca %struct._virtual_server_group_entry*, align 8
  %5 = alloca %struct._real_server*, align 8
  %6 = alloca %struct._element*, align 8
  %7 = alloca %struct.ip_vs_service_app, align 4
  %8 = alloca %struct.ip_vs_dest_app, align 4
  store %struct._virtual_server* %0, %struct._virtual_server** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %3, metadata !1764, metadata !220), !dbg !1765
  store %struct._virtual_server_group_entry* %1, %struct._virtual_server_group_entry** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._virtual_server_group_entry** %4, metadata !1766, metadata !220), !dbg !1767
  call void @llvm.dbg.declare(metadata %struct._real_server** %5, metadata !1768, metadata !220), !dbg !1769
  call void @llvm.dbg.declare(metadata %struct._element** %6, metadata !1770, metadata !220), !dbg !1771
  call void @llvm.dbg.declare(metadata %struct.ip_vs_service_app* %7, metadata !1772, metadata !220), !dbg !1773
  call void @llvm.dbg.declare(metadata %struct.ip_vs_dest_app* %8, metadata !1774, metadata !220), !dbg !1775
  %9 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1776
  call void @ipvs_set_srule(i32 1159, %struct.ip_vs_service_app* %7, %struct._virtual_server* %9), !dbg !1777
  %10 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %4, align 8, !dbg !1778
  %11 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %10, i32 0, i32 0, !dbg !1780
  %12 = load i8, i8* %11, align 8, !dbg !1780
  %13 = trunc i8 %12 to i1, !dbg !1780
  br i1 %13, label %14, label %22, !dbg !1781

; <label>:14:                                     ; preds = %2
  %15 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %4, align 8, !dbg !1782
  %16 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %15, i32 0, i32 1, !dbg !1783
  %17 = bitcast %union.anon.2* %16 to %struct.anon.4*, !dbg !1783
  %18 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %17, i32 0, i32 0, !dbg !1783
  %19 = load i32, i32* %18, align 8, !dbg !1783
  %20 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %7, i32 0, i32 0, !dbg !1784
  %21 = getelementptr inbounds %struct.ip_vs_service_user, %struct.ip_vs_service_user* %20, i32 0, i32 3, !dbg !1785
  store i32 %19, i32* %21, align 4, !dbg !1786
  br label %30, !dbg !1787

; <label>:22:                                     ; preds = %2
  %23 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %4, align 8, !dbg !1788
  %24 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %23, i32 0, i32 1, !dbg !1789
  %25 = bitcast %union.anon.2* %24 to %struct.anon.3*, !dbg !1789
  %26 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %25, i32 0, i32 0, !dbg !1789
  %27 = call zeroext i16 @inet_sockaddrport(%struct.sockaddr_storage* %26), !dbg !1790
  %28 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %7, i32 0, i32 0, !dbg !1791
  %29 = getelementptr inbounds %struct.ip_vs_service_user, %struct.ip_vs_service_user* %28, i32 0, i32 2, !dbg !1792
  store i16 %27, i16* %29, align 4, !dbg !1793
  br label %30

; <label>:30:                                     ; preds = %22, %14
  %31 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1794
  %32 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %31, i32 0, i32 17, !dbg !1796
  %33 = load %struct._list*, %struct._list** %32, align 8, !dbg !1796
  %34 = icmp ne %struct._list* %33, null, !dbg !1797
  br i1 %34, label %35, label %49, !dbg !1797

; <label>:35:                                     ; preds = %30
  %36 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1798
  %37 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %36, i32 0, i32 17, !dbg !1800
  %38 = load %struct._list*, %struct._list** %37, align 8, !dbg !1800
  %39 = icmp ne %struct._list* %38, null, !dbg !1801
  br i1 %39, label %41, label %40, !dbg !1802

; <label>:40:                                     ; preds = %35
  br label %47, !dbg !1803

; <label>:41:                                     ; preds = %35
  %42 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1805
  %43 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %42, i32 0, i32 17, !dbg !1807
  %44 = load %struct._list*, %struct._list** %43, align 8, !dbg !1807
  %45 = getelementptr inbounds %struct._list, %struct._list* %44, i32 0, i32 0, !dbg !1808
  %46 = load %struct._element*, %struct._element** %45, align 8, !dbg !1808
  br label %47, !dbg !1809

; <label>:47:                                     ; preds = %41, %40
  %48 = phi %struct._element* [ null, %40 ], [ %46, %41 ], !dbg !1810
  br label %50, !dbg !1812

; <label>:49:                                     ; preds = %30
  br label %50, !dbg !1813

; <label>:50:                                     ; preds = %49, %47
  %51 = phi %struct._element* [ %48, %47 ], [ null, %49 ], !dbg !1815
  store %struct._element* %51, %struct._element** %6, align 8, !dbg !1817
  br label %52, !dbg !1818

; <label>:52:                                     ; preds = %113, %50
  %53 = load %struct._element*, %struct._element** %6, align 8, !dbg !1819
  %54 = icmp ne %struct._element* %53, null, !dbg !1822
  br i1 %54, label %55, label %60, !dbg !1823

; <label>:55:                                     ; preds = %52
  %56 = load %struct._element*, %struct._element** %6, align 8, !dbg !1824
  %57 = getelementptr inbounds %struct._element, %struct._element* %56, i32 0, i32 2, !dbg !1826
  %58 = load i8*, i8** %57, align 8, !dbg !1826
  %59 = bitcast i8* %58 to %struct._real_server*, !dbg !1827
  store %struct._real_server* %59, %struct._real_server** %5, align 8, !dbg !1828
  br label %60

; <label>:60:                                     ; preds = %55, %52
  %61 = phi i1 [ false, %52 ], [ true, %55 ]
  br i1 %61, label %62, label %117, !dbg !1829

; <label>:62:                                     ; preds = %60
  %63 = load %struct._real_server*, %struct._real_server** %5, align 8, !dbg !1831
  %64 = getelementptr inbounds %struct._real_server, %struct._real_server* %63, i32 0, i32 19, !dbg !1834
  %65 = load i8, i8* %64, align 1, !dbg !1834
  %66 = trunc i8 %65 to i1, !dbg !1834
  br i1 %66, label %67, label %112, !dbg !1835

; <label>:67:                                     ; preds = %62
  %68 = load %struct._real_server*, %struct._real_server** %5, align 8, !dbg !1836
  %69 = getelementptr inbounds %struct._real_server, %struct._real_server* %68, i32 0, i32 16, !dbg !1838
  %70 = load i8, i8* %69, align 4, !dbg !1838
  %71 = trunc i8 %70 to i1, !dbg !1838
  br i1 %71, label %82, label %72, !dbg !1839

; <label>:72:                                     ; preds = %67
  %73 = load %struct._real_server*, %struct._real_server** %5, align 8, !dbg !1840
  %74 = getelementptr inbounds %struct._real_server, %struct._real_server* %73, i32 0, i32 7, !dbg !1842
  %75 = load i32, i32* %74, align 8, !dbg !1842
  %76 = icmp ne i32 %75, 0, !dbg !1840
  br i1 %76, label %77, label %112, !dbg !1843

; <label>:77:                                     ; preds = %72
  %78 = load %struct._real_server*, %struct._real_server** %5, align 8, !dbg !1844
  %79 = getelementptr inbounds %struct._real_server, %struct._real_server* %78, i32 0, i32 18, !dbg !1846
  %80 = load i8, i8* %79, align 4, !dbg !1846
  %81 = trunc i8 %80 to i1, !dbg !1846
  br i1 %81, label %82, label %112, !dbg !1847

; <label>:82:                                     ; preds = %77, %67
  %83 = load %struct._real_server*, %struct._real_server** %5, align 8, !dbg !1848
  call void @ipvs_set_drule(i32 1159, %struct.ip_vs_dest_app* %8, %struct._real_server* %83), !dbg !1850
  %84 = load %struct._real_server*, %struct._real_server** %5, align 8, !dbg !1851
  %85 = getelementptr inbounds %struct._real_server, %struct._real_server* %84, i32 0, i32 7, !dbg !1852
  %86 = load i32, i32* %85, align 8, !dbg !1852
  %87 = icmp ne i32 %86, 0, !dbg !1851
  br i1 %87, label %88, label %94, !dbg !1853

; <label>:88:                                     ; preds = %82
  %89 = load %struct._real_server*, %struct._real_server** %5, align 8, !dbg !1854
  %90 = getelementptr inbounds %struct._real_server, %struct._real_server* %89, i32 0, i32 16, !dbg !1856
  %91 = load i8, i8* %90, align 4, !dbg !1856
  %92 = trunc i8 %91 to i1, !dbg !1856
  br i1 %92, label %94, label %93, !dbg !1857

; <label>:93:                                     ; preds = %88
  br label %98, !dbg !1858

; <label>:94:                                     ; preds = %88, %82
  %95 = load %struct._real_server*, %struct._real_server** %5, align 8, !dbg !1860
  %96 = getelementptr inbounds %struct._real_server, %struct._real_server* %95, i32 0, i32 1, !dbg !1862
  %97 = load i32, i32* %96, align 8, !dbg !1862
  br label %98, !dbg !1863

; <label>:98:                                     ; preds = %94, %93
  %99 = phi i32 [ 0, %93 ], [ %97, %94 ], !dbg !1864
  %100 = getelementptr inbounds %struct.ip_vs_dest_app, %struct.ip_vs_dest_app* %8, i32 0, i32 0, !dbg !1866
  %101 = getelementptr inbounds %struct.ip_vs_dest_user, %struct.ip_vs_dest_user* %100, i32 0, i32 3, !dbg !1867
  store i32 %99, i32* %101, align 4, !dbg !1868
  %102 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %4, align 8, !dbg !1869
  %103 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %102, i32 0, i32 0, !dbg !1871
  %104 = load i8, i8* %103, align 8, !dbg !1871
  %105 = trunc i8 %104 to i1, !dbg !1871
  br i1 %105, label %106, label %108, !dbg !1872

; <label>:106:                                    ; preds = %98
  %107 = call i32 @ipvs_talk(i32 1159, %struct.ip_vs_service_app* %7, %struct.ip_vs_dest_app* %8, %struct.ip_vs_daemon_app* null, i1 zeroext false), !dbg !1873
  br label %111, !dbg !1875

; <label>:108:                                    ; preds = %98
  %109 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %4, align 8, !dbg !1876
  %110 = call i32 @ipvs_group_range_cmd(i32 1159, %struct.ip_vs_service_app* %7, %struct.ip_vs_dest_app* %8, %struct._virtual_server_group_entry* %109), !dbg !1877
  br label %111

; <label>:111:                                    ; preds = %108, %106
  br label %112, !dbg !1878

; <label>:112:                                    ; preds = %111, %77, %72, %62
  br label %113, !dbg !1879

; <label>:113:                                    ; preds = %112
  %114 = load %struct._element*, %struct._element** %6, align 8, !dbg !1880
  %115 = getelementptr inbounds %struct._element, %struct._element* %114, i32 0, i32 0, !dbg !1882
  %116 = load %struct._element*, %struct._element** %115, align 8, !dbg !1882
  store %struct._element* %116, %struct._element** %6, align 8, !dbg !1883
  br label %52, !dbg !1884, !llvm.loop !1885

; <label>:117:                                    ; preds = %60
  ret void, !dbg !1887
}

; Function Attrs: nounwind uwtable
define internal i32 @ipvs_group_range_cmd(i32, %struct.ip_vs_service_app*, %struct.ip_vs_dest_app*, %struct._virtual_server_group_entry*) #0 !dbg !1888 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ip_vs_service_app*, align 8
  %8 = alloca %struct.ip_vs_dest_app*, align 8
  %9 = alloca %struct._virtual_server_group_entry*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1891, metadata !220), !dbg !1892
  store %struct.ip_vs_service_app* %1, %struct.ip_vs_service_app** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.ip_vs_service_app** %7, metadata !1893, metadata !220), !dbg !1894
  store %struct.ip_vs_dest_app* %2, %struct.ip_vs_dest_app** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.ip_vs_dest_app** %8, metadata !1895, metadata !220), !dbg !1896
  store %struct._virtual_server_group_entry* %3, %struct._virtual_server_group_entry** %9, align 8
  call void @llvm.dbg.declare(metadata %struct._virtual_server_group_entry** %9, metadata !1897, metadata !220), !dbg !1898
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1899, metadata !220), !dbg !1900
  %11 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %9, align 8, !dbg !1901
  %12 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %11, i32 0, i32 1, !dbg !1903
  %13 = bitcast %union.anon.2* %12 to %struct.anon.3*, !dbg !1903
  %14 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %13, i32 0, i32 0, !dbg !1903
  %15 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %14, i32 0, i32 0, !dbg !1904
  %16 = load i16, i16* %15, align 8, !dbg !1904
  %17 = zext i16 %16 to i32, !dbg !1901
  %18 = icmp eq i32 %17, 10, !dbg !1905
  br i1 %18, label %19, label %28, !dbg !1906

; <label>:19:                                     ; preds = %4
  %20 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %9, align 8, !dbg !1907
  %21 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %20, i32 0, i32 1, !dbg !1908
  %22 = bitcast %union.anon.2* %21 to %struct.anon.3*, !dbg !1908
  %23 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %22, i32 0, i32 0, !dbg !1908
  %24 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %7, align 8, !dbg !1909
  %25 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %24, i32 0, i32 2, !dbg !1910
  %26 = bitcast %union.nf_inet_addr* %25 to %struct.in6_addr*, !dbg !1911
  %27 = call i32 @inet_sockaddrip6(%struct.sockaddr_storage* %23, %struct.in6_addr* %26), !dbg !1912
  br label %37, !dbg !1912

; <label>:28:                                     ; preds = %4
  %29 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %9, align 8, !dbg !1913
  %30 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %29, i32 0, i32 1, !dbg !1914
  %31 = bitcast %union.anon.2* %30 to %struct.anon.3*, !dbg !1914
  %32 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %31, i32 0, i32 0, !dbg !1914
  %33 = call i32 @inet_sockaddrip4(%struct.sockaddr_storage* %32), !dbg !1915
  %34 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %7, align 8, !dbg !1916
  %35 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %34, i32 0, i32 2, !dbg !1917
  %36 = bitcast %union.nf_inet_addr* %35 to i32*, !dbg !1918
  store i32 %33, i32* %36, align 4, !dbg !1919
  br label %37

; <label>:37:                                     ; preds = %28, %19
  store i32 0, i32* %10, align 4, !dbg !1920
  br label %38, !dbg !1922

; <label>:38:                                     ; preds = %86, %37
  %39 = load i32, i32* %10, align 4, !dbg !1923
  %40 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %9, align 8, !dbg !1926
  %41 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %40, i32 0, i32 1, !dbg !1927
  %42 = bitcast %union.anon.2* %41 to %struct.anon.3*, !dbg !1927
  %43 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %42, i32 0, i32 1, !dbg !1927
  %44 = load i32, i32* %43, align 8, !dbg !1927
  %45 = icmp ule i32 %39, %44, !dbg !1928
  br i1 %45, label %46, label %89, !dbg !1929

; <label>:46:                                     ; preds = %38
  %47 = load i32, i32* %6, align 4, !dbg !1930
  %48 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %7, align 8, !dbg !1933
  %49 = load %struct.ip_vs_dest_app*, %struct.ip_vs_dest_app** %8, align 8, !dbg !1934
  %50 = call i32 @ipvs_talk(i32 %47, %struct.ip_vs_service_app* %48, %struct.ip_vs_dest_app* %49, %struct.ip_vs_daemon_app* null, i1 zeroext false), !dbg !1935
  %51 = icmp ne i32 %50, 0, !dbg !1935
  br i1 %51, label %52, label %53, !dbg !1936

; <label>:52:                                     ; preds = %46
  store i32 -1, i32* %5, align 4, !dbg !1937
  br label %90, !dbg !1937

; <label>:53:                                     ; preds = %46
  %54 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %7, align 8, !dbg !1938
  %55 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %54, i32 0, i32 1, !dbg !1940
  %56 = load i16, i16* %55, align 4, !dbg !1940
  %57 = zext i16 %56 to i32, !dbg !1938
  %58 = icmp eq i32 %57, 2, !dbg !1941
  br i1 %58, label %59, label %66, !dbg !1942

; <label>:59:                                     ; preds = %53
  %60 = call i32 @htonl(i32 1) #1, !dbg !1943
  %61 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %7, align 8, !dbg !1944
  %62 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %61, i32 0, i32 2, !dbg !1945
  %63 = bitcast %union.nf_inet_addr* %62 to i32*, !dbg !1946
  %64 = load i32, i32* %63, align 4, !dbg !1947
  %65 = add i32 %64, %60, !dbg !1947
  store i32 %65, i32* %63, align 4, !dbg !1947
  br label %85, !dbg !1944

; <label>:66:                                     ; preds = %53
  %67 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %7, align 8, !dbg !1948
  %68 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %67, i32 0, i32 2, !dbg !1949
  %69 = bitcast %union.nf_inet_addr* %68 to %struct.in6_addr*, !dbg !1950
  %70 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %69, i32 0, i32 0, !dbg !1951
  %71 = bitcast %union.anon* %70 to [8 x i16]*, !dbg !1952
  %72 = getelementptr inbounds [8 x i16], [8 x i16]* %71, i64 0, i64 7, !dbg !1948
  %73 = load i16, i16* %72, align 2, !dbg !1948
  %74 = call zeroext i16 @ntohs(i16 zeroext %73) #1, !dbg !1953
  %75 = zext i16 %74 to i32, !dbg !1953
  %76 = add nsw i32 %75, 1, !dbg !1954
  %77 = trunc i32 %76 to i16, !dbg !1953
  %78 = call zeroext i16 @htons(i16 zeroext %77) #1, !dbg !1955
  %79 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %7, align 8, !dbg !1957
  %80 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %79, i32 0, i32 2, !dbg !1958
  %81 = bitcast %union.nf_inet_addr* %80 to %struct.in6_addr*, !dbg !1959
  %82 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %81, i32 0, i32 0, !dbg !1960
  %83 = bitcast %union.anon* %82 to [8 x i16]*, !dbg !1961
  %84 = getelementptr inbounds [8 x i16], [8 x i16]* %83, i64 0, i64 7, !dbg !1957
  store i16 %78, i16* %84, align 2, !dbg !1962
  br label %85

; <label>:85:                                     ; preds = %66, %59
  br label %86, !dbg !1963

; <label>:86:                                     ; preds = %85
  %87 = load i32, i32* %10, align 4, !dbg !1964
  %88 = add i32 %87, 1, !dbg !1964
  store i32 %88, i32* %10, align 4, !dbg !1964
  br label %38, !dbg !1966, !llvm.loop !1967

; <label>:89:                                     ; preds = %38
  store i32 0, i32* %5, align 4, !dbg !1969
  br label %90, !dbg !1969

; <label>:90:                                     ; preds = %89, %52
  %91 = load i32, i32* %5, align 4, !dbg !1970
  ret i32 %91, !dbg !1970
}

; Function Attrs: nounwind uwtable
define void @ipvs_group_remove_entry(%struct._virtual_server*, %struct._virtual_server_group_entry*) #0 !dbg !1971 {
  %3 = alloca %struct._virtual_server*, align 8
  %4 = alloca %struct._virtual_server_group_entry*, align 8
  %5 = alloca %struct._real_server*, align 8
  %6 = alloca %struct._element*, align 8
  %7 = alloca %struct.ip_vs_service_app, align 4
  %8 = alloca %struct.ip_vs_dest_app, align 4
  store %struct._virtual_server* %0, %struct._virtual_server** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %3, metadata !1972, metadata !220), !dbg !1973
  store %struct._virtual_server_group_entry* %1, %struct._virtual_server_group_entry** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._virtual_server_group_entry** %4, metadata !1974, metadata !220), !dbg !1975
  call void @llvm.dbg.declare(metadata %struct._real_server** %5, metadata !1976, metadata !220), !dbg !1977
  call void @llvm.dbg.declare(metadata %struct._element** %6, metadata !1978, metadata !220), !dbg !1979
  call void @llvm.dbg.declare(metadata %struct.ip_vs_service_app* %7, metadata !1980, metadata !220), !dbg !1981
  call void @llvm.dbg.declare(metadata %struct.ip_vs_dest_app* %8, metadata !1982, metadata !220), !dbg !1983
  %9 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1984
  call void @ipvs_set_srule(i32 1160, %struct.ip_vs_service_app* %7, %struct._virtual_server* %9), !dbg !1985
  %10 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %4, align 8, !dbg !1986
  %11 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %10, i32 0, i32 0, !dbg !1988
  %12 = load i8, i8* %11, align 8, !dbg !1988
  %13 = trunc i8 %12 to i1, !dbg !1988
  br i1 %13, label %14, label %22, !dbg !1989

; <label>:14:                                     ; preds = %2
  %15 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %4, align 8, !dbg !1990
  %16 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %15, i32 0, i32 1, !dbg !1991
  %17 = bitcast %union.anon.2* %16 to %struct.anon.4*, !dbg !1991
  %18 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %17, i32 0, i32 0, !dbg !1991
  %19 = load i32, i32* %18, align 8, !dbg !1991
  %20 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %7, i32 0, i32 0, !dbg !1992
  %21 = getelementptr inbounds %struct.ip_vs_service_user, %struct.ip_vs_service_user* %20, i32 0, i32 3, !dbg !1993
  store i32 %19, i32* %21, align 4, !dbg !1994
  br label %30, !dbg !1995

; <label>:22:                                     ; preds = %2
  %23 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %4, align 8, !dbg !1996
  %24 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %23, i32 0, i32 1, !dbg !1997
  %25 = bitcast %union.anon.2* %24 to %struct.anon.3*, !dbg !1997
  %26 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %25, i32 0, i32 0, !dbg !1997
  %27 = call zeroext i16 @inet_sockaddrport(%struct.sockaddr_storage* %26), !dbg !1998
  %28 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %7, i32 0, i32 0, !dbg !1999
  %29 = getelementptr inbounds %struct.ip_vs_service_user, %struct.ip_vs_service_user* %28, i32 0, i32 2, !dbg !2000
  store i16 %27, i16* %29, align 4, !dbg !2001
  br label %30

; <label>:30:                                     ; preds = %22, %14
  %31 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !2002
  %32 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %31, i32 0, i32 17, !dbg !2004
  %33 = load %struct._list*, %struct._list** %32, align 8, !dbg !2004
  %34 = icmp ne %struct._list* %33, null, !dbg !2005
  br i1 %34, label %35, label %49, !dbg !2005

; <label>:35:                                     ; preds = %30
  %36 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !2006
  %37 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %36, i32 0, i32 17, !dbg !2008
  %38 = load %struct._list*, %struct._list** %37, align 8, !dbg !2008
  %39 = icmp ne %struct._list* %38, null, !dbg !2009
  br i1 %39, label %41, label %40, !dbg !2010

; <label>:40:                                     ; preds = %35
  br label %47, !dbg !2011

; <label>:41:                                     ; preds = %35
  %42 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !2013
  %43 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %42, i32 0, i32 17, !dbg !2015
  %44 = load %struct._list*, %struct._list** %43, align 8, !dbg !2015
  %45 = getelementptr inbounds %struct._list, %struct._list* %44, i32 0, i32 0, !dbg !2016
  %46 = load %struct._element*, %struct._element** %45, align 8, !dbg !2016
  br label %47, !dbg !2017

; <label>:47:                                     ; preds = %41, %40
  %48 = phi %struct._element* [ null, %40 ], [ %46, %41 ], !dbg !2018
  br label %50, !dbg !2020

; <label>:49:                                     ; preds = %30
  br label %50, !dbg !2021

; <label>:50:                                     ; preds = %49, %47
  %51 = phi %struct._element* [ %48, %47 ], [ null, %49 ], !dbg !2023
  store %struct._element* %51, %struct._element** %6, align 8, !dbg !2025
  br label %52, !dbg !2026

; <label>:52:                                     ; preds = %80, %50
  %53 = load %struct._element*, %struct._element** %6, align 8, !dbg !2027
  %54 = icmp ne %struct._element* %53, null, !dbg !2030
  br i1 %54, label %55, label %60, !dbg !2031

; <label>:55:                                     ; preds = %52
  %56 = load %struct._element*, %struct._element** %6, align 8, !dbg !2032
  %57 = getelementptr inbounds %struct._element, %struct._element* %56, i32 0, i32 2, !dbg !2034
  %58 = load i8*, i8** %57, align 8, !dbg !2034
  %59 = bitcast i8* %58 to %struct._real_server*, !dbg !2035
  store %struct._real_server* %59, %struct._real_server** %5, align 8, !dbg !2036
  br label %60

; <label>:60:                                     ; preds = %55, %52
  %61 = phi i1 [ false, %52 ], [ true, %55 ]
  br i1 %61, label %62, label %84, !dbg !2037

; <label>:62:                                     ; preds = %60
  %63 = load %struct._real_server*, %struct._real_server** %5, align 8, !dbg !2039
  %64 = getelementptr inbounds %struct._real_server, %struct._real_server* %63, i32 0, i32 16, !dbg !2042
  %65 = load i8, i8* %64, align 4, !dbg !2042
  %66 = trunc i8 %65 to i1, !dbg !2042
  br i1 %66, label %67, label %79, !dbg !2043

; <label>:67:                                     ; preds = %62
  %68 = load %struct._real_server*, %struct._real_server** %5, align 8, !dbg !2044
  call void @ipvs_set_drule(i32 1160, %struct.ip_vs_dest_app* %8, %struct._real_server* %68), !dbg !2046
  %69 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %4, align 8, !dbg !2047
  %70 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %69, i32 0, i32 0, !dbg !2049
  %71 = load i8, i8* %70, align 8, !dbg !2049
  %72 = trunc i8 %71 to i1, !dbg !2049
  br i1 %72, label %73, label %75, !dbg !2050

; <label>:73:                                     ; preds = %67
  %74 = call i32 @ipvs_talk(i32 1160, %struct.ip_vs_service_app* %7, %struct.ip_vs_dest_app* %8, %struct.ip_vs_daemon_app* null, i1 zeroext false), !dbg !2051
  br label %78, !dbg !2053

; <label>:75:                                     ; preds = %67
  %76 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %4, align 8, !dbg !2054
  %77 = call i32 @ipvs_group_range_cmd(i32 1160, %struct.ip_vs_service_app* %7, %struct.ip_vs_dest_app* %8, %struct._virtual_server_group_entry* %76), !dbg !2055
  br label %78

; <label>:78:                                     ; preds = %75, %73
  br label %79, !dbg !2056

; <label>:79:                                     ; preds = %78, %62
  br label %80, !dbg !2057

; <label>:80:                                     ; preds = %79
  %81 = load %struct._element*, %struct._element** %6, align 8, !dbg !2058
  %82 = getelementptr inbounds %struct._element, %struct._element* %81, i32 0, i32 0, !dbg !2060
  %83 = load %struct._element*, %struct._element** %82, align 8, !dbg !2060
  store %struct._element* %83, %struct._element** %6, align 8, !dbg !2061
  br label %52, !dbg !2062, !llvm.loop !2063

; <label>:84:                                     ; preds = %60
  %85 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %4, align 8, !dbg !2065
  %86 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !2066
  call void @unset_vsge_alive(%struct._virtual_server_group_entry* %85, %struct._virtual_server* %86), !dbg !2067
  %87 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %4, align 8, !dbg !2068
  %88 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !2070
  %89 = call zeroext i1 @is_vsge_alive(%struct._virtual_server_group_entry* %87, %struct._virtual_server* %88), !dbg !2071
  br i1 %89, label %103, label %90, !dbg !2072

; <label>:90:                                     ; preds = %84
  %91 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %4, align 8, !dbg !2073
  %92 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %91, i32 0, i32 1, !dbg !2076
  %93 = bitcast %union.anon.2* %92 to %struct.anon.3*, !dbg !2076
  %94 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %93, i32 0, i32 1, !dbg !2076
  %95 = load i32, i32* %94, align 8, !dbg !2076
  %96 = icmp ne i32 %95, 0, !dbg !2073
  br i1 %96, label %97, label %100, !dbg !2077

; <label>:97:                                     ; preds = %90
  %98 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %4, align 8, !dbg !2078
  %99 = call i32 @ipvs_group_range_cmd(i32 1156, %struct.ip_vs_service_app* %7, %struct.ip_vs_dest_app* null, %struct._virtual_server_group_entry* %98), !dbg !2079
  br label %102, !dbg !2079

; <label>:100:                                    ; preds = %90
  %101 = call i32 @ipvs_talk(i32 1156, %struct.ip_vs_service_app* %7, %struct.ip_vs_dest_app* null, %struct.ip_vs_daemon_app* null, i1 zeroext false), !dbg !2080
  br label %102

; <label>:102:                                    ; preds = %100, %97
  br label %103, !dbg !2081

; <label>:103:                                    ; preds = %102, %84
  ret void, !dbg !2082
}

; Function Attrs: nounwind uwtable
define internal void @unset_vsge_alive(%struct._virtual_server_group_entry*, %struct._virtual_server*) #0 !dbg !2083 {
  %3 = alloca %struct._virtual_server_group_entry*, align 8
  %4 = alloca %struct._virtual_server*, align 8
  store %struct._virtual_server_group_entry* %0, %struct._virtual_server_group_entry** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._virtual_server_group_entry** %3, metadata !2086, metadata !220), !dbg !2087
  store %struct._virtual_server* %1, %struct._virtual_server** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %4, metadata !2088, metadata !220), !dbg !2089
  %5 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %3, align 8, !dbg !2090
  %6 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !2091
  call void @update_vsge_alive_count(%struct._virtual_server_group_entry* %5, %struct._virtual_server* %6, i1 zeroext false), !dbg !2092
  ret void, !dbg !2093
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @is_vsge_alive(%struct._virtual_server_group_entry*, %struct._virtual_server*) #0 !dbg !2094 {
  %3 = alloca i1, align 1
  %4 = alloca %struct._virtual_server_group_entry*, align 8
  %5 = alloca %struct._virtual_server*, align 8
  store %struct._virtual_server_group_entry* %0, %struct._virtual_server_group_entry** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._virtual_server_group_entry** %4, metadata !2097, metadata !220), !dbg !2098
  store %struct._virtual_server* %1, %struct._virtual_server** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %5, metadata !2099, metadata !220), !dbg !2100
  %6 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %4, align 8, !dbg !2101
  %7 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %6, i32 0, i32 0, !dbg !2103
  %8 = load i8, i8* %7, align 8, !dbg !2103
  %9 = trunc i8 %8 to i1, !dbg !2103
  br i1 %9, label %10, label %34, !dbg !2104

; <label>:10:                                     ; preds = %2
  %11 = load %struct._virtual_server*, %struct._virtual_server** %5, align 8, !dbg !2105
  %12 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %11, i32 0, i32 5, !dbg !2108
  %13 = load i16, i16* %12, align 8, !dbg !2108
  %14 = zext i16 %13 to i32, !dbg !2105
  %15 = icmp eq i32 %14, 2, !dbg !2109
  br i1 %15, label %16, label %25, !dbg !2110

; <label>:16:                                     ; preds = %10
  %17 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %4, align 8, !dbg !2111
  %18 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %17, i32 0, i32 1, !dbg !2112
  %19 = bitcast %union.anon.2* %18 to %struct.anon.4*, !dbg !2112
  %20 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %19, i32 0, i32 1, !dbg !2112
  %21 = load i32, i32* %20, align 4, !dbg !2112
  %22 = icmp ne i32 %21, 0, !dbg !2113
  %23 = xor i1 %22, true, !dbg !2113
  %24 = xor i1 %23, true, !dbg !2114
  store i1 %24, i1* %3, align 1, !dbg !2115
  br label %73, !dbg !2115

; <label>:25:                                     ; preds = %10
  %26 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %4, align 8, !dbg !2116
  %27 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %26, i32 0, i32 1, !dbg !2117
  %28 = bitcast %union.anon.2* %27 to %struct.anon.4*, !dbg !2117
  %29 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %28, i32 0, i32 2, !dbg !2117
  %30 = load i32, i32* %29, align 8, !dbg !2117
  %31 = icmp ne i32 %30, 0, !dbg !2118
  %32 = xor i1 %31, true, !dbg !2118
  %33 = xor i1 %32, true, !dbg !2119
  store i1 %33, i1* %3, align 1, !dbg !2120
  br label %73, !dbg !2120

; <label>:34:                                     ; preds = %2
  %35 = load %struct._virtual_server*, %struct._virtual_server** %5, align 8, !dbg !2121
  %36 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %35, i32 0, i32 6, !dbg !2123
  %37 = load i16, i16* %36, align 2, !dbg !2123
  %38 = zext i16 %37 to i32, !dbg !2121
  %39 = icmp eq i32 %38, 6, !dbg !2124
  br i1 %39, label %40, label %49, !dbg !2125

; <label>:40:                                     ; preds = %34
  %41 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %4, align 8, !dbg !2126
  %42 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %41, i32 0, i32 1, !dbg !2127
  %43 = bitcast %union.anon.2* %42 to %struct.anon.3*, !dbg !2127
  %44 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %43, i32 0, i32 2, !dbg !2127
  %45 = load i32, i32* %44, align 4, !dbg !2127
  %46 = icmp ne i32 %45, 0, !dbg !2128
  %47 = xor i1 %46, true, !dbg !2128
  %48 = xor i1 %47, true, !dbg !2129
  store i1 %48, i1* %3, align 1, !dbg !2130
  br label %73, !dbg !2130

; <label>:49:                                     ; preds = %34
  %50 = load %struct._virtual_server*, %struct._virtual_server** %5, align 8, !dbg !2131
  %51 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %50, i32 0, i32 6, !dbg !2133
  %52 = load i16, i16* %51, align 2, !dbg !2133
  %53 = zext i16 %52 to i32, !dbg !2131
  %54 = icmp eq i32 %53, 17, !dbg !2134
  br i1 %54, label %55, label %64, !dbg !2135

; <label>:55:                                     ; preds = %49
  %56 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %4, align 8, !dbg !2136
  %57 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %56, i32 0, i32 1, !dbg !2137
  %58 = bitcast %union.anon.2* %57 to %struct.anon.3*, !dbg !2137
  %59 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %58, i32 0, i32 3, !dbg !2137
  %60 = load i32, i32* %59, align 8, !dbg !2137
  %61 = icmp ne i32 %60, 0, !dbg !2138
  %62 = xor i1 %61, true, !dbg !2138
  %63 = xor i1 %62, true, !dbg !2139
  store i1 %63, i1* %3, align 1, !dbg !2140
  br label %73, !dbg !2140

; <label>:64:                                     ; preds = %49
  %65 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %4, align 8, !dbg !2141
  %66 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %65, i32 0, i32 1, !dbg !2142
  %67 = bitcast %union.anon.2* %66 to %struct.anon.3*, !dbg !2142
  %68 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %67, i32 0, i32 4, !dbg !2142
  %69 = load i32, i32* %68, align 4, !dbg !2142
  %70 = icmp ne i32 %69, 0, !dbg !2143
  %71 = xor i1 %70, true, !dbg !2143
  %72 = xor i1 %71, true, !dbg !2144
  store i1 %72, i1* %3, align 1, !dbg !2145
  br label %73, !dbg !2145

; <label>:73:                                     ; preds = %64, %55, %40, %25, %16
  %74 = load i1, i1* %3, align 1, !dbg !2146
  ret i1 %74, !dbg !2146
}

; Function Attrs: nounwind uwtable
define void @ipvs_syncd_master(%struct.lvs_syncd_config*) #0 !dbg !2147 {
  %2 = alloca %struct.lvs_syncd_config*, align 8
  store %struct.lvs_syncd_config* %0, %struct.lvs_syncd_config** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.lvs_syncd_config** %2, metadata !2150, metadata !220), !dbg !2151
  %3 = load %struct.lvs_syncd_config*, %struct.lvs_syncd_config** %2, align 8, !dbg !2152
  call void @ipvs_syncd_cmd(i32 1164, %struct.lvs_syncd_config* %3, i32 2, i1 zeroext false, i1 zeroext false), !dbg !2153
  %4 = load %struct.lvs_syncd_config*, %struct.lvs_syncd_config** %2, align 8, !dbg !2154
  call void @ipvs_syncd_cmd(i32 1163, %struct.lvs_syncd_config* %4, i32 1, i1 zeroext false, i1 zeroext false), !dbg !2155
  ret void, !dbg !2156
}

; Function Attrs: nounwind uwtable
define void @ipvs_syncd_backup(%struct.lvs_syncd_config*) #0 !dbg !2157 {
  %2 = alloca %struct.lvs_syncd_config*, align 8
  store %struct.lvs_syncd_config* %0, %struct.lvs_syncd_config** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.lvs_syncd_config** %2, metadata !2158, metadata !220), !dbg !2159
  %3 = load %struct.lvs_syncd_config*, %struct.lvs_syncd_config** %2, align 8, !dbg !2160
  call void @ipvs_syncd_cmd(i32 1164, %struct.lvs_syncd_config* %3, i32 1, i1 zeroext false, i1 zeroext false), !dbg !2161
  %4 = load %struct.lvs_syncd_config*, %struct.lvs_syncd_config** %2, align 8, !dbg !2162
  call void @ipvs_syncd_cmd(i32 1163, %struct.lvs_syncd_config* %4, i32 2, i1 zeroext false, i1 zeroext false), !dbg !2163
  ret void, !dbg !2164
}

; Function Attrs: nounwind uwtable
define internal i8* @get_modprobe() #0 !dbg !2165 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2168, metadata !220), !dbg !2169
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2170, metadata !220), !dbg !2171
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2172, metadata !220), !dbg !2175
  %5 = call i8* @zalloc(i64 4096), !dbg !2176
  store i8* %5, i8** %3, align 8, !dbg !2177
  %6 = load i8*, i8** %3, align 8, !dbg !2178
  %7 = icmp ne i8* %6, null, !dbg !2178
  br i1 %7, label %9, label %8, !dbg !2180

; <label>:8:                                      ; preds = %0
  store i8* null, i8** %1, align 8, !dbg !2181
  br label %47, !dbg !2181

; <label>:9:                                      ; preds = %0
  %10 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0), i32 524288), !dbg !2182
  store i32 %10, i32* %2, align 4, !dbg !2183
  %11 = load i32, i32* %2, align 4, !dbg !2184
  %12 = icmp slt i32 %11, 0, !dbg !2186
  br i1 %12, label %13, label %15, !dbg !2187

; <label>:13:                                     ; preds = %9
  %14 = load i8*, i8** %3, align 8, !dbg !2188
  call void @free(i8* %14) #9, !dbg !2190
  store i8* null, i8** %3, align 8, !dbg !2191
  store i8* null, i8** %1, align 8, !dbg !2192
  br label %47, !dbg !2192

; <label>:15:                                     ; preds = %9
  %16 = load i32, i32* %2, align 4, !dbg !2193
  %17 = load i8*, i8** %3, align 8, !dbg !2194
  %18 = call i64 @read(i32 %16, i8* %17, i64 4096), !dbg !2195
  store i64 %18, i64* %4, align 8, !dbg !2196
  %19 = load i32, i32* %2, align 4, !dbg !2197
  %20 = call i32 @close(i32 %19), !dbg !2198
  %21 = load i64, i64* %4, align 8, !dbg !2199
  %22 = icmp sgt i64 %21, 0, !dbg !2201
  br i1 %22, label %23, label %45, !dbg !2202

; <label>:23:                                     ; preds = %15
  %24 = load i64, i64* %4, align 8, !dbg !2203
  %25 = icmp slt i64 %24, 4096, !dbg !2205
  br i1 %25, label %26, label %45, !dbg !2206

; <label>:26:                                     ; preds = %23
  %27 = load i64, i64* %4, align 8, !dbg !2207
  %28 = sub nsw i64 %27, 1, !dbg !2210
  %29 = load i8*, i8** %3, align 8, !dbg !2211
  %30 = getelementptr inbounds i8, i8* %29, i64 %28, !dbg !2211
  %31 = load i8, i8* %30, align 1, !dbg !2211
  %32 = sext i8 %31 to i32, !dbg !2211
  %33 = icmp eq i32 %32, 10, !dbg !2212
  br i1 %33, label %34, label %39, !dbg !2213

; <label>:34:                                     ; preds = %26
  %35 = load i64, i64* %4, align 8, !dbg !2214
  %36 = sub nsw i64 %35, 1, !dbg !2215
  %37 = load i8*, i8** %3, align 8, !dbg !2216
  %38 = getelementptr inbounds i8, i8* %37, i64 %36, !dbg !2216
  store i8 0, i8* %38, align 1, !dbg !2217
  br label %43, !dbg !2216

; <label>:39:                                     ; preds = %26
  %40 = load i64, i64* %4, align 8, !dbg !2218
  %41 = load i8*, i8** %3, align 8, !dbg !2219
  %42 = getelementptr inbounds i8, i8* %41, i64 %40, !dbg !2219
  store i8 0, i8* %42, align 1, !dbg !2220
  br label %43

; <label>:43:                                     ; preds = %39, %34
  %44 = load i8*, i8** %3, align 8, !dbg !2221
  store i8* %44, i8** %1, align 8, !dbg !2222
  br label %47, !dbg !2222

; <label>:45:                                     ; preds = %23, %15
  %46 = load i8*, i8** %3, align 8, !dbg !2223
  call void @free(i8* %46) #9, !dbg !2224
  store i8* null, i8** %3, align 8, !dbg !2225
  store i8* null, i8** %1, align 8, !dbg !2226
  br label %47, !dbg !2226

; <label>:47:                                     ; preds = %45, %43, %13, %8
  %48 = load i8*, i8** %1, align 8, !dbg !2227
  ret i8* %48, !dbg !2227
}

; Function Attrs: nounwind
declare i32 @sigemptyset(%struct.__sigset_t*) #6

; Function Attrs: nounwind
declare i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) #6

declare void @flush_log_file() #3

; Function Attrs: nounwind
declare i32 @fork() #6

; Function Attrs: nounwind
declare i32 @execv(i8*, i8**) #6

; Function Attrs: noreturn nounwind
declare void @exit(i32) #7

declare i32 @waitpid(i32, i32*, i32) #3

; Function Attrs: nounwind
declare i8* @strerror(i32) #6

; Function Attrs: nounwind
declare void @free(i8*) #6

declare i8* @zalloc(i64) #3

declare i32 @open(i8*, i32, ...) #3

declare i64 @read(i32, i8*, i64) #3

declare i32 @close(i32) #3

declare i32 @ipvs_start_daemon(%struct.ip_vs_daemon_app*) #3

declare i32 @ipvs_stop_daemon(%struct.ip_vs_daemon_app*) #3

declare i32 @ipvs_flush() #3

declare i32 @ipvs_add_service(%struct.ip_vs_service_app*) #3

declare i32 @ipvs_del_service(%struct.ip_vs_service_app*) #3

declare i32 @ipvs_update_service(%struct.ip_vs_service_app*) #3

declare i32 @ipvs_zero_service(%struct.ip_vs_service_app*) #3

declare i32 @ipvs_add_dest(%struct.ip_vs_service_app*, %struct.ip_vs_dest_app*) #3

declare i32 @ipvs_del_dest(%struct.ip_vs_service_app*, %struct.ip_vs_dest_app*) #3

declare i32 @ipvs_update_dest(%struct.ip_vs_service_app*, %struct.ip_vs_dest_app*) #3

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #6

; Function Attrs: nounwind uwtable
define internal zeroext i1 @ipvs_change_needed(i32, %struct._virtual_server_group_entry*, %struct._virtual_server*, %struct._real_server*) #0 !dbg !2228 {
  %5 = alloca i1, align 1
  %6 = alloca i32, align 4
  %7 = alloca %struct._virtual_server_group_entry*, align 8
  %8 = alloca %struct._virtual_server*, align 8
  %9 = alloca %struct._real_server*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2231, metadata !220), !dbg !2232
  store %struct._virtual_server_group_entry* %1, %struct._virtual_server_group_entry** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._virtual_server_group_entry** %7, metadata !2233, metadata !220), !dbg !2234
  store %struct._virtual_server* %2, %struct._virtual_server** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %8, metadata !2235, metadata !220), !dbg !2236
  store %struct._real_server* %3, %struct._real_server** %9, align 8
  call void @llvm.dbg.declare(metadata %struct._real_server** %9, metadata !2237, metadata !220), !dbg !2238
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2239, metadata !220), !dbg !2240
  %11 = load i32, i32* %6, align 4, !dbg !2241
  %12 = icmp eq i32 %11, 1154, !dbg !2243
  br i1 %12, label %13, label %18, !dbg !2244

; <label>:13:                                     ; preds = %4
  %14 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %7, align 8, !dbg !2245
  %15 = load %struct._virtual_server*, %struct._virtual_server** %8, align 8, !dbg !2246
  %16 = call zeroext i1 @is_vsge_alive(%struct._virtual_server_group_entry* %14, %struct._virtual_server* %15), !dbg !2247
  %17 = xor i1 %16, true, !dbg !2248
  store i1 %17, i1* %5, align 1, !dbg !2249
  br label %102, !dbg !2249

; <label>:18:                                     ; preds = %4
  %19 = load i32, i32* %6, align 4, !dbg !2250
  %20 = icmp eq i32 %19, 1156, !dbg !2252
  br i1 %20, label %21, label %84, !dbg !2253

; <label>:21:                                     ; preds = %18
  %22 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %7, align 8, !dbg !2254
  %23 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %22, i32 0, i32 0, !dbg !2256
  %24 = load i8, i8* %23, align 8, !dbg !2256
  %25 = trunc i8 %24 to i1, !dbg !2256
  br i1 %25, label %26, label %46, !dbg !2254

; <label>:26:                                     ; preds = %21
  %27 = load %struct._virtual_server*, %struct._virtual_server** %8, align 8, !dbg !2257
  %28 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %27, i32 0, i32 5, !dbg !2259
  %29 = load i16, i16* %28, align 8, !dbg !2259
  %30 = zext i16 %29 to i32, !dbg !2257
  %31 = icmp eq i32 %30, 2, !dbg !2260
  br i1 %31, label %32, label %38, !dbg !2257

; <label>:32:                                     ; preds = %26
  %33 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %7, align 8, !dbg !2261
  %34 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %33, i32 0, i32 1, !dbg !2263
  %35 = bitcast %union.anon.2* %34 to %struct.anon.4*, !dbg !2263
  %36 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %35, i32 0, i32 1, !dbg !2263
  %37 = load i32, i32* %36, align 4, !dbg !2263
  br label %44, !dbg !2264

; <label>:38:                                     ; preds = %26
  %39 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %7, align 8, !dbg !2265
  %40 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %39, i32 0, i32 1, !dbg !2267
  %41 = bitcast %union.anon.2* %40 to %struct.anon.4*, !dbg !2267
  %42 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %41, i32 0, i32 2, !dbg !2267
  %43 = load i32, i32* %42, align 8, !dbg !2267
  br label %44, !dbg !2268

; <label>:44:                                     ; preds = %38, %32
  %45 = phi i32 [ %37, %32 ], [ %43, %38 ], !dbg !2269
  br label %80, !dbg !2271

; <label>:46:                                     ; preds = %21
  %47 = load %struct._virtual_server*, %struct._virtual_server** %8, align 8, !dbg !2272
  %48 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %47, i32 0, i32 6, !dbg !2273
  %49 = load i16, i16* %48, align 2, !dbg !2273
  %50 = zext i16 %49 to i32, !dbg !2272
  %51 = icmp eq i32 %50, 6, !dbg !2274
  br i1 %51, label %52, label %58, !dbg !2272

; <label>:52:                                     ; preds = %46
  %53 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %7, align 8, !dbg !2275
  %54 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %53, i32 0, i32 1, !dbg !2276
  %55 = bitcast %union.anon.2* %54 to %struct.anon.3*, !dbg !2276
  %56 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %55, i32 0, i32 2, !dbg !2276
  %57 = load i32, i32* %56, align 4, !dbg !2276
  br label %78, !dbg !2277

; <label>:58:                                     ; preds = %46
  %59 = load %struct._virtual_server*, %struct._virtual_server** %8, align 8, !dbg !2278
  %60 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %59, i32 0, i32 6, !dbg !2279
  %61 = load i16, i16* %60, align 2, !dbg !2279
  %62 = zext i16 %61 to i32, !dbg !2278
  %63 = icmp eq i32 %62, 17, !dbg !2280
  br i1 %63, label %64, label %70, !dbg !2278

; <label>:64:                                     ; preds = %58
  %65 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %7, align 8, !dbg !2281
  %66 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %65, i32 0, i32 1, !dbg !2282
  %67 = bitcast %union.anon.2* %66 to %struct.anon.3*, !dbg !2282
  %68 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %67, i32 0, i32 3, !dbg !2282
  %69 = load i32, i32* %68, align 8, !dbg !2282
  br label %76, !dbg !2283

; <label>:70:                                     ; preds = %58
  %71 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %7, align 8, !dbg !2284
  %72 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %71, i32 0, i32 1, !dbg !2285
  %73 = bitcast %union.anon.2* %72 to %struct.anon.3*, !dbg !2285
  %74 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %73, i32 0, i32 4, !dbg !2285
  %75 = load i32, i32* %74, align 4, !dbg !2285
  br label %76, !dbg !2286

; <label>:76:                                     ; preds = %70, %64
  %77 = phi i32 [ %69, %64 ], [ %75, %70 ], !dbg !2287
  br label %78, !dbg !2288

; <label>:78:                                     ; preds = %76, %52
  %79 = phi i32 [ %57, %52 ], [ %77, %76 ], !dbg !2289
  br label %80, !dbg !2290

; <label>:80:                                     ; preds = %78, %44
  %81 = phi i32 [ %45, %44 ], [ %79, %78 ], !dbg !2292
  store i32 %81, i32* %10, align 4, !dbg !2294
  %82 = load i32, i32* %10, align 4, !dbg !2295
  %83 = icmp eq i32 %82, 1, !dbg !2296
  store i1 %83, i1* %5, align 1, !dbg !2297
  br label %102, !dbg !2297

; <label>:84:                                     ; preds = %18
  %85 = load i32, i32* %6, align 4, !dbg !2298
  %86 = icmp eq i32 %85, 1159, !dbg !2300
  br i1 %86, label %87, label %93, !dbg !2301

; <label>:87:                                     ; preds = %84
  %88 = load %struct._real_server*, %struct._real_server** %9, align 8, !dbg !2302
  %89 = getelementptr inbounds %struct._real_server, %struct._real_server* %88, i32 0, i32 16, !dbg !2303
  %90 = load i8, i8* %89, align 4, !dbg !2303
  %91 = trunc i8 %90 to i1, !dbg !2303
  %92 = xor i1 %91, true, !dbg !2304
  store i1 %92, i1* %5, align 1, !dbg !2305
  br label %102, !dbg !2305

; <label>:93:                                     ; preds = %84
  %94 = load i32, i32* %6, align 4, !dbg !2306
  %95 = icmp eq i32 %94, 1160, !dbg !2308
  br i1 %95, label %96, label %101, !dbg !2309

; <label>:96:                                     ; preds = %93
  %97 = load %struct._real_server*, %struct._real_server** %9, align 8, !dbg !2310
  %98 = getelementptr inbounds %struct._real_server, %struct._real_server* %97, i32 0, i32 16, !dbg !2311
  %99 = load i8, i8* %98, align 4, !dbg !2311
  %100 = trunc i8 %99 to i1, !dbg !2311
  store i1 %100, i1* %5, align 1, !dbg !2312
  br label %102, !dbg !2312

; <label>:101:                                    ; preds = %93
  store i1 true, i1* %5, align 1, !dbg !2313
  br label %102, !dbg !2313

; <label>:102:                                    ; preds = %101, %96, %87, %80, %13
  %103 = load i1, i1* %5, align 1, !dbg !2314
  ret i1 %103, !dbg !2314
}

; Function Attrs: nounwind uwtable
define internal void @ipvs_set_vsge_alive_state(i32, %struct._virtual_server_group_entry*, %struct._virtual_server*) #0 !dbg !2315 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._virtual_server_group_entry*, align 8
  %6 = alloca %struct._virtual_server*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2318, metadata !220), !dbg !2319
  store %struct._virtual_server_group_entry* %1, %struct._virtual_server_group_entry** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._virtual_server_group_entry** %5, metadata !2320, metadata !220), !dbg !2321
  store %struct._virtual_server* %2, %struct._virtual_server** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %6, metadata !2322, metadata !220), !dbg !2323
  %7 = load i32, i32* %4, align 4, !dbg !2324
  %8 = icmp eq i32 %7, 1154, !dbg !2326
  br i1 %8, label %9, label %12, !dbg !2327

; <label>:9:                                      ; preds = %3
  %10 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %5, align 8, !dbg !2328
  %11 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !2329
  call void @set_vsge_alive(%struct._virtual_server_group_entry* %10, %struct._virtual_server* %11), !dbg !2330
  br label %19, !dbg !2330

; <label>:12:                                     ; preds = %3
  %13 = load i32, i32* %4, align 4, !dbg !2331
  %14 = icmp eq i32 %13, 1156, !dbg !2333
  br i1 %14, label %15, label %18, !dbg !2334

; <label>:15:                                     ; preds = %12
  %16 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %5, align 8, !dbg !2335
  %17 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !2336
  call void @unset_vsge_alive(%struct._virtual_server_group_entry* %16, %struct._virtual_server* %17), !dbg !2337
  br label %18, !dbg !2337

; <label>:18:                                     ; preds = %15, %12
  br label %19

; <label>:19:                                     ; preds = %18, %9
  ret void, !dbg !2338
}

; Function Attrs: nounwind uwtable
define internal void @set_vsge_alive(%struct._virtual_server_group_entry*, %struct._virtual_server*) #0 !dbg !2339 {
  %3 = alloca %struct._virtual_server_group_entry*, align 8
  %4 = alloca %struct._virtual_server*, align 8
  store %struct._virtual_server_group_entry* %0, %struct._virtual_server_group_entry** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._virtual_server_group_entry** %3, metadata !2340, metadata !220), !dbg !2341
  store %struct._virtual_server* %1, %struct._virtual_server** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %4, metadata !2342, metadata !220), !dbg !2343
  %5 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %3, align 8, !dbg !2344
  %6 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !2345
  call void @update_vsge_alive_count(%struct._virtual_server_group_entry* %5, %struct._virtual_server* %6, i1 zeroext true), !dbg !2346
  ret void, !dbg !2347
}

; Function Attrs: nounwind uwtable
define internal void @update_vsge_alive_count(%struct._virtual_server_group_entry*, %struct._virtual_server*, i1 zeroext) #0 !dbg !2348 {
  %4 = alloca %struct._virtual_server_group_entry*, align 8
  %5 = alloca %struct._virtual_server*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32*, align 8
  store %struct._virtual_server_group_entry* %0, %struct._virtual_server_group_entry** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._virtual_server_group_entry** %4, metadata !2351, metadata !220), !dbg !2352
  store %struct._virtual_server* %1, %struct._virtual_server** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %5, metadata !2353, metadata !220), !dbg !2354
  %8 = zext i1 %2 to i8
  store i8 %8, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !2355, metadata !220), !dbg !2356
  call void @llvm.dbg.declare(metadata i32** %7, metadata !2357, metadata !220), !dbg !2359
  %9 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %4, align 8, !dbg !2360
  %10 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %9, i32 0, i32 0, !dbg !2362
  %11 = load i8, i8* %10, align 8, !dbg !2362
  %12 = trunc i8 %11 to i1, !dbg !2362
  br i1 %12, label %13, label %30, !dbg !2363

; <label>:13:                                     ; preds = %3
  %14 = load %struct._virtual_server*, %struct._virtual_server** %5, align 8, !dbg !2364
  %15 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %14, i32 0, i32 5, !dbg !2367
  %16 = load i16, i16* %15, align 8, !dbg !2367
  %17 = zext i16 %16 to i32, !dbg !2364
  %18 = icmp eq i32 %17, 2, !dbg !2368
  br i1 %18, label %19, label %24, !dbg !2369

; <label>:19:                                     ; preds = %13
  %20 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %4, align 8, !dbg !2370
  %21 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %20, i32 0, i32 1, !dbg !2371
  %22 = bitcast %union.anon.2* %21 to %struct.anon.4*, !dbg !2371
  %23 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %22, i32 0, i32 1, !dbg !2371
  store i32* %23, i32** %7, align 8, !dbg !2372
  br label %29, !dbg !2373

; <label>:24:                                     ; preds = %13
  %25 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %4, align 8, !dbg !2374
  %26 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %25, i32 0, i32 1, !dbg !2375
  %27 = bitcast %union.anon.2* %26 to %struct.anon.4*, !dbg !2375
  %28 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %27, i32 0, i32 2, !dbg !2375
  store i32* %28, i32** %7, align 8, !dbg !2376
  br label %29

; <label>:29:                                     ; preds = %24, %19
  br label %59, !dbg !2377

; <label>:30:                                     ; preds = %3
  %31 = load %struct._virtual_server*, %struct._virtual_server** %5, align 8, !dbg !2378
  %32 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %31, i32 0, i32 6, !dbg !2380
  %33 = load i16, i16* %32, align 2, !dbg !2380
  %34 = zext i16 %33 to i32, !dbg !2378
  %35 = icmp eq i32 %34, 6, !dbg !2381
  br i1 %35, label %36, label %41, !dbg !2382

; <label>:36:                                     ; preds = %30
  %37 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %4, align 8, !dbg !2383
  %38 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %37, i32 0, i32 1, !dbg !2384
  %39 = bitcast %union.anon.2* %38 to %struct.anon.3*, !dbg !2384
  %40 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %39, i32 0, i32 2, !dbg !2384
  store i32* %40, i32** %7, align 8, !dbg !2385
  br label %58, !dbg !2386

; <label>:41:                                     ; preds = %30
  %42 = load %struct._virtual_server*, %struct._virtual_server** %5, align 8, !dbg !2387
  %43 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %42, i32 0, i32 6, !dbg !2389
  %44 = load i16, i16* %43, align 2, !dbg !2389
  %45 = zext i16 %44 to i32, !dbg !2387
  %46 = icmp eq i32 %45, 17, !dbg !2390
  br i1 %46, label %47, label %52, !dbg !2391

; <label>:47:                                     ; preds = %41
  %48 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %4, align 8, !dbg !2392
  %49 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %48, i32 0, i32 1, !dbg !2393
  %50 = bitcast %union.anon.2* %49 to %struct.anon.3*, !dbg !2393
  %51 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %50, i32 0, i32 3, !dbg !2393
  store i32* %51, i32** %7, align 8, !dbg !2394
  br label %57, !dbg !2395

; <label>:52:                                     ; preds = %41
  %53 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %4, align 8, !dbg !2396
  %54 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %53, i32 0, i32 1, !dbg !2397
  %55 = bitcast %union.anon.2* %54 to %struct.anon.3*, !dbg !2397
  %56 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %55, i32 0, i32 4, !dbg !2397
  store i32* %56, i32** %7, align 8, !dbg !2398
  br label %57

; <label>:57:                                     ; preds = %52, %47
  br label %58

; <label>:58:                                     ; preds = %57, %36
  br label %59

; <label>:59:                                     ; preds = %58, %29
  %60 = load i8, i8* %6, align 1, !dbg !2399
  %61 = trunc i8 %60 to i1, !dbg !2399
  br i1 %61, label %62, label %66, !dbg !2401

; <label>:62:                                     ; preds = %59
  %63 = load i32*, i32** %7, align 8, !dbg !2402
  %64 = load i32, i32* %63, align 4, !dbg !2403
  %65 = add i32 %64, 1, !dbg !2403
  store i32 %65, i32* %63, align 4, !dbg !2403
  br label %70, !dbg !2404

; <label>:66:                                     ; preds = %59
  %67 = load i32*, i32** %7, align 8, !dbg !2405
  %68 = load i32, i32* %67, align 4, !dbg !2406
  %69 = add i32 %68, -1, !dbg !2406
  store i32 %69, i32* %67, align 4, !dbg !2406
  br label %70

; <label>:70:                                     ; preds = %66, %62
  ret void, !dbg !2407
}

; Function Attrs: nounwind readnone
declare i32 @htonl(i32) #4

; Function Attrs: nounwind readnone
declare zeroext i16 @htons(i16 zeroext) #4

; Function Attrs: nounwind readnone
declare zeroext i16 @ntohs(i16 zeroext) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!204, !205}
!llvm.ident = !{!206}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !61, globals: !115)
!1 = !DIFile(filename: "[inter]keepalived--check--ipvswrapper.o.i", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!2 = !{!3, !11, !32}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "chksum_compatibility", file: !4, line: 173, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "./../include/vrrp.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!5 = !{!6, !7, !8, !9, !10}
!6 = !DIEnumerator(name: "CHKSUM_COMPATIBILITY_NONE", value: 0)
!7 = !DIEnumerator(name: "CHKSUM_COMPATIBILITY_NEVER", value: 1)
!8 = !DIEnumerator(name: "CHKSUM_COMPATIBILITY_MIN_COMPAT", value: 2)
!9 = !DIEnumerator(name: "CHKSUM_COMPATIBILITY_CONFIG", value: 3)
!10 = !DIEnumerator(name: "CHKSUM_COMPATIBILITY_AUTO", value: 4)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 41, size: 32, align: 32, elements: !13)
!12 = !DIFile(filename: "../../lib/scheduler.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!13 = !{!14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31}
!14 = !DIEnumerator(name: "THREAD_READ", value: 0)
!15 = !DIEnumerator(name: "THREAD_WRITE", value: 1)
!16 = !DIEnumerator(name: "THREAD_TIMER", value: 2)
!17 = !DIEnumerator(name: "THREAD_TIMER_SHUTDOWN", value: 3)
!18 = !DIEnumerator(name: "THREAD_EVENT", value: 4)
!19 = !DIEnumerator(name: "THREAD_CHILD", value: 5)
!20 = !DIEnumerator(name: "THREAD_READY", value: 6)
!21 = !DIEnumerator(name: "THREAD_UNUSED", value: 7)
!22 = !DIEnumerator(name: "THREAD_WRITE_TIMEOUT", value: 8)
!23 = !DIEnumerator(name: "THREAD_READ_TIMEOUT", value: 9)
!24 = !DIEnumerator(name: "THREAD_CHILD_TIMEOUT", value: 10)
!25 = !DIEnumerator(name: "THREAD_TERMINATE_START", value: 11)
!26 = !DIEnumerator(name: "THREAD_TERMINATE", value: 12)
!27 = !DIEnumerator(name: "THREAD_READY_FD", value: 13)
!28 = !DIEnumerator(name: "THREAD_READ_ERROR", value: 14)
!29 = !DIEnumerator(name: "THREAD_WRITE_ERROR", value: 15)
!30 = !DIEnumerator(name: "THREAD_IF_UP", value: 16)
!31 = !DIEnumerator(name: "THREAD_IF_DOWN", value: 17)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !33, line: 40, size: 32, align: 32, elements: !34)
!33 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!34 = !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60}
!35 = !DIEnumerator(name: "IPPROTO_IP", value: 0)
!36 = !DIEnumerator(name: "IPPROTO_ICMP", value: 1)
!37 = !DIEnumerator(name: "IPPROTO_IGMP", value: 2)
!38 = !DIEnumerator(name: "IPPROTO_IPIP", value: 4)
!39 = !DIEnumerator(name: "IPPROTO_TCP", value: 6)
!40 = !DIEnumerator(name: "IPPROTO_EGP", value: 8)
!41 = !DIEnumerator(name: "IPPROTO_PUP", value: 12)
!42 = !DIEnumerator(name: "IPPROTO_UDP", value: 17)
!43 = !DIEnumerator(name: "IPPROTO_IDP", value: 22)
!44 = !DIEnumerator(name: "IPPROTO_TP", value: 29)
!45 = !DIEnumerator(name: "IPPROTO_DCCP", value: 33)
!46 = !DIEnumerator(name: "IPPROTO_IPV6", value: 41)
!47 = !DIEnumerator(name: "IPPROTO_RSVP", value: 46)
!48 = !DIEnumerator(name: "IPPROTO_GRE", value: 47)
!49 = !DIEnumerator(name: "IPPROTO_ESP", value: 50)
!50 = !DIEnumerator(name: "IPPROTO_AH", value: 51)
!51 = !DIEnumerator(name: "IPPROTO_MTP", value: 92)
!52 = !DIEnumerator(name: "IPPROTO_BEETPH", value: 94)
!53 = !DIEnumerator(name: "IPPROTO_ENCAP", value: 98)
!54 = !DIEnumerator(name: "IPPROTO_PIM", value: 103)
!55 = !DIEnumerator(name: "IPPROTO_COMP", value: 108)
!56 = !DIEnumerator(name: "IPPROTO_SCTP", value: 132)
!57 = !DIEnumerator(name: "IPPROTO_UDPLITE", value: 136)
!58 = !DIEnumerator(name: "IPPROTO_MPLS", value: 137)
!59 = !DIEnumerator(name: "IPPROTO_RAW", value: 255)
!60 = !DIEnumerator(name: "IPPROTO_MAX", value: 256)
!61 = !{!62, !63, !86, !110, !79}
!62 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !33, line: 239, size: 128, align: 32, elements: !65)
!65 = !{!66, !70, !74, !81}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !64, file: !33, line: 241, baseType: !67, size: 16, align: 16)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !68, line: 28, baseType: !69)
!68 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!69 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !64, file: !33, line: 242, baseType: !71, size: 16, align: 16, offset: 16)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !33, line: 119, baseType: !72)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !73, line: 49, baseType: !69)
!73 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!74 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !64, file: !33, line: 243, baseType: !75, size: 32, align: 32, offset: 32)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !33, line: 31, size: 32, align: 32, elements: !76)
!76 = !{!77}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !75, file: !33, line: 33, baseType: !78, size: 32, align: 32)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !33, line: 30, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !73, line: 51, baseType: !80)
!80 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !64, file: !33, line: 246, baseType: !82, size: 64, align: 8, offset: 64)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 64, align: 8, elements: !84)
!83 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!84 = !{!85}
!85 = !DISubrange(count: 8)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64, align: 64)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !33, line: 254, size: 224, align: 32, elements: !88)
!88 = !{!89, !90, !91, !92, !109}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !87, file: !33, line: 256, baseType: !67, size: 16, align: 16)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !87, file: !33, line: 257, baseType: !71, size: 16, align: 16, offset: 16)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !87, file: !33, line: 258, baseType: !79, size: 32, align: 32, offset: 32)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !87, file: !33, line: 259, baseType: !93, size: 128, align: 32, offset: 64)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !33, line: 211, size: 128, align: 32, elements: !94)
!94 = !{!95}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !93, file: !33, line: 220, baseType: !96, size: 128, align: 32)
!96 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !93, file: !33, line: 213, size: 128, align: 32, elements: !97)
!97 = !{!98, !103, !105}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !96, file: !33, line: 215, baseType: !99, size: 128, align: 8)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 128, align: 8, elements: !101)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !73, line: 48, baseType: !83)
!101 = !{!102}
!102 = !DISubrange(count: 16)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !96, file: !33, line: 217, baseType: !104, size: 128, align: 16)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 128, align: 16, elements: !84)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !96, file: !33, line: 218, baseType: !106, size: 128, align: 32)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 128, align: 32, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 4)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !87, file: !33, line: 260, baseType: !79, size: 32, align: 32, offset: 192)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !111, line: 85, baseType: !112)
!111 = !DIFile(filename: "/usr/include/signal.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64, align: 64)
!113 = !DISubroutineType(types: !114)
!114 = !{null, !62}
!115 = !{!116, !201}
!116 = distinct !DIGlobalVariable(name: "garp_delay", scope: !0, file: !117, line: 150, type: !118, isLocal: false, isDefinition: true, variable: %struct._list** @garp_delay)
!117 = !DIFile(filename: "./../include/vrrp_if.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !119, line: 31, baseType: !120)
!119 = !DIFile(filename: "../../lib/list.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64, align: 64)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_list", file: !119, line: 39, size: 320, align: 64, elements: !122)
!122 = !{!123, !131, !132, !133, !137}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !121, file: !119, line: 40, baseType: !124, size: 64, align: 64)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64, align: 64)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_element", file: !119, line: 33, size: 192, align: 64, elements: !126)
!126 = !{!127, !128, !129}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !125, file: !119, line: 34, baseType: !124, size: 64, align: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !125, file: !119, line: 35, baseType: !124, size: 64, align: 64, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !125, file: !119, line: 36, baseType: !130, size: 64, align: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !121, file: !119, line: 41, baseType: !124, size: 64, align: 64, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !121, file: !119, line: 42, baseType: !80, size: 32, align: 32, offset: 128)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !121, file: !119, line: 43, baseType: !134, size: 64, align: 64, offset: 192)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{null, !130}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "dump", scope: !121, file: !119, line: 44, baseType: !138, size: 64, align: 64, offset: 256)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64, align: 64)
!139 = !DISubroutineType(types: !140)
!140 = !{null, !141, !130}
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64, align: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !143, line: 48, baseType: !144)
!143 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !145, line: 241, size: 1728, align: 64, elements: !146)
!145 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!146 = !{!147, !148, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !169, !170, !171, !172, !176, !177, !179, !183, !186, !188, !189, !190, !191, !192, !196, !197}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !144, file: !145, line: 242, baseType: !62, size: 32, align: 32)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !144, file: !145, line: 247, baseType: !149, size: 64, align: 64, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64, align: 64)
!150 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !144, file: !145, line: 248, baseType: !149, size: 64, align: 64, offset: 128)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !144, file: !145, line: 249, baseType: !149, size: 64, align: 64, offset: 192)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !144, file: !145, line: 250, baseType: !149, size: 64, align: 64, offset: 256)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !144, file: !145, line: 251, baseType: !149, size: 64, align: 64, offset: 320)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !144, file: !145, line: 252, baseType: !149, size: 64, align: 64, offset: 384)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !144, file: !145, line: 253, baseType: !149, size: 64, align: 64, offset: 448)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !144, file: !145, line: 254, baseType: !149, size: 64, align: 64, offset: 512)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !144, file: !145, line: 256, baseType: !149, size: 64, align: 64, offset: 576)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !144, file: !145, line: 257, baseType: !149, size: 64, align: 64, offset: 640)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !144, file: !145, line: 258, baseType: !149, size: 64, align: 64, offset: 704)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !144, file: !145, line: 260, baseType: !162, size: 64, align: 64, offset: 768)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64, align: 64)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !145, line: 156, size: 192, align: 64, elements: !164)
!164 = !{!165, !166, !168}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !163, file: !145, line: 157, baseType: !162, size: 64, align: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !163, file: !145, line: 158, baseType: !167, size: 64, align: 64, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !163, file: !145, line: 162, baseType: !62, size: 32, align: 32, offset: 128)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !144, file: !145, line: 262, baseType: !167, size: 64, align: 64, offset: 832)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !144, file: !145, line: 264, baseType: !62, size: 32, align: 32, offset: 896)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !144, file: !145, line: 268, baseType: !62, size: 32, align: 32, offset: 928)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !144, file: !145, line: 270, baseType: !173, size: 64, align: 64, offset: 960)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !174, line: 131, baseType: !175)
!174 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!175 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !144, file: !145, line: 274, baseType: !69, size: 16, align: 16, offset: 1024)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !144, file: !145, line: 275, baseType: !178, size: 8, align: 8, offset: 1040)
!178 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !144, file: !145, line: 276, baseType: !180, size: 8, align: 8, offset: 1048)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 8, align: 8, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 1)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !144, file: !145, line: 280, baseType: !184, size: 64, align: 64, offset: 1088)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64, align: 64)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !145, line: 150, baseType: null)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !144, file: !145, line: 289, baseType: !187, size: 64, align: 64, offset: 1152)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !174, line: 132, baseType: !175)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !144, file: !145, line: 297, baseType: !130, size: 64, align: 64, offset: 1216)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !144, file: !145, line: 298, baseType: !130, size: 64, align: 64, offset: 1280)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !144, file: !145, line: 299, baseType: !130, size: 64, align: 64, offset: 1344)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !144, file: !145, line: 300, baseType: !130, size: 64, align: 64, offset: 1408)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !144, file: !145, line: 302, baseType: !193, size: 64, align: 64, offset: 1472)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !194, line: 216, baseType: !195)
!194 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!195 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !144, file: !145, line: 303, baseType: !62, size: 32, align: 32, offset: 1536)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !144, file: !145, line: 305, baseType: !198, size: 160, align: 8, offset: 1568)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 160, align: 8, elements: !199)
!199 = !{!200}
!200 = !DISubrange(count: 20)
!201 = distinct !DIGlobalVariable(name: "no_ipvs", scope: !0, file: !202, line: 44, type: !203, isLocal: true, isDefinition: true, variable: i8* @no_ipvs)
!202 = !DIFile(filename: "ipvswrapper.c", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!203 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!204 = !{i32 2, !"Dwarf Version", i32 4}
!205 = !{i32 2, !"Debug Info Version", i32 3}
!206 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!207 = distinct !DISubprogram(name: "ipvs_get_group_by_name", scope: !202, file: !202, line: 131, type: !208, isLocal: false, isDefinition: true, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!208 = !DISubroutineType(types: !209)
!209 = !{!210, !149, !118}
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "virtual_server_group_t", file: !212, line: 128, baseType: !213)
!212 = !DIFile(filename: "./../include/check_data.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_virtual_server_group", file: !212, line: 124, size: 192, align: 64, elements: !214)
!214 = !{!215, !216, !217}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !213, file: !212, line: 125, baseType: !149, size: 64, align: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "addr_range", scope: !213, file: !212, line: 126, baseType: !118, size: 64, align: 64, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "vfwmark", scope: !213, file: !212, line: 127, baseType: !118, size: 64, align: 64, offset: 128)
!218 = !{}
!219 = !DILocalVariable(name: "gname", arg: 1, scope: !207, file: !202, line: 131, type: !149)
!220 = !DIExpression()
!221 = !DILocation(line: 131, column: 30, scope: !207)
!222 = !DILocalVariable(name: "l", arg: 2, scope: !207, file: !202, line: 131, type: !118)
!223 = !DILocation(line: 131, column: 42, scope: !207)
!224 = !DILocalVariable(name: "e", scope: !207, file: !202, line: 133, type: !225)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "element", file: !119, line: 30, baseType: !124)
!226 = !DILocation(line: 133, column: 10, scope: !207)
!227 = !DILocalVariable(name: "vsg", scope: !207, file: !202, line: 134, type: !210)
!228 = !DILocation(line: 134, column: 26, scope: !207)
!229 = !DILocation(line: 136, column: 14, scope: !230)
!230 = distinct !DILexicalBlock(scope: !207, file: !202, line: 136, column: 2)
!231 = !DILocation(line: 136, column: 13, scope: !230)
!232 = !DILocation(line: 136, column: 12, scope: !230)
!233 = !DILocation(line: 136, column: 12, scope: !234)
!234 = !DILexicalBlockFile(scope: !230, file: !202, discriminator: 1)
!235 = !DILocation(line: 136, column: 13, scope: !236)
!236 = !DILexicalBlockFile(scope: !230, file: !202, discriminator: 2)
!237 = !DILocation(line: 136, column: 17, scope: !236)
!238 = !DILocation(line: 136, column: 12, scope: !236)
!239 = !DILocation(line: 136, column: 12, scope: !240)
!240 = !DILexicalBlockFile(scope: !230, file: !202, discriminator: 3)
!241 = !DILocation(line: 136, column: 9, scope: !240)
!242 = !DILocation(line: 136, column: 7, scope: !240)
!243 = !DILocation(line: 136, column: 24, scope: !244)
!244 = !DILexicalBlockFile(scope: !245, file: !202, discriminator: 4)
!245 = distinct !DILexicalBlock(scope: !230, file: !202, line: 136, column: 2)
!246 = !DILocation(line: 136, column: 2, scope: !244)
!247 = !DILocation(line: 137, column: 11, scope: !248)
!248 = distinct !DILexicalBlock(scope: !245, file: !202, line: 136, column: 46)
!249 = !DILocation(line: 137, column: 15, scope: !248)
!250 = !DILocation(line: 137, column: 9, scope: !248)
!251 = !DILocation(line: 137, column: 7, scope: !248)
!252 = !DILocation(line: 138, column: 15, scope: !253)
!253 = distinct !DILexicalBlock(scope: !248, file: !202, line: 138, column: 7)
!254 = !DILocation(line: 138, column: 20, scope: !253)
!255 = !DILocation(line: 138, column: 27, scope: !253)
!256 = !DILocation(line: 138, column: 8, scope: !253)
!257 = !DILocation(line: 138, column: 7, scope: !248)
!258 = !DILocation(line: 139, column: 11, scope: !253)
!259 = !DILocation(line: 139, column: 4, scope: !253)
!260 = !DILocation(line: 140, column: 2, scope: !248)
!261 = !DILocation(line: 136, column: 35, scope: !262)
!262 = !DILexicalBlockFile(scope: !245, file: !202, discriminator: 5)
!263 = !DILocation(line: 136, column: 39, scope: !262)
!264 = !DILocation(line: 136, column: 32, scope: !262)
!265 = !DILocation(line: 136, column: 2, scope: !262)
!266 = distinct !{!266, !267}
!267 = !DILocation(line: 136, column: 2, scope: !207)
!268 = !DILocation(line: 141, column: 2, scope: !207)
!269 = !DILocation(line: 142, column: 1, scope: !207)
!270 = distinct !DISubprogram(name: "ipvs_start", scope: !202, file: !202, line: 146, type: !271, isLocal: false, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!271 = !DISubroutineType(types: !272)
!272 = !{!62}
!273 = !DILocation(line: 148, column: 2, scope: !270)
!274 = !DILocation(line: 150, column: 6, scope: !275)
!275 = distinct !DILexicalBlock(scope: !270, file: !202, line: 150, column: 6)
!276 = !DILocation(line: 150, column: 6, scope: !270)
!277 = !DILocation(line: 151, column: 7, scope: !278)
!278 = distinct !DILexicalBlock(scope: !279, file: !202, line: 151, column: 7)
!279 = distinct !DILexicalBlock(scope: !275, file: !202, line: 150, column: 19)
!280 = !DILocation(line: 151, column: 23, scope: !278)
!281 = !DILocation(line: 151, column: 26, scope: !282)
!282 = !DILexicalBlockFile(scope: !278, file: !202, discriminator: 1)
!283 = !DILocation(line: 151, column: 7, scope: !282)
!284 = !DILocation(line: 153, column: 26, scope: !285)
!285 = distinct !DILexicalBlock(scope: !278, file: !202, line: 151, column: 39)
!286 = !DILocation(line: 153, column: 25, scope: !285)
!287 = !DILocation(line: 153, column: 11, scope: !288)
!288 = !DILexicalBlockFile(scope: !285, file: !202, discriminator: 1)
!289 = !DILocation(line: 152, column: 4, scope: !285)
!290 = !DILocation(line: 154, column: 12, scope: !285)
!291 = !DILocation(line: 155, column: 4, scope: !285)
!292 = !DILocation(line: 157, column: 2, scope: !279)
!293 = !DILocation(line: 159, column: 2, scope: !270)
!294 = !DILocation(line: 160, column: 1, scope: !270)
!295 = distinct !DISubprogram(name: "modprobe_ipvs", scope: !202, file: !202, line: 85, type: !296, isLocal: true, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!296 = !DISubroutineType(types: !297)
!297 = !{!203}
!298 = !DILocalVariable(name: "argv", scope: !295, file: !202, line: 87, type: !299)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 320, align: 64, elements: !300)
!300 = !{!301}
!301 = !DISubrange(count: 5)
!302 = !DILocation(line: 87, column: 8, scope: !295)
!303 = !DILocalVariable(name: "child", scope: !295, file: !202, line: 88, type: !62)
!304 = !DILocation(line: 88, column: 6, scope: !295)
!305 = !DILocalVariable(name: "status", scope: !295, file: !202, line: 89, type: !62)
!306 = !DILocation(line: 89, column: 6, scope: !295)
!307 = !DILocalVariable(name: "rc", scope: !295, file: !202, line: 90, type: !62)
!308 = !DILocation(line: 90, column: 6, scope: !295)
!309 = !DILocalVariable(name: "modprobe", scope: !295, file: !202, line: 91, type: !149)
!310 = !DILocation(line: 91, column: 8, scope: !295)
!311 = !DILocation(line: 91, column: 19, scope: !295)
!312 = !DILocalVariable(name: "act", scope: !295, file: !202, line: 92, type: !313)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !314, line: 24, size: 1216, align: 64, elements: !315)
!314 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sigaction.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!315 = !{!316, !395, !402, !403}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "__sigaction_handler", scope: !313, file: !314, line: 35, baseType: !317, size: 64, align: 64)
!317 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !313, file: !314, line: 28, size: 64, align: 64, elements: !318)
!318 = !{!319, !320}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !317, file: !314, line: 31, baseType: !110, size: 64, align: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "sa_sigaction", scope: !317, file: !314, line: 33, baseType: !321, size: 64, align: 64)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64, align: 64)
!322 = !DISubroutineType(types: !323)
!323 = !{null, !62, !324, !130}
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64, align: 64)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !326, line: 133, baseType: !327)
!326 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/siginfo.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !326, line: 62, size: 1024, align: 64, elements: !328)
!328 = !{!329, !330, !331, !332}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !327, file: !326, line: 64, baseType: !62, size: 32, align: 32)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !327, file: !326, line: 65, baseType: !62, size: 32, align: 32, offset: 32)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !327, file: !326, line: 67, baseType: !62, size: 32, align: 32, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !327, file: !326, line: 132, baseType: !333, size: 896, align: 64, offset: 128)
!333 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !327, file: !326, line: 69, size: 896, align: 64, elements: !334)
!334 = !{!335, !339, !346, !357, !363, !373, !384, !389}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "_pad", scope: !333, file: !326, line: 71, baseType: !336, size: 896, align: 32)
!336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 896, align: 32, elements: !337)
!337 = !{!338}
!338 = !DISubrange(count: 28)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !333, file: !326, line: 78, baseType: !340, size: 64, align: 32)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !333, file: !326, line: 74, size: 64, align: 32, elements: !341)
!341 = !{!342, !344}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !340, file: !326, line: 76, baseType: !343, size: 32, align: 32)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !174, line: 133, baseType: !62)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !340, file: !326, line: 77, baseType: !345, size: 32, align: 32, offset: 32)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !174, line: 125, baseType: !80)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !333, file: !326, line: 86, baseType: !347, size: 128, align: 64)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !333, file: !326, line: 81, size: 128, align: 64, elements: !348)
!348 = !{!349, !350, !351}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "si_tid", scope: !347, file: !326, line: 83, baseType: !62, size: 32, align: 32)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "si_overrun", scope: !347, file: !326, line: 84, baseType: !62, size: 32, align: 32, offset: 32)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !347, file: !326, line: 85, baseType: !352, size: 64, align: 64, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !326, line: 36, baseType: !353)
!353 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !326, line: 32, size: 64, align: 64, elements: !354)
!354 = !{!355, !356}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !353, file: !326, line: 34, baseType: !62, size: 32, align: 32)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !353, file: !326, line: 35, baseType: !130, size: 64, align: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !333, file: !326, line: 94, baseType: !358, size: 128, align: 64)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !333, file: !326, line: 89, size: 128, align: 64, elements: !359)
!359 = !{!360, !361, !362}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !358, file: !326, line: 91, baseType: !343, size: 32, align: 32)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !358, file: !326, line: 92, baseType: !345, size: 32, align: 32, offset: 32)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !358, file: !326, line: 93, baseType: !352, size: 64, align: 64, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !333, file: !326, line: 104, baseType: !364, size: 256, align: 64)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !333, file: !326, line: 97, size: 256, align: 64, elements: !365)
!365 = !{!366, !367, !368, !369, !372}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !364, file: !326, line: 99, baseType: !343, size: 32, align: 32)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !364, file: !326, line: 100, baseType: !345, size: 32, align: 32, offset: 32)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "si_status", scope: !364, file: !326, line: 101, baseType: !62, size: 32, align: 32, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "si_utime", scope: !364, file: !326, line: 102, baseType: !370, size: 64, align: 64, offset: 128)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigchld_clock_t", file: !326, line: 58, baseType: !371)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !174, line: 135, baseType: !175)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "si_stime", scope: !364, file: !326, line: 103, baseType: !370, size: 64, align: 64, offset: 192)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !333, file: !326, line: 116, baseType: !374, size: 256, align: 64)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !333, file: !326, line: 107, size: 256, align: 64, elements: !375)
!375 = !{!376, !377, !379}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr", scope: !374, file: !326, line: 109, baseType: !130, size: 64, align: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr_lsb", scope: !374, file: !326, line: 110, baseType: !378, size: 16, align: 16, offset: 64)
!378 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr_bnd", scope: !374, file: !326, line: 115, baseType: !380, size: 128, align: 64, offset: 128)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !374, file: !326, line: 111, size: 128, align: 64, elements: !381)
!381 = !{!382, !383}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !380, file: !326, line: 113, baseType: !130, size: 64, align: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !380, file: !326, line: 114, baseType: !130, size: 64, align: 64, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !333, file: !326, line: 123, baseType: !385, size: 128, align: 64)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !333, file: !326, line: 119, size: 128, align: 64, elements: !386)
!386 = !{!387, !388}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "si_band", scope: !385, file: !326, line: 121, baseType: !175, size: 64, align: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "si_fd", scope: !385, file: !326, line: 122, baseType: !62, size: 32, align: 32, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !333, file: !326, line: 131, baseType: !390, size: 128, align: 64)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !333, file: !326, line: 126, size: 128, align: 64, elements: !391)
!391 = !{!392, !393, !394}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !390, file: !326, line: 128, baseType: !130, size: 64, align: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !390, file: !326, line: 129, baseType: !62, size: 32, align: 32, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !390, file: !326, line: 130, baseType: !80, size: 32, align: 32, offset: 96)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !313, file: !314, line: 43, baseType: !396, size: 1024, align: 64, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !397, line: 30, baseType: !398)
!397 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sigset.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !397, line: 27, size: 1024, align: 64, elements: !399)
!399 = !{!400}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !398, file: !397, line: 29, baseType: !401, size: 1024, align: 64)
!401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 1024, align: 64, elements: !101)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !313, file: !314, line: 46, baseType: !62, size: 32, align: 32, offset: 1088)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !313, file: !314, line: 49, baseType: !404, size: 64, align: 64, offset: 1152)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64, align: 64)
!405 = !DISubroutineType(types: !406)
!406 = !{null}
!407 = !DILocation(line: 92, column: 19, scope: !295)
!408 = !DILocalVariable(name: "old_act", scope: !295, file: !202, line: 92, type: !313)
!409 = !DILocation(line: 92, column: 24, scope: !295)
!410 = !DILocation(line: 94, column: 6, scope: !411)
!411 = distinct !DILexicalBlock(scope: !295, file: !202, line: 94, column: 6)
!412 = !DILocation(line: 94, column: 6, scope: !295)
!413 = !DILocation(line: 95, column: 13, scope: !411)
!414 = !DILocation(line: 95, column: 3, scope: !411)
!415 = !DILocation(line: 95, column: 11, scope: !411)
!416 = !DILocation(line: 97, column: 5, scope: !295)
!417 = !DILocation(line: 97, column: 25, scope: !295)
!418 = !DILocation(line: 97, column: 16, scope: !295)
!419 = !DILocation(line: 98, column: 19, scope: !295)
!420 = !DILocation(line: 98, column: 2, scope: !295)
!421 = !DILocation(line: 99, column: 6, scope: !295)
!422 = !DILocation(line: 99, column: 15, scope: !295)
!423 = !DILocation(line: 101, column: 2, scope: !295)
!424 = !DILocation(line: 103, column: 6, scope: !425)
!425 = distinct !DILexicalBlock(scope: !295, file: !202, line: 103, column: 6)
!426 = !DILocation(line: 103, column: 6, scope: !295)
!427 = !DILocation(line: 104, column: 3, scope: !425)
!428 = !DILocation(line: 106, column: 16, scope: !429)
!429 = distinct !DILexicalBlock(scope: !295, file: !202, line: 106, column: 6)
!430 = !DILocation(line: 106, column: 14, scope: !429)
!431 = !DILocation(line: 106, column: 6, scope: !295)
!432 = !DILocation(line: 107, column: 9, scope: !433)
!433 = distinct !DILexicalBlock(scope: !429, file: !202, line: 106, column: 25)
!434 = !DILocation(line: 107, column: 18, scope: !433)
!435 = !DILocation(line: 107, column: 3, scope: !433)
!436 = !DILocation(line: 108, column: 3, scope: !433)
!437 = !DILocation(line: 111, column: 15, scope: !295)
!438 = !DILocation(line: 111, column: 7, scope: !295)
!439 = !DILocation(line: 111, column: 5, scope: !295)
!440 = !DILocation(line: 113, column: 2, scope: !295)
!441 = !DILocation(line: 115, column: 6, scope: !442)
!442 = distinct !DILexicalBlock(scope: !295, file: !202, line: 115, column: 6)
!443 = !DILocation(line: 115, column: 9, scope: !442)
!444 = !DILocation(line: 115, column: 6, scope: !295)
!445 = !DILocation(line: 117, column: 21, scope: !446)
!446 = distinct !DILexicalBlock(scope: !442, file: !202, line: 115, column: 14)
!447 = !DILocation(line: 117, column: 20, scope: !446)
!448 = !DILocation(line: 117, column: 11, scope: !449)
!449 = !DILexicalBlockFile(scope: !446, file: !202, discriminator: 1)
!450 = !DILocation(line: 116, column: 3, scope: !446)
!451 = !DILocation(line: 118, column: 2, scope: !446)
!452 = !DILocation(line: 120, column: 6, scope: !453)
!453 = distinct !DILexicalBlock(scope: !295, file: !202, line: 120, column: 6)
!454 = !DILocation(line: 120, column: 6, scope: !295)
!455 = !DILocation(line: 121, column: 9, scope: !453)
!456 = !DILocation(line: 121, column: 4, scope: !453)
!457 = !DILocation(line: 121, column: 31, scope: !453)
!458 = !DILocation(line: 121, column: 3, scope: !453)
!459 = !DILocation(line: 123, column: 26, scope: !460)
!460 = distinct !DILexicalBlock(scope: !295, file: !202, line: 123, column: 6)
!461 = !DILocation(line: 123, column: 6, scope: !460)
!462 = !DILocation(line: 123, column: 11, scope: !460)
!463 = !DILocation(line: 123, column: 18, scope: !460)
!464 = !DILocation(line: 123, column: 24, scope: !460)
!465 = !DILocation(line: 123, column: 47, scope: !466)
!466 = !DILexicalBlockFile(scope: !460, file: !202, discriminator: 1)
!467 = !DILocation(line: 123, column: 27, scope: !466)
!468 = !DILocation(line: 123, column: 32, scope: !466)
!469 = !DILocation(line: 123, column: 39, scope: !466)
!470 = !DILocation(line: 123, column: 49, scope: !466)
!471 = !DILocation(line: 123, column: 6, scope: !466)
!472 = !DILocation(line: 124, column: 3, scope: !473)
!473 = distinct !DILexicalBlock(scope: !460, file: !202, line: 123, column: 48)
!474 = !DILocation(line: 127, column: 2, scope: !295)
!475 = !DILocation(line: 128, column: 1, scope: !295)
!476 = distinct !DISubprogram(name: "ipvs_stop", scope: !202, file: !202, line: 163, type: !405, isLocal: false, isDefinition: true, scopeLine: 164, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!477 = !DILocation(line: 165, column: 6, scope: !478)
!478 = distinct !DILexicalBlock(scope: !476, file: !202, line: 165, column: 6)
!479 = !DILocation(line: 165, column: 6, scope: !476)
!480 = !DILocation(line: 166, column: 3, scope: !478)
!481 = !DILocation(line: 168, column: 2, scope: !476)
!482 = !DILocation(line: 169, column: 1, scope: !476)
!483 = !DILocation(line: 169, column: 1, scope: !484)
!484 = !DILexicalBlockFile(scope: !476, file: !202, discriminator: 1)
!485 = distinct !DISubprogram(name: "ipvs_set_timeouts", scope: !202, file: !202, line: 172, type: !486, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!486 = !DISubroutineType(types: !487)
!487 = !{null, !62, !62, !62}
!488 = !DILocalVariable(name: "tcp_timeout", arg: 1, scope: !485, file: !202, line: 172, type: !62)
!489 = !DILocation(line: 172, column: 23, scope: !485)
!490 = !DILocalVariable(name: "tcpfin_timeout", arg: 2, scope: !485, file: !202, line: 172, type: !62)
!491 = !DILocation(line: 172, column: 40, scope: !485)
!492 = !DILocalVariable(name: "udp_timeout", arg: 3, scope: !485, file: !202, line: 172, type: !62)
!493 = !DILocation(line: 172, column: 60, scope: !485)
!494 = !DILocalVariable(name: "to", scope: !485, file: !202, line: 174, type: !495)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "ipvs_timeout_t", file: !496, line: 30, baseType: !497)
!496 = !DIFile(filename: "./../include/libipvs.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_vs_timeout_user", file: !498, line: 258, size: 96, align: 32, elements: !499)
!498 = !DIFile(filename: "/usr/include/linux/ip_vs.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!499 = !{!500, !501, !502}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_timeout", scope: !497, file: !498, line: 259, baseType: !62, size: 32, align: 32)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_fin_timeout", scope: !497, file: !498, line: 260, baseType: !62, size: 32, align: 32, offset: 32)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "udp_timeout", scope: !497, file: !498, line: 261, baseType: !62, size: 32, align: 32, offset: 64)
!503 = !DILocation(line: 174, column: 17, scope: !485)
!504 = !DILocation(line: 176, column: 7, scope: !505)
!505 = distinct !DILexicalBlock(scope: !485, file: !202, line: 176, column: 6)
!506 = !DILocation(line: 176, column: 19, scope: !505)
!507 = !DILocation(line: 176, column: 23, scope: !508)
!508 = !DILexicalBlockFile(scope: !505, file: !202, discriminator: 1)
!509 = !DILocation(line: 176, column: 38, scope: !508)
!510 = !DILocation(line: 176, column: 42, scope: !511)
!511 = !DILexicalBlockFile(scope: !505, file: !202, discriminator: 2)
!512 = !DILocation(line: 176, column: 6, scope: !511)
!513 = !DILocation(line: 177, column: 3, scope: !505)
!514 = !DILocation(line: 179, column: 19, scope: !485)
!515 = !DILocation(line: 179, column: 5, scope: !485)
!516 = !DILocation(line: 179, column: 17, scope: !485)
!517 = !DILocation(line: 180, column: 23, scope: !485)
!518 = !DILocation(line: 180, column: 5, scope: !485)
!519 = !DILocation(line: 180, column: 21, scope: !485)
!520 = !DILocation(line: 181, column: 19, scope: !485)
!521 = !DILocation(line: 181, column: 5, scope: !485)
!522 = !DILocation(line: 181, column: 17, scope: !485)
!523 = !DILocation(line: 183, column: 2, scope: !485)
!524 = !DILocation(line: 184, column: 1, scope: !485)
!525 = !DILocation(line: 184, column: 1, scope: !526)
!526 = !DILexicalBlockFile(scope: !485, file: !202, discriminator: 1)
!527 = distinct !DISubprogram(name: "ipvs_syncd_cmd", scope: !202, file: !202, line: 249, type: !528, isLocal: false, isDefinition: true, scopeLine: 250, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!528 = !DISubroutineType(types: !529)
!529 = !{null, !62, !530, !62, !203, !203}
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64, align: 64)
!531 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !532)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lvs_syncd_config", file: !533, line: 56, size: 1344, align: 64, elements: !534)
!533 = !DIFile(filename: "./../include/ipvswrapper.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!534 = !{!535, !536, !861, !862, !863, !864, !865, !866}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "ifname", scope: !532, file: !533, line: 57, baseType: !149, size: 64, align: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "vrrp", scope: !532, file: !533, line: 58, baseType: !537, size: 64, align: 64, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64, align: 64)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "vrrp_t", file: !4, line: 310, baseType: !539)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vrrp_t", file: !4, line: 183, size: 7040, align: 64, elements: !540)
!540 = !{!541, !542, !543, !591, !611, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !692, !693, !694, !695, !696, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !853, !860}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !539, file: !4, line: 184, baseType: !67, size: 16, align: 16)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !539, file: !4, line: 185, baseType: !149, size: 64, align: 64, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !539, file: !4, line: 186, baseType: !544, size: 64, align: 64, offset: 128)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64, align: 64)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "vrrp_sgroup_t", file: !4, line: 133, baseType: !546)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vrrp_sgroup", file: !4, line: 109, size: 1024, align: 64, elements: !547)
!547 = !{!548, !549, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !585, !586, !587, !588, !589, !590}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !546, file: !4, line: 110, baseType: !149, size: 64, align: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !546, file: !4, line: 111, baseType: !550, size: 64, align: 64, offset: 64)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64, align: 64)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "vector_t", file: !552, line: 34, baseType: !553)
!552 = !DIFile(filename: "../../lib/vector.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vector", file: !552, line: 30, size: 128, align: 64, elements: !554)
!554 = !{!555, !556, !557}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !553, file: !552, line: 31, baseType: !80, size: 32, align: 32)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !553, file: !552, line: 32, baseType: !80, size: 32, align: 32, offset: 32)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !553, file: !552, line: 33, baseType: !558, size: 64, align: 64, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64, align: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "vrrp_instances", scope: !546, file: !4, line: 112, baseType: !118, size: 64, align: 64, offset: 128)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "num_member_fault", scope: !546, file: !4, line: 113, baseType: !80, size: 32, align: 32, offset: 192)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "num_member_init", scope: !546, file: !4, line: 114, baseType: !80, size: 32, align: 32, offset: 224)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !546, file: !4, line: 115, baseType: !62, size: 32, align: 32, offset: 256)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "sgroup_tracking_weight", scope: !546, file: !4, line: 116, baseType: !203, size: 8, align: 8, offset: 288)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "track_ifp", scope: !546, file: !4, line: 119, baseType: !118, size: 64, align: 64, offset: 320)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "track_script", scope: !546, file: !4, line: 120, baseType: !118, size: 64, align: 64, offset: 384)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "track_file", scope: !546, file: !4, line: 121, baseType: !118, size: 64, align: 64, offset: 448)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "track_bfd", scope: !546, file: !4, line: 122, baseType: !118, size: 64, align: 64, offset: 512)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "notify_exec", scope: !546, file: !4, line: 125, baseType: !203, size: 8, align: 8, offset: 576)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "script_backup", scope: !546, file: !4, line: 126, baseType: !570, size: 64, align: 64, offset: 640)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64, align: 64)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "notify_script_t", file: !572, line: 65, baseType: !573)
!572 = !DIFile(filename: "../../lib/notify.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_notify_script", file: !572, line: 59, size: 192, align: 64, elements: !574)
!574 = !{!575, !577, !578, !579, !582}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !573, file: !572, line: 60, baseType: !576, size: 64, align: 64)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64, align: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "num_args", scope: !573, file: !572, line: 61, baseType: !62, size: 32, align: 32, offset: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !573, file: !572, line: 62, baseType: !62, size: 32, align: 32, offset: 96)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !573, file: !572, line: 63, baseType: !580, size: 32, align: 32, offset: 128)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !581, line: 80, baseType: !345)
!581 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!582 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !573, file: !572, line: 64, baseType: !583, size: 32, align: 32, offset: 160)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !581, line: 65, baseType: !584)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !174, line: 126, baseType: !80)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "script_master", scope: !546, file: !4, line: 127, baseType: !570, size: 64, align: 64, offset: 704)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "script_fault", scope: !546, file: !4, line: 128, baseType: !570, size: 64, align: 64, offset: 768)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "script_stop", scope: !546, file: !4, line: 129, baseType: !570, size: 64, align: 64, offset: 832)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "script", scope: !546, file: !4, line: 130, baseType: !570, size: 64, align: 64, offset: 896)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "smtp_alert", scope: !546, file: !4, line: 131, baseType: !62, size: 32, align: 32, offset: 960)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "last_email_state", scope: !546, file: !4, line: 132, baseType: !62, size: 32, align: 32, offset: 992)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !539, file: !4, line: 187, baseType: !592, size: 64, align: 64, offset: 192)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64, align: 64)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "vrrp_stats", file: !4, line: 169, baseType: !594)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vrrp_stats", file: !4, line: 136, size: 768, align: 64, elements: !595)
!595 = !{!596, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "advert_rcvd", scope: !594, file: !4, line: 137, baseType: !597, size: 64, align: 64)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !73, line: 55, baseType: !195)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "advert_sent", scope: !594, file: !4, line: 138, baseType: !79, size: 32, align: 32, offset: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "become_master", scope: !594, file: !4, line: 140, baseType: !79, size: 32, align: 32, offset: 96)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "release_master", scope: !594, file: !4, line: 141, baseType: !79, size: 32, align: 32, offset: 128)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "packet_len_err", scope: !594, file: !4, line: 143, baseType: !597, size: 64, align: 64, offset: 192)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "advert_interval_err", scope: !594, file: !4, line: 144, baseType: !597, size: 64, align: 64, offset: 256)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "ip_ttl_err", scope: !594, file: !4, line: 145, baseType: !597, size: 64, align: 64, offset: 320)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "invalid_type_rcvd", scope: !594, file: !4, line: 146, baseType: !597, size: 64, align: 64, offset: 384)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "addr_list_err", scope: !594, file: !4, line: 147, baseType: !597, size: 64, align: 64, offset: 448)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "invalid_authtype", scope: !594, file: !4, line: 149, baseType: !79, size: 32, align: 32, offset: 512)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "authtype_mismatch", scope: !594, file: !4, line: 151, baseType: !79, size: 32, align: 32, offset: 544)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "auth_failure", scope: !594, file: !4, line: 152, baseType: !79, size: 32, align: 32, offset: 576)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "pri_zero_rcvd", scope: !594, file: !4, line: 155, baseType: !597, size: 64, align: 64, offset: 640)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "pri_zero_sent", scope: !594, file: !4, line: 156, baseType: !597, size: 64, align: 64, offset: 704)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "ifp", scope: !539, file: !4, line: 188, baseType: !612, size: 64, align: 64, offset: 256)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64, align: 64)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "interface_t", file: !117, line: 111, baseType: !614)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_interface", file: !117, line: 76, size: 1792, align: 64, elements: !615)
!615 = !{!616, !618, !620, !621, !622, !623, !624, !625, !626, !632, !633, !634, !635, !636, !637, !639, !640, !641, !642, !663, !664, !665, !666, !667, !668, !669, !670}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "ifname", scope: !614, file: !117, line: 77, baseType: !617, size: 128, align: 8)
!617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 128, align: 8, elements: !101)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "ifindex", scope: !614, file: !117, line: 78, baseType: !619, size: 32, align: 32, offset: 128)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "ifindex_t", file: !117, line: 62, baseType: !79)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !614, file: !117, line: 79, baseType: !75, size: 32, align: 32, offset: 160)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !614, file: !117, line: 80, baseType: !93, size: 128, align: 32, offset: 192)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "ifi_flags", scope: !614, file: !117, line: 81, baseType: !80, size: 32, align: 32, offset: 320)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "linkbeat_use_polling", scope: !614, file: !117, line: 82, baseType: !203, size: 8, align: 8, offset: 352)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !614, file: !117, line: 83, baseType: !79, size: 32, align: 32, offset: 384)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "hw_type", scope: !614, file: !117, line: 84, baseType: !69, size: 16, align: 16, offset: 416)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr", scope: !614, file: !117, line: 85, baseType: !627, size: 256, align: 8, offset: 432)
!627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !628, size: 256, align: 8, elements: !630)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !581, line: 33, baseType: !629)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_char", file: !174, line: 30, baseType: !83)
!630 = !{!631}
!631 = !DISubrange(count: 32)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr_bcast", scope: !614, file: !117, line: 86, baseType: !627, size: 256, align: 8, offset: 688)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr_len", scope: !614, file: !117, line: 87, baseType: !193, size: 64, align: 64, offset: 960)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "lb_type", scope: !614, file: !117, line: 88, baseType: !62, size: 32, align: 32, offset: 1024)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "vmac", scope: !614, file: !117, line: 90, baseType: !203, size: 8, align: 8, offset: 1056)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "base_ifindex", scope: !614, file: !117, line: 91, baseType: !619, size: 32, align: 32, offset: 1088)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "base_ifp", scope: !614, file: !117, line: 92, baseType: !638, size: 64, align: 64, offset: 1152)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64, align: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master_ifindex", scope: !614, file: !117, line: 94, baseType: !619, size: 32, align: 32, offset: 1216)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master_ifp", scope: !614, file: !117, line: 96, baseType: !638, size: 64, align: 64, offset: 1280)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master", scope: !614, file: !117, line: 97, baseType: !203, size: 8, align: 8, offset: 1344)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "garp_delay", scope: !614, file: !117, line: 100, baseType: !643, size: 64, align: 64, offset: 1408)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64, align: 64)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "garp_delay_t", file: !117, line: 73, baseType: !645)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_garp_delay", file: !117, line: 65, size: 704, align: 64, elements: !646)
!646 = !{!647, !657, !658, !659, !660, !661, !662}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "garp_interval", scope: !645, file: !117, line: 66, baseType: !648, size: 128, align: 64)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "timeval_t", file: !649, line: 31, baseType: !650)
!649 = !DIFile(filename: "../../lib/timer.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !651, line: 30, size: 128, align: 64, elements: !652)
!651 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!652 = !{!653, !655}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !650, file: !651, line: 32, baseType: !654, size: 64, align: 64)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !174, line: 139, baseType: !175)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !650, file: !651, line: 33, baseType: !656, size: 64, align: 64, offset: 64)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !174, line: 141, baseType: !175)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "have_garp_interval", scope: !645, file: !117, line: 67, baseType: !203, size: 8, align: 8, offset: 128)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "gna_interval", scope: !645, file: !117, line: 68, baseType: !648, size: 128, align: 64, offset: 192)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "have_gna_interval", scope: !645, file: !117, line: 69, baseType: !203, size: 8, align: 8, offset: 320)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "garp_next_time", scope: !645, file: !117, line: 70, baseType: !648, size: 128, align: 64, offset: 384)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "gna_next_time", scope: !645, file: !117, line: 71, baseType: !648, size: 128, align: 64, offset: 512)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "aggregation_group", scope: !645, file: !117, line: 72, baseType: !62, size: 32, align: 32, offset: 640)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "gna_router", scope: !614, file: !117, line: 101, baseType: !203, size: 8, align: 8, offset: 1472)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_config", scope: !614, file: !117, line: 102, baseType: !62, size: 32, align: 32, offset: 1504)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_ignore_value", scope: !614, file: !117, line: 103, baseType: !79, size: 32, align: 32, offset: 1536)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_filter_value", scope: !614, file: !117, line: 104, baseType: !79, size: 32, align: 32, offset: 1568)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "reset_promote_secondaries", scope: !614, file: !117, line: 105, baseType: !79, size: 32, align: 32, offset: 1600)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "rp_filter", scope: !614, file: !117, line: 107, baseType: !80, size: 32, align: 32, offset: 1632)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "promote_secondaries_already_set", scope: !614, file: !117, line: 109, baseType: !203, size: 8, align: 8, offset: 1664)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "tracking_vrrp", scope: !614, file: !117, line: 110, baseType: !118, size: 64, align: 64, offset: 1728)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "dont_track_primary", scope: !539, file: !4, line: 189, baseType: !203, size: 8, align: 8, offset: 320)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "linkbeat_use_polling", scope: !539, file: !4, line: 190, baseType: !203, size: 8, align: 8, offset: 328)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "skip_check_adv_addr", scope: !539, file: !4, line: 191, baseType: !203, size: 8, align: 8, offset: 336)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "strict_mode", scope: !539, file: !4, line: 193, baseType: !80, size: 32, align: 32, offset: 352)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "vmac_flags", scope: !539, file: !4, line: 195, baseType: !195, size: 64, align: 64, offset: 384)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "vmac_ifname", scope: !539, file: !4, line: 196, baseType: !617, size: 128, align: 8, offset: 448)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "track_ifp", scope: !539, file: !4, line: 198, baseType: !118, size: 64, align: 64, offset: 576)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "track_script", scope: !539, file: !4, line: 199, baseType: !118, size: 64, align: 64, offset: 640)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "track_file", scope: !539, file: !4, line: 200, baseType: !118, size: 64, align: 64, offset: 704)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "num_script_if_fault", scope: !539, file: !4, line: 204, baseType: !80, size: 32, align: 32, offset: 768)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "num_script_init", scope: !539, file: !4, line: 205, baseType: !80, size: 32, align: 32, offset: 800)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "saddr", scope: !539, file: !4, line: 206, baseType: !683, size: 1024, align: 64, offset: 832)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_storage", file: !684, line: 166, size: 1024, align: 64, elements: !685)
!684 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!685 = !{!686, !687, !691}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "ss_family", scope: !683, file: !684, line: 168, baseType: !67, size: 16, align: 16)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_padding", scope: !683, file: !684, line: 169, baseType: !688, size: 944, align: 8, offset: 16)
!688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 944, align: 8, elements: !689)
!689 = !{!690}
!690 = !DISubrange(count: 118)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_align", scope: !683, file: !684, line: 170, baseType: !195, size: 64, align: 64, offset: 960)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "saddr_from_config", scope: !539, file: !4, line: 207, baseType: !203, size: 8, align: 8, offset: 1856)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "track_saddr", scope: !539, file: !4, line: 208, baseType: !203, size: 8, align: 8, offset: 1864)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "pkt_saddr", scope: !539, file: !4, line: 209, baseType: !683, size: 1024, align: 64, offset: 1920)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "unicast_peer", scope: !539, file: !4, line: 210, baseType: !118, size: 64, align: 64, offset: 2944)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "unicast_chksum_compat", scope: !539, file: !4, line: 212, baseType: !697, size: 32, align: 32, offset: 3008)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "chksum_compatibility_t", file: !4, line: 179, baseType: !3)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "master_saddr", scope: !539, file: !4, line: 214, baseType: !683, size: 1024, align: 64, offset: 3072)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "master_priority", scope: !539, file: !4, line: 215, baseType: !100, size: 8, align: 8, offset: 4096)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "last_transition", scope: !539, file: !4, line: 216, baseType: !648, size: 128, align: 64, offset: 4160)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "garp_delay", scope: !539, file: !4, line: 217, baseType: !80, size: 32, align: 32, offset: 4288)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "garp_refresh", scope: !539, file: !4, line: 218, baseType: !648, size: 128, align: 64, offset: 4352)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "garp_refresh_timer", scope: !539, file: !4, line: 219, baseType: !648, size: 128, align: 64, offset: 4480)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "garp_rep", scope: !539, file: !4, line: 220, baseType: !80, size: 32, align: 32, offset: 4608)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "garp_refresh_rep", scope: !539, file: !4, line: 221, baseType: !80, size: 32, align: 32, offset: 4640)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "garp_lower_prio_delay", scope: !539, file: !4, line: 222, baseType: !80, size: 32, align: 32, offset: 4672)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "garp_pending", scope: !539, file: !4, line: 223, baseType: !203, size: 8, align: 8, offset: 4704)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "gna_pending", scope: !539, file: !4, line: 224, baseType: !203, size: 8, align: 8, offset: 4712)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "garp_lower_prio_rep", scope: !539, file: !4, line: 225, baseType: !80, size: 32, align: 32, offset: 4736)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "lower_prio_no_advert", scope: !539, file: !4, line: 226, baseType: !80, size: 32, align: 32, offset: 4768)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "higher_prio_send_advert", scope: !539, file: !4, line: 227, baseType: !80, size: 32, align: 32, offset: 4800)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "vrid", scope: !539, file: !4, line: 228, baseType: !100, size: 8, align: 8, offset: 4832)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "base_priority", scope: !539, file: !4, line: 229, baseType: !100, size: 8, align: 8, offset: 4840)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "effective_priority", scope: !539, file: !4, line: 230, baseType: !100, size: 8, align: 8, offset: 4848)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "total_priority", scope: !539, file: !4, line: 231, baseType: !62, size: 32, align: 32, offset: 4864)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "vipset", scope: !539, file: !4, line: 233, baseType: !203, size: 8, align: 8, offset: 4896)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "vip", scope: !539, file: !4, line: 234, baseType: !118, size: 64, align: 64, offset: 4928)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "evip", scope: !539, file: !4, line: 235, baseType: !118, size: 64, align: 64, offset: 4992)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "promote_secondaries", scope: !539, file: !4, line: 239, baseType: !203, size: 8, align: 8, offset: 5056)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "evip_add_ipv6", scope: !539, file: !4, line: 240, baseType: !203, size: 8, align: 8, offset: 5064)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "vroutes", scope: !539, file: !4, line: 241, baseType: !118, size: 64, align: 64, offset: 5120)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "vrules", scope: !539, file: !4, line: 242, baseType: !118, size: 64, align: 64, offset: 5184)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "adver_int", scope: !539, file: !4, line: 243, baseType: !80, size: 32, align: 32, offset: 5248)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "master_adver_int", scope: !539, file: !4, line: 244, baseType: !80, size: 32, align: 32, offset: 5280)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "accept", scope: !539, file: !4, line: 249, baseType: !80, size: 32, align: 32, offset: 5312)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_rx_buf_size", scope: !539, file: !4, line: 252, baseType: !193, size: 64, align: 64, offset: 5376)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "iptable_rules_set", scope: !539, file: !4, line: 254, baseType: !203, size: 8, align: 8, offset: 5440)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "nopreempt", scope: !539, file: !4, line: 255, baseType: !203, size: 8, align: 8, offset: 5448)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_delay", scope: !539, file: !4, line: 256, baseType: !195, size: 64, align: 64, offset: 5504)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_time", scope: !539, file: !4, line: 260, baseType: !648, size: 128, align: 64, offset: 5568)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !539, file: !4, line: 261, baseType: !62, size: 32, align: 32, offset: 5696)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "wantstate", scope: !539, file: !4, line: 265, baseType: !62, size: 32, align: 32, offset: 5728)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "reload_master", scope: !539, file: !4, line: 266, baseType: !203, size: 8, align: 8, offset: 5760)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "sockets", scope: !539, file: !4, line: 267, baseType: !735, size: 64, align: 64, offset: 5824)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64, align: 64)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "sock_t", file: !737, line: 50, baseType: !738)
!737 = !DIFile(filename: "./../include/vrrp_sock.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sock", file: !737, line: 40, size: 1344, align: 64, elements: !739)
!739 = !{!740, !741, !742, !743, !744, !745, !746, !747, !748}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !738, file: !737, line: 41, baseType: !67, size: 16, align: 16)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "saddr", scope: !738, file: !737, line: 42, baseType: !683, size: 1024, align: 64, offset: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "proto", scope: !738, file: !737, line: 43, baseType: !62, size: 32, align: 32, offset: 1088)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "ifindex", scope: !738, file: !737, line: 44, baseType: !619, size: 32, align: 32, offset: 1120)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "unicast", scope: !738, file: !737, line: 45, baseType: !203, size: 8, align: 8, offset: 1152)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "fd_in", scope: !738, file: !737, line: 46, baseType: !62, size: 32, align: 32, offset: 1184)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "fd_out", scope: !738, file: !737, line: 47, baseType: !62, size: 32, align: 32, offset: 1216)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "rx_buf_size", scope: !738, file: !737, line: 48, baseType: !62, size: 32, align: 32, offset: 1248)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !738, file: !737, line: 49, baseType: !749, size: 64, align: 64, offset: 1280)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64, align: 64)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_t", file: !12, line: 99, baseType: !751)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread", file: !12, line: 78, size: 768, align: 64, elements: !752)
!752 = !{!753, !754, !756, !809, !814, !815, !816, !827, !829}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !751, file: !12, line: 79, baseType: !195, size: 64, align: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !751, file: !12, line: 80, baseType: !755, size: 32, align: 32, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_type_t", file: !12, line: 63, baseType: !11)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !751, file: !12, line: 81, baseType: !757, size: 64, align: 64, offset: 128)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64, align: 64)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_master", file: !12, line: 112, size: 1280, align: 64, elements: !759)
!759 = !{!760, !772, !773, !774, !775, !783, !784, !785, !786, !787, !790, !801, !802, !803, !804, !805, !806, !807, !808}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !758, file: !12, line: 113, baseType: !761, size: 64, align: 64)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "rb_root_t", file: !762, line: 109, baseType: !763)
!762 = !DIFile(filename: "../../lib/rbtree.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !762, line: 106, size: 64, align: 64, elements: !764)
!764 = !{!765}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !763, file: !762, line: 108, baseType: !766, size: 64, align: 64)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64, align: 64)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !762, line: 97, size: 192, align: 64, elements: !768)
!768 = !{!769, !770, !771}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "rb_parent_color", scope: !767, file: !762, line: 99, baseType: !195, size: 64, align: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !767, file: !762, line: 102, baseType: !766, size: 64, align: 64, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !767, file: !762, line: 103, baseType: !766, size: 64, align: 64, offset: 128)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !758, file: !12, line: 114, baseType: !761, size: 64, align: 64, offset: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !758, file: !12, line: 115, baseType: !761, size: 64, align: 64, offset: 128)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !758, file: !12, line: 116, baseType: !761, size: 64, align: 64, offset: 192)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !758, file: !12, line: 117, baseType: !776, size: 128, align: 64, offset: 256)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "list_head_t", file: !777, line: 62, baseType: !778)
!777 = !DIFile(filename: "../../lib/list_head.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !777, line: 60, size: 128, align: 64, elements: !779)
!779 = !{!780, !782}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !778, file: !777, line: 61, baseType: !781, size: 64, align: 64)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64, align: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !778, file: !777, line: 61, baseType: !781, size: 64, align: 64, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !758, file: !12, line: 121, baseType: !776, size: 128, align: 64, offset: 384)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "unuse", scope: !758, file: !12, line: 122, baseType: !776, size: 128, align: 64, offset: 512)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "child_pid_index", scope: !758, file: !12, line: 124, baseType: !118, size: 64, align: 64, offset: 640)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "io_events", scope: !758, file: !12, line: 127, baseType: !761, size: 64, align: 64, offset: 704)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_events", scope: !758, file: !12, line: 128, baseType: !788, size: 64, align: 64, offset: 768)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64, align: 64)
!789 = !DICompositeType(tag: DW_TAG_structure_type, name: "epoll_event", file: !12, line: 128, flags: DIFlagFwdDecl)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "current_event", scope: !758, file: !12, line: 129, baseType: !791, size: 64, align: 64, offset: 832)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64, align: 64)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_event_t", file: !12, line: 109, baseType: !793)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_event", file: !12, line: 102, size: 448, align: 64, elements: !794)
!794 = !{!795, !796, !797, !798, !799}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !793, file: !12, line: 103, baseType: !749, size: 64, align: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !793, file: !12, line: 104, baseType: !749, size: 64, align: 64, offset: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !793, file: !12, line: 105, baseType: !195, size: 64, align: 64, offset: 128)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !793, file: !12, line: 106, baseType: !62, size: 32, align: 32, offset: 192)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !793, file: !12, line: 108, baseType: !800, size: 192, align: 64, offset: 256)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "rb_node_t", file: !762, line: 104, baseType: !767)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_size", scope: !758, file: !12, line: 130, baseType: !80, size: 32, align: 32, offset: 896)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_count", scope: !758, file: !12, line: 131, baseType: !80, size: 32, align: 32, offset: 928)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_fd", scope: !758, file: !12, line: 132, baseType: !62, size: 32, align: 32, offset: 960)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "timer_fd", scope: !758, file: !12, line: 135, baseType: !62, size: 32, align: 32, offset: 992)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "timer_thread", scope: !758, file: !12, line: 136, baseType: !749, size: 64, align: 64, offset: 1024)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !758, file: !12, line: 146, baseType: !195, size: 64, align: 64, offset: 1088)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !758, file: !12, line: 147, baseType: !195, size: 64, align: 64, offset: 1152)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_timer_running", scope: !758, file: !12, line: 148, baseType: !203, size: 8, align: 8, offset: 1216)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !751, file: !12, line: 82, baseType: !810, size: 64, align: 64, offset: 192)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64, align: 64)
!811 = !DISubroutineType(types: !812)
!812 = !{!62, !813}
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64, align: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !751, file: !12, line: 83, baseType: !130, size: 64, align: 64, offset: 256)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "sands", scope: !751, file: !12, line: 84, baseType: !648, size: 128, align: 64, offset: 320)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !751, file: !12, line: 92, baseType: !817, size: 64, align: 32, offset: 448)
!817 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !751, file: !12, line: 85, size: 64, align: 32, elements: !818)
!818 = !{!819, !820, !821}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !817, file: !12, line: 86, baseType: !62, size: 32, align: 32)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !817, file: !12, line: 87, baseType: !62, size: 32, align: 32)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !817, file: !12, line: 91, baseType: !822, size: 64, align: 32)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !817, file: !12, line: 88, size: 64, align: 32, elements: !823)
!823 = !{!824, !826}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !822, file: !12, line: 89, baseType: !825, size: 32, align: 32)
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !581, line: 98, baseType: !343)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !822, file: !12, line: 90, baseType: !62, size: 32, align: 32, offset: 32)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !751, file: !12, line: 93, baseType: !828, size: 64, align: 64, offset: 512)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64, align: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, scope: !751, file: !12, line: 95, baseType: !830, size: 192, align: 64, offset: 576)
!830 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !751, file: !12, line: 95, size: 192, align: 64, elements: !831)
!831 = !{!832, !833}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !830, file: !12, line: 96, baseType: !800, size: 192, align: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !830, file: !12, line: 97, baseType: !776, size: 128, align: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !539, file: !4, line: 269, baseType: !62, size: 32, align: 32, offset: 5888)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !539, file: !4, line: 271, baseType: !62, size: 32, align: 32, offset: 5920)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "smtp_alert", scope: !539, file: !4, line: 274, baseType: !62, size: 32, align: 32, offset: 5952)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "last_email_state", scope: !539, file: !4, line: 275, baseType: !62, size: 32, align: 32, offset: 5984)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "notify_exec", scope: !539, file: !4, line: 276, baseType: !203, size: 8, align: 8, offset: 6016)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "script_backup", scope: !539, file: !4, line: 277, baseType: !570, size: 64, align: 64, offset: 6080)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "script_master", scope: !539, file: !4, line: 278, baseType: !570, size: 64, align: 64, offset: 6144)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "script_fault", scope: !539, file: !4, line: 279, baseType: !570, size: 64, align: 64, offset: 6208)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "script_stop", scope: !539, file: !4, line: 280, baseType: !570, size: 64, align: 64, offset: 6272)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "script_master_rx_lower_pri", scope: !539, file: !4, line: 281, baseType: !570, size: 64, align: 64, offset: 6336)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "script", scope: !539, file: !4, line: 282, baseType: !570, size: 64, align: 64, offset: 6400)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "ms_down_timer", scope: !539, file: !4, line: 285, baseType: !79, size: 32, align: 32, offset: 6464)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "sands", scope: !539, file: !4, line: 286, baseType: !648, size: 128, align: 64, offset: 6528)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "send_buffer", scope: !539, file: !4, line: 289, baseType: !149, size: 64, align: 64, offset: 6656)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "send_buffer_size", scope: !539, file: !4, line: 290, baseType: !193, size: 64, align: 64, offset: 6720)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "ipv4_csum", scope: !539, file: !4, line: 291, baseType: !79, size: 32, align: 32, offset: 6784)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "auth_type", scope: !539, file: !4, line: 295, baseType: !100, size: 8, align: 8, offset: 6816)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "auth_data", scope: !539, file: !4, line: 296, baseType: !852, size: 64, align: 8, offset: 6824)
!852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 64, align: 8, elements: !84)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "ipsecah_counter", scope: !539, file: !4, line: 299, baseType: !854, size: 64, align: 32, offset: 6912)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "seq_counter_t", file: !855, line: 58, baseType: !856)
!855 = !DIFile(filename: "./../include/vrrp_ipsecah.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_seq_counter", file: !855, line: 55, size: 64, align: 32, elements: !857)
!857 = !{!858, !859}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "cycle", scope: !856, file: !855, line: 56, baseType: !203, size: 8, align: 8)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "seq_number", scope: !856, file: !855, line: 57, baseType: !79, size: 32, align: 32, offset: 32)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "ip_id", scope: !539, file: !4, line: 309, baseType: !62, size: 32, align: 32, offset: 6976)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "syncid", scope: !532, file: !533, line: 59, baseType: !80, size: 32, align: 32, offset: 128)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "sync_maxlen", scope: !532, file: !533, line: 61, baseType: !72, size: 16, align: 16, offset: 160)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "mcast_group", scope: !532, file: !533, line: 62, baseType: !683, size: 1024, align: 64, offset: 192)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "mcast_port", scope: !532, file: !533, line: 63, baseType: !72, size: 16, align: 16, offset: 1216)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "mcast_ttl", scope: !532, file: !533, line: 64, baseType: !100, size: 8, align: 8, offset: 1232)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "vrrp_name", scope: !532, file: !533, line: 66, baseType: !149, size: 64, align: 64, offset: 1280)
!867 = !DILocalVariable(name: "cmd", arg: 1, scope: !527, file: !202, line: 249, type: !62)
!868 = !DILocation(line: 249, column: 20, scope: !527)
!869 = !DILocalVariable(name: "config", arg: 2, scope: !527, file: !202, line: 249, type: !530)
!870 = !DILocation(line: 249, column: 56, scope: !527)
!871 = !DILocalVariable(name: "state", arg: 3, scope: !527, file: !202, line: 249, type: !62)
!872 = !DILocation(line: 249, column: 68, scope: !527)
!873 = !DILocalVariable(name: "ignore_interface", arg: 4, scope: !527, file: !202, line: 249, type: !203)
!874 = !DILocation(line: 249, column: 79, scope: !527)
!875 = !DILocalVariable(name: "ignore_error", arg: 5, scope: !527, file: !202, line: 249, type: !203)
!876 = !DILocation(line: 249, column: 102, scope: !527)
!877 = !DILocalVariable(name: "daemonrule", scope: !527, file: !202, line: 251, type: !878)
!878 = !DIDerivedType(tag: DW_TAG_typedef, name: "ipvs_daemon_t", file: !496, line: 31, baseType: !879)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_vs_daemon_app", file: !880, line: 126, size: 384, align: 32, elements: !881)
!880 = !DIFile(filename: "./../include/ip_vs.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!881 = !{!882, !883, !884, !885, !886, !887, !888, !889}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !879, file: !880, line: 128, baseType: !62, size: 32, align: 32)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "mcast_ifn", scope: !879, file: !880, line: 131, baseType: !617, size: 128, align: 8, offset: 32)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "syncid", scope: !879, file: !880, line: 134, baseType: !62, size: 32, align: 32, offset: 160)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "sync_maxlen", scope: !879, file: !880, line: 138, baseType: !72, size: 16, align: 16, offset: 192)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "mcast_port", scope: !879, file: !880, line: 141, baseType: !72, size: 16, align: 16, offset: 208)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "mcast_ttl", scope: !879, file: !880, line: 144, baseType: !100, size: 8, align: 8, offset: 224)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "mcast_af", scope: !879, file: !880, line: 147, baseType: !72, size: 16, align: 16, offset: 240)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "mcast_group", scope: !879, file: !880, line: 150, baseType: !890, size: 128, align: 32, offset: 256)
!890 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "nf_inet_addr", file: !891, line: 70, size: 128, align: 32, elements: !892)
!891 = !DIFile(filename: "/usr/include/linux/netfilter.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!892 = !{!893, !897, !900, !902, !903}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "all", scope: !890, file: !891, line: 71, baseType: !894, size: 128, align: 32)
!894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !895, size: 128, align: 32, elements: !107)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !896, line: 26, baseType: !80)
!896 = !DIFile(filename: "/usr/include/asm-generic/int-ll64.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!897 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !890, file: !891, line: 72, baseType: !898, size: 32, align: 32)
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !899, line: 30, baseType: !895)
!899 = !DIFile(filename: "/usr/include/linux/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!900 = !DIDerivedType(tag: DW_TAG_member, name: "ip6", scope: !890, file: !891, line: 73, baseType: !901, size: 128, align: 32)
!901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !898, size: 128, align: 32, elements: !107)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !890, file: !891, line: 74, baseType: !75, size: 32, align: 32)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "in6", scope: !890, file: !891, line: 75, baseType: !93, size: 128, align: 32)
!904 = !DILocation(line: 251, column: 16, scope: !527)
!905 = !DILocation(line: 253, column: 2, scope: !527)
!906 = !DILocation(line: 256, column: 21, scope: !527)
!907 = !DILocation(line: 256, column: 13, scope: !527)
!908 = !DILocation(line: 256, column: 19, scope: !527)
!909 = !DILocation(line: 257, column: 6, scope: !910)
!910 = distinct !DILexicalBlock(scope: !527, file: !202, line: 257, column: 6)
!911 = !DILocation(line: 257, column: 6, scope: !527)
!912 = !DILocation(line: 258, column: 28, scope: !913)
!913 = distinct !DILexicalBlock(scope: !910, file: !202, line: 257, column: 14)
!914 = !DILocation(line: 258, column: 36, scope: !913)
!915 = !DILocation(line: 258, column: 14, scope: !913)
!916 = !DILocation(line: 258, column: 21, scope: !913)
!917 = !DILocation(line: 259, column: 8, scope: !918)
!918 = distinct !DILexicalBlock(scope: !913, file: !202, line: 259, column: 7)
!919 = !DILocation(line: 259, column: 7, scope: !913)
!920 = !DILocation(line: 260, column: 22, scope: !918)
!921 = !DILocation(line: 260, column: 11, scope: !918)
!922 = !DILocation(line: 260, column: 33, scope: !918)
!923 = !DILocation(line: 260, column: 41, scope: !918)
!924 = !DILocation(line: 260, column: 4, scope: !918)
!925 = !DILocation(line: 262, column: 7, scope: !926)
!926 = distinct !DILexicalBlock(scope: !913, file: !202, line: 262, column: 7)
!927 = !DILocation(line: 262, column: 11, scope: !926)
!928 = !DILocation(line: 262, column: 7, scope: !913)
!929 = !DILocation(line: 263, column: 8, scope: !930)
!930 = distinct !DILexicalBlock(scope: !931, file: !202, line: 263, column: 8)
!931 = distinct !DILexicalBlock(scope: !926, file: !202, line: 262, column: 31)
!932 = !DILocation(line: 263, column: 16, scope: !930)
!933 = !DILocation(line: 263, column: 8, scope: !931)
!934 = !DILocation(line: 264, column: 30, scope: !930)
!935 = !DILocation(line: 264, column: 38, scope: !930)
!936 = !DILocation(line: 264, column: 16, scope: !930)
!937 = !DILocation(line: 264, column: 28, scope: !930)
!938 = !DILocation(line: 264, column: 5, scope: !930)
!939 = !DILocation(line: 265, column: 8, scope: !940)
!940 = distinct !DILexicalBlock(scope: !931, file: !202, line: 265, column: 8)
!941 = !DILocation(line: 265, column: 16, scope: !940)
!942 = !DILocation(line: 265, column: 8, scope: !931)
!943 = !DILocation(line: 266, column: 29, scope: !940)
!944 = !DILocation(line: 266, column: 37, scope: !940)
!945 = !DILocation(line: 266, column: 16, scope: !940)
!946 = !DILocation(line: 266, column: 27, scope: !940)
!947 = !DILocation(line: 266, column: 5, scope: !940)
!948 = !DILocation(line: 267, column: 8, scope: !949)
!949 = distinct !DILexicalBlock(scope: !931, file: !202, line: 267, column: 8)
!950 = !DILocation(line: 267, column: 16, scope: !949)
!951 = !DILocation(line: 267, column: 8, scope: !931)
!952 = !DILocation(line: 268, column: 28, scope: !949)
!953 = !DILocation(line: 268, column: 36, scope: !949)
!954 = !DILocation(line: 268, column: 16, scope: !949)
!955 = !DILocation(line: 268, column: 26, scope: !949)
!956 = !DILocation(line: 268, column: 5, scope: !949)
!957 = !DILocation(line: 269, column: 8, scope: !958)
!958 = distinct !DILexicalBlock(scope: !931, file: !202, line: 269, column: 8)
!959 = !DILocation(line: 269, column: 16, scope: !958)
!960 = !DILocation(line: 269, column: 28, scope: !958)
!961 = !DILocation(line: 269, column: 38, scope: !958)
!962 = !DILocation(line: 269, column: 8, scope: !931)
!963 = !DILocation(line: 270, column: 16, scope: !964)
!964 = distinct !DILexicalBlock(scope: !958, file: !202, line: 269, column: 49)
!965 = !DILocation(line: 270, column: 25, scope: !964)
!966 = !DILocation(line: 271, column: 57, scope: !964)
!967 = !DILocation(line: 271, column: 65, scope: !964)
!968 = !DILocation(line: 271, column: 79, scope: !964)
!969 = !DILocation(line: 271, column: 88, scope: !964)
!970 = !DILocation(line: 271, column: 16, scope: !964)
!971 = !DILocation(line: 271, column: 28, scope: !964)
!972 = !DILocation(line: 271, column: 31, scope: !964)
!973 = !DILocation(line: 272, column: 4, scope: !964)
!974 = !DILocation(line: 273, column: 13, scope: !975)
!975 = distinct !DILexicalBlock(scope: !958, file: !202, line: 273, column: 13)
!976 = !DILocation(line: 273, column: 21, scope: !975)
!977 = !DILocation(line: 273, column: 33, scope: !975)
!978 = !DILocation(line: 273, column: 43, scope: !975)
!979 = !DILocation(line: 273, column: 13, scope: !958)
!980 = !DILocation(line: 274, column: 16, scope: !981)
!981 = distinct !DILexicalBlock(scope: !975, file: !202, line: 273, column: 55)
!982 = !DILocation(line: 274, column: 25, scope: !981)
!983 = !DILocation(line: 275, column: 24, scope: !981)
!984 = !DILocation(line: 275, column: 36, scope: !981)
!985 = !DILocation(line: 275, column: 5, scope: !981)
!986 = !DILocation(line: 275, column: 67, scope: !981)
!987 = !DILocation(line: 275, column: 75, scope: !981)
!988 = !DILocation(line: 275, column: 89, scope: !981)
!989 = !DILocation(line: 276, column: 4, scope: !981)
!990 = !DILocation(line: 277, column: 3, scope: !931)
!991 = !DILocation(line: 279, column: 2, scope: !913)
!992 = !DILocation(line: 282, column: 12, scope: !527)
!993 = !DILocation(line: 282, column: 41, scope: !527)
!994 = !DILocation(line: 282, column: 2, scope: !527)
!995 = !DILocation(line: 283, column: 1, scope: !527)
!996 = distinct !DISubprogram(name: "ipvs_talk", scope: !202, file: !202, line: 188, type: !997, isLocal: true, isDefinition: true, scopeLine: 189, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!997 = !DISubroutineType(types: !998)
!998 = !{!62, !62, !999, !1019, !1034, !203}
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64, align: 64)
!1000 = !DIDerivedType(tag: DW_TAG_typedef, name: "ipvs_service_t", file: !496, line: 28, baseType: !1001)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_vs_service_app", file: !880, line: 44, size: 640, align: 32, elements: !1002)
!1002 = !{!1003, !1016, !1017, !1018}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1001, file: !880, line: 45, baseType: !1004, size: 352, align: 32)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_vs_service_user", file: !498, line: 130, size: 352, align: 32, elements: !1005)
!1005 = !{!1006, !1008, !1009, !1011, !1012, !1013, !1014, !1015}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !1004, file: !498, line: 132, baseType: !1007, size: 16, align: 16)
!1007 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !896, line: 23, baseType: !69)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1004, file: !498, line: 133, baseType: !898, size: 32, align: 32, offset: 32)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1004, file: !498, line: 134, baseType: !1010, size: 16, align: 16, offset: 64)
!1010 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be16", file: !899, line: 28, baseType: !1007)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "fwmark", scope: !1004, file: !498, line: 135, baseType: !895, size: 32, align: 32, offset: 96)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "sched_name", scope: !1004, file: !498, line: 138, baseType: !617, size: 128, align: 8, offset: 128)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1004, file: !498, line: 139, baseType: !80, size: 32, align: 32, offset: 256)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1004, file: !498, line: 140, baseType: !80, size: 32, align: 32, offset: 288)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "netmask", scope: !1004, file: !498, line: 141, baseType: !898, size: 32, align: 32, offset: 320)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "af", scope: !1001, file: !880, line: 46, baseType: !72, size: 16, align: 16, offset: 352)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "nf_addr", scope: !1001, file: !880, line: 47, baseType: !890, size: 128, align: 32, offset: 384)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "pe_name", scope: !1001, file: !880, line: 49, baseType: !617, size: 128, align: 8, offset: 512)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64, align: 64)
!1020 = !DIDerivedType(tag: DW_TAG_typedef, name: "ipvs_dest_t", file: !496, line: 29, baseType: !1021)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_vs_dest_app", file: !880, line: 53, size: 352, align: 32, elements: !1022)
!1022 = !{!1023, !1032, !1033}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1021, file: !880, line: 54, baseType: !1024, size: 192, align: 32)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_vs_dest_user", file: !498, line: 145, size: 192, align: 32, elements: !1025)
!1025 = !{!1026, !1027, !1028, !1029, !1030, !1031}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1024, file: !498, line: 147, baseType: !898, size: 32, align: 32)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1024, file: !498, line: 148, baseType: !1010, size: 16, align: 16, offset: 32)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "conn_flags", scope: !1024, file: !498, line: 151, baseType: !80, size: 32, align: 32, offset: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1024, file: !498, line: 152, baseType: !62, size: 32, align: 32, offset: 96)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "u_threshold", scope: !1024, file: !498, line: 155, baseType: !895, size: 32, align: 32, offset: 128)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "l_threshold", scope: !1024, file: !498, line: 156, baseType: !895, size: 32, align: 32, offset: 160)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "af", scope: !1021, file: !880, line: 55, baseType: !72, size: 16, align: 16, offset: 192)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "nf_addr", scope: !1021, file: !880, line: 56, baseType: !890, size: 128, align: 32, offset: 224)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64, align: 64)
!1035 = !DILocalVariable(name: "cmd", arg: 1, scope: !996, file: !202, line: 188, type: !62)
!1036 = !DILocation(line: 188, column: 15, scope: !996)
!1037 = !DILocalVariable(name: "srule", arg: 2, scope: !996, file: !202, line: 188, type: !999)
!1038 = !DILocation(line: 188, column: 36, scope: !996)
!1039 = !DILocalVariable(name: "drule", arg: 3, scope: !996, file: !202, line: 188, type: !1019)
!1040 = !DILocation(line: 188, column: 56, scope: !996)
!1041 = !DILocalVariable(name: "daemonrule", arg: 4, scope: !996, file: !202, line: 188, type: !1034)
!1042 = !DILocation(line: 188, column: 78, scope: !996)
!1043 = !DILocalVariable(name: "ignore_error", arg: 5, scope: !996, file: !202, line: 188, type: !203)
!1044 = !DILocation(line: 188, column: 94, scope: !996)
!1045 = !DILocalVariable(name: "result", scope: !996, file: !202, line: 190, type: !62)
!1046 = !DILocation(line: 190, column: 6, scope: !996)
!1047 = !DILocation(line: 192, column: 6, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !996, file: !202, line: 192, column: 6)
!1049 = !DILocation(line: 192, column: 6, scope: !996)
!1050 = !DILocation(line: 193, column: 10, scope: !1048)
!1051 = !DILocation(line: 193, column: 3, scope: !1048)
!1052 = !DILocation(line: 195, column: 10, scope: !996)
!1053 = !DILocation(line: 195, column: 2, scope: !996)
!1054 = !DILocation(line: 197, column: 31, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !996, file: !202, line: 195, column: 15)
!1056 = !DILocation(line: 197, column: 13, scope: !1055)
!1057 = !DILocation(line: 197, column: 11, scope: !1055)
!1058 = !DILocation(line: 198, column: 4, scope: !1055)
!1059 = !DILocation(line: 200, column: 30, scope: !1055)
!1060 = !DILocation(line: 200, column: 13, scope: !1055)
!1061 = !DILocation(line: 200, column: 11, scope: !1055)
!1062 = !DILocation(line: 201, column: 4, scope: !1055)
!1063 = !DILocation(line: 203, column: 13, scope: !1055)
!1064 = !DILocation(line: 203, column: 11, scope: !1055)
!1065 = !DILocation(line: 204, column: 4, scope: !1055)
!1066 = !DILocation(line: 206, column: 30, scope: !1055)
!1067 = !DILocation(line: 206, column: 13, scope: !1055)
!1068 = !DILocation(line: 206, column: 11, scope: !1055)
!1069 = !DILocation(line: 207, column: 4, scope: !1055)
!1070 = !DILocation(line: 209, column: 30, scope: !1055)
!1071 = !DILocation(line: 209, column: 13, scope: !1055)
!1072 = !DILocation(line: 209, column: 11, scope: !1055)
!1073 = !DILocation(line: 210, column: 4, scope: !1055)
!1074 = !DILocation(line: 212, column: 33, scope: !1055)
!1075 = !DILocation(line: 212, column: 13, scope: !1055)
!1076 = !DILocation(line: 212, column: 11, scope: !1055)
!1077 = !DILocation(line: 213, column: 4, scope: !1055)
!1078 = !DILocation(line: 215, column: 31, scope: !1055)
!1079 = !DILocation(line: 215, column: 13, scope: !1055)
!1080 = !DILocation(line: 215, column: 11, scope: !1055)
!1081 = !DILocation(line: 216, column: 4, scope: !1055)
!1082 = !DILocation(line: 218, column: 27, scope: !1055)
!1083 = !DILocation(line: 218, column: 34, scope: !1055)
!1084 = !DILocation(line: 218, column: 13, scope: !1055)
!1085 = !DILocation(line: 218, column: 11, scope: !1055)
!1086 = !DILocation(line: 219, column: 4, scope: !1055)
!1087 = !DILocation(line: 221, column: 27, scope: !1055)
!1088 = !DILocation(line: 221, column: 34, scope: !1055)
!1089 = !DILocation(line: 221, column: 13, scope: !1055)
!1090 = !DILocation(line: 221, column: 11, scope: !1055)
!1091 = !DILocation(line: 222, column: 4, scope: !1055)
!1092 = !DILocation(line: 224, column: 35, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1055, file: !202, line: 224, column: 8)
!1094 = !DILocation(line: 224, column: 42, scope: !1093)
!1095 = !DILocation(line: 224, column: 18, scope: !1093)
!1096 = !DILocation(line: 224, column: 16, scope: !1093)
!1097 = !DILocation(line: 224, column: 50, scope: !1093)
!1098 = !DILocation(line: 225, column: 10, scope: !1093)
!1099 = !DILocation(line: 225, column: 9, scope: !1093)
!1100 = !DILocation(line: 225, column: 14, scope: !1093)
!1101 = !DILocation(line: 224, column: 8, scope: !1102)
!1102 = !DILexicalBlockFile(scope: !1055, file: !202, discriminator: 1)
!1103 = !DILocation(line: 226, column: 9, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1093, file: !202, line: 225, column: 26)
!1105 = !DILocation(line: 227, column: 28, scope: !1104)
!1106 = !DILocation(line: 227, column: 35, scope: !1104)
!1107 = !DILocation(line: 227, column: 14, scope: !1104)
!1108 = !DILocation(line: 227, column: 12, scope: !1104)
!1109 = !DILocation(line: 228, column: 4, scope: !1104)
!1110 = !DILocation(line: 229, column: 4, scope: !1055)
!1111 = !DILocation(line: 232, column: 6, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !996, file: !202, line: 232, column: 6)
!1113 = !DILocation(line: 232, column: 6, scope: !996)
!1114 = !DILocation(line: 233, column: 10, scope: !1112)
!1115 = !DILocation(line: 233, column: 3, scope: !1112)
!1116 = !DILocation(line: 234, column: 11, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1112, file: !202, line: 234, column: 11)
!1118 = !DILocation(line: 234, column: 11, scope: !1112)
!1119 = !DILocation(line: 235, column: 8, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1121, file: !202, line: 235, column: 6)
!1121 = distinct !DILexicalBlock(scope: !1117, file: !202, line: 234, column: 19)
!1122 = !DILocation(line: 235, column: 7, scope: !1120)
!1123 = !DILocation(line: 235, column: 12, scope: !1120)
!1124 = !DILocation(line: 235, column: 22, scope: !1120)
!1125 = !DILocation(line: 236, column: 5, scope: !1120)
!1126 = !DILocation(line: 236, column: 9, scope: !1120)
!1127 = !DILocation(line: 236, column: 28, scope: !1120)
!1128 = !DILocation(line: 236, column: 31, scope: !1129)
!1129 = !DILexicalBlockFile(scope: !1120, file: !202, discriminator: 1)
!1130 = !DILocation(line: 236, column: 35, scope: !1129)
!1131 = !DILocation(line: 235, column: 6, scope: !1132)
!1132 = !DILexicalBlockFile(scope: !1121, file: !202, discriminator: 1)
!1133 = !DILocation(line: 237, column: 11, scope: !1120)
!1134 = !DILocation(line: 237, column: 4, scope: !1120)
!1135 = !DILocation(line: 238, column: 13, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1120, file: !202, line: 238, column: 11)
!1137 = !DILocation(line: 238, column: 12, scope: !1136)
!1138 = !DILocation(line: 238, column: 17, scope: !1136)
!1139 = !DILocation(line: 238, column: 27, scope: !1136)
!1140 = !DILocation(line: 239, column: 5, scope: !1136)
!1141 = !DILocation(line: 239, column: 9, scope: !1136)
!1142 = !DILocation(line: 239, column: 28, scope: !1136)
!1143 = !DILocation(line: 239, column: 31, scope: !1144)
!1144 = !DILexicalBlockFile(scope: !1136, file: !202, discriminator: 1)
!1145 = !DILocation(line: 239, column: 35, scope: !1144)
!1146 = !DILocation(line: 238, column: 11, scope: !1129)
!1147 = !DILocation(line: 240, column: 11, scope: !1136)
!1148 = !DILocation(line: 240, column: 4, scope: !1136)
!1149 = !DILocation(line: 241, column: 55, scope: !1121)
!1150 = !DILocation(line: 241, column: 62, scope: !1121)
!1151 = !DILocation(line: 241, column: 61, scope: !1121)
!1152 = !DILocation(line: 241, column: 83, scope: !1132)
!1153 = !DILocation(line: 241, column: 82, scope: !1121)
!1154 = !DILocation(line: 241, column: 67, scope: !1155)
!1155 = !DILexicalBlockFile(scope: !1121, file: !202, discriminator: 2)
!1156 = !DILocation(line: 241, column: 3, scope: !1157)
!1157 = !DILexicalBlockFile(scope: !1121, file: !202, discriminator: 3)
!1158 = !DILocation(line: 242, column: 2, scope: !1121)
!1159 = !DILocation(line: 243, column: 9, scope: !996)
!1160 = !DILocation(line: 243, column: 2, scope: !996)
!1161 = !DILocation(line: 244, column: 1, scope: !996)
!1162 = distinct !DISubprogram(name: "ipvs_flush_cmd", scope: !202, file: !202, line: 287, type: !405, isLocal: false, isDefinition: true, scopeLine: 288, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!1163 = !DILocation(line: 289, column: 2, scope: !1162)
!1164 = !DILocation(line: 290, column: 1, scope: !1162)
!1165 = distinct !DISubprogram(name: "ipvs_cmd", scope: !202, file: !202, line: 507, type: !1166, isLocal: false, isDefinition: true, scopeLine: 508, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{!62, !62, !1168, !1177}
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64, align: 64)
!1169 = !DIDerivedType(tag: DW_TAG_typedef, name: "virtual_server_t", file: !212, line: 180, baseType: !1170)
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_virtual_server", file: !212, line: 131, size: 2560, align: 64, elements: !1171)
!1171 = !{!1172, !1173, !1174, !1175, !1176, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "vsgname", scope: !1170, file: !212, line: 132, baseType: !149, size: 64, align: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "vsg", scope: !1170, file: !212, line: 133, baseType: !210, size: 64, align: 64, offset: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1170, file: !212, line: 134, baseType: !683, size: 1024, align: 64, offset: 128)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "vfwmark", scope: !1170, file: !212, line: 135, baseType: !79, size: 32, align: 32, offset: 1152)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "s_svr", scope: !1170, file: !212, line: 136, baseType: !1177, size: 64, align: 64, offset: 1216)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64, align: 64)
!1178 = !DIDerivedType(tag: DW_TAG_typedef, name: "real_server_t", file: !212, line: 102, baseType: !1179)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_real_server", file: !212, line: 62, size: 1920, align: 64, elements: !1180)
!1180 = !{!1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1179, file: !212, line: 63, baseType: !683, size: 1024, align: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1179, file: !212, line: 64, baseType: !62, size: 32, align: 32, offset: 1024)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "iweight", scope: !1179, file: !212, line: 65, baseType: !62, size: 32, align: 32, offset: 1056)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "pweight", scope: !1179, file: !212, line: 66, baseType: !62, size: 32, align: 32, offset: 1088)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "forwarding_method", scope: !1179, file: !212, line: 68, baseType: !80, size: 32, align: 32, offset: 1120)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "u_threshold", scope: !1179, file: !212, line: 69, baseType: !79, size: 32, align: 32, offset: 1152)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "l_threshold", scope: !1179, file: !212, line: 70, baseType: !79, size: 32, align: 32, offset: 1184)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "inhibit", scope: !1179, file: !212, line: 71, baseType: !62, size: 32, align: 32, offset: 1216)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "notify_up", scope: !1179, file: !212, line: 74, baseType: !570, size: 64, align: 64, offset: 1280)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "notify_down", scope: !1179, file: !212, line: 75, baseType: !570, size: 64, align: 64, offset: 1344)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "alpha", scope: !1179, file: !212, line: 76, baseType: !62, size: 32, align: 32, offset: 1408)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "delay_loop", scope: !1179, file: !212, line: 77, baseType: !195, size: 64, align: 64, offset: 1472)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "warmup", scope: !1179, file: !212, line: 78, baseType: !195, size: 64, align: 64, offset: 1536)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "retry", scope: !1179, file: !212, line: 79, baseType: !80, size: 32, align: 32, offset: 1600)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "delay_before_retry", scope: !1179, file: !212, line: 80, baseType: !195, size: 64, align: 64, offset: 1664)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "smtp_alert", scope: !1179, file: !212, line: 81, baseType: !62, size: 32, align: 32, offset: 1728)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "alive", scope: !1179, file: !212, line: 83, baseType: !203, size: 8, align: 8, offset: 1760)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "num_failed_checkers", scope: !1179, file: !212, line: 84, baseType: !80, size: 32, align: 32, offset: 1792)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1179, file: !212, line: 85, baseType: !203, size: 8, align: 8, offset: 1824)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "reloaded", scope: !1179, file: !212, line: 86, baseType: !203, size: 8, align: 8, offset: 1832)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "virtualhost", scope: !1179, file: !212, line: 87, baseType: !149, size: 64, align: 64, offset: 1856)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "af", scope: !1170, file: !212, line: 137, baseType: !72, size: 16, align: 16, offset: 1280)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "service_type", scope: !1170, file: !212, line: 138, baseType: !72, size: 16, align: 16, offset: 1296)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "ha_suspend", scope: !1170, file: !212, line: 139, baseType: !203, size: 8, align: 8, offset: 1312)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "ha_suspend_addr_count", scope: !1170, file: !212, line: 140, baseType: !62, size: 32, align: 32, offset: 1344)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "sched", scope: !1170, file: !212, line: 142, baseType: !617, size: 128, align: 8, offset: 1376)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1170, file: !212, line: 143, baseType: !79, size: 32, align: 32, offset: 1504)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "persistence_timeout", scope: !1170, file: !212, line: 144, baseType: !79, size: 32, align: 32, offset: 1536)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "pe_name", scope: !1170, file: !212, line: 146, baseType: !617, size: 128, align: 8, offset: 1568)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "forwarding_method", scope: !1170, file: !212, line: 148, baseType: !80, size: 32, align: 32, offset: 1696)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "persistence_granularity", scope: !1170, file: !212, line: 149, baseType: !79, size: 32, align: 32, offset: 1728)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "virtualhost", scope: !1170, file: !212, line: 151, baseType: !149, size: 64, align: 64, offset: 1792)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1170, file: !212, line: 153, baseType: !62, size: 32, align: 32, offset: 1856)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "rs", scope: !1170, file: !212, line: 154, baseType: !118, size: 64, align: 64, offset: 1920)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "alive", scope: !1170, file: !212, line: 155, baseType: !62, size: 32, align: 32, offset: 1984)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "alpha", scope: !1170, file: !212, line: 156, baseType: !203, size: 8, align: 8, offset: 2016)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "omega", scope: !1170, file: !212, line: 157, baseType: !203, size: 8, align: 8, offset: 2024)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "inhibit", scope: !1170, file: !212, line: 158, baseType: !203, size: 8, align: 8, offset: 2032)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "delay_loop", scope: !1170, file: !212, line: 160, baseType: !195, size: 64, align: 64, offset: 2048)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "warmup", scope: !1170, file: !212, line: 161, baseType: !195, size: 64, align: 64, offset: 2112)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "retry", scope: !1170, file: !212, line: 162, baseType: !80, size: 32, align: 32, offset: 2176)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "delay_before_retry", scope: !1170, file: !212, line: 163, baseType: !195, size: 64, align: 64, offset: 2240)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "notify_quorum_up", scope: !1170, file: !212, line: 164, baseType: !570, size: 64, align: 64, offset: 2304)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "notify_quorum_down", scope: !1170, file: !212, line: 165, baseType: !570, size: 64, align: 64, offset: 2368)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "quorum", scope: !1170, file: !212, line: 166, baseType: !80, size: 32, align: 32, offset: 2432)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "hysteresis", scope: !1170, file: !212, line: 167, baseType: !80, size: 32, align: 32, offset: 2464)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "smtp_alert", scope: !1170, file: !212, line: 168, baseType: !62, size: 32, align: 32, offset: 2496)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "quorum_state_up", scope: !1170, file: !212, line: 169, baseType: !203, size: 8, align: 8, offset: 2528)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "reloaded", scope: !1170, file: !212, line: 170, baseType: !203, size: 8, align: 8, offset: 2536)
!1230 = !DILocalVariable(name: "cmd", arg: 1, scope: !1165, file: !202, line: 507, type: !62)
!1231 = !DILocation(line: 507, column: 14, scope: !1165)
!1232 = !DILocalVariable(name: "vs", arg: 2, scope: !1165, file: !202, line: 507, type: !1168)
!1233 = !DILocation(line: 507, column: 37, scope: !1165)
!1234 = !DILocalVariable(name: "rs", arg: 3, scope: !1165, file: !202, line: 507, type: !1177)
!1235 = !DILocation(line: 507, column: 56, scope: !1165)
!1236 = !DILocalVariable(name: "srule", scope: !1165, file: !202, line: 509, type: !1000)
!1237 = !DILocation(line: 509, column: 17, scope: !1165)
!1238 = !DILocalVariable(name: "drule", scope: !1165, file: !202, line: 510, type: !1020)
!1239 = !DILocation(line: 510, column: 14, scope: !1165)
!1240 = !DILocation(line: 513, column: 17, scope: !1165)
!1241 = !DILocation(line: 513, column: 30, scope: !1165)
!1242 = !DILocation(line: 513, column: 2, scope: !1165)
!1243 = !DILocation(line: 514, column: 6, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1165, file: !202, line: 514, column: 6)
!1245 = !DILocation(line: 514, column: 6, scope: !1165)
!1246 = !DILocation(line: 515, column: 18, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1244, file: !202, line: 514, column: 10)
!1248 = !DILocation(line: 515, column: 31, scope: !1247)
!1249 = !DILocation(line: 515, column: 3, scope: !1247)
!1250 = !DILocation(line: 518, column: 7, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1247, file: !202, line: 518, column: 7)
!1252 = !DILocation(line: 518, column: 11, scope: !1251)
!1253 = !DILocation(line: 518, column: 34, scope: !1251)
!1254 = !DILocation(line: 518, column: 37, scope: !1255)
!1255 = !DILexicalBlockFile(scope: !1251, file: !202, discriminator: 1)
!1256 = !DILocation(line: 518, column: 41, scope: !1255)
!1257 = !DILocation(line: 518, column: 7, scope: !1255)
!1258 = !DILocation(line: 519, column: 10, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1251, file: !202, line: 518, column: 50)
!1260 = !DILocation(line: 519, column: 15, scope: !1259)
!1261 = !DILocation(line: 519, column: 22, scope: !1259)
!1262 = !DILocation(line: 520, column: 8, scope: !1259)
!1263 = !DILocation(line: 521, column: 3, scope: !1259)
!1264 = !DILocation(line: 522, column: 12, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1251, file: !202, line: 522, column: 12)
!1266 = !DILocation(line: 522, column: 16, scope: !1265)
!1267 = !DILocation(line: 522, column: 39, scope: !1265)
!1268 = !DILocation(line: 522, column: 42, scope: !1269)
!1269 = !DILexicalBlockFile(scope: !1265, file: !202, discriminator: 1)
!1270 = !DILocation(line: 522, column: 46, scope: !1269)
!1271 = !DILocation(line: 522, column: 54, scope: !1269)
!1272 = !DILocation(line: 522, column: 57, scope: !1273)
!1273 = !DILexicalBlockFile(scope: !1265, file: !202, discriminator: 2)
!1274 = !DILocation(line: 522, column: 61, scope: !1273)
!1275 = !DILocation(line: 522, column: 12, scope: !1273)
!1276 = !DILocation(line: 523, column: 8, scope: !1265)
!1277 = !DILocation(line: 523, column: 4, scope: !1265)
!1278 = !DILocation(line: 526, column: 12, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1265, file: !202, line: 526, column: 12)
!1280 = !DILocation(line: 526, column: 16, scope: !1279)
!1281 = !DILocation(line: 526, column: 39, scope: !1279)
!1282 = !DILocation(line: 526, column: 43, scope: !1283)
!1283 = !DILexicalBlockFile(scope: !1279, file: !202, discriminator: 1)
!1284 = !DILocation(line: 526, column: 47, scope: !1283)
!1285 = !DILocation(line: 526, column: 12, scope: !1283)
!1286 = !DILocation(line: 527, column: 4, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1279, file: !202, line: 526, column: 52)
!1288 = !DILocation(line: 527, column: 8, scope: !1287)
!1289 = !DILocation(line: 527, column: 12, scope: !1287)
!1290 = !DILocation(line: 528, column: 8, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1287, file: !202, line: 528, column: 8)
!1292 = !DILocation(line: 528, column: 12, scope: !1291)
!1293 = !DILocation(line: 528, column: 20, scope: !1291)
!1294 = !DILocation(line: 528, column: 23, scope: !1295)
!1295 = !DILexicalBlockFile(scope: !1291, file: !202, discriminator: 1)
!1296 = !DILocation(line: 528, column: 27, scope: !1295)
!1297 = !DILocation(line: 528, column: 8, scope: !1295)
!1298 = !DILocation(line: 529, column: 11, scope: !1291)
!1299 = !DILocation(line: 529, column: 16, scope: !1291)
!1300 = !DILocation(line: 529, column: 23, scope: !1291)
!1301 = !DILocation(line: 529, column: 5, scope: !1291)
!1302 = !DILocation(line: 530, column: 3, scope: !1287)
!1303 = !DILocation(line: 531, column: 12, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1279, file: !202, line: 531, column: 12)
!1305 = !DILocation(line: 531, column: 16, scope: !1304)
!1306 = !DILocation(line: 531, column: 39, scope: !1304)
!1307 = !DILocation(line: 531, column: 42, scope: !1308)
!1308 = !DILexicalBlockFile(scope: !1304, file: !202, discriminator: 1)
!1309 = !DILocation(line: 531, column: 46, scope: !1308)
!1310 = !DILocation(line: 531, column: 12, scope: !1308)
!1311 = !DILocation(line: 532, column: 4, scope: !1304)
!1312 = !DILocation(line: 532, column: 8, scope: !1304)
!1313 = !DILocation(line: 532, column: 12, scope: !1304)
!1314 = !DILocation(line: 533, column: 2, scope: !1247)
!1315 = !DILocation(line: 536, column: 6, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1165, file: !202, line: 536, column: 6)
!1317 = !DILocation(line: 536, column: 10, scope: !1316)
!1318 = !DILocation(line: 536, column: 6, scope: !1165)
!1319 = !DILocation(line: 537, column: 25, scope: !1316)
!1320 = !DILocation(line: 537, column: 46, scope: !1316)
!1321 = !DILocation(line: 537, column: 50, scope: !1316)
!1322 = !DILocation(line: 537, column: 10, scope: !1316)
!1323 = !DILocation(line: 537, column: 3, scope: !1316)
!1324 = !DILocation(line: 539, column: 6, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1165, file: !202, line: 539, column: 6)
!1326 = !DILocation(line: 539, column: 10, scope: !1325)
!1327 = !DILocation(line: 539, column: 6, scope: !1165)
!1328 = !DILocation(line: 540, column: 23, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1325, file: !202, line: 539, column: 19)
!1330 = !DILocation(line: 540, column: 27, scope: !1329)
!1331 = !DILocation(line: 540, column: 9, scope: !1329)
!1332 = !DILocation(line: 540, column: 14, scope: !1329)
!1333 = !DILocation(line: 540, column: 21, scope: !1329)
!1334 = !DILocation(line: 541, column: 2, scope: !1329)
!1335 = !DILocation(line: 542, column: 7, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1337, file: !202, line: 542, column: 7)
!1337 = distinct !DILexicalBlock(scope: !1325, file: !202, line: 541, column: 9)
!1338 = !DILocation(line: 542, column: 11, scope: !1336)
!1339 = !DILocation(line: 542, column: 14, scope: !1336)
!1340 = !DILocation(line: 542, column: 7, scope: !1337)
!1341 = !DILocation(line: 543, column: 22, scope: !1336)
!1342 = !DILocation(line: 543, column: 26, scope: !1336)
!1343 = !DILocation(line: 543, column: 39, scope: !1336)
!1344 = !DILocation(line: 543, column: 47, scope: !1336)
!1345 = !DILocation(line: 543, column: 4, scope: !1336)
!1346 = !DILocation(line: 545, column: 41, scope: !1336)
!1347 = !DILocation(line: 545, column: 45, scope: !1336)
!1348 = !DILocation(line: 545, column: 23, scope: !1336)
!1349 = !DILocation(line: 545, column: 10, scope: !1336)
!1350 = !DILocation(line: 545, column: 18, scope: !1336)
!1351 = !DILocation(line: 545, column: 21, scope: !1336)
!1352 = !DILocation(line: 546, column: 40, scope: !1337)
!1353 = !DILocation(line: 546, column: 44, scope: !1337)
!1354 = !DILocation(line: 546, column: 21, scope: !1337)
!1355 = !DILocation(line: 546, column: 9, scope: !1337)
!1356 = !DILocation(line: 546, column: 14, scope: !1337)
!1357 = !DILocation(line: 546, column: 19, scope: !1337)
!1358 = !DILocation(line: 550, column: 19, scope: !1165)
!1359 = !DILocation(line: 550, column: 9, scope: !1165)
!1360 = !DILocation(line: 550, column: 2, scope: !1165)
!1361 = !DILocation(line: 551, column: 1, scope: !1165)
!1362 = distinct !DISubprogram(name: "ipvs_set_srule", scope: !202, file: !202, line: 456, type: !1363, isLocal: true, isDefinition: true, scopeLine: 457, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{null, !62, !999, !1168}
!1365 = !DILocalVariable(name: "cmd", arg: 1, scope: !1362, file: !202, line: 456, type: !62)
!1366 = !DILocation(line: 456, column: 20, scope: !1362)
!1367 = !DILocalVariable(name: "srule", arg: 2, scope: !1362, file: !202, line: 456, type: !999)
!1368 = !DILocation(line: 456, column: 41, scope: !1362)
!1369 = !DILocalVariable(name: "vs", arg: 3, scope: !1362, file: !202, line: 456, type: !1168)
!1370 = !DILocation(line: 456, column: 66, scope: !1362)
!1371 = !DILocation(line: 459, column: 9, scope: !1362)
!1372 = !DILocation(line: 459, column: 2, scope: !1362)
!1373 = !DILocation(line: 461, column: 10, scope: !1362)
!1374 = !DILocation(line: 461, column: 17, scope: !1362)
!1375 = !DILocation(line: 461, column: 22, scope: !1362)
!1376 = !DILocation(line: 461, column: 34, scope: !1362)
!1377 = !DILocation(line: 461, column: 38, scope: !1362)
!1378 = !DILocation(line: 461, column: 2, scope: !1362)
!1379 = !DILocation(line: 462, column: 14, scope: !1362)
!1380 = !DILocation(line: 462, column: 18, scope: !1362)
!1381 = !DILocation(line: 462, column: 2, scope: !1362)
!1382 = !DILocation(line: 462, column: 9, scope: !1362)
!1383 = !DILocation(line: 462, column: 12, scope: !1362)
!1384 = !DILocation(line: 463, column: 22, scope: !1362)
!1385 = !DILocation(line: 463, column: 26, scope: !1362)
!1386 = !DILocation(line: 463, column: 2, scope: !1362)
!1387 = !DILocation(line: 463, column: 9, scope: !1362)
!1388 = !DILocation(line: 463, column: 14, scope: !1362)
!1389 = !DILocation(line: 463, column: 20, scope: !1362)
!1390 = !DILocation(line: 464, column: 25, scope: !1362)
!1391 = !DILocation(line: 464, column: 29, scope: !1362)
!1392 = !DILocation(line: 464, column: 32, scope: !1362)
!1393 = !DILocation(line: 464, column: 24, scope: !1362)
!1394 = !DILocation(line: 464, column: 2, scope: !1362)
!1395 = !DILocation(line: 464, column: 9, scope: !1362)
!1396 = !DILocation(line: 464, column: 14, scope: !1362)
!1397 = !DILocation(line: 464, column: 22, scope: !1362)
!1398 = !DILocation(line: 465, column: 25, scope: !1362)
!1399 = !DILocation(line: 465, column: 29, scope: !1362)
!1400 = !DILocation(line: 465, column: 2, scope: !1362)
!1401 = !DILocation(line: 465, column: 9, scope: !1362)
!1402 = !DILocation(line: 465, column: 14, scope: !1362)
!1403 = !DILocation(line: 465, column: 23, scope: !1362)
!1404 = !DILocation(line: 467, column: 6, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1362, file: !202, line: 467, column: 6)
!1406 = !DILocation(line: 467, column: 10, scope: !1405)
!1407 = !DILocation(line: 467, column: 30, scope: !1405)
!1408 = !DILocation(line: 468, column: 7, scope: !1405)
!1409 = !DILocation(line: 468, column: 11, scope: !1405)
!1410 = !DILocation(line: 468, column: 30, scope: !1405)
!1411 = !DILocation(line: 468, column: 33, scope: !1412)
!1412 = !DILexicalBlockFile(scope: !1405, file: !202, discriminator: 1)
!1413 = !DILocation(line: 468, column: 37, scope: !1412)
!1414 = !DILocation(line: 467, column: 6, scope: !1415)
!1415 = !DILexicalBlockFile(scope: !1362, file: !202, discriminator: 1)
!1416 = !DILocation(line: 469, column: 25, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1405, file: !202, line: 468, column: 59)
!1418 = !DILocation(line: 469, column: 29, scope: !1417)
!1419 = !DILocation(line: 469, column: 3, scope: !1417)
!1420 = !DILocation(line: 469, column: 10, scope: !1417)
!1421 = !DILocation(line: 469, column: 15, scope: !1417)
!1422 = !DILocation(line: 469, column: 23, scope: !1417)
!1423 = !DILocation(line: 470, column: 3, scope: !1417)
!1424 = !DILocation(line: 470, column: 10, scope: !1417)
!1425 = !DILocation(line: 470, column: 15, scope: !1417)
!1426 = !DILocation(line: 470, column: 21, scope: !1417)
!1427 = !DILocation(line: 472, column: 7, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1417, file: !202, line: 472, column: 7)
!1429 = !DILocation(line: 472, column: 11, scope: !1428)
!1430 = !DILocation(line: 472, column: 7, scope: !1417)
!1431 = !DILocation(line: 473, column: 26, scope: !1428)
!1432 = !DILocation(line: 473, column: 30, scope: !1428)
!1433 = !DILocation(line: 473, column: 4, scope: !1428)
!1434 = !DILocation(line: 473, column: 11, scope: !1428)
!1435 = !DILocation(line: 473, column: 16, scope: !1428)
!1436 = !DILocation(line: 473, column: 24, scope: !1428)
!1437 = !DILocation(line: 474, column: 2, scope: !1417)
!1438 = !DILocation(line: 477, column: 9, scope: !1362)
!1439 = !DILocation(line: 477, column: 16, scope: !1362)
!1440 = !DILocation(line: 477, column: 25, scope: !1362)
!1441 = !DILocation(line: 477, column: 29, scope: !1362)
!1442 = !DILocation(line: 477, column: 2, scope: !1362)
!1443 = !DILocation(line: 479, column: 1, scope: !1362)
!1444 = distinct !DISubprogram(name: "ipvs_set_drule", scope: !202, file: !202, line: 483, type: !1445, isLocal: true, isDefinition: true, scopeLine: 484, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!1445 = !DISubroutineType(types: !1446)
!1446 = !{null, !62, !1019, !1177}
!1447 = !DILocalVariable(name: "cmd", arg: 1, scope: !1444, file: !202, line: 483, type: !62)
!1448 = !DILocation(line: 483, column: 20, scope: !1444)
!1449 = !DILocalVariable(name: "drule", arg: 2, scope: !1444, file: !202, line: 483, type: !1019)
!1450 = !DILocation(line: 483, column: 38, scope: !1444)
!1451 = !DILocalVariable(name: "rs", arg: 3, scope: !1444, file: !202, line: 483, type: !1177)
!1452 = !DILocation(line: 483, column: 61, scope: !1444)
!1453 = !DILocation(line: 485, column: 6, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1444, file: !202, line: 485, column: 6)
!1455 = !DILocation(line: 485, column: 10, scope: !1454)
!1456 = !DILocation(line: 485, column: 33, scope: !1454)
!1457 = !DILocation(line: 486, column: 6, scope: !1454)
!1458 = !DILocation(line: 486, column: 10, scope: !1454)
!1459 = !DILocation(line: 486, column: 33, scope: !1454)
!1460 = !DILocation(line: 487, column: 6, scope: !1454)
!1461 = !DILocation(line: 487, column: 10, scope: !1454)
!1462 = !DILocation(line: 485, column: 6, scope: !1463)
!1463 = !DILexicalBlockFile(scope: !1444, file: !202, discriminator: 1)
!1464 = !DILocation(line: 488, column: 3, scope: !1454)
!1465 = !DILocation(line: 491, column: 9, scope: !1444)
!1466 = !DILocation(line: 491, column: 2, scope: !1444)
!1467 = !DILocation(line: 493, column: 14, scope: !1444)
!1468 = !DILocation(line: 493, column: 18, scope: !1444)
!1469 = !DILocation(line: 493, column: 23, scope: !1444)
!1470 = !DILocation(line: 493, column: 2, scope: !1444)
!1471 = !DILocation(line: 493, column: 9, scope: !1444)
!1472 = !DILocation(line: 493, column: 12, scope: !1444)
!1473 = !DILocation(line: 494, column: 6, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1444, file: !202, line: 494, column: 6)
!1475 = !DILocation(line: 494, column: 10, scope: !1474)
!1476 = !DILocation(line: 494, column: 15, scope: !1474)
!1477 = !DILocation(line: 494, column: 25, scope: !1474)
!1478 = !DILocation(line: 494, column: 6, scope: !1444)
!1479 = !DILocation(line: 495, column: 21, scope: !1474)
!1480 = !DILocation(line: 495, column: 25, scope: !1474)
!1481 = !DILocation(line: 495, column: 32, scope: !1474)
!1482 = !DILocation(line: 495, column: 39, scope: !1474)
!1483 = !DILocation(line: 495, column: 47, scope: !1474)
!1484 = !DILocation(line: 495, column: 3, scope: !1474)
!1485 = !DILocation(line: 497, column: 41, scope: !1474)
!1486 = !DILocation(line: 497, column: 45, scope: !1474)
!1487 = !DILocation(line: 497, column: 23, scope: !1474)
!1488 = !DILocation(line: 497, column: 3, scope: !1474)
!1489 = !DILocation(line: 497, column: 10, scope: !1474)
!1490 = !DILocation(line: 497, column: 18, scope: !1474)
!1491 = !DILocation(line: 497, column: 21, scope: !1474)
!1492 = !DILocation(line: 498, column: 40, scope: !1444)
!1493 = !DILocation(line: 498, column: 44, scope: !1444)
!1494 = !DILocation(line: 498, column: 21, scope: !1444)
!1495 = !DILocation(line: 498, column: 2, scope: !1444)
!1496 = !DILocation(line: 498, column: 9, scope: !1444)
!1497 = !DILocation(line: 498, column: 14, scope: !1444)
!1498 = !DILocation(line: 498, column: 19, scope: !1444)
!1499 = !DILocation(line: 499, column: 27, scope: !1444)
!1500 = !DILocation(line: 499, column: 31, scope: !1444)
!1501 = !DILocation(line: 499, column: 2, scope: !1444)
!1502 = !DILocation(line: 499, column: 9, scope: !1444)
!1503 = !DILocation(line: 499, column: 14, scope: !1444)
!1504 = !DILocation(line: 499, column: 25, scope: !1444)
!1505 = !DILocation(line: 500, column: 23, scope: !1444)
!1506 = !DILocation(line: 500, column: 27, scope: !1444)
!1507 = !DILocation(line: 500, column: 2, scope: !1444)
!1508 = !DILocation(line: 500, column: 9, scope: !1444)
!1509 = !DILocation(line: 500, column: 14, scope: !1444)
!1510 = !DILocation(line: 500, column: 21, scope: !1444)
!1511 = !DILocation(line: 501, column: 28, scope: !1444)
!1512 = !DILocation(line: 501, column: 32, scope: !1444)
!1513 = !DILocation(line: 501, column: 2, scope: !1444)
!1514 = !DILocation(line: 501, column: 9, scope: !1444)
!1515 = !DILocation(line: 501, column: 14, scope: !1444)
!1516 = !DILocation(line: 501, column: 26, scope: !1444)
!1517 = !DILocation(line: 502, column: 28, scope: !1444)
!1518 = !DILocation(line: 502, column: 32, scope: !1444)
!1519 = !DILocation(line: 502, column: 2, scope: !1444)
!1520 = !DILocation(line: 502, column: 9, scope: !1444)
!1521 = !DILocation(line: 502, column: 14, scope: !1444)
!1522 = !DILocation(line: 502, column: 26, scope: !1444)
!1523 = !DILocation(line: 503, column: 1, scope: !1444)
!1524 = !DILocation(line: 503, column: 1, scope: !1463)
!1525 = distinct !DISubprogram(name: "ipvs_group_cmd", scope: !202, file: !202, line: 405, type: !1526, isLocal: true, isDefinition: true, scopeLine: 406, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{!62, !62, !999, !1019, !1168, !1177}
!1528 = !DILocalVariable(name: "cmd", arg: 1, scope: !1525, file: !202, line: 405, type: !62)
!1529 = !DILocation(line: 405, column: 20, scope: !1525)
!1530 = !DILocalVariable(name: "srule", arg: 2, scope: !1525, file: !202, line: 405, type: !999)
!1531 = !DILocation(line: 405, column: 41, scope: !1525)
!1532 = !DILocalVariable(name: "drule", arg: 3, scope: !1525, file: !202, line: 405, type: !1019)
!1533 = !DILocation(line: 405, column: 61, scope: !1525)
!1534 = !DILocalVariable(name: "vs", arg: 4, scope: !1525, file: !202, line: 405, type: !1168)
!1535 = !DILocation(line: 405, column: 86, scope: !1525)
!1536 = !DILocalVariable(name: "rs", arg: 5, scope: !1525, file: !202, line: 405, type: !1177)
!1537 = !DILocation(line: 405, column: 105, scope: !1525)
!1538 = !DILocalVariable(name: "vsg", scope: !1525, file: !202, line: 407, type: !210)
!1539 = !DILocation(line: 407, column: 26, scope: !1525)
!1540 = !DILocation(line: 407, column: 32, scope: !1525)
!1541 = !DILocation(line: 407, column: 36, scope: !1525)
!1542 = !DILocalVariable(name: "vsg_entry", scope: !1525, file: !202, line: 408, type: !1543)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64, align: 64)
!1544 = !DIDerivedType(tag: DW_TAG_typedef, name: "virtual_server_group_entry_t", file: !212, line: 122, baseType: !1545)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_virtual_server_group_entry", file: !212, line: 105, size: 1280, align: 64, elements: !1546)
!1546 = !{!1547, !1548, !1565}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "is_fwmark", scope: !1545, file: !212, line: 106, baseType: !203, size: 8, align: 8)
!1548 = !DIDerivedType(tag: DW_TAG_member, scope: !1545, file: !212, line: 107, baseType: !1549, size: 1152, align: 64, offset: 64)
!1549 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1545, file: !212, line: 107, size: 1152, align: 64, elements: !1550)
!1550 = !{!1551, !1559}
!1551 = !DIDerivedType(tag: DW_TAG_member, scope: !1549, file: !212, line: 108, baseType: !1552, size: 1152, align: 64)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1549, file: !212, line: 108, size: 1152, align: 64, elements: !1553)
!1553 = !{!1554, !1555, !1556, !1557, !1558}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1552, file: !212, line: 109, baseType: !683, size: 1024, align: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1552, file: !212, line: 110, baseType: !79, size: 32, align: 32, offset: 1024)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_alive", scope: !1552, file: !212, line: 111, baseType: !80, size: 32, align: 32, offset: 1056)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "udp_alive", scope: !1552, file: !212, line: 112, baseType: !80, size: 32, align: 32, offset: 1088)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "sctp_alive", scope: !1552, file: !212, line: 113, baseType: !80, size: 32, align: 32, offset: 1120)
!1559 = !DIDerivedType(tag: DW_TAG_member, scope: !1549, file: !212, line: 115, baseType: !1560, size: 96, align: 32)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1549, file: !212, line: 115, size: 96, align: 32, elements: !1561)
!1561 = !{!1562, !1563, !1564}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "vfwmark", scope: !1560, file: !212, line: 116, baseType: !79, size: 32, align: 32)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "fwm4_alive", scope: !1560, file: !212, line: 117, baseType: !80, size: 32, align: 32, offset: 32)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "fwm6_alive", scope: !1560, file: !212, line: 118, baseType: !80, size: 32, align: 32, offset: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "reloaded", scope: !1545, file: !212, line: 121, baseType: !203, size: 8, align: 8, offset: 1216)
!1566 = !DILocation(line: 408, column: 32, scope: !1525)
!1567 = !DILocalVariable(name: "e", scope: !1525, file: !202, line: 409, type: !225)
!1568 = !DILocation(line: 409, column: 10, scope: !1525)
!1569 = !DILocation(line: 412, column: 7, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1525, file: !202, line: 412, column: 6)
!1571 = !DILocation(line: 412, column: 6, scope: !1525)
!1572 = !DILocation(line: 413, column: 3, scope: !1570)
!1573 = !DILocation(line: 416, column: 15, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1525, file: !202, line: 416, column: 2)
!1575 = !DILocation(line: 416, column: 20, scope: !1574)
!1576 = !DILocation(line: 416, column: 14, scope: !1574)
!1577 = !DILocation(line: 416, column: 37, scope: !1578)
!1578 = !DILexicalBlockFile(scope: !1574, file: !202, discriminator: 1)
!1579 = !DILocation(line: 416, column: 42, scope: !1578)
!1580 = !DILocation(line: 416, column: 36, scope: !1578)
!1581 = !DILocation(line: 416, column: 35, scope: !1578)
!1582 = !DILocation(line: 416, column: 35, scope: !1583)
!1583 = !DILexicalBlockFile(scope: !1574, file: !202, discriminator: 2)
!1584 = !DILocation(line: 416, column: 4, scope: !1585)
!1585 = !DILexicalBlockFile(scope: !1574, file: !202, discriminator: 3)
!1586 = !DILocation(line: 416, column: 9, scope: !1585)
!1587 = !DILocation(line: 416, column: 22, scope: !1585)
!1588 = !DILocation(line: 416, column: 35, scope: !1585)
!1589 = !DILocation(line: 416, column: 35, scope: !1590)
!1590 = !DILexicalBlockFile(scope: !1574, file: !202, discriminator: 4)
!1591 = !DILocation(line: 416, column: 14, scope: !1590)
!1592 = !DILocation(line: 416, column: 14, scope: !1593)
!1593 = !DILexicalBlockFile(scope: !1574, file: !202, discriminator: 5)
!1594 = !DILocation(line: 416, column: 14, scope: !1595)
!1595 = !DILexicalBlockFile(scope: !1574, file: !202, discriminator: 6)
!1596 = !DILocation(line: 416, column: 11, scope: !1595)
!1597 = !DILocation(line: 416, column: 7, scope: !1595)
!1598 = !DILocation(line: 416, column: 5, scope: !1599)
!1599 = !DILexicalBlockFile(scope: !1600, file: !202, discriminator: 7)
!1600 = distinct !DILexicalBlock(scope: !1574, file: !202, line: 416, column: 2)
!1601 = !DILocation(line: 416, column: 4, scope: !1599)
!1602 = !DILocation(line: 416, column: 8, scope: !1599)
!1603 = !DILocation(line: 416, column: 28, scope: !1604)
!1604 = !DILexicalBlockFile(scope: !1600, file: !202, discriminator: 8)
!1605 = !DILocation(line: 416, column: 32, scope: !1604)
!1606 = !DILocation(line: 416, column: 26, scope: !1604)
!1607 = !DILocation(line: 416, column: 24, scope: !1604)
!1608 = !DILocation(line: 416, column: 2, scope: !1609)
!1609 = !DILexicalBlockFile(scope: !1574, file: !202, discriminator: 9)
!1610 = !DILocation(line: 417, column: 26, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1612, file: !202, line: 417, column: 7)
!1612 = distinct !DILexicalBlock(scope: !1600, file: !202, line: 416, column: 62)
!1613 = !DILocation(line: 417, column: 31, scope: !1611)
!1614 = !DILocation(line: 417, column: 42, scope: !1611)
!1615 = !DILocation(line: 417, column: 46, scope: !1611)
!1616 = !DILocation(line: 417, column: 7, scope: !1611)
!1617 = !DILocation(line: 417, column: 7, scope: !1612)
!1618 = !DILocation(line: 418, column: 42, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1611, file: !202, line: 417, column: 51)
!1620 = !DILocation(line: 418, column: 53, scope: !1619)
!1621 = !DILocation(line: 418, column: 23, scope: !1619)
!1622 = !DILocation(line: 418, column: 4, scope: !1619)
!1623 = !DILocation(line: 418, column: 11, scope: !1619)
!1624 = !DILocation(line: 418, column: 16, scope: !1619)
!1625 = !DILocation(line: 418, column: 21, scope: !1619)
!1626 = !DILocation(line: 420, column: 8, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1619, file: !202, line: 420, column: 8)
!1628 = !DILocation(line: 420, column: 19, scope: !1627)
!1629 = !DILocation(line: 420, column: 8, scope: !1619)
!1630 = !DILocation(line: 421, column: 30, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1632, file: !202, line: 421, column: 9)
!1632 = distinct !DILexicalBlock(scope: !1627, file: !202, line: 420, column: 26)
!1633 = !DILocation(line: 421, column: 35, scope: !1631)
!1634 = !DILocation(line: 421, column: 42, scope: !1631)
!1635 = !DILocation(line: 421, column: 49, scope: !1631)
!1636 = !DILocation(line: 421, column: 9, scope: !1631)
!1637 = !DILocation(line: 421, column: 9, scope: !1632)
!1638 = !DILocation(line: 422, column: 6, scope: !1631)
!1639 = !DILocation(line: 423, column: 4, scope: !1632)
!1640 = !DILocation(line: 424, column: 9, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !202, line: 424, column: 9)
!1642 = distinct !DILexicalBlock(scope: !1627, file: !202, line: 423, column: 11)
!1643 = !DILocation(line: 424, column: 20, scope: !1641)
!1644 = !DILocation(line: 424, column: 25, scope: !1641)
!1645 = !DILocation(line: 424, column: 35, scope: !1641)
!1646 = !DILocation(line: 424, column: 9, scope: !1642)
!1647 = !DILocation(line: 425, column: 24, scope: !1641)
!1648 = !DILocation(line: 425, column: 35, scope: !1641)
!1649 = !DILocation(line: 425, column: 42, scope: !1641)
!1650 = !DILocation(line: 425, column: 49, scope: !1641)
!1651 = !DILocation(line: 425, column: 57, scope: !1641)
!1652 = !DILocation(line: 425, column: 6, scope: !1641)
!1653 = !DILocation(line: 427, column: 44, scope: !1641)
!1654 = !DILocation(line: 427, column: 55, scope: !1641)
!1655 = !DILocation(line: 427, column: 26, scope: !1641)
!1656 = !DILocation(line: 427, column: 6, scope: !1641)
!1657 = !DILocation(line: 427, column: 13, scope: !1641)
!1658 = !DILocation(line: 427, column: 21, scope: !1641)
!1659 = !DILocation(line: 427, column: 24, scope: !1641)
!1660 = !DILocation(line: 430, column: 19, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1642, file: !202, line: 430, column: 9)
!1662 = !DILocation(line: 430, column: 24, scope: !1661)
!1663 = !DILocation(line: 430, column: 31, scope: !1661)
!1664 = !DILocation(line: 430, column: 9, scope: !1661)
!1665 = !DILocation(line: 430, column: 9, scope: !1642)
!1666 = !DILocation(line: 431, column: 6, scope: !1661)
!1667 = !DILocation(line: 433, column: 3, scope: !1619)
!1668 = !DILocation(line: 434, column: 29, scope: !1612)
!1669 = !DILocation(line: 434, column: 34, scope: !1612)
!1670 = !DILocation(line: 434, column: 45, scope: !1612)
!1671 = !DILocation(line: 434, column: 3, scope: !1612)
!1672 = !DILocation(line: 435, column: 2, scope: !1612)
!1673 = !DILocation(line: 416, column: 51, scope: !1674)
!1674 = !DILexicalBlockFile(scope: !1600, file: !202, discriminator: 10)
!1675 = !DILocation(line: 416, column: 55, scope: !1674)
!1676 = !DILocation(line: 416, column: 48, scope: !1674)
!1677 = !DILocation(line: 416, column: 2, scope: !1674)
!1678 = distinct !{!1678, !1679}
!1679 = !DILocation(line: 416, column: 2, scope: !1525)
!1680 = !DILocation(line: 438, column: 10, scope: !1525)
!1681 = !DILocation(line: 438, column: 17, scope: !1525)
!1682 = !DILocation(line: 438, column: 2, scope: !1525)
!1683 = !DILocation(line: 439, column: 2, scope: !1525)
!1684 = !DILocation(line: 439, column: 9, scope: !1525)
!1685 = !DILocation(line: 439, column: 14, scope: !1525)
!1686 = !DILocation(line: 439, column: 19, scope: !1525)
!1687 = !DILocation(line: 440, column: 15, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1525, file: !202, line: 440, column: 2)
!1689 = !DILocation(line: 440, column: 20, scope: !1688)
!1690 = !DILocation(line: 440, column: 14, scope: !1688)
!1691 = !DILocation(line: 440, column: 34, scope: !1692)
!1692 = !DILexicalBlockFile(scope: !1688, file: !202, discriminator: 1)
!1693 = !DILocation(line: 440, column: 39, scope: !1692)
!1694 = !DILocation(line: 440, column: 33, scope: !1692)
!1695 = !DILocation(line: 440, column: 32, scope: !1692)
!1696 = !DILocation(line: 440, column: 32, scope: !1697)
!1697 = !DILexicalBlockFile(scope: !1688, file: !202, discriminator: 2)
!1698 = !DILocation(line: 440, column: 4, scope: !1699)
!1699 = !DILexicalBlockFile(scope: !1688, file: !202, discriminator: 3)
!1700 = !DILocation(line: 440, column: 9, scope: !1699)
!1701 = !DILocation(line: 440, column: 19, scope: !1699)
!1702 = !DILocation(line: 440, column: 32, scope: !1699)
!1703 = !DILocation(line: 440, column: 32, scope: !1704)
!1704 = !DILexicalBlockFile(scope: !1688, file: !202, discriminator: 4)
!1705 = !DILocation(line: 440, column: 14, scope: !1704)
!1706 = !DILocation(line: 440, column: 14, scope: !1707)
!1707 = !DILexicalBlockFile(scope: !1688, file: !202, discriminator: 5)
!1708 = !DILocation(line: 440, column: 14, scope: !1709)
!1709 = !DILexicalBlockFile(scope: !1688, file: !202, discriminator: 6)
!1710 = !DILocation(line: 440, column: 11, scope: !1709)
!1711 = !DILocation(line: 440, column: 7, scope: !1709)
!1712 = !DILocation(line: 440, column: 5, scope: !1713)
!1713 = !DILexicalBlockFile(scope: !1714, file: !202, discriminator: 7)
!1714 = distinct !DILexicalBlock(scope: !1688, file: !202, line: 440, column: 2)
!1715 = !DILocation(line: 440, column: 4, scope: !1713)
!1716 = !DILocation(line: 440, column: 8, scope: !1713)
!1717 = !DILocation(line: 440, column: 28, scope: !1718)
!1718 = !DILexicalBlockFile(scope: !1714, file: !202, discriminator: 8)
!1719 = !DILocation(line: 440, column: 32, scope: !1718)
!1720 = !DILocation(line: 440, column: 26, scope: !1718)
!1721 = !DILocation(line: 440, column: 24, scope: !1718)
!1722 = !DILocation(line: 440, column: 2, scope: !1723)
!1723 = !DILexicalBlockFile(scope: !1688, file: !202, discriminator: 9)
!1724 = !DILocation(line: 441, column: 24, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1714, file: !202, line: 440, column: 62)
!1726 = !DILocation(line: 441, column: 35, scope: !1725)
!1727 = !DILocation(line: 441, column: 3, scope: !1725)
!1728 = !DILocation(line: 441, column: 10, scope: !1725)
!1729 = !DILocation(line: 441, column: 15, scope: !1725)
!1730 = !DILocation(line: 441, column: 22, scope: !1725)
!1731 = !DILocation(line: 444, column: 26, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1725, file: !202, line: 444, column: 7)
!1733 = !DILocation(line: 444, column: 31, scope: !1732)
!1734 = !DILocation(line: 444, column: 42, scope: !1732)
!1735 = !DILocation(line: 444, column: 46, scope: !1732)
!1736 = !DILocation(line: 444, column: 7, scope: !1732)
!1737 = !DILocation(line: 444, column: 7, scope: !1725)
!1738 = !DILocation(line: 445, column: 18, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1740, file: !202, line: 445, column: 8)
!1740 = distinct !DILexicalBlock(scope: !1732, file: !202, line: 444, column: 51)
!1741 = !DILocation(line: 445, column: 23, scope: !1739)
!1742 = !DILocation(line: 445, column: 30, scope: !1739)
!1743 = !DILocation(line: 445, column: 8, scope: !1739)
!1744 = !DILocation(line: 445, column: 8, scope: !1740)
!1745 = !DILocation(line: 446, column: 5, scope: !1739)
!1746 = !DILocation(line: 447, column: 3, scope: !1740)
!1747 = !DILocation(line: 448, column: 29, scope: !1725)
!1748 = !DILocation(line: 448, column: 34, scope: !1725)
!1749 = !DILocation(line: 448, column: 45, scope: !1725)
!1750 = !DILocation(line: 448, column: 3, scope: !1725)
!1751 = !DILocation(line: 449, column: 2, scope: !1725)
!1752 = !DILocation(line: 440, column: 51, scope: !1753)
!1753 = !DILexicalBlockFile(scope: !1714, file: !202, discriminator: 10)
!1754 = !DILocation(line: 440, column: 55, scope: !1753)
!1755 = !DILocation(line: 440, column: 48, scope: !1753)
!1756 = !DILocation(line: 440, column: 2, scope: !1753)
!1757 = distinct !{!1757, !1758}
!1758 = !DILocation(line: 440, column: 2, scope: !1525)
!1759 = !DILocation(line: 451, column: 2, scope: !1525)
!1760 = !DILocation(line: 452, column: 1, scope: !1525)
!1761 = distinct !DISubprogram(name: "ipvs_group_sync_entry", scope: !202, file: !202, line: 555, type: !1762, isLocal: false, isDefinition: true, scopeLine: 556, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{null, !1168, !1543}
!1764 = !DILocalVariable(name: "vs", arg: 1, scope: !1761, file: !202, line: 555, type: !1168)
!1765 = !DILocation(line: 555, column: 41, scope: !1761)
!1766 = !DILocalVariable(name: "vsge", arg: 2, scope: !1761, file: !202, line: 555, type: !1543)
!1767 = !DILocation(line: 555, column: 75, scope: !1761)
!1768 = !DILocalVariable(name: "rs", scope: !1761, file: !202, line: 557, type: !1177)
!1769 = !DILocation(line: 557, column: 17, scope: !1761)
!1770 = !DILocalVariable(name: "e", scope: !1761, file: !202, line: 558, type: !225)
!1771 = !DILocation(line: 558, column: 10, scope: !1761)
!1772 = !DILocalVariable(name: "srule", scope: !1761, file: !202, line: 559, type: !1000)
!1773 = !DILocation(line: 559, column: 17, scope: !1761)
!1774 = !DILocalVariable(name: "drule", scope: !1761, file: !202, line: 560, type: !1020)
!1775 = !DILocation(line: 560, column: 14, scope: !1761)
!1776 = !DILocation(line: 562, column: 46, scope: !1761)
!1777 = !DILocation(line: 562, column: 2, scope: !1761)
!1778 = !DILocation(line: 563, column: 6, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1761, file: !202, line: 563, column: 6)
!1780 = !DILocation(line: 563, column: 12, scope: !1779)
!1781 = !DILocation(line: 563, column: 6, scope: !1761)
!1782 = !DILocation(line: 564, column: 23, scope: !1779)
!1783 = !DILocation(line: 564, column: 29, scope: !1779)
!1784 = !DILocation(line: 564, column: 9, scope: !1779)
!1785 = !DILocation(line: 564, column: 14, scope: !1779)
!1786 = !DILocation(line: 564, column: 21, scope: !1779)
!1787 = !DILocation(line: 564, column: 3, scope: !1779)
!1788 = !DILocation(line: 566, column: 40, scope: !1779)
!1789 = !DILocation(line: 566, column: 46, scope: !1779)
!1790 = !DILocation(line: 566, column: 21, scope: !1779)
!1791 = !DILocation(line: 566, column: 9, scope: !1779)
!1792 = !DILocation(line: 566, column: 14, scope: !1779)
!1793 = !DILocation(line: 566, column: 19, scope: !1779)
!1794 = !DILocation(line: 569, column: 15, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1761, file: !202, line: 569, column: 2)
!1796 = !DILocation(line: 569, column: 19, scope: !1795)
!1797 = !DILocation(line: 569, column: 14, scope: !1795)
!1798 = !DILocation(line: 569, column: 28, scope: !1799)
!1799 = !DILexicalBlockFile(scope: !1795, file: !202, discriminator: 1)
!1800 = !DILocation(line: 569, column: 32, scope: !1799)
!1801 = !DILocation(line: 569, column: 27, scope: !1799)
!1802 = !DILocation(line: 569, column: 26, scope: !1799)
!1803 = !DILocation(line: 569, column: 26, scope: !1804)
!1804 = !DILexicalBlockFile(scope: !1795, file: !202, discriminator: 2)
!1805 = !DILocation(line: 569, column: 4, scope: !1806)
!1806 = !DILexicalBlockFile(scope: !1795, file: !202, discriminator: 3)
!1807 = !DILocation(line: 569, column: 8, scope: !1806)
!1808 = !DILocation(line: 569, column: 13, scope: !1806)
!1809 = !DILocation(line: 569, column: 26, scope: !1806)
!1810 = !DILocation(line: 569, column: 26, scope: !1811)
!1811 = !DILexicalBlockFile(scope: !1795, file: !202, discriminator: 4)
!1812 = !DILocation(line: 569, column: 14, scope: !1811)
!1813 = !DILocation(line: 569, column: 14, scope: !1814)
!1814 = !DILexicalBlockFile(scope: !1795, file: !202, discriminator: 5)
!1815 = !DILocation(line: 569, column: 14, scope: !1816)
!1816 = !DILexicalBlockFile(scope: !1795, file: !202, discriminator: 6)
!1817 = !DILocation(line: 569, column: 11, scope: !1816)
!1818 = !DILocation(line: 569, column: 7, scope: !1816)
!1819 = !DILocation(line: 569, column: 5, scope: !1820)
!1820 = !DILexicalBlockFile(scope: !1821, file: !202, discriminator: 7)
!1821 = distinct !DILexicalBlock(scope: !1795, file: !202, line: 569, column: 2)
!1822 = !DILocation(line: 569, column: 4, scope: !1820)
!1823 = !DILocation(line: 569, column: 8, scope: !1820)
!1824 = !DILocation(line: 569, column: 21, scope: !1825)
!1825 = !DILexicalBlockFile(scope: !1821, file: !202, discriminator: 8)
!1826 = !DILocation(line: 569, column: 25, scope: !1825)
!1827 = !DILocation(line: 569, column: 19, scope: !1825)
!1828 = !DILocation(line: 569, column: 17, scope: !1825)
!1829 = !DILocation(line: 569, column: 2, scope: !1830)
!1830 = !DILexicalBlockFile(scope: !1795, file: !202, discriminator: 9)
!1831 = !DILocation(line: 571, column: 7, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1833, file: !202, line: 571, column: 7)
!1833 = distinct !DILexicalBlock(scope: !1821, file: !202, line: 569, column: 55)
!1834 = !DILocation(line: 571, column: 11, scope: !1832)
!1835 = !DILocation(line: 571, column: 20, scope: !1832)
!1836 = !DILocation(line: 571, column: 24, scope: !1837)
!1837 = !DILexicalBlockFile(scope: !1832, file: !202, discriminator: 1)
!1838 = !DILocation(line: 571, column: 28, scope: !1837)
!1839 = !DILocation(line: 571, column: 34, scope: !1837)
!1840 = !DILocation(line: 571, column: 38, scope: !1841)
!1841 = !DILexicalBlockFile(scope: !1832, file: !202, discriminator: 2)
!1842 = !DILocation(line: 571, column: 42, scope: !1841)
!1843 = !DILocation(line: 571, column: 50, scope: !1841)
!1844 = !DILocation(line: 571, column: 53, scope: !1845)
!1845 = !DILexicalBlockFile(scope: !1832, file: !202, discriminator: 3)
!1846 = !DILocation(line: 571, column: 57, scope: !1845)
!1847 = !DILocation(line: 571, column: 7, scope: !1845)
!1848 = !DILocation(line: 573, column: 48, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1832, file: !202, line: 571, column: 64)
!1850 = !DILocation(line: 573, column: 4, scope: !1849)
!1851 = !DILocation(line: 574, column: 24, scope: !1849)
!1852 = !DILocation(line: 574, column: 28, scope: !1849)
!1853 = !DILocation(line: 574, column: 36, scope: !1849)
!1854 = !DILocation(line: 574, column: 40, scope: !1855)
!1855 = !DILexicalBlockFile(scope: !1849, file: !202, discriminator: 1)
!1856 = !DILocation(line: 574, column: 44, scope: !1855)
!1857 = !DILocation(line: 574, column: 24, scope: !1855)
!1858 = !DILocation(line: 574, column: 24, scope: !1859)
!1859 = !DILexicalBlockFile(scope: !1849, file: !202, discriminator: 2)
!1860 = !DILocation(line: 574, column: 56, scope: !1861)
!1861 = !DILexicalBlockFile(scope: !1849, file: !202, discriminator: 3)
!1862 = !DILocation(line: 574, column: 60, scope: !1861)
!1863 = !DILocation(line: 574, column: 24, scope: !1861)
!1864 = !DILocation(line: 574, column: 24, scope: !1865)
!1865 = !DILexicalBlockFile(scope: !1849, file: !202, discriminator: 4)
!1866 = !DILocation(line: 574, column: 10, scope: !1865)
!1867 = !DILocation(line: 574, column: 15, scope: !1865)
!1868 = !DILocation(line: 574, column: 22, scope: !1865)
!1869 = !DILocation(line: 577, column: 8, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1849, file: !202, line: 577, column: 8)
!1871 = !DILocation(line: 577, column: 14, scope: !1870)
!1872 = !DILocation(line: 577, column: 8, scope: !1849)
!1873 = !DILocation(line: 579, column: 5, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1870, file: !202, line: 577, column: 25)
!1875 = !DILocation(line: 580, column: 4, scope: !1874)
!1876 = !DILocation(line: 582, column: 63, scope: !1870)
!1877 = !DILocation(line: 582, column: 5, scope: !1870)
!1878 = !DILocation(line: 583, column: 3, scope: !1849)
!1879 = !DILocation(line: 584, column: 2, scope: !1833)
!1880 = !DILocation(line: 569, column: 44, scope: !1881)
!1881 = !DILexicalBlockFile(scope: !1821, file: !202, discriminator: 10)
!1882 = !DILocation(line: 569, column: 48, scope: !1881)
!1883 = !DILocation(line: 569, column: 41, scope: !1881)
!1884 = !DILocation(line: 569, column: 2, scope: !1881)
!1885 = distinct !{!1885, !1886}
!1886 = !DILocation(line: 569, column: 2, scope: !1761)
!1887 = !DILocation(line: 585, column: 1, scope: !1761)
!1888 = distinct !DISubprogram(name: "ipvs_group_range_cmd", scope: !202, file: !202, line: 294, type: !1889, isLocal: true, isDefinition: true, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{!62, !62, !999, !1019, !1543}
!1891 = !DILocalVariable(name: "cmd", arg: 1, scope: !1888, file: !202, line: 294, type: !62)
!1892 = !DILocation(line: 294, column: 26, scope: !1888)
!1893 = !DILocalVariable(name: "srule", arg: 2, scope: !1888, file: !202, line: 294, type: !999)
!1894 = !DILocation(line: 294, column: 47, scope: !1888)
!1895 = !DILocalVariable(name: "drule", arg: 3, scope: !1888, file: !202, line: 294, type: !1019)
!1896 = !DILocation(line: 294, column: 67, scope: !1888)
!1897 = !DILocalVariable(name: "vsg_entry", arg: 4, scope: !1888, file: !202, line: 294, type: !1543)
!1898 = !DILocation(line: 294, column: 104, scope: !1888)
!1899 = !DILocalVariable(name: "i", scope: !1888, file: !202, line: 296, type: !79)
!1900 = !DILocation(line: 296, column: 11, scope: !1888)
!1901 = !DILocation(line: 299, column: 6, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1888, file: !202, line: 299, column: 6)
!1903 = !DILocation(line: 299, column: 17, scope: !1902)
!1904 = !DILocation(line: 299, column: 22, scope: !1902)
!1905 = !DILocation(line: 299, column: 32, scope: !1902)
!1906 = !DILocation(line: 299, column: 6, scope: !1888)
!1907 = !DILocation(line: 300, column: 21, scope: !1902)
!1908 = !DILocation(line: 300, column: 32, scope: !1902)
!1909 = !DILocation(line: 300, column: 39, scope: !1902)
!1910 = !DILocation(line: 300, column: 46, scope: !1902)
!1911 = !DILocation(line: 300, column: 54, scope: !1902)
!1912 = !DILocation(line: 300, column: 3, scope: !1902)
!1913 = !DILocation(line: 302, column: 41, scope: !1902)
!1914 = !DILocation(line: 302, column: 52, scope: !1902)
!1915 = !DILocation(line: 302, column: 23, scope: !1902)
!1916 = !DILocation(line: 302, column: 3, scope: !1902)
!1917 = !DILocation(line: 302, column: 10, scope: !1902)
!1918 = !DILocation(line: 302, column: 18, scope: !1902)
!1919 = !DILocation(line: 302, column: 21, scope: !1902)
!1920 = !DILocation(line: 305, column: 9, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1888, file: !202, line: 305, column: 2)
!1922 = !DILocation(line: 305, column: 7, scope: !1921)
!1923 = !DILocation(line: 305, column: 14, scope: !1924)
!1924 = !DILexicalBlockFile(scope: !1925, file: !202, discriminator: 1)
!1925 = distinct !DILexicalBlock(scope: !1921, file: !202, line: 305, column: 2)
!1926 = !DILocation(line: 305, column: 19, scope: !1924)
!1927 = !DILocation(line: 305, column: 30, scope: !1924)
!1928 = !DILocation(line: 305, column: 16, scope: !1924)
!1929 = !DILocation(line: 305, column: 2, scope: !1924)
!1930 = !DILocation(line: 307, column: 17, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1932, file: !202, line: 307, column: 7)
!1932 = distinct !DILexicalBlock(scope: !1925, file: !202, line: 305, column: 42)
!1933 = !DILocation(line: 307, column: 22, scope: !1931)
!1934 = !DILocation(line: 307, column: 29, scope: !1931)
!1935 = !DILocation(line: 307, column: 7, scope: !1931)
!1936 = !DILocation(line: 307, column: 7, scope: !1932)
!1937 = !DILocation(line: 308, column: 4, scope: !1931)
!1938 = !DILocation(line: 310, column: 7, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1932, file: !202, line: 310, column: 7)
!1940 = !DILocation(line: 310, column: 14, scope: !1939)
!1941 = !DILocation(line: 310, column: 17, scope: !1939)
!1942 = !DILocation(line: 310, column: 7, scope: !1932)
!1943 = !DILocation(line: 311, column: 25, scope: !1939)
!1944 = !DILocation(line: 311, column: 4, scope: !1939)
!1945 = !DILocation(line: 311, column: 11, scope: !1939)
!1946 = !DILocation(line: 311, column: 19, scope: !1939)
!1947 = !DILocation(line: 311, column: 22, scope: !1939)
!1948 = !DILocation(line: 313, column: 49, scope: !1939)
!1949 = !DILocation(line: 313, column: 56, scope: !1939)
!1950 = !DILocation(line: 313, column: 64, scope: !1939)
!1951 = !DILocation(line: 313, column: 68, scope: !1939)
!1952 = !DILocation(line: 313, column: 76, scope: !1939)
!1953 = !DILocation(line: 313, column: 43, scope: !1939)
!1954 = !DILocation(line: 313, column: 82, scope: !1939)
!1955 = !DILocation(line: 313, column: 37, scope: !1956)
!1956 = !DILexicalBlockFile(scope: !1939, file: !202, discriminator: 1)
!1957 = !DILocation(line: 313, column: 4, scope: !1939)
!1958 = !DILocation(line: 313, column: 11, scope: !1939)
!1959 = !DILocation(line: 313, column: 19, scope: !1939)
!1960 = !DILocation(line: 313, column: 22, scope: !1939)
!1961 = !DILocation(line: 313, column: 30, scope: !1939)
!1962 = !DILocation(line: 313, column: 35, scope: !1939)
!1963 = !DILocation(line: 314, column: 2, scope: !1932)
!1964 = !DILocation(line: 305, column: 38, scope: !1965)
!1965 = !DILexicalBlockFile(scope: !1925, file: !202, discriminator: 2)
!1966 = !DILocation(line: 305, column: 2, scope: !1965)
!1967 = distinct !{!1967, !1968}
!1968 = !DILocation(line: 305, column: 2, scope: !1888)
!1969 = !DILocation(line: 316, column: 2, scope: !1888)
!1970 = !DILocation(line: 317, column: 1, scope: !1888)
!1971 = distinct !DISubprogram(name: "ipvs_group_remove_entry", scope: !202, file: !202, line: 589, type: !1762, isLocal: false, isDefinition: true, scopeLine: 590, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!1972 = !DILocalVariable(name: "vs", arg: 1, scope: !1971, file: !202, line: 589, type: !1168)
!1973 = !DILocation(line: 589, column: 43, scope: !1971)
!1974 = !DILocalVariable(name: "vsge", arg: 2, scope: !1971, file: !202, line: 589, type: !1543)
!1975 = !DILocation(line: 589, column: 77, scope: !1971)
!1976 = !DILocalVariable(name: "rs", scope: !1971, file: !202, line: 591, type: !1177)
!1977 = !DILocation(line: 591, column: 17, scope: !1971)
!1978 = !DILocalVariable(name: "e", scope: !1971, file: !202, line: 592, type: !225)
!1979 = !DILocation(line: 592, column: 10, scope: !1971)
!1980 = !DILocalVariable(name: "srule", scope: !1971, file: !202, line: 593, type: !1000)
!1981 = !DILocation(line: 593, column: 17, scope: !1971)
!1982 = !DILocalVariable(name: "drule", scope: !1971, file: !202, line: 594, type: !1020)
!1983 = !DILocation(line: 594, column: 14, scope: !1971)
!1984 = !DILocation(line: 597, column: 46, scope: !1971)
!1985 = !DILocation(line: 597, column: 2, scope: !1971)
!1986 = !DILocation(line: 598, column: 6, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1971, file: !202, line: 598, column: 6)
!1988 = !DILocation(line: 598, column: 12, scope: !1987)
!1989 = !DILocation(line: 598, column: 6, scope: !1971)
!1990 = !DILocation(line: 599, column: 23, scope: !1987)
!1991 = !DILocation(line: 599, column: 29, scope: !1987)
!1992 = !DILocation(line: 599, column: 9, scope: !1987)
!1993 = !DILocation(line: 599, column: 14, scope: !1987)
!1994 = !DILocation(line: 599, column: 21, scope: !1987)
!1995 = !DILocation(line: 599, column: 3, scope: !1987)
!1996 = !DILocation(line: 601, column: 40, scope: !1987)
!1997 = !DILocation(line: 601, column: 46, scope: !1987)
!1998 = !DILocation(line: 601, column: 21, scope: !1987)
!1999 = !DILocation(line: 601, column: 9, scope: !1987)
!2000 = !DILocation(line: 601, column: 14, scope: !1987)
!2001 = !DILocation(line: 601, column: 19, scope: !1987)
!2002 = !DILocation(line: 604, column: 15, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !1971, file: !202, line: 604, column: 2)
!2004 = !DILocation(line: 604, column: 19, scope: !2003)
!2005 = !DILocation(line: 604, column: 14, scope: !2003)
!2006 = !DILocation(line: 604, column: 28, scope: !2007)
!2007 = !DILexicalBlockFile(scope: !2003, file: !202, discriminator: 1)
!2008 = !DILocation(line: 604, column: 32, scope: !2007)
!2009 = !DILocation(line: 604, column: 27, scope: !2007)
!2010 = !DILocation(line: 604, column: 26, scope: !2007)
!2011 = !DILocation(line: 604, column: 26, scope: !2012)
!2012 = !DILexicalBlockFile(scope: !2003, file: !202, discriminator: 2)
!2013 = !DILocation(line: 604, column: 4, scope: !2014)
!2014 = !DILexicalBlockFile(scope: !2003, file: !202, discriminator: 3)
!2015 = !DILocation(line: 604, column: 8, scope: !2014)
!2016 = !DILocation(line: 604, column: 13, scope: !2014)
!2017 = !DILocation(line: 604, column: 26, scope: !2014)
!2018 = !DILocation(line: 604, column: 26, scope: !2019)
!2019 = !DILexicalBlockFile(scope: !2003, file: !202, discriminator: 4)
!2020 = !DILocation(line: 604, column: 14, scope: !2019)
!2021 = !DILocation(line: 604, column: 14, scope: !2022)
!2022 = !DILexicalBlockFile(scope: !2003, file: !202, discriminator: 5)
!2023 = !DILocation(line: 604, column: 14, scope: !2024)
!2024 = !DILexicalBlockFile(scope: !2003, file: !202, discriminator: 6)
!2025 = !DILocation(line: 604, column: 11, scope: !2024)
!2026 = !DILocation(line: 604, column: 7, scope: !2024)
!2027 = !DILocation(line: 604, column: 5, scope: !2028)
!2028 = !DILexicalBlockFile(scope: !2029, file: !202, discriminator: 7)
!2029 = distinct !DILexicalBlock(scope: !2003, file: !202, line: 604, column: 2)
!2030 = !DILocation(line: 604, column: 4, scope: !2028)
!2031 = !DILocation(line: 604, column: 8, scope: !2028)
!2032 = !DILocation(line: 604, column: 21, scope: !2033)
!2033 = !DILexicalBlockFile(scope: !2029, file: !202, discriminator: 8)
!2034 = !DILocation(line: 604, column: 25, scope: !2033)
!2035 = !DILocation(line: 604, column: 19, scope: !2033)
!2036 = !DILocation(line: 604, column: 17, scope: !2033)
!2037 = !DILocation(line: 604, column: 2, scope: !2038)
!2038 = !DILexicalBlockFile(scope: !2003, file: !202, discriminator: 9)
!2039 = !DILocation(line: 605, column: 7, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2041, file: !202, line: 605, column: 7)
!2041 = distinct !DILexicalBlock(scope: !2029, file: !202, line: 604, column: 55)
!2042 = !DILocation(line: 605, column: 11, scope: !2040)
!2043 = !DILocation(line: 605, column: 7, scope: !2041)
!2044 = !DILocation(line: 607, column: 48, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2040, file: !202, line: 605, column: 18)
!2046 = !DILocation(line: 607, column: 4, scope: !2045)
!2047 = !DILocation(line: 610, column: 8, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2045, file: !202, line: 610, column: 8)
!2049 = !DILocation(line: 610, column: 14, scope: !2048)
!2050 = !DILocation(line: 610, column: 8, scope: !2045)
!2051 = !DILocation(line: 612, column: 5, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2048, file: !202, line: 610, column: 25)
!2053 = !DILocation(line: 613, column: 4, scope: !2052)
!2054 = !DILocation(line: 615, column: 63, scope: !2048)
!2055 = !DILocation(line: 615, column: 5, scope: !2048)
!2056 = !DILocation(line: 616, column: 3, scope: !2045)
!2057 = !DILocation(line: 617, column: 2, scope: !2041)
!2058 = !DILocation(line: 604, column: 44, scope: !2059)
!2059 = !DILexicalBlockFile(scope: !2029, file: !202, discriminator: 10)
!2060 = !DILocation(line: 604, column: 48, scope: !2059)
!2061 = !DILocation(line: 604, column: 41, scope: !2059)
!2062 = !DILocation(line: 604, column: 2, scope: !2059)
!2063 = distinct !{!2063, !2064}
!2064 = !DILocation(line: 604, column: 2, scope: !1971)
!2065 = !DILocation(line: 620, column: 19, scope: !1971)
!2066 = !DILocation(line: 620, column: 25, scope: !1971)
!2067 = !DILocation(line: 620, column: 2, scope: !1971)
!2068 = !DILocation(line: 621, column: 21, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !1971, file: !202, line: 621, column: 6)
!2070 = !DILocation(line: 621, column: 27, scope: !2069)
!2071 = !DILocation(line: 621, column: 7, scope: !2069)
!2072 = !DILocation(line: 621, column: 6, scope: !1971)
!2073 = !DILocation(line: 622, column: 7, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2075, file: !202, line: 622, column: 7)
!2075 = distinct !DILexicalBlock(scope: !2069, file: !202, line: 621, column: 32)
!2076 = !DILocation(line: 622, column: 13, scope: !2074)
!2077 = !DILocation(line: 622, column: 7, scope: !2075)
!2078 = !DILocation(line: 623, column: 56, scope: !2074)
!2079 = !DILocation(line: 623, column: 4, scope: !2074)
!2080 = !DILocation(line: 625, column: 4, scope: !2074)
!2081 = !DILocation(line: 626, column: 2, scope: !2075)
!2082 = !DILocation(line: 627, column: 1, scope: !1971)
!2083 = distinct !DISubprogram(name: "unset_vsge_alive", scope: !202, file: !202, line: 368, type: !2084, isLocal: true, isDefinition: true, scopeLine: 369, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!2084 = !DISubroutineType(types: !2085)
!2085 = !{null, !1543, !1168}
!2086 = !DILocalVariable(name: "vsge", arg: 1, scope: !2083, file: !202, line: 368, type: !1543)
!2087 = !DILocation(line: 368, column: 48, scope: !2083)
!2088 = !DILocalVariable(name: "vs", arg: 2, scope: !2083, file: !202, line: 368, type: !1168)
!2089 = !DILocation(line: 368, column: 72, scope: !2083)
!2090 = !DILocation(line: 370, column: 26, scope: !2083)
!2091 = !DILocation(line: 370, column: 32, scope: !2083)
!2092 = !DILocation(line: 370, column: 2, scope: !2083)
!2093 = !DILocation(line: 371, column: 1, scope: !2083)
!2094 = distinct !DISubprogram(name: "is_vsge_alive", scope: !202, file: !202, line: 321, type: !2095, isLocal: true, isDefinition: true, scopeLine: 322, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!2095 = !DISubroutineType(types: !2096)
!2096 = !{!203, !1543, !1168}
!2097 = !DILocalVariable(name: "vsge", arg: 1, scope: !2094, file: !202, line: 321, type: !1543)
!2098 = !DILocation(line: 321, column: 45, scope: !2094)
!2099 = !DILocalVariable(name: "vs", arg: 2, scope: !2094, file: !202, line: 321, type: !1168)
!2100 = !DILocation(line: 321, column: 69, scope: !2094)
!2101 = !DILocation(line: 323, column: 6, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2094, file: !202, line: 323, column: 6)
!2103 = !DILocation(line: 323, column: 12, scope: !2102)
!2104 = !DILocation(line: 323, column: 6, scope: !2094)
!2105 = !DILocation(line: 324, column: 7, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2107, file: !202, line: 324, column: 7)
!2107 = distinct !DILexicalBlock(scope: !2102, file: !202, line: 323, column: 23)
!2108 = !DILocation(line: 324, column: 11, scope: !2106)
!2109 = !DILocation(line: 324, column: 14, scope: !2106)
!2110 = !DILocation(line: 324, column: 7, scope: !2107)
!2111 = !DILocation(line: 325, column: 13, scope: !2106)
!2112 = !DILocation(line: 325, column: 19, scope: !2106)
!2113 = !DILocation(line: 325, column: 12, scope: !2106)
!2114 = !DILocation(line: 325, column: 11, scope: !2106)
!2115 = !DILocation(line: 325, column: 4, scope: !2106)
!2116 = !DILocation(line: 327, column: 13, scope: !2106)
!2117 = !DILocation(line: 327, column: 19, scope: !2106)
!2118 = !DILocation(line: 327, column: 12, scope: !2106)
!2119 = !DILocation(line: 327, column: 11, scope: !2106)
!2120 = !DILocation(line: 327, column: 4, scope: !2106)
!2121 = !DILocation(line: 329, column: 11, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2102, file: !202, line: 329, column: 11)
!2123 = !DILocation(line: 329, column: 15, scope: !2122)
!2124 = !DILocation(line: 329, column: 28, scope: !2122)
!2125 = !DILocation(line: 329, column: 11, scope: !2102)
!2126 = !DILocation(line: 330, column: 12, scope: !2122)
!2127 = !DILocation(line: 330, column: 18, scope: !2122)
!2128 = !DILocation(line: 330, column: 11, scope: !2122)
!2129 = !DILocation(line: 330, column: 10, scope: !2122)
!2130 = !DILocation(line: 330, column: 3, scope: !2122)
!2131 = !DILocation(line: 331, column: 11, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2122, file: !202, line: 331, column: 11)
!2133 = !DILocation(line: 331, column: 15, scope: !2132)
!2134 = !DILocation(line: 331, column: 28, scope: !2132)
!2135 = !DILocation(line: 331, column: 11, scope: !2122)
!2136 = !DILocation(line: 332, column: 12, scope: !2132)
!2137 = !DILocation(line: 332, column: 18, scope: !2132)
!2138 = !DILocation(line: 332, column: 11, scope: !2132)
!2139 = !DILocation(line: 332, column: 10, scope: !2132)
!2140 = !DILocation(line: 332, column: 3, scope: !2132)
!2141 = !DILocation(line: 334, column: 12, scope: !2132)
!2142 = !DILocation(line: 334, column: 18, scope: !2132)
!2143 = !DILocation(line: 334, column: 11, scope: !2132)
!2144 = !DILocation(line: 334, column: 10, scope: !2132)
!2145 = !DILocation(line: 334, column: 3, scope: !2132)
!2146 = !DILocation(line: 335, column: 1, scope: !2094)
!2147 = distinct !DISubprogram(name: "ipvs_syncd_master", scope: !202, file: !202, line: 792, type: !2148, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{null, !530}
!2150 = !DILocalVariable(name: "config", arg: 1, scope: !2147, file: !202, line: 792, type: !530)
!2151 = !DILocation(line: 792, column: 50, scope: !2147)
!2152 = !DILocation(line: 794, column: 33, scope: !2147)
!2153 = !DILocation(line: 794, column: 2, scope: !2147)
!2154 = !DILocation(line: 795, column: 34, scope: !2147)
!2155 = !DILocation(line: 795, column: 2, scope: !2147)
!2156 = !DILocation(line: 796, column: 1, scope: !2147)
!2157 = distinct !DISubprogram(name: "ipvs_syncd_backup", scope: !202, file: !202, line: 800, type: !2148, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!2158 = !DILocalVariable(name: "config", arg: 1, scope: !2157, file: !202, line: 800, type: !530)
!2159 = !DILocation(line: 800, column: 50, scope: !2157)
!2160 = !DILocation(line: 802, column: 33, scope: !2157)
!2161 = !DILocation(line: 802, column: 2, scope: !2157)
!2162 = !DILocation(line: 803, column: 34, scope: !2157)
!2163 = !DILocation(line: 803, column: 2, scope: !2157)
!2164 = !DILocation(line: 804, column: 1, scope: !2157)
!2165 = distinct !DISubprogram(name: "get_modprobe", scope: !202, file: !202, line: 51, type: !2166, isLocal: true, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!2166 = !DISubroutineType(types: !2167)
!2167 = !{!149}
!2168 = !DILocalVariable(name: "procfile", scope: !2165, file: !202, line: 53, type: !62)
!2169 = !DILocation(line: 53, column: 6, scope: !2165)
!2170 = !DILocalVariable(name: "ret", scope: !2165, file: !202, line: 54, type: !149)
!2171 = !DILocation(line: 54, column: 8, scope: !2165)
!2172 = !DILocalVariable(name: "count", scope: !2165, file: !202, line: 55, type: !2173)
!2173 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !581, line: 109, baseType: !2174)
!2174 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !174, line: 172, baseType: !175)
!2175 = !DILocation(line: 55, column: 10, scope: !2165)
!2176 = !DILocation(line: 57, column: 9, scope: !2165)
!2177 = !DILocation(line: 57, column: 6, scope: !2165)
!2178 = !DILocation(line: 58, column: 7, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2165, file: !202, line: 58, column: 6)
!2180 = !DILocation(line: 58, column: 6, scope: !2165)
!2181 = !DILocation(line: 59, column: 3, scope: !2179)
!2182 = !DILocation(line: 61, column: 13, scope: !2165)
!2183 = !DILocation(line: 61, column: 11, scope: !2165)
!2184 = !DILocation(line: 62, column: 6, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2165, file: !202, line: 62, column: 6)
!2186 = !DILocation(line: 62, column: 15, scope: !2185)
!2187 = !DILocation(line: 62, column: 6, scope: !2165)
!2188 = !DILocation(line: 63, column: 9, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2185, file: !202, line: 62, column: 20)
!2190 = !DILocation(line: 63, column: 4, scope: !2189)
!2191 = !DILocation(line: 63, column: 21, scope: !2189)
!2192 = !DILocation(line: 64, column: 3, scope: !2189)
!2193 = !DILocation(line: 67, column: 15, scope: !2165)
!2194 = !DILocation(line: 67, column: 25, scope: !2165)
!2195 = !DILocation(line: 67, column: 10, scope: !2165)
!2196 = !DILocation(line: 67, column: 8, scope: !2165)
!2197 = !DILocation(line: 68, column: 8, scope: !2165)
!2198 = !DILocation(line: 68, column: 2, scope: !2165)
!2199 = !DILocation(line: 70, column: 6, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2165, file: !202, line: 70, column: 6)
!2201 = !DILocation(line: 70, column: 12, scope: !2200)
!2202 = !DILocation(line: 70, column: 16, scope: !2200)
!2203 = !DILocation(line: 70, column: 19, scope: !2204)
!2204 = !DILexicalBlockFile(scope: !2200, file: !202, discriminator: 1)
!2205 = !DILocation(line: 70, column: 25, scope: !2204)
!2206 = !DILocation(line: 70, column: 6, scope: !2204)
!2207 = !DILocation(line: 72, column: 11, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2209, file: !202, line: 72, column: 7)
!2209 = distinct !DILexicalBlock(scope: !2200, file: !202, line: 71, column: 2)
!2210 = !DILocation(line: 72, column: 17, scope: !2208)
!2211 = !DILocation(line: 72, column: 7, scope: !2208)
!2212 = !DILocation(line: 72, column: 22, scope: !2208)
!2213 = !DILocation(line: 72, column: 7, scope: !2209)
!2214 = !DILocation(line: 73, column: 8, scope: !2208)
!2215 = !DILocation(line: 73, column: 14, scope: !2208)
!2216 = !DILocation(line: 73, column: 4, scope: !2208)
!2217 = !DILocation(line: 73, column: 19, scope: !2208)
!2218 = !DILocation(line: 75, column: 8, scope: !2208)
!2219 = !DILocation(line: 75, column: 4, scope: !2208)
!2220 = !DILocation(line: 75, column: 15, scope: !2208)
!2221 = !DILocation(line: 76, column: 10, scope: !2209)
!2222 = !DILocation(line: 76, column: 3, scope: !2209)
!2223 = !DILocation(line: 79, column: 8, scope: !2165)
!2224 = !DILocation(line: 79, column: 3, scope: !2165)
!2225 = !DILocation(line: 79, column: 20, scope: !2165)
!2226 = !DILocation(line: 81, column: 2, scope: !2165)
!2227 = !DILocation(line: 82, column: 1, scope: !2165)
!2228 = distinct !DISubprogram(name: "ipvs_change_needed", scope: !202, file: !202, line: 374, type: !2229, isLocal: true, isDefinition: true, scopeLine: 375, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!2229 = !DISubroutineType(types: !2230)
!2230 = !{!203, !62, !1543, !1168, !1177}
!2231 = !DILocalVariable(name: "cmd", arg: 1, scope: !2228, file: !202, line: 374, type: !62)
!2232 = !DILocation(line: 374, column: 24, scope: !2228)
!2233 = !DILocalVariable(name: "vsge", arg: 2, scope: !2228, file: !202, line: 374, type: !1543)
!2234 = !DILocation(line: 374, column: 59, scope: !2228)
!2235 = !DILocalVariable(name: "vs", arg: 3, scope: !2228, file: !202, line: 374, type: !1168)
!2236 = !DILocation(line: 374, column: 83, scope: !2228)
!2237 = !DILocalVariable(name: "rs", arg: 4, scope: !2228, file: !202, line: 374, type: !1177)
!2238 = !DILocation(line: 374, column: 102, scope: !2228)
!2239 = !DILocalVariable(name: "count", scope: !2228, file: !202, line: 376, type: !80)
!2240 = !DILocation(line: 376, column: 11, scope: !2228)
!2241 = !DILocation(line: 378, column: 6, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2228, file: !202, line: 378, column: 6)
!2243 = !DILocation(line: 378, column: 10, scope: !2242)
!2244 = !DILocation(line: 378, column: 6, scope: !2228)
!2245 = !DILocation(line: 379, column: 25, scope: !2242)
!2246 = !DILocation(line: 379, column: 31, scope: !2242)
!2247 = !DILocation(line: 379, column: 11, scope: !2242)
!2248 = !DILocation(line: 379, column: 10, scope: !2242)
!2249 = !DILocation(line: 379, column: 3, scope: !2242)
!2250 = !DILocation(line: 380, column: 11, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2242, file: !202, line: 380, column: 11)
!2252 = !DILocation(line: 380, column: 15, scope: !2251)
!2253 = !DILocation(line: 380, column: 11, scope: !2242)
!2254 = !DILocation(line: 381, column: 11, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2251, file: !202, line: 380, column: 35)
!2256 = !DILocation(line: 381, column: 17, scope: !2255)
!2257 = !DILocation(line: 381, column: 30, scope: !2258)
!2258 = !DILexicalBlockFile(scope: !2255, file: !202, discriminator: 1)
!2259 = !DILocation(line: 381, column: 34, scope: !2258)
!2260 = !DILocation(line: 381, column: 37, scope: !2258)
!2261 = !DILocation(line: 381, column: 49, scope: !2262)
!2262 = !DILexicalBlockFile(scope: !2255, file: !202, discriminator: 2)
!2263 = !DILocation(line: 381, column: 55, scope: !2262)
!2264 = !DILocation(line: 381, column: 30, scope: !2262)
!2265 = !DILocation(line: 381, column: 68, scope: !2266)
!2266 = !DILexicalBlockFile(scope: !2255, file: !202, discriminator: 3)
!2267 = !DILocation(line: 381, column: 74, scope: !2266)
!2268 = !DILocation(line: 381, column: 30, scope: !2266)
!2269 = !DILocation(line: 381, column: 30, scope: !2270)
!2270 = !DILexicalBlockFile(scope: !2255, file: !202, discriminator: 4)
!2271 = !DILocation(line: 381, column: 11, scope: !2270)
!2272 = !DILocation(line: 382, column: 4, scope: !2255)
!2273 = !DILocation(line: 382, column: 8, scope: !2255)
!2274 = !DILocation(line: 382, column: 21, scope: !2255)
!2275 = !DILocation(line: 382, column: 37, scope: !2258)
!2276 = !DILocation(line: 382, column: 43, scope: !2258)
!2277 = !DILocation(line: 382, column: 4, scope: !2258)
!2278 = !DILocation(line: 383, column: 4, scope: !2255)
!2279 = !DILocation(line: 383, column: 8, scope: !2255)
!2280 = !DILocation(line: 383, column: 21, scope: !2255)
!2281 = !DILocation(line: 383, column: 37, scope: !2258)
!2282 = !DILocation(line: 383, column: 43, scope: !2258)
!2283 = !DILocation(line: 383, column: 4, scope: !2258)
!2284 = !DILocation(line: 383, column: 55, scope: !2262)
!2285 = !DILocation(line: 383, column: 61, scope: !2262)
!2286 = !DILocation(line: 383, column: 4, scope: !2262)
!2287 = !DILocation(line: 383, column: 4, scope: !2266)
!2288 = !DILocation(line: 382, column: 4, scope: !2262)
!2289 = !DILocation(line: 382, column: 4, scope: !2266)
!2290 = !DILocation(line: 381, column: 11, scope: !2291)
!2291 = !DILexicalBlockFile(scope: !2255, file: !202, discriminator: 5)
!2292 = !DILocation(line: 381, column: 11, scope: !2293)
!2293 = !DILexicalBlockFile(scope: !2255, file: !202, discriminator: 6)
!2294 = !DILocation(line: 381, column: 9, scope: !2293)
!2295 = !DILocation(line: 385, column: 11, scope: !2255)
!2296 = !DILocation(line: 385, column: 17, scope: !2255)
!2297 = !DILocation(line: 385, column: 3, scope: !2255)
!2298 = !DILocation(line: 387, column: 11, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2251, file: !202, line: 387, column: 11)
!2300 = !DILocation(line: 387, column: 15, scope: !2299)
!2301 = !DILocation(line: 387, column: 11, scope: !2251)
!2302 = !DILocation(line: 388, column: 11, scope: !2299)
!2303 = !DILocation(line: 388, column: 15, scope: !2299)
!2304 = !DILocation(line: 388, column: 10, scope: !2299)
!2305 = !DILocation(line: 388, column: 3, scope: !2299)
!2306 = !DILocation(line: 389, column: 11, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2299, file: !202, line: 389, column: 11)
!2308 = !DILocation(line: 389, column: 15, scope: !2307)
!2309 = !DILocation(line: 389, column: 11, scope: !2299)
!2310 = !DILocation(line: 390, column: 10, scope: !2307)
!2311 = !DILocation(line: 390, column: 14, scope: !2307)
!2312 = !DILocation(line: 390, column: 3, scope: !2307)
!2313 = !DILocation(line: 392, column: 3, scope: !2307)
!2314 = !DILocation(line: 393, column: 1, scope: !2228)
!2315 = distinct !DISubprogram(name: "ipvs_set_vsge_alive_state", scope: !202, file: !202, line: 396, type: !2316, isLocal: true, isDefinition: true, scopeLine: 397, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{null, !62, !1543, !1168}
!2318 = !DILocalVariable(name: "cmd", arg: 1, scope: !2315, file: !202, line: 396, type: !62)
!2319 = !DILocation(line: 396, column: 31, scope: !2315)
!2320 = !DILocalVariable(name: "vsge", arg: 2, scope: !2315, file: !202, line: 396, type: !1543)
!2321 = !DILocation(line: 396, column: 66, scope: !2315)
!2322 = !DILocalVariable(name: "vs", arg: 3, scope: !2315, file: !202, line: 396, type: !1168)
!2323 = !DILocation(line: 396, column: 90, scope: !2315)
!2324 = !DILocation(line: 398, column: 6, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2315, file: !202, line: 398, column: 6)
!2326 = !DILocation(line: 398, column: 10, scope: !2325)
!2327 = !DILocation(line: 398, column: 6, scope: !2315)
!2328 = !DILocation(line: 399, column: 18, scope: !2325)
!2329 = !DILocation(line: 399, column: 24, scope: !2325)
!2330 = !DILocation(line: 399, column: 3, scope: !2325)
!2331 = !DILocation(line: 400, column: 11, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2325, file: !202, line: 400, column: 11)
!2333 = !DILocation(line: 400, column: 15, scope: !2332)
!2334 = !DILocation(line: 400, column: 11, scope: !2325)
!2335 = !DILocation(line: 401, column: 20, scope: !2332)
!2336 = !DILocation(line: 401, column: 26, scope: !2332)
!2337 = !DILocation(line: 401, column: 3, scope: !2332)
!2338 = !DILocation(line: 402, column: 1, scope: !2315)
!2339 = distinct !DISubprogram(name: "set_vsge_alive", scope: !202, file: !202, line: 362, type: !2084, isLocal: true, isDefinition: true, scopeLine: 363, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!2340 = !DILocalVariable(name: "vsge", arg: 1, scope: !2339, file: !202, line: 362, type: !1543)
!2341 = !DILocation(line: 362, column: 46, scope: !2339)
!2342 = !DILocalVariable(name: "vs", arg: 2, scope: !2339, file: !202, line: 362, type: !1168)
!2343 = !DILocation(line: 362, column: 70, scope: !2339)
!2344 = !DILocation(line: 364, column: 26, scope: !2339)
!2345 = !DILocation(line: 364, column: 32, scope: !2339)
!2346 = !DILocation(line: 364, column: 2, scope: !2339)
!2347 = !DILocation(line: 365, column: 1, scope: !2339)
!2348 = distinct !DISubprogram(name: "update_vsge_alive_count", scope: !202, file: !202, line: 338, type: !2349, isLocal: true, isDefinition: true, scopeLine: 339, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!2349 = !DISubroutineType(types: !2350)
!2350 = !{null, !1543, !1168, !203}
!2351 = !DILocalVariable(name: "vsge", arg: 1, scope: !2348, file: !202, line: 338, type: !1543)
!2352 = !DILocation(line: 338, column: 55, scope: !2348)
!2353 = !DILocalVariable(name: "vs", arg: 2, scope: !2348, file: !202, line: 338, type: !1168)
!2354 = !DILocation(line: 338, column: 79, scope: !2348)
!2355 = !DILocalVariable(name: "up", arg: 3, scope: !2348, file: !202, line: 338, type: !203)
!2356 = !DILocation(line: 338, column: 87, scope: !2348)
!2357 = !DILocalVariable(name: "alive_p", scope: !2348, file: !202, line: 340, type: !2358)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64, align: 64)
!2359 = !DILocation(line: 340, column: 12, scope: !2348)
!2360 = !DILocation(line: 342, column: 6, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2348, file: !202, line: 342, column: 6)
!2362 = !DILocation(line: 342, column: 12, scope: !2361)
!2363 = !DILocation(line: 342, column: 6, scope: !2348)
!2364 = !DILocation(line: 343, column: 7, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2366, file: !202, line: 343, column: 7)
!2366 = distinct !DILexicalBlock(scope: !2361, file: !202, line: 342, column: 23)
!2367 = !DILocation(line: 343, column: 11, scope: !2365)
!2368 = !DILocation(line: 343, column: 14, scope: !2365)
!2369 = !DILocation(line: 343, column: 7, scope: !2366)
!2370 = !DILocation(line: 344, column: 15, scope: !2365)
!2371 = !DILocation(line: 344, column: 21, scope: !2365)
!2372 = !DILocation(line: 344, column: 12, scope: !2365)
!2373 = !DILocation(line: 344, column: 4, scope: !2365)
!2374 = !DILocation(line: 346, column: 15, scope: !2365)
!2375 = !DILocation(line: 346, column: 21, scope: !2365)
!2376 = !DILocation(line: 346, column: 12, scope: !2365)
!2377 = !DILocation(line: 347, column: 2, scope: !2366)
!2378 = !DILocation(line: 348, column: 11, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2361, file: !202, line: 348, column: 11)
!2380 = !DILocation(line: 348, column: 15, scope: !2379)
!2381 = !DILocation(line: 348, column: 28, scope: !2379)
!2382 = !DILocation(line: 348, column: 11, scope: !2361)
!2383 = !DILocation(line: 349, column: 14, scope: !2379)
!2384 = !DILocation(line: 349, column: 20, scope: !2379)
!2385 = !DILocation(line: 349, column: 11, scope: !2379)
!2386 = !DILocation(line: 349, column: 3, scope: !2379)
!2387 = !DILocation(line: 350, column: 11, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2379, file: !202, line: 350, column: 11)
!2389 = !DILocation(line: 350, column: 15, scope: !2388)
!2390 = !DILocation(line: 350, column: 28, scope: !2388)
!2391 = !DILocation(line: 350, column: 11, scope: !2379)
!2392 = !DILocation(line: 351, column: 14, scope: !2388)
!2393 = !DILocation(line: 351, column: 20, scope: !2388)
!2394 = !DILocation(line: 351, column: 11, scope: !2388)
!2395 = !DILocation(line: 351, column: 3, scope: !2388)
!2396 = !DILocation(line: 353, column: 14, scope: !2388)
!2397 = !DILocation(line: 353, column: 20, scope: !2388)
!2398 = !DILocation(line: 353, column: 11, scope: !2388)
!2399 = !DILocation(line: 355, column: 6, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2348, file: !202, line: 355, column: 6)
!2401 = !DILocation(line: 355, column: 6, scope: !2348)
!2402 = !DILocation(line: 356, column: 5, scope: !2400)
!2403 = !DILocation(line: 356, column: 13, scope: !2400)
!2404 = !DILocation(line: 356, column: 3, scope: !2400)
!2405 = !DILocation(line: 358, column: 5, scope: !2400)
!2406 = !DILocation(line: 358, column: 13, scope: !2400)
!2407 = !DILocation(line: 359, column: 1, scope: !2348)
