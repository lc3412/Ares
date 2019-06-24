; ModuleID = './[inter]keepalived--vrrp--vrrp_notify.o.i'
source_filename = "./[inter]keepalived--vrrp--vrrp_notify.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._thread_master = type { %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.list_head, %struct.list_head, %struct.list_head, %struct._list*, %struct.rb_root, %struct.epoll_event*, %struct._thread_event*, i32, i32, i32, i32, %struct._thread*, i64, i64, i8 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct._list = type { %struct._element*, %struct._element*, i32, void (i8*)*, void (%struct._IO_FILE*, i8*)* }
%struct._element = type { %struct._element*, %struct._element*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.rb_root = type { %struct.rb_node* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.epoll_event = type opaque
%struct._thread_event = type { %struct._thread*, %struct._thread*, i64, i32, %struct.rb_node }
%struct._thread = type { i64, i32, %struct._thread_master*, i32 (%struct._thread*)*, i8*, %struct.timeval, %union.anon.0, %struct._thread_event*, %union.anon.1 }
%struct.timeval = type { i64, i64 }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { i32, i32 }
%union.anon.1 = type { %struct.rb_node }
%struct._vrrp_data = type { %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list* }
%struct._data = type { i8*, i8, i8*, i8, i8*, i8*, %struct.sockaddr_storage, i8*, i64, %struct._list*, i32, i8, i8, i32, i8*, %struct._interface*, i32, i32, i32, i32, %struct.lvs_syncd_config, i8, %struct.sockaddr_in, %struct.sockaddr_in6, i32, %struct.timeval, i32, i32, i32, i32, i32, i32, i8, i8, i32, [29 x i8], [29 x i8], i8, [32 x i8], [32 x i8], [32 x i8], i8, i8, i8, i8, i8, i8, i32, i64, i8, i8, i8, i32, i64, %struct._notify_fifo, %struct._notify_fifo, %struct._notify_fifo, i32, i8, i32, i8, i32, i8, i32, i8, i8, i8, i32, i64, i32 }
%struct.sockaddr_storage = type { i16, [118 x i8], i64 }
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
%struct._notify_script = type { i8**, i32, i32, i32, i32 }
%struct._seq_counter = type { i8, i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct._notify_fifo = type { i8*, i32, i8, %struct._notify_script* }

@master = external global %struct._thread_master*, align 8
@.str = private unnamed_addr constant [9 x i8] c"INSTANCE\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"GROUP\00", align 1
@vrrp_data = external global %struct._vrrp_data*, align 8
@garp_delay = common global %struct._list* null, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"{UNKNOWN}\00", align 1
@global_data = external global %struct._data*, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"MASTER\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"BACKUP\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"FAULT\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"STOP\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"MASTER_RX_LOWER_PRI\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"%s \22%s\22 %s %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"Entering MASTER state\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"=> VRRP Instance is now owning VRRP VIPs <=\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"Entering BACKUP state\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"=> VRRP Instance is no longer owning VRRP VIPs <=\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"Entering FAULT state\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"Stopping\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"=> VRRP Instance stopping <=\00", align 1
@.str.17 = private unnamed_addr constant [55 x i8] c"=> All VRRP group instances are now in MASTER state <=\00", align 1
@.str.18 = private unnamed_addr constant [55 x i8] c"=> All VRRP group instances are now in BACKUP state <=\00", align 1
@.str.19 = private unnamed_addr constant [54 x i8] c"=> All VRRP group instances are now in FAULT state <=\00", align 1
@.str.20 = private unnamed_addr constant [48 x i8] c"=> All VRRP group instances are now stopping <=\00", align 1

; Function Attrs: nounwind uwtable
define void @send_event_notify(%struct._vrrp_t*, i32) #0 !dbg !133 {
  %3 = alloca %struct._vrrp_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._notify_script*, align 8
  store %struct._vrrp_t* %0, %struct._vrrp_t** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !495, metadata !496), !dbg !497
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !498, metadata !496), !dbg !499
  call void @llvm.dbg.declare(metadata %struct._notify_script** %5, metadata !500, metadata !496), !dbg !501
  %6 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !502
  %7 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %6, i32 0, i32 68, !dbg !503
  %8 = load %struct._notify_script*, %struct._notify_script** %7, align 8, !dbg !503
  store %struct._notify_script* %8, %struct._notify_script** %5, align 8, !dbg !501
  %9 = load %struct._notify_script*, %struct._notify_script** %5, align 8, !dbg !504
  %10 = icmp ne %struct._notify_script* %9, null, !dbg !504
  br i1 %10, label %11, label %14, !dbg !506

; <label>:11:                                     ; preds = %2
  %12 = load %struct._notify_script*, %struct._notify_script** %5, align 8, !dbg !507
  %13 = call i32 @notify_exec(%struct._notify_script* %12), !dbg !508
  br label %14, !dbg !508

; <label>:14:                                     ; preds = %11, %2
  %15 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !509
  %16 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %15, i32 0, i32 1, !dbg !510
  %17 = load i8*, i8** %16, align 8, !dbg !510
  %18 = load i32, i32* %4, align 4, !dbg !511
  %19 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !512
  %20 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %19, i32 0, i32 38, !dbg !513
  %21 = load i8, i8* %20, align 2, !dbg !513
  call void @notify_fifo(i8* %17, i32 %18, i1 zeroext false, i8 zeroext %21), !dbg !514
  ret void, !dbg !515
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @notify_exec(%struct._notify_script*) #2

; Function Attrs: nounwind uwtable
define internal void @notify_fifo(i8*, i32, i1 zeroext, i8 zeroext) #0 !dbg !516 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !521, metadata !496), !dbg !522
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !523, metadata !496), !dbg !524
  %13 = zext i1 %2 to i8
  store i8 %13, i8* %7, align 1
  call void @llvm.dbg.declare(metadata i8* %7, metadata !525, metadata !496), !dbg !526
  store i8 %3, i8* %8, align 1
  call void @llvm.dbg.declare(metadata i8* %8, metadata !527, metadata !496), !dbg !528
  call void @llvm.dbg.declare(metadata i8** %9, metadata !529, metadata !496), !dbg !530
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8** %9, align 8, !dbg !530
  call void @llvm.dbg.declare(metadata i64* %10, metadata !531, metadata !496), !dbg !532
  call void @llvm.dbg.declare(metadata i8** %11, metadata !533, metadata !496), !dbg !534
  call void @llvm.dbg.declare(metadata i8** %12, metadata !535, metadata !496), !dbg !536
  %14 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !537
  %15 = getelementptr inbounds %struct._data, %struct._data* %14, i32 0, i32 54, !dbg !539
  %16 = getelementptr inbounds %struct._notify_fifo, %struct._notify_fifo* %15, i32 0, i32 1, !dbg !540
  %17 = load i32, i32* %16, align 8, !dbg !540
  %18 = icmp eq i32 %17, -1, !dbg !541
  br i1 %18, label %19, label %26, !dbg !542

; <label>:19:                                     ; preds = %4
  %20 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !543
  %21 = getelementptr inbounds %struct._data, %struct._data* %20, i32 0, i32 55, !dbg !544
  %22 = getelementptr inbounds %struct._notify_fifo, %struct._notify_fifo* %21, i32 0, i32 1, !dbg !545
  %23 = load i32, i32* %22, align 8, !dbg !545
  %24 = icmp eq i32 %23, -1, !dbg !546
  br i1 %24, label %25, label %26, !dbg !547

; <label>:25:                                     ; preds = %19
  br label %97, !dbg !549

; <label>:26:                                     ; preds = %19, %4
  %27 = load i32, i32* %6, align 4, !dbg !550
  switch i32 %27, label %33 [
    i32 2, label %28
    i32 1, label %29
    i32 3, label %30
    i32 98, label %31
    i32 1000, label %32
  ], !dbg !551

; <label>:28:                                     ; preds = %26
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8** %9, align 8, !dbg !552
  br label %33, !dbg !554

; <label>:29:                                     ; preds = %26
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8** %9, align 8, !dbg !555
  br label %33, !dbg !556

; <label>:30:                                     ; preds = %26
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8** %9, align 8, !dbg !557
  br label %33, !dbg !558

; <label>:31:                                     ; preds = %26
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8** %9, align 8, !dbg !559
  br label %33, !dbg !560

; <label>:32:                                     ; preds = %26
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i8** %9, align 8, !dbg !561
  br label %33, !dbg !562

; <label>:33:                                     ; preds = %26, %32, %31, %30, %29, %28
  %34 = load i8, i8* %7, align 1, !dbg !563
  %35 = trunc i8 %34 to i1, !dbg !563
  %36 = select i1 %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), !dbg !563
  store i8* %36, i8** %12, align 8, !dbg !564
  %37 = load i8*, i8** %12, align 8, !dbg !565
  %38 = call i64 @strlen(i8* %37) #6, !dbg !566
  %39 = load i8*, i8** %9, align 8, !dbg !567
  %40 = call i64 @strlen(i8* %39) #6, !dbg !568
  %41 = add i64 %38, %40, !dbg !569
  %42 = load i8*, i8** %5, align 8, !dbg !570
  %43 = call i64 @strlen(i8* %42) #6, !dbg !571
  %44 = add i64 %41, %43, !dbg !573
  %45 = add i64 %44, 10, !dbg !574
  store i64 %45, i64* %10, align 8, !dbg !575
  %46 = load i64, i64* %10, align 8, !dbg !576
  %47 = call i8* @zalloc(i64 %46), !dbg !577
  store i8* %47, i8** %11, align 8, !dbg !578
  %48 = load i8*, i8** %11, align 8, !dbg !579
  %49 = icmp ne i8* %48, null, !dbg !579
  br i1 %49, label %51, label %50, !dbg !581

; <label>:50:                                     ; preds = %33
  br label %97, !dbg !582

; <label>:51:                                     ; preds = %33
  %52 = load i8*, i8** %11, align 8, !dbg !583
  %53 = load i64, i64* %10, align 8, !dbg !584
  %54 = load i8*, i8** %12, align 8, !dbg !585
  %55 = load i8*, i8** %5, align 8, !dbg !586
  %56 = load i8*, i8** %9, align 8, !dbg !587
  %57 = load i8, i8* %8, align 1, !dbg !588
  %58 = zext i8 %57 to i32, !dbg !588
  %59 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %52, i64 %53, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i8* %54, i8* %55, i8* %56, i32 %58) #7, !dbg !589
  %60 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !590
  %61 = getelementptr inbounds %struct._data, %struct._data* %60, i32 0, i32 54, !dbg !592
  %62 = getelementptr inbounds %struct._notify_fifo, %struct._notify_fifo* %61, i32 0, i32 1, !dbg !593
  %63 = load i32, i32* %62, align 8, !dbg !593
  %64 = icmp ne i32 %63, -1, !dbg !594
  br i1 %64, label %65, label %77, !dbg !595

; <label>:65:                                     ; preds = %51
  %66 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !596
  %67 = getelementptr inbounds %struct._data, %struct._data* %66, i32 0, i32 54, !dbg !599
  %68 = getelementptr inbounds %struct._notify_fifo, %struct._notify_fifo* %67, i32 0, i32 1, !dbg !600
  %69 = load i32, i32* %68, align 8, !dbg !600
  %70 = load i8*, i8** %11, align 8, !dbg !601
  %71 = load i8*, i8** %11, align 8, !dbg !602
  %72 = call i64 @strlen(i8* %71) #6, !dbg !603
  %73 = call i64 @write(i32 %69, i8* %70, i64 %72), !dbg !604
  %74 = icmp eq i64 %73, -1, !dbg !606
  br i1 %74, label %75, label %76, !dbg !607

; <label>:75:                                     ; preds = %65
  br label %76, !dbg !608

; <label>:76:                                     ; preds = %75, %65
  br label %77, !dbg !611

; <label>:77:                                     ; preds = %76, %51
  %78 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !612
  %79 = getelementptr inbounds %struct._data, %struct._data* %78, i32 0, i32 55, !dbg !614
  %80 = getelementptr inbounds %struct._notify_fifo, %struct._notify_fifo* %79, i32 0, i32 1, !dbg !615
  %81 = load i32, i32* %80, align 8, !dbg !615
  %82 = icmp ne i32 %81, -1, !dbg !616
  br i1 %82, label %83, label %95, !dbg !617

; <label>:83:                                     ; preds = %77
  %84 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !618
  %85 = getelementptr inbounds %struct._data, %struct._data* %84, i32 0, i32 55, !dbg !621
  %86 = getelementptr inbounds %struct._notify_fifo, %struct._notify_fifo* %85, i32 0, i32 1, !dbg !622
  %87 = load i32, i32* %86, align 8, !dbg !622
  %88 = load i8*, i8** %11, align 8, !dbg !623
  %89 = load i8*, i8** %11, align 8, !dbg !624
  %90 = call i64 @strlen(i8* %89) #6, !dbg !625
  %91 = call i64 @write(i32 %87, i8* %88, i64 %90), !dbg !626
  %92 = icmp eq i64 %91, -1, !dbg !628
  br i1 %92, label %93, label %94, !dbg !629

; <label>:93:                                     ; preds = %83
  br label %94, !dbg !630

; <label>:94:                                     ; preds = %93, %83
  br label %95, !dbg !633

; <label>:95:                                     ; preds = %94, %77
  %96 = load i8*, i8** %11, align 8, !dbg !634
  call void @free(i8* %96) #7, !dbg !635
  store i8* null, i8** %11, align 8, !dbg !636
  br label %97, !dbg !637

; <label>:97:                                     ; preds = %95, %50, %25
  ret void, !dbg !638
}

; Function Attrs: nounwind uwtable
define void @send_instance_notifies(%struct._vrrp_t*) #0 !dbg !639 {
  %2 = alloca %struct._vrrp_t*, align 8
  %3 = alloca %struct._notify_script*, align 8
  %4 = alloca %struct._notify_script*, align 8
  store %struct._vrrp_t* %0, %struct._vrrp_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %2, metadata !642, metadata !496), !dbg !643
  call void @llvm.dbg.declare(metadata %struct._notify_script** %3, metadata !644, metadata !496), !dbg !645
  %5 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !646
  %6 = call %struct._notify_script* @get_iscript(%struct._vrrp_t* %5), !dbg !647
  store %struct._notify_script* %6, %struct._notify_script** %3, align 8, !dbg !645
  call void @llvm.dbg.declare(metadata %struct._notify_script** %4, metadata !648, metadata !496), !dbg !649
  %7 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !650
  %8 = call %struct._notify_script* @get_igscript(%struct._vrrp_t* %7), !dbg !651
  store %struct._notify_script* %8, %struct._notify_script** %4, align 8, !dbg !649
  %9 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !652
  %10 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %9, i32 0, i32 2, !dbg !654
  %11 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %10, align 8, !dbg !654
  %12 = icmp ne %struct._vrrp_sgroup* %11, null, !dbg !652
  br i1 %12, label %13, label %24, !dbg !655

; <label>:13:                                     ; preds = %1
  %14 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !656
  %15 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %14, i32 0, i32 55, !dbg !658
  %16 = load i32, i32* %15, align 8, !dbg !658
  %17 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !659
  %18 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %17, i32 0, i32 2, !dbg !660
  %19 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %18, align 8, !dbg !660
  %20 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %19, i32 0, i32 5, !dbg !661
  %21 = load i32, i32* %20, align 8, !dbg !661
  %22 = icmp eq i32 %16, %21, !dbg !662
  br i1 %22, label %23, label %24, !dbg !663

; <label>:23:                                     ; preds = %13
  br label %64, !dbg !664

; <label>:24:                                     ; preds = %13, %1
  %25 = load %struct._notify_script*, %struct._notify_script** %3, align 8, !dbg !666
  %26 = icmp ne %struct._notify_script* %25, null, !dbg !666
  br i1 %26, label %27, label %40, !dbg !668

; <label>:27:                                     ; preds = %24
  %28 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !669
  %29 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %28, i32 0, i32 55, !dbg !672
  %30 = load i32, i32* %29, align 8, !dbg !672
  %31 = icmp eq i32 %30, 98, !dbg !673
  br i1 %31, label %32, label %36, !dbg !674

; <label>:32:                                     ; preds = %27
  %33 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !675
  %34 = load %struct._notify_script*, %struct._notify_script** %3, align 8, !dbg !676
  %35 = call i32 @system_call_script(%struct._thread_master* %33, i32 (%struct._thread*)* @child_killed_thread, i8* null, i64 1000000, %struct._notify_script* %34), !dbg !677
  br label %39, !dbg !677

; <label>:36:                                     ; preds = %27
  %37 = load %struct._notify_script*, %struct._notify_script** %3, align 8, !dbg !678
  %38 = call i32 @notify_exec(%struct._notify_script* %37), !dbg !679
  br label %39

; <label>:39:                                     ; preds = %36, %32
  br label %40, !dbg !680

; <label>:40:                                     ; preds = %39, %24
  %41 = load %struct._notify_script*, %struct._notify_script** %4, align 8, !dbg !681
  %42 = icmp ne %struct._notify_script* %41, null, !dbg !681
  br i1 %42, label %43, label %55, !dbg !683

; <label>:43:                                     ; preds = %40
  %44 = load %struct._notify_script*, %struct._notify_script** %4, align 8, !dbg !684
  %45 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !685
  %46 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %45, i32 0, i32 55, !dbg !686
  %47 = load i32, i32* %46, align 8, !dbg !686
  %48 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !687
  %49 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %48, i32 0, i32 1, !dbg !688
  %50 = load i8*, i8** %49, align 8, !dbg !688
  %51 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !689
  %52 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %51, i32 0, i32 38, !dbg !690
  %53 = load i8, i8* %52, align 2, !dbg !690
  %54 = zext i8 %53 to i32, !dbg !689
  call void @notify_script_exec(%struct._notify_script* %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 %47, i8* %50, i32 %54), !dbg !691
  br label %55, !dbg !691

; <label>:55:                                     ; preds = %43, %40
  %56 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !692
  call void @notify_instance_fifo(%struct._vrrp_t* %56), !dbg !693
  %57 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !694
  %58 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %57, i32 0, i32 55, !dbg !696
  %59 = load i32, i32* %58, align 8, !dbg !696
  %60 = icmp eq i32 %59, 2, !dbg !697
  br i1 %60, label %61, label %62, !dbg !698

