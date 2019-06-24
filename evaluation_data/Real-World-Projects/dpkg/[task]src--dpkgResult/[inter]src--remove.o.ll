; ModuleID = './[inter]src--remove.o.i'
source_filename = "./[inter]src--remove.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cmdinfo = type { i8*, i8, i32, i32*, i8**, void (%struct.cmdinfo*, i8*)*, i32, i8*, i32 (i8**)* }
%struct.varbuf = type { i64, i64, i8* }
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
%struct.varbuf_state = type { i64 }
%struct.fsys_hash_rev_iter = type { %struct.fsys_namenode_list* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.__dirstream = type opaque
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.fsys_node_pkgs_iter = type opaque

@.str = private unnamed_addr constant [27 x i8] c"deferred_remove package %s\00", align 1
@f_pending = external global i32, align 4
@cipaction = external global %struct.cmdinfo*, align 8
@f_noact = external global i32, align 4
@sincenothing = external global i32, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"ignoring request to remove %.250s which isn't installed\00", align 1
@.str.2 = private unnamed_addr constant [117 x i8] c"ignoring request to remove %.250s, only the config\0A files of which are on the system; use --purge to remove them too\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"this is an essential package; it should not be removed\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"checking dependencies for remove '%s'\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"checking virtual package '%s'\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"dependency problems prevent removal of %s:\0A%s\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"dependency problems - not removing\00", align 1
@.str.8 = private unnamed_addr constant [66 x i8] c"%s: dependency problems, but removing anyway as you requested:\0A%s\00", align 1
@.str.9 = private unnamed_addr constant [98 x i8] c"package is in a very bad inconsistent state; you should\0A reinstall it before attempting a removal\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"Would remove or purge %s (%s) ...\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"Removing %s (%s) ...\0A\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@deferred_remove.oldpkgstatus = internal global i32 0, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"prerm\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"pre-removal\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"removal_bulk package %s\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"postrm\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"removal_bulk purging? foundpostrm=%d\00", align 1
@.str.18 = private unnamed_addr constant [46 x i8] c"removal_bulk no postrm, no conffiles, purging\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.20 = private unnamed_addr constant [44 x i8] c"removal_bulk purge done, removing list '%s'\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"cannot remove old files list\00", align 1
@.str.22 = private unnamed_addr constant [46 x i8] c"removal_bulk purge done, removing postrm '%s'\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"can't remove old postrm script\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"removal done\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"checking depending package '%s'\00", align 1
@.str.26 = private unnamed_addr constant [32 x i8] c"ignoring depending package '%s'\00", align 1
@dependtry = external global i32, align 4
@removal_bulk_remove_files.fnvb = internal global %struct.varbuf zeroinitializer, align 8
@.str.27 = private unnamed_addr constant [27 x i8] c"removal_bulk '%s' flags=%o\00", align 1
@instdir = external global i8*, align 8
@.str.28 = private unnamed_addr constant [28 x i8] c"removal_bulk is a directory\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"/.\00", align 1
@.str.30 = private unnamed_addr constant [48 x i8] c"removal_bulk '%s' root directory, cannot remove\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c".dpkg-tmp\00", align 1
@.str.32 = private unnamed_addr constant [32 x i8] c"removal_bulk cleaning temp '%s'\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c".dpkg-new\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"removal_bulk cleaning new '%s'\00", align 1
@.str.35 = private unnamed_addr constant [27 x i8] c"removal_bulk removing '%s'\00", align 1
@.str.36 = private unnamed_addr constant [54 x i8] c"removal_bulk '%s' was not empty, will try again later\00", align 1
@.str.37 = private unnamed_addr constant [97 x i8] c"while removing %.250s, unable to remove directory '%.250s': %s - directory may be a mount point?\00", align 1
@.str.38 = private unnamed_addr constant [23 x i8] c"cannot remove '%.250s'\00", align 1
@.str.39 = private unnamed_addr constant [28 x i8] c"removal_bulk unlinking '%s'\00", align 1
@.str.40 = private unnamed_addr constant [35 x i8] c"unable to securely remove '%.250s'\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"post-removal\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"triggers\00", align 1
@.str.43 = private unnamed_addr constant [37 x i8] c"removal_bulk cleaning info directory\00", align 1
@.str.44 = private unnamed_addr constant [43 x i8] c"removal_bulk file shared with %s, skipping\00", align 1
@.str.45 = private unnamed_addr constant [37 x i8] c"removal_bulk info not postrm or list\00", align 1
@.str.46 = private unnamed_addr constant [44 x i8] c"unable to delete control info file '%.250s'\00", align 1
@.str.47 = private unnamed_addr constant [30 x i8] c"removal_bulk info unlinked %s\00", align 1
@removal_bulk_remove_configfiles.removeconffexts = internal constant [8 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.52, i32 0, i32 0), i8* null], align 16
@.str.48 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c".bak\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c".dpkg-old\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c".dpkg-dist\00", align 1
@.str.53 = private unnamed_addr constant [45 x i8] c"Purging configuration files for %s (%s) ...\0A\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"purge\00", align 1
@.str.55 = private unnamed_addr constant [45 x i8] c"removal_bulk conffile not ours any more '%s'\00", align 1
@.str.56 = private unnamed_addr constant [52 x i8] c"removal_bulk conffile '%s' ignored due to diversion\00", align 1
@.str.57 = private unnamed_addr constant [38 x i8] c"removal_bulk set to new conffile '%s'\00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"newconffile\00", align 1
@removal_bulk_remove_configfiles.fnvb = internal global %struct.varbuf zeroinitializer, align 8
@removal_bulk_remove_configfiles.removevb = internal global %struct.varbuf zeroinitializer, align 8
@.str.59 = private unnamed_addr constant [34 x i8] c"removal_bulk conffile obsolete %s\00", align 1
@.str.60 = private unnamed_addr constant [36 x i8] c"removal_bulk conffile '%s' (= '%s')\00", align 1
@.str.61 = private unnamed_addr constant [11 x i8] c"<rc == -1>\00", align 1
@.str.62 = private unnamed_addr constant [52 x i8] c"cannot remove old config file '%.250s' (= '%.250s')\00", align 1
@.str.63 = private unnamed_addr constant [35 x i8] c"removal_bulk conffile no dsd %s %s\00", align 1
@.str.64 = private unnamed_addr constant [59 x i8] c"cannot read config file directory '%.250s' (from '%.250s')\00", align 1
@.str.65 = private unnamed_addr constant [38 x i8] c"removal_bulk conffile cleaning dsd %s\00", align 1
@.str.66 = private unnamed_addr constant [93 x i8] c"removal_bulk conffile dsd entry='%s' conffbasename='%s' conffnameused=%d conffbasenamelen=%d\00", align 1
@.str.67 = private unnamed_addr constant [45 x i8] c"removal_bulk conffile dsd entry starts right\00", align 1
@.str.68 = private unnamed_addr constant [45 x i8] c"removal_bulk conffile dsd entry starts wrong\00", align 1
@.str.69 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.70 = private unnamed_addr constant [39 x i8] c"removal_bulk conffile dsd entry not it\00", align 1
@.str.71 = private unnamed_addr constant [46 x i8] c"removal_bulk conffile dsd entry removing '%s'\00", align 1
@.str.72 = private unnamed_addr constant [60 x i8] c"cannot remove old backup config file '%.250s' (of '%.250s')\00", align 1
@removal_bulk_remove_leftover_dirs.fnvb = internal global %struct.varbuf zeroinitializer, align 8
@.str.73 = private unnamed_addr constant [67 x i8] c"removal_bulk expecting only left over dirs, ignoring conffile '%s'\00", align 1
@.str.74 = private unnamed_addr constant [67 x i8] c"while removing %.250s, directory '%.250s' not empty so not removed\00", align 1
@.str.75 = private unnamed_addr constant [41 x i8] c"removal_bulk is a symlink to a directory\00", align 1

; Function Attrs: nounwind uwtable
define void @deferred_remove(%struct.pkginfo*) #0 !dbg !241 {
  %2 = alloca %struct.pkginfo*, align 8
  %3 = alloca %struct.varbuf, align 8
  %4 = alloca %struct.dependency*, align 8
  %5 = alloca i32, align 4
  store %struct.pkginfo* %0, %struct.pkginfo** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %2, metadata !485, metadata !486), !dbg !487
  call void @llvm.dbg.declare(metadata %struct.varbuf* %3, metadata !488, metadata !486), !dbg !489
  %6 = bitcast %struct.varbuf* %3 to i8*, !dbg !489
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 24, i32 8, i1 false), !dbg !489
  call void @llvm.dbg.declare(metadata %struct.dependency** %4, metadata !490, metadata !486), !dbg !491
  call void @llvm.dbg.declare(metadata i32* %5, metadata !492, metadata !486), !dbg !493
  %7 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !494
  %8 = call i8* @pkg_name(%struct.pkginfo* %7, i32 3), !dbg !495
  call void (i32, i8*, ...) @debug(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0), i8* %8), !dbg !496
  %9 = load i32, i32* @f_pending, align 4, !dbg !497
  %10 = icmp ne i32 %9, 0, !dbg !497
  br i1 %10, label %31, label %11, !dbg !499

; <label>:11:                                     ; preds = %1
  %12 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !500
  %13 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %12, i32 0, i32 2, !dbg !502
  %14 = load i32, i32* %13, align 8, !dbg !502
  %15 = icmp ne i32 %14, 0, !dbg !503
  br i1 %15, label %16, label %31, !dbg !504

; <label>:16:                                     ; preds = %11
  %17 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !505
  %18 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %17, i32 0, i32 6, !dbg !508
  %19 = load i32, i32* %18, align 8, !dbg !508
  %20 = icmp eq i32 %19, 6, !dbg !509
  br i1 %20, label %21, label %23, !dbg !510

; <label>:21:                                     ; preds = %16
  %22 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !511
  call void @pkg_set_want(%struct.pkginfo* %22, i32 4), !dbg !512
  br label %25, !dbg !512

; <label>:23:                                     ; preds = %16
  %24 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !513
  call void @pkg_set_want(%struct.pkginfo* %24, i32 3), !dbg !514
  br label %25

; <label>:25:                                     ; preds = %23, %21
  %26 = load i32, i32* @f_noact, align 4, !dbg !515
  %27 = icmp ne i32 %26, 0, !dbg !515
  br i1 %27, label %30, label %28, !dbg !517

; <label>:28:                                     ; preds = %25
  %29 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !518
  call void @modstatdb_note(%struct.pkginfo* %29), !dbg !519
  br label %30, !dbg !519

; <label>:30:                                     ; preds = %28, %25
  br label %31, !dbg !520

; <label>:31:                                     ; preds = %30, %11, %1
  %32 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !521
  call void @ensure_package_clientdata(%struct.pkginfo* %32), !dbg !522
  %33 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !523
  %34 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %33, i32 0, i32 4, !dbg !525
  %35 = load i32, i32* %34, align 8, !dbg !525
  %36 = icmp eq i32 %35, 0, !dbg !526
  br i1 %36, label %37, label %45, !dbg !527

; <label>:37:                                     ; preds = %31
  store i32 0, i32* @sincenothing, align 4, !dbg !528
  %38 = call i8* @gettext(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i32 0, i32 0)) #9, !dbg !530
  %39 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !531
  %40 = call i8* @pkg_name(%struct.pkginfo* %39, i32 1), !dbg !532
  call void (i8*, ...) @warning(i8* %38, i8* %40), !dbg !533
  %41 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !535
  %42 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %41, i32 0, i32 11, !dbg !536
  %43 = load %struct.perpackagestate*, %struct.perpackagestate** %42, align 8, !dbg !536
  %44 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %43, i32 0, i32 0, !dbg !537
  store i32 0, i32* %44, align 8, !dbg !538
  br label %211, !dbg !539

; <label>:45:                                     ; preds = %31
  %46 = load i32, i32* @f_pending, align 4, !dbg !540
  %47 = icmp ne i32 %46, 0, !dbg !540
  br i1 %47, label %66, label %48, !dbg !542

; <label>:48:                                     ; preds = %45
  %49 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !543
  %50 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %49, i32 0, i32 4, !dbg !544
  %51 = load i32, i32* %50, align 8, !dbg !544
  %52 = icmp eq i32 %51, 1, !dbg !545
  br i1 %52, label %53, label %66, !dbg !546

; <label>:53:                                     ; preds = %48
  %54 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !547
  %55 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %54, i32 0, i32 6, !dbg !548
  %56 = load i32, i32* %55, align 8, !dbg !548
  %57 = icmp ne i32 %56, 6, !dbg !549
  br i1 %57, label %58, label %66, !dbg !550

; <label>:58:                                     ; preds = %53
  store i32 0, i32* @sincenothing, align 4, !dbg !552
  %59 = call i8* @gettext(i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.2, i32 0, i32 0)) #9, !dbg !554
  %60 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !555
  %61 = call i8* @pkg_name(%struct.pkginfo* %60, i32 1), !dbg !556
  call void (i8*, ...) @warning(i8* %59, i8* %61), !dbg !557
  %62 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !559
  %63 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %62, i32 0, i32 11, !dbg !560
  %64 = load %struct.perpackagestate*, %struct.perpackagestate** %63, align 8, !dbg !560
  %65 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %64, i32 0, i32 0, !dbg !561
  store i32 0, i32* %65, align 8, !dbg !562
  br label %211, !dbg !563

; <label>:66:                                     ; preds = %53, %48, %45
  br label %67

; <label>:67:                                     ; preds = %66
  %68 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !564
  %69 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %68, i32 0, i32 9, !dbg !566
  %70 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %69, i32 0, i32 1, !dbg !567
  %71 = load i8, i8* %70, align 8, !dbg !567
  %72 = trunc i8 %71 to i1, !dbg !567
  br i1 %72, label %73, label %80, !dbg !568

; <label>:73:                                     ; preds = %67
  %74 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !569
  %75 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %74, i32 0, i32 4, !dbg !571
  %76 = load i32, i32* %75, align 8, !dbg !571
  %77 = icmp ne i32 %76, 1, !dbg !572
  br i1 %77, label %78, label %80, !dbg !573

; <label>:78:                                     ; preds = %73
  %79 = call i8* @gettext(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i32 0, i32 0)) #9, !dbg !574
  call void (i32, i8*, ...) @forcibleerr(i32 1048576, i8* %79), !dbg !575
  br label %80, !dbg !575

; <label>:80:                                     ; preds = %78, %73, %67
  %81 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !576
  %82 = call i8* @pkg_name(%struct.pkginfo* %81, i32 3), !dbg !577
  call void (i32, i8*, ...) @debug(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i32 0, i32 0), i8* %82), !dbg !578
  store i32 2, i32* %5, align 4, !dbg !579
  %83 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !580
  %84 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !581
  %85 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %84, i32 0, i32 0, !dbg !582
  %86 = load %struct.pkgset*, %struct.pkgset** %85, align 8, !dbg !582
  call void @checkforremoval(%struct.pkginfo* %83, %struct.pkgset* %86, i32* %5, %struct.varbuf* %3), !dbg !583
  %87 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !584
  %88 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %87, i32 0, i32 9, !dbg !586
  %89 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %88, i32 0, i32 0, !dbg !587
  %90 = load %struct.dependency*, %struct.dependency** %89, align 8, !dbg !587
  store %struct.dependency* %90, %struct.dependency** %4, align 8, !dbg !588
  br label %91, !dbg !589

; <label>:91:                                     ; preds = %114, %80
  %92 = load %struct.dependency*, %struct.dependency** %4, align 8, !dbg !590
  %93 = icmp ne %struct.dependency* %92, null, !dbg !593
  br i1 %93, label %94, label %118, !dbg !593

; <label>:94:                                     ; preds = %91
  %95 = load %struct.dependency*, %struct.dependency** %4, align 8, !dbg !594
  %96 = getelementptr inbounds %struct.dependency, %struct.dependency* %95, i32 0, i32 3, !dbg !597
  %97 = load i32, i32* %96, align 8, !dbg !597
  %98 = icmp ne i32 %97, 6, !dbg !598
  br i1 %98, label %99, label %100, !dbg !599

; <label>:99:                                     ; preds = %94
  br label %114, !dbg !600

; <label>:100:                                    ; preds = %94
  %101 = load %struct.dependency*, %struct.dependency** %4, align 8, !dbg !602
  %102 = getelementptr inbounds %struct.dependency, %struct.dependency* %101, i32 0, i32 2, !dbg !603
  %103 = load %struct.deppossi*, %struct.deppossi** %102, align 8, !dbg !603
  %104 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %103, i32 0, i32 1, !dbg !604
  %105 = load %struct.pkgset*, %struct.pkgset** %104, align 8, !dbg !604
  %106 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %105, i32 0, i32 1, !dbg !605
  %107 = load i8*, i8** %106, align 8, !dbg !605
  call void (i32, i8*, ...) @debug(i32 32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i32 0, i32 0), i8* %107), !dbg !606
  %108 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !607
  %109 = load %struct.dependency*, %struct.dependency** %4, align 8, !dbg !608
  %110 = getelementptr inbounds %struct.dependency, %struct.dependency* %109, i32 0, i32 2, !dbg !609
  %111 = load %struct.deppossi*, %struct.deppossi** %110, align 8, !dbg !609
  %112 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %111, i32 0, i32 1, !dbg !610
  %113 = load %struct.pkgset*, %struct.pkgset** %112, align 8, !dbg !610
  call void @checkforremoval(%struct.pkginfo* %108, %struct.pkgset* %113, i32* %5, %struct.varbuf* %3), !dbg !611
  br label %114, !dbg !612

; <label>:114:                                    ; preds = %100, %99
  %115 = load %struct.dependency*, %struct.dependency** %4, align 8, !dbg !613
  %116 = getelementptr inbounds %struct.dependency, %struct.dependency* %115, i32 0, i32 1, !dbg !615
  %117 = load %struct.dependency*, %struct.dependency** %116, align 8, !dbg !615
  store %struct.dependency* %117, %struct.dependency** %4, align 8, !dbg !616
  br label %91, !dbg !617, !llvm.loop !618

; <label>:118:                                    ; preds = %91
  %119 = load i32, i32* %5, align 4, !dbg !620
  %120 = icmp eq i32 %119, 1, !dbg !622
  br i1 %120, label %121, label %127, !dbg !623

; <label>:121:                                    ; preds = %118
  call void @varbuf_destroy(%struct.varbuf* %3), !dbg !624
  %122 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !626
  %123 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %122, i32 0, i32 11, !dbg !627
  %124 = load %struct.perpackagestate*, %struct.perpackagestate** %123, align 8, !dbg !627
  %125 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %124, i32 0, i32 0, !dbg !628
  store i32 1, i32* %125, align 8, !dbg !629
  %126 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !630
  call void @enqueue_package(%struct.pkginfo* %126), !dbg !631
  br label %211, !dbg !632

; <label>:127:                                    ; preds = %118
  %128 = load i32, i32* %5, align 4, !dbg !633
  %129 = icmp eq i32 %128, 0, !dbg !635
  br i1 %129, label %130, label %137, !dbg !636

; <label>:130:                                    ; preds = %127
  store i32 0, i32* @sincenothing, align 4, !dbg !637
  call void @varbuf_end_str(%struct.varbuf* %3), !dbg !639
  %131 = call i8* @gettext(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i32 0, i32 0)) #9, !dbg !640
  %132 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !641
  %133 = call i8* @pkg_name(%struct.pkginfo* %132, i32 1), !dbg !642
  %134 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %3, i32 0, i32 2, !dbg !643
  %135 = load i8*, i8** %134, align 8, !dbg !643
  call void (i8*, ...) @notice(i8* %131, i8* %133, i8* %135), !dbg !644
  %136 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i32 0, i32 0)) #9, !dbg !646
  call void (i8*, ...) @ohshit(i8* %136) #10, !dbg !647
  unreachable, !dbg !648

; <label>:137:                                    ; preds = %127
  %138 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %3, i32 0, i32 0, !dbg !649
  %139 = load i64, i64* %138, align 8, !dbg !649
  %140 = icmp ne i64 %139, 0, !dbg !651
  br i1 %140, label %141, label %147, !dbg !652

; <label>:141:                                    ; preds = %137
  call void @varbuf_end_str(%struct.varbuf* %3), !dbg !653
  %142 = call i8* @gettext(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.8, i32 0, i32 0)) #9, !dbg !655
  %143 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !656
  %144 = call i8* @pkg_name(%struct.pkginfo* %143, i32 1), !dbg !657
  %145 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %3, i32 0, i32 2, !dbg !658
  %146 = load i8*, i8** %145, align 8, !dbg !658
  call void (i8*, ...) @notice(i8* %142, i8* %144, i8* %146), !dbg !659
  br label %147, !dbg !661

; <label>:147:                                    ; preds = %141, %137
  br label %148

; <label>:148:                                    ; preds = %147
  br label %149

; <label>:149:                                    ; preds = %148
  call void @varbuf_destroy(%struct.varbuf* %3), !dbg !662
  store i32 0, i32* @sincenothing, align 4, !dbg !663
  %150 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !664
  %151 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %150, i32 0, i32 3, !dbg !666
  %152 = load i32, i32* %151, align 4, !dbg !666
  %153 = and i32 %152, 1, !dbg !667
  %154 = icmp ne i32 %153, 0, !dbg !667
  br i1 %154, label %155, label %157, !dbg !668

; <label>:155:                                    ; preds = %149
  %156 = call i8* @gettext(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.9, i32 0, i32 0)) #9, !dbg !669
  call void (i32, i8*, ...) @forcibleerr(i32 2097152, i8* %156), !dbg !670
  br label %157, !dbg !670

; <label>:157:                                    ; preds = %155, %149
  call void @ensure_allinstfiles_available(), !dbg !671
  call void @fsys_hash_init(), !dbg !672
  %158 = load i32, i32* @f_noact, align 4, !dbg !673
  %159 = icmp ne i32 %158, 0, !dbg !673
  br i1 %159, label %160, label %174, !dbg !675

; <label>:160:                                    ; preds = %157
  %161 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i32 0, i32 0)) #9, !dbg !676
  %162 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !678
  %163 = call i8* @pkg_name(%struct.pkginfo* %162, i32 1), !dbg !679
  %164 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !680
  %165 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %164, i32 0, i32 9, !dbg !681
  %166 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %165, i32 0, i32 11, !dbg !682
  %167 = call i8* @versiondescribe(%struct.dpkg_version* %166, i32 1), !dbg !683
  %168 = call i32 (i8*, ...) @printf(i8* %161, i8* %163, i8* %167), !dbg !684
  %169 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !686
  call void @pkg_set_status(%struct.pkginfo* %169, i32 0), !dbg !687
  %170 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !688
  %171 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %170, i32 0, i32 11, !dbg !689
  %172 = load %struct.perpackagestate*, %struct.perpackagestate** %171, align 8, !dbg !689
  %173 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %172, i32 0, i32 0, !dbg !690
  store i32 0, i32* %173, align 8, !dbg !691
  br label %211, !dbg !692

; <label>:174:                                    ; preds = %157
  %175 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !693
  call void @pkg_conffiles_mark_old(%struct.pkginfo* %175), !dbg !694
  %176 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !695
  %177 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %176, i32 0, i32 4, !dbg !697
  %178 = load i32, i32* %177, align 8, !dbg !697
  %179 = icmp ugt i32 %178, 1, !dbg !698
  br i1 %179, label %180, label %192, !dbg !699

; <label>:180:                                    ; preds = %174
  %181 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0)) #9, !dbg !700
  %182 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !702
  %183 = call i8* @pkg_name(%struct.pkginfo* %182, i32 1), !dbg !703
  %184 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !705
  %185 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %184, i32 0, i32 9, !dbg !706
  %186 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %185, i32 0, i32 11, !dbg !707
  %187 = call i8* @versiondescribe(%struct.dpkg_version* %186, i32 1), !dbg !708
  %188 = call i32 (i8*, ...) @printf(i8* %181, i8* %183, i8* %187), !dbg !709
  %189 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !711
  %190 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !712
  %191 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %190, i32 0, i32 9, !dbg !713
  call void @log_action(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), %struct.pkginfo* %189, %struct.pkgbin* %191), !dbg !714
  br label %192, !dbg !715

; <label>:192:                                    ; preds = %180, %174
  %193 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !716
  call void @trig_activate_packageprocessing(%struct.pkginfo* %193), !dbg !717
  %194 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !718
  %195 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %194, i32 0, i32 4, !dbg !720
  %196 = load i32, i32* %195, align 8, !dbg !720
  %197 = icmp uge i32 %196, 4, !dbg !721
  br i1 %197, label %198, label %209, !dbg !722

; <label>:198:                                    ; preds = %192
  %199 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !723
  %200 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %199, i32 0, i32 4, !dbg !725
  %201 = load i32, i32* %200, align 8, !dbg !725
  store i32 %201, i32* @deferred_remove.oldpkgstatus, align 4, !dbg !726
  %202 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !727
  call void @pkg_set_status(%struct.pkginfo* %202, i32 4), !dbg !728
  %203 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !729
  call void @modstatdb_note(%struct.pkginfo* %203), !dbg !730
  %204 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !731
  %205 = bitcast %struct.pkginfo* %204 to i8*, !dbg !732
  call void (void (i32, i8**)*, i32, i32, ...) @push_cleanup(void (i32, i8**)* @cu_prermremove, i32 -2, i32 2, i8* %205, i8* bitcast (i32* @deferred_remove.oldpkgstatus to i8*)), !dbg !733
  %206 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !734
  %207 = call i32 (%struct.pkginfo*, i8*, i8*, ...) @maintscript_installed(%struct.pkginfo* %206, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i8* null), !dbg !735
  %208 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !736
  call void @pkg_set_status(%struct.pkginfo* %208, i32 3), !dbg !737
  br label %209, !dbg !738

; <label>:209:                                    ; preds = %198, %192
  %210 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !739
  call void @removal_bulk(%struct.pkginfo* %210), !dbg !740
  br label %211, !dbg !741

; <label>:211:                                    ; preds = %209, %160, %121, %58, %37
  ret void, !dbg !742
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

declare void @debug(i32, i8*, ...) #3

declare i8* @pkg_name(%struct.pkginfo*, i32) #3

declare void @pkg_set_want(%struct.pkginfo*, i32) #3

declare void @modstatdb_note(%struct.pkginfo*) #3

declare void @ensure_package_clientdata(%struct.pkginfo*) #3

declare void @warning(i8*, ...) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare void @forcibleerr(i32, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal void @checkforremoval(%struct.pkginfo*, %struct.pkgset*, i32*, %struct.varbuf*) #0 !dbg !744 {
  %5 = alloca %struct.pkginfo*, align 8
  %6 = alloca %struct.pkgset*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.varbuf*, align 8
  %9 = alloca %struct.deppossi*, align 8
  %10 = alloca %struct.pkginfo*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.varbuf_state, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %5, metadata !749, metadata !486), !dbg !750
  store %struct.pkgset* %1, %struct.pkgset** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgset** %6, metadata !751, metadata !486), !dbg !752
  store i32* %2, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !753, metadata !486), !dbg !754
  store %struct.varbuf* %3, %struct.varbuf** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %8, metadata !755, metadata !486), !dbg !756
  call void @llvm.dbg.declare(metadata %struct.deppossi** %9, metadata !757, metadata !486), !dbg !758
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %10, metadata !759, metadata !486), !dbg !760
  call void @llvm.dbg.declare(metadata i32* %11, metadata !761, metadata !486), !dbg !762
  call void @llvm.dbg.declare(metadata %struct.varbuf_state* %12, metadata !763, metadata !486), !dbg !767
  %13 = load %struct.pkgset*, %struct.pkgset** %6, align 8, !dbg !768
  %14 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %13, i32 0, i32 3, !dbg !770
  %15 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %14, i32 0, i32 1, !dbg !771
  %16 = load %struct.deppossi*, %struct.deppossi** %15, align 8, !dbg !771
  store %struct.deppossi* %16, %struct.deppossi** %9, align 8, !dbg !772
  br label %17, !dbg !773

; <label>:17:                                     ; preds = %97, %4
  %18 = load %struct.deppossi*, %struct.deppossi** %9, align 8, !dbg !774
  %19 = icmp ne %struct.deppossi* %18, null, !dbg !777
  br i1 %19, label %20, label %101, !dbg !777

; <label>:20:                                     ; preds = %17
  %21 = load %struct.deppossi*, %struct.deppossi** %9, align 8, !dbg !778
  %22 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %21, i32 0, i32 0, !dbg !781
  %23 = load %struct.dependency*, %struct.dependency** %22, align 8, !dbg !781
  %24 = getelementptr inbounds %struct.dependency, %struct.dependency* %23, i32 0, i32 3, !dbg !782
  %25 = load i32, i32* %24, align 8, !dbg !782
  %26 = icmp ne i32 %25, 2, !dbg !783
  br i1 %26, label %27, label %35, !dbg !784

; <label>:27:                                     ; preds = %20
  %28 = load %struct.deppossi*, %struct.deppossi** %9, align 8, !dbg !785
  %29 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %28, i32 0, i32 0, !dbg !787
  %30 = load %struct.dependency*, %struct.dependency** %29, align 8, !dbg !787
  %31 = getelementptr inbounds %struct.dependency, %struct.dependency* %30, i32 0, i32 3, !dbg !788
  %32 = load i32, i32* %31, align 8, !dbg !788
  %33 = icmp ne i32 %32, 3, !dbg !789
  br i1 %33, label %34, label %35, !dbg !790

; <label>:34:                                     ; preds = %27
  br label %97, !dbg !791

; <label>:35:                                     ; preds = %27, %20
  %36 = load %struct.deppossi*, %struct.deppossi** %9, align 8, !dbg !793
  %37 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %36, i32 0, i32 0, !dbg !794
  %38 = load %struct.dependency*, %struct.dependency** %37, align 8, !dbg !794
  %39 = getelementptr inbounds %struct.dependency, %struct.dependency* %38, i32 0, i32 0, !dbg !795
  %40 = load %struct.pkginfo*, %struct.pkginfo** %39, align 8, !dbg !795
  store %struct.pkginfo* %40, %struct.pkginfo** %10, align 8, !dbg !796
  %41 = load %struct.pkginfo*, %struct.pkginfo** %10, align 8, !dbg !797
  %42 = call i8* @pkg_name(%struct.pkginfo* %41, i32 3), !dbg !798
  call void (i32, i8*, ...) @debug(i32 32, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i32 0, i32 0), i8* %42), !dbg !799
  %43 = load %struct.pkginfo*, %struct.pkginfo** %10, align 8, !dbg !800
  %44 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %43, i32 0, i32 4, !dbg !802
  %45 = load i32, i32* %44, align 8, !dbg !802
  %46 = icmp ult i32 %45, 3, !dbg !803
  br i1 %46, label %47, label %48, !dbg !804

; <label>:47:                                     ; preds = %35
  br label %97, !dbg !805

; <label>:48:                                     ; preds = %35
  %49 = load %struct.pkginfo*, %struct.pkginfo** %10, align 8, !dbg !806
  %50 = call zeroext i1 @ignore_depends(%struct.pkginfo* %49), !dbg !808
  br i1 %50, label %51, label %54, !dbg !809

; <label>:51:                                     ; preds = %48
  %52 = load %struct.pkginfo*, %struct.pkginfo** %10, align 8, !dbg !810
  %53 = call i8* @pkg_name(%struct.pkginfo* %52, i32 3), !dbg !812
  call void (i32, i8*, ...) @debug(i32 32, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.26, i32 0, i32 0), i8* %53), !dbg !813
  br label %97, !dbg !814

; <label>:54:                                     ; preds = %48
  %55 = load i32, i32* @dependtry, align 4, !dbg !815
  %56 = icmp uge i32 %55, 2, !dbg !817
  br i1 %56, label %57, label %62, !dbg !818

; <label>:57:                                     ; preds = %54
  %58 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !819
  %59 = call zeroext i1 @findbreakcycle(%struct.pkginfo* %58), !dbg !822
  br i1 %59, label %60, label %61, !dbg !823

; <label>:60:                                     ; preds = %57
  store i32 0, i32* @sincenothing, align 4, !dbg !824
  br label %61, !dbg !825

; <label>:61:                                     ; preds = %60, %57
  br label %62, !dbg !826

; <label>:62:                                     ; preds = %61, %54
  %63 = load %struct.varbuf*, %struct.varbuf** %8, align 8, !dbg !827
  call void @varbuf_snapshot(%struct.varbuf* %63, %struct.varbuf_state* %12), !dbg !828
  %64 = load %struct.pkginfo*, %struct.pkginfo** %10, align 8, !dbg !829
  %65 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !830
  %66 = load %struct.varbuf*, %struct.varbuf** %8, align 8, !dbg !831
  %67 = call i32 @dependencies_ok(%struct.pkginfo* %64, %struct.pkginfo* %65, %struct.varbuf* %66), !dbg !832
  store i32 %67, i32* %11, align 4, !dbg !833
  %68 = load i32, i32* %11, align 4, !dbg !834
  %69 = icmp eq i32 %68, 0, !dbg !836
  br i1 %69, label %70, label %83, !dbg !837

; <label>:70:                                     ; preds = %62
  %71 = load %struct.pkginfo*, %struct.pkginfo** %10, align 8, !dbg !838
  %72 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %71, i32 0, i32 11, !dbg !839
  %73 = load %struct.perpackagestate*, %struct.perpackagestate** %72, align 8, !dbg !839
  %74 = icmp ne %struct.perpackagestate* %73, null, !dbg !838
  br i1 %74, label %75, label %83, !dbg !840

; <label>:75:                                     ; preds = %70
  %76 = load %struct.pkginfo*, %struct.pkginfo** %10, align 8, !dbg !841
  %77 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %76, i32 0, i32 11, !dbg !842
  %78 = load %struct.perpackagestate*, %struct.perpackagestate** %77, align 8, !dbg !842
  %79 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %78, i32 0, i32 0, !dbg !843
  %80 = load i32, i32* %79, align 8, !dbg !843
  %81 = icmp eq i32 %80, 1, !dbg !844
  br i1 %81, label %82, label %83, !dbg !845

; <label>:82:                                     ; preds = %75
  store i32 1, i32* %11, align 4, !dbg !847
  br label %83, !dbg !848

; <label>:83:                                     ; preds = %82, %75, %70, %62
  %84 = load i32, i32* %11, align 4, !dbg !849
  %85 = icmp eq i32 %84, 1, !dbg !851
  br i1 %85, label %86, label %88, !dbg !852

; <label>:86:                                     ; preds = %83
  %87 = load %struct.varbuf*, %struct.varbuf** %8, align 8, !dbg !853
  call void @varbuf_rollback(%struct.varbuf* %87, %struct.varbuf_state* %12), !dbg !854
  br label %88, !dbg !854

; <label>:88:                                     ; preds = %86, %83
  %89 = load i32, i32* %11, align 4, !dbg !855
  %90 = load i32*, i32** %7, align 8, !dbg !857
  %91 = load i32, i32* %90, align 4, !dbg !858
  %92 = icmp ult i32 %89, %91, !dbg !859
  br i1 %92, label %93, label %96, !dbg !860

