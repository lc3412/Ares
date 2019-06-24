; ModuleID = './[inter]keepalived--vrrp--vrrp_sync.o.i'
source_filename = "./[inter]keepalived--vrrp--vrrp_sync.o.i"
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
@.str = private unnamed_addr constant [70 x i8] c"Virtual router %s specified in sync group %s doesn't exist - ignoring\00", align 1
@.str.1 = private unnamed_addr constant [72 x i8] c"Virtual router %s cannot exist in more than one sync group; ignoring %s\00", align 1
@.str.2 = private unnamed_addr constant [98 x i8] c"Sync group %s has some member(s) as address owner and some not as address owner. This won't work.\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Sync group %s has only %d virtual router(s) - %s\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"this probably isn't what you want\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"removing\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"VRRP_Group(%s) Syncing instances to BACKUP state\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"VRRP_Group(%s) Syncing instances to MASTER state\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"VRRP_Group(%s) Syncing instances to FAULT state\00", align 1
@garp_delay = common global %struct._list* null, align 8

; Function Attrs: nounwind uwtable
define %struct._vrrp_t* @vrrp_get_instance(i8*) #0 !dbg !140 {
  %2 = alloca %struct._vrrp_t*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct._vrrp_t*, align 8
  %5 = alloca %struct._list*, align 8
  %6 = alloca %struct._element*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !501, metadata !502), !dbg !503
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %4, metadata !504, metadata !502), !dbg !505
  call void @llvm.dbg.declare(metadata %struct._list** %5, metadata !506, metadata !502), !dbg !507
  %7 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !508
  %8 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %7, i32 0, i32 5, !dbg !509
  %9 = load %struct._list*, %struct._list** %8, align 8, !dbg !509
  store %struct._list* %9, %struct._list** %5, align 8, !dbg !507
  call void @llvm.dbg.declare(metadata %struct._element** %6, metadata !510, metadata !502), !dbg !512
  %10 = load %struct._list*, %struct._list** %5, align 8, !dbg !513
  %11 = icmp ne %struct._list* %10, null, !dbg !515
  br i1 %11, label %13, label %12, !dbg !516

; <label>:12:                                     ; preds = %1
  br label %17, !dbg !517

; <label>:13:                                     ; preds = %1
  %14 = load %struct._list*, %struct._list** %5, align 8, !dbg !519
  %15 = getelementptr inbounds %struct._list, %struct._list* %14, i32 0, i32 0, !dbg !521
  %16 = load %struct._element*, %struct._element** %15, align 8, !dbg !521
  br label %17, !dbg !522

; <label>:17:                                     ; preds = %13, %12
  %18 = phi %struct._element* [ null, %12 ], [ %16, %13 ], !dbg !523
  store %struct._element* %18, %struct._element** %6, align 8, !dbg !525
  br label %19, !dbg !526

; <label>:19:                                     ; preds = %36, %17
  %20 = load %struct._element*, %struct._element** %6, align 8, !dbg !527
  %21 = icmp ne %struct._element* %20, null, !dbg !530
  br i1 %21, label %22, label %40, !dbg !530

; <label>:22:                                     ; preds = %19
  %23 = load %struct._element*, %struct._element** %6, align 8, !dbg !531
  %24 = getelementptr inbounds %struct._element, %struct._element* %23, i32 0, i32 2, !dbg !533
  %25 = load i8*, i8** %24, align 8, !dbg !533
  %26 = bitcast i8* %25 to %struct._vrrp_t*, !dbg !534
  store %struct._vrrp_t* %26, %struct._vrrp_t** %4, align 8, !dbg !535
  %27 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !536
  %28 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %27, i32 0, i32 1, !dbg !538
  %29 = load i8*, i8** %28, align 8, !dbg !538
  %30 = load i8*, i8** %3, align 8, !dbg !539
  %31 = call i32 @strcmp(i8* %29, i8* %30) #4, !dbg !540
  %32 = icmp eq i32 %31, 0, !dbg !541
  br i1 %32, label %33, label %35, !dbg !542

; <label>:33:                                     ; preds = %22
  %34 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !543
  store %struct._vrrp_t* %34, %struct._vrrp_t** %2, align 8, !dbg !544
  br label %41, !dbg !544

; <label>:35:                                     ; preds = %22
  br label %36, !dbg !545

; <label>:36:                                     ; preds = %35
  %37 = load %struct._element*, %struct._element** %6, align 8, !dbg !546
  %38 = getelementptr inbounds %struct._element, %struct._element* %37, i32 0, i32 0, !dbg !548
  %39 = load %struct._element*, %struct._element** %38, align 8, !dbg !548
  store %struct._element* %39, %struct._element** %6, align 8, !dbg !549
  br label %19, !dbg !550, !llvm.loop !551

; <label>:40:                                     ; preds = %19
  store %struct._vrrp_t* null, %struct._vrrp_t** %2, align 8, !dbg !553
  br label %41, !dbg !553

; <label>:41:                                     ; preds = %40, %33
  %42 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !554
  ret %struct._vrrp_t* %42, !dbg !554
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @vrrp_sync_set_group(%struct._vrrp_sgroup*) #0 !dbg !555 {
  %2 = alloca %struct._vrrp_sgroup*, align 8
  %3 = alloca %struct._vrrp_t*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store %struct._vrrp_sgroup* %0, %struct._vrrp_sgroup** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vrrp_sgroup** %2, metadata !558, metadata !502), !dbg !559
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !560, metadata !502), !dbg !561
  call void @llvm.dbg.declare(metadata i8** %4, metadata !562, metadata !502), !dbg !563
  call void @llvm.dbg.declare(metadata i32* %5, metadata !564, metadata !502), !dbg !565
  call void @llvm.dbg.declare(metadata i8* %6, metadata !566, metadata !502), !dbg !567
  store i8 0, i8* %6, align 1, !dbg !567
  %7 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %2, align 8, !dbg !568
  %8 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %7, i32 0, i32 1, !dbg !570
  %9 = load %struct._vector*, %struct._vector** %8, align 8, !dbg !570
  %10 = icmp ne %struct._vector* %9, null, !dbg !568
  br i1 %10, label %12, label %11, !dbg !571

; <label>:11:                                     ; preds = %1
  br label %151, !dbg !572

; <label>:12:                                     ; preds = %1
  %13 = call %struct._list* @alloc_list(void (i8*)* null, void (%struct._IO_FILE*, i8*)* null), !dbg !573
  %14 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %2, align 8, !dbg !574
  %15 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %14, i32 0, i32 2, !dbg !575
  store %struct._list* %13, %struct._list** %15, align 8, !dbg !576
  store i32 0, i32* %5, align 4, !dbg !577
  br label %16, !dbg !579

; <label>:16:                                     ; preds = %103, %12
  %17 = load i32, i32* %5, align 4, !dbg !580
  %18 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %2, align 8, !dbg !583
  %19 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %18, i32 0, i32 1, !dbg !584
  %20 = load %struct._vector*, %struct._vector** %19, align 8, !dbg !584
  %21 = getelementptr inbounds %struct._vector, %struct._vector* %20, i32 0, i32 1, !dbg !585
  %22 = load i32, i32* %21, align 4, !dbg !585
  %23 = icmp ult i32 %17, %22, !dbg !586
  br i1 %23, label %24, label %106, !dbg !587

; <label>:24:                                     ; preds = %16
  %25 = load i32, i32* %5, align 4, !dbg !588
  %26 = zext i32 %25 to i64, !dbg !590
  %27 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %2, align 8, !dbg !591
  %28 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %27, i32 0, i32 1, !dbg !592
  %29 = load %struct._vector*, %struct._vector** %28, align 8, !dbg !592
  %30 = getelementptr inbounds %struct._vector, %struct._vector* %29, i32 0, i32 2, !dbg !593
  %31 = load i8**, i8*** %30, align 8, !dbg !593
  %32 = getelementptr inbounds i8*, i8** %31, i64 %26, !dbg !590
  %33 = load i8*, i8** %32, align 8, !dbg !590
  store i8* %33, i8** %4, align 8, !dbg !594
  %34 = load i8*, i8** %4, align 8, !dbg !595
  %35 = call %struct._vrrp_t* @vrrp_get_instance(i8* %34), !dbg !596
  store %struct._vrrp_t* %35, %struct._vrrp_t** %3, align 8, !dbg !597
  %36 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !598
  %37 = icmp ne %struct._vrrp_t* %36, null, !dbg !598
  br i1 %37, label %43, label %38, !dbg !600

; <label>:38:                                     ; preds = %24
  %39 = load i8*, i8** %4, align 8, !dbg !601
  %40 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %2, align 8, !dbg !603
  %41 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %40, i32 0, i32 0, !dbg !604
  %42 = load i8*, i8** %41, align 8, !dbg !604
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i32 0, i32 0), i8* %39, i8* %42), !dbg !605
  br label %103, !dbg !606

; <label>:43:                                     ; preds = %24
  %44 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !607
  %45 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %44, i32 0, i32 2, !dbg !609
  %46 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %45, align 8, !dbg !609
  %47 = icmp ne %struct._vrrp_sgroup* %46, null, !dbg !607
  br i1 %47, label %48, label %53, !dbg !610

; <label>:48:                                     ; preds = %43
  %49 = load i8*, i8** %4, align 8, !dbg !611
  %50 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %2, align 8, !dbg !613
  %51 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %50, i32 0, i32 0, !dbg !614
  %52 = load i8*, i8** %51, align 8, !dbg !614
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i32 0, i32 0), i8* %49, i8* %52), !dbg !615
  br label %103, !dbg !616

; <label>:53:                                     ; preds = %43
  %54 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %2, align 8, !dbg !617
  %55 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %54, i32 0, i32 2, !dbg !618
  %56 = load %struct._list*, %struct._list** %55, align 8, !dbg !618
  %57 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !619
  %58 = bitcast %struct._vrrp_t* %57 to i8*, !dbg !619
  call void @list_add(%struct._list* %56, i8* %58), !dbg !620
  %59 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %2, align 8, !dbg !621
  %60 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !622
  %61 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %60, i32 0, i32 2, !dbg !623
  store %struct._vrrp_sgroup* %59, %struct._vrrp_sgroup** %61, align 8, !dbg !624
  %62 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %2, align 8, !dbg !625
  %63 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %62, i32 0, i32 5, !dbg !627
  %64 = load i32, i32* %63, align 8, !dbg !627
  %65 = icmp eq i32 %64, 2, !dbg !628
  br i1 %65, label %66, label %75, !dbg !629

; <label>:66:                                     ; preds = %53
  %67 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !630
  %68 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %67, i32 0, i32 56, !dbg !632
  %69 = load i32, i32* %68, align 4, !dbg !632
  %70 = icmp eq i32 %69, 1, !dbg !633
  br i1 %70, label %71, label %75, !dbg !634

; <label>:71:                                     ; preds = %66
  %72 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %2, align 8, !dbg !635
  %73 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %72, i32 0, i32 0, !dbg !636
  %74 = load i8*, i8** %73, align 8, !dbg !636
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.2, i32 0, i32 0), i8* %74), !dbg !637
  br label %75, !dbg !637

; <label>:75:                                     ; preds = %71, %66, %53
  %76 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %2, align 8, !dbg !638
  %77 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %76, i32 0, i32 5, !dbg !640
  %78 = load i32, i32* %77, align 8, !dbg !640
  %79 = icmp ne i32 %78, 1, !dbg !641
  br i1 %79, label %80, label %96, !dbg !642

; <label>:80:                                     ; preds = %75
  %81 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !643
  %82 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %81, i32 0, i32 56, !dbg !644
  %83 = load i32, i32* %82, align 4, !dbg !644
  %84 = icmp eq i32 %83, 2, !dbg !645
  br i1 %84, label %85, label %91, !dbg !646

; <label>:85:                                     ; preds = %80
  %86 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !647
  %87 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %86, i32 0, i32 37, !dbg !649
  %88 = load i8, i8* %87, align 1, !dbg !649
  %89 = zext i8 %88 to i32, !dbg !647
  %90 = icmp eq i32 %89, 255, !dbg !650
  br label %91

; <label>:91:                                     ; preds = %85, %80
  %92 = phi i1 [ false, %80 ], [ %90, %85 ]
  %93 = select i1 %92, i32 2, i32 1, !dbg !651
  %94 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %2, align 8, !dbg !653
  %95 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %94, i32 0, i32 5, !dbg !654
  store i32 %93, i32* %95, align 8, !dbg !655
  br label %96, !dbg !653

; <label>:96:                                     ; preds = %91, %75
  %97 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !656
  %98 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %97, i32 0, i32 55, !dbg !658
  %99 = load i32, i32* %98, align 8, !dbg !658
  %100 = icmp eq i32 %99, 3, !dbg !659
  br i1 %100, label %101, label %102, !dbg !660

; <label>:101:                                    ; preds = %96
  store i8 1, i8* %6, align 1, !dbg !661
  br label %102, !dbg !662

; <label>:102:                                    ; preds = %101, %96
  br label %103, !dbg !663

; <label>:103:                                    ; preds = %102, %48, %38
  %104 = load i32, i32* %5, align 4, !dbg !664
  %105 = add i32 %104, 1, !dbg !664
  store i32 %105, i32* %5, align 4, !dbg !664
  br label %16, !dbg !666, !llvm.loop !667

; <label>:106:                                    ; preds = %16
  %107 = load i8, i8* %6, align 1, !dbg !669
  %108 = trunc i8 %107 to i1, !dbg !669
  br i1 %108, label %109, label %112, !dbg !671

; <label>:109:                                    ; preds = %106
  %110 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %2, align 8, !dbg !672
  %111 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %110, i32 0, i32 5, !dbg !673
  store i32 3, i32* %111, align 8, !dbg !674
  br label %112, !dbg !672

; <label>:112:                                    ; preds = %109, %106
  %113 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %2, align 8, !dbg !675
  %114 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %113, i32 0, i32 2, !dbg !677
  %115 = load %struct._list*, %struct._list** %114, align 8, !dbg !677
  %116 = getelementptr inbounds %struct._list, %struct._list* %115, i32 0, i32 2, !dbg !678
  %117 = load i32, i32* %116, align 8, !dbg !678
  %118 = icmp ule i32 %117, 1, !dbg !679
  br i1 %118, label %119, label %145, !dbg !680

