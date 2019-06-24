; ModuleID = './[inter]src--packages.o.i'
source_filename = "./[inter]src--packages.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pkg_queue = type { %struct.pkg_list*, %struct.pkg_list*, i32 }
%struct.pkg_list = type { %struct.pkg_list*, %struct.pkginfo* }
%struct.pkginfo = type { %struct.pkgset*, %struct.pkginfo*, i32, i32, i32, i32, i8*, i8*, %struct.dpkg_version, %struct.pkgbin, %struct.pkgbin, %struct.perpackagestate*, %struct.archivedetails*, %struct.anon, %struct.trigaw*, %struct.trigpend*, %struct.fsys_namenode_list*, i64, i8, i8 }
%struct.pkgset = type { %struct.pkgset*, i8*, %struct.pkginfo, %struct.anon.1, i32 }
%struct.anon.1 = type { %struct.deppossi*, %struct.deppossi* }
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
%struct.trigfileint = type opaque
%struct.file_ondisk_id = type { i64, i64 }
%struct.cmdinfo = type { i8*, i8, i32, i32*, i8**, void (%struct.cmdinfo*, i8*)*, i32, i8*, i32 (i8**)* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.pkg_hash_iter = type opaque
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.varbuf = type { i64, i64, i8* }
%struct.deppossi_pkg_iterator = type opaque

@dependtry = global i32 1, align 4
@sincenothing = global i32 0, align 4
@queue = internal global %struct.pkg_queue zeroinitializer, align 8
@f_noact = external global i32, align 4
@.str = private unnamed_addr constant [20 x i8] c"startup packages %s\00", align 1
@cipaction = external global %struct.cmdinfo*, align 8
@f_pending = external global i32, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"--%s --pending does not take any non-option arguments\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"--%s needs at least one package name argument\00", align 1
@abort_processing = external global i8, align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"packages.c\00", align 1
@__func__.process_queue = private unnamed_addr constant [14 x i8] c"process_queue\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"unknown action '%d'\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"Package %s listed more than once, only processing once.\0A\00", align 1
@.str.6 = private unnamed_addr constant [94 x i8] c"More than one copy of package %s has been unpacked\0A in this run !  Only configuring it once.\0A\00", align 1
@.str.7 = private unnamed_addr constant [57 x i8] c"exceeded dependtry %d (sincenothing=%d; queue.length=%d)\00", align 1
@progress_bytrigproc = internal global %struct.pkginfo* null, align 8
@.str.8 = private unnamed_addr constant [57 x i8] c"exceeded dependtry %d (sincenothing=%d, queue.length=%d)\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"process queue pkg %s queue.len %d progress %d, try %d\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"package %s status %d is out-of-bounds\00", align 1
@.str.11 = private unnamed_addr constant [103 x i8] c"package %.250s is not ready for trigger processing\0A (current status '%.250s' with no pending triggers)\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.12 = private unnamed_addr constant [18 x i8] c"<standard output>\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.13 = private unnamed_addr constant [17 x i8] c"<standard error>\00", align 1
@.str.14 = private unnamed_addr constant [59 x i8] c"finished package processing with non-empty queue length %d\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"    checking Breaks\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"     checking virtbroken %s\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"checking dependencies of %s (- %s)\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"<none>\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"  checking group ...\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"    checking possibility  -> %s\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"      break cycle so ok and found\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"     checking provider %s\00", align 1
@.str.23 = private unnamed_addr constant [38 x i8] c"       provider does not satisfy arch\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"    found %d\00", align 1
@.str.25 = private unnamed_addr constant [37 x i8] c"  rescued by force-depends, found %d\00", align 1
@.str.26 = private unnamed_addr constant [39 x i8] c"  found %d matched %d possfixbytrig %s\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c" depends on \00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"; however:\0A\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@__func__.dependencies_ok = private unnamed_addr constant [16 x i8] c"dependencies_ok\00", align 1
@.str.32 = private unnamed_addr constant [29 x i8] c"unknown value for found '%d'\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"ok %d msgs >>%.*s<<\00", align 1
@__func__.enqueue_pending = private unnamed_addr constant [16 x i8] c"enqueue_pending\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c".deb\00", align 1
@.str.35 = private unnamed_addr constant [97 x i8] c"you must specify packages by their own names, not by quoting the names of the files they come in\00", align 1
@.str.36 = private unnamed_addr constant [40 x i8] c"      checking breaker %s virtbroken %s\00", align 1
@.str.37 = private unnamed_addr constant [31 x i8] c" %s (%s) breaks %s and is %s.\0A\00", align 1
@statusstrings = external constant [0 x i8*], align 8
@.str.38 = private unnamed_addr constant [24 x i8] c"  %s (%s) provides %s.\0A\00", align 1
@.str.39 = private unnamed_addr constant [41 x i8] c"  Version of %s to be configured is %s.\0A\00", align 1
@.str.40 = private unnamed_addr constant [48 x i8] c"      ignoring depended package so ok and found\00", align 1
@.str.41 = private unnamed_addr constant [50 x i8] c"  Package %s which provides %s is to be removed.\0A\00", align 1
@.str.42 = private unnamed_addr constant [32 x i8] c"  Package %s is to be removed.\0A\00", align 1
@.str.43 = private unnamed_addr constant [42 x i8] c"      removing possdependee, returning %d\00", align 1
@.str.44 = private unnamed_addr constant [45 x i8] c"      checking package %s provided by pkg %s\00", align 1
@.str.45 = private unnamed_addr constant [51 x i8] c"  Version of %s on system, provided by %s, is %s.\0A\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"      bad version\00", align 1
@.str.47 = private unnamed_addr constant [35 x i8] c"      checking non-provided pkg %s\00", align 1
@.str.48 = private unnamed_addr constant [34 x i8] c"  Version of %s on system is %s.\0A\00", align 1
@.str.49 = private unnamed_addr constant [33 x i8] c"      is installed, ok and found\00", align 1
@__func__.deppossi_ok_found = private unnamed_addr constant [18 x i8] c"deppossi_ok_found\00", align 1
@.str.50 = private unnamed_addr constant [48 x i8] c"package %s in state %s, has no awaited triggers\00", align 1
@f_triggers = external global i32, align 4
@.str.51 = private unnamed_addr constant [59 x i8] c"  Package %s which provides %s awaits trigger processing.\0A\00", align 1
@.str.52 = private unnamed_addr constant [41 x i8] c"  Package %s awaits trigger processing.\0A\00", align 1
@.str.53 = private unnamed_addr constant [37 x i8] c"      triggers-awaited, no fixbytrig\00", align 1
@.str.54 = private unnamed_addr constant [46 x i8] c"      triggers-awaited, fixbytrig '%s', defer\00", align 1
@.str.55 = private unnamed_addr constant [37 x i8] c"      unpacked/halfconfigured, defer\00", align 1
@.str.56 = private unnamed_addr constant [41 x i8] c"also configuring '%s' (required by '%s')\00", align 1
@.str.57 = private unnamed_addr constant [55 x i8] c"  Package %s which provides %s is not configured yet.\0A\00", align 1
@.str.58 = private unnamed_addr constant [37 x i8] c"  Package %s is not configured yet.\0A\00", align 1
@.str.59 = private unnamed_addr constant [26 x i8] c"      not configured/able\00", align 1
@.str.60 = private unnamed_addr constant [50 x i8] c"  Package %s which provides %s is not installed.\0A\00", align 1
@.str.61 = private unnamed_addr constant [32 x i8] c"  Package %s is not installed.\0A\00", align 1
@.str.62 = private unnamed_addr constant [20 x i8] c"      not installed\00", align 1
@.str.63 = private unnamed_addr constant [21 x i8] c"        returning %d\00", align 1

; Function Attrs: nounwind uwtable
define void @enqueue_package(%struct.pkginfo*) #0 !dbg !468 {
  %2 = alloca %struct.pkginfo*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %2, metadata !472, metadata !473), !dbg !474
  %3 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !475
  call void @ensure_package_clientdata(%struct.pkginfo* %3), !dbg !476
  %4 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !477
  %5 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %4, i32 0, i32 11, !dbg !479
  %6 = load %struct.perpackagestate*, %struct.perpackagestate** %5, align 8, !dbg !479
  %7 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %6, i32 0, i32 2, !dbg !480
  %8 = load i8, i8* %7, align 8, !dbg !480
  %9 = trunc i8 %8 to i1, !dbg !480
  br i1 %9, label %10, label %11, !dbg !481

; <label>:10:                                     ; preds = %1
  br label %18, !dbg !482

; <label>:11:                                     ; preds = %1
  %12 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !483
  %13 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %12, i32 0, i32 11, !dbg !484
  %14 = load %struct.perpackagestate*, %struct.perpackagestate** %13, align 8, !dbg !484
  %15 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %14, i32 0, i32 2, !dbg !485
  store i8 1, i8* %15, align 8, !dbg !486
  %16 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !487
  %17 = call %struct.pkg_list* @pkg_queue_push(%struct.pkg_queue* @queue, %struct.pkginfo* %16), !dbg !488
  br label %18, !dbg !489

; <label>:18:                                     ; preds = %11, %10
  ret void, !dbg !490
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @ensure_package_clientdata(%struct.pkginfo*) #2

declare %struct.pkg_list* @pkg_queue_push(%struct.pkg_queue*, %struct.pkginfo*) #2

; Function Attrs: nounwind uwtable
define void @enqueue_package_mark_seen(%struct.pkginfo*) #0 !dbg !492 {
  %2 = alloca %struct.pkginfo*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %2, metadata !493, metadata !473), !dbg !494
  %3 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !495
  call void @enqueue_package(%struct.pkginfo* %3), !dbg !496
  %4 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !497
  %5 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %4, i32 0, i32 11, !dbg !498
  %6 = load %struct.perpackagestate*, %struct.perpackagestate** %5, align 8, !dbg !498
  %7 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %6, i32 0, i32 4, !dbg !499
  %8 = load i32, i32* %7, align 8, !dbg !500
  %9 = add nsw i32 %8, 1, !dbg !500
  store i32 %9, i32* %7, align 8, !dbg !500
  ret void, !dbg !501
}

; Function Attrs: nounwind uwtable
define i32 @packages(i8**) #0 !dbg !502 {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !507, metadata !473), !dbg !508
  call void @trigproc_install_hooks(), !dbg !509
  %3 = load i32, i32* @f_noact, align 4, !dbg !510
  %4 = icmp ne i32 %3, 0, !dbg !510
  br i1 %4, label %5, label %6, !dbg !510

; <label>:5:                                      ; preds = %1
  br label %9, !dbg !511

; <label>:6:                                      ; preds = %1
  %7 = call zeroext i1 @in_force(i32 65536), !dbg !513
  %8 = select i1 %7, i32 3, i32 4, !dbg !513
  br label %9, !dbg !514

; <label>:9:                                      ; preds = %6, %5
  %10 = phi i32 [ 0, %5 ], [ %8, %6 ], !dbg !516
  %11 = call i32 @modstatdb_open(i32 %10), !dbg !518
  call void @checkpath(), !dbg !519
  call void @pkg_infodb_upgrade(), !dbg !520
  %12 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !521
  %13 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %12, i32 0, i32 0, !dbg !522
  %14 = load i8*, i8** %13, align 8, !dbg !522
  call void (i8*, ...) @log_message(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i8* %14), !dbg !523
  %15 = load i32, i32* @f_pending, align 4, !dbg !524
  %16 = icmp ne i32 %15, 0, !dbg !524
  br i1 %16, label %17, label %27, !dbg !526

; <label>:17:                                     ; preds = %9
  %18 = load i8**, i8*** %2, align 8, !dbg !527
  %19 = load i8*, i8** %18, align 8, !dbg !530
  %20 = icmp ne i8* %19, null, !dbg !530
  br i1 %20, label %21, label %26, !dbg !531

; <label>:21:                                     ; preds = %17
  %22 = call i8* @gettext(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i32 0, i32 0)) #8, !dbg !532
  %23 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !533
  %24 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %23, i32 0, i32 0, !dbg !534
  %25 = load i8*, i8** %24, align 8, !dbg !534
  call void (i8*, ...) @badusage(i8* %22, i8* %25) #9, !dbg !535
  unreachable, !dbg !537

; <label>:26:                                     ; preds = %17
  call void @enqueue_pending(), !dbg !538
  br label %38, !dbg !539

; <label>:27:                                     ; preds = %9
  %28 = load i8**, i8*** %2, align 8, !dbg !540
  %29 = load i8*, i8** %28, align 8, !dbg !543
  %30 = icmp ne i8* %29, null, !dbg !543
  br i1 %30, label %36, label %31, !dbg !544

; <label>:31:                                     ; preds = %27
  %32 = call i8* @gettext(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i32 0, i32 0)) #8, !dbg !545
  %33 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !546
  %34 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %33, i32 0, i32 0, !dbg !547
  %35 = load i8*, i8** %34, align 8, !dbg !547
  call void (i8*, ...) @badusage(i8* %32, i8* %35) #9, !dbg !548
  unreachable, !dbg !550

; <label>:36:                                     ; preds = %27
  %37 = load i8**, i8*** %2, align 8, !dbg !551
  call void @enqueue_specified(i8** %37), !dbg !552
  br label %38

; <label>:38:                                     ; preds = %36, %26
  call void @ensure_diversions(), !dbg !553
  call void @process_queue(), !dbg !554
  call void @trigproc_run_deferred(), !dbg !555
  call void @modstatdb_shutdown(), !dbg !556
  ret i32 0, !dbg !557
}

declare void @trigproc_install_hooks() #2

declare i32 @modstatdb_open(i32) #2

declare zeroext i1 @in_force(i32) #2

declare void @checkpath() #2

declare void @pkg_infodb_upgrade() #2

declare void @log_message(i8*, ...) #2

; Function Attrs: noreturn
declare void @badusage(i8*, ...) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

; Function Attrs: nounwind uwtable
define internal void @enqueue_pending() #0 !dbg !558 {
  %1 = alloca %struct.pkg_hash_iter*, align 8
  %2 = alloca %struct.pkginfo*, align 8
  call void @llvm.dbg.declare(metadata %struct.pkg_hash_iter** %1, metadata !561, metadata !473), !dbg !564
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %2, metadata !565, metadata !473), !dbg !566
  %3 = call %struct.pkg_hash_iter* @pkg_hash_iter_new(), !dbg !567
  store %struct.pkg_hash_iter* %3, %struct.pkg_hash_iter** %1, align 8, !dbg !568
  br label %4, !dbg !569

; <label>:4:                                      ; preds = %77, %71, %64, %58, %46, %40, %33, %27, %0
  %5 = load %struct.pkg_hash_iter*, %struct.pkg_hash_iter** %1, align 8, !dbg !570
  %6 = call %struct.pkginfo* @pkg_hash_iter_next_pkg(%struct.pkg_hash_iter* %5), !dbg !572
  store %struct.pkginfo* %6, %struct.pkginfo** %2, align 8, !dbg !573
  %7 = icmp ne %struct.pkginfo* %6, null, !dbg !574
  br i1 %7, label %8, label %79, !dbg !575

; <label>:8:                                      ; preds = %4
  %9 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !576
  %10 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %9, i32 0, i32 6, !dbg !578
  %11 = load i32, i32* %10, align 8, !dbg !578
  switch i32 %11, label %73 [
    i32 2, label %12
    i32 4, label %35
    i32 5, label %48
    i32 6, label %48
  ], !dbg !579

; <label>:12:                                     ; preds = %8
  %13 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !580
  %14 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %13, i32 0, i32 4, !dbg !583
  %15 = load i32, i32* %14, align 8, !dbg !583
  %16 = icmp eq i32 %15, 3, !dbg !584
  br i1 %16, label %28, label %17, !dbg !585

; <label>:17:                                     ; preds = %12
  %18 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !586
  %19 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %18, i32 0, i32 4, !dbg !587
  %20 = load i32, i32* %19, align 8, !dbg !587
  %21 = icmp eq i32 %20, 4, !dbg !588
  br i1 %21, label %28, label %22, !dbg !589

; <label>:22:                                     ; preds = %17
  %23 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !590
  %24 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %23, i32 0, i32 15, !dbg !591
  %25 = load %struct.trigpend*, %struct.trigpend** %24, align 8, !dbg !591
  %26 = icmp ne %struct.trigpend* %25, null, !dbg !590
  br i1 %26, label %28, label %27, !dbg !592

; <label>:27:                                     ; preds = %22
  br label %4, !dbg !594, !llvm.loop !595

; <label>:28:                                     ; preds = %22, %17, %12
  %29 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !596
  %30 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %29, i32 0, i32 2, !dbg !598
  %31 = load i32, i32* %30, align 8, !dbg !598
  %32 = icmp ne i32 %31, 1, !dbg !599
  br i1 %32, label %33, label %34, !dbg !600

; <label>:33:                                     ; preds = %28
  br label %4, !dbg !601, !llvm.loop !595

; <label>:34:                                     ; preds = %28
  br label %77, !dbg !602

; <label>:35:                                     ; preds = %8
  %36 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !603
  %37 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %36, i32 0, i32 15, !dbg !605
  %38 = load %struct.trigpend*, %struct.trigpend** %37, align 8, !dbg !605
  %39 = icmp ne %struct.trigpend* %38, null, !dbg !603
  br i1 %39, label %41, label %40, !dbg !606

; <label>:40:                                     ; preds = %35
  br label %4, !dbg !607, !llvm.loop !595

; <label>:41:                                     ; preds = %35
  %42 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !608
  %43 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %42, i32 0, i32 2, !dbg !610
  %44 = load i32, i32* %43, align 8, !dbg !610
  %45 = icmp ne i32 %44, 1, !dbg !611
  br i1 %45, label %46, label %47, !dbg !612

; <label>:46:                                     ; preds = %41
  br label %4, !dbg !613, !llvm.loop !595

; <label>:47:                                     ; preds = %41
  br label %77, !dbg !614

; <label>:48:                                     ; preds = %8, %8
  %49 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !615
  %50 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %49, i32 0, i32 2, !dbg !617
  %51 = load i32, i32* %50, align 8, !dbg !617
  %52 = icmp ne i32 %51, 4, !dbg !618
  br i1 %52, label %53, label %66, !dbg !619

; <label>:53:                                     ; preds = %48
  %54 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !620
  %55 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %54, i32 0, i32 2, !dbg !623
  %56 = load i32, i32* %55, align 8, !dbg !623
  %57 = icmp ne i32 %56, 3, !dbg !624
  br i1 %57, label %58, label %59, !dbg !625

; <label>:58:                                     ; preds = %53
  br label %4, !dbg !626, !llvm.loop !595

; <label>:59:                                     ; preds = %53
  %60 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !627
  %61 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %60, i32 0, i32 4, !dbg !629
  %62 = load i32, i32* %61, align 8, !dbg !629
  %63 = icmp eq i32 %62, 1, !dbg !630
  br i1 %63, label %64, label %65, !dbg !631

; <label>:64:                                     ; preds = %59
  br label %4, !dbg !632, !llvm.loop !595

; <label>:65:                                     ; preds = %59
  br label %66, !dbg !633

; <label>:66:                                     ; preds = %65, %48
  %67 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !634
  %68 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %67, i32 0, i32 4, !dbg !636
  %69 = load i32, i32* %68, align 8, !dbg !636
  %70 = icmp eq i32 %69, 0, !dbg !637
  br i1 %70, label %71, label %72, !dbg !638

; <label>:71:                                     ; preds = %66
  br label %4, !dbg !639, !llvm.loop !595

; <label>:72:                                     ; preds = %66
  br label %77, !dbg !640

; <label>:73:                                     ; preds = %8
  %74 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !641
  %75 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %74, i32 0, i32 6, !dbg !642
  %76 = load i32, i32* %75, align 8, !dbg !642
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i32 107, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.enqueue_pending, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 %76) #9, !dbg !643
  unreachable, !dbg !643

; <label>:77:                                     ; preds = %72, %47, %34
  %78 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !644
  call void @enqueue_package(%struct.pkginfo* %78), !dbg !645
  br label %4, !dbg !646, !llvm.loop !595

; <label>:79:                                     ; preds = %4
  %80 = load %struct.pkg_hash_iter*, %struct.pkg_hash_iter** %1, align 8, !dbg !648
  call void @pkg_hash_iter_free(%struct.pkg_hash_iter* %80), !dbg !649
  ret void, !dbg !650
}

; Function Attrs: nounwind uwtable
define internal void @enqueue_specified(i8**) #0 !dbg !651 {
  %2 = alloca i8**, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.pkginfo*, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !654, metadata !473), !dbg !655
  call void @llvm.dbg.declare(metadata i8** %3, metadata !656, metadata !473), !dbg !657
  br label %5, !dbg !658

; <label>:5:                                      ; preds = %27, %1
  %6 = load i8**, i8*** %2, align 8, !dbg !659
  %7 = getelementptr inbounds i8*, i8** %6, i32 1, !dbg !659
  store i8** %7, i8*** %2, align 8, !dbg !659
  %8 = load i8*, i8** %6, align 8, !dbg !661
  store i8* %8, i8** %3, align 8, !dbg !662
  %9 = icmp ne i8* %8, null, !dbg !663
  br i1 %9, label %10, label %29, !dbg !664

; <label>:10:                                     ; preds = %5
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %4, metadata !665, metadata !473), !dbg !667
  %11 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !668
  %12 = load i8*, i8** %3, align 8, !dbg !669
  %13 = call %struct.pkginfo* @dpkg_options_parse_pkgname(%struct.cmdinfo* %11, i8* %12), !dbg !670
  store %struct.pkginfo* %13, %struct.pkginfo** %4, align 8, !dbg !671
  %14 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !672
  %15 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %14, i32 0, i32 4, !dbg !674
  %16 = load i32, i32* %15, align 8, !dbg !674
  %17 = icmp eq i32 %16, 0, !dbg !675
  br i1 %17, label %18, label %27, !dbg !676

; <label>:18:                                     ; preds = %10
  %19 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !677
  %20 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %19, i32 0, i32 0, !dbg !678
  %21 = load %struct.pkgset*, %struct.pkgset** %20, align 8, !dbg !678
  %22 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %21, i32 0, i32 1, !dbg !679
  %23 = load i8*, i8** %22, align 8, !dbg !679
  %24 = call zeroext i1 @str_match_end(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0)), !dbg !680
  br i1 %24, label %25, label %27, !dbg !681

; <label>:25:                                     ; preds = %18
  %26 = call i8* @gettext(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.35, i32 0, i32 0)) #8, !dbg !683
  call void (i8*, ...) @badusage(i8* %26) #9, !dbg !685
  unreachable, !dbg !687

; <label>:27:                                     ; preds = %18, %10
  %28 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !688
  call void @enqueue_package_mark_seen(%struct.pkginfo* %28), !dbg !689
  br label %5, !dbg !690, !llvm.loop !692

; <label>:29:                                     ; preds = %5
  %30 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !693
  %31 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %30, i32 0, i32 6, !dbg !695
  %32 = load i32, i32* %31, align 8, !dbg !695
  %33 = icmp eq i32 %32, 2, !dbg !696
  br i1 %33, label %34, label %35, !dbg !697

; <label>:34:                                     ; preds = %29
  call void @trigproc_populate_deferred(), !dbg !698
  br label %35, !dbg !698

; <label>:35:                                     ; preds = %34, %29
  ret void, !dbg !699
}

declare void @ensure_diversions() #2

; Function Attrs: nounwind uwtable
define void @process_queue() #0 !dbg !700 {
  %1 = alloca %struct.pkg_list*, align 8
  %2 = alloca %struct.pkginfo*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [1 x %struct.__jmp_buf_tag], align 16
  %5 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.pkg_list** %1, metadata !701, metadata !473), !dbg !702
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %2, metadata !703, metadata !473), !dbg !705
  call void @llvm.dbg.declare(metadata i32* %3, metadata !706, metadata !473), !dbg !708
  call void @llvm.dbg.declare(metadata [1 x %struct.__jmp_buf_tag]* %4, metadata !709, metadata !473), !dbg !733
  call void @llvm.dbg.declare(metadata i32* %5, metadata !734, metadata !473), !dbg !735
  store i32 0, i32* %5, align 4, !dbg !735
  %6 = load i8, i8* @abort_processing, align 1, !dbg !736
  %7 = trunc i8 %6 to i1, !dbg !736
  br i1 %7, label %8, label %9, !dbg !738

; <label>:8:                                      ; preds = %0
  br label %216, !dbg !739

; <label>:9:                                      ; preds = %0
  call void @clear_istobes(), !dbg !740
  %10 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !741
  %11 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %10, i32 0, i32 6, !dbg !742
  %12 = load i32, i32* %11, align 8, !dbg !742
  switch i32 %12, label %15 [
    i32 4, label %13
    i32 2, label %13
    i32 3, label %13
    i32 5, label %14
    i32 6, label %14
  ], !dbg !743

; <label>:13:                                     ; preds = %9, %9, %9
  store i32 2, i32* %5, align 4, !dbg !744
  br label %19, !dbg !746

; <label>:14:                                     ; preds = %9, %9
  store i32 1, i32* %5, align 4, !dbg !747
  br label %19, !dbg !748

; <label>:15:                                     ; preds = %9
  %16 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !749
  %17 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %16, i32 0, i32 6, !dbg !750
  %18 = load i32, i32* %17, align 8, !dbg !750
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i32 193, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.process_queue, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 %18) #9, !dbg !751
  unreachable, !dbg !751

; <label>:19:                                     ; preds = %14, %13
  %20 = load %struct.pkg_list*, %struct.pkg_list** getelementptr inbounds (%struct.pkg_queue, %struct.pkg_queue* @queue, i32 0, i32 0), align 8, !dbg !752
  store %struct.pkg_list* %20, %struct.pkg_list** %1, align 8, !dbg !754
  br label %21, !dbg !755

; <label>:21:                                     ; preds = %67, %19
  %22 = load %struct.pkg_list*, %struct.pkg_list** %1, align 8, !dbg !756
  %23 = icmp ne %struct.pkg_list* %22, null, !dbg !759
  br i1 %23, label %24, label %71, !dbg !759

; <label>:24:                                     ; preds = %21
  %25 = load %struct.pkg_list*, %struct.pkg_list** %1, align 8, !dbg !760
  %26 = getelementptr inbounds %struct.pkg_list, %struct.pkg_list* %25, i32 0, i32 1, !dbg !762
  %27 = load %struct.pkginfo*, %struct.pkginfo** %26, align 8, !dbg !762
  call void @ensure_package_clientdata(%struct.pkginfo* %27), !dbg !763
  %28 = load %struct.pkg_list*, %struct.pkg_list** %1, align 8, !dbg !764
  %29 = getelementptr inbounds %struct.pkg_list, %struct.pkg_list* %28, i32 0, i32 1, !dbg !766
  %30 = load %struct.pkginfo*, %struct.pkginfo** %29, align 8, !dbg !766
  %31 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %30, i32 0, i32 11, !dbg !767
  %32 = load %struct.perpackagestate*, %struct.perpackagestate** %31, align 8, !dbg !767
  %33 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %32, i32 0, i32 4, !dbg !768
  %34 = load i32, i32* %33, align 8, !dbg !768
  %35 = icmp sgt i32 %34, 1, !dbg !769
  br i1 %35, label %36, label %59, !dbg !770

; <label>:36:                                     ; preds = %24
  %37 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !771
  %38 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %37, i32 0, i32 6, !dbg !773
  %39 = load i32, i32* %38, align 8, !dbg !773
  switch i32 %39, label %54 [
    i32 4, label %40
    i32 2, label %40
    i32 5, label %40
    i32 6, label %40
    i32 3, label %47
  ], !dbg !774

; <label>:40:                                     ; preds = %36, %36, %36, %36
  %41 = call i8* @gettext(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i32 0, i32 0)) #8, !dbg !775
  %42 = load %struct.pkg_list*, %struct.pkg_list** %1, align 8, !dbg !777
  %43 = getelementptr inbounds %struct.pkg_list, %struct.pkg_list* %42, i32 0, i32 1, !dbg !778
  %44 = load %struct.pkginfo*, %struct.pkginfo** %43, align 8, !dbg !778
  %45 = call i8* @pkg_name(%struct.pkginfo* %44, i32 1), !dbg !779
  %46 = call i32 (i8*, ...) @printf(i8* %41, i8* %45), !dbg !780
  br label %58, !dbg !782

; <label>:47:                                     ; preds = %36
  %48 = call i8* @gettext(i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.6, i32 0, i32 0)) #8, !dbg !783
  %49 = load %struct.pkg_list*, %struct.pkg_list** %1, align 8, !dbg !784
  %50 = getelementptr inbounds %struct.pkg_list, %struct.pkg_list* %49, i32 0, i32 1, !dbg !785
  %51 = load %struct.pkginfo*, %struct.pkginfo** %50, align 8, !dbg !785
  %52 = call i8* @pkg_name(%struct.pkginfo* %51, i32 1), !dbg !786
  %53 = call i32 (i8*, ...) @printf(i8* %48, i8* %52), !dbg !787
  br label %58, !dbg !788

; <label>:54:                                     ; preds = %36
  %55 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !789
  %56 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %55, i32 0, i32 6, !dbg !790
  %57 = load i32, i32* %56, align 8, !dbg !790
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i32 213, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.process_queue, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 %57) #9, !dbg !791
  unreachable, !dbg !791

; <label>:58:                                     ; preds = %47, %40
  br label %59, !dbg !792

; <label>:59:                                     ; preds = %58, %24
  %60 = load i32, i32* %5, align 4, !dbg !793
  %61 = load %struct.pkg_list*, %struct.pkg_list** %1, align 8, !dbg !794
  %62 = getelementptr inbounds %struct.pkg_list, %struct.pkg_list* %61, i32 0, i32 1, !dbg !795
  %63 = load %struct.pkginfo*, %struct.pkginfo** %62, align 8, !dbg !795
  %64 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %63, i32 0, i32 11, !dbg !796
  %65 = load %struct.perpackagestate*, %struct.perpackagestate** %64, align 8, !dbg !796
  %66 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %65, i32 0, i32 0, !dbg !797
  store i32 %60, i32* %66, align 8, !dbg !798
  br label %67, !dbg !799

; <label>:67:                                     ; preds = %59
  %68 = load %struct.pkg_list*, %struct.pkg_list** %1, align 8, !dbg !800
  %69 = getelementptr inbounds %struct.pkg_list, %struct.pkg_list* %68, i32 0, i32 0, !dbg !802
  %70 = load %struct.pkg_list*, %struct.pkg_list** %69, align 8, !dbg !802
  store %struct.pkg_list* %70, %struct.pkg_list** %1, align 8, !dbg !803
  br label %21, !dbg !804, !llvm.loop !805

; <label>:71:                                     ; preds = %21
  br label %72, !dbg !807

; <label>:72:                                     ; preds = %206, %166, %80, %71
  %73 = call i32 @pkg_queue_is_empty(%struct.pkg_queue* @queue), !dbg !808
  %74 = icmp ne i32 %73, 0, !dbg !810
  %75 = xor i1 %74, true, !dbg !810
  br i1 %75, label %76, label %211, !dbg !811

; <label>:76:                                     ; preds = %72
  %77 = call %struct.pkginfo* @pkg_queue_pop(%struct.pkg_queue* @queue), !dbg !812
  store volatile %struct.pkginfo* %77, %struct.pkginfo** %2, align 8, !dbg !814
  %78 = load volatile %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !815
  %79 = icmp ne %struct.pkginfo* %78, null, !dbg !815
  br i1 %79, label %81, label %80, !dbg !817

; <label>:80:                                     ; preds = %76
  br label %72, !dbg !818, !llvm.loop !819

; <label>:81:                                     ; preds = %76
  %82 = load volatile %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !820
  call void @ensure_package_clientdata(%struct.pkginfo* %82), !dbg !821
  %83 = load volatile %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !822
  %84 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %83, i32 0, i32 11, !dbg !823
  %85 = load %struct.perpackagestate*, %struct.perpackagestate** %84, align 8, !dbg !823
  %86 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %85, i32 0, i32 2, !dbg !824
  store i8 0, i8* %86, align 8, !dbg !825
  %87 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !826
  %88 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %87, i32 0, i32 6, !dbg !827
  %89 = load i32, i32* %88, align 8, !dbg !827
  store volatile i32 %89, i32* %3, align 4, !dbg !828
  %90 = load i32, i32* @sincenothing, align 4, !dbg !829
  %91 = add nsw i32 %90, 1, !dbg !829
  store i32 %91, i32* @sincenothing, align 4, !dbg !829
  %92 = load i32, i32* getelementptr inbounds (%struct.pkg_queue, %struct.pkg_queue* @queue, i32 0, i32 2), align 8, !dbg !831
  %93 = mul nsw i32 %92, 3, !dbg !832
  %94 = add nsw i32 %93, 2, !dbg !833
  %95 = icmp sgt i32 %90, %94, !dbg !834
  br i1 %95, label %96, label %106, !dbg !835

; <label>:96:                                     ; preds = %81
  %97 = load i32, i32* @dependtry, align 4, !dbg !836
  %98 = add i32 %97, 1, !dbg !836
  store i32 %98, i32* @dependtry, align 4, !dbg !836
  store i32 0, i32* @sincenothing, align 4, !dbg !838
  %99 = load i32, i32* @dependtry, align 4, !dbg !839
  %100 = icmp uge i32 %99, 6, !dbg !841
  br i1 %100, label %101, label %105, !dbg !842

; <label>:101:                                    ; preds = %96
  %102 = load i32, i32* @dependtry, align 4, !dbg !843
  %103 = load i32, i32* @sincenothing, align 4, !dbg !844
  %104 = load i32, i32* getelementptr inbounds (%struct.pkg_queue, %struct.pkg_queue* @queue, i32 0, i32 2), align 8, !dbg !845
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i32 237, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.process_queue, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i32 0, i32 0), i32 %102, i32 %103, i32 %104) #9, !dbg !846
  unreachable, !dbg !846

; <label>:105:                                    ; preds = %96
  br label %138, !dbg !847

