; ModuleID = './[inter]src--script.o.i'
source_filename = "./[inter]src--script.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct.pkg_list = type { %struct.pkg_list*, %struct.pkginfo* }
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
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.command = type { i8*, i8*, i32, i32, i8** }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.varbuf = type { i64, i64, i8* }

@.str = private unnamed_addr constant [39 x i8] c"post_postinst_tasks - trig_incorporate\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"postinst\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"post-installation\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"new %s package %s script\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"maintscript_new nonexistent %s '%s'\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"unable to stat %s '%.250s'\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"old %s package %s script\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"maintscript_fallback nonexistent %s '%s'\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"unable to stat %s '%.250s': %s\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"trying script from the new package instead ...\00", align 1
@.str.10 = private unnamed_addr constant [65 x i8] c"there is no script in the new version of the package - giving up\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"... it looks like that went OK\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"installed %s package %s script\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"vmaintscript_installed nonexistent %s\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"post_script_tasks - ensure_diversions\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"post_script_tasks - trig_incorporate\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"DPKG_MAINTSCRIPT_PACKAGE\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"DPKG_MAINTSCRIPT_PACKAGE_REFCOUNT\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"DPKG_MAINTSCRIPT_ARCH\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"DPKG_MAINTSCRIPT_NAME\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"DPKG_MAINTSCRIPT_DEBUG\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"DPKG_RUNNING_VERSION\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"1.19.5-19-g1da50\00", align 1
@.str.26 = private unnamed_addr constant [39 x i8] c"unable to setenv for maintainer script\00", align 1
@.str.27 = private unnamed_addr constant [60 x i8] c"cannot set security execution context for maintainer script\00", align 1
@.str.28 = private unnamed_addr constant [46 x i8] c"unable to set execute permissions on '%.250s'\00", align 1
@instdir = external global i8*, align 8
@.str.29 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.30 = private unnamed_addr constant [58 x i8] c"admindir must be inside instdir for dpkg to work properly\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"DPKG_ADMINDIR\00", align 1
@.str.32 = private unnamed_addr constant [34 x i8] c"unable to setenv for subprocesses\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"DPKG_ROOT\00", align 1
@.str.34 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.35 = private unnamed_addr constant [112 x i8] c"not enough privileges to change root directory with --force-not-root, consider using --force-script-chrootless?\00", align 1
@.str.36 = private unnamed_addr constant [29 x i8] c"failed to chroot to '%.250s'\00", align 1
@.str.37 = private unnamed_addr constant [28 x i8] c"failed to chdir to '%.255s'\00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"fork/exec %s (%s )\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"script.c\00", align 1
@__func__.maintscript_pre_exec = private unnamed_addr constant [21 x i8] c"maintscript_pre_exec\00", align 1
@.str.40 = private unnamed_addr constant [50 x i8] c"maintscript name '%s' length < instdir length %zd\00", align 1

; Function Attrs: nounwind uwtable
define void @post_postinst_tasks(%struct.pkginfo*, i32) #0 !dbg !182 {
  %3 = alloca %struct.pkginfo*, align 8
  %4 = alloca i32, align 4
  store %struct.pkginfo* %0, %struct.pkginfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %3, metadata !403, metadata !404), !dbg !405
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !406, metadata !404), !dbg !407
  %5 = load i32, i32* %4, align 4, !dbg !408
  %6 = icmp ult i32 %5, 5, !dbg !410
  br i1 %6, label %7, label %10, !dbg !411

; <label>:7:                                      ; preds = %2
  %8 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !412
  %9 = load i32, i32* %4, align 4, !dbg !413
  call void @pkg_set_status(%struct.pkginfo* %8, i32 %9), !dbg !414
  br label %29, !dbg !414

; <label>:10:                                     ; preds = %2
  %11 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !415
  %12 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %11, i32 0, i32 13, !dbg !417
  %13 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 0, !dbg !418
  %14 = load %struct.trigaw*, %struct.trigaw** %13, align 8, !dbg !418
  %15 = icmp ne %struct.trigaw* %14, null, !dbg !415
  br i1 %15, label %16, label %18, !dbg !419

; <label>:16:                                     ; preds = %10
  %17 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !420
  call void @pkg_set_status(%struct.pkginfo* %17, i32 5), !dbg !421
  br label %28, !dbg !421

; <label>:18:                                     ; preds = %10
  %19 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !422
  %20 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %19, i32 0, i32 15, !dbg !424
  %21 = load %struct.trigpend*, %struct.trigpend** %20, align 8, !dbg !424
  %22 = icmp ne %struct.trigpend* %21, null, !dbg !422
  br i1 %22, label %23, label %25, !dbg !425

; <label>:23:                                     ; preds = %18
  %24 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !426
  call void @pkg_set_status(%struct.pkginfo* %24, i32 6), !dbg !427
  br label %27, !dbg !427

; <label>:25:                                     ; preds = %18
  %26 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !428
  call void @pkg_set_status(%struct.pkginfo* %26, i32 7), !dbg !429
  br label %27

; <label>:27:                                     ; preds = %25, %23
  br label %28

; <label>:28:                                     ; preds = %27, %16
  br label %29

; <label>:29:                                     ; preds = %28, %7
  %30 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !430
  call void @modstatdb_note(%struct.pkginfo* %30), !dbg !431
  call void (i32, i8*, ...) @debug(i32 8192, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i32 0, i32 0)), !dbg !432
  %31 = call i32 @modstatdb_get_status(), !dbg !433
  call void @trig_incorporate(i32 %31), !dbg !434
  ret void, !dbg !436
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @pkg_set_status(%struct.pkginfo*, i32) #2

declare void @modstatdb_note(%struct.pkginfo*) #2

declare void @debug(i32, i8*, ...) #2

declare void @trig_incorporate(i32) #2

declare i32 @modstatdb_get_status() #2

; Function Attrs: nounwind uwtable
define i32 @maintscript_installed(%struct.pkginfo*, i8*, i8*, ...) #0 !dbg !437 {
  %4 = alloca %struct.pkginfo*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  %8 = alloca i32, align 4
  store %struct.pkginfo* %0, %struct.pkginfo** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %4, metadata !440, metadata !404), !dbg !441
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !442, metadata !404), !dbg !443
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !444, metadata !404), !dbg !445
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !446, metadata !404), !dbg !461
  call void @llvm.dbg.declare(metadata i32* %8, metadata !462, metadata !404), !dbg !463
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0, !dbg !464
  %10 = bitcast %struct.__va_list_tag* %9 to i8*, !dbg !464
  call void @llvm.va_start(i8* %10), !dbg !464
  %11 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !465
  %12 = load i8*, i8** %5, align 8, !dbg !466
  %13 = load i8*, i8** %6, align 8, !dbg !467
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0, !dbg !468
  %15 = call i32 @vmaintscript_installed(%struct.pkginfo* %11, i8* %12, i8* %13, %struct.__va_list_tag* %14), !dbg !469
  store i32 %15, i32* %8, align 4, !dbg !470
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0, !dbg !471
  %17 = bitcast %struct.__va_list_tag* %16 to i8*, !dbg !471
  call void @llvm.va_end(i8* %17), !dbg !471
  %18 = load i32, i32* %8, align 4, !dbg !472
  %19 = icmp ne i32 %18, 0, !dbg !472
  br i1 %19, label %20, label %21, !dbg !474

; <label>:20:                                     ; preds = %3
  call void @post_script_tasks(), !dbg !475
  br label %21, !dbg !475

; <label>:21:                                     ; preds = %20, %3
  %22 = load i32, i32* %8, align 4, !dbg !476
  ret i32 %22, !dbg !477
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @vmaintscript_installed(%struct.pkginfo*, i8*, i8*, %struct.__va_list_tag*) #0 !dbg !478 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pkginfo*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.__va_list_tag*, align 8
  %10 = alloca %struct.command, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.stat, align 8
  %13 = alloca i8*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %6, metadata !482, metadata !404), !dbg !483
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !484, metadata !404), !dbg !485
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !486, metadata !404), !dbg !487
  store %struct.__va_list_tag* %3, %struct.__va_list_tag** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.__va_list_tag** %9, metadata !488, metadata !404), !dbg !489
  call void @llvm.dbg.declare(metadata %struct.command* %10, metadata !490, metadata !404), !dbg !500
  call void @llvm.dbg.declare(metadata i8** %11, metadata !501, metadata !404), !dbg !502
  call void @llvm.dbg.declare(metadata %struct.stat* %12, metadata !503, metadata !404), !dbg !535
  call void @llvm.dbg.declare(metadata i8** %13, metadata !536, metadata !404), !dbg !537
  %14 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !538
  %15 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !539
  %16 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %15, i32 0, i32 9, !dbg !540
  %17 = load i8*, i8** %7, align 8, !dbg !541
  %18 = call i8* @pkg_infodb_get_file(%struct.pkginfo* %14, %struct.pkgbin* %16, i8* %17), !dbg !542
  store i8* %18, i8** %11, align 8, !dbg !543
  %19 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i32 0, i32 0)) #3, !dbg !544
  %20 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !545
  %21 = call i8* @pkg_name(%struct.pkginfo* %20, i32 1), !dbg !546
  %22 = load i8*, i8** %8, align 8, !dbg !547
  %23 = call i32 (i8**, i8*, ...) @m_asprintf(i8** %13, i8* %19, i8* %21, i8* %22), !dbg !548
  %24 = load i8*, i8** %11, align 8, !dbg !550
  %25 = load i8*, i8** %13, align 8, !dbg !551
  call void @command_init(%struct.command* %10, i8* %24, i8* %25), !dbg !552
  %26 = load i8*, i8** %7, align 8, !dbg !553
  call void @command_add_arg(%struct.command* %10, i8* %26), !dbg !554
  %27 = load %struct.__va_list_tag*, %struct.__va_list_tag** %9, align 8, !dbg !555
  call void @command_add_argv(%struct.command* %10, %struct.__va_list_tag* %27), !dbg !556
  %28 = load i8*, i8** %11, align 8, !dbg !557
  %29 = call i32 @stat(i8* %28, %struct.stat* %12) #3, !dbg !559
  %30 = icmp ne i32 %29, 0, !dbg !559
  br i1 %30, label %31, label %42, !dbg !560

; <label>:31:                                     ; preds = %4
  call void @command_destroy(%struct.command* %10), !dbg !561
  %32 = call i32* @__errno_location() #1, !dbg !563
  %33 = load i32, i32* %32, align 4, !dbg !565
  %34 = icmp eq i32 %33, 2, !dbg !566
  br i1 %34, label %35, label %38, !dbg !567

; <label>:35:                                     ; preds = %31
  %36 = load i8*, i8** %7, align 8, !dbg !568
  call void (i32, i8*, ...) @debug(i32 2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i32 0, i32 0), i8* %36), !dbg !570
  %37 = load i8*, i8** %13, align 8, !dbg !571
  call void @free(i8* %37) #3, !dbg !572
  store i32 0, i32* %5, align 4, !dbg !573
  br label %48, !dbg !573

; <label>:38:                                     ; preds = %31
  %39 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0)) #3, !dbg !574
  %40 = load i8*, i8** %13, align 8, !dbg !575
  %41 = load i8*, i8** %11, align 8, !dbg !576
  call void (i8*, ...) @ohshite(i8* %39, i8* %40, i8* %41) #9, !dbg !577
  unreachable, !dbg !579

; <label>:42:                                     ; preds = %4
  %43 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !580
  %44 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !581
  %45 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %44, i32 0, i32 9, !dbg !582
  %46 = call i32 @maintscript_exec(%struct.pkginfo* %43, %struct.pkgbin* %45, %struct.command* %10, %struct.stat* %12, i32 0), !dbg !583
  call void @command_destroy(%struct.command* %10), !dbg !584
  %47 = load i8*, i8** %13, align 8, !dbg !585
  call void @free(i8* %47) #3, !dbg !586
  store i32 1, i32* %5, align 4, !dbg !587
  br label %48, !dbg !587

; <label>:48:                                     ; preds = %42, %35
  %49 = load i32, i32* %5, align 4, !dbg !588
  ret i32 %49, !dbg !588
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

; Function Attrs: nounwind uwtable
define internal void @post_script_tasks() #0 !dbg !589 {
  call void (i32, i8*, ...) @debug(i32 8192, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i32 0, i32 0)), !dbg !592
  call void @ensure_diversions(), !dbg !593
  call void (i32, i8*, ...) @debug(i32 8192, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i32 0, i32 0)), !dbg !594
  %1 = call i32 @modstatdb_get_status(), !dbg !595
  call void @trig_incorporate(i32 %1), !dbg !596
  ret void, !dbg !598
}

; Function Attrs: nounwind uwtable
define i32 @maintscript_postinst(%struct.pkginfo*, ...) #0 !dbg !599 {
  %2 = alloca %struct.pkginfo*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca i32, align 4
  store %struct.pkginfo* %0, %struct.pkginfo** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %2, metadata !602, metadata !404), !dbg !603
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !604, metadata !404), !dbg !605
  call void @llvm.dbg.declare(metadata i32* %4, metadata !606, metadata !404), !dbg !607
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !608
  %6 = bitcast %struct.__va_list_tag* %5 to i8*, !dbg !608
  call void @llvm.va_start(i8* %6), !dbg !608
  %7 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !609
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !610
  %9 = call i32 @vmaintscript_installed(%struct.pkginfo* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), %struct.__va_list_tag* %8), !dbg !611
  store i32 %9, i32* %4, align 4, !dbg !612
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !613
  %11 = bitcast %struct.__va_list_tag* %10 to i8*, !dbg !613
  call void @llvm.va_end(i8* %11), !dbg !613
  %12 = load i32, i32* %4, align 4, !dbg !614
  %13 = icmp ne i32 %12, 0, !dbg !614
  br i1 %13, label %14, label %15, !dbg !616

; <label>:14:                                     ; preds = %1
  call void @ensure_diversions(), !dbg !617
  br label %15, !dbg !617

; <label>:15:                                     ; preds = %14, %1
  %16 = load i32, i32* %4, align 4, !dbg !618
  ret i32 %16, !dbg !619
}

declare void @ensure_diversions() #2

; Function Attrs: nounwind uwtable
define i32 @maintscript_new(%struct.pkginfo*, i8*, i8*, i8*, i8*, ...) #0 !dbg !620 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pkginfo*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.command, align 8
  %13 = alloca %struct.stat, align 8
  %14 = alloca [1 x %struct.__va_list_tag], align 16
  %15 = alloca i8*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %7, metadata !623, metadata !404), !dbg !624
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !625, metadata !404), !dbg !626
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !627, metadata !404), !dbg !628
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !629, metadata !404), !dbg !630
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !631, metadata !404), !dbg !632
  call void @llvm.dbg.declare(metadata %struct.command* %12, metadata !633, metadata !404), !dbg !634
  call void @llvm.dbg.declare(metadata %struct.stat* %13, metadata !635, metadata !404), !dbg !636
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %14, metadata !637, metadata !404), !dbg !638
  call void @llvm.dbg.declare(metadata i8** %15, metadata !639, metadata !404), !dbg !640
  %16 = load i8*, i8** %11, align 8, !dbg !641
  %17 = load i8*, i8** %8, align 8, !dbg !642
  %18 = call i8* @strcpy(i8* %16, i8* %17) #3, !dbg !643
  %19 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0)) #3, !dbg !644
  %20 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !645
  %21 = call i8* @pkg_name(%struct.pkginfo* %20, i32 1), !dbg !646
  %22 = load i8*, i8** %9, align 8, !dbg !647
  %23 = call i32 (i8**, i8*, ...) @m_asprintf(i8** %15, i8* %19, i8* %21, i8* %22), !dbg !648
  %24 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %14, i32 0, i32 0, !dbg !650
  %25 = bitcast %struct.__va_list_tag* %24 to i8*, !dbg !650
  call void @llvm.va_start(i8* %25), !dbg !650
  %26 = load i8*, i8** %10, align 8, !dbg !651
  %27 = load i8*, i8** %15, align 8, !dbg !652
  call void @command_init(%struct.command* %12, i8* %26, i8* %27), !dbg !653
  %28 = load i8*, i8** %8, align 8, !dbg !654
  call void @command_add_arg(%struct.command* %12, i8* %28), !dbg !655
  %29 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %14, i32 0, i32 0, !dbg !656
  call void @command_add_argv(%struct.command* %12, %struct.__va_list_tag* %29), !dbg !657
  %30 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %14, i32 0, i32 0, !dbg !658
  %31 = bitcast %struct.__va_list_tag* %30 to i8*, !dbg !658
  call void @llvm.va_end(i8* %31), !dbg !658
  %32 = load i8*, i8** %10, align 8, !dbg !659
  %33 = call i32 @stat(i8* %32, %struct.stat* %13) #3, !dbg !661
  %34 = icmp ne i32 %33, 0, !dbg !661
  br i1 %34, label %35, label %47, !dbg !662