; <label>:119:                                    ; preds = %112
  %120 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %2, align 8, !dbg !681
  %121 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %120, i32 0, i32 0, !dbg !683
  %122 = load i8*, i8** %121, align 8, !dbg !683
  %123 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %2, align 8, !dbg !684
  %124 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %123, i32 0, i32 2, !dbg !685
  %125 = load %struct._list*, %struct._list** %124, align 8, !dbg !685
  %126 = getelementptr inbounds %struct._list, %struct._list* %125, i32 0, i32 2, !dbg !686
  %127 = load i32, i32* %126, align 8, !dbg !686
  %128 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %2, align 8, !dbg !687
  %129 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %128, i32 0, i32 2, !dbg !688
  %130 = load %struct._list*, %struct._list** %129, align 8, !dbg !688
  %131 = getelementptr inbounds %struct._list, %struct._list* %130, i32 0, i32 2, !dbg !689
  %132 = load i32, i32* %131, align 8, !dbg !689
  %133 = icmp ne i32 %132, 0, !dbg !690
  %134 = select i1 %133, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), !dbg !690
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i32 0, i32 0), i8* %122, i32 %127, i8* %134), !dbg !691
  %135 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %2, align 8, !dbg !692
  %136 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %135, i32 0, i32 2, !dbg !694
  %137 = load %struct._list*, %struct._list** %136, align 8, !dbg !694
  %138 = getelementptr inbounds %struct._list, %struct._list* %137, i32 0, i32 2, !dbg !695
  %139 = load i32, i32* %138, align 8, !dbg !695
  %140 = icmp ne i32 %139, 0, !dbg !696
  br i1 %140, label %144, label %141, !dbg !697

; <label>:141:                                    ; preds = %119
  %142 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %2, align 8, !dbg !698
  %143 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %142, i32 0, i32 2, !dbg !699
  call void @free_list(%struct._list** %143), !dbg !700
  br label %144, !dbg !700

; <label>:144:                                    ; preds = %141, %119
  br label %145, !dbg !701

; <label>:145:                                    ; preds = %144, %112
  %146 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %2, align 8, !dbg !702
  %147 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %146, i32 0, i32 1, !dbg !703
  %148 = load %struct._vector*, %struct._vector** %147, align 8, !dbg !703
  call void @free_strvec(%struct._vector* %148), !dbg !704
  %149 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %2, align 8, !dbg !705
  %150 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %149, i32 0, i32 1, !dbg !706
  store %struct._vector* null, %struct._vector** %150, align 8, !dbg !707
  br label %151, !dbg !708

; <label>:151:                                    ; preds = %145, %11
  ret void, !dbg !709
}

declare %struct._list* @alloc_list(void (i8*)*, void (%struct._IO_FILE*, i8*)*) #3

declare void @report_config_error(i32, i8*, ...) #3

declare void @list_add(%struct._list*, i8*) #3

declare void @free_list(%struct._list**) #3

declare void @free_strvec(%struct._vector*) #3

; Function Attrs: nounwind uwtable
define zeroext i1 @vrrp_sync_can_goto_master(%struct._vrrp_t*) #0 !dbg !711 {
  %2 = alloca i1, align 1
  %3 = alloca %struct._vrrp_t*, align 8
  %4 = alloca %struct._vrrp_t*, align 8
  %5 = alloca %struct._vrrp_sgroup*, align 8
  %6 = alloca %struct._list*, align 8
  %7 = alloca %struct._element*, align 8
  store %struct._vrrp_t* %0, %struct._vrrp_t** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !714, metadata !502), !dbg !715
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %4, metadata !716, metadata !502), !dbg !717
  call void @llvm.dbg.declare(metadata %struct._vrrp_sgroup** %5, metadata !718, metadata !502), !dbg !719
  %8 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !720
  %9 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %8, i32 0, i32 2, !dbg !721
  %10 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %9, align 8, !dbg !721
  store %struct._vrrp_sgroup* %10, %struct._vrrp_sgroup** %5, align 8, !dbg !719
  call void @llvm.dbg.declare(metadata %struct._list** %6, metadata !722, metadata !502), !dbg !723
  %11 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %5, align 8, !dbg !724
  %12 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %11, i32 0, i32 2, !dbg !725
  %13 = load %struct._list*, %struct._list** %12, align 8, !dbg !725
  store %struct._list* %13, %struct._list** %6, align 8, !dbg !723
  call void @llvm.dbg.declare(metadata %struct._element** %7, metadata !726, metadata !502), !dbg !727
  %14 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %5, align 8, !dbg !728
  %15 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %14, i32 0, i32 5, !dbg !730
  %16 = load i32, i32* %15, align 8, !dbg !730
  %17 = icmp eq i32 %16, 2, !dbg !731
  br i1 %17, label %18, label %19, !dbg !732

; <label>:18:                                     ; preds = %1
  store i1 true, i1* %2, align 1, !dbg !733
  br label %52, !dbg !733

; <label>:19:                                     ; preds = %1
  %20 = load %struct._list*, %struct._list** %6, align 8, !dbg !734
  %21 = icmp ne %struct._list* %20, null, !dbg !736
  br i1 %21, label %23, label %22, !dbg !737

; <label>:22:                                     ; preds = %19
  br label %27, !dbg !738

; <label>:23:                                     ; preds = %19
  %24 = load %struct._list*, %struct._list** %6, align 8, !dbg !740
  %25 = getelementptr inbounds %struct._list, %struct._list* %24, i32 0, i32 0, !dbg !742
  %26 = load %struct._element*, %struct._element** %25, align 8, !dbg !742
  br label %27, !dbg !743

; <label>:27:                                     ; preds = %23, %22
  %28 = phi %struct._element* [ null, %22 ], [ %26, %23 ], !dbg !744
  store %struct._element* %28, %struct._element** %7, align 8, !dbg !746
  br label %29, !dbg !747

; <label>:29:                                     ; preds = %47, %27
  %30 = load %struct._element*, %struct._element** %7, align 8, !dbg !748
  %31 = icmp ne %struct._element* %30, null, !dbg !751
  br i1 %31, label %32, label %51, !dbg !751

; <label>:32:                                     ; preds = %29
  %33 = load %struct._element*, %struct._element** %7, align 8, !dbg !752
  %34 = getelementptr inbounds %struct._element, %struct._element* %33, i32 0, i32 2, !dbg !754
  %35 = load i8*, i8** %34, align 8, !dbg !754
  %36 = bitcast i8* %35 to %struct._vrrp_t*, !dbg !755
  store %struct._vrrp_t* %36, %struct._vrrp_t** %4, align 8, !dbg !756
  %37 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !757
  %38 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !759
  %39 = icmp ne %struct._vrrp_t* %37, %38, !dbg !760
  br i1 %39, label %40, label %46, !dbg !761

; <label>:40:                                     ; preds = %32
  %41 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !762
  %42 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %41, i32 0, i32 56, !dbg !764
  %43 = load i32, i32* %42, align 4, !dbg !764
  %44 = icmp ne i32 %43, 2, !dbg !765
  br i1 %44, label %45, label %46, !dbg !766

; <label>:45:                                     ; preds = %40
  store i1 false, i1* %2, align 1, !dbg !767
  br label %52, !dbg !767

; <label>:46:                                     ; preds = %40, %32
  br label %47, !dbg !769

; <label>:47:                                     ; preds = %46
  %48 = load %struct._element*, %struct._element** %7, align 8, !dbg !770
  %49 = getelementptr inbounds %struct._element, %struct._element* %48, i32 0, i32 0, !dbg !772
  %50 = load %struct._element*, %struct._element** %49, align 8, !dbg !772
  store %struct._element* %50, %struct._element** %7, align 8, !dbg !773
  br label %29, !dbg !774, !llvm.loop !775

; <label>:51:                                     ; preds = %29
  store i1 true, i1* %2, align 1, !dbg !777
  br label %52, !dbg !777

; <label>:52:                                     ; preds = %51, %45, %18
  %53 = load i1, i1* %2, align 1, !dbg !778
  ret i1 %53, !dbg !778
}

; Function Attrs: nounwind uwtable
define void @vrrp_sync_backup(%struct._vrrp_t*) #0 !dbg !779 {
  %2 = alloca %struct._vrrp_t*, align 8
  %3 = alloca %struct._vrrp_t*, align 8
  %4 = alloca %struct._vrrp_sgroup*, align 8
  %5 = alloca %struct._list*, align 8
  %6 = alloca %struct._element*, align 8
  store %struct._vrrp_t* %0, %struct._vrrp_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %2, metadata !782, metadata !502), !dbg !783
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !784, metadata !502), !dbg !785
  call void @llvm.dbg.declare(metadata %struct._vrrp_sgroup** %4, metadata !786, metadata !502), !dbg !787
  %7 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !788
  %8 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %7, i32 0, i32 2, !dbg !789
  %9 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %8, align 8, !dbg !789
  store %struct._vrrp_sgroup* %9, %struct._vrrp_sgroup** %4, align 8, !dbg !787
  call void @llvm.dbg.declare(metadata %struct._list** %5, metadata !790, metadata !502), !dbg !791
  %10 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %4, align 8, !dbg !792
  %11 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %10, i32 0, i32 2, !dbg !793
  %12 = load %struct._list*, %struct._list** %11, align 8, !dbg !793
  store %struct._list* %12, %struct._list** %5, align 8, !dbg !791
  call void @llvm.dbg.declare(metadata %struct._element** %6, metadata !794, metadata !502), !dbg !795
  %13 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %4, align 8, !dbg !796
  %14 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %13, i32 0, i32 5, !dbg !798
  %15 = load i32, i32* %14, align 8, !dbg !798
  %16 = icmp eq i32 %15, 1, !dbg !799
  br i1 %16, label %17, label %18, !dbg !800

; <label>:17:                                     ; preds = %1
  br label %74, !dbg !801

; <label>:18:                                     ; preds = %1
  %19 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %4, align 8, !dbg !802
  %20 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %19, i32 0, i32 0, !dbg !803
  %21 = load i8*, i8** %20, align 8, !dbg !803
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i32 0, i32 0), i8* %21), !dbg !804
  %22 = load %struct._list*, %struct._list** %5, align 8, !dbg !805
  %23 = icmp ne %struct._list* %22, null, !dbg !807
  br i1 %23, label %25, label %24, !dbg !808

; <label>:24:                                     ; preds = %18
  br label %29, !dbg !809

; <label>:25:                                     ; preds = %18
  %26 = load %struct._list*, %struct._list** %5, align 8, !dbg !811
  %27 = getelementptr inbounds %struct._list, %struct._list* %26, i32 0, i32 0, !dbg !813
  %28 = load %struct._element*, %struct._element** %27, align 8, !dbg !813
  br label %29, !dbg !814

; <label>:29:                                     ; preds = %25, %24
  %30 = phi %struct._element* [ null, %24 ], [ %28, %25 ], !dbg !815
  store %struct._element* %30, %struct._element** %6, align 8, !dbg !817
  br label %31, !dbg !818

; <label>:31:                                     ; preds = %66, %29
  %32 = load %struct._element*, %struct._element** %6, align 8, !dbg !819
  %33 = icmp ne %struct._element* %32, null, !dbg !822
  br i1 %33, label %34, label %70, !dbg !822

; <label>:34:                                     ; preds = %31
  %35 = load %struct._element*, %struct._element** %6, align 8, !dbg !823
  %36 = getelementptr inbounds %struct._element, %struct._element* %35, i32 0, i32 2, !dbg !825
  %37 = load i8*, i8** %36, align 8, !dbg !825
  %38 = bitcast i8* %37 to %struct._vrrp_t*, !dbg !826
  store %struct._vrrp_t* %38, %struct._vrrp_t** %3, align 8, !dbg !827
  %39 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !828
  %40 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !830
  %41 = icmp eq %struct._vrrp_t* %39, %40, !dbg !831
  br i1 %41, label %47, label %42, !dbg !832

; <label>:42:                                     ; preds = %34
  %43 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !833
  %44 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %43, i32 0, i32 55, !dbg !835
  %45 = load i32, i32* %44, align 8, !dbg !835
  %46 = icmp eq i32 %45, 1, !dbg !836
  br i1 %46, label %47, label %48, !dbg !837

; <label>:47:                                     ; preds = %42, %34
  br label %66, !dbg !838

; <label>:48:                                     ; preds = %42
  %49 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !839
  %50 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %49, i32 0, i32 56, !dbg !840
  store i32 1, i32* %50, align 4, !dbg !841
  %51 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !842
  %52 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %51, i32 0, i32 55, !dbg !844
  %53 = load i32, i32* %52, align 8, !dbg !844
  %54 = icmp eq i32 %53, 3, !dbg !845
  br i1 %54, label %60, label %55, !dbg !846

; <label>:55:                                     ; preds = %48
  %56 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !847
  %57 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %56, i32 0, i32 55, !dbg !848
  %58 = load i32, i32* %57, align 8, !dbg !848
  %59 = icmp eq i32 %58, 0, !dbg !849
  br i1 %59, label %60, label %62, !dbg !850

; <label>:60:                                     ; preds = %55, %48
  %61 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !852
  call void @vrrp_state_leave_fault(%struct._vrrp_t* %61), !dbg !854
  br label %64, !dbg !855

; <label>:62:                                     ; preds = %55
  %63 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !856
  call void @vrrp_state_leave_master(%struct._vrrp_t* %63, i1 zeroext false), !dbg !857
  br label %64

; <label>:64:                                     ; preds = %62, %60
  %65 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !858
  call void @vrrp_thread_requeue_read(%struct._vrrp_t* %65), !dbg !859
  br label %66, !dbg !860

; <label>:66:                                     ; preds = %64, %47
  %67 = load %struct._element*, %struct._element** %6, align 8, !dbg !861
  %68 = getelementptr inbounds %struct._element, %struct._element* %67, i32 0, i32 0, !dbg !863
  %69 = load %struct._element*, %struct._element** %68, align 8, !dbg !863
  store %struct._element* %69, %struct._element** %6, align 8, !dbg !864
  br label %31, !dbg !865, !llvm.loop !866

; <label>:70:                                     ; preds = %31
  %71 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %4, align 8, !dbg !868
  %72 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %71, i32 0, i32 5, !dbg !869
  store i32 1, i32* %72, align 8, !dbg !870
  %73 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %4, align 8, !dbg !871
  call void @send_group_notifies(%struct._vrrp_sgroup* %73), !dbg !872
  br label %74, !dbg !873

; <label>:74:                                     ; preds = %70, %17
  ret void, !dbg !874
}

declare void @log_message(i32, i8*, ...) #3

declare void @vrrp_state_leave_fault(%struct._vrrp_t*) #3

declare void @vrrp_state_leave_master(%struct._vrrp_t*, i1 zeroext) #3

declare void @vrrp_thread_requeue_read(%struct._vrrp_t*) #3

declare void @send_group_notifies(%struct._vrrp_sgroup*) #3

; Function Attrs: nounwind uwtable
define void @vrrp_sync_master(%struct._vrrp_t*) #0 !dbg !876 {
  %2 = alloca %struct._vrrp_t*, align 8
  %3 = alloca %struct._vrrp_t*, align 8
  %4 = alloca %struct._vrrp_sgroup*, align 8
  %5 = alloca %struct._list*, align 8
  %6 = alloca %struct._element*, align 8
  store %struct._vrrp_t* %0, %struct._vrrp_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %2, metadata !877, metadata !502), !dbg !878
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !879, metadata !502), !dbg !880
  call void @llvm.dbg.declare(metadata %struct._vrrp_sgroup** %4, metadata !881, metadata !502), !dbg !882
  %7 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !883
  %8 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %7, i32 0, i32 2, !dbg !884
  %9 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %8, align 8, !dbg !884
  store %struct._vrrp_sgroup* %9, %struct._vrrp_sgroup** %4, align 8, !dbg !882
  call void @llvm.dbg.declare(metadata %struct._list** %5, metadata !885, metadata !502), !dbg !886
  %10 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %4, align 8, !dbg !887
  %11 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %10, i32 0, i32 2, !dbg !888
  %12 = load %struct._list*, %struct._list** %11, align 8, !dbg !888
  store %struct._list* %12, %struct._list** %5, align 8, !dbg !886
  call void @llvm.dbg.declare(metadata %struct._element** %6, metadata !889, metadata !502), !dbg !890
  %13 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %4, align 8, !dbg !891
  %14 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %13, i32 0, i32 5, !dbg !893
  %15 = load i32, i32* %14, align 8, !dbg !893
  %16 = icmp eq i32 %15, 2, !dbg !894
  br i1 %16, label %17, label %18, !dbg !895

