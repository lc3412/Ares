; ModuleID = './[inter]keepalived--vrrp--vrrp_track.o.i'
source_filename = "./[inter]keepalived--vrrp--vrrp_track.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._vrrp_data = type { %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list* }
%struct._list = type { %struct._element*, %struct._element*, i32, void (i8*)*, void (%struct._IO_FILE*, i8*)* }
%struct._element = type { %struct._element*, %struct._element*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._thread_master = type { %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.list_head, %struct.list_head, %struct.list_head, %struct._list*, %struct.rb_root, %struct.epoll_event*, %struct._thread_event*, i32, i32, i32, i32, %struct._thread*, i64, i64, i8 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.rb_root = type { %struct.rb_node* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.epoll_event = type opaque
%struct._thread_event = type { %struct._thread*, %struct._thread*, i64, i32, %struct.rb_node }
%struct._thread = type { i64, i32, %struct._thread_master*, i32 (%struct._thread*)*, i8*, %struct.timeval, %union.anon.0, %struct._thread_event*, %union.anon.1 }
%struct.timeval = type { i64, i64 }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { i32, i32 }
%union.anon.1 = type { %struct.rb_node }
%struct._tracked_if = type { i32, %struct._interface* }
%struct._interface = type { [16 x i8], i32, %struct.in_addr, %struct.in6_addr, i32, i8, i32, i16, [32 x i8], [32 x i8], i64, i32, i8, i32, %struct._interface*, i32, %struct._interface*, i8, %struct._garp_delay*, i8, i32, i32, i32, i32, i32, i8, %struct._list* }
%struct.in_addr = type { i32 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct._garp_delay = type { %struct.timeval, i8, %struct.timeval, i8, %struct.timeval, %struct.timeval, i32 }
%struct._vrrp_t = type { i16, i8*, %struct._vrrp_sgroup*, %struct._vrrp_stats*, %struct._interface*, i8, i8, i8, i32, i64, [16 x i8], %struct._list*, %struct._list*, %struct._list*, i32, i32, %struct.sockaddr_storage, i8, i8, %struct.sockaddr_storage, %struct._list*, i32, %struct.sockaddr_storage, i8, %struct.timeval, i32, %struct.timeval, %struct.timeval, i32, i32, i32, i8, i8, i32, i32, i32, i8, i8, i8, i32, i8, %struct._list*, %struct._list*, i8, i8, %struct._list*, %struct._list*, i32, i32, i32, i64, i8, i8, i64, %struct.timeval, i32, i32, i8, %struct._sock*, i32, i32, i32, i32, i8, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, i32, %struct.timeval, i8*, i64, i32, i8, [8 x i8], %struct._seq_counter, i32 }
%struct._vrrp_sgroup = type { i8*, %struct._vector*, %struct._list*, i32, i32, i32, i8, %struct._list*, %struct._list*, %struct._list*, %struct._list*, i8, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, i32, i32 }
%struct._vrrp_stats = type { i64, i32, i32, i32, i64, i64, i64, i64, i64, i32, i32, i32, i64, i64 }
%struct.sockaddr_storage = type { i16, [118 x i8], i64 }
%struct._sock = type { i16, %struct.sockaddr_storage, i32, i32, i8, i32, i32, i32, %struct._thread* }
%struct._notify_script = type { i8**, i32, i32, i32, i32 }
%struct._seq_counter = type { i8, i32 }
%struct._vector = type { i32, i32, i8** }
%struct._vrrp_script = type { i8*, %struct._notify_script, i64, i64, i32, i32, i32, i32, %struct._list*, i32, i32, i32, i8 }
%struct._tracked_sc = type { %struct._vrrp_script*, i32 }
%struct._vrrp_file = type { i8*, i8*, i8*, i32, i32, %struct._list*, i32 }
%struct._tracked_file = type { %struct._vrrp_file*, i32 }
%struct._tracking_vrrp = type { i32, %struct._vrrp_t*, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.inotify_event = type { i32, i32, i32, i32, [0 x i8] }

@.str = private unnamed_addr constant [18 x i8] c"     %s weight %d\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"(%s) tracked interface %s doesn't exist\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"(%s) duplicate track_interface %s - ignoring\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"weight\00", align 1
@.str.4 = private unnamed_addr constant [73 x i8] c"(%s) weight %s for %s must be between [-253..253] inclusive. Ignoring...\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"(%s) weight for %s cannot be +/-254. Setting to +/-253\00", align 1
@.str.6 = private unnamed_addr constant [70 x i8] c"(%s) weight for %s must be between [-253..253] inclusive. Ignoring...\00", align 1
@vrrp_data = external global %struct._vrrp_data*, align 8
@.str.7 = private unnamed_addr constant [44 x i8] c"(%s) track script %s not found, ignoring...\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"(%s) duplicate track_script %s - ignoring\00", align 1
@.str.9 = private unnamed_addr constant [80 x i8] c"(%s) track script %s: weight must be between [-253..253] inclusive, ignoring...\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"     %s, weight %d\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"(%s) track file %s not found, ignoring...\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"(%s) duplicate track_file %s - ignoring\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"(%s) unknown track file option %s - ignoring\00", align 1
@.str.14 = private unnamed_addr constant [76 x i8] c"(%s) weight for track file %s must be in [-254..254] inclusive. Ignoring...\00", align 1
@.str.15 = private unnamed_addr constant [65 x i8] c"(%s) weight without value specified for track file %s - ignoring\00", align 1
@.str.16 = private unnamed_addr constant [47 x i8] c"(%s) Changing effective priority from %d to %d\00", align 1
@inotify_fd = internal global i32 -1, align 4
@.str.17 = private unnamed_addr constant [35 x i8] c"Unable to monitor vrrp track files\00", align 1
@.str.18 = private unnamed_addr constant [43 x i8] c"Track file %s is not being used - removing\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.20 = private unnamed_addr constant [54 x i8] c"Track file directory for %s does not exist - removing\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.22 = private unnamed_addr constant [43 x i8] c"track file %s is not accessible - ignoring\00", align 1
@master = external global %struct._thread_master*, align 8
@inotify_thread = internal global %struct._thread* null, align 8
@garp_delay = common global %struct._list* null, align 8
@.str.23 = private unnamed_addr constant [38 x i8] c"inotify read() returned error %d - %m\00", align 1
@.str.24 = private unnamed_addr constant [41 x i8] c"inotify read() returned short length %zd\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"Unknown inotify event 0x%x\00", align 1

; Function Attrs: nounwind uwtable
define void @dump_track_if(%struct._IO_FILE*, i8*) #0 !dbg !447 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._tracked_if*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !449, metadata !450), !dbg !451
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !452, metadata !450), !dbg !453
  call void @llvm.dbg.declare(metadata %struct._tracked_if** %5, metadata !454, metadata !450), !dbg !455
  %6 = load i8*, i8** %4, align 8, !dbg !456
  %7 = bitcast i8* %6 to %struct._tracked_if*, !dbg !456
  store %struct._tracked_if* %7, %struct._tracked_if** %5, align 8, !dbg !455
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !457
  %9 = load %struct._tracked_if*, %struct._tracked_if** %5, align 8, !dbg !458
  %10 = getelementptr inbounds %struct._tracked_if, %struct._tracked_if* %9, i32 0, i32 1, !dbg !459
  %11 = load %struct._interface*, %struct._interface** %10, align 8, !dbg !459
  %12 = getelementptr inbounds %struct._interface, %struct._interface* %11, i32 0, i32 0, !dbg !460
  %13 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i32 0, i32 0, !dbg !461
  %14 = load %struct._tracked_if*, %struct._tracked_if** %5, align 8, !dbg !462
  %15 = getelementptr inbounds %struct._tracked_if, %struct._tracked_if* %14, i32 0, i32 0, !dbg !463
  %16 = load i32, i32* %15, align 8, !dbg !463
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* %13, i32 %16), !dbg !464
  ret void, !dbg !465
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @conf_write(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @free_track_if(i8*) #0 !dbg !466 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !467, metadata !450), !dbg !468
  %3 = load i8*, i8** %2, align 8, !dbg !469
  call void @free(i8* %3) #6, !dbg !470
  store i8* null, i8** %2, align 8, !dbg !471
  ret void, !dbg !472
}

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define void @alloc_track_if(%struct._vrrp_t*, %struct._vector*) #0 !dbg !473 {
  %3 = alloca %struct._vrrp_t*, align 8
  %4 = alloca %struct._vector*, align 8
  %5 = alloca %struct._interface*, align 8
  %6 = alloca %struct._tracked_if*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct._element*, align 8
  store %struct._vrrp_t* %0, %struct._vrrp_t** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !644, metadata !450), !dbg !645
  store %struct._vector* %1, %struct._vector** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %4, metadata !646, metadata !450), !dbg !647
  call void @llvm.dbg.declare(metadata %struct._interface** %5, metadata !648, metadata !450), !dbg !649
  store %struct._interface* null, %struct._interface** %5, align 8, !dbg !649
  call void @llvm.dbg.declare(metadata %struct._tracked_if** %6, metadata !650, metadata !450), !dbg !651
  store %struct._tracked_if* null, %struct._tracked_if** %6, align 8, !dbg !651
  call void @llvm.dbg.declare(metadata i32* %7, metadata !652, metadata !450), !dbg !653
  store i32 0, i32* %7, align 4, !dbg !653
  call void @llvm.dbg.declare(metadata i8** %8, metadata !654, metadata !450), !dbg !655
  %10 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !656
  %11 = call i8* @strvec_slot(%struct._vector* %10, i64 0), !dbg !657
  store i8* %11, i8** %8, align 8, !dbg !655
  call void @llvm.dbg.declare(metadata %struct._element** %9, metadata !658, metadata !450), !dbg !660
  %12 = load i8*, i8** %8, align 8, !dbg !661
  %13 = call %struct._interface* @if_get_by_ifname(i8* %12, i32 1), !dbg !662
  store %struct._interface* %13, %struct._interface** %5, align 8, !dbg !663
  %14 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !664
  %15 = icmp ne %struct._interface* %14, null, !dbg !664
  br i1 %15, label %21, label %16, !dbg !666

; <label>:16:                                     ; preds = %2
  %17 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !667
  %18 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %17, i32 0, i32 1, !dbg !669
  %19 = load i8*, i8** %18, align 8, !dbg !669
  %20 = load i8*, i8** %8, align 8, !dbg !670
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i32 0, i32 0), i8* %19, i8* %20), !dbg !671
  br label %119, !dbg !672

; <label>:21:                                     ; preds = %2
  %22 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !673
  %23 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %22, i32 0, i32 11, !dbg !675
  %24 = load %struct._list*, %struct._list** %23, align 8, !dbg !675
  %25 = icmp ne %struct._list* %24, null, !dbg !676
  br i1 %25, label %26, label %40, !dbg !676

; <label>:26:                                     ; preds = %21
  %27 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !677
  %28 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %27, i32 0, i32 11, !dbg !679
  %29 = load %struct._list*, %struct._list** %28, align 8, !dbg !679
  %30 = icmp ne %struct._list* %29, null, !dbg !680
  br i1 %30, label %32, label %31, !dbg !681

; <label>:31:                                     ; preds = %26
  br label %38, !dbg !682

; <label>:32:                                     ; preds = %26
  %33 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !684
  %34 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %33, i32 0, i32 11, !dbg !686
  %35 = load %struct._list*, %struct._list** %34, align 8, !dbg !686
  %36 = getelementptr inbounds %struct._list, %struct._list* %35, i32 0, i32 0, !dbg !687
  %37 = load %struct._element*, %struct._element** %36, align 8, !dbg !687
  br label %38, !dbg !688

; <label>:38:                                     ; preds = %32, %31
  %39 = phi %struct._element* [ null, %31 ], [ %37, %32 ], !dbg !689
  br label %41, !dbg !691

; <label>:40:                                     ; preds = %21
  br label %41, !dbg !692

; <label>:41:                                     ; preds = %40, %38
  %42 = phi %struct._element* [ %39, %38 ], [ null, %40 ], !dbg !694
  store %struct._element* %42, %struct._element** %9, align 8, !dbg !696
  br label %43, !dbg !697

; <label>:43:                                     ; preds = %65, %41
  %44 = load %struct._element*, %struct._element** %9, align 8, !dbg !698
  %45 = icmp ne %struct._element* %44, null, !dbg !701
  br i1 %45, label %46, label %51, !dbg !702

; <label>:46:                                     ; preds = %43
  %47 = load %struct._element*, %struct._element** %9, align 8, !dbg !703
  %48 = getelementptr inbounds %struct._element, %struct._element* %47, i32 0, i32 2, !dbg !705
  %49 = load i8*, i8** %48, align 8, !dbg !705
  %50 = bitcast i8* %49 to %struct._tracked_if*, !dbg !706
  store %struct._tracked_if* %50, %struct._tracked_if** %6, align 8, !dbg !707
  br label %51

; <label>:51:                                     ; preds = %46, %43
  %52 = phi i1 [ false, %43 ], [ true, %46 ]
  br i1 %52, label %53, label %69, !dbg !708

; <label>:53:                                     ; preds = %51
  %54 = load %struct._tracked_if*, %struct._tracked_if** %6, align 8, !dbg !710
  %55 = getelementptr inbounds %struct._tracked_if, %struct._tracked_if* %54, i32 0, i32 1, !dbg !713
  %56 = load %struct._interface*, %struct._interface** %55, align 8, !dbg !713
  %57 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !714
  %58 = icmp eq %struct._interface* %56, %57, !dbg !715
  br i1 %58, label %59, label %64, !dbg !716

; <label>:59:                                     ; preds = %53
  %60 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !717
  %61 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %60, i32 0, i32 1, !dbg !719
  %62 = load i8*, i8** %61, align 8, !dbg !719
  %63 = load i8*, i8** %8, align 8, !dbg !720
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i32 0, i32 0), i8* %62, i8* %63), !dbg !721
  br label %119, !dbg !722

; <label>:64:                                     ; preds = %53
  br label %65, !dbg !723

; <label>:65:                                     ; preds = %64
  %66 = load %struct._element*, %struct._element** %9, align 8, !dbg !724
  %67 = getelementptr inbounds %struct._element, %struct._element* %66, i32 0, i32 0, !dbg !726
  %68 = load %struct._element*, %struct._element** %67, align 8, !dbg !726
  store %struct._element* %68, %struct._element** %9, align 8, !dbg !727
  br label %43, !dbg !728, !llvm.loop !729

; <label>:69:                                     ; preds = %51
  %70 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !731
  %71 = getelementptr inbounds %struct._vector, %struct._vector* %70, i32 0, i32 1, !dbg !733
  %72 = load i32, i32* %71, align 4, !dbg !733
  %73 = icmp uge i32 %72, 3, !dbg !734
  br i1 %73, label %74, label %105, !dbg !735

; <label>:74:                                     ; preds = %69
  %75 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !736
  %76 = call i8* @strvec_slot(%struct._vector* %75, i64 1), !dbg !737
  %77 = call i32 @strcmp(i8* %76, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0)) #7, !dbg !738
  %78 = icmp ne i32 %77, 0, !dbg !740
  br i1 %78, label %105, label %79, !dbg !741

; <label>:79:                                     ; preds = %74
  %80 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !743
  %81 = call zeroext i1 @read_int_strvec(%struct._vector* %80, i64 2, i32* %7, i32 -254, i32 254, i1 zeroext true), !dbg !746
  br i1 %81, label %89, label %82, !dbg !747

; <label>:82:                                     ; preds = %79
  %83 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !748
  %84 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %83, i32 0, i32 1, !dbg !750
  %85 = load i8*, i8** %84, align 8, !dbg !750
  %86 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !751
  %87 = call i8* @strvec_slot(%struct._vector* %86, i64 2), !dbg !752
  %88 = load i8*, i8** %8, align 8, !dbg !753
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.4, i32 0, i32 0), i8* %85, i8* %87, i8* %88), !dbg !754
  store i32 0, i32* %7, align 4, !dbg !755
  br label %104, !dbg !756

; <label>:89:                                     ; preds = %79
  %90 = load i32, i32* %7, align 4, !dbg !757
  %91 = icmp eq i32 %90, -254, !dbg !759
  br i1 %91, label %95, label %92, !dbg !760

; <label>:92:                                     ; preds = %89
  %93 = load i32, i32* %7, align 4, !dbg !761
  %94 = icmp eq i32 %93, 254, !dbg !763
  br i1 %94, label %95, label %103, !dbg !764

; <label>:95:                                     ; preds = %92, %89
  %96 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !765
  %97 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %96, i32 0, i32 1, !dbg !767
  %98 = load i8*, i8** %97, align 8, !dbg !767
  %99 = load i8*, i8** %8, align 8, !dbg !768
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i32 0, i32 0), i8* %98, i8* %99), !dbg !769
  %100 = load i32, i32* %7, align 4, !dbg !770
  %101 = icmp eq i32 %100, -254, !dbg !771
  %102 = select i1 %101, i32 -253, i32 253, !dbg !770
  store i32 %102, i32* %7, align 4, !dbg !772
  br label %103, !dbg !773

; <label>:103:                                    ; preds = %95, %92
  br label %104

; <label>:104:                                    ; preds = %103, %82
  br label %105, !dbg !774

; <label>:105:                                    ; preds = %104, %74, %69
  %106 = call i8* @zalloc(i64 16), !dbg !775
  %107 = bitcast i8* %106 to %struct._tracked_if*, !dbg !776
  store %struct._tracked_if* %107, %struct._tracked_if** %6, align 8, !dbg !777
  %108 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !778
  %109 = load %struct._tracked_if*, %struct._tracked_if** %6, align 8, !dbg !779
  %110 = getelementptr inbounds %struct._tracked_if, %struct._tracked_if* %109, i32 0, i32 1, !dbg !780
  store %struct._interface* %108, %struct._interface** %110, align 8, !dbg !781
  %111 = load i32, i32* %7, align 4, !dbg !782
  %112 = load %struct._tracked_if*, %struct._tracked_if** %6, align 8, !dbg !783
  %113 = getelementptr inbounds %struct._tracked_if, %struct._tracked_if* %112, i32 0, i32 0, !dbg !784
  store i32 %111, i32* %113, align 8, !dbg !785
  %114 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !786
  %115 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %114, i32 0, i32 11, !dbg !787
  %116 = load %struct._list*, %struct._list** %115, align 8, !dbg !787
  %117 = load %struct._tracked_if*, %struct._tracked_if** %6, align 8, !dbg !788
  %118 = bitcast %struct._tracked_if* %117 to i8*, !dbg !788
  call void @list_add(%struct._list* %116, i8* %118), !dbg !789
  br label %119, !dbg !790

; <label>:119:                                    ; preds = %105, %59, %16
  ret void, !dbg !791
}

declare i8* @strvec_slot(%struct._vector*, i64) #2

declare %struct._interface* @if_get_by_ifname(i8*, i32) #2

declare void @report_config_error(i32, i8*, ...) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare zeroext i1 @read_int_strvec(%struct._vector*, i64, i32*, i32, i32, i1 zeroext) #2

declare i8* @zalloc(i64) #2

declare void @list_add(%struct._list*, i8*) #2

; Function Attrs: nounwind uwtable
define void @alloc_group_track_if(%struct._vrrp_sgroup*, %struct._vector*) #0 !dbg !792 {
  %3 = alloca %struct._vrrp_sgroup*, align 8
  %4 = alloca %struct._vector*, align 8
  %5 = alloca %struct._interface*, align 8
  %6 = alloca %struct._tracked_if*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct._element*, align 8
  store %struct._vrrp_sgroup* %0, %struct._vrrp_sgroup** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._vrrp_sgroup** %3, metadata !795, metadata !450), !dbg !796
  store %struct._vector* %1, %struct._vector** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %4, metadata !797, metadata !450), !dbg !798
  call void @llvm.dbg.declare(metadata %struct._interface** %5, metadata !799, metadata !450), !dbg !800
  call void @llvm.dbg.declare(metadata %struct._tracked_if** %6, metadata !801, metadata !450), !dbg !802
  call void @llvm.dbg.declare(metadata i32* %7, metadata !803, metadata !450), !dbg !804
  store i32 0, i32* %7, align 4, !dbg !804
  call void @llvm.dbg.declare(metadata i8** %8, metadata !805, metadata !450), !dbg !806
  %10 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !807
  %11 = call i8* @strvec_slot(%struct._vector* %10, i64 0), !dbg !808
  store i8* %11, i8** %8, align 8, !dbg !806
  call void @llvm.dbg.declare(metadata %struct._element** %9, metadata !809, metadata !450), !dbg !810
  %12 = load i8*, i8** %8, align 8, !dbg !811
  %13 = call %struct._interface* @if_get_by_ifname(i8* %12, i32 1), !dbg !812
  store %struct._interface* %13, %struct._interface** %5, align 8, !dbg !813
  %14 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !814
  %15 = icmp ne %struct._interface* %14, null, !dbg !814
  br i1 %15, label %21, label %16, !dbg !816

; <label>:16:                                     ; preds = %2
  %17 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !817
  %18 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %17, i32 0, i32 0, !dbg !819
  %19 = load i8*, i8** %18, align 8, !dbg !819
  %20 = load i8*, i8** %8, align 8, !dbg !820
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i32 0, i32 0), i8* %19, i8* %20), !dbg !821
  br label %117, !dbg !822

; <label>:21:                                     ; preds = %2
  %22 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !823
  %23 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %22, i32 0, i32 7, !dbg !825
  %24 = load %struct._list*, %struct._list** %23, align 8, !dbg !825
  %25 = icmp ne %struct._list* %24, null, !dbg !826
  br i1 %25, label %26, label %40, !dbg !826

; <label>:26:                                     ; preds = %21
  %27 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !827
  %28 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %27, i32 0, i32 7, !dbg !829
  %29 = load %struct._list*, %struct._list** %28, align 8, !dbg !829
  %30 = icmp ne %struct._list* %29, null, !dbg !830
  br i1 %30, label %32, label %31, !dbg !831

; <label>:31:                                     ; preds = %26
  br label %38, !dbg !832

; <label>:32:                                     ; preds = %26
  %33 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !834
  %34 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %33, i32 0, i32 7, !dbg !836
  %35 = load %struct._list*, %struct._list** %34, align 8, !dbg !836
  %36 = getelementptr inbounds %struct._list, %struct._list* %35, i32 0, i32 0, !dbg !837
  %37 = load %struct._element*, %struct._element** %36, align 8, !dbg !837
  br label %38, !dbg !838

; <label>:38:                                     ; preds = %32, %31
  %39 = phi %struct._element* [ null, %31 ], [ %37, %32 ], !dbg !839
  br label %41, !dbg !841

; <label>:40:                                     ; preds = %21
  br label %41, !dbg !842

; <label>:41:                                     ; preds = %40, %38
  %42 = phi %struct._element* [ %39, %38 ], [ null, %40 ], !dbg !844
  store %struct._element* %42, %struct._element** %9, align 8, !dbg !846
  br label %43, !dbg !847

; <label>:43:                                     ; preds = %65, %41
  %44 = load %struct._element*, %struct._element** %9, align 8, !dbg !848
  %45 = icmp ne %struct._element* %44, null, !dbg !851
  br i1 %45, label %46, label %51, !dbg !852

; <label>:46:                                     ; preds = %43
  %47 = load %struct._element*, %struct._element** %9, align 8, !dbg !853
  %48 = getelementptr inbounds %struct._element, %struct._element* %47, i32 0, i32 2, !dbg !855
  %49 = load i8*, i8** %48, align 8, !dbg !855
  %50 = bitcast i8* %49 to %struct._tracked_if*, !dbg !856
  store %struct._tracked_if* %50, %struct._tracked_if** %6, align 8, !dbg !857
  br label %51

; <label>:51:                                     ; preds = %46, %43
  %52 = phi i1 [ false, %43 ], [ true, %46 ]
  br i1 %52, label %53, label %69, !dbg !858

; <label>:53:                                     ; preds = %51
  %54 = load %struct._tracked_if*, %struct._tracked_if** %6, align 8, !dbg !860
  %55 = getelementptr inbounds %struct._tracked_if, %struct._tracked_if* %54, i32 0, i32 1, !dbg !863
  %56 = load %struct._interface*, %struct._interface** %55, align 8, !dbg !863
  %57 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !864
  %58 = icmp eq %struct._interface* %56, %57, !dbg !865
  br i1 %58, label %59, label %64, !dbg !866

; <label>:59:                                     ; preds = %53
  %60 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !867
  %61 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %60, i32 0, i32 0, !dbg !869
  %62 = load i8*, i8** %61, align 8, !dbg !869
  %63 = load i8*, i8** %8, align 8, !dbg !870
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i32 0, i32 0), i8* %62, i8* %63), !dbg !871
  br label %117, !dbg !872

; <label>:64:                                     ; preds = %53
  br label %65, !dbg !873

; <label>:65:                                     ; preds = %64
  %66 = load %struct._element*, %struct._element** %9, align 8, !dbg !874
  %67 = getelementptr inbounds %struct._element, %struct._element* %66, i32 0, i32 0, !dbg !876
  %68 = load %struct._element*, %struct._element** %67, align 8, !dbg !876
  store %struct._element* %68, %struct._element** %9, align 8, !dbg !877
  br label %43, !dbg !878, !llvm.loop !879

; <label>:69:                                     ; preds = %51
  %70 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !881
  %71 = getelementptr inbounds %struct._vector, %struct._vector* %70, i32 0, i32 1, !dbg !883
  %72 = load i32, i32* %71, align 4, !dbg !883
  %73 = icmp uge i32 %72, 3, !dbg !884
  br i1 %73, label %74, label %103, !dbg !885

; <label>:74:                                     ; preds = %69
  %75 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !886
  %76 = call i8* @strvec_slot(%struct._vector* %75, i64 1), !dbg !887
  %77 = call i32 @strcmp(i8* %76, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0)) #7, !dbg !888
  %78 = icmp ne i32 %77, 0, !dbg !890
  br i1 %78, label %103, label %79, !dbg !891

; <label>:79:                                     ; preds = %74
  %80 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !893
  %81 = call zeroext i1 @read_int_strvec(%struct._vector* %80, i64 2, i32* %7, i32 -254, i32 254, i1 zeroext true), !dbg !896
  br i1 %81, label %87, label %82, !dbg !897

; <label>:82:                                     ; preds = %79
  %83 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !898
  %84 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %83, i32 0, i32 0, !dbg !900
  %85 = load i8*, i8** %84, align 8, !dbg !900
  %86 = load i8*, i8** %8, align 8, !dbg !901
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.6, i32 0, i32 0), i8* %85, i8* %86), !dbg !902
  store i32 0, i32* %7, align 4, !dbg !903
  br label %102, !dbg !904

; <label>:87:                                     ; preds = %79
  %88 = load i32, i32* %7, align 4, !dbg !905
  %89 = icmp eq i32 %88, -254, !dbg !907
  br i1 %89, label %93, label %90, !dbg !908

; <label>:90:                                     ; preds = %87
  %91 = load i32, i32* %7, align 4, !dbg !909
  %92 = icmp eq i32 %91, 254, !dbg !911
  br i1 %92, label %93, label %101, !dbg !912

; <label>:93:                                     ; preds = %90, %87
  %94 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !913
  %95 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %94, i32 0, i32 0, !dbg !915
  %96 = load i8*, i8** %95, align 8, !dbg !915
  %97 = load i8*, i8** %8, align 8, !dbg !916
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i32 0, i32 0), i8* %96, i8* %97), !dbg !917
  %98 = load i32, i32* %7, align 4, !dbg !918
  %99 = icmp eq i32 %98, -254, !dbg !919
  %100 = select i1 %99, i32 -253, i32 253, !dbg !918
  store i32 %100, i32* %7, align 4, !dbg !920
  br label %101, !dbg !921

; <label>:101:                                    ; preds = %93, %90
  br label %102

; <label>:102:                                    ; preds = %101, %82
  br label %103, !dbg !922

; <label>:103:                                    ; preds = %102, %74, %69
  %104 = call i8* @zalloc(i64 16), !dbg !923
  %105 = bitcast i8* %104 to %struct._tracked_if*, !dbg !924
  store %struct._tracked_if* %105, %struct._tracked_if** %6, align 8, !dbg !925
  %106 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !926
  %107 = load %struct._tracked_if*, %struct._tracked_if** %6, align 8, !dbg !927
  %108 = getelementptr inbounds %struct._tracked_if, %struct._tracked_if* %107, i32 0, i32 1, !dbg !928
  store %struct._interface* %106, %struct._interface** %108, align 8, !dbg !929
  %109 = load i32, i32* %7, align 4, !dbg !930
  %110 = load %struct._tracked_if*, %struct._tracked_if** %6, align 8, !dbg !931
  %111 = getelementptr inbounds %struct._tracked_if, %struct._tracked_if* %110, i32 0, i32 0, !dbg !932
  store i32 %109, i32* %111, align 8, !dbg !933
  %112 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !934
  %113 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %112, i32 0, i32 7, !dbg !935
  %114 = load %struct._list*, %struct._list** %113, align 8, !dbg !935
  %115 = load %struct._tracked_if*, %struct._tracked_if** %6, align 8, !dbg !936
  %116 = bitcast %struct._tracked_if* %115 to i8*, !dbg !936
  call void @list_add(%struct._list* %114, i8* %116), !dbg !937
  br label %117, !dbg !938

; <label>:117:                                    ; preds = %103, %59, %16
  ret void, !dbg !939
}

; Function Attrs: nounwind uwtable
define %struct._vrrp_script* @find_script_by_name(i8*) #0 !dbg !940 {
  %2 = alloca %struct._vrrp_script*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct._element*, align 8
  %5 = alloca %struct._vrrp_script*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !943, metadata !450), !dbg !944
  call void @llvm.dbg.declare(metadata %struct._element** %4, metadata !945, metadata !450), !dbg !946
  call void @llvm.dbg.declare(metadata %struct._vrrp_script** %5, metadata !947, metadata !450), !dbg !948
  %6 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !949
  %7 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %6, i32 0, i32 9, !dbg !951
  %8 = load %struct._list*, %struct._list** %7, align 8, !dbg !951
  %9 = icmp eq %struct._list* %8, null, !dbg !952
  br i1 %9, label %24, label %10, !dbg !953

; <label>:10:                                     ; preds = %1
  %11 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !954
  %12 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %11, i32 0, i32 9, !dbg !956
  %13 = load %struct._list*, %struct._list** %12, align 8, !dbg !956
  %14 = getelementptr inbounds %struct._list, %struct._list* %13, i32 0, i32 0, !dbg !957
  %15 = load %struct._element*, %struct._element** %14, align 8, !dbg !957
  %16 = icmp eq %struct._element* %15, null, !dbg !958
  br i1 %16, label %17, label %25, !dbg !959

; <label>:17:                                     ; preds = %10
  %18 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !960
  %19 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %18, i32 0, i32 9, !dbg !962
  %20 = load %struct._list*, %struct._list** %19, align 8, !dbg !962
  %21 = getelementptr inbounds %struct._list, %struct._list* %20, i32 0, i32 1, !dbg !963
  %22 = load %struct._element*, %struct._element** %21, align 8, !dbg !963
  %23 = icmp eq %struct._element* %22, null, !dbg !964
  br i1 %23, label %24, label %25, !dbg !965

; <label>:24:                                     ; preds = %17, %1
  store %struct._vrrp_script* null, %struct._vrrp_script** %2, align 8, !dbg !966
  br label %61, !dbg !966

; <label>:25:                                     ; preds = %17, %10
  %26 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !967
  %27 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %26, i32 0, i32 9, !dbg !969
  %28 = load %struct._list*, %struct._list** %27, align 8, !dbg !969
  %29 = icmp ne %struct._list* %28, null, !dbg !970
  br i1 %29, label %31, label %30, !dbg !971

; <label>:30:                                     ; preds = %25
  br label %37, !dbg !972

; <label>:31:                                     ; preds = %25
  %32 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !974
  %33 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %32, i32 0, i32 9, !dbg !976
  %34 = load %struct._list*, %struct._list** %33, align 8, !dbg !976
  %35 = getelementptr inbounds %struct._list, %struct._list* %34, i32 0, i32 0, !dbg !977
  %36 = load %struct._element*, %struct._element** %35, align 8, !dbg !977
  br label %37, !dbg !978

; <label>:37:                                     ; preds = %31, %30
  %38 = phi %struct._element* [ null, %30 ], [ %36, %31 ], !dbg !979
  store %struct._element* %38, %struct._element** %4, align 8, !dbg !981
  br label %39, !dbg !982

; <label>:39:                                     ; preds = %56, %37
  %40 = load %struct._element*, %struct._element** %4, align 8, !dbg !983
  %41 = icmp ne %struct._element* %40, null, !dbg !986
  br i1 %41, label %42, label %60, !dbg !986

; <label>:42:                                     ; preds = %39
  %43 = load %struct._element*, %struct._element** %4, align 8, !dbg !987
  %44 = getelementptr inbounds %struct._element, %struct._element* %43, i32 0, i32 2, !dbg !989
  %45 = load i8*, i8** %44, align 8, !dbg !989
  %46 = bitcast i8* %45 to %struct._vrrp_script*, !dbg !990
  store %struct._vrrp_script* %46, %struct._vrrp_script** %5, align 8, !dbg !991
  %47 = load %struct._vrrp_script*, %struct._vrrp_script** %5, align 8, !dbg !992
  %48 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %47, i32 0, i32 0, !dbg !994
  %49 = load i8*, i8** %48, align 8, !dbg !994
  %50 = load i8*, i8** %3, align 8, !dbg !995
  %51 = call i32 @strcmp(i8* %49, i8* %50) #7, !dbg !996
  %52 = icmp ne i32 %51, 0, !dbg !996
  br i1 %52, label %55, label %53, !dbg !997

; <label>:53:                                     ; preds = %42
  %54 = load %struct._vrrp_script*, %struct._vrrp_script** %5, align 8, !dbg !998
  store %struct._vrrp_script* %54, %struct._vrrp_script** %2, align 8, !dbg !999
  br label %61, !dbg !999

; <label>:55:                                     ; preds = %42
  br label %56, !dbg !1000

; <label>:56:                                     ; preds = %55
  %57 = load %struct._element*, %struct._element** %4, align 8, !dbg !1001
  %58 = getelementptr inbounds %struct._element, %struct._element* %57, i32 0, i32 0, !dbg !1003
  %59 = load %struct._element*, %struct._element** %58, align 8, !dbg !1003
  store %struct._element* %59, %struct._element** %4, align 8, !dbg !1004
  br label %39, !dbg !1005, !llvm.loop !1006

; <label>:60:                                     ; preds = %39
  store %struct._vrrp_script* null, %struct._vrrp_script** %2, align 8, !dbg !1008
  br label %61, !dbg !1008

; <label>:61:                                     ; preds = %60, %53, %24
  %62 = load %struct._vrrp_script*, %struct._vrrp_script** %2, align 8, !dbg !1009
  ret %struct._vrrp_script* %62, !dbg !1009
}

; Function Attrs: nounwind uwtable
define void @dump_track_script(%struct._IO_FILE*, i8*) #0 !dbg !1010 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._tracked_sc*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !1011, metadata !450), !dbg !1012
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1013, metadata !450), !dbg !1014
  call void @llvm.dbg.declare(metadata %struct._tracked_sc** %5, metadata !1015, metadata !450), !dbg !1016
  %6 = load i8*, i8** %4, align 8, !dbg !1017
  %7 = bitcast i8* %6 to %struct._tracked_sc*, !dbg !1017
  store %struct._tracked_sc* %7, %struct._tracked_sc** %5, align 8, !dbg !1016
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1018
  %9 = load %struct._tracked_sc*, %struct._tracked_sc** %5, align 8, !dbg !1019
  %10 = getelementptr inbounds %struct._tracked_sc, %struct._tracked_sc* %9, i32 0, i32 0, !dbg !1020
  %11 = load %struct._vrrp_script*, %struct._vrrp_script** %10, align 8, !dbg !1020
  %12 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %11, i32 0, i32 0, !dbg !1021
  %13 = load i8*, i8** %12, align 8, !dbg !1021
  %14 = load %struct._tracked_sc*, %struct._tracked_sc** %5, align 8, !dbg !1022
  %15 = getelementptr inbounds %struct._tracked_sc, %struct._tracked_sc* %14, i32 0, i32 1, !dbg !1023
  %16 = load i32, i32* %15, align 8, !dbg !1023
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* %13, i32 %16), !dbg !1024
  ret void, !dbg !1025
}

; Function Attrs: nounwind uwtable
define void @free_track_script(i8*) #0 !dbg !1026 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1027, metadata !450), !dbg !1028
  %3 = load i8*, i8** %2, align 8, !dbg !1029
  call void @free(i8* %3) #6, !dbg !1030
  store i8* null, i8** %2, align 8, !dbg !1031
  ret void, !dbg !1032
}

; Function Attrs: nounwind uwtable
define void @alloc_track_script(%struct._vrrp_t*, %struct._vector*) #0 !dbg !1033 {
  %3 = alloca %struct._vrrp_t*, align 8
  %4 = alloca %struct._vector*, align 8
  %5 = alloca %struct._vrrp_script*, align 8
  %6 = alloca %struct._tracked_sc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct._element*, align 8
  %10 = alloca %struct._tracked_sc*, align 8
  store %struct._vrrp_t* %0, %struct._vrrp_t** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !1034, metadata !450), !dbg !1035
  store %struct._vector* %1, %struct._vector** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %4, metadata !1036, metadata !450), !dbg !1037
  call void @llvm.dbg.declare(metadata %struct._vrrp_script** %5, metadata !1038, metadata !450), !dbg !1039
  call void @llvm.dbg.declare(metadata %struct._tracked_sc** %6, metadata !1040, metadata !450), !dbg !1041
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1042, metadata !450), !dbg !1043
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1044, metadata !450), !dbg !1045
  %11 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !1046
  %12 = call i8* @strvec_slot(%struct._vector* %11, i64 0), !dbg !1047
  store i8* %12, i8** %8, align 8, !dbg !1045
  call void @llvm.dbg.declare(metadata %struct._element** %9, metadata !1048, metadata !450), !dbg !1049
  call void @llvm.dbg.declare(metadata %struct._tracked_sc** %10, metadata !1050, metadata !450), !dbg !1051
  %13 = load i8*, i8** %8, align 8, !dbg !1052
  %14 = call %struct._vrrp_script* @find_script_by_name(i8* %13), !dbg !1053
  store %struct._vrrp_script* %14, %struct._vrrp_script** %5, align 8, !dbg !1054
  %15 = load %struct._vrrp_script*, %struct._vrrp_script** %5, align 8, !dbg !1055
  %16 = icmp ne %struct._vrrp_script* %15, null, !dbg !1055
  br i1 %16, label %22, label %17, !dbg !1057

; <label>:17:                                     ; preds = %2
  %18 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1058
  %19 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %18, i32 0, i32 1, !dbg !1060
  %20 = load i8*, i8** %19, align 8, !dbg !1060
  %21 = load i8*, i8** %8, align 8, !dbg !1061
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i32 0, i32 0), i8* %20, i8* %21), !dbg !1062
  br label %135, !dbg !1063

; <label>:22:                                     ; preds = %2
  %23 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1064
  %24 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %23, i32 0, i32 12, !dbg !1066
  %25 = load %struct._list*, %struct._list** %24, align 8, !dbg !1066
  %26 = icmp eq %struct._list* %25, null, !dbg !1067
  br i1 %26, label %79, label %27, !dbg !1068

; <label>:27:                                     ; preds = %22
  %28 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1069
  %29 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %28, i32 0, i32 12, !dbg !1071
  %30 = load %struct._list*, %struct._list** %29, align 8, !dbg !1071
  %31 = getelementptr inbounds %struct._list, %struct._list* %30, i32 0, i32 0, !dbg !1072
  %32 = load %struct._element*, %struct._element** %31, align 8, !dbg !1072
  %33 = icmp eq %struct._element* %32, null, !dbg !1073
  br i1 %33, label %34, label %41, !dbg !1074

; <label>:34:                                     ; preds = %27
  %35 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1075
  %36 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %35, i32 0, i32 12, !dbg !1077
  %37 = load %struct._list*, %struct._list** %36, align 8, !dbg !1077
  %38 = getelementptr inbounds %struct._list, %struct._list* %37, i32 0, i32 1, !dbg !1078
  %39 = load %struct._element*, %struct._element** %38, align 8, !dbg !1078
  %40 = icmp eq %struct._element* %39, null, !dbg !1079
  br i1 %40, label %79, label %41, !dbg !1080

; <label>:41:                                     ; preds = %34, %27
  %42 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1081
  %43 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %42, i32 0, i32 12, !dbg !1084
  %44 = load %struct._list*, %struct._list** %43, align 8, !dbg !1084
  %45 = icmp ne %struct._list* %44, null, !dbg !1085
  br i1 %45, label %47, label %46, !dbg !1086

; <label>:46:                                     ; preds = %41
  br label %53, !dbg !1087

; <label>:47:                                     ; preds = %41
  %48 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1089
  %49 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %48, i32 0, i32 12, !dbg !1091
  %50 = load %struct._list*, %struct._list** %49, align 8, !dbg !1091
  %51 = getelementptr inbounds %struct._list, %struct._list* %50, i32 0, i32 0, !dbg !1092
  %52 = load %struct._element*, %struct._element** %51, align 8, !dbg !1092
  br label %53, !dbg !1093

; <label>:53:                                     ; preds = %47, %46
  %54 = phi %struct._element* [ null, %46 ], [ %52, %47 ], !dbg !1094
  store %struct._element* %54, %struct._element** %9, align 8, !dbg !1096
  br label %55, !dbg !1097

; <label>:55:                                     ; preds = %74, %53
  %56 = load %struct._element*, %struct._element** %9, align 8, !dbg !1098
  %57 = icmp ne %struct._element* %56, null, !dbg !1101
  br i1 %57, label %58, label %78, !dbg !1101

; <label>:58:                                     ; preds = %55
  %59 = load %struct._element*, %struct._element** %9, align 8, !dbg !1102
  %60 = getelementptr inbounds %struct._element, %struct._element* %59, i32 0, i32 2, !dbg !1104
  %61 = load i8*, i8** %60, align 8, !dbg !1104
  %62 = bitcast i8* %61 to %struct._tracked_sc*, !dbg !1105
  store %struct._tracked_sc* %62, %struct._tracked_sc** %10, align 8, !dbg !1106
  %63 = load %struct._tracked_sc*, %struct._tracked_sc** %10, align 8, !dbg !1107
  %64 = getelementptr inbounds %struct._tracked_sc, %struct._tracked_sc* %63, i32 0, i32 0, !dbg !1109
  %65 = load %struct._vrrp_script*, %struct._vrrp_script** %64, align 8, !dbg !1109
  %66 = load %struct._vrrp_script*, %struct._vrrp_script** %5, align 8, !dbg !1110
  %67 = icmp eq %struct._vrrp_script* %65, %66, !dbg !1111
  br i1 %67, label %68, label %73, !dbg !1112

; <label>:68:                                     ; preds = %58
  %69 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1113
  %70 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %69, i32 0, i32 1, !dbg !1115
  %71 = load i8*, i8** %70, align 8, !dbg !1115
  %72 = load i8*, i8** %8, align 8, !dbg !1116
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i32 0, i32 0), i8* %71, i8* %72), !dbg !1117
  br label %135, !dbg !1118

; <label>:73:                                     ; preds = %58
  br label %74, !dbg !1119

; <label>:74:                                     ; preds = %73
  %75 = load %struct._element*, %struct._element** %9, align 8, !dbg !1120
  %76 = getelementptr inbounds %struct._element, %struct._element* %75, i32 0, i32 0, !dbg !1122
  %77 = load %struct._element*, %struct._element** %76, align 8, !dbg !1122
  store %struct._element* %77, %struct._element** %9, align 8, !dbg !1123
  br label %55, !dbg !1124, !llvm.loop !1125

; <label>:78:                                     ; preds = %55
  br label %79, !dbg !1127

; <label>:79:                                     ; preds = %78, %34, %22
  %80 = load %struct._vrrp_script*, %struct._vrrp_script** %5, align 8, !dbg !1128
  %81 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %80, i32 0, i32 4, !dbg !1129
  %82 = load i32, i32* %81, align 8, !dbg !1129
  store i32 %82, i32* %7, align 4, !dbg !1130
  %83 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !1131
  %84 = getelementptr inbounds %struct._vector, %struct._vector* %83, i32 0, i32 1, !dbg !1133
  %85 = load i32, i32* %84, align 4, !dbg !1133
  %86 = icmp uge i32 %85, 3, !dbg !1134
  br i1 %86, label %87, label %119, !dbg !1135

; <label>:87:                                     ; preds = %79
  %88 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !1136
  %89 = call i8* @strvec_slot(%struct._vector* %88, i64 1), !dbg !1137
  %90 = call i32 @strcmp(i8* %89, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0)) #7, !dbg !1138
  %91 = icmp ne i32 %90, 0, !dbg !1140
  br i1 %91, label %119, label %92, !dbg !1141

; <label>:92:                                     ; preds = %87
  %93 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !1143
  %94 = call zeroext i1 @read_int_strvec(%struct._vector* %93, i64 2, i32* %7, i32 -254, i32 254, i1 zeroext true), !dbg !1146
  br i1 %94, label %103, label %95, !dbg !1147

; <label>:95:                                     ; preds = %92
  %96 = load %struct._vrrp_script*, %struct._vrrp_script** %5, align 8, !dbg !1148
  %97 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %96, i32 0, i32 4, !dbg !1150
  %98 = load i32, i32* %97, align 8, !dbg !1150
  store i32 %98, i32* %7, align 4, !dbg !1151
  %99 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1152
  %100 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %99, i32 0, i32 1, !dbg !1153
  %101 = load i8*, i8** %100, align 8, !dbg !1153
  %102 = load i8*, i8** %8, align 8, !dbg !1154
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.9, i32 0, i32 0), i8* %101, i8* %102), !dbg !1155
  br label %118, !dbg !1156

; <label>:103:                                    ; preds = %92
  %104 = load i32, i32* %7, align 4, !dbg !1157
  %105 = icmp eq i32 %104, -254, !dbg !1159
  br i1 %105, label %109, label %106, !dbg !1160

; <label>:106:                                    ; preds = %103
  %107 = load i32, i32* %7, align 4, !dbg !1161
  %108 = icmp eq i32 %107, 254, !dbg !1163
  br i1 %108, label %109, label %117, !dbg !1164

; <label>:109:                                    ; preds = %106, %103
  %110 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1165
  %111 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %110, i32 0, i32 1, !dbg !1167
  %112 = load i8*, i8** %111, align 8, !dbg !1167
  %113 = load i8*, i8** %8, align 8, !dbg !1168
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i32 0, i32 0), i8* %112, i8* %113), !dbg !1169
  %114 = load i32, i32* %7, align 4, !dbg !1170
  %115 = icmp eq i32 %114, -254, !dbg !1171
  %116 = select i1 %115, i32 -253, i32 253, !dbg !1170
  store i32 %116, i32* %7, align 4, !dbg !1172
  br label %117, !dbg !1173

; <label>:117:                                    ; preds = %109, %106
  br label %118

; <label>:118:                                    ; preds = %117, %95
  br label %119, !dbg !1174

; <label>:119:                                    ; preds = %118, %87, %79
  %120 = call i8* @zalloc(i64 16), !dbg !1175
  %121 = bitcast i8* %120 to %struct._tracked_sc*, !dbg !1176
  store %struct._tracked_sc* %121, %struct._tracked_sc** %6, align 8, !dbg !1177
  %122 = load %struct._vrrp_script*, %struct._vrrp_script** %5, align 8, !dbg !1178
  %123 = load %struct._tracked_sc*, %struct._tracked_sc** %6, align 8, !dbg !1179
  %124 = getelementptr inbounds %struct._tracked_sc, %struct._tracked_sc* %123, i32 0, i32 0, !dbg !1180
  store %struct._vrrp_script* %122, %struct._vrrp_script** %124, align 8, !dbg !1181
  %125 = load i32, i32* %7, align 4, !dbg !1182
  %126 = load %struct._tracked_sc*, %struct._tracked_sc** %6, align 8, !dbg !1183
  %127 = getelementptr inbounds %struct._tracked_sc, %struct._tracked_sc* %126, i32 0, i32 1, !dbg !1184
  store i32 %125, i32* %127, align 8, !dbg !1185
  %128 = load %struct._vrrp_script*, %struct._vrrp_script** %5, align 8, !dbg !1186
  %129 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %128, i32 0, i32 11, !dbg !1187
  store i32 1, i32* %129, align 8, !dbg !1188
  %130 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1189
  %131 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %130, i32 0, i32 12, !dbg !1190
  %132 = load %struct._list*, %struct._list** %131, align 8, !dbg !1190
  %133 = load %struct._tracked_sc*, %struct._tracked_sc** %6, align 8, !dbg !1191
  %134 = bitcast %struct._tracked_sc* %133 to i8*, !dbg !1191
  call void @list_add(%struct._list* %132, i8* %134), !dbg !1192
  br label %135, !dbg !1193

; <label>:135:                                    ; preds = %119, %68, %17
  ret void, !dbg !1194
}

; Function Attrs: nounwind uwtable
define void @alloc_group_track_script(%struct._vrrp_sgroup*, %struct._vector*) #0 !dbg !1195 {
  %3 = alloca %struct._vrrp_sgroup*, align 8
  %4 = alloca %struct._vector*, align 8
  %5 = alloca %struct._vrrp_script*, align 8
  %6 = alloca %struct._tracked_sc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct._tracked_sc*, align 8
  %10 = alloca %struct._element*, align 8
  store %struct._vrrp_sgroup* %0, %struct._vrrp_sgroup** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._vrrp_sgroup** %3, metadata !1196, metadata !450), !dbg !1197
  store %struct._vector* %1, %struct._vector** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %4, metadata !1198, metadata !450), !dbg !1199
  call void @llvm.dbg.declare(metadata %struct._vrrp_script** %5, metadata !1200, metadata !450), !dbg !1201
  store %struct._vrrp_script* null, %struct._vrrp_script** %5, align 8, !dbg !1201
  call void @llvm.dbg.declare(metadata %struct._tracked_sc** %6, metadata !1202, metadata !450), !dbg !1203
  store %struct._tracked_sc* null, %struct._tracked_sc** %6, align 8, !dbg !1203
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1204, metadata !450), !dbg !1205
  store i32 0, i32* %7, align 4, !dbg !1205
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1206, metadata !450), !dbg !1207
  %11 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !1208
  %12 = call i8* @strvec_slot(%struct._vector* %11, i64 0), !dbg !1209
  store i8* %12, i8** %8, align 8, !dbg !1207
  call void @llvm.dbg.declare(metadata %struct._tracked_sc** %9, metadata !1210, metadata !450), !dbg !1211
  store %struct._tracked_sc* null, %struct._tracked_sc** %9, align 8, !dbg !1211
  call void @llvm.dbg.declare(metadata %struct._element** %10, metadata !1212, metadata !450), !dbg !1213
  %13 = load i8*, i8** %8, align 8, !dbg !1214
  %14 = call %struct._vrrp_script* @find_script_by_name(i8* %13), !dbg !1215
  store %struct._vrrp_script* %14, %struct._vrrp_script** %5, align 8, !dbg !1216
  %15 = load %struct._vrrp_script*, %struct._vrrp_script** %5, align 8, !dbg !1217
  %16 = icmp ne %struct._vrrp_script* %15, null, !dbg !1217
  br i1 %16, label %22, label %17, !dbg !1219

; <label>:17:                                     ; preds = %2
  %18 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !1220
  %19 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %18, i32 0, i32 0, !dbg !1222
  %20 = load i8*, i8** %19, align 8, !dbg !1222
  %21 = load i8*, i8** %8, align 8, !dbg !1223
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i32 0, i32 0), i8* %20, i8* %21), !dbg !1224
  br label %135, !dbg !1225

; <label>:22:                                     ; preds = %2
  %23 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !1226
  %24 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %23, i32 0, i32 8, !dbg !1228
  %25 = load %struct._list*, %struct._list** %24, align 8, !dbg !1228
  %26 = icmp eq %struct._list* %25, null, !dbg !1229
  br i1 %26, label %79, label %27, !dbg !1230

; <label>:27:                                     ; preds = %22
  %28 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !1231
  %29 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %28, i32 0, i32 8, !dbg !1233
  %30 = load %struct._list*, %struct._list** %29, align 8, !dbg !1233
  %31 = getelementptr inbounds %struct._list, %struct._list* %30, i32 0, i32 0, !dbg !1234
  %32 = load %struct._element*, %struct._element** %31, align 8, !dbg !1234
  %33 = icmp eq %struct._element* %32, null, !dbg !1235
  br i1 %33, label %34, label %41, !dbg !1236

; <label>:34:                                     ; preds = %27
  %35 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !1237
  %36 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %35, i32 0, i32 8, !dbg !1239
  %37 = load %struct._list*, %struct._list** %36, align 8, !dbg !1239
  %38 = getelementptr inbounds %struct._list, %struct._list* %37, i32 0, i32 1, !dbg !1240
  %39 = load %struct._element*, %struct._element** %38, align 8, !dbg !1240
  %40 = icmp eq %struct._element* %39, null, !dbg !1241
  br i1 %40, label %79, label %41, !dbg !1242

; <label>:41:                                     ; preds = %34, %27
  %42 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !1243
  %43 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %42, i32 0, i32 8, !dbg !1246
  %44 = load %struct._list*, %struct._list** %43, align 8, !dbg !1246
  %45 = icmp ne %struct._list* %44, null, !dbg !1247
  br i1 %45, label %47, label %46, !dbg !1248

; <label>:46:                                     ; preds = %41
  br label %53, !dbg !1249

; <label>:47:                                     ; preds = %41
  %48 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !1251
  %49 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %48, i32 0, i32 8, !dbg !1253
  %50 = load %struct._list*, %struct._list** %49, align 8, !dbg !1253
  %51 = getelementptr inbounds %struct._list, %struct._list* %50, i32 0, i32 0, !dbg !1254
  %52 = load %struct._element*, %struct._element** %51, align 8, !dbg !1254
  br label %53, !dbg !1255

; <label>:53:                                     ; preds = %47, %46
  %54 = phi %struct._element* [ null, %46 ], [ %52, %47 ], !dbg !1256
  store %struct._element* %54, %struct._element** %10, align 8, !dbg !1258
  br label %55, !dbg !1259

; <label>:55:                                     ; preds = %74, %53
  %56 = load %struct._element*, %struct._element** %10, align 8, !dbg !1260
  %57 = icmp ne %struct._element* %56, null, !dbg !1263
  br i1 %57, label %58, label %78, !dbg !1263

; <label>:58:                                     ; preds = %55
  %59 = load %struct._element*, %struct._element** %10, align 8, !dbg !1264
  %60 = getelementptr inbounds %struct._element, %struct._element* %59, i32 0, i32 2, !dbg !1266
  %61 = load i8*, i8** %60, align 8, !dbg !1266
  %62 = bitcast i8* %61 to %struct._tracked_sc*, !dbg !1267
  store %struct._tracked_sc* %62, %struct._tracked_sc** %9, align 8, !dbg !1268
  %63 = load %struct._tracked_sc*, %struct._tracked_sc** %9, align 8, !dbg !1269
  %64 = getelementptr inbounds %struct._tracked_sc, %struct._tracked_sc* %63, i32 0, i32 0, !dbg !1271
  %65 = load %struct._vrrp_script*, %struct._vrrp_script** %64, align 8, !dbg !1271
  %66 = load %struct._vrrp_script*, %struct._vrrp_script** %5, align 8, !dbg !1272
  %67 = icmp eq %struct._vrrp_script* %65, %66, !dbg !1273
  br i1 %67, label %68, label %73, !dbg !1274

; <label>:68:                                     ; preds = %58
  %69 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !1275
  %70 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %69, i32 0, i32 0, !dbg !1277
  %71 = load i8*, i8** %70, align 8, !dbg !1277
  %72 = load i8*, i8** %8, align 8, !dbg !1278
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i32 0, i32 0), i8* %71, i8* %72), !dbg !1279
  br label %135, !dbg !1280

; <label>:73:                                     ; preds = %58
  br label %74, !dbg !1281

; <label>:74:                                     ; preds = %73
  %75 = load %struct._element*, %struct._element** %10, align 8, !dbg !1282
  %76 = getelementptr inbounds %struct._element, %struct._element* %75, i32 0, i32 0, !dbg !1284
  %77 = load %struct._element*, %struct._element** %76, align 8, !dbg !1284
  store %struct._element* %77, %struct._element** %10, align 8, !dbg !1285
  br label %55, !dbg !1286, !llvm.loop !1287

; <label>:78:                                     ; preds = %55
  br label %79, !dbg !1289

; <label>:79:                                     ; preds = %78, %34, %22
  %80 = load %struct._vrrp_script*, %struct._vrrp_script** %5, align 8, !dbg !1290
  %81 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %80, i32 0, i32 4, !dbg !1291
  %82 = load i32, i32* %81, align 8, !dbg !1291
  store i32 %82, i32* %7, align 4, !dbg !1292
  %83 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !1293
  %84 = getelementptr inbounds %struct._vector, %struct._vector* %83, i32 0, i32 1, !dbg !1295
  %85 = load i32, i32* %84, align 4, !dbg !1295
  %86 = icmp uge i32 %85, 3, !dbg !1296
  br i1 %86, label %87, label %119, !dbg !1297

; <label>:87:                                     ; preds = %79
  %88 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !1298
  %89 = call i8* @strvec_slot(%struct._vector* %88, i64 1), !dbg !1299
  %90 = call i32 @strcmp(i8* %89, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0)) #7, !dbg !1300
  %91 = icmp ne i32 %90, 0, !dbg !1302
  br i1 %91, label %119, label %92, !dbg !1303

; <label>:92:                                     ; preds = %87
  %93 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !1305
  %94 = call zeroext i1 @read_int_strvec(%struct._vector* %93, i64 2, i32* %7, i32 -254, i32 254, i1 zeroext true), !dbg !1308
  br i1 %94, label %103, label %95, !dbg !1309

; <label>:95:                                     ; preds = %92
  %96 = load %struct._vrrp_script*, %struct._vrrp_script** %5, align 8, !dbg !1310
  %97 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %96, i32 0, i32 4, !dbg !1312
  %98 = load i32, i32* %97, align 8, !dbg !1312
  store i32 %98, i32* %7, align 4, !dbg !1313
  %99 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !1314
  %100 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %99, i32 0, i32 0, !dbg !1315
  %101 = load i8*, i8** %100, align 8, !dbg !1315
  %102 = load i8*, i8** %8, align 8, !dbg !1316
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.9, i32 0, i32 0), i8* %101, i8* %102), !dbg !1317
  br label %118, !dbg !1318

; <label>:103:                                    ; preds = %92
  %104 = load i32, i32* %7, align 4, !dbg !1319
  %105 = icmp eq i32 %104, -254, !dbg !1321
  br i1 %105, label %109, label %106, !dbg !1322

; <label>:106:                                    ; preds = %103
  %107 = load i32, i32* %7, align 4, !dbg !1323
  %108 = icmp eq i32 %107, 254, !dbg !1325
  br i1 %108, label %109, label %117, !dbg !1326

; <label>:109:                                    ; preds = %106, %103
  %110 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !1327
  %111 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %110, i32 0, i32 0, !dbg !1329
  %112 = load i8*, i8** %111, align 8, !dbg !1329
  %113 = load i8*, i8** %8, align 8, !dbg !1330
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i32 0, i32 0), i8* %112, i8* %113), !dbg !1331
  %114 = load i32, i32* %7, align 4, !dbg !1332
  %115 = icmp eq i32 %114, -254, !dbg !1333
  %116 = select i1 %115, i32 -253, i32 253, !dbg !1332
  store i32 %116, i32* %7, align 4, !dbg !1334
  br label %117, !dbg !1335

; <label>:117:                                    ; preds = %109, %106
  br label %118

; <label>:118:                                    ; preds = %117, %95
  br label %119, !dbg !1336

; <label>:119:                                    ; preds = %118, %87, %79
  %120 = call i8* @zalloc(i64 16), !dbg !1337
  %121 = bitcast i8* %120 to %struct._tracked_sc*, !dbg !1338
  store %struct._tracked_sc* %121, %struct._tracked_sc** %6, align 8, !dbg !1339
  %122 = load %struct._vrrp_script*, %struct._vrrp_script** %5, align 8, !dbg !1340
  %123 = load %struct._tracked_sc*, %struct._tracked_sc** %6, align 8, !dbg !1341
  %124 = getelementptr inbounds %struct._tracked_sc, %struct._tracked_sc* %123, i32 0, i32 0, !dbg !1342
  store %struct._vrrp_script* %122, %struct._vrrp_script** %124, align 8, !dbg !1343
  %125 = load i32, i32* %7, align 4, !dbg !1344
  %126 = load %struct._tracked_sc*, %struct._tracked_sc** %6, align 8, !dbg !1345
  %127 = getelementptr inbounds %struct._tracked_sc, %struct._tracked_sc* %126, i32 0, i32 1, !dbg !1346
  store i32 %125, i32* %127, align 8, !dbg !1347
  %128 = load %struct._vrrp_script*, %struct._vrrp_script** %5, align 8, !dbg !1348
  %129 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %128, i32 0, i32 11, !dbg !1349
  store i32 1, i32* %129, align 8, !dbg !1350
  %130 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !1351
  %131 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %130, i32 0, i32 8, !dbg !1352
  %132 = load %struct._list*, %struct._list** %131, align 8, !dbg !1352
  %133 = load %struct._tracked_sc*, %struct._tracked_sc** %6, align 8, !dbg !1353
  %134 = bitcast %struct._tracked_sc* %133 to i8*, !dbg !1353
  call void @list_add(%struct._list* %132, i8* %134), !dbg !1354
  br label %135, !dbg !1355

; <label>:135:                                    ; preds = %119, %68, %17
  ret void, !dbg !1356
}

; Function Attrs: nounwind uwtable
define %struct._vrrp_file* @find_tracked_file_by_name(i8*) #0 !dbg !1357 {
  %2 = alloca %struct._vrrp_file*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct._element*, align 8
  %5 = alloca %struct._vrrp_file*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1362, metadata !450), !dbg !1363
  call void @llvm.dbg.declare(metadata %struct._element** %4, metadata !1364, metadata !450), !dbg !1365
  call void @llvm.dbg.declare(metadata %struct._vrrp_file** %5, metadata !1366, metadata !450), !dbg !1367
  %6 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1368
  %7 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %6, i32 0, i32 10, !dbg !1370
  %8 = load %struct._list*, %struct._list** %7, align 8, !dbg !1370
  %9 = icmp eq %struct._list* %8, null, !dbg !1371
  br i1 %9, label %24, label %10, !dbg !1372

; <label>:10:                                     ; preds = %1
  %11 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1373
  %12 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %11, i32 0, i32 10, !dbg !1375
  %13 = load %struct._list*, %struct._list** %12, align 8, !dbg !1375
  %14 = getelementptr inbounds %struct._list, %struct._list* %13, i32 0, i32 0, !dbg !1376
  %15 = load %struct._element*, %struct._element** %14, align 8, !dbg !1376
  %16 = icmp eq %struct._element* %15, null, !dbg !1377
  br i1 %16, label %17, label %25, !dbg !1378

; <label>:17:                                     ; preds = %10
  %18 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1379
  %19 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %18, i32 0, i32 10, !dbg !1381
  %20 = load %struct._list*, %struct._list** %19, align 8, !dbg !1381
  %21 = getelementptr inbounds %struct._list, %struct._list* %20, i32 0, i32 1, !dbg !1382
  %22 = load %struct._element*, %struct._element** %21, align 8, !dbg !1382
  %23 = icmp eq %struct._element* %22, null, !dbg !1383
  br i1 %23, label %24, label %25, !dbg !1384

; <label>:24:                                     ; preds = %17, %1
  store %struct._vrrp_file* null, %struct._vrrp_file** %2, align 8, !dbg !1385
  br label %61, !dbg !1385

; <label>:25:                                     ; preds = %17, %10
  %26 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1386
  %27 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %26, i32 0, i32 10, !dbg !1388
  %28 = load %struct._list*, %struct._list** %27, align 8, !dbg !1388
  %29 = icmp ne %struct._list* %28, null, !dbg !1389
  br i1 %29, label %31, label %30, !dbg !1390

; <label>:30:                                     ; preds = %25
  br label %37, !dbg !1391

; <label>:31:                                     ; preds = %25
  %32 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1393
  %33 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %32, i32 0, i32 10, !dbg !1395
  %34 = load %struct._list*, %struct._list** %33, align 8, !dbg !1395
  %35 = getelementptr inbounds %struct._list, %struct._list* %34, i32 0, i32 0, !dbg !1396
  %36 = load %struct._element*, %struct._element** %35, align 8, !dbg !1396
  br label %37, !dbg !1397

; <label>:37:                                     ; preds = %31, %30
  %38 = phi %struct._element* [ null, %30 ], [ %36, %31 ], !dbg !1398
  store %struct._element* %38, %struct._element** %4, align 8, !dbg !1400
  br label %39, !dbg !1401

; <label>:39:                                     ; preds = %56, %37
  %40 = load %struct._element*, %struct._element** %4, align 8, !dbg !1402
  %41 = icmp ne %struct._element* %40, null, !dbg !1405
  br i1 %41, label %42, label %60, !dbg !1405

; <label>:42:                                     ; preds = %39
  %43 = load %struct._element*, %struct._element** %4, align 8, !dbg !1406
  %44 = getelementptr inbounds %struct._element, %struct._element* %43, i32 0, i32 2, !dbg !1408
  %45 = load i8*, i8** %44, align 8, !dbg !1408
  %46 = bitcast i8* %45 to %struct._vrrp_file*, !dbg !1409
  store %struct._vrrp_file* %46, %struct._vrrp_file** %5, align 8, !dbg !1410
  %47 = load %struct._vrrp_file*, %struct._vrrp_file** %5, align 8, !dbg !1411
  %48 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %47, i32 0, i32 0, !dbg !1413
  %49 = load i8*, i8** %48, align 8, !dbg !1413
  %50 = load i8*, i8** %3, align 8, !dbg !1414
  %51 = call i32 @strcmp(i8* %49, i8* %50) #7, !dbg !1415
  %52 = icmp ne i32 %51, 0, !dbg !1415
  br i1 %52, label %55, label %53, !dbg !1416

; <label>:53:                                     ; preds = %42
  %54 = load %struct._vrrp_file*, %struct._vrrp_file** %5, align 8, !dbg !1417
  store %struct._vrrp_file* %54, %struct._vrrp_file** %2, align 8, !dbg !1418
  br label %61, !dbg !1418

; <label>:55:                                     ; preds = %42
  br label %56, !dbg !1419

; <label>:56:                                     ; preds = %55
  %57 = load %struct._element*, %struct._element** %4, align 8, !dbg !1420
  %58 = getelementptr inbounds %struct._element, %struct._element* %57, i32 0, i32 0, !dbg !1422
  %59 = load %struct._element*, %struct._element** %58, align 8, !dbg !1422
  store %struct._element* %59, %struct._element** %4, align 8, !dbg !1423
  br label %39, !dbg !1424, !llvm.loop !1425

; <label>:60:                                     ; preds = %39
  store %struct._vrrp_file* null, %struct._vrrp_file** %2, align 8, !dbg !1427
  br label %61, !dbg !1427

; <label>:61:                                     ; preds = %60, %53, %24
  %62 = load %struct._vrrp_file*, %struct._vrrp_file** %2, align 8, !dbg !1428
  ret %struct._vrrp_file* %62, !dbg !1428
}

; Function Attrs: nounwind uwtable
define void @dump_track_file(%struct._IO_FILE*, i8*) #0 !dbg !1429 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._tracked_file*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !1430, metadata !450), !dbg !1431
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1432, metadata !450), !dbg !1433
  call void @llvm.dbg.declare(metadata %struct._tracked_file** %5, metadata !1434, metadata !450), !dbg !1435
  %6 = load i8*, i8** %4, align 8, !dbg !1436
  %7 = bitcast i8* %6 to %struct._tracked_file*, !dbg !1436
  store %struct._tracked_file* %7, %struct._tracked_file** %5, align 8, !dbg !1435
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1437
  %9 = load %struct._tracked_file*, %struct._tracked_file** %5, align 8, !dbg !1438
  %10 = getelementptr inbounds %struct._tracked_file, %struct._tracked_file* %9, i32 0, i32 0, !dbg !1439
  %11 = load %struct._vrrp_file*, %struct._vrrp_file** %10, align 8, !dbg !1439
  %12 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %11, i32 0, i32 0, !dbg !1440
  %13 = load i8*, i8** %12, align 8, !dbg !1440
  %14 = load %struct._tracked_file*, %struct._tracked_file** %5, align 8, !dbg !1441
  %15 = getelementptr inbounds %struct._tracked_file, %struct._tracked_file* %14, i32 0, i32 1, !dbg !1442
  %16 = load i32, i32* %15, align 8, !dbg !1442
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0), i8* %13, i32 %16), !dbg !1443
  ret void, !dbg !1444
}

; Function Attrs: nounwind uwtable
define void @free_track_file(i8*) #0 !dbg !1445 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1446, metadata !450), !dbg !1447
  %3 = load i8*, i8** %2, align 8, !dbg !1448
  call void @free(i8* %3) #6, !dbg !1449
  store i8* null, i8** %2, align 8, !dbg !1450
  ret void, !dbg !1451
}

; Function Attrs: nounwind uwtable
define void @alloc_track_file(%struct._vrrp_t*, %struct._vector*) #0 !dbg !1452 {
  %3 = alloca %struct._vrrp_t*, align 8
  %4 = alloca %struct._vector*, align 8
  %5 = alloca %struct._vrrp_file*, align 8
  %6 = alloca %struct._tracked_file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct._tracked_file*, align 8
  %9 = alloca %struct._element*, align 8
  %10 = alloca i32, align 4
  store %struct._vrrp_t* %0, %struct._vrrp_t** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !1453, metadata !450), !dbg !1454
  store %struct._vector* %1, %struct._vector** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %4, metadata !1455, metadata !450), !dbg !1456
  call void @llvm.dbg.declare(metadata %struct._vrrp_file** %5, metadata !1457, metadata !450), !dbg !1458
  call void @llvm.dbg.declare(metadata %struct._tracked_file** %6, metadata !1459, metadata !450), !dbg !1460
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1461, metadata !450), !dbg !1462
  %11 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !1463
  %12 = call i8* @strvec_slot(%struct._vector* %11, i64 0), !dbg !1464
  store i8* %12, i8** %7, align 8, !dbg !1462
  call void @llvm.dbg.declare(metadata %struct._tracked_file** %8, metadata !1465, metadata !450), !dbg !1466
  call void @llvm.dbg.declare(metadata %struct._element** %9, metadata !1467, metadata !450), !dbg !1468
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1469, metadata !450), !dbg !1470
  %13 = load i8*, i8** %7, align 8, !dbg !1471
  %14 = call %struct._vrrp_file* @find_tracked_file_by_name(i8* %13), !dbg !1472
  store %struct._vrrp_file* %14, %struct._vrrp_file** %5, align 8, !dbg !1473
  %15 = load %struct._vrrp_file*, %struct._vrrp_file** %5, align 8, !dbg !1474
  %16 = icmp ne %struct._vrrp_file* %15, null, !dbg !1474
  br i1 %16, label %22, label %17, !dbg !1476

; <label>:17:                                     ; preds = %2
  %18 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1477
  %19 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %18, i32 0, i32 1, !dbg !1479
  %20 = load i8*, i8** %19, align 8, !dbg !1479
  %21 = load i8*, i8** %7, align 8, !dbg !1480
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i32 0, i32 0), i8* %20, i8* %21), !dbg !1481
  br label %135, !dbg !1482

; <label>:22:                                     ; preds = %2
  %23 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1483
  %24 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %23, i32 0, i32 13, !dbg !1485
  %25 = load %struct._list*, %struct._list** %24, align 8, !dbg !1485
  %26 = icmp eq %struct._list* %25, null, !dbg !1486
  br i1 %26, label %79, label %27, !dbg !1487

; <label>:27:                                     ; preds = %22
  %28 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1488
  %29 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %28, i32 0, i32 13, !dbg !1490
  %30 = load %struct._list*, %struct._list** %29, align 8, !dbg !1490
  %31 = getelementptr inbounds %struct._list, %struct._list* %30, i32 0, i32 0, !dbg !1491
  %32 = load %struct._element*, %struct._element** %31, align 8, !dbg !1491
  %33 = icmp eq %struct._element* %32, null, !dbg !1492
  br i1 %33, label %34, label %41, !dbg !1493

; <label>:34:                                     ; preds = %27
  %35 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1494
  %36 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %35, i32 0, i32 13, !dbg !1496
  %37 = load %struct._list*, %struct._list** %36, align 8, !dbg !1496
  %38 = getelementptr inbounds %struct._list, %struct._list* %37, i32 0, i32 1, !dbg !1497
  %39 = load %struct._element*, %struct._element** %38, align 8, !dbg !1497
  %40 = icmp eq %struct._element* %39, null, !dbg !1498
  br i1 %40, label %79, label %41, !dbg !1499

; <label>:41:                                     ; preds = %34, %27
  %42 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1500
  %43 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %42, i32 0, i32 13, !dbg !1503
  %44 = load %struct._list*, %struct._list** %43, align 8, !dbg !1503
  %45 = icmp ne %struct._list* %44, null, !dbg !1504
  br i1 %45, label %47, label %46, !dbg !1505

; <label>:46:                                     ; preds = %41
  br label %53, !dbg !1506

; <label>:47:                                     ; preds = %41
  %48 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1508
  %49 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %48, i32 0, i32 13, !dbg !1510
  %50 = load %struct._list*, %struct._list** %49, align 8, !dbg !1510
  %51 = getelementptr inbounds %struct._list, %struct._list* %50, i32 0, i32 0, !dbg !1511
  %52 = load %struct._element*, %struct._element** %51, align 8, !dbg !1511
  br label %53, !dbg !1512

; <label>:53:                                     ; preds = %47, %46
  %54 = phi %struct._element* [ null, %46 ], [ %52, %47 ], !dbg !1513
  store %struct._element* %54, %struct._element** %9, align 8, !dbg !1515
  br label %55, !dbg !1516

; <label>:55:                                     ; preds = %74, %53
  %56 = load %struct._element*, %struct._element** %9, align 8, !dbg !1517
  %57 = icmp ne %struct._element* %56, null, !dbg !1520
  br i1 %57, label %58, label %78, !dbg !1520

; <label>:58:                                     ; preds = %55
  %59 = load %struct._element*, %struct._element** %9, align 8, !dbg !1521
  %60 = getelementptr inbounds %struct._element, %struct._element* %59, i32 0, i32 2, !dbg !1523
  %61 = load i8*, i8** %60, align 8, !dbg !1523
  %62 = bitcast i8* %61 to %struct._tracked_file*, !dbg !1524
  store %struct._tracked_file* %62, %struct._tracked_file** %8, align 8, !dbg !1525
  %63 = load %struct._tracked_file*, %struct._tracked_file** %8, align 8, !dbg !1526
  %64 = getelementptr inbounds %struct._tracked_file, %struct._tracked_file* %63, i32 0, i32 0, !dbg !1528
  %65 = load %struct._vrrp_file*, %struct._vrrp_file** %64, align 8, !dbg !1528
  %66 = load %struct._vrrp_file*, %struct._vrrp_file** %5, align 8, !dbg !1529
  %67 = icmp eq %struct._vrrp_file* %65, %66, !dbg !1530
  br i1 %67, label %68, label %73, !dbg !1531

; <label>:68:                                     ; preds = %58
  %69 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1532
  %70 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %69, i32 0, i32 1, !dbg !1534
  %71 = load i8*, i8** %70, align 8, !dbg !1534
  %72 = load i8*, i8** %7, align 8, !dbg !1535
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i32 0, i32 0), i8* %71, i8* %72), !dbg !1536
  br label %135, !dbg !1537

; <label>:73:                                     ; preds = %58
  br label %74, !dbg !1538

; <label>:74:                                     ; preds = %73
  %75 = load %struct._element*, %struct._element** %9, align 8, !dbg !1539
  %76 = getelementptr inbounds %struct._element, %struct._element* %75, i32 0, i32 0, !dbg !1541
  %77 = load %struct._element*, %struct._element** %76, align 8, !dbg !1541
  store %struct._element* %77, %struct._element** %9, align 8, !dbg !1542
  br label %55, !dbg !1543, !llvm.loop !1544

; <label>:78:                                     ; preds = %55
  br label %79, !dbg !1546

; <label>:79:                                     ; preds = %78, %34, %22
  %80 = load %struct._vrrp_file*, %struct._vrrp_file** %5, align 8, !dbg !1547
  %81 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %80, i32 0, i32 3, !dbg !1548
  %82 = load i32, i32* %81, align 8, !dbg !1548
  store i32 %82, i32* %10, align 4, !dbg !1549
  %83 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !1550
  %84 = getelementptr inbounds %struct._vector, %struct._vector* %83, i32 0, i32 1, !dbg !1552
  %85 = load i32, i32* %84, align 4, !dbg !1552
  %86 = icmp uge i32 %85, 2, !dbg !1553
  br i1 %86, label %87, label %121, !dbg !1554

; <label>:87:                                     ; preds = %79
  %88 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !1555
  %89 = call i8* @strvec_slot(%struct._vector* %88, i64 1), !dbg !1558
  %90 = call i32 @strcmp(i8* %89, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0)) #7, !dbg !1559
  %91 = icmp ne i32 %90, 0, !dbg !1561
  br i1 %91, label %92, label %98, !dbg !1562

; <label>:92:                                     ; preds = %87
  %93 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1563
  %94 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %93, i32 0, i32 1, !dbg !1565
  %95 = load i8*, i8** %94, align 8, !dbg !1565
  %96 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !1566
  %97 = call i8* @strvec_slot(%struct._vector* %96, i64 1), !dbg !1567
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i32 0, i32 0), i8* %95, i8* %97), !dbg !1568
  br label %135, !dbg !1569

; <label>:98:                                     ; preds = %87
  %99 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !1570
  %100 = getelementptr inbounds %struct._vector, %struct._vector* %99, i32 0, i32 1, !dbg !1572
  %101 = load i32, i32* %100, align 4, !dbg !1572
  %102 = icmp uge i32 %101, 3, !dbg !1573
  br i1 %102, label %103, label %115, !dbg !1574

; <label>:103:                                    ; preds = %98
  %104 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !1575
  %105 = call zeroext i1 @read_int_strvec(%struct._vector* %104, i64 2, i32* %10, i32 -254, i32 254, i1 zeroext true), !dbg !1578
  br i1 %105, label %114, label %106, !dbg !1579

; <label>:106:                                    ; preds = %103
  %107 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1580
  %108 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %107, i32 0, i32 1, !dbg !1582
  %109 = load i8*, i8** %108, align 8, !dbg !1582
  %110 = load i8*, i8** %7, align 8, !dbg !1583
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.14, i32 0, i32 0), i8* %109, i8* %110), !dbg !1584
  %111 = load %struct._vrrp_file*, %struct._vrrp_file** %5, align 8, !dbg !1585
  %112 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %111, i32 0, i32 3, !dbg !1586
  %113 = load i32, i32* %112, align 8, !dbg !1586
  store i32 %113, i32* %10, align 4, !dbg !1587
  br label %114, !dbg !1588

; <label>:114:                                    ; preds = %106, %103
  br label %120, !dbg !1589

; <label>:115:                                    ; preds = %98
  %116 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1590
  %117 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %116, i32 0, i32 1, !dbg !1592
  %118 = load i8*, i8** %117, align 8, !dbg !1592
  %119 = load i8*, i8** %7, align 8, !dbg !1593
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.15, i32 0, i32 0), i8* %118, i8* %119), !dbg !1594
  br label %135, !dbg !1595

; <label>:120:                                    ; preds = %114
  br label %121, !dbg !1596

; <label>:121:                                    ; preds = %120, %79
  %122 = call i8* @zalloc(i64 16), !dbg !1597
  %123 = bitcast i8* %122 to %struct._tracked_file*, !dbg !1598
  store %struct._tracked_file* %123, %struct._tracked_file** %6, align 8, !dbg !1599
  %124 = load %struct._vrrp_file*, %struct._vrrp_file** %5, align 8, !dbg !1600
  %125 = load %struct._tracked_file*, %struct._tracked_file** %6, align 8, !dbg !1601
  %126 = getelementptr inbounds %struct._tracked_file, %struct._tracked_file* %125, i32 0, i32 0, !dbg !1602
  store %struct._vrrp_file* %124, %struct._vrrp_file** %126, align 8, !dbg !1603
  %127 = load i32, i32* %10, align 4, !dbg !1604
  %128 = load %struct._tracked_file*, %struct._tracked_file** %6, align 8, !dbg !1605
  %129 = getelementptr inbounds %struct._tracked_file, %struct._tracked_file* %128, i32 0, i32 1, !dbg !1606
  store i32 %127, i32* %129, align 8, !dbg !1607
  %130 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1608
  %131 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %130, i32 0, i32 13, !dbg !1609
  %132 = load %struct._list*, %struct._list** %131, align 8, !dbg !1609
  %133 = load %struct._tracked_file*, %struct._tracked_file** %6, align 8, !dbg !1610
  %134 = bitcast %struct._tracked_file* %133 to i8*, !dbg !1610
  call void @list_add(%struct._list* %132, i8* %134), !dbg !1611
  br label %135, !dbg !1612

; <label>:135:                                    ; preds = %121, %115, %92, %68, %17
  ret void, !dbg !1613
}

; Function Attrs: nounwind uwtable
define void @alloc_group_track_file(%struct._vrrp_sgroup*, %struct._vector*) #0 !dbg !1615 {
  %3 = alloca %struct._vrrp_sgroup*, align 8
  %4 = alloca %struct._vector*, align 8
  %5 = alloca %struct._vrrp_file*, align 8
  %6 = alloca %struct._tracked_file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct._tracked_file*, align 8
  %9 = alloca %struct._element*, align 8
  %10 = alloca i32, align 4
  store %struct._vrrp_sgroup* %0, %struct._vrrp_sgroup** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._vrrp_sgroup** %3, metadata !1616, metadata !450), !dbg !1617
  store %struct._vector* %1, %struct._vector** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %4, metadata !1618, metadata !450), !dbg !1619
  call void @llvm.dbg.declare(metadata %struct._vrrp_file** %5, metadata !1620, metadata !450), !dbg !1621
  call void @llvm.dbg.declare(metadata %struct._tracked_file** %6, metadata !1622, metadata !450), !dbg !1623
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1624, metadata !450), !dbg !1625
  %11 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !1626
  %12 = call i8* @strvec_slot(%struct._vector* %11, i64 0), !dbg !1627
  store i8* %12, i8** %7, align 8, !dbg !1625
  call void @llvm.dbg.declare(metadata %struct._tracked_file** %8, metadata !1628, metadata !450), !dbg !1629
  call void @llvm.dbg.declare(metadata %struct._element** %9, metadata !1630, metadata !450), !dbg !1631
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1632, metadata !450), !dbg !1633
  %13 = load i8*, i8** %7, align 8, !dbg !1634
  %14 = call %struct._vrrp_file* @find_tracked_file_by_name(i8* %13), !dbg !1635
  store %struct._vrrp_file* %14, %struct._vrrp_file** %5, align 8, !dbg !1636
  %15 = load %struct._vrrp_file*, %struct._vrrp_file** %5, align 8, !dbg !1637
  %16 = icmp ne %struct._vrrp_file* %15, null, !dbg !1637
  br i1 %16, label %22, label %17, !dbg !1639

; <label>:17:                                     ; preds = %2
  %18 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !1640
  %19 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %18, i32 0, i32 0, !dbg !1642
  %20 = load i8*, i8** %19, align 8, !dbg !1642
  %21 = load i8*, i8** %7, align 8, !dbg !1643
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i32 0, i32 0), i8* %20, i8* %21), !dbg !1644
  br label %135, !dbg !1645

; <label>:22:                                     ; preds = %2
  %23 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !1646
  %24 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %23, i32 0, i32 9, !dbg !1648
  %25 = load %struct._list*, %struct._list** %24, align 8, !dbg !1648
  %26 = icmp eq %struct._list* %25, null, !dbg !1649
  br i1 %26, label %79, label %27, !dbg !1650

; <label>:27:                                     ; preds = %22
  %28 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !1651
  %29 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %28, i32 0, i32 9, !dbg !1653
  %30 = load %struct._list*, %struct._list** %29, align 8, !dbg !1653
  %31 = getelementptr inbounds %struct._list, %struct._list* %30, i32 0, i32 0, !dbg !1654
  %32 = load %struct._element*, %struct._element** %31, align 8, !dbg !1654
  %33 = icmp eq %struct._element* %32, null, !dbg !1655
  br i1 %33, label %34, label %41, !dbg !1656

; <label>:34:                                     ; preds = %27
  %35 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !1657
  %36 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %35, i32 0, i32 9, !dbg !1659
  %37 = load %struct._list*, %struct._list** %36, align 8, !dbg !1659
  %38 = getelementptr inbounds %struct._list, %struct._list* %37, i32 0, i32 1, !dbg !1660
  %39 = load %struct._element*, %struct._element** %38, align 8, !dbg !1660
  %40 = icmp eq %struct._element* %39, null, !dbg !1661
  br i1 %40, label %79, label %41, !dbg !1662

; <label>:41:                                     ; preds = %34, %27
  %42 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !1663
  %43 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %42, i32 0, i32 9, !dbg !1666
  %44 = load %struct._list*, %struct._list** %43, align 8, !dbg !1666
  %45 = icmp ne %struct._list* %44, null, !dbg !1667
  br i1 %45, label %47, label %46, !dbg !1668

; <label>:46:                                     ; preds = %41
  br label %53, !dbg !1669

; <label>:47:                                     ; preds = %41
  %48 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !1671
  %49 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %48, i32 0, i32 9, !dbg !1673
  %50 = load %struct._list*, %struct._list** %49, align 8, !dbg !1673
  %51 = getelementptr inbounds %struct._list, %struct._list* %50, i32 0, i32 0, !dbg !1674
  %52 = load %struct._element*, %struct._element** %51, align 8, !dbg !1674
  br label %53, !dbg !1675

; <label>:53:                                     ; preds = %47, %46
  %54 = phi %struct._element* [ null, %46 ], [ %52, %47 ], !dbg !1676
  store %struct._element* %54, %struct._element** %9, align 8, !dbg !1678
  br label %55, !dbg !1679

; <label>:55:                                     ; preds = %74, %53
  %56 = load %struct._element*, %struct._element** %9, align 8, !dbg !1680
  %57 = icmp ne %struct._element* %56, null, !dbg !1683
  br i1 %57, label %58, label %78, !dbg !1683

; <label>:58:                                     ; preds = %55
  %59 = load %struct._element*, %struct._element** %9, align 8, !dbg !1684
  %60 = getelementptr inbounds %struct._element, %struct._element* %59, i32 0, i32 2, !dbg !1686
  %61 = load i8*, i8** %60, align 8, !dbg !1686
  %62 = bitcast i8* %61 to %struct._tracked_file*, !dbg !1687
  store %struct._tracked_file* %62, %struct._tracked_file** %8, align 8, !dbg !1688
  %63 = load %struct._tracked_file*, %struct._tracked_file** %8, align 8, !dbg !1689
  %64 = getelementptr inbounds %struct._tracked_file, %struct._tracked_file* %63, i32 0, i32 0, !dbg !1691
  %65 = load %struct._vrrp_file*, %struct._vrrp_file** %64, align 8, !dbg !1691
  %66 = load %struct._vrrp_file*, %struct._vrrp_file** %5, align 8, !dbg !1692
  %67 = icmp eq %struct._vrrp_file* %65, %66, !dbg !1693
  br i1 %67, label %68, label %73, !dbg !1694

; <label>:68:                                     ; preds = %58
  %69 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !1695
  %70 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %69, i32 0, i32 0, !dbg !1697
  %71 = load i8*, i8** %70, align 8, !dbg !1697
  %72 = load i8*, i8** %7, align 8, !dbg !1698
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i32 0, i32 0), i8* %71, i8* %72), !dbg !1699
  br label %135, !dbg !1700

; <label>:73:                                     ; preds = %58
  br label %74, !dbg !1701

; <label>:74:                                     ; preds = %73
  %75 = load %struct._element*, %struct._element** %9, align 8, !dbg !1702
  %76 = getelementptr inbounds %struct._element, %struct._element* %75, i32 0, i32 0, !dbg !1704
  %77 = load %struct._element*, %struct._element** %76, align 8, !dbg !1704
  store %struct._element* %77, %struct._element** %9, align 8, !dbg !1705
  br label %55, !dbg !1706, !llvm.loop !1707

; <label>:78:                                     ; preds = %55
  br label %79, !dbg !1709

; <label>:79:                                     ; preds = %78, %34, %22
  %80 = load %struct._vrrp_file*, %struct._vrrp_file** %5, align 8, !dbg !1710
  %81 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %80, i32 0, i32 3, !dbg !1711
  %82 = load i32, i32* %81, align 8, !dbg !1711
  store i32 %82, i32* %10, align 4, !dbg !1712
  %83 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !1713
  %84 = getelementptr inbounds %struct._vector, %struct._vector* %83, i32 0, i32 1, !dbg !1715
  %85 = load i32, i32* %84, align 4, !dbg !1715
  %86 = icmp uge i32 %85, 2, !dbg !1716
  br i1 %86, label %87, label %121, !dbg !1717

; <label>:87:                                     ; preds = %79
  %88 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !1718
  %89 = call i8* @strvec_slot(%struct._vector* %88, i64 1), !dbg !1721
  %90 = call i32 @strcmp(i8* %89, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0)) #7, !dbg !1722
  %91 = icmp ne i32 %90, 0, !dbg !1724
  br i1 %91, label %92, label %98, !dbg !1725

; <label>:92:                                     ; preds = %87
  %93 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !1726
  %94 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %93, i32 0, i32 0, !dbg !1728
  %95 = load i8*, i8** %94, align 8, !dbg !1728
  %96 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !1729
  %97 = call i8* @strvec_slot(%struct._vector* %96, i64 1), !dbg !1730
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i32 0, i32 0), i8* %95, i8* %97), !dbg !1731
  br label %135, !dbg !1732

; <label>:98:                                     ; preds = %87
  %99 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !1733
  %100 = getelementptr inbounds %struct._vector, %struct._vector* %99, i32 0, i32 1, !dbg !1735
  %101 = load i32, i32* %100, align 4, !dbg !1735
  %102 = icmp uge i32 %101, 3, !dbg !1736
  br i1 %102, label %103, label %115, !dbg !1737

; <label>:103:                                    ; preds = %98
  %104 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !1738
  %105 = call zeroext i1 @read_int_strvec(%struct._vector* %104, i64 2, i32* %10, i32 -254, i32 254, i1 zeroext true), !dbg !1741
  br i1 %105, label %114, label %106, !dbg !1742

; <label>:106:                                    ; preds = %103
  %107 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !1743
  %108 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %107, i32 0, i32 0, !dbg !1745
  %109 = load i8*, i8** %108, align 8, !dbg !1745
  %110 = load i8*, i8** %7, align 8, !dbg !1746
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.14, i32 0, i32 0), i8* %109, i8* %110), !dbg !1747
  %111 = load %struct._vrrp_file*, %struct._vrrp_file** %5, align 8, !dbg !1748
  %112 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %111, i32 0, i32 3, !dbg !1749
  %113 = load i32, i32* %112, align 8, !dbg !1749
  store i32 %113, i32* %10, align 4, !dbg !1750
  br label %114, !dbg !1751

; <label>:114:                                    ; preds = %106, %103
  br label %120, !dbg !1752

; <label>:115:                                    ; preds = %98
  %116 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !1753
  %117 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %116, i32 0, i32 0, !dbg !1755
  %118 = load i8*, i8** %117, align 8, !dbg !1755
  %119 = load i8*, i8** %7, align 8, !dbg !1756
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.15, i32 0, i32 0), i8* %118, i8* %119), !dbg !1757
  br label %135, !dbg !1758

; <label>:120:                                    ; preds = %114
  br label %121, !dbg !1759

; <label>:121:                                    ; preds = %120, %79
  %122 = call i8* @zalloc(i64 16), !dbg !1760
  %123 = bitcast i8* %122 to %struct._tracked_file*, !dbg !1761
  store %struct._tracked_file* %123, %struct._tracked_file** %6, align 8, !dbg !1762
  %124 = load %struct._vrrp_file*, %struct._vrrp_file** %5, align 8, !dbg !1763
  %125 = load %struct._tracked_file*, %struct._tracked_file** %6, align 8, !dbg !1764
  %126 = getelementptr inbounds %struct._tracked_file, %struct._tracked_file* %125, i32 0, i32 0, !dbg !1765
  store %struct._vrrp_file* %124, %struct._vrrp_file** %126, align 8, !dbg !1766
  %127 = load i32, i32* %10, align 4, !dbg !1767
  %128 = load %struct._tracked_file*, %struct._tracked_file** %6, align 8, !dbg !1768
  %129 = getelementptr inbounds %struct._tracked_file, %struct._tracked_file* %128, i32 0, i32 1, !dbg !1769
  store i32 %127, i32* %129, align 8, !dbg !1770
  %130 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !1771
  %131 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %130, i32 0, i32 9, !dbg !1772
  %132 = load %struct._list*, %struct._list** %131, align 8, !dbg !1772
  %133 = load %struct._tracked_file*, %struct._tracked_file** %6, align 8, !dbg !1773
  %134 = bitcast %struct._tracked_file* %133 to i8*, !dbg !1773
  call void @list_add(%struct._list* %132, i8* %134), !dbg !1774
  br label %135, !dbg !1775

; <label>:135:                                    ; preds = %121, %115, %92, %68, %17
  ret void, !dbg !1776
}

; Function Attrs: nounwind uwtable
define void @down_instance(%struct._vrrp_t*) #0 !dbg !1778 {
  %2 = alloca %struct._vrrp_t*, align 8
  store %struct._vrrp_t* %0, %struct._vrrp_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %2, metadata !1781, metadata !450), !dbg !1782
  %3 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !1783
  %4 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %3, i32 0, i32 14, !dbg !1785
  %5 = load i32, i32* %4, align 8, !dbg !1786
  %6 = add i32 %5, 1, !dbg !1786
  store i32 %6, i32* %4, align 8, !dbg !1786
  %7 = icmp eq i32 %5, 0, !dbg !1787
  br i1 %7, label %13, label %8, !dbg !1788

; <label>:8:                                      ; preds = %1
  %9 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !1789
  %10 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %9, i32 0, i32 55, !dbg !1791
  %11 = load i32, i32* %10, align 8, !dbg !1791
  %12 = icmp eq i32 %11, 0, !dbg !1792
  br i1 %12, label %13, label %40, !dbg !1793

; <label>:13:                                     ; preds = %8, %1
  %14 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !1794
  %15 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %14, i32 0, i32 56, !dbg !1796
  store i32 3, i32* %15, align 4, !dbg !1797
  %16 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !1798
  %17 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %16, i32 0, i32 55, !dbg !1800
  %18 = load i32, i32* %17, align 8, !dbg !1800
  %19 = icmp eq i32 %18, 2, !dbg !1801
  br i1 %19, label %20, label %22, !dbg !1802

; <label>:20:                                     ; preds = %13
  %21 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !1803
  call void @vrrp_state_leave_master(%struct._vrrp_t* %21, i1 zeroext true), !dbg !1804
  br label %24, !dbg !1804

; <label>:22:                                     ; preds = %13
  %23 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !1805
  call void @vrrp_state_leave_fault(%struct._vrrp_t* %23), !dbg !1806
  br label %24

; <label>:24:                                     ; preds = %22, %20
  %25 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !1807
  %26 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %25, i32 0, i32 2, !dbg !1809
  %27 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %26, align 8, !dbg !1809
  %28 = icmp ne %struct._vrrp_sgroup* %27, null, !dbg !1807
  br i1 %28, label %29, label %39, !dbg !1810

; <label>:29:                                     ; preds = %24
  %30 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !1811
  %31 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %30, i32 0, i32 2, !dbg !1813
  %32 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %31, align 8, !dbg !1813
  %33 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %32, i32 0, i32 3, !dbg !1814
  %34 = load i32, i32* %33, align 8, !dbg !1815
  %35 = add i32 %34, 1, !dbg !1815
  store i32 %35, i32* %33, align 8, !dbg !1815
  %36 = icmp eq i32 %34, 0, !dbg !1816
  br i1 %36, label %37, label %39, !dbg !1817

; <label>:37:                                     ; preds = %29
  %38 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !1818
  call void @vrrp_sync_fault(%struct._vrrp_t* %38), !dbg !1819
  br label %39, !dbg !1819

; <label>:39:                                     ; preds = %37, %29, %24
  br label %40, !dbg !1820

; <label>:40:                                     ; preds = %39, %8
  ret void, !dbg !1821
}

declare void @vrrp_state_leave_master(%struct._vrrp_t*, i1 zeroext) #2

declare void @vrrp_state_leave_fault(%struct._vrrp_t*) #2

declare void @vrrp_sync_fault(%struct._vrrp_t*) #2

; Function Attrs: nounwind uwtable
define void @vrrp_set_effective_priority(%struct._vrrp_t*) #0 !dbg !1822 {
  %2 = alloca %struct._vrrp_t*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store %struct._vrrp_t* %0, %struct._vrrp_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %2, metadata !1823, metadata !450), !dbg !1824
  call void @llvm.dbg.declare(metadata i8* %3, metadata !1825, metadata !450), !dbg !1826
  call void @llvm.dbg.declare(metadata i8* %4, metadata !1827, metadata !450), !dbg !1828
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1829, metadata !450), !dbg !1830
  %6 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !1831
  %7 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %6, i32 0, i32 37, !dbg !1833
  %8 = load i8, i8* %7, align 1, !dbg !1833
  %9 = zext i8 %8 to i32, !dbg !1831
  %10 = icmp eq i32 %9, 255, !dbg !1834
  br i1 %10, label %11, label %12, !dbg !1835

; <label>:11:                                     ; preds = %1
  br label %111, !dbg !1836

; <label>:12:                                     ; preds = %1
  %13 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !1837
  %14 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %13, i32 0, i32 39, !dbg !1839
  %15 = load i32, i32* %14, align 8, !dbg !1839
  %16 = icmp slt i32 %15, 1, !dbg !1840
  br i1 %16, label %17, label %18, !dbg !1841

; <label>:17:                                     ; preds = %12
  store i8 1, i8* %3, align 1, !dbg !1842
  br label %30, !dbg !1843

; <label>:18:                                     ; preds = %12
  %19 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !1844
  %20 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %19, i32 0, i32 39, !dbg !1846
  %21 = load i32, i32* %20, align 8, !dbg !1846
  %22 = icmp sge i32 %21, 255, !dbg !1847
  br i1 %22, label %23, label %24, !dbg !1848

; <label>:23:                                     ; preds = %18
  store i8 -2, i8* %3, align 1, !dbg !1849
  br label %29, !dbg !1850

; <label>:24:                                     ; preds = %18
  %25 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !1851
  %26 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %25, i32 0, i32 39, !dbg !1852
  %27 = load i32, i32* %26, align 8, !dbg !1852
  %28 = trunc i32 %27 to i8, !dbg !1853
  store i8 %28, i8* %3, align 1, !dbg !1854
  br label %29

; <label>:29:                                     ; preds = %24, %23
  br label %30

; <label>:30:                                     ; preds = %29, %17
  %31 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !1855
  %32 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %31, i32 0, i32 38, !dbg !1857
  %33 = load i8, i8* %32, align 2, !dbg !1857
  %34 = zext i8 %33 to i32, !dbg !1855
  %35 = load i8, i8* %3, align 1, !dbg !1858
  %36 = zext i8 %35 to i32, !dbg !1858
  %37 = icmp eq i32 %34, %36, !dbg !1859
  br i1 %37, label %38, label %39, !dbg !1860

; <label>:38:                                     ; preds = %30
  br label %111, !dbg !1861

; <label>:39:                                     ; preds = %30
  %40 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !1862
  %41 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %40, i32 0, i32 1, !dbg !1863
  %42 = load i8*, i8** %41, align 8, !dbg !1863
  %43 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !1864
  %44 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %43, i32 0, i32 38, !dbg !1865
  %45 = load i8, i8* %44, align 2, !dbg !1865
  %46 = zext i8 %45 to i32, !dbg !1864
  %47 = load i8, i8* %3, align 1, !dbg !1866
  %48 = zext i8 %47 to i32, !dbg !1866
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.16, i32 0, i32 0), i8* %42, i32 %46, i32 %48), !dbg !1867
  %49 = load i8, i8* %3, align 1, !dbg !1868
  %50 = zext i8 %49 to i32, !dbg !1868
  %51 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !1869
  %52 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %51, i32 0, i32 38, !dbg !1870
  %53 = load i8, i8* %52, align 2, !dbg !1870
  %54 = zext i8 %53 to i32, !dbg !1869
  %55 = icmp sgt i32 %50, %54, !dbg !1871
  %56 = zext i1 %55 to i8, !dbg !1872
  store i8 %56, i8* %4, align 1, !dbg !1872
  %57 = load i8, i8* %3, align 1, !dbg !1873
  %58 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !1874
  %59 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %58, i32 0, i32 38, !dbg !1875
  store i8 %57, i8* %59, align 2, !dbg !1876
  %60 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !1877
  %61 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %60, i32 0, i32 70, !dbg !1878
  %62 = load i32, i32* %61, align 8, !dbg !1878
  store i32 %62, i32* %5, align 4, !dbg !1879
  %63 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !1880
  %64 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %63, i32 0, i32 48, !dbg !1881
  %65 = load i32, i32* %64, align 4, !dbg !1881
  %66 = mul i32 3, %65, !dbg !1882
  %67 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !1883
  %68 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %67, i32 0, i32 60, !dbg !1884
  %69 = load i32, i32* %68, align 4, !dbg !1884
  %70 = icmp eq i32 %69, 3, !dbg !1885
  br i1 %70, label %71, label %84, !dbg !1886

; <label>:71:                                     ; preds = %39
  %72 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !1887
  %73 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %72, i32 0, i32 38, !dbg !1889
  %74 = load i8, i8* %73, align 2, !dbg !1889
  %75 = zext i8 %74 to i32, !dbg !1890
  %76 = sub i32 256, %75, !dbg !1891
  %77 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !1892
  %78 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %77, i32 0, i32 48, !dbg !1893
  %79 = load i32, i32* %78, align 4, !dbg !1893
  %80 = udiv i32 %79, 10000, !dbg !1894
  %81 = mul i32 %76, %80, !dbg !1895
  %82 = mul i32 %81, 625, !dbg !1896
  %83 = udiv i32 %82, 16, !dbg !1897
  br label %92, !dbg !1898

; <label>:84:                                     ; preds = %39
  %85 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !1899
  %86 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %85, i32 0, i32 38, !dbg !1901
  %87 = load i8, i8* %86, align 2, !dbg !1901
  %88 = zext i8 %87 to i32, !dbg !1902
  %89 = sub i32 256, %88, !dbg !1903
  %90 = mul i32 %89, 1000000, !dbg !1904
  %91 = udiv i32 %90, 256, !dbg !1905
  br label %92, !dbg !1906

; <label>:92:                                     ; preds = %84, %71
  %93 = phi i32 [ %83, %71 ], [ %91, %84 ], !dbg !1907
  %94 = add i32 %66, %93, !dbg !1909
  %95 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !1910
  %96 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %95, i32 0, i32 70, !dbg !1911
  store i32 %94, i32* %96, align 8, !dbg !1912
  %97 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !1913
  %98 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %97, i32 0, i32 55, !dbg !1915
  %99 = load i32, i32* %98, align 8, !dbg !1915
  %100 = icmp eq i32 %99, 1, !dbg !1916
  br i1 %100, label %101, label %111, !dbg !1917

; <label>:101:                                    ; preds = %92
  %102 = load i8, i8* %4, align 1, !dbg !1918
  %103 = trunc i8 %102 to i1, !dbg !1918
  br i1 %103, label %104, label %111, !dbg !1920

; <label>:104:                                    ; preds = %101
  %105 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !1921
  %106 = load i32, i32* %5, align 4, !dbg !1922
  %107 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !1923
  %108 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %107, i32 0, i32 70, !dbg !1924
  %109 = load i32, i32* %108, align 8, !dbg !1924
  %110 = sub i32 %106, %109, !dbg !1925
  call void @vrrp_thread_requeue_read_relative(%struct._vrrp_t* %105, i32 %110), !dbg !1926
  br label %111, !dbg !1926

; <label>:111:                                    ; preds = %11, %38, %104, %101, %92
  ret void, !dbg !1927
}

declare void @log_message(i32, i8*, ...) #2

declare void @vrrp_thread_requeue_read_relative(%struct._vrrp_t*, i32) #2

; Function Attrs: nounwind uwtable
define void @update_script_priorities(%struct._vrrp_script*, i1 zeroext) #0 !dbg !1928 {
  %3 = alloca %struct._vrrp_script*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct._element*, align 8
  %6 = alloca %struct._vrrp_t*, align 8
  %7 = alloca %struct._tracking_vrrp*, align 8
  store %struct._vrrp_script* %0, %struct._vrrp_script** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._vrrp_script** %3, metadata !1931, metadata !450), !dbg !1932
  %8 = zext i1 %1 to i8
  store i8 %8, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !1933, metadata !450), !dbg !1934
  call void @llvm.dbg.declare(metadata %struct._element** %5, metadata !1935, metadata !450), !dbg !1936
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %6, metadata !1937, metadata !450), !dbg !1938
  call void @llvm.dbg.declare(metadata %struct._tracking_vrrp** %7, metadata !1939, metadata !450), !dbg !1949
  %9 = load %struct._vrrp_script*, %struct._vrrp_script** %3, align 8, !dbg !1950
  %10 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %9, i32 0, i32 8, !dbg !1952
  %11 = load %struct._list*, %struct._list** %10, align 8, !dbg !1952
  %12 = icmp eq %struct._list* %11, null, !dbg !1953
  br i1 %12, label %64, label %13, !dbg !1954

; <label>:13:                                     ; preds = %2
  %14 = load %struct._vrrp_script*, %struct._vrrp_script** %3, align 8, !dbg !1955
  %15 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %14, i32 0, i32 8, !dbg !1957
  %16 = load %struct._list*, %struct._list** %15, align 8, !dbg !1957
  %17 = getelementptr inbounds %struct._list, %struct._list* %16, i32 0, i32 0, !dbg !1958
  %18 = load %struct._element*, %struct._element** %17, align 8, !dbg !1958
  %19 = icmp eq %struct._element* %18, null, !dbg !1959
  br i1 %19, label %20, label %27, !dbg !1960

; <label>:20:                                     ; preds = %13
  %21 = load %struct._vrrp_script*, %struct._vrrp_script** %3, align 8, !dbg !1961
  %22 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %21, i32 0, i32 8, !dbg !1963
  %23 = load %struct._list*, %struct._list** %22, align 8, !dbg !1963
  %24 = getelementptr inbounds %struct._list, %struct._list* %23, i32 0, i32 1, !dbg !1964
  %25 = load %struct._element*, %struct._element** %24, align 8, !dbg !1964
  %26 = icmp eq %struct._element* %25, null, !dbg !1965
  br i1 %26, label %64, label %27, !dbg !1966

; <label>:27:                                     ; preds = %20, %13
  %28 = load %struct._vrrp_script*, %struct._vrrp_script** %3, align 8, !dbg !1967
  %29 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %28, i32 0, i32 8, !dbg !1970
  %30 = load %struct._list*, %struct._list** %29, align 8, !dbg !1970
  %31 = icmp ne %struct._list* %30, null, !dbg !1971
  br i1 %31, label %33, label %32, !dbg !1972

; <label>:32:                                     ; preds = %27
  br label %39, !dbg !1973

; <label>:33:                                     ; preds = %27
  %34 = load %struct._vrrp_script*, %struct._vrrp_script** %3, align 8, !dbg !1975
  %35 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %34, i32 0, i32 8, !dbg !1977
  %36 = load %struct._list*, %struct._list** %35, align 8, !dbg !1977
  %37 = getelementptr inbounds %struct._list, %struct._list* %36, i32 0, i32 0, !dbg !1978
  %38 = load %struct._element*, %struct._element** %37, align 8, !dbg !1978
  br label %39, !dbg !1979

; <label>:39:                                     ; preds = %33, %32
  %40 = phi %struct._element* [ null, %32 ], [ %38, %33 ], !dbg !1980
  store %struct._element* %40, %struct._element** %5, align 8, !dbg !1982
  br label %41, !dbg !1983

; <label>:41:                                     ; preds = %59, %39
  %42 = load %struct._element*, %struct._element** %5, align 8, !dbg !1984
  %43 = icmp ne %struct._element* %42, null, !dbg !1987
  br i1 %43, label %44, label %63, !dbg !1987

; <label>:44:                                     ; preds = %41
  %45 = load %struct._element*, %struct._element** %5, align 8, !dbg !1988
  %46 = getelementptr inbounds %struct._element, %struct._element* %45, i32 0, i32 2, !dbg !1990
  %47 = load i8*, i8** %46, align 8, !dbg !1990
  %48 = bitcast i8* %47 to %struct._tracking_vrrp*, !dbg !1991
  store %struct._tracking_vrrp* %48, %struct._tracking_vrrp** %7, align 8, !dbg !1992
  %49 = load %struct._tracking_vrrp*, %struct._tracking_vrrp** %7, align 8, !dbg !1993
  %50 = getelementptr inbounds %struct._tracking_vrrp, %struct._tracking_vrrp* %49, i32 0, i32 1, !dbg !1994
  %51 = load %struct._vrrp_t*, %struct._vrrp_t** %50, align 8, !dbg !1994
  store %struct._vrrp_t* %51, %struct._vrrp_t** %6, align 8, !dbg !1995
  %52 = load %struct._tracking_vrrp*, %struct._tracking_vrrp** %7, align 8, !dbg !1996
  %53 = getelementptr inbounds %struct._tracking_vrrp, %struct._tracking_vrrp* %52, i32 0, i32 0, !dbg !1997
  %54 = load i32, i32* %53, align 8, !dbg !1997
  %55 = load %struct._vrrp_script*, %struct._vrrp_script** %3, align 8, !dbg !1998
  %56 = load i8, i8* %4, align 1, !dbg !1999
  %57 = trunc i8 %56 to i1, !dbg !1999
  %58 = load %struct._vrrp_t*, %struct._vrrp_t** %6, align 8, !dbg !2000
  call void @process_script_update_priority(i32 %54, %struct._vrrp_script* %55, i1 zeroext %57, %struct._vrrp_t* %58), !dbg !2001
  br label %59, !dbg !2002

; <label>:59:                                     ; preds = %44
  %60 = load %struct._element*, %struct._element** %5, align 8, !dbg !2003
  %61 = getelementptr inbounds %struct._element, %struct._element* %60, i32 0, i32 0, !dbg !2005
  %62 = load %struct._element*, %struct._element** %61, align 8, !dbg !2005
  store %struct._element* %62, %struct._element** %5, align 8, !dbg !2006
  br label %41, !dbg !2007, !llvm.loop !2008

; <label>:63:                                     ; preds = %41
  br label %64, !dbg !2010

; <label>:64:                                     ; preds = %63, %20, %2
  ret void, !dbg !2011
}

; Function Attrs: nounwind uwtable
define internal void @process_script_update_priority(i32, %struct._vrrp_script*, i1 zeroext, %struct._vrrp_t*) #0 !dbg !2012 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._vrrp_script*, align 8
  %7 = alloca i8, align 1
  %8 = alloca %struct._vrrp_t*, align 8
  %9 = alloca i8, align 1
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2015, metadata !450), !dbg !2016
  store %struct._vrrp_script* %1, %struct._vrrp_script** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._vrrp_script** %6, metadata !2017, metadata !450), !dbg !2018
  %10 = zext i1 %2 to i8
  store i8 %10, i8* %7, align 1
  call void @llvm.dbg.declare(metadata i8* %7, metadata !2019, metadata !450), !dbg !2020
  store %struct._vrrp_t* %3, %struct._vrrp_t** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %8, metadata !2021, metadata !450), !dbg !2022
  call void @llvm.dbg.declare(metadata i8* %9, metadata !2023, metadata !450), !dbg !2024
  store i8 0, i8* %9, align 1, !dbg !2024
  %11 = load i32, i32* %5, align 4, !dbg !2025
  %12 = icmp ne i32 %11, 0, !dbg !2025
  br i1 %12, label %66, label %13, !dbg !2027

; <label>:13:                                     ; preds = %4
  %14 = load %struct._vrrp_script*, %struct._vrrp_script** %6, align 8, !dbg !2028
  %15 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %14, i32 0, i32 11, !dbg !2031
  %16 = load i32, i32* %15, align 8, !dbg !2031
  %17 = icmp eq i32 %16, 1, !dbg !2032
  br i1 %17, label %18, label %38, !dbg !2033

; <label>:18:                                     ; preds = %13
  %19 = load %struct._vrrp_t*, %struct._vrrp_t** %8, align 8, !dbg !2034
  %20 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %19, i32 0, i32 15, !dbg !2037
  %21 = load i32, i32* %20, align 4, !dbg !2038
  %22 = add i32 %21, -1, !dbg !2038
  store i32 %22, i32* %20, align 4, !dbg !2038
  %23 = icmp ne i32 %22, 0, !dbg !2038
  br i1 %23, label %37, label %24, !dbg !2039

; <label>:24:                                     ; preds = %18
  store i8 1, i8* %9, align 1, !dbg !2040
  %25 = load %struct._vrrp_t*, %struct._vrrp_t** %8, align 8, !dbg !2042
  %26 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %25, i32 0, i32 2, !dbg !2044
  %27 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %26, align 8, !dbg !2044
  %28 = icmp ne %struct._vrrp_sgroup* %27, null, !dbg !2042
  br i1 %28, label %29, label %36, !dbg !2045

; <label>:29:                                     ; preds = %24
  %30 = load %struct._vrrp_t*, %struct._vrrp_t** %8, align 8, !dbg !2046
  %31 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %30, i32 0, i32 2, !dbg !2047
  %32 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %31, align 8, !dbg !2047
  %33 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %32, i32 0, i32 4, !dbg !2048
  %34 = load i32, i32* %33, align 4, !dbg !2049
  %35 = add i32 %34, -1, !dbg !2049
  store i32 %35, i32* %33, align 4, !dbg !2049
  br label %36, !dbg !2046

; <label>:36:                                     ; preds = %29, %24
  br label %37, !dbg !2050

; <label>:37:                                     ; preds = %36, %18
  br label %38, !dbg !2051

; <label>:38:                                     ; preds = %37, %13
  %39 = load i8, i8* %7, align 1, !dbg !2052
  %40 = trunc i8 %39 to i1, !dbg !2052
  br i1 %40, label %43, label %41, !dbg !2054

; <label>:41:                                     ; preds = %38
  %42 = load %struct._vrrp_t*, %struct._vrrp_t** %8, align 8, !dbg !2055
  call void @down_instance(%struct._vrrp_t* %42), !dbg !2057
  br label %65, !dbg !2058

; <label>:43:                                     ; preds = %38
  %44 = load %struct._vrrp_t*, %struct._vrrp_t** %8, align 8, !dbg !2059
  %45 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %44, i32 0, i32 15, !dbg !2062
  %46 = load i32, i32* %45, align 4, !dbg !2062
  %47 = icmp ne i32 %46, 0, !dbg !2059
  br i1 %47, label %64, label %48, !dbg !2063

; <label>:48:                                     ; preds = %43
  %49 = load %struct._vrrp_t*, %struct._vrrp_t** %8, align 8, !dbg !2064
  %50 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %49, i32 0, i32 2, !dbg !2065
  %51 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %50, align 8, !dbg !2065
  %52 = icmp ne %struct._vrrp_sgroup* %51, null, !dbg !2064
  br i1 %52, label %53, label %60, !dbg !2066

; <label>:53:                                     ; preds = %48
  %54 = load %struct._vrrp_t*, %struct._vrrp_t** %8, align 8, !dbg !2067
  %55 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %54, i32 0, i32 2, !dbg !2068
  %56 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %55, align 8, !dbg !2068
  %57 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %56, i32 0, i32 4, !dbg !2069
  %58 = load i32, i32* %57, align 4, !dbg !2069
  %59 = icmp ne i32 %58, 0, !dbg !2067
  br i1 %59, label %64, label %60, !dbg !2070

; <label>:60:                                     ; preds = %53, %48
  %61 = load %struct._vrrp_t*, %struct._vrrp_t** %8, align 8, !dbg !2072
  %62 = load i8, i8* %9, align 1, !dbg !2074
  %63 = trunc i8 %62 to i1, !dbg !2074
  call void @try_up_instance(%struct._vrrp_t* %61, i1 zeroext %63), !dbg !2075
  br label %64, !dbg !2076

; <label>:64:                                     ; preds = %60, %53, %43
  br label %65

; <label>:65:                                     ; preds = %64, %41
  br label %115, !dbg !2077

; <label>:66:                                     ; preds = %4
  %67 = load %struct._vrrp_script*, %struct._vrrp_script** %6, align 8, !dbg !2078
  %68 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %67, i32 0, i32 11, !dbg !2080
  %69 = load i32, i32* %68, align 8, !dbg !2080
  %70 = icmp eq i32 %69, 1, !dbg !2081
  br i1 %70, label %71, label %95, !dbg !2082

; <label>:71:                                     ; preds = %66
  %72 = load i8, i8* %7, align 1, !dbg !2083
  %73 = trunc i8 %72 to i1, !dbg !2083
  br i1 %73, label %74, label %84, !dbg !2086

; <label>:74:                                     ; preds = %71
  %75 = load i32, i32* %5, align 4, !dbg !2087
  %76 = icmp sgt i32 %75, 0, !dbg !2090
  br i1 %76, label %77, label %83, !dbg !2091

; <label>:77:                                     ; preds = %74
  %78 = load i32, i32* %5, align 4, !dbg !2092
  %79 = load %struct._vrrp_t*, %struct._vrrp_t** %8, align 8, !dbg !2093
  %80 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %79, i32 0, i32 39, !dbg !2094
  %81 = load i32, i32* %80, align 8, !dbg !2095
  %82 = add nsw i32 %81, %78, !dbg !2095
  store i32 %82, i32* %80, align 8, !dbg !2095
  br label %83, !dbg !2093

; <label>:83:                                     ; preds = %77, %74
  br label %94, !dbg !2096

; <label>:84:                                     ; preds = %71
  %85 = load i32, i32* %5, align 4, !dbg !2097
  %86 = icmp slt i32 %85, 0, !dbg !2100
  br i1 %86, label %87, label %93, !dbg !2101

; <label>:87:                                     ; preds = %84
  %88 = load i32, i32* %5, align 4, !dbg !2102
  %89 = load %struct._vrrp_t*, %struct._vrrp_t** %8, align 8, !dbg !2103
  %90 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %89, i32 0, i32 39, !dbg !2104
  %91 = load i32, i32* %90, align 8, !dbg !2105
  %92 = add nsw i32 %91, %88, !dbg !2105
  store i32 %92, i32* %90, align 8, !dbg !2105
  br label %93, !dbg !2103

; <label>:93:                                     ; preds = %87, %84
  br label %94

; <label>:94:                                     ; preds = %93, %83
  br label %113, !dbg !2106

; <label>:95:                                     ; preds = %66
  %96 = load i8, i8* %7, align 1, !dbg !2107
  %97 = trunc i8 %96 to i1, !dbg !2107
  br i1 %97, label %98, label %105, !dbg !2110

; <label>:98:                                     ; preds = %95
  %99 = load i32, i32* %5, align 4, !dbg !2111
  %100 = call i32 @abs(i32 %99) #1, !dbg !2112
  %101 = load %struct._vrrp_t*, %struct._vrrp_t** %8, align 8, !dbg !2113
  %102 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %101, i32 0, i32 39, !dbg !2114
  %103 = load i32, i32* %102, align 8, !dbg !2115
  %104 = add nsw i32 %103, %100, !dbg !2115
  store i32 %104, i32* %102, align 8, !dbg !2115
  br label %112, !dbg !2113

; <label>:105:                                    ; preds = %95
  %106 = load i32, i32* %5, align 4, !dbg !2116
  %107 = call i32 @abs(i32 %106) #1, !dbg !2117
  %108 = load %struct._vrrp_t*, %struct._vrrp_t** %8, align 8, !dbg !2118
  %109 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %108, i32 0, i32 39, !dbg !2119
  %110 = load i32, i32* %109, align 8, !dbg !2120
  %111 = sub nsw i32 %110, %107, !dbg !2120
  store i32 %111, i32* %109, align 8, !dbg !2120
  br label %112

; <label>:112:                                    ; preds = %105, %98
  br label %113

; <label>:113:                                    ; preds = %112, %94
  %114 = load %struct._vrrp_t*, %struct._vrrp_t** %8, align 8, !dbg !2121
  call void @vrrp_set_effective_priority(%struct._vrrp_t* %114), !dbg !2122
  br label %115, !dbg !2123

; <label>:115:                                    ; preds = %113, %65
  ret void, !dbg !2124
}

; Function Attrs: nounwind uwtable
define void @initialise_interface_tracking_priorities() #0 !dbg !2126 {
  %1 = alloca %struct._tracking_vrrp*, align 8
  %2 = alloca %struct._interface*, align 8
  %3 = alloca %struct._element*, align 8
  %4 = alloca %struct._element*, align 8
  call void @llvm.dbg.declare(metadata %struct._tracking_vrrp** %1, metadata !2129, metadata !450), !dbg !2130
  call void @llvm.dbg.declare(metadata %struct._interface** %2, metadata !2131, metadata !450), !dbg !2132
  call void @llvm.dbg.declare(metadata %struct._element** %3, metadata !2133, metadata !450), !dbg !2134
  call void @llvm.dbg.declare(metadata %struct._element** %4, metadata !2135, metadata !450), !dbg !2136
  %5 = call %struct._list* @get_if_list(), !dbg !2137
  %6 = icmp ne %struct._list* %5, null, !dbg !2137
  br i1 %6, label %7, label %17, !dbg !2139

; <label>:7:                                      ; preds = %0
  %8 = call %struct._list* @get_if_list(), !dbg !2140
  %9 = icmp ne %struct._list* %8, null, !dbg !2140
  br i1 %9, label %11, label %10, !dbg !2142

; <label>:10:                                     ; preds = %7
  br label %15, !dbg !2143

; <label>:11:                                     ; preds = %7
  %12 = call %struct._list* @get_if_list(), !dbg !2145
  %13 = getelementptr inbounds %struct._list, %struct._list* %12, i32 0, i32 0, !dbg !2147
  %14 = load %struct._element*, %struct._element** %13, align 8, !dbg !2147
  br label %15, !dbg !2148

; <label>:15:                                     ; preds = %11, %10
  %16 = phi %struct._element* [ null, %10 ], [ %14, %11 ], !dbg !2149
  br label %18, !dbg !2151

; <label>:17:                                     ; preds = %0
  br label %18, !dbg !2152

; <label>:18:                                     ; preds = %17, %15
  %19 = phi %struct._element* [ %16, %15 ], [ null, %17 ], !dbg !2154
  store %struct._element* %19, %struct._element** %3, align 8, !dbg !2156
  br label %20, !dbg !2157

; <label>:20:                                     ; preds = %161, %18
  %21 = load %struct._element*, %struct._element** %3, align 8, !dbg !2158
  %22 = icmp ne %struct._element* %21, null, !dbg !2161
  br i1 %22, label %23, label %28, !dbg !2162

; <label>:23:                                     ; preds = %20
  %24 = load %struct._element*, %struct._element** %3, align 8, !dbg !2163
  %25 = getelementptr inbounds %struct._element, %struct._element* %24, i32 0, i32 2, !dbg !2165
  %26 = load i8*, i8** %25, align 8, !dbg !2165
  %27 = bitcast i8* %26 to %struct._interface*, !dbg !2166
  store %struct._interface* %27, %struct._interface** %2, align 8, !dbg !2167
  br label %28

; <label>:28:                                     ; preds = %23, %20
  %29 = phi i1 [ false, %20 ], [ true, %23 ]
  br i1 %29, label %30, label %165, !dbg !2168

; <label>:30:                                     ; preds = %28
  %31 = load %struct._interface*, %struct._interface** %2, align 8, !dbg !2170
  %32 = getelementptr inbounds %struct._interface, %struct._interface* %31, i32 0, i32 26, !dbg !2173
  %33 = load %struct._list*, %struct._list** %32, align 8, !dbg !2173
  %34 = icmp ne %struct._list* %33, null, !dbg !2174
  br i1 %34, label %35, label %49, !dbg !2174

; <label>:35:                                     ; preds = %30
  %36 = load %struct._interface*, %struct._interface** %2, align 8, !dbg !2175
  %37 = getelementptr inbounds %struct._interface, %struct._interface* %36, i32 0, i32 26, !dbg !2177
  %38 = load %struct._list*, %struct._list** %37, align 8, !dbg !2177
  %39 = icmp ne %struct._list* %38, null, !dbg !2178
  br i1 %39, label %41, label %40, !dbg !2179

; <label>:40:                                     ; preds = %35
  br label %47, !dbg !2180

; <label>:41:                                     ; preds = %35
  %42 = load %struct._interface*, %struct._interface** %2, align 8, !dbg !2182
  %43 = getelementptr inbounds %struct._interface, %struct._interface* %42, i32 0, i32 26, !dbg !2184
  %44 = load %struct._list*, %struct._list** %43, align 8, !dbg !2184
  %45 = getelementptr inbounds %struct._list, %struct._list* %44, i32 0, i32 0, !dbg !2185
  %46 = load %struct._element*, %struct._element** %45, align 8, !dbg !2185
  br label %47, !dbg !2186

; <label>:47:                                     ; preds = %41, %40
  %48 = phi %struct._element* [ null, %40 ], [ %46, %41 ], !dbg !2187
  br label %50, !dbg !2189

; <label>:49:                                     ; preds = %30
  br label %50, !dbg !2190

; <label>:50:                                     ; preds = %49, %47
  %51 = phi %struct._element* [ %48, %47 ], [ null, %49 ], !dbg !2192
  store %struct._element* %51, %struct._element** %4, align 8, !dbg !2194
  br label %52, !dbg !2195

; <label>:52:                                     ; preds = %156, %50
  %53 = load %struct._element*, %struct._element** %4, align 8, !dbg !2196
  %54 = icmp ne %struct._element* %53, null, !dbg !2199
  br i1 %54, label %55, label %60, !dbg !2200

; <label>:55:                                     ; preds = %52
  %56 = load %struct._element*, %struct._element** %4, align 8, !dbg !2201
  %57 = getelementptr inbounds %struct._element, %struct._element* %56, i32 0, i32 2, !dbg !2203
  %58 = load i8*, i8** %57, align 8, !dbg !2203
  %59 = bitcast i8* %58 to %struct._tracking_vrrp*, !dbg !2204
  store %struct._tracking_vrrp* %59, %struct._tracking_vrrp** %1, align 8, !dbg !2205
  br label %60

; <label>:60:                                     ; preds = %55, %52
  %61 = phi i1 [ false, %52 ], [ true, %55 ]
  br i1 %61, label %62, label %160, !dbg !2206

; <label>:62:                                     ; preds = %60
  %63 = load %struct._tracking_vrrp*, %struct._tracking_vrrp** %1, align 8, !dbg !2208
  %64 = getelementptr inbounds %struct._tracking_vrrp, %struct._tracking_vrrp* %63, i32 0, i32 0, !dbg !2211
  %65 = load i32, i32* %64, align 8, !dbg !2211
  %66 = icmp eq i32 %65, 255, !dbg !2212
  br i1 %66, label %67, label %68, !dbg !2213

; <label>:67:                                     ; preds = %62
  br label %156, !dbg !2214

; <label>:68:                                     ; preds = %62
  %69 = load %struct._tracking_vrrp*, %struct._tracking_vrrp** %1, align 8, !dbg !2215
  %70 = getelementptr inbounds %struct._tracking_vrrp, %struct._tracking_vrrp* %69, i32 0, i32 0, !dbg !2217
  %71 = load i32, i32* %70, align 8, !dbg !2217
  %72 = icmp ne i32 %71, 0, !dbg !2215
  br i1 %72, label %104, label %73, !dbg !2218

; <label>:73:                                     ; preds = %68
  %74 = load %struct._interface*, %struct._interface** %2, align 8, !dbg !2219
  %75 = getelementptr inbounds %struct._interface, %struct._interface* %74, i32 0, i32 4, !dbg !2222
  %76 = load i32, i32* %75, align 8, !dbg !2222
  %77 = and i32 %76, 65, !dbg !2223
  %78 = icmp eq i32 %77, 65, !dbg !2224
  br i1 %78, label %79, label %92, !dbg !2225

; <label>:79:                                     ; preds = %73
  %80 = load %struct._interface*, %struct._interface** %2, align 8, !dbg !2226
  %81 = getelementptr inbounds %struct._interface, %struct._interface* %80, i32 0, i32 12, !dbg !2228
  %82 = load i8, i8* %81, align 4, !dbg !2228
  %83 = trunc i8 %82 to i1, !dbg !2228
  br i1 %83, label %84, label %103, !dbg !2229

; <label>:84:                                     ; preds = %79
  %85 = load %struct._interface*, %struct._interface** %2, align 8, !dbg !2230
  %86 = getelementptr inbounds %struct._interface, %struct._interface* %85, i32 0, i32 14, !dbg !2232
  %87 = load %struct._interface*, %struct._interface** %86, align 8, !dbg !2232
  %88 = getelementptr inbounds %struct._interface, %struct._interface* %87, i32 0, i32 4, !dbg !2233
  %89 = load i32, i32* %88, align 8, !dbg !2233
  %90 = and i32 %89, 65, !dbg !2234
  %91 = icmp eq i32 %90, 65, !dbg !2235
  br i1 %91, label %103, label %92, !dbg !2236

; <label>:92:                                     ; preds = %84, %73
  %93 = load %struct._tracking_vrrp*, %struct._tracking_vrrp** %1, align 8, !dbg !2237
  %94 = getelementptr inbounds %struct._tracking_vrrp, %struct._tracking_vrrp* %93, i32 0, i32 1, !dbg !2239
  %95 = load %struct._vrrp_t*, %struct._vrrp_t** %94, align 8, !dbg !2239
  %96 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %95, i32 0, i32 55, !dbg !2240
  store i32 3, i32* %96, align 8, !dbg !2241
  %97 = load %struct._tracking_vrrp*, %struct._tracking_vrrp** %1, align 8, !dbg !2242
  %98 = getelementptr inbounds %struct._tracking_vrrp, %struct._tracking_vrrp* %97, i32 0, i32 1, !dbg !2243
  %99 = load %struct._vrrp_t*, %struct._vrrp_t** %98, align 8, !dbg !2243
  %100 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %99, i32 0, i32 14, !dbg !2244
  %101 = load i32, i32* %100, align 8, !dbg !2245
  %102 = add i32 %101, 1, !dbg !2245
  store i32 %102, i32* %100, align 8, !dbg !2245
  br label %103, !dbg !2246

; <label>:103:                                    ; preds = %92, %84, %79
  br label %156, !dbg !2247

; <label>:104:                                    ; preds = %68
  %105 = load %struct._interface*, %struct._interface** %2, align 8, !dbg !2248
  %106 = getelementptr inbounds %struct._interface, %struct._interface* %105, i32 0, i32 4, !dbg !2250
  %107 = load i32, i32* %106, align 8, !dbg !2250
  %108 = and i32 %107, 65, !dbg !2251
  %109 = icmp eq i32 %108, 65, !dbg !2252
  br i1 %109, label %110, label %139, !dbg !2253

; <label>:110:                                    ; preds = %104
  %111 = load %struct._interface*, %struct._interface** %2, align 8, !dbg !2254
  %112 = getelementptr inbounds %struct._interface, %struct._interface* %111, i32 0, i32 12, !dbg !2256
  %113 = load i8, i8* %112, align 4, !dbg !2256
  %114 = trunc i8 %113 to i1, !dbg !2256
  br i1 %114, label %115, label %123, !dbg !2257

; <label>:115:                                    ; preds = %110
  %116 = load %struct._interface*, %struct._interface** %2, align 8, !dbg !2258
  %117 = getelementptr inbounds %struct._interface, %struct._interface* %116, i32 0, i32 14, !dbg !2260
  %118 = load %struct._interface*, %struct._interface** %117, align 8, !dbg !2260
  %119 = getelementptr inbounds %struct._interface, %struct._interface* %118, i32 0, i32 4, !dbg !2261
  %120 = load i32, i32* %119, align 8, !dbg !2261
  %121 = and i32 %120, 65, !dbg !2262
  %122 = icmp eq i32 %121, 65, !dbg !2263
  br i1 %122, label %123, label %139, !dbg !2264

; <label>:123:                                    ; preds = %115, %110
  %124 = load %struct._tracking_vrrp*, %struct._tracking_vrrp** %1, align 8, !dbg !2265
  %125 = getelementptr inbounds %struct._tracking_vrrp, %struct._tracking_vrrp* %124, i32 0, i32 0, !dbg !2268
  %126 = load i32, i32* %125, align 8, !dbg !2268
  %127 = icmp sgt i32 %126, 0, !dbg !2269
  br i1 %127, label %128, label %138, !dbg !2270

; <label>:128:                                    ; preds = %123
  %129 = load %struct._tracking_vrrp*, %struct._tracking_vrrp** %1, align 8, !dbg !2271
  %130 = getelementptr inbounds %struct._tracking_vrrp, %struct._tracking_vrrp* %129, i32 0, i32 0, !dbg !2272
  %131 = load i32, i32* %130, align 8, !dbg !2272
  %132 = load %struct._tracking_vrrp*, %struct._tracking_vrrp** %1, align 8, !dbg !2273
  %133 = getelementptr inbounds %struct._tracking_vrrp, %struct._tracking_vrrp* %132, i32 0, i32 1, !dbg !2274
  %134 = load %struct._vrrp_t*, %struct._vrrp_t** %133, align 8, !dbg !2274
  %135 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %134, i32 0, i32 39, !dbg !2275
  %136 = load i32, i32* %135, align 8, !dbg !2276
  %137 = add nsw i32 %136, %131, !dbg !2276
  store i32 %137, i32* %135, align 8, !dbg !2276
  br label %138, !dbg !2273

; <label>:138:                                    ; preds = %128, %123
  br label %155, !dbg !2277

; <label>:139:                                    ; preds = %115, %104
  %140 = load %struct._tracking_vrrp*, %struct._tracking_vrrp** %1, align 8, !dbg !2278
  %141 = getelementptr inbounds %struct._tracking_vrrp, %struct._tracking_vrrp* %140, i32 0, i32 0, !dbg !2281
  %142 = load i32, i32* %141, align 8, !dbg !2281
  %143 = icmp slt i32 %142, 0, !dbg !2282
  br i1 %143, label %144, label %154, !dbg !2283

; <label>:144:                                    ; preds = %139
  %145 = load %struct._tracking_vrrp*, %struct._tracking_vrrp** %1, align 8, !dbg !2284
  %146 = getelementptr inbounds %struct._tracking_vrrp, %struct._tracking_vrrp* %145, i32 0, i32 0, !dbg !2285
  %147 = load i32, i32* %146, align 8, !dbg !2285
  %148 = load %struct._tracking_vrrp*, %struct._tracking_vrrp** %1, align 8, !dbg !2286
  %149 = getelementptr inbounds %struct._tracking_vrrp, %struct._tracking_vrrp* %148, i32 0, i32 1, !dbg !2287
  %150 = load %struct._vrrp_t*, %struct._vrrp_t** %149, align 8, !dbg !2287
  %151 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %150, i32 0, i32 39, !dbg !2288
  %152 = load i32, i32* %151, align 8, !dbg !2289
  %153 = add nsw i32 %152, %147, !dbg !2289
  store i32 %153, i32* %151, align 8, !dbg !2289
  br label %154, !dbg !2286

; <label>:154:                                    ; preds = %144, %139
  br label %155

; <label>:155:                                    ; preds = %154, %138
  br label %156, !dbg !2290

; <label>:156:                                    ; preds = %155, %103, %67
  %157 = load %struct._element*, %struct._element** %4, align 8, !dbg !2291
  %158 = getelementptr inbounds %struct._element, %struct._element* %157, i32 0, i32 0, !dbg !2293
  %159 = load %struct._element*, %struct._element** %158, align 8, !dbg !2293
  store %struct._element* %159, %struct._element** %4, align 8, !dbg !2294
  br label %52, !dbg !2295, !llvm.loop !2296

; <label>:160:                                    ; preds = %60
  br label %161, !dbg !2298

; <label>:161:                                    ; preds = %160
  %162 = load %struct._element*, %struct._element** %3, align 8, !dbg !2299
  %163 = getelementptr inbounds %struct._element, %struct._element* %162, i32 0, i32 0, !dbg !2301
  %164 = load %struct._element*, %struct._element** %163, align 8, !dbg !2301
  store %struct._element* %164, %struct._element** %3, align 8, !dbg !2302
  br label %20, !dbg !2303, !llvm.loop !2304

; <label>:165:                                    ; preds = %28
  ret void, !dbg !2306
}

declare %struct._list* @get_if_list() #2

; Function Attrs: nounwind uwtable
define void @initialise_tracking_priorities(%struct._vrrp_t*) #0 !dbg !2307 {
  %2 = alloca %struct._vrrp_t*, align 8
  %3 = alloca %struct._element*, align 8
  %4 = alloca %struct._tracked_sc*, align 8
  store %struct._vrrp_t* %0, %struct._vrrp_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %2, metadata !2308, metadata !450), !dbg !2309
  call void @llvm.dbg.declare(metadata %struct._element** %3, metadata !2310, metadata !450), !dbg !2311
  call void @llvm.dbg.declare(metadata %struct._tracked_sc** %4, metadata !2312, metadata !450), !dbg !2313
  %5 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !2314
  %6 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %5, i32 0, i32 16, !dbg !2316
  %7 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %6, i32 0, i32 0, !dbg !2317
  %8 = load i16, i16* %7, align 8, !dbg !2317
  %9 = zext i16 %8 to i32, !dbg !2314
  %10 = icmp eq i32 %9, 0, !dbg !2318
  br i1 %10, label %11, label %18, !dbg !2319

; <label>:11:                                     ; preds = %1
  %12 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !2320
  %13 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %12, i32 0, i32 14, !dbg !2322
  %14 = load i32, i32* %13, align 8, !dbg !2323
  %15 = add i32 %14, 1, !dbg !2323
  store i32 %15, i32* %13, align 8, !dbg !2323
  %16 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !2324
  %17 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %16, i32 0, i32 55, !dbg !2325
  store i32 3, i32* %17, align 8, !dbg !2326
  br label %18, !dbg !2327

; <label>:18:                                     ; preds = %11, %1
  %19 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !2328
  %20 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %19, i32 0, i32 12, !dbg !2330
  %21 = load %struct._list*, %struct._list** %20, align 8, !dbg !2330
  %22 = icmp ne %struct._list* %21, null, !dbg !2331
  br i1 %22, label %23, label %37, !dbg !2331

; <label>:23:                                     ; preds = %18
  %24 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !2332
  %25 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %24, i32 0, i32 12, !dbg !2334
  %26 = load %struct._list*, %struct._list** %25, align 8, !dbg !2334
  %27 = icmp ne %struct._list* %26, null, !dbg !2335
  br i1 %27, label %29, label %28, !dbg !2336

; <label>:28:                                     ; preds = %23
  br label %35, !dbg !2337

; <label>:29:                                     ; preds = %23
  %30 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !2339
  %31 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %30, i32 0, i32 12, !dbg !2341
  %32 = load %struct._list*, %struct._list** %31, align 8, !dbg !2341
  %33 = getelementptr inbounds %struct._list, %struct._list* %32, i32 0, i32 0, !dbg !2342
  %34 = load %struct._element*, %struct._element** %33, align 8, !dbg !2342
  br label %35, !dbg !2343

; <label>:35:                                     ; preds = %29, %28
  %36 = phi %struct._element* [ null, %28 ], [ %34, %29 ], !dbg !2344
  br label %38, !dbg !2346

; <label>:37:                                     ; preds = %18
  br label %38, !dbg !2347

; <label>:38:                                     ; preds = %37, %35
  %39 = phi %struct._element* [ %36, %35 ], [ null, %37 ], !dbg !2349
  store %struct._element* %39, %struct._element** %3, align 8, !dbg !2351
  br label %40, !dbg !2352

; <label>:40:                                     ; preds = %53, %38
  %41 = load %struct._element*, %struct._element** %3, align 8, !dbg !2353
  %42 = icmp ne %struct._element* %41, null, !dbg !2356
  br i1 %42, label %43, label %48, !dbg !2357

; <label>:43:                                     ; preds = %40
  %44 = load %struct._element*, %struct._element** %3, align 8, !dbg !2358
  %45 = getelementptr inbounds %struct._element, %struct._element* %44, i32 0, i32 2, !dbg !2360
  %46 = load i8*, i8** %45, align 8, !dbg !2360
  %47 = bitcast i8* %46 to %struct._tracked_sc*, !dbg !2361
  store %struct._tracked_sc* %47, %struct._tracked_sc** %4, align 8, !dbg !2362
  br label %48

; <label>:48:                                     ; preds = %43, %40
  %49 = phi i1 [ false, %40 ], [ true, %43 ]
  br i1 %49, label %50, label %57, !dbg !2363

; <label>:50:                                     ; preds = %48
  %51 = load %struct._tracked_sc*, %struct._tracked_sc** %4, align 8, !dbg !2365
  %52 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !2366
  call void @initialise_track_script_state(%struct._tracked_sc* %51, %struct._vrrp_t* %52), !dbg !2367
  br label %53, !dbg !2367

; <label>:53:                                     ; preds = %50
  %54 = load %struct._element*, %struct._element** %3, align 8, !dbg !2368
  %55 = getelementptr inbounds %struct._element, %struct._element* %54, i32 0, i32 0, !dbg !2370
  %56 = load %struct._element*, %struct._element** %55, align 8, !dbg !2370
  store %struct._element* %56, %struct._element** %3, align 8, !dbg !2371
  br label %40, !dbg !2372, !llvm.loop !2373

; <label>:57:                                     ; preds = %48
  %58 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !2375
  %59 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %58, i32 0, i32 2, !dbg !2377
  %60 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %59, align 8, !dbg !2377
  %61 = icmp ne %struct._vrrp_sgroup* %60, null, !dbg !2375
  br i1 %61, label %62, label %108, !dbg !2378

; <label>:62:                                     ; preds = %57
  %63 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !2379
  %64 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %63, i32 0, i32 2, !dbg !2382
  %65 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %64, align 8, !dbg !2382
  %66 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %65, i32 0, i32 8, !dbg !2383
  %67 = load %struct._list*, %struct._list** %66, align 8, !dbg !2383
  %68 = icmp ne %struct._list* %67, null, !dbg !2384
  br i1 %68, label %69, label %87, !dbg !2384

; <label>:69:                                     ; preds = %62
  %70 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !2385
  %71 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %70, i32 0, i32 2, !dbg !2387
  %72 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %71, align 8, !dbg !2387
  %73 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %72, i32 0, i32 8, !dbg !2388
  %74 = load %struct._list*, %struct._list** %73, align 8, !dbg !2388
  %75 = icmp ne %struct._list* %74, null, !dbg !2389
  br i1 %75, label %77, label %76, !dbg !2390

; <label>:76:                                     ; preds = %69
  br label %85, !dbg !2391

; <label>:77:                                     ; preds = %69
  %78 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !2393
  %79 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %78, i32 0, i32 2, !dbg !2395
  %80 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %79, align 8, !dbg !2395
  %81 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %80, i32 0, i32 8, !dbg !2396
  %82 = load %struct._list*, %struct._list** %81, align 8, !dbg !2396
  %83 = getelementptr inbounds %struct._list, %struct._list* %82, i32 0, i32 0, !dbg !2397
  %84 = load %struct._element*, %struct._element** %83, align 8, !dbg !2397
  br label %85, !dbg !2398

; <label>:85:                                     ; preds = %77, %76
  %86 = phi %struct._element* [ null, %76 ], [ %84, %77 ], !dbg !2399
  br label %88, !dbg !2401

; <label>:87:                                     ; preds = %62
  br label %88, !dbg !2402

; <label>:88:                                     ; preds = %87, %85
  %89 = phi %struct._element* [ %86, %85 ], [ null, %87 ], !dbg !2404
  store %struct._element* %89, %struct._element** %3, align 8, !dbg !2406
  br label %90, !dbg !2407

; <label>:90:                                     ; preds = %103, %88
  %91 = load %struct._element*, %struct._element** %3, align 8, !dbg !2408
  %92 = icmp ne %struct._element* %91, null, !dbg !2411
  br i1 %92, label %93, label %98, !dbg !2412

; <label>:93:                                     ; preds = %90
  %94 = load %struct._element*, %struct._element** %3, align 8, !dbg !2413
  %95 = getelementptr inbounds %struct._element, %struct._element* %94, i32 0, i32 2, !dbg !2415
  %96 = load i8*, i8** %95, align 8, !dbg !2415
  %97 = bitcast i8* %96 to %struct._tracked_sc*, !dbg !2416
  store %struct._tracked_sc* %97, %struct._tracked_sc** %4, align 8, !dbg !2417
  br label %98

; <label>:98:                                     ; preds = %93, %90
  %99 = phi i1 [ false, %90 ], [ true, %93 ]
  br i1 %99, label %100, label %107, !dbg !2418

; <label>:100:                                    ; preds = %98
  %101 = load %struct._tracked_sc*, %struct._tracked_sc** %4, align 8, !dbg !2420
  %102 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !2421
  call void @initialise_track_script_state(%struct._tracked_sc* %101, %struct._vrrp_t* %102), !dbg !2422
  br label %103, !dbg !2422

; <label>:103:                                    ; preds = %100
  %104 = load %struct._element*, %struct._element** %3, align 8, !dbg !2423
  %105 = getelementptr inbounds %struct._element, %struct._element* %104, i32 0, i32 0, !dbg !2425
  %106 = load %struct._element*, %struct._element** %105, align 8, !dbg !2425
  store %struct._element* %106, %struct._element** %3, align 8, !dbg !2426
  br label %90, !dbg !2427, !llvm.loop !2428

; <label>:107:                                    ; preds = %98
  br label %108, !dbg !2430

; <label>:108:                                    ; preds = %107, %57
  %109 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !2431
  call void @vrrp_set_effective_priority(%struct._vrrp_t* %109), !dbg !2432
  ret void, !dbg !2433
}

; Function Attrs: nounwind uwtable
define internal void @initialise_track_script_state(%struct._tracked_sc*, %struct._vrrp_t*) #0 !dbg !2434 {
  %3 = alloca %struct._tracked_sc*, align 8
  %4 = alloca %struct._vrrp_t*, align 8
  store %struct._tracked_sc* %0, %struct._tracked_sc** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._tracked_sc** %3, metadata !2437, metadata !450), !dbg !2438
  store %struct._vrrp_t* %1, %struct._vrrp_t** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %4, metadata !2439, metadata !450), !dbg !2440
  %5 = load %struct._tracked_sc*, %struct._tracked_sc** %3, align 8, !dbg !2441
  %6 = getelementptr inbounds %struct._tracked_sc, %struct._tracked_sc* %5, i32 0, i32 1, !dbg !2443
  %7 = load i32, i32* %6, align 8, !dbg !2443
  %8 = icmp ne i32 %7, 0, !dbg !2441
  br i1 %8, label %56, label %9, !dbg !2444

; <label>:9:                                      ; preds = %2
  %10 = load %struct._tracked_sc*, %struct._tracked_sc** %3, align 8, !dbg !2445
  %11 = getelementptr inbounds %struct._tracked_sc, %struct._tracked_sc* %10, i32 0, i32 0, !dbg !2448
  %12 = load %struct._vrrp_script*, %struct._vrrp_script** %11, align 8, !dbg !2448
  %13 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %12, i32 0, i32 11, !dbg !2449
  %14 = load i32, i32* %13, align 8, !dbg !2449
  %15 = icmp eq i32 %14, 1, !dbg !2450
  br i1 %15, label %16, label %21, !dbg !2451

; <label>:16:                                     ; preds = %9
  %17 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !2452
  %18 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %17, i32 0, i32 15, !dbg !2453
  %19 = load i32, i32* %18, align 4, !dbg !2454
  %20 = add i32 %19, 1, !dbg !2454
  store i32 %20, i32* %18, align 4, !dbg !2454
  br label %55, !dbg !2452

; <label>:21:                                     ; preds = %9
  %22 = load %struct._tracked_sc*, %struct._tracked_sc** %3, align 8, !dbg !2455
  %23 = getelementptr inbounds %struct._tracked_sc, %struct._tracked_sc* %22, i32 0, i32 0, !dbg !2457
  %24 = load %struct._vrrp_script*, %struct._vrrp_script** %23, align 8, !dbg !2457
  %25 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %24, i32 0, i32 11, !dbg !2458
  %26 = load i32, i32* %25, align 8, !dbg !2458
  %27 = icmp eq i32 %26, 2, !dbg !2459
  br i1 %27, label %47, label %28, !dbg !2460

; <label>:28:                                     ; preds = %21
  %29 = load %struct._tracked_sc*, %struct._tracked_sc** %3, align 8, !dbg !2461
  %30 = getelementptr inbounds %struct._tracked_sc, %struct._tracked_sc* %29, i32 0, i32 0, !dbg !2462
  %31 = load %struct._vrrp_script*, %struct._vrrp_script** %30, align 8, !dbg !2462
  %32 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %31, i32 0, i32 5, !dbg !2463
  %33 = load i32, i32* %32, align 4, !dbg !2463
  %34 = icmp sge i32 %33, 0, !dbg !2464
  br i1 %34, label %35, label %54, !dbg !2465

; <label>:35:                                     ; preds = %28
  %36 = load %struct._tracked_sc*, %struct._tracked_sc** %3, align 8, !dbg !2466
  %37 = getelementptr inbounds %struct._tracked_sc, %struct._tracked_sc* %36, i32 0, i32 0, !dbg !2468
  %38 = load %struct._vrrp_script*, %struct._vrrp_script** %37, align 8, !dbg !2468
  %39 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %38, i32 0, i32 5, !dbg !2469
  %40 = load i32, i32* %39, align 4, !dbg !2469
  %41 = load %struct._tracked_sc*, %struct._tracked_sc** %3, align 8, !dbg !2470
  %42 = getelementptr inbounds %struct._tracked_sc, %struct._tracked_sc* %41, i32 0, i32 0, !dbg !2471
  %43 = load %struct._vrrp_script*, %struct._vrrp_script** %42, align 8, !dbg !2471
  %44 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %43, i32 0, i32 6, !dbg !2472
  %45 = load i32, i32* %44, align 8, !dbg !2472
  %46 = icmp slt i32 %40, %45, !dbg !2473
  br i1 %46, label %47, label %54, !dbg !2474

; <label>:47:                                     ; preds = %35, %21
  %48 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !2476
  %49 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %48, i32 0, i32 14, !dbg !2478
  %50 = load i32, i32* %49, align 8, !dbg !2479
  %51 = add i32 %50, 1, !dbg !2479
  store i32 %51, i32* %49, align 8, !dbg !2479
  %52 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !2480
  %53 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %52, i32 0, i32 55, !dbg !2481
  store i32 3, i32* %53, align 8, !dbg !2482
  br label %54, !dbg !2483

; <label>:54:                                     ; preds = %47, %35, %28
  br label %55

; <label>:55:                                     ; preds = %54, %16
  br label %111, !dbg !2484

; <label>:56:                                     ; preds = %2
  %57 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !2485
  %58 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %57, i32 0, i32 37, !dbg !2487
  %59 = load i8, i8* %58, align 1, !dbg !2487
  %60 = zext i8 %59 to i32, !dbg !2485
  %61 = icmp eq i32 %60, 255, !dbg !2488
  br i1 %61, label %62, label %63, !dbg !2489

; <label>:62:                                     ; preds = %56
  br label %111, !dbg !2490

; <label>:63:                                     ; preds = %56
  %64 = load %struct._tracked_sc*, %struct._tracked_sc** %3, align 8, !dbg !2491
  %65 = getelementptr inbounds %struct._tracked_sc, %struct._tracked_sc* %64, i32 0, i32 0, !dbg !2493
  %66 = load %struct._vrrp_script*, %struct._vrrp_script** %65, align 8, !dbg !2493
  %67 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %66, i32 0, i32 11, !dbg !2494
  %68 = load i32, i32* %67, align 8, !dbg !2494
  %69 = icmp ne i32 %68, 1, !dbg !2495
  br i1 %69, label %70, label %111, !dbg !2496

; <label>:70:                                     ; preds = %63
  %71 = load %struct._tracked_sc*, %struct._tracked_sc** %3, align 8, !dbg !2497
  %72 = getelementptr inbounds %struct._tracked_sc, %struct._tracked_sc* %71, i32 0, i32 0, !dbg !2500
  %73 = load %struct._vrrp_script*, %struct._vrrp_script** %72, align 8, !dbg !2500
  %74 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %73, i32 0, i32 5, !dbg !2501
  %75 = load i32, i32* %74, align 4, !dbg !2501
  %76 = load %struct._tracked_sc*, %struct._tracked_sc** %3, align 8, !dbg !2502
  %77 = getelementptr inbounds %struct._tracked_sc, %struct._tracked_sc* %76, i32 0, i32 0, !dbg !2503
  %78 = load %struct._vrrp_script*, %struct._vrrp_script** %77, align 8, !dbg !2503
  %79 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %78, i32 0, i32 6, !dbg !2504
  %80 = load i32, i32* %79, align 8, !dbg !2504
  %81 = icmp sge i32 %75, %80, !dbg !2505
  br i1 %81, label %82, label %96, !dbg !2506

; <label>:82:                                     ; preds = %70
  %83 = load %struct._tracked_sc*, %struct._tracked_sc** %3, align 8, !dbg !2507
  %84 = getelementptr inbounds %struct._tracked_sc, %struct._tracked_sc* %83, i32 0, i32 1, !dbg !2510
  %85 = load i32, i32* %84, align 8, !dbg !2510
  %86 = icmp sgt i32 %85, 0, !dbg !2511
  br i1 %86, label %87, label %95, !dbg !2512

; <label>:87:                                     ; preds = %82
  %88 = load %struct._tracked_sc*, %struct._tracked_sc** %3, align 8, !dbg !2513
  %89 = getelementptr inbounds %struct._tracked_sc, %struct._tracked_sc* %88, i32 0, i32 1, !dbg !2514
  %90 = load i32, i32* %89, align 8, !dbg !2514
  %91 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !2515
  %92 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %91, i32 0, i32 39, !dbg !2516
  %93 = load i32, i32* %92, align 8, !dbg !2517
  %94 = add nsw i32 %93, %90, !dbg !2517
  store i32 %94, i32* %92, align 8, !dbg !2517
  br label %95, !dbg !2515

; <label>:95:                                     ; preds = %87, %82
  br label %110, !dbg !2518

; <label>:96:                                     ; preds = %70
  %97 = load %struct._tracked_sc*, %struct._tracked_sc** %3, align 8, !dbg !2519
  %98 = getelementptr inbounds %struct._tracked_sc, %struct._tracked_sc* %97, i32 0, i32 1, !dbg !2522
  %99 = load i32, i32* %98, align 8, !dbg !2522
  %100 = icmp slt i32 %99, 0, !dbg !2523
  br i1 %100, label %101, label %109, !dbg !2524

; <label>:101:                                    ; preds = %96
  %102 = load %struct._tracked_sc*, %struct._tracked_sc** %3, align 8, !dbg !2525
  %103 = getelementptr inbounds %struct._tracked_sc, %struct._tracked_sc* %102, i32 0, i32 1, !dbg !2526
  %104 = load i32, i32* %103, align 8, !dbg !2526
  %105 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !2527
  %106 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %105, i32 0, i32 39, !dbg !2528
  %107 = load i32, i32* %106, align 8, !dbg !2529
  %108 = add nsw i32 %107, %104, !dbg !2529
  store i32 %108, i32* %106, align 8, !dbg !2529
  br label %109, !dbg !2527

; <label>:109:                                    ; preds = %101, %96
  br label %110

; <label>:110:                                    ; preds = %109, %95
  br label %111, !dbg !2530

; <label>:111:                                    ; preds = %55, %62, %110, %63
  ret void, !dbg !2531
}

; Function Attrs: nounwind uwtable
define void @init_track_files(%struct._list*) #0 !dbg !2532 {
  %2 = alloca %struct._list*, align 8
  %3 = alloca %struct._vrrp_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.stat, align 8
  %8 = alloca i8, align 1
  %9 = alloca %struct._element*, align 8
  %10 = alloca %struct._element*, align 8
  store %struct._list* %0, %struct._list** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._list** %2, metadata !2535, metadata !450), !dbg !2536
  call void @llvm.dbg.declare(metadata %struct._vrrp_file** %3, metadata !2537, metadata !450), !dbg !2538
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2539, metadata !450), !dbg !2540
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2541, metadata !450), !dbg !2542
  store i8* null, i8** %5, align 8, !dbg !2542
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2543, metadata !450), !dbg !2544
  call void @llvm.dbg.declare(metadata %struct.stat* %7, metadata !2545, metadata !450), !dbg !2579
  call void @llvm.dbg.declare(metadata i8* %8, metadata !2580, metadata !450), !dbg !2581
  call void @llvm.dbg.declare(metadata %struct._element** %9, metadata !2582, metadata !450), !dbg !2583
  call void @llvm.dbg.declare(metadata %struct._element** %10, metadata !2584, metadata !450), !dbg !2585
  store i32 -1, i32* @inotify_fd, align 4, !dbg !2586
  %11 = load %struct._list*, %struct._list** %2, align 8, !dbg !2587
  %12 = icmp eq %struct._list* %11, null, !dbg !2589
  br i1 %12, label %23, label %13, !dbg !2590

; <label>:13:                                     ; preds = %1
  %14 = load %struct._list*, %struct._list** %2, align 8, !dbg !2591
  %15 = getelementptr inbounds %struct._list, %struct._list* %14, i32 0, i32 0, !dbg !2593
  %16 = load %struct._element*, %struct._element** %15, align 8, !dbg !2593
  %17 = icmp eq %struct._element* %16, null, !dbg !2594
  br i1 %17, label %18, label %24, !dbg !2595

; <label>:18:                                     ; preds = %13
  %19 = load %struct._list*, %struct._list** %2, align 8, !dbg !2596
  %20 = getelementptr inbounds %struct._list, %struct._list* %19, i32 0, i32 1, !dbg !2598
  %21 = load %struct._element*, %struct._element** %20, align 8, !dbg !2598
  %22 = icmp eq %struct._element* %21, null, !dbg !2599
  br i1 %22, label %23, label %24, !dbg !2600

; <label>:23:                                     ; preds = %18, %1
  br label %259, !dbg !2601

; <label>:24:                                     ; preds = %18, %13
  %25 = call i32 @inotify_init1(i32 526336) #6, !dbg !2602
  store i32 %25, i32* @inotify_fd, align 4, !dbg !2603
  %26 = load i32, i32* @inotify_fd, align 4, !dbg !2604
  %27 = icmp eq i32 %26, -1, !dbg !2606
  br i1 %27, label %28, label %29, !dbg !2607

; <label>:28:                                     ; preds = %24
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.17, i32 0, i32 0)), !dbg !2608
  br label %259, !dbg !2610

; <label>:29:                                     ; preds = %24
  %30 = load %struct._list*, %struct._list** %2, align 8, !dbg !2611
  %31 = icmp ne %struct._list* %30, null, !dbg !2613
  br i1 %31, label %32, label %42, !dbg !2613

; <label>:32:                                     ; preds = %29
  %33 = load %struct._list*, %struct._list** %2, align 8, !dbg !2614
  %34 = icmp ne %struct._list* %33, null, !dbg !2616
  br i1 %34, label %36, label %35, !dbg !2617

; <label>:35:                                     ; preds = %32
  br label %40, !dbg !2618

; <label>:36:                                     ; preds = %32
  %37 = load %struct._list*, %struct._list** %2, align 8, !dbg !2620
  %38 = getelementptr inbounds %struct._list, %struct._list* %37, i32 0, i32 0, !dbg !2622
  %39 = load %struct._element*, %struct._element** %38, align 8, !dbg !2622
  br label %40, !dbg !2623

; <label>:40:                                     ; preds = %36, %35
  %41 = phi %struct._element* [ null, %35 ], [ %39, %36 ], !dbg !2624
  br label %43, !dbg !2626

; <label>:42:                                     ; preds = %29
  br label %43, !dbg !2627

; <label>:43:                                     ; preds = %42, %40
  %44 = phi %struct._element* [ %41, %40 ], [ null, %42 ], !dbg !2629
  store %struct._element* %44, %struct._element** %9, align 8, !dbg !2631
  br label %45, !dbg !2632

; <label>:45:                                     ; preds = %253, %43
  %46 = load %struct._element*, %struct._element** %9, align 8, !dbg !2633
  %47 = icmp ne %struct._element* %46, null, !dbg !2636
  br i1 %47, label %48, label %56, !dbg !2637

; <label>:48:                                     ; preds = %45
  %49 = load %struct._element*, %struct._element** %9, align 8, !dbg !2638
  %50 = getelementptr inbounds %struct._element, %struct._element* %49, i32 0, i32 0, !dbg !2640
  %51 = load %struct._element*, %struct._element** %50, align 8, !dbg !2640
  store %struct._element* %51, %struct._element** %10, align 8, !dbg !2641
  %52 = load %struct._element*, %struct._element** %9, align 8, !dbg !2642
  %53 = getelementptr inbounds %struct._element, %struct._element* %52, i32 0, i32 2, !dbg !2643
  %54 = load i8*, i8** %53, align 8, !dbg !2643
  %55 = bitcast i8* %54 to %struct._vrrp_file*, !dbg !2644
  store %struct._vrrp_file* %55, %struct._vrrp_file** %3, align 8, !dbg !2645
  br label %56

; <label>:56:                                     ; preds = %48, %45
  %57 = phi i1 [ false, %45 ], [ true, %48 ]
  br i1 %57, label %58, label %255, !dbg !2646

; <label>:58:                                     ; preds = %56
  %59 = load %struct._vrrp_file*, %struct._vrrp_file** %3, align 8, !dbg !2648
  %60 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %59, i32 0, i32 5, !dbg !2651
  %61 = load %struct._list*, %struct._list** %60, align 8, !dbg !2651
  %62 = icmp eq %struct._list* %61, null, !dbg !2652
  br i1 %62, label %77, label %63, !dbg !2653

; <label>:63:                                     ; preds = %58
  %64 = load %struct._vrrp_file*, %struct._vrrp_file** %3, align 8, !dbg !2654
  %65 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %64, i32 0, i32 5, !dbg !2656
  %66 = load %struct._list*, %struct._list** %65, align 8, !dbg !2656
  %67 = getelementptr inbounds %struct._list, %struct._list* %66, i32 0, i32 0, !dbg !2657
  %68 = load %struct._element*, %struct._element** %67, align 8, !dbg !2657
  %69 = icmp eq %struct._element* %68, null, !dbg !2658
  br i1 %69, label %70, label %83, !dbg !2659

; <label>:70:                                     ; preds = %63
  %71 = load %struct._vrrp_file*, %struct._vrrp_file** %3, align 8, !dbg !2660
  %72 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %71, i32 0, i32 5, !dbg !2662
  %73 = load %struct._list*, %struct._list** %72, align 8, !dbg !2662
  %74 = getelementptr inbounds %struct._list, %struct._list* %73, i32 0, i32 1, !dbg !2663
  %75 = load %struct._element*, %struct._element** %74, align 8, !dbg !2663
  %76 = icmp eq %struct._element* %75, null, !dbg !2664
  br i1 %76, label %77, label %83, !dbg !2665

; <label>:77:                                     ; preds = %70, %58
  %78 = load %struct._vrrp_file*, %struct._vrrp_file** %3, align 8, !dbg !2666
  %79 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %78, i32 0, i32 0, !dbg !2668
  %80 = load i8*, i8** %79, align 8, !dbg !2668
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.18, i32 0, i32 0), i8* %80), !dbg !2669
  %81 = load %struct._list*, %struct._list** %2, align 8, !dbg !2670
  %82 = load %struct._element*, %struct._element** %9, align 8, !dbg !2671
  call void @remove_track_file(%struct._list* %81, %struct._element* %82), !dbg !2672
  br label %253, !dbg !2673

; <label>:83:                                     ; preds = %70, %63
  %84 = load %struct._vrrp_file*, %struct._vrrp_file** %3, align 8, !dbg !2674
  %85 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %84, i32 0, i32 1, !dbg !2675
  %86 = load i8*, i8** %85, align 8, !dbg !2675
  %87 = call i8* @realpath(i8* %86, i8* null) #6, !dbg !2676
  store i8* %87, i8** %4, align 8, !dbg !2677
  %88 = load i8*, i8** %4, align 8, !dbg !2678
  %89 = icmp ne i8* %88, null, !dbg !2678
  br i1 %89, label %90, label %116, !dbg !2680

; <label>:90:                                     ; preds = %83
  %91 = load %struct._vrrp_file*, %struct._vrrp_file** %3, align 8, !dbg !2681
  %92 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %91, i32 0, i32 1, !dbg !2684
  %93 = load i8*, i8** %92, align 8, !dbg !2684
  %94 = load i8*, i8** %4, align 8, !dbg !2685
  %95 = call i32 @strcmp(i8* %93, i8* %94) #7, !dbg !2686
  %96 = icmp ne i32 %95, 0, !dbg !2686
  br i1 %96, label %97, label %114, !dbg !2687

; <label>:97:                                     ; preds = %90
  %98 = load %struct._vrrp_file*, %struct._vrrp_file** %3, align 8, !dbg !2688
  %99 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %98, i32 0, i32 1, !dbg !2690
  %100 = load i8*, i8** %99, align 8, !dbg !2690
  call void @free(i8* %100) #6, !dbg !2691
  %101 = load %struct._vrrp_file*, %struct._vrrp_file** %3, align 8, !dbg !2692
  %102 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %101, i32 0, i32 1, !dbg !2693
  store i8* null, i8** %102, align 8, !dbg !2694
  %103 = load i8*, i8** %4, align 8, !dbg !2695
  %104 = call i64 @strlen(i8* %103) #7, !dbg !2696
  %105 = add i64 %104, 1, !dbg !2697
  %106 = call i8* @zalloc(i64 %105), !dbg !2698
  %107 = load %struct._vrrp_file*, %struct._vrrp_file** %3, align 8, !dbg !2700
  %108 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %107, i32 0, i32 1, !dbg !2701
  store i8* %106, i8** %108, align 8, !dbg !2702
  %109 = load %struct._vrrp_file*, %struct._vrrp_file** %3, align 8, !dbg !2703
  %110 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %109, i32 0, i32 1, !dbg !2704
  %111 = load i8*, i8** %110, align 8, !dbg !2704
  %112 = load i8*, i8** %4, align 8, !dbg !2705
  %113 = call i8* @strcpy(i8* %111, i8* %112) #6, !dbg !2706
  br label %114, !dbg !2707

; <label>:114:                                    ; preds = %97, %90
  %115 = load %struct._vrrp_file*, %struct._vrrp_file** %3, align 8, !dbg !2708
  call void @process_track_file(%struct._vrrp_file* %115), !dbg !2709
  br label %222, !dbg !2710

; <label>:116:                                    ; preds = %83
  %117 = call i32* @__errno_location() #1, !dbg !2711
  %118 = load i32, i32* %117, align 4, !dbg !2713
  %119 = icmp eq i32 %118, 2, !dbg !2714
  br i1 %119, label %120, label %215, !dbg !2715

; <label>:120:                                    ; preds = %116
  %121 = load %struct._vrrp_file*, %struct._vrrp_file** %3, align 8, !dbg !2716
  %122 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %121, i32 0, i32 1, !dbg !2719
  %123 = load i8*, i8** %122, align 8, !dbg !2719
  %124 = call i8* @strrchr(i8* %123, i32 47) #7, !dbg !2720
  store i8* %124, i8** %5, align 8, !dbg !2721
  %125 = icmp ne i8* %124, null, !dbg !2721
  br i1 %125, label %128, label %126, !dbg !2722

; <label>:126:                                    ; preds = %120
  %127 = call i8* @realpath(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), i8* null) #6, !dbg !2723
  store i8* %127, i8** %4, align 8, !dbg !2724
  br label %148, !dbg !2725

; <label>:128:                                    ; preds = %120
  %129 = load i8*, i8** %5, align 8, !dbg !2726
  store i8 0, i8* %129, align 1, !dbg !2728
  %130 = load %struct._vrrp_file*, %struct._vrrp_file** %3, align 8, !dbg !2729
  %131 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %130, i32 0, i32 1, !dbg !2730
  %132 = load i8*, i8** %131, align 8, !dbg !2730
  %133 = call i8* @realpath(i8* %132, i8* null) #6, !dbg !2731
  store i8* %133, i8** %4, align 8, !dbg !2732
  %134 = load i8*, i8** %4, align 8, !dbg !2733
  %135 = icmp ne i8* %134, null, !dbg !2733
  br i1 %135, label %136, label %147, !dbg !2735

; <label>:136:                                    ; preds = %128
  %137 = load i8*, i8** %4, align 8, !dbg !2736
  %138 = call i32 @stat(i8* %137, %struct.stat* %7) #6, !dbg !2737
  %139 = icmp ne i32 %138, 0, !dbg !2737
  br i1 %139, label %145, label %140, !dbg !2738

; <label>:140:                                    ; preds = %136
  %141 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 3, !dbg !2739
  %142 = load i32, i32* %141, align 8, !dbg !2739
  %143 = and i32 %142, 61440, !dbg !2740
  %144 = icmp eq i32 %143, 16384, !dbg !2741
  br i1 %144, label %147, label %145, !dbg !2742

; <label>:145:                                    ; preds = %140, %136
  %146 = load i8*, i8** %4, align 8, !dbg !2744
  call void @free(i8* %146) #6, !dbg !2746
  store i8* null, i8** %4, align 8, !dbg !2747
  br label %147, !dbg !2748

; <label>:147:                                    ; preds = %145, %140, %128
  br label %148

; <label>:148:                                    ; preds = %147, %126
  %149 = load i8*, i8** %4, align 8, !dbg !2749
  %150 = icmp ne i8* %149, null, !dbg !2749
  br i1 %150, label %157, label %151, !dbg !2751

; <label>:151:                                    ; preds = %148
  %152 = load %struct._vrrp_file*, %struct._vrrp_file** %3, align 8, !dbg !2752
  %153 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %152, i32 0, i32 0, !dbg !2754
  %154 = load i8*, i8** %153, align 8, !dbg !2754
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.20, i32 0, i32 0), i8* %154), !dbg !2755
  %155 = load %struct._list*, %struct._list** %2, align 8, !dbg !2756
  %156 = load %struct._element*, %struct._element** %9, align 8, !dbg !2757
  call void @remove_track_file(%struct._list* %155, %struct._element* %156), !dbg !2758
  br label %253, !dbg !2759

; <label>:157:                                    ; preds = %148
  %158 = load %struct._vrrp_file*, %struct._vrrp_file** %3, align 8, !dbg !2760
  %159 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %158, i32 0, i32 1, !dbg !2762
  %160 = load i8*, i8** %159, align 8, !dbg !2762
  %161 = load i8*, i8** %4, align 8, !dbg !2763
  %162 = call i32 @strcmp(i8* %160, i8* %161) #7, !dbg !2764
  %163 = icmp ne i32 %162, 0, !dbg !2764
  br i1 %163, label %164, label %208, !dbg !2765

; <label>:164:                                    ; preds = %157
  %165 = load i8*, i8** %4, align 8, !dbg !2766
  %166 = call i64 @strlen(i8* %165) #7, !dbg !2768
  %167 = load i8*, i8** %5, align 8, !dbg !2769
  %168 = icmp ne i8* %167, null, !dbg !2769
  br i1 %168, label %173, label %169, !dbg !2770

; <label>:169:                                    ; preds = %164
  %170 = load %struct._vrrp_file*, %struct._vrrp_file** %3, align 8, !dbg !2771
  %171 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %170, i32 0, i32 1, !dbg !2773
  %172 = load i8*, i8** %171, align 8, !dbg !2773
  br label %176, !dbg !2774

; <label>:173:                                    ; preds = %164
  %174 = load i8*, i8** %5, align 8, !dbg !2775
  %175 = getelementptr inbounds i8, i8* %174, i64 1, !dbg !2777
  br label %176, !dbg !2778

; <label>:176:                                    ; preds = %173, %169
  %177 = phi i8* [ %172, %169 ], [ %175, %173 ], !dbg !2779
  %178 = call i64 @strlen(i8* %177) #7, !dbg !2781
  %179 = add i64 %166, %178, !dbg !2782
  %180 = add i64 %179, 2, !dbg !2783
  %181 = call i8* @zalloc(i64 %180), !dbg !2784
  store i8* %181, i8** %6, align 8, !dbg !2786
  %182 = load i8*, i8** %6, align 8, !dbg !2787
  %183 = load i8*, i8** %4, align 8, !dbg !2788
  %184 = call i8* @strcpy(i8* %182, i8* %183) #6, !dbg !2789
  %185 = load i8*, i8** %6, align 8, !dbg !2790
  %186 = call i8* @strcat(i8* %185, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0)) #6, !dbg !2791
  %187 = load i8*, i8** %6, align 8, !dbg !2792
  %188 = load i8*, i8** %5, align 8, !dbg !2793
  %189 = icmp ne i8* %188, null, !dbg !2793
  br i1 %189, label %190, label %193, !dbg !2793

; <label>:190:                                    ; preds = %176
  %191 = load i8*, i8** %5, align 8, !dbg !2794
  %192 = getelementptr inbounds i8, i8* %191, i64 1, !dbg !2795
  br label %197, !dbg !2796

; <label>:193:                                    ; preds = %176
  %194 = load %struct._vrrp_file*, %struct._vrrp_file** %3, align 8, !dbg !2797
  %195 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %194, i32 0, i32 1, !dbg !2798
  %196 = load i8*, i8** %195, align 8, !dbg !2798
  br label %197, !dbg !2799

; <label>:197:                                    ; preds = %193, %190
  %198 = phi i8* [ %192, %190 ], [ %196, %193 ], !dbg !2800
  %199 = call i8* @strcat(i8* %187, i8* %198) #6, !dbg !2801
  %200 = load %struct._vrrp_file*, %struct._vrrp_file** %3, align 8, !dbg !2802
  %201 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %200, i32 0, i32 1, !dbg !2803
  %202 = load i8*, i8** %201, align 8, !dbg !2803
  call void @free(i8* %202) #6, !dbg !2804
  %203 = load %struct._vrrp_file*, %struct._vrrp_file** %3, align 8, !dbg !2805
  %204 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %203, i32 0, i32 1, !dbg !2806
  store i8* null, i8** %204, align 8, !dbg !2807
  %205 = load i8*, i8** %6, align 8, !dbg !2808
  %206 = load %struct._vrrp_file*, %struct._vrrp_file** %3, align 8, !dbg !2809
  %207 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %206, i32 0, i32 1, !dbg !2810
  store i8* %205, i8** %207, align 8, !dbg !2811
  br label %214, !dbg !2812

; <label>:208:                                    ; preds = %157
  %209 = load i8*, i8** %5, align 8, !dbg !2813
  %210 = icmp ne i8* %209, null, !dbg !2813
  br i1 %210, label %211, label %213, !dbg !2815

; <label>:211:                                    ; preds = %208
  %212 = load i8*, i8** %5, align 8, !dbg !2816
  store i8 47, i8* %212, align 1, !dbg !2817
  br label %213, !dbg !2818

; <label>:213:                                    ; preds = %211, %208
  br label %214

; <label>:214:                                    ; preds = %213, %197
  br label %221, !dbg !2819

; <label>:215:                                    ; preds = %116
  %216 = load %struct._vrrp_file*, %struct._vrrp_file** %3, align 8, !dbg !2820
  %217 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %216, i32 0, i32 0, !dbg !2822
  %218 = load i8*, i8** %217, align 8, !dbg !2822
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.22, i32 0, i32 0), i8* %218), !dbg !2823
  %219 = load %struct._list*, %struct._list** %2, align 8, !dbg !2824
  %220 = load %struct._element*, %struct._element** %9, align 8, !dbg !2825
  call void @remove_track_file(%struct._list* %219, %struct._element* %220), !dbg !2826
  br label %253, !dbg !2827

; <label>:221:                                    ; preds = %214
  br label %222

; <label>:222:                                    ; preds = %221, %114
  %223 = load i8*, i8** %4, align 8, !dbg !2828
  %224 = icmp ne i8* %223, null, !dbg !2828
  br i1 %224, label %225, label %227, !dbg !2830

; <label>:225:                                    ; preds = %222
  %226 = load i8*, i8** %4, align 8, !dbg !2831
  call void @free(i8* %226) #6, !dbg !2832
  br label %227, !dbg !2832

; <label>:227:                                    ; preds = %225, %222
  %228 = load %struct._vrrp_file*, %struct._vrrp_file** %3, align 8, !dbg !2833
  %229 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %228, i32 0, i32 1, !dbg !2834
  %230 = load i8*, i8** %229, align 8, !dbg !2834
  %231 = call i8* @strrchr(i8* %230, i32 47) #7, !dbg !2835
  %232 = getelementptr inbounds i8, i8* %231, i64 1, !dbg !2836
  %233 = load %struct._vrrp_file*, %struct._vrrp_file** %3, align 8, !dbg !2837
  %234 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %233, i32 0, i32 2, !dbg !2838
  store i8* %232, i8** %234, align 8, !dbg !2839
  %235 = load %struct._vrrp_file*, %struct._vrrp_file** %3, align 8, !dbg !2840
  %236 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %235, i32 0, i32 2, !dbg !2841
  %237 = load i8*, i8** %236, align 8, !dbg !2841
  %238 = load i8, i8* %237, align 1, !dbg !2842
  store i8 %238, i8* %8, align 1, !dbg !2843
  %239 = load %struct._vrrp_file*, %struct._vrrp_file** %3, align 8, !dbg !2844
  %240 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %239, i32 0, i32 2, !dbg !2845
  %241 = load i8*, i8** %240, align 8, !dbg !2845
  store i8 0, i8* %241, align 1, !dbg !2846
  %242 = load i32, i32* @inotify_fd, align 4, !dbg !2847
  %243 = load %struct._vrrp_file*, %struct._vrrp_file** %3, align 8, !dbg !2848
  %244 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %243, i32 0, i32 1, !dbg !2849
  %245 = load i8*, i8** %244, align 8, !dbg !2849
  %246 = call i32 @inotify_add_watch(i32 %242, i8* %245, i32 712) #6, !dbg !2850
  %247 = load %struct._vrrp_file*, %struct._vrrp_file** %3, align 8, !dbg !2851
  %248 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %247, i32 0, i32 4, !dbg !2852
  store i32 %246, i32* %248, align 4, !dbg !2853
  %249 = load i8, i8* %8, align 1, !dbg !2854
  %250 = load %struct._vrrp_file*, %struct._vrrp_file** %3, align 8, !dbg !2855
  %251 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %250, i32 0, i32 2, !dbg !2856
  %252 = load i8*, i8** %251, align 8, !dbg !2856
  store i8 %249, i8* %252, align 1, !dbg !2857
  br label %253, !dbg !2858

; <label>:253:                                    ; preds = %227, %215, %151, %77
  %254 = load %struct._element*, %struct._element** %10, align 8, !dbg !2859
  store %struct._element* %254, %struct._element** %9, align 8, !dbg !2861
  br label %45, !dbg !2862, !llvm.loop !2863

; <label>:255:                                    ; preds = %56
  %256 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !2865
  %257 = load i32, i32* @inotify_fd, align 4, !dbg !2866
  %258 = call %struct._thread* @thread_add_read(%struct._thread_master* %256, i32 (%struct._thread*)* @process_inotify, i8* null, i32 %257, i64 -1), !dbg !2867
  store %struct._thread* %258, %struct._thread** @inotify_thread, align 8, !dbg !2868
  br label %259, !dbg !2869

; <label>:259:                                    ; preds = %255, %28, %23
  ret void, !dbg !2870
}

; Function Attrs: nounwind
declare i32 @inotify_init1(i32) #3

; Function Attrs: nounwind uwtable
define internal void @remove_track_file(%struct._list*, %struct._element*) #0 !dbg !2872 {
  %3 = alloca %struct._list*, align 8
  %4 = alloca %struct._element*, align 8
  %5 = alloca %struct._vrrp_file*, align 8
  %6 = alloca %struct._element*, align 8
  %7 = alloca %struct._element*, align 8
  %8 = alloca %struct._element*, align 8
  %9 = alloca %struct._tracking_vrrp*, align 8
  %10 = alloca %struct._tracked_file*, align 8
  store %struct._list* %0, %struct._list** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._list** %3, metadata !2875, metadata !450), !dbg !2876
  store %struct._element* %1, %struct._element** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._element** %4, metadata !2877, metadata !450), !dbg !2878
  call void @llvm.dbg.declare(metadata %struct._vrrp_file** %5, metadata !2879, metadata !450), !dbg !2880
  %11 = load %struct._element*, %struct._element** %4, align 8, !dbg !2881
  %12 = getelementptr inbounds %struct._element, %struct._element* %11, i32 0, i32 2, !dbg !2882
  %13 = load i8*, i8** %12, align 8, !dbg !2882
  %14 = bitcast i8* %13 to %struct._vrrp_file*, !dbg !2883
  store %struct._vrrp_file* %14, %struct._vrrp_file** %5, align 8, !dbg !2880
  call void @llvm.dbg.declare(metadata %struct._element** %6, metadata !2884, metadata !450), !dbg !2885
  call void @llvm.dbg.declare(metadata %struct._element** %7, metadata !2886, metadata !450), !dbg !2887
  call void @llvm.dbg.declare(metadata %struct._element** %8, metadata !2888, metadata !450), !dbg !2889
  call void @llvm.dbg.declare(metadata %struct._tracking_vrrp** %9, metadata !2890, metadata !450), !dbg !2891
  call void @llvm.dbg.declare(metadata %struct._tracked_file** %10, metadata !2892, metadata !450), !dbg !2893
  %15 = load %struct._vrrp_file*, %struct._vrrp_file** %5, align 8, !dbg !2894
  %16 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %15, i32 0, i32 5, !dbg !2896
  %17 = load %struct._list*, %struct._list** %16, align 8, !dbg !2896
  %18 = icmp ne %struct._list* %17, null, !dbg !2897
  br i1 %18, label %19, label %33, !dbg !2897

; <label>:19:                                     ; preds = %2
  %20 = load %struct._vrrp_file*, %struct._vrrp_file** %5, align 8, !dbg !2898
  %21 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %20, i32 0, i32 5, !dbg !2900
  %22 = load %struct._list*, %struct._list** %21, align 8, !dbg !2900
  %23 = icmp ne %struct._list* %22, null, !dbg !2901
  br i1 %23, label %25, label %24, !dbg !2902

; <label>:24:                                     ; preds = %19
  br label %31, !dbg !2903

; <label>:25:                                     ; preds = %19
  %26 = load %struct._vrrp_file*, %struct._vrrp_file** %5, align 8, !dbg !2905
  %27 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %26, i32 0, i32 5, !dbg !2907
  %28 = load %struct._list*, %struct._list** %27, align 8, !dbg !2907
  %29 = getelementptr inbounds %struct._list, %struct._list* %28, i32 0, i32 0, !dbg !2908
  %30 = load %struct._element*, %struct._element** %29, align 8, !dbg !2908
  br label %31, !dbg !2909

; <label>:31:                                     ; preds = %25, %24
  %32 = phi %struct._element* [ null, %24 ], [ %30, %25 ], !dbg !2910
  br label %34, !dbg !2912

; <label>:33:                                     ; preds = %2
  br label %34, !dbg !2913

; <label>:34:                                     ; preds = %33, %31
  %35 = phi %struct._element* [ %32, %31 ], [ null, %33 ], !dbg !2915
  store %struct._element* %35, %struct._element** %6, align 8, !dbg !2917
  br label %36, !dbg !2918

; <label>:36:                                     ; preds = %104, %34
  %37 = load %struct._element*, %struct._element** %6, align 8, !dbg !2919
  %38 = icmp ne %struct._element* %37, null, !dbg !2922
  br i1 %38, label %39, label %44, !dbg !2923

; <label>:39:                                     ; preds = %36
  %40 = load %struct._element*, %struct._element** %6, align 8, !dbg !2924
  %41 = getelementptr inbounds %struct._element, %struct._element* %40, i32 0, i32 2, !dbg !2926
  %42 = load i8*, i8** %41, align 8, !dbg !2926
  %43 = bitcast i8* %42 to %struct._tracking_vrrp*, !dbg !2927
  store %struct._tracking_vrrp* %43, %struct._tracking_vrrp** %9, align 8, !dbg !2928
  br label %44

; <label>:44:                                     ; preds = %39, %36
  %45 = phi i1 [ false, %36 ], [ true, %39 ]
  br i1 %45, label %46, label %108, !dbg !2929

; <label>:46:                                     ; preds = %44
  %47 = load %struct._tracking_vrrp*, %struct._tracking_vrrp** %9, align 8, !dbg !2931
  %48 = getelementptr inbounds %struct._tracking_vrrp, %struct._tracking_vrrp* %47, i32 0, i32 1, !dbg !2934
  %49 = load %struct._vrrp_t*, %struct._vrrp_t** %48, align 8, !dbg !2934
  %50 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %49, i32 0, i32 13, !dbg !2935
  %51 = load %struct._list*, %struct._list** %50, align 8, !dbg !2935
  %52 = icmp ne %struct._list* %51, null, !dbg !2936
  br i1 %52, label %53, label %71, !dbg !2936

; <label>:53:                                     ; preds = %46
  %54 = load %struct._tracking_vrrp*, %struct._tracking_vrrp** %9, align 8, !dbg !2937
  %55 = getelementptr inbounds %struct._tracking_vrrp, %struct._tracking_vrrp* %54, i32 0, i32 1, !dbg !2939
  %56 = load %struct._vrrp_t*, %struct._vrrp_t** %55, align 8, !dbg !2939
  %57 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %56, i32 0, i32 13, !dbg !2940
  %58 = load %struct._list*, %struct._list** %57, align 8, !dbg !2940
  %59 = icmp ne %struct._list* %58, null, !dbg !2941
  br i1 %59, label %61, label %60, !dbg !2942

; <label>:60:                                     ; preds = %53
  br label %69, !dbg !2943

; <label>:61:                                     ; preds = %53
  %62 = load %struct._tracking_vrrp*, %struct._tracking_vrrp** %9, align 8, !dbg !2945
  %63 = getelementptr inbounds %struct._tracking_vrrp, %struct._tracking_vrrp* %62, i32 0, i32 1, !dbg !2947
  %64 = load %struct._vrrp_t*, %struct._vrrp_t** %63, align 8, !dbg !2947
  %65 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %64, i32 0, i32 13, !dbg !2948
  %66 = load %struct._list*, %struct._list** %65, align 8, !dbg !2948
  %67 = getelementptr inbounds %struct._list, %struct._list* %66, i32 0, i32 0, !dbg !2949
  %68 = load %struct._element*, %struct._element** %67, align 8, !dbg !2949
  br label %69, !dbg !2950

; <label>:69:                                     ; preds = %61, %60
  %70 = phi %struct._element* [ null, %60 ], [ %68, %61 ], !dbg !2951
  br label %72, !dbg !2953

; <label>:71:                                     ; preds = %46
  br label %72, !dbg !2954

; <label>:72:                                     ; preds = %71, %69
  %73 = phi %struct._element* [ %70, %69 ], [ null, %71 ], !dbg !2956
  store %struct._element* %73, %struct._element** %7, align 8, !dbg !2958
  br label %74, !dbg !2959

; <label>:74:                                     ; preds = %101, %72
  %75 = load %struct._element*, %struct._element** %7, align 8, !dbg !2960
  %76 = icmp ne %struct._element* %75, null, !dbg !2963
  br i1 %76, label %77, label %85, !dbg !2964

; <label>:77:                                     ; preds = %74
  %78 = load %struct._element*, %struct._element** %7, align 8, !dbg !2965
  %79 = getelementptr inbounds %struct._element, %struct._element* %78, i32 0, i32 0, !dbg !2967
  %80 = load %struct._element*, %struct._element** %79, align 8, !dbg !2967
  store %struct._element* %80, %struct._element** %8, align 8, !dbg !2968
  %81 = load %struct._element*, %struct._element** %7, align 8, !dbg !2969
  %82 = getelementptr inbounds %struct._element, %struct._element* %81, i32 0, i32 2, !dbg !2970
  %83 = load i8*, i8** %82, align 8, !dbg !2970
  %84 = bitcast i8* %83 to %struct._tracked_file*, !dbg !2971
  store %struct._tracked_file* %84, %struct._tracked_file** %10, align 8, !dbg !2972
  br label %85

; <label>:85:                                     ; preds = %77, %74
  %86 = phi i1 [ false, %74 ], [ true, %77 ]
  br i1 %86, label %87, label %103, !dbg !2973

; <label>:87:                                     ; preds = %85
  %88 = load %struct._tracked_file*, %struct._tracked_file** %10, align 8, !dbg !2975
  %89 = getelementptr inbounds %struct._tracked_file, %struct._tracked_file* %88, i32 0, i32 0, !dbg !2978
  %90 = load %struct._vrrp_file*, %struct._vrrp_file** %89, align 8, !dbg !2978
  %91 = load %struct._vrrp_file*, %struct._vrrp_file** %5, align 8, !dbg !2979
  %92 = icmp eq %struct._vrrp_file* %90, %91, !dbg !2980
  br i1 %92, label %93, label %100, !dbg !2981

; <label>:93:                                     ; preds = %87
  %94 = load %struct._tracking_vrrp*, %struct._tracking_vrrp** %9, align 8, !dbg !2982
  %95 = getelementptr inbounds %struct._tracking_vrrp, %struct._tracking_vrrp* %94, i32 0, i32 1, !dbg !2983
  %96 = load %struct._vrrp_t*, %struct._vrrp_t** %95, align 8, !dbg !2983
  %97 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %96, i32 0, i32 13, !dbg !2984
  %98 = load %struct._list*, %struct._list** %97, align 8, !dbg !2984
  %99 = load %struct._element*, %struct._element** %7, align 8, !dbg !2985
  call void @free_list_element(%struct._list* %98, %struct._element* %99), !dbg !2986
  br label %100, !dbg !2986

; <label>:100:                                    ; preds = %93, %87
  br label %101, !dbg !2987

; <label>:101:                                    ; preds = %100
  %102 = load %struct._element*, %struct._element** %8, align 8, !dbg !2988
  store %struct._element* %102, %struct._element** %7, align 8, !dbg !2990
  br label %74, !dbg !2991, !llvm.loop !2992

; <label>:103:                                    ; preds = %85
  br label %104, !dbg !2994

; <label>:104:                                    ; preds = %103
  %105 = load %struct._element*, %struct._element** %6, align 8, !dbg !2995
  %106 = getelementptr inbounds %struct._element, %struct._element* %105, i32 0, i32 0, !dbg !2997
  %107 = load %struct._element*, %struct._element** %106, align 8, !dbg !2997
  store %struct._element* %107, %struct._element** %6, align 8, !dbg !2998
  br label %36, !dbg !2999, !llvm.loop !3000

; <label>:108:                                    ; preds = %44
  %109 = load %struct._list*, %struct._list** %3, align 8, !dbg !3002
  %110 = load %struct._element*, %struct._element** %4, align 8, !dbg !3003
  call void @free_list_element(%struct._list* %109, %struct._element* %110), !dbg !3004
  ret void, !dbg !3005
}

; Function Attrs: nounwind
declare i8* @realpath(i8*, i8*) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @process_track_file(%struct._vrrp_file*) #0 !dbg !3006 {
  %2 = alloca %struct._vrrp_file*, align 8
  %3 = alloca i64, align 8
  %4 = alloca [128 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct._vrrp_file* %0, %struct._vrrp_file** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vrrp_file** %2, metadata !3009, metadata !450), !dbg !3010
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3011, metadata !450), !dbg !3012
  store i64 0, i64* %3, align 8, !dbg !3012
  call void @llvm.dbg.declare(metadata [128 x i8]* %4, metadata !3013, metadata !450), !dbg !3017
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3018, metadata !450), !dbg !3019
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3020, metadata !450), !dbg !3021
  %7 = load %struct._vrrp_file*, %struct._vrrp_file** %2, align 8, !dbg !3022
  %8 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %7, i32 0, i32 1, !dbg !3024
  %9 = load i8*, i8** %8, align 8, !dbg !3024
  %10 = call i32 (i8*, i32, ...) @open(i8* %9, i32 2048), !dbg !3025
  store i32 %10, i32* %5, align 4, !dbg !3026
  %11 = icmp ne i32 %10, -1, !dbg !3027
  br i1 %11, label %12, label %25, !dbg !3028

; <label>:12:                                     ; preds = %1
  %13 = load i32, i32* %5, align 4, !dbg !3029
  %14 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i32 0, i32 0, !dbg !3032
  %15 = call i64 @read(i32 %13, i8* %14, i64 127), !dbg !3033
  store i64 %15, i64* %6, align 8, !dbg !3034
  %16 = icmp sgt i64 %15, 0, !dbg !3035
  br i1 %16, label %17, label %22, !dbg !3036

; <label>:17:                                     ; preds = %12
  %18 = load i64, i64* %6, align 8, !dbg !3037
  %19 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 %18, !dbg !3039
  store i8 0, i8* %19, align 1, !dbg !3040
  %20 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i32 0, i32 0, !dbg !3041
  %21 = call i64 @strtol(i8* %20, i8** null, i32 0) #6, !dbg !3042
  store i64 %21, i64* %3, align 8, !dbg !3043
  br label %22, !dbg !3044

; <label>:22:                                     ; preds = %17, %12
  %23 = load i32, i32* %5, align 4, !dbg !3045
  %24 = call i32 @close(i32 %23), !dbg !3046
  br label %25, !dbg !3047

; <label>:25:                                     ; preds = %22, %1
  %26 = load i64, i64* %3, align 8, !dbg !3048
  %27 = icmp sgt i64 %26, 254, !dbg !3050
  br i1 %27, label %28, label %29, !dbg !3051

; <label>:28:                                     ; preds = %25
  store i64 254, i64* %3, align 8, !dbg !3052
  br label %34, !dbg !3053

; <label>:29:                                     ; preds = %25
  %30 = load i64, i64* %3, align 8, !dbg !3054
  %31 = icmp slt i64 %30, -254, !dbg !3056
  br i1 %31, label %32, label %33, !dbg !3057

; <label>:32:                                     ; preds = %29
  store i64 -254, i64* %3, align 8, !dbg !3058
  br label %33, !dbg !3059

; <label>:33:                                     ; preds = %32, %29
  br label %34

; <label>:34:                                     ; preds = %33, %28
  %35 = load %struct._vrrp_file*, %struct._vrrp_file** %2, align 8, !dbg !3060
  %36 = load i64, i64* %3, align 8, !dbg !3061
  %37 = trunc i64 %36 to i32, !dbg !3062
  call void @update_track_file_status(%struct._vrrp_file* %35, i32 %37), !dbg !3063
  ret void, !dbg !3064
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #4

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #3

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #3

; Function Attrs: nounwind
declare i32 @inotify_add_watch(i32, i8*, i32) #3

declare %struct._thread* @thread_add_read(%struct._thread_master*, i32 (%struct._thread*)*, i8*, i32, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @process_inotify(%struct._thread*) #0 !dbg !3065 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._thread*, align 8
  %4 = alloca [272 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.inotify_event*, align 8
  %8 = alloca %struct._vrrp_file*, align 8
  %9 = alloca %struct._element*, align 8
  %10 = alloca i32, align 4
  store %struct._thread* %0, %struct._thread** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %3, metadata !3068, metadata !450), !dbg !3069
  call void @llvm.dbg.declare(metadata [272 x i8]* %4, metadata !3070, metadata !450), !dbg !3074
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3075, metadata !450), !dbg !3076
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3077, metadata !450), !dbg !3078
  call void @llvm.dbg.declare(metadata %struct.inotify_event** %7, metadata !3079, metadata !450), !dbg !3080
  call void @llvm.dbg.declare(metadata %struct._vrrp_file** %8, metadata !3081, metadata !450), !dbg !3082
  call void @llvm.dbg.declare(metadata %struct._element** %9, metadata !3083, metadata !450), !dbg !3084
  call void @llvm.dbg.declare(metadata i32* %10, metadata !3085, metadata !450), !dbg !3086
  %11 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !3087
  %12 = getelementptr inbounds %struct._thread, %struct._thread* %11, i32 0, i32 6, !dbg !3088
  %13 = bitcast %union.anon.0* %12 to i32*, !dbg !3089
  %14 = load i32, i32* %13, align 8, !dbg !3089
  store i32 %14, i32* %10, align 4, !dbg !3086
  %15 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !3090
  %16 = load i32, i32* %10, align 4, !dbg !3091
  %17 = call %struct._thread* @thread_add_read(%struct._thread_master* %15, i32 (%struct._thread*)* @process_inotify, i8* null, i32 %16, i64 -1), !dbg !3092
  store %struct._thread* %17, %struct._thread** @inotify_thread, align 8, !dbg !3093
  br label %18, !dbg !3094

; <label>:18:                                     ; preds = %1, %35, %131
  %19 = load i32, i32* %10, align 4, !dbg !3095
  %20 = getelementptr inbounds [272 x i8], [272 x i8]* %4, i32 0, i32 0, !dbg !3098
  %21 = call i64 @read(i32 %19, i8* %20, i64 272), !dbg !3099
  store i64 %21, i64* %6, align 8, !dbg !3100
  %22 = icmp slt i64 %21, 16, !dbg !3101
  br i1 %22, label %23, label %41, !dbg !3102

; <label>:23:                                     ; preds = %18
  %24 = load i64, i64* %6, align 8, !dbg !3103
  %25 = icmp eq i64 %24, -1, !dbg !3106
  br i1 %25, label %26, label %39, !dbg !3107

; <label>:26:                                     ; preds = %23
  %27 = call i32* @__errno_location() #1, !dbg !3108
  %28 = load i32, i32* %27, align 4, !dbg !3111
  %29 = icmp eq i32 %28, 11, !dbg !3112
  br i1 %29, label %30, label %31, !dbg !3113

; <label>:30:                                     ; preds = %26
  store i32 0, i32* %2, align 4, !dbg !3114
  br label %132, !dbg !3114

; <label>:31:                                     ; preds = %26
  %32 = call i32* @__errno_location() #1, !dbg !3115
  %33 = load i32, i32* %32, align 4, !dbg !3117
  %34 = icmp eq i32 %33, 4, !dbg !3118
  br i1 %34, label %35, label %36, !dbg !3119

; <label>:35:                                     ; preds = %31
  br label %18, !dbg !3120, !llvm.loop !3121

; <label>:36:                                     ; preds = %31
  %37 = call i32* @__errno_location() #1, !dbg !3122
  %38 = load i32, i32* %37, align 4, !dbg !3123
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.23, i32 0, i32 0), i32 %38), !dbg !3124
  store i32 0, i32* %2, align 4, !dbg !3126
  br label %132, !dbg !3126

; <label>:39:                                     ; preds = %23
  %40 = load i64, i64* %6, align 8, !dbg !3127
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.24, i32 0, i32 0), i64 %40), !dbg !3128
  store i32 0, i32* %2, align 4, !dbg !3129
  br label %132, !dbg !3129

; <label>:41:                                     ; preds = %18
  %42 = getelementptr inbounds [272 x i8], [272 x i8]* %4, i32 0, i32 0, !dbg !3130
  store i8* %42, i8** %5, align 8, !dbg !3132
  br label %43, !dbg !3133

; <label>:43:                                     ; preds = %123, %41
  %44 = load i8*, i8** %5, align 8, !dbg !3134
  %45 = getelementptr inbounds [272 x i8], [272 x i8]* %4, i32 0, i32 0, !dbg !3137
  %46 = load i64, i64* %6, align 8, !dbg !3138
  %47 = getelementptr inbounds i8, i8* %45, i64 %46, !dbg !3139
  %48 = icmp ult i8* %44, %47, !dbg !3140
  br i1 %48, label %49, label %131, !dbg !3141

; <label>:49:                                     ; preds = %43
  %50 = load i8*, i8** %5, align 8, !dbg !3142
  %51 = bitcast i8* %50 to %struct.inotify_event*, !dbg !3144
  store %struct.inotify_event* %51, %struct.inotify_event** %7, align 8, !dbg !3145
  %52 = load %struct.inotify_event*, %struct.inotify_event** %7, align 8, !dbg !3146
  %53 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %52, i32 0, i32 1, !dbg !3148
  %54 = load i32, i32* %53, align 4, !dbg !3148
  %55 = and i32 %54, 1073741824, !dbg !3149
  %56 = icmp ne i32 %55, 0, !dbg !3149
  br i1 %56, label %57, label %58, !dbg !3150

; <label>:57:                                     ; preds = %49
  br label %123, !dbg !3151

; <label>:58:                                     ; preds = %49
  %59 = load %struct.inotify_event*, %struct.inotify_event** %7, align 8, !dbg !3152
  %60 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %59, i32 0, i32 1, !dbg !3154
  %61 = load i32, i32* %60, align 4, !dbg !3154
  %62 = and i32 %61, 712, !dbg !3155
  %63 = icmp ne i32 %62, 0, !dbg !3155
  br i1 %63, label %68, label %64, !dbg !3156

; <label>:64:                                     ; preds = %58
  %65 = load %struct.inotify_event*, %struct.inotify_event** %7, align 8, !dbg !3157
  %66 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %65, i32 0, i32 1, !dbg !3159
  %67 = load i32, i32* %66, align 4, !dbg !3159
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i32 0, i32 0), i32 %67), !dbg !3160
  br label %123, !dbg !3161

; <label>:68:                                     ; preds = %58
  %69 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !3162
  %70 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %69, i32 0, i32 10, !dbg !3164
  %71 = load %struct._list*, %struct._list** %70, align 8, !dbg !3164
  %72 = icmp ne %struct._list* %71, null, !dbg !3165
  br i1 %72, label %74, label %73, !dbg !3166

; <label>:73:                                     ; preds = %68
  br label %80, !dbg !3167

; <label>:74:                                     ; preds = %68
  %75 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !3169
  %76 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %75, i32 0, i32 10, !dbg !3171
  %77 = load %struct._list*, %struct._list** %76, align 8, !dbg !3171
  %78 = getelementptr inbounds %struct._list, %struct._list* %77, i32 0, i32 0, !dbg !3172
  %79 = load %struct._element*, %struct._element** %78, align 8, !dbg !3172
  br label %80, !dbg !3173

; <label>:80:                                     ; preds = %74, %73
  %81 = phi %struct._element* [ null, %73 ], [ %79, %74 ], !dbg !3174
  store %struct._element* %81, %struct._element** %9, align 8, !dbg !3176
  br label %82, !dbg !3177

; <label>:82:                                     ; preds = %118, %80
  %83 = load %struct._element*, %struct._element** %9, align 8, !dbg !3178
  %84 = icmp ne %struct._element* %83, null, !dbg !3181
  br i1 %84, label %85, label %122, !dbg !3181

; <label>:85:                                     ; preds = %82
  %86 = load %struct._element*, %struct._element** %9, align 8, !dbg !3182
  %87 = getelementptr inbounds %struct._element, %struct._element* %86, i32 0, i32 2, !dbg !3184
  %88 = load i8*, i8** %87, align 8, !dbg !3184
  %89 = bitcast i8* %88 to %struct._vrrp_file*, !dbg !3185
  store %struct._vrrp_file* %89, %struct._vrrp_file** %8, align 8, !dbg !3186
  %90 = load %struct._vrrp_file*, %struct._vrrp_file** %8, align 8, !dbg !3187
  %91 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %90, i32 0, i32 4, !dbg !3189
  %92 = load i32, i32* %91, align 4, !dbg !3189
  %93 = load %struct.inotify_event*, %struct.inotify_event** %7, align 8, !dbg !3190
  %94 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %93, i32 0, i32 0, !dbg !3191
  %95 = load i32, i32* %94, align 4, !dbg !3191
  %96 = icmp ne i32 %92, %95, !dbg !3192
  br i1 %96, label %106, label %97, !dbg !3193

; <label>:97:                                     ; preds = %85
  %98 = load %struct._vrrp_file*, %struct._vrrp_file** %8, align 8, !dbg !3194
  %99 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %98, i32 0, i32 2, !dbg !3195
  %100 = load i8*, i8** %99, align 8, !dbg !3195
  %101 = load %struct.inotify_event*, %struct.inotify_event** %7, align 8, !dbg !3196
  %102 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %101, i32 0, i32 4, !dbg !3197
  %103 = getelementptr inbounds [0 x i8], [0 x i8]* %102, i32 0, i32 0, !dbg !3196
  %104 = call i32 @strcmp(i8* %100, i8* %103) #7, !dbg !3198
  %105 = icmp ne i32 %104, 0, !dbg !3198
  br i1 %105, label %106, label %107, !dbg !3199

; <label>:106:                                    ; preds = %97, %85
  br label %118, !dbg !3201

; <label>:107:                                    ; preds = %97
  %108 = load %struct.inotify_event*, %struct.inotify_event** %7, align 8, !dbg !3202
  %109 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %108, i32 0, i32 1, !dbg !3204
  %110 = load i32, i32* %109, align 4, !dbg !3204
  %111 = and i32 %110, 576, !dbg !3205
  %112 = icmp ne i32 %111, 0, !dbg !3205
  br i1 %112, label %113, label %115, !dbg !3206

; <label>:113:                                    ; preds = %107
  %114 = load %struct._vrrp_file*, %struct._vrrp_file** %8, align 8, !dbg !3207
  call void @update_track_file_status(%struct._vrrp_file* %114, i32 0), !dbg !3209
  br label %117, !dbg !3210

; <label>:115:                                    ; preds = %107
  %116 = load %struct._vrrp_file*, %struct._vrrp_file** %8, align 8, !dbg !3211
  call void @process_track_file(%struct._vrrp_file* %116), !dbg !3213
  br label %117

; <label>:117:                                    ; preds = %115, %113
  br label %118, !dbg !3214

; <label>:118:                                    ; preds = %117, %106
  %119 = load %struct._element*, %struct._element** %9, align 8, !dbg !3215
  %120 = getelementptr inbounds %struct._element, %struct._element* %119, i32 0, i32 0, !dbg !3217
  %121 = load %struct._element*, %struct._element** %120, align 8, !dbg !3217
  store %struct._element* %121, %struct._element** %9, align 8, !dbg !3218
  br label %82, !dbg !3219, !llvm.loop !3220

; <label>:122:                                    ; preds = %82
  br label %123, !dbg !3222

; <label>:123:                                    ; preds = %122, %64, %57
  %124 = load %struct.inotify_event*, %struct.inotify_event** %7, align 8, !dbg !3223
  %125 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %124, i32 0, i32 3, !dbg !3225
  %126 = load i32, i32* %125, align 4, !dbg !3225
  %127 = zext i32 %126 to i64, !dbg !3223
  %128 = add i64 %127, 16, !dbg !3226
  %129 = load i8*, i8** %5, align 8, !dbg !3227
  %130 = getelementptr inbounds i8, i8* %129, i64 %128, !dbg !3227
  store i8* %130, i8** %5, align 8, !dbg !3227
  br label %43, !dbg !3228, !llvm.loop !3229

; <label>:131:                                    ; preds = %43
  br label %18, !dbg !3231, !llvm.loop !3121

; <label>:132:                                    ; preds = %39, %36, %30
  %133 = load i32, i32* %2, align 4, !dbg !3233
  ret i32 %133, !dbg !3233
}

; Function Attrs: nounwind uwtable
define void @stop_track_files() #0 !dbg !3234 {
  %1 = load %struct._thread*, %struct._thread** @inotify_thread, align 8, !dbg !3235
  %2 = icmp ne %struct._thread* %1, null, !dbg !3235
  br i1 %2, label %3, label %5, !dbg !3237

; <label>:3:                                      ; preds = %0
  %4 = load %struct._thread*, %struct._thread** @inotify_thread, align 8, !dbg !3238
  call void @thread_cancel(%struct._thread* %4), !dbg !3240
  store %struct._thread* null, %struct._thread** @inotify_thread, align 8, !dbg !3241
  br label %5, !dbg !3242

; <label>:5:                                      ; preds = %3, %0
  %6 = load i32, i32* @inotify_fd, align 4, !dbg !3243
  %7 = icmp ne i32 %6, -1, !dbg !3245
  br i1 %7, label %8, label %11, !dbg !3246

; <label>:8:                                      ; preds = %5
  %9 = load i32, i32* @inotify_fd, align 4, !dbg !3247
  %10 = call i32 @close(i32 %9), !dbg !3249
  store i32 -1, i32* @inotify_fd, align 4, !dbg !3250
  br label %11, !dbg !3251

; <label>:11:                                     ; preds = %8, %5
  ret void, !dbg !3252
}

declare void @thread_cancel(%struct._thread*) #2

declare i32 @close(i32) #2

declare void @try_up_instance(%struct._vrrp_t*, i1 zeroext) #2

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #5

declare void @free_list_element(%struct._list*, %struct._element*) #2

declare i32 @open(i8*, i32, ...) #2

declare i64 @read(i32, i8*, i64) #2

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #3

; Function Attrs: nounwind uwtable
define internal void @update_track_file_status(%struct._vrrp_file*, i32) #0 !dbg !3253 {
  %3 = alloca %struct._vrrp_file*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._element*, align 8
  %6 = alloca %struct._tracking_vrrp*, align 8
  %7 = alloca i32, align 4
  store %struct._vrrp_file* %0, %struct._vrrp_file** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._vrrp_file** %3, metadata !3256, metadata !450), !dbg !3257
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3258, metadata !450), !dbg !3259
  call void @llvm.dbg.declare(metadata %struct._element** %5, metadata !3260, metadata !450), !dbg !3261
  call void @llvm.dbg.declare(metadata %struct._tracking_vrrp** %6, metadata !3262, metadata !450), !dbg !3263
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3264, metadata !450), !dbg !3265
  %8 = load i32, i32* %4, align 4, !dbg !3266
  %9 = load %struct._vrrp_file*, %struct._vrrp_file** %3, align 8, !dbg !3268
  %10 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %9, i32 0, i32 6, !dbg !3269
  %11 = load i32, i32* %10, align 8, !dbg !3269
  %12 = icmp eq i32 %8, %11, !dbg !3270
  br i1 %12, label %13, label %14, !dbg !3271

; <label>:13:                                     ; preds = %2
  br label %82, !dbg !3272

; <label>:14:                                     ; preds = %2
  %15 = load %struct._vrrp_file*, %struct._vrrp_file** %3, align 8, !dbg !3273
  %16 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %15, i32 0, i32 5, !dbg !3275
  %17 = load %struct._list*, %struct._list** %16, align 8, !dbg !3275
  %18 = icmp ne %struct._list* %17, null, !dbg !3276
  br i1 %18, label %19, label %33, !dbg !3276

; <label>:19:                                     ; preds = %14
  %20 = load %struct._vrrp_file*, %struct._vrrp_file** %3, align 8, !dbg !3277
  %21 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %20, i32 0, i32 5, !dbg !3279
  %22 = load %struct._list*, %struct._list** %21, align 8, !dbg !3279
  %23 = icmp ne %struct._list* %22, null, !dbg !3280
  br i1 %23, label %25, label %24, !dbg !3281

; <label>:24:                                     ; preds = %19
  br label %31, !dbg !3282

; <label>:25:                                     ; preds = %19
  %26 = load %struct._vrrp_file*, %struct._vrrp_file** %3, align 8, !dbg !3284
  %27 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %26, i32 0, i32 5, !dbg !3286
  %28 = load %struct._list*, %struct._list** %27, align 8, !dbg !3286
  %29 = getelementptr inbounds %struct._list, %struct._list* %28, i32 0, i32 0, !dbg !3287
  %30 = load %struct._element*, %struct._element** %29, align 8, !dbg !3287
  br label %31, !dbg !3288

; <label>:31:                                     ; preds = %25, %24
  %32 = phi %struct._element* [ null, %24 ], [ %30, %25 ], !dbg !3289
  br label %34, !dbg !3291

; <label>:33:                                     ; preds = %14
  br label %34, !dbg !3292

; <label>:34:                                     ; preds = %33, %31
  %35 = phi %struct._element* [ %32, %31 ], [ null, %33 ], !dbg !3294
  store %struct._element* %35, %struct._element** %5, align 8, !dbg !3296
  br label %36, !dbg !3297

; <label>:36:                                     ; preds = %74, %34
  %37 = load %struct._element*, %struct._element** %5, align 8, !dbg !3298
  %38 = icmp ne %struct._element* %37, null, !dbg !3301
  br i1 %38, label %39, label %44, !dbg !3302

; <label>:39:                                     ; preds = %36
  %40 = load %struct._element*, %struct._element** %5, align 8, !dbg !3303
  %41 = getelementptr inbounds %struct._element, %struct._element* %40, i32 0, i32 2, !dbg !3305
  %42 = load i8*, i8** %41, align 8, !dbg !3305
  %43 = bitcast i8* %42 to %struct._tracking_vrrp*, !dbg !3306
  store %struct._tracking_vrrp* %43, %struct._tracking_vrrp** %6, align 8, !dbg !3307
  br label %44

; <label>:44:                                     ; preds = %39, %36
  %45 = phi i1 [ false, %36 ], [ true, %39 ]
  br i1 %45, label %46, label %78, !dbg !3308

; <label>:46:                                     ; preds = %44
  %47 = load %struct._tracking_vrrp*, %struct._tracking_vrrp** %6, align 8, !dbg !3310
  %48 = getelementptr inbounds %struct._tracking_vrrp, %struct._tracking_vrrp* %47, i32 0, i32 0, !dbg !3313
  %49 = load i32, i32* %48, align 8, !dbg !3313
  %50 = icmp ne i32 %49, 0, !dbg !3310
  br i1 %50, label %55, label %51, !dbg !3314

; <label>:51:                                     ; preds = %46
  %52 = load i32, i32* %4, align 4, !dbg !3315
  %53 = icmp ne i32 %52, 0, !dbg !3315
  %54 = select i1 %53, i32 -254, i32 0, !dbg !3315
  store i32 %54, i32* %7, align 4, !dbg !3316
  br label %70, !dbg !3317

; <label>:55:                                     ; preds = %46
  %56 = load i32, i32* %4, align 4, !dbg !3318
  %57 = load %struct._tracking_vrrp*, %struct._tracking_vrrp** %6, align 8, !dbg !3320
  %58 = getelementptr inbounds %struct._tracking_vrrp, %struct._tracking_vrrp* %57, i32 0, i32 0, !dbg !3321
  %59 = load i32, i32* %58, align 8, !dbg !3321
  %60 = mul nsw i32 %56, %59, !dbg !3322
  store i32 %60, i32* %7, align 4, !dbg !3323
  %61 = load i32, i32* %7, align 4, !dbg !3324
  %62 = icmp slt i32 %61, -254, !dbg !3326
  br i1 %62, label %63, label %64, !dbg !3327

; <label>:63:                                     ; preds = %55
  store i32 -254, i32* %7, align 4, !dbg !3328
  br label %69, !dbg !3329

; <label>:64:                                     ; preds = %55
  %65 = load i32, i32* %7, align 4, !dbg !3330
  %66 = icmp sgt i32 %65, 253, !dbg !3332
  br i1 %66, label %67, label %68, !dbg !3333

; <label>:67:                                     ; preds = %64
  store i32 253, i32* %7, align 4, !dbg !3334
  br label %68, !dbg !3335

; <label>:68:                                     ; preds = %67, %64
  br label %69

; <label>:69:                                     ; preds = %68, %63
  br label %70

; <label>:70:                                     ; preds = %69, %51
  %71 = load %struct._vrrp_file*, %struct._vrrp_file** %3, align 8, !dbg !3336
  %72 = load i32, i32* %7, align 4, !dbg !3337
  %73 = load %struct._tracking_vrrp*, %struct._tracking_vrrp** %6, align 8, !dbg !3338
  call void @process_update_track_file_status(%struct._vrrp_file* %71, i32 %72, %struct._tracking_vrrp* %73), !dbg !3339
  br label %74, !dbg !3340

; <label>:74:                                     ; preds = %70
  %75 = load %struct._element*, %struct._element** %5, align 8, !dbg !3341
  %76 = getelementptr inbounds %struct._element, %struct._element* %75, i32 0, i32 0, !dbg !3343
  %77 = load %struct._element*, %struct._element** %76, align 8, !dbg !3343
  store %struct._element* %77, %struct._element** %5, align 8, !dbg !3344
  br label %36, !dbg !3345, !llvm.loop !3346

; <label>:78:                                     ; preds = %44
  %79 = load i32, i32* %4, align 4, !dbg !3348
  %80 = load %struct._vrrp_file*, %struct._vrrp_file** %3, align 8, !dbg !3349
  %81 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %80, i32 0, i32 6, !dbg !3350
  store i32 %79, i32* %81, align 8, !dbg !3351
  br label %82, !dbg !3352

; <label>:82:                                     ; preds = %78, %13
  ret void, !dbg !3353
}

; Function Attrs: nounwind uwtable
define internal void @process_update_track_file_status(%struct._vrrp_file*, i32, %struct._tracking_vrrp*) #0 !dbg !3355 {
  %4 = alloca %struct._vrrp_file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._tracking_vrrp*, align 8
  %7 = alloca i32, align 4
  store %struct._vrrp_file* %0, %struct._vrrp_file** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._vrrp_file** %4, metadata !3358, metadata !450), !dbg !3359
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3360, metadata !450), !dbg !3361
  store %struct._tracking_vrrp* %2, %struct._tracking_vrrp** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._tracking_vrrp** %6, metadata !3362, metadata !450), !dbg !3363
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3364, metadata !450), !dbg !3365
  %8 = load %struct._tracking_vrrp*, %struct._tracking_vrrp** %6, align 8, !dbg !3366
  %9 = getelementptr inbounds %struct._tracking_vrrp, %struct._tracking_vrrp* %8, i32 0, i32 0, !dbg !3367
  %10 = load i32, i32* %9, align 8, !dbg !3367
  %11 = icmp ne i32 %10, 0, !dbg !3366
  br i1 %11, label %18, label %12, !dbg !3368

; <label>:12:                                     ; preds = %3
  %13 = load %struct._vrrp_file*, %struct._vrrp_file** %4, align 8, !dbg !3369
  %14 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %13, i32 0, i32 6, !dbg !3371
  %15 = load i32, i32* %14, align 8, !dbg !3371
  %16 = icmp ne i32 %15, 0, !dbg !3369
  %17 = select i1 %16, i32 -254, i32 0, !dbg !3369
  br label %26, !dbg !3372

; <label>:18:                                     ; preds = %3
  %19 = load %struct._vrrp_file*, %struct._vrrp_file** %4, align 8, !dbg !3373
  %20 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %19, i32 0, i32 6, !dbg !3375
  %21 = load i32, i32* %20, align 8, !dbg !3375
  %22 = load %struct._tracking_vrrp*, %struct._tracking_vrrp** %6, align 8, !dbg !3376
  %23 = getelementptr inbounds %struct._tracking_vrrp, %struct._tracking_vrrp* %22, i32 0, i32 0, !dbg !3377
  %24 = load i32, i32* %23, align 8, !dbg !3377
  %25 = mul nsw i32 %21, %24, !dbg !3378
  br label %26, !dbg !3379

; <label>:26:                                     ; preds = %18, %12
  %27 = phi i32 [ %17, %12 ], [ %25, %18 ], !dbg !3380
  store i32 %27, i32* %7, align 4, !dbg !3382
  %28 = load i32, i32* %7, align 4, !dbg !3383
  %29 = icmp slt i32 %28, -254, !dbg !3385
  br i1 %29, label %30, label %31, !dbg !3386

; <label>:30:                                     ; preds = %26
  store i32 -254, i32* %7, align 4, !dbg !3387
  br label %36, !dbg !3388

; <label>:31:                                     ; preds = %26
  %32 = load i32, i32* %7, align 4, !dbg !3389
  %33 = icmp sgt i32 %32, 253, !dbg !3391
  br i1 %33, label %34, label %35, !dbg !3392

; <label>:34:                                     ; preds = %31
  store i32 253, i32* %7, align 4, !dbg !3393
  br label %35, !dbg !3394

; <label>:35:                                     ; preds = %34, %31
  br label %36

; <label>:36:                                     ; preds = %35, %30
  %37 = load i32, i32* %7, align 4, !dbg !3395
  %38 = load i32, i32* %5, align 4, !dbg !3397
  %39 = icmp eq i32 %37, %38, !dbg !3398
  br i1 %39, label %40, label %41, !dbg !3399

; <label>:40:                                     ; preds = %36
  br label %86, !dbg !3400

; <label>:41:                                     ; preds = %36
  %42 = load i32, i32* %5, align 4, !dbg !3401
  %43 = icmp eq i32 %42, -254, !dbg !3403
  br i1 %43, label %44, label %57, !dbg !3404

; <label>:44:                                     ; preds = %41
  %45 = load %struct._tracking_vrrp*, %struct._tracking_vrrp** %6, align 8, !dbg !3405
  %46 = getelementptr inbounds %struct._tracking_vrrp, %struct._tracking_vrrp* %45, i32 0, i32 1, !dbg !3407
  %47 = load %struct._vrrp_t*, %struct._vrrp_t** %46, align 8, !dbg !3407
  call void @down_instance(%struct._vrrp_t* %47), !dbg !3408
  %48 = load i32, i32* %5, align 4, !dbg !3409
  %49 = load i32, i32* %7, align 4, !dbg !3410
  %50 = sub nsw i32 %48, %49, !dbg !3411
  %51 = load %struct._tracking_vrrp*, %struct._tracking_vrrp** %6, align 8, !dbg !3412
  %52 = getelementptr inbounds %struct._tracking_vrrp, %struct._tracking_vrrp* %51, i32 0, i32 1, !dbg !3413
  %53 = load %struct._vrrp_t*, %struct._vrrp_t** %52, align 8, !dbg !3413
  %54 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %53, i32 0, i32 39, !dbg !3414
  %55 = load i32, i32* %54, align 8, !dbg !3415
  %56 = add nsw i32 %55, %50, !dbg !3415
  store i32 %56, i32* %54, align 8, !dbg !3415
  br label %86, !dbg !3416

; <label>:57:                                     ; preds = %41
  %58 = load i32, i32* %7, align 4, !dbg !3417
  %59 = icmp eq i32 %58, -254, !dbg !3420
  br i1 %59, label %60, label %64, !dbg !3421

; <label>:60:                                     ; preds = %57
  %61 = load %struct._tracking_vrrp*, %struct._tracking_vrrp** %6, align 8, !dbg !3422
  %62 = getelementptr inbounds %struct._tracking_vrrp, %struct._tracking_vrrp* %61, i32 0, i32 1, !dbg !3423
  %63 = load %struct._vrrp_t*, %struct._vrrp_t** %62, align 8, !dbg !3423
  call void @try_up_instance(%struct._vrrp_t* %63, i1 zeroext false), !dbg !3424
  br label %64, !dbg !3424

; <label>:64:                                     ; preds = %60, %57
  %65 = load %struct._tracking_vrrp*, %struct._tracking_vrrp** %6, align 8, !dbg !3425
  %66 = getelementptr inbounds %struct._tracking_vrrp, %struct._tracking_vrrp* %65, i32 0, i32 1, !dbg !3427
  %67 = load %struct._vrrp_t*, %struct._vrrp_t** %66, align 8, !dbg !3427
  %68 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %67, i32 0, i32 37, !dbg !3428
  %69 = load i8, i8* %68, align 1, !dbg !3428
  %70 = zext i8 %69 to i32, !dbg !3425
  %71 = icmp ne i32 %70, 255, !dbg !3429
  br i1 %71, label %72, label %85, !dbg !3430

; <label>:72:                                     ; preds = %64
  %73 = load i32, i32* %5, align 4, !dbg !3431
  %74 = load i32, i32* %7, align 4, !dbg !3433
  %75 = sub nsw i32 %73, %74, !dbg !3434
  %76 = load %struct._tracking_vrrp*, %struct._tracking_vrrp** %6, align 8, !dbg !3435
  %77 = getelementptr inbounds %struct._tracking_vrrp, %struct._tracking_vrrp* %76, i32 0, i32 1, !dbg !3436
  %78 = load %struct._vrrp_t*, %struct._vrrp_t** %77, align 8, !dbg !3436
  %79 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %78, i32 0, i32 39, !dbg !3437
  %80 = load i32, i32* %79, align 8, !dbg !3438
  %81 = add nsw i32 %80, %75, !dbg !3438
  store i32 %81, i32* %79, align 8, !dbg !3438
  %82 = load %struct._tracking_vrrp*, %struct._tracking_vrrp** %6, align 8, !dbg !3439
  %83 = getelementptr inbounds %struct._tracking_vrrp, %struct._tracking_vrrp* %82, i32 0, i32 1, !dbg !3440
  %84 = load %struct._vrrp_t*, %struct._vrrp_t** %83, align 8, !dbg !3440
  call void @vrrp_set_effective_priority(%struct._vrrp_t* %84), !dbg !3441
  br label %85, !dbg !3442

; <label>:85:                                     ; preds = %72, %64
  br label %86

; <label>:86:                                     ; preds = %40, %85, %44
  ret void, !dbg !3443
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!444, !445}
!llvm.ident = !{!446}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !103, globals: !353)
!1 = !DIFile(filename: "[inter]keepalived--vrrp--vrrp_track.o.i", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!2 = !{!3, !11, !32, !39, !55, !62, !67, !79, !98}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "chksum_compatibility", file: !4, line: 173, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "./../include/vrrp.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!5 = !{!6, !7, !8, !9, !10}
!6 = !DIEnumerator(name: "CHKSUM_COMPATIBILITY_NONE", value: 0)
!7 = !DIEnumerator(name: "CHKSUM_COMPATIBILITY_NEVER", value: 1)
!8 = !DIEnumerator(name: "CHKSUM_COMPATIBILITY_MIN_COMPAT", value: 2)
!9 = !DIEnumerator(name: "CHKSUM_COMPATIBILITY_CONFIG", value: 3)
!10 = !DIEnumerator(name: "CHKSUM_COMPATIBILITY_AUTO", value: 4)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 41, size: 32, align: 32, elements: !13)
!12 = !DIFile(filename: "../../lib/scheduler.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
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
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "if_lookup", file: !33, line: 142, size: 32, align: 32, elements: !34)
!33 = !DIFile(filename: "./../include/vrrp_if.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!34 = !{!35, !36, !37, !38}
!35 = !DIEnumerator(name: "IF_NO_CREATE", value: 0)
!36 = !DIEnumerator(name: "IF_CREATE_IF_DYNAMIC", value: 1)
!37 = !DIEnumerator(name: "IF_CREATE_ALWAYS", value: 2)
!38 = !DIEnumerator(name: "IF_CREATE_NETLINK", value: 3)
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !40, line: 44, size: 32, align: 32, elements: !41)
!40 = !DIFile(filename: "../../lib/parser.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!41 = !{!42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54}
!42 = !DIEnumerator(name: "CONFIG_OK", value: 0)
!43 = !DIEnumerator(name: "CONFIG_FILE_NOT_FOUND", value: 1)
!44 = !DIEnumerator(name: "CONFIG_BAD_IF", value: 2)
!45 = !DIEnumerator(name: "CONFIG_FATAL", value: 3)
!46 = !DIEnumerator(name: "CONFIG_MULTIPLE_FILES", value: 4)
!47 = !DIEnumerator(name: "CONFIG_UNKNOWN_KEYWORD", value: 5)
!48 = !DIEnumerator(name: "CONFIG_UNEXPECTED_BOB", value: 6)
!49 = !DIEnumerator(name: "CONFIG_MISSING_BOB", value: 7)
!50 = !DIEnumerator(name: "CONFIG_UNMATCHED_QUOTE", value: 8)
!51 = !DIEnumerator(name: "CONFIG_MISSING_PARAMETER", value: 9)
!52 = !DIEnumerator(name: "CONFIG_INVALID_NUMBER", value: 10)
!53 = !DIEnumerator(name: "CONFIG_GENERAL_ERROR", value: 11)
!54 = !DIEnumerator(name: "CONFIG_SECURITY_ERROR", value: 12)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !56, line: 45, size: 32, align: 32, elements: !57)
!56 = !DIFile(filename: "../../lib/notify.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!57 = !{!58, !59, !60, !61}
!58 = !DIEnumerator(name: "SCRIPT_STATE_IDLE", value: 0)
!59 = !DIEnumerator(name: "SCRIPT_STATE_RUNNING", value: 1)
!60 = !DIEnumerator(name: "SCRIPT_STATE_REQUESTING_TERMINATION", value: 2)
!61 = !DIEnumerator(name: "SCRIPT_STATE_FORCING_TERMINATION", value: 3)
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !56, line: 52, size: 32, align: 32, elements: !63)
!63 = !{!64, !65, !66}
!64 = !DIEnumerator(name: "SCRIPT_INIT_STATE_DONE", value: 0)
!65 = !DIEnumerator(name: "SCRIPT_INIT_STATE_INIT", value: 1)
!66 = !DIEnumerator(name: "SCRIPT_INIT_STATE_FAILED", value: 2)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !68, line: 119, size: 32, align: 32, elements: !69)
!68 = !DIFile(filename: "./../include/vrrp_track.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!69 = !{!70, !71, !72, !73, !74, !75, !76, !77, !78}
!70 = !DIEnumerator(name: "TRACK_VRRP", value: 1)
!71 = !DIEnumerator(name: "TRACK_IF", value: 2)
!72 = !DIEnumerator(name: "TRACK_SG", value: 4)
!73 = !DIEnumerator(name: "TRACK_ADDR", value: 4)
!74 = !DIEnumerator(name: "TRACK_ROUTE", value: 8)
!75 = !DIEnumerator(name: "TRACK_RULE", value: 16)
!76 = !DIEnumerator(name: "TRACK_SADDR", value: 32)
!77 = !DIEnumerator(name: "TRACK_SROUTE", value: 64)
!78 = !DIEnumerator(name: "TRACK_SRULE", value: 128)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !80, line: 42, size: 32, align: 32, elements: !81)
!80 = !DIFile(filename: "/usr/include/net/if.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!81 = !{!82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97}
!82 = !DIEnumerator(name: "IFF_UP", value: 1)
!83 = !DIEnumerator(name: "IFF_BROADCAST", value: 2)
!84 = !DIEnumerator(name: "IFF_DEBUG", value: 4)
!85 = !DIEnumerator(name: "IFF_LOOPBACK", value: 8)
!86 = !DIEnumerator(name: "IFF_POINTOPOINT", value: 16)
!87 = !DIEnumerator(name: "IFF_NOTRAILERS", value: 32)
!88 = !DIEnumerator(name: "IFF_RUNNING", value: 64)
!89 = !DIEnumerator(name: "IFF_NOARP", value: 128)
!90 = !DIEnumerator(name: "IFF_PROMISC", value: 256)
!91 = !DIEnumerator(name: "IFF_ALLMULTI", value: 512)
!92 = !DIEnumerator(name: "IFF_MASTER", value: 1024)
!93 = !DIEnumerator(name: "IFF_SLAVE", value: 2048)
!94 = !DIEnumerator(name: "IFF_MULTICAST", value: 4096)
!95 = !DIEnumerator(name: "IFF_PORTSEL", value: 8192)
!96 = !DIEnumerator(name: "IFF_AUTOMEDIA", value: 16384)
!97 = !DIEnumerator(name: "IFF_DYNAMIC", value: 32768)
!98 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !99, line: 23, size: 32, align: 32, elements: !100)
!99 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/inotify.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!100 = !{!101, !102}
!101 = !DIEnumerator(name: "IN_CLOEXEC", value: 524288)
!102 = !DIEnumerator(name: "IN_NONBLOCK", value: 2048)
!103 = !{!104, !105, !107, !284, !322, !141, !112, !339, !341}
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64, align: 64)
!106 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64, align: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracked_if_t", file: !33, line: 117, baseType: !109)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_tracked_if", file: !33, line: 114, size: 128, align: 64, elements: !110)
!110 = !{!111, !113}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !109, file: !33, line: 115, baseType: !112, size: 32, align: 32)
!112 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "ifp", scope: !109, file: !33, line: 116, baseType: !114, size: 64, align: 64, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64, align: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "interface_t", file: !33, line: 111, baseType: !116)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_interface", file: !33, line: 76, size: 1792, align: 64, elements: !117)
!117 = !{!118, !122, !127, !133, !153, !154, !156, !157, !158, !166, !167, !171, !172, !173, !174, !176, !177, !178, !179, !201, !202, !203, !204, !205, !206, !207, !208}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "ifname", scope: !116, file: !33, line: 77, baseType: !119, size: 128, align: 8)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 128, align: 8, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 16)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "ifindex", scope: !116, file: !33, line: 78, baseType: !123, size: 32, align: 32, offset: 128)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "ifindex_t", file: !33, line: 62, baseType: !124)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !125, line: 51, baseType: !126)
!125 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!126 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !116, file: !33, line: 79, baseType: !128, size: 32, align: 32, offset: 160)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !129, line: 31, size: 32, align: 32, elements: !130)
!129 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!130 = !{!131}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !128, file: !129, line: 33, baseType: !132, size: 32, align: 32)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !129, line: 30, baseType: !124)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !116, file: !33, line: 80, baseType: !134, size: 128, align: 32, offset: 192)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !129, line: 211, size: 128, align: 32, elements: !135)
!135 = !{!136}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !134, file: !129, line: 220, baseType: !137, size: 128, align: 32)
!137 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !134, file: !129, line: 213, size: 128, align: 32, elements: !138)
!138 = !{!139, !143, !149}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !137, file: !129, line: 215, baseType: !140, size: 128, align: 8)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 128, align: 8, elements: !120)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !125, line: 48, baseType: !142)
!142 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !137, file: !129, line: 217, baseType: !144, size: 128, align: 16)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 128, align: 16, elements: !147)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !125, line: 49, baseType: !146)
!146 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!147 = !{!148}
!148 = !DISubrange(count: 8)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !137, file: !129, line: 218, baseType: !150, size: 128, align: 32)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 128, align: 32, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 4)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "ifi_flags", scope: !116, file: !33, line: 81, baseType: !126, size: 32, align: 32, offset: 320)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "linkbeat_use_polling", scope: !116, file: !33, line: 82, baseType: !155, size: 8, align: 8, offset: 352)
!155 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !116, file: !33, line: 83, baseType: !124, size: 32, align: 32, offset: 384)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "hw_type", scope: !116, file: !33, line: 84, baseType: !146, size: 16, align: 16, offset: 416)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr", scope: !116, file: !33, line: 85, baseType: !159, size: 256, align: 8, offset: 432)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 256, align: 8, elements: !164)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !161, line: 33, baseType: !162)
!161 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_char", file: !163, line: 30, baseType: !142)
!163 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!164 = !{!165}
!165 = !DISubrange(count: 32)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr_bcast", scope: !116, file: !33, line: 86, baseType: !159, size: 256, align: 8, offset: 688)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr_len", scope: !116, file: !33, line: 87, baseType: !168, size: 64, align: 64, offset: 960)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !169, line: 216, baseType: !170)
!169 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!170 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "lb_type", scope: !116, file: !33, line: 88, baseType: !112, size: 32, align: 32, offset: 1024)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "vmac", scope: !116, file: !33, line: 90, baseType: !155, size: 8, align: 8, offset: 1056)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "base_ifindex", scope: !116, file: !33, line: 91, baseType: !123, size: 32, align: 32, offset: 1088)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "base_ifp", scope: !116, file: !33, line: 92, baseType: !175, size: 64, align: 64, offset: 1152)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master_ifindex", scope: !116, file: !33, line: 94, baseType: !123, size: 32, align: 32, offset: 1216)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master_ifp", scope: !116, file: !33, line: 96, baseType: !175, size: 64, align: 64, offset: 1280)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master", scope: !116, file: !33, line: 97, baseType: !155, size: 8, align: 8, offset: 1344)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "garp_delay", scope: !116, file: !33, line: 100, baseType: !180, size: 64, align: 64, offset: 1408)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64, align: 64)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "garp_delay_t", file: !33, line: 73, baseType: !182)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_garp_delay", file: !33, line: 65, size: 704, align: 64, elements: !183)
!183 = !{!184, !195, !196, !197, !198, !199, !200}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "garp_interval", scope: !182, file: !33, line: 66, baseType: !185, size: 128, align: 64)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "timeval_t", file: !186, line: 31, baseType: !187)
!186 = !DIFile(filename: "../../lib/timer.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !188, line: 30, size: 128, align: 64, elements: !189)
!188 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!189 = !{!190, !193}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !187, file: !188, line: 32, baseType: !191, size: 64, align: 64)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !163, line: 139, baseType: !192)
!192 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !187, file: !188, line: 33, baseType: !194, size: 64, align: 64, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !163, line: 141, baseType: !192)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "have_garp_interval", scope: !182, file: !33, line: 67, baseType: !155, size: 8, align: 8, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "gna_interval", scope: !182, file: !33, line: 68, baseType: !185, size: 128, align: 64, offset: 192)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "have_gna_interval", scope: !182, file: !33, line: 69, baseType: !155, size: 8, align: 8, offset: 320)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "garp_next_time", scope: !182, file: !33, line: 70, baseType: !185, size: 128, align: 64, offset: 384)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "gna_next_time", scope: !182, file: !33, line: 71, baseType: !185, size: 128, align: 64, offset: 512)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "aggregation_group", scope: !182, file: !33, line: 72, baseType: !112, size: 32, align: 32, offset: 640)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "gna_router", scope: !116, file: !33, line: 101, baseType: !155, size: 8, align: 8, offset: 1472)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_config", scope: !116, file: !33, line: 102, baseType: !112, size: 32, align: 32, offset: 1504)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_ignore_value", scope: !116, file: !33, line: 103, baseType: !124, size: 32, align: 32, offset: 1536)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_filter_value", scope: !116, file: !33, line: 104, baseType: !124, size: 32, align: 32, offset: 1568)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "reset_promote_secondaries", scope: !116, file: !33, line: 105, baseType: !124, size: 32, align: 32, offset: 1600)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "rp_filter", scope: !116, file: !33, line: 107, baseType: !126, size: 32, align: 32, offset: 1632)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "promote_secondaries_already_set", scope: !116, file: !33, line: 109, baseType: !155, size: 8, align: 8, offset: 1664)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "tracking_vrrp", scope: !116, file: !33, line: 110, baseType: !209, size: 64, align: 64, offset: 1728)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !210, line: 31, baseType: !211)
!210 = !DIFile(filename: "../../lib/list.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64, align: 64)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_list", file: !210, line: 39, size: 320, align: 64, elements: !213)
!213 = !{!214, !221, !222, !223, !227}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !212, file: !210, line: 40, baseType: !215, size: 64, align: 64)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64, align: 64)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_element", file: !210, line: 33, size: 192, align: 64, elements: !217)
!217 = !{!218, !219, !220}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !216, file: !210, line: 34, baseType: !215, size: 64, align: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !216, file: !210, line: 35, baseType: !215, size: 64, align: 64, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !216, file: !210, line: 36, baseType: !104, size: 64, align: 64, offset: 128)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !212, file: !210, line: 41, baseType: !215, size: 64, align: 64, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !212, file: !210, line: 42, baseType: !126, size: 32, align: 32, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !212, file: !210, line: 43, baseType: !224, size: 64, align: 64, offset: 192)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64, align: 64)
!225 = !DISubroutineType(types: !226)
!226 = !{null, !104}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "dump", scope: !212, file: !210, line: 44, baseType: !228, size: 64, align: 64, offset: 256)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64, align: 64)
!229 = !DISubroutineType(types: !230)
!230 = !{null, !231, !104}
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64, align: 64)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !233, line: 48, baseType: !234)
!233 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !235, line: 241, size: 1728, align: 64, elements: !236)
!235 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!236 = !{!237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !257, !258, !259, !260, !262, !263, !265, !269, !272, !274, !275, !276, !277, !278, !279, !280}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !234, file: !235, line: 242, baseType: !112, size: 32, align: 32)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !234, file: !235, line: 247, baseType: !105, size: 64, align: 64, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !234, file: !235, line: 248, baseType: !105, size: 64, align: 64, offset: 128)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !234, file: !235, line: 249, baseType: !105, size: 64, align: 64, offset: 192)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !234, file: !235, line: 250, baseType: !105, size: 64, align: 64, offset: 256)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !234, file: !235, line: 251, baseType: !105, size: 64, align: 64, offset: 320)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !234, file: !235, line: 252, baseType: !105, size: 64, align: 64, offset: 384)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !234, file: !235, line: 253, baseType: !105, size: 64, align: 64, offset: 448)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !234, file: !235, line: 254, baseType: !105, size: 64, align: 64, offset: 512)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !234, file: !235, line: 256, baseType: !105, size: 64, align: 64, offset: 576)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !234, file: !235, line: 257, baseType: !105, size: 64, align: 64, offset: 640)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !234, file: !235, line: 258, baseType: !105, size: 64, align: 64, offset: 704)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !234, file: !235, line: 260, baseType: !250, size: 64, align: 64, offset: 768)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64, align: 64)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !235, line: 156, size: 192, align: 64, elements: !252)
!252 = !{!253, !254, !256}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !251, file: !235, line: 157, baseType: !250, size: 64, align: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !251, file: !235, line: 158, baseType: !255, size: 64, align: 64, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64, align: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !251, file: !235, line: 162, baseType: !112, size: 32, align: 32, offset: 128)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !234, file: !235, line: 262, baseType: !255, size: 64, align: 64, offset: 832)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !234, file: !235, line: 264, baseType: !112, size: 32, align: 32, offset: 896)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !234, file: !235, line: 268, baseType: !112, size: 32, align: 32, offset: 928)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !234, file: !235, line: 270, baseType: !261, size: 64, align: 64, offset: 960)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !163, line: 131, baseType: !192)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !234, file: !235, line: 274, baseType: !146, size: 16, align: 16, offset: 1024)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !234, file: !235, line: 275, baseType: !264, size: 8, align: 8, offset: 1040)
!264 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !234, file: !235, line: 276, baseType: !266, size: 8, align: 8, offset: 1048)
!266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 8, align: 8, elements: !267)
!267 = !{!268}
!268 = !DISubrange(count: 1)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !234, file: !235, line: 280, baseType: !270, size: 64, align: 64, offset: 1088)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !235, line: 150, baseType: null)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !234, file: !235, line: 289, baseType: !273, size: 64, align: 64, offset: 1152)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !163, line: 132, baseType: !192)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !234, file: !235, line: 297, baseType: !104, size: 64, align: 64, offset: 1216)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !234, file: !235, line: 298, baseType: !104, size: 64, align: 64, offset: 1280)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !234, file: !235, line: 299, baseType: !104, size: 64, align: 64, offset: 1344)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !234, file: !235, line: 300, baseType: !104, size: 64, align: 64, offset: 1408)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !234, file: !235, line: 302, baseType: !168, size: 64, align: 64, offset: 1472)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !234, file: !235, line: 303, baseType: !112, size: 32, align: 32, offset: 1536)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !234, file: !235, line: 305, baseType: !281, size: 160, align: 8, offset: 1568)
!281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 160, align: 8, elements: !282)
!282 = !{!283}
!283 = !DISubrange(count: 20)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64, align: 64)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracked_sc_t", file: !68, line: 80, baseType: !286)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_tracked_sc", file: !68, line: 77, size: 128, align: 64, elements: !287)
!287 = !{!288, !321}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "scr", scope: !286, file: !68, line: 78, baseType: !289, size: 64, align: 64)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64, align: 64)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "vrrp_script_t", file: !68, line: 74, baseType: !291)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vrrp_script", file: !68, line: 60, size: 704, align: 64, elements: !292)
!292 = !{!293, !294, !308, !309, !310, !311, !312, !313, !314, !315, !316, !318, !320}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "sname", scope: !291, file: !68, line: 61, baseType: !105, size: 64, align: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "script", scope: !291, file: !68, line: 62, baseType: !295, size: 192, align: 64, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "notify_script_t", file: !56, line: 65, baseType: !296)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_notify_script", file: !56, line: 59, size: 192, align: 64, elements: !297)
!297 = !{!298, !300, !301, !302, !305}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !296, file: !56, line: 60, baseType: !299, size: 64, align: 64)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "num_args", scope: !296, file: !56, line: 61, baseType: !112, size: 32, align: 32, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !296, file: !56, line: 62, baseType: !112, size: 32, align: 32, offset: 96)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !296, file: !56, line: 63, baseType: !303, size: 32, align: 32, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !161, line: 80, baseType: !304)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !163, line: 125, baseType: !126)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !296, file: !56, line: 64, baseType: !306, size: 32, align: 32, offset: 160)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !161, line: 65, baseType: !307)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !163, line: 126, baseType: !126)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !291, file: !68, line: 63, baseType: !170, size: 64, align: 64, offset: 256)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !291, file: !68, line: 64, baseType: !170, size: 64, align: 64, offset: 320)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !291, file: !68, line: 65, baseType: !112, size: 32, align: 32, offset: 384)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !291, file: !68, line: 66, baseType: !112, size: 32, align: 32, offset: 416)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "rise", scope: !291, file: !68, line: 67, baseType: !112, size: 32, align: 32, offset: 448)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "fall", scope: !291, file: !68, line: 68, baseType: !112, size: 32, align: 32, offset: 480)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "tracking_vrrp", scope: !291, file: !68, line: 69, baseType: !209, size: 64, align: 64, offset: 512)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !291, file: !68, line: 70, baseType: !112, size: 32, align: 32, offset: 576)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !291, file: !68, line: 71, baseType: !317, size: 32, align: 32, offset: 608)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "script_state_t", file: !56, line: 50, baseType: !55)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "init_state", scope: !291, file: !68, line: 72, baseType: !319, size: 32, align: 32, offset: 640)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "script_init_state_t", file: !56, line: 56, baseType: !62)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "insecure", scope: !291, file: !68, line: 73, baseType: !155, size: 8, align: 8, offset: 672)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !286, file: !68, line: 79, baseType: !112, size: 32, align: 32, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64, align: 64)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracked_file_t", file: !68, line: 97, baseType: !324)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_tracked_file", file: !68, line: 94, size: 128, align: 64, elements: !325)
!325 = !{!326, !338}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !324, file: !68, line: 95, baseType: !327, size: 64, align: 64)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64, align: 64)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "vrrp_tracked_file_t", file: !68, line: 91, baseType: !329)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vrrp_file", file: !68, line: 83, size: 384, align: 64, elements: !330)
!330 = !{!331, !332, !333, !334, !335, !336, !337}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "fname", scope: !329, file: !68, line: 84, baseType: !105, size: 64, align: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "file_path", scope: !329, file: !68, line: 85, baseType: !105, size: 64, align: 64, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "file_part", scope: !329, file: !68, line: 86, baseType: !105, size: 64, align: 64, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !329, file: !68, line: 87, baseType: !112, size: 32, align: 32, offset: 192)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "wd", scope: !329, file: !68, line: 88, baseType: !112, size: 32, align: 32, offset: 224)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "tracking_vrrp", scope: !329, file: !68, line: 89, baseType: !209, size: 64, align: 64, offset: 256)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !329, file: !68, line: 90, baseType: !112, size: 32, align: 32, offset: 320)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !324, file: !68, line: 96, baseType: !112, size: 32, align: 32, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !161, line: 109, baseType: !340)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !163, line: 172, baseType: !192)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64, align: 64)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inotify_event", file: !343, line: 28, size: 128, align: 32, elements: !344)
!343 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/inotify.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!344 = !{!345, !346, !347, !348, !349}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "wd", scope: !342, file: !343, line: 30, baseType: !112, size: 32, align: 32)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !342, file: !343, line: 31, baseType: !124, size: 32, align: 32, offset: 32)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "cookie", scope: !342, file: !343, line: 32, baseType: !124, size: 32, align: 32, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !342, file: !343, line: 33, baseType: !124, size: 32, align: 32, offset: 96)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !342, file: !343, line: 34, baseType: !350, offset: 128)
!350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, align: 8, elements: !351)
!351 = !{!352}
!352 = !DISubrange(count: -1)
!353 = !{!354, !355, !443}
!354 = distinct !DIGlobalVariable(name: "garp_delay", scope: !0, file: !33, line: 150, type: !209, isLocal: false, isDefinition: true, variable: %struct._list** @garp_delay)
!355 = distinct !DIGlobalVariable(name: "inotify_thread", scope: !0, file: !356, line: 48, type: !357, isLocal: true, isDefinition: true, variable: %struct._thread** @inotify_thread)
!356 = !DIFile(filename: "vrrp_track.c", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64, align: 64)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_t", file: !12, line: 99, baseType: !359)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread", file: !12, line: 78, size: 768, align: 64, elements: !360)
!360 = !{!361, !362, !364, !417, !422, !423, !424, !436, !438}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !359, file: !12, line: 79, baseType: !170, size: 64, align: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !359, file: !12, line: 80, baseType: !363, size: 32, align: 32, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_type_t", file: !12, line: 63, baseType: !11)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !359, file: !12, line: 81, baseType: !365, size: 64, align: 64, offset: 128)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64, align: 64)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_master", file: !12, line: 112, size: 1280, align: 64, elements: !367)
!367 = !{!368, !380, !381, !382, !383, !391, !392, !393, !394, !395, !398, !409, !410, !411, !412, !413, !414, !415, !416}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !366, file: !12, line: 113, baseType: !369, size: 64, align: 64)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "rb_root_t", file: !370, line: 109, baseType: !371)
!370 = !DIFile(filename: "../../lib/rbtree.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !370, line: 106, size: 64, align: 64, elements: !372)
!372 = !{!373}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !371, file: !370, line: 108, baseType: !374, size: 64, align: 64)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64, align: 64)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !370, line: 97, size: 192, align: 64, elements: !376)
!376 = !{!377, !378, !379}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "rb_parent_color", scope: !375, file: !370, line: 99, baseType: !170, size: 64, align: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !375, file: !370, line: 102, baseType: !374, size: 64, align: 64, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !375, file: !370, line: 103, baseType: !374, size: 64, align: 64, offset: 128)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !366, file: !12, line: 114, baseType: !369, size: 64, align: 64, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !366, file: !12, line: 115, baseType: !369, size: 64, align: 64, offset: 128)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !366, file: !12, line: 116, baseType: !369, size: 64, align: 64, offset: 192)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !366, file: !12, line: 117, baseType: !384, size: 128, align: 64, offset: 256)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "list_head_t", file: !385, line: 62, baseType: !386)
!385 = !DIFile(filename: "../../lib/list_head.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !385, line: 60, size: 128, align: 64, elements: !387)
!387 = !{!388, !390}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !386, file: !385, line: 61, baseType: !389, size: 64, align: 64)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64, align: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !386, file: !385, line: 61, baseType: !389, size: 64, align: 64, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !366, file: !12, line: 121, baseType: !384, size: 128, align: 64, offset: 384)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "unuse", scope: !366, file: !12, line: 122, baseType: !384, size: 128, align: 64, offset: 512)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "child_pid_index", scope: !366, file: !12, line: 124, baseType: !209, size: 64, align: 64, offset: 640)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "io_events", scope: !366, file: !12, line: 127, baseType: !369, size: 64, align: 64, offset: 704)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_events", scope: !366, file: !12, line: 128, baseType: !396, size: 64, align: 64, offset: 768)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64, align: 64)
!397 = !DICompositeType(tag: DW_TAG_structure_type, name: "epoll_event", file: !12, line: 128, flags: DIFlagFwdDecl)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "current_event", scope: !366, file: !12, line: 129, baseType: !399, size: 64, align: 64, offset: 832)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64, align: 64)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_event_t", file: !12, line: 109, baseType: !401)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_event", file: !12, line: 102, size: 448, align: 64, elements: !402)
!402 = !{!403, !404, !405, !406, !407}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !401, file: !12, line: 103, baseType: !357, size: 64, align: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !401, file: !12, line: 104, baseType: !357, size: 64, align: 64, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !401, file: !12, line: 105, baseType: !170, size: 64, align: 64, offset: 128)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !401, file: !12, line: 106, baseType: !112, size: 32, align: 32, offset: 192)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !401, file: !12, line: 108, baseType: !408, size: 192, align: 64, offset: 256)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "rb_node_t", file: !370, line: 104, baseType: !375)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_size", scope: !366, file: !12, line: 130, baseType: !126, size: 32, align: 32, offset: 896)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_count", scope: !366, file: !12, line: 131, baseType: !126, size: 32, align: 32, offset: 928)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_fd", scope: !366, file: !12, line: 132, baseType: !112, size: 32, align: 32, offset: 960)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "timer_fd", scope: !366, file: !12, line: 135, baseType: !112, size: 32, align: 32, offset: 992)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "timer_thread", scope: !366, file: !12, line: 136, baseType: !357, size: 64, align: 64, offset: 1024)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !366, file: !12, line: 146, baseType: !170, size: 64, align: 64, offset: 1088)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !366, file: !12, line: 147, baseType: !170, size: 64, align: 64, offset: 1152)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_timer_running", scope: !366, file: !12, line: 148, baseType: !155, size: 8, align: 8, offset: 1216)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !359, file: !12, line: 82, baseType: !418, size: 64, align: 64, offset: 192)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64, align: 64)
!419 = !DISubroutineType(types: !420)
!420 = !{!112, !421}
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64, align: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !359, file: !12, line: 83, baseType: !104, size: 64, align: 64, offset: 256)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "sands", scope: !359, file: !12, line: 84, baseType: !185, size: 128, align: 64, offset: 320)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !359, file: !12, line: 92, baseType: !425, size: 64, align: 32, offset: 448)
!425 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !359, file: !12, line: 85, size: 64, align: 32, elements: !426)
!426 = !{!427, !428, !429}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !425, file: !12, line: 86, baseType: !112, size: 32, align: 32)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !425, file: !12, line: 87, baseType: !112, size: 32, align: 32)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !425, file: !12, line: 91, baseType: !430, size: 64, align: 32)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !425, file: !12, line: 88, size: 64, align: 32, elements: !431)
!431 = !{!432, !435}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !430, file: !12, line: 89, baseType: !433, size: 32, align: 32)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !161, line: 98, baseType: !434)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !163, line: 133, baseType: !112)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !430, file: !12, line: 90, baseType: !112, size: 32, align: 32, offset: 32)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !359, file: !12, line: 93, baseType: !437, size: 64, align: 64, offset: 512)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64, align: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, scope: !359, file: !12, line: 95, baseType: !439, size: 192, align: 64, offset: 576)
!439 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !359, file: !12, line: 95, size: 192, align: 64, elements: !440)
!440 = !{!441, !442}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !439, file: !12, line: 96, baseType: !408, size: 192, align: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !439, file: !12, line: 97, baseType: !384, size: 128, align: 64)
!443 = distinct !DIGlobalVariable(name: "inotify_fd", scope: !0, file: !356, line: 47, type: !112, isLocal: true, isDefinition: true, variable: i32* @inotify_fd)
!444 = !{i32 2, !"Dwarf Version", i32 4}
!445 = !{i32 2, !"Debug Info Version", i32 3}
!446 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!447 = distinct !DISubprogram(name: "dump_track_if", scope: !356, file: !356, line: 52, type: !229, isLocal: false, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !448)
!448 = !{}
!449 = !DILocalVariable(name: "fp", arg: 1, scope: !447, file: !356, line: 52, type: !231)
!450 = !DIExpression()
!451 = !DILocation(line: 52, column: 21, scope: !447)
!452 = !DILocalVariable(name: "track_data", arg: 2, scope: !447, file: !356, line: 52, type: !104)
!453 = !DILocation(line: 52, column: 31, scope: !447)
!454 = !DILocalVariable(name: "tip", scope: !447, file: !356, line: 54, type: !107)
!455 = !DILocation(line: 54, column: 16, scope: !447)
!456 = !DILocation(line: 54, column: 22, scope: !447)
!457 = !DILocation(line: 55, column: 13, scope: !447)
!458 = !DILocation(line: 55, column: 40, scope: !447)
!459 = !DILocation(line: 55, column: 45, scope: !447)
!460 = !DILocation(line: 55, column: 51, scope: !447)
!461 = !DILocation(line: 55, column: 38, scope: !447)
!462 = !DILocation(line: 55, column: 60, scope: !447)
!463 = !DILocation(line: 55, column: 65, scope: !447)
!464 = !DILocation(line: 55, column: 2, scope: !447)
!465 = !DILocation(line: 56, column: 1, scope: !447)
!466 = distinct !DISubprogram(name: "free_track_if", scope: !356, file: !356, line: 59, type: !225, isLocal: false, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !448)
!467 = !DILocalVariable(name: "tip", arg: 1, scope: !466, file: !356, line: 59, type: !104)
!468 = !DILocation(line: 59, column: 21, scope: !466)
!469 = !DILocation(line: 61, column: 8, scope: !466)
!470 = !DILocation(line: 61, column: 3, scope: !466)
!471 = !DILocation(line: 61, column: 20, scope: !466)
!472 = !DILocation(line: 62, column: 1, scope: !466)
!473 = distinct !DISubprogram(name: "alloc_track_if", scope: !356, file: !356, line: 65, type: !474, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !448)
!474 = !DISubroutineType(types: !475)
!475 = !{null, !476, !491}
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64, align: 64)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "vrrp_t", file: !4, line: 310, baseType: !478)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vrrp_t", file: !4, line: 183, size: 7040, align: 64, elements: !479)
!479 = !{!480, !483, !484, !518, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !560, !561, !562, !563, !564, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !636, !643}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !478, file: !4, line: 184, baseType: !481, size: 16, align: 16)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !482, line: 28, baseType: !146)
!482 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!483 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !478, file: !4, line: 185, baseType: !105, size: 64, align: 64, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !478, file: !4, line: 186, baseType: !485, size: 64, align: 64, offset: 128)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64, align: 64)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "vrrp_sgroup_t", file: !4, line: 133, baseType: !487)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vrrp_sgroup", file: !4, line: 109, size: 1024, align: 64, elements: !488)
!488 = !{!489, !490, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !512, !513, !514, !515, !516, !517}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !487, file: !4, line: 110, baseType: !105, size: 64, align: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !487, file: !4, line: 111, baseType: !491, size: 64, align: 64, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64, align: 64)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "vector_t", file: !493, line: 34, baseType: !494)
!493 = !DIFile(filename: "../../lib/vector.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vector", file: !493, line: 30, size: 128, align: 64, elements: !495)
!495 = !{!496, !497, !498}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !494, file: !493, line: 31, baseType: !126, size: 32, align: 32)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !494, file: !493, line: 32, baseType: !126, size: 32, align: 32, offset: 32)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !494, file: !493, line: 33, baseType: !499, size: 64, align: 64, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64, align: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "vrrp_instances", scope: !487, file: !4, line: 112, baseType: !209, size: 64, align: 64, offset: 128)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "num_member_fault", scope: !487, file: !4, line: 113, baseType: !126, size: 32, align: 32, offset: 192)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "num_member_init", scope: !487, file: !4, line: 114, baseType: !126, size: 32, align: 32, offset: 224)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !487, file: !4, line: 115, baseType: !112, size: 32, align: 32, offset: 256)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "sgroup_tracking_weight", scope: !487, file: !4, line: 116, baseType: !155, size: 8, align: 8, offset: 288)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "track_ifp", scope: !487, file: !4, line: 119, baseType: !209, size: 64, align: 64, offset: 320)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "track_script", scope: !487, file: !4, line: 120, baseType: !209, size: 64, align: 64, offset: 384)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "track_file", scope: !487, file: !4, line: 121, baseType: !209, size: 64, align: 64, offset: 448)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "track_bfd", scope: !487, file: !4, line: 122, baseType: !209, size: 64, align: 64, offset: 512)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "notify_exec", scope: !487, file: !4, line: 125, baseType: !155, size: 8, align: 8, offset: 576)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "script_backup", scope: !487, file: !4, line: 126, baseType: !511, size: 64, align: 64, offset: 640)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64, align: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "script_master", scope: !487, file: !4, line: 127, baseType: !511, size: 64, align: 64, offset: 704)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "script_fault", scope: !487, file: !4, line: 128, baseType: !511, size: 64, align: 64, offset: 768)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "script_stop", scope: !487, file: !4, line: 129, baseType: !511, size: 64, align: 64, offset: 832)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "script", scope: !487, file: !4, line: 130, baseType: !511, size: 64, align: 64, offset: 896)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "smtp_alert", scope: !487, file: !4, line: 131, baseType: !112, size: 32, align: 32, offset: 960)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "last_email_state", scope: !487, file: !4, line: 132, baseType: !112, size: 32, align: 32, offset: 992)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !478, file: !4, line: 187, baseType: !519, size: 64, align: 64, offset: 192)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64, align: 64)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "vrrp_stats", file: !4, line: 169, baseType: !521)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vrrp_stats", file: !4, line: 136, size: 768, align: 64, elements: !522)
!522 = !{!523, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "advert_rcvd", scope: !521, file: !4, line: 137, baseType: !524, size: 64, align: 64)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !125, line: 55, baseType: !170)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "advert_sent", scope: !521, file: !4, line: 138, baseType: !124, size: 32, align: 32, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "become_master", scope: !521, file: !4, line: 140, baseType: !124, size: 32, align: 32, offset: 96)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "release_master", scope: !521, file: !4, line: 141, baseType: !124, size: 32, align: 32, offset: 128)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "packet_len_err", scope: !521, file: !4, line: 143, baseType: !524, size: 64, align: 64, offset: 192)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "advert_interval_err", scope: !521, file: !4, line: 144, baseType: !524, size: 64, align: 64, offset: 256)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "ip_ttl_err", scope: !521, file: !4, line: 145, baseType: !524, size: 64, align: 64, offset: 320)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "invalid_type_rcvd", scope: !521, file: !4, line: 146, baseType: !524, size: 64, align: 64, offset: 384)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "addr_list_err", scope: !521, file: !4, line: 147, baseType: !524, size: 64, align: 64, offset: 448)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "invalid_authtype", scope: !521, file: !4, line: 149, baseType: !124, size: 32, align: 32, offset: 512)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "authtype_mismatch", scope: !521, file: !4, line: 151, baseType: !124, size: 32, align: 32, offset: 544)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "auth_failure", scope: !521, file: !4, line: 152, baseType: !124, size: 32, align: 32, offset: 576)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "pri_zero_rcvd", scope: !521, file: !4, line: 155, baseType: !524, size: 64, align: 64, offset: 640)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "pri_zero_sent", scope: !521, file: !4, line: 156, baseType: !524, size: 64, align: 64, offset: 704)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "ifp", scope: !478, file: !4, line: 188, baseType: !114, size: 64, align: 64, offset: 256)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "dont_track_primary", scope: !478, file: !4, line: 189, baseType: !155, size: 8, align: 8, offset: 320)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "linkbeat_use_polling", scope: !478, file: !4, line: 190, baseType: !155, size: 8, align: 8, offset: 328)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "skip_check_adv_addr", scope: !478, file: !4, line: 191, baseType: !155, size: 8, align: 8, offset: 336)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "strict_mode", scope: !478, file: !4, line: 193, baseType: !126, size: 32, align: 32, offset: 352)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "vmac_flags", scope: !478, file: !4, line: 195, baseType: !170, size: 64, align: 64, offset: 384)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "vmac_ifname", scope: !478, file: !4, line: 196, baseType: !119, size: 128, align: 8, offset: 448)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "track_ifp", scope: !478, file: !4, line: 198, baseType: !209, size: 64, align: 64, offset: 576)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "track_script", scope: !478, file: !4, line: 199, baseType: !209, size: 64, align: 64, offset: 640)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "track_file", scope: !478, file: !4, line: 200, baseType: !209, size: 64, align: 64, offset: 704)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "num_script_if_fault", scope: !478, file: !4, line: 204, baseType: !126, size: 32, align: 32, offset: 768)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "num_script_init", scope: !478, file: !4, line: 205, baseType: !126, size: 32, align: 32, offset: 800)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "saddr", scope: !478, file: !4, line: 206, baseType: !551, size: 1024, align: 64, offset: 832)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_storage", file: !552, line: 166, size: 1024, align: 64, elements: !553)
!552 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!553 = !{!554, !555, !559}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "ss_family", scope: !551, file: !552, line: 168, baseType: !481, size: 16, align: 16)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_padding", scope: !551, file: !552, line: 169, baseType: !556, size: 944, align: 8, offset: 16)
!556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 944, align: 8, elements: !557)
!557 = !{!558}
!558 = !DISubrange(count: 118)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_align", scope: !551, file: !552, line: 170, baseType: !170, size: 64, align: 64, offset: 960)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "saddr_from_config", scope: !478, file: !4, line: 207, baseType: !155, size: 8, align: 8, offset: 1856)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "track_saddr", scope: !478, file: !4, line: 208, baseType: !155, size: 8, align: 8, offset: 1864)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "pkt_saddr", scope: !478, file: !4, line: 209, baseType: !551, size: 1024, align: 64, offset: 1920)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "unicast_peer", scope: !478, file: !4, line: 210, baseType: !209, size: 64, align: 64, offset: 2944)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "unicast_chksum_compat", scope: !478, file: !4, line: 212, baseType: !565, size: 32, align: 32, offset: 3008)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "chksum_compatibility_t", file: !4, line: 179, baseType: !3)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "master_saddr", scope: !478, file: !4, line: 214, baseType: !551, size: 1024, align: 64, offset: 3072)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "master_priority", scope: !478, file: !4, line: 215, baseType: !141, size: 8, align: 8, offset: 4096)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "last_transition", scope: !478, file: !4, line: 216, baseType: !185, size: 128, align: 64, offset: 4160)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "garp_delay", scope: !478, file: !4, line: 217, baseType: !126, size: 32, align: 32, offset: 4288)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "garp_refresh", scope: !478, file: !4, line: 218, baseType: !185, size: 128, align: 64, offset: 4352)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "garp_refresh_timer", scope: !478, file: !4, line: 219, baseType: !185, size: 128, align: 64, offset: 4480)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "garp_rep", scope: !478, file: !4, line: 220, baseType: !126, size: 32, align: 32, offset: 4608)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "garp_refresh_rep", scope: !478, file: !4, line: 221, baseType: !126, size: 32, align: 32, offset: 4640)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "garp_lower_prio_delay", scope: !478, file: !4, line: 222, baseType: !126, size: 32, align: 32, offset: 4672)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "garp_pending", scope: !478, file: !4, line: 223, baseType: !155, size: 8, align: 8, offset: 4704)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "gna_pending", scope: !478, file: !4, line: 224, baseType: !155, size: 8, align: 8, offset: 4712)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "garp_lower_prio_rep", scope: !478, file: !4, line: 225, baseType: !126, size: 32, align: 32, offset: 4736)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "lower_prio_no_advert", scope: !478, file: !4, line: 226, baseType: !126, size: 32, align: 32, offset: 4768)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "higher_prio_send_advert", scope: !478, file: !4, line: 227, baseType: !126, size: 32, align: 32, offset: 4800)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "vrid", scope: !478, file: !4, line: 228, baseType: !141, size: 8, align: 8, offset: 4832)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "base_priority", scope: !478, file: !4, line: 229, baseType: !141, size: 8, align: 8, offset: 4840)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "effective_priority", scope: !478, file: !4, line: 230, baseType: !141, size: 8, align: 8, offset: 4848)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "total_priority", scope: !478, file: !4, line: 231, baseType: !112, size: 32, align: 32, offset: 4864)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "vipset", scope: !478, file: !4, line: 233, baseType: !155, size: 8, align: 8, offset: 4896)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "vip", scope: !478, file: !4, line: 234, baseType: !209, size: 64, align: 64, offset: 4928)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "evip", scope: !478, file: !4, line: 235, baseType: !209, size: 64, align: 64, offset: 4992)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "promote_secondaries", scope: !478, file: !4, line: 239, baseType: !155, size: 8, align: 8, offset: 5056)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "evip_add_ipv6", scope: !478, file: !4, line: 240, baseType: !155, size: 8, align: 8, offset: 5064)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "vroutes", scope: !478, file: !4, line: 241, baseType: !209, size: 64, align: 64, offset: 5120)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "vrules", scope: !478, file: !4, line: 242, baseType: !209, size: 64, align: 64, offset: 5184)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "adver_int", scope: !478, file: !4, line: 243, baseType: !126, size: 32, align: 32, offset: 5248)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "master_adver_int", scope: !478, file: !4, line: 244, baseType: !126, size: 32, align: 32, offset: 5280)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "accept", scope: !478, file: !4, line: 249, baseType: !126, size: 32, align: 32, offset: 5312)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_rx_buf_size", scope: !478, file: !4, line: 252, baseType: !168, size: 64, align: 64, offset: 5376)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "iptable_rules_set", scope: !478, file: !4, line: 254, baseType: !155, size: 8, align: 8, offset: 5440)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "nopreempt", scope: !478, file: !4, line: 255, baseType: !155, size: 8, align: 8, offset: 5448)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_delay", scope: !478, file: !4, line: 256, baseType: !170, size: 64, align: 64, offset: 5504)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_time", scope: !478, file: !4, line: 260, baseType: !185, size: 128, align: 64, offset: 5568)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !478, file: !4, line: 261, baseType: !112, size: 32, align: 32, offset: 5696)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "wantstate", scope: !478, file: !4, line: 265, baseType: !112, size: 32, align: 32, offset: 5728)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "reload_master", scope: !478, file: !4, line: 266, baseType: !155, size: 8, align: 8, offset: 5760)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "sockets", scope: !478, file: !4, line: 267, baseType: !603, size: 64, align: 64, offset: 5824)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64, align: 64)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "sock_t", file: !605, line: 50, baseType: !606)
!605 = !DIFile(filename: "./../include/vrrp_sock.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sock", file: !605, line: 40, size: 1344, align: 64, elements: !607)
!607 = !{!608, !609, !610, !611, !612, !613, !614, !615, !616}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !606, file: !605, line: 41, baseType: !481, size: 16, align: 16)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "saddr", scope: !606, file: !605, line: 42, baseType: !551, size: 1024, align: 64, offset: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "proto", scope: !606, file: !605, line: 43, baseType: !112, size: 32, align: 32, offset: 1088)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "ifindex", scope: !606, file: !605, line: 44, baseType: !123, size: 32, align: 32, offset: 1120)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "unicast", scope: !606, file: !605, line: 45, baseType: !155, size: 8, align: 8, offset: 1152)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "fd_in", scope: !606, file: !605, line: 46, baseType: !112, size: 32, align: 32, offset: 1184)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "fd_out", scope: !606, file: !605, line: 47, baseType: !112, size: 32, align: 32, offset: 1216)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "rx_buf_size", scope: !606, file: !605, line: 48, baseType: !112, size: 32, align: 32, offset: 1248)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !606, file: !605, line: 49, baseType: !357, size: 64, align: 64, offset: 1280)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !478, file: !4, line: 269, baseType: !112, size: 32, align: 32, offset: 5888)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !478, file: !4, line: 271, baseType: !112, size: 32, align: 32, offset: 5920)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "smtp_alert", scope: !478, file: !4, line: 274, baseType: !112, size: 32, align: 32, offset: 5952)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "last_email_state", scope: !478, file: !4, line: 275, baseType: !112, size: 32, align: 32, offset: 5984)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "notify_exec", scope: !478, file: !4, line: 276, baseType: !155, size: 8, align: 8, offset: 6016)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "script_backup", scope: !478, file: !4, line: 277, baseType: !511, size: 64, align: 64, offset: 6080)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "script_master", scope: !478, file: !4, line: 278, baseType: !511, size: 64, align: 64, offset: 6144)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "script_fault", scope: !478, file: !4, line: 279, baseType: !511, size: 64, align: 64, offset: 6208)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "script_stop", scope: !478, file: !4, line: 280, baseType: !511, size: 64, align: 64, offset: 6272)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "script_master_rx_lower_pri", scope: !478, file: !4, line: 281, baseType: !511, size: 64, align: 64, offset: 6336)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "script", scope: !478, file: !4, line: 282, baseType: !511, size: 64, align: 64, offset: 6400)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "ms_down_timer", scope: !478, file: !4, line: 285, baseType: !124, size: 32, align: 32, offset: 6464)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "sands", scope: !478, file: !4, line: 286, baseType: !185, size: 128, align: 64, offset: 6528)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "send_buffer", scope: !478, file: !4, line: 289, baseType: !105, size: 64, align: 64, offset: 6656)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "send_buffer_size", scope: !478, file: !4, line: 290, baseType: !168, size: 64, align: 64, offset: 6720)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "ipv4_csum", scope: !478, file: !4, line: 291, baseType: !124, size: 32, align: 32, offset: 6784)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "auth_type", scope: !478, file: !4, line: 295, baseType: !141, size: 8, align: 8, offset: 6816)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "auth_data", scope: !478, file: !4, line: 296, baseType: !635, size: 64, align: 8, offset: 6824)
!635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 64, align: 8, elements: !147)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "ipsecah_counter", scope: !478, file: !4, line: 299, baseType: !637, size: 64, align: 32, offset: 6912)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "seq_counter_t", file: !638, line: 58, baseType: !639)
!638 = !DIFile(filename: "./../include/vrrp_ipsecah.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_seq_counter", file: !638, line: 55, size: 64, align: 32, elements: !640)
!640 = !{!641, !642}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "cycle", scope: !639, file: !638, line: 56, baseType: !155, size: 8, align: 8)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "seq_number", scope: !639, file: !638, line: 57, baseType: !124, size: 32, align: 32, offset: 32)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "ip_id", scope: !478, file: !4, line: 309, baseType: !112, size: 32, align: 32, offset: 6976)
!644 = !DILocalVariable(name: "vrrp", arg: 1, scope: !473, file: !356, line: 65, type: !476)
!645 = !DILocation(line: 65, column: 24, scope: !473)
!646 = !DILocalVariable(name: "strvec", arg: 2, scope: !473, file: !356, line: 65, type: !491)
!647 = !DILocation(line: 65, column: 40, scope: !473)
!648 = !DILocalVariable(name: "ifp", scope: !473, file: !356, line: 67, type: !114)
!649 = !DILocation(line: 67, column: 15, scope: !473)
!650 = !DILocalVariable(name: "tip", scope: !473, file: !356, line: 68, type: !107)
!651 = !DILocation(line: 68, column: 16, scope: !473)
!652 = !DILocalVariable(name: "weight", scope: !473, file: !356, line: 69, type: !112)
!653 = !DILocation(line: 69, column: 6, scope: !473)
!654 = !DILocalVariable(name: "tracked", scope: !473, file: !356, line: 70, type: !105)
!655 = !DILocation(line: 70, column: 8, scope: !473)
!656 = !DILocation(line: 70, column: 30, scope: !473)
!657 = !DILocation(line: 70, column: 18, scope: !473)
!658 = !DILocalVariable(name: "e", scope: !473, file: !356, line: 71, type: !659)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "element", file: !210, line: 30, baseType: !215)
!660 = !DILocation(line: 71, column: 10, scope: !473)
!661 = !DILocation(line: 73, column: 25, scope: !473)
!662 = !DILocation(line: 73, column: 8, scope: !473)
!663 = !DILocation(line: 73, column: 6, scope: !473)
!664 = !DILocation(line: 75, column: 7, scope: !665)
!665 = distinct !DILexicalBlock(scope: !473, file: !356, line: 75, column: 6)
!666 = !DILocation(line: 75, column: 6, scope: !473)
!667 = !DILocation(line: 76, column: 88, scope: !668)
!668 = distinct !DILexicalBlock(scope: !665, file: !356, line: 75, column: 12)
!669 = !DILocation(line: 76, column: 94, scope: !668)
!670 = !DILocation(line: 76, column: 101, scope: !668)
!671 = !DILocation(line: 76, column: 3, scope: !668)
!672 = !DILocation(line: 77, column: 3, scope: !668)
!673 = !DILocation(line: 81, column: 15, scope: !674)
!674 = distinct !DILexicalBlock(scope: !473, file: !356, line: 81, column: 2)
!675 = !DILocation(line: 81, column: 21, scope: !674)
!676 = !DILocation(line: 81, column: 14, scope: !674)
!677 = !DILocation(line: 81, column: 37, scope: !678)
!678 = !DILexicalBlockFile(scope: !674, file: !356, discriminator: 1)
!679 = !DILocation(line: 81, column: 43, scope: !678)
!680 = !DILocation(line: 81, column: 36, scope: !678)
!681 = !DILocation(line: 81, column: 35, scope: !678)
!682 = !DILocation(line: 81, column: 35, scope: !683)
!683 = !DILexicalBlockFile(scope: !674, file: !356, discriminator: 2)
!684 = !DILocation(line: 81, column: 4, scope: !685)
!685 = !DILexicalBlockFile(scope: !674, file: !356, discriminator: 3)
!686 = !DILocation(line: 81, column: 10, scope: !685)
!687 = !DILocation(line: 81, column: 22, scope: !685)
!688 = !DILocation(line: 81, column: 35, scope: !685)
!689 = !DILocation(line: 81, column: 35, scope: !690)
!690 = !DILexicalBlockFile(scope: !674, file: !356, discriminator: 4)
!691 = !DILocation(line: 81, column: 14, scope: !690)
!692 = !DILocation(line: 81, column: 14, scope: !693)
!693 = !DILexicalBlockFile(scope: !674, file: !356, discriminator: 5)
!694 = !DILocation(line: 81, column: 14, scope: !695)
!695 = !DILexicalBlockFile(scope: !674, file: !356, discriminator: 6)
!696 = !DILocation(line: 81, column: 11, scope: !695)
!697 = !DILocation(line: 81, column: 7, scope: !695)
!698 = !DILocation(line: 81, column: 5, scope: !699)
!699 = !DILexicalBlockFile(scope: !700, file: !356, discriminator: 7)
!700 = distinct !DILexicalBlock(scope: !674, file: !356, line: 81, column: 2)
!701 = !DILocation(line: 81, column: 4, scope: !699)
!702 = !DILocation(line: 81, column: 8, scope: !699)
!703 = !DILocation(line: 81, column: 22, scope: !704)
!704 = !DILexicalBlockFile(scope: !700, file: !356, discriminator: 8)
!705 = !DILocation(line: 81, column: 26, scope: !704)
!706 = !DILocation(line: 81, column: 20, scope: !704)
!707 = !DILocation(line: 81, column: 18, scope: !704)
!708 = !DILocation(line: 81, column: 2, scope: !709)
!709 = !DILexicalBlockFile(scope: !674, file: !356, discriminator: 9)
!710 = !DILocation(line: 82, column: 7, scope: !711)
!711 = distinct !DILexicalBlock(scope: !712, file: !356, line: 82, column: 7)
!712 = distinct !DILexicalBlock(scope: !700, file: !356, line: 81, column: 56)
!713 = !DILocation(line: 82, column: 12, scope: !711)
!714 = !DILocation(line: 82, column: 19, scope: !711)
!715 = !DILocation(line: 82, column: 16, scope: !711)
!716 = !DILocation(line: 82, column: 7, scope: !712)
!717 = !DILocation(line: 83, column: 94, scope: !718)
!718 = distinct !DILexicalBlock(scope: !711, file: !356, line: 82, column: 24)
!719 = !DILocation(line: 83, column: 100, scope: !718)
!720 = !DILocation(line: 83, column: 107, scope: !718)
!721 = !DILocation(line: 83, column: 4, scope: !718)
!722 = !DILocation(line: 84, column: 4, scope: !718)
!723 = !DILocation(line: 86, column: 2, scope: !712)
!724 = !DILocation(line: 81, column: 45, scope: !725)
!725 = !DILexicalBlockFile(scope: !700, file: !356, discriminator: 10)
!726 = !DILocation(line: 81, column: 49, scope: !725)
!727 = !DILocation(line: 81, column: 42, scope: !725)
!728 = !DILocation(line: 81, column: 2, scope: !725)
!729 = distinct !{!729, !730}
!730 = !DILocation(line: 81, column: 2, scope: !473)
!731 = !DILocation(line: 88, column: 8, scope: !732)
!732 = distinct !DILexicalBlock(scope: !473, file: !356, line: 88, column: 6)
!733 = !DILocation(line: 88, column: 17, scope: !732)
!734 = !DILocation(line: 88, column: 28, scope: !732)
!735 = !DILocation(line: 88, column: 33, scope: !732)
!736 = !DILocation(line: 89, column: 26, scope: !732)
!737 = !DILocation(line: 89, column: 14, scope: !732)
!738 = !DILocation(line: 89, column: 7, scope: !739)
!739 = !DILexicalBlockFile(scope: !732, file: !356, discriminator: 1)
!740 = !DILocation(line: 89, column: 7, scope: !732)
!741 = !DILocation(line: 88, column: 6, scope: !742)
!742 = !DILexicalBlockFile(scope: !473, file: !356, discriminator: 1)
!743 = !DILocation(line: 90, column: 24, scope: !744)
!744 = distinct !DILexicalBlock(scope: !745, file: !356, line: 90, column: 7)
!745 = distinct !DILexicalBlock(scope: !732, file: !356, line: 89, column: 49)
!746 = !DILocation(line: 90, column: 8, scope: !744)
!747 = !DILocation(line: 90, column: 7, scope: !745)
!748 = !DILocation(line: 92, column: 45, scope: !749)
!749 = distinct !DILexicalBlock(scope: !744, file: !356, line: 90, column: 61)
!750 = !DILocation(line: 92, column: 51, scope: !749)
!751 = !DILocation(line: 92, column: 78, scope: !749)
!752 = !DILocation(line: 92, column: 66, scope: !749)
!753 = !DILocation(line: 92, column: 90, scope: !749)
!754 = !DILocation(line: 91, column: 4, scope: !749)
!755 = !DILocation(line: 93, column: 11, scope: !749)
!756 = !DILocation(line: 94, column: 3, scope: !749)
!757 = !DILocation(line: 95, column: 12, scope: !758)
!758 = distinct !DILexicalBlock(scope: !744, file: !356, line: 95, column: 12)
!759 = !DILocation(line: 95, column: 19, scope: !758)
!760 = !DILocation(line: 95, column: 27, scope: !758)
!761 = !DILocation(line: 95, column: 30, scope: !762)
!762 = !DILexicalBlockFile(scope: !758, file: !356, discriminator: 1)
!763 = !DILocation(line: 95, column: 37, scope: !762)
!764 = !DILocation(line: 95, column: 12, scope: !762)
!765 = !DILocation(line: 97, column: 104, scope: !766)
!766 = distinct !DILexicalBlock(scope: !758, file: !356, line: 95, column: 45)
!767 = !DILocation(line: 97, column: 110, scope: !766)
!768 = !DILocation(line: 97, column: 117, scope: !766)
!769 = !DILocation(line: 97, column: 4, scope: !766)
!770 = !DILocation(line: 98, column: 13, scope: !766)
!771 = !DILocation(line: 98, column: 20, scope: !766)
!772 = !DILocation(line: 98, column: 11, scope: !766)
!773 = !DILocation(line: 99, column: 3, scope: !766)
!774 = !DILocation(line: 100, column: 2, scope: !745)
!775 = !DILocation(line: 102, column: 26, scope: !473)
!776 = !DILocation(line: 102, column: 8, scope: !473)
!777 = !DILocation(line: 102, column: 6, scope: !473)
!778 = !DILocation(line: 103, column: 13, scope: !473)
!779 = !DILocation(line: 103, column: 2, scope: !473)
!780 = !DILocation(line: 103, column: 7, scope: !473)
!781 = !DILocation(line: 103, column: 11, scope: !473)
!782 = !DILocation(line: 104, column: 16, scope: !473)
!783 = !DILocation(line: 104, column: 2, scope: !473)
!784 = !DILocation(line: 104, column: 7, scope: !473)
!785 = !DILocation(line: 104, column: 14, scope: !473)
!786 = !DILocation(line: 106, column: 11, scope: !473)
!787 = !DILocation(line: 106, column: 17, scope: !473)
!788 = !DILocation(line: 106, column: 28, scope: !473)
!789 = !DILocation(line: 106, column: 2, scope: !473)
!790 = !DILocation(line: 107, column: 1, scope: !473)
!791 = !DILocation(line: 107, column: 1, scope: !742)
!792 = distinct !DISubprogram(name: "alloc_group_track_if", scope: !356, file: !356, line: 110, type: !793, isLocal: false, isDefinition: true, scopeLine: 111, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !448)
!793 = !DISubroutineType(types: !794)
!794 = !{null, !485, !491}
!795 = !DILocalVariable(name: "sgroup", arg: 1, scope: !792, file: !356, line: 110, type: !485)
!796 = !DILocation(line: 110, column: 37, scope: !792)
!797 = !DILocalVariable(name: "strvec", arg: 2, scope: !792, file: !356, line: 110, type: !491)
!798 = !DILocation(line: 110, column: 55, scope: !792)
!799 = !DILocalVariable(name: "ifp", scope: !792, file: !356, line: 112, type: !114)
!800 = !DILocation(line: 112, column: 15, scope: !792)
!801 = !DILocalVariable(name: "tip", scope: !792, file: !356, line: 113, type: !107)
!802 = !DILocation(line: 113, column: 16, scope: !792)
!803 = !DILocalVariable(name: "weight", scope: !792, file: !356, line: 114, type: !112)
!804 = !DILocation(line: 114, column: 6, scope: !792)
!805 = !DILocalVariable(name: "tracked", scope: !792, file: !356, line: 115, type: !105)
!806 = !DILocation(line: 115, column: 8, scope: !792)
!807 = !DILocation(line: 115, column: 30, scope: !792)
!808 = !DILocation(line: 115, column: 18, scope: !792)
!809 = !DILocalVariable(name: "e", scope: !792, file: !356, line: 116, type: !659)
!810 = !DILocation(line: 116, column: 10, scope: !792)
!811 = !DILocation(line: 118, column: 25, scope: !792)
!812 = !DILocation(line: 118, column: 8, scope: !792)
!813 = !DILocation(line: 118, column: 6, scope: !792)
!814 = !DILocation(line: 120, column: 7, scope: !815)
!815 = distinct !DILexicalBlock(scope: !792, file: !356, line: 120, column: 6)
!816 = !DILocation(line: 120, column: 6, scope: !792)
!817 = !DILocation(line: 121, column: 88, scope: !818)
!818 = distinct !DILexicalBlock(scope: !815, file: !356, line: 120, column: 12)
!819 = !DILocation(line: 121, column: 96, scope: !818)
!820 = !DILocation(line: 121, column: 103, scope: !818)
!821 = !DILocation(line: 121, column: 3, scope: !818)
!822 = !DILocation(line: 122, column: 3, scope: !818)
!823 = !DILocation(line: 126, column: 15, scope: !824)
!824 = distinct !DILexicalBlock(scope: !792, file: !356, line: 126, column: 2)
!825 = !DILocation(line: 126, column: 23, scope: !824)
!826 = !DILocation(line: 126, column: 14, scope: !824)
!827 = !DILocation(line: 126, column: 39, scope: !828)
!828 = !DILexicalBlockFile(scope: !824, file: !356, discriminator: 1)
!829 = !DILocation(line: 126, column: 47, scope: !828)
!830 = !DILocation(line: 126, column: 38, scope: !828)
!831 = !DILocation(line: 126, column: 37, scope: !828)
!832 = !DILocation(line: 126, column: 37, scope: !833)
!833 = !DILexicalBlockFile(scope: !824, file: !356, discriminator: 2)
!834 = !DILocation(line: 126, column: 4, scope: !835)
!835 = !DILexicalBlockFile(scope: !824, file: !356, discriminator: 3)
!836 = !DILocation(line: 126, column: 12, scope: !835)
!837 = !DILocation(line: 126, column: 24, scope: !835)
!838 = !DILocation(line: 126, column: 37, scope: !835)
!839 = !DILocation(line: 126, column: 37, scope: !840)
!840 = !DILexicalBlockFile(scope: !824, file: !356, discriminator: 4)
!841 = !DILocation(line: 126, column: 14, scope: !840)
!842 = !DILocation(line: 126, column: 14, scope: !843)
!843 = !DILexicalBlockFile(scope: !824, file: !356, discriminator: 5)
!844 = !DILocation(line: 126, column: 14, scope: !845)
!845 = !DILexicalBlockFile(scope: !824, file: !356, discriminator: 6)
!846 = !DILocation(line: 126, column: 11, scope: !845)
!847 = !DILocation(line: 126, column: 7, scope: !845)
!848 = !DILocation(line: 126, column: 5, scope: !849)
!849 = !DILexicalBlockFile(scope: !850, file: !356, discriminator: 7)
!850 = distinct !DILexicalBlock(scope: !824, file: !356, line: 126, column: 2)
!851 = !DILocation(line: 126, column: 4, scope: !849)
!852 = !DILocation(line: 126, column: 8, scope: !849)
!853 = !DILocation(line: 126, column: 22, scope: !854)
!854 = !DILexicalBlockFile(scope: !850, file: !356, discriminator: 8)
!855 = !DILocation(line: 126, column: 26, scope: !854)
!856 = !DILocation(line: 126, column: 20, scope: !854)
!857 = !DILocation(line: 126, column: 18, scope: !854)
!858 = !DILocation(line: 126, column: 2, scope: !859)
!859 = !DILexicalBlockFile(scope: !824, file: !356, discriminator: 9)
!860 = !DILocation(line: 127, column: 7, scope: !861)
!861 = distinct !DILexicalBlock(scope: !862, file: !356, line: 127, column: 7)
!862 = distinct !DILexicalBlock(scope: !850, file: !356, line: 126, column: 56)
!863 = !DILocation(line: 127, column: 12, scope: !861)
!864 = !DILocation(line: 127, column: 19, scope: !861)
!865 = !DILocation(line: 127, column: 16, scope: !861)
!866 = !DILocation(line: 127, column: 7, scope: !862)
!867 = !DILocation(line: 128, column: 94, scope: !868)
!868 = distinct !DILexicalBlock(scope: !861, file: !356, line: 127, column: 24)
!869 = !DILocation(line: 128, column: 102, scope: !868)
!870 = !DILocation(line: 128, column: 109, scope: !868)
!871 = !DILocation(line: 128, column: 4, scope: !868)
!872 = !DILocation(line: 129, column: 4, scope: !868)
!873 = !DILocation(line: 131, column: 2, scope: !862)
!874 = !DILocation(line: 126, column: 45, scope: !875)
!875 = !DILexicalBlockFile(scope: !850, file: !356, discriminator: 10)
!876 = !DILocation(line: 126, column: 49, scope: !875)
!877 = !DILocation(line: 126, column: 42, scope: !875)
!878 = !DILocation(line: 126, column: 2, scope: !875)
!879 = distinct !{!879, !880}
!880 = !DILocation(line: 126, column: 2, scope: !792)
!881 = !DILocation(line: 133, column: 8, scope: !882)
!882 = distinct !DILexicalBlock(scope: !792, file: !356, line: 133, column: 6)
!883 = !DILocation(line: 133, column: 17, scope: !882)
!884 = !DILocation(line: 133, column: 28, scope: !882)
!885 = !DILocation(line: 133, column: 33, scope: !882)
!886 = !DILocation(line: 134, column: 26, scope: !882)
!887 = !DILocation(line: 134, column: 14, scope: !882)
!888 = !DILocation(line: 134, column: 7, scope: !889)
!889 = !DILexicalBlockFile(scope: !882, file: !356, discriminator: 1)
!890 = !DILocation(line: 134, column: 7, scope: !882)
!891 = !DILocation(line: 133, column: 6, scope: !892)
!892 = !DILexicalBlockFile(scope: !792, file: !356, discriminator: 1)
!893 = !DILocation(line: 135, column: 24, scope: !894)
!894 = distinct !DILexicalBlock(scope: !895, file: !356, line: 135, column: 7)
!895 = distinct !DILexicalBlock(scope: !882, file: !356, line: 134, column: 49)
!896 = !DILocation(line: 135, column: 8, scope: !894)
!897 = !DILocation(line: 135, column: 7, scope: !895)
!898 = !DILocation(line: 137, column: 45, scope: !899)
!899 = distinct !DILexicalBlock(scope: !894, file: !356, line: 135, column: 61)
!900 = !DILocation(line: 137, column: 53, scope: !899)
!901 = !DILocation(line: 137, column: 60, scope: !899)
!902 = !DILocation(line: 136, column: 4, scope: !899)
!903 = !DILocation(line: 138, column: 11, scope: !899)
!904 = !DILocation(line: 139, column: 3, scope: !899)
!905 = !DILocation(line: 140, column: 12, scope: !906)
!906 = distinct !DILexicalBlock(scope: !894, file: !356, line: 140, column: 12)
!907 = !DILocation(line: 140, column: 19, scope: !906)
!908 = !DILocation(line: 140, column: 27, scope: !906)
!909 = !DILocation(line: 140, column: 30, scope: !910)
!910 = !DILexicalBlockFile(scope: !906, file: !356, discriminator: 1)
!911 = !DILocation(line: 140, column: 37, scope: !910)
!912 = !DILocation(line: 140, column: 12, scope: !910)
!913 = !DILocation(line: 142, column: 104, scope: !914)
!914 = distinct !DILexicalBlock(scope: !906, file: !356, line: 140, column: 45)
!915 = !DILocation(line: 142, column: 112, scope: !914)
!916 = !DILocation(line: 142, column: 119, scope: !914)
!917 = !DILocation(line: 142, column: 4, scope: !914)
!918 = !DILocation(line: 143, column: 13, scope: !914)
!919 = !DILocation(line: 143, column: 20, scope: !914)
!920 = !DILocation(line: 143, column: 11, scope: !914)
!921 = !DILocation(line: 144, column: 3, scope: !914)
!922 = !DILocation(line: 145, column: 2, scope: !895)
!923 = !DILocation(line: 147, column: 26, scope: !792)
!924 = !DILocation(line: 147, column: 8, scope: !792)
!925 = !DILocation(line: 147, column: 6, scope: !792)
!926 = !DILocation(line: 148, column: 13, scope: !792)
!927 = !DILocation(line: 148, column: 2, scope: !792)
!928 = !DILocation(line: 148, column: 7, scope: !792)
!929 = !DILocation(line: 148, column: 11, scope: !792)
!930 = !DILocation(line: 149, column: 16, scope: !792)
!931 = !DILocation(line: 149, column: 2, scope: !792)
!932 = !DILocation(line: 149, column: 7, scope: !792)
!933 = !DILocation(line: 149, column: 14, scope: !792)
!934 = !DILocation(line: 151, column: 11, scope: !792)
!935 = !DILocation(line: 151, column: 19, scope: !792)
!936 = !DILocation(line: 151, column: 30, scope: !792)
!937 = !DILocation(line: 151, column: 2, scope: !792)
!938 = !DILocation(line: 152, column: 1, scope: !792)
!939 = !DILocation(line: 152, column: 1, scope: !892)
!940 = distinct !DISubprogram(name: "find_script_by_name", scope: !356, file: !356, line: 155, type: !941, isLocal: false, isDefinition: true, scopeLine: 156, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !448)
!941 = !DISubroutineType(types: !942)
!942 = !{!289, !105}
!943 = !DILocalVariable(name: "name", arg: 1, scope: !940, file: !356, line: 155, type: !105)
!944 = !DILocation(line: 155, column: 27, scope: !940)
!945 = !DILocalVariable(name: "e", scope: !940, file: !356, line: 157, type: !659)
!946 = !DILocation(line: 157, column: 10, scope: !940)
!947 = !DILocalVariable(name: "scr", scope: !940, file: !356, line: 158, type: !289)
!948 = !DILocation(line: 158, column: 17, scope: !940)
!949 = !DILocation(line: 160, column: 8, scope: !950)
!950 = distinct !DILexicalBlock(scope: !940, file: !356, line: 160, column: 6)
!951 = !DILocation(line: 160, column: 19, scope: !950)
!952 = !DILocation(line: 160, column: 32, scope: !950)
!953 = !DILocation(line: 160, column: 5, scope: !950)
!954 = !DILocation(line: 160, column: 10, scope: !955)
!955 = !DILexicalBlockFile(scope: !950, file: !356, discriminator: 1)
!956 = !DILocation(line: 160, column: 21, scope: !955)
!957 = !DILocation(line: 160, column: 35, scope: !955)
!958 = !DILocation(line: 160, column: 40, scope: !955)
!959 = !DILocation(line: 160, column: 5, scope: !955)
!960 = !DILocation(line: 160, column: 9, scope: !961)
!961 = !DILexicalBlockFile(scope: !950, file: !356, discriminator: 2)
!962 = !DILocation(line: 160, column: 20, scope: !961)
!963 = !DILocation(line: 160, column: 34, scope: !961)
!964 = !DILocation(line: 160, column: 39, scope: !961)
!965 = !DILocation(line: 160, column: 6, scope: !961)
!966 = !DILocation(line: 161, column: 3, scope: !950)
!967 = !DILocation(line: 163, column: 14, scope: !968)
!968 = distinct !DILexicalBlock(scope: !940, file: !356, line: 163, column: 2)
!969 = !DILocation(line: 163, column: 25, scope: !968)
!970 = !DILocation(line: 163, column: 13, scope: !968)
!971 = !DILocation(line: 163, column: 12, scope: !968)
!972 = !DILocation(line: 163, column: 12, scope: !973)
!973 = !DILexicalBlockFile(scope: !968, file: !356, discriminator: 1)
!974 = !DILocation(line: 163, column: 13, scope: !975)
!975 = !DILexicalBlockFile(scope: !968, file: !356, discriminator: 2)
!976 = !DILocation(line: 163, column: 24, scope: !975)
!977 = !DILocation(line: 163, column: 38, scope: !975)
!978 = !DILocation(line: 163, column: 12, scope: !975)
!979 = !DILocation(line: 163, column: 12, scope: !980)
!980 = !DILexicalBlockFile(scope: !968, file: !356, discriminator: 3)
!981 = !DILocation(line: 163, column: 9, scope: !980)
!982 = !DILocation(line: 163, column: 7, scope: !980)
!983 = !DILocation(line: 163, column: 45, scope: !984)
!984 = !DILexicalBlockFile(scope: !985, file: !356, discriminator: 4)
!985 = distinct !DILexicalBlock(scope: !968, file: !356, line: 163, column: 2)
!986 = !DILocation(line: 163, column: 2, scope: !984)
!987 = !DILocation(line: 164, column: 11, scope: !988)
!988 = distinct !DILexicalBlock(scope: !985, file: !356, line: 163, column: 67)
!989 = !DILocation(line: 164, column: 15, scope: !988)
!990 = !DILocation(line: 164, column: 9, scope: !988)
!991 = !DILocation(line: 164, column: 7, scope: !988)
!992 = !DILocation(line: 165, column: 15, scope: !993)
!993 = distinct !DILexicalBlock(scope: !988, file: !356, line: 165, column: 7)
!994 = !DILocation(line: 165, column: 20, scope: !993)
!995 = !DILocation(line: 165, column: 27, scope: !993)
!996 = !DILocation(line: 165, column: 8, scope: !993)
!997 = !DILocation(line: 165, column: 7, scope: !988)
!998 = !DILocation(line: 166, column: 11, scope: !993)
!999 = !DILocation(line: 166, column: 4, scope: !993)
!1000 = !DILocation(line: 167, column: 2, scope: !988)
!1001 = !DILocation(line: 163, column: 56, scope: !1002)
!1002 = !DILexicalBlockFile(scope: !985, file: !356, discriminator: 5)
!1003 = !DILocation(line: 163, column: 60, scope: !1002)
!1004 = !DILocation(line: 163, column: 53, scope: !1002)
!1005 = !DILocation(line: 163, column: 2, scope: !1002)
!1006 = distinct !{!1006, !1007}
!1007 = !DILocation(line: 163, column: 2, scope: !940)
!1008 = !DILocation(line: 168, column: 2, scope: !940)
!1009 = !DILocation(line: 169, column: 1, scope: !940)
!1010 = distinct !DISubprogram(name: "dump_track_script", scope: !356, file: !356, line: 173, type: !229, isLocal: false, isDefinition: true, scopeLine: 174, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !448)
!1011 = !DILocalVariable(name: "fp", arg: 1, scope: !1010, file: !356, line: 173, type: !231)
!1012 = !DILocation(line: 173, column: 25, scope: !1010)
!1013 = !DILocalVariable(name: "track_data", arg: 2, scope: !1010, file: !356, line: 173, type: !104)
!1014 = !DILocation(line: 173, column: 35, scope: !1010)
!1015 = !DILocalVariable(name: "tsc", scope: !1010, file: !356, line: 175, type: !284)
!1016 = !DILocation(line: 175, column: 16, scope: !1010)
!1017 = !DILocation(line: 175, column: 22, scope: !1010)
!1018 = !DILocation(line: 176, column: 13, scope: !1010)
!1019 = !DILocation(line: 176, column: 38, scope: !1010)
!1020 = !DILocation(line: 176, column: 43, scope: !1010)
!1021 = !DILocation(line: 176, column: 48, scope: !1010)
!1022 = !DILocation(line: 176, column: 55, scope: !1010)
!1023 = !DILocation(line: 176, column: 60, scope: !1010)
!1024 = !DILocation(line: 176, column: 2, scope: !1010)
!1025 = !DILocation(line: 177, column: 1, scope: !1010)
!1026 = distinct !DISubprogram(name: "free_track_script", scope: !356, file: !356, line: 180, type: !225, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !448)
!1027 = !DILocalVariable(name: "tsc", arg: 1, scope: !1026, file: !356, line: 180, type: !104)
!1028 = !DILocation(line: 180, column: 25, scope: !1026)
!1029 = !DILocation(line: 182, column: 8, scope: !1026)
!1030 = !DILocation(line: 182, column: 3, scope: !1026)
!1031 = !DILocation(line: 182, column: 20, scope: !1026)
!1032 = !DILocation(line: 183, column: 1, scope: !1026)
!1033 = distinct !DISubprogram(name: "alloc_track_script", scope: !356, file: !356, line: 186, type: !474, isLocal: false, isDefinition: true, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !448)
!1034 = !DILocalVariable(name: "vrrp", arg: 1, scope: !1033, file: !356, line: 186, type: !476)
!1035 = !DILocation(line: 186, column: 28, scope: !1033)
!1036 = !DILocalVariable(name: "strvec", arg: 2, scope: !1033, file: !356, line: 186, type: !491)
!1037 = !DILocation(line: 186, column: 44, scope: !1033)
!1038 = !DILocalVariable(name: "vsc", scope: !1033, file: !356, line: 188, type: !289)
!1039 = !DILocation(line: 188, column: 17, scope: !1033)
!1040 = !DILocalVariable(name: "tsc", scope: !1033, file: !356, line: 189, type: !284)
!1041 = !DILocation(line: 189, column: 16, scope: !1033)
!1042 = !DILocalVariable(name: "weight", scope: !1033, file: !356, line: 190, type: !112)
!1043 = !DILocation(line: 190, column: 6, scope: !1033)
!1044 = !DILocalVariable(name: "tracked", scope: !1033, file: !356, line: 191, type: !105)
!1045 = !DILocation(line: 191, column: 8, scope: !1033)
!1046 = !DILocation(line: 191, column: 30, scope: !1033)
!1047 = !DILocation(line: 191, column: 18, scope: !1033)
!1048 = !DILocalVariable(name: "e", scope: !1033, file: !356, line: 192, type: !659)
!1049 = !DILocation(line: 192, column: 10, scope: !1033)
!1050 = !DILocalVariable(name: "etsc", scope: !1033, file: !356, line: 193, type: !284)
!1051 = !DILocation(line: 193, column: 16, scope: !1033)
!1052 = !DILocation(line: 195, column: 28, scope: !1033)
!1053 = !DILocation(line: 195, column: 8, scope: !1033)
!1054 = !DILocation(line: 195, column: 6, scope: !1033)
!1055 = !DILocation(line: 198, column: 7, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1033, file: !356, line: 198, column: 6)
!1057 = !DILocation(line: 198, column: 6, scope: !1033)
!1058 = !DILocation(line: 199, column: 92, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1056, file: !356, line: 198, column: 12)
!1060 = !DILocation(line: 199, column: 98, scope: !1059)
!1061 = !DILocation(line: 199, column: 105, scope: !1059)
!1062 = !DILocation(line: 199, column: 3, scope: !1059)
!1063 = !DILocation(line: 200, column: 3, scope: !1059)
!1064 = !DILocation(line: 203, column: 9, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1033, file: !356, line: 203, column: 6)
!1066 = !DILocation(line: 203, column: 15, scope: !1065)
!1067 = !DILocation(line: 203, column: 29, scope: !1065)
!1068 = !DILocation(line: 203, column: 6, scope: !1065)
!1069 = !DILocation(line: 203, column: 11, scope: !1070)
!1070 = !DILexicalBlockFile(scope: !1065, file: !356, discriminator: 1)
!1071 = !DILocation(line: 203, column: 17, scope: !1070)
!1072 = !DILocation(line: 203, column: 32, scope: !1070)
!1073 = !DILocation(line: 203, column: 37, scope: !1070)
!1074 = !DILocation(line: 203, column: 6, scope: !1070)
!1075 = !DILocation(line: 203, column: 10, scope: !1076)
!1076 = !DILexicalBlockFile(scope: !1065, file: !356, discriminator: 2)
!1077 = !DILocation(line: 203, column: 16, scope: !1076)
!1078 = !DILocation(line: 203, column: 31, scope: !1076)
!1079 = !DILocation(line: 203, column: 36, scope: !1076)
!1080 = !DILocation(line: 203, column: 6, scope: !1076)
!1081 = !DILocation(line: 205, column: 15, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1083, file: !356, line: 205, column: 3)
!1083 = distinct !DILexicalBlock(scope: !1065, file: !356, line: 203, column: 10)
!1084 = !DILocation(line: 205, column: 21, scope: !1082)
!1085 = !DILocation(line: 205, column: 14, scope: !1082)
!1086 = !DILocation(line: 205, column: 13, scope: !1082)
!1087 = !DILocation(line: 205, column: 13, scope: !1088)
!1088 = !DILexicalBlockFile(scope: !1082, file: !356, discriminator: 1)
!1089 = !DILocation(line: 205, column: 14, scope: !1090)
!1090 = !DILexicalBlockFile(scope: !1082, file: !356, discriminator: 2)
!1091 = !DILocation(line: 205, column: 20, scope: !1090)
!1092 = !DILocation(line: 205, column: 35, scope: !1090)
!1093 = !DILocation(line: 205, column: 13, scope: !1090)
!1094 = !DILocation(line: 205, column: 13, scope: !1095)
!1095 = !DILexicalBlockFile(scope: !1082, file: !356, discriminator: 3)
!1096 = !DILocation(line: 205, column: 10, scope: !1095)
!1097 = !DILocation(line: 205, column: 8, scope: !1095)
!1098 = !DILocation(line: 205, column: 42, scope: !1099)
!1099 = !DILexicalBlockFile(scope: !1100, file: !356, discriminator: 4)
!1100 = distinct !DILexicalBlock(scope: !1082, file: !356, line: 205, column: 3)
!1101 = !DILocation(line: 205, column: 3, scope: !1099)
!1102 = !DILocation(line: 206, column: 13, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1100, file: !356, line: 205, column: 64)
!1104 = !DILocation(line: 206, column: 17, scope: !1103)
!1105 = !DILocation(line: 206, column: 11, scope: !1103)
!1106 = !DILocation(line: 206, column: 9, scope: !1103)
!1107 = !DILocation(line: 207, column: 8, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1103, file: !356, line: 207, column: 8)
!1109 = !DILocation(line: 207, column: 14, scope: !1108)
!1110 = !DILocation(line: 207, column: 21, scope: !1108)
!1111 = !DILocation(line: 207, column: 18, scope: !1108)
!1112 = !DILocation(line: 207, column: 8, scope: !1103)
!1113 = !DILocation(line: 208, column: 92, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1108, file: !356, line: 207, column: 26)
!1115 = !DILocation(line: 208, column: 98, scope: !1114)
!1116 = !DILocation(line: 208, column: 105, scope: !1114)
!1117 = !DILocation(line: 208, column: 5, scope: !1114)
!1118 = !DILocation(line: 209, column: 5, scope: !1114)
!1119 = !DILocation(line: 211, column: 3, scope: !1103)
!1120 = !DILocation(line: 205, column: 53, scope: !1121)
!1121 = !DILexicalBlockFile(scope: !1100, file: !356, discriminator: 5)
!1122 = !DILocation(line: 205, column: 57, scope: !1121)
!1123 = !DILocation(line: 205, column: 50, scope: !1121)
!1124 = !DILocation(line: 205, column: 3, scope: !1121)
!1125 = distinct !{!1125, !1126}
!1126 = !DILocation(line: 205, column: 3, scope: !1083)
!1127 = !DILocation(line: 212, column: 2, scope: !1083)
!1128 = !DILocation(line: 215, column: 11, scope: !1033)
!1129 = !DILocation(line: 215, column: 16, scope: !1033)
!1130 = !DILocation(line: 215, column: 9, scope: !1033)
!1131 = !DILocation(line: 217, column: 8, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1033, file: !356, line: 217, column: 6)
!1133 = !DILocation(line: 217, column: 17, scope: !1132)
!1134 = !DILocation(line: 217, column: 28, scope: !1132)
!1135 = !DILocation(line: 217, column: 33, scope: !1132)
!1136 = !DILocation(line: 218, column: 26, scope: !1132)
!1137 = !DILocation(line: 218, column: 14, scope: !1132)
!1138 = !DILocation(line: 218, column: 7, scope: !1139)
!1139 = !DILexicalBlockFile(scope: !1132, file: !356, discriminator: 1)
!1140 = !DILocation(line: 218, column: 7, scope: !1132)
!1141 = !DILocation(line: 217, column: 6, scope: !1142)
!1142 = !DILexicalBlockFile(scope: !1033, file: !356, discriminator: 1)
!1143 = !DILocation(line: 219, column: 24, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1145, file: !356, line: 219, column: 7)
!1145 = distinct !DILexicalBlock(scope: !1132, file: !356, line: 218, column: 49)
!1146 = !DILocation(line: 219, column: 8, scope: !1144)
!1147 = !DILocation(line: 219, column: 7, scope: !1145)
!1148 = !DILocation(line: 220, column: 13, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1144, file: !356, line: 219, column: 61)
!1150 = !DILocation(line: 220, column: 18, scope: !1149)
!1151 = !DILocation(line: 220, column: 11, scope: !1149)
!1152 = !DILocation(line: 223, column: 11, scope: !1149)
!1153 = !DILocation(line: 223, column: 17, scope: !1149)
!1154 = !DILocation(line: 223, column: 24, scope: !1149)
!1155 = !DILocation(line: 221, column: 4, scope: !1149)
!1156 = !DILocation(line: 224, column: 3, scope: !1149)
!1157 = !DILocation(line: 225, column: 12, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1144, file: !356, line: 225, column: 12)
!1159 = !DILocation(line: 225, column: 19, scope: !1158)
!1160 = !DILocation(line: 225, column: 27, scope: !1158)
!1161 = !DILocation(line: 225, column: 30, scope: !1162)
!1162 = !DILexicalBlockFile(scope: !1158, file: !356, discriminator: 1)
!1163 = !DILocation(line: 225, column: 37, scope: !1162)
!1164 = !DILocation(line: 225, column: 12, scope: !1162)
!1165 = !DILocation(line: 227, column: 104, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1158, file: !356, line: 225, column: 45)
!1167 = !DILocation(line: 227, column: 110, scope: !1166)
!1168 = !DILocation(line: 227, column: 117, scope: !1166)
!1169 = !DILocation(line: 227, column: 4, scope: !1166)
!1170 = !DILocation(line: 228, column: 13, scope: !1166)
!1171 = !DILocation(line: 228, column: 20, scope: !1166)
!1172 = !DILocation(line: 228, column: 11, scope: !1166)
!1173 = !DILocation(line: 229, column: 3, scope: !1166)
!1174 = !DILocation(line: 230, column: 2, scope: !1145)
!1175 = !DILocation(line: 232, column: 26, scope: !1033)
!1176 = !DILocation(line: 232, column: 8, scope: !1033)
!1177 = !DILocation(line: 232, column: 6, scope: !1033)
!1178 = !DILocation(line: 233, column: 13, scope: !1033)
!1179 = !DILocation(line: 233, column: 2, scope: !1033)
!1180 = !DILocation(line: 233, column: 7, scope: !1033)
!1181 = !DILocation(line: 233, column: 11, scope: !1033)
!1182 = !DILocation(line: 234, column: 16, scope: !1033)
!1183 = !DILocation(line: 234, column: 2, scope: !1033)
!1184 = !DILocation(line: 234, column: 7, scope: !1033)
!1185 = !DILocation(line: 234, column: 14, scope: !1033)
!1186 = !DILocation(line: 235, column: 2, scope: !1033)
!1187 = !DILocation(line: 235, column: 7, scope: !1033)
!1188 = !DILocation(line: 235, column: 18, scope: !1033)
!1189 = !DILocation(line: 236, column: 11, scope: !1033)
!1190 = !DILocation(line: 236, column: 17, scope: !1033)
!1191 = !DILocation(line: 236, column: 31, scope: !1033)
!1192 = !DILocation(line: 236, column: 2, scope: !1033)
!1193 = !DILocation(line: 237, column: 1, scope: !1033)
!1194 = !DILocation(line: 237, column: 1, scope: !1142)
!1195 = distinct !DISubprogram(name: "alloc_group_track_script", scope: !356, file: !356, line: 240, type: !793, isLocal: false, isDefinition: true, scopeLine: 241, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !448)
!1196 = !DILocalVariable(name: "sgroup", arg: 1, scope: !1195, file: !356, line: 240, type: !485)
!1197 = !DILocation(line: 240, column: 41, scope: !1195)
!1198 = !DILocalVariable(name: "strvec", arg: 2, scope: !1195, file: !356, line: 240, type: !491)
!1199 = !DILocation(line: 240, column: 59, scope: !1195)
!1200 = !DILocalVariable(name: "vsc", scope: !1195, file: !356, line: 242, type: !289)
!1201 = !DILocation(line: 242, column: 17, scope: !1195)
!1202 = !DILocalVariable(name: "tsc", scope: !1195, file: !356, line: 243, type: !284)
!1203 = !DILocation(line: 243, column: 16, scope: !1195)
!1204 = !DILocalVariable(name: "weight", scope: !1195, file: !356, line: 244, type: !112)
!1205 = !DILocation(line: 244, column: 6, scope: !1195)
!1206 = !DILocalVariable(name: "tracked", scope: !1195, file: !356, line: 245, type: !105)
!1207 = !DILocation(line: 245, column: 8, scope: !1195)
!1208 = !DILocation(line: 245, column: 30, scope: !1195)
!1209 = !DILocation(line: 245, column: 18, scope: !1195)
!1210 = !DILocalVariable(name: "etsc", scope: !1195, file: !356, line: 246, type: !284)
!1211 = !DILocation(line: 246, column: 16, scope: !1195)
!1212 = !DILocalVariable(name: "e", scope: !1195, file: !356, line: 247, type: !659)
!1213 = !DILocation(line: 247, column: 10, scope: !1195)
!1214 = !DILocation(line: 249, column: 28, scope: !1195)
!1215 = !DILocation(line: 249, column: 8, scope: !1195)
!1216 = !DILocation(line: 249, column: 6, scope: !1195)
!1217 = !DILocation(line: 252, column: 7, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1195, file: !356, line: 252, column: 6)
!1219 = !DILocation(line: 252, column: 6, scope: !1195)
!1220 = !DILocation(line: 253, column: 92, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1218, file: !356, line: 252, column: 12)
!1222 = !DILocation(line: 253, column: 100, scope: !1221)
!1223 = !DILocation(line: 253, column: 107, scope: !1221)
!1224 = !DILocation(line: 253, column: 3, scope: !1221)
!1225 = !DILocation(line: 254, column: 3, scope: !1221)
!1226 = !DILocation(line: 257, column: 9, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1195, file: !356, line: 257, column: 6)
!1228 = !DILocation(line: 257, column: 17, scope: !1227)
!1229 = !DILocation(line: 257, column: 31, scope: !1227)
!1230 = !DILocation(line: 257, column: 6, scope: !1227)
!1231 = !DILocation(line: 257, column: 11, scope: !1232)
!1232 = !DILexicalBlockFile(scope: !1227, file: !356, discriminator: 1)
!1233 = !DILocation(line: 257, column: 19, scope: !1232)
!1234 = !DILocation(line: 257, column: 34, scope: !1232)
!1235 = !DILocation(line: 257, column: 39, scope: !1232)
!1236 = !DILocation(line: 257, column: 6, scope: !1232)
!1237 = !DILocation(line: 257, column: 10, scope: !1238)
!1238 = !DILexicalBlockFile(scope: !1227, file: !356, discriminator: 2)
!1239 = !DILocation(line: 257, column: 18, scope: !1238)
!1240 = !DILocation(line: 257, column: 33, scope: !1238)
!1241 = !DILocation(line: 257, column: 38, scope: !1238)
!1242 = !DILocation(line: 257, column: 6, scope: !1238)
!1243 = !DILocation(line: 259, column: 15, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1245, file: !356, line: 259, column: 3)
!1245 = distinct !DILexicalBlock(scope: !1227, file: !356, line: 257, column: 10)
!1246 = !DILocation(line: 259, column: 23, scope: !1244)
!1247 = !DILocation(line: 259, column: 14, scope: !1244)
!1248 = !DILocation(line: 259, column: 13, scope: !1244)
!1249 = !DILocation(line: 259, column: 13, scope: !1250)
!1250 = !DILexicalBlockFile(scope: !1244, file: !356, discriminator: 1)
!1251 = !DILocation(line: 259, column: 14, scope: !1252)
!1252 = !DILexicalBlockFile(scope: !1244, file: !356, discriminator: 2)
!1253 = !DILocation(line: 259, column: 22, scope: !1252)
!1254 = !DILocation(line: 259, column: 37, scope: !1252)
!1255 = !DILocation(line: 259, column: 13, scope: !1252)
!1256 = !DILocation(line: 259, column: 13, scope: !1257)
!1257 = !DILexicalBlockFile(scope: !1244, file: !356, discriminator: 3)
!1258 = !DILocation(line: 259, column: 10, scope: !1257)
!1259 = !DILocation(line: 259, column: 8, scope: !1257)
!1260 = !DILocation(line: 259, column: 44, scope: !1261)
!1261 = !DILexicalBlockFile(scope: !1262, file: !356, discriminator: 4)
!1262 = distinct !DILexicalBlock(scope: !1244, file: !356, line: 259, column: 3)
!1263 = !DILocation(line: 259, column: 3, scope: !1261)
!1264 = !DILocation(line: 260, column: 13, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1262, file: !356, line: 259, column: 66)
!1266 = !DILocation(line: 260, column: 17, scope: !1265)
!1267 = !DILocation(line: 260, column: 11, scope: !1265)
!1268 = !DILocation(line: 260, column: 9, scope: !1265)
!1269 = !DILocation(line: 261, column: 8, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1265, file: !356, line: 261, column: 8)
!1271 = !DILocation(line: 261, column: 14, scope: !1270)
!1272 = !DILocation(line: 261, column: 21, scope: !1270)
!1273 = !DILocation(line: 261, column: 18, scope: !1270)
!1274 = !DILocation(line: 261, column: 8, scope: !1265)
!1275 = !DILocation(line: 262, column: 92, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1270, file: !356, line: 261, column: 26)
!1277 = !DILocation(line: 262, column: 100, scope: !1276)
!1278 = !DILocation(line: 262, column: 107, scope: !1276)
!1279 = !DILocation(line: 262, column: 5, scope: !1276)
!1280 = !DILocation(line: 263, column: 5, scope: !1276)
!1281 = !DILocation(line: 265, column: 3, scope: !1265)
!1282 = !DILocation(line: 259, column: 55, scope: !1283)
!1283 = !DILexicalBlockFile(scope: !1262, file: !356, discriminator: 5)
!1284 = !DILocation(line: 259, column: 59, scope: !1283)
!1285 = !DILocation(line: 259, column: 52, scope: !1283)
!1286 = !DILocation(line: 259, column: 3, scope: !1283)
!1287 = distinct !{!1287, !1288}
!1288 = !DILocation(line: 259, column: 3, scope: !1245)
!1289 = !DILocation(line: 266, column: 2, scope: !1245)
!1290 = !DILocation(line: 269, column: 11, scope: !1195)
!1291 = !DILocation(line: 269, column: 16, scope: !1195)
!1292 = !DILocation(line: 269, column: 9, scope: !1195)
!1293 = !DILocation(line: 271, column: 8, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1195, file: !356, line: 271, column: 6)
!1295 = !DILocation(line: 271, column: 17, scope: !1294)
!1296 = !DILocation(line: 271, column: 28, scope: !1294)
!1297 = !DILocation(line: 271, column: 33, scope: !1294)
!1298 = !DILocation(line: 272, column: 26, scope: !1294)
!1299 = !DILocation(line: 272, column: 14, scope: !1294)
!1300 = !DILocation(line: 272, column: 7, scope: !1301)
!1301 = !DILexicalBlockFile(scope: !1294, file: !356, discriminator: 1)
!1302 = !DILocation(line: 272, column: 7, scope: !1294)
!1303 = !DILocation(line: 271, column: 6, scope: !1304)
!1304 = !DILexicalBlockFile(scope: !1195, file: !356, discriminator: 1)
!1305 = !DILocation(line: 273, column: 24, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1307, file: !356, line: 273, column: 7)
!1307 = distinct !DILexicalBlock(scope: !1294, file: !356, line: 272, column: 49)
!1308 = !DILocation(line: 273, column: 8, scope: !1306)
!1309 = !DILocation(line: 273, column: 7, scope: !1307)
!1310 = !DILocation(line: 274, column: 13, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1306, file: !356, line: 273, column: 61)
!1312 = !DILocation(line: 274, column: 18, scope: !1311)
!1313 = !DILocation(line: 274, column: 11, scope: !1311)
!1314 = !DILocation(line: 277, column: 11, scope: !1311)
!1315 = !DILocation(line: 277, column: 19, scope: !1311)
!1316 = !DILocation(line: 277, column: 26, scope: !1311)
!1317 = !DILocation(line: 275, column: 4, scope: !1311)
!1318 = !DILocation(line: 278, column: 3, scope: !1311)
!1319 = !DILocation(line: 279, column: 12, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1306, file: !356, line: 279, column: 12)
!1321 = !DILocation(line: 279, column: 19, scope: !1320)
!1322 = !DILocation(line: 279, column: 27, scope: !1320)
!1323 = !DILocation(line: 279, column: 30, scope: !1324)
!1324 = !DILexicalBlockFile(scope: !1320, file: !356, discriminator: 1)
!1325 = !DILocation(line: 279, column: 37, scope: !1324)
!1326 = !DILocation(line: 279, column: 12, scope: !1324)
!1327 = !DILocation(line: 281, column: 104, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1320, file: !356, line: 279, column: 45)
!1329 = !DILocation(line: 281, column: 112, scope: !1328)
!1330 = !DILocation(line: 281, column: 119, scope: !1328)
!1331 = !DILocation(line: 281, column: 4, scope: !1328)
!1332 = !DILocation(line: 282, column: 13, scope: !1328)
!1333 = !DILocation(line: 282, column: 20, scope: !1328)
!1334 = !DILocation(line: 282, column: 11, scope: !1328)
!1335 = !DILocation(line: 283, column: 3, scope: !1328)
!1336 = !DILocation(line: 284, column: 2, scope: !1307)
!1337 = !DILocation(line: 286, column: 26, scope: !1195)
!1338 = !DILocation(line: 286, column: 8, scope: !1195)
!1339 = !DILocation(line: 286, column: 6, scope: !1195)
!1340 = !DILocation(line: 287, column: 13, scope: !1195)
!1341 = !DILocation(line: 287, column: 2, scope: !1195)
!1342 = !DILocation(line: 287, column: 7, scope: !1195)
!1343 = !DILocation(line: 287, column: 11, scope: !1195)
!1344 = !DILocation(line: 288, column: 16, scope: !1195)
!1345 = !DILocation(line: 288, column: 2, scope: !1195)
!1346 = !DILocation(line: 288, column: 7, scope: !1195)
!1347 = !DILocation(line: 288, column: 14, scope: !1195)
!1348 = !DILocation(line: 289, column: 2, scope: !1195)
!1349 = !DILocation(line: 289, column: 7, scope: !1195)
!1350 = !DILocation(line: 289, column: 18, scope: !1195)
!1351 = !DILocation(line: 290, column: 11, scope: !1195)
!1352 = !DILocation(line: 290, column: 19, scope: !1195)
!1353 = !DILocation(line: 290, column: 33, scope: !1195)
!1354 = !DILocation(line: 290, column: 2, scope: !1195)
!1355 = !DILocation(line: 291, column: 1, scope: !1195)
!1356 = !DILocation(line: 291, column: 1, scope: !1304)
!1357 = distinct !DISubprogram(name: "find_tracked_file_by_name", scope: !356, file: !356, line: 294, type: !1358, isLocal: false, isDefinition: true, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !448)
!1358 = !DISubroutineType(types: !1359)
!1359 = !{!327, !1360}
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64, align: 64)
!1361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !106)
!1362 = !DILocalVariable(name: "name", arg: 1, scope: !1357, file: !356, line: 294, type: !1360)
!1363 = !DILocation(line: 294, column: 39, scope: !1357)
!1364 = !DILocalVariable(name: "e", scope: !1357, file: !356, line: 296, type: !659)
!1365 = !DILocation(line: 296, column: 10, scope: !1357)
!1366 = !DILocalVariable(name: "file", scope: !1357, file: !356, line: 297, type: !327)
!1367 = !DILocation(line: 297, column: 23, scope: !1357)
!1368 = !DILocation(line: 299, column: 8, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1357, file: !356, line: 299, column: 6)
!1370 = !DILocation(line: 299, column: 19, scope: !1369)
!1371 = !DILocation(line: 299, column: 37, scope: !1369)
!1372 = !DILocation(line: 299, column: 5, scope: !1369)
!1373 = !DILocation(line: 299, column: 10, scope: !1374)
!1374 = !DILexicalBlockFile(scope: !1369, file: !356, discriminator: 1)
!1375 = !DILocation(line: 299, column: 21, scope: !1374)
!1376 = !DILocation(line: 299, column: 40, scope: !1374)
!1377 = !DILocation(line: 299, column: 45, scope: !1374)
!1378 = !DILocation(line: 299, column: 5, scope: !1374)
!1379 = !DILocation(line: 299, column: 9, scope: !1380)
!1380 = !DILexicalBlockFile(scope: !1369, file: !356, discriminator: 2)
!1381 = !DILocation(line: 299, column: 20, scope: !1380)
!1382 = !DILocation(line: 299, column: 39, scope: !1380)
!1383 = !DILocation(line: 299, column: 44, scope: !1380)
!1384 = !DILocation(line: 299, column: 6, scope: !1380)
!1385 = !DILocation(line: 300, column: 3, scope: !1369)
!1386 = !DILocation(line: 302, column: 14, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1357, file: !356, line: 302, column: 2)
!1388 = !DILocation(line: 302, column: 25, scope: !1387)
!1389 = !DILocation(line: 302, column: 13, scope: !1387)
!1390 = !DILocation(line: 302, column: 12, scope: !1387)
!1391 = !DILocation(line: 302, column: 12, scope: !1392)
!1392 = !DILexicalBlockFile(scope: !1387, file: !356, discriminator: 1)
!1393 = !DILocation(line: 302, column: 13, scope: !1394)
!1394 = !DILexicalBlockFile(scope: !1387, file: !356, discriminator: 2)
!1395 = !DILocation(line: 302, column: 24, scope: !1394)
!1396 = !DILocation(line: 302, column: 43, scope: !1394)
!1397 = !DILocation(line: 302, column: 12, scope: !1394)
!1398 = !DILocation(line: 302, column: 12, scope: !1399)
!1399 = !DILexicalBlockFile(scope: !1387, file: !356, discriminator: 3)
!1400 = !DILocation(line: 302, column: 9, scope: !1399)
!1401 = !DILocation(line: 302, column: 7, scope: !1399)
!1402 = !DILocation(line: 302, column: 50, scope: !1403)
!1403 = !DILexicalBlockFile(scope: !1404, file: !356, discriminator: 4)
!1404 = distinct !DILexicalBlock(scope: !1387, file: !356, line: 302, column: 2)
!1405 = !DILocation(line: 302, column: 2, scope: !1403)
!1406 = !DILocation(line: 303, column: 12, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1404, file: !356, line: 302, column: 72)
!1408 = !DILocation(line: 303, column: 16, scope: !1407)
!1409 = !DILocation(line: 303, column: 10, scope: !1407)
!1410 = !DILocation(line: 303, column: 8, scope: !1407)
!1411 = !DILocation(line: 304, column: 15, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1407, file: !356, line: 304, column: 7)
!1413 = !DILocation(line: 304, column: 21, scope: !1412)
!1414 = !DILocation(line: 304, column: 28, scope: !1412)
!1415 = !DILocation(line: 304, column: 8, scope: !1412)
!1416 = !DILocation(line: 304, column: 7, scope: !1407)
!1417 = !DILocation(line: 305, column: 11, scope: !1412)
!1418 = !DILocation(line: 305, column: 4, scope: !1412)
!1419 = !DILocation(line: 306, column: 2, scope: !1407)
!1420 = !DILocation(line: 302, column: 61, scope: !1421)
!1421 = !DILexicalBlockFile(scope: !1404, file: !356, discriminator: 5)
!1422 = !DILocation(line: 302, column: 65, scope: !1421)
!1423 = !DILocation(line: 302, column: 58, scope: !1421)
!1424 = !DILocation(line: 302, column: 2, scope: !1421)
!1425 = distinct !{!1425, !1426}
!1426 = !DILocation(line: 302, column: 2, scope: !1357)
!1427 = !DILocation(line: 307, column: 2, scope: !1357)
!1428 = !DILocation(line: 308, column: 1, scope: !1357)
!1429 = distinct !DISubprogram(name: "dump_track_file", scope: !356, file: !356, line: 312, type: !229, isLocal: false, isDefinition: true, scopeLine: 313, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !448)
!1430 = !DILocalVariable(name: "fp", arg: 1, scope: !1429, file: !356, line: 312, type: !231)
!1431 = !DILocation(line: 312, column: 23, scope: !1429)
!1432 = !DILocalVariable(name: "track_data", arg: 2, scope: !1429, file: !356, line: 312, type: !104)
!1433 = !DILocation(line: 312, column: 33, scope: !1429)
!1434 = !DILocalVariable(name: "tfile", scope: !1429, file: !356, line: 314, type: !322)
!1435 = !DILocation(line: 314, column: 18, scope: !1429)
!1436 = !DILocation(line: 314, column: 26, scope: !1429)
!1437 = !DILocation(line: 315, column: 13, scope: !1429)
!1438 = !DILocation(line: 315, column: 39, scope: !1429)
!1439 = !DILocation(line: 315, column: 46, scope: !1429)
!1440 = !DILocation(line: 315, column: 52, scope: !1429)
!1441 = !DILocation(line: 315, column: 59, scope: !1429)
!1442 = !DILocation(line: 315, column: 66, scope: !1429)
!1443 = !DILocation(line: 315, column: 2, scope: !1429)
!1444 = !DILocation(line: 316, column: 1, scope: !1429)
!1445 = distinct !DISubprogram(name: "free_track_file", scope: !356, file: !356, line: 319, type: !225, isLocal: false, isDefinition: true, scopeLine: 320, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !448)
!1446 = !DILocalVariable(name: "tsf", arg: 1, scope: !1445, file: !356, line: 319, type: !104)
!1447 = !DILocation(line: 319, column: 23, scope: !1445)
!1448 = !DILocation(line: 321, column: 8, scope: !1445)
!1449 = !DILocation(line: 321, column: 3, scope: !1445)
!1450 = !DILocation(line: 321, column: 20, scope: !1445)
!1451 = !DILocation(line: 322, column: 1, scope: !1445)
!1452 = distinct !DISubprogram(name: "alloc_track_file", scope: !356, file: !356, line: 325, type: !474, isLocal: false, isDefinition: true, scopeLine: 326, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !448)
!1453 = !DILocalVariable(name: "vrrp", arg: 1, scope: !1452, file: !356, line: 325, type: !476)
!1454 = !DILocation(line: 325, column: 26, scope: !1452)
!1455 = !DILocalVariable(name: "strvec", arg: 2, scope: !1452, file: !356, line: 325, type: !491)
!1456 = !DILocation(line: 325, column: 42, scope: !1452)
!1457 = !DILocalVariable(name: "vsf", scope: !1452, file: !356, line: 327, type: !327)
!1458 = !DILocation(line: 327, column: 23, scope: !1452)
!1459 = !DILocalVariable(name: "tfile", scope: !1452, file: !356, line: 328, type: !322)
!1460 = !DILocation(line: 328, column: 18, scope: !1452)
!1461 = !DILocalVariable(name: "tracked", scope: !1452, file: !356, line: 329, type: !105)
!1462 = !DILocation(line: 329, column: 8, scope: !1452)
!1463 = !DILocation(line: 329, column: 30, scope: !1452)
!1464 = !DILocation(line: 329, column: 18, scope: !1452)
!1465 = !DILocalVariable(name: "etfile", scope: !1452, file: !356, line: 330, type: !322)
!1466 = !DILocation(line: 330, column: 18, scope: !1452)
!1467 = !DILocalVariable(name: "e", scope: !1452, file: !356, line: 331, type: !659)
!1468 = !DILocation(line: 331, column: 10, scope: !1452)
!1469 = !DILocalVariable(name: "weight", scope: !1452, file: !356, line: 332, type: !112)
!1470 = !DILocation(line: 332, column: 6, scope: !1452)
!1471 = !DILocation(line: 334, column: 34, scope: !1452)
!1472 = !DILocation(line: 334, column: 8, scope: !1452)
!1473 = !DILocation(line: 334, column: 6, scope: !1452)
!1474 = !DILocation(line: 337, column: 7, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1452, file: !356, line: 337, column: 6)
!1476 = !DILocation(line: 337, column: 6, scope: !1452)
!1477 = !DILocation(line: 338, column: 90, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1475, file: !356, line: 337, column: 12)
!1479 = !DILocation(line: 338, column: 96, scope: !1478)
!1480 = !DILocation(line: 338, column: 103, scope: !1478)
!1481 = !DILocation(line: 338, column: 3, scope: !1478)
!1482 = !DILocation(line: 339, column: 3, scope: !1478)
!1483 = !DILocation(line: 342, column: 9, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1452, file: !356, line: 342, column: 6)
!1485 = !DILocation(line: 342, column: 15, scope: !1484)
!1486 = !DILocation(line: 342, column: 27, scope: !1484)
!1487 = !DILocation(line: 342, column: 6, scope: !1484)
!1488 = !DILocation(line: 342, column: 11, scope: !1489)
!1489 = !DILexicalBlockFile(scope: !1484, file: !356, discriminator: 1)
!1490 = !DILocation(line: 342, column: 17, scope: !1489)
!1491 = !DILocation(line: 342, column: 30, scope: !1489)
!1492 = !DILocation(line: 342, column: 35, scope: !1489)
!1493 = !DILocation(line: 342, column: 6, scope: !1489)
!1494 = !DILocation(line: 342, column: 10, scope: !1495)
!1495 = !DILexicalBlockFile(scope: !1484, file: !356, discriminator: 2)
!1496 = !DILocation(line: 342, column: 16, scope: !1495)
!1497 = !DILocation(line: 342, column: 29, scope: !1495)
!1498 = !DILocation(line: 342, column: 34, scope: !1495)
!1499 = !DILocation(line: 342, column: 6, scope: !1495)
!1500 = !DILocation(line: 344, column: 15, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1502, file: !356, line: 344, column: 3)
!1502 = distinct !DILexicalBlock(scope: !1484, file: !356, line: 342, column: 10)
!1503 = !DILocation(line: 344, column: 21, scope: !1501)
!1504 = !DILocation(line: 344, column: 14, scope: !1501)
!1505 = !DILocation(line: 344, column: 13, scope: !1501)
!1506 = !DILocation(line: 344, column: 13, scope: !1507)
!1507 = !DILexicalBlockFile(scope: !1501, file: !356, discriminator: 1)
!1508 = !DILocation(line: 344, column: 14, scope: !1509)
!1509 = !DILexicalBlockFile(scope: !1501, file: !356, discriminator: 2)
!1510 = !DILocation(line: 344, column: 20, scope: !1509)
!1511 = !DILocation(line: 344, column: 33, scope: !1509)
!1512 = !DILocation(line: 344, column: 13, scope: !1509)
!1513 = !DILocation(line: 344, column: 13, scope: !1514)
!1514 = !DILexicalBlockFile(scope: !1501, file: !356, discriminator: 3)
!1515 = !DILocation(line: 344, column: 10, scope: !1514)
!1516 = !DILocation(line: 344, column: 8, scope: !1514)
!1517 = !DILocation(line: 344, column: 40, scope: !1518)
!1518 = !DILexicalBlockFile(scope: !1519, file: !356, discriminator: 4)
!1519 = distinct !DILexicalBlock(scope: !1501, file: !356, line: 344, column: 3)
!1520 = !DILocation(line: 344, column: 3, scope: !1518)
!1521 = !DILocation(line: 345, column: 15, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1519, file: !356, line: 344, column: 62)
!1523 = !DILocation(line: 345, column: 19, scope: !1522)
!1524 = !DILocation(line: 345, column: 13, scope: !1522)
!1525 = !DILocation(line: 345, column: 11, scope: !1522)
!1526 = !DILocation(line: 346, column: 8, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1522, file: !356, line: 346, column: 8)
!1528 = !DILocation(line: 346, column: 16, scope: !1527)
!1529 = !DILocation(line: 346, column: 24, scope: !1527)
!1530 = !DILocation(line: 346, column: 21, scope: !1527)
!1531 = !DILocation(line: 346, column: 8, scope: !1522)
!1532 = !DILocation(line: 347, column: 90, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1527, file: !356, line: 346, column: 29)
!1534 = !DILocation(line: 347, column: 96, scope: !1533)
!1535 = !DILocation(line: 347, column: 103, scope: !1533)
!1536 = !DILocation(line: 347, column: 5, scope: !1533)
!1537 = !DILocation(line: 348, column: 5, scope: !1533)
!1538 = !DILocation(line: 350, column: 3, scope: !1522)
!1539 = !DILocation(line: 344, column: 51, scope: !1540)
!1540 = !DILexicalBlockFile(scope: !1519, file: !356, discriminator: 5)
!1541 = !DILocation(line: 344, column: 55, scope: !1540)
!1542 = !DILocation(line: 344, column: 48, scope: !1540)
!1543 = !DILocation(line: 344, column: 3, scope: !1540)
!1544 = distinct !{!1544, !1545}
!1545 = !DILocation(line: 344, column: 3, scope: !1502)
!1546 = !DILocation(line: 351, column: 2, scope: !1502)
!1547 = !DILocation(line: 353, column: 11, scope: !1452)
!1548 = !DILocation(line: 353, column: 16, scope: !1452)
!1549 = !DILocation(line: 353, column: 9, scope: !1452)
!1550 = !DILocation(line: 354, column: 8, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1452, file: !356, line: 354, column: 6)
!1552 = !DILocation(line: 354, column: 17, scope: !1551)
!1553 = !DILocation(line: 354, column: 28, scope: !1551)
!1554 = !DILocation(line: 354, column: 6, scope: !1452)
!1555 = !DILocation(line: 355, column: 26, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1557, file: !356, line: 355, column: 7)
!1557 = distinct !DILexicalBlock(scope: !1551, file: !356, line: 354, column: 34)
!1558 = !DILocation(line: 355, column: 14, scope: !1556)
!1559 = !DILocation(line: 355, column: 7, scope: !1560)
!1560 = !DILexicalBlockFile(scope: !1556, file: !356, discriminator: 1)
!1561 = !DILocation(line: 355, column: 7, scope: !1556)
!1562 = !DILocation(line: 355, column: 7, scope: !1557)
!1563 = !DILocation(line: 357, column: 7, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1556, file: !356, line: 355, column: 49)
!1565 = !DILocation(line: 357, column: 13, scope: !1564)
!1566 = !DILocation(line: 357, column: 40, scope: !1564)
!1567 = !DILocation(line: 357, column: 28, scope: !1564)
!1568 = !DILocation(line: 356, column: 4, scope: !1564)
!1569 = !DILocation(line: 358, column: 4, scope: !1564)
!1570 = !DILocation(line: 360, column: 9, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1557, file: !356, line: 360, column: 7)
!1572 = !DILocation(line: 360, column: 18, scope: !1571)
!1573 = !DILocation(line: 360, column: 29, scope: !1571)
!1574 = !DILocation(line: 360, column: 7, scope: !1557)
!1575 = !DILocation(line: 361, column: 25, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1577, file: !356, line: 361, column: 8)
!1577 = distinct !DILexicalBlock(scope: !1571, file: !356, line: 360, column: 35)
!1578 = !DILocation(line: 361, column: 9, scope: !1576)
!1579 = !DILocation(line: 361, column: 8, scope: !1577)
!1580 = !DILocation(line: 363, column: 46, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1576, file: !356, line: 361, column: 62)
!1582 = !DILocation(line: 363, column: 52, scope: !1581)
!1583 = !DILocation(line: 363, column: 59, scope: !1581)
!1584 = !DILocation(line: 362, column: 5, scope: !1581)
!1585 = !DILocation(line: 364, column: 14, scope: !1581)
!1586 = !DILocation(line: 364, column: 19, scope: !1581)
!1587 = !DILocation(line: 364, column: 12, scope: !1581)
!1588 = !DILocation(line: 365, column: 4, scope: !1581)
!1589 = !DILocation(line: 366, column: 3, scope: !1577)
!1590 = !DILocation(line: 368, column: 6, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1571, file: !356, line: 366, column: 10)
!1592 = !DILocation(line: 368, column: 12, scope: !1591)
!1593 = !DILocation(line: 368, column: 19, scope: !1591)
!1594 = !DILocation(line: 367, column: 4, scope: !1591)
!1595 = !DILocation(line: 369, column: 4, scope: !1591)
!1596 = !DILocation(line: 371, column: 2, scope: !1557)
!1597 = !DILocation(line: 373, column: 30, scope: !1452)
!1598 = !DILocation(line: 373, column: 10, scope: !1452)
!1599 = !DILocation(line: 373, column: 8, scope: !1452)
!1600 = !DILocation(line: 374, column: 16, scope: !1452)
!1601 = !DILocation(line: 374, column: 2, scope: !1452)
!1602 = !DILocation(line: 374, column: 9, scope: !1452)
!1603 = !DILocation(line: 374, column: 14, scope: !1452)
!1604 = !DILocation(line: 375, column: 18, scope: !1452)
!1605 = !DILocation(line: 375, column: 2, scope: !1452)
!1606 = !DILocation(line: 375, column: 9, scope: !1452)
!1607 = !DILocation(line: 375, column: 16, scope: !1452)
!1608 = !DILocation(line: 376, column: 11, scope: !1452)
!1609 = !DILocation(line: 376, column: 17, scope: !1452)
!1610 = !DILocation(line: 376, column: 29, scope: !1452)
!1611 = !DILocation(line: 376, column: 2, scope: !1452)
!1612 = !DILocation(line: 377, column: 1, scope: !1452)
!1613 = !DILocation(line: 377, column: 1, scope: !1614)
!1614 = !DILexicalBlockFile(scope: !1452, file: !356, discriminator: 1)
!1615 = distinct !DISubprogram(name: "alloc_group_track_file", scope: !356, file: !356, line: 380, type: !793, isLocal: false, isDefinition: true, scopeLine: 381, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !448)
!1616 = !DILocalVariable(name: "sgroup", arg: 1, scope: !1615, file: !356, line: 380, type: !485)
!1617 = !DILocation(line: 380, column: 39, scope: !1615)
!1618 = !DILocalVariable(name: "strvec", arg: 2, scope: !1615, file: !356, line: 380, type: !491)
!1619 = !DILocation(line: 380, column: 57, scope: !1615)
!1620 = !DILocalVariable(name: "vsf", scope: !1615, file: !356, line: 382, type: !327)
!1621 = !DILocation(line: 382, column: 23, scope: !1615)
!1622 = !DILocalVariable(name: "tfile", scope: !1615, file: !356, line: 383, type: !322)
!1623 = !DILocation(line: 383, column: 18, scope: !1615)
!1624 = !DILocalVariable(name: "tracked", scope: !1615, file: !356, line: 384, type: !105)
!1625 = !DILocation(line: 384, column: 8, scope: !1615)
!1626 = !DILocation(line: 384, column: 30, scope: !1615)
!1627 = !DILocation(line: 384, column: 18, scope: !1615)
!1628 = !DILocalVariable(name: "etfile", scope: !1615, file: !356, line: 385, type: !322)
!1629 = !DILocation(line: 385, column: 18, scope: !1615)
!1630 = !DILocalVariable(name: "e", scope: !1615, file: !356, line: 386, type: !659)
!1631 = !DILocation(line: 386, column: 10, scope: !1615)
!1632 = !DILocalVariable(name: "weight", scope: !1615, file: !356, line: 387, type: !112)
!1633 = !DILocation(line: 387, column: 6, scope: !1615)
!1634 = !DILocation(line: 389, column: 34, scope: !1615)
!1635 = !DILocation(line: 389, column: 8, scope: !1615)
!1636 = !DILocation(line: 389, column: 6, scope: !1615)
!1637 = !DILocation(line: 392, column: 7, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1615, file: !356, line: 392, column: 6)
!1639 = !DILocation(line: 392, column: 6, scope: !1615)
!1640 = !DILocation(line: 393, column: 90, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1638, file: !356, line: 392, column: 12)
!1642 = !DILocation(line: 393, column: 98, scope: !1641)
!1643 = !DILocation(line: 393, column: 105, scope: !1641)
!1644 = !DILocation(line: 393, column: 3, scope: !1641)
!1645 = !DILocation(line: 394, column: 3, scope: !1641)
!1646 = !DILocation(line: 397, column: 9, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1615, file: !356, line: 397, column: 6)
!1648 = !DILocation(line: 397, column: 17, scope: !1647)
!1649 = !DILocation(line: 397, column: 29, scope: !1647)
!1650 = !DILocation(line: 397, column: 6, scope: !1647)
!1651 = !DILocation(line: 397, column: 11, scope: !1652)
!1652 = !DILexicalBlockFile(scope: !1647, file: !356, discriminator: 1)
!1653 = !DILocation(line: 397, column: 19, scope: !1652)
!1654 = !DILocation(line: 397, column: 32, scope: !1652)
!1655 = !DILocation(line: 397, column: 37, scope: !1652)
!1656 = !DILocation(line: 397, column: 6, scope: !1652)
!1657 = !DILocation(line: 397, column: 10, scope: !1658)
!1658 = !DILexicalBlockFile(scope: !1647, file: !356, discriminator: 2)
!1659 = !DILocation(line: 397, column: 18, scope: !1658)
!1660 = !DILocation(line: 397, column: 31, scope: !1658)
!1661 = !DILocation(line: 397, column: 36, scope: !1658)
!1662 = !DILocation(line: 397, column: 6, scope: !1658)
!1663 = !DILocation(line: 399, column: 15, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1665, file: !356, line: 399, column: 3)
!1665 = distinct !DILexicalBlock(scope: !1647, file: !356, line: 397, column: 10)
!1666 = !DILocation(line: 399, column: 23, scope: !1664)
!1667 = !DILocation(line: 399, column: 14, scope: !1664)
!1668 = !DILocation(line: 399, column: 13, scope: !1664)
!1669 = !DILocation(line: 399, column: 13, scope: !1670)
!1670 = !DILexicalBlockFile(scope: !1664, file: !356, discriminator: 1)
!1671 = !DILocation(line: 399, column: 14, scope: !1672)
!1672 = !DILexicalBlockFile(scope: !1664, file: !356, discriminator: 2)
!1673 = !DILocation(line: 399, column: 22, scope: !1672)
!1674 = !DILocation(line: 399, column: 35, scope: !1672)
!1675 = !DILocation(line: 399, column: 13, scope: !1672)
!1676 = !DILocation(line: 399, column: 13, scope: !1677)
!1677 = !DILexicalBlockFile(scope: !1664, file: !356, discriminator: 3)
!1678 = !DILocation(line: 399, column: 10, scope: !1677)
!1679 = !DILocation(line: 399, column: 8, scope: !1677)
!1680 = !DILocation(line: 399, column: 42, scope: !1681)
!1681 = !DILexicalBlockFile(scope: !1682, file: !356, discriminator: 4)
!1682 = distinct !DILexicalBlock(scope: !1664, file: !356, line: 399, column: 3)
!1683 = !DILocation(line: 399, column: 3, scope: !1681)
!1684 = !DILocation(line: 400, column: 15, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1682, file: !356, line: 399, column: 64)
!1686 = !DILocation(line: 400, column: 19, scope: !1685)
!1687 = !DILocation(line: 400, column: 13, scope: !1685)
!1688 = !DILocation(line: 400, column: 11, scope: !1685)
!1689 = !DILocation(line: 401, column: 8, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1685, file: !356, line: 401, column: 8)
!1691 = !DILocation(line: 401, column: 16, scope: !1690)
!1692 = !DILocation(line: 401, column: 24, scope: !1690)
!1693 = !DILocation(line: 401, column: 21, scope: !1690)
!1694 = !DILocation(line: 401, column: 8, scope: !1685)
!1695 = !DILocation(line: 402, column: 90, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1690, file: !356, line: 401, column: 29)
!1697 = !DILocation(line: 402, column: 98, scope: !1696)
!1698 = !DILocation(line: 402, column: 105, scope: !1696)
!1699 = !DILocation(line: 402, column: 5, scope: !1696)
!1700 = !DILocation(line: 403, column: 5, scope: !1696)
!1701 = !DILocation(line: 405, column: 3, scope: !1685)
!1702 = !DILocation(line: 399, column: 53, scope: !1703)
!1703 = !DILexicalBlockFile(scope: !1682, file: !356, discriminator: 5)
!1704 = !DILocation(line: 399, column: 57, scope: !1703)
!1705 = !DILocation(line: 399, column: 50, scope: !1703)
!1706 = !DILocation(line: 399, column: 3, scope: !1703)
!1707 = distinct !{!1707, !1708}
!1708 = !DILocation(line: 399, column: 3, scope: !1665)
!1709 = !DILocation(line: 406, column: 2, scope: !1665)
!1710 = !DILocation(line: 408, column: 11, scope: !1615)
!1711 = !DILocation(line: 408, column: 16, scope: !1615)
!1712 = !DILocation(line: 408, column: 9, scope: !1615)
!1713 = !DILocation(line: 409, column: 8, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1615, file: !356, line: 409, column: 6)
!1715 = !DILocation(line: 409, column: 17, scope: !1714)
!1716 = !DILocation(line: 409, column: 28, scope: !1714)
!1717 = !DILocation(line: 409, column: 6, scope: !1615)
!1718 = !DILocation(line: 410, column: 26, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1720, file: !356, line: 410, column: 7)
!1720 = distinct !DILexicalBlock(scope: !1714, file: !356, line: 409, column: 34)
!1721 = !DILocation(line: 410, column: 14, scope: !1719)
!1722 = !DILocation(line: 410, column: 7, scope: !1723)
!1723 = !DILexicalBlockFile(scope: !1719, file: !356, discriminator: 1)
!1724 = !DILocation(line: 410, column: 7, scope: !1719)
!1725 = !DILocation(line: 410, column: 7, scope: !1720)
!1726 = !DILocation(line: 412, column: 7, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1719, file: !356, line: 410, column: 49)
!1728 = !DILocation(line: 412, column: 15, scope: !1727)
!1729 = !DILocation(line: 412, column: 42, scope: !1727)
!1730 = !DILocation(line: 412, column: 30, scope: !1727)
!1731 = !DILocation(line: 411, column: 4, scope: !1727)
!1732 = !DILocation(line: 413, column: 4, scope: !1727)
!1733 = !DILocation(line: 415, column: 9, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1720, file: !356, line: 415, column: 7)
!1735 = !DILocation(line: 415, column: 18, scope: !1734)
!1736 = !DILocation(line: 415, column: 29, scope: !1734)
!1737 = !DILocation(line: 415, column: 7, scope: !1720)
!1738 = !DILocation(line: 416, column: 25, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1740, file: !356, line: 416, column: 8)
!1740 = distinct !DILexicalBlock(scope: !1734, file: !356, line: 415, column: 35)
!1741 = !DILocation(line: 416, column: 9, scope: !1739)
!1742 = !DILocation(line: 416, column: 8, scope: !1740)
!1743 = !DILocation(line: 418, column: 46, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1739, file: !356, line: 416, column: 62)
!1745 = !DILocation(line: 418, column: 54, scope: !1744)
!1746 = !DILocation(line: 418, column: 61, scope: !1744)
!1747 = !DILocation(line: 417, column: 5, scope: !1744)
!1748 = !DILocation(line: 419, column: 14, scope: !1744)
!1749 = !DILocation(line: 419, column: 19, scope: !1744)
!1750 = !DILocation(line: 419, column: 12, scope: !1744)
!1751 = !DILocation(line: 420, column: 4, scope: !1744)
!1752 = !DILocation(line: 421, column: 3, scope: !1740)
!1753 = !DILocation(line: 423, column: 6, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1734, file: !356, line: 421, column: 10)
!1755 = !DILocation(line: 423, column: 14, scope: !1754)
!1756 = !DILocation(line: 423, column: 21, scope: !1754)
!1757 = !DILocation(line: 422, column: 4, scope: !1754)
!1758 = !DILocation(line: 424, column: 4, scope: !1754)
!1759 = !DILocation(line: 426, column: 2, scope: !1720)
!1760 = !DILocation(line: 428, column: 30, scope: !1615)
!1761 = !DILocation(line: 428, column: 10, scope: !1615)
!1762 = !DILocation(line: 428, column: 8, scope: !1615)
!1763 = !DILocation(line: 429, column: 16, scope: !1615)
!1764 = !DILocation(line: 429, column: 2, scope: !1615)
!1765 = !DILocation(line: 429, column: 9, scope: !1615)
!1766 = !DILocation(line: 429, column: 14, scope: !1615)
!1767 = !DILocation(line: 430, column: 18, scope: !1615)
!1768 = !DILocation(line: 430, column: 2, scope: !1615)
!1769 = !DILocation(line: 430, column: 9, scope: !1615)
!1770 = !DILocation(line: 430, column: 16, scope: !1615)
!1771 = !DILocation(line: 431, column: 11, scope: !1615)
!1772 = !DILocation(line: 431, column: 19, scope: !1615)
!1773 = !DILocation(line: 431, column: 31, scope: !1615)
!1774 = !DILocation(line: 431, column: 2, scope: !1615)
!1775 = !DILocation(line: 432, column: 1, scope: !1615)
!1776 = !DILocation(line: 432, column: 1, scope: !1777)
!1777 = !DILexicalBlockFile(scope: !1615, file: !356, discriminator: 1)
!1778 = distinct !DISubprogram(name: "down_instance", scope: !356, file: !356, line: 568, type: !1779, isLocal: false, isDefinition: true, scopeLine: 569, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !448)
!1779 = !DISubroutineType(types: !1780)
!1780 = !{null, !476}
!1781 = !DILocalVariable(name: "vrrp", arg: 1, scope: !1778, file: !356, line: 568, type: !476)
!1782 = !DILocation(line: 568, column: 23, scope: !1778)
!1783 = !DILocation(line: 570, column: 6, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1778, file: !356, line: 570, column: 6)
!1785 = !DILocation(line: 570, column: 12, scope: !1784)
!1786 = !DILocation(line: 570, column: 31, scope: !1784)
!1787 = !DILocation(line: 570, column: 34, scope: !1784)
!1788 = !DILocation(line: 570, column: 39, scope: !1784)
!1789 = !DILocation(line: 570, column: 42, scope: !1790)
!1790 = !DILexicalBlockFile(scope: !1784, file: !356, discriminator: 1)
!1791 = !DILocation(line: 570, column: 48, scope: !1790)
!1792 = !DILocation(line: 570, column: 54, scope: !1790)
!1793 = !DILocation(line: 570, column: 6, scope: !1790)
!1794 = !DILocation(line: 571, column: 3, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1784, file: !356, line: 570, column: 60)
!1796 = !DILocation(line: 571, column: 9, scope: !1795)
!1797 = !DILocation(line: 571, column: 19, scope: !1795)
!1798 = !DILocation(line: 572, column: 7, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1795, file: !356, line: 572, column: 7)
!1800 = !DILocation(line: 572, column: 13, scope: !1799)
!1801 = !DILocation(line: 572, column: 19, scope: !1799)
!1802 = !DILocation(line: 572, column: 7, scope: !1795)
!1803 = !DILocation(line: 573, column: 28, scope: !1799)
!1804 = !DILocation(line: 573, column: 4, scope: !1799)
!1805 = !DILocation(line: 575, column: 27, scope: !1799)
!1806 = !DILocation(line: 575, column: 4, scope: !1799)
!1807 = !DILocation(line: 577, column: 7, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1795, file: !356, line: 577, column: 7)
!1809 = !DILocation(line: 577, column: 13, scope: !1808)
!1810 = !DILocation(line: 577, column: 18, scope: !1808)
!1811 = !DILocation(line: 577, column: 21, scope: !1812)
!1812 = !DILexicalBlockFile(scope: !1808, file: !356, discriminator: 1)
!1813 = !DILocation(line: 577, column: 27, scope: !1812)
!1814 = !DILocation(line: 577, column: 33, scope: !1812)
!1815 = !DILocation(line: 577, column: 49, scope: !1812)
!1816 = !DILocation(line: 577, column: 52, scope: !1812)
!1817 = !DILocation(line: 577, column: 7, scope: !1812)
!1818 = !DILocation(line: 578, column: 20, scope: !1808)
!1819 = !DILocation(line: 578, column: 4, scope: !1808)
!1820 = !DILocation(line: 579, column: 2, scope: !1795)
!1821 = !DILocation(line: 580, column: 1, scope: !1778)
!1822 = distinct !DISubprogram(name: "vrrp_set_effective_priority", scope: !356, file: !356, line: 584, type: !1779, isLocal: false, isDefinition: true, scopeLine: 585, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !448)
!1823 = !DILocalVariable(name: "vrrp", arg: 1, scope: !1822, file: !356, line: 584, type: !476)
!1824 = !DILocation(line: 584, column: 37, scope: !1822)
!1825 = !DILocalVariable(name: "new_prio", scope: !1822, file: !356, line: 586, type: !141)
!1826 = !DILocation(line: 586, column: 10, scope: !1822)
!1827 = !DILocalVariable(name: "increasing_priority", scope: !1822, file: !356, line: 587, type: !155)
!1828 = !DILocation(line: 587, column: 6, scope: !1822)
!1829 = !DILocalVariable(name: "old_down_timer", scope: !1822, file: !356, line: 588, type: !124)
!1830 = !DILocation(line: 588, column: 11, scope: !1822)
!1831 = !DILocation(line: 591, column: 6, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1822, file: !356, line: 591, column: 6)
!1833 = !DILocation(line: 591, column: 12, scope: !1832)
!1834 = !DILocation(line: 591, column: 26, scope: !1832)
!1835 = !DILocation(line: 591, column: 6, scope: !1822)
!1836 = !DILocation(line: 592, column: 3, scope: !1832)
!1837 = !DILocation(line: 594, column: 6, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1822, file: !356, line: 594, column: 6)
!1839 = !DILocation(line: 594, column: 12, scope: !1838)
!1840 = !DILocation(line: 594, column: 27, scope: !1838)
!1841 = !DILocation(line: 594, column: 6, scope: !1822)
!1842 = !DILocation(line: 595, column: 12, scope: !1838)
!1843 = !DILocation(line: 595, column: 3, scope: !1838)
!1844 = !DILocation(line: 596, column: 11, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1838, file: !356, line: 596, column: 11)
!1846 = !DILocation(line: 596, column: 17, scope: !1845)
!1847 = !DILocation(line: 596, column: 32, scope: !1845)
!1848 = !DILocation(line: 596, column: 11, scope: !1838)
!1849 = !DILocation(line: 597, column: 12, scope: !1845)
!1850 = !DILocation(line: 597, column: 3, scope: !1845)
!1851 = !DILocation(line: 599, column: 23, scope: !1845)
!1852 = !DILocation(line: 599, column: 29, scope: !1845)
!1853 = !DILocation(line: 599, column: 14, scope: !1845)
!1854 = !DILocation(line: 599, column: 12, scope: !1845)
!1855 = !DILocation(line: 601, column: 6, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1822, file: !356, line: 601, column: 6)
!1857 = !DILocation(line: 601, column: 12, scope: !1856)
!1858 = !DILocation(line: 601, column: 34, scope: !1856)
!1859 = !DILocation(line: 601, column: 31, scope: !1856)
!1860 = !DILocation(line: 601, column: 6, scope: !1822)
!1861 = !DILocation(line: 602, column: 3, scope: !1856)
!1862 = !DILocation(line: 605, column: 7, scope: !1822)
!1863 = !DILocation(line: 605, column: 13, scope: !1822)
!1864 = !DILocation(line: 605, column: 20, scope: !1822)
!1865 = !DILocation(line: 605, column: 26, scope: !1822)
!1866 = !DILocation(line: 605, column: 46, scope: !1822)
!1867 = !DILocation(line: 604, column: 2, scope: !1822)
!1868 = !DILocation(line: 607, column: 25, scope: !1822)
!1869 = !DILocation(line: 607, column: 36, scope: !1822)
!1870 = !DILocation(line: 607, column: 42, scope: !1822)
!1871 = !DILocation(line: 607, column: 34, scope: !1822)
!1872 = !DILocation(line: 607, column: 22, scope: !1822)
!1873 = !DILocation(line: 609, column: 29, scope: !1822)
!1874 = !DILocation(line: 609, column: 2, scope: !1822)
!1875 = !DILocation(line: 609, column: 8, scope: !1822)
!1876 = !DILocation(line: 609, column: 27, scope: !1822)
!1877 = !DILocation(line: 610, column: 19, scope: !1822)
!1878 = !DILocation(line: 610, column: 25, scope: !1822)
!1879 = !DILocation(line: 610, column: 17, scope: !1822)
!1880 = !DILocation(line: 611, column: 28, scope: !1822)
!1881 = !DILocation(line: 611, column: 34, scope: !1822)
!1882 = !DILocation(line: 611, column: 26, scope: !1822)
!1883 = !DILocation(line: 611, column: 55, scope: !1822)
!1884 = !DILocation(line: 611, column: 62, scope: !1822)
!1885 = !DILocation(line: 611, column: 70, scope: !1822)
!1886 = !DILocation(line: 611, column: 54, scope: !1822)
!1887 = !DILocation(line: 611, column: 86, scope: !1888)
!1888 = !DILexicalBlockFile(scope: !1822, file: !356, discriminator: 1)
!1889 = !DILocation(line: 611, column: 93, scope: !1888)
!1890 = !DILocation(line: 611, column: 85, scope: !1888)
!1891 = !DILocation(line: 611, column: 84, scope: !1888)
!1892 = !DILocation(line: 611, column: 117, scope: !1888)
!1893 = !DILocation(line: 611, column: 124, scope: !1888)
!1894 = !DILocation(line: 611, column: 141, scope: !1888)
!1895 = !DILocation(line: 611, column: 113, scope: !1888)
!1896 = !DILocation(line: 611, column: 151, scope: !1888)
!1897 = !DILocation(line: 611, column: 159, scope: !1888)
!1898 = !DILocation(line: 611, column: 54, scope: !1888)
!1899 = !DILocation(line: 611, column: 176, scope: !1900)
!1900 = !DILexicalBlockFile(scope: !1822, file: !356, discriminator: 2)
!1901 = !DILocation(line: 611, column: 183, scope: !1900)
!1902 = !DILocation(line: 611, column: 175, scope: !1900)
!1903 = !DILocation(line: 611, column: 174, scope: !1900)
!1904 = !DILocation(line: 611, column: 203, scope: !1900)
!1905 = !DILocation(line: 611, column: 213, scope: !1900)
!1906 = !DILocation(line: 611, column: 54, scope: !1900)
!1907 = !DILocation(line: 611, column: 54, scope: !1908)
!1908 = !DILexicalBlockFile(scope: !1822, file: !356, discriminator: 3)
!1909 = !DILocation(line: 611, column: 51, scope: !1908)
!1910 = !DILocation(line: 611, column: 2, scope: !1908)
!1911 = !DILocation(line: 611, column: 8, scope: !1908)
!1912 = !DILocation(line: 611, column: 22, scope: !1908)
!1913 = !DILocation(line: 613, column: 6, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1822, file: !356, line: 613, column: 6)
!1915 = !DILocation(line: 613, column: 12, scope: !1914)
!1916 = !DILocation(line: 613, column: 18, scope: !1914)
!1917 = !DILocation(line: 613, column: 23, scope: !1914)
!1918 = !DILocation(line: 613, column: 26, scope: !1919)
!1919 = !DILexicalBlockFile(scope: !1914, file: !356, discriminator: 1)
!1920 = !DILocation(line: 613, column: 6, scope: !1919)
!1921 = !DILocation(line: 614, column: 37, scope: !1914)
!1922 = !DILocation(line: 614, column: 43, scope: !1914)
!1923 = !DILocation(line: 614, column: 60, scope: !1914)
!1924 = !DILocation(line: 614, column: 66, scope: !1914)
!1925 = !DILocation(line: 614, column: 58, scope: !1914)
!1926 = !DILocation(line: 614, column: 3, scope: !1914)
!1927 = !DILocation(line: 615, column: 1, scope: !1822)
!1928 = distinct !DISubprogram(name: "update_script_priorities", scope: !356, file: !356, line: 665, type: !1929, isLocal: false, isDefinition: true, scopeLine: 666, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !448)
!1929 = !DISubroutineType(types: !1930)
!1930 = !{null, !289, !155}
!1931 = !DILocalVariable(name: "vscript", arg: 1, scope: !1928, file: !356, line: 665, type: !289)
!1932 = !DILocation(line: 665, column: 41, scope: !1928)
!1933 = !DILocalVariable(name: "script_ok", arg: 2, scope: !1928, file: !356, line: 665, type: !155)
!1934 = !DILocation(line: 665, column: 54, scope: !1928)
!1935 = !DILocalVariable(name: "e", scope: !1928, file: !356, line: 667, type: !659)
!1936 = !DILocation(line: 667, column: 10, scope: !1928)
!1937 = !DILocalVariable(name: "vrrp", scope: !1928, file: !356, line: 668, type: !476)
!1938 = !DILocation(line: 668, column: 10, scope: !1928)
!1939 = !DILocalVariable(name: "tvp", scope: !1928, file: !356, line: 669, type: !1940)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64, align: 64)
!1941 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracking_vrrp_t", file: !68, line: 136, baseType: !1942)
!1942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_tracking_vrrp", file: !68, line: 132, size: 192, align: 64, elements: !1943)
!1943 = !{!1944, !1945, !1947}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1942, file: !68, line: 133, baseType: !112, size: 32, align: 32)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "vrrp", scope: !1942, file: !68, line: 134, baseType: !1946, size: 64, align: 64, offset: 64)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64, align: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1942, file: !68, line: 135, baseType: !1948, size: 32, align: 32, offset: 128)
!1948 = !DIDerivedType(tag: DW_TAG_typedef, name: "track_t", file: !68, line: 129, baseType: !67)
!1949 = !DILocation(line: 669, column: 19, scope: !1928)
!1950 = !DILocation(line: 672, column: 9, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1928, file: !356, line: 672, column: 6)
!1952 = !DILocation(line: 672, column: 18, scope: !1951)
!1953 = !DILocation(line: 672, column: 33, scope: !1951)
!1954 = !DILocation(line: 672, column: 6, scope: !1951)
!1955 = !DILocation(line: 672, column: 11, scope: !1956)
!1956 = !DILexicalBlockFile(scope: !1951, file: !356, discriminator: 1)
!1957 = !DILocation(line: 672, column: 20, scope: !1956)
!1958 = !DILocation(line: 672, column: 36, scope: !1956)
!1959 = !DILocation(line: 672, column: 41, scope: !1956)
!1960 = !DILocation(line: 672, column: 6, scope: !1956)
!1961 = !DILocation(line: 672, column: 10, scope: !1962)
!1962 = !DILexicalBlockFile(scope: !1951, file: !356, discriminator: 2)
!1963 = !DILocation(line: 672, column: 19, scope: !1962)
!1964 = !DILocation(line: 672, column: 35, scope: !1962)
!1965 = !DILocation(line: 672, column: 40, scope: !1962)
!1966 = !DILocation(line: 672, column: 6, scope: !1962)
!1967 = !DILocation(line: 673, column: 15, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !356, line: 673, column: 3)
!1969 = distinct !DILexicalBlock(scope: !1951, file: !356, line: 672, column: 10)
!1970 = !DILocation(line: 673, column: 24, scope: !1968)
!1971 = !DILocation(line: 673, column: 14, scope: !1968)
!1972 = !DILocation(line: 673, column: 13, scope: !1968)
!1973 = !DILocation(line: 673, column: 13, scope: !1974)
!1974 = !DILexicalBlockFile(scope: !1968, file: !356, discriminator: 1)
!1975 = !DILocation(line: 673, column: 14, scope: !1976)
!1976 = !DILexicalBlockFile(scope: !1968, file: !356, discriminator: 2)
!1977 = !DILocation(line: 673, column: 23, scope: !1976)
!1978 = !DILocation(line: 673, column: 39, scope: !1976)
!1979 = !DILocation(line: 673, column: 13, scope: !1976)
!1980 = !DILocation(line: 673, column: 13, scope: !1981)
!1981 = !DILexicalBlockFile(scope: !1968, file: !356, discriminator: 3)
!1982 = !DILocation(line: 673, column: 10, scope: !1981)
!1983 = !DILocation(line: 673, column: 8, scope: !1981)
!1984 = !DILocation(line: 673, column: 46, scope: !1985)
!1985 = !DILexicalBlockFile(scope: !1986, file: !356, discriminator: 4)
!1986 = distinct !DILexicalBlock(scope: !1968, file: !356, line: 673, column: 3)
!1987 = !DILocation(line: 673, column: 3, scope: !1985)
!1988 = !DILocation(line: 674, column: 12, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1986, file: !356, line: 673, column: 68)
!1990 = !DILocation(line: 674, column: 16, scope: !1989)
!1991 = !DILocation(line: 674, column: 10, scope: !1989)
!1992 = !DILocation(line: 674, column: 8, scope: !1989)
!1993 = !DILocation(line: 675, column: 11, scope: !1989)
!1994 = !DILocation(line: 675, column: 16, scope: !1989)
!1995 = !DILocation(line: 675, column: 9, scope: !1989)
!1996 = !DILocation(line: 677, column: 35, scope: !1989)
!1997 = !DILocation(line: 677, column: 40, scope: !1989)
!1998 = !DILocation(line: 677, column: 48, scope: !1989)
!1999 = !DILocation(line: 677, column: 57, scope: !1989)
!2000 = !DILocation(line: 677, column: 68, scope: !1989)
!2001 = !DILocation(line: 677, column: 4, scope: !1989)
!2002 = !DILocation(line: 678, column: 3, scope: !1989)
!2003 = !DILocation(line: 673, column: 57, scope: !2004)
!2004 = !DILexicalBlockFile(scope: !1986, file: !356, discriminator: 5)
!2005 = !DILocation(line: 673, column: 61, scope: !2004)
!2006 = !DILocation(line: 673, column: 54, scope: !2004)
!2007 = !DILocation(line: 673, column: 3, scope: !2004)
!2008 = distinct !{!2008, !2009}
!2009 = !DILocation(line: 673, column: 3, scope: !1969)
!2010 = !DILocation(line: 679, column: 2, scope: !1969)
!2011 = !DILocation(line: 680, column: 1, scope: !1928)
!2012 = distinct !DISubprogram(name: "process_script_update_priority", scope: !356, file: !356, line: 618, type: !2013, isLocal: true, isDefinition: true, scopeLine: 619, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !448)
!2013 = !DISubroutineType(types: !2014)
!2014 = !{null, !112, !289, !155, !476}
!2015 = !DILocalVariable(name: "weight", arg: 1, scope: !2012, file: !356, line: 618, type: !112)
!2016 = !DILocation(line: 618, column: 36, scope: !2012)
!2017 = !DILocalVariable(name: "vscript", arg: 2, scope: !2012, file: !356, line: 618, type: !289)
!2018 = !DILocation(line: 618, column: 59, scope: !2012)
!2019 = !DILocalVariable(name: "script_ok", arg: 3, scope: !2012, file: !356, line: 618, type: !155)
!2020 = !DILocation(line: 618, column: 72, scope: !2012)
!2021 = !DILocalVariable(name: "vrrp", arg: 4, scope: !2012, file: !356, line: 618, type: !476)
!2022 = !DILocation(line: 618, column: 91, scope: !2012)
!2023 = !DILocalVariable(name: "instance_left_init", scope: !2012, file: !356, line: 620, type: !155)
!2024 = !DILocation(line: 620, column: 6, scope: !2012)
!2025 = !DILocation(line: 622, column: 7, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2012, file: !356, line: 622, column: 6)
!2027 = !DILocation(line: 622, column: 6, scope: !2012)
!2028 = !DILocation(line: 623, column: 7, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !2030, file: !356, line: 623, column: 7)
!2030 = distinct !DILexicalBlock(scope: !2026, file: !356, line: 622, column: 15)
!2031 = !DILocation(line: 623, column: 16, scope: !2029)
!2032 = !DILocation(line: 623, column: 27, scope: !2029)
!2033 = !DILocation(line: 623, column: 7, scope: !2030)
!2034 = !DILocation(line: 625, column: 11, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2036, file: !356, line: 625, column: 8)
!2036 = distinct !DILexicalBlock(scope: !2029, file: !356, line: 623, column: 54)
!2037 = !DILocation(line: 625, column: 17, scope: !2035)
!2038 = !DILocation(line: 625, column: 9, scope: !2035)
!2039 = !DILocation(line: 625, column: 8, scope: !2036)
!2040 = !DILocation(line: 626, column: 24, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2035, file: !356, line: 625, column: 34)
!2042 = !DILocation(line: 627, column: 9, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2041, file: !356, line: 627, column: 9)
!2044 = !DILocation(line: 627, column: 15, scope: !2043)
!2045 = !DILocation(line: 627, column: 9, scope: !2041)
!2046 = !DILocation(line: 628, column: 6, scope: !2043)
!2047 = !DILocation(line: 628, column: 12, scope: !2043)
!2048 = !DILocation(line: 628, column: 18, scope: !2043)
!2049 = !DILocation(line: 628, column: 33, scope: !2043)
!2050 = !DILocation(line: 629, column: 4, scope: !2041)
!2051 = !DILocation(line: 630, column: 3, scope: !2036)
!2052 = !DILocation(line: 632, column: 8, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2030, file: !356, line: 632, column: 7)
!2054 = !DILocation(line: 632, column: 7, scope: !2030)
!2055 = !DILocation(line: 634, column: 18, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2053, file: !356, line: 632, column: 19)
!2057 = !DILocation(line: 634, column: 4, scope: !2056)
!2058 = !DILocation(line: 635, column: 3, scope: !2056)
!2059 = !DILocation(line: 635, column: 15, scope: !2060)
!2060 = !DILexicalBlockFile(scope: !2061, file: !356, discriminator: 1)
!2061 = distinct !DILexicalBlock(scope: !2053, file: !356, line: 635, column: 14)
!2062 = !DILocation(line: 635, column: 21, scope: !2060)
!2063 = !DILocation(line: 635, column: 37, scope: !2060)
!2064 = !DILocation(line: 636, column: 9, scope: !2061)
!2065 = !DILocation(line: 636, column: 15, scope: !2061)
!2066 = !DILocation(line: 636, column: 20, scope: !2061)
!2067 = !DILocation(line: 636, column: 24, scope: !2060)
!2068 = !DILocation(line: 636, column: 30, scope: !2060)
!2069 = !DILocation(line: 636, column: 36, scope: !2060)
!2070 = !DILocation(line: 635, column: 14, scope: !2071)
!2071 = !DILexicalBlockFile(scope: !2053, file: !356, discriminator: 2)
!2072 = !DILocation(line: 638, column: 20, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2061, file: !356, line: 636, column: 54)
!2074 = !DILocation(line: 638, column: 26, scope: !2073)
!2075 = !DILocation(line: 638, column: 4, scope: !2073)
!2076 = !DILocation(line: 639, column: 3, scope: !2073)
!2077 = !DILocation(line: 640, column: 3, scope: !2030)
!2078 = !DILocation(line: 643, column: 6, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2012, file: !356, line: 643, column: 6)
!2080 = !DILocation(line: 643, column: 15, scope: !2079)
!2081 = !DILocation(line: 643, column: 26, scope: !2079)
!2082 = !DILocation(line: 643, column: 6, scope: !2012)
!2083 = !DILocation(line: 647, column: 7, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2085, file: !356, line: 647, column: 7)
!2085 = distinct !DILexicalBlock(scope: !2079, file: !356, line: 643, column: 53)
!2086 = !DILocation(line: 647, column: 7, scope: !2085)
!2087 = !DILocation(line: 648, column: 8, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2089, file: !356, line: 648, column: 8)
!2089 = distinct !DILexicalBlock(scope: !2084, file: !356, line: 647, column: 18)
!2090 = !DILocation(line: 648, column: 15, scope: !2088)
!2091 = !DILocation(line: 648, column: 8, scope: !2089)
!2092 = !DILocation(line: 649, column: 29, scope: !2088)
!2093 = !DILocation(line: 649, column: 5, scope: !2088)
!2094 = !DILocation(line: 649, column: 11, scope: !2088)
!2095 = !DILocation(line: 649, column: 26, scope: !2088)
!2096 = !DILocation(line: 650, column: 3, scope: !2089)
!2097 = !DILocation(line: 651, column: 8, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2099, file: !356, line: 651, column: 8)
!2099 = distinct !DILexicalBlock(scope: !2084, file: !356, line: 650, column: 10)
!2100 = !DILocation(line: 651, column: 15, scope: !2098)
!2101 = !DILocation(line: 651, column: 8, scope: !2099)
!2102 = !DILocation(line: 652, column: 29, scope: !2098)
!2103 = !DILocation(line: 652, column: 5, scope: !2098)
!2104 = !DILocation(line: 652, column: 11, scope: !2098)
!2105 = !DILocation(line: 652, column: 26, scope: !2098)
!2106 = !DILocation(line: 654, column: 2, scope: !2085)
!2107 = !DILocation(line: 655, column: 7, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2109, file: !356, line: 655, column: 7)
!2109 = distinct !DILexicalBlock(scope: !2079, file: !356, line: 654, column: 9)
!2110 = !DILocation(line: 655, column: 7, scope: !2109)
!2111 = !DILocation(line: 656, column: 32, scope: !2108)
!2112 = !DILocation(line: 656, column: 28, scope: !2108)
!2113 = !DILocation(line: 656, column: 4, scope: !2108)
!2114 = !DILocation(line: 656, column: 10, scope: !2108)
!2115 = !DILocation(line: 656, column: 25, scope: !2108)
!2116 = !DILocation(line: 658, column: 32, scope: !2108)
!2117 = !DILocation(line: 658, column: 28, scope: !2108)
!2118 = !DILocation(line: 658, column: 4, scope: !2108)
!2119 = !DILocation(line: 658, column: 10, scope: !2108)
!2120 = !DILocation(line: 658, column: 25, scope: !2108)
!2121 = !DILocation(line: 661, column: 30, scope: !2012)
!2122 = !DILocation(line: 661, column: 2, scope: !2012)
!2123 = !DILocation(line: 662, column: 1, scope: !2012)
!2124 = !DILocation(line: 662, column: 1, scope: !2125)
!2125 = !DILexicalBlockFile(scope: !2012, file: !356, discriminator: 1)
!2126 = distinct !DISubprogram(name: "initialise_interface_tracking_priorities", scope: !356, file: !356, line: 733, type: !2127, isLocal: false, isDefinition: true, scopeLine: 734, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !448)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{null}
!2129 = !DILocalVariable(name: "tvp", scope: !2126, file: !356, line: 735, type: !1940)
!2130 = !DILocation(line: 735, column: 19, scope: !2126)
!2131 = !DILocalVariable(name: "ifp", scope: !2126, file: !356, line: 736, type: !114)
!2132 = !DILocation(line: 736, column: 15, scope: !2126)
!2133 = !DILocalVariable(name: "e", scope: !2126, file: !356, line: 737, type: !659)
!2134 = !DILocation(line: 737, column: 10, scope: !2126)
!2135 = !DILocalVariable(name: "e1", scope: !2126, file: !356, line: 737, type: !659)
!2136 = !DILocation(line: 737, column: 13, scope: !2126)
!2137 = !DILocation(line: 739, column: 15, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2126, file: !356, line: 739, column: 2)
!2139 = !DILocation(line: 739, column: 14, scope: !2138)
!2140 = !DILocation(line: 739, column: 35, scope: !2141)
!2141 = !DILexicalBlockFile(scope: !2138, file: !356, discriminator: 1)
!2142 = !DILocation(line: 739, column: 33, scope: !2141)
!2143 = !DILocation(line: 739, column: 33, scope: !2144)
!2144 = !DILexicalBlockFile(scope: !2138, file: !356, discriminator: 2)
!2145 = !DILocation(line: 739, column: 4, scope: !2146)
!2146 = !DILexicalBlockFile(scope: !2138, file: !356, discriminator: 3)
!2147 = !DILocation(line: 739, column: 20, scope: !2146)
!2148 = !DILocation(line: 739, column: 33, scope: !2146)
!2149 = !DILocation(line: 739, column: 33, scope: !2150)
!2150 = !DILexicalBlockFile(scope: !2138, file: !356, discriminator: 4)
!2151 = !DILocation(line: 739, column: 14, scope: !2150)
!2152 = !DILocation(line: 739, column: 14, scope: !2153)
!2153 = !DILexicalBlockFile(scope: !2138, file: !356, discriminator: 5)
!2154 = !DILocation(line: 739, column: 14, scope: !2155)
!2155 = !DILexicalBlockFile(scope: !2138, file: !356, discriminator: 6)
!2156 = !DILocation(line: 739, column: 11, scope: !2155)
!2157 = !DILocation(line: 739, column: 7, scope: !2155)
!2158 = !DILocation(line: 739, column: 5, scope: !2159)
!2159 = !DILexicalBlockFile(scope: !2160, file: !356, discriminator: 7)
!2160 = distinct !DILexicalBlock(scope: !2138, file: !356, line: 739, column: 2)
!2161 = !DILocation(line: 739, column: 4, scope: !2159)
!2162 = !DILocation(line: 739, column: 8, scope: !2159)
!2163 = !DILocation(line: 739, column: 22, scope: !2164)
!2164 = !DILexicalBlockFile(scope: !2160, file: !356, discriminator: 8)
!2165 = !DILocation(line: 739, column: 26, scope: !2164)
!2166 = !DILocation(line: 739, column: 20, scope: !2164)
!2167 = !DILocation(line: 739, column: 18, scope: !2164)
!2168 = !DILocation(line: 739, column: 2, scope: !2169)
!2169 = !DILexicalBlockFile(scope: !2138, file: !356, discriminator: 9)
!2170 = !DILocation(line: 740, column: 17, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2172, file: !356, line: 740, column: 3)
!2172 = distinct !DILexicalBlock(scope: !2160, file: !356, line: 739, column: 56)
!2173 = !DILocation(line: 740, column: 22, scope: !2171)
!2174 = !DILocation(line: 740, column: 16, scope: !2171)
!2175 = !DILocation(line: 740, column: 42, scope: !2176)
!2176 = !DILexicalBlockFile(scope: !2171, file: !356, discriminator: 1)
!2177 = !DILocation(line: 740, column: 47, scope: !2176)
!2178 = !DILocation(line: 740, column: 41, scope: !2176)
!2179 = !DILocation(line: 740, column: 40, scope: !2176)
!2180 = !DILocation(line: 740, column: 40, scope: !2181)
!2181 = !DILexicalBlockFile(scope: !2171, file: !356, discriminator: 2)
!2182 = !DILocation(line: 740, column: 5, scope: !2183)
!2183 = !DILexicalBlockFile(scope: !2171, file: !356, discriminator: 3)
!2184 = !DILocation(line: 740, column: 10, scope: !2183)
!2185 = !DILocation(line: 740, column: 26, scope: !2183)
!2186 = !DILocation(line: 740, column: 40, scope: !2183)
!2187 = !DILocation(line: 740, column: 40, scope: !2188)
!2188 = !DILexicalBlockFile(scope: !2171, file: !356, discriminator: 4)
!2189 = !DILocation(line: 740, column: 16, scope: !2188)
!2190 = !DILocation(line: 740, column: 16, scope: !2191)
!2191 = !DILexicalBlockFile(scope: !2171, file: !356, discriminator: 5)
!2192 = !DILocation(line: 740, column: 16, scope: !2193)
!2193 = !DILexicalBlockFile(scope: !2171, file: !356, discriminator: 6)
!2194 = !DILocation(line: 740, column: 13, scope: !2193)
!2195 = !DILocation(line: 740, column: 8, scope: !2193)
!2196 = !DILocation(line: 740, column: 6, scope: !2197)
!2197 = !DILexicalBlockFile(scope: !2198, file: !356, discriminator: 7)
!2198 = distinct !DILexicalBlock(scope: !2171, file: !356, line: 740, column: 3)
!2199 = !DILocation(line: 740, column: 5, scope: !2197)
!2200 = !DILocation(line: 740, column: 10, scope: !2197)
!2201 = !DILocation(line: 740, column: 24, scope: !2202)
!2202 = !DILexicalBlockFile(scope: !2198, file: !356, discriminator: 8)
!2203 = !DILocation(line: 740, column: 29, scope: !2202)
!2204 = !DILocation(line: 740, column: 22, scope: !2202)
!2205 = !DILocation(line: 740, column: 20, scope: !2202)
!2206 = !DILocation(line: 740, column: 3, scope: !2207)
!2207 = !DILexicalBlockFile(scope: !2171, file: !356, discriminator: 9)
!2208 = !DILocation(line: 741, column: 8, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2210, file: !356, line: 741, column: 8)
!2210 = distinct !DILexicalBlock(scope: !2198, file: !356, line: 740, column: 61)
!2211 = !DILocation(line: 741, column: 13, scope: !2209)
!2212 = !DILocation(line: 741, column: 20, scope: !2209)
!2213 = !DILocation(line: 741, column: 8, scope: !2210)
!2214 = !DILocation(line: 742, column: 5, scope: !2209)
!2215 = !DILocation(line: 744, column: 9, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2210, file: !356, line: 744, column: 8)
!2217 = !DILocation(line: 744, column: 14, scope: !2216)
!2218 = !DILocation(line: 744, column: 8, scope: !2210)
!2219 = !DILocation(line: 745, column: 16, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2221, file: !356, line: 745, column: 9)
!2221 = distinct !DILexicalBlock(scope: !2216, file: !356, line: 744, column: 22)
!2222 = !DILocation(line: 745, column: 22, scope: !2220)
!2223 = !DILocation(line: 745, column: 33, scope: !2220)
!2224 = !DILocation(line: 745, column: 12, scope: !2220)
!2225 = !DILocation(line: 745, column: 13, scope: !2220)
!2226 = !DILocation(line: 745, column: 19, scope: !2227)
!2227 = !DILexicalBlockFile(scope: !2220, file: !356, discriminator: 1)
!2228 = !DILocation(line: 745, column: 25, scope: !2227)
!2229 = !DILocation(line: 745, column: 30, scope: !2227)
!2230 = !DILocation(line: 745, column: 39, scope: !2231)
!2231 = !DILexicalBlockFile(scope: !2220, file: !356, discriminator: 2)
!2232 = !DILocation(line: 745, column: 45, scope: !2231)
!2233 = !DILocation(line: 745, column: 56, scope: !2231)
!2234 = !DILocation(line: 745, column: 67, scope: !2231)
!2235 = !DILocation(line: 745, column: 12, scope: !2231)
!2236 = !DILocation(line: 745, column: 9, scope: !2231)
!2237 = !DILocation(line: 747, column: 6, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2220, file: !356, line: 745, column: 16)
!2239 = !DILocation(line: 747, column: 11, scope: !2238)
!2240 = !DILocation(line: 747, column: 17, scope: !2238)
!2241 = !DILocation(line: 747, column: 23, scope: !2238)
!2242 = !DILocation(line: 748, column: 6, scope: !2238)
!2243 = !DILocation(line: 748, column: 11, scope: !2238)
!2244 = !DILocation(line: 748, column: 17, scope: !2238)
!2245 = !DILocation(line: 748, column: 36, scope: !2238)
!2246 = !DILocation(line: 749, column: 5, scope: !2238)
!2247 = !DILocation(line: 750, column: 5, scope: !2221)
!2248 = !DILocation(line: 753, column: 14, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2210, file: !356, line: 753, column: 8)
!2250 = !DILocation(line: 753, column: 20, scope: !2249)
!2251 = !DILocation(line: 753, column: 31, scope: !2249)
!2252 = !DILocation(line: 753, column: 10, scope: !2249)
!2253 = !DILocation(line: 753, column: 11, scope: !2249)
!2254 = !DILocation(line: 753, column: 17, scope: !2255)
!2255 = !DILexicalBlockFile(scope: !2249, file: !356, discriminator: 1)
!2256 = !DILocation(line: 753, column: 23, scope: !2255)
!2257 = !DILocation(line: 753, column: 28, scope: !2255)
!2258 = !DILocation(line: 753, column: 37, scope: !2259)
!2259 = !DILexicalBlockFile(scope: !2249, file: !356, discriminator: 2)
!2260 = !DILocation(line: 753, column: 43, scope: !2259)
!2261 = !DILocation(line: 753, column: 54, scope: !2259)
!2262 = !DILocation(line: 753, column: 65, scope: !2259)
!2263 = !DILocation(line: 753, column: 10, scope: !2259)
!2264 = !DILocation(line: 753, column: 8, scope: !2259)
!2265 = !DILocation(line: 754, column: 9, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2267, file: !356, line: 754, column: 9)
!2267 = distinct !DILexicalBlock(scope: !2249, file: !356, line: 753, column: 14)
!2268 = !DILocation(line: 754, column: 14, scope: !2266)
!2269 = !DILocation(line: 754, column: 21, scope: !2266)
!2270 = !DILocation(line: 754, column: 9, scope: !2267)
!2271 = !DILocation(line: 755, column: 35, scope: !2266)
!2272 = !DILocation(line: 755, column: 40, scope: !2266)
!2273 = !DILocation(line: 755, column: 6, scope: !2266)
!2274 = !DILocation(line: 755, column: 11, scope: !2266)
!2275 = !DILocation(line: 755, column: 17, scope: !2266)
!2276 = !DILocation(line: 755, column: 32, scope: !2266)
!2277 = !DILocation(line: 756, column: 4, scope: !2267)
!2278 = !DILocation(line: 758, column: 9, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2280, file: !356, line: 758, column: 9)
!2280 = distinct !DILexicalBlock(scope: !2249, file: !356, line: 757, column: 9)
!2281 = !DILocation(line: 758, column: 14, scope: !2279)
!2282 = !DILocation(line: 758, column: 21, scope: !2279)
!2283 = !DILocation(line: 758, column: 9, scope: !2280)
!2284 = !DILocation(line: 759, column: 35, scope: !2279)
!2285 = !DILocation(line: 759, column: 40, scope: !2279)
!2286 = !DILocation(line: 759, column: 6, scope: !2279)
!2287 = !DILocation(line: 759, column: 11, scope: !2279)
!2288 = !DILocation(line: 759, column: 17, scope: !2279)
!2289 = !DILocation(line: 759, column: 32, scope: !2279)
!2290 = !DILocation(line: 761, column: 3, scope: !2210)
!2291 = !DILocation(line: 740, column: 49, scope: !2292)
!2292 = !DILexicalBlockFile(scope: !2198, file: !356, discriminator: 10)
!2293 = !DILocation(line: 740, column: 54, scope: !2292)
!2294 = !DILocation(line: 740, column: 46, scope: !2292)
!2295 = !DILocation(line: 740, column: 3, scope: !2292)
!2296 = distinct !{!2296, !2297}
!2297 = !DILocation(line: 740, column: 3, scope: !2172)
!2298 = !DILocation(line: 762, column: 2, scope: !2172)
!2299 = !DILocation(line: 739, column: 45, scope: !2300)
!2300 = !DILexicalBlockFile(scope: !2160, file: !356, discriminator: 10)
!2301 = !DILocation(line: 739, column: 49, scope: !2300)
!2302 = !DILocation(line: 739, column: 42, scope: !2300)
!2303 = !DILocation(line: 739, column: 2, scope: !2300)
!2304 = distinct !{!2304, !2305}
!2305 = !DILocation(line: 739, column: 2, scope: !2126)
!2306 = !DILocation(line: 763, column: 1, scope: !2126)
!2307 = distinct !DISubprogram(name: "initialise_tracking_priorities", scope: !356, file: !356, line: 766, type: !1779, isLocal: false, isDefinition: true, scopeLine: 767, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !448)
!2308 = !DILocalVariable(name: "vrrp", arg: 1, scope: !2307, file: !356, line: 766, type: !476)
!2309 = !DILocation(line: 766, column: 40, scope: !2307)
!2310 = !DILocalVariable(name: "e", scope: !2307, file: !356, line: 768, type: !659)
!2311 = !DILocation(line: 768, column: 10, scope: !2307)
!2312 = !DILocalVariable(name: "tsc", scope: !2307, file: !356, line: 769, type: !284)
!2313 = !DILocation(line: 769, column: 16, scope: !2307)
!2314 = !DILocation(line: 776, column: 6, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2307, file: !356, line: 776, column: 6)
!2316 = !DILocation(line: 776, column: 12, scope: !2315)
!2317 = !DILocation(line: 776, column: 18, scope: !2315)
!2318 = !DILocation(line: 776, column: 28, scope: !2315)
!2319 = !DILocation(line: 776, column: 6, scope: !2307)
!2320 = !DILocation(line: 777, column: 3, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2315, file: !356, line: 776, column: 41)
!2322 = !DILocation(line: 777, column: 9, scope: !2321)
!2323 = !DILocation(line: 777, column: 28, scope: !2321)
!2324 = !DILocation(line: 778, column: 3, scope: !2321)
!2325 = !DILocation(line: 778, column: 9, scope: !2321)
!2326 = !DILocation(line: 778, column: 15, scope: !2321)
!2327 = !DILocation(line: 779, column: 2, scope: !2321)
!2328 = !DILocation(line: 782, column: 15, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2307, file: !356, line: 782, column: 2)
!2330 = !DILocation(line: 782, column: 21, scope: !2329)
!2331 = !DILocation(line: 782, column: 14, scope: !2329)
!2332 = !DILocation(line: 782, column: 40, scope: !2333)
!2333 = !DILexicalBlockFile(scope: !2329, file: !356, discriminator: 1)
!2334 = !DILocation(line: 782, column: 46, scope: !2333)
!2335 = !DILocation(line: 782, column: 39, scope: !2333)
!2336 = !DILocation(line: 782, column: 38, scope: !2333)
!2337 = !DILocation(line: 782, column: 38, scope: !2338)
!2338 = !DILexicalBlockFile(scope: !2329, file: !356, discriminator: 2)
!2339 = !DILocation(line: 782, column: 4, scope: !2340)
!2340 = !DILexicalBlockFile(scope: !2329, file: !356, discriminator: 3)
!2341 = !DILocation(line: 782, column: 10, scope: !2340)
!2342 = !DILocation(line: 782, column: 25, scope: !2340)
!2343 = !DILocation(line: 782, column: 38, scope: !2340)
!2344 = !DILocation(line: 782, column: 38, scope: !2345)
!2345 = !DILexicalBlockFile(scope: !2329, file: !356, discriminator: 4)
!2346 = !DILocation(line: 782, column: 14, scope: !2345)
!2347 = !DILocation(line: 782, column: 14, scope: !2348)
!2348 = !DILexicalBlockFile(scope: !2329, file: !356, discriminator: 5)
!2349 = !DILocation(line: 782, column: 14, scope: !2350)
!2350 = !DILexicalBlockFile(scope: !2329, file: !356, discriminator: 6)
!2351 = !DILocation(line: 782, column: 11, scope: !2350)
!2352 = !DILocation(line: 782, column: 7, scope: !2350)
!2353 = !DILocation(line: 782, column: 5, scope: !2354)
!2354 = !DILexicalBlockFile(scope: !2355, file: !356, discriminator: 7)
!2355 = distinct !DILexicalBlock(scope: !2329, file: !356, line: 782, column: 2)
!2356 = !DILocation(line: 782, column: 4, scope: !2354)
!2357 = !DILocation(line: 782, column: 8, scope: !2354)
!2358 = !DILocation(line: 782, column: 22, scope: !2359)
!2359 = !DILexicalBlockFile(scope: !2355, file: !356, discriminator: 8)
!2360 = !DILocation(line: 782, column: 26, scope: !2359)
!2361 = !DILocation(line: 782, column: 20, scope: !2359)
!2362 = !DILocation(line: 782, column: 18, scope: !2359)
!2363 = !DILocation(line: 782, column: 2, scope: !2364)
!2364 = !DILexicalBlockFile(scope: !2329, file: !356, discriminator: 9)
!2365 = !DILocation(line: 783, column: 33, scope: !2355)
!2366 = !DILocation(line: 783, column: 38, scope: !2355)
!2367 = !DILocation(line: 783, column: 3, scope: !2355)
!2368 = !DILocation(line: 782, column: 45, scope: !2369)
!2369 = !DILexicalBlockFile(scope: !2355, file: !356, discriminator: 10)
!2370 = !DILocation(line: 782, column: 49, scope: !2369)
!2371 = !DILocation(line: 782, column: 42, scope: !2369)
!2372 = !DILocation(line: 782, column: 2, scope: !2369)
!2373 = distinct !{!2373, !2374}
!2374 = !DILocation(line: 782, column: 2, scope: !2307)
!2375 = !DILocation(line: 792, column: 6, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2307, file: !356, line: 792, column: 6)
!2377 = !DILocation(line: 792, column: 12, scope: !2376)
!2378 = !DILocation(line: 792, column: 6, scope: !2307)
!2379 = !DILocation(line: 793, column: 16, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2381, file: !356, line: 793, column: 3)
!2381 = distinct !DILexicalBlock(scope: !2376, file: !356, line: 792, column: 18)
!2382 = !DILocation(line: 793, column: 22, scope: !2380)
!2383 = !DILocation(line: 793, column: 28, scope: !2380)
!2384 = !DILocation(line: 793, column: 15, scope: !2380)
!2385 = !DILocation(line: 793, column: 47, scope: !2386)
!2386 = !DILexicalBlockFile(scope: !2380, file: !356, discriminator: 1)
!2387 = !DILocation(line: 793, column: 53, scope: !2386)
!2388 = !DILocation(line: 793, column: 59, scope: !2386)
!2389 = !DILocation(line: 793, column: 46, scope: !2386)
!2390 = !DILocation(line: 793, column: 45, scope: !2386)
!2391 = !DILocation(line: 793, column: 45, scope: !2392)
!2392 = !DILexicalBlockFile(scope: !2380, file: !356, discriminator: 2)
!2393 = !DILocation(line: 793, column: 5, scope: !2394)
!2394 = !DILexicalBlockFile(scope: !2380, file: !356, discriminator: 3)
!2395 = !DILocation(line: 793, column: 11, scope: !2394)
!2396 = !DILocation(line: 793, column: 17, scope: !2394)
!2397 = !DILocation(line: 793, column: 32, scope: !2394)
!2398 = !DILocation(line: 793, column: 45, scope: !2394)
!2399 = !DILocation(line: 793, column: 45, scope: !2400)
!2400 = !DILexicalBlockFile(scope: !2380, file: !356, discriminator: 4)
!2401 = !DILocation(line: 793, column: 15, scope: !2400)
!2402 = !DILocation(line: 793, column: 15, scope: !2403)
!2403 = !DILexicalBlockFile(scope: !2380, file: !356, discriminator: 5)
!2404 = !DILocation(line: 793, column: 15, scope: !2405)
!2405 = !DILexicalBlockFile(scope: !2380, file: !356, discriminator: 6)
!2406 = !DILocation(line: 793, column: 12, scope: !2405)
!2407 = !DILocation(line: 793, column: 8, scope: !2405)
!2408 = !DILocation(line: 793, column: 6, scope: !2409)
!2409 = !DILexicalBlockFile(scope: !2410, file: !356, discriminator: 7)
!2410 = distinct !DILexicalBlock(scope: !2380, file: !356, line: 793, column: 3)
!2411 = !DILocation(line: 793, column: 5, scope: !2409)
!2412 = !DILocation(line: 793, column: 9, scope: !2409)
!2413 = !DILocation(line: 793, column: 23, scope: !2414)
!2414 = !DILexicalBlockFile(scope: !2410, file: !356, discriminator: 8)
!2415 = !DILocation(line: 793, column: 27, scope: !2414)
!2416 = !DILocation(line: 793, column: 21, scope: !2414)
!2417 = !DILocation(line: 793, column: 19, scope: !2414)
!2418 = !DILocation(line: 793, column: 3, scope: !2419)
!2419 = !DILexicalBlockFile(scope: !2380, file: !356, discriminator: 9)
!2420 = !DILocation(line: 794, column: 34, scope: !2410)
!2421 = !DILocation(line: 794, column: 39, scope: !2410)
!2422 = !DILocation(line: 794, column: 4, scope: !2410)
!2423 = !DILocation(line: 793, column: 46, scope: !2424)
!2424 = !DILexicalBlockFile(scope: !2410, file: !356, discriminator: 10)
!2425 = !DILocation(line: 793, column: 50, scope: !2424)
!2426 = !DILocation(line: 793, column: 43, scope: !2424)
!2427 = !DILocation(line: 793, column: 3, scope: !2424)
!2428 = distinct !{!2428, !2429}
!2429 = !DILocation(line: 793, column: 3, scope: !2381)
!2430 = !DILocation(line: 795, column: 2, scope: !2381)
!2431 = !DILocation(line: 797, column: 30, scope: !2307)
!2432 = !DILocation(line: 797, column: 2, scope: !2307)
!2433 = !DILocation(line: 798, column: 1, scope: !2307)
!2434 = distinct !DISubprogram(name: "initialise_track_script_state", scope: !356, file: !356, line: 683, type: !2435, isLocal: true, isDefinition: true, scopeLine: 684, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !448)
!2435 = !DISubroutineType(types: !2436)
!2436 = !{null, !284, !476}
!2437 = !DILocalVariable(name: "tsc", arg: 1, scope: !2434, file: !356, line: 683, type: !284)
!2438 = !DILocation(line: 683, column: 45, scope: !2434)
!2439 = !DILocalVariable(name: "vrrp", arg: 2, scope: !2434, file: !356, line: 683, type: !476)
!2440 = !DILocation(line: 683, column: 58, scope: !2434)
!2441 = !DILocation(line: 685, column: 7, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2434, file: !356, line: 685, column: 6)
!2443 = !DILocation(line: 685, column: 12, scope: !2442)
!2444 = !DILocation(line: 685, column: 6, scope: !2434)
!2445 = !DILocation(line: 686, column: 7, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2447, file: !356, line: 686, column: 7)
!2447 = distinct !DILexicalBlock(scope: !2442, file: !356, line: 685, column: 20)
!2448 = !DILocation(line: 686, column: 12, scope: !2446)
!2449 = !DILocation(line: 686, column: 17, scope: !2446)
!2450 = !DILocation(line: 686, column: 28, scope: !2446)
!2451 = !DILocation(line: 686, column: 7, scope: !2447)
!2452 = !DILocation(line: 687, column: 4, scope: !2446)
!2453 = !DILocation(line: 687, column: 10, scope: !2446)
!2454 = !DILocation(line: 687, column: 25, scope: !2446)
!2455 = !DILocation(line: 688, column: 12, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2446, file: !356, line: 688, column: 12)
!2457 = !DILocation(line: 688, column: 17, scope: !2456)
!2458 = !DILocation(line: 688, column: 22, scope: !2456)
!2459 = !DILocation(line: 688, column: 33, scope: !2456)
!2460 = !DILocation(line: 688, column: 61, scope: !2456)
!2461 = !DILocation(line: 689, column: 6, scope: !2456)
!2462 = !DILocation(line: 689, column: 11, scope: !2456)
!2463 = !DILocation(line: 689, column: 16, scope: !2456)
!2464 = !DILocation(line: 689, column: 23, scope: !2456)
!2465 = !DILocation(line: 689, column: 28, scope: !2456)
!2466 = !DILocation(line: 689, column: 31, scope: !2467)
!2467 = !DILexicalBlockFile(scope: !2456, file: !356, discriminator: 1)
!2468 = !DILocation(line: 689, column: 36, scope: !2467)
!2469 = !DILocation(line: 689, column: 41, scope: !2467)
!2470 = !DILocation(line: 689, column: 50, scope: !2467)
!2471 = !DILocation(line: 689, column: 55, scope: !2467)
!2472 = !DILocation(line: 689, column: 60, scope: !2467)
!2473 = !DILocation(line: 689, column: 48, scope: !2467)
!2474 = !DILocation(line: 688, column: 12, scope: !2475)
!2475 = !DILexicalBlockFile(scope: !2446, file: !356, discriminator: 1)
!2476 = !DILocation(line: 691, column: 4, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2456, file: !356, line: 689, column: 67)
!2478 = !DILocation(line: 691, column: 10, scope: !2477)
!2479 = !DILocation(line: 691, column: 29, scope: !2477)
!2480 = !DILocation(line: 692, column: 4, scope: !2477)
!2481 = !DILocation(line: 692, column: 10, scope: !2477)
!2482 = !DILocation(line: 692, column: 16, scope: !2477)
!2483 = !DILocation(line: 693, column: 3, scope: !2477)
!2484 = !DILocation(line: 694, column: 3, scope: !2447)
!2485 = !DILocation(line: 698, column: 6, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2434, file: !356, line: 698, column: 6)
!2487 = !DILocation(line: 698, column: 12, scope: !2486)
!2488 = !DILocation(line: 698, column: 26, scope: !2486)
!2489 = !DILocation(line: 698, column: 6, scope: !2434)
!2490 = !DILocation(line: 699, column: 3, scope: !2486)
!2491 = !DILocation(line: 702, column: 6, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2434, file: !356, line: 702, column: 6)
!2493 = !DILocation(line: 702, column: 11, scope: !2492)
!2494 = !DILocation(line: 702, column: 16, scope: !2492)
!2495 = !DILocation(line: 702, column: 27, scope: !2492)
!2496 = !DILocation(line: 702, column: 6, scope: !2434)
!2497 = !DILocation(line: 704, column: 7, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2499, file: !356, line: 704, column: 7)
!2499 = distinct !DILexicalBlock(scope: !2492, file: !356, line: 703, column: 2)
!2500 = !DILocation(line: 704, column: 12, scope: !2498)
!2501 = !DILocation(line: 704, column: 17, scope: !2498)
!2502 = !DILocation(line: 704, column: 27, scope: !2498)
!2503 = !DILocation(line: 704, column: 32, scope: !2498)
!2504 = !DILocation(line: 704, column: 37, scope: !2498)
!2505 = !DILocation(line: 704, column: 24, scope: !2498)
!2506 = !DILocation(line: 704, column: 7, scope: !2499)
!2507 = !DILocation(line: 705, column: 8, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2509, file: !356, line: 705, column: 8)
!2509 = distinct !DILexicalBlock(scope: !2498, file: !356, line: 704, column: 43)
!2510 = !DILocation(line: 705, column: 13, scope: !2508)
!2511 = !DILocation(line: 705, column: 20, scope: !2508)
!2512 = !DILocation(line: 705, column: 8, scope: !2509)
!2513 = !DILocation(line: 706, column: 29, scope: !2508)
!2514 = !DILocation(line: 706, column: 34, scope: !2508)
!2515 = !DILocation(line: 706, column: 5, scope: !2508)
!2516 = !DILocation(line: 706, column: 11, scope: !2508)
!2517 = !DILocation(line: 706, column: 26, scope: !2508)
!2518 = !DILocation(line: 707, column: 3, scope: !2509)
!2519 = !DILocation(line: 708, column: 8, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2521, file: !356, line: 708, column: 8)
!2521 = distinct !DILexicalBlock(scope: !2498, file: !356, line: 707, column: 10)
!2522 = !DILocation(line: 708, column: 13, scope: !2520)
!2523 = !DILocation(line: 708, column: 20, scope: !2520)
!2524 = !DILocation(line: 708, column: 8, scope: !2521)
!2525 = !DILocation(line: 709, column: 29, scope: !2520)
!2526 = !DILocation(line: 709, column: 34, scope: !2520)
!2527 = !DILocation(line: 709, column: 5, scope: !2520)
!2528 = !DILocation(line: 709, column: 11, scope: !2520)
!2529 = !DILocation(line: 709, column: 26, scope: !2520)
!2530 = !DILocation(line: 711, column: 2, scope: !2499)
!2531 = !DILocation(line: 712, column: 1, scope: !2434)
!2532 = distinct !DISubprogram(name: "init_track_files", scope: !356, file: !356, line: 971, type: !2533, isLocal: false, isDefinition: true, scopeLine: 972, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !448)
!2533 = !DISubroutineType(types: !2534)
!2534 = !{null, !209}
!2535 = !DILocalVariable(name: "track_files", arg: 1, scope: !2532, file: !356, line: 971, type: !209)
!2536 = !DILocation(line: 971, column: 23, scope: !2532)
!2537 = !DILocalVariable(name: "tfile", scope: !2532, file: !356, line: 973, type: !327)
!2538 = !DILocation(line: 973, column: 23, scope: !2532)
!2539 = !DILocalVariable(name: "resolved_path", scope: !2532, file: !356, line: 974, type: !105)
!2540 = !DILocation(line: 974, column: 8, scope: !2532)
!2541 = !DILocalVariable(name: "dir_end", scope: !2532, file: !356, line: 975, type: !105)
!2542 = !DILocation(line: 975, column: 8, scope: !2532)
!2543 = !DILocalVariable(name: "new_path", scope: !2532, file: !356, line: 976, type: !105)
!2544 = !DILocation(line: 976, column: 8, scope: !2532)
!2545 = !DILocalVariable(name: "stat_buf", scope: !2532, file: !356, line: 977, type: !2546)
!2546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2547, line: 46, size: 1152, align: 64, elements: !2548)
!2547 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!2548 = !{!2549, !2551, !2553, !2555, !2557, !2558, !2559, !2560, !2561, !2562, !2564, !2566, !2573, !2574, !2575}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2546, file: !2547, line: 48, baseType: !2550, size: 64, align: 64)
!2550 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !163, line: 124, baseType: !170)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2546, file: !2547, line: 53, baseType: !2552, size: 64, align: 64, offset: 64)
!2552 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !163, line: 127, baseType: !170)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2546, file: !2547, line: 61, baseType: !2554, size: 64, align: 64, offset: 128)
!2554 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !163, line: 130, baseType: !170)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2546, file: !2547, line: 62, baseType: !2556, size: 32, align: 32, offset: 192)
!2556 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !163, line: 129, baseType: !126)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2546, file: !2547, line: 64, baseType: !304, size: 32, align: 32, offset: 224)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2546, file: !2547, line: 65, baseType: !307, size: 32, align: 32, offset: 256)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2546, file: !2547, line: 67, baseType: !112, size: 32, align: 32, offset: 288)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2546, file: !2547, line: 69, baseType: !2550, size: 64, align: 64, offset: 320)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2546, file: !2547, line: 74, baseType: !261, size: 64, align: 64, offset: 384)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2546, file: !2547, line: 78, baseType: !2563, size: 64, align: 64, offset: 448)
!2563 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !163, line: 153, baseType: !192)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2546, file: !2547, line: 80, baseType: !2565, size: 64, align: 64, offset: 512)
!2565 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !163, line: 158, baseType: !192)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2546, file: !2547, line: 91, baseType: !2567, size: 128, align: 64, offset: 576)
!2567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2568, line: 120, size: 128, align: 64, elements: !2569)
!2568 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!2569 = !{!2570, !2571}
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2567, file: !2568, line: 122, baseType: !191, size: 64, align: 64)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2567, file: !2568, line: 123, baseType: !2572, size: 64, align: 64, offset: 64)
!2572 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !163, line: 175, baseType: !192)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2546, file: !2547, line: 92, baseType: !2567, size: 128, align: 64, offset: 704)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2546, file: !2547, line: 93, baseType: !2567, size: 128, align: 64, offset: 832)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2546, file: !2547, line: 106, baseType: !2576, size: 192, align: 64, offset: 960)
!2576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2572, size: 192, align: 64, elements: !2577)
!2577 = !{!2578}
!2578 = !DISubrange(count: 3)
!2579 = !DILocation(line: 977, column: 14, scope: !2532)
!2580 = !DILocalVariable(name: "sav_ch", scope: !2532, file: !356, line: 978, type: !106)
!2581 = !DILocation(line: 978, column: 7, scope: !2532)
!2582 = !DILocalVariable(name: "e", scope: !2532, file: !356, line: 979, type: !659)
!2583 = !DILocation(line: 979, column: 10, scope: !2532)
!2584 = !DILocalVariable(name: "next", scope: !2532, file: !356, line: 979, type: !659)
!2585 = !DILocation(line: 979, column: 13, scope: !2532)
!2586 = !DILocation(line: 981, column: 13, scope: !2532)
!2587 = !DILocation(line: 983, column: 8, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2532, file: !356, line: 983, column: 6)
!2589 = !DILocation(line: 983, column: 21, scope: !2588)
!2590 = !DILocation(line: 983, column: 5, scope: !2588)
!2591 = !DILocation(line: 983, column: 10, scope: !2592)
!2592 = !DILexicalBlockFile(scope: !2588, file: !356, discriminator: 1)
!2593 = !DILocation(line: 983, column: 24, scope: !2592)
!2594 = !DILocation(line: 983, column: 29, scope: !2592)
!2595 = !DILocation(line: 983, column: 5, scope: !2592)
!2596 = !DILocation(line: 983, column: 9, scope: !2597)
!2597 = !DILexicalBlockFile(scope: !2588, file: !356, discriminator: 2)
!2598 = !DILocation(line: 983, column: 23, scope: !2597)
!2599 = !DILocation(line: 983, column: 28, scope: !2597)
!2600 = !DILocation(line: 983, column: 6, scope: !2597)
!2601 = !DILocation(line: 984, column: 3, scope: !2588)
!2602 = !DILocation(line: 987, column: 15, scope: !2532)
!2603 = !DILocation(line: 987, column: 13, scope: !2532)
!2604 = !DILocation(line: 996, column: 6, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2532, file: !356, line: 996, column: 6)
!2606 = !DILocation(line: 996, column: 17, scope: !2605)
!2607 = !DILocation(line: 996, column: 6, scope: !2532)
!2608 = !DILocation(line: 997, column: 3, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2605, file: !356, line: 996, column: 24)
!2610 = !DILocation(line: 998, column: 3, scope: !2609)
!2611 = !DILocation(line: 1001, column: 15, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2532, file: !356, line: 1001, column: 2)
!2613 = !DILocation(line: 1001, column: 14, scope: !2612)
!2614 = !DILocation(line: 1001, column: 33, scope: !2615)
!2615 = !DILexicalBlockFile(scope: !2612, file: !356, discriminator: 1)
!2616 = !DILocation(line: 1001, column: 32, scope: !2615)
!2617 = !DILocation(line: 1001, column: 31, scope: !2615)
!2618 = !DILocation(line: 1001, column: 31, scope: !2619)
!2619 = !DILexicalBlockFile(scope: !2612, file: !356, discriminator: 2)
!2620 = !DILocation(line: 1001, column: 4, scope: !2621)
!2621 = !DILexicalBlockFile(scope: !2612, file: !356, discriminator: 3)
!2622 = !DILocation(line: 1001, column: 18, scope: !2621)
!2623 = !DILocation(line: 1001, column: 31, scope: !2621)
!2624 = !DILocation(line: 1001, column: 31, scope: !2625)
!2625 = !DILexicalBlockFile(scope: !2612, file: !356, discriminator: 4)
!2626 = !DILocation(line: 1001, column: 14, scope: !2625)
!2627 = !DILocation(line: 1001, column: 14, scope: !2628)
!2628 = !DILexicalBlockFile(scope: !2612, file: !356, discriminator: 5)
!2629 = !DILocation(line: 1001, column: 14, scope: !2630)
!2630 = !DILexicalBlockFile(scope: !2612, file: !356, discriminator: 6)
!2631 = !DILocation(line: 1001, column: 11, scope: !2630)
!2632 = !DILocation(line: 1001, column: 7, scope: !2630)
!2633 = !DILocation(line: 1001, column: 5, scope: !2634)
!2634 = !DILexicalBlockFile(scope: !2635, file: !356, discriminator: 7)
!2635 = distinct !DILexicalBlock(scope: !2612, file: !356, line: 1001, column: 2)
!2636 = !DILocation(line: 1001, column: 4, scope: !2634)
!2637 = !DILocation(line: 1001, column: 8, scope: !2634)
!2638 = !DILocation(line: 1001, column: 22, scope: !2639)
!2639 = !DILexicalBlockFile(scope: !2635, file: !356, discriminator: 8)
!2640 = !DILocation(line: 1001, column: 26, scope: !2639)
!2641 = !DILocation(line: 1001, column: 19, scope: !2639)
!2642 = !DILocation(line: 1001, column: 44, scope: !2639)
!2643 = !DILocation(line: 1001, column: 48, scope: !2639)
!2644 = !DILocation(line: 1001, column: 42, scope: !2639)
!2645 = !DILocation(line: 1001, column: 40, scope: !2639)
!2646 = !DILocation(line: 1001, column: 2, scope: !2647)
!2647 = !DILexicalBlockFile(scope: !2612, file: !356, discriminator: 9)
!2648 = !DILocation(line: 1002, column: 9, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2650, file: !356, line: 1002, column: 7)
!2650 = distinct !DILexicalBlock(scope: !2635, file: !356, line: 1001, column: 73)
!2651 = !DILocation(line: 1002, column: 16, scope: !2649)
!2652 = !DILocation(line: 1002, column: 31, scope: !2649)
!2653 = !DILocation(line: 1002, column: 6, scope: !2649)
!2654 = !DILocation(line: 1002, column: 11, scope: !2655)
!2655 = !DILexicalBlockFile(scope: !2649, file: !356, discriminator: 1)
!2656 = !DILocation(line: 1002, column: 18, scope: !2655)
!2657 = !DILocation(line: 1002, column: 34, scope: !2655)
!2658 = !DILocation(line: 1002, column: 39, scope: !2655)
!2659 = !DILocation(line: 1002, column: 6, scope: !2655)
!2660 = !DILocation(line: 1002, column: 10, scope: !2661)
!2661 = !DILexicalBlockFile(scope: !2649, file: !356, discriminator: 2)
!2662 = !DILocation(line: 1002, column: 17, scope: !2661)
!2663 = !DILocation(line: 1002, column: 33, scope: !2661)
!2664 = !DILocation(line: 1002, column: 38, scope: !2661)
!2665 = !DILocation(line: 1002, column: 7, scope: !2661)
!2666 = !DILocation(line: 1004, column: 92, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2649, file: !356, line: 1002, column: 10)
!2668 = !DILocation(line: 1004, column: 99, scope: !2667)
!2669 = !DILocation(line: 1004, column: 4, scope: !2667)
!2670 = !DILocation(line: 1005, column: 22, scope: !2667)
!2671 = !DILocation(line: 1005, column: 35, scope: !2667)
!2672 = !DILocation(line: 1005, column: 4, scope: !2667)
!2673 = !DILocation(line: 1006, column: 4, scope: !2667)
!2674 = !DILocation(line: 1009, column: 28, scope: !2650)
!2675 = !DILocation(line: 1009, column: 35, scope: !2650)
!2676 = !DILocation(line: 1009, column: 19, scope: !2650)
!2677 = !DILocation(line: 1009, column: 17, scope: !2650)
!2678 = !DILocation(line: 1010, column: 7, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2650, file: !356, line: 1010, column: 7)
!2680 = !DILocation(line: 1010, column: 7, scope: !2650)
!2681 = !DILocation(line: 1011, column: 15, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2683, file: !356, line: 1011, column: 8)
!2683 = distinct !DILexicalBlock(scope: !2679, file: !356, line: 1010, column: 22)
!2684 = !DILocation(line: 1011, column: 22, scope: !2682)
!2685 = !DILocation(line: 1011, column: 33, scope: !2682)
!2686 = !DILocation(line: 1011, column: 8, scope: !2682)
!2687 = !DILocation(line: 1011, column: 8, scope: !2683)
!2688 = !DILocation(line: 1012, column: 11, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !2682, file: !356, line: 1011, column: 49)
!2690 = !DILocation(line: 1012, column: 18, scope: !2689)
!2691 = !DILocation(line: 1012, column: 6, scope: !2689)
!2692 = !DILocation(line: 1012, column: 31, scope: !2689)
!2693 = !DILocation(line: 1012, column: 38, scope: !2689)
!2694 = !DILocation(line: 1012, column: 49, scope: !2689)
!2695 = !DILocation(line: 1013, column: 39, scope: !2689)
!2696 = !DILocation(line: 1013, column: 32, scope: !2689)
!2697 = !DILocation(line: 1013, column: 54, scope: !2689)
!2698 = !DILocation(line: 1013, column: 25, scope: !2699)
!2699 = !DILexicalBlockFile(scope: !2689, file: !356, discriminator: 1)
!2700 = !DILocation(line: 1013, column: 5, scope: !2689)
!2701 = !DILocation(line: 1013, column: 12, scope: !2689)
!2702 = !DILocation(line: 1013, column: 22, scope: !2689)
!2703 = !DILocation(line: 1014, column: 12, scope: !2689)
!2704 = !DILocation(line: 1014, column: 19, scope: !2689)
!2705 = !DILocation(line: 1014, column: 30, scope: !2689)
!2706 = !DILocation(line: 1014, column: 5, scope: !2689)
!2707 = !DILocation(line: 1015, column: 4, scope: !2689)
!2708 = !DILocation(line: 1018, column: 23, scope: !2683)
!2709 = !DILocation(line: 1018, column: 4, scope: !2683)
!2710 = !DILocation(line: 1019, column: 3, scope: !2683)
!2711 = !DILocation(line: 1020, column: 13, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2679, file: !356, line: 1020, column: 11)
!2713 = !DILocation(line: 1020, column: 12, scope: !2712)
!2714 = !DILocation(line: 1020, column: 17, scope: !2712)
!2715 = !DILocation(line: 1020, column: 11, scope: !2679)
!2716 = !DILocation(line: 1022, column: 28, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2718, file: !356, line: 1022, column: 8)
!2718 = distinct !DILexicalBlock(scope: !2712, file: !356, line: 1020, column: 28)
!2719 = !DILocation(line: 1022, column: 35, scope: !2717)
!2720 = !DILocation(line: 1022, column: 20, scope: !2717)
!2721 = !DILocation(line: 1022, column: 18, scope: !2717)
!2722 = !DILocation(line: 1022, column: 8, scope: !2718)
!2723 = !DILocation(line: 1023, column: 21, scope: !2717)
!2724 = !DILocation(line: 1023, column: 19, scope: !2717)
!2725 = !DILocation(line: 1023, column: 5, scope: !2717)
!2726 = !DILocation(line: 1025, column: 6, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2717, file: !356, line: 1024, column: 9)
!2728 = !DILocation(line: 1025, column: 14, scope: !2727)
!2729 = !DILocation(line: 1026, column: 30, scope: !2727)
!2730 = !DILocation(line: 1026, column: 37, scope: !2727)
!2731 = !DILocation(line: 1026, column: 21, scope: !2727)
!2732 = !DILocation(line: 1026, column: 19, scope: !2727)
!2733 = !DILocation(line: 1029, column: 9, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2727, file: !356, line: 1029, column: 9)
!2735 = !DILocation(line: 1029, column: 23, scope: !2734)
!2736 = !DILocation(line: 1030, column: 15, scope: !2734)
!2737 = !DILocation(line: 1030, column: 10, scope: !2734)
!2738 = !DILocation(line: 1030, column: 41, scope: !2734)
!2739 = !DILocation(line: 1031, column: 19, scope: !2734)
!2740 = !DILocation(line: 1031, column: 13, scope: !2734)
!2741 = !DILocation(line: 1031, column: 24, scope: !2734)
!2742 = !DILocation(line: 1029, column: 9, scope: !2743)
!2743 = !DILexicalBlockFile(scope: !2727, file: !356, discriminator: 1)
!2744 = !DILocation(line: 1032, column: 11, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2734, file: !356, line: 1031, column: 38)
!2746 = !DILocation(line: 1032, column: 6, scope: !2745)
!2747 = !DILocation(line: 1033, column: 20, scope: !2745)
!2748 = !DILocation(line: 1034, column: 5, scope: !2745)
!2749 = !DILocation(line: 1037, column: 9, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2718, file: !356, line: 1037, column: 8)
!2751 = !DILocation(line: 1037, column: 8, scope: !2718)
!2752 = !DILocation(line: 1038, column: 104, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !2750, file: !356, line: 1037, column: 24)
!2754 = !DILocation(line: 1038, column: 111, scope: !2753)
!2755 = !DILocation(line: 1038, column: 5, scope: !2753)
!2756 = !DILocation(line: 1039, column: 23, scope: !2753)
!2757 = !DILocation(line: 1039, column: 36, scope: !2753)
!2758 = !DILocation(line: 1039, column: 5, scope: !2753)
!2759 = !DILocation(line: 1041, column: 5, scope: !2753)
!2760 = !DILocation(line: 1044, column: 15, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2718, file: !356, line: 1044, column: 8)
!2762 = !DILocation(line: 1044, column: 22, scope: !2761)
!2763 = !DILocation(line: 1044, column: 33, scope: !2761)
!2764 = !DILocation(line: 1044, column: 8, scope: !2761)
!2765 = !DILocation(line: 1044, column: 8, scope: !2718)
!2766 = !DILocation(line: 1045, column: 31, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2761, file: !356, line: 1044, column: 49)
!2768 = !DILocation(line: 1045, column: 24, scope: !2767)
!2769 = !DILocation(line: 1045, column: 57, scope: !2767)
!2770 = !DILocation(line: 1045, column: 55, scope: !2767)
!2771 = !DILocation(line: 1045, column: 68, scope: !2772)
!2772 = !DILexicalBlockFile(scope: !2767, file: !356, discriminator: 1)
!2773 = !DILocation(line: 1045, column: 75, scope: !2772)
!2774 = !DILocation(line: 1045, column: 55, scope: !2772)
!2775 = !DILocation(line: 1045, column: 87, scope: !2776)
!2776 = !DILexicalBlockFile(scope: !2767, file: !356, discriminator: 2)
!2777 = !DILocation(line: 1045, column: 95, scope: !2776)
!2778 = !DILocation(line: 1045, column: 55, scope: !2776)
!2779 = !DILocation(line: 1045, column: 55, scope: !2780)
!2780 = !DILexicalBlockFile(scope: !2767, file: !356, discriminator: 3)
!2781 = !DILocation(line: 1045, column: 48, scope: !2780)
!2782 = !DILocation(line: 1045, column: 46, scope: !2780)
!2783 = !DILocation(line: 1045, column: 100, scope: !2780)
!2784 = !DILocation(line: 1045, column: 17, scope: !2785)
!2785 = !DILexicalBlockFile(scope: !2780, file: !356, discriminator: 4)
!2786 = !DILocation(line: 1045, column: 14, scope: !2780)
!2787 = !DILocation(line: 1046, column: 12, scope: !2767)
!2788 = !DILocation(line: 1046, column: 22, scope: !2767)
!2789 = !DILocation(line: 1046, column: 5, scope: !2767)
!2790 = !DILocation(line: 1047, column: 12, scope: !2767)
!2791 = !DILocation(line: 1047, column: 5, scope: !2767)
!2792 = !DILocation(line: 1048, column: 12, scope: !2767)
!2793 = !DILocation(line: 1048, column: 22, scope: !2767)
!2794 = !DILocation(line: 1048, column: 32, scope: !2772)
!2795 = !DILocation(line: 1048, column: 40, scope: !2772)
!2796 = !DILocation(line: 1048, column: 22, scope: !2772)
!2797 = !DILocation(line: 1048, column: 46, scope: !2776)
!2798 = !DILocation(line: 1048, column: 53, scope: !2776)
!2799 = !DILocation(line: 1048, column: 22, scope: !2776)
!2800 = !DILocation(line: 1048, column: 22, scope: !2780)
!2801 = !DILocation(line: 1048, column: 5, scope: !2780)
!2802 = !DILocation(line: 1049, column: 11, scope: !2767)
!2803 = !DILocation(line: 1049, column: 18, scope: !2767)
!2804 = !DILocation(line: 1049, column: 6, scope: !2767)
!2805 = !DILocation(line: 1049, column: 31, scope: !2767)
!2806 = !DILocation(line: 1049, column: 38, scope: !2767)
!2807 = !DILocation(line: 1049, column: 49, scope: !2767)
!2808 = !DILocation(line: 1050, column: 24, scope: !2767)
!2809 = !DILocation(line: 1050, column: 5, scope: !2767)
!2810 = !DILocation(line: 1050, column: 12, scope: !2767)
!2811 = !DILocation(line: 1050, column: 22, scope: !2767)
!2812 = !DILocation(line: 1051, column: 4, scope: !2767)
!2813 = !DILocation(line: 1052, column: 13, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2761, file: !356, line: 1052, column: 13)
!2815 = !DILocation(line: 1052, column: 13, scope: !2761)
!2816 = !DILocation(line: 1053, column: 6, scope: !2814)
!2817 = !DILocation(line: 1053, column: 14, scope: !2814)
!2818 = !DILocation(line: 1053, column: 5, scope: !2814)
!2819 = !DILocation(line: 1054, column: 3, scope: !2718)
!2820 = !DILocation(line: 1056, column: 92, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2712, file: !356, line: 1055, column: 8)
!2822 = !DILocation(line: 1056, column: 99, scope: !2821)
!2823 = !DILocation(line: 1056, column: 4, scope: !2821)
!2824 = !DILocation(line: 1057, column: 22, scope: !2821)
!2825 = !DILocation(line: 1057, column: 35, scope: !2821)
!2826 = !DILocation(line: 1057, column: 4, scope: !2821)
!2827 = !DILocation(line: 1059, column: 4, scope: !2821)
!2828 = !DILocation(line: 1062, column: 7, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2650, file: !356, line: 1062, column: 7)
!2830 = !DILocation(line: 1062, column: 7, scope: !2650)
!2831 = !DILocation(line: 1063, column: 9, scope: !2829)
!2832 = !DILocation(line: 1063, column: 4, scope: !2829)
!2833 = !DILocation(line: 1065, column: 30, scope: !2650)
!2834 = !DILocation(line: 1065, column: 37, scope: !2650)
!2835 = !DILocation(line: 1065, column: 22, scope: !2650)
!2836 = !DILocation(line: 1065, column: 53, scope: !2650)
!2837 = !DILocation(line: 1065, column: 3, scope: !2650)
!2838 = !DILocation(line: 1065, column: 10, scope: !2650)
!2839 = !DILocation(line: 1065, column: 20, scope: !2650)
!2840 = !DILocation(line: 1066, column: 13, scope: !2650)
!2841 = !DILocation(line: 1066, column: 20, scope: !2650)
!2842 = !DILocation(line: 1066, column: 12, scope: !2650)
!2843 = !DILocation(line: 1066, column: 10, scope: !2650)
!2844 = !DILocation(line: 1067, column: 4, scope: !2650)
!2845 = !DILocation(line: 1067, column: 11, scope: !2650)
!2846 = !DILocation(line: 1067, column: 21, scope: !2650)
!2847 = !DILocation(line: 1068, column: 33, scope: !2650)
!2848 = !DILocation(line: 1068, column: 45, scope: !2650)
!2849 = !DILocation(line: 1068, column: 52, scope: !2650)
!2850 = !DILocation(line: 1068, column: 15, scope: !2650)
!2851 = !DILocation(line: 1068, column: 3, scope: !2650)
!2852 = !DILocation(line: 1068, column: 10, scope: !2650)
!2853 = !DILocation(line: 1068, column: 13, scope: !2650)
!2854 = !DILocation(line: 1069, column: 23, scope: !2650)
!2855 = !DILocation(line: 1069, column: 4, scope: !2650)
!2856 = !DILocation(line: 1069, column: 11, scope: !2650)
!2857 = !DILocation(line: 1069, column: 21, scope: !2650)
!2858 = !DILocation(line: 1070, column: 2, scope: !2650)
!2859 = !DILocation(line: 1001, column: 66, scope: !2860)
!2860 = !DILexicalBlockFile(scope: !2635, file: !356, discriminator: 10)
!2861 = !DILocation(line: 1001, column: 63, scope: !2860)
!2862 = !DILocation(line: 1001, column: 2, scope: !2860)
!2863 = distinct !{!2863, !2864}
!2864 = !DILocation(line: 1001, column: 2, scope: !2532)
!2865 = !DILocation(line: 1072, column: 35, scope: !2532)
!2866 = !DILocation(line: 1072, column: 65, scope: !2532)
!2867 = !DILocation(line: 1072, column: 19, scope: !2532)
!2868 = !DILocation(line: 1072, column: 17, scope: !2532)
!2869 = !DILocation(line: 1073, column: 1, scope: !2532)
!2870 = !DILocation(line: 1073, column: 1, scope: !2871)
!2871 = !DILexicalBlockFile(scope: !2532, file: !356, discriminator: 1)
!2872 = distinct !DISubprogram(name: "remove_track_file", scope: !356, file: !356, line: 801, type: !2873, isLocal: true, isDefinition: true, scopeLine: 802, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !448)
!2873 = !DISubroutineType(types: !2874)
!2874 = !{null, !209, !659}
!2875 = !DILocalVariable(name: "track_files", arg: 1, scope: !2872, file: !356, line: 801, type: !209)
!2876 = !DILocation(line: 801, column: 24, scope: !2872)
!2877 = !DILocalVariable(name: "e", arg: 2, scope: !2872, file: !356, line: 801, type: !659)
!2878 = !DILocation(line: 801, column: 45, scope: !2872)
!2879 = !DILocalVariable(name: "tfile", scope: !2872, file: !356, line: 803, type: !327)
!2880 = !DILocation(line: 803, column: 23, scope: !2872)
!2881 = !DILocation(line: 803, column: 33, scope: !2872)
!2882 = !DILocation(line: 803, column: 37, scope: !2872)
!2883 = !DILocation(line: 803, column: 31, scope: !2872)
!2884 = !DILocalVariable(name: "e1", scope: !2872, file: !356, line: 804, type: !659)
!2885 = !DILocation(line: 804, column: 10, scope: !2872)
!2886 = !DILocalVariable(name: "e2", scope: !2872, file: !356, line: 805, type: !659)
!2887 = !DILocation(line: 805, column: 10, scope: !2872)
!2888 = !DILocalVariable(name: "next2", scope: !2872, file: !356, line: 805, type: !659)
!2889 = !DILocation(line: 805, column: 14, scope: !2872)
!2890 = !DILocalVariable(name: "tvp", scope: !2872, file: !356, line: 806, type: !1940)
!2891 = !DILocation(line: 806, column: 19, scope: !2872)
!2892 = !DILocalVariable(name: "tft", scope: !2872, file: !356, line: 807, type: !322)
!2893 = !DILocation(line: 807, column: 18, scope: !2872)
!2894 = !DILocation(line: 810, column: 16, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2872, file: !356, line: 810, column: 2)
!2896 = !DILocation(line: 810, column: 23, scope: !2895)
!2897 = !DILocation(line: 810, column: 15, scope: !2895)
!2898 = !DILocation(line: 810, column: 43, scope: !2899)
!2899 = !DILexicalBlockFile(scope: !2895, file: !356, discriminator: 1)
!2900 = !DILocation(line: 810, column: 50, scope: !2899)
!2901 = !DILocation(line: 810, column: 42, scope: !2899)
!2902 = !DILocation(line: 810, column: 41, scope: !2899)
!2903 = !DILocation(line: 810, column: 41, scope: !2904)
!2904 = !DILexicalBlockFile(scope: !2895, file: !356, discriminator: 2)
!2905 = !DILocation(line: 810, column: 4, scope: !2906)
!2906 = !DILexicalBlockFile(scope: !2895, file: !356, discriminator: 3)
!2907 = !DILocation(line: 810, column: 11, scope: !2906)
!2908 = !DILocation(line: 810, column: 27, scope: !2906)
!2909 = !DILocation(line: 810, column: 41, scope: !2906)
!2910 = !DILocation(line: 810, column: 41, scope: !2911)
!2911 = !DILexicalBlockFile(scope: !2895, file: !356, discriminator: 4)
!2912 = !DILocation(line: 810, column: 15, scope: !2911)
!2913 = !DILocation(line: 810, column: 15, scope: !2914)
!2914 = !DILexicalBlockFile(scope: !2895, file: !356, discriminator: 5)
!2915 = !DILocation(line: 810, column: 15, scope: !2916)
!2916 = !DILexicalBlockFile(scope: !2895, file: !356, discriminator: 6)
!2917 = !DILocation(line: 810, column: 12, scope: !2916)
!2918 = !DILocation(line: 810, column: 7, scope: !2916)
!2919 = !DILocation(line: 810, column: 5, scope: !2920)
!2920 = !DILexicalBlockFile(scope: !2921, file: !356, discriminator: 7)
!2921 = distinct !DILexicalBlock(scope: !2895, file: !356, line: 810, column: 2)
!2922 = !DILocation(line: 810, column: 4, scope: !2920)
!2923 = !DILocation(line: 810, column: 9, scope: !2920)
!2924 = !DILocation(line: 810, column: 23, scope: !2925)
!2925 = !DILexicalBlockFile(scope: !2921, file: !356, discriminator: 8)
!2926 = !DILocation(line: 810, column: 28, scope: !2925)
!2927 = !DILocation(line: 810, column: 21, scope: !2925)
!2928 = !DILocation(line: 810, column: 19, scope: !2925)
!2929 = !DILocation(line: 810, column: 2, scope: !2930)
!2930 = !DILexicalBlockFile(scope: !2895, file: !356, discriminator: 9)
!2931 = !DILocation(line: 812, column: 17, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2933, file: !356, line: 812, column: 3)
!2933 = distinct !DILexicalBlock(scope: !2921, file: !356, line: 810, column: 60)
!2934 = !DILocation(line: 812, column: 22, scope: !2932)
!2935 = !DILocation(line: 812, column: 28, scope: !2932)
!2936 = !DILocation(line: 812, column: 16, scope: !2932)
!2937 = !DILocation(line: 812, column: 45, scope: !2938)
!2938 = !DILexicalBlockFile(scope: !2932, file: !356, discriminator: 1)
!2939 = !DILocation(line: 812, column: 50, scope: !2938)
!2940 = !DILocation(line: 812, column: 56, scope: !2938)
!2941 = !DILocation(line: 812, column: 44, scope: !2938)
!2942 = !DILocation(line: 812, column: 43, scope: !2938)
!2943 = !DILocation(line: 812, column: 43, scope: !2944)
!2944 = !DILexicalBlockFile(scope: !2932, file: !356, discriminator: 2)
!2945 = !DILocation(line: 812, column: 5, scope: !2946)
!2946 = !DILexicalBlockFile(scope: !2932, file: !356, discriminator: 3)
!2947 = !DILocation(line: 812, column: 10, scope: !2946)
!2948 = !DILocation(line: 812, column: 16, scope: !2946)
!2949 = !DILocation(line: 812, column: 29, scope: !2946)
!2950 = !DILocation(line: 812, column: 43, scope: !2946)
!2951 = !DILocation(line: 812, column: 43, scope: !2952)
!2952 = !DILexicalBlockFile(scope: !2932, file: !356, discriminator: 4)
!2953 = !DILocation(line: 812, column: 16, scope: !2952)
!2954 = !DILocation(line: 812, column: 16, scope: !2955)
!2955 = !DILexicalBlockFile(scope: !2932, file: !356, discriminator: 5)
!2956 = !DILocation(line: 812, column: 16, scope: !2957)
!2957 = !DILexicalBlockFile(scope: !2932, file: !356, discriminator: 6)
!2958 = !DILocation(line: 812, column: 13, scope: !2957)
!2959 = !DILocation(line: 812, column: 8, scope: !2957)
!2960 = !DILocation(line: 812, column: 6, scope: !2961)
!2961 = !DILexicalBlockFile(scope: !2962, file: !356, discriminator: 7)
!2962 = distinct !DILexicalBlock(scope: !2932, file: !356, line: 812, column: 3)
!2963 = !DILocation(line: 812, column: 5, scope: !2961)
!2964 = !DILocation(line: 812, column: 10, scope: !2961)
!2965 = !DILocation(line: 812, column: 25, scope: !2966)
!2966 = !DILexicalBlockFile(scope: !2962, file: !356, discriminator: 8)
!2967 = !DILocation(line: 812, column: 30, scope: !2966)
!2968 = !DILocation(line: 812, column: 22, scope: !2966)
!2969 = !DILocation(line: 812, column: 46, scope: !2966)
!2970 = !DILocation(line: 812, column: 51, scope: !2966)
!2971 = !DILocation(line: 812, column: 44, scope: !2966)
!2972 = !DILocation(line: 812, column: 42, scope: !2966)
!2973 = !DILocation(line: 812, column: 3, scope: !2974)
!2974 = !DILexicalBlockFile(scope: !2932, file: !356, discriminator: 9)
!2975 = !DILocation(line: 813, column: 8, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2977, file: !356, line: 813, column: 8)
!2977 = distinct !DILexicalBlock(scope: !2962, file: !356, line: 812, column: 78)
!2978 = !DILocation(line: 813, column: 13, scope: !2976)
!2979 = !DILocation(line: 813, column: 21, scope: !2976)
!2980 = !DILocation(line: 813, column: 18, scope: !2976)
!2981 = !DILocation(line: 813, column: 8, scope: !2977)
!2982 = !DILocation(line: 814, column: 23, scope: !2976)
!2983 = !DILocation(line: 814, column: 28, scope: !2976)
!2984 = !DILocation(line: 814, column: 34, scope: !2976)
!2985 = !DILocation(line: 814, column: 46, scope: !2976)
!2986 = !DILocation(line: 814, column: 5, scope: !2976)
!2987 = !DILocation(line: 815, column: 3, scope: !2977)
!2988 = !DILocation(line: 812, column: 70, scope: !2989)
!2989 = !DILexicalBlockFile(scope: !2962, file: !356, discriminator: 10)
!2990 = !DILocation(line: 812, column: 67, scope: !2989)
!2991 = !DILocation(line: 812, column: 3, scope: !2989)
!2992 = distinct !{!2992, !2993}
!2993 = !DILocation(line: 812, column: 3, scope: !2933)
!2994 = !DILocation(line: 816, column: 2, scope: !2933)
!2995 = !DILocation(line: 810, column: 48, scope: !2996)
!2996 = !DILexicalBlockFile(scope: !2921, file: !356, discriminator: 10)
!2997 = !DILocation(line: 810, column: 53, scope: !2996)
!2998 = !DILocation(line: 810, column: 45, scope: !2996)
!2999 = !DILocation(line: 810, column: 2, scope: !2996)
!3000 = distinct !{!3000, !3001}
!3001 = !DILocation(line: 810, column: 2, scope: !2872)
!3002 = !DILocation(line: 818, column: 20, scope: !2872)
!3003 = !DILocation(line: 818, column: 33, scope: !2872)
!3004 = !DILocation(line: 818, column: 2, scope: !2872)
!3005 = !DILocation(line: 819, column: 1, scope: !2872)
!3006 = distinct !DISubprogram(name: "process_track_file", scope: !356, file: !356, line: 880, type: !3007, isLocal: true, isDefinition: true, scopeLine: 881, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !448)
!3007 = !DISubroutineType(types: !3008)
!3008 = !{null, !327}
!3009 = !DILocalVariable(name: "tfile", arg: 1, scope: !3006, file: !356, line: 880, type: !327)
!3010 = !DILocation(line: 880, column: 41, scope: !3006)
!3011 = !DILocalVariable(name: "new_status", scope: !3006, file: !356, line: 882, type: !192)
!3012 = !DILocation(line: 882, column: 7, scope: !3006)
!3013 = !DILocalVariable(name: "buf", scope: !3006, file: !356, line: 883, type: !3014)
!3014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 1024, align: 8, elements: !3015)
!3015 = !{!3016}
!3016 = !DISubrange(count: 128)
!3017 = !DILocation(line: 883, column: 7, scope: !3006)
!3018 = !DILocalVariable(name: "fd", scope: !3006, file: !356, line: 884, type: !112)
!3019 = !DILocation(line: 884, column: 6, scope: !3006)
!3020 = !DILocalVariable(name: "len", scope: !3006, file: !356, line: 885, type: !339)
!3021 = !DILocation(line: 885, column: 10, scope: !3006)
!3022 = !DILocation(line: 887, column: 17, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !3006, file: !356, line: 887, column: 6)
!3024 = !DILocation(line: 887, column: 24, scope: !3023)
!3025 = !DILocation(line: 887, column: 12, scope: !3023)
!3026 = !DILocation(line: 887, column: 10, scope: !3023)
!3027 = !DILocation(line: 887, column: 58, scope: !3023)
!3028 = !DILocation(line: 887, column: 6, scope: !3006)
!3029 = !DILocation(line: 888, column: 19, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !3031, file: !356, line: 888, column: 7)
!3031 = distinct !DILexicalBlock(scope: !3023, file: !356, line: 887, column: 65)
!3032 = !DILocation(line: 888, column: 23, scope: !3030)
!3033 = !DILocation(line: 888, column: 14, scope: !3030)
!3034 = !DILocation(line: 888, column: 12, scope: !3030)
!3035 = !DILocation(line: 888, column: 46, scope: !3030)
!3036 = !DILocation(line: 888, column: 7, scope: !3031)
!3037 = !DILocation(line: 889, column: 8, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !3030, file: !356, line: 888, column: 51)
!3039 = !DILocation(line: 889, column: 4, scope: !3038)
!3040 = !DILocation(line: 889, column: 13, scope: !3038)
!3041 = !DILocation(line: 892, column: 24, scope: !3038)
!3042 = !DILocation(line: 892, column: 17, scope: !3038)
!3043 = !DILocation(line: 892, column: 15, scope: !3038)
!3044 = !DILocation(line: 893, column: 3, scope: !3038)
!3045 = !DILocation(line: 894, column: 9, scope: !3031)
!3046 = !DILocation(line: 894, column: 3, scope: !3031)
!3047 = !DILocation(line: 895, column: 2, scope: !3031)
!3048 = !DILocation(line: 897, column: 6, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !3006, file: !356, line: 897, column: 6)
!3050 = !DILocation(line: 897, column: 17, scope: !3049)
!3051 = !DILocation(line: 897, column: 6, scope: !3006)
!3052 = !DILocation(line: 898, column: 14, scope: !3049)
!3053 = !DILocation(line: 898, column: 3, scope: !3049)
!3054 = !DILocation(line: 899, column: 11, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !3049, file: !356, line: 899, column: 11)
!3056 = !DILocation(line: 899, column: 22, scope: !3055)
!3057 = !DILocation(line: 899, column: 11, scope: !3049)
!3058 = !DILocation(line: 900, column: 14, scope: !3055)
!3059 = !DILocation(line: 900, column: 3, scope: !3055)
!3060 = !DILocation(line: 902, column: 27, scope: !3006)
!3061 = !DILocation(line: 902, column: 39, scope: !3006)
!3062 = !DILocation(line: 902, column: 34, scope: !3006)
!3063 = !DILocation(line: 902, column: 2, scope: !3006)
!3064 = !DILocation(line: 903, column: 1, scope: !3006)
!3065 = distinct !DISubprogram(name: "process_inotify", scope: !356, file: !356, line: 906, type: !3066, isLocal: true, isDefinition: true, scopeLine: 907, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !448)
!3066 = !DISubroutineType(types: !3067)
!3067 = !{!112, !357}
!3068 = !DILocalVariable(name: "thread", arg: 1, scope: !3065, file: !356, line: 906, type: !357)
!3069 = !DILocation(line: 906, column: 27, scope: !3065)
!3070 = !DILocalVariable(name: "buf", scope: !3065, file: !356, line: 908, type: !3071)
!3071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 2176, align: 8, elements: !3072)
!3072 = !{!3073}
!3073 = !DISubrange(count: 272)
!3074 = !DILocation(line: 908, column: 7, scope: !3065)
!3075 = !DILocalVariable(name: "buf_ptr", scope: !3065, file: !356, line: 909, type: !105)
!3076 = !DILocation(line: 909, column: 8, scope: !3065)
!3077 = !DILocalVariable(name: "len", scope: !3065, file: !356, line: 910, type: !339)
!3078 = !DILocation(line: 910, column: 10, scope: !3065)
!3079 = !DILocalVariable(name: "event", scope: !3065, file: !356, line: 911, type: !341)
!3080 = !DILocation(line: 911, column: 24, scope: !3065)
!3081 = !DILocalVariable(name: "tfile", scope: !3065, file: !356, line: 912, type: !327)
!3082 = !DILocation(line: 912, column: 23, scope: !3065)
!3083 = !DILocalVariable(name: "e", scope: !3065, file: !356, line: 913, type: !659)
!3084 = !DILocation(line: 913, column: 10, scope: !3065)
!3085 = !DILocalVariable(name: "fd", scope: !3065, file: !356, line: 914, type: !112)
!3086 = !DILocation(line: 914, column: 6, scope: !3065)
!3087 = !DILocation(line: 914, column: 11, scope: !3065)
!3088 = !DILocation(line: 914, column: 19, scope: !3065)
!3089 = !DILocation(line: 914, column: 21, scope: !3065)
!3090 = !DILocation(line: 916, column: 35, scope: !3065)
!3091 = !DILocation(line: 916, column: 65, scope: !3065)
!3092 = !DILocation(line: 916, column: 19, scope: !3065)
!3093 = !DILocation(line: 916, column: 17, scope: !3065)
!3094 = !DILocation(line: 918, column: 2, scope: !3065)
!3095 = !DILocation(line: 919, column: 19, scope: !3096)
!3096 = distinct !DILexicalBlock(scope: !3097, file: !356, line: 919, column: 7)
!3097 = distinct !DILexicalBlock(scope: !3065, file: !356, line: 918, column: 14)
!3098 = !DILocation(line: 919, column: 23, scope: !3096)
!3099 = !DILocation(line: 919, column: 14, scope: !3096)
!3100 = !DILocation(line: 919, column: 12, scope: !3096)
!3101 = !DILocation(line: 919, column: 42, scope: !3096)
!3102 = !DILocation(line: 919, column: 7, scope: !3097)
!3103 = !DILocation(line: 920, column: 8, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !3105, file: !356, line: 920, column: 8)
!3105 = distinct !DILexicalBlock(scope: !3096, file: !356, line: 919, column: 83)
!3106 = !DILocation(line: 920, column: 12, scope: !3104)
!3107 = !DILocation(line: 920, column: 8, scope: !3105)
!3108 = !DILocation(line: 921, column: 10, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3110, file: !356, line: 921, column: 8)
!3110 = distinct !DILexicalBlock(scope: !3104, file: !356, line: 920, column: 19)
!3111 = !DILocation(line: 921, column: 9, scope: !3109)
!3112 = !DILocation(line: 921, column: 14, scope: !3109)
!3113 = !DILocation(line: 921, column: 8, scope: !3110)
!3114 = !DILocation(line: 922, column: 6, scope: !3109)
!3115 = !DILocation(line: 924, column: 10, scope: !3116)
!3116 = distinct !DILexicalBlock(scope: !3110, file: !356, line: 924, column: 8)
!3117 = !DILocation(line: 924, column: 9, scope: !3116)
!3118 = !DILocation(line: 924, column: 14, scope: !3116)
!3119 = !DILocation(line: 924, column: 8, scope: !3110)
!3120 = !DILocation(line: 925, column: 6, scope: !3116)
!3121 = distinct !{!3121, !3094}
!3122 = !DILocation(line: 927, column: 69, scope: !3110)
!3123 = !DILocation(line: 927, column: 68, scope: !3110)
!3124 = !DILocation(line: 927, column: 5, scope: !3125)
!3125 = !DILexicalBlockFile(scope: !3110, file: !356, discriminator: 1)
!3126 = !DILocation(line: 928, column: 5, scope: !3110)
!3127 = !DILocation(line: 931, column: 69, scope: !3105)
!3128 = !DILocation(line: 931, column: 4, scope: !3105)
!3129 = !DILocation(line: 932, column: 4, scope: !3105)
!3130 = !DILocation(line: 935, column: 18, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !3097, file: !356, line: 935, column: 3)
!3132 = !DILocation(line: 935, column: 16, scope: !3131)
!3133 = !DILocation(line: 935, column: 8, scope: !3131)
!3134 = !DILocation(line: 935, column: 23, scope: !3135)
!3135 = !DILexicalBlockFile(scope: !3136, file: !356, discriminator: 1)
!3136 = distinct !DILexicalBlock(scope: !3131, file: !356, line: 935, column: 3)
!3137 = !DILocation(line: 935, column: 33, scope: !3135)
!3138 = !DILocation(line: 935, column: 39, scope: !3135)
!3139 = !DILocation(line: 935, column: 37, scope: !3135)
!3140 = !DILocation(line: 935, column: 31, scope: !3135)
!3141 = !DILocation(line: 935, column: 3, scope: !3135)
!3142 = !DILocation(line: 936, column: 35, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3136, file: !356, line: 935, column: 98)
!3144 = !DILocation(line: 936, column: 12, scope: !3143)
!3145 = !DILocation(line: 936, column: 10, scope: !3143)
!3146 = !DILocation(line: 939, column: 8, scope: !3147)
!3147 = distinct !DILexicalBlock(scope: !3143, file: !356, line: 939, column: 8)
!3148 = !DILocation(line: 939, column: 15, scope: !3147)
!3149 = !DILocation(line: 939, column: 20, scope: !3147)
!3150 = !DILocation(line: 939, column: 8, scope: !3143)
!3151 = !DILocation(line: 940, column: 5, scope: !3147)
!3152 = !DILocation(line: 942, column: 10, scope: !3153)
!3153 = distinct !DILexicalBlock(scope: !3143, file: !356, line: 942, column: 8)
!3154 = !DILocation(line: 942, column: 17, scope: !3153)
!3155 = !DILocation(line: 942, column: 22, scope: !3153)
!3156 = !DILocation(line: 942, column: 8, scope: !3143)
!3157 = !DILocation(line: 943, column: 56, scope: !3158)
!3158 = distinct !DILexicalBlock(scope: !3153, file: !356, line: 942, column: 64)
!3159 = !DILocation(line: 943, column: 63, scope: !3158)
!3160 = !DILocation(line: 943, column: 5, scope: !3158)
!3161 = !DILocation(line: 944, column: 5, scope: !3158)
!3162 = !DILocation(line: 947, column: 16, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !3143, file: !356, line: 947, column: 4)
!3164 = !DILocation(line: 947, column: 27, scope: !3163)
!3165 = !DILocation(line: 947, column: 15, scope: !3163)
!3166 = !DILocation(line: 947, column: 14, scope: !3163)
!3167 = !DILocation(line: 947, column: 14, scope: !3168)
!3168 = !DILexicalBlockFile(scope: !3163, file: !356, discriminator: 1)
!3169 = !DILocation(line: 947, column: 15, scope: !3170)
!3170 = !DILexicalBlockFile(scope: !3163, file: !356, discriminator: 2)
!3171 = !DILocation(line: 947, column: 26, scope: !3170)
!3172 = !DILocation(line: 947, column: 45, scope: !3170)
!3173 = !DILocation(line: 947, column: 14, scope: !3170)
!3174 = !DILocation(line: 947, column: 14, scope: !3175)
!3175 = !DILexicalBlockFile(scope: !3163, file: !356, discriminator: 3)
!3176 = !DILocation(line: 947, column: 11, scope: !3175)
!3177 = !DILocation(line: 947, column: 9, scope: !3175)
!3178 = !DILocation(line: 947, column: 52, scope: !3179)
!3179 = !DILexicalBlockFile(scope: !3180, file: !356, discriminator: 4)
!3180 = distinct !DILexicalBlock(scope: !3163, file: !356, line: 947, column: 4)
!3181 = !DILocation(line: 947, column: 4, scope: !3179)
!3182 = !DILocation(line: 948, column: 15, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3180, file: !356, line: 947, column: 74)
!3184 = !DILocation(line: 948, column: 19, scope: !3183)
!3185 = !DILocation(line: 948, column: 13, scope: !3183)
!3186 = !DILocation(line: 948, column: 11, scope: !3183)
!3187 = !DILocation(line: 951, column: 9, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !3183, file: !356, line: 951, column: 9)
!3189 = !DILocation(line: 951, column: 16, scope: !3188)
!3190 = !DILocation(line: 951, column: 22, scope: !3188)
!3191 = !DILocation(line: 951, column: 29, scope: !3188)
!3192 = !DILocation(line: 951, column: 19, scope: !3188)
!3193 = !DILocation(line: 951, column: 32, scope: !3188)
!3194 = !DILocation(line: 952, column: 16, scope: !3188)
!3195 = !DILocation(line: 952, column: 23, scope: !3188)
!3196 = !DILocation(line: 952, column: 34, scope: !3188)
!3197 = !DILocation(line: 952, column: 41, scope: !3188)
!3198 = !DILocation(line: 952, column: 9, scope: !3188)
!3199 = !DILocation(line: 951, column: 9, scope: !3200)
!3200 = !DILexicalBlockFile(scope: !3183, file: !356, discriminator: 1)
!3201 = !DILocation(line: 953, column: 6, scope: !3188)
!3202 = !DILocation(line: 955, column: 9, scope: !3203)
!3203 = distinct !DILexicalBlock(scope: !3183, file: !356, line: 955, column: 9)
!3204 = !DILocation(line: 955, column: 16, scope: !3203)
!3205 = !DILocation(line: 955, column: 21, scope: !3203)
!3206 = !DILocation(line: 955, column: 9, scope: !3183)
!3207 = !DILocation(line: 957, column: 31, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !3203, file: !356, line: 955, column: 51)
!3209 = !DILocation(line: 957, column: 6, scope: !3208)
!3210 = !DILocation(line: 958, column: 5, scope: !3208)
!3211 = !DILocation(line: 961, column: 25, scope: !3212)
!3212 = distinct !DILexicalBlock(scope: !3203, file: !356, line: 959, column: 10)
!3213 = !DILocation(line: 961, column: 6, scope: !3212)
!3214 = !DILocation(line: 963, column: 4, scope: !3183)
!3215 = !DILocation(line: 947, column: 63, scope: !3216)
!3216 = !DILexicalBlockFile(scope: !3180, file: !356, discriminator: 5)
!3217 = !DILocation(line: 947, column: 67, scope: !3216)
!3218 = !DILocation(line: 947, column: 60, scope: !3216)
!3219 = !DILocation(line: 947, column: 4, scope: !3216)
!3220 = distinct !{!3220, !3221}
!3221 = !DILocation(line: 947, column: 4, scope: !3143)
!3222 = !DILocation(line: 964, column: 3, scope: !3143)
!3223 = !DILocation(line: 935, column: 55, scope: !3224)
!3224 = !DILexicalBlockFile(scope: !3136, file: !356, discriminator: 2)
!3225 = !DILocation(line: 935, column: 62, scope: !3224)
!3226 = !DILocation(line: 935, column: 66, scope: !3224)
!3227 = !DILocation(line: 935, column: 52, scope: !3224)
!3228 = !DILocation(line: 935, column: 3, scope: !3224)
!3229 = distinct !{!3229, !3230}
!3230 = !DILocation(line: 935, column: 3, scope: !3097)
!3231 = !DILocation(line: 918, column: 2, scope: !3232)
!3232 = !DILexicalBlockFile(scope: !3065, file: !356, discriminator: 1)
!3233 = !DILocation(line: 968, column: 1, scope: !3065)
!3234 = distinct !DISubprogram(name: "stop_track_files", scope: !356, file: !356, line: 1076, type: !2127, isLocal: false, isDefinition: true, scopeLine: 1077, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !448)
!3235 = !DILocation(line: 1078, column: 6, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !3234, file: !356, line: 1078, column: 6)
!3237 = !DILocation(line: 1078, column: 6, scope: !3234)
!3238 = !DILocation(line: 1079, column: 17, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !3236, file: !356, line: 1078, column: 22)
!3240 = !DILocation(line: 1079, column: 3, scope: !3239)
!3241 = !DILocation(line: 1080, column: 18, scope: !3239)
!3242 = !DILocation(line: 1081, column: 2, scope: !3239)
!3243 = !DILocation(line: 1083, column: 6, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3234, file: !356, line: 1083, column: 6)
!3245 = !DILocation(line: 1083, column: 17, scope: !3244)
!3246 = !DILocation(line: 1083, column: 6, scope: !3234)
!3247 = !DILocation(line: 1084, column: 9, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !3244, file: !356, line: 1083, column: 24)
!3249 = !DILocation(line: 1084, column: 3, scope: !3248)
!3250 = !DILocation(line: 1085, column: 14, scope: !3248)
!3251 = !DILocation(line: 1086, column: 2, scope: !3248)
!3252 = !DILocation(line: 1087, column: 1, scope: !3234)
!3253 = distinct !DISubprogram(name: "update_track_file_status", scope: !356, file: !356, line: 850, type: !3254, isLocal: true, isDefinition: true, scopeLine: 851, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !448)
!3254 = !DISubroutineType(types: !3255)
!3255 = !{null, !327, !112}
!3256 = !DILocalVariable(name: "tfile", arg: 1, scope: !3253, file: !356, line: 850, type: !327)
!3257 = !DILocation(line: 850, column: 47, scope: !3253)
!3258 = !DILocalVariable(name: "new_status", arg: 2, scope: !3253, file: !356, line: 850, type: !112)
!3259 = !DILocation(line: 850, column: 58, scope: !3253)
!3260 = !DILocalVariable(name: "e", scope: !3253, file: !356, line: 852, type: !659)
!3261 = !DILocation(line: 852, column: 10, scope: !3253)
!3262 = !DILocalVariable(name: "tvp", scope: !3253, file: !356, line: 853, type: !1940)
!3263 = !DILocation(line: 853, column: 19, scope: !3253)
!3264 = !DILocalVariable(name: "status", scope: !3253, file: !356, line: 854, type: !112)
!3265 = !DILocation(line: 854, column: 6, scope: !3253)
!3266 = !DILocation(line: 856, column: 6, scope: !3267)
!3267 = distinct !DILexicalBlock(scope: !3253, file: !356, line: 856, column: 6)
!3268 = !DILocation(line: 856, column: 20, scope: !3267)
!3269 = !DILocation(line: 856, column: 27, scope: !3267)
!3270 = !DILocation(line: 856, column: 17, scope: !3267)
!3271 = !DILocation(line: 856, column: 6, scope: !3253)
!3272 = !DILocation(line: 857, column: 3, scope: !3267)
!3273 = !DILocation(line: 860, column: 15, scope: !3274)
!3274 = distinct !DILexicalBlock(scope: !3253, file: !356, line: 860, column: 2)
!3275 = !DILocation(line: 860, column: 22, scope: !3274)
!3276 = !DILocation(line: 860, column: 14, scope: !3274)
!3277 = !DILocation(line: 860, column: 42, scope: !3278)
!3278 = !DILexicalBlockFile(scope: !3274, file: !356, discriminator: 1)
!3279 = !DILocation(line: 860, column: 49, scope: !3278)
!3280 = !DILocation(line: 860, column: 41, scope: !3278)
!3281 = !DILocation(line: 860, column: 40, scope: !3278)
!3282 = !DILocation(line: 860, column: 40, scope: !3283)
!3283 = !DILexicalBlockFile(scope: !3274, file: !356, discriminator: 2)
!3284 = !DILocation(line: 860, column: 4, scope: !3285)
!3285 = !DILexicalBlockFile(scope: !3274, file: !356, discriminator: 3)
!3286 = !DILocation(line: 860, column: 11, scope: !3285)
!3287 = !DILocation(line: 860, column: 27, scope: !3285)
!3288 = !DILocation(line: 860, column: 40, scope: !3285)
!3289 = !DILocation(line: 860, column: 40, scope: !3290)
!3290 = !DILexicalBlockFile(scope: !3274, file: !356, discriminator: 4)
!3291 = !DILocation(line: 860, column: 14, scope: !3290)
!3292 = !DILocation(line: 860, column: 14, scope: !3293)
!3293 = !DILexicalBlockFile(scope: !3274, file: !356, discriminator: 5)
!3294 = !DILocation(line: 860, column: 14, scope: !3295)
!3295 = !DILexicalBlockFile(scope: !3274, file: !356, discriminator: 6)
!3296 = !DILocation(line: 860, column: 11, scope: !3295)
!3297 = !DILocation(line: 860, column: 7, scope: !3295)
!3298 = !DILocation(line: 860, column: 5, scope: !3299)
!3299 = !DILexicalBlockFile(scope: !3300, file: !356, discriminator: 7)
!3300 = distinct !DILexicalBlock(scope: !3274, file: !356, line: 860, column: 2)
!3301 = !DILocation(line: 860, column: 4, scope: !3299)
!3302 = !DILocation(line: 860, column: 8, scope: !3299)
!3303 = !DILocation(line: 860, column: 22, scope: !3304)
!3304 = !DILexicalBlockFile(scope: !3300, file: !356, discriminator: 8)
!3305 = !DILocation(line: 860, column: 26, scope: !3304)
!3306 = !DILocation(line: 860, column: 20, scope: !3304)
!3307 = !DILocation(line: 860, column: 18, scope: !3304)
!3308 = !DILocation(line: 860, column: 2, scope: !3309)
!3309 = !DILexicalBlockFile(scope: !3274, file: !356, discriminator: 9)
!3310 = !DILocation(line: 863, column: 8, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !3312, file: !356, line: 863, column: 7)
!3312 = distinct !DILexicalBlock(scope: !3300, file: !356, line: 860, column: 56)
!3313 = !DILocation(line: 863, column: 13, scope: !3311)
!3314 = !DILocation(line: 863, column: 7, scope: !3312)
!3315 = !DILocation(line: 864, column: 13, scope: !3311)
!3316 = !DILocation(line: 864, column: 11, scope: !3311)
!3317 = !DILocation(line: 864, column: 4, scope: !3311)
!3318 = !DILocation(line: 866, column: 13, scope: !3319)
!3319 = distinct !DILexicalBlock(scope: !3311, file: !356, line: 865, column: 8)
!3320 = !DILocation(line: 866, column: 26, scope: !3319)
!3321 = !DILocation(line: 866, column: 31, scope: !3319)
!3322 = !DILocation(line: 866, column: 24, scope: !3319)
!3323 = !DILocation(line: 866, column: 11, scope: !3319)
!3324 = !DILocation(line: 867, column: 8, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !3319, file: !356, line: 867, column: 8)
!3326 = !DILocation(line: 867, column: 15, scope: !3325)
!3327 = !DILocation(line: 867, column: 8, scope: !3319)
!3328 = !DILocation(line: 868, column: 12, scope: !3325)
!3329 = !DILocation(line: 868, column: 5, scope: !3325)
!3330 = !DILocation(line: 869, column: 13, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3325, file: !356, line: 869, column: 13)
!3332 = !DILocation(line: 869, column: 20, scope: !3331)
!3333 = !DILocation(line: 869, column: 13, scope: !3325)
!3334 = !DILocation(line: 870, column: 12, scope: !3331)
!3335 = !DILocation(line: 870, column: 5, scope: !3331)
!3336 = !DILocation(line: 873, column: 36, scope: !3312)
!3337 = !DILocation(line: 873, column: 43, scope: !3312)
!3338 = !DILocation(line: 873, column: 51, scope: !3312)
!3339 = !DILocation(line: 873, column: 3, scope: !3312)
!3340 = !DILocation(line: 874, column: 2, scope: !3312)
!3341 = !DILocation(line: 860, column: 45, scope: !3342)
!3342 = !DILexicalBlockFile(scope: !3300, file: !356, discriminator: 10)
!3343 = !DILocation(line: 860, column: 49, scope: !3342)
!3344 = !DILocation(line: 860, column: 42, scope: !3342)
!3345 = !DILocation(line: 860, column: 2, scope: !3342)
!3346 = distinct !{!3346, !3347}
!3347 = !DILocation(line: 860, column: 2, scope: !3253)
!3348 = !DILocation(line: 876, column: 23, scope: !3253)
!3349 = !DILocation(line: 876, column: 2, scope: !3253)
!3350 = !DILocation(line: 876, column: 9, scope: !3253)
!3351 = !DILocation(line: 876, column: 21, scope: !3253)
!3352 = !DILocation(line: 877, column: 1, scope: !3253)
!3353 = !DILocation(line: 877, column: 1, scope: !3354)
!3354 = !DILexicalBlockFile(scope: !3253, file: !356, discriminator: 1)
!3355 = distinct !DISubprogram(name: "process_update_track_file_status", scope: !356, file: !356, line: 822, type: !3356, isLocal: true, isDefinition: true, scopeLine: 823, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !448)
!3356 = !DISubroutineType(types: !3357)
!3357 = !{null, !327, !112, !1940}
!3358 = !DILocalVariable(name: "tfile", arg: 1, scope: !3355, file: !356, line: 822, type: !327)
!3359 = !DILocation(line: 822, column: 55, scope: !3355)
!3360 = !DILocalVariable(name: "new_status", arg: 2, scope: !3355, file: !356, line: 822, type: !112)
!3361 = !DILocation(line: 822, column: 66, scope: !3355)
!3362 = !DILocalVariable(name: "tvp", arg: 3, scope: !3355, file: !356, line: 822, type: !1940)
!3363 = !DILocation(line: 822, column: 95, scope: !3355)
!3364 = !DILocalVariable(name: "previous_status", scope: !3355, file: !356, line: 824, type: !112)
!3365 = !DILocation(line: 824, column: 6, scope: !3355)
!3366 = !DILocation(line: 826, column: 21, scope: !3355)
!3367 = !DILocation(line: 826, column: 26, scope: !3355)
!3368 = !DILocation(line: 826, column: 20, scope: !3355)
!3369 = !DILocation(line: 826, column: 36, scope: !3370)
!3370 = !DILexicalBlockFile(scope: !3355, file: !356, discriminator: 1)
!3371 = !DILocation(line: 826, column: 43, scope: !3370)
!3372 = !DILocation(line: 826, column: 20, scope: !3370)
!3373 = !DILocation(line: 826, column: 70, scope: !3374)
!3374 = !DILexicalBlockFile(scope: !3355, file: !356, discriminator: 2)
!3375 = !DILocation(line: 826, column: 77, scope: !3374)
!3376 = !DILocation(line: 826, column: 91, scope: !3374)
!3377 = !DILocation(line: 826, column: 96, scope: !3374)
!3378 = !DILocation(line: 826, column: 89, scope: !3374)
!3379 = !DILocation(line: 826, column: 20, scope: !3374)
!3380 = !DILocation(line: 826, column: 20, scope: !3381)
!3381 = !DILexicalBlockFile(scope: !3355, file: !356, discriminator: 3)
!3382 = !DILocation(line: 826, column: 18, scope: !3381)
!3383 = !DILocation(line: 827, column: 6, scope: !3384)
!3384 = distinct !DILexicalBlock(scope: !3355, file: !356, line: 827, column: 6)
!3385 = !DILocation(line: 827, column: 22, scope: !3384)
!3386 = !DILocation(line: 827, column: 6, scope: !3355)
!3387 = !DILocation(line: 828, column: 19, scope: !3384)
!3388 = !DILocation(line: 828, column: 3, scope: !3384)
!3389 = !DILocation(line: 829, column: 11, scope: !3390)
!3390 = distinct !DILexicalBlock(scope: !3384, file: !356, line: 829, column: 11)
!3391 = !DILocation(line: 829, column: 27, scope: !3390)
!3392 = !DILocation(line: 829, column: 11, scope: !3384)
!3393 = !DILocation(line: 830, column: 19, scope: !3390)
!3394 = !DILocation(line: 830, column: 3, scope: !3390)
!3395 = !DILocation(line: 832, column: 6, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3355, file: !356, line: 832, column: 6)
!3397 = !DILocation(line: 832, column: 25, scope: !3396)
!3398 = !DILocation(line: 832, column: 22, scope: !3396)
!3399 = !DILocation(line: 832, column: 6, scope: !3355)
!3400 = !DILocation(line: 833, column: 3, scope: !3396)
!3401 = !DILocation(line: 835, column: 6, scope: !3402)
!3402 = distinct !DILexicalBlock(scope: !3355, file: !356, line: 835, column: 6)
!3403 = !DILocation(line: 835, column: 17, scope: !3402)
!3404 = !DILocation(line: 835, column: 6, scope: !3355)
!3405 = !DILocation(line: 836, column: 17, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !3402, file: !356, line: 835, column: 26)
!3407 = !DILocation(line: 836, column: 22, scope: !3406)
!3408 = !DILocation(line: 836, column: 3, scope: !3406)
!3409 = !DILocation(line: 837, column: 32, scope: !3406)
!3410 = !DILocation(line: 837, column: 45, scope: !3406)
!3411 = !DILocation(line: 837, column: 43, scope: !3406)
!3412 = !DILocation(line: 837, column: 3, scope: !3406)
!3413 = !DILocation(line: 837, column: 8, scope: !3406)
!3414 = !DILocation(line: 837, column: 14, scope: !3406)
!3415 = !DILocation(line: 837, column: 29, scope: !3406)
!3416 = !DILocation(line: 838, column: 2, scope: !3406)
!3417 = !DILocation(line: 839, column: 7, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !3419, file: !356, line: 839, column: 7)
!3419 = distinct !DILexicalBlock(scope: !3402, file: !356, line: 838, column: 9)
!3420 = !DILocation(line: 839, column: 23, scope: !3418)
!3421 = !DILocation(line: 839, column: 7, scope: !3419)
!3422 = !DILocation(line: 840, column: 20, scope: !3418)
!3423 = !DILocation(line: 840, column: 25, scope: !3418)
!3424 = !DILocation(line: 840, column: 4, scope: !3418)
!3425 = !DILocation(line: 842, column: 7, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !3419, file: !356, line: 842, column: 7)
!3427 = !DILocation(line: 842, column: 12, scope: !3426)
!3428 = !DILocation(line: 842, column: 18, scope: !3426)
!3429 = !DILocation(line: 842, column: 32, scope: !3426)
!3430 = !DILocation(line: 842, column: 7, scope: !3419)
!3431 = !DILocation(line: 843, column: 33, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3426, file: !356, line: 842, column: 40)
!3433 = !DILocation(line: 843, column: 46, scope: !3432)
!3434 = !DILocation(line: 843, column: 44, scope: !3432)
!3435 = !DILocation(line: 843, column: 4, scope: !3432)
!3436 = !DILocation(line: 843, column: 9, scope: !3432)
!3437 = !DILocation(line: 843, column: 15, scope: !3432)
!3438 = !DILocation(line: 843, column: 30, scope: !3432)
!3439 = !DILocation(line: 844, column: 32, scope: !3432)
!3440 = !DILocation(line: 844, column: 37, scope: !3432)
!3441 = !DILocation(line: 844, column: 4, scope: !3432)
!3442 = !DILocation(line: 845, column: 3, scope: !3432)
!3443 = !DILocation(line: 847, column: 1, scope: !3355)