; <label>:61:                                     ; preds = %55
  br label %62, !dbg !699

; <label>:62:                                     ; preds = %61, %55
  %63 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !701
  call void @vrrp_smtp_notifier(%struct._vrrp_t* %63), !dbg !702
  br label %64, !dbg !703

; <label>:64:                                     ; preds = %62, %23
  ret void, !dbg !704
}

; Function Attrs: nounwind uwtable
define internal %struct._notify_script* @get_iscript(%struct._vrrp_t*) #0 !dbg !706 {
  %2 = alloca %struct._notify_script*, align 8
  %3 = alloca %struct._vrrp_t*, align 8
  store %struct._vrrp_t* %0, %struct._vrrp_t** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !709, metadata !496), !dbg !710
  %4 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !711
  %5 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %4, i32 0, i32 63, !dbg !713
  %6 = load i8, i8* %5, align 8, !dbg !713
  %7 = trunc i8 %6 to i1, !dbg !713
  br i1 %7, label %9, label %8, !dbg !714

; <label>:8:                                      ; preds = %1
  store %struct._notify_script* null, %struct._notify_script** %2, align 8, !dbg !715
  br label %46, !dbg !715

; <label>:9:                                      ; preds = %1
  %10 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !716
  %11 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %10, i32 0, i32 55, !dbg !718
  %12 = load i32, i32* %11, align 8, !dbg !718
  %13 = icmp eq i32 %12, 1, !dbg !719
  br i1 %13, label %14, label %18, !dbg !720

; <label>:14:                                     ; preds = %9
  %15 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !721
  %16 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %15, i32 0, i32 64, !dbg !722
  %17 = load %struct._notify_script*, %struct._notify_script** %16, align 8, !dbg !722
  store %struct._notify_script* %17, %struct._notify_script** %2, align 8, !dbg !723
  br label %46, !dbg !723

; <label>:18:                                     ; preds = %9
  %19 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !724
  %20 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %19, i32 0, i32 55, !dbg !726
  %21 = load i32, i32* %20, align 8, !dbg !726
  %22 = icmp eq i32 %21, 2, !dbg !727
  br i1 %22, label %23, label %27, !dbg !728

; <label>:23:                                     ; preds = %18
  %24 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !729
  %25 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %24, i32 0, i32 65, !dbg !730
  %26 = load %struct._notify_script*, %struct._notify_script** %25, align 8, !dbg !730
  store %struct._notify_script* %26, %struct._notify_script** %2, align 8, !dbg !731
  br label %46, !dbg !731

; <label>:27:                                     ; preds = %18
  %28 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !732
  %29 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %28, i32 0, i32 55, !dbg !734
  %30 = load i32, i32* %29, align 8, !dbg !734
  %31 = icmp eq i32 %30, 3, !dbg !735
  br i1 %31, label %32, label %36, !dbg !736

; <label>:32:                                     ; preds = %27
  %33 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !737
  %34 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %33, i32 0, i32 66, !dbg !738
  %35 = load %struct._notify_script*, %struct._notify_script** %34, align 8, !dbg !738
  store %struct._notify_script* %35, %struct._notify_script** %2, align 8, !dbg !739
  br label %46, !dbg !739

; <label>:36:                                     ; preds = %27
  %37 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !740
  %38 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %37, i32 0, i32 55, !dbg !742
  %39 = load i32, i32* %38, align 8, !dbg !742
  %40 = icmp eq i32 %39, 98, !dbg !743
  br i1 %40, label %41, label %45, !dbg !744

; <label>:41:                                     ; preds = %36
  %42 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !745
  %43 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %42, i32 0, i32 67, !dbg !746
  %44 = load %struct._notify_script*, %struct._notify_script** %43, align 8, !dbg !746
  store %struct._notify_script* %44, %struct._notify_script** %2, align 8, !dbg !747
  br label %46, !dbg !747

; <label>:45:                                     ; preds = %36
  store %struct._notify_script* null, %struct._notify_script** %2, align 8, !dbg !748
  br label %46, !dbg !748

; <label>:46:                                     ; preds = %45, %41, %32, %23, %14, %8
  %47 = load %struct._notify_script*, %struct._notify_script** %2, align 8, !dbg !749
  ret %struct._notify_script* %47, !dbg !749
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._notify_script* @get_igscript(%struct._vrrp_t*) #3 !dbg !750 {
  %2 = alloca %struct._vrrp_t*, align 8
  store %struct._vrrp_t* %0, %struct._vrrp_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %2, metadata !751, metadata !496), !dbg !752
  %3 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !753
  %4 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %3, i32 0, i32 69, !dbg !754
  %5 = load %struct._notify_script*, %struct._notify_script** %4, align 8, !dbg !754
  ret %struct._notify_script* %5, !dbg !755
}

declare i32 @system_call_script(%struct._thread_master*, i32 (%struct._thread*)*, i8*, i64, %struct._notify_script*) #2

declare i32 @child_killed_thread(%struct._thread*) #2

; Function Attrs: nounwind uwtable
define internal void @notify_script_exec(%struct._notify_script*, i8*, i32, i8*, i32) #0 !dbg !756 {
  %6 = alloca %struct._notify_script*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [4 x i8], align 1
  store %struct._notify_script* %0, %struct._notify_script** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._notify_script** %6, metadata !759, metadata !496), !dbg !760
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !761, metadata !496), !dbg !762
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !763, metadata !496), !dbg !764
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !765, metadata !496), !dbg !766
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !767, metadata !496), !dbg !768
  call void @llvm.dbg.declare(metadata [4 x i8]* %11, metadata !769, metadata !496), !dbg !771
  %12 = load i8*, i8** %7, align 8, !dbg !772
  %13 = load %struct._notify_script*, %struct._notify_script** %6, align 8, !dbg !773
  %14 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %13, i32 0, i32 1, !dbg !774
  %15 = load i32, i32* %14, align 8, !dbg !774
  %16 = sext i32 %15 to i64, !dbg !775
  %17 = load %struct._notify_script*, %struct._notify_script** %6, align 8, !dbg !775
  %18 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %17, i32 0, i32 0, !dbg !776
  %19 = load i8**, i8*** %18, align 8, !dbg !776
  %20 = getelementptr inbounds i8*, i8** %19, i64 %16, !dbg !775
  store i8* %12, i8** %20, align 8, !dbg !777
  %21 = load i8*, i8** %9, align 8, !dbg !778
  %22 = load %struct._notify_script*, %struct._notify_script** %6, align 8, !dbg !779
  %23 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %22, i32 0, i32 1, !dbg !780
  %24 = load i32, i32* %23, align 8, !dbg !780
  %25 = add nsw i32 %24, 1, !dbg !781
  %26 = sext i32 %25 to i64, !dbg !782
  %27 = load %struct._notify_script*, %struct._notify_script** %6, align 8, !dbg !782
  %28 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %27, i32 0, i32 0, !dbg !783
  %29 = load i8**, i8*** %28, align 8, !dbg !783
  %30 = getelementptr inbounds i8*, i8** %29, i64 %26, !dbg !782
  store i8* %21, i8** %30, align 8, !dbg !784
  %31 = load i32, i32* %8, align 4, !dbg !785
  switch i32 %31, label %72 [
    i32 2, label %32
    i32 1, label %42
    i32 3, label %52
    i32 98, label %62
  ], !dbg !786

; <label>:32:                                     ; preds = %5
  %33 = load %struct._notify_script*, %struct._notify_script** %6, align 8, !dbg !787
  %34 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %33, i32 0, i32 1, !dbg !789
  %35 = load i32, i32* %34, align 8, !dbg !789
  %36 = add nsw i32 %35, 2, !dbg !790
  %37 = sext i32 %36 to i64, !dbg !791
  %38 = load %struct._notify_script*, %struct._notify_script** %6, align 8, !dbg !791
  %39 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %38, i32 0, i32 0, !dbg !792
  %40 = load i8**, i8*** %39, align 8, !dbg !792
  %41 = getelementptr inbounds i8*, i8** %40, i64 %37, !dbg !791
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8** %41, align 8, !dbg !793
  br label %82, !dbg !794

; <label>:42:                                     ; preds = %5
  %43 = load %struct._notify_script*, %struct._notify_script** %6, align 8, !dbg !795
  %44 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %43, i32 0, i32 1, !dbg !796
  %45 = load i32, i32* %44, align 8, !dbg !796
  %46 = add nsw i32 %45, 2, !dbg !797
  %47 = sext i32 %46 to i64, !dbg !798
  %48 = load %struct._notify_script*, %struct._notify_script** %6, align 8, !dbg !798
  %49 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %48, i32 0, i32 0, !dbg !799
  %50 = load i8**, i8*** %49, align 8, !dbg !799
  %51 = getelementptr inbounds i8*, i8** %50, i64 %47, !dbg !798
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8** %51, align 8, !dbg !800
  br label %82, !dbg !801

; <label>:52:                                     ; preds = %5
  %53 = load %struct._notify_script*, %struct._notify_script** %6, align 8, !dbg !802
  %54 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %53, i32 0, i32 1, !dbg !803
  %55 = load i32, i32* %54, align 8, !dbg !803
  %56 = add nsw i32 %55, 2, !dbg !804
  %57 = sext i32 %56 to i64, !dbg !805
  %58 = load %struct._notify_script*, %struct._notify_script** %6, align 8, !dbg !805
  %59 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %58, i32 0, i32 0, !dbg !806
  %60 = load i8**, i8*** %59, align 8, !dbg !806
  %61 = getelementptr inbounds i8*, i8** %60, i64 %57, !dbg !805
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8** %61, align 8, !dbg !807
  br label %82, !dbg !808

; <label>:62:                                     ; preds = %5
  %63 = load %struct._notify_script*, %struct._notify_script** %6, align 8, !dbg !809
  %64 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %63, i32 0, i32 1, !dbg !810
  %65 = load i32, i32* %64, align 8, !dbg !810
  %66 = add nsw i32 %65, 2, !dbg !811
  %67 = sext i32 %66 to i64, !dbg !812
  %68 = load %struct._notify_script*, %struct._notify_script** %6, align 8, !dbg !812
  %69 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %68, i32 0, i32 0, !dbg !813
  %70 = load i8**, i8*** %69, align 8, !dbg !813
  %71 = getelementptr inbounds i8*, i8** %70, i64 %67, !dbg !812
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8** %71, align 8, !dbg !814
  br label %82, !dbg !815

; <label>:72:                                     ; preds = %5
  %73 = load %struct._notify_script*, %struct._notify_script** %6, align 8, !dbg !816
  %74 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %73, i32 0, i32 1, !dbg !817
  %75 = load i32, i32* %74, align 8, !dbg !817
  %76 = add nsw i32 %75, 2, !dbg !818
  %77 = sext i32 %76 to i64, !dbg !819
  %78 = load %struct._notify_script*, %struct._notify_script** %6, align 8, !dbg !819
  %79 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %78, i32 0, i32 0, !dbg !820
  %80 = load i8**, i8*** %79, align 8, !dbg !820
  %81 = getelementptr inbounds i8*, i8** %80, i64 %77, !dbg !819
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8** %81, align 8, !dbg !821
  br label %82, !dbg !822

; <label>:82:                                     ; preds = %72, %62, %52, %42, %32
  %83 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i32 0, i32 0, !dbg !823
  %84 = load i32, i32* %10, align 4, !dbg !824
  %85 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %83, i64 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i32 %84) #7, !dbg !825
  %86 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i32 0, i32 0, !dbg !826
  %87 = load %struct._notify_script*, %struct._notify_script** %6, align 8, !dbg !827
  %88 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %87, i32 0, i32 1, !dbg !828
  %89 = load i32, i32* %88, align 8, !dbg !828
  %90 = add nsw i32 %89, 3, !dbg !829
  %91 = sext i32 %90 to i64, !dbg !830
  %92 = load %struct._notify_script*, %struct._notify_script** %6, align 8, !dbg !830
  %93 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %92, i32 0, i32 0, !dbg !831
  %94 = load i8**, i8*** %93, align 8, !dbg !831
  %95 = getelementptr inbounds i8*, i8** %94, i64 %91, !dbg !830
  store i8* %86, i8** %95, align 8, !dbg !832
  %96 = load i32, i32* %8, align 4, !dbg !833
  %97 = icmp eq i32 %96, 98, !dbg !835
  br i1 %97, label %98, label %102, !dbg !836

; <label>:98:                                     ; preds = %82
  %99 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !837
  %100 = load %struct._notify_script*, %struct._notify_script** %6, align 8, !dbg !838
  %101 = call i32 @system_call_script(%struct._thread_master* %99, i32 (%struct._thread*)* @child_killed_thread, i8* null, i64 1000000, %struct._notify_script* %100), !dbg !839
  br label %105, !dbg !839

; <label>:102:                                    ; preds = %82
  %103 = load %struct._notify_script*, %struct._notify_script** %6, align 8, !dbg !840
  %104 = call i32 @notify_exec(%struct._notify_script* %103), !dbg !841
  br label %105

; <label>:105:                                    ; preds = %102, %98
  ret void, !dbg !842
}

; Function Attrs: nounwind uwtable
define internal void @notify_instance_fifo(%struct._vrrp_t*) #0 !dbg !843 {
  %2 = alloca %struct._vrrp_t*, align 8
  store %struct._vrrp_t* %0, %struct._vrrp_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %2, metadata !848, metadata !496), !dbg !849
  %3 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !850
  %4 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %3, i32 0, i32 1, !dbg !851
  %5 = load i8*, i8** %4, align 8, !dbg !851
  %6 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !852
  %7 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %6, i32 0, i32 55, !dbg !853
  %8 = load i32, i32* %7, align 8, !dbg !853
  %9 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !854
  %10 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %9, i32 0, i32 38, !dbg !855
  %11 = load i8, i8* %10, align 2, !dbg !855
  call void @notify_fifo(i8* %5, i32 %8, i1 zeroext false, i8 zeroext %11), !dbg !856
  ret void, !dbg !857
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_smtp_notifier(%struct._vrrp_t*) #0 !dbg !858 {
  %2 = alloca %struct._vrrp_t*, align 8
  store %struct._vrrp_t* %0, %struct._vrrp_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %2, metadata !859, metadata !496), !dbg !860
  %3 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !861
  %4 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %3, i32 0, i32 61, !dbg !863
  %5 = load i32, i32* %4, align 8, !dbg !863
  %6 = icmp ne i32 %5, 0, !dbg !861
  br i1 %6, label %7, label %67, !dbg !864

; <label>:7:                                      ; preds = %1
  %8 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !865
  %9 = getelementptr inbounds %struct._data, %struct._data* %8, i32 0, i32 12, !dbg !866
  %10 = load i8, i8* %9, align 1, !dbg !866
  %11 = trunc i8 %10 to i1, !dbg !866
  br i1 %11, label %12, label %17, !dbg !867

; <label>:12:                                     ; preds = %7
  %13 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !868
  %14 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %13, i32 0, i32 55, !dbg !870
  %15 = load i32, i32* %14, align 8, !dbg !870
  %16 = icmp ne i32 %15, 3, !dbg !871
  br i1 %16, label %17, label %67, !dbg !872

; <label>:17:                                     ; preds = %12, %7
  %18 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !873
  %19 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %18, i32 0, i32 62, !dbg !874
  %20 = load i32, i32* %19, align 4, !dbg !874
  %21 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !875
  %22 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %21, i32 0, i32 55, !dbg !876
  %23 = load i32, i32* %22, align 8, !dbg !876
  %24 = icmp ne i32 %20, %23, !dbg !877
  br i1 %24, label %25, label %67, !dbg !878

; <label>:25:                                     ; preds = %17
  %26 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !880
  %27 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %26, i32 0, i32 55, !dbg !883
  %28 = load i32, i32* %27, align 8, !dbg !883
  %29 = icmp eq i32 %28, 2, !dbg !884
  br i1 %29, label %30, label %33, !dbg !885

; <label>:30:                                     ; preds = %25
  %31 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !886
  %32 = bitcast %struct._vrrp_t* %31 to i8*, !dbg !886
  call void @smtp_alert(i32 4, i8* %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i32 0, i32 0)), !dbg !887
  br label %61, !dbg !887

; <label>:33:                                     ; preds = %25
  %34 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !888
  %35 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %34, i32 0, i32 55, !dbg !890
  %36 = load i32, i32* %35, align 8, !dbg !890
  %37 = icmp eq i32 %36, 1, !dbg !891
  br i1 %37, label %38, label %41, !dbg !892

; <label>:38:                                     ; preds = %33
  %39 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !893
  %40 = bitcast %struct._vrrp_t* %39 to i8*, !dbg !893
  call void @smtp_alert(i32 4, i8* %40, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.13, i32 0, i32 0)), !dbg !894
  br label %60, !dbg !894

; <label>:41:                                     ; preds = %33
  %42 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !895
  %43 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %42, i32 0, i32 55, !dbg !897
  %44 = load i32, i32* %43, align 8, !dbg !897
  %45 = icmp eq i32 %44, 3, !dbg !898
  br i1 %45, label %46, label %49, !dbg !899

; <label>:46:                                     ; preds = %41
  %47 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !900
  %48 = bitcast %struct._vrrp_t* %47 to i8*, !dbg !900
  call void @smtp_alert(i32 4, i8* %48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.13, i32 0, i32 0)), !dbg !901
  br label %59, !dbg !901

; <label>:49:                                     ; preds = %41
  %50 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !902
  %51 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %50, i32 0, i32 55, !dbg !904
  %52 = load i32, i32* %51, align 8, !dbg !904
  %53 = icmp eq i32 %52, 98, !dbg !905
  br i1 %53, label %54, label %57, !dbg !906

; <label>:54:                                     ; preds = %49
  %55 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !907
  %56 = bitcast %struct._vrrp_t* %55 to i8*, !dbg !907
  call void @smtp_alert(i32 4, i8* %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i32 0, i32 0)), !dbg !908
  br label %58, !dbg !908

; <label>:57:                                     ; preds = %49
  br label %67, !dbg !909