; <label>:17:                                     ; preds = %1
  br label %65, !dbg !896

; <label>:18:                                     ; preds = %1
  %19 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !897
  %20 = call zeroext i1 @vrrp_sync_can_goto_master(%struct._vrrp_t* %19), !dbg !899
  br i1 %20, label %22, label %21, !dbg !900

; <label>:21:                                     ; preds = %18
  br label %65, !dbg !901

; <label>:22:                                     ; preds = %18
  %23 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %4, align 8, !dbg !902
  %24 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %23, i32 0, i32 0, !dbg !903
  %25 = load i8*, i8** %24, align 8, !dbg !903
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i32 0, i32 0), i8* %25), !dbg !904
  %26 = load %struct._list*, %struct._list** %5, align 8, !dbg !905
  %27 = icmp ne %struct._list* %26, null, !dbg !907
  br i1 %27, label %29, label %28, !dbg !908

; <label>:28:                                     ; preds = %22
  br label %33, !dbg !909

; <label>:29:                                     ; preds = %22
  %30 = load %struct._list*, %struct._list** %5, align 8, !dbg !911
  %31 = getelementptr inbounds %struct._list, %struct._list* %30, i32 0, i32 0, !dbg !913
  %32 = load %struct._element*, %struct._element** %31, align 8, !dbg !913
  br label %33, !dbg !914

; <label>:33:                                     ; preds = %29, %28
  %34 = phi %struct._element* [ null, %28 ], [ %32, %29 ], !dbg !915
  store %struct._element* %34, %struct._element** %6, align 8, !dbg !917
  br label %35, !dbg !918

; <label>:35:                                     ; preds = %57, %33
  %36 = load %struct._element*, %struct._element** %6, align 8, !dbg !919
  %37 = icmp ne %struct._element* %36, null, !dbg !922
  br i1 %37, label %38, label %61, !dbg !922

; <label>:38:                                     ; preds = %35
  %39 = load %struct._element*, %struct._element** %6, align 8, !dbg !923
  %40 = getelementptr inbounds %struct._element, %struct._element* %39, i32 0, i32 2, !dbg !925
  %41 = load i8*, i8** %40, align 8, !dbg !925
  %42 = bitcast i8* %41 to %struct._vrrp_t*, !dbg !926
  store %struct._vrrp_t* %42, %struct._vrrp_t** %3, align 8, !dbg !927
  %43 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !928
  %44 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !930
  %45 = icmp ne %struct._vrrp_t* %43, %44, !dbg !931
  br i1 %45, label %46, label %56, !dbg !932

; <label>:46:                                     ; preds = %38
  %47 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !933
  %48 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %47, i32 0, i32 55, !dbg !935
  %49 = load i32, i32* %48, align 8, !dbg !935
  %50 = icmp ne i32 %49, 2, !dbg !936
  br i1 %50, label %51, label %56, !dbg !937

; <label>:51:                                     ; preds = %46
  %52 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !938
  %53 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %52, i32 0, i32 56, !dbg !940
  store i32 2, i32* %53, align 4, !dbg !941
  %54 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !942
  call void @vrrp_state_goto_master(%struct._vrrp_t* %54), !dbg !943
  %55 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !944
  call void @vrrp_thread_requeue_read(%struct._vrrp_t* %55), !dbg !945
  br label %56, !dbg !946

; <label>:56:                                     ; preds = %51, %46, %38
  br label %57, !dbg !947

; <label>:57:                                     ; preds = %56
  %58 = load %struct._element*, %struct._element** %6, align 8, !dbg !948
  %59 = getelementptr inbounds %struct._element, %struct._element* %58, i32 0, i32 0, !dbg !950
  %60 = load %struct._element*, %struct._element** %59, align 8, !dbg !950
  store %struct._element* %60, %struct._element** %6, align 8, !dbg !951
  br label %35, !dbg !952, !llvm.loop !953

; <label>:61:                                     ; preds = %35
  %62 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %4, align 8, !dbg !955
  %63 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %62, i32 0, i32 5, !dbg !956
  store i32 2, i32* %63, align 8, !dbg !957
  %64 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %4, align 8, !dbg !958
  call void @send_group_notifies(%struct._vrrp_sgroup* %64), !dbg !959
  br label %65, !dbg !960

; <label>:65:                                     ; preds = %61, %21, %17
  ret void, !dbg !961
}

declare void @vrrp_state_goto_master(%struct._vrrp_t*) #3

; Function Attrs: nounwind uwtable
define void @vrrp_sync_fault(%struct._vrrp_t*) #0 !dbg !963 {
  %2 = alloca %struct._vrrp_t*, align 8
  %3 = alloca %struct._vrrp_t*, align 8
  %4 = alloca %struct._vrrp_sgroup*, align 8
  %5 = alloca %struct._list*, align 8
  %6 = alloca %struct._element*, align 8
  store %struct._vrrp_t* %0, %struct._vrrp_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %2, metadata !964, metadata !502), !dbg !965
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !966, metadata !502), !dbg !967
  call void @llvm.dbg.declare(metadata %struct._vrrp_sgroup** %4, metadata !968, metadata !502), !dbg !969
  %7 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !970
  %8 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %7, i32 0, i32 2, !dbg !971
  %9 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %8, align 8, !dbg !971
  store %struct._vrrp_sgroup* %9, %struct._vrrp_sgroup** %4, align 8, !dbg !969
  call void @llvm.dbg.declare(metadata %struct._list** %5, metadata !972, metadata !502), !dbg !973
  %10 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %4, align 8, !dbg !974
  %11 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %10, i32 0, i32 2, !dbg !975
  %12 = load %struct._list*, %struct._list** %11, align 8, !dbg !975
  store %struct._list* %12, %struct._list** %5, align 8, !dbg !973
  call void @llvm.dbg.declare(metadata %struct._element** %6, metadata !976, metadata !502), !dbg !977
  %13 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %4, align 8, !dbg !978
  %14 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %13, i32 0, i32 5, !dbg !980
  %15 = load i32, i32* %14, align 8, !dbg !980
  %16 = icmp eq i32 %15, 3, !dbg !981
  br i1 %16, label %17, label %18, !dbg !982

; <label>:17:                                     ; preds = %1
  br label %81, !dbg !983

; <label>:18:                                     ; preds = %1
  %19 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %4, align 8, !dbg !984
  %20 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %19, i32 0, i32 0, !dbg !985
  %21 = load i8*, i8** %20, align 8, !dbg !985
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i32 0, i32 0), i8* %21), !dbg !986
  %22 = load %struct._list*, %struct._list** %5, align 8, !dbg !987
  %23 = icmp ne %struct._list* %22, null, !dbg !989
  br i1 %23, label %25, label %24, !dbg !990

; <label>:24:                                     ; preds = %18
  br label %29, !dbg !991

; <label>:25:                                     ; preds = %18
  %26 = load %struct._list*, %struct._list** %5, align 8, !dbg !993
  %27 = getelementptr inbounds %struct._list, %struct._list* %26, i32 0, i32 0, !dbg !995
  %28 = load %struct._element*, %struct._element** %27, align 8, !dbg !995
  br label %29, !dbg !996

; <label>:29:                                     ; preds = %25, %24
  %30 = phi %struct._element* [ null, %24 ], [ %28, %25 ], !dbg !997
  store %struct._element* %30, %struct._element** %6, align 8, !dbg !999
  br label %31, !dbg !1000

; <label>:31:                                     ; preds = %73, %29
  %32 = load %struct._element*, %struct._element** %6, align 8, !dbg !1001
  %33 = icmp ne %struct._element* %32, null, !dbg !1004
  br i1 %33, label %34, label %77, !dbg !1004

; <label>:34:                                     ; preds = %31
  %35 = load %struct._element*, %struct._element** %6, align 8, !dbg !1005
  %36 = getelementptr inbounds %struct._element, %struct._element* %35, i32 0, i32 2, !dbg !1007
  %37 = load i8*, i8** %36, align 8, !dbg !1007
  %38 = bitcast i8* %37 to %struct._vrrp_t*, !dbg !1008
  store %struct._vrrp_t* %38, %struct._vrrp_t** %3, align 8, !dbg !1009
  %39 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1010
  %40 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !1012
  %41 = icmp ne %struct._vrrp_t* %39, %40, !dbg !1013
  br i1 %41, label %42, label %72, !dbg !1014

; <label>:42:                                     ; preds = %34
  %43 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1015
  %44 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %43, i32 0, i32 55, !dbg !1017
  %45 = load i32, i32* %44, align 8, !dbg !1017
  %46 = icmp ne i32 %45, 3, !dbg !1018
  br i1 %46, label %47, label %72, !dbg !1019

; <label>:47:                                     ; preds = %42
  %48 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1020
  %49 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %48, i32 0, i32 56, !dbg !1022
  store i32 3, i32* %49, align 4, !dbg !1023
  %50 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1024
  %51 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %50, i32 0, i32 55, !dbg !1026
  %52 = load i32, i32* %51, align 8, !dbg !1026
  %53 = icmp eq i32 %52, 2, !dbg !1027
  br i1 %53, label %54, label %56, !dbg !1028

; <label>:54:                                     ; preds = %47
  %55 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1029
  call void @vrrp_state_leave_master(%struct._vrrp_t* %55, i1 zeroext false), !dbg !1031
  br label %71, !dbg !1032

; <label>:56:                                     ; preds = %47
  %57 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1033
  %58 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %57, i32 0, i32 55, !dbg !1035
  %59 = load i32, i32* %58, align 8, !dbg !1035
  %60 = icmp eq i32 %59, 1, !dbg !1036
  br i1 %60, label %66, label %61, !dbg !1037

; <label>:61:                                     ; preds = %56
  %62 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1038
  %63 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %62, i32 0, i32 55, !dbg !1040
  %64 = load i32, i32* %63, align 8, !dbg !1040
  %65 = icmp eq i32 %64, 0, !dbg !1041
  br i1 %65, label %66, label %70, !dbg !1042

; <label>:66:                                     ; preds = %61, %56
  %67 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1043
  %68 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %67, i32 0, i32 55, !dbg !1045
  store i32 3, i32* %68, align 8, !dbg !1046
  %69 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1047
  call void @vrrp_state_leave_fault(%struct._vrrp_t* %69), !dbg !1048
  br label %70, !dbg !1049

; <label>:70:                                     ; preds = %66, %61
  br label %71

; <label>:71:                                     ; preds = %70, %54
  br label %72, !dbg !1050

; <label>:72:                                     ; preds = %71, %42, %34
  br label %73, !dbg !1051

; <label>:73:                                     ; preds = %72
  %74 = load %struct._element*, %struct._element** %6, align 8, !dbg !1052
  %75 = getelementptr inbounds %struct._element, %struct._element* %74, i32 0, i32 0, !dbg !1054
  %76 = load %struct._element*, %struct._element** %75, align 8, !dbg !1054
  store %struct._element* %76, %struct._element** %6, align 8, !dbg !1055
  br label %31, !dbg !1056, !llvm.loop !1057

; <label>:77:                                     ; preds = %31
  %78 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %4, align 8, !dbg !1059
  %79 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %78, i32 0, i32 5, !dbg !1060
  store i32 3, i32* %79, align 8, !dbg !1061
  %80 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %4, align 8, !dbg !1062
  call void @send_group_notifies(%struct._vrrp_sgroup* %80), !dbg !1063
  br label %81, !dbg !1064

