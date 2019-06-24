; ModuleID = './[inter]src--trigproc.o.i'
source_filename = "./[inter]src--trigproc.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pkg_queue = type { %struct.pkg_list*, %struct.pkg_list*, i32 }
%struct.pkg_list = type { %struct.pkg_list*, %struct.pkginfo* }
%struct.pkginfo = type { %struct.pkgset*, %struct.pkginfo*, i32, i32, i32, i32, i8*, i8*, %struct.dpkg_version, %struct.pkgbin, %struct.pkgbin, %struct.perpackagestate*, %struct.archivedetails*, %struct.anon, %struct.trigaw*, %struct.trigpend*, %struct.fsys_namenode_list*, i64, i8, i8 }
%struct.pkgset = type { %struct.pkgset*, i8*, %struct.pkginfo, %struct.anon.2, i32 }
%struct.anon.2 = type { %struct.deppossi*, %struct.deppossi* }
%struct.deppossi = type { %struct.dependency*, %struct.pkgset*, %struct.deppossi*, %struct.deppossi*, %struct.deppossi*, %struct.dpkg_arch*, %struct.dpkg_version, i32, i8, i8 }
%struct.dependency = type { %struct.pkginfo*, %struct.dependency*, %struct.deppossi*, i32 }
%struct.dpkg_arch = type { %struct.dpkg_arch*, i8*, i32 }
%struct.dpkg_version = type { i32, i8*, i8* }
%struct.pkgbin = type { %struct.dependency*, i8, i32, %struct.dpkg_arch*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.dpkg_version, %struct.conffile*, %struct.arbitraryfield* }
%struct.conffile = type { %struct.conffile*, i8*, i8*, i8 }
%struct.arbitraryfield = type { %struct.arbitraryfield*, i8*, i8* }
%struct.perpackagestate = type { i32, i32, i8, i32, i32, %struct.pkg_list* }
%struct.archivedetails = type { %struct.archivedetails*, i8*, i8*, i8*, i8* }
%struct.anon = type { %struct.trigaw*, %struct.trigaw* }
%struct.trigaw = type { %struct.pkginfo*, %struct.pkginfo*, %struct.trigaw*, %struct.anon.0 }
%struct.anon.0 = type { %struct.trigaw*, %struct.trigaw* }
%struct.trigpend = type { %struct.trigpend*, i8* }
%struct.fsys_namenode_list = type { %struct.fsys_namenode_list*, %struct.fsys_namenode* }
%struct.fsys_namenode = type { %struct.fsys_namenode*, i8*, %struct.pkg_list*, %struct.fsys_diversion*, %struct.file_stat*, %struct.trigfileint*, i32, i8*, i8*, %struct.file_ondisk_id* }
%struct.fsys_diversion = type { %struct.fsys_namenode*, %struct.fsys_namenode*, %struct.pkgset*, %struct.fsys_diversion* }
%struct.file_stat = type { i32, i32, i32, i8*, i8* }
%struct.trigfileint = type { %struct.pkginfo*, %struct.pkgbin*, %struct.fsys_namenode*, i32, %struct.trigfileint*, %struct.anon.1 }
%struct.anon.1 = type { %struct.trigfileint*, %struct.trigfileint* }
%struct.file_ondisk_id = type { i64, i64 }
%struct.trigcyclenode = type { %struct.trigcyclenode*, %struct.trigcycleperpkg*, %struct.pkginfo* }
%struct.trigcycleperpkg = type { %struct.trigcycleperpkg*, %struct.pkginfo*, %struct.trigpend* }
%struct.varbuf = type { i64, i64, i8* }
%struct.trig_hooks = type { void (%struct.pkginfo*)*, void (i32)*, %struct.fsys_namenode* (i8*, i1)*, %struct.trigfileint** (%struct.fsys_namenode*)*, i8* (%struct.fsys_namenode*)* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.pkg_hash_iter = type opaque
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }

@.str = private unnamed_addr constant [22 x i8] c"trigproc_run_deferred\00", align 1
@deferred = internal global %struct.pkg_queue zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"trigproc_activate_packageprocessing pkg=%s\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"triggers\00", align 1
@tortoise_advance = internal global i8 0, align 1
@hare = internal global %struct.trigcyclenode* null, align 8
@tortoise = internal global %struct.trigcyclenode* null, align 8
@trigproc.namesarg = internal global %struct.varbuf zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"trigproc %s\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"trigproc.c\00", align 1
@__func__.trigproc = private unnamed_addr constant [9 x i8] c"trigproc\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"package %s in non-trigger state %s\00", align 1
@dependtry = external global i32, align 4
@sincenothing = external global i32, align 4
@.str.6 = private unnamed_addr constant [59 x i8] c"dependency problems prevent processing triggers for %s:\0A%s\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"dependency problems - leaving triggers unprocessed\00", align 1
@.str.8 = private unnamed_addr constant [77 x i8] c"%s: dependency problems, but processing triggers anyway as you requested:\0A%s\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"Processing triggers for %s (%s) ...\0A\00", align 1
@f_noact = external global i32, align 4
@.str.10 = private unnamed_addr constant [10 x i8] c"triggered\00", align 1
@trig_our_hooks = internal constant %struct.trig_hooks { void (%struct.pkginfo*)* @trigproc_enqueue_deferred, void (i32)* @trig_transitional_activate, %struct.fsys_namenode* (i8*, i1)* @th_nn_find, %struct.trigfileint** (%struct.fsys_namenode*)* @th_nn_interested, i8* (%struct.fsys_namenode*)* @th_nn_name }, align 8
@f_triggers = external global i32, align 4
@.str.11 = private unnamed_addr constant [34 x i8] c"trigproc_enqueue_deferred pend=%s\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"check_triggers_cycle pnow=%s\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"check_triggers_cycle pnow=%s first\00", align 1
@.str.14 = private unnamed_addr constant [100 x i8] c"cycle found while processing triggers:\0A chain of packages whose triggers are or may be responsible:\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.16 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c" -> \00", align 1
@.str.18 = private unnamed_addr constant [64 x i8] c"\0A packages' pending triggers which are or may be unresolvable:\0A\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"  %s\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.22 = private unnamed_addr constant [39 x i8] c"check_triggers_cycle pnow=%s giveup=%s\00", align 1
@__func__.check_trigger_cycle = private unnamed_addr constant [20 x i8] c"check_trigger_cycle\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"triggers looping, abandoned\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"%s pnow=%s tortoise=%s\00", align 1
@__func__.tortoise_in_hare = private unnamed_addr constant [17 x i8] c"tortoise_in_hare\00", align 1
@.str.25 = private unnamed_addr constant [39 x i8] c"%s pnow=%s tortoise=%s tortoisetrig=%s\00", align 1
@.str.26 = private unnamed_addr constant [51 x i8] c"%s pnow=%s tortoise=%s tortoisetrig=%s haretrig=%s\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"%s pnow=%s tortoise=%s OK\00", align 1
@.str.28 = private unnamed_addr constant [33 x i8] c"trig_transitional_activate %s %s\00", align 1
@.str.29 = private unnamed_addr constant [52 x i8] c"trig_transitional_interest_callback trig=%s pend=%s\00", align 1

; Function Attrs: nounwind uwtable
define void @trigproc_populate_deferred() #0 !dbg !452 {
  %1 = alloca %struct.pkg_hash_iter*, align 8
  %2 = alloca %struct.pkginfo*, align 8
  call void @llvm.dbg.declare(metadata %struct.pkg_hash_iter** %1, metadata !455, metadata !458), !dbg !459
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %2, metadata !460, metadata !458), !dbg !461
  %3 = call %struct.pkg_hash_iter* @pkg_hash_iter_new(), !dbg !462
  store %struct.pkg_hash_iter* %3, %struct.pkg_hash_iter** %1, align 8, !dbg !463
  br label %4, !dbg !464

; <label>:4:                                      ; preds = %31, %30, %24, %13, %0
  %5 = load %struct.pkg_hash_iter*, %struct.pkg_hash_iter** %1, align 8, !dbg !465
  %6 = call %struct.pkginfo* @pkg_hash_iter_next_pkg(%struct.pkg_hash_iter* %5), !dbg !467
  store %struct.pkginfo* %6, %struct.pkginfo** %2, align 8, !dbg !468
  %7 = icmp ne %struct.pkginfo* %6, null, !dbg !469
  br i1 %7, label %8, label %33, !dbg !469

; <label>:8:                                      ; preds = %4
  %9 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !470
  %10 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %9, i32 0, i32 15, !dbg !473
  %11 = load %struct.trigpend*, %struct.trigpend** %10, align 8, !dbg !473
  %12 = icmp ne %struct.trigpend* %11, null, !dbg !470
  br i1 %12, label %14, label %13, !dbg !474

; <label>:13:                                     ; preds = %8
  br label %4, !dbg !475, !llvm.loop !476

; <label>:14:                                     ; preds = %8
  %15 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !477
  %16 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %15, i32 0, i32 4, !dbg !479
  %17 = load i32, i32* %16, align 8, !dbg !479
  %18 = icmp ne i32 %17, 5, !dbg !480
  br i1 %18, label %19, label %25, !dbg !481

; <label>:19:                                     ; preds = %14
  %20 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !482
  %21 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %20, i32 0, i32 4, !dbg !483
  %22 = load i32, i32* %21, align 8, !dbg !483
  %23 = icmp ne i32 %22, 6, !dbg !484
  br i1 %23, label %24, label %25, !dbg !485

; <label>:24:                                     ; preds = %19
  br label %4, !dbg !487, !llvm.loop !476

; <label>:25:                                     ; preds = %19, %14
  %26 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !488
  %27 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %26, i32 0, i32 2, !dbg !490
  %28 = load i32, i32* %27, align 8, !dbg !490
  %29 = icmp ne i32 %28, 1, !dbg !491
  br i1 %29, label %30, label %31, !dbg !492

; <label>:30:                                     ; preds = %25
  br label %4, !dbg !493, !llvm.loop !476

; <label>:31:                                     ; preds = %25
  %32 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !494
  call void @trigproc_enqueue_deferred(%struct.pkginfo* %32), !dbg !495
  br label %4, !dbg !496, !llvm.loop !476

; <label>:33:                                     ; preds = %4
  %34 = load %struct.pkg_hash_iter*, %struct.pkg_hash_iter** %1, align 8, !dbg !498
  call void @pkg_hash_iter_free(%struct.pkg_hash_iter* %34), !dbg !499
  ret void, !dbg !500
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare %struct.pkg_hash_iter* @pkg_hash_iter_new() #2

declare %struct.pkginfo* @pkg_hash_iter_next_pkg(%struct.pkg_hash_iter*) #2

; Function Attrs: nounwind uwtable
define internal void @trigproc_enqueue_deferred(%struct.pkginfo*) #0 !dbg !501 {
  %2 = alloca %struct.pkginfo*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %2, metadata !502, metadata !458), !dbg !503
  %3 = load i32, i32* @f_triggers, align 4, !dbg !504
  %4 = icmp slt i32 %3, 0, !dbg !506
  br i1 %4, label %5, label %6, !dbg !507

; <label>:5:                                      ; preds = %1
  br label %24, !dbg !508

; <label>:6:                                      ; preds = %1
  %7 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !509
  call void @ensure_package_clientdata(%struct.pkginfo* %7), !dbg !510
  %8 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !511
  %9 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %8, i32 0, i32 11, !dbg !513
  %10 = load %struct.perpackagestate*, %struct.perpackagestate** %9, align 8, !dbg !513
  %11 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %10, i32 0, i32 5, !dbg !514
  %12 = load %struct.pkg_list*, %struct.pkg_list** %11, align 8, !dbg !514
  %13 = icmp ne %struct.pkg_list* %12, null, !dbg !511
  br i1 %13, label %14, label %15, !dbg !515

; <label>:14:                                     ; preds = %6
  br label %24, !dbg !516

; <label>:15:                                     ; preds = %6
  %16 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !517
  %17 = call %struct.pkg_list* @pkg_queue_push(%struct.pkg_queue* @deferred, %struct.pkginfo* %16), !dbg !518
  %18 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !519
  %19 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %18, i32 0, i32 11, !dbg !520
  %20 = load %struct.perpackagestate*, %struct.perpackagestate** %19, align 8, !dbg !520
  %21 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %20, i32 0, i32 5, !dbg !521
  store %struct.pkg_list* %17, %struct.pkg_list** %21, align 8, !dbg !522
  %22 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !523
  %23 = call i8* @pkg_name(%struct.pkginfo* %22, i32 3), !dbg !524
  call void (i32, i8*, ...) @debug(i32 4096, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i32 0, i32 0), i8* %23), !dbg !525
  br label %24, !dbg !526

; <label>:24:                                     ; preds = %15, %14, %5
  ret void, !dbg !527
}

declare void @pkg_hash_iter_free(%struct.pkg_hash_iter*) #2

; Function Attrs: nounwind uwtable
define void @trigproc_run_deferred() #0 !dbg !529 {
  %1 = alloca [1 x %struct.__jmp_buf_tag], align 16
  %2 = alloca %struct.pkginfo*, align 8
  call void @llvm.dbg.declare(metadata [1 x %struct.__jmp_buf_tag]* %1, metadata !530, metadata !458), !dbg !554
  call void (i32, i8*, ...) @debug(i32 4096, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0)), !dbg !555
  br label %3, !dbg !556

; <label>:3:                                      ; preds = %17, %16, %11, %0
  %4 = call i32 @pkg_queue_is_empty(%struct.pkg_queue* @deferred), !dbg !557
  %5 = icmp ne i32 %4, 0, !dbg !559
  %6 = xor i1 %5, true, !dbg !559
  br i1 %6, label %7, label %26, !dbg !560

; <label>:7:                                      ; preds = %3
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %2, metadata !561, metadata !458), !dbg !563
  %8 = call %struct.pkginfo* @pkg_queue_pop(%struct.pkg_queue* @deferred), !dbg !564
  store %struct.pkginfo* %8, %struct.pkginfo** %2, align 8, !dbg !565
  %9 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !566
  %10 = icmp ne %struct.pkginfo* %9, null, !dbg !566
  br i1 %10, label %12, label %11, !dbg !568

; <label>:11:                                     ; preds = %7
  br label %3, !dbg !569, !llvm.loop !570

; <label>:12:                                     ; preds = %7
  %13 = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %1, i32 0, i32 0, !dbg !571
  %14 = call i32 @_setjmp(%struct.__jmp_buf_tag* %13) #8, !dbg !571
  %15 = icmp ne i32 %14, 0, !dbg !571
  br i1 %15, label %16, label %17, !dbg !573

; <label>:16:                                     ; preds = %12
  call void @pop_error_context(i32 2), !dbg !574
  br label %3, !dbg !576, !llvm.loop !570

; <label>:17:                                     ; preds = %12
  %18 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !577
  %19 = call i8* @pkg_name(%struct.pkginfo* %18, i32 1), !dbg !578
  call void @push_error_context_jump([1 x %struct.__jmp_buf_tag]* %1, void (i8*, i8*)* @print_error_perpackage, i8* %19), !dbg !579
  %20 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !580
  call void @ensure_package_clientdata(%struct.pkginfo* %20), !dbg !581
  %21 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !582
  %22 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %21, i32 0, i32 11, !dbg !583
  %23 = load %struct.perpackagestate*, %struct.perpackagestate** %22, align 8, !dbg !583
  %24 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %23, i32 0, i32 5, !dbg !584
  store %struct.pkg_list* null, %struct.pkg_list** %24, align 8, !dbg !585
  %25 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !586
  call void @trigproc(%struct.pkginfo* %25, i32 0), !dbg !587
  call void @pop_error_context(i32 1), !dbg !588
  br label %3, !dbg !589, !llvm.loop !570

; <label>:26:                                     ; preds = %3
  ret void, !dbg !591
}

declare void @debug(i32, i8*, ...) #2

declare i32 @pkg_queue_is_empty(%struct.pkg_queue*) #2

declare %struct.pkginfo* @pkg_queue_pop(%struct.pkg_queue*) #2

; Function Attrs: nounwind returns_twice
declare i32 @_setjmp(%struct.__jmp_buf_tag*) #3

declare void @pop_error_context(i32) #2

declare void @push_error_context_jump([1 x %struct.__jmp_buf_tag]*, void (i8*, i8*)*, i8*) #2

declare void @print_error_perpackage(i8*, i8*) #2

declare i8* @pkg_name(%struct.pkginfo*, i32) #2

declare void @ensure_package_clientdata(%struct.pkginfo*) #2

; Function Attrs: nounwind uwtable
define void @trigproc(%struct.pkginfo*, i32) #0 !dbg !173 {
  %3 = alloca %struct.pkginfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.varbuf, align 8
  %6 = alloca %struct.trigpend*, align 8
  %7 = alloca %struct.pkginfo*, align 8
  %8 = alloca i32, align 4
  store %struct.pkginfo* %0, %struct.pkginfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %3, metadata !592, metadata !458), !dbg !593
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !594, metadata !458), !dbg !595
  call void @llvm.dbg.declare(metadata %struct.varbuf* %5, metadata !596, metadata !458), !dbg !597
  %9 = bitcast %struct.varbuf* %5 to i8*, !dbg !597
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 24, i32 8, i1 false), !dbg !597
  call void @llvm.dbg.declare(metadata %struct.trigpend** %6, metadata !598, metadata !458), !dbg !599
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %7, metadata !600, metadata !458), !dbg !601
  %10 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !602
  %11 = call i8* @pkg_name(%struct.pkginfo* %10, i32 3), !dbg !603
  call void (i32, i8*, ...) @debug(i32 4096, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* %11), !dbg !604
  %12 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !606
  call void @ensure_package_clientdata(%struct.pkginfo* %12), !dbg !607
  %13 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !608
  %14 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %13, i32 0, i32 11, !dbg !610
  %15 = load %struct.perpackagestate*, %struct.perpackagestate** %14, align 8, !dbg !610
  %16 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %15, i32 0, i32 5, !dbg !611
  %17 = load %struct.pkg_list*, %struct.pkg_list** %16, align 8, !dbg !611
  %18 = icmp ne %struct.pkg_list* %17, null, !dbg !608
  br i1 %18, label %19, label %26, !dbg !612

; <label>:19:                                     ; preds = %2
  %20 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !613
  %21 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %20, i32 0, i32 11, !dbg !614
  %22 = load %struct.perpackagestate*, %struct.perpackagestate** %21, align 8, !dbg !614
  %23 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %22, i32 0, i32 5, !dbg !615
  %24 = load %struct.pkg_list*, %struct.pkg_list** %23, align 8, !dbg !615
  %25 = getelementptr inbounds %struct.pkg_list, %struct.pkg_list* %24, i32 0, i32 1, !dbg !616
  store %struct.pkginfo* null, %struct.pkginfo** %25, align 8, !dbg !617
  br label %26, !dbg !613

; <label>:26:                                     ; preds = %19, %2
  %27 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !618
  %28 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %27, i32 0, i32 11, !dbg !619
  %29 = load %struct.perpackagestate*, %struct.perpackagestate** %28, align 8, !dbg !619
  %30 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %29, i32 0, i32 5, !dbg !620
  store %struct.pkg_list* null, %struct.pkg_list** %30, align 8, !dbg !621
  %31 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !622
  %32 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %31, i32 0, i32 15, !dbg !624
  %33 = load %struct.trigpend*, %struct.trigpend** %32, align 8, !dbg !624
  %34 = icmp ne %struct.trigpend* %33, null, !dbg !622
  br i1 %34, label %35, label %155, !dbg !625

; <label>:35:                                     ; preds = %26
  call void @llvm.dbg.declare(metadata i32* %8, metadata !626, metadata !458), !dbg !628
  %36 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !629
  %37 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %36, i32 0, i32 4, !dbg !631
  %38 = load i32, i32* %37, align 8, !dbg !631
  %39 = icmp ne i32 %38, 6, !dbg !632
  br i1 %39, label %40, label %50, !dbg !633

; <label>:40:                                     ; preds = %35
  %41 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !634
  %42 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %41, i32 0, i32 4, !dbg !635
  %43 = load i32, i32* %42, align 8, !dbg !635
  %44 = icmp ne i32 %43, 5, !dbg !636
  br i1 %44, label %45, label %50, !dbg !637

; <label>:45:                                     ; preds = %40
  %46 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !639
  %47 = call i8* @pkg_name(%struct.pkginfo* %46, i32 3), !dbg !640
  %48 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !641
  %49 = call i8* @pkg_status_name(%struct.pkginfo* %48), !dbg !642
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 393, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.trigproc, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i32 0, i32 0), i8* %47, i8* %49) #9, !dbg !644
  unreachable, !dbg !646

; <label>:50:                                     ; preds = %40, %35
  %51 = load i32, i32* @dependtry, align 4, !dbg !647
  %52 = icmp ult i32 %51, 3, !dbg !649
  br i1 %52, label %53, label %58, !dbg !650

; <label>:53:                                     ; preds = %50
  %54 = load i32, i32* %4, align 4, !dbg !651
  %55 = icmp eq i32 %54, 1, !dbg !652
  br i1 %55, label %56, label %58, !dbg !653

; <label>:56:                                     ; preds = %53
  %57 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !654
  call void @enqueue_package(%struct.pkginfo* %57), !dbg !656
  br label %157, !dbg !657

; <label>:58:                                     ; preds = %53, %50
  %59 = load i32, i32* @dependtry, align 4, !dbg !658
  %60 = icmp uge i32 %59, 2, !dbg !660
  br i1 %60, label %61, label %66, !dbg !661

; <label>:61:                                     ; preds = %58
  %62 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !662
  %63 = call zeroext i1 @findbreakcycle(%struct.pkginfo* %62), !dbg !665
  br i1 %63, label %64, label %65, !dbg !666

; <label>:64:                                     ; preds = %61
  store i32 0, i32* @sincenothing, align 4, !dbg !667
  br label %65, !dbg !668

; <label>:65:                                     ; preds = %64, %61
  br label %66, !dbg !669