; <label>:93:                                     ; preds = %88
  %94 = load i32, i32* %11, align 4, !dbg !861
  %95 = load i32*, i32** %7, align 8, !dbg !863
  store i32 %94, i32* %95, align 4, !dbg !864
  br label %96, !dbg !865

; <label>:96:                                     ; preds = %93, %88
  br label %97, !dbg !866

; <label>:97:                                     ; preds = %96, %51, %47, %34
  %98 = load %struct.deppossi*, %struct.deppossi** %9, align 8, !dbg !867
  %99 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %98, i32 0, i32 3, !dbg !869
  %100 = load %struct.deppossi*, %struct.deppossi** %99, align 8, !dbg !869
  store %struct.deppossi* %100, %struct.deppossi** %9, align 8, !dbg !870
  br label %17, !dbg !871, !llvm.loop !872

; <label>:101:                                    ; preds = %17
  ret void, !dbg !874
}

declare void @varbuf_destroy(%struct.varbuf*) #3

declare void @enqueue_package(%struct.pkginfo*) #3

declare void @varbuf_end_str(%struct.varbuf*) #3

declare void @notice(i8*, ...) #3

; Function Attrs: noreturn
declare void @ohshit(i8*, ...) #5

declare void @ensure_allinstfiles_available() #3

declare void @fsys_hash_init() #3

declare i32 @printf(i8*, ...) #3

declare i8* @versiondescribe(%struct.dpkg_version*, i32) #3

declare void @pkg_set_status(%struct.pkginfo*, i32) #3

declare void @pkg_conffiles_mark_old(%struct.pkginfo*) #3

declare void @log_action(i8*, %struct.pkginfo*, %struct.pkgbin*) #3

declare void @trig_activate_packageprocessing(%struct.pkginfo*) #3

declare void @push_cleanup(void (i32, i8**)*, i32, i32, ...) #3

declare void @cu_prermremove(i32, i8**) #3

declare i32 @maintscript_installed(%struct.pkginfo*, i8*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define void @removal_bulk(%struct.pkginfo*) #0 !dbg !875 {
  %2 = alloca %struct.pkginfo*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %2, metadata !876, metadata !486), !dbg !877
  call void @llvm.dbg.declare(metadata i8* %3, metadata !878, metadata !486), !dbg !879
  %5 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !880
  %6 = call i8* @pkg_name(%struct.pkginfo* %5, i32 3), !dbg !881
  call void (i32, i8*, ...) @debug(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i32 0, i32 0), i8* %6), !dbg !882
  %7 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !884
  %8 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %7, i32 0, i32 4, !dbg !886
  %9 = load i32, i32* %8, align 8, !dbg !886
  %10 = icmp eq i32 %9, 2, !dbg !887
  br i1 %10, label %16, label %11, !dbg !888

; <label>:11:                                     ; preds = %1
  %12 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !889
  %13 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %12, i32 0, i32 4, !dbg !890
  %14 = load i32, i32* %13, align 8, !dbg !890
  %15 = icmp eq i32 %14, 3, !dbg !891
  br i1 %15, label %16, label %18, !dbg !892

; <label>:16:                                     ; preds = %11, %1
  %17 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !893
  call void @removal_bulk_remove_files(%struct.pkginfo* %17), !dbg !895
  br label %18, !dbg !896

; <label>:18:                                     ; preds = %16, %11
  %19 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !897
  %20 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !898
  %21 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %20, i32 0, i32 9, !dbg !899
  %22 = call zeroext i1 @pkg_infodb_has_file(%struct.pkginfo* %19, %struct.pkgbin* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0)), !dbg !900
  %23 = zext i1 %22 to i8, !dbg !901
  store i8 %23, i8* %3, align 1, !dbg !901
  %24 = load i8, i8* %3, align 1, !dbg !902
  %25 = trunc i8 %24 to i1, !dbg !902
  %26 = zext i1 %25 to i32, !dbg !902
  call void (i32, i8*, ...) @debug(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i32 0, i32 0), i32 %26), !dbg !903
  %27 = load i8, i8* %3, align 1, !dbg !904
  %28 = trunc i8 %27 to i1, !dbg !904
  br i1 %28, label %39, label %29, !dbg !906

; <label>:29:                                     ; preds = %18
  %30 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !907
  %31 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %30, i32 0, i32 9, !dbg !909
  %32 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %31, i32 0, i32 12, !dbg !910
  %33 = load %struct.conffile*, %struct.conffile** %32, align 8, !dbg !910
  %34 = icmp ne %struct.conffile* %33, null, !dbg !907
  br i1 %34, label %39, label %35, !dbg !911

; <label>:35:                                     ; preds = %29
  call void (i32, i8*, ...) @debug(i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.18, i32 0, i32 0)), !dbg !912
  %36 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !914
  call void @pkg_set_want(%struct.pkginfo* %36, i32 4), !dbg !915
  %37 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !916
  %38 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %37, i32 0, i32 8, !dbg !917
  call void @dpkg_version_blank(%struct.dpkg_version* %38), !dbg !918
  br label %47, !dbg !919

; <label>:39:                                     ; preds = %29, %18
  %40 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !920
  %41 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %40, i32 0, i32 2, !dbg !923
  %42 = load i32, i32* %41, align 8, !dbg !923
  %43 = icmp eq i32 %42, 4, !dbg !924
  br i1 %43, label %44, label %46, !dbg !920

; <label>:44:                                     ; preds = %39
  %45 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !925
  call void @removal_bulk_remove_configfiles(%struct.pkginfo* %45), !dbg !927
  br label %46, !dbg !928

; <label>:46:                                     ; preds = %44, %39
  br label %47

; <label>:47:                                     ; preds = %46, %35
  %48 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !929
  %49 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %48, i32 0, i32 2, !dbg !931
  %50 = load i32, i32* %49, align 8, !dbg !931
  %51 = icmp eq i32 %50, 4, !dbg !932
  br i1 %51, label %52, label %88, !dbg !933

; <label>:52:                                     ; preds = %47
  call void @llvm.dbg.declare(metadata i8** %4, metadata !934, metadata !486), !dbg !936
  %53 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !937
  call void @removal_bulk_remove_leftover_dirs(%struct.pkginfo* %53), !dbg !938
  %54 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !939
  %55 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !940
  %56 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %55, i32 0, i32 9, !dbg !941
  %57 = call i8* @pkg_infodb_get_file(%struct.pkginfo* %54, %struct.pkgbin* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0)), !dbg !942
  store i8* %57, i8** %4, align 8, !dbg !943
  %58 = load i8*, i8** %4, align 8, !dbg !944
  call void (i32, i8*, ...) @debug(i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.20, i32 0, i32 0), i8* %58), !dbg !945
  %59 = load i8*, i8** %4, align 8, !dbg !946
  %60 = call i32 @unlink(i8* %59) #9, !dbg !948
  %61 = icmp ne i32 %60, 0, !dbg !948
  br i1 %61, label %62, label %68, !dbg !949

; <label>:62:                                     ; preds = %52
  %63 = call i32* @__errno_location() #1, !dbg !950
  %64 = load i32, i32* %63, align 4, !dbg !952
  %65 = icmp ne i32 %64, 2, !dbg !953
  br i1 %65, label %66, label %68, !dbg !954

; <label>:66:                                     ; preds = %62
  %67 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i32 0, i32 0)) #9, !dbg !955
  call void (i8*, ...) @ohshite(i8* %67) #10, !dbg !956
  unreachable, !dbg !957

; <label>:68:                                     ; preds = %62, %52
  %69 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !958
  %70 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !959
  %71 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %70, i32 0, i32 9, !dbg !960
  %72 = call i8* @pkg_infodb_get_file(%struct.pkginfo* %69, %struct.pkgbin* %71, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0)), !dbg !961
  store i8* %72, i8** %4, align 8, !dbg !962
  %73 = load i8*, i8** %4, align 8, !dbg !963
  call void (i32, i8*, ...) @debug(i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.22, i32 0, i32 0), i8* %73), !dbg !964
  %74 = load i8*, i8** %4, align 8, !dbg !965
  %75 = call i32 @unlink(i8* %74) #9, !dbg !967
  %76 = icmp ne i32 %75, 0, !dbg !967
  br i1 %76, label %77, label %83, !dbg !968

; <label>:77:                                     ; preds = %68
  %78 = call i32* @__errno_location() #1, !dbg !969
  %79 = load i32, i32* %78, align 4, !dbg !971
  %80 = icmp ne i32 %79, 2, !dbg !972
  br i1 %80, label %81, label %83, !dbg !973

; <label>:81:                                     ; preds = %77
  %82 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.23, i32 0, i32 0)) #9, !dbg !974
  call void (i8*, ...) @ohshite(i8* %82) #10, !dbg !975
  unreachable, !dbg !976

; <label>:83:                                     ; preds = %77, %68
  %84 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !977
  call void @pkg_set_status(%struct.pkginfo* %84, i32 0), !dbg !978
  %85 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !979
  call void @pkg_set_want(%struct.pkginfo* %85, i32 0), !dbg !980
  %86 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !981
  %87 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %86, i32 0, i32 9, !dbg !982
  call void @pkgbin_blank(%struct.pkgbin* %87), !dbg !983
  br label %88, !dbg !984

; <label>:88:                                     ; preds = %83, %47
  %89 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !985
  call void @pkg_reset_eflags(%struct.pkginfo* %89), !dbg !986
  %90 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !987
  call void @modstatdb_note(%struct.pkginfo* %90), !dbg !988
  call void (i32, i8*, ...) @debug(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0)), !dbg !989
  ret void, !dbg !990
}

; Function Attrs: nounwind uwtable
define internal void @removal_bulk_remove_files(%struct.pkginfo*) #0 !dbg !463 {
  %2 = alloca %struct.pkginfo*, align 8
  %3 = alloca %struct.fsys_hash_rev_iter, align 8
  %4 = alloca %struct.fsys_namenode_list*, align 8
  %5 = alloca %struct.fsys_namenode*, align 8
  %6 = alloca %struct.varbuf_state, align 8
  %7 = alloca %struct.stat, align 8
  %8 = alloca %struct.fsys_namenode*, align 8
  %9 = alloca i8, align 1
  store %struct.pkginfo* %0, %struct.pkginfo** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %2, metadata !991, metadata !486), !dbg !992
  call void @llvm.dbg.declare(metadata %struct.fsys_hash_rev_iter* %3, metadata !993, metadata !486), !dbg !997
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode_list** %4, metadata !998, metadata !486), !dbg !999
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %5, metadata !1000, metadata !486), !dbg !1001
  call void @llvm.dbg.declare(metadata %struct.varbuf_state* %6, metadata !1002, metadata !486), !dbg !1003
  call void @llvm.dbg.declare(metadata %struct.stat* %7, metadata !1004, metadata !486), !dbg !1036
  %10 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1037
  call void @pkg_set_status(%struct.pkginfo* %10, i32 2), !dbg !1038
  %11 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1039
  call void @modstatdb_note(%struct.pkginfo* %11), !dbg !1040
  call void @push_checkpoint(i32 -3, i32 1), !dbg !1041
  %12 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1042
  %13 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %12, i32 0, i32 16, !dbg !1043
  %14 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %13, align 8, !dbg !1043
  call void @fsys_hash_rev_iter_init(%struct.fsys_hash_rev_iter* %3, %struct.fsys_namenode_list* %14), !dbg !1044
  store %struct.fsys_namenode_list* null, %struct.fsys_namenode_list** %4, align 8, !dbg !1045
  br label %15, !dbg !1046

; <label>:15:                                     ; preds = %163, %136, %125, %116, %93, %86, %80, %73, %64, %57, %1
  %16 = call %struct.fsys_namenode* @fsys_hash_rev_iter_next(%struct.fsys_hash_rev_iter* %3), !dbg !1047
  store %struct.fsys_namenode* %16, %struct.fsys_namenode** %5, align 8, !dbg !1049
  %17 = icmp ne %struct.fsys_namenode* %16, null, !dbg !1050
  br i1 %17, label %18, label %164, !dbg !1050

; <label>:18:                                     ; preds = %15
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %8, metadata !1051, metadata !486), !dbg !1053
  call void @llvm.dbg.declare(metadata i8* %9, metadata !1054, metadata !486), !dbg !1055
  %19 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !1056
  %20 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %19, i32 0, i32 1, !dbg !1057
  %21 = load i8*, i8** %20, align 8, !dbg !1057
  %22 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !1058
  %23 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %22, i32 0, i32 6, !dbg !1059
  %24 = load i32, i32* %23, align 8, !dbg !1059
  call void (i32, i8*, ...) @debug(i32 8, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i32 0, i32 0), i8* %21, i32 %24), !dbg !1060
  %25 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !1061
  %26 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1062
  %27 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1063
  %28 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %27, i32 0, i32 9, !dbg !1064
  %29 = call %struct.fsys_namenode* @namenodetouse(%struct.fsys_namenode* %25, %struct.pkginfo* %26, %struct.pkgbin* %28), !dbg !1065
  store %struct.fsys_namenode* %29, %struct.fsys_namenode** %8, align 8, !dbg !1066
  call void @varbuf_reset(%struct.varbuf* @removal_bulk_remove_files.fnvb), !dbg !1067
  %30 = load i8*, i8** @instdir, align 8, !dbg !1068
  %31 = load i8*, i8** @instdir, align 8, !dbg !1069
  %32 = call i64 @strlen(i8* %31) #11, !dbg !1070
  call void @varbuf_add_buf(%struct.varbuf* @removal_bulk_remove_files.fnvb, i8* %30, i64 %32), !dbg !1071
  %33 = load %struct.fsys_namenode*, %struct.fsys_namenode** %8, align 8, !dbg !1073
  %34 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %33, i32 0, i32 1, !dbg !1074
  %35 = load i8*, i8** %34, align 8, !dbg !1074
  %36 = load %struct.fsys_namenode*, %struct.fsys_namenode** %8, align 8, !dbg !1075
  %37 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %36, i32 0, i32 1, !dbg !1076
  %38 = load i8*, i8** %37, align 8, !dbg !1076
  %39 = call i64 @strlen(i8* %38) #11, !dbg !1077
  call void @varbuf_add_buf(%struct.varbuf* @removal_bulk_remove_files.fnvb, i8* %35, i64 %39), !dbg !1078
  call void @varbuf_end_str(%struct.varbuf* @removal_bulk_remove_files.fnvb), !dbg !1079
  call void @varbuf_snapshot(%struct.varbuf* @removal_bulk_remove_files.fnvb, %struct.varbuf_state* %6), !dbg !1080
  %40 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @removal_bulk_remove_files.fnvb, i32 0, i32 2), align 8, !dbg !1081
  %41 = call i32 @stat(i8* %40, %struct.stat* %7) #9, !dbg !1082
  %42 = icmp eq i32 %41, 0, !dbg !1083
  br i1 %42, label %43, label %48, !dbg !1084

; <label>:43:                                     ; preds = %18
  %44 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 3, !dbg !1085
  %45 = load i32, i32* %44, align 8, !dbg !1085
  %46 = and i32 %45, 61440, !dbg !1086
  %47 = icmp eq i32 %46, 16384, !dbg !1087
  br label %48

; <label>:48:                                     ; preds = %43, %18
  %49 = phi i1 [ false, %18 ], [ %47, %43 ]
  %50 = zext i1 %49 to i8, !dbg !1088
  store i8 %50, i8* %9, align 1, !dbg !1088
  %51 = load i8, i8* %9, align 1, !dbg !1090
  %52 = trunc i8 %51 to i1, !dbg !1090
  br i1 %52, label %58, label %53, !dbg !1092

; <label>:53:                                     ; preds = %48
  %54 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1093
  %55 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !1095
  %56 = call zeroext i1 @removal_bulk_file_is_shared(%struct.pkginfo* %54, %struct.fsys_namenode* %55), !dbg !1096
  br i1 %56, label %57, label %58, !dbg !1097

; <label>:57:                                     ; preds = %53
  br label %15, !dbg !1098, !llvm.loop !1099

; <label>:58:                                     ; preds = %53, %48
  %59 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !1100
  %60 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %59, i32 0, i32 6, !dbg !1102
  %61 = load i32, i32* %60, align 8, !dbg !1102
  %62 = and i32 %61, 4, !dbg !1103
  %63 = icmp ne i32 %62, 0, !dbg !1103
  br i1 %63, label %64, label %66, !dbg !1104

; <label>:64:                                     ; preds = %58
  %65 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !1105
  call void @push_leftover(%struct.fsys_namenode_list** %4, %struct.fsys_namenode* %65), !dbg !1107
  br label %15, !dbg !1108, !llvm.loop !1099

; <label>:66:                                     ; preds = %58
  %67 = load i8, i8* %9, align 1, !dbg !1109
  %68 = trunc i8 %67 to i1, !dbg !1109
  br i1 %68, label %69, label %97, !dbg !1111

; <label>:69:                                     ; preds = %66
  call void (i32, i8*, ...) @debug(i32 64, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.28, i32 0, i32 0)), !dbg !1112
  %70 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !1114
  %71 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1116
  %72 = call zeroext i1 @dir_has_conffiles(%struct.fsys_namenode* %70, %struct.pkginfo* %71), !dbg !1117
  br i1 %72, label %73, label %75, !dbg !1118

; <label>:73:                                     ; preds = %69
  %74 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !1119
  call void @push_leftover(%struct.fsys_namenode_list** %4, %struct.fsys_namenode* %74), !dbg !1121
  br label %15, !dbg !1122, !llvm.loop !1099

; <label>:75:                                     ; preds = %69
  %76 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !1123
  %77 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1125
  %78 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %4, align 8, !dbg !1126
  %79 = call zeroext i1 @dir_is_used_by_pkg(%struct.fsys_namenode* %76, %struct.pkginfo* %77, %struct.fsys_namenode_list* %78), !dbg !1127
  br i1 %79, label %80, label %82, !dbg !1128

; <label>:80:                                     ; preds = %75
  %81 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !1129
  call void @push_leftover(%struct.fsys_namenode_list** %4, %struct.fsys_namenode* %81), !dbg !1131
  br label %15, !dbg !1132, !llvm.loop !1099

; <label>:82:                                     ; preds = %75
  %83 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !1133
  %84 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1135
  %85 = call zeroext i1 @dir_is_used_by_others(%struct.fsys_namenode* %83, %struct.pkginfo* %84), !dbg !1136
  br i1 %85, label %86, label %87, !dbg !1137

; <label>:86:                                     ; preds = %82
  br label %15, !dbg !1138, !llvm.loop !1099

; <label>:87:                                     ; preds = %82
  %88 = load %struct.fsys_namenode*, %struct.fsys_namenode** %8, align 8, !dbg !1139
  %89 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %88, i32 0, i32 1, !dbg !1141
  %90 = load i8*, i8** %89, align 8, !dbg !1141
  %91 = call i32 @strcmp(i8* %90, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0)) #11, !dbg !1142
  %92 = icmp eq i32 %91, 0, !dbg !1143
  br i1 %92, label %93, label %96, !dbg !1144

; <label>:93:                                     ; preds = %87
  %94 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @removal_bulk_remove_files.fnvb, i32 0, i32 2), align 8, !dbg !1145
  call void (i32, i8*, ...) @debug(i32 64, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.30, i32 0, i32 0), i8* %94), !dbg !1147
  %95 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !1148
  call void @push_leftover(%struct.fsys_namenode_list** %4, %struct.fsys_namenode* %95), !dbg !1149
  br label %15, !dbg !1150, !llvm.loop !1099

; <label>:96:                                     ; preds = %87
  br label %97, !dbg !1151

; <label>:97:                                     ; preds = %96, %66
  %98 = load %struct.fsys_namenode*, %struct.fsys_namenode** %8, align 8, !dbg !1152
  %99 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1153
  call void @trig_path_activate(%struct.fsys_namenode* %98, %struct.pkginfo* %99), !dbg !1154
  call void @varbuf_rollback(%struct.varbuf* @removal_bulk_remove_files.fnvb, %struct.varbuf_state* %6), !dbg !1155
  call void @varbuf_add_buf(%struct.varbuf* @removal_bulk_remove_files.fnvb, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i64 9), !dbg !1156
  call void @varbuf_end_str(%struct.varbuf* @removal_bulk_remove_files.fnvb), !dbg !1157
  %100 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @removal_bulk_remove_files.fnvb, i32 0, i32 2), align 8, !dbg !1158
  call void (i32, i8*, ...) @debug(i32 64, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.32, i32 0, i32 0), i8* %100), !dbg !1159
  %101 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @removal_bulk_remove_files.fnvb, i32 0, i32 2), align 8, !dbg !1160
  call void @path_remove_tree(i8* %101), !dbg !1161
  call void @varbuf_rollback(%struct.varbuf* @removal_bulk_remove_files.fnvb, %struct.varbuf_state* %6), !dbg !1162
  call void @varbuf_add_buf(%struct.varbuf* @removal_bulk_remove_files.fnvb, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i64 9), !dbg !1163
  call void @varbuf_end_str(%struct.varbuf* @removal_bulk_remove_files.fnvb), !dbg !1164
  %102 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @removal_bulk_remove_files.fnvb, i32 0, i32 2), align 8, !dbg !1165
  call void (i32, i8*, ...) @debug(i32 64, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.34, i32 0, i32 0), i8* %102), !dbg !1166
  %103 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @removal_bulk_remove_files.fnvb, i32 0, i32 2), align 8, !dbg !1167
  call void @path_remove_tree(i8* %103), !dbg !1168
  call void @varbuf_rollback(%struct.varbuf* @removal_bulk_remove_files.fnvb, %struct.varbuf_state* %6), !dbg !1169
  call void @varbuf_end_str(%struct.varbuf* @removal_bulk_remove_files.fnvb), !dbg !1170
  %104 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @removal_bulk_remove_files.fnvb, i32 0, i32 2), align 8, !dbg !1171
  call void (i32, i8*, ...) @debug(i32 64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.35, i32 0, i32 0), i8* %104), !dbg !1172
  %105 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @removal_bulk_remove_files.fnvb, i32 0, i32 2), align 8, !dbg !1173
  %106 = call i32 @rmdir(i8* %105) #9, !dbg !1175
  %107 = icmp ne i32 %106, 0, !dbg !1175
  br i1 %107, label %108, label %116, !dbg !1176

; <label>:108:                                    ; preds = %97
  %109 = call i32* @__errno_location() #1, !dbg !1177
  %110 = load i32, i32* %109, align 4, !dbg !1179
  %111 = icmp eq i32 %110, 2, !dbg !1180
  br i1 %111, label %116, label %112, !dbg !1181

; <label>:112:                                    ; preds = %108
  %113 = call i32* @__errno_location() #1, !dbg !1182
  %114 = load i32, i32* %113, align 4, !dbg !1184
  %115 = icmp eq i32 %114, 40, !dbg !1185
  br i1 %115, label %116, label %117, !dbg !1186

; <label>:116:                                    ; preds = %112, %108, %97
  br label %15, !dbg !1187, !llvm.loop !1099

; <label>:117:                                    ; preds = %112
  %118 = call i32* @__errno_location() #1, !dbg !1189
  %119 = load i32, i32* %118, align 4, !dbg !1191
  %120 = icmp eq i32 %119, 39, !dbg !1192
  br i1 %120, label %125, label %121, !dbg !1193

; <label>:121:                                    ; preds = %117
  %122 = call i32* @__errno_location() #1, !dbg !1194
  %123 = load i32, i32* %122, align 4, !dbg !1196
  %124 = icmp eq i32 %123, 17, !dbg !1197
  br i1 %124, label %125, label %128, !dbg !1198

; <label>:125:                                    ; preds = %121, %117
  %126 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @removal_bulk_remove_files.fnvb, i32 0, i32 2), align 8, !dbg !1199
  call void (i32, i8*, ...) @debug(i32 64, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.36, i32 0, i32 0), i8* %126), !dbg !1201
  %127 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !1202
  call void @push_leftover(%struct.fsys_namenode_list** %4, %struct.fsys_namenode* %127), !dbg !1203
  br label %15, !dbg !1204, !llvm.loop !1099

; <label>:128:                                    ; preds = %121
  %129 = call i32* @__errno_location() #1, !dbg !1205
  %130 = load i32, i32* %129, align 4, !dbg !1207
  %131 = icmp eq i32 %130, 16, !dbg !1208
  br i1 %131, label %136, label %132, !dbg !1209

; <label>:132:                                    ; preds = %128
  %133 = call i32* @__errno_location() #1, !dbg !1210
  %134 = load i32, i32* %133, align 4, !dbg !1212
  %135 = icmp eq i32 %134, 1, !dbg !1213
  br i1 %135, label %136, label %147, !dbg !1214

; <label>:136:                                    ; preds = %132, %128
  %137 = call i8* @gettext(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.37, i32 0, i32 0)) #9, !dbg !1215
  %138 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1217
  %139 = call i8* @pkg_name(%struct.pkginfo* %138, i32 1), !dbg !1218
  %140 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !1219
  %141 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %140, i32 0, i32 1, !dbg !1220
  %142 = load i8*, i8** %141, align 8, !dbg !1220
  %143 = call i32* @__errno_location() #1, !dbg !1221
  %144 = load i32, i32* %143, align 4, !dbg !1223
  %145 = call i8* @strerror(i32 %144) #9, !dbg !1224
  call void (i8*, ...) @warning(i8* %137, i8* %139, i8* %142, i8* %145), !dbg !1226
  %146 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !1227
  call void @push_leftover(%struct.fsys_namenode_list** %4, %struct.fsys_namenode* %146), !dbg !1228
  br label %15, !dbg !1229, !llvm.loop !1099

; <label>:147:                                    ; preds = %132
  br label %148

; <label>:148:                                    ; preds = %147
  %149 = call i32* @__errno_location() #1, !dbg !1230
  %150 = load i32, i32* %149, align 4, !dbg !1232
  %151 = icmp ne i32 %150, 20, !dbg !1233
  br i1 %151, label %152, label %155, !dbg !1234

; <label>:152:                                    ; preds = %148
  %153 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.38, i32 0, i32 0)) #9, !dbg !1235
  %154 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @removal_bulk_remove_files.fnvb, i32 0, i32 2), align 8, !dbg !1236
  call void (i8*, ...) @ohshite(i8* %153, i8* %154) #10, !dbg !1237
  unreachable, !dbg !1239

; <label>:155:                                    ; preds = %148
  %156 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @removal_bulk_remove_files.fnvb, i32 0, i32 2), align 8, !dbg !1240
  call void (i32, i8*, ...) @debug(i32 64, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.39, i32 0, i32 0), i8* %156), !dbg !1241
  %157 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @removal_bulk_remove_files.fnvb, i32 0, i32 2), align 8, !dbg !1242
  %158 = call i32 @secure_unlink(i8* %157), !dbg !1244
  %159 = icmp ne i32 %158, 0, !dbg !1244
  br i1 %159, label %160, label %163, !dbg !1245

; <label>:160:                                    ; preds = %155
  %161 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.40, i32 0, i32 0)) #9, !dbg !1246
  %162 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @removal_bulk_remove_files.fnvb, i32 0, i32 2), align 8, !dbg !1247
  call void (i8*, ...) @ohshite(i8* %161, i8* %162) #10, !dbg !1248
  unreachable, !dbg !1250

; <label>:163:                                    ; preds = %155
  br label %15, !dbg !1251, !llvm.loop !1099

; <label>:164:                                    ; preds = %15
  %165 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1253
  %166 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1254
  %167 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %166, i32 0, i32 9, !dbg !1255
  %168 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %4, align 8, !dbg !1256
  call void @write_filelist_except(%struct.pkginfo* %165, %struct.pkgbin* %167, %struct.fsys_namenode_list* %168, i32 0), !dbg !1257
  %169 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1258
  %170 = call i32 (%struct.pkginfo*, i8*, i8*, ...) @maintscript_installed(%struct.pkginfo* %169, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i8* null), !dbg !1259
  %171 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1260
  %172 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1261
  %173 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %172, i32 0, i32 9, !dbg !1262
  %174 = call i8* @pkg_infodb_get_file(%struct.pkginfo* %171, %struct.pkgbin* %173, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i32 0, i32 0)), !dbg !1263
  %175 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1264
  %176 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1265
  %177 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %176, i32 0, i32 9, !dbg !1266
  call void @trig_parse_ci(i8* %174, void (i8*, %struct.pkginfo*, %struct.pkgbin*, i32)* @trig_cicb_interest_delete, void (i8*, %struct.pkginfo*, %struct.pkgbin*, i32)* null, %struct.pkginfo* %175, %struct.pkgbin* %177), !dbg !1267
  call void @trig_file_interests_save(), !dbg !1268
  call void (i32, i8*, ...) @debug(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.43, i32 0, i32 0)), !dbg !1269
  %178 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1270
  %179 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1271
  %180 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %179, i32 0, i32 9, !dbg !1272
  call void @pkg_infodb_foreach(%struct.pkginfo* %178, %struct.pkgbin* %180, void (i8*, i8*)* @removal_bulk_remove_file), !dbg !1273
  %181 = call i8* @pkg_infodb_get_dir(), !dbg !1274
  call void @dir_sync_path(i8* %181), !dbg !1275
  %182 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1276
  call void @pkg_set_status(%struct.pkginfo* %182, i32 1), !dbg !1277
  %183 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1278
  %184 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %183, i32 0, i32 9, !dbg !1279
  %185 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %184, i32 0, i32 1, !dbg !1280
  store i8 0, i8* %185, align 8, !dbg !1281
  %186 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1282
  call void @modstatdb_note(%struct.pkginfo* %186), !dbg !1283
  call void @push_checkpoint(i32 -3, i32 1), !dbg !1284
  ret void, !dbg !1285
}

declare zeroext i1 @pkg_infodb_has_file(%struct.pkginfo*, %struct.pkgbin*, i8*) #3

declare void @dpkg_version_blank(%struct.dpkg_version*) #3

; Function Attrs: nounwind uwtable
define internal void @removal_bulk_remove_configfiles(%struct.pkginfo*) #0 !dbg !473 {
  %2 = alloca %struct.pkginfo*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.conffile*, align 8
  %8 = alloca %struct.conffile**, align 8
  %9 = alloca %struct.fsys_namenode_list*, align 8
  %10 = alloca %struct.__dirstream*, align 8
  %11 = alloca %struct.dirent*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca %struct.fsys_namenode*, align 8
  %15 = alloca %struct.fsys_namenode*, align 8
  %16 = alloca %struct.varbuf_state, align 8
  %17 = alloca i32, align 4
  store %struct.pkginfo* %0, %struct.pkginfo** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %2, metadata !1286, metadata !486), !dbg !1287
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1288, metadata !486), !dbg !1289
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1290, metadata !486), !dbg !1291
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1292, metadata !486), !dbg !1293
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1294, metadata !486), !dbg !1295
  call void @llvm.dbg.declare(metadata %struct.conffile** %7, metadata !1296, metadata !486), !dbg !1297
  call void @llvm.dbg.declare(metadata %struct.conffile*** %8, metadata !1298, metadata !486), !dbg !1300
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode_list** %9, metadata !1301, metadata !486), !dbg !1302
  call void @llvm.dbg.declare(metadata %struct.__dirstream** %10, metadata !1303, metadata !486), !dbg !1308
  call void @llvm.dbg.declare(metadata %struct.dirent** %11, metadata !1309, metadata !486), !dbg !1324
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1325, metadata !486), !dbg !1326
  call void @llvm.dbg.declare(metadata i8*** %13, metadata !1327, metadata !486), !dbg !1329
  %18 = call i8* @gettext(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.53, i32 0, i32 0)) #9, !dbg !1330
  %19 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1331
  %20 = call i8* @pkg_name(%struct.pkginfo* %19, i32 1), !dbg !1332
  %21 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1333
  %22 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %21, i32 0, i32 9, !dbg !1334
  %23 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %22, i32 0, i32 11, !dbg !1335
  %24 = call i8* @versiondescribe(%struct.dpkg_version* %23, i32 1), !dbg !1336
  %25 = call i32 (i8*, ...) @printf(i8* %18, i8* %20, i8* %24), !dbg !1337
  %26 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1339
  %27 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1340
  %28 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %27, i32 0, i32 9, !dbg !1341
  call void @log_action(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i32 0, i32 0), %struct.pkginfo* %26, %struct.pkgbin* %28), !dbg !1342
  %29 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1343
  call void @trig_activate_packageprocessing(%struct.pkginfo* %29), !dbg !1344
  %30 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1345
  call void @ensure_packagefiles_available(%struct.pkginfo* %30), !dbg !1346
  %31 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1347
  %32 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %31, i32 0, i32 8, !dbg !1348
  call void @dpkg_version_blank(%struct.dpkg_version* %32), !dbg !1349
  %33 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1350
  call void @modstatdb_note(%struct.pkginfo* %33), !dbg !1351
  %34 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1352
  %35 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %34, i32 0, i32 9, !dbg !1354
  %36 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %35, i32 0, i32 12, !dbg !1355
  store %struct.conffile** %36, %struct.conffile*** %8, align 8, !dbg !1356
  br label %37, !dbg !1357

; <label>:37:                                     ; preds = %131, %1
  %38 = load %struct.conffile**, %struct.conffile*** %8, align 8, !dbg !1358
  %39 = load %struct.conffile*, %struct.conffile** %38, align 8, !dbg !1361
  store %struct.conffile* %39, %struct.conffile** %7, align 8, !dbg !1362
  %40 = icmp ne %struct.conffile* %39, null, !dbg !1363
  br i1 %40, label %41, label %132, !dbg !1364

; <label>:41:                                     ; preds = %37
  %42 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1365
  %43 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %42, i32 0, i32 16, !dbg !1368
  %44 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %43, align 8, !dbg !1368
  store %struct.fsys_namenode_list* %44, %struct.fsys_namenode_list** %9, align 8, !dbg !1369
  br label %45, !dbg !1370

; <label>:45:                                     ; preds = %62, %41
  %46 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %9, align 8, !dbg !1371
  %47 = icmp ne %struct.fsys_namenode_list* %46, null, !dbg !1371
  br i1 %47, label %48, label %59, !dbg !1373

; <label>:48:                                     ; preds = %45
  %49 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %9, align 8, !dbg !1374
  %50 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %49, i32 0, i32 1, !dbg !1376
  %51 = load %struct.fsys_namenode*, %struct.fsys_namenode** %50, align 8, !dbg !1376
  %52 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %51, i32 0, i32 1, !dbg !1377
  %53 = load i8*, i8** %52, align 8, !dbg !1377
  %54 = load %struct.conffile*, %struct.conffile** %7, align 8, !dbg !1378
  %55 = getelementptr inbounds %struct.conffile, %struct.conffile* %54, i32 0, i32 1, !dbg !1379
  %56 = load i8*, i8** %55, align 8, !dbg !1379
  %57 = call i32 @strcmp(i8* %53, i8* %56) #11, !dbg !1380
  %58 = icmp ne i32 %57, 0, !dbg !1381
  br label %59