; <label>:35:                                     ; preds = %5
  call void @command_destroy(%struct.command* %12), !dbg !663
  %36 = call i32* @__errno_location() #1, !dbg !665
  %37 = load i32, i32* %36, align 4, !dbg !667
  %38 = icmp eq i32 %37, 2, !dbg !668
  br i1 %38, label %39, label %43, !dbg !669

; <label>:39:                                     ; preds = %35
  %40 = load i8*, i8** %8, align 8, !dbg !670
  %41 = load i8*, i8** %10, align 8, !dbg !672
  call void (i32, i8*, ...) @debug(i32 2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i32 0, i32 0), i8* %40, i8* %41), !dbg !673
  %42 = load i8*, i8** %15, align 8, !dbg !674
  call void @free(i8* %42) #3, !dbg !675
  store i32 0, i32* %6, align 4, !dbg !676
  br label %53, !dbg !676

; <label>:43:                                     ; preds = %35
  %44 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0)) #3, !dbg !677
  %45 = load i8*, i8** %15, align 8, !dbg !678
  %46 = load i8*, i8** %10, align 8, !dbg !679
  call void (i8*, ...) @ohshite(i8* %44, i8* %45, i8* %46) #9, !dbg !680
  unreachable, !dbg !682

; <label>:47:                                     ; preds = %5
  %48 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !683
  %49 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !684
  %50 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %49, i32 0, i32 10, !dbg !685
  %51 = call i32 @maintscript_exec(%struct.pkginfo* %48, %struct.pkgbin* %50, %struct.command* %12, %struct.stat* %13, i32 0), !dbg !686
  call void @command_destroy(%struct.command* %12), !dbg !687
  %52 = load i8*, i8** %15, align 8, !dbg !688
  call void @free(i8* %52) #3, !dbg !689
  call void @post_script_tasks(), !dbg !690
  store i32 1, i32* %6, align 4, !dbg !691
  br label %53, !dbg !691

; <label>:53:                                     ; preds = %47, %39
  %54 = load i32, i32* %6, align 4, !dbg !692
  ret i32 %54, !dbg !692
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #4

declare i32 @m_asprintf(i8**, i8*, ...) #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare i8* @pkg_name(%struct.pkginfo*, i32) #2

declare void @command_init(%struct.command*, i8*, i8*) #2

declare void @command_add_arg(%struct.command*, i8*) #2

declare void @command_add_argv(%struct.command*, %struct.__va_list_tag*) #2

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #4

declare void @command_destroy(%struct.command*) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: noreturn
declare void @ohshite(i8*, ...) #6

; Function Attrs: nounwind uwtable
define internal i32 @maintscript_exec(%struct.pkginfo*, %struct.pkgbin*, %struct.command*, %struct.stat*, i32) #0 !dbg !693 {
  %6 = alloca %struct.pkginfo*, align 8
  %7 = alloca %struct.pkgbin*, align 8
  %8 = alloca %struct.command*, align 8
  %9 = alloca %struct.stat*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %6, metadata !698, metadata !404), !dbg !699
  store %struct.pkgbin* %1, %struct.pkgbin** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %7, metadata !700, metadata !404), !dbg !701
  store %struct.command* %2, %struct.command** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.command** %8, metadata !702, metadata !404), !dbg !703
  store %struct.stat* %3, %struct.stat** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.stat** %9, metadata !704, metadata !404), !dbg !705
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !706, metadata !404), !dbg !707
  call void @llvm.dbg.declare(metadata i32* %11, metadata !708, metadata !404), !dbg !711
  call void @llvm.dbg.declare(metadata i32* %12, metadata !712, metadata !404), !dbg !713
  %15 = load %struct.command*, %struct.command** %8, align 8, !dbg !714
  %16 = getelementptr inbounds %struct.command, %struct.command* %15, i32 0, i32 1, !dbg !715
  %17 = load i8*, i8** %16, align 8, !dbg !715
  %18 = load %struct.stat*, %struct.stat** %9, align 8, !dbg !716
  call void @setexecute(i8* %17, %struct.stat* %18), !dbg !717
  call void (void (i32, i8**)*, i32, i32, ...) @push_cleanup(void (i32, i8**)* @cu_post_script_tasks, i32 2, i32 0), !dbg !718
  %19 = call i32 @subproc_fork(), !dbg !719
  store i32 %19, i32* %11, align 4, !dbg !720
  %20 = load i32, i32* %11, align 4, !dbg !721
  %21 = icmp eq i32 %20, 0, !dbg !723
  br i1 %21, label %22, label %82, !dbg !724

; <label>:22:                                     ; preds = %5
  call void @llvm.dbg.declare(metadata i8** %13, metadata !725, metadata !404), !dbg !727
  call void @llvm.dbg.declare(metadata i8** %14, metadata !728, metadata !404), !dbg !729
  %23 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !730
  %24 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %23, i32 0, i32 0, !dbg !731
  %25 = load %struct.pkgset*, %struct.pkgset** %24, align 8, !dbg !731
  %26 = call i32 @pkgset_installed_instances(%struct.pkgset* %25), !dbg !732
  %27 = call i8* (i8*, ...) @str_fmt(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i32 %26), !dbg !733
  store i8* %27, i8** %13, align 8, !dbg !735
  %28 = call zeroext i1 @debug_has_flag(i32 2), !dbg !736
  %29 = select i1 %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0), !dbg !736
  store i8* %29, i8** %14, align 8, !dbg !737
  %30 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !738
  %31 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %30, i32 0, i32 0, !dbg !740
  %32 = load %struct.pkgset*, %struct.pkgset** %31, align 8, !dbg !740
  %33 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %32, i32 0, i32 1, !dbg !741
  %34 = load i8*, i8** %33, align 8, !dbg !741
  %35 = call i32 @setenv(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i32 0, i32 0), i8* %34, i32 1) #3, !dbg !742
  %36 = icmp ne i32 %35, 0, !dbg !742
  br i1 %36, label %64, label %37, !dbg !743

; <label>:37:                                     ; preds = %22
  %38 = load i8*, i8** %13, align 8, !dbg !744
  %39 = call i32 @setenv(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.20, i32 0, i32 0), i8* %38, i32 1) #3, !dbg !745
  %40 = icmp ne i32 %39, 0, !dbg !745
  br i1 %40, label %64, label %41, !dbg !746

; <label>:41:                                     ; preds = %37
  %42 = load %struct.pkgbin*, %struct.pkgbin** %7, align 8, !dbg !747
  %43 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %42, i32 0, i32 3, !dbg !748
  %44 = load %struct.dpkg_arch*, %struct.dpkg_arch** %43, align 8, !dbg !748
  %45 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %44, i32 0, i32 1, !dbg !749
  %46 = load i8*, i8** %45, align 8, !dbg !749
  %47 = call i32 @setenv(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i32 0, i32 0), i8* %46, i32 1) #3, !dbg !750
  %48 = icmp ne i32 %47, 0, !dbg !750
  br i1 %48, label %64, label %49, !dbg !751

; <label>:49:                                     ; preds = %41
  %50 = load %struct.command*, %struct.command** %8, align 8, !dbg !752
  %51 = getelementptr inbounds %struct.command, %struct.command* %50, i32 0, i32 4, !dbg !753
  %52 = load i8**, i8*** %51, align 8, !dbg !753
  %53 = getelementptr inbounds i8*, i8** %52, i64 0, !dbg !752
  %54 = load i8*, i8** %53, align 8, !dbg !752
  %55 = call i32 @setenv(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i32 0, i32 0), i8* %54, i32 1) #3, !dbg !754
  %56 = icmp ne i32 %55, 0, !dbg !754
  br i1 %56, label %64, label %57, !dbg !755

; <label>:57:                                     ; preds = %49
  %58 = load i8*, i8** %14, align 8, !dbg !756
  %59 = call i32 @setenv(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i32 0, i32 0), i8* %58, i32 1) #3, !dbg !757
  %60 = icmp ne i32 %59, 0, !dbg !757
  br i1 %60, label %64, label %61, !dbg !758

; <label>:61:                                     ; preds = %57
  %62 = call i32 @setenv(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i32 0, i32 0), i32 1) #3, !dbg !759
  %63 = icmp ne i32 %62, 0, !dbg !759
  br i1 %63, label %64, label %66, !dbg !760

; <label>:64:                                     ; preds = %61, %57, %49, %41, %37, %22
  %65 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.26, i32 0, i32 0)) #3, !dbg !761
  call void (i8*, ...) @ohshite(i8* %65) #9, !dbg !762
  unreachable, !dbg !764

; <label>:66:                                     ; preds = %61
  %67 = load %struct.command*, %struct.command** %8, align 8, !dbg !765
  %68 = call i8* @maintscript_pre_exec(%struct.command* %67), !dbg !766
  %69 = load %struct.command*, %struct.command** %8, align 8, !dbg !767
  %70 = getelementptr inbounds %struct.command, %struct.command* %69, i32 0, i32 4, !dbg !768
  %71 = load i8**, i8*** %70, align 8, !dbg !768
  %72 = getelementptr inbounds i8*, i8** %71, i64 0, !dbg !767
  store i8* %68, i8** %72, align 8, !dbg !769
  %73 = load %struct.command*, %struct.command** %8, align 8, !dbg !770
  %74 = getelementptr inbounds %struct.command, %struct.command* %73, i32 0, i32 1, !dbg !771
  store i8* %68, i8** %74, align 8, !dbg !772
  %75 = load %struct.command*, %struct.command** %8, align 8, !dbg !773
  %76 = call i32 @maintscript_set_exec_context(%struct.command* %75), !dbg !775
  %77 = icmp slt i32 %76, 0, !dbg !776
  br i1 %77, label %78, label %80, !dbg !777

; <label>:78:                                     ; preds = %66
  %79 = call i8* @gettext(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.27, i32 0, i32 0)) #3, !dbg !778
  call void (i8*, ...) @ohshite(i8* %79) #9, !dbg !779
  unreachable, !dbg !781

; <label>:80:                                     ; preds = %66
  %81 = load %struct.command*, %struct.command** %8, align 8, !dbg !782
  call void @command_exec(%struct.command* %81) #9, !dbg !783
  unreachable, !dbg !783

; <label>:82:                                     ; preds = %5
  %83 = load %struct.command*, %struct.command** %8, align 8, !dbg !784
  %84 = getelementptr inbounds %struct.command, %struct.command* %83, i32 0, i32 0, !dbg !785
  %85 = load i8*, i8** %84, align 8, !dbg !785
  call void @subproc_signals_ignore(i8* %85), !dbg !786
  %86 = load i32, i32* %11, align 4, !dbg !787
  %87 = load %struct.command*, %struct.command** %8, align 8, !dbg !788
  %88 = getelementptr inbounds %struct.command, %struct.command* %87, i32 0, i32 0, !dbg !789
  %89 = load i8*, i8** %88, align 8, !dbg !789
  %90 = load i32, i32* %10, align 4, !dbg !790
  %91 = call i32 @subproc_reap(i32 %86, i8* %89, i32 %90), !dbg !791
  store i32 %91, i32* %12, align 4, !dbg !792
  call void @subproc_signals_restore(), !dbg !793
  call void @pop_cleanup(i32 1), !dbg !794
  %92 = load i32, i32* %12, align 4, !dbg !795
  ret i32 %92, !dbg !796
}

; Function Attrs: nounwind uwtable
define i32 @maintscript_fallback(%struct.pkginfo*, i8*, i8*, i8*, i8*, i8*, i8*) #0 !dbg !797 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.pkginfo*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.command, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.stat, align 8
  %19 = alloca i8*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %9, metadata !800, metadata !404), !dbg !801
  store i8* %1, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !802, metadata !404), !dbg !803
  store i8* %2, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !804, metadata !404), !dbg !805
  store i8* %3, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !806, metadata !404), !dbg !807
  store i8* %4, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !808, metadata !404), !dbg !809
  store i8* %5, i8** %14, align 8
  call void @llvm.dbg.declare(metadata i8** %14, metadata !810, metadata !404), !dbg !811
  store i8* %6, i8** %15, align 8
  call void @llvm.dbg.declare(metadata i8** %15, metadata !812, metadata !404), !dbg !813
  call void @llvm.dbg.declare(metadata %struct.command* %16, metadata !814, metadata !404), !dbg !815
  call void @llvm.dbg.declare(metadata i8** %17, metadata !816, metadata !404), !dbg !817
  call void @llvm.dbg.declare(metadata %struct.stat* %18, metadata !818, metadata !404), !dbg !819
  call void @llvm.dbg.declare(metadata i8** %19, metadata !820, metadata !404), !dbg !821
  %20 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !822
  %21 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !823
  %22 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %21, i32 0, i32 9, !dbg !824
  %23 = load i8*, i8** %10, align 8, !dbg !825
  %24 = call i8* @pkg_infodb_get_file(%struct.pkginfo* %20, %struct.pkgbin* %22, i8* %23), !dbg !826
  store i8* %24, i8** %17, align 8, !dbg !827
  %25 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i32 0, i32 0)) #3, !dbg !828
  %26 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !829
  %27 = call i8* @pkg_name(%struct.pkginfo* %26, i32 1), !dbg !830
  %28 = load i8*, i8** %11, align 8, !dbg !831
  %29 = call i32 (i8**, i8*, ...) @m_asprintf(i8** %19, i8* %25, i8* %27, i8* %28), !dbg !832
  %30 = load i8*, i8** %17, align 8, !dbg !834
  %31 = load i8*, i8** %19, align 8, !dbg !835
  call void @command_init(%struct.command* %16, i8* %30, i8* %31), !dbg !836
  %32 = load i8*, i8** %10, align 8, !dbg !837
  %33 = load i8*, i8** %14, align 8, !dbg !838
  %34 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !839
  %35 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %34, i32 0, i32 10, !dbg !840
  %36 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %35, i32 0, i32 11, !dbg !841
  %37 = call i8* @versiondescribe(%struct.dpkg_version* %36, i32 1), !dbg !842
  call void (%struct.command*, ...) @command_add_args(%struct.command* %16, i8* %32, i8* %33, i8* %37, i8* null), !dbg !843
  %38 = load i8*, i8** %17, align 8, !dbg !844
  %39 = call i32 @stat(i8* %38, %struct.stat* %18) #3, !dbg !846
  %40 = icmp ne i32 %39, 0, !dbg !846
  br i1 %40, label %41, label %57, !dbg !847

; <label>:41:                                     ; preds = %7
  %42 = call i32* @__errno_location() #1, !dbg !848
  %43 = load i32, i32* %42, align 4, !dbg !851
  %44 = icmp eq i32 %43, 2, !dbg !852
  br i1 %44, label %45, label %49, !dbg !853

; <label>:45:                                     ; preds = %41
  %46 = load i8*, i8** %10, align 8, !dbg !854
  %47 = load i8*, i8** %17, align 8, !dbg !856
  call void (i32, i8*, ...) @debug(i32 2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i32 0, i32 0), i8* %46, i8* %47), !dbg !857
  call void @command_destroy(%struct.command* %16), !dbg !858
  %48 = load i8*, i8** %19, align 8, !dbg !859
  call void @free(i8* %48) #3, !dbg !860
  store i32 0, i32* %8, align 4, !dbg !861
  br label %108, !dbg !861