; <label>:106:                                    ; preds = %81
  %107 = load i32, i32* @sincenothing, align 4, !dbg !848
  %108 = load i32, i32* getelementptr inbounds (%struct.pkg_queue, %struct.pkg_queue* @queue, i32 0, i32 2), align 8, !dbg !851
  %109 = mul nsw i32 %108, 2, !dbg !852
  %110 = add nsw i32 %109, 2, !dbg !853
  %111 = icmp sgt i32 %107, %110, !dbg !854
  br i1 %111, label %112, label %137, !dbg !848

; <label>:112:                                    ; preds = %106
  %113 = load i32, i32* @dependtry, align 4, !dbg !855
  %114 = icmp uge i32 %113, 3, !dbg !858
  br i1 %114, label %115, label %126, !dbg !859

; <label>:115:                                    ; preds = %112
  %116 = load %struct.pkginfo*, %struct.pkginfo** @progress_bytrigproc, align 8, !dbg !860
  %117 = icmp ne %struct.pkginfo* %116, null, !dbg !860
  br i1 %117, label %118, label %126, !dbg !861

; <label>:118:                                    ; preds = %115
  %119 = load %struct.pkginfo*, %struct.pkginfo** @progress_bytrigproc, align 8, !dbg !862
  %120 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %119, i32 0, i32 15, !dbg !864
  %121 = load %struct.trigpend*, %struct.trigpend** %120, align 8, !dbg !864
  %122 = icmp ne %struct.trigpend* %121, null, !dbg !862
  br i1 %122, label %123, label %126, !dbg !865

; <label>:123:                                    ; preds = %118
  %124 = load volatile %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !867
  call void @enqueue_package(%struct.pkginfo* %124), !dbg !869
  %125 = load %struct.pkginfo*, %struct.pkginfo** @progress_bytrigproc, align 8, !dbg !870
  store volatile %struct.pkginfo* %125, %struct.pkginfo** %2, align 8, !dbg !871
  store %struct.pkginfo* null, %struct.pkginfo** @progress_bytrigproc, align 8, !dbg !872
  store volatile i32 2, i32* %3, align 4, !dbg !873
  br label %136, !dbg !874

; <label>:126:                                    ; preds = %118, %115, %112
  %127 = load i32, i32* @dependtry, align 4, !dbg !875
  %128 = add i32 %127, 1, !dbg !875
  store i32 %128, i32* @dependtry, align 4, !dbg !875
  store i32 0, i32* @sincenothing, align 4, !dbg !877
  %129 = load i32, i32* @dependtry, align 4, !dbg !878
  %130 = icmp uge i32 %129, 6, !dbg !880
  br i1 %130, label %131, label %135, !dbg !881

; <label>:131:                                    ; preds = %126
  %132 = load i32, i32* @dependtry, align 4, !dbg !882
  %133 = load i32, i32* @sincenothing, align 4, !dbg !883
  %134 = load i32, i32* getelementptr inbounds (%struct.pkg_queue, %struct.pkg_queue* @queue, i32 0, i32 2), align 8, !dbg !884
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i32 250, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.process_queue, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i32 0, i32 0), i32 %132, i32 %133, i32 %134) #9, !dbg !885
  unreachable, !dbg !885

; <label>:135:                                    ; preds = %126
  br label %136

; <label>:136:                                    ; preds = %135, %123
  br label %137, !dbg !886

; <label>:137:                                    ; preds = %136, %106
  br label %138

; <label>:138:                                    ; preds = %137, %105
  %139 = load volatile %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !887
  %140 = call i8* @pkg_name(%struct.pkginfo* %139, i32 3), !dbg !888
  %141 = load i32, i32* getelementptr inbounds (%struct.pkg_queue, %struct.pkg_queue* @queue, i32 0, i32 2), align 8, !dbg !889
  %142 = load i32, i32* @sincenothing, align 4, !dbg !890
  %143 = load i32, i32* @dependtry, align 4, !dbg !891
  call void (i32, i8*, ...) @debug(i32 1, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i32 0, i32 0), i8* %140, i32 %141, i32 %142, i32 %143), !dbg !892
  %144 = load volatile %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !893
  %145 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %144, i32 0, i32 4, !dbg !895
  %146 = load i32, i32* %145, align 8, !dbg !895
  %147 = icmp ugt i32 %146, 7, !dbg !896
  br i1 %147, label %148, label %154, !dbg !897

; <label>:148:                                    ; preds = %138
  %149 = load volatile %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !898
  %150 = call i8* @pkg_name(%struct.pkginfo* %149, i32 3), !dbg !899
  %151 = load volatile %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !900
  %152 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %151, i32 0, i32 4, !dbg !901
  %153 = load i32, i32* %152, align 8, !dbg !901
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i32 259, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.process_queue, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i32 0, i32 0), i8* %150, i32 %153) #9, !dbg !902
  unreachable, !dbg !904

; <label>:154:                                    ; preds = %138
  %155 = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %4, i32 0, i32 0, !dbg !905
  %156 = call i32 @_setjmp(%struct.__jmp_buf_tag* %155) #10, !dbg !905
  %157 = icmp ne i32 %156, 0, !dbg !905
  br i1 %157, label %158, label %167, !dbg !907

; <label>:158:                                    ; preds = %154
  %159 = load volatile %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !908
  %160 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %159, i32 0, i32 11, !dbg !910
  %161 = load %struct.perpackagestate*, %struct.perpackagestate** %160, align 8, !dbg !910
  %162 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %161, i32 0, i32 0, !dbg !911
  store i32 0, i32* %162, align 8, !dbg !912
  call void @pop_error_context(i32 2), !dbg !913
  %163 = load i8, i8* @abort_processing, align 1, !dbg !914
  %164 = trunc i8 %163 to i1, !dbg !914
  br i1 %164, label %165, label %166, !dbg !916

; <label>:165:                                    ; preds = %158
  br label %216, !dbg !917

; <label>:166:                                    ; preds = %158
  br label %72, !dbg !918, !llvm.loop !819

; <label>:167:                                    ; preds = %154
  %168 = load volatile %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !919
  %169 = call i8* @pkg_name(%struct.pkginfo* %168, i32 1), !dbg !920
  call void @push_error_context_jump([1 x %struct.__jmp_buf_tag]* %4, void (i8*, i8*)* @print_error_perpackage, i8* %169), !dbg !921
  %170 = load volatile i32, i32* %3, align 4, !dbg !922
  switch i32 %170, label %202 [
    i32 4, label %171
    i32 3, label %183
    i32 2, label %190
    i32 5, label %200
    i32 6, label %200
  ], !dbg !923

; <label>:171:                                    ; preds = %167
  %172 = load volatile %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !924
  %173 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %172, i32 0, i32 15, !dbg !927
  %174 = load %struct.trigpend*, %struct.trigpend** %173, align 8, !dbg !927
  %175 = icmp ne %struct.trigpend* %174, null, !dbg !924
  br i1 %175, label %182, label %176, !dbg !928

; <label>:176:                                    ; preds = %171
  %177 = call i8* @gettext(i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.11, i32 0, i32 0)) #8, !dbg !929
  %178 = load volatile %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !930
  %179 = call i8* @pkg_name(%struct.pkginfo* %178, i32 1), !dbg !931
  %180 = load volatile %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !932
  %181 = call i8* @pkg_status_name(%struct.pkginfo* %180), !dbg !933
  call void (i8*, ...) @ohshit(i8* %177, i8* %179, i8* %181) #9, !dbg !935
  unreachable, !dbg !936

; <label>:182:                                    ; preds = %171
  br label %183, !dbg !937

; <label>:183:                                    ; preds = %167, %182
  %184 = load volatile %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !938
  %185 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %184, i32 0, i32 4, !dbg !940
  %186 = load i32, i32* %185, align 8, !dbg !940
  %187 = icmp eq i32 %186, 0, !dbg !941
  br i1 %187, label %188, label %189, !dbg !942

; <label>:188:                                    ; preds = %183
  br label %206, !dbg !943

; <label>:189:                                    ; preds = %183
  br label %190, !dbg !944

; <label>:190:                                    ; preds = %167, %189
  %191 = load volatile %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !946
  %192 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %191, i32 0, i32 15, !dbg !948
  %193 = load %struct.trigpend*, %struct.trigpend** %192, align 8, !dbg !948
  %194 = icmp ne %struct.trigpend* %193, null, !dbg !946
  br i1 %194, label %195, label %197, !dbg !949

; <label>:195:                                    ; preds = %190
  %196 = load volatile %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !950
  call void @trigproc(%struct.pkginfo* %196, i32 1), !dbg !951
  br label %199, !dbg !951

; <label>:197:                                    ; preds = %190
  %198 = load volatile %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !952
  call void @deferred_configure(%struct.pkginfo* %198), !dbg !953
  br label %199

; <label>:199:                                    ; preds = %197, %195
  br label %206, !dbg !954

; <label>:200:                                    ; preds = %167, %167
  %201 = load volatile %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !955
  call void @deferred_remove(%struct.pkginfo* %201), !dbg !956
  br label %206, !dbg !957

; <label>:202:                                    ; preds = %167
  %203 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !958
  %204 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %203, i32 0, i32 6, !dbg !959
  %205 = load i32, i32* %204, align 8, !dbg !959
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i32 297, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.process_queue, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 %205) #9, !dbg !960
  unreachable, !dbg !960

; <label>:206:                                    ; preds = %200, %199, %188
  %207 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !961
  %208 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0)) #8, !dbg !962
  call void @m_output(%struct._IO_FILE* %207, i8* %208), !dbg !963
  %209 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !965
  %210 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0)) #8, !dbg !966
  call void @m_output(%struct._IO_FILE* %209, i8* %210), !dbg !967
  call void @pop_error_context(i32 1), !dbg !968
  br label %72, !dbg !969, !llvm.loop !819

; <label>:211:                                    ; preds = %72
  %212 = load i32, i32* getelementptr inbounds (%struct.pkg_queue, %struct.pkg_queue* @queue, i32 0, i32 2), align 8, !dbg !971
  %213 = icmp ne i32 %212, 0, !dbg !973
  br i1 %213, label %214, label %216, !dbg !974

; <label>:214:                                    ; preds = %211
  %215 = load i32, i32* getelementptr inbounds (%struct.pkg_queue, %struct.pkg_queue* @queue, i32 0, i32 2), align 8, !dbg !975
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i32 307, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.process_queue, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.14, i32 0, i32 0), i32 %215) #9, !dbg !976
  unreachable, !dbg !976

; <label>:216:                                    ; preds = %8, %165, %211
  ret void, !dbg !977
}

declare void @trigproc_run_deferred() #2

declare void @modstatdb_shutdown() #2

declare void @clear_istobes() #2

; Function Attrs: noreturn
declare void @do_internerr(i8*, i32, i8*, i8*, ...) #3

declare i32 @printf(i8*, ...) #2

declare i8* @pkg_name(%struct.pkginfo*, i32) #2

declare i32 @pkg_queue_is_empty(%struct.pkg_queue*) #2

declare %struct.pkginfo* @pkg_queue_pop(%struct.pkg_queue*) #2

declare void @debug(i32, i8*, ...) #2

; Function Attrs: nounwind returns_twice
declare i32 @_setjmp(%struct.__jmp_buf_tag*) #5

declare void @pop_error_context(i32) #2

declare void @push_error_context_jump([1 x %struct.__jmp_buf_tag]*, void (i8*, i8*)*, i8*) #2

declare void @print_error_perpackage(i8*, i8*) #2

; Function Attrs: noreturn
declare void @ohshit(i8*, ...) #3

declare i8* @pkg_status_name(%struct.pkginfo*) #2

declare void @trigproc(%struct.pkginfo*, i32) #2

declare void @deferred_configure(%struct.pkginfo*) #2

declare void @deferred_remove(%struct.pkginfo*) #2

declare void @m_output(%struct._IO_FILE*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @breakses_ok(%struct.pkginfo*, %struct.varbuf*) #0 !dbg !978 {
  %3 = alloca %struct.pkginfo*, align 8
  %4 = alloca %struct.varbuf*, align 8
  %5 = alloca %struct.dependency*, align 8
  %6 = alloca %struct.deppossi*, align 8
  %7 = alloca i32, align 4
  store %struct.pkginfo* %0, %struct.pkginfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %3, metadata !990, metadata !473), !dbg !991
  store %struct.varbuf* %1, %struct.varbuf** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %4, metadata !992, metadata !473), !dbg !993
  call void @llvm.dbg.declare(metadata %struct.dependency** %5, metadata !994, metadata !473), !dbg !995
  call void @llvm.dbg.declare(metadata %struct.deppossi** %6, metadata !996, metadata !473), !dbg !997
  call void @llvm.dbg.declare(metadata i32* %7, metadata !998, metadata !473), !dbg !999
  store i32 2, i32* %7, align 4, !dbg !999
  call void (i32, i8*, ...) @debug(i32 32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0)), !dbg !1000
  %8 = load %struct.varbuf*, %struct.varbuf** %4, align 8, !dbg !1001
  %9 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !1002
  %10 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !1003
  %11 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %10, i32 0, i32 0, !dbg !1004
  %12 = load %struct.pkgset*, %struct.pkgset** %11, align 8, !dbg !1004
  call void @breaks_check_target(%struct.varbuf* %8, i32* %7, %struct.pkginfo* %9, %struct.pkgset* %12, %struct.deppossi* null), !dbg !1005
  %13 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !1006
  %14 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %13, i32 0, i32 9, !dbg !1008
  %15 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %14, i32 0, i32 0, !dbg !1009
  %16 = load %struct.dependency*, %struct.dependency** %15, align 8, !dbg !1009
  store %struct.dependency* %16, %struct.dependency** %5, align 8, !dbg !1010
  br label %17, !dbg !1011

; <label>:17:                                     ; preds = %41, %2
  %18 = load %struct.dependency*, %struct.dependency** %5, align 8, !dbg !1012
  %19 = icmp ne %struct.dependency* %18, null, !dbg !1015
  br i1 %19, label %20, label %45, !dbg !1015

; <label>:20:                                     ; preds = %17
  %21 = load %struct.dependency*, %struct.dependency** %5, align 8, !dbg !1016
  %22 = getelementptr inbounds %struct.dependency, %struct.dependency* %21, i32 0, i32 3, !dbg !1019
  %23 = load i32, i32* %22, align 8, !dbg !1019
  %24 = icmp ne i32 %23, 6, !dbg !1020
  br i1 %24, label %25, label %26, !dbg !1021

; <label>:25:                                     ; preds = %20
  br label %41, !dbg !1022

; <label>:26:                                     ; preds = %20
  %27 = load %struct.dependency*, %struct.dependency** %5, align 8, !dbg !1024
  %28 = getelementptr inbounds %struct.dependency, %struct.dependency* %27, i32 0, i32 2, !dbg !1025
  %29 = load %struct.deppossi*, %struct.deppossi** %28, align 8, !dbg !1025
  store %struct.deppossi* %29, %struct.deppossi** %6, align 8, !dbg !1026
  %30 = load %struct.deppossi*, %struct.deppossi** %6, align 8, !dbg !1027
  %31 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %30, i32 0, i32 1, !dbg !1028
  %32 = load %struct.pkgset*, %struct.pkgset** %31, align 8, !dbg !1028
  %33 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %32, i32 0, i32 1, !dbg !1029
  %34 = load i8*, i8** %33, align 8, !dbg !1029
  call void (i32, i8*, ...) @debug(i32 256, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i32 0, i32 0), i8* %34), !dbg !1030
  %35 = load %struct.varbuf*, %struct.varbuf** %4, align 8, !dbg !1031
  %36 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !1032
  %37 = load %struct.deppossi*, %struct.deppossi** %6, align 8, !dbg !1033
  %38 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %37, i32 0, i32 1, !dbg !1034
  %39 = load %struct.pkgset*, %struct.pkgset** %38, align 8, !dbg !1034
  %40 = load %struct.deppossi*, %struct.deppossi** %6, align 8, !dbg !1035
  call void @breaks_check_target(%struct.varbuf* %35, i32* %7, %struct.pkginfo* %36, %struct.pkgset* %39, %struct.deppossi* %40), !dbg !1036
  br label %41, !dbg !1037

; <label>:41:                                     ; preds = %26, %25
  %42 = load %struct.dependency*, %struct.dependency** %5, align 8, !dbg !1038
  %43 = getelementptr inbounds %struct.dependency, %struct.dependency* %42, i32 0, i32 1, !dbg !1040
  %44 = load %struct.dependency*, %struct.dependency** %43, align 8, !dbg !1040
  store %struct.dependency* %44, %struct.dependency** %5, align 8, !dbg !1041
  br label %17, !dbg !1042, !llvm.loop !1043

; <label>:45:                                     ; preds = %17
  %46 = load i32, i32* %7, align 4, !dbg !1045
  ret i32 %46, !dbg !1046
}

; Function Attrs: nounwind uwtable
define internal void @breaks_check_target(%struct.varbuf*, i32*, %struct.pkginfo*, %struct.pkgset*, %struct.deppossi*) #0 !dbg !1047 {
  %6 = alloca %struct.varbuf*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.pkginfo*, align 8
  %9 = alloca %struct.pkgset*, align 8
  %10 = alloca %struct.deppossi*, align 8
  %11 = alloca %struct.deppossi*, align 8
  store %struct.varbuf* %0, %struct.varbuf** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %6, metadata !1051, metadata !473), !dbg !1052
  store i32* %1, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !1053, metadata !473), !dbg !1054
  store %struct.pkginfo* %2, %struct.pkginfo** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %8, metadata !1055, metadata !473), !dbg !1056
  store %struct.pkgset* %3, %struct.pkgset** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgset** %9, metadata !1057, metadata !473), !dbg !1058
  store %struct.deppossi* %4, %struct.deppossi** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.deppossi** %10, metadata !1059, metadata !473), !dbg !1060
  call void @llvm.dbg.declare(metadata %struct.deppossi** %11, metadata !1061, metadata !473), !dbg !1062
  %12 = load %struct.pkgset*, %struct.pkgset** %9, align 8, !dbg !1063
  %13 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %12, i32 0, i32 3, !dbg !1065
  %14 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %13, i32 0, i32 1, !dbg !1066
  %15 = load %struct.deppossi*, %struct.deppossi** %14, align 8, !dbg !1066
  store %struct.deppossi* %15, %struct.deppossi** %11, align 8, !dbg !1067
  br label %16, !dbg !1068

; <label>:16:                                     ; preds = %38, %5
  %17 = load %struct.deppossi*, %struct.deppossi** %11, align 8, !dbg !1069
  %18 = icmp ne %struct.deppossi* %17, null, !dbg !1072
  br i1 %18, label %19, label %42, !dbg !1072

; <label>:19:                                     ; preds = %16
  %20 = load %struct.deppossi*, %struct.deppossi** %11, align 8, !dbg !1073
  %21 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %20, i32 0, i32 0, !dbg !1076
  %22 = load %struct.dependency*, %struct.dependency** %21, align 8, !dbg !1076
  %23 = getelementptr inbounds %struct.dependency, %struct.dependency* %22, i32 0, i32 3, !dbg !1077
  %24 = load i32, i32* %23, align 8, !dbg !1077
  %25 = icmp ne i32 %24, 4, !dbg !1078
  br i1 %25, label %26, label %27, !dbg !1079

; <label>:26:                                     ; preds = %19
  br label %38, !dbg !1080

; <label>:27:                                     ; preds = %19
  %28 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1082
  %29 = load i32*, i32** %7, align 8, !dbg !1083
  %30 = load %struct.deppossi*, %struct.deppossi** %11, align 8, !dbg !1084
  %31 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1085
  %32 = load %struct.deppossi*, %struct.deppossi** %11, align 8, !dbg !1086
  %33 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %32, i32 0, i32 0, !dbg !1087
  %34 = load %struct.dependency*, %struct.dependency** %33, align 8, !dbg !1087
  %35 = getelementptr inbounds %struct.dependency, %struct.dependency* %34, i32 0, i32 0, !dbg !1088
  %36 = load %struct.pkginfo*, %struct.pkginfo** %35, align 8, !dbg !1088
  %37 = load %struct.deppossi*, %struct.deppossi** %10, align 8, !dbg !1089
  call void @breaks_check_one(%struct.varbuf* %28, i32* %29, %struct.deppossi* %30, %struct.pkginfo* %31, %struct.pkginfo* %36, %struct.deppossi* %37), !dbg !1090
  br label %38, !dbg !1091

; <label>:38:                                     ; preds = %27, %26
  %39 = load %struct.deppossi*, %struct.deppossi** %11, align 8, !dbg !1092
  %40 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %39, i32 0, i32 3, !dbg !1094
  %41 = load %struct.deppossi*, %struct.deppossi** %40, align 8, !dbg !1094
  store %struct.deppossi* %41, %struct.deppossi** %11, align 8, !dbg !1095
  br label %16, !dbg !1096, !llvm.loop !1097

; <label>:42:                                     ; preds = %16
  ret void, !dbg !1099
}

; Function Attrs: nounwind uwtable
define i32 @dependencies_ok(%struct.pkginfo*, %struct.pkginfo*, %struct.varbuf*) #0 !dbg !1100 {
  %4 = alloca %struct.pkginfo*, align 8
  %5 = alloca %struct.pkginfo*, align 8
  %6 = alloca %struct.varbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca %struct.varbuf, align 8
  %14 = alloca %struct.dependency*, align 8
  %15 = alloca %struct.deppossi*, align 8
  %16 = alloca %struct.deppossi*, align 8
  %17 = alloca %struct.pkginfo*, align 8
  %18 = alloca %struct.pkginfo*, align 8
  %19 = alloca %struct.deppossi_pkg_iterator*, align 8
  %20 = alloca %struct.pkginfo*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %4, metadata !1103, metadata !473), !dbg !1104
  store %struct.pkginfo* %1, %struct.pkginfo** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %5, metadata !1105, metadata !473), !dbg !1106
  store %struct.varbuf* %2, %struct.varbuf** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %6, metadata !1107, metadata !473), !dbg !1108
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1109, metadata !473), !dbg !1110
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1111, metadata !473), !dbg !1112
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1113, metadata !473), !dbg !1114
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1115, metadata !473), !dbg !1116
  call void @llvm.dbg.declare(metadata i8* %11, metadata !1117, metadata !473), !dbg !1118
  call void @llvm.dbg.declare(metadata i8* %12, metadata !1119, metadata !473), !dbg !1120
  call void @llvm.dbg.declare(metadata %struct.varbuf* %13, metadata !1121, metadata !473), !dbg !1122
  %21 = bitcast %struct.varbuf* %13 to i8*, !dbg !1122
  call void @llvm.memset.p0i8.i64(i8* %21, i8 0, i64 24, i32 8, i1 false), !dbg !1122
  call void @llvm.dbg.declare(metadata %struct.dependency** %14, metadata !1123, metadata !473), !dbg !1124
  call void @llvm.dbg.declare(metadata %struct.deppossi** %15, metadata !1125, metadata !473), !dbg !1126
  call void @llvm.dbg.declare(metadata %struct.deppossi** %16, metadata !1127, metadata !473), !dbg !1128
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %17, metadata !1129, metadata !473), !dbg !1130
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %18, metadata !1131, metadata !473), !dbg !1132
  store i32 0, i32* %10, align 4, !dbg !1133
  store i32 2, i32* %7, align 4, !dbg !1134
  %22 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !1135
  %23 = call i8* @pkg_name(%struct.pkginfo* %22, i32 3), !dbg !1136
  %24 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1137
  %25 = icmp ne %struct.pkginfo* %24, null, !dbg !1137
  br i1 %25, label %26, label %29, !dbg !1137

; <label>:26:                                     ; preds = %3
  %27 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1138
  %28 = call i8* @pkg_name(%struct.pkginfo* %27, i32 3), !dbg !1140
  br label %30, !dbg !1141

; <label>:29:                                     ; preds = %3
  br label %30, !dbg !1142

; <label>:30:                                     ; preds = %29, %26
  %31 = phi i8* [ %28, %26 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), %29 ], !dbg !1144
  call void (i32, i8*, ...) @debug(i32 32, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.17, i32 0, i32 0), i8* %23, i8* %31), !dbg !1146
  store i8 0, i8* %12, align 1, !dbg !1147
  store %struct.pkginfo* null, %struct.pkginfo** %18, align 8, !dbg !1148
  %32 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !1149
  %33 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %32, i32 0, i32 9, !dbg !1151
  %34 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %33, i32 0, i32 0, !dbg !1152
  %35 = load %struct.dependency*, %struct.dependency** %34, align 8, !dbg !1152
  store %struct.dependency* %35, %struct.dependency** %14, align 8, !dbg !1153
  br label %36, !dbg !1154

; <label>:36:                                     ; preds = %267, %30
  %37 = load %struct.dependency*, %struct.dependency** %14, align 8, !dbg !1155
  %38 = icmp ne %struct.dependency* %37, null, !dbg !1158
  br i1 %38, label %39, label %271, !dbg !1158

; <label>:39:                                     ; preds = %36
  %40 = load %struct.dependency*, %struct.dependency** %14, align 8, !dbg !1159
  %41 = getelementptr inbounds %struct.dependency, %struct.dependency* %40, i32 0, i32 3, !dbg !1162
  %42 = load i32, i32* %41, align 8, !dbg !1162
  %43 = icmp ne i32 %42, 2, !dbg !1163
  br i1 %43, label %44, label %50, !dbg !1164

; <label>:44:                                     ; preds = %39
  %45 = load %struct.dependency*, %struct.dependency** %14, align 8, !dbg !1165
  %46 = getelementptr inbounds %struct.dependency, %struct.dependency* %45, i32 0, i32 3, !dbg !1167
  %47 = load i32, i32* %46, align 8, !dbg !1167
  %48 = icmp ne i32 %47, 3, !dbg !1168
  br i1 %48, label %49, label %50, !dbg !1169

; <label>:49:                                     ; preds = %44
  br label %267, !dbg !1170

; <label>:50:                                     ; preds = %44, %39
  call void (i32, i8*, ...) @debug(i32 256, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i32 0, i32 0)), !dbg !1172
  store i8 0, i8* %11, align 1, !dbg !1173
  call void @varbuf_reset(%struct.varbuf* %13), !dbg !1174
  store i32 0, i32* %8, align 4, !dbg !1175
  store %struct.pkginfo* null, %struct.pkginfo** %17, align 8, !dbg !1176
  %51 = load %struct.dependency*, %struct.dependency** %14, align 8, !dbg !1177
  %52 = getelementptr inbounds %struct.dependency, %struct.dependency* %51, i32 0, i32 2, !dbg !1179
  %53 = load %struct.deppossi*, %struct.deppossi** %52, align 8, !dbg !1179
  store %struct.deppossi* %53, %struct.deppossi** %15, align 8, !dbg !1180
  br label %54, !dbg !1181

; <label>:54:                                     ; preds = %187, %50
  %55 = load i32, i32* %8, align 4, !dbg !1182
  %56 = icmp ne i32 %55, 3, !dbg !1185
  br i1 %56, label %57, label %60, !dbg !1186

; <label>:57:                                     ; preds = %54
  %58 = load %struct.deppossi*, %struct.deppossi** %15, align 8, !dbg !1187
  %59 = icmp ne %struct.deppossi* %58, null, !dbg !1189
  br label %60

; <label>:60:                                     ; preds = %57, %54
  %61 = phi i1 [ false, %54 ], [ %59, %57 ]
  br i1 %61, label %62, label %191, !dbg !1190

; <label>:62:                                     ; preds = %60
  call void @llvm.dbg.declare(metadata %struct.deppossi_pkg_iterator** %19, metadata !1192, metadata !473), !dbg !1196
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %20, metadata !1197, metadata !473), !dbg !1198
  %63 = load %struct.deppossi*, %struct.deppossi** %15, align 8, !dbg !1199
  %64 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %63, i32 0, i32 1, !dbg !1200
  %65 = load %struct.pkgset*, %struct.pkgset** %64, align 8, !dbg !1200
  %66 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %65, i32 0, i32 1, !dbg !1201
  %67 = load i8*, i8** %66, align 8, !dbg !1201
  call void (i32, i8*, ...) @debug(i32 256, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i32 0, i32 0), i8* %67), !dbg !1202
  %68 = load %struct.deppossi*, %struct.deppossi** %15, align 8, !dbg !1203
  %69 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %68, i32 0, i32 9, !dbg !1205
  %70 = load i8, i8* %69, align 1, !dbg !1205
  %71 = trunc i8 %70 to i1, !dbg !1205
  br i1 %71, label %72, label %73, !dbg !1206

; <label>:72:                                     ; preds = %62
  call void (i32, i8*, ...) @debug(i32 256, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.21, i32 0, i32 0)), !dbg !1207
  store i32 3, i32* %8, align 4, !dbg !1209
  br label %191, !dbg !1210

; <label>:73:                                     ; preds = %62
  store i32 0, i32* %9, align 4, !dbg !1211
  %74 = load %struct.deppossi*, %struct.deppossi** %15, align 8, !dbg !1212
  %75 = call %struct.deppossi_pkg_iterator* @deppossi_pkg_iter_new(%struct.deppossi* %74, i32 0), !dbg !1213
  store %struct.deppossi_pkg_iterator* %75, %struct.deppossi_pkg_iterator** %19, align 8, !dbg !1214
  br label %76, !dbg !1215

; <label>:76:                                     ; preds = %95, %73
  %77 = load %struct.deppossi_pkg_iterator*, %struct.deppossi_pkg_iterator** %19, align 8, !dbg !1216
  %78 = call %struct.pkginfo* @deppossi_pkg_iter_next(%struct.deppossi_pkg_iterator* %77), !dbg !1218
  store %struct.pkginfo* %78, %struct.pkginfo** %20, align 8, !dbg !1219
  %79 = icmp ne %struct.pkginfo* %78, null, !dbg !1220
  br i1 %79, label %80, label %96, !dbg !1220

; <label>:80:                                     ; preds = %76
  %81 = load %struct.pkginfo*, %struct.pkginfo** %20, align 8, !dbg !1221
  %82 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !1223
  %83 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1224
  %84 = load %struct.deppossi*, %struct.deppossi** %15, align 8, !dbg !1225
  %85 = call i32 @deppossi_ok_found(%struct.pkginfo* %81, %struct.pkginfo* %82, %struct.pkginfo* %83, %struct.deppossi* null, %struct.pkginfo** %17, i8* %11, %struct.deppossi* %84, i32* %10, %struct.varbuf* %13), !dbg !1226
  store i32 %85, i32* %9, align 4, !dbg !1227
  %86 = load i32, i32* %9, align 4, !dbg !1228
  %87 = load i32, i32* %8, align 4, !dbg !1230
  %88 = icmp ugt i32 %86, %87, !dbg !1231
  br i1 %88, label %89, label %91, !dbg !1232

; <label>:89:                                     ; preds = %80
  %90 = load i32, i32* %9, align 4, !dbg !1233
  store i32 %90, i32* %8, align 4, !dbg !1234
  br label %91, !dbg !1235

; <label>:91:                                     ; preds = %89, %80
  %92 = load i32, i32* %8, align 4, !dbg !1236
  %93 = icmp eq i32 %92, 3, !dbg !1238
  br i1 %93, label %94, label %95, !dbg !1239

; <label>:94:                                     ; preds = %91
  br label %96, !dbg !1240

; <label>:95:                                     ; preds = %91
  br label %76, !dbg !1241, !llvm.loop !1243

; <label>:96:                                     ; preds = %94, %76
  %97 = load %struct.deppossi_pkg_iterator*, %struct.deppossi_pkg_iterator** %19, align 8, !dbg !1244
  call void @deppossi_pkg_iter_free(%struct.deppossi_pkg_iterator* %97), !dbg !1245
  %98 = load i32, i32* %8, align 4, !dbg !1246
  %99 = icmp ne i32 %98, 3, !dbg !1248
  br i1 %99, label %100, label %179, !dbg !1249

; <label>:100:                                    ; preds = %96
  %101 = load %struct.deppossi*, %struct.deppossi** %15, align 8, !dbg !1250
  %102 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %101, i32 0, i32 1, !dbg !1253
  %103 = load %struct.pkgset*, %struct.pkgset** %102, align 8, !dbg !1253
  %104 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %103, i32 0, i32 3, !dbg !1254
  %105 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %104, i32 0, i32 1, !dbg !1255
  %106 = load %struct.deppossi*, %struct.deppossi** %105, align 8, !dbg !1255
  store %struct.deppossi* %106, %struct.deppossi** %16, align 8, !dbg !1256
  br label %107, !dbg !1257

; <label>:107:                                    ; preds = %174, %100
  %108 = load i32, i32* %8, align 4, !dbg !1258
  %109 = icmp ne i32 %108, 3, !dbg !1260
  br i1 %109, label %110, label %113, !dbg !1261

; <label>:110:                                    ; preds = %107
  %111 = load %struct.deppossi*, %struct.deppossi** %16, align 8, !dbg !1262
  %112 = icmp ne %struct.deppossi* %111, null, !dbg !1264
  br label %113

; <label>:113:                                    ; preds = %110, %107
  %114 = phi i1 [ false, %107 ], [ %112, %110 ]
  br i1 %114, label %115, label %178, !dbg !1265

; <label>:115:                                    ; preds = %113
  %116 = load %struct.deppossi*, %struct.deppossi** %16, align 8, !dbg !1267
  %117 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %116, i32 0, i32 0, !dbg !1270
  %118 = load %struct.dependency*, %struct.dependency** %117, align 8, !dbg !1270
  %119 = getelementptr inbounds %struct.dependency, %struct.dependency* %118, i32 0, i32 3, !dbg !1271
  %120 = load i32, i32* %119, align 8, !dbg !1271
  %121 = icmp ne i32 %120, 6, !dbg !1272
  br i1 %121, label %122, label %123, !dbg !1273

; <label>:122:                                    ; preds = %115
  br label %174, !dbg !1274

