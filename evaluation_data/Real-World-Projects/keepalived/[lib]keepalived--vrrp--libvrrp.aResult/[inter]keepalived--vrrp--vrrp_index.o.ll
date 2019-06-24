; ModuleID = './[inter]keepalived--vrrp--vrrp_index.o.i'
source_filename = "./[inter]keepalived--vrrp--vrrp_index.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._vrrp_data = type { %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list* }
%struct._list = type { %struct._element*, %struct._element*, i32, void (i8*)*, void (%struct._IO_FILE*, i8*)* }
%struct._element = type { %struct._element*, %struct._element*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._vrrp_t = type { i16, i8*, %struct._vrrp_sgroup*, %struct._vrrp_stats*, %struct._interface*, i8, i8, i8, i32, i64, [16 x i8], %struct._list*, %struct._list*, %struct._list*, i32, i32, %struct.sockaddr_storage, i8, i8, %struct.sockaddr_storage, %struct._list*, i32, %struct.sockaddr_storage, i8, %struct.timeval, i32, %struct.timeval, %struct.timeval, i32, i32, i32, i8, i8, i32, i32, i32, i8, i8, i8, i32, i8, %struct._list*, %struct._list*, i8, i8, %struct._list*, %struct._list*, i32, i32, i32, i64, i8, i8, i64, %struct.timeval, i32, i32, i8, %struct._sock*, i32, i32, i32, i32, i8, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, i32, %struct.timeval, i8*, i64, i32, i8, [8 x i8], %struct._seq_counter, i32 }
%struct._vrrp_sgroup = type { i8*, %struct._vector*, %struct._list*, i32, i32, i32, i8, %struct._list*, %struct._list*, %struct._list*, %struct._list*, i8, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, i32, i32 }
%struct._vector = type { i32, i32, i8** }
%struct._vrrp_stats = type { i64, i32, i32, i32, i64, i64, i64, i64, i64, i32, i32, i32, i64, i64 }
%struct._interface = type { [16 x i8], i32, %struct.in_addr, %struct.in6_addr, i32, i8, i32, i16, [32 x i8], [32 x i8], i64, i32, i8, i32, %struct._interface*, i32, %struct._interface*, i8, %struct._garp_delay*, i8, i32, i32, i32, i32, i32, i8, %struct._list* }
%struct.in_addr = type { i32 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct._garp_delay = type { %struct.timeval, i8, %struct.timeval, i8, %struct.timeval, %struct.timeval, i32 }
%struct.sockaddr_storage = type { i16, [118 x i8], i64 }
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

@vrrp_data = external global %struct._vrrp_data*, align 8
@garp_delay = common global %struct._list* null, align 8

; Function Attrs: nounwind uwtable
define i32 @get_vrrp_hash(i32, i32) #0 !dbg !125 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !131, metadata !132), !dbg !133
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !134, metadata !132), !dbg !135
  %5 = load i32, i32* %3, align 4, !dbg !136
  %6 = mul nsw i32 %5, 31, !dbg !137
  %7 = load i32, i32* %4, align 4, !dbg !138
  %8 = sdiv i32 %7, 2, !dbg !139
  %9 = mul nsw i32 %8, 37, !dbg !140
  %10 = add nsw i32 %6, %9, !dbg !141
  %11 = srem i32 %10, 1151, !dbg !142
  ret i32 %11, !dbg !143
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define void @alloc_vrrp_bucket(%struct._vrrp_t*) #0 !dbg !144 {
  %2 = alloca %struct._vrrp_t*, align 8
  store %struct._vrrp_t* %0, %struct._vrrp_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %2, metadata !503, metadata !132), !dbg !504
  %3 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !505
  %4 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %3, i32 0, i32 36, !dbg !506
  %5 = load i8, i8* %4, align 4, !dbg !506
  %6 = zext i8 %5 to i32, !dbg !505
  %7 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !507
  %8 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %7, i32 0, i32 58, !dbg !508
  %9 = load %struct._sock*, %struct._sock** %8, align 8, !dbg !508
  %10 = getelementptr inbounds %struct._sock, %struct._sock* %9, i32 0, i32 5, !dbg !509
  %11 = load i32, i32* %10, align 4, !dbg !509
  %12 = call i32 @get_vrrp_hash(i32 %6, i32 %11), !dbg !510
  %13 = sext i32 %12 to i64, !dbg !511
  %14 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !511
  %15 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %14, i32 0, i32 6, !dbg !512
  %16 = load %struct._list*, %struct._list** %15, align 8, !dbg !512
  %17 = getelementptr inbounds %struct._list, %struct._list* %16, i64 %13, !dbg !511
  %18 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !513
  %19 = bitcast %struct._vrrp_t* %18 to i8*, !dbg !513
  call void @list_add(%struct._list* %17, i8* %19), !dbg !514
  ret void, !dbg !516
}

declare void @list_add(%struct._list*, i8*) #2

; Function Attrs: nounwind uwtable
define %struct._vrrp_t* @vrrp_index_lookup(i32, i32) #0 !dbg !517 {
  %3 = alloca %struct._vrrp_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct._vrrp_t*, align 8
  %7 = alloca %struct._element*, align 8
  %8 = alloca %struct._list*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !520, metadata !132), !dbg !521
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !522, metadata !132), !dbg !523
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %6, metadata !524, metadata !132), !dbg !525
  call void @llvm.dbg.declare(metadata %struct._element** %7, metadata !526, metadata !132), !dbg !528
  call void @llvm.dbg.declare(metadata %struct._list** %8, metadata !529, metadata !132), !dbg !530
  %9 = load i32, i32* %4, align 4, !dbg !531
  %10 = load i32, i32* %5, align 4, !dbg !532
  %11 = call i32 @get_vrrp_hash(i32 %9, i32 %10), !dbg !533
  %12 = sext i32 %11 to i64, !dbg !534
  %13 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !534
  %14 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %13, i32 0, i32 6, !dbg !535
  %15 = load %struct._list*, %struct._list** %14, align 8, !dbg !535
  %16 = getelementptr inbounds %struct._list, %struct._list* %15, i64 %12, !dbg !534
  store %struct._list* %16, %struct._list** %8, align 8, !dbg !530
  %17 = load %struct._list*, %struct._list** %8, align 8, !dbg !536
  %18 = icmp eq %struct._list* %17, null, !dbg !538
  br i1 %18, label %29, label %19, !dbg !539

; <label>:19:                                     ; preds = %2
  %20 = load %struct._list*, %struct._list** %8, align 8, !dbg !540
  %21 = getelementptr inbounds %struct._list, %struct._list* %20, i32 0, i32 0, !dbg !542
  %22 = load %struct._element*, %struct._element** %21, align 8, !dbg !542
  %23 = icmp eq %struct._element* %22, null, !dbg !543
  br i1 %23, label %24, label %30, !dbg !544

; <label>:24:                                     ; preds = %19
  %25 = load %struct._list*, %struct._list** %8, align 8, !dbg !545
  %26 = getelementptr inbounds %struct._list, %struct._list* %25, i32 0, i32 1, !dbg !547
  %27 = load %struct._element*, %struct._element** %26, align 8, !dbg !547
  %28 = icmp eq %struct._element* %27, null, !dbg !548
  br i1 %28, label %29, label %30, !dbg !549

; <label>:29:                                     ; preds = %24, %2
  store %struct._vrrp_t* null, %struct._vrrp_t** %3, align 8, !dbg !550
  br label %107, !dbg !550

; <label>:30:                                     ; preds = %24, %19
  %31 = load %struct._list*, %struct._list** %8, align 8, !dbg !551
  %32 = getelementptr inbounds %struct._list, %struct._list* %31, i32 0, i32 2, !dbg !553
  %33 = load i32, i32* %32, align 8, !dbg !553
  %34 = icmp eq i32 %33, 1, !dbg !554
  br i1 %34, label %35, label %67, !dbg !555

; <label>:35:                                     ; preds = %30
  %36 = load %struct._list*, %struct._list** %8, align 8, !dbg !556
  %37 = icmp ne %struct._list* %36, null, !dbg !558
  br i1 %37, label %39, label %38, !dbg !559

; <label>:38:                                     ; preds = %35
  br label %43, !dbg !560

; <label>:39:                                     ; preds = %35
  %40 = load %struct._list*, %struct._list** %8, align 8, !dbg !562
  %41 = getelementptr inbounds %struct._list, %struct._list* %40, i32 0, i32 0, !dbg !564
  %42 = load %struct._element*, %struct._element** %41, align 8, !dbg !564
  br label %43, !dbg !565

; <label>:43:                                     ; preds = %39, %38
  %44 = phi %struct._element* [ null, %38 ], [ %42, %39 ], !dbg !566
  %45 = getelementptr inbounds %struct._element, %struct._element* %44, i32 0, i32 2, !dbg !568
  %46 = load i8*, i8** %45, align 8, !dbg !568
  %47 = bitcast i8* %46 to %struct._vrrp_t*, !dbg !569
  store %struct._vrrp_t* %47, %struct._vrrp_t** %6, align 8, !dbg !570
  %48 = load %struct._vrrp_t*, %struct._vrrp_t** %6, align 8, !dbg !571
  %49 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %48, i32 0, i32 58, !dbg !572
  %50 = load %struct._sock*, %struct._sock** %49, align 8, !dbg !572
  %51 = getelementptr inbounds %struct._sock, %struct._sock* %50, i32 0, i32 5, !dbg !573
  %52 = load i32, i32* %51, align 4, !dbg !573
  %53 = load i32, i32* %5, align 4, !dbg !574
  %54 = icmp eq i32 %52, %53, !dbg !575
  br i1 %54, label %55, label %64, !dbg !576

; <label>:55:                                     ; preds = %43
  %56 = load %struct._vrrp_t*, %struct._vrrp_t** %6, align 8, !dbg !577
  %57 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %56, i32 0, i32 36, !dbg !578
  %58 = load i8, i8* %57, align 4, !dbg !578
  %59 = zext i8 %58 to i32, !dbg !577
  %60 = load i32, i32* %4, align 4, !dbg !579
  %61 = icmp eq i32 %59, %60, !dbg !580
  br i1 %61, label %62, label %64, !dbg !581

; <label>:62:                                     ; preds = %55
  %63 = load %struct._vrrp_t*, %struct._vrrp_t** %6, align 8, !dbg !582
  br label %65, !dbg !583

