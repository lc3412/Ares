; ModuleID = './[inter]src--enquiry.o.i'
source_filename = "./[inter]src--enquiry.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.cmdinfo = type { i8*, i8, i32, i32*, i8**, void (%struct.cmdinfo*, i8*)*, i32, i8*, i32 (i8**)* }
%struct.dpkg_version = type { i32, i8*, i8* }
%struct.varbuf = type { i64, i64, i8* }
%struct.relationinfo = type { i8*, i32, i32, i32, i32, i32, i32, i8 }
%struct.pkginfo = type { %struct.pkgset*, %struct.pkginfo*, i32, i32, i32, i32, i8*, i8*, %struct.dpkg_version, %struct.pkgbin, %struct.pkgbin, %struct.perpackagestate*, %struct.archivedetails*, %struct.anon, %struct.trigaw*, %struct.trigpend*, %struct.fsys_namenode_list*, i64, i8, i8 }
%struct.pkgset = type { %struct.pkgset*, i8*, %struct.pkginfo, %struct.anon.2, i32 }
%struct.anon.2 = type { %struct.deppossi*, %struct.deppossi* }
%struct.deppossi = type { %struct.dependency*, %struct.pkgset*, %struct.deppossi*, %struct.deppossi*, %struct.deppossi*, %struct.dpkg_arch*, %struct.dpkg_version, i32, i8, i8 }
%struct.dependency = type { %struct.pkginfo*, %struct.dependency*, %struct.deppossi*, i32 }
%struct.dpkg_arch = type { %struct.dpkg_arch*, i8*, i32 }
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
%struct.audit_problem = type { i1 (%struct.pkginfo*, %struct.audit_problem*)*, %union.anon, i8* }
%union.anon = type { i8* }
%struct.pkg_array = type { i32, %struct.pkginfo** }
%struct.sectionentry = type { %struct.sectionentry*, i8*, i32 }
%struct.pkg_hash_iter = type opaque
%struct.deppossi_pkg_iterator = type opaque
%struct.dpkg_error = type { i32, i32, i8* }

@.str = private unnamed_addr constant [149 x i8] c"Another process has locked the database for writing, and might currently be\0Amodifying it, some of the following problems might just be due to that.\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"<standard output>\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"--%s takes no arguments\00", align 1
@cipaction = external global %struct.cmdinfo*, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c" %d in %s: \00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c" ...\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c" %d package, from the following section:\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c" %d packages, from the following sections:\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"   %s (%d)\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"1.1.0\00", align 1
@assertpredep.version = private unnamed_addr constant %struct.dpkg_version { i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8* null }, align 8
@.str.11 = private unnamed_addr constant [18 x i8] c"Pre-Depends field\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"1.4.0.7\00", align 1
@assertepoch.version = private unnamed_addr constant %struct.dpkg_version { i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* null }, align 8
@.str.13 = private unnamed_addr constant [6 x i8] c"epoch\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"1.4.1.17\00", align 1
@assertlongfilenames.version = private unnamed_addr constant %struct.dpkg_version { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i8* null }, align 8
@.str.15 = private unnamed_addr constant [15 x i8] c"long filenames\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"1.4.1.19\00", align 1
@assertmulticonrep.version = private unnamed_addr constant %struct.dpkg_version { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i8* null }, align 8
@.str.17 = private unnamed_addr constant [32 x i8] c"multiple Conflicts and Replaces\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"1.16.2\00", align 1
@assertmultiarch.version = private unnamed_addr constant %struct.dpkg_version { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i8* null }, align 8
@.str.19 = private unnamed_addr constant [11 x i8] c"multi-arch\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"1.17.11\00", align 1
@assertverprovides.version = private unnamed_addr constant %struct.dpkg_version { i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i8* null }, align 8
@.str.21 = private unnamed_addr constant [19 x i8] c"versioned Provides\00", align 1
@predeppackage.vb = internal global %struct.varbuf zeroinitializer, align 8
@.str.22 = private unnamed_addr constant [10 x i8] c"enquiry.c\00", align 1
@__func__.predeppackage = private unnamed_addr constant [14 x i8] c"predeppackage\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"unexpected unfound package\00", align 1
@.str.24 = private unnamed_addr constant [46 x i8] c"cannot see how to satisfy pre-dependency:\0A %s\00", align 1
@.str.25 = private unnamed_addr constant [66 x i8] c"cannot satisfy pre-dependencies for %.250s (wanted due to %.250s)\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.27 = private unnamed_addr constant [34 x i8] c"--%s takes one <pkgname> argument\00", align 1
@.str.28 = private unnamed_addr constant [33 x i8] c"package name '%s' is invalid: %s\00", align 1
@.str.29 = private unnamed_addr constant [35 x i8] c"--%s takes one <trigname> argument\00", align 1
@.str.30 = private unnamed_addr constant [33 x i8] c"trigger name '%s' is invalid: %s\00", align 1
@.str.31 = private unnamed_addr constant [35 x i8] c"--%s takes one <archname> argument\00", align 1
@.str.32 = private unnamed_addr constant [38 x i8] c"architecture name '%s' is invalid: %s\00", align 1
@.str.33 = private unnamed_addr constant [34 x i8] c"--%s takes one <version> argument\00", align 1
@.str.34 = private unnamed_addr constant [28 x i8] c"version '%s' has bad syntax\00", align 1
@cmpversions.relationinfos = internal constant [18 x %struct.relationinfo] [%struct.relationinfo { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i32 0, i32 0), i32 0, i32 0, i32 1, i32 0, i32 0, i32 1, i8 0 }, %struct.relationinfo { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i32 0, i32 0), i32 0, i32 1, i32 1, i32 0, i32 1, i32 1, i8 0 }, %struct.relationinfo { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i32 0, i32 0), i32 1, i32 0, i32 1, i32 1, i32 0, i32 1, i8 0 }, %struct.relationinfo { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i32 0, i32 0), i32 0, i32 1, i32 0, i32 0, i32 1, i32 0, i8 0 }, %struct.relationinfo { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i32 0, i32 0), i32 1, i32 0, i32 0, i32 1, i32 0, i32 0, i8 0 }, %struct.relationinfo { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i32 0, i32 0), i32 1, i32 1, i32 0, i32 1, i32 1, i32 0, i8 0 }, %struct.relationinfo { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i8 0 }, %struct.relationinfo { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i32 0, i32 1, i32 1, i32 1, i32 1, i32 0, i8 0 }, %struct.relationinfo { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i32 1, i32 0, i32 0, i32 0, i32 0, i32 1, i8 0 }, %struct.relationinfo { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i32 1, i32 1, i32 0, i32 0, i32 1, i32 1, i8 0 }, %struct.relationinfo { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i32 0, i32 0), i32 0, i32 0, i32 1, i32 0, i32 0, i32 1, i8 1 }, %struct.relationinfo { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i32 0, i32 0), i32 0, i32 0, i32 1, i32 0, i32 0, i32 1, i8 0 }, %struct.relationinfo { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i32 0, i32 0), i32 0, i32 1, i32 1, i32 0, i32 1, i32 1, i8 0 }, %struct.relationinfo { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i32 0, i32 0), i32 1, i32 0, i32 1, i32 1, i32 0, i32 1, i8 0 }, %struct.relationinfo { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.49, i32 0, i32 0), i32 1, i32 0, i32 0, i32 1, i32 0, i32 0, i8 1 }, %struct.relationinfo { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i32 0, i32 0), i32 1, i32 0, i32 0, i32 1, i32 0, i32 0, i8 0 }, %struct.relationinfo { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i32 0, i32 0), i32 1, i32 1, i32 0, i32 1, i32 1, i32 0, i8 0 }, %struct.relationinfo zeroinitializer], align 16
@.str.35 = private unnamed_addr constant [3 x i8] c"le\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"lt\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"eq\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"ne\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"ge\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"gt\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"le-nl\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"lt-nl\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"ge-nl\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"gt-nl\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str.52 = private unnamed_addr constant [73 x i8] c"--compare-versions takes three arguments: <version> <relation> <version>\00", align 1
@.str.53 = private unnamed_addr constant [32 x i8] c"--compare-versions bad relation\00", align 1
@.str.54 = private unnamed_addr constant [47 x i8] c"--%s used with obsolete relation operator '%s'\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@.str.56 = private unnamed_addr constant [31 x i8] c"cmpversions a='%s' b='%s' r=%d\00", align 1
@.str.57 = private unnamed_addr constant [30 x i8] c"package '%s' is not installed\00", align 1
@.str.58 = private unnamed_addr constant [179 x i8] c"The following packages are in a mess due to serious problems during\0Ainstallation.  They must be reinstalled for them (and any packages\0Athat depend on them) to function properly:\0A\00", align 1
@.str.59 = private unnamed_addr constant [172 x i8] c"The following packages have been unpacked but not yet configured.\0AThey must be configured using dpkg --configure or the configure\0Amenu option in dselect for them to work:\0A\00", align 1
@.str.60 = private unnamed_addr constant [219 x i8] c"The following packages are only half configured, probably due to problems\0Aconfiguring them the first time.  The configuration should be retried using\0Adpkg --configure <package> or the configure menu option in dselect:\0A\00", align 1
@.str.61 = private unnamed_addr constant [206 x i8] c"The following packages are only half installed, due to problems during\0Ainstallation.  The installation can probably be completed by retrying it;\0Athe packages can be removed using dselect or dpkg --remove:\0A\00", align 1
@.str.62 = private unnamed_addr constant [209 x i8] c"The following packages are awaiting processing of triggers that they\0Ahave activated in other packages.  This processing can be requested using\0Adselect or dpkg --configure --pending (or dpkg --triggers-only):\0A\00", align 1
@.str.63 = private unnamed_addr constant [203 x i8] c"The following packages have been triggered, but the trigger processing\0Ahas not yet been done.  Trigger processing can be requested using\0Adselect or dpkg --configure --pending (or dpkg --triggers-only):\0A\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.65 = private unnamed_addr constant [104 x i8] c"The following packages are missing the list control file in the\0Adatabase, they need to be reinstalled:\0A\00", align 1
@.str.66 = private unnamed_addr constant [8 x i8] c"md5sums\00", align 1
@.str.67 = private unnamed_addr constant [107 x i8] c"The following packages are missing the md5sums control file in the\0Adatabase, they need to be reinstalled:\0A\00", align 1
@.str.68 = private unnamed_addr constant [53 x i8] c"The following packages do not have an architecture:\0A\00", align 1
@.str.69 = private unnamed_addr constant [54 x i8] c"The following packages have an illegal architecture:\0A\00", align 1
@.str.70 = private unnamed_addr constant [200 x i8] c"The following packages have an unknown foreign architecture, which will\0Acause dependency issues on front-ends. This can be fixed by registering\0Athe foreign architecture with dpkg --add-architecture:\0A\00", align 1
@audit_problems = internal constant <{ { i1 (%struct.pkginfo*, %struct.audit_problem*)*, { i32, [4 x i8] }, i8* }, { i1 (%struct.pkginfo*, %struct.audit_problem*)*, { i32, [4 x i8] }, i8* }, { i1 (%struct.pkginfo*, %struct.audit_problem*)*, { i32, [4 x i8] }, i8* }, { i1 (%struct.pkginfo*, %struct.audit_problem*)*, { i32, [4 x i8] }, i8* }, { i1 (%struct.pkginfo*, %struct.audit_problem*)*, { i32, [4 x i8] }, i8* }, { i1 (%struct.pkginfo*, %struct.audit_problem*)*, { i32, [4 x i8] }, i8* }, %struct.audit_problem, %struct.audit_problem, { i1 (%struct.pkginfo*, %struct.audit_problem*)*, { i32, [4 x i8] }, i8* }, { i1 (%struct.pkginfo*, %struct.audit_problem*)*, { i32, [4 x i8] }, i8* }, { i1 (%struct.pkginfo*, %struct.audit_problem*)*, { i32, [4 x i8] }, i8* }, %struct.audit_problem }> <{ { i1 (%struct.pkginfo*, %struct.audit_problem*)*, { i32, [4 x i8] }, i8* } { i1 (%struct.pkginfo*, %struct.audit_problem*)* @audit_reinstreq, { i32, [4 x i8] } { i32 0, [4 x i8] undef }, i8* getelementptr inbounds ([179 x i8], [179 x i8]* @.str.58, i32 0, i32 0) }, { i1 (%struct.pkginfo*, %struct.audit_problem*)*, { i32, [4 x i8] }, i8* } { i1 (%struct.pkginfo*, %struct.audit_problem*)* @audit_status, { i32, [4 x i8] } { i32 3, [4 x i8] undef }, i8* getelementptr inbounds ([172 x i8], [172 x i8]* @.str.59, i32 0, i32 0) }, { i1 (%struct.pkginfo*, %struct.audit_problem*)*, { i32, [4 x i8] }, i8* } { i1 (%struct.pkginfo*, %struct.audit_problem*)* @audit_status, { i32, [4 x i8] } { i32 4, [4 x i8] undef }, i8* getelementptr inbounds ([219 x i8], [219 x i8]* @.str.60, i32 0, i32 0) }, { i1 (%struct.pkginfo*, %struct.audit_problem*)*, { i32, [4 x i8] }, i8* } { i1 (%struct.pkginfo*, %struct.audit_problem*)* @audit_status, { i32, [4 x i8] } { i32 2, [4 x i8] undef }, i8* getelementptr inbounds ([206 x i8], [206 x i8]* @.str.61, i32 0, i32 0) }, { i1 (%struct.pkginfo*, %struct.audit_problem*)*, { i32, [4 x i8] }, i8* } { i1 (%struct.pkginfo*, %struct.audit_problem*)* @audit_status, { i32, [4 x i8] } { i32 5, [4 x i8] undef }, i8* getelementptr inbounds ([209 x i8], [209 x i8]* @.str.62, i32 0, i32 0) }, { i1 (%struct.pkginfo*, %struct.audit_problem*)*, { i32, [4 x i8] }, i8* } { i1 (%struct.pkginfo*, %struct.audit_problem*)* @audit_status, { i32, [4 x i8] } { i32 6, [4 x i8] undef }, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.63, i32 0, i32 0) }, %struct.audit_problem { i1 (%struct.pkginfo*, %struct.audit_problem*)* @audit_infofile, %union.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i32 0, i32 0) }, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.65, i32 0, i32 0) }, %struct.audit_problem { i1 (%struct.pkginfo*, %struct.audit_problem*)* @audit_infofile, %union.anon { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.66, i32 0, i32 0) }, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.67, i32 0, i32 0) }, { i1 (%struct.pkginfo*, %struct.audit_problem*)*, { i32, [4 x i8] }, i8* } { i1 (%struct.pkginfo*, %struct.audit_problem*)* @audit_arch, { i32, [4 x i8] } { i32 1, [4 x i8] undef }, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.68, i32 0, i32 0) }, { i1 (%struct.pkginfo*, %struct.audit_problem*)*, { i32, [4 x i8] }, i8* } { i1 (%struct.pkginfo*, %struct.audit_problem*)* @audit_arch, { i32, [4 x i8] } { i32 2, [4 x i8] undef }, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.69, i32 0, i32 0) }, { i1 (%struct.pkginfo*, %struct.audit_problem*)*, { i32, [4 x i8] }, i8* } { i1 (%struct.pkginfo*, %struct.audit_problem*)* @audit_arch, { i32, [4 x i8] } { i32 7, [4 x i8] undef }, i8* getelementptr inbounds ([200 x i8], [200 x i8]* @.str.70, i32 0, i32 0) }, %struct.audit_problem zeroinitializer }>, align 16
@.str.72 = private unnamed_addr constant [13 x i8] c" %-20s %.*s\0A\00", align 1
@.str.73 = private unnamed_addr constant [18 x i8] c"section\04<unknown>\00", align 1
@__func__.yettobeunpacked = private unnamed_addr constant [16 x i8] c"yettobeunpacked\00", align 1
@.str.74 = private unnamed_addr constant [28 x i8] c"unknown package status '%d'\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"dpkg\00", align 1
@.str.76 = private unnamed_addr constant [118 x i8] c"Version of dpkg with working %s support not yet configured.\0A Please use 'dpkg --configure dpkg', and then try again.\0A\00", align 1
@.str.77 = private unnamed_addr constant [62 x i8] c"dpkg not recorded as installed, cannot check for %s support!\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @audit(i8**) #0 !dbg !425 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.audit_problem*, align 8
  %4 = alloca %struct.pkg_array, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca %struct.pkginfo*, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !426, metadata !427), !dbg !428
  call void @llvm.dbg.declare(metadata %struct.audit_problem** %3, metadata !429, metadata !427), !dbg !430
  call void @llvm.dbg.declare(metadata %struct.pkg_array* %4, metadata !431, metadata !427), !dbg !438
  call void @llvm.dbg.declare(metadata i8* %5, metadata !439, metadata !427), !dbg !440
  store i8 0, i8* %5, align 1, !dbg !440
  call void @llvm.dbg.declare(metadata i32* %6, metadata !441, metadata !427), !dbg !442
  %9 = call i32 @modstatdb_open(i32 0), !dbg !443
  %10 = load i8**, i8*** %2, align 8, !dbg !444
  %11 = load i8*, i8** %10, align 8, !dbg !446
  %12 = icmp ne i8* %11, null, !dbg !446
  br i1 %12, label %14, label %13, !dbg !447

; <label>:13:                                     ; preds = %1
  call void @pkg_array_init_from_hash(%struct.pkg_array* %4), !dbg !448
  br label %16, !dbg !448

; <label>:14:                                     ; preds = %1
  %15 = load i8**, i8*** %2, align 8, !dbg !449
  call void @pkg_array_init_from_names(%struct.pkg_array* %4, %struct.pkginfo* (i8*)* @pkg_array_mapper, i8** %15), !dbg !450
  br label %16

; <label>:16:                                     ; preds = %14, %13
  call void @pkg_array_sort(%struct.pkg_array* %4, i32 (i8*, i8*)* @pkg_sorter_by_nonambig_name_arch), !dbg !451
  store %struct.audit_problem* getelementptr inbounds ([12 x %struct.audit_problem], [12 x %struct.audit_problem]* bitcast (<{ { i1 (%struct.pkginfo*, %struct.audit_problem*)*, { i32, [4 x i8] }, i8* }, { i1 (%struct.pkginfo*, %struct.audit_problem*)*, { i32, [4 x i8] }, i8* }, { i1 (%struct.pkginfo*, %struct.audit_problem*)*, { i32, [4 x i8] }, i8* }, { i1 (%struct.pkginfo*, %struct.audit_problem*)*, { i32, [4 x i8] }, i8* }, { i1 (%struct.pkginfo*, %struct.audit_problem*)*, { i32, [4 x i8] }, i8* }, { i1 (%struct.pkginfo*, %struct.audit_problem*)*, { i32, [4 x i8] }, i8* }, %struct.audit_problem, %struct.audit_problem, { i1 (%struct.pkginfo*, %struct.audit_problem*)*, { i32, [4 x i8] }, i8* }, { i1 (%struct.pkginfo*, %struct.audit_problem*)*, { i32, [4 x i8] }, i8* }, { i1 (%struct.pkginfo*, %struct.audit_problem*)*, { i32, [4 x i8] }, i8* }, %struct.audit_problem }>* @audit_problems to [12 x %struct.audit_problem]*), i32 0, i32 0), %struct.audit_problem** %3, align 8, !dbg !452
  br label %17, !dbg !454

; <label>:17:                                     ; preds = %72, %16
  %18 = load %struct.audit_problem*, %struct.audit_problem** %3, align 8, !dbg !455
  %19 = getelementptr inbounds %struct.audit_problem, %struct.audit_problem* %18, i32 0, i32 0, !dbg !458
  %20 = load i1 (%struct.pkginfo*, %struct.audit_problem*)*, i1 (%struct.pkginfo*, %struct.audit_problem*)** %19, align 8, !dbg !458
  %21 = icmp ne i1 (%struct.pkginfo*, %struct.audit_problem*)* %20, null, !dbg !459
  br i1 %21, label %22, label %75, !dbg !459

; <label>:22:                                     ; preds = %17
  call void @llvm.dbg.declare(metadata i8* %7, metadata !460, metadata !427), !dbg !462
  store i8 0, i8* %7, align 1, !dbg !462
  store i32 0, i32* %6, align 4, !dbg !463
  br label %23, !dbg !465

; <label>:23:                                     ; preds = %63, %22
  %24 = load i32, i32* %6, align 4, !dbg !466
  %25 = getelementptr inbounds %struct.pkg_array, %struct.pkg_array* %4, i32 0, i32 0, !dbg !469
  %26 = load i32, i32* %25, align 8, !dbg !469
  %27 = icmp slt i32 %24, %26, !dbg !470
  br i1 %27, label %28, label %66, !dbg !471

; <label>:28:                                     ; preds = %23
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %8, metadata !472, metadata !427), !dbg !474
  %29 = load i32, i32* %6, align 4, !dbg !475
  %30 = sext i32 %29 to i64, !dbg !476
  %31 = getelementptr inbounds %struct.pkg_array, %struct.pkg_array* %4, i32 0, i32 1, !dbg !477
  %32 = load %struct.pkginfo**, %struct.pkginfo*** %31, align 8, !dbg !477
  %33 = getelementptr inbounds %struct.pkginfo*, %struct.pkginfo** %32, i64 %30, !dbg !476
  %34 = load %struct.pkginfo*, %struct.pkginfo** %33, align 8, !dbg !476
  store %struct.pkginfo* %34, %struct.pkginfo** %8, align 8, !dbg !474
  %35 = load %struct.audit_problem*, %struct.audit_problem** %3, align 8, !dbg !478
  %36 = getelementptr inbounds %struct.audit_problem, %struct.audit_problem* %35, i32 0, i32 0, !dbg !480
  %37 = load i1 (%struct.pkginfo*, %struct.audit_problem*)*, i1 (%struct.pkginfo*, %struct.audit_problem*)** %36, align 8, !dbg !480
  %38 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !481
  %39 = load %struct.audit_problem*, %struct.audit_problem** %3, align 8, !dbg !482
  %40 = call zeroext i1 %37(%struct.pkginfo* %38, %struct.audit_problem* %39), !dbg !478
  br i1 %40, label %42, label %41, !dbg !483

; <label>:41:                                     ; preds = %28
  br label %63, !dbg !484

; <label>:42:                                     ; preds = %28
  %43 = load i8, i8* %5, align 1, !dbg !485
  %44 = trunc i8 %43 to i1, !dbg !485
  br i1 %44, label %51, label %45, !dbg !487

; <label>:45:                                     ; preds = %42
  %46 = call zeroext i1 @modstatdb_is_locked(), !dbg !488
  br i1 %46, label %47, label %50, !dbg !491

; <label>:47:                                     ; preds = %45
  %48 = call i8* @gettext(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str, i32 0, i32 0)) #8, !dbg !492
  %49 = call i32 @puts(i8* %48), !dbg !493
  br label %50, !dbg !495

; <label>:50:                                     ; preds = %47, %45
  store i8 1, i8* %5, align 1, !dbg !496
  br label %51, !dbg !497

; <label>:51:                                     ; preds = %50, %42
  %52 = load i8, i8* %7, align 1, !dbg !498
  %53 = trunc i8 %52 to i1, !dbg !498
  br i1 %53, label %61, label %54, !dbg !500

; <label>:54:                                     ; preds = %51
  %55 = load %struct.audit_problem*, %struct.audit_problem** %3, align 8, !dbg !501
  %56 = getelementptr inbounds %struct.audit_problem, %struct.audit_problem* %55, i32 0, i32 2, !dbg !503
  %57 = load i8*, i8** %56, align 8, !dbg !503
  %58 = call i8* @gettext(i8* %57) #8, !dbg !504
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !505
  %60 = call i32 @fputs(i8* %58, %struct._IO_FILE* %59), !dbg !506
  store i8 1, i8* %7, align 1, !dbg !508
  br label %61, !dbg !509

; <label>:61:                                     ; preds = %54, %51
  %62 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !510
  call void @describebriefly(%struct.pkginfo* %62), !dbg !511
  br label %63, !dbg !512

; <label>:63:                                     ; preds = %61, %41
  %64 = load i32, i32* %6, align 4, !dbg !513
  %65 = add nsw i32 %64, 1, !dbg !513
  store i32 %65, i32* %6, align 4, !dbg !513
  br label %23, !dbg !515, !llvm.loop !516

; <label>:66:                                     ; preds = %23
  %67 = load i8, i8* %7, align 1, !dbg !518
  %68 = trunc i8 %67 to i1, !dbg !518
  br i1 %68, label %69, label %71, !dbg !520

; <label>:69:                                     ; preds = %66
  %70 = call i32 @putchar(i32 10), !dbg !521
  br label %71, !dbg !521

; <label>:71:                                     ; preds = %69, %66
  br label %72, !dbg !523

; <label>:72:                                     ; preds = %71
  %73 = load %struct.audit_problem*, %struct.audit_problem** %3, align 8, !dbg !524
  %74 = getelementptr inbounds %struct.audit_problem, %struct.audit_problem* %73, i32 1, !dbg !524
  store %struct.audit_problem* %74, %struct.audit_problem** %3, align 8, !dbg !524
  br label %17, !dbg !526, !llvm.loop !527

; <label>:75:                                     ; preds = %17
  call void @pkg_array_destroy(%struct.pkg_array* %4), !dbg !529
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !530
  %77 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0)) #8, !dbg !531
  call void @m_output(%struct._IO_FILE* %76, i8* %77), !dbg !532
  ret i32 0, !dbg !534
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @modstatdb_open(i32) #2

declare void @pkg_array_init_from_hash(%struct.pkg_array*) #2

declare void @pkg_array_init_from_names(%struct.pkg_array*, %struct.pkginfo* (i8*)*, i8**) #2

; Function Attrs: nounwind uwtable
define internal %struct.pkginfo* @pkg_array_mapper(i8*) #0 !dbg !535 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pkginfo*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !538, metadata !427), !dbg !539
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %3, metadata !540, metadata !427), !dbg !541
  %4 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !542
  %5 = load i8*, i8** %2, align 8, !dbg !543
  %6 = call %struct.pkginfo* @dpkg_options_parse_pkgname(%struct.cmdinfo* %4, i8* %5), !dbg !544
  store %struct.pkginfo* %6, %struct.pkginfo** %3, align 8, !dbg !545
  %7 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !546
  %8 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %7, i32 0, i32 4, !dbg !548
  %9 = load i32, i32* %8, align 8, !dbg !548
  %10 = icmp eq i32 %9, 0, !dbg !549
  br i1 %10, label %11, label %15, !dbg !550

; <label>:11:                                     ; preds = %1
  %12 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.57, i32 0, i32 0)) #8, !dbg !551
  %13 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !552
  %14 = call i8* @pkg_name(%struct.pkginfo* %13, i32 1), !dbg !553
  call void (i8*, ...) @notice(i8* %12, i8* %14), !dbg !555
  br label %15, !dbg !557

; <label>:15:                                     ; preds = %11, %1
  %16 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !558
  ret %struct.pkginfo* %16, !dbg !559
}

declare void @pkg_array_sort(%struct.pkg_array*, i32 (i8*, i8*)*) #2

declare i32 @pkg_sorter_by_nonambig_name_arch(i8*, i8*) #2

declare zeroext i1 @modstatdb_is_locked() #2

declare i32 @puts(i8*) #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare i32 @fputs(i8*, %struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define internal void @describebriefly(%struct.pkginfo*) #0 !dbg !560 {
  %2 = alloca %struct.pkginfo*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %2, metadata !563, metadata !427), !dbg !564
  call void @llvm.dbg.declare(metadata i32* %3, metadata !565, metadata !427), !dbg !566
  call void @llvm.dbg.declare(metadata i32* %4, metadata !567, metadata !427), !dbg !568
  call void @llvm.dbg.declare(metadata i8** %5, metadata !569, metadata !427), !dbg !570
  store i32 57, i32* %3, align 4, !dbg !571
  %6 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !572
  %7 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %6, i32 0, i32 0, !dbg !573
  %8 = load %struct.pkgset*, %struct.pkgset** %7, align 8, !dbg !573
  %9 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %8, i32 0, i32 1, !dbg !574
  %10 = load i8*, i8** %9, align 8, !dbg !574
  %11 = call i64 @strlen(i8* %10) #9, !dbg !575
  %12 = trunc i64 %11 to i32, !dbg !575
  store i32 %12, i32* %4, align 4, !dbg !576
  %13 = load i32, i32* %4, align 4, !dbg !577
  %14 = icmp sgt i32 %13, 20, !dbg !579
  br i1 %14, label %15, label %20, !dbg !580

; <label>:15:                                     ; preds = %1
  %16 = load i32, i32* %4, align 4, !dbg !581
  %17 = sub nsw i32 %16, 20, !dbg !583
  %18 = load i32, i32* %3, align 4, !dbg !584
  %19 = sub nsw i32 %18, %17, !dbg !584
  store i32 %19, i32* %3, align 4, !dbg !584
  br label %20, !dbg !585

; <label>:20:                                     ; preds = %15, %1
  %21 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !586
  %22 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !587
  %23 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %22, i32 0, i32 9, !dbg !588
  %24 = call i8* @pkgbin_synopsis(%struct.pkginfo* %21, %struct.pkgbin* %23, i32* %4), !dbg !589
  store i8* %24, i8** %5, align 8, !dbg !590
  %25 = load i32, i32* %4, align 4, !dbg !591
  %26 = load i32, i32* %3, align 4, !dbg !592
  %27 = icmp slt i32 %25, %26, !dbg !593
  br i1 %27, label %28, label %30, !dbg !594

; <label>:28:                                     ; preds = %20
  %29 = load i32, i32* %4, align 4, !dbg !595
  br label %32, !dbg !597

; <label>:30:                                     ; preds = %20
  %31 = load i32, i32* %3, align 4, !dbg !598
  br label %32, !dbg !600

; <label>:32:                                     ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ], !dbg !601
  store i32 %33, i32* %4, align 4, !dbg !603
  %34 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !604
  %35 = call i8* @pkg_name(%struct.pkginfo* %34, i32 1), !dbg !605
  %36 = load i32, i32* %4, align 4, !dbg !606
  %37 = load i8*, i8** %5, align 8, !dbg !607
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.72, i32 0, i32 0), i8* %35, i32 %36, i8* %37), !dbg !608
  ret void, !dbg !609
}

declare i32 @putchar(i32) #2

declare void @pkg_array_destroy(%struct.pkg_array*) #2

declare void @m_output(%struct._IO_FILE*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @unpackchk(i8**) #0 !dbg !610 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sectionentry*, align 8
  %7 = alloca %struct.sectionentry*, align 8
  %8 = alloca %struct.sectionentry**, align 8
  %9 = alloca %struct.pkg_hash_iter*, align 8
  %10 = alloca %struct.pkginfo*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [20 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !611, metadata !427), !dbg !612
  call void @llvm.dbg.declare(metadata i32* %4, metadata !613, metadata !427), !dbg !614
  call void @llvm.dbg.declare(metadata i32* %5, metadata !615, metadata !427), !dbg !616
  call void @llvm.dbg.declare(metadata %struct.sectionentry** %6, metadata !617, metadata !427), !dbg !624
  call void @llvm.dbg.declare(metadata %struct.sectionentry** %7, metadata !625, metadata !427), !dbg !626
  call void @llvm.dbg.declare(metadata %struct.sectionentry*** %8, metadata !627, metadata !427), !dbg !629
  call void @llvm.dbg.declare(metadata %struct.pkg_hash_iter** %9, metadata !630, metadata !427), !dbg !633
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %10, metadata !634, metadata !427), !dbg !635
  call void @llvm.dbg.declare(metadata i8** %11, metadata !636, metadata !427), !dbg !637
  call void @llvm.dbg.declare(metadata [20 x i8]* %12, metadata !638, metadata !427), !dbg !642
  call void @llvm.dbg.declare(metadata i32* %13, metadata !643, metadata !427), !dbg !644
  %15 = load i8**, i8*** %3, align 8, !dbg !645
  %16 = load i8*, i8** %15, align 8, !dbg !647
  %17 = icmp ne i8* %16, null, !dbg !647
  br i1 %17, label %18, label %23, !dbg !648

; <label>:18:                                     ; preds = %1
  %19 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0)) #8, !dbg !649
  %20 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !650
  %21 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %20, i32 0, i32 0, !dbg !651
  %22 = load i8*, i8** %21, align 8, !dbg !651
  call void (i8*, ...) @badusage(i8* %19, i8* %22) #10, !dbg !652
  unreachable, !dbg !654

; <label>:23:                                     ; preds = %1
  %24 = call i32 @modstatdb_open(i32 0), !dbg !655
  store i32 0, i32* %4, align 4, !dbg !656
  store %struct.sectionentry* null, %struct.sectionentry** %6, align 8, !dbg !657
  store i32 0, i32* %5, align 4, !dbg !658
  %25 = call %struct.pkg_hash_iter* @pkg_hash_iter_new(), !dbg !659
  store %struct.pkg_hash_iter* %25, %struct.pkg_hash_iter** %9, align 8, !dbg !660
  br label %26, !dbg !661

; <label>:26:                                     ; preds = %92, %33, %23
  %27 = load %struct.pkg_hash_iter*, %struct.pkg_hash_iter** %9, align 8, !dbg !662
  %28 = call %struct.pkginfo* @pkg_hash_iter_next_pkg(%struct.pkg_hash_iter* %27), !dbg !664
  store %struct.pkginfo* %28, %struct.pkginfo** %10, align 8, !dbg !665
  %29 = icmp ne %struct.pkginfo* %28, null, !dbg !666
  br i1 %29, label %30, label %99, !dbg !666

