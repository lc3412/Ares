; ModuleID = './[inter]src--divertcmd.o.i'
source_filename = "./[inter]src--divertcmd.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cmdinfo = type { i8*, i8, i32, i32*, i8**, void (%struct.cmdinfo*, i8*)*, i32, i8*, i32 (i8**)* }
%struct.varbuf = type { i64, i64, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.file = type { i8*, i32, %struct.stat }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.fsys_diversion = type { %struct.fsys_namenode*, %struct.fsys_namenode*, %struct.pkgset*, %struct.fsys_diversion* }
%struct.fsys_namenode = type { %struct.fsys_namenode*, i8*, %struct.pkg_list*, %struct.fsys_diversion*, %struct.file_stat*, %struct.trigfileint*, i32, i8*, i8*, %struct.file_ondisk_id* }
%struct.pkg_list = type opaque
%struct.file_stat = type { i32, i32, i32, i8*, i8* }
%struct.trigfileint = type opaque
%struct.file_ondisk_id = type { i64, i64 }
%struct.pkgset = type { %struct.pkgset*, i8*, %struct.pkginfo, %struct.anon.1, i32 }
%struct.pkginfo = type { %struct.pkgset*, %struct.pkginfo*, i32, i32, i32, i32, i8*, i8*, %struct.dpkg_version, %struct.pkgbin, %struct.pkgbin, %struct.perpackagestate*, %struct.archivedetails*, %struct.anon, %struct.trigaw*, %struct.trigpend*, %struct.fsys_namenode_list*, i64, i8, i8 }
%struct.dpkg_version = type { i32, i8*, i8* }
%struct.pkgbin = type { %struct.dependency*, i8, i32, %struct.dpkg_arch*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.dpkg_version, %struct.conffile*, %struct.arbitraryfield* }
%struct.dependency = type { %struct.pkginfo*, %struct.dependency*, %struct.deppossi*, i32 }
%struct.deppossi = type { %struct.dependency*, %struct.pkgset*, %struct.deppossi*, %struct.deppossi*, %struct.deppossi*, %struct.dpkg_arch*, %struct.dpkg_version, i32, i8, i8 }
%struct.dpkg_arch = type { %struct.dpkg_arch*, i8*, i32 }
%struct.conffile = type { %struct.conffile*, i8*, i8*, i8 }
%struct.arbitraryfield = type { %struct.arbitraryfield*, i8*, i8* }
%struct.perpackagestate = type opaque
%struct.archivedetails = type { %struct.archivedetails*, i8*, i8*, i8*, i8* }
%struct.anon = type { %struct.trigaw*, %struct.trigaw* }
%struct.trigaw = type { %struct.pkginfo*, %struct.pkginfo*, %struct.trigaw*, %struct.anon.0 }
%struct.anon.0 = type { %struct.trigaw*, %struct.trigaw* }
%struct.trigpend = type { %struct.trigpend*, i8* }
%struct.fsys_namenode_list = type { %struct.fsys_namenode_list*, %struct.fsys_namenode* }
%struct.anon.1 = type { %struct.deppossi*, %struct.deppossi* }
%struct.fsys_hash_iter = type opaque
%struct.glob_node = type { %struct.glob_node*, i8* }
%struct.fsys_node_pkgs_iter = type opaque
%struct.pkg_hash_iter = type opaque
%struct.atomic_file = type { i32, i8*, i8*, %struct._IO_FILE* }
%struct.dpkg_error = type { i32, i32, i8* }

@.str = private unnamed_addr constant [5 x i8] c"dpkg\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"dpkg-divert\00", align 1
@cmdinfos = internal constant [18 x %struct.cmdinfo] [%struct.cmdinfo { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8 0, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 0, i8* null, i32 (i8**)* @diversion_add }, %struct.cmdinfo { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8 0, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 0, i8* null, i32 (i8**)* @diversion_remove }, %struct.cmdinfo { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8 0, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 0, i8* null, i32 (i8**)* @diversion_list }, %struct.cmdinfo { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i8 0, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 0, i8* null, i32 (i8**)* @diversion_listpackage }, %struct.cmdinfo { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8 0, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 0, i8* null, i32 (i8**)* @diversion_truename }, %struct.cmdinfo { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8 0, i32 1, i32* null, i8** @admindir, void (%struct.cmdinfo*, i8*)* null, i32 0, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8 0, i32 1, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @set_instdir, i32 0, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8 0, i32 1, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @set_root, i32 0, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i8 0, i32 1, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @set_divertto, i32 0, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8 0, i32 1, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @set_package, i32 0, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8 0, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @set_package, i32 0, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i8 0, i32 0, i32* @opt_verbose, i8** null, void (%struct.cmdinfo*, i8*)* null, i32 0, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i8 0, i32 0, i32* @opt_rename, i8** null, void (%struct.cmdinfo*, i8*)* null, i32 1, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i8 0, i32 0, i32* @opt_rename, i8** null, void (%struct.cmdinfo*, i8*)* null, i32 0, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8 0, i32 0, i32* @opt_test, i8** null, void (%struct.cmdinfo*, i8*)* null, i32 1, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i8 63, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @usage, i32 0, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i8 0, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @printversion, i32 0, i8* null, i32 (i8**)* null }, %struct.cmdinfo zeroinitializer], align 16
@printforhelp = internal constant [43 x i8] c"Use --help for help about diverting files.\00", align 16
@admindir = internal global i8* null, align 8
@instdir = common global i8* null, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"DPKG_MAINTSCRIPT_PACKAGE\00", align 1
@opt_pkgname_match_any = internal global i8 1, align 1
@cipaction = external global %struct.cmdinfo*, align 8
@cmdinfo_add = internal constant %struct.cmdinfo { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8 0, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 0, i8* null, i32 (i8**)* @diversion_add }, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"listpackage\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"truename\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"admindir\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"instdir\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"divert\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"package\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@opt_verbose = internal global i32 1, align 4
@.str.15 = private unnamed_addr constant [7 x i8] c"rename\00", align 1
@opt_rename = internal global i32 -1, align 4
@.str.16 = private unnamed_addr constant [10 x i8] c"no-rename\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@opt_test = internal global i32 0, align 4
@.str.18 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"--%s needs a single argument\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"cannot divert directories\00", align 1
@opt_divertto = internal global i8* null, align 8
@.str.22 = private unnamed_addr constant [11 x i8] c"%s.distrib\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"cannot divert file '%s' to itself\00", align 1
@opt_pkgname = internal global i8* null, align 8
@.str.24 = private unnamed_addr constant [14 x i8] c"Leaving '%s'\0A\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"'%s' clashes with '%s'\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"Adding '%s'\0A\00", align 1
@.str.27 = private unnamed_addr constant [70 x i8] c"Ignoring request to rename file '%s' owned by diverting package '%s'\0A\00", align 1
@.str.28 = private unnamed_addr constant [88 x i8] c"diverting file '%s' from an Essential package with rename is dangerous, use --no-rename\00", align 1
@.str.29 = private unnamed_addr constant [85 x i8] c"please specify --no-rename explicitly, the default will change to --rename in 1.20.x\00", align 1
@.str.30 = private unnamed_addr constant [30 x i8] c"filename \22%s\22 is not absolute\00", align 1
@.str.31 = private unnamed_addr constant [30 x i8] c"file may not contain newlines\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"cannot stat file '%s'\00", align 1
@diversion_describe.str = internal global %struct.varbuf zeroinitializer, align 8
@.str.33 = private unnamed_addr constant [22 x i8] c"local diversion of %s\00", align 1
@.str.34 = private unnamed_addr constant [28 x i8] c"local diversion of %s to %s\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"diversion of %s by %s\00", align 1
@.str.36 = private unnamed_addr constant [28 x i8] c"diversion of %s to %s by %s\00", align 1
@diversion_current.str = internal global %struct.varbuf zeroinitializer, align 8
@.str.37 = private unnamed_addr constant [20 x i8] c"any diversion of %s\00", align 1
@.str.38 = private unnamed_addr constant [26 x i8] c"any diversion of %s to %s\00", align 1
@.str.39 = private unnamed_addr constant [73 x i8] c"rename involves overwriting '%s' with\0A  different file '%s', not allowed\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c".dpkg-divert.tmp\00", align 1
@.str.42 = private unnamed_addr constant [20 x i8] c"error checking '%s'\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"diversions\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"%s\0A%s\0A%s\0A\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.46 = private unnamed_addr constant [39 x i8] c"rename: remove duplicate old link '%s'\00", align 1
@.str.47 = private unnamed_addr constant [41 x i8] c"unable to remove copied source file '%s'\00", align 1
@.str.48 = private unnamed_addr constant [25 x i8] c"unable to open file '%s'\00", align 1
@.str.49 = private unnamed_addr constant [27 x i8] c"unable to create file '%s'\00", align 1
@.str.50 = private unnamed_addr constant [29 x i8] c"cannot copy '%s' to '%s': %s\00", align 1
@.str.51 = private unnamed_addr constant [25 x i8] c"unable to sync file '%s'\00", align 1
@.str.52 = private unnamed_addr constant [26 x i8] c"unable to close file '%s'\00", align 1
@.str.53 = private unnamed_addr constant [27 x i8] c"cannot rename '%s' to '%s'\00", align 1
@.str.54 = private unnamed_addr constant [34 x i8] c"No diversion '%s', none removed.\0A\00", align 1
@.str.55 = private unnamed_addr constant [56 x i8] c"mismatch on divert-to\0A  when removing '%s'\0A  found '%s'\00", align 1
@.str.56 = private unnamed_addr constant [54 x i8] c"mismatch on package\0A  when removing '%s'\0A  found '%s'\00", align 1
@.str.57 = private unnamed_addr constant [51 x i8] c"Ignoring request to remove shared diversion '%s'.\0A\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"Removing '%s'\0A\00", align 1
@.str.59 = private unnamed_addr constant [22 x i8] c"DPKG_MAINTSCRIPT_ARCH\00", align 1
@.str.60 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"LOCAL\0A\00", align 1
@.str.63 = private unnamed_addr constant [24 x i8] c"/usr/local/var/lib/dpkg\00", align 1
@.str.64 = private unnamed_addr constant [35 x i8] c"divert-to may not contain newlines\00", align 1
@.str.65 = private unnamed_addr constant [37 x i8] c"Usage: %s [<option> ...] <command>\0A\0A\00", align 1
@.str.66 = private unnamed_addr constant [270 x i8] c"Commands:\0A  [--add] <file>           add a diversion.\0A  --remove <file>          remove the diversion.\0A  --list [<glob-pattern>]  show file diversions.\0A  --listpackage <file>     show what package diverts the file.\0A  --truename <file>        return the diverted file.\0A\0A\00", align 1
@.str.67 = private unnamed_addr constant [840 x i8] c"Options:\0A  --package <package>      name of the package whose copy of <file> will not\0A                             be diverted.\0A  --local                  all packages' versions are diverted.\0A  --divert <divert-to>     the name used by other packages' versions.\0A  --rename                 actually move the file aside (or back).\0A  --no-rename              do not move the file aside (or back) (default).\0A  --admindir <directory>   set the directory with the diversions file.\0A  --instdir <directory>    set the root directory, but not the admin dir.\0A  --root <directory>       set the directory of the root filesystem.\0A  --test                   don't do anything, just demonstrate.\0A  --quiet                  quiet operation, minimal output.\0A  --help                   show this help message.\0A  --version                show the version.\0A\0A\00", align 1
@.str.68 = private unnamed_addr constant [217 x i8] c"When adding, default is --local and --divert <original>.distrib.\0AWhen removing, --package or --local and --divert must match if specified.\0APackage preinst/postrm scripts should always specify --package and --divert.\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.69 = private unnamed_addr constant [18 x i8] c"<standard output>\00", align 1
@.str.70 = private unnamed_addr constant [23 x i8] c"Debian %s version %s.\0A\00", align 1
@.str.71 = private unnamed_addr constant [25 x i8] c"1.19.5-19-g1da50 (amd64)\00", align 1
@.str.72 = private unnamed_addr constant [124 x i8] c"This is free software; see the GNU General Public License version 2 or\0Alater for copying conditions. There is NO warranty.\0A\00", align 1
@.str.73 = private unnamed_addr constant [33 x i8] c"package may not contain newlines\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32, i8**) #0 !dbg !416 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !419, metadata !420), !dbg !421
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !422, metadata !420), !dbg !423
  call void @llvm.dbg.declare(metadata i8** %6, metadata !424, metadata !420), !dbg !425
  call void @llvm.dbg.declare(metadata i32* %7, metadata !426, metadata !420), !dbg !427
  call void @dpkg_locales_init(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)), !dbg !428
  call void @dpkg_program_init(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0)), !dbg !429
  call void @dpkg_options_parse(i8*** %5, %struct.cmdinfo* getelementptr inbounds ([18 x %struct.cmdinfo], [18 x %struct.cmdinfo]* @cmdinfos, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @printforhelp, i32 0, i32 0)), !dbg !430
  %8 = load i8*, i8** @admindir, align 8, !dbg !431
  %9 = call i8* @dpkg_db_set_dir(i8* %8), !dbg !432
  store i8* %9, i8** @admindir, align 8, !dbg !433
  %10 = load i8*, i8** @instdir, align 8, !dbg !434
  %11 = call i8* @dpkg_fsys_set_dir(i8* %10), !dbg !435
  store i8* %11, i8** @instdir, align 8, !dbg !436
  %12 = call i8* @getenv(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0)) #9, !dbg !437
  store i8* %12, i8** %6, align 8, !dbg !438
  %13 = load i8, i8* @opt_pkgname_match_any, align 1, !dbg !439
  %14 = trunc i8 %13 to i1, !dbg !439
  br i1 %14, label %15, label %20, !dbg !441

; <label>:15:                                     ; preds = %2
  %16 = load i8*, i8** %6, align 8, !dbg !442
  %17 = icmp ne i8* %16, null, !dbg !442
  br i1 %17, label %18, label %20, !dbg !444

; <label>:18:                                     ; preds = %15
  %19 = load i8*, i8** %6, align 8, !dbg !445
  call void @set_package(%struct.cmdinfo* null, i8* %19), !dbg !446
  br label %20, !dbg !446

; <label>:20:                                     ; preds = %18, %15, %2
  %21 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !447
  %22 = icmp ne %struct.cmdinfo* %21, null, !dbg !447
  br i1 %22, label %24, label %23, !dbg !449

; <label>:23:                                     ; preds = %20
  call void @setaction(%struct.cmdinfo* @cmdinfo_add, i8* null), !dbg !450
  br label %24, !dbg !450

; <label>:24:                                     ; preds = %23, %20
  %25 = call i32 @modstatdb_open(i32 0), !dbg !451
  call void @fsys_hash_init(), !dbg !452
  call void @ensure_diversions(), !dbg !453
  %26 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !454
  %27 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %26, i32 0, i32 8, !dbg !455
  %28 = load i32 (i8**)*, i32 (i8**)** %27, align 8, !dbg !455
  %29 = load i8**, i8*** %5, align 8, !dbg !456
  %30 = call i32 %28(i8** %29), !dbg !454
  store i32 %30, i32* %7, align 4, !dbg !457
  call void @modstatdb_shutdown(), !dbg !458
  call void @dpkg_program_done(), !dbg !459
  %31 = load i32, i32* %7, align 4, !dbg !460
  ret i32 %31, !dbg !461
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @dpkg_locales_init(i8*) #2

declare void @dpkg_program_init(i8*) #2

declare void @dpkg_options_parse(i8***, %struct.cmdinfo*, i8*) #2

declare i8* @dpkg_db_set_dir(i8*) #2

declare i8* @dpkg_fsys_set_dir(i8*) #2

; Function Attrs: nounwind
declare i8* @getenv(i8*) #3

; Function Attrs: nounwind uwtable
define internal void @set_package(%struct.cmdinfo*, i8*) #0 !dbg !462 {
  %3 = alloca %struct.cmdinfo*, align 8
  %4 = alloca i8*, align 8
  store %struct.cmdinfo* %0, %struct.cmdinfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.cmdinfo** %3, metadata !463, metadata !420), !dbg !464
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !465, metadata !420), !dbg !466
  store i8 0, i8* @opt_pkgname_match_any, align 1, !dbg !467
  %5 = load i8*, i8** %4, align 8, !dbg !468
  store i8* %5, i8** @opt_pkgname, align 8, !dbg !469
  %6 = load i8*, i8** @opt_pkgname, align 8, !dbg !470
  %7 = icmp ne i8* %6, null, !dbg !470
  br i1 %7, label %8, label %14, !dbg !472

; <label>:8:                                      ; preds = %2
  %9 = load i8*, i8** @opt_pkgname, align 8, !dbg !473
  %10 = call i8* @strchr(i8* %9, i32 10) #10, !dbg !475
  %11 = icmp ne i8* %10, null, !dbg !476
  br i1 %11, label %12, label %14, !dbg !477

; <label>:12:                                     ; preds = %8
  %13 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.73, i32 0, i32 0)) #9, !dbg !478
  call void (i8*, ...) @badusage(i8* %13) #11, !dbg !479
  unreachable, !dbg !480

; <label>:14:                                     ; preds = %8, %2
  ret void, !dbg !481
}

declare void @setaction(%struct.cmdinfo*, i8*) #2

declare i32 @modstatdb_open(i32) #2

declare void @fsys_hash_init() #2

declare void @ensure_diversions() #2

declare void @modstatdb_shutdown() #2

declare void @dpkg_program_done() #2

; Function Attrs: nounwind uwtable
define internal i32 @diversion_add(i8**) #0 !dbg !482 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.file, align 8
  %6 = alloca %struct.file, align 8
  %7 = alloca %struct.fsys_diversion*, align 8
  %8 = alloca %struct.fsys_diversion*, align 8
  %9 = alloca %struct.fsys_namenode*, align 8
  %10 = alloca %struct.fsys_namenode*, align 8
  %11 = alloca %struct.pkgset*, align 8
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !483, metadata !420), !dbg !484
  call void @llvm.dbg.declare(metadata i8** %4, metadata !485, metadata !420), !dbg !486
  %12 = load i8**, i8*** %3, align 8, !dbg !487
  %13 = getelementptr inbounds i8*, i8** %12, i64 0, !dbg !487
  %14 = load i8*, i8** %13, align 8, !dbg !487
  store i8* %14, i8** %4, align 8, !dbg !486
  call void @llvm.dbg.declare(metadata %struct.file* %5, metadata !488, metadata !420), !dbg !489
  call void @llvm.dbg.declare(metadata %struct.file* %6, metadata !490, metadata !420), !dbg !491
  call void @llvm.dbg.declare(metadata %struct.fsys_diversion** %7, metadata !492, metadata !420), !dbg !493
  call void @llvm.dbg.declare(metadata %struct.fsys_diversion** %8, metadata !494, metadata !420), !dbg !495
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %9, metadata !496, metadata !420), !dbg !497
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %10, metadata !498, metadata !420), !dbg !499
  call void @llvm.dbg.declare(metadata %struct.pkgset** %11, metadata !500, metadata !420), !dbg !501
  store i8 0, i8* @opt_pkgname_match_any, align 1, !dbg !502
  call void @opt_rename_setup(), !dbg !503
  %15 = load i8*, i8** %4, align 8, !dbg !504
  %16 = icmp ne i8* %15, null, !dbg !504
  br i1 %16, label %17, label %22, !dbg !506

; <label>:17:                                     ; preds = %1
  %18 = load i8**, i8*** %3, align 8, !dbg !507
  %19 = getelementptr inbounds i8*, i8** %18, i64 1, !dbg !507
  %20 = load i8*, i8** %19, align 8, !dbg !507
  %21 = icmp ne i8* %20, null, !dbg !507
  br i1 %21, label %22, label %27, !dbg !509

; <label>:22:                                     ; preds = %17, %1
  %23 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i32 0, i32 0)) #9, !dbg !510
  %24 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !511
  %25 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %24, i32 0, i32 0, !dbg !512
  %26 = load i8*, i8** %25, align 8, !dbg !512
  call void (i8*, ...) @badusage(i8* %23, i8* %26) #11, !dbg !513
  unreachable, !dbg !514

; <label>:27:                                     ; preds = %17
  %28 = load i8*, i8** %4, align 8, !dbg !515
  call void @diversion_check_filename(i8* %28), !dbg !516
  %29 = load i8*, i8** %4, align 8, !dbg !517
  call void @file_init(%struct.file* %5, i8* %29), !dbg !518
  call void @file_stat(%struct.file* %5), !dbg !519
  %30 = getelementptr inbounds %struct.file, %struct.file* %5, i32 0, i32 1, !dbg !520
  %31 = load i32, i32* %30, align 8, !dbg !520
  %32 = icmp eq i32 %31, 1, !dbg !522
  br i1 %32, label %33, label %41, !dbg !523

; <label>:33:                                     ; preds = %27
  %34 = getelementptr inbounds %struct.file, %struct.file* %5, i32 0, i32 2, !dbg !524
  %35 = getelementptr inbounds %struct.stat, %struct.stat* %34, i32 0, i32 3, !dbg !525
  %36 = load i32, i32* %35, align 8, !dbg !525
  %37 = and i32 %36, 61440, !dbg !526
  %38 = icmp eq i32 %37, 16384, !dbg !527
  br i1 %38, label %39, label %41, !dbg !528

; <label>:39:                                     ; preds = %33
  %40 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i32 0, i32 0)) #9, !dbg !530
  call void (i8*, ...) @badusage(i8* %40) #11, !dbg !531
  unreachable, !dbg !533

; <label>:41:                                     ; preds = %33, %27
  %42 = load i8*, i8** %4, align 8, !dbg !534
  %43 = call %struct.fsys_namenode* @fsys_hash_find_node(i8* %42, i32 0), !dbg !535
  store %struct.fsys_namenode* %43, %struct.fsys_namenode** %9, align 8, !dbg !536
  %44 = load i8*, i8** @opt_divertto, align 8, !dbg !537
  %45 = icmp eq i8* %44, null, !dbg !539
  br i1 %45, label %46, label %49, !dbg !540

; <label>:46:                                     ; preds = %41
  %47 = load i8*, i8** %4, align 8, !dbg !541
  %48 = call i8* (i8*, ...) @str_fmt(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), i8* %47), !dbg !542
  store i8* %48, i8** @opt_divertto, align 8, !dbg !543
  br label %49, !dbg !544

; <label>:49:                                     ; preds = %46, %41
  %50 = load i8*, i8** %4, align 8, !dbg !545
  %51 = load i8*, i8** @opt_divertto, align 8, !dbg !547
  %52 = call i32 @strcmp(i8* %50, i8* %51) #10, !dbg !548
  %53 = icmp eq i32 %52, 0, !dbg !549
  br i1 %53, label %54, label %57, !dbg !550

; <label>:54:                                     ; preds = %49
  %55 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i32 0, i32 0)) #9, !dbg !551
  %56 = load i8*, i8** %4, align 8, !dbg !552
  call void (i8*, ...) @badusage(i8* %55, i8* %56) #11, !dbg !553
  unreachable, !dbg !555

; <label>:57:                                     ; preds = %49
  %58 = load i8*, i8** @opt_divertto, align 8, !dbg !556
  call void @file_init(%struct.file* %6, i8* %58), !dbg !557
  %59 = load i8*, i8** @opt_divertto, align 8, !dbg !558
  %60 = call %struct.fsys_namenode* @fsys_hash_find_node(i8* %59, i32 0), !dbg !559
  store %struct.fsys_namenode* %60, %struct.fsys_namenode** %10, align 8, !dbg !560
  %61 = load i8*, i8** @opt_pkgname, align 8, !dbg !561
  %62 = icmp eq i8* %61, null, !dbg !563
  br i1 %62, label %63, label %64, !dbg !564

; <label>:63:                                     ; preds = %57
  store %struct.pkgset* null, %struct.pkgset** %11, align 8, !dbg !565
  br label %67, !dbg !566

; <label>:64:                                     ; preds = %57
  %65 = load i8*, i8** @opt_pkgname, align 8, !dbg !567
  %66 = call %struct.pkgset* @pkg_hash_find_set(i8* %65), !dbg !568
  store %struct.pkgset* %66, %struct.pkgset** %11, align 8, !dbg !569
  br label %67

; <label>:67:                                     ; preds = %64, %63
  %68 = load %struct.fsys_namenode*, %struct.fsys_namenode** %9, align 8, !dbg !570
  %69 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %68, i32 0, i32 3, !dbg !572
  %70 = load %struct.fsys_diversion*, %struct.fsys_diversion** %69, align 8, !dbg !572
  %71 = icmp ne %struct.fsys_diversion* %70, null, !dbg !570
  br i1 %71, label %77, label %72, !dbg !573

; <label>:72:                                     ; preds = %67
  %73 = load %struct.fsys_namenode*, %struct.fsys_namenode** %10, align 8, !dbg !574
  %74 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %73, i32 0, i32 3, !dbg !576
  %75 = load %struct.fsys_diversion*, %struct.fsys_diversion** %74, align 8, !dbg !576
  %76 = icmp ne %struct.fsys_diversion* %75, null, !dbg !574
  br i1 %76, label %77, label %162, !dbg !577

; <label>:77:                                     ; preds = %72, %67
  %78 = load %struct.fsys_namenode*, %struct.fsys_namenode** %10, align 8, !dbg !578
  %79 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %78, i32 0, i32 3, !dbg !581
  %80 = load %struct.fsys_diversion*, %struct.fsys_diversion** %79, align 8, !dbg !581
  %81 = icmp ne %struct.fsys_diversion* %80, null, !dbg !578
  br i1 %81, label %82, label %142, !dbg !582

; <label>:82:                                     ; preds = %77
  %83 = load %struct.fsys_namenode*, %struct.fsys_namenode** %10, align 8, !dbg !583
  %84 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %83, i32 0, i32 3, !dbg !585
  %85 = load %struct.fsys_diversion*, %struct.fsys_diversion** %84, align 8, !dbg !585
  %86 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %85, i32 0, i32 1, !dbg !586
  %87 = load %struct.fsys_namenode*, %struct.fsys_namenode** %86, align 8, !dbg !586
  %88 = icmp ne %struct.fsys_namenode* %87, null, !dbg !583
  br i1 %88, label %89, label %142, !dbg !587

; <label>:89:                                     ; preds = %82
  %90 = load %struct.fsys_namenode*, %struct.fsys_namenode** %10, align 8, !dbg !588
  %91 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %90, i32 0, i32 3, !dbg !589
  %92 = load %struct.fsys_diversion*, %struct.fsys_diversion** %91, align 8, !dbg !589
  %93 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %92, i32 0, i32 1, !dbg !590
  %94 = load %struct.fsys_namenode*, %struct.fsys_namenode** %93, align 8, !dbg !590
  %95 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %94, i32 0, i32 1, !dbg !591
  %96 = load i8*, i8** %95, align 8, !dbg !591
  %97 = load i8*, i8** %4, align 8, !dbg !592
  %98 = call i32 @strcmp(i8* %96, i8* %97) #10, !dbg !593
  %99 = icmp eq i32 %98, 0, !dbg !594
  br i1 %99, label %100, label %142, !dbg !595

; <label>:100:                                    ; preds = %89
  %101 = load %struct.fsys_namenode*, %struct.fsys_namenode** %9, align 8, !dbg !596
  %102 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %101, i32 0, i32 3, !dbg !597
  %103 = load %struct.fsys_diversion*, %struct.fsys_diversion** %102, align 8, !dbg !597
  %104 = icmp ne %struct.fsys_diversion* %103, null, !dbg !596
  br i1 %104, label %105, label %142, !dbg !598

; <label>:105:                                    ; preds = %100
  %106 = load %struct.fsys_namenode*, %struct.fsys_namenode** %9, align 8, !dbg !599
  %107 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %106, i32 0, i32 3, !dbg !600
  %108 = load %struct.fsys_diversion*, %struct.fsys_diversion** %107, align 8, !dbg !600
  %109 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %108, i32 0, i32 0, !dbg !601
  %110 = load %struct.fsys_namenode*, %struct.fsys_namenode** %109, align 8, !dbg !601
  %111 = icmp ne %struct.fsys_namenode* %110, null, !dbg !599
  br i1 %111, label %112, label %142, !dbg !602

; <label>:112:                                    ; preds = %105
  %113 = load %struct.fsys_namenode*, %struct.fsys_namenode** %9, align 8, !dbg !603
  %114 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %113, i32 0, i32 3, !dbg !604
  %115 = load %struct.fsys_diversion*, %struct.fsys_diversion** %114, align 8, !dbg !604
  %116 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %115, i32 0, i32 0, !dbg !605
  %117 = load %struct.fsys_namenode*, %struct.fsys_namenode** %116, align 8, !dbg !605
  %118 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %117, i32 0, i32 1, !dbg !606
  %119 = load i8*, i8** %118, align 8, !dbg !606
  %120 = load i8*, i8** @opt_divertto, align 8, !dbg !607
  %121 = call i32 @strcmp(i8* %119, i8* %120) #10, !dbg !608
  %122 = icmp eq i32 %121, 0, !dbg !609
  br i1 %122, label %123, label %142, !dbg !610

; <label>:123:                                    ; preds = %112
  %124 = load %struct.fsys_namenode*, %struct.fsys_namenode** %9, align 8, !dbg !611
  %125 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %124, i32 0, i32 3, !dbg !612
  %126 = load %struct.fsys_diversion*, %struct.fsys_diversion** %125, align 8, !dbg !612
  %127 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %126, i32 0, i32 2, !dbg !613
  %128 = load %struct.pkgset*, %struct.pkgset** %127, align 8, !dbg !613
  %129 = load %struct.pkgset*, %struct.pkgset** %11, align 8, !dbg !614
  %130 = icmp eq %struct.pkgset* %128, %129, !dbg !615
  br i1 %130, label %131, label %142, !dbg !616

; <label>:131:                                    ; preds = %123
  %132 = load i32, i32* @opt_verbose, align 4, !dbg !618
  %133 = icmp sgt i32 %132, 0, !dbg !621
  br i1 %133, label %134, label %141, !dbg !622

; <label>:134:                                    ; preds = %131
  %135 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0)) #9, !dbg !623
  %136 = load %struct.fsys_namenode*, %struct.fsys_namenode** %9, align 8, !dbg !624
  %137 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %136, i32 0, i32 3, !dbg !625
  %138 = load %struct.fsys_diversion*, %struct.fsys_diversion** %137, align 8, !dbg !625
  %139 = call i8* @diversion_describe(%struct.fsys_diversion* %138), !dbg !626
  %140 = call i32 (i8*, ...) @printf(i8* %135, i8* %139), !dbg !627
  br label %141, !dbg !629

; <label>:141:                                    ; preds = %134, %131
  store i32 0, i32* %2, align 4, !dbg !630
  br label %242, !dbg !630

; <label>:142:                                    ; preds = %123, %112, %105, %100, %89, %82, %77
  %143 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i32 0, i32 0)) #9, !dbg !631
  %144 = load i8*, i8** %4, align 8, !dbg !632
  %145 = call i8* @diversion_current(i8* %144), !dbg !633
  %146 = load %struct.fsys_namenode*, %struct.fsys_namenode** %9, align 8, !dbg !634
  %147 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %146, i32 0, i32 3, !dbg !635
  %148 = load %struct.fsys_diversion*, %struct.fsys_diversion** %147, align 8, !dbg !635
  %149 = icmp ne %struct.fsys_diversion* %148, null, !dbg !634
  br i1 %149, label %150, label %155, !dbg !634

; <label>:150:                                    ; preds = %142
  %151 = load %struct.fsys_namenode*, %struct.fsys_namenode** %9, align 8, !dbg !636
  %152 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %151, i32 0, i32 3, !dbg !637
  %153 = load %struct.fsys_diversion*, %struct.fsys_diversion** %152, align 8, !dbg !637
  %154 = call i8* @diversion_describe(%struct.fsys_diversion* %153), !dbg !638
  br label %160, !dbg !639

; <label>:155:                                    ; preds = %142
  %156 = load %struct.fsys_namenode*, %struct.fsys_namenode** %10, align 8, !dbg !641
  %157 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %156, i32 0, i32 3, !dbg !642
  %158 = load %struct.fsys_diversion*, %struct.fsys_diversion** %157, align 8, !dbg !642
  %159 = call i8* @diversion_describe(%struct.fsys_diversion* %158), !dbg !643
  br label %160, !dbg !644

; <label>:160:                                    ; preds = %155, %150
  %161 = phi i8* [ %154, %150 ], [ %159, %155 ], !dbg !645
  call void (i8*, ...) @ohshit(i8* %143, i8* %145, i8* %161) #11, !dbg !647
  unreachable, !dbg !647

; <label>:162:                                    ; preds = %72
  %163 = call i8* @nfmalloc(i64 32), !dbg !648
  %164 = bitcast i8* %163 to %struct.fsys_diversion*, !dbg !648
  store %struct.fsys_diversion* %164, %struct.fsys_diversion** %7, align 8, !dbg !649
  %165 = call i8* @nfmalloc(i64 32), !dbg !650
  %166 = bitcast i8* %165 to %struct.fsys_diversion*, !dbg !650
  store %struct.fsys_diversion* %166, %struct.fsys_diversion** %8, align 8, !dbg !651
  %167 = load %struct.fsys_namenode*, %struct.fsys_namenode** %9, align 8, !dbg !652
  %168 = load %struct.fsys_diversion*, %struct.fsys_diversion** %8, align 8, !dbg !653
  %169 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %168, i32 0, i32 1, !dbg !654
  store %struct.fsys_namenode* %167, %struct.fsys_namenode** %169, align 8, !dbg !655
  %170 = load %struct.fsys_diversion*, %struct.fsys_diversion** %7, align 8, !dbg !656
  %171 = load %struct.fsys_diversion*, %struct.fsys_diversion** %8, align 8, !dbg !657
  %172 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %171, i32 0, i32 1, !dbg !658
  %173 = load %struct.fsys_namenode*, %struct.fsys_namenode** %172, align 8, !dbg !658
  %174 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %173, i32 0, i32 3, !dbg !659
  store %struct.fsys_diversion* %170, %struct.fsys_diversion** %174, align 8, !dbg !660
  %175 = load %struct.fsys_diversion*, %struct.fsys_diversion** %8, align 8, !dbg !661
  %176 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %175, i32 0, i32 0, !dbg !662
  store %struct.fsys_namenode* null, %struct.fsys_namenode** %176, align 8, !dbg !663
  %177 = load %struct.pkgset*, %struct.pkgset** %11, align 8, !dbg !664
  %178 = load %struct.fsys_diversion*, %struct.fsys_diversion** %8, align 8, !dbg !665
  %179 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %178, i32 0, i32 2, !dbg !666
  store %struct.pkgset* %177, %struct.pkgset** %179, align 8, !dbg !667
  %180 = load %struct.fsys_namenode*, %struct.fsys_namenode** %10, align 8, !dbg !668
  %181 = load %struct.fsys_diversion*, %struct.fsys_diversion** %7, align 8, !dbg !669
  %182 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %181, i32 0, i32 0, !dbg !670
  store %struct.fsys_namenode* %180, %struct.fsys_namenode** %182, align 8, !dbg !671
  %183 = load %struct.fsys_diversion*, %struct.fsys_diversion** %8, align 8, !dbg !672
  %184 = load %struct.fsys_diversion*, %struct.fsys_diversion** %7, align 8, !dbg !673
  %185 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %184, i32 0, i32 0, !dbg !674
  %186 = load %struct.fsys_namenode*, %struct.fsys_namenode** %185, align 8, !dbg !674
  %187 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %186, i32 0, i32 3, !dbg !675
  store %struct.fsys_diversion* %183, %struct.fsys_diversion** %187, align 8, !dbg !676
  %188 = load %struct.fsys_diversion*, %struct.fsys_diversion** %7, align 8, !dbg !677
  %189 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %188, i32 0, i32 1, !dbg !678
  store %struct.fsys_namenode* null, %struct.fsys_namenode** %189, align 8, !dbg !679
  %190 = load %struct.pkgset*, %struct.pkgset** %11, align 8, !dbg !680
  %191 = load %struct.fsys_diversion*, %struct.fsys_diversion** %7, align 8, !dbg !681
  %192 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %191, i32 0, i32 2, !dbg !682
  store %struct.pkgset* %190, %struct.pkgset** %192, align 8, !dbg !683
  %193 = load i32, i32* @opt_verbose, align 4, !dbg !684
  %194 = icmp sgt i32 %193, 0, !dbg !686
  br i1 %194, label %195, label %200, !dbg !687

; <label>:195:                                    ; preds = %162
  %196 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0)) #9, !dbg !688
  %197 = load %struct.fsys_diversion*, %struct.fsys_diversion** %7, align 8, !dbg !689
  %198 = call i8* @diversion_describe(%struct.fsys_diversion* %197), !dbg !690
  %199 = call i32 (i8*, ...) @printf(i8* %196, i8* %198), !dbg !692
  br label %200, !dbg !694

; <label>:200:                                    ; preds = %195, %162
  %201 = load i32, i32* @opt_rename, align 4, !dbg !695
  %202 = icmp ne i32 %201, 0, !dbg !695
  br i1 %202, label %203, label %206, !dbg !697

; <label>:203:                                    ; preds = %200
  %204 = call zeroext i1 @check_rename(%struct.file* %5, %struct.file* %6), !dbg !698
  %205 = zext i1 %204 to i32, !dbg !698
  store i32 %205, i32* @opt_rename, align 4, !dbg !699
  br label %206, !dbg !700