; <label>:123:                                    ; preds = %115
  %124 = load %struct.deppossi*, %struct.deppossi** %16, align 8, !dbg !1275
  %125 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %124, i32 0, i32 0, !dbg !1276
  %126 = load %struct.dependency*, %struct.dependency** %125, align 8, !dbg !1276
  %127 = getelementptr inbounds %struct.dependency, %struct.dependency* %126, i32 0, i32 0, !dbg !1277
  %128 = load %struct.pkginfo*, %struct.pkginfo** %127, align 8, !dbg !1277
  %129 = call i8* @pkg_name(%struct.pkginfo* %128, i32 3), !dbg !1278
  call void (i32, i8*, ...) @debug(i32 256, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22, i32 0, i32 0), i8* %129), !dbg !1279
  %130 = load %struct.deppossi*, %struct.deppossi** %16, align 8, !dbg !1280
  %131 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %130, i32 0, i32 0, !dbg !1282
  %132 = load %struct.dependency*, %struct.dependency** %131, align 8, !dbg !1282
  %133 = getelementptr inbounds %struct.dependency, %struct.dependency* %132, i32 0, i32 0, !dbg !1283
  %134 = load %struct.pkginfo*, %struct.pkginfo** %133, align 8, !dbg !1283
  %135 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %134, i32 0, i32 9, !dbg !1284
  %136 = load %struct.deppossi*, %struct.deppossi** %16, align 8, !dbg !1285
  %137 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %136, i32 0, i32 5, !dbg !1286
  %138 = load %struct.dpkg_arch*, %struct.dpkg_arch** %137, align 8, !dbg !1286
  %139 = load %struct.deppossi*, %struct.deppossi** %15, align 8, !dbg !1287
  %140 = call zeroext i1 @deparchsatisfied(%struct.pkgbin* %135, %struct.dpkg_arch* %138, %struct.deppossi* %139), !dbg !1288
  br i1 %140, label %142, label %141, !dbg !1289

; <label>:141:                                    ; preds = %123
  call void (i32, i8*, ...) @debug(i32 256, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.23, i32 0, i32 0)), !dbg !1290
  br label %174, !dbg !1292

; <label>:142:                                    ; preds = %123
  %143 = load %struct.deppossi*, %struct.deppossi** %16, align 8, !dbg !1293
  %144 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %143, i32 0, i32 0, !dbg !1294
  %145 = load %struct.dependency*, %struct.dependency** %144, align 8, !dbg !1294
  %146 = getelementptr inbounds %struct.dependency, %struct.dependency* %145, i32 0, i32 0, !dbg !1295
  %147 = load %struct.pkginfo*, %struct.pkginfo** %146, align 8, !dbg !1295
  %148 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !1296
  %149 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1297
  %150 = load %struct.deppossi*, %struct.deppossi** %16, align 8, !dbg !1298
  %151 = load %struct.deppossi*, %struct.deppossi** %15, align 8, !dbg !1299
  %152 = call i32 @deppossi_ok_found(%struct.pkginfo* %147, %struct.pkginfo* %148, %struct.pkginfo* %149, %struct.deppossi* %150, %struct.pkginfo** %17, i8* %11, %struct.deppossi* %151, i32* %10, %struct.varbuf* %13), !dbg !1300
  store i32 %152, i32* %9, align 4, !dbg !1301
  %153 = load i32, i32* %9, align 4, !dbg !1302
  %154 = icmp eq i32 %153, 1, !dbg !1304
  br i1 %154, label %155, label %167, !dbg !1305

; <label>:155:                                    ; preds = %142
  %156 = load %struct.deppossi*, %struct.deppossi** %16, align 8, !dbg !1306
  %157 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %156, i32 0, i32 0, !dbg !1308
  %158 = load %struct.dependency*, %struct.dependency** %157, align 8, !dbg !1308
  %159 = getelementptr inbounds %struct.dependency, %struct.dependency* %158, i32 0, i32 0, !dbg !1309
  %160 = load %struct.pkginfo*, %struct.pkginfo** %159, align 8, !dbg !1309
  %161 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !1310
  %162 = icmp eq %struct.pkginfo* %160, %161, !dbg !1311
  br i1 %162, label %163, label %167, !dbg !1312

; <label>:163:                                    ; preds = %155
  %164 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1313
  %165 = icmp ne %struct.pkginfo* %164, null, !dbg !1313
  br i1 %165, label %167, label %166, !dbg !1315

; <label>:166:                                    ; preds = %163
  store i32 3, i32* %9, align 4, !dbg !1316
  br label %167, !dbg !1318

; <label>:167:                                    ; preds = %166, %163, %155, %142
  %168 = load i32, i32* %9, align 4, !dbg !1319
  %169 = load i32, i32* %8, align 4, !dbg !1321
  %170 = icmp ugt i32 %168, %169, !dbg !1322
  br i1 %170, label %171, label %173, !dbg !1323

; <label>:171:                                    ; preds = %167
  %172 = load i32, i32* %9, align 4, !dbg !1324
  store i32 %172, i32* %8, align 4, !dbg !1325
  br label %173, !dbg !1326

; <label>:173:                                    ; preds = %171, %167
  br label %174, !dbg !1327

; <label>:174:                                    ; preds = %173, %141, %122
  %175 = load %struct.deppossi*, %struct.deppossi** %16, align 8, !dbg !1328
  %176 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %175, i32 0, i32 3, !dbg !1329
  %177 = load %struct.deppossi*, %struct.deppossi** %176, align 8, !dbg !1329
  store %struct.deppossi* %177, %struct.deppossi** %16, align 8, !dbg !1330
  br label %107, !dbg !1331, !llvm.loop !1333

; <label>:178:                                    ; preds = %113
  br label %179, !dbg !1335

; <label>:179:                                    ; preds = %178, %96
  %180 = load i32, i32* %8, align 4, !dbg !1336
  call void (i32, i8*, ...) @debug(i32 256, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0), i32 %180), !dbg !1337
  %181 = load i32, i32* %9, align 4, !dbg !1338
  %182 = load i32, i32* %8, align 4, !dbg !1340
  %183 = icmp ugt i32 %181, %182, !dbg !1341
  br i1 %183, label %184, label %186, !dbg !1342

; <label>:184:                                    ; preds = %179
  %185 = load i32, i32* %9, align 4, !dbg !1343
  store i32 %185, i32* %8, align 4, !dbg !1345
  br label %186, !dbg !1346

; <label>:186:                                    ; preds = %184, %179
  br label %187, !dbg !1347

; <label>:187:                                    ; preds = %186
  %188 = load %struct.deppossi*, %struct.deppossi** %15, align 8, !dbg !1348
  %189 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %188, i32 0, i32 2, !dbg !1350
  %190 = load %struct.deppossi*, %struct.deppossi** %189, align 8, !dbg !1350
  store %struct.deppossi* %190, %struct.deppossi** %15, align 8, !dbg !1351
  br label %54, !dbg !1352, !llvm.loop !1353

; <label>:191:                                    ; preds = %72, %60
  %192 = call zeroext i1 @in_force(i32 4096), !dbg !1355
  br i1 %192, label %193, label %202, !dbg !1357

; <label>:193:                                    ; preds = %191
  %194 = call i32 @found_forced_on(i32 5), !dbg !1358
  store i32 %194, i32* %9, align 4, !dbg !1360
  %195 = load i32, i32* %9, align 4, !dbg !1361
  %196 = load i32, i32* %8, align 4, !dbg !1363
  %197 = icmp ugt i32 %195, %196, !dbg !1364
  br i1 %197, label %198, label %201, !dbg !1365

; <label>:198:                                    ; preds = %193
  %199 = load i32, i32* %9, align 4, !dbg !1366
  store i32 %199, i32* %8, align 4, !dbg !1368
  %200 = load i32, i32* %8, align 4, !dbg !1369
  call void (i32, i8*, ...) @debug(i32 256, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.25, i32 0, i32 0), i32 %200), !dbg !1370
  br label %201, !dbg !1371

; <label>:201:                                    ; preds = %198, %193
  br label %202, !dbg !1372

; <label>:202:                                    ; preds = %201, %191
  %203 = load i32, i32* %8, align 4, !dbg !1373
  %204 = load i8, i8* %11, align 1, !dbg !1374
  %205 = trunc i8 %204 to i1, !dbg !1374
  %206 = zext i1 %205 to i32, !dbg !1374
  %207 = load %struct.pkginfo*, %struct.pkginfo** %17, align 8, !dbg !1375
  %208 = icmp ne %struct.pkginfo* %207, null, !dbg !1375
  br i1 %208, label %209, label %212, !dbg !1375

; <label>:209:                                    ; preds = %202
  %210 = load %struct.pkginfo*, %struct.pkginfo** %17, align 8, !dbg !1376
  %211 = call i8* @pkg_name(%struct.pkginfo* %210, i32 3), !dbg !1378
  br label %213, !dbg !1379

; <label>:212:                                    ; preds = %202
  br label %213, !dbg !1380

; <label>:213:                                    ; preds = %212, %209
  %214 = phi i8* [ %211, %209 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0), %212 ], !dbg !1382
  call void (i32, i8*, ...) @debug(i32 256, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.26, i32 0, i32 0), i32 %203, i32 %206, i8* %214), !dbg !1384
  %215 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1385
  %216 = icmp ne %struct.pkginfo* %215, null, !dbg !1385
  br i1 %216, label %217, label %221, !dbg !1387

; <label>:217:                                    ; preds = %213
  %218 = load i8, i8* %11, align 1, !dbg !1388
  %219 = trunc i8 %218 to i1, !dbg !1388
  br i1 %219, label %221, label %220, !dbg !1390

; <label>:220:                                    ; preds = %217
  br label %267, !dbg !1391

; <label>:221:                                    ; preds = %217, %213
  %222 = load i32, i32* %8, align 4, !dbg !1393
  switch i32 %222, label %264 [
    i32 0, label %223
    i32 2, label %224
    i32 1, label %252
    i32 3, label %263
  ], !dbg !1394

; <label>:223:                                    ; preds = %221
  store i8 1, i8* %12, align 1, !dbg !1395
  store i32 0, i32* %7, align 4, !dbg !1397
  br label %224, !dbg !1398

; <label>:224:                                    ; preds = %221, %223
  %225 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1399
  call void @varbuf_add_buf(%struct.varbuf* %225, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0), i64 1), !dbg !1400
  %226 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1401
  %227 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !1402
  %228 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !1403
  %229 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %228, i32 0, i32 9, !dbg !1404
  call void @varbuf_add_pkgbin_name(%struct.varbuf* %226, %struct.pkginfo* %227, %struct.pkgbin* %229, i32 1), !dbg !1405
  %230 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1406
  %231 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0)) #8, !dbg !1407
  %232 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0)) #8, !dbg !1408
  %233 = call i64 @strlen(i8* %232) #11, !dbg !1410
  call void @varbuf_add_buf(%struct.varbuf* %230, i8* %231, i64 %233), !dbg !1412
  %234 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1414
  %235 = load %struct.dependency*, %struct.dependency** %14, align 8, !dbg !1415
  call void @varbufdependency(%struct.varbuf* %234, %struct.dependency* %235), !dbg !1416
  %236 = load i32, i32* %10, align 4, !dbg !1417
  %237 = icmp ne i32 %236, 0, !dbg !1417
  br i1 %237, label %238, label %249, !dbg !1419

; <label>:238:                                    ; preds = %224
  call void @varbuf_end_str(%struct.varbuf* %13), !dbg !1420
  %239 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1422
  %240 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0)) #8, !dbg !1423
  %241 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0)) #8, !dbg !1424
  %242 = call i64 @strlen(i8* %241) #11, !dbg !1426
  call void @varbuf_add_buf(%struct.varbuf* %239, i8* %240, i64 %242), !dbg !1428
  %243 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1430
  %244 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %13, i32 0, i32 2, !dbg !1431
  %245 = load i8*, i8** %244, align 8, !dbg !1431
  %246 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %13, i32 0, i32 2, !dbg !1432
  %247 = load i8*, i8** %246, align 8, !dbg !1432
  %248 = call i64 @strlen(i8* %247) #11, !dbg !1433
  call void @varbuf_add_buf(%struct.varbuf* %243, i8* %245, i64 %248), !dbg !1434
  br label %251, !dbg !1435

; <label>:249:                                    ; preds = %224
  %250 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1436
  call void @varbuf_add_buf(%struct.varbuf* %250, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0), i64 2), !dbg !1438
  br label %251

; <label>:251:                                    ; preds = %249, %238
  br label %266, !dbg !1439

; <label>:252:                                    ; preds = %221
  %253 = load %struct.pkginfo*, %struct.pkginfo** %17, align 8, !dbg !1440
  %254 = icmp ne %struct.pkginfo* %253, null, !dbg !1440
  br i1 %254, label %255, label %257, !dbg !1442

; <label>:255:                                    ; preds = %252
  %256 = load %struct.pkginfo*, %struct.pkginfo** %17, align 8, !dbg !1443
  store %struct.pkginfo* %256, %struct.pkginfo** %18, align 8, !dbg !1444
  br label %258, !dbg !1445

; <label>:257:                                    ; preds = %252
  store i8 1, i8* %12, align 1, !dbg !1446
  br label %258

; <label>:258:                                    ; preds = %257, %255
  %259 = load i32, i32* %7, align 4, !dbg !1447
  %260 = icmp ugt i32 %259, 1, !dbg !1449
  br i1 %260, label %261, label %262, !dbg !1450

; <label>:261:                                    ; preds = %258
  store i32 1, i32* %7, align 4, !dbg !1451
  br label %262, !dbg !1452

; <label>:262:                                    ; preds = %261, %258
  br label %266, !dbg !1453

; <label>:263:                                    ; preds = %221
  br label %266, !dbg !1454

; <label>:264:                                    ; preds = %221
  %265 = load i32, i32* %8, align 4, !dbg !1455
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i32 744, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.dependencies_ok, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.32, i32 0, i32 0), i32 %265) #9, !dbg !1456
  unreachable, !dbg !1456

; <label>:266:                                    ; preds = %263, %262, %251
  br label %267, !dbg !1457

; <label>:267:                                    ; preds = %266, %220, %49
  %268 = load %struct.dependency*, %struct.dependency** %14, align 8, !dbg !1458
  %269 = getelementptr inbounds %struct.dependency, %struct.dependency* %268, i32 0, i32 1, !dbg !1460
  %270 = load %struct.dependency*, %struct.dependency** %269, align 8, !dbg !1460
  store %struct.dependency* %270, %struct.dependency** %14, align 8, !dbg !1461
  br label %36, !dbg !1462, !llvm.loop !1463

; <label>:271:                                    ; preds = %36
  %272 = load i32, i32* %7, align 4, !dbg !1465
  %273 = icmp eq i32 %272, 0, !dbg !1467
  br i1 %273, label %274, label %287, !dbg !1468

; <label>:274:                                    ; preds = %271
  %275 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !1469
  %276 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %275, i32 0, i32 11, !dbg !1470
  %277 = load %struct.perpackagestate*, %struct.perpackagestate** %276, align 8, !dbg !1470
  %278 = icmp ne %struct.perpackagestate* %277, null, !dbg !1469
  br i1 %278, label %279, label %287, !dbg !1471

; <label>:279:                                    ; preds = %274
  %280 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !1472
  %281 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %280, i32 0, i32 11, !dbg !1474
  %282 = load %struct.perpackagestate*, %struct.perpackagestate** %281, align 8, !dbg !1474
  %283 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %282, i32 0, i32 0, !dbg !1475
  %284 = load i32, i32* %283, align 8, !dbg !1475
  %285 = icmp eq i32 %284, 1, !dbg !1476
  br i1 %285, label %286, label %287, !dbg !1477

; <label>:286:                                    ; preds = %279
  store i32 1, i32* %7, align 4, !dbg !1478
  br label %287, !dbg !1479

; <label>:287:                                    ; preds = %286, %279, %274, %271
  %288 = load i8, i8* %12, align 1, !dbg !1480
  %289 = trunc i8 %288 to i1, !dbg !1480
  br i1 %289, label %295, label %290, !dbg !1482

; <label>:290:                                    ; preds = %287
  %291 = load %struct.pkginfo*, %struct.pkginfo** %18, align 8, !dbg !1483
  %292 = icmp ne %struct.pkginfo* %291, null, !dbg !1483
  br i1 %292, label %293, label %295, !dbg !1485

; <label>:293:                                    ; preds = %290
  %294 = load %struct.pkginfo*, %struct.pkginfo** %18, align 8, !dbg !1486
  store %struct.pkginfo* %294, %struct.pkginfo** @progress_bytrigproc, align 8, !dbg !1487
  br label %295, !dbg !1488

; <label>:295:                                    ; preds = %293, %290, %287
  call void @varbuf_destroy(%struct.varbuf* %13), !dbg !1489
  %296 = load i32, i32* %7, align 4, !dbg !1490
  %297 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1491
  %298 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %297, i32 0, i32 0, !dbg !1492
  %299 = load i64, i64* %298, align 8, !dbg !1492
  %300 = trunc i64 %299 to i32, !dbg !1493
  %301 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1494
  %302 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %301, i32 0, i32 2, !dbg !1495
  %303 = load i8*, i8** %302, align 8, !dbg !1495
  call void (i32, i8*, ...) @debug(i32 32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i32 0, i32 0), i32 %296, i32 %300, i8* %303), !dbg !1496
  %304 = load i32, i32* %7, align 4, !dbg !1497
  ret i32 %304, !dbg !1498
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #6

declare void @varbuf_reset(%struct.varbuf*) #2

declare %struct.deppossi_pkg_iterator* @deppossi_pkg_iter_new(%struct.deppossi*, i32) #2

declare %struct.pkginfo* @deppossi_pkg_iter_next(%struct.deppossi_pkg_iterator*) #2

; Function Attrs: nounwind uwtable
define internal i32 @deppossi_ok_found(%struct.pkginfo*, %struct.pkginfo*, %struct.pkginfo*, %struct.deppossi*, %struct.pkginfo**, i8*, %struct.deppossi*, i32*, %struct.varbuf*) #0 !dbg !1499 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.pkginfo*, align 8
  %12 = alloca %struct.pkginfo*, align 8
  %13 = alloca %struct.pkginfo*, align 8
  %14 = alloca %struct.deppossi*, align 8
  %15 = alloca %struct.pkginfo**, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.deppossi*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.varbuf*, align 8
  %20 = alloca i32, align 4
  store %struct.pkginfo* %0, %struct.pkginfo** %11, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %11, metadata !1505, metadata !473), !dbg !1506
  store %struct.pkginfo* %1, %struct.pkginfo** %12, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %12, metadata !1507, metadata !473), !dbg !1508
  store %struct.pkginfo* %2, %struct.pkginfo** %13, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %13, metadata !1509, metadata !473), !dbg !1510
  store %struct.deppossi* %3, %struct.deppossi** %14, align 8
  call void @llvm.dbg.declare(metadata %struct.deppossi** %14, metadata !1511, metadata !473), !dbg !1512
  store %struct.pkginfo** %4, %struct.pkginfo*** %15, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo*** %15, metadata !1513, metadata !473), !dbg !1514
  store i8* %5, i8** %16, align 8
  call void @llvm.dbg.declare(metadata i8** %16, metadata !1515, metadata !473), !dbg !1516
  store %struct.deppossi* %6, %struct.deppossi** %17, align 8
  call void @llvm.dbg.declare(metadata %struct.deppossi** %17, metadata !1517, metadata !473), !dbg !1518
  store i32* %7, i32** %18, align 8
  call void @llvm.dbg.declare(metadata i32** %18, metadata !1519, metadata !473), !dbg !1520
  store %struct.varbuf* %8, %struct.varbuf** %19, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %19, metadata !1521, metadata !473), !dbg !1522
  call void @llvm.dbg.declare(metadata i32* %20, metadata !1523, metadata !473), !dbg !1524
  %21 = load %struct.pkginfo*, %struct.pkginfo** %11, align 8, !dbg !1525
  %22 = call zeroext i1 @ignore_depends(%struct.pkginfo* %21), !dbg !1527
  br i1 %22, label %23, label %24, !dbg !1528

; <label>:23:                                     ; preds = %9
  call void (i32, i8*, ...) @debug(i32 256, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.40, i32 0, i32 0)), !dbg !1529
  store i32 3, i32* %10, align 4, !dbg !1531
  br label %273, !dbg !1531

; <label>:24:                                     ; preds = %9
  store i32 0, i32* %20, align 4, !dbg !1532
  %25 = load %struct.pkginfo*, %struct.pkginfo** %11, align 8, !dbg !1533
  %26 = load %struct.pkginfo*, %struct.pkginfo** %13, align 8, !dbg !1535
  %27 = icmp eq %struct.pkginfo* %25, %26, !dbg !1536
  br i1 %27, label %28, label %52, !dbg !1537

; <label>:28:                                     ; preds = %24
  %29 = load %struct.deppossi*, %struct.deppossi** %14, align 8, !dbg !1538
  %30 = icmp ne %struct.deppossi* %29, null, !dbg !1538
  br i1 %30, label %31, label %42, !dbg !1541

; <label>:31:                                     ; preds = %28
  %32 = load %struct.varbuf*, %struct.varbuf** %19, align 8, !dbg !1542
  %33 = call i8* @gettext(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.41, i32 0, i32 0)) #8, !dbg !1544
  %34 = load %struct.pkginfo*, %struct.pkginfo** %11, align 8, !dbg !1545
  %35 = call i8* @pkg_name(%struct.pkginfo* %34, i32 1), !dbg !1546
  %36 = load %struct.deppossi*, %struct.deppossi** %14, align 8, !dbg !1547
  %37 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %36, i32 0, i32 1, !dbg !1548
  %38 = load %struct.pkgset*, %struct.pkgset** %37, align 8, !dbg !1548
  %39 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %38, i32 0, i32 1, !dbg !1549
  %40 = load i8*, i8** %39, align 8, !dbg !1549
  %41 = call i32 (%struct.varbuf*, i8*, ...) @varbuf_printf(%struct.varbuf* %32, i8* %33, i8* %35, i8* %40), !dbg !1550
  br label %48, !dbg !1551

; <label>:42:                                     ; preds = %28
  %43 = load %struct.varbuf*, %struct.varbuf** %19, align 8, !dbg !1552
  %44 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.42, i32 0, i32 0)) #8, !dbg !1554
  %45 = load %struct.pkginfo*, %struct.pkginfo** %11, align 8, !dbg !1555
  %46 = call i8* @pkg_name(%struct.pkginfo* %45, i32 1), !dbg !1556
  %47 = call i32 (%struct.varbuf*, i8*, ...) @varbuf_printf(%struct.varbuf* %43, i8* %44, i8* %46), !dbg !1557
  br label %48

; <label>:48:                                     ; preds = %42, %31
  %49 = load i8*, i8** %16, align 8, !dbg !1559
  store i8 1, i8* %49, align 1, !dbg !1560
  %50 = load i32, i32* %20, align 4, !dbg !1561
  call void (i32, i8*, ...) @debug(i32 256, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.43, i32 0, i32 0), i32 %50), !dbg !1562
  %51 = load i32, i32* %20, align 4, !dbg !1563
  store i32 %51, i32* %10, align 4, !dbg !1564
  br label %273, !dbg !1564

; <label>:52:                                     ; preds = %24
  %53 = load %struct.pkginfo*, %struct.pkginfo** %11, align 8, !dbg !1565
  %54 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %53, i32 0, i32 4, !dbg !1566
  %55 = load i32, i32* %54, align 8, !dbg !1566
  switch i32 %55, label %246 [
    i32 3, label %56
    i32 4, label %56
    i32 5, label %56
    i32 6, label %56
    i32 7, label %56
  ], !dbg !1567

; <label>:56:                                     ; preds = %52, %52, %52, %52, %52
  %57 = load %struct.deppossi*, %struct.deppossi** %17, align 8, !dbg !1568
  %58 = icmp ne %struct.deppossi* %57, null, !dbg !1568
  br i1 %58, label %59, label %115, !dbg !1571

; <label>:59:                                     ; preds = %56
  %60 = load %struct.deppossi*, %struct.deppossi** %14, align 8, !dbg !1572
  %61 = icmp ne %struct.deppossi* %60, null, !dbg !1572
  br i1 %61, label %62, label %92, !dbg !1575

; <label>:62:                                     ; preds = %59
  %63 = load %struct.deppossi*, %struct.deppossi** %17, align 8, !dbg !1576
  %64 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %63, i32 0, i32 1, !dbg !1578
  %65 = load %struct.pkgset*, %struct.pkgset** %64, align 8, !dbg !1578
  %66 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %65, i32 0, i32 1, !dbg !1579
  %67 = load i8*, i8** %66, align 8, !dbg !1579
  %68 = load %struct.pkginfo*, %struct.pkginfo** %11, align 8, !dbg !1580
  %69 = call i8* @pkg_name(%struct.pkginfo* %68, i32 3), !dbg !1581
  call void (i32, i8*, ...) @debug(i32 256, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.44, i32 0, i32 0), i8* %67, i8* %69), !dbg !1582
  %70 = load %struct.deppossi*, %struct.deppossi** %17, align 8, !dbg !1583
  %71 = load %struct.deppossi*, %struct.deppossi** %14, align 8, !dbg !1585
  %72 = call zeroext i1 @pkg_virtual_deppossi_satisfied(%struct.deppossi* %70, %struct.deppossi* %71), !dbg !1586
  br i1 %72, label %91, label %73, !dbg !1587

; <label>:73:                                     ; preds = %62
  %74 = load %struct.varbuf*, %struct.varbuf** %19, align 8, !dbg !1588
  %75 = call i8* @gettext(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.45, i32 0, i32 0)) #8, !dbg !1590
  %76 = load %struct.deppossi*, %struct.deppossi** %17, align 8, !dbg !1591
  %77 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %76, i32 0, i32 1, !dbg !1592
  %78 = load %struct.pkgset*, %struct.pkgset** %77, align 8, !dbg !1592
  %79 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %78, i32 0, i32 1, !dbg !1593
  %80 = load i8*, i8** %79, align 8, !dbg !1593
  %81 = load %struct.pkginfo*, %struct.pkginfo** %11, align 8, !dbg !1594
  %82 = call i8* @pkg_name(%struct.pkginfo* %81, i32 3), !dbg !1595
  %83 = load %struct.deppossi*, %struct.deppossi** %14, align 8, !dbg !1596
  %84 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %83, i32 0, i32 6, !dbg !1597
  %85 = call i8* @versiondescribe(%struct.dpkg_version* %84, i32 1), !dbg !1598
  %86 = call i32 (%struct.varbuf*, i8*, ...) @varbuf_printf(%struct.varbuf* %74, i8* %75, i8* %80, i8* %82, i8* %85), !dbg !1599
  %87 = call zeroext i1 @in_force(i32 8192), !dbg !1600
  br i1 %87, label %88, label %90, !dbg !1602

; <label>:88:                                     ; preds = %73
  %89 = call i32 @found_forced_on(i32 4), !dbg !1603
  store i32 %89, i32* %20, align 4, !dbg !1604
  br label %90, !dbg !1605

; <label>:90:                                     ; preds = %88, %73
  call void (i32, i8*, ...) @debug(i32 256, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.46, i32 0, i32 0)), !dbg !1606
  br label %267, !dbg !1607

; <label>:91:                                     ; preds = %62
  br label %114, !dbg !1608

; <label>:92:                                     ; preds = %59
  %93 = load %struct.pkginfo*, %struct.pkginfo** %11, align 8, !dbg !1609
  %94 = call i8* @pkg_name(%struct.pkginfo* %93, i32 3), !dbg !1611
  call void (i32, i8*, ...) @debug(i32 256, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.47, i32 0, i32 0), i8* %94), !dbg !1612
  %95 = load %struct.pkginfo*, %struct.pkginfo** %11, align 8, !dbg !1613
  %96 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %95, i32 0, i32 9, !dbg !1615
  %97 = load %struct.deppossi*, %struct.deppossi** %17, align 8, !dbg !1616
  %98 = call zeroext i1 @versionsatisfied(%struct.pkgbin* %96, %struct.deppossi* %97), !dbg !1617
  br i1 %98, label %113, label %99, !dbg !1618

; <label>:99:                                     ; preds = %92
  %100 = load %struct.varbuf*, %struct.varbuf** %19, align 8, !dbg !1619
  %101 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.48, i32 0, i32 0)) #8, !dbg !1621
  %102 = load %struct.pkginfo*, %struct.pkginfo** %11, align 8, !dbg !1622
  %103 = call i8* @pkg_name(%struct.pkginfo* %102, i32 1), !dbg !1623
  %104 = load %struct.pkginfo*, %struct.pkginfo** %11, align 8, !dbg !1624
  %105 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %104, i32 0, i32 9, !dbg !1625
  %106 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %105, i32 0, i32 11, !dbg !1626
  %107 = call i8* @versiondescribe(%struct.dpkg_version* %106, i32 1), !dbg !1627
  %108 = call i32 (%struct.varbuf*, i8*, ...) @varbuf_printf(%struct.varbuf* %100, i8* %101, i8* %103, i8* %107), !dbg !1628
  %109 = call zeroext i1 @in_force(i32 8192), !dbg !1630
  br i1 %109, label %110, label %112, !dbg !1632

; <label>:110:                                    ; preds = %99
  %111 = call i32 @found_forced_on(i32 4), !dbg !1633
  store i32 %111, i32* %20, align 4, !dbg !1634
  br label %112, !dbg !1635

; <label>:112:                                    ; preds = %110, %99
  call void (i32, i8*, ...) @debug(i32 256, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.46, i32 0, i32 0)), !dbg !1636
  br label %267, !dbg !1637

; <label>:113:                                    ; preds = %92
  br label %114

; <label>:114:                                    ; preds = %113, %91
  br label %115, !dbg !1638

; <label>:115:                                    ; preds = %114, %56
  %116 = load %struct.pkginfo*, %struct.pkginfo** %11, align 8, !dbg !1639
  %117 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %116, i32 0, i32 4, !dbg !1641
  %118 = load i32, i32* %117, align 8, !dbg !1641
  %119 = icmp eq i32 %118, 7, !dbg !1642
  br i1 %119, label %125, label %120, !dbg !1643

; <label>:120:                                    ; preds = %115
  %121 = load %struct.pkginfo*, %struct.pkginfo** %11, align 8, !dbg !1644
  %122 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %121, i32 0, i32 4, !dbg !1645
  %123 = load i32, i32* %122, align 8, !dbg !1645
  %124 = icmp eq i32 %123, 6, !dbg !1646
  br i1 %124, label %125, label %126, !dbg !1647

; <label>:125:                                    ; preds = %120, %115
  call void (i32, i8*, ...) @debug(i32 256, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.49, i32 0, i32 0)), !dbg !1649
  store i32 3, i32* %10, align 4, !dbg !1651
  br label %273, !dbg !1651

; <label>:126:                                    ; preds = %120
  %127 = load %struct.pkginfo*, %struct.pkginfo** %11, align 8, !dbg !1652
  %128 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %127, i32 0, i32 4, !dbg !1654
  %129 = load i32, i32* %128, align 8, !dbg !1654
  %130 = icmp eq i32 %129, 5, !dbg !1655
  br i1 %130, label %131, label %192, !dbg !1656

; <label>:131:                                    ; preds = %126
  %132 = load %struct.pkginfo*, %struct.pkginfo** %11, align 8, !dbg !1657
  %133 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %132, i32 0, i32 13, !dbg !1660
  %134 = getelementptr inbounds %struct.anon, %struct.anon* %133, i32 0, i32 0, !dbg !1661
  %135 = load %struct.trigaw*, %struct.trigaw** %134, align 8, !dbg !1661
  %136 = icmp eq %struct.trigaw* %135, null, !dbg !1662
  br i1 %136, label %137, label %142, !dbg !1663

; <label>:137:                                    ; preds = %131
  %138 = load %struct.pkginfo*, %struct.pkginfo** %11, align 8, !dbg !1664
  %139 = call i8* @pkg_name(%struct.pkginfo* %138, i32 3), !dbg !1665
  %140 = load %struct.pkginfo*, %struct.pkginfo** %11, align 8, !dbg !1666
  %141 = call i8* @pkg_status_name(%struct.pkginfo* %140), !dbg !1667
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i32 448, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.deppossi_ok_found, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.50, i32 0, i32 0), i8* %139, i8* %141) #9, !dbg !1669
  unreachable, !dbg !1671

; <label>:142:                                    ; preds = %131
  %143 = load %struct.pkginfo*, %struct.pkginfo** %13, align 8, !dbg !1672
  %144 = icmp ne %struct.pkginfo* %143, null, !dbg !1672
  br i1 %144, label %160, label %145, !dbg !1674

; <label>:145:                                    ; preds = %142
  %146 = load i32, i32* @f_triggers, align 4, !dbg !1675
  %147 = icmp ne i32 %146, 0, !dbg !1675
  br i1 %147, label %181, label %148, !dbg !1676

; <label>:148:                                    ; preds = %145
  %149 = load %struct.pkginfo*, %struct.pkginfo** %11, align 8, !dbg !1677
  %150 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %149, i32 0, i32 11, !dbg !1678
  %151 = load %struct.perpackagestate*, %struct.perpackagestate** %150, align 8, !dbg !1678
  %152 = icmp ne %struct.perpackagestate* %151, null, !dbg !1677
  br i1 %152, label %153, label %160, !dbg !1679

; <label>:153:                                    ; preds = %148
  %154 = load %struct.pkginfo*, %struct.pkginfo** %11, align 8, !dbg !1680
  %155 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %154, i32 0, i32 11, !dbg !1681
  %156 = load %struct.perpackagestate*, %struct.perpackagestate** %155, align 8, !dbg !1681
  %157 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %156, i32 0, i32 0, !dbg !1682
  %158 = load i32, i32* %157, align 8, !dbg !1682
  %159 = icmp eq i32 %158, 2, !dbg !1683
  br i1 %159, label %181, label %160, !dbg !1684

; <label>:160:                                    ; preds = %153, %148, %142
  %161 = load %struct.deppossi*, %struct.deppossi** %14, align 8, !dbg !1686
  %162 = icmp ne %struct.deppossi* %161, null, !dbg !1686
  br i1 %162, label %163, label %174, !dbg !1689