; <label>:30:                                     ; preds = %26
  %31 = load %struct.pkginfo*, %struct.pkginfo** %10, align 8, !dbg !667
  %32 = call zeroext i1 @yettobeunpacked(%struct.pkginfo* %31, i8** %11), !dbg !670
  br i1 %32, label %34, label %33, !dbg !671

; <label>:33:                                     ; preds = %30
  br label %26, !dbg !672, !llvm.loop !674

; <label>:34:                                     ; preds = %30
  %35 = load %struct.sectionentry*, %struct.sectionentry** %6, align 8, !dbg !675
  store %struct.sectionentry* %35, %struct.sectionentry** %7, align 8, !dbg !677
  br label %36, !dbg !678

; <label>:36:                                     ; preds = %49, %34
  %37 = load %struct.sectionentry*, %struct.sectionentry** %7, align 8, !dbg !679
  %38 = icmp ne %struct.sectionentry* %37, null, !dbg !679
  br i1 %38, label %39, label %46, !dbg !682

; <label>:39:                                     ; preds = %36
  %40 = load i8*, i8** %11, align 8, !dbg !683
  %41 = load %struct.sectionentry*, %struct.sectionentry** %7, align 8, !dbg !685
  %42 = getelementptr inbounds %struct.sectionentry, %struct.sectionentry* %41, i32 0, i32 1, !dbg !686
  %43 = load i8*, i8** %42, align 8, !dbg !686
  %44 = call i32 @strcasecmp(i8* %40, i8* %43) #9, !dbg !687
  %45 = icmp ne i32 %44, 0, !dbg !688
  br label %46

; <label>:46:                                     ; preds = %39, %36
  %47 = phi i1 [ false, %36 ], [ %45, %39 ]
  br i1 %47, label %48, label %53, !dbg !689

; <label>:48:                                     ; preds = %46
  br label %49, !dbg !691

; <label>:49:                                     ; preds = %48
  %50 = load %struct.sectionentry*, %struct.sectionentry** %7, align 8, !dbg !693
  %51 = getelementptr inbounds %struct.sectionentry, %struct.sectionentry* %50, i32 0, i32 0, !dbg !695
  %52 = load %struct.sectionentry*, %struct.sectionentry** %51, align 8, !dbg !695
  store %struct.sectionentry* %52, %struct.sectionentry** %7, align 8, !dbg !696
  br label %36, !dbg !697, !llvm.loop !698

; <label>:53:                                     ; preds = %46
  %54 = load %struct.sectionentry*, %struct.sectionentry** %7, align 8, !dbg !700
  %55 = icmp ne %struct.sectionentry* %54, null, !dbg !700
  br i1 %55, label %92, label %56, !dbg !702

; <label>:56:                                     ; preds = %53
  %57 = call i8* @nfmalloc(i64 24), !dbg !703
  %58 = bitcast i8* %57 to %struct.sectionentry*, !dbg !703
  store %struct.sectionentry* %58, %struct.sectionentry** %7, align 8, !dbg !705
  store %struct.sectionentry** %6, %struct.sectionentry*** %8, align 8, !dbg !706
  br label %59, !dbg !708

; <label>:59:                                     ; preds = %74, %56
  %60 = load %struct.sectionentry**, %struct.sectionentry*** %8, align 8, !dbg !709
  %61 = load %struct.sectionentry*, %struct.sectionentry** %60, align 8, !dbg !711
  %62 = icmp ne %struct.sectionentry* %61, null, !dbg !711
  br i1 %62, label %63, label %71, !dbg !712

; <label>:63:                                     ; preds = %59
  %64 = load i8*, i8** %11, align 8, !dbg !713
  %65 = load %struct.sectionentry**, %struct.sectionentry*** %8, align 8, !dbg !715
  %66 = load %struct.sectionentry*, %struct.sectionentry** %65, align 8, !dbg !716
  %67 = getelementptr inbounds %struct.sectionentry, %struct.sectionentry* %66, i32 0, i32 1, !dbg !717
  %68 = load i8*, i8** %67, align 8, !dbg !717
  %69 = call i32 @strcasecmp(i8* %64, i8* %68) #9, !dbg !718
  %70 = icmp sgt i32 %69, 0, !dbg !719
  br label %71

; <label>:71:                                     ; preds = %63, %59
  %72 = phi i1 [ false, %59 ], [ %70, %63 ]
  br i1 %72, label %73, label %78, !dbg !720

; <label>:73:                                     ; preds = %71
  br label %74, !dbg !722

; <label>:74:                                     ; preds = %73
  %75 = load %struct.sectionentry**, %struct.sectionentry*** %8, align 8, !dbg !724
  %76 = load %struct.sectionentry*, %struct.sectionentry** %75, align 8, !dbg !725
  %77 = getelementptr inbounds %struct.sectionentry, %struct.sectionentry* %76, i32 0, i32 0, !dbg !726
  store %struct.sectionentry** %77, %struct.sectionentry*** %8, align 8, !dbg !727
  br label %59, !dbg !728, !llvm.loop !730

; <label>:78:                                     ; preds = %71
  %79 = load i8*, i8** %11, align 8, !dbg !732
  %80 = load %struct.sectionentry*, %struct.sectionentry** %7, align 8, !dbg !733
  %81 = getelementptr inbounds %struct.sectionentry, %struct.sectionentry* %80, i32 0, i32 1, !dbg !734
  store i8* %79, i8** %81, align 8, !dbg !735
  %82 = load %struct.sectionentry*, %struct.sectionentry** %7, align 8, !dbg !736
  %83 = getelementptr inbounds %struct.sectionentry, %struct.sectionentry* %82, i32 0, i32 2, !dbg !737
  store i32 0, i32* %83, align 8, !dbg !738
  %84 = load %struct.sectionentry**, %struct.sectionentry*** %8, align 8, !dbg !739
  %85 = load %struct.sectionentry*, %struct.sectionentry** %84, align 8, !dbg !740
  %86 = load %struct.sectionentry*, %struct.sectionentry** %7, align 8, !dbg !741
  %87 = getelementptr inbounds %struct.sectionentry, %struct.sectionentry* %86, i32 0, i32 0, !dbg !742
  store %struct.sectionentry* %85, %struct.sectionentry** %87, align 8, !dbg !743
  %88 = load %struct.sectionentry*, %struct.sectionentry** %7, align 8, !dbg !744
  %89 = load %struct.sectionentry**, %struct.sectionentry*** %8, align 8, !dbg !745
  store %struct.sectionentry* %88, %struct.sectionentry** %89, align 8, !dbg !746
  %90 = load i32, i32* %5, align 4, !dbg !747
  %91 = add nsw i32 %90, 1, !dbg !747
  store i32 %91, i32* %5, align 4, !dbg !747
  br label %92, !dbg !748

; <label>:92:                                     ; preds = %78, %53
  %93 = load %struct.sectionentry*, %struct.sectionentry** %7, align 8, !dbg !749
  %94 = getelementptr inbounds %struct.sectionentry, %struct.sectionentry* %93, i32 0, i32 2, !dbg !750
  %95 = load i32, i32* %94, align 8, !dbg !751
  %96 = add nsw i32 %95, 1, !dbg !751
  store i32 %96, i32* %94, align 8, !dbg !751
  %97 = load i32, i32* %4, align 4, !dbg !752
  %98 = add nsw i32 %97, 1, !dbg !752
  store i32 %98, i32* %4, align 4, !dbg !752
  br label %26, !dbg !753, !llvm.loop !674

; <label>:99:                                     ; preds = %26
  %100 = load %struct.pkg_hash_iter*, %struct.pkg_hash_iter** %9, align 8, !dbg !755
  call void @pkg_hash_iter_free(%struct.pkg_hash_iter* %100), !dbg !756
  %101 = load i32, i32* %4, align 4, !dbg !757
  %102 = icmp eq i32 %101, 0, !dbg !759
  br i1 %102, label %103, label %104, !dbg !760

; <label>:103:                                    ; preds = %99
  store i32 0, i32* %2, align 4, !dbg !761
  br label %262, !dbg !761

; <label>:104:                                    ; preds = %99
  %105 = load i32, i32* %4, align 4, !dbg !762
  %106 = icmp sle i32 %105, 12, !dbg !764
  br i1 %106, label %107, label %121, !dbg !765

; <label>:107:                                    ; preds = %104
  %108 = call %struct.pkg_hash_iter* @pkg_hash_iter_new(), !dbg !766
  store %struct.pkg_hash_iter* %108, %struct.pkg_hash_iter** %9, align 8, !dbg !768
  br label %109, !dbg !769

; <label>:109:                                    ; preds = %117, %116, %107
  %110 = load %struct.pkg_hash_iter*, %struct.pkg_hash_iter** %9, align 8, !dbg !770
  %111 = call %struct.pkginfo* @pkg_hash_iter_next_pkg(%struct.pkg_hash_iter* %110), !dbg !772
  store %struct.pkginfo* %111, %struct.pkginfo** %10, align 8, !dbg !773
  %112 = icmp ne %struct.pkginfo* %111, null, !dbg !774
  br i1 %112, label %113, label %119, !dbg !774

; <label>:113:                                    ; preds = %109
  %114 = load %struct.pkginfo*, %struct.pkginfo** %10, align 8, !dbg !775
  %115 = call zeroext i1 @yettobeunpacked(%struct.pkginfo* %114, i8** null), !dbg !778
  br i1 %115, label %117, label %116, !dbg !779

; <label>:116:                                    ; preds = %113
  br label %109, !dbg !780, !llvm.loop !781

; <label>:117:                                    ; preds = %113
  %118 = load %struct.pkginfo*, %struct.pkginfo** %10, align 8, !dbg !782
  call void @describebriefly(%struct.pkginfo* %118), !dbg !783
  br label %109, !dbg !784, !llvm.loop !781

; <label>:119:                                    ; preds = %109
  %120 = load %struct.pkg_hash_iter*, %struct.pkg_hash_iter** %9, align 8, !dbg !786
  call void @pkg_hash_iter_free(%struct.pkg_hash_iter* %120), !dbg !787
  br label %259, !dbg !788

; <label>:121:                                    ; preds = %104
  %122 = load i32, i32* %5, align 4, !dbg !789
  %123 = icmp sle i32 %122, 12, !dbg !792
  br i1 %123, label %124, label %203, !dbg !789

; <label>:124:                                    ; preds = %121
  %125 = load %struct.sectionentry*, %struct.sectionentry** %6, align 8, !dbg !793
  store %struct.sectionentry* %125, %struct.sectionentry** %7, align 8, !dbg !796
  br label %126, !dbg !797

; <label>:126:                                    ; preds = %198, %124
  %127 = load %struct.sectionentry*, %struct.sectionentry** %7, align 8, !dbg !798
  %128 = icmp ne %struct.sectionentry* %127, null, !dbg !801
  br i1 %128, label %129, label %202, !dbg !801

; <label>:129:                                    ; preds = %126
  %130 = getelementptr inbounds [20 x i8], [20 x i8]* %12, i32 0, i32 0, !dbg !802
  %131 = load %struct.sectionentry*, %struct.sectionentry** %7, align 8, !dbg !804
  %132 = getelementptr inbounds %struct.sectionentry, %struct.sectionentry* %131, i32 0, i32 2, !dbg !805
  %133 = load i32, i32* %132, align 8, !dbg !805
  %134 = call i32 (i8*, i8*, ...) @sprintf(i8* %130, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i32 %133) #8, !dbg !806
  %135 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0)) #8, !dbg !807
  %136 = load %struct.sectionentry*, %struct.sectionentry** %7, align 8, !dbg !808
  %137 = getelementptr inbounds %struct.sectionentry, %struct.sectionentry* %136, i32 0, i32 2, !dbg !809
  %138 = load i32, i32* %137, align 8, !dbg !809
  %139 = load %struct.sectionentry*, %struct.sectionentry** %7, align 8, !dbg !810
  %140 = getelementptr inbounds %struct.sectionentry, %struct.sectionentry* %139, i32 0, i32 1, !dbg !811
  %141 = load i8*, i8** %140, align 8, !dbg !811
  %142 = call i32 (i8*, ...) @printf(i8* %135, i32 %138, i8* %141), !dbg !812
  %143 = load %struct.sectionentry*, %struct.sectionentry** %7, align 8, !dbg !814
  %144 = getelementptr inbounds %struct.sectionentry, %struct.sectionentry* %143, i32 0, i32 1, !dbg !815
  %145 = load i8*, i8** %144, align 8, !dbg !815
  %146 = call i64 @strlen(i8* %145) #9, !dbg !816
  %147 = sub i64 70, %146, !dbg !817
  %148 = getelementptr inbounds [20 x i8], [20 x i8]* %12, i32 0, i32 0, !dbg !818
  %149 = call i64 @strlen(i8* %148) #9, !dbg !819
  %150 = sub i64 %147, %149, !dbg !820
  %151 = trunc i64 %150 to i32, !dbg !821
  store i32 %151, i32* %13, align 4, !dbg !822
  br label %152, !dbg !823

; <label>:152:                                    ; preds = %155, %129
  %153 = load i32, i32* %13, align 4, !dbg !824
  %154 = icmp sgt i32 %153, 59, !dbg !825
  br i1 %154, label %155, label %159, !dbg !826

; <label>:155:                                    ; preds = %152
  %156 = call i32 @putchar(i32 32), !dbg !827
  %157 = load i32, i32* %13, align 4, !dbg !830
  %158 = add nsw i32 %157, -1, !dbg !830
  store i32 %158, i32* %13, align 4, !dbg !830
  br label %152, !dbg !831, !llvm.loop !832

; <label>:159:                                    ; preds = %152
  %160 = call %struct.pkg_hash_iter* @pkg_hash_iter_new(), !dbg !833
  store %struct.pkg_hash_iter* %160, %struct.pkg_hash_iter** %9, align 8, !dbg !834
  br label %161, !dbg !835

; <label>:161:                                    ; preds = %192, %176, %168, %159
  %162 = load %struct.pkg_hash_iter*, %struct.pkg_hash_iter** %9, align 8, !dbg !836
  %163 = call %struct.pkginfo* @pkg_hash_iter_next_pkg(%struct.pkg_hash_iter* %162), !dbg !837
  store %struct.pkginfo* %163, %struct.pkginfo** %10, align 8, !dbg !838
  %164 = icmp ne %struct.pkginfo* %163, null, !dbg !839
  br i1 %164, label %165, label %195, !dbg !839

; <label>:165:                                    ; preds = %161
  call void @llvm.dbg.declare(metadata i8** %14, metadata !840, metadata !427), !dbg !842
  %166 = load %struct.pkginfo*, %struct.pkginfo** %10, align 8, !dbg !843
  %167 = call zeroext i1 @yettobeunpacked(%struct.pkginfo* %166, i8** %11), !dbg !845
  br i1 %167, label %169, label %168, !dbg !846

; <label>:168:                                    ; preds = %165
  br label %161, !dbg !847, !llvm.loop !849

; <label>:169:                                    ; preds = %165
  %170 = load i8*, i8** %11, align 8, !dbg !850
  %171 = load %struct.sectionentry*, %struct.sectionentry** %7, align 8, !dbg !852
  %172 = getelementptr inbounds %struct.sectionentry, %struct.sectionentry* %171, i32 0, i32 1, !dbg !853
  %173 = load i8*, i8** %172, align 8, !dbg !853
  %174 = call i32 @strcasecmp(i8* %170, i8* %173) #9, !dbg !854
  %175 = icmp ne i32 %174, 0, !dbg !854
  br i1 %175, label %176, label %177, !dbg !855

; <label>:176:                                    ; preds = %169
  br label %161, !dbg !856, !llvm.loop !849

; <label>:177:                                    ; preds = %169
  %178 = load %struct.pkginfo*, %struct.pkginfo** %10, align 8, !dbg !858
  %179 = call i8* @pkg_name(%struct.pkginfo* %178, i32 1), !dbg !859
  store i8* %179, i8** %14, align 8, !dbg !860
  %180 = load i8*, i8** %14, align 8, !dbg !861
  %181 = call i64 @strlen(i8* %180) #9, !dbg !862
  %182 = load i32, i32* %13, align 4, !dbg !863
  %183 = sext i32 %182 to i64, !dbg !863
  %184 = sub i64 %183, %181, !dbg !863
  %185 = trunc i64 %184 to i32, !dbg !863
  store i32 %185, i32* %13, align 4, !dbg !863
  %186 = load i32, i32* %13, align 4, !dbg !864
  %187 = add nsw i32 %186, -1, !dbg !864
  store i32 %187, i32* %13, align 4, !dbg !864
  %188 = load i32, i32* %13, align 4, !dbg !865
  %189 = icmp slt i32 %188, 4, !dbg !867
  br i1 %189, label %190, label %192, !dbg !868

; <label>:190:                                    ; preds = %177
  %191 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0)), !dbg !869
  br label %195, !dbg !872

; <label>:192:                                    ; preds = %177
  %193 = load i8*, i8** %14, align 8, !dbg !873
  %194 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* %193), !dbg !874
  br label %161, !dbg !875, !llvm.loop !849

; <label>:195:                                    ; preds = %190, %161
  %196 = load %struct.pkg_hash_iter*, %struct.pkg_hash_iter** %9, align 8, !dbg !877
  call void @pkg_hash_iter_free(%struct.pkg_hash_iter* %196), !dbg !878
  %197 = call i32 @putchar(i32 10), !dbg !879
  br label %198, !dbg !880

; <label>:198:                                    ; preds = %195
  %199 = load %struct.sectionentry*, %struct.sectionentry** %7, align 8, !dbg !881
  %200 = getelementptr inbounds %struct.sectionentry, %struct.sectionentry* %199, i32 0, i32 0, !dbg !883
  %201 = load %struct.sectionentry*, %struct.sectionentry** %200, align 8, !dbg !883
  store %struct.sectionentry* %201, %struct.sectionentry** %7, align 8, !dbg !884
  br label %126, !dbg !885, !llvm.loop !886

; <label>:202:                                    ; preds = %126
  br label %258, !dbg !888

; <label>:203:                                    ; preds = %121
  %204 = load i32, i32* %4, align 4, !dbg !889
  %205 = sext i32 %204 to i64, !dbg !889
  %206 = call i8* @ngettext(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i32 0, i32 0), i64 %205) #8, !dbg !891
  %207 = load i32, i32* %4, align 4, !dbg !892
  %208 = call i32 (i8*, ...) @printf(i8* %206, i32 %207), !dbg !893
  store i32 0, i32* %13, align 4, !dbg !895
  %209 = load %struct.sectionentry*, %struct.sectionentry** %6, align 8, !dbg !896
  store %struct.sectionentry* %209, %struct.sectionentry** %7, align 8, !dbg !898
  br label %210, !dbg !899

; <label>:210:                                    ; preds = %252, %203
  %211 = load %struct.sectionentry*, %struct.sectionentry** %7, align 8, !dbg !900
  %212 = icmp ne %struct.sectionentry* %211, null, !dbg !903
  br i1 %212, label %213, label %256, !dbg !903

; <label>:213:                                    ; preds = %210
  %214 = getelementptr inbounds [20 x i8], [20 x i8]* %12, i32 0, i32 0, !dbg !904
  %215 = load %struct.sectionentry*, %struct.sectionentry** %7, align 8, !dbg !906
  %216 = getelementptr inbounds %struct.sectionentry, %struct.sectionentry* %215, i32 0, i32 2, !dbg !907
  %217 = load i32, i32* %216, align 8, !dbg !907
  %218 = call i32 (i8*, i8*, ...) @sprintf(i8* %214, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i32 %217) #8, !dbg !908
  %219 = load %struct.sectionentry*, %struct.sectionentry** %7, align 8, !dbg !909
  %220 = getelementptr inbounds %struct.sectionentry, %struct.sectionentry* %219, i32 0, i32 1, !dbg !910
  %221 = load i8*, i8** %220, align 8, !dbg !910
  %222 = call i64 @strlen(i8* %221) #9, !dbg !911
  %223 = add i64 6, %222, !dbg !912
  %224 = getelementptr inbounds [20 x i8], [20 x i8]* %12, i32 0, i32 0, !dbg !913
  %225 = call i64 @strlen(i8* %224) #9, !dbg !914
  %226 = add i64 %223, %225, !dbg !916
  %227 = load i32, i32* %13, align 4, !dbg !917
  %228 = sext i32 %227 to i64, !dbg !917
  %229 = sub i64 %228, %226, !dbg !917
  %230 = trunc i64 %229 to i32, !dbg !917
  store i32 %230, i32* %13, align 4, !dbg !917
  %231 = load i32, i32* %13, align 4, !dbg !918
  %232 = icmp slt i32 %231, 0, !dbg !920
  br i1 %232, label %233, label %244, !dbg !921

; <label>:233:                                    ; preds = %213
  %234 = call i32 @putchar(i32 10), !dbg !922
  %235 = load %struct.sectionentry*, %struct.sectionentry** %7, align 8, !dbg !925
  %236 = getelementptr inbounds %struct.sectionentry, %struct.sectionentry* %235, i32 0, i32 1, !dbg !926
  %237 = load i8*, i8** %236, align 8, !dbg !926
  %238 = call i64 @strlen(i8* %237) #9, !dbg !927
  %239 = sub i64 73, %238, !dbg !929
  %240 = getelementptr inbounds [20 x i8], [20 x i8]* %12, i32 0, i32 0, !dbg !930
  %241 = call i64 @strlen(i8* %240) #9, !dbg !931
  %242 = sub i64 %239, %241, !dbg !933
  %243 = trunc i64 %242 to i32, !dbg !934
  store i32 %243, i32* %13, align 4, !dbg !935
  br label %244, !dbg !936

; <label>:244:                                    ; preds = %233, %213
  %245 = load %struct.sectionentry*, %struct.sectionentry** %7, align 8, !dbg !937
  %246 = getelementptr inbounds %struct.sectionentry, %struct.sectionentry* %245, i32 0, i32 1, !dbg !938
  %247 = load i8*, i8** %246, align 8, !dbg !938
  %248 = load %struct.sectionentry*, %struct.sectionentry** %7, align 8, !dbg !939
  %249 = getelementptr inbounds %struct.sectionentry, %struct.sectionentry* %248, i32 0, i32 2, !dbg !940
  %250 = load i32, i32* %249, align 8, !dbg !940
  %251 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* %247, i32 %250), !dbg !941
  br label %252, !dbg !942

; <label>:252:                                    ; preds = %244
  %253 = load %struct.sectionentry*, %struct.sectionentry** %7, align 8, !dbg !943
  %254 = getelementptr inbounds %struct.sectionentry, %struct.sectionentry* %253, i32 0, i32 0, !dbg !945
  %255 = load %struct.sectionentry*, %struct.sectionentry** %254, align 8, !dbg !945
  store %struct.sectionentry* %255, %struct.sectionentry** %7, align 8, !dbg !946
  br label %210, !dbg !947, !llvm.loop !948

; <label>:256:                                    ; preds = %210
  %257 = call i32 @putchar(i32 10), !dbg !950
  br label %258

; <label>:258:                                    ; preds = %256, %202
  br label %259

; <label>:259:                                    ; preds = %258, %119
  %260 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !951
  %261 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0)) #8, !dbg !952
  call void @m_output(%struct._IO_FILE* %260, i8* %261), !dbg !953
  store i32 0, i32* %2, align 4, !dbg !954
  br label %262, !dbg !954

; <label>:262:                                    ; preds = %259, %103
  %263 = load i32, i32* %2, align 4, !dbg !955
  ret i32 %263, !dbg !955
}

; Function Attrs: noreturn
declare void @badusage(i8*, ...) #4

declare %struct.pkg_hash_iter* @pkg_hash_iter_new() #2

declare %struct.pkginfo* @pkg_hash_iter_next_pkg(%struct.pkg_hash_iter*) #2

; Function Attrs: nounwind uwtable
define internal zeroext i1 @yettobeunpacked(%struct.pkginfo*, i8**) #0 !dbg !956 {
  %3 = alloca i1, align 1
  %4 = alloca %struct.pkginfo*, align 8
  %5 = alloca i8**, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %4, metadata !959, metadata !427), !dbg !960
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !961, metadata !427), !dbg !962
  %6 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !963
  %7 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %6, i32 0, i32 2, !dbg !965
  %8 = load i32, i32* %7, align 8, !dbg !965
  %9 = icmp ne i32 %8, 1, !dbg !966
  br i1 %9, label %10, label %11, !dbg !967

; <label>:10:                                     ; preds = %2
  store i1 false, i1* %3, align 1, !dbg !968
  br label %38, !dbg !968

; <label>:11:                                     ; preds = %2
  %12 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !969
  %13 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %12, i32 0, i32 4, !dbg !970
  %14 = load i32, i32* %13, align 8, !dbg !970
  switch i32 %14, label %34 [
    i32 3, label %15
    i32 7, label %15
    i32 4, label %15
    i32 6, label %15
    i32 5, label %15
    i32 0, label %16
    i32 2, label %16
    i32 1, label %16
  ], !dbg !971

; <label>:15:                                     ; preds = %11, %11, %11, %11, %11
  store i1 false, i1* %3, align 1, !dbg !972
  br label %38, !dbg !972

; <label>:16:                                     ; preds = %11, %11, %11
  %17 = load i8**, i8*** %5, align 8, !dbg !974
  %18 = icmp ne i8** %17, null, !dbg !974
  br i1 %18, label %19, label %33, !dbg !976

; <label>:19:                                     ; preds = %16
  %20 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !977
  %21 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %20, i32 0, i32 7, !dbg !978
  %22 = load i8*, i8** %21, align 8, !dbg !978
  %23 = call zeroext i1 @str_is_set(i8* %22), !dbg !979
  br i1 %23, label %24, label %28, !dbg !979

; <label>:24:                                     ; preds = %19
  %25 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !980
  %26 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %25, i32 0, i32 7, !dbg !982
  %27 = load i8*, i8** %26, align 8, !dbg !982
  br label %30, !dbg !983

; <label>:28:                                     ; preds = %19
  %29 = call i8* @pgettext_aux(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i32 0, i32 0), i32 5), !dbg !984
  br label %30, !dbg !985

; <label>:30:                                     ; preds = %28, %24
  %31 = phi i8* [ %27, %24 ], [ %29, %28 ], !dbg !987
  %32 = load i8**, i8*** %5, align 8, !dbg !989
  store i8* %31, i8** %32, align 8, !dbg !990
  br label %33, !dbg !991

; <label>:33:                                     ; preds = %30, %16
  store i1 true, i1* %3, align 1, !dbg !992
  br label %38, !dbg !992

; <label>:34:                                     ; preds = %11
  %35 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !993
  %36 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %35, i32 0, i32 4, !dbg !994
  %37 = load i32, i32* %36, align 8, !dbg !994
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i32 266, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.yettobeunpacked, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.74, i32 0, i32 0), i32 %37) #10, !dbg !995
  unreachable, !dbg !995

; <label>:38:                                     ; preds = %33, %15, %10
  %39 = load i1, i1* %3, align 1, !dbg !996
  ret i1 %39, !dbg !996
}

; Function Attrs: nounwind readonly
declare i32 @strcasecmp(i8*, i8*) #5

declare i8* @nfmalloc(i64) #2

declare void @pkg_hash_iter_free(%struct.pkg_hash_iter*) #2

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

declare i8* @pkg_name(%struct.pkginfo*, i32) #2

; Function Attrs: nounwind
declare i8* @ngettext(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define i32 @assertpredep(i8**) #0 !dbg !997 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.dpkg_version, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !998, metadata !427), !dbg !999
  call void @llvm.dbg.declare(metadata %struct.dpkg_version* %3, metadata !1000, metadata !427), !dbg !1001
  %4 = bitcast %struct.dpkg_version* %3 to i8*, !dbg !1001
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* bitcast (%struct.dpkg_version* @assertpredep.version to i8*), i64 24, i32 8, i1 false), !dbg !1001
  %5 = load i8**, i8*** %2, align 8, !dbg !1002
  %6 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0)) #8, !dbg !1003
  %7 = call i32 @assert_version_support(i8** %5, %struct.dpkg_version* %3, i8* %6), !dbg !1004
  ret i32 %7, !dbg !1006
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #6

; Function Attrs: nounwind uwtable
define internal i32 @assert_version_support(i8**, %struct.dpkg_version*, i8*) #0 !dbg !1007 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.dpkg_version*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.pkginfo*, align 8
  store i8** %0, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !1011, metadata !427), !dbg !1012
  store %struct.dpkg_version* %1, %struct.dpkg_version** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.dpkg_version** %6, metadata !1013, metadata !427), !dbg !1014
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1015, metadata !427), !dbg !1016
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %8, metadata !1017, metadata !427), !dbg !1018
  %9 = load i8**, i8*** %5, align 8, !dbg !1019
  %10 = load i8*, i8** %9, align 8, !dbg !1021
  %11 = icmp ne i8* %10, null, !dbg !1021
  br i1 %11, label %12, label %17, !dbg !1022

; <label>:12:                                     ; preds = %3
  %13 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0)) #8, !dbg !1023
  %14 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !1024
  %15 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %14, i32 0, i32 0, !dbg !1025
  %16 = load i8*, i8** %15, align 8, !dbg !1025
  call void (i8*, ...) @badusage(i8* %13, i8* %16) #10, !dbg !1026
  unreachable, !dbg !1028

; <label>:17:                                     ; preds = %3
  %18 = call i32 @modstatdb_open(i32 0), !dbg !1029
  %19 = call %struct.pkginfo* @pkg_hash_find_singleton(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.75, i32 0, i32 0)), !dbg !1030
  store %struct.pkginfo* %19, %struct.pkginfo** %8, align 8, !dbg !1031
  %20 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1032
  %21 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %20, i32 0, i32 4, !dbg !1033
  %22 = load i32, i32* %21, align 8, !dbg !1033
  switch i32 %22, label %34 [
    i32 7, label %23
    i32 6, label %23
    i32 3, label %24
    i32 4, label %24
    i32 2, label %24
    i32 5, label %24
  ], !dbg !1034

; <label>:23:                                     ; preds = %17, %17
  store i32 0, i32* %4, align 4, !dbg !1035
  br label %38, !dbg !1035

; <label>:24:                                     ; preds = %17, %17, %17, %17
  %25 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1037
  %26 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %25, i32 0, i32 8, !dbg !1039
  %27 = load %struct.dpkg_version*, %struct.dpkg_version** %6, align 8, !dbg !1040
  %28 = call zeroext i1 @dpkg_version_relate(%struct.dpkg_version* %26, i32 5, %struct.dpkg_version* %27), !dbg !1041
  br i1 %28, label %29, label %30, !dbg !1042

; <label>:29:                                     ; preds = %24
  store i32 0, i32* %4, align 4, !dbg !1043
  br label %38, !dbg !1043

; <label>:30:                                     ; preds = %24
  %31 = call i8* @gettext(i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.76, i32 0, i32 0)) #8, !dbg !1044
  %32 = load i8*, i8** %7, align 8, !dbg !1045
  %33 = call i32 (i8*, ...) @printf(i8* %31, i8* %32), !dbg !1046
  store i32 1, i32* %4, align 4, !dbg !1048
  br label %38, !dbg !1048

; <label>:34:                                     ; preds = %17
  %35 = call i8* @gettext(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.77, i32 0, i32 0)) #8, !dbg !1049
  %36 = load i8*, i8** %7, align 8, !dbg !1050
  %37 = call i32 (i8*, ...) @printf(i8* %35, i8* %36), !dbg !1051
  store i32 1, i32* %4, align 4, !dbg !1052
  br label %38, !dbg !1052

; <label>:38:                                     ; preds = %34, %30, %29, %23
  %39 = load i32, i32* %4, align 4, !dbg !1053
  ret i32 %39, !dbg !1053
}

; Function Attrs: nounwind uwtable
define i32 @assertepoch(i8**) #0 !dbg !1054 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.dpkg_version, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !1055, metadata !427), !dbg !1056
  call void @llvm.dbg.declare(metadata %struct.dpkg_version* %3, metadata !1057, metadata !427), !dbg !1058
  %4 = bitcast %struct.dpkg_version* %3 to i8*, !dbg !1058
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* bitcast (%struct.dpkg_version* @assertepoch.version to i8*), i64 24, i32 8, i1 false), !dbg !1058
  %5 = load i8**, i8*** %2, align 8, !dbg !1059
  %6 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0)) #8, !dbg !1060
  %7 = call i32 @assert_version_support(i8** %5, %struct.dpkg_version* %3, i8* %6), !dbg !1061
  ret i32 %7, !dbg !1063
}

; Function Attrs: nounwind uwtable
define i32 @assertlongfilenames(i8**) #0 !dbg !1064 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.dpkg_version, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !1065, metadata !427), !dbg !1066
  call void @llvm.dbg.declare(metadata %struct.dpkg_version* %3, metadata !1067, metadata !427), !dbg !1068
  %4 = bitcast %struct.dpkg_version* %3 to i8*, !dbg !1068
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* bitcast (%struct.dpkg_version* @assertlongfilenames.version to i8*), i64 24, i32 8, i1 false), !dbg !1068
  %5 = load i8**, i8*** %2, align 8, !dbg !1069
  %6 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0)) #8, !dbg !1070
  %7 = call i32 @assert_version_support(i8** %5, %struct.dpkg_version* %3, i8* %6), !dbg !1071
  ret i32 %7, !dbg !1073
}