; <label>:206:                                    ; preds = %203, %200
  %207 = load i32, i32* @opt_rename, align 4, !dbg !701
  %208 = icmp ne i32 %207, 0, !dbg !701
  br i1 %208, label %209, label %224, !dbg !703

; <label>:209:                                    ; preds = %206
  %210 = load %struct.pkgset*, %struct.pkgset** %11, align 8, !dbg !704
  %211 = load %struct.fsys_namenode*, %struct.fsys_namenode** %9, align 8, !dbg !706
  %212 = call zeroext i1 @diversion_is_owned_by_self(%struct.pkgset* %210, %struct.fsys_namenode* %211), !dbg !707
  br i1 %212, label %213, label %224, !dbg !708

; <label>:213:                                    ; preds = %209
  %214 = load i32, i32* @opt_verbose, align 4, !dbg !709
  %215 = icmp sgt i32 %214, 0, !dbg !712
  br i1 %215, label %216, label %223, !dbg !713

; <label>:216:                                    ; preds = %213
  %217 = call i8* @gettext(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.27, i32 0, i32 0)) #9, !dbg !714
  %218 = load i8*, i8** %4, align 8, !dbg !715
  %219 = load %struct.pkgset*, %struct.pkgset** %11, align 8, !dbg !716
  %220 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %219, i32 0, i32 1, !dbg !717
  %221 = load i8*, i8** %220, align 8, !dbg !717
  %222 = call i32 (i8*, ...) @printf(i8* %217, i8* %218, i8* %221), !dbg !718
  br label %223, !dbg !720

; <label>:223:                                    ; preds = %216, %213
  store i32 0, i32* @opt_rename, align 4, !dbg !721
  br label %224, !dbg !722

; <label>:224:                                    ; preds = %223, %209, %206
  %225 = load i32, i32* @opt_rename, align 4, !dbg !723
  %226 = icmp ne i32 %225, 0, !dbg !723
  br i1 %226, label %227, label %233, !dbg !725

; <label>:227:                                    ; preds = %224
  %228 = load %struct.fsys_namenode*, %struct.fsys_namenode** %9, align 8, !dbg !726
  %229 = call zeroext i1 @diversion_is_essential(%struct.fsys_namenode* %228), !dbg !728
  br i1 %229, label %230, label %233, !dbg !729

; <label>:230:                                    ; preds = %227
  %231 = call i8* @gettext(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.28, i32 0, i32 0)) #9, !dbg !730
  %232 = load i8*, i8** %4, align 8, !dbg !731
  call void (i8*, ...) @warning(i8* %231, i8* %232), !dbg !732
  br label %233, !dbg !733

; <label>:233:                                    ; preds = %230, %227, %224
  %234 = load i32, i32* @opt_test, align 4, !dbg !734
  %235 = icmp ne i32 %234, 0, !dbg !734
  br i1 %235, label %241, label %236, !dbg !736

; <label>:236:                                    ; preds = %233
  call void @divertdb_write(), !dbg !737
  %237 = load i32, i32* @opt_rename, align 4, !dbg !739
  %238 = icmp ne i32 %237, 0, !dbg !739
  br i1 %238, label %239, label %240, !dbg !741

; <label>:239:                                    ; preds = %236
  call void @file_rename(%struct.file* %5, %struct.file* %6), !dbg !742
  br label %240, !dbg !742

; <label>:240:                                    ; preds = %239, %236
  br label %241, !dbg !743

; <label>:241:                                    ; preds = %240, %233
  store i32 0, i32* %2, align 4, !dbg !744
  br label %242, !dbg !744

; <label>:242:                                    ; preds = %241, %141
  %243 = load i32, i32* %2, align 4, !dbg !745
  ret i32 %243, !dbg !745
}

; Function Attrs: nounwind uwtable
define internal i32 @diversion_remove(i8**) #0 !dbg !746 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.fsys_namenode*, align 8
  %6 = alloca %struct.fsys_diversion*, align 8
  %7 = alloca %struct.fsys_diversion*, align 8
  %8 = alloca %struct.file, align 8
  %9 = alloca %struct.file, align 8
  %10 = alloca %struct.pkgset*, align 8
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !747, metadata !420), !dbg !748
  call void @llvm.dbg.declare(metadata i8** %4, metadata !749, metadata !420), !dbg !750
  %11 = load i8**, i8*** %3, align 8, !dbg !751
  %12 = getelementptr inbounds i8*, i8** %11, i64 0, !dbg !751
  %13 = load i8*, i8** %12, align 8, !dbg !751
  store i8* %13, i8** %4, align 8, !dbg !750
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %5, metadata !752, metadata !420), !dbg !753
  call void @llvm.dbg.declare(metadata %struct.fsys_diversion** %6, metadata !754, metadata !420), !dbg !755
  call void @llvm.dbg.declare(metadata %struct.fsys_diversion** %7, metadata !756, metadata !420), !dbg !757
  call void @llvm.dbg.declare(metadata %struct.file* %8, metadata !758, metadata !420), !dbg !759
  call void @llvm.dbg.declare(metadata %struct.file* %9, metadata !760, metadata !420), !dbg !761
  call void @llvm.dbg.declare(metadata %struct.pkgset** %10, metadata !762, metadata !420), !dbg !763
  call void @opt_rename_setup(), !dbg !764
  %14 = load i8*, i8** %4, align 8, !dbg !765
  %15 = icmp ne i8* %14, null, !dbg !765
  br i1 %15, label %16, label %21, !dbg !767

; <label>:16:                                     ; preds = %1
  %17 = load i8**, i8*** %3, align 8, !dbg !768
  %18 = getelementptr inbounds i8*, i8** %17, i64 1, !dbg !768
  %19 = load i8*, i8** %18, align 8, !dbg !768
  %20 = icmp ne i8* %19, null, !dbg !768
  br i1 %20, label %21, label %26, !dbg !770

; <label>:21:                                     ; preds = %16, %1
  %22 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i32 0, i32 0)) #9, !dbg !771
  %23 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !772
  %24 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %23, i32 0, i32 0, !dbg !773
  %25 = load i8*, i8** %24, align 8, !dbg !773
  call void (i8*, ...) @badusage(i8* %22, i8* %25) #11, !dbg !774
  unreachable, !dbg !775

; <label>:26:                                     ; preds = %16
  %27 = load i8*, i8** %4, align 8, !dbg !776
  call void @diversion_check_filename(i8* %27), !dbg !777
  %28 = load i8*, i8** %4, align 8, !dbg !778
  %29 = call %struct.fsys_namenode* @fsys_hash_find_node(i8* %28, i32 2), !dbg !779
  store %struct.fsys_namenode* %29, %struct.fsys_namenode** %5, align 8, !dbg !780
  %30 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !781
  %31 = icmp eq %struct.fsys_namenode* %30, null, !dbg !783
  br i1 %31, label %44, label %32, !dbg !784

; <label>:32:                                     ; preds = %26
  %33 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !785
  %34 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %33, i32 0, i32 3, !dbg !787
  %35 = load %struct.fsys_diversion*, %struct.fsys_diversion** %34, align 8, !dbg !787
  %36 = icmp eq %struct.fsys_diversion* %35, null, !dbg !788
  br i1 %36, label %44, label %37, !dbg !789

; <label>:37:                                     ; preds = %32
  %38 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !790
  %39 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %38, i32 0, i32 3, !dbg !791
  %40 = load %struct.fsys_diversion*, %struct.fsys_diversion** %39, align 8, !dbg !791
  %41 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %40, i32 0, i32 0, !dbg !792
  %42 = load %struct.fsys_namenode*, %struct.fsys_namenode** %41, align 8, !dbg !792
  %43 = icmp eq %struct.fsys_namenode* %42, null, !dbg !793
  br i1 %43, label %44, label %53, !dbg !794

; <label>:44:                                     ; preds = %37, %32, %26
  %45 = load i32, i32* @opt_verbose, align 4, !dbg !796
  %46 = icmp sgt i32 %45, 0, !dbg !799
  br i1 %46, label %47, label %52, !dbg !800

; <label>:47:                                     ; preds = %44
  %48 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.54, i32 0, i32 0)) #9, !dbg !801
  %49 = load i8*, i8** %4, align 8, !dbg !802
  %50 = call i8* @diversion_current(i8* %49), !dbg !803
  %51 = call i32 (i8*, ...) @printf(i8* %48, i8* %50), !dbg !804
  br label %52, !dbg !806

; <label>:52:                                     ; preds = %47, %44
  store i32 0, i32* %2, align 4, !dbg !807
  br label %158, !dbg !807

; <label>:53:                                     ; preds = %37
  %54 = load i8*, i8** @opt_pkgname, align 8, !dbg !808
  %55 = icmp eq i8* %54, null, !dbg !810
  br i1 %55, label %56, label %57, !dbg !811

; <label>:56:                                     ; preds = %53
  store %struct.pkgset* null, %struct.pkgset** %10, align 8, !dbg !812
  br label %60, !dbg !813

; <label>:57:                                     ; preds = %53
  %58 = load i8*, i8** @opt_pkgname, align 8, !dbg !814
  %59 = call %struct.pkgset* @pkg_hash_find_set(i8* %58), !dbg !815
  store %struct.pkgset* %59, %struct.pkgset** %10, align 8, !dbg !816
  br label %60

; <label>:60:                                     ; preds = %57, %56
  %61 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !817
  %62 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %61, i32 0, i32 3, !dbg !818
  %63 = load %struct.fsys_diversion*, %struct.fsys_diversion** %62, align 8, !dbg !818
  store %struct.fsys_diversion* %63, %struct.fsys_diversion** %6, align 8, !dbg !819
  %64 = load %struct.fsys_diversion*, %struct.fsys_diversion** %6, align 8, !dbg !820
  %65 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %64, i32 0, i32 0, !dbg !821
  %66 = load %struct.fsys_namenode*, %struct.fsys_namenode** %65, align 8, !dbg !821
  %67 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %66, i32 0, i32 3, !dbg !822
  %68 = load %struct.fsys_diversion*, %struct.fsys_diversion** %67, align 8, !dbg !822
  store %struct.fsys_diversion* %68, %struct.fsys_diversion** %7, align 8, !dbg !823
  %69 = load i8*, i8** @opt_divertto, align 8, !dbg !824
  %70 = icmp ne i8* %69, null, !dbg !826
  br i1 %70, label %71, label %86, !dbg !827

; <label>:71:                                     ; preds = %60
  %72 = load i8*, i8** @opt_divertto, align 8, !dbg !828
  %73 = load %struct.fsys_diversion*, %struct.fsys_diversion** %6, align 8, !dbg !829
  %74 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %73, i32 0, i32 0, !dbg !830
  %75 = load %struct.fsys_namenode*, %struct.fsys_namenode** %74, align 8, !dbg !830
  %76 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %75, i32 0, i32 1, !dbg !831
  %77 = load i8*, i8** %76, align 8, !dbg !831
  %78 = call i32 @strcmp(i8* %72, i8* %77) #10, !dbg !832
  %79 = icmp ne i32 %78, 0, !dbg !833
  br i1 %79, label %80, label %86, !dbg !834

; <label>:80:                                     ; preds = %71
  %81 = call i8* @gettext(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.55, i32 0, i32 0)) #9, !dbg !836
  %82 = load i8*, i8** %4, align 8, !dbg !837
  %83 = call i8* @diversion_current(i8* %82), !dbg !838
  %84 = load %struct.fsys_diversion*, %struct.fsys_diversion** %6, align 8, !dbg !839
  %85 = call i8* @diversion_describe(%struct.fsys_diversion* %84), !dbg !840
  call void (i8*, ...) @ohshit(i8* %81, i8* %83, i8* %85) #11, !dbg !841
  unreachable, !dbg !843

; <label>:86:                                     ; preds = %71, %60
  %87 = load i8, i8* @opt_pkgname_match_any, align 1, !dbg !844
  %88 = trunc i8 %87 to i1, !dbg !844
  br i1 %88, label %101, label %89, !dbg !846

; <label>:89:                                     ; preds = %86
  %90 = load %struct.pkgset*, %struct.pkgset** %10, align 8, !dbg !847
  %91 = load %struct.fsys_diversion*, %struct.fsys_diversion** %6, align 8, !dbg !849
  %92 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %91, i32 0, i32 2, !dbg !850
  %93 = load %struct.pkgset*, %struct.pkgset** %92, align 8, !dbg !850
  %94 = icmp ne %struct.pkgset* %90, %93, !dbg !851
  br i1 %94, label %95, label %101, !dbg !852

; <label>:95:                                     ; preds = %89
  %96 = call i8* @gettext(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.56, i32 0, i32 0)) #9, !dbg !853
  %97 = load i8*, i8** %4, align 8, !dbg !854
  %98 = call i8* @diversion_current(i8* %97), !dbg !855
  %99 = load %struct.fsys_diversion*, %struct.fsys_diversion** %6, align 8, !dbg !856
  %100 = call i8* @diversion_describe(%struct.fsys_diversion* %99), !dbg !857
  call void (i8*, ...) @ohshit(i8* %96, i8* %98, i8* %100) #11, !dbg !858
  unreachable, !dbg !859

; <label>:101:                                    ; preds = %89, %86
  %102 = load %struct.pkgset*, %struct.pkgset** %10, align 8, !dbg !860
  %103 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !862
  %104 = call zeroext i1 @diversion_is_shared(%struct.pkgset* %102, %struct.fsys_namenode* %103), !dbg !863
  br i1 %104, label %105, label %114, !dbg !864

; <label>:105:                                    ; preds = %101
  %106 = load i32, i32* @opt_verbose, align 4, !dbg !865
  %107 = icmp sgt i32 %106, 0, !dbg !868
  br i1 %107, label %108, label %113, !dbg !869

; <label>:108:                                    ; preds = %105
  %109 = call i8* @gettext(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.57, i32 0, i32 0)) #9, !dbg !870
  %110 = load %struct.fsys_diversion*, %struct.fsys_diversion** %6, align 8, !dbg !871
  %111 = call i8* @diversion_describe(%struct.fsys_diversion* %110), !dbg !872
  %112 = call i32 (i8*, ...) @printf(i8* %109, i8* %111), !dbg !873
  br label %113, !dbg !875

; <label>:113:                                    ; preds = %108, %105
  store i32 0, i32* %2, align 4, !dbg !876
  br label %158, !dbg !876

; <label>:114:                                    ; preds = %101
  %115 = load i32, i32* @opt_verbose, align 4, !dbg !877
  %116 = icmp sgt i32 %115, 0, !dbg !879
  br i1 %116, label %117, label %122, !dbg !880

; <label>:117:                                    ; preds = %114
  %118 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.58, i32 0, i32 0)) #9, !dbg !881
  %119 = load %struct.fsys_diversion*, %struct.fsys_diversion** %6, align 8, !dbg !882
  %120 = call i8* @diversion_describe(%struct.fsys_diversion* %119), !dbg !883
  %121 = call i32 (i8*, ...) @printf(i8* %118, i8* %120), !dbg !885
  br label %122, !dbg !887

; <label>:122:                                    ; preds = %117, %114
  %123 = load %struct.fsys_diversion*, %struct.fsys_diversion** %7, align 8, !dbg !888
  %124 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %123, i32 0, i32 1, !dbg !889
  %125 = load %struct.fsys_namenode*, %struct.fsys_namenode** %124, align 8, !dbg !889
  %126 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %125, i32 0, i32 1, !dbg !890
  %127 = load i8*, i8** %126, align 8, !dbg !890
  call void @file_init(%struct.file* %8, i8* %127), !dbg !891
  %128 = load %struct.fsys_diversion*, %struct.fsys_diversion** %6, align 8, !dbg !892
  %129 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %128, i32 0, i32 0, !dbg !893
  %130 = load %struct.fsys_namenode*, %struct.fsys_namenode** %129, align 8, !dbg !893
  %131 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %130, i32 0, i32 1, !dbg !894
  %132 = load i8*, i8** %131, align 8, !dbg !894
  call void @file_init(%struct.file* %9, i8* %132), !dbg !895
  %133 = load %struct.fsys_diversion*, %struct.fsys_diversion** %6, align 8, !dbg !896
  %134 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %133, i32 0, i32 0, !dbg !897
  %135 = load %struct.fsys_namenode*, %struct.fsys_namenode** %134, align 8, !dbg !897
  %136 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %135, i32 0, i32 3, !dbg !898
  store %struct.fsys_diversion* null, %struct.fsys_diversion** %136, align 8, !dbg !899
  %137 = load %struct.fsys_diversion*, %struct.fsys_diversion** %7, align 8, !dbg !900
  %138 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %137, i32 0, i32 1, !dbg !901
  %139 = load %struct.fsys_namenode*, %struct.fsys_namenode** %138, align 8, !dbg !901
  %140 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %139, i32 0, i32 3, !dbg !902
  store %struct.fsys_diversion* null, %struct.fsys_diversion** %140, align 8, !dbg !903
  %141 = load i32, i32* @opt_rename, align 4, !dbg !904
  %142 = icmp ne i32 %141, 0, !dbg !904
  br i1 %142, label %143, label %146, !dbg !906

; <label>:143:                                    ; preds = %122
  %144 = call zeroext i1 @check_rename(%struct.file* %9, %struct.file* %8), !dbg !907
  %145 = zext i1 %144 to i32, !dbg !907
  store i32 %145, i32* @opt_rename, align 4, !dbg !908
  br label %146, !dbg !909

; <label>:146:                                    ; preds = %143, %122
  %147 = load i32, i32* @opt_rename, align 4, !dbg !910
  %148 = icmp ne i32 %147, 0, !dbg !910
  br i1 %148, label %149, label %153, !dbg !912

; <label>:149:                                    ; preds = %146
  %150 = load i32, i32* @opt_test, align 4, !dbg !913
  %151 = icmp ne i32 %150, 0, !dbg !913
  br i1 %151, label %153, label %152, !dbg !915

; <label>:152:                                    ; preds = %149
  call void @file_rename(%struct.file* %9, %struct.file* %8), !dbg !916
  br label %153, !dbg !916

; <label>:153:                                    ; preds = %152, %149, %146
  %154 = load i32, i32* @opt_test, align 4, !dbg !917
  %155 = icmp ne i32 %154, 0, !dbg !917
  br i1 %155, label %157, label %156, !dbg !919

; <label>:156:                                    ; preds = %153
  call void @divertdb_write(), !dbg !920
  br label %157, !dbg !920

; <label>:157:                                    ; preds = %156, %153
  store i32 0, i32* %2, align 4, !dbg !921
  br label %158, !dbg !921

; <label>:158:                                    ; preds = %157, %113, %52
  %159 = load i32, i32* %2, align 4, !dbg !922
  ret i32 %159, !dbg !922
}

; Function Attrs: nounwind uwtable
define internal i32 @diversion_list(i8**) #0 !dbg !923 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.fsys_hash_iter*, align 8
  %4 = alloca %struct.fsys_namenode*, align 8
  %5 = alloca %struct.glob_node*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.glob_node*, align 8
  %8 = alloca %struct.fsys_diversion*, align 8
  %9 = alloca %struct.fsys_diversion*, align 8
  %10 = alloca i8*, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !924, metadata !420), !dbg !925
  call void @llvm.dbg.declare(metadata %struct.fsys_hash_iter** %3, metadata !926, metadata !420), !dbg !929
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %4, metadata !930, metadata !420), !dbg !931
  call void @llvm.dbg.declare(metadata %struct.glob_node** %5, metadata !932, metadata !420), !dbg !939
  store %struct.glob_node* null, %struct.glob_node** %5, align 8, !dbg !939
  call void @llvm.dbg.declare(metadata i8** %6, metadata !940, metadata !420), !dbg !941
  br label %11, !dbg !942

; <label>:11:                                     ; preds = %16, %1
  %12 = load i8**, i8*** %2, align 8, !dbg !943
  %13 = getelementptr inbounds i8*, i8** %12, i32 1, !dbg !943
  store i8** %13, i8*** %2, align 8, !dbg !943
  %14 = load i8*, i8** %12, align 8, !dbg !945
  store i8* %14, i8** %6, align 8, !dbg !946
  %15 = icmp ne i8* %14, null, !dbg !947
  br i1 %15, label %16, label %19, !dbg !947

; <label>:16:                                     ; preds = %11
  %17 = load i8*, i8** %6, align 8, !dbg !948
  %18 = call i8* @m_strdup(i8* %17), !dbg !949
  call void @glob_list_prepend(%struct.glob_node** %5, i8* %18), !dbg !950
  br label %11, !dbg !951, !llvm.loop !953

; <label>:19:                                     ; preds = %11
  %20 = load %struct.glob_node*, %struct.glob_node** %5, align 8, !dbg !954
  %21 = icmp eq %struct.glob_node* %20, null, !dbg !956
  br i1 %21, label %22, label %24, !dbg !957

; <label>:22:                                     ; preds = %19
  %23 = call i8* @m_strdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i32 0, i32 0)), !dbg !958
  call void @glob_list_prepend(%struct.glob_node** %5, i8* %23), !dbg !959
  br label %24, !dbg !961

; <label>:24:                                     ; preds = %22, %19
  %25 = call %struct.fsys_hash_iter* @fsys_hash_iter_new(), !dbg !962
  store %struct.fsys_hash_iter* %25, %struct.fsys_hash_iter** %3, align 8, !dbg !963
  br label %26, !dbg !964

; <label>:26:                                     ; preds = %92, %41, %24
  %27 = load %struct.fsys_hash_iter*, %struct.fsys_hash_iter** %3, align 8, !dbg !965
  %28 = call %struct.fsys_namenode* @fsys_hash_iter_next(%struct.fsys_hash_iter* %27), !dbg !966
  store %struct.fsys_namenode* %28, %struct.fsys_namenode** %4, align 8, !dbg !967
  %29 = icmp ne %struct.fsys_namenode* %28, null, !dbg !968
  br i1 %29, label %30, label %93, !dbg !968

; <label>:30:                                     ; preds = %26
  call void @llvm.dbg.declare(metadata %struct.glob_node** %7, metadata !969, metadata !420), !dbg !971
  call void @llvm.dbg.declare(metadata %struct.fsys_diversion** %8, metadata !972, metadata !420), !dbg !973
  %31 = load %struct.fsys_namenode*, %struct.fsys_namenode** %4, align 8, !dbg !974
  %32 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %31, i32 0, i32 3, !dbg !975
  %33 = load %struct.fsys_diversion*, %struct.fsys_diversion** %32, align 8, !dbg !975
  store %struct.fsys_diversion* %33, %struct.fsys_diversion** %8, align 8, !dbg !973
  call void @llvm.dbg.declare(metadata %struct.fsys_diversion** %9, metadata !976, metadata !420), !dbg !977
  call void @llvm.dbg.declare(metadata i8** %10, metadata !978, metadata !420), !dbg !979
  %34 = load %struct.fsys_diversion*, %struct.fsys_diversion** %8, align 8, !dbg !980
  %35 = icmp eq %struct.fsys_diversion* %34, null, !dbg !982
  br i1 %35, label %41, label %36, !dbg !983

; <label>:36:                                     ; preds = %30
  %37 = load %struct.fsys_diversion*, %struct.fsys_diversion** %8, align 8, !dbg !984
  %38 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %37, i32 0, i32 0, !dbg !986
  %39 = load %struct.fsys_namenode*, %struct.fsys_namenode** %38, align 8, !dbg !986
  %40 = icmp eq %struct.fsys_namenode* %39, null, !dbg !987
  br i1 %40, label %41, label %42, !dbg !988

; <label>:41:                                     ; preds = %36, %30
  br label %26, !dbg !989, !llvm.loop !990

; <label>:42:                                     ; preds = %36
  %43 = load %struct.fsys_diversion*, %struct.fsys_diversion** %8, align 8, !dbg !991
  %44 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %43, i32 0, i32 0, !dbg !992
  %45 = load %struct.fsys_namenode*, %struct.fsys_namenode** %44, align 8, !dbg !992
  %46 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %45, i32 0, i32 3, !dbg !993
  %47 = load %struct.fsys_diversion*, %struct.fsys_diversion** %46, align 8, !dbg !993
  store %struct.fsys_diversion* %47, %struct.fsys_diversion** %9, align 8, !dbg !994
  %48 = load %struct.fsys_diversion*, %struct.fsys_diversion** %8, align 8, !dbg !995
  %49 = call i8* @diversion_pkg_name(%struct.fsys_diversion* %48), !dbg !996
  store i8* %49, i8** %10, align 8, !dbg !997
  %50 = load %struct.glob_node*, %struct.glob_node** %5, align 8, !dbg !998
  store %struct.glob_node* %50, %struct.glob_node** %7, align 8, !dbg !1000
  br label %51, !dbg !1001

; <label>:51:                                     ; preds = %88, %42
  %52 = load %struct.glob_node*, %struct.glob_node** %7, align 8, !dbg !1002
  %53 = icmp ne %struct.glob_node* %52, null, !dbg !1005
  br i1 %53, label %54, label %92, !dbg !1005

; <label>:54:                                     ; preds = %51
  %55 = load %struct.glob_node*, %struct.glob_node** %7, align 8, !dbg !1006
  %56 = getelementptr inbounds %struct.glob_node, %struct.glob_node* %55, i32 0, i32 1, !dbg !1009
  %57 = load i8*, i8** %56, align 8, !dbg !1009
  %58 = load i8*, i8** %10, align 8, !dbg !1010
  %59 = call i32 @fnmatch(i8* %57, i8* %58, i32 0), !dbg !1011
  %60 = icmp eq i32 %59, 0, !dbg !1012
  br i1 %60, label %83, label %61, !dbg !1013

; <label>:61:                                     ; preds = %54
  %62 = load %struct.glob_node*, %struct.glob_node** %7, align 8, !dbg !1014
  %63 = getelementptr inbounds %struct.glob_node, %struct.glob_node* %62, i32 0, i32 1, !dbg !1015
  %64 = load i8*, i8** %63, align 8, !dbg !1015
  %65 = load %struct.fsys_diversion*, %struct.fsys_diversion** %8, align 8, !dbg !1016
  %66 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %65, i32 0, i32 0, !dbg !1017
  %67 = load %struct.fsys_namenode*, %struct.fsys_namenode** %66, align 8, !dbg !1017
  %68 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %67, i32 0, i32 1, !dbg !1018
  %69 = load i8*, i8** %68, align 8, !dbg !1018
  %70 = call i32 @fnmatch(i8* %64, i8* %69, i32 0), !dbg !1019
  %71 = icmp eq i32 %70, 0, !dbg !1020
  br i1 %71, label %83, label %72, !dbg !1021

; <label>:72:                                     ; preds = %61
  %73 = load %struct.glob_node*, %struct.glob_node** %7, align 8, !dbg !1022
  %74 = getelementptr inbounds %struct.glob_node, %struct.glob_node* %73, i32 0, i32 1, !dbg !1023
  %75 = load i8*, i8** %74, align 8, !dbg !1023
  %76 = load %struct.fsys_diversion*, %struct.fsys_diversion** %9, align 8, !dbg !1024
  %77 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %76, i32 0, i32 1, !dbg !1025
  %78 = load %struct.fsys_namenode*, %struct.fsys_namenode** %77, align 8, !dbg !1025
  %79 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %78, i32 0, i32 1, !dbg !1026
  %80 = load i8*, i8** %79, align 8, !dbg !1026
  %81 = call i32 @fnmatch(i8* %75, i8* %80, i32 0), !dbg !1027
  %82 = icmp eq i32 %81, 0, !dbg !1028
  br i1 %82, label %83, label %87, !dbg !1029

; <label>:83:                                     ; preds = %72, %61, %54
  %84 = load %struct.fsys_diversion*, %struct.fsys_diversion** %8, align 8, !dbg !1031
  %85 = call i8* @diversion_describe(%struct.fsys_diversion* %84), !dbg !1033
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.61, i32 0, i32 0), i8* %85), !dbg !1034
  br label %92, !dbg !1036

; <label>:87:                                     ; preds = %72
  br label %88, !dbg !1037

; <label>:88:                                     ; preds = %87
  %89 = load %struct.glob_node*, %struct.glob_node** %7, align 8, !dbg !1038
  %90 = getelementptr inbounds %struct.glob_node, %struct.glob_node* %89, i32 0, i32 0, !dbg !1040
  %91 = load %struct.glob_node*, %struct.glob_node** %90, align 8, !dbg !1040
  store %struct.glob_node* %91, %struct.glob_node** %7, align 8, !dbg !1041
  br label %51, !dbg !1042, !llvm.loop !1043

; <label>:92:                                     ; preds = %83, %51
  br label %26, !dbg !1045, !llvm.loop !990

; <label>:93:                                     ; preds = %26
  %94 = load %struct.fsys_hash_iter*, %struct.fsys_hash_iter** %3, align 8, !dbg !1046
  call void @fsys_hash_iter_free(%struct.fsys_hash_iter* %94), !dbg !1047
  %95 = load %struct.glob_node*, %struct.glob_node** %5, align 8, !dbg !1048
  call void @glob_list_free(%struct.glob_node* %95), !dbg !1049
  ret i32 0, !dbg !1050
}

; Function Attrs: nounwind uwtable
define internal i32 @diversion_listpackage(i8**) #0 !dbg !1051 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.fsys_namenode*, align 8
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !1052, metadata !420), !dbg !1053
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1054, metadata !420), !dbg !1055
  %6 = load i8**, i8*** %3, align 8, !dbg !1056
  %7 = getelementptr inbounds i8*, i8** %6, i64 0, !dbg !1056
  %8 = load i8*, i8** %7, align 8, !dbg !1056
  store i8* %8, i8** %4, align 8, !dbg !1055
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %5, metadata !1057, metadata !420), !dbg !1058
  %9 = load i8*, i8** %4, align 8, !dbg !1059
  %10 = icmp ne i8* %9, null, !dbg !1059
  br i1 %10, label %11, label %16, !dbg !1061

; <label>:11:                                     ; preds = %1
  %12 = load i8**, i8*** %3, align 8, !dbg !1062
  %13 = getelementptr inbounds i8*, i8** %12, i64 1, !dbg !1062
  %14 = load i8*, i8** %13, align 8, !dbg !1062
  %15 = icmp ne i8* %14, null, !dbg !1062
  br i1 %15, label %16, label %21, !dbg !1064

; <label>:16:                                     ; preds = %11, %1
  %17 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i32 0, i32 0)) #9, !dbg !1065
  %18 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !1066
  %19 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %18, i32 0, i32 0, !dbg !1067
  %20 = load i8*, i8** %19, align 8, !dbg !1067
  call void (i8*, ...) @badusage(i8* %17, i8* %20) #11, !dbg !1068
  unreachable, !dbg !1069

; <label>:21:                                     ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !1070
  call void @diversion_check_filename(i8* %22), !dbg !1071
  %23 = load i8*, i8** %4, align 8, !dbg !1072
  %24 = call %struct.fsys_namenode* @fsys_hash_find_node(i8* %23, i32 2), !dbg !1073
  store %struct.fsys_namenode* %24, %struct.fsys_namenode** %5, align 8, !dbg !1074
  %25 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !1075
  %26 = icmp eq %struct.fsys_namenode* %25, null, !dbg !1077
  br i1 %26, label %32, label %27, !dbg !1078

; <label>:27:                                     ; preds = %21
  %28 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !1079
  %29 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %28, i32 0, i32 3, !dbg !1081
  %30 = load %struct.fsys_diversion*, %struct.fsys_diversion** %29, align 8, !dbg !1081
  %31 = icmp eq %struct.fsys_diversion* %30, null, !dbg !1082
  br i1 %31, label %32, label %33, !dbg !1083

; <label>:32:                                     ; preds = %27, %21
  store i32 0, i32* %2, align 4, !dbg !1084
  br label %52, !dbg !1084

; <label>:33:                                     ; preds = %27
  %34 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !1085
  %35 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %34, i32 0, i32 3, !dbg !1087
  %36 = load %struct.fsys_diversion*, %struct.fsys_diversion** %35, align 8, !dbg !1087
  %37 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %36, i32 0, i32 2, !dbg !1088
  %38 = load %struct.pkgset*, %struct.pkgset** %37, align 8, !dbg !1088
  %39 = icmp eq %struct.pkgset* %38, null, !dbg !1089
  br i1 %39, label %40, label %42, !dbg !1090

; <label>:40:                                     ; preds = %33
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i32 0, i32 0)), !dbg !1091
  br label %51, !dbg !1091

; <label>:42:                                     ; preds = %33
  %43 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !1092
  %44 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %43, i32 0, i32 3, !dbg !1093
  %45 = load %struct.fsys_diversion*, %struct.fsys_diversion** %44, align 8, !dbg !1093
  %46 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %45, i32 0, i32 2, !dbg !1094
  %47 = load %struct.pkgset*, %struct.pkgset** %46, align 8, !dbg !1094
  %48 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %47, i32 0, i32 1, !dbg !1095
  %49 = load i8*, i8** %48, align 8, !dbg !1095
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.61, i32 0, i32 0), i8* %49), !dbg !1096
  br label %51

; <label>:51:                                     ; preds = %42, %40
  store i32 0, i32* %2, align 4, !dbg !1097
  br label %52, !dbg !1097

; <label>:52:                                     ; preds = %51, %32
  %53 = load i32, i32* %2, align 4, !dbg !1098
  ret i32 %53, !dbg !1098
}

; Function Attrs: nounwind uwtable
define internal i32 @diversion_truename(i8**) #0 !dbg !1099 {
  %2 = alloca i8**, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.fsys_namenode*, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !1100, metadata !420), !dbg !1101
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1102, metadata !420), !dbg !1103
  %5 = load i8**, i8*** %2, align 8, !dbg !1104
  %6 = getelementptr inbounds i8*, i8** %5, i64 0, !dbg !1104
  %7 = load i8*, i8** %6, align 8, !dbg !1104
  store i8* %7, i8** %3, align 8, !dbg !1103
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %4, metadata !1105, metadata !420), !dbg !1106
  %8 = load i8*, i8** %3, align 8, !dbg !1107
  %9 = icmp ne i8* %8, null, !dbg !1107
  br i1 %9, label %10, label %15, !dbg !1109

; <label>:10:                                     ; preds = %1
  %11 = load i8**, i8*** %2, align 8, !dbg !1110
  %12 = getelementptr inbounds i8*, i8** %11, i64 1, !dbg !1110
  %13 = load i8*, i8** %12, align 8, !dbg !1110
  %14 = icmp ne i8* %13, null, !dbg !1110
  br i1 %14, label %15, label %20, !dbg !1112

; <label>:15:                                     ; preds = %10, %1
  %16 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i32 0, i32 0)) #9, !dbg !1113
  %17 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !1114
  %18 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %17, i32 0, i32 0, !dbg !1115
  %19 = load i8*, i8** %18, align 8, !dbg !1115
  call void (i8*, ...) @badusage(i8* %16, i8* %19) #11, !dbg !1116
  unreachable, !dbg !1117

; <label>:20:                                     ; preds = %10
  %21 = load i8*, i8** %3, align 8, !dbg !1118
  call void @diversion_check_filename(i8* %21), !dbg !1119
  %22 = load i8*, i8** %3, align 8, !dbg !1120
  %23 = call %struct.fsys_namenode* @fsys_hash_find_node(i8* %22, i32 2), !dbg !1121
  store %struct.fsys_namenode* %23, %struct.fsys_namenode** %4, align 8, !dbg !1122
  %24 = load %struct.fsys_namenode*, %struct.fsys_namenode** %4, align 8, !dbg !1123
  %25 = icmp ne %struct.fsys_namenode* %24, null, !dbg !1123
  br i1 %25, label %26, label %47, !dbg !1125

; <label>:26:                                     ; preds = %20
  %27 = load %struct.fsys_namenode*, %struct.fsys_namenode** %4, align 8, !dbg !1126
  %28 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %27, i32 0, i32 3, !dbg !1128
  %29 = load %struct.fsys_diversion*, %struct.fsys_diversion** %28, align 8, !dbg !1128
  %30 = icmp ne %struct.fsys_diversion* %29, null, !dbg !1126
  br i1 %30, label %31, label %47, !dbg !1129

; <label>:31:                                     ; preds = %26
  %32 = load %struct.fsys_namenode*, %struct.fsys_namenode** %4, align 8, !dbg !1130
  %33 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %32, i32 0, i32 3, !dbg !1132
  %34 = load %struct.fsys_diversion*, %struct.fsys_diversion** %33, align 8, !dbg !1132
  %35 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %34, i32 0, i32 0, !dbg !1133
  %36 = load %struct.fsys_namenode*, %struct.fsys_namenode** %35, align 8, !dbg !1133
  %37 = icmp ne %struct.fsys_namenode* %36, null, !dbg !1130
  br i1 %37, label %38, label %47, !dbg !1134

; <label>:38:                                     ; preds = %31
  %39 = load %struct.fsys_namenode*, %struct.fsys_namenode** %4, align 8, !dbg !1135
  %40 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %39, i32 0, i32 3, !dbg !1136
  %41 = load %struct.fsys_diversion*, %struct.fsys_diversion** %40, align 8, !dbg !1136
  %42 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %41, i32 0, i32 0, !dbg !1137
  %43 = load %struct.fsys_namenode*, %struct.fsys_namenode** %42, align 8, !dbg !1137
  %44 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %43, i32 0, i32 1, !dbg !1138
  %45 = load i8*, i8** %44, align 8, !dbg !1138
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.61, i32 0, i32 0), i8* %45), !dbg !1139
  br label %50, !dbg !1139

