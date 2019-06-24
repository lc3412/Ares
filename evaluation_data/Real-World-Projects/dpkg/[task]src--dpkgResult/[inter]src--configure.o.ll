; ModuleID = './[inter]src--configure.o.i'
source_filename = "./[inter]src--configure.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.varbuf = type { i64, i64, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
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
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.dpkg_error = type { i32, i32, i8* }
%struct.pager = type opaque
%struct.command = type { i8*, i8*, i32, i32, i8** }

@.str = private unnamed_addr constant [53 x i8] c"no package named '%s' is installed, cannot configure\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"package %.250s is already installed and configured\00", align 1
@.str.2 = private unnamed_addr constant [90 x i8] c"package %.250s is not ready for configuration\0A cannot configure (current status '%.250s')\00", align 1
@.str.3 = private unnamed_addr constant [78 x i8] c"package %s cannot be configured because %s is not ready (current status '%s')\00", align 1
@.str.4 = private unnamed_addr constant [77 x i8] c"package %s %s cannot be configured because %s is at a different version (%s)\00", align 1
@dependtry = external global i32, align 4
@sincenothing = external global i32, align 4
@.str.5 = private unnamed_addr constant [52 x i8] c"dependency problems prevent configuration of %s:\0A%s\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"dependency problems - leaving unconfigured\00", align 1
@.str.7 = private unnamed_addr constant [69 x i8] c"%s: dependency problems, but configuring anyway as you requested:\0A%s\00", align 1
@.str.8 = private unnamed_addr constant [102 x i8] c"package is in a very bad inconsistent state; you should\0A reinstall it before attempting configuration\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"Setting up %s (%s) ...\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"configure\00", align 1
@f_noact = external global i32, align 4
@.str.11 = private unnamed_addr constant [38 x i8] c"deferred_configure updating conffiles\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"configure.c\00", align 1
@__func__.deferred_configure = private unnamed_addr constant [19 x i8] c"deferred_configure\00", align 1
@.str.13 = private unnamed_addr constant [51 x i8] c"package %s in state %s, instead of half-configured\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@conffderef.target = internal global %struct.varbuf zeroinitializer, align 8
@instdir = external global i8*, align 8
@.str.15 = private unnamed_addr constant [40 x i8] c"conffderef in='%s' current working='%s'\00", align 1
@.str.16 = private unnamed_addr constant [50 x i8] c"%s: unable to stat config file '%s'\0A (= '%s'): %s\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"conffderef nonexistent\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"conffderef in='%s' result='%s'\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"conffderef symlink loopprotect=%d\00", align 1
@.str.20 = private unnamed_addr constant [50 x i8] c"%s: config file '%s' is a circular link\0A (= '%s')\00", align 1
@.str.21 = private unnamed_addr constant [51 x i8] c"%s: unable to readlink conffile '%s'\0A (= '%s'): %s\00", align 1
@.str.22 = private unnamed_addr constant [56 x i8] c"symbolic link '%.250s' size has changed from %jd to %zd\00", align 1
@.str.23 = private unnamed_addr constant [35 x i8] c"conffderef readlink gave %zd, '%s'\00", align 1
@.str.24 = private unnamed_addr constant [29 x i8] c"conffderef readlink absolute\00", align 1
@.str.25 = private unnamed_addr constant [83 x i8] c"%s: conffile '%.250s' resolves to degenerate filename\0A ('%s' is a symlink to '%s')\00", align 1
@.str.26 = private unnamed_addr constant [39 x i8] c"conffderef readlink relative to '%.*s'\00", align 1
@.str.27 = private unnamed_addr constant [62 x i8] c"%s: conffile '%.250s' is not a plain file or symlink (= '%s')\00", align 1
@md5hash.fd = internal global i32 0, align 4
@.str.28 = private unnamed_addr constant [42 x i8] c"cannot compute MD5 hash for file '%s': %s\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"nonexistent\00", align 1
@.str.30 = private unnamed_addr constant [35 x i8] c"%s: unable to open %s for hash: %s\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c".dpkg-new\00", align 1
@.str.33 = private unnamed_addr constant [49 x i8] c"unable to stat new distributed conffile '%.250s'\00", align 1
@.str.34 = private unnamed_addr constant [51 x i8] c"unable to stat current installed conffile '%.250s'\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.35 = private unnamed_addr constant [98 x i8] c"\0AConfiguration file '%s', does not exist on system.\0AInstalling new config file as you requested.\0A\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"newconffile\00", align 1
@conffoptcells = internal global [2 x [2 x i32]] [[2 x i32] [i32 2, i32 4], [2 x i32] [i32 2, i32 3]], align 16
@.str.37 = private unnamed_addr constant [69 x i8] c"deferred_configure '%s' (= '%s') useredited=%d distedited=%d what=%o\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c".dpkg-old\00", align 1
@.str.39 = private unnamed_addr constant [45 x i8] c"%s: failed to remove old backup '%.250s': %s\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c".dpkg-dist\00", align 1
@.str.41 = private unnamed_addr constant [46 x i8] c"%s: failed to rename '%.250s' to '%.250s': %s\00", align 1
@.str.42 = private unnamed_addr constant [34 x i8] c"%s: failed to remove '%.250s': %s\00", align 1
@.str.43 = private unnamed_addr constant [58 x i8] c"%s: failed to remove old distributed version '%.250s': %s\00", align 1
@.str.44 = private unnamed_addr constant [53 x i8] c"%s: failed to remove '%.250s' (before overwrite): %s\00", align 1
@.str.45 = private unnamed_addr constant [44 x i8] c"%s: failed to link '%.250s' to '%.250s': %s\00", align 1
@.str.46 = private unnamed_addr constant [46 x i8] c"Installing new version of config file %s ...\0A\00", align 1
@.str.47 = private unnamed_addr constant [39 x i8] c"unable to install '%.250s' as '%.250s'\00", align 1
@__func__.deferred_configure_conffile = private unnamed_addr constant [28 x i8] c"deferred_configure_conffile\00", align 1
@.str.48 = private unnamed_addr constant [22 x i8] c"unknown conffopt '%d'\00", align 1
@.str.49 = private unnamed_addr constant [35 x i8] c"status: %s : %s : '%s' '%s' %i %i \00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"conffile-prompt\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"yino\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"conffile %s %s\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"install\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"keep\00", align 1
@__func__.promptconfaction = private unnamed_addr constant [17 x i8] c"promptconfaction\00", align 1
@.str.55 = private unnamed_addr constant [22 x i8] c"unknown response '%d'\00", align 1
@.str.56 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.57 = private unnamed_addr constant [25 x i8] c"Configuration file '%s'\0A\00", align 1
@.str.58 = private unnamed_addr constant [41 x i8] c"Configuration file '%s' (actually '%s')\0A\00", align 1
@.str.59 = private unnamed_addr constant [110 x i8] c" ==> File on system created by you or by a script.\0A ==> File also in package provided by package maintainer.\0A\00", align 1
@.str.60 = private unnamed_addr constant [39 x i8] c"     Not modified since installation.\0A\00", align 1
@.str.61 = private unnamed_addr constant [59 x i8] c" ==> Modified (by you or by a script) since installation.\0A\00", align 1
@.str.62 = private unnamed_addr constant [58 x i8] c" ==> Deleted (by you or by a script) since installation.\0A\00", align 1
@.str.63 = private unnamed_addr constant [58 x i8] c" ==> Package distributor has shipped an updated version.\0A\00", align 1
@.str.64 = private unnamed_addr constant [62 x i8] c"     Version in package is the same as at last installation.\0A\00", align 1
@.str.65 = private unnamed_addr constant [39 x i8] c" ==> Using new file as you requested.\0A\00", align 1
@.str.66 = private unnamed_addr constant [47 x i8] c" ==> Using current old file as you requested.\0A\00", align 1
@.str.67 = private unnamed_addr constant [42 x i8] c" ==> Keeping old config file as default.\0A\00", align 1
@.str.68 = private unnamed_addr constant [40 x i8] c" ==> Using new config file as default.\0A\00", align 1
@.str.69 = private unnamed_addr constant [276 x i8] c"   What would you like to do about it ?  Your options are:\0A    Y or I  : install the package maintainer's version\0A    N or O  : keep your currently-installed version\0A      D     : show the differences between the versions\0A      Z     : start a shell to examine the situation\0A\00", align 1
@.str.70 = private unnamed_addr constant [54 x i8] c" The default action is to keep your current version.\0A\00", align 1
@.str.71 = private unnamed_addr constant [52 x i8] c" The default action is to install the new version.\0A\00", align 1
@.str.72 = private unnamed_addr constant [27 x i8] c"*** %s (Y/I/N/O/D/Z) %s ? \00", align 1
@.str.73 = private unnamed_addr constant [12 x i8] c"[default=N]\00", align 1
@.str.74 = private unnamed_addr constant [12 x i8] c"[default=Y]\00", align 1
@.str.75 = private unnamed_addr constant [13 x i8] c"[no default]\00", align 1
@.str.76 = private unnamed_addr constant [59 x i8] c"error writing to stderr, discovered before conffile prompt\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@.str.77 = private unnamed_addr constant [39 x i8] c"read error on stdin at conffile prompt\00", align 1
@.str.78 = private unnamed_addr constant [40 x i8] c"end of file on stdin at conffile prompt\00", align 1
@.str.79 = private unnamed_addr constant [31 x i8] c"conffile difference visualizer\00", align 1
@.str.80 = private unnamed_addr constant [5 x i8] c"diff\00", align 1
@.str.81 = private unnamed_addr constant [4 x i8] c"-Nu\00", align 1
@.str.82 = private unnamed_addr constant [31 x i8] c"Useful environment variables:\0A\00", align 1
@.str.83 = private unnamed_addr constant [22 x i8] c" - DPKG_SHELL_REASON\0A\00", align 1
@.str.84 = private unnamed_addr constant [22 x i8] c" - DPKG_CONFFILE_OLD\0A\00", align 1
@.str.85 = private unnamed_addr constant [22 x i8] c" - DPKG_CONFFILE_NEW\0A\00", align 1
@.str.86 = private unnamed_addr constant [31 x i8] c"Type 'exit' when you're done.\0A\00", align 1
@.str.87 = private unnamed_addr constant [18 x i8] c"DPKG_SHELL_REASON\00", align 1
@.str.88 = private unnamed_addr constant [18 x i8] c"DPKG_CONFFILE_OLD\00", align 1
@.str.89 = private unnamed_addr constant [18 x i8] c"DPKG_CONFFILE_NEW\00", align 1
@.str.90 = private unnamed_addr constant [15 x i8] c"conffile shell\00", align 1

; Function Attrs: nounwind uwtable
define void @deferred_configure(%struct.pkginfo*) #0 !dbg !480 {
  %2 = alloca %struct.pkginfo*, align 8
  %3 = alloca %struct.varbuf, align 8
  %4 = alloca %struct.conffile*, align 8
  %5 = alloca %struct.pkginfo*, align 8
  %6 = alloca i32, align 4
  store %struct.pkginfo* %0, %struct.pkginfo** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %2, metadata !483, metadata !484), !dbg !485
  call void @llvm.dbg.declare(metadata %struct.varbuf* %3, metadata !486, metadata !484), !dbg !487
  %7 = bitcast %struct.varbuf* %3 to i8*, !dbg !487
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 24, i32 8, i1 false), !dbg !487
  call void @llvm.dbg.declare(metadata %struct.conffile** %4, metadata !488, metadata !484), !dbg !489
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %5, metadata !490, metadata !484), !dbg !491
  call void @llvm.dbg.declare(metadata i32* %6, metadata !492, metadata !484), !dbg !493
  %8 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !494
  %9 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %8, i32 0, i32 4, !dbg !496
  %10 = load i32, i32* %9, align 8, !dbg !496
  %11 = icmp eq i32 %10, 0, !dbg !497
  br i1 %11, label %12, label %16, !dbg !498

; <label>:12:                                     ; preds = %1
  %13 = call i8* @gettext(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i32 0, i32 0)) #8, !dbg !499
  %14 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !500
  %15 = call i8* @pkg_name(%struct.pkginfo* %14, i32 1), !dbg !501
  call void (i8*, ...) @ohshit(i8* %13, i8* %15) #9, !dbg !502
  unreachable, !dbg !504

; <label>:16:                                     ; preds = %1
  %17 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !505
  %18 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %17, i32 0, i32 4, !dbg !507
  %19 = load i32, i32* %18, align 8, !dbg !507
  %20 = icmp eq i32 %19, 7, !dbg !508
  br i1 %20, label %21, label %25, !dbg !509

; <label>:21:                                     ; preds = %16
  %22 = call i8* @gettext(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0)) #8, !dbg !510
  %23 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !511
  %24 = call i8* @pkg_name(%struct.pkginfo* %23, i32 1), !dbg !512
  call void (i8*, ...) @ohshit(i8* %22, i8* %24) #9, !dbg !513
  unreachable, !dbg !515

; <label>:25:                                     ; preds = %16
  %26 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !516
  %27 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %26, i32 0, i32 4, !dbg !518
  %28 = load i32, i32* %27, align 8, !dbg !518
  %29 = icmp ne i32 %28, 3, !dbg !519
  br i1 %29, label %30, label %41, !dbg !520

; <label>:30:                                     ; preds = %25
  %31 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !521
  %32 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %31, i32 0, i32 4, !dbg !522
  %33 = load i32, i32* %32, align 8, !dbg !522
  %34 = icmp ne i32 %33, 4, !dbg !523
  br i1 %34, label %35, label %41, !dbg !524

; <label>:35:                                     ; preds = %30
  %36 = call i8* @gettext(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.2, i32 0, i32 0)) #8, !dbg !526
  %37 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !527
  %38 = call i8* @pkg_name(%struct.pkginfo* %37, i32 1), !dbg !528
  %39 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !529
  %40 = call i8* @pkg_status_name(%struct.pkginfo* %39), !dbg !530
  call void (i8*, ...) @ohshit(i8* %36, i8* %38, i8* %40) #9, !dbg !531
  unreachable, !dbg !533

; <label>:41:                                     ; preds = %30, %25
  %42 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !534
  %43 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %42, i32 0, i32 0, !dbg !536
  %44 = load %struct.pkgset*, %struct.pkgset** %43, align 8, !dbg !536
  %45 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %44, i32 0, i32 2, !dbg !537
  store %struct.pkginfo* %45, %struct.pkginfo** %5, align 8, !dbg !538
  br label %46, !dbg !539

; <label>:46:                                     ; preds = %97, %41
  %47 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !540
  %48 = icmp ne %struct.pkginfo* %47, null, !dbg !543
  br i1 %48, label %49, label %101, !dbg !543

; <label>:49:                                     ; preds = %46
  %50 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !544
  %51 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !547
  %52 = icmp eq %struct.pkginfo* %50, %51, !dbg !548
  br i1 %52, label %53, label %54, !dbg !549

; <label>:53:                                     ; preds = %49
  br label %97, !dbg !550

; <label>:54:                                     ; preds = %49
  %55 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !551
  %56 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %55, i32 0, i32 4, !dbg !553
  %57 = load i32, i32* %56, align 8, !dbg !553
  %58 = icmp ule i32 %57, 1, !dbg !554
  br i1 %58, label %59, label %60, !dbg !555

; <label>:59:                                     ; preds = %54
  br label %97, !dbg !556

; <label>:60:                                     ; preds = %54
  %61 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !557
  %62 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %61, i32 0, i32 4, !dbg !559
  %63 = load i32, i32* %62, align 8, !dbg !559
  %64 = icmp ult i32 %63, 3, !dbg !560
  br i1 %64, label %65, label %73, !dbg !561

; <label>:65:                                     ; preds = %60
  %66 = call i8* @gettext(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.3, i32 0, i32 0)) #8, !dbg !562
  %67 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !563
  %68 = call i8* @pkg_name(%struct.pkginfo* %67, i32 3), !dbg !564
  %69 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !565
  %70 = call i8* @pkg_name(%struct.pkginfo* %69, i32 3), !dbg !566
  %71 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !567
  %72 = call i8* @pkg_status_name(%struct.pkginfo* %71), !dbg !568
  call void (i8*, ...) @ohshit(i8* %66, i8* %68, i8* %70, i8* %72) #9, !dbg !569
  unreachable, !dbg !571

; <label>:73:                                     ; preds = %60
  %74 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !572
  %75 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %74, i32 0, i32 9, !dbg !574
  %76 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %75, i32 0, i32 11, !dbg !575
  %77 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !576
  %78 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %77, i32 0, i32 9, !dbg !577
  %79 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %78, i32 0, i32 11, !dbg !578
  %80 = call i32 @dpkg_version_compare(%struct.dpkg_version* %76, %struct.dpkg_version* %79), !dbg !579
  %81 = icmp ne i32 %80, 0, !dbg !579
  br i1 %81, label %82, label %96, !dbg !580

; <label>:82:                                     ; preds = %73
  %83 = call i8* @gettext(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.4, i32 0, i32 0)) #8, !dbg !581
  %84 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !582
  %85 = call i8* @pkg_name(%struct.pkginfo* %84, i32 3), !dbg !583
  %86 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !584
  %87 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %86, i32 0, i32 9, !dbg !585
  %88 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %87, i32 0, i32 11, !dbg !586
  %89 = call i8* @versiondescribe(%struct.dpkg_version* %88, i32 1), !dbg !587
  %90 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !588
  %91 = call i8* @pkg_name(%struct.pkginfo* %90, i32 3), !dbg !589
  %92 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !590
  %93 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %92, i32 0, i32 9, !dbg !591
  %94 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %93, i32 0, i32 11, !dbg !592
  %95 = call i8* @versiondescribe(%struct.dpkg_version* %94, i32 1), !dbg !593
  call void (i8*, ...) @ohshit(i8* %83, i8* %85, i8* %89, i8* %91, i8* %95) #9, !dbg !594
  unreachable, !dbg !596

; <label>:96:                                     ; preds = %73
  br label %97, !dbg !597

; <label>:97:                                     ; preds = %96, %59, %53
  %98 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !598
  %99 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %98, i32 0, i32 1, !dbg !600
  %100 = load %struct.pkginfo*, %struct.pkginfo** %99, align 8, !dbg !600
  store %struct.pkginfo* %100, %struct.pkginfo** %5, align 8, !dbg !601
  br label %46, !dbg !602, !llvm.loop !603

; <label>:101:                                    ; preds = %46
  %102 = load i32, i32* @dependtry, align 4, !dbg !605
  %103 = icmp uge i32 %102, 2, !dbg !607
  br i1 %103, label %104, label %109, !dbg !608

; <label>:104:                                    ; preds = %101
  %105 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !609
  %106 = call zeroext i1 @findbreakcycle(%struct.pkginfo* %105), !dbg !611
  br i1 %106, label %107, label %108, !dbg !612

; <label>:107:                                    ; preds = %104
  store i32 0, i32* @sincenothing, align 4, !dbg !613
  br label %108, !dbg !614

; <label>:108:                                    ; preds = %107, %104
  br label %109, !dbg !615

; <label>:109:                                    ; preds = %108, %101
  %110 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !617
  %111 = call i32 @dependencies_ok(%struct.pkginfo* %110, %struct.pkginfo* null, %struct.varbuf* %3), !dbg !618
  store i32 %111, i32* %6, align 4, !dbg !619
  %112 = load i32, i32* %6, align 4, !dbg !620
  %113 = icmp eq i32 %112, 1, !dbg !622
  br i1 %113, label %114, label %121, !dbg !623

; <label>:114:                                    ; preds = %109
  call void @varbuf_destroy(%struct.varbuf* %3), !dbg !624
  %115 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !626
  call void @ensure_package_clientdata(%struct.pkginfo* %115), !dbg !627
  %116 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !628
  %117 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %116, i32 0, i32 11, !dbg !629
  %118 = load %struct.perpackagestate*, %struct.perpackagestate** %117, align 8, !dbg !629
  %119 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %118, i32 0, i32 0, !dbg !630
  store i32 2, i32* %119, align 8, !dbg !631
  %120 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !632
  call void @enqueue_package(%struct.pkginfo* %120), !dbg !633
  br label %237, !dbg !634

; <label>:121:                                    ; preds = %109
  call void @trigproc_reset_cycle(), !dbg !635
  %122 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !636
  %123 = call i32 @breakses_ok(%struct.pkginfo* %122, %struct.varbuf* %3), !dbg !637
  %124 = icmp ne i32 %123, 0, !dbg !637
  br i1 %124, label %125, label %127, !dbg !637

; <label>:125:                                    ; preds = %121
  %126 = load i32, i32* %6, align 4, !dbg !638
  br label %128, !dbg !639

; <label>:127:                                    ; preds = %121
  br label %128, !dbg !640

; <label>:128:                                    ; preds = %127, %125
  %129 = phi i32 [ %126, %125 ], [ 0, %127 ], !dbg !642
  store i32 %129, i32* %6, align 4, !dbg !644
  %130 = load i32, i32* %6, align 4, !dbg !645
  %131 = icmp eq i32 %130, 0, !dbg !647
  br i1 %131, label %132, label %139, !dbg !648

; <label>:132:                                    ; preds = %128
  store i32 0, i32* @sincenothing, align 4, !dbg !649
  call void @varbuf_end_str(%struct.varbuf* %3), !dbg !651
  %133 = call i8* @gettext(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i32 0, i32 0)) #8, !dbg !652
  %134 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !653
  %135 = call i8* @pkg_name(%struct.pkginfo* %134, i32 1), !dbg !654
  %136 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %3, i32 0, i32 2, !dbg !655
  %137 = load i8*, i8** %136, align 8, !dbg !655
  call void (i8*, ...) @notice(i8* %133, i8* %135, i8* %137), !dbg !656
  call void @varbuf_destroy(%struct.varbuf* %3), !dbg !658
  %138 = call i8* @gettext(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i32 0, i32 0)) #8, !dbg !659
  call void (i8*, ...) @ohshit(i8* %138) #9, !dbg !660
  unreachable, !dbg !661

; <label>:139:                                    ; preds = %128
  %140 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %3, i32 0, i32 0, !dbg !662
  %141 = load i64, i64* %140, align 8, !dbg !662
  %142 = icmp ne i64 %141, 0, !dbg !664
  br i1 %142, label %143, label %149, !dbg !665

; <label>:143:                                    ; preds = %139
  call void @varbuf_end_str(%struct.varbuf* %3), !dbg !666
  %144 = call i8* @gettext(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.7, i32 0, i32 0)) #8, !dbg !668
  %145 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !669
  %146 = call i8* @pkg_name(%struct.pkginfo* %145, i32 1), !dbg !670
  %147 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %3, i32 0, i32 2, !dbg !671
  %148 = load i8*, i8** %147, align 8, !dbg !671
  call void (i8*, ...) @notice(i8* %144, i8* %146, i8* %148), !dbg !672
  br label %149, !dbg !674

; <label>:149:                                    ; preds = %143, %139
  br label %150

; <label>:150:                                    ; preds = %149
  call void @varbuf_destroy(%struct.varbuf* %3), !dbg !675
  store i32 0, i32* @sincenothing, align 4, !dbg !676
  %151 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !677
  %152 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %151, i32 0, i32 3, !dbg !679
  %153 = load i32, i32* %152, align 4, !dbg !679
  %154 = and i32 %153, 1, !dbg !680
  %155 = icmp ne i32 %154, 0, !dbg !680
  br i1 %155, label %156, label %158, !dbg !681

; <label>:156:                                    ; preds = %150
  %157 = call i8* @gettext(i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.8, i32 0, i32 0)) #8, !dbg !682
  call void (i32, i8*, ...) @forcibleerr(i32 2097152, i8* %157), !dbg !683
  br label %158, !dbg !683

; <label>:158:                                    ; preds = %156, %150
  %159 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i32 0, i32 0)) #8, !dbg !684
  %160 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !685
  %161 = call i8* @pkg_name(%struct.pkginfo* %160, i32 1), !dbg !686
  %162 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !687
  %163 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %162, i32 0, i32 9, !dbg !688
  %164 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %163, i32 0, i32 11, !dbg !689
  %165 = call i8* @versiondescribe(%struct.dpkg_version* %164, i32 1), !dbg !690
  %166 = call i32 (i8*, ...) @printf(i8* %159, i8* %161, i8* %165), !dbg !691
  %167 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !692
  %168 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !693
  %169 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %168, i32 0, i32 9, !dbg !694
  call void @log_action(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), %struct.pkginfo* %167, %struct.pkgbin* %169), !dbg !695
  %170 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !696
  call void @trig_activate_packageprocessing(%struct.pkginfo* %170), !dbg !697
  %171 = load i32, i32* @f_noact, align 4, !dbg !698
  %172 = icmp ne i32 %171, 0, !dbg !698
  br i1 %172, label %173, label %180, !dbg !700

; <label>:173:                                    ; preds = %158
  %174 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !701
  call void @pkg_set_status(%struct.pkginfo* %174, i32 7), !dbg !703
  %175 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !704
  call void @ensure_package_clientdata(%struct.pkginfo* %175), !dbg !705
  %176 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !706
  %177 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %176, i32 0, i32 11, !dbg !707
  %178 = load %struct.perpackagestate*, %struct.perpackagestate** %177, align 8, !dbg !707
  %179 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %178, i32 0, i32 0, !dbg !708
  store i32 0, i32* %179, align 8, !dbg !709
  br label %237, !dbg !710

; <label>:180:                                    ; preds = %158
  %181 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !711
  %182 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %181, i32 0, i32 4, !dbg !713
  %183 = load i32, i32* %182, align 8, !dbg !713
  %184 = icmp eq i32 %183, 3, !dbg !714
  br i1 %184, label %185, label %209, !dbg !715

; <label>:185:                                    ; preds = %180
  call void (i32, i8*, ...) @debug(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i32 0, i32 0)), !dbg !716
  %186 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !718
  call void @modstatdb_note(%struct.pkginfo* %186), !dbg !719
  %187 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !720
  %188 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %187, i32 0, i32 9, !dbg !722
  %189 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %188, i32 0, i32 12, !dbg !723
  %190 = load %struct.conffile*, %struct.conffile** %189, align 8, !dbg !723
  store %struct.conffile* %190, %struct.conffile** %4, align 8, !dbg !724
  br label %191, !dbg !725

; <label>:191:                                    ; preds = %203, %185
  %192 = load %struct.conffile*, %struct.conffile** %4, align 8, !dbg !726
  %193 = icmp ne %struct.conffile* %192, null, !dbg !729
  br i1 %193, label %194, label %207, !dbg !729

; <label>:194:                                    ; preds = %191
  %195 = load %struct.conffile*, %struct.conffile** %4, align 8, !dbg !730
  %196 = getelementptr inbounds %struct.conffile, %struct.conffile* %195, i32 0, i32 3, !dbg !733
  %197 = load i8, i8* %196, align 8, !dbg !733
  %198 = trunc i8 %197 to i1, !dbg !733
  br i1 %198, label %199, label %200, !dbg !734

; <label>:199:                                    ; preds = %194
  br label %203, !dbg !735

; <label>:200:                                    ; preds = %194
  %201 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !736
  %202 = load %struct.conffile*, %struct.conffile** %4, align 8, !dbg !737
  call void @deferred_configure_conffile(%struct.pkginfo* %201, %struct.conffile* %202), !dbg !738
  br label %203, !dbg !739

; <label>:203:                                    ; preds = %200, %199
  %204 = load %struct.conffile*, %struct.conffile** %4, align 8, !dbg !740
  %205 = getelementptr inbounds %struct.conffile, %struct.conffile* %204, i32 0, i32 0, !dbg !742
  %206 = load %struct.conffile*, %struct.conffile** %205, align 8, !dbg !742
  store %struct.conffile* %206, %struct.conffile** %4, align 8, !dbg !743
  br label %191, !dbg !744, !llvm.loop !745

; <label>:207:                                    ; preds = %191
  %208 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !747
  call void @pkg_set_status(%struct.pkginfo* %208, i32 4), !dbg !748
  br label %209, !dbg !749

; <label>:209:                                    ; preds = %207, %180
  %210 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !750
  %211 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %210, i32 0, i32 4, !dbg !752
  %212 = load i32, i32* %211, align 8, !dbg !752
  %213 = icmp ne i32 %212, 4, !dbg !753
  br i1 %213, label %214, label %219, !dbg !754

; <label>:214:                                    ; preds = %209
  %215 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !755
  %216 = call i8* @pkg_name(%struct.pkginfo* %215, i32 3), !dbg !756
  %217 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !757
  %218 = call i8* @pkg_status_name(%struct.pkginfo* %217), !dbg !758
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i32 673, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.deferred_configure, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.13, i32 0, i32 0), i8* %216, i8* %218) #9, !dbg !760
  unreachable, !dbg !762

; <label>:219:                                    ; preds = %209
  %220 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !763
  call void @modstatdb_note(%struct.pkginfo* %220), !dbg !764
  %221 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !765
  %222 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !766
  %223 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %222, i32 0, i32 8, !dbg !767
  %224 = call zeroext i1 @dpkg_version_is_informative(%struct.dpkg_version* %223), !dbg !768
  br i1 %224, label %225, label %229, !dbg !768

; <label>:225:                                    ; preds = %219
  %226 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !769
  %227 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %226, i32 0, i32 8, !dbg !770
  %228 = call i8* @versiondescribe(%struct.dpkg_version* %227, i32 1), !dbg !771
  br label %230, !dbg !772

; <label>:229:                                    ; preds = %219
  br label %230, !dbg !773

; <label>:230:                                    ; preds = %229, %225
  %231 = phi i8* [ %228, %225 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i32 0, i32 0), %229 ], !dbg !774
  %232 = call i32 (%struct.pkginfo*, ...) @maintscript_postinst(%struct.pkginfo* %221, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* %231, i8* null), !dbg !775
  %233 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !776
  call void @pkg_reset_eflags(%struct.pkginfo* %233), !dbg !777
  %234 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !778
  %235 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %234, i32 0, i32 15, !dbg !779
  store %struct.trigpend* null, %struct.trigpend** %235, align 8, !dbg !780
  %236 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !781
  call void @post_postinst_tasks(%struct.pkginfo* %236, i32 7), !dbg !782
  br label %237, !dbg !783

; <label>:237:                                    ; preds = %230, %173, %114
  ret void, !dbg !784
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

; Function Attrs: noreturn
declare void @ohshit(i8*, ...) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare i8* @pkg_name(%struct.pkginfo*, i32) #5

declare i8* @pkg_status_name(%struct.pkginfo*) #5

declare i32 @dpkg_version_compare(%struct.dpkg_version*, %struct.dpkg_version*) #5

declare i8* @versiondescribe(%struct.dpkg_version*, i32) #5

declare zeroext i1 @findbreakcycle(%struct.pkginfo*) #5

declare i32 @dependencies_ok(%struct.pkginfo*, %struct.pkginfo*, %struct.varbuf*) #5

declare void @varbuf_destroy(%struct.varbuf*) #5

declare void @ensure_package_clientdata(%struct.pkginfo*) #5

declare void @enqueue_package(%struct.pkginfo*) #5

declare void @trigproc_reset_cycle() #5

declare i32 @breakses_ok(%struct.pkginfo*, %struct.varbuf*) #5

declare void @varbuf_end_str(%struct.varbuf*) #5

declare void @notice(i8*, ...) #5

declare void @forcibleerr(i32, i8*, ...) #5

declare i32 @printf(i8*, ...) #5

declare void @log_action(i8*, %struct.pkginfo*, %struct.pkgbin*) #5

declare void @trig_activate_packageprocessing(%struct.pkginfo*) #5