; <label>:163:                                    ; preds = %160
  %164 = load %struct.varbuf*, %struct.varbuf** %19, align 8, !dbg !1690
  %165 = call i8* @gettext(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.51, i32 0, i32 0)) #8, !dbg !1692
  %166 = load %struct.pkginfo*, %struct.pkginfo** %11, align 8, !dbg !1693
  %167 = call i8* @pkg_name(%struct.pkginfo* %166, i32 1), !dbg !1694
  %168 = load %struct.deppossi*, %struct.deppossi** %14, align 8, !dbg !1695
  %169 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %168, i32 0, i32 1, !dbg !1696
  %170 = load %struct.pkgset*, %struct.pkgset** %169, align 8, !dbg !1696
  %171 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %170, i32 0, i32 1, !dbg !1697
  %172 = load i8*, i8** %171, align 8, !dbg !1697
  %173 = call i32 (%struct.varbuf*, i8*, ...) @varbuf_printf(%struct.varbuf* %164, i8* %165, i8* %167, i8* %172), !dbg !1698
  br label %180, !dbg !1699

; <label>:174:                                    ; preds = %160
  %175 = load %struct.varbuf*, %struct.varbuf** %19, align 8, !dbg !1700
  %176 = call i8* @gettext(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.52, i32 0, i32 0)) #8, !dbg !1702
  %177 = load %struct.pkginfo*, %struct.pkginfo** %11, align 8, !dbg !1703
  %178 = call i8* @pkg_name(%struct.pkginfo* %177, i32 1), !dbg !1704
  %179 = call i32 (%struct.varbuf*, i8*, ...) @varbuf_printf(%struct.varbuf* %175, i8* %176, i8* %178), !dbg !1705
  br label %180

; <label>:180:                                    ; preds = %174, %163
  call void (i32, i8*, ...) @debug(i32 256, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.53, i32 0, i32 0)), !dbg !1706
  br label %267, !dbg !1707

; <label>:181:                                    ; preds = %153, %145
  %182 = load %struct.pkginfo*, %struct.pkginfo** %11, align 8, !dbg !1708
  %183 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %182, i32 0, i32 13, !dbg !1709
  %184 = getelementptr inbounds %struct.anon, %struct.anon* %183, i32 0, i32 0, !dbg !1710
  %185 = load %struct.trigaw*, %struct.trigaw** %184, align 8, !dbg !1710
  %186 = getelementptr inbounds %struct.trigaw, %struct.trigaw* %185, i32 0, i32 1, !dbg !1711
  %187 = load %struct.pkginfo*, %struct.pkginfo** %186, align 8, !dbg !1711
  %188 = load %struct.pkginfo**, %struct.pkginfo*** %15, align 8, !dbg !1712
  store %struct.pkginfo* %187, %struct.pkginfo** %188, align 8, !dbg !1713
  %189 = load %struct.pkginfo**, %struct.pkginfo*** %15, align 8, !dbg !1714
  %190 = load %struct.pkginfo*, %struct.pkginfo** %189, align 8, !dbg !1715
  %191 = call i8* @pkg_name(%struct.pkginfo* %190, i32 3), !dbg !1716
  call void (i32, i8*, ...) @debug(i32 256, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.54, i32 0, i32 0), i8* %191), !dbg !1717
  store i32 1, i32* %10, align 4, !dbg !1718
  br label %273, !dbg !1718

; <label>:192:                                    ; preds = %126
  %193 = load %struct.pkginfo*, %struct.pkginfo** %11, align 8, !dbg !1719
  %194 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %193, i32 0, i32 11, !dbg !1721
  %195 = load %struct.perpackagestate*, %struct.perpackagestate** %194, align 8, !dbg !1721
  %196 = icmp ne %struct.perpackagestate* %195, null, !dbg !1719
  br i1 %196, label %197, label %205, !dbg !1722

; <label>:197:                                    ; preds = %192
  %198 = load %struct.pkginfo*, %struct.pkginfo** %11, align 8, !dbg !1723
  %199 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %198, i32 0, i32 11, !dbg !1724
  %200 = load %struct.perpackagestate*, %struct.perpackagestate** %199, align 8, !dbg !1724
  %201 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %200, i32 0, i32 0, !dbg !1725
  %202 = load i32, i32* %201, align 8, !dbg !1725
  %203 = icmp eq i32 %202, 2, !dbg !1726
  br i1 %203, label %204, label %205, !dbg !1727

; <label>:204:                                    ; preds = %197
  call void (i32, i8*, ...) @debug(i32 256, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.55, i32 0, i32 0)), !dbg !1728
  store i32 1, i32* %10, align 4, !dbg !1730
  br label %273, !dbg !1730

; <label>:205:                                    ; preds = %197, %192
  %206 = load %struct.pkginfo*, %struct.pkginfo** %13, align 8, !dbg !1731
  %207 = icmp ne %struct.pkginfo* %206, null, !dbg !1731
  br i1 %207, label %225, label %208, !dbg !1733

; <label>:208:                                    ; preds = %205
  %209 = call zeroext i1 @in_force(i32 1024), !dbg !1734
  br i1 %209, label %210, label %225, !dbg !1736

; <label>:210:                                    ; preds = %208
  %211 = load %struct.pkginfo*, %struct.pkginfo** %11, align 8, !dbg !1737
  %212 = call zeroext i1 @skip_due_to_hold(%struct.pkginfo* %211), !dbg !1738
  br i1 %212, label %225, label %213, !dbg !1739

; <label>:213:                                    ; preds = %210
  %214 = load %struct.pkginfo*, %struct.pkginfo** %11, align 8, !dbg !1740
  %215 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %214, i32 0, i32 4, !dbg !1741
  %216 = load i32, i32* %215, align 8, !dbg !1741
  %217 = icmp eq i32 %216, 4, !dbg !1742
  br i1 %217, label %225, label %218, !dbg !1743

; <label>:218:                                    ; preds = %213
  %219 = call i8* @gettext(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.56, i32 0, i32 0)) #8, !dbg !1745
  %220 = load %struct.pkginfo*, %struct.pkginfo** %11, align 8, !dbg !1747
  %221 = call i8* @pkg_name(%struct.pkginfo* %220, i32 1), !dbg !1748
  %222 = load %struct.pkginfo*, %struct.pkginfo** %12, align 8, !dbg !1749
  %223 = call i8* @pkg_name(%struct.pkginfo* %222, i32 1), !dbg !1750
  call void (i8*, ...) @notice(i8* %219, i8* %221, i8* %223), !dbg !1751
  %224 = load %struct.pkginfo*, %struct.pkginfo** %11, align 8, !dbg !1753
  call void @enqueue_package(%struct.pkginfo* %224), !dbg !1754
  store i32 0, i32* @sincenothing, align 4, !dbg !1755
  store i32 1, i32* %10, align 4, !dbg !1756
  br label %273, !dbg !1756

; <label>:225:                                    ; preds = %213, %210, %208, %205
  %226 = load %struct.deppossi*, %struct.deppossi** %14, align 8, !dbg !1757
  %227 = icmp ne %struct.deppossi* %226, null, !dbg !1757
  br i1 %227, label %228, label %239, !dbg !1760

; <label>:228:                                    ; preds = %225
  %229 = load %struct.varbuf*, %struct.varbuf** %19, align 8, !dbg !1761
  %230 = call i8* @gettext(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.57, i32 0, i32 0)) #8, !dbg !1763
  %231 = load %struct.pkginfo*, %struct.pkginfo** %11, align 8, !dbg !1764
  %232 = call i8* @pkg_name(%struct.pkginfo* %231, i32 1), !dbg !1765
  %233 = load %struct.deppossi*, %struct.deppossi** %14, align 8, !dbg !1766
  %234 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %233, i32 0, i32 1, !dbg !1767
  %235 = load %struct.pkgset*, %struct.pkgset** %234, align 8, !dbg !1767
  %236 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %235, i32 0, i32 1, !dbg !1768
  %237 = load i8*, i8** %236, align 8, !dbg !1768
  %238 = call i32 (%struct.varbuf*, i8*, ...) @varbuf_printf(%struct.varbuf* %229, i8* %230, i8* %232, i8* %237), !dbg !1769
  br label %245, !dbg !1770

; <label>:239:                                    ; preds = %225
  %240 = load %struct.varbuf*, %struct.varbuf** %19, align 8, !dbg !1771
  %241 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.58, i32 0, i32 0)) #8, !dbg !1773
  %242 = load %struct.pkginfo*, %struct.pkginfo** %11, align 8, !dbg !1774
  %243 = call i8* @pkg_name(%struct.pkginfo* %242, i32 1), !dbg !1775
  %244 = call i32 (%struct.varbuf*, i8*, ...) @varbuf_printf(%struct.varbuf* %240, i8* %241, i8* %243), !dbg !1776
  br label %245

; <label>:245:                                    ; preds = %239, %228
  call void (i32, i8*, ...) @debug(i32 256, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.59, i32 0, i32 0)), !dbg !1778
  br label %267, !dbg !1779

; <label>:246:                                    ; preds = %52
  %247 = load %struct.deppossi*, %struct.deppossi** %14, align 8, !dbg !1780
  %248 = icmp ne %struct.deppossi* %247, null, !dbg !1780
  br i1 %248, label %249, label %260, !dbg !1782

; <label>:249:                                    ; preds = %246
  %250 = load %struct.varbuf*, %struct.varbuf** %19, align 8, !dbg !1783
  %251 = call i8* @gettext(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.60, i32 0, i32 0)) #8, !dbg !1785
  %252 = load %struct.pkginfo*, %struct.pkginfo** %11, align 8, !dbg !1786
  %253 = call i8* @pkg_name(%struct.pkginfo* %252, i32 1), !dbg !1787
  %254 = load %struct.deppossi*, %struct.deppossi** %14, align 8, !dbg !1788
  %255 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %254, i32 0, i32 1, !dbg !1789
  %256 = load %struct.pkgset*, %struct.pkgset** %255, align 8, !dbg !1789
  %257 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %256, i32 0, i32 1, !dbg !1790
  %258 = load i8*, i8** %257, align 8, !dbg !1790
  %259 = call i32 (%struct.varbuf*, i8*, ...) @varbuf_printf(%struct.varbuf* %250, i8* %251, i8* %253, i8* %258), !dbg !1791
  br label %266, !dbg !1792

; <label>:260:                                    ; preds = %246
  %261 = load %struct.varbuf*, %struct.varbuf** %19, align 8, !dbg !1793
  %262 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.61, i32 0, i32 0)) #8, !dbg !1795
  %263 = load %struct.pkginfo*, %struct.pkginfo** %11, align 8, !dbg !1796
  %264 = call i8* @pkg_name(%struct.pkginfo* %263, i32 1), !dbg !1797
  %265 = call i32 (%struct.varbuf*, i8*, ...) @varbuf_printf(%struct.varbuf* %261, i8* %262, i8* %264), !dbg !1798
  br label %266

; <label>:266:                                    ; preds = %260, %249
  call void (i32, i8*, ...) @debug(i32 256, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.62, i32 0, i32 0)), !dbg !1800
  br label %267, !dbg !1801

; <label>:267:                                    ; preds = %266, %245, %180, %112, %90
  %268 = load i32, i32* %20, align 4, !dbg !1802
  call void (i32, i8*, ...) @debug(i32 256, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.63, i32 0, i32 0), i32 %268), !dbg !1803
  %269 = load i32*, i32** %18, align 8, !dbg !1804
  %270 = load i32, i32* %269, align 4, !dbg !1805
  %271 = add nsw i32 %270, 1, !dbg !1805
  store i32 %271, i32* %269, align 4, !dbg !1805
  %272 = load i32, i32* %20, align 4, !dbg !1806
  store i32 %272, i32* %10, align 4, !dbg !1807
  br label %273, !dbg !1807

; <label>:273:                                    ; preds = %267, %218, %204, %181, %125, %48, %23
  %274 = load i32, i32* %10, align 4, !dbg !1808
  ret i32 %274, !dbg !1808
}

declare void @deppossi_pkg_iter_free(%struct.deppossi_pkg_iterator*) #2

declare zeroext i1 @deparchsatisfied(%struct.pkgbin*, %struct.dpkg_arch*, %struct.deppossi*) #2

; Function Attrs: nounwind uwtable
define internal i32 @found_forced_on(i32) #0 !dbg !1809 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1812, metadata !473), !dbg !1813
  %4 = load i32, i32* @dependtry, align 4, !dbg !1814
  %5 = load i32, i32* %3, align 4, !dbg !1816
  %6 = icmp uge i32 %4, %5, !dbg !1817
  br i1 %6, label %7, label %8, !dbg !1818

; <label>:7:                                      ; preds = %1
  store i32 2, i32* %2, align 4, !dbg !1819
  br label %9, !dbg !1819

; <label>:8:                                      ; preds = %1
  store i32 1, i32* %2, align 4, !dbg !1820
  br label %9, !dbg !1820

; <label>:9:                                      ; preds = %8, %7
  %10 = load i32, i32* %2, align 4, !dbg !1821
  ret i32 %10, !dbg !1821
}

declare void @varbuf_add_buf(%struct.varbuf*, i8*, i64) #2

declare void @varbuf_add_pkgbin_name(%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #7

declare void @varbufdependency(%struct.varbuf*, %struct.dependency*) #2

declare void @varbuf_end_str(%struct.varbuf*) #2

declare void @varbuf_destroy(%struct.varbuf*) #2

declare %struct.pkg_hash_iter* @pkg_hash_iter_new() #2

declare %struct.pkginfo* @pkg_hash_iter_next_pkg(%struct.pkg_hash_iter*) #2

declare void @pkg_hash_iter_free(%struct.pkg_hash_iter*) #2

declare %struct.pkginfo* @dpkg_options_parse_pkgname(%struct.cmdinfo*, i8*) #2

declare zeroext i1 @str_match_end(i8*, i8*) #2

declare void @trigproc_populate_deferred() #2

; Function Attrs: nounwind uwtable
define internal void @breaks_check_one(%struct.varbuf*, i32*, %struct.deppossi*, %struct.pkginfo*, %struct.pkginfo*, %struct.deppossi*) #0 !dbg !1822 {
  %7 = alloca %struct.varbuf*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.deppossi*, align 8
  %10 = alloca %struct.pkginfo*, align 8
  %11 = alloca %struct.pkginfo*, align 8
  %12 = alloca %struct.deppossi*, align 8
  %13 = alloca %struct.varbuf, align 8
  store %struct.varbuf* %0, %struct.varbuf** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %7, metadata !1825, metadata !473), !dbg !1826
  store i32* %1, i32** %8, align 8
  call void @llvm.dbg.declare(metadata i32** %8, metadata !1827, metadata !473), !dbg !1828
  store %struct.deppossi* %2, %struct.deppossi** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.deppossi** %9, metadata !1829, metadata !473), !dbg !1830
  store %struct.pkginfo* %3, %struct.pkginfo** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %10, metadata !1831, metadata !473), !dbg !1832
  store %struct.pkginfo* %4, %struct.pkginfo** %11, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %11, metadata !1833, metadata !473), !dbg !1834
  store %struct.deppossi* %5, %struct.deppossi** %12, align 8
  call void @llvm.dbg.declare(metadata %struct.deppossi** %12, metadata !1835, metadata !473), !dbg !1836
  call void @llvm.dbg.declare(metadata %struct.varbuf* %13, metadata !1837, metadata !473), !dbg !1838
  %14 = bitcast %struct.varbuf* %13 to i8*, !dbg !1838
  call void @llvm.memset.p0i8.i64(i8* %14, i8 0, i64 24, i32 8, i1 false), !dbg !1838
  %15 = load %struct.pkginfo*, %struct.pkginfo** %11, align 8, !dbg !1839
  %16 = call i8* @pkg_name(%struct.pkginfo* %15, i32 3), !dbg !1840
  %17 = load %struct.deppossi*, %struct.deppossi** %12, align 8, !dbg !1841
  %18 = icmp ne %struct.deppossi* %17, null, !dbg !1841
  br i1 %18, label %19, label %25, !dbg !1841

; <label>:19:                                     ; preds = %6
  %20 = load %struct.deppossi*, %struct.deppossi** %12, align 8, !dbg !1842
  %21 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %20, i32 0, i32 1, !dbg !1844
  %22 = load %struct.pkgset*, %struct.pkgset** %21, align 8, !dbg !1844
  %23 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %22, i32 0, i32 1, !dbg !1845
  %24 = load i8*, i8** %23, align 8, !dbg !1845
  br label %26, !dbg !1846

; <label>:25:                                     ; preds = %6
  br label %26, !dbg !1847

; <label>:26:                                     ; preds = %25, %19
  %27 = phi i8* [ %24, %19 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), %25 ], !dbg !1849
  call void (i32, i8*, ...) @debug(i32 256, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i32 0, i32 0), i8* %16, i8* %27), !dbg !1851
  %28 = load %struct.pkginfo*, %struct.pkginfo** %11, align 8, !dbg !1852
  %29 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %28, i32 0, i32 4, !dbg !1854
  %30 = load i32, i32* %29, align 8, !dbg !1854
  %31 = icmp eq i32 %30, 0, !dbg !1855
  br i1 %31, label %37, label %32, !dbg !1856

; <label>:32:                                     ; preds = %26
  %33 = load %struct.pkginfo*, %struct.pkginfo** %11, align 8, !dbg !1857
  %34 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %33, i32 0, i32 4, !dbg !1858
  %35 = load i32, i32* %34, align 8, !dbg !1858
  %36 = icmp eq i32 %35, 1, !dbg !1859
  br i1 %36, label %37, label %38, !dbg !1860

; <label>:37:                                     ; preds = %32, %26
  br label %141, !dbg !1861

; <label>:38:                                     ; preds = %32
  %39 = load %struct.pkginfo*, %struct.pkginfo** %10, align 8, !dbg !1862
  %40 = load %struct.pkginfo*, %struct.pkginfo** %11, align 8, !dbg !1864
  %41 = icmp eq %struct.pkginfo* %39, %40, !dbg !1865
  br i1 %41, label %42, label %43, !dbg !1866

; <label>:42:                                     ; preds = %38
  br label %141, !dbg !1867

; <label>:43:                                     ; preds = %38
  %44 = load %struct.pkginfo*, %struct.pkginfo** %10, align 8, !dbg !1869
  %45 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %44, i32 0, i32 9, !dbg !1871
  %46 = load %struct.deppossi*, %struct.deppossi** %9, align 8, !dbg !1872
  %47 = call zeroext i1 @versionsatisfied(%struct.pkgbin* %45, %struct.deppossi* %46), !dbg !1873
  br i1 %47, label %49, label %48, !dbg !1874

; <label>:48:                                     ; preds = %43
  br label %141, !dbg !1875

; <label>:49:                                     ; preds = %43
  %50 = load %struct.pkginfo*, %struct.pkginfo** %10, align 8, !dbg !1877
  %51 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %50, i32 0, i32 9, !dbg !1879
  %52 = load %struct.deppossi*, %struct.deppossi** %9, align 8, !dbg !1880
  %53 = call zeroext i1 @archsatisfied(%struct.pkgbin* %51, %struct.deppossi* %52), !dbg !1881
  br i1 %53, label %55, label %54, !dbg !1882

; <label>:54:                                     ; preds = %49
  br label %141, !dbg !1883

; <label>:55:                                     ; preds = %49
  %56 = load %struct.pkginfo*, %struct.pkginfo** %11, align 8, !dbg !1884
  %57 = call zeroext i1 @ignore_depends(%struct.pkginfo* %56), !dbg !1886
  br i1 %57, label %58, label %59, !dbg !1887

; <label>:58:                                     ; preds = %55
  br label %141, !dbg !1888

; <label>:59:                                     ; preds = %55
  %60 = load %struct.deppossi*, %struct.deppossi** %12, align 8, !dbg !1890
  %61 = icmp ne %struct.deppossi* %60, null, !dbg !1890
  br i1 %61, label %62, label %69, !dbg !1892

; <label>:62:                                     ; preds = %59
  %63 = load %struct.deppossi*, %struct.deppossi** %12, align 8, !dbg !1893
  %64 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %63, i32 0, i32 1, !dbg !1895
  %65 = load %struct.pkgset*, %struct.pkgset** %64, align 8, !dbg !1895
  %66 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %65, i32 0, i32 2, !dbg !1896
  %67 = call zeroext i1 @ignore_depends(%struct.pkginfo* %66), !dbg !1897
  br i1 %67, label %68, label %69, !dbg !1898

; <label>:68:                                     ; preds = %62
  br label %141, !dbg !1899

; <label>:69:                                     ; preds = %62, %59
  %70 = load %struct.deppossi*, %struct.deppossi** %12, align 8, !dbg !1900
  %71 = icmp ne %struct.deppossi* %70, null, !dbg !1900
  br i1 %71, label %72, label %77, !dbg !1902

; <label>:72:                                     ; preds = %69
  %73 = load %struct.deppossi*, %struct.deppossi** %9, align 8, !dbg !1903
  %74 = load %struct.deppossi*, %struct.deppossi** %12, align 8, !dbg !1905
  %75 = call zeroext i1 @pkg_virtual_deppossi_satisfied(%struct.deppossi* %73, %struct.deppossi* %74), !dbg !1906
  br i1 %75, label %77, label %76, !dbg !1907

; <label>:76:                                     ; preds = %72
  br label %141, !dbg !1908

; <label>:77:                                     ; preds = %72, %69
  %78 = load %struct.deppossi*, %struct.deppossi** %9, align 8, !dbg !1909
  %79 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %78, i32 0, i32 0, !dbg !1910
  %80 = load %struct.dependency*, %struct.dependency** %79, align 8, !dbg !1910
  call void @varbufdependency(%struct.varbuf* %13, %struct.dependency* %80), !dbg !1911
  call void @varbuf_end_str(%struct.varbuf* %13), !dbg !1912
  %81 = load %struct.varbuf*, %struct.varbuf** %7, align 8, !dbg !1913
  %82 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.37, i32 0, i32 0)) #8, !dbg !1914
  %83 = load %struct.pkginfo*, %struct.pkginfo** %11, align 8, !dbg !1915
  %84 = call i8* @pkg_name(%struct.pkginfo* %83, i32 1), !dbg !1916
  %85 = load %struct.pkginfo*, %struct.pkginfo** %11, align 8, !dbg !1917
  %86 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %85, i32 0, i32 9, !dbg !1918
  %87 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %86, i32 0, i32 11, !dbg !1919
  %88 = call i8* @versiondescribe(%struct.dpkg_version* %87, i32 1), !dbg !1920
  %89 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %13, i32 0, i32 2, !dbg !1921
  %90 = load i8*, i8** %89, align 8, !dbg !1921
  %91 = load %struct.pkginfo*, %struct.pkginfo** %11, align 8, !dbg !1922
  %92 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %91, i32 0, i32 4, !dbg !1923
  %93 = load i32, i32* %92, align 8, !dbg !1923
  %94 = zext i32 %93 to i64, !dbg !1924
  %95 = getelementptr inbounds [0 x i8*], [0 x i8*]* @statusstrings, i64 0, i64 %94, !dbg !1924
  %96 = load i8*, i8** %95, align 8, !dbg !1924
  %97 = call i8* @gettext(i8* %96) #8, !dbg !1925
  %98 = call i32 (%struct.varbuf*, i8*, ...) @varbuf_printf(%struct.varbuf* %81, i8* %82, i8* %84, i8* %88, i8* %90, i8* %97), !dbg !1926
  call void @varbuf_destroy(%struct.varbuf* %13), !dbg !1927
  %99 = load %struct.deppossi*, %struct.deppossi** %12, align 8, !dbg !1928
  %100 = icmp ne %struct.deppossi* %99, null, !dbg !1928
  br i1 %100, label %101, label %116, !dbg !1930

; <label>:101:                                    ; preds = %77
  %102 = load %struct.varbuf*, %struct.varbuf** %7, align 8, !dbg !1931
  %103 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.38, i32 0, i32 0)) #8, !dbg !1933
  %104 = load %struct.pkginfo*, %struct.pkginfo** %10, align 8, !dbg !1934
  %105 = call i8* @pkg_name(%struct.pkginfo* %104, i32 1), !dbg !1935
  %106 = load %struct.pkginfo*, %struct.pkginfo** %10, align 8, !dbg !1936
  %107 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %106, i32 0, i32 9, !dbg !1937
  %108 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %107, i32 0, i32 11, !dbg !1938
  %109 = call i8* @versiondescribe(%struct.dpkg_version* %108, i32 1), !dbg !1939
  %110 = load %struct.deppossi*, %struct.deppossi** %12, align 8, !dbg !1940
  %111 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %110, i32 0, i32 1, !dbg !1941
  %112 = load %struct.pkgset*, %struct.pkgset** %111, align 8, !dbg !1941
  %113 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %112, i32 0, i32 1, !dbg !1942
  %114 = load i8*, i8** %113, align 8, !dbg !1942
  %115 = call i32 (%struct.varbuf*, i8*, ...) @varbuf_printf(%struct.varbuf* %102, i8* %103, i8* %105, i8* %109, i8* %114), !dbg !1943
  br label %135, !dbg !1945

; <label>:116:                                    ; preds = %77
  %117 = load %struct.deppossi*, %struct.deppossi** %9, align 8, !dbg !1946
  %118 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %117, i32 0, i32 7, !dbg !1949
  %119 = load i32, i32* %118, align 8, !dbg !1949
  %120 = icmp ne i32 %119, 0, !dbg !1950
  br i1 %120, label %121, label %134, !dbg !1946

; <label>:121:                                    ; preds = %116
  %122 = load %struct.varbuf*, %struct.varbuf** %7, align 8, !dbg !1951
  %123 = call i8* @gettext(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.39, i32 0, i32 0)) #8, !dbg !1953
  %124 = load %struct.pkginfo*, %struct.pkginfo** %10, align 8, !dbg !1954
  %125 = call i8* @pkg_name(%struct.pkginfo* %124, i32 1), !dbg !1955
  %126 = load %struct.pkginfo*, %struct.pkginfo** %10, align 8, !dbg !1956
  %127 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %126, i32 0, i32 9, !dbg !1957
  %128 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %127, i32 0, i32 11, !dbg !1958
  %129 = call i8* @versiondescribe(%struct.dpkg_version* %128, i32 1), !dbg !1959
  %130 = call i32 (%struct.varbuf*, i8*, ...) @varbuf_printf(%struct.varbuf* %122, i8* %123, i8* %125, i8* %129), !dbg !1960
  %131 = call zeroext i1 @in_force(i32 8192), !dbg !1962
  br i1 %131, label %132, label %133, !dbg !1964

; <label>:132:                                    ; preds = %121
  br label %141, !dbg !1965

; <label>:133:                                    ; preds = %121
  br label %134, !dbg !1966

; <label>:134:                                    ; preds = %133, %116
  br label %135

; <label>:135:                                    ; preds = %134, %101
  %136 = load %struct.deppossi*, %struct.deppossi** %9, align 8, !dbg !1967
  %137 = call zeroext i1 @force_breaks(%struct.deppossi* %136), !dbg !1969
  br i1 %137, label %138, label %139, !dbg !1970

; <label>:138:                                    ; preds = %135
  br label %141, !dbg !1971

; <label>:139:                                    ; preds = %135
  %140 = load i32*, i32** %8, align 8, !dbg !1973
  store i32 0, i32* %140, align 4, !dbg !1974
  br label %141, !dbg !1975

; <label>:141:                                    ; preds = %139, %138, %132, %76, %68, %58, %54, %48, %42, %37
  ret void, !dbg !1976
}

declare zeroext i1 @versionsatisfied(%struct.pkgbin*, %struct.deppossi*) #2

declare zeroext i1 @archsatisfied(%struct.pkgbin*, %struct.deppossi*) #2

declare zeroext i1 @ignore_depends(%struct.pkginfo*) #2

declare zeroext i1 @pkg_virtual_deppossi_satisfied(%struct.deppossi*, %struct.deppossi*) #2

declare i32 @varbuf_printf(%struct.varbuf*, i8*, ...) #2

declare i8* @versiondescribe(%struct.dpkg_version*, i32) #2

declare zeroext i1 @force_breaks(%struct.deppossi*) #2

declare zeroext i1 @skip_due_to_hold(%struct.pkginfo*) #2