; Function Attrs: nounwind uwtable
define i32 @assertmulticonrep(i8**) #0 !dbg !1074 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.dpkg_version, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !1075, metadata !427), !dbg !1076
  call void @llvm.dbg.declare(metadata %struct.dpkg_version* %3, metadata !1077, metadata !427), !dbg !1078
  %4 = bitcast %struct.dpkg_version* %3 to i8*, !dbg !1078
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* bitcast (%struct.dpkg_version* @assertmulticonrep.version to i8*), i64 24, i32 8, i1 false), !dbg !1078
  %5 = load i8**, i8*** %2, align 8, !dbg !1079
  %6 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i32 0, i32 0)) #8, !dbg !1080
  %7 = call i32 @assert_version_support(i8** %5, %struct.dpkg_version* %3, i8* %6), !dbg !1081
  ret i32 %7, !dbg !1082
}

; Function Attrs: nounwind uwtable
define i32 @assertmultiarch(i8**) #0 !dbg !1083 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.dpkg_version, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !1084, metadata !427), !dbg !1085
  call void @llvm.dbg.declare(metadata %struct.dpkg_version* %3, metadata !1086, metadata !427), !dbg !1087
  %4 = bitcast %struct.dpkg_version* %3 to i8*, !dbg !1087
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* bitcast (%struct.dpkg_version* @assertmultiarch.version to i8*), i64 24, i32 8, i1 false), !dbg !1087
  %5 = load i8**, i8*** %2, align 8, !dbg !1088
  %6 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0)) #8, !dbg !1089
  %7 = call i32 @assert_version_support(i8** %5, %struct.dpkg_version* %3, i8* %6), !dbg !1090
  ret i32 %7, !dbg !1092
}

; Function Attrs: nounwind uwtable
define i32 @assertverprovides(i8**) #0 !dbg !1093 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.dpkg_version, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !1094, metadata !427), !dbg !1095
  call void @llvm.dbg.declare(metadata %struct.dpkg_version* %3, metadata !1096, metadata !427), !dbg !1097
  %4 = bitcast %struct.dpkg_version* %3 to i8*, !dbg !1097
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* bitcast (%struct.dpkg_version* @assertverprovides.version to i8*), i64 24, i32 8, i1 false), !dbg !1097
  %5 = load i8**, i8*** %2, align 8, !dbg !1098
  %6 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i32 0, i32 0)) #8, !dbg !1099
  %7 = call i32 @assert_version_support(i8** %5, %struct.dpkg_version* %3, i8* %6), !dbg !1100
  ret i32 %7, !dbg !1102
}

; Function Attrs: nounwind uwtable
define i32 @predeppackage(i8**) #0 !dbg !161 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca %struct.pkg_hash_iter*, align 8
  %5 = alloca %struct.pkginfo*, align 8
  %6 = alloca %struct.pkginfo*, align 8
  %7 = alloca %struct.pkginfo*, align 8
  %8 = alloca %struct.dependency*, align 8
  %9 = alloca %struct.deppossi*, align 8
  %10 = alloca %struct.deppossi*, align 8
  %11 = alloca %struct.deppossi_pkg_iterator*, align 8
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !1103, metadata !427), !dbg !1104
  call void @llvm.dbg.declare(metadata %struct.pkg_hash_iter** %4, metadata !1105, metadata !427), !dbg !1106
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %5, metadata !1107, metadata !427), !dbg !1108
  store %struct.pkginfo* null, %struct.pkginfo** %5, align 8, !dbg !1108
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %6, metadata !1109, metadata !427), !dbg !1110
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %7, metadata !1111, metadata !427), !dbg !1112
  call void @llvm.dbg.declare(metadata %struct.dependency** %8, metadata !1113, metadata !427), !dbg !1114
  call void @llvm.dbg.declare(metadata %struct.deppossi** %9, metadata !1115, metadata !427), !dbg !1116
  call void @llvm.dbg.declare(metadata %struct.deppossi** %10, metadata !1117, metadata !427), !dbg !1118
  %12 = load i8**, i8*** %3, align 8, !dbg !1119
  %13 = load i8*, i8** %12, align 8, !dbg !1121
  %14 = icmp ne i8* %13, null, !dbg !1121
  br i1 %14, label %15, label %20, !dbg !1122

; <label>:15:                                     ; preds = %1
  %16 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0)) #8, !dbg !1123
  %17 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !1124
  %18 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %17, i32 0, i32 0, !dbg !1125
  %19 = load i8*, i8** %18, align 8, !dbg !1125
  call void (i8*, ...) @badusage(i8* %16, i8* %19) #10, !dbg !1126
  unreachable, !dbg !1128

; <label>:20:                                     ; preds = %1
  %21 = call i32 @modstatdb_open(i32 256), !dbg !1129
  call void @clear_istobes(), !dbg !1130
  store %struct.dependency* null, %struct.dependency** %8, align 8, !dbg !1131
  %22 = call %struct.pkg_hash_iter* @pkg_hash_iter_new(), !dbg !1132
  store %struct.pkg_hash_iter* %22, %struct.pkg_hash_iter** %4, align 8, !dbg !1133
  br label %23, !dbg !1134

; <label>:23:                                     ; preds = %71, %43, %37, %20
  %24 = load %struct.dependency*, %struct.dependency** %8, align 8, !dbg !1135
  %25 = icmp ne %struct.dependency* %24, null, !dbg !1135
  br i1 %25, label %30, label %26, !dbg !1137

; <label>:26:                                     ; preds = %23
  %27 = load %struct.pkg_hash_iter*, %struct.pkg_hash_iter** %4, align 8, !dbg !1138
  %28 = call %struct.pkginfo* @pkg_hash_iter_next_pkg(%struct.pkg_hash_iter* %27), !dbg !1140
  store %struct.pkginfo* %28, %struct.pkginfo** %5, align 8, !dbg !1141
  %29 = icmp ne %struct.pkginfo* %28, null, !dbg !1142
  br label %30

; <label>:30:                                     ; preds = %26, %23
  %31 = phi i1 [ false, %23 ], [ %29, %26 ]
  br i1 %31, label %32, label %76, !dbg !1143

; <label>:32:                                     ; preds = %30
  %33 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1145
  %34 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %33, i32 0, i32 2, !dbg !1148
  %35 = load i32, i32* %34, align 8, !dbg !1148
  %36 = icmp ne i32 %35, 1, !dbg !1149
  br i1 %36, label %37, label %38, !dbg !1150

; <label>:37:                                     ; preds = %32
  br label %23, !dbg !1151, !llvm.loop !1152

; <label>:38:                                     ; preds = %32
  %39 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1153
  %40 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %39, i32 0, i32 12, !dbg !1155
  %41 = load %struct.archivedetails*, %struct.archivedetails** %40, align 8, !dbg !1155
  %42 = icmp ne %struct.archivedetails* %41, null, !dbg !1153
  br i1 %42, label %44, label %43, !dbg !1156

; <label>:43:                                     ; preds = %38
  br label %23, !dbg !1157, !llvm.loop !1152

; <label>:44:                                     ; preds = %38
  %45 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1158
  %46 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %45, i32 0, i32 11, !dbg !1159
  %47 = load %struct.perpackagestate*, %struct.perpackagestate** %46, align 8, !dbg !1159
  %48 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %47, i32 0, i32 0, !dbg !1160
  store i32 4, i32* %48, align 8, !dbg !1161
  %49 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1162
  %50 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %49, i32 0, i32 10, !dbg !1164
  %51 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %50, i32 0, i32 0, !dbg !1165
  %52 = load %struct.dependency*, %struct.dependency** %51, align 8, !dbg !1165
  store %struct.dependency* %52, %struct.dependency** %8, align 8, !dbg !1166
  br label %53, !dbg !1167

; <label>:53:                                     ; preds = %67, %44
  %54 = load %struct.dependency*, %struct.dependency** %8, align 8, !dbg !1168
  %55 = icmp ne %struct.dependency* %54, null, !dbg !1171
  br i1 %55, label %56, label %71, !dbg !1171

; <label>:56:                                     ; preds = %53
  %57 = load %struct.dependency*, %struct.dependency** %8, align 8, !dbg !1172
  %58 = getelementptr inbounds %struct.dependency, %struct.dependency* %57, i32 0, i32 3, !dbg !1175
  %59 = load i32, i32* %58, align 8, !dbg !1175
  %60 = icmp ne i32 %59, 3, !dbg !1176
  br i1 %60, label %61, label %62, !dbg !1177

; <label>:61:                                     ; preds = %56
  br label %67, !dbg !1178

; <label>:62:                                     ; preds = %56
  %63 = load %struct.dependency*, %struct.dependency** %8, align 8, !dbg !1180
  %64 = call zeroext i1 @depisok(%struct.dependency* %63, %struct.varbuf* @predeppackage.vb, %struct.pkginfo** null, %struct.pkginfo** null, i1 zeroext true), !dbg !1182
  br i1 %64, label %65, label %66, !dbg !1183

; <label>:65:                                     ; preds = %62
  br label %67, !dbg !1184

; <label>:66:                                     ; preds = %62
  br label %71, !dbg !1185

; <label>:67:                                     ; preds = %65, %61
  %68 = load %struct.dependency*, %struct.dependency** %8, align 8, !dbg !1186
  %69 = getelementptr inbounds %struct.dependency, %struct.dependency* %68, i32 0, i32 1, !dbg !1188
  %70 = load %struct.dependency*, %struct.dependency** %69, align 8, !dbg !1188
  store %struct.dependency* %70, %struct.dependency** %8, align 8, !dbg !1189
  br label %53, !dbg !1190, !llvm.loop !1191

; <label>:71:                                     ; preds = %66, %53
  %72 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1193
  %73 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %72, i32 0, i32 11, !dbg !1194
  %74 = load %struct.perpackagestate*, %struct.perpackagestate** %73, align 8, !dbg !1194
  %75 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %74, i32 0, i32 0, !dbg !1195
  store i32 0, i32* %75, align 8, !dbg !1196
  br label %23, !dbg !1197, !llvm.loop !1152

; <label>:76:                                     ; preds = %30
  %77 = load %struct.pkg_hash_iter*, %struct.pkg_hash_iter** %4, align 8, !dbg !1199
  call void @pkg_hash_iter_free(%struct.pkg_hash_iter* %77), !dbg !1200
  %78 = load %struct.dependency*, %struct.dependency** %8, align 8, !dbg !1201
  %79 = icmp ne %struct.dependency* %78, null, !dbg !1201
  br i1 %79, label %81, label %80, !dbg !1203

; <label>:80:                                     ; preds = %76
  store i32 1, i32* %2, align 4, !dbg !1204
  br label %253, !dbg !1204

; <label>:81:                                     ; preds = %76
  %82 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1205
  %83 = icmp eq %struct.pkginfo* %82, null, !dbg !1207
  br i1 %83, label %84, label %85, !dbg !1208

; <label>:84:                                     ; preds = %81
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i32 498, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.predeppackage, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i32 0, i32 0)) #10, !dbg !1209
  unreachable, !dbg !1209

; <label>:85:                                     ; preds = %81
  %86 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1210
  store %struct.pkginfo* %86, %struct.pkginfo** %6, align 8, !dbg !1211
  %87 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1212
  %88 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %87, i32 0, i32 11, !dbg !1213
  %89 = load %struct.perpackagestate*, %struct.perpackagestate** %88, align 8, !dbg !1213
  %90 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %89, i32 0, i32 0, !dbg !1214
  store i32 4, i32* %90, align 8, !dbg !1215
  br label %91, !dbg !1216, !llvm.loop !1217

; <label>:91:                                     ; preds = %242, %85
  %92 = load %struct.dependency*, %struct.dependency** %8, align 8, !dbg !1218
  %93 = getelementptr inbounds %struct.dependency, %struct.dependency* %92, i32 0, i32 2, !dbg !1221
  %94 = load %struct.deppossi*, %struct.deppossi** %93, align 8, !dbg !1221
  store %struct.deppossi* %94, %struct.deppossi** %9, align 8, !dbg !1222
  store %struct.pkginfo* null, %struct.pkginfo** %5, align 8, !dbg !1223
  br label %95, !dbg !1224

; <label>:95:                                     ; preds = %190, %91
  %96 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1225
  %97 = icmp ne %struct.pkginfo* %96, null, !dbg !1225
  br i1 %97, label %101, label %98, !dbg !1227

; <label>:98:                                     ; preds = %95
  %99 = load %struct.deppossi*, %struct.deppossi** %9, align 8, !dbg !1228
  %100 = icmp ne %struct.deppossi* %99, null, !dbg !1230
  br label %101

; <label>:101:                                    ; preds = %98, %95
  %102 = phi i1 [ false, %95 ], [ %100, %98 ]
  br i1 %102, label %103, label %194, !dbg !1231

; <label>:103:                                    ; preds = %101
  call void @llvm.dbg.declare(metadata %struct.deppossi_pkg_iterator** %11, metadata !1233, metadata !427), !dbg !1237
  %104 = load %struct.deppossi*, %struct.deppossi** %9, align 8, !dbg !1238
  %105 = call %struct.deppossi_pkg_iterator* @deppossi_pkg_iter_new(%struct.deppossi* %104, i32 1), !dbg !1239
  store %struct.deppossi_pkg_iterator* %105, %struct.deppossi_pkg_iterator** %11, align 8, !dbg !1240
  br label %106, !dbg !1241

; <label>:106:                                    ; preds = %187, %103
  %107 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1242
  %108 = icmp ne %struct.pkginfo* %107, null, !dbg !1242
  br i1 %108, label %113, label %109, !dbg !1244

; <label>:109:                                    ; preds = %106
  %110 = load %struct.deppossi_pkg_iterator*, %struct.deppossi_pkg_iterator** %11, align 8, !dbg !1245
  %111 = call %struct.pkginfo* @deppossi_pkg_iter_next(%struct.deppossi_pkg_iterator* %110), !dbg !1247
  store %struct.pkginfo* %111, %struct.pkginfo** %7, align 8, !dbg !1248
  %112 = icmp ne %struct.pkginfo* %111, null, !dbg !1249
  br label %113

; <label>:113:                                    ; preds = %109, %106
  %114 = phi i1 [ false, %106 ], [ %112, %109 ]
  br i1 %114, label %115, label %188, !dbg !1250

; <label>:115:                                    ; preds = %113
  %116 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1252
  %117 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %116, i32 0, i32 12, !dbg !1255
  %118 = load %struct.archivedetails*, %struct.archivedetails** %117, align 8, !dbg !1255
  %119 = icmp ne %struct.archivedetails* %118, null, !dbg !1252
  br i1 %119, label %120, label %134, !dbg !1256

; <label>:120:                                    ; preds = %115
  %121 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1257
  %122 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %121, i32 0, i32 11, !dbg !1258
  %123 = load %struct.perpackagestate*, %struct.perpackagestate** %122, align 8, !dbg !1258
  %124 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %123, i32 0, i32 0, !dbg !1259
  %125 = load i32, i32* %124, align 8, !dbg !1259
  %126 = icmp eq i32 %125, 0, !dbg !1260
  br i1 %126, label %127, label %134, !dbg !1261

; <label>:127:                                    ; preds = %120
  %128 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1262
  %129 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %128, i32 0, i32 10, !dbg !1263
  %130 = load %struct.deppossi*, %struct.deppossi** %9, align 8, !dbg !1264
  %131 = call zeroext i1 @versionsatisfied(%struct.pkgbin* %129, %struct.deppossi* %130), !dbg !1265
  br i1 %131, label %132, label %134, !dbg !1266

; <label>:132:                                    ; preds = %127
  %133 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1268
  store %struct.pkginfo* %133, %struct.pkginfo** %5, align 8, !dbg !1270
  br label %188, !dbg !1271

; <label>:134:                                    ; preds = %127, %120, %115
  %135 = load %struct.deppossi*, %struct.deppossi** %9, align 8, !dbg !1272
  %136 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %135, i32 0, i32 1, !dbg !1274
  %137 = load %struct.pkgset*, %struct.pkgset** %136, align 8, !dbg !1274
  %138 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %137, i32 0, i32 3, !dbg !1275
  %139 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %138, i32 0, i32 0, !dbg !1276
  %140 = load %struct.deppossi*, %struct.deppossi** %139, align 8, !dbg !1276
  store %struct.deppossi* %140, %struct.deppossi** %10, align 8, !dbg !1277
  br label %141, !dbg !1278

; <label>:141:                                    ; preds = %183, %134
  %142 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1279
  %143 = icmp ne %struct.pkginfo* %142, null, !dbg !1279
  br i1 %143, label %147, label %144, !dbg !1281

; <label>:144:                                    ; preds = %141
  %145 = load %struct.deppossi*, %struct.deppossi** %10, align 8, !dbg !1282
  %146 = icmp ne %struct.deppossi* %145, null, !dbg !1284
  br label %147

; <label>:147:                                    ; preds = %144, %141
  %148 = phi i1 [ false, %141 ], [ %146, %144 ]
  br i1 %148, label %149, label %187, !dbg !1285

; <label>:149:                                    ; preds = %147
  %150 = load %struct.deppossi*, %struct.deppossi** %10, align 8, !dbg !1287
  %151 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %150, i32 0, i32 0, !dbg !1290
  %152 = load %struct.dependency*, %struct.dependency** %151, align 8, !dbg !1290
  %153 = getelementptr inbounds %struct.dependency, %struct.dependency* %152, i32 0, i32 3, !dbg !1291
  %154 = load i32, i32* %153, align 8, !dbg !1291
  %155 = icmp ne i32 %154, 6, !dbg !1292
  br i1 %155, label %156, label %157, !dbg !1293

; <label>:156:                                    ; preds = %149
  br label %183, !dbg !1294

; <label>:157:                                    ; preds = %149
  %158 = load %struct.deppossi*, %struct.deppossi** %9, align 8, !dbg !1295
  %159 = load %struct.deppossi*, %struct.deppossi** %10, align 8, !dbg !1297
  %160 = call zeroext i1 @pkg_virtual_deppossi_satisfied(%struct.deppossi* %158, %struct.deppossi* %159), !dbg !1298
  br i1 %160, label %162, label %161, !dbg !1299

; <label>:161:                                    ; preds = %157
  br label %183, !dbg !1300

; <label>:162:                                    ; preds = %157
  %163 = load %struct.deppossi*, %struct.deppossi** %10, align 8, !dbg !1301
  %164 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %163, i32 0, i32 0, !dbg !1302
  %165 = load %struct.dependency*, %struct.dependency** %164, align 8, !dbg !1302
  %166 = getelementptr inbounds %struct.dependency, %struct.dependency* %165, i32 0, i32 0, !dbg !1303
  %167 = load %struct.pkginfo*, %struct.pkginfo** %166, align 8, !dbg !1303
  store %struct.pkginfo* %167, %struct.pkginfo** %7, align 8, !dbg !1304
  %168 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1305
  %169 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %168, i32 0, i32 12, !dbg !1307
  %170 = load %struct.archivedetails*, %struct.archivedetails** %169, align 8, !dbg !1307
  %171 = icmp ne %struct.archivedetails* %170, null, !dbg !1305
  br i1 %171, label %173, label %172, !dbg !1308

; <label>:172:                                    ; preds = %162
  br label %183, !dbg !1309

; <label>:173:                                    ; preds = %162
  %174 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1310
  %175 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %174, i32 0, i32 11, !dbg !1312
  %176 = load %struct.perpackagestate*, %struct.perpackagestate** %175, align 8, !dbg !1312
  %177 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %176, i32 0, i32 0, !dbg !1313
  %178 = load i32, i32* %177, align 8, !dbg !1313
  %179 = icmp eq i32 %178, 0, !dbg !1314
  br i1 %179, label %180, label %182, !dbg !1315

; <label>:180:                                    ; preds = %173
  %181 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1316
  store %struct.pkginfo* %181, %struct.pkginfo** %5, align 8, !dbg !1318
  br label %187, !dbg !1319

; <label>:182:                                    ; preds = %173
  br label %183, !dbg !1320

; <label>:183:                                    ; preds = %182, %172, %161, %156
  %184 = load %struct.deppossi*, %struct.deppossi** %10, align 8, !dbg !1321
  %185 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %184, i32 0, i32 2, !dbg !1322
  %186 = load %struct.deppossi*, %struct.deppossi** %185, align 8, !dbg !1322
  store %struct.deppossi* %186, %struct.deppossi** %10, align 8, !dbg !1323
  br label %141, !dbg !1324, !llvm.loop !1326

; <label>:187:                                    ; preds = %180, %147
  br label %106, !dbg !1328, !llvm.loop !1330

; <label>:188:                                    ; preds = %132, %113
  %189 = load %struct.deppossi_pkg_iterator*, %struct.deppossi_pkg_iterator** %11, align 8, !dbg !1331
  call void @deppossi_pkg_iter_free(%struct.deppossi_pkg_iterator* %189), !dbg !1332
  br label %190, !dbg !1333

; <label>:190:                                    ; preds = %188
  %191 = load %struct.deppossi*, %struct.deppossi** %9, align 8, !dbg !1334
  %192 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %191, i32 0, i32 2, !dbg !1335
  %193 = load %struct.deppossi*, %struct.deppossi** %192, align 8, !dbg !1335
  store %struct.deppossi* %193, %struct.deppossi** %9, align 8, !dbg !1336
  br label %95, !dbg !1337, !llvm.loop !1339

; <label>:194:                                    ; preds = %101
  %195 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1341
  %196 = icmp ne %struct.pkginfo* %195, null, !dbg !1341
  br i1 %196, label %214, label %197, !dbg !1343

; <label>:197:                                    ; preds = %194
  call void @varbuf_reset(%struct.varbuf* @predeppackage.vb), !dbg !1344
  %198 = load %struct.dependency*, %struct.dependency** %8, align 8, !dbg !1346
  call void @describedepcon(%struct.varbuf* @predeppackage.vb, %struct.dependency* %198), !dbg !1347
  call void @varbuf_end_str(%struct.varbuf* @predeppackage.vb), !dbg !1348
  %199 = call i8* @gettext(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.24, i32 0, i32 0)) #8, !dbg !1349
  %200 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @predeppackage.vb, i32 0, i32 2), align 8, !dbg !1350
  call void (i8*, ...) @notice(i8* %199, i8* %200), !dbg !1351
  %201 = call i8* @gettext(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.25, i32 0, i32 0)) #8, !dbg !1353
  %202 = load %struct.dependency*, %struct.dependency** %8, align 8, !dbg !1354
  %203 = getelementptr inbounds %struct.dependency, %struct.dependency* %202, i32 0, i32 0, !dbg !1355
  %204 = load %struct.pkginfo*, %struct.pkginfo** %203, align 8, !dbg !1355
  %205 = load %struct.dependency*, %struct.dependency** %8, align 8, !dbg !1356
  %206 = getelementptr inbounds %struct.dependency, %struct.dependency* %205, i32 0, i32 0, !dbg !1357
  %207 = load %struct.pkginfo*, %struct.pkginfo** %206, align 8, !dbg !1357
  %208 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %207, i32 0, i32 10, !dbg !1358
  %209 = call i8* @pkgbin_name(%struct.pkginfo* %204, %struct.pkgbin* %208, i32 1), !dbg !1359
  %210 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !1360
  %211 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !1361
  %212 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %211, i32 0, i32 10, !dbg !1362
  %213 = call i8* @pkgbin_name(%struct.pkginfo* %210, %struct.pkgbin* %212, i32 1), !dbg !1363
  call void (i8*, ...) @ohshit(i8* %201, i8* %209, i8* %213) #10, !dbg !1364
  unreachable, !dbg !1365

; <label>:214:                                    ; preds = %194
  %215 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1366
  %216 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %215, i32 0, i32 11, !dbg !1367
  %217 = load %struct.perpackagestate*, %struct.perpackagestate** %216, align 8, !dbg !1367
  %218 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %217, i32 0, i32 0, !dbg !1368
  store i32 4, i32* %218, align 8, !dbg !1369
  %219 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1370
  %220 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %219, i32 0, i32 10, !dbg !1372
  %221 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %220, i32 0, i32 0, !dbg !1373
  %222 = load %struct.dependency*, %struct.dependency** %221, align 8, !dbg !1373
  store %struct.dependency* %222, %struct.dependency** %8, align 8, !dbg !1374
  br label %223, !dbg !1375

; <label>:223:                                    ; preds = %237, %214
  %224 = load %struct.dependency*, %struct.dependency** %8, align 8, !dbg !1376
  %225 = icmp ne %struct.dependency* %224, null, !dbg !1379
  br i1 %225, label %226, label %241, !dbg !1379

; <label>:226:                                    ; preds = %223
  %227 = load %struct.dependency*, %struct.dependency** %8, align 8, !dbg !1380
  %228 = getelementptr inbounds %struct.dependency, %struct.dependency* %227, i32 0, i32 3, !dbg !1383
  %229 = load i32, i32* %228, align 8, !dbg !1383
  %230 = icmp ne i32 %229, 3, !dbg !1384
  br i1 %230, label %231, label %232, !dbg !1385

; <label>:231:                                    ; preds = %226
  br label %237, !dbg !1386

; <label>:232:                                    ; preds = %226
  %233 = load %struct.dependency*, %struct.dependency** %8, align 8, !dbg !1388
  %234 = call zeroext i1 @depisok(%struct.dependency* %233, %struct.varbuf* @predeppackage.vb, %struct.pkginfo** null, %struct.pkginfo** null, i1 zeroext true), !dbg !1390
  br i1 %234, label %235, label %236, !dbg !1391

; <label>:235:                                    ; preds = %232
  br label %237, !dbg !1392

; <label>:236:                                    ; preds = %232
  br label %241, !dbg !1393

; <label>:237:                                    ; preds = %235, %231
  %238 = load %struct.dependency*, %struct.dependency** %8, align 8, !dbg !1394
  %239 = getelementptr inbounds %struct.dependency, %struct.dependency* %238, i32 0, i32 1, !dbg !1396
  %240 = load %struct.dependency*, %struct.dependency** %239, align 8, !dbg !1396
  store %struct.dependency* %240, %struct.dependency** %8, align 8, !dbg !1397
  br label %223, !dbg !1398, !llvm.loop !1399

; <label>:241:                                    ; preds = %236, %223
  br label %242, !dbg !1401

; <label>:242:                                    ; preds = %241
  %243 = load %struct.dependency*, %struct.dependency** %8, align 8, !dbg !1402
  %244 = icmp ne %struct.dependency* %243, null, !dbg !1403
  br i1 %244, label %91, label %245, !dbg !1403, !llvm.loop !1217

; <label>:245:                                    ; preds = %242
  %246 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1404
  %247 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0)) #8, !dbg !1405
  %248 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1406
  %249 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1407
  %250 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %249, i32 0, i32 10, !dbg !1408
  call void @writerecord(%struct._IO_FILE* %246, i8* %247, %struct.pkginfo* %248, %struct.pkgbin* %250), !dbg !1409
  %251 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1410
  %252 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0)) #8, !dbg !1411
  call void @m_output(%struct._IO_FILE* %251, i8* %252), !dbg !1412
  store i32 0, i32* %2, align 4, !dbg !1413
  br label %253, !dbg !1413

; <label>:253:                                    ; preds = %245, %80
  %254 = load i32, i32* %2, align 4, !dbg !1414
  ret i32 %254, !dbg !1414
}

declare void @clear_istobes() #2

declare zeroext i1 @depisok(%struct.dependency*, %struct.varbuf*, %struct.pkginfo**, %struct.pkginfo**, i1 zeroext) #2

; Function Attrs: noreturn
declare void @do_internerr(i8*, i32, i8*, i8*, ...) #4

declare %struct.deppossi_pkg_iterator* @deppossi_pkg_iter_new(%struct.deppossi*, i32) #2

declare %struct.pkginfo* @deppossi_pkg_iter_next(%struct.deppossi_pkg_iterator*) #2

declare zeroext i1 @versionsatisfied(%struct.pkgbin*, %struct.deppossi*) #2

declare zeroext i1 @pkg_virtual_deppossi_satisfied(%struct.deppossi*, %struct.deppossi*) #2

declare void @deppossi_pkg_iter_free(%struct.deppossi_pkg_iterator*) #2

declare void @varbuf_reset(%struct.varbuf*) #2

declare void @describedepcon(%struct.varbuf*, %struct.dependency*) #2

declare void @varbuf_end_str(%struct.varbuf*) #2

declare void @notice(i8*, ...) #2

; Function Attrs: noreturn
declare void @ohshit(i8*, ...) #4

declare i8* @pkgbin_name(%struct.pkginfo*, %struct.pkgbin*, i32) #2

declare void @writerecord(%struct._IO_FILE*, i8*, %struct.pkginfo*, %struct.pkgbin*) #2

; Function Attrs: nounwind uwtable
define i32 @printarch(i8**) #0 !dbg !1415 {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !1416, metadata !427), !dbg !1417
  %3 = load i8**, i8*** %2, align 8, !dbg !1418
  %4 = load i8*, i8** %3, align 8, !dbg !1420
  %5 = icmp ne i8* %4, null, !dbg !1420
  br i1 %5, label %6, label %11, !dbg !1421

; <label>:6:                                      ; preds = %1
  %7 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0)) #8, !dbg !1422
  %8 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !1423
  %9 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %8, i32 0, i32 0, !dbg !1424
  %10 = load i8*, i8** %9, align 8, !dbg !1424
  call void (i8*, ...) @badusage(i8* %7, i8* %10) #10, !dbg !1425
  unreachable, !dbg !1427

; <label>:11:                                     ; preds = %1
  %12 = call %struct.dpkg_arch* @dpkg_arch_get(i32 5), !dbg !1428
  %13 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %12, i32 0, i32 1, !dbg !1429
  %14 = load i8*, i8** %13, align 8, !dbg !1429
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* %14), !dbg !1430
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1432
  %17 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0)) #8, !dbg !1433
  call void @m_output(%struct._IO_FILE* %16, i8* %17), !dbg !1434
  ret i32 0, !dbg !1435
}

declare %struct.dpkg_arch* @dpkg_arch_get(i32) #2

; Function Attrs: nounwind uwtable
define i32 @print_foreign_arches(i8**) #0 !dbg !1436 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.dpkg_arch*, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !1437, metadata !427), !dbg !1438
  call void @llvm.dbg.declare(metadata %struct.dpkg_arch** %3, metadata !1439, metadata !427), !dbg !1440
  %4 = load i8**, i8*** %2, align 8, !dbg !1441
  %5 = load i8*, i8** %4, align 8, !dbg !1443
  %6 = icmp ne i8* %5, null, !dbg !1443
  br i1 %6, label %7, label %12, !dbg !1444

; <label>:7:                                      ; preds = %1
  %8 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0)) #8, !dbg !1445
  %9 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !1446
  %10 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %9, i32 0, i32 0, !dbg !1447
  %11 = load i8*, i8** %10, align 8, !dbg !1447
  call void (i8*, ...) @badusage(i8* %8, i8* %11) #10, !dbg !1448
  unreachable, !dbg !1450

; <label>:12:                                     ; preds = %1
  call void @dpkg_arch_load_list(), !dbg !1451
  %13 = call %struct.dpkg_arch* @dpkg_arch_get_list(), !dbg !1452
  store %struct.dpkg_arch* %13, %struct.dpkg_arch** %3, align 8, !dbg !1454
  br label %14, !dbg !1455

; <label>:14:                                     ; preds = %28, %12
  %15 = load %struct.dpkg_arch*, %struct.dpkg_arch** %3, align 8, !dbg !1456
  %16 = icmp ne %struct.dpkg_arch* %15, null, !dbg !1459
  br i1 %16, label %17, label %32, !dbg !1459

; <label>:17:                                     ; preds = %14
  %18 = load %struct.dpkg_arch*, %struct.dpkg_arch** %3, align 8, !dbg !1460
  %19 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %18, i32 0, i32 2, !dbg !1463
  %20 = load i32, i32* %19, align 8, !dbg !1463
  %21 = icmp ne i32 %20, 6, !dbg !1464
  br i1 %21, label %22, label %23, !dbg !1465

; <label>:22:                                     ; preds = %17
  br label %28, !dbg !1466

; <label>:23:                                     ; preds = %17
  %24 = load %struct.dpkg_arch*, %struct.dpkg_arch** %3, align 8, !dbg !1467
  %25 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %24, i32 0, i32 1, !dbg !1468
  %26 = load i8*, i8** %25, align 8, !dbg !1468
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* %26), !dbg !1469
  br label %28, !dbg !1470

; <label>:28:                                     ; preds = %23, %22
  %29 = load %struct.dpkg_arch*, %struct.dpkg_arch** %3, align 8, !dbg !1471
  %30 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %29, i32 0, i32 0, !dbg !1473
  %31 = load %struct.dpkg_arch*, %struct.dpkg_arch** %30, align 8, !dbg !1473
  store %struct.dpkg_arch* %31, %struct.dpkg_arch** %3, align 8, !dbg !1474
  br label %14, !dbg !1475, !llvm.loop !1476

; <label>:32:                                     ; preds = %14
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1478
  %34 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0)) #8, !dbg !1479
  call void @m_output(%struct._IO_FILE* %33, i8* %34), !dbg !1480
  ret i32 0, !dbg !1482
}

declare void @dpkg_arch_load_list() #2

declare %struct.dpkg_arch* @dpkg_arch_get_list() #2

; Function Attrs: nounwind uwtable
define i32 @validate_pkgname(i8**) #0 !dbg !1483 {
  %2 = alloca i8**, align 8
  %3 = alloca i8*, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !1484, metadata !427), !dbg !1485
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1486, metadata !427), !dbg !1487
  %4 = load i8**, i8*** %2, align 8, !dbg !1488
  %5 = getelementptr inbounds i8*, i8** %4, i64 0, !dbg !1488
  %6 = load i8*, i8** %5, align 8, !dbg !1488
  %7 = icmp ne i8* %6, null, !dbg !1488
  br i1 %7, label %8, label %13, !dbg !1490