; <label>:59:                                     ; preds = %48, %45
  %60 = phi i1 [ false, %45 ], [ %58, %48 ]
  br i1 %60, label %61, label %66, !dbg !1382

; <label>:61:                                     ; preds = %59
  br label %62, !dbg !1384

; <label>:62:                                     ; preds = %61
  %63 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %9, align 8, !dbg !1386
  %64 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %63, i32 0, i32 0, !dbg !1387
  %65 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %64, align 8, !dbg !1387
  store %struct.fsys_namenode_list* %65, %struct.fsys_namenode_list** %9, align 8, !dbg !1388
  br label %45, !dbg !1389, !llvm.loop !1391

; <label>:66:                                     ; preds = %59
  %67 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %9, align 8, !dbg !1393
  %68 = icmp ne %struct.fsys_namenode_list* %67, null, !dbg !1393
  br i1 %68, label %77, label %69, !dbg !1395

; <label>:69:                                     ; preds = %66
  %70 = load %struct.conffile*, %struct.conffile** %7, align 8, !dbg !1396
  %71 = getelementptr inbounds %struct.conffile, %struct.conffile* %70, i32 0, i32 1, !dbg !1398
  %72 = load i8*, i8** %71, align 8, !dbg !1398
  call void (i32, i8*, ...) @debug(i32 16, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.55, i32 0, i32 0), i8* %72), !dbg !1399
  %73 = load %struct.conffile*, %struct.conffile** %7, align 8, !dbg !1400
  %74 = getelementptr inbounds %struct.conffile, %struct.conffile* %73, i32 0, i32 0, !dbg !1401
  %75 = load %struct.conffile*, %struct.conffile** %74, align 8, !dbg !1401
  %76 = load %struct.conffile**, %struct.conffile*** %8, align 8, !dbg !1402
  store %struct.conffile* %75, %struct.conffile** %76, align 8, !dbg !1403
  br label %131, !dbg !1404

; <label>:77:                                     ; preds = %66
  %78 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %9, align 8, !dbg !1405
  %79 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %78, i32 0, i32 1, !dbg !1408
  %80 = load %struct.fsys_namenode*, %struct.fsys_namenode** %79, align 8, !dbg !1408
  %81 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %80, i32 0, i32 3, !dbg !1409
  %82 = load %struct.fsys_diversion*, %struct.fsys_diversion** %81, align 8, !dbg !1409
  %83 = icmp ne %struct.fsys_diversion* %82, null, !dbg !1405
  br i1 %83, label %84, label %122, !dbg !1410

; <label>:84:                                     ; preds = %77
  %85 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %9, align 8, !dbg !1411
  %86 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %85, i32 0, i32 1, !dbg !1412
  %87 = load %struct.fsys_namenode*, %struct.fsys_namenode** %86, align 8, !dbg !1412
  %88 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %87, i32 0, i32 3, !dbg !1413
  %89 = load %struct.fsys_diversion*, %struct.fsys_diversion** %88, align 8, !dbg !1413
  %90 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %89, i32 0, i32 1, !dbg !1414
  %91 = load %struct.fsys_namenode*, %struct.fsys_namenode** %90, align 8, !dbg !1414
  %92 = icmp ne %struct.fsys_namenode* %91, null, !dbg !1411
  br i1 %92, label %114, label %93, !dbg !1415

; <label>:93:                                     ; preds = %84
  %94 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %9, align 8, !dbg !1416
  %95 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %94, i32 0, i32 1, !dbg !1417
  %96 = load %struct.fsys_namenode*, %struct.fsys_namenode** %95, align 8, !dbg !1417
  %97 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %96, i32 0, i32 3, !dbg !1418
  %98 = load %struct.fsys_diversion*, %struct.fsys_diversion** %97, align 8, !dbg !1418
  %99 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %98, i32 0, i32 0, !dbg !1419
  %100 = load %struct.fsys_namenode*, %struct.fsys_namenode** %99, align 8, !dbg !1419
  %101 = icmp ne %struct.fsys_namenode* %100, null, !dbg !1416
  br i1 %101, label %102, label %122, !dbg !1420

; <label>:102:                                    ; preds = %93
  %103 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %9, align 8, !dbg !1421
  %104 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %103, i32 0, i32 1, !dbg !1422
  %105 = load %struct.fsys_namenode*, %struct.fsys_namenode** %104, align 8, !dbg !1422
  %106 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %105, i32 0, i32 3, !dbg !1423
  %107 = load %struct.fsys_diversion*, %struct.fsys_diversion** %106, align 8, !dbg !1423
  %108 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %107, i32 0, i32 2, !dbg !1424
  %109 = load %struct.pkgset*, %struct.pkgset** %108, align 8, !dbg !1424
  %110 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1425
  %111 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %110, i32 0, i32 0, !dbg !1426
  %112 = load %struct.pkgset*, %struct.pkgset** %111, align 8, !dbg !1426
  %113 = icmp ne %struct.pkgset* %109, %112, !dbg !1427
  br i1 %113, label %114, label %122, !dbg !1428

; <label>:114:                                    ; preds = %102, %84
  %115 = load %struct.conffile*, %struct.conffile** %7, align 8, !dbg !1430
  %116 = getelementptr inbounds %struct.conffile, %struct.conffile* %115, i32 0, i32 1, !dbg !1432
  %117 = load i8*, i8** %116, align 8, !dbg !1432
  call void (i32, i8*, ...) @debug(i32 16, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.56, i32 0, i32 0), i8* %117), !dbg !1433
  %118 = load %struct.conffile*, %struct.conffile** %7, align 8, !dbg !1434
  %119 = getelementptr inbounds %struct.conffile, %struct.conffile* %118, i32 0, i32 0, !dbg !1435
  %120 = load %struct.conffile*, %struct.conffile** %119, align 8, !dbg !1435
  %121 = load %struct.conffile**, %struct.conffile*** %8, align 8, !dbg !1436
  store %struct.conffile* %120, %struct.conffile** %121, align 8, !dbg !1437
  br label %130, !dbg !1438

; <label>:122:                                    ; preds = %102, %93, %77
  %123 = load %struct.conffile*, %struct.conffile** %7, align 8, !dbg !1439
  %124 = getelementptr inbounds %struct.conffile, %struct.conffile* %123, i32 0, i32 1, !dbg !1441
  %125 = load i8*, i8** %124, align 8, !dbg !1441
  call void (i32, i8*, ...) @debug(i32 128, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.57, i32 0, i32 0), i8* %125), !dbg !1442
  %126 = load %struct.conffile*, %struct.conffile** %7, align 8, !dbg !1443
  %127 = getelementptr inbounds %struct.conffile, %struct.conffile* %126, i32 0, i32 2, !dbg !1444
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i32 0, i32 0), i8** %127, align 8, !dbg !1445
  %128 = load %struct.conffile*, %struct.conffile** %7, align 8, !dbg !1446
  %129 = getelementptr inbounds %struct.conffile, %struct.conffile* %128, i32 0, i32 0, !dbg !1447
  store %struct.conffile** %129, %struct.conffile*** %8, align 8, !dbg !1448
  br label %130

; <label>:130:                                    ; preds = %122, %114
  br label %131

; <label>:131:                                    ; preds = %130, %69
  br label %37, !dbg !1449, !llvm.loop !1451

; <label>:132:                                    ; preds = %37
  %133 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1453
  call void @modstatdb_note(%struct.pkginfo* %133), !dbg !1454
  %134 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1455
  %135 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %134, i32 0, i32 9, !dbg !1457
  %136 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %135, i32 0, i32 12, !dbg !1458
  %137 = load %struct.conffile*, %struct.conffile** %136, align 8, !dbg !1458
  store %struct.conffile* %137, %struct.conffile** %7, align 8, !dbg !1459
  br label %138, !dbg !1460

; <label>:138:                                    ; preds = %392, %132
  %139 = load %struct.conffile*, %struct.conffile** %7, align 8, !dbg !1461
  %140 = icmp ne %struct.conffile* %139, null, !dbg !1464
  br i1 %140, label %141, label %396, !dbg !1464

; <label>:141:                                    ; preds = %138
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %14, metadata !1465, metadata !486), !dbg !1467
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %15, metadata !1468, metadata !486), !dbg !1469
  call void @llvm.dbg.declare(metadata %struct.varbuf_state* %16, metadata !1470, metadata !486), !dbg !1471
  %142 = load %struct.conffile*, %struct.conffile** %7, align 8, !dbg !1472
  %143 = getelementptr inbounds %struct.conffile, %struct.conffile* %142, i32 0, i32 3, !dbg !1474
  %144 = load i8, i8* %143, align 8, !dbg !1474
  %145 = trunc i8 %144 to i1, !dbg !1474
  br i1 %145, label %146, label %150, !dbg !1475

; <label>:146:                                    ; preds = %141
  %147 = load %struct.conffile*, %struct.conffile** %7, align 8, !dbg !1476
  %148 = getelementptr inbounds %struct.conffile, %struct.conffile* %147, i32 0, i32 1, !dbg !1478
  %149 = load i8*, i8** %148, align 8, !dbg !1478
  call void (i32, i8*, ...) @debug(i32 128, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.59, i32 0, i32 0), i8* %149), !dbg !1479
  br label %150, !dbg !1480

; <label>:150:                                    ; preds = %146, %141
  call void @varbuf_reset(%struct.varbuf* @removal_bulk_remove_configfiles.fnvb), !dbg !1481
  %151 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1482
  %152 = load %struct.conffile*, %struct.conffile** %7, align 8, !dbg !1483
  %153 = getelementptr inbounds %struct.conffile, %struct.conffile* %152, i32 0, i32 1, !dbg !1484
  %154 = load i8*, i8** %153, align 8, !dbg !1484
  %155 = call i32 @conffderef(%struct.pkginfo* %151, %struct.varbuf* @removal_bulk_remove_configfiles.fnvb, i8* %154), !dbg !1485
  store i32 %155, i32* %3, align 4, !dbg !1486
  %156 = load %struct.conffile*, %struct.conffile** %7, align 8, !dbg !1487
  %157 = getelementptr inbounds %struct.conffile, %struct.conffile* %156, i32 0, i32 1, !dbg !1488
  %158 = load i8*, i8** %157, align 8, !dbg !1488
  %159 = load i32, i32* %3, align 4, !dbg !1489
  %160 = icmp eq i32 %159, -1, !dbg !1490
  br i1 %160, label %161, label %162, !dbg !1489

; <label>:161:                                    ; preds = %150
  br label %164, !dbg !1491

; <label>:162:                                    ; preds = %150
  %163 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @removal_bulk_remove_configfiles.fnvb, i32 0, i32 2), align 8, !dbg !1493
  br label %164, !dbg !1495

; <label>:164:                                    ; preds = %162, %161
  %165 = phi i8* [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.61, i32 0, i32 0), %161 ], [ %163, %162 ], !dbg !1496
  call void (i32, i8*, ...) @debug(i32 128, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.60, i32 0, i32 0), i8* %158, i8* %165), !dbg !1498
  %166 = load i32, i32* %3, align 4, !dbg !1499
  %167 = icmp eq i32 %166, -1, !dbg !1501
  br i1 %167, label %168, label %169, !dbg !1502

; <label>:168:                                    ; preds = %164
  br label %392, !dbg !1503

; <label>:169:                                    ; preds = %164
  %170 = load %struct.conffile*, %struct.conffile** %7, align 8, !dbg !1504
  %171 = getelementptr inbounds %struct.conffile, %struct.conffile* %170, i32 0, i32 1, !dbg !1505
  %172 = load i8*, i8** %171, align 8, !dbg !1505
  %173 = call %struct.fsys_namenode* @fsys_hash_find_node(i8* %172, i32 0), !dbg !1506
  store %struct.fsys_namenode* %173, %struct.fsys_namenode** %14, align 8, !dbg !1507
  %174 = load %struct.fsys_namenode*, %struct.fsys_namenode** %14, align 8, !dbg !1508
  %175 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1509
  %176 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1510
  %177 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %176, i32 0, i32 9, !dbg !1511
  %178 = call %struct.fsys_namenode* @namenodetouse(%struct.fsys_namenode* %174, %struct.pkginfo* %175, %struct.pkgbin* %177), !dbg !1512
  store %struct.fsys_namenode* %178, %struct.fsys_namenode** %15, align 8, !dbg !1513
  %179 = load %struct.fsys_namenode*, %struct.fsys_namenode** %15, align 8, !dbg !1514
  %180 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1515
  call void @trig_path_activate(%struct.fsys_namenode* %179, %struct.pkginfo* %180), !dbg !1516
  %181 = load i64, i64* getelementptr inbounds (%struct.varbuf, %struct.varbuf* @removal_bulk_remove_configfiles.fnvb, i32 0, i32 0), align 8, !dbg !1517
  %182 = trunc i64 %181 to i32, !dbg !1518
  store i32 %182, i32* %4, align 4, !dbg !1519
  %183 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @removal_bulk_remove_configfiles.fnvb, i32 0, i32 2), align 8, !dbg !1520
  %184 = call i32 @unlink(i8* %183) #9, !dbg !1522
  %185 = icmp ne i32 %184, 0, !dbg !1522
  br i1 %185, label %186, label %200, !dbg !1523

; <label>:186:                                    ; preds = %169
  %187 = call i32* @__errno_location() #1, !dbg !1524
  %188 = load i32, i32* %187, align 4, !dbg !1526
  %189 = icmp ne i32 %188, 2, !dbg !1527
  br i1 %189, label %190, label %200, !dbg !1528

; <label>:190:                                    ; preds = %186
  %191 = call i32* @__errno_location() #1, !dbg !1529
  %192 = load i32, i32* %191, align 4, !dbg !1531
  %193 = icmp ne i32 %192, 20, !dbg !1532
  br i1 %193, label %194, label %200, !dbg !1533

; <label>:194:                                    ; preds = %190
  %195 = call i8* @gettext(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.62, i32 0, i32 0)) #9, !dbg !1534
  %196 = load %struct.conffile*, %struct.conffile** %7, align 8, !dbg !1535
  %197 = getelementptr inbounds %struct.conffile, %struct.conffile* %196, i32 0, i32 1, !dbg !1536
  %198 = load i8*, i8** %197, align 8, !dbg !1536
  %199 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @removal_bulk_remove_configfiles.fnvb, i32 0, i32 2), align 8, !dbg !1537
  call void (i8*, ...) @ohshite(i8* %195, i8* %198, i8* %199) #10, !dbg !1538
  unreachable, !dbg !1539

; <label>:200:                                    ; preds = %190, %186, %169
  %201 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @removal_bulk_remove_configfiles.fnvb, i32 0, i32 2), align 8, !dbg !1540
  %202 = call i8* @strrchr(i8* %201, i32 47) #11, !dbg !1541
  store i8* %202, i8** %12, align 8, !dbg !1542
  %203 = load i8*, i8** %12, align 8, !dbg !1543
  %204 = icmp ne i8* %203, null, !dbg !1543
  br i1 %204, label %206, label %205, !dbg !1545

; <label>:205:                                    ; preds = %200
  br label %392, !dbg !1546

; <label>:206:                                    ; preds = %200
  %207 = load i8*, i8** %12, align 8, !dbg !1548
  store i8 0, i8* %207, align 1, !dbg !1549
  call void @varbuf_reset(%struct.varbuf* @removal_bulk_remove_configfiles.removevb), !dbg !1550
  %208 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @removal_bulk_remove_configfiles.fnvb, i32 0, i32 2), align 8, !dbg !1551
  %209 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @removal_bulk_remove_configfiles.fnvb, i32 0, i32 2), align 8, !dbg !1552
  %210 = call i64 @strlen(i8* %209) #11, !dbg !1553
  call void @varbuf_add_buf(%struct.varbuf* @removal_bulk_remove_configfiles.removevb, i8* %208, i64 %210), !dbg !1554
  call void @varbuf_add_char(%struct.varbuf* @removal_bulk_remove_configfiles.removevb, i32 47), !dbg !1555
  call void @varbuf_end_str(%struct.varbuf* @removal_bulk_remove_configfiles.removevb), !dbg !1556
  call void @varbuf_snapshot(%struct.varbuf* @removal_bulk_remove_configfiles.removevb, %struct.varbuf_state* %16), !dbg !1557
  %211 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @removal_bulk_remove_configfiles.removevb, i32 0, i32 2), align 8, !dbg !1558
  %212 = call %struct.__dirstream* @opendir(i8* %211), !dbg !1559
  store %struct.__dirstream* %212, %struct.__dirstream** %10, align 8, !dbg !1560
  %213 = load %struct.__dirstream*, %struct.__dirstream** %10, align 8, !dbg !1561
  %214 = icmp ne %struct.__dirstream* %213, null, !dbg !1561
  br i1 %214, label %237, label %215, !dbg !1563

; <label>:215:                                    ; preds = %206
  call void @llvm.dbg.declare(metadata i32* %17, metadata !1564, metadata !486), !dbg !1566
  %216 = call i32* @__errno_location() #1, !dbg !1567
  %217 = load i32, i32* %216, align 4, !dbg !1568
  store i32 %217, i32* %17, align 4, !dbg !1566
  %218 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @removal_bulk_remove_configfiles.fnvb, i32 0, i32 2), align 8, !dbg !1569
  %219 = load i32, i32* %17, align 4, !dbg !1570
  %220 = call i8* @strerror(i32 %219) #9, !dbg !1571
  call void (i32, i8*, ...) @debug(i32 128, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.63, i32 0, i32 0), i8* %218, i8* %220), !dbg !1572
  %221 = load i32, i32* %17, align 4, !dbg !1573
  %222 = call i32* @__errno_location() #1, !dbg !1574
  store i32 %221, i32* %222, align 4, !dbg !1576
  %223 = call i32* @__errno_location() #1, !dbg !1577
  %224 = load i32, i32* %223, align 4, !dbg !1579
  %225 = icmp eq i32 %224, 2, !dbg !1580
  br i1 %225, label %230, label %226, !dbg !1581

; <label>:226:                                    ; preds = %215
  %227 = call i32* @__errno_location() #1, !dbg !1582
  %228 = load i32, i32* %227, align 4, !dbg !1584
  %229 = icmp eq i32 %228, 20, !dbg !1585
  br i1 %229, label %230, label %231, !dbg !1586

; <label>:230:                                    ; preds = %226, %215
  br label %392, !dbg !1587

; <label>:231:                                    ; preds = %226
  %232 = call i8* @gettext(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.64, i32 0, i32 0)) #9, !dbg !1589
  %233 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @removal_bulk_remove_configfiles.fnvb, i32 0, i32 2), align 8, !dbg !1590
  %234 = load %struct.conffile*, %struct.conffile** %7, align 8, !dbg !1591
  %235 = getelementptr inbounds %struct.conffile, %struct.conffile* %234, i32 0, i32 1, !dbg !1592
  %236 = load i8*, i8** %235, align 8, !dbg !1592
  call void (i8*, ...) @ohshite(i8* %232, i8* %233, i8* %236) #10, !dbg !1593
  unreachable, !dbg !1594

; <label>:237:                                    ; preds = %206
  %238 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @removal_bulk_remove_configfiles.fnvb, i32 0, i32 2), align 8, !dbg !1595
  call void (i32, i8*, ...) @debug(i32 128, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.65, i32 0, i32 0), i8* %238), !dbg !1596
  %239 = load %struct.__dirstream*, %struct.__dirstream** %10, align 8, !dbg !1597
  %240 = bitcast %struct.__dirstream* %239 to i8*, !dbg !1598
  call void (void (i32, i8**)*, i32, i32, ...) @push_cleanup(void (i32, i8**)* @cu_closedir, i32 -1, i32 1, i8* %240), !dbg !1599
  %241 = load i8*, i8** %12, align 8, !dbg !1600
  store i8 47, i8* %241, align 1, !dbg !1601
  %242 = load i8*, i8** %12, align 8, !dbg !1602
  %243 = getelementptr inbounds i8, i8* %242, i32 1, !dbg !1602
  store i8* %243, i8** %12, align 8, !dbg !1602
  %244 = call i64 @strlen(i8* %243) #11, !dbg !1603
  %245 = trunc i64 %244 to i32, !dbg !1603
  store i32 %245, i32* %5, align 4, !dbg !1604
  %246 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @removal_bulk_remove_configfiles.fnvb, i32 0, i32 2), align 8, !dbg !1605
  %247 = load i32, i32* %4, align 4, !dbg !1606
  %248 = sext i32 %247 to i64, !dbg !1607
  %249 = getelementptr inbounds i8, i8* %246, i64 %248, !dbg !1607
  %250 = load i32, i32* %5, align 4, !dbg !1608
  %251 = sext i32 %250 to i64, !dbg !1609
  %252 = sub i64 0, %251, !dbg !1609
  %253 = getelementptr inbounds i8, i8* %249, i64 %252, !dbg !1609
  store i8* %253, i8** %6, align 8, !dbg !1610
  br label %254, !dbg !1611

; <label>:254:                                    ; preds = %390, %363, %237
  %255 = load %struct.__dirstream*, %struct.__dirstream** %10, align 8, !dbg !1612
  %256 = call %struct.dirent* @readdir(%struct.__dirstream* %255), !dbg !1613
  store %struct.dirent* %256, %struct.dirent** %11, align 8, !dbg !1614
  %257 = icmp ne %struct.dirent* %256, null, !dbg !1615
  br i1 %257, label %258, label %391, !dbg !1616

; <label>:258:                                    ; preds = %254
  %259 = load %struct.dirent*, %struct.dirent** %11, align 8, !dbg !1617
  %260 = getelementptr inbounds %struct.dirent, %struct.dirent* %259, i32 0, i32 4, !dbg !1619
  %261 = getelementptr inbounds [256 x i8], [256 x i8]* %260, i32 0, i32 0, !dbg !1617
  %262 = load i8*, i8** %6, align 8, !dbg !1620
  %263 = load i32, i32* %4, align 4, !dbg !1621
  %264 = load i32, i32* %5, align 4, !dbg !1622
  call void (i32, i8*, ...) @debug(i32 1024, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.66, i32 0, i32 0), i8* %261, i8* %262, i32 %263, i32 %264), !dbg !1623
  %265 = load %struct.dirent*, %struct.dirent** %11, align 8, !dbg !1624
  %266 = getelementptr inbounds %struct.dirent, %struct.dirent* %265, i32 0, i32 4, !dbg !1626
  %267 = getelementptr inbounds [256 x i8], [256 x i8]* %266, i32 0, i32 0, !dbg !1624
  %268 = load i8*, i8** %6, align 8, !dbg !1627
  %269 = load i32, i32* %5, align 4, !dbg !1628
  %270 = sext i32 %269 to i64, !dbg !1628
  %271 = call i32 @strncmp(i8* %267, i8* %268, i64 %270) #11, !dbg !1629
  %272 = icmp eq i32 %271, 0, !dbg !1630
  br i1 %272, label %273, label %335, !dbg !1631

; <label>:273:                                    ; preds = %258
  call void (i32, i8*, ...) @debug(i32 1024, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.67, i32 0, i32 0)), !dbg !1632
  store i8** getelementptr inbounds ([8 x i8*], [8 x i8*]* @removal_bulk_remove_configfiles.removeconffexts, i32 0, i32 0), i8*** %13, align 8, !dbg !1634
  br label %274, !dbg !1636

; <label>:274:                                    ; preds = %291, %273
  %275 = load i8**, i8*** %13, align 8, !dbg !1637
  %276 = load i8*, i8** %275, align 8, !dbg !1640
  %277 = icmp ne i8* %276, null, !dbg !1641
  br i1 %277, label %278, label %294, !dbg !1641

; <label>:278:                                    ; preds = %274
  %279 = load i8**, i8*** %13, align 8, !dbg !1642
  %280 = load i8*, i8** %279, align 8, !dbg !1644
  %281 = load %struct.dirent*, %struct.dirent** %11, align 8, !dbg !1645
  %282 = getelementptr inbounds %struct.dirent, %struct.dirent* %281, i32 0, i32 4, !dbg !1646
  %283 = getelementptr inbounds [256 x i8], [256 x i8]* %282, i32 0, i32 0, !dbg !1645
  %284 = load i32, i32* %5, align 4, !dbg !1647
  %285 = sext i32 %284 to i64, !dbg !1648
  %286 = getelementptr inbounds i8, i8* %283, i64 %285, !dbg !1648
  %287 = call i32 @strcmp(i8* %280, i8* %286) #11, !dbg !1649
  %288 = icmp eq i32 %287, 0, !dbg !1650
  br i1 %288, label %289, label %290, !dbg !1651

; <label>:289:                                    ; preds = %278
  br label %364, !dbg !1652

; <label>:290:                                    ; preds = %278
  br label %291, !dbg !1653

; <label>:291:                                    ; preds = %290
  %292 = load i8**, i8*** %13, align 8, !dbg !1655
  %293 = getelementptr inbounds i8*, i8** %292, i32 1, !dbg !1655
  store i8** %293, i8*** %13, align 8, !dbg !1655
  br label %274, !dbg !1657, !llvm.loop !1658

; <label>:294:                                    ; preds = %274
  %295 = load %struct.dirent*, %struct.dirent** %11, align 8, !dbg !1660
  %296 = getelementptr inbounds %struct.dirent, %struct.dirent* %295, i32 0, i32 4, !dbg !1661
  %297 = getelementptr inbounds [256 x i8], [256 x i8]* %296, i32 0, i32 0, !dbg !1660
  %298 = load i32, i32* %5, align 4, !dbg !1662
  %299 = sext i32 %298 to i64, !dbg !1663
  %300 = getelementptr inbounds i8, i8* %297, i64 %299, !dbg !1663
  store i8* %300, i8** %12, align 8, !dbg !1664
  %301 = load i8*, i8** %12, align 8, !dbg !1665
  %302 = getelementptr inbounds i8, i8* %301, i32 1, !dbg !1665
  store i8* %302, i8** %12, align 8, !dbg !1665
  %303 = load i8, i8* %301, align 1, !dbg !1667
  %304 = sext i8 %303 to i32, !dbg !1667
  %305 = icmp eq i32 %304, 126, !dbg !1668
  br i1 %305, label %306, label %334, !dbg !1669

; <label>:306:                                    ; preds = %294
  br label %307, !dbg !1670

; <label>:307:                                    ; preds = %319, %306
  %308 = load i8*, i8** %12, align 8, !dbg !1672
  %309 = load i8, i8* %308, align 1, !dbg !1674
  %310 = sext i8 %309 to i32, !dbg !1674
  %311 = icmp ne i32 %310, 0, !dbg !1674
  br i1 %311, label %312, label %317, !dbg !1675

; <label>:312:                                    ; preds = %307
  %313 = load i8*, i8** %12, align 8, !dbg !1676
  %314 = load i8, i8* %313, align 1, !dbg !1678
  %315 = sext i8 %314 to i32, !dbg !1678
  %316 = call zeroext i1 @c_isdigit(i32 %315), !dbg !1679
  br label %317

; <label>:317:                                    ; preds = %312, %307
  %318 = phi i1 [ false, %307 ], [ %316, %312 ]
  br i1 %318, label %319, label %322, !dbg !1680

; <label>:319:                                    ; preds = %317
  %320 = load i8*, i8** %12, align 8, !dbg !1682
  %321 = getelementptr inbounds i8, i8* %320, i32 1, !dbg !1682
  store i8* %321, i8** %12, align 8, !dbg !1682
  br label %307, !dbg !1683, !llvm.loop !1685

; <label>:322:                                    ; preds = %317
  %323 = load i8*, i8** %12, align 8, !dbg !1686
  %324 = load i8, i8* %323, align 1, !dbg !1688
  %325 = sext i8 %324 to i32, !dbg !1688
  %326 = icmp eq i32 %325, 126, !dbg !1689
  br i1 %326, label %327, label %333, !dbg !1690

; <label>:327:                                    ; preds = %322
  %328 = load i8*, i8** %12, align 8, !dbg !1691
  %329 = getelementptr inbounds i8, i8* %328, i32 1, !dbg !1691
  store i8* %329, i8** %12, align 8, !dbg !1691
  %330 = load i8, i8* %329, align 1, !dbg !1693
  %331 = icmp ne i8 %330, 0, !dbg !1693
  br i1 %331, label %333, label %332, !dbg !1694

; <label>:332:                                    ; preds = %327
  br label %364, !dbg !1695

; <label>:333:                                    ; preds = %327, %322
  br label %334, !dbg !1697

; <label>:334:                                    ; preds = %333, %294
  br label %335, !dbg !1698

; <label>:335:                                    ; preds = %334, %258
  call void (i32, i8*, ...) @debug(i32 1024, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.68, i32 0, i32 0)), !dbg !1699
  %336 = load %struct.dirent*, %struct.dirent** %11, align 8, !dbg !1700
  %337 = getelementptr inbounds %struct.dirent, %struct.dirent* %336, i32 0, i32 4, !dbg !1702
  %338 = getelementptr inbounds [256 x i8], [256 x i8]* %337, i64 0, i64 0, !dbg !1700
  %339 = load i8, i8* %338, align 1, !dbg !1700
  %340 = sext i8 %339 to i32, !dbg !1700
  %341 = icmp eq i32 %340, 35, !dbg !1703
  br i1 %341, label %342, label %363, !dbg !1704

; <label>:342:                                    ; preds = %335
  %343 = load %struct.dirent*, %struct.dirent** %11, align 8, !dbg !1705
  %344 = getelementptr inbounds %struct.dirent, %struct.dirent* %343, i32 0, i32 4, !dbg !1706
  %345 = getelementptr inbounds [256 x i8], [256 x i8]* %344, i32 0, i32 0, !dbg !1705
  %346 = getelementptr inbounds i8, i8* %345, i64 1, !dbg !1707
  %347 = load i8*, i8** %6, align 8, !dbg !1708
  %348 = load i32, i32* %5, align 4, !dbg !1709
  %349 = sext i32 %348 to i64, !dbg !1709
  %350 = call i32 @strncmp(i8* %346, i8* %347, i64 %349) #11, !dbg !1710
  %351 = icmp eq i32 %350, 0, !dbg !1711
  br i1 %351, label %352, label %363, !dbg !1712

; <label>:352:                                    ; preds = %342
  %353 = load %struct.dirent*, %struct.dirent** %11, align 8, !dbg !1713
  %354 = getelementptr inbounds %struct.dirent, %struct.dirent* %353, i32 0, i32 4, !dbg !1714
  %355 = getelementptr inbounds [256 x i8], [256 x i8]* %354, i32 0, i32 0, !dbg !1713
  %356 = getelementptr inbounds i8, i8* %355, i64 1, !dbg !1715
  %357 = load i32, i32* %5, align 4, !dbg !1716
  %358 = sext i32 %357 to i64, !dbg !1717
  %359 = getelementptr inbounds i8, i8* %356, i64 %358, !dbg !1717
  %360 = call i32 @strcmp(i8* %359, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i32 0, i32 0)) #11, !dbg !1718
  %361 = icmp eq i32 %360, 0, !dbg !1719
  br i1 %361, label %362, label %363, !dbg !1720

; <label>:362:                                    ; preds = %352
  br label %364, !dbg !1722

; <label>:363:                                    ; preds = %352, %342, %335
  call void (i32, i8*, ...) @debug(i32 1024, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.70, i32 0, i32 0)), !dbg !1723
  br label %254, !dbg !1724, !llvm.loop !1725

; <label>:364:                                    ; preds = %362, %332, %289
  call void @varbuf_rollback(%struct.varbuf* @removal_bulk_remove_configfiles.removevb, %struct.varbuf_state* %16), !dbg !1726
  %365 = load %struct.dirent*, %struct.dirent** %11, align 8, !dbg !1727
  %366 = getelementptr inbounds %struct.dirent, %struct.dirent* %365, i32 0, i32 4, !dbg !1728
  %367 = getelementptr inbounds [256 x i8], [256 x i8]* %366, i32 0, i32 0, !dbg !1727
  %368 = load %struct.dirent*, %struct.dirent** %11, align 8, !dbg !1729
  %369 = getelementptr inbounds %struct.dirent, %struct.dirent* %368, i32 0, i32 4, !dbg !1730
  %370 = getelementptr inbounds [256 x i8], [256 x i8]* %369, i32 0, i32 0, !dbg !1729
  %371 = call i64 @strlen(i8* %370) #11, !dbg !1731
  call void @varbuf_add_buf(%struct.varbuf* @removal_bulk_remove_configfiles.removevb, i8* %367, i64 %371), !dbg !1732
  call void @varbuf_end_str(%struct.varbuf* @removal_bulk_remove_configfiles.removevb), !dbg !1733
  %372 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @removal_bulk_remove_configfiles.removevb, i32 0, i32 2), align 8, !dbg !1734
  call void (i32, i8*, ...) @debug(i32 128, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.71, i32 0, i32 0), i8* %372), !dbg !1735
  %373 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @removal_bulk_remove_configfiles.removevb, i32 0, i32 2), align 8, !dbg !1736
  %374 = call i32 @unlink(i8* %373) #9, !dbg !1738
  %375 = icmp ne i32 %374, 0, !dbg !1738
  br i1 %375, label %376, label %390, !dbg !1739

; <label>:376:                                    ; preds = %364
  %377 = call i32* @__errno_location() #1, !dbg !1740
  %378 = load i32, i32* %377, align 4, !dbg !1742
  %379 = icmp ne i32 %378, 2, !dbg !1743
  br i1 %379, label %380, label %390, !dbg !1744

; <label>:380:                                    ; preds = %376
  %381 = call i32* @__errno_location() #1, !dbg !1745
  %382 = load i32, i32* %381, align 4, !dbg !1747
  %383 = icmp ne i32 %382, 20, !dbg !1748
  br i1 %383, label %384, label %390, !dbg !1749

; <label>:384:                                    ; preds = %380
  %385 = call i8* @gettext(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.72, i32 0, i32 0)) #9, !dbg !1750
  %386 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @removal_bulk_remove_configfiles.removevb, i32 0, i32 2), align 8, !dbg !1751
  %387 = load %struct.conffile*, %struct.conffile** %7, align 8, !dbg !1752
  %388 = getelementptr inbounds %struct.conffile, %struct.conffile* %387, i32 0, i32 1, !dbg !1753
  %389 = load i8*, i8** %388, align 8, !dbg !1753
  call void (i8*, ...) @ohshite(i8* %385, i8* %386, i8* %389) #10, !dbg !1754
  unreachable, !dbg !1755

; <label>:390:                                    ; preds = %380, %376, %364
  br label %254, !dbg !1756, !llvm.loop !1725

; <label>:391:                                    ; preds = %254
  call void @pop_cleanup(i32 1), !dbg !1757
  br label %392, !dbg !1758