; <label>:47:                                     ; preds = %31, %26, %20
  %48 = load i8*, i8** %3, align 8, !dbg !1140
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.61, i32 0, i32 0), i8* %48), !dbg !1141
  br label %50

; <label>:50:                                     ; preds = %47, %38
  ret i32 0, !dbg !1142
}

; Function Attrs: nounwind uwtable
define internal void @set_instdir(%struct.cmdinfo*, i8*) #0 !dbg !1143 {
  %3 = alloca %struct.cmdinfo*, align 8
  %4 = alloca i8*, align 8
  store %struct.cmdinfo* %0, %struct.cmdinfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.cmdinfo** %3, metadata !1144, metadata !420), !dbg !1145
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1146, metadata !420), !dbg !1147
  %5 = load i8*, i8** %4, align 8, !dbg !1148
  %6 = call i8* @dpkg_fsys_set_dir(i8* %5), !dbg !1149
  store i8* %6, i8** @instdir, align 8, !dbg !1150
  ret void, !dbg !1151
}

; Function Attrs: nounwind uwtable
define internal void @set_root(%struct.cmdinfo*, i8*) #0 !dbg !1152 {
  %3 = alloca %struct.cmdinfo*, align 8
  %4 = alloca i8*, align 8
  store %struct.cmdinfo* %0, %struct.cmdinfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.cmdinfo** %3, metadata !1153, metadata !420), !dbg !1154
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1155, metadata !420), !dbg !1156
  %5 = load i8*, i8** %4, align 8, !dbg !1157
  %6 = call i8* @dpkg_fsys_set_dir(i8* %5), !dbg !1158
  store i8* %6, i8** @instdir, align 8, !dbg !1159
  %7 = call i8* @dpkg_fsys_get_path(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.63, i32 0, i32 0)), !dbg !1160
  store i8* %7, i8** @admindir, align 8, !dbg !1161
  ret void, !dbg !1162
}

; Function Attrs: nounwind uwtable
define internal void @set_divertto(%struct.cmdinfo*, i8*) #0 !dbg !1163 {
  %3 = alloca %struct.cmdinfo*, align 8
  %4 = alloca i8*, align 8
  store %struct.cmdinfo* %0, %struct.cmdinfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.cmdinfo** %3, metadata !1164, metadata !420), !dbg !1165
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1166, metadata !420), !dbg !1167
  %5 = load i8*, i8** %4, align 8, !dbg !1168
  store i8* %5, i8** @opt_divertto, align 8, !dbg !1169
  %6 = load i8*, i8** @opt_divertto, align 8, !dbg !1170
  %7 = getelementptr inbounds i8, i8* %6, i64 0, !dbg !1170
  %8 = load i8, i8* %7, align 1, !dbg !1170
  %9 = sext i8 %8 to i32, !dbg !1170
  %10 = icmp ne i32 %9, 47, !dbg !1172
  br i1 %10, label %11, label %14, !dbg !1173

; <label>:11:                                     ; preds = %2
  %12 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.30, i32 0, i32 0)) #9, !dbg !1174
  %13 = load i8*, i8** @opt_divertto, align 8, !dbg !1175
  call void (i8*, ...) @badusage(i8* %12, i8* %13) #11, !dbg !1176
  unreachable, !dbg !1178

; <label>:14:                                     ; preds = %2
  %15 = load i8*, i8** @opt_divertto, align 8, !dbg !1179
  %16 = call i8* @strchr(i8* %15, i32 10) #10, !dbg !1181
  %17 = icmp ne i8* %16, null, !dbg !1182
  br i1 %17, label %18, label %20, !dbg !1183

; <label>:18:                                     ; preds = %14
  %19 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.64, i32 0, i32 0)) #9, !dbg !1184
  call void (i8*, ...) @badusage(i8* %19) #11, !dbg !1185
  unreachable, !dbg !1187

; <label>:20:                                     ; preds = %14
  ret void, !dbg !1188
}

; Function Attrs: nounwind uwtable
define internal void @usage(%struct.cmdinfo*, i8*) #0 !dbg !1189 {
  %3 = alloca %struct.cmdinfo*, align 8
  %4 = alloca i8*, align 8
  store %struct.cmdinfo* %0, %struct.cmdinfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.cmdinfo** %3, metadata !1190, metadata !420), !dbg !1191
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1192, metadata !420), !dbg !1193
  %5 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.65, i32 0, i32 0)) #9, !dbg !1194
  %6 = call i8* @dpkg_get_progname(), !dbg !1195
  %7 = call i32 (i8*, ...) @printf(i8* %5, i8* %6), !dbg !1196
  %8 = call i8* @gettext(i8* getelementptr inbounds ([270 x i8], [270 x i8]* @.str.66, i32 0, i32 0)) #9, !dbg !1198
  %9 = call i32 (i8*, ...) @printf(i8* %8), !dbg !1199
  %10 = call i8* @gettext(i8* getelementptr inbounds ([840 x i8], [840 x i8]* @.str.67, i32 0, i32 0)) #9, !dbg !1200
  %11 = call i32 (i8*, ...) @printf(i8* %10), !dbg !1201
  %12 = call i8* @gettext(i8* getelementptr inbounds ([217 x i8], [217 x i8]* @.str.68, i32 0, i32 0)) #9, !dbg !1202
  %13 = call i32 (i8*, ...) @printf(i8* %12), !dbg !1203
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1204
  %15 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.69, i32 0, i32 0)) #9, !dbg !1205
  call void @m_output(%struct._IO_FILE* %14, i8* %15), !dbg !1206
  call void @exit(i32 0) #12, !dbg !1207
  unreachable, !dbg !1207
                                                  ; No predecessors!
  ret void, !dbg !1208
}

; Function Attrs: nounwind uwtable
define internal void @printversion(%struct.cmdinfo*, i8*) #0 !dbg !1209 {
  %3 = alloca %struct.cmdinfo*, align 8
  %4 = alloca i8*, align 8
  store %struct.cmdinfo* %0, %struct.cmdinfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.cmdinfo** %3, metadata !1210, metadata !420), !dbg !1211
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1212, metadata !420), !dbg !1213
  %5 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.70, i32 0, i32 0)) #9, !dbg !1214
  %6 = call i8* @dpkg_get_progname(), !dbg !1215
  %7 = call i32 (i8*, ...) @printf(i8* %5, i8* %6, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.71, i32 0, i32 0)), !dbg !1217
  %8 = call i8* @gettext(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.72, i32 0, i32 0)) #9, !dbg !1219
  %9 = call i32 (i8*, ...) @printf(i8* %8), !dbg !1220
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1221
  %11 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.69, i32 0, i32 0)) #9, !dbg !1222
  call void @m_output(%struct._IO_FILE* %10, i8* %11), !dbg !1223
  call void @exit(i32 0) #12, !dbg !1224
  unreachable, !dbg !1224
                                                  ; No predecessors!
  ret void, !dbg !1225
}

; Function Attrs: nounwind uwtable
define internal void @opt_rename_setup() #0 !dbg !1226 {
  %1 = load i32, i32* @opt_rename, align 4, !dbg !1229
  %2 = icmp sge i32 %1, 0, !dbg !1231
  br i1 %2, label %3, label %4, !dbg !1232

; <label>:3:                                      ; preds = %0
  br label %6, !dbg !1233

; <label>:4:                                      ; preds = %0
  store i32 0, i32* @opt_rename, align 4, !dbg !1234
  %5 = call i8* @gettext(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.29, i32 0, i32 0)) #9, !dbg !1235
  call void (i8*, ...) @warning(i8* %5), !dbg !1236
  br label %6, !dbg !1238

; <label>:6:                                      ; preds = %4, %3
  ret void, !dbg !1239
}

; Function Attrs: noreturn
declare void @badusage(i8*, ...) #4

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

; Function Attrs: nounwind uwtable
define internal void @diversion_check_filename(i8*) #0 !dbg !1240 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1243, metadata !420), !dbg !1244
  %3 = load i8*, i8** %2, align 8, !dbg !1245
  %4 = getelementptr inbounds i8, i8* %3, i64 0, !dbg !1245
  %5 = load i8, i8* %4, align 1, !dbg !1245
  %6 = sext i8 %5 to i32, !dbg !1245
  %7 = icmp ne i32 %6, 47, !dbg !1247
  br i1 %7, label %8, label %11, !dbg !1248

; <label>:8:                                      ; preds = %1
  %9 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.30, i32 0, i32 0)) #9, !dbg !1249
  %10 = load i8*, i8** %2, align 8, !dbg !1250
  call void (i8*, ...) @badusage(i8* %9, i8* %10) #11, !dbg !1251
  unreachable, !dbg !1253

; <label>:11:                                     ; preds = %1
  %12 = load i8*, i8** %2, align 8, !dbg !1254
  %13 = call i8* @strchr(i8* %12, i32 10) #10, !dbg !1256
  %14 = icmp ne i8* %13, null, !dbg !1257
  br i1 %14, label %15, label %17, !dbg !1258

; <label>:15:                                     ; preds = %11
  %16 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.31, i32 0, i32 0)) #9, !dbg !1259
  call void (i8*, ...) @badusage(i8* %16) #11, !dbg !1260
  unreachable, !dbg !1262

; <label>:17:                                     ; preds = %11
  ret void, !dbg !1263
}

; Function Attrs: nounwind uwtable
define internal void @file_init(%struct.file*, i8*) #0 !dbg !1264 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.varbuf, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %3, metadata !1268, metadata !420), !dbg !1269
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1270, metadata !420), !dbg !1271
  call void @llvm.dbg.declare(metadata %struct.varbuf* %5, metadata !1272, metadata !420), !dbg !1273
  %6 = bitcast %struct.varbuf* %5 to i8*, !dbg !1273
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 24, i32 8, i1 false), !dbg !1273
  %7 = load i8*, i8** @instdir, align 8, !dbg !1274
  %8 = load i8*, i8** @instdir, align 8, !dbg !1275
  %9 = call i64 @strlen(i8* %8) #10, !dbg !1276
  call void @varbuf_add_buf(%struct.varbuf* %5, i8* %7, i64 %9), !dbg !1277
  %10 = load i8*, i8** %4, align 8, !dbg !1279
  %11 = load i8*, i8** %4, align 8, !dbg !1280
  %12 = call i64 @strlen(i8* %11) #10, !dbg !1281
  call void @varbuf_add_buf(%struct.varbuf* %5, i8* %10, i64 %12), !dbg !1282
  call void @varbuf_end_str(%struct.varbuf* %5), !dbg !1283
  %13 = call i8* @varbuf_detach(%struct.varbuf* %5), !dbg !1284
  %14 = load %struct.file*, %struct.file** %3, align 8, !dbg !1285
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 0, !dbg !1286
  store i8* %13, i8** %15, align 8, !dbg !1287
  %16 = load %struct.file*, %struct.file** %3, align 8, !dbg !1288
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 1, !dbg !1289
  store i32 0, i32* %17, align 8, !dbg !1290
  ret void, !dbg !1291
}

; Function Attrs: nounwind uwtable
define internal void @file_stat(%struct.file*) #0 !dbg !1292 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %2, metadata !1295, metadata !420), !dbg !1296
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1297, metadata !420), !dbg !1298
  %4 = load %struct.file*, %struct.file** %2, align 8, !dbg !1299
  %5 = getelementptr inbounds %struct.file, %struct.file* %4, i32 0, i32 1, !dbg !1301
  %6 = load i32, i32* %5, align 8, !dbg !1301
  %7 = icmp ne i32 %6, 0, !dbg !1302
  br i1 %7, label %8, label %9, !dbg !1303

; <label>:8:                                      ; preds = %1
  br label %36, !dbg !1304

; <label>:9:                                      ; preds = %1
  %10 = load %struct.file*, %struct.file** %2, align 8, !dbg !1305
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0, !dbg !1306
  %12 = load i8*, i8** %11, align 8, !dbg !1306
  %13 = load %struct.file*, %struct.file** %2, align 8, !dbg !1307
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 2, !dbg !1308
  %15 = call i32 @lstat(i8* %12, %struct.stat* %14) #9, !dbg !1309
  store i32 %15, i32* %3, align 4, !dbg !1310
  %16 = load i32, i32* %3, align 4, !dbg !1311
  %17 = icmp ne i32 %16, 0, !dbg !1311
  br i1 %17, label %18, label %27, !dbg !1313

; <label>:18:                                     ; preds = %9
  %19 = call i32* @__errno_location() #1, !dbg !1314
  %20 = load i32, i32* %19, align 4, !dbg !1316
  %21 = icmp ne i32 %20, 2, !dbg !1317
  br i1 %21, label %22, label %27, !dbg !1318

; <label>:22:                                     ; preds = %18
  %23 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.32, i32 0, i32 0)) #9, !dbg !1319
  %24 = load %struct.file*, %struct.file** %2, align 8, !dbg !1320
  %25 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 0, !dbg !1321
  %26 = load i8*, i8** %25, align 8, !dbg !1321
  call void (i8*, ...) @ohshite(i8* %23, i8* %26) #11, !dbg !1322
  unreachable, !dbg !1323

; <label>:27:                                     ; preds = %18, %9
  %28 = load i32, i32* %3, align 4, !dbg !1324
  %29 = icmp eq i32 %28, 0, !dbg !1326
  br i1 %29, label %30, label %33, !dbg !1327

; <label>:30:                                     ; preds = %27
  %31 = load %struct.file*, %struct.file** %2, align 8, !dbg !1328
  %32 = getelementptr inbounds %struct.file, %struct.file* %31, i32 0, i32 1, !dbg !1329
  store i32 1, i32* %32, align 8, !dbg !1330
  br label %36, !dbg !1328

; <label>:33:                                     ; preds = %27
  %34 = load %struct.file*, %struct.file** %2, align 8, !dbg !1331
  %35 = getelementptr inbounds %struct.file, %struct.file* %34, i32 0, i32 1, !dbg !1332
  store i32 2, i32* %35, align 8, !dbg !1333
  br label %36

; <label>:36:                                     ; preds = %8, %33, %30
  ret void, !dbg !1334
}

declare %struct.fsys_namenode* @fsys_hash_find_node(i8*, i32) #2

declare i8* @str_fmt(i8*, ...) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

declare %struct.pkgset* @pkg_hash_find_set(i8*) #2

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal i8* @diversion_describe(%struct.fsys_diversion*) #0 !dbg !209 {
  %2 = alloca %struct.fsys_diversion*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.fsys_diversion* %0, %struct.fsys_diversion** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.fsys_diversion** %2, metadata !1335, metadata !420), !dbg !1336
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1337, metadata !420), !dbg !1338
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1339, metadata !420), !dbg !1340
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1341, metadata !420), !dbg !1342
  %6 = load %struct.fsys_diversion*, %struct.fsys_diversion** %2, align 8, !dbg !1343
  %7 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %6, i32 0, i32 1, !dbg !1345
  %8 = load %struct.fsys_namenode*, %struct.fsys_namenode** %7, align 8, !dbg !1345
  %9 = icmp ne %struct.fsys_namenode* %8, null, !dbg !1343
  br i1 %9, label %10, label %25, !dbg !1346

; <label>:10:                                     ; preds = %1
  %11 = load %struct.fsys_diversion*, %struct.fsys_diversion** %2, align 8, !dbg !1347
  %12 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %11, i32 0, i32 1, !dbg !1349
  %13 = load %struct.fsys_namenode*, %struct.fsys_namenode** %12, align 8, !dbg !1349
  %14 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %13, i32 0, i32 1, !dbg !1350
  %15 = load i8*, i8** %14, align 8, !dbg !1350
  store i8* %15, i8** %4, align 8, !dbg !1351
  %16 = load %struct.fsys_diversion*, %struct.fsys_diversion** %2, align 8, !dbg !1352
  %17 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %16, i32 0, i32 1, !dbg !1353
  %18 = load %struct.fsys_namenode*, %struct.fsys_namenode** %17, align 8, !dbg !1353
  %19 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %18, i32 0, i32 3, !dbg !1354
  %20 = load %struct.fsys_diversion*, %struct.fsys_diversion** %19, align 8, !dbg !1354
  %21 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %20, i32 0, i32 0, !dbg !1355
  %22 = load %struct.fsys_namenode*, %struct.fsys_namenode** %21, align 8, !dbg !1355
  %23 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %22, i32 0, i32 1, !dbg !1356
  %24 = load i8*, i8** %23, align 8, !dbg !1356
  store i8* %24, i8** %5, align 8, !dbg !1357
  br label %40, !dbg !1358

; <label>:25:                                     ; preds = %1
  %26 = load %struct.fsys_diversion*, %struct.fsys_diversion** %2, align 8, !dbg !1359
  %27 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %26, i32 0, i32 0, !dbg !1361
  %28 = load %struct.fsys_namenode*, %struct.fsys_namenode** %27, align 8, !dbg !1361
  %29 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %28, i32 0, i32 3, !dbg !1362
  %30 = load %struct.fsys_diversion*, %struct.fsys_diversion** %29, align 8, !dbg !1362
  %31 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %30, i32 0, i32 1, !dbg !1363
  %32 = load %struct.fsys_namenode*, %struct.fsys_namenode** %31, align 8, !dbg !1363
  %33 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %32, i32 0, i32 1, !dbg !1364
  %34 = load i8*, i8** %33, align 8, !dbg !1364
  store i8* %34, i8** %4, align 8, !dbg !1365
  %35 = load %struct.fsys_diversion*, %struct.fsys_diversion** %2, align 8, !dbg !1366
  %36 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %35, i32 0, i32 0, !dbg !1367
  %37 = load %struct.fsys_namenode*, %struct.fsys_namenode** %36, align 8, !dbg !1367
  %38 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %37, i32 0, i32 1, !dbg !1368
  %39 = load i8*, i8** %38, align 8, !dbg !1368
  store i8* %39, i8** %5, align 8, !dbg !1369
  br label %40

; <label>:40:                                     ; preds = %25, %10
  %41 = load %struct.fsys_diversion*, %struct.fsys_diversion** %2, align 8, !dbg !1370
  %42 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %41, i32 0, i32 2, !dbg !1372
  %43 = load %struct.pkgset*, %struct.pkgset** %42, align 8, !dbg !1372
  %44 = icmp eq %struct.pkgset* %43, null, !dbg !1373
  br i1 %44, label %45, label %46, !dbg !1374

; <label>:45:                                     ; preds = %40
  store i8* null, i8** %3, align 8, !dbg !1375
  br label %52, !dbg !1376

; <label>:46:                                     ; preds = %40
  %47 = load %struct.fsys_diversion*, %struct.fsys_diversion** %2, align 8, !dbg !1377
  %48 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %47, i32 0, i32 2, !dbg !1378
  %49 = load %struct.pkgset*, %struct.pkgset** %48, align 8, !dbg !1378
  %50 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %49, i32 0, i32 1, !dbg !1379
  %51 = load i8*, i8** %50, align 8, !dbg !1379
  store i8* %51, i8** %3, align 8, !dbg !1380
  br label %52

; <label>:52:                                     ; preds = %46, %45
  %53 = load i8*, i8** %3, align 8, !dbg !1381
  %54 = load i8*, i8** %4, align 8, !dbg !1382
  %55 = load i8*, i8** %5, align 8, !dbg !1383
  %56 = call i8* @varbuf_diversion(%struct.varbuf* @diversion_describe.str, i8* %53, i8* %54, i8* %55), !dbg !1384
  ret i8* %56, !dbg !1385
}

; Function Attrs: noreturn
declare void @ohshit(i8*, ...) #4

; Function Attrs: nounwind uwtable
define internal i8* @diversion_current(i8*) #0 !dbg !401 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1386, metadata !420), !dbg !1387
  %4 = load i8, i8* @opt_pkgname_match_any, align 1, !dbg !1388
  %5 = trunc i8 %4 to i1, !dbg !1388
  br i1 %5, label %6, label %19, !dbg !1390

; <label>:6:                                      ; preds = %1
  call void @varbuf_reset(%struct.varbuf* @diversion_current.str), !dbg !1391
  %7 = load i8*, i8** @opt_divertto, align 8, !dbg !1393
  %8 = icmp eq i8* %7, null, !dbg !1395
  br i1 %8, label %9, label %13, !dbg !1396

; <label>:9:                                      ; preds = %6
  %10 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.37, i32 0, i32 0)) #9, !dbg !1397
  %11 = load i8*, i8** %3, align 8, !dbg !1398
  %12 = call i32 (%struct.varbuf*, i8*, ...) @varbuf_printf(%struct.varbuf* @diversion_current.str, i8* %10, i8* %11), !dbg !1399
  br label %18, !dbg !1401

; <label>:13:                                     ; preds = %6
  %14 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.38, i32 0, i32 0)) #9, !dbg !1402
  %15 = load i8*, i8** %3, align 8, !dbg !1403
  %16 = load i8*, i8** @opt_divertto, align 8, !dbg !1404
  %17 = call i32 (%struct.varbuf*, i8*, ...) @varbuf_printf(%struct.varbuf* @diversion_current.str, i8* %14, i8* %15, i8* %16), !dbg !1405
  br label %18

; <label>:18:                                     ; preds = %13, %9
  br label %24, !dbg !1406

; <label>:19:                                     ; preds = %1
  %20 = load i8*, i8** @opt_pkgname, align 8, !dbg !1407
  %21 = load i8*, i8** %3, align 8, !dbg !1409
  %22 = load i8*, i8** @opt_divertto, align 8, !dbg !1410
  %23 = call i8* @varbuf_diversion(%struct.varbuf* @diversion_current.str, i8* %20, i8* %21, i8* %22), !dbg !1411
  store i8* %23, i8** %2, align 8, !dbg !1412
  br label %26, !dbg !1412

; <label>:24:                                     ; preds = %18
  %25 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @diversion_current.str, i32 0, i32 2), align 8, !dbg !1413
  store i8* %25, i8** %2, align 8, !dbg !1414
  br label %26, !dbg !1414

; <label>:26:                                     ; preds = %24, %19
  %27 = load i8*, i8** %2, align 8, !dbg !1415
  ret i8* %27, !dbg !1415
}

declare i8* @nfmalloc(i64) #2

; Function Attrs: nounwind uwtable
define internal zeroext i1 @check_rename(%struct.file*, %struct.file*) #0 !dbg !1416 {
  %3 = alloca i1, align 1
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.file*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %4, metadata !1419, metadata !420), !dbg !1420
  store %struct.file* %1, %struct.file** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %5, metadata !1421, metadata !420), !dbg !1422
  %6 = load %struct.file*, %struct.file** %4, align 8, !dbg !1423
  call void @file_stat(%struct.file* %6), !dbg !1424
  %7 = load %struct.file*, %struct.file** %4, align 8, !dbg !1425
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 1, !dbg !1427
  %9 = load i32, i32* %8, align 8, !dbg !1427
  %10 = icmp eq i32 %9, 2, !dbg !1428
  br i1 %10, label %11, label %12, !dbg !1429

; <label>:11:                                     ; preds = %2
  store i1 false, i1* %3, align 1, !dbg !1430
  br label %54, !dbg !1430

; <label>:12:                                     ; preds = %2
  %13 = load %struct.file*, %struct.file** %5, align 8, !dbg !1431
  call void @file_stat(%struct.file* %13), !dbg !1432
  %14 = load %struct.file*, %struct.file** %4, align 8, !dbg !1433
  call void @check_writable_dir(%struct.file* %14), !dbg !1434
  %15 = load %struct.file*, %struct.file** %5, align 8, !dbg !1435
  call void @check_writable_dir(%struct.file* %15), !dbg !1436
  %16 = load %struct.file*, %struct.file** %4, align 8, !dbg !1437
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 1, !dbg !1439
  %18 = load i32, i32* %17, align 8, !dbg !1439
  %19 = icmp eq i32 %18, 1, !dbg !1440
  br i1 %19, label %20, label %53, !dbg !1441

; <label>:20:                                     ; preds = %12
  %21 = load %struct.file*, %struct.file** %5, align 8, !dbg !1442
  %22 = getelementptr inbounds %struct.file, %struct.file* %21, i32 0, i32 1, !dbg !1443
  %23 = load i32, i32* %22, align 8, !dbg !1443
  %24 = icmp eq i32 %23, 1, !dbg !1444
  br i1 %24, label %25, label %53, !dbg !1445

; <label>:25:                                     ; preds = %20
  %26 = load %struct.file*, %struct.file** %4, align 8, !dbg !1446
  %27 = getelementptr inbounds %struct.file, %struct.file* %26, i32 0, i32 2, !dbg !1447
  %28 = getelementptr inbounds %struct.stat, %struct.stat* %27, i32 0, i32 0, !dbg !1448
  %29 = load i64, i64* %28, align 8, !dbg !1448
  %30 = load %struct.file*, %struct.file** %5, align 8, !dbg !1449
  %31 = getelementptr inbounds %struct.file, %struct.file* %30, i32 0, i32 2, !dbg !1450
  %32 = getelementptr inbounds %struct.stat, %struct.stat* %31, i32 0, i32 0, !dbg !1451
  %33 = load i64, i64* %32, align 8, !dbg !1451
  %34 = icmp eq i64 %29, %33, !dbg !1452
  br i1 %34, label %35, label %45, !dbg !1453

; <label>:35:                                     ; preds = %25
  %36 = load %struct.file*, %struct.file** %4, align 8, !dbg !1454
  %37 = getelementptr inbounds %struct.file, %struct.file* %36, i32 0, i32 2, !dbg !1455
  %38 = getelementptr inbounds %struct.stat, %struct.stat* %37, i32 0, i32 1, !dbg !1456
  %39 = load i64, i64* %38, align 8, !dbg !1456
  %40 = load %struct.file*, %struct.file** %5, align 8, !dbg !1457
  %41 = getelementptr inbounds %struct.file, %struct.file* %40, i32 0, i32 2, !dbg !1458
  %42 = getelementptr inbounds %struct.stat, %struct.stat* %41, i32 0, i32 1, !dbg !1459
  %43 = load i64, i64* %42, align 8, !dbg !1459
  %44 = icmp eq i64 %39, %43, !dbg !1460
  br i1 %44, label %53, label %45, !dbg !1461

; <label>:45:                                     ; preds = %35, %25
  %46 = call i8* @gettext(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.39, i32 0, i32 0)) #9, !dbg !1463
  %47 = load %struct.file*, %struct.file** %5, align 8, !dbg !1464
  %48 = getelementptr inbounds %struct.file, %struct.file* %47, i32 0, i32 0, !dbg !1465
  %49 = load i8*, i8** %48, align 8, !dbg !1465
  %50 = load %struct.file*, %struct.file** %4, align 8, !dbg !1466
  %51 = getelementptr inbounds %struct.file, %struct.file* %50, i32 0, i32 0, !dbg !1467
  %52 = load i8*, i8** %51, align 8, !dbg !1467
  call void (i8*, ...) @ohshit(i8* %46, i8* %49, i8* %52) #11, !dbg !1468
  unreachable, !dbg !1470

; <label>:53:                                     ; preds = %35, %20, %12
  store i1 true, i1* %3, align 1, !dbg !1471
  br label %54, !dbg !1471

; <label>:54:                                     ; preds = %53, %11
  %55 = load i1, i1* %3, align 1, !dbg !1472
  ret i1 %55, !dbg !1472
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @diversion_is_owned_by_self(%struct.pkgset*, %struct.fsys_namenode*) #0 !dbg !1473 {
  %3 = alloca i1, align 1
  %4 = alloca %struct.pkgset*, align 8
  %5 = alloca %struct.fsys_namenode*, align 8
  %6 = alloca %struct.pkginfo*, align 8
  %7 = alloca %struct.fsys_node_pkgs_iter*, align 8
  %8 = alloca i8, align 1
  store %struct.pkgset* %0, %struct.pkgset** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgset** %4, metadata !1476, metadata !420), !dbg !1477
  store %struct.fsys_namenode* %1, %struct.fsys_namenode** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %5, metadata !1478, metadata !420), !dbg !1479
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %6, metadata !1480, metadata !420), !dbg !1481
  call void @llvm.dbg.declare(metadata %struct.fsys_node_pkgs_iter** %7, metadata !1482, metadata !420), !dbg !1485
  call void @llvm.dbg.declare(metadata i8* %8, metadata !1486, metadata !420), !dbg !1487
  store i8 0, i8* %8, align 1, !dbg !1487
  %9 = load %struct.pkgset*, %struct.pkgset** %4, align 8, !dbg !1488
  %10 = icmp eq %struct.pkgset* %9, null, !dbg !1490
  br i1 %10, label %11, label %12, !dbg !1491

; <label>:11:                                     ; preds = %2
  store i1 false, i1* %3, align 1, !dbg !1492
  br label %43, !dbg !1492

; <label>:12:                                     ; preds = %2
  %13 = load %struct.pkgset*, %struct.pkgset** %4, align 8, !dbg !1493
  %14 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %13, i32 0, i32 2, !dbg !1495
  store %struct.pkginfo* %14, %struct.pkginfo** %6, align 8, !dbg !1496
  br label %15, !dbg !1497

; <label>:15:                                     ; preds = %20, %12
  %16 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !1498
  %17 = icmp ne %struct.pkginfo* %16, null, !dbg !1501
  br i1 %17, label %18, label %24, !dbg !1501

; <label>:18:                                     ; preds = %15
  %19 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !1502
  call void @ensure_packagefiles_available(%struct.pkginfo* %19), !dbg !1503
  br label %20, !dbg !1503

; <label>:20:                                     ; preds = %18
  %21 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !1504
  %22 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %21, i32 0, i32 1, !dbg !1506
  %23 = load %struct.pkginfo*, %struct.pkginfo** %22, align 8, !dbg !1506
  store %struct.pkginfo* %23, %struct.pkginfo** %6, align 8, !dbg !1507
  br label %15, !dbg !1508, !llvm.loop !1509

; <label>:24:                                     ; preds = %15
  %25 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !1511
  %26 = call %struct.fsys_node_pkgs_iter* @fsys_node_pkgs_iter_new(%struct.fsys_namenode* %25), !dbg !1512
  store %struct.fsys_node_pkgs_iter* %26, %struct.fsys_node_pkgs_iter** %7, align 8, !dbg !1513
  br label %27, !dbg !1514

; <label>:27:                                     ; preds = %38, %24
  %28 = load %struct.fsys_node_pkgs_iter*, %struct.fsys_node_pkgs_iter** %7, align 8, !dbg !1515
  %29 = call %struct.pkginfo* @fsys_node_pkgs_iter_next(%struct.fsys_node_pkgs_iter* %28), !dbg !1517
  store %struct.pkginfo* %29, %struct.pkginfo** %6, align 8, !dbg !1518
  %30 = icmp ne %struct.pkginfo* %29, null, !dbg !1519
  br i1 %30, label %31, label %39, !dbg !1519

; <label>:31:                                     ; preds = %27
  %32 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !1520
  %33 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %32, i32 0, i32 0, !dbg !1523
  %34 = load %struct.pkgset*, %struct.pkgset** %33, align 8, !dbg !1523
  %35 = load %struct.pkgset*, %struct.pkgset** %4, align 8, !dbg !1524
  %36 = icmp eq %struct.pkgset* %34, %35, !dbg !1525
  br i1 %36, label %37, label %38, !dbg !1526

; <label>:37:                                     ; preds = %31
  store i8 1, i8* %8, align 1, !dbg !1527
  br label %39, !dbg !1529

; <label>:38:                                     ; preds = %31
  br label %27, !dbg !1530, !llvm.loop !1532

; <label>:39:                                     ; preds = %37, %27
  %40 = load %struct.fsys_node_pkgs_iter*, %struct.fsys_node_pkgs_iter** %7, align 8, !dbg !1533
  call void @fsys_node_pkgs_iter_free(%struct.fsys_node_pkgs_iter* %40), !dbg !1534
  %41 = load i8, i8* %8, align 1, !dbg !1535
  %42 = trunc i8 %41 to i1, !dbg !1535
  store i1 %42, i1* %3, align 1, !dbg !1536
  br label %43, !dbg !1536

; <label>:43:                                     ; preds = %39, %11
  %44 = load i1, i1* %3, align 1, !dbg !1537
  ret i1 %44, !dbg !1537
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @diversion_is_essential(%struct.fsys_namenode*) #0 !dbg !1538 {
  %2 = alloca %struct.fsys_namenode*, align 8
  %3 = alloca %struct.pkginfo*, align 8
  %4 = alloca %struct.pkg_hash_iter*, align 8
  %5 = alloca %struct.fsys_node_pkgs_iter*, align 8
  %6 = alloca i8, align 1
  store %struct.fsys_namenode* %0, %struct.fsys_namenode** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %2, metadata !1541, metadata !420), !dbg !1542
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %3, metadata !1543, metadata !420), !dbg !1544
  call void @llvm.dbg.declare(metadata %struct.pkg_hash_iter** %4, metadata !1545, metadata !420), !dbg !1548
  call void @llvm.dbg.declare(metadata %struct.fsys_node_pkgs_iter** %5, metadata !1549, metadata !420), !dbg !1550
  call void @llvm.dbg.declare(metadata i8* %6, metadata !1551, metadata !420), !dbg !1552
  store i8 0, i8* %6, align 1, !dbg !1552
  %7 = call %struct.pkg_hash_iter* @pkg_hash_iter_new(), !dbg !1553
  store %struct.pkg_hash_iter* %7, %struct.pkg_hash_iter** %4, align 8, !dbg !1554
  br label %8, !dbg !1555

; <label>:8:                                      ; preds = %20, %1
  %9 = load %struct.pkg_hash_iter*, %struct.pkg_hash_iter** %4, align 8, !dbg !1556
  %10 = call %struct.pkginfo* @pkg_hash_iter_next_pkg(%struct.pkg_hash_iter* %9), !dbg !1558
  store %struct.pkginfo* %10, %struct.pkginfo** %3, align 8, !dbg !1559
  %11 = icmp ne %struct.pkginfo* %10, null, !dbg !1560
  br i1 %11, label %12, label %21, !dbg !1560

; <label>:12:                                     ; preds = %8
  %13 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !1561
  %14 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %13, i32 0, i32 9, !dbg !1564
  %15 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %14, i32 0, i32 1, !dbg !1565
  %16 = load i8, i8* %15, align 8, !dbg !1565
  %17 = trunc i8 %16 to i1, !dbg !1565
  br i1 %17, label %18, label %20, !dbg !1566

; <label>:18:                                     ; preds = %12
  %19 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !1567
  call void @ensure_packagefiles_available(%struct.pkginfo* %19), !dbg !1568
  br label %20, !dbg !1568

; <label>:20:                                     ; preds = %18, %12
  br label %8, !dbg !1569, !llvm.loop !1571

; <label>:21:                                     ; preds = %8
  %22 = load %struct.pkg_hash_iter*, %struct.pkg_hash_iter** %4, align 8, !dbg !1572
  call void @pkg_hash_iter_free(%struct.pkg_hash_iter* %22), !dbg !1573
  %23 = load %struct.fsys_namenode*, %struct.fsys_namenode** %2, align 8, !dbg !1574
  %24 = call %struct.fsys_node_pkgs_iter* @fsys_node_pkgs_iter_new(%struct.fsys_namenode* %23), !dbg !1575
  store %struct.fsys_node_pkgs_iter* %24, %struct.fsys_node_pkgs_iter** %5, align 8, !dbg !1576
  br label %25, !dbg !1577

; <label>:25:                                     ; preds = %36, %21
  %26 = load %struct.fsys_node_pkgs_iter*, %struct.fsys_node_pkgs_iter** %5, align 8, !dbg !1578
  %27 = call %struct.pkginfo* @fsys_node_pkgs_iter_next(%struct.fsys_node_pkgs_iter* %26), !dbg !1579
  store %struct.pkginfo* %27, %struct.pkginfo** %3, align 8, !dbg !1580
  %28 = icmp ne %struct.pkginfo* %27, null, !dbg !1581
  br i1 %28, label %29, label %37, !dbg !1581

; <label>:29:                                     ; preds = %25
  %30 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !1582
  %31 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %30, i32 0, i32 9, !dbg !1585
  %32 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %31, i32 0, i32 1, !dbg !1586
  %33 = load i8, i8* %32, align 8, !dbg !1586
  %34 = trunc i8 %33 to i1, !dbg !1586
  br i1 %34, label %35, label %36, !dbg !1587

; <label>:35:                                     ; preds = %29
  store i8 1, i8* %6, align 1, !dbg !1588
  br label %37, !dbg !1590

; <label>:36:                                     ; preds = %29
  br label %25, !dbg !1591, !llvm.loop !1592

; <label>:37:                                     ; preds = %35, %25
  %38 = load %struct.fsys_node_pkgs_iter*, %struct.fsys_node_pkgs_iter** %5, align 8, !dbg !1593
  call void @fsys_node_pkgs_iter_free(%struct.fsys_node_pkgs_iter* %38), !dbg !1594
  %39 = load i8, i8* %6, align 1, !dbg !1595
  %40 = trunc i8 %39 to i1, !dbg !1595
  ret i1 %40, !dbg !1596
}