declare void @pkg_set_status(%struct.pkginfo*, i32) #5

declare void @debug(i32, i8*, ...) #5

declare void @modstatdb_note(%struct.pkginfo*) #5

; Function Attrs: nounwind uwtable
define internal void @deferred_configure_conffile(%struct.pkginfo*, %struct.conffile*) #0 !dbg !785 {
  %3 = alloca %struct.pkginfo*, align 8
  %4 = alloca %struct.conffile*, align 8
  %5 = alloca %struct.fsys_namenode*, align 8
  %6 = alloca [33 x i8], align 16
  %7 = alloca [33 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.stat, align 8
  %12 = alloca %struct.varbuf, align 8
  %13 = alloca %struct.varbuf, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.pkginfo* %0, %struct.pkginfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %3, metadata !788, metadata !484), !dbg !789
  store %struct.conffile* %1, %struct.conffile** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.conffile** %4, metadata !790, metadata !484), !dbg !791
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %5, metadata !792, metadata !484), !dbg !793
  call void @llvm.dbg.declare(metadata [33 x i8]* %6, metadata !794, metadata !484), !dbg !798
  call void @llvm.dbg.declare(metadata [33 x i8]* %7, metadata !799, metadata !484), !dbg !800
  call void @llvm.dbg.declare(metadata i32* %8, metadata !801, metadata !484), !dbg !802
  call void @llvm.dbg.declare(metadata i32* %9, metadata !803, metadata !484), !dbg !804
  call void @llvm.dbg.declare(metadata i32* %10, metadata !805, metadata !484), !dbg !806
  call void @llvm.dbg.declare(metadata %struct.stat* %11, metadata !807, metadata !484), !dbg !839
  call void @llvm.dbg.declare(metadata %struct.varbuf* %12, metadata !840, metadata !484), !dbg !841
  %16 = bitcast %struct.varbuf* %12 to i8*, !dbg !841
  call void @llvm.memset.p0i8.i64(i8* %16, i8 0, i64 24, i32 8, i1 false), !dbg !841
  call void @llvm.dbg.declare(metadata %struct.varbuf* %13, metadata !842, metadata !484), !dbg !843
  %17 = bitcast %struct.varbuf* %13 to i8*, !dbg !843
  call void @llvm.memset.p0i8.i64(i8* %17, i8 0, i64 24, i32 8, i1 false), !dbg !844
  call void @llvm.dbg.declare(metadata i8** %14, metadata !846, metadata !484), !dbg !847
  call void @llvm.dbg.declare(metadata i32* %15, metadata !848, metadata !484), !dbg !849
  %18 = load %struct.conffile*, %struct.conffile** %4, align 8, !dbg !850
  %19 = getelementptr inbounds %struct.conffile, %struct.conffile* %18, i32 0, i32 1, !dbg !851
  %20 = load i8*, i8** %19, align 8, !dbg !851
  %21 = call %struct.fsys_namenode* @fsys_hash_find_node(i8* %20, i32 1), !dbg !852
  %22 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !853
  %23 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !854
  %24 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %23, i32 0, i32 9, !dbg !855
  %25 = call %struct.fsys_namenode* @namenodetouse(%struct.fsys_namenode* %21, %struct.pkginfo* %22, %struct.pkgbin* %24), !dbg !856
  store %struct.fsys_namenode* %25, %struct.fsys_namenode** %5, align 8, !dbg !857
  %26 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !858
  %27 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !859
  %28 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %27, i32 0, i32 1, !dbg !860
  %29 = load i8*, i8** %28, align 8, !dbg !860
  %30 = call i32 @conffderef(%struct.pkginfo* %26, %struct.varbuf* %12, i8* %29), !dbg !861
  store i32 %30, i32* %15, align 4, !dbg !862
  %31 = load i32, i32* %15, align 4, !dbg !863
  %32 = icmp eq i32 %31, -1, !dbg !865
  br i1 %32, label %33, label %36, !dbg !866

; <label>:33:                                     ; preds = %2
  %34 = load %struct.conffile*, %struct.conffile** %4, align 8, !dbg !867
  %35 = getelementptr inbounds %struct.conffile, %struct.conffile* %34, i32 0, i32 2, !dbg !869
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i32 0, i32 0), i8** %35, align 8, !dbg !870
  br label %349, !dbg !871

; <label>:36:                                     ; preds = %2
  %37 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !872
  %38 = getelementptr inbounds [33 x i8], [33 x i8]* %6, i32 0, i32 0, !dbg !873
  %39 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %12, i32 0, i32 2, !dbg !874
  %40 = load i8*, i8** %39, align 8, !dbg !874
  call void @md5hash(%struct.pkginfo* %37, i8* %38, i8* %40), !dbg !875
  call void @varbuf_reset(%struct.varbuf* %13), !dbg !876
  %41 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %12, i32 0, i32 2, !dbg !877
  %42 = load i8*, i8** %41, align 8, !dbg !877
  %43 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %12, i32 0, i32 2, !dbg !878
  %44 = load i8*, i8** %43, align 8, !dbg !878
  %45 = call i64 @strlen(i8* %44) #10, !dbg !879
  call void @varbuf_add_buf(%struct.varbuf* %13, i8* %42, i64 %45), !dbg !880
  call void @varbuf_end_str(%struct.varbuf* %13), !dbg !881
  call void @varbuf_grow(%struct.varbuf* %13, i64 50), !dbg !882
  %46 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %13, i32 0, i32 2, !dbg !883
  %47 = load i8*, i8** %46, align 8, !dbg !883
  %48 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %12, i32 0, i32 2, !dbg !884
  %49 = load i8*, i8** %48, align 8, !dbg !884
  %50 = call i64 @strlen(i8* %49) #10, !dbg !885
  %51 = getelementptr inbounds i8, i8* %47, i64 %50, !dbg !886
  store i8* %51, i8** %14, align 8, !dbg !887
  %52 = load i8*, i8** %14, align 8, !dbg !888
  %53 = call i8* @strcpy(i8* %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0)) #8, !dbg !889
  %54 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %13, i32 0, i32 2, !dbg !890
  %55 = load i8*, i8** %54, align 8, !dbg !890
  %56 = call i32 @lstat(i8* %55, %struct.stat* %11) #8, !dbg !892
  %57 = icmp ne i32 %56, 0, !dbg !892
  br i1 %57, label %58, label %69, !dbg !893

; <label>:58:                                     ; preds = %36
  %59 = call i32* @__errno_location() #1, !dbg !894
  %60 = load i32, i32* %59, align 4, !dbg !897
  %61 = icmp eq i32 %60, 2, !dbg !898
  br i1 %61, label %62, label %65, !dbg !899

; <label>:62:                                     ; preds = %58
  %63 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !900
  %64 = load %struct.conffile*, %struct.conffile** %4, align 8, !dbg !902
  call void @deferred_configure_ghost_conffile(%struct.pkginfo* %63, %struct.conffile* %64), !dbg !903
  br label %349, !dbg !904

; <label>:65:                                     ; preds = %58
  %66 = call i8* @gettext(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.33, i32 0, i32 0)) #8, !dbg !905
  %67 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %13, i32 0, i32 2, !dbg !906
  %68 = load i8*, i8** %67, align 8, !dbg !906
  call void (i8*, ...) @ohshite(i8* %66, i8* %68) #9, !dbg !907
  unreachable, !dbg !909

; <label>:69:                                     ; preds = %36
  %70 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !910
  %71 = getelementptr inbounds [33 x i8], [33 x i8]* %7, i32 0, i32 0, !dbg !911
  %72 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %13, i32 0, i32 2, !dbg !912
  %73 = load i8*, i8** %72, align 8, !dbg !912
  call void @md5hash(%struct.pkginfo* %70, i8* %71, i8* %73), !dbg !913
  %74 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %12, i32 0, i32 2, !dbg !914
  %75 = load i8*, i8** %74, align 8, !dbg !914
  %76 = call i32 @stat(i8* %75, %struct.stat* %11) #8, !dbg !916
  %77 = icmp ne i32 %76, 0, !dbg !916
  br i1 %77, label %83, label %78, !dbg !917

; <label>:78:                                     ; preds = %69
  %79 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %12, i32 0, i32 2, !dbg !918
  %80 = load i8*, i8** %79, align 8, !dbg !918
  %81 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %13, i32 0, i32 2, !dbg !919
  %82 = load i8*, i8** %81, align 8, !dbg !919
  call void @file_copy_perms(i8* %80, i8* %82), !dbg !920
  br label %92, !dbg !920

; <label>:83:                                     ; preds = %69
  %84 = call i32* @__errno_location() #1, !dbg !921
  %85 = load i32, i32* %84, align 4, !dbg !923
  %86 = icmp ne i32 %85, 2, !dbg !924
  br i1 %86, label %87, label %91, !dbg !925

; <label>:87:                                     ; preds = %83
  %88 = call i8* @gettext(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.34, i32 0, i32 0)) #8, !dbg !926
  %89 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %12, i32 0, i32 2, !dbg !927
  %90 = load i8*, i8** %89, align 8, !dbg !927
  call void (i8*, ...) @ohshite(i8* %88, i8* %90) #9, !dbg !928
  unreachable, !dbg !930

; <label>:91:                                     ; preds = %83
  br label %92

; <label>:92:                                     ; preds = %91, %78
  %93 = getelementptr inbounds [33 x i8], [33 x i8]* %6, i32 0, i32 0, !dbg !931
  %94 = getelementptr inbounds [33 x i8], [33 x i8]* %7, i32 0, i32 0, !dbg !933
  %95 = call i32 @strcmp(i8* %93, i8* %94) #10, !dbg !934
  %96 = icmp eq i32 %95, 0, !dbg !935
  br i1 %96, label %97, label %98, !dbg !936

; <label>:97:                                     ; preds = %92
  store i32 -1, i32* %8, align 4, !dbg !937
  store i32 -1, i32* %9, align 4, !dbg !939
  store i32 2, i32* %10, align 4, !dbg !940
  br label %170, !dbg !941

; <label>:98:                                     ; preds = %92
  %99 = getelementptr inbounds [33 x i8], [33 x i8]* %6, i32 0, i32 0, !dbg !942
  %100 = call i32 @strcmp(i8* %99, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0)) #10, !dbg !945
  %101 = icmp eq i32 %100, 0, !dbg !946
  br i1 %101, label %102, label %111, !dbg !947

; <label>:102:                                    ; preds = %98
  %103 = call zeroext i1 @in_force(i32 128), !dbg !948
  br i1 %103, label %104, label %111, !dbg !950

; <label>:104:                                    ; preds = %102
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !951
  %106 = call i8* @gettext(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.35, i32 0, i32 0)) #8, !dbg !953
  %107 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !954
  %108 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %107, i32 0, i32 1, !dbg !955
  %109 = load i8*, i8** %108, align 8, !dbg !955
  %110 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %105, i8* %106, i8* %109), !dbg !956
  store i32 20, i32* %10, align 4, !dbg !957
  store i32 -1, i32* %8, align 4, !dbg !958
  store i32 -1, i32* %9, align 4, !dbg !959
  br label %169, !dbg !960

; <label>:111:                                    ; preds = %102, %98
  %112 = load %struct.conffile*, %struct.conffile** %4, align 8, !dbg !961
  %113 = getelementptr inbounds %struct.conffile, %struct.conffile* %112, i32 0, i32 2, !dbg !964
  %114 = load i8*, i8** %113, align 8, !dbg !964
  %115 = call i32 @strcmp(i8* %114, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i32 0, i32 0)) #10, !dbg !965
  %116 = icmp eq i32 %115, 0, !dbg !966
  br i1 %116, label %117, label %132, !dbg !965

; <label>:117:                                    ; preds = %111
  %118 = getelementptr inbounds [33 x i8], [33 x i8]* %6, i32 0, i32 0, !dbg !967
  %119 = call i32 @strcmp(i8* %118, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0)) #10, !dbg !970
  %120 = icmp eq i32 %119, 0, !dbg !971
  br i1 %120, label %121, label %122, !dbg !972

; <label>:121:                                    ; preds = %117
  store i32 20, i32* %10, align 4, !dbg !973
  store i32 -1, i32* %8, align 4, !dbg !975
  store i32 -1, i32* %9, align 4, !dbg !976
  br label %131, !dbg !977

; <label>:122:                                    ; preds = %117
  store i32 1, i32* %8, align 4, !dbg !978
  store i32 1, i32* %9, align 4, !dbg !980
  %123 = load i32, i32* %9, align 4, !dbg !981
  %124 = sext i32 %123 to i64, !dbg !982
  %125 = load i32, i32* %8, align 4, !dbg !983
  %126 = sext i32 %125 to i64, !dbg !982
  %127 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* @conffoptcells, i64 0, i64 %126, !dbg !982
  %128 = getelementptr inbounds [2 x i32], [2 x i32]* %127, i64 0, i64 %124, !dbg !982
  %129 = load i32, i32* %128, align 4, !dbg !982
  %130 = or i32 %129, 32, !dbg !984
  store i32 %130, i32* %10, align 4, !dbg !985
  br label %131

; <label>:131:                                    ; preds = %122, %121
  br label %168, !dbg !986

; <label>:132:                                    ; preds = %111
  %133 = load %struct.conffile*, %struct.conffile** %4, align 8, !dbg !987
  %134 = getelementptr inbounds %struct.conffile, %struct.conffile* %133, i32 0, i32 2, !dbg !989
  %135 = load i8*, i8** %134, align 8, !dbg !989
  %136 = getelementptr inbounds [33 x i8], [33 x i8]* %6, i32 0, i32 0, !dbg !990
  %137 = call i32 @strcmp(i8* %135, i8* %136) #10, !dbg !991
  %138 = icmp ne i32 %137, 0, !dbg !992
  %139 = zext i1 %138 to i32, !dbg !992
  store i32 %139, i32* %8, align 4, !dbg !993
  %140 = load %struct.conffile*, %struct.conffile** %4, align 8, !dbg !994
  %141 = getelementptr inbounds %struct.conffile, %struct.conffile* %140, i32 0, i32 2, !dbg !995
  %142 = load i8*, i8** %141, align 8, !dbg !995
  %143 = getelementptr inbounds [33 x i8], [33 x i8]* %7, i32 0, i32 0, !dbg !996
  %144 = call i32 @strcmp(i8* %142, i8* %143) #10, !dbg !997
  %145 = icmp ne i32 %144, 0, !dbg !998
  %146 = zext i1 %145 to i32, !dbg !998
  store i32 %146, i32* %9, align 4, !dbg !999
  %147 = call zeroext i1 @in_force(i32 32), !dbg !1000
  br i1 %147, label %148, label %152, !dbg !1002

; <label>:148:                                    ; preds = %132
  %149 = load i32, i32* %8, align 4, !dbg !1003
  %150 = icmp ne i32 %149, 0, !dbg !1003
  br i1 %150, label %151, label %152, !dbg !1005

; <label>:151:                                    ; preds = %148
  store i32 3, i32* %10, align 4, !dbg !1006
  br label %160, !dbg !1007

; <label>:152:                                    ; preds = %148, %132
  %153 = load i32, i32* %9, align 4, !dbg !1008
  %154 = sext i32 %153 to i64, !dbg !1009
  %155 = load i32, i32* %8, align 4, !dbg !1010
  %156 = sext i32 %155 to i64, !dbg !1009
  %157 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* @conffoptcells, i64 0, i64 %156, !dbg !1009
  %158 = getelementptr inbounds [2 x i32], [2 x i32]* %157, i64 0, i64 %154, !dbg !1009
  %159 = load i32, i32* %158, align 4, !dbg !1009
  store i32 %159, i32* %10, align 4, !dbg !1011
  br label %160

; <label>:160:                                    ; preds = %152, %151
  %161 = getelementptr inbounds [33 x i8], [33 x i8]* %6, i32 0, i32 0, !dbg !1012
  %162 = call i32 @strcmp(i8* %161, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0)) #10, !dbg !1014
  %163 = icmp eq i32 %162, 0, !dbg !1015
  br i1 %163, label %164, label %167, !dbg !1016

; <label>:164:                                    ; preds = %160
  %165 = load i32, i32* %10, align 4, !dbg !1017
  %166 = or i32 %165, 128, !dbg !1017
  store i32 %166, i32* %10, align 4, !dbg !1017
  br label %167, !dbg !1018

; <label>:167:                                    ; preds = %164, %160
  br label %168

; <label>:168:                                    ; preds = %167, %131
  br label %169

; <label>:169:                                    ; preds = %168, %104
  br label %170

; <label>:170:                                    ; preds = %169, %97
  %171 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !1019
  %172 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %171, i32 0, i32 1, !dbg !1020
  %173 = load i8*, i8** %172, align 8, !dbg !1020
  %174 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %12, i32 0, i32 2, !dbg !1021
  %175 = load i8*, i8** %174, align 8, !dbg !1021
  %176 = load i32, i32* %8, align 4, !dbg !1022
  %177 = load i32, i32* %9, align 4, !dbg !1023
  %178 = load i32, i32* %10, align 4, !dbg !1024
  call void (i32, i8*, ...) @debug(i32 16, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.37, i32 0, i32 0), i8* %173, i8* %175, i32 %176, i32 %177, i32 %178), !dbg !1025
  %179 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !1026
  %180 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !1027
  %181 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %180, i32 0, i32 1, !dbg !1028
  %182 = load i8*, i8** %181, align 8, !dbg !1028
  %183 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %12, i32 0, i32 2, !dbg !1029
  %184 = load i8*, i8** %183, align 8, !dbg !1029
  %185 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %13, i32 0, i32 2, !dbg !1030
  %186 = load i8*, i8** %185, align 8, !dbg !1030
  %187 = load i32, i32* %8, align 4, !dbg !1031
  %188 = load i32, i32* %9, align 4, !dbg !1032
  %189 = load i32, i32* %10, align 4, !dbg !1033
  %190 = call i32 @promptconfaction(%struct.pkginfo* %179, i8* %182, i8* %184, i8* %186, i32 %187, i32 %188, i32 %189), !dbg !1034
  store i32 %190, i32* %10, align 4, !dbg !1035
  %191 = load i32, i32* %10, align 4, !dbg !1036
  %192 = and i32 %191, -161, !dbg !1037
  switch i32 %192, label %341 [
    i32 10, label %193
    i32 2, label %236
    i32 12, label %253
    i32 4, label %317
    i32 20, label %323
  ], !dbg !1038

; <label>:193:                                    ; preds = %170
  %194 = load i8*, i8** %14, align 8, !dbg !1039
  %195 = call i8* @strcpy(i8* %194, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0)) #8, !dbg !1041
  %196 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %13, i32 0, i32 2, !dbg !1042
  %197 = load i8*, i8** %196, align 8, !dbg !1042
  %198 = call i32 @unlink(i8* %197) #8, !dbg !1044
  %199 = icmp ne i32 %198, 0, !dbg !1044
  br i1 %199, label %200, label %213, !dbg !1045

; <label>:200:                                    ; preds = %193
  %201 = call i32* @__errno_location() #1, !dbg !1046
  %202 = load i32, i32* %201, align 4, !dbg !1048
  %203 = icmp ne i32 %202, 2, !dbg !1049
  br i1 %203, label %204, label %213, !dbg !1050

; <label>:204:                                    ; preds = %200
  %205 = call i8* @gettext(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.39, i32 0, i32 0)) #8, !dbg !1051
  %206 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !1052
  %207 = call i8* @pkg_name(%struct.pkginfo* %206, i32 1), !dbg !1053
  %208 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %13, i32 0, i32 2, !dbg !1054
  %209 = load i8*, i8** %208, align 8, !dbg !1054
  %210 = call i32* @__errno_location() #1, !dbg !1055
  %211 = load i32, i32* %210, align 4, !dbg !1056
  %212 = call i8* @strerror(i32 %211) #8, !dbg !1057
  call void (i8*, ...) @warning(i8* %205, i8* %207, i8* %209, i8* %212), !dbg !1058
  br label %213, !dbg !1059

; <label>:213:                                    ; preds = %204, %200, %193
  call void @varbuf_add_buf(%struct.varbuf* %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i32 0, i32 0), i64 10), !dbg !1060
  call void @varbuf_end_str(%struct.varbuf* %12), !dbg !1061
  %214 = load i8*, i8** %14, align 8, !dbg !1062
  %215 = call i8* @strcpy(i8* %214, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0)) #8, !dbg !1063
  %216 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !1064
  %217 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !1065
  call void @trig_path_activate(%struct.fsys_namenode* %216, %struct.pkginfo* %217), !dbg !1066
  %218 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %13, i32 0, i32 2, !dbg !1067
  %219 = load i8*, i8** %218, align 8, !dbg !1067
  %220 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %12, i32 0, i32 2, !dbg !1069
  %221 = load i8*, i8** %220, align 8, !dbg !1069
  %222 = call i32 @rename(i8* %219, i8* %221) #8, !dbg !1070
  %223 = icmp ne i32 %222, 0, !dbg !1070
  br i1 %223, label %224, label %235, !dbg !1071

; <label>:224:                                    ; preds = %213
  %225 = call i8* @gettext(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.41, i32 0, i32 0)) #8, !dbg !1072
  %226 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !1073
  %227 = call i8* @pkg_name(%struct.pkginfo* %226, i32 1), !dbg !1074
  %228 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %13, i32 0, i32 2, !dbg !1075
  %229 = load i8*, i8** %228, align 8, !dbg !1075
  %230 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %12, i32 0, i32 2, !dbg !1076
  %231 = load i8*, i8** %230, align 8, !dbg !1076
  %232 = call i32* @__errno_location() #1, !dbg !1077
  %233 = load i32, i32* %232, align 4, !dbg !1078
  %234 = call i8* @strerror(i32 %233) #8, !dbg !1079
  call void (i8*, ...) @warning(i8* %225, i8* %227, i8* %229, i8* %231, i8* %234), !dbg !1081
  br label %235, !dbg !1082

; <label>:235:                                    ; preds = %224, %213
  br label %343, !dbg !1083

; <label>:236:                                    ; preds = %170
  %237 = load i8*, i8** %14, align 8, !dbg !1084
  %238 = call i8* @strcpy(i8* %237, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0)) #8, !dbg !1085
  %239 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %13, i32 0, i32 2, !dbg !1086
  %240 = load i8*, i8** %239, align 8, !dbg !1086
  %241 = call i32 @unlink(i8* %240) #8, !dbg !1088
  %242 = icmp ne i32 %241, 0, !dbg !1088
  br i1 %242, label %243, label %252, !dbg !1089

; <label>:243:                                    ; preds = %236
  %244 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.42, i32 0, i32 0)) #8, !dbg !1090
  %245 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !1091
  %246 = call i8* @pkg_name(%struct.pkginfo* %245, i32 1), !dbg !1092
  %247 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %13, i32 0, i32 2, !dbg !1093
  %248 = load i8*, i8** %247, align 8, !dbg !1093
  %249 = call i32* @__errno_location() #1, !dbg !1094
  %250 = load i32, i32* %249, align 4, !dbg !1095
  %251 = call i8* @strerror(i32 %250) #8, !dbg !1096
  call void (i8*, ...) @warning(i8* %244, i8* %246, i8* %248, i8* %251), !dbg !1098
  br label %252, !dbg !1099

; <label>:252:                                    ; preds = %243, %236
  br label %343, !dbg !1100

; <label>:253:                                    ; preds = %170
  %254 = load i8*, i8** %14, align 8, !dbg !1101
  %255 = call i8* @strcpy(i8* %254, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i32 0, i32 0)) #8, !dbg !1102
  %256 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %13, i32 0, i32 2, !dbg !1103
  %257 = load i8*, i8** %256, align 8, !dbg !1103
  %258 = call i32 @unlink(i8* %257) #8, !dbg !1105
  %259 = icmp ne i32 %258, 0, !dbg !1105
  br i1 %259, label %260, label %273, !dbg !1106

; <label>:260:                                    ; preds = %253
  %261 = call i32* @__errno_location() #1, !dbg !1107
  %262 = load i32, i32* %261, align 4, !dbg !1109
  %263 = icmp ne i32 %262, 2, !dbg !1110
  br i1 %263, label %264, label %273, !dbg !1111

; <label>:264:                                    ; preds = %260
  %265 = call i8* @gettext(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.43, i32 0, i32 0)) #8, !dbg !1112
  %266 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !1113
  %267 = call i8* @pkg_name(%struct.pkginfo* %266, i32 1), !dbg !1114
  %268 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %13, i32 0, i32 2, !dbg !1115
  %269 = load i8*, i8** %268, align 8, !dbg !1115
  %270 = call i32* @__errno_location() #1, !dbg !1116
  %271 = load i32, i32* %270, align 4, !dbg !1117
  %272 = call i8* @strerror(i32 %271) #8, !dbg !1118
  call void (i8*, ...) @warning(i8* %265, i8* %267, i8* %269, i8* %272), !dbg !1119
  br label %273, !dbg !1120

; <label>:273:                                    ; preds = %264, %260, %253
  %274 = load i8*, i8** %14, align 8, !dbg !1121
  %275 = call i8* @strcpy(i8* %274, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0)) #8, !dbg !1122
  %276 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %13, i32 0, i32 2, !dbg !1123
  %277 = load i8*, i8** %276, align 8, !dbg !1123
  %278 = call i32 @unlink(i8* %277) #8, !dbg !1125
  %279 = icmp ne i32 %278, 0, !dbg !1125
  br i1 %279, label %280, label %293, !dbg !1126

; <label>:280:                                    ; preds = %273
  %281 = call i32* @__errno_location() #1, !dbg !1127
  %282 = load i32, i32* %281, align 4, !dbg !1129
  %283 = icmp ne i32 %282, 2, !dbg !1130
  br i1 %283, label %284, label %293, !dbg !1131

; <label>:284:                                    ; preds = %280
  %285 = call i8* @gettext(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.44, i32 0, i32 0)) #8, !dbg !1132
  %286 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !1133
  %287 = call i8* @pkg_name(%struct.pkginfo* %286, i32 1), !dbg !1134
  %288 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %13, i32 0, i32 2, !dbg !1135
  %289 = load i8*, i8** %288, align 8, !dbg !1135
  %290 = call i32* @__errno_location() #1, !dbg !1136
  %291 = load i32, i32* %290, align 4, !dbg !1137
  %292 = call i8* @strerror(i32 %291) #8, !dbg !1138
  call void (i8*, ...) @warning(i8* %285, i8* %287, i8* %289, i8* %292), !dbg !1139
  br label %293, !dbg !1140

; <label>:293:                                    ; preds = %284, %280, %273
  %294 = load i32, i32* %10, align 4, !dbg !1141
  %295 = and i32 %294, 128, !dbg !1143
  %296 = icmp ne i32 %295, 0, !dbg !1143
  br i1 %296, label %316, label %297, !dbg !1144

; <label>:297:                                    ; preds = %293
  %298 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %12, i32 0, i32 2, !dbg !1145
  %299 = load i8*, i8** %298, align 8, !dbg !1145
  %300 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %13, i32 0, i32 2, !dbg !1147
  %301 = load i8*, i8** %300, align 8, !dbg !1147
  %302 = call i32 @link(i8* %299, i8* %301) #8, !dbg !1148
  %303 = icmp ne i32 %302, 0, !dbg !1148
  br i1 %303, label %304, label %315, !dbg !1149

; <label>:304:                                    ; preds = %297
  %305 = call i8* @gettext(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.45, i32 0, i32 0)) #8, !dbg !1150
  %306 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !1151
  %307 = call i8* @pkg_name(%struct.pkginfo* %306, i32 1), !dbg !1152
  %308 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %12, i32 0, i32 2, !dbg !1153
  %309 = load i8*, i8** %308, align 8, !dbg !1153
  %310 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %13, i32 0, i32 2, !dbg !1154
  %311 = load i8*, i8** %310, align 8, !dbg !1154
  %312 = call i32* @__errno_location() #1, !dbg !1155
  %313 = load i32, i32* %312, align 4, !dbg !1156
  %314 = call i8* @strerror(i32 %313) #8, !dbg !1157
  call void (i8*, ...) @warning(i8* %305, i8* %307, i8* %309, i8* %311, i8* %314), !dbg !1159
  br label %315, !dbg !1160

; <label>:315:                                    ; preds = %304, %297
  br label %316, !dbg !1161

; <label>:316:                                    ; preds = %315, %293
  br label %317, !dbg !1162

; <label>:317:                                    ; preds = %170, %316
  %318 = call i8* @gettext(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.46, i32 0, i32 0)) #8, !dbg !1164
  %319 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !1165
  %320 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %319, i32 0, i32 1, !dbg !1166
  %321 = load i8*, i8** %320, align 8, !dbg !1166
  %322 = call i32 (i8*, ...) @printf(i8* %318, i8* %321), !dbg !1167
  br label %323, !dbg !1169

; <label>:323:                                    ; preds = %170, %317
  %324 = load i8*, i8** %14, align 8, !dbg !1170
  %325 = call i8* @strcpy(i8* %324, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0)) #8, !dbg !1171
  %326 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !1172
  %327 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !1173
  call void @trig_path_activate(%struct.fsys_namenode* %326, %struct.pkginfo* %327), !dbg !1174
  %328 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %13, i32 0, i32 2, !dbg !1175
  %329 = load i8*, i8** %328, align 8, !dbg !1175
  %330 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %12, i32 0, i32 2, !dbg !1177
  %331 = load i8*, i8** %330, align 8, !dbg !1177
  %332 = call i32 @rename(i8* %329, i8* %331) #8, !dbg !1178
  %333 = icmp ne i32 %332, 0, !dbg !1178
  br i1 %333, label %334, label %340, !dbg !1179

; <label>:334:                                    ; preds = %323
  %335 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.47, i32 0, i32 0)) #8, !dbg !1180
  %336 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %13, i32 0, i32 2, !dbg !1181
  %337 = load i8*, i8** %336, align 8, !dbg !1181
  %338 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %12, i32 0, i32 2, !dbg !1182
  %339 = load i8*, i8** %338, align 8, !dbg !1182
  call void (i8*, ...) @ohshite(i8* %335, i8* %337, i8* %339) #9, !dbg !1183
  unreachable, !dbg !1185

; <label>:340:                                    ; preds = %323
  br label %343, !dbg !1186

; <label>:341:                                    ; preds = %170
  %342 = load i32, i32* %10, align 4, !dbg !1187
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i32 526, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.deferred_configure_conffile, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.48, i32 0, i32 0), i32 %342) #9, !dbg !1188
  unreachable, !dbg !1188

; <label>:343:                                    ; preds = %340, %252, %235
  %344 = getelementptr inbounds [33 x i8], [33 x i8]* %7, i32 0, i32 0, !dbg !1189
  %345 = call i8* @nfstrsave(i8* %344), !dbg !1190
  %346 = load %struct.conffile*, %struct.conffile** %4, align 8, !dbg !1191
  %347 = getelementptr inbounds %struct.conffile, %struct.conffile* %346, i32 0, i32 2, !dbg !1192
  store i8* %345, i8** %347, align 8, !dbg !1193
  %348 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !1194
  call void @modstatdb_note(%struct.pkginfo* %348), !dbg !1195
  call void @varbuf_destroy(%struct.varbuf* %12), !dbg !1196
  call void @varbuf_destroy(%struct.varbuf* %13), !dbg !1197
  br label %349, !dbg !1198

; <label>:349:                                    ; preds = %343, %62, %33
  ret void, !dbg !1199
}

; Function Attrs: noreturn
declare void @do_internerr(i8*, i32, i8*, i8*, ...) #3

declare i32 @maintscript_postinst(%struct.pkginfo*, ...) #5