; <label>:8:                                      ; preds = %1
  %9 = load i8**, i8*** %2, align 8, !dbg !1491
  %10 = getelementptr inbounds i8*, i8** %9, i64 1, !dbg !1491
  %11 = load i8*, i8** %10, align 8, !dbg !1491
  %12 = icmp ne i8* %11, null, !dbg !1491
  br i1 %12, label %13, label %18, !dbg !1493

; <label>:13:                                     ; preds = %8, %1
  %14 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.27, i32 0, i32 0)) #8, !dbg !1494
  %15 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !1495
  %16 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %15, i32 0, i32 0, !dbg !1496
  %17 = load i8*, i8** %16, align 8, !dbg !1496
  call void (i8*, ...) @badusage(i8* %14, i8* %17) #10, !dbg !1497
  unreachable, !dbg !1498

; <label>:18:                                     ; preds = %8
  %19 = load i8**, i8*** %2, align 8, !dbg !1499
  %20 = getelementptr inbounds i8*, i8** %19, i64 0, !dbg !1499
  %21 = load i8*, i8** %20, align 8, !dbg !1499
  %22 = call i8* @pkg_name_is_illegal(i8* %21), !dbg !1500
  store i8* %22, i8** %3, align 8, !dbg !1501
  %23 = load i8*, i8** %3, align 8, !dbg !1502
  %24 = icmp ne i8* %23, null, !dbg !1502
  br i1 %24, label %25, label %31, !dbg !1504

; <label>:25:                                     ; preds = %18
  %26 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.28, i32 0, i32 0)) #8, !dbg !1505
  %27 = load i8**, i8*** %2, align 8, !dbg !1506
  %28 = getelementptr inbounds i8*, i8** %27, i64 0, !dbg !1506
  %29 = load i8*, i8** %28, align 8, !dbg !1506
  %30 = load i8*, i8** %3, align 8, !dbg !1507
  call void (i8*, ...) @ohshit(i8* %26, i8* %29, i8* %30) #10, !dbg !1508
  unreachable, !dbg !1510

; <label>:31:                                     ; preds = %18
  ret i32 0, !dbg !1511
}

declare i8* @pkg_name_is_illegal(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @validate_trigname(i8**) #0 !dbg !1512 {
  %2 = alloca i8**, align 8
  %3 = alloca i8*, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !1513, metadata !427), !dbg !1514
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1515, metadata !427), !dbg !1516
  %4 = load i8**, i8*** %2, align 8, !dbg !1517
  %5 = getelementptr inbounds i8*, i8** %4, i64 0, !dbg !1517
  %6 = load i8*, i8** %5, align 8, !dbg !1517
  %7 = icmp ne i8* %6, null, !dbg !1517
  br i1 %7, label %8, label %13, !dbg !1519

; <label>:8:                                      ; preds = %1
  %9 = load i8**, i8*** %2, align 8, !dbg !1520
  %10 = getelementptr inbounds i8*, i8** %9, i64 1, !dbg !1520
  %11 = load i8*, i8** %10, align 8, !dbg !1520
  %12 = icmp ne i8* %11, null, !dbg !1520
  br i1 %12, label %13, label %18, !dbg !1522

; <label>:13:                                     ; preds = %8, %1
  %14 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.29, i32 0, i32 0)) #8, !dbg !1523
  %15 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !1524
  %16 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %15, i32 0, i32 0, !dbg !1525
  %17 = load i8*, i8** %16, align 8, !dbg !1525
  call void (i8*, ...) @badusage(i8* %14, i8* %17) #10, !dbg !1526
  unreachable, !dbg !1527

; <label>:18:                                     ; preds = %8
  %19 = load i8**, i8*** %2, align 8, !dbg !1528
  %20 = getelementptr inbounds i8*, i8** %19, i64 0, !dbg !1528
  %21 = load i8*, i8** %20, align 8, !dbg !1528
  %22 = call i8* @trig_name_is_illegal(i8* %21), !dbg !1529
  store i8* %22, i8** %3, align 8, !dbg !1530
  %23 = load i8*, i8** %3, align 8, !dbg !1531
  %24 = icmp ne i8* %23, null, !dbg !1531
  br i1 %24, label %25, label %31, !dbg !1533

; <label>:25:                                     ; preds = %18
  %26 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.30, i32 0, i32 0)) #8, !dbg !1534
  %27 = load i8**, i8*** %2, align 8, !dbg !1535
  %28 = getelementptr inbounds i8*, i8** %27, i64 0, !dbg !1535
  %29 = load i8*, i8** %28, align 8, !dbg !1535
  %30 = load i8*, i8** %3, align 8, !dbg !1536
  call void (i8*, ...) @ohshit(i8* %26, i8* %29, i8* %30) #10, !dbg !1537
  unreachable, !dbg !1539

; <label>:31:                                     ; preds = %18
  ret i32 0, !dbg !1540
}

declare i8* @trig_name_is_illegal(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @validate_archname(i8**) #0 !dbg !1541 {
  %2 = alloca i8**, align 8
  %3 = alloca i8*, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !1542, metadata !427), !dbg !1543
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1544, metadata !427), !dbg !1545
  %4 = load i8**, i8*** %2, align 8, !dbg !1546
  %5 = getelementptr inbounds i8*, i8** %4, i64 0, !dbg !1546
  %6 = load i8*, i8** %5, align 8, !dbg !1546
  %7 = icmp ne i8* %6, null, !dbg !1546
  br i1 %7, label %8, label %13, !dbg !1548

; <label>:8:                                      ; preds = %1
  %9 = load i8**, i8*** %2, align 8, !dbg !1549
  %10 = getelementptr inbounds i8*, i8** %9, i64 1, !dbg !1549
  %11 = load i8*, i8** %10, align 8, !dbg !1549
  %12 = icmp ne i8* %11, null, !dbg !1549
  br i1 %12, label %13, label %18, !dbg !1551

; <label>:13:                                     ; preds = %8, %1
  %14 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.31, i32 0, i32 0)) #8, !dbg !1552
  %15 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !1553
  %16 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %15, i32 0, i32 0, !dbg !1554
  %17 = load i8*, i8** %16, align 8, !dbg !1554
  call void (i8*, ...) @badusage(i8* %14, i8* %17) #10, !dbg !1555
  unreachable, !dbg !1556

; <label>:18:                                     ; preds = %8
  %19 = load i8**, i8*** %2, align 8, !dbg !1557
  %20 = getelementptr inbounds i8*, i8** %19, i64 0, !dbg !1557
  %21 = load i8*, i8** %20, align 8, !dbg !1557
  %22 = call i8* @dpkg_arch_name_is_illegal(i8* %21), !dbg !1558
  store i8* %22, i8** %3, align 8, !dbg !1559
  %23 = load i8*, i8** %3, align 8, !dbg !1560
  %24 = icmp ne i8* %23, null, !dbg !1560
  br i1 %24, label %25, label %31, !dbg !1562

; <label>:25:                                     ; preds = %18
  %26 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.32, i32 0, i32 0)) #8, !dbg !1563
  %27 = load i8**, i8*** %2, align 8, !dbg !1564
  %28 = getelementptr inbounds i8*, i8** %27, i64 0, !dbg !1564
  %29 = load i8*, i8** %28, align 8, !dbg !1564
  %30 = load i8*, i8** %3, align 8, !dbg !1565
  call void (i8*, ...) @ohshit(i8* %26, i8* %29, i8* %30) #10, !dbg !1566
  unreachable, !dbg !1568

; <label>:31:                                     ; preds = %18
  ret i32 0, !dbg !1569
}

declare i8* @dpkg_arch_name_is_illegal(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @validate_version(i8**) #0 !dbg !1570 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca %struct.dpkg_version, align 8
  %5 = alloca %struct.dpkg_error, align 8
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !1571, metadata !427), !dbg !1572
  call void @llvm.dbg.declare(metadata %struct.dpkg_version* %4, metadata !1573, metadata !427), !dbg !1574
  call void @llvm.dbg.declare(metadata %struct.dpkg_error* %5, metadata !1575, metadata !427), !dbg !1581
  %6 = load i8**, i8*** %3, align 8, !dbg !1582
  %7 = getelementptr inbounds i8*, i8** %6, i64 0, !dbg !1582
  %8 = load i8*, i8** %7, align 8, !dbg !1582
  %9 = icmp ne i8* %8, null, !dbg !1582
  br i1 %9, label %10, label %15, !dbg !1584

; <label>:10:                                     ; preds = %1
  %11 = load i8**, i8*** %3, align 8, !dbg !1585
  %12 = getelementptr inbounds i8*, i8** %11, i64 1, !dbg !1585
  %13 = load i8*, i8** %12, align 8, !dbg !1585
  %14 = icmp ne i8* %13, null, !dbg !1585
  br i1 %14, label %15, label %20, !dbg !1587

; <label>:15:                                     ; preds = %10, %1
  %16 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.33, i32 0, i32 0)) #8, !dbg !1588
  %17 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !1589
  %18 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %17, i32 0, i32 0, !dbg !1590
  %19 = load i8*, i8** %18, align 8, !dbg !1590
  call void (i8*, ...) @badusage(i8* %16, i8* %19) #10, !dbg !1591
  unreachable, !dbg !1592

; <label>:20:                                     ; preds = %10
  %21 = load i8**, i8*** %3, align 8, !dbg !1593
  %22 = getelementptr inbounds i8*, i8** %21, i64 0, !dbg !1593
  %23 = load i8*, i8** %22, align 8, !dbg !1593
  %24 = call i32 @parseversion(%struct.dpkg_version* %4, i8* %23, %struct.dpkg_error* %5), !dbg !1595
  %25 = icmp slt i32 %24, 0, !dbg !1596
  br i1 %25, label %26, label %31, !dbg !1597

; <label>:26:                                     ; preds = %20
  %27 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.34, i32 0, i32 0)) #8, !dbg !1598
  %28 = load i8**, i8*** %3, align 8, !dbg !1600
  %29 = getelementptr inbounds i8*, i8** %28, i64 0, !dbg !1600
  %30 = load i8*, i8** %29, align 8, !dbg !1600
  call void (%struct.dpkg_error*, i8*, ...) @dpkg_error_print(%struct.dpkg_error* %5, i8* %27, i8* %30), !dbg !1601
  call void @dpkg_error_destroy(%struct.dpkg_error* %5), !dbg !1603
  store i32 1, i32* %2, align 4, !dbg !1604
  br label %32, !dbg !1604

; <label>:31:                                     ; preds = %20
  store i32 0, i32* %2, align 4, !dbg !1605
  br label %32, !dbg !1605

; <label>:32:                                     ; preds = %31, %26
  %33 = load i32, i32* %2, align 4, !dbg !1606
  ret i32 %33, !dbg !1606
}

declare i32 @parseversion(%struct.dpkg_version*, i8*, %struct.dpkg_error*) #2

declare void @dpkg_error_print(%struct.dpkg_error*, i8*, ...) #2

declare void @dpkg_error_destroy(%struct.dpkg_error*) #2

; Function Attrs: nounwind uwtable
define i32 @cmpversions(i8**) #0 !dbg !179 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca %struct.relationinfo*, align 8
  %5 = alloca %struct.dpkg_version, align 8
  %6 = alloca %struct.dpkg_version, align 8
  %7 = alloca %struct.dpkg_error, align 8
  %8 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !1607, metadata !427), !dbg !1608
  call void @llvm.dbg.declare(metadata %struct.relationinfo** %4, metadata !1609, metadata !427), !dbg !1611
  call void @llvm.dbg.declare(metadata %struct.dpkg_version* %5, metadata !1612, metadata !427), !dbg !1613
  call void @llvm.dbg.declare(metadata %struct.dpkg_version* %6, metadata !1614, metadata !427), !dbg !1615
  call void @llvm.dbg.declare(metadata %struct.dpkg_error* %7, metadata !1616, metadata !427), !dbg !1617
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1618, metadata !427), !dbg !1619
  %9 = load i8**, i8*** %3, align 8, !dbg !1620
  %10 = getelementptr inbounds i8*, i8** %9, i64 0, !dbg !1620
  %11 = load i8*, i8** %10, align 8, !dbg !1620
  %12 = icmp ne i8* %11, null, !dbg !1620
  br i1 %12, label %13, label %28, !dbg !1622

; <label>:13:                                     ; preds = %1
  %14 = load i8**, i8*** %3, align 8, !dbg !1623
  %15 = getelementptr inbounds i8*, i8** %14, i64 1, !dbg !1623
  %16 = load i8*, i8** %15, align 8, !dbg !1623
  %17 = icmp ne i8* %16, null, !dbg !1623
  br i1 %17, label %18, label %28, !dbg !1625

; <label>:18:                                     ; preds = %13
  %19 = load i8**, i8*** %3, align 8, !dbg !1626
  %20 = getelementptr inbounds i8*, i8** %19, i64 2, !dbg !1626
  %21 = load i8*, i8** %20, align 8, !dbg !1626
  %22 = icmp ne i8* %21, null, !dbg !1626
  br i1 %22, label %23, label %28, !dbg !1628

; <label>:23:                                     ; preds = %18
  %24 = load i8**, i8*** %3, align 8, !dbg !1629
  %25 = getelementptr inbounds i8*, i8** %24, i64 3, !dbg !1629
  %26 = load i8*, i8** %25, align 8, !dbg !1629
  %27 = icmp ne i8* %26, null, !dbg !1629
  br i1 %27, label %28, label %30, !dbg !1631

; <label>:28:                                     ; preds = %23, %18, %13, %1
  %29 = call i8* @gettext(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.52, i32 0, i32 0)) #8, !dbg !1632
  call void (i8*, ...) @badusage(i8* %29) #10, !dbg !1633
  unreachable, !dbg !1634

; <label>:30:                                     ; preds = %23
  store %struct.relationinfo* getelementptr inbounds ([18 x %struct.relationinfo], [18 x %struct.relationinfo]* @cmpversions.relationinfos, i32 0, i32 0), %struct.relationinfo** %4, align 8, !dbg !1635
  br label %31, !dbg !1637

; <label>:31:                                     ; preds = %48, %30
  %32 = load %struct.relationinfo*, %struct.relationinfo** %4, align 8, !dbg !1638
  %33 = getelementptr inbounds %struct.relationinfo, %struct.relationinfo* %32, i32 0, i32 0, !dbg !1641
  %34 = load i8*, i8** %33, align 8, !dbg !1641
  %35 = icmp ne i8* %34, null, !dbg !1638
  br i1 %35, label %36, label %45, !dbg !1642

; <label>:36:                                     ; preds = %31
  %37 = load %struct.relationinfo*, %struct.relationinfo** %4, align 8, !dbg !1643
  %38 = getelementptr inbounds %struct.relationinfo, %struct.relationinfo* %37, i32 0, i32 0, !dbg !1645
  %39 = load i8*, i8** %38, align 8, !dbg !1645
  %40 = load i8**, i8*** %3, align 8, !dbg !1646
  %41 = getelementptr inbounds i8*, i8** %40, i64 1, !dbg !1646
  %42 = load i8*, i8** %41, align 8, !dbg !1646
  %43 = call i32 @strcmp(i8* %39, i8* %42) #9, !dbg !1647
  %44 = icmp ne i32 %43, 0, !dbg !1648
  br label %45

; <label>:45:                                     ; preds = %36, %31
  %46 = phi i1 [ false, %31 ], [ %44, %36 ]
  br i1 %46, label %47, label %51, !dbg !1649

; <label>:47:                                     ; preds = %45
  br label %48, !dbg !1651

; <label>:48:                                     ; preds = %47
  %49 = load %struct.relationinfo*, %struct.relationinfo** %4, align 8, !dbg !1653
  %50 = getelementptr inbounds %struct.relationinfo, %struct.relationinfo* %49, i32 1, !dbg !1653
  store %struct.relationinfo* %50, %struct.relationinfo** %4, align 8, !dbg !1653
  br label %31, !dbg !1655, !llvm.loop !1656

; <label>:51:                                     ; preds = %45
  %52 = load %struct.relationinfo*, %struct.relationinfo** %4, align 8, !dbg !1658
  %53 = getelementptr inbounds %struct.relationinfo, %struct.relationinfo* %52, i32 0, i32 0, !dbg !1660
  %54 = load i8*, i8** %53, align 8, !dbg !1660
  %55 = icmp ne i8* %54, null, !dbg !1658
  br i1 %55, label %58, label %56, !dbg !1661

; <label>:56:                                     ; preds = %51
  %57 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.53, i32 0, i32 0)) #8, !dbg !1662
  call void (i8*, ...) @badusage(i8* %57) #10, !dbg !1664
  unreachable, !dbg !1666

; <label>:58:                                     ; preds = %51
  %59 = load %struct.relationinfo*, %struct.relationinfo** %4, align 8, !dbg !1667
  %60 = getelementptr inbounds %struct.relationinfo, %struct.relationinfo* %59, i32 0, i32 7, !dbg !1669
  %61 = load i8, i8* %60, align 8, !dbg !1669
  %62 = trunc i8 %61 to i1, !dbg !1669
  br i1 %62, label %63, label %71, !dbg !1670

; <label>:63:                                     ; preds = %58
  %64 = call i8* @gettext(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.54, i32 0, i32 0)) #8, !dbg !1671
  %65 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !1672
  %66 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %65, i32 0, i32 0, !dbg !1673
  %67 = load i8*, i8** %66, align 8, !dbg !1673
  %68 = load %struct.relationinfo*, %struct.relationinfo** %4, align 8, !dbg !1674
  %69 = getelementptr inbounds %struct.relationinfo, %struct.relationinfo* %68, i32 0, i32 0, !dbg !1675
  %70 = load i8*, i8** %69, align 8, !dbg !1675
  call void (i8*, ...) @warning(i8* %64, i8* %67, i8* %70), !dbg !1676
  br label %71, !dbg !1678

; <label>:71:                                     ; preds = %63, %58
  %72 = load i8**, i8*** %3, align 8, !dbg !1679
  %73 = getelementptr inbounds i8*, i8** %72, i64 0, !dbg !1679
  %74 = load i8*, i8** %73, align 8, !dbg !1679
  %75 = load i8, i8* %74, align 1, !dbg !1681
  %76 = sext i8 %75 to i32, !dbg !1681
  %77 = icmp ne i32 %76, 0, !dbg !1681
  br i1 %77, label %78, label %96, !dbg !1682

; <label>:78:                                     ; preds = %71
  %79 = load i8**, i8*** %3, align 8, !dbg !1683
  %80 = getelementptr inbounds i8*, i8** %79, i64 0, !dbg !1683
  %81 = load i8*, i8** %80, align 8, !dbg !1683
  %82 = call i32 @strcmp(i8* %81, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i32 0, i32 0)) #9, !dbg !1685
  %83 = icmp ne i32 %82, 0, !dbg !1685
  br i1 %83, label %84, label %96, !dbg !1686

; <label>:84:                                     ; preds = %78
  %85 = load i8**, i8*** %3, align 8, !dbg !1687
  %86 = getelementptr inbounds i8*, i8** %85, i64 0, !dbg !1687
  %87 = load i8*, i8** %86, align 8, !dbg !1687
  %88 = call i32 @parseversion(%struct.dpkg_version* %5, i8* %87, %struct.dpkg_error* %7), !dbg !1690
  %89 = icmp slt i32 %88, 0, !dbg !1691
  br i1 %89, label %90, label %95, !dbg !1692

; <label>:90:                                     ; preds = %84
  %91 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.34, i32 0, i32 0)) #8, !dbg !1693
  %92 = load i8**, i8*** %3, align 8, !dbg !1695
  %93 = getelementptr inbounds i8*, i8** %92, i64 0, !dbg !1695
  %94 = load i8*, i8** %93, align 8, !dbg !1695
  call void (%struct.dpkg_error*, i8*, ...) @dpkg_error_print(%struct.dpkg_error* %7, i8* %91, i8* %94), !dbg !1696
  call void @dpkg_error_destroy(%struct.dpkg_error* %7), !dbg !1698
  br label %95, !dbg !1699

; <label>:95:                                     ; preds = %90, %84
  br label %97, !dbg !1700

; <label>:96:                                     ; preds = %78, %71
  call void @dpkg_version_blank(%struct.dpkg_version* %5), !dbg !1701
  br label %97

; <label>:97:                                     ; preds = %96, %95
  %98 = load i8**, i8*** %3, align 8, !dbg !1703
  %99 = getelementptr inbounds i8*, i8** %98, i64 2, !dbg !1703
  %100 = load i8*, i8** %99, align 8, !dbg !1703
  %101 = load i8, i8* %100, align 1, !dbg !1705
  %102 = sext i8 %101 to i32, !dbg !1705
  %103 = icmp ne i32 %102, 0, !dbg !1705
  br i1 %103, label %104, label %122, !dbg !1706

; <label>:104:                                    ; preds = %97
  %105 = load i8**, i8*** %3, align 8, !dbg !1707
  %106 = getelementptr inbounds i8*, i8** %105, i64 2, !dbg !1707
  %107 = load i8*, i8** %106, align 8, !dbg !1707
  %108 = call i32 @strcmp(i8* %107, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i32 0, i32 0)) #9, !dbg !1709
  %109 = icmp ne i32 %108, 0, !dbg !1709
  br i1 %109, label %110, label %122, !dbg !1710

; <label>:110:                                    ; preds = %104
  %111 = load i8**, i8*** %3, align 8, !dbg !1711
  %112 = getelementptr inbounds i8*, i8** %111, i64 2, !dbg !1711
  %113 = load i8*, i8** %112, align 8, !dbg !1711
  %114 = call i32 @parseversion(%struct.dpkg_version* %6, i8* %113, %struct.dpkg_error* %7), !dbg !1714
  %115 = icmp slt i32 %114, 0, !dbg !1715
  br i1 %115, label %116, label %121, !dbg !1716

; <label>:116:                                    ; preds = %110
  %117 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.34, i32 0, i32 0)) #8, !dbg !1717
  %118 = load i8**, i8*** %3, align 8, !dbg !1719
  %119 = getelementptr inbounds i8*, i8** %118, i64 2, !dbg !1719
  %120 = load i8*, i8** %119, align 8, !dbg !1719
  call void (%struct.dpkg_error*, i8*, ...) @dpkg_error_print(%struct.dpkg_error* %7, i8* %117, i8* %120), !dbg !1720
  call void @dpkg_error_destroy(%struct.dpkg_error* %7), !dbg !1722
  br label %121, !dbg !1723

; <label>:121:                                    ; preds = %116, %110
  br label %123, !dbg !1724

; <label>:122:                                    ; preds = %104, %97
  call void @dpkg_version_blank(%struct.dpkg_version* %6), !dbg !1725
  br label %123

; <label>:123:                                    ; preds = %122, %121
  %124 = call zeroext i1 @dpkg_version_is_informative(%struct.dpkg_version* %5), !dbg !1727
  br i1 %124, label %135, label %125, !dbg !1729

; <label>:125:                                    ; preds = %123
  %126 = call zeroext i1 @dpkg_version_is_informative(%struct.dpkg_version* %6), !dbg !1730
  br i1 %126, label %127, label %131, !dbg !1733

; <label>:127:                                    ; preds = %125
  %128 = load %struct.relationinfo*, %struct.relationinfo** %4, align 8, !dbg !1734
  %129 = getelementptr inbounds %struct.relationinfo, %struct.relationinfo* %128, i32 0, i32 4, !dbg !1735
  %130 = load i32, i32* %129, align 4, !dbg !1735
  store i32 %130, i32* %2, align 4, !dbg !1736
  br label %164, !dbg !1736

; <label>:131:                                    ; preds = %125
  %132 = load %struct.relationinfo*, %struct.relationinfo** %4, align 8, !dbg !1737
  %133 = getelementptr inbounds %struct.relationinfo, %struct.relationinfo* %132, i32 0, i32 5, !dbg !1738
  %134 = load i32, i32* %133, align 8, !dbg !1738
  store i32 %134, i32* %2, align 4, !dbg !1739
  br label %164, !dbg !1739

; <label>:135:                                    ; preds = %123
  %136 = call zeroext i1 @dpkg_version_is_informative(%struct.dpkg_version* %6), !dbg !1740
  br i1 %136, label %141, label %137, !dbg !1742

; <label>:137:                                    ; preds = %135
  %138 = load %struct.relationinfo*, %struct.relationinfo** %4, align 8, !dbg !1743
  %139 = getelementptr inbounds %struct.relationinfo, %struct.relationinfo* %138, i32 0, i32 6, !dbg !1745
  %140 = load i32, i32* %139, align 4, !dbg !1745
  store i32 %140, i32* %2, align 4, !dbg !1746
  br label %164, !dbg !1746

; <label>:141:                                    ; preds = %135
  br label %142

; <label>:142:                                    ; preds = %141
  %143 = call i32 @dpkg_version_compare(%struct.dpkg_version* %5, %struct.dpkg_version* %6), !dbg !1747
  store i32 %143, i32* %8, align 4, !dbg !1748
  %144 = call i8* @versiondescribe(%struct.dpkg_version* %5, i32 2), !dbg !1749
  %145 = call i8* @versiondescribe(%struct.dpkg_version* %6, i32 2), !dbg !1750
  %146 = load i32, i32* %8, align 4, !dbg !1751
  call void (i32, i8*, ...) @debug(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.56, i32 0, i32 0), i8* %144, i8* %145, i32 %146), !dbg !1752
  %147 = load i32, i32* %8, align 4, !dbg !1753
  %148 = icmp sgt i32 %147, 0, !dbg !1755
  br i1 %148, label %149, label %153, !dbg !1756

; <label>:149:                                    ; preds = %142
  %150 = load %struct.relationinfo*, %struct.relationinfo** %4, align 8, !dbg !1757
  %151 = getelementptr inbounds %struct.relationinfo, %struct.relationinfo* %150, i32 0, i32 3, !dbg !1758
  %152 = load i32, i32* %151, align 8, !dbg !1758
  store i32 %152, i32* %2, align 4, !dbg !1759
  br label %164, !dbg !1759

; <label>:153:                                    ; preds = %142
  %154 = load i32, i32* %8, align 4, !dbg !1760
  %155 = icmp slt i32 %154, 0, !dbg !1762
  br i1 %155, label %156, label %160, !dbg !1763

; <label>:156:                                    ; preds = %153
  %157 = load %struct.relationinfo*, %struct.relationinfo** %4, align 8, !dbg !1764
  %158 = getelementptr inbounds %struct.relationinfo, %struct.relationinfo* %157, i32 0, i32 1, !dbg !1765
  %159 = load i32, i32* %158, align 8, !dbg !1765
  store i32 %159, i32* %2, align 4, !dbg !1766
  br label %164, !dbg !1766

; <label>:160:                                    ; preds = %153
  %161 = load %struct.relationinfo*, %struct.relationinfo** %4, align 8, !dbg !1767
  %162 = getelementptr inbounds %struct.relationinfo, %struct.relationinfo* %161, i32 0, i32 2, !dbg !1768
  %163 = load i32, i32* %162, align 4, !dbg !1768
  store i32 %163, i32* %2, align 4, !dbg !1769
  br label %164, !dbg !1769

; <label>:164:                                    ; preds = %160, %156, %149, %137, %131, %127
  %165 = load i32, i32* %2, align 4, !dbg !1770
  ret i32 %165, !dbg !1770
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

declare void @warning(i8*, ...) #2

declare void @dpkg_version_blank(%struct.dpkg_version*) #2

declare zeroext i1 @dpkg_version_is_informative(%struct.dpkg_version*) #2

declare i32 @dpkg_version_compare(%struct.dpkg_version*, %struct.dpkg_version*) #2

declare void @debug(i32, i8*, ...) #2

declare i8* @versiondescribe(%struct.dpkg_version*, i32) #2

declare %struct.pkginfo* @dpkg_options_parse_pkgname(%struct.cmdinfo*, i8*) #2

; Function Attrs: nounwind uwtable
define internal zeroext i1 @audit_reinstreq(%struct.pkginfo*, %struct.audit_problem*) #0 !dbg !1771 {
  %3 = alloca %struct.pkginfo*, align 8
  %4 = alloca %struct.audit_problem*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %3, metadata !1772, metadata !427), !dbg !1773
  store %struct.audit_problem* %1, %struct.audit_problem** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.audit_problem** %4, metadata !1774, metadata !427), !dbg !1775
  %5 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !1776
  %6 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %5, i32 0, i32 3, !dbg !1777
  %7 = load i32, i32* %6, align 4, !dbg !1777
  %8 = and i32 %7, 1, !dbg !1778
  %9 = icmp ne i32 %8, 0, !dbg !1776
  ret i1 %9, !dbg !1779
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @audit_status(%struct.pkginfo*, %struct.audit_problem*) #0 !dbg !1780 {
  %3 = alloca i1, align 1
  %4 = alloca %struct.pkginfo*, align 8
  %5 = alloca %struct.audit_problem*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %4, metadata !1781, metadata !427), !dbg !1782
  store %struct.audit_problem* %1, %struct.audit_problem** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.audit_problem** %5, metadata !1783, metadata !427), !dbg !1784
  %6 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !1785
  %7 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %6, i32 0, i32 3, !dbg !1787
  %8 = load i32, i32* %7, align 4, !dbg !1787
  %9 = and i32 %8, 1, !dbg !1788
  %10 = icmp ne i32 %9, 0, !dbg !1788
  br i1 %10, label %11, label %12, !dbg !1789

; <label>:11:                                     ; preds = %2
  store i1 false, i1* %3, align 1, !dbg !1790
  br label %21, !dbg !1790

; <label>:12:                                     ; preds = %2
  %13 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !1791
  %14 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %13, i32 0, i32 4, !dbg !1792
  %15 = load i32, i32* %14, align 8, !dbg !1792
  %16 = load %struct.audit_problem*, %struct.audit_problem** %5, align 8, !dbg !1793
  %17 = getelementptr inbounds %struct.audit_problem, %struct.audit_problem* %16, i32 0, i32 1, !dbg !1794
  %18 = bitcast %union.anon* %17 to i32*, !dbg !1795
  %19 = load i32, i32* %18, align 8, !dbg !1795
  %20 = icmp eq i32 %15, %19, !dbg !1796
  store i1 %20, i1* %3, align 1, !dbg !1797
  br label %21, !dbg !1797

; <label>:21:                                     ; preds = %12, %11
  %22 = load i1, i1* %3, align 1, !dbg !1798
  ret i1 %22, !dbg !1798
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @audit_infofile(%struct.pkginfo*, %struct.audit_problem*) #0 !dbg !1799 {
  %3 = alloca i1, align 1
  %4 = alloca %struct.pkginfo*, align 8
  %5 = alloca %struct.audit_problem*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %4, metadata !1800, metadata !427), !dbg !1801
  store %struct.audit_problem* %1, %struct.audit_problem** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.audit_problem** %5, metadata !1802, metadata !427), !dbg !1803
  %6 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !1804
  %7 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %6, i32 0, i32 4, !dbg !1806
  %8 = load i32, i32* %7, align 8, !dbg !1806
  %9 = icmp ult i32 %8, 2, !dbg !1807
  br i1 %9, label %10, label %11, !dbg !1808

; <label>:10:                                     ; preds = %2
  store i1 false, i1* %3, align 1, !dbg !1809
  br label %21, !dbg !1809

; <label>:11:                                     ; preds = %2
  %12 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !1810
  %13 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !1811
  %14 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %13, i32 0, i32 9, !dbg !1812
  %15 = load %struct.audit_problem*, %struct.audit_problem** %5, align 8, !dbg !1813
  %16 = getelementptr inbounds %struct.audit_problem, %struct.audit_problem* %15, i32 0, i32 1, !dbg !1814
  %17 = bitcast %union.anon* %16 to i8**, !dbg !1815
  %18 = load i8*, i8** %17, align 8, !dbg !1815
  %19 = call zeroext i1 @pkg_infodb_has_file(%struct.pkginfo* %12, %struct.pkgbin* %14, i8* %18), !dbg !1816
  %20 = xor i1 %19, true, !dbg !1817
  store i1 %20, i1* %3, align 1, !dbg !1818
  br label %21, !dbg !1818

; <label>:21:                                     ; preds = %11, %10
  %22 = load i1, i1* %3, align 1, !dbg !1819
  ret i1 %22, !dbg !1819
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @audit_arch(%struct.pkginfo*, %struct.audit_problem*) #0 !dbg !1820 {
  %3 = alloca i1, align 1
  %4 = alloca %struct.pkginfo*, align 8
  %5 = alloca %struct.audit_problem*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %4, metadata !1821, metadata !427), !dbg !1822
  store %struct.audit_problem* %1, %struct.audit_problem** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.audit_problem** %5, metadata !1823, metadata !427), !dbg !1824
  %6 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !1825
  %7 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %6, i32 0, i32 4, !dbg !1827
  %8 = load i32, i32* %7, align 8, !dbg !1827
  %9 = icmp ult i32 %8, 2, !dbg !1828
  br i1 %9, label %10, label %11, !dbg !1829

; <label>:10:                                     ; preds = %2
  store i1 false, i1* %3, align 1, !dbg !1830
  br label %23, !dbg !1830