; <label>:58:                                     ; preds = %54
  br label %59

; <label>:59:                                     ; preds = %58, %46
  br label %60

; <label>:60:                                     ; preds = %59, %38
  br label %61

; <label>:61:                                     ; preds = %60, %30
  %62 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !910
  %63 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %62, i32 0, i32 55, !dbg !911
  %64 = load i32, i32* %63, align 8, !dbg !911
  %65 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !912
  %66 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %65, i32 0, i32 62, !dbg !913
  store i32 %64, i32* %66, align 4, !dbg !914
  br label %67, !dbg !915

; <label>:67:                                     ; preds = %57, %61, %17, %12, %1
  ret void, !dbg !916
}

; Function Attrs: nounwind uwtable
define void @send_group_notifies(%struct._vrrp_sgroup*) #0 !dbg !917 {
  %2 = alloca %struct._vrrp_sgroup*, align 8
  %3 = alloca %struct._notify_script*, align 8
  %4 = alloca %struct._notify_script*, align 8
  store %struct._vrrp_sgroup* %0, %struct._vrrp_sgroup** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vrrp_sgroup** %2, metadata !920, metadata !496), !dbg !921
  call void @llvm.dbg.declare(metadata %struct._notify_script** %3, metadata !922, metadata !496), !dbg !923
  %5 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %2, align 8, !dbg !924
  %6 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %2, align 8, !dbg !925
  %7 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %6, i32 0, i32 5, !dbg !926
  %8 = load i32, i32* %7, align 8, !dbg !926
  %9 = call %struct._notify_script* @get_gscript(%struct._vrrp_sgroup* %5, i32 %8), !dbg !927
  store %struct._notify_script* %9, %struct._notify_script** %3, align 8, !dbg !923
  call void @llvm.dbg.declare(metadata %struct._notify_script** %4, metadata !928, metadata !496), !dbg !929
  %10 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %2, align 8, !dbg !930
  %11 = call %struct._notify_script* @get_ggscript(%struct._vrrp_sgroup* %10), !dbg !931
  store %struct._notify_script* %11, %struct._notify_script** %4, align 8, !dbg !929
  %12 = load %struct._notify_script*, %struct._notify_script** %3, align 8, !dbg !932
  %13 = icmp ne %struct._notify_script* %12, null, !dbg !932
  br i1 %13, label %14, label %17, !dbg !934

; <label>:14:                                     ; preds = %1
  %15 = load %struct._notify_script*, %struct._notify_script** %3, align 8, !dbg !935
  %16 = call i32 @notify_exec(%struct._notify_script* %15), !dbg !936
  br label %17, !dbg !936

; <label>:17:                                     ; preds = %14, %1
  %18 = load %struct._notify_script*, %struct._notify_script** %4, align 8, !dbg !937
  %19 = icmp ne %struct._notify_script* %18, null, !dbg !937
  br i1 %19, label %20, label %28, !dbg !939

; <label>:20:                                     ; preds = %17
  %21 = load %struct._notify_script*, %struct._notify_script** %4, align 8, !dbg !940
  %22 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %2, align 8, !dbg !941
  %23 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %22, i32 0, i32 5, !dbg !942
  %24 = load i32, i32* %23, align 8, !dbg !942
  %25 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %2, align 8, !dbg !943
  %26 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %25, i32 0, i32 0, !dbg !944
  %27 = load i8*, i8** %26, align 8, !dbg !944
  call void @notify_script_exec(%struct._notify_script* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 %24, i8* %27, i32 0), !dbg !945
  br label %28, !dbg !945

; <label>:28:                                     ; preds = %20, %17
  %29 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %2, align 8, !dbg !946
  call void @notify_group_fifo(%struct._vrrp_sgroup* %29), !dbg !947
  %30 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %2, align 8, !dbg !948
  call void @vrrp_sync_smtp_notifier(%struct._vrrp_sgroup* %30), !dbg !949
  ret void, !dbg !950
}

; Function Attrs: nounwind uwtable
define internal %struct._notify_script* @get_gscript(%struct._vrrp_sgroup*, i32) #0 !dbg !951 {
  %3 = alloca %struct._notify_script*, align 8
  %4 = alloca %struct._vrrp_sgroup*, align 8
  %5 = alloca i32, align 4
  store %struct._vrrp_sgroup* %0, %struct._vrrp_sgroup** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._vrrp_sgroup** %4, metadata !954, metadata !496), !dbg !955
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !956, metadata !496), !dbg !957
  %6 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %4, align 8, !dbg !958
  %7 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %6, i32 0, i32 11, !dbg !960
  %8 = load i8, i8* %7, align 8, !dbg !960
  %9 = trunc i8 %8 to i1, !dbg !960
  br i1 %9, label %11, label %10, !dbg !961

; <label>:10:                                     ; preds = %2
  store %struct._notify_script* null, %struct._notify_script** %3, align 8, !dbg !962
  br label %40, !dbg !962

; <label>:11:                                     ; preds = %2
  %12 = load i32, i32* %5, align 4, !dbg !963
  %13 = icmp eq i32 %12, 1, !dbg !965
  br i1 %13, label %14, label %18, !dbg !966

; <label>:14:                                     ; preds = %11
  %15 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %4, align 8, !dbg !967
  %16 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %15, i32 0, i32 12, !dbg !968
  %17 = load %struct._notify_script*, %struct._notify_script** %16, align 8, !dbg !968
  store %struct._notify_script* %17, %struct._notify_script** %3, align 8, !dbg !969
  br label %40, !dbg !969

; <label>:18:                                     ; preds = %11
  %19 = load i32, i32* %5, align 4, !dbg !970
  %20 = icmp eq i32 %19, 2, !dbg !972
  br i1 %20, label %21, label %25, !dbg !973

; <label>:21:                                     ; preds = %18
  %22 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %4, align 8, !dbg !974
  %23 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %22, i32 0, i32 13, !dbg !975
  %24 = load %struct._notify_script*, %struct._notify_script** %23, align 8, !dbg !975
  store %struct._notify_script* %24, %struct._notify_script** %3, align 8, !dbg !976
  br label %40, !dbg !976

; <label>:25:                                     ; preds = %18
  %26 = load i32, i32* %5, align 4, !dbg !977
  %27 = icmp eq i32 %26, 3, !dbg !979
  br i1 %27, label %28, label %32, !dbg !980

; <label>:28:                                     ; preds = %25
  %29 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %4, align 8, !dbg !981
  %30 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %29, i32 0, i32 14, !dbg !982
  %31 = load %struct._notify_script*, %struct._notify_script** %30, align 8, !dbg !982
  store %struct._notify_script* %31, %struct._notify_script** %3, align 8, !dbg !983
  br label %40, !dbg !983

; <label>:32:                                     ; preds = %25
  %33 = load i32, i32* %5, align 4, !dbg !984
  %34 = icmp eq i32 %33, 98, !dbg !986
  br i1 %34, label %35, label %39, !dbg !987

; <label>:35:                                     ; preds = %32
  %36 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %4, align 8, !dbg !988
  %37 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %36, i32 0, i32 15, !dbg !989
  %38 = load %struct._notify_script*, %struct._notify_script** %37, align 8, !dbg !989
  store %struct._notify_script* %38, %struct._notify_script** %3, align 8, !dbg !990
  br label %40, !dbg !990

; <label>:39:                                     ; preds = %32
  store %struct._notify_script* null, %struct._notify_script** %3, align 8, !dbg !991
  br label %40, !dbg !991

; <label>:40:                                     ; preds = %39, %35, %28, %21, %14, %10
  %41 = load %struct._notify_script*, %struct._notify_script** %3, align 8, !dbg !992
  ret %struct._notify_script* %41, !dbg !992
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._notify_script* @get_ggscript(%struct._vrrp_sgroup*) #3 !dbg !993 {
  %2 = alloca %struct._vrrp_sgroup*, align 8
  store %struct._vrrp_sgroup* %0, %struct._vrrp_sgroup** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vrrp_sgroup** %2, metadata !996, metadata !496), !dbg !997
  %3 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %2, align 8, !dbg !998
  %4 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %3, i32 0, i32 16, !dbg !999
  %5 = load %struct._notify_script*, %struct._notify_script** %4, align 8, !dbg !999
  ret %struct._notify_script* %5, !dbg !1000
}

; Function Attrs: nounwind uwtable
define internal void @notify_group_fifo(%struct._vrrp_sgroup*) #0 !dbg !1001 {
  %2 = alloca %struct._vrrp_sgroup*, align 8
  store %struct._vrrp_sgroup* %0, %struct._vrrp_sgroup** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vrrp_sgroup** %2, metadata !1006, metadata !496), !dbg !1007
  %3 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %2, align 8, !dbg !1008
  %4 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %3, i32 0, i32 0, !dbg !1009
  %5 = load i8*, i8** %4, align 8, !dbg !1009
  %6 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %2, align 8, !dbg !1010
  %7 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %6, i32 0, i32 5, !dbg !1011
  %8 = load i32, i32* %7, align 8, !dbg !1011
  call void @notify_fifo(i8* %5, i32 %8, i1 zeroext true, i8 zeroext 0), !dbg !1012
  ret void, !dbg !1013
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_sync_smtp_notifier(%struct._vrrp_sgroup*) #0 !dbg !1014 {
  %2 = alloca %struct._vrrp_sgroup*, align 8
  store %struct._vrrp_sgroup* %0, %struct._vrrp_sgroup** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vrrp_sgroup** %2, metadata !1015, metadata !496), !dbg !1016
  %3 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %2, align 8, !dbg !1017
  %4 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %3, i32 0, i32 17, !dbg !1019
  %5 = load i32, i32* %4, align 8, !dbg !1019
  %6 = icmp ne i32 %5, 0, !dbg !1017
  br i1 %6, label %7, label %67, !dbg !1020

; <label>:7:                                      ; preds = %1
  %8 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1021
  %9 = getelementptr inbounds %struct._data, %struct._data* %8, i32 0, i32 12, !dbg !1022
  %10 = load i8, i8* %9, align 1, !dbg !1022
  %11 = trunc i8 %10 to i1, !dbg !1022
  br i1 %11, label %12, label %17, !dbg !1023

; <label>:12:                                     ; preds = %7
  %13 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %2, align 8, !dbg !1024
  %14 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %13, i32 0, i32 5, !dbg !1026
  %15 = load i32, i32* %14, align 8, !dbg !1026
  %16 = icmp ne i32 %15, 3, !dbg !1027
  br i1 %16, label %17, label %67, !dbg !1028

; <label>:17:                                     ; preds = %12, %7
  %18 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %2, align 8, !dbg !1029
  %19 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %18, i32 0, i32 18, !dbg !1030
  %20 = load i32, i32* %19, align 4, !dbg !1030
  %21 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %2, align 8, !dbg !1031
  %22 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %21, i32 0, i32 5, !dbg !1032
  %23 = load i32, i32* %22, align 8, !dbg !1032
  %24 = icmp ne i32 %20, %23, !dbg !1033
  br i1 %24, label %25, label %67, !dbg !1034

; <label>:25:                                     ; preds = %17
  %26 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %2, align 8, !dbg !1036
  %27 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %26, i32 0, i32 5, !dbg !1039
  %28 = load i32, i32* %27, align 8, !dbg !1039
  %29 = icmp eq i32 %28, 2, !dbg !1040
  br i1 %29, label %30, label %33, !dbg !1041

; <label>:30:                                     ; preds = %25
  %31 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %2, align 8, !dbg !1042
  %32 = bitcast %struct._vrrp_sgroup* %31 to i8*, !dbg !1042
  call void @smtp_alert(i32 3, i8* %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.17, i32 0, i32 0)), !dbg !1043
  br label %61, !dbg !1043

; <label>:33:                                     ; preds = %25
  %34 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %2, align 8, !dbg !1044
  %35 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %34, i32 0, i32 5, !dbg !1046
  %36 = load i32, i32* %35, align 8, !dbg !1046
  %37 = icmp eq i32 %36, 1, !dbg !1047
  br i1 %37, label %38, label %41, !dbg !1048

; <label>:38:                                     ; preds = %33
  %39 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %2, align 8, !dbg !1049
  %40 = bitcast %struct._vrrp_sgroup* %39 to i8*, !dbg !1049
  call void @smtp_alert(i32 3, i8* %40, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.18, i32 0, i32 0)), !dbg !1050
  br label %60, !dbg !1050

; <label>:41:                                     ; preds = %33
  %42 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %2, align 8, !dbg !1051
  %43 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %42, i32 0, i32 5, !dbg !1053
  %44 = load i32, i32* %43, align 8, !dbg !1053
  %45 = icmp eq i32 %44, 3, !dbg !1054
  br i1 %45, label %46, label %49, !dbg !1055

; <label>:46:                                     ; preds = %41
  %47 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %2, align 8, !dbg !1056
  %48 = bitcast %struct._vrrp_sgroup* %47 to i8*, !dbg !1056
  call void @smtp_alert(i32 3, i8* %48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.19, i32 0, i32 0)), !dbg !1057
  br label %59, !dbg !1057

; <label>:49:                                     ; preds = %41
  %50 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %2, align 8, !dbg !1058
  %51 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %50, i32 0, i32 5, !dbg !1060
  %52 = load i32, i32* %51, align 8, !dbg !1060
  %53 = icmp eq i32 %52, 98, !dbg !1061
  br i1 %53, label %54, label %57, !dbg !1062

; <label>:54:                                     ; preds = %49
  %55 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %2, align 8, !dbg !1063
  %56 = bitcast %struct._vrrp_sgroup* %55 to i8*, !dbg !1063
  call void @smtp_alert(i32 3, i8* %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.20, i32 0, i32 0)), !dbg !1064
  br label %58, !dbg !1064

; <label>:57:                                     ; preds = %49
  br label %67, !dbg !1065

; <label>:58:                                     ; preds = %54
  br label %59

; <label>:59:                                     ; preds = %58, %46
  br label %60

; <label>:60:                                     ; preds = %59, %38
  br label %61

; <label>:61:                                     ; preds = %60, %30
  %62 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %2, align 8, !dbg !1066
  %63 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %62, i32 0, i32 5, !dbg !1067
  %64 = load i32, i32* %63, align 8, !dbg !1067
  %65 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %2, align 8, !dbg !1068
  %66 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %65, i32 0, i32 18, !dbg !1069
  store i32 %64, i32* %66, align 4, !dbg !1070
  br label %67, !dbg !1071

; <label>:67:                                     ; preds = %57, %61, %17, %12, %1
  ret void, !dbg !1072
}

; Function Attrs: nounwind uwtable
define void @notify_shutdown() #0 !dbg !1073 {
  %1 = alloca %struct._element*, align 8
  %2 = alloca %struct._vrrp_t*, align 8
  %3 = alloca %struct._vrrp_sgroup*, align 8
  call void @llvm.dbg.declare(metadata %struct._element** %1, metadata !1076, metadata !496), !dbg !1078
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %2, metadata !1079, metadata !496), !dbg !1080
  call void @llvm.dbg.declare(metadata %struct._vrrp_sgroup** %3, metadata !1081, metadata !496), !dbg !1082
  %4 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1083
  %5 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %4, i32 0, i32 5, !dbg !1085
  %6 = load %struct._list*, %struct._list** %5, align 8, !dbg !1085
  %7 = icmp ne %struct._list* %6, null, !dbg !1086
  br i1 %7, label %8, label %22, !dbg !1086

; <label>:8:                                      ; preds = %0
  %9 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1087
  %10 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %9, i32 0, i32 5, !dbg !1089
  %11 = load %struct._list*, %struct._list** %10, align 8, !dbg !1089
  %12 = icmp ne %struct._list* %11, null, !dbg !1090
  br i1 %12, label %14, label %13, !dbg !1091

; <label>:13:                                     ; preds = %8
  br label %20, !dbg !1092

; <label>:14:                                     ; preds = %8
  %15 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1094
  %16 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %15, i32 0, i32 5, !dbg !1096
  %17 = load %struct._list*, %struct._list** %16, align 8, !dbg !1096
  %18 = getelementptr inbounds %struct._list, %struct._list* %17, i32 0, i32 0, !dbg !1097
  %19 = load %struct._element*, %struct._element** %18, align 8, !dbg !1097
  br label %20, !dbg !1098

; <label>:20:                                     ; preds = %14, %13
  %21 = phi %struct._element* [ null, %13 ], [ %19, %14 ], !dbg !1099
  br label %23, !dbg !1101

; <label>:22:                                     ; preds = %0
  br label %23, !dbg !1102

; <label>:23:                                     ; preds = %22, %20
  %24 = phi %struct._element* [ %21, %20 ], [ null, %22 ], !dbg !1104
  store %struct._element* %24, %struct._element** %1, align 8, !dbg !1106
  br label %25, !dbg !1107

; <label>:25:                                     ; preds = %39, %23
  %26 = load %struct._element*, %struct._element** %1, align 8, !dbg !1108
  %27 = icmp ne %struct._element* %26, null, !dbg !1111
  br i1 %27, label %28, label %33, !dbg !1112

; <label>:28:                                     ; preds = %25
  %29 = load %struct._element*, %struct._element** %1, align 8, !dbg !1113
  %30 = getelementptr inbounds %struct._element, %struct._element* %29, i32 0, i32 2, !dbg !1115
  %31 = load i8*, i8** %30, align 8, !dbg !1115
  %32 = bitcast i8* %31 to %struct._vrrp_t*, !dbg !1116
  store %struct._vrrp_t* %32, %struct._vrrp_t** %2, align 8, !dbg !1117
  br label %33

; <label>:33:                                     ; preds = %28, %25
  %34 = phi i1 [ false, %25 ], [ true, %28 ]
  br i1 %34, label %35, label %43, !dbg !1118

; <label>:35:                                     ; preds = %33
  %36 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !1120
  %37 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %36, i32 0, i32 55, !dbg !1122
  store i32 98, i32* %37, align 8, !dbg !1123
  %38 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !1124
  call void @send_instance_notifies(%struct._vrrp_t* %38), !dbg !1125
  br label %39, !dbg !1126