declare void @warning(i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal void @divertdb_write() #0 !dbg !1597 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.atomic_file*, align 8
  %3 = alloca %struct.fsys_hash_iter*, align 8
  %4 = alloca %struct.fsys_namenode*, align 8
  %5 = alloca %struct.fsys_diversion*, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !1598, metadata !420), !dbg !1599
  call void @llvm.dbg.declare(metadata %struct.atomic_file** %2, metadata !1600, metadata !420), !dbg !1661
  call void @llvm.dbg.declare(metadata %struct.fsys_hash_iter** %3, metadata !1662, metadata !420), !dbg !1663
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %4, metadata !1664, metadata !420), !dbg !1665
  %6 = call i8* @dpkg_db_get_path(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0)), !dbg !1666
  store i8* %6, i8** %1, align 8, !dbg !1667
  %7 = load i8*, i8** %1, align 8, !dbg !1668
  %8 = call %struct.atomic_file* @atomic_file_new(i8* %7, i32 1), !dbg !1669
  store %struct.atomic_file* %8, %struct.atomic_file** %2, align 8, !dbg !1670
  %9 = load %struct.atomic_file*, %struct.atomic_file** %2, align 8, !dbg !1671
  call void @atomic_file_open(%struct.atomic_file* %9), !dbg !1672
  %10 = call %struct.fsys_hash_iter* @fsys_hash_iter_new(), !dbg !1673
  store %struct.fsys_hash_iter* %10, %struct.fsys_hash_iter** %3, align 8, !dbg !1674
  br label %11, !dbg !1675

; <label>:11:                                     ; preds = %27, %26, %0
  %12 = load %struct.fsys_hash_iter*, %struct.fsys_hash_iter** %3, align 8, !dbg !1676
  %13 = call %struct.fsys_namenode* @fsys_hash_iter_next(%struct.fsys_hash_iter* %12), !dbg !1678
  store %struct.fsys_namenode* %13, %struct.fsys_namenode** %4, align 8, !dbg !1679
  %14 = icmp ne %struct.fsys_namenode* %13, null, !dbg !1680
  br i1 %14, label %15, label %48, !dbg !1680

; <label>:15:                                     ; preds = %11
  call void @llvm.dbg.declare(metadata %struct.fsys_diversion** %5, metadata !1681, metadata !420), !dbg !1683
  %16 = load %struct.fsys_namenode*, %struct.fsys_namenode** %4, align 8, !dbg !1684
  %17 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %16, i32 0, i32 3, !dbg !1685
  %18 = load %struct.fsys_diversion*, %struct.fsys_diversion** %17, align 8, !dbg !1685
  store %struct.fsys_diversion* %18, %struct.fsys_diversion** %5, align 8, !dbg !1683
  %19 = load %struct.fsys_diversion*, %struct.fsys_diversion** %5, align 8, !dbg !1686
  %20 = icmp eq %struct.fsys_diversion* %19, null, !dbg !1688
  br i1 %20, label %26, label %21, !dbg !1689

; <label>:21:                                     ; preds = %15
  %22 = load %struct.fsys_diversion*, %struct.fsys_diversion** %5, align 8, !dbg !1690
  %23 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %22, i32 0, i32 0, !dbg !1692
  %24 = load %struct.fsys_namenode*, %struct.fsys_namenode** %23, align 8, !dbg !1692
  %25 = icmp eq %struct.fsys_namenode* %24, null, !dbg !1693
  br i1 %25, label %26, label %27, !dbg !1694

; <label>:26:                                     ; preds = %21, %15
  br label %11, !dbg !1695, !llvm.loop !1696

; <label>:27:                                     ; preds = %21
  %28 = load %struct.atomic_file*, %struct.atomic_file** %2, align 8, !dbg !1697
  %29 = getelementptr inbounds %struct.atomic_file, %struct.atomic_file* %28, i32 0, i32 3, !dbg !1698
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %29, align 8, !dbg !1698
  %31 = load %struct.fsys_diversion*, %struct.fsys_diversion** %5, align 8, !dbg !1699
  %32 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %31, i32 0, i32 0, !dbg !1700
  %33 = load %struct.fsys_namenode*, %struct.fsys_namenode** %32, align 8, !dbg !1700
  %34 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %33, i32 0, i32 3, !dbg !1701
  %35 = load %struct.fsys_diversion*, %struct.fsys_diversion** %34, align 8, !dbg !1701
  %36 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %35, i32 0, i32 1, !dbg !1702
  %37 = load %struct.fsys_namenode*, %struct.fsys_namenode** %36, align 8, !dbg !1702
  %38 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %37, i32 0, i32 1, !dbg !1703
  %39 = load i8*, i8** %38, align 8, !dbg !1703
  %40 = load %struct.fsys_diversion*, %struct.fsys_diversion** %5, align 8, !dbg !1704
  %41 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %40, i32 0, i32 0, !dbg !1705
  %42 = load %struct.fsys_namenode*, %struct.fsys_namenode** %41, align 8, !dbg !1705
  %43 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %42, i32 0, i32 1, !dbg !1706
  %44 = load i8*, i8** %43, align 8, !dbg !1706
  %45 = load %struct.fsys_diversion*, %struct.fsys_diversion** %5, align 8, !dbg !1707
  %46 = call i8* @diversion_pkg_name(%struct.fsys_diversion* %45), !dbg !1708
  %47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), i8* %39, i8* %44, i8* %46), !dbg !1709
  br label %11, !dbg !1710, !llvm.loop !1696

; <label>:48:                                     ; preds = %11
  %49 = load %struct.fsys_hash_iter*, %struct.fsys_hash_iter** %3, align 8, !dbg !1712
  call void @fsys_hash_iter_free(%struct.fsys_hash_iter* %49), !dbg !1713
  %50 = load %struct.atomic_file*, %struct.atomic_file** %2, align 8, !dbg !1714
  call void @atomic_file_sync(%struct.atomic_file* %50), !dbg !1715
  %51 = load %struct.atomic_file*, %struct.atomic_file** %2, align 8, !dbg !1716
  call void @atomic_file_close(%struct.atomic_file* %51), !dbg !1717
  %52 = load %struct.atomic_file*, %struct.atomic_file** %2, align 8, !dbg !1718
  call void @atomic_file_commit(%struct.atomic_file* %52), !dbg !1719
  %53 = load %struct.atomic_file*, %struct.atomic_file** %2, align 8, !dbg !1720
  call void @atomic_file_free(%struct.atomic_file* %53), !dbg !1721
  %54 = load i8*, i8** %1, align 8, !dbg !1722
  call void @free(i8* %54) #9, !dbg !1723
  ret void, !dbg !1724
}

; Function Attrs: nounwind uwtable
define internal void @file_rename(%struct.file*, %struct.file*) #0 !dbg !1725 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.file*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %3, metadata !1728, metadata !420), !dbg !1729
  store %struct.file* %1, %struct.file** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %4, metadata !1730, metadata !420), !dbg !1731
  %5 = load %struct.file*, %struct.file** %3, align 8, !dbg !1732
  %6 = getelementptr inbounds %struct.file, %struct.file* %5, i32 0, i32 1, !dbg !1734
  %7 = load i32, i32* %6, align 8, !dbg !1734
  %8 = icmp eq i32 %7, 2, !dbg !1735
  br i1 %8, label %9, label %10, !dbg !1736

; <label>:9:                                      ; preds = %2
  br label %55, !dbg !1737

; <label>:10:                                     ; preds = %2
  %11 = load %struct.file*, %struct.file** %4, align 8, !dbg !1738
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 1, !dbg !1740
  %13 = load i32, i32* %12, align 8, !dbg !1740
  %14 = icmp eq i32 %13, 1, !dbg !1741
  br i1 %14, label %15, label %27, !dbg !1742

; <label>:15:                                     ; preds = %10
  %16 = load %struct.file*, %struct.file** %3, align 8, !dbg !1743
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 0, !dbg !1746
  %18 = load i8*, i8** %17, align 8, !dbg !1746
  %19 = call i32 @unlink(i8* %18) #9, !dbg !1747
  %20 = icmp ne i32 %19, 0, !dbg !1747
  br i1 %20, label %21, label %26, !dbg !1748

; <label>:21:                                     ; preds = %15
  %22 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.46, i32 0, i32 0)) #9, !dbg !1749
  %23 = load %struct.file*, %struct.file** %3, align 8, !dbg !1750
  %24 = getelementptr inbounds %struct.file, %struct.file* %23, i32 0, i32 0, !dbg !1751
  %25 = load i8*, i8** %24, align 8, !dbg !1751
  call void (i8*, ...) @ohshite(i8* %22, i8* %25) #11, !dbg !1752
  unreachable, !dbg !1754

; <label>:26:                                     ; preds = %15
  br label %55, !dbg !1755

; <label>:27:                                     ; preds = %10
  %28 = load %struct.file*, %struct.file** %3, align 8, !dbg !1756
  %29 = getelementptr inbounds %struct.file, %struct.file* %28, i32 0, i32 0, !dbg !1759
  %30 = load i8*, i8** %29, align 8, !dbg !1759
  %31 = load %struct.file*, %struct.file** %4, align 8, !dbg !1760
  %32 = getelementptr inbounds %struct.file, %struct.file* %31, i32 0, i32 0, !dbg !1761
  %33 = load i8*, i8** %32, align 8, !dbg !1761
  %34 = call i32 @rename(i8* %30, i8* %33) #9, !dbg !1762
  %35 = icmp eq i32 %34, 0, !dbg !1763
  br i1 %35, label %36, label %37, !dbg !1764

; <label>:36:                                     ; preds = %27
  br label %55, !dbg !1765

; <label>:37:                                     ; preds = %27
  %38 = load %struct.file*, %struct.file** %3, align 8, !dbg !1766
  %39 = getelementptr inbounds %struct.file, %struct.file* %38, i32 0, i32 0, !dbg !1767
  %40 = load i8*, i8** %39, align 8, !dbg !1767
  %41 = load %struct.file*, %struct.file** %4, align 8, !dbg !1768
  %42 = getelementptr inbounds %struct.file, %struct.file* %41, i32 0, i32 0, !dbg !1769
  %43 = load i8*, i8** %42, align 8, !dbg !1769
  call void @file_copy(i8* %40, i8* %43), !dbg !1770
  %44 = load %struct.file*, %struct.file** %3, align 8, !dbg !1771
  %45 = getelementptr inbounds %struct.file, %struct.file* %44, i32 0, i32 0, !dbg !1773
  %46 = load i8*, i8** %45, align 8, !dbg !1773
  %47 = call i32 @unlink(i8* %46) #9, !dbg !1774
  %48 = icmp ne i32 %47, 0, !dbg !1774
  br i1 %48, label %49, label %54, !dbg !1775

; <label>:49:                                     ; preds = %37
  %50 = call i8* @gettext(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.47, i32 0, i32 0)) #9, !dbg !1776
  %51 = load %struct.file*, %struct.file** %3, align 8, !dbg !1777
  %52 = getelementptr inbounds %struct.file, %struct.file* %51, i32 0, i32 0, !dbg !1778
  %53 = load i8*, i8** %52, align 8, !dbg !1778
  call void (i8*, ...) @ohshite(i8* %50, i8* %53) #11, !dbg !1779
  unreachable, !dbg !1781

; <label>:54:                                     ; preds = %37
  br label %55

; <label>:55:                                     ; preds = %9, %36, %54, %26
  ret void, !dbg !1782
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #5

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #6

declare void @varbuf_add_buf(%struct.varbuf*, i8*, i64) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

declare void @varbuf_end_str(%struct.varbuf*) #2

declare i8* @varbuf_detach(%struct.varbuf*) #2

; Function Attrs: nounwind
declare i32 @lstat(i8*, %struct.stat*) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #7

; Function Attrs: noreturn
declare void @ohshite(i8*, ...) #4

; Function Attrs: nounwind uwtable
define internal i8* @varbuf_diversion(%struct.varbuf*, i8*, i8*, i8*) #0 !dbg !1783 {
  %5 = alloca %struct.varbuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.varbuf* %0, %struct.varbuf** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %5, metadata !1787, metadata !420), !dbg !1788
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1789, metadata !420), !dbg !1790
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1791, metadata !420), !dbg !1792
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1793, metadata !420), !dbg !1794
  %9 = load %struct.varbuf*, %struct.varbuf** %5, align 8, !dbg !1795
  call void @varbuf_reset(%struct.varbuf* %9), !dbg !1796
  %10 = load i8*, i8** %6, align 8, !dbg !1797
  %11 = icmp eq i8* %10, null, !dbg !1799
  br i1 %11, label %12, label %27, !dbg !1800

; <label>:12:                                     ; preds = %4
  %13 = load i8*, i8** %8, align 8, !dbg !1801
  %14 = icmp eq i8* %13, null, !dbg !1804
  br i1 %14, label %15, label %20, !dbg !1805

; <label>:15:                                     ; preds = %12
  %16 = load %struct.varbuf*, %struct.varbuf** %5, align 8, !dbg !1806
  %17 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.33, i32 0, i32 0)) #9, !dbg !1807
  %18 = load i8*, i8** %7, align 8, !dbg !1808
  %19 = call i32 (%struct.varbuf*, i8*, ...) @varbuf_printf(%struct.varbuf* %16, i8* %17, i8* %18), !dbg !1809
  br label %26, !dbg !1811

; <label>:20:                                     ; preds = %12
  %21 = load %struct.varbuf*, %struct.varbuf** %5, align 8, !dbg !1812
  %22 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.34, i32 0, i32 0)) #9, !dbg !1813
  %23 = load i8*, i8** %7, align 8, !dbg !1814
  %24 = load i8*, i8** %8, align 8, !dbg !1815
  %25 = call i32 (%struct.varbuf*, i8*, ...) @varbuf_printf(%struct.varbuf* %21, i8* %22, i8* %23, i8* %24), !dbg !1816
  br label %26

; <label>:26:                                     ; preds = %20, %15
  br label %44, !dbg !1817

; <label>:27:                                     ; preds = %4
  %28 = load i8*, i8** %8, align 8, !dbg !1818
  %29 = icmp eq i8* %28, null, !dbg !1821
  br i1 %29, label %30, label %36, !dbg !1822

; <label>:30:                                     ; preds = %27
  %31 = load %struct.varbuf*, %struct.varbuf** %5, align 8, !dbg !1823
  %32 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.35, i32 0, i32 0)) #9, !dbg !1824
  %33 = load i8*, i8** %7, align 8, !dbg !1825
  %34 = load i8*, i8** %6, align 8, !dbg !1826
  %35 = call i32 (%struct.varbuf*, i8*, ...) @varbuf_printf(%struct.varbuf* %31, i8* %32, i8* %33, i8* %34), !dbg !1827
  br label %43, !dbg !1829

; <label>:36:                                     ; preds = %27
  %37 = load %struct.varbuf*, %struct.varbuf** %5, align 8, !dbg !1830
  %38 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.36, i32 0, i32 0)) #9, !dbg !1831
  %39 = load i8*, i8** %7, align 8, !dbg !1832
  %40 = load i8*, i8** %8, align 8, !dbg !1833
  %41 = load i8*, i8** %6, align 8, !dbg !1834
  %42 = call i32 (%struct.varbuf*, i8*, ...) @varbuf_printf(%struct.varbuf* %37, i8* %38, i8* %39, i8* %40, i8* %41), !dbg !1835
  br label %43

; <label>:43:                                     ; preds = %36, %30
  br label %44

; <label>:44:                                     ; preds = %43, %26
  %45 = load %struct.varbuf*, %struct.varbuf** %5, align 8, !dbg !1836
  %46 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %45, i32 0, i32 2, !dbg !1837
  %47 = load i8*, i8** %46, align 8, !dbg !1837
  ret i8* %47, !dbg !1838
}

declare void @varbuf_reset(%struct.varbuf*) #2

declare i32 @varbuf_printf(%struct.varbuf*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal void @check_writable_dir(%struct.file*) #0 !dbg !1839 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %2, metadata !1840, metadata !420), !dbg !1841
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1842, metadata !420), !dbg !1843
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1844, metadata !420), !dbg !1845
  %5 = load %struct.file*, %struct.file** %2, align 8, !dbg !1846
  %6 = getelementptr inbounds %struct.file, %struct.file* %5, i32 0, i32 0, !dbg !1847
  %7 = load i8*, i8** %6, align 8, !dbg !1847
  %8 = call i8* (i8*, ...) @str_fmt(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), i8* %7, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i32 0, i32 0)), !dbg !1848
  store i8* %8, i8** %3, align 8, !dbg !1849
  %9 = load i8*, i8** %3, align 8, !dbg !1850
  %10 = call i32 @creat(i8* %9, i32 384), !dbg !1851
  store i32 %10, i32* %4, align 4, !dbg !1852
  %11 = load i32, i32* %4, align 4, !dbg !1853
  %12 = icmp slt i32 %11, 0, !dbg !1855
  br i1 %12, label %13, label %18, !dbg !1856

; <label>:13:                                     ; preds = %1
  %14 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.42, i32 0, i32 0)) #9, !dbg !1857
  %15 = load %struct.file*, %struct.file** %2, align 8, !dbg !1858
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 0, !dbg !1859
  %17 = load i8*, i8** %16, align 8, !dbg !1859
  call void (i8*, ...) @ohshite(i8* %14, i8* %17) #11, !dbg !1860
  unreachable, !dbg !1862

; <label>:18:                                     ; preds = %1
  %19 = load i32, i32* %4, align 4, !dbg !1863
  %20 = call i32 @close(i32 %19), !dbg !1864
  %21 = load i8*, i8** %3, align 8, !dbg !1865
  %22 = call i32 @unlink(i8* %21) #9, !dbg !1866
  %23 = load i8*, i8** %3, align 8, !dbg !1867
  call void @free(i8* %23) #9, !dbg !1868
  ret void, !dbg !1869
}

declare i32 @creat(i8*, i32) #2

declare i32 @close(i32) #2

; Function Attrs: nounwind
declare i32 @unlink(i8*) #3

; Function Attrs: nounwind
declare void @free(i8*) #3

declare void @ensure_packagefiles_available(%struct.pkginfo*) #2

declare %struct.fsys_node_pkgs_iter* @fsys_node_pkgs_iter_new(%struct.fsys_namenode*) #2

declare %struct.pkginfo* @fsys_node_pkgs_iter_next(%struct.fsys_node_pkgs_iter*) #2

declare void @fsys_node_pkgs_iter_free(%struct.fsys_node_pkgs_iter*) #2

declare %struct.pkg_hash_iter* @pkg_hash_iter_new() #2

declare %struct.pkginfo* @pkg_hash_iter_next_pkg(%struct.pkg_hash_iter*) #2

declare void @pkg_hash_iter_free(%struct.pkg_hash_iter*) #2

declare i8* @dpkg_db_get_path(i8*) #2

declare %struct.atomic_file* @atomic_file_new(i8*, i32) #2

declare void @atomic_file_open(%struct.atomic_file*) #2

declare %struct.fsys_hash_iter* @fsys_hash_iter_new() #2

declare %struct.fsys_namenode* @fsys_hash_iter_next(%struct.fsys_hash_iter*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal i8* @diversion_pkg_name(%struct.fsys_diversion*) #0 !dbg !1870 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.fsys_diversion*, align 8
  store %struct.fsys_diversion* %0, %struct.fsys_diversion** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.fsys_diversion** %3, metadata !1871, metadata !420), !dbg !1872
  %4 = load %struct.fsys_diversion*, %struct.fsys_diversion** %3, align 8, !dbg !1873
  %5 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %4, i32 0, i32 2, !dbg !1875
  %6 = load %struct.pkgset*, %struct.pkgset** %5, align 8, !dbg !1875
  %7 = icmp eq %struct.pkgset* %6, null, !dbg !1876
  br i1 %7, label %8, label %9, !dbg !1877

; <label>:8:                                      ; preds = %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i32 0, i32 0), i8** %2, align 8, !dbg !1878
  br label %15, !dbg !1878

; <label>:9:                                      ; preds = %1
  %10 = load %struct.fsys_diversion*, %struct.fsys_diversion** %3, align 8, !dbg !1879
  %11 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %10, i32 0, i32 2, !dbg !1880
  %12 = load %struct.pkgset*, %struct.pkgset** %11, align 8, !dbg !1880
  %13 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %12, i32 0, i32 1, !dbg !1881
  %14 = load i8*, i8** %13, align 8, !dbg !1881
  store i8* %14, i8** %2, align 8, !dbg !1882
  br label %15, !dbg !1882

; <label>:15:                                     ; preds = %9, %8
  %16 = load i8*, i8** %2, align 8, !dbg !1883
  ret i8* %16, !dbg !1883
}

declare void @fsys_hash_iter_free(%struct.fsys_hash_iter*) #2

declare void @atomic_file_sync(%struct.atomic_file*) #2

declare void @atomic_file_close(%struct.atomic_file*) #2

declare void @atomic_file_commit(%struct.atomic_file*) #2

declare void @atomic_file_free(%struct.atomic_file*) #2

; Function Attrs: nounwind
declare i32 @rename(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @file_copy(i8*, i8*) #0 !dbg !1884 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dpkg_error, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1887, metadata !420), !dbg !1888
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1889, metadata !420), !dbg !1890
  call void @llvm.dbg.declare(metadata %struct.dpkg_error* %5, metadata !1891, metadata !420), !dbg !1897
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1898, metadata !420), !dbg !1899
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1900, metadata !420), !dbg !1901
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1902, metadata !420), !dbg !1903
  %9 = load i8*, i8** %3, align 8, !dbg !1904
  %10 = call i32 (i8*, i32, ...) @open(i8* %9, i32 0), !dbg !1905
  store i32 %10, i32* %7, align 4, !dbg !1906
  %11 = load i32, i32* %7, align 4, !dbg !1907
  %12 = icmp slt i32 %11, 0, !dbg !1909
  br i1 %12, label %13, label %16, !dbg !1910

; <label>:13:                                     ; preds = %2
  %14 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.48, i32 0, i32 0)) #9, !dbg !1911
  %15 = load i8*, i8** %3, align 8, !dbg !1912
  call void (i8*, ...) @ohshite(i8* %14, i8* %15) #11, !dbg !1913
  unreachable, !dbg !1915

; <label>:16:                                     ; preds = %2
  %17 = load i8*, i8** %4, align 8, !dbg !1916
  %18 = call i8* (i8*, ...) @str_fmt(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), i8* %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i32 0, i32 0)), !dbg !1917
  store i8* %18, i8** %6, align 8, !dbg !1918
  %19 = load i8*, i8** %6, align 8, !dbg !1919
  %20 = call i32 @creat(i8* %19, i32 384), !dbg !1920
  store i32 %20, i32* %8, align 4, !dbg !1921
  %21 = load i32, i32* %8, align 4, !dbg !1922
  %22 = icmp slt i32 %21, 0, !dbg !1924
  br i1 %22, label %23, label %26, !dbg !1925

; <label>:23:                                     ; preds = %16
  %24 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.49, i32 0, i32 0)) #9, !dbg !1926
  %25 = load i8*, i8** %6, align 8, !dbg !1927
  call void (i8*, ...) @ohshite(i8* %24, i8* %25) #11, !dbg !1928
  unreachable, !dbg !1930

; <label>:26:                                     ; preds = %16
  %27 = load i8*, i8** %6, align 8, !dbg !1931
  call void (void (i32, i8**)*, i32, i32, ...) @push_cleanup(void (i32, i8**)* @cu_filename, i32 -2, i32 1, i8* %27), !dbg !1932
  %28 = load i32, i32* %7, align 4, !dbg !1933
  %29 = load i32, i32* %8, align 4, !dbg !1935
  %30 = call i64 @buffer_copy_IntInt(i32 %28, i32 0, i8* null, i32 4, i32 %29, i32 2, i64 -1, %struct.dpkg_error* %5), !dbg !1936
  %31 = icmp slt i64 %30, 0, !dbg !1937
  br i1 %31, label %32, label %38, !dbg !1938

; <label>:32:                                     ; preds = %26
  %33 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.50, i32 0, i32 0)) #9, !dbg !1939
  %34 = load i8*, i8** %3, align 8, !dbg !1940
  %35 = load i8*, i8** %6, align 8, !dbg !1941
  %36 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %5, i32 0, i32 2, !dbg !1942
  %37 = load i8*, i8** %36, align 8, !dbg !1942
  call void (i8*, ...) @ohshit(i8* %33, i8* %34, i8* %35, i8* %37) #11, !dbg !1943
  unreachable, !dbg !1945

; <label>:38:                                     ; preds = %26
  %39 = load i32, i32* %7, align 4, !dbg !1946
  %40 = call i32 @close(i32 %39), !dbg !1947
  %41 = load i32, i32* %8, align 4, !dbg !1948
  %42 = call i32 @fsync(i32 %41), !dbg !1950
  %43 = icmp ne i32 %42, 0, !dbg !1950
  br i1 %43, label %44, label %47, !dbg !1951

; <label>:44:                                     ; preds = %38
  %45 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.51, i32 0, i32 0)) #9, !dbg !1952
  %46 = load i8*, i8** %6, align 8, !dbg !1953
  call void (i8*, ...) @ohshite(i8* %45, i8* %46) #11, !dbg !1954
  unreachable, !dbg !1956

; <label>:47:                                     ; preds = %38
  %48 = load i32, i32* %8, align 4, !dbg !1957
  %49 = call i32 @close(i32 %48), !dbg !1959
  %50 = icmp ne i32 %49, 0, !dbg !1959
  br i1 %50, label %51, label %54, !dbg !1960

; <label>:51:                                     ; preds = %47
  %52 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.52, i32 0, i32 0)) #9, !dbg !1961
  %53 = load i8*, i8** %6, align 8, !dbg !1962
  call void (i8*, ...) @ohshite(i8* %52, i8* %53) #11, !dbg !1963
  unreachable, !dbg !1965

; <label>:54:                                     ; preds = %47
  %55 = load i8*, i8** %3, align 8, !dbg !1966
  %56 = load i8*, i8** %6, align 8, !dbg !1967
  call void @file_copy_perms(i8* %55, i8* %56), !dbg !1968
  %57 = load i8*, i8** %6, align 8, !dbg !1969
  %58 = load i8*, i8** %4, align 8, !dbg !1971
  %59 = call i32 @rename(i8* %57, i8* %58) #9, !dbg !1972
  %60 = icmp ne i32 %59, 0, !dbg !1973
  br i1 %60, label %61, label %65, !dbg !1974

; <label>:61:                                     ; preds = %54
  %62 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.53, i32 0, i32 0)) #9, !dbg !1975
  %63 = load i8*, i8** %6, align 8, !dbg !1976
  %64 = load i8*, i8** %4, align 8, !dbg !1977
  call void (i8*, ...) @ohshite(i8* %62, i8* %63, i8* %64) #11, !dbg !1978
  unreachable, !dbg !1980

; <label>:65:                                     ; preds = %54
  %66 = load i8*, i8** %6, align 8, !dbg !1981
  call void @free(i8* %66) #9, !dbg !1982
  call void @pop_cleanup(i32 1), !dbg !1983
  ret void, !dbg !1984
}

declare i32 @open(i8*, i32, ...) #2

declare void @push_cleanup(void (i32, i8**)*, i32, i32, ...) #2

declare void @cu_filename(i32, i8**) #2

declare i64 @buffer_copy_IntInt(i32, i32, i8*, i32, i32, i32, i64, %struct.dpkg_error*) #2

declare i32 @fsync(i32) #2

declare void @file_copy_perms(i8*, i8*) #2

declare void @pop_cleanup(i32) #2

; Function Attrs: nounwind uwtable
define internal zeroext i1 @diversion_is_shared(%struct.pkgset*, %struct.fsys_namenode*) #0 !dbg !1985 {
  %3 = alloca i1, align 1
  %4 = alloca %struct.pkgset*, align 8
  %5 = alloca %struct.fsys_namenode*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.pkginfo*, align 8
  %8 = alloca %struct.dpkg_arch*, align 8
  %9 = alloca %struct.fsys_node_pkgs_iter*, align 8
  %10 = alloca i8, align 1
  store %struct.pkgset* %0, %struct.pkgset** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgset** %4, metadata !1986, metadata !420), !dbg !1987
  store %struct.fsys_namenode* %1, %struct.fsys_namenode** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %5, metadata !1988, metadata !420), !dbg !1989
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1990, metadata !420), !dbg !1991
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %7, metadata !1992, metadata !420), !dbg !1993
  call void @llvm.dbg.declare(metadata %struct.dpkg_arch** %8, metadata !1994, metadata !420), !dbg !1995
  call void @llvm.dbg.declare(metadata %struct.fsys_node_pkgs_iter** %9, metadata !1996, metadata !420), !dbg !1997
  call void @llvm.dbg.declare(metadata i8* %10, metadata !1998, metadata !420), !dbg !1999
  store i8 0, i8* %10, align 1, !dbg !1999
  %11 = load %struct.pkgset*, %struct.pkgset** %4, align 8, !dbg !2000
  %12 = icmp eq %struct.pkgset* %11, null, !dbg !2002
  br i1 %12, label %13, label %14, !dbg !2003

; <label>:13:                                     ; preds = %2
  store i1 false, i1* %3, align 1, !dbg !2004
  br label %66, !dbg !2004

; <label>:14:                                     ; preds = %2
  %15 = call i8* @getenv(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.59, i32 0, i32 0)) #9, !dbg !2005
  store i8* %15, i8** %6, align 8, !dbg !2006
  %16 = load i8*, i8** %6, align 8, !dbg !2007
  %17 = call %struct.dpkg_arch* @dpkg_arch_find(i8* %16), !dbg !2008
  store %struct.dpkg_arch* %17, %struct.dpkg_arch** %8, align 8, !dbg !2009
  %18 = load %struct.dpkg_arch*, %struct.dpkg_arch** %8, align 8, !dbg !2010
  %19 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %18, i32 0, i32 2, !dbg !2012
  %20 = load i32, i32* %19, align 8, !dbg !2012
  %21 = icmp eq i32 %20, 0, !dbg !2013
  br i1 %21, label %27, label %22, !dbg !2014

; <label>:22:                                     ; preds = %14
  %23 = load %struct.dpkg_arch*, %struct.dpkg_arch** %8, align 8, !dbg !2015
  %24 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %23, i32 0, i32 2, !dbg !2017
  %25 = load i32, i32* %24, align 8, !dbg !2017
  %26 = icmp eq i32 %25, 1, !dbg !2018
  br i1 %26, label %27, label %28, !dbg !2019

; <label>:27:                                     ; preds = %22, %14
  store i1 false, i1* %3, align 1, !dbg !2020
  br label %66, !dbg !2020

; <label>:28:                                     ; preds = %22
  %29 = load %struct.pkgset*, %struct.pkgset** %4, align 8, !dbg !2021
  %30 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %29, i32 0, i32 2, !dbg !2023
  store %struct.pkginfo* %30, %struct.pkginfo** %7, align 8, !dbg !2024
  br label %31, !dbg !2025

; <label>:31:                                     ; preds = %36, %28
  %32 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !2026
  %33 = icmp ne %struct.pkginfo* %32, null, !dbg !2029
  br i1 %33, label %34, label %40, !dbg !2029

; <label>:34:                                     ; preds = %31
  %35 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !2030
  call void @ensure_packagefiles_available(%struct.pkginfo* %35), !dbg !2031
  br label %36, !dbg !2031

; <label>:36:                                     ; preds = %34
  %37 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !2032
  %38 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %37, i32 0, i32 1, !dbg !2034
  %39 = load %struct.pkginfo*, %struct.pkginfo** %38, align 8, !dbg !2034
  store %struct.pkginfo* %39, %struct.pkginfo** %7, align 8, !dbg !2035
  br label %31, !dbg !2036, !llvm.loop !2037

; <label>:40:                                     ; preds = %31
  %41 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !2039
  %42 = call %struct.fsys_node_pkgs_iter* @fsys_node_pkgs_iter_new(%struct.fsys_namenode* %41), !dbg !2040
  store %struct.fsys_node_pkgs_iter* %42, %struct.fsys_node_pkgs_iter** %9, align 8, !dbg !2041
  br label %43, !dbg !2042

; <label>:43:                                     ; preds = %61, %40
  %44 = load %struct.fsys_node_pkgs_iter*, %struct.fsys_node_pkgs_iter** %9, align 8, !dbg !2043
  %45 = call %struct.pkginfo* @fsys_node_pkgs_iter_next(%struct.fsys_node_pkgs_iter* %44), !dbg !2045
  store %struct.pkginfo* %45, %struct.pkginfo** %7, align 8, !dbg !2046
  %46 = icmp ne %struct.pkginfo* %45, null, !dbg !2047
  br i1 %46, label %47, label %62, !dbg !2047

; <label>:47:                                     ; preds = %43
  %48 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !2048
  %49 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %48, i32 0, i32 0, !dbg !2051
  %50 = load %struct.pkgset*, %struct.pkgset** %49, align 8, !dbg !2051
  %51 = load %struct.pkgset*, %struct.pkgset** %4, align 8, !dbg !2052
  %52 = icmp eq %struct.pkgset* %50, %51, !dbg !2053
  br i1 %52, label %53, label %61, !dbg !2054

; <label>:53:                                     ; preds = %47
  %54 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !2055
  %55 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %54, i32 0, i32 9, !dbg !2057
  %56 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %55, i32 0, i32 3, !dbg !2058
  %57 = load %struct.dpkg_arch*, %struct.dpkg_arch** %56, align 8, !dbg !2058
  %58 = load %struct.dpkg_arch*, %struct.dpkg_arch** %8, align 8, !dbg !2059
  %59 = icmp ne %struct.dpkg_arch* %57, %58, !dbg !2060
  br i1 %59, label %60, label %61, !dbg !2061

; <label>:60:                                     ; preds = %53
  store i8 1, i8* %10, align 1, !dbg !2062
  br label %62, !dbg !2064

; <label>:61:                                     ; preds = %53, %47
  br label %43, !dbg !2065, !llvm.loop !2067

; <label>:62:                                     ; preds = %60, %43
  %63 = load %struct.fsys_node_pkgs_iter*, %struct.fsys_node_pkgs_iter** %9, align 8, !dbg !2068
  call void @fsys_node_pkgs_iter_free(%struct.fsys_node_pkgs_iter* %63), !dbg !2069
  %64 = load i8, i8* %10, align 1, !dbg !2070
  %65 = trunc i8 %64 to i1, !dbg !2070
  store i1 %65, i1* %3, align 1, !dbg !2071
  br label %66, !dbg !2071

; <label>:66:                                     ; preds = %62, %27, %13
  %67 = load i1, i1* %3, align 1, !dbg !2072
  ret i1 %67, !dbg !2072
}

declare %struct.dpkg_arch* @dpkg_arch_find(i8*) #2

declare void @glob_list_prepend(%struct.glob_node**, i8*) #2

declare i8* @m_strdup(i8*) #2

declare i32 @fnmatch(i8*, i8*, i32) #2

declare void @glob_list_free(%struct.glob_node*) #2

declare i8* @dpkg_fsys_get_path(i8*) #2

declare i8* @dpkg_get_progname() #2