; <label>:11:                                     ; preds = %2
  %12 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !1831
  %13 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %12, i32 0, i32 9, !dbg !1832
  %14 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %13, i32 0, i32 3, !dbg !1833
  %15 = load %struct.dpkg_arch*, %struct.dpkg_arch** %14, align 8, !dbg !1833
  %16 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %15, i32 0, i32 2, !dbg !1834
  %17 = load i32, i32* %16, align 8, !dbg !1834
  %18 = load %struct.audit_problem*, %struct.audit_problem** %5, align 8, !dbg !1835
  %19 = getelementptr inbounds %struct.audit_problem, %struct.audit_problem* %18, i32 0, i32 1, !dbg !1836
  %20 = bitcast %union.anon* %19 to i32*, !dbg !1837
  %21 = load i32, i32* %20, align 8, !dbg !1837
  %22 = icmp eq i32 %17, %21, !dbg !1838
  store i1 %22, i1* %3, align 1, !dbg !1839
  br label %23, !dbg !1839

; <label>:23:                                     ; preds = %11, %10
  %24 = load i1, i1* %3, align 1, !dbg !1840
  ret i1 %24, !dbg !1840
}

declare zeroext i1 @pkg_infodb_has_file(%struct.pkginfo*, %struct.pkgbin*, i8*) #2

declare i8* @pkgbin_synopsis(%struct.pkginfo*, %struct.pkgbin*, i32*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @str_is_set(i8*) #7 !dbg !1841 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1845, metadata !427), !dbg !1846
  %3 = load i8*, i8** %2, align 8, !dbg !1847
  %4 = icmp ne i8* %3, null, !dbg !1848
  br i1 %4, label %5, label %11, !dbg !1849

; <label>:5:                                      ; preds = %1
  %6 = load i8*, i8** %2, align 8, !dbg !1850
  %7 = getelementptr inbounds i8, i8* %6, i64 0, !dbg !1850
  %8 = load i8, i8* %7, align 1, !dbg !1850
  %9 = sext i8 %8 to i32, !dbg !1850
  %10 = icmp ne i32 %9, 0, !dbg !1852
  br label %11

; <label>:11:                                     ; preds = %5, %1
  %12 = phi i1 [ false, %1 ], [ %10, %5 ]
  ret i1 %12, !dbg !1853
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @pgettext_aux(i8*, i8*, i8*, i32) #7 !dbg !1855 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1859, metadata !427), !dbg !1860
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1861, metadata !427), !dbg !1862
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1863, metadata !427), !dbg !1864
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1865, metadata !427), !dbg !1866
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1867, metadata !427), !dbg !1868
  %11 = load i8*, i8** %6, align 8, !dbg !1869
  %12 = load i8*, i8** %7, align 8, !dbg !1870
  %13 = load i32, i32* %9, align 4, !dbg !1871
  %14 = call i8* @dcgettext(i8* %11, i8* %12, i32 %13) #8, !dbg !1872
  store i8* %14, i8** %10, align 8, !dbg !1868
  %15 = load i8*, i8** %10, align 8, !dbg !1873
  %16 = load i8*, i8** %7, align 8, !dbg !1875
  %17 = icmp eq i8* %15, %16, !dbg !1876
  br i1 %17, label %18, label %20, !dbg !1877

; <label>:18:                                     ; preds = %4
  %19 = load i8*, i8** %8, align 8, !dbg !1878
  store i8* %19, i8** %5, align 8, !dbg !1879
  br label %22, !dbg !1879

; <label>:20:                                     ; preds = %4
  %21 = load i8*, i8** %10, align 8, !dbg !1880
  store i8* %21, i8** %5, align 8, !dbg !1881
  br label %22, !dbg !1881

; <label>:22:                                     ; preds = %20, %18
  %23 = load i8*, i8** %5, align 8, !dbg !1882
  ret i8* %23, !dbg !1882
}

; Function Attrs: nounwind
declare i8* @dcgettext(i8*, i8*, i32) #3

declare %struct.pkginfo* @pkg_hash_find_singleton(i8*) #2