declare zeroext i1 @dpkg_version_is_informative(%struct.dpkg_version*) #5

declare void @pkg_reset_eflags(%struct.pkginfo*) #5

declare void @post_postinst_tasks(%struct.pkginfo*, i32) #5

; Function Attrs: nounwind uwtable
define i32 @conffderef(%struct.pkginfo*, %struct.varbuf*, i8*) #0 !dbg !242 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pkginfo*, align 8
  %6 = alloca %struct.varbuf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.stat, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.pkginfo* %0, %struct.pkginfo** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %5, metadata !1200, metadata !484), !dbg !1201
  store %struct.varbuf* %1, %struct.varbuf** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %6, metadata !1202, metadata !484), !dbg !1203
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1204, metadata !484), !dbg !1205
  call void @llvm.dbg.declare(metadata %struct.stat* %8, metadata !1206, metadata !484), !dbg !1207
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1208, metadata !484), !dbg !1211
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1212, metadata !484), !dbg !1213
  %11 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1214
  call void @varbuf_reset(%struct.varbuf* %11), !dbg !1215
  %12 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1216
  %13 = load i8*, i8** @instdir, align 8, !dbg !1217
  %14 = load i8*, i8** @instdir, align 8, !dbg !1218
  %15 = call i64 @strlen(i8* %14) #10, !dbg !1219
  call void @varbuf_add_buf(%struct.varbuf* %12, i8* %13, i64 %15), !dbg !1220
  %16 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1222
  %17 = load i8*, i8** %7, align 8, !dbg !1223
  %18 = load i8*, i8** %7, align 8, !dbg !1224
  %19 = call i64 @strlen(i8* %18) #10, !dbg !1225
  call void @varbuf_add_buf(%struct.varbuf* %16, i8* %17, i64 %19), !dbg !1226
  %20 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1227
  call void @varbuf_end_str(%struct.varbuf* %20), !dbg !1228
  store i32 0, i32* %10, align 4, !dbg !1229
  br label %21, !dbg !1230

; <label>:21:                                     ; preds = %205, %3
  %22 = load i8*, i8** %7, align 8, !dbg !1231
  %23 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1235
  %24 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %23, i32 0, i32 2, !dbg !1236
  %25 = load i8*, i8** %24, align 8, !dbg !1236
  call void (i32, i8*, ...) @debug(i32 128, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.15, i32 0, i32 0), i8* %22, i8* %25), !dbg !1237
  %26 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1238
  %27 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %26, i32 0, i32 2, !dbg !1240
  %28 = load i8*, i8** %27, align 8, !dbg !1240
  %29 = call i32 @lstat(i8* %28, %struct.stat* %8) #8, !dbg !1241
  %30 = icmp ne i32 %29, 0, !dbg !1241
  br i1 %30, label %31, label %47, !dbg !1242

; <label>:31:                                     ; preds = %21
  %32 = call i32* @__errno_location() #1, !dbg !1243
  %33 = load i32, i32* %32, align 4, !dbg !1246
  %34 = icmp ne i32 %33, 2, !dbg !1247
  br i1 %34, label %35, label %46, !dbg !1248

; <label>:35:                                     ; preds = %31
  %36 = call i8* @gettext(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.16, i32 0, i32 0)) #8, !dbg !1249
  %37 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1250
  %38 = call i8* @pkg_name(%struct.pkginfo* %37, i32 1), !dbg !1251
  %39 = load i8*, i8** %7, align 8, !dbg !1252
  %40 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1253
  %41 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %40, i32 0, i32 2, !dbg !1254
  %42 = load i8*, i8** %41, align 8, !dbg !1254
  %43 = call i32* @__errno_location() #1, !dbg !1255
  %44 = load i32, i32* %43, align 4, !dbg !1256
  %45 = call i8* @strerror(i32 %44) #8, !dbg !1257
  call void (i8*, ...) @warning(i8* %36, i8* %38, i8* %39, i8* %42, i8* %45), !dbg !1259
  br label %46, !dbg !1260

; <label>:46:                                     ; preds = %35, %31
  call void (i32, i8*, ...) @debug(i32 128, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0)), !dbg !1261
  store i32 0, i32* %4, align 4, !dbg !1262
  br label %206, !dbg !1262

; <label>:47:                                     ; preds = %21
  %48 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 3, !dbg !1263
  %49 = load i32, i32* %48, align 8, !dbg !1263
  %50 = and i32 %49, 61440, !dbg !1265
  %51 = icmp eq i32 %50, 32768, !dbg !1266
  br i1 %51, label %52, label %57, !dbg !1267

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %7, align 8, !dbg !1268
  %54 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1270
  %55 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %54, i32 0, i32 2, !dbg !1271
  %56 = load i8*, i8** %55, align 8, !dbg !1271
  call void (i32, i8*, ...) @debug(i32 16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i32 0, i32 0), i8* %53, i8* %56), !dbg !1272
  store i32 0, i32* %4, align 4, !dbg !1273
  br label %206, !dbg !1273

; <label>:57:                                     ; preds = %47
  %58 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 3, !dbg !1274
  %59 = load i32, i32* %58, align 8, !dbg !1274
  %60 = and i32 %59, 61440, !dbg !1276
  %61 = icmp eq i32 %60, 40960, !dbg !1277
  br i1 %61, label %62, label %195, !dbg !1278

; <label>:62:                                     ; preds = %57
  %63 = load i32, i32* %10, align 4, !dbg !1279
  call void (i32, i8*, ...) @debug(i32 128, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i32 0, i32 0), i32 %63), !dbg !1281
  %64 = load i32, i32* %10, align 4, !dbg !1282
  %65 = add nsw i32 %64, 1, !dbg !1282
  store i32 %65, i32* %10, align 4, !dbg !1282
  %66 = icmp sge i32 %64, 25, !dbg !1284
  br i1 %66, label %67, label %75, !dbg !1285

; <label>:67:                                     ; preds = %62
  %68 = call i8* @gettext(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.20, i32 0, i32 0)) #8, !dbg !1286
  %69 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1288
  %70 = call i8* @pkg_name(%struct.pkginfo* %69, i32 1), !dbg !1289
  %71 = load i8*, i8** %7, align 8, !dbg !1290
  %72 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1291
  %73 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %72, i32 0, i32 2, !dbg !1292
  %74 = load i8*, i8** %73, align 8, !dbg !1292
  call void (i8*, ...) @warning(i8* %68, i8* %70, i8* %71, i8* %74), !dbg !1293
  store i32 -1, i32* %4, align 4, !dbg !1295
  br label %206, !dbg !1295

; <label>:75:                                     ; preds = %62
  call void @varbuf_reset(%struct.varbuf* @conffderef.target), !dbg !1296
  %76 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 8, !dbg !1297
  %77 = load i64, i64* %76, align 8, !dbg !1297
  %78 = add nsw i64 %77, 1, !dbg !1298
  call void @varbuf_grow(%struct.varbuf* @conffderef.target, i64 %78), !dbg !1299
  %79 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1300
  %80 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %79, i32 0, i32 2, !dbg !1301
  %81 = load i8*, i8** %80, align 8, !dbg !1301
  %82 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @conffderef.target, i32 0, i32 2), align 8, !dbg !1302
  %83 = load i64, i64* getelementptr inbounds (%struct.varbuf, %struct.varbuf* @conffderef.target, i32 0, i32 1), align 8, !dbg !1303
  %84 = call i64 @readlink(i8* %81, i8* %82, i64 %83) #8, !dbg !1304
  store i64 %84, i64* %9, align 8, !dbg !1305
  %85 = load i64, i64* %9, align 8, !dbg !1306
  %86 = icmp slt i64 %85, 0, !dbg !1308
  br i1 %86, label %87, label %98, !dbg !1309

; <label>:87:                                     ; preds = %75
  %88 = call i8* @gettext(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.21, i32 0, i32 0)) #8, !dbg !1310
  %89 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1312
  %90 = call i8* @pkg_name(%struct.pkginfo* %89, i32 1), !dbg !1313
  %91 = load i8*, i8** %7, align 8, !dbg !1314
  %92 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1315
  %93 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %92, i32 0, i32 2, !dbg !1316
  %94 = load i8*, i8** %93, align 8, !dbg !1316
  %95 = call i32* @__errno_location() #1, !dbg !1317
  %96 = load i32, i32* %95, align 4, !dbg !1318
  %97 = call i8* @strerror(i32 %96) #8, !dbg !1319
  call void (i8*, ...) @warning(i8* %88, i8* %90, i8* %91, i8* %94, i8* %97), !dbg !1321
  store i32 -1, i32* %4, align 4, !dbg !1322
  br label %206, !dbg !1322

; <label>:98:                                     ; preds = %75
  %99 = load i64, i64* %9, align 8, !dbg !1323
  %100 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 8, !dbg !1325
  %101 = load i64, i64* %100, align 8, !dbg !1325
  %102 = icmp ne i64 %99, %101, !dbg !1326
  br i1 %102, label %103, label %117, !dbg !1327

; <label>:103:                                    ; preds = %98
  %104 = call i8* @gettext(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.22, i32 0, i32 0)) #8, !dbg !1328
  %105 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1330
  %106 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %105, i32 0, i32 2, !dbg !1331
  %107 = load i8*, i8** %106, align 8, !dbg !1331
  %108 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 8, !dbg !1332
  %109 = load i64, i64* %108, align 8, !dbg !1332
  %110 = load i64, i64* %9, align 8, !dbg !1333
  call void (i8*, ...) @warning(i8* %104, i8* %107, i64 %109, i64 %110), !dbg !1334
  %111 = load i64, i64* %9, align 8, !dbg !1336
  %112 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 8, !dbg !1338
  %113 = load i64, i64* %112, align 8, !dbg !1338
  %114 = icmp sgt i64 %111, %113, !dbg !1339
  br i1 %114, label %115, label %116, !dbg !1340

; <label>:115:                                    ; preds = %103
  store i32 -1, i32* %4, align 4, !dbg !1341
  br label %206, !dbg !1341

; <label>:116:                                    ; preds = %103
  br label %117, !dbg !1342

; <label>:117:                                    ; preds = %116, %98
  br label %118

; <label>:118:                                    ; preds = %117
  %119 = load i64, i64* %9, align 8, !dbg !1343
  call void @varbuf_trunc(%struct.varbuf* @conffderef.target, i64 %119), !dbg !1344
  call void @varbuf_end_str(%struct.varbuf* @conffderef.target), !dbg !1345
  %120 = load i64, i64* %9, align 8, !dbg !1346
  %121 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @conffderef.target, i32 0, i32 2), align 8, !dbg !1347
  call void (i32, i8*, ...) @debug(i32 128, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.23, i32 0, i32 0), i64 %120, i8* %121), !dbg !1348
  %122 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @conffderef.target, i32 0, i32 2), align 8, !dbg !1349
  %123 = getelementptr inbounds i8, i8* %122, i64 0, !dbg !1351
  %124 = load i8, i8* %123, align 1, !dbg !1351
  %125 = sext i8 %124 to i32, !dbg !1351
  %126 = icmp eq i32 %125, 47, !dbg !1352
  br i1 %126, label %127, label %133, !dbg !1353

; <label>:127:                                    ; preds = %118
  %128 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1354
  call void @varbuf_reset(%struct.varbuf* %128), !dbg !1356
  %129 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1357
  %130 = load i8*, i8** @instdir, align 8, !dbg !1358
  %131 = load i8*, i8** @instdir, align 8, !dbg !1359
  %132 = call i64 @strlen(i8* %131) #10, !dbg !1360
  call void @varbuf_add_buf(%struct.varbuf* %129, i8* %130, i64 %132), !dbg !1361
  call void (i32, i8*, ...) @debug(i32 128, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.24, i32 0, i32 0)), !dbg !1363
  br label %190, !dbg !1364

; <label>:133:                                    ; preds = %118
  %134 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1365
  %135 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %134, i32 0, i32 0, !dbg !1368
  %136 = load i64, i64* %135, align 8, !dbg !1368
  %137 = sub i64 %136, 1, !dbg !1369
  store i64 %137, i64* %9, align 8, !dbg !1370
  br label %138, !dbg !1371

; <label>:138:                                    ; preds = %153, %133
  %139 = load i64, i64* %9, align 8, !dbg !1372
  %140 = icmp sgt i64 %139, 0, !dbg !1375
  br i1 %140, label %141, label %150, !dbg !1376

; <label>:141:                                    ; preds = %138
  %142 = load i64, i64* %9, align 8, !dbg !1377
  %143 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1379
  %144 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %143, i32 0, i32 2, !dbg !1380
  %145 = load i8*, i8** %144, align 8, !dbg !1380
  %146 = getelementptr inbounds i8, i8* %145, i64 %142, !dbg !1379
  %147 = load i8, i8* %146, align 1, !dbg !1379
  %148 = sext i8 %147 to i32, !dbg !1379
  %149 = icmp ne i32 %148, 47, !dbg !1381
  br label %150

; <label>:150:                                    ; preds = %141, %138
  %151 = phi i1 [ false, %138 ], [ %149, %141 ]
  br i1 %151, label %152, label %156, !dbg !1382

; <label>:152:                                    ; preds = %150
  br label %153, !dbg !1384

; <label>:153:                                    ; preds = %152
  %154 = load i64, i64* %9, align 8, !dbg !1386
  %155 = add nsw i64 %154, -1, !dbg !1386
  store i64 %155, i64* %9, align 8, !dbg !1386
  br label %138, !dbg !1388, !llvm.loop !1389

; <label>:156:                                    ; preds = %150
  %157 = load i64, i64* %9, align 8, !dbg !1391
  %158 = icmp slt i64 %157, 0, !dbg !1393
  br i1 %158, label %159, label %168, !dbg !1394

; <label>:159:                                    ; preds = %156
  %160 = call i8* @gettext(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.25, i32 0, i32 0)) #8, !dbg !1395
  %161 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1397
  %162 = call i8* @pkg_name(%struct.pkginfo* %161, i32 1), !dbg !1398
  %163 = load i8*, i8** %7, align 8, !dbg !1399
  %164 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1400
  %165 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %164, i32 0, i32 2, !dbg !1401
  %166 = load i8*, i8** %165, align 8, !dbg !1401
  %167 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @conffderef.target, i32 0, i32 2), align 8, !dbg !1402
  call void (i8*, ...) @warning(i8* %160, i8* %162, i8* %163, i8* %166, i8* %167), !dbg !1403
  store i32 -1, i32* %4, align 4, !dbg !1405
  br label %206, !dbg !1405

; <label>:168:                                    ; preds = %156
  %169 = load i64, i64* %9, align 8, !dbg !1406
  %170 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1408
  %171 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %170, i32 0, i32 2, !dbg !1409
  %172 = load i8*, i8** %171, align 8, !dbg !1409
  %173 = getelementptr inbounds i8, i8* %172, i64 %169, !dbg !1408
  %174 = load i8, i8* %173, align 1, !dbg !1408
  %175 = sext i8 %174 to i32, !dbg !1408
  %176 = icmp eq i32 %175, 47, !dbg !1410
  br i1 %176, label %177, label %180, !dbg !1411

; <label>:177:                                    ; preds = %168
  %178 = load i64, i64* %9, align 8, !dbg !1412
  %179 = add nsw i64 %178, 1, !dbg !1412
  store i64 %179, i64* %9, align 8, !dbg !1412
  br label %180, !dbg !1413

; <label>:180:                                    ; preds = %177, %168
  %181 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1414
  %182 = load i64, i64* %9, align 8, !dbg !1415
  call void @varbuf_trunc(%struct.varbuf* %181, i64 %182), !dbg !1416
  %183 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1417
  %184 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %183, i32 0, i32 0, !dbg !1418
  %185 = load i64, i64* %184, align 8, !dbg !1418
  %186 = trunc i64 %185 to i32, !dbg !1419
  %187 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1420
  %188 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %187, i32 0, i32 2, !dbg !1421
  %189 = load i8*, i8** %188, align 8, !dbg !1421
  call void (i32, i8*, ...) @debug(i32 128, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.26, i32 0, i32 0), i32 %186, i8* %189), !dbg !1422
  br label %190

; <label>:190:                                    ; preds = %180, %127
  %191 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1423
  %192 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @conffderef.target, i32 0, i32 2), align 8, !dbg !1424
  %193 = load i64, i64* getelementptr inbounds (%struct.varbuf, %struct.varbuf* @conffderef.target, i32 0, i32 0), align 8, !dbg !1425
  call void @varbuf_add_buf(%struct.varbuf* %191, i8* %192, i64 %193), !dbg !1426
  %194 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1427
  call void @varbuf_end_str(%struct.varbuf* %194), !dbg !1428
  br label %203, !dbg !1429

; <label>:195:                                    ; preds = %57
  %196 = call i8* @gettext(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.27, i32 0, i32 0)) #8, !dbg !1430
  %197 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1432
  %198 = call i8* @pkg_name(%struct.pkginfo* %197, i32 1), !dbg !1433
  %199 = load i8*, i8** %7, align 8, !dbg !1434
  %200 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1435
  %201 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %200, i32 0, i32 2, !dbg !1436
  %202 = load i8*, i8** %201, align 8, !dbg !1436
  call void (i8*, ...) @warning(i8* %196, i8* %198, i8* %199, i8* %202), !dbg !1437
  store i32 -1, i32* %4, align 4, !dbg !1439
  br label %206, !dbg !1439

; <label>:203:                                    ; preds = %190
  br label %204

; <label>:204:                                    ; preds = %203
  br label %205

; <label>:205:                                    ; preds = %204
  br label %21, !dbg !1440, !llvm.loop !1442

; <label>:206:                                    ; preds = %195, %159, %115, %87, %67, %52, %46
  %207 = load i32, i32* %4, align 4, !dbg !1443
  ret i32 %207, !dbg !1443
}

declare void @varbuf_reset(%struct.varbuf*) #5

declare void @varbuf_add_buf(%struct.varbuf*, i8*, i64) #5

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #6

; Function Attrs: nounwind
declare i32 @lstat(i8*, %struct.stat*) #4

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #7

declare void @warning(i8*, ...) #5

; Function Attrs: nounwind
declare i8* @strerror(i32) #4

declare void @varbuf_grow(%struct.varbuf*, i64) #5

; Function Attrs: nounwind
declare i64 @readlink(i8*, i8*, i64) #4

declare void @varbuf_trunc(%struct.varbuf*, i64) #5

; Function Attrs: nounwind uwtable
define void @md5hash(%struct.pkginfo*, i8*, i8*) #0 !dbg !470 {
  %4 = alloca %struct.pkginfo*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dpkg_error, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %4, metadata !1444, metadata !484), !dbg !1445
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1446, metadata !484), !dbg !1447
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1448, metadata !484), !dbg !1449
  call void @llvm.dbg.declare(metadata %struct.dpkg_error* %7, metadata !1450, metadata !484), !dbg !1456
  %8 = load i8*, i8** %6, align 8, !dbg !1457
  %9 = call i32 (i8*, i32, ...) @open(i8* %8, i32 0), !dbg !1458
  store i32 %9, i32* @md5hash.fd, align 4, !dbg !1459
  %10 = load i32, i32* @md5hash.fd, align 4, !dbg !1460
  %11 = icmp sge i32 %10, 0, !dbg !1462
  br i1 %11, label %12, label %25, !dbg !1463

; <label>:12:                                     ; preds = %3
  call void (void (i32, i8**)*, i32, i32, ...) @push_cleanup(void (i32, i8**)* @cu_closefd, i32 2, i32 1, i32* @md5hash.fd), !dbg !1464
  %13 = load i32, i32* @md5hash.fd, align 4, !dbg !1466
  %14 = load i8*, i8** %5, align 8, !dbg !1468
  %15 = call i64 @buffer_copy_IntPtr(i32 %13, i32 0, i8* %14, i32 5, i8* null, i32 3, i64 -1, %struct.dpkg_error* %7), !dbg !1469
  %16 = icmp slt i64 %15, 0, !dbg !1470
  br i1 %16, label %17, label %22, !dbg !1471

; <label>:17:                                     ; preds = %12
  %18 = call i8* @gettext(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.28, i32 0, i32 0)) #8, !dbg !1472
  %19 = load i8*, i8** %6, align 8, !dbg !1473
  %20 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %7, i32 0, i32 2, !dbg !1474
  %21 = load i8*, i8** %20, align 8, !dbg !1474
  call void (i8*, ...) @ohshit(i8* %18, i8* %19, i8* %21) #9, !dbg !1475
  unreachable, !dbg !1477

; <label>:22:                                     ; preds = %12
  call void @pop_cleanup(i32 1), !dbg !1478
  %23 = load i32, i32* @md5hash.fd, align 4, !dbg !1479
  %24 = call i32 @close(i32 %23), !dbg !1480
  br label %43, !dbg !1481

; <label>:25:                                     ; preds = %3
  %26 = call i32* @__errno_location() #1, !dbg !1482
  %27 = load i32, i32* %26, align 4, !dbg !1485
  %28 = icmp eq i32 %27, 2, !dbg !1486
  br i1 %28, label %29, label %32, !dbg !1487

; <label>:29:                                     ; preds = %25
  %30 = load i8*, i8** %5, align 8, !dbg !1488
  %31 = call i8* @strcpy(i8* %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0)) #8, !dbg !1490
  br label %42, !dbg !1491

; <label>:32:                                     ; preds = %25
  %33 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.30, i32 0, i32 0)) #8, !dbg !1492
  %34 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !1494
  %35 = call i8* @pkg_name(%struct.pkginfo* %34, i32 1), !dbg !1495
  %36 = load i8*, i8** %6, align 8, !dbg !1496
  %37 = call i32* @__errno_location() #1, !dbg !1497
  %38 = load i32, i32* %37, align 4, !dbg !1499
  %39 = call i8* @strerror(i32 %38) #8, !dbg !1500
  call void (i8*, ...) @warning(i8* %33, i8* %35, i8* %36, i8* %39), !dbg !1502
  %40 = load i8*, i8** %5, align 8, !dbg !1503
  %41 = call i8* @strcpy(i8* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i32 0, i32 0)) #8, !dbg !1504
  br label %42

; <label>:42:                                     ; preds = %32, %29
  br label %43

; <label>:43:                                     ; preds = %42, %22
  ret void, !dbg !1505
}

declare i32 @open(i8*, i32, ...) #5

declare void @push_cleanup(void (i32, i8**)*, i32, i32, ...) #5

declare void @cu_closefd(i32, i8**) #5

declare i64 @buffer_copy_IntPtr(i32, i32, i8*, i32, i8*, i32, i64, %struct.dpkg_error*) #5

declare void @pop_cleanup(i32) #5

declare i32 @close(i32) #5

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #4

declare %struct.fsys_namenode* @namenodetouse(%struct.fsys_namenode*, %struct.pkginfo*, %struct.pkgbin*) #5

declare %struct.fsys_namenode* @fsys_hash_find_node(i8*, i32) #5

; Function Attrs: nounwind uwtable
define internal void @deferred_configure_ghost_conffile(%struct.pkginfo*, %struct.conffile*) #0 !dbg !1506 {
  %3 = alloca %struct.pkginfo*, align 8
  %4 = alloca %struct.conffile*, align 8
  %5 = alloca %struct.pkginfo*, align 8
  %6 = alloca %struct.conffile*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %3, metadata !1507, metadata !484), !dbg !1508
  store %struct.conffile* %1, %struct.conffile** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.conffile** %4, metadata !1509, metadata !484), !dbg !1510
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %5, metadata !1511, metadata !484), !dbg !1512
  call void @llvm.dbg.declare(metadata %struct.conffile** %6, metadata !1513, metadata !484), !dbg !1514
  %7 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !1515
  %8 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %7, i32 0, i32 0, !dbg !1517
  %9 = load %struct.pkgset*, %struct.pkgset** %8, align 8, !dbg !1517
  %10 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %9, i32 0, i32 2, !dbg !1518
  store %struct.pkginfo* %10, %struct.pkginfo** %5, align 8, !dbg !1519
  br label %11, !dbg !1520

; <label>:11:                                     ; preds = %61, %2
  %12 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1521
  %13 = icmp ne %struct.pkginfo* %12, null, !dbg !1524
  br i1 %13, label %14, label %65, !dbg !1524

; <label>:14:                                     ; preds = %11
  %15 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1525
  %16 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !1528
  %17 = icmp eq %struct.pkginfo* %15, %16, !dbg !1529
  br i1 %17, label %18, label %19, !dbg !1530

; <label>:18:                                     ; preds = %14
  br label %61, !dbg !1531

; <label>:19:                                     ; preds = %14
  %20 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1532
  %21 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %20, i32 0, i32 4, !dbg !1534
  %22 = load i32, i32* %21, align 8, !dbg !1534
  %23 = icmp ule i32 %22, 4, !dbg !1535
  br i1 %23, label %24, label %25, !dbg !1536

; <label>:24:                                     ; preds = %19
  br label %61, !dbg !1537

; <label>:25:                                     ; preds = %19
  %26 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1538
  %27 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %26, i32 0, i32 9, !dbg !1540
  %28 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %27, i32 0, i32 12, !dbg !1541
  %29 = load %struct.conffile*, %struct.conffile** %28, align 8, !dbg !1541
  store %struct.conffile* %29, %struct.conffile** %6, align 8, !dbg !1542
  br label %30, !dbg !1543

; <label>:30:                                     ; preds = %56, %25
  %31 = load %struct.conffile*, %struct.conffile** %6, align 8, !dbg !1544
  %32 = icmp ne %struct.conffile* %31, null, !dbg !1547
  br i1 %32, label %33, label %60, !dbg !1547

; <label>:33:                                     ; preds = %30
  %34 = load %struct.conffile*, %struct.conffile** %6, align 8, !dbg !1548
  %35 = getelementptr inbounds %struct.conffile, %struct.conffile* %34, i32 0, i32 3, !dbg !1551
  %36 = load i8, i8* %35, align 8, !dbg !1551
  %37 = trunc i8 %36 to i1, !dbg !1551
  br i1 %37, label %38, label %39, !dbg !1552

; <label>:38:                                     ; preds = %33
  br label %56, !dbg !1553

; <label>:39:                                     ; preds = %33
  %40 = load %struct.conffile*, %struct.conffile** %6, align 8, !dbg !1554
  %41 = getelementptr inbounds %struct.conffile, %struct.conffile* %40, i32 0, i32 1, !dbg !1556
  %42 = load i8*, i8** %41, align 8, !dbg !1556
  %43 = load %struct.conffile*, %struct.conffile** %4, align 8, !dbg !1557
  %44 = getelementptr inbounds %struct.conffile, %struct.conffile* %43, i32 0, i32 1, !dbg !1558
  %45 = load i8*, i8** %44, align 8, !dbg !1558
  %46 = call i32 @strcmp(i8* %42, i8* %45) #10, !dbg !1559
  %47 = icmp eq i32 %46, 0, !dbg !1560
  br i1 %47, label %48, label %55, !dbg !1561

; <label>:48:                                     ; preds = %39
  %49 = load %struct.conffile*, %struct.conffile** %6, align 8, !dbg !1562
  %50 = getelementptr inbounds %struct.conffile, %struct.conffile* %49, i32 0, i32 2, !dbg !1564
  %51 = load i8*, i8** %50, align 8, !dbg !1564
  %52 = load %struct.conffile*, %struct.conffile** %4, align 8, !dbg !1565
  %53 = getelementptr inbounds %struct.conffile, %struct.conffile* %52, i32 0, i32 2, !dbg !1566
  store i8* %51, i8** %53, align 8, !dbg !1567
  %54 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !1568
  call void @modstatdb_note(%struct.pkginfo* %54), !dbg !1569
  br label %65, !dbg !1570

; <label>:55:                                     ; preds = %39
  br label %56, !dbg !1571

; <label>:56:                                     ; preds = %55, %38
  %57 = load %struct.conffile*, %struct.conffile** %6, align 8, !dbg !1572
  %58 = getelementptr inbounds %struct.conffile, %struct.conffile* %57, i32 0, i32 0, !dbg !1573
  %59 = load %struct.conffile*, %struct.conffile** %58, align 8, !dbg !1573
  store %struct.conffile* %59, %struct.conffile** %6, align 8, !dbg !1574
  br label %30, !dbg !1575, !llvm.loop !1577

; <label>:60:                                     ; preds = %30
  br label %61, !dbg !1579

; <label>:61:                                     ; preds = %60, %24, %18
  %62 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1580
  %63 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %62, i32 0, i32 1, !dbg !1582
  %64 = load %struct.pkginfo*, %struct.pkginfo** %63, align 8, !dbg !1582
  store %struct.pkginfo* %64, %struct.pkginfo** %5, align 8, !dbg !1583
  br label %11, !dbg !1584, !llvm.loop !1585

; <label>:65:                                     ; preds = %48, %11
  ret void, !dbg !1587
}

; Function Attrs: noreturn
declare void @ohshite(i8*, ...) #3

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #4

declare void @file_copy_perms(i8*, i8*) #5

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #6

declare zeroext i1 @in_force(i32) #5

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #5

; Function Attrs: nounwind uwtable
define internal i32 @promptconfaction(%struct.pkginfo*, i8*, i8*, i8*, i32, i32, i32) #0 !dbg !1588 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.pkginfo*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.pkginfo* %0, %struct.pkginfo** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %9, metadata !1591, metadata !484), !dbg !1592
  store i8* %1, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1593, metadata !484), !dbg !1594
  store i8* %2, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1595, metadata !484), !dbg !1596
  store i8* %3, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1597, metadata !484), !dbg !1598
  store i32 %4, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1599, metadata !484), !dbg !1600
  store i32 %5, i32* %14, align 4
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1601, metadata !484), !dbg !1602
  store i32 %6, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1603, metadata !484), !dbg !1604
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1605, metadata !484), !dbg !1606
  %17 = load i32, i32* %15, align 4, !dbg !1607
  %18 = and i32 %17, 1, !dbg !1609
  %19 = icmp ne i32 %18, 0, !dbg !1609
  br i1 %19, label %22, label %20, !dbg !1610

; <label>:20:                                     ; preds = %7
  %21 = load i32, i32* %15, align 4, !dbg !1611
  store i32 %21, i32* %8, align 4, !dbg !1612
  br label %76, !dbg !1612

; <label>:22:                                     ; preds = %7
  %23 = load i8*, i8** %10, align 8, !dbg !1613
  %24 = load i8*, i8** %11, align 8, !dbg !1614
  %25 = load i8*, i8** %12, align 8, !dbg !1615
  %26 = load i32, i32* %13, align 4, !dbg !1616
  %27 = load i32, i32* %14, align 4, !dbg !1617
  call void (i8*, ...) @statusfd_send(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.49, i32 0, i32 0), i8* %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.50, i32 0, i32 0), i8* %24, i8* %25, i32 %26, i32 %27), !dbg !1618
  br label %28, !dbg !1619, !llvm.loop !1620

; <label>:28:                                     ; preds = %48, %22
  %29 = load i8*, i8** %10, align 8, !dbg !1621
  %30 = load i8*, i8** %11, align 8, !dbg !1623
  %31 = load i8*, i8** %12, align 8, !dbg !1624
  %32 = load i32, i32* %13, align 4, !dbg !1625
  %33 = load i32, i32* %14, align 4, !dbg !1626
  %34 = load i32, i32* %15, align 4, !dbg !1627
  %35 = call i32 @show_prompt(i8* %29, i8* %30, i8* %31, i32 %32, i32 %33, i32 %34), !dbg !1628
  store i32 %35, i32* %16, align 4, !dbg !1629
  %36 = load i32, i32* %16, align 4, !dbg !1630
  %37 = icmp eq i32 %36, 100, !dbg !1632
  br i1 %37, label %38, label %41, !dbg !1633