; <label>:392:                                    ; preds = %391, %230, %205, %168
  %393 = load %struct.conffile*, %struct.conffile** %7, align 8, !dbg !1759
  %394 = getelementptr inbounds %struct.conffile, %struct.conffile* %393, i32 0, i32 0, !dbg !1761
  %395 = load %struct.conffile*, %struct.conffile** %394, align 8, !dbg !1761
  store %struct.conffile* %395, %struct.conffile** %7, align 8, !dbg !1762
  br label %138, !dbg !1763, !llvm.loop !1764

; <label>:396:                                    ; preds = %138
  %397 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1766
  %398 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1767
  %399 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %398, i32 0, i32 9, !dbg !1768
  %400 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1769
  %401 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %400, i32 0, i32 16, !dbg !1770
  %402 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %401, align 8, !dbg !1770
  call void @write_filelist_except(%struct.pkginfo* %397, %struct.pkgbin* %399, %struct.fsys_namenode_list* %402, i32 4), !dbg !1771
  %403 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1772
  %404 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %403, i32 0, i32 9, !dbg !1773
  %405 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %404, i32 0, i32 12, !dbg !1774
  store %struct.conffile* null, %struct.conffile** %405, align 8, !dbg !1775
  %406 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1776
  call void @modstatdb_note(%struct.pkginfo* %406), !dbg !1777
  %407 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1778
  %408 = call i32 (%struct.pkginfo*, i8*, i8*, ...) @maintscript_installed(%struct.pkginfo* %407, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i32 0, i32 0), i8* null), !dbg !1779
  ret void, !dbg !1780
}

; Function Attrs: nounwind uwtable
define internal void @removal_bulk_remove_leftover_dirs(%struct.pkginfo*) #0 !dbg !481 {
  %2 = alloca %struct.pkginfo*, align 8
  %3 = alloca %struct.fsys_hash_rev_iter, align 8
  %4 = alloca %struct.fsys_namenode_list*, align 8
  %5 = alloca %struct.fsys_namenode*, align 8
  %6 = alloca %struct.stat, align 8
  %7 = alloca %struct.fsys_namenode*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %2, metadata !1781, metadata !486), !dbg !1782
  call void @llvm.dbg.declare(metadata %struct.fsys_hash_rev_iter* %3, metadata !1783, metadata !486), !dbg !1784
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode_list** %4, metadata !1785, metadata !486), !dbg !1786
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %5, metadata !1787, metadata !486), !dbg !1788
  call void @llvm.dbg.declare(metadata %struct.stat* %6, metadata !1789, metadata !486), !dbg !1790
  %8 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1791
  call void @ensure_packagefiles_available(%struct.pkginfo* %8), !dbg !1792
  %9 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1793
  call void @modstatdb_note(%struct.pkginfo* %9), !dbg !1794
  call void @push_checkpoint(i32 -3, i32 1), !dbg !1795
  %10 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1796
  %11 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %10, i32 0, i32 16, !dbg !1797
  %12 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %11, align 8, !dbg !1797
  call void @fsys_hash_rev_iter_init(%struct.fsys_hash_rev_iter* %3, %struct.fsys_namenode_list* %12), !dbg !1798
  store %struct.fsys_namenode_list* null, %struct.fsys_namenode_list** %4, align 8, !dbg !1799
  br label %13, !dbg !1800

; <label>:13:                                     ; preds = %154, %153, %118, %102, %93, %74, %67, %61, %28, %1
  %14 = call %struct.fsys_namenode* @fsys_hash_rev_iter_next(%struct.fsys_hash_rev_iter* %3), !dbg !1801
  store %struct.fsys_namenode* %14, %struct.fsys_namenode** %5, align 8, !dbg !1803
  %15 = icmp ne %struct.fsys_namenode* %14, null, !dbg !1804
  br i1 %15, label %16, label %156, !dbg !1804

; <label>:16:                                     ; preds = %13
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %7, metadata !1805, metadata !486), !dbg !1807
  %17 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !1808
  %18 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %17, i32 0, i32 1, !dbg !1809
  %19 = load i8*, i8** %18, align 8, !dbg !1809
  %20 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !1810
  %21 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %20, i32 0, i32 6, !dbg !1811
  %22 = load i32, i32* %21, align 8, !dbg !1811
  call void (i32, i8*, ...) @debug(i32 8, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i32 0, i32 0), i8* %19, i32 %22), !dbg !1812
  %23 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !1813
  %24 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %23, i32 0, i32 6, !dbg !1815
  %25 = load i32, i32* %24, align 8, !dbg !1815
  %26 = and i32 %25, 4, !dbg !1816
  %27 = icmp ne i32 %26, 0, !dbg !1816
  br i1 %27, label %28, label %32, !dbg !1817

; <label>:28:                                     ; preds = %16
  %29 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !1818
  %30 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %29, i32 0, i32 1, !dbg !1820
  %31 = load i8*, i8** %30, align 8, !dbg !1820
  call void (i32, i8*, ...) @debug(i32 64, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.73, i32 0, i32 0), i8* %31), !dbg !1821
  br label %13, !dbg !1822, !llvm.loop !1823

; <label>:32:                                     ; preds = %16
  %33 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !1824
  %34 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1825
  %35 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1826
  %36 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %35, i32 0, i32 9, !dbg !1827
  %37 = call %struct.fsys_namenode* @namenodetouse(%struct.fsys_namenode* %33, %struct.pkginfo* %34, %struct.pkgbin* %36), !dbg !1828
  store %struct.fsys_namenode* %37, %struct.fsys_namenode** %7, align 8, !dbg !1829
  call void @varbuf_reset(%struct.varbuf* @removal_bulk_remove_leftover_dirs.fnvb), !dbg !1830
  %38 = load i8*, i8** @instdir, align 8, !dbg !1831
  %39 = load i8*, i8** @instdir, align 8, !dbg !1832
  %40 = call i64 @strlen(i8* %39) #11, !dbg !1833
  call void @varbuf_add_buf(%struct.varbuf* @removal_bulk_remove_leftover_dirs.fnvb, i8* %38, i64 %40), !dbg !1834
  %41 = load %struct.fsys_namenode*, %struct.fsys_namenode** %7, align 8, !dbg !1836
  %42 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %41, i32 0, i32 1, !dbg !1837
  %43 = load i8*, i8** %42, align 8, !dbg !1837
  %44 = load %struct.fsys_namenode*, %struct.fsys_namenode** %7, align 8, !dbg !1838
  %45 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %44, i32 0, i32 1, !dbg !1839
  %46 = load i8*, i8** %45, align 8, !dbg !1839
  %47 = call i64 @strlen(i8* %46) #11, !dbg !1840
  call void @varbuf_add_buf(%struct.varbuf* @removal_bulk_remove_leftover_dirs.fnvb, i8* %43, i64 %47), !dbg !1841
  call void @varbuf_end_str(%struct.varbuf* @removal_bulk_remove_leftover_dirs.fnvb), !dbg !1842
  %48 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @removal_bulk_remove_leftover_dirs.fnvb, i32 0, i32 2), align 8, !dbg !1843
  %49 = call i32 @stat(i8* %48, %struct.stat* %6) #9, !dbg !1845
  %50 = icmp ne i32 %49, 0, !dbg !1845
  br i1 %50, label %78, label %51, !dbg !1846

; <label>:51:                                     ; preds = %32
  %52 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 3, !dbg !1847
  %53 = load i32, i32* %52, align 8, !dbg !1847
  %54 = and i32 %53, 61440, !dbg !1849
  %55 = icmp eq i32 %54, 16384, !dbg !1850
  br i1 %55, label %56, label %78, !dbg !1851

; <label>:56:                                     ; preds = %51
  call void (i32, i8*, ...) @debug(i32 64, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.28, i32 0, i32 0)), !dbg !1852
  %57 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !1854
  %58 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1856
  %59 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %4, align 8, !dbg !1857
  %60 = call zeroext i1 @dir_is_used_by_pkg(%struct.fsys_namenode* %57, %struct.pkginfo* %58, %struct.fsys_namenode_list* %59), !dbg !1858
  br i1 %60, label %61, label %63, !dbg !1859

; <label>:61:                                     ; preds = %56
  %62 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !1860
  call void @push_leftover(%struct.fsys_namenode_list** %4, %struct.fsys_namenode* %62), !dbg !1862
  br label %13, !dbg !1863, !llvm.loop !1823

; <label>:63:                                     ; preds = %56
  %64 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !1864
  %65 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1866
  %66 = call zeroext i1 @dir_is_used_by_others(%struct.fsys_namenode* %64, %struct.pkginfo* %65), !dbg !1867
  br i1 %66, label %67, label %68, !dbg !1868

; <label>:67:                                     ; preds = %63
  br label %13, !dbg !1869, !llvm.loop !1823

; <label>:68:                                     ; preds = %63
  %69 = load %struct.fsys_namenode*, %struct.fsys_namenode** %7, align 8, !dbg !1870
  %70 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %69, i32 0, i32 1, !dbg !1872
  %71 = load i8*, i8** %70, align 8, !dbg !1872
  %72 = call i32 @strcmp(i8* %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0)) #11, !dbg !1873
  %73 = icmp eq i32 %72, 0, !dbg !1874
  br i1 %73, label %74, label %77, !dbg !1875

; <label>:74:                                     ; preds = %68
  %75 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @removal_bulk_remove_leftover_dirs.fnvb, i32 0, i32 2), align 8, !dbg !1876
  call void (i32, i8*, ...) @debug(i32 64, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.30, i32 0, i32 0), i8* %75), !dbg !1878
  %76 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !1879
  call void @push_leftover(%struct.fsys_namenode_list** %4, %struct.fsys_namenode* %76), !dbg !1880
  br label %13, !dbg !1881, !llvm.loop !1823

; <label>:77:                                     ; preds = %68
  br label %78, !dbg !1882

; <label>:78:                                     ; preds = %77, %51, %32
  %79 = load %struct.fsys_namenode*, %struct.fsys_namenode** %7, align 8, !dbg !1883
  %80 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1884
  call void @trig_path_activate(%struct.fsys_namenode* %79, %struct.pkginfo* %80), !dbg !1885
  %81 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @removal_bulk_remove_leftover_dirs.fnvb, i32 0, i32 2), align 8, !dbg !1886
  call void (i32, i8*, ...) @debug(i32 64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.35, i32 0, i32 0), i8* %81), !dbg !1887
  %82 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @removal_bulk_remove_leftover_dirs.fnvb, i32 0, i32 2), align 8, !dbg !1888
  %83 = call i32 @rmdir(i8* %82) #9, !dbg !1890
  %84 = icmp ne i32 %83, 0, !dbg !1890
  br i1 %84, label %85, label %93, !dbg !1891

; <label>:85:                                     ; preds = %78
  %86 = call i32* @__errno_location() #1, !dbg !1892
  %87 = load i32, i32* %86, align 4, !dbg !1894
  %88 = icmp eq i32 %87, 2, !dbg !1895
  br i1 %88, label %93, label %89, !dbg !1896

; <label>:89:                                     ; preds = %85
  %90 = call i32* @__errno_location() #1, !dbg !1897
  %91 = load i32, i32* %90, align 4, !dbg !1899
  %92 = icmp eq i32 %91, 40, !dbg !1900
  br i1 %92, label %93, label %94, !dbg !1901

; <label>:93:                                     ; preds = %89, %85, %78
  br label %13, !dbg !1902, !llvm.loop !1823

; <label>:94:                                     ; preds = %89
  %95 = call i32* @__errno_location() #1, !dbg !1904
  %96 = load i32, i32* %95, align 4, !dbg !1906
  %97 = icmp eq i32 %96, 39, !dbg !1907
  br i1 %97, label %102, label %98, !dbg !1908

; <label>:98:                                     ; preds = %94
  %99 = call i32* @__errno_location() #1, !dbg !1909
  %100 = load i32, i32* %99, align 4, !dbg !1911
  %101 = icmp eq i32 %100, 17, !dbg !1912
  br i1 %101, label %102, label %110, !dbg !1913

; <label>:102:                                    ; preds = %98, %94
  %103 = call i8* @gettext(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.74, i32 0, i32 0)) #9, !dbg !1914
  %104 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1916
  %105 = call i8* @pkg_name(%struct.pkginfo* %104, i32 1), !dbg !1917
  %106 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !1918
  %107 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %106, i32 0, i32 1, !dbg !1919
  %108 = load i8*, i8** %107, align 8, !dbg !1919
  call void (i8*, ...) @warning(i8* %103, i8* %105, i8* %108), !dbg !1920
  %109 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !1922
  call void @push_leftover(%struct.fsys_namenode_list** %4, %struct.fsys_namenode* %109), !dbg !1923
  br label %13, !dbg !1924, !llvm.loop !1823

; <label>:110:                                    ; preds = %98
  %111 = call i32* @__errno_location() #1, !dbg !1925
  %112 = load i32, i32* %111, align 4, !dbg !1927
  %113 = icmp eq i32 %112, 16, !dbg !1928
  br i1 %113, label %118, label %114, !dbg !1929

; <label>:114:                                    ; preds = %110
  %115 = call i32* @__errno_location() #1, !dbg !1930
  %116 = load i32, i32* %115, align 4, !dbg !1932
  %117 = icmp eq i32 %116, 1, !dbg !1933
  br i1 %117, label %118, label %129, !dbg !1934

; <label>:118:                                    ; preds = %114, %110
  %119 = call i8* @gettext(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.37, i32 0, i32 0)) #9, !dbg !1935
  %120 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1937
  %121 = call i8* @pkg_name(%struct.pkginfo* %120, i32 1), !dbg !1938
  %122 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !1939
  %123 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %122, i32 0, i32 1, !dbg !1940
  %124 = load i8*, i8** %123, align 8, !dbg !1940
  %125 = call i32* @__errno_location() #1, !dbg !1941
  %126 = load i32, i32* %125, align 4, !dbg !1943
  %127 = call i8* @strerror(i32 %126) #9, !dbg !1944
  call void (i8*, ...) @warning(i8* %119, i8* %121, i8* %124, i8* %127), !dbg !1946
  %128 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !1947
  call void @push_leftover(%struct.fsys_namenode_list** %4, %struct.fsys_namenode* %128), !dbg !1948
  br label %13, !dbg !1949, !llvm.loop !1823

; <label>:129:                                    ; preds = %114
  br label %130

; <label>:130:                                    ; preds = %129
  %131 = call i32* @__errno_location() #1, !dbg !1950
  %132 = load i32, i32* %131, align 4, !dbg !1952
  %133 = icmp ne i32 %132, 20, !dbg !1953
  br i1 %133, label %134, label %137, !dbg !1954

; <label>:134:                                    ; preds = %130
  %135 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.38, i32 0, i32 0)) #9, !dbg !1955
  %136 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @removal_bulk_remove_leftover_dirs.fnvb, i32 0, i32 2), align 8, !dbg !1956
  call void (i8*, ...) @ohshite(i8* %135, i8* %136) #10, !dbg !1957
  unreachable, !dbg !1959

; <label>:137:                                    ; preds = %130
  %138 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @removal_bulk_remove_leftover_dirs.fnvb, i32 0, i32 2), align 8, !dbg !1960
  %139 = call i32 @lstat(i8* %138, %struct.stat* %6) #9, !dbg !1962
  %140 = icmp eq i32 %139, 0, !dbg !1963
  br i1 %140, label %141, label %154, !dbg !1964

; <label>:141:                                    ; preds = %137
  %142 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 3, !dbg !1965
  %143 = load i32, i32* %142, align 8, !dbg !1965
  %144 = and i32 %143, 61440, !dbg !1967
  %145 = icmp eq i32 %144, 40960, !dbg !1968
  br i1 %145, label %146, label %154, !dbg !1969

; <label>:146:                                    ; preds = %141
  call void (i32, i8*, ...) @debug(i32 64, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.75, i32 0, i32 0)), !dbg !1970
  %147 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @removal_bulk_remove_leftover_dirs.fnvb, i32 0, i32 2), align 8, !dbg !1972
  %148 = call i32 @unlink(i8* %147) #9, !dbg !1974
  %149 = icmp ne i32 %148, 0, !dbg !1974
  br i1 %149, label %150, label %153, !dbg !1975

; <label>:150:                                    ; preds = %146
  %151 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.38, i32 0, i32 0)) #9, !dbg !1976
  %152 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @removal_bulk_remove_leftover_dirs.fnvb, i32 0, i32 2), align 8, !dbg !1977
  call void (i8*, ...) @ohshite(i8* %151, i8* %152) #10, !dbg !1978
  unreachable, !dbg !1980

; <label>:153:                                    ; preds = %146
  br label %13, !dbg !1981, !llvm.loop !1823

; <label>:154:                                    ; preds = %141, %137
  %155 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !1982
  call void @push_leftover(%struct.fsys_namenode_list** %4, %struct.fsys_namenode* %155), !dbg !1983
  br label %13, !dbg !1984, !llvm.loop !1823

; <label>:156:                                    ; preds = %13
  %157 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1985
  %158 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1986
  %159 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %158, i32 0, i32 9, !dbg !1987
  %160 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %4, align 8, !dbg !1988
  call void @write_filelist_except(%struct.pkginfo* %157, %struct.pkgbin* %159, %struct.fsys_namenode_list* %160, i32 0), !dbg !1989
  %161 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1990
  call void @modstatdb_note(%struct.pkginfo* %161), !dbg !1991
  call void @push_checkpoint(i32 -3, i32 1), !dbg !1992
  ret void, !dbg !1993
}

declare i8* @pkg_infodb_get_file(%struct.pkginfo*, %struct.pkgbin*, i8*) #3

; Function Attrs: nounwind
declare i32 @unlink(i8*) #4

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

; Function Attrs: noreturn
declare void @ohshite(i8*, ...) #5

declare void @pkgbin_blank(%struct.pkgbin*) #3

declare void @pkg_reset_eflags(%struct.pkginfo*) #3

declare zeroext i1 @ignore_depends(%struct.pkginfo*) #3

declare zeroext i1 @findbreakcycle(%struct.pkginfo*) #3

declare void @varbuf_snapshot(%struct.varbuf*, %struct.varbuf_state*) #3

declare i32 @dependencies_ok(%struct.pkginfo*, %struct.pkginfo*, %struct.varbuf*) #3

declare void @varbuf_rollback(%struct.varbuf*, %struct.varbuf_state*) #3

declare void @push_checkpoint(i32, i32) #3

declare void @fsys_hash_rev_iter_init(%struct.fsys_hash_rev_iter*, %struct.fsys_namenode_list*) #3

declare %struct.fsys_namenode* @fsys_hash_rev_iter_next(%struct.fsys_hash_rev_iter*) #3

declare %struct.fsys_namenode* @namenodetouse(%struct.fsys_namenode*, %struct.pkginfo*, %struct.pkgbin*) #3

declare void @varbuf_reset(%struct.varbuf*) #3

declare void @varbuf_add_buf(%struct.varbuf*, i8*, i64) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #7

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #4

; Function Attrs: nounwind uwtable
define internal zeroext i1 @removal_bulk_file_is_shared(%struct.pkginfo*, %struct.fsys_namenode*) #0 !dbg !1994 {
  %3 = alloca i1, align 1
  %4 = alloca %struct.pkginfo*, align 8
  %5 = alloca %struct.fsys_namenode*, align 8
  %6 = alloca %struct.fsys_node_pkgs_iter*, align 8
  %7 = alloca %struct.pkginfo*, align 8
  %8 = alloca i8, align 1
  store %struct.pkginfo* %0, %struct.pkginfo** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %4, metadata !1997, metadata !486), !dbg !1998
  store %struct.fsys_namenode* %1, %struct.fsys_namenode** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %5, metadata !1999, metadata !486), !dbg !2000
  call void @llvm.dbg.declare(metadata %struct.fsys_node_pkgs_iter** %6, metadata !2001, metadata !486), !dbg !2004
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %7, metadata !2005, metadata !486), !dbg !2006
  call void @llvm.dbg.declare(metadata i8* %8, metadata !2007, metadata !486), !dbg !2008
  store i8 0, i8* %8, align 1, !dbg !2008
  %9 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !2009
  %10 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %9, i32 0, i32 0, !dbg !2011
  %11 = load %struct.pkgset*, %struct.pkgset** %10, align 8, !dbg !2011
  %12 = call i32 @pkgset_installed_instances(%struct.pkgset* %11), !dbg !2012
  %13 = icmp sle i32 %12, 1, !dbg !2013
  br i1 %13, label %14, label %15, !dbg !2014

; <label>:14:                                     ; preds = %2
  store i1 false, i1* %3, align 1, !dbg !2015
  br label %43, !dbg !2015

; <label>:15:                                     ; preds = %2
  %16 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !2016
  %17 = call %struct.fsys_node_pkgs_iter* @fsys_node_pkgs_iter_new(%struct.fsys_namenode* %16), !dbg !2017
  store %struct.fsys_node_pkgs_iter* %17, %struct.fsys_node_pkgs_iter** %6, align 8, !dbg !2018
  br label %18, !dbg !2019

; <label>:18:                                     ; preds = %35, %26, %15
  %19 = load %struct.fsys_node_pkgs_iter*, %struct.fsys_node_pkgs_iter** %6, align 8, !dbg !2020
  %20 = call %struct.pkginfo* @fsys_node_pkgs_iter_next(%struct.fsys_node_pkgs_iter* %19), !dbg !2022
  store %struct.pkginfo* %20, %struct.pkginfo** %7, align 8, !dbg !2023
  %21 = icmp ne %struct.pkginfo* %20, null, !dbg !2024
  br i1 %21, label %22, label %39, !dbg !2024

; <label>:22:                                     ; preds = %18
  %23 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !2025
  %24 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !2028
  %25 = icmp eq %struct.pkginfo* %23, %24, !dbg !2029
  br i1 %25, label %26, label %27, !dbg !2030

; <label>:26:                                     ; preds = %22
  br label %18, !dbg !2031, !llvm.loop !2032

; <label>:27:                                     ; preds = %22
  %28 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !2033
  %29 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %28, i32 0, i32 0, !dbg !2035
  %30 = load %struct.pkgset*, %struct.pkgset** %29, align 8, !dbg !2035
  %31 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !2036
  %32 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %31, i32 0, i32 0, !dbg !2037
  %33 = load %struct.pkgset*, %struct.pkgset** %32, align 8, !dbg !2037
  %34 = icmp ne %struct.pkgset* %30, %33, !dbg !2038
  br i1 %34, label %35, label %36, !dbg !2039

; <label>:35:                                     ; preds = %27
  br label %18, !dbg !2040, !llvm.loop !2032

; <label>:36:                                     ; preds = %27
  %37 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !2041
  %38 = call i8* @pkg_name(%struct.pkginfo* %37, i32 3), !dbg !2042
  call void (i32, i8*, ...) @debug(i32 64, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.44, i32 0, i32 0), i8* %38), !dbg !2043
  store i8 1, i8* %8, align 1, !dbg !2044
  br label %39, !dbg !2045

; <label>:39:                                     ; preds = %36, %18
  %40 = load %struct.fsys_node_pkgs_iter*, %struct.fsys_node_pkgs_iter** %6, align 8, !dbg !2046
  call void @fsys_node_pkgs_iter_free(%struct.fsys_node_pkgs_iter* %40), !dbg !2047
  %41 = load i8, i8* %8, align 1, !dbg !2048
  %42 = trunc i8 %41 to i1, !dbg !2048
  store i1 %42, i1* %3, align 1, !dbg !2049
  br label %43, !dbg !2049

; <label>:43:                                     ; preds = %39, %14
  %44 = load i1, i1* %3, align 1, !dbg !2050
  ret i1 %44, !dbg !2050
}

; Function Attrs: nounwind uwtable
define internal void @push_leftover(%struct.fsys_namenode_list**, %struct.fsys_namenode*) #0 !dbg !2051 {
  %3 = alloca %struct.fsys_namenode_list**, align 8
  %4 = alloca %struct.fsys_namenode*, align 8
  %5 = alloca %struct.fsys_namenode_list*, align 8
  store %struct.fsys_namenode_list** %0, %struct.fsys_namenode_list*** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode_list*** %3, metadata !2055, metadata !486), !dbg !2056
  store %struct.fsys_namenode* %1, %struct.fsys_namenode** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %4, metadata !2057, metadata !486), !dbg !2058
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode_list** %5, metadata !2059, metadata !486), !dbg !2060
  %6 = call i8* @nfmalloc(i64 16), !dbg !2061
  %7 = bitcast i8* %6 to %struct.fsys_namenode_list*, !dbg !2061
  store %struct.fsys_namenode_list* %7, %struct.fsys_namenode_list** %5, align 8, !dbg !2062
  %8 = load %struct.fsys_namenode_list**, %struct.fsys_namenode_list*** %3, align 8, !dbg !2063
  %9 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %8, align 8, !dbg !2064
  %10 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %5, align 8, !dbg !2065
  %11 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %10, i32 0, i32 0, !dbg !2066
  store %struct.fsys_namenode_list* %9, %struct.fsys_namenode_list** %11, align 8, !dbg !2067
  %12 = load %struct.fsys_namenode*, %struct.fsys_namenode** %4, align 8, !dbg !2068
  %13 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %5, align 8, !dbg !2069
  %14 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %13, i32 0, i32 1, !dbg !2070
  store %struct.fsys_namenode* %12, %struct.fsys_namenode** %14, align 8, !dbg !2071
  %15 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %5, align 8, !dbg !2072
  %16 = load %struct.fsys_namenode_list**, %struct.fsys_namenode_list*** %3, align 8, !dbg !2073
  store %struct.fsys_namenode_list* %15, %struct.fsys_namenode_list** %16, align 8, !dbg !2074
  ret void, !dbg !2075
}

declare zeroext i1 @dir_has_conffiles(%struct.fsys_namenode*, %struct.pkginfo*) #3

declare zeroext i1 @dir_is_used_by_pkg(%struct.fsys_namenode*, %struct.pkginfo*, %struct.fsys_namenode_list*) #3

declare zeroext i1 @dir_is_used_by_others(%struct.fsys_namenode*, %struct.pkginfo*) #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #7

declare void @trig_path_activate(%struct.fsys_namenode*, %struct.pkginfo*) #3

declare void @path_remove_tree(i8*) #3

; Function Attrs: nounwind
declare i32 @rmdir(i8*) #4

; Function Attrs: nounwind
declare i8* @strerror(i32) #4

declare i32 @secure_unlink(i8*) #3

declare void @write_filelist_except(%struct.pkginfo*, %struct.pkgbin*, %struct.fsys_namenode_list*, i32) #3

declare void @trig_parse_ci(i8*, void (i8*, %struct.pkginfo*, %struct.pkgbin*, i32)*, void (i8*, %struct.pkginfo*, %struct.pkgbin*, i32)*, %struct.pkginfo*, %struct.pkgbin*) #3

declare void @trig_cicb_interest_delete(i8*, %struct.pkginfo*, %struct.pkgbin*, i32) #3

declare void @trig_file_interests_save() #3

declare void @pkg_infodb_foreach(%struct.pkginfo*, %struct.pkgbin*, void (i8*, i8*)*) #3

; Function Attrs: nounwind uwtable
define internal void @removal_bulk_remove_file(i8*, i8*) #0 !dbg !2076 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2079, metadata !486), !dbg !2080
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2081, metadata !486), !dbg !2082
  %5 = load i8*, i8** %4, align 8, !dbg !2083
  %6 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0)) #11, !dbg !2085
  %7 = icmp eq i32 %6, 0, !dbg !2086
  br i1 %7, label %12, label %8, !dbg !2087

; <label>:8:                                      ; preds = %2
  %9 = load i8*, i8** %4, align 8, !dbg !2088
  %10 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0)) #11, !dbg !2089
  %11 = icmp eq i32 %10, 0, !dbg !2090
  br i1 %11, label %12, label %13, !dbg !2091

; <label>:12:                                     ; preds = %8, %2
  br label %22, !dbg !2093

; <label>:13:                                     ; preds = %8
  call void (i32, i8*, ...) @debug(i32 1024, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.45, i32 0, i32 0)), !dbg !2094
  %14 = load i8*, i8** %3, align 8, !dbg !2095
  %15 = call i32 @unlink(i8* %14) #9, !dbg !2097
  %16 = icmp ne i32 %15, 0, !dbg !2097
  br i1 %16, label %17, label %20, !dbg !2098

; <label>:17:                                     ; preds = %13
  %18 = call i8* @gettext(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.46, i32 0, i32 0)) #9, !dbg !2099
  %19 = load i8*, i8** %3, align 8, !dbg !2100
  call void (i8*, ...) @ohshite(i8* %18, i8* %19) #10, !dbg !2101
  unreachable, !dbg !2103

; <label>:20:                                     ; preds = %13
  %21 = load i8*, i8** %3, align 8, !dbg !2104
  call void (i32, i8*, ...) @debug(i32 2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.47, i32 0, i32 0), i8* %21), !dbg !2105
  br label %22, !dbg !2106

; <label>:22:                                     ; preds = %20, %12
  ret void, !dbg !2107
}

declare void @dir_sync_path(i8*) #3

declare i8* @pkg_infodb_get_dir() #3

declare i32 @pkgset_installed_instances(%struct.pkgset*) #3

declare %struct.fsys_node_pkgs_iter* @fsys_node_pkgs_iter_new(%struct.fsys_namenode*) #3

declare %struct.pkginfo* @fsys_node_pkgs_iter_next(%struct.fsys_node_pkgs_iter*) #3

declare void @fsys_node_pkgs_iter_free(%struct.fsys_node_pkgs_iter*) #3

declare i8* @nfmalloc(i64) #3

declare void @ensure_packagefiles_available(%struct.pkginfo*) #3

declare i32 @conffderef(%struct.pkginfo*, %struct.varbuf*, i8*) #3

declare %struct.fsys_namenode* @fsys_hash_find_node(i8*, i32) #3

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #7

declare void @varbuf_add_char(%struct.varbuf*, i32) #3

declare %struct.__dirstream* @opendir(i8*) #3

declare void @cu_closedir(i32, i8**) #3

declare %struct.dirent* @readdir(%struct.__dirstream*) #3

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #7

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @c_isdigit(i32) #8 !dbg !2108 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2111, metadata !486), !dbg !2112
  %3 = load i32, i32* %2, align 4, !dbg !2113
  %4 = call zeroext i1 @c_isbits(i32 %3, i32 32), !dbg !2114
  ret i1 %4, !dbg !2115
}

declare void @pop_cleanup(i32) #3

declare zeroext i1 @c_isbits(i32, i32) #3