declare zeroext i1 @dpkg_version_relate(%struct.dpkg_version*, i32, %struct.dpkg_version*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!422, !423}
!llvm.ident = !{!424}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !152, globals: !159)
!1 = !DIFile(filename: "[inter]src--enquiry.o.i", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!2 = !{!3, !15, !26, !35, !43, !47, !57, !67, !73, !81, !86, !91, !104, !114, !120, !125, !131, !147}
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
!104 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "modstatdb_rw", file: !4, line: 263, size: 32, align: 32, elements: !105)
!105 = !{!106, !107, !108, !109, !110, !111, !112, !113}
!106 = !DIEnumerator(name: "msdbrw_readonly", value: 0)
!107 = !DIEnumerator(name: "msdbrw_needsuperuserlockonly", value: 1)
!108 = !DIEnumerator(name: "msdbrw_writeifposs", value: 2)
!109 = !DIEnumerator(name: "msdbrw_write", value: 3)
!110 = !DIEnumerator(name: "msdbrw_needsuperuser", value: 4)
!111 = !DIEnumerator(name: "msdbrw_available_readonly", value: 256)
!112 = !DIEnumerator(name: "msdbrw_available_write", value: 512)
!113 = !DIEnumerator(name: "msdbrw_available_mask", value: 65280)
!114 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkg_name_arch_when", file: !4, line: 396, size: 32, align: 32, elements: !115)
!115 = !{!116, !117, !118, !119}
!116 = !DIEnumerator(name: "pnaw_never", value: 0)
!117 = !DIEnumerator(name: "pnaw_nonambig", value: 1)
!118 = !DIEnumerator(name: "pnaw_foreign", value: 2)
!119 = !DIEnumerator(name: "pnaw_always", value: 3)
!120 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "which_pkgbin", file: !74, line: 340, size: 32, align: 32, elements: !121)
!121 = !{!122, !123, !124}
!122 = !DIEnumerator(name: "wpb_installed", value: 0)
!123 = !DIEnumerator(name: "wpb_available", value: 1)
!124 = !DIEnumerator(name: "wpb_by_istobe", value: 2)
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_msg_type", file: !126, line: 36, size: 32, align: 32, elements: !127)
!126 = !DIFile(filename: "../lib/dpkg/error.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!127 = !{!128, !129, !130}
!128 = !DIEnumerator(name: "DPKG_MSG_NONE", value: 0)
!129 = !DIEnumerator(name: "DPKG_MSG_WARN", value: 1)
!130 = !DIEnumerator(name: "DPKG_MSG_ERROR", value: 2)
!131 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "debugflags", file: !132, line: 41, size: 32, align: 32, elements: !133)
!132 = !DIFile(filename: "../lib/dpkg/debug.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!133 = !{!134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146}
!134 = !DIEnumerator(name: "dbg_general", value: 1)
!135 = !DIEnumerator(name: "dbg_scripts", value: 2)
!136 = !DIEnumerator(name: "dbg_eachfile", value: 8)
!137 = !DIEnumerator(name: "dbg_eachfiledetail", value: 64)
!138 = !DIEnumerator(name: "dbg_conff", value: 16)
!139 = !DIEnumerator(name: "dbg_conffdetail", value: 128)
!140 = !DIEnumerator(name: "dbg_depcon", value: 32)
!141 = !DIEnumerator(name: "dbg_depcondetail", value: 256)
!142 = !DIEnumerator(name: "dbg_veryverbose", value: 512)
!143 = !DIEnumerator(name: "dbg_stupidlyverbose", value: 1024)
!144 = !DIEnumerator(name: "dbg_triggers", value: 4096)
!145 = !DIEnumerator(name: "dbg_triggersdetail", value: 8192)
!146 = !DIEnumerator(name: "dbg_triggersstupid", value: 16384)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "versiondisplayepochwhen", file: !4, line: 388, size: 32, align: 32, elements: !148)
!148 = !{!149, !150, !151}
!149 = !DIEnumerator(name: "vdew_never", value: 0)
!150 = !DIEnumerator(name: "vdew_nonambig", value: 1)
!151 = !DIEnumerator(name: "vdew_always", value: 2)
!152 = !{!153, !157, !158, !15}
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64, align: 64)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64, align: 64)
!155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!156 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!158 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!159 = !{!160, !178, !195}
!160 = distinct !DIGlobalVariable(name: "vb", scope: !161, file: !162, line: 459, type: !168, isLocal: true, isDefinition: true, variable: %struct.varbuf* @predeppackage.vb)
!161 = distinct !DISubprogram(name: "predeppackage", scope: !162, file: !162, line: 457, type: !163, isLocal: false, isDefinition: true, scopeLine: 458, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !167)
!162 = !DIFile(filename: "enquiry.c", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!163 = !DISubroutineType(types: !164)
!164 = !{!158, !165}
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64, align: 64)
!166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !154)
!167 = !{}
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varbuf", file: !169, line: 55, size: 192, align: 64, elements: !170)
!169 = !DIFile(filename: "../lib/dpkg/varbuf.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!170 = !{!171, !175, !176}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !168, file: !169, line: 56, baseType: !172, size: 64, align: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !173, line: 216, baseType: !174)
!173 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!174 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !168, file: !169, line: 56, baseType: !172, size: 64, align: 64, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !168, file: !169, line: 57, baseType: !177, size: 64, align: 64, offset: 128)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64, align: 64)
!178 = distinct !DIGlobalVariable(name: "relationinfos", scope: !179, file: !162, line: 676, type: !180, isLocal: true, isDefinition: true, variable: [18 x %struct.relationinfo]* @cmpversions.relationinfos)
!179 = distinct !DISubprogram(name: "cmpversions", scope: !162, file: !162, line: 666, type: !163, isLocal: false, isDefinition: true, scopeLine: 667, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !167)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 5760, align: 64, elements: !193)
!181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !182)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "relationinfo", scope: !179, file: !162, line: 668, size: 320, align: 64, elements: !183)
!183 = !{!184, !185, !186, !187, !188, !189, !190, !191}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !182, file: !162, line: 669, baseType: !154, size: 64, align: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "if_lesser", scope: !182, file: !162, line: 671, baseType: !158, size: 32, align: 32, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "if_equal", scope: !182, file: !162, line: 671, baseType: !158, size: 32, align: 32, offset: 96)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "if_greater", scope: !182, file: !162, line: 671, baseType: !158, size: 32, align: 32, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "if_none_a", scope: !182, file: !162, line: 672, baseType: !158, size: 32, align: 32, offset: 160)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "if_none_both", scope: !182, file: !162, line: 672, baseType: !158, size: 32, align: 32, offset: 192)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "if_none_b", scope: !182, file: !162, line: 672, baseType: !158, size: 32, align: 32, offset: 224)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "obsolete", scope: !182, file: !162, line: 673, baseType: !192, size: 8, align: 8, offset: 256)
!192 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!193 = !{!194}
!194 = !DISubrange(count: 18)
!195 = distinct !DIGlobalVariable(name: "audit_problems", scope: !0, file: !162, line: 89, type: !196, isLocal: true, isDefinition: true, variable: <{ { i1 (%struct.pkginfo*, %struct.audit_problem*)*, { i32, [4 x i8] }, i8* }, { i1 (%struct.pkginfo*, %struct.audit_problem*)*, { i32, [4 x i8] }, i8* }, { i1 (%struct.pkginfo*, %struct.audit_problem*)*, { i32, [4 x i8] }, i8* }, { i1 (%struct.pkginfo*, %struct.audit_problem*)*, { i32, [4 x i8] }, i8* }, { i1 (%struct.pkginfo*, %struct.audit_problem*)*, { i32, [4 x i8] }, i8* }, { i1 (%struct.pkginfo*, %struct.audit_problem*)*, { i32, [4 x i8] }, i8* }, %struct.audit_problem, %struct.audit_problem, { i1 (%struct.pkginfo*, %struct.audit_problem*)*, { i32, [4 x i8] }, i8* }, { i1 (%struct.pkginfo*, %struct.audit_problem*)*, { i32, [4 x i8] }, i8* }, { i1 (%struct.pkginfo*, %struct.audit_problem*)*, { i32, [4 x i8] }, i8* }, %struct.audit_problem }>* @audit_problems)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 2304, align: 64, elements: !420)
!197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !198)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "audit_problem", file: !162, line: 50, size: 192, align: 64, elements: !199)
!199 = !{!200, !414, !419}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !198, file: !162, line: 51, baseType: !201, size: 64, align: 64)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64, align: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{!192, !204, !413}
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64, align: 64)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkginfo", file: !4, line: 195, size: 3072, align: 64, elements: !206)
!206 = !{!207, !254, !255, !256, !257, !258, !259, !260, !261, !262, !292, !293, !309, !318, !334, !335, !341, !407, !411, !412}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !205, file: !4, line: 196, baseType: !208, size: 64, align: 64)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64, align: 64)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgset", file: !4, line: 242, size: 3392, align: 64, elements: !210)
!210 = !{!211, !212, !213, !214, !253}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !209, file: !4, line: 243, baseType: !208, size: 64, align: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !209, file: !4, line: 244, baseType: !154, size: 64, align: 64, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !209, file: !4, line: 245, baseType: !205, size: 3072, align: 64, offset: 128)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "depended", scope: !209, file: !4, line: 249, baseType: !215, size: 128, align: 64, offset: 3200)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !209, file: !4, line: 246, size: 128, align: 64, elements: !216)
!216 = !{!217, !252}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !215, file: !4, line: 247, baseType: !218, size: 64, align: 64)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64, align: 64)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "deppossi", file: !4, line: 63, size: 640, align: 64, elements: !220)
!220 = !{!221, !229, !230, !231, !232, !233, !242, !249, !250, !251}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !219, file: !4, line: 64, baseType: !222, size: 64, align: 64)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64, align: 64)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dependency", file: !4, line: 56, size: 256, align: 64, elements: !224)
!224 = !{!225, !226, !227, !228}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !223, file: !4, line: 57, baseType: !204, size: 64, align: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !223, file: !4, line: 58, baseType: !222, size: 64, align: 64, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !223, file: !4, line: 59, baseType: !218, size: 64, align: 64, offset: 128)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !223, file: !4, line: 60, baseType: !3, size: 32, align: 32, offset: 192)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "ed", scope: !219, file: !4, line: 65, baseType: !208, size: 64, align: 64, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !219, file: !4, line: 66, baseType: !218, size: 64, align: 64, offset: 128)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "rev_next", scope: !219, file: !4, line: 66, baseType: !218, size: 64, align: 64, offset: 192)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "rev_prev", scope: !219, file: !4, line: 66, baseType: !218, size: 64, align: 64, offset: 256)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !219, file: !4, line: 67, baseType: !234, size: 64, align: 64, offset: 320)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64, align: 64)
!235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !236)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_arch", file: !16, line: 48, size: 192, align: 64, elements: !237)
!237 = !{!238, !240, !241}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !236, file: !16, line: 49, baseType: !239, size: 64, align: 64)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64, align: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !236, file: !16, line: 50, baseType: !154, size: 64, align: 64, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !236, file: !16, line: 51, baseType: !15, size: 32, align: 32, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !219, file: !4, line: 68, baseType: !243, size: 192, align: 64, offset: 384)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_version", file: !27, line: 42, size: 192, align: 64, elements: !244)
!244 = !{!245, !247, !248}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !243, file: !27, line: 44, baseType: !246, size: 32, align: 32)
!246 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !243, file: !27, line: 46, baseType: !154, size: 64, align: 64, offset: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !243, file: !27, line: 48, baseType: !154, size: 64, align: 64, offset: 128)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "verrel", scope: !219, file: !4, line: 69, baseType: !26, size: 32, align: 32, offset: 576)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "arch_is_implicit", scope: !219, file: !4, line: 70, baseType: !192, size: 8, align: 8, offset: 608)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "cyclebreak", scope: !219, file: !4, line: 71, baseType: !192, size: 8, align: 8, offset: 616)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !215, file: !4, line: 248, baseType: !218, size: 64, align: 64, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "installed_instances", scope: !209, file: !4, line: 250, baseType: !158, size: 32, align: 32, offset: 3328)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "arch_next", scope: !205, file: !4, line: 197, baseType: !204, size: 64, align: 64, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "want", scope: !205, file: !4, line: 199, baseType: !35, size: 32, align: 32, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "eflag", scope: !205, file: !4, line: 201, baseType: !43, size: 32, align: 32, offset: 160)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !205, file: !4, line: 202, baseType: !47, size: 32, align: 32, offset: 192)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !205, file: !4, line: 203, baseType: !57, size: 32, align: 32, offset: 224)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "otherpriority", scope: !205, file: !4, line: 204, baseType: !154, size: 64, align: 64, offset: 256)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "section", scope: !205, file: !4, line: 205, baseType: !154, size: 64, align: 64, offset: 320)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "configversion", scope: !205, file: !4, line: 206, baseType: !243, size: 192, align: 64, offset: 384)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !205, file: !4, line: 207, baseType: !263, size: 960, align: 64, offset: 576)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgbin", file: !4, line: 107, size: 960, align: 64, elements: !264)
!264 = !{!265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !285}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "depends", scope: !263, file: !4, line: 108, baseType: !222, size: 64, align: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "essential", scope: !263, file: !4, line: 110, baseType: !192, size: 8, align: 8, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "multiarch", scope: !263, file: !4, line: 111, baseType: !67, size: 32, align: 32, offset: 96)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !263, file: !4, line: 112, baseType: !234, size: 64, align: 64, offset: 128)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "pkgname_archqual", scope: !263, file: !4, line: 115, baseType: !154, size: 64, align: 64, offset: 192)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !263, file: !4, line: 116, baseType: !154, size: 64, align: 64, offset: 256)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "maintainer", scope: !263, file: !4, line: 117, baseType: !154, size: 64, align: 64, offset: 320)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !263, file: !4, line: 118, baseType: !154, size: 64, align: 64, offset: 384)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "installedsize", scope: !263, file: !4, line: 119, baseType: !154, size: 64, align: 64, offset: 448)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !263, file: !4, line: 120, baseType: !154, size: 64, align: 64, offset: 512)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "bugs", scope: !263, file: !4, line: 121, baseType: !154, size: 64, align: 64, offset: 576)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !263, file: !4, line: 122, baseType: !243, size: 192, align: 64, offset: 640)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "conffiles", scope: !263, file: !4, line: 123, baseType: !278, size: 64, align: 64, offset: 832)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64, align: 64)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conffile", file: !4, line: 80, size: 256, align: 64, elements: !280)
!280 = !{!281, !282, !283, !284}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !279, file: !4, line: 81, baseType: !278, size: 64, align: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !279, file: !4, line: 82, baseType: !154, size: 64, align: 64, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !279, file: !4, line: 83, baseType: !154, size: 64, align: 64, offset: 128)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "obsolete", scope: !279, file: !4, line: 84, baseType: !192, size: 8, align: 8, offset: 192)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "arbs", scope: !263, file: !4, line: 124, baseType: !286, size: 64, align: 64, offset: 896)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64, align: 64)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arbitraryfield", file: !4, line: 74, size: 192, align: 64, elements: !288)
!288 = !{!289, !290, !291}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !287, file: !4, line: 75, baseType: !286, size: 64, align: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !287, file: !4, line: 76, baseType: !154, size: 64, align: 64, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !287, file: !4, line: 77, baseType: !154, size: 64, align: 64, offset: 128)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !205, file: !4, line: 208, baseType: !263, size: 960, align: 64, offset: 1536)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "clientdata", scope: !205, file: !4, line: 209, baseType: !294, size: 64, align: 64, offset: 2496)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64, align: 64)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perpackagestate", file: !74, line: 53, size: 256, align: 64, elements: !296)
!296 = !{!297, !298, !299, !300, !301, !302}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "istobe", scope: !295, file: !74, line: 54, baseType: !73, size: 32, align: 32)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !295, file: !74, line: 57, baseType: !81, size: 32, align: 32, offset: 32)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !295, file: !74, line: 59, baseType: !192, size: 8, align: 8, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "replacingfilesandsaid", scope: !295, file: !74, line: 61, baseType: !158, size: 32, align: 32, offset: 96)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "cmdline_seen", scope: !295, file: !74, line: 62, baseType: !158, size: 32, align: 32, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "trigprocdeferred", scope: !295, file: !74, line: 65, baseType: !303, size: 64, align: 64, offset: 192)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64, align: 64)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_list", file: !305, line: 34, size: 128, align: 64, elements: !306)
!305 = !DIFile(filename: "../lib/dpkg/pkg-list.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!306 = !{!307, !308}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !304, file: !305, line: 35, baseType: !303, size: 64, align: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !304, file: !305, line: 36, baseType: !204, size: 64, align: 64, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "archives", scope: !205, file: !4, line: 211, baseType: !310, size: 64, align: 64, offset: 2560)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64, align: 64)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archivedetails", file: !4, line: 87, size: 320, align: 64, elements: !312)
!312 = !{!313, !314, !315, !316, !317}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !311, file: !4, line: 88, baseType: !310, size: 64, align: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !311, file: !4, line: 89, baseType: !154, size: 64, align: 64, offset: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "msdosname", scope: !311, file: !4, line: 90, baseType: !154, size: 64, align: 64, offset: 128)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !311, file: !4, line: 91, baseType: !154, size: 64, align: 64, offset: 192)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "md5sum", scope: !311, file: !4, line: 92, baseType: !154, size: 64, align: 64, offset: 256)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "trigaw", scope: !205, file: !4, line: 216, baseType: !319, size: 128, align: 64, offset: 2624)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !205, file: !4, line: 213, size: 128, align: 64, elements: !320)
!320 = !{!321, !333}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !319, file: !4, line: 215, baseType: !322, size: 64, align: 64)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64, align: 64)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigaw", file: !4, line: 142, size: 320, align: 64, elements: !324)
!324 = !{!325, !326, !327, !328}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "aw", scope: !323, file: !4, line: 143, baseType: !204, size: 64, align: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "pend", scope: !323, file: !4, line: 143, baseType: !204, size: 64, align: 64, offset: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "samepend_next", scope: !323, file: !4, line: 144, baseType: !322, size: 64, align: 64, offset: 128)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "sameaw", scope: !323, file: !4, line: 147, baseType: !329, size: 128, align: 64, offset: 192)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !323, file: !4, line: 145, size: 128, align: 64, elements: !330)
!330 = !{!331, !332}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !329, file: !4, line: 146, baseType: !322, size: 64, align: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !329, file: !4, line: 146, baseType: !322, size: 64, align: 64, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !319, file: !4, line: 215, baseType: !322, size: 64, align: 64, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "othertrigaw_head", scope: !205, file: !4, line: 219, baseType: !322, size: 64, align: 64, offset: 2752)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "trigpend_head", scope: !205, file: !4, line: 220, baseType: !336, size: 64, align: 64, offset: 2816)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64, align: 64)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigpend", file: !4, line: 134, size: 128, align: 64, elements: !338)
!338 = !{!339, !340}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !337, file: !4, line: 135, baseType: !336, size: 64, align: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !337, file: !4, line: 136, baseType: !154, size: 64, align: 64, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !205, file: !4, line: 231, baseType: !342, size: 64, align: 64, offset: 2880)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64, align: 64)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode_list", file: !92, line: 122, size: 128, align: 64, elements: !344)
!344 = !{!345, !346}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !343, file: !92, line: 123, baseType: !342, size: 64, align: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "namenode", scope: !343, file: !92, line: 124, baseType: !347, size: 64, align: 64, offset: 64)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64, align: 64)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode", file: !92, line: 90, size: 640, align: 64, elements: !349)
!349 = !{!350, !351, !352, !353, !361, !379, !394, !395, !396, !397}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !348, file: !92, line: 91, baseType: !347, size: 64, align: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !348, file: !92, line: 92, baseType: !154, size: 64, align: 64, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "packages", scope: !348, file: !92, line: 93, baseType: !303, size: 64, align: 64, offset: 128)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "divert", scope: !348, file: !92, line: 94, baseType: !354, size: 64, align: 64, offset: 192)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64, align: 64)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_diversion", file: !92, line: 151, size: 256, align: 64, elements: !356)
!356 = !{!357, !358, !359, !360}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "useinstead", scope: !355, file: !92, line: 152, baseType: !347, size: 64, align: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "camefrom", scope: !355, file: !92, line: 153, baseType: !347, size: 64, align: 64, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "pkgset", scope: !355, file: !92, line: 154, baseType: !208, size: 64, align: 64, offset: 128)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !355, file: !92, line: 157, baseType: !354, size: 64, align: 64, offset: 192)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "statoverride", scope: !348, file: !92, line: 101, baseType: !362, size: 64, align: 64, offset: 256)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64, align: 64)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_stat", file: !364, line: 40, size: 256, align: 64, elements: !365)
!364 = !DIFile(filename: "../lib/dpkg/file.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!365 = !{!366, !371, !374, !377, !378}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !363, file: !364, line: 41, baseType: !367, size: 32, align: 32)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !368, line: 80, baseType: !369)
!368 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !370, line: 125, baseType: !246)
!370 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!371 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !363, file: !364, line: 42, baseType: !372, size: 32, align: 32, offset: 32)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !368, line: 65, baseType: !373)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !370, line: 126, baseType: !246)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !363, file: !364, line: 43, baseType: !375, size: 32, align: 32, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !368, line: 70, baseType: !376)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !370, line: 129, baseType: !246)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "uname", scope: !363, file: !364, line: 47, baseType: !177, size: 64, align: 64, offset: 128)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !363, file: !364, line: 48, baseType: !177, size: 64, align: 64, offset: 192)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "trig_interested", scope: !348, file: !92, line: 103, baseType: !380, size: 64, align: 64, offset: 320)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64, align: 64)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigfileint", file: !87, line: 54, size: 448, align: 64, elements: !382)
!382 = !{!383, !384, !386, !387, !388, !389}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !381, file: !87, line: 55, baseType: !204, size: 64, align: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "pkgbin", scope: !381, file: !87, line: 56, baseType: !385, size: 64, align: 64, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64, align: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "fnn", scope: !381, file: !87, line: 57, baseType: !347, size: 64, align: 64, offset: 128)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !381, file: !87, line: 58, baseType: !86, size: 32, align: 32, offset: 192)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "samefile_next", scope: !381, file: !87, line: 59, baseType: !380, size: 64, align: 64, offset: 256)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "inoverall", scope: !381, file: !87, line: 62, baseType: !390, size: 128, align: 64, offset: 320)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !381, file: !87, line: 60, size: 128, align: 64, elements: !391)
!391 = !{!392, !393}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !390, file: !87, line: 61, baseType: !380, size: 64, align: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !390, file: !87, line: 61, baseType: !380, size: 64, align: 64, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !348, file: !92, line: 111, baseType: !91, size: 32, align: 32, offset: 384)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "oldhash", scope: !348, file: !92, line: 114, baseType: !154, size: 64, align: 64, offset: 448)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "newhash", scope: !348, file: !92, line: 117, baseType: !154, size: 64, align: 64, offset: 512)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "file_ondisk_id", scope: !348, file: !92, line: 119, baseType: !398, size: 64, align: 64, offset: 576)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64, align: 64)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ondisk_id", file: !92, line: 85, size: 128, align: 64, elements: !400)
!400 = !{!401, !404}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "id_dev", scope: !399, file: !92, line: 86, baseType: !402, size: 64, align: 64)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !368, line: 60, baseType: !403)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !370, line: 124, baseType: !174)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "id_ino", scope: !399, file: !92, line: 87, baseType: !405, size: 64, align: 64, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !368, line: 48, baseType: !406)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !370, line: 127, baseType: !174)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_phys_offs", scope: !205, file: !4, line: 232, baseType: !408, size: 64, align: 64, offset: 2944)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !368, line: 86, baseType: !409)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !370, line: 131, baseType: !410)
!410 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_valid", scope: !205, file: !4, line: 233, baseType: !192, size: 8, align: 8, offset: 3008)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "status_dirty", scope: !205, file: !4, line: 236, baseType: !192, size: 8, align: 8, offset: 3016)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64, align: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !198, file: !162, line: 55, baseType: !415, size: 64, align: 64, offset: 64)
!415 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !198, file: !162, line: 52, size: 64, align: 64, elements: !416)
!416 = !{!417, !418}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !415, file: !162, line: 53, baseType: !158, size: 32, align: 32)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !415, file: !162, line: 54, baseType: !154, size: 64, align: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "explanation", scope: !198, file: !162, line: 56, baseType: !154, size: 64, align: 64, offset: 128)
!420 = !{!421}
!421 = !DISubrange(count: 12)
!422 = !{i32 2, !"Dwarf Version", i32 4}
!423 = !{i32 2, !"Debug Info Version", i32 3}
!424 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!425 = distinct !DISubprogram(name: "audit", scope: !162, file: !162, line: 191, type: !163, isLocal: false, isDefinition: true, scopeLine: 192, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !167)
!426 = !DILocalVariable(name: "argv", arg: 1, scope: !425, file: !162, line: 191, type: !165)
!427 = !DIExpression()
!428 = !DILocation(line: 191, column: 26, scope: !425)
!429 = !DILocalVariable(name: "problem", scope: !425, file: !162, line: 193, type: !413)
!430 = !DILocation(line: 193, column: 31, scope: !425)
!431 = !DILocalVariable(name: "array", scope: !425, file: !162, line: 194, type: !432)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_array", file: !433, line: 38, size: 128, align: 64, elements: !434)
!433 = !DIFile(filename: "../lib/dpkg/pkg-array.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!434 = !{!435, !436}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "n_pkgs", scope: !432, file: !433, line: 39, baseType: !158, size: 32, align: 32)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "pkgs", scope: !432, file: !433, line: 40, baseType: !437, size: 64, align: 64, offset: 64)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64, align: 64)
!438 = !DILocation(line: 194, column: 20, scope: !425)
!439 = !DILocalVariable(name: "head_running", scope: !425, file: !162, line: 195, type: !192)
!440 = !DILocation(line: 195, column: 7, scope: !425)
!441 = !DILocalVariable(name: "i", scope: !425, file: !162, line: 196, type: !158)
!442 = !DILocation(line: 196, column: 7, scope: !425)
!443 = !DILocation(line: 198, column: 3, scope: !425)
!444 = !DILocation(line: 200, column: 9, scope: !445)
!445 = distinct !DILexicalBlock(scope: !425, file: !162, line: 200, column: 7)
!446 = !DILocation(line: 200, column: 8, scope: !445)
!447 = !DILocation(line: 200, column: 7, scope: !425)
!448 = !DILocation(line: 201, column: 5, scope: !445)
!449 = !DILocation(line: 203, column: 72, scope: !445)
!450 = !DILocation(line: 203, column: 5, scope: !445)
!451 = !DILocation(line: 205, column: 3, scope: !425)
!452 = !DILocation(line: 207, column: 16, scope: !453)
!453 = distinct !DILexicalBlock(scope: !425, file: !162, line: 207, column: 3)
!454 = !DILocation(line: 207, column: 8, scope: !453)
!455 = !DILocation(line: 207, column: 34, scope: !456)
!456 = !DILexicalBlockFile(scope: !457, file: !162, discriminator: 1)
!457 = distinct !DILexicalBlock(scope: !453, file: !162, line: 207, column: 3)
!458 = !DILocation(line: 207, column: 43, scope: !456)
!459 = !DILocation(line: 207, column: 3, scope: !456)
!460 = !DILocalVariable(name: "head", scope: !461, file: !162, line: 208, type: !192)
!461 = distinct !DILexicalBlock(scope: !457, file: !162, line: 207, column: 61)
!462 = !DILocation(line: 208, column: 9, scope: !461)
!463 = !DILocation(line: 210, column: 12, scope: !464)
!464 = distinct !DILexicalBlock(scope: !461, file: !162, line: 210, column: 5)
!465 = !DILocation(line: 210, column: 10, scope: !464)
!466 = !DILocation(line: 210, column: 17, scope: !467)
!467 = !DILexicalBlockFile(scope: !468, file: !162, discriminator: 1)
!468 = distinct !DILexicalBlock(scope: !464, file: !162, line: 210, column: 5)
!469 = !DILocation(line: 210, column: 27, scope: !467)
!470 = !DILocation(line: 210, column: 19, scope: !467)
!471 = !DILocation(line: 210, column: 5, scope: !467)
!472 = !DILocalVariable(name: "pkg", scope: !473, file: !162, line: 211, type: !204)
!473 = distinct !DILexicalBlock(scope: !468, file: !162, line: 210, column: 40)
!474 = !DILocation(line: 211, column: 23, scope: !473)
!475 = !DILocation(line: 211, column: 40, scope: !473)
!476 = !DILocation(line: 211, column: 29, scope: !473)
!477 = !DILocation(line: 211, column: 35, scope: !473)
!478 = !DILocation(line: 213, column: 12, scope: !479)
!479 = distinct !DILexicalBlock(scope: !473, file: !162, line: 213, column: 11)
!480 = !DILocation(line: 213, column: 21, scope: !479)
!481 = !DILocation(line: 213, column: 27, scope: !479)
!482 = !DILocation(line: 213, column: 32, scope: !479)
!483 = !DILocation(line: 213, column: 11, scope: !473)
!484 = !DILocation(line: 214, column: 9, scope: !479)
!485 = !DILocation(line: 215, column: 12, scope: !486)
!486 = distinct !DILexicalBlock(scope: !473, file: !162, line: 215, column: 11)
!487 = !DILocation(line: 215, column: 11, scope: !473)
!488 = !DILocation(line: 216, column: 13, scope: !489)
!489 = distinct !DILexicalBlock(scope: !490, file: !162, line: 216, column: 13)
!490 = distinct !DILexicalBlock(scope: !486, file: !162, line: 215, column: 26)
!491 = !DILocation(line: 216, column: 13, scope: !490)
!492 = !DILocation(line: 217, column: 16, scope: !489)
!493 = !DILocation(line: 217, column: 11, scope: !494)
!494 = !DILexicalBlockFile(scope: !489, file: !162, discriminator: 1)
!495 = !DILocation(line: 217, column: 11, scope: !489)
!496 = !DILocation(line: 220, column: 22, scope: !490)
!497 = !DILocation(line: 221, column: 7, scope: !490)
!498 = !DILocation(line: 222, column: 12, scope: !499)
!499 = distinct !DILexicalBlock(scope: !473, file: !162, line: 222, column: 11)
!500 = !DILocation(line: 222, column: 11, scope: !473)
!501 = !DILocation(line: 223, column: 23, scope: !502)
!502 = distinct !DILexicalBlock(scope: !499, file: !162, line: 222, column: 18)
!503 = !DILocation(line: 223, column: 32, scope: !502)
!504 = !DILocation(line: 223, column: 15, scope: !502)
!505 = !DILocation(line: 223, column: 45, scope: !502)
!506 = !DILocation(line: 223, column: 9, scope: !507)
!507 = !DILexicalBlockFile(scope: !502, file: !162, discriminator: 1)
!508 = !DILocation(line: 224, column: 14, scope: !502)
!509 = !DILocation(line: 225, column: 7, scope: !502)
!510 = !DILocation(line: 226, column: 23, scope: !473)
!511 = !DILocation(line: 226, column: 7, scope: !473)
!512 = !DILocation(line: 227, column: 5, scope: !473)
!513 = !DILocation(line: 210, column: 36, scope: !514)
!514 = !DILexicalBlockFile(scope: !468, file: !162, discriminator: 2)
!515 = !DILocation(line: 210, column: 5, scope: !514)
!516 = distinct !{!516, !517}
!517 = !DILocation(line: 210, column: 5, scope: !461)
!518 = !DILocation(line: 229, column: 9, scope: !519)
!519 = distinct !DILexicalBlock(scope: !461, file: !162, line: 229, column: 9)
!520 = !DILocation(line: 229, column: 9, scope: !461)
!521 = !DILocation(line: 229, column: 15, scope: !522)
!522 = !DILexicalBlockFile(scope: !519, file: !162, discriminator: 1)
!523 = !DILocation(line: 230, column: 3, scope: !461)
!524 = !DILocation(line: 207, column: 57, scope: !525)
!525 = !DILexicalBlockFile(scope: !457, file: !162, discriminator: 2)
!526 = !DILocation(line: 207, column: 3, scope: !525)
!527 = distinct !{!527, !528}
!528 = !DILocation(line: 207, column: 3, scope: !425)
!529 = !DILocation(line: 232, column: 3, scope: !425)
!530 = !DILocation(line: 234, column: 11, scope: !425)
!531 = !DILocation(line: 234, column: 19, scope: !425)
!532 = !DILocation(line: 234, column: 3, scope: !533)
!533 = !DILexicalBlockFile(scope: !425, file: !162, discriminator: 1)
!534 = !DILocation(line: 236, column: 3, scope: !425)
!535 = distinct !DISubprogram(name: "pkg_array_mapper", scope: !162, file: !162, line: 179, type: !536, isLocal: true, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !167)
!536 = !DISubroutineType(types: !537)
!537 = !{!204, !154}
!538 = !DILocalVariable(name: "name", arg: 1, scope: !535, file: !162, line: 179, type: !154)
!539 = !DILocation(line: 179, column: 30, scope: !535)
!540 = !DILocalVariable(name: "pkg", scope: !535, file: !162, line: 181, type: !204)
!541 = !DILocation(line: 181, column: 19, scope: !535)
!542 = !DILocation(line: 183, column: 36, scope: !535)
!543 = !DILocation(line: 183, column: 47, scope: !535)
!544 = !DILocation(line: 183, column: 9, scope: !535)
!545 = !DILocation(line: 183, column: 7, scope: !535)
!546 = !DILocation(line: 184, column: 7, scope: !547)
!547 = distinct !DILexicalBlock(scope: !535, file: !162, line: 184, column: 7)
!548 = !DILocation(line: 184, column: 12, scope: !547)
!549 = !DILocation(line: 184, column: 19, scope: !547)
!550 = !DILocation(line: 184, column: 7, scope: !535)
!551 = !DILocation(line: 185, column: 12, scope: !547)
!552 = !DILocation(line: 185, column: 63, scope: !547)
!553 = !DILocation(line: 185, column: 54, scope: !554)
!554 = !DILexicalBlockFile(scope: !547, file: !162, discriminator: 1)
!555 = !DILocation(line: 185, column: 5, scope: !556)
!556 = !DILexicalBlockFile(scope: !547, file: !162, discriminator: 2)
!557 = !DILocation(line: 185, column: 5, scope: !547)
!558 = !DILocation(line: 187, column: 10, scope: !535)
!559 = !DILocation(line: 187, column: 3, scope: !535)
!560 = distinct !DISubprogram(name: "describebriefly", scope: !162, file: !162, line: 164, type: !561, isLocal: true, isDefinition: true, scopeLine: 164, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !167)
!561 = !DISubroutineType(types: !562)
!562 = !{null, !204}
!563 = !DILocalVariable(name: "pkg", arg: 1, scope: !560, file: !162, line: 164, type: !204)
!564 = !DILocation(line: 164, column: 45, scope: !560)
!565 = !DILocalVariable(name: "maxl", scope: !560, file: !162, line: 165, type: !158)
!566 = !DILocation(line: 165, column: 7, scope: !560)
!567 = !DILocalVariable(name: "l", scope: !560, file: !162, line: 165, type: !158)
!568 = !DILocation(line: 165, column: 13, scope: !560)
!569 = !DILocalVariable(name: "pdesc", scope: !560, file: !162, line: 166, type: !154)
!570 = !DILocation(line: 166, column: 15, scope: !560)
!571 = !DILocation(line: 168, column: 7, scope: !560)
!572 = !DILocation(line: 169, column: 13, scope: !560)
!573 = !DILocation(line: 169, column: 18, scope: !560)
!574 = !DILocation(line: 169, column: 23, scope: !560)
!575 = !DILocation(line: 169, column: 6, scope: !560)
!576 = !DILocation(line: 169, column: 4, scope: !560)
!577 = !DILocation(line: 170, column: 7, scope: !578)
!578 = distinct !DILexicalBlock(scope: !560, file: !162, line: 170, column: 7)
!579 = !DILocation(line: 170, column: 8, scope: !578)
!580 = !DILocation(line: 170, column: 7, scope: !560)
!581 = !DILocation(line: 170, column: 22, scope: !582)
!582 = !DILexicalBlockFile(scope: !578, file: !162, discriminator: 1)
!583 = !DILocation(line: 170, column: 23, scope: !582)
!584 = !DILocation(line: 170, column: 18, scope: !582)
!585 = !DILocation(line: 170, column: 13, scope: !582)
!586 = !DILocation(line: 172, column: 27, scope: !560)
!587 = !DILocation(line: 172, column: 33, scope: !560)
!588 = !DILocation(line: 172, column: 38, scope: !560)
!589 = !DILocation(line: 172, column: 11, scope: !560)
!590 = !DILocation(line: 172, column: 9, scope: !560)
!591 = !DILocation(line: 173, column: 9, scope: !560)
!592 = !DILocation(line: 173, column: 15, scope: !560)
!593 = !DILocation(line: 173, column: 12, scope: !560)
!594 = !DILocation(line: 173, column: 8, scope: !560)
!595 = !DILocation(line: 173, column: 24, scope: !596)
!596 = !DILexicalBlockFile(scope: !560, file: !162, discriminator: 1)
!597 = !DILocation(line: 173, column: 8, scope: !596)
!598 = !DILocation(line: 173, column: 30, scope: !599)
!599 = !DILexicalBlockFile(scope: !560, file: !162, discriminator: 2)
!600 = !DILocation(line: 173, column: 8, scope: !599)
!601 = !DILocation(line: 173, column: 8, scope: !602)
!602 = !DILexicalBlockFile(scope: !560, file: !162, discriminator: 3)
!603 = !DILocation(line: 173, column: 5, scope: !602)
!604 = !DILocation(line: 175, column: 36, scope: !560)
!605 = !DILocation(line: 175, column: 27, scope: !560)
!606 = !DILocation(line: 175, column: 57, scope: !560)
!607 = !DILocation(line: 175, column: 60, scope: !560)
!608 = !DILocation(line: 175, column: 3, scope: !596)
!609 = !DILocation(line: 176, column: 1, scope: !560)
!610 = distinct !DISubprogram(name: "unpackchk", scope: !162, file: !162, line: 272, type: !163, isLocal: false, isDefinition: true, scopeLine: 273, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !167)
!611 = !DILocalVariable(name: "argv", arg: 1, scope: !610, file: !162, line: 272, type: !165)
!612 = !DILocation(line: 272, column: 30, scope: !610)
!613 = !DILocalVariable(name: "totalcount", scope: !610, file: !162, line: 274, type: !158)
!614 = !DILocation(line: 274, column: 7, scope: !610)
!615 = !DILocalVariable(name: "sects", scope: !610, file: !162, line: 274, type: !158)
!616 = !DILocation(line: 274, column: 19, scope: !610)
!617 = !DILocalVariable(name: "sectionentries", scope: !610, file: !162, line: 275, type: !618)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64, align: 64)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sectionentry", file: !162, line: 239, size: 192, align: 64, elements: !620)
!620 = !{!621, !622, !623}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !619, file: !162, line: 240, baseType: !618, size: 64, align: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !619, file: !162, line: 241, baseType: !154, size: 64, align: 64, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !619, file: !162, line: 242, baseType: !158, size: 32, align: 32, offset: 128)
!624 = !DILocation(line: 275, column: 24, scope: !610)
!625 = !DILocalVariable(name: "se", scope: !610, file: !162, line: 275, type: !618)
!626 = !DILocation(line: 275, column: 41, scope: !610)
!627 = !DILocalVariable(name: "sep", scope: !610, file: !162, line: 275, type: !628)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64, align: 64)
!629 = !DILocation(line: 275, column: 47, scope: !610)
!630 = !DILocalVariable(name: "iter", scope: !610, file: !162, line: 276, type: !631)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64, align: 64)
!632 = !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_hash_iter", file: !4, line: 314, flags: DIFlagFwdDecl)
!633 = !DILocation(line: 276, column: 25, scope: !610)
!634 = !DILocalVariable(name: "pkg", scope: !610, file: !162, line: 277, type: !204)
!635 = !DILocation(line: 277, column: 19, scope: !610)
!636 = !DILocalVariable(name: "thissect", scope: !610, file: !162, line: 278, type: !154)
!637 = !DILocation(line: 278, column: 15, scope: !610)
!638 = !DILocalVariable(name: "buf", scope: !610, file: !162, line: 279, type: !639)
!639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 160, align: 8, elements: !640)
!640 = !{!641}
!641 = !DISubrange(count: 20)
!642 = !DILocation(line: 279, column: 8, scope: !610)
!643 = !DILocalVariable(name: "width", scope: !610, file: !162, line: 280, type: !158)
!644 = !DILocation(line: 280, column: 7, scope: !610)
!645 = !DILocation(line: 282, column: 8, scope: !646)
!646 = distinct !DILexicalBlock(scope: !610, file: !162, line: 282, column: 7)
!647 = !DILocation(line: 282, column: 7, scope: !646)
!648 = !DILocation(line: 282, column: 7, scope: !610)
!649 = !DILocation(line: 283, column: 14, scope: !646)
!650 = !DILocation(line: 283, column: 50, scope: !646)
!651 = !DILocation(line: 283, column: 61, scope: !646)
!652 = !DILocation(line: 283, column: 5, scope: !653)
!653 = !DILexicalBlockFile(scope: !646, file: !162, discriminator: 1)
!654 = !DILocation(line: 283, column: 5, scope: !646)
!655 = !DILocation(line: 285, column: 3, scope: !610)
!656 = !DILocation(line: 287, column: 13, scope: !610)
!657 = !DILocation(line: 288, column: 18, scope: !610)
!658 = !DILocation(line: 289, column: 8, scope: !610)
!659 = !DILocation(line: 290, column: 10, scope: !610)
!660 = !DILocation(line: 290, column: 8, scope: !610)
!661 = !DILocation(line: 291, column: 3, scope: !610)
!662 = !DILocation(line: 291, column: 40, scope: !663)
!663 = !DILexicalBlockFile(scope: !610, file: !162, discriminator: 1)
!664 = !DILocation(line: 291, column: 17, scope: !663)
!665 = !DILocation(line: 291, column: 15, scope: !663)
!666 = !DILocation(line: 291, column: 3, scope: !663)
!667 = !DILocation(line: 292, column: 26, scope: !668)
!668 = distinct !DILexicalBlock(scope: !669, file: !162, line: 292, column: 9)
!669 = distinct !DILexicalBlock(scope: !610, file: !162, line: 291, column: 48)
!670 = !DILocation(line: 292, column: 10, scope: !668)
!671 = !DILocation(line: 292, column: 9, scope: !669)
!672 = !DILocation(line: 292, column: 43, scope: !673)
!673 = !DILexicalBlockFile(scope: !668, file: !162, discriminator: 1)
!674 = distinct !{!674, !661}
!675 = !DILocation(line: 293, column: 14, scope: !676)
!676 = distinct !DILexicalBlock(scope: !669, file: !162, line: 293, column: 5)
!677 = !DILocation(line: 293, column: 12, scope: !676)
!678 = !DILocation(line: 293, column: 10, scope: !676)
!679 = !DILocation(line: 293, column: 30, scope: !680)
!680 = !DILexicalBlockFile(scope: !681, file: !162, discriminator: 1)
!681 = distinct !DILexicalBlock(scope: !676, file: !162, line: 293, column: 5)
!682 = !DILocation(line: 293, column: 33, scope: !680)
!683 = !DILocation(line: 293, column: 47, scope: !684)
!684 = !DILexicalBlockFile(scope: !681, file: !162, discriminator: 2)
!685 = !DILocation(line: 293, column: 56, scope: !684)
!686 = !DILocation(line: 293, column: 60, scope: !684)
!687 = !DILocation(line: 293, column: 36, scope: !684)
!688 = !DILocation(line: 293, column: 33, scope: !684)
!689 = !DILocation(line: 293, column: 5, scope: !690)
!690 = !DILexicalBlockFile(scope: !676, file: !162, discriminator: 3)
!691 = !DILocation(line: 293, column: 5, scope: !692)
!692 = !DILexicalBlockFile(scope: !676, file: !162, discriminator: 4)
!693 = !DILocation(line: 293, column: 71, scope: !694)
!694 = !DILexicalBlockFile(scope: !681, file: !162, discriminator: 5)
!695 = !DILocation(line: 293, column: 75, scope: !694)
!696 = !DILocation(line: 293, column: 69, scope: !694)
!697 = !DILocation(line: 293, column: 5, scope: !694)
!698 = distinct !{!698, !699}
!699 = !DILocation(line: 293, column: 5, scope: !669)
!700 = !DILocation(line: 294, column: 10, scope: !701)
!701 = distinct !DILexicalBlock(scope: !669, file: !162, line: 294, column: 9)
!702 = !DILocation(line: 294, column: 9, scope: !669)
!703 = !DILocation(line: 295, column: 12, scope: !704)
!704 = distinct !DILexicalBlock(scope: !701, file: !162, line: 294, column: 14)
!705 = !DILocation(line: 295, column: 10, scope: !704)
!706 = !DILocation(line: 296, column: 15, scope: !707)
!707 = distinct !DILexicalBlock(scope: !704, file: !162, line: 296, column: 7)
!708 = !DILocation(line: 296, column: 12, scope: !707)
!709 = !DILocation(line: 297, column: 13, scope: !710)
!710 = distinct !DILexicalBlock(scope: !707, file: !162, line: 296, column: 7)
!711 = !DILocation(line: 297, column: 12, scope: !710)
!712 = !DILocation(line: 297, column: 17, scope: !710)
!713 = !DILocation(line: 297, column: 31, scope: !714)
!714 = !DILexicalBlockFile(scope: !710, file: !162, discriminator: 1)
!715 = !DILocation(line: 297, column: 42, scope: !714)
!716 = !DILocation(line: 297, column: 41, scope: !714)
!717 = !DILocation(line: 297, column: 48, scope: !714)
!718 = !DILocation(line: 297, column: 20, scope: !714)
!719 = !DILocation(line: 297, column: 54, scope: !714)
!720 = !DILocation(line: 296, column: 7, scope: !721)
!721 = !DILexicalBlockFile(scope: !707, file: !162, discriminator: 1)
!722 = !DILocation(line: 296, column: 7, scope: !723)
!723 = !DILexicalBlockFile(scope: !707, file: !162, discriminator: 2)
!724 = !DILocation(line: 298, column: 20, scope: !710)
!725 = !DILocation(line: 298, column: 19, scope: !710)
!726 = !DILocation(line: 298, column: 26, scope: !710)
!727 = !DILocation(line: 298, column: 15, scope: !710)
!728 = !DILocation(line: 296, column: 7, scope: !729)
!729 = !DILexicalBlockFile(scope: !710, file: !162, discriminator: 3)
!730 = distinct !{!730, !731}
!731 = !DILocation(line: 296, column: 7, scope: !704)
!732 = !DILocation(line: 299, column: 17, scope: !704)
!733 = !DILocation(line: 299, column: 7, scope: !704)
!734 = !DILocation(line: 299, column: 11, scope: !704)
!735 = !DILocation(line: 299, column: 15, scope: !704)
!736 = !DILocation(line: 300, column: 7, scope: !704)
!737 = !DILocation(line: 300, column: 11, scope: !704)
!738 = !DILocation(line: 300, column: 16, scope: !704)
!739 = !DILocation(line: 301, column: 18, scope: !704)
!740 = !DILocation(line: 301, column: 17, scope: !704)
!741 = !DILocation(line: 301, column: 7, scope: !704)
!742 = !DILocation(line: 301, column: 11, scope: !704)
!743 = !DILocation(line: 301, column: 15, scope: !704)
!744 = !DILocation(line: 302, column: 13, scope: !704)
!745 = !DILocation(line: 302, column: 8, scope: !704)
!746 = !DILocation(line: 302, column: 11, scope: !704)
!747 = !DILocation(line: 303, column: 12, scope: !704)
!748 = !DILocation(line: 304, column: 5, scope: !704)
!749 = !DILocation(line: 305, column: 5, scope: !669)
!750 = !DILocation(line: 305, column: 9, scope: !669)
!751 = !DILocation(line: 305, column: 14, scope: !669)
!752 = !DILocation(line: 305, column: 28, scope: !669)
!753 = !DILocation(line: 291, column: 3, scope: !754)
!754 = !DILexicalBlockFile(scope: !610, file: !162, discriminator: 2)
!755 = !DILocation(line: 307, column: 22, scope: !610)
!756 = !DILocation(line: 307, column: 3, scope: !610)
!757 = !DILocation(line: 309, column: 7, scope: !758)
!758 = distinct !DILexicalBlock(scope: !610, file: !162, line: 309, column: 7)
!759 = !DILocation(line: 309, column: 18, scope: !758)
!760 = !DILocation(line: 309, column: 7, scope: !610)
!761 = !DILocation(line: 310, column: 5, scope: !758)
!762 = !DILocation(line: 312, column: 7, scope: !763)
!763 = distinct !DILexicalBlock(scope: !610, file: !162, line: 312, column: 7)
!764 = !DILocation(line: 312, column: 18, scope: !763)
!765 = !DILocation(line: 312, column: 7, scope: !610)
!766 = !DILocation(line: 313, column: 12, scope: !767)
!767 = distinct !DILexicalBlock(scope: !763, file: !162, line: 312, column: 25)
!768 = !DILocation(line: 313, column: 10, scope: !767)
!769 = !DILocation(line: 314, column: 5, scope: !767)
!770 = !DILocation(line: 314, column: 42, scope: !771)
!771 = !DILexicalBlockFile(scope: !767, file: !162, discriminator: 1)
!772 = !DILocation(line: 314, column: 19, scope: !771)
!773 = !DILocation(line: 314, column: 17, scope: !771)
!774 = !DILocation(line: 314, column: 5, scope: !771)
!775 = !DILocation(line: 315, column: 28, scope: !776)
!776 = distinct !DILexicalBlock(scope: !777, file: !162, line: 315, column: 11)
!777 = distinct !DILexicalBlock(scope: !767, file: !162, line: 314, column: 50)
!778 = !DILocation(line: 315, column: 12, scope: !776)
!779 = !DILocation(line: 315, column: 11, scope: !777)
!780 = !DILocation(line: 316, column: 9, scope: !776)
!781 = distinct !{!781, !769}
!782 = !DILocation(line: 317, column: 23, scope: !777)
!783 = !DILocation(line: 317, column: 7, scope: !777)
!784 = !DILocation(line: 314, column: 5, scope: !785)
!785 = !DILexicalBlockFile(scope: !767, file: !162, discriminator: 2)
!786 = !DILocation(line: 319, column: 24, scope: !767)
!787 = !DILocation(line: 319, column: 5, scope: !767)
!788 = !DILocation(line: 320, column: 3, scope: !767)
!789 = !DILocation(line: 320, column: 14, scope: !790)
!790 = !DILexicalBlockFile(scope: !791, file: !162, discriminator: 1)
!791 = distinct !DILexicalBlock(scope: !763, file: !162, line: 320, column: 14)
!792 = !DILocation(line: 320, column: 20, scope: !790)
!793 = !DILocation(line: 321, column: 14, scope: !794)
!794 = distinct !DILexicalBlock(scope: !795, file: !162, line: 321, column: 5)
!795 = distinct !DILexicalBlock(scope: !791, file: !162, line: 320, column: 27)
!796 = !DILocation(line: 321, column: 12, scope: !794)
!797 = !DILocation(line: 321, column: 10, scope: !794)
!798 = !DILocation(line: 321, column: 30, scope: !799)
!799 = !DILexicalBlockFile(scope: !800, file: !162, discriminator: 1)
!800 = distinct !DILexicalBlock(scope: !794, file: !162, line: 321, column: 5)
!801 = !DILocation(line: 321, column: 5, scope: !799)
!802 = !DILocation(line: 322, column: 15, scope: !803)
!803 = distinct !DILexicalBlock(scope: !800, file: !162, line: 321, column: 48)
!804 = !DILocation(line: 322, column: 24, scope: !803)
!805 = !DILocation(line: 322, column: 28, scope: !803)
!806 = !DILocation(line: 322, column: 7, scope: !803)
!807 = !DILocation(line: 323, column: 14, scope: !803)
!808 = !DILocation(line: 323, column: 37, scope: !803)
!809 = !DILocation(line: 323, column: 41, scope: !803)
!810 = !DILocation(line: 323, column: 47, scope: !803)
!811 = !DILocation(line: 323, column: 51, scope: !803)
!812 = !DILocation(line: 323, column: 7, scope: !813)
!813 = !DILexicalBlockFile(scope: !803, file: !162, discriminator: 1)
!814 = !DILocation(line: 324, column: 24, scope: !803)
!815 = !DILocation(line: 324, column: 28, scope: !803)
!816 = !DILocation(line: 324, column: 17, scope: !803)
!817 = !DILocation(line: 324, column: 16, scope: !803)
!818 = !DILocation(line: 324, column: 41, scope: !803)
!819 = !DILocation(line: 324, column: 34, scope: !813)
!820 = !DILocation(line: 324, column: 33, scope: !803)
!821 = !DILocation(line: 324, column: 14, scope: !803)
!822 = !DILocation(line: 324, column: 12, scope: !803)
!823 = !DILocation(line: 325, column: 7, scope: !803)
!824 = !DILocation(line: 325, column: 14, scope: !813)
!825 = !DILocation(line: 325, column: 20, scope: !813)
!826 = !DILocation(line: 325, column: 7, scope: !813)
!827 = !DILocation(line: 325, column: 28, scope: !828)
!828 = !DILexicalBlockFile(scope: !829, file: !162, discriminator: 2)
!829 = distinct !DILexicalBlock(scope: !803, file: !162, line: 325, column: 26)
!830 = !DILocation(line: 325, column: 47, scope: !828)
!831 = !DILocation(line: 325, column: 7, scope: !828)
!832 = distinct !{!832, !823}
!833 = !DILocation(line: 326, column: 14, scope: !803)
!834 = !DILocation(line: 326, column: 12, scope: !803)
!835 = !DILocation(line: 327, column: 7, scope: !803)
!836 = !DILocation(line: 327, column: 44, scope: !813)
!837 = !DILocation(line: 327, column: 21, scope: !813)
!838 = !DILocation(line: 327, column: 19, scope: !813)
!839 = !DILocation(line: 327, column: 7, scope: !813)
!840 = !DILocalVariable(name: "pkgname", scope: !841, file: !162, line: 328, type: !154)
!841 = distinct !DILexicalBlock(scope: !803, file: !162, line: 327, column: 52)
!842 = !DILocation(line: 328, column: 21, scope: !841)
!843 = !DILocation(line: 330, column: 30, scope: !844)
!844 = distinct !DILexicalBlock(scope: !841, file: !162, line: 330, column: 13)
!845 = !DILocation(line: 330, column: 14, scope: !844)
!846 = !DILocation(line: 330, column: 13, scope: !841)
!847 = !DILocation(line: 330, column: 46, scope: !848)
!848 = !DILexicalBlockFile(scope: !844, file: !162, discriminator: 1)
!849 = distinct !{!849, !835}
!850 = !DILocation(line: 331, column: 24, scope: !851)
!851 = distinct !DILexicalBlock(scope: !841, file: !162, line: 331, column: 13)
!852 = !DILocation(line: 331, column: 33, scope: !851)
!853 = !DILocation(line: 331, column: 37, scope: !851)
!854 = !DILocation(line: 331, column: 13, scope: !851)
!855 = !DILocation(line: 331, column: 13, scope: !841)
!856 = !DILocation(line: 331, column: 44, scope: !857)
!857 = !DILexicalBlockFile(scope: !851, file: !162, discriminator: 1)
!858 = !DILocation(line: 332, column: 28, scope: !841)
!859 = !DILocation(line: 332, column: 19, scope: !841)
!860 = !DILocation(line: 332, column: 17, scope: !841)
!861 = !DILocation(line: 333, column: 25, scope: !841)
!862 = !DILocation(line: 333, column: 18, scope: !841)
!863 = !DILocation(line: 333, column: 15, scope: !841)
!864 = !DILocation(line: 334, column: 14, scope: !841)
!865 = !DILocation(line: 335, column: 13, scope: !866)
!866 = distinct !DILexicalBlock(scope: !841, file: !162, line: 335, column: 13)
!867 = !DILocation(line: 335, column: 19, scope: !866)
!868 = !DILocation(line: 335, column: 13, scope: !841)
!869 = !DILocation(line: 335, column: 26, scope: !870)
!870 = !DILexicalBlockFile(scope: !871, file: !162, discriminator: 1)
!871 = distinct !DILexicalBlock(scope: !866, file: !162, line: 335, column: 24)
!872 = !DILocation(line: 335, column: 42, scope: !870)
!873 = !DILocation(line: 336, column: 23, scope: !841)
!874 = !DILocation(line: 336, column: 9, scope: !841)
!875 = !DILocation(line: 327, column: 7, scope: !876)
!876 = !DILexicalBlockFile(scope: !803, file: !162, discriminator: 2)
!877 = !DILocation(line: 338, column: 26, scope: !803)
!878 = !DILocation(line: 338, column: 7, scope: !803)
!879 = !DILocation(line: 339, column: 7, scope: !803)
!880 = !DILocation(line: 340, column: 5, scope: !803)
!881 = !DILocation(line: 321, column: 38, scope: !882)
!882 = !DILexicalBlockFile(scope: !800, file: !162, discriminator: 2)
!883 = !DILocation(line: 321, column: 42, scope: !882)
!884 = !DILocation(line: 321, column: 36, scope: !882)
!885 = !DILocation(line: 321, column: 5, scope: !882)
!886 = distinct !{!886, !887}
!887 = !DILocation(line: 321, column: 5, scope: !795)
!888 = !DILocation(line: 341, column: 3, scope: !795)
!889 = !DILocation(line: 342, column: 111, scope: !890)
!890 = distinct !DILexicalBlock(scope: !791, file: !162, line: 341, column: 10)
!891 = !DILocation(line: 342, column: 12, scope: !890)
!892 = !DILocation(line: 344, column: 12, scope: !890)
!893 = !DILocation(line: 342, column: 5, scope: !894)
!894 = !DILexicalBlockFile(scope: !890, file: !162, discriminator: 1)
!895 = !DILocation(line: 345, column: 10, scope: !890)
!896 = !DILocation(line: 346, column: 14, scope: !897)
!897 = distinct !DILexicalBlock(scope: !890, file: !162, line: 346, column: 5)
!898 = !DILocation(line: 346, column: 12, scope: !897)
!899 = !DILocation(line: 346, column: 10, scope: !897)
!900 = !DILocation(line: 346, column: 30, scope: !901)
!901 = !DILexicalBlockFile(scope: !902, file: !162, discriminator: 1)
!902 = distinct !DILexicalBlock(scope: !897, file: !162, line: 346, column: 5)
!903 = !DILocation(line: 346, column: 5, scope: !901)
!904 = !DILocation(line: 347, column: 15, scope: !905)
!905 = distinct !DILexicalBlock(scope: !902, file: !162, line: 346, column: 48)
!906 = !DILocation(line: 347, column: 24, scope: !905)
!907 = !DILocation(line: 347, column: 28, scope: !905)
!908 = !DILocation(line: 347, column: 7, scope: !905)
!909 = !DILocation(line: 348, column: 28, scope: !905)
!910 = !DILocation(line: 348, column: 32, scope: !905)
!911 = !DILocation(line: 348, column: 21, scope: !905)
!912 = !DILocation(line: 348, column: 19, scope: !905)
!913 = !DILocation(line: 348, column: 47, scope: !905)
!914 = !DILocation(line: 348, column: 40, scope: !915)
!915 = !DILexicalBlockFile(scope: !905, file: !162, discriminator: 1)
!916 = !DILocation(line: 348, column: 38, scope: !905)
!917 = !DILocation(line: 348, column: 13, scope: !905)
!918 = !DILocation(line: 349, column: 11, scope: !919)
!919 = distinct !DILexicalBlock(scope: !905, file: !162, line: 349, column: 11)
!920 = !DILocation(line: 349, column: 17, scope: !919)
!921 = !DILocation(line: 349, column: 11, scope: !905)
!922 = !DILocation(line: 349, column: 24, scope: !923)
!923 = !DILexicalBlockFile(scope: !924, file: !162, discriminator: 1)
!924 = distinct !DILexicalBlock(scope: !919, file: !162, line: 349, column: 22)
!925 = !DILocation(line: 349, column: 58, scope: !923)
!926 = !DILocation(line: 349, column: 62, scope: !923)
!927 = !DILocation(line: 349, column: 51, scope: !928)
!928 = !DILexicalBlockFile(scope: !923, file: !162, discriminator: 2)
!929 = !DILocation(line: 349, column: 49, scope: !923)
!930 = !DILocation(line: 349, column: 77, scope: !923)
!931 = !DILocation(line: 349, column: 70, scope: !932)
!932 = !DILexicalBlockFile(scope: !923, file: !162, discriminator: 3)
!933 = !DILocation(line: 349, column: 68, scope: !923)
!934 = !DILocation(line: 349, column: 46, scope: !923)
!935 = !DILocation(line: 349, column: 44, scope: !923)
!936 = !DILocation(line: 349, column: 83, scope: !923)
!937 = !DILocation(line: 350, column: 27, scope: !905)
!938 = !DILocation(line: 350, column: 31, scope: !905)
!939 = !DILocation(line: 350, column: 36, scope: !905)
!940 = !DILocation(line: 350, column: 40, scope: !905)
!941 = !DILocation(line: 350, column: 7, scope: !905)
!942 = !DILocation(line: 351, column: 5, scope: !905)
!943 = !DILocation(line: 346, column: 38, scope: !944)
!944 = !DILexicalBlockFile(scope: !902, file: !162, discriminator: 2)
!945 = !DILocation(line: 346, column: 42, scope: !944)
!946 = !DILocation(line: 346, column: 36, scope: !944)
!947 = !DILocation(line: 346, column: 5, scope: !944)
!948 = distinct !{!948, !949}
!949 = !DILocation(line: 346, column: 5, scope: !890)
!950 = !DILocation(line: 352, column: 5, scope: !890)
!951 = !DILocation(line: 355, column: 11, scope: !610)
!952 = !DILocation(line: 355, column: 19, scope: !610)
!953 = !DILocation(line: 355, column: 3, scope: !663)
!954 = !DILocation(line: 357, column: 3, scope: !610)
!955 = !DILocation(line: 358, column: 1, scope: !610)
!956 = distinct !DISubprogram(name: "yettobeunpacked", scope: !162, file: !162, line: 246, type: !957, isLocal: true, isDefinition: true, scopeLine: 247, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !167)
!957 = !DISubroutineType(types: !958)
!958 = !{!192, !204, !153}
!959 = !DILocalVariable(name: "pkg", arg: 1, scope: !956, file: !162, line: 246, type: !204)
!960 = !DILocation(line: 246, column: 33, scope: !956)
!961 = !DILocalVariable(name: "thissect", arg: 2, scope: !956, file: !162, line: 246, type: !153)
!962 = !DILocation(line: 246, column: 51, scope: !956)
!963 = !DILocation(line: 248, column: 7, scope: !964)
!964 = distinct !DILexicalBlock(scope: !956, file: !162, line: 248, column: 7)
!965 = !DILocation(line: 248, column: 12, scope: !964)
!966 = !DILocation(line: 248, column: 17, scope: !964)
!967 = !DILocation(line: 248, column: 7, scope: !956)
!968 = !DILocation(line: 249, column: 5, scope: !964)
!969 = !DILocation(line: 251, column: 11, scope: !956)
!970 = !DILocation(line: 251, column: 16, scope: !956)
!971 = !DILocation(line: 251, column: 3, scope: !956)
!972 = !DILocation(line: 257, column: 5, scope: !973)
!973 = distinct !DILexicalBlock(scope: !956, file: !162, line: 251, column: 24)
!974 = !DILocation(line: 261, column: 9, scope: !975)
!975 = distinct !DILexicalBlock(scope: !973, file: !162, line: 261, column: 9)
!976 = !DILocation(line: 261, column: 9, scope: !973)
!977 = !DILocation(line: 262, column: 30, scope: !975)
!978 = !DILocation(line: 262, column: 35, scope: !975)
!979 = !DILocation(line: 262, column: 19, scope: !975)
!980 = !DILocation(line: 262, column: 46, scope: !981)
!981 = !DILexicalBlockFile(scope: !975, file: !162, discriminator: 1)
!982 = !DILocation(line: 262, column: 51, scope: !981)
!983 = !DILocation(line: 262, column: 19, scope: !981)
!984 = !DILocation(line: 263, column: 45, scope: !975)
!985 = !DILocation(line: 262, column: 19, scope: !986)
!986 = !DILexicalBlockFile(scope: !975, file: !162, discriminator: 2)
!987 = !DILocation(line: 262, column: 19, scope: !988)
!988 = !DILexicalBlockFile(scope: !975, file: !162, discriminator: 3)
!989 = !DILocation(line: 262, column: 8, scope: !988)
!990 = !DILocation(line: 262, column: 17, scope: !988)
!991 = !DILocation(line: 262, column: 7, scope: !988)
!992 = !DILocation(line: 264, column: 5, scope: !973)
!993 = !DILocation(line: 266, column: 77, scope: !973)
!994 = !DILocation(line: 266, column: 82, scope: !973)
!995 = !DILocation(line: 266, column: 5, scope: !973)
!996 = !DILocation(line: 269, column: 1, scope: !956)
!997 = distinct !DISubprogram(name: "assertpredep", scope: !162, file: !162, line: 395, type: !163, isLocal: false, isDefinition: true, scopeLine: 396, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !167)
!998 = !DILocalVariable(name: "argv", arg: 1, scope: !997, file: !162, line: 395, type: !165)
!999 = !DILocation(line: 395, column: 33, scope: !997)
!1000 = !DILocalVariable(name: "version", scope: !997, file: !162, line: 397, type: !243)
!1001 = !DILocation(line: 397, column: 23, scope: !997)
!1002 = !DILocation(line: 399, column: 33, scope: !997)
!1003 = !DILocation(line: 399, column: 49, scope: !997)
!1004 = !DILocation(line: 399, column: 10, scope: !1005)
!1005 = !DILexicalBlockFile(scope: !997, file: !162, discriminator: 1)
!1006 = !DILocation(line: 399, column: 3, scope: !997)
!1007 = distinct !DISubprogram(name: "assert_version_support", scope: !162, file: !162, line: 361, type: !1008, isLocal: true, isDefinition: true, scopeLine: 364, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !167)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!158, !165, !1010, !154}
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64, align: 64)
!1011 = !DILocalVariable(name: "argv", arg: 1, scope: !1007, file: !162, line: 361, type: !165)
!1012 = !DILocation(line: 361, column: 43, scope: !1007)
!1013 = !DILocalVariable(name: "version", arg: 2, scope: !1007, file: !162, line: 362, type: !1010)
!1014 = !DILocation(line: 362, column: 45, scope: !1007)
!1015 = !DILocalVariable(name: "feature_name", arg: 3, scope: !1007, file: !162, line: 363, type: !154)
!1016 = !DILocation(line: 363, column: 36, scope: !1007)
!1017 = !DILocalVariable(name: "pkg", scope: !1007, file: !162, line: 365, type: !204)
!1018 = !DILocation(line: 365, column: 19, scope: !1007)
!1019 = !DILocation(line: 367, column: 8, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1007, file: !162, line: 367, column: 7)
!1021 = !DILocation(line: 367, column: 7, scope: !1020)
!1022 = !DILocation(line: 367, column: 7, scope: !1007)
!1023 = !DILocation(line: 368, column: 14, scope: !1020)
!1024 = !DILocation(line: 368, column: 50, scope: !1020)
!1025 = !DILocation(line: 368, column: 61, scope: !1020)
!1026 = !DILocation(line: 368, column: 5, scope: !1027)
!1027 = !DILexicalBlockFile(scope: !1020, file: !162, discriminator: 1)
!1028 = !DILocation(line: 368, column: 5, scope: !1020)
!1029 = !DILocation(line: 370, column: 3, scope: !1007)
!1030 = !DILocation(line: 372, column: 9, scope: !1007)
!1031 = !DILocation(line: 372, column: 7, scope: !1007)
!1032 = !DILocation(line: 373, column: 11, scope: !1007)
!1033 = !DILocation(line: 373, column: 16, scope: !1007)
!1034 = !DILocation(line: 373, column: 3, scope: !1007)
!1035 = !DILocation(line: 376, column: 5, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1007, file: !162, line: 373, column: 24)
!1037 = !DILocation(line: 381, column: 30, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1036, file: !162, line: 381, column: 9)
!1039 = !DILocation(line: 381, column: 35, scope: !1038)
!1040 = !DILocation(line: 381, column: 68, scope: !1038)
!1041 = !DILocation(line: 381, column: 9, scope: !1038)
!1042 = !DILocation(line: 381, column: 9, scope: !1036)
!1043 = !DILocation(line: 382, column: 7, scope: !1038)
!1044 = !DILocation(line: 383, column: 12, scope: !1036)
!1045 = !DILocation(line: 385, column: 12, scope: !1036)
!1046 = !DILocation(line: 383, column: 5, scope: !1047)
!1047 = !DILexicalBlockFile(scope: !1036, file: !162, discriminator: 1)
!1048 = !DILocation(line: 386, column: 5, scope: !1036)
!1049 = !DILocation(line: 388, column: 12, scope: !1036)
!1050 = !DILocation(line: 389, column: 12, scope: !1036)
!1051 = !DILocation(line: 388, column: 5, scope: !1047)
!1052 = !DILocation(line: 390, column: 5, scope: !1036)
!1053 = !DILocation(line: 392, column: 1, scope: !1007)
!1054 = distinct !DISubprogram(name: "assertepoch", scope: !162, file: !162, line: 403, type: !163, isLocal: false, isDefinition: true, scopeLine: 404, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !167)
!1055 = !DILocalVariable(name: "argv", arg: 1, scope: !1054, file: !162, line: 403, type: !165)
!1056 = !DILocation(line: 403, column: 32, scope: !1054)
!1057 = !DILocalVariable(name: "version", scope: !1054, file: !162, line: 405, type: !243)
!1058 = !DILocation(line: 405, column: 23, scope: !1054)
!1059 = !DILocation(line: 407, column: 33, scope: !1054)
!1060 = !DILocation(line: 407, column: 49, scope: !1054)
!1061 = !DILocation(line: 407, column: 10, scope: !1062)
!1062 = !DILexicalBlockFile(scope: !1054, file: !162, discriminator: 1)
!1063 = !DILocation(line: 407, column: 3, scope: !1054)
!1064 = distinct !DISubprogram(name: "assertlongfilenames", scope: !162, file: !162, line: 411, type: !163, isLocal: false, isDefinition: true, scopeLine: 412, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !167)
!1065 = !DILocalVariable(name: "argv", arg: 1, scope: !1064, file: !162, line: 411, type: !165)
!1066 = !DILocation(line: 411, column: 40, scope: !1064)
!1067 = !DILocalVariable(name: "version", scope: !1064, file: !162, line: 413, type: !243)
!1068 = !DILocation(line: 413, column: 23, scope: !1064)
!1069 = !DILocation(line: 415, column: 33, scope: !1064)
!1070 = !DILocation(line: 415, column: 49, scope: !1064)
!1071 = !DILocation(line: 415, column: 10, scope: !1072)
!1072 = !DILexicalBlockFile(scope: !1064, file: !162, discriminator: 1)
!1073 = !DILocation(line: 415, column: 3, scope: !1064)
!1074 = distinct !DISubprogram(name: "assertmulticonrep", scope: !162, file: !162, line: 419, type: !163, isLocal: false, isDefinition: true, scopeLine: 420, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !167)
!1075 = !DILocalVariable(name: "argv", arg: 1, scope: !1074, file: !162, line: 419, type: !165)
!1076 = !DILocation(line: 419, column: 38, scope: !1074)
!1077 = !DILocalVariable(name: "version", scope: !1074, file: !162, line: 421, type: !243)
!1078 = !DILocation(line: 421, column: 23, scope: !1074)
!1079 = !DILocation(line: 423, column: 33, scope: !1074)
!1080 = !DILocation(line: 424, column: 33, scope: !1074)
!1081 = !DILocation(line: 423, column: 10, scope: !1074)
!1082 = !DILocation(line: 423, column: 3, scope: !1074)
!1083 = distinct !DISubprogram(name: "assertmultiarch", scope: !162, file: !162, line: 428, type: !163, isLocal: false, isDefinition: true, scopeLine: 429, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !167)
!1084 = !DILocalVariable(name: "argv", arg: 1, scope: !1083, file: !162, line: 428, type: !165)
!1085 = !DILocation(line: 428, column: 36, scope: !1083)
!1086 = !DILocalVariable(name: "version", scope: !1083, file: !162, line: 430, type: !243)
!1087 = !DILocation(line: 430, column: 23, scope: !1083)
!1088 = !DILocation(line: 432, column: 33, scope: !1083)
!1089 = !DILocation(line: 432, column: 49, scope: !1083)
!1090 = !DILocation(line: 432, column: 10, scope: !1091)
!1091 = !DILexicalBlockFile(scope: !1083, file: !162, discriminator: 1)
!1092 = !DILocation(line: 432, column: 3, scope: !1083)
!1093 = distinct !DISubprogram(name: "assertverprovides", scope: !162, file: !162, line: 436, type: !163, isLocal: false, isDefinition: true, scopeLine: 437, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !167)
!1094 = !DILocalVariable(name: "argv", arg: 1, scope: !1093, file: !162, line: 436, type: !165)
!1095 = !DILocation(line: 436, column: 38, scope: !1093)
!1096 = !DILocalVariable(name: "version", scope: !1093, file: !162, line: 438, type: !243)
!1097 = !DILocation(line: 438, column: 23, scope: !1093)
!1098 = !DILocation(line: 440, column: 33, scope: !1093)
!1099 = !DILocation(line: 440, column: 49, scope: !1093)
!1100 = !DILocation(line: 440, column: 10, scope: !1101)
!1101 = !DILexicalBlockFile(scope: !1093, file: !162, discriminator: 1)
!1102 = !DILocation(line: 440, column: 3, scope: !1093)
!1103 = !DILocalVariable(name: "argv", arg: 1, scope: !161, file: !162, line: 457, type: !165)
!1104 = !DILocation(line: 457, column: 34, scope: !161)
!1105 = !DILocalVariable(name: "iter", scope: !161, file: !162, line: 461, type: !631)
!1106 = !DILocation(line: 461, column: 25, scope: !161)
!1107 = !DILocalVariable(name: "pkg", scope: !161, file: !162, line: 462, type: !204)
!1108 = !DILocation(line: 462, column: 19, scope: !161)
!1109 = !DILocalVariable(name: "startpkg", scope: !161, file: !162, line: 462, type: !204)
!1110 = !DILocation(line: 462, column: 31, scope: !161)
!1111 = !DILocalVariable(name: "trypkg", scope: !161, file: !162, line: 462, type: !204)
!1112 = !DILocation(line: 462, column: 42, scope: !161)
!1113 = !DILocalVariable(name: "dep", scope: !161, file: !162, line: 463, type: !222)
!1114 = !DILocation(line: 463, column: 22, scope: !161)
!1115 = !DILocalVariable(name: "possi", scope: !161, file: !162, line: 464, type: !218)
!1116 = !DILocation(line: 464, column: 20, scope: !161)
!1117 = !DILocalVariable(name: "provider", scope: !161, file: !162, line: 464, type: !218)
!1118 = !DILocation(line: 464, column: 28, scope: !161)
!1119 = !DILocation(line: 466, column: 8, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !161, file: !162, line: 466, column: 7)
!1121 = !DILocation(line: 466, column: 7, scope: !1120)
!1122 = !DILocation(line: 466, column: 7, scope: !161)
!1123 = !DILocation(line: 467, column: 14, scope: !1120)
!1124 = !DILocation(line: 467, column: 50, scope: !1120)
!1125 = !DILocation(line: 467, column: 61, scope: !1120)
!1126 = !DILocation(line: 467, column: 5, scope: !1127)
!1127 = !DILexicalBlockFile(scope: !1120, file: !162, discriminator: 1)
!1128 = !DILocation(line: 467, column: 5, scope: !1120)
!1129 = !DILocation(line: 469, column: 3, scope: !161)
!1130 = !DILocation(line: 471, column: 3, scope: !161)
!1131 = !DILocation(line: 473, column: 7, scope: !161)
!1132 = !DILocation(line: 474, column: 10, scope: !161)
!1133 = !DILocation(line: 474, column: 8, scope: !161)
!1134 = !DILocation(line: 475, column: 3, scope: !161)
!1135 = !DILocation(line: 475, column: 11, scope: !1136)
!1136 = !DILexicalBlockFile(scope: !161, file: !162, discriminator: 1)
!1137 = !DILocation(line: 475, column: 15, scope: !1136)
!1138 = !DILocation(line: 475, column: 48, scope: !1139)
!1139 = !DILexicalBlockFile(scope: !161, file: !162, discriminator: 2)
!1140 = !DILocation(line: 475, column: 25, scope: !1139)
!1141 = !DILocation(line: 475, column: 23, scope: !1139)
!1142 = !DILocation(line: 475, column: 15, scope: !1139)
!1143 = !DILocation(line: 475, column: 3, scope: !1144)
!1144 = !DILexicalBlockFile(scope: !161, file: !162, discriminator: 3)
!1145 = !DILocation(line: 477, column: 9, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1147, file: !162, line: 477, column: 9)
!1147 = distinct !DILexicalBlock(scope: !161, file: !162, line: 475, column: 56)
!1148 = !DILocation(line: 477, column: 14, scope: !1146)
!1149 = !DILocation(line: 477, column: 19, scope: !1146)
!1150 = !DILocation(line: 477, column: 9, scope: !1147)
!1151 = !DILocation(line: 478, column: 7, scope: !1146)
!1152 = distinct !{!1152, !1134}
!1153 = !DILocation(line: 480, column: 10, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1147, file: !162, line: 480, column: 9)
!1155 = !DILocation(line: 480, column: 15, scope: !1154)
!1156 = !DILocation(line: 480, column: 9, scope: !1147)
!1157 = !DILocation(line: 481, column: 7, scope: !1154)
!1158 = !DILocation(line: 482, column: 5, scope: !1147)
!1159 = !DILocation(line: 482, column: 10, scope: !1147)
!1160 = !DILocation(line: 482, column: 22, scope: !1147)
!1161 = !DILocation(line: 482, column: 29, scope: !1147)
!1162 = !DILocation(line: 483, column: 15, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1147, file: !162, line: 483, column: 5)
!1164 = !DILocation(line: 483, column: 20, scope: !1163)
!1165 = !DILocation(line: 483, column: 30, scope: !1163)
!1166 = !DILocation(line: 483, column: 13, scope: !1163)
!1167 = !DILocation(line: 483, column: 10, scope: !1163)
!1168 = !DILocation(line: 483, column: 39, scope: !1169)
!1169 = !DILexicalBlockFile(scope: !1170, file: !162, discriminator: 1)
!1170 = distinct !DILexicalBlock(scope: !1163, file: !162, line: 483, column: 5)
!1171 = !DILocation(line: 483, column: 5, scope: !1169)
!1172 = !DILocation(line: 484, column: 11, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1174, file: !162, line: 484, column: 11)
!1174 = distinct !DILexicalBlock(scope: !1170, file: !162, line: 483, column: 60)
!1175 = !DILocation(line: 484, column: 16, scope: !1173)
!1176 = !DILocation(line: 484, column: 21, scope: !1173)
!1177 = !DILocation(line: 484, column: 11, scope: !1174)
!1178 = !DILocation(line: 484, column: 40, scope: !1179)
!1179 = !DILexicalBlockFile(scope: !1173, file: !162, discriminator: 1)
!1180 = !DILocation(line: 485, column: 19, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1174, file: !162, line: 485, column: 11)
!1182 = !DILocation(line: 485, column: 11, scope: !1181)
!1183 = !DILocation(line: 485, column: 11, scope: !1174)
!1184 = !DILocation(line: 486, column: 9, scope: !1181)
!1185 = !DILocation(line: 488, column: 7, scope: !1174)
!1186 = !DILocation(line: 483, column: 49, scope: !1187)
!1187 = !DILexicalBlockFile(scope: !1170, file: !162, discriminator: 2)
!1188 = !DILocation(line: 483, column: 54, scope: !1187)
!1189 = !DILocation(line: 483, column: 47, scope: !1187)
!1190 = !DILocation(line: 483, column: 5, scope: !1187)
!1191 = distinct !{!1191, !1192}
!1192 = !DILocation(line: 483, column: 5, scope: !1147)
!1193 = !DILocation(line: 490, column: 5, scope: !1147)
!1194 = !DILocation(line: 490, column: 10, scope: !1147)
!1195 = !DILocation(line: 490, column: 22, scope: !1147)
!1196 = !DILocation(line: 490, column: 29, scope: !1147)
!1197 = !DILocation(line: 475, column: 3, scope: !1198)
!1198 = !DILexicalBlockFile(scope: !161, file: !162, discriminator: 4)
!1199 = !DILocation(line: 493, column: 22, scope: !161)
!1200 = !DILocation(line: 493, column: 3, scope: !161)
!1201 = !DILocation(line: 495, column: 8, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !161, file: !162, line: 495, column: 7)
!1203 = !DILocation(line: 495, column: 7, scope: !161)
!1204 = !DILocation(line: 496, column: 5, scope: !1202)
!1205 = !DILocation(line: 497, column: 7, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !161, file: !162, line: 497, column: 7)
!1207 = !DILocation(line: 497, column: 11, scope: !1206)
!1208 = !DILocation(line: 497, column: 7, scope: !161)
!1209 = !DILocation(line: 498, column: 5, scope: !1206)
!1210 = !DILocation(line: 500, column: 13, scope: !161)
!1211 = !DILocation(line: 500, column: 11, scope: !161)
!1212 = !DILocation(line: 501, column: 3, scope: !161)
!1213 = !DILocation(line: 501, column: 8, scope: !161)
!1214 = !DILocation(line: 501, column: 20, scope: !161)
!1215 = !DILocation(line: 501, column: 27, scope: !161)
!1216 = !DILocation(line: 506, column: 3, scope: !161)
!1217 = distinct !{!1217, !1216}
!1218 = !DILocation(line: 508, column: 18, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1220, file: !162, line: 508, column: 5)
!1220 = distinct !DILexicalBlock(scope: !161, file: !162, line: 506, column: 6)
!1221 = !DILocation(line: 508, column: 23, scope: !1219)
!1222 = !DILocation(line: 508, column: 16, scope: !1219)
!1223 = !DILocation(line: 508, column: 33, scope: !1219)
!1224 = !DILocation(line: 508, column: 10, scope: !1219)
!1225 = !DILocation(line: 509, column: 11, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1219, file: !162, line: 508, column: 5)
!1227 = !DILocation(line: 509, column: 15, scope: !1226)
!1228 = !DILocation(line: 509, column: 18, scope: !1229)
!1229 = !DILexicalBlockFile(scope: !1226, file: !162, discriminator: 1)
!1230 = !DILocation(line: 509, column: 15, scope: !1229)
!1231 = !DILocation(line: 508, column: 5, scope: !1232)
!1232 = !DILexicalBlockFile(scope: !1219, file: !162, discriminator: 1)
!1233 = !DILocalVariable(name: "possi_iter", scope: !1234, file: !162, line: 511, type: !1235)
!1234 = distinct !DILexicalBlock(scope: !1226, file: !162, line: 510, column: 29)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64, align: 64)
!1236 = !DICompositeType(tag: DW_TAG_structure_type, name: "deppossi_pkg_iterator", file: !74, line: 346, flags: DIFlagFwdDecl)
!1237 = !DILocation(line: 511, column: 37, scope: !1234)
!1238 = !DILocation(line: 513, column: 42, scope: !1234)
!1239 = !DILocation(line: 513, column: 20, scope: !1234)
!1240 = !DILocation(line: 513, column: 18, scope: !1234)
!1241 = !DILocation(line: 514, column: 7, scope: !1234)
!1242 = !DILocation(line: 514, column: 15, scope: !1243)
!1243 = !DILexicalBlockFile(scope: !1234, file: !162, discriminator: 1)
!1244 = !DILocation(line: 514, column: 19, scope: !1243)
!1245 = !DILocation(line: 514, column: 55, scope: !1246)
!1246 = !DILexicalBlockFile(scope: !1234, file: !162, discriminator: 2)
!1247 = !DILocation(line: 514, column: 32, scope: !1246)
!1248 = !DILocation(line: 514, column: 30, scope: !1246)
!1249 = !DILocation(line: 514, column: 19, scope: !1246)
!1250 = !DILocation(line: 514, column: 7, scope: !1251)
!1251 = !DILexicalBlockFile(scope: !1234, file: !162, discriminator: 3)
!1252 = !DILocation(line: 515, column: 13, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1254, file: !162, line: 515, column: 13)
!1254 = distinct !DILexicalBlock(scope: !1234, file: !162, line: 514, column: 69)
!1255 = !DILocation(line: 515, column: 21, scope: !1253)
!1256 = !DILocation(line: 515, column: 30, scope: !1253)
!1257 = !DILocation(line: 516, column: 13, scope: !1253)
!1258 = !DILocation(line: 516, column: 21, scope: !1253)
!1259 = !DILocation(line: 516, column: 33, scope: !1253)
!1260 = !DILocation(line: 516, column: 40, scope: !1253)
!1261 = !DILocation(line: 516, column: 61, scope: !1253)
!1262 = !DILocation(line: 517, column: 31, scope: !1253)
!1263 = !DILocation(line: 517, column: 39, scope: !1253)
!1264 = !DILocation(line: 517, column: 50, scope: !1253)
!1265 = !DILocation(line: 517, column: 13, scope: !1253)
!1266 = !DILocation(line: 515, column: 13, scope: !1267)
!1267 = !DILexicalBlockFile(scope: !1254, file: !162, discriminator: 1)
!1268 = !DILocation(line: 518, column: 17, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1253, file: !162, line: 517, column: 58)
!1270 = !DILocation(line: 518, column: 15, scope: !1269)
!1271 = !DILocation(line: 519, column: 11, scope: !1269)
!1272 = !DILocation(line: 521, column: 25, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1254, file: !162, line: 521, column: 9)
!1274 = !DILocation(line: 521, column: 32, scope: !1273)
!1275 = !DILocation(line: 521, column: 36, scope: !1273)
!1276 = !DILocation(line: 521, column: 45, scope: !1273)
!1277 = !DILocation(line: 521, column: 23, scope: !1273)
!1278 = !DILocation(line: 521, column: 14, scope: !1273)
!1279 = !DILocation(line: 522, column: 15, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1273, file: !162, line: 521, column: 9)
!1281 = !DILocation(line: 522, column: 19, scope: !1280)
!1282 = !DILocation(line: 522, column: 22, scope: !1283)
!1283 = !DILexicalBlockFile(scope: !1280, file: !162, discriminator: 1)
!1284 = !DILocation(line: 522, column: 19, scope: !1283)
!1285 = !DILocation(line: 521, column: 9, scope: !1286)
!1286 = !DILexicalBlockFile(scope: !1273, file: !162, discriminator: 1)
!1287 = !DILocation(line: 524, column: 15, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1289, file: !162, line: 524, column: 15)
!1289 = distinct !DILexicalBlock(scope: !1280, file: !162, line: 523, column: 41)
!1290 = !DILocation(line: 524, column: 25, scope: !1288)
!1291 = !DILocation(line: 524, column: 29, scope: !1288)
!1292 = !DILocation(line: 524, column: 34, scope: !1288)
!1293 = !DILocation(line: 524, column: 15, scope: !1289)
!1294 = !DILocation(line: 525, column: 13, scope: !1288)
!1295 = !DILocation(line: 526, column: 47, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1289, file: !162, line: 526, column: 15)
!1297 = !DILocation(line: 526, column: 54, scope: !1296)
!1298 = !DILocation(line: 526, column: 16, scope: !1296)
!1299 = !DILocation(line: 526, column: 15, scope: !1289)
!1300 = !DILocation(line: 527, column: 13, scope: !1296)
!1301 = !DILocation(line: 528, column: 20, scope: !1289)
!1302 = !DILocation(line: 528, column: 30, scope: !1289)
!1303 = !DILocation(line: 528, column: 34, scope: !1289)
!1304 = !DILocation(line: 528, column: 18, scope: !1289)
!1305 = !DILocation(line: 529, column: 16, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1289, file: !162, line: 529, column: 15)
!1307 = !DILocation(line: 529, column: 24, scope: !1306)
!1308 = !DILocation(line: 529, column: 15, scope: !1289)
!1309 = !DILocation(line: 530, column: 13, scope: !1306)
!1310 = !DILocation(line: 531, column: 15, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1289, file: !162, line: 531, column: 15)
!1312 = !DILocation(line: 531, column: 23, scope: !1311)
!1313 = !DILocation(line: 531, column: 35, scope: !1311)
!1314 = !DILocation(line: 531, column: 42, scope: !1311)
!1315 = !DILocation(line: 531, column: 15, scope: !1289)
!1316 = !DILocation(line: 532, column: 19, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1311, file: !162, line: 531, column: 64)
!1318 = !DILocation(line: 532, column: 17, scope: !1317)
!1319 = !DILocation(line: 533, column: 13, scope: !1317)
!1320 = !DILocation(line: 535, column: 9, scope: !1289)
!1321 = !DILocation(line: 523, column: 25, scope: !1280)
!1322 = !DILocation(line: 523, column: 35, scope: !1280)
!1323 = !DILocation(line: 523, column: 23, scope: !1280)
!1324 = !DILocation(line: 521, column: 9, scope: !1325)
!1325 = !DILexicalBlockFile(scope: !1280, file: !162, discriminator: 2)
!1326 = distinct !{!1326, !1327}
!1327 = !DILocation(line: 521, column: 9, scope: !1254)
!1328 = !DILocation(line: 514, column: 7, scope: !1329)
!1329 = !DILexicalBlockFile(scope: !1234, file: !162, discriminator: 4)
!1330 = distinct !{!1330, !1241}
!1331 = !DILocation(line: 537, column: 30, scope: !1234)
!1332 = !DILocation(line: 537, column: 7, scope: !1234)
!1333 = !DILocation(line: 538, column: 5, scope: !1234)
!1334 = !DILocation(line: 510, column: 16, scope: !1226)
!1335 = !DILocation(line: 510, column: 23, scope: !1226)
!1336 = !DILocation(line: 510, column: 15, scope: !1226)
!1337 = !DILocation(line: 508, column: 5, scope: !1338)
!1338 = !DILexicalBlockFile(scope: !1226, file: !162, discriminator: 2)
!1339 = distinct !{!1339, !1340}
!1340 = !DILocation(line: 508, column: 5, scope: !1220)
!1341 = !DILocation(line: 539, column: 10, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1220, file: !162, line: 539, column: 9)
!1343 = !DILocation(line: 539, column: 9, scope: !1220)
!1344 = !DILocation(line: 540, column: 7, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1342, file: !162, line: 539, column: 15)
!1346 = !DILocation(line: 541, column: 26, scope: !1345)
!1347 = !DILocation(line: 541, column: 7, scope: !1345)
!1348 = !DILocation(line: 542, column: 7, scope: !1345)
!1349 = !DILocation(line: 543, column: 14, scope: !1345)
!1350 = !DILocation(line: 543, column: 76, scope: !1345)
!1351 = !DILocation(line: 543, column: 7, scope: !1352)
!1352 = !DILexicalBlockFile(scope: !1345, file: !162, discriminator: 1)
!1353 = !DILocation(line: 544, column: 14, scope: !1345)
!1354 = !DILocation(line: 545, column: 26, scope: !1345)
!1355 = !DILocation(line: 545, column: 31, scope: !1345)
!1356 = !DILocation(line: 545, column: 36, scope: !1345)
!1357 = !DILocation(line: 545, column: 41, scope: !1345)
!1358 = !DILocation(line: 545, column: 45, scope: !1345)
!1359 = !DILocation(line: 545, column: 14, scope: !1345)
!1360 = !DILocation(line: 546, column: 26, scope: !1345)
!1361 = !DILocation(line: 546, column: 37, scope: !1345)
!1362 = !DILocation(line: 546, column: 47, scope: !1345)
!1363 = !DILocation(line: 546, column: 14, scope: !1345)
!1364 = !DILocation(line: 544, column: 7, scope: !1352)
!1365 = !DILocation(line: 544, column: 7, scope: !1345)
!1366 = !DILocation(line: 548, column: 5, scope: !1220)
!1367 = !DILocation(line: 548, column: 10, scope: !1220)
!1368 = !DILocation(line: 548, column: 22, scope: !1220)
!1369 = !DILocation(line: 548, column: 29, scope: !1220)
!1370 = !DILocation(line: 549, column: 15, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1220, file: !162, line: 549, column: 5)
!1372 = !DILocation(line: 549, column: 20, scope: !1371)
!1373 = !DILocation(line: 549, column: 30, scope: !1371)
!1374 = !DILocation(line: 549, column: 13, scope: !1371)
!1375 = !DILocation(line: 549, column: 10, scope: !1371)
!1376 = !DILocation(line: 549, column: 39, scope: !1377)
!1377 = !DILexicalBlockFile(scope: !1378, file: !162, discriminator: 1)
!1378 = distinct !DILexicalBlock(scope: !1371, file: !162, line: 549, column: 5)
!1379 = !DILocation(line: 549, column: 5, scope: !1377)
!1380 = !DILocation(line: 550, column: 11, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1382, file: !162, line: 550, column: 11)
!1382 = distinct !DILexicalBlock(scope: !1378, file: !162, line: 549, column: 60)
!1383 = !DILocation(line: 550, column: 16, scope: !1381)
!1384 = !DILocation(line: 550, column: 21, scope: !1381)
!1385 = !DILocation(line: 550, column: 11, scope: !1382)
!1386 = !DILocation(line: 550, column: 40, scope: !1387)
!1387 = !DILexicalBlockFile(scope: !1381, file: !162, discriminator: 1)
!1388 = !DILocation(line: 551, column: 19, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1382, file: !162, line: 551, column: 11)
!1390 = !DILocation(line: 551, column: 11, scope: !1389)
!1391 = !DILocation(line: 551, column: 11, scope: !1382)
!1392 = !DILocation(line: 552, column: 9, scope: !1389)
!1393 = !DILocation(line: 554, column: 7, scope: !1382)
!1394 = !DILocation(line: 549, column: 49, scope: !1395)
!1395 = !DILexicalBlockFile(scope: !1378, file: !162, discriminator: 2)
!1396 = !DILocation(line: 549, column: 54, scope: !1395)
!1397 = !DILocation(line: 549, column: 47, scope: !1395)
!1398 = !DILocation(line: 549, column: 5, scope: !1395)
!1399 = distinct !{!1399, !1400}
!1400 = !DILocation(line: 549, column: 5, scope: !1220)
!1401 = !DILocation(line: 556, column: 3, scope: !1220)
!1402 = !DILocation(line: 556, column: 12, scope: !1136)
!1403 = !DILocation(line: 556, column: 3, scope: !1136)
!1404 = !DILocation(line: 559, column: 14, scope: !161)
!1405 = !DILocation(line: 559, column: 22, scope: !161)
!1406 = !DILocation(line: 559, column: 52, scope: !161)
!1407 = !DILocation(line: 559, column: 58, scope: !161)
!1408 = !DILocation(line: 559, column: 63, scope: !161)
!1409 = !DILocation(line: 559, column: 3, scope: !1136)
!1410 = !DILocation(line: 561, column: 11, scope: !161)
!1411 = !DILocation(line: 561, column: 19, scope: !161)
!1412 = !DILocation(line: 561, column: 3, scope: !1136)
!1413 = !DILocation(line: 563, column: 3, scope: !161)
!1414 = !DILocation(line: 564, column: 1, scope: !161)
!1415 = distinct !DISubprogram(name: "printarch", scope: !162, file: !162, line: 567, type: !163, isLocal: false, isDefinition: true, scopeLine: 568, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !167)
!1416 = !DILocalVariable(name: "argv", arg: 1, scope: !1415, file: !162, line: 567, type: !165)
!1417 = !DILocation(line: 567, column: 30, scope: !1415)
!1418 = !DILocation(line: 569, column: 8, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1415, file: !162, line: 569, column: 7)
!1420 = !DILocation(line: 569, column: 7, scope: !1419)
!1421 = !DILocation(line: 569, column: 7, scope: !1415)
!1422 = !DILocation(line: 570, column: 14, scope: !1419)
!1423 = !DILocation(line: 570, column: 50, scope: !1419)
!1424 = !DILocation(line: 570, column: 61, scope: !1419)
!1425 = !DILocation(line: 570, column: 5, scope: !1426)
!1426 = !DILexicalBlockFile(scope: !1419, file: !162, discriminator: 1)
!1427 = !DILocation(line: 570, column: 5, scope: !1419)
!1428 = !DILocation(line: 572, column: 18, scope: !1415)
!1429 = !DILocation(line: 572, column: 51, scope: !1415)
!1430 = !DILocation(line: 572, column: 3, scope: !1431)
!1431 = !DILexicalBlockFile(scope: !1415, file: !162, discriminator: 1)
!1432 = !DILocation(line: 574, column: 11, scope: !1415)
!1433 = !DILocation(line: 574, column: 19, scope: !1415)
!1434 = !DILocation(line: 574, column: 3, scope: !1431)
!1435 = !DILocation(line: 576, column: 3, scope: !1415)
!1436 = distinct !DISubprogram(name: "print_foreign_arches", scope: !162, file: !162, line: 580, type: !163, isLocal: false, isDefinition: true, scopeLine: 581, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !167)
!1437 = !DILocalVariable(name: "argv", arg: 1, scope: !1436, file: !162, line: 580, type: !165)
!1438 = !DILocation(line: 580, column: 41, scope: !1436)
!1439 = !DILocalVariable(name: "arch", scope: !1436, file: !162, line: 582, type: !239)
!1440 = !DILocation(line: 582, column: 21, scope: !1436)
!1441 = !DILocation(line: 584, column: 8, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1436, file: !162, line: 584, column: 7)
!1443 = !DILocation(line: 584, column: 7, scope: !1442)
!1444 = !DILocation(line: 584, column: 7, scope: !1436)
!1445 = !DILocation(line: 585, column: 14, scope: !1442)
!1446 = !DILocation(line: 585, column: 50, scope: !1442)
!1447 = !DILocation(line: 585, column: 61, scope: !1442)
!1448 = !DILocation(line: 585, column: 5, scope: !1449)
!1449 = !DILexicalBlockFile(scope: !1442, file: !162, discriminator: 1)
!1450 = !DILocation(line: 585, column: 5, scope: !1442)
!1451 = !DILocation(line: 587, column: 3, scope: !1436)
!1452 = !DILocation(line: 589, column: 15, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1436, file: !162, line: 589, column: 3)
!1454 = !DILocation(line: 589, column: 13, scope: !1453)
!1455 = !DILocation(line: 589, column: 8, scope: !1453)
!1456 = !DILocation(line: 589, column: 37, scope: !1457)
!1457 = !DILexicalBlockFile(scope: !1458, file: !162, discriminator: 1)
!1458 = distinct !DILexicalBlock(scope: !1453, file: !162, line: 589, column: 3)
!1459 = !DILocation(line: 589, column: 3, scope: !1457)
!1460 = !DILocation(line: 590, column: 9, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1462, file: !162, line: 590, column: 9)
!1462 = distinct !DILexicalBlock(scope: !1458, file: !162, line: 589, column: 62)
!1463 = !DILocation(line: 590, column: 15, scope: !1461)
!1464 = !DILocation(line: 590, column: 20, scope: !1461)
!1465 = !DILocation(line: 590, column: 9, scope: !1462)
!1466 = !DILocation(line: 591, column: 7, scope: !1461)
!1467 = !DILocation(line: 593, column: 20, scope: !1462)
!1468 = !DILocation(line: 593, column: 26, scope: !1462)
!1469 = !DILocation(line: 593, column: 5, scope: !1462)
!1470 = !DILocation(line: 594, column: 3, scope: !1462)
!1471 = !DILocation(line: 589, column: 50, scope: !1472)
!1472 = !DILexicalBlockFile(scope: !1458, file: !162, discriminator: 2)
!1473 = !DILocation(line: 589, column: 56, scope: !1472)
!1474 = !DILocation(line: 589, column: 48, scope: !1472)
!1475 = !DILocation(line: 589, column: 3, scope: !1472)
!1476 = distinct !{!1476, !1477}
!1477 = !DILocation(line: 589, column: 3, scope: !1436)
!1478 = !DILocation(line: 596, column: 11, scope: !1436)
!1479 = !DILocation(line: 596, column: 19, scope: !1436)
!1480 = !DILocation(line: 596, column: 3, scope: !1481)
!1481 = !DILexicalBlockFile(scope: !1436, file: !162, discriminator: 1)
!1482 = !DILocation(line: 598, column: 3, scope: !1436)
!1483 = distinct !DISubprogram(name: "validate_pkgname", scope: !162, file: !162, line: 602, type: !163, isLocal: false, isDefinition: true, scopeLine: 603, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !167)
!1484 = !DILocalVariable(name: "argv", arg: 1, scope: !1483, file: !162, line: 602, type: !165)
!1485 = !DILocation(line: 602, column: 37, scope: !1483)
!1486 = !DILocalVariable(name: "emsg", scope: !1483, file: !162, line: 604, type: !154)
!1487 = !DILocation(line: 604, column: 15, scope: !1483)
!1488 = !DILocation(line: 606, column: 8, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1483, file: !162, line: 606, column: 7)
!1490 = !DILocation(line: 606, column: 16, scope: !1489)
!1491 = !DILocation(line: 606, column: 19, scope: !1492)
!1492 = !DILexicalBlockFile(scope: !1489, file: !162, discriminator: 1)
!1493 = !DILocation(line: 606, column: 7, scope: !1492)
!1494 = !DILocation(line: 607, column: 14, scope: !1489)
!1495 = !DILocation(line: 607, column: 60, scope: !1489)
!1496 = !DILocation(line: 607, column: 71, scope: !1489)
!1497 = !DILocation(line: 607, column: 5, scope: !1492)
!1498 = !DILocation(line: 607, column: 5, scope: !1489)
!1499 = !DILocation(line: 609, column: 30, scope: !1483)
!1500 = !DILocation(line: 609, column: 10, scope: !1483)
!1501 = !DILocation(line: 609, column: 8, scope: !1483)
!1502 = !DILocation(line: 610, column: 7, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1483, file: !162, line: 610, column: 7)
!1504 = !DILocation(line: 610, column: 7, scope: !1483)
!1505 = !DILocation(line: 611, column: 12, scope: !1503)
!1506 = !DILocation(line: 611, column: 57, scope: !1503)
!1507 = !DILocation(line: 611, column: 66, scope: !1503)
!1508 = !DILocation(line: 611, column: 5, scope: !1509)
!1509 = !DILexicalBlockFile(scope: !1503, file: !162, discriminator: 1)
!1510 = !DILocation(line: 611, column: 5, scope: !1503)
!1511 = !DILocation(line: 613, column: 3, scope: !1483)
!1512 = distinct !DISubprogram(name: "validate_trigname", scope: !162, file: !162, line: 617, type: !163, isLocal: false, isDefinition: true, scopeLine: 618, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !167)
!1513 = !DILocalVariable(name: "argv", arg: 1, scope: !1512, file: !162, line: 617, type: !165)
!1514 = !DILocation(line: 617, column: 38, scope: !1512)
!1515 = !DILocalVariable(name: "emsg", scope: !1512, file: !162, line: 619, type: !154)
!1516 = !DILocation(line: 619, column: 15, scope: !1512)
!1517 = !DILocation(line: 621, column: 8, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1512, file: !162, line: 621, column: 7)
!1519 = !DILocation(line: 621, column: 16, scope: !1518)
!1520 = !DILocation(line: 621, column: 19, scope: !1521)
!1521 = !DILexicalBlockFile(scope: !1518, file: !162, discriminator: 1)
!1522 = !DILocation(line: 621, column: 7, scope: !1521)
!1523 = !DILocation(line: 622, column: 14, scope: !1518)
!1524 = !DILocation(line: 622, column: 61, scope: !1518)
!1525 = !DILocation(line: 622, column: 72, scope: !1518)
!1526 = !DILocation(line: 622, column: 5, scope: !1521)
!1527 = !DILocation(line: 622, column: 5, scope: !1518)
!1528 = !DILocation(line: 624, column: 31, scope: !1512)
!1529 = !DILocation(line: 624, column: 10, scope: !1512)
!1530 = !DILocation(line: 624, column: 8, scope: !1512)
!1531 = !DILocation(line: 625, column: 7, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1512, file: !162, line: 625, column: 7)
!1533 = !DILocation(line: 625, column: 7, scope: !1512)
!1534 = !DILocation(line: 626, column: 12, scope: !1532)
!1535 = !DILocation(line: 626, column: 57, scope: !1532)
!1536 = !DILocation(line: 626, column: 66, scope: !1532)
!1537 = !DILocation(line: 626, column: 5, scope: !1538)
!1538 = !DILexicalBlockFile(scope: !1532, file: !162, discriminator: 1)
!1539 = !DILocation(line: 626, column: 5, scope: !1532)
!1540 = !DILocation(line: 628, column: 3, scope: !1512)
!1541 = distinct !DISubprogram(name: "validate_archname", scope: !162, file: !162, line: 632, type: !163, isLocal: false, isDefinition: true, scopeLine: 633, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !167)
!1542 = !DILocalVariable(name: "argv", arg: 1, scope: !1541, file: !162, line: 632, type: !165)
!1543 = !DILocation(line: 632, column: 38, scope: !1541)
!1544 = !DILocalVariable(name: "emsg", scope: !1541, file: !162, line: 634, type: !154)
!1545 = !DILocation(line: 634, column: 15, scope: !1541)
!1546 = !DILocation(line: 636, column: 8, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1541, file: !162, line: 636, column: 7)
!1548 = !DILocation(line: 636, column: 16, scope: !1547)
!1549 = !DILocation(line: 636, column: 19, scope: !1550)
!1550 = !DILexicalBlockFile(scope: !1547, file: !162, discriminator: 1)
!1551 = !DILocation(line: 636, column: 7, scope: !1550)
!1552 = !DILocation(line: 637, column: 14, scope: !1547)
!1553 = !DILocation(line: 637, column: 61, scope: !1547)
!1554 = !DILocation(line: 637, column: 72, scope: !1547)
!1555 = !DILocation(line: 637, column: 5, scope: !1550)
!1556 = !DILocation(line: 637, column: 5, scope: !1547)
!1557 = !DILocation(line: 639, column: 36, scope: !1541)
!1558 = !DILocation(line: 639, column: 10, scope: !1541)
!1559 = !DILocation(line: 639, column: 8, scope: !1541)
!1560 = !DILocation(line: 640, column: 7, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1541, file: !162, line: 640, column: 7)
!1562 = !DILocation(line: 640, column: 7, scope: !1541)
!1563 = !DILocation(line: 641, column: 12, scope: !1561)
!1564 = !DILocation(line: 641, column: 62, scope: !1561)
!1565 = !DILocation(line: 641, column: 71, scope: !1561)
!1566 = !DILocation(line: 641, column: 5, scope: !1567)
!1567 = !DILexicalBlockFile(scope: !1561, file: !162, discriminator: 1)
!1568 = !DILocation(line: 641, column: 5, scope: !1561)
!1569 = !DILocation(line: 643, column: 3, scope: !1541)
!1570 = distinct !DISubprogram(name: "validate_version", scope: !162, file: !162, line: 647, type: !163, isLocal: false, isDefinition: true, scopeLine: 648, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !167)
!1571 = !DILocalVariable(name: "argv", arg: 1, scope: !1570, file: !162, line: 647, type: !165)
!1572 = !DILocation(line: 647, column: 37, scope: !1570)
!1573 = !DILocalVariable(name: "version", scope: !1570, file: !162, line: 649, type: !243)
!1574 = !DILocation(line: 649, column: 23, scope: !1570)
!1575 = !DILocalVariable(name: "err", scope: !1570, file: !162, line: 650, type: !1576)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_error", file: !126, line: 42, size: 128, align: 64, elements: !1577)
!1577 = !{!1578, !1579, !1580}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1576, file: !126, line: 43, baseType: !125, size: 32, align: 32)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "syserrno", scope: !1576, file: !126, line: 45, baseType: !158, size: 32, align: 32, offset: 32)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1576, file: !126, line: 46, baseType: !177, size: 64, align: 64, offset: 64)
!1581 = !DILocation(line: 650, column: 21, scope: !1570)
!1582 = !DILocation(line: 652, column: 8, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1570, file: !162, line: 652, column: 7)
!1584 = !DILocation(line: 652, column: 16, scope: !1583)
!1585 = !DILocation(line: 652, column: 19, scope: !1586)
!1586 = !DILexicalBlockFile(scope: !1583, file: !162, discriminator: 1)
!1587 = !DILocation(line: 652, column: 7, scope: !1586)
!1588 = !DILocation(line: 653, column: 14, scope: !1583)
!1589 = !DILocation(line: 653, column: 60, scope: !1583)
!1590 = !DILocation(line: 653, column: 71, scope: !1583)
!1591 = !DILocation(line: 653, column: 5, scope: !1586)
!1592 = !DILocation(line: 653, column: 5, scope: !1583)
!1593 = !DILocation(line: 655, column: 30, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1570, file: !162, line: 655, column: 7)
!1595 = !DILocation(line: 655, column: 7, scope: !1594)
!1596 = !DILocation(line: 655, column: 45, scope: !1594)
!1597 = !DILocation(line: 655, column: 7, scope: !1570)
!1598 = !DILocation(line: 656, column: 28, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1594, file: !162, line: 655, column: 50)
!1600 = !DILocation(line: 656, column: 68, scope: !1599)
!1601 = !DILocation(line: 656, column: 5, scope: !1602)
!1602 = !DILexicalBlockFile(scope: !1599, file: !162, discriminator: 1)
!1603 = !DILocation(line: 657, column: 5, scope: !1599)
!1604 = !DILocation(line: 659, column: 5, scope: !1599)
!1605 = !DILocation(line: 662, column: 3, scope: !1570)
!1606 = !DILocation(line: 663, column: 1, scope: !1570)
!1607 = !DILocalVariable(name: "argv", arg: 1, scope: !179, file: !162, line: 666, type: !165)
!1608 = !DILocation(line: 666, column: 32, scope: !179)
!1609 = !DILocalVariable(name: "rip", scope: !179, file: !162, line: 702, type: !1610)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64, align: 64)
!1611 = !DILocation(line: 702, column: 30, scope: !179)
!1612 = !DILocalVariable(name: "a", scope: !179, file: !162, line: 703, type: !243)
!1613 = !DILocation(line: 703, column: 23, scope: !179)
!1614 = !DILocalVariable(name: "b", scope: !179, file: !162, line: 703, type: !243)
!1615 = !DILocation(line: 703, column: 26, scope: !179)
!1616 = !DILocalVariable(name: "err", scope: !179, file: !162, line: 704, type: !1576)
!1617 = !DILocation(line: 704, column: 21, scope: !179)
!1618 = !DILocalVariable(name: "rc", scope: !179, file: !162, line: 705, type: !158)
!1619 = !DILocation(line: 705, column: 7, scope: !179)
!1620 = !DILocation(line: 707, column: 8, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !179, file: !162, line: 707, column: 7)
!1622 = !DILocation(line: 707, column: 16, scope: !1621)
!1623 = !DILocation(line: 707, column: 20, scope: !1624)
!1624 = !DILexicalBlockFile(scope: !1621, file: !162, discriminator: 1)
!1625 = !DILocation(line: 707, column: 28, scope: !1624)
!1626 = !DILocation(line: 707, column: 32, scope: !1627)
!1627 = !DILexicalBlockFile(scope: !1621, file: !162, discriminator: 2)
!1628 = !DILocation(line: 707, column: 40, scope: !1627)
!1629 = !DILocation(line: 707, column: 43, scope: !1630)
!1630 = !DILexicalBlockFile(scope: !1621, file: !162, discriminator: 3)
!1631 = !DILocation(line: 707, column: 7, scope: !1630)
!1632 = !DILocation(line: 708, column: 14, scope: !1621)
!1633 = !DILocation(line: 708, column: 5, scope: !1624)
!1634 = !DILocation(line: 708, column: 5, scope: !1621)
!1635 = !DILocation(line: 711, column: 11, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !179, file: !162, line: 711, column: 3)
!1637 = !DILocation(line: 711, column: 8, scope: !1636)
!1638 = !DILocation(line: 711, column: 27, scope: !1639)
!1639 = !DILexicalBlockFile(scope: !1640, file: !162, discriminator: 1)
!1640 = distinct !DILexicalBlock(scope: !1636, file: !162, line: 711, column: 3)
!1641 = !DILocation(line: 711, column: 32, scope: !1639)
!1642 = !DILocation(line: 711, column: 39, scope: !1639)
!1643 = !DILocation(line: 711, column: 49, scope: !1644)
!1644 = !DILexicalBlockFile(scope: !1640, file: !162, discriminator: 2)
!1645 = !DILocation(line: 711, column: 54, scope: !1644)
!1646 = !DILocation(line: 711, column: 61, scope: !1644)
!1647 = !DILocation(line: 711, column: 42, scope: !1644)
!1648 = !DILocation(line: 711, column: 39, scope: !1644)
!1649 = !DILocation(line: 711, column: 3, scope: !1650)
!1650 = !DILexicalBlockFile(scope: !1636, file: !162, discriminator: 3)
!1651 = !DILocation(line: 711, column: 3, scope: !1652)
!1652 = !DILexicalBlockFile(scope: !1636, file: !162, discriminator: 4)
!1653 = !DILocation(line: 711, column: 74, scope: !1654)
!1654 = !DILexicalBlockFile(scope: !1640, file: !162, discriminator: 5)
!1655 = !DILocation(line: 711, column: 3, scope: !1654)
!1656 = distinct !{!1656, !1657}
!1657 = !DILocation(line: 711, column: 3, scope: !179)
!1658 = !DILocation(line: 713, column: 8, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !179, file: !162, line: 713, column: 7)
!1660 = !DILocation(line: 713, column: 13, scope: !1659)
!1661 = !DILocation(line: 713, column: 7, scope: !179)
!1662 = !DILocation(line: 713, column: 30, scope: !1663)
!1663 = !DILexicalBlockFile(scope: !1659, file: !162, discriminator: 1)
!1664 = !DILocation(line: 713, column: 21, scope: !1665)
!1665 = !DILexicalBlockFile(scope: !1663, file: !162, discriminator: 2)
!1666 = !DILocation(line: 713, column: 21, scope: !1663)
!1667 = !DILocation(line: 715, column: 7, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !179, file: !162, line: 715, column: 7)
!1669 = !DILocation(line: 715, column: 12, scope: !1668)
!1670 = !DILocation(line: 715, column: 7, scope: !179)
!1671 = !DILocation(line: 716, column: 13, scope: !1668)
!1672 = !DILocation(line: 717, column: 13, scope: !1668)
!1673 = !DILocation(line: 717, column: 24, scope: !1668)
!1674 = !DILocation(line: 717, column: 31, scope: !1668)
!1675 = !DILocation(line: 717, column: 36, scope: !1668)
!1676 = !DILocation(line: 716, column: 5, scope: !1677)
!1677 = !DILexicalBlockFile(scope: !1668, file: !162, discriminator: 1)
!1678 = !DILocation(line: 716, column: 5, scope: !1668)
!1679 = !DILocation(line: 719, column: 8, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !179, file: !162, line: 719, column: 7)
!1681 = !DILocation(line: 719, column: 7, scope: !1680)
!1682 = !DILocation(line: 719, column: 16, scope: !1680)
!1683 = !DILocation(line: 719, column: 26, scope: !1684)
!1684 = !DILexicalBlockFile(scope: !1680, file: !162, discriminator: 1)
!1685 = !DILocation(line: 719, column: 19, scope: !1684)
!1686 = !DILocation(line: 719, column: 7, scope: !1684)
!1687 = !DILocation(line: 720, column: 26, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1689, file: !162, line: 720, column: 9)
!1689 = distinct !DILexicalBlock(scope: !1680, file: !162, line: 719, column: 48)
!1690 = !DILocation(line: 720, column: 9, scope: !1688)
!1691 = !DILocation(line: 720, column: 41, scope: !1688)
!1692 = !DILocation(line: 720, column: 9, scope: !1689)
!1693 = !DILocation(line: 721, column: 30, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1688, file: !162, line: 720, column: 46)
!1695 = !DILocation(line: 721, column: 70, scope: !1694)
!1696 = !DILocation(line: 721, column: 7, scope: !1697)
!1697 = !DILexicalBlockFile(scope: !1694, file: !162, discriminator: 1)
!1698 = !DILocation(line: 722, column: 7, scope: !1694)
!1699 = !DILocation(line: 723, column: 5, scope: !1694)
!1700 = !DILocation(line: 724, column: 3, scope: !1689)
!1701 = !DILocation(line: 725, column: 5, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1680, file: !162, line: 724, column: 10)
!1703 = !DILocation(line: 727, column: 8, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !179, file: !162, line: 727, column: 7)
!1705 = !DILocation(line: 727, column: 7, scope: !1704)
!1706 = !DILocation(line: 727, column: 16, scope: !1704)
!1707 = !DILocation(line: 727, column: 26, scope: !1708)
!1708 = !DILexicalBlockFile(scope: !1704, file: !162, discriminator: 1)
!1709 = !DILocation(line: 727, column: 19, scope: !1708)
!1710 = !DILocation(line: 727, column: 7, scope: !1708)
!1711 = !DILocation(line: 728, column: 26, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1713, file: !162, line: 728, column: 9)
!1713 = distinct !DILexicalBlock(scope: !1704, file: !162, line: 727, column: 48)
!1714 = !DILocation(line: 728, column: 9, scope: !1712)
!1715 = !DILocation(line: 728, column: 41, scope: !1712)
!1716 = !DILocation(line: 728, column: 9, scope: !1713)
!1717 = !DILocation(line: 729, column: 30, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1712, file: !162, line: 728, column: 46)
!1719 = !DILocation(line: 729, column: 70, scope: !1718)
!1720 = !DILocation(line: 729, column: 7, scope: !1721)
!1721 = !DILexicalBlockFile(scope: !1718, file: !162, discriminator: 1)
!1722 = !DILocation(line: 730, column: 7, scope: !1718)
!1723 = !DILocation(line: 731, column: 5, scope: !1718)
!1724 = !DILocation(line: 732, column: 3, scope: !1713)
!1725 = !DILocation(line: 733, column: 5, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1704, file: !162, line: 732, column: 10)
!1727 = !DILocation(line: 735, column: 8, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !179, file: !162, line: 735, column: 7)
!1729 = !DILocation(line: 735, column: 7, scope: !179)
!1730 = !DILocation(line: 736, column: 9, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1732, file: !162, line: 736, column: 9)
!1732 = distinct !DILexicalBlock(scope: !1728, file: !162, line: 735, column: 41)
!1733 = !DILocation(line: 736, column: 9, scope: !1732)
!1734 = !DILocation(line: 737, column: 14, scope: !1731)
!1735 = !DILocation(line: 737, column: 19, scope: !1731)
!1736 = !DILocation(line: 737, column: 7, scope: !1731)
!1737 = !DILocation(line: 739, column: 14, scope: !1731)
!1738 = !DILocation(line: 739, column: 19, scope: !1731)
!1739 = !DILocation(line: 739, column: 7, scope: !1731)
!1740 = !DILocation(line: 740, column: 15, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1728, file: !162, line: 740, column: 14)
!1742 = !DILocation(line: 740, column: 14, scope: !1728)
!1743 = !DILocation(line: 741, column: 12, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1741, file: !162, line: 740, column: 48)
!1745 = !DILocation(line: 741, column: 17, scope: !1744)
!1746 = !DILocation(line: 741, column: 5, scope: !1744)
!1747 = !DILocation(line: 743, column: 8, scope: !179)
!1748 = !DILocation(line: 743, column: 6, scope: !179)
!1749 = !DILocation(line: 745, column: 9, scope: !179)
!1750 = !DILocation(line: 746, column: 9, scope: !179)
!1751 = !DILocation(line: 747, column: 9, scope: !179)
!1752 = !DILocation(line: 744, column: 3, scope: !179)
!1753 = !DILocation(line: 748, column: 7, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !179, file: !162, line: 748, column: 7)
!1755 = !DILocation(line: 748, column: 10, scope: !1754)
!1756 = !DILocation(line: 748, column: 7, scope: !179)
!1757 = !DILocation(line: 749, column: 12, scope: !1754)
!1758 = !DILocation(line: 749, column: 17, scope: !1754)
!1759 = !DILocation(line: 749, column: 5, scope: !1754)
!1760 = !DILocation(line: 750, column: 12, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1754, file: !162, line: 750, column: 12)
!1762 = !DILocation(line: 750, column: 15, scope: !1761)
!1763 = !DILocation(line: 750, column: 12, scope: !1754)
!1764 = !DILocation(line: 751, column: 12, scope: !1761)
!1765 = !DILocation(line: 751, column: 17, scope: !1761)
!1766 = !DILocation(line: 751, column: 5, scope: !1761)
!1767 = !DILocation(line: 753, column: 12, scope: !1761)
!1768 = !DILocation(line: 753, column: 17, scope: !1761)
!1769 = !DILocation(line: 753, column: 5, scope: !1761)
!1770 = !DILocation(line: 754, column: 1, scope: !179)
!1771 = distinct !DISubprogram(name: "audit_reinstreq", scope: !162, file: !162, line: 60, type: !202, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !167)
!1772 = !DILocalVariable(name: "pkg", arg: 1, scope: !1771, file: !162, line: 60, type: !204)
!1773 = !DILocation(line: 60, column: 33, scope: !1771)
!1774 = !DILocalVariable(name: "problem", arg: 2, scope: !1771, file: !162, line: 60, type: !413)
!1775 = !DILocation(line: 60, column: 66, scope: !1771)
!1776 = !DILocation(line: 62, column: 10, scope: !1771)
!1777 = !DILocation(line: 62, column: 15, scope: !1771)
!1778 = !DILocation(line: 62, column: 21, scope: !1771)
!1779 = !DILocation(line: 62, column: 3, scope: !1771)
!1780 = distinct !DISubprogram(name: "audit_status", scope: !162, file: !162, line: 66, type: !202, isLocal: true, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !167)
!1781 = !DILocalVariable(name: "pkg", arg: 1, scope: !1780, file: !162, line: 66, type: !204)
!1782 = !DILocation(line: 66, column: 30, scope: !1780)
!1783 = !DILocalVariable(name: "problem", arg: 2, scope: !1780, file: !162, line: 66, type: !413)
!1784 = !DILocation(line: 66, column: 63, scope: !1780)
!1785 = !DILocation(line: 68, column: 7, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1780, file: !162, line: 68, column: 7)
!1787 = !DILocation(line: 68, column: 12, scope: !1786)
!1788 = !DILocation(line: 68, column: 18, scope: !1786)
!1789 = !DILocation(line: 68, column: 7, scope: !1780)
!1790 = !DILocation(line: 69, column: 5, scope: !1786)
!1791 = !DILocation(line: 70, column: 15, scope: !1780)
!1792 = !DILocation(line: 70, column: 20, scope: !1780)
!1793 = !DILocation(line: 70, column: 30, scope: !1780)
!1794 = !DILocation(line: 70, column: 39, scope: !1780)
!1795 = !DILocation(line: 70, column: 45, scope: !1780)
!1796 = !DILocation(line: 70, column: 27, scope: !1780)
!1797 = !DILocation(line: 70, column: 3, scope: !1780)
!1798 = !DILocation(line: 71, column: 1, scope: !1780)
!1799 = distinct !DISubprogram(name: "audit_infofile", scope: !162, file: !162, line: 74, type: !202, isLocal: true, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !167)
!1800 = !DILocalVariable(name: "pkg", arg: 1, scope: !1799, file: !162, line: 74, type: !204)
!1801 = !DILocation(line: 74, column: 32, scope: !1799)
!1802 = !DILocalVariable(name: "problem", arg: 2, scope: !1799, file: !162, line: 74, type: !413)
!1803 = !DILocation(line: 74, column: 65, scope: !1799)
!1804 = !DILocation(line: 76, column: 7, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1799, file: !162, line: 76, column: 7)
!1806 = !DILocation(line: 76, column: 12, scope: !1805)
!1807 = !DILocation(line: 76, column: 19, scope: !1805)
!1808 = !DILocation(line: 76, column: 7, scope: !1799)
!1809 = !DILocation(line: 77, column: 5, scope: !1805)
!1810 = !DILocation(line: 78, column: 31, scope: !1799)
!1811 = !DILocation(line: 78, column: 37, scope: !1799)
!1812 = !DILocation(line: 78, column: 42, scope: !1799)
!1813 = !DILocation(line: 78, column: 53, scope: !1799)
!1814 = !DILocation(line: 78, column: 62, scope: !1799)
!1815 = !DILocation(line: 78, column: 68, scope: !1799)
!1816 = !DILocation(line: 78, column: 11, scope: !1799)
!1817 = !DILocation(line: 78, column: 10, scope: !1799)
!1818 = !DILocation(line: 78, column: 3, scope: !1799)
!1819 = !DILocation(line: 79, column: 1, scope: !1799)
!1820 = distinct !DISubprogram(name: "audit_arch", scope: !162, file: !162, line: 82, type: !202, isLocal: true, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !167)
!1821 = !DILocalVariable(name: "pkg", arg: 1, scope: !1820, file: !162, line: 82, type: !204)
!1822 = !DILocation(line: 82, column: 28, scope: !1820)
!1823 = !DILocalVariable(name: "problem", arg: 2, scope: !1820, file: !162, line: 82, type: !413)
!1824 = !DILocation(line: 82, column: 61, scope: !1820)
!1825 = !DILocation(line: 84, column: 7, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1820, file: !162, line: 84, column: 7)
!1827 = !DILocation(line: 84, column: 12, scope: !1826)
!1828 = !DILocation(line: 84, column: 19, scope: !1826)
!1829 = !DILocation(line: 84, column: 7, scope: !1820)
!1830 = !DILocation(line: 85, column: 5, scope: !1826)
!1831 = !DILocation(line: 86, column: 10, scope: !1820)
!1832 = !DILocation(line: 86, column: 15, scope: !1820)
!1833 = !DILocation(line: 86, column: 25, scope: !1820)
!1834 = !DILocation(line: 86, column: 31, scope: !1820)
!1835 = !DILocation(line: 86, column: 60, scope: !1820)
!1836 = !DILocation(line: 86, column: 69, scope: !1820)
!1837 = !DILocation(line: 86, column: 75, scope: !1820)
!1838 = !DILocation(line: 86, column: 36, scope: !1820)
!1839 = !DILocation(line: 86, column: 3, scope: !1820)
!1840 = !DILocation(line: 87, column: 1, scope: !1820)
!1841 = distinct !DISubprogram(name: "str_is_set", scope: !1842, file: !1842, line: 50, type: !1843, isLocal: true, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !167)
!1842 = !DIFile(filename: "../lib/dpkg/string.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!1843 = !DISubroutineType(types: !1844)
!1844 = !{!192, !154}
!1845 = !DILocalVariable(name: "str", arg: 1, scope: !1841, file: !1842, line: 50, type: !154)
!1846 = !DILocation(line: 50, column: 24, scope: !1841)
!1847 = !DILocation(line: 52, column: 9, scope: !1841)
!1848 = !DILocation(line: 52, column: 13, scope: !1841)
!1849 = !DILocation(line: 52, column: 20, scope: !1841)
!1850 = !DILocation(line: 52, column: 23, scope: !1851)
!1851 = !DILexicalBlockFile(scope: !1841, file: !1842, discriminator: 1)
!1852 = !DILocation(line: 52, column: 30, scope: !1851)
!1853 = !DILocation(line: 52, column: 2, scope: !1854)
!1854 = !DILexicalBlockFile(scope: !1841, file: !1842, discriminator: 2)
!1855 = distinct !DISubprogram(name: "pgettext_aux", scope: !1856, file: !1856, line: 136, type: !1857, isLocal: true, isDefinition: true, scopeLine: 139, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !167)
!1856 = !DIFile(filename: "../lib/compat/gettext.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!1857 = !DISubroutineType(types: !1858)
!1858 = !{!154, !154, !154, !154, !158}
!1859 = !DILocalVariable(name: "domain", arg: 1, scope: !1855, file: !1856, line: 136, type: !154)
!1860 = !DILocation(line: 136, column: 27, scope: !1855)
!1861 = !DILocalVariable(name: "msg_ctxt_id", arg: 2, scope: !1855, file: !1856, line: 137, type: !154)
!1862 = !DILocation(line: 137, column: 20, scope: !1855)
!1863 = !DILocalVariable(name: "msgid", arg: 3, scope: !1855, file: !1856, line: 137, type: !154)
!1864 = !DILocation(line: 137, column: 45, scope: !1855)
!1865 = !DILocalVariable(name: "category", arg: 4, scope: !1855, file: !1856, line: 138, type: !158)
!1866 = !DILocation(line: 138, column: 12, scope: !1855)
!1867 = !DILocalVariable(name: "translation", scope: !1855, file: !1856, line: 140, type: !154)
!1868 = !DILocation(line: 140, column: 15, scope: !1855)
!1869 = !DILocation(line: 140, column: 40, scope: !1855)
!1870 = !DILocation(line: 140, column: 48, scope: !1855)
!1871 = !DILocation(line: 140, column: 61, scope: !1855)
!1872 = !DILocation(line: 140, column: 29, scope: !1855)
!1873 = !DILocation(line: 141, column: 7, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1855, file: !1856, line: 141, column: 7)
!1875 = !DILocation(line: 141, column: 22, scope: !1874)
!1876 = !DILocation(line: 141, column: 19, scope: !1874)
!1877 = !DILocation(line: 141, column: 7, scope: !1855)
!1878 = !DILocation(line: 142, column: 12, scope: !1874)
!1879 = !DILocation(line: 142, column: 5, scope: !1874)
!1880 = !DILocation(line: 144, column: 12, scope: !1874)
!1881 = !DILocation(line: 144, column: 5, scope: !1874)
!1882 = !DILocation(line: 145, column: 1, scope: !1855)