; <label>:64:                                     ; preds = %55, %43
  br label %65, !dbg !584

; <label>:65:                                     ; preds = %64, %62
  %66 = phi %struct._vrrp_t* [ %63, %62 ], [ null, %64 ], !dbg !585
  store %struct._vrrp_t* %66, %struct._vrrp_t** %3, align 8, !dbg !587
  br label %107, !dbg !587

; <label>:67:                                     ; preds = %30
  %68 = load %struct._list*, %struct._list** %8, align 8, !dbg !588
  %69 = icmp ne %struct._list* %68, null, !dbg !590
  br i1 %69, label %71, label %70, !dbg !591

; <label>:70:                                     ; preds = %67
  br label %75, !dbg !592

; <label>:71:                                     ; preds = %67
  %72 = load %struct._list*, %struct._list** %8, align 8, !dbg !594
  %73 = getelementptr inbounds %struct._list, %struct._list* %72, i32 0, i32 0, !dbg !596
  %74 = load %struct._element*, %struct._element** %73, align 8, !dbg !596
  br label %75, !dbg !597

; <label>:75:                                     ; preds = %71, %70
  %76 = phi %struct._element* [ null, %70 ], [ %74, %71 ], !dbg !598
  store %struct._element* %76, %struct._element** %7, align 8, !dbg !600
  br label %77, !dbg !601

; <label>:77:                                     ; preds = %102, %75
  %78 = load %struct._element*, %struct._element** %7, align 8, !dbg !602
  %79 = icmp ne %struct._element* %78, null, !dbg !605
  br i1 %79, label %80, label %106, !dbg !605

; <label>:80:                                     ; preds = %77
  %81 = load %struct._element*, %struct._element** %7, align 8, !dbg !606
  %82 = getelementptr inbounds %struct._element, %struct._element* %81, i32 0, i32 2, !dbg !608
  %83 = load i8*, i8** %82, align 8, !dbg !608
  %84 = bitcast i8* %83 to %struct._vrrp_t*, !dbg !609
  store %struct._vrrp_t* %84, %struct._vrrp_t** %6, align 8, !dbg !610
  %85 = load %struct._vrrp_t*, %struct._vrrp_t** %6, align 8, !dbg !611
  %86 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %85, i32 0, i32 58, !dbg !613
  %87 = load %struct._sock*, %struct._sock** %86, align 8, !dbg !613
  %88 = getelementptr inbounds %struct._sock, %struct._sock* %87, i32 0, i32 5, !dbg !614
  %89 = load i32, i32* %88, align 4, !dbg !614
  %90 = load i32, i32* %5, align 4, !dbg !615
  %91 = icmp eq i32 %89, %90, !dbg !616
  br i1 %91, label %92, label %101, !dbg !617

; <label>:92:                                     ; preds = %80
  %93 = load %struct._vrrp_t*, %struct._vrrp_t** %6, align 8, !dbg !618
  %94 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %93, i32 0, i32 36, !dbg !620
  %95 = load i8, i8* %94, align 4, !dbg !620
  %96 = zext i8 %95 to i32, !dbg !618
  %97 = load i32, i32* %4, align 4, !dbg !621
  %98 = icmp eq i32 %96, %97, !dbg !622
  br i1 %98, label %99, label %101, !dbg !623

; <label>:99:                                     ; preds = %92
  %100 = load %struct._vrrp_t*, %struct._vrrp_t** %6, align 8, !dbg !624
  store %struct._vrrp_t* %100, %struct._vrrp_t** %3, align 8, !dbg !625
  br label %107, !dbg !625

; <label>:101:                                    ; preds = %92, %80
  br label %102, !dbg !626

; <label>:102:                                    ; preds = %101
  %103 = load %struct._element*, %struct._element** %7, align 8, !dbg !627
  %104 = getelementptr inbounds %struct._element, %struct._element* %103, i32 0, i32 0, !dbg !629
  %105 = load %struct._element*, %struct._element** %104, align 8, !dbg !629
  store %struct._element* %105, %struct._element** %7, align 8, !dbg !630
  br label %77, !dbg !631, !llvm.loop !632

; <label>:106:                                    ; preds = %77
  store %struct._vrrp_t* null, %struct._vrrp_t** %3, align 8, !dbg !634
  br label %107, !dbg !634

; <label>:107:                                    ; preds = %106, %99, %65, %29
  %108 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !635
  ret %struct._vrrp_t* %108, !dbg !635
}

; Function Attrs: nounwind uwtable
define void @alloc_vrrp_fd_bucket(%struct._vrrp_t*) #0 !dbg !636 {
  %2 = alloca %struct._vrrp_t*, align 8
  store %struct._vrrp_t* %0, %struct._vrrp_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %2, metadata !637, metadata !132), !dbg !638
  %3 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !639
  %4 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %3, i32 0, i32 58, !dbg !640
  %5 = load %struct._sock*, %struct._sock** %4, align 8, !dbg !640
  %6 = getelementptr inbounds %struct._sock, %struct._sock* %5, i32 0, i32 5, !dbg !641
  %7 = load i32, i32* %6, align 4, !dbg !641
  %8 = srem i32 %7, 1024, !dbg !642
  %9 = sext i32 %8 to i64, !dbg !643
  %10 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !643
  %11 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %10, i32 0, i32 7, !dbg !644
  %12 = load %struct._list*, %struct._list** %11, align 8, !dbg !644
  %13 = getelementptr inbounds %struct._list, %struct._list* %12, i64 %9, !dbg !643
  %14 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !645
  %15 = bitcast %struct._vrrp_t* %14 to i8*, !dbg !645
  call void @list_add(%struct._list* %13, i8* %15), !dbg !646
  ret void, !dbg !647
}

; Function Attrs: nounwind uwtable
define void @remove_vrrp_fd_bucket(i32) #0 !dbg !648 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._vrrp_t*, align 8
  %4 = alloca %struct._element*, align 8
  %5 = alloca %struct._element*, align 8
  %6 = alloca %struct._list*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !651, metadata !132), !dbg !652
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !653, metadata !132), !dbg !654
  call void @llvm.dbg.declare(metadata %struct._element** %4, metadata !655, metadata !132), !dbg !656
  call void @llvm.dbg.declare(metadata %struct._element** %5, metadata !657, metadata !132), !dbg !658
  call void @llvm.dbg.declare(metadata %struct._list** %6, metadata !659, metadata !132), !dbg !660
  %7 = load i32, i32* %2, align 4, !dbg !661
  %8 = srem i32 %7, 1024, !dbg !662
  %9 = sext i32 %8 to i64, !dbg !663
  %10 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !663
  %11 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %10, i32 0, i32 7, !dbg !664
  %12 = load %struct._list*, %struct._list** %11, align 8, !dbg !664
  %13 = getelementptr inbounds %struct._list, %struct._list* %12, i64 %9, !dbg !663
  store %struct._list* %13, %struct._list** %6, align 8, !dbg !660
  %14 = load %struct._list*, %struct._list** %6, align 8, !dbg !665
  %15 = icmp ne %struct._list* %14, null, !dbg !667
  br i1 %15, label %17, label %16, !dbg !668

; <label>:16:                                     ; preds = %1
  br label %21, !dbg !669

; <label>:17:                                     ; preds = %1
  %18 = load %struct._list*, %struct._list** %6, align 8, !dbg !671
  %19 = getelementptr inbounds %struct._list, %struct._list* %18, i32 0, i32 0, !dbg !673
  %20 = load %struct._element*, %struct._element** %19, align 8, !dbg !673
  br label %21, !dbg !674

; <label>:21:                                     ; preds = %17, %16
  %22 = phi %struct._element* [ null, %16 ], [ %20, %17 ], !dbg !675
  store %struct._element* %22, %struct._element** %4, align 8, !dbg !677
  br label %23, !dbg !678

; <label>:23:                                     ; preds = %87, %21
  %24 = load %struct._element*, %struct._element** %4, align 8, !dbg !679
  %25 = icmp ne %struct._element* %24, null, !dbg !682
  br i1 %25, label %26, label %89, !dbg !682

; <label>:26:                                     ; preds = %23
  %27 = load %struct._element*, %struct._element** %4, align 8, !dbg !683
  %28 = getelementptr inbounds %struct._element, %struct._element* %27, i32 0, i32 0, !dbg !685
  %29 = load %struct._element*, %struct._element** %28, align 8, !dbg !685
  store %struct._element* %29, %struct._element** %5, align 8, !dbg !686
  %30 = load %struct._element*, %struct._element** %4, align 8, !dbg !687
  %31 = getelementptr inbounds %struct._element, %struct._element* %30, i32 0, i32 2, !dbg !688
  %32 = load i8*, i8** %31, align 8, !dbg !688
  %33 = bitcast i8* %32 to %struct._vrrp_t*, !dbg !689
  store %struct._vrrp_t* %33, %struct._vrrp_t** %3, align 8, !dbg !690
  %34 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !691
  %35 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %34, i32 0, i32 58, !dbg !693
  %36 = load %struct._sock*, %struct._sock** %35, align 8, !dbg !693
  %37 = getelementptr inbounds %struct._sock, %struct._sock* %36, i32 0, i32 5, !dbg !694
  %38 = load i32, i32* %37, align 4, !dbg !694
  %39 = load i32, i32* %2, align 4, !dbg !695
  %40 = icmp eq i32 %38, %39, !dbg !696
  br i1 %40, label %41, label %86, !dbg !697

; <label>:41:                                     ; preds = %26
  %42 = load %struct._element*, %struct._element** %4, align 8, !dbg !698
  %43 = getelementptr inbounds %struct._element, %struct._element* %42, i32 0, i32 1, !dbg !701
  %44 = load %struct._element*, %struct._element** %43, align 8, !dbg !701
  %45 = icmp ne %struct._element* %44, null, !dbg !698
  br i1 %45, label %46, label %54, !dbg !702

; <label>:46:                                     ; preds = %41
  %47 = load %struct._element*, %struct._element** %4, align 8, !dbg !703
  %48 = getelementptr inbounds %struct._element, %struct._element* %47, i32 0, i32 0, !dbg !704
  %49 = load %struct._element*, %struct._element** %48, align 8, !dbg !704
  %50 = load %struct._element*, %struct._element** %4, align 8, !dbg !705
  %51 = getelementptr inbounds %struct._element, %struct._element* %50, i32 0, i32 1, !dbg !706
  %52 = load %struct._element*, %struct._element** %51, align 8, !dbg !706
  %53 = getelementptr inbounds %struct._element, %struct._element* %52, i32 0, i32 0, !dbg !707
  store %struct._element* %49, %struct._element** %53, align 8, !dbg !708
  br label %60, !dbg !705