declare void @m_output(%struct._IO_FILE*, i8*) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #8

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly }
attributes #11 = { noreturn }
attributes #12 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!413, !414}
!llvm.ident = !{!415}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !172, globals: !174)
!1 = !DIFile(filename: "[inter]src--divertcmd.o.i", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-divert")
!2 = !{!3, !14, !70, !83, !91, !95, !105, !115, !126, !135, !146, !152, !156, !162, !168}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "modstatdb_rw", file: !4, line: 263, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../lib/dpkg/dpkg-db.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-divert")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13}
!6 = !DIEnumerator(name: "msdbrw_readonly", value: 0)
!7 = !DIEnumerator(name: "msdbrw_needsuperuserlockonly", value: 1)
!8 = !DIEnumerator(name: "msdbrw_writeifposs", value: 2)
!9 = !DIEnumerator(name: "msdbrw_write", value: 3)
!10 = !DIEnumerator(name: "msdbrw_needsuperuser", value: 4)
!11 = !DIEnumerator(name: "msdbrw_available_readonly", value: 256)
!12 = !DIEnumerator(name: "msdbrw_available_write", value: 512)
!13 = !DIEnumerator(name: "msdbrw_available_mask", value: 65280)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !16, file: !15, line: 137, size: 32, align: 32, elements: !66)
!15 = !DIFile(filename: "divertcmd.c", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-divert")
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !15, line: 135, size: 1280, align: 64, elements: !17)
!17 = !{!18, !22, !23}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !16, file: !15, line: 136, baseType: !19, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!21 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "stat_state", scope: !16, file: !15, line: 141, baseType: !14, size: 32, align: 32, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !16, file: !15, line: 142, baseType: !24, size: 1152, align: 64, offset: 128)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !25, line: 46, size: 1152, align: 64, elements: !26)
!25 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-divert")
!26 = !{!27, !31, !33, !35, !38, !40, !42, !44, !45, !48, !50, !52, !60, !61, !62}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !24, file: !25, line: 48, baseType: !28, size: 64, align: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !29, line: 124, baseType: !30)
!29 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-divert")
!30 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !24, file: !25, line: 53, baseType: !32, size: 64, align: 64, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !29, line: 127, baseType: !30)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !24, file: !25, line: 61, baseType: !34, size: 64, align: 64, offset: 128)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !29, line: 130, baseType: !30)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !24, file: !25, line: 62, baseType: !36, size: 32, align: 32, offset: 192)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !29, line: 129, baseType: !37)
!37 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !24, file: !25, line: 64, baseType: !39, size: 32, align: 32, offset: 224)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !29, line: 125, baseType: !37)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !24, file: !25, line: 65, baseType: !41, size: 32, align: 32, offset: 256)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !29, line: 126, baseType: !37)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !24, file: !25, line: 67, baseType: !43, size: 32, align: 32, offset: 288)
!43 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !24, file: !25, line: 69, baseType: !28, size: 64, align: 64, offset: 320)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !24, file: !25, line: 74, baseType: !46, size: 64, align: 64, offset: 384)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !29, line: 131, baseType: !47)
!47 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !24, file: !25, line: 78, baseType: !49, size: 64, align: 64, offset: 448)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !29, line: 153, baseType: !47)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !24, file: !25, line: 80, baseType: !51, size: 64, align: 64, offset: 512)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !29, line: 158, baseType: !47)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !24, file: !25, line: 91, baseType: !53, size: 128, align: 64, offset: 576)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !54, line: 120, size: 128, align: 64, elements: !55)
!54 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-divert")
!55 = !{!56, !58}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !53, file: !54, line: 122, baseType: !57, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !29, line: 139, baseType: !47)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !53, file: !54, line: 123, baseType: !59, size: 64, align: 64, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !29, line: 175, baseType: !47)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !24, file: !25, line: 92, baseType: !53, size: 128, align: 64, offset: 704)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !24, file: !25, line: 93, baseType: !53, size: 128, align: 64, offset: 832)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !24, file: !25, line: 106, baseType: !63, size: 192, align: 64, offset: 960)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 192, align: 64, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 3)
!66 = !{!67, !68, !69}
!67 = !DIEnumerator(name: "FILE_STAT_INVALID", value: 0)
!68 = !DIEnumerator(name: "FILE_STAT_VALID", value: 1)
!69 = !DIEnumerator(name: "FILE_STAT_NOFILE", value: 2)
!70 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fsys_namenode_flags", file: !71, line: 61, size: 32, align: 32, elements: !72)
!71 = !DIFile(filename: "../lib/dpkg/fsys.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-divert")
!72 = !{!73, !74, !75, !76, !77, !78, !79, !80, !81, !82}
!73 = !DIEnumerator(name: "FNNF_NEW_CONFF", value: 1)
!74 = !DIEnumerator(name: "FNNF_NEW_INARCHIVE", value: 2)
!75 = !DIEnumerator(name: "FNNF_OLD_CONFF", value: 4)
!76 = !DIEnumerator(name: "FNNF_OBS_CONFF", value: 8)
!77 = !DIEnumerator(name: "FNNF_ELIDE_OTHER_LISTS", value: 16)
!78 = !DIEnumerator(name: "FNNF_NO_ATOMIC_OVERWRITE", value: 32)
!79 = !DIEnumerator(name: "FNNF_PLACED_ON_DISK", value: 64)
!80 = !DIEnumerator(name: "FNNF_DEFERRED_FSYNC", value: 128)
!81 = !DIEnumerator(name: "FNNF_DEFERRED_RENAME", value: 256)
!82 = !DIEnumerator(name: "FNNF_FILTERED", value: 512)
!83 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgwant", file: !4, line: 153, size: 32, align: 32, elements: !84)
!84 = !{!85, !86, !87, !88, !89, !90}
!85 = !DIEnumerator(name: "PKG_WANT_UNKNOWN", value: 0)
!86 = !DIEnumerator(name: "PKG_WANT_INSTALL", value: 1)
!87 = !DIEnumerator(name: "PKG_WANT_HOLD", value: 2)
!88 = !DIEnumerator(name: "PKG_WANT_DEINSTALL", value: 3)
!89 = !DIEnumerator(name: "PKG_WANT_PURGE", value: 4)
!90 = !DIEnumerator(name: "PKG_WANT_SENTINEL", value: 5)
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgeflag", file: !4, line: 163, size: 32, align: 32, elements: !92)
!92 = !{!93, !94}
!93 = !DIEnumerator(name: "PKG_EFLAG_OK", value: 0)
!94 = !DIEnumerator(name: "PKG_EFLAG_REINSTREQ", value: 1)
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgstatus", file: !4, line: 168, size: 32, align: 32, elements: !96)
!96 = !{!97, !98, !99, !100, !101, !102, !103, !104}
!97 = !DIEnumerator(name: "PKG_STAT_NOTINSTALLED", value: 0)
!98 = !DIEnumerator(name: "PKG_STAT_CONFIGFILES", value: 1)
!99 = !DIEnumerator(name: "PKG_STAT_HALFINSTALLED", value: 2)
!100 = !DIEnumerator(name: "PKG_STAT_UNPACKED", value: 3)
!101 = !DIEnumerator(name: "PKG_STAT_HALFCONFIGURED", value: 4)
!102 = !DIEnumerator(name: "PKG_STAT_TRIGGERSAWAITED", value: 5)
!103 = !DIEnumerator(name: "PKG_STAT_TRIGGERSPENDING", value: 6)
!104 = !DIEnumerator(name: "PKG_STAT_INSTALLED", value: 7)
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgpriority", file: !4, line: 179, size: 32, align: 32, elements: !106)
!106 = !{!107, !108, !109, !110, !111, !112, !113, !114}
!107 = !DIEnumerator(name: "PKG_PRIO_REQUIRED", value: 0)
!108 = !DIEnumerator(name: "PKG_PRIO_IMPORTANT", value: 1)
!109 = !DIEnumerator(name: "PKG_PRIO_STANDARD", value: 2)
!110 = !DIEnumerator(name: "PKG_PRIO_OPTIONAL", value: 3)
!111 = !DIEnumerator(name: "PKG_PRIO_EXTRA", value: 4)
!112 = !DIEnumerator(name: "PKG_PRIO_OTHER", value: 5)
!113 = !DIEnumerator(name: "PKG_PRIO_UNKNOWN", value: 6)
!114 = !DIEnumerator(name: "PKG_PRIO_UNSET", value: -1)
!115 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_arch_type", file: !116, line: 37, size: 32, align: 32, elements: !117)
!116 = !DIFile(filename: "../lib/dpkg/arch.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-divert")
!117 = !{!118, !119, !120, !121, !122, !123, !124, !125}
!118 = !DIEnumerator(name: "DPKG_ARCH_NONE", value: 0)
!119 = !DIEnumerator(name: "DPKG_ARCH_EMPTY", value: 1)
!120 = !DIEnumerator(name: "DPKG_ARCH_ILLEGAL", value: 2)
!121 = !DIEnumerator(name: "DPKG_ARCH_WILDCARD", value: 3)
!122 = !DIEnumerator(name: "DPKG_ARCH_ALL", value: 4)
!123 = !DIEnumerator(name: "DPKG_ARCH_NATIVE", value: 5)
!124 = !DIEnumerator(name: "DPKG_ARCH_FOREIGN", value: 6)
!125 = !DIEnumerator(name: "DPKG_ARCH_UNKNOWN", value: 7)
!126 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_relation", file: !127, line: 61, size: 32, align: 32, elements: !128)
!127 = !DIFile(filename: "../lib/dpkg/version.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-divert")
!128 = !{!129, !130, !131, !132, !133, !134}
!129 = !DIEnumerator(name: "DPKG_RELATION_NONE", value: 0)
!130 = !DIEnumerator(name: "DPKG_RELATION_EQ", value: 1)
!131 = !DIEnumerator(name: "DPKG_RELATION_LT", value: 2)
!132 = !DIEnumerator(name: "DPKG_RELATION_LE", value: 3)
!133 = !DIEnumerator(name: "DPKG_RELATION_GT", value: 4)
!134 = !DIEnumerator(name: "DPKG_RELATION_GE", value: 5)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "deptype", file: !4, line: 44, size: 32, align: 32, elements: !136)
!136 = !{!137, !138, !139, !140, !141, !142, !143, !144, !145}
!137 = !DIEnumerator(name: "dep_suggests", value: 0)
!138 = !DIEnumerator(name: "dep_recommends", value: 1)
!139 = !DIEnumerator(name: "dep_depends", value: 2)
!140 = !DIEnumerator(name: "dep_predepends", value: 3)
!141 = !DIEnumerator(name: "dep_breaks", value: 4)
!142 = !DIEnumerator(name: "dep_conflicts", value: 5)
!143 = !DIEnumerator(name: "dep_provides", value: 6)
!144 = !DIEnumerator(name: "dep_replaces", value: 7)
!145 = !DIEnumerator(name: "dep_enhances", value: 8)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgmultiarch", file: !4, line: 95, size: 32, align: 32, elements: !147)
!147 = !{!148, !149, !150, !151}
!148 = !DIEnumerator(name: "PKG_MULTIARCH_NO", value: 0)
!149 = !DIEnumerator(name: "PKG_MULTIARCH_SAME", value: 1)
!150 = !DIEnumerator(name: "PKG_MULTIARCH_ALLOWED", value: 2)
!151 = !DIEnumerator(name: "PKG_MULTIARCH_FOREIGN", value: 3)
!152 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "atomic_file_flags", file: !153, line: 36, size: 32, align: 32, elements: !154)
!153 = !DIFile(filename: "../lib/dpkg/atomic-file.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-divert")
!154 = !{!155}
!155 = !DIEnumerator(name: "ATOMIC_FILE_BACKUP", value: 1)
!156 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_msg_type", file: !157, line: 36, size: 32, align: 32, elements: !158)
!157 = !DIFile(filename: "../lib/dpkg/error.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-divert")
!158 = !{!159, !160, !161}
!159 = !DIEnumerator(name: "DPKG_MSG_NONE", value: 0)
!160 = !DIEnumerator(name: "DPKG_MSG_WARN", value: 1)
!161 = !DIEnumerator(name: "DPKG_MSG_ERROR", value: 2)
!162 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !163, line: 41, size: 32, align: 32, elements: !164)
!163 = !DIFile(filename: "../lib/dpkg/ehandle.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-divert")
!164 = !{!165, !166, !167}
!165 = !DIEnumerator(name: "ehflag_normaltidy", value: 1)
!166 = !DIEnumerator(name: "ehflag_bombout", value: 2)
!167 = !DIEnumerator(name: "ehflag_recursiveerror", value: 4)
!168 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fsys_hash_find_flags", file: !71, line: 54, size: 32, align: 32, elements: !169)
!169 = !{!170, !171}
!170 = !DIEnumerator(name: "FHFF_NOCOPY", value: 1)
!171 = !DIEnumerator(name: "FHFF_NONE", value: 2)
!172 = !{!173}
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!174 = !{!175, !176, !177, !206, !207, !208, !400, !404, !405, !406, !407, !411, !412}
!175 = distinct !DIGlobalVariable(name: "admindir", scope: !0, file: !15, line: 54, type: !19, isLocal: true, isDefinition: true, variable: i8** @admindir)
!176 = distinct !DIGlobalVariable(name: "instdir", scope: !0, file: !15, line: 55, type: !19, isLocal: false, isDefinition: true, variable: i8** @instdir)
!177 = distinct !DIGlobalVariable(name: "cmdinfos", scope: !0, file: !15, line: 807, type: !178, isLocal: true, isDefinition: true, variable: [18 x %struct.cmdinfo]* @cmdinfos)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 9216, align: 64, elements: !204)
!179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !180)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cmdinfo", file: !181, line: 38, size: 512, align: 64, elements: !182)
!181 = !DIFile(filename: "../lib/dpkg/options.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-divert")
!182 = !{!183, !184, !185, !186, !188, !190, !195, !196, !197}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "olong", scope: !180, file: !181, line: 39, baseType: !19, size: 64, align: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "oshort", scope: !180, file: !181, line: 40, baseType: !21, size: 8, align: 8, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "takesvalue", scope: !180, file: !181, line: 48, baseType: !43, size: 32, align: 32, offset: 96)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "iassignto", scope: !180, file: !181, line: 49, baseType: !187, size: 64, align: 64, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "sassignto", scope: !180, file: !181, line: 50, baseType: !189, size: 64, align: 64, offset: 192)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !180, file: !181, line: 51, baseType: !191, size: 64, align: 64, offset: 256)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64, align: 64)
!192 = !DISubroutineType(types: !193)
!193 = !{null, !194, !19}
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64, align: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "arg_int", scope: !180, file: !181, line: 53, baseType: !43, size: 32, align: 32, offset: 320)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "arg_ptr", scope: !180, file: !181, line: 54, baseType: !173, size: 64, align: 64, offset: 384)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !180, file: !181, line: 56, baseType: !198, size: 64, align: 64, offset: 448)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64, align: 64)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "action_func", file: !181, line: 36, baseType: !200)
!200 = !DISubroutineType(types: !201)
!201 = !{!43, !202}
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, align: 64)
!203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!204 = !{!205}
!205 = !DISubrange(count: 18)
!206 = distinct !DIGlobalVariable(name: "opt_divertto", scope: !0, file: !15, line: 59, type: !19, isLocal: true, isDefinition: true, variable: i8** @opt_divertto)
!207 = distinct !DIGlobalVariable(name: "opt_pkgname", scope: !0, file: !15, line: 58, type: !19, isLocal: true, isDefinition: true, variable: i8** @opt_pkgname)
!208 = distinct !DIGlobalVariable(name: "str", scope: !209, file: !15, line: 354, type: !392, isLocal: true, isDefinition: true, variable: %struct.varbuf* @diversion_describe.str)
!209 = distinct !DISubprogram(name: "diversion_describe", scope: !15, file: !15, line: 352, type: !210, isLocal: true, isDefinition: true, scopeLine: 353, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !391)
!210 = !DISubroutineType(types: !211)
!211 = !{!19, !212}
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64, align: 64)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_diversion", file: !71, line: 151, size: 256, align: 64, elements: !214)
!214 = !{!215, !254, !255, !390}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "useinstead", scope: !213, file: !71, line: 152, baseType: !216, size: 64, align: 64)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, align: 64)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode", file: !71, line: 90, size: 640, align: 64, elements: !218)
!218 = !{!219, !220, !221, !224, !225, !240, !243, !244, !245, !246}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !217, file: !71, line: 91, baseType: !216, size: 64, align: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !217, file: !71, line: 92, baseType: !19, size: 64, align: 64, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "packages", scope: !217, file: !71, line: 93, baseType: !222, size: 64, align: 64, offset: 128)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64, align: 64)
!223 = !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_list", file: !71, line: 93, flags: DIFlagFwdDecl)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "divert", scope: !217, file: !71, line: 94, baseType: !212, size: 64, align: 64, offset: 192)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "statoverride", scope: !217, file: !71, line: 101, baseType: !226, size: 64, align: 64, offset: 256)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, align: 64)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_stat", file: !228, line: 40, size: 256, align: 64, elements: !229)
!228 = !DIFile(filename: "../lib/dpkg/file.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-divert")
!229 = !{!230, !233, !235, !237, !239}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !227, file: !228, line: 41, baseType: !231, size: 32, align: 32)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !232, line: 80, baseType: !39)
!232 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-divert")
!233 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !227, file: !228, line: 42, baseType: !234, size: 32, align: 32, offset: 32)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !232, line: 65, baseType: !41)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !227, file: !228, line: 43, baseType: !236, size: 32, align: 32, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !232, line: 70, baseType: !36)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "uname", scope: !227, file: !228, line: 47, baseType: !238, size: 64, align: 64, offset: 128)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !227, file: !228, line: 48, baseType: !238, size: 64, align: 64, offset: 192)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "trig_interested", scope: !217, file: !71, line: 103, baseType: !241, size: 64, align: 64, offset: 320)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64, align: 64)
!242 = !DICompositeType(tag: DW_TAG_structure_type, name: "trigfileint", file: !71, line: 103, flags: DIFlagFwdDecl)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !217, file: !71, line: 111, baseType: !70, size: 32, align: 32, offset: 384)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "oldhash", scope: !217, file: !71, line: 114, baseType: !19, size: 64, align: 64, offset: 448)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "newhash", scope: !217, file: !71, line: 117, baseType: !19, size: 64, align: 64, offset: 512)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "file_ondisk_id", scope: !217, file: !71, line: 119, baseType: !247, size: 64, align: 64, offset: 576)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64, align: 64)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ondisk_id", file: !71, line: 85, size: 128, align: 64, elements: !249)
!249 = !{!250, !252}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "id_dev", scope: !248, file: !71, line: 86, baseType: !251, size: 64, align: 64)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !232, line: 60, baseType: !28)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "id_ino", scope: !248, file: !71, line: 87, baseType: !253, size: 64, align: 64, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !232, line: 48, baseType: !32)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "camefrom", scope: !213, file: !71, line: 153, baseType: !216, size: 64, align: 64, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "pkgset", scope: !213, file: !71, line: 154, baseType: !256, size: 64, align: 64, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64, align: 64)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgset", file: !4, line: 242, size: 3392, align: 64, elements: !258)
!258 = !{!259, !260, !261, !384, !389}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !257, file: !4, line: 243, baseType: !256, size: 64, align: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !257, file: !4, line: 244, baseType: !19, size: 64, align: 64, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !257, file: !4, line: 245, baseType: !262, size: 3072, align: 64, offset: 128)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkginfo", file: !4, line: 195, size: 3072, align: 64, elements: !263)
!263 = !{!264, !265, !267, !268, !269, !270, !271, !272, !273, !279, !338, !339, !342, !351, !367, !368, !374, !380, !382, !383}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !262, file: !4, line: 196, baseType: !256, size: 64, align: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "arch_next", scope: !262, file: !4, line: 197, baseType: !266, size: 64, align: 64, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64, align: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "want", scope: !262, file: !4, line: 199, baseType: !83, size: 32, align: 32, offset: 128)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "eflag", scope: !262, file: !4, line: 201, baseType: !91, size: 32, align: 32, offset: 160)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !262, file: !4, line: 202, baseType: !95, size: 32, align: 32, offset: 192)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !262, file: !4, line: 203, baseType: !105, size: 32, align: 32, offset: 224)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "otherpriority", scope: !262, file: !4, line: 204, baseType: !19, size: 64, align: 64, offset: 256)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "section", scope: !262, file: !4, line: 205, baseType: !19, size: 64, align: 64, offset: 320)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "configversion", scope: !262, file: !4, line: 206, baseType: !274, size: 192, align: 64, offset: 384)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_version", file: !127, line: 42, size: 192, align: 64, elements: !275)
!275 = !{!276, !277, !278}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !274, file: !127, line: 44, baseType: !37, size: 32, align: 32)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !274, file: !127, line: 46, baseType: !19, size: 64, align: 64, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !274, file: !127, line: 48, baseType: !19, size: 64, align: 64, offset: 128)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !262, file: !4, line: 207, baseType: !280, size: 960, align: 64, offset: 576)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgbin", file: !4, line: 107, size: 960, align: 64, elements: !281)
!281 = !{!282, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !331}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "depends", scope: !280, file: !4, line: 108, baseType: !283, size: 64, align: 64)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64, align: 64)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dependency", file: !4, line: 56, size: 256, align: 64, elements: !285)
!285 = !{!286, !287, !288, !311}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !284, file: !4, line: 57, baseType: !266, size: 64, align: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !284, file: !4, line: 58, baseType: !283, size: 64, align: 64, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !284, file: !4, line: 59, baseType: !289, size: 64, align: 64, offset: 128)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64, align: 64)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "deppossi", file: !4, line: 63, size: 640, align: 64, elements: !291)
!291 = !{!292, !293, !294, !295, !296, !297, !306, !307, !308, !310}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !290, file: !4, line: 64, baseType: !283, size: 64, align: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "ed", scope: !290, file: !4, line: 65, baseType: !256, size: 64, align: 64, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !290, file: !4, line: 66, baseType: !289, size: 64, align: 64, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "rev_next", scope: !290, file: !4, line: 66, baseType: !289, size: 64, align: 64, offset: 192)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "rev_prev", scope: !290, file: !4, line: 66, baseType: !289, size: 64, align: 64, offset: 256)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !290, file: !4, line: 67, baseType: !298, size: 64, align: 64, offset: 320)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64, align: 64)
!299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !300)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_arch", file: !116, line: 48, size: 192, align: 64, elements: !301)
!301 = !{!302, !304, !305}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !300, file: !116, line: 49, baseType: !303, size: 64, align: 64)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64, align: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !300, file: !116, line: 50, baseType: !19, size: 64, align: 64, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !300, file: !116, line: 51, baseType: !115, size: 32, align: 32, offset: 128)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !290, file: !4, line: 68, baseType: !274, size: 192, align: 64, offset: 384)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "verrel", scope: !290, file: !4, line: 69, baseType: !126, size: 32, align: 32, offset: 576)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "arch_is_implicit", scope: !290, file: !4, line: 70, baseType: !309, size: 8, align: 8, offset: 608)
!309 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "cyclebreak", scope: !290, file: !4, line: 71, baseType: !309, size: 8, align: 8, offset: 616)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !284, file: !4, line: 60, baseType: !135, size: 32, align: 32, offset: 192)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "essential", scope: !280, file: !4, line: 110, baseType: !309, size: 8, align: 8, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "multiarch", scope: !280, file: !4, line: 111, baseType: !146, size: 32, align: 32, offset: 96)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !280, file: !4, line: 112, baseType: !298, size: 64, align: 64, offset: 128)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "pkgname_archqual", scope: !280, file: !4, line: 115, baseType: !19, size: 64, align: 64, offset: 192)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !280, file: !4, line: 116, baseType: !19, size: 64, align: 64, offset: 256)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "maintainer", scope: !280, file: !4, line: 117, baseType: !19, size: 64, align: 64, offset: 320)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !280, file: !4, line: 118, baseType: !19, size: 64, align: 64, offset: 384)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "installedsize", scope: !280, file: !4, line: 119, baseType: !19, size: 64, align: 64, offset: 448)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !280, file: !4, line: 120, baseType: !19, size: 64, align: 64, offset: 512)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "bugs", scope: !280, file: !4, line: 121, baseType: !19, size: 64, align: 64, offset: 576)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !280, file: !4, line: 122, baseType: !274, size: 192, align: 64, offset: 640)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "conffiles", scope: !280, file: !4, line: 123, baseType: !324, size: 64, align: 64, offset: 832)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64, align: 64)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conffile", file: !4, line: 80, size: 256, align: 64, elements: !326)
!326 = !{!327, !328, !329, !330}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !325, file: !4, line: 81, baseType: !324, size: 64, align: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !325, file: !4, line: 82, baseType: !19, size: 64, align: 64, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !325, file: !4, line: 83, baseType: !19, size: 64, align: 64, offset: 128)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "obsolete", scope: !325, file: !4, line: 84, baseType: !309, size: 8, align: 8, offset: 192)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "arbs", scope: !280, file: !4, line: 124, baseType: !332, size: 64, align: 64, offset: 896)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64, align: 64)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arbitraryfield", file: !4, line: 74, size: 192, align: 64, elements: !334)
!334 = !{!335, !336, !337}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !333, file: !4, line: 75, baseType: !332, size: 64, align: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !333, file: !4, line: 76, baseType: !19, size: 64, align: 64, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !333, file: !4, line: 77, baseType: !19, size: 64, align: 64, offset: 128)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !262, file: !4, line: 208, baseType: !280, size: 960, align: 64, offset: 1536)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "clientdata", scope: !262, file: !4, line: 209, baseType: !340, size: 64, align: 64, offset: 2496)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64, align: 64)
!341 = !DICompositeType(tag: DW_TAG_structure_type, name: "perpackagestate", file: !4, line: 151, flags: DIFlagFwdDecl)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "archives", scope: !262, file: !4, line: 211, baseType: !343, size: 64, align: 64, offset: 2560)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64, align: 64)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archivedetails", file: !4, line: 87, size: 320, align: 64, elements: !345)
!345 = !{!346, !347, !348, !349, !350}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !344, file: !4, line: 88, baseType: !343, size: 64, align: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !344, file: !4, line: 89, baseType: !19, size: 64, align: 64, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "msdosname", scope: !344, file: !4, line: 90, baseType: !19, size: 64, align: 64, offset: 128)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !344, file: !4, line: 91, baseType: !19, size: 64, align: 64, offset: 192)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "md5sum", scope: !344, file: !4, line: 92, baseType: !19, size: 64, align: 64, offset: 256)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "trigaw", scope: !262, file: !4, line: 216, baseType: !352, size: 128, align: 64, offset: 2624)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !262, file: !4, line: 213, size: 128, align: 64, elements: !353)
!353 = !{!354, !366}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !352, file: !4, line: 215, baseType: !355, size: 64, align: 64)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64, align: 64)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigaw", file: !4, line: 142, size: 320, align: 64, elements: !357)
!357 = !{!358, !359, !360, !361}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "aw", scope: !356, file: !4, line: 143, baseType: !266, size: 64, align: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "pend", scope: !356, file: !4, line: 143, baseType: !266, size: 64, align: 64, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "samepend_next", scope: !356, file: !4, line: 144, baseType: !355, size: 64, align: 64, offset: 128)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "sameaw", scope: !356, file: !4, line: 147, baseType: !362, size: 128, align: 64, offset: 192)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !356, file: !4, line: 145, size: 128, align: 64, elements: !363)
!363 = !{!364, !365}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !362, file: !4, line: 146, baseType: !355, size: 64, align: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !362, file: !4, line: 146, baseType: !355, size: 64, align: 64, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !352, file: !4, line: 215, baseType: !355, size: 64, align: 64, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "othertrigaw_head", scope: !262, file: !4, line: 219, baseType: !355, size: 64, align: 64, offset: 2752)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "trigpend_head", scope: !262, file: !4, line: 220, baseType: !369, size: 64, align: 64, offset: 2816)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64, align: 64)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigpend", file: !4, line: 134, size: 128, align: 64, elements: !371)
!371 = !{!372, !373}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !370, file: !4, line: 135, baseType: !369, size: 64, align: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !370, file: !4, line: 136, baseType: !19, size: 64, align: 64, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !262, file: !4, line: 231, baseType: !375, size: 64, align: 64, offset: 2880)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64, align: 64)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode_list", file: !71, line: 122, size: 128, align: 64, elements: !377)
!377 = !{!378, !379}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !376, file: !71, line: 123, baseType: !375, size: 64, align: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "namenode", scope: !376, file: !71, line: 124, baseType: !216, size: 64, align: 64, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_phys_offs", scope: !262, file: !4, line: 232, baseType: !381, size: 64, align: 64, offset: 2944)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !232, line: 86, baseType: !46)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_valid", scope: !262, file: !4, line: 233, baseType: !309, size: 8, align: 8, offset: 3008)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "status_dirty", scope: !262, file: !4, line: 236, baseType: !309, size: 8, align: 8, offset: 3016)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "depended", scope: !257, file: !4, line: 249, baseType: !385, size: 128, align: 64, offset: 3200)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !257, file: !4, line: 246, size: 128, align: 64, elements: !386)
!386 = !{!387, !388}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !385, file: !4, line: 247, baseType: !289, size: 64, align: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !385, file: !4, line: 248, baseType: !289, size: 64, align: 64, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "installed_instances", scope: !257, file: !4, line: 250, baseType: !43, size: 32, align: 32, offset: 3328)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !213, file: !71, line: 157, baseType: !212, size: 64, align: 64, offset: 192)
!391 = !{}
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varbuf", file: !393, line: 55, size: 192, align: 64, elements: !394)
!393 = !DIFile(filename: "../lib/dpkg/varbuf.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-divert")
!394 = !{!395, !398, !399}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !392, file: !393, line: 56, baseType: !396, size: 64, align: 64)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !397, line: 216, baseType: !30)
!397 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-divert")
!398 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !392, file: !393, line: 56, baseType: !396, size: 64, align: 64, offset: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !392, file: !393, line: 57, baseType: !238, size: 64, align: 64, offset: 128)
!400 = distinct !DIGlobalVariable(name: "str", scope: !401, file: !15, line: 334, type: !392, isLocal: true, isDefinition: true, variable: %struct.varbuf* @diversion_current.str)
!401 = distinct !DISubprogram(name: "diversion_current", scope: !15, file: !15, line: 332, type: !402, isLocal: true, isDefinition: true, scopeLine: 333, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !391)
!402 = !DISubroutineType(types: !403)
!403 = !{!19, !19}
!404 = distinct !DIGlobalVariable(name: "opt_verbose", scope: !0, file: !15, line: 61, type: !43, isLocal: true, isDefinition: true, variable: i32* @opt_verbose)
!405 = distinct !DIGlobalVariable(name: "opt_rename", scope: !0, file: !15, line: 63, type: !43, isLocal: true, isDefinition: true, variable: i32* @opt_rename)
!406 = distinct !DIGlobalVariable(name: "opt_test", scope: !0, file: !15, line: 62, type: !43, isLocal: true, isDefinition: true, variable: i32* @opt_test)
!407 = distinct !DIGlobalVariable(name: "printforhelp", scope: !0, file: !15, line: 51, type: !408, isLocal: true, isDefinition: true, variable: [43 x i8]* @printforhelp)
!408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 344, align: 8, elements: !409)
!409 = !{!410}
!410 = !DISubrange(count: 43)
!411 = distinct !DIGlobalVariable(name: "opt_pkgname_match_any", scope: !0, file: !15, line: 57, type: !309, isLocal: true, isDefinition: true, variable: i8* @opt_pkgname_match_any)
!412 = distinct !DIGlobalVariable(name: "cmdinfo_add", scope: !0, file: !15, line: 804, type: !179, isLocal: true, isDefinition: true, variable: %struct.cmdinfo* @cmdinfo_add)
!413 = !{i32 2, !"Dwarf Version", i32 4}
!414 = !{i32 2, !"Debug Info Version", i32 3}
!415 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!416 = distinct !DISubprogram(name: "main", scope: !15, file: !15, line: 830, type: !417, isLocal: false, isDefinition: true, scopeLine: 831, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !391)
!417 = !DISubroutineType(types: !418)
!418 = !{!43, !43, !202}
!419 = !DILocalVariable(name: "argc", arg: 1, scope: !416, file: !15, line: 830, type: !43)
!420 = !DIExpression()
!421 = !DILocation(line: 830, column: 10, scope: !416)
!422 = !DILocalVariable(name: "argv", arg: 2, scope: !416, file: !15, line: 830, type: !202)
!423 = !DILocation(line: 830, column: 36, scope: !416)
!424 = !DILocalVariable(name: "env_pkgname", scope: !416, file: !15, line: 832, type: !19)
!425 = !DILocation(line: 832, column: 14, scope: !416)
!426 = !DILocalVariable(name: "ret", scope: !416, file: !15, line: 833, type: !43)
!427 = !DILocation(line: 833, column: 6, scope: !416)
!428 = !DILocation(line: 835, column: 2, scope: !416)
!429 = !DILocation(line: 836, column: 2, scope: !416)
!430 = !DILocation(line: 837, column: 2, scope: !416)
!431 = !DILocation(line: 839, column: 29, scope: !416)
!432 = !DILocation(line: 839, column: 13, scope: !416)
!433 = !DILocation(line: 839, column: 11, scope: !416)
!434 = !DILocation(line: 840, column: 30, scope: !416)
!435 = !DILocation(line: 840, column: 12, scope: !416)
!436 = !DILocation(line: 840, column: 10, scope: !416)
!437 = !DILocation(line: 842, column: 16, scope: !416)
!438 = !DILocation(line: 842, column: 14, scope: !416)
!439 = !DILocation(line: 843, column: 6, scope: !440)
!440 = distinct !DILexicalBlock(scope: !416, file: !15, line: 843, column: 6)
!441 = !DILocation(line: 843, column: 28, scope: !440)
!442 = !DILocation(line: 843, column: 31, scope: !443)
!443 = !DILexicalBlockFile(scope: !440, file: !15, discriminator: 1)
!444 = !DILocation(line: 843, column: 6, scope: !443)
!445 = !DILocation(line: 844, column: 20, scope: !440)
!446 = !DILocation(line: 844, column: 3, scope: !440)
!447 = !DILocation(line: 846, column: 7, scope: !448)
!448 = distinct !DILexicalBlock(scope: !416, file: !15, line: 846, column: 6)
!449 = !DILocation(line: 846, column: 6, scope: !416)
!450 = !DILocation(line: 847, column: 3, scope: !448)
!451 = !DILocation(line: 849, column: 2, scope: !416)
!452 = !DILocation(line: 850, column: 2, scope: !416)
!453 = !DILocation(line: 851, column: 2, scope: !416)
!454 = !DILocation(line: 853, column: 8, scope: !416)
!455 = !DILocation(line: 853, column: 19, scope: !416)
!456 = !DILocation(line: 853, column: 26, scope: !416)
!457 = !DILocation(line: 853, column: 6, scope: !416)
!458 = !DILocation(line: 855, column: 2, scope: !416)
!459 = !DILocation(line: 857, column: 2, scope: !416)
!460 = !DILocation(line: 859, column: 9, scope: !416)
!461 = !DILocation(line: 859, column: 2, scope: !416)
!462 = distinct !DISubprogram(name: "set_package", scope: !15, file: !15, line: 769, type: !192, isLocal: true, isDefinition: true, scopeLine: 770, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !391)
!463 = !DILocalVariable(name: "cip", arg: 1, scope: !462, file: !15, line: 769, type: !194)
!464 = !DILocation(line: 769, column: 35, scope: !462)
!465 = !DILocalVariable(name: "value", arg: 2, scope: !462, file: !15, line: 769, type: !19)
!466 = !DILocation(line: 769, column: 52, scope: !462)
!467 = !DILocation(line: 771, column: 24, scope: !462)
!468 = !DILocation(line: 774, column: 16, scope: !462)
!469 = !DILocation(line: 774, column: 14, scope: !462)
!470 = !DILocation(line: 776, column: 6, scope: !471)
!471 = distinct !DILexicalBlock(scope: !462, file: !15, line: 776, column: 6)
!472 = !DILocation(line: 776, column: 18, scope: !471)
!473 = !DILocation(line: 776, column: 28, scope: !474)
!474 = !DILexicalBlockFile(scope: !471, file: !15, discriminator: 1)
!475 = !DILocation(line: 776, column: 21, scope: !474)
!476 = !DILocation(line: 776, column: 47, scope: !474)
!477 = !DILocation(line: 776, column: 6, scope: !474)
!478 = !DILocation(line: 777, column: 12, scope: !471)
!479 = !DILocation(line: 777, column: 3, scope: !474)
!480 = !DILocation(line: 777, column: 3, scope: !471)
!481 = !DILocation(line: 778, column: 1, scope: !462)
!482 = distinct !DISubprogram(name: "diversion_add", scope: !15, file: !15, line: 462, type: !200, isLocal: true, isDefinition: true, scopeLine: 463, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !391)
!483 = !DILocalVariable(name: "argv", arg: 1, scope: !482, file: !15, line: 462, type: !202)
!484 = !DILocation(line: 462, column: 34, scope: !482)
!485 = !DILocalVariable(name: "filename", scope: !482, file: !15, line: 464, type: !19)
!486 = !DILocation(line: 464, column: 14, scope: !482)
!487 = !DILocation(line: 464, column: 25, scope: !482)
!488 = !DILocalVariable(name: "file_from", scope: !482, file: !15, line: 465, type: !16)
!489 = !DILocation(line: 465, column: 14, scope: !482)
!490 = !DILocalVariable(name: "file_to", scope: !482, file: !15, line: 465, type: !16)
!491 = !DILocation(line: 465, column: 25, scope: !482)
!492 = !DILocalVariable(name: "contest", scope: !482, file: !15, line: 466, type: !212)
!493 = !DILocation(line: 466, column: 25, scope: !482)
!494 = !DILocalVariable(name: "altname", scope: !482, file: !15, line: 466, type: !212)
!495 = !DILocation(line: 466, column: 35, scope: !482)
!496 = !DILocalVariable(name: "fnn_from", scope: !482, file: !15, line: 467, type: !216)
!497 = !DILocation(line: 467, column: 24, scope: !482)
!498 = !DILocalVariable(name: "fnn_to", scope: !482, file: !15, line: 467, type: !216)
!499 = !DILocation(line: 467, column: 35, scope: !482)
!500 = !DILocalVariable(name: "pkgset", scope: !482, file: !15, line: 468, type: !256)
!501 = !DILocation(line: 468, column: 17, scope: !482)
!502 = !DILocation(line: 470, column: 24, scope: !482)
!503 = !DILocation(line: 471, column: 2, scope: !482)
!504 = !DILocation(line: 474, column: 7, scope: !505)
!505 = distinct !DILexicalBlock(scope: !482, file: !15, line: 474, column: 6)
!506 = !DILocation(line: 474, column: 16, scope: !505)
!507 = !DILocation(line: 474, column: 19, scope: !508)
!508 = !DILexicalBlockFile(scope: !505, file: !15, discriminator: 1)
!509 = !DILocation(line: 474, column: 6, scope: !508)
!510 = !DILocation(line: 475, column: 12, scope: !505)
!511 = !DILocation(line: 475, column: 53, scope: !505)
!512 = !DILocation(line: 475, column: 64, scope: !505)
!513 = !DILocation(line: 475, column: 3, scope: !508)
!514 = !DILocation(line: 475, column: 3, scope: !505)
!515 = !DILocation(line: 477, column: 27, scope: !482)
!516 = !DILocation(line: 477, column: 2, scope: !482)
!517 = !DILocation(line: 479, column: 24, scope: !482)
!518 = !DILocation(line: 479, column: 2, scope: !482)
!519 = !DILocation(line: 480, column: 2, scope: !482)
!520 = !DILocation(line: 482, column: 16, scope: !521)
!521 = distinct !DILexicalBlock(scope: !482, file: !15, line: 482, column: 6)
!522 = !DILocation(line: 482, column: 27, scope: !521)
!523 = !DILocation(line: 482, column: 46, scope: !521)
!524 = !DILocation(line: 483, column: 15, scope: !521)
!525 = !DILocation(line: 483, column: 20, scope: !521)
!526 = !DILocation(line: 483, column: 8, scope: !521)
!527 = !DILocation(line: 483, column: 19, scope: !521)
!528 = !DILocation(line: 482, column: 6, scope: !529)
!529 = !DILexicalBlockFile(scope: !482, file: !15, discriminator: 1)
!530 = !DILocation(line: 484, column: 12, scope: !521)
!531 = !DILocation(line: 484, column: 3, scope: !532)
!532 = !DILexicalBlockFile(scope: !521, file: !15, discriminator: 1)
!533 = !DILocation(line: 484, column: 3, scope: !521)
!534 = !DILocation(line: 486, column: 33, scope: !482)
!535 = !DILocation(line: 486, column: 13, scope: !482)
!536 = !DILocation(line: 486, column: 11, scope: !482)
!537 = !DILocation(line: 489, column: 6, scope: !538)
!538 = distinct !DILexicalBlock(scope: !482, file: !15, line: 489, column: 6)
!539 = !DILocation(line: 489, column: 19, scope: !538)
!540 = !DILocation(line: 489, column: 6, scope: !482)
!541 = !DILocation(line: 490, column: 40, scope: !538)
!542 = !DILocation(line: 490, column: 18, scope: !538)
!543 = !DILocation(line: 490, column: 16, scope: !538)
!544 = !DILocation(line: 490, column: 3, scope: !538)
!545 = !DILocation(line: 492, column: 13, scope: !546)
!546 = distinct !DILexicalBlock(scope: !482, file: !15, line: 492, column: 6)
!547 = !DILocation(line: 492, column: 23, scope: !546)
!548 = !DILocation(line: 492, column: 6, scope: !546)
!549 = !DILocation(line: 492, column: 37, scope: !546)
!550 = !DILocation(line: 492, column: 6, scope: !482)
!551 = !DILocation(line: 493, column: 12, scope: !546)
!552 = !DILocation(line: 493, column: 58, scope: !546)
!553 = !DILocation(line: 493, column: 3, scope: !554)
!554 = !DILexicalBlockFile(scope: !546, file: !15, discriminator: 1)
!555 = !DILocation(line: 493, column: 3, scope: !546)
!556 = !DILocation(line: 495, column: 22, scope: !482)
!557 = !DILocation(line: 495, column: 2, scope: !482)
!558 = !DILocation(line: 497, column: 31, scope: !482)
!559 = !DILocation(line: 497, column: 11, scope: !482)
!560 = !DILocation(line: 497, column: 9, scope: !482)
!561 = !DILocation(line: 500, column: 6, scope: !562)
!562 = distinct !DILexicalBlock(scope: !482, file: !15, line: 500, column: 6)
!563 = !DILocation(line: 500, column: 18, scope: !562)
!564 = !DILocation(line: 500, column: 6, scope: !482)
!565 = !DILocation(line: 501, column: 10, scope: !562)
!566 = !DILocation(line: 501, column: 3, scope: !562)
!567 = !DILocation(line: 503, column: 30, scope: !562)
!568 = !DILocation(line: 503, column: 12, scope: !562)
!569 = !DILocation(line: 503, column: 10, scope: !562)
!570 = !DILocation(line: 506, column: 6, scope: !571)
!571 = distinct !DILexicalBlock(scope: !482, file: !15, line: 506, column: 6)
!572 = !DILocation(line: 506, column: 16, scope: !571)
!573 = !DILocation(line: 506, column: 23, scope: !571)
!574 = !DILocation(line: 506, column: 26, scope: !575)
!575 = !DILexicalBlockFile(scope: !571, file: !15, discriminator: 1)
!576 = !DILocation(line: 506, column: 34, scope: !575)
!577 = !DILocation(line: 506, column: 6, scope: !575)
!578 = !DILocation(line: 507, column: 7, scope: !579)
!579 = distinct !DILexicalBlock(scope: !580, file: !15, line: 507, column: 7)
!580 = distinct !DILexicalBlock(scope: !571, file: !15, line: 506, column: 42)
!581 = !DILocation(line: 507, column: 15, scope: !579)
!582 = !DILocation(line: 507, column: 22, scope: !579)
!583 = !DILocation(line: 507, column: 25, scope: !584)
!584 = !DILexicalBlockFile(scope: !579, file: !15, discriminator: 1)
!585 = !DILocation(line: 507, column: 33, scope: !584)
!586 = !DILocation(line: 507, column: 41, scope: !584)
!587 = !DILocation(line: 507, column: 50, scope: !584)
!588 = !DILocation(line: 508, column: 14, scope: !579)
!589 = !DILocation(line: 508, column: 22, scope: !579)
!590 = !DILocation(line: 508, column: 30, scope: !579)
!591 = !DILocation(line: 508, column: 40, scope: !579)
!592 = !DILocation(line: 508, column: 46, scope: !579)
!593 = !DILocation(line: 508, column: 7, scope: !579)
!594 = !DILocation(line: 508, column: 56, scope: !579)
!595 = !DILocation(line: 508, column: 61, scope: !579)
!596 = !DILocation(line: 509, column: 7, scope: !579)
!597 = !DILocation(line: 509, column: 17, scope: !579)
!598 = !DILocation(line: 509, column: 24, scope: !579)
!599 = !DILocation(line: 509, column: 27, scope: !584)
!600 = !DILocation(line: 509, column: 37, scope: !584)
!601 = !DILocation(line: 509, column: 45, scope: !584)
!602 = !DILocation(line: 509, column: 56, scope: !584)
!603 = !DILocation(line: 510, column: 14, scope: !579)
!604 = !DILocation(line: 510, column: 24, scope: !579)
!605 = !DILocation(line: 510, column: 32, scope: !579)
!606 = !DILocation(line: 510, column: 44, scope: !579)
!607 = !DILocation(line: 510, column: 50, scope: !579)
!608 = !DILocation(line: 510, column: 7, scope: !579)
!609 = !DILocation(line: 510, column: 64, scope: !579)
!610 = !DILocation(line: 510, column: 69, scope: !579)
!611 = !DILocation(line: 511, column: 7, scope: !579)
!612 = !DILocation(line: 511, column: 17, scope: !579)
!613 = !DILocation(line: 511, column: 25, scope: !579)
!614 = !DILocation(line: 511, column: 35, scope: !579)
!615 = !DILocation(line: 511, column: 32, scope: !579)
!616 = !DILocation(line: 507, column: 7, scope: !617)
!617 = !DILexicalBlockFile(scope: !580, file: !15, discriminator: 2)
!618 = !DILocation(line: 512, column: 8, scope: !619)
!619 = distinct !DILexicalBlock(scope: !620, file: !15, line: 512, column: 8)
!620 = distinct !DILexicalBlock(scope: !579, file: !15, line: 511, column: 43)
!621 = !DILocation(line: 512, column: 20, scope: !619)
!622 = !DILocation(line: 512, column: 8, scope: !620)
!623 = !DILocation(line: 513, column: 12, scope: !619)
!624 = !DILocation(line: 514, column: 31, scope: !619)
!625 = !DILocation(line: 514, column: 41, scope: !619)
!626 = !DILocation(line: 514, column: 12, scope: !619)
!627 = !DILocation(line: 513, column: 5, scope: !628)
!628 = !DILexicalBlockFile(scope: !619, file: !15, discriminator: 1)
!629 = !DILocation(line: 513, column: 5, scope: !619)
!630 = !DILocation(line: 515, column: 4, scope: !620)
!631 = !DILocation(line: 518, column: 10, scope: !580)
!632 = !DILocation(line: 519, column: 28, scope: !580)
!633 = !DILocation(line: 519, column: 10, scope: !580)
!634 = !DILocation(line: 520, column: 10, scope: !580)
!635 = !DILocation(line: 520, column: 20, scope: !580)
!636 = !DILocation(line: 521, column: 29, scope: !580)
!637 = !DILocation(line: 521, column: 39, scope: !580)
!638 = !DILocation(line: 521, column: 10, scope: !580)
!639 = !DILocation(line: 520, column: 10, scope: !640)
!640 = !DILexicalBlockFile(scope: !580, file: !15, discriminator: 1)
!641 = !DILocation(line: 522, column: 29, scope: !580)
!642 = !DILocation(line: 522, column: 37, scope: !580)
!643 = !DILocation(line: 522, column: 10, scope: !580)
!644 = !DILocation(line: 520, column: 10, scope: !617)
!645 = !DILocation(line: 520, column: 10, scope: !646)
!646 = !DILexicalBlockFile(scope: !580, file: !15, discriminator: 3)
!647 = !DILocation(line: 518, column: 3, scope: !640)
!648 = !DILocation(line: 526, column: 12, scope: !482)
!649 = !DILocation(line: 526, column: 10, scope: !482)
!650 = !DILocation(line: 527, column: 12, scope: !482)
!651 = !DILocation(line: 527, column: 10, scope: !482)
!652 = !DILocation(line: 529, column: 22, scope: !482)
!653 = !DILocation(line: 529, column: 2, scope: !482)
!654 = !DILocation(line: 529, column: 11, scope: !482)
!655 = !DILocation(line: 529, column: 20, scope: !482)
!656 = !DILocation(line: 530, column: 30, scope: !482)
!657 = !DILocation(line: 530, column: 2, scope: !482)
!658 = !DILocation(line: 530, column: 11, scope: !482)
!659 = !DILocation(line: 530, column: 21, scope: !482)
!660 = !DILocation(line: 530, column: 28, scope: !482)
!661 = !DILocation(line: 531, column: 2, scope: !482)
!662 = !DILocation(line: 531, column: 11, scope: !482)
!663 = !DILocation(line: 531, column: 22, scope: !482)
!664 = !DILocation(line: 532, column: 20, scope: !482)
!665 = !DILocation(line: 532, column: 2, scope: !482)
!666 = !DILocation(line: 532, column: 11, scope: !482)
!667 = !DILocation(line: 532, column: 18, scope: !482)
!668 = !DILocation(line: 534, column: 24, scope: !482)
!669 = !DILocation(line: 534, column: 2, scope: !482)
!670 = !DILocation(line: 534, column: 11, scope: !482)
!671 = !DILocation(line: 534, column: 22, scope: !482)
!672 = !DILocation(line: 535, column: 32, scope: !482)
!673 = !DILocation(line: 535, column: 2, scope: !482)
!674 = !DILocation(line: 535, column: 11, scope: !482)
!675 = !DILocation(line: 535, column: 23, scope: !482)
!676 = !DILocation(line: 535, column: 30, scope: !482)
!677 = !DILocation(line: 536, column: 2, scope: !482)
!678 = !DILocation(line: 536, column: 11, scope: !482)
!679 = !DILocation(line: 536, column: 20, scope: !482)
!680 = !DILocation(line: 537, column: 20, scope: !482)
!681 = !DILocation(line: 537, column: 2, scope: !482)
!682 = !DILocation(line: 537, column: 11, scope: !482)
!683 = !DILocation(line: 537, column: 18, scope: !482)
!684 = !DILocation(line: 540, column: 6, scope: !685)
!685 = distinct !DILexicalBlock(scope: !482, file: !15, line: 540, column: 6)
!686 = !DILocation(line: 540, column: 18, scope: !685)
!687 = !DILocation(line: 540, column: 6, scope: !482)
!688 = !DILocation(line: 541, column: 10, scope: !685)
!689 = !DILocation(line: 541, column: 55, scope: !685)
!690 = !DILocation(line: 541, column: 36, scope: !691)
!691 = !DILexicalBlockFile(scope: !685, file: !15, discriminator: 1)
!692 = !DILocation(line: 541, column: 3, scope: !693)
!693 = !DILexicalBlockFile(scope: !685, file: !15, discriminator: 2)
!694 = !DILocation(line: 541, column: 3, scope: !685)
!695 = !DILocation(line: 542, column: 6, scope: !696)
!696 = distinct !DILexicalBlock(scope: !482, file: !15, line: 542, column: 6)
!697 = !DILocation(line: 542, column: 6, scope: !482)
!698 = !DILocation(line: 543, column: 16, scope: !696)
!699 = !DILocation(line: 543, column: 14, scope: !696)
!700 = !DILocation(line: 543, column: 3, scope: !696)
!701 = !DILocation(line: 545, column: 6, scope: !702)
!702 = distinct !DILexicalBlock(scope: !482, file: !15, line: 545, column: 6)
!703 = !DILocation(line: 545, column: 17, scope: !702)
!704 = !DILocation(line: 545, column: 47, scope: !705)
!705 = !DILexicalBlockFile(scope: !702, file: !15, discriminator: 1)
!706 = !DILocation(line: 545, column: 55, scope: !705)
!707 = !DILocation(line: 545, column: 20, scope: !705)
!708 = !DILocation(line: 545, column: 6, scope: !705)
!709 = !DILocation(line: 546, column: 7, scope: !710)
!710 = distinct !DILexicalBlock(scope: !711, file: !15, line: 546, column: 7)
!711 = distinct !DILexicalBlock(scope: !702, file: !15, line: 545, column: 66)
!712 = !DILocation(line: 546, column: 19, scope: !710)
!713 = !DILocation(line: 546, column: 7, scope: !711)
!714 = !DILocation(line: 547, column: 11, scope: !710)
!715 = !DILocation(line: 549, column: 11, scope: !710)
!716 = !DILocation(line: 549, column: 21, scope: !710)
!717 = !DILocation(line: 549, column: 29, scope: !710)
!718 = !DILocation(line: 547, column: 4, scope: !719)
!719 = !DILexicalBlockFile(scope: !710, file: !15, discriminator: 1)
!720 = !DILocation(line: 547, column: 4, scope: !710)
!721 = !DILocation(line: 550, column: 14, scope: !711)
!722 = !DILocation(line: 551, column: 2, scope: !711)
!723 = !DILocation(line: 552, column: 6, scope: !724)
!724 = distinct !DILexicalBlock(scope: !482, file: !15, line: 552, column: 6)
!725 = !DILocation(line: 552, column: 17, scope: !724)
!726 = !DILocation(line: 552, column: 43, scope: !727)
!727 = !DILexicalBlockFile(scope: !724, file: !15, discriminator: 1)
!728 = !DILocation(line: 552, column: 20, scope: !727)
!729 = !DILocation(line: 552, column: 6, scope: !727)
!730 = !DILocation(line: 553, column: 11, scope: !724)
!731 = !DILocation(line: 554, column: 54, scope: !724)
!732 = !DILocation(line: 553, column: 3, scope: !727)
!733 = !DILocation(line: 553, column: 3, scope: !724)
!734 = !DILocation(line: 555, column: 7, scope: !735)
!735 = distinct !DILexicalBlock(scope: !482, file: !15, line: 555, column: 6)
!736 = !DILocation(line: 555, column: 6, scope: !482)
!737 = !DILocation(line: 556, column: 3, scope: !738)
!738 = distinct !DILexicalBlock(scope: !735, file: !15, line: 555, column: 17)
!739 = !DILocation(line: 557, column: 7, scope: !740)
!740 = distinct !DILexicalBlock(scope: !738, file: !15, line: 557, column: 7)
!741 = !DILocation(line: 557, column: 7, scope: !738)
!742 = !DILocation(line: 558, column: 4, scope: !740)
!743 = !DILocation(line: 559, column: 2, scope: !738)
!744 = !DILocation(line: 561, column: 2, scope: !482)
!745 = !DILocation(line: 562, column: 1, scope: !482)
!746 = distinct !DISubprogram(name: "diversion_remove", scope: !15, file: !15, line: 597, type: !200, isLocal: true, isDefinition: true, scopeLine: 598, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !391)
!747 = !DILocalVariable(name: "argv", arg: 1, scope: !746, file: !15, line: 597, type: !202)
!748 = !DILocation(line: 597, column: 37, scope: !746)
!749 = !DILocalVariable(name: "filename", scope: !746, file: !15, line: 599, type: !19)
!750 = !DILocation(line: 599, column: 14, scope: !746)
!751 = !DILocation(line: 599, column: 25, scope: !746)
!752 = !DILocalVariable(name: "namenode", scope: !746, file: !15, line: 600, type: !216)
!753 = !DILocation(line: 600, column: 24, scope: !746)
!754 = !DILocalVariable(name: "contest", scope: !746, file: !15, line: 601, type: !212)
!755 = !DILocation(line: 601, column: 25, scope: !746)
!756 = !DILocalVariable(name: "altname", scope: !746, file: !15, line: 601, type: !212)
!757 = !DILocation(line: 601, column: 35, scope: !746)
!758 = !DILocalVariable(name: "file_from", scope: !746, file: !15, line: 602, type: !16)
!759 = !DILocation(line: 602, column: 14, scope: !746)
!760 = !DILocalVariable(name: "file_to", scope: !746, file: !15, line: 602, type: !16)
!761 = !DILocation(line: 602, column: 25, scope: !746)
!762 = !DILocalVariable(name: "pkgset", scope: !746, file: !15, line: 603, type: !256)
!763 = !DILocation(line: 603, column: 17, scope: !746)
!764 = !DILocation(line: 605, column: 2, scope: !746)
!765 = !DILocation(line: 607, column: 7, scope: !766)
!766 = distinct !DILexicalBlock(scope: !746, file: !15, line: 607, column: 6)
!767 = !DILocation(line: 607, column: 16, scope: !766)
!768 = !DILocation(line: 607, column: 19, scope: !769)
!769 = !DILexicalBlockFile(scope: !766, file: !15, discriminator: 1)
!770 = !DILocation(line: 607, column: 6, scope: !769)
!771 = !DILocation(line: 608, column: 12, scope: !766)
!772 = !DILocation(line: 608, column: 53, scope: !766)
!773 = !DILocation(line: 608, column: 64, scope: !766)
!774 = !DILocation(line: 608, column: 3, scope: !769)
!775 = !DILocation(line: 608, column: 3, scope: !766)
!776 = !DILocation(line: 610, column: 27, scope: !746)
!777 = !DILocation(line: 610, column: 2, scope: !746)
!778 = !DILocation(line: 612, column: 33, scope: !746)
!779 = !DILocation(line: 612, column: 13, scope: !746)
!780 = !DILocation(line: 612, column: 11, scope: !746)
!781 = !DILocation(line: 614, column: 6, scope: !782)
!782 = distinct !DILexicalBlock(scope: !746, file: !15, line: 614, column: 6)
!783 = !DILocation(line: 614, column: 15, scope: !782)
!784 = !DILocation(line: 614, column: 22, scope: !782)
!785 = !DILocation(line: 614, column: 25, scope: !786)
!786 = !DILexicalBlockFile(scope: !782, file: !15, discriminator: 1)
!787 = !DILocation(line: 614, column: 35, scope: !786)
!788 = !DILocation(line: 614, column: 42, scope: !786)
!789 = !DILocation(line: 614, column: 50, scope: !786)
!790 = !DILocation(line: 615, column: 6, scope: !782)
!791 = !DILocation(line: 615, column: 16, scope: !782)
!792 = !DILocation(line: 615, column: 24, scope: !782)
!793 = !DILocation(line: 615, column: 35, scope: !782)
!794 = !DILocation(line: 614, column: 6, scope: !795)
!795 = !DILexicalBlockFile(scope: !746, file: !15, discriminator: 2)
!796 = !DILocation(line: 616, column: 7, scope: !797)
!797 = distinct !DILexicalBlock(scope: !798, file: !15, line: 616, column: 7)
!798 = distinct !DILexicalBlock(scope: !782, file: !15, line: 615, column: 43)
!799 = !DILocation(line: 616, column: 19, scope: !797)
!800 = !DILocation(line: 616, column: 7, scope: !798)
!801 = !DILocation(line: 617, column: 11, scope: !797)
!802 = !DILocation(line: 618, column: 29, scope: !797)
!803 = !DILocation(line: 618, column: 11, scope: !797)
!804 = !DILocation(line: 617, column: 4, scope: !805)
!805 = !DILexicalBlockFile(scope: !797, file: !15, discriminator: 1)
!806 = !DILocation(line: 617, column: 4, scope: !797)
!807 = !DILocation(line: 619, column: 3, scope: !798)
!808 = !DILocation(line: 622, column: 6, scope: !809)
!809 = distinct !DILexicalBlock(scope: !746, file: !15, line: 622, column: 6)
!810 = !DILocation(line: 622, column: 18, scope: !809)
!811 = !DILocation(line: 622, column: 6, scope: !746)
!812 = !DILocation(line: 623, column: 10, scope: !809)
!813 = !DILocation(line: 623, column: 3, scope: !809)
!814 = !DILocation(line: 625, column: 30, scope: !809)
!815 = !DILocation(line: 625, column: 12, scope: !809)
!816 = !DILocation(line: 625, column: 10, scope: !809)
!817 = !DILocation(line: 627, column: 12, scope: !746)
!818 = !DILocation(line: 627, column: 22, scope: !746)
!819 = !DILocation(line: 627, column: 10, scope: !746)
!820 = !DILocation(line: 628, column: 12, scope: !746)
!821 = !DILocation(line: 628, column: 21, scope: !746)
!822 = !DILocation(line: 628, column: 33, scope: !746)
!823 = !DILocation(line: 628, column: 10, scope: !746)
!824 = !DILocation(line: 630, column: 6, scope: !825)
!825 = distinct !DILexicalBlock(scope: !746, file: !15, line: 630, column: 6)
!826 = !DILocation(line: 630, column: 19, scope: !825)
!827 = !DILocation(line: 630, column: 26, scope: !825)
!828 = !DILocation(line: 631, column: 13, scope: !825)
!829 = !DILocation(line: 631, column: 27, scope: !825)
!830 = !DILocation(line: 631, column: 36, scope: !825)
!831 = !DILocation(line: 631, column: 48, scope: !825)
!832 = !DILocation(line: 631, column: 6, scope: !825)
!833 = !DILocation(line: 631, column: 54, scope: !825)
!834 = !DILocation(line: 630, column: 6, scope: !835)
!835 = !DILexicalBlockFile(scope: !746, file: !15, discriminator: 1)
!836 = !DILocation(line: 632, column: 10, scope: !825)
!837 = !DILocation(line: 635, column: 28, scope: !825)
!838 = !DILocation(line: 635, column: 10, scope: !825)
!839 = !DILocation(line: 636, column: 29, scope: !825)
!840 = !DILocation(line: 636, column: 10, scope: !825)
!841 = !DILocation(line: 632, column: 3, scope: !842)
!842 = !DILexicalBlockFile(scope: !825, file: !15, discriminator: 1)
!843 = !DILocation(line: 632, column: 3, scope: !825)
!844 = !DILocation(line: 638, column: 7, scope: !845)
!845 = distinct !DILexicalBlock(scope: !746, file: !15, line: 638, column: 6)
!846 = !DILocation(line: 638, column: 29, scope: !845)
!847 = !DILocation(line: 638, column: 32, scope: !848)
!848 = !DILexicalBlockFile(scope: !845, file: !15, discriminator: 1)
!849 = !DILocation(line: 638, column: 42, scope: !848)
!850 = !DILocation(line: 638, column: 51, scope: !848)
!851 = !DILocation(line: 638, column: 39, scope: !848)
!852 = !DILocation(line: 638, column: 6, scope: !848)
!853 = !DILocation(line: 639, column: 10, scope: !845)
!854 = !DILocation(line: 642, column: 28, scope: !845)
!855 = !DILocation(line: 642, column: 10, scope: !845)
!856 = !DILocation(line: 643, column: 29, scope: !845)
!857 = !DILocation(line: 643, column: 10, scope: !845)
!858 = !DILocation(line: 639, column: 3, scope: !848)
!859 = !DILocation(line: 639, column: 3, scope: !845)
!860 = !DILocation(line: 647, column: 26, scope: !861)
!861 = distinct !DILexicalBlock(scope: !746, file: !15, line: 647, column: 6)
!862 = !DILocation(line: 647, column: 34, scope: !861)
!863 = !DILocation(line: 647, column: 6, scope: !861)
!864 = !DILocation(line: 647, column: 6, scope: !746)
!865 = !DILocation(line: 648, column: 7, scope: !866)
!866 = distinct !DILexicalBlock(scope: !867, file: !15, line: 648, column: 7)
!867 = distinct !DILexicalBlock(scope: !861, file: !15, line: 647, column: 45)
!868 = !DILocation(line: 648, column: 19, scope: !866)
!869 = !DILocation(line: 648, column: 7, scope: !867)
!870 = !DILocation(line: 649, column: 11, scope: !866)
!871 = !DILocation(line: 650, column: 30, scope: !866)
!872 = !DILocation(line: 650, column: 11, scope: !866)
!873 = !DILocation(line: 649, column: 4, scope: !874)
!874 = !DILexicalBlockFile(scope: !866, file: !15, discriminator: 1)
!875 = !DILocation(line: 649, column: 4, scope: !866)
!876 = !DILocation(line: 651, column: 3, scope: !867)
!877 = !DILocation(line: 654, column: 6, scope: !878)
!878 = distinct !DILexicalBlock(scope: !746, file: !15, line: 654, column: 6)
!879 = !DILocation(line: 654, column: 18, scope: !878)
!880 = !DILocation(line: 654, column: 6, scope: !746)
!881 = !DILocation(line: 655, column: 10, scope: !878)
!882 = !DILocation(line: 655, column: 57, scope: !878)
!883 = !DILocation(line: 655, column: 38, scope: !884)
!884 = !DILexicalBlockFile(scope: !878, file: !15, discriminator: 1)
!885 = !DILocation(line: 655, column: 3, scope: !886)
!886 = !DILexicalBlockFile(scope: !878, file: !15, discriminator: 2)
!887 = !DILocation(line: 655, column: 3, scope: !878)
!888 = !DILocation(line: 657, column: 24, scope: !746)
!889 = !DILocation(line: 657, column: 33, scope: !746)
!890 = !DILocation(line: 657, column: 43, scope: !746)
!891 = !DILocation(line: 657, column: 2, scope: !746)
!892 = !DILocation(line: 658, column: 22, scope: !746)
!893 = !DILocation(line: 658, column: 31, scope: !746)
!894 = !DILocation(line: 658, column: 43, scope: !746)
!895 = !DILocation(line: 658, column: 2, scope: !746)
!896 = !DILocation(line: 661, column: 2, scope: !746)
!897 = !DILocation(line: 661, column: 11, scope: !746)
!898 = !DILocation(line: 661, column: 23, scope: !746)
!899 = !DILocation(line: 661, column: 30, scope: !746)
!900 = !DILocation(line: 662, column: 2, scope: !746)
!901 = !DILocation(line: 662, column: 11, scope: !746)
!902 = !DILocation(line: 662, column: 21, scope: !746)
!903 = !DILocation(line: 662, column: 28, scope: !746)
!904 = !DILocation(line: 664, column: 6, scope: !905)
!905 = distinct !DILexicalBlock(scope: !746, file: !15, line: 664, column: 6)
!906 = !DILocation(line: 664, column: 6, scope: !746)
!907 = !DILocation(line: 665, column: 16, scope: !905)
!908 = !DILocation(line: 665, column: 14, scope: !905)
!909 = !DILocation(line: 665, column: 3, scope: !905)
!910 = !DILocation(line: 666, column: 6, scope: !911)
!911 = distinct !DILexicalBlock(scope: !746, file: !15, line: 666, column: 6)
!912 = !DILocation(line: 666, column: 17, scope: !911)
!913 = !DILocation(line: 666, column: 21, scope: !914)
!914 = !DILexicalBlockFile(scope: !911, file: !15, discriminator: 1)
!915 = !DILocation(line: 666, column: 6, scope: !914)
!916 = !DILocation(line: 667, column: 3, scope: !911)
!917 = !DILocation(line: 669, column: 7, scope: !918)
!918 = distinct !DILexicalBlock(scope: !746, file: !15, line: 669, column: 6)
!919 = !DILocation(line: 669, column: 6, scope: !746)
!920 = !DILocation(line: 670, column: 3, scope: !918)
!921 = !DILocation(line: 672, column: 2, scope: !746)
!922 = !DILocation(line: 673, column: 1, scope: !746)
!923 = distinct !DISubprogram(name: "diversion_list", scope: !15, file: !15, line: 676, type: !200, isLocal: true, isDefinition: true, scopeLine: 677, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !391)
!924 = !DILocalVariable(name: "argv", arg: 1, scope: !923, file: !15, line: 676, type: !202)
!925 = !DILocation(line: 676, column: 35, scope: !923)
!926 = !DILocalVariable(name: "iter", scope: !923, file: !15, line: 678, type: !927)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64, align: 64)
!928 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_hash_iter", file: !71, line: 177, flags: DIFlagFwdDecl)
!929 = !DILocation(line: 678, column: 25, scope: !923)
!930 = !DILocalVariable(name: "namenode", scope: !923, file: !15, line: 679, type: !216)
!931 = !DILocation(line: 679, column: 24, scope: !923)
!932 = !DILocalVariable(name: "glob_list", scope: !923, file: !15, line: 680, type: !933)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64, align: 64)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "glob_node", file: !935, line: 34, size: 128, align: 64, elements: !936)
!935 = !DIFile(filename: "../lib/dpkg/glob.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-divert")
!936 = !{!937, !938}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !934, file: !935, line: 35, baseType: !933, size: 64, align: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "pattern", scope: !934, file: !935, line: 36, baseType: !238, size: 64, align: 64, offset: 64)
!939 = !DILocation(line: 680, column: 20, scope: !923)
!940 = !DILocalVariable(name: "pattern", scope: !923, file: !15, line: 681, type: !19)
!941 = !DILocation(line: 681, column: 14, scope: !923)
!942 = !DILocation(line: 683, column: 2, scope: !923)
!943 = !DILocation(line: 683, column: 25, scope: !944)
!944 = !DILexicalBlockFile(scope: !923, file: !15, discriminator: 1)
!945 = !DILocation(line: 683, column: 20, scope: !944)
!946 = !DILocation(line: 683, column: 18, scope: !944)
!947 = !DILocation(line: 683, column: 2, scope: !944)
!948 = !DILocation(line: 684, column: 42, scope: !923)
!949 = !DILocation(line: 684, column: 33, scope: !923)
!950 = !DILocation(line: 684, column: 3, scope: !944)
!951 = !DILocation(line: 683, column: 2, scope: !952)
!952 = !DILexicalBlockFile(scope: !923, file: !15, discriminator: 2)
!953 = distinct !{!953, !942}
!954 = !DILocation(line: 686, column: 6, scope: !955)
!955 = distinct !DILexicalBlock(scope: !923, file: !15, line: 686, column: 6)
!956 = !DILocation(line: 686, column: 16, scope: !955)
!957 = !DILocation(line: 686, column: 6, scope: !923)
!958 = !DILocation(line: 687, column: 33, scope: !955)
!959 = !DILocation(line: 687, column: 3, scope: !960)
!960 = !DILexicalBlockFile(scope: !955, file: !15, discriminator: 1)
!961 = !DILocation(line: 687, column: 3, scope: !955)
!962 = !DILocation(line: 689, column: 9, scope: !923)
!963 = !DILocation(line: 689, column: 7, scope: !923)
!964 = !DILocation(line: 690, column: 2, scope: !923)
!965 = !DILocation(line: 690, column: 41, scope: !944)
!966 = !DILocation(line: 690, column: 21, scope: !944)
!967 = !DILocation(line: 690, column: 19, scope: !944)
!968 = !DILocation(line: 690, column: 2, scope: !944)
!969 = !DILocalVariable(name: "g", scope: !970, file: !15, line: 691, type: !933)
!970 = distinct !DILexicalBlock(scope: !923, file: !15, line: 690, column: 49)
!971 = !DILocation(line: 691, column: 21, scope: !970)
!972 = !DILocalVariable(name: "contest", scope: !970, file: !15, line: 692, type: !212)
!973 = !DILocation(line: 692, column: 26, scope: !970)
!974 = !DILocation(line: 692, column: 36, scope: !970)
!975 = !DILocation(line: 692, column: 46, scope: !970)
!976 = !DILocalVariable(name: "altname", scope: !970, file: !15, line: 693, type: !212)
!977 = !DILocation(line: 693, column: 26, scope: !970)
!978 = !DILocalVariable(name: "pkgname", scope: !970, file: !15, line: 694, type: !19)
!979 = !DILocation(line: 694, column: 15, scope: !970)
!980 = !DILocation(line: 696, column: 7, scope: !981)
!981 = distinct !DILexicalBlock(scope: !970, file: !15, line: 696, column: 7)
!982 = !DILocation(line: 696, column: 15, scope: !981)
!983 = !DILocation(line: 696, column: 22, scope: !981)
!984 = !DILocation(line: 696, column: 25, scope: !985)
!985 = !DILexicalBlockFile(scope: !981, file: !15, discriminator: 1)
!986 = !DILocation(line: 696, column: 34, scope: !985)
!987 = !DILocation(line: 696, column: 45, scope: !985)
!988 = !DILocation(line: 696, column: 7, scope: !985)
!989 = !DILocation(line: 697, column: 4, scope: !981)
!990 = distinct !{!990, !964}
!991 = !DILocation(line: 699, column: 13, scope: !970)
!992 = !DILocation(line: 699, column: 22, scope: !970)
!993 = !DILocation(line: 699, column: 34, scope: !970)
!994 = !DILocation(line: 699, column: 11, scope: !970)
!995 = !DILocation(line: 701, column: 32, scope: !970)
!996 = !DILocation(line: 701, column: 13, scope: !970)
!997 = !DILocation(line: 701, column: 11, scope: !970)
!998 = !DILocation(line: 703, column: 12, scope: !999)
!999 = distinct !DILexicalBlock(scope: !970, file: !15, line: 703, column: 3)
!1000 = !DILocation(line: 703, column: 10, scope: !999)
!1001 = !DILocation(line: 703, column: 8, scope: !999)
!1002 = !DILocation(line: 703, column: 23, scope: !1003)
!1003 = !DILexicalBlockFile(scope: !1004, file: !15, discriminator: 1)
!1004 = distinct !DILexicalBlock(scope: !999, file: !15, line: 703, column: 3)
!1005 = !DILocation(line: 703, column: 3, scope: !1003)
!1006 = !DILocation(line: 704, column: 16, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1008, file: !15, line: 704, column: 8)
!1008 = distinct !DILexicalBlock(scope: !1004, file: !15, line: 703, column: 39)
!1009 = !DILocation(line: 704, column: 19, scope: !1007)
!1010 = !DILocation(line: 704, column: 28, scope: !1007)
!1011 = !DILocation(line: 704, column: 8, scope: !1007)
!1012 = !DILocation(line: 704, column: 40, scope: !1007)
!1013 = !DILocation(line: 704, column: 45, scope: !1007)
!1014 = !DILocation(line: 705, column: 16, scope: !1007)
!1015 = !DILocation(line: 705, column: 19, scope: !1007)
!1016 = !DILocation(line: 705, column: 28, scope: !1007)
!1017 = !DILocation(line: 705, column: 37, scope: !1007)
!1018 = !DILocation(line: 705, column: 49, scope: !1007)
!1019 = !DILocation(line: 705, column: 8, scope: !1007)
!1020 = !DILocation(line: 705, column: 58, scope: !1007)
!1021 = !DILocation(line: 705, column: 63, scope: !1007)
!1022 = !DILocation(line: 706, column: 16, scope: !1007)
!1023 = !DILocation(line: 706, column: 19, scope: !1007)
!1024 = !DILocation(line: 706, column: 28, scope: !1007)
!1025 = !DILocation(line: 706, column: 37, scope: !1007)
!1026 = !DILocation(line: 706, column: 47, scope: !1007)
!1027 = !DILocation(line: 706, column: 8, scope: !1007)
!1028 = !DILocation(line: 706, column: 56, scope: !1007)
!1029 = !DILocation(line: 704, column: 8, scope: !1030)
!1030 = !DILexicalBlockFile(scope: !1008, file: !15, discriminator: 1)
!1031 = !DILocation(line: 707, column: 39, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1007, file: !15, line: 706, column: 62)
!1033 = !DILocation(line: 707, column: 20, scope: !1032)
!1034 = !DILocation(line: 707, column: 5, scope: !1035)
!1035 = !DILexicalBlockFile(scope: !1032, file: !15, discriminator: 1)
!1036 = !DILocation(line: 708, column: 5, scope: !1032)
!1037 = !DILocation(line: 710, column: 3, scope: !1008)
!1038 = !DILocation(line: 703, column: 30, scope: !1039)
!1039 = !DILexicalBlockFile(scope: !1004, file: !15, discriminator: 2)
!1040 = !DILocation(line: 703, column: 33, scope: !1039)
!1041 = !DILocation(line: 703, column: 28, scope: !1039)
!1042 = !DILocation(line: 703, column: 3, scope: !1039)
!1043 = distinct !{!1043, !1044}
!1044 = !DILocation(line: 703, column: 3, scope: !970)
!1045 = !DILocation(line: 690, column: 2, scope: !952)
!1046 = !DILocation(line: 712, column: 22, scope: !923)
!1047 = !DILocation(line: 712, column: 2, scope: !923)
!1048 = !DILocation(line: 714, column: 17, scope: !923)
!1049 = !DILocation(line: 714, column: 2, scope: !923)
!1050 = !DILocation(line: 716, column: 2, scope: !923)
!1051 = distinct !DISubprogram(name: "diversion_listpackage", scope: !15, file: !15, line: 742, type: !200, isLocal: true, isDefinition: true, scopeLine: 743, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !391)
!1052 = !DILocalVariable(name: "argv", arg: 1, scope: !1051, file: !15, line: 742, type: !202)
!1053 = !DILocation(line: 742, column: 42, scope: !1051)
!1054 = !DILocalVariable(name: "filename", scope: !1051, file: !15, line: 744, type: !19)
!1055 = !DILocation(line: 744, column: 14, scope: !1051)
!1056 = !DILocation(line: 744, column: 25, scope: !1051)
!1057 = !DILocalVariable(name: "namenode", scope: !1051, file: !15, line: 745, type: !216)
!1058 = !DILocation(line: 745, column: 24, scope: !1051)
!1059 = !DILocation(line: 747, column: 7, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1051, file: !15, line: 747, column: 6)
!1061 = !DILocation(line: 747, column: 16, scope: !1060)
!1062 = !DILocation(line: 747, column: 19, scope: !1063)
!1063 = !DILexicalBlockFile(scope: !1060, file: !15, discriminator: 1)
!1064 = !DILocation(line: 747, column: 6, scope: !1063)
!1065 = !DILocation(line: 748, column: 12, scope: !1060)
!1066 = !DILocation(line: 748, column: 53, scope: !1060)
!1067 = !DILocation(line: 748, column: 64, scope: !1060)
!1068 = !DILocation(line: 748, column: 3, scope: !1063)
!1069 = !DILocation(line: 748, column: 3, scope: !1060)
!1070 = !DILocation(line: 750, column: 27, scope: !1051)
!1071 = !DILocation(line: 750, column: 2, scope: !1051)
!1072 = !DILocation(line: 752, column: 33, scope: !1051)
!1073 = !DILocation(line: 752, column: 13, scope: !1051)
!1074 = !DILocation(line: 752, column: 11, scope: !1051)
!1075 = !DILocation(line: 755, column: 6, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1051, file: !15, line: 755, column: 6)
!1077 = !DILocation(line: 755, column: 15, scope: !1076)
!1078 = !DILocation(line: 755, column: 22, scope: !1076)
!1079 = !DILocation(line: 755, column: 25, scope: !1080)
!1080 = !DILexicalBlockFile(scope: !1076, file: !15, discriminator: 1)
!1081 = !DILocation(line: 755, column: 35, scope: !1080)
!1082 = !DILocation(line: 755, column: 42, scope: !1080)
!1083 = !DILocation(line: 755, column: 6, scope: !1080)
!1084 = !DILocation(line: 756, column: 3, scope: !1076)
!1085 = !DILocation(line: 758, column: 6, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1051, file: !15, line: 758, column: 6)
!1087 = !DILocation(line: 758, column: 16, scope: !1086)
!1088 = !DILocation(line: 758, column: 24, scope: !1086)
!1089 = !DILocation(line: 758, column: 31, scope: !1086)
!1090 = !DILocation(line: 758, column: 6, scope: !1051)
!1091 = !DILocation(line: 761, column: 3, scope: !1086)
!1092 = !DILocation(line: 763, column: 18, scope: !1086)
!1093 = !DILocation(line: 763, column: 28, scope: !1086)
!1094 = !DILocation(line: 763, column: 36, scope: !1086)
!1095 = !DILocation(line: 763, column: 44, scope: !1086)
!1096 = !DILocation(line: 763, column: 3, scope: !1086)
!1097 = !DILocation(line: 765, column: 2, scope: !1051)
!1098 = !DILocation(line: 766, column: 1, scope: !1051)
!1099 = distinct !DISubprogram(name: "diversion_truename", scope: !15, file: !15, line: 720, type: !200, isLocal: true, isDefinition: true, scopeLine: 721, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !391)
!1100 = !DILocalVariable(name: "argv", arg: 1, scope: !1099, file: !15, line: 720, type: !202)
!1101 = !DILocation(line: 720, column: 39, scope: !1099)
!1102 = !DILocalVariable(name: "filename", scope: !1099, file: !15, line: 722, type: !19)
!1103 = !DILocation(line: 722, column: 14, scope: !1099)
!1104 = !DILocation(line: 722, column: 25, scope: !1099)
!1105 = !DILocalVariable(name: "namenode", scope: !1099, file: !15, line: 723, type: !216)
!1106 = !DILocation(line: 723, column: 24, scope: !1099)
!1107 = !DILocation(line: 725, column: 7, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1099, file: !15, line: 725, column: 6)
!1109 = !DILocation(line: 725, column: 16, scope: !1108)
!1110 = !DILocation(line: 725, column: 19, scope: !1111)
!1111 = !DILexicalBlockFile(scope: !1108, file: !15, discriminator: 1)
!1112 = !DILocation(line: 725, column: 6, scope: !1111)
!1113 = !DILocation(line: 726, column: 12, scope: !1108)
!1114 = !DILocation(line: 726, column: 53, scope: !1108)
!1115 = !DILocation(line: 726, column: 64, scope: !1108)
!1116 = !DILocation(line: 726, column: 3, scope: !1111)
!1117 = !DILocation(line: 726, column: 3, scope: !1108)
!1118 = !DILocation(line: 728, column: 27, scope: !1099)
!1119 = !DILocation(line: 728, column: 2, scope: !1099)
!1120 = !DILocation(line: 730, column: 33, scope: !1099)
!1121 = !DILocation(line: 730, column: 13, scope: !1099)
!1122 = !DILocation(line: 730, column: 11, scope: !1099)
!1123 = !DILocation(line: 733, column: 6, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1099, file: !15, line: 733, column: 6)
!1125 = !DILocation(line: 733, column: 15, scope: !1124)
!1126 = !DILocation(line: 733, column: 18, scope: !1127)
!1127 = !DILexicalBlockFile(scope: !1124, file: !15, discriminator: 1)
!1128 = !DILocation(line: 733, column: 28, scope: !1127)
!1129 = !DILocation(line: 733, column: 35, scope: !1127)
!1130 = !DILocation(line: 733, column: 38, scope: !1131)
!1131 = !DILexicalBlockFile(scope: !1124, file: !15, discriminator: 2)
!1132 = !DILocation(line: 733, column: 48, scope: !1131)
!1133 = !DILocation(line: 733, column: 56, scope: !1131)
!1134 = !DILocation(line: 733, column: 6, scope: !1131)
!1135 = !DILocation(line: 734, column: 18, scope: !1124)
!1136 = !DILocation(line: 734, column: 28, scope: !1124)
!1137 = !DILocation(line: 734, column: 36, scope: !1124)
!1138 = !DILocation(line: 734, column: 48, scope: !1124)
!1139 = !DILocation(line: 734, column: 3, scope: !1124)
!1140 = !DILocation(line: 736, column: 18, scope: !1124)
!1141 = !DILocation(line: 736, column: 3, scope: !1124)
!1142 = !DILocation(line: 738, column: 2, scope: !1099)
!1143 = distinct !DISubprogram(name: "set_instdir", scope: !15, file: !15, line: 792, type: !192, isLocal: true, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !391)
!1144 = !DILocalVariable(name: "cip", arg: 1, scope: !1143, file: !15, line: 792, type: !194)
!1145 = !DILocation(line: 792, column: 35, scope: !1143)
!1146 = !DILocalVariable(name: "value", arg: 2, scope: !1143, file: !15, line: 792, type: !19)
!1147 = !DILocation(line: 792, column: 52, scope: !1143)
!1148 = !DILocation(line: 794, column: 30, scope: !1143)
!1149 = !DILocation(line: 794, column: 12, scope: !1143)
!1150 = !DILocation(line: 794, column: 10, scope: !1143)
!1151 = !DILocation(line: 795, column: 1, scope: !1143)
!1152 = distinct !DISubprogram(name: "set_root", scope: !15, file: !15, line: 798, type: !192, isLocal: true, isDefinition: true, scopeLine: 799, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !391)
!1153 = !DILocalVariable(name: "cip", arg: 1, scope: !1152, file: !15, line: 798, type: !194)
!1154 = !DILocation(line: 798, column: 32, scope: !1152)
!1155 = !DILocalVariable(name: "value", arg: 2, scope: !1152, file: !15, line: 798, type: !19)
!1156 = !DILocation(line: 798, column: 49, scope: !1152)
!1157 = !DILocation(line: 800, column: 30, scope: !1152)
!1158 = !DILocation(line: 800, column: 12, scope: !1152)
!1159 = !DILocation(line: 800, column: 10, scope: !1152)
!1160 = !DILocation(line: 801, column: 13, scope: !1152)
!1161 = !DILocation(line: 801, column: 11, scope: !1152)
!1162 = !DILocation(line: 802, column: 1, scope: !1152)
!1163 = distinct !DISubprogram(name: "set_divertto", scope: !15, file: !15, line: 781, type: !192, isLocal: true, isDefinition: true, scopeLine: 782, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !391)
!1164 = !DILocalVariable(name: "cip", arg: 1, scope: !1163, file: !15, line: 781, type: !194)
!1165 = !DILocation(line: 781, column: 36, scope: !1163)
!1166 = !DILocalVariable(name: "value", arg: 2, scope: !1163, file: !15, line: 781, type: !19)
!1167 = !DILocation(line: 781, column: 53, scope: !1163)
!1168 = !DILocation(line: 783, column: 17, scope: !1163)
!1169 = !DILocation(line: 783, column: 15, scope: !1163)
!1170 = !DILocation(line: 785, column: 6, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1163, file: !15, line: 785, column: 6)
!1172 = !DILocation(line: 785, column: 22, scope: !1171)
!1173 = !DILocation(line: 785, column: 6, scope: !1163)
!1174 = !DILocation(line: 786, column: 12, scope: !1171)
!1175 = !DILocation(line: 786, column: 56, scope: !1171)
!1176 = !DILocation(line: 786, column: 3, scope: !1177)
!1177 = !DILexicalBlockFile(scope: !1171, file: !15, discriminator: 1)
!1178 = !DILocation(line: 786, column: 3, scope: !1171)
!1179 = !DILocation(line: 787, column: 13, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1163, file: !15, line: 787, column: 6)
!1181 = !DILocation(line: 787, column: 6, scope: !1180)
!1182 = !DILocation(line: 787, column: 33, scope: !1180)
!1183 = !DILocation(line: 787, column: 6, scope: !1163)
!1184 = !DILocation(line: 788, column: 12, scope: !1180)
!1185 = !DILocation(line: 788, column: 3, scope: !1186)
!1186 = !DILexicalBlockFile(scope: !1180, file: !15, discriminator: 1)
!1187 = !DILocation(line: 788, column: 3, scope: !1180)
!1188 = !DILocation(line: 789, column: 1, scope: !1163)
!1189 = distinct !DISubprogram(name: "usage", scope: !15, file: !15, line: 82, type: !192, isLocal: true, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !391)
!1190 = !DILocalVariable(name: "cip", arg: 1, scope: !1189, file: !15, line: 82, type: !194)
!1191 = !DILocation(line: 82, column: 29, scope: !1189)
!1192 = !DILocalVariable(name: "value", arg: 2, scope: !1189, file: !15, line: 82, type: !19)
!1193 = !DILocation(line: 82, column: 46, scope: !1189)
!1194 = !DILocation(line: 84, column: 9, scope: !1189)
!1195 = !DILocation(line: 86, column: 8, scope: !1189)
!1196 = !DILocation(line: 84, column: 2, scope: !1197)
!1197 = !DILexicalBlockFile(scope: !1189, file: !15, discriminator: 1)
!1198 = !DILocation(line: 88, column: 9, scope: !1189)
!1199 = !DILocation(line: 88, column: 2, scope: !1197)
!1200 = !DILocation(line: 97, column: 9, scope: !1189)
!1201 = !DILocation(line: 97, column: 2, scope: !1197)
!1202 = !DILocation(line: 114, column: 9, scope: !1189)
!1203 = !DILocation(line: 114, column: 2, scope: !1197)
!1204 = !DILocation(line: 119, column: 10, scope: !1189)
!1205 = !DILocation(line: 119, column: 18, scope: !1189)
!1206 = !DILocation(line: 119, column: 2, scope: !1197)
!1207 = !DILocation(line: 121, column: 2, scope: !1189)
!1208 = !DILocation(line: 122, column: 1, scope: !1189)
!1209 = distinct !DISubprogram(name: "printversion", scope: !15, file: !15, line: 67, type: !192, isLocal: true, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !391)
!1210 = !DILocalVariable(name: "cip", arg: 1, scope: !1209, file: !15, line: 67, type: !194)
!1211 = !DILocation(line: 67, column: 36, scope: !1209)
!1212 = !DILocalVariable(name: "value", arg: 2, scope: !1209, file: !15, line: 67, type: !19)
!1213 = !DILocation(line: 67, column: 53, scope: !1209)
!1214 = !DILocation(line: 69, column: 9, scope: !1209)
!1215 = !DILocation(line: 69, column: 45, scope: !1216)
!1216 = !DILexicalBlockFile(scope: !1209, file: !15, discriminator: 1)
!1217 = !DILocation(line: 69, column: 2, scope: !1218)
!1218 = !DILexicalBlockFile(scope: !1209, file: !15, discriminator: 2)
!1219 = !DILocation(line: 72, column: 9, scope: !1209)
!1220 = !DILocation(line: 72, column: 2, scope: !1216)
!1221 = !DILocation(line: 76, column: 10, scope: !1209)
!1222 = !DILocation(line: 76, column: 18, scope: !1209)
!1223 = !DILocation(line: 76, column: 2, scope: !1216)
!1224 = !DILocation(line: 78, column: 2, scope: !1209)
!1225 = !DILocation(line: 79, column: 1, scope: !1209)
!1226 = distinct !DISubprogram(name: "opt_rename_setup", scope: !15, file: !15, line: 125, type: !1227, isLocal: true, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !391)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{null}
!1229 = !DILocation(line: 127, column: 6, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1226, file: !15, line: 127, column: 6)
!1231 = !DILocation(line: 127, column: 17, scope: !1230)
!1232 = !DILocation(line: 127, column: 6, scope: !1226)
!1233 = !DILocation(line: 128, column: 3, scope: !1230)
!1234 = !DILocation(line: 130, column: 13, scope: !1226)
!1235 = !DILocation(line: 131, column: 10, scope: !1226)
!1236 = !DILocation(line: 131, column: 2, scope: !1237)
!1237 = !DILexicalBlockFile(scope: !1226, file: !15, discriminator: 1)
!1238 = !DILocation(line: 133, column: 1, scope: !1226)
!1239 = !DILocation(line: 133, column: 1, scope: !1237)
!1240 = distinct !DISubprogram(name: "diversion_check_filename", scope: !15, file: !15, line: 290, type: !1241, isLocal: true, isDefinition: true, scopeLine: 291, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !391)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{null, !19}
!1243 = !DILocalVariable(name: "filename", arg: 1, scope: !1240, file: !15, line: 290, type: !19)
!1244 = !DILocation(line: 290, column: 38, scope: !1240)
!1245 = !DILocation(line: 292, column: 6, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1240, file: !15, line: 292, column: 6)
!1247 = !DILocation(line: 292, column: 18, scope: !1246)
!1248 = !DILocation(line: 292, column: 6, scope: !1240)
!1249 = !DILocation(line: 293, column: 12, scope: !1246)
!1250 = !DILocation(line: 293, column: 56, scope: !1246)
!1251 = !DILocation(line: 293, column: 3, scope: !1252)
!1252 = !DILexicalBlockFile(scope: !1246, file: !15, discriminator: 1)
!1253 = !DILocation(line: 293, column: 3, scope: !1246)
!1254 = !DILocation(line: 294, column: 13, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1240, file: !15, line: 294, column: 6)
!1256 = !DILocation(line: 294, column: 6, scope: !1255)
!1257 = !DILocation(line: 294, column: 29, scope: !1255)
!1258 = !DILocation(line: 294, column: 6, scope: !1240)
!1259 = !DILocation(line: 295, column: 12, scope: !1255)
!1260 = !DILocation(line: 295, column: 3, scope: !1261)
!1261 = !DILexicalBlockFile(scope: !1255, file: !15, discriminator: 1)
!1262 = !DILocation(line: 295, column: 3, scope: !1255)
!1263 = !DILocation(line: 296, column: 1, scope: !1240)
!1264 = distinct !DISubprogram(name: "file_init", scope: !15, file: !15, line: 146, type: !1265, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !391)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{null, !1267, !19}
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!1268 = !DILocalVariable(name: "f", arg: 1, scope: !1264, file: !15, line: 146, type: !1267)
!1269 = !DILocation(line: 146, column: 24, scope: !1264)
!1270 = !DILocalVariable(name: "filename", arg: 2, scope: !1264, file: !15, line: 146, type: !19)
!1271 = !DILocation(line: 146, column: 39, scope: !1264)
!1272 = !DILocalVariable(name: "usefilename", scope: !1264, file: !15, line: 148, type: !392)
!1273 = !DILocation(line: 148, column: 16, scope: !1264)
!1274 = !DILocation(line: 150, column: 31, scope: !1264)
!1275 = !DILocation(line: 150, column: 47, scope: !1264)
!1276 = !DILocation(line: 150, column: 40, scope: !1264)
!1277 = !DILocation(line: 150, column: 2, scope: !1278)
!1278 = !DILexicalBlockFile(scope: !1264, file: !15, discriminator: 1)
!1279 = !DILocation(line: 151, column: 31, scope: !1264)
!1280 = !DILocation(line: 151, column: 48, scope: !1264)
!1281 = !DILocation(line: 151, column: 41, scope: !1264)
!1282 = !DILocation(line: 151, column: 2, scope: !1278)
!1283 = !DILocation(line: 152, column: 2, scope: !1264)
!1284 = !DILocation(line: 154, column: 12, scope: !1264)
!1285 = !DILocation(line: 154, column: 2, scope: !1264)
!1286 = !DILocation(line: 154, column: 5, scope: !1264)
!1287 = !DILocation(line: 154, column: 10, scope: !1264)
!1288 = !DILocation(line: 155, column: 2, scope: !1264)
!1289 = !DILocation(line: 155, column: 5, scope: !1264)
!1290 = !DILocation(line: 155, column: 16, scope: !1264)
!1291 = !DILocation(line: 156, column: 1, scope: !1264)
!1292 = distinct !DISubprogram(name: "file_stat", scope: !15, file: !15, line: 159, type: !1293, isLocal: true, isDefinition: true, scopeLine: 160, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !391)
!1293 = !DISubroutineType(types: !1294)
!1294 = !{null, !1267}
!1295 = !DILocalVariable(name: "f", arg: 1, scope: !1292, file: !15, line: 159, type: !1267)
!1296 = !DILocation(line: 159, column: 24, scope: !1292)
!1297 = !DILocalVariable(name: "ret", scope: !1292, file: !15, line: 161, type: !43)
!1298 = !DILocation(line: 161, column: 6, scope: !1292)
!1299 = !DILocation(line: 163, column: 6, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1292, file: !15, line: 163, column: 6)
!1301 = !DILocation(line: 163, column: 9, scope: !1300)
!1302 = !DILocation(line: 163, column: 20, scope: !1300)
!1303 = !DILocation(line: 163, column: 6, scope: !1292)
!1304 = !DILocation(line: 164, column: 3, scope: !1300)
!1305 = !DILocation(line: 166, column: 14, scope: !1292)
!1306 = !DILocation(line: 166, column: 17, scope: !1292)
!1307 = !DILocation(line: 166, column: 24, scope: !1292)
!1308 = !DILocation(line: 166, column: 27, scope: !1292)
!1309 = !DILocation(line: 166, column: 8, scope: !1292)
!1310 = !DILocation(line: 166, column: 6, scope: !1292)
!1311 = !DILocation(line: 167, column: 6, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1292, file: !15, line: 167, column: 6)
!1313 = !DILocation(line: 167, column: 10, scope: !1312)
!1314 = !DILocation(line: 167, column: 14, scope: !1315)
!1315 = !DILexicalBlockFile(scope: !1312, file: !15, discriminator: 1)
!1316 = !DILocation(line: 167, column: 13, scope: !1315)
!1317 = !DILocation(line: 167, column: 18, scope: !1315)
!1318 = !DILocation(line: 167, column: 6, scope: !1315)
!1319 = !DILocation(line: 168, column: 11, scope: !1312)
!1320 = !DILocation(line: 168, column: 45, scope: !1312)
!1321 = !DILocation(line: 168, column: 48, scope: !1312)
!1322 = !DILocation(line: 168, column: 3, scope: !1315)
!1323 = !DILocation(line: 168, column: 3, scope: !1312)
!1324 = !DILocation(line: 170, column: 6, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1292, file: !15, line: 170, column: 6)
!1326 = !DILocation(line: 170, column: 10, scope: !1325)
!1327 = !DILocation(line: 170, column: 6, scope: !1292)
!1328 = !DILocation(line: 171, column: 3, scope: !1325)
!1329 = !DILocation(line: 171, column: 6, scope: !1325)
!1330 = !DILocation(line: 171, column: 17, scope: !1325)
!1331 = !DILocation(line: 173, column: 3, scope: !1325)
!1332 = !DILocation(line: 173, column: 6, scope: !1325)
!1333 = !DILocation(line: 173, column: 17, scope: !1325)
!1334 = !DILocation(line: 174, column: 1, scope: !1292)
!1335 = !DILocalVariable(name: "d", arg: 1, scope: !209, file: !15, line: 352, type: !212)
!1336 = !DILocation(line: 352, column: 43, scope: !209)
!1337 = !DILocalVariable(name: "pkgname", scope: !209, file: !15, line: 355, type: !19)
!1338 = !DILocation(line: 355, column: 14, scope: !209)
!1339 = !DILocalVariable(name: "name_from", scope: !209, file: !15, line: 356, type: !19)
!1340 = !DILocation(line: 356, column: 14, scope: !209)
!1341 = !DILocalVariable(name: "name_to", scope: !209, file: !15, line: 356, type: !19)
!1342 = !DILocation(line: 356, column: 26, scope: !209)
!1343 = !DILocation(line: 358, column: 6, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !209, file: !15, line: 358, column: 6)
!1345 = !DILocation(line: 358, column: 9, scope: !1344)
!1346 = !DILocation(line: 358, column: 6, scope: !209)
!1347 = !DILocation(line: 359, column: 15, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1344, file: !15, line: 358, column: 19)
!1349 = !DILocation(line: 359, column: 18, scope: !1348)
!1350 = !DILocation(line: 359, column: 28, scope: !1348)
!1351 = !DILocation(line: 359, column: 13, scope: !1348)
!1352 = !DILocation(line: 360, column: 13, scope: !1348)
!1353 = !DILocation(line: 360, column: 16, scope: !1348)
!1354 = !DILocation(line: 360, column: 26, scope: !1348)
!1355 = !DILocation(line: 360, column: 34, scope: !1348)
!1356 = !DILocation(line: 360, column: 46, scope: !1348)
!1357 = !DILocation(line: 360, column: 11, scope: !1348)
!1358 = !DILocation(line: 361, column: 2, scope: !1348)
!1359 = !DILocation(line: 362, column: 15, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1344, file: !15, line: 361, column: 9)
!1361 = !DILocation(line: 362, column: 18, scope: !1360)
!1362 = !DILocation(line: 362, column: 30, scope: !1360)
!1363 = !DILocation(line: 362, column: 38, scope: !1360)
!1364 = !DILocation(line: 362, column: 48, scope: !1360)
!1365 = !DILocation(line: 362, column: 13, scope: !1360)
!1366 = !DILocation(line: 363, column: 13, scope: !1360)
!1367 = !DILocation(line: 363, column: 16, scope: !1360)
!1368 = !DILocation(line: 363, column: 28, scope: !1360)
!1369 = !DILocation(line: 363, column: 11, scope: !1360)
!1370 = !DILocation(line: 366, column: 6, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !209, file: !15, line: 366, column: 6)
!1372 = !DILocation(line: 366, column: 9, scope: !1371)
!1373 = !DILocation(line: 366, column: 16, scope: !1371)
!1374 = !DILocation(line: 366, column: 6, scope: !209)
!1375 = !DILocation(line: 367, column: 11, scope: !1371)
!1376 = !DILocation(line: 367, column: 3, scope: !1371)
!1377 = !DILocation(line: 369, column: 13, scope: !1371)
!1378 = !DILocation(line: 369, column: 16, scope: !1371)
!1379 = !DILocation(line: 369, column: 24, scope: !1371)
!1380 = !DILocation(line: 369, column: 11, scope: !1371)
!1381 = !DILocation(line: 371, column: 32, scope: !209)
!1382 = !DILocation(line: 371, column: 41, scope: !209)
!1383 = !DILocation(line: 371, column: 52, scope: !209)
!1384 = !DILocation(line: 371, column: 9, scope: !209)
!1385 = !DILocation(line: 371, column: 2, scope: !209)
!1386 = !DILocalVariable(name: "filename", arg: 1, scope: !401, file: !15, line: 332, type: !19)
!1387 = !DILocation(line: 332, column: 31, scope: !401)
!1388 = !DILocation(line: 336, column: 6, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !401, file: !15, line: 336, column: 6)
!1390 = !DILocation(line: 336, column: 6, scope: !401)
!1391 = !DILocation(line: 337, column: 3, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1389, file: !15, line: 336, column: 29)
!1393 = !DILocation(line: 339, column: 7, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1392, file: !15, line: 339, column: 7)
!1395 = !DILocation(line: 339, column: 20, scope: !1394)
!1396 = !DILocation(line: 339, column: 7, scope: !1392)
!1397 = !DILocation(line: 340, column: 24, scope: !1394)
!1398 = !DILocation(line: 340, column: 56, scope: !1394)
!1399 = !DILocation(line: 340, column: 4, scope: !1400)
!1400 = !DILexicalBlockFile(scope: !1394, file: !15, discriminator: 1)
!1401 = !DILocation(line: 340, column: 4, scope: !1394)
!1402 = !DILocation(line: 342, column: 24, scope: !1394)
!1403 = !DILocation(line: 343, column: 18, scope: !1394)
!1404 = !DILocation(line: 343, column: 28, scope: !1394)
!1405 = !DILocation(line: 342, column: 4, scope: !1400)
!1406 = !DILocation(line: 344, column: 2, scope: !1392)
!1407 = !DILocation(line: 345, column: 33, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1389, file: !15, line: 344, column: 9)
!1409 = !DILocation(line: 345, column: 46, scope: !1408)
!1410 = !DILocation(line: 345, column: 56, scope: !1408)
!1411 = !DILocation(line: 345, column: 10, scope: !1408)
!1412 = !DILocation(line: 345, column: 3, scope: !1408)
!1413 = !DILocation(line: 348, column: 13, scope: !401)
!1414 = !DILocation(line: 348, column: 2, scope: !401)
!1415 = !DILocation(line: 349, column: 1, scope: !401)
!1416 = distinct !DISubprogram(name: "check_rename", scope: !15, file: !15, line: 194, type: !1417, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !391)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{!309, !1267, !1267}
!1419 = !DILocalVariable(name: "src", arg: 1, scope: !1416, file: !15, line: 194, type: !1267)
!1420 = !DILocation(line: 194, column: 27, scope: !1416)
!1421 = !DILocalVariable(name: "dst", arg: 2, scope: !1416, file: !15, line: 194, type: !1267)
!1422 = !DILocation(line: 194, column: 45, scope: !1416)
!1423 = !DILocation(line: 196, column: 12, scope: !1416)
!1424 = !DILocation(line: 196, column: 2, scope: !1416)
!1425 = !DILocation(line: 200, column: 6, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1416, file: !15, line: 200, column: 6)
!1427 = !DILocation(line: 200, column: 11, scope: !1426)
!1428 = !DILocation(line: 200, column: 22, scope: !1426)
!1429 = !DILocation(line: 200, column: 6, scope: !1416)
!1430 = !DILocation(line: 201, column: 3, scope: !1426)
!1431 = !DILocation(line: 203, column: 12, scope: !1416)
!1432 = !DILocation(line: 203, column: 2, scope: !1416)
!1433 = !DILocation(line: 214, column: 21, scope: !1416)
!1434 = !DILocation(line: 214, column: 2, scope: !1416)
!1435 = !DILocation(line: 215, column: 21, scope: !1416)
!1436 = !DILocation(line: 215, column: 2, scope: !1416)
!1437 = !DILocation(line: 217, column: 6, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1416, file: !15, line: 217, column: 6)
!1439 = !DILocation(line: 217, column: 11, scope: !1438)
!1440 = !DILocation(line: 217, column: 22, scope: !1438)
!1441 = !DILocation(line: 217, column: 41, scope: !1438)
!1442 = !DILocation(line: 218, column: 6, scope: !1438)
!1443 = !DILocation(line: 218, column: 11, scope: !1438)
!1444 = !DILocation(line: 218, column: 22, scope: !1438)
!1445 = !DILocation(line: 218, column: 41, scope: !1438)
!1446 = !DILocation(line: 219, column: 8, scope: !1438)
!1447 = !DILocation(line: 219, column: 13, scope: !1438)
!1448 = !DILocation(line: 219, column: 18, scope: !1438)
!1449 = !DILocation(line: 219, column: 28, scope: !1438)
!1450 = !DILocation(line: 219, column: 33, scope: !1438)
!1451 = !DILocation(line: 219, column: 38, scope: !1438)
!1452 = !DILocation(line: 219, column: 25, scope: !1438)
!1453 = !DILocation(line: 219, column: 45, scope: !1438)
!1454 = !DILocation(line: 220, column: 8, scope: !1438)
!1455 = !DILocation(line: 220, column: 13, scope: !1438)
!1456 = !DILocation(line: 220, column: 18, scope: !1438)
!1457 = !DILocation(line: 220, column: 28, scope: !1438)
!1458 = !DILocation(line: 220, column: 33, scope: !1438)
!1459 = !DILocation(line: 220, column: 38, scope: !1438)
!1460 = !DILocation(line: 220, column: 25, scope: !1438)
!1461 = !DILocation(line: 217, column: 6, scope: !1462)
!1462 = !DILexicalBlockFile(scope: !1416, file: !15, discriminator: 1)
!1463 = !DILocation(line: 221, column: 10, scope: !1438)
!1464 = !DILocation(line: 223, column: 11, scope: !1438)
!1465 = !DILocation(line: 223, column: 16, scope: !1438)
!1466 = !DILocation(line: 223, column: 22, scope: !1438)
!1467 = !DILocation(line: 223, column: 27, scope: !1438)
!1468 = !DILocation(line: 221, column: 3, scope: !1469)
!1469 = !DILexicalBlockFile(scope: !1438, file: !15, discriminator: 1)
!1470 = !DILocation(line: 221, column: 3, scope: !1438)
!1471 = !DILocation(line: 225, column: 2, scope: !1416)
!1472 = !DILocation(line: 226, column: 1, scope: !1416)
!1473 = distinct !DISubprogram(name: "diversion_is_owned_by_self", scope: !15, file: !15, line: 437, type: !1474, isLocal: true, isDefinition: true, scopeLine: 438, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !391)
!1474 = !DISubroutineType(types: !1475)
!1475 = !{!309, !256, !216}
!1476 = !DILocalVariable(name: "set", arg: 1, scope: !1473, file: !15, line: 437, type: !256)
!1477 = !DILocation(line: 437, column: 43, scope: !1473)
!1478 = !DILocalVariable(name: "namenode", arg: 2, scope: !1473, file: !15, line: 437, type: !216)
!1479 = !DILocation(line: 437, column: 70, scope: !1473)
!1480 = !DILocalVariable(name: "pkg", scope: !1473, file: !15, line: 439, type: !266)
!1481 = !DILocation(line: 439, column: 18, scope: !1473)
!1482 = !DILocalVariable(name: "iter", scope: !1473, file: !15, line: 440, type: !1483)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64, align: 64)
!1484 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_node_pkgs_iter", file: !71, line: 160, flags: DIFlagFwdDecl)
!1485 = !DILocation(line: 440, column: 30, scope: !1473)
!1486 = !DILocalVariable(name: "owned", scope: !1473, file: !15, line: 441, type: !309)
!1487 = !DILocation(line: 441, column: 6, scope: !1473)
!1488 = !DILocation(line: 443, column: 6, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1473, file: !15, line: 443, column: 6)
!1490 = !DILocation(line: 443, column: 10, scope: !1489)
!1491 = !DILocation(line: 443, column: 6, scope: !1473)
!1492 = !DILocation(line: 444, column: 3, scope: !1489)
!1493 = !DILocation(line: 446, column: 14, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1473, file: !15, line: 446, column: 2)
!1495 = !DILocation(line: 446, column: 19, scope: !1494)
!1496 = !DILocation(line: 446, column: 11, scope: !1494)
!1497 = !DILocation(line: 446, column: 7, scope: !1494)
!1498 = !DILocation(line: 446, column: 24, scope: !1499)
!1499 = !DILexicalBlockFile(scope: !1500, file: !15, discriminator: 1)
!1500 = distinct !DILexicalBlock(scope: !1494, file: !15, line: 446, column: 2)
!1501 = !DILocation(line: 446, column: 2, scope: !1499)
!1502 = !DILocation(line: 447, column: 33, scope: !1500)
!1503 = !DILocation(line: 447, column: 3, scope: !1500)
!1504 = !DILocation(line: 446, column: 35, scope: !1505)
!1505 = !DILexicalBlockFile(scope: !1500, file: !15, discriminator: 2)
!1506 = !DILocation(line: 446, column: 40, scope: !1505)
!1507 = !DILocation(line: 446, column: 33, scope: !1505)
!1508 = !DILocation(line: 446, column: 2, scope: !1505)
!1509 = distinct !{!1509, !1510}
!1510 = !DILocation(line: 446, column: 2, scope: !1473)
!1511 = !DILocation(line: 449, column: 33, scope: !1473)
!1512 = !DILocation(line: 449, column: 9, scope: !1473)
!1513 = !DILocation(line: 449, column: 7, scope: !1473)
!1514 = !DILocation(line: 450, column: 2, scope: !1473)
!1515 = !DILocation(line: 450, column: 41, scope: !1516)
!1516 = !DILexicalBlockFile(scope: !1473, file: !15, discriminator: 1)
!1517 = !DILocation(line: 450, column: 16, scope: !1516)
!1518 = !DILocation(line: 450, column: 14, scope: !1516)
!1519 = !DILocation(line: 450, column: 2, scope: !1516)
!1520 = !DILocation(line: 451, column: 7, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1522, file: !15, line: 451, column: 7)
!1522 = distinct !DILexicalBlock(scope: !1473, file: !15, line: 450, column: 49)
!1523 = !DILocation(line: 451, column: 12, scope: !1521)
!1524 = !DILocation(line: 451, column: 19, scope: !1521)
!1525 = !DILocation(line: 451, column: 16, scope: !1521)
!1526 = !DILocation(line: 451, column: 7, scope: !1522)
!1527 = !DILocation(line: 452, column: 10, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1521, file: !15, line: 451, column: 24)
!1529 = !DILocation(line: 453, column: 4, scope: !1528)
!1530 = !DILocation(line: 450, column: 2, scope: !1531)
!1531 = !DILexicalBlockFile(scope: !1473, file: !15, discriminator: 2)
!1532 = distinct !{!1532, !1514}
!1533 = !DILocation(line: 456, column: 27, scope: !1473)
!1534 = !DILocation(line: 456, column: 2, scope: !1473)
!1535 = !DILocation(line: 458, column: 9, scope: !1473)
!1536 = !DILocation(line: 458, column: 2, scope: !1473)
!1537 = !DILocation(line: 459, column: 1, scope: !1473)
!1538 = distinct !DISubprogram(name: "diversion_is_essential", scope: !15, file: !15, line: 410, type: !1539, isLocal: true, isDefinition: true, scopeLine: 411, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !391)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{!309, !216}
!1541 = !DILocalVariable(name: "namenode", arg: 1, scope: !1538, file: !15, line: 410, type: !216)
!1542 = !DILocation(line: 410, column: 46, scope: !1538)
!1543 = !DILocalVariable(name: "pkg", scope: !1538, file: !15, line: 412, type: !266)
!1544 = !DILocation(line: 412, column: 18, scope: !1538)
!1545 = !DILocalVariable(name: "pkg_iter", scope: !1538, file: !15, line: 413, type: !1546)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64, align: 64)
!1547 = !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_hash_iter", file: !4, line: 314, flags: DIFlagFwdDecl)
!1548 = !DILocation(line: 413, column: 24, scope: !1538)
!1549 = !DILocalVariable(name: "iter", scope: !1538, file: !15, line: 414, type: !1483)
!1550 = !DILocation(line: 414, column: 30, scope: !1538)
!1551 = !DILocalVariable(name: "essential", scope: !1538, file: !15, line: 415, type: !309)
!1552 = !DILocation(line: 415, column: 6, scope: !1538)
!1553 = !DILocation(line: 417, column: 13, scope: !1538)
!1554 = !DILocation(line: 417, column: 11, scope: !1538)
!1555 = !DILocation(line: 418, column: 2, scope: !1538)
!1556 = !DILocation(line: 418, column: 39, scope: !1557)
!1557 = !DILexicalBlockFile(scope: !1538, file: !15, discriminator: 1)
!1558 = !DILocation(line: 418, column: 16, scope: !1557)
!1559 = !DILocation(line: 418, column: 14, scope: !1557)
!1560 = !DILocation(line: 418, column: 2, scope: !1557)
!1561 = !DILocation(line: 419, column: 7, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1563, file: !15, line: 419, column: 7)
!1563 = distinct !DILexicalBlock(scope: !1538, file: !15, line: 418, column: 51)
!1564 = !DILocation(line: 419, column: 12, scope: !1562)
!1565 = !DILocation(line: 419, column: 22, scope: !1562)
!1566 = !DILocation(line: 419, column: 7, scope: !1563)
!1567 = !DILocation(line: 420, column: 34, scope: !1562)
!1568 = !DILocation(line: 420, column: 4, scope: !1562)
!1569 = !DILocation(line: 418, column: 2, scope: !1570)
!1570 = !DILexicalBlockFile(scope: !1538, file: !15, discriminator: 2)
!1571 = distinct !{!1571, !1555}
!1572 = !DILocation(line: 422, column: 21, scope: !1538)
!1573 = !DILocation(line: 422, column: 2, scope: !1538)
!1574 = !DILocation(line: 424, column: 33, scope: !1538)
!1575 = !DILocation(line: 424, column: 9, scope: !1538)
!1576 = !DILocation(line: 424, column: 7, scope: !1538)
!1577 = !DILocation(line: 425, column: 2, scope: !1538)
!1578 = !DILocation(line: 425, column: 41, scope: !1557)
!1579 = !DILocation(line: 425, column: 16, scope: !1557)
!1580 = !DILocation(line: 425, column: 14, scope: !1557)
!1581 = !DILocation(line: 425, column: 2, scope: !1557)
!1582 = !DILocation(line: 426, column: 7, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1584, file: !15, line: 426, column: 7)
!1584 = distinct !DILexicalBlock(scope: !1538, file: !15, line: 425, column: 49)
!1585 = !DILocation(line: 426, column: 12, scope: !1583)
!1586 = !DILocation(line: 426, column: 22, scope: !1583)
!1587 = !DILocation(line: 426, column: 7, scope: !1584)
!1588 = !DILocation(line: 427, column: 14, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1583, file: !15, line: 426, column: 33)
!1590 = !DILocation(line: 428, column: 4, scope: !1589)
!1591 = !DILocation(line: 425, column: 2, scope: !1570)
!1592 = distinct !{!1592, !1577}
!1593 = !DILocation(line: 431, column: 27, scope: !1538)
!1594 = !DILocation(line: 431, column: 2, scope: !1538)
!1595 = !DILocation(line: 433, column: 9, scope: !1538)
!1596 = !DILocation(line: 433, column: 2, scope: !1538)
!1597 = distinct !DISubprogram(name: "divertdb_write", scope: !15, file: !15, line: 375, type: !1227, isLocal: true, isDefinition: true, scopeLine: 376, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !391)
!1598 = !DILocalVariable(name: "dbname", scope: !1597, file: !15, line: 377, type: !238)
!1599 = !DILocation(line: 377, column: 8, scope: !1597)
!1600 = !DILocalVariable(name: "file", scope: !1597, file: !15, line: 378, type: !1601)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64, align: 64)
!1602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atomic_file", file: !153, line: 40, size: 256, align: 64, elements: !1603)
!1603 = !{!1604, !1605, !1606, !1607}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1602, file: !153, line: 41, baseType: !152, size: 32, align: 32)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1602, file: !153, line: 42, baseType: !238, size: 64, align: 64, offset: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "name_new", scope: !1602, file: !153, line: 43, baseType: !238, size: 64, align: 64, offset: 128)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !1602, file: !153, line: 44, baseType: !1608, size: 64, align: 64, offset: 192)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64, align: 64)
!1609 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1610, line: 48, baseType: !1611)
!1610 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-divert")
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1612, line: 241, size: 1728, align: 64, elements: !1613)
!1612 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-divert")
!1613 = !{!1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1634, !1635, !1636, !1637, !1638, !1640, !1642, !1646, !1649, !1651, !1652, !1653, !1654, !1655, !1656, !1657}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1611, file: !1612, line: 242, baseType: !43, size: 32, align: 32)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1611, file: !1612, line: 247, baseType: !238, size: 64, align: 64, offset: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1611, file: !1612, line: 248, baseType: !238, size: 64, align: 64, offset: 128)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1611, file: !1612, line: 249, baseType: !238, size: 64, align: 64, offset: 192)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1611, file: !1612, line: 250, baseType: !238, size: 64, align: 64, offset: 256)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1611, file: !1612, line: 251, baseType: !238, size: 64, align: 64, offset: 320)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1611, file: !1612, line: 252, baseType: !238, size: 64, align: 64, offset: 384)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1611, file: !1612, line: 253, baseType: !238, size: 64, align: 64, offset: 448)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1611, file: !1612, line: 254, baseType: !238, size: 64, align: 64, offset: 512)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1611, file: !1612, line: 256, baseType: !238, size: 64, align: 64, offset: 576)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1611, file: !1612, line: 257, baseType: !238, size: 64, align: 64, offset: 640)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1611, file: !1612, line: 258, baseType: !238, size: 64, align: 64, offset: 704)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1611, file: !1612, line: 260, baseType: !1627, size: 64, align: 64, offset: 768)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64, align: 64)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1612, line: 156, size: 192, align: 64, elements: !1629)
!1629 = !{!1630, !1631, !1633}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1628, file: !1612, line: 157, baseType: !1627, size: 64, align: 64)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1628, file: !1612, line: 158, baseType: !1632, size: 64, align: 64, offset: 64)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64, align: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1628, file: !1612, line: 162, baseType: !43, size: 32, align: 32, offset: 128)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1611, file: !1612, line: 262, baseType: !1632, size: 64, align: 64, offset: 832)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1611, file: !1612, line: 264, baseType: !43, size: 32, align: 32, offset: 896)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1611, file: !1612, line: 268, baseType: !43, size: 32, align: 32, offset: 928)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1611, file: !1612, line: 270, baseType: !46, size: 64, align: 64, offset: 960)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1611, file: !1612, line: 274, baseType: !1639, size: 16, align: 16, offset: 1024)
!1639 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1611, file: !1612, line: 275, baseType: !1641, size: 8, align: 8, offset: 1040)
!1641 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1611, file: !1612, line: 276, baseType: !1643, size: 8, align: 8, offset: 1048)
!1643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 8, align: 8, elements: !1644)
!1644 = !{!1645}
!1645 = !DISubrange(count: 1)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1611, file: !1612, line: 280, baseType: !1647, size: 64, align: 64, offset: 1088)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64, align: 64)
!1648 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1612, line: 150, baseType: null)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1611, file: !1612, line: 289, baseType: !1650, size: 64, align: 64, offset: 1152)
!1650 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !29, line: 132, baseType: !47)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1611, file: !1612, line: 297, baseType: !173, size: 64, align: 64, offset: 1216)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1611, file: !1612, line: 298, baseType: !173, size: 64, align: 64, offset: 1280)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1611, file: !1612, line: 299, baseType: !173, size: 64, align: 64, offset: 1344)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1611, file: !1612, line: 300, baseType: !173, size: 64, align: 64, offset: 1408)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1611, file: !1612, line: 302, baseType: !396, size: 64, align: 64, offset: 1472)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1611, file: !1612, line: 303, baseType: !43, size: 32, align: 32, offset: 1536)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1611, file: !1612, line: 305, baseType: !1658, size: 160, align: 8, offset: 1568)
!1658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 160, align: 8, elements: !1659)
!1659 = !{!1660}
!1660 = !DISubrange(count: 20)
!1661 = !DILocation(line: 378, column: 22, scope: !1597)
!1662 = !DILocalVariable(name: "iter", scope: !1597, file: !15, line: 379, type: !927)
!1663 = !DILocation(line: 379, column: 25, scope: !1597)
!1664 = !DILocalVariable(name: "namenode", scope: !1597, file: !15, line: 380, type: !216)
!1665 = !DILocation(line: 380, column: 24, scope: !1597)
!1666 = !DILocation(line: 382, column: 11, scope: !1597)
!1667 = !DILocation(line: 382, column: 9, scope: !1597)
!1668 = !DILocation(line: 384, column: 25, scope: !1597)
!1669 = !DILocation(line: 384, column: 9, scope: !1597)
!1670 = !DILocation(line: 384, column: 7, scope: !1597)
!1671 = !DILocation(line: 385, column: 19, scope: !1597)
!1672 = !DILocation(line: 385, column: 2, scope: !1597)
!1673 = !DILocation(line: 387, column: 9, scope: !1597)
!1674 = !DILocation(line: 387, column: 7, scope: !1597)
!1675 = !DILocation(line: 388, column: 2, scope: !1597)
!1676 = !DILocation(line: 388, column: 41, scope: !1677)
!1677 = !DILexicalBlockFile(scope: !1597, file: !15, discriminator: 1)
!1678 = !DILocation(line: 388, column: 21, scope: !1677)
!1679 = !DILocation(line: 388, column: 19, scope: !1677)
!1680 = !DILocation(line: 388, column: 2, scope: !1677)
!1681 = !DILocalVariable(name: "d", scope: !1682, file: !15, line: 389, type: !212)
!1682 = distinct !DILexicalBlock(scope: !1597, file: !15, line: 388, column: 49)
!1683 = !DILocation(line: 389, column: 26, scope: !1682)
!1684 = !DILocation(line: 389, column: 30, scope: !1682)
!1685 = !DILocation(line: 389, column: 40, scope: !1682)
!1686 = !DILocation(line: 391, column: 7, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1682, file: !15, line: 391, column: 7)
!1688 = !DILocation(line: 391, column: 9, scope: !1687)
!1689 = !DILocation(line: 391, column: 16, scope: !1687)
!1690 = !DILocation(line: 391, column: 19, scope: !1691)
!1691 = !DILexicalBlockFile(scope: !1687, file: !15, discriminator: 1)
!1692 = !DILocation(line: 391, column: 22, scope: !1691)
!1693 = !DILocation(line: 391, column: 33, scope: !1691)
!1694 = !DILocation(line: 391, column: 7, scope: !1691)
!1695 = !DILocation(line: 392, column: 4, scope: !1687)
!1696 = distinct !{!1696, !1675}
!1697 = !DILocation(line: 394, column: 11, scope: !1682)
!1698 = !DILocation(line: 394, column: 17, scope: !1682)
!1699 = !DILocation(line: 395, column: 11, scope: !1682)
!1700 = !DILocation(line: 395, column: 14, scope: !1682)
!1701 = !DILocation(line: 395, column: 26, scope: !1682)
!1702 = !DILocation(line: 395, column: 34, scope: !1682)
!1703 = !DILocation(line: 395, column: 44, scope: !1682)
!1704 = !DILocation(line: 396, column: 11, scope: !1682)
!1705 = !DILocation(line: 396, column: 14, scope: !1682)
!1706 = !DILocation(line: 396, column: 26, scope: !1682)
!1707 = !DILocation(line: 397, column: 30, scope: !1682)
!1708 = !DILocation(line: 397, column: 11, scope: !1682)
!1709 = !DILocation(line: 394, column: 3, scope: !1682)
!1710 = !DILocation(line: 388, column: 2, scope: !1711)
!1711 = !DILexicalBlockFile(scope: !1597, file: !15, discriminator: 2)
!1712 = !DILocation(line: 399, column: 22, scope: !1597)
!1713 = !DILocation(line: 399, column: 2, scope: !1597)
!1714 = !DILocation(line: 401, column: 19, scope: !1597)
!1715 = !DILocation(line: 401, column: 2, scope: !1597)
!1716 = !DILocation(line: 402, column: 20, scope: !1597)
!1717 = !DILocation(line: 402, column: 2, scope: !1597)
!1718 = !DILocation(line: 403, column: 21, scope: !1597)
!1719 = !DILocation(line: 403, column: 2, scope: !1597)
!1720 = !DILocation(line: 404, column: 19, scope: !1597)
!1721 = !DILocation(line: 404, column: 2, scope: !1597)
!1722 = !DILocation(line: 406, column: 7, scope: !1597)
!1723 = !DILocation(line: 406, column: 2, scope: !1597)
!1724 = !DILocation(line: 407, column: 1, scope: !1597)
!1725 = distinct !DISubprogram(name: "file_rename", scope: !15, file: !15, line: 267, type: !1726, isLocal: true, isDefinition: true, scopeLine: 268, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !391)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{null, !1267, !1267}
!1728 = !DILocalVariable(name: "src", arg: 1, scope: !1725, file: !15, line: 267, type: !1267)
!1729 = !DILocation(line: 267, column: 26, scope: !1725)
!1730 = !DILocalVariable(name: "dst", arg: 2, scope: !1725, file: !15, line: 267, type: !1267)
!1731 = !DILocation(line: 267, column: 44, scope: !1725)
!1732 = !DILocation(line: 269, column: 6, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1725, file: !15, line: 269, column: 6)
!1734 = !DILocation(line: 269, column: 11, scope: !1733)
!1735 = !DILocation(line: 269, column: 22, scope: !1733)
!1736 = !DILocation(line: 269, column: 6, scope: !1725)
!1737 = !DILocation(line: 270, column: 3, scope: !1733)
!1738 = !DILocation(line: 272, column: 6, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1725, file: !15, line: 272, column: 6)
!1740 = !DILocation(line: 272, column: 11, scope: !1739)
!1741 = !DILocation(line: 272, column: 22, scope: !1739)
!1742 = !DILocation(line: 272, column: 6, scope: !1725)
!1743 = !DILocation(line: 273, column: 14, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1745, file: !15, line: 273, column: 7)
!1745 = distinct !DILexicalBlock(scope: !1739, file: !15, line: 272, column: 42)
!1746 = !DILocation(line: 273, column: 19, scope: !1744)
!1747 = !DILocation(line: 273, column: 7, scope: !1744)
!1748 = !DILocation(line: 273, column: 7, scope: !1745)
!1749 = !DILocation(line: 274, column: 12, scope: !1744)
!1750 = !DILocation(line: 275, column: 12, scope: !1744)
!1751 = !DILocation(line: 275, column: 17, scope: !1744)
!1752 = !DILocation(line: 274, column: 4, scope: !1753)
!1753 = !DILexicalBlockFile(scope: !1744, file: !15, discriminator: 1)
!1754 = !DILocation(line: 274, column: 4, scope: !1744)
!1755 = !DILocation(line: 276, column: 2, scope: !1745)
!1756 = !DILocation(line: 277, column: 14, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1758, file: !15, line: 277, column: 7)
!1758 = distinct !DILexicalBlock(scope: !1739, file: !15, line: 276, column: 9)
!1759 = !DILocation(line: 277, column: 19, scope: !1757)
!1760 = !DILocation(line: 277, column: 25, scope: !1757)
!1761 = !DILocation(line: 277, column: 30, scope: !1757)
!1762 = !DILocation(line: 277, column: 7, scope: !1757)
!1763 = !DILocation(line: 277, column: 36, scope: !1757)
!1764 = !DILocation(line: 277, column: 7, scope: !1758)
!1765 = !DILocation(line: 278, column: 4, scope: !1757)
!1766 = !DILocation(line: 281, column: 13, scope: !1758)
!1767 = !DILocation(line: 281, column: 18, scope: !1758)
!1768 = !DILocation(line: 281, column: 24, scope: !1758)
!1769 = !DILocation(line: 281, column: 29, scope: !1758)
!1770 = !DILocation(line: 281, column: 3, scope: !1758)
!1771 = !DILocation(line: 283, column: 14, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1758, file: !15, line: 283, column: 7)
!1773 = !DILocation(line: 283, column: 19, scope: !1772)
!1774 = !DILocation(line: 283, column: 7, scope: !1772)
!1775 = !DILocation(line: 283, column: 7, scope: !1758)
!1776 = !DILocation(line: 284, column: 12, scope: !1772)
!1777 = !DILocation(line: 285, column: 12, scope: !1772)
!1778 = !DILocation(line: 285, column: 17, scope: !1772)
!1779 = !DILocation(line: 284, column: 4, scope: !1780)
!1780 = !DILexicalBlockFile(scope: !1772, file: !15, discriminator: 1)
!1781 = !DILocation(line: 284, column: 4, scope: !1772)
!1782 = !DILocation(line: 287, column: 1, scope: !1725)
!1783 = distinct !DISubprogram(name: "varbuf_diversion", scope: !15, file: !15, line: 308, type: !1784, isLocal: true, isDefinition: true, scopeLine: 310, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !391)
!1784 = !DISubroutineType(types: !1785)
!1785 = !{!19, !1786, !19, !19, !19}
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64, align: 64)
!1787 = !DILocalVariable(name: "str", arg: 1, scope: !1783, file: !15, line: 308, type: !1786)
!1788 = !DILocation(line: 308, column: 33, scope: !1783)
!1789 = !DILocalVariable(name: "pkgname", arg: 2, scope: !1783, file: !15, line: 308, type: !19)
!1790 = !DILocation(line: 308, column: 50, scope: !1783)
!1791 = !DILocalVariable(name: "filename", arg: 3, scope: !1783, file: !15, line: 309, type: !19)
!1792 = !DILocation(line: 309, column: 30, scope: !1783)
!1793 = !DILocalVariable(name: "divertto", arg: 4, scope: !1783, file: !15, line: 309, type: !19)
!1794 = !DILocation(line: 309, column: 52, scope: !1783)
!1795 = !DILocation(line: 311, column: 15, scope: !1783)
!1796 = !DILocation(line: 311, column: 2, scope: !1783)
!1797 = !DILocation(line: 313, column: 6, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1783, file: !15, line: 313, column: 6)
!1799 = !DILocation(line: 313, column: 14, scope: !1798)
!1800 = !DILocation(line: 313, column: 6, scope: !1783)
!1801 = !DILocation(line: 314, column: 7, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !15, line: 314, column: 7)
!1803 = distinct !DILexicalBlock(scope: !1798, file: !15, line: 313, column: 22)
!1804 = !DILocation(line: 314, column: 16, scope: !1802)
!1805 = !DILocation(line: 314, column: 7, scope: !1803)
!1806 = !DILocation(line: 315, column: 18, scope: !1802)
!1807 = !DILocation(line: 315, column: 23, scope: !1802)
!1808 = !DILocation(line: 315, column: 57, scope: !1802)
!1809 = !DILocation(line: 315, column: 4, scope: !1810)
!1810 = !DILexicalBlockFile(scope: !1802, file: !15, discriminator: 1)
!1811 = !DILocation(line: 315, column: 4, scope: !1802)
!1812 = !DILocation(line: 317, column: 18, scope: !1802)
!1813 = !DILocation(line: 317, column: 23, scope: !1802)
!1814 = !DILocation(line: 318, column: 18, scope: !1802)
!1815 = !DILocation(line: 318, column: 28, scope: !1802)
!1816 = !DILocation(line: 317, column: 4, scope: !1810)
!1817 = !DILocation(line: 319, column: 2, scope: !1803)
!1818 = !DILocation(line: 320, column: 7, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1820, file: !15, line: 320, column: 7)
!1820 = distinct !DILexicalBlock(scope: !1798, file: !15, line: 319, column: 9)
!1821 = !DILocation(line: 320, column: 16, scope: !1819)
!1822 = !DILocation(line: 320, column: 7, scope: !1820)
!1823 = !DILocation(line: 321, column: 18, scope: !1819)
!1824 = !DILocation(line: 321, column: 23, scope: !1819)
!1825 = !DILocation(line: 322, column: 18, scope: !1819)
!1826 = !DILocation(line: 322, column: 28, scope: !1819)
!1827 = !DILocation(line: 321, column: 4, scope: !1828)
!1828 = !DILexicalBlockFile(scope: !1819, file: !15, discriminator: 1)
!1829 = !DILocation(line: 321, column: 4, scope: !1819)
!1830 = !DILocation(line: 324, column: 18, scope: !1819)
!1831 = !DILocation(line: 324, column: 23, scope: !1819)
!1832 = !DILocation(line: 325, column: 18, scope: !1819)
!1833 = !DILocation(line: 325, column: 28, scope: !1819)
!1834 = !DILocation(line: 325, column: 38, scope: !1819)
!1835 = !DILocation(line: 324, column: 4, scope: !1828)
!1836 = !DILocation(line: 328, column: 9, scope: !1783)
!1837 = !DILocation(line: 328, column: 14, scope: !1783)
!1838 = !DILocation(line: 328, column: 2, scope: !1783)
!1839 = distinct !DISubprogram(name: "check_writable_dir", scope: !15, file: !15, line: 177, type: !1293, isLocal: true, isDefinition: true, scopeLine: 178, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !391)
!1840 = !DILocalVariable(name: "f", arg: 1, scope: !1839, file: !15, line: 177, type: !1267)
!1841 = !DILocation(line: 177, column: 33, scope: !1839)
!1842 = !DILocalVariable(name: "tmpname", scope: !1839, file: !15, line: 179, type: !238)
!1843 = !DILocation(line: 179, column: 8, scope: !1839)
!1844 = !DILocalVariable(name: "tmpfd", scope: !1839, file: !15, line: 180, type: !43)
!1845 = !DILocation(line: 180, column: 6, scope: !1839)
!1846 = !DILocation(line: 182, column: 28, scope: !1839)
!1847 = !DILocation(line: 182, column: 31, scope: !1839)
!1848 = !DILocation(line: 182, column: 12, scope: !1839)
!1849 = !DILocation(line: 182, column: 10, scope: !1839)
!1850 = !DILocation(line: 184, column: 16, scope: !1839)
!1851 = !DILocation(line: 184, column: 10, scope: !1839)
!1852 = !DILocation(line: 184, column: 8, scope: !1839)
!1853 = !DILocation(line: 185, column: 6, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1839, file: !15, line: 185, column: 6)
!1855 = !DILocation(line: 185, column: 12, scope: !1854)
!1856 = !DILocation(line: 185, column: 6, scope: !1839)
!1857 = !DILocation(line: 186, column: 11, scope: !1854)
!1858 = !DILocation(line: 186, column: 43, scope: !1854)
!1859 = !DILocation(line: 186, column: 46, scope: !1854)
!1860 = !DILocation(line: 186, column: 3, scope: !1861)
!1861 = !DILexicalBlockFile(scope: !1854, file: !15, discriminator: 1)
!1862 = !DILocation(line: 186, column: 3, scope: !1854)
!1863 = !DILocation(line: 187, column: 8, scope: !1839)
!1864 = !DILocation(line: 187, column: 2, scope: !1839)
!1865 = !DILocation(line: 188, column: 15, scope: !1839)
!1866 = !DILocation(line: 188, column: 8, scope: !1839)
!1867 = !DILocation(line: 190, column: 7, scope: !1839)
!1868 = !DILocation(line: 190, column: 2, scope: !1839)
!1869 = !DILocation(line: 191, column: 1, scope: !1839)
!1870 = distinct !DISubprogram(name: "diversion_pkg_name", scope: !15, file: !15, line: 299, type: !210, isLocal: true, isDefinition: true, scopeLine: 300, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !391)
!1871 = !DILocalVariable(name: "d", arg: 1, scope: !1870, file: !15, line: 299, type: !212)
!1872 = !DILocation(line: 299, column: 43, scope: !1870)
!1873 = !DILocation(line: 301, column: 6, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1870, file: !15, line: 301, column: 6)
!1875 = !DILocation(line: 301, column: 9, scope: !1874)
!1876 = !DILocation(line: 301, column: 16, scope: !1874)
!1877 = !DILocation(line: 301, column: 6, scope: !1870)
!1878 = !DILocation(line: 302, column: 3, scope: !1874)
!1879 = !DILocation(line: 304, column: 10, scope: !1874)
!1880 = !DILocation(line: 304, column: 13, scope: !1874)
!1881 = !DILocation(line: 304, column: 21, scope: !1874)
!1882 = !DILocation(line: 304, column: 3, scope: !1874)
!1883 = !DILocation(line: 305, column: 1, scope: !1870)
!1884 = distinct !DISubprogram(name: "file_copy", scope: !15, file: !15, line: 229, type: !1885, isLocal: true, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !391)
!1885 = !DISubroutineType(types: !1886)
!1886 = !{null, !19, !19}
!1887 = !DILocalVariable(name: "src", arg: 1, scope: !1884, file: !15, line: 229, type: !19)
!1888 = !DILocation(line: 229, column: 23, scope: !1884)
!1889 = !DILocalVariable(name: "dst", arg: 2, scope: !1884, file: !15, line: 229, type: !19)
!1890 = !DILocation(line: 229, column: 40, scope: !1884)
!1891 = !DILocalVariable(name: "err", scope: !1884, file: !15, line: 231, type: !1892)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_error", file: !157, line: 42, size: 128, align: 64, elements: !1893)
!1893 = !{!1894, !1895, !1896}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1892, file: !157, line: 43, baseType: !156, size: 32, align: 32)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "syserrno", scope: !1892, file: !157, line: 45, baseType: !43, size: 32, align: 32, offset: 32)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1892, file: !157, line: 46, baseType: !238, size: 64, align: 64, offset: 64)
!1897 = !DILocation(line: 231, column: 20, scope: !1884)
!1898 = !DILocalVariable(name: "tmp", scope: !1884, file: !15, line: 232, type: !238)
!1899 = !DILocation(line: 232, column: 8, scope: !1884)
!1900 = !DILocalVariable(name: "srcfd", scope: !1884, file: !15, line: 233, type: !43)
!1901 = !DILocation(line: 233, column: 6, scope: !1884)
!1902 = !DILocalVariable(name: "dstfd", scope: !1884, file: !15, line: 233, type: !43)
!1903 = !DILocation(line: 233, column: 13, scope: !1884)
!1904 = !DILocation(line: 235, column: 15, scope: !1884)
!1905 = !DILocation(line: 235, column: 10, scope: !1884)
!1906 = !DILocation(line: 235, column: 8, scope: !1884)
!1907 = !DILocation(line: 236, column: 6, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1884, file: !15, line: 236, column: 6)
!1909 = !DILocation(line: 236, column: 12, scope: !1908)
!1910 = !DILocation(line: 236, column: 6, scope: !1884)
!1911 = !DILocation(line: 237, column: 11, scope: !1908)
!1912 = !DILocation(line: 237, column: 48, scope: !1908)
!1913 = !DILocation(line: 237, column: 3, scope: !1914)
!1914 = !DILexicalBlockFile(scope: !1908, file: !15, discriminator: 1)
!1915 = !DILocation(line: 237, column: 3, scope: !1908)
!1916 = !DILocation(line: 239, column: 24, scope: !1884)
!1917 = !DILocation(line: 239, column: 8, scope: !1884)
!1918 = !DILocation(line: 239, column: 6, scope: !1884)
!1919 = !DILocation(line: 240, column: 16, scope: !1884)
!1920 = !DILocation(line: 240, column: 10, scope: !1884)
!1921 = !DILocation(line: 240, column: 8, scope: !1884)
!1922 = !DILocation(line: 241, column: 6, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1884, file: !15, line: 241, column: 6)
!1924 = !DILocation(line: 241, column: 12, scope: !1923)
!1925 = !DILocation(line: 241, column: 6, scope: !1884)
!1926 = !DILocation(line: 242, column: 11, scope: !1923)
!1927 = !DILocation(line: 242, column: 50, scope: !1923)
!1928 = !DILocation(line: 242, column: 3, scope: !1929)
!1929 = !DILexicalBlockFile(scope: !1923, file: !15, discriminator: 1)
!1930 = !DILocation(line: 242, column: 3, scope: !1923)
!1931 = !DILocation(line: 244, column: 51, scope: !1884)
!1932 = !DILocation(line: 244, column: 2, scope: !1884)
!1933 = !DILocation(line: 246, column: 25, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1884, file: !15, line: 246, column: 6)
!1935 = !DILocation(line: 246, column: 10, scope: !1934)
!1936 = !DILocation(line: 246, column: 6, scope: !1934)
!1937 = !DILocation(line: 246, column: 30, scope: !1934)
!1938 = !DILocation(line: 246, column: 6, scope: !1884)
!1939 = !DILocation(line: 247, column: 10, scope: !1934)
!1940 = !DILocation(line: 247, column: 51, scope: !1934)
!1941 = !DILocation(line: 247, column: 56, scope: !1934)
!1942 = !DILocation(line: 247, column: 65, scope: !1934)
!1943 = !DILocation(line: 247, column: 3, scope: !1944)
!1944 = !DILexicalBlockFile(scope: !1934, file: !15, discriminator: 1)
!1945 = !DILocation(line: 247, column: 3, scope: !1934)
!1946 = !DILocation(line: 249, column: 8, scope: !1884)
!1947 = !DILocation(line: 249, column: 2, scope: !1884)
!1948 = !DILocation(line: 251, column: 12, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1884, file: !15, line: 251, column: 6)
!1950 = !DILocation(line: 251, column: 6, scope: !1949)
!1951 = !DILocation(line: 251, column: 6, scope: !1884)
!1952 = !DILocation(line: 252, column: 11, scope: !1949)
!1953 = !DILocation(line: 252, column: 48, scope: !1949)
!1954 = !DILocation(line: 252, column: 3, scope: !1955)
!1955 = !DILexicalBlockFile(scope: !1949, file: !15, discriminator: 1)
!1956 = !DILocation(line: 252, column: 3, scope: !1949)
!1957 = !DILocation(line: 253, column: 12, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1884, file: !15, line: 253, column: 6)
!1959 = !DILocation(line: 253, column: 6, scope: !1958)
!1960 = !DILocation(line: 253, column: 6, scope: !1884)
!1961 = !DILocation(line: 254, column: 11, scope: !1958)
!1962 = !DILocation(line: 254, column: 49, scope: !1958)
!1963 = !DILocation(line: 254, column: 3, scope: !1964)
!1964 = !DILexicalBlockFile(scope: !1958, file: !15, discriminator: 1)
!1965 = !DILocation(line: 254, column: 3, scope: !1958)
!1966 = !DILocation(line: 256, column: 18, scope: !1884)
!1967 = !DILocation(line: 256, column: 23, scope: !1884)
!1968 = !DILocation(line: 256, column: 2, scope: !1884)
!1969 = !DILocation(line: 258, column: 13, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1884, file: !15, line: 258, column: 6)
!1971 = !DILocation(line: 258, column: 18, scope: !1970)
!1972 = !DILocation(line: 258, column: 6, scope: !1970)
!1973 = !DILocation(line: 258, column: 23, scope: !1970)
!1974 = !DILocation(line: 258, column: 6, scope: !1884)
!1975 = !DILocation(line: 259, column: 11, scope: !1970)
!1976 = !DILocation(line: 259, column: 50, scope: !1970)
!1977 = !DILocation(line: 259, column: 55, scope: !1970)
!1978 = !DILocation(line: 259, column: 3, scope: !1979)
!1979 = !DILexicalBlockFile(scope: !1970, file: !15, discriminator: 1)
!1980 = !DILocation(line: 259, column: 3, scope: !1970)
!1981 = !DILocation(line: 261, column: 7, scope: !1884)
!1982 = !DILocation(line: 261, column: 2, scope: !1884)
!1983 = !DILocation(line: 263, column: 2, scope: !1884)
!1984 = !DILocation(line: 264, column: 1, scope: !1884)
!1985 = distinct !DISubprogram(name: "diversion_is_shared", scope: !15, file: !15, line: 565, type: !1474, isLocal: true, isDefinition: true, scopeLine: 566, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !391)
!1986 = !DILocalVariable(name: "set", arg: 1, scope: !1985, file: !15, line: 565, type: !256)
!1987 = !DILocation(line: 565, column: 36, scope: !1985)
!1988 = !DILocalVariable(name: "namenode", arg: 2, scope: !1985, file: !15, line: 565, type: !216)
!1989 = !DILocation(line: 565, column: 63, scope: !1985)
!1990 = !DILocalVariable(name: "archname", scope: !1985, file: !15, line: 567, type: !19)
!1991 = !DILocation(line: 567, column: 14, scope: !1985)
!1992 = !DILocalVariable(name: "pkg", scope: !1985, file: !15, line: 568, type: !266)
!1993 = !DILocation(line: 568, column: 18, scope: !1985)
!1994 = !DILocalVariable(name: "arch", scope: !1985, file: !15, line: 569, type: !303)
!1995 = !DILocation(line: 569, column: 20, scope: !1985)
!1996 = !DILocalVariable(name: "iter", scope: !1985, file: !15, line: 570, type: !1483)
!1997 = !DILocation(line: 570, column: 30, scope: !1985)
!1998 = !DILocalVariable(name: "shared", scope: !1985, file: !15, line: 571, type: !309)
!1999 = !DILocation(line: 571, column: 6, scope: !1985)
!2000 = !DILocation(line: 573, column: 6, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1985, file: !15, line: 573, column: 6)
!2002 = !DILocation(line: 573, column: 10, scope: !2001)
!2003 = !DILocation(line: 573, column: 6, scope: !1985)
!2004 = !DILocation(line: 574, column: 3, scope: !2001)
!2005 = !DILocation(line: 576, column: 13, scope: !1985)
!2006 = !DILocation(line: 576, column: 11, scope: !1985)
!2007 = !DILocation(line: 577, column: 24, scope: !1985)
!2008 = !DILocation(line: 577, column: 9, scope: !1985)
!2009 = !DILocation(line: 577, column: 7, scope: !1985)
!2010 = !DILocation(line: 578, column: 6, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !1985, file: !15, line: 578, column: 6)
!2012 = !DILocation(line: 578, column: 12, scope: !2011)
!2013 = !DILocation(line: 578, column: 17, scope: !2011)
!2014 = !DILocation(line: 578, column: 35, scope: !2011)
!2015 = !DILocation(line: 578, column: 38, scope: !2016)
!2016 = !DILexicalBlockFile(scope: !2011, file: !15, discriminator: 1)
!2017 = !DILocation(line: 578, column: 44, scope: !2016)
!2018 = !DILocation(line: 578, column: 49, scope: !2016)
!2019 = !DILocation(line: 578, column: 6, scope: !2016)
!2020 = !DILocation(line: 579, column: 3, scope: !2011)
!2021 = !DILocation(line: 581, column: 14, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !1985, file: !15, line: 581, column: 2)
!2023 = !DILocation(line: 581, column: 19, scope: !2022)
!2024 = !DILocation(line: 581, column: 11, scope: !2022)
!2025 = !DILocation(line: 581, column: 7, scope: !2022)
!2026 = !DILocation(line: 581, column: 24, scope: !2027)
!2027 = !DILexicalBlockFile(scope: !2028, file: !15, discriminator: 1)
!2028 = distinct !DILexicalBlock(scope: !2022, file: !15, line: 581, column: 2)
!2029 = !DILocation(line: 581, column: 2, scope: !2027)
!2030 = !DILocation(line: 582, column: 33, scope: !2028)
!2031 = !DILocation(line: 582, column: 3, scope: !2028)
!2032 = !DILocation(line: 581, column: 35, scope: !2033)
!2033 = !DILexicalBlockFile(scope: !2028, file: !15, discriminator: 2)
!2034 = !DILocation(line: 581, column: 40, scope: !2033)
!2035 = !DILocation(line: 581, column: 33, scope: !2033)
!2036 = !DILocation(line: 581, column: 2, scope: !2033)
!2037 = distinct !{!2037, !2038}
!2038 = !DILocation(line: 581, column: 2, scope: !1985)
!2039 = !DILocation(line: 584, column: 33, scope: !1985)
!2040 = !DILocation(line: 584, column: 9, scope: !1985)
!2041 = !DILocation(line: 584, column: 7, scope: !1985)
!2042 = !DILocation(line: 585, column: 2, scope: !1985)
!2043 = !DILocation(line: 585, column: 41, scope: !2044)
!2044 = !DILexicalBlockFile(scope: !1985, file: !15, discriminator: 1)
!2045 = !DILocation(line: 585, column: 16, scope: !2044)
!2046 = !DILocation(line: 585, column: 14, scope: !2044)
!2047 = !DILocation(line: 585, column: 2, scope: !2044)
!2048 = !DILocation(line: 586, column: 7, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2050, file: !15, line: 586, column: 7)
!2050 = distinct !DILexicalBlock(scope: !1985, file: !15, line: 585, column: 49)
!2051 = !DILocation(line: 586, column: 12, scope: !2049)
!2052 = !DILocation(line: 586, column: 19, scope: !2049)
!2053 = !DILocation(line: 586, column: 16, scope: !2049)
!2054 = !DILocation(line: 586, column: 23, scope: !2049)
!2055 = !DILocation(line: 586, column: 26, scope: !2056)
!2056 = !DILexicalBlockFile(scope: !2049, file: !15, discriminator: 1)
!2057 = !DILocation(line: 586, column: 31, scope: !2056)
!2058 = !DILocation(line: 586, column: 41, scope: !2056)
!2059 = !DILocation(line: 586, column: 49, scope: !2056)
!2060 = !DILocation(line: 586, column: 46, scope: !2056)
!2061 = !DILocation(line: 586, column: 7, scope: !2056)
!2062 = !DILocation(line: 587, column: 11, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2049, file: !15, line: 586, column: 55)
!2064 = !DILocation(line: 588, column: 4, scope: !2063)
!2065 = !DILocation(line: 585, column: 2, scope: !2066)
!2066 = !DILexicalBlockFile(scope: !1985, file: !15, discriminator: 2)
!2067 = distinct !{!2067, !2042}
!2068 = !DILocation(line: 591, column: 27, scope: !1985)
!2069 = !DILocation(line: 591, column: 2, scope: !1985)
!2070 = !DILocation(line: 593, column: 9, scope: !1985)
!2071 = !DILocation(line: 593, column: 2, scope: !1985)
!2072 = !DILocation(line: 594, column: 1, scope: !1985)