; <label>:66:                                     ; preds = %65, %58
  %67 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !670
  %68 = call i32 @dependencies_ok(%struct.pkginfo* %67, %struct.pkginfo* null, %struct.varbuf* %5), !dbg !671
  store i32 %68, i32* %8, align 4, !dbg !672
  %69 = load i32, i32* %8, align 4, !dbg !673
  %70 = icmp eq i32 %69, 1, !dbg !675
  br i1 %70, label %71, label %80, !dbg !676

; <label>:71:                                     ; preds = %66
  %72 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !677
  %73 = call %struct.pkginfo* @check_trigger_cycle(%struct.pkginfo* %72), !dbg !679
  store %struct.pkginfo* %73, %struct.pkginfo** %7, align 8, !dbg !680
  %74 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !681
  %75 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !683
  %76 = icmp eq %struct.pkginfo* %74, %75, !dbg !684
  br i1 %76, label %77, label %78, !dbg !685

; <label>:77:                                     ; preds = %71
  br label %157, !dbg !686

; <label>:78:                                     ; preds = %71
  call void @varbuf_destroy(%struct.varbuf* %5), !dbg !687
  %79 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !688
  call void @enqueue_package(%struct.pkginfo* %79), !dbg !689
  br label %157, !dbg !690

; <label>:80:                                     ; preds = %66
  %81 = load i32, i32* %8, align 4, !dbg !691
  %82 = icmp eq i32 %81, 0, !dbg !693
  br i1 %82, label %83, label %94, !dbg !694

; <label>:83:                                     ; preds = %80
  %84 = load i32, i32* %4, align 4, !dbg !695
  %85 = icmp eq i32 %84, 0, !dbg !698
  br i1 %85, label %86, label %87, !dbg !699

; <label>:86:                                     ; preds = %83
  call void @trigproc_reset_cycle(), !dbg !700
  call void @varbuf_destroy(%struct.varbuf* %5), !dbg !702
  br label %157, !dbg !703

; <label>:87:                                     ; preds = %83
  store i32 0, i32* @sincenothing, align 4, !dbg !704
  call void @varbuf_end_str(%struct.varbuf* %5), !dbg !705
  %88 = call i8* @gettext(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i32 0, i32 0)) #10, !dbg !706
  %89 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !707
  %90 = call i8* @pkg_name(%struct.pkginfo* %89, i32 1), !dbg !708
  %91 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %5, i32 0, i32 2, !dbg !709
  %92 = load i8*, i8** %91, align 8, !dbg !709
  call void (i8*, ...) @notice(i8* %88, i8* %90, i8* %92), !dbg !710
  call void @varbuf_destroy(%struct.varbuf* %5), !dbg !712
  %93 = call i8* @gettext(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i32 0, i32 0)) #10, !dbg !713
  call void (i8*, ...) @ohshit(i8* %93) #9, !dbg !714
  unreachable, !dbg !715

; <label>:94:                                     ; preds = %80
  %95 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %5, i32 0, i32 0, !dbg !716
  %96 = load i64, i64* %95, align 8, !dbg !716
  %97 = icmp ne i64 %96, 0, !dbg !718
  br i1 %97, label %98, label %104, !dbg !719

; <label>:98:                                     ; preds = %94
  call void @varbuf_end_str(%struct.varbuf* %5), !dbg !720
  %99 = call i8* @gettext(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.8, i32 0, i32 0)) #10, !dbg !722
  %100 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !723
  %101 = call i8* @pkg_name(%struct.pkginfo* %100, i32 1), !dbg !724
  %102 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %5, i32 0, i32 2, !dbg !725
  %103 = load i8*, i8** %102, align 8, !dbg !725
  call void (i8*, ...) @notice(i8* %99, i8* %101, i8* %103), !dbg !726
  call void @varbuf_destroy(%struct.varbuf* %5), !dbg !728
  br label %104, !dbg !729

; <label>:104:                                    ; preds = %98, %94
  br label %105

; <label>:105:                                    ; preds = %104
  br label %106

; <label>:106:                                    ; preds = %105
  %107 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !730
  %108 = call %struct.pkginfo* @check_trigger_cycle(%struct.pkginfo* %107), !dbg !731
  store %struct.pkginfo* %108, %struct.pkginfo** %7, align 8, !dbg !732
  %109 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !733
  %110 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !735
  %111 = icmp eq %struct.pkginfo* %109, %110, !dbg !736
  br i1 %111, label %112, label %113, !dbg !737

; <label>:112:                                    ; preds = %106
  br label %157, !dbg !738

; <label>:113:                                    ; preds = %106
  %114 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #10, !dbg !739
  %115 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !740
  %116 = call i8* @pkg_name(%struct.pkginfo* %115, i32 1), !dbg !741
  %117 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !742
  %118 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %117, i32 0, i32 9, !dbg !743
  %119 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %118, i32 0, i32 11, !dbg !744
  %120 = call i8* @versiondescribe(%struct.dpkg_version* %119, i32 1), !dbg !745
  %121 = call i32 (i8*, ...) @printf(i8* %114, i8* %116, i8* %120), !dbg !746
  %122 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !747
  %123 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !748
  %124 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %123, i32 0, i32 9, !dbg !749
  call void @log_action(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.trigproc, i32 0, i32 0), %struct.pkginfo* %122, %struct.pkgbin* %124), !dbg !750
  call void @varbuf_reset(%struct.varbuf* @trigproc.namesarg), !dbg !751
  %125 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !752
  %126 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %125, i32 0, i32 15, !dbg !754
  %127 = load %struct.trigpend*, %struct.trigpend** %126, align 8, !dbg !754
  store %struct.trigpend* %127, %struct.trigpend** %6, align 8, !dbg !755
  br label %128, !dbg !756

; <label>:128:                                    ; preds = %139, %113
  %129 = load %struct.trigpend*, %struct.trigpend** %6, align 8, !dbg !757
  %130 = icmp ne %struct.trigpend* %129, null, !dbg !760
  br i1 %130, label %131, label %143, !dbg !760

; <label>:131:                                    ; preds = %128
  call void @varbuf_add_char(%struct.varbuf* @trigproc.namesarg, i32 32), !dbg !761
  %132 = load %struct.trigpend*, %struct.trigpend** %6, align 8, !dbg !763
  %133 = getelementptr inbounds %struct.trigpend, %struct.trigpend* %132, i32 0, i32 1, !dbg !764
  %134 = load i8*, i8** %133, align 8, !dbg !764
  %135 = load %struct.trigpend*, %struct.trigpend** %6, align 8, !dbg !765
  %136 = getelementptr inbounds %struct.trigpend, %struct.trigpend* %135, i32 0, i32 1, !dbg !766
  %137 = load i8*, i8** %136, align 8, !dbg !766
  %138 = call i64 @strlen(i8* %137) #11, !dbg !767
  call void @varbuf_add_buf(%struct.varbuf* @trigproc.namesarg, i8* %134, i64 %138), !dbg !768
  br label %139, !dbg !770

; <label>:139:                                    ; preds = %131
  %140 = load %struct.trigpend*, %struct.trigpend** %6, align 8, !dbg !771
  %141 = getelementptr inbounds %struct.trigpend, %struct.trigpend* %140, i32 0, i32 0, !dbg !773
  %142 = load %struct.trigpend*, %struct.trigpend** %141, align 8, !dbg !773
  store %struct.trigpend* %142, %struct.trigpend** %6, align 8, !dbg !774
  br label %128, !dbg !775, !llvm.loop !776

; <label>:143:                                    ; preds = %128
  call void @varbuf_end_str(%struct.varbuf* @trigproc.namesarg), !dbg !778
  %144 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !779
  call void @pkg_set_status(%struct.pkginfo* %144, i32 4), !dbg !780
  %145 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !781
  call void @modstatdb_note(%struct.pkginfo* %145), !dbg !782
  %146 = load i32, i32* @f_noact, align 4, !dbg !783
  %147 = icmp ne i32 %146, 0, !dbg !783
  br i1 %147, label %153, label %148, !dbg !785

; <label>:148:                                    ; preds = %143
  store i32 0, i32* @sincenothing, align 4, !dbg !786
  %149 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !788
  %150 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @trigproc.namesarg, i32 0, i32 2), align 8, !dbg !789
  %151 = getelementptr inbounds i8, i8* %150, i64 1, !dbg !790
  %152 = call i32 (%struct.pkginfo*, ...) @maintscript_postinst(%struct.pkginfo* %149, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* %151, i8* null), !dbg !791
  br label %153, !dbg !792

; <label>:153:                                    ; preds = %148, %143
  %154 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !793
  call void @post_postinst_tasks(%struct.pkginfo* %154, i32 7), !dbg !794
  br label %157, !dbg !795

; <label>:155:                                    ; preds = %26
  %156 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !796
  call void @trig_clear_awaiters(%struct.pkginfo* %156), !dbg !798
  br label %157

; <label>:157:                                    ; preds = %56, %77, %78, %86, %112, %155, %153
  ret void, !dbg !799
}

; Function Attrs: nounwind uwtable
define void @trig_activate_packageprocessing(%struct.pkginfo*) #0 !dbg !800 {
  %2 = alloca %struct.pkginfo*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %2, metadata !801, metadata !458), !dbg !802
  %3 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !803
  %4 = call i8* @pkg_name(%struct.pkginfo* %3, i32 3), !dbg !804
  call void (i32, i8*, ...) @debug(i32 8192, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0), i8* %4), !dbg !805
  %5 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !806
  %6 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !807
  %7 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %6, i32 0, i32 9, !dbg !808
  %8 = call i8* @pkg_infodb_get_file(%struct.pkginfo* %5, %struct.pkgbin* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0)), !dbg !809
  %9 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !810
  %10 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !811
  %11 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %10, i32 0, i32 9, !dbg !812
  call void @trig_parse_ci(i8* %8, void (i8*, %struct.pkginfo*, %struct.pkgbin*, i32)* null, void (i8*, %struct.pkginfo*, %struct.pkgbin*, i32)* @trig_cicb_statuschange_activate, %struct.pkginfo* %9, %struct.pkgbin* %11), !dbg !813
  ret void, !dbg !815
}

declare void @trig_parse_ci(i8*, void (i8*, %struct.pkginfo*, %struct.pkgbin*, i32)*, void (i8*, %struct.pkginfo*, %struct.pkgbin*, i32)*, %struct.pkginfo*, %struct.pkgbin*) #2

declare i8* @pkg_infodb_get_file(%struct.pkginfo*, %struct.pkgbin*, i8*) #2

declare void @trig_cicb_statuschange_activate(i8*, %struct.pkginfo*, %struct.pkgbin*, i32) #2

; Function Attrs: nounwind uwtable
define void @trigproc_reset_cycle() #0 !dbg !816 {
  store i8 0, i8* @tortoise_advance, align 1, !dbg !817
  store %struct.trigcyclenode* null, %struct.trigcyclenode** @hare, align 8, !dbg !818
  store %struct.trigcyclenode* null, %struct.trigcyclenode** @tortoise, align 8, !dbg !819
  ret void, !dbg !820
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #4

; Function Attrs: noreturn
declare void @do_internerr(i8*, i32, i8*, i8*, ...) #5

declare i8* @pkg_status_name(%struct.pkginfo*) #2

declare void @enqueue_package(%struct.pkginfo*) #2

declare zeroext i1 @findbreakcycle(%struct.pkginfo*) #2

declare i32 @dependencies_ok(%struct.pkginfo*, %struct.pkginfo*, %struct.varbuf*) #2

; Function Attrs: nounwind uwtable
define internal %struct.pkginfo* @check_trigger_cycle(%struct.pkginfo*) #0 !dbg !821 {
  %2 = alloca %struct.pkginfo*, align 8
  %3 = alloca %struct.pkginfo*, align 8
  %4 = alloca %struct.trigcyclenode*, align 8
  %5 = alloca %struct.trigcycleperpkg*, align 8
  %6 = alloca %struct.trigpend*, align 8
  %7 = alloca %struct.pkginfo*, align 8
  %8 = alloca i8*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %3, metadata !824, metadata !458), !dbg !825
  call void @llvm.dbg.declare(metadata %struct.trigcyclenode** %4, metadata !826, metadata !458), !dbg !827
  call void @llvm.dbg.declare(metadata %struct.trigcycleperpkg** %5, metadata !828, metadata !458), !dbg !829
  call void @llvm.dbg.declare(metadata %struct.trigpend** %6, metadata !830, metadata !458), !dbg !831
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %7, metadata !832, metadata !458), !dbg !833
  call void @llvm.dbg.declare(metadata i8** %8, metadata !834, metadata !458), !dbg !835
  %9 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !836
  %10 = call i8* @pkg_name(%struct.pkginfo* %9, i32 3), !dbg !837
  call void (i32, i8*, ...) @debug(i32 4096, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i32 0, i32 0), i8* %10), !dbg !838
  %11 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !839
  %12 = call %struct.trigcyclenode* @trigproc_new_cyclenode(%struct.pkginfo* %11), !dbg !840
  store %struct.trigcyclenode* %12, %struct.trigcyclenode** %4, align 8, !dbg !841
  %13 = load %struct.trigcyclenode*, %struct.trigcyclenode** @hare, align 8, !dbg !842
  %14 = icmp ne %struct.trigcyclenode* %13, null, !dbg !842
  br i1 %14, label %19, label %15, !dbg !844

; <label>:15:                                     ; preds = %1
  %16 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !845
  %17 = call i8* @pkg_name(%struct.pkginfo* %16, i32 3), !dbg !847
  call void (i32, i8*, ...) @debug(i32 8192, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0), i8* %17), !dbg !848
  %18 = load %struct.trigcyclenode*, %struct.trigcyclenode** %4, align 8, !dbg !849
  store %struct.trigcyclenode* %18, %struct.trigcyclenode** @tortoise, align 8, !dbg !850
  store %struct.trigcyclenode* %18, %struct.trigcyclenode** @hare, align 8, !dbg !851
  store %struct.pkginfo* null, %struct.pkginfo** %2, align 8, !dbg !852
  br label %147, !dbg !852

; <label>:19:                                     ; preds = %1
  %20 = load %struct.trigcyclenode*, %struct.trigcyclenode** %4, align 8, !dbg !853
  %21 = load %struct.trigcyclenode*, %struct.trigcyclenode** @hare, align 8, !dbg !854
  %22 = getelementptr inbounds %struct.trigcyclenode, %struct.trigcyclenode* %21, i32 0, i32 0, !dbg !855
  store %struct.trigcyclenode* %20, %struct.trigcyclenode** %22, align 8, !dbg !856
  %23 = load %struct.trigcyclenode*, %struct.trigcyclenode** @hare, align 8, !dbg !857
  %24 = getelementptr inbounds %struct.trigcyclenode, %struct.trigcyclenode* %23, i32 0, i32 0, !dbg !858
  %25 = load %struct.trigcyclenode*, %struct.trigcyclenode** %24, align 8, !dbg !858
  store %struct.trigcyclenode* %25, %struct.trigcyclenode** @hare, align 8, !dbg !859
  %26 = load i8, i8* @tortoise_advance, align 1, !dbg !860
  %27 = trunc i8 %26 to i1, !dbg !860
  br i1 %27, label %28, label %32, !dbg !862

; <label>:28:                                     ; preds = %19
  %29 = load %struct.trigcyclenode*, %struct.trigcyclenode** @tortoise, align 8, !dbg !863
  %30 = getelementptr inbounds %struct.trigcyclenode, %struct.trigcyclenode* %29, i32 0, i32 0, !dbg !864
  %31 = load %struct.trigcyclenode*, %struct.trigcyclenode** %30, align 8, !dbg !864
  store %struct.trigcyclenode* %31, %struct.trigcyclenode** @tortoise, align 8, !dbg !865
  br label %32, !dbg !866

; <label>:32:                                     ; preds = %28, %19
  %33 = load i8, i8* @tortoise_advance, align 1, !dbg !867
  %34 = trunc i8 %33 to i1, !dbg !867
  %35 = xor i1 %34, true, !dbg !868
  %36 = zext i1 %35 to i8, !dbg !869
  store i8 %36, i8* @tortoise_advance, align 1, !dbg !869
  %37 = load %struct.trigcyclenode*, %struct.trigcyclenode** @tortoise, align 8, !dbg !870
  %38 = getelementptr inbounds %struct.trigcyclenode, %struct.trigcyclenode* %37, i32 0, i32 1, !dbg !872
  %39 = load %struct.trigcycleperpkg*, %struct.trigcycleperpkg** %38, align 8, !dbg !872
  store %struct.trigcycleperpkg* %39, %struct.trigcycleperpkg** %5, align 8, !dbg !873
  br label %40, !dbg !874

; <label>:40:                                     ; preds = %49, %32
  %41 = load %struct.trigcycleperpkg*, %struct.trigcycleperpkg** %5, align 8, !dbg !875
  %42 = icmp ne %struct.trigcycleperpkg* %41, null, !dbg !877
  br i1 %42, label %43, label %53, !dbg !877

; <label>:43:                                     ; preds = %40
  %44 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !879
  %45 = load %struct.trigcycleperpkg*, %struct.trigcycleperpkg** %5, align 8, !dbg !882
  %46 = call zeroext i1 @tortoise_in_hare(%struct.pkginfo* %44, %struct.trigcycleperpkg* %45), !dbg !883
  br i1 %46, label %48, label %47, !dbg !884

; <label>:47:                                     ; preds = %43
  store %struct.pkginfo* null, %struct.pkginfo** %2, align 8, !dbg !885
  br label %147, !dbg !885

; <label>:48:                                     ; preds = %43
  br label %49, !dbg !886

; <label>:49:                                     ; preds = %48
  %50 = load %struct.trigcycleperpkg*, %struct.trigcycleperpkg** %5, align 8, !dbg !887
  %51 = getelementptr inbounds %struct.trigcycleperpkg, %struct.trigcycleperpkg* %50, i32 0, i32 0, !dbg !888
  %52 = load %struct.trigcycleperpkg*, %struct.trigcycleperpkg** %51, align 8, !dbg !888
  store %struct.trigcycleperpkg* %52, %struct.trigcycleperpkg** %5, align 8, !dbg !889
  br label %40, !dbg !890, !llvm.loop !892

; <label>:53:                                     ; preds = %40
  %54 = call i8* @gettext(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.14, i32 0, i32 0)) #10, !dbg !894
  call void (i8*, ...) @notice(i8* %54), !dbg !895
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), i8** %8, align 8, !dbg !897
  %55 = load %struct.trigcyclenode*, %struct.trigcyclenode** @tortoise, align 8, !dbg !898
  store %struct.trigcyclenode* %55, %struct.trigcyclenode** %4, align 8, !dbg !900
  br label %56, !dbg !901

; <label>:56:                                     ; preds = %67, %53
  %57 = load %struct.trigcyclenode*, %struct.trigcyclenode** %4, align 8, !dbg !902
  %58 = icmp ne %struct.trigcyclenode* %57, null, !dbg !905
  br i1 %58, label %59, label %71, !dbg !905

; <label>:59:                                     ; preds = %56
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !906
  %61 = load i8*, i8** %8, align 8, !dbg !908
  %62 = load %struct.trigcyclenode*, %struct.trigcyclenode** %4, align 8, !dbg !909
  %63 = getelementptr inbounds %struct.trigcyclenode, %struct.trigcyclenode* %62, i32 0, i32 2, !dbg !910
  %64 = load %struct.pkginfo*, %struct.pkginfo** %63, align 8, !dbg !910
  %65 = call i8* @pkg_name(%struct.pkginfo* %64, i32 1), !dbg !911
  %66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* %61, i8* %65), !dbg !912
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8** %8, align 8, !dbg !913
  br label %67, !dbg !914

; <label>:67:                                     ; preds = %59
  %68 = load %struct.trigcyclenode*, %struct.trigcyclenode** %4, align 8, !dbg !915
  %69 = getelementptr inbounds %struct.trigcyclenode, %struct.trigcyclenode* %68, i32 0, i32 0, !dbg !917
  %70 = load %struct.trigcyclenode*, %struct.trigcyclenode** %69, align 8, !dbg !917
  store %struct.trigcyclenode* %70, %struct.trigcyclenode** %4, align 8, !dbg !918
  br label %56, !dbg !919, !llvm.loop !920

; <label>:71:                                     ; preds = %56
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !922
  %73 = call i8* @gettext(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.18, i32 0, i32 0)) #10, !dbg !923
  %74 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %72, i8* %73), !dbg !924
  %75 = load %struct.trigcyclenode*, %struct.trigcyclenode** @tortoise, align 8, !dbg !925
  %76 = getelementptr inbounds %struct.trigcyclenode, %struct.trigcyclenode* %75, i32 0, i32 1, !dbg !927
  %77 = load %struct.trigcycleperpkg*, %struct.trigcycleperpkg** %76, align 8, !dbg !927
  store %struct.trigcycleperpkg* %77, %struct.trigcycleperpkg** %5, align 8, !dbg !928
  br label %78, !dbg !929

; <label>:78:                                     ; preds = %108, %71
  %79 = load %struct.trigcycleperpkg*, %struct.trigcycleperpkg** %5, align 8, !dbg !930
  %80 = icmp ne %struct.trigcycleperpkg* %79, null, !dbg !932
  br i1 %80, label %81, label %112, !dbg !932

; <label>:81:                                     ; preds = %78
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !934
  %83 = load %struct.trigcycleperpkg*, %struct.trigcycleperpkg** %5, align 8, !dbg !936
  %84 = getelementptr inbounds %struct.trigcycleperpkg, %struct.trigcycleperpkg* %83, i32 0, i32 1, !dbg !937
  %85 = load %struct.pkginfo*, %struct.pkginfo** %84, align 8, !dbg !937
  %86 = call i8* @pkg_name(%struct.pkginfo* %85, i32 1), !dbg !938
  %87 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %82, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* %86), !dbg !939
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0), i8** %8, align 8, !dbg !940
  %88 = load %struct.trigcycleperpkg*, %struct.trigcycleperpkg** %5, align 8, !dbg !941
  %89 = getelementptr inbounds %struct.trigcycleperpkg, %struct.trigcycleperpkg* %88, i32 0, i32 2, !dbg !943
  %90 = load %struct.trigpend*, %struct.trigpend** %89, align 8, !dbg !943
  store %struct.trigpend* %90, %struct.trigpend** %6, align 8, !dbg !944
  br label %91, !dbg !945