; <label>:39:                                     ; preds = %35
  %40 = load %struct._element*, %struct._element** %1, align 8, !dbg !1127
  %41 = getelementptr inbounds %struct._element, %struct._element* %40, i32 0, i32 0, !dbg !1129
  %42 = load %struct._element*, %struct._element** %41, align 8, !dbg !1129
  store %struct._element* %42, %struct._element** %1, align 8, !dbg !1130
  br label %25, !dbg !1131, !llvm.loop !1132

; <label>:43:                                     ; preds = %33
  %44 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1134
  %45 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %44, i32 0, i32 4, !dbg !1136
  %46 = load %struct._list*, %struct._list** %45, align 8, !dbg !1136
  %47 = icmp ne %struct._list* %46, null, !dbg !1137
  br i1 %47, label %48, label %62, !dbg !1137

; <label>:48:                                     ; preds = %43
  %49 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1138
  %50 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %49, i32 0, i32 4, !dbg !1140
  %51 = load %struct._list*, %struct._list** %50, align 8, !dbg !1140
  %52 = icmp ne %struct._list* %51, null, !dbg !1141
  br i1 %52, label %54, label %53, !dbg !1142

; <label>:53:                                     ; preds = %48
  br label %60, !dbg !1143

; <label>:54:                                     ; preds = %48
  %55 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1145
  %56 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %55, i32 0, i32 4, !dbg !1147
  %57 = load %struct._list*, %struct._list** %56, align 8, !dbg !1147
  %58 = getelementptr inbounds %struct._list, %struct._list* %57, i32 0, i32 0, !dbg !1148
  %59 = load %struct._element*, %struct._element** %58, align 8, !dbg !1148
  br label %60, !dbg !1149

; <label>:60:                                     ; preds = %54, %53
  %61 = phi %struct._element* [ null, %53 ], [ %59, %54 ], !dbg !1150
  br label %63, !dbg !1152

; <label>:62:                                     ; preds = %43
  br label %63, !dbg !1153

; <label>:63:                                     ; preds = %62, %60
  %64 = phi %struct._element* [ %61, %60 ], [ null, %62 ], !dbg !1155
  store %struct._element* %64, %struct._element** %1, align 8, !dbg !1157
  br label %65, !dbg !1158

; <label>:65:                                     ; preds = %79, %63
  %66 = load %struct._element*, %struct._element** %1, align 8, !dbg !1159
  %67 = icmp ne %struct._element* %66, null, !dbg !1162
  br i1 %67, label %68, label %73, !dbg !1163

; <label>:68:                                     ; preds = %65
  %69 = load %struct._element*, %struct._element** %1, align 8, !dbg !1164
  %70 = getelementptr inbounds %struct._element, %struct._element* %69, i32 0, i32 2, !dbg !1166
  %71 = load i8*, i8** %70, align 8, !dbg !1166
  %72 = bitcast i8* %71 to %struct._vrrp_sgroup*, !dbg !1167
  store %struct._vrrp_sgroup* %72, %struct._vrrp_sgroup** %3, align 8, !dbg !1168
  br label %73

; <label>:73:                                     ; preds = %68, %65
  %74 = phi i1 [ false, %65 ], [ true, %68 ]
  br i1 %74, label %75, label %83, !dbg !1169

; <label>:75:                                     ; preds = %73
  %76 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !1171
  %77 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %76, i32 0, i32 5, !dbg !1173
  store i32 98, i32* %77, align 8, !dbg !1174
  %78 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !1175
  call void @send_group_notifies(%struct._vrrp_sgroup* %78), !dbg !1176
  br label %79, !dbg !1177

; <label>:79:                                     ; preds = %75
  %80 = load %struct._element*, %struct._element** %1, align 8, !dbg !1178
  %81 = getelementptr inbounds %struct._element, %struct._element* %80, i32 0, i32 0, !dbg !1180
  %82 = load %struct._element*, %struct._element** %81, align 8, !dbg !1180
  store %struct._element* %82, %struct._element** %1, align 8, !dbg !1181
  br label %65, !dbg !1182, !llvm.loop !1183

; <label>:83:                                     ; preds = %73
  ret void, !dbg !1185
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare i8* @zalloc(i64) #2

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #5

declare i64 @write(i32, i8*, i64) #2

; Function Attrs: nounwind
declare void @free(i8*) #5