; <label>:38:                                     ; preds = %28
  %39 = load i8*, i8** %11, align 8, !dbg !1634
  %40 = load i8*, i8** %12, align 8, !dbg !1635
  call void @show_diff(i8* %39, i8* %40), !dbg !1636
  br label %41, !dbg !1636

; <label>:41:                                     ; preds = %38, %28
  %42 = load i32, i32* %16, align 4, !dbg !1637
  %43 = icmp eq i32 %42, 122, !dbg !1639
  br i1 %43, label %44, label %47, !dbg !1640

; <label>:44:                                     ; preds = %41
  %45 = load i8*, i8** %11, align 8, !dbg !1641
  %46 = load i8*, i8** %12, align 8, !dbg !1642
  call void @spawn_shell(i8* %45, i8* %46), !dbg !1643
  br label %47, !dbg !1643

; <label>:47:                                     ; preds = %44, %41
  br label %48, !dbg !1644

; <label>:48:                                     ; preds = %47
  %49 = load i32, i32* %16, align 4, !dbg !1645
  %50 = call i8* @strchr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0), i32 %49) #10, !dbg !1647
  %51 = icmp ne i8* %50, null, !dbg !1648
  %52 = xor i1 %51, true, !dbg !1648
  br i1 %52, label %28, label %53, !dbg !1649, !llvm.loop !1620

; <label>:53:                                     ; preds = %48
  %54 = load i8*, i8** %10, align 8, !dbg !1650
  %55 = load i32, i32* %16, align 4, !dbg !1651
  %56 = icmp eq i32 %55, 105, !dbg !1652
  br i1 %56, label %60, label %57, !dbg !1653

; <label>:57:                                     ; preds = %53
  %58 = load i32, i32* %16, align 4, !dbg !1654
  %59 = icmp eq i32 %58, 121, !dbg !1655
  br label %60, !dbg !1656

; <label>:60:                                     ; preds = %57, %53
  %61 = phi i1 [ true, %53 ], [ %59, %57 ]
  %62 = select i1 %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i32 0), !dbg !1657
  call void (i8*, ...) @log_message(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i32 0, i32 0), i8* %54, i8* %62), !dbg !1659
  %63 = load i32, i32* %15, align 4, !dbg !1660
  %64 = and i32 %63, 128, !dbg !1660
  store i32 %64, i32* %15, align 4, !dbg !1660
  %65 = load i32, i32* %16, align 4, !dbg !1661
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 121, label %66
    i32 110, label %69
    i32 111, label %69
  ], !dbg !1662

; <label>:66:                                     ; preds = %60, %60
  %67 = load i32, i32* %15, align 4, !dbg !1663
  %68 = or i32 %67, 12, !dbg !1663
  store i32 %68, i32* %15, align 4, !dbg !1663
  br label %74, !dbg !1665

; <label>:69:                                     ; preds = %60, %60
  %70 = load i32, i32* %15, align 4, !dbg !1666
  %71 = or i32 %70, 10, !dbg !1666
  store i32 %71, i32* %15, align 4, !dbg !1666
  br label %74, !dbg !1667

; <label>:72:                                     ; preds = %60
  %73 = load i32, i32* %16, align 4, !dbg !1668
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i32 325, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.promptconfaction, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.55, i32 0, i32 0), i32 %73) #9, !dbg !1669
  unreachable, !dbg !1669

; <label>:74:                                     ; preds = %69, %66
  %75 = load i32, i32* %15, align 4, !dbg !1670
  store i32 %75, i32* %8, align 4, !dbg !1671
  br label %76, !dbg !1671

; <label>:76:                                     ; preds = %74, %20
  %77 = load i32, i32* %8, align 4, !dbg !1672
  ret i32 %77, !dbg !1672
}

; Function Attrs: nounwind
declare i32 @unlink(i8*) #4

declare void @trig_path_activate(%struct.fsys_namenode*, %struct.pkginfo*) #5

; Function Attrs: nounwind
declare i32 @rename(i8*, i8*) #4

; Function Attrs: nounwind
declare i32 @link(i8*, i8*) #4

declare i8* @nfstrsave(i8*) #5

declare void @statusfd_send(i8*, ...) #5

; Function Attrs: nounwind uwtable
define internal i32 @show_prompt(i8*, i8*, i8*, i32, i32, i32) #0 !dbg !1673 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1676, metadata !484), !dbg !1677
  store i8* %1, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1678, metadata !484), !dbg !1679
  store i8* %2, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1680, metadata !484), !dbg !1681
  store i32 %3, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1682, metadata !484), !dbg !1683
  store i32 %4, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1684, metadata !484), !dbg !1685
  store i32 %5, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1686, metadata !484), !dbg !1687
  call void @llvm.dbg.declare(metadata i8** %14, metadata !1688, metadata !484), !dbg !1689
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1690, metadata !484), !dbg !1691
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1692, metadata !484), !dbg !1693
  %17 = call i32 @tcflush(i32 0, i32 0) #8, !dbg !1694
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1695
  %19 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i32 0, i32 0), %struct._IO_FILE* %18), !dbg !1696
  %20 = load i8*, i8** %8, align 8, !dbg !1697
  %21 = load i8*, i8** %9, align 8, !dbg !1699
  %22 = call i32 @strcmp(i8* %20, i8* %21) #10, !dbg !1700
  %23 = icmp eq i32 %22, 0, !dbg !1701
  br i1 %23, label %24, label %29, !dbg !1702

; <label>:24:                                     ; preds = %6
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1703
  %26 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.57, i32 0, i32 0)) #8, !dbg !1704
  %27 = load i8*, i8** %8, align 8, !dbg !1705
  %28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* %26, i8* %27), !dbg !1706
  br label %35, !dbg !1708

; <label>:29:                                     ; preds = %6
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1709
  %31 = call i8* @gettext(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.58, i32 0, i32 0)) #8, !dbg !1710
  %32 = load i8*, i8** %8, align 8, !dbg !1711
  %33 = load i8*, i8** %9, align 8, !dbg !1712
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* %31, i8* %32, i8* %33), !dbg !1713
  br label %35

; <label>:35:                                     ; preds = %29, %24
  %36 = load i32, i32* %13, align 4, !dbg !1714
  %37 = and i32 %36, 32, !dbg !1716
  %38 = icmp ne i32 %37, 0, !dbg !1716
  br i1 %38, label %39, label %43, !dbg !1717

; <label>:39:                                     ; preds = %35
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1718
  %41 = call i8* @gettext(i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.59, i32 0, i32 0)) #8, !dbg !1720
  %42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* %41), !dbg !1721
  br label %72, !dbg !1722

; <label>:43:                                     ; preds = %35
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1723
  %45 = load i32, i32* %11, align 4, !dbg !1725
  %46 = icmp ne i32 %45, 0, !dbg !1725
  br i1 %46, label %49, label %47, !dbg !1726

; <label>:47:                                     ; preds = %43
  %48 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.60, i32 0, i32 0)) #8, !dbg !1727
  br label %59, !dbg !1728

; <label>:49:                                     ; preds = %43
  %50 = load i32, i32* %13, align 4, !dbg !1730
  %51 = and i32 %50, 128, !dbg !1731
  %52 = icmp ne i32 %51, 0, !dbg !1731
  br i1 %52, label %55, label %53, !dbg !1732

; <label>:53:                                     ; preds = %49
  %54 = call i8* @gettext(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.61, i32 0, i32 0)) #8, !dbg !1733
  br label %57, !dbg !1734

; <label>:55:                                     ; preds = %49
  %56 = call i8* @gettext(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.62, i32 0, i32 0)) #8, !dbg !1735
  br label %57, !dbg !1736

; <label>:57:                                     ; preds = %55, %53
  %58 = phi i8* [ %54, %53 ], [ %56, %55 ], !dbg !1738
  br label %59, !dbg !1740

; <label>:59:                                     ; preds = %57, %47
  %60 = phi i8* [ %48, %47 ], [ %58, %57 ], !dbg !1741
  %61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* %60), !dbg !1742
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1743
  %63 = load i32, i32* %12, align 4, !dbg !1744
  %64 = icmp ne i32 %63, 0, !dbg !1744
  br i1 %64, label %65, label %67, !dbg !1744

; <label>:65:                                     ; preds = %59
  %66 = call i8* @gettext(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.63, i32 0, i32 0)) #8, !dbg !1745
  br label %69, !dbg !1746

; <label>:67:                                     ; preds = %59
  %68 = call i8* @gettext(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.64, i32 0, i32 0)) #8, !dbg !1747
  br label %69, !dbg !1748

; <label>:69:                                     ; preds = %67, %65
  %70 = phi i8* [ %66, %65 ], [ %68, %67 ], !dbg !1749
  %71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %62, i8* %70), !dbg !1750
  br label %72

; <label>:72:                                     ; preds = %69, %39
  %73 = call zeroext i1 @in_force(i32 64), !dbg !1751
  br i1 %73, label %74, label %78, !dbg !1753

; <label>:74:                                     ; preds = %72
  %75 = load i32, i32* %13, align 4, !dbg !1754
  %76 = and i32 %75, 6, !dbg !1756
  %77 = icmp ne i32 %76, 0, !dbg !1756
  br i1 %77, label %92, label %78, !dbg !1757

; <label>:78:                                     ; preds = %74, %72
  %79 = call zeroext i1 @in_force(i32 256), !dbg !1758
  br i1 %79, label %80, label %84, !dbg !1761

; <label>:80:                                     ; preds = %78
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1762
  %82 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.65, i32 0, i32 0)) #8, !dbg !1764
  %83 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %81, i8* %82), !dbg !1765
  store i32 121, i32* %7, align 4, !dbg !1766
  br label %214, !dbg !1766

; <label>:84:                                     ; preds = %78
  %85 = call zeroext i1 @in_force(i32 512), !dbg !1767
  br i1 %85, label %86, label %90, !dbg !1769

; <label>:86:                                     ; preds = %84
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1770
  %88 = call i8* @gettext(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.66, i32 0, i32 0)) #8, !dbg !1772
  %89 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %87, i8* %88), !dbg !1773
  store i32 110, i32* %7, align 4, !dbg !1774
  br label %214, !dbg !1774

; <label>:90:                                     ; preds = %84
  br label %91

; <label>:91:                                     ; preds = %90
  br label %92, !dbg !1775

; <label>:92:                                     ; preds = %91, %74
  %93 = call zeroext i1 @in_force(i32 64), !dbg !1776
  br i1 %93, label %94, label %112, !dbg !1778

; <label>:94:                                     ; preds = %92
  %95 = load i32, i32* %13, align 4, !dbg !1779
  %96 = and i32 %95, 2, !dbg !1782
  %97 = icmp ne i32 %96, 0, !dbg !1782
  br i1 %97, label %98, label %102, !dbg !1783

; <label>:98:                                     ; preds = %94
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1784
  %100 = call i8* @gettext(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.67, i32 0, i32 0)) #8, !dbg !1786
  %101 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %99, i8* %100), !dbg !1787
  store i32 110, i32* %7, align 4, !dbg !1788
  br label %214, !dbg !1788

; <label>:102:                                    ; preds = %94
  %103 = load i32, i32* %13, align 4, !dbg !1789
  %104 = and i32 %103, 4, !dbg !1791
  %105 = icmp ne i32 %104, 0, !dbg !1791
  br i1 %105, label %106, label %110, !dbg !1792

; <label>:106:                                    ; preds = %102
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1793
  %108 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.68, i32 0, i32 0)) #8, !dbg !1795
  %109 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %107, i8* %108), !dbg !1796
  store i32 121, i32* %7, align 4, !dbg !1797
  br label %214, !dbg !1797

; <label>:110:                                    ; preds = %102
  br label %111

; <label>:111:                                    ; preds = %110
  br label %112, !dbg !1798

; <label>:112:                                    ; preds = %111, %92
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1799
  %114 = call i8* @gettext(i8* getelementptr inbounds ([276 x i8], [276 x i8]* @.str.69, i32 0, i32 0)) #8, !dbg !1800
  %115 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %113, i8* %114), !dbg !1801
  %116 = load i32, i32* %13, align 4, !dbg !1802
  %117 = and i32 %116, 2, !dbg !1804
  %118 = icmp ne i32 %117, 0, !dbg !1804
  br i1 %118, label %119, label %123, !dbg !1805

; <label>:119:                                    ; preds = %112
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1806
  %121 = call i8* @gettext(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.70, i32 0, i32 0)) #8, !dbg !1807
  %122 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %120, i8* %121), !dbg !1808
  br label %132, !dbg !1808

; <label>:123:                                    ; preds = %112
  %124 = load i32, i32* %13, align 4, !dbg !1809
  %125 = and i32 %124, 4, !dbg !1811
  %126 = icmp ne i32 %125, 0, !dbg !1811
  br i1 %126, label %127, label %131, !dbg !1812

; <label>:127:                                    ; preds = %123
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1813
  %129 = call i8* @gettext(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.71, i32 0, i32 0)) #8, !dbg !1814
  %130 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %128, i8* %129), !dbg !1815
  br label %131, !dbg !1815

; <label>:131:                                    ; preds = %127, %123
  br label %132

; <label>:132:                                    ; preds = %131, %119
  %133 = load i8*, i8** %8, align 8, !dbg !1816
  %134 = call i8* @path_basename(i8* %133), !dbg !1817
  store i8* %134, i8** %14, align 8, !dbg !1818
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1819
  %136 = load i8*, i8** %14, align 8, !dbg !1820
  %137 = load i32, i32* %13, align 4, !dbg !1821
  %138 = and i32 %137, 2, !dbg !1822
  %139 = icmp ne i32 %138, 0, !dbg !1822
  br i1 %139, label %140, label %142, !dbg !1823

; <label>:140:                                    ; preds = %132
  %141 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.73, i32 0, i32 0)) #8, !dbg !1824
  br label %152, !dbg !1826

; <label>:142:                                    ; preds = %132
  %143 = load i32, i32* %13, align 4, !dbg !1827
  %144 = and i32 %143, 4, !dbg !1828
  %145 = icmp ne i32 %144, 0, !dbg !1828
  br i1 %145, label %146, label %148, !dbg !1829

; <label>:146:                                    ; preds = %142
  %147 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.74, i32 0, i32 0)) #8, !dbg !1830
  br label %150, !dbg !1831

; <label>:148:                                    ; preds = %142
  %149 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.75, i32 0, i32 0)) #8, !dbg !1832
  br label %150, !dbg !1833

; <label>:150:                                    ; preds = %148, %146
  %151 = phi i8* [ %147, %146 ], [ %149, %148 ], !dbg !1835
  br label %152, !dbg !1837

; <label>:152:                                    ; preds = %150, %140
  %153 = phi i8* [ %141, %140 ], [ %151, %150 ], !dbg !1838
  %154 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %135, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.72, i32 0, i32 0), i8* %136, i8* %153), !dbg !1839
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1840
  %156 = call i32 @ferror(%struct._IO_FILE* %155) #8, !dbg !1842
  %157 = icmp ne i32 %156, 0, !dbg !1842
  br i1 %157, label %158, label %160, !dbg !1843

; <label>:158:                                    ; preds = %152
  %159 = call i8* @gettext(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.76, i32 0, i32 0)) #8, !dbg !1844
  call void (i8*, ...) @ohshite(i8* %159) #9, !dbg !1845
  unreachable, !dbg !1847

; <label>:160:                                    ; preds = %152
  store i32 0, i32* %16, align 4, !dbg !1848
  br label %161, !dbg !1849

; <label>:161:                                    ; preds = %185, %160
  %162 = call i32 @getchar(), !dbg !1850
  store i32 %162, i32* %15, align 4, !dbg !1851
  %163 = icmp ne i32 %162, -1, !dbg !1852
  br i1 %163, label %164, label %167, !dbg !1853

; <label>:164:                                    ; preds = %161
  %165 = load i32, i32* %15, align 4, !dbg !1854
  %166 = icmp ne i32 %165, 10, !dbg !1855
  br label %167

; <label>:167:                                    ; preds = %164, %161
  %168 = phi i1 [ false, %161 ], [ %166, %164 ]
  br i1 %168, label %169, label %186, !dbg !1856

; <label>:169:                                    ; preds = %167
  %170 = load i32, i32* %15, align 4, !dbg !1857
  %171 = sext i32 %170 to i64, !dbg !1859
  %172 = call i16** @__ctype_b_loc() #1, !dbg !1860
  %173 = load i16*, i16** %172, align 8, !dbg !1861
  %174 = getelementptr inbounds i16, i16* %173, i64 %171, !dbg !1859
  %175 = load i16, i16* %174, align 2, !dbg !1859
  %176 = zext i16 %175 to i32, !dbg !1859
  %177 = and i32 %176, 8192, !dbg !1862
  %178 = icmp ne i32 %177, 0, !dbg !1862
  br i1 %178, label %185, label %179, !dbg !1863

; <label>:179:                                    ; preds = %169
  %180 = load i32, i32* %16, align 4, !dbg !1864
  %181 = icmp ne i32 %180, 0, !dbg !1864
  br i1 %181, label %185, label %182, !dbg !1866

; <label>:182:                                    ; preds = %179
  %183 = load i32, i32* %15, align 4, !dbg !1867
  %184 = call i32 @tolower(i32 %183) #10, !dbg !1868
  store i32 %184, i32* %16, align 4, !dbg !1869
  br label %185, !dbg !1870

; <label>:185:                                    ; preds = %182, %179, %169
  br label %161, !dbg !1871, !llvm.loop !1873

; <label>:186:                                    ; preds = %167
  %187 = load i32, i32* %15, align 4, !dbg !1874
  %188 = icmp eq i32 %187, -1, !dbg !1876
  br i1 %188, label %189, label %197, !dbg !1877

; <label>:189:                                    ; preds = %186
  %190 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1878
  %191 = call i32 @ferror(%struct._IO_FILE* %190) #8, !dbg !1881
  %192 = icmp ne i32 %191, 0, !dbg !1881
  br i1 %192, label %193, label %195, !dbg !1882

; <label>:193:                                    ; preds = %189
  %194 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.77, i32 0, i32 0)) #8, !dbg !1883
  call void (i8*, ...) @ohshite(i8* %194) #9, !dbg !1884
  unreachable, !dbg !1886

; <label>:195:                                    ; preds = %189
  %196 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.78, i32 0, i32 0)) #8, !dbg !1887
  call void (i8*, ...) @ohshit(i8* %196) #9, !dbg !1888
  unreachable, !dbg !1890

; <label>:197:                                    ; preds = %186
  %198 = load i32, i32* %16, align 4, !dbg !1891
  %199 = icmp ne i32 %198, 0, !dbg !1891
  br i1 %199, label %212, label %200, !dbg !1893

; <label>:200:                                    ; preds = %197
  %201 = load i32, i32* %13, align 4, !dbg !1894
  %202 = and i32 %201, 2, !dbg !1897
  %203 = icmp ne i32 %202, 0, !dbg !1897
  br i1 %203, label %204, label %205, !dbg !1898

; <label>:204:                                    ; preds = %200
  store i32 110, i32* %7, align 4, !dbg !1899
  br label %214, !dbg !1899

; <label>:205:                                    ; preds = %200
  %206 = load i32, i32* %13, align 4, !dbg !1900
  %207 = and i32 %206, 4, !dbg !1902
  %208 = icmp ne i32 %207, 0, !dbg !1902
  br i1 %208, label %209, label %210, !dbg !1903

; <label>:209:                                    ; preds = %205
  store i32 121, i32* %7, align 4, !dbg !1904
  br label %214, !dbg !1904

; <label>:210:                                    ; preds = %205
  br label %211

; <label>:211:                                    ; preds = %210
  br label %212, !dbg !1905

; <label>:212:                                    ; preds = %211, %197
  %213 = load i32, i32* %16, align 4, !dbg !1906
  store i32 %213, i32* %7, align 4, !dbg !1907
  br label %214, !dbg !1907

; <label>:214:                                    ; preds = %212, %209, %204, %106, %98, %86, %80
  %215 = load i32, i32* %7, align 4, !dbg !1908
  ret i32 %215, !dbg !1908
}

; Function Attrs: nounwind uwtable
define internal void @show_diff(i8*, i8*) #0 !dbg !1909 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pager*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.command, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1912, metadata !484), !dbg !1913
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1914, metadata !484), !dbg !1915
  call void @llvm.dbg.declare(metadata %struct.pager** %5, metadata !1916, metadata !484), !dbg !1920
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1921, metadata !484), !dbg !1924
  %8 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.79, i32 0, i32 0)) #8, !dbg !1925
  %9 = call %struct.pager* @pager_spawn(i8* %8), !dbg !1926
  store %struct.pager* %9, %struct.pager** %5, align 8, !dbg !1928
  %10 = call i32 @subproc_fork(), !dbg !1929
  store i32 %10, i32* %6, align 4, !dbg !1930
  %11 = load i32, i32* %6, align 4, !dbg !1931
  %12 = icmp ne i32 %11, 0, !dbg !1931
  br i1 %12, label %17, label %13, !dbg !1933

; <label>:13:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata %struct.command* %7, metadata !1934, metadata !484), !dbg !1945
  %14 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.79, i32 0, i32 0)) #8, !dbg !1946
  call void @command_init(%struct.command* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.80, i32 0, i32 0), i8* %14), !dbg !1947
  call void @command_add_arg(%struct.command* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.80, i32 0, i32 0)), !dbg !1949
  call void @command_add_arg(%struct.command* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.81, i32 0, i32 0)), !dbg !1950
  %15 = load i8*, i8** %3, align 8, !dbg !1951
  call void @command_add_arg(%struct.command* %7, i8* %15), !dbg !1952
  %16 = load i8*, i8** %4, align 8, !dbg !1953
  call void @command_add_arg(%struct.command* %7, i8* %16), !dbg !1954
  call void @command_exec(%struct.command* %7) #9, !dbg !1955
  unreachable, !dbg !1955

; <label>:17:                                     ; preds = %2
  %18 = load i32, i32* %6, align 4, !dbg !1956
  %19 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.79, i32 0, i32 0)) #8, !dbg !1957
  %20 = call i32 @subproc_reap(i32 %18, i8* %19, i32 4), !dbg !1958
  %21 = load %struct.pager*, %struct.pager** %5, align 8, !dbg !1959
  call void @pager_reap(%struct.pager* %21), !dbg !1960
  ret void, !dbg !1961
}

; Function Attrs: nounwind uwtable
define internal void @spawn_shell(i8*, i8*) #0 !dbg !1962 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1963, metadata !484), !dbg !1964
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1965, metadata !484), !dbg !1966
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1967, metadata !484), !dbg !1968
  %6 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.82, i32 0, i32 0)) #8, !dbg !1969
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1970
  %8 = call i32 @fputs(i8* %6, %struct._IO_FILE* %7), !dbg !1971
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1973
  %10 = call i32 @fputs(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.83, i32 0, i32 0), %struct._IO_FILE* %9), !dbg !1974
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1975
  %12 = call i32 @fputs(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.84, i32 0, i32 0), %struct._IO_FILE* %11), !dbg !1976
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1977
  %14 = call i32 @fputs(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.85, i32 0, i32 0), %struct._IO_FILE* %13), !dbg !1978
  %15 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.86, i32 0, i32 0)) #8, !dbg !1979
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1980
  %17 = call i32 @fputs(i8* %15, %struct._IO_FILE* %16), !dbg !1981
  %18 = call i32 @subproc_fork(), !dbg !1982
  store i32 %18, i32* %5, align 4, !dbg !1983
  %19 = load i32, i32* %5, align 4, !dbg !1984
  %20 = icmp ne i32 %19, 0, !dbg !1984
  br i1 %20, label %28, label %21, !dbg !1986

; <label>:21:                                     ; preds = %2
  %22 = call i32 @setenv(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.50, i32 0, i32 0), i32 1) #8, !dbg !1987
  %23 = load i8*, i8** %3, align 8, !dbg !1989
  %24 = call i32 @setenv(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.88, i32 0, i32 0), i8* %23, i32 1) #8, !dbg !1990
  %25 = load i8*, i8** %4, align 8, !dbg !1991
  %26 = call i32 @setenv(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.89, i32 0, i32 0), i8* %25, i32 1) #8, !dbg !1992
  %27 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.90, i32 0, i32 0)) #8, !dbg !1993
  call void @command_shell(i8* null, i8* %27) #9, !dbg !1994
  unreachable, !dbg !1996

; <label>:28:                                     ; preds = %2
  %29 = load i32, i32* %5, align 4, !dbg !1997
  %30 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.90, i32 0, i32 0)) #8, !dbg !1998
  %31 = call i32 @subproc_reap(i32 %29, i8* %30, i32 4), !dbg !1999
  ret void, !dbg !2000
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #6

declare void @log_message(i8*, ...) #5

; Function Attrs: nounwind
declare i32 @tcflush(i32, i32) #4

declare i32 @fputs(i8*, %struct._IO_FILE*) #5

declare i8* @path_basename(i8*) #5

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #4

declare i32 @getchar() #5

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #7

; Function Attrs: nounwind readonly
declare i32 @tolower(i32) #6

declare %struct.pager* @pager_spawn(i8*) #5

declare i32 @subproc_fork() #5

declare void @command_init(%struct.command*, i8*, i8*) #5

declare void @command_add_arg(%struct.command*, i8*) #5

; Function Attrs: noreturn
declare void @command_exec(%struct.command*) #3

declare i32 @subproc_reap(i32, i8*, i32) #5

declare void @pager_reap(%struct.pager*) #5

; Function Attrs: nounwind
declare i32 @setenv(i8*, i8*, i32) #4