; Function Attrs: nounwind
declare i32 @lstat(i8*, %struct.stat*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { argmemonly nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind }
attributes #10 = { noreturn }
attributes #11 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!482, !483}
!llvm.ident = !{!484}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !237, globals: !239)
!1 = !DIFile(filename: "[inter]src--remove.o.i", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!2 = !{!3, !15, !26, !35, !43, !47, !57, !67, !73, !81, !86, !91, !104, !109, !125, !131, !176, !207, !212, !218, !226}
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
!104 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dep_check", file: !74, line: 199, size: 32, align: 32, elements: !105)
!105 = !{!106, !107, !108}
!106 = !DIEnumerator(name: "DEP_CHECK_HALT", value: 0)
!107 = !DIEnumerator(name: "DEP_CHECK_DEFER", value: 1)
!108 = !DIEnumerator(name: "DEP_CHECK_OK", value: 2)
!109 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "debugflags", file: !110, line: 41, size: 32, align: 32, elements: !111)
!110 = !DIFile(filename: "../lib/dpkg/debug.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!111 = !{!112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124}
!112 = !DIEnumerator(name: "dbg_general", value: 1)
!113 = !DIEnumerator(name: "dbg_scripts", value: 2)
!114 = !DIEnumerator(name: "dbg_eachfile", value: 8)
!115 = !DIEnumerator(name: "dbg_eachfiledetail", value: 64)
!116 = !DIEnumerator(name: "dbg_conff", value: 16)
!117 = !DIEnumerator(name: "dbg_conffdetail", value: 128)
!118 = !DIEnumerator(name: "dbg_depcon", value: 32)
!119 = !DIEnumerator(name: "dbg_depcondetail", value: 256)
!120 = !DIEnumerator(name: "dbg_veryverbose", value: 512)
!121 = !DIEnumerator(name: "dbg_stupidlyverbose", value: 1024)
!122 = !DIEnumerator(name: "dbg_triggers", value: 4096)
!123 = !DIEnumerator(name: "dbg_triggersdetail", value: 8192)
!124 = !DIEnumerator(name: "dbg_triggersstupid", value: 16384)
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkg_name_arch_when", file: !4, line: 396, size: 32, align: 32, elements: !126)
!126 = !{!127, !128, !129, !130}
!127 = !DIEnumerator(name: "pnaw_never", value: 0)
!128 = !DIEnumerator(name: "pnaw_nonambig", value: 1)
!129 = !DIEnumerator(name: "pnaw_foreign", value: 2)
!130 = !DIEnumerator(name: "pnaw_always", value: 3)
!131 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "action", file: !74, line: 68, size: 32, align: 32, elements: !132)
!132 = !{!133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175}
!133 = !DIEnumerator(name: "act_unset", value: 0)
!134 = !DIEnumerator(name: "act_unpack", value: 1)
!135 = !DIEnumerator(name: "act_configure", value: 2)
!136 = !DIEnumerator(name: "act_install", value: 3)
!137 = !DIEnumerator(name: "act_triggers", value: 4)
!138 = !DIEnumerator(name: "act_remove", value: 5)
!139 = !DIEnumerator(name: "act_purge", value: 6)
!140 = !DIEnumerator(name: "act_verify", value: 7)
!141 = !DIEnumerator(name: "act_commandfd", value: 8)
!142 = !DIEnumerator(name: "act_status", value: 9)
!143 = !DIEnumerator(name: "act_listpackages", value: 10)
!144 = !DIEnumerator(name: "act_listfiles", value: 11)
!145 = !DIEnumerator(name: "act_searchfiles", value: 12)
!146 = !DIEnumerator(name: "act_controlpath", value: 13)
!147 = !DIEnumerator(name: "act_controllist", value: 14)
!148 = !DIEnumerator(name: "act_controlshow", value: 15)
!149 = !DIEnumerator(name: "act_cmpversions", value: 16)
!150 = !DIEnumerator(name: "act_arch_add", value: 17)
!151 = !DIEnumerator(name: "act_arch_remove", value: 18)
!152 = !DIEnumerator(name: "act_printarch", value: 19)
!153 = !DIEnumerator(name: "act_printforeignarches", value: 20)
!154 = !DIEnumerator(name: "act_assertpredep", value: 21)
!155 = !DIEnumerator(name: "act_assertepoch", value: 22)
!156 = !DIEnumerator(name: "act_assertlongfilenames", value: 23)
!157 = !DIEnumerator(name: "act_assertmulticonrep", value: 24)
!158 = !DIEnumerator(name: "act_assertmultiarch", value: 25)
!159 = !DIEnumerator(name: "act_assertverprovides", value: 26)
!160 = !DIEnumerator(name: "act_validate_pkgname", value: 27)
!161 = !DIEnumerator(name: "act_validate_trigname", value: 28)
!162 = !DIEnumerator(name: "act_validate_archname", value: 29)
!163 = !DIEnumerator(name: "act_validate_version", value: 30)
!164 = !DIEnumerator(name: "act_audit", value: 31)
!165 = !DIEnumerator(name: "act_unpackchk", value: 32)
!166 = !DIEnumerator(name: "act_predeppackage", value: 33)
!167 = !DIEnumerator(name: "act_getselections", value: 34)
!168 = !DIEnumerator(name: "act_setselections", value: 35)
!169 = !DIEnumerator(name: "act_clearselections", value: 36)
!170 = !DIEnumerator(name: "act_avail", value: 37)
!171 = !DIEnumerator(name: "act_printavail", value: 38)
!172 = !DIEnumerator(name: "act_avclear", value: 39)
!173 = !DIEnumerator(name: "act_avreplace", value: 40)
!174 = !DIEnumerator(name: "act_avmerge", value: 41)
!175 = !DIEnumerator(name: "act_forgetold", value: 42)
!176 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "force_flags", file: !177, line: 28, size: 32, align: 32, elements: !178)
!177 = !DIFile(filename: "force.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!178 = !{!179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206}
!179 = !DIEnumerator(name: "FORCE_ARCHITECTURE", value: 1)
!180 = !DIEnumerator(name: "FORCE_BAD_PATH", value: 2)
!181 = !DIEnumerator(name: "FORCE_BAD_VERIFY", value: 4)
!182 = !DIEnumerator(name: "FORCE_BAD_VERSION", value: 8)
!183 = !DIEnumerator(name: "FORCE_BREAKS", value: 16)
!184 = !DIEnumerator(name: "FORCE_CONFF_ASK", value: 32)
!185 = !DIEnumerator(name: "FORCE_CONFF_DEF", value: 64)
!186 = !DIEnumerator(name: "FORCE_CONFF_MISS", value: 128)
!187 = !DIEnumerator(name: "FORCE_CONFF_NEW", value: 256)
!188 = !DIEnumerator(name: "FORCE_CONFF_OLD", value: 512)
!189 = !DIEnumerator(name: "FORCE_CONFIGURE_ANY", value: 1024)
!190 = !DIEnumerator(name: "FORCE_CONFLICTS", value: 2048)
!191 = !DIEnumerator(name: "FORCE_DEPENDS", value: 4096)
!192 = !DIEnumerator(name: "FORCE_DEPENDS_VERSION", value: 8192)
!193 = !DIEnumerator(name: "FORCE_DOWNGRADE", value: 16384)
!194 = !DIEnumerator(name: "FORCE_HOLD", value: 32768)
!195 = !DIEnumerator(name: "FORCE_NON_ROOT", value: 65536)
!196 = !DIEnumerator(name: "FORCE_OVERWRITE", value: 131072)
!197 = !DIEnumerator(name: "FORCE_OVERWRITE_DIR", value: 262144)
!198 = !DIEnumerator(name: "FORCE_OVERWRITE_DIVERTED", value: 524288)
!199 = !DIEnumerator(name: "FORCE_REMOVE_ESSENTIAL", value: 1048576)
!200 = !DIEnumerator(name: "FORCE_REMOVE_REINSTREQ", value: 2097152)
!201 = !DIEnumerator(name: "FORCE_SCRIPT_CHROOTLESS", value: 4194304)
!202 = !DIEnumerator(name: "FORCE_UNSAFE_IO", value: 8388608)
!203 = !DIEnumerator(name: "FORCE_STATOVERRIDE_ADD", value: 16777216)
!204 = !DIEnumerator(name: "FORCE_STATOVERRIDE_DEL", value: 33554432)
!205 = !DIEnumerator(name: "FORCE_SECURITY_MAC", value: 67108864)
!206 = !DIEnumerator(name: "FORCE_ALL", value: -1)
!207 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "versiondisplayepochwhen", file: !4, line: 388, size: 32, align: 32, elements: !208)
!208 = !{!209, !210, !211}
!209 = !DIEnumerator(name: "vdew_never", value: 0)
!210 = !DIEnumerator(name: "vdew_nonambig", value: 1)
!211 = !DIEnumerator(name: "vdew_always", value: 2)
!212 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !213, line: 41, size: 32, align: 32, elements: !214)
!213 = !DIFile(filename: "../lib/dpkg/ehandle.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!214 = !{!215, !216, !217}
!215 = !DIEnumerator(name: "ehflag_normaltidy", value: 1)
!216 = !DIEnumerator(name: "ehflag_bombout", value: 2)
!217 = !DIEnumerator(name: "ehflag_recursiveerror", value: 4)
!218 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dependtry", file: !74, line: 243, size: 32, align: 32, elements: !219)
!219 = !{!220, !221, !222, !223, !224, !225}
!220 = !DIEnumerator(name: "DEPEND_TRY_NORMAL", value: 1)
!221 = !DIEnumerator(name: "DEPEND_TRY_CYCLES", value: 2)
!222 = !DIEnumerator(name: "DEPEND_TRY_TRIGGERS", value: 3)
!223 = !DIEnumerator(name: "DEPEND_TRY_FORCE_DEPENDS_VERSION", value: 4)
!224 = !DIEnumerator(name: "DEPEND_TRY_FORCE_DEPENDS", value: 5)
!225 = !DIEnumerator(name: "DEPEND_TRY_LAST", value: 6)
!226 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "c_ctype_bit", file: !227, line: 32, size: 32, align: 32, elements: !228)
!227 = !DIFile(filename: "../lib/dpkg/c-ctype.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!228 = !{!229, !230, !231, !232, !233, !234, !235, !236}
!229 = !DIEnumerator(name: "C_CTYPE_BLANK", value: 1)
!230 = !DIEnumerator(name: "C_CTYPE_WHITE", value: 2)
!231 = !DIEnumerator(name: "C_CTYPE_SPACE", value: 4)
!232 = !DIEnumerator(name: "C_CTYPE_UPPER", value: 8)
!233 = !DIEnumerator(name: "C_CTYPE_LOWER", value: 16)
!234 = !DIEnumerator(name: "C_CTYPE_DIGIT", value: 32)
!235 = !DIEnumerator(name: "C_CTYPE_ALPHA", value: 24)
!236 = !DIEnumerator(name: "C_CTYPE_ALNUM", value: 56)
!237 = !{!238}
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!239 = !{!240, !462, !472, !478, !479, !480}
!240 = distinct !DIGlobalVariable(name: "oldpkgstatus", scope: !241, file: !242, line: 190, type: !47, isLocal: true, isDefinition: true, variable: i32* @deferred_remove.oldpkgstatus)
!241 = distinct !DISubprogram(name: "deferred_remove", scope: !242, file: !242, line: 91, type: !243, isLocal: false, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !461)
!242 = !DIFile(filename: "remove.c", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!243 = !DISubroutineType(types: !244)
!244 = !{null, !245}
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64, align: 64)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkginfo", file: !4, line: 195, size: 3072, align: 64, elements: !247)
!247 = !{!248, !300, !301, !302, !303, !304, !305, !306, !307, !308, !338, !339, !355, !364, !380, !381, !387, !455, !459, !460}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !246, file: !4, line: 196, baseType: !249, size: 64, align: 64)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64, align: 64)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgset", file: !4, line: 242, size: 3392, align: 64, elements: !251)
!251 = !{!252, !253, !257, !258, !298}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !250, file: !4, line: 243, baseType: !249, size: 64, align: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !250, file: !4, line: 244, baseType: !254, size: 64, align: 64, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64, align: 64)
!255 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !256)
!256 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !250, file: !4, line: 245, baseType: !246, size: 3072, align: 64, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "depended", scope: !250, file: !4, line: 249, baseType: !259, size: 128, align: 64, offset: 3200)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !250, file: !4, line: 246, size: 128, align: 64, elements: !260)
!260 = !{!261, !297}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !259, file: !4, line: 247, baseType: !262, size: 64, align: 64)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64, align: 64)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "deppossi", file: !4, line: 63, size: 640, align: 64, elements: !264)
!264 = !{!265, !273, !274, !275, !276, !277, !286, !293, !294, !296}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !263, file: !4, line: 64, baseType: !266, size: 64, align: 64)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64, align: 64)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dependency", file: !4, line: 56, size: 256, align: 64, elements: !268)
!268 = !{!269, !270, !271, !272}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !267, file: !4, line: 57, baseType: !245, size: 64, align: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !267, file: !4, line: 58, baseType: !266, size: 64, align: 64, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !267, file: !4, line: 59, baseType: !262, size: 64, align: 64, offset: 128)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !267, file: !4, line: 60, baseType: !3, size: 32, align: 32, offset: 192)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "ed", scope: !263, file: !4, line: 65, baseType: !249, size: 64, align: 64, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !263, file: !4, line: 66, baseType: !262, size: 64, align: 64, offset: 128)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "rev_next", scope: !263, file: !4, line: 66, baseType: !262, size: 64, align: 64, offset: 192)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "rev_prev", scope: !263, file: !4, line: 66, baseType: !262, size: 64, align: 64, offset: 256)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !263, file: !4, line: 67, baseType: !278, size: 64, align: 64, offset: 320)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64, align: 64)
!279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !280)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_arch", file: !16, line: 48, size: 192, align: 64, elements: !281)
!281 = !{!282, !284, !285}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !280, file: !16, line: 49, baseType: !283, size: 64, align: 64)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64, align: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !280, file: !16, line: 50, baseType: !254, size: 64, align: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !280, file: !16, line: 51, baseType: !15, size: 32, align: 32, offset: 128)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !263, file: !4, line: 68, baseType: !287, size: 192, align: 64, offset: 384)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_version", file: !27, line: 42, size: 192, align: 64, elements: !288)
!288 = !{!289, !291, !292}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !287, file: !27, line: 44, baseType: !290, size: 32, align: 32)
!290 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !287, file: !27, line: 46, baseType: !254, size: 64, align: 64, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !287, file: !27, line: 48, baseType: !254, size: 64, align: 64, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "verrel", scope: !263, file: !4, line: 69, baseType: !26, size: 32, align: 32, offset: 576)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "arch_is_implicit", scope: !263, file: !4, line: 70, baseType: !295, size: 8, align: 8, offset: 608)
!295 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "cyclebreak", scope: !263, file: !4, line: 71, baseType: !295, size: 8, align: 8, offset: 616)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !259, file: !4, line: 248, baseType: !262, size: 64, align: 64, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "installed_instances", scope: !250, file: !4, line: 250, baseType: !299, size: 32, align: 32, offset: 3328)
!299 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "arch_next", scope: !246, file: !4, line: 197, baseType: !245, size: 64, align: 64, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "want", scope: !246, file: !4, line: 199, baseType: !35, size: 32, align: 32, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "eflag", scope: !246, file: !4, line: 201, baseType: !43, size: 32, align: 32, offset: 160)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !246, file: !4, line: 202, baseType: !47, size: 32, align: 32, offset: 192)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !246, file: !4, line: 203, baseType: !57, size: 32, align: 32, offset: 224)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "otherpriority", scope: !246, file: !4, line: 204, baseType: !254, size: 64, align: 64, offset: 256)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "section", scope: !246, file: !4, line: 205, baseType: !254, size: 64, align: 64, offset: 320)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "configversion", scope: !246, file: !4, line: 206, baseType: !287, size: 192, align: 64, offset: 384)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !246, file: !4, line: 207, baseType: !309, size: 960, align: 64, offset: 576)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgbin", file: !4, line: 107, size: 960, align: 64, elements: !310)
!310 = !{!311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !331}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "depends", scope: !309, file: !4, line: 108, baseType: !266, size: 64, align: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "essential", scope: !309, file: !4, line: 110, baseType: !295, size: 8, align: 8, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "multiarch", scope: !309, file: !4, line: 111, baseType: !67, size: 32, align: 32, offset: 96)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !309, file: !4, line: 112, baseType: !278, size: 64, align: 64, offset: 128)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "pkgname_archqual", scope: !309, file: !4, line: 115, baseType: !254, size: 64, align: 64, offset: 192)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !309, file: !4, line: 116, baseType: !254, size: 64, align: 64, offset: 256)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "maintainer", scope: !309, file: !4, line: 117, baseType: !254, size: 64, align: 64, offset: 320)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !309, file: !4, line: 118, baseType: !254, size: 64, align: 64, offset: 384)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "installedsize", scope: !309, file: !4, line: 119, baseType: !254, size: 64, align: 64, offset: 448)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !309, file: !4, line: 120, baseType: !254, size: 64, align: 64, offset: 512)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "bugs", scope: !309, file: !4, line: 121, baseType: !254, size: 64, align: 64, offset: 576)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !309, file: !4, line: 122, baseType: !287, size: 192, align: 64, offset: 640)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "conffiles", scope: !309, file: !4, line: 123, baseType: !324, size: 64, align: 64, offset: 832)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64, align: 64)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conffile", file: !4, line: 80, size: 256, align: 64, elements: !326)
!326 = !{!327, !328, !329, !330}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !325, file: !4, line: 81, baseType: !324, size: 64, align: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !325, file: !4, line: 82, baseType: !254, size: 64, align: 64, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !325, file: !4, line: 83, baseType: !254, size: 64, align: 64, offset: 128)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "obsolete", scope: !325, file: !4, line: 84, baseType: !295, size: 8, align: 8, offset: 192)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "arbs", scope: !309, file: !4, line: 124, baseType: !332, size: 64, align: 64, offset: 896)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64, align: 64)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arbitraryfield", file: !4, line: 74, size: 192, align: 64, elements: !334)
!334 = !{!335, !336, !337}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !333, file: !4, line: 75, baseType: !332, size: 64, align: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !333, file: !4, line: 76, baseType: !254, size: 64, align: 64, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !333, file: !4, line: 77, baseType: !254, size: 64, align: 64, offset: 128)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !246, file: !4, line: 208, baseType: !309, size: 960, align: 64, offset: 1536)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "clientdata", scope: !246, file: !4, line: 209, baseType: !340, size: 64, align: 64, offset: 2496)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64, align: 64)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perpackagestate", file: !74, line: 53, size: 256, align: 64, elements: !342)
!342 = !{!343, !344, !345, !346, !347, !348}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "istobe", scope: !341, file: !74, line: 54, baseType: !73, size: 32, align: 32)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !341, file: !74, line: 57, baseType: !81, size: 32, align: 32, offset: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !341, file: !74, line: 59, baseType: !295, size: 8, align: 8, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "replacingfilesandsaid", scope: !341, file: !74, line: 61, baseType: !299, size: 32, align: 32, offset: 96)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "cmdline_seen", scope: !341, file: !74, line: 62, baseType: !299, size: 32, align: 32, offset: 128)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "trigprocdeferred", scope: !341, file: !74, line: 65, baseType: !349, size: 64, align: 64, offset: 192)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64, align: 64)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_list", file: !351, line: 34, size: 128, align: 64, elements: !352)
!351 = !DIFile(filename: "../lib/dpkg/pkg-list.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!352 = !{!353, !354}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !350, file: !351, line: 35, baseType: !349, size: 64, align: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !350, file: !351, line: 36, baseType: !245, size: 64, align: 64, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "archives", scope: !246, file: !4, line: 211, baseType: !356, size: 64, align: 64, offset: 2560)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64, align: 64)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archivedetails", file: !4, line: 87, size: 320, align: 64, elements: !358)
!358 = !{!359, !360, !361, !362, !363}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !357, file: !4, line: 88, baseType: !356, size: 64, align: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !357, file: !4, line: 89, baseType: !254, size: 64, align: 64, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "msdosname", scope: !357, file: !4, line: 90, baseType: !254, size: 64, align: 64, offset: 128)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !357, file: !4, line: 91, baseType: !254, size: 64, align: 64, offset: 192)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "md5sum", scope: !357, file: !4, line: 92, baseType: !254, size: 64, align: 64, offset: 256)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "trigaw", scope: !246, file: !4, line: 216, baseType: !365, size: 128, align: 64, offset: 2624)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !246, file: !4, line: 213, size: 128, align: 64, elements: !366)
!366 = !{!367, !379}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !365, file: !4, line: 215, baseType: !368, size: 64, align: 64)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64, align: 64)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigaw", file: !4, line: 142, size: 320, align: 64, elements: !370)
!370 = !{!371, !372, !373, !374}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "aw", scope: !369, file: !4, line: 143, baseType: !245, size: 64, align: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "pend", scope: !369, file: !4, line: 143, baseType: !245, size: 64, align: 64, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "samepend_next", scope: !369, file: !4, line: 144, baseType: !368, size: 64, align: 64, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "sameaw", scope: !369, file: !4, line: 147, baseType: !375, size: 128, align: 64, offset: 192)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !369, file: !4, line: 145, size: 128, align: 64, elements: !376)
!376 = !{!377, !378}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !375, file: !4, line: 146, baseType: !368, size: 64, align: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !375, file: !4, line: 146, baseType: !368, size: 64, align: 64, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !365, file: !4, line: 215, baseType: !368, size: 64, align: 64, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "othertrigaw_head", scope: !246, file: !4, line: 219, baseType: !368, size: 64, align: 64, offset: 2752)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "trigpend_head", scope: !246, file: !4, line: 220, baseType: !382, size: 64, align: 64, offset: 2816)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64, align: 64)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigpend", file: !4, line: 134, size: 128, align: 64, elements: !384)
!384 = !{!385, !386}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !383, file: !4, line: 135, baseType: !382, size: 64, align: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !383, file: !4, line: 136, baseType: !254, size: 64, align: 64, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !246, file: !4, line: 231, baseType: !388, size: 64, align: 64, offset: 2880)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64, align: 64)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode_list", file: !92, line: 122, size: 128, align: 64, elements: !390)
!390 = !{!391, !392}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !389, file: !92, line: 123, baseType: !388, size: 64, align: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "namenode", scope: !389, file: !92, line: 124, baseType: !393, size: 64, align: 64, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64, align: 64)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode", file: !92, line: 90, size: 640, align: 64, elements: !395)
!395 = !{!396, !397, !398, !399, !407, !426, !441, !442, !443, !444}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !394, file: !92, line: 91, baseType: !393, size: 64, align: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !394, file: !92, line: 92, baseType: !254, size: 64, align: 64, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "packages", scope: !394, file: !92, line: 93, baseType: !349, size: 64, align: 64, offset: 128)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "divert", scope: !394, file: !92, line: 94, baseType: !400, size: 64, align: 64, offset: 192)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64, align: 64)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_diversion", file: !92, line: 151, size: 256, align: 64, elements: !402)
!402 = !{!403, !404, !405, !406}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "useinstead", scope: !401, file: !92, line: 152, baseType: !393, size: 64, align: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "camefrom", scope: !401, file: !92, line: 153, baseType: !393, size: 64, align: 64, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "pkgset", scope: !401, file: !92, line: 154, baseType: !249, size: 64, align: 64, offset: 128)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !401, file: !92, line: 157, baseType: !400, size: 64, align: 64, offset: 192)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "statoverride", scope: !394, file: !92, line: 101, baseType: !408, size: 64, align: 64, offset: 256)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64, align: 64)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_stat", file: !410, line: 40, size: 256, align: 64, elements: !411)
!410 = !DIFile(filename: "../lib/dpkg/file.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!411 = !{!412, !417, !420, !423, !425}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !409, file: !410, line: 41, baseType: !413, size: 32, align: 32)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !414, line: 80, baseType: !415)
!414 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !416, line: 125, baseType: !290)
!416 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!417 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !409, file: !410, line: 42, baseType: !418, size: 32, align: 32, offset: 32)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !414, line: 65, baseType: !419)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !416, line: 126, baseType: !290)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !409, file: !410, line: 43, baseType: !421, size: 32, align: 32, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !414, line: 70, baseType: !422)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !416, line: 129, baseType: !290)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "uname", scope: !409, file: !410, line: 47, baseType: !424, size: 64, align: 64, offset: 128)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64, align: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !409, file: !410, line: 48, baseType: !424, size: 64, align: 64, offset: 192)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "trig_interested", scope: !394, file: !92, line: 103, baseType: !427, size: 64, align: 64, offset: 320)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64, align: 64)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigfileint", file: !87, line: 54, size: 448, align: 64, elements: !429)
!429 = !{!430, !431, !433, !434, !435, !436}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !428, file: !87, line: 55, baseType: !245, size: 64, align: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "pkgbin", scope: !428, file: !87, line: 56, baseType: !432, size: 64, align: 64, offset: 64)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64, align: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "fnn", scope: !428, file: !87, line: 57, baseType: !393, size: 64, align: 64, offset: 128)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !428, file: !87, line: 58, baseType: !86, size: 32, align: 32, offset: 192)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "samefile_next", scope: !428, file: !87, line: 59, baseType: !427, size: 64, align: 64, offset: 256)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "inoverall", scope: !428, file: !87, line: 62, baseType: !437, size: 128, align: 64, offset: 320)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !428, file: !87, line: 60, size: 128, align: 64, elements: !438)
!438 = !{!439, !440}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !437, file: !87, line: 61, baseType: !427, size: 64, align: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !437, file: !87, line: 61, baseType: !427, size: 64, align: 64, offset: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !394, file: !92, line: 111, baseType: !91, size: 32, align: 32, offset: 384)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "oldhash", scope: !394, file: !92, line: 114, baseType: !254, size: 64, align: 64, offset: 448)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "newhash", scope: !394, file: !92, line: 117, baseType: !254, size: 64, align: 64, offset: 512)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "file_ondisk_id", scope: !394, file: !92, line: 119, baseType: !445, size: 64, align: 64, offset: 576)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64, align: 64)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ondisk_id", file: !92, line: 85, size: 128, align: 64, elements: !447)
!447 = !{!448, !452}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "id_dev", scope: !446, file: !92, line: 86, baseType: !449, size: 64, align: 64)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !414, line: 60, baseType: !450)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !416, line: 124, baseType: !451)
!451 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "id_ino", scope: !446, file: !92, line: 87, baseType: !453, size: 64, align: 64, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !414, line: 48, baseType: !454)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !416, line: 127, baseType: !451)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_phys_offs", scope: !246, file: !4, line: 232, baseType: !456, size: 64, align: 64, offset: 2944)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !414, line: 86, baseType: !457)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !416, line: 131, baseType: !458)
!458 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_valid", scope: !246, file: !4, line: 233, baseType: !295, size: 8, align: 8, offset: 3008)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "status_dirty", scope: !246, file: !4, line: 236, baseType: !295, size: 8, align: 8, offset: 3016)
!461 = !{}
!462 = distinct !DIGlobalVariable(name: "fnvb", scope: !463, file: !242, line: 267, type: !464, isLocal: true, isDefinition: true, variable: %struct.varbuf* @removal_bulk_remove_files.fnvb)
!463 = distinct !DISubprogram(name: "removal_bulk_remove_files", scope: !242, file: !242, line: 262, type: !243, isLocal: true, isDefinition: true, scopeLine: 263, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !461)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varbuf", file: !465, line: 55, size: 192, align: 64, elements: !466)
!465 = !DIFile(filename: "../lib/dpkg/varbuf.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!466 = !{!467, !470, !471}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !464, file: !465, line: 56, baseType: !468, size: 64, align: 64)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !469, line: 216, baseType: !451)
!469 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!470 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !464, file: !465, line: 56, baseType: !468, size: 64, align: 64, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !464, file: !465, line: 57, baseType: !424, size: 64, align: 64, offset: 128)
!472 = distinct !DIGlobalVariable(name: "removeconffexts", scope: !473, file: !242, line: 478, type: !474, isLocal: true, isDefinition: true, variable: [8 x i8*]* @removal_bulk_remove_configfiles.removeconffexts)
!473 = distinct !DISubprogram(name: "removal_bulk_remove_configfiles", scope: !242, file: !242, line: 477, type: !243, isLocal: true, isDefinition: true, scopeLine: 477, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !461)
!474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !475, size: 512, align: 64, elements: !476)
!475 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !254)
!476 = !{!477}
!477 = !DISubrange(count: 8)
!478 = distinct !DIGlobalVariable(name: "fnvb", scope: !473, file: !242, line: 532, type: !464, isLocal: true, isDefinition: true, variable: %struct.varbuf* @removal_bulk_remove_configfiles.fnvb)
!479 = distinct !DIGlobalVariable(name: "removevb", scope: !473, file: !242, line: 532, type: !464, isLocal: true, isDefinition: true, variable: %struct.varbuf* @removal_bulk_remove_configfiles.removevb)
!480 = distinct !DIGlobalVariable(name: "fnvb", scope: !481, file: !242, line: 389, type: !464, isLocal: true, isDefinition: true, variable: %struct.varbuf* @removal_bulk_remove_leftover_dirs.fnvb)
!481 = distinct !DISubprogram(name: "removal_bulk_remove_leftover_dirs", scope: !242, file: !242, line: 385, type: !243, isLocal: true, isDefinition: true, scopeLine: 385, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !461)
!482 = !{i32 2, !"Dwarf Version", i32 4}
!483 = !{i32 2, !"Debug Info Version", i32 3}
!484 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!485 = !DILocalVariable(name: "pkg", arg: 1, scope: !241, file: !242, line: 91, type: !245)
!486 = !DIExpression()
!487 = !DILocation(line: 91, column: 38, scope: !241)
!488 = !DILocalVariable(name: "raemsgs", scope: !241, file: !242, line: 92, type: !464)
!489 = !DILocation(line: 92, column: 17, scope: !241)
!490 = !DILocalVariable(name: "dep", scope: !241, file: !242, line: 93, type: !266)
!491 = !DILocation(line: 93, column: 22, scope: !241)
!492 = !DILocalVariable(name: "rok", scope: !241, file: !242, line: 94, type: !104)
!493 = !DILocation(line: 94, column: 18, scope: !241)
!494 = !DILocation(line: 97, column: 18, scope: !241)
!495 = !DILocation(line: 97, column: 9, scope: !241)
!496 = !DILocation(line: 96, column: 3, scope: !241)
!497 = !DILocation(line: 99, column: 8, scope: !498)
!498 = distinct !DILexicalBlock(scope: !241, file: !242, line: 99, column: 7)
!499 = !DILocation(line: 99, column: 18, scope: !498)
!500 = !DILocation(line: 99, column: 21, scope: !501)
!501 = !DILexicalBlockFile(scope: !498, file: !242, discriminator: 1)
!502 = !DILocation(line: 99, column: 26, scope: !501)
!503 = !DILocation(line: 99, column: 31, scope: !501)
!504 = !DILocation(line: 99, column: 7, scope: !501)
!505 = !DILocation(line: 100, column: 9, scope: !506)
!506 = distinct !DILexicalBlock(scope: !507, file: !242, line: 100, column: 9)
!507 = distinct !DILexicalBlock(scope: !498, file: !242, line: 99, column: 52)
!508 = !DILocation(line: 100, column: 20, scope: !506)
!509 = !DILocation(line: 100, column: 28, scope: !506)
!510 = !DILocation(line: 100, column: 9, scope: !507)
!511 = !DILocation(line: 101, column: 20, scope: !506)
!512 = !DILocation(line: 101, column: 7, scope: !506)
!513 = !DILocation(line: 103, column: 20, scope: !506)
!514 = !DILocation(line: 103, column: 7, scope: !506)
!515 = !DILocation(line: 105, column: 10, scope: !516)
!516 = distinct !DILexicalBlock(scope: !507, file: !242, line: 105, column: 9)
!517 = !DILocation(line: 105, column: 9, scope: !507)
!518 = !DILocation(line: 106, column: 22, scope: !516)
!519 = !DILocation(line: 106, column: 7, scope: !516)
!520 = !DILocation(line: 107, column: 3, scope: !507)
!521 = !DILocation(line: 109, column: 29, scope: !241)
!522 = !DILocation(line: 109, column: 3, scope: !241)
!523 = !DILocation(line: 111, column: 7, scope: !524)
!524 = distinct !DILexicalBlock(scope: !241, file: !242, line: 111, column: 7)
!525 = !DILocation(line: 111, column: 12, scope: !524)
!526 = !DILocation(line: 111, column: 19, scope: !524)
!527 = !DILocation(line: 111, column: 7, scope: !241)
!528 = !DILocation(line: 112, column: 18, scope: !529)
!529 = distinct !DILexicalBlock(scope: !524, file: !242, line: 111, column: 45)
!530 = !DILocation(line: 113, column: 13, scope: !529)
!531 = !DILocation(line: 114, column: 22, scope: !529)
!532 = !DILocation(line: 114, column: 13, scope: !529)
!533 = !DILocation(line: 113, column: 5, scope: !534)
!534 = !DILexicalBlockFile(scope: !529, file: !242, discriminator: 1)
!535 = !DILocation(line: 115, column: 5, scope: !529)
!536 = !DILocation(line: 115, column: 10, scope: !529)
!537 = !DILocation(line: 115, column: 22, scope: !529)
!538 = !DILocation(line: 115, column: 29, scope: !529)
!539 = !DILocation(line: 116, column: 5, scope: !529)
!540 = !DILocation(line: 117, column: 15, scope: !541)
!541 = distinct !DILexicalBlock(scope: !524, file: !242, line: 117, column: 14)
!542 = !DILocation(line: 117, column: 25, scope: !541)
!543 = !DILocation(line: 118, column: 14, scope: !541)
!544 = !DILocation(line: 118, column: 19, scope: !541)
!545 = !DILocation(line: 118, column: 26, scope: !541)
!546 = !DILocation(line: 118, column: 50, scope: !541)
!547 = !DILocation(line: 119, column: 14, scope: !541)
!548 = !DILocation(line: 119, column: 25, scope: !541)
!549 = !DILocation(line: 119, column: 33, scope: !541)
!550 = !DILocation(line: 117, column: 14, scope: !551)
!551 = !DILexicalBlockFile(scope: !524, file: !242, discriminator: 1)
!552 = !DILocation(line: 120, column: 18, scope: !553)
!553 = distinct !DILexicalBlock(scope: !541, file: !242, line: 119, column: 47)
!554 = !DILocation(line: 121, column: 13, scope: !553)
!555 = !DILocation(line: 123, column: 22, scope: !553)
!556 = !DILocation(line: 123, column: 13, scope: !553)
!557 = !DILocation(line: 121, column: 5, scope: !558)
!558 = !DILexicalBlockFile(scope: !553, file: !242, discriminator: 1)
!559 = !DILocation(line: 124, column: 5, scope: !553)
!560 = !DILocation(line: 124, column: 10, scope: !553)
!561 = !DILocation(line: 124, column: 22, scope: !553)
!562 = !DILocation(line: 124, column: 29, scope: !553)
!563 = !DILocation(line: 125, column: 5, scope: !553)
!564 = !DILocation(line: 128, column: 7, scope: !565)
!565 = distinct !DILexicalBlock(scope: !241, file: !242, line: 128, column: 7)
!566 = !DILocation(line: 128, column: 12, scope: !565)
!567 = !DILocation(line: 128, column: 22, scope: !565)
!568 = !DILocation(line: 128, column: 32, scope: !565)
!569 = !DILocation(line: 128, column: 35, scope: !570)
!570 = !DILexicalBlockFile(scope: !565, file: !242, discriminator: 1)
!571 = !DILocation(line: 128, column: 40, scope: !570)
!572 = !DILocation(line: 128, column: 47, scope: !570)
!573 = !DILocation(line: 128, column: 7, scope: !570)
!574 = !DILocation(line: 130, column: 17, scope: !565)
!575 = !DILocation(line: 129, column: 5, scope: !565)
!576 = !DILocation(line: 133, column: 18, scope: !241)
!577 = !DILocation(line: 133, column: 9, scope: !241)
!578 = !DILocation(line: 132, column: 3, scope: !241)
!579 = !DILocation(line: 134, column: 7, scope: !241)
!580 = !DILocation(line: 135, column: 19, scope: !241)
!581 = !DILocation(line: 135, column: 24, scope: !241)
!582 = !DILocation(line: 135, column: 29, scope: !241)
!583 = !DILocation(line: 135, column: 3, scope: !241)
!584 = !DILocation(line: 136, column: 13, scope: !585)
!585 = distinct !DILexicalBlock(scope: !241, file: !242, line: 136, column: 3)
!586 = !DILocation(line: 136, column: 18, scope: !585)
!587 = !DILocation(line: 136, column: 28, scope: !585)
!588 = !DILocation(line: 136, column: 11, scope: !585)
!589 = !DILocation(line: 136, column: 8, scope: !585)
!590 = !DILocation(line: 136, column: 37, scope: !591)
!591 = !DILexicalBlockFile(scope: !592, file: !242, discriminator: 1)
!592 = distinct !DILexicalBlock(scope: !585, file: !242, line: 136, column: 3)
!593 = !DILocation(line: 136, column: 3, scope: !591)
!594 = !DILocation(line: 137, column: 9, scope: !595)
!595 = distinct !DILexicalBlock(scope: !596, file: !242, line: 137, column: 9)
!596 = distinct !DILexicalBlock(scope: !592, file: !242, line: 136, column: 58)
!597 = !DILocation(line: 137, column: 14, scope: !595)
!598 = !DILocation(line: 137, column: 19, scope: !595)
!599 = !DILocation(line: 137, column: 9, scope: !596)
!600 = !DILocation(line: 137, column: 36, scope: !601)
!601 = !DILexicalBlockFile(scope: !595, file: !242, discriminator: 1)
!602 = !DILocation(line: 138, column: 56, scope: !596)
!603 = !DILocation(line: 138, column: 61, scope: !596)
!604 = !DILocation(line: 138, column: 67, scope: !596)
!605 = !DILocation(line: 138, column: 71, scope: !596)
!606 = !DILocation(line: 138, column: 5, scope: !596)
!607 = !DILocation(line: 139, column: 21, scope: !596)
!608 = !DILocation(line: 139, column: 26, scope: !596)
!609 = !DILocation(line: 139, column: 31, scope: !596)
!610 = !DILocation(line: 139, column: 37, scope: !596)
!611 = !DILocation(line: 139, column: 5, scope: !596)
!612 = !DILocation(line: 140, column: 3, scope: !596)
!613 = !DILocation(line: 136, column: 47, scope: !614)
!614 = !DILexicalBlockFile(scope: !592, file: !242, discriminator: 2)
!615 = !DILocation(line: 136, column: 52, scope: !614)
!616 = !DILocation(line: 136, column: 45, scope: !614)
!617 = !DILocation(line: 136, column: 3, scope: !614)
!618 = distinct !{!618, !619}
!619 = !DILocation(line: 136, column: 3, scope: !241)
!620 = !DILocation(line: 142, column: 7, scope: !621)
!621 = distinct !DILexicalBlock(scope: !241, file: !242, line: 142, column: 7)
!622 = !DILocation(line: 142, column: 11, scope: !621)
!623 = !DILocation(line: 142, column: 7, scope: !241)
!624 = !DILocation(line: 143, column: 5, scope: !625)
!625 = distinct !DILexicalBlock(scope: !621, file: !242, line: 142, column: 31)
!626 = !DILocation(line: 144, column: 5, scope: !625)
!627 = !DILocation(line: 144, column: 10, scope: !625)
!628 = !DILocation(line: 144, column: 22, scope: !625)
!629 = !DILocation(line: 144, column: 29, scope: !625)
!630 = !DILocation(line: 145, column: 21, scope: !625)
!631 = !DILocation(line: 145, column: 5, scope: !625)
!632 = !DILocation(line: 146, column: 5, scope: !625)
!633 = !DILocation(line: 147, column: 14, scope: !634)
!634 = distinct !DILexicalBlock(scope: !621, file: !242, line: 147, column: 14)
!635 = !DILocation(line: 147, column: 18, scope: !634)
!636 = !DILocation(line: 147, column: 14, scope: !621)
!637 = !DILocation(line: 148, column: 17, scope: !638)
!638 = distinct !DILexicalBlock(scope: !634, file: !242, line: 147, column: 37)
!639 = !DILocation(line: 149, column: 5, scope: !638)
!640 = !DILocation(line: 150, column: 12, scope: !638)
!641 = !DILocation(line: 151, column: 22, scope: !638)
!642 = !DILocation(line: 151, column: 13, scope: !638)
!643 = !DILocation(line: 151, column: 51, scope: !638)
!644 = !DILocation(line: 150, column: 5, scope: !645)
!645 = !DILexicalBlockFile(scope: !638, file: !242, discriminator: 1)
!646 = !DILocation(line: 152, column: 12, scope: !638)
!647 = !DILocation(line: 152, column: 5, scope: !645)
!648 = !DILocation(line: 152, column: 5, scope: !638)
!649 = !DILocation(line: 153, column: 22, scope: !650)
!650 = distinct !DILexicalBlock(scope: !634, file: !242, line: 153, column: 14)
!651 = !DILocation(line: 153, column: 14, scope: !650)
!652 = !DILocation(line: 153, column: 14, scope: !634)
!653 = !DILocation(line: 154, column: 5, scope: !654)
!654 = distinct !DILexicalBlock(scope: !650, file: !242, line: 153, column: 28)
!655 = !DILocation(line: 155, column: 12, scope: !654)
!656 = !DILocation(line: 156, column: 22, scope: !654)
!657 = !DILocation(line: 156, column: 13, scope: !654)
!658 = !DILocation(line: 156, column: 51, scope: !654)
!659 = !DILocation(line: 155, column: 5, scope: !660)
!660 = !DILexicalBlockFile(scope: !654, file: !242, discriminator: 1)
!661 = !DILocation(line: 157, column: 3, scope: !654)
!662 = !DILocation(line: 158, column: 3, scope: !241)
!663 = !DILocation(line: 159, column: 15, scope: !241)
!664 = !DILocation(line: 161, column: 7, scope: !665)
!665 = distinct !DILexicalBlock(scope: !241, file: !242, line: 161, column: 7)
!666 = !DILocation(line: 161, column: 12, scope: !665)
!667 = !DILocation(line: 161, column: 18, scope: !665)
!668 = !DILocation(line: 161, column: 7, scope: !241)
!669 = !DILocation(line: 163, column: 17, scope: !665)
!670 = !DILocation(line: 162, column: 5, scope: !665)
!671 = !DILocation(line: 166, column: 3, scope: !241)
!672 = !DILocation(line: 167, column: 3, scope: !241)
!673 = !DILocation(line: 169, column: 7, scope: !674)
!674 = distinct !DILexicalBlock(scope: !241, file: !242, line: 169, column: 7)
!675 = !DILocation(line: 169, column: 7, scope: !241)
!676 = !DILocation(line: 170, column: 12, scope: !677)
!677 = distinct !DILexicalBlock(scope: !674, file: !242, line: 169, column: 16)
!678 = !DILocation(line: 171, column: 21, scope: !677)
!679 = !DILocation(line: 171, column: 12, scope: !677)
!680 = !DILocation(line: 172, column: 29, scope: !677)
!681 = !DILocation(line: 172, column: 34, scope: !677)
!682 = !DILocation(line: 172, column: 44, scope: !677)
!683 = !DILocation(line: 172, column: 12, scope: !677)
!684 = !DILocation(line: 170, column: 5, scope: !685)
!685 = !DILexicalBlockFile(scope: !677, file: !242, discriminator: 1)
!686 = !DILocation(line: 173, column: 20, scope: !677)
!687 = !DILocation(line: 173, column: 5, scope: !677)
!688 = !DILocation(line: 174, column: 5, scope: !677)
!689 = !DILocation(line: 174, column: 10, scope: !677)
!690 = !DILocation(line: 174, column: 22, scope: !677)
!691 = !DILocation(line: 174, column: 29, scope: !677)
!692 = !DILocation(line: 175, column: 5, scope: !677)
!693 = !DILocation(line: 178, column: 26, scope: !241)
!694 = !DILocation(line: 178, column: 3, scope: !241)
!695 = !DILocation(line: 182, column: 7, scope: !696)
!696 = distinct !DILexicalBlock(scope: !241, file: !242, line: 182, column: 7)
!697 = !DILocation(line: 182, column: 12, scope: !696)
!698 = !DILocation(line: 182, column: 19, scope: !696)
!699 = !DILocation(line: 182, column: 7, scope: !241)
!700 = !DILocation(line: 183, column: 12, scope: !701)
!701 = distinct !DILexicalBlock(scope: !696, file: !242, line: 182, column: 43)
!702 = !DILocation(line: 183, column: 56, scope: !701)
!703 = !DILocation(line: 183, column: 47, scope: !704)
!704 = !DILexicalBlockFile(scope: !701, file: !242, discriminator: 1)
!705 = !DILocation(line: 184, column: 29, scope: !701)
!706 = !DILocation(line: 184, column: 34, scope: !701)
!707 = !DILocation(line: 184, column: 44, scope: !701)
!708 = !DILocation(line: 184, column: 12, scope: !701)
!709 = !DILocation(line: 183, column: 5, scope: !710)
!710 = !DILexicalBlockFile(scope: !701, file: !242, discriminator: 2)
!711 = !DILocation(line: 185, column: 26, scope: !701)
!712 = !DILocation(line: 185, column: 32, scope: !701)
!713 = !DILocation(line: 185, column: 37, scope: !701)
!714 = !DILocation(line: 185, column: 5, scope: !701)
!715 = !DILocation(line: 186, column: 3, scope: !701)
!716 = !DILocation(line: 188, column: 35, scope: !241)
!717 = !DILocation(line: 188, column: 3, scope: !241)
!718 = !DILocation(line: 189, column: 7, scope: !719)
!719 = distinct !DILexicalBlock(scope: !241, file: !242, line: 189, column: 7)
!720 = !DILocation(line: 189, column: 12, scope: !719)
!721 = !DILocation(line: 189, column: 19, scope: !719)
!722 = !DILocation(line: 189, column: 7, scope: !241)
!723 = !DILocation(line: 192, column: 19, scope: !724)
!724 = distinct !DILexicalBlock(scope: !719, file: !242, line: 189, column: 47)
!725 = !DILocation(line: 192, column: 24, scope: !724)
!726 = !DILocation(line: 192, column: 17, scope: !724)
!727 = !DILocation(line: 193, column: 20, scope: !724)
!728 = !DILocation(line: 193, column: 5, scope: !724)
!729 = !DILocation(line: 194, column: 20, scope: !724)
!730 = !DILocation(line: 194, column: 5, scope: !724)
!731 = !DILocation(line: 196, column: 26, scope: !724)
!732 = !DILocation(line: 196, column: 18, scope: !724)
!733 = !DILocation(line: 195, column: 5, scope: !724)
!734 = !DILocation(line: 197, column: 27, scope: !724)
!735 = !DILocation(line: 197, column: 5, scope: !724)
!736 = !DILocation(line: 200, column: 20, scope: !724)
!737 = !DILocation(line: 200, column: 5, scope: !724)
!738 = !DILocation(line: 201, column: 3, scope: !724)
!739 = !DILocation(line: 203, column: 16, scope: !241)
!740 = !DILocation(line: 203, column: 3, scope: !241)
!741 = !DILocation(line: 204, column: 1, scope: !241)
!742 = !DILocation(line: 204, column: 1, scope: !743)
!743 = !DILexicalBlockFile(scope: !241, file: !242, discriminator: 1)
!744 = distinct !DISubprogram(name: "checkforremoval", scope: !242, file: !242, line: 53, type: !745, isLocal: true, isDefinition: true, scopeLine: 56, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !461)
!745 = !DISubroutineType(types: !746)
!746 = !{null, !245, !249, !747, !748}
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64, align: 64)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64, align: 64)
!749 = !DILocalVariable(name: "pkgtoremove", arg: 1, scope: !744, file: !242, line: 53, type: !245)
!750 = !DILocation(line: 53, column: 45, scope: !744)
!751 = !DILocalVariable(name: "pkgdepcheck", arg: 2, scope: !744, file: !242, line: 54, type: !249)
!752 = !DILocation(line: 54, column: 44, scope: !744)
!753 = !DILocalVariable(name: "rokp", arg: 3, scope: !744, file: !242, line: 55, type: !747)
!754 = !DILocation(line: 55, column: 45, scope: !744)
!755 = !DILocalVariable(name: "raemsgs", arg: 4, scope: !744, file: !242, line: 55, type: !748)
!756 = !DILocation(line: 55, column: 66, scope: !744)
!757 = !DILocalVariable(name: "possi", scope: !744, file: !242, line: 57, type: !262)
!758 = !DILocation(line: 57, column: 20, scope: !744)
!759 = !DILocalVariable(name: "depender", scope: !744, file: !242, line: 58, type: !245)
!760 = !DILocation(line: 58, column: 19, scope: !744)
!761 = !DILocalVariable(name: "ok", scope: !744, file: !242, line: 59, type: !104)
!762 = !DILocation(line: 59, column: 18, scope: !744)
!763 = !DILocalVariable(name: "raemsgs_state", scope: !744, file: !242, line: 60, type: !764)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varbuf_state", file: !465, line: 96, size: 64, align: 64, elements: !765)
!765 = !{!766}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !764, file: !465, line: 97, baseType: !468, size: 64, align: 64)
!767 = !DILocation(line: 60, column: 23, scope: !744)
!768 = !DILocation(line: 62, column: 16, scope: !769)
!769 = distinct !DILexicalBlock(scope: !744, file: !242, line: 62, column: 3)
!770 = !DILocation(line: 62, column: 29, scope: !769)
!771 = !DILocation(line: 62, column: 38, scope: !769)
!772 = !DILocation(line: 62, column: 14, scope: !769)
!773 = !DILocation(line: 62, column: 8, scope: !769)
!774 = !DILocation(line: 62, column: 49, scope: !775)
!775 = !DILexicalBlockFile(scope: !776, file: !242, discriminator: 1)
!776 = distinct !DILexicalBlock(scope: !769, file: !242, line: 62, column: 3)
!777 = !DILocation(line: 62, column: 3, scope: !775)
!778 = !DILocation(line: 63, column: 9, scope: !779)
!779 = distinct !DILexicalBlock(scope: !780, file: !242, line: 63, column: 9)
!780 = distinct !DILexicalBlock(scope: !776, file: !242, line: 62, column: 81)
!781 = !DILocation(line: 63, column: 16, scope: !779)
!782 = !DILocation(line: 63, column: 20, scope: !779)
!783 = !DILocation(line: 63, column: 25, scope: !779)
!784 = !DILocation(line: 63, column: 40, scope: !779)
!785 = !DILocation(line: 63, column: 43, scope: !786)
!786 = !DILexicalBlockFile(scope: !779, file: !242, discriminator: 1)
!787 = !DILocation(line: 63, column: 50, scope: !786)
!788 = !DILocation(line: 63, column: 54, scope: !786)
!789 = !DILocation(line: 63, column: 59, scope: !786)
!790 = !DILocation(line: 63, column: 9, scope: !786)
!791 = !DILocation(line: 63, column: 78, scope: !792)
!792 = !DILexicalBlockFile(scope: !779, file: !242, discriminator: 2)
!793 = !DILocation(line: 64, column: 15, scope: !780)
!794 = !DILocation(line: 64, column: 22, scope: !780)
!795 = !DILocation(line: 64, column: 26, scope: !780)
!796 = !DILocation(line: 64, column: 13, scope: !780)
!797 = !DILocation(line: 66, column: 20, scope: !780)
!798 = !DILocation(line: 66, column: 11, scope: !780)
!799 = !DILocation(line: 65, column: 5, scope: !780)
!800 = !DILocation(line: 67, column: 9, scope: !801)
!801 = distinct !DILexicalBlock(scope: !780, file: !242, line: 67, column: 9)
!802 = !DILocation(line: 67, column: 19, scope: !801)
!803 = !DILocation(line: 67, column: 26, scope: !801)
!804 = !DILocation(line: 67, column: 9, scope: !780)
!805 = !DILocation(line: 68, column: 7, scope: !801)
!806 = !DILocation(line: 69, column: 24, scope: !807)
!807 = distinct !DILexicalBlock(scope: !780, file: !242, line: 69, column: 9)
!808 = !DILocation(line: 69, column: 9, scope: !807)
!809 = !DILocation(line: 69, column: 9, scope: !780)
!810 = !DILocation(line: 71, column: 22, scope: !811)
!811 = distinct !DILexicalBlock(scope: !807, file: !242, line: 69, column: 35)
!812 = !DILocation(line: 71, column: 13, scope: !811)
!813 = !DILocation(line: 70, column: 7, scope: !811)
!814 = !DILocation(line: 72, column: 7, scope: !811)
!815 = !DILocation(line: 74, column: 9, scope: !816)
!816 = distinct !DILexicalBlock(scope: !780, file: !242, line: 74, column: 9)
!817 = !DILocation(line: 74, column: 19, scope: !816)
!818 = !DILocation(line: 74, column: 9, scope: !780)
!819 = !DILocation(line: 75, column: 26, scope: !820)
!820 = distinct !DILexicalBlock(scope: !821, file: !242, line: 75, column: 11)
!821 = distinct !DILexicalBlock(scope: !816, file: !242, line: 74, column: 41)
!822 = !DILocation(line: 75, column: 11, scope: !820)
!823 = !DILocation(line: 75, column: 11, scope: !821)
!824 = !DILocation(line: 76, column: 22, scope: !820)
!825 = !DILocation(line: 76, column: 9, scope: !820)
!826 = !DILocation(line: 77, column: 5, scope: !821)
!827 = !DILocation(line: 78, column: 21, scope: !780)
!828 = !DILocation(line: 78, column: 5, scope: !780)
!829 = !DILocation(line: 79, column: 25, scope: !780)
!830 = !DILocation(line: 79, column: 34, scope: !780)
!831 = !DILocation(line: 79, column: 46, scope: !780)
!832 = !DILocation(line: 79, column: 9, scope: !780)
!833 = !DILocation(line: 79, column: 7, scope: !780)
!834 = !DILocation(line: 80, column: 9, scope: !835)
!835 = distinct !DILexicalBlock(scope: !780, file: !242, line: 80, column: 9)
!836 = !DILocation(line: 80, column: 12, scope: !835)
!837 = !DILocation(line: 80, column: 30, scope: !835)
!838 = !DILocation(line: 81, column: 9, scope: !835)
!839 = !DILocation(line: 81, column: 19, scope: !835)
!840 = !DILocation(line: 81, column: 30, scope: !835)
!841 = !DILocation(line: 82, column: 9, scope: !835)
!842 = !DILocation(line: 82, column: 19, scope: !835)
!843 = !DILocation(line: 82, column: 31, scope: !835)
!844 = !DILocation(line: 82, column: 38, scope: !835)
!845 = !DILocation(line: 80, column: 9, scope: !846)
!846 = !DILexicalBlockFile(scope: !780, file: !242, discriminator: 1)
!847 = !DILocation(line: 83, column: 10, scope: !835)
!848 = !DILocation(line: 83, column: 7, scope: !835)
!849 = !DILocation(line: 84, column: 9, scope: !850)
!850 = distinct !DILexicalBlock(scope: !780, file: !242, line: 84, column: 9)
!851 = !DILocation(line: 84, column: 12, scope: !850)
!852 = !DILocation(line: 84, column: 9, scope: !780)
!853 = !DILocation(line: 86, column: 23, scope: !850)
!854 = !DILocation(line: 86, column: 7, scope: !850)
!855 = !DILocation(line: 87, column: 9, scope: !856)
!856 = distinct !DILexicalBlock(scope: !780, file: !242, line: 87, column: 9)
!857 = !DILocation(line: 87, column: 15, scope: !856)
!858 = !DILocation(line: 87, column: 14, scope: !856)
!859 = !DILocation(line: 87, column: 12, scope: !856)
!860 = !DILocation(line: 87, column: 9, scope: !780)
!861 = !DILocation(line: 87, column: 28, scope: !862)
!862 = !DILexicalBlockFile(scope: !856, file: !242, discriminator: 1)
!863 = !DILocation(line: 87, column: 22, scope: !862)
!864 = !DILocation(line: 87, column: 26, scope: !862)
!865 = !DILocation(line: 87, column: 21, scope: !862)
!866 = !DILocation(line: 88, column: 3, scope: !780)
!867 = !DILocation(line: 62, column: 64, scope: !868)
!868 = !DILexicalBlockFile(scope: !776, file: !242, discriminator: 2)
!869 = !DILocation(line: 62, column: 71, scope: !868)
!870 = !DILocation(line: 62, column: 62, scope: !868)
!871 = !DILocation(line: 62, column: 3, scope: !868)
!872 = distinct !{!872, !873}
!873 = !DILocation(line: 62, column: 3, scope: !744)
!874 = !DILocation(line: 89, column: 1, scope: !744)
!875 = distinct !DISubprogram(name: "removal_bulk", scope: !242, file: !242, line: 628, type: !243, isLocal: false, isDefinition: true, scopeLine: 628, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !461)
!876 = !DILocalVariable(name: "pkg", arg: 1, scope: !875, file: !242, line: 628, type: !245)
!877 = !DILocation(line: 628, column: 35, scope: !875)
!878 = !DILocalVariable(name: "foundpostrm", scope: !875, file: !242, line: 629, type: !295)
!879 = !DILocation(line: 629, column: 7, scope: !875)
!880 = !DILocation(line: 631, column: 58, scope: !875)
!881 = !DILocation(line: 631, column: 49, scope: !875)
!882 = !DILocation(line: 631, column: 3, scope: !883)
!883 = !DILexicalBlockFile(scope: !875, file: !242, discriminator: 1)
!884 = !DILocation(line: 633, column: 7, scope: !885)
!885 = distinct !DILexicalBlock(scope: !875, file: !242, line: 633, column: 7)
!886 = !DILocation(line: 633, column: 12, scope: !885)
!887 = !DILocation(line: 633, column: 19, scope: !885)
!888 = !DILocation(line: 633, column: 45, scope: !885)
!889 = !DILocation(line: 634, column: 7, scope: !885)
!890 = !DILocation(line: 634, column: 12, scope: !885)
!891 = !DILocation(line: 634, column: 19, scope: !885)
!892 = !DILocation(line: 633, column: 7, scope: !883)
!893 = !DILocation(line: 635, column: 31, scope: !894)
!894 = distinct !DILexicalBlock(scope: !885, file: !242, line: 634, column: 41)
!895 = !DILocation(line: 635, column: 5, scope: !894)
!896 = !DILocation(line: 636, column: 3, scope: !894)
!897 = !DILocation(line: 638, column: 37, scope: !875)
!898 = !DILocation(line: 638, column: 43, scope: !875)
!899 = !DILocation(line: 638, column: 48, scope: !875)
!900 = !DILocation(line: 638, column: 17, scope: !875)
!901 = !DILocation(line: 638, column: 15, scope: !875)
!902 = !DILocation(line: 640, column: 61, scope: !875)
!903 = !DILocation(line: 640, column: 3, scope: !875)
!904 = !DILocation(line: 642, column: 8, scope: !905)
!905 = distinct !DILexicalBlock(scope: !875, file: !242, line: 642, column: 7)
!906 = !DILocation(line: 642, column: 20, scope: !905)
!907 = !DILocation(line: 642, column: 24, scope: !908)
!908 = !DILexicalBlockFile(scope: !905, file: !242, discriminator: 1)
!909 = !DILocation(line: 642, column: 29, scope: !908)
!910 = !DILocation(line: 642, column: 39, scope: !908)
!911 = !DILocation(line: 642, column: 7, scope: !908)
!912 = !DILocation(line: 645, column: 5, scope: !913)
!913 = distinct !DILexicalBlock(scope: !905, file: !242, line: 642, column: 50)
!914 = !DILocation(line: 647, column: 18, scope: !913)
!915 = !DILocation(line: 647, column: 5, scope: !913)
!916 = !DILocation(line: 648, column: 25, scope: !913)
!917 = !DILocation(line: 648, column: 30, scope: !913)
!918 = !DILocation(line: 648, column: 5, scope: !913)
!919 = !DILocation(line: 649, column: 3, scope: !913)
!920 = !DILocation(line: 649, column: 14, scope: !921)
!921 = !DILexicalBlockFile(scope: !922, file: !242, discriminator: 1)
!922 = distinct !DILexicalBlock(scope: !905, file: !242, line: 649, column: 14)
!923 = !DILocation(line: 649, column: 19, scope: !921)
!924 = !DILocation(line: 649, column: 24, scope: !921)
!925 = !DILocation(line: 651, column: 37, scope: !926)
!926 = distinct !DILexicalBlock(scope: !922, file: !242, line: 649, column: 43)
!927 = !DILocation(line: 651, column: 5, scope: !926)
!928 = !DILocation(line: 653, column: 3, scope: !926)
!929 = !DILocation(line: 656, column: 7, scope: !930)
!930 = distinct !DILexicalBlock(scope: !875, file: !242, line: 656, column: 7)
!931 = !DILocation(line: 656, column: 12, scope: !930)
!932 = !DILocation(line: 656, column: 17, scope: !930)
!933 = !DILocation(line: 656, column: 7, scope: !875)
!934 = !DILocalVariable(name: "filename", scope: !935, file: !242, line: 657, type: !254)
!935 = distinct !DILexicalBlock(scope: !930, file: !242, line: 656, column: 36)
!936 = !DILocation(line: 657, column: 17, scope: !935)
!937 = !DILocation(line: 660, column: 39, scope: !935)
!938 = !DILocation(line: 660, column: 5, scope: !935)
!939 = !DILocation(line: 662, column: 36, scope: !935)
!940 = !DILocation(line: 662, column: 42, scope: !935)
!941 = !DILocation(line: 662, column: 47, scope: !935)
!942 = !DILocation(line: 662, column: 16, scope: !935)
!943 = !DILocation(line: 662, column: 14, scope: !935)
!944 = !DILocation(line: 664, column: 11, scope: !935)
!945 = !DILocation(line: 663, column: 5, scope: !935)
!946 = !DILocation(line: 665, column: 16, scope: !947)
!947 = distinct !DILexicalBlock(scope: !935, file: !242, line: 665, column: 9)
!948 = !DILocation(line: 665, column: 9, scope: !947)
!949 = !DILocation(line: 665, column: 26, scope: !947)
!950 = !DILocation(line: 665, column: 30, scope: !951)
!951 = !DILexicalBlockFile(scope: !947, file: !242, discriminator: 1)
!952 = !DILocation(line: 665, column: 29, scope: !951)
!953 = !DILocation(line: 665, column: 34, scope: !951)
!954 = !DILocation(line: 665, column: 9, scope: !951)
!955 = !DILocation(line: 666, column: 15, scope: !947)
!956 = !DILocation(line: 666, column: 7, scope: !951)
!957 = !DILocation(line: 666, column: 7, scope: !947)
!958 = !DILocation(line: 668, column: 36, scope: !935)
!959 = !DILocation(line: 668, column: 42, scope: !935)
!960 = !DILocation(line: 668, column: 47, scope: !935)
!961 = !DILocation(line: 668, column: 16, scope: !935)
!962 = !DILocation(line: 668, column: 14, scope: !935)
!963 = !DILocation(line: 670, column: 11, scope: !935)
!964 = !DILocation(line: 669, column: 5, scope: !935)
!965 = !DILocation(line: 671, column: 16, scope: !966)
!966 = distinct !DILexicalBlock(scope: !935, file: !242, line: 671, column: 9)
!967 = !DILocation(line: 671, column: 9, scope: !966)
!968 = !DILocation(line: 671, column: 26, scope: !966)
!969 = !DILocation(line: 671, column: 30, scope: !970)
!970 = !DILexicalBlockFile(scope: !966, file: !242, discriminator: 1)
!971 = !DILocation(line: 671, column: 29, scope: !970)
!972 = !DILocation(line: 671, column: 34, scope: !970)
!973 = !DILocation(line: 671, column: 9, scope: !970)
!974 = !DILocation(line: 672, column: 15, scope: !966)
!975 = !DILocation(line: 672, column: 7, scope: !970)
!976 = !DILocation(line: 672, column: 7, scope: !966)
!977 = !DILocation(line: 674, column: 20, scope: !935)
!978 = !DILocation(line: 674, column: 5, scope: !935)
!979 = !DILocation(line: 675, column: 18, scope: !935)
!980 = !DILocation(line: 675, column: 5, scope: !935)
!981 = !DILocation(line: 679, column: 19, scope: !935)
!982 = !DILocation(line: 679, column: 24, scope: !935)
!983 = !DILocation(line: 679, column: 5, scope: !935)
!984 = !DILocation(line: 680, column: 3, scope: !935)
!985 = !DILocation(line: 682, column: 20, scope: !875)
!986 = !DILocation(line: 682, column: 3, scope: !875)
!987 = !DILocation(line: 683, column: 18, scope: !875)
!988 = !DILocation(line: 683, column: 3, scope: !875)
!989 = !DILocation(line: 685, column: 3, scope: !875)
!990 = !DILocation(line: 686, column: 1, scope: !875)
!991 = !DILocalVariable(name: "pkg", arg: 1, scope: !463, file: !242, line: 262, type: !245)
!992 = !DILocation(line: 262, column: 43, scope: !463)
!993 = !DILocalVariable(name: "rev_iter", scope: !463, file: !242, line: 264, type: !994)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_hash_rev_iter", file: !92, line: 188, size: 64, align: 64, elements: !995)
!995 = !{!996}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "todo", scope: !994, file: !92, line: 189, baseType: !388, size: 64, align: 64)
!997 = !DILocation(line: 264, column: 29, scope: !463)
!998 = !DILocalVariable(name: "leftover", scope: !463, file: !242, line: 265, type: !388)
!999 = !DILocation(line: 265, column: 30, scope: !463)
!1000 = !DILocalVariable(name: "namenode", scope: !463, file: !242, line: 266, type: !393)
!1001 = !DILocation(line: 266, column: 25, scope: !463)
!1002 = !DILocalVariable(name: "fnvb_state", scope: !463, file: !242, line: 268, type: !764)
!1003 = !DILocation(line: 268, column: 23, scope: !463)
!1004 = !DILocalVariable(name: "stab", scope: !463, file: !242, line: 269, type: !1005)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1006, line: 46, size: 1152, align: 64, elements: !1007)
!1006 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!1007 = !{!1008, !1009, !1010, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1020, !1022, !1030, !1031, !1032}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1005, file: !1006, line: 48, baseType: !450, size: 64, align: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1005, file: !1006, line: 53, baseType: !454, size: 64, align: 64, offset: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1005, file: !1006, line: 61, baseType: !1011, size: 64, align: 64, offset: 128)
!1011 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !416, line: 130, baseType: !451)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1005, file: !1006, line: 62, baseType: !422, size: 32, align: 32, offset: 192)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1005, file: !1006, line: 64, baseType: !415, size: 32, align: 32, offset: 224)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1005, file: !1006, line: 65, baseType: !419, size: 32, align: 32, offset: 256)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1005, file: !1006, line: 67, baseType: !299, size: 32, align: 32, offset: 288)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1005, file: !1006, line: 69, baseType: !450, size: 64, align: 64, offset: 320)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1005, file: !1006, line: 74, baseType: !457, size: 64, align: 64, offset: 384)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1005, file: !1006, line: 78, baseType: !1019, size: 64, align: 64, offset: 448)
!1019 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !416, line: 153, baseType: !458)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1005, file: !1006, line: 80, baseType: !1021, size: 64, align: 64, offset: 512)
!1021 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !416, line: 158, baseType: !458)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1005, file: !1006, line: 91, baseType: !1023, size: 128, align: 64, offset: 576)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1024, line: 120, size: 128, align: 64, elements: !1025)
!1024 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!1025 = !{!1026, !1028}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1023, file: !1024, line: 122, baseType: !1027, size: 64, align: 64)
!1027 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !416, line: 139, baseType: !458)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1023, file: !1024, line: 123, baseType: !1029, size: 64, align: 64, offset: 64)
!1029 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !416, line: 175, baseType: !458)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1005, file: !1006, line: 92, baseType: !1023, size: 128, align: 64, offset: 704)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1005, file: !1006, line: 93, baseType: !1023, size: 128, align: 64, offset: 832)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1005, file: !1006, line: 106, baseType: !1033, size: 192, align: 64, offset: 960)
!1033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1029, size: 192, align: 64, elements: !1034)
!1034 = !{!1035}
!1035 = !DISubrange(count: 3)
!1036 = !DILocation(line: 269, column: 15, scope: !463)
!1037 = !DILocation(line: 271, column: 20, scope: !463)
!1038 = !DILocation(line: 271, column: 5, scope: !463)
!1039 = !DILocation(line: 272, column: 20, scope: !463)
!1040 = !DILocation(line: 272, column: 5, scope: !463)
!1041 = !DILocation(line: 273, column: 5, scope: !463)
!1042 = !DILocation(line: 275, column: 40, scope: !463)
!1043 = !DILocation(line: 275, column: 45, scope: !463)
!1044 = !DILocation(line: 275, column: 5, scope: !463)
!1045 = !DILocation(line: 276, column: 14, scope: !463)
!1046 = !DILocation(line: 277, column: 5, scope: !463)
!1047 = !DILocation(line: 277, column: 24, scope: !1048)
!1048 = !DILexicalBlockFile(scope: !463, file: !242, discriminator: 1)
!1049 = !DILocation(line: 277, column: 22, scope: !1048)
!1050 = !DILocation(line: 277, column: 5, scope: !1048)
!1051 = !DILocalVariable(name: "usenode", scope: !1052, file: !242, line: 278, type: !393)
!1052 = distinct !DILexicalBlock(scope: !463, file: !242, line: 277, column: 61)
!1053 = !DILocation(line: 278, column: 29, scope: !1052)
!1054 = !DILocalVariable(name: "is_dir", scope: !1052, file: !242, line: 279, type: !295)
!1055 = !DILocation(line: 279, column: 11, scope: !1052)
!1056 = !DILocation(line: 282, column: 13, scope: !1052)
!1057 = !DILocation(line: 282, column: 23, scope: !1052)
!1058 = !DILocation(line: 282, column: 29, scope: !1052)
!1059 = !DILocation(line: 282, column: 39, scope: !1052)
!1060 = !DILocation(line: 281, column: 7, scope: !1052)
!1061 = !DILocation(line: 284, column: 31, scope: !1052)
!1062 = !DILocation(line: 284, column: 41, scope: !1052)
!1063 = !DILocation(line: 284, column: 47, scope: !1052)
!1064 = !DILocation(line: 284, column: 52, scope: !1052)
!1065 = !DILocation(line: 284, column: 17, scope: !1052)
!1066 = !DILocation(line: 284, column: 15, scope: !1052)
!1067 = !DILocation(line: 286, column: 7, scope: !1052)
!1068 = !DILocation(line: 287, column: 29, scope: !1052)
!1069 = !DILocation(line: 287, column: 45, scope: !1052)
!1070 = !DILocation(line: 287, column: 38, scope: !1052)
!1071 = !DILocation(line: 287, column: 7, scope: !1072)
!1072 = !DILexicalBlockFile(scope: !1052, file: !242, discriminator: 1)
!1073 = !DILocation(line: 288, column: 29, scope: !1052)
!1074 = !DILocation(line: 288, column: 38, scope: !1052)
!1075 = !DILocation(line: 288, column: 51, scope: !1052)
!1076 = !DILocation(line: 288, column: 60, scope: !1052)
!1077 = !DILocation(line: 288, column: 44, scope: !1052)
!1078 = !DILocation(line: 288, column: 7, scope: !1072)
!1079 = !DILocation(line: 289, column: 7, scope: !1052)
!1080 = !DILocation(line: 290, column: 7, scope: !1052)
!1081 = !DILocation(line: 292, column: 26, scope: !1052)
!1082 = !DILocation(line: 292, column: 16, scope: !1052)
!1083 = !DILocation(line: 292, column: 38, scope: !1052)
!1084 = !DILocation(line: 292, column: 43, scope: !1052)
!1085 = !DILocation(line: 292, column: 50, scope: !1072)
!1086 = !DILocation(line: 292, column: 48, scope: !1072)
!1087 = !DILocation(line: 292, column: 59, scope: !1072)
!1088 = !DILocation(line: 292, column: 14, scope: !1089)
!1089 = !DILexicalBlockFile(scope: !1052, file: !242, discriminator: 2)
!1090 = !DILocation(line: 297, column: 12, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1052, file: !242, line: 297, column: 11)
!1092 = !DILocation(line: 297, column: 19, scope: !1091)
!1093 = !DILocation(line: 297, column: 50, scope: !1094)
!1094 = !DILexicalBlockFile(scope: !1091, file: !242, discriminator: 1)
!1095 = !DILocation(line: 297, column: 55, scope: !1094)
!1096 = !DILocation(line: 297, column: 22, scope: !1094)
!1097 = !DILocation(line: 297, column: 11, scope: !1094)
!1098 = !DILocation(line: 298, column: 9, scope: !1091)
!1099 = distinct !{!1099, !1046}
!1100 = !DILocation(line: 301, column: 11, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1052, file: !242, line: 301, column: 11)
!1102 = !DILocation(line: 301, column: 21, scope: !1101)
!1103 = !DILocation(line: 301, column: 27, scope: !1101)
!1104 = !DILocation(line: 301, column: 11, scope: !1052)
!1105 = !DILocation(line: 302, column: 34, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1101, file: !242, line: 301, column: 45)
!1107 = !DILocation(line: 302, column: 9, scope: !1106)
!1108 = !DILocation(line: 303, column: 9, scope: !1106)
!1109 = !DILocation(line: 306, column: 11, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1052, file: !242, line: 306, column: 11)
!1111 = !DILocation(line: 306, column: 11, scope: !1052)
!1112 = !DILocation(line: 307, column: 9, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1110, file: !242, line: 306, column: 19)
!1114 = !DILocation(line: 311, column: 31, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1113, file: !242, line: 311, column: 13)
!1116 = !DILocation(line: 311, column: 41, scope: !1115)
!1117 = !DILocation(line: 311, column: 13, scope: !1115)
!1118 = !DILocation(line: 311, column: 13, scope: !1113)
!1119 = !DILocation(line: 312, column: 28, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1115, file: !242, line: 311, column: 47)
!1121 = !DILocation(line: 312, column: 4, scope: !1120)
!1122 = !DILocation(line: 313, column: 4, scope: !1120)
!1123 = !DILocation(line: 315, column: 32, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1113, file: !242, line: 315, column: 13)
!1125 = !DILocation(line: 315, column: 42, scope: !1124)
!1126 = !DILocation(line: 315, column: 47, scope: !1124)
!1127 = !DILocation(line: 315, column: 13, scope: !1124)
!1128 = !DILocation(line: 315, column: 13, scope: !1113)
!1129 = !DILocation(line: 316, column: 36, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1124, file: !242, line: 315, column: 58)
!1131 = !DILocation(line: 316, column: 11, scope: !1130)
!1132 = !DILocation(line: 317, column: 11, scope: !1130)
!1133 = !DILocation(line: 319, column: 35, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1113, file: !242, line: 319, column: 13)
!1135 = !DILocation(line: 319, column: 45, scope: !1134)
!1136 = !DILocation(line: 319, column: 13, scope: !1134)
!1137 = !DILocation(line: 319, column: 13, scope: !1113)
!1138 = !DILocation(line: 320, column: 11, scope: !1134)
!1139 = !DILocation(line: 322, column: 20, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1113, file: !242, line: 322, column: 13)
!1141 = !DILocation(line: 322, column: 29, scope: !1140)
!1142 = !DILocation(line: 322, column: 13, scope: !1140)
!1143 = !DILocation(line: 322, column: 41, scope: !1140)
!1144 = !DILocation(line: 322, column: 13, scope: !1113)
!1145 = !DILocation(line: 324, column: 73, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1140, file: !242, line: 322, column: 47)
!1147 = !DILocation(line: 323, column: 11, scope: !1146)
!1148 = !DILocation(line: 325, column: 36, scope: !1146)
!1149 = !DILocation(line: 325, column: 11, scope: !1146)
!1150 = !DILocation(line: 326, column: 11, scope: !1146)
!1151 = !DILocation(line: 328, column: 7, scope: !1113)
!1152 = !DILocation(line: 330, column: 26, scope: !1052)
!1153 = !DILocation(line: 330, column: 35, scope: !1052)
!1154 = !DILocation(line: 330, column: 7, scope: !1052)
!1155 = !DILocation(line: 332, column: 7, scope: !1052)
!1156 = !DILocation(line: 333, column: 7, scope: !1052)
!1157 = !DILocation(line: 334, column: 7, scope: !1052)
!1158 = !DILocation(line: 335, column: 73, scope: !1052)
!1159 = !DILocation(line: 335, column: 7, scope: !1052)
!1160 = !DILocation(line: 336, column: 29, scope: !1052)
!1161 = !DILocation(line: 336, column: 7, scope: !1052)
!1162 = !DILocation(line: 338, column: 7, scope: !1052)
!1163 = !DILocation(line: 339, column: 7, scope: !1052)
!1164 = !DILocation(line: 340, column: 7, scope: !1052)
!1165 = !DILocation(line: 341, column: 72, scope: !1052)
!1166 = !DILocation(line: 341, column: 7, scope: !1052)
!1167 = !DILocation(line: 342, column: 29, scope: !1052)
!1168 = !DILocation(line: 342, column: 7, scope: !1052)
!1169 = !DILocation(line: 344, column: 7, scope: !1052)
!1170 = !DILocation(line: 345, column: 7, scope: !1052)
!1171 = !DILocation(line: 347, column: 68, scope: !1052)
!1172 = !DILocation(line: 347, column: 7, scope: !1052)
!1173 = !DILocation(line: 348, column: 23, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1052, file: !242, line: 348, column: 11)
!1175 = !DILocation(line: 348, column: 12, scope: !1174)
!1176 = !DILocation(line: 348, column: 28, scope: !1174)
!1177 = !DILocation(line: 348, column: 32, scope: !1178)
!1178 = !DILexicalBlockFile(scope: !1174, file: !242, discriminator: 1)
!1179 = !DILocation(line: 348, column: 31, scope: !1178)
!1180 = !DILocation(line: 348, column: 36, scope: !1178)
!1181 = !DILocation(line: 348, column: 46, scope: !1178)
!1182 = !DILocation(line: 348, column: 51, scope: !1183)
!1183 = !DILexicalBlockFile(scope: !1174, file: !242, discriminator: 2)
!1184 = !DILocation(line: 348, column: 50, scope: !1183)
!1185 = !DILocation(line: 348, column: 55, scope: !1183)
!1186 = !DILocation(line: 348, column: 11, scope: !1183)
!1187 = !DILocation(line: 348, column: 65, scope: !1188)
!1188 = !DILexicalBlockFile(scope: !1174, file: !242, discriminator: 3)
!1189 = !DILocation(line: 349, column: 12, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1052, file: !242, line: 349, column: 10)
!1191 = !DILocation(line: 349, column: 11, scope: !1190)
!1192 = !DILocation(line: 349, column: 16, scope: !1190)
!1193 = !DILocation(line: 349, column: 29, scope: !1190)
!1194 = !DILocation(line: 349, column: 34, scope: !1195)
!1195 = !DILexicalBlockFile(scope: !1190, file: !242, discriminator: 1)
!1196 = !DILocation(line: 349, column: 33, scope: !1195)
!1197 = !DILocation(line: 349, column: 38, scope: !1195)
!1198 = !DILocation(line: 349, column: 10, scope: !1195)
!1199 = !DILocation(line: 352, column: 13, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1190, file: !242, line: 349, column: 49)
!1201 = !DILocation(line: 350, column: 9, scope: !1200)
!1202 = !DILocation(line: 353, column: 33, scope: !1200)
!1203 = !DILocation(line: 353, column: 9, scope: !1200)
!1204 = !DILocation(line: 354, column: 9, scope: !1200)
!1205 = !DILocation(line: 355, column: 19, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1190, file: !242, line: 355, column: 17)
!1207 = !DILocation(line: 355, column: 18, scope: !1206)
!1208 = !DILocation(line: 355, column: 23, scope: !1206)
!1209 = !DILocation(line: 355, column: 32, scope: !1206)
!1210 = !DILocation(line: 355, column: 37, scope: !1211)
!1211 = !DILexicalBlockFile(scope: !1206, file: !242, discriminator: 1)
!1212 = !DILocation(line: 355, column: 36, scope: !1211)
!1213 = !DILocation(line: 355, column: 41, scope: !1211)
!1214 = !DILocation(line: 355, column: 17, scope: !1211)
!1215 = !DILocation(line: 356, column: 17, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1206, file: !242, line: 355, column: 51)
!1217 = !DILocation(line: 358, column: 26, scope: !1216)
!1218 = !DILocation(line: 358, column: 17, scope: !1216)
!1219 = !DILocation(line: 358, column: 47, scope: !1216)
!1220 = !DILocation(line: 358, column: 57, scope: !1216)
!1221 = !DILocation(line: 358, column: 73, scope: !1222)
!1222 = !DILexicalBlockFile(scope: !1216, file: !242, discriminator: 1)
!1223 = !DILocation(line: 358, column: 72, scope: !1216)
!1224 = !DILocation(line: 358, column: 63, scope: !1225)
!1225 = !DILexicalBlockFile(scope: !1216, file: !242, discriminator: 2)
!1226 = !DILocation(line: 356, column: 9, scope: !1222)
!1227 = !DILocation(line: 359, column: 33, scope: !1216)
!1228 = !DILocation(line: 359, column: 9, scope: !1216)
!1229 = !DILocation(line: 360, column: 9, scope: !1216)
!1230 = !DILocation(line: 362, column: 12, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1052, file: !242, line: 362, column: 10)
!1232 = !DILocation(line: 362, column: 11, scope: !1231)
!1233 = !DILocation(line: 362, column: 16, scope: !1231)
!1234 = !DILocation(line: 362, column: 10, scope: !1052)
!1235 = !DILocation(line: 363, column: 17, scope: !1231)
!1236 = !DILocation(line: 363, column: 57, scope: !1231)
!1237 = !DILocation(line: 363, column: 9, scope: !1238)
!1238 = !DILexicalBlockFile(scope: !1231, file: !242, discriminator: 1)
!1239 = !DILocation(line: 363, column: 9, scope: !1231)
!1240 = !DILocation(line: 364, column: 69, scope: !1052)
!1241 = !DILocation(line: 364, column: 7, scope: !1052)
!1242 = !DILocation(line: 365, column: 30, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1052, file: !242, line: 365, column: 11)
!1244 = !DILocation(line: 365, column: 11, scope: !1243)
!1245 = !DILocation(line: 365, column: 11, scope: !1052)
!1246 = !DILocation(line: 366, column: 17, scope: !1243)
!1247 = !DILocation(line: 366, column: 69, scope: !1243)
!1248 = !DILocation(line: 366, column: 9, scope: !1249)
!1249 = !DILexicalBlockFile(scope: !1243, file: !242, discriminator: 1)
!1250 = !DILocation(line: 366, column: 9, scope: !1243)
!1251 = !DILocation(line: 277, column: 5, scope: !1252)
!1252 = !DILexicalBlockFile(scope: !463, file: !242, discriminator: 2)
!1253 = !DILocation(line: 368, column: 27, scope: !463)
!1254 = !DILocation(line: 368, column: 33, scope: !463)
!1255 = !DILocation(line: 368, column: 38, scope: !463)
!1256 = !DILocation(line: 368, column: 49, scope: !463)
!1257 = !DILocation(line: 368, column: 5, scope: !463)
!1258 = !DILocation(line: 369, column: 27, scope: !463)
!1259 = !DILocation(line: 369, column: 5, scope: !463)
!1260 = !DILocation(line: 371, column: 39, scope: !463)
!1261 = !DILocation(line: 371, column: 45, scope: !463)
!1262 = !DILocation(line: 371, column: 50, scope: !463)
!1263 = !DILocation(line: 371, column: 19, scope: !463)
!1264 = !DILocation(line: 372, column: 51, scope: !463)
!1265 = !DILocation(line: 372, column: 57, scope: !463)
!1266 = !DILocation(line: 372, column: 62, scope: !463)
!1267 = !DILocation(line: 371, column: 5, scope: !1048)
!1268 = !DILocation(line: 373, column: 5, scope: !463)
!1269 = !DILocation(line: 375, column: 5, scope: !463)
!1270 = !DILocation(line: 376, column: 24, scope: !463)
!1271 = !DILocation(line: 376, column: 30, scope: !463)
!1272 = !DILocation(line: 376, column: 35, scope: !463)
!1273 = !DILocation(line: 376, column: 5, scope: !463)
!1274 = !DILocation(line: 377, column: 19, scope: !463)
!1275 = !DILocation(line: 377, column: 5, scope: !1048)
!1276 = !DILocation(line: 379, column: 20, scope: !463)
!1277 = !DILocation(line: 379, column: 5, scope: !463)
!1278 = !DILocation(line: 380, column: 5, scope: !463)
!1279 = !DILocation(line: 380, column: 10, scope: !463)
!1280 = !DILocation(line: 380, column: 20, scope: !463)
!1281 = !DILocation(line: 380, column: 30, scope: !463)
!1282 = !DILocation(line: 381, column: 20, scope: !463)
!1283 = !DILocation(line: 381, column: 5, scope: !463)
!1284 = !DILocation(line: 382, column: 5, scope: !463)
!1285 = !DILocation(line: 383, column: 1, scope: !463)
!1286 = !DILocalVariable(name: "pkg", arg: 1, scope: !473, file: !242, line: 477, type: !245)
!1287 = !DILocation(line: 477, column: 61, scope: !473)
!1288 = !DILocalVariable(name: "rc", scope: !473, file: !242, line: 479, type: !299)
!1289 = !DILocation(line: 479, column: 7, scope: !473)
!1290 = !DILocalVariable(name: "conffnameused", scope: !473, file: !242, line: 480, type: !299)
!1291 = !DILocation(line: 480, column: 7, scope: !473)
!1292 = !DILocalVariable(name: "conffbasenamelen", scope: !473, file: !242, line: 480, type: !299)
!1293 = !DILocation(line: 480, column: 22, scope: !473)
!1294 = !DILocalVariable(name: "conffbasename", scope: !473, file: !242, line: 481, type: !424)
!1295 = !DILocation(line: 481, column: 9, scope: !473)
!1296 = !DILocalVariable(name: "conff", scope: !473, file: !242, line: 482, type: !324)
!1297 = !DILocation(line: 482, column: 20, scope: !473)
!1298 = !DILocalVariable(name: "lconffp", scope: !473, file: !242, line: 482, type: !1299)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64, align: 64)
!1300 = !DILocation(line: 482, column: 29, scope: !473)
!1301 = !DILocalVariable(name: "searchfile", scope: !473, file: !242, line: 483, type: !388)
!1302 = !DILocation(line: 483, column: 30, scope: !473)
!1303 = !DILocalVariable(name: "dsd", scope: !473, file: !242, line: 484, type: !1304)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64, align: 64)
!1305 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !1306, line: 127, baseType: !1307)
!1306 = !DIFile(filename: "/usr/include/dirent.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!1307 = !DICompositeType(tag: DW_TAG_structure_type, name: "__dirstream", file: !1306, line: 127, flags: DIFlagFwdDecl)
!1308 = !DILocation(line: 484, column: 8, scope: !473)
!1309 = !DILocalVariable(name: "de", scope: !473, file: !242, line: 485, type: !1310)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64, align: 64)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dirent", file: !1312, line: 22, size: 2240, align: 64, elements: !1313)
!1312 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/dirent.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!1313 = !{!1314, !1315, !1316, !1318, !1320}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino", scope: !1311, file: !1312, line: 25, baseType: !454, size: 64, align: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "d_off", scope: !1311, file: !1312, line: 26, baseType: !457, size: 64, align: 64, offset: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "d_reclen", scope: !1311, file: !1312, line: 31, baseType: !1317, size: 16, align: 16, offset: 128)
!1317 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "d_type", scope: !1311, file: !1312, line: 32, baseType: !1319, size: 8, align: 8, offset: 144)
!1319 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1311, file: !1312, line: 33, baseType: !1321, size: 2048, align: 8, offset: 152)
!1321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 2048, align: 8, elements: !1322)
!1322 = !{!1323}
!1323 = !DISubrange(count: 256)
!1324 = !DILocation(line: 485, column: 18, scope: !473)
!1325 = !DILocalVariable(name: "p", scope: !473, file: !242, line: 486, type: !424)
!1326 = !DILocation(line: 486, column: 9, scope: !473)
!1327 = !DILocalVariable(name: "ext", scope: !473, file: !242, line: 487, type: !1328)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64, align: 64)
!1329 = !DILocation(line: 487, column: 22, scope: !473)
!1330 = !DILocation(line: 489, column: 12, scope: !473)
!1331 = !DILocation(line: 490, column: 21, scope: !473)
!1332 = !DILocation(line: 490, column: 12, scope: !473)
!1333 = !DILocation(line: 491, column: 29, scope: !473)
!1334 = !DILocation(line: 491, column: 34, scope: !473)
!1335 = !DILocation(line: 491, column: 44, scope: !473)
!1336 = !DILocation(line: 491, column: 12, scope: !473)
!1337 = !DILocation(line: 489, column: 5, scope: !1338)
!1338 = !DILexicalBlockFile(scope: !473, file: !242, discriminator: 1)
!1339 = !DILocation(line: 492, column: 25, scope: !473)
!1340 = !DILocation(line: 492, column: 31, scope: !473)
!1341 = !DILocation(line: 492, column: 36, scope: !473)
!1342 = !DILocation(line: 492, column: 5, scope: !473)
!1343 = !DILocation(line: 493, column: 37, scope: !473)
!1344 = !DILocation(line: 493, column: 5, scope: !473)
!1345 = !DILocation(line: 496, column: 35, scope: !473)
!1346 = !DILocation(line: 496, column: 5, scope: !473)
!1347 = !DILocation(line: 500, column: 25, scope: !473)
!1348 = !DILocation(line: 500, column: 30, scope: !473)
!1349 = !DILocation(line: 500, column: 5, scope: !473)
!1350 = !DILocation(line: 501, column: 20, scope: !473)
!1351 = !DILocation(line: 501, column: 5, scope: !473)
!1352 = !DILocation(line: 506, column: 21, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !473, file: !242, line: 506, column: 5)
!1354 = !DILocation(line: 506, column: 26, scope: !1353)
!1355 = !DILocation(line: 506, column: 36, scope: !1353)
!1356 = !DILocation(line: 506, column: 18, scope: !1353)
!1357 = !DILocation(line: 506, column: 10, scope: !1353)
!1358 = !DILocation(line: 506, column: 57, scope: !1359)
!1359 = !DILexicalBlockFile(scope: !1360, file: !242, discriminator: 1)
!1360 = distinct !DILexicalBlock(scope: !1353, file: !242, line: 506, column: 5)
!1361 = !DILocation(line: 506, column: 56, scope: !1359)
!1362 = !DILocation(line: 506, column: 54, scope: !1359)
!1363 = !DILocation(line: 506, column: 66, scope: !1359)
!1364 = !DILocation(line: 506, column: 5, scope: !1359)
!1365 = !DILocation(line: 507, column: 25, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1367, file: !242, line: 507, column: 7)
!1367 = distinct !DILexicalBlock(scope: !1360, file: !242, line: 506, column: 76)
!1368 = !DILocation(line: 507, column: 30, scope: !1366)
!1369 = !DILocation(line: 507, column: 23, scope: !1366)
!1370 = !DILocation(line: 507, column: 12, scope: !1366)
!1371 = !DILocation(line: 508, column: 12, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1366, file: !242, line: 507, column: 7)
!1373 = !DILocation(line: 508, column: 23, scope: !1372)
!1374 = !DILocation(line: 508, column: 33, scope: !1375)
!1375 = !DILexicalBlockFile(scope: !1372, file: !242, discriminator: 1)
!1376 = !DILocation(line: 508, column: 45, scope: !1375)
!1377 = !DILocation(line: 508, column: 55, scope: !1375)
!1378 = !DILocation(line: 508, column: 60, scope: !1375)
!1379 = !DILocation(line: 508, column: 67, scope: !1375)
!1380 = !DILocation(line: 508, column: 26, scope: !1375)
!1381 = !DILocation(line: 508, column: 23, scope: !1375)
!1382 = !DILocation(line: 507, column: 7, scope: !1383)
!1383 = !DILexicalBlockFile(scope: !1366, file: !242, discriminator: 1)
!1384 = !DILocation(line: 507, column: 7, scope: !1385)
!1385 = !DILexicalBlockFile(scope: !1366, file: !242, discriminator: 2)
!1386 = !DILocation(line: 509, column: 24, scope: !1372)
!1387 = !DILocation(line: 509, column: 36, scope: !1372)
!1388 = !DILocation(line: 509, column: 22, scope: !1372)
!1389 = !DILocation(line: 507, column: 7, scope: !1390)
!1390 = !DILexicalBlockFile(scope: !1372, file: !242, discriminator: 3)
!1391 = distinct !{!1391, !1392}
!1392 = !DILocation(line: 507, column: 7, scope: !1367)
!1393 = !DILocation(line: 510, column: 12, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1367, file: !242, line: 510, column: 11)
!1395 = !DILocation(line: 510, column: 11, scope: !1367)
!1396 = !DILocation(line: 512, column: 15, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1394, file: !242, line: 510, column: 24)
!1398 = !DILocation(line: 512, column: 22, scope: !1397)
!1399 = !DILocation(line: 511, column: 9, scope: !1397)
!1400 = !DILocation(line: 513, column: 19, scope: !1397)
!1401 = !DILocation(line: 513, column: 26, scope: !1397)
!1402 = !DILocation(line: 513, column: 10, scope: !1397)
!1403 = !DILocation(line: 513, column: 17, scope: !1397)
!1404 = !DILocation(line: 514, column: 7, scope: !1397)
!1405 = !DILocation(line: 514, column: 18, scope: !1406)
!1406 = !DILexicalBlockFile(scope: !1407, file: !242, discriminator: 1)
!1407 = distinct !DILexicalBlock(scope: !1394, file: !242, line: 514, column: 18)
!1408 = !DILocation(line: 514, column: 30, scope: !1406)
!1409 = !DILocation(line: 514, column: 40, scope: !1406)
!1410 = !DILocation(line: 514, column: 47, scope: !1406)
!1411 = !DILocation(line: 515, column: 19, scope: !1407)
!1412 = !DILocation(line: 515, column: 31, scope: !1407)
!1413 = !DILocation(line: 515, column: 41, scope: !1407)
!1414 = !DILocation(line: 515, column: 49, scope: !1407)
!1415 = !DILocation(line: 515, column: 58, scope: !1407)
!1416 = !DILocation(line: 516, column: 20, scope: !1407)
!1417 = !DILocation(line: 516, column: 32, scope: !1407)
!1418 = !DILocation(line: 516, column: 42, scope: !1407)
!1419 = !DILocation(line: 516, column: 50, scope: !1407)
!1420 = !DILocation(line: 516, column: 61, scope: !1407)
!1421 = !DILocation(line: 517, column: 20, scope: !1407)
!1422 = !DILocation(line: 517, column: 32, scope: !1407)
!1423 = !DILocation(line: 517, column: 42, scope: !1407)
!1424 = !DILocation(line: 517, column: 50, scope: !1407)
!1425 = !DILocation(line: 517, column: 60, scope: !1407)
!1426 = !DILocation(line: 517, column: 65, scope: !1407)
!1427 = !DILocation(line: 517, column: 57, scope: !1407)
!1428 = !DILocation(line: 514, column: 18, scope: !1429)
!1429 = !DILexicalBlockFile(scope: !1394, file: !242, discriminator: 2)
!1430 = !DILocation(line: 519, column: 15, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1407, file: !242, line: 517, column: 72)
!1432 = !DILocation(line: 519, column: 22, scope: !1431)
!1433 = !DILocation(line: 518, column: 9, scope: !1431)
!1434 = !DILocation(line: 520, column: 19, scope: !1431)
!1435 = !DILocation(line: 520, column: 26, scope: !1431)
!1436 = !DILocation(line: 520, column: 10, scope: !1431)
!1437 = !DILocation(line: 520, column: 17, scope: !1431)
!1438 = !DILocation(line: 521, column: 7, scope: !1431)
!1439 = !DILocation(line: 523, column: 15, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1407, file: !242, line: 521, column: 14)
!1441 = !DILocation(line: 523, column: 22, scope: !1440)
!1442 = !DILocation(line: 522, column: 9, scope: !1440)
!1443 = !DILocation(line: 524, column: 9, scope: !1440)
!1444 = !DILocation(line: 524, column: 16, scope: !1440)
!1445 = !DILocation(line: 524, column: 21, scope: !1440)
!1446 = !DILocation(line: 525, column: 19, scope: !1440)
!1447 = !DILocation(line: 525, column: 26, scope: !1440)
!1448 = !DILocation(line: 525, column: 16, scope: !1440)
!1449 = !DILocation(line: 506, column: 5, scope: !1450)
!1450 = !DILexicalBlockFile(scope: !1360, file: !242, discriminator: 2)
!1451 = distinct !{!1451, !1452}
!1452 = !DILocation(line: 506, column: 5, scope: !473)
!1453 = !DILocation(line: 528, column: 20, scope: !473)
!1454 = !DILocation(line: 528, column: 5, scope: !473)
!1455 = !DILocation(line: 530, column: 17, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !473, file: !242, line: 530, column: 5)
!1457 = !DILocation(line: 530, column: 22, scope: !1456)
!1458 = !DILocation(line: 530, column: 32, scope: !1456)
!1459 = !DILocation(line: 530, column: 15, scope: !1456)
!1460 = !DILocation(line: 530, column: 10, scope: !1456)
!1461 = !DILocation(line: 530, column: 43, scope: !1462)
!1462 = !DILexicalBlockFile(scope: !1463, file: !242, discriminator: 1)
!1463 = distinct !DILexicalBlock(scope: !1456, file: !242, line: 530, column: 5)
!1464 = !DILocation(line: 530, column: 5, scope: !1462)
!1465 = !DILocalVariable(name: "namenode", scope: !1466, file: !242, line: 531, type: !393)
!1466 = distinct !DILexicalBlock(scope: !1463, file: !242, line: 530, column: 70)
!1467 = !DILocation(line: 531, column: 29, scope: !1466)
!1468 = !DILocalVariable(name: "usenode", scope: !1466, file: !242, line: 531, type: !393)
!1469 = !DILocation(line: 531, column: 40, scope: !1466)
!1470 = !DILocalVariable(name: "removevb_state", scope: !1466, file: !242, line: 533, type: !764)
!1471 = !DILocation(line: 533, column: 27, scope: !1466)
!1472 = !DILocation(line: 535, column: 11, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1466, file: !242, line: 535, column: 11)
!1474 = !DILocation(line: 535, column: 18, scope: !1473)
!1475 = !DILocation(line: 535, column: 11, scope: !1466)
!1476 = !DILocation(line: 537, column: 8, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1473, file: !242, line: 535, column: 28)
!1478 = !DILocation(line: 537, column: 15, scope: !1477)
!1479 = !DILocation(line: 536, column: 2, scope: !1477)
!1480 = !DILocation(line: 538, column: 7, scope: !1477)
!1481 = !DILocation(line: 539, column: 7, scope: !1466)
!1482 = !DILocation(line: 540, column: 23, scope: !1466)
!1483 = !DILocation(line: 540, column: 35, scope: !1466)
!1484 = !DILocation(line: 540, column: 42, scope: !1466)
!1485 = !DILocation(line: 540, column: 12, scope: !1466)
!1486 = !DILocation(line: 540, column: 10, scope: !1466)
!1487 = !DILocation(line: 542, column: 13, scope: !1466)
!1488 = !DILocation(line: 542, column: 20, scope: !1466)
!1489 = !DILocation(line: 542, column: 26, scope: !1466)
!1490 = !DILocation(line: 542, column: 29, scope: !1466)
!1491 = !DILocation(line: 542, column: 26, scope: !1492)
!1492 = !DILexicalBlockFile(scope: !1466, file: !242, discriminator: 1)
!1493 = !DILocation(line: 542, column: 57, scope: !1494)
!1494 = !DILexicalBlockFile(scope: !1466, file: !242, discriminator: 2)
!1495 = !DILocation(line: 542, column: 26, scope: !1494)
!1496 = !DILocation(line: 542, column: 26, scope: !1497)
!1497 = !DILexicalBlockFile(scope: !1466, file: !242, discriminator: 3)
!1498 = !DILocation(line: 541, column: 7, scope: !1466)
!1499 = !DILocation(line: 543, column: 11, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1466, file: !242, line: 543, column: 11)
!1501 = !DILocation(line: 543, column: 14, scope: !1500)
!1502 = !DILocation(line: 543, column: 11, scope: !1466)
!1503 = !DILocation(line: 544, column: 9, scope: !1500)
!1504 = !DILocation(line: 546, column: 38, scope: !1466)
!1505 = !DILocation(line: 546, column: 45, scope: !1466)
!1506 = !DILocation(line: 546, column: 18, scope: !1466)
!1507 = !DILocation(line: 546, column: 16, scope: !1466)
!1508 = !DILocation(line: 547, column: 31, scope: !1466)
!1509 = !DILocation(line: 547, column: 41, scope: !1466)
!1510 = !DILocation(line: 547, column: 47, scope: !1466)
!1511 = !DILocation(line: 547, column: 52, scope: !1466)
!1512 = !DILocation(line: 547, column: 17, scope: !1466)
!1513 = !DILocation(line: 547, column: 15, scope: !1466)
!1514 = !DILocation(line: 549, column: 26, scope: !1466)
!1515 = !DILocation(line: 549, column: 35, scope: !1466)
!1516 = !DILocation(line: 549, column: 7, scope: !1466)
!1517 = !DILocation(line: 551, column: 28, scope: !1466)
!1518 = !DILocation(line: 551, column: 23, scope: !1466)
!1519 = !DILocation(line: 551, column: 21, scope: !1466)
!1520 = !DILocation(line: 552, column: 23, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1466, file: !242, line: 552, column: 11)
!1522 = !DILocation(line: 552, column: 11, scope: !1521)
!1523 = !DILocation(line: 552, column: 28, scope: !1521)
!1524 = !DILocation(line: 552, column: 32, scope: !1525)
!1525 = !DILexicalBlockFile(scope: !1521, file: !242, discriminator: 1)
!1526 = !DILocation(line: 552, column: 31, scope: !1525)
!1527 = !DILocation(line: 552, column: 36, scope: !1525)
!1528 = !DILocation(line: 552, column: 46, scope: !1525)
!1529 = !DILocation(line: 552, column: 51, scope: !1530)
!1530 = !DILexicalBlockFile(scope: !1521, file: !242, discriminator: 2)
!1531 = !DILocation(line: 552, column: 50, scope: !1530)
!1532 = !DILocation(line: 552, column: 55, scope: !1530)
!1533 = !DILocation(line: 552, column: 11, scope: !1530)
!1534 = !DILocation(line: 553, column: 17, scope: !1521)
!1535 = !DILocation(line: 554, column: 17, scope: !1521)
!1536 = !DILocation(line: 554, column: 24, scope: !1521)
!1537 = !DILocation(line: 554, column: 35, scope: !1521)
!1538 = !DILocation(line: 553, column: 9, scope: !1525)
!1539 = !DILocation(line: 553, column: 9, scope: !1521)
!1540 = !DILocation(line: 555, column: 23, scope: !1466)
!1541 = !DILocation(line: 555, column: 10, scope: !1466)
!1542 = !DILocation(line: 555, column: 8, scope: !1466)
!1543 = !DILocation(line: 555, column: 38, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1466, file: !242, line: 555, column: 37)
!1545 = !DILocation(line: 555, column: 37, scope: !1466)
!1546 = !DILocation(line: 555, column: 41, scope: !1547)
!1547 = !DILexicalBlockFile(scope: !1544, file: !242, discriminator: 1)
!1548 = !DILocation(line: 556, column: 8, scope: !1466)
!1549 = !DILocation(line: 556, column: 10, scope: !1466)
!1550 = !DILocation(line: 557, column: 7, scope: !1466)
!1551 = !DILocation(line: 558, column: 38, scope: !1466)
!1552 = !DILocation(line: 558, column: 55, scope: !1466)
!1553 = !DILocation(line: 558, column: 43, scope: !1466)
!1554 = !DILocation(line: 558, column: 7, scope: !1492)
!1555 = !DILocation(line: 559, column: 7, scope: !1466)
!1556 = !DILocation(line: 560, column: 7, scope: !1466)
!1557 = !DILocation(line: 561, column: 7, scope: !1466)
!1558 = !DILocation(line: 563, column: 29, scope: !1466)
!1559 = !DILocation(line: 563, column: 12, scope: !1466)
!1560 = !DILocation(line: 563, column: 10, scope: !1466)
!1561 = !DILocation(line: 564, column: 12, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1466, file: !242, line: 564, column: 11)
!1563 = !DILocation(line: 564, column: 11, scope: !1466)
!1564 = !DILocalVariable(name: "e", scope: !1565, file: !242, line: 565, type: !299)
!1565 = distinct !DILexicalBlock(scope: !1562, file: !242, line: 564, column: 17)
!1566 = !DILocation(line: 565, column: 13, scope: !1565)
!1567 = !DILocation(line: 565, column: 16, scope: !1565)
!1568 = !DILocation(line: 565, column: 15, scope: !1565)
!1569 = !DILocation(line: 567, column: 20, scope: !1565)
!1570 = !DILocation(line: 567, column: 34, scope: !1565)
!1571 = !DILocation(line: 567, column: 25, scope: !1565)
!1572 = !DILocation(line: 566, column: 9, scope: !1565)
!1573 = !DILocation(line: 567, column: 45, scope: !1565)
!1574 = !DILocation(line: 567, column: 40, scope: !1575)
!1575 = !DILexicalBlockFile(scope: !1565, file: !242, discriminator: 1)
!1576 = !DILocation(line: 567, column: 43, scope: !1565)
!1577 = !DILocation(line: 568, column: 14, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1565, file: !242, line: 568, column: 12)
!1579 = !DILocation(line: 568, column: 13, scope: !1578)
!1580 = !DILocation(line: 568, column: 18, scope: !1578)
!1581 = !DILocation(line: 568, column: 28, scope: !1578)
!1582 = !DILocation(line: 568, column: 33, scope: !1583)
!1583 = !DILexicalBlockFile(scope: !1578, file: !242, discriminator: 1)
!1584 = !DILocation(line: 568, column: 32, scope: !1583)
!1585 = !DILocation(line: 568, column: 37, scope: !1583)
!1586 = !DILocation(line: 568, column: 12, scope: !1583)
!1587 = !DILocation(line: 568, column: 49, scope: !1588)
!1588 = !DILexicalBlockFile(scope: !1578, file: !242, discriminator: 2)
!1589 = !DILocation(line: 569, column: 17, scope: !1565)
!1590 = !DILocation(line: 570, column: 22, scope: !1565)
!1591 = !DILocation(line: 570, column: 27, scope: !1565)
!1592 = !DILocation(line: 570, column: 34, scope: !1565)
!1593 = !DILocation(line: 569, column: 9, scope: !1575)
!1594 = !DILocation(line: 569, column: 9, scope: !1565)
!1595 = !DILocation(line: 572, column: 76, scope: !1466)
!1596 = !DILocation(line: 572, column: 7, scope: !1466)
!1597 = !DILocation(line: 573, column: 48, scope: !1466)
!1598 = !DILocation(line: 573, column: 40, scope: !1466)
!1599 = !DILocation(line: 573, column: 7, scope: !1466)
!1600 = !DILocation(line: 574, column: 8, scope: !1466)
!1601 = !DILocation(line: 574, column: 9, scope: !1466)
!1602 = !DILocation(line: 575, column: 32, scope: !1466)
!1603 = !DILocation(line: 575, column: 25, scope: !1466)
!1604 = !DILocation(line: 575, column: 23, scope: !1466)
!1605 = !DILocation(line: 576, column: 27, scope: !1466)
!1606 = !DILocation(line: 576, column: 31, scope: !1466)
!1607 = !DILocation(line: 576, column: 30, scope: !1466)
!1608 = !DILocation(line: 576, column: 45, scope: !1466)
!1609 = !DILocation(line: 576, column: 44, scope: !1466)
!1610 = !DILocation(line: 576, column: 20, scope: !1466)
!1611 = !DILocation(line: 577, column: 7, scope: !1466)
!1612 = !DILocation(line: 577, column: 28, scope: !1492)
!1613 = !DILocation(line: 577, column: 20, scope: !1492)
!1614 = !DILocation(line: 577, column: 18, scope: !1492)
!1615 = !DILocation(line: 577, column: 34, scope: !1492)
!1616 = !DILocation(line: 577, column: 7, scope: !1492)
!1617 = !DILocation(line: 580, column: 15, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1466, file: !242, line: 577, column: 42)
!1619 = !DILocation(line: 580, column: 19, scope: !1618)
!1620 = !DILocation(line: 580, column: 27, scope: !1618)
!1621 = !DILocation(line: 580, column: 42, scope: !1618)
!1622 = !DILocation(line: 580, column: 57, scope: !1618)
!1623 = !DILocation(line: 578, column: 9, scope: !1618)
!1624 = !DILocation(line: 581, column: 21, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1618, file: !242, line: 581, column: 13)
!1626 = !DILocation(line: 581, column: 25, scope: !1625)
!1627 = !DILocation(line: 581, column: 33, scope: !1625)
!1628 = !DILocation(line: 581, column: 48, scope: !1625)
!1629 = !DILocation(line: 581, column: 13, scope: !1625)
!1630 = !DILocation(line: 581, column: 66, scope: !1625)
!1631 = !DILocation(line: 581, column: 13, scope: !1618)
!1632 = !DILocation(line: 582, column: 11, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1625, file: !242, line: 581, column: 72)
!1634 = !DILocation(line: 583, column: 19, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1633, file: !242, line: 583, column: 11)
!1636 = !DILocation(line: 583, column: 16, scope: !1635)
!1637 = !DILocation(line: 583, column: 39, scope: !1638)
!1638 = !DILexicalBlockFile(scope: !1639, file: !242, discriminator: 1)
!1639 = distinct !DILexicalBlock(scope: !1635, file: !242, line: 583, column: 11)
!1640 = !DILocation(line: 583, column: 38, scope: !1638)
!1641 = !DILocation(line: 583, column: 11, scope: !1638)
!1642 = !DILocation(line: 584, column: 25, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1639, file: !242, line: 584, column: 17)
!1644 = !DILocation(line: 584, column: 24, scope: !1643)
!1645 = !DILocation(line: 584, column: 30, scope: !1643)
!1646 = !DILocation(line: 584, column: 34, scope: !1643)
!1647 = !DILocation(line: 584, column: 43, scope: !1643)
!1648 = !DILocation(line: 584, column: 41, scope: !1643)
!1649 = !DILocation(line: 584, column: 17, scope: !1643)
!1650 = !DILocation(line: 584, column: 61, scope: !1643)
!1651 = !DILocation(line: 584, column: 17, scope: !1639)
!1652 = !DILocation(line: 585, column: 15, scope: !1643)
!1653 = !DILocation(line: 584, column: 64, scope: !1654)
!1654 = !DILexicalBlockFile(scope: !1643, file: !242, discriminator: 1)
!1655 = !DILocation(line: 583, column: 47, scope: !1656)
!1656 = !DILexicalBlockFile(scope: !1639, file: !242, discriminator: 2)
!1657 = !DILocation(line: 583, column: 11, scope: !1656)
!1658 = distinct !{!1658, !1659}
!1659 = !DILocation(line: 583, column: 11, scope: !1633)
!1660 = !DILocation(line: 586, column: 14, scope: !1633)
!1661 = !DILocation(line: 586, column: 18, scope: !1633)
!1662 = !DILocation(line: 586, column: 25, scope: !1633)
!1663 = !DILocation(line: 586, column: 24, scope: !1633)
!1664 = !DILocation(line: 586, column: 12, scope: !1633)
!1665 = !DILocation(line: 587, column: 17, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1633, file: !242, line: 587, column: 15)
!1667 = !DILocation(line: 587, column: 15, scope: !1666)
!1668 = !DILocation(line: 587, column: 20, scope: !1666)
!1669 = !DILocation(line: 587, column: 15, scope: !1633)
!1670 = !DILocation(line: 588, column: 13, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1666, file: !242, line: 587, column: 28)
!1672 = !DILocation(line: 588, column: 21, scope: !1673)
!1673 = !DILexicalBlockFile(scope: !1671, file: !242, discriminator: 1)
!1674 = !DILocation(line: 588, column: 20, scope: !1673)
!1675 = !DILocation(line: 588, column: 23, scope: !1673)
!1676 = !DILocation(line: 588, column: 37, scope: !1677)
!1677 = !DILexicalBlockFile(scope: !1671, file: !242, discriminator: 2)
!1678 = !DILocation(line: 588, column: 36, scope: !1677)
!1679 = !DILocation(line: 588, column: 26, scope: !1677)
!1680 = !DILocation(line: 588, column: 13, scope: !1681)
!1681 = !DILexicalBlockFile(scope: !1671, file: !242, discriminator: 3)
!1682 = !DILocation(line: 589, column: 16, scope: !1671)
!1683 = !DILocation(line: 588, column: 13, scope: !1684)
!1684 = !DILexicalBlockFile(scope: !1671, file: !242, discriminator: 4)
!1685 = distinct !{!1685, !1670}
!1686 = !DILocation(line: 590, column: 18, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1671, file: !242, line: 590, column: 17)
!1688 = !DILocation(line: 590, column: 17, scope: !1687)
!1689 = !DILocation(line: 590, column: 20, scope: !1687)
!1690 = !DILocation(line: 590, column: 27, scope: !1687)
!1691 = !DILocation(line: 590, column: 32, scope: !1692)
!1692 = !DILexicalBlockFile(scope: !1687, file: !242, discriminator: 1)
!1693 = !DILocation(line: 590, column: 31, scope: !1692)
!1694 = !DILocation(line: 590, column: 17, scope: !1692)
!1695 = !DILocation(line: 590, column: 37, scope: !1696)
!1696 = !DILexicalBlockFile(scope: !1687, file: !242, discriminator: 2)
!1697 = !DILocation(line: 591, column: 11, scope: !1671)
!1698 = !DILocation(line: 592, column: 9, scope: !1633)
!1699 = !DILocation(line: 593, column: 9, scope: !1618)
!1700 = !DILocation(line: 594, column: 13, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1618, file: !242, line: 594, column: 13)
!1702 = !DILocation(line: 594, column: 17, scope: !1701)
!1703 = !DILocation(line: 594, column: 27, scope: !1701)
!1704 = !DILocation(line: 594, column: 34, scope: !1701)
!1705 = !DILocation(line: 595, column: 21, scope: !1701)
!1706 = !DILocation(line: 595, column: 25, scope: !1701)
!1707 = !DILocation(line: 595, column: 32, scope: !1701)
!1708 = !DILocation(line: 595, column: 37, scope: !1701)
!1709 = !DILocation(line: 595, column: 52, scope: !1701)
!1710 = !DILocation(line: 595, column: 13, scope: !1701)
!1711 = !DILocation(line: 595, column: 70, scope: !1701)
!1712 = !DILocation(line: 595, column: 75, scope: !1701)
!1713 = !DILocation(line: 596, column: 20, scope: !1701)
!1714 = !DILocation(line: 596, column: 24, scope: !1701)
!1715 = !DILocation(line: 596, column: 31, scope: !1701)
!1716 = !DILocation(line: 596, column: 37, scope: !1701)
!1717 = !DILocation(line: 596, column: 35, scope: !1701)
!1718 = !DILocation(line: 596, column: 13, scope: !1701)
!1719 = !DILocation(line: 596, column: 60, scope: !1701)
!1720 = !DILocation(line: 594, column: 13, scope: !1721)
!1721 = !DILexicalBlockFile(scope: !1618, file: !242, discriminator: 1)
!1722 = !DILocation(line: 597, column: 11, scope: !1701)
!1723 = !DILocation(line: 598, column: 9, scope: !1618)
!1724 = !DILocation(line: 599, column: 9, scope: !1618)
!1725 = distinct !{!1725, !1611}
!1726 = !DILocation(line: 601, column: 9, scope: !1618)
!1727 = !DILocation(line: 602, column: 35, scope: !1618)
!1728 = !DILocation(line: 602, column: 39, scope: !1618)
!1729 = !DILocation(line: 602, column: 54, scope: !1618)
!1730 = !DILocation(line: 602, column: 58, scope: !1618)
!1731 = !DILocation(line: 602, column: 47, scope: !1618)
!1732 = !DILocation(line: 602, column: 9, scope: !1721)
!1733 = !DILocation(line: 603, column: 9, scope: !1618)
!1734 = !DILocation(line: 605, column: 24, scope: !1618)
!1735 = !DILocation(line: 604, column: 9, scope: !1618)
!1736 = !DILocation(line: 606, column: 29, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1618, file: !242, line: 606, column: 13)
!1738 = !DILocation(line: 606, column: 13, scope: !1737)
!1739 = !DILocation(line: 606, column: 34, scope: !1737)
!1740 = !DILocation(line: 606, column: 38, scope: !1741)
!1741 = !DILexicalBlockFile(scope: !1737, file: !242, discriminator: 1)
!1742 = !DILocation(line: 606, column: 37, scope: !1741)
!1743 = !DILocation(line: 606, column: 42, scope: !1741)
!1744 = !DILocation(line: 606, column: 52, scope: !1741)
!1745 = !DILocation(line: 606, column: 57, scope: !1746)
!1746 = !DILexicalBlockFile(scope: !1737, file: !242, discriminator: 2)
!1747 = !DILocation(line: 606, column: 56, scope: !1746)
!1748 = !DILocation(line: 606, column: 61, scope: !1746)
!1749 = !DILocation(line: 606, column: 13, scope: !1746)
!1750 = !DILocation(line: 607, column: 19, scope: !1737)
!1751 = !DILocation(line: 608, column: 28, scope: !1737)
!1752 = !DILocation(line: 608, column: 33, scope: !1737)
!1753 = !DILocation(line: 608, column: 40, scope: !1737)
!1754 = !DILocation(line: 607, column: 11, scope: !1741)
!1755 = !DILocation(line: 607, column: 11, scope: !1737)
!1756 = !DILocation(line: 577, column: 7, scope: !1494)
!1757 = !DILocation(line: 610, column: 7, scope: !1466)
!1758 = !DILocation(line: 611, column: 5, scope: !1466)
!1759 = !DILocation(line: 530, column: 57, scope: !1760)
!1760 = !DILexicalBlockFile(scope: !1463, file: !242, discriminator: 2)
!1761 = !DILocation(line: 530, column: 64, scope: !1760)
!1762 = !DILocation(line: 530, column: 55, scope: !1760)
!1763 = !DILocation(line: 530, column: 5, scope: !1760)
!1764 = distinct !{!1764, !1765}
!1765 = !DILocation(line: 530, column: 5, scope: !473)
!1766 = !DILocation(line: 614, column: 27, scope: !473)
!1767 = !DILocation(line: 614, column: 33, scope: !473)
!1768 = !DILocation(line: 614, column: 38, scope: !473)
!1769 = !DILocation(line: 614, column: 49, scope: !473)
!1770 = !DILocation(line: 614, column: 54, scope: !473)
!1771 = !DILocation(line: 614, column: 5, scope: !473)
!1772 = !DILocation(line: 617, column: 5, scope: !473)
!1773 = !DILocation(line: 617, column: 10, scope: !473)
!1774 = !DILocation(line: 617, column: 20, scope: !473)
!1775 = !DILocation(line: 617, column: 30, scope: !473)
!1776 = !DILocation(line: 618, column: 20, scope: !473)
!1777 = !DILocation(line: 618, column: 5, scope: !473)
!1778 = !DILocation(line: 620, column: 27, scope: !473)
!1779 = !DILocation(line: 620, column: 5, scope: !473)
!1780 = !DILocation(line: 621, column: 1, scope: !473)
!1781 = !DILocalVariable(name: "pkg", arg: 1, scope: !481, file: !242, line: 385, type: !245)
!1782 = !DILocation(line: 385, column: 63, scope: !481)
!1783 = !DILocalVariable(name: "rev_iter", scope: !481, file: !242, line: 386, type: !994)
!1784 = !DILocation(line: 386, column: 29, scope: !481)
!1785 = !DILocalVariable(name: "leftover", scope: !481, file: !242, line: 387, type: !388)
!1786 = !DILocation(line: 387, column: 30, scope: !481)
!1787 = !DILocalVariable(name: "namenode", scope: !481, file: !242, line: 388, type: !393)
!1788 = !DILocation(line: 388, column: 25, scope: !481)
!1789 = !DILocalVariable(name: "stab", scope: !481, file: !242, line: 390, type: !1005)
!1790 = !DILocation(line: 390, column: 15, scope: !481)
!1791 = !DILocation(line: 393, column: 33, scope: !481)
!1792 = !DILocation(line: 393, column: 3, scope: !481)
!1793 = !DILocation(line: 395, column: 18, scope: !481)
!1794 = !DILocation(line: 395, column: 3, scope: !481)
!1795 = !DILocation(line: 396, column: 3, scope: !481)
!1796 = !DILocation(line: 398, column: 38, scope: !481)
!1797 = !DILocation(line: 398, column: 43, scope: !481)
!1798 = !DILocation(line: 398, column: 3, scope: !481)
!1799 = !DILocation(line: 399, column: 12, scope: !481)
!1800 = !DILocation(line: 400, column: 3, scope: !481)
!1801 = !DILocation(line: 400, column: 22, scope: !1802)
!1802 = !DILexicalBlockFile(scope: !481, file: !242, discriminator: 1)
!1803 = !DILocation(line: 400, column: 20, scope: !1802)
!1804 = !DILocation(line: 400, column: 3, scope: !1802)
!1805 = !DILocalVariable(name: "usenode", scope: !1806, file: !242, line: 401, type: !393)
!1806 = distinct !DILexicalBlock(scope: !481, file: !242, line: 400, column: 59)
!1807 = !DILocation(line: 401, column: 27, scope: !1806)
!1808 = !DILocation(line: 404, column: 11, scope: !1806)
!1809 = !DILocation(line: 404, column: 21, scope: !1806)
!1810 = !DILocation(line: 404, column: 27, scope: !1806)
!1811 = !DILocation(line: 404, column: 37, scope: !1806)
!1812 = !DILocation(line: 403, column: 5, scope: !1806)
!1813 = !DILocation(line: 405, column: 9, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1806, file: !242, line: 405, column: 9)
!1815 = !DILocation(line: 405, column: 19, scope: !1814)
!1816 = !DILocation(line: 405, column: 25, scope: !1814)
!1817 = !DILocation(line: 405, column: 9, scope: !1806)
!1818 = !DILocation(line: 409, column: 59, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1814, file: !242, line: 405, column: 43)
!1820 = !DILocation(line: 409, column: 69, scope: !1819)
!1821 = !DILocation(line: 408, column: 7, scope: !1819)
!1822 = !DILocation(line: 410, column: 7, scope: !1819)
!1823 = distinct !{!1823, !1800}
!1824 = !DILocation(line: 413, column: 29, scope: !1806)
!1825 = !DILocation(line: 413, column: 39, scope: !1806)
!1826 = !DILocation(line: 413, column: 45, scope: !1806)
!1827 = !DILocation(line: 413, column: 50, scope: !1806)
!1828 = !DILocation(line: 413, column: 15, scope: !1806)
!1829 = !DILocation(line: 413, column: 13, scope: !1806)
!1830 = !DILocation(line: 415, column: 5, scope: !1806)
!1831 = !DILocation(line: 416, column: 27, scope: !1806)
!1832 = !DILocation(line: 416, column: 43, scope: !1806)
!1833 = !DILocation(line: 416, column: 36, scope: !1806)
!1834 = !DILocation(line: 416, column: 5, scope: !1835)
!1835 = !DILexicalBlockFile(scope: !1806, file: !242, discriminator: 1)
!1836 = !DILocation(line: 417, column: 27, scope: !1806)
!1837 = !DILocation(line: 417, column: 36, scope: !1806)
!1838 = !DILocation(line: 417, column: 49, scope: !1806)
!1839 = !DILocation(line: 417, column: 58, scope: !1806)
!1840 = !DILocation(line: 417, column: 42, scope: !1806)
!1841 = !DILocation(line: 417, column: 5, scope: !1835)
!1842 = !DILocation(line: 418, column: 5, scope: !1806)
!1843 = !DILocation(line: 420, column: 20, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1806, file: !242, line: 420, column: 9)
!1845 = !DILocation(line: 420, column: 10, scope: !1844)
!1846 = !DILocation(line: 420, column: 31, scope: !1844)
!1847 = !DILocation(line: 420, column: 38, scope: !1848)
!1848 = !DILexicalBlockFile(scope: !1844, file: !242, discriminator: 1)
!1849 = !DILocation(line: 420, column: 36, scope: !1848)
!1850 = !DILocation(line: 420, column: 47, scope: !1848)
!1851 = !DILocation(line: 420, column: 9, scope: !1848)
!1852 = !DILocation(line: 421, column: 7, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1844, file: !242, line: 420, column: 56)
!1854 = !DILocation(line: 425, column: 30, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1853, file: !242, line: 425, column: 11)
!1856 = !DILocation(line: 425, column: 40, scope: !1855)
!1857 = !DILocation(line: 425, column: 45, scope: !1855)
!1858 = !DILocation(line: 425, column: 11, scope: !1855)
!1859 = !DILocation(line: 425, column: 11, scope: !1853)
!1860 = !DILocation(line: 426, column: 34, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1855, file: !242, line: 425, column: 56)
!1862 = !DILocation(line: 426, column: 9, scope: !1861)
!1863 = !DILocation(line: 427, column: 9, scope: !1861)
!1864 = !DILocation(line: 429, column: 33, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1853, file: !242, line: 429, column: 11)
!1866 = !DILocation(line: 429, column: 43, scope: !1865)
!1867 = !DILocation(line: 429, column: 11, scope: !1865)
!1868 = !DILocation(line: 429, column: 11, scope: !1853)
!1869 = !DILocation(line: 430, column: 9, scope: !1865)
!1870 = !DILocation(line: 432, column: 18, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1853, file: !242, line: 432, column: 11)
!1872 = !DILocation(line: 432, column: 27, scope: !1871)
!1873 = !DILocation(line: 432, column: 11, scope: !1871)
!1874 = !DILocation(line: 432, column: 39, scope: !1871)
!1875 = !DILocation(line: 432, column: 11, scope: !1853)
!1876 = !DILocation(line: 434, column: 71, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1871, file: !242, line: 432, column: 45)
!1878 = !DILocation(line: 433, column: 9, scope: !1877)
!1879 = !DILocation(line: 435, column: 34, scope: !1877)
!1880 = !DILocation(line: 435, column: 9, scope: !1877)
!1881 = !DILocation(line: 436, column: 9, scope: !1877)
!1882 = !DILocation(line: 438, column: 5, scope: !1853)
!1883 = !DILocation(line: 440, column: 24, scope: !1806)
!1884 = !DILocation(line: 440, column: 33, scope: !1806)
!1885 = !DILocation(line: 440, column: 5, scope: !1806)
!1886 = !DILocation(line: 442, column: 66, scope: !1806)
!1887 = !DILocation(line: 442, column: 5, scope: !1806)
!1888 = !DILocation(line: 443, column: 21, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1806, file: !242, line: 443, column: 9)
!1890 = !DILocation(line: 443, column: 10, scope: !1889)
!1891 = !DILocation(line: 443, column: 26, scope: !1889)
!1892 = !DILocation(line: 443, column: 30, scope: !1893)
!1893 = !DILexicalBlockFile(scope: !1889, file: !242, discriminator: 1)
!1894 = !DILocation(line: 443, column: 29, scope: !1893)
!1895 = !DILocation(line: 443, column: 34, scope: !1893)
!1896 = !DILocation(line: 443, column: 44, scope: !1893)
!1897 = !DILocation(line: 443, column: 49, scope: !1898)
!1898 = !DILexicalBlockFile(scope: !1889, file: !242, discriminator: 2)
!1899 = !DILocation(line: 443, column: 48, scope: !1898)
!1900 = !DILocation(line: 443, column: 53, scope: !1898)
!1901 = !DILocation(line: 443, column: 9, scope: !1898)
!1902 = !DILocation(line: 443, column: 63, scope: !1903)
!1903 = !DILexicalBlockFile(scope: !1889, file: !242, discriminator: 3)
!1904 = !DILocation(line: 444, column: 10, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1806, file: !242, line: 444, column: 8)
!1906 = !DILocation(line: 444, column: 9, scope: !1905)
!1907 = !DILocation(line: 444, column: 14, scope: !1905)
!1908 = !DILocation(line: 444, column: 27, scope: !1905)
!1909 = !DILocation(line: 444, column: 32, scope: !1910)
!1910 = !DILexicalBlockFile(scope: !1905, file: !242, discriminator: 1)
!1911 = !DILocation(line: 444, column: 31, scope: !1910)
!1912 = !DILocation(line: 444, column: 36, scope: !1910)
!1913 = !DILocation(line: 444, column: 8, scope: !1910)
!1914 = !DILocation(line: 445, column: 15, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1905, file: !242, line: 444, column: 47)
!1916 = !DILocation(line: 446, column: 24, scope: !1915)
!1917 = !DILocation(line: 446, column: 15, scope: !1915)
!1918 = !DILocation(line: 446, column: 45, scope: !1915)
!1919 = !DILocation(line: 446, column: 55, scope: !1915)
!1920 = !DILocation(line: 445, column: 7, scope: !1921)
!1921 = !DILexicalBlockFile(scope: !1915, file: !242, discriminator: 1)
!1922 = !DILocation(line: 447, column: 31, scope: !1915)
!1923 = !DILocation(line: 447, column: 7, scope: !1915)
!1924 = !DILocation(line: 448, column: 7, scope: !1915)
!1925 = !DILocation(line: 449, column: 17, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1905, file: !242, line: 449, column: 15)
!1927 = !DILocation(line: 449, column: 16, scope: !1926)
!1928 = !DILocation(line: 449, column: 21, scope: !1926)
!1929 = !DILocation(line: 449, column: 30, scope: !1926)
!1930 = !DILocation(line: 449, column: 35, scope: !1931)
!1931 = !DILexicalBlockFile(scope: !1926, file: !242, discriminator: 1)
!1932 = !DILocation(line: 449, column: 34, scope: !1931)
!1933 = !DILocation(line: 449, column: 39, scope: !1931)
!1934 = !DILocation(line: 449, column: 15, scope: !1931)
!1935 = !DILocation(line: 450, column: 15, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1926, file: !242, line: 449, column: 49)
!1937 = !DILocation(line: 452, column: 24, scope: !1936)
!1938 = !DILocation(line: 452, column: 15, scope: !1936)
!1939 = !DILocation(line: 452, column: 45, scope: !1936)
!1940 = !DILocation(line: 452, column: 55, scope: !1936)
!1941 = !DILocation(line: 452, column: 71, scope: !1942)
!1942 = !DILexicalBlockFile(scope: !1936, file: !242, discriminator: 1)
!1943 = !DILocation(line: 452, column: 70, scope: !1936)
!1944 = !DILocation(line: 452, column: 61, scope: !1945)
!1945 = !DILexicalBlockFile(scope: !1936, file: !242, discriminator: 2)
!1946 = !DILocation(line: 450, column: 7, scope: !1942)
!1947 = !DILocation(line: 453, column: 31, scope: !1936)
!1948 = !DILocation(line: 453, column: 7, scope: !1936)
!1949 = !DILocation(line: 454, column: 7, scope: !1936)
!1950 = !DILocation(line: 456, column: 10, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1806, file: !242, line: 456, column: 8)
!1952 = !DILocation(line: 456, column: 9, scope: !1951)
!1953 = !DILocation(line: 456, column: 14, scope: !1951)
!1954 = !DILocation(line: 456, column: 8, scope: !1806)
!1955 = !DILocation(line: 457, column: 15, scope: !1951)
!1956 = !DILocation(line: 457, column: 55, scope: !1951)
!1957 = !DILocation(line: 457, column: 7, scope: !1958)
!1958 = !DILexicalBlockFile(scope: !1951, file: !242, discriminator: 1)
!1959 = !DILocation(line: 457, column: 7, scope: !1951)
!1960 = !DILocation(line: 459, column: 20, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1806, file: !242, line: 459, column: 9)
!1962 = !DILocation(line: 459, column: 9, scope: !1961)
!1963 = !DILocation(line: 459, column: 32, scope: !1961)
!1964 = !DILocation(line: 459, column: 37, scope: !1961)
!1965 = !DILocation(line: 459, column: 44, scope: !1966)
!1966 = !DILexicalBlockFile(scope: !1961, file: !242, discriminator: 1)
!1967 = !DILocation(line: 459, column: 42, scope: !1966)
!1968 = !DILocation(line: 459, column: 53, scope: !1966)
!1969 = !DILocation(line: 459, column: 9, scope: !1966)
!1970 = !DILocation(line: 460, column: 7, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1961, file: !242, line: 459, column: 62)
!1972 = !DILocation(line: 462, column: 23, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1971, file: !242, line: 462, column: 11)
!1974 = !DILocation(line: 462, column: 11, scope: !1973)
!1975 = !DILocation(line: 462, column: 11, scope: !1971)
!1976 = !DILocation(line: 463, column: 17, scope: !1973)
!1977 = !DILocation(line: 463, column: 57, scope: !1973)
!1978 = !DILocation(line: 463, column: 9, scope: !1979)
!1979 = !DILexicalBlockFile(scope: !1973, file: !242, discriminator: 1)
!1980 = !DILocation(line: 463, column: 9, scope: !1973)
!1981 = !DILocation(line: 465, column: 7, scope: !1971)
!1982 = !DILocation(line: 468, column: 29, scope: !1806)
!1983 = !DILocation(line: 468, column: 5, scope: !1806)
!1984 = !DILocation(line: 469, column: 5, scope: !1806)
!1985 = !DILocation(line: 471, column: 25, scope: !481)
!1986 = !DILocation(line: 471, column: 31, scope: !481)
!1987 = !DILocation(line: 471, column: 36, scope: !481)
!1988 = !DILocation(line: 471, column: 47, scope: !481)
!1989 = !DILocation(line: 471, column: 3, scope: !481)
!1990 = !DILocation(line: 473, column: 18, scope: !481)
!1991 = !DILocation(line: 473, column: 3, scope: !481)
!1992 = !DILocation(line: 474, column: 3, scope: !481)
!1993 = !DILocation(line: 475, column: 1, scope: !481)
!1994 = distinct !DISubprogram(name: "removal_bulk_file_is_shared", scope: !242, file: !242, line: 235, type: !1995, isLocal: true, isDefinition: true, scopeLine: 236, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !461)
!1995 = !DISubroutineType(types: !1996)
!1996 = !{!295, !245, !393}
!1997 = !DILocalVariable(name: "pkg", arg: 1, scope: !1994, file: !242, line: 235, type: !245)
!1998 = !DILocation(line: 235, column: 45, scope: !1994)
!1999 = !DILocalVariable(name: "namenode", arg: 2, scope: !1994, file: !242, line: 235, type: !393)
!2000 = !DILocation(line: 235, column: 72, scope: !1994)
!2001 = !DILocalVariable(name: "iter", scope: !1994, file: !242, line: 237, type: !2002)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64, align: 64)
!2003 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_node_pkgs_iter", file: !92, line: 160, flags: DIFlagFwdDecl)
!2004 = !DILocation(line: 237, column: 31, scope: !1994)
!2005 = !DILocalVariable(name: "otherpkg", scope: !1994, file: !242, line: 238, type: !245)
!2006 = !DILocation(line: 238, column: 19, scope: !1994)
!2007 = !DILocalVariable(name: "shared", scope: !1994, file: !242, line: 239, type: !295)
!2008 = !DILocation(line: 239, column: 7, scope: !1994)
!2009 = !DILocation(line: 241, column: 34, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !1994, file: !242, line: 241, column: 7)
!2011 = !DILocation(line: 241, column: 39, scope: !2010)
!2012 = !DILocation(line: 241, column: 7, scope: !2010)
!2013 = !DILocation(line: 241, column: 44, scope: !2010)
!2014 = !DILocation(line: 241, column: 7, scope: !1994)
!2015 = !DILocation(line: 242, column: 5, scope: !2010)
!2016 = !DILocation(line: 244, column: 34, scope: !1994)
!2017 = !DILocation(line: 244, column: 10, scope: !1994)
!2018 = !DILocation(line: 244, column: 8, scope: !1994)
!2019 = !DILocation(line: 245, column: 3, scope: !1994)
!2020 = !DILocation(line: 245, column: 47, scope: !2021)
!2021 = !DILexicalBlockFile(scope: !1994, file: !242, discriminator: 1)
!2022 = !DILocation(line: 245, column: 22, scope: !2021)
!2023 = !DILocation(line: 245, column: 20, scope: !2021)
!2024 = !DILocation(line: 245, column: 3, scope: !2021)
!2025 = !DILocation(line: 246, column: 9, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2027, file: !242, line: 246, column: 9)
!2027 = distinct !DILexicalBlock(scope: !1994, file: !242, line: 245, column: 55)
!2028 = !DILocation(line: 246, column: 21, scope: !2026)
!2029 = !DILocation(line: 246, column: 18, scope: !2026)
!2030 = !DILocation(line: 246, column: 9, scope: !2027)
!2031 = !DILocation(line: 247, column: 7, scope: !2026)
!2032 = distinct !{!2032, !2019}
!2033 = !DILocation(line: 248, column: 9, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !2027, file: !242, line: 248, column: 9)
!2035 = !DILocation(line: 248, column: 19, scope: !2034)
!2036 = !DILocation(line: 248, column: 26, scope: !2034)
!2037 = !DILocation(line: 248, column: 31, scope: !2034)
!2038 = !DILocation(line: 248, column: 23, scope: !2034)
!2039 = !DILocation(line: 248, column: 9, scope: !2027)
!2040 = !DILocation(line: 249, column: 7, scope: !2034)
!2041 = !DILocation(line: 252, column: 20, scope: !2027)
!2042 = !DILocation(line: 252, column: 11, scope: !2027)
!2043 = !DILocation(line: 251, column: 5, scope: !2027)
!2044 = !DILocation(line: 253, column: 12, scope: !2027)
!2045 = !DILocation(line: 254, column: 5, scope: !2027)
!2046 = !DILocation(line: 256, column: 28, scope: !1994)
!2047 = !DILocation(line: 256, column: 3, scope: !1994)
!2048 = !DILocation(line: 258, column: 10, scope: !1994)
!2049 = !DILocation(line: 258, column: 3, scope: !1994)
!2050 = !DILocation(line: 259, column: 1, scope: !1994)
!2051 = distinct !DISubprogram(name: "push_leftover", scope: !242, file: !242, line: 207, type: !2052, isLocal: true, isDefinition: true, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !461)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{null, !2054, !393}
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64, align: 64)
!2055 = !DILocalVariable(name: "leftoverp", arg: 1, scope: !2051, file: !242, line: 207, type: !2054)
!2056 = !DILocation(line: 207, column: 43, scope: !2051)
!2057 = !DILocalVariable(name: "namenode", arg: 2, scope: !2051, file: !242, line: 208, type: !393)
!2058 = !DILocation(line: 208, column: 37, scope: !2051)
!2059 = !DILocalVariable(name: "newentry", scope: !2051, file: !242, line: 210, type: !388)
!2060 = !DILocation(line: 210, column: 30, scope: !2051)
!2061 = !DILocation(line: 212, column: 14, scope: !2051)
!2062 = !DILocation(line: 212, column: 12, scope: !2051)
!2063 = !DILocation(line: 213, column: 20, scope: !2051)
!2064 = !DILocation(line: 213, column: 19, scope: !2051)
!2065 = !DILocation(line: 213, column: 3, scope: !2051)
!2066 = !DILocation(line: 213, column: 13, scope: !2051)
!2067 = !DILocation(line: 213, column: 17, scope: !2051)
!2068 = !DILocation(line: 214, column: 23, scope: !2051)
!2069 = !DILocation(line: 214, column: 3, scope: !2051)
!2070 = !DILocation(line: 214, column: 13, scope: !2051)
!2071 = !DILocation(line: 214, column: 21, scope: !2051)
!2072 = !DILocation(line: 215, column: 15, scope: !2051)
!2073 = !DILocation(line: 215, column: 4, scope: !2051)
!2074 = !DILocation(line: 215, column: 13, scope: !2051)
!2075 = !DILocation(line: 216, column: 1, scope: !2051)
!2076 = distinct !DISubprogram(name: "removal_bulk_remove_file", scope: !242, file: !242, line: 219, type: !2077, isLocal: true, isDefinition: true, scopeLine: 220, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !461)
!2077 = !DISubroutineType(types: !2078)
!2078 = !{null, !254, !254}
!2079 = !DILocalVariable(name: "filename", arg: 1, scope: !2076, file: !242, line: 219, type: !254)
!2080 = !DILocation(line: 219, column: 38, scope: !2076)
!2081 = !DILocalVariable(name: "filetype", arg: 2, scope: !2076, file: !242, line: 219, type: !254)
!2082 = !DILocation(line: 219, column: 60, scope: !2076)
!2083 = !DILocation(line: 222, column: 14, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2076, file: !242, line: 222, column: 7)
!2085 = !DILocation(line: 222, column: 7, scope: !2084)
!2086 = !DILocation(line: 222, column: 32, scope: !2084)
!2087 = !DILocation(line: 222, column: 37, scope: !2084)
!2088 = !DILocation(line: 223, column: 14, scope: !2084)
!2089 = !DILocation(line: 223, column: 7, scope: !2084)
!2090 = !DILocation(line: 223, column: 34, scope: !2084)
!2091 = !DILocation(line: 222, column: 7, scope: !2092)
!2092 = !DILexicalBlockFile(scope: !2076, file: !242, discriminator: 1)
!2093 = !DILocation(line: 224, column: 5, scope: !2084)
!2094 = !DILocation(line: 226, column: 3, scope: !2076)
!2095 = !DILocation(line: 228, column: 14, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2076, file: !242, line: 228, column: 7)
!2097 = !DILocation(line: 228, column: 7, scope: !2096)
!2098 = !DILocation(line: 228, column: 7, scope: !2076)
!2099 = !DILocation(line: 229, column: 13, scope: !2096)
!2100 = !DILocation(line: 229, column: 69, scope: !2096)
!2101 = !DILocation(line: 229, column: 5, scope: !2102)
!2102 = !DILexicalBlockFile(scope: !2096, file: !242, discriminator: 1)
!2103 = !DILocation(line: 229, column: 5, scope: !2096)
!2104 = !DILocation(line: 231, column: 55, scope: !2076)
!2105 = !DILocation(line: 231, column: 3, scope: !2076)
!2106 = !DILocation(line: 232, column: 1, scope: !2076)
!2107 = !DILocation(line: 232, column: 1, scope: !2092)
!2108 = distinct !DISubprogram(name: "c_isdigit", scope: !227, file: !227, line: 78, type: !2109, isLocal: true, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !461)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{!295, !299}
!2111 = !DILocalVariable(name: "c", arg: 1, scope: !2108, file: !227, line: 78, type: !299)
!2112 = !DILocation(line: 78, column: 15, scope: !2108)
!2113 = !DILocation(line: 80, column: 18, scope: !2108)
!2114 = !DILocation(line: 80, column: 9, scope: !2108)
!2115 = !DILocation(line: 80, column: 2, scope: !2108)