declare void @smtp_alert(i32, i8*, i8*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!130, !131}
!llvm.ident = !{!132}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !40, globals: !42)
!1 = !DIFile(filename: "[inter]keepalived--vrrp--vrrp_notify.o.i", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!2 = !{!3, !11, !32}
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
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !33, line: 57, size: 32, align: 32, elements: !34)
!33 = !DIFile(filename: "./../include/smtp.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!34 = !{!35, !36, !37, !38, !39}
!35 = !DIEnumerator(name: "SMTP_MSG_RS", value: 0)
!36 = !DIEnumerator(name: "SMTP_MSG_VS", value: 1)
!37 = !DIEnumerator(name: "SMTP_MSG_RS_SHUT", value: 2)
!38 = !DIEnumerator(name: "SMTP_MSG_VGROUP", value: 3)
!39 = !DIEnumerator(name: "SMTP_MSG_VRRP", value: 4)
!40 = !{!41}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!42 = !{!43}
!43 = distinct !DIGlobalVariable(name: "garp_delay", scope: !0, file: !44, line: 150, type: !45, isLocal: false, isDefinition: true, variable: %struct._list** @garp_delay)
!44 = !DIFile(filename: "./../include/vrrp_if.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !46, line: 31, baseType: !47)
!46 = !DIFile(filename: "../../lib/list.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_list", file: !46, line: 39, size: 320, align: 64, elements: !49)
!49 = !{!50, !57, !58, !60, !64}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !48, file: !46, line: 40, baseType: !51, size: 64, align: 64)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_element", file: !46, line: 33, size: 192, align: 64, elements: !53)
!53 = !{!54, !55, !56}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !52, file: !46, line: 34, baseType: !51, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !52, file: !46, line: 35, baseType: !51, size: 64, align: 64, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !52, file: !46, line: 36, baseType: !41, size: 64, align: 64, offset: 128)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !48, file: !46, line: 41, baseType: !51, size: 64, align: 64, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !48, file: !46, line: 42, baseType: !59, size: 32, align: 32, offset: 128)
!59 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !48, file: !46, line: 43, baseType: !61, size: 64, align: 64, offset: 192)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, align: 64)
!62 = !DISubroutineType(types: !63)
!63 = !{null, !41}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "dump", scope: !48, file: !46, line: 44, baseType: !65, size: 64, align: 64, offset: 256)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!66 = !DISubroutineType(types: !67)
!67 = !{null, !68, !41}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !70, line: 48, baseType: !71)
!70 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !72, line: 241, size: 1728, align: 64, elements: !73)
!72 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!73 = !{!74, !76, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !97, !98, !99, !100, !104, !106, !108, !112, !115, !117, !118, !119, !120, !121, !125, !126}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !71, file: !72, line: 242, baseType: !75, size: 32, align: 32)
!75 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !71, file: !72, line: 247, baseType: !77, size: 64, align: 64, offset: 64)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64, align: 64)
!78 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !71, file: !72, line: 248, baseType: !77, size: 64, align: 64, offset: 128)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !71, file: !72, line: 249, baseType: !77, size: 64, align: 64, offset: 192)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !71, file: !72, line: 250, baseType: !77, size: 64, align: 64, offset: 256)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !71, file: !72, line: 251, baseType: !77, size: 64, align: 64, offset: 320)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !71, file: !72, line: 252, baseType: !77, size: 64, align: 64, offset: 384)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !71, file: !72, line: 253, baseType: !77, size: 64, align: 64, offset: 448)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !71, file: !72, line: 254, baseType: !77, size: 64, align: 64, offset: 512)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !71, file: !72, line: 256, baseType: !77, size: 64, align: 64, offset: 576)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !71, file: !72, line: 257, baseType: !77, size: 64, align: 64, offset: 640)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !71, file: !72, line: 258, baseType: !77, size: 64, align: 64, offset: 704)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !71, file: !72, line: 260, baseType: !90, size: 64, align: 64, offset: 768)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64, align: 64)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !72, line: 156, size: 192, align: 64, elements: !92)
!92 = !{!93, !94, !96}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !91, file: !72, line: 157, baseType: !90, size: 64, align: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !91, file: !72, line: 158, baseType: !95, size: 64, align: 64, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !91, file: !72, line: 162, baseType: !75, size: 32, align: 32, offset: 128)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !71, file: !72, line: 262, baseType: !95, size: 64, align: 64, offset: 832)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !71, file: !72, line: 264, baseType: !75, size: 32, align: 32, offset: 896)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !71, file: !72, line: 268, baseType: !75, size: 32, align: 32, offset: 928)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !71, file: !72, line: 270, baseType: !101, size: 64, align: 64, offset: 960)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !102, line: 131, baseType: !103)
!102 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!103 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !71, file: !72, line: 274, baseType: !105, size: 16, align: 16, offset: 1024)
!105 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !71, file: !72, line: 275, baseType: !107, size: 8, align: 8, offset: 1040)
!107 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !71, file: !72, line: 276, baseType: !109, size: 8, align: 8, offset: 1048)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 8, align: 8, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 1)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !71, file: !72, line: 280, baseType: !113, size: 64, align: 64, offset: 1088)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64, align: 64)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !72, line: 150, baseType: null)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !71, file: !72, line: 289, baseType: !116, size: 64, align: 64, offset: 1152)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !102, line: 132, baseType: !103)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !71, file: !72, line: 297, baseType: !41, size: 64, align: 64, offset: 1216)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !71, file: !72, line: 298, baseType: !41, size: 64, align: 64, offset: 1280)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !71, file: !72, line: 299, baseType: !41, size: 64, align: 64, offset: 1344)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !71, file: !72, line: 300, baseType: !41, size: 64, align: 64, offset: 1408)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !71, file: !72, line: 302, baseType: !122, size: 64, align: 64, offset: 1472)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !123, line: 216, baseType: !124)
!123 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!124 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !71, file: !72, line: 303, baseType: !75, size: 32, align: 32, offset: 1536)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !71, file: !72, line: 305, baseType: !127, size: 160, align: 8, offset: 1568)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 160, align: 8, elements: !128)
!128 = !{!129}
!129 = !DISubrange(count: 20)
!130 = !{i32 2, !"Dwarf Version", i32 4}
!131 = !{i32 2, !"Debug Info Version", i32 3}
!132 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!133 = distinct !DISubprogram(name: "send_event_notify", scope: !134, file: !134, line: 239, type: !135, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !494)
!134 = !DIFile(filename: "vrrp_notify.c", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!135 = !DISubroutineType(types: !136)
!136 = !{null, !137, !75}
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64, align: 64)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "vrrp_t", file: !4, line: 310, baseType: !139)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vrrp_t", file: !4, line: 183, size: 7040, align: 64, elements: !140)
!140 = !{!141, !144, !145, !195, !217, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !324, !325, !326, !327, !328, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !486, !493}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !139, file: !4, line: 184, baseType: !142, size: 16, align: 16)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !143, line: 28, baseType: !105)
!143 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!144 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !139, file: !4, line: 185, baseType: !77, size: 64, align: 64, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !139, file: !4, line: 186, baseType: !146, size: 64, align: 64, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64, align: 64)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "vrrp_sgroup_t", file: !4, line: 133, baseType: !148)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vrrp_sgroup", file: !4, line: 109, size: 1024, align: 64, elements: !149)
!149 = !{!150, !151, !161, !162, !163, !164, !165, !167, !168, !169, !170, !171, !172, !189, !190, !191, !192, !193, !194}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !148, file: !4, line: 110, baseType: !77, size: 64, align: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !148, file: !4, line: 111, baseType: !152, size: 64, align: 64, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64, align: 64)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "vector_t", file: !154, line: 34, baseType: !155)
!154 = !DIFile(filename: "../../lib/vector.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vector", file: !154, line: 30, size: 128, align: 64, elements: !156)
!156 = !{!157, !158, !159}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !155, file: !154, line: 31, baseType: !59, size: 32, align: 32)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !155, file: !154, line: 32, baseType: !59, size: 32, align: 32, offset: 32)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !155, file: !154, line: 33, baseType: !160, size: 64, align: 64, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "vrrp_instances", scope: !148, file: !4, line: 112, baseType: !45, size: 64, align: 64, offset: 128)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "num_member_fault", scope: !148, file: !4, line: 113, baseType: !59, size: 32, align: 32, offset: 192)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "num_member_init", scope: !148, file: !4, line: 114, baseType: !59, size: 32, align: 32, offset: 224)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !148, file: !4, line: 115, baseType: !75, size: 32, align: 32, offset: 256)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "sgroup_tracking_weight", scope: !148, file: !4, line: 116, baseType: !166, size: 8, align: 8, offset: 288)
!166 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "track_ifp", scope: !148, file: !4, line: 119, baseType: !45, size: 64, align: 64, offset: 320)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "track_script", scope: !148, file: !4, line: 120, baseType: !45, size: 64, align: 64, offset: 384)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "track_file", scope: !148, file: !4, line: 121, baseType: !45, size: 64, align: 64, offset: 448)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "track_bfd", scope: !148, file: !4, line: 122, baseType: !45, size: 64, align: 64, offset: 512)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "notify_exec", scope: !148, file: !4, line: 125, baseType: !166, size: 8, align: 8, offset: 576)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "script_backup", scope: !148, file: !4, line: 126, baseType: !173, size: 64, align: 64, offset: 640)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64, align: 64)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "notify_script_t", file: !175, line: 65, baseType: !176)
!175 = !DIFile(filename: "../../lib/notify.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_notify_script", file: !175, line: 59, size: 192, align: 64, elements: !177)
!177 = !{!178, !180, !181, !182, !186}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !176, file: !175, line: 60, baseType: !179, size: 64, align: 64)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64, align: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "num_args", scope: !176, file: !175, line: 61, baseType: !75, size: 32, align: 32, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !176, file: !175, line: 62, baseType: !75, size: 32, align: 32, offset: 96)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !176, file: !175, line: 63, baseType: !183, size: 32, align: 32, offset: 128)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !184, line: 240, baseType: !185)
!184 = !DIFile(filename: "/usr/include/unistd.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !102, line: 125, baseType: !59)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !176, file: !175, line: 64, baseType: !187, size: 32, align: 32, offset: 160)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !184, line: 235, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !102, line: 126, baseType: !59)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "script_master", scope: !148, file: !4, line: 127, baseType: !173, size: 64, align: 64, offset: 704)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "script_fault", scope: !148, file: !4, line: 128, baseType: !173, size: 64, align: 64, offset: 768)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "script_stop", scope: !148, file: !4, line: 129, baseType: !173, size: 64, align: 64, offset: 832)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "script", scope: !148, file: !4, line: 130, baseType: !173, size: 64, align: 64, offset: 896)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "smtp_alert", scope: !148, file: !4, line: 131, baseType: !75, size: 32, align: 32, offset: 960)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "last_email_state", scope: !148, file: !4, line: 132, baseType: !75, size: 32, align: 32, offset: 992)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !139, file: !4, line: 187, baseType: !196, size: 64, align: 64, offset: 192)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64, align: 64)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "vrrp_stats", file: !4, line: 169, baseType: !198)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vrrp_stats", file: !4, line: 136, size: 768, align: 64, elements: !199)
!199 = !{!200, !203, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "advert_rcvd", scope: !198, file: !4, line: 137, baseType: !201, size: 64, align: 64)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !202, line: 55, baseType: !124)
!202 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!203 = !DIDerivedType(tag: DW_TAG_member, name: "advert_sent", scope: !198, file: !4, line: 138, baseType: !204, size: 32, align: 32, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !202, line: 51, baseType: !59)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "become_master", scope: !198, file: !4, line: 140, baseType: !204, size: 32, align: 32, offset: 96)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "release_master", scope: !198, file: !4, line: 141, baseType: !204, size: 32, align: 32, offset: 128)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "packet_len_err", scope: !198, file: !4, line: 143, baseType: !201, size: 64, align: 64, offset: 192)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "advert_interval_err", scope: !198, file: !4, line: 144, baseType: !201, size: 64, align: 64, offset: 256)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "ip_ttl_err", scope: !198, file: !4, line: 145, baseType: !201, size: 64, align: 64, offset: 320)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "invalid_type_rcvd", scope: !198, file: !4, line: 146, baseType: !201, size: 64, align: 64, offset: 384)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "addr_list_err", scope: !198, file: !4, line: 147, baseType: !201, size: 64, align: 64, offset: 448)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "invalid_authtype", scope: !198, file: !4, line: 149, baseType: !204, size: 32, align: 32, offset: 512)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "authtype_mismatch", scope: !198, file: !4, line: 151, baseType: !204, size: 32, align: 32, offset: 544)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "auth_failure", scope: !198, file: !4, line: 152, baseType: !204, size: 32, align: 32, offset: 576)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "pri_zero_rcvd", scope: !198, file: !4, line: 155, baseType: !201, size: 64, align: 64, offset: 640)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "pri_zero_sent", scope: !198, file: !4, line: 156, baseType: !201, size: 64, align: 64, offset: 704)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "ifp", scope: !139, file: !4, line: 188, baseType: !218, size: 64, align: 64, offset: 256)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64, align: 64)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "interface_t", file: !44, line: 111, baseType: !220)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_interface", file: !44, line: 76, size: 1792, align: 64, elements: !221)
!221 = !{!222, !226, !228, !234, !253, !254, !255, !256, !257, !264, !265, !266, !267, !268, !269, !271, !272, !273, !274, !295, !296, !297, !298, !299, !300, !301, !302}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "ifname", scope: !220, file: !44, line: 77, baseType: !223, size: 128, align: 8)
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 128, align: 8, elements: !224)
!224 = !{!225}
!225 = !DISubrange(count: 16)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "ifindex", scope: !220, file: !44, line: 78, baseType: !227, size: 32, align: 32, offset: 128)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "ifindex_t", file: !44, line: 62, baseType: !204)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !220, file: !44, line: 79, baseType: !229, size: 32, align: 32, offset: 160)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !230, line: 31, size: 32, align: 32, elements: !231)
!230 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!231 = !{!232}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !229, file: !230, line: 33, baseType: !233, size: 32, align: 32)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !230, line: 30, baseType: !204)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !220, file: !44, line: 80, baseType: !235, size: 128, align: 32, offset: 192)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !230, line: 211, size: 128, align: 32, elements: !236)
!236 = !{!237}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !235, file: !230, line: 220, baseType: !238, size: 128, align: 32)
!238 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !235, file: !230, line: 213, size: 128, align: 32, elements: !239)
!239 = !{!240, !244, !249}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !238, file: !230, line: 215, baseType: !241, size: 128, align: 8)
!241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 128, align: 8, elements: !224)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !202, line: 48, baseType: !243)
!243 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !238, file: !230, line: 217, baseType: !245, size: 128, align: 16)
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 128, align: 16, elements: !247)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !202, line: 49, baseType: !105)
!247 = !{!248}
!248 = !DISubrange(count: 8)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !238, file: !230, line: 218, baseType: !250, size: 128, align: 32)
!250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 128, align: 32, elements: !251)
!251 = !{!252}
!252 = !DISubrange(count: 4)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "ifi_flags", scope: !220, file: !44, line: 81, baseType: !59, size: 32, align: 32, offset: 320)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "linkbeat_use_polling", scope: !220, file: !44, line: 82, baseType: !166, size: 8, align: 8, offset: 352)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !220, file: !44, line: 83, baseType: !204, size: 32, align: 32, offset: 384)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "hw_type", scope: !220, file: !44, line: 84, baseType: !105, size: 16, align: 16, offset: 416)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr", scope: !220, file: !44, line: 85, baseType: !258, size: 256, align: 8, offset: 432)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, size: 256, align: 8, elements: !262)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !260, line: 33, baseType: !261)
!260 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_char", file: !102, line: 30, baseType: !243)
!262 = !{!263}
!263 = !DISubrange(count: 32)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr_bcast", scope: !220, file: !44, line: 86, baseType: !258, size: 256, align: 8, offset: 688)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr_len", scope: !220, file: !44, line: 87, baseType: !122, size: 64, align: 64, offset: 960)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "lb_type", scope: !220, file: !44, line: 88, baseType: !75, size: 32, align: 32, offset: 1024)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "vmac", scope: !220, file: !44, line: 90, baseType: !166, size: 8, align: 8, offset: 1056)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "base_ifindex", scope: !220, file: !44, line: 91, baseType: !227, size: 32, align: 32, offset: 1088)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "base_ifp", scope: !220, file: !44, line: 92, baseType: !270, size: 64, align: 64, offset: 1152)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64, align: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master_ifindex", scope: !220, file: !44, line: 94, baseType: !227, size: 32, align: 32, offset: 1216)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master_ifp", scope: !220, file: !44, line: 96, baseType: !270, size: 64, align: 64, offset: 1280)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master", scope: !220, file: !44, line: 97, baseType: !166, size: 8, align: 8, offset: 1344)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "garp_delay", scope: !220, file: !44, line: 100, baseType: !275, size: 64, align: 64, offset: 1408)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64, align: 64)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "garp_delay_t", file: !44, line: 73, baseType: !277)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_garp_delay", file: !44, line: 65, size: 704, align: 64, elements: !278)
!278 = !{!279, !289, !290, !291, !292, !293, !294}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "garp_interval", scope: !277, file: !44, line: 66, baseType: !280, size: 128, align: 64)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "timeval_t", file: !281, line: 31, baseType: !282)
!281 = !DIFile(filename: "../../lib/timer.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !283, line: 30, size: 128, align: 64, elements: !284)
!283 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!284 = !{!285, !287}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !282, file: !283, line: 32, baseType: !286, size: 64, align: 64)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !102, line: 139, baseType: !103)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !282, file: !283, line: 33, baseType: !288, size: 64, align: 64, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !102, line: 141, baseType: !103)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "have_garp_interval", scope: !277, file: !44, line: 67, baseType: !166, size: 8, align: 8, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "gna_interval", scope: !277, file: !44, line: 68, baseType: !280, size: 128, align: 64, offset: 192)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "have_gna_interval", scope: !277, file: !44, line: 69, baseType: !166, size: 8, align: 8, offset: 320)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "garp_next_time", scope: !277, file: !44, line: 70, baseType: !280, size: 128, align: 64, offset: 384)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "gna_next_time", scope: !277, file: !44, line: 71, baseType: !280, size: 128, align: 64, offset: 512)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "aggregation_group", scope: !277, file: !44, line: 72, baseType: !75, size: 32, align: 32, offset: 640)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "gna_router", scope: !220, file: !44, line: 101, baseType: !166, size: 8, align: 8, offset: 1472)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_config", scope: !220, file: !44, line: 102, baseType: !75, size: 32, align: 32, offset: 1504)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_ignore_value", scope: !220, file: !44, line: 103, baseType: !204, size: 32, align: 32, offset: 1536)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_filter_value", scope: !220, file: !44, line: 104, baseType: !204, size: 32, align: 32, offset: 1568)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "reset_promote_secondaries", scope: !220, file: !44, line: 105, baseType: !204, size: 32, align: 32, offset: 1600)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "rp_filter", scope: !220, file: !44, line: 107, baseType: !59, size: 32, align: 32, offset: 1632)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "promote_secondaries_already_set", scope: !220, file: !44, line: 109, baseType: !166, size: 8, align: 8, offset: 1664)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "tracking_vrrp", scope: !220, file: !44, line: 110, baseType: !45, size: 64, align: 64, offset: 1728)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "dont_track_primary", scope: !139, file: !4, line: 189, baseType: !166, size: 8, align: 8, offset: 320)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "linkbeat_use_polling", scope: !139, file: !4, line: 190, baseType: !166, size: 8, align: 8, offset: 328)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "skip_check_adv_addr", scope: !139, file: !4, line: 191, baseType: !166, size: 8, align: 8, offset: 336)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "strict_mode", scope: !139, file: !4, line: 193, baseType: !59, size: 32, align: 32, offset: 352)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "vmac_flags", scope: !139, file: !4, line: 195, baseType: !124, size: 64, align: 64, offset: 384)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "vmac_ifname", scope: !139, file: !4, line: 196, baseType: !223, size: 128, align: 8, offset: 448)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "track_ifp", scope: !139, file: !4, line: 198, baseType: !45, size: 64, align: 64, offset: 576)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "track_script", scope: !139, file: !4, line: 199, baseType: !45, size: 64, align: 64, offset: 640)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "track_file", scope: !139, file: !4, line: 200, baseType: !45, size: 64, align: 64, offset: 704)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "num_script_if_fault", scope: !139, file: !4, line: 204, baseType: !59, size: 32, align: 32, offset: 768)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "num_script_init", scope: !139, file: !4, line: 205, baseType: !59, size: 32, align: 32, offset: 800)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "saddr", scope: !139, file: !4, line: 206, baseType: !315, size: 1024, align: 64, offset: 832)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_storage", file: !316, line: 166, size: 1024, align: 64, elements: !317)
!316 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!317 = !{!318, !319, !323}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "ss_family", scope: !315, file: !316, line: 168, baseType: !142, size: 16, align: 16)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_padding", scope: !315, file: !316, line: 169, baseType: !320, size: 944, align: 8, offset: 16)
!320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 944, align: 8, elements: !321)
!321 = !{!322}
!322 = !DISubrange(count: 118)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_align", scope: !315, file: !316, line: 170, baseType: !124, size: 64, align: 64, offset: 960)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "saddr_from_config", scope: !139, file: !4, line: 207, baseType: !166, size: 8, align: 8, offset: 1856)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "track_saddr", scope: !139, file: !4, line: 208, baseType: !166, size: 8, align: 8, offset: 1864)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "pkt_saddr", scope: !139, file: !4, line: 209, baseType: !315, size: 1024, align: 64, offset: 1920)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "unicast_peer", scope: !139, file: !4, line: 210, baseType: !45, size: 64, align: 64, offset: 2944)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "unicast_chksum_compat", scope: !139, file: !4, line: 212, baseType: !329, size: 32, align: 32, offset: 3008)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "chksum_compatibility_t", file: !4, line: 179, baseType: !3)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "master_saddr", scope: !139, file: !4, line: 214, baseType: !315, size: 1024, align: 64, offset: 3072)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "master_priority", scope: !139, file: !4, line: 215, baseType: !242, size: 8, align: 8, offset: 4096)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "last_transition", scope: !139, file: !4, line: 216, baseType: !280, size: 128, align: 64, offset: 4160)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "garp_delay", scope: !139, file: !4, line: 217, baseType: !59, size: 32, align: 32, offset: 4288)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "garp_refresh", scope: !139, file: !4, line: 218, baseType: !280, size: 128, align: 64, offset: 4352)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "garp_refresh_timer", scope: !139, file: !4, line: 219, baseType: !280, size: 128, align: 64, offset: 4480)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "garp_rep", scope: !139, file: !4, line: 220, baseType: !59, size: 32, align: 32, offset: 4608)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "garp_refresh_rep", scope: !139, file: !4, line: 221, baseType: !59, size: 32, align: 32, offset: 4640)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "garp_lower_prio_delay", scope: !139, file: !4, line: 222, baseType: !59, size: 32, align: 32, offset: 4672)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "garp_pending", scope: !139, file: !4, line: 223, baseType: !166, size: 8, align: 8, offset: 4704)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "gna_pending", scope: !139, file: !4, line: 224, baseType: !166, size: 8, align: 8, offset: 4712)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "garp_lower_prio_rep", scope: !139, file: !4, line: 225, baseType: !59, size: 32, align: 32, offset: 4736)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "lower_prio_no_advert", scope: !139, file: !4, line: 226, baseType: !59, size: 32, align: 32, offset: 4768)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "higher_prio_send_advert", scope: !139, file: !4, line: 227, baseType: !59, size: 32, align: 32, offset: 4800)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "vrid", scope: !139, file: !4, line: 228, baseType: !242, size: 8, align: 8, offset: 4832)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "base_priority", scope: !139, file: !4, line: 229, baseType: !242, size: 8, align: 8, offset: 4840)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "effective_priority", scope: !139, file: !4, line: 230, baseType: !242, size: 8, align: 8, offset: 4848)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "total_priority", scope: !139, file: !4, line: 231, baseType: !75, size: 32, align: 32, offset: 4864)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "vipset", scope: !139, file: !4, line: 233, baseType: !166, size: 8, align: 8, offset: 4896)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "vip", scope: !139, file: !4, line: 234, baseType: !45, size: 64, align: 64, offset: 4928)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "evip", scope: !139, file: !4, line: 235, baseType: !45, size: 64, align: 64, offset: 4992)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "promote_secondaries", scope: !139, file: !4, line: 239, baseType: !166, size: 8, align: 8, offset: 5056)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "evip_add_ipv6", scope: !139, file: !4, line: 240, baseType: !166, size: 8, align: 8, offset: 5064)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "vroutes", scope: !139, file: !4, line: 241, baseType: !45, size: 64, align: 64, offset: 5120)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "vrules", scope: !139, file: !4, line: 242, baseType: !45, size: 64, align: 64, offset: 5184)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "adver_int", scope: !139, file: !4, line: 243, baseType: !59, size: 32, align: 32, offset: 5248)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "master_adver_int", scope: !139, file: !4, line: 244, baseType: !59, size: 32, align: 32, offset: 5280)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "accept", scope: !139, file: !4, line: 249, baseType: !59, size: 32, align: 32, offset: 5312)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_rx_buf_size", scope: !139, file: !4, line: 252, baseType: !122, size: 64, align: 64, offset: 5376)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "iptable_rules_set", scope: !139, file: !4, line: 254, baseType: !166, size: 8, align: 8, offset: 5440)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "nopreempt", scope: !139, file: !4, line: 255, baseType: !166, size: 8, align: 8, offset: 5448)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_delay", scope: !139, file: !4, line: 256, baseType: !124, size: 64, align: 64, offset: 5504)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_time", scope: !139, file: !4, line: 260, baseType: !280, size: 128, align: 64, offset: 5568)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !139, file: !4, line: 261, baseType: !75, size: 32, align: 32, offset: 5696)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "wantstate", scope: !139, file: !4, line: 265, baseType: !75, size: 32, align: 32, offset: 5728)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "reload_master", scope: !139, file: !4, line: 266, baseType: !166, size: 8, align: 8, offset: 5760)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "sockets", scope: !139, file: !4, line: 267, baseType: !367, size: 64, align: 64, offset: 5824)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64, align: 64)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "sock_t", file: !369, line: 50, baseType: !370)
!369 = !DIFile(filename: "./../include/vrrp_sock.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sock", file: !369, line: 40, size: 1344, align: 64, elements: !371)
!371 = !{!372, !373, !374, !375, !376, !377, !378, !379, !380}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !370, file: !369, line: 41, baseType: !142, size: 16, align: 16)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "saddr", scope: !370, file: !369, line: 42, baseType: !315, size: 1024, align: 64, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "proto", scope: !370, file: !369, line: 43, baseType: !75, size: 32, align: 32, offset: 1088)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "ifindex", scope: !370, file: !369, line: 44, baseType: !227, size: 32, align: 32, offset: 1120)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "unicast", scope: !370, file: !369, line: 45, baseType: !166, size: 8, align: 8, offset: 1152)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "fd_in", scope: !370, file: !369, line: 46, baseType: !75, size: 32, align: 32, offset: 1184)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "fd_out", scope: !370, file: !369, line: 47, baseType: !75, size: 32, align: 32, offset: 1216)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "rx_buf_size", scope: !370, file: !369, line: 48, baseType: !75, size: 32, align: 32, offset: 1248)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !370, file: !369, line: 49, baseType: !381, size: 64, align: 64, offset: 1280)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64, align: 64)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_t", file: !12, line: 99, baseType: !383)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread", file: !12, line: 78, size: 768, align: 64, elements: !384)
!384 = !{!385, !386, !388, !441, !446, !447, !448, !460, !462}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !383, file: !12, line: 79, baseType: !124, size: 64, align: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !383, file: !12, line: 80, baseType: !387, size: 32, align: 32, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_type_t", file: !12, line: 63, baseType: !11)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !383, file: !12, line: 81, baseType: !389, size: 64, align: 64, offset: 128)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64, align: 64)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_master", file: !12, line: 112, size: 1280, align: 64, elements: !391)
!391 = !{!392, !404, !405, !406, !407, !415, !416, !417, !418, !419, !422, !433, !434, !435, !436, !437, !438, !439, !440}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !390, file: !12, line: 113, baseType: !393, size: 64, align: 64)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "rb_root_t", file: !394, line: 109, baseType: !395)
!394 = !DIFile(filename: "../../lib/rbtree.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !394, line: 106, size: 64, align: 64, elements: !396)
!396 = !{!397}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !395, file: !394, line: 108, baseType: !398, size: 64, align: 64)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64, align: 64)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !394, line: 97, size: 192, align: 64, elements: !400)
!400 = !{!401, !402, !403}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "rb_parent_color", scope: !399, file: !394, line: 99, baseType: !124, size: 64, align: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !399, file: !394, line: 102, baseType: !398, size: 64, align: 64, offset: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !399, file: !394, line: 103, baseType: !398, size: 64, align: 64, offset: 128)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !390, file: !12, line: 114, baseType: !393, size: 64, align: 64, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !390, file: !12, line: 115, baseType: !393, size: 64, align: 64, offset: 128)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !390, file: !12, line: 116, baseType: !393, size: 64, align: 64, offset: 192)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !390, file: !12, line: 117, baseType: !408, size: 128, align: 64, offset: 256)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "list_head_t", file: !409, line: 62, baseType: !410)
!409 = !DIFile(filename: "../../lib/list_head.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !409, line: 60, size: 128, align: 64, elements: !411)
!411 = !{!412, !414}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !410, file: !409, line: 61, baseType: !413, size: 64, align: 64)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64, align: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !410, file: !409, line: 61, baseType: !413, size: 64, align: 64, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !390, file: !12, line: 121, baseType: !408, size: 128, align: 64, offset: 384)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "unuse", scope: !390, file: !12, line: 122, baseType: !408, size: 128, align: 64, offset: 512)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "child_pid_index", scope: !390, file: !12, line: 124, baseType: !45, size: 64, align: 64, offset: 640)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "io_events", scope: !390, file: !12, line: 127, baseType: !393, size: 64, align: 64, offset: 704)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_events", scope: !390, file: !12, line: 128, baseType: !420, size: 64, align: 64, offset: 768)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64, align: 64)
!421 = !DICompositeType(tag: DW_TAG_structure_type, name: "epoll_event", file: !12, line: 128, flags: DIFlagFwdDecl)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "current_event", scope: !390, file: !12, line: 129, baseType: !423, size: 64, align: 64, offset: 832)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64, align: 64)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_event_t", file: !12, line: 109, baseType: !425)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_event", file: !12, line: 102, size: 448, align: 64, elements: !426)
!426 = !{!427, !428, !429, !430, !431}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !425, file: !12, line: 103, baseType: !381, size: 64, align: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !425, file: !12, line: 104, baseType: !381, size: 64, align: 64, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !425, file: !12, line: 105, baseType: !124, size: 64, align: 64, offset: 128)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !425, file: !12, line: 106, baseType: !75, size: 32, align: 32, offset: 192)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !425, file: !12, line: 108, baseType: !432, size: 192, align: 64, offset: 256)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "rb_node_t", file: !394, line: 104, baseType: !399)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_size", scope: !390, file: !12, line: 130, baseType: !59, size: 32, align: 32, offset: 896)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_count", scope: !390, file: !12, line: 131, baseType: !59, size: 32, align: 32, offset: 928)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_fd", scope: !390, file: !12, line: 132, baseType: !75, size: 32, align: 32, offset: 960)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "timer_fd", scope: !390, file: !12, line: 135, baseType: !75, size: 32, align: 32, offset: 992)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "timer_thread", scope: !390, file: !12, line: 136, baseType: !381, size: 64, align: 64, offset: 1024)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !390, file: !12, line: 146, baseType: !124, size: 64, align: 64, offset: 1088)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !390, file: !12, line: 147, baseType: !124, size: 64, align: 64, offset: 1152)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_timer_running", scope: !390, file: !12, line: 148, baseType: !166, size: 8, align: 8, offset: 1216)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !383, file: !12, line: 82, baseType: !442, size: 64, align: 64, offset: 192)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64, align: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{!75, !445}
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64, align: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !383, file: !12, line: 83, baseType: !41, size: 64, align: 64, offset: 256)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "sands", scope: !383, file: !12, line: 84, baseType: !280, size: 128, align: 64, offset: 320)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !383, file: !12, line: 92, baseType: !449, size: 64, align: 32, offset: 448)
!449 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !383, file: !12, line: 85, size: 64, align: 32, elements: !450)
!450 = !{!451, !452, !453}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !449, file: !12, line: 86, baseType: !75, size: 32, align: 32)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !449, file: !12, line: 87, baseType: !75, size: 32, align: 32)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !449, file: !12, line: 91, baseType: !454, size: 64, align: 32)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !449, file: !12, line: 88, size: 64, align: 32, elements: !455)
!455 = !{!456, !459}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !454, file: !12, line: 89, baseType: !457, size: 32, align: 32)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !184, line: 263, baseType: !458)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !102, line: 133, baseType: !75)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !454, file: !12, line: 90, baseType: !75, size: 32, align: 32, offset: 32)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !383, file: !12, line: 93, baseType: !461, size: 64, align: 64, offset: 512)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64, align: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, scope: !383, file: !12, line: 95, baseType: !463, size: 192, align: 64, offset: 576)
!463 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !383, file: !12, line: 95, size: 192, align: 64, elements: !464)
!464 = !{!465, !466}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !463, file: !12, line: 96, baseType: !432, size: 192, align: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !463, file: !12, line: 97, baseType: !408, size: 128, align: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !139, file: !4, line: 269, baseType: !75, size: 32, align: 32, offset: 5888)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !139, file: !4, line: 271, baseType: !75, size: 32, align: 32, offset: 5920)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "smtp_alert", scope: !139, file: !4, line: 274, baseType: !75, size: 32, align: 32, offset: 5952)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "last_email_state", scope: !139, file: !4, line: 275, baseType: !75, size: 32, align: 32, offset: 5984)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "notify_exec", scope: !139, file: !4, line: 276, baseType: !166, size: 8, align: 8, offset: 6016)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "script_backup", scope: !139, file: !4, line: 277, baseType: !173, size: 64, align: 64, offset: 6080)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "script_master", scope: !139, file: !4, line: 278, baseType: !173, size: 64, align: 64, offset: 6144)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "script_fault", scope: !139, file: !4, line: 279, baseType: !173, size: 64, align: 64, offset: 6208)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "script_stop", scope: !139, file: !4, line: 280, baseType: !173, size: 64, align: 64, offset: 6272)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "script_master_rx_lower_pri", scope: !139, file: !4, line: 281, baseType: !173, size: 64, align: 64, offset: 6336)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "script", scope: !139, file: !4, line: 282, baseType: !173, size: 64, align: 64, offset: 6400)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "ms_down_timer", scope: !139, file: !4, line: 285, baseType: !204, size: 32, align: 32, offset: 6464)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "sands", scope: !139, file: !4, line: 286, baseType: !280, size: 128, align: 64, offset: 6528)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "send_buffer", scope: !139, file: !4, line: 289, baseType: !77, size: 64, align: 64, offset: 6656)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "send_buffer_size", scope: !139, file: !4, line: 290, baseType: !122, size: 64, align: 64, offset: 6720)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "ipv4_csum", scope: !139, file: !4, line: 291, baseType: !204, size: 32, align: 32, offset: 6784)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "auth_type", scope: !139, file: !4, line: 295, baseType: !242, size: 8, align: 8, offset: 6816)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "auth_data", scope: !139, file: !4, line: 296, baseType: !485, size: 64, align: 8, offset: 6824)
!485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 64, align: 8, elements: !247)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "ipsecah_counter", scope: !139, file: !4, line: 299, baseType: !487, size: 64, align: 32, offset: 6912)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "seq_counter_t", file: !488, line: 58, baseType: !489)
!488 = !DIFile(filename: "./../include/vrrp_ipsecah.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_seq_counter", file: !488, line: 55, size: 64, align: 32, elements: !490)
!490 = !{!491, !492}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "cycle", scope: !489, file: !488, line: 56, baseType: !166, size: 8, align: 8)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "seq_number", scope: !489, file: !488, line: 57, baseType: !204, size: 32, align: 32, offset: 32)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "ip_id", scope: !139, file: !4, line: 309, baseType: !75, size: 32, align: 32, offset: 6976)
!494 = !{}
!495 = !DILocalVariable(name: "vrrp", arg: 1, scope: !133, file: !134, line: 239, type: !137)
!496 = !DIExpression()
!497 = !DILocation(line: 239, column: 27, scope: !133)
!498 = !DILocalVariable(name: "event", arg: 2, scope: !133, file: !134, line: 239, type: !75)
!499 = !DILocation(line: 239, column: 37, scope: !133)
!500 = !DILocalVariable(name: "script", scope: !133, file: !134, line: 241, type: !173)
!501 = !DILocation(line: 241, column: 19, scope: !133)
!502 = !DILocation(line: 241, column: 28, scope: !133)
!503 = !DILocation(line: 241, column: 34, scope: !133)
!504 = !DILocation(line: 244, column: 6, scope: !505)
!505 = distinct !DILexicalBlock(scope: !133, file: !134, line: 244, column: 6)
!506 = !DILocation(line: 244, column: 6, scope: !133)
!507 = !DILocation(line: 245, column: 15, scope: !505)
!508 = !DILocation(line: 245, column: 3, scope: !505)
!509 = !DILocation(line: 247, column: 14, scope: !133)
!510 = !DILocation(line: 247, column: 20, scope: !133)
!511 = !DILocation(line: 247, column: 27, scope: !133)
!512 = !DILocation(line: 247, column: 40, scope: !133)
!513 = !DILocation(line: 247, column: 46, scope: !133)
!514 = !DILocation(line: 247, column: 2, scope: !133)
!515 = !DILocation(line: 248, column: 1, scope: !133)
!516 = distinct !DISubprogram(name: "notify_fifo", scope: !134, file: !134, line: 88, type: !517, isLocal: true, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !494)
!517 = !DISubroutineType(types: !518)
!518 = !{null, !519, !75, !166, !242}
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64, align: 64)
!520 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!521 = !DILocalVariable(name: "name", arg: 1, scope: !516, file: !134, line: 88, type: !519)
!522 = !DILocation(line: 88, column: 25, scope: !516)
!523 = !DILocalVariable(name: "state_num", arg: 2, scope: !516, file: !134, line: 88, type: !75)
!524 = !DILocation(line: 88, column: 35, scope: !516)
!525 = !DILocalVariable(name: "group", arg: 3, scope: !516, file: !134, line: 88, type: !166)
!526 = !DILocation(line: 88, column: 50, scope: !516)
!527 = !DILocalVariable(name: "priority", arg: 4, scope: !516, file: !134, line: 88, type: !242)
!528 = !DILocation(line: 88, column: 65, scope: !516)
!529 = !DILocalVariable(name: "state", scope: !516, file: !134, line: 90, type: !77)
!530 = !DILocation(line: 90, column: 8, scope: !516)
!531 = !DILocalVariable(name: "size", scope: !516, file: !134, line: 91, type: !122)
!532 = !DILocation(line: 91, column: 9, scope: !516)
!533 = !DILocalVariable(name: "line", scope: !516, file: !134, line: 92, type: !77)
!534 = !DILocation(line: 92, column: 8, scope: !516)
!535 = !DILocalVariable(name: "type", scope: !516, file: !134, line: 93, type: !77)
!536 = !DILocation(line: 93, column: 8, scope: !516)
!537 = !DILocation(line: 95, column: 6, scope: !538)
!538 = distinct !DILexicalBlock(scope: !516, file: !134, line: 95, column: 6)
!539 = !DILocation(line: 95, column: 19, scope: !538)
!540 = !DILocation(line: 95, column: 31, scope: !538)
!541 = !DILocation(line: 95, column: 34, scope: !538)
!542 = !DILocation(line: 95, column: 40, scope: !538)
!543 = !DILocation(line: 96, column: 6, scope: !538)
!544 = !DILocation(line: 96, column: 19, scope: !538)
!545 = !DILocation(line: 96, column: 36, scope: !538)
!546 = !DILocation(line: 96, column: 39, scope: !538)
!547 = !DILocation(line: 95, column: 6, scope: !548)
!548 = !DILexicalBlockFile(scope: !516, file: !134, discriminator: 1)
!549 = !DILocation(line: 97, column: 3, scope: !538)
!550 = !DILocation(line: 99, column: 10, scope: !516)
!551 = !DILocation(line: 99, column: 2, scope: !516)
!552 = !DILocation(line: 101, column: 9, scope: !553)
!553 = distinct !DILexicalBlock(scope: !516, file: !134, line: 99, column: 21)
!554 = !DILocation(line: 102, column: 3, scope: !553)
!555 = !DILocation(line: 104, column: 9, scope: !553)
!556 = !DILocation(line: 105, column: 3, scope: !553)
!557 = !DILocation(line: 107, column: 9, scope: !553)
!558 = !DILocation(line: 108, column: 3, scope: !553)
!559 = !DILocation(line: 110, column: 9, scope: !553)
!560 = !DILocation(line: 111, column: 3, scope: !553)
!561 = !DILocation(line: 113, column: 9, scope: !553)
!562 = !DILocation(line: 114, column: 3, scope: !553)
!563 = !DILocation(line: 117, column: 9, scope: !516)
!564 = !DILocation(line: 117, column: 7, scope: !516)
!565 = !DILocation(line: 119, column: 16, scope: !516)
!566 = !DILocation(line: 119, column: 9, scope: !516)
!567 = !DILocation(line: 119, column: 31, scope: !516)
!568 = !DILocation(line: 119, column: 24, scope: !548)
!569 = !DILocation(line: 119, column: 22, scope: !516)
!570 = !DILocation(line: 119, column: 47, scope: !516)
!571 = !DILocation(line: 119, column: 40, scope: !572)
!572 = !DILexicalBlockFile(scope: !516, file: !134, discriminator: 2)
!573 = !DILocation(line: 119, column: 38, scope: !516)
!574 = !DILocation(line: 119, column: 53, scope: !516)
!575 = !DILocation(line: 119, column: 7, scope: !516)
!576 = !DILocation(line: 120, column: 17, scope: !516)
!577 = !DILocation(line: 120, column: 10, scope: !516)
!578 = !DILocation(line: 120, column: 7, scope: !516)
!579 = !DILocation(line: 121, column: 7, scope: !580)
!580 = distinct !DILexicalBlock(scope: !516, file: !134, line: 121, column: 6)
!581 = !DILocation(line: 121, column: 6, scope: !516)
!582 = !DILocation(line: 122, column: 3, scope: !580)
!583 = !DILocation(line: 124, column: 11, scope: !516)
!584 = !DILocation(line: 124, column: 17, scope: !516)
!585 = !DILocation(line: 124, column: 44, scope: !516)
!586 = !DILocation(line: 124, column: 50, scope: !516)
!587 = !DILocation(line: 124, column: 56, scope: !516)
!588 = !DILocation(line: 124, column: 63, scope: !516)
!589 = !DILocation(line: 124, column: 2, scope: !516)
!590 = !DILocation(line: 126, column: 6, scope: !591)
!591 = distinct !DILexicalBlock(scope: !516, file: !134, line: 126, column: 6)
!592 = !DILocation(line: 126, column: 19, scope: !591)
!593 = !DILocation(line: 126, column: 31, scope: !591)
!594 = !DILocation(line: 126, column: 34, scope: !591)
!595 = !DILocation(line: 126, column: 6, scope: !516)
!596 = !DILocation(line: 127, column: 13, scope: !597)
!597 = distinct !DILexicalBlock(scope: !598, file: !134, line: 127, column: 7)
!598 = distinct !DILexicalBlock(scope: !591, file: !134, line: 126, column: 41)
!599 = !DILocation(line: 127, column: 26, scope: !597)
!600 = !DILocation(line: 127, column: 38, scope: !597)
!601 = !DILocation(line: 127, column: 42, scope: !597)
!602 = !DILocation(line: 127, column: 55, scope: !597)
!603 = !DILocation(line: 127, column: 48, scope: !597)
!604 = !DILocation(line: 127, column: 7, scope: !605)
!605 = !DILexicalBlockFile(scope: !597, file: !134, discriminator: 2)
!606 = !DILocation(line: 127, column: 62, scope: !597)
!607 = !DILocation(line: 127, column: 7, scope: !598)
!608 = !DILocation(line: 127, column: 70, scope: !609)
!609 = !DILexicalBlockFile(scope: !610, file: !134, discriminator: 1)
!610 = distinct !DILexicalBlock(scope: !597, file: !134, line: 127, column: 69)
!611 = !DILocation(line: 128, column: 2, scope: !598)
!612 = !DILocation(line: 129, column: 6, scope: !613)
!613 = distinct !DILexicalBlock(scope: !516, file: !134, line: 129, column: 6)
!614 = !DILocation(line: 129, column: 19, scope: !613)
!615 = !DILocation(line: 129, column: 36, scope: !613)
!616 = !DILocation(line: 129, column: 39, scope: !613)
!617 = !DILocation(line: 129, column: 6, scope: !516)
!618 = !DILocation(line: 130, column: 13, scope: !619)
!619 = distinct !DILexicalBlock(scope: !620, file: !134, line: 130, column: 7)
!620 = distinct !DILexicalBlock(scope: !613, file: !134, line: 129, column: 46)
!621 = !DILocation(line: 130, column: 26, scope: !619)
!622 = !DILocation(line: 130, column: 43, scope: !619)
!623 = !DILocation(line: 130, column: 47, scope: !619)
!624 = !DILocation(line: 130, column: 60, scope: !619)
!625 = !DILocation(line: 130, column: 53, scope: !619)
!626 = !DILocation(line: 130, column: 7, scope: !627)
!627 = !DILexicalBlockFile(scope: !619, file: !134, discriminator: 2)
!628 = !DILocation(line: 130, column: 67, scope: !619)
!629 = !DILocation(line: 130, column: 7, scope: !620)
!630 = !DILocation(line: 130, column: 75, scope: !631)
!631 = !DILexicalBlockFile(scope: !632, file: !134, discriminator: 1)
!632 = distinct !DILexicalBlock(scope: !619, file: !134, line: 130, column: 74)
!633 = !DILocation(line: 131, column: 2, scope: !620)
!634 = !DILocation(line: 133, column: 8, scope: !516)
!635 = !DILocation(line: 133, column: 3, scope: !516)
!636 = !DILocation(line: 133, column: 22, scope: !516)
!637 = !DILocation(line: 134, column: 1, scope: !516)
!638 = !DILocation(line: 134, column: 1, scope: !548)
!639 = distinct !DISubprogram(name: "send_instance_notifies", scope: !134, file: !134, line: 251, type: !640, isLocal: false, isDefinition: true, scopeLine: 252, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !494)
!640 = !DISubroutineType(types: !641)
!641 = !{null, !137}
!642 = !DILocalVariable(name: "vrrp", arg: 1, scope: !639, file: !134, line: 251, type: !137)
!643 = !DILocation(line: 251, column: 32, scope: !639)
!644 = !DILocalVariable(name: "script", scope: !639, file: !134, line: 253, type: !173)
!645 = !DILocation(line: 253, column: 19, scope: !639)
!646 = !DILocation(line: 253, column: 40, scope: !639)
!647 = !DILocation(line: 253, column: 28, scope: !639)
!648 = !DILocalVariable(name: "gscript", scope: !639, file: !134, line: 254, type: !173)
!649 = !DILocation(line: 254, column: 19, scope: !639)
!650 = !DILocation(line: 254, column: 42, scope: !639)
!651 = !DILocation(line: 254, column: 29, scope: !639)
!652 = !DILocation(line: 256, column: 6, scope: !653)
!653 = distinct !DILexicalBlock(scope: !639, file: !134, line: 256, column: 6)
!654 = !DILocation(line: 256, column: 12, scope: !653)
!655 = !DILocation(line: 256, column: 17, scope: !653)
!656 = !DILocation(line: 256, column: 20, scope: !657)
!657 = !DILexicalBlockFile(scope: !653, file: !134, discriminator: 1)
!658 = !DILocation(line: 256, column: 26, scope: !657)
!659 = !DILocation(line: 256, column: 35, scope: !657)
!660 = !DILocation(line: 256, column: 41, scope: !657)
!661 = !DILocation(line: 256, column: 47, scope: !657)
!662 = !DILocation(line: 256, column: 32, scope: !657)
!663 = !DILocation(line: 256, column: 6, scope: !657)
!664 = !DILocation(line: 259, column: 3, scope: !665)
!665 = distinct !DILexicalBlock(scope: !653, file: !134, line: 256, column: 54)
!666 = !DILocation(line: 263, column: 6, scope: !667)
!667 = distinct !DILexicalBlock(scope: !639, file: !134, line: 263, column: 6)
!668 = !DILocation(line: 263, column: 6, scope: !639)
!669 = !DILocation(line: 264, column: 7, scope: !670)
!670 = distinct !DILexicalBlock(scope: !671, file: !134, line: 264, column: 7)
!671 = distinct !DILexicalBlock(scope: !667, file: !134, line: 263, column: 14)
!672 = !DILocation(line: 264, column: 13, scope: !670)
!673 = !DILocation(line: 264, column: 19, scope: !670)
!674 = !DILocation(line: 264, column: 7, scope: !671)
!675 = !DILocation(line: 265, column: 23, scope: !670)
!676 = !DILocation(line: 265, column: 67, scope: !670)
!677 = !DILocation(line: 265, column: 4, scope: !670)
!678 = !DILocation(line: 267, column: 16, scope: !670)
!679 = !DILocation(line: 267, column: 4, scope: !670)
!680 = !DILocation(line: 268, column: 2, scope: !671)
!681 = !DILocation(line: 271, column: 6, scope: !682)
!682 = distinct !DILexicalBlock(scope: !639, file: !134, line: 271, column: 6)
!683 = !DILocation(line: 271, column: 6, scope: !639)
!684 = !DILocation(line: 272, column: 22, scope: !682)
!685 = !DILocation(line: 272, column: 43, scope: !682)
!686 = !DILocation(line: 272, column: 49, scope: !682)
!687 = !DILocation(line: 272, column: 56, scope: !682)
!688 = !DILocation(line: 272, column: 62, scope: !682)
!689 = !DILocation(line: 273, column: 8, scope: !682)
!690 = !DILocation(line: 273, column: 14, scope: !682)
!691 = !DILocation(line: 272, column: 3, scope: !682)
!692 = !DILocation(line: 275, column: 23, scope: !639)
!693 = !DILocation(line: 275, column: 2, scope: !639)
!694 = !DILocation(line: 285, column: 6, scope: !695)
!695 = distinct !DILexicalBlock(scope: !639, file: !134, line: 285, column: 6)
!696 = !DILocation(line: 285, column: 12, scope: !695)
!697 = !DILocation(line: 285, column: 18, scope: !695)
!698 = !DILocation(line: 285, column: 6, scope: !639)
!699 = !DILocation(line: 292, column: 2, scope: !700)
!700 = distinct !DILexicalBlock(scope: !695, file: !134, line: 285, column: 24)
!701 = !DILocation(line: 293, column: 21, scope: !639)
!702 = !DILocation(line: 293, column: 2, scope: !639)
!703 = !DILocation(line: 294, column: 1, scope: !639)
!704 = !DILocation(line: 294, column: 1, scope: !705)
!705 = !DILexicalBlockFile(scope: !639, file: !134, discriminator: 1)
!706 = distinct !DISubprogram(name: "get_iscript", scope: !134, file: !134, line: 44, type: !707, isLocal: true, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !494)
!707 = !DISubroutineType(types: !708)
!708 = !{!173, !137}
!709 = !DILocalVariable(name: "vrrp", arg: 1, scope: !706, file: !134, line: 44, type: !137)
!710 = !DILocation(line: 44, column: 22, scope: !706)
!711 = !DILocation(line: 46, column: 7, scope: !712)
!712 = distinct !DILexicalBlock(scope: !706, file: !134, line: 46, column: 6)
!713 = !DILocation(line: 46, column: 13, scope: !712)
!714 = !DILocation(line: 46, column: 6, scope: !706)
!715 = !DILocation(line: 47, column: 3, scope: !712)
!716 = !DILocation(line: 48, column: 6, scope: !717)
!717 = distinct !DILexicalBlock(scope: !706, file: !134, line: 48, column: 6)
!718 = !DILocation(line: 48, column: 12, scope: !717)
!719 = !DILocation(line: 48, column: 18, scope: !717)
!720 = !DILocation(line: 48, column: 6, scope: !706)
!721 = !DILocation(line: 49, column: 10, scope: !717)
!722 = !DILocation(line: 49, column: 16, scope: !717)
!723 = !DILocation(line: 49, column: 3, scope: !717)
!724 = !DILocation(line: 50, column: 6, scope: !725)
!725 = distinct !DILexicalBlock(scope: !706, file: !134, line: 50, column: 6)
!726 = !DILocation(line: 50, column: 12, scope: !725)
!727 = !DILocation(line: 50, column: 18, scope: !725)
!728 = !DILocation(line: 50, column: 6, scope: !706)
!729 = !DILocation(line: 51, column: 10, scope: !725)
!730 = !DILocation(line: 51, column: 16, scope: !725)
!731 = !DILocation(line: 51, column: 3, scope: !725)
!732 = !DILocation(line: 52, column: 6, scope: !733)
!733 = distinct !DILexicalBlock(scope: !706, file: !134, line: 52, column: 6)
!734 = !DILocation(line: 52, column: 12, scope: !733)
!735 = !DILocation(line: 52, column: 18, scope: !733)
!736 = !DILocation(line: 52, column: 6, scope: !706)
!737 = !DILocation(line: 53, column: 10, scope: !733)
!738 = !DILocation(line: 53, column: 16, scope: !733)
!739 = !DILocation(line: 53, column: 3, scope: !733)
!740 = !DILocation(line: 54, column: 6, scope: !741)
!741 = distinct !DILexicalBlock(scope: !706, file: !134, line: 54, column: 6)
!742 = !DILocation(line: 54, column: 12, scope: !741)
!743 = !DILocation(line: 54, column: 18, scope: !741)
!744 = !DILocation(line: 54, column: 6, scope: !706)
!745 = !DILocation(line: 55, column: 10, scope: !741)
!746 = !DILocation(line: 55, column: 16, scope: !741)
!747 = !DILocation(line: 55, column: 3, scope: !741)
!748 = !DILocation(line: 56, column: 2, scope: !706)
!749 = !DILocation(line: 57, column: 1, scope: !706)
!750 = distinct !DISubprogram(name: "get_igscript", scope: !134, file: !134, line: 76, type: !707, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !494)
!751 = !DILocalVariable(name: "vrrp", arg: 1, scope: !750, file: !134, line: 76, type: !137)
!752 = !DILocation(line: 76, column: 22, scope: !750)
!753 = !DILocation(line: 78, column: 9, scope: !750)
!754 = !DILocation(line: 78, column: 15, scope: !750)
!755 = !DILocation(line: 78, column: 2, scope: !750)
!756 = distinct !DISubprogram(name: "notify_script_exec", scope: !134, file: !134, line: 149, type: !757, isLocal: true, isDefinition: true, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !494)
!757 = !DISubroutineType(types: !758)
!758 = !{null, !173, !77, !75, !77, !75}
!759 = !DILocalVariable(name: "script", arg: 1, scope: !756, file: !134, line: 149, type: !173)
!760 = !DILocation(line: 149, column: 37, scope: !756)
!761 = !DILocalVariable(name: "type", arg: 2, scope: !756, file: !134, line: 149, type: !77)
!762 = !DILocation(line: 149, column: 51, scope: !756)
!763 = !DILocalVariable(name: "state_num", arg: 3, scope: !756, file: !134, line: 149, type: !75)
!764 = !DILocation(line: 149, column: 61, scope: !756)
!765 = !DILocalVariable(name: "name", arg: 4, scope: !756, file: !134, line: 149, type: !77)
!766 = !DILocation(line: 149, column: 78, scope: !756)
!767 = !DILocalVariable(name: "prio", arg: 5, scope: !756, file: !134, line: 149, type: !75)
!768 = !DILocation(line: 149, column: 88, scope: !756)
!769 = !DILocalVariable(name: "prio_buf", scope: !756, file: !134, line: 151, type: !770)
!770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 32, align: 8, elements: !251)
!771 = !DILocation(line: 151, column: 7, scope: !756)
!772 = !DILocation(line: 159, column: 35, scope: !756)
!773 = !DILocation(line: 159, column: 15, scope: !756)
!774 = !DILocation(line: 159, column: 23, scope: !756)
!775 = !DILocation(line: 159, column: 2, scope: !756)
!776 = !DILocation(line: 159, column: 10, scope: !756)
!777 = !DILocation(line: 159, column: 33, scope: !756)
!778 = !DILocation(line: 160, column: 37, scope: !756)
!779 = !DILocation(line: 160, column: 15, scope: !756)
!780 = !DILocation(line: 160, column: 23, scope: !756)
!781 = !DILocation(line: 160, column: 31, scope: !756)
!782 = !DILocation(line: 160, column: 2, scope: !756)
!783 = !DILocation(line: 160, column: 10, scope: !756)
!784 = !DILocation(line: 160, column: 35, scope: !756)
!785 = !DILocation(line: 161, column: 10, scope: !756)
!786 = !DILocation(line: 161, column: 2, scope: !756)
!787 = !DILocation(line: 162, column: 25, scope: !788)
!788 = distinct !DILexicalBlock(scope: !756, file: !134, line: 161, column: 21)
!789 = !DILocation(line: 162, column: 33, scope: !788)
!790 = !DILocation(line: 162, column: 41, scope: !788)
!791 = !DILocation(line: 162, column: 12, scope: !788)
!792 = !DILocation(line: 162, column: 20, scope: !788)
!793 = !DILocation(line: 162, column: 45, scope: !788)
!794 = !DILocation(line: 162, column: 58, scope: !788)
!795 = !DILocation(line: 163, column: 25, scope: !788)
!796 = !DILocation(line: 163, column: 33, scope: !788)
!797 = !DILocation(line: 163, column: 41, scope: !788)
!798 = !DILocation(line: 163, column: 12, scope: !788)
!799 = !DILocation(line: 163, column: 20, scope: !788)
!800 = !DILocation(line: 163, column: 45, scope: !788)
!801 = !DILocation(line: 163, column: 58, scope: !788)
!802 = !DILocation(line: 164, column: 25, scope: !788)
!803 = !DILocation(line: 164, column: 33, scope: !788)
!804 = !DILocation(line: 164, column: 41, scope: !788)
!805 = !DILocation(line: 164, column: 12, scope: !788)
!806 = !DILocation(line: 164, column: 20, scope: !788)
!807 = !DILocation(line: 164, column: 45, scope: !788)
!808 = !DILocation(line: 164, column: 57, scope: !788)
!809 = !DILocation(line: 165, column: 26, scope: !788)
!810 = !DILocation(line: 165, column: 34, scope: !788)
!811 = !DILocation(line: 165, column: 42, scope: !788)
!812 = !DILocation(line: 165, column: 13, scope: !788)
!813 = !DILocation(line: 165, column: 21, scope: !788)
!814 = !DILocation(line: 165, column: 46, scope: !788)
!815 = !DILocation(line: 165, column: 57, scope: !788)
!816 = !DILocation(line: 166, column: 25, scope: !788)
!817 = !DILocation(line: 166, column: 33, scope: !788)
!818 = !DILocation(line: 166, column: 41, scope: !788)
!819 = !DILocation(line: 166, column: 12, scope: !788)
!820 = !DILocation(line: 166, column: 20, scope: !788)
!821 = !DILocation(line: 166, column: 45, scope: !788)
!822 = !DILocation(line: 166, column: 60, scope: !788)
!823 = !DILocation(line: 168, column: 11, scope: !756)
!824 = !DILocation(line: 168, column: 45, scope: !756)
!825 = !DILocation(line: 168, column: 2, scope: !756)
!826 = !DILocation(line: 169, column: 37, scope: !756)
!827 = !DILocation(line: 169, column: 15, scope: !756)
!828 = !DILocation(line: 169, column: 23, scope: !756)
!829 = !DILocation(line: 169, column: 31, scope: !756)
!830 = !DILocation(line: 169, column: 2, scope: !756)
!831 = !DILocation(line: 169, column: 10, scope: !756)
!832 = !DILocation(line: 169, column: 35, scope: !756)
!833 = !DILocation(line: 172, column: 6, scope: !834)
!834 = distinct !DILexicalBlock(scope: !756, file: !134, line: 172, column: 6)
!835 = !DILocation(line: 172, column: 16, scope: !834)
!836 = !DILocation(line: 172, column: 6, scope: !756)
!837 = !DILocation(line: 173, column: 22, scope: !834)
!838 = !DILocation(line: 173, column: 66, scope: !834)
!839 = !DILocation(line: 173, column: 3, scope: !834)
!840 = !DILocation(line: 175, column: 15, scope: !834)
!841 = !DILocation(line: 175, column: 3, scope: !834)
!842 = !DILocation(line: 176, column: 1, scope: !756)
!843 = distinct !DISubprogram(name: "notify_instance_fifo", scope: !134, file: !134, line: 137, type: !844, isLocal: true, isDefinition: true, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !494)
!844 = !DISubroutineType(types: !845)
!845 = !{null, !846}
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64, align: 64)
!847 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!848 = !DILocalVariable(name: "vrrp", arg: 1, scope: !843, file: !134, line: 137, type: !846)
!849 = !DILocation(line: 137, column: 36, scope: !843)
!850 = !DILocation(line: 139, column: 14, scope: !843)
!851 = !DILocation(line: 139, column: 20, scope: !843)
!852 = !DILocation(line: 139, column: 27, scope: !843)
!853 = !DILocation(line: 139, column: 33, scope: !843)
!854 = !DILocation(line: 139, column: 46, scope: !843)
!855 = !DILocation(line: 139, column: 52, scope: !843)
!856 = !DILocation(line: 139, column: 2, scope: !843)
!857 = !DILocation(line: 140, column: 1, scope: !843)
!858 = distinct !DISubprogram(name: "vrrp_smtp_notifier", scope: !134, file: !134, line: 180, type: !640, isLocal: true, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !494)
!859 = !DILocalVariable(name: "vrrp", arg: 1, scope: !858, file: !134, line: 180, type: !137)
!860 = !DILocation(line: 180, column: 29, scope: !858)
!861 = !DILocation(line: 182, column: 6, scope: !862)
!862 = distinct !DILexicalBlock(scope: !858, file: !134, line: 182, column: 6)
!863 = !DILocation(line: 182, column: 12, scope: !862)
!864 = !DILocation(line: 182, column: 23, scope: !862)
!865 = !DILocation(line: 183, column: 8, scope: !862)
!866 = !DILocation(line: 183, column: 21, scope: !862)
!867 = !DILocation(line: 183, column: 37, scope: !862)
!868 = !DILocation(line: 183, column: 40, scope: !869)
!869 = !DILexicalBlockFile(scope: !862, file: !134, discriminator: 1)
!870 = !DILocation(line: 183, column: 46, scope: !869)
!871 = !DILocation(line: 183, column: 52, scope: !869)
!872 = !DILocation(line: 183, column: 58, scope: !869)
!873 = !DILocation(line: 184, column: 6, scope: !862)
!874 = !DILocation(line: 184, column: 12, scope: !862)
!875 = !DILocation(line: 184, column: 32, scope: !862)
!876 = !DILocation(line: 184, column: 38, scope: !862)
!877 = !DILocation(line: 184, column: 29, scope: !862)
!878 = !DILocation(line: 182, column: 6, scope: !879)
!879 = !DILexicalBlockFile(scope: !858, file: !134, discriminator: 1)
!880 = !DILocation(line: 185, column: 7, scope: !881)
!881 = distinct !DILexicalBlock(scope: !882, file: !134, line: 185, column: 7)
!882 = distinct !DILexicalBlock(scope: !862, file: !134, line: 184, column: 45)
!883 = !DILocation(line: 185, column: 13, scope: !881)
!884 = !DILocation(line: 185, column: 19, scope: !881)
!885 = !DILocation(line: 185, column: 7, scope: !882)
!886 = !DILocation(line: 186, column: 30, scope: !881)
!887 = !DILocation(line: 186, column: 4, scope: !881)
!888 = !DILocation(line: 189, column: 12, scope: !889)
!889 = distinct !DILexicalBlock(scope: !881, file: !134, line: 189, column: 12)
!890 = !DILocation(line: 189, column: 18, scope: !889)
!891 = !DILocation(line: 189, column: 24, scope: !889)
!892 = !DILocation(line: 189, column: 12, scope: !881)
!893 = !DILocation(line: 190, column: 30, scope: !889)
!894 = !DILocation(line: 190, column: 4, scope: !889)
!895 = !DILocation(line: 193, column: 12, scope: !896)
!896 = distinct !DILexicalBlock(scope: !889, file: !134, line: 193, column: 12)
!897 = !DILocation(line: 193, column: 18, scope: !896)
!898 = !DILocation(line: 193, column: 24, scope: !896)
!899 = !DILocation(line: 193, column: 12, scope: !889)
!900 = !DILocation(line: 194, column: 30, scope: !896)
!901 = !DILocation(line: 194, column: 4, scope: !896)
!902 = !DILocation(line: 197, column: 12, scope: !903)
!903 = distinct !DILexicalBlock(scope: !896, file: !134, line: 197, column: 12)
!904 = !DILocation(line: 197, column: 18, scope: !903)
!905 = !DILocation(line: 197, column: 24, scope: !903)
!906 = !DILocation(line: 197, column: 12, scope: !896)
!907 = !DILocation(line: 198, column: 30, scope: !903)
!908 = !DILocation(line: 198, column: 4, scope: !903)
!909 = !DILocation(line: 202, column: 4, scope: !903)
!910 = !DILocation(line: 204, column: 28, scope: !882)
!911 = !DILocation(line: 204, column: 34, scope: !882)
!912 = !DILocation(line: 204, column: 3, scope: !882)
!913 = !DILocation(line: 204, column: 9, scope: !882)
!914 = !DILocation(line: 204, column: 26, scope: !882)
!915 = !DILocation(line: 205, column: 2, scope: !882)
!916 = !DILocation(line: 206, column: 1, scope: !858)
!917 = distinct !DISubprogram(name: "send_group_notifies", scope: !134, file: !134, line: 297, type: !918, isLocal: false, isDefinition: true, scopeLine: 298, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !494)
!918 = !DISubroutineType(types: !919)
!919 = !{null, !146}
!920 = !DILocalVariable(name: "vgroup", arg: 1, scope: !917, file: !134, line: 297, type: !146)
!921 = !DILocation(line: 297, column: 36, scope: !917)
!922 = !DILocalVariable(name: "script", scope: !917, file: !134, line: 299, type: !173)
!923 = !DILocation(line: 299, column: 19, scope: !917)
!924 = !DILocation(line: 299, column: 40, scope: !917)
!925 = !DILocation(line: 299, column: 48, scope: !917)
!926 = !DILocation(line: 299, column: 56, scope: !917)
!927 = !DILocation(line: 299, column: 28, scope: !917)
!928 = !DILocalVariable(name: "gscript", scope: !917, file: !134, line: 300, type: !173)
!929 = !DILocation(line: 300, column: 19, scope: !917)
!930 = !DILocation(line: 300, column: 42, scope: !917)
!931 = !DILocation(line: 300, column: 29, scope: !917)
!932 = !DILocation(line: 303, column: 6, scope: !933)
!933 = distinct !DILexicalBlock(scope: !917, file: !134, line: 303, column: 6)
!934 = !DILocation(line: 303, column: 6, scope: !917)
!935 = !DILocation(line: 304, column: 15, scope: !933)
!936 = !DILocation(line: 304, column: 3, scope: !933)
!937 = !DILocation(line: 307, column: 6, scope: !938)
!938 = distinct !DILexicalBlock(scope: !917, file: !134, line: 307, column: 6)
!939 = !DILocation(line: 307, column: 6, scope: !917)
!940 = !DILocation(line: 308, column: 22, scope: !938)
!941 = !DILocation(line: 308, column: 40, scope: !938)
!942 = !DILocation(line: 308, column: 48, scope: !938)
!943 = !DILocation(line: 308, column: 55, scope: !938)
!944 = !DILocation(line: 308, column: 63, scope: !938)
!945 = !DILocation(line: 308, column: 3, scope: !938)
!946 = !DILocation(line: 310, column: 20, scope: !917)
!947 = !DILocation(line: 310, column: 2, scope: !917)
!948 = !DILocation(line: 315, column: 26, scope: !917)
!949 = !DILocation(line: 315, column: 2, scope: !917)
!950 = !DILocation(line: 316, column: 1, scope: !917)
!951 = distinct !DISubprogram(name: "get_gscript", scope: !134, file: !134, line: 60, type: !952, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !494)
!952 = !DISubroutineType(types: !953)
!953 = !{!173, !146, !75}
!954 = !DILocalVariable(name: "vgroup", arg: 1, scope: !951, file: !134, line: 60, type: !146)
!955 = !DILocation(line: 60, column: 29, scope: !951)
!956 = !DILocalVariable(name: "state", arg: 2, scope: !951, file: !134, line: 60, type: !75)
!957 = !DILocation(line: 60, column: 41, scope: !951)
!958 = !DILocation(line: 62, column: 7, scope: !959)
!959 = distinct !DILexicalBlock(scope: !951, file: !134, line: 62, column: 6)
!960 = !DILocation(line: 62, column: 15, scope: !959)
!961 = !DILocation(line: 62, column: 6, scope: !951)
!962 = !DILocation(line: 63, column: 3, scope: !959)
!963 = !DILocation(line: 64, column: 6, scope: !964)
!964 = distinct !DILexicalBlock(scope: !951, file: !134, line: 64, column: 6)
!965 = !DILocation(line: 64, column: 12, scope: !964)
!966 = !DILocation(line: 64, column: 6, scope: !951)
!967 = !DILocation(line: 65, column: 10, scope: !964)
!968 = !DILocation(line: 65, column: 18, scope: !964)
!969 = !DILocation(line: 65, column: 3, scope: !964)
!970 = !DILocation(line: 66, column: 6, scope: !971)
!971 = distinct !DILexicalBlock(scope: !951, file: !134, line: 66, column: 6)
!972 = !DILocation(line: 66, column: 12, scope: !971)
!973 = !DILocation(line: 66, column: 6, scope: !951)
!974 = !DILocation(line: 67, column: 10, scope: !971)
!975 = !DILocation(line: 67, column: 18, scope: !971)
!976 = !DILocation(line: 67, column: 3, scope: !971)
!977 = !DILocation(line: 68, column: 6, scope: !978)
!978 = distinct !DILexicalBlock(scope: !951, file: !134, line: 68, column: 6)
!979 = !DILocation(line: 68, column: 12, scope: !978)
!980 = !DILocation(line: 68, column: 6, scope: !951)
!981 = !DILocation(line: 69, column: 10, scope: !978)
!982 = !DILocation(line: 69, column: 18, scope: !978)
!983 = !DILocation(line: 69, column: 3, scope: !978)
!984 = !DILocation(line: 70, column: 6, scope: !985)
!985 = distinct !DILexicalBlock(scope: !951, file: !134, line: 70, column: 6)
!986 = !DILocation(line: 70, column: 12, scope: !985)
!987 = !DILocation(line: 70, column: 6, scope: !951)
!988 = !DILocation(line: 71, column: 10, scope: !985)
!989 = !DILocation(line: 71, column: 18, scope: !985)
!990 = !DILocation(line: 71, column: 3, scope: !985)
!991 = !DILocation(line: 72, column: 2, scope: !951)
!992 = !DILocation(line: 73, column: 1, scope: !951)
!993 = distinct !DISubprogram(name: "get_ggscript", scope: !134, file: !134, line: 82, type: !994, isLocal: true, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !494)
!994 = !DISubroutineType(types: !995)
!995 = !{!173, !146}
!996 = !DILocalVariable(name: "vgroup", arg: 1, scope: !993, file: !134, line: 82, type: !146)
!997 = !DILocation(line: 82, column: 30, scope: !993)
!998 = !DILocation(line: 84, column: 9, scope: !993)
!999 = !DILocation(line: 84, column: 17, scope: !993)
!1000 = !DILocation(line: 84, column: 2, scope: !993)
!1001 = distinct !DISubprogram(name: "notify_group_fifo", scope: !134, file: !134, line: 143, type: !1002, isLocal: true, isDefinition: true, scopeLine: 144, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !494)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{null, !1004}
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64, align: 64)
!1005 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!1006 = !DILocalVariable(name: "vgroup", arg: 1, scope: !1001, file: !134, line: 143, type: !1004)
!1007 = !DILocation(line: 143, column: 40, scope: !1001)
!1008 = !DILocation(line: 145, column: 14, scope: !1001)
!1009 = !DILocation(line: 145, column: 22, scope: !1001)
!1010 = !DILocation(line: 145, column: 29, scope: !1001)
!1011 = !DILocation(line: 145, column: 37, scope: !1001)
!1012 = !DILocation(line: 145, column: 2, scope: !1001)
!1013 = !DILocation(line: 146, column: 1, scope: !1001)
!1014 = distinct !DISubprogram(name: "vrrp_sync_smtp_notifier", scope: !134, file: !134, line: 210, type: !918, isLocal: true, isDefinition: true, scopeLine: 211, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !494)
!1015 = !DILocalVariable(name: "vgroup", arg: 1, scope: !1014, file: !134, line: 210, type: !146)
!1016 = !DILocation(line: 210, column: 40, scope: !1014)
!1017 = !DILocation(line: 212, column: 6, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1014, file: !134, line: 212, column: 6)
!1019 = !DILocation(line: 212, column: 14, scope: !1018)
!1020 = !DILocation(line: 212, column: 25, scope: !1018)
!1021 = !DILocation(line: 213, column: 8, scope: !1018)
!1022 = !DILocation(line: 213, column: 21, scope: !1018)
!1023 = !DILocation(line: 213, column: 37, scope: !1018)
!1024 = !DILocation(line: 213, column: 40, scope: !1025)
!1025 = !DILexicalBlockFile(scope: !1018, file: !134, discriminator: 1)
!1026 = !DILocation(line: 213, column: 48, scope: !1025)
!1027 = !DILocation(line: 213, column: 54, scope: !1025)
!1028 = !DILocation(line: 213, column: 60, scope: !1025)
!1029 = !DILocation(line: 214, column: 6, scope: !1018)
!1030 = !DILocation(line: 214, column: 14, scope: !1018)
!1031 = !DILocation(line: 214, column: 34, scope: !1018)
!1032 = !DILocation(line: 214, column: 42, scope: !1018)
!1033 = !DILocation(line: 214, column: 31, scope: !1018)
!1034 = !DILocation(line: 212, column: 6, scope: !1035)
!1035 = !DILexicalBlockFile(scope: !1014, file: !134, discriminator: 1)
!1036 = !DILocation(line: 215, column: 7, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1038, file: !134, line: 215, column: 7)
!1038 = distinct !DILexicalBlock(scope: !1018, file: !134, line: 214, column: 49)
!1039 = !DILocation(line: 215, column: 15, scope: !1037)
!1040 = !DILocation(line: 215, column: 21, scope: !1037)
!1041 = !DILocation(line: 215, column: 7, scope: !1038)
!1042 = !DILocation(line: 216, column: 32, scope: !1037)
!1043 = !DILocation(line: 216, column: 4, scope: !1037)
!1044 = !DILocation(line: 219, column: 12, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1037, file: !134, line: 219, column: 12)
!1046 = !DILocation(line: 219, column: 20, scope: !1045)
!1047 = !DILocation(line: 219, column: 26, scope: !1045)
!1048 = !DILocation(line: 219, column: 12, scope: !1037)
!1049 = !DILocation(line: 220, column: 32, scope: !1045)
!1050 = !DILocation(line: 220, column: 4, scope: !1045)
!1051 = !DILocation(line: 223, column: 12, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1045, file: !134, line: 223, column: 12)
!1053 = !DILocation(line: 223, column: 20, scope: !1052)
!1054 = !DILocation(line: 223, column: 26, scope: !1052)
!1055 = !DILocation(line: 223, column: 12, scope: !1045)
!1056 = !DILocation(line: 224, column: 32, scope: !1052)
!1057 = !DILocation(line: 224, column: 4, scope: !1052)
!1058 = !DILocation(line: 227, column: 12, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1052, file: !134, line: 227, column: 12)
!1060 = !DILocation(line: 227, column: 20, scope: !1059)
!1061 = !DILocation(line: 227, column: 26, scope: !1059)
!1062 = !DILocation(line: 227, column: 12, scope: !1052)
!1063 = !DILocation(line: 228, column: 32, scope: !1059)
!1064 = !DILocation(line: 228, column: 4, scope: !1059)
!1065 = !DILocation(line: 232, column: 4, scope: !1059)
!1066 = !DILocation(line: 234, column: 30, scope: !1038)
!1067 = !DILocation(line: 234, column: 38, scope: !1038)
!1068 = !DILocation(line: 234, column: 3, scope: !1038)
!1069 = !DILocation(line: 234, column: 11, scope: !1038)
!1070 = !DILocation(line: 234, column: 28, scope: !1038)
!1071 = !DILocation(line: 235, column: 2, scope: !1038)
!1072 = !DILocation(line: 236, column: 1, scope: !1014)
!1073 = distinct !DISubprogram(name: "notify_shutdown", scope: !134, file: !134, line: 320, type: !1074, isLocal: false, isDefinition: true, scopeLine: 321, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !494)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{null}
!1076 = !DILocalVariable(name: "e", scope: !1073, file: !134, line: 322, type: !1077)
!1077 = !DIDerivedType(tag: DW_TAG_typedef, name: "element", file: !46, line: 30, baseType: !51)
!1078 = !DILocation(line: 322, column: 10, scope: !1073)
!1079 = !DILocalVariable(name: "vrrp", scope: !1073, file: !134, line: 323, type: !137)
!1080 = !DILocation(line: 323, column: 10, scope: !1073)
!1081 = !DILocalVariable(name: "vgroup", scope: !1073, file: !134, line: 324, type: !146)
!1082 = !DILocation(line: 324, column: 17, scope: !1073)
!1083 = !DILocation(line: 326, column: 15, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1073, file: !134, line: 326, column: 2)
!1085 = !DILocation(line: 326, column: 26, scope: !1084)
!1086 = !DILocation(line: 326, column: 14, scope: !1084)
!1087 = !DILocation(line: 326, column: 37, scope: !1088)
!1088 = !DILexicalBlockFile(scope: !1084, file: !134, discriminator: 1)
!1089 = !DILocation(line: 326, column: 48, scope: !1088)
!1090 = !DILocation(line: 326, column: 36, scope: !1088)
!1091 = !DILocation(line: 326, column: 35, scope: !1088)
!1092 = !DILocation(line: 326, column: 35, scope: !1093)
!1093 = !DILexicalBlockFile(scope: !1084, file: !134, discriminator: 2)
!1094 = !DILocation(line: 326, column: 4, scope: !1095)
!1095 = !DILexicalBlockFile(scope: !1084, file: !134, discriminator: 3)
!1096 = !DILocation(line: 326, column: 15, scope: !1095)
!1097 = !DILocation(line: 326, column: 22, scope: !1095)
!1098 = !DILocation(line: 326, column: 35, scope: !1095)
!1099 = !DILocation(line: 326, column: 35, scope: !1100)
!1100 = !DILexicalBlockFile(scope: !1084, file: !134, discriminator: 4)
!1101 = !DILocation(line: 326, column: 14, scope: !1100)
!1102 = !DILocation(line: 326, column: 14, scope: !1103)
!1103 = !DILexicalBlockFile(scope: !1084, file: !134, discriminator: 5)
!1104 = !DILocation(line: 326, column: 14, scope: !1105)
!1105 = !DILexicalBlockFile(scope: !1084, file: !134, discriminator: 6)
!1106 = !DILocation(line: 326, column: 11, scope: !1105)
!1107 = !DILocation(line: 326, column: 7, scope: !1105)
!1108 = !DILocation(line: 326, column: 5, scope: !1109)
!1109 = !DILexicalBlockFile(scope: !1110, file: !134, discriminator: 7)
!1110 = distinct !DILexicalBlock(scope: !1084, file: !134, line: 326, column: 2)
!1111 = !DILocation(line: 326, column: 4, scope: !1109)
!1112 = !DILocation(line: 326, column: 8, scope: !1109)
!1113 = !DILocation(line: 326, column: 23, scope: !1114)
!1114 = !DILexicalBlockFile(scope: !1110, file: !134, discriminator: 8)
!1115 = !DILocation(line: 326, column: 27, scope: !1114)
!1116 = !DILocation(line: 326, column: 21, scope: !1114)
!1117 = !DILocation(line: 326, column: 19, scope: !1114)
!1118 = !DILocation(line: 326, column: 2, scope: !1119)
!1119 = !DILexicalBlockFile(scope: !1084, file: !134, discriminator: 9)
!1120 = !DILocation(line: 327, column: 3, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1110, file: !134, line: 326, column: 57)
!1122 = !DILocation(line: 327, column: 9, scope: !1121)
!1123 = !DILocation(line: 327, column: 15, scope: !1121)
!1124 = !DILocation(line: 328, column: 26, scope: !1121)
!1125 = !DILocation(line: 328, column: 3, scope: !1121)
!1126 = !DILocation(line: 329, column: 2, scope: !1121)
!1127 = !DILocation(line: 326, column: 46, scope: !1128)
!1128 = !DILexicalBlockFile(scope: !1110, file: !134, discriminator: 10)
!1129 = !DILocation(line: 326, column: 50, scope: !1128)
!1130 = !DILocation(line: 326, column: 43, scope: !1128)
!1131 = !DILocation(line: 326, column: 2, scope: !1128)
!1132 = distinct !{!1132, !1133}
!1133 = !DILocation(line: 326, column: 2, scope: !1073)
!1134 = !DILocation(line: 331, column: 15, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1073, file: !134, line: 331, column: 2)
!1136 = !DILocation(line: 331, column: 26, scope: !1135)
!1137 = !DILocation(line: 331, column: 14, scope: !1135)
!1138 = !DILocation(line: 331, column: 48, scope: !1139)
!1139 = !DILexicalBlockFile(scope: !1135, file: !134, discriminator: 1)
!1140 = !DILocation(line: 331, column: 59, scope: !1139)
!1141 = !DILocation(line: 331, column: 47, scope: !1139)
!1142 = !DILocation(line: 331, column: 46, scope: !1139)
!1143 = !DILocation(line: 331, column: 46, scope: !1144)
!1144 = !DILexicalBlockFile(scope: !1135, file: !134, discriminator: 2)
!1145 = !DILocation(line: 331, column: 4, scope: !1146)
!1146 = !DILexicalBlockFile(scope: !1135, file: !134, discriminator: 3)
!1147 = !DILocation(line: 331, column: 15, scope: !1146)
!1148 = !DILocation(line: 331, column: 33, scope: !1146)
!1149 = !DILocation(line: 331, column: 46, scope: !1146)
!1150 = !DILocation(line: 331, column: 46, scope: !1151)
!1151 = !DILexicalBlockFile(scope: !1135, file: !134, discriminator: 4)
!1152 = !DILocation(line: 331, column: 14, scope: !1151)
!1153 = !DILocation(line: 331, column: 14, scope: !1154)
!1154 = !DILexicalBlockFile(scope: !1135, file: !134, discriminator: 5)
!1155 = !DILocation(line: 331, column: 14, scope: !1156)
!1156 = !DILexicalBlockFile(scope: !1135, file: !134, discriminator: 6)
!1157 = !DILocation(line: 331, column: 11, scope: !1156)
!1158 = !DILocation(line: 331, column: 7, scope: !1156)
!1159 = !DILocation(line: 331, column: 5, scope: !1160)
!1160 = !DILexicalBlockFile(scope: !1161, file: !134, discriminator: 7)
!1161 = distinct !DILexicalBlock(scope: !1135, file: !134, line: 331, column: 2)
!1162 = !DILocation(line: 331, column: 4, scope: !1160)
!1163 = !DILocation(line: 331, column: 8, scope: !1160)
!1164 = !DILocation(line: 331, column: 25, scope: !1165)
!1165 = !DILexicalBlockFile(scope: !1161, file: !134, discriminator: 8)
!1166 = !DILocation(line: 331, column: 29, scope: !1165)
!1167 = !DILocation(line: 331, column: 23, scope: !1165)
!1168 = !DILocation(line: 331, column: 21, scope: !1165)
!1169 = !DILocation(line: 331, column: 2, scope: !1170)
!1170 = !DILexicalBlockFile(scope: !1135, file: !134, discriminator: 9)
!1171 = !DILocation(line: 332, column: 3, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1161, file: !134, line: 331, column: 59)
!1173 = !DILocation(line: 332, column: 11, scope: !1172)
!1174 = !DILocation(line: 332, column: 17, scope: !1172)
!1175 = !DILocation(line: 333, column: 23, scope: !1172)
!1176 = !DILocation(line: 333, column: 3, scope: !1172)
!1177 = !DILocation(line: 334, column: 2, scope: !1172)
!1178 = !DILocation(line: 331, column: 48, scope: !1179)
!1179 = !DILexicalBlockFile(scope: !1161, file: !134, discriminator: 10)
!1180 = !DILocation(line: 331, column: 52, scope: !1179)
!1181 = !DILocation(line: 331, column: 45, scope: !1179)
!1182 = !DILocation(line: 331, column: 2, scope: !1179)
!1183 = distinct !{!1183, !1184}
!1184 = !DILocation(line: 331, column: 2, scope: !1073)
!1185 = !DILocation(line: 335, column: 1, scope: !1073)