; <label>:54:                                     ; preds = %41
  %55 = load %struct._element*, %struct._element** %4, align 8, !dbg !709
  %56 = getelementptr inbounds %struct._element, %struct._element* %55, i32 0, i32 0, !dbg !710
  %57 = load %struct._element*, %struct._element** %56, align 8, !dbg !710
  %58 = load %struct._list*, %struct._list** %6, align 8, !dbg !711
  %59 = getelementptr inbounds %struct._list, %struct._list* %58, i32 0, i32 0, !dbg !712
  store %struct._element* %57, %struct._element** %59, align 8, !dbg !713
  br label %60

; <label>:60:                                     ; preds = %54, %46
  %61 = load %struct._element*, %struct._element** %4, align 8, !dbg !714
  %62 = getelementptr inbounds %struct._element, %struct._element* %61, i32 0, i32 0, !dbg !716
  %63 = load %struct._element*, %struct._element** %62, align 8, !dbg !716
  %64 = icmp ne %struct._element* %63, null, !dbg !714
  br i1 %64, label %65, label %73, !dbg !717

; <label>:65:                                     ; preds = %60
  %66 = load %struct._element*, %struct._element** %4, align 8, !dbg !718
  %67 = getelementptr inbounds %struct._element, %struct._element* %66, i32 0, i32 1, !dbg !719
  %68 = load %struct._element*, %struct._element** %67, align 8, !dbg !719
  %69 = load %struct._element*, %struct._element** %4, align 8, !dbg !720
  %70 = getelementptr inbounds %struct._element, %struct._element* %69, i32 0, i32 0, !dbg !721
  %71 = load %struct._element*, %struct._element** %70, align 8, !dbg !721
  %72 = getelementptr inbounds %struct._element, %struct._element* %71, i32 0, i32 1, !dbg !722
  store %struct._element* %68, %struct._element** %72, align 8, !dbg !723
  br label %79, !dbg !720

; <label>:73:                                     ; preds = %60
  %74 = load %struct._element*, %struct._element** %4, align 8, !dbg !724
  %75 = getelementptr inbounds %struct._element, %struct._element* %74, i32 0, i32 1, !dbg !725
  %76 = load %struct._element*, %struct._element** %75, align 8, !dbg !725
  %77 = load %struct._list*, %struct._list** %6, align 8, !dbg !726
  %78 = getelementptr inbounds %struct._list, %struct._list* %77, i32 0, i32 1, !dbg !727
  store %struct._element* %76, %struct._element** %78, align 8, !dbg !728
  br label %79

; <label>:79:                                     ; preds = %73, %65
  %80 = load %struct._list*, %struct._list** %6, align 8, !dbg !729
  %81 = getelementptr inbounds %struct._list, %struct._list* %80, i32 0, i32 2, !dbg !730
  %82 = load i32, i32* %81, align 8, !dbg !731
  %83 = add i32 %82, -1, !dbg !731
  store i32 %83, i32* %81, align 8, !dbg !731
  %84 = load %struct._element*, %struct._element** %4, align 8, !dbg !732
  %85 = bitcast %struct._element* %84 to i8*, !dbg !732
  call void @free(i8* %85) #4, !dbg !733
  store %struct._element* null, %struct._element** %4, align 8, !dbg !734
  br label %86, !dbg !735

; <label>:86:                                     ; preds = %79, %26
  br label %87, !dbg !736

; <label>:87:                                     ; preds = %86
  %88 = load %struct._element*, %struct._element** %5, align 8, !dbg !737
  store %struct._element* %88, %struct._element** %4, align 8, !dbg !739
  br label %23, !dbg !740, !llvm.loop !741

; <label>:89:                                     ; preds = %23
  %90 = load %struct._list*, %struct._list** %6, align 8, !dbg !743
  %91 = icmp eq %struct._list* %90, null, !dbg !745
  br i1 %91, label %102, label %92, !dbg !746

; <label>:92:                                     ; preds = %89
  %93 = load %struct._list*, %struct._list** %6, align 8, !dbg !747
  %94 = getelementptr inbounds %struct._list, %struct._list* %93, i32 0, i32 0, !dbg !749
  %95 = load %struct._element*, %struct._element** %94, align 8, !dbg !749
  %96 = icmp eq %struct._element* %95, null, !dbg !750
  br i1 %96, label %97, label %107, !dbg !751

; <label>:97:                                     ; preds = %92
  %98 = load %struct._list*, %struct._list** %6, align 8, !dbg !752
  %99 = getelementptr inbounds %struct._list, %struct._list* %98, i32 0, i32 1, !dbg !754
  %100 = load %struct._element*, %struct._element** %99, align 8, !dbg !754
  %101 = icmp eq %struct._element* %100, null, !dbg !755
  br i1 %101, label %102, label %107, !dbg !756

; <label>:102:                                    ; preds = %97, %89
  %103 = load %struct._list*, %struct._list** %6, align 8, !dbg !757
  %104 = getelementptr inbounds %struct._list, %struct._list* %103, i32 0, i32 1, !dbg !758
  store %struct._element* null, %struct._element** %104, align 8, !dbg !759
  %105 = load %struct._list*, %struct._list** %6, align 8, !dbg !760
  %106 = getelementptr inbounds %struct._list, %struct._list* %105, i32 0, i32 0, !dbg !761
  store %struct._element* null, %struct._element** %106, align 8, !dbg !762
  br label %107, !dbg !760

; <label>:107:                                    ; preds = %102, %97, %92
  ret void, !dbg !763
}