; <label>:91:                                     ; preds = %101, %81
  %92 = load %struct.trigpend*, %struct.trigpend** %6, align 8, !dbg !946
  %93 = icmp ne %struct.trigpend* %92, null, !dbg !948
  br i1 %93, label %94, label %105, !dbg !948

; <label>:94:                                     ; preds = %91
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !950
  %96 = load i8*, i8** %8, align 8, !dbg !952
  %97 = load %struct.trigpend*, %struct.trigpend** %6, align 8, !dbg !953
  %98 = getelementptr inbounds %struct.trigpend, %struct.trigpend* %97, i32 0, i32 1, !dbg !954
  %99 = load i8*, i8** %98, align 8, !dbg !954
  %100 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* %96, i8* %99), !dbg !955
  br label %101, !dbg !956

; <label>:101:                                    ; preds = %94
  %102 = load %struct.trigpend*, %struct.trigpend** %6, align 8, !dbg !957
  %103 = getelementptr inbounds %struct.trigpend, %struct.trigpend* %102, i32 0, i32 0, !dbg !958
  %104 = load %struct.trigpend*, %struct.trigpend** %103, align 8, !dbg !958
  store %struct.trigpend* %104, %struct.trigpend** %6, align 8, !dbg !959
  br label %91, !dbg !960, !llvm.loop !962

; <label>:105:                                    ; preds = %91
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !964
  %107 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %106, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0)), !dbg !965
  br label %108, !dbg !966

; <label>:108:                                    ; preds = %105
  %109 = load %struct.trigcycleperpkg*, %struct.trigcycleperpkg** %5, align 8, !dbg !967
  %110 = getelementptr inbounds %struct.trigcycleperpkg, %struct.trigcycleperpkg* %109, i32 0, i32 0, !dbg !968
  %111 = load %struct.trigcycleperpkg*, %struct.trigcycleperpkg** %110, align 8, !dbg !968
  store %struct.trigcycleperpkg* %111, %struct.trigcycleperpkg** %5, align 8, !dbg !969
  br label %78, !dbg !970, !llvm.loop !972

; <label>:112:                                    ; preds = %78
  %113 = load %struct.trigcyclenode*, %struct.trigcyclenode** @tortoise, align 8, !dbg !974
  %114 = getelementptr inbounds %struct.trigcyclenode, %struct.trigcyclenode* %113, i32 0, i32 1, !dbg !975
  %115 = load %struct.trigcycleperpkg*, %struct.trigcycleperpkg** %114, align 8, !dbg !975
  %116 = getelementptr inbounds %struct.trigcycleperpkg, %struct.trigcycleperpkg* %115, i32 0, i32 1, !dbg !976
  %117 = load %struct.pkginfo*, %struct.pkginfo** %116, align 8, !dbg !976
  store %struct.pkginfo* %117, %struct.pkginfo** %7, align 8, !dbg !977
  %118 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !978
  %119 = call i8* @pkg_name(%struct.pkginfo* %118, i32 3), !dbg !979
  %120 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !980
  %121 = call i8* @pkg_name(%struct.pkginfo* %120, i32 3), !dbg !981
  call void (i32, i8*, ...) @debug(i32 4096, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22, i32 0, i32 0), i8* %119, i8* %121), !dbg !982
  %122 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !983
  %123 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %122, i32 0, i32 4, !dbg !985
  %124 = load i32, i32* %123, align 8, !dbg !985
  %125 = icmp ne i32 %124, 5, !dbg !986
  br i1 %125, label %126, label %136, !dbg !987

; <label>:126:                                    ; preds = %112
  %127 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !988
  %128 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %127, i32 0, i32 4, !dbg !989
  %129 = load i32, i32* %128, align 8, !dbg !989
  %130 = icmp ne i32 %129, 6, !dbg !990
  br i1 %130, label %131, label %136, !dbg !991

; <label>:131:                                    ; preds = %126
  %132 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !992
  %133 = call i8* @pkg_name(%struct.pkginfo* %132, i32 3), !dbg !993
  %134 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !994
  %135 = call i8* @pkg_status_name(%struct.pkginfo* %134), !dbg !995
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 356, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.check_trigger_cycle, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i32 0, i32 0), i8* %133, i8* %135) #9, !dbg !997
  unreachable, !dbg !999

; <label>:136:                                    ; preds = %126, %112
  %137 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1000
  %138 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %137, i32 0, i32 11, !dbg !1001
  %139 = load %struct.perpackagestate*, %struct.perpackagestate** %138, align 8, !dbg !1001
  %140 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %139, i32 0, i32 0, !dbg !1002
  store i32 0, i32* %140, align 8, !dbg !1003
  %141 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1004
  call void @pkg_set_status(%struct.pkginfo* %141, i32 4), !dbg !1005
  %142 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1006
  call void @modstatdb_note(%struct.pkginfo* %142), !dbg !1007
  %143 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.23, i32 0, i32 0)) #10, !dbg !1008
  %144 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1009
  %145 = call i8* @pkg_name(%struct.pkginfo* %144, i32 1), !dbg !1010
  call void @print_error_perpackage(i8* %143, i8* %145), !dbg !1011
  %146 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1012
  store %struct.pkginfo* %146, %struct.pkginfo** %2, align 8, !dbg !1013
  br label %147, !dbg !1013

; <label>:147:                                    ; preds = %136, %47, %15
  %148 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1014
  ret %struct.pkginfo* %148, !dbg !1014
}

declare void @varbuf_destroy(%struct.varbuf*) #2

declare void @varbuf_end_str(%struct.varbuf*) #2

declare void @notice(i8*, ...) #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #6

; Function Attrs: noreturn
declare void @ohshit(i8*, ...) #5

declare i32 @printf(i8*, ...) #2

declare i8* @versiondescribe(%struct.dpkg_version*, i32) #2

declare void @log_action(i8*, %struct.pkginfo*, %struct.pkgbin*) #2

declare void @varbuf_reset(%struct.varbuf*) #2

declare void @varbuf_add_char(%struct.varbuf*, i32) #2

declare void @varbuf_add_buf(%struct.varbuf*, i8*, i64) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #7

declare void @pkg_set_status(%struct.pkginfo*, i32) #2

declare void @modstatdb_note(%struct.pkginfo*) #2

declare i32 @maintscript_postinst(%struct.pkginfo*, ...) #2

declare void @post_postinst_tasks(%struct.pkginfo*, i32) #2

declare void @trig_clear_awaiters(%struct.pkginfo*) #2

; Function Attrs: nounwind uwtable
define void @trigproc_install_hooks() #0 !dbg !1015 {
  call void @trig_override_hooks(%struct.trig_hooks* @trig_our_hooks), !dbg !1016
  ret void, !dbg !1017
}

declare void @trig_override_hooks(%struct.trig_hooks*) #2

declare %struct.pkg_list* @pkg_queue_push(%struct.pkg_queue*, %struct.pkginfo*) #2

; Function Attrs: nounwind uwtable
define internal %struct.trigcyclenode* @trigproc_new_cyclenode(%struct.pkginfo*) #0 !dbg !1018 {
  %2 = alloca %struct.pkginfo*, align 8
  %3 = alloca %struct.trigcyclenode*, align 8
  %4 = alloca %struct.trigcycleperpkg*, align 8
  %5 = alloca %struct.pkginfo*, align 8
  %6 = alloca %struct.pkg_hash_iter*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %2, metadata !1021, metadata !458), !dbg !1022
  call void @llvm.dbg.declare(metadata %struct.trigcyclenode** %3, metadata !1023, metadata !458), !dbg !1024
  call void @llvm.dbg.declare(metadata %struct.trigcycleperpkg** %4, metadata !1025, metadata !458), !dbg !1026
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %5, metadata !1027, metadata !458), !dbg !1028
  call void @llvm.dbg.declare(metadata %struct.pkg_hash_iter** %6, metadata !1029, metadata !458), !dbg !1030
  %7 = call i8* @nfmalloc(i64 24), !dbg !1031
  %8 = bitcast i8* %7 to %struct.trigcyclenode*, !dbg !1031
  store %struct.trigcyclenode* %8, %struct.trigcyclenode** %3, align 8, !dbg !1032
  %9 = load %struct.trigcyclenode*, %struct.trigcyclenode** %3, align 8, !dbg !1033
  %10 = getelementptr inbounds %struct.trigcyclenode, %struct.trigcyclenode* %9, i32 0, i32 1, !dbg !1034
  store %struct.trigcycleperpkg* null, %struct.trigcycleperpkg** %10, align 8, !dbg !1035
  %11 = load %struct.trigcyclenode*, %struct.trigcyclenode** %3, align 8, !dbg !1036
  %12 = getelementptr inbounds %struct.trigcyclenode, %struct.trigcyclenode* %11, i32 0, i32 0, !dbg !1037
  store %struct.trigcyclenode* null, %struct.trigcyclenode** %12, align 8, !dbg !1038
  %13 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1039
  %14 = load %struct.trigcyclenode*, %struct.trigcyclenode** %3, align 8, !dbg !1040
  %15 = getelementptr inbounds %struct.trigcyclenode, %struct.trigcyclenode* %14, i32 0, i32 2, !dbg !1041
  store %struct.pkginfo* %13, %struct.pkginfo** %15, align 8, !dbg !1042
  %16 = call %struct.pkg_hash_iter* @pkg_hash_iter_new(), !dbg !1043
  store %struct.pkg_hash_iter* %16, %struct.pkg_hash_iter** %6, align 8, !dbg !1044
  br label %17, !dbg !1045

; <label>:17:                                     ; preds = %27, %26, %1
  %18 = load %struct.pkg_hash_iter*, %struct.pkg_hash_iter** %6, align 8, !dbg !1046
  %19 = call %struct.pkginfo* @pkg_hash_iter_next_pkg(%struct.pkg_hash_iter* %18), !dbg !1048
  store %struct.pkginfo* %19, %struct.pkginfo** %5, align 8, !dbg !1049
  %20 = icmp ne %struct.pkginfo* %19, null, !dbg !1050
  br i1 %20, label %21, label %46, !dbg !1050

; <label>:21:                                     ; preds = %17
  %22 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1051
  %23 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %22, i32 0, i32 15, !dbg !1054
  %24 = load %struct.trigpend*, %struct.trigpend** %23, align 8, !dbg !1054
  %25 = icmp ne %struct.trigpend* %24, null, !dbg !1051
  br i1 %25, label %27, label %26, !dbg !1055

; <label>:26:                                     ; preds = %21
  br label %17, !dbg !1056, !llvm.loop !1057

; <label>:27:                                     ; preds = %21
  %28 = call i8* @nfmalloc(i64 24), !dbg !1058
  %29 = bitcast i8* %28 to %struct.trigcycleperpkg*, !dbg !1058
  store %struct.trigcycleperpkg* %29, %struct.trigcycleperpkg** %4, align 8, !dbg !1059
  %30 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1060
  %31 = load %struct.trigcycleperpkg*, %struct.trigcycleperpkg** %4, align 8, !dbg !1061
  %32 = getelementptr inbounds %struct.trigcycleperpkg, %struct.trigcycleperpkg* %31, i32 0, i32 1, !dbg !1062
  store %struct.pkginfo* %30, %struct.pkginfo** %32, align 8, !dbg !1063
  %33 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1064
  %34 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %33, i32 0, i32 15, !dbg !1065
  %35 = load %struct.trigpend*, %struct.trigpend** %34, align 8, !dbg !1065
  %36 = load %struct.trigcycleperpkg*, %struct.trigcycleperpkg** %4, align 8, !dbg !1066
  %37 = getelementptr inbounds %struct.trigcycleperpkg, %struct.trigcycleperpkg* %36, i32 0, i32 2, !dbg !1067
  store %struct.trigpend* %35, %struct.trigpend** %37, align 8, !dbg !1068
  %38 = load %struct.trigcyclenode*, %struct.trigcyclenode** %3, align 8, !dbg !1069
  %39 = getelementptr inbounds %struct.trigcyclenode, %struct.trigcyclenode* %38, i32 0, i32 1, !dbg !1070
  %40 = load %struct.trigcycleperpkg*, %struct.trigcycleperpkg** %39, align 8, !dbg !1070
  %41 = load %struct.trigcycleperpkg*, %struct.trigcycleperpkg** %4, align 8, !dbg !1071
  %42 = getelementptr inbounds %struct.trigcycleperpkg, %struct.trigcycleperpkg* %41, i32 0, i32 0, !dbg !1072
  store %struct.trigcycleperpkg* %40, %struct.trigcycleperpkg** %42, align 8, !dbg !1073
  %43 = load %struct.trigcycleperpkg*, %struct.trigcycleperpkg** %4, align 8, !dbg !1074
  %44 = load %struct.trigcyclenode*, %struct.trigcyclenode** %3, align 8, !dbg !1075
  %45 = getelementptr inbounds %struct.trigcyclenode, %struct.trigcyclenode* %44, i32 0, i32 1, !dbg !1076
  store %struct.trigcycleperpkg* %43, %struct.trigcycleperpkg** %45, align 8, !dbg !1077
  br label %17, !dbg !1078, !llvm.loop !1057

; <label>:46:                                     ; preds = %17
  %47 = load %struct.pkg_hash_iter*, %struct.pkg_hash_iter** %6, align 8, !dbg !1080
  call void @pkg_hash_iter_free(%struct.pkg_hash_iter* %47), !dbg !1081
  %48 = load %struct.trigcyclenode*, %struct.trigcyclenode** %3, align 8, !dbg !1082
  ret %struct.trigcyclenode* %48, !dbg !1083
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @tortoise_in_hare(%struct.pkginfo*, %struct.trigcycleperpkg*) #0 !dbg !1084 {
  %3 = alloca i1, align 1
  %4 = alloca %struct.pkginfo*, align 8
  %5 = alloca %struct.trigcycleperpkg*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.trigpend*, align 8
  %9 = alloca %struct.trigpend*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %4, metadata !1087, metadata !458), !dbg !1088
  store %struct.trigcycleperpkg* %1, %struct.trigcycleperpkg** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.trigcycleperpkg** %5, metadata !1089, metadata !458), !dbg !1090
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1091, metadata !458), !dbg !1092
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1093, metadata !458), !dbg !1094
  call void @llvm.dbg.declare(metadata %struct.trigpend** %8, metadata !1095, metadata !458), !dbg !1096
  call void @llvm.dbg.declare(metadata %struct.trigpend** %9, metadata !1097, metadata !458), !dbg !1098
  %10 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !1099
  %11 = call i8* @pkg_name(%struct.pkginfo* %10, i32 1), !dbg !1100
  store i8* %11, i8** %6, align 8, !dbg !1101
  %12 = load %struct.trigcycleperpkg*, %struct.trigcycleperpkg** %5, align 8, !dbg !1102
  %13 = getelementptr inbounds %struct.trigcycleperpkg, %struct.trigcycleperpkg* %12, i32 0, i32 1, !dbg !1103
  %14 = load %struct.pkginfo*, %struct.pkginfo** %13, align 8, !dbg !1103
  %15 = call i8* @pkg_name(%struct.pkginfo* %14, i32 1), !dbg !1104
  store i8* %15, i8** %7, align 8, !dbg !1105
  %16 = load i8*, i8** %6, align 8, !dbg !1106
  %17 = load i8*, i8** %7, align 8, !dbg !1107
  call void (i32, i8*, ...) @debug(i32 8192, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.tortoise_in_hare, i32 0, i32 0), i8* %16, i8* %17), !dbg !1108
  %18 = load %struct.trigcycleperpkg*, %struct.trigcycleperpkg** %5, align 8, !dbg !1109
  %19 = getelementptr inbounds %struct.trigcycleperpkg, %struct.trigcycleperpkg* %18, i32 0, i32 2, !dbg !1111
  %20 = load %struct.trigpend*, %struct.trigpend** %19, align 8, !dbg !1111
  store %struct.trigpend* %20, %struct.trigpend** %9, align 8, !dbg !1112
  br label %21, !dbg !1113

; <label>:21:                                     ; preds = %68, %2
  %22 = load %struct.trigpend*, %struct.trigpend** %9, align 8, !dbg !1114
  %23 = icmp ne %struct.trigpend* %22, null, !dbg !1116
  br i1 %23, label %24, label %72, !dbg !1116

; <label>:24:                                     ; preds = %21
  %25 = load i8*, i8** %6, align 8, !dbg !1118
  %26 = load i8*, i8** %7, align 8, !dbg !1120
  %27 = load %struct.trigpend*, %struct.trigpend** %9, align 8, !dbg !1121
  %28 = getelementptr inbounds %struct.trigpend, %struct.trigpend* %27, i32 0, i32 1, !dbg !1122
  %29 = load i8*, i8** %28, align 8, !dbg !1122
  call void (i32, i8*, ...) @debug(i32 8192, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.tortoise_in_hare, i32 0, i32 0), i8* %25, i8* %26, i8* %29), !dbg !1123
  %30 = load %struct.trigcycleperpkg*, %struct.trigcycleperpkg** %5, align 8, !dbg !1124
  %31 = getelementptr inbounds %struct.trigcycleperpkg, %struct.trigcycleperpkg* %30, i32 0, i32 1, !dbg !1126
  %32 = load %struct.pkginfo*, %struct.pkginfo** %31, align 8, !dbg !1126
  %33 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %32, i32 0, i32 15, !dbg !1127
  %34 = load %struct.trigpend*, %struct.trigpend** %33, align 8, !dbg !1127
  store %struct.trigpend* %34, %struct.trigpend** %8, align 8, !dbg !1128
  br label %35, !dbg !1129

; <label>:35:                                     ; preds = %57, %24
  %36 = load %struct.trigpend*, %struct.trigpend** %8, align 8, !dbg !1130
  %37 = icmp ne %struct.trigpend* %36, null, !dbg !1132
  br i1 %37, label %38, label %61, !dbg !1132

; <label>:38:                                     ; preds = %35
  %39 = load i8*, i8** %6, align 8, !dbg !1134
  %40 = load i8*, i8** %7, align 8, !dbg !1136
  %41 = load %struct.trigpend*, %struct.trigpend** %9, align 8, !dbg !1137
  %42 = getelementptr inbounds %struct.trigpend, %struct.trigpend* %41, i32 0, i32 1, !dbg !1138
  %43 = load i8*, i8** %42, align 8, !dbg !1138
  %44 = load %struct.trigpend*, %struct.trigpend** %8, align 8, !dbg !1139
  %45 = getelementptr inbounds %struct.trigpend, %struct.trigpend* %44, i32 0, i32 1, !dbg !1140
  %46 = load i8*, i8** %45, align 8, !dbg !1140
  call void (i32, i8*, ...) @debug(i32 16384, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.tortoise_in_hare, i32 0, i32 0), i8* %39, i8* %40, i8* %43, i8* %46), !dbg !1141
  %47 = load %struct.trigpend*, %struct.trigpend** %8, align 8, !dbg !1142
  %48 = getelementptr inbounds %struct.trigpend, %struct.trigpend* %47, i32 0, i32 1, !dbg !1144
  %49 = load i8*, i8** %48, align 8, !dbg !1144
  %50 = load %struct.trigpend*, %struct.trigpend** %9, align 8, !dbg !1145
  %51 = getelementptr inbounds %struct.trigpend, %struct.trigpend* %50, i32 0, i32 1, !dbg !1146
  %52 = load i8*, i8** %51, align 8, !dbg !1146
  %53 = call i32 @strcmp(i8* %49, i8* %52) #11, !dbg !1147
  %54 = icmp eq i32 %53, 0, !dbg !1148
  br i1 %54, label %55, label %56, !dbg !1149

; <label>:55:                                     ; preds = %38
  br label %61, !dbg !1150

; <label>:56:                                     ; preds = %38
  br label %57, !dbg !1151

; <label>:57:                                     ; preds = %56
  %58 = load %struct.trigpend*, %struct.trigpend** %8, align 8, !dbg !1152
  %59 = getelementptr inbounds %struct.trigpend, %struct.trigpend* %58, i32 0, i32 0, !dbg !1153
  %60 = load %struct.trigpend*, %struct.trigpend** %59, align 8, !dbg !1153
  store %struct.trigpend* %60, %struct.trigpend** %8, align 8, !dbg !1154
  br label %35, !dbg !1155, !llvm.loop !1157

; <label>:61:                                     ; preds = %55, %35
  %62 = load %struct.trigpend*, %struct.trigpend** %8, align 8, !dbg !1159
  %63 = icmp eq %struct.trigpend* %62, null, !dbg !1161
  br i1 %63, label %64, label %67, !dbg !1162

; <label>:64:                                     ; preds = %61
  %65 = load i8*, i8** %6, align 8, !dbg !1163
  %66 = load i8*, i8** %7, align 8, !dbg !1165
  call void (i32, i8*, ...) @debug(i32 8192, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.tortoise_in_hare, i32 0, i32 0), i8* %65, i8* %66), !dbg !1166
  store i1 false, i1* %3, align 1, !dbg !1167
  br label %73, !dbg !1167

; <label>:67:                                     ; preds = %61
  br label %68, !dbg !1168

; <label>:68:                                     ; preds = %67
  %69 = load %struct.trigpend*, %struct.trigpend** %9, align 8, !dbg !1169
  %70 = getelementptr inbounds %struct.trigpend, %struct.trigpend* %69, i32 0, i32 0, !dbg !1170
  %71 = load %struct.trigpend*, %struct.trigpend** %70, align 8, !dbg !1170
  store %struct.trigpend* %71, %struct.trigpend** %9, align 8, !dbg !1171
  br label %21, !dbg !1172, !llvm.loop !1174

; <label>:72:                                     ; preds = %21
  store i1 true, i1* %3, align 1, !dbg !1176
  br label %73, !dbg !1176

; <label>:73:                                     ; preds = %72, %64
  %74 = load i1, i1* %3, align 1, !dbg !1177
  ret i1 %74, !dbg !1177
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare i8* @nfmalloc(i64) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #7