; <label>:49:                                     ; preds = %41
  %50 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0)) #3, !dbg !862
  %51 = getelementptr inbounds %struct.command, %struct.command* %16, i32 0, i32 0, !dbg !863
  %52 = load i8*, i8** %51, align 8, !dbg !863
  %53 = load i8*, i8** %17, align 8, !dbg !864
  %54 = call i32* @__errno_location() #1, !dbg !865
  %55 = load i32, i32* %54, align 4, !dbg !866
  %56 = call i8* @strerror(i32 %55) #3, !dbg !867
  call void (i8*, ...) @warning(i8* %50, i8* %52, i8* %53, i8* %56), !dbg !869
  br label %66, !dbg !870

; <label>:57:                                     ; preds = %7
  %58 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !871
  %59 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !874
  %60 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %59, i32 0, i32 9, !dbg !875
  %61 = call i32 @maintscript_exec(%struct.pkginfo* %58, %struct.pkgbin* %60, %struct.command* %16, %struct.stat* %18, i32 1), !dbg !876
  %62 = icmp ne i32 %61, 0, !dbg !876
  br i1 %62, label %65, label %63, !dbg !877

; <label>:63:                                     ; preds = %57
  call void @command_destroy(%struct.command* %16), !dbg !878
  %64 = load i8*, i8** %19, align 8, !dbg !880
  call void @free(i8* %64) #3, !dbg !881
  call void @post_script_tasks(), !dbg !882
  store i32 1, i32* %8, align 4, !dbg !883
  br label %108, !dbg !883

; <label>:65:                                     ; preds = %57
  br label %66

; <label>:66:                                     ; preds = %65, %49
  %67 = call i8* @gettext(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i32 0, i32 0)) #3, !dbg !884
  call void (i8*, ...) @notice(i8* %67), !dbg !885
  %68 = load i8*, i8** %13, align 8, !dbg !886
  %69 = load i8*, i8** %10, align 8, !dbg !887
  %70 = call i8* @strcpy(i8* %68, i8* %69) #3, !dbg !888
  %71 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0)) #3, !dbg !889
  %72 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !890
  %73 = call i8* @pkg_name(%struct.pkginfo* %72, i32 1), !dbg !891
  %74 = load i8*, i8** %11, align 8, !dbg !892
  %75 = call i32 (i8**, i8*, ...) @m_asprintf(i8** %19, i8* %71, i8* %73, i8* %74), !dbg !893
  call void @command_destroy(%struct.command* %16), !dbg !894
  %76 = load i8*, i8** %12, align 8, !dbg !895
  %77 = load i8*, i8** %19, align 8, !dbg !896
  call void @command_init(%struct.command* %16, i8* %76, i8* %77), !dbg !897
  %78 = load i8*, i8** %10, align 8, !dbg !898
  %79 = load i8*, i8** %15, align 8, !dbg !899
  %80 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !900
  %81 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %80, i32 0, i32 9, !dbg !901
  %82 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %81, i32 0, i32 11, !dbg !902
  %83 = call i8* @versiondescribe(%struct.dpkg_version* %82, i32 1), !dbg !903
  %84 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !904
  %85 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %84, i32 0, i32 10, !dbg !905
  %86 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %85, i32 0, i32 11, !dbg !906
  %87 = call i8* @versiondescribe(%struct.dpkg_version* %86, i32 1), !dbg !907
  call void (%struct.command*, ...) @command_add_args(%struct.command* %16, i8* %78, i8* %79, i8* %83, i8* %87, i8* null), !dbg !908
  %88 = load i8*, i8** %12, align 8, !dbg !909
  %89 = call i32 @stat(i8* %88, %struct.stat* %18) #3, !dbg !911
  %90 = icmp ne i32 %89, 0, !dbg !911
  br i1 %90, label %91, label %101, !dbg !912

; <label>:91:                                     ; preds = %66
  call void @command_destroy(%struct.command* %16), !dbg !913
  %92 = call i32* @__errno_location() #1, !dbg !915
  %93 = load i32, i32* %92, align 4, !dbg !917
  %94 = icmp eq i32 %93, 2, !dbg !918
  br i1 %94, label %95, label %97, !dbg !919

; <label>:95:                                     ; preds = %91
  %96 = call i8* @gettext(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.10, i32 0, i32 0)) #3, !dbg !920
  call void (i8*, ...) @ohshit(i8* %96) #9, !dbg !921
  unreachable, !dbg !923

; <label>:97:                                     ; preds = %91
  %98 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0)) #3, !dbg !924
  %99 = load i8*, i8** %19, align 8, !dbg !925
  %100 = load i8*, i8** %12, align 8, !dbg !926
  call void (i8*, ...) @ohshite(i8* %98, i8* %99, i8* %100) #9, !dbg !927
  unreachable, !dbg !928

; <label>:101:                                    ; preds = %66
  %102 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !929
  %103 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !930
  %104 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %103, i32 0, i32 10, !dbg !931
  %105 = call i32 @maintscript_exec(%struct.pkginfo* %102, %struct.pkgbin* %104, %struct.command* %16, %struct.stat* %18, i32 0), !dbg !932
  %106 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0)) #3, !dbg !933
  call void (i8*, ...) @notice(i8* %106), !dbg !934
  call void @command_destroy(%struct.command* %16), !dbg !935
  %107 = load i8*, i8** %19, align 8, !dbg !936
  call void @free(i8* %107) #3, !dbg !937
  call void @post_script_tasks(), !dbg !938
  store i32 1, i32* %8, align 4, !dbg !939
  br label %108, !dbg !939

; <label>:108:                                    ; preds = %101, %63, %45
  %109 = load i32, i32* %8, align 4, !dbg !940
  ret i32 %109, !dbg !940
}

declare i8* @pkg_infodb_get_file(%struct.pkginfo*, %struct.pkgbin*, i8*) #2

declare void @command_add_args(%struct.command*, ...) #2

declare i8* @versiondescribe(%struct.dpkg_version*, i32) #2

declare void @warning(i8*, ...) #2

; Function Attrs: nounwind
declare i8* @strerror(i32) #4

declare void @notice(i8*, ...) #2

; Function Attrs: noreturn
declare void @ohshit(i8*, ...) #6

; Function Attrs: nounwind uwtable
define internal void @setexecute(i8*, %struct.stat*) #0 !dbg !941 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.stat*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !944, metadata !404), !dbg !945
  store %struct.stat* %1, %struct.stat** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.stat** %4, metadata !946, metadata !404), !dbg !947
  %5 = load %struct.stat*, %struct.stat** %4, align 8, !dbg !948
  %6 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 3, !dbg !950
  %7 = load i32, i32* %6, align 8, !dbg !950
  %8 = and i32 %7, 365, !dbg !951
  %9 = icmp eq i32 %8, 365, !dbg !952
  br i1 %9, label %10, label %11, !dbg !953

; <label>:10:                                     ; preds = %2
  br label %19, !dbg !954

; <label>:11:                                     ; preds = %2
  %12 = load i8*, i8** %3, align 8, !dbg !955
  %13 = call i32 @chmod(i8* %12, i32 493) #3, !dbg !957
  %14 = icmp ne i32 %13, 0, !dbg !957
  br i1 %14, label %16, label %15, !dbg !958

; <label>:15:                                     ; preds = %11
  br label %19, !dbg !959

; <label>:16:                                     ; preds = %11
  %17 = call i8* @gettext(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.28, i32 0, i32 0)) #3, !dbg !960
  %18 = load i8*, i8** %3, align 8, !dbg !961
  call void (i8*, ...) @ohshite(i8* %17, i8* %18) #9, !dbg !962
  unreachable, !dbg !964

; <label>:19:                                     ; preds = %15, %10
  ret void, !dbg !965
}

declare void @push_cleanup(void (i32, i8**)*, i32, i32, ...) #2

; Function Attrs: nounwind uwtable
define internal void @cu_post_script_tasks(i32, i8**) #0 !dbg !966 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !970, metadata !404), !dbg !971
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !972, metadata !404), !dbg !973
  call void @post_script_tasks(), !dbg !974
  ret void, !dbg !975
}

declare i32 @subproc_fork() #2

declare i8* @str_fmt(i8*, ...) #2

declare i32 @pkgset_installed_instances(%struct.pkgset*) #2

declare zeroext i1 @debug_has_flag(i32) #2

; Function Attrs: nounwind
declare i32 @setenv(i8*, i8*, i32) #4

; Function Attrs: nounwind uwtable
define internal i8* @maintscript_pre_exec(%struct.command*) #0 !dbg !976 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.command*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.varbuf, align 8
  %9 = alloca i8**, align 8
  store %struct.command* %0, %struct.command** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.command** %3, metadata !979, metadata !404), !dbg !980
  call void @llvm.dbg.declare(metadata i8** %4, metadata !981, metadata !404), !dbg !982
  %10 = call i8* @dpkg_db_get_dir(), !dbg !983
  store i8* %10, i8** %4, align 8, !dbg !982
  call void @llvm.dbg.declare(metadata i8** %5, metadata !984, metadata !404), !dbg !985
  call void @llvm.dbg.declare(metadata i64* %6, metadata !986, metadata !404), !dbg !989
  %11 = load i8*, i8** @instdir, align 8, !dbg !990
  %12 = call i64 @strlen(i8* %11) #10, !dbg !991
  store i64 %12, i64* %6, align 8, !dbg !989
  %13 = load i64, i64* %6, align 8, !dbg !992
  %14 = icmp ugt i64 %13, 0, !dbg !994
  br i1 %14, label %15, label %19, !dbg !995

; <label>:15:                                     ; preds = %1
  %16 = call zeroext i1 @in_force(i32 4194304), !dbg !996
  br i1 %16, label %17, label %19, !dbg !998

; <label>:17:                                     ; preds = %15
  %18 = load i8*, i8** @instdir, align 8, !dbg !999
  store i8* %18, i8** %5, align 8, !dbg !1000
  br label %20, !dbg !1001

; <label>:19:                                     ; preds = %15, %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0), i8** %5, align 8, !dbg !1002
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load i64, i64* %6, align 8, !dbg !1003
  %22 = icmp ugt i64 %21, 0, !dbg !1005
  br i1 %22, label %23, label %67, !dbg !1006

; <label>:23:                                     ; preds = %20
  %24 = call zeroext i1 @in_force(i32 4194304), !dbg !1007
  br i1 %24, label %67, label %25, !dbg !1009

; <label>:25:                                     ; preds = %23
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1010, metadata !404), !dbg !1012
  %26 = load i8*, i8** %4, align 8, !dbg !1013
  %27 = load i8*, i8** @instdir, align 8, !dbg !1015
  %28 = load i64, i64* %6, align 8, !dbg !1016
  %29 = call i32 @strncmp(i8* %26, i8* %27, i64 %28) #10, !dbg !1017
  %30 = icmp ne i32 %29, 0, !dbg !1018
  br i1 %30, label %31, label %33, !dbg !1019

; <label>:31:                                     ; preds = %25
  %32 = call i8* @gettext(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.30, i32 0, i32 0)) #3, !dbg !1020
  call void (i8*, ...) @ohshit(i8* %32) #9, !dbg !1021
  unreachable, !dbg !1023

; <label>:33:                                     ; preds = %25
  %34 = load i8*, i8** %4, align 8, !dbg !1024
  %35 = load i64, i64* %6, align 8, !dbg !1026
  %36 = getelementptr inbounds i8, i8* %34, i64 %35, !dbg !1027
  %37 = call i32 @setenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i32 0, i32 0), i8* %36, i32 1) #3, !dbg !1028
  %38 = icmp slt i32 %37, 0, !dbg !1029
  br i1 %38, label %39, label %41, !dbg !1030

; <label>:39:                                     ; preds = %33
  %40 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.32, i32 0, i32 0)) #3, !dbg !1031
  call void (i8*, ...) @ohshite(i8* %40) #9, !dbg !1032
  unreachable, !dbg !1034

; <label>:41:                                     ; preds = %33
  %42 = call i32 @setenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.34, i32 0, i32 0), i32 1) #3, !dbg !1035
  %43 = icmp slt i32 %42, 0, !dbg !1037
  br i1 %43, label %44, label %46, !dbg !1038

; <label>:44:                                     ; preds = %41
  %45 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.32, i32 0, i32 0)) #3, !dbg !1039
  call void (i8*, ...) @ohshite(i8* %45) #9, !dbg !1040
  unreachable, !dbg !1042

; <label>:46:                                     ; preds = %41
  %47 = load i8*, i8** @instdir, align 8, !dbg !1043
  %48 = call i32 @chroot(i8* %47) #3, !dbg !1044
  store i32 %48, i32* %7, align 4, !dbg !1045
  %49 = load i32, i32* %7, align 4, !dbg !1046
  %50 = icmp ne i32 %49, 0, !dbg !1046
  br i1 %50, label %51, label %59, !dbg !1048

; <label>:51:                                     ; preds = %46
  %52 = call zeroext i1 @in_force(i32 65536), !dbg !1049
  br i1 %52, label %53, label %59, !dbg !1051

; <label>:53:                                     ; preds = %51
  %54 = call i32* @__errno_location() #1, !dbg !1052
  %55 = load i32, i32* %54, align 4, !dbg !1054
  %56 = icmp eq i32 %55, 1, !dbg !1055
  br i1 %56, label %57, label %59, !dbg !1056

; <label>:57:                                     ; preds = %53
  %58 = call i8* @gettext(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.35, i32 0, i32 0)) #3, !dbg !1057
  call void (i8*, ...) @ohshit(i8* %58) #9, !dbg !1058
  unreachable, !dbg !1059

; <label>:59:                                     ; preds = %53, %51, %46
  %60 = load i32, i32* %7, align 4, !dbg !1060
  %61 = icmp ne i32 %60, 0, !dbg !1060
  br i1 %61, label %62, label %65, !dbg !1062

; <label>:62:                                     ; preds = %59
  %63 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.36, i32 0, i32 0)) #3, !dbg !1063
  %64 = load i8*, i8** @instdir, align 8, !dbg !1064
  call void (i8*, ...) @ohshite(i8* %63, i8* %64) #9, !dbg !1065
  unreachable, !dbg !1067

; <label>:65:                                     ; preds = %59
  br label %66

; <label>:66:                                     ; preds = %65
  br label %67, !dbg !1068

; <label>:67:                                     ; preds = %66, %23, %20
  %68 = load i8*, i8** %5, align 8, !dbg !1069
  %69 = call i32 @chdir(i8* %68) #3, !dbg !1071
  %70 = icmp ne i32 %69, 0, !dbg !1071
  br i1 %70, label %71, label %74, !dbg !1072

; <label>:71:                                     ; preds = %67
  %72 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.37, i32 0, i32 0)) #3, !dbg !1073
  %73 = load i8*, i8** %5, align 8, !dbg !1074
  call void (i8*, ...) @ohshite(i8* %72, i8* %73) #9, !dbg !1075
  unreachable, !dbg !1077

; <label>:74:                                     ; preds = %67
  %75 = call zeroext i1 @debug_has_flag(i32 2), !dbg !1078
  br i1 %75, label %76, label %98, !dbg !1080

; <label>:76:                                     ; preds = %74
  call void @llvm.dbg.declare(metadata %struct.varbuf* %8, metadata !1081, metadata !404), !dbg !1089
  %77 = bitcast %struct.varbuf* %8 to i8*, !dbg !1089
  call void @llvm.memset.p0i8.i64(i8* %77, i8 0, i64 24, i32 8, i1 false), !dbg !1089
  call void @llvm.dbg.declare(metadata i8*** %9, metadata !1090, metadata !404), !dbg !1091
  %78 = load %struct.command*, %struct.command** %3, align 8, !dbg !1092
  %79 = getelementptr inbounds %struct.command, %struct.command* %78, i32 0, i32 4, !dbg !1093
  %80 = load i8**, i8*** %79, align 8, !dbg !1093
  store i8** %80, i8*** %9, align 8, !dbg !1091
  br label %81, !dbg !1094

; <label>:81:                                     ; preds = %86, %76
  %82 = load i8**, i8*** %9, align 8, !dbg !1095
  %83 = getelementptr inbounds i8*, i8** %82, i32 1, !dbg !1095
  store i8** %83, i8*** %9, align 8, !dbg !1095
  %84 = load i8*, i8** %83, align 8, !dbg !1097
  %85 = icmp ne i8* %84, null, !dbg !1098
  br i1 %85, label %86, label %92, !dbg !1098