; Function Attrs: noreturn
declare void @command_shell(i8*, i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { noreturn }
attributes #10 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!477, !478}
!llvm.ident = !{!479}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !233, globals: !240)
!1 = !DIFile(filename: "[inter]src--configure.o.i", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!2 = !{!3, !15, !26, !35, !43, !47, !57, !67, !73, !81, !86, !91, !104, !109, !115, !120, !128, !159, !175, !181, !187, !205, !209, !224}
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
!109 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkg_name_arch_when", file: !4, line: 396, size: 32, align: 32, elements: !110)
!110 = !{!111, !112, !113, !114}
!111 = !DIEnumerator(name: "pnaw_never", value: 0)
!112 = !DIEnumerator(name: "pnaw_nonambig", value: 1)
!113 = !DIEnumerator(name: "pnaw_foreign", value: 2)
!114 = !DIEnumerator(name: "pnaw_always", value: 3)
!115 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "versiondisplayepochwhen", file: !4, line: 388, size: 32, align: 32, elements: !116)
!116 = !{!117, !118, !119}
!117 = !DIEnumerator(name: "vdew_never", value: 0)
!118 = !DIEnumerator(name: "vdew_nonambig", value: 1)
!119 = !DIEnumerator(name: "vdew_always", value: 2)
!120 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dependtry", file: !74, line: 243, size: 32, align: 32, elements: !121)
!121 = !{!122, !123, !124, !125, !126, !127}
!122 = !DIEnumerator(name: "DEPEND_TRY_NORMAL", value: 1)
!123 = !DIEnumerator(name: "DEPEND_TRY_CYCLES", value: 2)
!124 = !DIEnumerator(name: "DEPEND_TRY_TRIGGERS", value: 3)
!125 = !DIEnumerator(name: "DEPEND_TRY_FORCE_DEPENDS_VERSION", value: 4)
!126 = !DIEnumerator(name: "DEPEND_TRY_FORCE_DEPENDS", value: 5)
!127 = !DIEnumerator(name: "DEPEND_TRY_LAST", value: 6)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "force_flags", file: !129, line: 28, size: 32, align: 32, elements: !130)
!129 = !DIFile(filename: "force.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!130 = !{!131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158}
!131 = !DIEnumerator(name: "FORCE_ARCHITECTURE", value: 1)
!132 = !DIEnumerator(name: "FORCE_BAD_PATH", value: 2)
!133 = !DIEnumerator(name: "FORCE_BAD_VERIFY", value: 4)
!134 = !DIEnumerator(name: "FORCE_BAD_VERSION", value: 8)
!135 = !DIEnumerator(name: "FORCE_BREAKS", value: 16)
!136 = !DIEnumerator(name: "FORCE_CONFF_ASK", value: 32)
!137 = !DIEnumerator(name: "FORCE_CONFF_DEF", value: 64)
!138 = !DIEnumerator(name: "FORCE_CONFF_MISS", value: 128)
!139 = !DIEnumerator(name: "FORCE_CONFF_NEW", value: 256)
!140 = !DIEnumerator(name: "FORCE_CONFF_OLD", value: 512)
!141 = !DIEnumerator(name: "FORCE_CONFIGURE_ANY", value: 1024)
!142 = !DIEnumerator(name: "FORCE_CONFLICTS", value: 2048)
!143 = !DIEnumerator(name: "FORCE_DEPENDS", value: 4096)
!144 = !DIEnumerator(name: "FORCE_DEPENDS_VERSION", value: 8192)
!145 = !DIEnumerator(name: "FORCE_DOWNGRADE", value: 16384)
!146 = !DIEnumerator(name: "FORCE_HOLD", value: 32768)
!147 = !DIEnumerator(name: "FORCE_NON_ROOT", value: 65536)
!148 = !DIEnumerator(name: "FORCE_OVERWRITE", value: 131072)
!149 = !DIEnumerator(name: "FORCE_OVERWRITE_DIR", value: 262144)
!150 = !DIEnumerator(name: "FORCE_OVERWRITE_DIVERTED", value: 524288)
!151 = !DIEnumerator(name: "FORCE_REMOVE_ESSENTIAL", value: 1048576)
!152 = !DIEnumerator(name: "FORCE_REMOVE_REINSTREQ", value: 2097152)
!153 = !DIEnumerator(name: "FORCE_SCRIPT_CHROOTLESS", value: 4194304)
!154 = !DIEnumerator(name: "FORCE_UNSAFE_IO", value: 8388608)
!155 = !DIEnumerator(name: "FORCE_STATOVERRIDE_ADD", value: 16777216)
!156 = !DIEnumerator(name: "FORCE_STATOVERRIDE_DEL", value: 33554432)
!157 = !DIEnumerator(name: "FORCE_SECURITY_MAC", value: 67108864)
!158 = !DIEnumerator(name: "FORCE_ALL", value: -1)
!159 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "debugflags", file: !160, line: 41, size: 32, align: 32, elements: !161)
!160 = !DIFile(filename: "../lib/dpkg/debug.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!161 = !{!162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174}
!162 = !DIEnumerator(name: "dbg_general", value: 1)
!163 = !DIEnumerator(name: "dbg_scripts", value: 2)
!164 = !DIEnumerator(name: "dbg_eachfile", value: 8)
!165 = !DIEnumerator(name: "dbg_eachfiledetail", value: 64)
!166 = !DIEnumerator(name: "dbg_conff", value: 16)
!167 = !DIEnumerator(name: "dbg_conffdetail", value: 128)
!168 = !DIEnumerator(name: "dbg_depcon", value: 32)
!169 = !DIEnumerator(name: "dbg_depcondetail", value: 256)
!170 = !DIEnumerator(name: "dbg_veryverbose", value: 512)
!171 = !DIEnumerator(name: "dbg_stupidlyverbose", value: 1024)
!172 = !DIEnumerator(name: "dbg_triggers", value: 4096)
!173 = !DIEnumerator(name: "dbg_triggersdetail", value: 8192)
!174 = !DIEnumerator(name: "dbg_triggersstupid", value: 16384)
!175 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_msg_type", file: !176, line: 36, size: 32, align: 32, elements: !177)
!176 = !DIFile(filename: "../lib/dpkg/error.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!177 = !{!178, !179, !180}
!178 = !DIEnumerator(name: "DPKG_MSG_NONE", value: 0)
!179 = !DIEnumerator(name: "DPKG_MSG_WARN", value: 1)
!180 = !DIEnumerator(name: "DPKG_MSG_ERROR", value: 2)
!181 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !182, line: 41, size: 32, align: 32, elements: !183)
!182 = !DIFile(filename: "../lib/dpkg/ehandle.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!183 = !{!184, !185, !186}
!184 = !DIEnumerator(name: "ehflag_normaltidy", value: 1)
!185 = !DIEnumerator(name: "ehflag_bombout", value: 2)
!186 = !DIEnumerator(name: "ehflag_recursiveerror", value: 4)
!187 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "conffopt", file: !188, line: 61, size: 32, align: 32, elements: !189)
!188 = !DIFile(filename: "configure.c", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!189 = !{!190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204}
!190 = !DIEnumerator(name: "CFOF_PROMPT", value: 1)
!191 = !DIEnumerator(name: "CFOF_KEEP", value: 2)
!192 = !DIEnumerator(name: "CFOF_INSTALL", value: 4)
!193 = !DIEnumerator(name: "CFOF_BACKUP", value: 8)
!194 = !DIEnumerator(name: "CFOF_NEW_CONFF", value: 16)
!195 = !DIEnumerator(name: "CFOF_IS_NEW", value: 32)
!196 = !DIEnumerator(name: "CFOF_IS_OLD", value: 64)
!197 = !DIEnumerator(name: "CFOF_USER_DEL", value: 128)
!198 = !DIEnumerator(name: "CFO_KEEP", value: 2)
!199 = !DIEnumerator(name: "CFO_IDENTICAL", value: 2)
!200 = !DIEnumerator(name: "CFO_INSTALL", value: 4)
!201 = !DIEnumerator(name: "CFO_NEW_CONFF", value: 20)
!202 = !DIEnumerator(name: "CFO_PROMPT", value: 1)
!203 = !DIEnumerator(name: "CFO_PROMPT_KEEP", value: 3)
!204 = !DIEnumerator(name: "CFO_PROMPT_INSTALL", value: 5)
!205 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fsys_hash_find_flags", file: !92, line: 54, size: 32, align: 32, elements: !206)
!206 = !{!207, !208}
!207 = !DIEnumerator(name: "FHFF_NOCOPY", value: 1)
!208 = !DIEnumerator(name: "FHFF_NONE", value: 2)
!209 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !210, line: 46, size: 32, align: 32, elements: !211)
!210 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!211 = !{!212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223}
!212 = !DIEnumerator(name: "_ISupper", value: 256)
!213 = !DIEnumerator(name: "_ISlower", value: 512)
!214 = !DIEnumerator(name: "_ISalpha", value: 1024)
!215 = !DIEnumerator(name: "_ISdigit", value: 2048)
!216 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!217 = !DIEnumerator(name: "_ISspace", value: 8192)
!218 = !DIEnumerator(name: "_ISprint", value: 16384)
!219 = !DIEnumerator(name: "_ISgraph", value: 32768)
!220 = !DIEnumerator(name: "_ISblank", value: 1)
!221 = !DIEnumerator(name: "_IScntrl", value: 2)
!222 = !DIEnumerator(name: "_ISpunct", value: 4)
!223 = !DIEnumerator(name: "_ISalnum", value: 8)
!224 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "subproc_flags", file: !225, line: 36, size: 32, align: 32, elements: !226)
!225 = !DIFile(filename: "../lib/dpkg/subproc.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!226 = !{!227, !228, !229, !230, !231, !232}
!227 = !DIEnumerator(name: "SUBPROC_NORMAL", value: 0)
!228 = !DIEnumerator(name: "SUBPROC_WARN", value: 1)
!229 = !DIEnumerator(name: "SUBPROC_NOPIPE", value: 2)
!230 = !DIEnumerator(name: "SUBPROC_NOCHECK", value: 4)
!231 = !DIEnumerator(name: "SUBPROC_RETERROR", value: 8)
!232 = !DIEnumerator(name: "SUBPROC_RETSIGNO", value: 8)
!233 = !{!234, !235, !238, !239}
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !236, line: 134, baseType: !237)
!236 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!237 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!238 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!239 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!240 = !{!241, !469, !473}
!241 = distinct !DIGlobalVariable(name: "target", scope: !242, file: !188, line: 702, type: !460, isLocal: true, isDefinition: true, variable: %struct.varbuf* @conffderef.target)
!242 = distinct !DISubprogram(name: "conffderef", scope: !188, file: !188, line: 700, type: !243, isLocal: false, isDefinition: true, scopeLine: 701, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !468)
!243 = !DISubroutineType(types: !244)
!244 = !{!238, !245, !459, !254}
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64, align: 64)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkginfo", file: !4, line: 195, size: 3072, align: 64, elements: !247)
!247 = !{!248, !299, !300, !301, !302, !303, !304, !305, !306, !307, !337, !338, !354, !363, !379, !380, !386, !454, !457, !458}
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
!298 = !DIDerivedType(tag: DW_TAG_member, name: "installed_instances", scope: !250, file: !4, line: 250, baseType: !238, size: 32, align: 32, offset: 3328)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "arch_next", scope: !246, file: !4, line: 197, baseType: !245, size: 64, align: 64, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "want", scope: !246, file: !4, line: 199, baseType: !35, size: 32, align: 32, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "eflag", scope: !246, file: !4, line: 201, baseType: !43, size: 32, align: 32, offset: 160)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !246, file: !4, line: 202, baseType: !47, size: 32, align: 32, offset: 192)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !246, file: !4, line: 203, baseType: !57, size: 32, align: 32, offset: 224)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "otherpriority", scope: !246, file: !4, line: 204, baseType: !254, size: 64, align: 64, offset: 256)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "section", scope: !246, file: !4, line: 205, baseType: !254, size: 64, align: 64, offset: 320)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "configversion", scope: !246, file: !4, line: 206, baseType: !287, size: 192, align: 64, offset: 384)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !246, file: !4, line: 207, baseType: !308, size: 960, align: 64, offset: 576)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgbin", file: !4, line: 107, size: 960, align: 64, elements: !309)
!309 = !{!310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !330}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "depends", scope: !308, file: !4, line: 108, baseType: !266, size: 64, align: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "essential", scope: !308, file: !4, line: 110, baseType: !295, size: 8, align: 8, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "multiarch", scope: !308, file: !4, line: 111, baseType: !67, size: 32, align: 32, offset: 96)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !308, file: !4, line: 112, baseType: !278, size: 64, align: 64, offset: 128)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "pkgname_archqual", scope: !308, file: !4, line: 115, baseType: !254, size: 64, align: 64, offset: 192)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !308, file: !4, line: 116, baseType: !254, size: 64, align: 64, offset: 256)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "maintainer", scope: !308, file: !4, line: 117, baseType: !254, size: 64, align: 64, offset: 320)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !308, file: !4, line: 118, baseType: !254, size: 64, align: 64, offset: 384)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "installedsize", scope: !308, file: !4, line: 119, baseType: !254, size: 64, align: 64, offset: 448)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !308, file: !4, line: 120, baseType: !254, size: 64, align: 64, offset: 512)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "bugs", scope: !308, file: !4, line: 121, baseType: !254, size: 64, align: 64, offset: 576)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !308, file: !4, line: 122, baseType: !287, size: 192, align: 64, offset: 640)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "conffiles", scope: !308, file: !4, line: 123, baseType: !323, size: 64, align: 64, offset: 832)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64, align: 64)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conffile", file: !4, line: 80, size: 256, align: 64, elements: !325)
!325 = !{!326, !327, !328, !329}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !324, file: !4, line: 81, baseType: !323, size: 64, align: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !324, file: !4, line: 82, baseType: !254, size: 64, align: 64, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !324, file: !4, line: 83, baseType: !254, size: 64, align: 64, offset: 128)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "obsolete", scope: !324, file: !4, line: 84, baseType: !295, size: 8, align: 8, offset: 192)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "arbs", scope: !308, file: !4, line: 124, baseType: !331, size: 64, align: 64, offset: 896)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64, align: 64)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arbitraryfield", file: !4, line: 74, size: 192, align: 64, elements: !333)
!333 = !{!334, !335, !336}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !332, file: !4, line: 75, baseType: !331, size: 64, align: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !332, file: !4, line: 76, baseType: !254, size: 64, align: 64, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !332, file: !4, line: 77, baseType: !254, size: 64, align: 64, offset: 128)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !246, file: !4, line: 208, baseType: !308, size: 960, align: 64, offset: 1536)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "clientdata", scope: !246, file: !4, line: 209, baseType: !339, size: 64, align: 64, offset: 2496)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64, align: 64)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perpackagestate", file: !74, line: 53, size: 256, align: 64, elements: !341)
!341 = !{!342, !343, !344, !345, !346, !347}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "istobe", scope: !340, file: !74, line: 54, baseType: !73, size: 32, align: 32)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !340, file: !74, line: 57, baseType: !81, size: 32, align: 32, offset: 32)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !340, file: !74, line: 59, baseType: !295, size: 8, align: 8, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "replacingfilesandsaid", scope: !340, file: !74, line: 61, baseType: !238, size: 32, align: 32, offset: 96)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "cmdline_seen", scope: !340, file: !74, line: 62, baseType: !238, size: 32, align: 32, offset: 128)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "trigprocdeferred", scope: !340, file: !74, line: 65, baseType: !348, size: 64, align: 64, offset: 192)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64, align: 64)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_list", file: !350, line: 34, size: 128, align: 64, elements: !351)
!350 = !DIFile(filename: "../lib/dpkg/pkg-list.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!351 = !{!352, !353}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !349, file: !350, line: 35, baseType: !348, size: 64, align: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !349, file: !350, line: 36, baseType: !245, size: 64, align: 64, offset: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "archives", scope: !246, file: !4, line: 211, baseType: !355, size: 64, align: 64, offset: 2560)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64, align: 64)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archivedetails", file: !4, line: 87, size: 320, align: 64, elements: !357)
!357 = !{!358, !359, !360, !361, !362}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !356, file: !4, line: 88, baseType: !355, size: 64, align: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !356, file: !4, line: 89, baseType: !254, size: 64, align: 64, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "msdosname", scope: !356, file: !4, line: 90, baseType: !254, size: 64, align: 64, offset: 128)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !356, file: !4, line: 91, baseType: !254, size: 64, align: 64, offset: 192)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "md5sum", scope: !356, file: !4, line: 92, baseType: !254, size: 64, align: 64, offset: 256)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "trigaw", scope: !246, file: !4, line: 216, baseType: !364, size: 128, align: 64, offset: 2624)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !246, file: !4, line: 213, size: 128, align: 64, elements: !365)
!365 = !{!366, !378}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !364, file: !4, line: 215, baseType: !367, size: 64, align: 64)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64, align: 64)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigaw", file: !4, line: 142, size: 320, align: 64, elements: !369)
!369 = !{!370, !371, !372, !373}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "aw", scope: !368, file: !4, line: 143, baseType: !245, size: 64, align: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "pend", scope: !368, file: !4, line: 143, baseType: !245, size: 64, align: 64, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "samepend_next", scope: !368, file: !4, line: 144, baseType: !367, size: 64, align: 64, offset: 128)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "sameaw", scope: !368, file: !4, line: 147, baseType: !374, size: 128, align: 64, offset: 192)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !368, file: !4, line: 145, size: 128, align: 64, elements: !375)
!375 = !{!376, !377}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !374, file: !4, line: 146, baseType: !367, size: 64, align: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !374, file: !4, line: 146, baseType: !367, size: 64, align: 64, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !364, file: !4, line: 215, baseType: !367, size: 64, align: 64, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "othertrigaw_head", scope: !246, file: !4, line: 219, baseType: !367, size: 64, align: 64, offset: 2752)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "trigpend_head", scope: !246, file: !4, line: 220, baseType: !381, size: 64, align: 64, offset: 2816)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64, align: 64)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigpend", file: !4, line: 134, size: 128, align: 64, elements: !383)
!383 = !{!384, !385}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !382, file: !4, line: 135, baseType: !381, size: 64, align: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !382, file: !4, line: 136, baseType: !254, size: 64, align: 64, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !246, file: !4, line: 231, baseType: !387, size: 64, align: 64, offset: 2880)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64, align: 64)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode_list", file: !92, line: 122, size: 128, align: 64, elements: !389)
!389 = !{!390, !391}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !388, file: !92, line: 123, baseType: !387, size: 64, align: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "namenode", scope: !388, file: !92, line: 124, baseType: !392, size: 64, align: 64, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64, align: 64)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode", file: !92, line: 90, size: 640, align: 64, elements: !394)
!394 = !{!395, !396, !397, !398, !406, !425, !440, !441, !442, !443}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !393, file: !92, line: 91, baseType: !392, size: 64, align: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !393, file: !92, line: 92, baseType: !254, size: 64, align: 64, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "packages", scope: !393, file: !92, line: 93, baseType: !348, size: 64, align: 64, offset: 128)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "divert", scope: !393, file: !92, line: 94, baseType: !399, size: 64, align: 64, offset: 192)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64, align: 64)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_diversion", file: !92, line: 151, size: 256, align: 64, elements: !401)
!401 = !{!402, !403, !404, !405}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "useinstead", scope: !400, file: !92, line: 152, baseType: !392, size: 64, align: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "camefrom", scope: !400, file: !92, line: 153, baseType: !392, size: 64, align: 64, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "pkgset", scope: !400, file: !92, line: 154, baseType: !249, size: 64, align: 64, offset: 128)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !400, file: !92, line: 157, baseType: !399, size: 64, align: 64, offset: 192)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "statoverride", scope: !393, file: !92, line: 101, baseType: !407, size: 64, align: 64, offset: 256)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64, align: 64)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_stat", file: !409, line: 40, size: 256, align: 64, elements: !410)
!409 = !DIFile(filename: "../lib/dpkg/file.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!410 = !{!411, !416, !419, !422, !424}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !408, file: !409, line: 41, baseType: !412, size: 32, align: 32)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !413, line: 80, baseType: !414)
!413 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !415, line: 125, baseType: !290)
!415 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!416 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !408, file: !409, line: 42, baseType: !417, size: 32, align: 32, offset: 32)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !413, line: 65, baseType: !418)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !415, line: 126, baseType: !290)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !408, file: !409, line: 43, baseType: !420, size: 32, align: 32, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !413, line: 70, baseType: !421)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !415, line: 129, baseType: !290)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "uname", scope: !408, file: !409, line: 47, baseType: !423, size: 64, align: 64, offset: 128)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64, align: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !408, file: !409, line: 48, baseType: !423, size: 64, align: 64, offset: 192)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "trig_interested", scope: !393, file: !92, line: 103, baseType: !426, size: 64, align: 64, offset: 320)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64, align: 64)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigfileint", file: !87, line: 54, size: 448, align: 64, elements: !428)
!428 = !{!429, !430, !432, !433, !434, !435}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !427, file: !87, line: 55, baseType: !245, size: 64, align: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "pkgbin", scope: !427, file: !87, line: 56, baseType: !431, size: 64, align: 64, offset: 64)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64, align: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "fnn", scope: !427, file: !87, line: 57, baseType: !392, size: 64, align: 64, offset: 128)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !427, file: !87, line: 58, baseType: !86, size: 32, align: 32, offset: 192)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "samefile_next", scope: !427, file: !87, line: 59, baseType: !426, size: 64, align: 64, offset: 256)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "inoverall", scope: !427, file: !87, line: 62, baseType: !436, size: 128, align: 64, offset: 320)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !427, file: !87, line: 60, size: 128, align: 64, elements: !437)
!437 = !{!438, !439}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !436, file: !87, line: 61, baseType: !426, size: 64, align: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !436, file: !87, line: 61, baseType: !426, size: 64, align: 64, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !393, file: !92, line: 111, baseType: !91, size: 32, align: 32, offset: 384)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "oldhash", scope: !393, file: !92, line: 114, baseType: !254, size: 64, align: 64, offset: 448)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "newhash", scope: !393, file: !92, line: 117, baseType: !254, size: 64, align: 64, offset: 512)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "file_ondisk_id", scope: !393, file: !92, line: 119, baseType: !444, size: 64, align: 64, offset: 576)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64, align: 64)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ondisk_id", file: !92, line: 85, size: 128, align: 64, elements: !446)
!446 = !{!447, !451}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "id_dev", scope: !445, file: !92, line: 86, baseType: !448, size: 64, align: 64)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !413, line: 60, baseType: !449)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !415, line: 124, baseType: !450)
!450 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "id_ino", scope: !445, file: !92, line: 87, baseType: !452, size: 64, align: 64, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !413, line: 48, baseType: !453)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !415, line: 127, baseType: !450)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_phys_offs", scope: !246, file: !4, line: 232, baseType: !455, size: 64, align: 64, offset: 2944)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !413, line: 86, baseType: !456)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !415, line: 131, baseType: !237)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_valid", scope: !246, file: !4, line: 233, baseType: !295, size: 8, align: 8, offset: 3008)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "status_dirty", scope: !246, file: !4, line: 236, baseType: !295, size: 8, align: 8, offset: 3016)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64, align: 64)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varbuf", file: !461, line: 55, size: 192, align: 64, elements: !462)
!461 = !DIFile(filename: "../lib/dpkg/varbuf.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!462 = !{!463, !466, !467}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !460, file: !461, line: 56, baseType: !464, size: 64, align: 64)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !465, line: 216, baseType: !450)
!465 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!466 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !460, file: !461, line: 56, baseType: !464, size: 64, align: 64, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !460, file: !461, line: 57, baseType: !423, size: 64, align: 64, offset: 128)
!468 = !{}
!469 = distinct !DIGlobalVariable(name: "fd", scope: !470, file: !188, line: 811, type: !238, isLocal: true, isDefinition: true, variable: i32* @md5hash.fd)
!470 = distinct !DISubprogram(name: "md5hash", scope: !188, file: !188, line: 808, type: !471, isLocal: false, isDefinition: true, scopeLine: 809, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !468)
!471 = !DISubroutineType(types: !472)
!472 = !{null, !245, !423, !254}
!473 = distinct !DIGlobalVariable(name: "conffoptcells", scope: !0, file: !188, line: 80, type: !474, isLocal: true, isDefinition: true, variable: [2 x [2 x i32]]* @conffoptcells)
!474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, size: 128, align: 32, elements: !475)
!475 = !{!476, !476}
!476 = !DISubrange(count: 2)
!477 = !{i32 2, !"Dwarf Version", i32 4}
!478 = !{i32 2, !"Debug Info Version", i32 3}
!479 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!480 = distinct !DISubprogram(name: "deferred_configure", scope: !188, file: !188, line: 542, type: !481, isLocal: false, isDefinition: true, scopeLine: 543, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !468)
!481 = !DISubroutineType(types: !482)
!482 = !{null, !245}
!483 = !DILocalVariable(name: "pkg", arg: 1, scope: !480, file: !188, line: 542, type: !245)
!484 = !DIExpression()
!485 = !DILocation(line: 542, column: 36, scope: !480)
!486 = !DILocalVariable(name: "aemsgs", scope: !480, file: !188, line: 544, type: !460)
!487 = !DILocation(line: 544, column: 16, scope: !480)
!488 = !DILocalVariable(name: "conff", scope: !480, file: !188, line: 545, type: !323)
!489 = !DILocation(line: 545, column: 19, scope: !480)
!490 = !DILocalVariable(name: "otherpkg", scope: !480, file: !188, line: 546, type: !245)
!491 = !DILocation(line: 546, column: 18, scope: !480)
!492 = !DILocalVariable(name: "ok", scope: !480, file: !188, line: 547, type: !104)
!493 = !DILocation(line: 547, column: 17, scope: !480)
!494 = !DILocation(line: 549, column: 6, scope: !495)
!495 = distinct !DILexicalBlock(scope: !480, file: !188, line: 549, column: 6)
!496 = !DILocation(line: 549, column: 11, scope: !495)
!497 = !DILocation(line: 549, column: 18, scope: !495)
!498 = !DILocation(line: 549, column: 6, scope: !480)
!499 = !DILocation(line: 550, column: 10, scope: !495)
!500 = !DILocation(line: 551, column: 19, scope: !495)
!501 = !DILocation(line: 551, column: 10, scope: !495)
!502 = !DILocation(line: 550, column: 3, scope: !503)
!503 = !DILexicalBlockFile(scope: !495, file: !188, discriminator: 1)
!504 = !DILocation(line: 550, column: 3, scope: !495)
!505 = !DILocation(line: 552, column: 6, scope: !506)
!506 = distinct !DILexicalBlock(scope: !480, file: !188, line: 552, column: 6)
!507 = !DILocation(line: 552, column: 11, scope: !506)
!508 = !DILocation(line: 552, column: 18, scope: !506)
!509 = !DILocation(line: 552, column: 6, scope: !480)
!510 = !DILocation(line: 553, column: 10, scope: !506)
!511 = !DILocation(line: 554, column: 19, scope: !506)
!512 = !DILocation(line: 554, column: 10, scope: !506)
!513 = !DILocation(line: 553, column: 3, scope: !514)
!514 = !DILexicalBlockFile(scope: !506, file: !188, discriminator: 1)
!515 = !DILocation(line: 553, column: 3, scope: !506)
!516 = !DILocation(line: 555, column: 6, scope: !517)
!517 = distinct !DILexicalBlock(scope: !480, file: !188, line: 555, column: 6)
!518 = !DILocation(line: 555, column: 11, scope: !517)
!519 = !DILocation(line: 555, column: 18, scope: !517)
!520 = !DILocation(line: 555, column: 39, scope: !517)
!521 = !DILocation(line: 556, column: 6, scope: !517)
!522 = !DILocation(line: 556, column: 11, scope: !517)
!523 = !DILocation(line: 556, column: 18, scope: !517)
!524 = !DILocation(line: 555, column: 6, scope: !525)
!525 = !DILexicalBlockFile(scope: !480, file: !188, discriminator: 1)
!526 = !DILocation(line: 557, column: 10, scope: !517)
!527 = !DILocation(line: 559, column: 19, scope: !517)
!528 = !DILocation(line: 559, column: 10, scope: !517)
!529 = !DILocation(line: 560, column: 26, scope: !517)
!530 = !DILocation(line: 560, column: 10, scope: !517)
!531 = !DILocation(line: 557, column: 3, scope: !532)
!532 = !DILexicalBlockFile(scope: !517, file: !188, discriminator: 1)
!533 = !DILocation(line: 557, column: 3, scope: !517)
!534 = !DILocation(line: 562, column: 19, scope: !535)
!535 = distinct !DILexicalBlock(scope: !480, file: !188, line: 562, column: 2)
!536 = !DILocation(line: 562, column: 24, scope: !535)
!537 = !DILocation(line: 562, column: 29, scope: !535)
!538 = !DILocation(line: 562, column: 16, scope: !535)
!539 = !DILocation(line: 562, column: 7, scope: !535)
!540 = !DILocation(line: 562, column: 34, scope: !541)
!541 = !DILexicalBlockFile(scope: !542, file: !188, discriminator: 1)
!542 = distinct !DILexicalBlock(scope: !535, file: !188, line: 562, column: 2)
!543 = !DILocation(line: 562, column: 2, scope: !541)
!544 = !DILocation(line: 563, column: 7, scope: !545)
!545 = distinct !DILexicalBlock(scope: !546, file: !188, line: 563, column: 7)
!546 = distinct !DILexicalBlock(scope: !542, file: !188, line: 562, column: 76)
!547 = !DILocation(line: 563, column: 19, scope: !545)
!548 = !DILocation(line: 563, column: 16, scope: !545)
!549 = !DILocation(line: 563, column: 7, scope: !546)
!550 = !DILocation(line: 564, column: 4, scope: !545)
!551 = !DILocation(line: 565, column: 7, scope: !552)
!552 = distinct !DILexicalBlock(scope: !546, file: !188, line: 565, column: 7)
!553 = !DILocation(line: 565, column: 17, scope: !552)
!554 = !DILocation(line: 565, column: 24, scope: !552)
!555 = !DILocation(line: 565, column: 7, scope: !546)
!556 = !DILocation(line: 566, column: 4, scope: !552)
!557 = !DILocation(line: 568, column: 7, scope: !558)
!558 = distinct !DILexicalBlock(scope: !546, file: !188, line: 568, column: 7)
!559 = !DILocation(line: 568, column: 17, scope: !558)
!560 = !DILocation(line: 568, column: 24, scope: !558)
!561 = !DILocation(line: 568, column: 7, scope: !546)
!562 = !DILocation(line: 569, column: 11, scope: !558)
!563 = !DILocation(line: 571, column: 20, scope: !558)
!564 = !DILocation(line: 571, column: 11, scope: !558)
!565 = !DILocation(line: 572, column: 20, scope: !558)
!566 = !DILocation(line: 572, column: 11, scope: !558)
!567 = !DILocation(line: 573, column: 27, scope: !558)
!568 = !DILocation(line: 573, column: 11, scope: !558)
!569 = !DILocation(line: 569, column: 4, scope: !570)
!570 = !DILexicalBlockFile(scope: !558, file: !188, discriminator: 1)
!571 = !DILocation(line: 569, column: 4, scope: !558)
!572 = !DILocation(line: 575, column: 29, scope: !573)
!573 = distinct !DILexicalBlock(scope: !546, file: !188, line: 575, column: 7)
!574 = !DILocation(line: 575, column: 34, scope: !573)
!575 = !DILocation(line: 575, column: 44, scope: !573)
!576 = !DILocation(line: 576, column: 29, scope: !573)
!577 = !DILocation(line: 576, column: 39, scope: !573)
!578 = !DILocation(line: 576, column: 49, scope: !573)
!579 = !DILocation(line: 575, column: 7, scope: !573)
!580 = !DILocation(line: 575, column: 7, scope: !546)
!581 = !DILocation(line: 577, column: 11, scope: !573)
!582 = !DILocation(line: 579, column: 20, scope: !573)
!583 = !DILocation(line: 579, column: 11, scope: !573)
!584 = !DILocation(line: 580, column: 28, scope: !573)
!585 = !DILocation(line: 580, column: 33, scope: !573)
!586 = !DILocation(line: 580, column: 43, scope: !573)
!587 = !DILocation(line: 580, column: 11, scope: !573)
!588 = !DILocation(line: 582, column: 20, scope: !573)
!589 = !DILocation(line: 582, column: 11, scope: !573)
!590 = !DILocation(line: 583, column: 28, scope: !573)
!591 = !DILocation(line: 583, column: 38, scope: !573)
!592 = !DILocation(line: 583, column: 48, scope: !573)
!593 = !DILocation(line: 583, column: 11, scope: !573)
!594 = !DILocation(line: 577, column: 4, scope: !595)
!595 = !DILexicalBlockFile(scope: !573, file: !188, discriminator: 1)
!596 = !DILocation(line: 577, column: 4, scope: !573)
!597 = !DILocation(line: 585, column: 2, scope: !546)
!598 = !DILocation(line: 562, column: 55, scope: !599)
!599 = !DILexicalBlockFile(scope: !542, file: !188, discriminator: 2)
!600 = !DILocation(line: 562, column: 65, scope: !599)
!601 = !DILocation(line: 562, column: 53, scope: !599)
!602 = !DILocation(line: 562, column: 2, scope: !599)
!603 = distinct !{!603, !604}
!604 = !DILocation(line: 562, column: 2, scope: !480)
!605 = !DILocation(line: 587, column: 6, scope: !606)
!606 = distinct !DILexicalBlock(scope: !480, file: !188, line: 587, column: 6)
!607 = !DILocation(line: 587, column: 16, scope: !606)
!608 = !DILocation(line: 587, column: 6, scope: !480)
!609 = !DILocation(line: 588, column: 22, scope: !610)
!610 = distinct !DILexicalBlock(scope: !606, file: !188, line: 588, column: 7)
!611 = !DILocation(line: 588, column: 7, scope: !610)
!612 = !DILocation(line: 588, column: 7, scope: !606)
!613 = !DILocation(line: 589, column: 17, scope: !610)
!614 = !DILocation(line: 589, column: 4, scope: !610)
!615 = !DILocation(line: 588, column: 25, scope: !616)
!616 = !DILexicalBlockFile(scope: !610, file: !188, discriminator: 1)
!617 = !DILocation(line: 591, column: 23, scope: !480)
!618 = !DILocation(line: 591, column: 7, scope: !480)
!619 = !DILocation(line: 591, column: 5, scope: !480)
!620 = !DILocation(line: 592, column: 6, scope: !621)
!621 = distinct !DILexicalBlock(scope: !480, file: !188, line: 592, column: 6)
!622 = !DILocation(line: 592, column: 9, scope: !621)
!623 = !DILocation(line: 592, column: 6, scope: !480)
!624 = !DILocation(line: 593, column: 3, scope: !625)
!625 = distinct !DILexicalBlock(scope: !621, file: !188, line: 592, column: 29)
!626 = !DILocation(line: 594, column: 29, scope: !625)
!627 = !DILocation(line: 594, column: 3, scope: !625)
!628 = !DILocation(line: 595, column: 3, scope: !625)
!629 = !DILocation(line: 595, column: 8, scope: !625)
!630 = !DILocation(line: 595, column: 20, scope: !625)
!631 = !DILocation(line: 595, column: 27, scope: !625)
!632 = !DILocation(line: 596, column: 19, scope: !625)
!633 = !DILocation(line: 596, column: 3, scope: !625)
!634 = !DILocation(line: 597, column: 3, scope: !625)
!635 = !DILocation(line: 600, column: 2, scope: !480)
!636 = !DILocation(line: 610, column: 19, scope: !480)
!637 = !DILocation(line: 610, column: 7, scope: !480)
!638 = !DILocation(line: 610, column: 35, scope: !525)
!639 = !DILocation(line: 610, column: 7, scope: !525)
!640 = !DILocation(line: 610, column: 7, scope: !641)
!641 = !DILexicalBlockFile(scope: !480, file: !188, discriminator: 2)
!642 = !DILocation(line: 610, column: 7, scope: !643)
!643 = !DILexicalBlockFile(scope: !480, file: !188, discriminator: 3)
!644 = !DILocation(line: 610, column: 5, scope: !643)
!645 = !DILocation(line: 611, column: 6, scope: !646)
!646 = distinct !DILexicalBlock(scope: !480, file: !188, line: 611, column: 6)
!647 = !DILocation(line: 611, column: 9, scope: !646)
!648 = !DILocation(line: 611, column: 6, scope: !480)
!649 = !DILocation(line: 612, column: 16, scope: !650)
!650 = distinct !DILexicalBlock(scope: !646, file: !188, line: 611, column: 28)
!651 = !DILocation(line: 613, column: 3, scope: !650)
!652 = !DILocation(line: 614, column: 10, scope: !650)
!653 = !DILocation(line: 615, column: 19, scope: !650)
!654 = !DILocation(line: 615, column: 10, scope: !650)
!655 = !DILocation(line: 615, column: 47, scope: !650)
!656 = !DILocation(line: 614, column: 3, scope: !657)
!657 = !DILexicalBlockFile(scope: !650, file: !188, discriminator: 1)
!658 = !DILocation(line: 616, column: 3, scope: !650)
!659 = !DILocation(line: 617, column: 10, scope: !650)
!660 = !DILocation(line: 617, column: 3, scope: !657)
!661 = !DILocation(line: 617, column: 3, scope: !650)
!662 = !DILocation(line: 618, column: 20, scope: !663)
!663 = distinct !DILexicalBlock(scope: !646, file: !188, line: 618, column: 13)
!664 = !DILocation(line: 618, column: 13, scope: !663)
!665 = !DILocation(line: 618, column: 13, scope: !646)
!666 = !DILocation(line: 619, column: 3, scope: !667)
!667 = distinct !DILexicalBlock(scope: !663, file: !188, line: 618, column: 26)
!668 = !DILocation(line: 620, column: 10, scope: !667)
!669 = !DILocation(line: 621, column: 19, scope: !667)
!670 = !DILocation(line: 621, column: 10, scope: !667)
!671 = !DILocation(line: 621, column: 47, scope: !667)
!672 = !DILocation(line: 620, column: 3, scope: !673)
!673 = !DILexicalBlockFile(scope: !667, file: !188, discriminator: 1)
!674 = !DILocation(line: 622, column: 2, scope: !667)
!675 = !DILocation(line: 623, column: 2, scope: !480)
!676 = !DILocation(line: 624, column: 15, scope: !480)
!677 = !DILocation(line: 626, column: 6, scope: !678)
!678 = distinct !DILexicalBlock(scope: !480, file: !188, line: 626, column: 6)
!679 = !DILocation(line: 626, column: 11, scope: !678)
!680 = !DILocation(line: 626, column: 17, scope: !678)
!681 = !DILocation(line: 626, column: 6, scope: !480)
!682 = !DILocation(line: 628, column: 15, scope: !678)
!683 = !DILocation(line: 627, column: 3, scope: !678)
!684 = !DILocation(line: 631, column: 9, scope: !480)
!685 = !DILocation(line: 631, column: 55, scope: !480)
!686 = !DILocation(line: 631, column: 46, scope: !525)
!687 = !DILocation(line: 632, column: 26, scope: !480)
!688 = !DILocation(line: 632, column: 31, scope: !480)
!689 = !DILocation(line: 632, column: 41, scope: !480)
!690 = !DILocation(line: 632, column: 9, scope: !480)
!691 = !DILocation(line: 631, column: 2, scope: !641)
!692 = !DILocation(line: 633, column: 26, scope: !480)
!693 = !DILocation(line: 633, column: 32, scope: !480)
!694 = !DILocation(line: 633, column: 37, scope: !480)
!695 = !DILocation(line: 633, column: 2, scope: !480)
!696 = !DILocation(line: 635, column: 34, scope: !480)
!697 = !DILocation(line: 635, column: 2, scope: !480)
!698 = !DILocation(line: 637, column: 6, scope: !699)
!699 = distinct !DILexicalBlock(scope: !480, file: !188, line: 637, column: 6)
!700 = !DILocation(line: 637, column: 6, scope: !480)
!701 = !DILocation(line: 638, column: 18, scope: !702)
!702 = distinct !DILexicalBlock(scope: !699, file: !188, line: 637, column: 15)
!703 = !DILocation(line: 638, column: 3, scope: !702)
!704 = !DILocation(line: 639, column: 29, scope: !702)
!705 = !DILocation(line: 639, column: 3, scope: !702)
!706 = !DILocation(line: 640, column: 3, scope: !702)
!707 = !DILocation(line: 640, column: 8, scope: !702)
!708 = !DILocation(line: 640, column: 20, scope: !702)
!709 = !DILocation(line: 640, column: 27, scope: !702)
!710 = !DILocation(line: 641, column: 3, scope: !702)
!711 = !DILocation(line: 644, column: 6, scope: !712)
!712 = distinct !DILexicalBlock(scope: !480, file: !188, line: 644, column: 6)
!713 = !DILocation(line: 644, column: 11, scope: !712)
!714 = !DILocation(line: 644, column: 18, scope: !712)
!715 = !DILocation(line: 644, column: 6, scope: !480)
!716 = !DILocation(line: 645, column: 3, scope: !717)
!717 = distinct !DILexicalBlock(scope: !712, file: !188, line: 644, column: 40)
!718 = !DILocation(line: 654, column: 18, scope: !717)
!719 = !DILocation(line: 654, column: 3, scope: !717)
!720 = !DILocation(line: 662, column: 16, scope: !721)
!721 = distinct !DILexicalBlock(scope: !717, file: !188, line: 662, column: 3)
!722 = !DILocation(line: 662, column: 21, scope: !721)
!723 = !DILocation(line: 662, column: 31, scope: !721)
!724 = !DILocation(line: 662, column: 14, scope: !721)
!725 = !DILocation(line: 662, column: 8, scope: !721)
!726 = !DILocation(line: 662, column: 42, scope: !727)
!727 = !DILexicalBlockFile(scope: !728, file: !188, discriminator: 1)
!728 = distinct !DILexicalBlock(scope: !721, file: !188, line: 662, column: 3)
!729 = !DILocation(line: 662, column: 3, scope: !727)
!730 = !DILocation(line: 663, column: 8, scope: !731)
!731 = distinct !DILexicalBlock(scope: !732, file: !188, line: 663, column: 8)
!732 = distinct !DILexicalBlock(scope: !728, file: !188, line: 662, column: 70)
!733 = !DILocation(line: 663, column: 15, scope: !731)
!734 = !DILocation(line: 663, column: 8, scope: !732)
!735 = !DILocation(line: 664, column: 5, scope: !731)
!736 = !DILocation(line: 665, column: 32, scope: !732)
!737 = !DILocation(line: 665, column: 37, scope: !732)
!738 = !DILocation(line: 665, column: 4, scope: !732)
!739 = !DILocation(line: 666, column: 3, scope: !732)
!740 = !DILocation(line: 662, column: 57, scope: !741)
!741 = !DILexicalBlockFile(scope: !728, file: !188, discriminator: 2)
!742 = !DILocation(line: 662, column: 64, scope: !741)
!743 = !DILocation(line: 662, column: 55, scope: !741)
!744 = !DILocation(line: 662, column: 3, scope: !741)
!745 = distinct !{!745, !746}
!746 = !DILocation(line: 662, column: 3, scope: !717)
!747 = !DILocation(line: 668, column: 18, scope: !717)
!748 = !DILocation(line: 668, column: 3, scope: !717)
!749 = !DILocation(line: 669, column: 2, scope: !717)
!750 = !DILocation(line: 671, column: 6, scope: !751)
!751 = distinct !DILexicalBlock(scope: !480, file: !188, line: 671, column: 6)
!752 = !DILocation(line: 671, column: 11, scope: !751)
!753 = !DILocation(line: 671, column: 18, scope: !751)
!754 = !DILocation(line: 671, column: 6, scope: !480)
!755 = !DILocation(line: 672, column: 78, scope: !751)
!756 = !DILocation(line: 672, column: 69, scope: !751)
!757 = !DILocation(line: 672, column: 113, scope: !751)
!758 = !DILocation(line: 672, column: 97, scope: !759)
!759 = !DILexicalBlockFile(scope: !751, file: !188, discriminator: 1)
!760 = !DILocation(line: 672, column: 3, scope: !761)
!761 = !DILexicalBlockFile(scope: !751, file: !188, discriminator: 2)
!762 = !DILocation(line: 672, column: 3, scope: !751)
!763 = !DILocation(line: 675, column: 17, scope: !480)
!764 = !DILocation(line: 675, column: 2, scope: !480)
!765 = !DILocation(line: 677, column: 23, scope: !480)
!766 = !DILocation(line: 678, column: 52, scope: !480)
!767 = !DILocation(line: 678, column: 57, scope: !480)
!768 = !DILocation(line: 678, column: 23, scope: !480)
!769 = !DILocation(line: 679, column: 40, scope: !480)
!770 = !DILocation(line: 679, column: 45, scope: !480)
!771 = !DILocation(line: 679, column: 23, scope: !480)
!772 = !DILocation(line: 678, column: 23, scope: !525)
!773 = !DILocation(line: 678, column: 23, scope: !641)
!774 = !DILocation(line: 678, column: 23, scope: !643)
!775 = !DILocation(line: 677, column: 2, scope: !525)
!776 = !DILocation(line: 683, column: 19, scope: !480)
!777 = !DILocation(line: 683, column: 2, scope: !480)
!778 = !DILocation(line: 684, column: 2, scope: !480)
!779 = !DILocation(line: 684, column: 7, scope: !480)
!780 = !DILocation(line: 684, column: 21, scope: !480)
!781 = !DILocation(line: 685, column: 22, scope: !480)
!782 = !DILocation(line: 685, column: 2, scope: !480)
!783 = !DILocation(line: 686, column: 1, scope: !480)
!784 = !DILocation(line: 686, column: 1, scope: !525)
!785 = distinct !DISubprogram(name: "deferred_configure_conffile", scope: !188, file: !188, line: 375, type: !786, isLocal: true, isDefinition: true, scopeLine: 376, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !468)
!786 = !DISubroutineType(types: !787)
!787 = !{null, !245, !323}
!788 = !DILocalVariable(name: "pkg", arg: 1, scope: !785, file: !188, line: 375, type: !245)
!789 = !DILocation(line: 375, column: 45, scope: !785)
!790 = !DILocalVariable(name: "conff", arg: 2, scope: !785, file: !188, line: 375, type: !323)
!791 = !DILocation(line: 375, column: 67, scope: !785)
!792 = !DILocalVariable(name: "usenode", scope: !785, file: !188, line: 377, type: !392)
!793 = !DILocation(line: 377, column: 24, scope: !785)
!794 = !DILocalVariable(name: "currenthash", scope: !785, file: !188, line: 378, type: !795)
!795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 264, align: 8, elements: !796)
!796 = !{!797}
!797 = !DISubrange(count: 33)
!798 = !DILocation(line: 378, column: 7, scope: !785)
!799 = !DILocalVariable(name: "newdisthash", scope: !785, file: !188, line: 378, type: !795)
!800 = !DILocation(line: 378, column: 28, scope: !785)
!801 = !DILocalVariable(name: "useredited", scope: !785, file: !188, line: 379, type: !238)
!802 = !DILocation(line: 379, column: 6, scope: !785)
!803 = !DILocalVariable(name: "distedited", scope: !785, file: !188, line: 379, type: !238)
!804 = !DILocation(line: 379, column: 18, scope: !785)
!805 = !DILocalVariable(name: "what", scope: !785, file: !188, line: 380, type: !187)
!806 = !DILocation(line: 380, column: 16, scope: !785)
!807 = !DILocalVariable(name: "stab", scope: !785, file: !188, line: 381, type: !808)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !809, line: 46, size: 1152, align: 64, elements: !810)
!809 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!810 = !{!811, !812, !813, !815, !816, !817, !818, !819, !820, !821, !823, !825, !833, !834, !835}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !808, file: !809, line: 48, baseType: !449, size: 64, align: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !808, file: !809, line: 53, baseType: !453, size: 64, align: 64, offset: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !808, file: !809, line: 61, baseType: !814, size: 64, align: 64, offset: 128)
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !415, line: 130, baseType: !450)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !808, file: !809, line: 62, baseType: !421, size: 32, align: 32, offset: 192)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !808, file: !809, line: 64, baseType: !414, size: 32, align: 32, offset: 224)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !808, file: !809, line: 65, baseType: !418, size: 32, align: 32, offset: 256)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !808, file: !809, line: 67, baseType: !238, size: 32, align: 32, offset: 288)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !808, file: !809, line: 69, baseType: !449, size: 64, align: 64, offset: 320)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !808, file: !809, line: 74, baseType: !456, size: 64, align: 64, offset: 384)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !808, file: !809, line: 78, baseType: !822, size: 64, align: 64, offset: 448)
!822 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !415, line: 153, baseType: !237)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !808, file: !809, line: 80, baseType: !824, size: 64, align: 64, offset: 512)
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !415, line: 158, baseType: !237)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !808, file: !809, line: 91, baseType: !826, size: 128, align: 64, offset: 576)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !827, line: 120, size: 128, align: 64, elements: !828)
!827 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!828 = !{!829, !831}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !826, file: !827, line: 122, baseType: !830, size: 64, align: 64)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !415, line: 139, baseType: !237)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !826, file: !827, line: 123, baseType: !832, size: 64, align: 64, offset: 64)
!832 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !415, line: 175, baseType: !237)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !808, file: !809, line: 92, baseType: !826, size: 128, align: 64, offset: 704)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !808, file: !809, line: 93, baseType: !826, size: 128, align: 64, offset: 832)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !808, file: !809, line: 106, baseType: !836, size: 192, align: 64, offset: 960)
!836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !832, size: 192, align: 64, elements: !837)
!837 = !{!838}
!838 = !DISubrange(count: 3)
!839 = !DILocation(line: 381, column: 14, scope: !785)
!840 = !DILocalVariable(name: "cdr", scope: !785, file: !188, line: 382, type: !460)
!841 = !DILocation(line: 382, column: 16, scope: !785)
!842 = !DILocalVariable(name: "cdr2", scope: !785, file: !188, line: 382, type: !460)
!843 = !DILocation(line: 382, column: 24, scope: !785)
!844 = !DILocation(line: 382, column: 24, scope: !845)
!845 = !DILexicalBlockFile(scope: !785, file: !188, discriminator: 1)
!846 = !DILocalVariable(name: "cdr2rest", scope: !785, file: !188, line: 383, type: !423)
!847 = !DILocation(line: 383, column: 8, scope: !785)
!848 = !DILocalVariable(name: "rc", scope: !785, file: !188, line: 384, type: !238)
!849 = !DILocation(line: 384, column: 6, scope: !785)
!850 = !DILocation(line: 386, column: 46, scope: !785)
!851 = !DILocation(line: 386, column: 53, scope: !785)
!852 = !DILocation(line: 386, column: 26, scope: !785)
!853 = !DILocation(line: 387, column: 33, scope: !785)
!854 = !DILocation(line: 387, column: 39, scope: !785)
!855 = !DILocation(line: 387, column: 44, scope: !785)
!856 = !DILocation(line: 386, column: 12, scope: !845)
!857 = !DILocation(line: 386, column: 10, scope: !785)
!858 = !DILocation(line: 389, column: 18, scope: !785)
!859 = !DILocation(line: 389, column: 29, scope: !785)
!860 = !DILocation(line: 389, column: 38, scope: !785)
!861 = !DILocation(line: 389, column: 7, scope: !785)
!862 = !DILocation(line: 389, column: 5, scope: !785)
!863 = !DILocation(line: 390, column: 6, scope: !864)
!864 = distinct !DILexicalBlock(scope: !785, file: !188, line: 390, column: 6)
!865 = !DILocation(line: 390, column: 9, scope: !864)
!866 = !DILocation(line: 390, column: 6, scope: !785)
!867 = !DILocation(line: 391, column: 3, scope: !868)
!868 = distinct !DILexicalBlock(scope: !864, file: !188, line: 390, column: 16)
!869 = !DILocation(line: 391, column: 10, scope: !868)
!870 = !DILocation(line: 391, column: 15, scope: !868)
!871 = !DILocation(line: 392, column: 3, scope: !868)
!872 = !DILocation(line: 394, column: 10, scope: !785)
!873 = !DILocation(line: 394, column: 15, scope: !785)
!874 = !DILocation(line: 394, column: 32, scope: !785)
!875 = !DILocation(line: 394, column: 2, scope: !785)
!876 = !DILocation(line: 396, column: 2, scope: !785)
!877 = !DILocation(line: 397, column: 28, scope: !785)
!878 = !DILocation(line: 397, column: 44, scope: !785)
!879 = !DILocation(line: 397, column: 33, scope: !785)
!880 = !DILocation(line: 397, column: 2, scope: !845)
!881 = !DILocation(line: 398, column: 2, scope: !785)
!882 = !DILocation(line: 400, column: 2, scope: !785)
!883 = !DILocation(line: 401, column: 18, scope: !785)
!884 = !DILocation(line: 401, column: 35, scope: !785)
!885 = !DILocation(line: 401, column: 24, scope: !785)
!886 = !DILocation(line: 401, column: 22, scope: !785)
!887 = !DILocation(line: 401, column: 11, scope: !785)
!888 = !DILocation(line: 404, column: 9, scope: !785)
!889 = !DILocation(line: 404, column: 2, scope: !785)
!890 = !DILocation(line: 406, column: 17, scope: !891)
!891 = distinct !DILexicalBlock(scope: !785, file: !188, line: 406, column: 6)
!892 = !DILocation(line: 406, column: 6, scope: !891)
!893 = !DILocation(line: 406, column: 6, scope: !785)
!894 = !DILocation(line: 407, column: 8, scope: !895)
!895 = distinct !DILexicalBlock(scope: !896, file: !188, line: 407, column: 6)
!896 = distinct !DILexicalBlock(scope: !891, file: !188, line: 406, column: 30)
!897 = !DILocation(line: 407, column: 7, scope: !895)
!898 = !DILocation(line: 407, column: 12, scope: !895)
!899 = !DILocation(line: 407, column: 6, scope: !896)
!900 = !DILocation(line: 410, column: 38, scope: !901)
!901 = distinct !DILexicalBlock(scope: !895, file: !188, line: 407, column: 23)
!902 = !DILocation(line: 410, column: 43, scope: !901)
!903 = !DILocation(line: 410, column: 4, scope: !901)
!904 = !DILocation(line: 411, column: 4, scope: !901)
!905 = !DILocation(line: 413, column: 11, scope: !896)
!906 = !DILocation(line: 414, column: 16, scope: !896)
!907 = !DILocation(line: 413, column: 3, scope: !908)
!908 = !DILexicalBlockFile(scope: !896, file: !188, discriminator: 1)
!909 = !DILocation(line: 413, column: 3, scope: !896)
!910 = !DILocation(line: 416, column: 10, scope: !785)
!911 = !DILocation(line: 416, column: 15, scope: !785)
!912 = !DILocation(line: 416, column: 33, scope: !785)
!913 = !DILocation(line: 416, column: 2, scope: !785)
!914 = !DILocation(line: 420, column: 16, scope: !915)
!915 = distinct !DILexicalBlock(scope: !785, file: !188, line: 420, column: 6)
!916 = !DILocation(line: 420, column: 7, scope: !915)
!917 = !DILocation(line: 420, column: 6, scope: !785)
!918 = !DILocation(line: 421, column: 23, scope: !915)
!919 = !DILocation(line: 421, column: 33, scope: !915)
!920 = !DILocation(line: 421, column: 3, scope: !915)
!921 = !DILocation(line: 422, column: 12, scope: !922)
!922 = distinct !DILexicalBlock(scope: !915, file: !188, line: 422, column: 10)
!923 = !DILocation(line: 422, column: 11, scope: !922)
!924 = !DILocation(line: 422, column: 16, scope: !922)
!925 = !DILocation(line: 422, column: 10, scope: !915)
!926 = !DILocation(line: 423, column: 11, scope: !922)
!927 = !DILocation(line: 424, column: 15, scope: !922)
!928 = !DILocation(line: 423, column: 3, scope: !929)
!929 = !DILexicalBlockFile(scope: !922, file: !188, discriminator: 1)
!930 = !DILocation(line: 423, column: 3, scope: !922)
!931 = !DILocation(line: 427, column: 13, scope: !932)
!932 = distinct !DILexicalBlock(scope: !785, file: !188, line: 427, column: 6)
!933 = !DILocation(line: 427, column: 26, scope: !932)
!934 = !DILocation(line: 427, column: 6, scope: !932)
!935 = !DILocation(line: 427, column: 39, scope: !932)
!936 = !DILocation(line: 427, column: 6, scope: !785)
!937 = !DILocation(line: 430, column: 14, scope: !938)
!938 = distinct !DILexicalBlock(scope: !932, file: !188, line: 427, column: 45)
!939 = !DILocation(line: 431, column: 14, scope: !938)
!940 = !DILocation(line: 432, column: 8, scope: !938)
!941 = !DILocation(line: 433, column: 2, scope: !938)
!942 = !DILocation(line: 433, column: 20, scope: !943)
!943 = !DILexicalBlockFile(scope: !944, file: !188, discriminator: 1)
!944 = distinct !DILexicalBlock(scope: !932, file: !188, line: 433, column: 13)
!945 = !DILocation(line: 433, column: 13, scope: !943)
!946 = !DILocation(line: 433, column: 48, scope: !943)
!947 = !DILocation(line: 433, column: 53, scope: !943)
!948 = !DILocation(line: 433, column: 56, scope: !949)
!949 = !DILexicalBlockFile(scope: !944, file: !188, discriminator: 2)
!950 = !DILocation(line: 433, column: 13, scope: !949)
!951 = !DILocation(line: 434, column: 10, scope: !952)
!952 = distinct !DILexicalBlock(scope: !944, file: !188, line: 433, column: 84)
!953 = !DILocation(line: 435, column: 11, scope: !952)
!954 = !DILocation(line: 438, column: 11, scope: !952)
!955 = !DILocation(line: 438, column: 20, scope: !952)
!956 = !DILocation(line: 434, column: 3, scope: !952)
!957 = !DILocation(line: 439, column: 8, scope: !952)
!958 = !DILocation(line: 440, column: 14, scope: !952)
!959 = !DILocation(line: 441, column: 14, scope: !952)
!960 = !DILocation(line: 442, column: 2, scope: !952)
!961 = !DILocation(line: 442, column: 20, scope: !962)
!962 = !DILexicalBlockFile(scope: !963, file: !188, discriminator: 1)
!963 = distinct !DILexicalBlock(scope: !944, file: !188, line: 442, column: 13)
!964 = !DILocation(line: 442, column: 27, scope: !962)
!965 = !DILocation(line: 442, column: 13, scope: !962)
!966 = !DILocation(line: 442, column: 48, scope: !962)
!967 = !DILocation(line: 443, column: 14, scope: !968)
!968 = distinct !DILexicalBlock(scope: !969, file: !188, line: 443, column: 7)
!969 = distinct !DILexicalBlock(scope: !963, file: !188, line: 442, column: 54)
!970 = !DILocation(line: 443, column: 7, scope: !968)
!971 = !DILocation(line: 443, column: 42, scope: !968)
!972 = !DILocation(line: 443, column: 7, scope: !969)
!973 = !DILocation(line: 444, column: 9, scope: !974)
!974 = distinct !DILexicalBlock(scope: !968, file: !188, line: 443, column: 48)
!975 = !DILocation(line: 445, column: 15, scope: !974)
!976 = !DILocation(line: 446, column: 15, scope: !974)
!977 = !DILocation(line: 447, column: 3, scope: !974)
!978 = !DILocation(line: 448, column: 15, scope: !979)
!979 = distinct !DILexicalBlock(scope: !968, file: !188, line: 447, column: 10)
!980 = !DILocation(line: 449, column: 15, scope: !979)
!981 = !DILocation(line: 450, column: 37, scope: !979)
!982 = !DILocation(line: 450, column: 11, scope: !979)
!983 = !DILocation(line: 450, column: 25, scope: !979)
!984 = !DILocation(line: 450, column: 49, scope: !979)
!985 = !DILocation(line: 450, column: 9, scope: !979)
!986 = !DILocation(line: 453, column: 2, scope: !969)
!987 = !DILocation(line: 454, column: 23, scope: !988)
!988 = distinct !DILexicalBlock(scope: !963, file: !188, line: 453, column: 9)
!989 = !DILocation(line: 454, column: 30, scope: !988)
!990 = !DILocation(line: 454, column: 36, scope: !988)
!991 = !DILocation(line: 454, column: 16, scope: !988)
!992 = !DILocation(line: 454, column: 49, scope: !988)
!993 = !DILocation(line: 454, column: 14, scope: !988)
!994 = !DILocation(line: 455, column: 23, scope: !988)
!995 = !DILocation(line: 455, column: 30, scope: !988)
!996 = !DILocation(line: 455, column: 36, scope: !988)
!997 = !DILocation(line: 455, column: 16, scope: !988)
!998 = !DILocation(line: 455, column: 49, scope: !988)
!999 = !DILocation(line: 455, column: 14, scope: !988)
!1000 = !DILocation(line: 457, column: 7, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !988, file: !188, line: 457, column: 7)
!1002 = !DILocation(line: 457, column: 33, scope: !1001)
!1003 = !DILocation(line: 457, column: 36, scope: !1004)
!1004 = !DILexicalBlockFile(scope: !1001, file: !188, discriminator: 1)
!1005 = !DILocation(line: 457, column: 7, scope: !1004)
!1006 = !DILocation(line: 458, column: 9, scope: !1001)
!1007 = !DILocation(line: 458, column: 4, scope: !1001)
!1008 = !DILocation(line: 460, column: 37, scope: !1001)
!1009 = !DILocation(line: 460, column: 11, scope: !1001)
!1010 = !DILocation(line: 460, column: 25, scope: !1001)
!1011 = !DILocation(line: 460, column: 9, scope: !1001)
!1012 = !DILocation(line: 462, column: 14, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !988, file: !188, line: 462, column: 7)
!1014 = !DILocation(line: 462, column: 7, scope: !1013)
!1015 = !DILocation(line: 462, column: 42, scope: !1013)
!1016 = !DILocation(line: 462, column: 7, scope: !988)
!1017 = !DILocation(line: 463, column: 9, scope: !1013)
!1018 = !DILocation(line: 463, column: 4, scope: !1013)
!1019 = !DILocation(line: 468, column: 8, scope: !785)
!1020 = !DILocation(line: 468, column: 17, scope: !785)
!1021 = !DILocation(line: 468, column: 27, scope: !785)
!1022 = !DILocation(line: 468, column: 32, scope: !785)
!1023 = !DILocation(line: 468, column: 44, scope: !785)
!1024 = !DILocation(line: 468, column: 56, scope: !785)
!1025 = !DILocation(line: 466, column: 2, scope: !785)
!1026 = !DILocation(line: 470, column: 26, scope: !785)
!1027 = !DILocation(line: 470, column: 31, scope: !785)
!1028 = !DILocation(line: 470, column: 40, scope: !785)
!1029 = !DILocation(line: 470, column: 50, scope: !785)
!1030 = !DILocation(line: 470, column: 60, scope: !785)
!1031 = !DILocation(line: 471, column: 26, scope: !785)
!1032 = !DILocation(line: 471, column: 38, scope: !785)
!1033 = !DILocation(line: 471, column: 50, scope: !785)
!1034 = !DILocation(line: 470, column: 9, scope: !785)
!1035 = !DILocation(line: 470, column: 7, scope: !785)
!1036 = !DILocation(line: 473, column: 10, scope: !785)
!1037 = !DILocation(line: 473, column: 15, scope: !785)
!1038 = !DILocation(line: 473, column: 2, scope: !785)
!1039 = !DILocation(line: 475, column: 10, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !785, file: !188, line: 473, column: 49)
!1041 = !DILocation(line: 475, column: 3, scope: !1040)
!1042 = !DILocation(line: 476, column: 19, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1040, file: !188, line: 476, column: 7)
!1044 = !DILocation(line: 476, column: 7, scope: !1043)
!1045 = !DILocation(line: 476, column: 24, scope: !1043)
!1046 = !DILocation(line: 476, column: 28, scope: !1047)
!1047 = !DILexicalBlockFile(scope: !1043, file: !188, discriminator: 1)
!1048 = !DILocation(line: 476, column: 27, scope: !1047)
!1049 = !DILocation(line: 476, column: 32, scope: !1047)
!1050 = !DILocation(line: 476, column: 7, scope: !1047)
!1051 = !DILocation(line: 477, column: 12, scope: !1043)
!1052 = !DILocation(line: 478, column: 21, scope: !1043)
!1053 = !DILocation(line: 478, column: 12, scope: !1043)
!1054 = !DILocation(line: 478, column: 47, scope: !1043)
!1055 = !DILocation(line: 479, column: 22, scope: !1043)
!1056 = !DILocation(line: 479, column: 21, scope: !1043)
!1057 = !DILocation(line: 479, column: 12, scope: !1047)
!1058 = !DILocation(line: 477, column: 4, scope: !1047)
!1059 = !DILocation(line: 477, column: 4, scope: !1043)
!1060 = !DILocation(line: 481, column: 3, scope: !1040)
!1061 = !DILocation(line: 482, column: 3, scope: !1040)
!1062 = !DILocation(line: 483, column: 10, scope: !1040)
!1063 = !DILocation(line: 483, column: 3, scope: !1040)
!1064 = !DILocation(line: 484, column: 22, scope: !1040)
!1065 = !DILocation(line: 484, column: 31, scope: !1040)
!1066 = !DILocation(line: 484, column: 3, scope: !1040)
!1067 = !DILocation(line: 485, column: 19, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1040, file: !188, line: 485, column: 7)
!1069 = !DILocation(line: 485, column: 28, scope: !1068)
!1070 = !DILocation(line: 485, column: 7, scope: !1068)
!1071 = !DILocation(line: 485, column: 7, scope: !1040)
!1072 = !DILocation(line: 486, column: 12, scope: !1068)
!1073 = !DILocation(line: 487, column: 21, scope: !1068)
!1074 = !DILocation(line: 487, column: 12, scope: !1068)
!1075 = !DILocation(line: 487, column: 47, scope: !1068)
!1076 = !DILocation(line: 487, column: 56, scope: !1068)
!1077 = !DILocation(line: 488, column: 22, scope: !1068)
!1078 = !DILocation(line: 488, column: 21, scope: !1068)
!1079 = !DILocation(line: 488, column: 12, scope: !1080)
!1080 = !DILexicalBlockFile(scope: !1068, file: !188, discriminator: 1)
!1081 = !DILocation(line: 486, column: 4, scope: !1080)
!1082 = !DILocation(line: 486, column: 4, scope: !1068)
!1083 = !DILocation(line: 489, column: 3, scope: !1040)
!1084 = !DILocation(line: 491, column: 10, scope: !1040)
!1085 = !DILocation(line: 491, column: 3, scope: !1040)
!1086 = !DILocation(line: 492, column: 19, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1040, file: !188, line: 492, column: 7)
!1088 = !DILocation(line: 492, column: 7, scope: !1087)
!1089 = !DILocation(line: 492, column: 7, scope: !1040)
!1090 = !DILocation(line: 493, column: 12, scope: !1087)
!1091 = !DILocation(line: 494, column: 21, scope: !1087)
!1092 = !DILocation(line: 494, column: 12, scope: !1087)
!1093 = !DILocation(line: 494, column: 47, scope: !1087)
!1094 = !DILocation(line: 495, column: 22, scope: !1087)
!1095 = !DILocation(line: 495, column: 21, scope: !1087)
!1096 = !DILocation(line: 495, column: 12, scope: !1097)
!1097 = !DILexicalBlockFile(scope: !1087, file: !188, discriminator: 1)
!1098 = !DILocation(line: 493, column: 4, scope: !1097)
!1099 = !DILocation(line: 493, column: 4, scope: !1087)
!1100 = !DILocation(line: 496, column: 3, scope: !1040)
!1101 = !DILocation(line: 498, column: 10, scope: !1040)
!1102 = !DILocation(line: 498, column: 3, scope: !1040)
!1103 = !DILocation(line: 499, column: 19, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1040, file: !188, line: 499, column: 7)
!1105 = !DILocation(line: 499, column: 7, scope: !1104)
!1106 = !DILocation(line: 499, column: 24, scope: !1104)
!1107 = !DILocation(line: 499, column: 28, scope: !1108)
!1108 = !DILexicalBlockFile(scope: !1104, file: !188, discriminator: 1)
!1109 = !DILocation(line: 499, column: 27, scope: !1108)
!1110 = !DILocation(line: 499, column: 32, scope: !1108)
!1111 = !DILocation(line: 499, column: 7, scope: !1108)
!1112 = !DILocation(line: 500, column: 12, scope: !1104)
!1113 = !DILocation(line: 501, column: 21, scope: !1104)
!1114 = !DILocation(line: 501, column: 12, scope: !1104)
!1115 = !DILocation(line: 501, column: 47, scope: !1104)
!1116 = !DILocation(line: 502, column: 22, scope: !1104)
!1117 = !DILocation(line: 502, column: 21, scope: !1104)
!1118 = !DILocation(line: 502, column: 12, scope: !1108)
!1119 = !DILocation(line: 500, column: 4, scope: !1108)
!1120 = !DILocation(line: 500, column: 4, scope: !1104)
!1121 = !DILocation(line: 503, column: 10, scope: !1040)
!1122 = !DILocation(line: 503, column: 3, scope: !1040)
!1123 = !DILocation(line: 504, column: 19, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1040, file: !188, line: 504, column: 7)
!1125 = !DILocation(line: 504, column: 7, scope: !1124)
!1126 = !DILocation(line: 504, column: 24, scope: !1124)
!1127 = !DILocation(line: 504, column: 28, scope: !1128)
!1128 = !DILexicalBlockFile(scope: !1124, file: !188, discriminator: 1)
!1129 = !DILocation(line: 504, column: 27, scope: !1128)
!1130 = !DILocation(line: 504, column: 32, scope: !1128)
!1131 = !DILocation(line: 504, column: 7, scope: !1128)
!1132 = !DILocation(line: 505, column: 12, scope: !1124)
!1133 = !DILocation(line: 506, column: 21, scope: !1124)
!1134 = !DILocation(line: 506, column: 12, scope: !1124)
!1135 = !DILocation(line: 506, column: 47, scope: !1124)
!1136 = !DILocation(line: 507, column: 22, scope: !1124)
!1137 = !DILocation(line: 507, column: 21, scope: !1124)
!1138 = !DILocation(line: 507, column: 12, scope: !1128)
!1139 = !DILocation(line: 505, column: 4, scope: !1128)
!1140 = !DILocation(line: 505, column: 4, scope: !1124)
!1141 = !DILocation(line: 508, column: 9, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1040, file: !188, line: 508, column: 7)
!1143 = !DILocation(line: 508, column: 14, scope: !1142)
!1144 = !DILocation(line: 508, column: 7, scope: !1040)
!1145 = !DILocation(line: 509, column: 17, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1142, file: !188, line: 509, column: 8)
!1147 = !DILocation(line: 509, column: 27, scope: !1146)
!1148 = !DILocation(line: 509, column: 8, scope: !1146)
!1149 = !DILocation(line: 509, column: 8, scope: !1142)
!1150 = !DILocation(line: 510, column: 13, scope: !1146)
!1151 = !DILocation(line: 511, column: 22, scope: !1146)
!1152 = !DILocation(line: 511, column: 13, scope: !1146)
!1153 = !DILocation(line: 511, column: 47, scope: !1146)
!1154 = !DILocation(line: 512, column: 18, scope: !1146)
!1155 = !DILocation(line: 512, column: 33, scope: !1146)
!1156 = !DILocation(line: 512, column: 32, scope: !1146)
!1157 = !DILocation(line: 512, column: 23, scope: !1158)
!1158 = !DILexicalBlockFile(scope: !1146, file: !188, discriminator: 1)
!1159 = !DILocation(line: 510, column: 5, scope: !1158)
!1160 = !DILocation(line: 510, column: 5, scope: !1146)
!1161 = !DILocation(line: 509, column: 30, scope: !1158)
!1162 = !DILocation(line: 508, column: 29, scope: !1163)
!1163 = !DILexicalBlockFile(scope: !1142, file: !188, discriminator: 1)
!1164 = !DILocation(line: 515, column: 10, scope: !1040)
!1165 = !DILocation(line: 516, column: 10, scope: !1040)
!1166 = !DILocation(line: 516, column: 19, scope: !1040)
!1167 = !DILocation(line: 515, column: 3, scope: !1168)
!1168 = !DILexicalBlockFile(scope: !1040, file: !188, discriminator: 1)
!1169 = !DILocation(line: 515, column: 3, scope: !1040)
!1170 = !DILocation(line: 519, column: 10, scope: !1040)
!1171 = !DILocation(line: 519, column: 3, scope: !1040)
!1172 = !DILocation(line: 520, column: 22, scope: !1040)
!1173 = !DILocation(line: 520, column: 31, scope: !1040)
!1174 = !DILocation(line: 520, column: 3, scope: !1040)
!1175 = !DILocation(line: 521, column: 19, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1040, file: !188, line: 521, column: 7)
!1177 = !DILocation(line: 521, column: 28, scope: !1176)
!1178 = !DILocation(line: 521, column: 7, scope: !1176)
!1179 = !DILocation(line: 521, column: 7, scope: !1040)
!1180 = !DILocation(line: 522, column: 12, scope: !1176)
!1181 = !DILocation(line: 523, column: 17, scope: !1176)
!1182 = !DILocation(line: 523, column: 26, scope: !1176)
!1183 = !DILocation(line: 522, column: 4, scope: !1184)
!1184 = !DILexicalBlockFile(scope: !1176, file: !188, discriminator: 1)
!1185 = !DILocation(line: 522, column: 4, scope: !1176)
!1186 = !DILocation(line: 524, column: 3, scope: !1040)
!1187 = !DILocation(line: 526, column: 71, scope: !1040)
!1188 = !DILocation(line: 526, column: 3, scope: !1040)
!1189 = !DILocation(line: 529, column: 26, scope: !785)
!1190 = !DILocation(line: 529, column: 16, scope: !785)
!1191 = !DILocation(line: 529, column: 2, scope: !785)
!1192 = !DILocation(line: 529, column: 9, scope: !785)
!1193 = !DILocation(line: 529, column: 14, scope: !785)
!1194 = !DILocation(line: 530, column: 17, scope: !785)
!1195 = !DILocation(line: 530, column: 2, scope: !785)
!1196 = !DILocation(line: 532, column: 2, scope: !785)
!1197 = !DILocation(line: 533, column: 2, scope: !785)
!1198 = !DILocation(line: 534, column: 1, scope: !785)
!1199 = !DILocation(line: 534, column: 1, scope: !845)
!1200 = !DILocalVariable(name: "pkg", arg: 1, scope: !242, file: !188, line: 700, type: !245)
!1201 = !DILocation(line: 700, column: 28, scope: !242)
!1202 = !DILocalVariable(name: "result", arg: 2, scope: !242, file: !188, line: 700, type: !459)
!1203 = !DILocation(line: 700, column: 48, scope: !242)
!1204 = !DILocalVariable(name: "in", arg: 3, scope: !242, file: !188, line: 700, type: !254)
!1205 = !DILocation(line: 700, column: 68, scope: !242)
!1206 = !DILocalVariable(name: "stab", scope: !242, file: !188, line: 703, type: !808)
!1207 = !DILocation(line: 703, column: 14, scope: !242)
!1208 = !DILocalVariable(name: "r", scope: !242, file: !188, line: 704, type: !1209)
!1209 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !413, line: 109, baseType: !1210)
!1210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !415, line: 172, baseType: !237)
!1211 = !DILocation(line: 704, column: 10, scope: !242)
!1212 = !DILocalVariable(name: "loopprotect", scope: !242, file: !188, line: 705, type: !238)
!1213 = !DILocation(line: 705, column: 6, scope: !242)
!1214 = !DILocation(line: 707, column: 15, scope: !242)
!1215 = !DILocation(line: 707, column: 2, scope: !242)
!1216 = !DILocation(line: 708, column: 17, scope: !242)
!1217 = !DILocation(line: 708, column: 25, scope: !242)
!1218 = !DILocation(line: 708, column: 41, scope: !242)
!1219 = !DILocation(line: 708, column: 34, scope: !242)
!1220 = !DILocation(line: 708, column: 2, scope: !1221)
!1221 = !DILexicalBlockFile(scope: !242, file: !188, discriminator: 1)
!1222 = !DILocation(line: 709, column: 17, scope: !242)
!1223 = !DILocation(line: 709, column: 25, scope: !242)
!1224 = !DILocation(line: 709, column: 36, scope: !242)
!1225 = !DILocation(line: 709, column: 29, scope: !242)
!1226 = !DILocation(line: 709, column: 2, scope: !1221)
!1227 = !DILocation(line: 710, column: 17, scope: !242)
!1228 = !DILocation(line: 710, column: 2, scope: !242)
!1229 = !DILocation(line: 712, column: 14, scope: !242)
!1230 = !DILocation(line: 714, column: 2, scope: !242)
!1231 = !DILocation(line: 716, column: 9, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1233, file: !188, line: 714, column: 11)
!1233 = distinct !DILexicalBlock(scope: !1234, file: !188, line: 714, column: 2)
!1234 = distinct !DILexicalBlock(scope: !242, file: !188, line: 714, column: 2)
!1235 = !DILocation(line: 716, column: 13, scope: !1232)
!1236 = !DILocation(line: 716, column: 21, scope: !1232)
!1237 = !DILocation(line: 715, column: 3, scope: !1232)
!1238 = !DILocation(line: 717, column: 13, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1232, file: !188, line: 717, column: 7)
!1240 = !DILocation(line: 717, column: 21, scope: !1239)
!1241 = !DILocation(line: 717, column: 7, scope: !1239)
!1242 = !DILocation(line: 717, column: 7, scope: !1232)
!1243 = !DILocation(line: 718, column: 9, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1245, file: !188, line: 718, column: 7)
!1245 = distinct !DILexicalBlock(scope: !1239, file: !188, line: 717, column: 34)
!1246 = !DILocation(line: 718, column: 8, scope: !1244)
!1247 = !DILocation(line: 718, column: 13, scope: !1244)
!1248 = !DILocation(line: 718, column: 7, scope: !1245)
!1249 = !DILocation(line: 719, column: 13, scope: !1244)
!1250 = !DILocation(line: 721, column: 22, scope: !1244)
!1251 = !DILocation(line: 721, column: 13, scope: !1244)
!1252 = !DILocation(line: 721, column: 43, scope: !1244)
!1253 = !DILocation(line: 722, column: 13, scope: !1244)
!1254 = !DILocation(line: 722, column: 21, scope: !1244)
!1255 = !DILocation(line: 722, column: 36, scope: !1244)
!1256 = !DILocation(line: 722, column: 35, scope: !1244)
!1257 = !DILocation(line: 722, column: 26, scope: !1258)
!1258 = !DILexicalBlockFile(scope: !1244, file: !188, discriminator: 1)
!1259 = !DILocation(line: 719, column: 5, scope: !1258)
!1260 = !DILocation(line: 719, column: 5, scope: !1244)
!1261 = !DILocation(line: 723, column: 4, scope: !1245)
!1262 = !DILocation(line: 724, column: 4, scope: !1245)
!1263 = !DILocation(line: 725, column: 18, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1239, file: !188, line: 725, column: 13)
!1265 = !DILocation(line: 725, column: 16, scope: !1264)
!1266 = !DILocation(line: 725, column: 27, scope: !1264)
!1267 = !DILocation(line: 725, column: 13, scope: !1239)
!1268 = !DILocation(line: 727, column: 10, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1264, file: !188, line: 725, column: 36)
!1270 = !DILocation(line: 727, column: 14, scope: !1269)
!1271 = !DILocation(line: 727, column: 22, scope: !1269)
!1272 = !DILocation(line: 726, column: 4, scope: !1269)
!1273 = !DILocation(line: 728, column: 4, scope: !1269)
!1274 = !DILocation(line: 729, column: 18, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1264, file: !188, line: 729, column: 13)
!1276 = !DILocation(line: 729, column: 16, scope: !1275)
!1277 = !DILocation(line: 729, column: 27, scope: !1275)
!1278 = !DILocation(line: 729, column: 13, scope: !1264)
!1279 = !DILocation(line: 731, column: 10, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1275, file: !188, line: 729, column: 36)
!1281 = !DILocation(line: 730, column: 4, scope: !1280)
!1282 = !DILocation(line: 732, column: 19, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1280, file: !188, line: 732, column: 8)
!1284 = !DILocation(line: 732, column: 22, scope: !1283)
!1285 = !DILocation(line: 732, column: 8, scope: !1280)
!1286 = !DILocation(line: 733, column: 13, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1283, file: !188, line: 732, column: 29)
!1288 = !DILocation(line: 735, column: 22, scope: !1287)
!1289 = !DILocation(line: 735, column: 13, scope: !1287)
!1290 = !DILocation(line: 735, column: 43, scope: !1287)
!1291 = !DILocation(line: 736, column: 13, scope: !1287)
!1292 = !DILocation(line: 736, column: 21, scope: !1287)
!1293 = !DILocation(line: 733, column: 5, scope: !1294)
!1294 = !DILexicalBlockFile(scope: !1287, file: !188, discriminator: 1)
!1295 = !DILocation(line: 737, column: 5, scope: !1287)
!1296 = !DILocation(line: 740, column: 4, scope: !1280)
!1297 = !DILocation(line: 741, column: 30, scope: !1280)
!1298 = !DILocation(line: 741, column: 38, scope: !1280)
!1299 = !DILocation(line: 741, column: 4, scope: !1280)
!1300 = !DILocation(line: 742, column: 17, scope: !1280)
!1301 = !DILocation(line: 742, column: 25, scope: !1280)
!1302 = !DILocation(line: 742, column: 37, scope: !1280)
!1303 = !DILocation(line: 742, column: 49, scope: !1280)
!1304 = !DILocation(line: 742, column: 8, scope: !1280)
!1305 = !DILocation(line: 742, column: 6, scope: !1280)
!1306 = !DILocation(line: 743, column: 8, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1280, file: !188, line: 743, column: 8)
!1308 = !DILocation(line: 743, column: 10, scope: !1307)
!1309 = !DILocation(line: 743, column: 8, scope: !1280)
!1310 = !DILocation(line: 744, column: 13, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1307, file: !188, line: 743, column: 15)
!1312 = !DILocation(line: 746, column: 22, scope: !1311)
!1313 = !DILocation(line: 746, column: 13, scope: !1311)
!1314 = !DILocation(line: 746, column: 43, scope: !1311)
!1315 = !DILocation(line: 747, column: 13, scope: !1311)
!1316 = !DILocation(line: 747, column: 21, scope: !1311)
!1317 = !DILocation(line: 747, column: 36, scope: !1311)
!1318 = !DILocation(line: 747, column: 35, scope: !1311)
!1319 = !DILocation(line: 747, column: 26, scope: !1320)
!1320 = !DILexicalBlockFile(scope: !1311, file: !188, discriminator: 1)
!1321 = !DILocation(line: 744, column: 5, scope: !1320)
!1322 = !DILocation(line: 748, column: 5, scope: !1311)
!1323 = !DILocation(line: 749, column: 15, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1307, file: !188, line: 749, column: 15)
!1325 = !DILocation(line: 749, column: 25, scope: !1324)
!1326 = !DILocation(line: 749, column: 17, scope: !1324)
!1327 = !DILocation(line: 749, column: 15, scope: !1307)
!1328 = !DILocation(line: 750, column: 13, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1324, file: !188, line: 749, column: 34)
!1330 = !DILocation(line: 752, column: 13, scope: !1329)
!1331 = !DILocation(line: 752, column: 21, scope: !1329)
!1332 = !DILocation(line: 752, column: 41, scope: !1329)
!1333 = !DILocation(line: 752, column: 50, scope: !1329)
!1334 = !DILocation(line: 750, column: 5, scope: !1335)
!1335 = !DILexicalBlockFile(scope: !1329, file: !188, discriminator: 1)
!1336 = !DILocation(line: 755, column: 9, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1329, file: !188, line: 755, column: 9)
!1338 = !DILocation(line: 755, column: 18, scope: !1337)
!1339 = !DILocation(line: 755, column: 11, scope: !1337)
!1340 = !DILocation(line: 755, column: 9, scope: !1329)
!1341 = !DILocation(line: 756, column: 6, scope: !1337)
!1342 = !DILocation(line: 757, column: 4, scope: !1329)
!1343 = !DILocation(line: 758, column: 26, scope: !1280)
!1344 = !DILocation(line: 758, column: 4, scope: !1280)
!1345 = !DILocation(line: 759, column: 4, scope: !1280)
!1346 = !DILocation(line: 763, column: 10, scope: !1280)
!1347 = !DILocation(line: 763, column: 20, scope: !1280)
!1348 = !DILocation(line: 761, column: 4, scope: !1280)
!1349 = !DILocation(line: 765, column: 15, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1280, file: !188, line: 765, column: 8)
!1351 = !DILocation(line: 765, column: 8, scope: !1350)
!1352 = !DILocation(line: 765, column: 22, scope: !1350)
!1353 = !DILocation(line: 765, column: 8, scope: !1280)
!1354 = !DILocation(line: 766, column: 18, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1350, file: !188, line: 765, column: 30)
!1356 = !DILocation(line: 766, column: 5, scope: !1355)
!1357 = !DILocation(line: 767, column: 20, scope: !1355)
!1358 = !DILocation(line: 767, column: 28, scope: !1355)
!1359 = !DILocation(line: 767, column: 44, scope: !1355)
!1360 = !DILocation(line: 767, column: 37, scope: !1355)
!1361 = !DILocation(line: 767, column: 5, scope: !1362)
!1362 = !DILexicalBlockFile(scope: !1355, file: !188, discriminator: 1)
!1363 = !DILocation(line: 768, column: 5, scope: !1355)
!1364 = !DILocation(line: 770, column: 4, scope: !1355)
!1365 = !DILocation(line: 771, column: 14, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1367, file: !188, line: 771, column: 5)
!1367 = distinct !DILexicalBlock(scope: !1350, file: !188, line: 770, column: 11)
!1368 = !DILocation(line: 771, column: 22, scope: !1366)
!1369 = !DILocation(line: 771, column: 27, scope: !1366)
!1370 = !DILocation(line: 771, column: 12, scope: !1366)
!1371 = !DILocation(line: 771, column: 10, scope: !1366)
!1372 = !DILocation(line: 771, column: 32, scope: !1373)
!1373 = !DILexicalBlockFile(scope: !1374, file: !188, discriminator: 1)
!1374 = distinct !DILexicalBlock(scope: !1366, file: !188, line: 771, column: 5)
!1375 = !DILocation(line: 771, column: 34, scope: !1373)
!1376 = !DILocation(line: 771, column: 38, scope: !1373)
!1377 = !DILocation(line: 771, column: 53, scope: !1378)
!1378 = !DILexicalBlockFile(scope: !1374, file: !188, discriminator: 2)
!1379 = !DILocation(line: 771, column: 41, scope: !1378)
!1380 = !DILocation(line: 771, column: 49, scope: !1378)
!1381 = !DILocation(line: 771, column: 56, scope: !1378)
!1382 = !DILocation(line: 771, column: 5, scope: !1383)
!1383 = !DILexicalBlockFile(scope: !1366, file: !188, discriminator: 3)
!1384 = !DILocation(line: 771, column: 5, scope: !1385)
!1385 = !DILexicalBlockFile(scope: !1366, file: !188, discriminator: 4)
!1386 = !DILocation(line: 771, column: 65, scope: !1387)
!1387 = !DILexicalBlockFile(scope: !1374, file: !188, discriminator: 5)
!1388 = !DILocation(line: 771, column: 5, scope: !1387)
!1389 = distinct !{!1389, !1390}
!1390 = !DILocation(line: 771, column: 5, scope: !1367)
!1391 = !DILocation(line: 773, column: 9, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1367, file: !188, line: 773, column: 9)
!1393 = !DILocation(line: 773, column: 11, scope: !1392)
!1394 = !DILocation(line: 773, column: 9, scope: !1367)
!1395 = !DILocation(line: 774, column: 14, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1392, file: !188, line: 773, column: 16)
!1397 = !DILocation(line: 776, column: 23, scope: !1396)
!1398 = !DILocation(line: 776, column: 14, scope: !1396)
!1399 = !DILocation(line: 777, column: 14, scope: !1396)
!1400 = !DILocation(line: 777, column: 18, scope: !1396)
!1401 = !DILocation(line: 777, column: 26, scope: !1396)
!1402 = !DILocation(line: 777, column: 38, scope: !1396)
!1403 = !DILocation(line: 774, column: 6, scope: !1404)
!1404 = !DILexicalBlockFile(scope: !1396, file: !188, discriminator: 1)
!1405 = !DILocation(line: 778, column: 6, scope: !1396)
!1406 = !DILocation(line: 780, column: 21, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1367, file: !188, line: 780, column: 9)
!1408 = !DILocation(line: 780, column: 9, scope: !1407)
!1409 = !DILocation(line: 780, column: 17, scope: !1407)
!1410 = !DILocation(line: 780, column: 24, scope: !1407)
!1411 = !DILocation(line: 780, column: 9, scope: !1367)
!1412 = !DILocation(line: 781, column: 7, scope: !1407)
!1413 = !DILocation(line: 781, column: 6, scope: !1407)
!1414 = !DILocation(line: 782, column: 18, scope: !1367)
!1415 = !DILocation(line: 782, column: 26, scope: !1367)
!1416 = !DILocation(line: 782, column: 5, scope: !1367)
!1417 = !DILocation(line: 785, column: 16, scope: !1367)
!1418 = !DILocation(line: 785, column: 24, scope: !1367)
!1419 = !DILocation(line: 785, column: 11, scope: !1367)
!1420 = !DILocation(line: 785, column: 30, scope: !1367)
!1421 = !DILocation(line: 785, column: 38, scope: !1367)
!1422 = !DILocation(line: 783, column: 5, scope: !1367)
!1423 = !DILocation(line: 787, column: 19, scope: !1280)
!1424 = !DILocation(line: 787, column: 34, scope: !1280)
!1425 = !DILocation(line: 787, column: 46, scope: !1280)
!1426 = !DILocation(line: 787, column: 4, scope: !1280)
!1427 = !DILocation(line: 788, column: 19, scope: !1280)
!1428 = !DILocation(line: 788, column: 4, scope: !1280)
!1429 = !DILocation(line: 789, column: 3, scope: !1280)
!1430 = !DILocation(line: 790, column: 12, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1275, file: !188, line: 789, column: 10)
!1432 = !DILocation(line: 791, column: 21, scope: !1431)
!1433 = !DILocation(line: 791, column: 12, scope: !1431)
!1434 = !DILocation(line: 791, column: 42, scope: !1431)
!1435 = !DILocation(line: 791, column: 46, scope: !1431)
!1436 = !DILocation(line: 791, column: 54, scope: !1431)
!1437 = !DILocation(line: 790, column: 4, scope: !1438)
!1438 = !DILexicalBlockFile(scope: !1431, file: !188, discriminator: 1)
!1439 = !DILocation(line: 792, column: 4, scope: !1431)
!1440 = !DILocation(line: 714, column: 2, scope: !1441)
!1441 = !DILexicalBlockFile(scope: !1233, file: !188, discriminator: 1)
!1442 = distinct !{!1442, !1230}
!1443 = !DILocation(line: 795, column: 1, scope: !242)
!1444 = !DILocalVariable(name: "pkg", arg: 1, scope: !470, file: !188, line: 808, type: !245)
!1445 = !DILocation(line: 808, column: 25, scope: !470)
!1446 = !DILocalVariable(name: "hashbuf", arg: 2, scope: !470, file: !188, line: 808, type: !423)
!1447 = !DILocation(line: 808, column: 36, scope: !470)
!1448 = !DILocalVariable(name: "fn", arg: 3, scope: !470, file: !188, line: 808, type: !254)
!1449 = !DILocation(line: 808, column: 57, scope: !470)
!1450 = !DILocalVariable(name: "err", scope: !470, file: !188, line: 810, type: !1451)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_error", file: !176, line: 42, size: 128, align: 64, elements: !1452)
!1452 = !{!1453, !1454, !1455}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1451, file: !176, line: 43, baseType: !175, size: 32, align: 32)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "syserrno", scope: !1451, file: !176, line: 45, baseType: !238, size: 32, align: 32, offset: 32)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1451, file: !176, line: 46, baseType: !423, size: 64, align: 64, offset: 64)
!1456 = !DILocation(line: 810, column: 20, scope: !470)
!1457 = !DILocation(line: 813, column: 12, scope: !470)
!1458 = !DILocation(line: 813, column: 7, scope: !470)
!1459 = !DILocation(line: 813, column: 5, scope: !470)
!1460 = !DILocation(line: 815, column: 6, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !470, file: !188, line: 815, column: 6)
!1462 = !DILocation(line: 815, column: 9, scope: !1461)
!1463 = !DILocation(line: 815, column: 6, scope: !470)
!1464 = !DILocation(line: 816, column: 3, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1461, file: !188, line: 815, column: 15)
!1466 = !DILocation(line: 817, column: 26, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1465, file: !188, line: 817, column: 7)
!1468 = !DILocation(line: 817, column: 33, scope: !1467)
!1469 = !DILocation(line: 817, column: 7, scope: !1467)
!1470 = !DILocation(line: 817, column: 21, scope: !1467)
!1471 = !DILocation(line: 817, column: 7, scope: !1465)
!1472 = !DILocation(line: 818, column: 11, scope: !1467)
!1473 = !DILocation(line: 819, column: 11, scope: !1467)
!1474 = !DILocation(line: 819, column: 19, scope: !1467)
!1475 = !DILocation(line: 818, column: 4, scope: !1476)
!1476 = !DILexicalBlockFile(scope: !1467, file: !188, discriminator: 1)
!1477 = !DILocation(line: 818, column: 4, scope: !1467)
!1478 = !DILocation(line: 820, column: 3, scope: !1465)
!1479 = !DILocation(line: 821, column: 9, scope: !1465)
!1480 = !DILocation(line: 821, column: 3, scope: !1465)
!1481 = !DILocation(line: 822, column: 2, scope: !1465)
!1482 = !DILocation(line: 822, column: 14, scope: !1483)
!1483 = !DILexicalBlockFile(scope: !1484, file: !188, discriminator: 1)
!1484 = distinct !DILexicalBlock(scope: !1461, file: !188, line: 822, column: 12)
!1485 = !DILocation(line: 822, column: 13, scope: !1483)
!1486 = !DILocation(line: 822, column: 18, scope: !1483)
!1487 = !DILocation(line: 822, column: 12, scope: !1483)
!1488 = !DILocation(line: 823, column: 10, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1484, file: !188, line: 822, column: 29)
!1490 = !DILocation(line: 823, column: 3, scope: !1489)
!1491 = !DILocation(line: 824, column: 2, scope: !1489)
!1492 = !DILocation(line: 825, column: 11, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1484, file: !188, line: 824, column: 9)
!1494 = !DILocation(line: 826, column: 20, scope: !1493)
!1495 = !DILocation(line: 826, column: 11, scope: !1493)
!1496 = !DILocation(line: 826, column: 41, scope: !1493)
!1497 = !DILocation(line: 826, column: 55, scope: !1498)
!1498 = !DILexicalBlockFile(scope: !1493, file: !188, discriminator: 1)
!1499 = !DILocation(line: 826, column: 54, scope: !1493)
!1500 = !DILocation(line: 826, column: 45, scope: !1501)
!1501 = !DILexicalBlockFile(scope: !1493, file: !188, discriminator: 2)
!1502 = !DILocation(line: 825, column: 3, scope: !1498)
!1503 = !DILocation(line: 827, column: 10, scope: !1493)
!1504 = !DILocation(line: 827, column: 3, scope: !1493)
!1505 = !DILocation(line: 829, column: 1, scope: !470)
!1506 = distinct !DISubprogram(name: "deferred_configure_ghost_conffile", scope: !188, file: !188, line: 346, type: !786, isLocal: true, isDefinition: true, scopeLine: 347, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !468)
!1507 = !DILocalVariable(name: "pkg", arg: 1, scope: !1506, file: !188, line: 346, type: !245)
!1508 = !DILocation(line: 346, column: 51, scope: !1506)
!1509 = !DILocalVariable(name: "conff", arg: 2, scope: !1506, file: !188, line: 346, type: !323)
!1510 = !DILocation(line: 346, column: 73, scope: !1506)
!1511 = !DILocalVariable(name: "otherpkg", scope: !1506, file: !188, line: 348, type: !245)
!1512 = !DILocation(line: 348, column: 18, scope: !1506)
!1513 = !DILocalVariable(name: "otherconff", scope: !1506, file: !188, line: 349, type: !323)
!1514 = !DILocation(line: 349, column: 19, scope: !1506)
!1515 = !DILocation(line: 351, column: 19, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1506, file: !188, line: 351, column: 2)
!1517 = !DILocation(line: 351, column: 24, scope: !1516)
!1518 = !DILocation(line: 351, column: 29, scope: !1516)
!1519 = !DILocation(line: 351, column: 16, scope: !1516)
!1520 = !DILocation(line: 351, column: 7, scope: !1516)
!1521 = !DILocation(line: 351, column: 34, scope: !1522)
!1522 = !DILexicalBlockFile(scope: !1523, file: !188, discriminator: 1)
!1523 = distinct !DILexicalBlock(scope: !1516, file: !188, line: 351, column: 2)
!1524 = !DILocation(line: 351, column: 2, scope: !1522)
!1525 = !DILocation(line: 352, column: 7, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1527, file: !188, line: 352, column: 7)
!1527 = distinct !DILexicalBlock(scope: !1523, file: !188, line: 351, column: 76)
!1528 = !DILocation(line: 352, column: 19, scope: !1526)
!1529 = !DILocation(line: 352, column: 16, scope: !1526)
!1530 = !DILocation(line: 352, column: 7, scope: !1527)
!1531 = !DILocation(line: 353, column: 4, scope: !1526)
!1532 = !DILocation(line: 354, column: 7, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1527, file: !188, line: 354, column: 7)
!1534 = !DILocation(line: 354, column: 17, scope: !1533)
!1535 = !DILocation(line: 354, column: 24, scope: !1533)
!1536 = !DILocation(line: 354, column: 7, scope: !1527)
!1537 = !DILocation(line: 355, column: 4, scope: !1533)
!1538 = !DILocation(line: 357, column: 21, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1527, file: !188, line: 357, column: 3)
!1540 = !DILocation(line: 357, column: 31, scope: !1539)
!1541 = !DILocation(line: 357, column: 41, scope: !1539)
!1542 = !DILocation(line: 357, column: 19, scope: !1539)
!1543 = !DILocation(line: 357, column: 8, scope: !1539)
!1544 = !DILocation(line: 357, column: 52, scope: !1545)
!1545 = !DILexicalBlockFile(scope: !1546, file: !188, discriminator: 1)
!1546 = distinct !DILexicalBlock(scope: !1539, file: !188, line: 357, column: 3)
!1547 = !DILocation(line: 357, column: 3, scope: !1545)
!1548 = !DILocation(line: 359, column: 8, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1550, file: !188, line: 359, column: 8)
!1550 = distinct !DILexicalBlock(scope: !1546, file: !188, line: 358, column: 39)
!1551 = !DILocation(line: 359, column: 20, scope: !1549)
!1552 = !DILocation(line: 359, column: 8, scope: !1550)
!1553 = !DILocation(line: 360, column: 5, scope: !1549)
!1554 = !DILocation(line: 365, column: 15, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1550, file: !188, line: 365, column: 8)
!1556 = !DILocation(line: 365, column: 27, scope: !1555)
!1557 = !DILocation(line: 365, column: 33, scope: !1555)
!1558 = !DILocation(line: 365, column: 40, scope: !1555)
!1559 = !DILocation(line: 365, column: 8, scope: !1555)
!1560 = !DILocation(line: 365, column: 46, scope: !1555)
!1561 = !DILocation(line: 365, column: 8, scope: !1550)
!1562 = !DILocation(line: 366, column: 19, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1555, file: !188, line: 365, column: 52)
!1564 = !DILocation(line: 366, column: 31, scope: !1563)
!1565 = !DILocation(line: 366, column: 5, scope: !1563)
!1566 = !DILocation(line: 366, column: 12, scope: !1563)
!1567 = !DILocation(line: 366, column: 17, scope: !1563)
!1568 = !DILocation(line: 367, column: 20, scope: !1563)
!1569 = !DILocation(line: 367, column: 5, scope: !1563)
!1570 = !DILocation(line: 368, column: 5, scope: !1563)
!1571 = !DILocation(line: 370, column: 3, scope: !1550)
!1572 = !DILocation(line: 358, column: 21, scope: !1546)
!1573 = !DILocation(line: 358, column: 33, scope: !1546)
!1574 = !DILocation(line: 358, column: 19, scope: !1546)
!1575 = !DILocation(line: 357, column: 3, scope: !1576)
!1576 = !DILexicalBlockFile(scope: !1546, file: !188, discriminator: 2)
!1577 = distinct !{!1577, !1578}
!1578 = !DILocation(line: 357, column: 3, scope: !1527)
!1579 = !DILocation(line: 371, column: 2, scope: !1527)
!1580 = !DILocation(line: 351, column: 55, scope: !1581)
!1581 = !DILexicalBlockFile(scope: !1523, file: !188, discriminator: 2)
!1582 = !DILocation(line: 351, column: 65, scope: !1581)
!1583 = !DILocation(line: 351, column: 53, scope: !1581)
!1584 = !DILocation(line: 351, column: 2, scope: !1581)
!1585 = distinct !{!1585, !1586}
!1586 = !DILocation(line: 351, column: 2, scope: !1506)
!1587 = !DILocation(line: 372, column: 1, scope: !1506)
!1588 = distinct !DISubprogram(name: "promptconfaction", scope: !188, file: !188, line: 283, type: !1589, isLocal: true, isDefinition: true, scopeLine: 286, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !468)
!1589 = !DISubroutineType(types: !1590)
!1590 = !{!187, !245, !254, !254, !254, !238, !238, !187}
!1591 = !DILocalVariable(name: "pkg", arg: 1, scope: !1588, file: !188, line: 283, type: !245)
!1592 = !DILocation(line: 283, column: 34, scope: !1588)
!1593 = !DILocalVariable(name: "cfgfile", arg: 2, scope: !1588, file: !188, line: 283, type: !254)
!1594 = !DILocation(line: 283, column: 51, scope: !1588)
!1595 = !DILocalVariable(name: "realold", arg: 3, scope: !1588, file: !188, line: 284, type: !254)
!1596 = !DILocation(line: 284, column: 30, scope: !1588)
!1597 = !DILocalVariable(name: "realnew", arg: 4, scope: !1588, file: !188, line: 284, type: !254)
!1598 = !DILocation(line: 284, column: 51, scope: !1588)
!1599 = !DILocalVariable(name: "useredited", arg: 5, scope: !1588, file: !188, line: 285, type: !238)
!1600 = !DILocation(line: 285, column: 22, scope: !1588)
!1601 = !DILocalVariable(name: "distedited", arg: 6, scope: !1588, file: !188, line: 285, type: !238)
!1602 = !DILocation(line: 285, column: 38, scope: !1588)
!1603 = !DILocalVariable(name: "what", arg: 7, scope: !1588, file: !188, line: 285, type: !187)
!1604 = !DILocation(line: 285, column: 64, scope: !1588)
!1605 = !DILocalVariable(name: "cc", scope: !1588, file: !188, line: 287, type: !238)
!1606 = !DILocation(line: 287, column: 6, scope: !1588)
!1607 = !DILocation(line: 289, column: 8, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1588, file: !188, line: 289, column: 6)
!1609 = !DILocation(line: 289, column: 13, scope: !1608)
!1610 = !DILocation(line: 289, column: 6, scope: !1588)
!1611 = !DILocation(line: 290, column: 10, scope: !1608)
!1612 = !DILocation(line: 290, column: 3, scope: !1608)
!1613 = !DILocation(line: 293, column: 16, scope: !1588)
!1614 = !DILocation(line: 294, column: 16, scope: !1588)
!1615 = !DILocation(line: 294, column: 25, scope: !1588)
!1616 = !DILocation(line: 294, column: 34, scope: !1588)
!1617 = !DILocation(line: 294, column: 46, scope: !1588)
!1618 = !DILocation(line: 292, column: 2, scope: !1588)
!1619 = !DILocation(line: 296, column: 2, scope: !1588)
!1620 = distinct !{!1620, !1619}
!1621 = !DILocation(line: 297, column: 20, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1588, file: !188, line: 296, column: 5)
!1623 = !DILocation(line: 297, column: 29, scope: !1622)
!1624 = !DILocation(line: 297, column: 38, scope: !1622)
!1625 = !DILocation(line: 298, column: 20, scope: !1622)
!1626 = !DILocation(line: 298, column: 32, scope: !1622)
!1627 = !DILocation(line: 298, column: 44, scope: !1622)
!1628 = !DILocation(line: 297, column: 8, scope: !1622)
!1629 = !DILocation(line: 297, column: 6, scope: !1622)
!1630 = !DILocation(line: 301, column: 7, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1622, file: !188, line: 301, column: 7)
!1632 = !DILocation(line: 301, column: 10, scope: !1631)
!1633 = !DILocation(line: 301, column: 7, scope: !1622)
!1634 = !DILocation(line: 302, column: 14, scope: !1631)
!1635 = !DILocation(line: 302, column: 23, scope: !1631)
!1636 = !DILocation(line: 302, column: 4, scope: !1631)
!1637 = !DILocation(line: 304, column: 7, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1622, file: !188, line: 304, column: 7)
!1639 = !DILocation(line: 304, column: 10, scope: !1638)
!1640 = !DILocation(line: 304, column: 7, scope: !1622)
!1641 = !DILocation(line: 305, column: 16, scope: !1638)
!1642 = !DILocation(line: 305, column: 25, scope: !1638)
!1643 = !DILocation(line: 305, column: 4, scope: !1638)
!1644 = !DILocation(line: 306, column: 2, scope: !1622)
!1645 = !DILocation(line: 306, column: 27, scope: !1646)
!1646 = !DILexicalBlockFile(scope: !1588, file: !188, discriminator: 1)
!1647 = !DILocation(line: 306, column: 12, scope: !1646)
!1648 = !DILocation(line: 306, column: 11, scope: !1646)
!1649 = !DILocation(line: 306, column: 2, scope: !1646)
!1650 = !DILocation(line: 308, column: 32, scope: !1588)
!1651 = !DILocation(line: 309, column: 15, scope: !1588)
!1652 = !DILocation(line: 309, column: 18, scope: !1588)
!1653 = !DILocation(line: 309, column: 25, scope: !1588)
!1654 = !DILocation(line: 309, column: 28, scope: !1646)
!1655 = !DILocation(line: 309, column: 31, scope: !1646)
!1656 = !DILocation(line: 309, column: 25, scope: !1646)
!1657 = !DILocation(line: 309, column: 14, scope: !1658)
!1658 = !DILexicalBlockFile(scope: !1588, file: !188, discriminator: 2)
!1659 = !DILocation(line: 308, column: 2, scope: !1646)
!1660 = !DILocation(line: 311, column: 7, scope: !1588)
!1661 = !DILocation(line: 313, column: 10, scope: !1588)
!1662 = !DILocation(line: 313, column: 2, scope: !1588)
!1663 = !DILocation(line: 316, column: 8, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1588, file: !188, line: 313, column: 14)
!1665 = !DILocation(line: 317, column: 3, scope: !1664)
!1666 = !DILocation(line: 321, column: 8, scope: !1664)
!1667 = !DILocation(line: 322, column: 3, scope: !1664)
!1668 = !DILocation(line: 325, column: 71, scope: !1664)
!1669 = !DILocation(line: 325, column: 3, scope: !1664)
!1670 = !DILocation(line: 328, column: 9, scope: !1588)
!1671 = !DILocation(line: 328, column: 2, scope: !1588)
!1672 = !DILocation(line: 329, column: 1, scope: !1588)
!1673 = distinct !DISubprogram(name: "show_prompt", scope: !188, file: !188, line: 87, type: !1674, isLocal: true, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !468)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{!238, !254, !254, !254, !238, !238, !187}
!1676 = !DILocalVariable(name: "cfgfile", arg: 1, scope: !1673, file: !188, line: 87, type: !254)
!1677 = !DILocation(line: 87, column: 25, scope: !1673)
!1678 = !DILocalVariable(name: "realold", arg: 2, scope: !1673, file: !188, line: 87, type: !254)
!1679 = !DILocation(line: 87, column: 46, scope: !1673)
!1680 = !DILocalVariable(name: "realnew", arg: 3, scope: !1673, file: !188, line: 87, type: !254)
!1681 = !DILocation(line: 87, column: 67, scope: !1673)
!1682 = !DILocalVariable(name: "useredited", arg: 4, scope: !1673, file: !188, line: 88, type: !238)
!1683 = !DILocation(line: 88, column: 17, scope: !1673)
!1684 = !DILocalVariable(name: "distedited", arg: 5, scope: !1673, file: !188, line: 88, type: !238)
!1685 = !DILocation(line: 88, column: 33, scope: !1673)
!1686 = !DILocalVariable(name: "what", arg: 6, scope: !1673, file: !188, line: 88, type: !187)
!1687 = !DILocation(line: 88, column: 59, scope: !1673)
!1688 = !DILocalVariable(name: "s", scope: !1673, file: !188, line: 90, type: !254)
!1689 = !DILocation(line: 90, column: 14, scope: !1673)
!1690 = !DILocalVariable(name: "c", scope: !1673, file: !188, line: 91, type: !238)
!1691 = !DILocation(line: 91, column: 6, scope: !1673)
!1692 = !DILocalVariable(name: "cc", scope: !1673, file: !188, line: 91, type: !238)
!1693 = !DILocation(line: 91, column: 9, scope: !1673)
!1694 = !DILocation(line: 95, column: 2, scope: !1673)
!1695 = !DILocation(line: 97, column: 13, scope: !1673)
!1696 = !DILocation(line: 97, column: 2, scope: !1673)
!1697 = !DILocation(line: 98, column: 13, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1673, file: !188, line: 98, column: 6)
!1699 = !DILocation(line: 98, column: 22, scope: !1698)
!1700 = !DILocation(line: 98, column: 6, scope: !1698)
!1701 = !DILocation(line: 98, column: 31, scope: !1698)
!1702 = !DILocation(line: 98, column: 6, scope: !1673)
!1703 = !DILocation(line: 99, column: 10, scope: !1698)
!1704 = !DILocation(line: 99, column: 18, scope: !1698)
!1705 = !DILocation(line: 99, column: 56, scope: !1698)
!1706 = !DILocation(line: 99, column: 3, scope: !1707)
!1707 = !DILexicalBlockFile(scope: !1698, file: !188, discriminator: 1)
!1708 = !DILocation(line: 99, column: 3, scope: !1698)
!1709 = !DILocation(line: 101, column: 10, scope: !1698)
!1710 = !DILocation(line: 101, column: 18, scope: !1698)
!1711 = !DILocation(line: 102, column: 11, scope: !1698)
!1712 = !DILocation(line: 102, column: 20, scope: !1698)
!1713 = !DILocation(line: 101, column: 3, scope: !1707)
!1714 = !DILocation(line: 104, column: 6, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1673, file: !188, line: 104, column: 6)
!1716 = !DILocation(line: 104, column: 11, scope: !1715)
!1717 = !DILocation(line: 104, column: 6, scope: !1673)
!1718 = !DILocation(line: 105, column: 10, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1715, file: !188, line: 104, column: 26)
!1720 = !DILocation(line: 106, column: 11, scope: !1719)
!1721 = !DILocation(line: 105, column: 3, scope: !1719)
!1722 = !DILocation(line: 108, column: 2, scope: !1719)
!1723 = !DILocation(line: 109, column: 10, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1715, file: !188, line: 108, column: 9)
!1725 = !DILocation(line: 109, column: 19, scope: !1724)
!1726 = !DILocation(line: 109, column: 18, scope: !1724)
!1727 = !DILocation(line: 110, column: 11, scope: !1724)
!1728 = !DILocation(line: 109, column: 18, scope: !1729)
!1729 = !DILexicalBlockFile(scope: !1724, file: !188, discriminator: 1)
!1730 = !DILocation(line: 111, column: 13, scope: !1724)
!1731 = !DILocation(line: 111, column: 18, scope: !1724)
!1732 = !DILocation(line: 111, column: 11, scope: !1724)
!1733 = !DILocation(line: 112, column: 11, scope: !1724)
!1734 = !DILocation(line: 111, column: 11, scope: !1729)
!1735 = !DILocation(line: 113, column: 11, scope: !1724)
!1736 = !DILocation(line: 111, column: 11, scope: !1737)
!1737 = !DILexicalBlockFile(scope: !1724, file: !188, discriminator: 2)
!1738 = !DILocation(line: 111, column: 11, scope: !1739)
!1739 = !DILexicalBlockFile(scope: !1724, file: !188, discriminator: 3)
!1740 = !DILocation(line: 109, column: 18, scope: !1737)
!1741 = !DILocation(line: 109, column: 18, scope: !1739)
!1742 = !DILocation(line: 109, column: 3, scope: !1739)
!1743 = !DILocation(line: 115, column: 10, scope: !1724)
!1744 = !DILocation(line: 115, column: 18, scope: !1724)
!1745 = !DILocation(line: 116, column: 11, scope: !1724)
!1746 = !DILocation(line: 115, column: 18, scope: !1729)
!1747 = !DILocation(line: 117, column: 11, scope: !1724)
!1748 = !DILocation(line: 115, column: 18, scope: !1737)
!1749 = !DILocation(line: 115, column: 18, scope: !1739)
!1750 = !DILocation(line: 115, column: 3, scope: !1739)
!1751 = !DILocation(line: 123, column: 8, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1673, file: !188, line: 123, column: 6)
!1753 = !DILocation(line: 123, column: 34, scope: !1752)
!1754 = !DILocation(line: 123, column: 38, scope: !1755)
!1755 = !DILexicalBlockFile(scope: !1752, file: !188, discriminator: 1)
!1756 = !DILocation(line: 123, column: 43, scope: !1755)
!1757 = !DILocation(line: 123, column: 6, scope: !1755)
!1758 = !DILocation(line: 124, column: 7, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1760, file: !188, line: 124, column: 7)
!1760 = distinct !DILexicalBlock(scope: !1752, file: !188, line: 123, column: 75)
!1761 = !DILocation(line: 124, column: 7, scope: !1760)
!1762 = !DILocation(line: 125, column: 11, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1759, file: !188, line: 124, column: 34)
!1764 = !DILocation(line: 126, column: 12, scope: !1763)
!1765 = !DILocation(line: 125, column: 4, scope: !1763)
!1766 = !DILocation(line: 127, column: 4, scope: !1763)
!1767 = !DILocation(line: 128, column: 14, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1759, file: !188, line: 128, column: 14)
!1769 = !DILocation(line: 128, column: 14, scope: !1759)
!1770 = !DILocation(line: 129, column: 11, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1768, file: !188, line: 128, column: 41)
!1772 = !DILocation(line: 130, column: 12, scope: !1771)
!1773 = !DILocation(line: 129, column: 4, scope: !1771)
!1774 = !DILocation(line: 131, column: 4, scope: !1771)
!1775 = !DILocation(line: 133, column: 2, scope: !1760)
!1776 = !DILocation(line: 136, column: 6, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1673, file: !188, line: 136, column: 6)
!1778 = !DILocation(line: 136, column: 6, scope: !1673)
!1779 = !DILocation(line: 137, column: 7, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1781, file: !188, line: 137, column: 7)
!1781 = distinct !DILexicalBlock(scope: !1777, file: !188, line: 136, column: 33)
!1782 = !DILocation(line: 137, column: 12, scope: !1780)
!1783 = !DILocation(line: 137, column: 7, scope: !1781)
!1784 = !DILocation(line: 138, column: 11, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1780, file: !188, line: 137, column: 25)
!1786 = !DILocation(line: 139, column: 12, scope: !1785)
!1787 = !DILocation(line: 138, column: 4, scope: !1785)
!1788 = !DILocation(line: 140, column: 4, scope: !1785)
!1789 = !DILocation(line: 141, column: 14, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1780, file: !188, line: 141, column: 14)
!1791 = !DILocation(line: 141, column: 19, scope: !1790)
!1792 = !DILocation(line: 141, column: 14, scope: !1780)
!1793 = !DILocation(line: 142, column: 11, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1790, file: !188, line: 141, column: 35)
!1795 = !DILocation(line: 143, column: 12, scope: !1794)
!1796 = !DILocation(line: 142, column: 4, scope: !1794)
!1797 = !DILocation(line: 144, column: 4, scope: !1794)
!1798 = !DILocation(line: 146, column: 2, scope: !1781)
!1799 = !DILocation(line: 148, column: 9, scope: !1673)
!1800 = !DILocation(line: 149, column: 10, scope: !1673)
!1801 = !DILocation(line: 148, column: 2, scope: !1673)
!1802 = !DILocation(line: 155, column: 6, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1673, file: !188, line: 155, column: 6)
!1804 = !DILocation(line: 155, column: 11, scope: !1803)
!1805 = !DILocation(line: 155, column: 6, scope: !1673)
!1806 = !DILocation(line: 156, column: 10, scope: !1803)
!1807 = !DILocation(line: 157, column: 11, scope: !1803)
!1808 = !DILocation(line: 156, column: 3, scope: !1803)
!1809 = !DILocation(line: 158, column: 11, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1803, file: !188, line: 158, column: 11)
!1811 = !DILocation(line: 158, column: 16, scope: !1810)
!1812 = !DILocation(line: 158, column: 11, scope: !1803)
!1813 = !DILocation(line: 159, column: 10, scope: !1810)
!1814 = !DILocation(line: 160, column: 11, scope: !1810)
!1815 = !DILocation(line: 159, column: 3, scope: !1810)
!1816 = !DILocation(line: 162, column: 20, scope: !1673)
!1817 = !DILocation(line: 162, column: 6, scope: !1673)
!1818 = !DILocation(line: 162, column: 4, scope: !1673)
!1819 = !DILocation(line: 163, column: 9, scope: !1673)
!1820 = !DILocation(line: 163, column: 47, scope: !1673)
!1821 = !DILocation(line: 164, column: 11, scope: !1673)
!1822 = !DILocation(line: 164, column: 16, scope: !1673)
!1823 = !DILocation(line: 164, column: 10, scope: !1673)
!1824 = !DILocation(line: 164, column: 31, scope: !1825)
!1825 = !DILexicalBlockFile(scope: !1673, file: !188, discriminator: 1)
!1826 = !DILocation(line: 164, column: 10, scope: !1825)
!1827 = !DILocation(line: 165, column: 11, scope: !1673)
!1828 = !DILocation(line: 165, column: 16, scope: !1673)
!1829 = !DILocation(line: 165, column: 10, scope: !1673)
!1830 = !DILocation(line: 165, column: 34, scope: !1825)
!1831 = !DILocation(line: 165, column: 10, scope: !1825)
!1832 = !DILocation(line: 166, column: 10, scope: !1673)
!1833 = !DILocation(line: 165, column: 10, scope: !1834)
!1834 = !DILexicalBlockFile(scope: !1673, file: !188, discriminator: 2)
!1835 = !DILocation(line: 165, column: 10, scope: !1836)
!1836 = !DILexicalBlockFile(scope: !1673, file: !188, discriminator: 3)
!1837 = !DILocation(line: 164, column: 10, scope: !1834)
!1838 = !DILocation(line: 164, column: 10, scope: !1836)
!1839 = !DILocation(line: 163, column: 2, scope: !1825)
!1840 = !DILocation(line: 168, column: 12, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1673, file: !188, line: 168, column: 6)
!1842 = !DILocation(line: 168, column: 6, scope: !1841)
!1843 = !DILocation(line: 168, column: 6, scope: !1673)
!1844 = !DILocation(line: 169, column: 11, scope: !1841)
!1845 = !DILocation(line: 169, column: 3, scope: !1846)
!1846 = !DILexicalBlockFile(scope: !1841, file: !188, discriminator: 1)
!1847 = !DILocation(line: 169, column: 3, scope: !1841)
!1848 = !DILocation(line: 171, column: 5, scope: !1673)
!1849 = !DILocation(line: 172, column: 2, scope: !1673)
!1850 = !DILocation(line: 172, column: 14, scope: !1825)
!1851 = !DILocation(line: 172, column: 12, scope: !1825)
!1852 = !DILocation(line: 172, column: 25, scope: !1825)
!1853 = !DILocation(line: 172, column: 31, scope: !1825)
!1854 = !DILocation(line: 172, column: 34, scope: !1834)
!1855 = !DILocation(line: 172, column: 36, scope: !1834)
!1856 = !DILocation(line: 172, column: 2, scope: !1836)
!1857 = !DILocation(line: 173, column: 7, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1673, file: !188, line: 173, column: 7)
!1859 = !DILocation(line: 173, column: 8, scope: !1858)
!1860 = !DILocation(line: 173, column: 10, scope: !1858)
!1861 = !DILocation(line: 173, column: 9, scope: !1858)
!1862 = !DILocation(line: 173, column: 11, scope: !1858)
!1863 = !DILocation(line: 173, column: 18, scope: !1858)
!1864 = !DILocation(line: 173, column: 22, scope: !1865)
!1865 = !DILexicalBlockFile(scope: !1858, file: !188, discriminator: 1)
!1866 = !DILocation(line: 173, column: 7, scope: !1865)
!1867 = !DILocation(line: 174, column: 17, scope: !1858)
!1868 = !DILocation(line: 174, column: 9, scope: !1858)
!1869 = !DILocation(line: 174, column: 7, scope: !1858)
!1870 = !DILocation(line: 174, column: 4, scope: !1858)
!1871 = !DILocation(line: 172, column: 2, scope: !1872)
!1872 = !DILexicalBlockFile(scope: !1673, file: !188, discriminator: 4)
!1873 = distinct !{!1873, !1849}
!1874 = !DILocation(line: 176, column: 6, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1673, file: !188, line: 176, column: 6)
!1876 = !DILocation(line: 176, column: 8, scope: !1875)
!1877 = !DILocation(line: 176, column: 6, scope: !1673)
!1878 = !DILocation(line: 177, column: 13, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1880, file: !188, line: 177, column: 7)
!1880 = distinct !DILexicalBlock(scope: !1875, file: !188, line: 176, column: 15)
!1881 = !DILocation(line: 177, column: 7, scope: !1879)
!1882 = !DILocation(line: 177, column: 7, scope: !1880)
!1883 = !DILocation(line: 178, column: 12, scope: !1879)
!1884 = !DILocation(line: 178, column: 4, scope: !1885)
!1885 = !DILexicalBlockFile(scope: !1879, file: !188, discriminator: 1)
!1886 = !DILocation(line: 178, column: 4, scope: !1879)
!1887 = !DILocation(line: 179, column: 10, scope: !1880)
!1888 = !DILocation(line: 179, column: 3, scope: !1889)
!1889 = !DILexicalBlockFile(scope: !1880, file: !188, discriminator: 1)
!1890 = !DILocation(line: 179, column: 3, scope: !1880)
!1891 = !DILocation(line: 182, column: 7, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1673, file: !188, line: 182, column: 6)
!1893 = !DILocation(line: 182, column: 6, scope: !1673)
!1894 = !DILocation(line: 183, column: 7, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1896, file: !188, line: 183, column: 7)
!1896 = distinct !DILexicalBlock(scope: !1892, file: !188, line: 182, column: 11)
!1897 = !DILocation(line: 183, column: 12, scope: !1895)
!1898 = !DILocation(line: 183, column: 7, scope: !1896)
!1899 = !DILocation(line: 184, column: 4, scope: !1895)
!1900 = !DILocation(line: 185, column: 12, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1895, file: !188, line: 185, column: 12)
!1902 = !DILocation(line: 185, column: 17, scope: !1901)
!1903 = !DILocation(line: 185, column: 12, scope: !1895)
!1904 = !DILocation(line: 186, column: 4, scope: !1901)
!1905 = !DILocation(line: 187, column: 2, scope: !1896)
!1906 = !DILocation(line: 189, column: 9, scope: !1673)
!1907 = !DILocation(line: 189, column: 2, scope: !1673)
!1908 = !DILocation(line: 190, column: 1, scope: !1673)
!1909 = distinct !DISubprogram(name: "show_diff", scope: !188, file: !188, line: 199, type: !1910, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !468)
!1910 = !DISubroutineType(types: !1911)
!1911 = !{null, !254, !254}
!1912 = !DILocalVariable(name: "old", arg: 1, scope: !1909, file: !188, line: 199, type: !254)
!1913 = !DILocation(line: 199, column: 23, scope: !1909)
!1914 = !DILocalVariable(name: "new", arg: 2, scope: !1909, file: !188, line: 199, type: !254)
!1915 = !DILocation(line: 199, column: 40, scope: !1909)
!1916 = !DILocalVariable(name: "pager", scope: !1909, file: !188, line: 201, type: !1917)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64, align: 64)
!1918 = !DICompositeType(tag: DW_TAG_structure_type, name: "pager", file: !1919, line: 36, flags: DIFlagFwdDecl)
!1919 = !DIFile(filename: "../lib/dpkg/pager.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!1920 = !DILocation(line: 201, column: 16, scope: !1909)
!1921 = !DILocalVariable(name: "pid", scope: !1909, file: !188, line: 202, type: !1922)
!1922 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !413, line: 98, baseType: !1923)
!1923 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !415, line: 133, baseType: !238)
!1924 = !DILocation(line: 202, column: 8, scope: !1909)
!1925 = !DILocation(line: 204, column: 22, scope: !1909)
!1926 = !DILocation(line: 204, column: 10, scope: !1927)
!1927 = !DILexicalBlockFile(scope: !1909, file: !188, discriminator: 1)
!1928 = !DILocation(line: 204, column: 8, scope: !1909)
!1929 = !DILocation(line: 206, column: 8, scope: !1909)
!1930 = !DILocation(line: 206, column: 6, scope: !1909)
!1931 = !DILocation(line: 207, column: 7, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1909, file: !188, line: 207, column: 6)
!1933 = !DILocation(line: 207, column: 6, scope: !1909)
!1934 = !DILocalVariable(name: "cmd", scope: !1935, file: !188, line: 209, type: !1936)
!1935 = distinct !DILexicalBlock(scope: !1932, file: !188, line: 207, column: 12)
!1936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "command", file: !1937, line: 37, size: 256, align: 64, elements: !1938)
!1937 = !DIFile(filename: "../lib/dpkg/command.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!1938 = !{!1939, !1940, !1941, !1942, !1943}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1936, file: !1937, line: 39, baseType: !254, size: 64, align: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !1936, file: !1937, line: 41, baseType: !254, size: 64, align: 64, offset: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !1936, file: !1937, line: 42, baseType: !238, size: 32, align: 32, offset: 128)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "argv_size", scope: !1936, file: !1937, line: 43, baseType: !238, size: 32, align: 32, offset: 160)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1936, file: !1937, line: 44, baseType: !1944, size: 64, align: 64, offset: 192)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!1945 = !DILocation(line: 209, column: 18, scope: !1935)
!1946 = !DILocation(line: 211, column: 30, scope: !1935)
!1947 = !DILocation(line: 211, column: 3, scope: !1948)
!1948 = !DILexicalBlockFile(scope: !1935, file: !188, discriminator: 1)
!1949 = !DILocation(line: 212, column: 3, scope: !1935)
!1950 = !DILocation(line: 213, column: 3, scope: !1935)
!1951 = !DILocation(line: 214, column: 25, scope: !1935)
!1952 = !DILocation(line: 214, column: 3, scope: !1935)
!1953 = !DILocation(line: 215, column: 25, scope: !1935)
!1954 = !DILocation(line: 215, column: 3, scope: !1935)
!1955 = !DILocation(line: 216, column: 3, scope: !1935)
!1956 = !DILocation(line: 220, column: 15, scope: !1909)
!1957 = !DILocation(line: 220, column: 20, scope: !1909)
!1958 = !DILocation(line: 220, column: 2, scope: !1927)
!1959 = !DILocation(line: 221, column: 13, scope: !1909)
!1960 = !DILocation(line: 221, column: 2, scope: !1909)
!1961 = !DILocation(line: 222, column: 1, scope: !1909)
!1962 = distinct !DISubprogram(name: "spawn_shell", scope: !188, file: !188, line: 234, type: !1910, isLocal: true, isDefinition: true, scopeLine: 235, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !468)
!1963 = !DILocalVariable(name: "confold", arg: 1, scope: !1962, file: !188, line: 234, type: !254)
!1964 = !DILocation(line: 234, column: 25, scope: !1962)
!1965 = !DILocalVariable(name: "confnew", arg: 2, scope: !1962, file: !188, line: 234, type: !254)
!1966 = !DILocation(line: 234, column: 46, scope: !1962)
!1967 = !DILocalVariable(name: "pid", scope: !1962, file: !188, line: 236, type: !1922)
!1968 = !DILocation(line: 236, column: 8, scope: !1962)
!1969 = !DILocation(line: 238, column: 8, scope: !1962)
!1970 = !DILocation(line: 238, column: 45, scope: !1962)
!1971 = !DILocation(line: 238, column: 2, scope: !1972)
!1972 = !DILexicalBlockFile(scope: !1962, file: !188, discriminator: 1)
!1973 = !DILocation(line: 239, column: 33, scope: !1962)
!1974 = !DILocation(line: 239, column: 2, scope: !1962)
!1975 = !DILocation(line: 240, column: 33, scope: !1962)
!1976 = !DILocation(line: 240, column: 2, scope: !1962)
!1977 = !DILocation(line: 241, column: 33, scope: !1962)
!1978 = !DILocation(line: 241, column: 2, scope: !1962)
!1979 = !DILocation(line: 242, column: 8, scope: !1962)
!1980 = !DILocation(line: 242, column: 45, scope: !1962)
!1981 = !DILocation(line: 242, column: 2, scope: !1972)
!1982 = !DILocation(line: 244, column: 8, scope: !1962)
!1983 = !DILocation(line: 244, column: 6, scope: !1962)
!1984 = !DILocation(line: 245, column: 7, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1962, file: !188, line: 245, column: 6)
!1986 = !DILocation(line: 245, column: 6, scope: !1962)
!1987 = !DILocation(line: 247, column: 3, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1985, file: !188, line: 245, column: 12)
!1989 = !DILocation(line: 248, column: 31, scope: !1988)
!1990 = !DILocation(line: 248, column: 3, scope: !1988)
!1991 = !DILocation(line: 249, column: 31, scope: !1988)
!1992 = !DILocation(line: 249, column: 3, scope: !1988)
!1993 = !DILocation(line: 251, column: 22, scope: !1988)
!1994 = !DILocation(line: 251, column: 3, scope: !1995)
!1995 = !DILexicalBlockFile(scope: !1988, file: !188, discriminator: 1)
!1996 = !DILocation(line: 251, column: 3, scope: !1988)
!1997 = !DILocation(line: 255, column: 15, scope: !1962)
!1998 = !DILocation(line: 255, column: 20, scope: !1962)
!1999 = !DILocation(line: 255, column: 2, scope: !1972)
!2000 = !DILocation(line: 256, column: 1, scope: !1962)