; Function Attrs: nounwind uwtable
define internal void @trig_transitional_activate(i32) #0 !dbg !1178 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pkg_hash_iter*, align 8
  %4 = alloca %struct.pkginfo*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1179, metadata !458), !dbg !1180
  call void @llvm.dbg.declare(metadata %struct.pkg_hash_iter** %3, metadata !1181, metadata !458), !dbg !1182
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %4, metadata !1183, metadata !458), !dbg !1184
  %5 = call %struct.pkg_hash_iter* @pkg_hash_iter_new(), !dbg !1185
  store %struct.pkg_hash_iter* %5, %struct.pkg_hash_iter** %3, align 8, !dbg !1186
  br label %6, !dbg !1187

; <label>:6:                                      ; preds = %56, %37, %15, %1
  %7 = load %struct.pkg_hash_iter*, %struct.pkg_hash_iter** %3, align 8, !dbg !1188
  %8 = call %struct.pkginfo* @pkg_hash_iter_next_pkg(%struct.pkg_hash_iter* %7), !dbg !1190
  store %struct.pkginfo* %8, %struct.pkginfo** %4, align 8, !dbg !1191
  %9 = icmp ne %struct.pkginfo* %8, null, !dbg !1192
  br i1 %9, label %10, label %57, !dbg !1192

; <label>:10:                                     ; preds = %6
  %11 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !1193
  %12 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %11, i32 0, i32 4, !dbg !1196
  %13 = load i32, i32* %12, align 8, !dbg !1196
  %14 = icmp ule i32 %13, 2, !dbg !1197
  br i1 %14, label %15, label %16, !dbg !1198

; <label>:15:                                     ; preds = %10
  br label %6, !dbg !1199, !llvm.loop !1200

; <label>:16:                                     ; preds = %10
  %17 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !1201
  %18 = call i8* @pkg_name(%struct.pkginfo* %17, i32 3), !dbg !1202
  %19 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !1203
  %20 = call i8* @pkg_status_name(%struct.pkginfo* %19), !dbg !1204
  call void (i32, i8*, ...) @debug(i32 8192, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.28, i32 0, i32 0), i8* %18, i8* %20), !dbg !1205
  %21 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !1206
  %22 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %21, i32 0, i32 15, !dbg !1207
  store %struct.trigpend* null, %struct.trigpend** %22, align 8, !dbg !1208
  %23 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !1209
  %24 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !1210
  %25 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %24, i32 0, i32 9, !dbg !1211
  %26 = call i8* @pkg_infodb_get_file(%struct.pkginfo* %23, %struct.pkgbin* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0)), !dbg !1212
  %27 = load i32, i32* %2, align 4, !dbg !1213
  %28 = icmp uge i32 %27, 3, !dbg !1214
  %29 = select i1 %28, void (i8*, %struct.pkginfo*, %struct.pkgbin*, i32)* @transitional_interest_callback, void (i8*, %struct.pkginfo*, %struct.pkgbin*, i32)* @transitional_interest_callback_ro, !dbg !1213
  %30 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !1215
  %31 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !1216
  %32 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %31, i32 0, i32 9, !dbg !1217
  call void @trig_parse_ci(i8* %26, void (i8*, %struct.pkginfo*, %struct.pkgbin*, i32)* %29, void (i8*, %struct.pkginfo*, %struct.pkgbin*, i32)* null, %struct.pkginfo* %30, %struct.pkgbin* %32), !dbg !1218
  %33 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !1220
  %34 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %33, i32 0, i32 4, !dbg !1222
  %35 = load i32, i32* %34, align 8, !dbg !1222
  %36 = icmp ult i32 %35, 5, !dbg !1223
  br i1 %36, label %37, label %38, !dbg !1224

; <label>:37:                                     ; preds = %16
  br label %6, !dbg !1225, !llvm.loop !1200

; <label>:38:                                     ; preds = %16
  %39 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !1226
  %40 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %39, i32 0, i32 13, !dbg !1228
  %41 = getelementptr inbounds %struct.anon, %struct.anon* %40, i32 0, i32 0, !dbg !1229
  %42 = load %struct.trigaw*, %struct.trigaw** %41, align 8, !dbg !1229
  %43 = icmp ne %struct.trigaw* %42, null, !dbg !1226
  br i1 %43, label %44, label %46, !dbg !1230

; <label>:44:                                     ; preds = %38
  %45 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !1231
  call void @pkg_set_status(%struct.pkginfo* %45, i32 5), !dbg !1232
  br label %56, !dbg !1232

; <label>:46:                                     ; preds = %38
  %47 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !1233
  %48 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %47, i32 0, i32 15, !dbg !1235
  %49 = load %struct.trigpend*, %struct.trigpend** %48, align 8, !dbg !1235
  %50 = icmp ne %struct.trigpend* %49, null, !dbg !1233
  br i1 %50, label %51, label %53, !dbg !1236

; <label>:51:                                     ; preds = %46
  %52 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !1237
  call void @pkg_set_status(%struct.pkginfo* %52, i32 6), !dbg !1238
  br label %55, !dbg !1238

; <label>:53:                                     ; preds = %46
  %54 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !1239
  call void @pkg_set_status(%struct.pkginfo* %54, i32 7), !dbg !1240
  br label %55

; <label>:55:                                     ; preds = %53, %51
  br label %56

; <label>:56:                                     ; preds = %55, %44
  br label %6, !dbg !1241, !llvm.loop !1200

; <label>:57:                                     ; preds = %6
  %58 = load %struct.pkg_hash_iter*, %struct.pkg_hash_iter** %3, align 8, !dbg !1243
  call void @pkg_hash_iter_free(%struct.pkg_hash_iter* %58), !dbg !1244
  %59 = load i32, i32* %2, align 4, !dbg !1245
  %60 = icmp uge i32 %59, 3, !dbg !1247
  br i1 %60, label %61, label %62, !dbg !1248

; <label>:61:                                     ; preds = %57
  call void @modstatdb_checkpoint(), !dbg !1249
  call void @trig_file_interests_save(), !dbg !1251
  br label %62, !dbg !1252

; <label>:62:                                     ; preds = %61, %57
  ret void, !dbg !1253
}

; Function Attrs: nounwind uwtable
define internal %struct.fsys_namenode* @th_nn_find(i8*, i1 zeroext) #0 !dbg !1254 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1255, metadata !458), !dbg !1256
  %5 = zext i1 %1 to i8
  store i8 %5, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !1257, metadata !458), !dbg !1258
  %6 = load i8*, i8** %3, align 8, !dbg !1259
  %7 = load i8, i8* %4, align 1, !dbg !1260
  %8 = trunc i8 %7 to i1, !dbg !1260
  %9 = select i1 %8, i32 2, i32 0, !dbg !1260
  %10 = call %struct.fsys_namenode* @fsys_hash_find_node(i8* %6, i32 %9), !dbg !1261
  ret %struct.fsys_namenode* %10, !dbg !1262
}

; Function Attrs: nounwind uwtable
define internal %struct.trigfileint** @th_nn_interested(%struct.fsys_namenode*) #0 !dbg !1263 {
  %2 = alloca %struct.fsys_namenode*, align 8
  store %struct.fsys_namenode* %0, %struct.fsys_namenode** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %2, metadata !1264, metadata !458), !dbg !1265
  %3 = load %struct.fsys_namenode*, %struct.fsys_namenode** %2, align 8, !dbg !1266
  %4 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %3, i32 0, i32 5, !dbg !1267
  ret %struct.trigfileint** %4, !dbg !1268
}

; Function Attrs: nounwind uwtable
define internal i8* @th_nn_name(%struct.fsys_namenode*) #0 !dbg !1269 {
  %2 = alloca %struct.fsys_namenode*, align 8
  store %struct.fsys_namenode* %0, %struct.fsys_namenode** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %2, metadata !1270, metadata !458), !dbg !1271
  %3 = load %struct.fsys_namenode*, %struct.fsys_namenode** %2, align 8, !dbg !1272
  %4 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %3, i32 0, i32 1, !dbg !1273
  %5 = load i8*, i8** %4, align 8, !dbg !1273
  ret i8* %5, !dbg !1274
}

; Function Attrs: nounwind uwtable
define internal void @transitional_interest_callback(i8*, %struct.pkginfo*, %struct.pkgbin*, i32) #0 !dbg !1275 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pkginfo*, align 8
  %7 = alloca %struct.pkgbin*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pkginfo*, align 8
  %10 = alloca %struct.pkgbin*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1278, metadata !458), !dbg !1279
  store %struct.pkginfo* %1, %struct.pkginfo** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %6, metadata !1280, metadata !458), !dbg !1281
  store %struct.pkgbin* %2, %struct.pkgbin** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %7, metadata !1282, metadata !458), !dbg !1283
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1284, metadata !458), !dbg !1285
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %9, metadata !1286, metadata !458), !dbg !1287
  %11 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !1288
  store %struct.pkginfo* %11, %struct.pkginfo** %9, align 8, !dbg !1287
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %10, metadata !1289, metadata !458), !dbg !1290
  %12 = load %struct.pkgbin*, %struct.pkgbin** %7, align 8, !dbg !1291
  store %struct.pkgbin* %12, %struct.pkgbin** %10, align 8, !dbg !1290
  %13 = load i8*, i8** %5, align 8, !dbg !1292
  %14 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !1293
  %15 = load %struct.pkgbin*, %struct.pkgbin** %10, align 8, !dbg !1294
  %16 = load i32, i32* %8, align 4, !dbg !1295
  call void @trig_cicb_interest_add(i8* %13, %struct.pkginfo* %14, %struct.pkgbin* %15, i32 %16), !dbg !1296
  %17 = load i8*, i8** %5, align 8, !dbg !1297
  %18 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !1298
  %19 = load %struct.pkgbin*, %struct.pkgbin** %10, align 8, !dbg !1299
  %20 = load i32, i32* %8, align 4, !dbg !1300
  call void @transitional_interest_callback_ro(i8* %17, %struct.pkginfo* %18, %struct.pkgbin* %19, i32 %20), !dbg !1301
  ret void, !dbg !1302
}

; Function Attrs: nounwind uwtable
define internal void @transitional_interest_callback_ro(i8*, %struct.pkginfo*, %struct.pkgbin*, i32) #0 !dbg !1303 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pkginfo*, align 8
  %7 = alloca %struct.pkgbin*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pkginfo*, align 8
  %10 = alloca %struct.pkgbin*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1304, metadata !458), !dbg !1305
  store %struct.pkginfo* %1, %struct.pkginfo** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %6, metadata !1306, metadata !458), !dbg !1307
  store %struct.pkgbin* %2, %struct.pkgbin** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %7, metadata !1308, metadata !458), !dbg !1309
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1310, metadata !458), !dbg !1311
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %9, metadata !1312, metadata !458), !dbg !1313
  %11 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !1314
  store %struct.pkginfo* %11, %struct.pkginfo** %9, align 8, !dbg !1313
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %10, metadata !1315, metadata !458), !dbg !1316
  %12 = load %struct.pkgbin*, %struct.pkgbin** %7, align 8, !dbg !1317
  store %struct.pkgbin* %12, %struct.pkgbin** %10, align 8, !dbg !1316
  %13 = load i8*, i8** %5, align 8, !dbg !1318
  %14 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !1319
  %15 = load %struct.pkgbin*, %struct.pkgbin** %10, align 8, !dbg !1320
  %16 = call i8* @pkgbin_name(%struct.pkginfo* %14, %struct.pkgbin* %15, i32 3), !dbg !1321
  call void (i32, i8*, ...) @debug(i32 8192, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.29, i32 0, i32 0), i8* %13, i8* %16), !dbg !1322
  %17 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !1323
  %18 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %17, i32 0, i32 4, !dbg !1325
  %19 = load i32, i32* %18, align 8, !dbg !1325
  %20 = icmp uge i32 %19, 5, !dbg !1326
  br i1 %20, label %21, label %26, !dbg !1327

; <label>:21:                                     ; preds = %4
  %22 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !1328
  %23 = load i8*, i8** %5, align 8, !dbg !1329
  %24 = call i8* @nfstrsave(i8* %23), !dbg !1330
  %25 = call zeroext i1 @trig_note_pend(%struct.pkginfo* %22, i8* %24), !dbg !1331
  br label %26, !dbg !1333

; <label>:26:                                     ; preds = %21, %4
  ret void, !dbg !1334
}

declare void @modstatdb_checkpoint() #2

declare void @trig_file_interests_save() #2

declare void @trig_cicb_interest_add(i8*, %struct.pkginfo*, %struct.pkgbin*, i32) #2

declare i8* @pkgbin_name(%struct.pkginfo*, %struct.pkgbin*, i32) #2

declare zeroext i1 @trig_note_pend(%struct.pkginfo*, i8*) #2

declare i8* @nfstrsave(i8*) #2