declare void @notice(i8*, ...) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind returns_twice "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { noreturn }
attributes #10 = { nounwind returns_twice }
attributes #11 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!465, !466}
!llvm.ident = !{!467}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !248, globals: !251)
!1 = !DIFile(filename: "[inter]src--packages.o.i", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!2 = !{!3, !12, !24, !35, !44, !52, !56, !66, !76, !82, !89, !94, !107, !117, !148, !193, !199, !215, !221, !226, !231, !238, !243}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dependtry", file: !4, line: 243, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "main.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!5 = !{!6, !7, !8, !9, !10, !11}
!6 = !DIEnumerator(name: "DEPEND_TRY_NORMAL", value: 1)
!7 = !DIEnumerator(name: "DEPEND_TRY_CYCLES", value: 2)
!8 = !DIEnumerator(name: "DEPEND_TRY_TRIGGERS", value: 3)
!9 = !DIEnumerator(name: "DEPEND_TRY_FORCE_DEPENDS_VERSION", value: 4)
!10 = !DIEnumerator(name: "DEPEND_TRY_FORCE_DEPENDS", value: 5)
!11 = !DIEnumerator(name: "DEPEND_TRY_LAST", value: 6)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "deptype", file: !13, line: 44, size: 32, align: 32, elements: !14)
!13 = !DIFile(filename: "../lib/dpkg/dpkg-db.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!14 = !{!15, !16, !17, !18, !19, !20, !21, !22, !23}
!15 = !DIEnumerator(name: "dep_suggests", value: 0)
!16 = !DIEnumerator(name: "dep_recommends", value: 1)
!17 = !DIEnumerator(name: "dep_depends", value: 2)
!18 = !DIEnumerator(name: "dep_predepends", value: 3)
!19 = !DIEnumerator(name: "dep_breaks", value: 4)
!20 = !DIEnumerator(name: "dep_conflicts", value: 5)
!21 = !DIEnumerator(name: "dep_provides", value: 6)
!22 = !DIEnumerator(name: "dep_replaces", value: 7)
!23 = !DIEnumerator(name: "dep_enhances", value: 8)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_arch_type", file: !25, line: 37, size: 32, align: 32, elements: !26)
!25 = !DIFile(filename: "../lib/dpkg/arch.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!26 = !{!27, !28, !29, !30, !31, !32, !33, !34}
!27 = !DIEnumerator(name: "DPKG_ARCH_NONE", value: 0)
!28 = !DIEnumerator(name: "DPKG_ARCH_EMPTY", value: 1)
!29 = !DIEnumerator(name: "DPKG_ARCH_ILLEGAL", value: 2)
!30 = !DIEnumerator(name: "DPKG_ARCH_WILDCARD", value: 3)
!31 = !DIEnumerator(name: "DPKG_ARCH_ALL", value: 4)
!32 = !DIEnumerator(name: "DPKG_ARCH_NATIVE", value: 5)
!33 = !DIEnumerator(name: "DPKG_ARCH_FOREIGN", value: 6)
!34 = !DIEnumerator(name: "DPKG_ARCH_UNKNOWN", value: 7)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_relation", file: !36, line: 61, size: 32, align: 32, elements: !37)
!36 = !DIFile(filename: "../lib/dpkg/version.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!37 = !{!38, !39, !40, !41, !42, !43}
!38 = !DIEnumerator(name: "DPKG_RELATION_NONE", value: 0)
!39 = !DIEnumerator(name: "DPKG_RELATION_EQ", value: 1)
!40 = !DIEnumerator(name: "DPKG_RELATION_LT", value: 2)
!41 = !DIEnumerator(name: "DPKG_RELATION_LE", value: 3)
!42 = !DIEnumerator(name: "DPKG_RELATION_GT", value: 4)
!43 = !DIEnumerator(name: "DPKG_RELATION_GE", value: 5)
!44 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgwant", file: !13, line: 153, size: 32, align: 32, elements: !45)
!45 = !{!46, !47, !48, !49, !50, !51}
!46 = !DIEnumerator(name: "PKG_WANT_UNKNOWN", value: 0)
!47 = !DIEnumerator(name: "PKG_WANT_INSTALL", value: 1)
!48 = !DIEnumerator(name: "PKG_WANT_HOLD", value: 2)
!49 = !DIEnumerator(name: "PKG_WANT_DEINSTALL", value: 3)
!50 = !DIEnumerator(name: "PKG_WANT_PURGE", value: 4)
!51 = !DIEnumerator(name: "PKG_WANT_SENTINEL", value: 5)
!52 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgeflag", file: !13, line: 163, size: 32, align: 32, elements: !53)
!53 = !{!54, !55}
!54 = !DIEnumerator(name: "PKG_EFLAG_OK", value: 0)
!55 = !DIEnumerator(name: "PKG_EFLAG_REINSTREQ", value: 1)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgstatus", file: !13, line: 168, size: 32, align: 32, elements: !57)
!57 = !{!58, !59, !60, !61, !62, !63, !64, !65}
!58 = !DIEnumerator(name: "PKG_STAT_NOTINSTALLED", value: 0)
!59 = !DIEnumerator(name: "PKG_STAT_CONFIGFILES", value: 1)
!60 = !DIEnumerator(name: "PKG_STAT_HALFINSTALLED", value: 2)
!61 = !DIEnumerator(name: "PKG_STAT_UNPACKED", value: 3)
!62 = !DIEnumerator(name: "PKG_STAT_HALFCONFIGURED", value: 4)
!63 = !DIEnumerator(name: "PKG_STAT_TRIGGERSAWAITED", value: 5)
!64 = !DIEnumerator(name: "PKG_STAT_TRIGGERSPENDING", value: 6)
!65 = !DIEnumerator(name: "PKG_STAT_INSTALLED", value: 7)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgpriority", file: !13, line: 179, size: 32, align: 32, elements: !67)
!67 = !{!68, !69, !70, !71, !72, !73, !74, !75}
!68 = !DIEnumerator(name: "PKG_PRIO_REQUIRED", value: 0)
!69 = !DIEnumerator(name: "PKG_PRIO_IMPORTANT", value: 1)
!70 = !DIEnumerator(name: "PKG_PRIO_STANDARD", value: 2)
!71 = !DIEnumerator(name: "PKG_PRIO_OPTIONAL", value: 3)
!72 = !DIEnumerator(name: "PKG_PRIO_EXTRA", value: 4)
!73 = !DIEnumerator(name: "PKG_PRIO_OTHER", value: 5)
!74 = !DIEnumerator(name: "PKG_PRIO_UNKNOWN", value: 6)
!75 = !DIEnumerator(name: "PKG_PRIO_UNSET", value: -1)
!76 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgmultiarch", file: !13, line: 95, size: 32, align: 32, elements: !77)
!77 = !{!78, !79, !80, !81}
!78 = !DIEnumerator(name: "PKG_MULTIARCH_NO", value: 0)
!79 = !DIEnumerator(name: "PKG_MULTIARCH_SAME", value: 1)
!80 = !DIEnumerator(name: "PKG_MULTIARCH_ALLOWED", value: 2)
!81 = !DIEnumerator(name: "PKG_MULTIARCH_FOREIGN", value: 3)
!82 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkg_istobe", file: !4, line: 34, size: 32, align: 32, elements: !83)
!83 = !{!84, !85, !86, !87, !88}
!84 = !DIEnumerator(name: "PKG_ISTOBE_NORMAL", value: 0)
!85 = !DIEnumerator(name: "PKG_ISTOBE_REMOVE", value: 1)
!86 = !DIEnumerator(name: "PKG_ISTOBE_INSTALLNEW", value: 2)
!87 = !DIEnumerator(name: "PKG_ISTOBE_DECONFIGURE", value: 3)
!88 = !DIEnumerator(name: "PKG_ISTOBE_PREINSTALL", value: 4)
!89 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkg_cycle_color", file: !4, line: 47, size: 32, align: 32, elements: !90)
!90 = !{!91, !92, !93}
!91 = !DIEnumerator(name: "PKG_CYCLE_WHITE", value: 0)
!92 = !DIEnumerator(name: "PKG_CYCLE_GRAY", value: 1)
!93 = !DIEnumerator(name: "PKG_CYCLE_BLACK", value: 2)
!94 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fsys_namenode_flags", file: !95, line: 61, size: 32, align: 32, elements: !96)
!95 = !DIFile(filename: "../lib/dpkg/fsys.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!96 = !{!97, !98, !99, !100, !101, !102, !103, !104, !105, !106}
!97 = !DIEnumerator(name: "FNNF_NEW_CONFF", value: 1)
!98 = !DIEnumerator(name: "FNNF_NEW_INARCHIVE", value: 2)
!99 = !DIEnumerator(name: "FNNF_OLD_CONFF", value: 4)
!100 = !DIEnumerator(name: "FNNF_OBS_CONFF", value: 8)
!101 = !DIEnumerator(name: "FNNF_ELIDE_OTHER_LISTS", value: 16)
!102 = !DIEnumerator(name: "FNNF_NO_ATOMIC_OVERWRITE", value: 32)
!103 = !DIEnumerator(name: "FNNF_PLACED_ON_DISK", value: 64)
!104 = !DIEnumerator(name: "FNNF_DEFERRED_FSYNC", value: 128)
!105 = !DIEnumerator(name: "FNNF_DEFERRED_RENAME", value: 256)
!106 = !DIEnumerator(name: "FNNF_FILTERED", value: 512)
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "modstatdb_rw", file: !13, line: 263, size: 32, align: 32, elements: !108)
!108 = !{!109, !110, !111, !112, !113, !114, !115, !116}
!109 = !DIEnumerator(name: "msdbrw_readonly", value: 0)
!110 = !DIEnumerator(name: "msdbrw_needsuperuserlockonly", value: 1)
!111 = !DIEnumerator(name: "msdbrw_writeifposs", value: 2)
!112 = !DIEnumerator(name: "msdbrw_write", value: 3)
!113 = !DIEnumerator(name: "msdbrw_needsuperuser", value: 4)
!114 = !DIEnumerator(name: "msdbrw_available_readonly", value: 256)
!115 = !DIEnumerator(name: "msdbrw_available_write", value: 512)
!116 = !DIEnumerator(name: "msdbrw_available_mask", value: 65280)
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "force_flags", file: !118, line: 28, size: 32, align: 32, elements: !119)
!118 = !DIFile(filename: "force.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!119 = !{!120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147}
!120 = !DIEnumerator(name: "FORCE_ARCHITECTURE", value: 1)
!121 = !DIEnumerator(name: "FORCE_BAD_PATH", value: 2)
!122 = !DIEnumerator(name: "FORCE_BAD_VERIFY", value: 4)
!123 = !DIEnumerator(name: "FORCE_BAD_VERSION", value: 8)
!124 = !DIEnumerator(name: "FORCE_BREAKS", value: 16)
!125 = !DIEnumerator(name: "FORCE_CONFF_ASK", value: 32)
!126 = !DIEnumerator(name: "FORCE_CONFF_DEF", value: 64)
!127 = !DIEnumerator(name: "FORCE_CONFF_MISS", value: 128)
!128 = !DIEnumerator(name: "FORCE_CONFF_NEW", value: 256)
!129 = !DIEnumerator(name: "FORCE_CONFF_OLD", value: 512)
!130 = !DIEnumerator(name: "FORCE_CONFIGURE_ANY", value: 1024)
!131 = !DIEnumerator(name: "FORCE_CONFLICTS", value: 2048)
!132 = !DIEnumerator(name: "FORCE_DEPENDS", value: 4096)
!133 = !DIEnumerator(name: "FORCE_DEPENDS_VERSION", value: 8192)
!134 = !DIEnumerator(name: "FORCE_DOWNGRADE", value: 16384)
!135 = !DIEnumerator(name: "FORCE_HOLD", value: 32768)
!136 = !DIEnumerator(name: "FORCE_NON_ROOT", value: 65536)
!137 = !DIEnumerator(name: "FORCE_OVERWRITE", value: 131072)
!138 = !DIEnumerator(name: "FORCE_OVERWRITE_DIR", value: 262144)
!139 = !DIEnumerator(name: "FORCE_OVERWRITE_DIVERTED", value: 524288)
!140 = !DIEnumerator(name: "FORCE_REMOVE_ESSENTIAL", value: 1048576)
!141 = !DIEnumerator(name: "FORCE_REMOVE_REINSTREQ", value: 2097152)
!142 = !DIEnumerator(name: "FORCE_SCRIPT_CHROOTLESS", value: 4194304)
!143 = !DIEnumerator(name: "FORCE_UNSAFE_IO", value: 8388608)
!144 = !DIEnumerator(name: "FORCE_STATOVERRIDE_ADD", value: 16777216)
!145 = !DIEnumerator(name: "FORCE_STATOVERRIDE_DEL", value: 33554432)
!146 = !DIEnumerator(name: "FORCE_SECURITY_MAC", value: 67108864)
!147 = !DIEnumerator(name: "FORCE_ALL", value: -1)
!148 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "action", file: !4, line: 68, size: 32, align: 32, elements: !149)
!149 = !{!150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192}
!150 = !DIEnumerator(name: "act_unset", value: 0)
!151 = !DIEnumerator(name: "act_unpack", value: 1)
!152 = !DIEnumerator(name: "act_configure", value: 2)
!153 = !DIEnumerator(name: "act_install", value: 3)
!154 = !DIEnumerator(name: "act_triggers", value: 4)
!155 = !DIEnumerator(name: "act_remove", value: 5)
!156 = !DIEnumerator(name: "act_purge", value: 6)
!157 = !DIEnumerator(name: "act_verify", value: 7)
!158 = !DIEnumerator(name: "act_commandfd", value: 8)
!159 = !DIEnumerator(name: "act_status", value: 9)
!160 = !DIEnumerator(name: "act_listpackages", value: 10)
!161 = !DIEnumerator(name: "act_listfiles", value: 11)
!162 = !DIEnumerator(name: "act_searchfiles", value: 12)
!163 = !DIEnumerator(name: "act_controlpath", value: 13)
!164 = !DIEnumerator(name: "act_controllist", value: 14)
!165 = !DIEnumerator(name: "act_controlshow", value: 15)
!166 = !DIEnumerator(name: "act_cmpversions", value: 16)
!167 = !DIEnumerator(name: "act_arch_add", value: 17)
!168 = !DIEnumerator(name: "act_arch_remove", value: 18)
!169 = !DIEnumerator(name: "act_printarch", value: 19)
!170 = !DIEnumerator(name: "act_printforeignarches", value: 20)
!171 = !DIEnumerator(name: "act_assertpredep", value: 21)
!172 = !DIEnumerator(name: "act_assertepoch", value: 22)
!173 = !DIEnumerator(name: "act_assertlongfilenames", value: 23)
!174 = !DIEnumerator(name: "act_assertmulticonrep", value: 24)
!175 = !DIEnumerator(name: "act_assertmultiarch", value: 25)
!176 = !DIEnumerator(name: "act_assertverprovides", value: 26)
!177 = !DIEnumerator(name: "act_validate_pkgname", value: 27)
!178 = !DIEnumerator(name: "act_validate_trigname", value: 28)
!179 = !DIEnumerator(name: "act_validate_archname", value: 29)
!180 = !DIEnumerator(name: "act_validate_version", value: 30)
!181 = !DIEnumerator(name: "act_audit", value: 31)
!182 = !DIEnumerator(name: "act_unpackchk", value: 32)
!183 = !DIEnumerator(name: "act_predeppackage", value: 33)
!184 = !DIEnumerator(name: "act_getselections", value: 34)
!185 = !DIEnumerator(name: "act_setselections", value: 35)
!186 = !DIEnumerator(name: "act_clearselections", value: 36)
!187 = !DIEnumerator(name: "act_avail", value: 37)
!188 = !DIEnumerator(name: "act_printavail", value: 38)
!189 = !DIEnumerator(name: "act_avclear", value: 39)
!190 = !DIEnumerator(name: "act_avreplace", value: 40)
!191 = !DIEnumerator(name: "act_avmerge", value: 41)
!192 = !DIEnumerator(name: "act_forgetold", value: 42)
!193 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkg_name_arch_when", file: !13, line: 396, size: 32, align: 32, elements: !194)
!194 = !{!195, !196, !197, !198}
!195 = !DIEnumerator(name: "pnaw_never", value: 0)
!196 = !DIEnumerator(name: "pnaw_nonambig", value: 1)
!197 = !DIEnumerator(name: "pnaw_foreign", value: 2)
!198 = !DIEnumerator(name: "pnaw_always", value: 3)
!199 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "debugflags", file: !200, line: 41, size: 32, align: 32, elements: !201)
!200 = !DIFile(filename: "../lib/dpkg/debug.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!201 = !{!202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214}
!202 = !DIEnumerator(name: "dbg_general", value: 1)
!203 = !DIEnumerator(name: "dbg_scripts", value: 2)
!204 = !DIEnumerator(name: "dbg_eachfile", value: 8)
!205 = !DIEnumerator(name: "dbg_eachfiledetail", value: 64)
!206 = !DIEnumerator(name: "dbg_conff", value: 16)
!207 = !DIEnumerator(name: "dbg_conffdetail", value: 128)
!208 = !DIEnumerator(name: "dbg_depcon", value: 32)
!209 = !DIEnumerator(name: "dbg_depcondetail", value: 256)
!210 = !DIEnumerator(name: "dbg_veryverbose", value: 512)
!211 = !DIEnumerator(name: "dbg_stupidlyverbose", value: 1024)
!212 = !DIEnumerator(name: "dbg_triggers", value: 4096)
!213 = !DIEnumerator(name: "dbg_triggersdetail", value: 8192)
!214 = !DIEnumerator(name: "dbg_triggersstupid", value: 16384)
!215 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !216, line: 41, size: 32, align: 32, elements: !217)
!216 = !DIFile(filename: "../lib/dpkg/ehandle.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!217 = !{!218, !219, !220}
!218 = !DIEnumerator(name: "ehflag_normaltidy", value: 1)
!219 = !DIEnumerator(name: "ehflag_bombout", value: 2)
!220 = !DIEnumerator(name: "ehflag_recursiveerror", value: 4)
!221 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "trigproc_type", file: !4, line: 320, size: 32, align: 32, elements: !222)
!222 = !{!223, !224, !225}
!223 = !DIEnumerator(name: "TRIGPROC_TRY_DEFERRED", value: 0)
!224 = !DIEnumerator(name: "TRIGPROC_TRY_QUEUED", value: 1)
!225 = !DIEnumerator(name: "TRIGPROC_REQUIRED", value: 2)
!226 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dep_check", file: !4, line: 199, size: 32, align: 32, elements: !227)
!227 = !{!228, !229, !230}
!228 = !DIEnumerator(name: "DEP_CHECK_HALT", value: 0)
!229 = !DIEnumerator(name: "DEP_CHECK_DEFER", value: 1)
!230 = !DIEnumerator(name: "DEP_CHECK_OK", value: 2)
!231 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "found_status", file: !232, line: 347, size: 32, align: 32, elements: !233)
!232 = !DIFile(filename: "packages.c", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!233 = !{!234, !235, !236, !237}
!234 = !DIEnumerator(name: "FOUND_NONE", value: 0)
!235 = !DIEnumerator(name: "FOUND_DEFER", value: 1)
!236 = !DIEnumerator(name: "FOUND_FORCED", value: 2)
!237 = !DIEnumerator(name: "FOUND_OK", value: 3)
!238 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "which_pkgbin", file: !4, line: 340, size: 32, align: 32, elements: !239)
!239 = !{!240, !241, !242}
!240 = !DIEnumerator(name: "wpb_installed", value: 0)
!241 = !DIEnumerator(name: "wpb_available", value: 1)
!242 = !DIEnumerator(name: "wpb_by_istobe", value: 2)
!243 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "versiondisplayepochwhen", file: !13, line: 388, size: 32, align: 32, elements: !244)
!244 = !{!245, !246, !247}
!245 = !DIEnumerator(name: "vdew_never", value: 0)
!246 = !DIEnumerator(name: "vdew_nonambig", value: 1)
!247 = !DIEnumerator(name: "vdew_always", value: 2)
!248 = !{!249, !250}
!249 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!251 = !{!252, !253, !254, !458}
!252 = distinct !DIGlobalVariable(name: "dependtry", scope: !0, file: !232, line: 52, type: !3, isLocal: false, isDefinition: true, variable: i32* @dependtry)
!253 = distinct !DIGlobalVariable(name: "sincenothing", scope: !0, file: !232, line: 53, type: !249, isLocal: false, isDefinition: true, variable: i32* @sincenothing)
!254 = distinct !DIGlobalVariable(name: "progress_bytrigproc", scope: !0, file: !232, line: 49, type: !255, isLocal: true, isDefinition: true, variable: %struct.pkginfo** @progress_bytrigproc)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64, align: 64)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkginfo", file: !13, line: 195, size: 3072, align: 64, elements: !257)
!257 = !{!258, !309, !310, !311, !312, !313, !314, !315, !316, !317, !347, !348, !364, !373, !389, !390, !396, !452, !456, !457}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !256, file: !13, line: 196, baseType: !259, size: 64, align: 64)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64, align: 64)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgset", file: !13, line: 242, size: 3392, align: 64, elements: !261)
!261 = !{!262, !263, !267, !268, !308}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !260, file: !13, line: 243, baseType: !259, size: 64, align: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !260, file: !13, line: 244, baseType: !264, size: 64, align: 64, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64, align: 64)
!265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !266)
!266 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !260, file: !13, line: 245, baseType: !256, size: 3072, align: 64, offset: 128)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "depended", scope: !260, file: !13, line: 249, baseType: !269, size: 128, align: 64, offset: 3200)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !260, file: !13, line: 246, size: 128, align: 64, elements: !270)
!270 = !{!271, !307}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !269, file: !13, line: 247, baseType: !272, size: 64, align: 64)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64, align: 64)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "deppossi", file: !13, line: 63, size: 640, align: 64, elements: !274)
!274 = !{!275, !283, !284, !285, !286, !287, !296, !303, !304, !306}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !273, file: !13, line: 64, baseType: !276, size: 64, align: 64)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64, align: 64)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dependency", file: !13, line: 56, size: 256, align: 64, elements: !278)
!278 = !{!279, !280, !281, !282}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !277, file: !13, line: 57, baseType: !255, size: 64, align: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !277, file: !13, line: 58, baseType: !276, size: 64, align: 64, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !277, file: !13, line: 59, baseType: !272, size: 64, align: 64, offset: 128)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !277, file: !13, line: 60, baseType: !12, size: 32, align: 32, offset: 192)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "ed", scope: !273, file: !13, line: 65, baseType: !259, size: 64, align: 64, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !273, file: !13, line: 66, baseType: !272, size: 64, align: 64, offset: 128)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "rev_next", scope: !273, file: !13, line: 66, baseType: !272, size: 64, align: 64, offset: 192)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "rev_prev", scope: !273, file: !13, line: 66, baseType: !272, size: 64, align: 64, offset: 256)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !273, file: !13, line: 67, baseType: !288, size: 64, align: 64, offset: 320)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64, align: 64)
!289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !290)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_arch", file: !25, line: 48, size: 192, align: 64, elements: !291)
!291 = !{!292, !294, !295}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !290, file: !25, line: 49, baseType: !293, size: 64, align: 64)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64, align: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !290, file: !25, line: 50, baseType: !264, size: 64, align: 64, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !290, file: !25, line: 51, baseType: !24, size: 32, align: 32, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !273, file: !13, line: 68, baseType: !297, size: 192, align: 64, offset: 384)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_version", file: !36, line: 42, size: 192, align: 64, elements: !298)
!298 = !{!299, !301, !302}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !297, file: !36, line: 44, baseType: !300, size: 32, align: 32)
!300 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !297, file: !36, line: 46, baseType: !264, size: 64, align: 64, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !297, file: !36, line: 48, baseType: !264, size: 64, align: 64, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "verrel", scope: !273, file: !13, line: 69, baseType: !35, size: 32, align: 32, offset: 576)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "arch_is_implicit", scope: !273, file: !13, line: 70, baseType: !305, size: 8, align: 8, offset: 608)
!305 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "cyclebreak", scope: !273, file: !13, line: 71, baseType: !305, size: 8, align: 8, offset: 616)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !269, file: !13, line: 248, baseType: !272, size: 64, align: 64, offset: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "installed_instances", scope: !260, file: !13, line: 250, baseType: !249, size: 32, align: 32, offset: 3328)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "arch_next", scope: !256, file: !13, line: 197, baseType: !255, size: 64, align: 64, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "want", scope: !256, file: !13, line: 199, baseType: !44, size: 32, align: 32, offset: 128)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "eflag", scope: !256, file: !13, line: 201, baseType: !52, size: 32, align: 32, offset: 160)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !256, file: !13, line: 202, baseType: !56, size: 32, align: 32, offset: 192)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !256, file: !13, line: 203, baseType: !66, size: 32, align: 32, offset: 224)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "otherpriority", scope: !256, file: !13, line: 204, baseType: !264, size: 64, align: 64, offset: 256)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "section", scope: !256, file: !13, line: 205, baseType: !264, size: 64, align: 64, offset: 320)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "configversion", scope: !256, file: !13, line: 206, baseType: !297, size: 192, align: 64, offset: 384)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !256, file: !13, line: 207, baseType: !318, size: 960, align: 64, offset: 576)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgbin", file: !13, line: 107, size: 960, align: 64, elements: !319)
!319 = !{!320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !340}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "depends", scope: !318, file: !13, line: 108, baseType: !276, size: 64, align: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "essential", scope: !318, file: !13, line: 110, baseType: !305, size: 8, align: 8, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "multiarch", scope: !318, file: !13, line: 111, baseType: !76, size: 32, align: 32, offset: 96)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !318, file: !13, line: 112, baseType: !288, size: 64, align: 64, offset: 128)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "pkgname_archqual", scope: !318, file: !13, line: 115, baseType: !264, size: 64, align: 64, offset: 192)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !318, file: !13, line: 116, baseType: !264, size: 64, align: 64, offset: 256)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "maintainer", scope: !318, file: !13, line: 117, baseType: !264, size: 64, align: 64, offset: 320)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !318, file: !13, line: 118, baseType: !264, size: 64, align: 64, offset: 384)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "installedsize", scope: !318, file: !13, line: 119, baseType: !264, size: 64, align: 64, offset: 448)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !318, file: !13, line: 120, baseType: !264, size: 64, align: 64, offset: 512)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "bugs", scope: !318, file: !13, line: 121, baseType: !264, size: 64, align: 64, offset: 576)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !318, file: !13, line: 122, baseType: !297, size: 192, align: 64, offset: 640)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "conffiles", scope: !318, file: !13, line: 123, baseType: !333, size: 64, align: 64, offset: 832)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64, align: 64)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conffile", file: !13, line: 80, size: 256, align: 64, elements: !335)
!335 = !{!336, !337, !338, !339}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !334, file: !13, line: 81, baseType: !333, size: 64, align: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !334, file: !13, line: 82, baseType: !264, size: 64, align: 64, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !334, file: !13, line: 83, baseType: !264, size: 64, align: 64, offset: 128)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "obsolete", scope: !334, file: !13, line: 84, baseType: !305, size: 8, align: 8, offset: 192)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "arbs", scope: !318, file: !13, line: 124, baseType: !341, size: 64, align: 64, offset: 896)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64, align: 64)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arbitraryfield", file: !13, line: 74, size: 192, align: 64, elements: !343)
!343 = !{!344, !345, !346}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !342, file: !13, line: 75, baseType: !341, size: 64, align: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !342, file: !13, line: 76, baseType: !264, size: 64, align: 64, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !342, file: !13, line: 77, baseType: !264, size: 64, align: 64, offset: 128)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !256, file: !13, line: 208, baseType: !318, size: 960, align: 64, offset: 1536)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "clientdata", scope: !256, file: !13, line: 209, baseType: !349, size: 64, align: 64, offset: 2496)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64, align: 64)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perpackagestate", file: !4, line: 53, size: 256, align: 64, elements: !351)
!351 = !{!352, !353, !354, !355, !356, !357}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "istobe", scope: !350, file: !4, line: 54, baseType: !82, size: 32, align: 32)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !350, file: !4, line: 57, baseType: !89, size: 32, align: 32, offset: 32)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !350, file: !4, line: 59, baseType: !305, size: 8, align: 8, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "replacingfilesandsaid", scope: !350, file: !4, line: 61, baseType: !249, size: 32, align: 32, offset: 96)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "cmdline_seen", scope: !350, file: !4, line: 62, baseType: !249, size: 32, align: 32, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "trigprocdeferred", scope: !350, file: !4, line: 65, baseType: !358, size: 64, align: 64, offset: 192)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64, align: 64)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_list", file: !360, line: 34, size: 128, align: 64, elements: !361)
!360 = !DIFile(filename: "../lib/dpkg/pkg-list.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!361 = !{!362, !363}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !359, file: !360, line: 35, baseType: !358, size: 64, align: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !359, file: !360, line: 36, baseType: !255, size: 64, align: 64, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "archives", scope: !256, file: !13, line: 211, baseType: !365, size: 64, align: 64, offset: 2560)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64, align: 64)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archivedetails", file: !13, line: 87, size: 320, align: 64, elements: !367)
!367 = !{!368, !369, !370, !371, !372}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !366, file: !13, line: 88, baseType: !365, size: 64, align: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !366, file: !13, line: 89, baseType: !264, size: 64, align: 64, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "msdosname", scope: !366, file: !13, line: 90, baseType: !264, size: 64, align: 64, offset: 128)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !366, file: !13, line: 91, baseType: !264, size: 64, align: 64, offset: 192)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "md5sum", scope: !366, file: !13, line: 92, baseType: !264, size: 64, align: 64, offset: 256)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "trigaw", scope: !256, file: !13, line: 216, baseType: !374, size: 128, align: 64, offset: 2624)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !256, file: !13, line: 213, size: 128, align: 64, elements: !375)
!375 = !{!376, !388}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !374, file: !13, line: 215, baseType: !377, size: 64, align: 64)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64, align: 64)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigaw", file: !13, line: 142, size: 320, align: 64, elements: !379)
!379 = !{!380, !381, !382, !383}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "aw", scope: !378, file: !13, line: 143, baseType: !255, size: 64, align: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "pend", scope: !378, file: !13, line: 143, baseType: !255, size: 64, align: 64, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "samepend_next", scope: !378, file: !13, line: 144, baseType: !377, size: 64, align: 64, offset: 128)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "sameaw", scope: !378, file: !13, line: 147, baseType: !384, size: 128, align: 64, offset: 192)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !378, file: !13, line: 145, size: 128, align: 64, elements: !385)
!385 = !{!386, !387}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !384, file: !13, line: 146, baseType: !377, size: 64, align: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !384, file: !13, line: 146, baseType: !377, size: 64, align: 64, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !374, file: !13, line: 215, baseType: !377, size: 64, align: 64, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "othertrigaw_head", scope: !256, file: !13, line: 219, baseType: !377, size: 64, align: 64, offset: 2752)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "trigpend_head", scope: !256, file: !13, line: 220, baseType: !391, size: 64, align: 64, offset: 2816)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64, align: 64)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigpend", file: !13, line: 134, size: 128, align: 64, elements: !393)
!393 = !{!394, !395}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !392, file: !13, line: 135, baseType: !391, size: 64, align: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !392, file: !13, line: 136, baseType: !264, size: 64, align: 64, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !256, file: !13, line: 231, baseType: !397, size: 64, align: 64, offset: 2880)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64, align: 64)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode_list", file: !95, line: 122, size: 128, align: 64, elements: !399)
!399 = !{!400, !401}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !398, file: !95, line: 123, baseType: !397, size: 64, align: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "namenode", scope: !398, file: !95, line: 124, baseType: !402, size: 64, align: 64, offset: 64)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64, align: 64)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode", file: !95, line: 90, size: 640, align: 64, elements: !404)
!404 = !{!405, !406, !407, !408, !416, !435, !438, !439, !440, !441}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !403, file: !95, line: 91, baseType: !402, size: 64, align: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !403, file: !95, line: 92, baseType: !264, size: 64, align: 64, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "packages", scope: !403, file: !95, line: 93, baseType: !358, size: 64, align: 64, offset: 128)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "divert", scope: !403, file: !95, line: 94, baseType: !409, size: 64, align: 64, offset: 192)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64, align: 64)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_diversion", file: !95, line: 151, size: 256, align: 64, elements: !411)
!411 = !{!412, !413, !414, !415}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "useinstead", scope: !410, file: !95, line: 152, baseType: !402, size: 64, align: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "camefrom", scope: !410, file: !95, line: 153, baseType: !402, size: 64, align: 64, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "pkgset", scope: !410, file: !95, line: 154, baseType: !259, size: 64, align: 64, offset: 128)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !410, file: !95, line: 157, baseType: !409, size: 64, align: 64, offset: 192)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "statoverride", scope: !403, file: !95, line: 101, baseType: !417, size: 64, align: 64, offset: 256)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64, align: 64)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_stat", file: !419, line: 40, size: 256, align: 64, elements: !420)
!419 = !DIFile(filename: "../lib/dpkg/file.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!420 = !{!421, !426, !429, !432, !434}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !418, file: !419, line: 41, baseType: !422, size: 32, align: 32)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !423, line: 80, baseType: !424)
!423 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !425, line: 125, baseType: !300)
!425 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!426 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !418, file: !419, line: 42, baseType: !427, size: 32, align: 32, offset: 32)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !423, line: 65, baseType: !428)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !425, line: 126, baseType: !300)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !418, file: !419, line: 43, baseType: !430, size: 32, align: 32, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !423, line: 70, baseType: !431)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !425, line: 129, baseType: !300)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "uname", scope: !418, file: !419, line: 47, baseType: !433, size: 64, align: 64, offset: 128)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64, align: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !418, file: !419, line: 48, baseType: !433, size: 64, align: 64, offset: 192)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "trig_interested", scope: !403, file: !95, line: 103, baseType: !436, size: 64, align: 64, offset: 320)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64, align: 64)
!437 = !DICompositeType(tag: DW_TAG_structure_type, name: "trigfileint", file: !95, line: 103, flags: DIFlagFwdDecl)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !403, file: !95, line: 111, baseType: !94, size: 32, align: 32, offset: 384)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "oldhash", scope: !403, file: !95, line: 114, baseType: !264, size: 64, align: 64, offset: 448)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "newhash", scope: !403, file: !95, line: 117, baseType: !264, size: 64, align: 64, offset: 512)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "file_ondisk_id", scope: !403, file: !95, line: 119, baseType: !442, size: 64, align: 64, offset: 576)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64, align: 64)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ondisk_id", file: !95, line: 85, size: 128, align: 64, elements: !444)
!444 = !{!445, !449}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "id_dev", scope: !443, file: !95, line: 86, baseType: !446, size: 64, align: 64)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !423, line: 60, baseType: !447)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !425, line: 124, baseType: !448)
!448 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "id_ino", scope: !443, file: !95, line: 87, baseType: !450, size: 64, align: 64, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !423, line: 48, baseType: !451)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !425, line: 127, baseType: !448)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_phys_offs", scope: !256, file: !13, line: 232, baseType: !453, size: 64, align: 64, offset: 2944)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !423, line: 86, baseType: !454)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !425, line: 131, baseType: !455)
!455 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_valid", scope: !256, file: !13, line: 233, baseType: !305, size: 8, align: 8, offset: 3008)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "status_dirty", scope: !256, file: !13, line: 236, baseType: !305, size: 8, align: 8, offset: 3016)
!458 = distinct !DIGlobalVariable(name: "queue", scope: !0, file: !232, line: 50, type: !459, isLocal: true, isDefinition: true, variable: %struct.pkg_queue* @queue)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_queue", file: !460, line: 35, size: 192, align: 64, elements: !461)
!460 = !DIFile(filename: "../lib/dpkg/pkg-queue.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!461 = !{!462, !463, !464}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !459, file: !460, line: 36, baseType: !358, size: 64, align: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !459, file: !460, line: 36, baseType: !358, size: 64, align: 64, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !459, file: !460, line: 37, baseType: !249, size: 32, align: 32, offset: 128)
!465 = !{i32 2, !"Dwarf Version", i32 4}
!466 = !{i32 2, !"Debug Info Version", i32 3}
!467 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!468 = distinct !DISubprogram(name: "enqueue_package", scope: !232, file: !232, line: 56, type: !469, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !471)
!469 = !DISubroutineType(types: !470)
!470 = !{null, !255}
!471 = !{}
!472 = !DILocalVariable(name: "pkg", arg: 1, scope: !468, file: !232, line: 56, type: !255)
!473 = !DIExpression()
!474 = !DILocation(line: 56, column: 33, scope: !468)
!475 = !DILocation(line: 58, column: 29, scope: !468)
!476 = !DILocation(line: 58, column: 3, scope: !468)
!477 = !DILocation(line: 59, column: 7, scope: !478)
!478 = distinct !DILexicalBlock(scope: !468, file: !232, line: 59, column: 7)
!479 = !DILocation(line: 59, column: 12, scope: !478)
!480 = !DILocation(line: 59, column: 24, scope: !478)
!481 = !DILocation(line: 59, column: 7, scope: !468)
!482 = !DILocation(line: 60, column: 5, scope: !478)
!483 = !DILocation(line: 61, column: 3, scope: !468)
!484 = !DILocation(line: 61, column: 8, scope: !468)
!485 = !DILocation(line: 61, column: 20, scope: !468)
!486 = !DILocation(line: 61, column: 29, scope: !468)
!487 = !DILocation(line: 62, column: 26, scope: !468)
!488 = !DILocation(line: 62, column: 3, scope: !468)
!489 = !DILocation(line: 63, column: 1, scope: !468)
!490 = !DILocation(line: 63, column: 1, scope: !491)
!491 = !DILexicalBlockFile(scope: !468, file: !232, discriminator: 1)
!492 = distinct !DISubprogram(name: "enqueue_package_mark_seen", scope: !232, file: !232, line: 66, type: !469, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !471)
!493 = !DILocalVariable(name: "pkg", arg: 1, scope: !492, file: !232, line: 66, type: !255)
!494 = !DILocation(line: 66, column: 43, scope: !492)
!495 = !DILocation(line: 68, column: 19, scope: !492)
!496 = !DILocation(line: 68, column: 3, scope: !492)
!497 = !DILocation(line: 69, column: 3, scope: !492)
!498 = !DILocation(line: 69, column: 8, scope: !492)
!499 = !DILocation(line: 69, column: 20, scope: !492)
!500 = !DILocation(line: 69, column: 32, scope: !492)
!501 = !DILocation(line: 70, column: 1, scope: !492)
!502 = distinct !DISubprogram(name: "packages", scope: !232, file: !232, line: 136, type: !503, isLocal: false, isDefinition: true, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !471)
!503 = !DISubroutineType(types: !504)
!504 = !{!249, !505}
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64, align: 64)
!506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !264)
!507 = !DILocalVariable(name: "argv", arg: 1, scope: !502, file: !232, line: 136, type: !505)
!508 = !DILocation(line: 136, column: 29, scope: !502)
!509 = !DILocation(line: 138, column: 3, scope: !502)
!510 = !DILocation(line: 140, column: 18, scope: !502)
!511 = !DILocation(line: 140, column: 18, scope: !512)
!512 = !DILexicalBlockFile(scope: !502, file: !232, discriminator: 1)
!513 = !DILocation(line: 141, column: 18, scope: !502)
!514 = !DILocation(line: 140, column: 18, scope: !515)
!515 = !DILexicalBlockFile(scope: !502, file: !232, discriminator: 2)
!516 = !DILocation(line: 140, column: 18, scope: !517)
!517 = !DILexicalBlockFile(scope: !502, file: !232, discriminator: 3)
!518 = !DILocation(line: 140, column: 3, scope: !517)
!519 = !DILocation(line: 143, column: 3, scope: !502)
!520 = !DILocation(line: 144, column: 3, scope: !502)
!521 = !DILocation(line: 146, column: 38, scope: !502)
!522 = !DILocation(line: 146, column: 49, scope: !502)
!523 = !DILocation(line: 146, column: 3, scope: !502)
!524 = !DILocation(line: 148, column: 7, scope: !525)
!525 = distinct !DILexicalBlock(scope: !502, file: !232, line: 148, column: 7)
!526 = !DILocation(line: 148, column: 7, scope: !502)
!527 = !DILocation(line: 149, column: 10, scope: !528)
!528 = distinct !DILexicalBlock(scope: !529, file: !232, line: 149, column: 9)
!529 = distinct !DILexicalBlock(scope: !525, file: !232, line: 148, column: 18)
!530 = !DILocation(line: 149, column: 9, scope: !528)
!531 = !DILocation(line: 149, column: 9, scope: !529)
!532 = !DILocation(line: 150, column: 16, scope: !528)
!533 = !DILocation(line: 150, column: 81, scope: !528)
!534 = !DILocation(line: 150, column: 92, scope: !528)
!535 = !DILocation(line: 150, column: 7, scope: !536)
!536 = !DILexicalBlockFile(scope: !528, file: !232, discriminator: 1)
!537 = !DILocation(line: 150, column: 7, scope: !528)
!538 = !DILocation(line: 152, column: 5, scope: !529)
!539 = !DILocation(line: 153, column: 3, scope: !529)
!540 = !DILocation(line: 154, column: 11, scope: !541)
!541 = distinct !DILexicalBlock(scope: !542, file: !232, line: 154, column: 9)
!542 = distinct !DILexicalBlock(scope: !525, file: !232, line: 153, column: 10)
!543 = !DILocation(line: 154, column: 10, scope: !541)
!544 = !DILocation(line: 154, column: 9, scope: !542)
!545 = !DILocation(line: 155, column: 16, scope: !541)
!546 = !DILocation(line: 155, column: 74, scope: !541)
!547 = !DILocation(line: 155, column: 85, scope: !541)
!548 = !DILocation(line: 155, column: 7, scope: !549)
!549 = !DILexicalBlockFile(scope: !541, file: !232, discriminator: 1)
!550 = !DILocation(line: 155, column: 7, scope: !541)
!551 = !DILocation(line: 157, column: 23, scope: !542)
!552 = !DILocation(line: 157, column: 5, scope: !542)
!553 = !DILocation(line: 160, column: 3, scope: !502)
!554 = !DILocation(line: 162, column: 3, scope: !502)
!555 = !DILocation(line: 163, column: 3, scope: !502)
!556 = !DILocation(line: 165, column: 3, scope: !502)
!557 = !DILocation(line: 167, column: 3, scope: !502)
!558 = distinct !DISubprogram(name: "enqueue_pending", scope: !232, file: !232, line: 73, type: !559, isLocal: true, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !471)
!559 = !DISubroutineType(types: !560)
!560 = !{null}
!561 = !DILocalVariable(name: "iter", scope: !558, file: !232, line: 75, type: !562)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64, align: 64)
!563 = !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_hash_iter", file: !13, line: 314, flags: DIFlagFwdDecl)
!564 = !DILocation(line: 75, column: 25, scope: !558)
!565 = !DILocalVariable(name: "pkg", scope: !558, file: !232, line: 76, type: !255)
!566 = !DILocation(line: 76, column: 19, scope: !558)
!567 = !DILocation(line: 78, column: 10, scope: !558)
!568 = !DILocation(line: 78, column: 8, scope: !558)
!569 = !DILocation(line: 79, column: 3, scope: !558)
!570 = !DILocation(line: 79, column: 40, scope: !571)
!571 = !DILexicalBlockFile(scope: !558, file: !232, discriminator: 1)
!572 = !DILocation(line: 79, column: 17, scope: !571)
!573 = !DILocation(line: 79, column: 15, scope: !571)
!574 = !DILocation(line: 79, column: 47, scope: !571)
!575 = !DILocation(line: 79, column: 3, scope: !571)
!576 = !DILocation(line: 80, column: 13, scope: !577)
!577 = distinct !DILexicalBlock(scope: !558, file: !232, line: 79, column: 55)
!578 = !DILocation(line: 80, column: 24, scope: !577)
!579 = !DILocation(line: 80, column: 5, scope: !577)
!580 = !DILocation(line: 82, column: 13, scope: !581)
!581 = distinct !DILexicalBlock(scope: !582, file: !232, line: 82, column: 11)
!582 = distinct !DILexicalBlock(scope: !577, file: !232, line: 80, column: 33)
!583 = !DILocation(line: 82, column: 18, scope: !581)
!584 = !DILocation(line: 82, column: 25, scope: !581)
!585 = !DILocation(line: 82, column: 46, scope: !581)
!586 = !DILocation(line: 83, column: 13, scope: !581)
!587 = !DILocation(line: 83, column: 18, scope: !581)
!588 = !DILocation(line: 83, column: 25, scope: !581)
!589 = !DILocation(line: 83, column: 52, scope: !581)
!590 = !DILocation(line: 84, column: 13, scope: !581)
!591 = !DILocation(line: 84, column: 18, scope: !581)
!592 = !DILocation(line: 82, column: 11, scope: !593)
!593 = !DILexicalBlockFile(scope: !582, file: !232, discriminator: 1)
!594 = !DILocation(line: 85, column: 9, scope: !581)
!595 = distinct !{!595, !569}
!596 = !DILocation(line: 86, column: 11, scope: !597)
!597 = distinct !DILexicalBlock(scope: !582, file: !232, line: 86, column: 11)
!598 = !DILocation(line: 86, column: 16, scope: !597)
!599 = !DILocation(line: 86, column: 21, scope: !597)
!600 = !DILocation(line: 86, column: 11, scope: !582)
!601 = !DILocation(line: 87, column: 9, scope: !597)
!602 = !DILocation(line: 88, column: 7, scope: !582)
!603 = !DILocation(line: 90, column: 12, scope: !604)
!604 = distinct !DILexicalBlock(scope: !582, file: !232, line: 90, column: 11)
!605 = !DILocation(line: 90, column: 17, scope: !604)
!606 = !DILocation(line: 90, column: 11, scope: !582)
!607 = !DILocation(line: 91, column: 9, scope: !604)
!608 = !DILocation(line: 92, column: 11, scope: !609)
!609 = distinct !DILexicalBlock(scope: !582, file: !232, line: 92, column: 11)
!610 = !DILocation(line: 92, column: 16, scope: !609)
!611 = !DILocation(line: 92, column: 21, scope: !609)
!612 = !DILocation(line: 92, column: 11, scope: !582)
!613 = !DILocation(line: 93, column: 9, scope: !609)
!614 = !DILocation(line: 94, column: 7, scope: !582)
!615 = !DILocation(line: 97, column: 11, scope: !616)
!616 = distinct !DILexicalBlock(scope: !582, file: !232, line: 97, column: 11)
!617 = !DILocation(line: 97, column: 16, scope: !616)
!618 = !DILocation(line: 97, column: 21, scope: !616)
!619 = !DILocation(line: 97, column: 11, scope: !582)
!620 = !DILocation(line: 98, column: 13, scope: !621)
!621 = distinct !DILexicalBlock(scope: !622, file: !232, line: 98, column: 13)
!622 = distinct !DILexicalBlock(scope: !616, file: !232, line: 97, column: 40)
!623 = !DILocation(line: 98, column: 18, scope: !621)
!624 = !DILocation(line: 98, column: 23, scope: !621)
!625 = !DILocation(line: 98, column: 13, scope: !622)
!626 = !DILocation(line: 99, column: 11, scope: !621)
!627 = !DILocation(line: 100, column: 13, scope: !628)
!628 = distinct !DILexicalBlock(scope: !622, file: !232, line: 100, column: 13)
!629 = !DILocation(line: 100, column: 18, scope: !628)
!630 = !DILocation(line: 100, column: 25, scope: !628)
!631 = !DILocation(line: 100, column: 13, scope: !622)
!632 = !DILocation(line: 101, column: 11, scope: !628)
!633 = !DILocation(line: 102, column: 7, scope: !622)
!634 = !DILocation(line: 103, column: 11, scope: !635)
!635 = distinct !DILexicalBlock(scope: !582, file: !232, line: 103, column: 11)
!636 = !DILocation(line: 103, column: 16, scope: !635)
!637 = !DILocation(line: 103, column: 23, scope: !635)
!638 = !DILocation(line: 103, column: 11, scope: !582)
!639 = !DILocation(line: 104, column: 9, scope: !635)
!640 = !DILocation(line: 105, column: 7, scope: !582)
!641 = !DILocation(line: 107, column: 72, scope: !582)
!642 = !DILocation(line: 107, column: 83, scope: !582)
!643 = !DILocation(line: 107, column: 7, scope: !582)
!644 = !DILocation(line: 109, column: 21, scope: !577)
!645 = !DILocation(line: 109, column: 5, scope: !577)
!646 = !DILocation(line: 79, column: 3, scope: !647)
!647 = !DILexicalBlockFile(scope: !558, file: !232, discriminator: 2)
!648 = !DILocation(line: 111, column: 22, scope: !558)
!649 = !DILocation(line: 111, column: 3, scope: !558)
!650 = !DILocation(line: 112, column: 1, scope: !558)
!651 = distinct !DISubprogram(name: "enqueue_specified", scope: !232, file: !232, line: 115, type: !652, isLocal: true, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !471)
!652 = !DISubroutineType(types: !653)
!653 = !{null, !505}
!654 = !DILocalVariable(name: "argv", arg: 1, scope: !651, file: !232, line: 115, type: !505)
!655 = !DILocation(line: 115, column: 38, scope: !651)
!656 = !DILocalVariable(name: "thisarg", scope: !651, file: !232, line: 117, type: !264)
!657 = !DILocation(line: 117, column: 15, scope: !651)
!658 = !DILocation(line: 119, column: 3, scope: !651)
!659 = !DILocation(line: 119, column: 26, scope: !660)
!660 = !DILexicalBlockFile(scope: !651, file: !232, discriminator: 1)
!661 = !DILocation(line: 119, column: 21, scope: !660)
!662 = !DILocation(line: 119, column: 19, scope: !660)
!663 = !DILocation(line: 119, column: 30, scope: !660)
!664 = !DILocation(line: 119, column: 3, scope: !660)
!665 = !DILocalVariable(name: "pkg", scope: !666, file: !232, line: 120, type: !255)
!666 = distinct !DILexicalBlock(scope: !651, file: !232, line: 119, column: 38)
!667 = !DILocation(line: 120, column: 21, scope: !666)
!668 = !DILocation(line: 122, column: 38, scope: !666)
!669 = !DILocation(line: 122, column: 49, scope: !666)
!670 = !DILocation(line: 122, column: 11, scope: !666)
!671 = !DILocation(line: 122, column: 9, scope: !666)
!672 = !DILocation(line: 123, column: 9, scope: !673)
!673 = distinct !DILexicalBlock(scope: !666, file: !232, line: 123, column: 9)
!674 = !DILocation(line: 123, column: 14, scope: !673)
!675 = !DILocation(line: 123, column: 21, scope: !673)
!676 = !DILocation(line: 123, column: 46, scope: !673)
!677 = !DILocation(line: 124, column: 23, scope: !673)
!678 = !DILocation(line: 124, column: 28, scope: !673)
!679 = !DILocation(line: 124, column: 33, scope: !673)
!680 = !DILocation(line: 124, column: 9, scope: !673)
!681 = !DILocation(line: 123, column: 9, scope: !682)
!682 = !DILexicalBlockFile(scope: !666, file: !232, discriminator: 1)
!683 = !DILocation(line: 125, column: 16, scope: !684)
!684 = distinct !DILexicalBlock(scope: !673, file: !232, line: 124, column: 48)
!685 = !DILocation(line: 125, column: 7, scope: !686)
!686 = !DILexicalBlockFile(scope: !684, file: !232, discriminator: 1)
!687 = !DILocation(line: 125, column: 7, scope: !684)
!688 = !DILocation(line: 128, column: 31, scope: !666)
!689 = !DILocation(line: 128, column: 5, scope: !666)
!690 = !DILocation(line: 119, column: 3, scope: !691)
!691 = !DILexicalBlockFile(scope: !651, file: !232, discriminator: 2)
!692 = distinct !{!692, !658}
!693 = !DILocation(line: 131, column: 7, scope: !694)
!694 = distinct !DILexicalBlock(scope: !651, file: !232, line: 131, column: 7)
!695 = !DILocation(line: 131, column: 18, scope: !694)
!696 = !DILocation(line: 131, column: 26, scope: !694)
!697 = !DILocation(line: 131, column: 7, scope: !651)
!698 = !DILocation(line: 132, column: 5, scope: !694)
!699 = !DILocation(line: 133, column: 1, scope: !651)
!700 = distinct !DISubprogram(name: "process_queue", scope: !232, file: !232, line: 170, type: !559, isLocal: false, isDefinition: true, scopeLine: 170, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !471)
!701 = !DILocalVariable(name: "rundown", scope: !700, file: !232, line: 171, type: !358)
!702 = !DILocation(line: 171, column: 20, scope: !700)
!703 = !DILocalVariable(name: "pkg", scope: !700, file: !232, line: 172, type: !704)
!704 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !255)
!705 = !DILocation(line: 172, column: 28, scope: !700)
!706 = !DILocalVariable(name: "action_todo", scope: !700, file: !232, line: 173, type: !707)
!707 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !148)
!708 = !DILocation(line: 173, column: 24, scope: !700)
!709 = !DILocalVariable(name: "ejbuf", scope: !700, file: !232, line: 174, type: !710)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "jmp_buf", file: !711, line: 48, baseType: !712)
!711 = !DIFile(filename: "/usr/include/setjmp.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !713, size: 1600, align: 64, elements: !731)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__jmp_buf_tag", file: !711, line: 34, size: 1600, align: 64, elements: !714)
!714 = !{!715, !721, !722}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "__jmpbuf", scope: !713, file: !711, line: 40, baseType: !716, size: 512, align: 64)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "__jmp_buf", file: !717, line: 31, baseType: !718)
!717 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/setjmp.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !455, size: 512, align: 64, elements: !719)
!719 = !{!720}
!720 = !DISubrange(count: 8)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "__mask_was_saved", scope: !713, file: !711, line: 41, baseType: !249, size: 32, align: 32, offset: 512)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "__saved_mask", scope: !713, file: !711, line: 42, baseType: !723, size: 1024, align: 64, offset: 576)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !724, line: 30, baseType: !725)
!724 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sigset.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !724, line: 27, size: 1024, align: 64, elements: !726)
!726 = !{!727}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !725, file: !724, line: 29, baseType: !728, size: 1024, align: 64)
!728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !448, size: 1024, align: 64, elements: !729)
!729 = !{!730}
!730 = !DISubrange(count: 16)
!731 = !{!732}
!732 = !DISubrange(count: 1)
!733 = !DILocation(line: 174, column: 11, scope: !700)
!734 = !DILocalVariable(name: "istobe", scope: !700, file: !232, line: 175, type: !82)
!735 = !DILocation(line: 175, column: 19, scope: !700)
!736 = !DILocation(line: 177, column: 7, scope: !737)
!737 = distinct !DILexicalBlock(scope: !700, file: !232, line: 177, column: 7)
!738 = !DILocation(line: 177, column: 7, scope: !700)
!739 = !DILocation(line: 178, column: 5, scope: !737)
!740 = !DILocation(line: 180, column: 3, scope: !700)
!741 = !DILocation(line: 182, column: 11, scope: !700)
!742 = !DILocation(line: 182, column: 22, scope: !700)
!743 = !DILocation(line: 182, column: 3, scope: !700)
!744 = !DILocation(line: 186, column: 12, scope: !745)
!745 = distinct !DILexicalBlock(scope: !700, file: !232, line: 182, column: 31)
!746 = !DILocation(line: 187, column: 5, scope: !745)
!747 = !DILocation(line: 190, column: 12, scope: !745)
!748 = !DILocation(line: 191, column: 5, scope: !745)
!749 = !DILocation(line: 193, column: 70, scope: !745)
!750 = !DILocation(line: 193, column: 81, scope: !745)
!751 = !DILocation(line: 193, column: 5, scope: !745)
!752 = !DILocation(line: 195, column: 24, scope: !753)
!753 = distinct !DILexicalBlock(scope: !700, file: !232, line: 195, column: 3)
!754 = !DILocation(line: 195, column: 16, scope: !753)
!755 = !DILocation(line: 195, column: 8, scope: !753)
!756 = !DILocation(line: 195, column: 30, scope: !757)
!757 = !DILexicalBlockFile(scope: !758, file: !232, discriminator: 1)
!758 = distinct !DILexicalBlock(scope: !753, file: !232, line: 195, column: 3)
!759 = !DILocation(line: 195, column: 3, scope: !757)
!760 = !DILocation(line: 196, column: 31, scope: !761)
!761 = distinct !DILexicalBlock(scope: !758, file: !232, line: 195, column: 64)
!762 = !DILocation(line: 196, column: 40, scope: !761)
!763 = !DILocation(line: 196, column: 5, scope: !761)
!764 = !DILocation(line: 200, column: 9, scope: !765)
!765 = distinct !DILexicalBlock(scope: !761, file: !232, line: 200, column: 9)
!766 = !DILocation(line: 200, column: 18, scope: !765)
!767 = !DILocation(line: 200, column: 23, scope: !765)
!768 = !DILocation(line: 200, column: 35, scope: !765)
!769 = !DILocation(line: 200, column: 48, scope: !765)
!770 = !DILocation(line: 200, column: 9, scope: !761)
!771 = !DILocation(line: 201, column: 15, scope: !772)
!772 = distinct !DILexicalBlock(scope: !765, file: !232, line: 200, column: 53)
!773 = !DILocation(line: 201, column: 26, scope: !772)
!774 = !DILocation(line: 201, column: 7, scope: !772)
!775 = !DILocation(line: 204, column: 16, scope: !776)
!776 = distinct !DILexicalBlock(scope: !772, file: !232, line: 201, column: 35)
!777 = !DILocation(line: 205, column: 25, scope: !776)
!778 = !DILocation(line: 205, column: 34, scope: !776)
!779 = !DILocation(line: 205, column: 16, scope: !776)
!780 = !DILocation(line: 204, column: 9, scope: !781)
!781 = !DILexicalBlockFile(scope: !776, file: !232, discriminator: 1)
!782 = !DILocation(line: 206, column: 9, scope: !776)
!783 = !DILocation(line: 208, column: 16, scope: !776)
!784 = !DILocation(line: 210, column: 25, scope: !776)
!785 = !DILocation(line: 210, column: 34, scope: !776)
!786 = !DILocation(line: 210, column: 16, scope: !776)
!787 = !DILocation(line: 208, column: 9, scope: !781)
!788 = !DILocation(line: 211, column: 9, scope: !776)
!789 = !DILocation(line: 213, column: 74, scope: !776)
!790 = !DILocation(line: 213, column: 85, scope: !776)
!791 = !DILocation(line: 213, column: 9, scope: !776)
!792 = !DILocation(line: 215, column: 5, scope: !772)
!793 = !DILocation(line: 216, column: 40, scope: !761)
!794 = !DILocation(line: 216, column: 5, scope: !761)
!795 = !DILocation(line: 216, column: 14, scope: !761)
!796 = !DILocation(line: 216, column: 19, scope: !761)
!797 = !DILocation(line: 216, column: 31, scope: !761)
!798 = !DILocation(line: 216, column: 38, scope: !761)
!799 = !DILocation(line: 217, column: 3, scope: !761)
!800 = !DILocation(line: 195, column: 49, scope: !801)
!801 = !DILexicalBlockFile(scope: !758, file: !232, discriminator: 2)
!802 = !DILocation(line: 195, column: 58, scope: !801)
!803 = !DILocation(line: 195, column: 47, scope: !801)
!804 = !DILocation(line: 195, column: 3, scope: !801)
!805 = distinct !{!805, !806}
!806 = !DILocation(line: 195, column: 3, scope: !700)
!807 = !DILocation(line: 219, column: 3, scope: !700)
!808 = !DILocation(line: 219, column: 11, scope: !809)
!809 = !DILexicalBlockFile(scope: !700, file: !232, discriminator: 1)
!810 = !DILocation(line: 219, column: 10, scope: !809)
!811 = !DILocation(line: 219, column: 3, scope: !809)
!812 = !DILocation(line: 220, column: 11, scope: !813)
!813 = distinct !DILexicalBlock(scope: !700, file: !232, line: 219, column: 39)
!814 = !DILocation(line: 220, column: 9, scope: !813)
!815 = !DILocation(line: 221, column: 10, scope: !816)
!816 = distinct !DILexicalBlock(scope: !813, file: !232, line: 221, column: 9)
!817 = !DILocation(line: 221, column: 9, scope: !813)
!818 = !DILocation(line: 222, column: 7, scope: !816)
!819 = distinct !{!819, !807}
!820 = !DILocation(line: 224, column: 31, scope: !813)
!821 = !DILocation(line: 224, column: 5, scope: !813)
!822 = !DILocation(line: 225, column: 5, scope: !813)
!823 = !DILocation(line: 225, column: 10, scope: !813)
!824 = !DILocation(line: 225, column: 22, scope: !813)
!825 = !DILocation(line: 225, column: 31, scope: !813)
!826 = !DILocation(line: 227, column: 19, scope: !813)
!827 = !DILocation(line: 227, column: 30, scope: !813)
!828 = !DILocation(line: 227, column: 17, scope: !813)
!829 = !DILocation(line: 229, column: 21, scope: !830)
!830 = distinct !DILexicalBlock(scope: !813, file: !232, line: 229, column: 9)
!831 = !DILocation(line: 229, column: 32, scope: !830)
!832 = !DILocation(line: 229, column: 39, scope: !830)
!833 = !DILocation(line: 229, column: 43, scope: !830)
!834 = !DILocation(line: 229, column: 24, scope: !830)
!835 = !DILocation(line: 229, column: 9, scope: !813)
!836 = !DILocation(line: 233, column: 16, scope: !837)
!837 = distinct !DILexicalBlock(scope: !830, file: !232, line: 229, column: 48)
!838 = !DILocation(line: 234, column: 20, scope: !837)
!839 = !DILocation(line: 235, column: 11, scope: !840)
!840 = distinct !DILexicalBlock(scope: !837, file: !232, line: 235, column: 11)
!841 = !DILocation(line: 235, column: 21, scope: !840)
!842 = !DILocation(line: 235, column: 11, scope: !837)
!843 = !DILocation(line: 236, column: 81, scope: !840)
!844 = !DILocation(line: 236, column: 92, scope: !840)
!845 = !DILocation(line: 236, column: 112, scope: !840)
!846 = !DILocation(line: 236, column: 9, scope: !840)
!847 = !DILocation(line: 238, column: 5, scope: !837)
!848 = !DILocation(line: 238, column: 16, scope: !849)
!849 = !DILexicalBlockFile(scope: !850, file: !232, discriminator: 1)
!850 = distinct !DILexicalBlock(scope: !830, file: !232, line: 238, column: 16)
!851 = !DILocation(line: 238, column: 37, scope: !849)
!852 = !DILocation(line: 238, column: 44, scope: !849)
!853 = !DILocation(line: 238, column: 48, scope: !849)
!854 = !DILocation(line: 238, column: 29, scope: !849)
!855 = !DILocation(line: 239, column: 11, scope: !856)
!856 = distinct !DILexicalBlock(scope: !857, file: !232, line: 239, column: 11)
!857 = distinct !DILexicalBlock(scope: !850, file: !232, line: 238, column: 53)
!858 = !DILocation(line: 239, column: 21, scope: !856)
!859 = !DILocation(line: 239, column: 44, scope: !856)
!860 = !DILocation(line: 240, column: 11, scope: !856)
!861 = !DILocation(line: 240, column: 31, scope: !856)
!862 = !DILocation(line: 240, column: 34, scope: !863)
!863 = !DILexicalBlockFile(scope: !856, file: !232, discriminator: 1)
!864 = !DILocation(line: 240, column: 55, scope: !863)
!865 = !DILocation(line: 239, column: 11, scope: !866)
!866 = !DILexicalBlockFile(scope: !857, file: !232, discriminator: 1)
!867 = !DILocation(line: 241, column: 25, scope: !868)
!868 = distinct !DILexicalBlock(scope: !856, file: !232, line: 240, column: 70)
!869 = !DILocation(line: 241, column: 9, scope: !868)
!870 = !DILocation(line: 242, column: 15, scope: !868)
!871 = !DILocation(line: 242, column: 13, scope: !868)
!872 = !DILocation(line: 243, column: 29, scope: !868)
!873 = !DILocation(line: 244, column: 21, scope: !868)
!874 = !DILocation(line: 245, column: 7, scope: !868)
!875 = !DILocation(line: 246, column: 18, scope: !876)
!876 = distinct !DILexicalBlock(scope: !856, file: !232, line: 245, column: 14)
!877 = !DILocation(line: 247, column: 22, scope: !876)
!878 = !DILocation(line: 248, column: 13, scope: !879)
!879 = distinct !DILexicalBlock(scope: !876, file: !232, line: 248, column: 13)
!880 = !DILocation(line: 248, column: 23, scope: !879)
!881 = !DILocation(line: 248, column: 13, scope: !876)
!882 = !DILocation(line: 249, column: 83, scope: !879)
!883 = !DILocation(line: 249, column: 94, scope: !879)
!884 = !DILocation(line: 249, column: 114, scope: !879)
!885 = !DILocation(line: 249, column: 11, scope: !879)
!886 = !DILocation(line: 252, column: 5, scope: !857)
!887 = !DILocation(line: 255, column: 20, scope: !813)
!888 = !DILocation(line: 255, column: 11, scope: !813)
!889 = !DILocation(line: 255, column: 45, scope: !813)
!890 = !DILocation(line: 255, column: 53, scope: !813)
!891 = !DILocation(line: 255, column: 67, scope: !813)
!892 = !DILocation(line: 254, column: 5, scope: !813)
!893 = !DILocation(line: 257, column: 9, scope: !894)
!894 = distinct !DILexicalBlock(scope: !813, file: !232, line: 257, column: 9)
!895 = !DILocation(line: 257, column: 14, scope: !894)
!896 = !DILocation(line: 257, column: 21, scope: !894)
!897 = !DILocation(line: 257, column: 9, scope: !813)
!898 = !DILocation(line: 258, column: 69, scope: !894)
!899 = !DILocation(line: 258, column: 60, scope: !894)
!900 = !DILocation(line: 258, column: 88, scope: !894)
!901 = !DILocation(line: 258, column: 93, scope: !894)
!902 = !DILocation(line: 258, column: 7, scope: !903)
!903 = !DILexicalBlockFile(scope: !894, file: !232, discriminator: 1)
!904 = !DILocation(line: 258, column: 7, scope: !894)
!905 = !DILocation(line: 261, column: 8, scope: !906)
!906 = distinct !DILexicalBlock(scope: !813, file: !232, line: 261, column: 8)
!907 = !DILocation(line: 261, column: 8, scope: !813)
!908 = !DILocation(line: 264, column: 7, scope: !909)
!909 = distinct !DILexicalBlock(scope: !906, file: !232, line: 261, column: 23)
!910 = !DILocation(line: 264, column: 12, scope: !909)
!911 = !DILocation(line: 264, column: 24, scope: !909)
!912 = !DILocation(line: 264, column: 31, scope: !909)
!913 = !DILocation(line: 266, column: 7, scope: !909)
!914 = !DILocation(line: 267, column: 11, scope: !915)
!915 = distinct !DILexicalBlock(scope: !909, file: !232, line: 267, column: 11)
!916 = !DILocation(line: 267, column: 11, scope: !909)
!917 = !DILocation(line: 268, column: 9, scope: !915)
!918 = !DILocation(line: 269, column: 7, scope: !909)
!919 = !DILocation(line: 272, column: 38, scope: !813)
!920 = !DILocation(line: 272, column: 29, scope: !813)
!921 = !DILocation(line: 271, column: 5, scope: !813)
!922 = !DILocation(line: 274, column: 13, scope: !813)
!923 = !DILocation(line: 274, column: 5, scope: !813)
!924 = !DILocation(line: 276, column: 12, scope: !925)
!925 = distinct !DILexicalBlock(scope: !926, file: !232, line: 276, column: 11)
!926 = distinct !DILexicalBlock(scope: !813, file: !232, line: 274, column: 26)
!927 = !DILocation(line: 276, column: 17, scope: !925)
!928 = !DILocation(line: 276, column: 11, scope: !926)
!929 = !DILocation(line: 277, column: 16, scope: !925)
!930 = !DILocation(line: 279, column: 25, scope: !925)
!931 = !DILocation(line: 279, column: 16, scope: !925)
!932 = !DILocation(line: 279, column: 62, scope: !925)
!933 = !DILocation(line: 279, column: 46, scope: !934)
!934 = !DILexicalBlockFile(scope: !925, file: !232, discriminator: 1)
!935 = !DILocation(line: 277, column: 9, scope: !934)
!936 = !DILocation(line: 277, column: 9, scope: !925)
!937 = !DILocation(line: 276, column: 17, scope: !934)
!938 = !DILocation(line: 283, column: 11, scope: !939)
!939 = distinct !DILexicalBlock(scope: !926, file: !232, line: 283, column: 11)
!940 = !DILocation(line: 283, column: 16, scope: !939)
!941 = !DILocation(line: 283, column: 23, scope: !939)
!942 = !DILocation(line: 283, column: 11, scope: !926)
!943 = !DILocation(line: 284, column: 9, scope: !939)
!944 = !DILocation(line: 283, column: 26, scope: !945)
!945 = !DILexicalBlockFile(scope: !939, file: !232, discriminator: 1)
!946 = !DILocation(line: 288, column: 11, scope: !947)
!947 = distinct !DILexicalBlock(scope: !926, file: !232, line: 288, column: 11)
!948 = !DILocation(line: 288, column: 16, scope: !947)
!949 = !DILocation(line: 288, column: 11, scope: !926)
!950 = !DILocation(line: 289, column: 18, scope: !947)
!951 = !DILocation(line: 289, column: 9, scope: !947)
!952 = !DILocation(line: 291, column: 28, scope: !947)
!953 = !DILocation(line: 291, column: 9, scope: !947)
!954 = !DILocation(line: 292, column: 7, scope: !926)
!955 = !DILocation(line: 294, column: 23, scope: !926)
!956 = !DILocation(line: 294, column: 7, scope: !926)
!957 = !DILocation(line: 295, column: 7, scope: !926)
!958 = !DILocation(line: 297, column: 72, scope: !926)
!959 = !DILocation(line: 297, column: 83, scope: !926)
!960 = !DILocation(line: 297, column: 7, scope: !926)
!961 = !DILocation(line: 299, column: 13, scope: !813)
!962 = !DILocation(line: 299, column: 21, scope: !813)
!963 = !DILocation(line: 299, column: 5, scope: !964)
!964 = !DILexicalBlockFile(scope: !813, file: !232, discriminator: 1)
!965 = !DILocation(line: 300, column: 13, scope: !813)
!966 = !DILocation(line: 300, column: 21, scope: !813)
!967 = !DILocation(line: 300, column: 5, scope: !964)
!968 = !DILocation(line: 302, column: 5, scope: !813)
!969 = !DILocation(line: 219, column: 3, scope: !970)
!970 = !DILexicalBlockFile(scope: !700, file: !232, discriminator: 2)
!971 = !DILocation(line: 305, column: 13, scope: !972)
!972 = distinct !DILexicalBlock(scope: !700, file: !232, line: 305, column: 7)
!973 = !DILocation(line: 305, column: 7, scope: !972)
!974 = !DILocation(line: 305, column: 7, scope: !700)
!975 = !DILocation(line: 306, column: 85, scope: !972)
!976 = !DILocation(line: 306, column: 5, scope: !972)
!977 = !DILocation(line: 308, column: 1, scope: !700)
!978 = distinct !DISubprogram(name: "breakses_ok", scope: !232, file: !232, line: 597, type: !979, isLocal: false, isDefinition: true, scopeLine: 598, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !471)
!979 = !DISubroutineType(types: !980)
!980 = !{!226, !255, !981}
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64, align: 64)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varbuf", file: !983, line: 55, size: 192, align: 64, elements: !984)
!983 = !DIFile(filename: "../lib/dpkg/varbuf.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!984 = !{!985, !988, !989}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !982, file: !983, line: 56, baseType: !986, size: 64, align: 64)
!986 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !987, line: 216, baseType: !448)
!987 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!988 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !982, file: !983, line: 56, baseType: !986, size: 64, align: 64, offset: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !982, file: !983, line: 57, baseType: !433, size: 64, align: 64, offset: 128)
!990 = !DILocalVariable(name: "pkg", arg: 1, scope: !978, file: !232, line: 597, type: !255)
!991 = !DILocation(line: 597, column: 29, scope: !978)
!992 = !DILocalVariable(name: "aemsgs", arg: 2, scope: !978, file: !232, line: 597, type: !981)
!993 = !DILocation(line: 597, column: 49, scope: !978)
!994 = !DILocalVariable(name: "dep", scope: !978, file: !232, line: 599, type: !276)
!995 = !DILocation(line: 599, column: 22, scope: !978)
!996 = !DILocalVariable(name: "virtbroken", scope: !978, file: !232, line: 600, type: !272)
!997 = !DILocation(line: 600, column: 20, scope: !978)
!998 = !DILocalVariable(name: "ok", scope: !978, file: !232, line: 601, type: !226)
!999 = !DILocation(line: 601, column: 18, scope: !978)
!1000 = !DILocation(line: 603, column: 3, scope: !978)
!1001 = !DILocation(line: 605, column: 23, scope: !978)
!1002 = !DILocation(line: 605, column: 36, scope: !978)
!1003 = !DILocation(line: 605, column: 41, scope: !978)
!1004 = !DILocation(line: 605, column: 46, scope: !978)
!1005 = !DILocation(line: 605, column: 3, scope: !978)
!1006 = !DILocation(line: 607, column: 13, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !978, file: !232, line: 607, column: 3)
!1008 = !DILocation(line: 607, column: 18, scope: !1007)
!1009 = !DILocation(line: 607, column: 28, scope: !1007)
!1010 = !DILocation(line: 607, column: 11, scope: !1007)
!1011 = !DILocation(line: 607, column: 8, scope: !1007)
!1012 = !DILocation(line: 607, column: 37, scope: !1013)
!1013 = !DILexicalBlockFile(scope: !1014, file: !232, discriminator: 1)
!1014 = distinct !DILexicalBlock(scope: !1007, file: !232, line: 607, column: 3)
!1015 = !DILocation(line: 607, column: 3, scope: !1013)
!1016 = !DILocation(line: 608, column: 9, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1018, file: !232, line: 608, column: 9)
!1018 = distinct !DILexicalBlock(scope: !1014, file: !232, line: 607, column: 58)
!1019 = !DILocation(line: 608, column: 14, scope: !1017)
!1020 = !DILocation(line: 608, column: 19, scope: !1017)
!1021 = !DILocation(line: 608, column: 9, scope: !1018)
!1022 = !DILocation(line: 608, column: 36, scope: !1023)
!1023 = !DILexicalBlockFile(scope: !1017, file: !232, discriminator: 1)
!1024 = !DILocation(line: 609, column: 18, scope: !1018)
!1025 = !DILocation(line: 609, column: 23, scope: !1018)
!1026 = !DILocation(line: 609, column: 16, scope: !1018)
!1027 = !DILocation(line: 610, column: 60, scope: !1018)
!1028 = !DILocation(line: 610, column: 72, scope: !1018)
!1029 = !DILocation(line: 610, column: 76, scope: !1018)
!1030 = !DILocation(line: 610, column: 5, scope: !1018)
!1031 = !DILocation(line: 611, column: 25, scope: !1018)
!1032 = !DILocation(line: 611, column: 38, scope: !1018)
!1033 = !DILocation(line: 611, column: 43, scope: !1018)
!1034 = !DILocation(line: 611, column: 55, scope: !1018)
!1035 = !DILocation(line: 611, column: 59, scope: !1018)
!1036 = !DILocation(line: 611, column: 5, scope: !1018)
!1037 = !DILocation(line: 612, column: 3, scope: !1018)
!1038 = !DILocation(line: 607, column: 47, scope: !1039)
!1039 = !DILexicalBlockFile(scope: !1014, file: !232, discriminator: 2)
!1040 = !DILocation(line: 607, column: 52, scope: !1039)
!1041 = !DILocation(line: 607, column: 45, scope: !1039)
!1042 = !DILocation(line: 607, column: 3, scope: !1039)
!1043 = distinct !{!1043, !1044}
!1044 = !DILocation(line: 607, column: 3, scope: !978)
!1045 = !DILocation(line: 613, column: 10, scope: !978)
!1046 = !DILocation(line: 613, column: 3, scope: !978)
!1047 = distinct !DISubprogram(name: "breaks_check_target", scope: !232, file: !232, line: 584, type: !1048, isLocal: true, isDefinition: true, scopeLine: 587, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !471)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{null, !981, !1050, !255, !259, !272}
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64, align: 64)
!1051 = !DILocalVariable(name: "aemsgs", arg: 1, scope: !1047, file: !232, line: 584, type: !981)
!1052 = !DILocation(line: 584, column: 36, scope: !1047)
!1053 = !DILocalVariable(name: "ok", arg: 2, scope: !1047, file: !232, line: 584, type: !1050)
!1054 = !DILocation(line: 584, column: 60, scope: !1047)
!1055 = !DILocalVariable(name: "broken", arg: 3, scope: !1047, file: !232, line: 585, type: !255)
!1056 = !DILocation(line: 585, column: 37, scope: !1047)
!1057 = !DILocalVariable(name: "target", arg: 4, scope: !1047, file: !232, line: 585, type: !259)
!1058 = !DILocation(line: 585, column: 60, scope: !1047)
!1059 = !DILocalVariable(name: "virtbroken", arg: 5, scope: !1047, file: !232, line: 586, type: !272)
!1060 = !DILocation(line: 586, column: 38, scope: !1047)
!1061 = !DILocalVariable(name: "possi", scope: !1047, file: !232, line: 588, type: !272)
!1062 = !DILocation(line: 588, column: 20, scope: !1047)
!1063 = !DILocation(line: 590, column: 16, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1047, file: !232, line: 590, column: 3)
!1065 = !DILocation(line: 590, column: 24, scope: !1064)
!1066 = !DILocation(line: 590, column: 33, scope: !1064)
!1067 = !DILocation(line: 590, column: 14, scope: !1064)
!1068 = !DILocation(line: 590, column: 8, scope: !1064)
!1069 = !DILocation(line: 590, column: 44, scope: !1070)
!1070 = !DILexicalBlockFile(scope: !1071, file: !232, discriminator: 1)
!1071 = distinct !DILexicalBlock(scope: !1064, file: !232, line: 590, column: 3)
!1072 = !DILocation(line: 590, column: 3, scope: !1070)
!1073 = !DILocation(line: 591, column: 9, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1075, file: !232, line: 591, column: 9)
!1075 = distinct !DILexicalBlock(scope: !1071, file: !232, line: 590, column: 76)
!1076 = !DILocation(line: 591, column: 16, scope: !1074)
!1077 = !DILocation(line: 591, column: 20, scope: !1074)
!1078 = !DILocation(line: 591, column: 25, scope: !1074)
!1079 = !DILocation(line: 591, column: 9, scope: !1075)
!1080 = !DILocation(line: 591, column: 40, scope: !1081)
!1081 = !DILexicalBlockFile(scope: !1074, file: !232, discriminator: 1)
!1082 = !DILocation(line: 592, column: 22, scope: !1075)
!1083 = !DILocation(line: 592, column: 30, scope: !1075)
!1084 = !DILocation(line: 592, column: 34, scope: !1075)
!1085 = !DILocation(line: 592, column: 41, scope: !1075)
!1086 = !DILocation(line: 592, column: 49, scope: !1075)
!1087 = !DILocation(line: 592, column: 56, scope: !1075)
!1088 = !DILocation(line: 592, column: 60, scope: !1075)
!1089 = !DILocation(line: 592, column: 64, scope: !1075)
!1090 = !DILocation(line: 592, column: 5, scope: !1075)
!1091 = !DILocation(line: 593, column: 3, scope: !1075)
!1092 = !DILocation(line: 590, column: 59, scope: !1093)
!1093 = !DILexicalBlockFile(scope: !1071, file: !232, discriminator: 2)
!1094 = !DILocation(line: 590, column: 66, scope: !1093)
!1095 = !DILocation(line: 590, column: 57, scope: !1093)
!1096 = !DILocation(line: 590, column: 3, scope: !1093)
!1097 = distinct !{!1097, !1098}
!1098 = !DILocation(line: 590, column: 3, scope: !1047)
!1099 = !DILocation(line: 594, column: 1, scope: !1047)
!1100 = distinct !DISubprogram(name: "dependencies_ok", scope: !232, file: !232, line: 620, type: !1101, isLocal: false, isDefinition: true, scopeLine: 622, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !471)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{!226, !255, !255, !981}
!1103 = !DILocalVariable(name: "pkg", arg: 1, scope: !1100, file: !232, line: 620, type: !255)
!1104 = !DILocation(line: 620, column: 33, scope: !1100)
!1105 = !DILocalVariable(name: "removing", arg: 2, scope: !1100, file: !232, line: 620, type: !255)
!1106 = !DILocation(line: 620, column: 54, scope: !1100)
!1107 = !DILocalVariable(name: "aemsgs", arg: 3, scope: !1100, file: !232, line: 621, type: !981)
!1108 = !DILocation(line: 621, column: 32, scope: !1100)
!1109 = !DILocalVariable(name: "ok", scope: !1100, file: !232, line: 624, type: !226)
!1110 = !DILocation(line: 624, column: 18, scope: !1100)
!1111 = !DILocalVariable(name: "found", scope: !1100, file: !232, line: 626, type: !231)
!1112 = !DILocation(line: 626, column: 21, scope: !1100)
!1113 = !DILocalVariable(name: "thisf", scope: !1100, file: !232, line: 626, type: !231)
!1114 = !DILocation(line: 626, column: 28, scope: !1100)
!1115 = !DILocalVariable(name: "interestingwarnings", scope: !1100, file: !232, line: 627, type: !249)
!1116 = !DILocation(line: 627, column: 7, scope: !1100)
!1117 = !DILocalVariable(name: "matched", scope: !1100, file: !232, line: 628, type: !305)
!1118 = !DILocation(line: 628, column: 7, scope: !1100)
!1119 = !DILocalVariable(name: "anycannotfixbytrig", scope: !1100, file: !232, line: 628, type: !305)
!1120 = !DILocation(line: 628, column: 16, scope: !1100)
!1121 = !DILocalVariable(name: "oemsgs", scope: !1100, file: !232, line: 629, type: !982)
!1122 = !DILocation(line: 629, column: 17, scope: !1100)
!1123 = !DILocalVariable(name: "dep", scope: !1100, file: !232, line: 630, type: !276)
!1124 = !DILocation(line: 630, column: 22, scope: !1100)
!1125 = !DILocalVariable(name: "possi", scope: !1100, file: !232, line: 631, type: !272)
!1126 = !DILocation(line: 631, column: 20, scope: !1100)
!1127 = !DILocalVariable(name: "provider", scope: !1100, file: !232, line: 631, type: !272)
!1128 = !DILocation(line: 631, column: 28, scope: !1100)
!1129 = !DILocalVariable(name: "possfixbytrig", scope: !1100, file: !232, line: 632, type: !255)
!1130 = !DILocation(line: 632, column: 19, scope: !1100)
!1131 = !DILocalVariable(name: "canfixbytrig", scope: !1100, file: !232, line: 632, type: !255)
!1132 = !DILocation(line: 632, column: 35, scope: !1100)
!1133 = !DILocation(line: 634, column: 22, scope: !1100)
!1134 = !DILocation(line: 635, column: 6, scope: !1100)
!1135 = !DILocation(line: 637, column: 18, scope: !1100)
!1136 = !DILocation(line: 637, column: 9, scope: !1100)
!1137 = !DILocation(line: 638, column: 9, scope: !1100)
!1138 = !DILocation(line: 638, column: 29, scope: !1139)
!1139 = !DILexicalBlockFile(scope: !1100, file: !232, discriminator: 1)
!1140 = !DILocation(line: 638, column: 20, scope: !1139)
!1141 = !DILocation(line: 638, column: 9, scope: !1139)
!1142 = !DILocation(line: 638, column: 9, scope: !1143)
!1143 = !DILexicalBlockFile(scope: !1100, file: !232, discriminator: 2)
!1144 = !DILocation(line: 638, column: 9, scope: !1145)
!1145 = !DILexicalBlockFile(scope: !1100, file: !232, discriminator: 3)
!1146 = !DILocation(line: 636, column: 3, scope: !1100)
!1147 = !DILocation(line: 640, column: 22, scope: !1100)
!1148 = !DILocation(line: 641, column: 16, scope: !1100)
!1149 = !DILocation(line: 642, column: 13, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1100, file: !232, line: 642, column: 3)
!1151 = !DILocation(line: 642, column: 18, scope: !1150)
!1152 = !DILocation(line: 642, column: 28, scope: !1150)
!1153 = !DILocation(line: 642, column: 11, scope: !1150)
!1154 = !DILocation(line: 642, column: 8, scope: !1150)
!1155 = !DILocation(line: 642, column: 37, scope: !1156)
!1156 = !DILexicalBlockFile(scope: !1157, file: !232, discriminator: 1)
!1157 = distinct !DILexicalBlock(scope: !1150, file: !232, line: 642, column: 3)
!1158 = !DILocation(line: 642, column: 3, scope: !1156)
!1159 = !DILocation(line: 643, column: 9, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1161, file: !232, line: 643, column: 9)
!1161 = distinct !DILexicalBlock(scope: !1157, file: !232, line: 642, column: 58)
!1162 = !DILocation(line: 643, column: 14, scope: !1160)
!1163 = !DILocation(line: 643, column: 19, scope: !1160)
!1164 = !DILocation(line: 643, column: 34, scope: !1160)
!1165 = !DILocation(line: 643, column: 37, scope: !1166)
!1166 = !DILexicalBlockFile(scope: !1160, file: !232, discriminator: 1)
!1167 = !DILocation(line: 643, column: 42, scope: !1166)
!1168 = !DILocation(line: 643, column: 47, scope: !1166)
!1169 = !DILocation(line: 643, column: 9, scope: !1166)
!1170 = !DILocation(line: 643, column: 66, scope: !1171)
!1171 = !DILexicalBlockFile(scope: !1160, file: !232, discriminator: 2)
!1172 = !DILocation(line: 644, column: 5, scope: !1161)
!1173 = !DILocation(line: 645, column: 13, scope: !1161)
!1174 = !DILocation(line: 646, column: 5, scope: !1161)
!1175 = !DILocation(line: 647, column: 11, scope: !1161)
!1176 = !DILocation(line: 648, column: 19, scope: !1161)
!1177 = !DILocation(line: 649, column: 18, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1161, file: !232, line: 649, column: 5)
!1179 = !DILocation(line: 649, column: 23, scope: !1178)
!1180 = !DILocation(line: 649, column: 16, scope: !1178)
!1181 = !DILocation(line: 649, column: 10, scope: !1178)
!1182 = !DILocation(line: 649, column: 29, scope: !1183)
!1183 = !DILexicalBlockFile(scope: !1184, file: !232, discriminator: 1)
!1184 = distinct !DILexicalBlock(scope: !1178, file: !232, line: 649, column: 5)
!1185 = !DILocation(line: 649, column: 35, scope: !1183)
!1186 = !DILocation(line: 649, column: 47, scope: !1183)
!1187 = !DILocation(line: 649, column: 50, scope: !1188)
!1188 = !DILexicalBlockFile(scope: !1184, file: !232, discriminator: 2)
!1189 = !DILocation(line: 649, column: 47, scope: !1188)
!1190 = !DILocation(line: 649, column: 5, scope: !1191)
!1191 = !DILexicalBlockFile(scope: !1178, file: !232, discriminator: 3)
!1192 = !DILocalVariable(name: "possi_iter", scope: !1193, file: !232, line: 650, type: !1194)
!1193 = distinct !DILexicalBlock(scope: !1184, file: !232, line: 649, column: 78)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64, align: 64)
!1195 = !DICompositeType(tag: DW_TAG_structure_type, name: "deppossi_pkg_iterator", file: !4, line: 346, flags: DIFlagFwdDecl)
!1196 = !DILocation(line: 650, column: 37, scope: !1193)
!1197 = !DILocalVariable(name: "pkg_pos", scope: !1193, file: !232, line: 651, type: !255)
!1198 = !DILocation(line: 651, column: 23, scope: !1193)
!1199 = !DILocation(line: 653, column: 64, scope: !1193)
!1200 = !DILocation(line: 653, column: 71, scope: !1193)
!1201 = !DILocation(line: 653, column: 75, scope: !1193)
!1202 = !DILocation(line: 653, column: 7, scope: !1193)
!1203 = !DILocation(line: 654, column: 11, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1193, file: !232, line: 654, column: 11)
!1205 = !DILocation(line: 654, column: 18, scope: !1204)
!1206 = !DILocation(line: 654, column: 11, scope: !1193)
!1207 = !DILocation(line: 655, column: 9, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1204, file: !232, line: 654, column: 30)
!1209 = !DILocation(line: 656, column: 15, scope: !1208)
!1210 = !DILocation(line: 657, column: 9, scope: !1208)
!1211 = !DILocation(line: 660, column: 13, scope: !1193)
!1212 = !DILocation(line: 661, column: 42, scope: !1193)
!1213 = !DILocation(line: 661, column: 20, scope: !1193)
!1214 = !DILocation(line: 661, column: 18, scope: !1193)
!1215 = !DILocation(line: 662, column: 7, scope: !1193)
!1216 = !DILocation(line: 662, column: 48, scope: !1217)
!1217 = !DILexicalBlockFile(scope: !1193, file: !232, discriminator: 1)
!1218 = !DILocation(line: 662, column: 25, scope: !1217)
!1219 = !DILocation(line: 662, column: 23, scope: !1217)
!1220 = !DILocation(line: 662, column: 7, scope: !1217)
!1221 = !DILocation(line: 663, column: 35, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1193, file: !232, line: 662, column: 62)
!1223 = !DILocation(line: 663, column: 44, scope: !1222)
!1224 = !DILocation(line: 663, column: 49, scope: !1222)
!1225 = !DILocation(line: 664, column: 61, scope: !1222)
!1226 = !DILocation(line: 663, column: 17, scope: !1222)
!1227 = !DILocation(line: 663, column: 15, scope: !1222)
!1228 = !DILocation(line: 666, column: 13, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1222, file: !232, line: 666, column: 13)
!1230 = !DILocation(line: 666, column: 21, scope: !1229)
!1231 = !DILocation(line: 666, column: 19, scope: !1229)
!1232 = !DILocation(line: 666, column: 13, scope: !1222)
!1233 = !DILocation(line: 667, column: 19, scope: !1229)
!1234 = !DILocation(line: 667, column: 17, scope: !1229)
!1235 = !DILocation(line: 667, column: 11, scope: !1229)
!1236 = !DILocation(line: 668, column: 13, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1222, file: !232, line: 668, column: 13)
!1238 = !DILocation(line: 668, column: 19, scope: !1237)
!1239 = !DILocation(line: 668, column: 13, scope: !1222)
!1240 = !DILocation(line: 669, column: 11, scope: !1237)
!1241 = !DILocation(line: 662, column: 7, scope: !1242)
!1242 = !DILexicalBlockFile(scope: !1193, file: !232, discriminator: 2)
!1243 = distinct !{!1243, !1215}
!1244 = !DILocation(line: 671, column: 30, scope: !1193)
!1245 = !DILocation(line: 671, column: 7, scope: !1193)
!1246 = !DILocation(line: 673, column: 11, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1193, file: !232, line: 673, column: 11)
!1248 = !DILocation(line: 673, column: 17, scope: !1247)
!1249 = !DILocation(line: 673, column: 11, scope: !1193)
!1250 = !DILocation(line: 674, column: 25, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !232, line: 674, column: 9)
!1252 = distinct !DILexicalBlock(scope: !1247, file: !232, line: 673, column: 30)
!1253 = !DILocation(line: 674, column: 32, scope: !1251)
!1254 = !DILocation(line: 674, column: 36, scope: !1251)
!1255 = !DILocation(line: 674, column: 45, scope: !1251)
!1256 = !DILocation(line: 674, column: 23, scope: !1251)
!1257 = !DILocation(line: 674, column: 14, scope: !1251)
!1258 = !DILocation(line: 675, column: 14, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1251, file: !232, line: 674, column: 9)
!1260 = !DILocation(line: 675, column: 20, scope: !1259)
!1261 = !DILocation(line: 675, column: 32, scope: !1259)
!1262 = !DILocation(line: 675, column: 35, scope: !1263)
!1263 = !DILexicalBlockFile(scope: !1259, file: !232, discriminator: 1)
!1264 = !DILocation(line: 675, column: 32, scope: !1263)
!1265 = !DILocation(line: 674, column: 9, scope: !1266)
!1266 = !DILexicalBlockFile(scope: !1251, file: !232, discriminator: 1)
!1267 = !DILocation(line: 677, column: 15, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1269, file: !232, line: 677, column: 15)
!1269 = distinct !DILexicalBlock(scope: !1259, file: !232, line: 676, column: 45)
!1270 = !DILocation(line: 677, column: 25, scope: !1268)
!1271 = !DILocation(line: 677, column: 29, scope: !1268)
!1272 = !DILocation(line: 677, column: 34, scope: !1268)
!1273 = !DILocation(line: 677, column: 15, scope: !1269)
!1274 = !DILocation(line: 678, column: 13, scope: !1268)
!1275 = !DILocation(line: 680, column: 26, scope: !1269)
!1276 = !DILocation(line: 680, column: 36, scope: !1269)
!1277 = !DILocation(line: 680, column: 40, scope: !1269)
!1278 = !DILocation(line: 680, column: 17, scope: !1269)
!1279 = !DILocation(line: 679, column: 11, scope: !1269)
!1280 = !DILocation(line: 681, column: 34, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1269, file: !232, line: 681, column: 15)
!1282 = !DILocation(line: 681, column: 44, scope: !1281)
!1283 = !DILocation(line: 681, column: 48, scope: !1281)
!1284 = !DILocation(line: 681, column: 52, scope: !1281)
!1285 = !DILocation(line: 681, column: 63, scope: !1281)
!1286 = !DILocation(line: 681, column: 73, scope: !1281)
!1287 = !DILocation(line: 682, column: 33, scope: !1281)
!1288 = !DILocation(line: 681, column: 16, scope: !1281)
!1289 = !DILocation(line: 681, column: 15, scope: !1269)
!1290 = !DILocation(line: 683, column: 13, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1281, file: !232, line: 682, column: 41)
!1292 = !DILocation(line: 684, column: 13, scope: !1291)
!1293 = !DILocation(line: 686, column: 37, scope: !1269)
!1294 = !DILocation(line: 686, column: 47, scope: !1269)
!1295 = !DILocation(line: 686, column: 51, scope: !1269)
!1296 = !DILocation(line: 686, column: 55, scope: !1269)
!1297 = !DILocation(line: 686, column: 60, scope: !1269)
!1298 = !DILocation(line: 686, column: 70, scope: !1269)
!1299 = !DILocation(line: 687, column: 63, scope: !1269)
!1300 = !DILocation(line: 686, column: 19, scope: !1269)
!1301 = !DILocation(line: 686, column: 17, scope: !1269)
!1302 = !DILocation(line: 689, column: 15, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1269, file: !232, line: 689, column: 15)
!1304 = !DILocation(line: 689, column: 21, scope: !1303)
!1305 = !DILocation(line: 689, column: 36, scope: !1303)
!1306 = !DILocation(line: 689, column: 39, scope: !1307)
!1307 = !DILexicalBlockFile(scope: !1303, file: !232, discriminator: 1)
!1308 = !DILocation(line: 689, column: 49, scope: !1307)
!1309 = !DILocation(line: 689, column: 53, scope: !1307)
!1310 = !DILocation(line: 689, column: 59, scope: !1307)
!1311 = !DILocation(line: 689, column: 56, scope: !1307)
!1312 = !DILocation(line: 689, column: 63, scope: !1307)
!1313 = !DILocation(line: 689, column: 67, scope: !1314)
!1314 = !DILexicalBlockFile(scope: !1303, file: !232, discriminator: 2)
!1315 = !DILocation(line: 689, column: 15, scope: !1314)
!1316 = !DILocation(line: 693, column: 20, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1303, file: !232, line: 689, column: 77)
!1318 = !DILocation(line: 694, column: 11, scope: !1317)
!1319 = !DILocation(line: 695, column: 15, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1269, file: !232, line: 695, column: 15)
!1321 = !DILocation(line: 695, column: 23, scope: !1320)
!1322 = !DILocation(line: 695, column: 21, scope: !1320)
!1323 = !DILocation(line: 695, column: 15, scope: !1269)
!1324 = !DILocation(line: 696, column: 21, scope: !1320)
!1325 = !DILocation(line: 696, column: 19, scope: !1320)
!1326 = !DILocation(line: 696, column: 13, scope: !1320)
!1327 = !DILocation(line: 697, column: 9, scope: !1269)
!1328 = !DILocation(line: 676, column: 25, scope: !1259)
!1329 = !DILocation(line: 676, column: 35, scope: !1259)
!1330 = !DILocation(line: 676, column: 23, scope: !1259)
!1331 = !DILocation(line: 674, column: 9, scope: !1332)
!1332 = !DILexicalBlockFile(scope: !1259, file: !232, discriminator: 2)
!1333 = distinct !{!1333, !1334}
!1334 = !DILocation(line: 674, column: 9, scope: !1252)
!1335 = !DILocation(line: 698, column: 7, scope: !1252)
!1336 = !DILocation(line: 699, column: 45, scope: !1193)
!1337 = !DILocation(line: 699, column: 7, scope: !1193)
!1338 = !DILocation(line: 700, column: 11, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1193, file: !232, line: 700, column: 11)
!1340 = !DILocation(line: 700, column: 19, scope: !1339)
!1341 = !DILocation(line: 700, column: 17, scope: !1339)
!1342 = !DILocation(line: 700, column: 11, scope: !1193)
!1343 = !DILocation(line: 700, column: 33, scope: !1344)
!1344 = !DILexicalBlockFile(scope: !1339, file: !232, discriminator: 1)
!1345 = !DILocation(line: 700, column: 31, scope: !1344)
!1346 = !DILocation(line: 700, column: 26, scope: !1344)
!1347 = !DILocation(line: 701, column: 5, scope: !1193)
!1348 = !DILocation(line: 649, column: 65, scope: !1349)
!1349 = !DILexicalBlockFile(scope: !1184, file: !232, discriminator: 4)
!1350 = !DILocation(line: 649, column: 72, scope: !1349)
!1351 = !DILocation(line: 649, column: 63, scope: !1349)
!1352 = !DILocation(line: 649, column: 5, scope: !1349)
!1353 = distinct !{!1353, !1354}
!1354 = !DILocation(line: 649, column: 5, scope: !1161)
!1355 = !DILocation(line: 702, column: 9, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1161, file: !232, line: 702, column: 9)
!1357 = !DILocation(line: 702, column: 9, scope: !1161)
!1358 = !DILocation(line: 703, column: 15, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1356, file: !232, line: 702, column: 34)
!1360 = !DILocation(line: 703, column: 13, scope: !1359)
!1361 = !DILocation(line: 704, column: 11, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1359, file: !232, line: 704, column: 11)
!1363 = !DILocation(line: 704, column: 19, scope: !1362)
!1364 = !DILocation(line: 704, column: 17, scope: !1362)
!1365 = !DILocation(line: 704, column: 11, scope: !1359)
!1366 = !DILocation(line: 705, column: 17, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1362, file: !232, line: 704, column: 26)
!1368 = !DILocation(line: 705, column: 15, scope: !1367)
!1369 = !DILocation(line: 706, column: 73, scope: !1367)
!1370 = !DILocation(line: 706, column: 9, scope: !1367)
!1371 = !DILocation(line: 707, column: 7, scope: !1367)
!1372 = !DILocation(line: 708, column: 5, scope: !1359)
!1373 = !DILocation(line: 710, column: 11, scope: !1161)
!1374 = !DILocation(line: 710, column: 18, scope: !1161)
!1375 = !DILocation(line: 711, column: 11, scope: !1161)
!1376 = !DILocation(line: 711, column: 36, scope: !1377)
!1377 = !DILexicalBlockFile(scope: !1161, file: !232, discriminator: 1)
!1378 = !DILocation(line: 711, column: 27, scope: !1377)
!1379 = !DILocation(line: 711, column: 11, scope: !1377)
!1380 = !DILocation(line: 711, column: 11, scope: !1381)
!1381 = !DILexicalBlockFile(scope: !1161, file: !232, discriminator: 2)
!1382 = !DILocation(line: 711, column: 11, scope: !1383)
!1383 = !DILexicalBlockFile(scope: !1161, file: !232, discriminator: 3)
!1384 = !DILocation(line: 709, column: 5, scope: !1161)
!1385 = !DILocation(line: 712, column: 9, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1161, file: !232, line: 712, column: 9)
!1387 = !DILocation(line: 712, column: 18, scope: !1386)
!1388 = !DILocation(line: 712, column: 22, scope: !1389)
!1389 = !DILexicalBlockFile(scope: !1386, file: !232, discriminator: 1)
!1390 = !DILocation(line: 712, column: 9, scope: !1389)
!1391 = !DILocation(line: 712, column: 31, scope: !1392)
!1392 = !DILexicalBlockFile(scope: !1386, file: !232, discriminator: 2)
!1393 = !DILocation(line: 713, column: 13, scope: !1161)
!1394 = !DILocation(line: 713, column: 5, scope: !1161)
!1395 = !DILocation(line: 715, column: 26, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1161, file: !232, line: 713, column: 20)
!1397 = !DILocation(line: 716, column: 10, scope: !1396)
!1398 = !DILocation(line: 716, column: 7, scope: !1396)
!1399 = !DILocation(line: 719, column: 22, scope: !1396)
!1400 = !DILocation(line: 719, column: 7, scope: !1396)
!1401 = !DILocation(line: 720, column: 30, scope: !1396)
!1402 = !DILocation(line: 720, column: 38, scope: !1396)
!1403 = !DILocation(line: 720, column: 44, scope: !1396)
!1404 = !DILocation(line: 720, column: 49, scope: !1396)
!1405 = !DILocation(line: 720, column: 7, scope: !1396)
!1406 = !DILocation(line: 721, column: 22, scope: !1396)
!1407 = !DILocation(line: 721, column: 30, scope: !1396)
!1408 = !DILocation(line: 721, column: 62, scope: !1409)
!1409 = !DILexicalBlockFile(scope: !1396, file: !232, discriminator: 1)
!1410 = !DILocation(line: 721, column: 55, scope: !1411)
!1411 = !DILexicalBlockFile(scope: !1396, file: !232, discriminator: 2)
!1412 = !DILocation(line: 721, column: 7, scope: !1413)
!1413 = !DILexicalBlockFile(scope: !1396, file: !232, discriminator: 3)
!1414 = !DILocation(line: 722, column: 24, scope: !1396)
!1415 = !DILocation(line: 722, column: 32, scope: !1396)
!1416 = !DILocation(line: 722, column: 7, scope: !1396)
!1417 = !DILocation(line: 723, column: 11, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1396, file: !232, line: 723, column: 11)
!1419 = !DILocation(line: 723, column: 11, scope: !1396)
!1420 = !DILocation(line: 726, column: 9, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1418, file: !232, line: 723, column: 32)
!1422 = !DILocation(line: 727, column: 24, scope: !1421)
!1423 = !DILocation(line: 727, column: 32, scope: !1421)
!1424 = !DILocation(line: 727, column: 64, scope: !1425)
!1425 = !DILexicalBlockFile(scope: !1421, file: !232, discriminator: 1)
!1426 = !DILocation(line: 727, column: 57, scope: !1427)
!1427 = !DILexicalBlockFile(scope: !1421, file: !232, discriminator: 2)
!1428 = !DILocation(line: 727, column: 9, scope: !1429)
!1429 = !DILexicalBlockFile(scope: !1421, file: !232, discriminator: 3)
!1430 = !DILocation(line: 728, column: 24, scope: !1421)
!1431 = !DILocation(line: 728, column: 39, scope: !1421)
!1432 = !DILocation(line: 728, column: 58, scope: !1421)
!1433 = !DILocation(line: 728, column: 44, scope: !1421)
!1434 = !DILocation(line: 728, column: 9, scope: !1425)
!1435 = !DILocation(line: 729, column: 7, scope: !1421)
!1436 = !DILocation(line: 730, column: 24, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1418, file: !232, line: 729, column: 14)
!1438 = !DILocation(line: 730, column: 9, scope: !1437)
!1439 = !DILocation(line: 732, column: 7, scope: !1396)
!1440 = !DILocation(line: 734, column: 11, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1396, file: !232, line: 734, column: 11)
!1442 = !DILocation(line: 734, column: 11, scope: !1396)
!1443 = !DILocation(line: 735, column: 24, scope: !1441)
!1444 = !DILocation(line: 735, column: 22, scope: !1441)
!1445 = !DILocation(line: 735, column: 9, scope: !1441)
!1446 = !DILocation(line: 737, column: 28, scope: !1441)
!1447 = !DILocation(line: 738, column: 11, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1396, file: !232, line: 738, column: 11)
!1449 = !DILocation(line: 738, column: 14, scope: !1448)
!1450 = !DILocation(line: 738, column: 11, scope: !1396)
!1451 = !DILocation(line: 739, column: 12, scope: !1448)
!1452 = !DILocation(line: 739, column: 9, scope: !1448)
!1453 = !DILocation(line: 740, column: 7, scope: !1396)
!1454 = !DILocation(line: 742, column: 7, scope: !1396)
!1455 = !DILocation(line: 744, column: 81, scope: !1396)
!1456 = !DILocation(line: 744, column: 7, scope: !1396)
!1457 = !DILocation(line: 746, column: 3, scope: !1161)
!1458 = !DILocation(line: 642, column: 47, scope: !1459)
!1459 = !DILexicalBlockFile(scope: !1157, file: !232, discriminator: 2)
!1460 = !DILocation(line: 642, column: 52, scope: !1459)
!1461 = !DILocation(line: 642, column: 45, scope: !1459)
!1462 = !DILocation(line: 642, column: 3, scope: !1459)
!1463 = distinct !{!1463, !1464}
!1464 = !DILocation(line: 642, column: 3, scope: !1100)
!1465 = !DILocation(line: 747, column: 7, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1100, file: !232, line: 747, column: 7)
!1467 = !DILocation(line: 747, column: 10, scope: !1466)
!1468 = !DILocation(line: 747, column: 28, scope: !1466)
!1469 = !DILocation(line: 748, column: 8, scope: !1466)
!1470 = !DILocation(line: 748, column: 13, scope: !1466)
!1471 = !DILocation(line: 748, column: 24, scope: !1466)
!1472 = !DILocation(line: 748, column: 27, scope: !1473)
!1473 = !DILexicalBlockFile(scope: !1466, file: !232, discriminator: 1)
!1474 = !DILocation(line: 748, column: 32, scope: !1473)
!1475 = !DILocation(line: 748, column: 44, scope: !1473)
!1476 = !DILocation(line: 748, column: 51, scope: !1473)
!1477 = !DILocation(line: 747, column: 7, scope: !1139)
!1478 = !DILocation(line: 749, column: 8, scope: !1466)
!1479 = !DILocation(line: 749, column: 5, scope: !1466)
!1480 = !DILocation(line: 750, column: 8, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1100, file: !232, line: 750, column: 7)
!1482 = !DILocation(line: 750, column: 27, scope: !1481)
!1483 = !DILocation(line: 750, column: 30, scope: !1484)
!1484 = !DILexicalBlockFile(scope: !1481, file: !232, discriminator: 1)
!1485 = !DILocation(line: 750, column: 7, scope: !1484)
!1486 = !DILocation(line: 751, column: 27, scope: !1481)
!1487 = !DILocation(line: 751, column: 25, scope: !1481)
!1488 = !DILocation(line: 751, column: 5, scope: !1481)
!1489 = !DILocation(line: 753, column: 3, scope: !1100)
!1490 = !DILocation(line: 754, column: 43, scope: !1100)
!1491 = !DILocation(line: 754, column: 52, scope: !1100)
!1492 = !DILocation(line: 754, column: 60, scope: !1100)
!1493 = !DILocation(line: 754, column: 47, scope: !1100)
!1494 = !DILocation(line: 754, column: 66, scope: !1100)
!1495 = !DILocation(line: 754, column: 74, scope: !1100)
!1496 = !DILocation(line: 754, column: 3, scope: !1100)
!1497 = !DILocation(line: 755, column: 10, scope: !1100)
!1498 = !DILocation(line: 755, column: 3, scope: !1100)
!1499 = distinct !DISubprogram(name: "deppossi_ok_found", scope: !232, file: !232, line: 375, type: !1500, isLocal: true, isDefinition: true, scopeLine: 380, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !471)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{!231, !255, !255, !255, !272, !1502, !1503, !272, !1504, !981}
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64, align: 64)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64, align: 64)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64, align: 64)
!1505 = !DILocalVariable(name: "possdependee", arg: 1, scope: !1499, file: !232, line: 375, type: !255)
!1506 = !DILocation(line: 375, column: 35, scope: !1499)
!1507 = !DILocalVariable(name: "requiredby", arg: 2, scope: !1499, file: !232, line: 375, type: !255)
!1508 = !DILocation(line: 375, column: 65, scope: !1499)
!1509 = !DILocalVariable(name: "removing", arg: 3, scope: !1499, file: !232, line: 376, type: !255)
!1510 = !DILocation(line: 376, column: 35, scope: !1499)
!1511 = !DILocalVariable(name: "provider", arg: 4, scope: !1499, file: !232, line: 376, type: !272)
!1512 = !DILocation(line: 376, column: 62, scope: !1499)
!1513 = !DILocalVariable(name: "fixbytrig", arg: 5, scope: !1499, file: !232, line: 377, type: !1502)
!1514 = !DILocation(line: 377, column: 36, scope: !1499)
!1515 = !DILocalVariable(name: "matched", arg: 6, scope: !1499, file: !232, line: 378, type: !1503)
!1516 = !DILocation(line: 378, column: 24, scope: !1499)
!1517 = !DILocalVariable(name: "checkversion", arg: 7, scope: !1499, file: !232, line: 378, type: !272)
!1518 = !DILocation(line: 378, column: 50, scope: !1499)
!1519 = !DILocalVariable(name: "interestingwarnings", arg: 8, scope: !1499, file: !232, line: 379, type: !1504)
!1520 = !DILocation(line: 379, column: 24, scope: !1499)
!1521 = !DILocalVariable(name: "oemsgs", arg: 9, scope: !1499, file: !232, line: 379, type: !981)
!1522 = !DILocation(line: 379, column: 60, scope: !1499)
!1523 = !DILocalVariable(name: "thisf", scope: !1499, file: !232, line: 381, type: !231)
!1524 = !DILocation(line: 381, column: 21, scope: !1499)
!1525 = !DILocation(line: 383, column: 22, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1499, file: !232, line: 383, column: 7)
!1527 = !DILocation(line: 383, column: 7, scope: !1526)
!1528 = !DILocation(line: 383, column: 7, scope: !1499)
!1529 = !DILocation(line: 384, column: 5, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1526, file: !232, line: 383, column: 37)
!1531 = !DILocation(line: 385, column: 5, scope: !1530)
!1532 = !DILocation(line: 387, column: 9, scope: !1499)
!1533 = !DILocation(line: 388, column: 7, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1499, file: !232, line: 388, column: 7)
!1535 = !DILocation(line: 388, column: 23, scope: !1534)
!1536 = !DILocation(line: 388, column: 20, scope: !1534)
!1537 = !DILocation(line: 388, column: 7, scope: !1499)
!1538 = !DILocation(line: 389, column: 9, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1540, file: !232, line: 389, column: 9)
!1540 = distinct !DILexicalBlock(scope: !1534, file: !232, line: 388, column: 33)
!1541 = !DILocation(line: 389, column: 9, scope: !1540)
!1542 = !DILocation(line: 390, column: 21, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1539, file: !232, line: 389, column: 19)
!1544 = !DILocation(line: 391, column: 21, scope: !1543)
!1545 = !DILocation(line: 392, column: 30, scope: !1543)
!1546 = !DILocation(line: 392, column: 21, scope: !1543)
!1547 = !DILocation(line: 393, column: 21, scope: !1543)
!1548 = !DILocation(line: 393, column: 31, scope: !1543)
!1549 = !DILocation(line: 393, column: 35, scope: !1543)
!1550 = !DILocation(line: 390, column: 7, scope: !1543)
!1551 = !DILocation(line: 394, column: 5, scope: !1543)
!1552 = !DILocation(line: 395, column: 21, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1539, file: !232, line: 394, column: 12)
!1554 = !DILocation(line: 395, column: 29, scope: !1553)
!1555 = !DILocation(line: 396, column: 30, scope: !1553)
!1556 = !DILocation(line: 396, column: 21, scope: !1553)
!1557 = !DILocation(line: 395, column: 7, scope: !1558)
!1558 = !DILexicalBlockFile(scope: !1553, file: !232, discriminator: 1)
!1559 = !DILocation(line: 399, column: 6, scope: !1540)
!1560 = !DILocation(line: 399, column: 14, scope: !1540)
!1561 = !DILocation(line: 400, column: 72, scope: !1540)
!1562 = !DILocation(line: 400, column: 5, scope: !1540)
!1563 = !DILocation(line: 401, column: 12, scope: !1540)
!1564 = !DILocation(line: 401, column: 5, scope: !1540)
!1565 = !DILocation(line: 403, column: 11, scope: !1499)
!1566 = !DILocation(line: 403, column: 25, scope: !1499)
!1567 = !DILocation(line: 403, column: 3, scope: !1499)
!1568 = !DILocation(line: 409, column: 9, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1570, file: !232, line: 409, column: 9)
!1570 = distinct !DILexicalBlock(scope: !1499, file: !232, line: 403, column: 33)
!1571 = !DILocation(line: 409, column: 9, scope: !1570)
!1572 = !DILocation(line: 410, column: 11, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1574, file: !232, line: 410, column: 11)
!1574 = distinct !DILexicalBlock(scope: !1569, file: !232, line: 409, column: 23)
!1575 = !DILocation(line: 410, column: 11, scope: !1574)
!1576 = !DILocation(line: 412, column: 15, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1573, file: !232, line: 410, column: 21)
!1578 = !DILocation(line: 412, column: 29, scope: !1577)
!1579 = !DILocation(line: 412, column: 33, scope: !1577)
!1580 = !DILocation(line: 412, column: 48, scope: !1577)
!1581 = !DILocation(line: 412, column: 39, scope: !1577)
!1582 = !DILocation(line: 411, column: 9, scope: !1577)
!1583 = !DILocation(line: 413, column: 45, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1577, file: !232, line: 413, column: 13)
!1585 = !DILocation(line: 413, column: 59, scope: !1584)
!1586 = !DILocation(line: 413, column: 14, scope: !1584)
!1587 = !DILocation(line: 413, column: 13, scope: !1577)
!1588 = !DILocation(line: 414, column: 25, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1584, file: !232, line: 413, column: 70)
!1590 = !DILocation(line: 415, column: 25, scope: !1589)
!1591 = !DILocation(line: 416, column: 25, scope: !1589)
!1592 = !DILocation(line: 416, column: 39, scope: !1589)
!1593 = !DILocation(line: 416, column: 43, scope: !1589)
!1594 = !DILocation(line: 417, column: 34, scope: !1589)
!1595 = !DILocation(line: 417, column: 25, scope: !1589)
!1596 = !DILocation(line: 418, column: 42, scope: !1589)
!1597 = !DILocation(line: 418, column: 52, scope: !1589)
!1598 = !DILocation(line: 418, column: 25, scope: !1589)
!1599 = !DILocation(line: 414, column: 11, scope: !1589)
!1600 = !DILocation(line: 419, column: 15, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1589, file: !232, line: 419, column: 15)
!1602 = !DILocation(line: 419, column: 15, scope: !1589)
!1603 = !DILocation(line: 420, column: 21, scope: !1601)
!1604 = !DILocation(line: 420, column: 19, scope: !1601)
!1605 = !DILocation(line: 420, column: 13, scope: !1601)
!1606 = !DILocation(line: 421, column: 11, scope: !1589)
!1607 = !DILocation(line: 422, column: 11, scope: !1589)
!1608 = !DILocation(line: 424, column: 7, scope: !1577)
!1609 = !DILocation(line: 426, column: 24, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1573, file: !232, line: 424, column: 14)
!1611 = !DILocation(line: 426, column: 15, scope: !1610)
!1612 = !DILocation(line: 425, column: 9, scope: !1610)
!1613 = !DILocation(line: 427, column: 32, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1610, file: !232, line: 427, column: 13)
!1615 = !DILocation(line: 427, column: 46, scope: !1614)
!1616 = !DILocation(line: 427, column: 57, scope: !1614)
!1617 = !DILocation(line: 427, column: 14, scope: !1614)
!1618 = !DILocation(line: 427, column: 13, scope: !1610)
!1619 = !DILocation(line: 428, column: 25, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1614, file: !232, line: 427, column: 72)
!1621 = !DILocation(line: 428, column: 33, scope: !1620)
!1622 = !DILocation(line: 429, column: 34, scope: !1620)
!1623 = !DILocation(line: 429, column: 25, scope: !1620)
!1624 = !DILocation(line: 430, column: 42, scope: !1620)
!1625 = !DILocation(line: 430, column: 56, scope: !1620)
!1626 = !DILocation(line: 430, column: 66, scope: !1620)
!1627 = !DILocation(line: 430, column: 25, scope: !1620)
!1628 = !DILocation(line: 428, column: 11, scope: !1629)
!1629 = !DILexicalBlockFile(scope: !1620, file: !232, discriminator: 1)
!1630 = !DILocation(line: 432, column: 15, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1620, file: !232, line: 432, column: 15)
!1632 = !DILocation(line: 432, column: 15, scope: !1620)
!1633 = !DILocation(line: 433, column: 21, scope: !1631)
!1634 = !DILocation(line: 433, column: 19, scope: !1631)
!1635 = !DILocation(line: 433, column: 13, scope: !1631)
!1636 = !DILocation(line: 434, column: 11, scope: !1620)
!1637 = !DILocation(line: 435, column: 11, scope: !1620)
!1638 = !DILocation(line: 438, column: 5, scope: !1574)
!1639 = !DILocation(line: 439, column: 9, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1570, file: !232, line: 439, column: 9)
!1641 = !DILocation(line: 439, column: 23, scope: !1640)
!1642 = !DILocation(line: 439, column: 30, scope: !1640)
!1643 = !DILocation(line: 439, column: 52, scope: !1640)
!1644 = !DILocation(line: 440, column: 9, scope: !1640)
!1645 = !DILocation(line: 440, column: 23, scope: !1640)
!1646 = !DILocation(line: 440, column: 30, scope: !1640)
!1647 = !DILocation(line: 439, column: 9, scope: !1648)
!1648 = !DILexicalBlockFile(scope: !1570, file: !232, discriminator: 1)
!1649 = !DILocation(line: 441, column: 7, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1640, file: !232, line: 440, column: 59)
!1651 = !DILocation(line: 442, column: 7, scope: !1650)
!1652 = !DILocation(line: 444, column: 9, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1570, file: !232, line: 444, column: 9)
!1654 = !DILocation(line: 444, column: 23, scope: !1653)
!1655 = !DILocation(line: 444, column: 30, scope: !1653)
!1656 = !DILocation(line: 444, column: 9, scope: !1570)
!1657 = !DILocation(line: 445, column: 11, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1659, file: !232, line: 445, column: 11)
!1659 = distinct !DILexicalBlock(scope: !1653, file: !232, line: 444, column: 59)
!1660 = !DILocation(line: 445, column: 25, scope: !1658)
!1661 = !DILocation(line: 445, column: 32, scope: !1658)
!1662 = !DILocation(line: 445, column: 37, scope: !1658)
!1663 = !DILocation(line: 445, column: 11, scope: !1659)
!1664 = !DILocation(line: 446, column: 81, scope: !1658)
!1665 = !DILocation(line: 446, column: 72, scope: !1658)
!1666 = !DILocation(line: 446, column: 125, scope: !1658)
!1667 = !DILocation(line: 446, column: 109, scope: !1668)
!1668 = !DILexicalBlockFile(scope: !1658, file: !232, discriminator: 1)
!1669 = !DILocation(line: 446, column: 9, scope: !1670)
!1670 = !DILexicalBlockFile(scope: !1658, file: !232, discriminator: 2)
!1671 = !DILocation(line: 446, column: 9, scope: !1658)
!1672 = !DILocation(line: 450, column: 11, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1659, file: !232, line: 450, column: 11)
!1674 = !DILocation(line: 450, column: 20, scope: !1673)
!1675 = !DILocation(line: 451, column: 13, scope: !1673)
!1676 = !DILocation(line: 451, column: 24, scope: !1673)
!1677 = !DILocation(line: 452, column: 14, scope: !1673)
!1678 = !DILocation(line: 452, column: 28, scope: !1673)
!1679 = !DILocation(line: 452, column: 39, scope: !1673)
!1680 = !DILocation(line: 453, column: 14, scope: !1673)
!1681 = !DILocation(line: 453, column: 28, scope: !1673)
!1682 = !DILocation(line: 453, column: 40, scope: !1673)
!1683 = !DILocation(line: 453, column: 47, scope: !1673)
!1684 = !DILocation(line: 450, column: 11, scope: !1685)
!1685 = !DILexicalBlockFile(scope: !1659, file: !232, discriminator: 1)
!1686 = !DILocation(line: 454, column: 13, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1688, file: !232, line: 454, column: 13)
!1688 = distinct !DILexicalBlock(scope: !1673, file: !232, line: 453, column: 75)
!1689 = !DILocation(line: 454, column: 13, scope: !1688)
!1690 = !DILocation(line: 455, column: 25, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1687, file: !232, line: 454, column: 23)
!1692 = !DILocation(line: 456, column: 25, scope: !1691)
!1693 = !DILocation(line: 457, column: 34, scope: !1691)
!1694 = !DILocation(line: 457, column: 25, scope: !1691)
!1695 = !DILocation(line: 458, column: 25, scope: !1691)
!1696 = !DILocation(line: 458, column: 35, scope: !1691)
!1697 = !DILocation(line: 458, column: 39, scope: !1691)
!1698 = !DILocation(line: 455, column: 11, scope: !1691)
!1699 = !DILocation(line: 459, column: 9, scope: !1691)
!1700 = !DILocation(line: 460, column: 25, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1687, file: !232, line: 459, column: 16)
!1702 = !DILocation(line: 461, column: 25, scope: !1701)
!1703 = !DILocation(line: 462, column: 34, scope: !1701)
!1704 = !DILocation(line: 462, column: 25, scope: !1701)
!1705 = !DILocation(line: 460, column: 11, scope: !1701)
!1706 = !DILocation(line: 464, column: 9, scope: !1688)
!1707 = !DILocation(line: 465, column: 9, scope: !1688)
!1708 = !DILocation(line: 477, column: 20, scope: !1659)
!1709 = !DILocation(line: 477, column: 34, scope: !1659)
!1710 = !DILocation(line: 477, column: 41, scope: !1659)
!1711 = !DILocation(line: 477, column: 47, scope: !1659)
!1712 = !DILocation(line: 477, column: 8, scope: !1659)
!1713 = !DILocation(line: 477, column: 18, scope: !1659)
!1714 = !DILocation(line: 480, column: 23, scope: !1659)
!1715 = !DILocation(line: 480, column: 22, scope: !1659)
!1716 = !DILocation(line: 480, column: 13, scope: !1659)
!1717 = !DILocation(line: 478, column: 7, scope: !1659)
!1718 = !DILocation(line: 481, column: 7, scope: !1659)
!1719 = !DILocation(line: 483, column: 9, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1570, file: !232, line: 483, column: 9)
!1721 = !DILocation(line: 483, column: 23, scope: !1720)
!1722 = !DILocation(line: 483, column: 34, scope: !1720)
!1723 = !DILocation(line: 484, column: 9, scope: !1720)
!1724 = !DILocation(line: 484, column: 23, scope: !1720)
!1725 = !DILocation(line: 484, column: 35, scope: !1720)
!1726 = !DILocation(line: 484, column: 42, scope: !1720)
!1727 = !DILocation(line: 483, column: 9, scope: !1648)
!1728 = !DILocation(line: 485, column: 7, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1720, file: !232, line: 484, column: 68)
!1730 = !DILocation(line: 486, column: 7, scope: !1729)
!1731 = !DILocation(line: 487, column: 17, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1720, file: !232, line: 487, column: 16)
!1733 = !DILocation(line: 487, column: 26, scope: !1732)
!1734 = !DILocation(line: 487, column: 29, scope: !1735)
!1735 = !DILexicalBlockFile(scope: !1732, file: !232, discriminator: 1)
!1736 = !DILocation(line: 487, column: 59, scope: !1735)
!1737 = !DILocation(line: 488, column: 34, scope: !1732)
!1738 = !DILocation(line: 488, column: 17, scope: !1732)
!1739 = !DILocation(line: 488, column: 48, scope: !1732)
!1740 = !DILocation(line: 489, column: 18, scope: !1732)
!1741 = !DILocation(line: 489, column: 32, scope: !1732)
!1742 = !DILocation(line: 489, column: 39, scope: !1732)
!1743 = !DILocation(line: 487, column: 16, scope: !1744)
!1744 = !DILexicalBlockFile(scope: !1720, file: !232, discriminator: 2)
!1745 = !DILocation(line: 490, column: 14, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1732, file: !232, line: 489, column: 68)
!1747 = !DILocation(line: 491, column: 23, scope: !1746)
!1748 = !DILocation(line: 491, column: 14, scope: !1746)
!1749 = !DILocation(line: 492, column: 23, scope: !1746)
!1750 = !DILocation(line: 492, column: 14, scope: !1746)
!1751 = !DILocation(line: 490, column: 7, scope: !1752)
!1752 = !DILexicalBlockFile(scope: !1746, file: !232, discriminator: 1)
!1753 = !DILocation(line: 493, column: 23, scope: !1746)
!1754 = !DILocation(line: 493, column: 7, scope: !1746)
!1755 = !DILocation(line: 494, column: 20, scope: !1746)
!1756 = !DILocation(line: 495, column: 7, scope: !1746)
!1757 = !DILocation(line: 497, column: 11, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1759, file: !232, line: 497, column: 11)
!1759 = distinct !DILexicalBlock(scope: !1732, file: !232, line: 496, column: 12)
!1760 = !DILocation(line: 497, column: 11, scope: !1759)
!1761 = !DILocation(line: 498, column: 23, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1758, file: !232, line: 497, column: 21)
!1763 = !DILocation(line: 499, column: 23, scope: !1762)
!1764 = !DILocation(line: 500, column: 32, scope: !1762)
!1765 = !DILocation(line: 500, column: 23, scope: !1762)
!1766 = !DILocation(line: 501, column: 23, scope: !1762)
!1767 = !DILocation(line: 501, column: 33, scope: !1762)
!1768 = !DILocation(line: 501, column: 37, scope: !1762)
!1769 = !DILocation(line: 498, column: 9, scope: !1762)
!1770 = !DILocation(line: 502, column: 7, scope: !1762)
!1771 = !DILocation(line: 503, column: 23, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1758, file: !232, line: 502, column: 14)
!1773 = !DILocation(line: 503, column: 31, scope: !1772)
!1774 = !DILocation(line: 504, column: 32, scope: !1772)
!1775 = !DILocation(line: 504, column: 23, scope: !1772)
!1776 = !DILocation(line: 503, column: 9, scope: !1777)
!1777 = !DILexicalBlockFile(scope: !1772, file: !232, discriminator: 1)
!1778 = !DILocation(line: 507, column: 7, scope: !1759)
!1779 = !DILocation(line: 508, column: 7, scope: !1759)
!1780 = !DILocation(line: 512, column: 9, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1570, file: !232, line: 512, column: 9)
!1782 = !DILocation(line: 512, column: 9, scope: !1570)
!1783 = !DILocation(line: 513, column: 21, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1781, file: !232, line: 512, column: 19)
!1785 = !DILocation(line: 514, column: 21, scope: !1784)
!1786 = !DILocation(line: 515, column: 30, scope: !1784)
!1787 = !DILocation(line: 515, column: 21, scope: !1784)
!1788 = !DILocation(line: 516, column: 21, scope: !1784)
!1789 = !DILocation(line: 516, column: 31, scope: !1784)
!1790 = !DILocation(line: 516, column: 35, scope: !1784)
!1791 = !DILocation(line: 513, column: 7, scope: !1784)
!1792 = !DILocation(line: 517, column: 5, scope: !1784)
!1793 = !DILocation(line: 518, column: 21, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1781, file: !232, line: 517, column: 12)
!1795 = !DILocation(line: 518, column: 29, scope: !1794)
!1796 = !DILocation(line: 519, column: 30, scope: !1794)
!1797 = !DILocation(line: 519, column: 21, scope: !1794)
!1798 = !DILocation(line: 518, column: 7, scope: !1799)
!1799 = !DILexicalBlockFile(scope: !1794, file: !232, discriminator: 1)
!1800 = !DILocation(line: 522, column: 5, scope: !1570)
!1801 = !DILocation(line: 523, column: 5, scope: !1570)
!1802 = !DILocation(line: 527, column: 51, scope: !1499)
!1803 = !DILocation(line: 527, column: 3, scope: !1499)
!1804 = !DILocation(line: 528, column: 5, scope: !1499)
!1805 = !DILocation(line: 528, column: 25, scope: !1499)
!1806 = !DILocation(line: 530, column: 10, scope: !1499)
!1807 = !DILocation(line: 530, column: 3, scope: !1499)
!1808 = !DILocation(line: 531, column: 1, scope: !1499)
!1809 = distinct !DISubprogram(name: "found_forced_on", scope: !232, file: !232, line: 355, type: !1810, isLocal: true, isDefinition: true, scopeLine: 356, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !471)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{!231, !3}
!1812 = !DILocalVariable(name: "dependtry_forced", arg: 1, scope: !1809, file: !232, line: 355, type: !3)
!1813 = !DILocation(line: 355, column: 32, scope: !1809)
!1814 = !DILocation(line: 357, column: 7, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1809, file: !232, line: 357, column: 7)
!1816 = !DILocation(line: 357, column: 20, scope: !1815)
!1817 = !DILocation(line: 357, column: 17, scope: !1815)
!1818 = !DILocation(line: 357, column: 7, scope: !1809)
!1819 = !DILocation(line: 358, column: 5, scope: !1815)
!1820 = !DILocation(line: 360, column: 5, scope: !1815)
!1821 = !DILocation(line: 361, column: 1, scope: !1809)
!1822 = distinct !DISubprogram(name: "breaks_check_one", scope: !232, file: !232, line: 534, type: !1823, isLocal: true, isDefinition: true, scopeLine: 537, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !471)
!1823 = !DISubroutineType(types: !1824)
!1824 = !{null, !981, !1050, !272, !255, !255, !272}
!1825 = !DILocalVariable(name: "aemsgs", arg: 1, scope: !1822, file: !232, line: 534, type: !981)
!1826 = !DILocation(line: 534, column: 33, scope: !1822)
!1827 = !DILocalVariable(name: "ok", arg: 2, scope: !1822, file: !232, line: 534, type: !1050)
!1828 = !DILocation(line: 534, column: 57, scope: !1822)
!1829 = !DILocalVariable(name: "breaks", arg: 3, scope: !1822, file: !232, line: 535, type: !272)
!1830 = !DILocation(line: 535, column: 35, scope: !1822)
!1831 = !DILocalVariable(name: "broken", arg: 4, scope: !1822, file: !232, line: 535, type: !255)
!1832 = !DILocation(line: 535, column: 59, scope: !1822)
!1833 = !DILocalVariable(name: "breaker", arg: 5, scope: !1822, file: !232, line: 536, type: !255)
!1834 = !DILocation(line: 536, column: 34, scope: !1822)
!1835 = !DILocalVariable(name: "virtbroken", arg: 6, scope: !1822, file: !232, line: 536, type: !272)
!1836 = !DILocation(line: 536, column: 60, scope: !1822)
!1837 = !DILocalVariable(name: "depmsg", scope: !1822, file: !232, line: 538, type: !982)
!1838 = !DILocation(line: 538, column: 17, scope: !1822)
!1839 = !DILocation(line: 541, column: 18, scope: !1822)
!1840 = !DILocation(line: 541, column: 9, scope: !1822)
!1841 = !DILocation(line: 542, column: 9, scope: !1822)
!1842 = !DILocation(line: 542, column: 22, scope: !1843)
!1843 = !DILexicalBlockFile(scope: !1822, file: !232, discriminator: 1)
!1844 = !DILocation(line: 542, column: 34, scope: !1843)
!1845 = !DILocation(line: 542, column: 38, scope: !1843)
!1846 = !DILocation(line: 542, column: 9, scope: !1843)
!1847 = !DILocation(line: 542, column: 9, scope: !1848)
!1848 = !DILexicalBlockFile(scope: !1822, file: !232, discriminator: 2)
!1849 = !DILocation(line: 542, column: 9, scope: !1850)
!1850 = !DILexicalBlockFile(scope: !1822, file: !232, discriminator: 3)
!1851 = !DILocation(line: 540, column: 3, scope: !1822)
!1852 = !DILocation(line: 544, column: 7, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1822, file: !232, line: 544, column: 7)
!1854 = !DILocation(line: 544, column: 16, scope: !1853)
!1855 = !DILocation(line: 544, column: 23, scope: !1853)
!1856 = !DILocation(line: 544, column: 48, scope: !1853)
!1857 = !DILocation(line: 545, column: 7, scope: !1853)
!1858 = !DILocation(line: 545, column: 16, scope: !1853)
!1859 = !DILocation(line: 545, column: 23, scope: !1853)
!1860 = !DILocation(line: 544, column: 7, scope: !1843)
!1861 = !DILocation(line: 546, column: 5, scope: !1853)
!1862 = !DILocation(line: 547, column: 7, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1822, file: !232, line: 547, column: 7)
!1864 = !DILocation(line: 547, column: 17, scope: !1863)
!1865 = !DILocation(line: 547, column: 14, scope: !1863)
!1866 = !DILocation(line: 547, column: 7, scope: !1822)
!1867 = !DILocation(line: 547, column: 26, scope: !1868)
!1868 = !DILexicalBlockFile(scope: !1863, file: !232, discriminator: 1)
!1869 = !DILocation(line: 548, column: 26, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1822, file: !232, line: 548, column: 7)
!1871 = !DILocation(line: 548, column: 34, scope: !1870)
!1872 = !DILocation(line: 548, column: 45, scope: !1870)
!1873 = !DILocation(line: 548, column: 8, scope: !1870)
!1874 = !DILocation(line: 548, column: 7, scope: !1822)
!1875 = !DILocation(line: 548, column: 54, scope: !1876)
!1876 = !DILexicalBlockFile(scope: !1870, file: !232, discriminator: 1)
!1877 = !DILocation(line: 551, column: 23, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1822, file: !232, line: 551, column: 7)
!1879 = !DILocation(line: 551, column: 31, scope: !1878)
!1880 = !DILocation(line: 551, column: 42, scope: !1878)
!1881 = !DILocation(line: 551, column: 8, scope: !1878)
!1882 = !DILocation(line: 551, column: 7, scope: !1822)
!1883 = !DILocation(line: 552, column: 5, scope: !1878)
!1884 = !DILocation(line: 553, column: 22, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1822, file: !232, line: 553, column: 7)
!1886 = !DILocation(line: 553, column: 7, scope: !1885)
!1887 = !DILocation(line: 553, column: 7, scope: !1822)
!1888 = !DILocation(line: 553, column: 32, scope: !1889)
!1889 = !DILexicalBlockFile(scope: !1885, file: !232, discriminator: 1)
!1890 = !DILocation(line: 554, column: 7, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1822, file: !232, line: 554, column: 7)
!1892 = !DILocation(line: 554, column: 18, scope: !1891)
!1893 = !DILocation(line: 554, column: 37, scope: !1894)
!1894 = !DILexicalBlockFile(scope: !1891, file: !232, discriminator: 1)
!1895 = !DILocation(line: 554, column: 49, scope: !1894)
!1896 = !DILocation(line: 554, column: 53, scope: !1894)
!1897 = !DILocation(line: 554, column: 21, scope: !1894)
!1898 = !DILocation(line: 554, column: 7, scope: !1894)
!1899 = !DILocation(line: 555, column: 5, scope: !1891)
!1900 = !DILocation(line: 556, column: 7, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1822, file: !232, line: 556, column: 7)
!1902 = !DILocation(line: 556, column: 18, scope: !1901)
!1903 = !DILocation(line: 556, column: 53, scope: !1904)
!1904 = !DILexicalBlockFile(scope: !1901, file: !232, discriminator: 1)
!1905 = !DILocation(line: 556, column: 61, scope: !1904)
!1906 = !DILocation(line: 556, column: 22, scope: !1904)
!1907 = !DILocation(line: 556, column: 7, scope: !1904)
!1908 = !DILocation(line: 557, column: 5, scope: !1901)
!1909 = !DILocation(line: 559, column: 29, scope: !1822)
!1910 = !DILocation(line: 559, column: 37, scope: !1822)
!1911 = !DILocation(line: 559, column: 3, scope: !1822)
!1912 = !DILocation(line: 560, column: 3, scope: !1822)
!1913 = !DILocation(line: 561, column: 17, scope: !1822)
!1914 = !DILocation(line: 561, column: 25, scope: !1822)
!1915 = !DILocation(line: 562, column: 26, scope: !1822)
!1916 = !DILocation(line: 562, column: 17, scope: !1822)
!1917 = !DILocation(line: 563, column: 34, scope: !1822)
!1918 = !DILocation(line: 563, column: 43, scope: !1822)
!1919 = !DILocation(line: 563, column: 53, scope: !1822)
!1920 = !DILocation(line: 563, column: 17, scope: !1822)
!1921 = !DILocation(line: 564, column: 24, scope: !1822)
!1922 = !DILocation(line: 564, column: 51, scope: !1822)
!1923 = !DILocation(line: 564, column: 60, scope: !1822)
!1924 = !DILocation(line: 564, column: 37, scope: !1822)
!1925 = !DILocation(line: 564, column: 29, scope: !1822)
!1926 = !DILocation(line: 561, column: 3, scope: !1843)
!1927 = !DILocation(line: 565, column: 3, scope: !1822)
!1928 = !DILocation(line: 567, column: 7, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1822, file: !232, line: 567, column: 7)
!1930 = !DILocation(line: 567, column: 7, scope: !1822)
!1931 = !DILocation(line: 568, column: 19, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1929, file: !232, line: 567, column: 19)
!1933 = !DILocation(line: 568, column: 27, scope: !1932)
!1934 = !DILocation(line: 569, column: 28, scope: !1932)
!1935 = !DILocation(line: 569, column: 19, scope: !1932)
!1936 = !DILocation(line: 570, column: 36, scope: !1932)
!1937 = !DILocation(line: 570, column: 44, scope: !1932)
!1938 = !DILocation(line: 570, column: 54, scope: !1932)
!1939 = !DILocation(line: 570, column: 19, scope: !1932)
!1940 = !DILocation(line: 571, column: 19, scope: !1932)
!1941 = !DILocation(line: 571, column: 31, scope: !1932)
!1942 = !DILocation(line: 571, column: 35, scope: !1932)
!1943 = !DILocation(line: 568, column: 5, scope: !1944)
!1944 = !DILexicalBlockFile(scope: !1932, file: !232, discriminator: 1)
!1945 = !DILocation(line: 572, column: 3, scope: !1932)
!1946 = !DILocation(line: 572, column: 14, scope: !1947)
!1947 = !DILexicalBlockFile(scope: !1948, file: !232, discriminator: 1)
!1948 = distinct !DILexicalBlock(scope: !1929, file: !232, line: 572, column: 14)
!1949 = !DILocation(line: 572, column: 22, scope: !1947)
!1950 = !DILocation(line: 572, column: 29, scope: !1947)
!1951 = !DILocation(line: 573, column: 19, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1948, file: !232, line: 572, column: 52)
!1953 = !DILocation(line: 573, column: 27, scope: !1952)
!1954 = !DILocation(line: 574, column: 28, scope: !1952)
!1955 = !DILocation(line: 574, column: 19, scope: !1952)
!1956 = !DILocation(line: 575, column: 36, scope: !1952)
!1957 = !DILocation(line: 575, column: 44, scope: !1952)
!1958 = !DILocation(line: 575, column: 54, scope: !1952)
!1959 = !DILocation(line: 575, column: 19, scope: !1952)
!1960 = !DILocation(line: 573, column: 5, scope: !1961)
!1961 = !DILexicalBlockFile(scope: !1952, file: !232, discriminator: 1)
!1962 = !DILocation(line: 576, column: 9, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1952, file: !232, line: 576, column: 9)
!1964 = !DILocation(line: 576, column: 9, scope: !1952)
!1965 = !DILocation(line: 577, column: 7, scope: !1963)
!1966 = !DILocation(line: 578, column: 3, scope: !1952)
!1967 = !DILocation(line: 579, column: 20, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1822, file: !232, line: 579, column: 7)
!1969 = !DILocation(line: 579, column: 7, scope: !1968)
!1970 = !DILocation(line: 579, column: 7, scope: !1822)
!1971 = !DILocation(line: 579, column: 29, scope: !1972)
!1972 = !DILexicalBlockFile(scope: !1968, file: !232, discriminator: 1)
!1973 = !DILocation(line: 580, column: 4, scope: !1822)
!1974 = !DILocation(line: 580, column: 7, scope: !1822)
!1975 = !DILocation(line: 581, column: 1, scope: !1822)
!1976 = !DILocation(line: 581, column: 1, scope: !1843)