; <label>:81:                                     ; preds = %77, %17
  ret void, !dbg !1065
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!137, !138}
!llvm.ident = !{!139}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !48)
!1 = !DIFile(filename: "[inter]keepalived--vrrp--vrrp_sync.o.i", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
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
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !33, line: 44, size: 32, align: 32, elements: !34)
!33 = !DIFile(filename: "../../lib/parser.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!34 = !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47}
!35 = !DIEnumerator(name: "CONFIG_OK", value: 0)
!36 = !DIEnumerator(name: "CONFIG_FILE_NOT_FOUND", value: 1)
!37 = !DIEnumerator(name: "CONFIG_BAD_IF", value: 2)
!38 = !DIEnumerator(name: "CONFIG_FATAL", value: 3)
!39 = !DIEnumerator(name: "CONFIG_MULTIPLE_FILES", value: 4)
!40 = !DIEnumerator(name: "CONFIG_UNKNOWN_KEYWORD", value: 5)
!41 = !DIEnumerator(name: "CONFIG_UNEXPECTED_BOB", value: 6)
!42 = !DIEnumerator(name: "CONFIG_MISSING_BOB", value: 7)
!43 = !DIEnumerator(name: "CONFIG_UNMATCHED_QUOTE", value: 8)
!44 = !DIEnumerator(name: "CONFIG_MISSING_PARAMETER", value: 9)
!45 = !DIEnumerator(name: "CONFIG_INVALID_NUMBER", value: 10)
!46 = !DIEnumerator(name: "CONFIG_GENERAL_ERROR", value: 11)
!47 = !DIEnumerator(name: "CONFIG_SECURITY_ERROR", value: 12)
!48 = !{!49}
!49 = distinct !DIGlobalVariable(name: "garp_delay", scope: !0, file: !50, line: 150, type: !51, isLocal: false, isDefinition: true, variable: %struct._list** @garp_delay)
!50 = !DIFile(filename: "./../include/vrrp_if.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !52, line: 31, baseType: !53)
!52 = !DIFile(filename: "../../lib/list.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_list", file: !52, line: 39, size: 320, align: 64, elements: !55)
!55 = !{!56, !64, !65, !67, !71}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !54, file: !52, line: 40, baseType: !57, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_element", file: !52, line: 33, size: 192, align: 64, elements: !59)
!59 = !{!60, !61, !62}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !58, file: !52, line: 34, baseType: !57, size: 64, align: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !58, file: !52, line: 35, baseType: !57, size: 64, align: 64, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !58, file: !52, line: 36, baseType: !63, size: 64, align: 64, offset: 128)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !54, file: !52, line: 41, baseType: !57, size: 64, align: 64, offset: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !54, file: !52, line: 42, baseType: !66, size: 32, align: 32, offset: 128)
!66 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !54, file: !52, line: 43, baseType: !68, size: 64, align: 64, offset: 192)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{null, !63}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "dump", scope: !54, file: !52, line: 44, baseType: !72, size: 64, align: 64, offset: 256)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!73 = !DISubroutineType(types: !74)
!74 = !{null, !75, !63}
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64, align: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !77, line: 48, baseType: !78)
!77 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !79, line: 241, size: 1728, align: 64, elements: !80)
!79 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!80 = !{!81, !83, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !104, !105, !106, !107, !111, !113, !115, !119, !122, !124, !125, !126, !127, !128, !132, !133}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !78, file: !79, line: 242, baseType: !82, size: 32, align: 32)
!82 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !78, file: !79, line: 247, baseType: !84, size: 64, align: 64, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, align: 64)
!85 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !78, file: !79, line: 248, baseType: !84, size: 64, align: 64, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !78, file: !79, line: 249, baseType: !84, size: 64, align: 64, offset: 192)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !78, file: !79, line: 250, baseType: !84, size: 64, align: 64, offset: 256)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !78, file: !79, line: 251, baseType: !84, size: 64, align: 64, offset: 320)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !78, file: !79, line: 252, baseType: !84, size: 64, align: 64, offset: 384)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !78, file: !79, line: 253, baseType: !84, size: 64, align: 64, offset: 448)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !78, file: !79, line: 254, baseType: !84, size: 64, align: 64, offset: 512)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !78, file: !79, line: 256, baseType: !84, size: 64, align: 64, offset: 576)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !78, file: !79, line: 257, baseType: !84, size: 64, align: 64, offset: 640)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !78, file: !79, line: 258, baseType: !84, size: 64, align: 64, offset: 704)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !78, file: !79, line: 260, baseType: !97, size: 64, align: 64, offset: 768)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64, align: 64)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !79, line: 156, size: 192, align: 64, elements: !99)
!99 = !{!100, !101, !103}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !98, file: !79, line: 157, baseType: !97, size: 64, align: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !98, file: !79, line: 158, baseType: !102, size: 64, align: 64, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64, align: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !98, file: !79, line: 162, baseType: !82, size: 32, align: 32, offset: 128)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !78, file: !79, line: 262, baseType: !102, size: 64, align: 64, offset: 832)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !78, file: !79, line: 264, baseType: !82, size: 32, align: 32, offset: 896)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !78, file: !79, line: 268, baseType: !82, size: 32, align: 32, offset: 928)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !78, file: !79, line: 270, baseType: !108, size: 64, align: 64, offset: 960)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !109, line: 131, baseType: !110)
!109 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!110 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !78, file: !79, line: 274, baseType: !112, size: 16, align: 16, offset: 1024)
!112 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !78, file: !79, line: 275, baseType: !114, size: 8, align: 8, offset: 1040)
!114 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !78, file: !79, line: 276, baseType: !116, size: 8, align: 8, offset: 1048)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 8, align: 8, elements: !117)
!117 = !{!118}
!118 = !DISubrange(count: 1)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !78, file: !79, line: 280, baseType: !120, size: 64, align: 64, offset: 1088)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64, align: 64)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !79, line: 150, baseType: null)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !78, file: !79, line: 289, baseType: !123, size: 64, align: 64, offset: 1152)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !109, line: 132, baseType: !110)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !78, file: !79, line: 297, baseType: !63, size: 64, align: 64, offset: 1216)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !78, file: !79, line: 298, baseType: !63, size: 64, align: 64, offset: 1280)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !78, file: !79, line: 299, baseType: !63, size: 64, align: 64, offset: 1344)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !78, file: !79, line: 300, baseType: !63, size: 64, align: 64, offset: 1408)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !78, file: !79, line: 302, baseType: !129, size: 64, align: 64, offset: 1472)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !130, line: 216, baseType: !131)
!130 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!131 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !78, file: !79, line: 303, baseType: !82, size: 32, align: 32, offset: 1536)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !78, file: !79, line: 305, baseType: !134, size: 160, align: 8, offset: 1568)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 160, align: 8, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 20)
!137 = !{i32 2, !"Dwarf Version", i32 4}
!138 = !{i32 2, !"Debug Info Version", i32 3}
!139 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!140 = distinct !DISubprogram(name: "vrrp_get_instance", scope: !141, file: !141, line: 37, type: !142, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !500)
!141 = !DIFile(filename: "vrrp_sync.c", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!142 = !DISubroutineType(types: !143)
!143 = !{!144, !84}
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64, align: 64)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "vrrp_t", file: !4, line: 310, baseType: !146)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vrrp_t", file: !4, line: 183, size: 7040, align: 64, elements: !147)
!147 = !{!148, !151, !152, !202, !224, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !330, !331, !332, !333, !334, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !492, !499}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !146, file: !4, line: 184, baseType: !149, size: 16, align: 16)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !150, line: 28, baseType: !112)
!150 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!151 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !146, file: !4, line: 185, baseType: !84, size: 64, align: 64, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !146, file: !4, line: 186, baseType: !153, size: 64, align: 64, offset: 128)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64, align: 64)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "vrrp_sgroup_t", file: !4, line: 133, baseType: !155)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vrrp_sgroup", file: !4, line: 109, size: 1024, align: 64, elements: !156)
!156 = !{!157, !158, !168, !169, !170, !171, !172, !174, !175, !176, !177, !178, !179, !196, !197, !198, !199, !200, !201}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !155, file: !4, line: 110, baseType: !84, size: 64, align: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !155, file: !4, line: 111, baseType: !159, size: 64, align: 64, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64, align: 64)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "vector_t", file: !161, line: 34, baseType: !162)
!161 = !DIFile(filename: "../../lib/vector.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vector", file: !161, line: 30, size: 128, align: 64, elements: !163)
!163 = !{!164, !165, !166}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !162, file: !161, line: 31, baseType: !66, size: 32, align: 32)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !162, file: !161, line: 32, baseType: !66, size: 32, align: 32, offset: 32)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !162, file: !161, line: 33, baseType: !167, size: 64, align: 64, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "vrrp_instances", scope: !155, file: !4, line: 112, baseType: !51, size: 64, align: 64, offset: 128)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "num_member_fault", scope: !155, file: !4, line: 113, baseType: !66, size: 32, align: 32, offset: 192)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "num_member_init", scope: !155, file: !4, line: 114, baseType: !66, size: 32, align: 32, offset: 224)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !155, file: !4, line: 115, baseType: !82, size: 32, align: 32, offset: 256)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "sgroup_tracking_weight", scope: !155, file: !4, line: 116, baseType: !173, size: 8, align: 8, offset: 288)
!173 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "track_ifp", scope: !155, file: !4, line: 119, baseType: !51, size: 64, align: 64, offset: 320)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "track_script", scope: !155, file: !4, line: 120, baseType: !51, size: 64, align: 64, offset: 384)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "track_file", scope: !155, file: !4, line: 121, baseType: !51, size: 64, align: 64, offset: 448)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "track_bfd", scope: !155, file: !4, line: 122, baseType: !51, size: 64, align: 64, offset: 512)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "notify_exec", scope: !155, file: !4, line: 125, baseType: !173, size: 8, align: 8, offset: 576)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "script_backup", scope: !155, file: !4, line: 126, baseType: !180, size: 64, align: 64, offset: 640)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64, align: 64)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "notify_script_t", file: !182, line: 65, baseType: !183)
!182 = !DIFile(filename: "../../lib/notify.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_notify_script", file: !182, line: 59, size: 192, align: 64, elements: !184)
!184 = !{!185, !187, !188, !189, !193}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !183, file: !182, line: 60, baseType: !186, size: 64, align: 64)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64, align: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "num_args", scope: !183, file: !182, line: 61, baseType: !82, size: 32, align: 32, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !183, file: !182, line: 62, baseType: !82, size: 32, align: 32, offset: 96)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !183, file: !182, line: 63, baseType: !190, size: 32, align: 32, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !191, line: 80, baseType: !192)
!191 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !109, line: 125, baseType: !66)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !183, file: !182, line: 64, baseType: !194, size: 32, align: 32, offset: 160)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !191, line: 65, baseType: !195)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !109, line: 126, baseType: !66)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "script_master", scope: !155, file: !4, line: 127, baseType: !180, size: 64, align: 64, offset: 704)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "script_fault", scope: !155, file: !4, line: 128, baseType: !180, size: 64, align: 64, offset: 768)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "script_stop", scope: !155, file: !4, line: 129, baseType: !180, size: 64, align: 64, offset: 832)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "script", scope: !155, file: !4, line: 130, baseType: !180, size: 64, align: 64, offset: 896)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "smtp_alert", scope: !155, file: !4, line: 131, baseType: !82, size: 32, align: 32, offset: 960)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "last_email_state", scope: !155, file: !4, line: 132, baseType: !82, size: 32, align: 32, offset: 992)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !146, file: !4, line: 187, baseType: !203, size: 64, align: 64, offset: 192)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64, align: 64)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "vrrp_stats", file: !4, line: 169, baseType: !205)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vrrp_stats", file: !4, line: 136, size: 768, align: 64, elements: !206)
!206 = !{!207, !210, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "advert_rcvd", scope: !205, file: !4, line: 137, baseType: !208, size: 64, align: 64)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !209, line: 55, baseType: !131)
!209 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!210 = !DIDerivedType(tag: DW_TAG_member, name: "advert_sent", scope: !205, file: !4, line: 138, baseType: !211, size: 32, align: 32, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !209, line: 51, baseType: !66)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "become_master", scope: !205, file: !4, line: 140, baseType: !211, size: 32, align: 32, offset: 96)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "release_master", scope: !205, file: !4, line: 141, baseType: !211, size: 32, align: 32, offset: 128)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "packet_len_err", scope: !205, file: !4, line: 143, baseType: !208, size: 64, align: 64, offset: 192)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "advert_interval_err", scope: !205, file: !4, line: 144, baseType: !208, size: 64, align: 64, offset: 256)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "ip_ttl_err", scope: !205, file: !4, line: 145, baseType: !208, size: 64, align: 64, offset: 320)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "invalid_type_rcvd", scope: !205, file: !4, line: 146, baseType: !208, size: 64, align: 64, offset: 384)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "addr_list_err", scope: !205, file: !4, line: 147, baseType: !208, size: 64, align: 64, offset: 448)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "invalid_authtype", scope: !205, file: !4, line: 149, baseType: !211, size: 32, align: 32, offset: 512)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "authtype_mismatch", scope: !205, file: !4, line: 151, baseType: !211, size: 32, align: 32, offset: 544)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "auth_failure", scope: !205, file: !4, line: 152, baseType: !211, size: 32, align: 32, offset: 576)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "pri_zero_rcvd", scope: !205, file: !4, line: 155, baseType: !208, size: 64, align: 64, offset: 640)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "pri_zero_sent", scope: !205, file: !4, line: 156, baseType: !208, size: 64, align: 64, offset: 704)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "ifp", scope: !146, file: !4, line: 188, baseType: !225, size: 64, align: 64, offset: 256)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64, align: 64)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "interface_t", file: !50, line: 111, baseType: !227)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_interface", file: !50, line: 76, size: 1792, align: 64, elements: !228)
!228 = !{!229, !233, !235, !241, !260, !261, !262, !263, !264, !270, !271, !272, !273, !274, !275, !277, !278, !279, !280, !301, !302, !303, !304, !305, !306, !307, !308}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "ifname", scope: !227, file: !50, line: 77, baseType: !230, size: 128, align: 8)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 128, align: 8, elements: !231)
!231 = !{!232}
!232 = !DISubrange(count: 16)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "ifindex", scope: !227, file: !50, line: 78, baseType: !234, size: 32, align: 32, offset: 128)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "ifindex_t", file: !50, line: 62, baseType: !211)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !227, file: !50, line: 79, baseType: !236, size: 32, align: 32, offset: 160)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !237, line: 31, size: 32, align: 32, elements: !238)
!237 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!238 = !{!239}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !236, file: !237, line: 33, baseType: !240, size: 32, align: 32)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !237, line: 30, baseType: !211)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !227, file: !50, line: 80, baseType: !242, size: 128, align: 32, offset: 192)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !237, line: 211, size: 128, align: 32, elements: !243)
!243 = !{!244}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !242, file: !237, line: 220, baseType: !245, size: 128, align: 32)
!245 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !242, file: !237, line: 213, size: 128, align: 32, elements: !246)
!246 = !{!247, !251, !256}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !245, file: !237, line: 215, baseType: !248, size: 128, align: 8)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 128, align: 8, elements: !231)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !209, line: 48, baseType: !250)
!250 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !245, file: !237, line: 217, baseType: !252, size: 128, align: 16)
!252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 128, align: 16, elements: !254)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !209, line: 49, baseType: !112)
!254 = !{!255}
!255 = !DISubrange(count: 8)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !245, file: !237, line: 218, baseType: !257, size: 128, align: 32)
!257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 128, align: 32, elements: !258)
!258 = !{!259}
!259 = !DISubrange(count: 4)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "ifi_flags", scope: !227, file: !50, line: 81, baseType: !66, size: 32, align: 32, offset: 320)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "linkbeat_use_polling", scope: !227, file: !50, line: 82, baseType: !173, size: 8, align: 8, offset: 352)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !227, file: !50, line: 83, baseType: !211, size: 32, align: 32, offset: 384)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "hw_type", scope: !227, file: !50, line: 84, baseType: !112, size: 16, align: 16, offset: 416)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr", scope: !227, file: !50, line: 85, baseType: !265, size: 256, align: 8, offset: 432)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 256, align: 8, elements: !268)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !191, line: 33, baseType: !267)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_char", file: !109, line: 30, baseType: !250)
!268 = !{!269}
!269 = !DISubrange(count: 32)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr_bcast", scope: !227, file: !50, line: 86, baseType: !265, size: 256, align: 8, offset: 688)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr_len", scope: !227, file: !50, line: 87, baseType: !129, size: 64, align: 64, offset: 960)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "lb_type", scope: !227, file: !50, line: 88, baseType: !82, size: 32, align: 32, offset: 1024)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "vmac", scope: !227, file: !50, line: 90, baseType: !173, size: 8, align: 8, offset: 1056)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "base_ifindex", scope: !227, file: !50, line: 91, baseType: !234, size: 32, align: 32, offset: 1088)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "base_ifp", scope: !227, file: !50, line: 92, baseType: !276, size: 64, align: 64, offset: 1152)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, align: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master_ifindex", scope: !227, file: !50, line: 94, baseType: !234, size: 32, align: 32, offset: 1216)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master_ifp", scope: !227, file: !50, line: 96, baseType: !276, size: 64, align: 64, offset: 1280)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master", scope: !227, file: !50, line: 97, baseType: !173, size: 8, align: 8, offset: 1344)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "garp_delay", scope: !227, file: !50, line: 100, baseType: !281, size: 64, align: 64, offset: 1408)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64, align: 64)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "garp_delay_t", file: !50, line: 73, baseType: !283)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_garp_delay", file: !50, line: 65, size: 704, align: 64, elements: !284)
!284 = !{!285, !295, !296, !297, !298, !299, !300}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "garp_interval", scope: !283, file: !50, line: 66, baseType: !286, size: 128, align: 64)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "timeval_t", file: !287, line: 31, baseType: !288)
!287 = !DIFile(filename: "../../lib/timer.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !289, line: 30, size: 128, align: 64, elements: !290)
!289 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!290 = !{!291, !293}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !288, file: !289, line: 32, baseType: !292, size: 64, align: 64)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !109, line: 139, baseType: !110)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !288, file: !289, line: 33, baseType: !294, size: 64, align: 64, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !109, line: 141, baseType: !110)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "have_garp_interval", scope: !283, file: !50, line: 67, baseType: !173, size: 8, align: 8, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "gna_interval", scope: !283, file: !50, line: 68, baseType: !286, size: 128, align: 64, offset: 192)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "have_gna_interval", scope: !283, file: !50, line: 69, baseType: !173, size: 8, align: 8, offset: 320)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "garp_next_time", scope: !283, file: !50, line: 70, baseType: !286, size: 128, align: 64, offset: 384)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "gna_next_time", scope: !283, file: !50, line: 71, baseType: !286, size: 128, align: 64, offset: 512)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "aggregation_group", scope: !283, file: !50, line: 72, baseType: !82, size: 32, align: 32, offset: 640)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "gna_router", scope: !227, file: !50, line: 101, baseType: !173, size: 8, align: 8, offset: 1472)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_config", scope: !227, file: !50, line: 102, baseType: !82, size: 32, align: 32, offset: 1504)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_ignore_value", scope: !227, file: !50, line: 103, baseType: !211, size: 32, align: 32, offset: 1536)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_filter_value", scope: !227, file: !50, line: 104, baseType: !211, size: 32, align: 32, offset: 1568)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "reset_promote_secondaries", scope: !227, file: !50, line: 105, baseType: !211, size: 32, align: 32, offset: 1600)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "rp_filter", scope: !227, file: !50, line: 107, baseType: !66, size: 32, align: 32, offset: 1632)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "promote_secondaries_already_set", scope: !227, file: !50, line: 109, baseType: !173, size: 8, align: 8, offset: 1664)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "tracking_vrrp", scope: !227, file: !50, line: 110, baseType: !51, size: 64, align: 64, offset: 1728)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "dont_track_primary", scope: !146, file: !4, line: 189, baseType: !173, size: 8, align: 8, offset: 320)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "linkbeat_use_polling", scope: !146, file: !4, line: 190, baseType: !173, size: 8, align: 8, offset: 328)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "skip_check_adv_addr", scope: !146, file: !4, line: 191, baseType: !173, size: 8, align: 8, offset: 336)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "strict_mode", scope: !146, file: !4, line: 193, baseType: !66, size: 32, align: 32, offset: 352)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "vmac_flags", scope: !146, file: !4, line: 195, baseType: !131, size: 64, align: 64, offset: 384)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "vmac_ifname", scope: !146, file: !4, line: 196, baseType: !230, size: 128, align: 8, offset: 448)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "track_ifp", scope: !146, file: !4, line: 198, baseType: !51, size: 64, align: 64, offset: 576)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "track_script", scope: !146, file: !4, line: 199, baseType: !51, size: 64, align: 64, offset: 640)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "track_file", scope: !146, file: !4, line: 200, baseType: !51, size: 64, align: 64, offset: 704)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "num_script_if_fault", scope: !146, file: !4, line: 204, baseType: !66, size: 32, align: 32, offset: 768)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "num_script_init", scope: !146, file: !4, line: 205, baseType: !66, size: 32, align: 32, offset: 800)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "saddr", scope: !146, file: !4, line: 206, baseType: !321, size: 1024, align: 64, offset: 832)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_storage", file: !322, line: 166, size: 1024, align: 64, elements: !323)
!322 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!323 = !{!324, !325, !329}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "ss_family", scope: !321, file: !322, line: 168, baseType: !149, size: 16, align: 16)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_padding", scope: !321, file: !322, line: 169, baseType: !326, size: 944, align: 8, offset: 16)
!326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 944, align: 8, elements: !327)
!327 = !{!328}
!328 = !DISubrange(count: 118)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_align", scope: !321, file: !322, line: 170, baseType: !131, size: 64, align: 64, offset: 960)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "saddr_from_config", scope: !146, file: !4, line: 207, baseType: !173, size: 8, align: 8, offset: 1856)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "track_saddr", scope: !146, file: !4, line: 208, baseType: !173, size: 8, align: 8, offset: 1864)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "pkt_saddr", scope: !146, file: !4, line: 209, baseType: !321, size: 1024, align: 64, offset: 1920)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "unicast_peer", scope: !146, file: !4, line: 210, baseType: !51, size: 64, align: 64, offset: 2944)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "unicast_chksum_compat", scope: !146, file: !4, line: 212, baseType: !335, size: 32, align: 32, offset: 3008)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "chksum_compatibility_t", file: !4, line: 179, baseType: !3)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "master_saddr", scope: !146, file: !4, line: 214, baseType: !321, size: 1024, align: 64, offset: 3072)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "master_priority", scope: !146, file: !4, line: 215, baseType: !249, size: 8, align: 8, offset: 4096)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "last_transition", scope: !146, file: !4, line: 216, baseType: !286, size: 128, align: 64, offset: 4160)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "garp_delay", scope: !146, file: !4, line: 217, baseType: !66, size: 32, align: 32, offset: 4288)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "garp_refresh", scope: !146, file: !4, line: 218, baseType: !286, size: 128, align: 64, offset: 4352)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "garp_refresh_timer", scope: !146, file: !4, line: 219, baseType: !286, size: 128, align: 64, offset: 4480)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "garp_rep", scope: !146, file: !4, line: 220, baseType: !66, size: 32, align: 32, offset: 4608)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "garp_refresh_rep", scope: !146, file: !4, line: 221, baseType: !66, size: 32, align: 32, offset: 4640)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "garp_lower_prio_delay", scope: !146, file: !4, line: 222, baseType: !66, size: 32, align: 32, offset: 4672)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "garp_pending", scope: !146, file: !4, line: 223, baseType: !173, size: 8, align: 8, offset: 4704)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "gna_pending", scope: !146, file: !4, line: 224, baseType: !173, size: 8, align: 8, offset: 4712)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "garp_lower_prio_rep", scope: !146, file: !4, line: 225, baseType: !66, size: 32, align: 32, offset: 4736)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "lower_prio_no_advert", scope: !146, file: !4, line: 226, baseType: !66, size: 32, align: 32, offset: 4768)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "higher_prio_send_advert", scope: !146, file: !4, line: 227, baseType: !66, size: 32, align: 32, offset: 4800)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "vrid", scope: !146, file: !4, line: 228, baseType: !249, size: 8, align: 8, offset: 4832)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "base_priority", scope: !146, file: !4, line: 229, baseType: !249, size: 8, align: 8, offset: 4840)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "effective_priority", scope: !146, file: !4, line: 230, baseType: !249, size: 8, align: 8, offset: 4848)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "total_priority", scope: !146, file: !4, line: 231, baseType: !82, size: 32, align: 32, offset: 4864)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "vipset", scope: !146, file: !4, line: 233, baseType: !173, size: 8, align: 8, offset: 4896)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "vip", scope: !146, file: !4, line: 234, baseType: !51, size: 64, align: 64, offset: 4928)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "evip", scope: !146, file: !4, line: 235, baseType: !51, size: 64, align: 64, offset: 4992)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "promote_secondaries", scope: !146, file: !4, line: 239, baseType: !173, size: 8, align: 8, offset: 5056)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "evip_add_ipv6", scope: !146, file: !4, line: 240, baseType: !173, size: 8, align: 8, offset: 5064)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "vroutes", scope: !146, file: !4, line: 241, baseType: !51, size: 64, align: 64, offset: 5120)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "vrules", scope: !146, file: !4, line: 242, baseType: !51, size: 64, align: 64, offset: 5184)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "adver_int", scope: !146, file: !4, line: 243, baseType: !66, size: 32, align: 32, offset: 5248)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "master_adver_int", scope: !146, file: !4, line: 244, baseType: !66, size: 32, align: 32, offset: 5280)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "accept", scope: !146, file: !4, line: 249, baseType: !66, size: 32, align: 32, offset: 5312)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_rx_buf_size", scope: !146, file: !4, line: 252, baseType: !129, size: 64, align: 64, offset: 5376)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "iptable_rules_set", scope: !146, file: !4, line: 254, baseType: !173, size: 8, align: 8, offset: 5440)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "nopreempt", scope: !146, file: !4, line: 255, baseType: !173, size: 8, align: 8, offset: 5448)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_delay", scope: !146, file: !4, line: 256, baseType: !131, size: 64, align: 64, offset: 5504)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_time", scope: !146, file: !4, line: 260, baseType: !286, size: 128, align: 64, offset: 5568)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !146, file: !4, line: 261, baseType: !82, size: 32, align: 32, offset: 5696)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "wantstate", scope: !146, file: !4, line: 265, baseType: !82, size: 32, align: 32, offset: 5728)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "reload_master", scope: !146, file: !4, line: 266, baseType: !173, size: 8, align: 8, offset: 5760)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "sockets", scope: !146, file: !4, line: 267, baseType: !373, size: 64, align: 64, offset: 5824)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64, align: 64)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "sock_t", file: !375, line: 50, baseType: !376)
!375 = !DIFile(filename: "./../include/vrrp_sock.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sock", file: !375, line: 40, size: 1344, align: 64, elements: !377)
!377 = !{!378, !379, !380, !381, !382, !383, !384, !385, !386}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !376, file: !375, line: 41, baseType: !149, size: 16, align: 16)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "saddr", scope: !376, file: !375, line: 42, baseType: !321, size: 1024, align: 64, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "proto", scope: !376, file: !375, line: 43, baseType: !82, size: 32, align: 32, offset: 1088)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "ifindex", scope: !376, file: !375, line: 44, baseType: !234, size: 32, align: 32, offset: 1120)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "unicast", scope: !376, file: !375, line: 45, baseType: !173, size: 8, align: 8, offset: 1152)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "fd_in", scope: !376, file: !375, line: 46, baseType: !82, size: 32, align: 32, offset: 1184)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "fd_out", scope: !376, file: !375, line: 47, baseType: !82, size: 32, align: 32, offset: 1216)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "rx_buf_size", scope: !376, file: !375, line: 48, baseType: !82, size: 32, align: 32, offset: 1248)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !376, file: !375, line: 49, baseType: !387, size: 64, align: 64, offset: 1280)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64, align: 64)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_t", file: !12, line: 99, baseType: !389)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread", file: !12, line: 78, size: 768, align: 64, elements: !390)
!390 = !{!391, !392, !394, !447, !452, !453, !454, !466, !468}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !389, file: !12, line: 79, baseType: !131, size: 64, align: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !389, file: !12, line: 80, baseType: !393, size: 32, align: 32, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_type_t", file: !12, line: 63, baseType: !11)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !389, file: !12, line: 81, baseType: !395, size: 64, align: 64, offset: 128)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64, align: 64)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_master", file: !12, line: 112, size: 1280, align: 64, elements: !397)
!397 = !{!398, !410, !411, !412, !413, !421, !422, !423, !424, !425, !428, !439, !440, !441, !442, !443, !444, !445, !446}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !396, file: !12, line: 113, baseType: !399, size: 64, align: 64)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "rb_root_t", file: !400, line: 109, baseType: !401)
!400 = !DIFile(filename: "../../lib/rbtree.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !400, line: 106, size: 64, align: 64, elements: !402)
!402 = !{!403}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !401, file: !400, line: 108, baseType: !404, size: 64, align: 64)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64, align: 64)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !400, line: 97, size: 192, align: 64, elements: !406)
!406 = !{!407, !408, !409}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "rb_parent_color", scope: !405, file: !400, line: 99, baseType: !131, size: 64, align: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !405, file: !400, line: 102, baseType: !404, size: 64, align: 64, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !405, file: !400, line: 103, baseType: !404, size: 64, align: 64, offset: 128)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !396, file: !12, line: 114, baseType: !399, size: 64, align: 64, offset: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !396, file: !12, line: 115, baseType: !399, size: 64, align: 64, offset: 128)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !396, file: !12, line: 116, baseType: !399, size: 64, align: 64, offset: 192)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !396, file: !12, line: 117, baseType: !414, size: 128, align: 64, offset: 256)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "list_head_t", file: !415, line: 62, baseType: !416)
!415 = !DIFile(filename: "../../lib/list_head.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !415, line: 60, size: 128, align: 64, elements: !417)
!417 = !{!418, !420}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !416, file: !415, line: 61, baseType: !419, size: 64, align: 64)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64, align: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !416, file: !415, line: 61, baseType: !419, size: 64, align: 64, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !396, file: !12, line: 121, baseType: !414, size: 128, align: 64, offset: 384)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "unuse", scope: !396, file: !12, line: 122, baseType: !414, size: 128, align: 64, offset: 512)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "child_pid_index", scope: !396, file: !12, line: 124, baseType: !51, size: 64, align: 64, offset: 640)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "io_events", scope: !396, file: !12, line: 127, baseType: !399, size: 64, align: 64, offset: 704)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_events", scope: !396, file: !12, line: 128, baseType: !426, size: 64, align: 64, offset: 768)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64, align: 64)
!427 = !DICompositeType(tag: DW_TAG_structure_type, name: "epoll_event", file: !12, line: 128, flags: DIFlagFwdDecl)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "current_event", scope: !396, file: !12, line: 129, baseType: !429, size: 64, align: 64, offset: 832)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64, align: 64)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_event_t", file: !12, line: 109, baseType: !431)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_event", file: !12, line: 102, size: 448, align: 64, elements: !432)
!432 = !{!433, !434, !435, !436, !437}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !431, file: !12, line: 103, baseType: !387, size: 64, align: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !431, file: !12, line: 104, baseType: !387, size: 64, align: 64, offset: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !431, file: !12, line: 105, baseType: !131, size: 64, align: 64, offset: 128)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !431, file: !12, line: 106, baseType: !82, size: 32, align: 32, offset: 192)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !431, file: !12, line: 108, baseType: !438, size: 192, align: 64, offset: 256)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "rb_node_t", file: !400, line: 104, baseType: !405)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_size", scope: !396, file: !12, line: 130, baseType: !66, size: 32, align: 32, offset: 896)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_count", scope: !396, file: !12, line: 131, baseType: !66, size: 32, align: 32, offset: 928)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_fd", scope: !396, file: !12, line: 132, baseType: !82, size: 32, align: 32, offset: 960)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "timer_fd", scope: !396, file: !12, line: 135, baseType: !82, size: 32, align: 32, offset: 992)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "timer_thread", scope: !396, file: !12, line: 136, baseType: !387, size: 64, align: 64, offset: 1024)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !396, file: !12, line: 146, baseType: !131, size: 64, align: 64, offset: 1088)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !396, file: !12, line: 147, baseType: !131, size: 64, align: 64, offset: 1152)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_timer_running", scope: !396, file: !12, line: 148, baseType: !173, size: 8, align: 8, offset: 1216)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !389, file: !12, line: 82, baseType: !448, size: 64, align: 64, offset: 192)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64, align: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{!82, !451}
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64, align: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !389, file: !12, line: 83, baseType: !63, size: 64, align: 64, offset: 256)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "sands", scope: !389, file: !12, line: 84, baseType: !286, size: 128, align: 64, offset: 320)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !389, file: !12, line: 92, baseType: !455, size: 64, align: 32, offset: 448)
!455 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !389, file: !12, line: 85, size: 64, align: 32, elements: !456)
!456 = !{!457, !458, !459}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !455, file: !12, line: 86, baseType: !82, size: 32, align: 32)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !455, file: !12, line: 87, baseType: !82, size: 32, align: 32)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !455, file: !12, line: 91, baseType: !460, size: 64, align: 32)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !455, file: !12, line: 88, size: 64, align: 32, elements: !461)
!461 = !{!462, !465}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !460, file: !12, line: 89, baseType: !463, size: 32, align: 32)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !191, line: 98, baseType: !464)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !109, line: 133, baseType: !82)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !460, file: !12, line: 90, baseType: !82, size: 32, align: 32, offset: 32)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !389, file: !12, line: 93, baseType: !467, size: 64, align: 64, offset: 512)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64, align: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, scope: !389, file: !12, line: 95, baseType: !469, size: 192, align: 64, offset: 576)
!469 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !389, file: !12, line: 95, size: 192, align: 64, elements: !470)
!470 = !{!471, !472}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !469, file: !12, line: 96, baseType: !438, size: 192, align: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !469, file: !12, line: 97, baseType: !414, size: 128, align: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !146, file: !4, line: 269, baseType: !82, size: 32, align: 32, offset: 5888)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !146, file: !4, line: 271, baseType: !82, size: 32, align: 32, offset: 5920)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "smtp_alert", scope: !146, file: !4, line: 274, baseType: !82, size: 32, align: 32, offset: 5952)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "last_email_state", scope: !146, file: !4, line: 275, baseType: !82, size: 32, align: 32, offset: 5984)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "notify_exec", scope: !146, file: !4, line: 276, baseType: !173, size: 8, align: 8, offset: 6016)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "script_backup", scope: !146, file: !4, line: 277, baseType: !180, size: 64, align: 64, offset: 6080)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "script_master", scope: !146, file: !4, line: 278, baseType: !180, size: 64, align: 64, offset: 6144)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "script_fault", scope: !146, file: !4, line: 279, baseType: !180, size: 64, align: 64, offset: 6208)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "script_stop", scope: !146, file: !4, line: 280, baseType: !180, size: 64, align: 64, offset: 6272)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "script_master_rx_lower_pri", scope: !146, file: !4, line: 281, baseType: !180, size: 64, align: 64, offset: 6336)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "script", scope: !146, file: !4, line: 282, baseType: !180, size: 64, align: 64, offset: 6400)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "ms_down_timer", scope: !146, file: !4, line: 285, baseType: !211, size: 32, align: 32, offset: 6464)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "sands", scope: !146, file: !4, line: 286, baseType: !286, size: 128, align: 64, offset: 6528)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "send_buffer", scope: !146, file: !4, line: 289, baseType: !84, size: 64, align: 64, offset: 6656)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "send_buffer_size", scope: !146, file: !4, line: 290, baseType: !129, size: 64, align: 64, offset: 6720)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "ipv4_csum", scope: !146, file: !4, line: 291, baseType: !211, size: 32, align: 32, offset: 6784)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "auth_type", scope: !146, file: !4, line: 295, baseType: !249, size: 8, align: 8, offset: 6816)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "auth_data", scope: !146, file: !4, line: 296, baseType: !491, size: 64, align: 8, offset: 6824)
!491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 64, align: 8, elements: !254)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "ipsecah_counter", scope: !146, file: !4, line: 299, baseType: !493, size: 64, align: 32, offset: 6912)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "seq_counter_t", file: !494, line: 58, baseType: !495)
!494 = !DIFile(filename: "./../include/vrrp_ipsecah.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_seq_counter", file: !494, line: 55, size: 64, align: 32, elements: !496)
!496 = !{!497, !498}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "cycle", scope: !495, file: !494, line: 56, baseType: !173, size: 8, align: 8)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "seq_number", scope: !495, file: !494, line: 57, baseType: !211, size: 32, align: 32, offset: 32)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "ip_id", scope: !146, file: !4, line: 309, baseType: !82, size: 32, align: 32, offset: 6976)
!500 = !{}
!501 = !DILocalVariable(name: "iname", arg: 1, scope: !140, file: !141, line: 37, type: !84)
!502 = !DIExpression()
!503 = !DILocation(line: 37, column: 25, scope: !140)
!504 = !DILocalVariable(name: "vrrp", scope: !140, file: !141, line: 39, type: !144)
!505 = !DILocation(line: 39, column: 10, scope: !140)
!506 = !DILocalVariable(name: "l", scope: !140, file: !141, line: 40, type: !51)
!507 = !DILocation(line: 40, column: 7, scope: !140)
!508 = !DILocation(line: 40, column: 11, scope: !140)
!509 = !DILocation(line: 40, column: 22, scope: !140)
!510 = !DILocalVariable(name: "e", scope: !140, file: !141, line: 41, type: !511)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "element", file: !52, line: 30, baseType: !57)
!512 = !DILocation(line: 41, column: 10, scope: !140)
!513 = !DILocation(line: 43, column: 14, scope: !514)
!514 = distinct !DILexicalBlock(scope: !140, file: !141, line: 43, column: 2)
!515 = !DILocation(line: 43, column: 13, scope: !514)
!516 = !DILocation(line: 43, column: 12, scope: !514)
!517 = !DILocation(line: 43, column: 12, scope: !518)
!518 = !DILexicalBlockFile(scope: !514, file: !141, discriminator: 1)
!519 = !DILocation(line: 43, column: 13, scope: !520)
!520 = !DILexicalBlockFile(scope: !514, file: !141, discriminator: 2)
!521 = !DILocation(line: 43, column: 17, scope: !520)
!522 = !DILocation(line: 43, column: 12, scope: !520)
!523 = !DILocation(line: 43, column: 12, scope: !524)
!524 = !DILexicalBlockFile(scope: !514, file: !141, discriminator: 3)
!525 = !DILocation(line: 43, column: 9, scope: !524)
!526 = !DILocation(line: 43, column: 7, scope: !524)
!527 = !DILocation(line: 43, column: 24, scope: !528)
!528 = !DILexicalBlockFile(scope: !529, file: !141, discriminator: 4)
!529 = distinct !DILexicalBlock(scope: !514, file: !141, line: 43, column: 2)
!530 = !DILocation(line: 43, column: 2, scope: !528)
!531 = !DILocation(line: 44, column: 12, scope: !532)
!532 = distinct !DILexicalBlock(scope: !529, file: !141, line: 43, column: 46)
!533 = !DILocation(line: 44, column: 16, scope: !532)
!534 = !DILocation(line: 44, column: 10, scope: !532)
!535 = !DILocation(line: 44, column: 8, scope: !532)
!536 = !DILocation(line: 45, column: 14, scope: !537)
!537 = distinct !DILexicalBlock(scope: !532, file: !141, line: 45, column: 7)
!538 = !DILocation(line: 45, column: 20, scope: !537)
!539 = !DILocation(line: 45, column: 27, scope: !537)
!540 = !DILocation(line: 45, column: 7, scope: !537)
!541 = !DILocation(line: 45, column: 34, scope: !537)
!542 = !DILocation(line: 45, column: 7, scope: !532)
!543 = !DILocation(line: 46, column: 11, scope: !537)
!544 = !DILocation(line: 46, column: 4, scope: !537)
!545 = !DILocation(line: 47, column: 2, scope: !532)
!546 = !DILocation(line: 43, column: 35, scope: !547)
!547 = !DILexicalBlockFile(scope: !529, file: !141, discriminator: 5)
!548 = !DILocation(line: 43, column: 39, scope: !547)
!549 = !DILocation(line: 43, column: 32, scope: !547)
!550 = !DILocation(line: 43, column: 2, scope: !547)
!551 = distinct !{!551, !552}
!552 = !DILocation(line: 43, column: 2, scope: !140)
!553 = !DILocation(line: 48, column: 2, scope: !140)
!554 = !DILocation(line: 49, column: 1, scope: !140)
!555 = distinct !DISubprogram(name: "vrrp_sync_set_group", scope: !141, file: !141, line: 53, type: !556, isLocal: false, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !500)
!556 = !DISubroutineType(types: !557)
!557 = !{null, !153}
!558 = !DILocalVariable(name: "vgroup", arg: 1, scope: !555, file: !141, line: 53, type: !153)
!559 = !DILocation(line: 53, column: 36, scope: !555)
!560 = !DILocalVariable(name: "vrrp", scope: !555, file: !141, line: 55, type: !144)
!561 = !DILocation(line: 55, column: 10, scope: !555)
!562 = !DILocalVariable(name: "str", scope: !555, file: !141, line: 56, type: !84)
!563 = !DILocation(line: 56, column: 8, scope: !555)
!564 = !DILocalVariable(name: "i", scope: !555, file: !141, line: 57, type: !66)
!565 = !DILocation(line: 57, column: 15, scope: !555)
!566 = !DILocalVariable(name: "group_member_down", scope: !555, file: !141, line: 58, type: !173)
!567 = !DILocation(line: 58, column: 6, scope: !555)
!568 = !DILocation(line: 61, column: 7, scope: !569)
!569 = distinct !DILexicalBlock(scope: !555, file: !141, line: 61, column: 6)
!570 = !DILocation(line: 61, column: 15, scope: !569)
!571 = !DILocation(line: 61, column: 6, scope: !555)
!572 = !DILocation(line: 62, column: 3, scope: !569)
!573 = !DILocation(line: 64, column: 27, scope: !555)
!574 = !DILocation(line: 64, column: 2, scope: !555)
!575 = !DILocation(line: 64, column: 10, scope: !555)
!576 = !DILocation(line: 64, column: 25, scope: !555)
!577 = !DILocation(line: 66, column: 9, scope: !578)
!578 = distinct !DILexicalBlock(scope: !555, file: !141, line: 66, column: 2)
!579 = !DILocation(line: 66, column: 7, scope: !578)
!580 = !DILocation(line: 66, column: 14, scope: !581)
!581 = !DILexicalBlockFile(scope: !582, file: !141, discriminator: 1)
!582 = distinct !DILexicalBlock(scope: !578, file: !141, line: 66, column: 2)
!583 = !DILocation(line: 66, column: 20, scope: !581)
!584 = !DILocation(line: 66, column: 28, scope: !581)
!585 = !DILocation(line: 66, column: 36, scope: !581)
!586 = !DILocation(line: 66, column: 16, scope: !581)
!587 = !DILocation(line: 66, column: 2, scope: !581)
!588 = !DILocation(line: 67, column: 33, scope: !589)
!589 = distinct !DILexicalBlock(scope: !582, file: !141, line: 66, column: 53)
!590 = !DILocation(line: 67, column: 10, scope: !589)
!591 = !DILocation(line: 67, column: 11, scope: !589)
!592 = !DILocation(line: 67, column: 19, scope: !589)
!593 = !DILocation(line: 67, column: 27, scope: !589)
!594 = !DILocation(line: 67, column: 7, scope: !589)
!595 = !DILocation(line: 68, column: 28, scope: !589)
!596 = !DILocation(line: 68, column: 10, scope: !589)
!597 = !DILocation(line: 68, column: 8, scope: !589)
!598 = !DILocation(line: 69, column: 8, scope: !599)
!599 = distinct !DILexicalBlock(scope: !589, file: !141, line: 69, column: 7)
!600 = !DILocation(line: 69, column: 7, scope: !589)
!601 = !DILocation(line: 70, column: 119, scope: !602)
!602 = distinct !DILexicalBlock(scope: !599, file: !141, line: 69, column: 14)
!603 = !DILocation(line: 70, column: 124, scope: !602)
!604 = !DILocation(line: 70, column: 132, scope: !602)
!605 = !DILocation(line: 70, column: 4, scope: !602)
!606 = !DILocation(line: 71, column: 4, scope: !602)
!607 = !DILocation(line: 74, column: 7, scope: !608)
!608 = distinct !DILexicalBlock(scope: !589, file: !141, line: 74, column: 7)
!609 = !DILocation(line: 74, column: 13, scope: !608)
!610 = !DILocation(line: 74, column: 7, scope: !589)
!611 = !DILocation(line: 75, column: 121, scope: !612)
!612 = distinct !DILexicalBlock(scope: !608, file: !141, line: 74, column: 19)
!613 = !DILocation(line: 75, column: 126, scope: !612)
!614 = !DILocation(line: 75, column: 134, scope: !612)
!615 = !DILocation(line: 75, column: 4, scope: !612)
!616 = !DILocation(line: 76, column: 4, scope: !612)
!617 = !DILocation(line: 79, column: 12, scope: !589)
!618 = !DILocation(line: 79, column: 20, scope: !589)
!619 = !DILocation(line: 79, column: 36, scope: !589)
!620 = !DILocation(line: 79, column: 3, scope: !589)
!621 = !DILocation(line: 80, column: 16, scope: !589)
!622 = !DILocation(line: 80, column: 3, scope: !589)
!623 = !DILocation(line: 80, column: 9, scope: !589)
!624 = !DILocation(line: 80, column: 14, scope: !589)
!625 = !DILocation(line: 84, column: 7, scope: !626)
!626 = distinct !DILexicalBlock(scope: !589, file: !141, line: 84, column: 7)
!627 = !DILocation(line: 84, column: 15, scope: !626)
!628 = !DILocation(line: 84, column: 21, scope: !626)
!629 = !DILocation(line: 84, column: 26, scope: !626)
!630 = !DILocation(line: 84, column: 29, scope: !631)
!631 = !DILexicalBlockFile(scope: !626, file: !141, discriminator: 1)
!632 = !DILocation(line: 84, column: 35, scope: !631)
!633 = !DILocation(line: 84, column: 45, scope: !631)
!634 = !DILocation(line: 84, column: 7, scope: !631)
!635 = !DILocation(line: 85, column: 147, scope: !626)
!636 = !DILocation(line: 85, column: 155, scope: !626)
!637 = !DILocation(line: 85, column: 4, scope: !626)
!638 = !DILocation(line: 86, column: 7, scope: !639)
!639 = distinct !DILexicalBlock(scope: !589, file: !141, line: 86, column: 7)
!640 = !DILocation(line: 86, column: 15, scope: !639)
!641 = !DILocation(line: 86, column: 21, scope: !639)
!642 = !DILocation(line: 86, column: 7, scope: !589)
!643 = !DILocation(line: 87, column: 21, scope: !639)
!644 = !DILocation(line: 87, column: 27, scope: !639)
!645 = !DILocation(line: 87, column: 37, scope: !639)
!646 = !DILocation(line: 87, column: 42, scope: !639)
!647 = !DILocation(line: 87, column: 45, scope: !648)
!648 = !DILexicalBlockFile(scope: !639, file: !141, discriminator: 1)
!649 = !DILocation(line: 87, column: 51, scope: !648)
!650 = !DILocation(line: 87, column: 65, scope: !648)
!651 = !DILocation(line: 87, column: 20, scope: !652)
!652 = !DILexicalBlockFile(scope: !639, file: !141, discriminator: 2)
!653 = !DILocation(line: 87, column: 4, scope: !652)
!654 = !DILocation(line: 87, column: 12, scope: !652)
!655 = !DILocation(line: 87, column: 18, scope: !652)
!656 = !DILocation(line: 90, column: 7, scope: !657)
!657 = distinct !DILexicalBlock(scope: !589, file: !141, line: 90, column: 7)
!658 = !DILocation(line: 90, column: 13, scope: !657)
!659 = !DILocation(line: 90, column: 19, scope: !657)
!660 = !DILocation(line: 90, column: 7, scope: !589)
!661 = !DILocation(line: 91, column: 22, scope: !657)
!662 = !DILocation(line: 91, column: 4, scope: !657)
!663 = !DILocation(line: 92, column: 2, scope: !589)
!664 = !DILocation(line: 66, column: 49, scope: !665)
!665 = !DILexicalBlockFile(scope: !582, file: !141, discriminator: 2)
!666 = !DILocation(line: 66, column: 2, scope: !665)
!667 = distinct !{!667, !668}
!668 = !DILocation(line: 66, column: 2, scope: !555)
!669 = !DILocation(line: 94, column: 6, scope: !670)
!670 = distinct !DILexicalBlock(scope: !555, file: !141, line: 94, column: 6)
!671 = !DILocation(line: 94, column: 6, scope: !555)
!672 = !DILocation(line: 95, column: 3, scope: !670)
!673 = !DILocation(line: 95, column: 11, scope: !670)
!674 = !DILocation(line: 95, column: 17, scope: !670)
!675 = !DILocation(line: 97, column: 8, scope: !676)
!676 = distinct !DILexicalBlock(scope: !555, file: !141, line: 97, column: 6)
!677 = !DILocation(line: 97, column: 16, scope: !676)
!678 = !DILocation(line: 97, column: 33, scope: !676)
!679 = !DILocation(line: 97, column: 40, scope: !676)
!680 = !DILocation(line: 97, column: 6, scope: !555)
!681 = !DILocation(line: 99, column: 97, scope: !682)
!682 = distinct !DILexicalBlock(scope: !676, file: !141, line: 97, column: 46)
!683 = !DILocation(line: 99, column: 105, scope: !682)
!684 = !DILocation(line: 99, column: 114, scope: !682)
!685 = !DILocation(line: 99, column: 122, scope: !682)
!686 = !DILocation(line: 99, column: 139, scope: !682)
!687 = !DILocation(line: 100, column: 7, scope: !682)
!688 = !DILocation(line: 100, column: 15, scope: !682)
!689 = !DILocation(line: 100, column: 32, scope: !682)
!690 = !DILocation(line: 100, column: 5, scope: !682)
!691 = !DILocation(line: 99, column: 3, scope: !682)
!692 = !DILocation(line: 102, column: 10, scope: !693)
!693 = distinct !DILexicalBlock(scope: !682, file: !141, line: 102, column: 7)
!694 = !DILocation(line: 102, column: 18, scope: !693)
!695 = !DILocation(line: 102, column: 35, scope: !693)
!696 = !DILocation(line: 102, column: 8, scope: !693)
!697 = !DILocation(line: 102, column: 7, scope: !682)
!698 = !DILocation(line: 103, column: 15, scope: !693)
!699 = !DILocation(line: 103, column: 23, scope: !693)
!700 = !DILocation(line: 103, column: 4, scope: !693)
!701 = !DILocation(line: 104, column: 2, scope: !682)
!702 = !DILocation(line: 107, column: 14, scope: !555)
!703 = !DILocation(line: 107, column: 22, scope: !555)
!704 = !DILocation(line: 107, column: 2, scope: !555)
!705 = !DILocation(line: 108, column: 2, scope: !555)
!706 = !DILocation(line: 108, column: 10, scope: !555)
!707 = !DILocation(line: 108, column: 16, scope: !555)
!708 = !DILocation(line: 109, column: 1, scope: !555)
!709 = !DILocation(line: 109, column: 1, scope: !710)
!710 = !DILexicalBlockFile(scope: !555, file: !141, discriminator: 1)
!711 = distinct !DISubprogram(name: "vrrp_sync_can_goto_master", scope: !141, file: !141, line: 113, type: !712, isLocal: false, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !500)
!712 = !DISubroutineType(types: !713)
!713 = !{!173, !144}
!714 = !DILocalVariable(name: "vrrp", arg: 1, scope: !711, file: !141, line: 113, type: !144)
!715 = !DILocation(line: 113, column: 36, scope: !711)
!716 = !DILocalVariable(name: "isync", scope: !711, file: !141, line: 115, type: !144)
!717 = !DILocation(line: 115, column: 10, scope: !711)
!718 = !DILocalVariable(name: "vgroup", scope: !711, file: !141, line: 116, type: !153)
!719 = !DILocation(line: 116, column: 17, scope: !711)
!720 = !DILocation(line: 116, column: 26, scope: !711)
!721 = !DILocation(line: 116, column: 32, scope: !711)
!722 = !DILocalVariable(name: "l", scope: !711, file: !141, line: 117, type: !51)
!723 = !DILocation(line: 117, column: 7, scope: !711)
!724 = !DILocation(line: 117, column: 11, scope: !711)
!725 = !DILocation(line: 117, column: 19, scope: !711)
!726 = !DILocalVariable(name: "e", scope: !711, file: !141, line: 118, type: !511)
!727 = !DILocation(line: 118, column: 10, scope: !711)
!728 = !DILocation(line: 120, column: 8, scope: !729)
!729 = distinct !DILexicalBlock(scope: !711, file: !141, line: 120, column: 6)
!730 = !DILocation(line: 120, column: 17, scope: !729)
!731 = !DILocation(line: 120, column: 24, scope: !729)
!732 = !DILocation(line: 120, column: 6, scope: !711)
!733 = !DILocation(line: 121, column: 3, scope: !729)
!734 = !DILocation(line: 125, column: 14, scope: !735)
!735 = distinct !DILexicalBlock(scope: !711, file: !141, line: 125, column: 2)
!736 = !DILocation(line: 125, column: 13, scope: !735)
!737 = !DILocation(line: 125, column: 12, scope: !735)
!738 = !DILocation(line: 125, column: 12, scope: !739)
!739 = !DILexicalBlockFile(scope: !735, file: !141, discriminator: 1)
!740 = !DILocation(line: 125, column: 13, scope: !741)
!741 = !DILexicalBlockFile(scope: !735, file: !141, discriminator: 2)
!742 = !DILocation(line: 125, column: 17, scope: !741)
!743 = !DILocation(line: 125, column: 12, scope: !741)
!744 = !DILocation(line: 125, column: 12, scope: !745)
!745 = !DILexicalBlockFile(scope: !735, file: !141, discriminator: 3)
!746 = !DILocation(line: 125, column: 9, scope: !745)
!747 = !DILocation(line: 125, column: 7, scope: !745)
!748 = !DILocation(line: 125, column: 24, scope: !749)
!749 = !DILexicalBlockFile(scope: !750, file: !141, discriminator: 4)
!750 = distinct !DILexicalBlock(scope: !735, file: !141, line: 125, column: 2)
!751 = !DILocation(line: 125, column: 2, scope: !749)
!752 = !DILocation(line: 126, column: 13, scope: !753)
!753 = distinct !DILexicalBlock(scope: !750, file: !141, line: 125, column: 46)
!754 = !DILocation(line: 126, column: 17, scope: !753)
!755 = !DILocation(line: 126, column: 11, scope: !753)
!756 = !DILocation(line: 126, column: 9, scope: !753)
!757 = !DILocation(line: 127, column: 7, scope: !758)
!758 = distinct !DILexicalBlock(scope: !753, file: !141, line: 127, column: 7)
!759 = !DILocation(line: 127, column: 16, scope: !758)
!760 = !DILocation(line: 127, column: 13, scope: !758)
!761 = !DILocation(line: 127, column: 21, scope: !758)
!762 = !DILocation(line: 127, column: 24, scope: !763)
!763 = !DILexicalBlockFile(scope: !758, file: !141, discriminator: 1)
!764 = !DILocation(line: 127, column: 31, scope: !763)
!765 = !DILocation(line: 127, column: 41, scope: !763)
!766 = !DILocation(line: 127, column: 7, scope: !763)
!767 = !DILocation(line: 128, column: 4, scope: !768)
!768 = distinct !DILexicalBlock(scope: !758, file: !141, line: 127, column: 47)
!769 = !DILocation(line: 130, column: 2, scope: !753)
!770 = !DILocation(line: 125, column: 35, scope: !771)
!771 = !DILexicalBlockFile(scope: !750, file: !141, discriminator: 5)
!772 = !DILocation(line: 125, column: 39, scope: !771)
!773 = !DILocation(line: 125, column: 32, scope: !771)
!774 = !DILocation(line: 125, column: 2, scope: !771)
!775 = distinct !{!775, !776}
!776 = !DILocation(line: 125, column: 2, scope: !711)
!777 = !DILocation(line: 131, column: 2, scope: !711)
!778 = !DILocation(line: 132, column: 1, scope: !711)
!779 = distinct !DISubprogram(name: "vrrp_sync_backup", scope: !141, file: !141, line: 135, type: !780, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !500)
!780 = !DISubroutineType(types: !781)
!781 = !{null, !144}
!782 = !DILocalVariable(name: "vrrp", arg: 1, scope: !779, file: !141, line: 135, type: !144)
!783 = !DILocation(line: 135, column: 27, scope: !779)
!784 = !DILocalVariable(name: "isync", scope: !779, file: !141, line: 137, type: !144)
!785 = !DILocation(line: 137, column: 10, scope: !779)
!786 = !DILocalVariable(name: "vgroup", scope: !779, file: !141, line: 138, type: !153)
!787 = !DILocation(line: 138, column: 17, scope: !779)
!788 = !DILocation(line: 138, column: 26, scope: !779)
!789 = !DILocation(line: 138, column: 32, scope: !779)
!790 = !DILocalVariable(name: "l", scope: !779, file: !141, line: 139, type: !51)
!791 = !DILocation(line: 139, column: 7, scope: !779)
!792 = !DILocation(line: 139, column: 11, scope: !779)
!793 = !DILocation(line: 139, column: 19, scope: !779)
!794 = !DILocalVariable(name: "e", scope: !779, file: !141, line: 140, type: !511)
!795 = !DILocation(line: 140, column: 10, scope: !779)
!796 = !DILocation(line: 142, column: 8, scope: !797)
!797 = distinct !DILexicalBlock(scope: !779, file: !141, line: 142, column: 6)
!798 = !DILocation(line: 142, column: 17, scope: !797)
!799 = !DILocation(line: 142, column: 24, scope: !797)
!800 = !DILocation(line: 142, column: 6, scope: !779)
!801 = !DILocation(line: 143, column: 3, scope: !797)
!802 = !DILocation(line: 146, column: 11, scope: !779)
!803 = !DILocation(line: 146, column: 20, scope: !779)
!804 = !DILocation(line: 145, column: 2, scope: !779)
!805 = !DILocation(line: 149, column: 14, scope: !806)
!806 = distinct !DILexicalBlock(scope: !779, file: !141, line: 149, column: 2)
!807 = !DILocation(line: 149, column: 13, scope: !806)
!808 = !DILocation(line: 149, column: 12, scope: !806)
!809 = !DILocation(line: 149, column: 12, scope: !810)
!810 = !DILexicalBlockFile(scope: !806, file: !141, discriminator: 1)
!811 = !DILocation(line: 149, column: 13, scope: !812)
!812 = !DILexicalBlockFile(scope: !806, file: !141, discriminator: 2)
!813 = !DILocation(line: 149, column: 17, scope: !812)
!814 = !DILocation(line: 149, column: 12, scope: !812)
!815 = !DILocation(line: 149, column: 12, scope: !816)
!816 = !DILexicalBlockFile(scope: !806, file: !141, discriminator: 3)
!817 = !DILocation(line: 149, column: 9, scope: !816)
!818 = !DILocation(line: 149, column: 7, scope: !816)
!819 = !DILocation(line: 149, column: 24, scope: !820)
!820 = !DILexicalBlockFile(scope: !821, file: !141, discriminator: 4)
!821 = distinct !DILexicalBlock(scope: !806, file: !141, line: 149, column: 2)
!822 = !DILocation(line: 149, column: 2, scope: !820)
!823 = !DILocation(line: 150, column: 13, scope: !824)
!824 = distinct !DILexicalBlock(scope: !821, file: !141, line: 149, column: 46)
!825 = !DILocation(line: 150, column: 17, scope: !824)
!826 = !DILocation(line: 150, column: 11, scope: !824)
!827 = !DILocation(line: 150, column: 9, scope: !824)
!828 = !DILocation(line: 151, column: 7, scope: !829)
!829 = distinct !DILexicalBlock(scope: !824, file: !141, line: 151, column: 7)
!830 = !DILocation(line: 151, column: 16, scope: !829)
!831 = !DILocation(line: 151, column: 13, scope: !829)
!832 = !DILocation(line: 151, column: 21, scope: !829)
!833 = !DILocation(line: 151, column: 24, scope: !834)
!834 = !DILexicalBlockFile(scope: !829, file: !141, discriminator: 1)
!835 = !DILocation(line: 151, column: 31, scope: !834)
!836 = !DILocation(line: 151, column: 37, scope: !834)
!837 = !DILocation(line: 151, column: 7, scope: !834)
!838 = !DILocation(line: 152, column: 4, scope: !829)
!839 = !DILocation(line: 154, column: 3, scope: !824)
!840 = !DILocation(line: 154, column: 10, scope: !824)
!841 = !DILocation(line: 154, column: 20, scope: !824)
!842 = !DILocation(line: 157, column: 7, scope: !843)
!843 = distinct !DILexicalBlock(scope: !824, file: !141, line: 157, column: 7)
!844 = !DILocation(line: 157, column: 14, scope: !843)
!845 = !DILocation(line: 157, column: 20, scope: !843)
!846 = !DILocation(line: 157, column: 25, scope: !843)
!847 = !DILocation(line: 158, column: 7, scope: !843)
!848 = !DILocation(line: 158, column: 14, scope: !843)
!849 = !DILocation(line: 158, column: 20, scope: !843)
!850 = !DILocation(line: 157, column: 7, scope: !851)
!851 = !DILexicalBlockFile(scope: !824, file: !141, discriminator: 1)
!852 = !DILocation(line: 159, column: 27, scope: !853)
!853 = distinct !DILexicalBlock(scope: !843, file: !141, line: 158, column: 26)
!854 = !DILocation(line: 159, column: 4, scope: !853)
!855 = !DILocation(line: 160, column: 3, scope: !853)
!856 = !DILocation(line: 162, column: 28, scope: !843)
!857 = !DILocation(line: 162, column: 4, scope: !843)
!858 = !DILocation(line: 163, column: 28, scope: !824)
!859 = !DILocation(line: 163, column: 3, scope: !824)
!860 = !DILocation(line: 164, column: 2, scope: !824)
!861 = !DILocation(line: 149, column: 35, scope: !862)
!862 = !DILexicalBlockFile(scope: !821, file: !141, discriminator: 5)
!863 = !DILocation(line: 149, column: 39, scope: !862)
!864 = !DILocation(line: 149, column: 32, scope: !862)
!865 = !DILocation(line: 149, column: 2, scope: !862)
!866 = distinct !{!866, !867}
!867 = !DILocation(line: 149, column: 2, scope: !779)
!868 = !DILocation(line: 166, column: 2, scope: !779)
!869 = !DILocation(line: 166, column: 10, scope: !779)
!870 = !DILocation(line: 166, column: 16, scope: !779)
!871 = !DILocation(line: 167, column: 22, scope: !779)
!872 = !DILocation(line: 167, column: 2, scope: !779)
!873 = !DILocation(line: 168, column: 1, scope: !779)
!874 = !DILocation(line: 168, column: 1, scope: !875)
!875 = !DILexicalBlockFile(scope: !779, file: !141, discriminator: 1)
!876 = distinct !DISubprogram(name: "vrrp_sync_master", scope: !141, file: !141, line: 171, type: !780, isLocal: false, isDefinition: true, scopeLine: 172, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !500)
!877 = !DILocalVariable(name: "vrrp", arg: 1, scope: !876, file: !141, line: 171, type: !144)
!878 = !DILocation(line: 171, column: 27, scope: !876)
!879 = !DILocalVariable(name: "isync", scope: !876, file: !141, line: 173, type: !144)
!880 = !DILocation(line: 173, column: 10, scope: !876)
!881 = !DILocalVariable(name: "vgroup", scope: !876, file: !141, line: 174, type: !153)
!882 = !DILocation(line: 174, column: 17, scope: !876)
!883 = !DILocation(line: 174, column: 26, scope: !876)
!884 = !DILocation(line: 174, column: 32, scope: !876)
!885 = !DILocalVariable(name: "l", scope: !876, file: !141, line: 175, type: !51)
!886 = !DILocation(line: 175, column: 7, scope: !876)
!887 = !DILocation(line: 175, column: 11, scope: !876)
!888 = !DILocation(line: 175, column: 19, scope: !876)
!889 = !DILocalVariable(name: "e", scope: !876, file: !141, line: 176, type: !511)
!890 = !DILocation(line: 176, column: 10, scope: !876)
!891 = !DILocation(line: 178, column: 8, scope: !892)
!892 = distinct !DILexicalBlock(scope: !876, file: !141, line: 178, column: 6)
!893 = !DILocation(line: 178, column: 17, scope: !892)
!894 = !DILocation(line: 178, column: 24, scope: !892)
!895 = !DILocation(line: 178, column: 6, scope: !876)
!896 = !DILocation(line: 179, column: 3, scope: !892)
!897 = !DILocation(line: 180, column: 33, scope: !898)
!898 = distinct !DILexicalBlock(scope: !876, file: !141, line: 180, column: 6)
!899 = !DILocation(line: 180, column: 7, scope: !898)
!900 = !DILocation(line: 180, column: 6, scope: !876)
!901 = !DILocation(line: 181, column: 3, scope: !898)
!902 = !DILocation(line: 183, column: 77, scope: !876)
!903 = !DILocation(line: 183, column: 86, scope: !876)
!904 = !DILocation(line: 183, column: 2, scope: !876)
!905 = !DILocation(line: 186, column: 14, scope: !906)
!906 = distinct !DILexicalBlock(scope: !876, file: !141, line: 186, column: 2)
!907 = !DILocation(line: 186, column: 13, scope: !906)
!908 = !DILocation(line: 186, column: 12, scope: !906)
!909 = !DILocation(line: 186, column: 12, scope: !910)
!910 = !DILexicalBlockFile(scope: !906, file: !141, discriminator: 1)
!911 = !DILocation(line: 186, column: 13, scope: !912)
!912 = !DILexicalBlockFile(scope: !906, file: !141, discriminator: 2)
!913 = !DILocation(line: 186, column: 17, scope: !912)
!914 = !DILocation(line: 186, column: 12, scope: !912)
!915 = !DILocation(line: 186, column: 12, scope: !916)
!916 = !DILexicalBlockFile(scope: !906, file: !141, discriminator: 3)
!917 = !DILocation(line: 186, column: 9, scope: !916)
!918 = !DILocation(line: 186, column: 7, scope: !916)
!919 = !DILocation(line: 186, column: 24, scope: !920)
!920 = !DILexicalBlockFile(scope: !921, file: !141, discriminator: 4)
!921 = distinct !DILexicalBlock(scope: !906, file: !141, line: 186, column: 2)
!922 = !DILocation(line: 186, column: 2, scope: !920)
!923 = !DILocation(line: 187, column: 13, scope: !924)
!924 = distinct !DILexicalBlock(scope: !921, file: !141, line: 186, column: 46)
!925 = !DILocation(line: 187, column: 17, scope: !924)
!926 = !DILocation(line: 187, column: 11, scope: !924)
!927 = !DILocation(line: 187, column: 9, scope: !924)
!928 = !DILocation(line: 190, column: 7, scope: !929)
!929 = distinct !DILexicalBlock(scope: !924, file: !141, line: 190, column: 7)
!930 = !DILocation(line: 190, column: 16, scope: !929)
!931 = !DILocation(line: 190, column: 13, scope: !929)
!932 = !DILocation(line: 190, column: 21, scope: !929)
!933 = !DILocation(line: 190, column: 24, scope: !934)
!934 = !DILexicalBlockFile(scope: !929, file: !141, discriminator: 1)
!935 = !DILocation(line: 190, column: 31, scope: !934)
!936 = !DILocation(line: 190, column: 37, scope: !934)
!937 = !DILocation(line: 190, column: 7, scope: !934)
!938 = !DILocation(line: 191, column: 4, scope: !939)
!939 = distinct !DILexicalBlock(scope: !929, file: !141, line: 190, column: 43)
!940 = !DILocation(line: 191, column: 11, scope: !939)
!941 = !DILocation(line: 191, column: 21, scope: !939)
!942 = !DILocation(line: 200, column: 28, scope: !939)
!943 = !DILocation(line: 200, column: 5, scope: !939)
!944 = !DILocation(line: 201, column: 30, scope: !939)
!945 = !DILocation(line: 201, column: 5, scope: !939)
!946 = !DILocation(line: 203, column: 3, scope: !939)
!947 = !DILocation(line: 204, column: 2, scope: !924)
!948 = !DILocation(line: 186, column: 35, scope: !949)
!949 = !DILexicalBlockFile(scope: !921, file: !141, discriminator: 5)
!950 = !DILocation(line: 186, column: 39, scope: !949)
!951 = !DILocation(line: 186, column: 32, scope: !949)
!952 = !DILocation(line: 186, column: 2, scope: !949)
!953 = distinct !{!953, !954}
!954 = !DILocation(line: 186, column: 2, scope: !876)
!955 = !DILocation(line: 205, column: 2, scope: !876)
!956 = !DILocation(line: 205, column: 10, scope: !876)
!957 = !DILocation(line: 205, column: 16, scope: !876)
!958 = !DILocation(line: 206, column: 22, scope: !876)
!959 = !DILocation(line: 206, column: 2, scope: !876)
!960 = !DILocation(line: 207, column: 1, scope: !876)
!961 = !DILocation(line: 207, column: 1, scope: !962)
!962 = !DILexicalBlockFile(scope: !876, file: !141, discriminator: 1)
!963 = distinct !DISubprogram(name: "vrrp_sync_fault", scope: !141, file: !141, line: 210, type: !780, isLocal: false, isDefinition: true, scopeLine: 211, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !500)
!964 = !DILocalVariable(name: "vrrp", arg: 1, scope: !963, file: !141, line: 210, type: !144)
!965 = !DILocation(line: 210, column: 26, scope: !963)
!966 = !DILocalVariable(name: "isync", scope: !963, file: !141, line: 212, type: !144)
!967 = !DILocation(line: 212, column: 10, scope: !963)
!968 = !DILocalVariable(name: "vgroup", scope: !963, file: !141, line: 213, type: !153)
!969 = !DILocation(line: 213, column: 17, scope: !963)
!970 = !DILocation(line: 213, column: 26, scope: !963)
!971 = !DILocation(line: 213, column: 32, scope: !963)
!972 = !DILocalVariable(name: "l", scope: !963, file: !141, line: 214, type: !51)
!973 = !DILocation(line: 214, column: 7, scope: !963)
!974 = !DILocation(line: 214, column: 11, scope: !963)
!975 = !DILocation(line: 214, column: 19, scope: !963)
!976 = !DILocalVariable(name: "e", scope: !963, file: !141, line: 215, type: !511)
!977 = !DILocation(line: 215, column: 10, scope: !963)
!978 = !DILocation(line: 217, column: 8, scope: !979)
!979 = distinct !DILexicalBlock(scope: !963, file: !141, line: 217, column: 6)
!980 = !DILocation(line: 217, column: 17, scope: !979)
!981 = !DILocation(line: 217, column: 24, scope: !979)
!982 = !DILocation(line: 217, column: 6, scope: !963)
!983 = !DILocation(line: 218, column: 3, scope: !979)
!984 = !DILocation(line: 221, column: 11, scope: !963)
!985 = !DILocation(line: 221, column: 20, scope: !963)
!986 = !DILocation(line: 220, column: 2, scope: !963)
!987 = !DILocation(line: 224, column: 14, scope: !988)
!988 = distinct !DILexicalBlock(scope: !963, file: !141, line: 224, column: 2)
!989 = !DILocation(line: 224, column: 13, scope: !988)
!990 = !DILocation(line: 224, column: 12, scope: !988)
!991 = !DILocation(line: 224, column: 12, scope: !992)
!992 = !DILexicalBlockFile(scope: !988, file: !141, discriminator: 1)
!993 = !DILocation(line: 224, column: 13, scope: !994)
!994 = !DILexicalBlockFile(scope: !988, file: !141, discriminator: 2)
!995 = !DILocation(line: 224, column: 17, scope: !994)
!996 = !DILocation(line: 224, column: 12, scope: !994)
!997 = !DILocation(line: 224, column: 12, scope: !998)
!998 = !DILexicalBlockFile(scope: !988, file: !141, discriminator: 3)
!999 = !DILocation(line: 224, column: 9, scope: !998)
!1000 = !DILocation(line: 224, column: 7, scope: !998)
!1001 = !DILocation(line: 224, column: 24, scope: !1002)
!1002 = !DILexicalBlockFile(scope: !1003, file: !141, discriminator: 4)
!1003 = distinct !DILexicalBlock(scope: !988, file: !141, line: 224, column: 2)
!1004 = !DILocation(line: 224, column: 2, scope: !1002)
!1005 = !DILocation(line: 225, column: 13, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !1003, file: !141, line: 224, column: 46)
!1007 = !DILocation(line: 225, column: 17, scope: !1006)
!1008 = !DILocation(line: 225, column: 11, scope: !1006)
!1009 = !DILocation(line: 225, column: 9, scope: !1006)
!1010 = !DILocation(line: 233, column: 7, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1006, file: !141, line: 233, column: 7)
!1012 = !DILocation(line: 233, column: 16, scope: !1011)
!1013 = !DILocation(line: 233, column: 13, scope: !1011)
!1014 = !DILocation(line: 233, column: 21, scope: !1011)
!1015 = !DILocation(line: 233, column: 24, scope: !1016)
!1016 = !DILexicalBlockFile(scope: !1011, file: !141, discriminator: 1)
!1017 = !DILocation(line: 233, column: 31, scope: !1016)
!1018 = !DILocation(line: 233, column: 37, scope: !1016)
!1019 = !DILocation(line: 233, column: 7, scope: !1016)
!1020 = !DILocation(line: 234, column: 4, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1011, file: !141, line: 233, column: 43)
!1022 = !DILocation(line: 234, column: 11, scope: !1021)
!1023 = !DILocation(line: 234, column: 21, scope: !1021)
!1024 = !DILocation(line: 235, column: 8, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1021, file: !141, line: 235, column: 8)
!1026 = !DILocation(line: 235, column: 15, scope: !1025)
!1027 = !DILocation(line: 235, column: 21, scope: !1025)
!1028 = !DILocation(line: 235, column: 8, scope: !1021)
!1029 = !DILocation(line: 236, column: 29, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1025, file: !141, line: 235, column: 27)
!1031 = !DILocation(line: 236, column: 5, scope: !1030)
!1032 = !DILocation(line: 237, column: 4, scope: !1030)
!1033 = !DILocation(line: 238, column: 13, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1025, file: !141, line: 238, column: 13)
!1035 = !DILocation(line: 238, column: 20, scope: !1034)
!1036 = !DILocation(line: 238, column: 26, scope: !1034)
!1037 = !DILocation(line: 238, column: 31, scope: !1034)
!1038 = !DILocation(line: 238, column: 34, scope: !1039)
!1039 = !DILexicalBlockFile(scope: !1034, file: !141, discriminator: 1)
!1040 = !DILocation(line: 238, column: 41, scope: !1039)
!1041 = !DILocation(line: 238, column: 47, scope: !1039)
!1042 = !DILocation(line: 238, column: 13, scope: !1039)
!1043 = !DILocation(line: 239, column: 5, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1034, file: !141, line: 238, column: 53)
!1045 = !DILocation(line: 239, column: 12, scope: !1044)
!1046 = !DILocation(line: 239, column: 18, scope: !1044)
!1047 = !DILocation(line: 240, column: 28, scope: !1044)
!1048 = !DILocation(line: 240, column: 5, scope: !1044)
!1049 = !DILocation(line: 241, column: 4, scope: !1044)
!1050 = !DILocation(line: 242, column: 3, scope: !1021)
!1051 = !DILocation(line: 243, column: 2, scope: !1006)
!1052 = !DILocation(line: 224, column: 35, scope: !1053)
!1053 = !DILexicalBlockFile(scope: !1003, file: !141, discriminator: 5)
!1054 = !DILocation(line: 224, column: 39, scope: !1053)
!1055 = !DILocation(line: 224, column: 32, scope: !1053)
!1056 = !DILocation(line: 224, column: 2, scope: !1053)
!1057 = distinct !{!1057, !1058}
!1058 = !DILocation(line: 224, column: 2, scope: !963)
!1059 = !DILocation(line: 244, column: 2, scope: !963)
!1060 = !DILocation(line: 244, column: 10, scope: !963)
!1061 = !DILocation(line: 244, column: 16, scope: !963)
!1062 = !DILocation(line: 245, column: 22, scope: !963)
!1063 = !DILocation(line: 245, column: 2, scope: !963)
!1064 = !DILocation(line: 246, column: 1, scope: !963)
!1065 = !DILocation(line: 246, column: 1, scope: !1066)
!1066 = !DILexicalBlockFile(scope: !963, file: !141, discriminator: 1)