declare %struct.fsys_namenode* @fsys_hash_find_node(i8*, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind returns_twice "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind returns_twice }
attributes #9 = { noreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!449, !450}
!llvm.ident = !{!451}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !169, globals: !171)
!1 = !DIFile(filename: "[inter]src--trigproc.o.i", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!2 = !{!3, !15, !26, !35, !43, !47, !57, !67, !73, !81, !86, !91, !104, !120, !126, !132, !137, !142, !150, !155, !165}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "deptype", file: !4, line: 44, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../lib/dpkg/dpkg-db.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14}
!6 = !DIEnumerator(name: "dep_suggests", value: 0)
!7 = !DIEnumerator(name: "dep_recommends", value: 1)
!8 = !DIEnumerator(name: "dep_depends", value: 2)
!9 = !DIEnumerator(name: "dep_predepends", value: 3)
!10 = !DIEnumerator(name: "dep_breaks", value: 4)
!11 = !DIEnumerator(name: "dep_conflicts", value: 5)
!12 = !DIEnumerator(name: "dep_provides", value: 6)
!13 = !DIEnumerator(name: "dep_replaces", value: 7)
!14 = !DIEnumerator(name: "dep_enhances", value: 8)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_arch_type", file: !16, line: 37, size: 32, align: 32, elements: !17)
!16 = !DIFile(filename: "../lib/dpkg/arch.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!17 = !{!18, !19, !20, !21, !22, !23, !24, !25}
!18 = !DIEnumerator(name: "DPKG_ARCH_NONE", value: 0)
!19 = !DIEnumerator(name: "DPKG_ARCH_EMPTY", value: 1)
!20 = !DIEnumerator(name: "DPKG_ARCH_ILLEGAL", value: 2)
!21 = !DIEnumerator(name: "DPKG_ARCH_WILDCARD", value: 3)
!22 = !DIEnumerator(name: "DPKG_ARCH_ALL", value: 4)
!23 = !DIEnumerator(name: "DPKG_ARCH_NATIVE", value: 5)
!24 = !DIEnumerator(name: "DPKG_ARCH_FOREIGN", value: 6)
!25 = !DIEnumerator(name: "DPKG_ARCH_UNKNOWN", value: 7)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_relation", file: !27, line: 61, size: 32, align: 32, elements: !28)
!27 = !DIFile(filename: "../lib/dpkg/version.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!28 = !{!29, !30, !31, !32, !33, !34}
!29 = !DIEnumerator(name: "DPKG_RELATION_NONE", value: 0)
!30 = !DIEnumerator(name: "DPKG_RELATION_EQ", value: 1)
!31 = !DIEnumerator(name: "DPKG_RELATION_LT", value: 2)
!32 = !DIEnumerator(name: "DPKG_RELATION_LE", value: 3)
!33 = !DIEnumerator(name: "DPKG_RELATION_GT", value: 4)
!34 = !DIEnumerator(name: "DPKG_RELATION_GE", value: 5)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgwant", file: !4, line: 153, size: 32, align: 32, elements: !36)
!36 = !{!37, !38, !39, !40, !41, !42}
!37 = !DIEnumerator(name: "PKG_WANT_UNKNOWN", value: 0)
!38 = !DIEnumerator(name: "PKG_WANT_INSTALL", value: 1)
!39 = !DIEnumerator(name: "PKG_WANT_HOLD", value: 2)
!40 = !DIEnumerator(name: "PKG_WANT_DEINSTALL", value: 3)
!41 = !DIEnumerator(name: "PKG_WANT_PURGE", value: 4)
!42 = !DIEnumerator(name: "PKG_WANT_SENTINEL", value: 5)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgeflag", file: !4, line: 163, size: 32, align: 32, elements: !44)
!44 = !{!45, !46}
!45 = !DIEnumerator(name: "PKG_EFLAG_OK", value: 0)
!46 = !DIEnumerator(name: "PKG_EFLAG_REINSTREQ", value: 1)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgstatus", file: !4, line: 168, size: 32, align: 32, elements: !48)
!48 = !{!49, !50, !51, !52, !53, !54, !55, !56}
!49 = !DIEnumerator(name: "PKG_STAT_NOTINSTALLED", value: 0)
!50 = !DIEnumerator(name: "PKG_STAT_CONFIGFILES", value: 1)
!51 = !DIEnumerator(name: "PKG_STAT_HALFINSTALLED", value: 2)
!52 = !DIEnumerator(name: "PKG_STAT_UNPACKED", value: 3)
!53 = !DIEnumerator(name: "PKG_STAT_HALFCONFIGURED", value: 4)
!54 = !DIEnumerator(name: "PKG_STAT_TRIGGERSAWAITED", value: 5)
!55 = !DIEnumerator(name: "PKG_STAT_TRIGGERSPENDING", value: 6)
!56 = !DIEnumerator(name: "PKG_STAT_INSTALLED", value: 7)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgpriority", file: !4, line: 179, size: 32, align: 32, elements: !58)
!58 = !{!59, !60, !61, !62, !63, !64, !65, !66}
!59 = !DIEnumerator(name: "PKG_PRIO_REQUIRED", value: 0)
!60 = !DIEnumerator(name: "PKG_PRIO_IMPORTANT", value: 1)
!61 = !DIEnumerator(name: "PKG_PRIO_STANDARD", value: 2)
!62 = !DIEnumerator(name: "PKG_PRIO_OPTIONAL", value: 3)
!63 = !DIEnumerator(name: "PKG_PRIO_EXTRA", value: 4)
!64 = !DIEnumerator(name: "PKG_PRIO_OTHER", value: 5)
!65 = !DIEnumerator(name: "PKG_PRIO_UNKNOWN", value: 6)
!66 = !DIEnumerator(name: "PKG_PRIO_UNSET", value: -1)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgmultiarch", file: !4, line: 95, size: 32, align: 32, elements: !68)
!68 = !{!69, !70, !71, !72}
!69 = !DIEnumerator(name: "PKG_MULTIARCH_NO", value: 0)
!70 = !DIEnumerator(name: "PKG_MULTIARCH_SAME", value: 1)
!71 = !DIEnumerator(name: "PKG_MULTIARCH_ALLOWED", value: 2)
!72 = !DIEnumerator(name: "PKG_MULTIARCH_FOREIGN", value: 3)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkg_istobe", file: !74, line: 34, size: 32, align: 32, elements: !75)
!74 = !DIFile(filename: "main.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!75 = !{!76, !77, !78, !79, !80}
!76 = !DIEnumerator(name: "PKG_ISTOBE_NORMAL", value: 0)
!77 = !DIEnumerator(name: "PKG_ISTOBE_REMOVE", value: 1)
!78 = !DIEnumerator(name: "PKG_ISTOBE_INSTALLNEW", value: 2)
!79 = !DIEnumerator(name: "PKG_ISTOBE_DECONFIGURE", value: 3)
!80 = !DIEnumerator(name: "PKG_ISTOBE_PREINSTALL", value: 4)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkg_cycle_color", file: !74, line: 47, size: 32, align: 32, elements: !82)
!82 = !{!83, !84, !85}
!83 = !DIEnumerator(name: "PKG_CYCLE_WHITE", value: 0)
!84 = !DIEnumerator(name: "PKG_CYCLE_GRAY", value: 1)
!85 = !DIEnumerator(name: "PKG_CYCLE_BLACK", value: 2)
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "trig_options", file: !87, line: 49, size: 32, align: 32, elements: !88)
!87 = !DIFile(filename: "../lib/dpkg/triglib.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!88 = !{!89, !90}
!89 = !DIEnumerator(name: "TRIG_AWAIT", value: 0)
!90 = !DIEnumerator(name: "TRIG_NOAWAIT", value: 1)
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fsys_namenode_flags", file: !92, line: 61, size: 32, align: 32, elements: !93)
!92 = !DIFile(filename: "../lib/dpkg/fsys.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!93 = !{!94, !95, !96, !97, !98, !99, !100, !101, !102, !103}
!94 = !DIEnumerator(name: "FNNF_NEW_CONFF", value: 1)
!95 = !DIEnumerator(name: "FNNF_NEW_INARCHIVE", value: 2)
!96 = !DIEnumerator(name: "FNNF_OLD_CONFF", value: 4)
!97 = !DIEnumerator(name: "FNNF_OBS_CONFF", value: 8)
!98 = !DIEnumerator(name: "FNNF_ELIDE_OTHER_LISTS", value: 16)
!99 = !DIEnumerator(name: "FNNF_NO_ATOMIC_OVERWRITE", value: 32)
!100 = !DIEnumerator(name: "FNNF_PLACED_ON_DISK", value: 64)
!101 = !DIEnumerator(name: "FNNF_DEFERRED_FSYNC", value: 128)
!102 = !DIEnumerator(name: "FNNF_DEFERRED_RENAME", value: 256)
!103 = !DIEnumerator(name: "FNNF_FILTERED", value: 512)
!104 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "debugflags", file: !105, line: 41, size: 32, align: 32, elements: !106)
!105 = !DIFile(filename: "../lib/dpkg/debug.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!106 = !{!107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119}
!107 = !DIEnumerator(name: "dbg_general", value: 1)
!108 = !DIEnumerator(name: "dbg_scripts", value: 2)
!109 = !DIEnumerator(name: "dbg_eachfile", value: 8)
!110 = !DIEnumerator(name: "dbg_eachfiledetail", value: 64)
!111 = !DIEnumerator(name: "dbg_conff", value: 16)
!112 = !DIEnumerator(name: "dbg_conffdetail", value: 128)
!113 = !DIEnumerator(name: "dbg_depcon", value: 32)
!114 = !DIEnumerator(name: "dbg_depcondetail", value: 256)
!115 = !DIEnumerator(name: "dbg_veryverbose", value: 512)
!116 = !DIEnumerator(name: "dbg_stupidlyverbose", value: 1024)
!117 = !DIEnumerator(name: "dbg_triggers", value: 4096)
!118 = !DIEnumerator(name: "dbg_triggersdetail", value: 8192)
!119 = !DIEnumerator(name: "dbg_triggersstupid", value: 16384)
!120 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !121, line: 41, size: 32, align: 32, elements: !122)
!121 = !DIFile(filename: "../lib/dpkg/ehandle.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!122 = !{!123, !124, !125}
!123 = !DIEnumerator(name: "ehflag_normaltidy", value: 1)
!124 = !DIEnumerator(name: "ehflag_bombout", value: 2)
!125 = !DIEnumerator(name: "ehflag_recursiveerror", value: 4)
!126 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkg_name_arch_when", file: !4, line: 396, size: 32, align: 32, elements: !127)
!127 = !{!128, !129, !130, !131}
!128 = !DIEnumerator(name: "pnaw_never", value: 0)
!129 = !DIEnumerator(name: "pnaw_nonambig", value: 1)
!130 = !DIEnumerator(name: "pnaw_foreign", value: 2)
!131 = !DIEnumerator(name: "pnaw_always", value: 3)
!132 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "trigproc_type", file: !74, line: 320, size: 32, align: 32, elements: !133)
!133 = !{!134, !135, !136}
!134 = !DIEnumerator(name: "TRIGPROC_TRY_DEFERRED", value: 0)
!135 = !DIEnumerator(name: "TRIGPROC_TRY_QUEUED", value: 1)
!136 = !DIEnumerator(name: "TRIGPROC_REQUIRED", value: 2)
!137 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dep_check", file: !74, line: 199, size: 32, align: 32, elements: !138)
!138 = !{!139, !140, !141}
!139 = !DIEnumerator(name: "DEP_CHECK_HALT", value: 0)
!140 = !DIEnumerator(name: "DEP_CHECK_DEFER", value: 1)
!141 = !DIEnumerator(name: "DEP_CHECK_OK", value: 2)
!142 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dependtry", file: !74, line: 243, size: 32, align: 32, elements: !143)
!143 = !{!144, !145, !146, !147, !148, !149}
!144 = !DIEnumerator(name: "DEPEND_TRY_NORMAL", value: 1)
!145 = !DIEnumerator(name: "DEPEND_TRY_CYCLES", value: 2)
!146 = !DIEnumerator(name: "DEPEND_TRY_TRIGGERS", value: 3)
!147 = !DIEnumerator(name: "DEPEND_TRY_FORCE_DEPENDS_VERSION", value: 4)
!148 = !DIEnumerator(name: "DEPEND_TRY_FORCE_DEPENDS", value: 5)
!149 = !DIEnumerator(name: "DEPEND_TRY_LAST", value: 6)
!150 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "versiondisplayepochwhen", file: !4, line: 388, size: 32, align: 32, elements: !151)
!151 = !{!152, !153, !154}
!152 = !DIEnumerator(name: "vdew_never", value: 0)
!153 = !DIEnumerator(name: "vdew_nonambig", value: 1)
!154 = !DIEnumerator(name: "vdew_always", value: 2)
!155 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "modstatdb_rw", file: !4, line: 263, size: 32, align: 32, elements: !156)
!156 = !{!157, !158, !159, !160, !161, !162, !163, !164}
!157 = !DIEnumerator(name: "msdbrw_readonly", value: 0)
!158 = !DIEnumerator(name: "msdbrw_needsuperuserlockonly", value: 1)
!159 = !DIEnumerator(name: "msdbrw_writeifposs", value: 2)
!160 = !DIEnumerator(name: "msdbrw_write", value: 3)
!161 = !DIEnumerator(name: "msdbrw_needsuperuser", value: 4)
!162 = !DIEnumerator(name: "msdbrw_available_readonly", value: 256)
!163 = !DIEnumerator(name: "msdbrw_available_write", value: 512)
!164 = !DIEnumerator(name: "msdbrw_available_mask", value: 65280)
!165 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fsys_hash_find_flags", file: !92, line: 54, size: 32, align: 32, elements: !166)
!166 = !{!167, !168}
!167 = !DIEnumerator(name: "FHFF_NOCOPY", value: 1)
!168 = !DIEnumerator(name: "FHFF_NONE", value: 2)
!169 = !{!170}
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!171 = !{!172, !402, !403, !416, !417, !424}
!172 = distinct !DIGlobalVariable(name: "namesarg", scope: !173, file: !174, line: 373, type: !394, isLocal: true, isDefinition: true, variable: %struct.varbuf* @trigproc.namesarg)
!173 = distinct !DISubprogram(name: "trigproc", scope: !174, file: !174, line: 371, type: !175, isLocal: false, isDefinition: true, scopeLine: 372, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !393)
!174 = !DIFile(filename: "trigproc.c", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!175 = !DISubroutineType(types: !176)
!176 = !{null, !177, !132}
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64, align: 64)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkginfo", file: !4, line: 195, size: 3072, align: 64, elements: !179)
!179 = !{!180, !232, !233, !234, !235, !236, !237, !238, !239, !240, !270, !271, !287, !296, !312, !313, !319, !387, !391, !392}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !178, file: !4, line: 196, baseType: !181, size: 64, align: 64)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64, align: 64)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgset", file: !4, line: 242, size: 3392, align: 64, elements: !183)
!183 = !{!184, !185, !189, !190, !230}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !182, file: !4, line: 243, baseType: !181, size: 64, align: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !182, file: !4, line: 244, baseType: !186, size: 64, align: 64, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64, align: 64)
!187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !188)
!188 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !182, file: !4, line: 245, baseType: !178, size: 3072, align: 64, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "depended", scope: !182, file: !4, line: 249, baseType: !191, size: 128, align: 64, offset: 3200)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !182, file: !4, line: 246, size: 128, align: 64, elements: !192)
!192 = !{!193, !229}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !191, file: !4, line: 247, baseType: !194, size: 64, align: 64)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64, align: 64)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "deppossi", file: !4, line: 63, size: 640, align: 64, elements: !196)
!196 = !{!197, !205, !206, !207, !208, !209, !218, !225, !226, !228}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !195, file: !4, line: 64, baseType: !198, size: 64, align: 64)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64, align: 64)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dependency", file: !4, line: 56, size: 256, align: 64, elements: !200)
!200 = !{!201, !202, !203, !204}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !199, file: !4, line: 57, baseType: !177, size: 64, align: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !199, file: !4, line: 58, baseType: !198, size: 64, align: 64, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !199, file: !4, line: 59, baseType: !194, size: 64, align: 64, offset: 128)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !199, file: !4, line: 60, baseType: !3, size: 32, align: 32, offset: 192)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "ed", scope: !195, file: !4, line: 65, baseType: !181, size: 64, align: 64, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !195, file: !4, line: 66, baseType: !194, size: 64, align: 64, offset: 128)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "rev_next", scope: !195, file: !4, line: 66, baseType: !194, size: 64, align: 64, offset: 192)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "rev_prev", scope: !195, file: !4, line: 66, baseType: !194, size: 64, align: 64, offset: 256)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !195, file: !4, line: 67, baseType: !210, size: 64, align: 64, offset: 320)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !212)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_arch", file: !16, line: 48, size: 192, align: 64, elements: !213)
!213 = !{!214, !216, !217}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !212, file: !16, line: 49, baseType: !215, size: 64, align: 64)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64, align: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !212, file: !16, line: 50, baseType: !186, size: 64, align: 64, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !212, file: !16, line: 51, baseType: !15, size: 32, align: 32, offset: 128)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !195, file: !4, line: 68, baseType: !219, size: 192, align: 64, offset: 384)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_version", file: !27, line: 42, size: 192, align: 64, elements: !220)
!220 = !{!221, !223, !224}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !219, file: !27, line: 44, baseType: !222, size: 32, align: 32)
!222 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !219, file: !27, line: 46, baseType: !186, size: 64, align: 64, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !219, file: !27, line: 48, baseType: !186, size: 64, align: 64, offset: 128)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "verrel", scope: !195, file: !4, line: 69, baseType: !26, size: 32, align: 32, offset: 576)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "arch_is_implicit", scope: !195, file: !4, line: 70, baseType: !227, size: 8, align: 8, offset: 608)
!227 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "cyclebreak", scope: !195, file: !4, line: 71, baseType: !227, size: 8, align: 8, offset: 616)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !191, file: !4, line: 248, baseType: !194, size: 64, align: 64, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "installed_instances", scope: !182, file: !4, line: 250, baseType: !231, size: 32, align: 32, offset: 3328)
!231 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "arch_next", scope: !178, file: !4, line: 197, baseType: !177, size: 64, align: 64, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "want", scope: !178, file: !4, line: 199, baseType: !35, size: 32, align: 32, offset: 128)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "eflag", scope: !178, file: !4, line: 201, baseType: !43, size: 32, align: 32, offset: 160)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !178, file: !4, line: 202, baseType: !47, size: 32, align: 32, offset: 192)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !178, file: !4, line: 203, baseType: !57, size: 32, align: 32, offset: 224)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "otherpriority", scope: !178, file: !4, line: 204, baseType: !186, size: 64, align: 64, offset: 256)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "section", scope: !178, file: !4, line: 205, baseType: !186, size: 64, align: 64, offset: 320)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "configversion", scope: !178, file: !4, line: 206, baseType: !219, size: 192, align: 64, offset: 384)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !178, file: !4, line: 207, baseType: !241, size: 960, align: 64, offset: 576)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgbin", file: !4, line: 107, size: 960, align: 64, elements: !242)
!242 = !{!243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !263}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "depends", scope: !241, file: !4, line: 108, baseType: !198, size: 64, align: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "essential", scope: !241, file: !4, line: 110, baseType: !227, size: 8, align: 8, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "multiarch", scope: !241, file: !4, line: 111, baseType: !67, size: 32, align: 32, offset: 96)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !241, file: !4, line: 112, baseType: !210, size: 64, align: 64, offset: 128)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "pkgname_archqual", scope: !241, file: !4, line: 115, baseType: !186, size: 64, align: 64, offset: 192)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !241, file: !4, line: 116, baseType: !186, size: 64, align: 64, offset: 256)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "maintainer", scope: !241, file: !4, line: 117, baseType: !186, size: 64, align: 64, offset: 320)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !241, file: !4, line: 118, baseType: !186, size: 64, align: 64, offset: 384)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "installedsize", scope: !241, file: !4, line: 119, baseType: !186, size: 64, align: 64, offset: 448)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !241, file: !4, line: 120, baseType: !186, size: 64, align: 64, offset: 512)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "bugs", scope: !241, file: !4, line: 121, baseType: !186, size: 64, align: 64, offset: 576)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !241, file: !4, line: 122, baseType: !219, size: 192, align: 64, offset: 640)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "conffiles", scope: !241, file: !4, line: 123, baseType: !256, size: 64, align: 64, offset: 832)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64, align: 64)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conffile", file: !4, line: 80, size: 256, align: 64, elements: !258)
!258 = !{!259, !260, !261, !262}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !257, file: !4, line: 81, baseType: !256, size: 64, align: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !257, file: !4, line: 82, baseType: !186, size: 64, align: 64, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !257, file: !4, line: 83, baseType: !186, size: 64, align: 64, offset: 128)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "obsolete", scope: !257, file: !4, line: 84, baseType: !227, size: 8, align: 8, offset: 192)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "arbs", scope: !241, file: !4, line: 124, baseType: !264, size: 64, align: 64, offset: 896)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64, align: 64)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arbitraryfield", file: !4, line: 74, size: 192, align: 64, elements: !266)
!266 = !{!267, !268, !269}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !265, file: !4, line: 75, baseType: !264, size: 64, align: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !265, file: !4, line: 76, baseType: !186, size: 64, align: 64, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !265, file: !4, line: 77, baseType: !186, size: 64, align: 64, offset: 128)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !178, file: !4, line: 208, baseType: !241, size: 960, align: 64, offset: 1536)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "clientdata", scope: !178, file: !4, line: 209, baseType: !272, size: 64, align: 64, offset: 2496)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64, align: 64)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perpackagestate", file: !74, line: 53, size: 256, align: 64, elements: !274)
!274 = !{!275, !276, !277, !278, !279, !280}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "istobe", scope: !273, file: !74, line: 54, baseType: !73, size: 32, align: 32)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !273, file: !74, line: 57, baseType: !81, size: 32, align: 32, offset: 32)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !273, file: !74, line: 59, baseType: !227, size: 8, align: 8, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "replacingfilesandsaid", scope: !273, file: !74, line: 61, baseType: !231, size: 32, align: 32, offset: 96)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "cmdline_seen", scope: !273, file: !74, line: 62, baseType: !231, size: 32, align: 32, offset: 128)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "trigprocdeferred", scope: !273, file: !74, line: 65, baseType: !281, size: 64, align: 64, offset: 192)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64, align: 64)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_list", file: !283, line: 34, size: 128, align: 64, elements: !284)
!283 = !DIFile(filename: "../lib/dpkg/pkg-list.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!284 = !{!285, !286}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !282, file: !283, line: 35, baseType: !281, size: 64, align: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !282, file: !283, line: 36, baseType: !177, size: 64, align: 64, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "archives", scope: !178, file: !4, line: 211, baseType: !288, size: 64, align: 64, offset: 2560)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64, align: 64)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archivedetails", file: !4, line: 87, size: 320, align: 64, elements: !290)
!290 = !{!291, !292, !293, !294, !295}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !289, file: !4, line: 88, baseType: !288, size: 64, align: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !289, file: !4, line: 89, baseType: !186, size: 64, align: 64, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "msdosname", scope: !289, file: !4, line: 90, baseType: !186, size: 64, align: 64, offset: 128)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !289, file: !4, line: 91, baseType: !186, size: 64, align: 64, offset: 192)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "md5sum", scope: !289, file: !4, line: 92, baseType: !186, size: 64, align: 64, offset: 256)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "trigaw", scope: !178, file: !4, line: 216, baseType: !297, size: 128, align: 64, offset: 2624)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !178, file: !4, line: 213, size: 128, align: 64, elements: !298)
!298 = !{!299, !311}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !297, file: !4, line: 215, baseType: !300, size: 64, align: 64)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64, align: 64)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigaw", file: !4, line: 142, size: 320, align: 64, elements: !302)
!302 = !{!303, !304, !305, !306}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "aw", scope: !301, file: !4, line: 143, baseType: !177, size: 64, align: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "pend", scope: !301, file: !4, line: 143, baseType: !177, size: 64, align: 64, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "samepend_next", scope: !301, file: !4, line: 144, baseType: !300, size: 64, align: 64, offset: 128)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "sameaw", scope: !301, file: !4, line: 147, baseType: !307, size: 128, align: 64, offset: 192)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !301, file: !4, line: 145, size: 128, align: 64, elements: !308)
!308 = !{!309, !310}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !307, file: !4, line: 146, baseType: !300, size: 64, align: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !307, file: !4, line: 146, baseType: !300, size: 64, align: 64, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !297, file: !4, line: 215, baseType: !300, size: 64, align: 64, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "othertrigaw_head", scope: !178, file: !4, line: 219, baseType: !300, size: 64, align: 64, offset: 2752)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "trigpend_head", scope: !178, file: !4, line: 220, baseType: !314, size: 64, align: 64, offset: 2816)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64, align: 64)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigpend", file: !4, line: 134, size: 128, align: 64, elements: !316)
!316 = !{!317, !318}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !315, file: !4, line: 135, baseType: !314, size: 64, align: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !315, file: !4, line: 136, baseType: !186, size: 64, align: 64, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !178, file: !4, line: 231, baseType: !320, size: 64, align: 64, offset: 2880)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64, align: 64)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode_list", file: !92, line: 122, size: 128, align: 64, elements: !322)
!322 = !{!323, !324}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !321, file: !92, line: 123, baseType: !320, size: 64, align: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "namenode", scope: !321, file: !92, line: 124, baseType: !325, size: 64, align: 64, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64, align: 64)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode", file: !92, line: 90, size: 640, align: 64, elements: !327)
!327 = !{!328, !329, !330, !331, !339, !358, !373, !374, !375, !376}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !326, file: !92, line: 91, baseType: !325, size: 64, align: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !326, file: !92, line: 92, baseType: !186, size: 64, align: 64, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "packages", scope: !326, file: !92, line: 93, baseType: !281, size: 64, align: 64, offset: 128)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "divert", scope: !326, file: !92, line: 94, baseType: !332, size: 64, align: 64, offset: 192)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64, align: 64)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_diversion", file: !92, line: 151, size: 256, align: 64, elements: !334)
!334 = !{!335, !336, !337, !338}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "useinstead", scope: !333, file: !92, line: 152, baseType: !325, size: 64, align: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "camefrom", scope: !333, file: !92, line: 153, baseType: !325, size: 64, align: 64, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "pkgset", scope: !333, file: !92, line: 154, baseType: !181, size: 64, align: 64, offset: 128)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !333, file: !92, line: 157, baseType: !332, size: 64, align: 64, offset: 192)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "statoverride", scope: !326, file: !92, line: 101, baseType: !340, size: 64, align: 64, offset: 256)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64, align: 64)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_stat", file: !342, line: 40, size: 256, align: 64, elements: !343)
!342 = !DIFile(filename: "../lib/dpkg/file.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!343 = !{!344, !349, !352, !355, !357}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !341, file: !342, line: 41, baseType: !345, size: 32, align: 32)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !346, line: 81, baseType: !347)
!346 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !348, line: 125, baseType: !222)
!348 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!349 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !341, file: !342, line: 42, baseType: !350, size: 32, align: 32, offset: 32)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !346, line: 48, baseType: !351)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !348, line: 126, baseType: !222)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !341, file: !342, line: 43, baseType: !353, size: 32, align: 32, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !346, line: 62, baseType: !354)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !348, line: 129, baseType: !222)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "uname", scope: !341, file: !342, line: 47, baseType: !356, size: 64, align: 64, offset: 128)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64, align: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !341, file: !342, line: 48, baseType: !356, size: 64, align: 64, offset: 192)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "trig_interested", scope: !326, file: !92, line: 103, baseType: !359, size: 64, align: 64, offset: 320)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64, align: 64)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigfileint", file: !87, line: 54, size: 448, align: 64, elements: !361)
!361 = !{!362, !363, !365, !366, !367, !368}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !360, file: !87, line: 55, baseType: !177, size: 64, align: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "pkgbin", scope: !360, file: !87, line: 56, baseType: !364, size: 64, align: 64, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64, align: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "fnn", scope: !360, file: !87, line: 57, baseType: !325, size: 64, align: 64, offset: 128)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !360, file: !87, line: 58, baseType: !86, size: 32, align: 32, offset: 192)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "samefile_next", scope: !360, file: !87, line: 59, baseType: !359, size: 64, align: 64, offset: 256)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "inoverall", scope: !360, file: !87, line: 62, baseType: !369, size: 128, align: 64, offset: 320)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !360, file: !87, line: 60, size: 128, align: 64, elements: !370)
!370 = !{!371, !372}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !369, file: !87, line: 61, baseType: !359, size: 64, align: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !369, file: !87, line: 61, baseType: !359, size: 64, align: 64, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !326, file: !92, line: 111, baseType: !91, size: 32, align: 32, offset: 384)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "oldhash", scope: !326, file: !92, line: 114, baseType: !186, size: 64, align: 64, offset: 448)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "newhash", scope: !326, file: !92, line: 117, baseType: !186, size: 64, align: 64, offset: 512)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "file_ondisk_id", scope: !326, file: !92, line: 119, baseType: !377, size: 64, align: 64, offset: 576)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64, align: 64)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ondisk_id", file: !92, line: 85, size: 128, align: 64, elements: !379)
!379 = !{!380, !384}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "id_dev", scope: !378, file: !92, line: 86, baseType: !381, size: 64, align: 64)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !346, line: 43, baseType: !382)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !348, line: 124, baseType: !383)
!383 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "id_ino", scope: !378, file: !92, line: 87, baseType: !385, size: 64, align: 64, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !346, line: 54, baseType: !386)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !348, line: 127, baseType: !383)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_phys_offs", scope: !178, file: !4, line: 232, baseType: !388, size: 64, align: 64, offset: 2944)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !346, line: 73, baseType: !389)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !348, line: 131, baseType: !390)
!390 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_valid", scope: !178, file: !4, line: 233, baseType: !227, size: 8, align: 8, offset: 3008)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "status_dirty", scope: !178, file: !4, line: 236, baseType: !227, size: 8, align: 8, offset: 3016)
!393 = !{}
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varbuf", file: !395, line: 55, size: 192, align: 64, elements: !396)
!395 = !DIFile(filename: "../lib/dpkg/varbuf.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!396 = !{!397, !400, !401}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !394, file: !395, line: 56, baseType: !398, size: 64, align: 64)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !399, line: 216, baseType: !383)
!399 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!400 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !394, file: !395, line: 56, baseType: !398, size: 64, align: 64, offset: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !394, file: !395, line: 57, baseType: !356, size: 64, align: 64, offset: 128)
!402 = distinct !DIGlobalVariable(name: "tortoise_advance", scope: !0, file: !174, line: 201, type: !227, isLocal: true, isDefinition: true, variable: i8* @tortoise_advance)
!403 = distinct !DIGlobalVariable(name: "tortoise", scope: !0, file: !174, line: 202, type: !404, isLocal: true, isDefinition: true, variable: %struct.trigcyclenode** @tortoise)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64, align: 64)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigcyclenode", file: !174, line: 189, size: 192, align: 64, elements: !406)
!406 = !{!407, !408, !415}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !405, file: !174, line: 190, baseType: !404, size: 64, align: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "pkgs", scope: !405, file: !174, line: 191, baseType: !409, size: 64, align: 64, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64, align: 64)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigcycleperpkg", file: !174, line: 195, size: 192, align: 64, elements: !411)
!411 = !{!412, !413, !414}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !410, file: !174, line: 196, baseType: !409, size: 64, align: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !410, file: !174, line: 197, baseType: !177, size: 64, align: 64, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "then_trigs", scope: !410, file: !174, line: 198, baseType: !314, size: 64, align: 64, offset: 128)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "then_processed", scope: !405, file: !174, line: 192, baseType: !177, size: 64, align: 64, offset: 128)
!416 = distinct !DIGlobalVariable(name: "hare", scope: !0, file: !174, line: 202, type: !404, isLocal: true, isDefinition: true, variable: %struct.trigcyclenode** @hare)
!417 = distinct !DIGlobalVariable(name: "deferred", scope: !0, file: !174, line: 92, type: !418, isLocal: true, isDefinition: true, variable: %struct.pkg_queue* @deferred)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_queue", file: !419, line: 35, size: 192, align: 64, elements: !420)
!419 = !DIFile(filename: "../lib/dpkg/pkg-queue.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!420 = !{!421, !422, !423}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !418, file: !419, line: 36, baseType: !281, size: 64, align: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !418, file: !419, line: 36, baseType: !281, size: 64, align: 64, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !418, file: !419, line: 37, baseType: !231, size: 32, align: 32, offset: 128)
!424 = distinct !DIGlobalVariable(name: "trig_our_hooks", scope: !0, file: !174, line: 561, type: !425, isLocal: true, isDefinition: true, variable: %struct.trig_hooks* @trig_our_hooks)
!425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !426)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trig_hooks", file: !87, line: 70, size: 320, align: 64, elements: !427)
!427 = !{!428, !432, !436, !440, !445}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "enqueue_deferred", scope: !426, file: !87, line: 71, baseType: !429, size: 64, align: 64)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64, align: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{null, !177}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "transitional_activate", scope: !426, file: !87, line: 72, baseType: !433, size: 64, align: 64, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64, align: 64)
!434 = !DISubroutineType(types: !435)
!435 = !{null, !155}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "namenode_find", scope: !426, file: !87, line: 74, baseType: !437, size: 64, align: 64, offset: 128)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64, align: 64)
!438 = !DISubroutineType(types: !439)
!439 = !{!325, !186, !227}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "namenode_interested", scope: !426, file: !87, line: 75, baseType: !441, size: 64, align: 64, offset: 192)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64, align: 64)
!442 = !DISubroutineType(types: !443)
!443 = !{!444, !325}
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64, align: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "namenode_name", scope: !426, file: !87, line: 78, baseType: !446, size: 64, align: 64, offset: 256)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64, align: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{!186, !325}
!449 = !{i32 2, !"Dwarf Version", i32 4}
!450 = !{i32 2, !"Debug Info Version", i32 3}
!451 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!452 = distinct !DISubprogram(name: "trigproc_populate_deferred", scope: !174, file: !174, line: 123, type: !453, isLocal: false, isDefinition: true, scopeLine: 124, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !393)
!453 = !DISubroutineType(types: !454)
!454 = !{null}
!455 = !DILocalVariable(name: "iter", scope: !452, file: !174, line: 125, type: !456)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64, align: 64)
!457 = !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_hash_iter", file: !4, line: 314, flags: DIFlagFwdDecl)
!458 = !DIExpression()
!459 = !DILocation(line: 125, column: 24, scope: !452)
!460 = !DILocalVariable(name: "pkg", scope: !452, file: !174, line: 126, type: !177)
!461 = !DILocation(line: 126, column: 18, scope: !452)
!462 = !DILocation(line: 128, column: 9, scope: !452)
!463 = !DILocation(line: 128, column: 7, scope: !452)
!464 = !DILocation(line: 129, column: 2, scope: !452)
!465 = !DILocation(line: 129, column: 39, scope: !466)
!466 = !DILexicalBlockFile(scope: !452, file: !174, discriminator: 1)
!467 = !DILocation(line: 129, column: 16, scope: !466)
!468 = !DILocation(line: 129, column: 14, scope: !466)
!469 = !DILocation(line: 129, column: 2, scope: !466)
!470 = !DILocation(line: 130, column: 8, scope: !471)
!471 = distinct !DILexicalBlock(scope: !472, file: !174, line: 130, column: 7)
!472 = distinct !DILexicalBlock(scope: !452, file: !174, line: 129, column: 47)
!473 = !DILocation(line: 130, column: 13, scope: !471)
!474 = !DILocation(line: 130, column: 7, scope: !472)
!475 = !DILocation(line: 131, column: 4, scope: !471)
!476 = distinct !{!476, !464}
!477 = !DILocation(line: 133, column: 7, scope: !478)
!478 = distinct !DILexicalBlock(scope: !472, file: !174, line: 133, column: 7)
!479 = !DILocation(line: 133, column: 12, scope: !478)
!480 = !DILocation(line: 133, column: 19, scope: !478)
!481 = !DILocation(line: 133, column: 47, scope: !478)
!482 = !DILocation(line: 134, column: 7, scope: !478)
!483 = !DILocation(line: 134, column: 12, scope: !478)
!484 = !DILocation(line: 134, column: 19, scope: !478)
!485 = !DILocation(line: 133, column: 7, scope: !486)
!486 = !DILexicalBlockFile(scope: !472, file: !174, discriminator: 1)
!487 = !DILocation(line: 135, column: 4, scope: !478)
!488 = !DILocation(line: 137, column: 7, scope: !489)
!489 = distinct !DILexicalBlock(scope: !472, file: !174, line: 137, column: 7)
!490 = !DILocation(line: 137, column: 12, scope: !489)
!491 = !DILocation(line: 137, column: 17, scope: !489)
!492 = !DILocation(line: 137, column: 7, scope: !472)
!493 = !DILocation(line: 138, column: 4, scope: !489)
!494 = !DILocation(line: 140, column: 29, scope: !472)
!495 = !DILocation(line: 140, column: 3, scope: !472)
!496 = !DILocation(line: 129, column: 2, scope: !497)
!497 = !DILexicalBlockFile(scope: !452, file: !174, discriminator: 2)
!498 = !DILocation(line: 142, column: 21, scope: !452)
!499 = !DILocation(line: 142, column: 2, scope: !452)
!500 = !DILocation(line: 143, column: 1, scope: !452)
!501 = distinct !DISubprogram(name: "trigproc_enqueue_deferred", scope: !174, file: !174, line: 95, type: !430, isLocal: true, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !393)
!502 = !DILocalVariable(name: "pend", arg: 1, scope: !501, file: !174, line: 95, type: !177)
!503 = !DILocation(line: 95, column: 43, scope: !501)
!504 = !DILocation(line: 97, column: 6, scope: !505)
!505 = distinct !DILexicalBlock(scope: !501, file: !174, line: 97, column: 6)
!506 = !DILocation(line: 97, column: 17, scope: !505)
!507 = !DILocation(line: 97, column: 6, scope: !501)
!508 = !DILocation(line: 98, column: 3, scope: !505)
!509 = !DILocation(line: 99, column: 28, scope: !501)
!510 = !DILocation(line: 99, column: 2, scope: !501)
!511 = !DILocation(line: 100, column: 6, scope: !512)
!512 = distinct !DILexicalBlock(scope: !501, file: !174, line: 100, column: 6)
!513 = !DILocation(line: 100, column: 12, scope: !512)
!514 = !DILocation(line: 100, column: 24, scope: !512)
!515 = !DILocation(line: 100, column: 6, scope: !501)
!516 = !DILocation(line: 101, column: 3, scope: !512)
!517 = !DILocation(line: 102, column: 65, scope: !501)
!518 = !DILocation(line: 102, column: 39, scope: !501)
!519 = !DILocation(line: 102, column: 2, scope: !501)
!520 = !DILocation(line: 102, column: 8, scope: !501)
!521 = !DILocation(line: 102, column: 20, scope: !501)
!522 = !DILocation(line: 102, column: 37, scope: !501)
!523 = !DILocation(line: 104, column: 17, scope: !501)
!524 = !DILocation(line: 104, column: 8, scope: !501)
!525 = !DILocation(line: 103, column: 2, scope: !501)
!526 = !DILocation(line: 105, column: 1, scope: !501)
!527 = !DILocation(line: 105, column: 1, scope: !528)
!528 = !DILexicalBlockFile(scope: !501, file: !174, discriminator: 1)
!529 = distinct !DISubprogram(name: "trigproc_run_deferred", scope: !174, file: !174, line: 146, type: !453, isLocal: false, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !393)
!530 = !DILocalVariable(name: "ejbuf", scope: !529, file: !174, line: 148, type: !531)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "jmp_buf", file: !532, line: 48, baseType: !533)
!532 = !DIFile(filename: "/usr/include/setjmp.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !534, size: 1600, align: 64, elements: !552)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__jmp_buf_tag", file: !532, line: 34, size: 1600, align: 64, elements: !535)
!535 = !{!536, !542, !543}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "__jmpbuf", scope: !534, file: !532, line: 40, baseType: !537, size: 512, align: 64)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "__jmp_buf", file: !538, line: 31, baseType: !539)
!538 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/setjmp.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 512, align: 64, elements: !540)
!540 = !{!541}
!541 = !DISubrange(count: 8)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "__mask_was_saved", scope: !534, file: !532, line: 41, baseType: !231, size: 32, align: 32, offset: 512)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "__saved_mask", scope: !534, file: !532, line: 42, baseType: !544, size: 1024, align: 64, offset: 576)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !545, line: 30, baseType: !546)
!545 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sigset.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !545, line: 27, size: 1024, align: 64, elements: !547)
!547 = !{!548}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !546, file: !545, line: 29, baseType: !549, size: 1024, align: 64)
!549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !383, size: 1024, align: 64, elements: !550)
!550 = !{!551}
!551 = !DISubrange(count: 16)
!552 = !{!553}
!553 = !DISubrange(count: 1)
!554 = !DILocation(line: 148, column: 10, scope: !529)
!555 = !DILocation(line: 150, column: 2, scope: !529)
!556 = !DILocation(line: 151, column: 2, scope: !529)
!557 = !DILocation(line: 151, column: 10, scope: !558)
!558 = !DILexicalBlockFile(scope: !529, file: !174, discriminator: 1)
!559 = !DILocation(line: 151, column: 9, scope: !558)
!560 = !DILocation(line: 151, column: 2, scope: !558)
!561 = !DILocalVariable(name: "pkg", scope: !562, file: !174, line: 152, type: !177)
!562 = distinct !DILexicalBlock(scope: !529, file: !174, line: 151, column: 41)
!563 = !DILocation(line: 152, column: 19, scope: !562)
!564 = !DILocation(line: 154, column: 9, scope: !562)
!565 = !DILocation(line: 154, column: 7, scope: !562)
!566 = !DILocation(line: 155, column: 8, scope: !567)
!567 = distinct !DILexicalBlock(scope: !562, file: !174, line: 155, column: 7)
!568 = !DILocation(line: 155, column: 7, scope: !562)
!569 = !DILocation(line: 156, column: 4, scope: !567)
!570 = distinct !{!570, !556}
!571 = !DILocation(line: 158, column: 6, scope: !572)
!572 = distinct !DILexicalBlock(scope: !562, file: !174, line: 158, column: 6)
!573 = !DILocation(line: 158, column: 6, scope: !562)
!574 = !DILocation(line: 159, column: 4, scope: !575)
!575 = distinct !DILexicalBlock(scope: !572, file: !174, line: 158, column: 21)
!576 = !DILocation(line: 160, column: 4, scope: !575)
!577 = !DILocation(line: 163, column: 36, scope: !562)
!578 = !DILocation(line: 163, column: 27, scope: !562)
!579 = !DILocation(line: 162, column: 3, scope: !562)
!580 = !DILocation(line: 165, column: 29, scope: !562)
!581 = !DILocation(line: 165, column: 3, scope: !562)
!582 = !DILocation(line: 166, column: 3, scope: !562)
!583 = !DILocation(line: 166, column: 8, scope: !562)
!584 = !DILocation(line: 166, column: 20, scope: !562)
!585 = !DILocation(line: 166, column: 37, scope: !562)
!586 = !DILocation(line: 167, column: 12, scope: !562)
!587 = !DILocation(line: 167, column: 3, scope: !562)
!588 = !DILocation(line: 169, column: 3, scope: !562)
!589 = !DILocation(line: 151, column: 2, scope: !590)
!590 = !DILexicalBlockFile(scope: !529, file: !174, discriminator: 2)
!591 = !DILocation(line: 171, column: 1, scope: !529)
!592 = !DILocalVariable(name: "pkg", arg: 1, scope: !173, file: !174, line: 371, type: !177)
!593 = !DILocation(line: 371, column: 26, scope: !173)
!594 = !DILocalVariable(name: "type", arg: 2, scope: !173, file: !174, line: 371, type: !132)
!595 = !DILocation(line: 371, column: 50, scope: !173)
!596 = !DILocalVariable(name: "depwhynot", scope: !173, file: !174, line: 375, type: !394)
!597 = !DILocation(line: 375, column: 16, scope: !173)
!598 = !DILocalVariable(name: "tp", scope: !173, file: !174, line: 376, type: !314)
!599 = !DILocation(line: 376, column: 19, scope: !173)
!600 = !DILocalVariable(name: "gaveup", scope: !173, file: !174, line: 377, type: !177)
!601 = !DILocation(line: 377, column: 18, scope: !173)
!602 = !DILocation(line: 379, column: 46, scope: !173)
!603 = !DILocation(line: 379, column: 37, scope: !173)
!604 = !DILocation(line: 379, column: 2, scope: !605)
!605 = !DILexicalBlockFile(scope: !173, file: !174, discriminator: 1)
!606 = !DILocation(line: 381, column: 28, scope: !173)
!607 = !DILocation(line: 381, column: 2, scope: !173)
!608 = !DILocation(line: 382, column: 6, scope: !609)
!609 = distinct !DILexicalBlock(scope: !173, file: !174, line: 382, column: 6)
!610 = !DILocation(line: 382, column: 11, scope: !609)
!611 = !DILocation(line: 382, column: 23, scope: !609)
!612 = !DILocation(line: 382, column: 6, scope: !173)
!613 = !DILocation(line: 383, column: 3, scope: !609)
!614 = !DILocation(line: 383, column: 8, scope: !609)
!615 = !DILocation(line: 383, column: 20, scope: !609)
!616 = !DILocation(line: 383, column: 38, scope: !609)
!617 = !DILocation(line: 383, column: 42, scope: !609)
!618 = !DILocation(line: 384, column: 2, scope: !173)
!619 = !DILocation(line: 384, column: 7, scope: !173)
!620 = !DILocation(line: 384, column: 19, scope: !173)
!621 = !DILocation(line: 384, column: 36, scope: !173)
!622 = !DILocation(line: 386, column: 6, scope: !623)
!623 = distinct !DILexicalBlock(scope: !173, file: !174, line: 386, column: 6)
!624 = !DILocation(line: 386, column: 11, scope: !623)
!625 = !DILocation(line: 386, column: 6, scope: !173)
!626 = !DILocalVariable(name: "ok", scope: !627, file: !174, line: 387, type: !137)
!627 = distinct !DILexicalBlock(scope: !623, file: !174, line: 386, column: 26)
!628 = !DILocation(line: 387, column: 18, scope: !627)
!629 = !DILocation(line: 389, column: 7, scope: !630)
!630 = distinct !DILexicalBlock(scope: !627, file: !174, line: 389, column: 7)
!631 = !DILocation(line: 389, column: 12, scope: !630)
!632 = !DILocation(line: 389, column: 19, scope: !630)
!633 = !DILocation(line: 389, column: 47, scope: !630)
!634 = !DILocation(line: 390, column: 7, scope: !630)
!635 = !DILocation(line: 390, column: 12, scope: !630)
!636 = !DILocation(line: 390, column: 19, scope: !630)
!637 = !DILocation(line: 389, column: 7, scope: !638)
!638 = !DILexicalBlockFile(scope: !627, file: !174, discriminator: 1)
!639 = !DILocation(line: 391, column: 63, scope: !630)
!640 = !DILocation(line: 391, column: 54, scope: !630)
!641 = !DILocation(line: 391, column: 98, scope: !630)
!642 = !DILocation(line: 391, column: 82, scope: !643)
!643 = !DILexicalBlockFile(scope: !630, file: !174, discriminator: 1)
!644 = !DILocation(line: 391, column: 4, scope: !645)
!645 = !DILexicalBlockFile(scope: !630, file: !174, discriminator: 2)
!646 = !DILocation(line: 391, column: 4, scope: !630)
!647 = !DILocation(line: 395, column: 7, scope: !648)
!648 = distinct !DILexicalBlock(scope: !627, file: !174, line: 395, column: 7)
!649 = !DILocation(line: 395, column: 17, scope: !648)
!650 = !DILocation(line: 395, column: 39, scope: !648)
!651 = !DILocation(line: 396, column: 7, scope: !648)
!652 = !DILocation(line: 396, column: 12, scope: !648)
!653 = !DILocation(line: 395, column: 7, scope: !638)
!654 = !DILocation(line: 399, column: 20, scope: !655)
!655 = distinct !DILexicalBlock(scope: !648, file: !174, line: 396, column: 36)
!656 = !DILocation(line: 399, column: 4, scope: !655)
!657 = !DILocation(line: 400, column: 4, scope: !655)
!658 = !DILocation(line: 403, column: 7, scope: !659)
!659 = distinct !DILexicalBlock(scope: !627, file: !174, line: 403, column: 7)
!660 = !DILocation(line: 403, column: 17, scope: !659)
!661 = !DILocation(line: 403, column: 7, scope: !627)
!662 = !DILocation(line: 404, column: 23, scope: !663)
!663 = distinct !DILexicalBlock(scope: !664, file: !174, line: 404, column: 8)
!664 = distinct !DILexicalBlock(scope: !659, file: !174, line: 403, column: 39)
!665 = !DILocation(line: 404, column: 8, scope: !663)
!666 = !DILocation(line: 404, column: 8, scope: !664)
!667 = !DILocation(line: 405, column: 18, scope: !663)
!668 = !DILocation(line: 405, column: 5, scope: !663)
!669 = !DILocation(line: 406, column: 3, scope: !664)
!670 = !DILocation(line: 408, column: 24, scope: !627)
!671 = !DILocation(line: 408, column: 8, scope: !627)
!672 = !DILocation(line: 408, column: 6, scope: !627)
!673 = !DILocation(line: 409, column: 7, scope: !674)
!674 = distinct !DILexicalBlock(scope: !627, file: !174, line: 409, column: 7)
!675 = !DILocation(line: 409, column: 10, scope: !674)
!676 = !DILocation(line: 409, column: 7, scope: !627)
!677 = !DILocation(line: 410, column: 33, scope: !678)
!678 = distinct !DILexicalBlock(scope: !674, file: !174, line: 409, column: 30)
!679 = !DILocation(line: 410, column: 13, scope: !678)
!680 = !DILocation(line: 410, column: 11, scope: !678)
!681 = !DILocation(line: 411, column: 8, scope: !682)
!682 = distinct !DILexicalBlock(scope: !678, file: !174, line: 411, column: 8)
!683 = !DILocation(line: 411, column: 18, scope: !682)
!684 = !DILocation(line: 411, column: 15, scope: !682)
!685 = !DILocation(line: 411, column: 8, scope: !678)
!686 = !DILocation(line: 412, column: 5, scope: !682)
!687 = !DILocation(line: 414, column: 4, scope: !678)
!688 = !DILocation(line: 415, column: 20, scope: !678)
!689 = !DILocation(line: 415, column: 4, scope: !678)
!690 = !DILocation(line: 416, column: 4, scope: !678)
!691 = !DILocation(line: 417, column: 14, scope: !692)
!692 = distinct !DILexicalBlock(scope: !674, file: !174, line: 417, column: 14)
!693 = !DILocation(line: 417, column: 17, scope: !692)
!694 = !DILocation(line: 417, column: 14, scope: !674)
!695 = !DILocation(line: 426, column: 8, scope: !696)
!696 = distinct !DILexicalBlock(scope: !697, file: !174, line: 426, column: 8)
!697 = distinct !DILexicalBlock(scope: !692, file: !174, line: 417, column: 36)
!698 = !DILocation(line: 426, column: 13, scope: !696)
!699 = !DILocation(line: 426, column: 8, scope: !697)
!700 = !DILocation(line: 427, column: 5, scope: !701)
!701 = distinct !DILexicalBlock(scope: !696, file: !174, line: 426, column: 39)
!702 = !DILocation(line: 429, column: 5, scope: !701)
!703 = !DILocation(line: 430, column: 5, scope: !701)
!704 = !DILocation(line: 433, column: 17, scope: !697)
!705 = !DILocation(line: 434, column: 4, scope: !697)
!706 = !DILocation(line: 435, column: 11, scope: !697)
!707 = !DILocation(line: 437, column: 20, scope: !697)
!708 = !DILocation(line: 437, column: 11, scope: !697)
!709 = !DILocation(line: 437, column: 51, scope: !697)
!710 = !DILocation(line: 435, column: 4, scope: !711)
!711 = !DILexicalBlockFile(scope: !697, file: !174, discriminator: 1)
!712 = !DILocation(line: 438, column: 4, scope: !697)
!713 = !DILocation(line: 439, column: 11, scope: !697)
!714 = !DILocation(line: 439, column: 4, scope: !711)
!715 = !DILocation(line: 439, column: 4, scope: !697)
!716 = !DILocation(line: 440, column: 24, scope: !717)
!717 = distinct !DILexicalBlock(scope: !692, file: !174, line: 440, column: 14)
!718 = !DILocation(line: 440, column: 14, scope: !717)
!719 = !DILocation(line: 440, column: 14, scope: !692)
!720 = !DILocation(line: 441, column: 4, scope: !721)
!721 = distinct !DILexicalBlock(scope: !717, file: !174, line: 440, column: 30)
!722 = !DILocation(line: 442, column: 11, scope: !721)
!723 = !DILocation(line: 444, column: 20, scope: !721)
!724 = !DILocation(line: 444, column: 11, scope: !721)
!725 = !DILocation(line: 444, column: 51, scope: !721)
!726 = !DILocation(line: 442, column: 4, scope: !727)
!727 = !DILexicalBlockFile(scope: !721, file: !174, discriminator: 1)
!728 = !DILocation(line: 445, column: 4, scope: !721)
!729 = !DILocation(line: 446, column: 3, scope: !721)
!730 = !DILocation(line: 448, column: 32, scope: !627)
!731 = !DILocation(line: 448, column: 12, scope: !627)
!732 = !DILocation(line: 448, column: 10, scope: !627)
!733 = !DILocation(line: 449, column: 7, scope: !734)
!734 = distinct !DILexicalBlock(scope: !627, file: !174, line: 449, column: 7)
!735 = !DILocation(line: 449, column: 17, scope: !734)
!736 = !DILocation(line: 449, column: 14, scope: !734)
!737 = !DILocation(line: 449, column: 7, scope: !627)
!738 = !DILocation(line: 450, column: 4, scope: !734)
!739 = !DILocation(line: 452, column: 10, scope: !627)
!740 = !DILocation(line: 453, column: 19, scope: !627)
!741 = !DILocation(line: 453, column: 10, scope: !627)
!742 = !DILocation(line: 454, column: 27, scope: !627)
!743 = !DILocation(line: 454, column: 32, scope: !627)
!744 = !DILocation(line: 454, column: 42, scope: !627)
!745 = !DILocation(line: 454, column: 10, scope: !627)
!746 = !DILocation(line: 452, column: 3, scope: !638)
!747 = !DILocation(line: 455, column: 26, scope: !627)
!748 = !DILocation(line: 455, column: 32, scope: !627)
!749 = !DILocation(line: 455, column: 37, scope: !627)
!750 = !DILocation(line: 455, column: 3, scope: !627)
!751 = !DILocation(line: 457, column: 3, scope: !627)
!752 = !DILocation(line: 458, column: 13, scope: !753)
!753 = distinct !DILexicalBlock(scope: !627, file: !174, line: 458, column: 3)
!754 = !DILocation(line: 458, column: 18, scope: !753)
!755 = !DILocation(line: 458, column: 11, scope: !753)
!756 = !DILocation(line: 458, column: 8, scope: !753)
!757 = !DILocation(line: 458, column: 33, scope: !758)
!758 = !DILexicalBlockFile(scope: !759, file: !174, discriminator: 1)
!759 = distinct !DILexicalBlock(scope: !753, file: !174, line: 458, column: 3)
!760 = !DILocation(line: 458, column: 3, scope: !758)
!761 = !DILocation(line: 459, column: 4, scope: !762)
!762 = distinct !DILexicalBlock(scope: !759, file: !174, line: 458, column: 52)
!763 = !DILocation(line: 460, column: 30, scope: !762)
!764 = !DILocation(line: 460, column: 34, scope: !762)
!765 = !DILocation(line: 460, column: 47, scope: !762)
!766 = !DILocation(line: 460, column: 51, scope: !762)
!767 = !DILocation(line: 460, column: 40, scope: !762)
!768 = !DILocation(line: 460, column: 4, scope: !769)
!769 = !DILexicalBlockFile(scope: !762, file: !174, discriminator: 1)
!770 = !DILocation(line: 461, column: 3, scope: !762)
!771 = !DILocation(line: 458, column: 42, scope: !772)
!772 = !DILexicalBlockFile(scope: !759, file: !174, discriminator: 2)
!773 = !DILocation(line: 458, column: 46, scope: !772)
!774 = !DILocation(line: 458, column: 40, scope: !772)
!775 = !DILocation(line: 458, column: 3, scope: !772)
!776 = distinct !{!776, !777}
!777 = !DILocation(line: 458, column: 3, scope: !627)
!778 = !DILocation(line: 462, column: 3, scope: !627)
!779 = !DILocation(line: 466, column: 18, scope: !627)
!780 = !DILocation(line: 466, column: 3, scope: !627)
!781 = !DILocation(line: 467, column: 18, scope: !627)
!782 = !DILocation(line: 467, column: 3, scope: !627)
!783 = !DILocation(line: 469, column: 8, scope: !784)
!784 = distinct !DILexicalBlock(scope: !627, file: !174, line: 469, column: 7)
!785 = !DILocation(line: 469, column: 7, scope: !627)
!786 = !DILocation(line: 470, column: 17, scope: !787)
!787 = distinct !DILexicalBlock(scope: !784, file: !174, line: 469, column: 17)
!788 = !DILocation(line: 471, column: 25, scope: !787)
!789 = !DILocation(line: 472, column: 34, scope: !787)
!790 = !DILocation(line: 472, column: 38, scope: !787)
!791 = !DILocation(line: 471, column: 4, scope: !787)
!792 = !DILocation(line: 473, column: 3, scope: !787)
!793 = !DILocation(line: 475, column: 23, scope: !627)
!794 = !DILocation(line: 475, column: 3, scope: !627)
!795 = !DILocation(line: 476, column: 2, scope: !627)
!796 = !DILocation(line: 479, column: 23, scope: !797)
!797 = distinct !DILexicalBlock(scope: !623, file: !174, line: 476, column: 9)
!798 = !DILocation(line: 479, column: 3, scope: !797)
!799 = !DILocation(line: 481, column: 1, scope: !173)
!800 = distinct !DISubprogram(name: "trig_activate_packageprocessing", scope: !174, file: !174, line: 177, type: !430, isLocal: false, isDefinition: true, scopeLine: 178, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !393)
!801 = !DILocalVariable(name: "pkg", arg: 1, scope: !800, file: !174, line: 177, type: !177)
!802 = !DILocation(line: 177, column: 49, scope: !800)
!803 = !DILocation(line: 180, column: 17, scope: !800)
!804 = !DILocation(line: 180, column: 8, scope: !800)
!805 = !DILocation(line: 179, column: 2, scope: !800)
!806 = !DILocation(line: 182, column: 36, scope: !800)
!807 = !DILocation(line: 182, column: 42, scope: !800)
!808 = !DILocation(line: 182, column: 47, scope: !800)
!809 = !DILocation(line: 182, column: 16, scope: !800)
!810 = !DILocation(line: 184, column: 16, scope: !800)
!811 = !DILocation(line: 184, column: 22, scope: !800)
!812 = !DILocation(line: 184, column: 27, scope: !800)
!813 = !DILocation(line: 182, column: 2, scope: !814)
!814 = !DILexicalBlockFile(scope: !800, file: !174, discriminator: 1)
!815 = !DILocation(line: 185, column: 1, scope: !800)
!816 = distinct !DISubprogram(name: "trigproc_reset_cycle", scope: !174, file: !174, line: 205, type: !453, isLocal: false, isDefinition: true, scopeLine: 206, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !393)
!817 = !DILocation(line: 207, column: 19, scope: !816)
!818 = !DILocation(line: 208, column: 18, scope: !816)
!819 = !DILocation(line: 208, column: 11, scope: !816)
!820 = !DILocation(line: 209, column: 1, scope: !816)
!821 = distinct !DISubprogram(name: "check_trigger_cycle", scope: !174, file: !174, line: 285, type: !822, isLocal: true, isDefinition: true, scopeLine: 286, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !393)
!822 = !DISubroutineType(types: !823)
!823 = !{!177, !177}
!824 = !DILocalVariable(name: "processing_now", arg: 1, scope: !821, file: !174, line: 285, type: !177)
!825 = !DILocation(line: 285, column: 37, scope: !821)
!826 = !DILocalVariable(name: "tcn", scope: !821, file: !174, line: 287, type: !404)
!827 = !DILocation(line: 287, column: 24, scope: !821)
!828 = !DILocalVariable(name: "tortoise_pkg", scope: !821, file: !174, line: 288, type: !409)
!829 = !DILocation(line: 288, column: 26, scope: !821)
!830 = !DILocalVariable(name: "tortoise_trig", scope: !821, file: !174, line: 289, type: !314)
!831 = !DILocation(line: 289, column: 19, scope: !821)
!832 = !DILocalVariable(name: "giveup", scope: !821, file: !174, line: 290, type: !177)
!833 = !DILocation(line: 290, column: 18, scope: !821)
!834 = !DILocalVariable(name: "sep", scope: !821, file: !174, line: 291, type: !186)
!835 = !DILocation(line: 291, column: 14, scope: !821)
!836 = !DILocation(line: 294, column: 17, scope: !821)
!837 = !DILocation(line: 294, column: 8, scope: !821)
!838 = !DILocation(line: 293, column: 2, scope: !821)
!839 = !DILocation(line: 296, column: 31, scope: !821)
!840 = !DILocation(line: 296, column: 8, scope: !821)
!841 = !DILocation(line: 296, column: 6, scope: !821)
!842 = !DILocation(line: 298, column: 7, scope: !843)
!843 = distinct !DILexicalBlock(scope: !821, file: !174, line: 298, column: 6)
!844 = !DILocation(line: 298, column: 6, scope: !821)
!845 = !DILocation(line: 300, column: 18, scope: !846)
!846 = distinct !DILexicalBlock(scope: !843, file: !174, line: 298, column: 13)
!847 = !DILocation(line: 300, column: 9, scope: !846)
!848 = !DILocation(line: 299, column: 3, scope: !846)
!849 = !DILocation(line: 301, column: 21, scope: !846)
!850 = !DILocation(line: 301, column: 19, scope: !846)
!851 = !DILocation(line: 301, column: 8, scope: !846)
!852 = !DILocation(line: 302, column: 3, scope: !846)
!853 = !DILocation(line: 305, column: 15, scope: !821)
!854 = !DILocation(line: 305, column: 2, scope: !821)
!855 = !DILocation(line: 305, column: 8, scope: !821)
!856 = !DILocation(line: 305, column: 13, scope: !821)
!857 = !DILocation(line: 306, column: 9, scope: !821)
!858 = !DILocation(line: 306, column: 15, scope: !821)
!859 = !DILocation(line: 306, column: 7, scope: !821)
!860 = !DILocation(line: 307, column: 6, scope: !861)
!861 = distinct !DILexicalBlock(scope: !821, file: !174, line: 307, column: 6)
!862 = !DILocation(line: 307, column: 6, scope: !821)
!863 = !DILocation(line: 308, column: 14, scope: !861)
!864 = !DILocation(line: 308, column: 24, scope: !861)
!865 = !DILocation(line: 308, column: 12, scope: !861)
!866 = !DILocation(line: 308, column: 3, scope: !861)
!867 = !DILocation(line: 309, column: 22, scope: !821)
!868 = !DILocation(line: 309, column: 21, scope: !821)
!869 = !DILocation(line: 309, column: 19, scope: !821)
!870 = !DILocation(line: 315, column: 22, scope: !871)
!871 = distinct !DILexicalBlock(scope: !821, file: !174, line: 315, column: 2)
!872 = !DILocation(line: 315, column: 32, scope: !871)
!873 = !DILocation(line: 315, column: 20, scope: !871)
!874 = !DILocation(line: 315, column: 7, scope: !871)
!875 = !DILocation(line: 316, column: 7, scope: !876)
!876 = distinct !DILexicalBlock(scope: !871, file: !174, line: 315, column: 2)
!877 = !DILocation(line: 315, column: 2, scope: !878)
!878 = !DILexicalBlockFile(scope: !871, file: !174, discriminator: 1)
!879 = !DILocation(line: 318, column: 25, scope: !880)
!880 = distinct !DILexicalBlock(scope: !881, file: !174, line: 318, column: 7)
!881 = distinct !DILexicalBlock(scope: !876, file: !174, line: 317, column: 42)
!882 = !DILocation(line: 318, column: 41, scope: !880)
!883 = !DILocation(line: 318, column: 8, scope: !880)
!884 = !DILocation(line: 318, column: 7, scope: !881)
!885 = !DILocation(line: 319, column: 4, scope: !880)
!886 = !DILocation(line: 320, column: 2, scope: !881)
!887 = !DILocation(line: 317, column: 22, scope: !876)
!888 = !DILocation(line: 317, column: 36, scope: !876)
!889 = !DILocation(line: 317, column: 20, scope: !876)
!890 = !DILocation(line: 315, column: 2, scope: !891)
!891 = !DILexicalBlockFile(scope: !876, file: !174, discriminator: 2)
!892 = distinct !{!892, !893}
!893 = !DILocation(line: 315, column: 2, scope: !821)
!894 = !DILocation(line: 323, column: 9, scope: !821)
!895 = !DILocation(line: 323, column: 2, scope: !896)
!896 = !DILexicalBlockFile(scope: !821, file: !174, discriminator: 1)
!897 = !DILocation(line: 325, column: 6, scope: !821)
!898 = !DILocation(line: 326, column: 13, scope: !899)
!899 = distinct !DILexicalBlock(scope: !821, file: !174, line: 326, column: 2)
!900 = !DILocation(line: 326, column: 11, scope: !899)
!901 = !DILocation(line: 326, column: 7, scope: !899)
!902 = !DILocation(line: 326, column: 23, scope: !903)
!903 = !DILexicalBlockFile(scope: !904, file: !174, discriminator: 1)
!904 = distinct !DILexicalBlock(scope: !899, file: !174, line: 326, column: 2)
!905 = !DILocation(line: 326, column: 2, scope: !903)
!906 = !DILocation(line: 327, column: 10, scope: !907)
!907 = distinct !DILexicalBlock(scope: !904, file: !174, line: 326, column: 45)
!908 = !DILocation(line: 327, column: 26, scope: !907)
!909 = !DILocation(line: 328, column: 20, scope: !907)
!910 = !DILocation(line: 328, column: 25, scope: !907)
!911 = !DILocation(line: 328, column: 11, scope: !907)
!912 = !DILocation(line: 327, column: 3, scope: !907)
!913 = !DILocation(line: 329, column: 7, scope: !907)
!914 = !DILocation(line: 330, column: 2, scope: !907)
!915 = !DILocation(line: 326, column: 34, scope: !916)
!916 = !DILexicalBlockFile(scope: !904, file: !174, discriminator: 2)
!917 = !DILocation(line: 326, column: 39, scope: !916)
!918 = !DILocation(line: 326, column: 32, scope: !916)
!919 = !DILocation(line: 326, column: 2, scope: !916)
!920 = distinct !{!920, !921}
!921 = !DILocation(line: 326, column: 2, scope: !821)
!922 = !DILocation(line: 331, column: 9, scope: !821)
!923 = !DILocation(line: 331, column: 17, scope: !821)
!924 = !DILocation(line: 331, column: 2, scope: !896)
!925 = !DILocation(line: 333, column: 22, scope: !926)
!926 = distinct !DILexicalBlock(scope: !821, file: !174, line: 333, column: 2)
!927 = !DILocation(line: 333, column: 32, scope: !926)
!928 = !DILocation(line: 333, column: 20, scope: !926)
!929 = !DILocation(line: 333, column: 7, scope: !926)
!930 = !DILocation(line: 334, column: 7, scope: !931)
!931 = distinct !DILexicalBlock(scope: !926, file: !174, line: 333, column: 2)
!932 = !DILocation(line: 333, column: 2, scope: !933)
!933 = !DILexicalBlockFile(scope: !926, file: !174, discriminator: 1)
!934 = !DILocation(line: 336, column: 10, scope: !935)
!935 = distinct !DILexicalBlock(scope: !931, file: !174, line: 335, column: 42)
!936 = !DILocation(line: 337, column: 20, scope: !935)
!937 = !DILocation(line: 337, column: 34, scope: !935)
!938 = !DILocation(line: 337, column: 11, scope: !935)
!939 = !DILocation(line: 336, column: 3, scope: !935)
!940 = !DILocation(line: 338, column: 7, scope: !935)
!941 = !DILocation(line: 339, column: 24, scope: !942)
!942 = distinct !DILexicalBlock(scope: !935, file: !174, line: 339, column: 3)
!943 = !DILocation(line: 339, column: 38, scope: !942)
!944 = !DILocation(line: 339, column: 22, scope: !942)
!945 = !DILocation(line: 339, column: 8, scope: !942)
!946 = !DILocation(line: 340, column: 8, scope: !947)
!947 = distinct !DILexicalBlock(scope: !942, file: !174, line: 339, column: 3)
!948 = !DILocation(line: 339, column: 3, scope: !949)
!949 = !DILexicalBlockFile(scope: !942, file: !174, discriminator: 1)
!950 = !DILocation(line: 342, column: 11, scope: !951)
!951 = distinct !DILexicalBlock(scope: !947, file: !174, line: 341, column: 45)
!952 = !DILocation(line: 342, column: 27, scope: !951)
!953 = !DILocation(line: 342, column: 32, scope: !951)
!954 = !DILocation(line: 342, column: 47, scope: !951)
!955 = !DILocation(line: 342, column: 4, scope: !951)
!956 = !DILocation(line: 343, column: 3, scope: !951)
!957 = !DILocation(line: 341, column: 24, scope: !947)
!958 = !DILocation(line: 341, column: 39, scope: !947)
!959 = !DILocation(line: 341, column: 22, scope: !947)
!960 = !DILocation(line: 339, column: 3, scope: !961)
!961 = !DILexicalBlockFile(scope: !947, file: !174, discriminator: 2)
!962 = distinct !{!962, !963}
!963 = !DILocation(line: 339, column: 3, scope: !935)
!964 = !DILocation(line: 344, column: 10, scope: !935)
!965 = !DILocation(line: 344, column: 3, scope: !935)
!966 = !DILocation(line: 345, column: 2, scope: !935)
!967 = !DILocation(line: 335, column: 22, scope: !931)
!968 = !DILocation(line: 335, column: 36, scope: !931)
!969 = !DILocation(line: 335, column: 20, scope: !931)
!970 = !DILocation(line: 333, column: 2, scope: !971)
!971 = !DILexicalBlockFile(scope: !931, file: !174, discriminator: 2)
!972 = distinct !{!972, !973}
!973 = !DILocation(line: 333, column: 2, scope: !821)
!974 = !DILocation(line: 348, column: 11, scope: !821)
!975 = !DILocation(line: 348, column: 21, scope: !821)
!976 = !DILocation(line: 348, column: 27, scope: !821)
!977 = !DILocation(line: 348, column: 9, scope: !821)
!978 = !DILocation(line: 350, column: 17, scope: !821)
!979 = !DILocation(line: 350, column: 8, scope: !821)
!980 = !DILocation(line: 351, column: 17, scope: !821)
!981 = !DILocation(line: 351, column: 8, scope: !821)
!982 = !DILocation(line: 349, column: 2, scope: !821)
!983 = !DILocation(line: 352, column: 6, scope: !984)
!984 = distinct !DILexicalBlock(scope: !821, file: !174, line: 352, column: 6)
!985 = !DILocation(line: 352, column: 14, scope: !984)
!986 = !DILocation(line: 352, column: 21, scope: !984)
!987 = !DILocation(line: 352, column: 49, scope: !984)
!988 = !DILocation(line: 353, column: 6, scope: !984)
!989 = !DILocation(line: 353, column: 14, scope: !984)
!990 = !DILocation(line: 353, column: 21, scope: !984)
!991 = !DILocation(line: 352, column: 6, scope: !896)
!992 = !DILocation(line: 354, column: 62, scope: !984)
!993 = !DILocation(line: 354, column: 53, scope: !984)
!994 = !DILocation(line: 354, column: 100, scope: !984)
!995 = !DILocation(line: 354, column: 84, scope: !996)
!996 = !DILexicalBlockFile(scope: !984, file: !174, discriminator: 1)
!997 = !DILocation(line: 354, column: 3, scope: !998)
!998 = !DILexicalBlockFile(scope: !984, file: !174, discriminator: 2)
!999 = !DILocation(line: 354, column: 3, scope: !984)
!1000 = !DILocation(line: 357, column: 2, scope: !821)
!1001 = !DILocation(line: 357, column: 10, scope: !821)
!1002 = !DILocation(line: 357, column: 22, scope: !821)
!1003 = !DILocation(line: 357, column: 29, scope: !821)
!1004 = !DILocation(line: 358, column: 17, scope: !821)
!1005 = !DILocation(line: 358, column: 2, scope: !821)
!1006 = !DILocation(line: 359, column: 17, scope: !821)
!1007 = !DILocation(line: 359, column: 2, scope: !821)
!1008 = !DILocation(line: 360, column: 25, scope: !821)
!1009 = !DILocation(line: 361, column: 34, scope: !821)
!1010 = !DILocation(line: 361, column: 25, scope: !821)
!1011 = !DILocation(line: 360, column: 2, scope: !896)
!1012 = !DILocation(line: 363, column: 9, scope: !821)
!1013 = !DILocation(line: 363, column: 2, scope: !821)
!1014 = !DILocation(line: 364, column: 1, scope: !821)
!1015 = distinct !DISubprogram(name: "trigproc_install_hooks", scope: !174, file: !174, line: 570, type: !453, isLocal: false, isDefinition: true, scopeLine: 571, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !393)
!1016 = !DILocation(line: 572, column: 2, scope: !1015)
!1017 = !DILocation(line: 573, column: 1, scope: !1015)
!1018 = distinct !DISubprogram(name: "trigproc_new_cyclenode", scope: !174, file: !174, line: 254, type: !1019, isLocal: true, isDefinition: true, scopeLine: 255, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !393)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{!404, !177}
!1021 = !DILocalVariable(name: "processing_now", arg: 1, scope: !1018, file: !174, line: 254, type: !177)
!1022 = !DILocation(line: 254, column: 40, scope: !1018)
!1023 = !DILocalVariable(name: "tcn", scope: !1018, file: !174, line: 256, type: !404)
!1024 = !DILocation(line: 256, column: 24, scope: !1018)
!1025 = !DILocalVariable(name: "tcpp", scope: !1018, file: !174, line: 257, type: !409)
!1026 = !DILocation(line: 257, column: 26, scope: !1018)
!1027 = !DILocalVariable(name: "pkg", scope: !1018, file: !174, line: 258, type: !177)
!1028 = !DILocation(line: 258, column: 18, scope: !1018)
!1029 = !DILocalVariable(name: "iter", scope: !1018, file: !174, line: 259, type: !456)
!1030 = !DILocation(line: 259, column: 24, scope: !1018)
!1031 = !DILocation(line: 261, column: 8, scope: !1018)
!1032 = !DILocation(line: 261, column: 6, scope: !1018)
!1033 = !DILocation(line: 262, column: 2, scope: !1018)
!1034 = !DILocation(line: 262, column: 7, scope: !1018)
!1035 = !DILocation(line: 262, column: 12, scope: !1018)
!1036 = !DILocation(line: 263, column: 2, scope: !1018)
!1037 = !DILocation(line: 263, column: 7, scope: !1018)
!1038 = !DILocation(line: 263, column: 12, scope: !1018)
!1039 = !DILocation(line: 264, column: 24, scope: !1018)
!1040 = !DILocation(line: 264, column: 2, scope: !1018)
!1041 = !DILocation(line: 264, column: 7, scope: !1018)
!1042 = !DILocation(line: 264, column: 22, scope: !1018)
!1043 = !DILocation(line: 266, column: 9, scope: !1018)
!1044 = !DILocation(line: 266, column: 7, scope: !1018)
!1045 = !DILocation(line: 267, column: 2, scope: !1018)
!1046 = !DILocation(line: 267, column: 39, scope: !1047)
!1047 = !DILexicalBlockFile(scope: !1018, file: !174, discriminator: 1)
!1048 = !DILocation(line: 267, column: 16, scope: !1047)
!1049 = !DILocation(line: 267, column: 14, scope: !1047)
!1050 = !DILocation(line: 267, column: 2, scope: !1047)
!1051 = !DILocation(line: 268, column: 8, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1053, file: !174, line: 268, column: 7)
!1053 = distinct !DILexicalBlock(scope: !1018, file: !174, line: 267, column: 47)
!1054 = !DILocation(line: 268, column: 13, scope: !1052)
!1055 = !DILocation(line: 268, column: 7, scope: !1053)
!1056 = !DILocation(line: 269, column: 4, scope: !1052)
!1057 = distinct !{!1057, !1045}
!1058 = !DILocation(line: 270, column: 10, scope: !1053)
!1059 = !DILocation(line: 270, column: 8, scope: !1053)
!1060 = !DILocation(line: 271, column: 15, scope: !1053)
!1061 = !DILocation(line: 271, column: 3, scope: !1053)
!1062 = !DILocation(line: 271, column: 9, scope: !1053)
!1063 = !DILocation(line: 271, column: 13, scope: !1053)
!1064 = !DILocation(line: 272, column: 22, scope: !1053)
!1065 = !DILocation(line: 272, column: 27, scope: !1053)
!1066 = !DILocation(line: 272, column: 3, scope: !1053)
!1067 = !DILocation(line: 272, column: 9, scope: !1053)
!1068 = !DILocation(line: 272, column: 20, scope: !1053)
!1069 = !DILocation(line: 273, column: 16, scope: !1053)
!1070 = !DILocation(line: 273, column: 21, scope: !1053)
!1071 = !DILocation(line: 273, column: 3, scope: !1053)
!1072 = !DILocation(line: 273, column: 9, scope: !1053)
!1073 = !DILocation(line: 273, column: 14, scope: !1053)
!1074 = !DILocation(line: 274, column: 15, scope: !1053)
!1075 = !DILocation(line: 274, column: 3, scope: !1053)
!1076 = !DILocation(line: 274, column: 8, scope: !1053)
!1077 = !DILocation(line: 274, column: 13, scope: !1053)
!1078 = !DILocation(line: 267, column: 2, scope: !1079)
!1079 = !DILexicalBlockFile(scope: !1018, file: !174, discriminator: 2)
!1080 = !DILocation(line: 276, column: 21, scope: !1018)
!1081 = !DILocation(line: 276, column: 2, scope: !1018)
!1082 = !DILocation(line: 278, column: 9, scope: !1018)
!1083 = !DILocation(line: 278, column: 2, scope: !1018)
!1084 = distinct !DISubprogram(name: "tortoise_in_hare", scope: !174, file: !174, line: 212, type: !1085, isLocal: true, isDefinition: true, scopeLine: 214, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !393)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!227, !177, !409}
!1087 = !DILocalVariable(name: "processing_now", arg: 1, scope: !1084, file: !174, line: 212, type: !177)
!1088 = !DILocation(line: 212, column: 34, scope: !1084)
!1089 = !DILocalVariable(name: "tortoise_pkg", arg: 2, scope: !1084, file: !174, line: 213, type: !409)
!1090 = !DILocation(line: 213, column: 42, scope: !1084)
!1091 = !DILocalVariable(name: "processing_now_name", scope: !1084, file: !174, line: 215, type: !186)
!1092 = !DILocation(line: 215, column: 14, scope: !1084)
!1093 = !DILocalVariable(name: "tortoise_name", scope: !1084, file: !174, line: 215, type: !186)
!1094 = !DILocation(line: 215, column: 36, scope: !1084)
!1095 = !DILocalVariable(name: "hare_trig", scope: !1084, file: !174, line: 216, type: !314)
!1096 = !DILocation(line: 216, column: 19, scope: !1084)
!1097 = !DILocalVariable(name: "tortoise_trig", scope: !1084, file: !174, line: 216, type: !314)
!1098 = !DILocation(line: 216, column: 31, scope: !1084)
!1099 = !DILocation(line: 218, column: 33, scope: !1084)
!1100 = !DILocation(line: 218, column: 24, scope: !1084)
!1101 = !DILocation(line: 218, column: 22, scope: !1084)
!1102 = !DILocation(line: 219, column: 27, scope: !1084)
!1103 = !DILocation(line: 219, column: 41, scope: !1084)
!1104 = !DILocation(line: 219, column: 18, scope: !1084)
!1105 = !DILocation(line: 219, column: 16, scope: !1084)
!1106 = !DILocation(line: 222, column: 8, scope: !1084)
!1107 = !DILocation(line: 222, column: 29, scope: !1084)
!1108 = !DILocation(line: 221, column: 2, scope: !1084)
!1109 = !DILocation(line: 223, column: 23, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1084, file: !174, line: 223, column: 2)
!1111 = !DILocation(line: 223, column: 37, scope: !1110)
!1112 = !DILocation(line: 223, column: 21, scope: !1110)
!1113 = !DILocation(line: 223, column: 7, scope: !1110)
!1114 = !DILocation(line: 224, column: 7, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1110, file: !174, line: 223, column: 2)
!1116 = !DILocation(line: 223, column: 2, scope: !1117)
!1117 = !DILexicalBlockFile(scope: !1110, file: !174, discriminator: 1)
!1118 = !DILocation(line: 228, column: 9, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1115, file: !174, line: 225, column: 44)
!1120 = !DILocation(line: 228, column: 30, scope: !1119)
!1121 = !DILocation(line: 228, column: 45, scope: !1119)
!1122 = !DILocation(line: 228, column: 60, scope: !1119)
!1123 = !DILocation(line: 226, column: 3, scope: !1119)
!1124 = !DILocation(line: 231, column: 20, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1119, file: !174, line: 231, column: 3)
!1126 = !DILocation(line: 231, column: 34, scope: !1125)
!1127 = !DILocation(line: 231, column: 39, scope: !1125)
!1128 = !DILocation(line: 231, column: 18, scope: !1125)
!1129 = !DILocation(line: 231, column: 8, scope: !1125)
!1130 = !DILocation(line: 232, column: 8, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1125, file: !174, line: 231, column: 3)
!1132 = !DILocation(line: 231, column: 3, scope: !1133)
!1133 = !DILexicalBlockFile(scope: !1125, file: !174, discriminator: 1)
!1134 = !DILocation(line: 236, column: 10, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1131, file: !174, line: 233, column: 37)
!1136 = !DILocation(line: 236, column: 31, scope: !1135)
!1137 = !DILocation(line: 237, column: 10, scope: !1135)
!1138 = !DILocation(line: 237, column: 25, scope: !1135)
!1139 = !DILocation(line: 237, column: 31, scope: !1135)
!1140 = !DILocation(line: 237, column: 42, scope: !1135)
!1141 = !DILocation(line: 234, column: 4, scope: !1135)
!1142 = !DILocation(line: 238, column: 15, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1135, file: !174, line: 238, column: 8)
!1144 = !DILocation(line: 238, column: 26, scope: !1143)
!1145 = !DILocation(line: 238, column: 32, scope: !1143)
!1146 = !DILocation(line: 238, column: 47, scope: !1143)
!1147 = !DILocation(line: 238, column: 8, scope: !1143)
!1148 = !DILocation(line: 238, column: 53, scope: !1143)
!1149 = !DILocation(line: 238, column: 8, scope: !1135)
!1150 = !DILocation(line: 239, column: 5, scope: !1143)
!1151 = !DILocation(line: 240, column: 3, scope: !1135)
!1152 = !DILocation(line: 233, column: 20, scope: !1131)
!1153 = !DILocation(line: 233, column: 31, scope: !1131)
!1154 = !DILocation(line: 233, column: 18, scope: !1131)
!1155 = !DILocation(line: 231, column: 3, scope: !1156)
!1156 = !DILexicalBlockFile(scope: !1131, file: !174, discriminator: 2)
!1157 = distinct !{!1157, !1158}
!1158 = !DILocation(line: 231, column: 3, scope: !1119)
!1159 = !DILocation(line: 242, column: 7, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1119, file: !174, line: 242, column: 7)
!1161 = !DILocation(line: 242, column: 17, scope: !1160)
!1162 = !DILocation(line: 242, column: 7, scope: !1119)
!1163 = !DILocation(line: 245, column: 20, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1160, file: !174, line: 242, column: 25)
!1165 = !DILocation(line: 245, column: 41, scope: !1164)
!1166 = !DILocation(line: 244, column: 4, scope: !1164)
!1167 = !DILocation(line: 246, column: 4, scope: !1164)
!1168 = !DILocation(line: 248, column: 2, scope: !1119)
!1169 = !DILocation(line: 225, column: 23, scope: !1115)
!1170 = !DILocation(line: 225, column: 38, scope: !1115)
!1171 = !DILocation(line: 225, column: 21, scope: !1115)
!1172 = !DILocation(line: 223, column: 2, scope: !1173)
!1173 = !DILexicalBlockFile(scope: !1115, file: !174, discriminator: 2)
!1174 = distinct !{!1174, !1175}
!1175 = !DILocation(line: 223, column: 2, scope: !1084)
!1176 = !DILocation(line: 250, column: 2, scope: !1084)
!1177 = !DILocation(line: 251, column: 1, scope: !1084)
!1178 = distinct !DISubprogram(name: "trig_transitional_activate", scope: !174, file: !174, line: 516, type: !434, isLocal: true, isDefinition: true, scopeLine: 517, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !393)
!1179 = !DILocalVariable(name: "cstatus", arg: 1, scope: !1178, file: !174, line: 516, type: !155)
!1180 = !DILocation(line: 516, column: 46, scope: !1178)
!1181 = !DILocalVariable(name: "iter", scope: !1178, file: !174, line: 518, type: !456)
!1182 = !DILocation(line: 518, column: 24, scope: !1178)
!1183 = !DILocalVariable(name: "pkg", scope: !1178, file: !174, line: 519, type: !177)
!1184 = !DILocation(line: 519, column: 18, scope: !1178)
!1185 = !DILocation(line: 521, column: 9, scope: !1178)
!1186 = !DILocation(line: 521, column: 7, scope: !1178)
!1187 = !DILocation(line: 522, column: 2, scope: !1178)
!1188 = !DILocation(line: 522, column: 39, scope: !1189)
!1189 = !DILexicalBlockFile(scope: !1178, file: !174, discriminator: 1)
!1190 = !DILocation(line: 522, column: 16, scope: !1189)
!1191 = !DILocation(line: 522, column: 14, scope: !1189)
!1192 = !DILocation(line: 522, column: 2, scope: !1189)
!1193 = !DILocation(line: 523, column: 7, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !174, line: 523, column: 7)
!1195 = distinct !DILexicalBlock(scope: !1178, file: !174, line: 522, column: 47)
!1196 = !DILocation(line: 523, column: 12, scope: !1194)
!1197 = !DILocation(line: 523, column: 19, scope: !1194)
!1198 = !DILocation(line: 523, column: 7, scope: !1195)
!1199 = !DILocation(line: 524, column: 4, scope: !1194)
!1200 = distinct !{!1200, !1187}
!1201 = !DILocation(line: 526, column: 18, scope: !1195)
!1202 = !DILocation(line: 526, column: 9, scope: !1195)
!1203 = !DILocation(line: 527, column: 25, scope: !1195)
!1204 = !DILocation(line: 527, column: 9, scope: !1195)
!1205 = !DILocation(line: 525, column: 3, scope: !1195)
!1206 = !DILocation(line: 528, column: 3, scope: !1195)
!1207 = !DILocation(line: 528, column: 8, scope: !1195)
!1208 = !DILocation(line: 528, column: 22, scope: !1195)
!1209 = !DILocation(line: 529, column: 37, scope: !1195)
!1210 = !DILocation(line: 529, column: 43, scope: !1195)
!1211 = !DILocation(line: 529, column: 48, scope: !1195)
!1212 = !DILocation(line: 529, column: 17, scope: !1195)
!1213 = !DILocation(line: 531, column: 17, scope: !1195)
!1214 = !DILocation(line: 531, column: 25, scope: !1195)
!1215 = !DILocation(line: 534, column: 17, scope: !1195)
!1216 = !DILocation(line: 534, column: 23, scope: !1195)
!1217 = !DILocation(line: 534, column: 28, scope: !1195)
!1218 = !DILocation(line: 529, column: 3, scope: !1219)
!1219 = !DILexicalBlockFile(scope: !1195, file: !174, discriminator: 1)
!1220 = !DILocation(line: 539, column: 7, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1195, file: !174, line: 539, column: 7)
!1222 = !DILocation(line: 539, column: 12, scope: !1221)
!1223 = !DILocation(line: 539, column: 19, scope: !1221)
!1224 = !DILocation(line: 539, column: 7, scope: !1195)
!1225 = !DILocation(line: 540, column: 4, scope: !1221)
!1226 = !DILocation(line: 542, column: 7, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1195, file: !174, line: 542, column: 7)
!1228 = !DILocation(line: 542, column: 12, scope: !1227)
!1229 = !DILocation(line: 542, column: 19, scope: !1227)
!1230 = !DILocation(line: 542, column: 7, scope: !1195)
!1231 = !DILocation(line: 543, column: 19, scope: !1227)
!1232 = !DILocation(line: 543, column: 4, scope: !1227)
!1233 = !DILocation(line: 544, column: 12, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1227, file: !174, line: 544, column: 12)
!1235 = !DILocation(line: 544, column: 17, scope: !1234)
!1236 = !DILocation(line: 544, column: 12, scope: !1227)
!1237 = !DILocation(line: 545, column: 19, scope: !1234)
!1238 = !DILocation(line: 545, column: 4, scope: !1234)
!1239 = !DILocation(line: 547, column: 19, scope: !1234)
!1240 = !DILocation(line: 547, column: 4, scope: !1234)
!1241 = !DILocation(line: 522, column: 2, scope: !1242)
!1242 = !DILexicalBlockFile(scope: !1178, file: !174, discriminator: 2)
!1243 = !DILocation(line: 549, column: 21, scope: !1178)
!1244 = !DILocation(line: 549, column: 2, scope: !1178)
!1245 = !DILocation(line: 551, column: 6, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1178, file: !174, line: 551, column: 6)
!1247 = !DILocation(line: 551, column: 14, scope: !1246)
!1248 = !DILocation(line: 551, column: 6, scope: !1178)
!1249 = !DILocation(line: 552, column: 3, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1246, file: !174, line: 551, column: 31)
!1251 = !DILocation(line: 553, column: 3, scope: !1250)
!1252 = !DILocation(line: 554, column: 2, scope: !1250)
!1253 = !DILocation(line: 555, column: 1, scope: !1178)
!1254 = distinct !DISubprogram(name: "th_nn_find", scope: !174, file: !174, line: 559, type: !438, isLocal: true, isDefinition: true, scopeLine: 559, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !393)
!1255 = !DILocalVariable(name: "name", arg: 1, scope: !1254, file: !174, line: 559, type: !186)
!1256 = !DILocation(line: 559, column: 53, scope: !1254)
!1257 = !DILocalVariable(name: "nonew", arg: 2, scope: !1254, file: !174, line: 559, type: !227)
!1258 = !DILocation(line: 559, column: 1, scope: !1254)
!1259 = !DILocation(line: 559, column: 37, scope: !1254)
!1260 = !DILocation(line: 559, column: 43, scope: !1254)
!1261 = !DILocation(line: 559, column: 17, scope: !1254)
!1262 = !DILocation(line: 559, column: 10, scope: !1254)
!1263 = distinct !DISubprogram(name: "th_nn_interested", scope: !174, file: !174, line: 559, type: !442, isLocal: true, isDefinition: true, scopeLine: 559, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !393)
!1264 = !DILocalVariable(name: "fnn", arg: 1, scope: !1263, file: !174, line: 559, type: !325)
!1265 = !DILocation(line: 559, column: 136, scope: !1263)
!1266 = !DILocation(line: 559, column: 151, scope: !1263)
!1267 = !DILocation(line: 559, column: 156, scope: !1263)
!1268 = !DILocation(line: 559, column: 143, scope: !1263)
!1269 = distinct !DISubprogram(name: "th_nn_name", scope: !174, file: !174, line: 559, type: !447, isLocal: true, isDefinition: true, scopeLine: 559, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !393)
!1270 = !DILocalVariable(name: "fnn", arg: 1, scope: !1269, file: !174, line: 559, type: !325)
!1271 = !DILocation(line: 559, column: 227, scope: !1269)
!1272 = !DILocation(line: 559, column: 241, scope: !1269)
!1273 = !DILocation(line: 559, column: 246, scope: !1269)
!1274 = !DILocation(line: 559, column: 234, scope: !1269)
!1275 = distinct !DISubprogram(name: "transitional_interest_callback", scope: !174, file: !174, line: 500, type: !1276, isLocal: true, isDefinition: true, scopeLine: 502, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !393)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{null, !186, !177, !364, !86}
!1278 = !DILocalVariable(name: "trig", arg: 1, scope: !1275, file: !174, line: 500, type: !186)
!1279 = !DILocation(line: 500, column: 44, scope: !1275)
!1280 = !DILocalVariable(name: "pkg", arg: 2, scope: !1275, file: !174, line: 500, type: !177)
!1281 = !DILocation(line: 500, column: 66, scope: !1275)
!1282 = !DILocalVariable(name: "pkgbin", arg: 3, scope: !1275, file: !174, line: 501, type: !364)
!1283 = !DILocation(line: 501, column: 47, scope: !1275)
!1284 = !DILocalVariable(name: "opts", arg: 4, scope: !1275, file: !174, line: 501, type: !86)
!1285 = !DILocation(line: 501, column: 73, scope: !1275)
!1286 = !DILocalVariable(name: "pend", scope: !1275, file: !174, line: 503, type: !177)
!1287 = !DILocation(line: 503, column: 18, scope: !1275)
!1288 = !DILocation(line: 503, column: 25, scope: !1275)
!1289 = !DILocalVariable(name: "pendbin", scope: !1275, file: !174, line: 504, type: !364)
!1290 = !DILocation(line: 504, column: 17, scope: !1275)
!1291 = !DILocation(line: 504, column: 27, scope: !1275)
!1292 = !DILocation(line: 506, column: 25, scope: !1275)
!1293 = !DILocation(line: 506, column: 31, scope: !1275)
!1294 = !DILocation(line: 506, column: 37, scope: !1275)
!1295 = !DILocation(line: 506, column: 46, scope: !1275)
!1296 = !DILocation(line: 506, column: 2, scope: !1275)
!1297 = !DILocation(line: 507, column: 36, scope: !1275)
!1298 = !DILocation(line: 507, column: 42, scope: !1275)
!1299 = !DILocation(line: 507, column: 48, scope: !1275)
!1300 = !DILocation(line: 507, column: 57, scope: !1275)
!1301 = !DILocation(line: 507, column: 2, scope: !1275)
!1302 = !DILocation(line: 508, column: 1, scope: !1275)
!1303 = distinct !DISubprogram(name: "transitional_interest_callback_ro", scope: !174, file: !174, line: 486, type: !1276, isLocal: true, isDefinition: true, scopeLine: 488, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !393)
!1304 = !DILocalVariable(name: "trig", arg: 1, scope: !1303, file: !174, line: 486, type: !186)
!1305 = !DILocation(line: 486, column: 47, scope: !1303)
!1306 = !DILocalVariable(name: "pkg", arg: 2, scope: !1303, file: !174, line: 486, type: !177)
!1307 = !DILocation(line: 486, column: 69, scope: !1303)
!1308 = !DILocalVariable(name: "pkgbin", arg: 3, scope: !1303, file: !174, line: 487, type: !364)
!1309 = !DILocation(line: 487, column: 50, scope: !1303)
!1310 = !DILocalVariable(name: "opts", arg: 4, scope: !1303, file: !174, line: 487, type: !86)
!1311 = !DILocation(line: 487, column: 76, scope: !1303)
!1312 = !DILocalVariable(name: "pend", scope: !1303, file: !174, line: 489, type: !177)
!1313 = !DILocation(line: 489, column: 18, scope: !1303)
!1314 = !DILocation(line: 489, column: 25, scope: !1303)
!1315 = !DILocalVariable(name: "pendbin", scope: !1303, file: !174, line: 490, type: !364)
!1316 = !DILocation(line: 490, column: 17, scope: !1303)
!1317 = !DILocation(line: 490, column: 27, scope: !1303)
!1318 = !DILocation(line: 494, column: 8, scope: !1303)
!1319 = !DILocation(line: 494, column: 26, scope: !1303)
!1320 = !DILocation(line: 494, column: 32, scope: !1303)
!1321 = !DILocation(line: 494, column: 14, scope: !1303)
!1322 = !DILocation(line: 492, column: 2, scope: !1303)
!1323 = !DILocation(line: 495, column: 6, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1303, file: !174, line: 495, column: 6)
!1325 = !DILocation(line: 495, column: 12, scope: !1324)
!1326 = !DILocation(line: 495, column: 19, scope: !1324)
!1327 = !DILocation(line: 495, column: 6, scope: !1303)
!1328 = !DILocation(line: 496, column: 18, scope: !1324)
!1329 = !DILocation(line: 496, column: 34, scope: !1324)
!1330 = !DILocation(line: 496, column: 24, scope: !1324)
!1331 = !DILocation(line: 496, column: 3, scope: !1332)
!1332 = !DILexicalBlockFile(scope: !1324, file: !174, discriminator: 1)
!1333 = !DILocation(line: 496, column: 3, scope: !1324)
!1334 = !DILocation(line: 497, column: 1, scope: !1303)