; <label>:86:                                     ; preds = %81
  call void @varbuf_add_char(%struct.varbuf* %8, i32 32), !dbg !1099
  %87 = load i8**, i8*** %9, align 8, !dbg !1101
  %88 = load i8*, i8** %87, align 8, !dbg !1102
  %89 = load i8**, i8*** %9, align 8, !dbg !1103
  %90 = load i8*, i8** %89, align 8, !dbg !1104
  %91 = call i64 @strlen(i8* %90) #10, !dbg !1105
  call void @varbuf_add_buf(%struct.varbuf* %8, i8* %88, i64 %91), !dbg !1106
  br label %81, !dbg !1108, !llvm.loop !1110

; <label>:92:                                     ; preds = %81
  call void @varbuf_end_str(%struct.varbuf* %8), !dbg !1111
  %93 = load %struct.command*, %struct.command** %3, align 8, !dbg !1112
  %94 = getelementptr inbounds %struct.command, %struct.command* %93, i32 0, i32 1, !dbg !1113
  %95 = load i8*, i8** %94, align 8, !dbg !1113
  %96 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %8, i32 0, i32 2, !dbg !1114
  %97 = load i8*, i8** %96, align 8, !dbg !1114
  call void (i32, i8*, ...) @debug(i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.38, i32 0, i32 0), i8* %95, i8* %97), !dbg !1115
  call void @varbuf_destroy(%struct.varbuf* %8), !dbg !1116
  br label %98, !dbg !1117

; <label>:98:                                     ; preds = %92, %74
  %99 = load i64, i64* %6, align 8, !dbg !1118
  %100 = icmp eq i64 %99, 0, !dbg !1120
  br i1 %100, label %103, label %101, !dbg !1121

; <label>:101:                                    ; preds = %98
  %102 = call zeroext i1 @in_force(i32 4194304), !dbg !1122
  br i1 %102, label %103, label %107, !dbg !1124

; <label>:103:                                    ; preds = %101, %98
  %104 = load %struct.command*, %struct.command** %3, align 8, !dbg !1125
  %105 = getelementptr inbounds %struct.command, %struct.command* %104, i32 0, i32 1, !dbg !1126
  %106 = load i8*, i8** %105, align 8, !dbg !1126
  store i8* %106, i8** %2, align 8, !dbg !1127
  br label %125, !dbg !1127

; <label>:107:                                    ; preds = %101
  %108 = load %struct.command*, %struct.command** %3, align 8, !dbg !1128
  %109 = getelementptr inbounds %struct.command, %struct.command* %108, i32 0, i32 1, !dbg !1130
  %110 = load i8*, i8** %109, align 8, !dbg !1130
  %111 = call i64 @strlen(i8* %110) #10, !dbg !1131
  %112 = load i64, i64* %6, align 8, !dbg !1132
  %113 = icmp ult i64 %111, %112, !dbg !1133
  br i1 %113, label %114, label %119, !dbg !1134

; <label>:114:                                    ; preds = %107
  %115 = load %struct.command*, %struct.command** %3, align 8, !dbg !1135
  %116 = getelementptr inbounds %struct.command, %struct.command* %115, i32 0, i32 1, !dbg !1136
  %117 = load i8*, i8** %116, align 8, !dbg !1136
  %118 = load i64, i64* %6, align 8, !dbg !1137
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0), i32 148, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.maintscript_pre_exec, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.40, i32 0, i32 0), i8* %117, i64 %118) #9, !dbg !1138
  unreachable, !dbg !1138

; <label>:119:                                    ; preds = %107
  %120 = load %struct.command*, %struct.command** %3, align 8, !dbg !1139
  %121 = getelementptr inbounds %struct.command, %struct.command* %120, i32 0, i32 1, !dbg !1140
  %122 = load i8*, i8** %121, align 8, !dbg !1140
  %123 = load i64, i64* %6, align 8, !dbg !1141
  %124 = getelementptr inbounds i8, i8* %122, i64 %123, !dbg !1142
  store i8* %124, i8** %2, align 8, !dbg !1143
  br label %125, !dbg !1143

; <label>:125:                                    ; preds = %119, %103
  %126 = load i8*, i8** %2, align 8, !dbg !1144
  ret i8* %126, !dbg !1144
}

; Function Attrs: nounwind uwtable
define internal i32 @maintscript_set_exec_context(%struct.command*) #0 !dbg !1145 {
  %2 = alloca %struct.command*, align 8
  store %struct.command* %0, %struct.command** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.command** %2, metadata !1148, metadata !404), !dbg !1149
  ret i32 0, !dbg !1150
}

; Function Attrs: noreturn
declare void @command_exec(%struct.command*) #6

declare void @subproc_signals_ignore(i8*) #2

declare i32 @subproc_reap(i32, i8*, i32) #2

declare void @subproc_signals_restore() #2

declare void @pop_cleanup(i32) #2

; Function Attrs: nounwind
declare i32 @chmod(i8*, i32) #4

declare i8* @dpkg_db_get_dir() #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #7

declare zeroext i1 @in_force(i32) #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #7

; Function Attrs: nounwind
declare i32 @chroot(i8*) #4

; Function Attrs: nounwind
declare i32 @chdir(i8*) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #8

declare void @varbuf_add_char(%struct.varbuf*, i32) #2

declare void @varbuf_add_buf(%struct.varbuf*, i8*, i64) #2

declare void @varbuf_end_str(%struct.varbuf*) #2

declare void @varbuf_destroy(%struct.varbuf*) #2