; Function Attrs: nounwind
declare void @free(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!122, !123}
!llvm.ident = !{!124}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !32, globals: !34)
!1 = !DIFile(filename: "[inter]keepalived--vrrp--vrrp_index.o.i", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!2 = !{!3, !11}
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
!32 = !{!33}
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!34 = !{!35}
!35 = distinct !DIGlobalVariable(name: "garp_delay", scope: !0, file: !36, line: 150, type: !37, isLocal: false, isDefinition: true, variable: %struct._list** @garp_delay)
!36 = !DIFile(filename: "./../include/vrrp_if.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !38, line: 31, baseType: !39)
!38 = !DIFile(filename: "../../lib/list.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_list", file: !38, line: 39, size: 320, align: 64, elements: !41)
!41 = !{!42, !49, !50, !52, !56}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !40, file: !38, line: 40, baseType: !43, size: 64, align: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_element", file: !38, line: 33, size: 192, align: 64, elements: !45)
!45 = !{!46, !47, !48}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !44, file: !38, line: 34, baseType: !43, size: 64, align: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !44, file: !38, line: 35, baseType: !43, size: 64, align: 64, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !44, file: !38, line: 36, baseType: !33, size: 64, align: 64, offset: 128)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !40, file: !38, line: 41, baseType: !43, size: 64, align: 64, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !40, file: !38, line: 42, baseType: !51, size: 32, align: 32, offset: 128)
!51 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !40, file: !38, line: 43, baseType: !53, size: 64, align: 64, offset: 192)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!54 = !DISubroutineType(types: !55)
!55 = !{null, !33}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "dump", scope: !40, file: !38, line: 44, baseType: !57, size: 64, align: 64, offset: 256)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!58 = !DISubroutineType(types: !59)
!59 = !{null, !60, !33}
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64, align: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !62, line: 48, baseType: !63)
!62 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !64, line: 241, size: 1728, align: 64, elements: !65)
!64 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!65 = !{!66, !68, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !89, !90, !91, !92, !96, !98, !100, !104, !107, !109, !110, !111, !112, !113, !117, !118}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !63, file: !64, line: 242, baseType: !67, size: 32, align: 32)
!67 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !63, file: !64, line: 247, baseType: !69, size: 64, align: 64, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!70 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !63, file: !64, line: 248, baseType: !69, size: 64, align: 64, offset: 128)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !63, file: !64, line: 249, baseType: !69, size: 64, align: 64, offset: 192)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !63, file: !64, line: 250, baseType: !69, size: 64, align: 64, offset: 256)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !63, file: !64, line: 251, baseType: !69, size: 64, align: 64, offset: 320)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !63, file: !64, line: 252, baseType: !69, size: 64, align: 64, offset: 384)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !63, file: !64, line: 253, baseType: !69, size: 64, align: 64, offset: 448)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !63, file: !64, line: 254, baseType: !69, size: 64, align: 64, offset: 512)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !63, file: !64, line: 256, baseType: !69, size: 64, align: 64, offset: 576)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !63, file: !64, line: 257, baseType: !69, size: 64, align: 64, offset: 640)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !63, file: !64, line: 258, baseType: !69, size: 64, align: 64, offset: 704)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !63, file: !64, line: 260, baseType: !82, size: 64, align: 64, offset: 768)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64, align: 64)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !64, line: 156, size: 192, align: 64, elements: !84)
!84 = !{!85, !86, !88}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !83, file: !64, line: 157, baseType: !82, size: 64, align: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !83, file: !64, line: 158, baseType: !87, size: 64, align: 64, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !83, file: !64, line: 162, baseType: !67, size: 32, align: 32, offset: 128)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !63, file: !64, line: 262, baseType: !87, size: 64, align: 64, offset: 832)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !63, file: !64, line: 264, baseType: !67, size: 32, align: 32, offset: 896)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !63, file: !64, line: 268, baseType: !67, size: 32, align: 32, offset: 928)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !63, file: !64, line: 270, baseType: !93, size: 64, align: 64, offset: 960)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !94, line: 131, baseType: !95)
!94 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!95 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !63, file: !64, line: 274, baseType: !97, size: 16, align: 16, offset: 1024)
!97 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !63, file: !64, line: 275, baseType: !99, size: 8, align: 8, offset: 1040)
!99 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !63, file: !64, line: 276, baseType: !101, size: 8, align: 8, offset: 1048)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 8, align: 8, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 1)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !63, file: !64, line: 280, baseType: !105, size: 64, align: 64, offset: 1088)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64, align: 64)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !64, line: 150, baseType: null)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !63, file: !64, line: 289, baseType: !108, size: 64, align: 64, offset: 1152)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !94, line: 132, baseType: !95)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !63, file: !64, line: 297, baseType: !33, size: 64, align: 64, offset: 1216)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !63, file: !64, line: 298, baseType: !33, size: 64, align: 64, offset: 1280)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !63, file: !64, line: 299, baseType: !33, size: 64, align: 64, offset: 1344)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !63, file: !64, line: 300, baseType: !33, size: 64, align: 64, offset: 1408)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !63, file: !64, line: 302, baseType: !114, size: 64, align: 64, offset: 1472)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !115, line: 216, baseType: !116)
!115 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!116 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !63, file: !64, line: 303, baseType: !67, size: 32, align: 32, offset: 1536)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !63, file: !64, line: 305, baseType: !119, size: 160, align: 8, offset: 1568)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 160, align: 8, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 20)
!122 = !{i32 2, !"Dwarf Version", i32 4}
!123 = !{i32 2, !"Debug Info Version", i32 3}
!124 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!125 = distinct !DISubprogram(name: "get_vrrp_hash", scope: !126, file: !126, line: 32, type: !127, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !130)
!126 = !DIFile(filename: "vrrp_index.c", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!127 = !DISubroutineType(types: !128)
!128 = !{!67, !129, !129}
!129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!130 = !{}
!131 = !DILocalVariable(name: "vrid", arg: 1, scope: !125, file: !126, line: 32, type: !129)
!132 = !DIExpression()
!133 = !DILocation(line: 32, column: 25, scope: !125)
!134 = !DILocalVariable(name: "fd", arg: 2, scope: !125, file: !126, line: 32, type: !129)
!135 = !DILocation(line: 32, column: 41, scope: !125)
!136 = !DILocation(line: 41, column: 10, scope: !125)
!137 = !DILocation(line: 41, column: 15, scope: !125)
!138 = !DILocation(line: 41, column: 23, scope: !125)
!139 = !DILocation(line: 41, column: 25, scope: !125)
!140 = !DILocation(line: 41, column: 29, scope: !125)
!141 = !DILocation(line: 41, column: 20, scope: !125)
!142 = !DILocation(line: 41, column: 35, scope: !125)
!143 = !DILocation(line: 41, column: 2, scope: !125)
!144 = distinct !DISubprogram(name: "alloc_vrrp_bucket", scope: !126, file: !126, line: 45, type: !145, isLocal: false, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !130)
!145 = !DISubroutineType(types: !146)
!146 = !{null, !147}
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64, align: 64)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "vrrp_t", file: !4, line: 310, baseType: !149)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vrrp_t", file: !4, line: 183, size: 7040, align: 64, elements: !150)
!150 = !{!151, !154, !155, !205, !227, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !333, !334, !335, !336, !337, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !495, !502}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !149, file: !4, line: 184, baseType: !152, size: 16, align: 16)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !153, line: 28, baseType: !97)
!153 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!154 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !149, file: !4, line: 185, baseType: !69, size: 64, align: 64, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !149, file: !4, line: 186, baseType: !156, size: 64, align: 64, offset: 128)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64, align: 64)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "vrrp_sgroup_t", file: !4, line: 133, baseType: !158)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vrrp_sgroup", file: !4, line: 109, size: 1024, align: 64, elements: !159)
!159 = !{!160, !161, !171, !172, !173, !174, !175, !177, !178, !179, !180, !181, !182, !199, !200, !201, !202, !203, !204}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !158, file: !4, line: 110, baseType: !69, size: 64, align: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !158, file: !4, line: 111, baseType: !162, size: 64, align: 64, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64, align: 64)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "vector_t", file: !164, line: 34, baseType: !165)
!164 = !DIFile(filename: "../../lib/vector.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vector", file: !164, line: 30, size: 128, align: 64, elements: !166)
!166 = !{!167, !168, !169}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !165, file: !164, line: 31, baseType: !51, size: 32, align: 32)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !165, file: !164, line: 32, baseType: !51, size: 32, align: 32, offset: 32)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !165, file: !164, line: 33, baseType: !170, size: 64, align: 64, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "vrrp_instances", scope: !158, file: !4, line: 112, baseType: !37, size: 64, align: 64, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "num_member_fault", scope: !158, file: !4, line: 113, baseType: !51, size: 32, align: 32, offset: 192)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "num_member_init", scope: !158, file: !4, line: 114, baseType: !51, size: 32, align: 32, offset: 224)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !158, file: !4, line: 115, baseType: !67, size: 32, align: 32, offset: 256)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "sgroup_tracking_weight", scope: !158, file: !4, line: 116, baseType: !176, size: 8, align: 8, offset: 288)
!176 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "track_ifp", scope: !158, file: !4, line: 119, baseType: !37, size: 64, align: 64, offset: 320)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "track_script", scope: !158, file: !4, line: 120, baseType: !37, size: 64, align: 64, offset: 384)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "track_file", scope: !158, file: !4, line: 121, baseType: !37, size: 64, align: 64, offset: 448)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "track_bfd", scope: !158, file: !4, line: 122, baseType: !37, size: 64, align: 64, offset: 512)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "notify_exec", scope: !158, file: !4, line: 125, baseType: !176, size: 8, align: 8, offset: 576)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "script_backup", scope: !158, file: !4, line: 126, baseType: !183, size: 64, align: 64, offset: 640)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "notify_script_t", file: !185, line: 65, baseType: !186)
!185 = !DIFile(filename: "../../lib/notify.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_notify_script", file: !185, line: 59, size: 192, align: 64, elements: !187)
!187 = !{!188, !190, !191, !192, !196}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !186, file: !185, line: 60, baseType: !189, size: 64, align: 64)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "num_args", scope: !186, file: !185, line: 61, baseType: !67, size: 32, align: 32, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !186, file: !185, line: 62, baseType: !67, size: 32, align: 32, offset: 96)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !186, file: !185, line: 63, baseType: !193, size: 32, align: 32, offset: 128)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !194, line: 80, baseType: !195)
!194 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !94, line: 125, baseType: !51)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !186, file: !185, line: 64, baseType: !197, size: 32, align: 32, offset: 160)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !194, line: 65, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !94, line: 126, baseType: !51)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "script_master", scope: !158, file: !4, line: 127, baseType: !183, size: 64, align: 64, offset: 704)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "script_fault", scope: !158, file: !4, line: 128, baseType: !183, size: 64, align: 64, offset: 768)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "script_stop", scope: !158, file: !4, line: 129, baseType: !183, size: 64, align: 64, offset: 832)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "script", scope: !158, file: !4, line: 130, baseType: !183, size: 64, align: 64, offset: 896)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "smtp_alert", scope: !158, file: !4, line: 131, baseType: !67, size: 32, align: 32, offset: 960)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "last_email_state", scope: !158, file: !4, line: 132, baseType: !67, size: 32, align: 32, offset: 992)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !149, file: !4, line: 187, baseType: !206, size: 64, align: 64, offset: 192)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64, align: 64)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "vrrp_stats", file: !4, line: 169, baseType: !208)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vrrp_stats", file: !4, line: 136, size: 768, align: 64, elements: !209)
!209 = !{!210, !213, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "advert_rcvd", scope: !208, file: !4, line: 137, baseType: !211, size: 64, align: 64)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !212, line: 55, baseType: !116)
!212 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!213 = !DIDerivedType(tag: DW_TAG_member, name: "advert_sent", scope: !208, file: !4, line: 138, baseType: !214, size: 32, align: 32, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !212, line: 51, baseType: !51)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "become_master", scope: !208, file: !4, line: 140, baseType: !214, size: 32, align: 32, offset: 96)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "release_master", scope: !208, file: !4, line: 141, baseType: !214, size: 32, align: 32, offset: 128)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "packet_len_err", scope: !208, file: !4, line: 143, baseType: !211, size: 64, align: 64, offset: 192)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "advert_interval_err", scope: !208, file: !4, line: 144, baseType: !211, size: 64, align: 64, offset: 256)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "ip_ttl_err", scope: !208, file: !4, line: 145, baseType: !211, size: 64, align: 64, offset: 320)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "invalid_type_rcvd", scope: !208, file: !4, line: 146, baseType: !211, size: 64, align: 64, offset: 384)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "addr_list_err", scope: !208, file: !4, line: 147, baseType: !211, size: 64, align: 64, offset: 448)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "invalid_authtype", scope: !208, file: !4, line: 149, baseType: !214, size: 32, align: 32, offset: 512)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "authtype_mismatch", scope: !208, file: !4, line: 151, baseType: !214, size: 32, align: 32, offset: 544)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "auth_failure", scope: !208, file: !4, line: 152, baseType: !214, size: 32, align: 32, offset: 576)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "pri_zero_rcvd", scope: !208, file: !4, line: 155, baseType: !211, size: 64, align: 64, offset: 640)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "pri_zero_sent", scope: !208, file: !4, line: 156, baseType: !211, size: 64, align: 64, offset: 704)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "ifp", scope: !149, file: !4, line: 188, baseType: !228, size: 64, align: 64, offset: 256)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64, align: 64)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "interface_t", file: !36, line: 111, baseType: !230)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_interface", file: !36, line: 76, size: 1792, align: 64, elements: !231)
!231 = !{!232, !236, !238, !244, !263, !264, !265, !266, !267, !273, !274, !275, !276, !277, !278, !280, !281, !282, !283, !304, !305, !306, !307, !308, !309, !310, !311}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "ifname", scope: !230, file: !36, line: 77, baseType: !233, size: 128, align: 8)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 128, align: 8, elements: !234)
!234 = !{!235}
!235 = !DISubrange(count: 16)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "ifindex", scope: !230, file: !36, line: 78, baseType: !237, size: 32, align: 32, offset: 128)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "ifindex_t", file: !36, line: 62, baseType: !214)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !230, file: !36, line: 79, baseType: !239, size: 32, align: 32, offset: 160)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !240, line: 31, size: 32, align: 32, elements: !241)
!240 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!241 = !{!242}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !239, file: !240, line: 33, baseType: !243, size: 32, align: 32)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !240, line: 30, baseType: !214)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !230, file: !36, line: 80, baseType: !245, size: 128, align: 32, offset: 192)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !240, line: 211, size: 128, align: 32, elements: !246)
!246 = !{!247}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !245, file: !240, line: 220, baseType: !248, size: 128, align: 32)
!248 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !245, file: !240, line: 213, size: 128, align: 32, elements: !249)
!249 = !{!250, !254, !259}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !248, file: !240, line: 215, baseType: !251, size: 128, align: 8)
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, size: 128, align: 8, elements: !234)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !212, line: 48, baseType: !253)
!253 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !248, file: !240, line: 217, baseType: !255, size: 128, align: 16)
!255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 128, align: 16, elements: !257)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !212, line: 49, baseType: !97)
!257 = !{!258}
!258 = !DISubrange(count: 8)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !248, file: !240, line: 218, baseType: !260, size: 128, align: 32)
!260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 128, align: 32, elements: !261)
!261 = !{!262}
!262 = !DISubrange(count: 4)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "ifi_flags", scope: !230, file: !36, line: 81, baseType: !51, size: 32, align: 32, offset: 320)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "linkbeat_use_polling", scope: !230, file: !36, line: 82, baseType: !176, size: 8, align: 8, offset: 352)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !230, file: !36, line: 83, baseType: !214, size: 32, align: 32, offset: 384)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "hw_type", scope: !230, file: !36, line: 84, baseType: !97, size: 16, align: 16, offset: 416)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr", scope: !230, file: !36, line: 85, baseType: !268, size: 256, align: 8, offset: 432)
!268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 256, align: 8, elements: !271)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !194, line: 33, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_char", file: !94, line: 30, baseType: !253)
!271 = !{!272}
!272 = !DISubrange(count: 32)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr_bcast", scope: !230, file: !36, line: 86, baseType: !268, size: 256, align: 8, offset: 688)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr_len", scope: !230, file: !36, line: 87, baseType: !114, size: 64, align: 64, offset: 960)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "lb_type", scope: !230, file: !36, line: 88, baseType: !67, size: 32, align: 32, offset: 1024)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "vmac", scope: !230, file: !36, line: 90, baseType: !176, size: 8, align: 8, offset: 1056)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "base_ifindex", scope: !230, file: !36, line: 91, baseType: !237, size: 32, align: 32, offset: 1088)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "base_ifp", scope: !230, file: !36, line: 92, baseType: !279, size: 64, align: 64, offset: 1152)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64, align: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master_ifindex", scope: !230, file: !36, line: 94, baseType: !237, size: 32, align: 32, offset: 1216)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master_ifp", scope: !230, file: !36, line: 96, baseType: !279, size: 64, align: 64, offset: 1280)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master", scope: !230, file: !36, line: 97, baseType: !176, size: 8, align: 8, offset: 1344)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "garp_delay", scope: !230, file: !36, line: 100, baseType: !284, size: 64, align: 64, offset: 1408)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64, align: 64)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "garp_delay_t", file: !36, line: 73, baseType: !286)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_garp_delay", file: !36, line: 65, size: 704, align: 64, elements: !287)
!287 = !{!288, !298, !299, !300, !301, !302, !303}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "garp_interval", scope: !286, file: !36, line: 66, baseType: !289, size: 128, align: 64)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "timeval_t", file: !290, line: 31, baseType: !291)
!290 = !DIFile(filename: "../../lib/timer.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !292, line: 30, size: 128, align: 64, elements: !293)
!292 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!293 = !{!294, !296}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !291, file: !292, line: 32, baseType: !295, size: 64, align: 64)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !94, line: 139, baseType: !95)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !291, file: !292, line: 33, baseType: !297, size: 64, align: 64, offset: 64)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !94, line: 141, baseType: !95)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "have_garp_interval", scope: !286, file: !36, line: 67, baseType: !176, size: 8, align: 8, offset: 128)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "gna_interval", scope: !286, file: !36, line: 68, baseType: !289, size: 128, align: 64, offset: 192)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "have_gna_interval", scope: !286, file: !36, line: 69, baseType: !176, size: 8, align: 8, offset: 320)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "garp_next_time", scope: !286, file: !36, line: 70, baseType: !289, size: 128, align: 64, offset: 384)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "gna_next_time", scope: !286, file: !36, line: 71, baseType: !289, size: 128, align: 64, offset: 512)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "aggregation_group", scope: !286, file: !36, line: 72, baseType: !67, size: 32, align: 32, offset: 640)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "gna_router", scope: !230, file: !36, line: 101, baseType: !176, size: 8, align: 8, offset: 1472)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_config", scope: !230, file: !36, line: 102, baseType: !67, size: 32, align: 32, offset: 1504)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_ignore_value", scope: !230, file: !36, line: 103, baseType: !214, size: 32, align: 32, offset: 1536)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_filter_value", scope: !230, file: !36, line: 104, baseType: !214, size: 32, align: 32, offset: 1568)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "reset_promote_secondaries", scope: !230, file: !36, line: 105, baseType: !214, size: 32, align: 32, offset: 1600)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "rp_filter", scope: !230, file: !36, line: 107, baseType: !51, size: 32, align: 32, offset: 1632)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "promote_secondaries_already_set", scope: !230, file: !36, line: 109, baseType: !176, size: 8, align: 8, offset: 1664)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "tracking_vrrp", scope: !230, file: !36, line: 110, baseType: !37, size: 64, align: 64, offset: 1728)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "dont_track_primary", scope: !149, file: !4, line: 189, baseType: !176, size: 8, align: 8, offset: 320)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "linkbeat_use_polling", scope: !149, file: !4, line: 190, baseType: !176, size: 8, align: 8, offset: 328)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "skip_check_adv_addr", scope: !149, file: !4, line: 191, baseType: !176, size: 8, align: 8, offset: 336)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "strict_mode", scope: !149, file: !4, line: 193, baseType: !51, size: 32, align: 32, offset: 352)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "vmac_flags", scope: !149, file: !4, line: 195, baseType: !116, size: 64, align: 64, offset: 384)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "vmac_ifname", scope: !149, file: !4, line: 196, baseType: !233, size: 128, align: 8, offset: 448)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "track_ifp", scope: !149, file: !4, line: 198, baseType: !37, size: 64, align: 64, offset: 576)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "track_script", scope: !149, file: !4, line: 199, baseType: !37, size: 64, align: 64, offset: 640)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "track_file", scope: !149, file: !4, line: 200, baseType: !37, size: 64, align: 64, offset: 704)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "num_script_if_fault", scope: !149, file: !4, line: 204, baseType: !51, size: 32, align: 32, offset: 768)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "num_script_init", scope: !149, file: !4, line: 205, baseType: !51, size: 32, align: 32, offset: 800)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "saddr", scope: !149, file: !4, line: 206, baseType: !324, size: 1024, align: 64, offset: 832)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_storage", file: !325, line: 166, size: 1024, align: 64, elements: !326)
!325 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!326 = !{!327, !328, !332}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "ss_family", scope: !324, file: !325, line: 168, baseType: !152, size: 16, align: 16)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_padding", scope: !324, file: !325, line: 169, baseType: !329, size: 944, align: 8, offset: 16)
!329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 944, align: 8, elements: !330)
!330 = !{!331}
!331 = !DISubrange(count: 118)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_align", scope: !324, file: !325, line: 170, baseType: !116, size: 64, align: 64, offset: 960)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "saddr_from_config", scope: !149, file: !4, line: 207, baseType: !176, size: 8, align: 8, offset: 1856)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "track_saddr", scope: !149, file: !4, line: 208, baseType: !176, size: 8, align: 8, offset: 1864)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "pkt_saddr", scope: !149, file: !4, line: 209, baseType: !324, size: 1024, align: 64, offset: 1920)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "unicast_peer", scope: !149, file: !4, line: 210, baseType: !37, size: 64, align: 64, offset: 2944)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "unicast_chksum_compat", scope: !149, file: !4, line: 212, baseType: !338, size: 32, align: 32, offset: 3008)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "chksum_compatibility_t", file: !4, line: 179, baseType: !3)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "master_saddr", scope: !149, file: !4, line: 214, baseType: !324, size: 1024, align: 64, offset: 3072)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "master_priority", scope: !149, file: !4, line: 215, baseType: !252, size: 8, align: 8, offset: 4096)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "last_transition", scope: !149, file: !4, line: 216, baseType: !289, size: 128, align: 64, offset: 4160)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "garp_delay", scope: !149, file: !4, line: 217, baseType: !51, size: 32, align: 32, offset: 4288)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "garp_refresh", scope: !149, file: !4, line: 218, baseType: !289, size: 128, align: 64, offset: 4352)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "garp_refresh_timer", scope: !149, file: !4, line: 219, baseType: !289, size: 128, align: 64, offset: 4480)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "garp_rep", scope: !149, file: !4, line: 220, baseType: !51, size: 32, align: 32, offset: 4608)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "garp_refresh_rep", scope: !149, file: !4, line: 221, baseType: !51, size: 32, align: 32, offset: 4640)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "garp_lower_prio_delay", scope: !149, file: !4, line: 222, baseType: !51, size: 32, align: 32, offset: 4672)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "garp_pending", scope: !149, file: !4, line: 223, baseType: !176, size: 8, align: 8, offset: 4704)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "gna_pending", scope: !149, file: !4, line: 224, baseType: !176, size: 8, align: 8, offset: 4712)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "garp_lower_prio_rep", scope: !149, file: !4, line: 225, baseType: !51, size: 32, align: 32, offset: 4736)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "lower_prio_no_advert", scope: !149, file: !4, line: 226, baseType: !51, size: 32, align: 32, offset: 4768)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "higher_prio_send_advert", scope: !149, file: !4, line: 227, baseType: !51, size: 32, align: 32, offset: 4800)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "vrid", scope: !149, file: !4, line: 228, baseType: !252, size: 8, align: 8, offset: 4832)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "base_priority", scope: !149, file: !4, line: 229, baseType: !252, size: 8, align: 8, offset: 4840)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "effective_priority", scope: !149, file: !4, line: 230, baseType: !252, size: 8, align: 8, offset: 4848)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "total_priority", scope: !149, file: !4, line: 231, baseType: !67, size: 32, align: 32, offset: 4864)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "vipset", scope: !149, file: !4, line: 233, baseType: !176, size: 8, align: 8, offset: 4896)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "vip", scope: !149, file: !4, line: 234, baseType: !37, size: 64, align: 64, offset: 4928)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "evip", scope: !149, file: !4, line: 235, baseType: !37, size: 64, align: 64, offset: 4992)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "promote_secondaries", scope: !149, file: !4, line: 239, baseType: !176, size: 8, align: 8, offset: 5056)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "evip_add_ipv6", scope: !149, file: !4, line: 240, baseType: !176, size: 8, align: 8, offset: 5064)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "vroutes", scope: !149, file: !4, line: 241, baseType: !37, size: 64, align: 64, offset: 5120)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "vrules", scope: !149, file: !4, line: 242, baseType: !37, size: 64, align: 64, offset: 5184)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "adver_int", scope: !149, file: !4, line: 243, baseType: !51, size: 32, align: 32, offset: 5248)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "master_adver_int", scope: !149, file: !4, line: 244, baseType: !51, size: 32, align: 32, offset: 5280)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "accept", scope: !149, file: !4, line: 249, baseType: !51, size: 32, align: 32, offset: 5312)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_rx_buf_size", scope: !149, file: !4, line: 252, baseType: !114, size: 64, align: 64, offset: 5376)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "iptable_rules_set", scope: !149, file: !4, line: 254, baseType: !176, size: 8, align: 8, offset: 5440)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "nopreempt", scope: !149, file: !4, line: 255, baseType: !176, size: 8, align: 8, offset: 5448)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_delay", scope: !149, file: !4, line: 256, baseType: !116, size: 64, align: 64, offset: 5504)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_time", scope: !149, file: !4, line: 260, baseType: !289, size: 128, align: 64, offset: 5568)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !149, file: !4, line: 261, baseType: !67, size: 32, align: 32, offset: 5696)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "wantstate", scope: !149, file: !4, line: 265, baseType: !67, size: 32, align: 32, offset: 5728)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "reload_master", scope: !149, file: !4, line: 266, baseType: !176, size: 8, align: 8, offset: 5760)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "sockets", scope: !149, file: !4, line: 267, baseType: !376, size: 64, align: 64, offset: 5824)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64, align: 64)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "sock_t", file: !378, line: 50, baseType: !379)
!378 = !DIFile(filename: "./../include/vrrp_sock.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sock", file: !378, line: 40, size: 1344, align: 64, elements: !380)
!380 = !{!381, !382, !383, !384, !385, !386, !387, !388, !389}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !379, file: !378, line: 41, baseType: !152, size: 16, align: 16)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "saddr", scope: !379, file: !378, line: 42, baseType: !324, size: 1024, align: 64, offset: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "proto", scope: !379, file: !378, line: 43, baseType: !67, size: 32, align: 32, offset: 1088)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "ifindex", scope: !379, file: !378, line: 44, baseType: !237, size: 32, align: 32, offset: 1120)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "unicast", scope: !379, file: !378, line: 45, baseType: !176, size: 8, align: 8, offset: 1152)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "fd_in", scope: !379, file: !378, line: 46, baseType: !67, size: 32, align: 32, offset: 1184)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "fd_out", scope: !379, file: !378, line: 47, baseType: !67, size: 32, align: 32, offset: 1216)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "rx_buf_size", scope: !379, file: !378, line: 48, baseType: !67, size: 32, align: 32, offset: 1248)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !379, file: !378, line: 49, baseType: !390, size: 64, align: 64, offset: 1280)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64, align: 64)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_t", file: !12, line: 99, baseType: !392)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread", file: !12, line: 78, size: 768, align: 64, elements: !393)
!393 = !{!394, !395, !397, !450, !455, !456, !457, !469, !471}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !392, file: !12, line: 79, baseType: !116, size: 64, align: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !392, file: !12, line: 80, baseType: !396, size: 32, align: 32, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_type_t", file: !12, line: 63, baseType: !11)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !392, file: !12, line: 81, baseType: !398, size: 64, align: 64, offset: 128)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64, align: 64)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_master", file: !12, line: 112, size: 1280, align: 64, elements: !400)
!400 = !{!401, !413, !414, !415, !416, !424, !425, !426, !427, !428, !431, !442, !443, !444, !445, !446, !447, !448, !449}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !399, file: !12, line: 113, baseType: !402, size: 64, align: 64)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "rb_root_t", file: !403, line: 109, baseType: !404)
!403 = !DIFile(filename: "../../lib/rbtree.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !403, line: 106, size: 64, align: 64, elements: !405)
!405 = !{!406}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !404, file: !403, line: 108, baseType: !407, size: 64, align: 64)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64, align: 64)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !403, line: 97, size: 192, align: 64, elements: !409)
!409 = !{!410, !411, !412}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "rb_parent_color", scope: !408, file: !403, line: 99, baseType: !116, size: 64, align: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !408, file: !403, line: 102, baseType: !407, size: 64, align: 64, offset: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !408, file: !403, line: 103, baseType: !407, size: 64, align: 64, offset: 128)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !399, file: !12, line: 114, baseType: !402, size: 64, align: 64, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !399, file: !12, line: 115, baseType: !402, size: 64, align: 64, offset: 128)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !399, file: !12, line: 116, baseType: !402, size: 64, align: 64, offset: 192)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !399, file: !12, line: 117, baseType: !417, size: 128, align: 64, offset: 256)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "list_head_t", file: !418, line: 62, baseType: !419)
!418 = !DIFile(filename: "../../lib/list_head.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !418, line: 60, size: 128, align: 64, elements: !420)
!420 = !{!421, !423}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !419, file: !418, line: 61, baseType: !422, size: 64, align: 64)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64, align: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !419, file: !418, line: 61, baseType: !422, size: 64, align: 64, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !399, file: !12, line: 121, baseType: !417, size: 128, align: 64, offset: 384)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "unuse", scope: !399, file: !12, line: 122, baseType: !417, size: 128, align: 64, offset: 512)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "child_pid_index", scope: !399, file: !12, line: 124, baseType: !37, size: 64, align: 64, offset: 640)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "io_events", scope: !399, file: !12, line: 127, baseType: !402, size: 64, align: 64, offset: 704)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_events", scope: !399, file: !12, line: 128, baseType: !429, size: 64, align: 64, offset: 768)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64, align: 64)
!430 = !DICompositeType(tag: DW_TAG_structure_type, name: "epoll_event", file: !12, line: 128, flags: DIFlagFwdDecl)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "current_event", scope: !399, file: !12, line: 129, baseType: !432, size: 64, align: 64, offset: 832)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64, align: 64)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_event_t", file: !12, line: 109, baseType: !434)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_event", file: !12, line: 102, size: 448, align: 64, elements: !435)
!435 = !{!436, !437, !438, !439, !440}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !434, file: !12, line: 103, baseType: !390, size: 64, align: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !434, file: !12, line: 104, baseType: !390, size: 64, align: 64, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !434, file: !12, line: 105, baseType: !116, size: 64, align: 64, offset: 128)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !434, file: !12, line: 106, baseType: !67, size: 32, align: 32, offset: 192)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !434, file: !12, line: 108, baseType: !441, size: 192, align: 64, offset: 256)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "rb_node_t", file: !403, line: 104, baseType: !408)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_size", scope: !399, file: !12, line: 130, baseType: !51, size: 32, align: 32, offset: 896)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_count", scope: !399, file: !12, line: 131, baseType: !51, size: 32, align: 32, offset: 928)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_fd", scope: !399, file: !12, line: 132, baseType: !67, size: 32, align: 32, offset: 960)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "timer_fd", scope: !399, file: !12, line: 135, baseType: !67, size: 32, align: 32, offset: 992)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "timer_thread", scope: !399, file: !12, line: 136, baseType: !390, size: 64, align: 64, offset: 1024)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !399, file: !12, line: 146, baseType: !116, size: 64, align: 64, offset: 1088)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !399, file: !12, line: 147, baseType: !116, size: 64, align: 64, offset: 1152)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_timer_running", scope: !399, file: !12, line: 148, baseType: !176, size: 8, align: 8, offset: 1216)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !392, file: !12, line: 82, baseType: !451, size: 64, align: 64, offset: 192)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64, align: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{!67, !454}
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64, align: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !392, file: !12, line: 83, baseType: !33, size: 64, align: 64, offset: 256)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "sands", scope: !392, file: !12, line: 84, baseType: !289, size: 128, align: 64, offset: 320)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !392, file: !12, line: 92, baseType: !458, size: 64, align: 32, offset: 448)
!458 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !392, file: !12, line: 85, size: 64, align: 32, elements: !459)
!459 = !{!460, !461, !462}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !458, file: !12, line: 86, baseType: !67, size: 32, align: 32)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !458, file: !12, line: 87, baseType: !67, size: 32, align: 32)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !458, file: !12, line: 91, baseType: !463, size: 64, align: 32)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !458, file: !12, line: 88, size: 64, align: 32, elements: !464)
!464 = !{!465, !468}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !463, file: !12, line: 89, baseType: !466, size: 32, align: 32)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !194, line: 98, baseType: !467)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !94, line: 133, baseType: !67)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !463, file: !12, line: 90, baseType: !67, size: 32, align: 32, offset: 32)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !392, file: !12, line: 93, baseType: !470, size: 64, align: 64, offset: 512)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64, align: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, scope: !392, file: !12, line: 95, baseType: !472, size: 192, align: 64, offset: 576)
!472 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !392, file: !12, line: 95, size: 192, align: 64, elements: !473)
!473 = !{!474, !475}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !472, file: !12, line: 96, baseType: !441, size: 192, align: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !472, file: !12, line: 97, baseType: !417, size: 128, align: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !149, file: !4, line: 269, baseType: !67, size: 32, align: 32, offset: 5888)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !149, file: !4, line: 271, baseType: !67, size: 32, align: 32, offset: 5920)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "smtp_alert", scope: !149, file: !4, line: 274, baseType: !67, size: 32, align: 32, offset: 5952)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "last_email_state", scope: !149, file: !4, line: 275, baseType: !67, size: 32, align: 32, offset: 5984)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "notify_exec", scope: !149, file: !4, line: 276, baseType: !176, size: 8, align: 8, offset: 6016)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "script_backup", scope: !149, file: !4, line: 277, baseType: !183, size: 64, align: 64, offset: 6080)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "script_master", scope: !149, file: !4, line: 278, baseType: !183, size: 64, align: 64, offset: 6144)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "script_fault", scope: !149, file: !4, line: 279, baseType: !183, size: 64, align: 64, offset: 6208)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "script_stop", scope: !149, file: !4, line: 280, baseType: !183, size: 64, align: 64, offset: 6272)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "script_master_rx_lower_pri", scope: !149, file: !4, line: 281, baseType: !183, size: 64, align: 64, offset: 6336)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "script", scope: !149, file: !4, line: 282, baseType: !183, size: 64, align: 64, offset: 6400)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "ms_down_timer", scope: !149, file: !4, line: 285, baseType: !214, size: 32, align: 32, offset: 6464)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "sands", scope: !149, file: !4, line: 286, baseType: !289, size: 128, align: 64, offset: 6528)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "send_buffer", scope: !149, file: !4, line: 289, baseType: !69, size: 64, align: 64, offset: 6656)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "send_buffer_size", scope: !149, file: !4, line: 290, baseType: !114, size: 64, align: 64, offset: 6720)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "ipv4_csum", scope: !149, file: !4, line: 291, baseType: !214, size: 32, align: 32, offset: 6784)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "auth_type", scope: !149, file: !4, line: 295, baseType: !252, size: 8, align: 8, offset: 6816)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "auth_data", scope: !149, file: !4, line: 296, baseType: !494, size: 64, align: 8, offset: 6824)
!494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, size: 64, align: 8, elements: !257)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "ipsecah_counter", scope: !149, file: !4, line: 299, baseType: !496, size: 64, align: 32, offset: 6912)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "seq_counter_t", file: !497, line: 58, baseType: !498)
!497 = !DIFile(filename: "./../include/vrrp_ipsecah.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_seq_counter", file: !497, line: 55, size: 64, align: 32, elements: !499)
!499 = !{!500, !501}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "cycle", scope: !498, file: !497, line: 56, baseType: !176, size: 8, align: 8)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "seq_number", scope: !498, file: !497, line: 57, baseType: !214, size: 32, align: 32, offset: 32)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "ip_id", scope: !149, file: !4, line: 309, baseType: !67, size: 32, align: 32, offset: 6976)
!503 = !DILocalVariable(name: "vrrp", arg: 1, scope: !144, file: !126, line: 45, type: !147)
!504 = !DILocation(line: 45, column: 27, scope: !144)
!505 = !DILocation(line: 47, column: 48, scope: !144)
!506 = !DILocation(line: 47, column: 54, scope: !144)
!507 = !DILocation(line: 47, column: 60, scope: !144)
!508 = !DILocation(line: 47, column: 66, scope: !144)
!509 = !DILocation(line: 47, column: 75, scope: !144)
!510 = !DILocation(line: 47, column: 34, scope: !144)
!511 = !DILocation(line: 47, column: 12, scope: !144)
!512 = !DILocation(line: 47, column: 23, scope: !144)
!513 = !DILocation(line: 47, column: 84, scope: !144)
!514 = !DILocation(line: 47, column: 2, scope: !515)
!515 = !DILexicalBlockFile(scope: !144, file: !126, discriminator: 1)
!516 = !DILocation(line: 48, column: 1, scope: !144)
!517 = distinct !DISubprogram(name: "vrrp_index_lookup", scope: !126, file: !126, line: 51, type: !518, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !130)
!518 = !DISubroutineType(types: !519)
!519 = !{!147, !129, !129}
!520 = !DILocalVariable(name: "vrid", arg: 1, scope: !517, file: !126, line: 51, type: !129)
!521 = !DILocation(line: 51, column: 29, scope: !517)
!522 = !DILocalVariable(name: "fd", arg: 2, scope: !517, file: !126, line: 51, type: !129)
!523 = !DILocation(line: 51, column: 45, scope: !517)
!524 = !DILocalVariable(name: "vrrp", scope: !517, file: !126, line: 53, type: !147)
!525 = !DILocation(line: 53, column: 10, scope: !517)
!526 = !DILocalVariable(name: "e", scope: !517, file: !126, line: 54, type: !527)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "element", file: !38, line: 30, baseType: !43)
!528 = !DILocation(line: 54, column: 10, scope: !517)
!529 = !DILocalVariable(name: "l", scope: !517, file: !126, line: 55, type: !37)
!530 = !DILocation(line: 55, column: 7, scope: !517)
!531 = !DILocation(line: 55, column: 48, scope: !517)
!532 = !DILocation(line: 55, column: 54, scope: !517)
!533 = !DILocation(line: 55, column: 34, scope: !517)
!534 = !DILocation(line: 55, column: 12, scope: !517)
!535 = !DILocation(line: 55, column: 23, scope: !517)
!536 = !DILocation(line: 58, column: 8, scope: !537)
!537 = distinct !DILexicalBlock(scope: !517, file: !126, line: 58, column: 6)
!538 = !DILocation(line: 58, column: 11, scope: !537)
!539 = !DILocation(line: 58, column: 5, scope: !537)
!540 = !DILocation(line: 58, column: 10, scope: !541)
!541 = !DILexicalBlockFile(scope: !537, file: !126, discriminator: 1)
!542 = !DILocation(line: 58, column: 14, scope: !541)
!543 = !DILocation(line: 58, column: 19, scope: !541)
!544 = !DILocation(line: 58, column: 5, scope: !541)
!545 = !DILocation(line: 58, column: 9, scope: !546)
!546 = !DILexicalBlockFile(scope: !537, file: !126, discriminator: 2)
!547 = !DILocation(line: 58, column: 13, scope: !546)
!548 = !DILocation(line: 58, column: 18, scope: !546)
!549 = !DILocation(line: 58, column: 6, scope: !546)
!550 = !DILocation(line: 59, column: 3, scope: !537)
!551 = !DILocation(line: 65, column: 8, scope: !552)
!552 = distinct !DILexicalBlock(scope: !517, file: !126, line: 65, column: 6)
!553 = !DILocation(line: 65, column: 12, scope: !552)
!554 = !DILocation(line: 65, column: 19, scope: !552)
!555 = !DILocation(line: 65, column: 6, scope: !517)
!556 = !DILocation(line: 66, column: 15, scope: !557)
!557 = distinct !DILexicalBlock(scope: !552, file: !126, line: 65, column: 25)
!558 = !DILocation(line: 66, column: 14, scope: !557)
!559 = !DILocation(line: 66, column: 13, scope: !557)
!560 = !DILocation(line: 66, column: 13, scope: !561)
!561 = !DILexicalBlockFile(scope: !557, file: !126, discriminator: 1)
!562 = !DILocation(line: 66, column: 12, scope: !563)
!563 = !DILexicalBlockFile(scope: !557, file: !126, discriminator: 2)
!564 = !DILocation(line: 66, column: 16, scope: !563)
!565 = !DILocation(line: 66, column: 13, scope: !563)
!566 = !DILocation(line: 66, column: 13, scope: !567)
!567 = !DILexicalBlockFile(scope: !557, file: !126, discriminator: 3)
!568 = !DILocation(line: 66, column: 24, scope: !567)
!569 = !DILocation(line: 66, column: 10, scope: !567)
!570 = !DILocation(line: 66, column: 8, scope: !567)
!571 = !DILocation(line: 67, column: 11, scope: !557)
!572 = !DILocation(line: 67, column: 17, scope: !557)
!573 = !DILocation(line: 67, column: 26, scope: !557)
!574 = !DILocation(line: 67, column: 35, scope: !557)
!575 = !DILocation(line: 67, column: 32, scope: !557)
!576 = !DILocation(line: 67, column: 38, scope: !557)
!577 = !DILocation(line: 67, column: 41, scope: !561)
!578 = !DILocation(line: 67, column: 47, scope: !561)
!579 = !DILocation(line: 67, column: 55, scope: !561)
!580 = !DILocation(line: 67, column: 52, scope: !561)
!581 = !DILocation(line: 67, column: 10, scope: !561)
!582 = !DILocation(line: 67, column: 63, scope: !563)
!583 = !DILocation(line: 67, column: 10, scope: !563)
!584 = !DILocation(line: 67, column: 10, scope: !567)
!585 = !DILocation(line: 67, column: 10, scope: !586)
!586 = !DILexicalBlockFile(scope: !557, file: !126, discriminator: 4)
!587 = !DILocation(line: 67, column: 3, scope: !586)
!588 = !DILocation(line: 75, column: 14, scope: !589)
!589 = distinct !DILexicalBlock(scope: !517, file: !126, line: 75, column: 2)
!590 = !DILocation(line: 75, column: 13, scope: !589)
!591 = !DILocation(line: 75, column: 12, scope: !589)
!592 = !DILocation(line: 75, column: 12, scope: !593)
!593 = !DILexicalBlockFile(scope: !589, file: !126, discriminator: 1)
!594 = !DILocation(line: 75, column: 13, scope: !595)
!595 = !DILexicalBlockFile(scope: !589, file: !126, discriminator: 2)
!596 = !DILocation(line: 75, column: 17, scope: !595)
!597 = !DILocation(line: 75, column: 12, scope: !595)
!598 = !DILocation(line: 75, column: 12, scope: !599)
!599 = !DILexicalBlockFile(scope: !589, file: !126, discriminator: 3)
!600 = !DILocation(line: 75, column: 9, scope: !599)
!601 = !DILocation(line: 75, column: 7, scope: !599)
!602 = !DILocation(line: 75, column: 24, scope: !603)
!603 = !DILexicalBlockFile(scope: !604, file: !126, discriminator: 4)
!604 = distinct !DILexicalBlock(scope: !589, file: !126, line: 75, column: 2)
!605 = !DILocation(line: 75, column: 2, scope: !603)
!606 = !DILocation(line: 76, column: 12, scope: !607)
!607 = distinct !DILexicalBlock(scope: !604, file: !126, line: 75, column: 46)
!608 = !DILocation(line: 76, column: 16, scope: !607)
!609 = !DILocation(line: 76, column: 10, scope: !607)
!610 = !DILocation(line: 76, column: 8, scope: !607)
!611 = !DILocation(line: 77, column: 7, scope: !612)
!612 = distinct !DILexicalBlock(scope: !607, file: !126, line: 77, column: 7)
!613 = !DILocation(line: 77, column: 13, scope: !612)
!614 = !DILocation(line: 77, column: 22, scope: !612)
!615 = !DILocation(line: 77, column: 31, scope: !612)
!616 = !DILocation(line: 77, column: 28, scope: !612)
!617 = !DILocation(line: 77, column: 34, scope: !612)
!618 = !DILocation(line: 77, column: 37, scope: !619)
!619 = !DILexicalBlockFile(scope: !612, file: !126, discriminator: 1)
!620 = !DILocation(line: 77, column: 43, scope: !619)
!621 = !DILocation(line: 77, column: 51, scope: !619)
!622 = !DILocation(line: 77, column: 48, scope: !619)
!623 = !DILocation(line: 77, column: 7, scope: !619)
!624 = !DILocation(line: 78, column: 11, scope: !612)
!625 = !DILocation(line: 78, column: 4, scope: !612)
!626 = !DILocation(line: 79, column: 2, scope: !607)
!627 = !DILocation(line: 75, column: 35, scope: !628)
!628 = !DILexicalBlockFile(scope: !604, file: !126, discriminator: 5)
!629 = !DILocation(line: 75, column: 39, scope: !628)
!630 = !DILocation(line: 75, column: 32, scope: !628)
!631 = !DILocation(line: 75, column: 2, scope: !628)
!632 = distinct !{!632, !633}
!633 = !DILocation(line: 75, column: 2, scope: !517)
!634 = !DILocation(line: 82, column: 2, scope: !517)
!635 = !DILocation(line: 83, column: 1, scope: !517)
!636 = distinct !DISubprogram(name: "alloc_vrrp_fd_bucket", scope: !126, file: !126, line: 87, type: !145, isLocal: false, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !130)
!637 = !DILocalVariable(name: "vrrp", arg: 1, scope: !636, file: !126, line: 87, type: !147)
!638 = !DILocation(line: 87, column: 30, scope: !636)
!639 = !DILocation(line: 90, column: 38, scope: !636)
!640 = !DILocation(line: 90, column: 44, scope: !636)
!641 = !DILocation(line: 90, column: 53, scope: !636)
!642 = !DILocation(line: 90, column: 59, scope: !636)
!643 = !DILocation(line: 90, column: 12, scope: !636)
!644 = !DILocation(line: 90, column: 23, scope: !636)
!645 = !DILocation(line: 90, column: 69, scope: !636)
!646 = !DILocation(line: 90, column: 2, scope: !636)
!647 = !DILocation(line: 91, column: 1, scope: !636)
!648 = distinct !DISubprogram(name: "remove_vrrp_fd_bucket", scope: !126, file: !126, line: 93, type: !649, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !130)
!649 = !DISubroutineType(types: !650)
!650 = !{null, !67}
!651 = !DILocalVariable(name: "old_fd", arg: 1, scope: !648, file: !126, line: 93, type: !67)
!652 = !DILocation(line: 93, column: 32, scope: !648)
!653 = !DILocalVariable(name: "vrrp_ptr", scope: !648, file: !126, line: 95, type: !147)
!654 = !DILocation(line: 95, column: 10, scope: !648)
!655 = !DILocalVariable(name: "e", scope: !648, file: !126, line: 96, type: !527)
!656 = !DILocation(line: 96, column: 10, scope: !648)
!657 = !DILocalVariable(name: "next", scope: !648, file: !126, line: 97, type: !527)
!658 = !DILocation(line: 97, column: 10, scope: !648)
!659 = !DILocalVariable(name: "l", scope: !648, file: !126, line: 98, type: !37)
!660 = !DILocation(line: 98, column: 7, scope: !648)
!661 = !DILocation(line: 98, column: 38, scope: !648)
!662 = !DILocation(line: 98, column: 45, scope: !648)
!663 = !DILocation(line: 98, column: 12, scope: !648)
!664 = !DILocation(line: 98, column: 23, scope: !648)
!665 = !DILocation(line: 100, column: 14, scope: !666)
!666 = distinct !DILexicalBlock(scope: !648, file: !126, line: 100, column: 2)
!667 = !DILocation(line: 100, column: 13, scope: !666)
!668 = !DILocation(line: 100, column: 12, scope: !666)
!669 = !DILocation(line: 100, column: 12, scope: !670)
!670 = !DILexicalBlockFile(scope: !666, file: !126, discriminator: 1)
!671 = !DILocation(line: 100, column: 13, scope: !672)
!672 = !DILexicalBlockFile(scope: !666, file: !126, discriminator: 2)
!673 = !DILocation(line: 100, column: 17, scope: !672)
!674 = !DILocation(line: 100, column: 12, scope: !672)
!675 = !DILocation(line: 100, column: 12, scope: !676)
!676 = !DILexicalBlockFile(scope: !666, file: !126, discriminator: 3)
!677 = !DILocation(line: 100, column: 9, scope: !676)
!678 = !DILocation(line: 100, column: 7, scope: !676)
!679 = !DILocation(line: 100, column: 24, scope: !680)
!680 = !DILexicalBlockFile(scope: !681, file: !126, discriminator: 4)
!681 = distinct !DILexicalBlock(scope: !666, file: !126, line: 100, column: 2)
!682 = !DILocation(line: 100, column: 2, scope: !680)
!683 = !DILocation(line: 101, column: 10, scope: !684)
!684 = distinct !DILexicalBlock(scope: !681, file: !126, line: 100, column: 37)
!685 = !DILocation(line: 101, column: 13, scope: !684)
!686 = !DILocation(line: 101, column: 8, scope: !684)
!687 = !DILocation(line: 102, column: 16, scope: !684)
!688 = !DILocation(line: 102, column: 20, scope: !684)
!689 = !DILocation(line: 102, column: 14, scope: !684)
!690 = !DILocation(line: 102, column: 12, scope: !684)
!691 = !DILocation(line: 103, column: 7, scope: !692)
!692 = distinct !DILexicalBlock(scope: !684, file: !126, line: 103, column: 7)
!693 = !DILocation(line: 103, column: 17, scope: !692)
!694 = !DILocation(line: 103, column: 26, scope: !692)
!695 = !DILocation(line: 103, column: 35, scope: !692)
!696 = !DILocation(line: 103, column: 32, scope: !692)
!697 = !DILocation(line: 103, column: 7, scope: !684)
!698 = !DILocation(line: 104, column: 8, scope: !699)
!699 = distinct !DILexicalBlock(scope: !700, file: !126, line: 104, column: 8)
!700 = distinct !DILexicalBlock(scope: !692, file: !126, line: 103, column: 43)
!701 = !DILocation(line: 104, column: 11, scope: !699)
!702 = !DILocation(line: 104, column: 8, scope: !700)
!703 = !DILocation(line: 105, column: 21, scope: !699)
!704 = !DILocation(line: 105, column: 24, scope: !699)
!705 = !DILocation(line: 105, column: 5, scope: !699)
!706 = !DILocation(line: 105, column: 8, scope: !699)
!707 = !DILocation(line: 105, column: 14, scope: !699)
!708 = !DILocation(line: 105, column: 19, scope: !699)
!709 = !DILocation(line: 107, column: 15, scope: !699)
!710 = !DILocation(line: 107, column: 18, scope: !699)
!711 = !DILocation(line: 107, column: 5, scope: !699)
!712 = !DILocation(line: 107, column: 8, scope: !699)
!713 = !DILocation(line: 107, column: 13, scope: !699)
!714 = !DILocation(line: 109, column: 8, scope: !715)
!715 = distinct !DILexicalBlock(scope: !700, file: !126, line: 109, column: 8)
!716 = !DILocation(line: 109, column: 11, scope: !715)
!717 = !DILocation(line: 109, column: 8, scope: !700)
!718 = !DILocation(line: 110, column: 21, scope: !715)
!719 = !DILocation(line: 110, column: 24, scope: !715)
!720 = !DILocation(line: 110, column: 5, scope: !715)
!721 = !DILocation(line: 110, column: 8, scope: !715)
!722 = !DILocation(line: 110, column: 14, scope: !715)
!723 = !DILocation(line: 110, column: 19, scope: !715)
!724 = !DILocation(line: 112, column: 15, scope: !715)
!725 = !DILocation(line: 112, column: 18, scope: !715)
!726 = !DILocation(line: 112, column: 5, scope: !715)
!727 = !DILocation(line: 112, column: 8, scope: !715)
!728 = !DILocation(line: 112, column: 13, scope: !715)
!729 = !DILocation(line: 113, column: 4, scope: !700)
!730 = !DILocation(line: 113, column: 7, scope: !700)
!731 = !DILocation(line: 113, column: 12, scope: !700)
!732 = !DILocation(line: 114, column: 10, scope: !700)
!733 = !DILocation(line: 114, column: 5, scope: !700)
!734 = !DILocation(line: 114, column: 18, scope: !700)
!735 = !DILocation(line: 115, column: 3, scope: !700)
!736 = !DILocation(line: 116, column: 2, scope: !684)
!737 = !DILocation(line: 100, column: 31, scope: !738)
!738 = !DILexicalBlockFile(scope: !681, file: !126, discriminator: 5)
!739 = !DILocation(line: 100, column: 29, scope: !738)
!740 = !DILocation(line: 100, column: 2, scope: !738)
!741 = distinct !{!741, !742}
!742 = !DILocation(line: 100, column: 2, scope: !648)
!743 = !DILocation(line: 117, column: 8, scope: !744)
!744 = distinct !DILexicalBlock(scope: !648, file: !126, line: 117, column: 6)
!745 = !DILocation(line: 117, column: 11, scope: !744)
!746 = !DILocation(line: 117, column: 5, scope: !744)
!747 = !DILocation(line: 117, column: 10, scope: !748)
!748 = !DILexicalBlockFile(scope: !744, file: !126, discriminator: 1)
!749 = !DILocation(line: 117, column: 14, scope: !748)
!750 = !DILocation(line: 117, column: 19, scope: !748)
!751 = !DILocation(line: 117, column: 5, scope: !748)
!752 = !DILocation(line: 117, column: 9, scope: !753)
!753 = !DILexicalBlockFile(scope: !744, file: !126, discriminator: 2)
!754 = !DILocation(line: 117, column: 13, scope: !753)
!755 = !DILocation(line: 117, column: 18, scope: !753)
!756 = !DILocation(line: 117, column: 6, scope: !753)
!757 = !DILocation(line: 118, column: 13, scope: !744)
!758 = !DILocation(line: 118, column: 16, scope: !744)
!759 = !DILocation(line: 118, column: 21, scope: !744)
!760 = !DILocation(line: 118, column: 3, scope: !744)
!761 = !DILocation(line: 118, column: 6, scope: !744)
!762 = !DILocation(line: 118, column: 11, scope: !744)
!763 = !DILocation(line: 119, column: 1, scope: !648)