; Function Attrs: noreturn
declare void @do_internerr(i8*, i32, i8*, i8*, ...) #6

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { argmemonly nounwind }
attributes #9 = { noreturn }
attributes #10 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!179, !180}
!llvm.ident = !{!181}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !177)
!1 = !DIFile(filename: "[inter]src--script.o.i", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!2 = !{!3, !15, !26, !35, !43, !47, !57, !67, !73, !81, !86, !91, !104, !120, !126, !131, !140, !146}
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
!120 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkg_name_arch_when", file: !4, line: 396, size: 32, align: 32, elements: !121)
!121 = !{!122, !123, !124, !125}
!122 = !DIEnumerator(name: "pnaw_never", value: 0)
!123 = !DIEnumerator(name: "pnaw_nonambig", value: 1)
!124 = !DIEnumerator(name: "pnaw_foreign", value: 2)
!125 = !DIEnumerator(name: "pnaw_always", value: 3)
!126 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "versiondisplayepochwhen", file: !4, line: 388, size: 32, align: 32, elements: !127)
!127 = !{!128, !129, !130}
!128 = !DIEnumerator(name: "vdew_never", value: 0)
!129 = !DIEnumerator(name: "vdew_nonambig", value: 1)
!130 = !DIEnumerator(name: "vdew_always", value: 2)
!131 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "subproc_flags", file: !132, line: 36, size: 32, align: 32, elements: !133)
!132 = !DIFile(filename: "../lib/dpkg/subproc.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!133 = !{!134, !135, !136, !137, !138, !139}
!134 = !DIEnumerator(name: "SUBPROC_NORMAL", value: 0)
!135 = !DIEnumerator(name: "SUBPROC_WARN", value: 1)
!136 = !DIEnumerator(name: "SUBPROC_NOPIPE", value: 2)
!137 = !DIEnumerator(name: "SUBPROC_NOCHECK", value: 4)
!138 = !DIEnumerator(name: "SUBPROC_RETERROR", value: 8)
!139 = !DIEnumerator(name: "SUBPROC_RETSIGNO", value: 8)
!140 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !141, line: 41, size: 32, align: 32, elements: !142)
!141 = !DIFile(filename: "../lib/dpkg/ehandle.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!142 = !{!143, !144, !145}
!143 = !DIEnumerator(name: "ehflag_normaltidy", value: 1)
!144 = !DIEnumerator(name: "ehflag_bombout", value: 2)
!145 = !DIEnumerator(name: "ehflag_recursiveerror", value: 4)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "force_flags", file: !147, line: 28, size: 32, align: 32, elements: !148)
!147 = !DIFile(filename: "force.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!148 = !{!149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176}
!149 = !DIEnumerator(name: "FORCE_ARCHITECTURE", value: 1)
!150 = !DIEnumerator(name: "FORCE_BAD_PATH", value: 2)
!151 = !DIEnumerator(name: "FORCE_BAD_VERIFY", value: 4)
!152 = !DIEnumerator(name: "FORCE_BAD_VERSION", value: 8)
!153 = !DIEnumerator(name: "FORCE_BREAKS", value: 16)
!154 = !DIEnumerator(name: "FORCE_CONFF_ASK", value: 32)
!155 = !DIEnumerator(name: "FORCE_CONFF_DEF", value: 64)
!156 = !DIEnumerator(name: "FORCE_CONFF_MISS", value: 128)
!157 = !DIEnumerator(name: "FORCE_CONFF_NEW", value: 256)
!158 = !DIEnumerator(name: "FORCE_CONFF_OLD", value: 512)
!159 = !DIEnumerator(name: "FORCE_CONFIGURE_ANY", value: 1024)
!160 = !DIEnumerator(name: "FORCE_CONFLICTS", value: 2048)
!161 = !DIEnumerator(name: "FORCE_DEPENDS", value: 4096)
!162 = !DIEnumerator(name: "FORCE_DEPENDS_VERSION", value: 8192)
!163 = !DIEnumerator(name: "FORCE_DOWNGRADE", value: 16384)
!164 = !DIEnumerator(name: "FORCE_HOLD", value: 32768)
!165 = !DIEnumerator(name: "FORCE_NON_ROOT", value: 65536)
!166 = !DIEnumerator(name: "FORCE_OVERWRITE", value: 131072)
!167 = !DIEnumerator(name: "FORCE_OVERWRITE_DIR", value: 262144)
!168 = !DIEnumerator(name: "FORCE_OVERWRITE_DIVERTED", value: 524288)
!169 = !DIEnumerator(name: "FORCE_REMOVE_ESSENTIAL", value: 1048576)
!170 = !DIEnumerator(name: "FORCE_REMOVE_REINSTREQ", value: 2097152)
!171 = !DIEnumerator(name: "FORCE_SCRIPT_CHROOTLESS", value: 4194304)
!172 = !DIEnumerator(name: "FORCE_UNSAFE_IO", value: 8388608)
!173 = !DIEnumerator(name: "FORCE_STATOVERRIDE_ADD", value: 16777216)
!174 = !DIEnumerator(name: "FORCE_STATOVERRIDE_DEL", value: 33554432)
!175 = !DIEnumerator(name: "FORCE_SECURITY_MAC", value: 67108864)
!176 = !DIEnumerator(name: "FORCE_ALL", value: -1)
!177 = !{!178}
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!179 = !{i32 2, !"Dwarf Version", i32 4}
!180 = !{i32 2, !"Debug Info Version", i32 3}
!181 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!182 = distinct !DISubprogram(name: "post_postinst_tasks", scope: !183, file: !183, line: 51, type: !184, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !402)
!183 = !DIFile(filename: "script.c", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!184 = !DISubroutineType(types: !185)
!185 = !{null, !186, !47}
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64, align: 64)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkginfo", file: !4, line: 195, size: 3072, align: 64, elements: !188)
!188 = !{!189, !241, !242, !243, !244, !245, !246, !247, !248, !249, !279, !280, !296, !305, !321, !322, !328, !396, !400, !401}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !187, file: !4, line: 196, baseType: !190, size: 64, align: 64)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64, align: 64)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgset", file: !4, line: 242, size: 3392, align: 64, elements: !192)
!192 = !{!193, !194, !198, !199, !239}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !191, file: !4, line: 243, baseType: !190, size: 64, align: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !191, file: !4, line: 244, baseType: !195, size: 64, align: 64, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64, align: 64)
!196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !197)
!197 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !191, file: !4, line: 245, baseType: !187, size: 3072, align: 64, offset: 128)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "depended", scope: !191, file: !4, line: 249, baseType: !200, size: 128, align: 64, offset: 3200)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !191, file: !4, line: 246, size: 128, align: 64, elements: !201)
!201 = !{!202, !238}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !200, file: !4, line: 247, baseType: !203, size: 64, align: 64)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64, align: 64)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "deppossi", file: !4, line: 63, size: 640, align: 64, elements: !205)
!205 = !{!206, !214, !215, !216, !217, !218, !227, !234, !235, !237}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !204, file: !4, line: 64, baseType: !207, size: 64, align: 64)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64, align: 64)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dependency", file: !4, line: 56, size: 256, align: 64, elements: !209)
!209 = !{!210, !211, !212, !213}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !208, file: !4, line: 57, baseType: !186, size: 64, align: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !208, file: !4, line: 58, baseType: !207, size: 64, align: 64, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !208, file: !4, line: 59, baseType: !203, size: 64, align: 64, offset: 128)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !208, file: !4, line: 60, baseType: !3, size: 32, align: 32, offset: 192)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "ed", scope: !204, file: !4, line: 65, baseType: !190, size: 64, align: 64, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !204, file: !4, line: 66, baseType: !203, size: 64, align: 64, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "rev_next", scope: !204, file: !4, line: 66, baseType: !203, size: 64, align: 64, offset: 192)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "rev_prev", scope: !204, file: !4, line: 66, baseType: !203, size: 64, align: 64, offset: 256)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !204, file: !4, line: 67, baseType: !219, size: 64, align: 64, offset: 320)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64, align: 64)
!220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !221)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_arch", file: !16, line: 48, size: 192, align: 64, elements: !222)
!222 = !{!223, !225, !226}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !221, file: !16, line: 49, baseType: !224, size: 64, align: 64)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64, align: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !221, file: !16, line: 50, baseType: !195, size: 64, align: 64, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !221, file: !16, line: 51, baseType: !15, size: 32, align: 32, offset: 128)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !204, file: !4, line: 68, baseType: !228, size: 192, align: 64, offset: 384)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_version", file: !27, line: 42, size: 192, align: 64, elements: !229)
!229 = !{!230, !232, !233}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !228, file: !27, line: 44, baseType: !231, size: 32, align: 32)
!231 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !228, file: !27, line: 46, baseType: !195, size: 64, align: 64, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !228, file: !27, line: 48, baseType: !195, size: 64, align: 64, offset: 128)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "verrel", scope: !204, file: !4, line: 69, baseType: !26, size: 32, align: 32, offset: 576)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "arch_is_implicit", scope: !204, file: !4, line: 70, baseType: !236, size: 8, align: 8, offset: 608)
!236 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "cyclebreak", scope: !204, file: !4, line: 71, baseType: !236, size: 8, align: 8, offset: 616)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !200, file: !4, line: 248, baseType: !203, size: 64, align: 64, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "installed_instances", scope: !191, file: !4, line: 250, baseType: !240, size: 32, align: 32, offset: 3328)
!240 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "arch_next", scope: !187, file: !4, line: 197, baseType: !186, size: 64, align: 64, offset: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "want", scope: !187, file: !4, line: 199, baseType: !35, size: 32, align: 32, offset: 128)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "eflag", scope: !187, file: !4, line: 201, baseType: !43, size: 32, align: 32, offset: 160)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !187, file: !4, line: 202, baseType: !47, size: 32, align: 32, offset: 192)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !187, file: !4, line: 203, baseType: !57, size: 32, align: 32, offset: 224)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "otherpriority", scope: !187, file: !4, line: 204, baseType: !195, size: 64, align: 64, offset: 256)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "section", scope: !187, file: !4, line: 205, baseType: !195, size: 64, align: 64, offset: 320)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "configversion", scope: !187, file: !4, line: 206, baseType: !228, size: 192, align: 64, offset: 384)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !187, file: !4, line: 207, baseType: !250, size: 960, align: 64, offset: 576)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgbin", file: !4, line: 107, size: 960, align: 64, elements: !251)
!251 = !{!252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !272}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "depends", scope: !250, file: !4, line: 108, baseType: !207, size: 64, align: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "essential", scope: !250, file: !4, line: 110, baseType: !236, size: 8, align: 8, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "multiarch", scope: !250, file: !4, line: 111, baseType: !67, size: 32, align: 32, offset: 96)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !250, file: !4, line: 112, baseType: !219, size: 64, align: 64, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "pkgname_archqual", scope: !250, file: !4, line: 115, baseType: !195, size: 64, align: 64, offset: 192)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !250, file: !4, line: 116, baseType: !195, size: 64, align: 64, offset: 256)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "maintainer", scope: !250, file: !4, line: 117, baseType: !195, size: 64, align: 64, offset: 320)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !250, file: !4, line: 118, baseType: !195, size: 64, align: 64, offset: 384)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "installedsize", scope: !250, file: !4, line: 119, baseType: !195, size: 64, align: 64, offset: 448)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !250, file: !4, line: 120, baseType: !195, size: 64, align: 64, offset: 512)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "bugs", scope: !250, file: !4, line: 121, baseType: !195, size: 64, align: 64, offset: 576)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !250, file: !4, line: 122, baseType: !228, size: 192, align: 64, offset: 640)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "conffiles", scope: !250, file: !4, line: 123, baseType: !265, size: 64, align: 64, offset: 832)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64, align: 64)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conffile", file: !4, line: 80, size: 256, align: 64, elements: !267)
!267 = !{!268, !269, !270, !271}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !266, file: !4, line: 81, baseType: !265, size: 64, align: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !266, file: !4, line: 82, baseType: !195, size: 64, align: 64, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !266, file: !4, line: 83, baseType: !195, size: 64, align: 64, offset: 128)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "obsolete", scope: !266, file: !4, line: 84, baseType: !236, size: 8, align: 8, offset: 192)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "arbs", scope: !250, file: !4, line: 124, baseType: !273, size: 64, align: 64, offset: 896)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64, align: 64)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arbitraryfield", file: !4, line: 74, size: 192, align: 64, elements: !275)
!275 = !{!276, !277, !278}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !274, file: !4, line: 75, baseType: !273, size: 64, align: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !274, file: !4, line: 76, baseType: !195, size: 64, align: 64, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !274, file: !4, line: 77, baseType: !195, size: 64, align: 64, offset: 128)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !187, file: !4, line: 208, baseType: !250, size: 960, align: 64, offset: 1536)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "clientdata", scope: !187, file: !4, line: 209, baseType: !281, size: 64, align: 64, offset: 2496)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64, align: 64)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perpackagestate", file: !74, line: 53, size: 256, align: 64, elements: !283)
!283 = !{!284, !285, !286, !287, !288, !289}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "istobe", scope: !282, file: !74, line: 54, baseType: !73, size: 32, align: 32)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !282, file: !74, line: 57, baseType: !81, size: 32, align: 32, offset: 32)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !282, file: !74, line: 59, baseType: !236, size: 8, align: 8, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "replacingfilesandsaid", scope: !282, file: !74, line: 61, baseType: !240, size: 32, align: 32, offset: 96)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "cmdline_seen", scope: !282, file: !74, line: 62, baseType: !240, size: 32, align: 32, offset: 128)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "trigprocdeferred", scope: !282, file: !74, line: 65, baseType: !290, size: 64, align: 64, offset: 192)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64, align: 64)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_list", file: !292, line: 34, size: 128, align: 64, elements: !293)
!292 = !DIFile(filename: "../lib/dpkg/pkg-list.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!293 = !{!294, !295}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !291, file: !292, line: 35, baseType: !290, size: 64, align: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !291, file: !292, line: 36, baseType: !186, size: 64, align: 64, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "archives", scope: !187, file: !4, line: 211, baseType: !297, size: 64, align: 64, offset: 2560)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64, align: 64)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archivedetails", file: !4, line: 87, size: 320, align: 64, elements: !299)
!299 = !{!300, !301, !302, !303, !304}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !298, file: !4, line: 88, baseType: !297, size: 64, align: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !298, file: !4, line: 89, baseType: !195, size: 64, align: 64, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "msdosname", scope: !298, file: !4, line: 90, baseType: !195, size: 64, align: 64, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !298, file: !4, line: 91, baseType: !195, size: 64, align: 64, offset: 192)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "md5sum", scope: !298, file: !4, line: 92, baseType: !195, size: 64, align: 64, offset: 256)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "trigaw", scope: !187, file: !4, line: 216, baseType: !306, size: 128, align: 64, offset: 2624)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !187, file: !4, line: 213, size: 128, align: 64, elements: !307)
!307 = !{!308, !320}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !306, file: !4, line: 215, baseType: !309, size: 64, align: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64, align: 64)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigaw", file: !4, line: 142, size: 320, align: 64, elements: !311)
!311 = !{!312, !313, !314, !315}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "aw", scope: !310, file: !4, line: 143, baseType: !186, size: 64, align: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "pend", scope: !310, file: !4, line: 143, baseType: !186, size: 64, align: 64, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "samepend_next", scope: !310, file: !4, line: 144, baseType: !309, size: 64, align: 64, offset: 128)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "sameaw", scope: !310, file: !4, line: 147, baseType: !316, size: 128, align: 64, offset: 192)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !310, file: !4, line: 145, size: 128, align: 64, elements: !317)
!317 = !{!318, !319}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !316, file: !4, line: 146, baseType: !309, size: 64, align: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !316, file: !4, line: 146, baseType: !309, size: 64, align: 64, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !306, file: !4, line: 215, baseType: !309, size: 64, align: 64, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "othertrigaw_head", scope: !187, file: !4, line: 219, baseType: !309, size: 64, align: 64, offset: 2752)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "trigpend_head", scope: !187, file: !4, line: 220, baseType: !323, size: 64, align: 64, offset: 2816)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64, align: 64)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigpend", file: !4, line: 134, size: 128, align: 64, elements: !325)
!325 = !{!326, !327}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !324, file: !4, line: 135, baseType: !323, size: 64, align: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !324, file: !4, line: 136, baseType: !195, size: 64, align: 64, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !187, file: !4, line: 231, baseType: !329, size: 64, align: 64, offset: 2880)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64, align: 64)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode_list", file: !92, line: 122, size: 128, align: 64, elements: !331)
!331 = !{!332, !333}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !330, file: !92, line: 123, baseType: !329, size: 64, align: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "namenode", scope: !330, file: !92, line: 124, baseType: !334, size: 64, align: 64, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64, align: 64)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode", file: !92, line: 90, size: 640, align: 64, elements: !336)
!336 = !{!337, !338, !339, !340, !348, !367, !382, !383, !384, !385}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !335, file: !92, line: 91, baseType: !334, size: 64, align: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !335, file: !92, line: 92, baseType: !195, size: 64, align: 64, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "packages", scope: !335, file: !92, line: 93, baseType: !290, size: 64, align: 64, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "divert", scope: !335, file: !92, line: 94, baseType: !341, size: 64, align: 64, offset: 192)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64, align: 64)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_diversion", file: !92, line: 151, size: 256, align: 64, elements: !343)
!343 = !{!344, !345, !346, !347}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "useinstead", scope: !342, file: !92, line: 152, baseType: !334, size: 64, align: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "camefrom", scope: !342, file: !92, line: 153, baseType: !334, size: 64, align: 64, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "pkgset", scope: !342, file: !92, line: 154, baseType: !190, size: 64, align: 64, offset: 128)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !342, file: !92, line: 157, baseType: !341, size: 64, align: 64, offset: 192)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "statoverride", scope: !335, file: !92, line: 101, baseType: !349, size: 64, align: 64, offset: 256)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64, align: 64)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_stat", file: !351, line: 40, size: 256, align: 64, elements: !352)
!351 = !DIFile(filename: "../lib/dpkg/file.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!352 = !{!353, !358, !361, !364, !366}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !350, file: !351, line: 41, baseType: !354, size: 32, align: 32)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !355, line: 80, baseType: !356)
!355 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !357, line: 125, baseType: !231)
!357 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!358 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !350, file: !351, line: 42, baseType: !359, size: 32, align: 32, offset: 32)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !355, line: 65, baseType: !360)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !357, line: 126, baseType: !231)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !350, file: !351, line: 43, baseType: !362, size: 32, align: 32, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !355, line: 70, baseType: !363)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !357, line: 129, baseType: !231)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "uname", scope: !350, file: !351, line: 47, baseType: !365, size: 64, align: 64, offset: 128)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64, align: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !350, file: !351, line: 48, baseType: !365, size: 64, align: 64, offset: 192)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "trig_interested", scope: !335, file: !92, line: 103, baseType: !368, size: 64, align: 64, offset: 320)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64, align: 64)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigfileint", file: !87, line: 54, size: 448, align: 64, elements: !370)
!370 = !{!371, !372, !374, !375, !376, !377}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !369, file: !87, line: 55, baseType: !186, size: 64, align: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "pkgbin", scope: !369, file: !87, line: 56, baseType: !373, size: 64, align: 64, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64, align: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "fnn", scope: !369, file: !87, line: 57, baseType: !334, size: 64, align: 64, offset: 128)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !369, file: !87, line: 58, baseType: !86, size: 32, align: 32, offset: 192)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "samefile_next", scope: !369, file: !87, line: 59, baseType: !368, size: 64, align: 64, offset: 256)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "inoverall", scope: !369, file: !87, line: 62, baseType: !378, size: 128, align: 64, offset: 320)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !369, file: !87, line: 60, size: 128, align: 64, elements: !379)
!379 = !{!380, !381}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !378, file: !87, line: 61, baseType: !368, size: 64, align: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !378, file: !87, line: 61, baseType: !368, size: 64, align: 64, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !335, file: !92, line: 111, baseType: !91, size: 32, align: 32, offset: 384)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "oldhash", scope: !335, file: !92, line: 114, baseType: !195, size: 64, align: 64, offset: 448)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "newhash", scope: !335, file: !92, line: 117, baseType: !195, size: 64, align: 64, offset: 512)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "file_ondisk_id", scope: !335, file: !92, line: 119, baseType: !386, size: 64, align: 64, offset: 576)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64, align: 64)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ondisk_id", file: !92, line: 85, size: 128, align: 64, elements: !388)
!388 = !{!389, !393}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "id_dev", scope: !387, file: !92, line: 86, baseType: !390, size: 64, align: 64)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !355, line: 60, baseType: !391)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !357, line: 124, baseType: !392)
!392 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "id_ino", scope: !387, file: !92, line: 87, baseType: !394, size: 64, align: 64, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !355, line: 48, baseType: !395)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !357, line: 127, baseType: !392)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_phys_offs", scope: !187, file: !4, line: 232, baseType: !397, size: 64, align: 64, offset: 2944)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !355, line: 86, baseType: !398)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !357, line: 131, baseType: !399)
!399 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_valid", scope: !187, file: !4, line: 233, baseType: !236, size: 8, align: 8, offset: 3008)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "status_dirty", scope: !187, file: !4, line: 236, baseType: !236, size: 8, align: 8, offset: 3016)
!402 = !{}
!403 = !DILocalVariable(name: "pkg", arg: 1, scope: !182, file: !183, line: 51, type: !186)
!404 = !DIExpression()
!405 = !DILocation(line: 51, column: 37, scope: !182)
!406 = !DILocalVariable(name: "new_status", arg: 2, scope: !182, file: !183, line: 51, type: !47)
!407 = !DILocation(line: 51, column: 57, scope: !182)
!408 = !DILocation(line: 53, column: 6, scope: !409)
!409 = distinct !DILexicalBlock(scope: !182, file: !183, line: 53, column: 6)
!410 = !DILocation(line: 53, column: 17, scope: !409)
!411 = !DILocation(line: 53, column: 6, scope: !182)
!412 = !DILocation(line: 54, column: 18, scope: !409)
!413 = !DILocation(line: 54, column: 23, scope: !409)
!414 = !DILocation(line: 54, column: 3, scope: !409)
!415 = !DILocation(line: 55, column: 11, scope: !416)
!416 = distinct !DILexicalBlock(scope: !409, file: !183, line: 55, column: 11)
!417 = !DILocation(line: 55, column: 16, scope: !416)
!418 = !DILocation(line: 55, column: 23, scope: !416)
!419 = !DILocation(line: 55, column: 11, scope: !409)
!420 = !DILocation(line: 56, column: 18, scope: !416)
!421 = !DILocation(line: 56, column: 3, scope: !416)
!422 = !DILocation(line: 57, column: 11, scope: !423)
!423 = distinct !DILexicalBlock(scope: !416, file: !183, line: 57, column: 11)
!424 = !DILocation(line: 57, column: 16, scope: !423)
!425 = !DILocation(line: 57, column: 11, scope: !416)
!426 = !DILocation(line: 58, column: 18, scope: !423)
!427 = !DILocation(line: 58, column: 3, scope: !423)
!428 = !DILocation(line: 60, column: 18, scope: !423)
!429 = !DILocation(line: 60, column: 3, scope: !423)
!430 = !DILocation(line: 61, column: 17, scope: !182)
!431 = !DILocation(line: 61, column: 2, scope: !182)
!432 = !DILocation(line: 63, column: 2, scope: !182)
!433 = !DILocation(line: 64, column: 19, scope: !182)
!434 = !DILocation(line: 64, column: 2, scope: !435)
!435 = !DILexicalBlockFile(scope: !182, file: !183, discriminator: 1)
!436 = !DILocation(line: 65, column: 1, scope: !182)
!437 = distinct !DISubprogram(name: "maintscript_installed", scope: !183, file: !183, line: 258, type: !438, isLocal: false, isDefinition: true, scopeLine: 260, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !402)
!438 = !DISubroutineType(types: !439)
!439 = !{!240, !186, !195, !195, null}
!440 = !DILocalVariable(name: "pkg", arg: 1, scope: !437, file: !183, line: 258, type: !186)
!441 = !DILocation(line: 258, column: 39, scope: !437)
!442 = !DILocalVariable(name: "scriptname", arg: 2, scope: !437, file: !183, line: 258, type: !195)
!443 = !DILocation(line: 258, column: 56, scope: !437)
!444 = !DILocalVariable(name: "desc", arg: 3, scope: !437, file: !183, line: 259, type: !195)
!445 = !DILocation(line: 259, column: 35, scope: !437)
!446 = !DILocalVariable(name: "args", scope: !437, file: !183, line: 261, type: !447)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !448, line: 79, baseType: !449)
!448 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !450, line: 40, baseType: !451)
!450 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 261, baseType: !452)
!452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !453, size: 192, align: 64, elements: !459)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 261, size: 192, align: 64, elements: !454)
!454 = !{!455, !456, !457, !458}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !453, file: !1, line: 261, baseType: !231, size: 32, align: 32)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !453, file: !1, line: 261, baseType: !231, size: 32, align: 32, offset: 32)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !453, file: !1, line: 261, baseType: !178, size: 64, align: 64, offset: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !453, file: !1, line: 261, baseType: !178, size: 64, align: 64, offset: 128)
!459 = !{!460}
!460 = !DISubrange(count: 1)
!461 = !DILocation(line: 261, column: 10, scope: !437)
!462 = !DILocalVariable(name: "rc", scope: !437, file: !183, line: 262, type: !240)
!463 = !DILocation(line: 262, column: 6, scope: !437)
!464 = !DILocation(line: 264, column: 1, scope: !437)
!465 = !DILocation(line: 265, column: 30, scope: !437)
!466 = !DILocation(line: 265, column: 35, scope: !437)
!467 = !DILocation(line: 265, column: 47, scope: !437)
!468 = !DILocation(line: 265, column: 53, scope: !437)
!469 = !DILocation(line: 265, column: 7, scope: !437)
!470 = !DILocation(line: 265, column: 5, scope: !437)
!471 = !DILocation(line: 266, column: 1, scope: !437)
!472 = !DILocation(line: 268, column: 6, scope: !473)
!473 = distinct !DILexicalBlock(scope: !437, file: !183, line: 268, column: 6)
!474 = !DILocation(line: 268, column: 6, scope: !437)
!475 = !DILocation(line: 269, column: 3, scope: !473)
!476 = !DILocation(line: 271, column: 9, scope: !437)
!477 = !DILocation(line: 271, column: 2, scope: !437)
!478 = distinct !DISubprogram(name: "vmaintscript_installed", scope: !183, file: !183, line: 217, type: !479, isLocal: true, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !402)
!479 = !DISubroutineType(types: !480)
!480 = !{!240, !186, !195, !195, !481}
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64, align: 64)
!482 = !DILocalVariable(name: "pkg", arg: 1, scope: !478, file: !183, line: 217, type: !186)
!483 = !DILocation(line: 217, column: 40, scope: !478)
!484 = !DILocalVariable(name: "scriptname", arg: 2, scope: !478, file: !183, line: 217, type: !195)
!485 = !DILocation(line: 217, column: 57, scope: !478)
!486 = !DILocalVariable(name: "desc", arg: 3, scope: !478, file: !183, line: 218, type: !195)
!487 = !DILocation(line: 218, column: 36, scope: !478)
!488 = !DILocalVariable(name: "args", arg: 4, scope: !478, file: !183, line: 218, type: !481)
!489 = !DILocation(line: 218, column: 50, scope: !478)
!490 = !DILocalVariable(name: "cmd", scope: !478, file: !183, line: 220, type: !491)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "command", file: !492, line: 37, size: 256, align: 64, elements: !493)
!492 = !DIFile(filename: "../lib/dpkg/command.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!493 = !{!494, !495, !496, !497, !498}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !491, file: !492, line: 39, baseType: !195, size: 64, align: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !491, file: !492, line: 41, baseType: !195, size: 64, align: 64, offset: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !491, file: !492, line: 42, baseType: !240, size: 32, align: 32, offset: 128)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "argv_size", scope: !491, file: !492, line: 43, baseType: !240, size: 32, align: 32, offset: 160)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !491, file: !492, line: 44, baseType: !499, size: 64, align: 64, offset: 192)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64, align: 64)
!500 = !DILocation(line: 220, column: 17, scope: !478)
!501 = !DILocalVariable(name: "scriptpath", scope: !478, file: !183, line: 221, type: !195)
!502 = !DILocation(line: 221, column: 14, scope: !478)
!503 = !DILocalVariable(name: "stab", scope: !478, file: !183, line: 222, type: !504)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !505, line: 46, size: 1152, align: 64, elements: !506)
!505 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!506 = !{!507, !508, !509, !511, !512, !513, !514, !515, !516, !517, !519, !521, !529, !530, !531}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !504, file: !505, line: 48, baseType: !391, size: 64, align: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !504, file: !505, line: 53, baseType: !395, size: 64, align: 64, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !504, file: !505, line: 61, baseType: !510, size: 64, align: 64, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !357, line: 130, baseType: !392)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !504, file: !505, line: 62, baseType: !363, size: 32, align: 32, offset: 192)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !504, file: !505, line: 64, baseType: !356, size: 32, align: 32, offset: 224)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !504, file: !505, line: 65, baseType: !360, size: 32, align: 32, offset: 256)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !504, file: !505, line: 67, baseType: !240, size: 32, align: 32, offset: 288)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !504, file: !505, line: 69, baseType: !391, size: 64, align: 64, offset: 320)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !504, file: !505, line: 74, baseType: !398, size: 64, align: 64, offset: 384)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !504, file: !505, line: 78, baseType: !518, size: 64, align: 64, offset: 448)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !357, line: 153, baseType: !399)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !504, file: !505, line: 80, baseType: !520, size: 64, align: 64, offset: 512)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !357, line: 158, baseType: !399)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !504, file: !505, line: 91, baseType: !522, size: 128, align: 64, offset: 576)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !523, line: 120, size: 128, align: 64, elements: !524)
!523 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!524 = !{!525, !527}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !522, file: !523, line: 122, baseType: !526, size: 64, align: 64)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !357, line: 139, baseType: !399)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !522, file: !523, line: 123, baseType: !528, size: 64, align: 64, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !357, line: 175, baseType: !399)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !504, file: !505, line: 92, baseType: !522, size: 128, align: 64, offset: 704)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !504, file: !505, line: 93, baseType: !522, size: 128, align: 64, offset: 832)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !504, file: !505, line: 106, baseType: !532, size: 192, align: 64, offset: 960)
!532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !528, size: 192, align: 64, elements: !533)
!533 = !{!534}
!534 = !DISubrange(count: 3)
!535 = !DILocation(line: 222, column: 14, scope: !478)
!536 = !DILocalVariable(name: "buf", scope: !478, file: !183, line: 223, type: !365)
!537 = !DILocation(line: 223, column: 8, scope: !478)
!538 = !DILocation(line: 225, column: 35, scope: !478)
!539 = !DILocation(line: 225, column: 41, scope: !478)
!540 = !DILocation(line: 225, column: 46, scope: !478)
!541 = !DILocation(line: 225, column: 57, scope: !478)
!542 = !DILocation(line: 225, column: 15, scope: !478)
!543 = !DILocation(line: 225, column: 13, scope: !478)
!544 = !DILocation(line: 226, column: 19, scope: !478)
!545 = !DILocation(line: 227, column: 22, scope: !478)
!546 = !DILocation(line: 227, column: 13, scope: !478)
!547 = !DILocation(line: 227, column: 43, scope: !478)
!548 = !DILocation(line: 226, column: 2, scope: !549)
!549 = !DILexicalBlockFile(scope: !478, file: !183, discriminator: 1)
!550 = !DILocation(line: 229, column: 21, scope: !478)
!551 = !DILocation(line: 229, column: 33, scope: !478)
!552 = !DILocation(line: 229, column: 2, scope: !478)
!553 = !DILocation(line: 230, column: 24, scope: !478)
!554 = !DILocation(line: 230, column: 2, scope: !478)
!555 = !DILocation(line: 231, column: 25, scope: !478)
!556 = !DILocation(line: 231, column: 2, scope: !478)
!557 = !DILocation(line: 233, column: 11, scope: !558)
!558 = distinct !DILexicalBlock(scope: !478, file: !183, line: 233, column: 6)
!559 = !DILocation(line: 233, column: 6, scope: !558)
!560 = !DILocation(line: 233, column: 6, scope: !478)
!561 = !DILocation(line: 234, column: 3, scope: !562)
!562 = distinct !DILexicalBlock(scope: !558, file: !183, line: 233, column: 31)
!563 = !DILocation(line: 236, column: 8, scope: !564)
!564 = distinct !DILexicalBlock(scope: !562, file: !183, line: 236, column: 6)
!565 = !DILocation(line: 236, column: 7, scope: !564)
!566 = !DILocation(line: 236, column: 12, scope: !564)
!567 = !DILocation(line: 236, column: 6, scope: !562)
!568 = !DILocation(line: 239, column: 10, scope: !569)
!569 = distinct !DILexicalBlock(scope: !564, file: !183, line: 236, column: 23)
!570 = !DILocation(line: 237, column: 4, scope: !569)
!571 = !DILocation(line: 240, column: 9, scope: !569)
!572 = !DILocation(line: 240, column: 4, scope: !569)
!573 = !DILocation(line: 241, column: 4, scope: !569)
!574 = !DILocation(line: 243, column: 11, scope: !562)
!575 = !DILocation(line: 243, column: 50, scope: !562)
!576 = !DILocation(line: 243, column: 55, scope: !562)
!577 = !DILocation(line: 243, column: 3, scope: !578)
!578 = !DILexicalBlockFile(scope: !562, file: !183, discriminator: 1)
!579 = !DILocation(line: 243, column: 3, scope: !562)
!580 = !DILocation(line: 245, column: 19, scope: !478)
!581 = !DILocation(line: 245, column: 25, scope: !478)
!582 = !DILocation(line: 245, column: 30, scope: !478)
!583 = !DILocation(line: 245, column: 2, scope: !478)
!584 = !DILocation(line: 247, column: 2, scope: !478)
!585 = !DILocation(line: 248, column: 7, scope: !478)
!586 = !DILocation(line: 248, column: 2, scope: !478)
!587 = !DILocation(line: 250, column: 2, scope: !478)
!588 = !DILocation(line: 251, column: 1, scope: !478)
!589 = distinct !DISubprogram(name: "post_script_tasks", scope: !183, file: !183, line: 68, type: !590, isLocal: true, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !402)
!590 = !DISubroutineType(types: !591)
!591 = !{null}
!592 = !DILocation(line: 70, column: 2, scope: !589)
!593 = !DILocation(line: 71, column: 2, scope: !589)
!594 = !DILocation(line: 73, column: 2, scope: !589)
!595 = !DILocation(line: 74, column: 19, scope: !589)
!596 = !DILocation(line: 74, column: 2, scope: !597)
!597 = !DILexicalBlockFile(scope: !589, file: !183, discriminator: 1)
!598 = !DILocation(line: 75, column: 1, scope: !589)
!599 = distinct !DISubprogram(name: "maintscript_postinst", scope: !183, file: !183, line: 275, type: !600, isLocal: false, isDefinition: true, scopeLine: 276, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !402)
!600 = !DISubroutineType(types: !601)
!601 = !{!240, !186, null}
!602 = !DILocalVariable(name: "pkg", arg: 1, scope: !599, file: !183, line: 275, type: !186)
!603 = !DILocation(line: 275, column: 38, scope: !599)
!604 = !DILocalVariable(name: "args", scope: !599, file: !183, line: 277, type: !447)
!605 = !DILocation(line: 277, column: 10, scope: !599)
!606 = !DILocalVariable(name: "rc", scope: !599, file: !183, line: 278, type: !240)
!607 = !DILocation(line: 278, column: 6, scope: !599)
!608 = !DILocation(line: 280, column: 1, scope: !599)
!609 = !DILocation(line: 281, column: 30, scope: !599)
!610 = !DILocation(line: 281, column: 68, scope: !599)
!611 = !DILocation(line: 281, column: 7, scope: !599)
!612 = !DILocation(line: 281, column: 5, scope: !599)
!613 = !DILocation(line: 282, column: 1, scope: !599)
!614 = !DILocation(line: 284, column: 6, scope: !615)
!615 = distinct !DILexicalBlock(scope: !599, file: !183, line: 284, column: 6)
!616 = !DILocation(line: 284, column: 6, scope: !599)
!617 = !DILocation(line: 285, column: 3, scope: !615)
!618 = !DILocation(line: 287, column: 9, scope: !599)
!619 = !DILocation(line: 287, column: 2, scope: !599)
!620 = distinct !DISubprogram(name: "maintscript_new", scope: !183, file: !183, line: 291, type: !621, isLocal: false, isDefinition: true, scopeLine: 293, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !402)
!621 = !DISubroutineType(types: !622)
!622 = !{!240, !186, !195, !195, !195, !365, null}
!623 = !DILocalVariable(name: "pkg", arg: 1, scope: !620, file: !183, line: 291, type: !186)
!624 = !DILocation(line: 291, column: 33, scope: !620)
!625 = !DILocalVariable(name: "scriptname", arg: 2, scope: !620, file: !183, line: 291, type: !195)
!626 = !DILocation(line: 291, column: 50, scope: !620)
!627 = !DILocalVariable(name: "desc", arg: 3, scope: !620, file: !183, line: 292, type: !195)
!628 = !DILocation(line: 292, column: 29, scope: !620)
!629 = !DILocalVariable(name: "cidir", arg: 4, scope: !620, file: !183, line: 292, type: !195)
!630 = !DILocation(line: 292, column: 47, scope: !620)
!631 = !DILocalVariable(name: "cidirrest", arg: 5, scope: !620, file: !183, line: 292, type: !365)
!632 = !DILocation(line: 292, column: 60, scope: !620)
!633 = !DILocalVariable(name: "cmd", scope: !620, file: !183, line: 294, type: !491)
!634 = !DILocation(line: 294, column: 17, scope: !620)
!635 = !DILocalVariable(name: "stab", scope: !620, file: !183, line: 295, type: !504)
!636 = !DILocation(line: 295, column: 14, scope: !620)
!637 = !DILocalVariable(name: "args", scope: !620, file: !183, line: 296, type: !447)
!638 = !DILocation(line: 296, column: 10, scope: !620)
!639 = !DILocalVariable(name: "buf", scope: !620, file: !183, line: 297, type: !365)
!640 = !DILocation(line: 297, column: 8, scope: !620)
!641 = !DILocation(line: 299, column: 9, scope: !620)
!642 = !DILocation(line: 299, column: 20, scope: !620)
!643 = !DILocation(line: 299, column: 2, scope: !620)
!644 = !DILocation(line: 300, column: 19, scope: !620)
!645 = !DILocation(line: 301, column: 22, scope: !620)
!646 = !DILocation(line: 301, column: 13, scope: !620)
!647 = !DILocation(line: 301, column: 43, scope: !620)
!648 = !DILocation(line: 300, column: 2, scope: !649)
!649 = !DILexicalBlockFile(scope: !620, file: !183, discriminator: 1)
!650 = !DILocation(line: 303, column: 1, scope: !620)
!651 = !DILocation(line: 304, column: 21, scope: !620)
!652 = !DILocation(line: 304, column: 28, scope: !620)
!653 = !DILocation(line: 304, column: 2, scope: !620)
!654 = !DILocation(line: 305, column: 24, scope: !620)
!655 = !DILocation(line: 305, column: 2, scope: !620)
!656 = !DILocation(line: 306, column: 25, scope: !620)
!657 = !DILocation(line: 306, column: 2, scope: !620)
!658 = !DILocation(line: 307, column: 1, scope: !620)
!659 = !DILocation(line: 309, column: 11, scope: !660)
!660 = distinct !DILexicalBlock(scope: !620, file: !183, line: 309, column: 6)
!661 = !DILocation(line: 309, column: 6, scope: !660)
!662 = !DILocation(line: 309, column: 6, scope: !620)
!663 = !DILocation(line: 310, column: 3, scope: !664)
!664 = distinct !DILexicalBlock(scope: !660, file: !183, line: 309, column: 26)
!665 = !DILocation(line: 312, column: 8, scope: !666)
!666 = distinct !DILexicalBlock(scope: !664, file: !183, line: 312, column: 6)
!667 = !DILocation(line: 312, column: 7, scope: !666)
!668 = !DILocation(line: 312, column: 12, scope: !666)
!669 = !DILocation(line: 312, column: 6, scope: !664)
!670 = !DILocation(line: 315, column: 10, scope: !671)
!671 = distinct !DILexicalBlock(scope: !666, file: !183, line: 312, column: 23)
!672 = !DILocation(line: 315, column: 22, scope: !671)
!673 = !DILocation(line: 313, column: 4, scope: !671)
!674 = !DILocation(line: 316, column: 9, scope: !671)
!675 = !DILocation(line: 316, column: 4, scope: !671)
!676 = !DILocation(line: 317, column: 4, scope: !671)
!677 = !DILocation(line: 319, column: 11, scope: !664)
!678 = !DILocation(line: 319, column: 50, scope: !664)
!679 = !DILocation(line: 319, column: 55, scope: !664)
!680 = !DILocation(line: 319, column: 3, scope: !681)
!681 = !DILexicalBlockFile(scope: !664, file: !183, discriminator: 1)
!682 = !DILocation(line: 319, column: 3, scope: !664)
!683 = !DILocation(line: 321, column: 19, scope: !620)
!684 = !DILocation(line: 321, column: 25, scope: !620)
!685 = !DILocation(line: 321, column: 30, scope: !620)
!686 = !DILocation(line: 321, column: 2, scope: !620)
!687 = !DILocation(line: 323, column: 2, scope: !620)
!688 = !DILocation(line: 324, column: 7, scope: !620)
!689 = !DILocation(line: 324, column: 2, scope: !620)
!690 = !DILocation(line: 325, column: 2, scope: !620)
!691 = !DILocation(line: 327, column: 2, scope: !620)
!692 = !DILocation(line: 328, column: 1, scope: !620)
!693 = distinct !DISubprogram(name: "maintscript_exec", scope: !183, file: !183, line: 172, type: !694, isLocal: true, isDefinition: true, scopeLine: 174, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !402)
!694 = !DISubroutineType(types: !695)
!695 = !{!240, !186, !373, !696, !697, !240}
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64, align: 64)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64, align: 64)
!698 = !DILocalVariable(name: "pkg", arg: 1, scope: !693, file: !183, line: 172, type: !186)
!699 = !DILocation(line: 172, column: 34, scope: !693)
!700 = !DILocalVariable(name: "pkgbin", arg: 2, scope: !693, file: !183, line: 172, type: !373)
!701 = !DILocation(line: 172, column: 54, scope: !693)
!702 = !DILocalVariable(name: "cmd", arg: 3, scope: !693, file: !183, line: 173, type: !696)
!703 = !DILocation(line: 173, column: 34, scope: !693)
!704 = !DILocalVariable(name: "stab", arg: 4, scope: !693, file: !183, line: 173, type: !697)
!705 = !DILocation(line: 173, column: 52, scope: !693)
!706 = !DILocalVariable(name: "warn", arg: 5, scope: !693, file: !183, line: 173, type: !240)
!707 = !DILocation(line: 173, column: 62, scope: !693)
!708 = !DILocalVariable(name: "pid", scope: !693, file: !183, line: 175, type: !709)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !355, line: 98, baseType: !710)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !357, line: 133, baseType: !240)
!711 = !DILocation(line: 175, column: 8, scope: !693)
!712 = !DILocalVariable(name: "rc", scope: !693, file: !183, line: 176, type: !240)
!713 = !DILocation(line: 176, column: 6, scope: !693)
!714 = !DILocation(line: 178, column: 13, scope: !693)
!715 = !DILocation(line: 178, column: 18, scope: !693)
!716 = !DILocation(line: 178, column: 28, scope: !693)
!717 = !DILocation(line: 178, column: 2, scope: !693)
!718 = !DILocation(line: 180, column: 2, scope: !693)
!719 = !DILocation(line: 182, column: 8, scope: !693)
!720 = !DILocation(line: 182, column: 6, scope: !693)
!721 = !DILocation(line: 183, column: 6, scope: !722)
!722 = distinct !DILexicalBlock(scope: !693, file: !183, line: 183, column: 6)
!723 = !DILocation(line: 183, column: 10, scope: !722)
!724 = !DILocation(line: 183, column: 6, scope: !693)
!725 = !DILocalVariable(name: "pkg_count", scope: !726, file: !183, line: 184, type: !365)
!726 = distinct !DILexicalBlock(scope: !722, file: !183, line: 183, column: 16)
!727 = !DILocation(line: 184, column: 9, scope: !726)
!728 = !DILocalVariable(name: "maintscript_debug", scope: !726, file: !183, line: 185, type: !195)
!729 = !DILocation(line: 185, column: 15, scope: !726)
!730 = !DILocation(line: 187, column: 56, scope: !726)
!731 = !DILocation(line: 187, column: 61, scope: !726)
!732 = !DILocation(line: 187, column: 29, scope: !726)
!733 = !DILocation(line: 187, column: 15, scope: !734)
!734 = !DILexicalBlockFile(scope: !726, file: !183, discriminator: 1)
!735 = !DILocation(line: 187, column: 13, scope: !726)
!736 = !DILocation(line: 189, column: 23, scope: !726)
!737 = !DILocation(line: 189, column: 21, scope: !726)
!738 = !DILocation(line: 191, column: 42, scope: !739)
!739 = distinct !DILexicalBlock(scope: !726, file: !183, line: 191, column: 7)
!740 = !DILocation(line: 191, column: 47, scope: !739)
!741 = !DILocation(line: 191, column: 52, scope: !739)
!742 = !DILocation(line: 191, column: 7, scope: !739)
!743 = !DILocation(line: 191, column: 61, scope: !739)
!744 = !DILocation(line: 192, column: 51, scope: !739)
!745 = !DILocation(line: 192, column: 7, scope: !739)
!746 = !DILocation(line: 192, column: 65, scope: !739)
!747 = !DILocation(line: 193, column: 39, scope: !739)
!748 = !DILocation(line: 193, column: 47, scope: !739)
!749 = !DILocation(line: 193, column: 53, scope: !739)
!750 = !DILocation(line: 193, column: 7, scope: !739)
!751 = !DILocation(line: 193, column: 62, scope: !739)
!752 = !DILocation(line: 194, column: 39, scope: !739)
!753 = !DILocation(line: 194, column: 44, scope: !739)
!754 = !DILocation(line: 194, column: 7, scope: !739)
!755 = !DILocation(line: 194, column: 56, scope: !739)
!756 = !DILocation(line: 195, column: 40, scope: !739)
!757 = !DILocation(line: 195, column: 7, scope: !739)
!758 = !DILocation(line: 195, column: 62, scope: !739)
!759 = !DILocation(line: 196, column: 7, scope: !739)
!760 = !DILocation(line: 191, column: 7, scope: !734)
!761 = !DILocation(line: 197, column: 12, scope: !739)
!762 = !DILocation(line: 197, column: 4, scope: !763)
!763 = !DILexicalBlockFile(scope: !739, file: !183, discriminator: 1)
!764 = !DILocation(line: 197, column: 4, scope: !739)
!765 = !DILocation(line: 199, column: 55, scope: !726)
!766 = !DILocation(line: 199, column: 34, scope: !726)
!767 = !DILocation(line: 199, column: 19, scope: !726)
!768 = !DILocation(line: 199, column: 24, scope: !726)
!769 = !DILocation(line: 199, column: 32, scope: !726)
!770 = !DILocation(line: 199, column: 3, scope: !726)
!771 = !DILocation(line: 199, column: 8, scope: !726)
!772 = !DILocation(line: 199, column: 17, scope: !726)
!773 = !DILocation(line: 201, column: 36, scope: !774)
!774 = distinct !DILexicalBlock(scope: !726, file: !183, line: 201, column: 7)
!775 = !DILocation(line: 201, column: 7, scope: !774)
!776 = !DILocation(line: 201, column: 41, scope: !774)
!777 = !DILocation(line: 201, column: 7, scope: !726)
!778 = !DILocation(line: 202, column: 12, scope: !774)
!779 = !DILocation(line: 202, column: 4, scope: !780)
!780 = !DILexicalBlockFile(scope: !774, file: !183, discriminator: 1)
!781 = !DILocation(line: 202, column: 4, scope: !774)
!782 = !DILocation(line: 205, column: 16, scope: !726)
!783 = !DILocation(line: 205, column: 3, scope: !726)
!784 = !DILocation(line: 207, column: 25, scope: !693)
!785 = !DILocation(line: 207, column: 30, scope: !693)
!786 = !DILocation(line: 207, column: 2, scope: !693)
!787 = !DILocation(line: 208, column: 20, scope: !693)
!788 = !DILocation(line: 208, column: 25, scope: !693)
!789 = !DILocation(line: 208, column: 30, scope: !693)
!790 = !DILocation(line: 208, column: 36, scope: !693)
!791 = !DILocation(line: 208, column: 7, scope: !693)
!792 = !DILocation(line: 208, column: 5, scope: !693)
!793 = !DILocation(line: 209, column: 2, scope: !693)
!794 = !DILocation(line: 211, column: 2, scope: !693)
!795 = !DILocation(line: 213, column: 9, scope: !693)
!796 = !DILocation(line: 213, column: 2, scope: !693)
!797 = distinct !DISubprogram(name: "maintscript_fallback", scope: !183, file: !183, line: 331, type: !798, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !402)
!798 = !DISubroutineType(types: !799)
!799 = !{!240, !186, !195, !195, !195, !365, !195, !195}
!800 = !DILocalVariable(name: "pkg", arg: 1, scope: !797, file: !183, line: 331, type: !186)
!801 = !DILocation(line: 331, column: 38, scope: !797)
!802 = !DILocalVariable(name: "scriptname", arg: 2, scope: !797, file: !183, line: 332, type: !195)
!803 = !DILocation(line: 332, column: 34, scope: !797)
!804 = !DILocalVariable(name: "desc", arg: 3, scope: !797, file: !183, line: 332, type: !195)
!805 = !DILocation(line: 332, column: 58, scope: !797)
!806 = !DILocalVariable(name: "cidir", arg: 4, scope: !797, file: !183, line: 333, type: !195)
!807 = !DILocation(line: 333, column: 34, scope: !797)
!808 = !DILocalVariable(name: "cidirrest", arg: 5, scope: !797, file: !183, line: 333, type: !365)
!809 = !DILocation(line: 333, column: 47, scope: !797)
!810 = !DILocalVariable(name: "ifok", arg: 6, scope: !797, file: !183, line: 334, type: !195)
!811 = !DILocation(line: 334, column: 34, scope: !797)
!812 = !DILocalVariable(name: "iffallback", arg: 7, scope: !797, file: !183, line: 334, type: !195)
!813 = !DILocation(line: 334, column: 52, scope: !797)
!814 = !DILocalVariable(name: "cmd", scope: !797, file: !183, line: 336, type: !491)
!815 = !DILocation(line: 336, column: 17, scope: !797)
!816 = !DILocalVariable(name: "oldscriptpath", scope: !797, file: !183, line: 337, type: !195)
!817 = !DILocation(line: 337, column: 14, scope: !797)
!818 = !DILocalVariable(name: "stab", scope: !797, file: !183, line: 338, type: !504)
!819 = !DILocation(line: 338, column: 14, scope: !797)
!820 = !DILocalVariable(name: "buf", scope: !797, file: !183, line: 339, type: !365)
!821 = !DILocation(line: 339, column: 8, scope: !797)
!822 = !DILocation(line: 341, column: 38, scope: !797)
!823 = !DILocation(line: 341, column: 44, scope: !797)
!824 = !DILocation(line: 341, column: 49, scope: !797)
!825 = !DILocation(line: 341, column: 60, scope: !797)
!826 = !DILocation(line: 341, column: 18, scope: !797)
!827 = !DILocation(line: 341, column: 16, scope: !797)
!828 = !DILocation(line: 342, column: 19, scope: !797)
!829 = !DILocation(line: 343, column: 22, scope: !797)
!830 = !DILocation(line: 343, column: 13, scope: !797)
!831 = !DILocation(line: 343, column: 43, scope: !797)
!832 = !DILocation(line: 342, column: 2, scope: !833)
!833 = !DILexicalBlockFile(scope: !797, file: !183, discriminator: 1)
!834 = !DILocation(line: 345, column: 21, scope: !797)
!835 = !DILocation(line: 345, column: 36, scope: !797)
!836 = !DILocation(line: 345, column: 2, scope: !797)
!837 = !DILocation(line: 346, column: 25, scope: !797)
!838 = !DILocation(line: 346, column: 37, scope: !797)
!839 = !DILocation(line: 347, column: 36, scope: !797)
!840 = !DILocation(line: 347, column: 41, scope: !797)
!841 = !DILocation(line: 347, column: 51, scope: !797)
!842 = !DILocation(line: 347, column: 19, scope: !797)
!843 = !DILocation(line: 346, column: 2, scope: !797)
!844 = !DILocation(line: 350, column: 11, scope: !845)
!845 = distinct !DILexicalBlock(scope: !797, file: !183, line: 350, column: 6)
!846 = !DILocation(line: 350, column: 6, scope: !845)
!847 = !DILocation(line: 350, column: 6, scope: !797)
!848 = !DILocation(line: 351, column: 8, scope: !849)
!849 = distinct !DILexicalBlock(scope: !850, file: !183, line: 351, column: 6)
!850 = distinct !DILexicalBlock(scope: !845, file: !183, line: 350, column: 34)
!851 = !DILocation(line: 351, column: 7, scope: !849)
!852 = !DILocation(line: 351, column: 12, scope: !849)
!853 = !DILocation(line: 351, column: 6, scope: !850)
!854 = !DILocation(line: 354, column: 10, scope: !855)
!855 = distinct !DILexicalBlock(scope: !849, file: !183, line: 351, column: 23)
!856 = !DILocation(line: 354, column: 22, scope: !855)
!857 = !DILocation(line: 352, column: 4, scope: !855)
!858 = !DILocation(line: 355, column: 4, scope: !855)
!859 = !DILocation(line: 356, column: 9, scope: !855)
!860 = !DILocation(line: 356, column: 4, scope: !855)
!861 = !DILocation(line: 357, column: 4, scope: !855)
!862 = !DILocation(line: 359, column: 11, scope: !850)
!863 = !DILocation(line: 360, column: 15, scope: !850)
!864 = !DILocation(line: 360, column: 21, scope: !850)
!865 = !DILocation(line: 360, column: 46, scope: !850)
!866 = !DILocation(line: 360, column: 45, scope: !850)
!867 = !DILocation(line: 360, column: 36, scope: !868)
!868 = !DILexicalBlockFile(scope: !850, file: !183, discriminator: 1)
!869 = !DILocation(line: 359, column: 3, scope: !868)
!870 = !DILocation(line: 361, column: 2, scope: !850)
!871 = !DILocation(line: 362, column: 25, scope: !872)
!872 = distinct !DILexicalBlock(scope: !873, file: !183, line: 362, column: 7)
!873 = distinct !DILexicalBlock(scope: !845, file: !183, line: 361, column: 9)
!874 = !DILocation(line: 362, column: 31, scope: !872)
!875 = !DILocation(line: 362, column: 36, scope: !872)
!876 = !DILocation(line: 362, column: 8, scope: !872)
!877 = !DILocation(line: 362, column: 7, scope: !873)
!878 = !DILocation(line: 363, column: 4, scope: !879)
!879 = distinct !DILexicalBlock(scope: !872, file: !183, line: 362, column: 75)
!880 = !DILocation(line: 364, column: 9, scope: !879)
!881 = !DILocation(line: 364, column: 4, scope: !879)
!882 = !DILocation(line: 365, column: 4, scope: !879)
!883 = !DILocation(line: 366, column: 4, scope: !879)
!884 = !DILocation(line: 369, column: 9, scope: !797)
!885 = !DILocation(line: 369, column: 2, scope: !833)
!886 = !DILocation(line: 371, column: 9, scope: !797)
!887 = !DILocation(line: 371, column: 20, scope: !797)
!888 = !DILocation(line: 371, column: 2, scope: !797)
!889 = !DILocation(line: 372, column: 19, scope: !797)
!890 = !DILocation(line: 373, column: 22, scope: !797)
!891 = !DILocation(line: 373, column: 13, scope: !797)
!892 = !DILocation(line: 373, column: 43, scope: !797)
!893 = !DILocation(line: 372, column: 2, scope: !833)
!894 = !DILocation(line: 375, column: 2, scope: !797)
!895 = !DILocation(line: 376, column: 21, scope: !797)
!896 = !DILocation(line: 376, column: 28, scope: !797)
!897 = !DILocation(line: 376, column: 2, scope: !797)
!898 = !DILocation(line: 377, column: 25, scope: !797)
!899 = !DILocation(line: 377, column: 37, scope: !797)
!900 = !DILocation(line: 378, column: 36, scope: !797)
!901 = !DILocation(line: 378, column: 41, scope: !797)
!902 = !DILocation(line: 378, column: 51, scope: !797)
!903 = !DILocation(line: 378, column: 19, scope: !797)
!904 = !DILocation(line: 379, column: 36, scope: !797)
!905 = !DILocation(line: 379, column: 41, scope: !797)
!906 = !DILocation(line: 379, column: 51, scope: !797)
!907 = !DILocation(line: 379, column: 19, scope: !797)
!908 = !DILocation(line: 377, column: 2, scope: !797)
!909 = !DILocation(line: 382, column: 11, scope: !910)
!910 = distinct !DILexicalBlock(scope: !797, file: !183, line: 382, column: 6)
!911 = !DILocation(line: 382, column: 6, scope: !910)
!912 = !DILocation(line: 382, column: 6, scope: !797)
!913 = !DILocation(line: 383, column: 3, scope: !914)
!914 = distinct !DILexicalBlock(scope: !910, file: !183, line: 382, column: 26)
!915 = !DILocation(line: 385, column: 8, scope: !916)
!916 = distinct !DILexicalBlock(scope: !914, file: !183, line: 385, column: 6)
!917 = !DILocation(line: 385, column: 7, scope: !916)
!918 = !DILocation(line: 385, column: 12, scope: !916)
!919 = !DILocation(line: 385, column: 6, scope: !914)
!920 = !DILocation(line: 386, column: 11, scope: !916)
!921 = !DILocation(line: 386, column: 4, scope: !922)
!922 = !DILexicalBlockFile(scope: !916, file: !183, discriminator: 1)
!923 = !DILocation(line: 386, column: 4, scope: !916)
!924 = !DILocation(line: 388, column: 12, scope: !916)
!925 = !DILocation(line: 388, column: 51, scope: !916)
!926 = !DILocation(line: 388, column: 56, scope: !916)
!927 = !DILocation(line: 388, column: 4, scope: !922)
!928 = !DILocation(line: 388, column: 4, scope: !916)
!929 = !DILocation(line: 391, column: 19, scope: !797)
!930 = !DILocation(line: 391, column: 25, scope: !797)
!931 = !DILocation(line: 391, column: 30, scope: !797)
!932 = !DILocation(line: 391, column: 2, scope: !797)
!933 = !DILocation(line: 392, column: 9, scope: !797)
!934 = !DILocation(line: 392, column: 2, scope: !833)
!935 = !DILocation(line: 394, column: 2, scope: !797)
!936 = !DILocation(line: 395, column: 7, scope: !797)
!937 = !DILocation(line: 395, column: 2, scope: !797)
!938 = !DILocation(line: 396, column: 2, scope: !797)
!939 = !DILocation(line: 398, column: 2, scope: !797)
!940 = !DILocation(line: 399, column: 1, scope: !797)
!941 = distinct !DISubprogram(name: "setexecute", scope: !183, file: !183, line: 84, type: !942, isLocal: true, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !402)
!942 = !DISubroutineType(types: !943)
!943 = !{null, !195, !697}
!944 = !DILocalVariable(name: "path", arg: 1, scope: !941, file: !183, line: 84, type: !195)
!945 = !DILocation(line: 84, column: 24, scope: !941)
!946 = !DILocalVariable(name: "stab", arg: 2, scope: !941, file: !183, line: 84, type: !697)
!947 = !DILocation(line: 84, column: 43, scope: !941)
!948 = !DILocation(line: 86, column: 7, scope: !949)
!949 = distinct !DILexicalBlock(scope: !941, file: !183, line: 86, column: 6)
!950 = !DILocation(line: 86, column: 13, scope: !949)
!951 = !DILocation(line: 86, column: 21, scope: !949)
!952 = !DILocation(line: 86, column: 29, scope: !949)
!953 = !DILocation(line: 86, column: 6, scope: !941)
!954 = !DILocation(line: 87, column: 3, scope: !949)
!955 = !DILocation(line: 88, column: 13, scope: !956)
!956 = distinct !DILexicalBlock(scope: !941, file: !183, line: 88, column: 6)
!957 = !DILocation(line: 88, column: 7, scope: !956)
!958 = !DILocation(line: 88, column: 6, scope: !941)
!959 = !DILocation(line: 89, column: 3, scope: !956)
!960 = !DILocation(line: 90, column: 10, scope: !941)
!961 = !DILocation(line: 90, column: 68, scope: !941)
!962 = !DILocation(line: 90, column: 2, scope: !963)
!963 = !DILexicalBlockFile(scope: !941, file: !183, discriminator: 1)
!964 = !DILocation(line: 90, column: 2, scope: !941)
!965 = !DILocation(line: 91, column: 1, scope: !941)
!966 = distinct !DISubprogram(name: "cu_post_script_tasks", scope: !183, file: !183, line: 78, type: !967, isLocal: true, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !402)
!967 = !DISubroutineType(types: !968)
!968 = !{null, !240, !969}
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64, align: 64)
!970 = !DILocalVariable(name: "argc", arg: 1, scope: !966, file: !183, line: 78, type: !240)
!971 = !DILocation(line: 78, column: 26, scope: !966)
!972 = !DILocalVariable(name: "argv", arg: 2, scope: !966, file: !183, line: 78, type: !969)
!973 = !DILocation(line: 78, column: 39, scope: !966)
!974 = !DILocation(line: 80, column: 2, scope: !966)
!975 = !DILocation(line: 81, column: 1, scope: !966)
!976 = distinct !DISubprogram(name: "maintscript_pre_exec", scope: !183, file: !183, line: 97, type: !977, isLocal: true, isDefinition: true, scopeLine: 98, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !402)
!977 = !DISubroutineType(types: !978)
!978 = !{!195, !696}
!979 = !DILocalVariable(name: "cmd", arg: 1, scope: !976, file: !183, line: 97, type: !696)
!980 = !DILocation(line: 97, column: 38, scope: !976)
!981 = !DILocalVariable(name: "admindir", scope: !976, file: !183, line: 99, type: !195)
!982 = !DILocation(line: 99, column: 14, scope: !976)
!983 = !DILocation(line: 99, column: 25, scope: !976)
!984 = !DILocalVariable(name: "changedir", scope: !976, file: !183, line: 100, type: !195)
!985 = !DILocation(line: 100, column: 14, scope: !976)
!986 = !DILocalVariable(name: "instdirlen", scope: !976, file: !183, line: 101, type: !987)
!987 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !988, line: 216, baseType: !392)
!988 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!989 = !DILocation(line: 101, column: 9, scope: !976)
!990 = !DILocation(line: 101, column: 29, scope: !976)
!991 = !DILocation(line: 101, column: 22, scope: !976)
!992 = !DILocation(line: 103, column: 6, scope: !993)
!993 = distinct !DILexicalBlock(scope: !976, file: !183, line: 103, column: 6)
!994 = !DILocation(line: 103, column: 17, scope: !993)
!995 = !DILocation(line: 103, column: 21, scope: !993)
!996 = !DILocation(line: 103, column: 24, scope: !997)
!997 = !DILexicalBlockFile(scope: !993, file: !183, discriminator: 1)
!998 = !DILocation(line: 103, column: 6, scope: !997)
!999 = !DILocation(line: 104, column: 15, scope: !993)
!1000 = !DILocation(line: 104, column: 13, scope: !993)
!1001 = !DILocation(line: 104, column: 3, scope: !993)
!1002 = !DILocation(line: 106, column: 13, scope: !993)
!1003 = !DILocation(line: 108, column: 6, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !976, file: !183, line: 108, column: 6)
!1005 = !DILocation(line: 108, column: 17, scope: !1004)
!1006 = !DILocation(line: 108, column: 21, scope: !1004)
!1007 = !DILocation(line: 108, column: 25, scope: !1008)
!1008 = !DILexicalBlockFile(scope: !1004, file: !183, discriminator: 1)
!1009 = !DILocation(line: 108, column: 6, scope: !1008)
!1010 = !DILocalVariable(name: "rc", scope: !1011, file: !183, line: 109, type: !240)
!1011 = distinct !DILexicalBlock(scope: !1004, file: !183, line: 108, column: 60)
!1012 = !DILocation(line: 109, column: 7, scope: !1011)
!1013 = !DILocation(line: 111, column: 15, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1011, file: !183, line: 111, column: 7)
!1015 = !DILocation(line: 111, column: 25, scope: !1014)
!1016 = !DILocation(line: 111, column: 34, scope: !1014)
!1017 = !DILocation(line: 111, column: 7, scope: !1014)
!1018 = !DILocation(line: 111, column: 46, scope: !1014)
!1019 = !DILocation(line: 111, column: 7, scope: !1011)
!1020 = !DILocation(line: 112, column: 11, scope: !1014)
!1021 = !DILocation(line: 112, column: 4, scope: !1022)
!1022 = !DILexicalBlockFile(scope: !1014, file: !183, discriminator: 1)
!1023 = !DILocation(line: 112, column: 4, scope: !1014)
!1024 = !DILocation(line: 113, column: 31, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1011, file: !183, line: 113, column: 7)
!1026 = !DILocation(line: 113, column: 42, scope: !1025)
!1027 = !DILocation(line: 113, column: 40, scope: !1025)
!1028 = !DILocation(line: 113, column: 7, scope: !1025)
!1029 = !DILocation(line: 113, column: 57, scope: !1025)
!1030 = !DILocation(line: 113, column: 7, scope: !1011)
!1031 = !DILocation(line: 114, column: 12, scope: !1025)
!1032 = !DILocation(line: 114, column: 4, scope: !1033)
!1033 = !DILexicalBlockFile(scope: !1025, file: !183, discriminator: 1)
!1034 = !DILocation(line: 114, column: 4, scope: !1025)
!1035 = !DILocation(line: 115, column: 7, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1011, file: !183, line: 115, column: 7)
!1037 = !DILocation(line: 115, column: 34, scope: !1036)
!1038 = !DILocation(line: 115, column: 7, scope: !1011)
!1039 = !DILocation(line: 116, column: 12, scope: !1036)
!1040 = !DILocation(line: 116, column: 4, scope: !1041)
!1041 = !DILexicalBlockFile(scope: !1036, file: !183, discriminator: 1)
!1042 = !DILocation(line: 116, column: 4, scope: !1036)
!1043 = !DILocation(line: 118, column: 15, scope: !1011)
!1044 = !DILocation(line: 118, column: 8, scope: !1011)
!1045 = !DILocation(line: 118, column: 6, scope: !1011)
!1046 = !DILocation(line: 119, column: 7, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1011, file: !183, line: 119, column: 7)
!1048 = !DILocation(line: 119, column: 10, scope: !1047)
!1049 = !DILocation(line: 119, column: 13, scope: !1050)
!1050 = !DILexicalBlockFile(scope: !1047, file: !183, discriminator: 1)
!1051 = !DILocation(line: 119, column: 38, scope: !1050)
!1052 = !DILocation(line: 119, column: 42, scope: !1053)
!1053 = !DILexicalBlockFile(scope: !1047, file: !183, discriminator: 2)
!1054 = !DILocation(line: 119, column: 41, scope: !1053)
!1055 = !DILocation(line: 119, column: 46, scope: !1053)
!1056 = !DILocation(line: 119, column: 7, scope: !1053)
!1057 = !DILocation(line: 120, column: 11, scope: !1047)
!1058 = !DILocation(line: 120, column: 4, scope: !1050)
!1059 = !DILocation(line: 120, column: 4, scope: !1047)
!1060 = !DILocation(line: 123, column: 12, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1047, file: !183, line: 123, column: 12)
!1062 = !DILocation(line: 123, column: 12, scope: !1047)
!1063 = !DILocation(line: 124, column: 12, scope: !1061)
!1064 = !DILocation(line: 124, column: 53, scope: !1061)
!1065 = !DILocation(line: 124, column: 4, scope: !1066)
!1066 = !DILexicalBlockFile(scope: !1061, file: !183, discriminator: 1)
!1067 = !DILocation(line: 124, column: 4, scope: !1061)
!1068 = !DILocation(line: 125, column: 2, scope: !1011)
!1069 = !DILocation(line: 128, column: 12, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !976, file: !183, line: 128, column: 6)
!1071 = !DILocation(line: 128, column: 6, scope: !1070)
!1072 = !DILocation(line: 128, column: 6, scope: !976)
!1073 = !DILocation(line: 129, column: 11, scope: !1070)
!1074 = !DILocation(line: 129, column: 51, scope: !1070)
!1075 = !DILocation(line: 129, column: 3, scope: !1076)
!1076 = !DILexicalBlockFile(scope: !1070, file: !183, discriminator: 1)
!1077 = !DILocation(line: 129, column: 3, scope: !1070)
!1078 = !DILocation(line: 130, column: 6, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !976, file: !183, line: 130, column: 6)
!1080 = !DILocation(line: 130, column: 6, scope: !976)
!1081 = !DILocalVariable(name: "args", scope: !1082, file: !183, line: 131, type: !1083)
!1082 = distinct !DILexicalBlock(scope: !1079, file: !183, line: 130, column: 35)
!1083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varbuf", file: !1084, line: 55, size: 192, align: 64, elements: !1085)
!1084 = !DIFile(filename: "../lib/dpkg/varbuf.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!1085 = !{!1086, !1087, !1088}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1083, file: !1084, line: 56, baseType: !987, size: 64, align: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1083, file: !1084, line: 56, baseType: !987, size: 64, align: 64, offset: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1083, file: !1084, line: 57, baseType: !365, size: 64, align: 64, offset: 128)
!1089 = !DILocation(line: 131, column: 17, scope: !1082)
!1090 = !DILocalVariable(name: "argv", scope: !1082, file: !183, line: 132, type: !499)
!1091 = !DILocation(line: 132, column: 16, scope: !1082)
!1092 = !DILocation(line: 132, column: 23, scope: !1082)
!1093 = !DILocation(line: 132, column: 28, scope: !1082)
!1094 = !DILocation(line: 134, column: 3, scope: !1082)
!1095 = !DILocation(line: 134, column: 11, scope: !1096)
!1096 = !DILexicalBlockFile(scope: !1082, file: !183, discriminator: 1)
!1097 = !DILocation(line: 134, column: 10, scope: !1096)
!1098 = !DILocation(line: 134, column: 3, scope: !1096)
!1099 = !DILocation(line: 135, column: 4, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1082, file: !183, line: 134, column: 19)
!1101 = !DILocation(line: 136, column: 27, scope: !1100)
!1102 = !DILocation(line: 136, column: 26, scope: !1100)
!1103 = !DILocation(line: 136, column: 41, scope: !1100)
!1104 = !DILocation(line: 136, column: 40, scope: !1100)
!1105 = !DILocation(line: 136, column: 33, scope: !1100)
!1106 = !DILocation(line: 136, column: 4, scope: !1107)
!1107 = !DILexicalBlockFile(scope: !1100, file: !183, discriminator: 1)
!1108 = !DILocation(line: 134, column: 3, scope: !1109)
!1109 = !DILexicalBlockFile(scope: !1082, file: !183, discriminator: 2)
!1110 = distinct !{!1110, !1094}
!1111 = !DILocation(line: 138, column: 3, scope: !1082)
!1112 = !DILocation(line: 139, column: 44, scope: !1082)
!1113 = !DILocation(line: 139, column: 49, scope: !1082)
!1114 = !DILocation(line: 140, column: 14, scope: !1082)
!1115 = !DILocation(line: 139, column: 3, scope: !1082)
!1116 = !DILocation(line: 141, column: 3, scope: !1082)
!1117 = !DILocation(line: 142, column: 2, scope: !1082)
!1118 = !DILocation(line: 143, column: 6, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !976, file: !183, line: 143, column: 6)
!1120 = !DILocation(line: 143, column: 17, scope: !1119)
!1121 = !DILocation(line: 143, column: 22, scope: !1119)
!1122 = !DILocation(line: 143, column: 25, scope: !1123)
!1123 = !DILexicalBlockFile(scope: !1119, file: !183, discriminator: 1)
!1124 = !DILocation(line: 143, column: 6, scope: !1123)
!1125 = !DILocation(line: 144, column: 10, scope: !1119)
!1126 = !DILocation(line: 144, column: 15, scope: !1119)
!1127 = !DILocation(line: 144, column: 3, scope: !1119)
!1128 = !DILocation(line: 146, column: 13, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !976, file: !183, line: 146, column: 6)
!1130 = !DILocation(line: 146, column: 18, scope: !1129)
!1131 = !DILocation(line: 146, column: 6, scope: !1129)
!1132 = !DILocation(line: 146, column: 30, scope: !1129)
!1133 = !DILocation(line: 146, column: 28, scope: !1129)
!1134 = !DILocation(line: 146, column: 6, scope: !976)
!1135 = !DILocation(line: 147, column: 68, scope: !1129)
!1136 = !DILocation(line: 147, column: 73, scope: !1129)
!1137 = !DILocation(line: 147, column: 83, scope: !1129)
!1138 = !DILocation(line: 147, column: 3, scope: !1129)
!1139 = !DILocation(line: 150, column: 9, scope: !976)
!1140 = !DILocation(line: 150, column: 14, scope: !976)
!1141 = !DILocation(line: 150, column: 25, scope: !976)
!1142 = !DILocation(line: 150, column: 23, scope: !976)
!1143 = !DILocation(line: 150, column: 2, scope: !976)
!1144 = !DILocation(line: 151, column: 1, scope: !976)
!1145 = distinct !DISubprogram(name: "maintscript_set_exec_context", scope: !183, file: !183, line: 161, type: !1146, isLocal: true, isDefinition: true, scopeLine: 162, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !402)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!240, !696}
!1148 = !DILocalVariable(name: "cmd", arg: 1, scope: !1145, file: !183, line: 161, type: !696)
!1149 = !DILocation(line: 161, column: 46, scope: !1145)
!1150 = !DILocation(line: 166, column: 2, scope: !1145)
