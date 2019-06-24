; ModuleID = './[inter]src--unpack.o.i'
source_filename = "./[inter]src--unpack.o.i"
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
%struct.tar_operations = type { i32 (%struct.tar_archive*, i8*, i32)*, i32 (%struct.tar_archive*, %struct.tar_entry*)*, i32 (%struct.tar_archive*, %struct.tar_entry*)*, i32 (%struct.tar_archive*, %struct.tar_entry*)*, i32 (%struct.tar_archive*, %struct.tar_entry*)*, i32 (%struct.tar_archive*, %struct.tar_entry*)* }
%struct.tar_archive = type { %struct.dpkg_error, i32, %struct.tar_operations*, i8* }
%struct.dpkg_error = type { i32, i32, i8* }
%struct.tar_entry = type { i32, i32, i8*, i8*, i64, i64, i64, %struct.file_stat }
%struct.tarcontext = type { i32, %struct.pkginfo*, %struct.fsys_namenode_queue*, i8 }
%struct.fsys_namenode_queue = type { %struct.fsys_namenode_list*, %struct.fsys_namenode_list** }
%struct.cmdinfo = type { i8*, i8, i32, i32*, i8**, void (%struct.cmdinfo*, i8*)*, i32, i8*, i32 (i8**)* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.varbuf = type { i64, i64, i8* }
%struct.pkg_deconf_list = type { %struct.pkg_deconf_list*, %struct.pkginfo*, %struct.pkginfo* }
%struct.varbuf_state = type { i64 }
%struct.match_node = type { %struct.match_node*, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%union.anon = type { i32 }
%union.anon.3 = type { i32 }
%struct.fsys_node_pkgs_iter = type opaque
%struct.fsys_hash_rev_iter = type { %struct.fsys_namenode_list* }
%struct.__dirstream = type opaque
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.pkg_hash_iter = type opaque

@conflictors = internal global %struct.pkg_queue zeroinitializer, align 8
@process_archive.tf = internal constant %struct.tar_operations { i32 (%struct.tar_archive*, i8*, i32)* @tarfileread, i32 (%struct.tar_archive*, %struct.tar_entry*)* @tarobject, i32 (%struct.tar_archive*, %struct.tar_entry*)* @tarobject, i32 (%struct.tar_archive*, %struct.tar_entry*)* @tarobject, i32 (%struct.tar_archive*, %struct.tar_entry*)* @tarobject, i32 (%struct.tar_archive*, %struct.tar_entry*)* @tarobject }, align 8
@process_archive.p1 = internal global [2 x i32] zeroinitializer, align 4
@process_archive.oldversionstatus = internal global i32 0, align 4
@process_archive.tc = internal global %struct.tarcontext zeroinitializer, align 8
@cleanup_conflictor_failed = external global i32, align 4
@cleanup_pkg_failed = external global i32, align 4
@.str = private unnamed_addr constant [27 x i8] c"cannot access archive '%s'\00", align 1
@f_noact = external global i32, align 4
@f_nodebsig = external global i32, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"dpkg-deb\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"--control\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"unable to execute %s (%s)\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"package control information extraction\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"dpkg-deb --control\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"control\00", align 1
@cipaction = external global %struct.cmdinfo*, align 8
@.str.7 = private unnamed_addr constant [4 x i8] c"%jd\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Recorded info about %s from %s.\0A\00", align 1
@.str.9 = private unnamed_addr constant [53 x i8] c"package architecture (%s) does not match system (%s)\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"Preparing to unpack %s ...\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"upgrade\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"install\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"triggers\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"conffiles\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"unpack.c\00", align 1
@__func__.process_archive = private unnamed_addr constant [16 x i8] c"process_archive\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"package %s state %d is out-of-bounds\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"process_archive oldversionstatus=%s\00", align 1
@statusstrings = external constant [0 x i8*], align 8
@.str.18 = private unnamed_addr constant [6 x i8] c"prerm\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"pre-removal\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"failed-upgrade\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"in-favour\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"preinst\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"pre-installation\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"Unpacking %s (%s) ...\0A\00", align 1
@.str.26 = private unnamed_addr constant [33 x i8] c"Unpacking %s (%s) over (%s) ...\0A\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"--fsys-tarfile\00", align 1
@.str.28 = private unnamed_addr constant [38 x i8] c"package filesystem archive extraction\00", align 1
@.str.29 = private unnamed_addr constant [48 x i8] c"corrupted filesystem tarfile in package archive\00", align 1
@.str.30 = private unnamed_addr constant [53 x i8] c"cannot zap possible trailing zeros from dpkg-deb: %s\00", align 1
@.str.31 = private unnamed_addr constant [24 x i8] c"dpkg-deb --fsys-tarfile\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"postrm\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"post-removal\00", align 1
@.str.34 = private unnamed_addr constant [40 x i8] c"process_archive updating info directory\00", align 1
@.str.35 = private unnamed_addr constant [63 x i8] c"other package %s instance in state %s instead of not-installed\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c".../%s\00", align 1
@deb_reassemble.reasmbuf = internal global i8* null, align 8
@.str.37 = private unnamed_addr constant [15 x i8] c"reassemble.deb\00", align 1
@.str.38 = private unnamed_addr constant [38 x i8] c"error ensuring '%.250s' doesn't exist\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"dpkg-split\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"-Qao\00", align 1
@.str.41 = private unnamed_addr constant [25 x i8] c"split package reassembly\00", align 1
@.str.42 = private unnamed_addr constant [25 x i8] c"reassembled package file\00", align 1
@.str.43 = private unnamed_addr constant [44 x i8] c"subprocess %s returned error exit status %d\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"debsig-verify\00", align 1
@.str.45 = private unnamed_addr constant [23 x i8] c"Authenticating %s ...\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.46 = private unnamed_addr constant [3 x i8] c"-q\00", align 1
@.str.47 = private unnamed_addr constant [31 x i8] c"package signature verification\00", align 1
@.str.48 = private unnamed_addr constant [35 x i8] c"verification on package %s failed!\00", align 1
@.str.49 = private unnamed_addr constant [74 x i8] c"verification on package %s failed; but installing anyway as you requested\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"passed\0A\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"dpkg\00", align 1
@.str.52 = private unnamed_addr constant [37 x i8] c"unable to create temporary directory\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"/tmp.ci\00", align 1
@.str.54 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@pkg_check_depcon.depprobwhy = internal global %struct.varbuf zeroinitializer, align 8
@.str.55 = private unnamed_addr constant [55 x i8] c"regarding %s containing %s, pre-dependency problem:\0A%s\00", align 1
@.str.56 = private unnamed_addr constant [47 x i8] c"pre-dependency problem - not installing %.250s\00", align 1
@.str.57 = private unnamed_addr constant [33 x i8] c"ignoring pre-dependency problem!\00", align 1
@.str.58 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.59 = private unnamed_addr constant [28 x i8] c"error trying to open %.250s\00", align 1
@.str.60 = private unnamed_addr constant [37 x i8] c"conffile file contains an empty line\00", align 1
@.str.61 = private unnamed_addr constant [57 x i8] c"conffile name '%s' is too long, or missing final newline\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c"newconffile\00", align 1
@.str.63 = private unnamed_addr constant [54 x i8] c"process_archive conffile '%s' in package %s - conff ?\00", align 1
@.str.64 = private unnamed_addr constant [63 x i8] c"process_archive conffile '%s' in package %s - conff ? not '%s'\00", align 1
@.str.65 = private unnamed_addr constant [52 x i8] c"process_archive conffile '%s' package=%s %s hash=%s\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"same\00", align 1
@.str.67 = private unnamed_addr constant [11 x i8] c"different!\00", align 1
@.str.68 = private unnamed_addr constant [50 x i8] c"process_archive conffile '%s' no package, no hash\00", align 1
@.str.69 = private unnamed_addr constant [21 x i8] c"read error in %.250s\00", align 1
@.str.70 = private unnamed_addr constant [21 x i8] c"error closing %.250s\00", align 1
@deconfigure = external global %struct.pkg_deconf_list*, align 8
@.str.71 = private unnamed_addr constant [57 x i8] c"De-configuring %s (%s), to allow removal of %s (%s) ...\0A\00", align 1
@.str.72 = private unnamed_addr constant [28 x i8] c"De-configuring %s (%s) ...\0A\00", align 1
@.str.73 = private unnamed_addr constant [12 x i8] c"deconfigure\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c"removing\00", align 1
@fnamevb = external global %struct.varbuf, align 8
@fname_state = external global %struct.varbuf_state, align 8
@.str.75 = private unnamed_addr constant [35 x i8] c"process_archive: %s is a directory\00", align 1
@.str.76 = private unnamed_addr constant [56 x i8] c"could not stat old file '%.250s' so not deleting it: %s\00", align 1
@.str.77 = private unnamed_addr constant [3 x i8] c"/.\00", align 1
@.str.78 = private unnamed_addr constant [44 x i8] c"unable to delete old directory '%.250s': %s\00", align 1
@.str.79 = private unnamed_addr constant [72 x i8] c"old conffile '%.250s' was an empty directory (and has now been deleted)\00", align 1
@pkg_remove_old_files.empty_ondisk_id = internal global %struct.file_ondisk_id zeroinitializer, align 8
@.str.80 = private unnamed_addr constant [65 x i8] c"process_archive: checking %s for same files on upgrade/downgrade\00", align 1
@instdir = external global i8*, align 8
@.str.81 = private unnamed_addr constant [39 x i8] c"unable to stat other new file '%.250s'\00", align 1
@.str.82 = private unnamed_addr constant [81 x i8] c"old file '%.250s' is the same as several new files! (both '%.250s' and '%.250s')\00", align 1
@.str.83 = private unnamed_addr constant [54 x i8] c"process_archive: not removing %s, since it matches %s\00", align 1
@.str.84 = private unnamed_addr constant [68 x i8] c"process_archive: old conff %s is same as new conff %s, copying hash\00", align 1
@.str.85 = private unnamed_addr constant [82 x i8] c"process_archive: old conff %s is same as new conff %s but latter already has hash\00", align 1
@.str.86 = private unnamed_addr constant [46 x i8] c"process_archive: old conff %s is disappearing\00", align 1
@.str.87 = private unnamed_addr constant [48 x i8] c"unable to securely remove old file '%.250s': %s\00", align 1
@match_head = internal global %struct.match_node* null, align 8
@.str.88 = private unnamed_addr constant [40 x i8] c"process_archive info installed %s as %s\00", align 1
@.str.89 = private unnamed_addr constant [45 x i8] c"unable to remove obsolete info file '%.250s'\00", align 1
@.str.90 = private unnamed_addr constant [33 x i8] c"process_archive info unlinked %s\00", align 1
@.str.91 = private unnamed_addr constant [52 x i8] c"unable to install (supposed) new info file '%.250s'\00", align 1
@.str.92 = private unnamed_addr constant [38 x i8] c"unable to open temp control directory\00", align 1
@.str.93 = private unnamed_addr constant [53 x i8] c"process_archive tmp.ci script/file '%s' contains dot\00", align 1
@.str.94 = private unnamed_addr constant [71 x i8] c"package contains overly-long control info file name (starting '%.50s')\00", align 1
@.str.95 = private unnamed_addr constant [50 x i8] c"package control info contained directory '%.250s'\00", align 1
@.str.96 = private unnamed_addr constant [60 x i8] c"package control info rmdir of '%.250s' didn't say not a dir\00", align 1
@.str.97 = private unnamed_addr constant [51 x i8] c"process_archive tmp.ci script/file '%s' is control\00", align 1
@.str.98 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.99 = private unnamed_addr constant [39 x i8] c"package %s contained list as info file\00", align 1
@.str.100 = private unnamed_addr constant [53 x i8] c"unable to install new info file '%.250s' as '%.250s'\00", align 1
@.str.101 = private unnamed_addr constant [58 x i8] c"process_archive tmp.ci script/file '%s' installed as '%s'\00", align 1
@.str.102 = private unnamed_addr constant [61 x i8] c"process_archive remove old info files after db layout switch\00", align 1
@.str.103 = private unnamed_addr constant [72 x i8] c"old version of package has overly-long info file name starting '%.250s'\00", align 1
@.str.104 = private unnamed_addr constant [44 x i8] c"unable to delete control info file '%.250s'\00", align 1
@.str.105 = private unnamed_addr constant [30 x i8] c"removal_bulk info unlinked %s\00", align 1
@.str.106 = private unnamed_addr constant [42 x i8] c"process_archive checking disappearance %s\00", align 1
@__func__.pkg_disappear_others = private unnamed_addr constant [21 x i8] c"pkg_disappear_others\00", align 1
@.str.107 = private unnamed_addr constant [72 x i8] c"disappearing package %s is not to be normal or deconfigure, is to be %d\00", align 1
@.str.108 = private unnamed_addr constant [42 x i8] c"process_archive no non-root, no disappear\00", align 1
@.str.109 = private unnamed_addr constant [48 x i8] c"process_archive disappear checking dependencies\00", align 1
@.str.110 = private unnamed_addr constant [37 x i8] c"process_archive cannot disappear: %s\00", align 1
@.str.111 = private unnamed_addr constant [51 x i8] c"process_archive cannot disappear (provides %s): %s\00", align 1
@.str.112 = private unnamed_addr constant [67 x i8] c"(Noting disappearance of %s, which has been completely replaced.)\0A\00", align 1
@.str.113 = private unnamed_addr constant [10 x i8] c"disappear\00", align 1
@.str.114 = private unnamed_addr constant [30 x i8] c"pkg_disappear disappearing %s\00", align 1
@.str.115 = private unnamed_addr constant [40 x i8] c"post-removal script (for disappearance)\00", align 1
@.str.116 = private unnamed_addr constant [38 x i8] c"pkg_disappear cleaning info directory\00", align 1
@.str.117 = private unnamed_addr constant [60 x i8] c"process_archive not overwriting any '%s' (overriding, '%s')\00", align 1
@.str.118 = private unnamed_addr constant [64 x i8] c"process_archive looking for overwriting '%s' (overridden by %s)\00", align 1
@.str.119 = private unnamed_addr constant [8 x i8] c"<local>\00", align 1
@.str.120 = private unnamed_addr constant [45 x i8] c"process_archive looking for overwriting '%s'\00", align 1
@.str.121 = private unnamed_addr constant [32 x i8] c"process_archive ... found in %s\00", align 1
@.str.122 = private unnamed_addr constant [39 x i8] c"process_archive ... diverted, skipping\00", align 1
@.str.123 = private unnamed_addr constant [34 x i8] c"process_archive overwrote from %s\00", align 1
@fnametmpvb = external global %struct.varbuf, align 8
@.str.124 = private unnamed_addr constant [10 x i8] c".dpkg-tmp\00", align 1

; Function Attrs: nounwind uwtable
define void @enqueue_conflictor(%struct.pkginfo*) #0 !dbg !619 {
  %2 = alloca %struct.pkginfo*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %2, metadata !622, metadata !623), !dbg !624
  %3 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !625
  %4 = call %struct.pkg_list* @pkg_queue_push(%struct.pkg_queue* @conflictors, %struct.pkginfo* %3), !dbg !626
  ret void, !dbg !627
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare %struct.pkg_list* @pkg_queue_push(%struct.pkg_queue*, %struct.pkginfo*) #2

; Function Attrs: nounwind uwtable
define void @process_archive(i8*) #0 !dbg !297 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.tar_archive, align 8
  %4 = alloca %struct.dpkg_error, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pkginfo*, align 8
  %9 = alloca %struct.pkginfo*, align 8
  %10 = alloca %struct.pkg_list*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.fsys_namenode_queue, align 8
  %16 = alloca %struct.fsys_namenode_queue, align 8
  %17 = alloca %struct.stat, align 8
  %18 = alloca %struct.pkginfo*, align 8
  %19 = alloca %struct.dpkg_error, align 8
  %20 = alloca %struct.pkginfo*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !628, metadata !623), !dbg !629
  call void @llvm.dbg.declare(metadata %struct.tar_archive* %3, metadata !630, metadata !623), !dbg !631
  call void @llvm.dbg.declare(metadata %struct.dpkg_error* %4, metadata !632, metadata !623), !dbg !633
  call void @llvm.dbg.declare(metadata i32* %5, metadata !634, metadata !623), !dbg !635
  call void @llvm.dbg.declare(metadata i32* %6, metadata !636, metadata !623), !dbg !637
  call void @llvm.dbg.declare(metadata i32* %7, metadata !638, metadata !623), !dbg !641
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %8, metadata !642, metadata !623), !dbg !643
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %9, metadata !644, metadata !623), !dbg !645
  call void @llvm.dbg.declare(metadata %struct.pkg_list** %10, metadata !646, metadata !623), !dbg !647
  call void @llvm.dbg.declare(metadata i8** %11, metadata !648, metadata !623), !dbg !649
  store i8* null, i8** %11, align 8, !dbg !649
  call void @llvm.dbg.declare(metadata i8** %12, metadata !650, metadata !623), !dbg !651
  call void @llvm.dbg.declare(metadata i8** %13, metadata !652, metadata !623), !dbg !653
  call void @llvm.dbg.declare(metadata i8** %14, metadata !654, metadata !623), !dbg !655
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode_queue* %15, metadata !656, metadata !623), !dbg !657
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode_queue* %16, metadata !658, metadata !623), !dbg !659
  call void @llvm.dbg.declare(metadata %struct.stat* %17, metadata !660, metadata !623), !dbg !690
  store i32 0, i32* @cleanup_conflictor_failed, align 4, !dbg !691
  store i32 0, i32* @cleanup_pkg_failed, align 4, !dbg !692
  %21 = load i8*, i8** %2, align 8, !dbg !693
  %22 = call i8* @summarize_filename(i8* %21), !dbg !694
  store i8* %22, i8** %14, align 8, !dbg !695
  %23 = load i8*, i8** %2, align 8, !dbg !696
  %24 = call i32 @stat(i8* %23, %struct.stat* %17) #9, !dbg !698
  %25 = icmp ne i32 %24, 0, !dbg !698
  br i1 %25, label %26, label %29, !dbg !699

; <label>:26:                                     ; preds = %1
  %27 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0)) #9, !dbg !700
  %28 = load i8*, i8** %2, align 8, !dbg !701
  call void (i8*, ...) @ohshite(i8* %27, i8* %28) #10, !dbg !702
  unreachable, !dbg !704

; <label>:29:                                     ; preds = %1
  %30 = load i32, i32* @f_noact, align 4, !dbg !705
  %31 = icmp ne i32 %30, 0, !dbg !705
  br i1 %31, label %36, label %32, !dbg !707

; <label>:32:                                     ; preds = %29
  %33 = call zeroext i1 @deb_reassemble(i8** %2, i8** %14), !dbg !708
  br i1 %33, label %35, label %34, !dbg !711

; <label>:34:                                     ; preds = %32
  br label %639, !dbg !712

; <label>:35:                                     ; preds = %32
  br label %36, !dbg !713

; <label>:36:                                     ; preds = %35, %29
  %37 = load i32, i32* @f_nodebsig, align 4, !dbg !714
  %38 = icmp ne i32 %37, 0, !dbg !714
  br i1 %38, label %41, label %39, !dbg !716

; <label>:39:                                     ; preds = %36
  %40 = load i8*, i8** %2, align 8, !dbg !717
  call void @deb_verify(i8* %40), !dbg !718
  br label %41, !dbg !718

; <label>:41:                                     ; preds = %39, %36
  %42 = load i8*, i8** %11, align 8, !dbg !719
  %43 = call i8* @get_control_dir(i8* %42), !dbg !720
  store i8* %43, i8** %11, align 8, !dbg !721
  %44 = load i8*, i8** %11, align 8, !dbg !722
  %45 = load i8*, i8** %11, align 8, !dbg !723
  %46 = call i64 @strlen(i8* %45) #11, !dbg !724
  %47 = getelementptr inbounds i8, i8* %44, i64 %46, !dbg !725
  store i8* %47, i8** %12, align 8, !dbg !726
  %48 = load i8*, i8** %11, align 8, !dbg !727
  %49 = load i8*, i8** %12, align 8, !dbg !728
  call void (void (i32, i8**)*, i32, i32, ...) @push_cleanup(void (i32, i8**)* @cu_cidir, i32 -1, i32 2, i8* %48, i8* %49), !dbg !729
  %50 = call i32 @subproc_fork(), !dbg !730
  store i32 %50, i32* %7, align 4, !dbg !731
  %51 = load i32, i32* %7, align 4, !dbg !732
  %52 = icmp eq i32 %51, 0, !dbg !734
  br i1 %52, label %53, label %61, !dbg !735

; <label>:53:                                     ; preds = %41
  %54 = load i8*, i8** %12, align 8, !dbg !736
  %55 = getelementptr inbounds i8, i8* %54, i64 -1, !dbg !736
  store i8 0, i8* %55, align 1, !dbg !738
  %56 = load i8*, i8** %2, align 8, !dbg !739
  %57 = load i8*, i8** %11, align 8, !dbg !740
  %58 = call i32 (i8*, i8*, ...) @execlp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* %56, i8* %57, i8* null) #9, !dbg !741
  %59 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0)) #9, !dbg !742
  %60 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i32 0, i32 0)) #9, !dbg !743
  call void (i8*, ...) @ohshite(i8* %59, i8* %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0)) #10, !dbg !744
  unreachable, !dbg !746

; <label>:61:                                     ; preds = %41
  %62 = load i32, i32* %7, align 4, !dbg !747
  %63 = call i32 @subproc_reap(i32 %62, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0), i32 0), !dbg !748
  %64 = load i8*, i8** %11, align 8, !dbg !749
  call void @dir_sync_contents(i8* %64), !dbg !750
  %65 = load i8*, i8** %12, align 8, !dbg !751
  %66 = call i8* @strcpy(i8* %65, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0)) #9, !dbg !752
  %67 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !753
  %68 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %67, i32 0, i32 6, !dbg !755
  %69 = load i32, i32* %68, align 8, !dbg !755
  %70 = icmp eq i32 %69, 37, !dbg !756
  br i1 %70, label %71, label %72, !dbg !757

; <label>:71:                                     ; preds = %61
  store i32 582, i32* %5, align 4, !dbg !758
  br label %73, !dbg !759

; <label>:72:                                     ; preds = %61
  store i32 7, i32* %5, align 4, !dbg !760
  br label %73

; <label>:73:                                     ; preds = %72, %71
  %74 = load i32, i32* %5, align 4, !dbg !761
  %75 = or i32 %74, 16, !dbg !761
  store i32 %75, i32* %5, align 4, !dbg !761
  %76 = call zeroext i1 @in_force(i32 8), !dbg !762
  br i1 %76, label %77, label %80, !dbg !764

; <label>:77:                                     ; preds = %73
  %78 = load i32, i32* %5, align 4, !dbg !765
  %79 = or i32 %78, 64, !dbg !765
  store i32 %79, i32* %5, align 4, !dbg !765
  br label %80, !dbg !766

; <label>:80:                                     ; preds = %77, %73
  %81 = load i8*, i8** %11, align 8, !dbg !767
  %82 = load i32, i32* %5, align 4, !dbg !768
  %83 = call i32 @parsedb(i8* %81, i32 %82, %struct.pkginfo** %8), !dbg !769
  %84 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !770
  %85 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %84, i32 0, i32 12, !dbg !772
  %86 = load %struct.archivedetails*, %struct.archivedetails** %85, align 8, !dbg !772
  %87 = icmp ne %struct.archivedetails* %86, null, !dbg !770
  br i1 %87, label %109, label %88, !dbg !773

; <label>:88:                                     ; preds = %80
  %89 = call i8* @nfmalloc(i64 40), !dbg !774
  %90 = bitcast i8* %89 to %struct.archivedetails*, !dbg !774
  %91 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !776
  %92 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %91, i32 0, i32 12, !dbg !777
  store %struct.archivedetails* %90, %struct.archivedetails** %92, align 8, !dbg !778
  %93 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !779
  %94 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %93, i32 0, i32 12, !dbg !780
  %95 = load %struct.archivedetails*, %struct.archivedetails** %94, align 8, !dbg !780
  %96 = getelementptr inbounds %struct.archivedetails, %struct.archivedetails* %95, i32 0, i32 0, !dbg !781
  store %struct.archivedetails* null, %struct.archivedetails** %96, align 8, !dbg !782
  %97 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !783
  %98 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %97, i32 0, i32 12, !dbg !784
  %99 = load %struct.archivedetails*, %struct.archivedetails** %98, align 8, !dbg !784
  %100 = getelementptr inbounds %struct.archivedetails, %struct.archivedetails* %99, i32 0, i32 1, !dbg !785
  store i8* null, i8** %100, align 8, !dbg !786
  %101 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !787
  %102 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %101, i32 0, i32 12, !dbg !788
  %103 = load %struct.archivedetails*, %struct.archivedetails** %102, align 8, !dbg !788
  %104 = getelementptr inbounds %struct.archivedetails, %struct.archivedetails* %103, i32 0, i32 2, !dbg !789
  store i8* null, i8** %104, align 8, !dbg !790
  %105 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !791
  %106 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %105, i32 0, i32 12, !dbg !792
  %107 = load %struct.archivedetails*, %struct.archivedetails** %106, align 8, !dbg !792
  %108 = getelementptr inbounds %struct.archivedetails, %struct.archivedetails* %107, i32 0, i32 4, !dbg !793
  store i8* null, i8** %108, align 8, !dbg !794
  br label %109, !dbg !795

; <label>:109:                                    ; preds = %88, %80
  %110 = call i8* @nfmalloc(i64 30), !dbg !796
  store i8* %110, i8** %13, align 8, !dbg !797
  %111 = load i8*, i8** %13, align 8, !dbg !798
  %112 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 8, !dbg !799
  %113 = load i64, i64* %112, align 8, !dbg !799
  %114 = call i32 (i8*, i8*, ...) @sprintf(i8* %111, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i64 %113) #9, !dbg !800
  %115 = load i8*, i8** %13, align 8, !dbg !801
  %116 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !802
  %117 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %116, i32 0, i32 12, !dbg !803
  %118 = load %struct.archivedetails*, %struct.archivedetails** %117, align 8, !dbg !803
  %119 = getelementptr inbounds %struct.archivedetails, %struct.archivedetails* %118, i32 0, i32 3, !dbg !804
  store i8* %115, i8** %119, align 8, !dbg !805
  %120 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !806
  %121 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %120, i32 0, i32 6, !dbg !808
  %122 = load i32, i32* %121, align 8, !dbg !808
  %123 = icmp eq i32 %122, 37, !dbg !809
  br i1 %123, label %124, label %132, !dbg !810

; <label>:124:                                    ; preds = %109
  %125 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i32 0, i32 0)) #9, !dbg !811
  %126 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !813
  %127 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !814
  %128 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %127, i32 0, i32 10, !dbg !815
  %129 = call i8* @pkgbin_name(%struct.pkginfo* %126, %struct.pkgbin* %128, i32 1), !dbg !816
  %130 = load i8*, i8** %14, align 8, !dbg !817
  %131 = call i32 (i8*, ...) @printf(i8* %125, i8* %129, i8* %130), !dbg !818
  call void @pop_cleanup(i32 1), !dbg !820
  br label %639, !dbg !821

; <label>:132:                                    ; preds = %109
  %133 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !822
  %134 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %133, i32 0, i32 10, !dbg !824
  %135 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %134, i32 0, i32 3, !dbg !825
  %136 = load %struct.dpkg_arch*, %struct.dpkg_arch** %135, align 8, !dbg !825
  %137 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %136, i32 0, i32 2, !dbg !826
  %138 = load i32, i32* %137, align 8, !dbg !826
  %139 = icmp ne i32 %138, 4, !dbg !827
  br i1 %139, label %140, label %167, !dbg !828

; <label>:140:                                    ; preds = %132
  %141 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !829
  %142 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %141, i32 0, i32 10, !dbg !830
  %143 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %142, i32 0, i32 3, !dbg !831
  %144 = load %struct.dpkg_arch*, %struct.dpkg_arch** %143, align 8, !dbg !831
  %145 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %144, i32 0, i32 2, !dbg !832
  %146 = load i32, i32* %145, align 8, !dbg !832
  %147 = icmp ne i32 %146, 5, !dbg !833
  br i1 %147, label %148, label %167, !dbg !834

; <label>:148:                                    ; preds = %140
  %149 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !835
  %150 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %149, i32 0, i32 10, !dbg !836
  %151 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %150, i32 0, i32 3, !dbg !837
  %152 = load %struct.dpkg_arch*, %struct.dpkg_arch** %151, align 8, !dbg !837
  %153 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %152, i32 0, i32 2, !dbg !838
  %154 = load i32, i32* %153, align 8, !dbg !838
  %155 = icmp ne i32 %154, 6, !dbg !839
  br i1 %155, label %156, label %167, !dbg !840

; <label>:156:                                    ; preds = %148
  %157 = call i8* @gettext(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.9, i32 0, i32 0)) #9, !dbg !842
  %158 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !843
  %159 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %158, i32 0, i32 10, !dbg !844
  %160 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %159, i32 0, i32 3, !dbg !845
  %161 = load %struct.dpkg_arch*, %struct.dpkg_arch** %160, align 8, !dbg !845
  %162 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %161, i32 0, i32 1, !dbg !846
  %163 = load i8*, i8** %162, align 8, !dbg !846
  %164 = call %struct.dpkg_arch* @dpkg_arch_get(i32 5), !dbg !847
  %165 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %164, i32 0, i32 1, !dbg !848
  %166 = load i8*, i8** %165, align 8, !dbg !848
  call void (i32, i8*, ...) @forcibleerr(i32 1, i8* %157, i8* %163, i8* %166), !dbg !849
  br label %167, !dbg !849

; <label>:167:                                    ; preds = %156, %148, %140, %132
  call void @clear_deconfigure_queue(), !dbg !850
  call void @clear_istobes(), !dbg !851
  %168 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !852
  %169 = call zeroext i1 @wanttoinstall(%struct.pkginfo* %168), !dbg !854
  br i1 %169, label %170, label %172, !dbg !855

; <label>:170:                                    ; preds = %167
  %171 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !856
  call void @pkg_set_want(%struct.pkginfo* %171, i32 1), !dbg !858
  br label %173, !dbg !859

; <label>:172:                                    ; preds = %167
  call void @pop_cleanup(i32 1), !dbg !860
  br label %639, !dbg !862

; <label>:173:                                    ; preds = %170
  %174 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !863
  %175 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %174, i32 0, i32 0, !dbg !865
  %176 = load %struct.pkgset*, %struct.pkgset** %175, align 8, !dbg !865
  %177 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %176, i32 0, i32 2, !dbg !866
  store %struct.pkginfo* %177, %struct.pkginfo** %9, align 8, !dbg !867
  br label %178, !dbg !868

; <label>:178:                                    ; preds = %204, %173
  %179 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !869
  %180 = icmp ne %struct.pkginfo* %179, null, !dbg !872
  br i1 %180, label %181, label %208, !dbg !872

; <label>:181:                                    ; preds = %178
  %182 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !873
  %183 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !876
  %184 = icmp eq %struct.pkginfo* %182, %183, !dbg !877
  br i1 %184, label %185, label %186, !dbg !878

; <label>:185:                                    ; preds = %181
  br label %204, !dbg !879

; <label>:186:                                    ; preds = %181
  %187 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !880
  %188 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %187, i32 0, i32 4, !dbg !882
  %189 = load i32, i32* %188, align 8, !dbg !882
  %190 = icmp ule i32 %189, 4, !dbg !883
  br i1 %190, label %191, label %192, !dbg !884

; <label>:191:                                    ; preds = %186
  br label %204, !dbg !885

; <label>:192:                                    ; preds = %186
  %193 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !886
  %194 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %193, i32 0, i32 10, !dbg !888
  %195 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %194, i32 0, i32 11, !dbg !889
  %196 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !890
  %197 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %196, i32 0, i32 9, !dbg !891
  %198 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %197, i32 0, i32 11, !dbg !892
  %199 = call i32 @dpkg_version_compare(%struct.dpkg_version* %195, %struct.dpkg_version* %198), !dbg !893
  %200 = icmp ne i32 %199, 0, !dbg !893
  br i1 %200, label %201, label %203, !dbg !894

; <label>:201:                                    ; preds = %192
  %202 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !895
  call void @enqueue_deconfigure(%struct.pkginfo* %202, %struct.pkginfo* null), !dbg !896
  br label %203, !dbg !896

; <label>:203:                                    ; preds = %201, %192
  br label %204, !dbg !897

; <label>:204:                                    ; preds = %203, %191, %185
  %205 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !898
  %206 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %205, i32 0, i32 1, !dbg !900
  %207 = load %struct.pkginfo*, %struct.pkginfo** %206, align 8, !dbg !900
  store %struct.pkginfo* %207, %struct.pkginfo** %9, align 8, !dbg !901
  br label %178, !dbg !902, !llvm.loop !903

; <label>:208:                                    ; preds = %178
  %209 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !905
  %210 = load i8*, i8** %14, align 8, !dbg !906
  call void @pkg_check_depcon(%struct.pkginfo* %209, i8* %210), !dbg !907
  call void @ensure_allinstfiles_available(), !dbg !908
  call void @fsys_hash_init(), !dbg !909
  call void @trig_file_interests_ensure(), !dbg !910
  %211 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i32 0, i32 0)) #9, !dbg !911
  %212 = load i8*, i8** %14, align 8, !dbg !912
  %213 = call i32 (i8*, ...) @printf(i8* %211, i8* %212), !dbg !913
  %214 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !914
  %215 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %214, i32 0, i32 4, !dbg !916
  %216 = load i32, i32* %215, align 8, !dbg !916
  %217 = icmp ne i32 %216, 0, !dbg !917
  br i1 %217, label %218, label %227, !dbg !918

; <label>:218:                                    ; preds = %208
  %219 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !919
  %220 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %219, i32 0, i32 4, !dbg !920
  %221 = load i32, i32* %220, align 8, !dbg !920
  %222 = icmp ne i32 %221, 1, !dbg !921
  br i1 %222, label %223, label %227, !dbg !922

; <label>:223:                                    ; preds = %218
  %224 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !923
  %225 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !925
  %226 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %225, i32 0, i32 9, !dbg !926
  call void @log_action(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), %struct.pkginfo* %224, %struct.pkgbin* %226), !dbg !927
  br label %231, !dbg !928

; <label>:227:                                    ; preds = %218, %208
  %228 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !929
  %229 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !931
  %230 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %229, i32 0, i32 10, !dbg !932
  call void @log_action(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), %struct.pkginfo* %228, %struct.pkgbin* %230), !dbg !933
  br label %231

; <label>:231:                                    ; preds = %227, %223
  %232 = load i32, i32* @f_noact, align 4, !dbg !934
  %233 = icmp ne i32 %232, 0, !dbg !934
  br i1 %233, label %234, label %235, !dbg !936

; <label>:234:                                    ; preds = %231
  call void @pop_cleanup(i32 1), !dbg !937
  br label %639, !dbg !939

; <label>:235:                                    ; preds = %231
  %236 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !940
  call void @trig_activate_packageprocessing(%struct.pkginfo* %236), !dbg !941
  %237 = load i8*, i8** %12, align 8, !dbg !942
  %238 = call i8* @strcpy(i8* %237, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0)) #9, !dbg !943
  %239 = load i8*, i8** %11, align 8, !dbg !944
  %240 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !945
  %241 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !946
  %242 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %241, i32 0, i32 10, !dbg !947
  call void @trig_parse_ci(i8* %239, void (i8*, %struct.pkginfo*, %struct.pkgbin*, i32)* null, void (i8*, %struct.pkginfo*, %struct.pkgbin*, i32)* @trig_cicb_statuschange_activate, %struct.pkginfo* %240, %struct.pkgbin* %242), !dbg !948
  %243 = getelementptr inbounds %struct.fsys_namenode_queue, %struct.fsys_namenode_queue* %15, i32 0, i32 0, !dbg !949
  store %struct.fsys_namenode_list* null, %struct.fsys_namenode_list** %243, align 8, !dbg !950
  %244 = getelementptr inbounds %struct.fsys_namenode_queue, %struct.fsys_namenode_queue* %15, i32 0, i32 0, !dbg !951
  %245 = getelementptr inbounds %struct.fsys_namenode_queue, %struct.fsys_namenode_queue* %15, i32 0, i32 1, !dbg !952
  store %struct.fsys_namenode_list** %244, %struct.fsys_namenode_list*** %245, align 8, !dbg !953
  call void (void (i32, i8**)*, i32, i32, ...) @push_cleanup(void (i32, i8**)* @cu_fileslist, i32 -1, i32 0), !dbg !954
  %246 = load i8*, i8** %12, align 8, !dbg !955
  %247 = call i8* @strcpy(i8* %246, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0)) #9, !dbg !956
  %248 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !957
  %249 = load i8*, i8** %11, align 8, !dbg !958
  call void @deb_parse_conffiles(%struct.pkginfo* %248, i8* %249, %struct.fsys_namenode_queue* %15), !dbg !959
  %250 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !960
  call void @pkg_conffiles_mark_old(%struct.pkginfo* %250), !dbg !961
  %251 = load %struct.pkg_list*, %struct.pkg_list** getelementptr inbounds (%struct.pkg_queue, %struct.pkg_queue* @conflictors, i32 0, i32 0), align 8, !dbg !962
  store %struct.pkg_list* %251, %struct.pkg_list** %10, align 8, !dbg !964
  br label %252, !dbg !965

; <label>:252:                                    ; preds = %259, %235
  %253 = load %struct.pkg_list*, %struct.pkg_list** %10, align 8, !dbg !966
  %254 = icmp ne %struct.pkg_list* %253, null, !dbg !968
  br i1 %254, label %255, label %263, !dbg !968

; <label>:255:                                    ; preds = %252
  %256 = load %struct.pkg_list*, %struct.pkg_list** %10, align 8, !dbg !970
  %257 = getelementptr inbounds %struct.pkg_list, %struct.pkg_list* %256, i32 0, i32 1, !dbg !971
  %258 = load %struct.pkginfo*, %struct.pkginfo** %257, align 8, !dbg !971
  call void @pkg_conffiles_mark_old(%struct.pkginfo* %258), !dbg !972
  br label %259, !dbg !972

; <label>:259:                                    ; preds = %255
  %260 = load %struct.pkg_list*, %struct.pkg_list** %10, align 8, !dbg !973
  %261 = getelementptr inbounds %struct.pkg_list, %struct.pkg_list* %260, i32 0, i32 0, !dbg !974
  %262 = load %struct.pkg_list*, %struct.pkg_list** %261, align 8, !dbg !974
  store %struct.pkg_list* %262, %struct.pkg_list** %10, align 8, !dbg !975
  br label %252, !dbg !976, !llvm.loop !978

; <label>:263:                                    ; preds = %252
  %264 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !980
  %265 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %264, i32 0, i32 4, !dbg !981
  %266 = load i32, i32* %265, align 8, !dbg !981
  store i32 %266, i32* @process_archive.oldversionstatus, align 4, !dbg !982
  %267 = load i32, i32* @process_archive.oldversionstatus, align 4, !dbg !983
  %268 = icmp ugt i32 %267, 7, !dbg !985
  br i1 %268, label %269, label %273, !dbg !986

; <label>:269:                                    ; preds = %263
  %270 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !987
  %271 = call i8* @pkg_name(%struct.pkginfo* %270, i32 3), !dbg !988
  %272 = load i32, i32* @process_archive.oldversionstatus, align 4, !dbg !989
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 1241, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.process_archive, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i32 0, i32 0), i8* %271, i32 %272) #10, !dbg !990
  unreachable, !dbg !992

; <label>:273:                                    ; preds = %263
  %274 = load i32, i32* @process_archive.oldversionstatus, align 4, !dbg !993
  %275 = zext i32 %274 to i64, !dbg !994
  %276 = getelementptr inbounds [0 x i8*], [0 x i8*]* @statusstrings, i64 0, i64 %275, !dbg !994
  %277 = load i8*, i8** %276, align 8, !dbg !994
  call void (i32, i8*, ...) @debug(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.17, i32 0, i32 0), i8* %277), !dbg !995
  %278 = load i32, i32* @process_archive.oldversionstatus, align 4, !dbg !996
  %279 = icmp eq i32 %278, 4, !dbg !998
  br i1 %279, label %289, label %280, !dbg !999

; <label>:280:                                    ; preds = %273
  %281 = load i32, i32* @process_archive.oldversionstatus, align 4, !dbg !1000
  %282 = icmp eq i32 %281, 5, !dbg !1001
  br i1 %282, label %289, label %283, !dbg !1002

; <label>:283:                                    ; preds = %280
  %284 = load i32, i32* @process_archive.oldversionstatus, align 4, !dbg !1003
  %285 = icmp eq i32 %284, 6, !dbg !1004
  br i1 %285, label %289, label %286, !dbg !1005

; <label>:286:                                    ; preds = %283
  %287 = load i32, i32* @process_archive.oldversionstatus, align 4, !dbg !1006
  %288 = icmp eq i32 %287, 7, !dbg !1007
  br i1 %288, label %289, label %318, !dbg !1008

; <label>:289:                                    ; preds = %286, %283, %280, %273
  %290 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1009
  call void @pkg_set_eflags(%struct.pkginfo* %290, i32 1), !dbg !1011
  %291 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1012
  call void @pkg_set_status(%struct.pkginfo* %291, i32 4), !dbg !1013
  %292 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1014
  call void @modstatdb_note(%struct.pkginfo* %292), !dbg !1015
  %293 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1016
  %294 = bitcast %struct.pkginfo* %293 to i8*, !dbg !1017
  call void (void (i32, i8**)*, i32, i32, ...) @push_cleanup(void (i32, i8**)* @cu_prermupgrade, i32 -2, i32 1, i8* %294), !dbg !1018
  %295 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1019
  %296 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %295, i32 0, i32 10, !dbg !1021
  %297 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %296, i32 0, i32 11, !dbg !1022
  %298 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1023
  %299 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %298, i32 0, i32 9, !dbg !1024
  %300 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %299, i32 0, i32 11, !dbg !1025
  %301 = call i32 @dpkg_version_compare(%struct.dpkg_version* %297, %struct.dpkg_version* %300), !dbg !1026
  %302 = icmp sge i32 %301, 0, !dbg !1027
  br i1 %302, label %303, label %308, !dbg !1028

; <label>:303:                                    ; preds = %289
  %304 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1029
  %305 = load i8*, i8** %11, align 8, !dbg !1030
  %306 = load i8*, i8** %12, align 8, !dbg !1031
  %307 = call i32 @maintscript_fallback(%struct.pkginfo* %304, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0), i8* %305, i8* %306, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0)), !dbg !1032
  br label %315, !dbg !1032

; <label>:308:                                    ; preds = %289
  %309 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1033
  %310 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1034
  %311 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %310, i32 0, i32 10, !dbg !1035
  %312 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %311, i32 0, i32 11, !dbg !1036
  %313 = call i8* @versiondescribe(%struct.dpkg_version* %312, i32 1), !dbg !1037
  %314 = call i32 (%struct.pkginfo*, i8*, i8*, ...) @maintscript_installed(%struct.pkginfo* %309, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i8* %313, i8* null), !dbg !1038
  br label %315

; <label>:315:                                    ; preds = %308, %303
  %316 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1039
  call void @pkg_set_status(%struct.pkginfo* %316, i32 3), !dbg !1040
  store i32 3, i32* @process_archive.oldversionstatus, align 4, !dbg !1041
  %317 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1042
  call void @modstatdb_note(%struct.pkginfo* %317), !dbg !1043
  br label %318, !dbg !1044

; <label>:318:                                    ; preds = %315, %286
  %319 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1045
  call void @pkg_deconfigure_others(%struct.pkginfo* %319), !dbg !1046
  %320 = load %struct.pkg_list*, %struct.pkg_list** getelementptr inbounds (%struct.pkg_queue, %struct.pkg_queue* @conflictors, i32 0, i32 0), align 8, !dbg !1047
  store %struct.pkg_list* %320, %struct.pkg_list** %10, align 8, !dbg !1049
  br label %321, !dbg !1050

; <label>:321:                                    ; preds = %366, %318
  %322 = load %struct.pkg_list*, %struct.pkg_list** %10, align 8, !dbg !1051
  %323 = icmp ne %struct.pkg_list* %322, null, !dbg !1053
  br i1 %323, label %324, label %370, !dbg !1053

; <label>:324:                                    ; preds = %321
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %18, metadata !1055, metadata !623), !dbg !1057
  %325 = load %struct.pkg_list*, %struct.pkg_list** %10, align 8, !dbg !1058
  %326 = getelementptr inbounds %struct.pkg_list, %struct.pkg_list* %325, i32 0, i32 1, !dbg !1059
  %327 = load %struct.pkginfo*, %struct.pkginfo** %326, align 8, !dbg !1059
  store %struct.pkginfo* %327, %struct.pkginfo** %18, align 8, !dbg !1057
  %328 = load %struct.pkginfo*, %struct.pkginfo** %18, align 8, !dbg !1060
  %329 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %328, i32 0, i32 4, !dbg !1062
  %330 = load i32, i32* %329, align 8, !dbg !1062
  %331 = icmp eq i32 %330, 4, !dbg !1063
  br i1 %331, label %348, label %332, !dbg !1064

; <label>:332:                                    ; preds = %324
  %333 = load %struct.pkginfo*, %struct.pkginfo** %18, align 8, !dbg !1065
  %334 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %333, i32 0, i32 4, !dbg !1066
  %335 = load i32, i32* %334, align 8, !dbg !1066
  %336 = icmp eq i32 %335, 5, !dbg !1067
  br i1 %336, label %348, label %337, !dbg !1068

; <label>:337:                                    ; preds = %332
  %338 = load %struct.pkginfo*, %struct.pkginfo** %18, align 8, !dbg !1069
  %339 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %338, i32 0, i32 4, !dbg !1070
  %340 = load i32, i32* %339, align 8, !dbg !1070
  %341 = icmp eq i32 %340, 6, !dbg !1071
  br i1 %341, label %348, label %342, !dbg !1072

; <label>:342:                                    ; preds = %337
  %343 = load %struct.pkginfo*, %struct.pkginfo** %18, align 8, !dbg !1073
  %344 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %343, i32 0, i32 4, !dbg !1074
  %345 = load i32, i32* %344, align 8, !dbg !1074
  %346 = icmp eq i32 %345, 7, !dbg !1075
  br i1 %346, label %348, label %347, !dbg !1076

; <label>:347:                                    ; preds = %342
  br label %366, !dbg !1078

; <label>:348:                                    ; preds = %342, %337, %332, %324
  %349 = load %struct.pkginfo*, %struct.pkginfo** %18, align 8, !dbg !1079
  call void @trig_activate_packageprocessing(%struct.pkginfo* %349), !dbg !1080
  %350 = load %struct.pkginfo*, %struct.pkginfo** %18, align 8, !dbg !1081
  call void @pkg_set_status(%struct.pkginfo* %350, i32 4), !dbg !1082
  %351 = load %struct.pkginfo*, %struct.pkginfo** %18, align 8, !dbg !1083
  call void @modstatdb_note(%struct.pkginfo* %351), !dbg !1084
  %352 = load %struct.pkginfo*, %struct.pkginfo** %18, align 8, !dbg !1085
  %353 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1086
  call void (void (i32, i8**)*, i32, i32, ...) @push_cleanup(void (i32, i8**)* @cu_prerminfavour, i32 -2, i32 2, %struct.pkginfo* %352, %struct.pkginfo* %353), !dbg !1087
  %354 = load %struct.pkginfo*, %struct.pkginfo** %18, align 8, !dbg !1088
  %355 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1089
  %356 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1090
  %357 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %356, i32 0, i32 10, !dbg !1091
  %358 = call i8* @pkgbin_name(%struct.pkginfo* %355, %struct.pkgbin* %357, i32 1), !dbg !1092
  %359 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1093
  %360 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %359, i32 0, i32 10, !dbg !1094
  %361 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %360, i32 0, i32 11, !dbg !1095
  %362 = call i8* @versiondescribe(%struct.dpkg_version* %361, i32 1), !dbg !1096
  %363 = call i32 (%struct.pkginfo*, i8*, i8*, ...) @maintscript_installed(%struct.pkginfo* %354, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* %358, i8* %362, i8* null), !dbg !1097
  %364 = load %struct.pkginfo*, %struct.pkginfo** %18, align 8, !dbg !1098
  call void @pkg_set_status(%struct.pkginfo* %364, i32 2), !dbg !1099
  %365 = load %struct.pkginfo*, %struct.pkginfo** %18, align 8, !dbg !1100
  call void @modstatdb_note(%struct.pkginfo* %365), !dbg !1101
  br label %366, !dbg !1102

; <label>:366:                                    ; preds = %348, %347
  %367 = load %struct.pkg_list*, %struct.pkg_list** %10, align 8, !dbg !1103
  %368 = getelementptr inbounds %struct.pkg_list, %struct.pkg_list* %367, i32 0, i32 0, !dbg !1104
  %369 = load %struct.pkg_list*, %struct.pkg_list** %368, align 8, !dbg !1104
  store %struct.pkg_list* %369, %struct.pkg_list** %10, align 8, !dbg !1105
  br label %321, !dbg !1106, !llvm.loop !1108

; <label>:370:                                    ; preds = %321
  %371 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1110
  call void @pkg_set_eflags(%struct.pkginfo* %371, i32 1), !dbg !1111
  %372 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1112
  %373 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %372, i32 0, i32 4, !dbg !1114
  %374 = load i32, i32* %373, align 8, !dbg !1114
  %375 = icmp eq i32 %374, 0, !dbg !1115
  br i1 %375, label %376, label %392, !dbg !1116

; <label>:376:                                    ; preds = %370
  %377 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1117
  %378 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %377, i32 0, i32 9, !dbg !1119
  %379 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %378, i32 0, i32 11, !dbg !1120
  %380 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1121
  %381 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %380, i32 0, i32 10, !dbg !1122
  %382 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %381, i32 0, i32 11, !dbg !1123
  %383 = bitcast %struct.dpkg_version* %379 to i8*, !dbg !1123
  %384 = bitcast %struct.dpkg_version* %382 to i8*, !dbg !1123
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %383, i8* %384, i64 24, i32 8, i1 false), !dbg !1123
  %385 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1124
  %386 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %385, i32 0, i32 10, !dbg !1125
  %387 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %386, i32 0, i32 2, !dbg !1126
  %388 = load i32, i32* %387, align 4, !dbg !1126
  %389 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1127
  %390 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %389, i32 0, i32 9, !dbg !1128
  %391 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %390, i32 0, i32 2, !dbg !1129
  store i32 %388, i32* %391, align 4, !dbg !1130
  br label %392, !dbg !1131

; <label>:392:                                    ; preds = %376, %370
  %393 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1132
  call void @pkg_set_status(%struct.pkginfo* %393, i32 2), !dbg !1133
  %394 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1134
  call void @modstatdb_note(%struct.pkginfo* %394), !dbg !1135
  %395 = load i32, i32* @process_archive.oldversionstatus, align 4, !dbg !1136
  %396 = icmp eq i32 %395, 0, !dbg !1138
  br i1 %396, label %397, label %406, !dbg !1139

; <label>:397:                                    ; preds = %392
  %398 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1140
  %399 = bitcast %struct.pkginfo* %398 to i8*, !dbg !1142
  %400 = load i8*, i8** %11, align 8, !dbg !1143
  %401 = load i8*, i8** %12, align 8, !dbg !1144
  call void (void (i32, i8**)*, i32, i32, ...) @push_cleanup(void (i32, i8**)* @cu_preinstverynew, i32 -2, i32 3, i8* %399, i8* %400, i8* %401), !dbg !1145
  %402 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1146
  %403 = load i8*, i8** %11, align 8, !dbg !1147
  %404 = load i8*, i8** %12, align 8, !dbg !1148
  %405 = call i32 (%struct.pkginfo*, i8*, i8*, i8*, i8*, ...) @maintscript_new(%struct.pkginfo* %402, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0), i8* %403, i8* %404, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* null), !dbg !1149
  br label %444, !dbg !1150

; <label>:406:                                    ; preds = %392
  %407 = load i32, i32* @process_archive.oldversionstatus, align 4, !dbg !1151
  %408 = icmp eq i32 %407, 1, !dbg !1154
  br i1 %408, label %409, label %426, !dbg !1151

; <label>:409:                                    ; preds = %406
  %410 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1155
  %411 = bitcast %struct.pkginfo* %410 to i8*, !dbg !1157
  %412 = load i8*, i8** %11, align 8, !dbg !1158
  %413 = load i8*, i8** %12, align 8, !dbg !1159
  call void (void (i32, i8**)*, i32, i32, ...) @push_cleanup(void (i32, i8**)* @cu_preinstnew, i32 -2, i32 3, i8* %411, i8* %412, i8* %413), !dbg !1160
  %414 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1161
  %415 = load i8*, i8** %11, align 8, !dbg !1162
  %416 = load i8*, i8** %12, align 8, !dbg !1163
  %417 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1164
  %418 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %417, i32 0, i32 9, !dbg !1165
  %419 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %418, i32 0, i32 11, !dbg !1166
  %420 = call i8* @versiondescribe(%struct.dpkg_version* %419, i32 1), !dbg !1167
  %421 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1168
  %422 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %421, i32 0, i32 10, !dbg !1169
  %423 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %422, i32 0, i32 11, !dbg !1170
  %424 = call i8* @versiondescribe(%struct.dpkg_version* %423, i32 1), !dbg !1171
  %425 = call i32 (%struct.pkginfo*, i8*, i8*, i8*, i8*, ...) @maintscript_new(%struct.pkginfo* %414, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0), i8* %415, i8* %416, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* %420, i8* %424, i8* null), !dbg !1172
  br label %443, !dbg !1173

; <label>:426:                                    ; preds = %406
  %427 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1174
  %428 = bitcast %struct.pkginfo* %427 to i8*, !dbg !1176
  %429 = load i8*, i8** %11, align 8, !dbg !1177
  %430 = load i8*, i8** %12, align 8, !dbg !1178
  call void (void (i32, i8**)*, i32, i32, ...) @push_cleanup(void (i32, i8**)* @cu_preinstupgrade, i32 -2, i32 4, i8* %428, i8* %429, i8* %430, i8* bitcast (i32* @process_archive.oldversionstatus to i8*)), !dbg !1179
  %431 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1180
  %432 = load i8*, i8** %11, align 8, !dbg !1181
  %433 = load i8*, i8** %12, align 8, !dbg !1182
  %434 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1183
  %435 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %434, i32 0, i32 9, !dbg !1184
  %436 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %435, i32 0, i32 11, !dbg !1185
  %437 = call i8* @versiondescribe(%struct.dpkg_version* %436, i32 1), !dbg !1186
  %438 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1187
  %439 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %438, i32 0, i32 10, !dbg !1188
  %440 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %439, i32 0, i32 11, !dbg !1189
  %441 = call i8* @versiondescribe(%struct.dpkg_version* %440, i32 1), !dbg !1190
  %442 = call i32 (%struct.pkginfo*, i8*, i8*, i8*, i8*, ...) @maintscript_new(%struct.pkginfo* %431, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0), i8* %432, i8* %433, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i8* %437, i8* %441, i8* null), !dbg !1191
  br label %443

; <label>:443:                                    ; preds = %426, %409
  br label %444

; <label>:444:                                    ; preds = %443, %397
  %445 = load i32, i32* @process_archive.oldversionstatus, align 4, !dbg !1192
  %446 = icmp eq i32 %445, 0, !dbg !1194
  br i1 %446, label %450, label %447, !dbg !1195

; <label>:447:                                    ; preds = %444
  %448 = load i32, i32* @process_archive.oldversionstatus, align 4, !dbg !1196
  %449 = icmp eq i32 %448, 1, !dbg !1197
  br i1 %449, label %450, label %461, !dbg !1198

; <label>:450:                                    ; preds = %447, %444
  %451 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i32 0, i32 0)) #9, !dbg !1199
  %452 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1201
  %453 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1202
  %454 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %453, i32 0, i32 10, !dbg !1203
  %455 = call i8* @pkgbin_name(%struct.pkginfo* %452, %struct.pkgbin* %454, i32 1), !dbg !1204
  %456 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1205
  %457 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %456, i32 0, i32 10, !dbg !1206
  %458 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %457, i32 0, i32 11, !dbg !1207
  %459 = call i8* @versiondescribe(%struct.dpkg_version* %458, i32 1), !dbg !1208
  %460 = call i32 (i8*, ...) @printf(i8* %451, i8* %455, i8* %459), !dbg !1209
  br label %476, !dbg !1211

; <label>:461:                                    ; preds = %447
  %462 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.26, i32 0, i32 0)) #9, !dbg !1212
  %463 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1214
  %464 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1215
  %465 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %464, i32 0, i32 10, !dbg !1216
  %466 = call i8* @pkgbin_name(%struct.pkginfo* %463, %struct.pkgbin* %465, i32 1), !dbg !1217
  %467 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1218
  %468 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %467, i32 0, i32 10, !dbg !1219
  %469 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %468, i32 0, i32 11, !dbg !1220
  %470 = call i8* @versiondescribe(%struct.dpkg_version* %469, i32 1), !dbg !1221
  %471 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1222
  %472 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %471, i32 0, i32 9, !dbg !1223
  %473 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %472, i32 0, i32 11, !dbg !1224
  %474 = call i8* @versiondescribe(%struct.dpkg_version* %473, i32 1), !dbg !1225
  %475 = call i32 (i8*, ...) @printf(i8* %462, i8* %466, i8* %470, i8* %474), !dbg !1226
  br label %476

; <label>:476:                                    ; preds = %461, %450
  call void @m_pipe(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @process_archive.p1, i32 0, i32 0)), !dbg !1228
  call void (void (i32, i8**)*, i32, i32, ...) @push_cleanup(void (i32, i8**)* @cu_closepipe, i32 2, i32 1, i8* bitcast ([2 x i32]* @process_archive.p1 to i8*)), !dbg !1229
  %477 = call i32 @subproc_fork(), !dbg !1230
  store i32 %477, i32* %7, align 4, !dbg !1231
  %478 = load i32, i32* %7, align 4, !dbg !1232
  %479 = icmp eq i32 %478, 0, !dbg !1234
  br i1 %479, label %480, label %490, !dbg !1235

; <label>:480:                                    ; preds = %476
  %481 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @process_archive.p1, i64 0, i64 1), align 4, !dbg !1236
  call void @m_dup2(i32 %481, i32 1), !dbg !1238
  %482 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @process_archive.p1, i64 0, i64 0), align 4, !dbg !1239
  %483 = call i32 @close(i32 %482), !dbg !1240
  %484 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @process_archive.p1, i64 0, i64 1), align 4, !dbg !1242
  %485 = call i32 @close(i32 %484), !dbg !1243
  %486 = load i8*, i8** %2, align 8, !dbg !1245
  %487 = call i32 (i8*, i8*, ...) @execlp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i32 0, i32 0), i8* %486, i8* null) #9, !dbg !1246
  %488 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0)) #9, !dbg !1247
  %489 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.28, i32 0, i32 0)) #9, !dbg !1248
  call void (i8*, ...) @ohshite(i8* %488, i8* %489, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0)) #10, !dbg !1249
  unreachable, !dbg !1250

; <label>:490:                                    ; preds = %476
  %491 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @process_archive.p1, i64 0, i64 1), align 4, !dbg !1251
  %492 = call i32 @close(i32 %491), !dbg !1252
  store i32 -1, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @process_archive.p1, i64 0, i64 1), align 4, !dbg !1253
  %493 = getelementptr inbounds %struct.fsys_namenode_queue, %struct.fsys_namenode_queue* %16, i32 0, i32 0, !dbg !1254
  store %struct.fsys_namenode_list* null, %struct.fsys_namenode_list** %493, align 8, !dbg !1255
  %494 = getelementptr inbounds %struct.fsys_namenode_queue, %struct.fsys_namenode_queue* %16, i32 0, i32 0, !dbg !1256
  %495 = getelementptr inbounds %struct.fsys_namenode_queue, %struct.fsys_namenode_queue* %16, i32 0, i32 1, !dbg !1257
  store %struct.fsys_namenode_list** %494, %struct.fsys_namenode_list*** %495, align 8, !dbg !1258
  store %struct.fsys_namenode_queue* %16, %struct.fsys_namenode_queue** getelementptr inbounds (%struct.tarcontext, %struct.tarcontext* @process_archive.tc, i32 0, i32 2), align 8, !dbg !1259
  call void (void (i32, i8**)*, i32, i32, ...) @push_cleanup(void (i32, i8**)* @cu_fileslist, i32 -1, i32 0), !dbg !1260
  %496 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1261
  store %struct.pkginfo* %496, %struct.pkginfo** getelementptr inbounds (%struct.tarcontext, %struct.tarcontext* @process_archive.tc, i32 0, i32 1), align 8, !dbg !1262
  %497 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @process_archive.p1, i64 0, i64 0), align 4, !dbg !1263
  store i32 %497, i32* getelementptr inbounds (%struct.tarcontext, %struct.tarcontext* @process_archive.tc, i32 0, i32 0), align 8, !dbg !1264
  %498 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1265
  %499 = call zeroext i1 @pkgset_getting_in_sync(%struct.pkginfo* %498), !dbg !1266
  %500 = zext i1 %499 to i8, !dbg !1267
  store i8 %500, i8* getelementptr inbounds (%struct.tarcontext, %struct.tarcontext* @process_archive.tc, i32 0, i32 3), align 8, !dbg !1267
  %501 = getelementptr inbounds %struct.tar_archive, %struct.tar_archive* %3, i32 0, i32 0, !dbg !1268
  %502 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %19, i32 0, i32 0, !dbg !1269
  store i32 0, i32* %502, align 8, !dbg !1269
  %503 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %19, i32 0, i32 1, !dbg !1269
  store i32 0, i32* %503, align 4, !dbg !1269
  %504 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %19, i32 0, i32 2, !dbg !1269
  store i8* null, i8** %504, align 8, !dbg !1269
  %505 = bitcast %struct.dpkg_error* %501 to i8*, !dbg !1270
  %506 = bitcast %struct.dpkg_error* %19 to i8*, !dbg !1270
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %505, i8* %506, i64 16, i32 8, i1 false), !dbg !1270
  %507 = getelementptr inbounds %struct.tar_archive, %struct.tar_archive* %3, i32 0, i32 3, !dbg !1271
  store i8* bitcast (%struct.tarcontext* @process_archive.tc to i8*), i8** %507, align 8, !dbg !1272
  %508 = getelementptr inbounds %struct.tar_archive, %struct.tar_archive* %3, i32 0, i32 2, !dbg !1273
  store %struct.tar_operations* @process_archive.tf, %struct.tar_operations** %508, align 8, !dbg !1274
  %509 = call i32 @tar_extractor(%struct.tar_archive* %3), !dbg !1275
  store i32 %509, i32* %6, align 4, !dbg !1276
  %510 = load i32, i32* %6, align 4, !dbg !1277
  %511 = icmp ne i32 %510, 0, !dbg !1277
  br i1 %511, label %512, label %515, !dbg !1279

; <label>:512:                                    ; preds = %490
  %513 = getelementptr inbounds %struct.tar_archive, %struct.tar_archive* %3, i32 0, i32 0, !dbg !1280
  %514 = call i8* @gettext(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.29, i32 0, i32 0)) #9, !dbg !1281
  call void (%struct.dpkg_error*, i8*, ...) @dpkg_error_print(%struct.dpkg_error* %513, i8* %514), !dbg !1282
  br label %515, !dbg !1282

; <label>:515:                                    ; preds = %512, %490
  %516 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @process_archive.p1, i64 0, i64 0), align 4, !dbg !1283
  %517 = call i64 @buffer_skip_Int(i32 %516, i32 0, i64 -1, %struct.dpkg_error* %4), !dbg !1285
  %518 = icmp slt i64 %517, 0, !dbg !1286
  br i1 %518, label %519, label %523, !dbg !1287

; <label>:519:                                    ; preds = %515
  %520 = call i8* @gettext(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.30, i32 0, i32 0)) #9, !dbg !1288
  %521 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %4, i32 0, i32 2, !dbg !1289
  %522 = load i8*, i8** %521, align 8, !dbg !1289
  call void (i8*, ...) @ohshit(i8* %520, i8* %522) #10, !dbg !1290
  unreachable, !dbg !1292

; <label>:523:                                    ; preds = %515
  %524 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @process_archive.p1, i64 0, i64 0), align 4, !dbg !1293
  %525 = call i32 @close(i32 %524), !dbg !1294
  store i32 -1, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @process_archive.p1, i64 0, i64 0), align 4, !dbg !1295
  %526 = load i32, i32* %7, align 4, !dbg !1296
  %527 = call i32 @subproc_reap(i32 %526, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.31, i32 0, i32 0), i32 2), !dbg !1297
  %528 = getelementptr inbounds %struct.fsys_namenode_queue, %struct.fsys_namenode_queue* %16, i32 0, i32 0, !dbg !1298
  %529 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %528, align 8, !dbg !1298
  %530 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1299
  call void @tar_deferred_extract(%struct.fsys_namenode_list* %529, %struct.pkginfo* %530), !dbg !1300
  %531 = load i32, i32* @process_archive.oldversionstatus, align 4, !dbg !1301
  %532 = icmp eq i32 %531, 2, !dbg !1303
  br i1 %532, label %536, label %533, !dbg !1304

; <label>:533:                                    ; preds = %523
  %534 = load i32, i32* @process_archive.oldversionstatus, align 4, !dbg !1305
  %535 = icmp eq i32 %534, 3, !dbg !1306
  br i1 %535, label %536, label %545, !dbg !1307

; <label>:536:                                    ; preds = %533, %523
  %537 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1308
  call void @pkg_set_status(%struct.pkginfo* %537, i32 2), !dbg !1310
  %538 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1311
  call void @modstatdb_note(%struct.pkginfo* %538), !dbg !1312
  %539 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1313
  %540 = bitcast %struct.pkginfo* %539 to i8*, !dbg !1314
  call void (void (i32, i8**)*, i32, i32, ...) @push_cleanup(void (i32, i8**)* @cu_postrmupgrade, i32 -2, i32 1, i8* %540), !dbg !1315
  %541 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1316
  %542 = load i8*, i8** %11, align 8, !dbg !1317
  %543 = load i8*, i8** %12, align 8, !dbg !1318
  %544 = call i32 @maintscript_fallback(%struct.pkginfo* %541, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i32 0, i32 0), i8* %542, i8* %543, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0)), !dbg !1319
  br label %545, !dbg !1320

; <label>:545:                                    ; preds = %536, %533
  call void @push_checkpoint(i32 -3, i32 1), !dbg !1321
  %546 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1322
  call void @pkg_remove_old_files(%struct.pkginfo* %546, %struct.fsys_namenode_queue* %16, %struct.fsys_namenode_queue* %15), !dbg !1323
  %547 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1324
  %548 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1325
  %549 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %548, i32 0, i32 10, !dbg !1326
  %550 = getelementptr inbounds %struct.fsys_namenode_queue, %struct.fsys_namenode_queue* %16, i32 0, i32 0, !dbg !1327
  %551 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %550, align 8, !dbg !1327
  call void @write_filelist_except(%struct.pkginfo* %547, %struct.pkgbin* %549, %struct.fsys_namenode_list* %551, i32 0), !dbg !1328
  %552 = load i8*, i8** %12, align 8, !dbg !1329
  %553 = call i8* @strcpy(i8* %552, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0)) #9, !dbg !1330
  %554 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1331
  %555 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1332
  %556 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %555, i32 0, i32 9, !dbg !1333
  %557 = call i8* @pkg_infodb_get_file(%struct.pkginfo* %554, %struct.pkgbin* %556, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0)), !dbg !1334
  %558 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1335
  %559 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1336
  %560 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %559, i32 0, i32 9, !dbg !1337
  call void @trig_parse_ci(i8* %557, void (i8*, %struct.pkginfo*, %struct.pkgbin*, i32)* @trig_cicb_interest_delete, void (i8*, %struct.pkginfo*, %struct.pkgbin*, i32)* null, %struct.pkginfo* %558, %struct.pkgbin* %560), !dbg !1338
  %561 = load i8*, i8** %11, align 8, !dbg !1339
  %562 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1340
  %563 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1341
  %564 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %563, i32 0, i32 10, !dbg !1342
  call void @trig_parse_ci(i8* %561, void (i8*, %struct.pkginfo*, %struct.pkgbin*, i32)* @trig_cicb_interest_add, void (i8*, %struct.pkginfo*, %struct.pkgbin*, i32)* null, %struct.pkginfo* %562, %struct.pkgbin* %564), !dbg !1343
  call void @trig_file_interests_save(), !dbg !1344
  call void (i32, i8*, ...) @debug(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.34, i32 0, i32 0)), !dbg !1345
  %565 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1346
  %566 = load i8*, i8** %11, align 8, !dbg !1347
  %567 = load i8*, i8** %12, align 8, !dbg !1348
  call void @pkg_infodb_update(%struct.pkginfo* %565, i8* %566, i8* %567), !dbg !1349
  %568 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1350
  %569 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1351
  %570 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %569, i32 0, i32 10, !dbg !1352
  %571 = getelementptr inbounds %struct.fsys_namenode_queue, %struct.fsys_namenode_queue* %16, i32 0, i32 0, !dbg !1353
  %572 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %571, align 8, !dbg !1353
  call void @write_filehash_except(%struct.pkginfo* %568, %struct.pkgbin* %570, %struct.fsys_namenode_list* %572, i32 0), !dbg !1354
  %573 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1355
  call void @pkg_update_fields(%struct.pkginfo* %573, %struct.fsys_namenode_queue* %15), !dbg !1356
  %574 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1357
  %575 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %574, i32 0, i32 0, !dbg !1359
  %576 = load %struct.pkgset*, %struct.pkgset** %575, align 8, !dbg !1359
  %577 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %576, i32 0, i32 2, !dbg !1360
  store %struct.pkginfo* %577, %struct.pkginfo** %9, align 8, !dbg !1361
  br label %578, !dbg !1362

; <label>:578:                                    ; preds = %609, %545
  %579 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !1363
  %580 = icmp ne %struct.pkginfo* %579, null, !dbg !1366
  br i1 %580, label %581, label %613, !dbg !1366

; <label>:581:                                    ; preds = %578
  %582 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !1367
  %583 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1370
  %584 = icmp eq %struct.pkginfo* %582, %583, !dbg !1371
  br i1 %584, label %585, label %586, !dbg !1372

; <label>:585:                                    ; preds = %581
  br label %609, !dbg !1373

; <label>:586:                                    ; preds = %581
  %587 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !1374
  %588 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %587, i32 0, i32 9, !dbg !1376
  %589 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %588, i32 0, i32 3, !dbg !1377
  %590 = load %struct.dpkg_arch*, %struct.dpkg_arch** %589, align 8, !dbg !1377
  %591 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1378
  %592 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %591, i32 0, i32 9, !dbg !1379
  %593 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %592, i32 0, i32 3, !dbg !1380
  %594 = load %struct.dpkg_arch*, %struct.dpkg_arch** %593, align 8, !dbg !1380
  %595 = icmp ne %struct.dpkg_arch* %590, %594, !dbg !1381
  br i1 %595, label %596, label %597, !dbg !1382

; <label>:596:                                    ; preds = %586
  br label %609, !dbg !1383

; <label>:597:                                    ; preds = %586
  %598 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !1384
  %599 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %598, i32 0, i32 4, !dbg !1386
  %600 = load i32, i32* %599, align 8, !dbg !1386
  %601 = icmp ne i32 %600, 0, !dbg !1387
  br i1 %601, label %602, label %607, !dbg !1388

; <label>:602:                                    ; preds = %597
  %603 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !1389
  %604 = call i8* @pkg_name(%struct.pkginfo* %603, i32 3), !dbg !1390
  %605 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !1391
  %606 = call i8* @pkg_status_name(%struct.pkginfo* %605), !dbg !1392
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 1535, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.process_archive, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.35, i32 0, i32 0), i8* %604, i8* %606) #10, !dbg !1394
  unreachable, !dbg !1396

; <label>:607:                                    ; preds = %597
  %608 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !1397
  call void @pkg_blank(%struct.pkginfo* %608), !dbg !1398
  br label %609, !dbg !1399

; <label>:609:                                    ; preds = %607, %596, %585
  %610 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !1400
  %611 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %610, i32 0, i32 1, !dbg !1402
  %612 = load %struct.pkginfo*, %struct.pkginfo** %611, align 8, !dbg !1402
  store %struct.pkginfo* %612, %struct.pkginfo** %9, align 8, !dbg !1403
  br label %578, !dbg !1404, !llvm.loop !1405

; <label>:613:                                    ; preds = %578
  %614 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1407
  call void @pkg_disappear_others(%struct.pkginfo* %614), !dbg !1408
  %615 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1409
  %616 = getelementptr inbounds %struct.fsys_namenode_queue, %struct.fsys_namenode_queue* %16, i32 0, i32 0, !dbg !1410
  %617 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %616, align 8, !dbg !1410
  call void @pkg_remove_files_from_others(%struct.pkginfo* %615, %struct.fsys_namenode_list* %617), !dbg !1411
  %618 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1412
  call void @pkg_set_status(%struct.pkginfo* %618, i32 3), !dbg !1413
  %619 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1414
  call void @modstatdb_note(%struct.pkginfo* %619), !dbg !1415
  %620 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1416
  %621 = getelementptr inbounds %struct.fsys_namenode_queue, %struct.fsys_namenode_queue* %16, i32 0, i32 0, !dbg !1417
  %622 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %621, align 8, !dbg !1417
  call void @pkg_remove_backup_files(%struct.pkginfo* %620, %struct.fsys_namenode_list* %622), !dbg !1418
  %623 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1419
  call void @pkg_reset_eflags(%struct.pkginfo* %623), !dbg !1420
  %624 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1421
  call void @modstatdb_note(%struct.pkginfo* %624), !dbg !1422
  call void @push_checkpoint(i32 -3, i32 1), !dbg !1423
  br label %625, !dbg !1424

; <label>:625:                                    ; preds = %629, %613
  %626 = call i32 @pkg_queue_is_empty(%struct.pkg_queue* @conflictors), !dbg !1425
  %627 = icmp ne i32 %626, 0, !dbg !1426
  %628 = xor i1 %627, true, !dbg !1426
  br i1 %628, label %629, label %632, !dbg !1427

; <label>:629:                                    ; preds = %625
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %20, metadata !1428, metadata !623), !dbg !1430
  %630 = call %struct.pkginfo* @pkg_queue_pop(%struct.pkg_queue* @conflictors), !dbg !1431
  store %struct.pkginfo* %630, %struct.pkginfo** %20, align 8, !dbg !1430
  call void @ensure_allinstfiles_available(), !dbg !1432
  %631 = load %struct.pkginfo*, %struct.pkginfo** %20, align 8, !dbg !1433
  call void @removal_bulk(%struct.pkginfo* %631), !dbg !1434
  br label %625, !dbg !1435, !llvm.loop !1437

; <label>:632:                                    ; preds = %625
  %633 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !1438
  %634 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %633, i32 0, i32 6, !dbg !1440
  %635 = load i32, i32* %634, align 8, !dbg !1440
  %636 = icmp eq i32 %635, 3, !dbg !1441
  br i1 %636, label %637, label %639, !dbg !1442

; <label>:637:                                    ; preds = %632
  %638 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1443
  call void @enqueue_package_mark_seen(%struct.pkginfo* %638), !dbg !1444
  br label %639, !dbg !1444

; <label>:639:                                    ; preds = %34, %124, %172, %234, %637, %632
  ret void, !dbg !1445
}

declare i32 @tarfileread(%struct.tar_archive*, i8*, i32) #2

declare i32 @tarobject(%struct.tar_archive*, %struct.tar_entry*) #2

; Function Attrs: nounwind uwtable
define internal i8* @summarize_filename(i8*) #0 !dbg !1446 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1449, metadata !623), !dbg !1450
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1451, metadata !623), !dbg !1452
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1453, metadata !623), !dbg !1454
  %5 = load i8*, i8** %2, align 8, !dbg !1455
  store i8* %5, i8** %3, align 8, !dbg !1457
  br label %6, !dbg !1458

; <label>:6:                                      ; preds = %22, %1
  %7 = load i8*, i8** %3, align 8, !dbg !1459
  %8 = icmp ne i8* %7, null, !dbg !1459
  br i1 %8, label %9, label %17, !dbg !1461

; <label>:9:                                      ; preds = %6
  %10 = load i8*, i8** %3, align 8, !dbg !1462
  %11 = call i64 @strlen(i8* %10) #11, !dbg !1464
  %12 = icmp ugt i64 %11, 30, !dbg !1465
  br i1 %12, label %13, label %17, !dbg !1466

; <label>:13:                                     ; preds = %9
  %14 = load i8*, i8** %3, align 8, !dbg !1467
  %15 = call i8* @strchr(i8* %14, i32 47) #11, !dbg !1469
  %16 = icmp ne i8* %15, null, !dbg !1470
  br label %17

; <label>:17:                                     ; preds = %13, %9, %6
  %18 = phi i1 [ false, %9 ], [ false, %6 ], [ %16, %13 ]
  br i1 %18, label %19, label %25, !dbg !1471

; <label>:19:                                     ; preds = %17
  %20 = load i8*, i8** %3, align 8, !dbg !1473
  %21 = call i8* @strchr(i8* %20, i32 47) #11, !dbg !1474
  store i8* %21, i8** %3, align 8, !dbg !1475
  br label %22, !dbg !1476

; <label>:22:                                     ; preds = %19
  %23 = load i8*, i8** %3, align 8, !dbg !1477
  %24 = getelementptr inbounds i8, i8* %23, i32 1, !dbg !1477
  store i8* %24, i8** %3, align 8, !dbg !1477
  br label %6, !dbg !1478, !llvm.loop !1479

; <label>:25:                                     ; preds = %17
  %26 = load i8*, i8** %3, align 8, !dbg !1481
  %27 = icmp ne i8* %26, null, !dbg !1481
  br i1 %27, label %28, label %42, !dbg !1483

; <label>:28:                                     ; preds = %25
  %29 = load i8*, i8** %3, align 8, !dbg !1484
  %30 = load i8*, i8** %2, align 8, !dbg !1486
  %31 = icmp ne i8* %29, %30, !dbg !1487
  br i1 %31, label %32, label %42, !dbg !1488

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %3, align 8, !dbg !1489
  %34 = call i64 @strlen(i8* %33) #11, !dbg !1491
  %35 = add i64 %34, 5, !dbg !1492
  %36 = call i8* @nfmalloc(i64 %35), !dbg !1493
  store i8* %36, i8** %4, align 8, !dbg !1495
  %37 = load i8*, i8** %4, align 8, !dbg !1496
  %38 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0)) #9, !dbg !1497
  %39 = load i8*, i8** %3, align 8, !dbg !1498
  %40 = call i32 (i8*, i8*, ...) @sprintf(i8* %37, i8* %38, i8* %39) #9, !dbg !1499
  %41 = load i8*, i8** %4, align 8, !dbg !1500
  store i8* %41, i8** %3, align 8, !dbg !1501
  br label %44, !dbg !1502

; <label>:42:                                     ; preds = %28, %25
  %43 = load i8*, i8** %2, align 8, !dbg !1503
  store i8* %43, i8** %3, align 8, !dbg !1505
  br label %44

; <label>:44:                                     ; preds = %42, %32
  %45 = load i8*, i8** %3, align 8, !dbg !1506
  ret i8* %45, !dbg !1507
}

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #3

; Function Attrs: noreturn
declare void @ohshite(i8*, ...) #4

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

; Function Attrs: nounwind uwtable
define internal zeroext i1 @deb_reassemble(i8**, i8**) #0 !dbg !588 {
  %3 = alloca i1, align 1
  %4 = alloca i8**, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.stat, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !1508, metadata !623), !dbg !1509
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !1510, metadata !623), !dbg !1511
  call void @llvm.dbg.declare(metadata %struct.stat* %6, metadata !1512, metadata !623), !dbg !1513
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1514, metadata !623), !dbg !1515
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1516, metadata !623), !dbg !1517
  %9 = load i8*, i8** @deb_reassemble.reasmbuf, align 8, !dbg !1518
  %10 = icmp ne i8* %9, null, !dbg !1518
  br i1 %10, label %13, label %11, !dbg !1520

; <label>:11:                                     ; preds = %2
  %12 = call i8* @dpkg_db_get_path(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i32 0, i32 0)), !dbg !1521
  store i8* %12, i8** @deb_reassemble.reasmbuf, align 8, !dbg !1522
  br label %13, !dbg !1523

; <label>:13:                                     ; preds = %11, %2
  %14 = load i8*, i8** @deb_reassemble.reasmbuf, align 8, !dbg !1524
  %15 = call i32 @unlink(i8* %14) #9, !dbg !1526
  %16 = icmp ne i32 %15, 0, !dbg !1526
  br i1 %16, label %17, label %24, !dbg !1527

; <label>:17:                                     ; preds = %13
  %18 = call i32* @__errno_location() #1, !dbg !1528
  %19 = load i32, i32* %18, align 4, !dbg !1530
  %20 = icmp ne i32 %19, 2, !dbg !1531
  br i1 %20, label %21, label %24, !dbg !1532

; <label>:21:                                     ; preds = %17
  %22 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.38, i32 0, i32 0)) #9, !dbg !1533
  %23 = load i8*, i8** @deb_reassemble.reasmbuf, align 8, !dbg !1534
  call void (i8*, ...) @ohshite(i8* %22, i8* %23) #10, !dbg !1535
  unreachable, !dbg !1536

; <label>:24:                                     ; preds = %17, %13
  %25 = load i8*, i8** @deb_reassemble.reasmbuf, align 8, !dbg !1537
  call void (void (i32, i8**)*, i32, i32, ...) @push_cleanup(void (i32, i8**)* @cu_pathname, i32 -1, i32 1, i8* %25), !dbg !1538
  %26 = call i32 @subproc_fork(), !dbg !1539
  store i32 %26, i32* %8, align 4, !dbg !1540
  %27 = load i32, i32* %8, align 4, !dbg !1541
  %28 = icmp ne i32 %27, 0, !dbg !1541
  br i1 %28, label %36, label %29, !dbg !1543

; <label>:29:                                     ; preds = %24
  %30 = load i8*, i8** @deb_reassemble.reasmbuf, align 8, !dbg !1544
  %31 = load i8**, i8*** %4, align 8, !dbg !1546
  %32 = load i8*, i8** %31, align 8, !dbg !1547
  %33 = call i32 (i8*, i8*, ...) @execlp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), i8* %30, i8* %32, i8* null) #9, !dbg !1548
  %34 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0)) #9, !dbg !1549
  %35 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.41, i32 0, i32 0)) #9, !dbg !1550
  call void (i8*, ...) @ohshite(i8* %34, i8* %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i32 0, i32 0)) #10, !dbg !1551
  unreachable, !dbg !1553

; <label>:36:                                     ; preds = %24
  %37 = load i32, i32* %8, align 4, !dbg !1554
  %38 = call i32 @subproc_reap(i32 %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i32 0, i32 0), i32 8), !dbg !1555
  store i32 %38, i32* %7, align 4, !dbg !1556
  %39 = load i32, i32* %7, align 4, !dbg !1557
  switch i32 %39, label %57 [
    i32 0, label %40
    i32 1, label %56
  ], !dbg !1558

; <label>:40:                                     ; preds = %36
  %41 = load i8*, i8** @deb_reassemble.reasmbuf, align 8, !dbg !1559
  %42 = call i32 @stat(i8* %41, %struct.stat* %6) #9, !dbg !1562
  %43 = icmp ne i32 %42, 0, !dbg !1562
  br i1 %43, label %49, label %44, !dbg !1563

; <label>:44:                                     ; preds = %40
  %45 = load i8*, i8** @deb_reassemble.reasmbuf, align 8, !dbg !1564
  %46 = load i8**, i8*** %4, align 8, !dbg !1566
  store i8* %45, i8** %46, align 8, !dbg !1567
  %47 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i32 0, i32 0)) #9, !dbg !1568
  %48 = load i8**, i8*** %5, align 8, !dbg !1569
  store i8* %47, i8** %48, align 8, !dbg !1570
  br label %60, !dbg !1571

; <label>:49:                                     ; preds = %40
  %50 = call i32* @__errno_location() #1, !dbg !1572
  %51 = load i32, i32* %50, align 4, !dbg !1574
  %52 = icmp eq i32 %51, 2, !dbg !1575
  br i1 %52, label %53, label %54, !dbg !1576

; <label>:53:                                     ; preds = %49
  store i1 false, i1* %3, align 1, !dbg !1577
  br label %61, !dbg !1577

; <label>:54:                                     ; preds = %49
  br label %55

; <label>:55:                                     ; preds = %54
  br label %56, !dbg !1579

; <label>:56:                                     ; preds = %36, %55
  br label %60, !dbg !1581

; <label>:57:                                     ; preds = %36
  %58 = call i8* @gettext(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.43, i32 0, i32 0)) #9, !dbg !1582
  %59 = load i32, i32* %7, align 4, !dbg !1583
  call void (i8*, ...) @ohshit(i8* %58, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i32 0, i32 0), i32 %59) #10, !dbg !1584
  unreachable, !dbg !1586

; <label>:60:                                     ; preds = %56, %44
  store i1 true, i1* %3, align 1, !dbg !1587
  br label %61, !dbg !1587

; <label>:61:                                     ; preds = %60, %53
  %62 = load i1, i1* %3, align 1, !dbg !1588
  ret i1 %62, !dbg !1588
}

; Function Attrs: nounwind uwtable
define internal void @deb_verify(i8*) #0 !dbg !1589 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %union.anon, align 4
  %6 = alloca %union.anon.3, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1590, metadata !623), !dbg !1591
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1592, metadata !623), !dbg !1593
  %7 = call zeroext i1 @find_command(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0)), !dbg !1594
  br i1 %7, label %9, label %8, !dbg !1596

; <label>:8:                                      ; preds = %1
  br label %53, !dbg !1597

; <label>:9:                                      ; preds = %1
  %10 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.45, i32 0, i32 0)) #9, !dbg !1598
  %11 = load i8*, i8** %2, align 8, !dbg !1599
  %12 = call i32 (i8*, ...) @printf(i8* %10, i8* %11), !dbg !1600
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1602
  %14 = call i32 @fflush(%struct._IO_FILE* %13), !dbg !1603
  %15 = call i32 @subproc_fork(), !dbg !1604
  store i32 %15, i32* %3, align 4, !dbg !1605
  %16 = load i32, i32* %3, align 4, !dbg !1606
  %17 = icmp ne i32 %16, 0, !dbg !1606
  br i1 %17, label %23, label %18, !dbg !1608

; <label>:18:                                     ; preds = %9
  %19 = load i8*, i8** %2, align 8, !dbg !1609
  %20 = call i32 (i8*, i8*, ...) @execlp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i32 0, i32 0), i8* %19, i8* null) #9, !dbg !1611
  %21 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0)) #9, !dbg !1612
  %22 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.47, i32 0, i32 0)) #9, !dbg !1613
  call void (i8*, ...) @ohshite(i8* %21, i8* %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0)) #10, !dbg !1614
  unreachable, !dbg !1616

; <label>:23:                                     ; preds = %9
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1617, metadata !623), !dbg !1619
  %24 = load i32, i32* %3, align 4, !dbg !1620
  %25 = call i32 @subproc_reap(i32 %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0), i32 4), !dbg !1621
  store i32 %25, i32* %4, align 4, !dbg !1622
  %26 = bitcast %union.anon* %5 to i32*, !dbg !1623
  %27 = load i32, i32* %4, align 4, !dbg !1625
  store i32 %27, i32* %26, align 4, !dbg !1623
  %28 = bitcast %union.anon* %5 to i32*, !dbg !1626
  %29 = load i32, i32* %28, align 4, !dbg !1626
  %30 = and i32 %29, 127, !dbg !1627
  %31 = icmp eq i32 %30, 0, !dbg !1623
  br i1 %31, label %32, label %40, !dbg !1628

; <label>:32:                                     ; preds = %23
  %33 = bitcast %union.anon.3* %6 to i32*, !dbg !1629
  %34 = load i32, i32* %4, align 4, !dbg !1631
  store i32 %34, i32* %33, align 4, !dbg !1629
  %35 = bitcast %union.anon.3* %6 to i32*, !dbg !1632
  %36 = load i32, i32* %35, align 4, !dbg !1632
  %37 = and i32 %36, 65280, !dbg !1633
  %38 = ashr i32 %37, 8, !dbg !1634
  %39 = icmp eq i32 %38, 0, !dbg !1629
  br i1 %39, label %49, label %40, !dbg !1635

; <label>:40:                                     ; preds = %32, %23
  %41 = call zeroext i1 @in_force(i32 4), !dbg !1636
  br i1 %41, label %45, label %42, !dbg !1639

; <label>:42:                                     ; preds = %40
  %43 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.48, i32 0, i32 0)) #9, !dbg !1640
  %44 = load i8*, i8** %2, align 8, !dbg !1641
  call void (i8*, ...) @ohshit(i8* %43, i8* %44) #10, !dbg !1642
  unreachable, !dbg !1644

; <label>:45:                                     ; preds = %40
  %46 = call i8* @gettext(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.49, i32 0, i32 0)) #9, !dbg !1645
  %47 = load i8*, i8** %2, align 8, !dbg !1646
  call void (i8*, ...) @notice(i8* %46, i8* %47), !dbg !1647
  br label %48

; <label>:48:                                     ; preds = %45
  br label %52, !dbg !1648

; <label>:49:                                     ; preds = %32
  %50 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i32 0, i32 0)) #9, !dbg !1649
  %51 = call i32 (i8*, ...) @printf(i8* %50), !dbg !1651
  br label %52

; <label>:52:                                     ; preds = %49, %48
  br label %53

; <label>:53:                                     ; preds = %8, %52
  ret void, !dbg !1653
}

; Function Attrs: nounwind uwtable
define internal i8* @get_control_dir(i8*) #0 !dbg !1654 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1657, metadata !623), !dbg !1658
  %5 = load i32, i32* @f_noact, align 4, !dbg !1659
  %6 = icmp ne i32 %5, 0, !dbg !1659
  br i1 %6, label %7, label %25, !dbg !1661

; <label>:7:                                      ; preds = %1
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1662, metadata !623), !dbg !1664
  %8 = call i8* @path_make_temp_template(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0)), !dbg !1665
  %9 = call i8* @mkdtemp(i8* %8) #9, !dbg !1666
  store i8* %9, i8** %3, align 8, !dbg !1668
  %10 = load i8*, i8** %3, align 8, !dbg !1669
  %11 = icmp eq i8* %10, null, !dbg !1671
  br i1 %11, label %12, label %14, !dbg !1672

; <label>:12:                                     ; preds = %7
  %13 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.52, i32 0, i32 0)) #9, !dbg !1673
  call void (i8*, ...) @ohshite(i8* %13) #10, !dbg !1674
  unreachable, !dbg !1676

; <label>:14:                                     ; preds = %7
  %15 = load i8*, i8** %2, align 8, !dbg !1677
  %16 = load i8*, i8** %3, align 8, !dbg !1678
  %17 = call i64 @strlen(i8* %16) #11, !dbg !1679
  %18 = add i64 %17, 100, !dbg !1680
  %19 = add i64 %18, 10, !dbg !1681
  %20 = call i8* @m_realloc(i8* %15, i64 %19), !dbg !1682
  store i8* %20, i8** %2, align 8, !dbg !1683
  %21 = load i8*, i8** %2, align 8, !dbg !1684
  %22 = load i8*, i8** %3, align 8, !dbg !1685
  %23 = call i8* @strcpy(i8* %21, i8* %22) #9, !dbg !1686
  %24 = load i8*, i8** %3, align 8, !dbg !1687
  call void @free(i8* %24) #9, !dbg !1688
  br label %43, !dbg !1689

; <label>:25:                                     ; preds = %1
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1690, metadata !623), !dbg !1692
  %26 = call i8* @dpkg_db_get_dir(), !dbg !1693
  store i8* %26, i8** %4, align 8, !dbg !1694
  %27 = load i8*, i8** %2, align 8, !dbg !1695
  %28 = icmp eq i8* %27, null, !dbg !1697
  br i1 %28, label %29, label %36, !dbg !1698

; <label>:29:                                     ; preds = %25
  %30 = load i8*, i8** %4, align 8, !dbg !1699
  %31 = call i64 @strlen(i8* %30) #11, !dbg !1700
  %32 = add i64 %31, 7, !dbg !1701
  %33 = add i64 %32, 100, !dbg !1702
  %34 = add i64 %33, 10, !dbg !1703
  %35 = call i8* @m_malloc(i64 %34), !dbg !1704
  store i8* %35, i8** %2, align 8, !dbg !1706
  br label %36, !dbg !1707

; <label>:36:                                     ; preds = %29, %25
  %37 = load i8*, i8** %2, align 8, !dbg !1708
  %38 = load i8*, i8** %4, align 8, !dbg !1709
  %39 = call i8* @strcpy(i8* %37, i8* %38) #9, !dbg !1710
  %40 = load i8*, i8** %2, align 8, !dbg !1711
  %41 = call i8* @strcat(i8* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0)) #9, !dbg !1712
  %42 = load i8*, i8** %2, align 8, !dbg !1713
  call void @path_remove_tree(i8* %42), !dbg !1714
  br label %43

; <label>:43:                                     ; preds = %36, %14
  %44 = load i8*, i8** %2, align 8, !dbg !1715
  %45 = call i8* @strcat(i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i32 0, i32 0)) #9, !dbg !1716
  %46 = load i8*, i8** %2, align 8, !dbg !1717
  ret i8* %46, !dbg !1718
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

declare void @push_cleanup(void (i32, i8**)*, i32, i32, ...) #2

declare void @cu_cidir(i32, i8**) #2

declare i32 @subproc_fork() #2

; Function Attrs: nounwind
declare i32 @execlp(i8*, i8*, ...) #3

declare i32 @subproc_reap(i32, i8*, i32) #2

declare void @dir_sync_contents(i8*) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

declare zeroext i1 @in_force(i32) #2

declare i32 @parsedb(i8*, i32, %struct.pkginfo**) #2

declare i8* @nfmalloc(i64) #2

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

declare i32 @printf(i8*, ...) #2

declare i8* @pkgbin_name(%struct.pkginfo*, %struct.pkgbin*, i32) #2

declare void @pop_cleanup(i32) #2

declare void @forcibleerr(i32, i8*, ...) #2

declare %struct.dpkg_arch* @dpkg_arch_get(i32) #2

declare void @clear_deconfigure_queue() #2

declare void @clear_istobes() #2

declare zeroext i1 @wanttoinstall(%struct.pkginfo*) #2

declare void @pkg_set_want(%struct.pkginfo*, i32) #2

declare i32 @dpkg_version_compare(%struct.dpkg_version*, %struct.dpkg_version*) #2

declare void @enqueue_deconfigure(%struct.pkginfo*, %struct.pkginfo*) #2

; Function Attrs: nounwind uwtable
define internal void @pkg_check_depcon(%struct.pkginfo*, i8*) #0 !dbg !593 {
  %3 = alloca %struct.pkginfo*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dependency*, align 8
  %6 = alloca %struct.deppossi*, align 8
  %7 = alloca %struct.pkginfo*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %3, metadata !1719, metadata !623), !dbg !1720
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1721, metadata !623), !dbg !1722
  call void @llvm.dbg.declare(metadata %struct.dependency** %5, metadata !1723, metadata !623), !dbg !1724
  call void @llvm.dbg.declare(metadata %struct.deppossi** %6, metadata !1725, metadata !623), !dbg !1726
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %7, metadata !1727, metadata !623), !dbg !1728
  %8 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !1729
  call void @ensure_package_clientdata(%struct.pkginfo* %8), !dbg !1730
  %9 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !1731
  %10 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %9, i32 0, i32 11, !dbg !1732
  %11 = load %struct.perpackagestate*, %struct.perpackagestate** %10, align 8, !dbg !1732
  %12 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %11, i32 0, i32 0, !dbg !1733
  store i32 2, i32* %12, align 8, !dbg !1734
  %13 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !1735
  %14 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %13, i32 0, i32 10, !dbg !1737
  %15 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %14, i32 0, i32 0, !dbg !1738
  %16 = load %struct.dependency*, %struct.dependency** %15, align 8, !dbg !1738
  store %struct.dependency* %16, %struct.dependency** %5, align 8, !dbg !1739
  br label %17, !dbg !1740

; <label>:17:                                     ; preds = %108, %2
  %18 = load %struct.dependency*, %struct.dependency** %5, align 8, !dbg !1741
  %19 = icmp ne %struct.dependency* %18, null, !dbg !1744
  br i1 %19, label %20, label %112, !dbg !1744

; <label>:20:                                     ; preds = %17
  %21 = load %struct.dependency*, %struct.dependency** %5, align 8, !dbg !1745
  %22 = getelementptr inbounds %struct.dependency, %struct.dependency* %21, i32 0, i32 3, !dbg !1747
  %23 = load i32, i32* %22, align 8, !dbg !1747
  switch i32 %23, label %107 [
    i32 5, label %24
    i32 4, label %28
    i32 6, label %32
    i32 0, label %63
    i32 1, label %63
    i32 2, label %63
    i32 7, label %63
    i32 8, label %63
    i32 3, label %64
  ], !dbg !1748

; <label>:24:                                     ; preds = %20
  %25 = load %struct.dependency*, %struct.dependency** %5, align 8, !dbg !1749
  %26 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !1751
  %27 = load i8*, i8** %4, align 8, !dbg !1752
  call void @check_conflict(%struct.dependency* %25, %struct.pkginfo* %26, i8* %27), !dbg !1753
  br label %107, !dbg !1754

; <label>:28:                                     ; preds = %20
  %29 = load %struct.dependency*, %struct.dependency** %5, align 8, !dbg !1755
  %30 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !1756
  %31 = load i8*, i8** %4, align 8, !dbg !1757
  call void @check_breaks(%struct.dependency* %29, %struct.pkginfo* %30, i8* %31), !dbg !1758
  br label %107, !dbg !1759

; <label>:32:                                     ; preds = %20
  %33 = load %struct.dependency*, %struct.dependency** %5, align 8, !dbg !1760
  %34 = getelementptr inbounds %struct.dependency, %struct.dependency* %33, i32 0, i32 2, !dbg !1762
  %35 = load %struct.deppossi*, %struct.deppossi** %34, align 8, !dbg !1762
  %36 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %35, i32 0, i32 1, !dbg !1763
  %37 = load %struct.pkgset*, %struct.pkgset** %36, align 8, !dbg !1763
  %38 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %37, i32 0, i32 3, !dbg !1764
  %39 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %38, i32 0, i32 1, !dbg !1765
  %40 = load %struct.deppossi*, %struct.deppossi** %39, align 8, !dbg !1765
  store %struct.deppossi* %40, %struct.deppossi** %6, align 8, !dbg !1766
  br label %41, !dbg !1767

; <label>:41:                                     ; preds = %58, %32
  %42 = load %struct.deppossi*, %struct.deppossi** %6, align 8, !dbg !1768
  %43 = icmp ne %struct.deppossi* %42, null, !dbg !1770
  br i1 %43, label %44, label %62, !dbg !1770

; <label>:44:                                     ; preds = %41
  %45 = load %struct.deppossi*, %struct.deppossi** %6, align 8, !dbg !1772
  %46 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %45, i32 0, i32 0, !dbg !1775
  %47 = load %struct.dependency*, %struct.dependency** %46, align 8, !dbg !1775
  %48 = getelementptr inbounds %struct.dependency, %struct.dependency* %47, i32 0, i32 3, !dbg !1776
  %49 = load i32, i32* %48, align 8, !dbg !1776
  %50 = icmp ne i32 %49, 5, !dbg !1777
  br i1 %50, label %51, label %52, !dbg !1778

; <label>:51:                                     ; preds = %44
  br label %58, !dbg !1779

; <label>:52:                                     ; preds = %44
  %53 = load %struct.deppossi*, %struct.deppossi** %6, align 8, !dbg !1780
  %54 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %53, i32 0, i32 0, !dbg !1781
  %55 = load %struct.dependency*, %struct.dependency** %54, align 8, !dbg !1781
  %56 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !1782
  %57 = load i8*, i8** %4, align 8, !dbg !1783
  call void @check_conflict(%struct.dependency* %55, %struct.pkginfo* %56, i8* %57), !dbg !1784
  br label %58, !dbg !1785

; <label>:58:                                     ; preds = %52, %51
  %59 = load %struct.deppossi*, %struct.deppossi** %6, align 8, !dbg !1786
  %60 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %59, i32 0, i32 3, !dbg !1787
  %61 = load %struct.deppossi*, %struct.deppossi** %60, align 8, !dbg !1787
  store %struct.deppossi* %61, %struct.deppossi** %6, align 8, !dbg !1788
  br label %41, !dbg !1789, !llvm.loop !1791

; <label>:62:                                     ; preds = %41
  br label %107, !dbg !1793

; <label>:63:                                     ; preds = %20, %20, %20, %20, %20
  br label %107, !dbg !1794

; <label>:64:                                     ; preds = %20
  %65 = load %struct.dependency*, %struct.dependency** %5, align 8, !dbg !1795
  %66 = call zeroext i1 @depisok(%struct.dependency* %65, %struct.varbuf* @pkg_check_depcon.depprobwhy, %struct.pkginfo** null, %struct.pkginfo** %7, i1 zeroext true), !dbg !1797
  br i1 %66, label %106, label %67, !dbg !1798

; <label>:67:                                     ; preds = %64
  %68 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1799
  %69 = icmp ne %struct.pkginfo* %68, null, !dbg !1799
  br i1 %69, label %70, label %85, !dbg !1802

; <label>:70:                                     ; preds = %67
  br label %71, !dbg !1803

; <label>:71:                                     ; preds = %77, %70
  %72 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1805
  %73 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %72, i32 0, i32 13, !dbg !1807
  %74 = getelementptr inbounds %struct.anon, %struct.anon* %73, i32 0, i32 0, !dbg !1808
  %75 = load %struct.trigaw*, %struct.trigaw** %74, align 8, !dbg !1808
  %76 = icmp ne %struct.trigaw* %75, null, !dbg !1809
  br i1 %76, label %77, label %84, !dbg !1809

; <label>:77:                                     ; preds = %71
  %78 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1810
  %79 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %78, i32 0, i32 13, !dbg !1811
  %80 = getelementptr inbounds %struct.anon, %struct.anon* %79, i32 0, i32 0, !dbg !1812
  %81 = load %struct.trigaw*, %struct.trigaw** %80, align 8, !dbg !1812
  %82 = getelementptr inbounds %struct.trigaw, %struct.trigaw* %81, i32 0, i32 1, !dbg !1813
  %83 = load %struct.pkginfo*, %struct.pkginfo** %82, align 8, !dbg !1813
  call void @trigproc(%struct.pkginfo* %83, i32 2), !dbg !1814
  br label %71, !dbg !1815, !llvm.loop !1817

; <label>:84:                                     ; preds = %71
  br label %105, !dbg !1818

; <label>:85:                                     ; preds = %67
  call void @varbuf_end_str(%struct.varbuf* @pkg_check_depcon.depprobwhy), !dbg !1819
  %86 = call i8* @gettext(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.55, i32 0, i32 0)) #9, !dbg !1821
  %87 = load i8*, i8** %4, align 8, !dbg !1822
  %88 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !1823
  %89 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !1824
  %90 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %89, i32 0, i32 10, !dbg !1825
  %91 = call i8* @pkgbin_name(%struct.pkginfo* %88, %struct.pkgbin* %90, i32 1), !dbg !1826
  %92 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @pkg_check_depcon.depprobwhy, i32 0, i32 2), align 8, !dbg !1827
  call void (i8*, ...) @notice(i8* %86, i8* %87, i8* %91, i8* %92), !dbg !1828
  %93 = load %struct.dependency*, %struct.dependency** %5, align 8, !dbg !1830
  %94 = getelementptr inbounds %struct.dependency, %struct.dependency* %93, i32 0, i32 2, !dbg !1832
  %95 = load %struct.deppossi*, %struct.deppossi** %94, align 8, !dbg !1832
  %96 = call zeroext i1 @force_depends(%struct.deppossi* %95), !dbg !1833
  br i1 %96, label %103, label %97, !dbg !1834

; <label>:97:                                     ; preds = %85
  %98 = call i8* @gettext(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.56, i32 0, i32 0)) #9, !dbg !1835
  %99 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !1836
  %100 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !1837
  %101 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %100, i32 0, i32 10, !dbg !1838
  %102 = call i8* @pkgbin_name(%struct.pkginfo* %99, %struct.pkgbin* %101, i32 1), !dbg !1839
  call void (i8*, ...) @ohshit(i8* %98, i8* %102) #10, !dbg !1840
  unreachable, !dbg !1842

; <label>:103:                                    ; preds = %85
  %104 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.57, i32 0, i32 0)) #9, !dbg !1843
  call void (i8*, ...) @warning(i8* %104), !dbg !1844
  br label %105

; <label>:105:                                    ; preds = %103, %84
  br label %106, !dbg !1845

; <label>:106:                                    ; preds = %105, %64
  br label %107, !dbg !1846

; <label>:107:                                    ; preds = %106, %20, %63, %62, %28, %24
  br label %108, !dbg !1847

; <label>:108:                                    ; preds = %107
  %109 = load %struct.dependency*, %struct.dependency** %5, align 8, !dbg !1848
  %110 = getelementptr inbounds %struct.dependency, %struct.dependency* %109, i32 0, i32 1, !dbg !1850
  %111 = load %struct.dependency*, %struct.dependency** %110, align 8, !dbg !1850
  store %struct.dependency* %111, %struct.dependency** %5, align 8, !dbg !1851
  br label %17, !dbg !1852, !llvm.loop !1853

; <label>:112:                                    ; preds = %17
  %113 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !1855
  %114 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %113, i32 0, i32 0, !dbg !1857
  %115 = load %struct.pkgset*, %struct.pkgset** %114, align 8, !dbg !1857
  %116 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %115, i32 0, i32 3, !dbg !1858
  %117 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %116, i32 0, i32 1, !dbg !1859
  %118 = load %struct.deppossi*, %struct.deppossi** %117, align 8, !dbg !1859
  store %struct.deppossi* %118, %struct.deppossi** %6, align 8, !dbg !1860
  br label %119, !dbg !1861

; <label>:119:                                    ; preds = %136, %112
  %120 = load %struct.deppossi*, %struct.deppossi** %6, align 8, !dbg !1862
  %121 = icmp ne %struct.deppossi* %120, null, !dbg !1865
  br i1 %121, label %122, label %140, !dbg !1865

; <label>:122:                                    ; preds = %119
  %123 = load %struct.deppossi*, %struct.deppossi** %6, align 8, !dbg !1866
  %124 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %123, i32 0, i32 0, !dbg !1869
  %125 = load %struct.dependency*, %struct.dependency** %124, align 8, !dbg !1869
  %126 = getelementptr inbounds %struct.dependency, %struct.dependency* %125, i32 0, i32 3, !dbg !1870
  %127 = load i32, i32* %126, align 8, !dbg !1870
  %128 = icmp ne i32 %127, 5, !dbg !1871
  br i1 %128, label %129, label %130, !dbg !1872

; <label>:129:                                    ; preds = %122
  br label %136, !dbg !1873

; <label>:130:                                    ; preds = %122
  %131 = load %struct.deppossi*, %struct.deppossi** %6, align 8, !dbg !1874
  %132 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %131, i32 0, i32 0, !dbg !1875
  %133 = load %struct.dependency*, %struct.dependency** %132, align 8, !dbg !1875
  %134 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !1876
  %135 = load i8*, i8** %4, align 8, !dbg !1877
  call void @check_conflict(%struct.dependency* %133, %struct.pkginfo* %134, i8* %135), !dbg !1878
  br label %136, !dbg !1879

; <label>:136:                                    ; preds = %130, %129
  %137 = load %struct.deppossi*, %struct.deppossi** %6, align 8, !dbg !1880
  %138 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %137, i32 0, i32 3, !dbg !1882
  %139 = load %struct.deppossi*, %struct.deppossi** %138, align 8, !dbg !1882
  store %struct.deppossi* %139, %struct.deppossi** %6, align 8, !dbg !1883
  br label %119, !dbg !1884, !llvm.loop !1885

; <label>:140:                                    ; preds = %119
  ret void, !dbg !1887
}

declare void @ensure_allinstfiles_available() #2

declare void @fsys_hash_init() #2

declare void @trig_file_interests_ensure() #2

declare void @log_action(i8*, %struct.pkginfo*, %struct.pkgbin*) #2

declare void @trig_activate_packageprocessing(%struct.pkginfo*) #2

declare void @trig_parse_ci(i8*, void (i8*, %struct.pkginfo*, %struct.pkgbin*, i32)*, void (i8*, %struct.pkginfo*, %struct.pkgbin*, i32)*, %struct.pkginfo*, %struct.pkgbin*) #2

declare void @trig_cicb_statuschange_activate(i8*, %struct.pkginfo*, %struct.pkgbin*, i32) #2

declare void @cu_fileslist(i32, i8**) #2

; Function Attrs: nounwind uwtable
define internal void @deb_parse_conffiles(%struct.pkginfo*, i8*, %struct.fsys_namenode_queue*) #0 !dbg !1888 {
  %4 = alloca %struct.pkginfo*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.fsys_namenode_queue*, align 8
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca [1000 x i8], align 16
  %9 = alloca %struct.pkginfo*, align 8
  %10 = alloca %struct.fsys_node_pkgs_iter*, align 8
  %11 = alloca %struct.fsys_namenode*, align 8
  %12 = alloca %struct.fsys_namenode_list*, align 8
  %13 = alloca %struct.conffile*, align 8
  %14 = alloca i8*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %4, metadata !1891, metadata !623), !dbg !1892
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1893, metadata !623), !dbg !1894
  store %struct.fsys_namenode_queue* %2, %struct.fsys_namenode_queue** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode_queue** %6, metadata !1895, metadata !623), !dbg !1896
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %7, metadata !1897, metadata !623), !dbg !1951
  call void @llvm.dbg.declare(metadata [1000 x i8]* %8, metadata !1952, metadata !623), !dbg !1956
  %15 = load i8*, i8** %5, align 8, !dbg !1957
  %16 = call %struct._IO_FILE* @fopen(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i32 0, i32 0)), !dbg !1958
  store %struct._IO_FILE* %16, %struct._IO_FILE** %7, align 8, !dbg !1959
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !1960
  %18 = icmp eq %struct._IO_FILE* %17, null, !dbg !1962
  br i1 %18, label %19, label %27, !dbg !1963

; <label>:19:                                     ; preds = %3
  %20 = call i32* @__errno_location() #1, !dbg !1964
  %21 = load i32, i32* %20, align 4, !dbg !1967
  %22 = icmp eq i32 %21, 2, !dbg !1968
  br i1 %22, label %23, label %24, !dbg !1969

; <label>:23:                                     ; preds = %19
  br label %197, !dbg !1970

; <label>:24:                                     ; preds = %19
  %25 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.59, i32 0, i32 0)) #9, !dbg !1971
  %26 = load i8*, i8** %5, align 8, !dbg !1972
  call void (i8*, ...) @ohshite(i8* %25, i8* %26) #10, !dbg !1973
  unreachable, !dbg !1975

; <label>:27:                                     ; preds = %3
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !1976
  call void (void (i32, i8**)*, i32, i32, ...) @push_cleanup(void (i32, i8**)* @cu_closestream, i32 2, i32 1, %struct._IO_FILE* %28), !dbg !1977
  br label %29, !dbg !1978

; <label>:29:                                     ; preds = %176, %73, %27
  %30 = getelementptr inbounds [1000 x i8], [1000 x i8]* %8, i32 0, i32 0, !dbg !1979
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !1981
  %32 = call i8* @fgets(i8* %30, i32 998, %struct._IO_FILE* %31), !dbg !1982
  %33 = icmp ne i8* %32, null, !dbg !1983
  br i1 %33, label %34, label %183, !dbg !1983

; <label>:34:                                     ; preds = %29
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %9, metadata !1984, metadata !623), !dbg !1986
  call void @llvm.dbg.declare(metadata %struct.fsys_node_pkgs_iter** %10, metadata !1987, metadata !623), !dbg !1990
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %11, metadata !1991, metadata !623), !dbg !1992
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode_list** %12, metadata !1993, metadata !623), !dbg !1994
  call void @llvm.dbg.declare(metadata %struct.conffile** %13, metadata !1995, metadata !623), !dbg !1996
  call void @llvm.dbg.declare(metadata i8** %14, metadata !1997, metadata !623), !dbg !1998
  %35 = getelementptr inbounds [1000 x i8], [1000 x i8]* %8, i32 0, i32 0, !dbg !1999
  %36 = getelementptr inbounds [1000 x i8], [1000 x i8]* %8, i32 0, i32 0, !dbg !2000
  %37 = call i64 @strlen(i8* %36) #11, !dbg !2001
  %38 = getelementptr inbounds i8, i8* %35, i64 %37, !dbg !2002
  store i8* %38, i8** %14, align 8, !dbg !2003
  %39 = load i8*, i8** %14, align 8, !dbg !2004
  %40 = getelementptr inbounds [1000 x i8], [1000 x i8]* %8, i32 0, i32 0, !dbg !2006
  %41 = icmp eq i8* %39, %40, !dbg !2007
  br i1 %41, label %42, label %44, !dbg !2008

; <label>:42:                                     ; preds = %34
  %43 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.60, i32 0, i32 0)) #9, !dbg !2009
  call void (i8*, ...) @ohshit(i8* %43) #10, !dbg !2010
  unreachable, !dbg !2012

; <label>:44:                                     ; preds = %34
  %45 = load i8*, i8** %14, align 8, !dbg !2013
  %46 = getelementptr inbounds i8, i8* %45, i64 -1, !dbg !2013
  %47 = load i8, i8* %46, align 1, !dbg !2013
  %48 = sext i8 %47 to i32, !dbg !2013
  %49 = icmp ne i32 %48, 10, !dbg !2015
  br i1 %49, label %50, label %53, !dbg !2016

; <label>:50:                                     ; preds = %44
  %51 = call i8* @gettext(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.61, i32 0, i32 0)) #9, !dbg !2017
  %52 = getelementptr inbounds [1000 x i8], [1000 x i8]* %8, i32 0, i32 0, !dbg !2018
  call void (i8*, ...) @ohshit(i8* %51, i8* %52) #10, !dbg !2019
  unreachable, !dbg !2021

; <label>:53:                                     ; preds = %44
  br label %54, !dbg !2022

; <label>:54:                                     ; preds = %66, %53
  %55 = load i8*, i8** %14, align 8, !dbg !2023
  %56 = getelementptr inbounds [1000 x i8], [1000 x i8]* %8, i32 0, i32 0, !dbg !2025
  %57 = icmp ugt i8* %55, %56, !dbg !2026
  br i1 %57, label %58, label %64, !dbg !2027

; <label>:58:                                     ; preds = %54
  %59 = load i8*, i8** %14, align 8, !dbg !2028
  %60 = getelementptr inbounds i8, i8* %59, i64 -1, !dbg !2028
  %61 = load i8, i8* %60, align 1, !dbg !2028
  %62 = sext i8 %61 to i32, !dbg !2028
  %63 = call zeroext i1 @c_isspace(i32 %62), !dbg !2030
  br label %64

; <label>:64:                                     ; preds = %58, %54
  %65 = phi i1 [ false, %54 ], [ %63, %58 ]
  br i1 %65, label %66, label %69, !dbg !2031

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %14, align 8, !dbg !2033
  %68 = getelementptr inbounds i8, i8* %67, i32 -1, !dbg !2033
  store i8* %68, i8** %14, align 8, !dbg !2033
  br label %54, !dbg !2034, !llvm.loop !2036

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %14, align 8, !dbg !2037
  %71 = getelementptr inbounds [1000 x i8], [1000 x i8]* %8, i32 0, i32 0, !dbg !2039
  %72 = icmp eq i8* %70, %71, !dbg !2040
  br i1 %72, label %73, label %74, !dbg !2041

; <label>:73:                                     ; preds = %69
  br label %29, !dbg !2042, !llvm.loop !2043

; <label>:74:                                     ; preds = %69
  %75 = load i8*, i8** %14, align 8, !dbg !2044
  store i8 0, i8* %75, align 1, !dbg !2045
  %76 = getelementptr inbounds [1000 x i8], [1000 x i8]* %8, i32 0, i32 0, !dbg !2046
  %77 = call %struct.fsys_namenode* @fsys_hash_find_node(i8* %76, i32 0), !dbg !2047
  store %struct.fsys_namenode* %77, %struct.fsys_namenode** %11, align 8, !dbg !2048
  %78 = load %struct.fsys_namenode*, %struct.fsys_namenode** %11, align 8, !dbg !2049
  %79 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %78, i32 0, i32 7, !dbg !2050
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.62, i32 0, i32 0), i8** %79, align 8, !dbg !2051
  %80 = load %struct.fsys_namenode_queue*, %struct.fsys_namenode_queue** %6, align 8, !dbg !2052
  %81 = load %struct.fsys_namenode*, %struct.fsys_namenode** %11, align 8, !dbg !2053
  %82 = call %struct.fsys_namenode_list* @tar_fsys_namenode_queue_push(%struct.fsys_namenode_queue* %80, %struct.fsys_namenode* %81), !dbg !2054
  store %struct.fsys_namenode_list* %82, %struct.fsys_namenode_list** %12, align 8, !dbg !2055
  store %struct.conffile* null, %struct.conffile** %13, align 8, !dbg !2056
  %83 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %12, align 8, !dbg !2057
  %84 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %83, i32 0, i32 1, !dbg !2058
  %85 = load %struct.fsys_namenode*, %struct.fsys_namenode** %84, align 8, !dbg !2058
  %86 = call %struct.fsys_node_pkgs_iter* @fsys_node_pkgs_iter_new(%struct.fsys_namenode* %85), !dbg !2059
  store %struct.fsys_node_pkgs_iter* %86, %struct.fsys_node_pkgs_iter** %10, align 8, !dbg !2060
  br label %87, !dbg !2061

; <label>:87:                                     ; preds = %157, %74
  %88 = load %struct.fsys_node_pkgs_iter*, %struct.fsys_node_pkgs_iter** %10, align 8, !dbg !2062
  %89 = call %struct.pkginfo* @fsys_node_pkgs_iter_next(%struct.fsys_node_pkgs_iter* %88), !dbg !2063
  store %struct.pkginfo* %89, %struct.pkginfo** %9, align 8, !dbg !2064
  %90 = icmp ne %struct.pkginfo* %89, null, !dbg !2065
  br i1 %90, label %91, label %158, !dbg !2065

; <label>:91:                                     ; preds = %87
  %92 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %12, align 8, !dbg !2066
  %93 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %92, i32 0, i32 1, !dbg !2068
  %94 = load %struct.fsys_namenode*, %struct.fsys_namenode** %93, align 8, !dbg !2068
  %95 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %94, i32 0, i32 1, !dbg !2069
  %96 = load i8*, i8** %95, align 8, !dbg !2069
  %97 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !2070
  %98 = call i8* @pkg_name(%struct.pkginfo* %97, i32 3), !dbg !2071
  call void (i32, i8*, ...) @debug(i32 128, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.63, i32 0, i32 0), i8* %96, i8* %98), !dbg !2072
  %99 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !2073
  %100 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %99, i32 0, i32 9, !dbg !2075
  %101 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %100, i32 0, i32 12, !dbg !2076
  %102 = load %struct.conffile*, %struct.conffile** %101, align 8, !dbg !2076
  store %struct.conffile* %102, %struct.conffile** %13, align 8, !dbg !2077
  br label %103, !dbg !2078

; <label>:103:                                    ; preds = %130, %91
  %104 = load %struct.conffile*, %struct.conffile** %13, align 8, !dbg !2079
  %105 = icmp ne %struct.conffile* %104, null, !dbg !2079
  br i1 %105, label %106, label %117, !dbg !2081

; <label>:106:                                    ; preds = %103
  %107 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %12, align 8, !dbg !2082
  %108 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %107, i32 0, i32 1, !dbg !2084
  %109 = load %struct.fsys_namenode*, %struct.fsys_namenode** %108, align 8, !dbg !2084
  %110 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %109, i32 0, i32 1, !dbg !2085
  %111 = load i8*, i8** %110, align 8, !dbg !2085
  %112 = load %struct.conffile*, %struct.conffile** %13, align 8, !dbg !2086
  %113 = getelementptr inbounds %struct.conffile, %struct.conffile* %112, i32 0, i32 1, !dbg !2087
  %114 = load i8*, i8** %113, align 8, !dbg !2087
  %115 = call i32 @strcmp(i8* %111, i8* %114) #11, !dbg !2088
  %116 = icmp ne i32 %115, 0, !dbg !2089
  br label %117

; <label>:117:                                    ; preds = %106, %103
  %118 = phi i1 [ false, %103 ], [ %116, %106 ]
  br i1 %118, label %119, label %134, !dbg !2090

; <label>:119:                                    ; preds = %117
  %120 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %12, align 8, !dbg !2092
  %121 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %120, i32 0, i32 1, !dbg !2093
  %122 = load %struct.fsys_namenode*, %struct.fsys_namenode** %121, align 8, !dbg !2093
  %123 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %122, i32 0, i32 1, !dbg !2094
  %124 = load i8*, i8** %123, align 8, !dbg !2094
  %125 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !2095
  %126 = call i8* @pkg_name(%struct.pkginfo* %125, i32 3), !dbg !2096
  %127 = load %struct.conffile*, %struct.conffile** %13, align 8, !dbg !2097
  %128 = getelementptr inbounds %struct.conffile, %struct.conffile* %127, i32 0, i32 1, !dbg !2098
  %129 = load i8*, i8** %128, align 8, !dbg !2098
  call void (i32, i8*, ...) @debug(i32 128, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.64, i32 0, i32 0), i8* %124, i8* %126, i8* %129), !dbg !2099
  br label %130, !dbg !2099

; <label>:130:                                    ; preds = %119
  %131 = load %struct.conffile*, %struct.conffile** %13, align 8, !dbg !2100
  %132 = getelementptr inbounds %struct.conffile, %struct.conffile* %131, i32 0, i32 0, !dbg !2101
  %133 = load %struct.conffile*, %struct.conffile** %132, align 8, !dbg !2101
  store %struct.conffile* %133, %struct.conffile** %13, align 8, !dbg !2102
  br label %103, !dbg !2103, !llvm.loop !2105

; <label>:134:                                    ; preds = %117
  %135 = load %struct.conffile*, %struct.conffile** %13, align 8, !dbg !2107
  %136 = icmp ne %struct.conffile* %135, null, !dbg !2107
  br i1 %136, label %137, label %157, !dbg !2109

; <label>:137:                                    ; preds = %134
  %138 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %12, align 8, !dbg !2110
  %139 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %138, i32 0, i32 1, !dbg !2112
  %140 = load %struct.fsys_namenode*, %struct.fsys_namenode** %139, align 8, !dbg !2112
  %141 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %140, i32 0, i32 1, !dbg !2113
  %142 = load i8*, i8** %141, align 8, !dbg !2113
  %143 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !2114
  %144 = call i8* @pkg_name(%struct.pkginfo* %143, i32 3), !dbg !2115
  %145 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !2116
  %146 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !2117
  %147 = icmp eq %struct.pkginfo* %145, %146, !dbg !2118
  %148 = select i1 %147, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.67, i32 0, i32 0), !dbg !2116
  %149 = load %struct.conffile*, %struct.conffile** %13, align 8, !dbg !2119
  %150 = getelementptr inbounds %struct.conffile, %struct.conffile* %149, i32 0, i32 2, !dbg !2120
  %151 = load i8*, i8** %150, align 8, !dbg !2120
  call void (i32, i8*, ...) @debug(i32 16, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.65, i32 0, i32 0), i8* %142, i8* %144, i8* %148, i8* %151), !dbg !2121
  %152 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !2122
  %153 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !2124
  %154 = icmp eq %struct.pkginfo* %152, %153, !dbg !2125
  br i1 %154, label %155, label %156, !dbg !2126

; <label>:155:                                    ; preds = %137
  br label %158, !dbg !2127

; <label>:156:                                    ; preds = %137
  br label %157, !dbg !2128

; <label>:157:                                    ; preds = %156, %134
  br label %87, !dbg !2129, !llvm.loop !2130

; <label>:158:                                    ; preds = %155, %87
  %159 = load %struct.fsys_node_pkgs_iter*, %struct.fsys_node_pkgs_iter** %10, align 8, !dbg !2131
  call void @fsys_node_pkgs_iter_free(%struct.fsys_node_pkgs_iter* %159), !dbg !2132
  %160 = load %struct.conffile*, %struct.conffile** %13, align 8, !dbg !2133
  %161 = icmp ne %struct.conffile* %160, null, !dbg !2133
  br i1 %161, label %162, label %170, !dbg !2135

; <label>:162:                                    ; preds = %158
  %163 = load %struct.conffile*, %struct.conffile** %13, align 8, !dbg !2136
  %164 = getelementptr inbounds %struct.conffile, %struct.conffile* %163, i32 0, i32 2, !dbg !2138
  %165 = load i8*, i8** %164, align 8, !dbg !2138
  %166 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %12, align 8, !dbg !2139
  %167 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %166, i32 0, i32 1, !dbg !2140
  %168 = load %struct.fsys_namenode*, %struct.fsys_namenode** %167, align 8, !dbg !2140
  %169 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %168, i32 0, i32 7, !dbg !2141
  store i8* %165, i8** %169, align 8, !dbg !2142
  br label %176, !dbg !2143

; <label>:170:                                    ; preds = %158
  %171 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %12, align 8, !dbg !2144
  %172 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %171, i32 0, i32 1, !dbg !2146
  %173 = load %struct.fsys_namenode*, %struct.fsys_namenode** %172, align 8, !dbg !2146
  %174 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %173, i32 0, i32 1, !dbg !2147
  %175 = load i8*, i8** %174, align 8, !dbg !2147
  call void (i32, i8*, ...) @debug(i32 16, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.68, i32 0, i32 0), i8* %175), !dbg !2148
  br label %176

; <label>:176:                                    ; preds = %170, %162
  %177 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %12, align 8, !dbg !2149
  %178 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %177, i32 0, i32 1, !dbg !2150
  %179 = load %struct.fsys_namenode*, %struct.fsys_namenode** %178, align 8, !dbg !2150
  %180 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %179, i32 0, i32 6, !dbg !2151
  %181 = load i32, i32* %180, align 8, !dbg !2152
  %182 = or i32 %181, 1, !dbg !2152
  store i32 %182, i32* %180, align 8, !dbg !2152
  br label %29, !dbg !2153, !llvm.loop !2043

; <label>:183:                                    ; preds = %29
  %184 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2155
  %185 = call i32 @ferror(%struct._IO_FILE* %184) #9, !dbg !2157
  %186 = icmp ne i32 %185, 0, !dbg !2157
  br i1 %186, label %187, label %190, !dbg !2158

; <label>:187:                                    ; preds = %183
  %188 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.69, i32 0, i32 0)) #9, !dbg !2159
  %189 = load i8*, i8** %5, align 8, !dbg !2160
  call void (i8*, ...) @ohshite(i8* %188, i8* %189) #10, !dbg !2161
  unreachable, !dbg !2163

; <label>:190:                                    ; preds = %183
  call void @pop_cleanup(i32 1), !dbg !2164
  %191 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2165
  %192 = call i32 @fclose(%struct._IO_FILE* %191), !dbg !2167
  %193 = icmp ne i32 %192, 0, !dbg !2167
  br i1 %193, label %194, label %197, !dbg !2168

; <label>:194:                                    ; preds = %190
  %195 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.70, i32 0, i32 0)) #9, !dbg !2169
  %196 = load i8*, i8** %5, align 8, !dbg !2170
  call void (i8*, ...) @ohshite(i8* %195, i8* %196) #10, !dbg !2171
  unreachable, !dbg !2173

; <label>:197:                                    ; preds = %23, %190
  ret void, !dbg !2174
}

declare void @pkg_conffiles_mark_old(%struct.pkginfo*) #2

; Function Attrs: noreturn
declare void @do_internerr(i8*, i32, i8*, i8*, ...) #4

declare i8* @pkg_name(%struct.pkginfo*, i32) #2

declare void @debug(i32, i8*, ...) #2

declare void @pkg_set_eflags(%struct.pkginfo*, i32) #2

declare void @pkg_set_status(%struct.pkginfo*, i32) #2

declare void @modstatdb_note(%struct.pkginfo*) #2

declare void @cu_prermupgrade(i32, i8**) #2

declare i32 @maintscript_fallback(%struct.pkginfo*, i8*, i8*, i8*, i8*, i8*, i8*) #2

declare i32 @maintscript_installed(%struct.pkginfo*, i8*, i8*, ...) #2

declare i8* @versiondescribe(%struct.dpkg_version*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @pkg_deconfigure_others(%struct.pkginfo*) #0 !dbg !2175 {
  %2 = alloca %struct.pkginfo*, align 8
  %3 = alloca %struct.pkg_deconf_list*, align 8
  %4 = alloca %struct.pkginfo*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %2, metadata !2176, metadata !623), !dbg !2177
  call void @llvm.dbg.declare(metadata %struct.pkg_deconf_list** %3, metadata !2178, metadata !623), !dbg !2185
  %5 = load %struct.pkg_deconf_list*, %struct.pkg_deconf_list** @deconfigure, align 8, !dbg !2186
  store %struct.pkg_deconf_list* %5, %struct.pkg_deconf_list** %3, align 8, !dbg !2188
  br label %6, !dbg !2189

; <label>:6:                                      ; preds = %100, %1
  %7 = load %struct.pkg_deconf_list*, %struct.pkg_deconf_list** %3, align 8, !dbg !2190
  %8 = icmp ne %struct.pkg_deconf_list* %7, null, !dbg !2193
  br i1 %8, label %9, label %104, !dbg !2193

; <label>:9:                                      ; preds = %6
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %4, metadata !2194, metadata !623), !dbg !2196
  %10 = load %struct.pkg_deconf_list*, %struct.pkg_deconf_list** %3, align 8, !dbg !2197
  %11 = getelementptr inbounds %struct.pkg_deconf_list, %struct.pkg_deconf_list* %10, i32 0, i32 2, !dbg !2198
  %12 = load %struct.pkginfo*, %struct.pkginfo** %11, align 8, !dbg !2198
  store %struct.pkginfo* %12, %struct.pkginfo** %4, align 8, !dbg !2196
  %13 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !2199
  %14 = icmp ne %struct.pkginfo* %13, null, !dbg !2199
  br i1 %14, label %15, label %34, !dbg !2201

; <label>:15:                                     ; preds = %9
  %16 = call i8* @gettext(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.71, i32 0, i32 0)) #9, !dbg !2202
  %17 = load %struct.pkg_deconf_list*, %struct.pkg_deconf_list** %3, align 8, !dbg !2203
  %18 = getelementptr inbounds %struct.pkg_deconf_list, %struct.pkg_deconf_list* %17, i32 0, i32 1, !dbg !2204
  %19 = load %struct.pkginfo*, %struct.pkginfo** %18, align 8, !dbg !2204
  %20 = call i8* @pkg_name(%struct.pkginfo* %19, i32 1), !dbg !2205
  %21 = load %struct.pkg_deconf_list*, %struct.pkg_deconf_list** %3, align 8, !dbg !2206
  %22 = getelementptr inbounds %struct.pkg_deconf_list, %struct.pkg_deconf_list* %21, i32 0, i32 1, !dbg !2207
  %23 = load %struct.pkginfo*, %struct.pkginfo** %22, align 8, !dbg !2207
  %24 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %23, i32 0, i32 9, !dbg !2208
  %25 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %24, i32 0, i32 11, !dbg !2209
  %26 = call i8* @versiondescribe(%struct.dpkg_version* %25, i32 1), !dbg !2210
  %27 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !2211
  %28 = call i8* @pkg_name(%struct.pkginfo* %27, i32 1), !dbg !2212
  %29 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !2213
  %30 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %29, i32 0, i32 9, !dbg !2214
  %31 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %30, i32 0, i32 11, !dbg !2215
  %32 = call i8* @versiondescribe(%struct.dpkg_version* %31, i32 1), !dbg !2216
  %33 = call i32 (i8*, ...) @printf(i8* %16, i8* %20, i8* %26, i8* %28, i8* %32), !dbg !2217
  br label %47, !dbg !2219

; <label>:34:                                     ; preds = %9
  %35 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.72, i32 0, i32 0)) #9, !dbg !2220
  %36 = load %struct.pkg_deconf_list*, %struct.pkg_deconf_list** %3, align 8, !dbg !2221
  %37 = getelementptr inbounds %struct.pkg_deconf_list, %struct.pkg_deconf_list* %36, i32 0, i32 1, !dbg !2222
  %38 = load %struct.pkginfo*, %struct.pkginfo** %37, align 8, !dbg !2222
  %39 = call i8* @pkg_name(%struct.pkginfo* %38, i32 1), !dbg !2223
  %40 = load %struct.pkg_deconf_list*, %struct.pkg_deconf_list** %3, align 8, !dbg !2224
  %41 = getelementptr inbounds %struct.pkg_deconf_list, %struct.pkg_deconf_list* %40, i32 0, i32 1, !dbg !2225
  %42 = load %struct.pkginfo*, %struct.pkginfo** %41, align 8, !dbg !2225
  %43 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %42, i32 0, i32 9, !dbg !2226
  %44 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %43, i32 0, i32 11, !dbg !2227
  %45 = call i8* @versiondescribe(%struct.dpkg_version* %44, i32 1), !dbg !2228
  %46 = call i32 (i8*, ...) @printf(i8* %35, i8* %39, i8* %45), !dbg !2229
  br label %47

; <label>:47:                                     ; preds = %34, %15
  %48 = load %struct.pkg_deconf_list*, %struct.pkg_deconf_list** %3, align 8, !dbg !2230
  %49 = getelementptr inbounds %struct.pkg_deconf_list, %struct.pkg_deconf_list* %48, i32 0, i32 1, !dbg !2231
  %50 = load %struct.pkginfo*, %struct.pkginfo** %49, align 8, !dbg !2231
  call void @trig_activate_packageprocessing(%struct.pkginfo* %50), !dbg !2232
  %51 = load %struct.pkg_deconf_list*, %struct.pkg_deconf_list** %3, align 8, !dbg !2233
  %52 = getelementptr inbounds %struct.pkg_deconf_list, %struct.pkg_deconf_list* %51, i32 0, i32 1, !dbg !2234
  %53 = load %struct.pkginfo*, %struct.pkginfo** %52, align 8, !dbg !2234
  call void @pkg_set_status(%struct.pkginfo* %53, i32 4), !dbg !2235
  %54 = load %struct.pkg_deconf_list*, %struct.pkg_deconf_list** %3, align 8, !dbg !2236
  %55 = getelementptr inbounds %struct.pkg_deconf_list, %struct.pkg_deconf_list* %54, i32 0, i32 1, !dbg !2237
  %56 = load %struct.pkginfo*, %struct.pkginfo** %55, align 8, !dbg !2237
  call void @modstatdb_note(%struct.pkginfo* %56), !dbg !2238
  %57 = load %struct.pkg_deconf_list*, %struct.pkg_deconf_list** %3, align 8, !dbg !2239
  %58 = getelementptr inbounds %struct.pkg_deconf_list, %struct.pkg_deconf_list* %57, i32 0, i32 1, !dbg !2240
  %59 = load %struct.pkginfo*, %struct.pkginfo** %58, align 8, !dbg !2240
  %60 = bitcast %struct.pkginfo* %59 to i8*, !dbg !2241
  %61 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !2242
  %62 = bitcast %struct.pkginfo* %61 to i8*, !dbg !2243
  %63 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !2244
  %64 = bitcast %struct.pkginfo* %63 to i8*, !dbg !2245
  call void (void (i32, i8**)*, i32, void (i32, i8**)*, i32, i32, ...) @push_cleanup_fallback(void (i32, i8**)* @cu_prermdeconfigure, i32 -2, void (i32, i8**)* @ok_prermdeconfigure, i32 1, i32 3, i8* %60, i8* %62, i8* %64), !dbg !2246
  %65 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !2247
  %66 = icmp ne %struct.pkginfo* %65, null, !dbg !2247
  br i1 %66, label %67, label %86, !dbg !2249

; <label>:67:                                     ; preds = %47
  %68 = load %struct.pkg_deconf_list*, %struct.pkg_deconf_list** %3, align 8, !dbg !2250
  %69 = getelementptr inbounds %struct.pkg_deconf_list, %struct.pkg_deconf_list* %68, i32 0, i32 1, !dbg !2252
  %70 = load %struct.pkginfo*, %struct.pkginfo** %69, align 8, !dbg !2252
  %71 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !2253
  %72 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !2254
  %73 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %72, i32 0, i32 10, !dbg !2255
  %74 = call i8* @pkgbin_name(%struct.pkginfo* %71, %struct.pkgbin* %73, i32 1), !dbg !2256
  %75 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !2257
  %76 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %75, i32 0, i32 10, !dbg !2258
  %77 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %76, i32 0, i32 11, !dbg !2259
  %78 = call i8* @versiondescribe(%struct.dpkg_version* %77, i32 1), !dbg !2260
  %79 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !2261
  %80 = call i8* @pkg_name(%struct.pkginfo* %79, i32 1), !dbg !2262
  %81 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !2263
  %82 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %81, i32 0, i32 9, !dbg !2264
  %83 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %82, i32 0, i32 11, !dbg !2265
  %84 = call i8* @versiondescribe(%struct.dpkg_version* %83, i32 1), !dbg !2266
  %85 = call i32 (%struct.pkginfo*, i8*, i8*, ...) @maintscript_installed(%struct.pkginfo* %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* %74, i8* %78, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i32 0, i32 0), i8* %80, i8* %84, i8* null), !dbg !2267
  br label %99, !dbg !2268

; <label>:86:                                     ; preds = %47
  %87 = load %struct.pkg_deconf_list*, %struct.pkg_deconf_list** %3, align 8, !dbg !2269
  %88 = getelementptr inbounds %struct.pkg_deconf_list, %struct.pkg_deconf_list* %87, i32 0, i32 1, !dbg !2271
  %89 = load %struct.pkginfo*, %struct.pkginfo** %88, align 8, !dbg !2271
  %90 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !2272
  %91 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !2273
  %92 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %91, i32 0, i32 10, !dbg !2274
  %93 = call i8* @pkgbin_name(%struct.pkginfo* %90, %struct.pkgbin* %92, i32 1), !dbg !2275
  %94 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !2276
  %95 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %94, i32 0, i32 10, !dbg !2277
  %96 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %95, i32 0, i32 11, !dbg !2278
  %97 = call i8* @versiondescribe(%struct.dpkg_version* %96, i32 1), !dbg !2279
  %98 = call i32 (%struct.pkginfo*, i8*, i8*, ...) @maintscript_installed(%struct.pkginfo* %89, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* %93, i8* %97, i8* null), !dbg !2280
  br label %99

; <label>:99:                                     ; preds = %86, %67
  br label %100, !dbg !2281

; <label>:100:                                    ; preds = %99
  %101 = load %struct.pkg_deconf_list*, %struct.pkg_deconf_list** %3, align 8, !dbg !2282
  %102 = getelementptr inbounds %struct.pkg_deconf_list, %struct.pkg_deconf_list* %101, i32 0, i32 0, !dbg !2284
  %103 = load %struct.pkg_deconf_list*, %struct.pkg_deconf_list** %102, align 8, !dbg !2284
  store %struct.pkg_deconf_list* %103, %struct.pkg_deconf_list** %3, align 8, !dbg !2285
  br label %6, !dbg !2286, !llvm.loop !2287

; <label>:104:                                    ; preds = %6
  ret void, !dbg !2289
}

declare void @cu_prerminfavour(i32, i8**) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #6

declare void @cu_preinstverynew(i32, i8**) #2

declare i32 @maintscript_new(%struct.pkginfo*, i8*, i8*, i8*, i8*, ...) #2

declare void @cu_preinstnew(i32, i8**) #2

declare void @cu_preinstupgrade(i32, i8**) #2

declare void @m_pipe(i32*) #2

declare void @cu_closepipe(i32, i8**) #2

declare void @m_dup2(i32, i32) #2

declare i32 @close(i32) #2

; Function Attrs: nounwind uwtable
define internal zeroext i1 @pkgset_getting_in_sync(%struct.pkginfo*) #0 !dbg !2290 {
  %2 = alloca i1, align 1
  %3 = alloca %struct.pkginfo*, align 8
  %4 = alloca %struct.pkginfo*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %3, metadata !2293, metadata !623), !dbg !2294
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %4, metadata !2295, metadata !623), !dbg !2296
  %5 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !2297
  %6 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %5, i32 0, i32 0, !dbg !2299
  %7 = load %struct.pkgset*, %struct.pkgset** %6, align 8, !dbg !2299
  %8 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %7, i32 0, i32 2, !dbg !2300
  store %struct.pkginfo* %8, %struct.pkginfo** %4, align 8, !dbg !2301
  br label %9, !dbg !2302

; <label>:9:                                      ; preds = %34, %1
  %10 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !2303
  %11 = icmp ne %struct.pkginfo* %10, null, !dbg !2306
  br i1 %11, label %12, label %38, !dbg !2306

; <label>:12:                                     ; preds = %9
  %13 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !2307
  %14 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !2310
  %15 = icmp eq %struct.pkginfo* %13, %14, !dbg !2311
  br i1 %15, label %16, label %17, !dbg !2312

; <label>:16:                                     ; preds = %12
  br label %34, !dbg !2313

; <label>:17:                                     ; preds = %12
  %18 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !2314
  %19 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %18, i32 0, i32 4, !dbg !2316
  %20 = load i32, i32* %19, align 8, !dbg !2316
  %21 = icmp ule i32 %20, 1, !dbg !2317
  br i1 %21, label %22, label %23, !dbg !2318

; <label>:22:                                     ; preds = %17
  br label %34, !dbg !2319

; <label>:23:                                     ; preds = %17
  %24 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !2320
  %25 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %24, i32 0, i32 10, !dbg !2322
  %26 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %25, i32 0, i32 11, !dbg !2323
  %27 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !2324
  %28 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %27, i32 0, i32 9, !dbg !2325
  %29 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %28, i32 0, i32 11, !dbg !2326
  %30 = call i32 @dpkg_version_compare(%struct.dpkg_version* %26, %struct.dpkg_version* %29), !dbg !2327
  %31 = icmp ne i32 %30, 0, !dbg !2327
  br i1 %31, label %32, label %33, !dbg !2328

; <label>:32:                                     ; preds = %23
  store i1 false, i1* %2, align 1, !dbg !2329
  br label %39, !dbg !2329

; <label>:33:                                     ; preds = %23
  br label %34, !dbg !2331

; <label>:34:                                     ; preds = %33, %22, %16
  %35 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !2332
  %36 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %35, i32 0, i32 1, !dbg !2334
  %37 = load %struct.pkginfo*, %struct.pkginfo** %36, align 8, !dbg !2334
  store %struct.pkginfo* %37, %struct.pkginfo** %4, align 8, !dbg !2335
  br label %9, !dbg !2336, !llvm.loop !2337

; <label>:38:                                     ; preds = %9
  store i1 true, i1* %2, align 1, !dbg !2339
  br label %39, !dbg !2339

; <label>:39:                                     ; preds = %38, %32
  %40 = load i1, i1* %2, align 1, !dbg !2340
  ret i1 %40, !dbg !2340
}

declare i32 @tar_extractor(%struct.tar_archive*) #2

declare void @dpkg_error_print(%struct.dpkg_error*, i8*, ...) #2

declare i64 @buffer_skip_Int(i32, i32, i64, %struct.dpkg_error*) #2

; Function Attrs: noreturn
declare void @ohshit(i8*, ...) #4

declare void @tar_deferred_extract(%struct.fsys_namenode_list*, %struct.pkginfo*) #2

declare void @cu_postrmupgrade(i32, i8**) #2

declare void @push_checkpoint(i32, i32) #2

; Function Attrs: nounwind uwtable
define internal void @pkg_remove_old_files(%struct.pkginfo*, %struct.fsys_namenode_queue*, %struct.fsys_namenode_queue*) #0 !dbg !605 {
  %4 = alloca %struct.pkginfo*, align 8
  %5 = alloca %struct.fsys_namenode_queue*, align 8
  %6 = alloca %struct.fsys_namenode_queue*, align 8
  %7 = alloca %struct.fsys_hash_rev_iter, align 8
  %8 = alloca %struct.fsys_namenode*, align 8
  %9 = alloca %struct.stat, align 8
  %10 = alloca %struct.stat, align 8
  %11 = alloca %struct.fsys_namenode*, align 8
  %12 = alloca %struct.fsys_namenode_list*, align 8
  %13 = alloca %struct.fsys_namenode_list*, align 8
  %14 = alloca %struct.varbuf, align 8
  %15 = alloca %struct.stat, align 8
  %16 = alloca %struct.file_ondisk_id*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %4, metadata !2341, metadata !623), !dbg !2342
  store %struct.fsys_namenode_queue* %1, %struct.fsys_namenode_queue** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode_queue** %5, metadata !2343, metadata !623), !dbg !2344
  store %struct.fsys_namenode_queue* %2, %struct.fsys_namenode_queue** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode_queue** %6, metadata !2345, metadata !623), !dbg !2346
  call void @llvm.dbg.declare(metadata %struct.fsys_hash_rev_iter* %7, metadata !2347, metadata !623), !dbg !2351
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %8, metadata !2352, metadata !623), !dbg !2353
  call void @llvm.dbg.declare(metadata %struct.stat* %9, metadata !2354, metadata !623), !dbg !2355
  call void @llvm.dbg.declare(metadata %struct.stat* %10, metadata !2356, metadata !623), !dbg !2357
  %17 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !2358
  %18 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %17, i32 0, i32 16, !dbg !2359
  %19 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %18, align 8, !dbg !2359
  call void @fsys_hash_rev_iter_init(%struct.fsys_hash_rev_iter* %7, %struct.fsys_namenode_list* %19), !dbg !2360
  br label %20, !dbg !2361

; <label>:20:                                     ; preds = %360, %344, %340, %104, %90, %66, %35, %3
  %21 = call %struct.fsys_namenode* @fsys_hash_rev_iter_next(%struct.fsys_hash_rev_iter* %7), !dbg !2362
  store %struct.fsys_namenode* %21, %struct.fsys_namenode** %8, align 8, !dbg !2364
  %22 = icmp ne %struct.fsys_namenode* %21, null, !dbg !2365
  br i1 %22, label %23, label %361, !dbg !2365

; <label>:23:                                     ; preds = %20
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %11, metadata !2366, metadata !623), !dbg !2368
  %24 = load %struct.fsys_namenode*, %struct.fsys_namenode** %8, align 8, !dbg !2369
  %25 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %24, i32 0, i32 6, !dbg !2371
  %26 = load i32, i32* %25, align 8, !dbg !2371
  %27 = and i32 %26, 1, !dbg !2372
  %28 = icmp ne i32 %27, 0, !dbg !2372
  br i1 %28, label %35, label %29, !dbg !2373

; <label>:29:                                     ; preds = %23
  %30 = load %struct.fsys_namenode*, %struct.fsys_namenode** %8, align 8, !dbg !2374
  %31 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %30, i32 0, i32 6, !dbg !2375
  %32 = load i32, i32* %31, align 8, !dbg !2375
  %33 = and i32 %32, 2, !dbg !2376
  %34 = icmp ne i32 %33, 0, !dbg !2376
  br i1 %34, label %35, label %36, !dbg !2377

; <label>:35:                                     ; preds = %29, %23
  br label %20, !dbg !2379, !llvm.loop !2380

; <label>:36:                                     ; preds = %29
  %37 = load %struct.fsys_namenode*, %struct.fsys_namenode** %8, align 8, !dbg !2381
  %38 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !2382
  %39 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !2383
  %40 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %39, i32 0, i32 9, !dbg !2384
  %41 = call %struct.fsys_namenode* @namenodetouse(%struct.fsys_namenode* %37, %struct.pkginfo* %38, %struct.pkgbin* %40), !dbg !2385
  store %struct.fsys_namenode* %41, %struct.fsys_namenode** %11, align 8, !dbg !2386
  call void @varbuf_rollback(%struct.varbuf* @fnamevb, %struct.varbuf_state* @fname_state), !dbg !2387
  %42 = load %struct.fsys_namenode*, %struct.fsys_namenode** %11, align 8, !dbg !2388
  %43 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %42, i32 0, i32 1, !dbg !2389
  %44 = load i8*, i8** %43, align 8, !dbg !2389
  %45 = load %struct.fsys_namenode*, %struct.fsys_namenode** %11, align 8, !dbg !2390
  %46 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %45, i32 0, i32 1, !dbg !2391
  %47 = load i8*, i8** %46, align 8, !dbg !2391
  %48 = call i64 @strlen(i8* %47) #11, !dbg !2392
  call void @varbuf_add_buf(%struct.varbuf* @fnamevb, i8* %44, i64 %48), !dbg !2393
  call void @varbuf_end_str(%struct.varbuf* @fnamevb), !dbg !2394
  %49 = load %struct.fsys_namenode*, %struct.fsys_namenode** %8, align 8, !dbg !2395
  %50 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %49, i32 0, i32 1, !dbg !2397
  %51 = load i8*, i8** %50, align 8, !dbg !2397
  %52 = call i32 @stat(i8* %51, %struct.stat* %9) #9, !dbg !2398
  %53 = icmp ne i32 %52, 0, !dbg !2398
  br i1 %53, label %68, label %54, !dbg !2399

; <label>:54:                                     ; preds = %36
  %55 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 3, !dbg !2400
  %56 = load i32, i32* %55, align 8, !dbg !2400
  %57 = and i32 %56, 61440, !dbg !2402
  %58 = icmp eq i32 %57, 16384, !dbg !2403
  br i1 %58, label %59, label %68, !dbg !2404

; <label>:59:                                     ; preds = %54
  %60 = load %struct.fsys_namenode*, %struct.fsys_namenode** %8, align 8, !dbg !2405
  %61 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %60, i32 0, i32 1, !dbg !2407
  %62 = load i8*, i8** %61, align 8, !dbg !2407
  call void (i32, i8*, ...) @debug(i32 64, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.75, i32 0, i32 0), i8* %62), !dbg !2408
  %63 = load %struct.fsys_namenode*, %struct.fsys_namenode** %8, align 8, !dbg !2409
  %64 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !2411
  %65 = call zeroext i1 @dir_is_used_by_others(%struct.fsys_namenode* %63, %struct.pkginfo* %64), !dbg !2412
  br i1 %65, label %66, label %67, !dbg !2413

; <label>:66:                                     ; preds = %59
  br label %20, !dbg !2414, !llvm.loop !2380

; <label>:67:                                     ; preds = %59
  br label %68, !dbg !2415

; <label>:68:                                     ; preds = %67, %54, %36
  %69 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fnamevb, i32 0, i32 2), align 8, !dbg !2416
  %70 = call i32 @lstat(i8* %69, %struct.stat* %10) #9, !dbg !2418
  %71 = icmp ne i32 %70, 0, !dbg !2418
  br i1 %71, label %72, label %91, !dbg !2419

; <label>:72:                                     ; preds = %68
  %73 = call i32* @__errno_location() #1, !dbg !2420
  %74 = load i32, i32* %73, align 4, !dbg !2423
  %75 = icmp eq i32 %74, 2, !dbg !2424
  br i1 %75, label %90, label %76, !dbg !2425

; <label>:76:                                     ; preds = %72
  %77 = call i32* @__errno_location() #1, !dbg !2426
  %78 = load i32, i32* %77, align 4, !dbg !2428
  %79 = icmp eq i32 %78, 40, !dbg !2429
  br i1 %79, label %90, label %80, !dbg !2430

; <label>:80:                                     ; preds = %76
  %81 = call i32* @__errno_location() #1, !dbg !2431
  %82 = load i32, i32* %81, align 4, !dbg !2433
  %83 = icmp eq i32 %82, 20, !dbg !2434
  br i1 %83, label %90, label %84, !dbg !2435

; <label>:84:                                     ; preds = %80
  %85 = call i8* @gettext(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.76, i32 0, i32 0)) #9, !dbg !2436
  %86 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fnamevb, i32 0, i32 2), align 8, !dbg !2437
  %87 = call i32* @__errno_location() #1, !dbg !2438
  %88 = load i32, i32* %87, align 4, !dbg !2439
  %89 = call i8* @strerror(i32 %88) #9, !dbg !2440
  call void (i8*, ...) @warning(i8* %85, i8* %86, i8* %89), !dbg !2441
  br label %90, !dbg !2442

; <label>:90:                                     ; preds = %84, %80, %76, %72
  br label %20, !dbg !2443, !llvm.loop !2380

; <label>:91:                                     ; preds = %68
  %92 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 3, !dbg !2444
  %93 = load i32, i32* %92, align 8, !dbg !2444
  %94 = and i32 %93, 61440, !dbg !2446
  %95 = icmp eq i32 %94, 16384, !dbg !2447
  br i1 %95, label %96, label %130, !dbg !2448

; <label>:96:                                     ; preds = %91
  %97 = load %struct.fsys_namenode*, %struct.fsys_namenode** %11, align 8, !dbg !2449
  %98 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !2451
  call void @trig_path_activate(%struct.fsys_namenode* %97, %struct.pkginfo* %98), !dbg !2452
  %99 = load %struct.fsys_namenode*, %struct.fsys_namenode** %11, align 8, !dbg !2453
  %100 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %99, i32 0, i32 1, !dbg !2455
  %101 = load i8*, i8** %100, align 8, !dbg !2455
  %102 = call i32 @strcmp(i8* %101, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.77, i32 0, i32 0)) #11, !dbg !2456
  %103 = icmp eq i32 %102, 0, !dbg !2457
  br i1 %103, label %104, label %105, !dbg !2458

; <label>:104:                                    ; preds = %96
  br label %20, !dbg !2459, !llvm.loop !2380

; <label>:105:                                    ; preds = %96
  %106 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fnamevb, i32 0, i32 2), align 8, !dbg !2460
  %107 = call i32 @rmdir(i8* %106) #9, !dbg !2462
  %108 = icmp ne i32 %107, 0, !dbg !2462
  br i1 %108, label %109, label %117, !dbg !2463

; <label>:109:                                    ; preds = %105
  %110 = call i8* @gettext(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.78, i32 0, i32 0)) #9, !dbg !2464
  %111 = load %struct.fsys_namenode*, %struct.fsys_namenode** %8, align 8, !dbg !2466
  %112 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %111, i32 0, i32 1, !dbg !2467
  %113 = load i8*, i8** %112, align 8, !dbg !2467
  %114 = call i32* @__errno_location() #1, !dbg !2468
  %115 = load i32, i32* %114, align 4, !dbg !2469
  %116 = call i8* @strerror(i32 %115) #9, !dbg !2470
  call void (i8*, ...) @warning(i8* %110, i8* %113, i8* %116), !dbg !2472
  br label %129, !dbg !2473

; <label>:117:                                    ; preds = %105
  %118 = load %struct.fsys_namenode*, %struct.fsys_namenode** %8, align 8, !dbg !2474
  %119 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %118, i32 0, i32 6, !dbg !2477
  %120 = load i32, i32* %119, align 8, !dbg !2477
  %121 = and i32 %120, 4, !dbg !2478
  %122 = icmp ne i32 %121, 0, !dbg !2478
  br i1 %122, label %123, label %128, !dbg !2479

; <label>:123:                                    ; preds = %117
  %124 = call i8* @gettext(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.79, i32 0, i32 0)) #9, !dbg !2480
  %125 = load %struct.fsys_namenode*, %struct.fsys_namenode** %8, align 8, !dbg !2482
  %126 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %125, i32 0, i32 1, !dbg !2483
  %127 = load i8*, i8** %126, align 8, !dbg !2483
  call void (i8*, ...) @warning(i8* %124, i8* %127), !dbg !2484
  br label %128, !dbg !2486

; <label>:128:                                    ; preds = %123, %117
  br label %129

; <label>:129:                                    ; preds = %128, %109
  br label %360, !dbg !2487

; <label>:130:                                    ; preds = %91
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode_list** %12, metadata !2488, metadata !623), !dbg !2490
  store %struct.fsys_namenode_list* null, %struct.fsys_namenode_list** %12, align 8, !dbg !2490
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode_list** %13, metadata !2491, metadata !623), !dbg !2492
  call void @llvm.dbg.declare(metadata %struct.varbuf* %14, metadata !2493, metadata !623), !dbg !2494
  %131 = bitcast %struct.varbuf* %14 to i8*, !dbg !2494
  call void @llvm.memset.p0i8.i64(i8* %131, i8 0, i64 24, i32 8, i1 false), !dbg !2494
  %132 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fnamevb, i32 0, i32 2), align 8, !dbg !2495
  call void (i32, i8*, ...) @debug(i32 8, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.80, i32 0, i32 0), i8* %132), !dbg !2496
  %133 = load %struct.fsys_namenode_queue*, %struct.fsys_namenode_queue** %5, align 8, !dbg !2497
  %134 = getelementptr inbounds %struct.fsys_namenode_queue, %struct.fsys_namenode_queue* %133, i32 0, i32 0, !dbg !2499
  %135 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %134, align 8, !dbg !2499
  store %struct.fsys_namenode_list* %135, %struct.fsys_namenode_list** %13, align 8, !dbg !2500
  br label %136, !dbg !2501

; <label>:136:                                    ; preds = %270, %130
  %137 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %13, align 8, !dbg !2502
  %138 = icmp ne %struct.fsys_namenode_list* %137, null, !dbg !2505
  br i1 %138, label %139, label %274, !dbg !2505

; <label>:139:                                    ; preds = %136
  %140 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %13, align 8, !dbg !2506
  %141 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %140, i32 0, i32 1, !dbg !2509
  %142 = load %struct.fsys_namenode*, %struct.fsys_namenode** %141, align 8, !dbg !2509
  %143 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %142, i32 0, i32 6, !dbg !2510
  %144 = load i32, i32* %143, align 8, !dbg !2510
  %145 = and i32 %144, 512, !dbg !2511
  %146 = icmp ne i32 %145, 0, !dbg !2511
  br i1 %146, label %147, label %148, !dbg !2512

; <label>:147:                                    ; preds = %139
  br label %270, !dbg !2513

; <label>:148:                                    ; preds = %139
  %149 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %13, align 8, !dbg !2514
  %150 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %149, i32 0, i32 1, !dbg !2516
  %151 = load %struct.fsys_namenode*, %struct.fsys_namenode** %150, align 8, !dbg !2516
  %152 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %151, i32 0, i32 9, !dbg !2517
  %153 = load %struct.file_ondisk_id*, %struct.file_ondisk_id** %152, align 8, !dbg !2517
  %154 = icmp eq %struct.file_ondisk_id* %153, null, !dbg !2518
  br i1 %154, label %155, label %215, !dbg !2519

; <label>:155:                                    ; preds = %148
  call void @llvm.dbg.declare(metadata %struct.stat* %15, metadata !2520, metadata !623), !dbg !2522
  call void @varbuf_reset(%struct.varbuf* %14), !dbg !2523
  %156 = load i8*, i8** @instdir, align 8, !dbg !2524
  %157 = load i8*, i8** @instdir, align 8, !dbg !2525
  %158 = call i64 @strlen(i8* %157) #11, !dbg !2526
  call void @varbuf_add_buf(%struct.varbuf* %14, i8* %156, i64 %158), !dbg !2527
  %159 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %13, align 8, !dbg !2529
  %160 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %159, i32 0, i32 1, !dbg !2530
  %161 = load %struct.fsys_namenode*, %struct.fsys_namenode** %160, align 8, !dbg !2530
  %162 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %161, i32 0, i32 1, !dbg !2531
  %163 = load i8*, i8** %162, align 8, !dbg !2531
  %164 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %13, align 8, !dbg !2532
  %165 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %164, i32 0, i32 1, !dbg !2533
  %166 = load %struct.fsys_namenode*, %struct.fsys_namenode** %165, align 8, !dbg !2533
  %167 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %166, i32 0, i32 1, !dbg !2534
  %168 = load i8*, i8** %167, align 8, !dbg !2534
  %169 = call i64 @strlen(i8* %168) #11, !dbg !2535
  call void @varbuf_add_buf(%struct.varbuf* %14, i8* %163, i64 %169), !dbg !2536
  call void @varbuf_end_str(%struct.varbuf* %14), !dbg !2537
  %170 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %14, i32 0, i32 2, !dbg !2538
  %171 = load i8*, i8** %170, align 8, !dbg !2538
  %172 = call i32 @lstat(i8* %171, %struct.stat* %15) #9, !dbg !2540
  %173 = icmp eq i32 %172, 0, !dbg !2541
  br i1 %173, label %174, label %190, !dbg !2542

; <label>:174:                                    ; preds = %155
  call void @llvm.dbg.declare(metadata %struct.file_ondisk_id** %16, metadata !2543, metadata !623), !dbg !2545
  %175 = call i8* @nfmalloc(i64 16), !dbg !2546
  %176 = bitcast i8* %175 to %struct.file_ondisk_id*, !dbg !2546
  store %struct.file_ondisk_id* %176, %struct.file_ondisk_id** %16, align 8, !dbg !2547
  %177 = getelementptr inbounds %struct.stat, %struct.stat* %15, i32 0, i32 0, !dbg !2548
  %178 = load i64, i64* %177, align 8, !dbg !2548
  %179 = load %struct.file_ondisk_id*, %struct.file_ondisk_id** %16, align 8, !dbg !2549
  %180 = getelementptr inbounds %struct.file_ondisk_id, %struct.file_ondisk_id* %179, i32 0, i32 0, !dbg !2550
  store i64 %178, i64* %180, align 8, !dbg !2551
  %181 = getelementptr inbounds %struct.stat, %struct.stat* %15, i32 0, i32 1, !dbg !2552
  %182 = load i64, i64* %181, align 8, !dbg !2552
  %183 = load %struct.file_ondisk_id*, %struct.file_ondisk_id** %16, align 8, !dbg !2553
  %184 = getelementptr inbounds %struct.file_ondisk_id, %struct.file_ondisk_id* %183, i32 0, i32 1, !dbg !2554
  store i64 %182, i64* %184, align 8, !dbg !2555
  %185 = load %struct.file_ondisk_id*, %struct.file_ondisk_id** %16, align 8, !dbg !2556
  %186 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %13, align 8, !dbg !2557
  %187 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %186, i32 0, i32 1, !dbg !2558
  %188 = load %struct.fsys_namenode*, %struct.fsys_namenode** %187, align 8, !dbg !2558
  %189 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %188, i32 0, i32 9, !dbg !2559
  store %struct.file_ondisk_id* %185, %struct.file_ondisk_id** %189, align 8, !dbg !2560
  br label %214, !dbg !2561

; <label>:190:                                    ; preds = %155
  %191 = call i32* @__errno_location() #1, !dbg !2562
  %192 = load i32, i32* %191, align 4, !dbg !2565
  %193 = icmp eq i32 %192, 2, !dbg !2566
  br i1 %193, label %209, label %194, !dbg !2567

; <label>:194:                                    ; preds = %190
  %195 = call i32* @__errno_location() #1, !dbg !2568
  %196 = load i32, i32* %195, align 4, !dbg !2570
  %197 = icmp eq i32 %196, 40, !dbg !2571
  br i1 %197, label %209, label %198, !dbg !2572

; <label>:198:                                    ; preds = %194
  %199 = call i32* @__errno_location() #1, !dbg !2573
  %200 = load i32, i32* %199, align 4, !dbg !2575
  %201 = icmp eq i32 %200, 20, !dbg !2576
  br i1 %201, label %209, label %202, !dbg !2577

; <label>:202:                                    ; preds = %198
  %203 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.81, i32 0, i32 0)) #9, !dbg !2578
  %204 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %13, align 8, !dbg !2579
  %205 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %204, i32 0, i32 1, !dbg !2580
  %206 = load %struct.fsys_namenode*, %struct.fsys_namenode** %205, align 8, !dbg !2580
  %207 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %206, i32 0, i32 1, !dbg !2581
  %208 = load i8*, i8** %207, align 8, !dbg !2581
  call void (i8*, ...) @ohshite(i8* %203, i8* %208) #10, !dbg !2582
  unreachable, !dbg !2583

; <label>:209:                                    ; preds = %198, %194, %190
  %210 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %13, align 8, !dbg !2584
  %211 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %210, i32 0, i32 1, !dbg !2585
  %212 = load %struct.fsys_namenode*, %struct.fsys_namenode** %211, align 8, !dbg !2585
  %213 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %212, i32 0, i32 9, !dbg !2586
  store %struct.file_ondisk_id* @pkg_remove_old_files.empty_ondisk_id, %struct.file_ondisk_id** %213, align 8, !dbg !2587
  br label %270, !dbg !2588

; <label>:214:                                    ; preds = %174
  br label %215, !dbg !2589

; <label>:215:                                    ; preds = %214, %148
  %216 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %13, align 8, !dbg !2590
  %217 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %216, i32 0, i32 1, !dbg !2592
  %218 = load %struct.fsys_namenode*, %struct.fsys_namenode** %217, align 8, !dbg !2592
  %219 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %218, i32 0, i32 9, !dbg !2593
  %220 = load %struct.file_ondisk_id*, %struct.file_ondisk_id** %219, align 8, !dbg !2593
  %221 = icmp eq %struct.file_ondisk_id* %220, @pkg_remove_old_files.empty_ondisk_id, !dbg !2594
  br i1 %221, label %222, label %223, !dbg !2595

; <label>:222:                                    ; preds = %215
  br label %270, !dbg !2596

; <label>:223:                                    ; preds = %215
  %224 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0, !dbg !2597
  %225 = load i64, i64* %224, align 8, !dbg !2597
  %226 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %13, align 8, !dbg !2599
  %227 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %226, i32 0, i32 1, !dbg !2600
  %228 = load %struct.fsys_namenode*, %struct.fsys_namenode** %227, align 8, !dbg !2600
  %229 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %228, i32 0, i32 9, !dbg !2601
  %230 = load %struct.file_ondisk_id*, %struct.file_ondisk_id** %229, align 8, !dbg !2601
  %231 = getelementptr inbounds %struct.file_ondisk_id, %struct.file_ondisk_id* %230, i32 0, i32 0, !dbg !2602
  %232 = load i64, i64* %231, align 8, !dbg !2602
  %233 = icmp eq i64 %225, %232, !dbg !2603
  br i1 %233, label %234, label %269, !dbg !2604

; <label>:234:                                    ; preds = %223
  %235 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 1, !dbg !2605
  %236 = load i64, i64* %235, align 8, !dbg !2605
  %237 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %13, align 8, !dbg !2606
  %238 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %237, i32 0, i32 1, !dbg !2607
  %239 = load %struct.fsys_namenode*, %struct.fsys_namenode** %238, align 8, !dbg !2607
  %240 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %239, i32 0, i32 9, !dbg !2608
  %241 = load %struct.file_ondisk_id*, %struct.file_ondisk_id** %240, align 8, !dbg !2608
  %242 = getelementptr inbounds %struct.file_ondisk_id, %struct.file_ondisk_id* %241, i32 0, i32 1, !dbg !2609
  %243 = load i64, i64* %242, align 8, !dbg !2609
  %244 = icmp eq i64 %236, %243, !dbg !2610
  br i1 %244, label %245, label %269, !dbg !2611

; <label>:245:                                    ; preds = %234
  %246 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %12, align 8, !dbg !2613
  %247 = icmp ne %struct.fsys_namenode_list* %246, null, !dbg !2613
  br i1 %247, label %248, label %261, !dbg !2616

; <label>:248:                                    ; preds = %245
  %249 = call i8* @gettext(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.82, i32 0, i32 0)) #9, !dbg !2617
  %250 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fnamevb, i32 0, i32 2), align 8, !dbg !2618
  %251 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %12, align 8, !dbg !2619
  %252 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %251, i32 0, i32 1, !dbg !2620
  %253 = load %struct.fsys_namenode*, %struct.fsys_namenode** %252, align 8, !dbg !2620
  %254 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %253, i32 0, i32 1, !dbg !2621
  %255 = load i8*, i8** %254, align 8, !dbg !2621
  %256 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %13, align 8, !dbg !2622
  %257 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %256, i32 0, i32 1, !dbg !2623
  %258 = load %struct.fsys_namenode*, %struct.fsys_namenode** %257, align 8, !dbg !2623
  %259 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %258, i32 0, i32 1, !dbg !2624
  %260 = load i8*, i8** %259, align 8, !dbg !2624
  call void (i8*, ...) @warning(i8* %249, i8* %250, i8* %255, i8* %260), !dbg !2625
  br label %261, !dbg !2627

; <label>:261:                                    ; preds = %248, %245
  %262 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %13, align 8, !dbg !2628
  store %struct.fsys_namenode_list* %262, %struct.fsys_namenode_list** %12, align 8, !dbg !2629
  %263 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fnamevb, i32 0, i32 2), align 8, !dbg !2630
  %264 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %13, align 8, !dbg !2631
  %265 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %264, i32 0, i32 1, !dbg !2632
  %266 = load %struct.fsys_namenode*, %struct.fsys_namenode** %265, align 8, !dbg !2632
  %267 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %266, i32 0, i32 1, !dbg !2633
  %268 = load i8*, i8** %267, align 8, !dbg !2633
  call void (i32, i8*, ...) @debug(i32 8, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.83, i32 0, i32 0), i8* %263, i8* %268), !dbg !2634
  br label %269, !dbg !2635

; <label>:269:                                    ; preds = %261, %234, %223
  br label %270, !dbg !2636

; <label>:270:                                    ; preds = %269, %222, %209, %147
  %271 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %13, align 8, !dbg !2637
  %272 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %271, i32 0, i32 0, !dbg !2639
  %273 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %272, align 8, !dbg !2639
  store %struct.fsys_namenode_list* %273, %struct.fsys_namenode_list** %13, align 8, !dbg !2640
  br label %136, !dbg !2641, !llvm.loop !2642

; <label>:274:                                    ; preds = %136
  call void @varbuf_destroy(%struct.varbuf* %14), !dbg !2644
  %275 = load %struct.fsys_namenode*, %struct.fsys_namenode** %8, align 8, !dbg !2645
  %276 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %275, i32 0, i32 6, !dbg !2647
  %277 = load i32, i32* %276, align 8, !dbg !2647
  %278 = and i32 %277, 4, !dbg !2648
  %279 = icmp ne i32 %278, 0, !dbg !2648
  br i1 %279, label %280, label %341, !dbg !2649

; <label>:280:                                    ; preds = %274
  %281 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %12, align 8, !dbg !2650
  %282 = icmp ne %struct.fsys_namenode_list* %281, null, !dbg !2650
  br i1 %282, label %283, label %326, !dbg !2653

; <label>:283:                                    ; preds = %280
  %284 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %12, align 8, !dbg !2654
  %285 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %284, i32 0, i32 1, !dbg !2657
  %286 = load %struct.fsys_namenode*, %struct.fsys_namenode** %285, align 8, !dbg !2657
  %287 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %286, i32 0, i32 6, !dbg !2658
  %288 = load i32, i32* %287, align 8, !dbg !2658
  %289 = and i32 %288, 1, !dbg !2659
  %290 = icmp ne i32 %289, 0, !dbg !2659
  br i1 %290, label %291, label %325, !dbg !2660

; <label>:291:                                    ; preds = %283
  %292 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %12, align 8, !dbg !2661
  %293 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %292, i32 0, i32 1, !dbg !2664
  %294 = load %struct.fsys_namenode*, %struct.fsys_namenode** %293, align 8, !dbg !2664
  %295 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %294, i32 0, i32 7, !dbg !2665
  %296 = load i8*, i8** %295, align 8, !dbg !2665
  %297 = call i32 @strcmp(i8* %296, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.62, i32 0, i32 0)) #11, !dbg !2666
  %298 = icmp eq i32 %297, 0, !dbg !2667
  br i1 %298, label %299, label %315, !dbg !2668

; <label>:299:                                    ; preds = %291
  %300 = load %struct.fsys_namenode*, %struct.fsys_namenode** %8, align 8, !dbg !2669
  %301 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %300, i32 0, i32 7, !dbg !2671
  %302 = load i8*, i8** %301, align 8, !dbg !2671
  %303 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %12, align 8, !dbg !2672
  %304 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %303, i32 0, i32 1, !dbg !2673
  %305 = load %struct.fsys_namenode*, %struct.fsys_namenode** %304, align 8, !dbg !2673
  %306 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %305, i32 0, i32 7, !dbg !2674
  store i8* %302, i8** %306, align 8, !dbg !2675
  %307 = load %struct.fsys_namenode*, %struct.fsys_namenode** %8, align 8, !dbg !2676
  %308 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %307, i32 0, i32 1, !dbg !2677
  %309 = load i8*, i8** %308, align 8, !dbg !2677
  %310 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %12, align 8, !dbg !2678
  %311 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %310, i32 0, i32 1, !dbg !2679
  %312 = load %struct.fsys_namenode*, %struct.fsys_namenode** %311, align 8, !dbg !2679
  %313 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %312, i32 0, i32 1, !dbg !2680
  %314 = load i8*, i8** %313, align 8, !dbg !2680
  call void (i32, i8*, ...) @debug(i32 8, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.84, i32 0, i32 0), i8* %309, i8* %314), !dbg !2681
  br label %324, !dbg !2682

; <label>:315:                                    ; preds = %291
  %316 = load %struct.fsys_namenode*, %struct.fsys_namenode** %8, align 8, !dbg !2683
  %317 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %316, i32 0, i32 1, !dbg !2685
  %318 = load i8*, i8** %317, align 8, !dbg !2685
  %319 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %12, align 8, !dbg !2686
  %320 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %319, i32 0, i32 1, !dbg !2687
  %321 = load %struct.fsys_namenode*, %struct.fsys_namenode** %320, align 8, !dbg !2687
  %322 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %321, i32 0, i32 1, !dbg !2688
  %323 = load i8*, i8** %322, align 8, !dbg !2688
  call void (i32, i8*, ...) @debug(i32 8, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.85, i32 0, i32 0), i8* %318, i8* %323), !dbg !2689
  br label %324

; <label>:324:                                    ; preds = %315, %299
  br label %325, !dbg !2690

; <label>:325:                                    ; preds = %324, %283
  br label %340, !dbg !2691

; <label>:326:                                    ; preds = %280
  %327 = load %struct.fsys_namenode*, %struct.fsys_namenode** %8, align 8, !dbg !2692
  %328 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %327, i32 0, i32 1, !dbg !2694
  %329 = load i8*, i8** %328, align 8, !dbg !2694
  call void (i32, i8*, ...) @debug(i32 8, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.86, i32 0, i32 0), i8* %329), !dbg !2695
  %330 = load %struct.fsys_namenode*, %struct.fsys_namenode** %8, align 8, !dbg !2696
  %331 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %330, i32 0, i32 6, !dbg !2697
  %332 = load i32, i32* %331, align 8, !dbg !2698
  %333 = or i32 %332, 8, !dbg !2698
  store i32 %333, i32* %331, align 8, !dbg !2698
  %334 = load %struct.fsys_namenode_queue*, %struct.fsys_namenode_queue** %6, align 8, !dbg !2699
  %335 = load %struct.fsys_namenode*, %struct.fsys_namenode** %8, align 8, !dbg !2700
  %336 = call %struct.fsys_namenode_list* @tar_fsys_namenode_queue_push(%struct.fsys_namenode_queue* %334, %struct.fsys_namenode* %335), !dbg !2701
  %337 = load %struct.fsys_namenode_queue*, %struct.fsys_namenode_queue** %5, align 8, !dbg !2702
  %338 = load %struct.fsys_namenode*, %struct.fsys_namenode** %8, align 8, !dbg !2703
  %339 = call %struct.fsys_namenode_list* @tar_fsys_namenode_queue_push(%struct.fsys_namenode_queue* %337, %struct.fsys_namenode* %338), !dbg !2704
  br label %340

; <label>:340:                                    ; preds = %326, %325
  br label %20, !dbg !2705, !llvm.loop !2380

; <label>:341:                                    ; preds = %274
  %342 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %12, align 8, !dbg !2706
  %343 = icmp ne %struct.fsys_namenode_list* %342, null, !dbg !2706
  br i1 %343, label %344, label %345, !dbg !2708

; <label>:344:                                    ; preds = %341
  br label %20, !dbg !2709, !llvm.loop !2380

; <label>:345:                                    ; preds = %341
  %346 = load %struct.fsys_namenode*, %struct.fsys_namenode** %11, align 8, !dbg !2710
  %347 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !2711
  call void @trig_path_activate(%struct.fsys_namenode* %346, %struct.pkginfo* %347), !dbg !2712
  %348 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fnamevb, i32 0, i32 2), align 8, !dbg !2713
  %349 = call i32 @secure_unlink_statted(i8* %348, %struct.stat* %10), !dbg !2715
  %350 = icmp ne i32 %349, 0, !dbg !2715
  br i1 %350, label %351, label %359, !dbg !2716

; <label>:351:                                    ; preds = %345
  %352 = call i8* @gettext(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.87, i32 0, i32 0)) #9, !dbg !2717
  %353 = load %struct.fsys_namenode*, %struct.fsys_namenode** %8, align 8, !dbg !2719
  %354 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %353, i32 0, i32 1, !dbg !2720
  %355 = load i8*, i8** %354, align 8, !dbg !2720
  %356 = call i32* @__errno_location() #1, !dbg !2721
  %357 = load i32, i32* %356, align 4, !dbg !2722
  %358 = call i8* @strerror(i32 %357) #9, !dbg !2723
  call void (i8*, ...) @warning(i8* %352, i8* %355, i8* %358), !dbg !2725
  br label %359, !dbg !2726

; <label>:359:                                    ; preds = %351, %345
  br label %360

; <label>:360:                                    ; preds = %359, %129
  br label %20, !dbg !2727, !llvm.loop !2380

; <label>:361:                                    ; preds = %20
  ret void, !dbg !2729
}

declare void @write_filelist_except(%struct.pkginfo*, %struct.pkgbin*, %struct.fsys_namenode_list*, i32) #2

declare i8* @pkg_infodb_get_file(%struct.pkginfo*, %struct.pkgbin*, i8*) #2

declare void @trig_cicb_interest_delete(i8*, %struct.pkginfo*, %struct.pkgbin*, i32) #2

declare void @trig_cicb_interest_add(i8*, %struct.pkginfo*, %struct.pkgbin*, i32) #2

declare void @trig_file_interests_save() #2

; Function Attrs: nounwind uwtable
define internal void @pkg_infodb_update(%struct.pkginfo*, i8*, i8*) #0 !dbg !2730 {
  %4 = alloca %struct.pkginfo*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.match_node*, align 8
  %8 = alloca %struct.__dirstream*, align 8
  %9 = alloca %struct.dirent*, align 8
  %10 = alloca i8*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %4, metadata !2733, metadata !623), !dbg !2734
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2735, metadata !623), !dbg !2736
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2737, metadata !623), !dbg !2738
  call void @llvm.dbg.declare(metadata %struct.match_node** %7, metadata !2739, metadata !623), !dbg !2740
  call void @llvm.dbg.declare(metadata %struct.__dirstream** %8, metadata !2741, metadata !623), !dbg !2746
  call void @llvm.dbg.declare(metadata %struct.dirent** %9, metadata !2747, metadata !623), !dbg !2761
  br label %11, !dbg !2762

; <label>:11:                                     ; preds = %14, %3
  %12 = load %struct.match_node*, %struct.match_node** @match_head, align 8, !dbg !2763
  store %struct.match_node* %12, %struct.match_node** %7, align 8, !dbg !2765
  %13 = icmp ne %struct.match_node* %12, null, !dbg !2766
  br i1 %13, label %14, label %19, !dbg !2766

; <label>:14:                                     ; preds = %11
  %15 = load %struct.match_node*, %struct.match_node** %7, align 8, !dbg !2767
  %16 = getelementptr inbounds %struct.match_node, %struct.match_node* %15, i32 0, i32 0, !dbg !2769
  %17 = load %struct.match_node*, %struct.match_node** %16, align 8, !dbg !2769
  store %struct.match_node* %17, %struct.match_node** @match_head, align 8, !dbg !2770
  %18 = load %struct.match_node*, %struct.match_node** %7, align 8, !dbg !2771
  call void @match_node_free(%struct.match_node* %18), !dbg !2772
  br label %11, !dbg !2773, !llvm.loop !2775

; <label>:19:                                     ; preds = %11
  %20 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !2776
  %21 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !2777
  %22 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %21, i32 0, i32 10, !dbg !2778
  call void @pkg_infodb_foreach(%struct.pkginfo* %20, %struct.pkgbin* %22, void (i8*, i8*)* @pkg_infodb_update_file), !dbg !2779
  br label %23, !dbg !2780

; <label>:23:                                     ; preds = %66, %19
  %24 = load %struct.match_node*, %struct.match_node** @match_head, align 8, !dbg !2781
  store %struct.match_node* %24, %struct.match_node** %7, align 8, !dbg !2782
  %25 = icmp ne %struct.match_node* %24, null, !dbg !2783
  br i1 %25, label %26, label %71, !dbg !2783

; <label>:26:                                     ; preds = %23
  %27 = load i8*, i8** %6, align 8, !dbg !2784
  %28 = load %struct.match_node*, %struct.match_node** %7, align 8, !dbg !2786
  %29 = getelementptr inbounds %struct.match_node, %struct.match_node* %28, i32 0, i32 1, !dbg !2787
  %30 = load i8*, i8** %29, align 8, !dbg !2787
  %31 = call i8* @strcpy(i8* %27, i8* %30) #9, !dbg !2788
  %32 = load i8*, i8** %5, align 8, !dbg !2789
  %33 = load %struct.match_node*, %struct.match_node** %7, align 8, !dbg !2791
  %34 = getelementptr inbounds %struct.match_node, %struct.match_node* %33, i32 0, i32 2, !dbg !2792
  %35 = load i8*, i8** %34, align 8, !dbg !2792
  %36 = call i32 @rename(i8* %32, i8* %35) #9, !dbg !2793
  %37 = icmp ne i32 %36, 0, !dbg !2793
  br i1 %37, label %43, label %38, !dbg !2794

; <label>:38:                                     ; preds = %26
  %39 = load i8*, i8** %5, align 8, !dbg !2795
  %40 = load %struct.match_node*, %struct.match_node** %7, align 8, !dbg !2797
  %41 = getelementptr inbounds %struct.match_node, %struct.match_node* %40, i32 0, i32 2, !dbg !2798
  %42 = load i8*, i8** %41, align 8, !dbg !2798
  call void (i32, i8*, ...) @debug(i32 2, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.88, i32 0, i32 0), i8* %39, i8* %42), !dbg !2799
  br label %66, !dbg !2800

; <label>:43:                                     ; preds = %26
  %44 = call i32* @__errno_location() #1, !dbg !2801
  %45 = load i32, i32* %44, align 4, !dbg !2804
  %46 = icmp eq i32 %45, 2, !dbg !2805
  br i1 %46, label %47, label %62, !dbg !2806

; <label>:47:                                     ; preds = %43
  %48 = load %struct.match_node*, %struct.match_node** %7, align 8, !dbg !2807
  %49 = getelementptr inbounds %struct.match_node, %struct.match_node* %48, i32 0, i32 2, !dbg !2810
  %50 = load i8*, i8** %49, align 8, !dbg !2810
  %51 = call i32 @unlink(i8* %50) #9, !dbg !2811
  %52 = icmp ne i32 %51, 0, !dbg !2811
  br i1 %52, label %53, label %58, !dbg !2812

; <label>:53:                                     ; preds = %47
  %54 = call i8* @gettext(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.89, i32 0, i32 0)) #9, !dbg !2813
  %55 = load %struct.match_node*, %struct.match_node** %7, align 8, !dbg !2814
  %56 = getelementptr inbounds %struct.match_node, %struct.match_node* %55, i32 0, i32 2, !dbg !2815
  %57 = load i8*, i8** %56, align 8, !dbg !2815
  call void (i8*, ...) @ohshite(i8* %54, i8* %57) #10, !dbg !2816
  unreachable, !dbg !2818

; <label>:58:                                     ; preds = %47
  %59 = load %struct.match_node*, %struct.match_node** %7, align 8, !dbg !2819
  %60 = getelementptr inbounds %struct.match_node, %struct.match_node* %59, i32 0, i32 2, !dbg !2820
  %61 = load i8*, i8** %60, align 8, !dbg !2820
  call void (i32, i8*, ...) @debug(i32 2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.90, i32 0, i32 0), i8* %61), !dbg !2821
  br label %65, !dbg !2822

; <label>:62:                                     ; preds = %43
  %63 = call i8* @gettext(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.91, i32 0, i32 0)) #9, !dbg !2823
  %64 = load i8*, i8** %5, align 8, !dbg !2825
  call void (i8*, ...) @ohshite(i8* %63, i8* %64) #10, !dbg !2826
  unreachable, !dbg !2828

; <label>:65:                                     ; preds = %58
  br label %66

; <label>:66:                                     ; preds = %65, %38
  %67 = load %struct.match_node*, %struct.match_node** %7, align 8, !dbg !2829
  %68 = getelementptr inbounds %struct.match_node, %struct.match_node* %67, i32 0, i32 0, !dbg !2830
  %69 = load %struct.match_node*, %struct.match_node** %68, align 8, !dbg !2830
  store %struct.match_node* %69, %struct.match_node** @match_head, align 8, !dbg !2831
  %70 = load %struct.match_node*, %struct.match_node** %7, align 8, !dbg !2832
  call void @match_node_free(%struct.match_node* %70), !dbg !2833
  br label %23, !dbg !2834, !llvm.loop !2835

; <label>:71:                                     ; preds = %23
  %72 = load i8*, i8** %6, align 8, !dbg !2836
  %73 = getelementptr inbounds i8, i8* %72, i64 0, !dbg !2836
  store i8 0, i8* %73, align 1, !dbg !2837
  %74 = load i8*, i8** %5, align 8, !dbg !2838
  %75 = call %struct.__dirstream* @opendir(i8* %74), !dbg !2839
  store %struct.__dirstream* %75, %struct.__dirstream** %8, align 8, !dbg !2840
  %76 = load %struct.__dirstream*, %struct.__dirstream** %8, align 8, !dbg !2841
  %77 = icmp ne %struct.__dirstream* %76, null, !dbg !2841
  br i1 %77, label %80, label %78, !dbg !2843

; <label>:78:                                     ; preds = %71
  %79 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.92, i32 0, i32 0)) #9, !dbg !2844
  call void (i8*, ...) @ohshite(i8* %79) #10, !dbg !2845
  unreachable, !dbg !2847

; <label>:80:                                     ; preds = %71
  %81 = load %struct.__dirstream*, %struct.__dirstream** %8, align 8, !dbg !2848
  %82 = bitcast %struct.__dirstream* %81 to i8*, !dbg !2849
  call void (void (i32, i8**)*, i32, i32, ...) @push_cleanup(void (i32, i8**)* @cu_closedir, i32 -1, i32 1, i8* %82), !dbg !2850
  br label %83, !dbg !2851

; <label>:83:                                     ; preds = %166, %144, %136, %93, %80
  %84 = load %struct.__dirstream*, %struct.__dirstream** %8, align 8, !dbg !2852
  %85 = call %struct.dirent* @readdir(%struct.__dirstream* %84), !dbg !2853
  store %struct.dirent* %85, %struct.dirent** %9, align 8, !dbg !2854
  %86 = icmp ne %struct.dirent* %85, null, !dbg !2855
  br i1 %86, label %87, label %169, !dbg !2855

; <label>:87:                                     ; preds = %83
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2856, metadata !623), !dbg !2858
  %88 = load %struct.dirent*, %struct.dirent** %9, align 8, !dbg !2859
  %89 = getelementptr inbounds %struct.dirent, %struct.dirent* %88, i32 0, i32 4, !dbg !2861
  %90 = getelementptr inbounds [256 x i8], [256 x i8]* %89, i32 0, i32 0, !dbg !2859
  %91 = call i8* @strchr(i8* %90, i32 46) #11, !dbg !2862
  %92 = icmp ne i8* %91, null, !dbg !2862
  br i1 %92, label %93, label %97, !dbg !2863

; <label>:93:                                     ; preds = %87
  %94 = load %struct.dirent*, %struct.dirent** %9, align 8, !dbg !2864
  %95 = getelementptr inbounds %struct.dirent, %struct.dirent* %94, i32 0, i32 4, !dbg !2866
  %96 = getelementptr inbounds [256 x i8], [256 x i8]* %95, i32 0, i32 0, !dbg !2864
  call void (i32, i8*, ...) @debug(i32 2, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.93, i32 0, i32 0), i8* %96), !dbg !2867
  br label %83, !dbg !2868, !llvm.loop !2869

; <label>:97:                                     ; preds = %87
  %98 = load %struct.dirent*, %struct.dirent** %9, align 8, !dbg !2870
  %99 = getelementptr inbounds %struct.dirent, %struct.dirent* %98, i32 0, i32 4, !dbg !2872
  %100 = getelementptr inbounds [256 x i8], [256 x i8]* %99, i32 0, i32 0, !dbg !2870
  %101 = call i64 @strlen(i8* %100) #11, !dbg !2873
  %102 = icmp ugt i64 %101, 100, !dbg !2874
  br i1 %102, label %103, label %108, !dbg !2875

; <label>:103:                                    ; preds = %97
  %104 = call i8* @gettext(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.94, i32 0, i32 0)) #9, !dbg !2876
  %105 = load %struct.dirent*, %struct.dirent** %9, align 8, !dbg !2877
  %106 = getelementptr inbounds %struct.dirent, %struct.dirent* %105, i32 0, i32 4, !dbg !2878
  %107 = getelementptr inbounds [256 x i8], [256 x i8]* %106, i32 0, i32 0, !dbg !2877
  call void (i8*, ...) @ohshit(i8* %104, i8* %107) #10, !dbg !2879
  unreachable, !dbg !2881

; <label>:108:                                    ; preds = %97
  %109 = load i8*, i8** %6, align 8, !dbg !2882
  %110 = load %struct.dirent*, %struct.dirent** %9, align 8, !dbg !2883
  %111 = getelementptr inbounds %struct.dirent, %struct.dirent* %110, i32 0, i32 4, !dbg !2884
  %112 = getelementptr inbounds [256 x i8], [256 x i8]* %111, i32 0, i32 0, !dbg !2883
  %113 = call i8* @strcpy(i8* %109, i8* %112) #9, !dbg !2885
  %114 = load i8*, i8** %5, align 8, !dbg !2886
  %115 = call i32 @rmdir(i8* %114) #9, !dbg !2888
  %116 = icmp eq i32 %115, 0, !dbg !2889
  br i1 %116, label %117, label %120, !dbg !2890

; <label>:117:                                    ; preds = %108
  %118 = call i8* @gettext(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.95, i32 0, i32 0)) #9, !dbg !2891
  %119 = load i8*, i8** %5, align 8, !dbg !2892
  call void (i8*, ...) @ohshit(i8* %118, i8* %119) #10, !dbg !2893
  unreachable, !dbg !2895

; <label>:120:                                    ; preds = %108
  %121 = call i32* @__errno_location() #1, !dbg !2896
  %122 = load i32, i32* %121, align 4, !dbg !2898
  %123 = icmp ne i32 %122, 20, !dbg !2899
  br i1 %123, label %124, label %129, !dbg !2900

; <label>:124:                                    ; preds = %120
  %125 = call i8* @gettext(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.96, i32 0, i32 0)) #9, !dbg !2901
  %126 = load %struct.dirent*, %struct.dirent** %9, align 8, !dbg !2902
  %127 = getelementptr inbounds %struct.dirent, %struct.dirent* %126, i32 0, i32 4, !dbg !2903
  %128 = getelementptr inbounds [256 x i8], [256 x i8]* %127, i32 0, i32 0, !dbg !2902
  call void (i8*, ...) @ohshite(i8* %125, i8* %128) #10, !dbg !2904
  unreachable, !dbg !2906

; <label>:129:                                    ; preds = %120
  br label %130

; <label>:130:                                    ; preds = %129
  %131 = load %struct.dirent*, %struct.dirent** %9, align 8, !dbg !2907
  %132 = getelementptr inbounds %struct.dirent, %struct.dirent* %131, i32 0, i32 4, !dbg !2909
  %133 = getelementptr inbounds [256 x i8], [256 x i8]* %132, i32 0, i32 0, !dbg !2907
  %134 = call i32 @strcmp(i8* %133, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0)) #11, !dbg !2910
  %135 = icmp eq i32 %134, 0, !dbg !2911
  br i1 %135, label %136, label %138, !dbg !2912

; <label>:136:                                    ; preds = %130
  %137 = load i8*, i8** %5, align 8, !dbg !2913
  call void (i32, i8*, ...) @debug(i32 2, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.97, i32 0, i32 0), i8* %137), !dbg !2915
  br label %83, !dbg !2916, !llvm.loop !2869

; <label>:138:                                    ; preds = %130
  %139 = load %struct.dirent*, %struct.dirent** %9, align 8, !dbg !2917
  %140 = getelementptr inbounds %struct.dirent, %struct.dirent* %139, i32 0, i32 4, !dbg !2919
  %141 = getelementptr inbounds [256 x i8], [256 x i8]* %140, i32 0, i32 0, !dbg !2917
  %142 = call i32 @strcmp(i8* %141, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.98, i32 0, i32 0)) #11, !dbg !2920
  %143 = icmp eq i32 %142, 0, !dbg !2921
  br i1 %143, label %144, label %150, !dbg !2922

; <label>:144:                                    ; preds = %138
  %145 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.99, i32 0, i32 0)) #9, !dbg !2923
  %146 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !2925
  %147 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !2926
  %148 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %147, i32 0, i32 10, !dbg !2927
  %149 = call i8* @pkgbin_name(%struct.pkginfo* %146, %struct.pkgbin* %148, i32 1), !dbg !2928
  call void (i8*, ...) @warning(i8* %145, i8* %149), !dbg !2929
  br label %83, !dbg !2931, !llvm.loop !2869

; <label>:150:                                    ; preds = %138
  %151 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !2932
  %152 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !2933
  %153 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %152, i32 0, i32 10, !dbg !2934
  %154 = load %struct.dirent*, %struct.dirent** %9, align 8, !dbg !2935
  %155 = getelementptr inbounds %struct.dirent, %struct.dirent* %154, i32 0, i32 4, !dbg !2936
  %156 = getelementptr inbounds [256 x i8], [256 x i8]* %155, i32 0, i32 0, !dbg !2935
  %157 = call i8* @pkg_infodb_get_file(%struct.pkginfo* %151, %struct.pkgbin* %153, i8* %156), !dbg !2937
  store i8* %157, i8** %10, align 8, !dbg !2938
  %158 = load i8*, i8** %5, align 8, !dbg !2939
  %159 = load i8*, i8** %10, align 8, !dbg !2941
  %160 = call i32 @rename(i8* %158, i8* %159) #9, !dbg !2942
  %161 = icmp ne i32 %160, 0, !dbg !2942
  br i1 %161, label %162, label %166, !dbg !2943

; <label>:162:                                    ; preds = %150
  %163 = call i8* @gettext(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.100, i32 0, i32 0)) #9, !dbg !2944
  %164 = load i8*, i8** %5, align 8, !dbg !2945
  %165 = load i8*, i8** %10, align 8, !dbg !2946
  call void (i8*, ...) @ohshite(i8* %163, i8* %164, i8* %165) #10, !dbg !2947
  unreachable, !dbg !2949

; <label>:166:                                    ; preds = %150
  %167 = load i8*, i8** %5, align 8, !dbg !2950
  %168 = load i8*, i8** %10, align 8, !dbg !2951
  call void (i32, i8*, ...) @debug(i32 2, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.101, i32 0, i32 0), i8* %167, i8* %168), !dbg !2952
  br label %83, !dbg !2953, !llvm.loop !2869

; <label>:169:                                    ; preds = %83
  call void @pop_cleanup(i32 1), !dbg !2954
  %170 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !2955
  %171 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %170, i32 0, i32 9, !dbg !2957
  %172 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %171, i32 0, i32 2, !dbg !2958
  %173 = load i32, i32* %172, align 4, !dbg !2958
  %174 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !2959
  %175 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %174, i32 0, i32 10, !dbg !2960
  %176 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %175, i32 0, i32 2, !dbg !2961
  %177 = load i32, i32* %176, align 4, !dbg !2961
  %178 = icmp ne i32 %173, %177, !dbg !2962
  br i1 %178, label %179, label %195, !dbg !2963

; <label>:179:                                    ; preds = %169
  %180 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !2964
  %181 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %180, i32 0, i32 9, !dbg !2965
  %182 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %181, i32 0, i32 2, !dbg !2966
  %183 = load i32, i32* %182, align 4, !dbg !2966
  %184 = icmp eq i32 %183, 1, !dbg !2967
  br i1 %184, label %191, label %185, !dbg !2968

; <label>:185:                                    ; preds = %179
  %186 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !2969
  %187 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %186, i32 0, i32 10, !dbg !2970
  %188 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %187, i32 0, i32 2, !dbg !2971
  %189 = load i32, i32* %188, align 4, !dbg !2971
  %190 = icmp eq i32 %189, 1, !dbg !2972
  br i1 %190, label %191, label %195, !dbg !2973

; <label>:191:                                    ; preds = %185, %179
  call void (i32, i8*, ...) @debug(i32 2, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.102, i32 0, i32 0)), !dbg !2974
  %192 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !2976
  %193 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !2977
  %194 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %193, i32 0, i32 9, !dbg !2978
  call void @pkg_infodb_foreach(%struct.pkginfo* %192, %struct.pkgbin* %194, void (i8*, i8*)* @pkg_infodb_remove_file), !dbg !2979
  br label %195, !dbg !2980

; <label>:195:                                    ; preds = %191, %185, %169
  %196 = call i8* @pkg_infodb_get_dir(), !dbg !2981
  call void @dir_sync_path(i8* %196), !dbg !2982
  ret void, !dbg !2983
}

declare void @write_filehash_except(%struct.pkginfo*, %struct.pkgbin*, %struct.fsys_namenode_list*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @pkg_update_fields(%struct.pkginfo*, %struct.fsys_namenode_queue*) #0 !dbg !2984 {
  %3 = alloca %struct.pkginfo*, align 8
  %4 = alloca %struct.fsys_namenode_queue*, align 8
  %5 = alloca %struct.dependency*, align 8
  %6 = alloca %struct.dependency**, align 8
  %7 = alloca %struct.dependency*, align 8
  %8 = alloca %struct.dependency*, align 8
  %9 = alloca %struct.deppossi**, align 8
  %10 = alloca %struct.deppossi*, align 8
  %11 = alloca %struct.deppossi*, align 8
  %12 = alloca %struct.conffile**, align 8
  %13 = alloca %struct.conffile*, align 8
  %14 = alloca %struct.fsys_namenode_list*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %3, metadata !2987, metadata !623), !dbg !2988
  store %struct.fsys_namenode_queue* %1, %struct.fsys_namenode_queue** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode_queue** %4, metadata !2989, metadata !623), !dbg !2990
  call void @llvm.dbg.declare(metadata %struct.dependency** %5, metadata !2991, metadata !623), !dbg !2992
  call void @llvm.dbg.declare(metadata %struct.dependency*** %6, metadata !2993, metadata !623), !dbg !2995
  call void @llvm.dbg.declare(metadata %struct.dependency** %7, metadata !2996, metadata !623), !dbg !2997
  call void @llvm.dbg.declare(metadata %struct.dependency** %8, metadata !2998, metadata !623), !dbg !2999
  call void @llvm.dbg.declare(metadata %struct.deppossi*** %9, metadata !3000, metadata !623), !dbg !3002
  call void @llvm.dbg.declare(metadata %struct.deppossi** %10, metadata !3003, metadata !623), !dbg !3004
  call void @llvm.dbg.declare(metadata %struct.deppossi** %11, metadata !3005, metadata !623), !dbg !3006
  call void @llvm.dbg.declare(metadata %struct.conffile*** %12, metadata !3007, metadata !623), !dbg !3009
  call void @llvm.dbg.declare(metadata %struct.conffile** %13, metadata !3010, metadata !623), !dbg !3011
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode_list** %14, metadata !3012, metadata !623), !dbg !3013
  store %struct.dependency* null, %struct.dependency** %5, align 8, !dbg !3014
  store %struct.dependency** %5, %struct.dependency*** %6, align 8, !dbg !3015
  %15 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !3016
  %16 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %15, i32 0, i32 10, !dbg !3018
  %17 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %16, i32 0, i32 0, !dbg !3019
  %18 = load %struct.dependency*, %struct.dependency** %17, align 8, !dbg !3019
  store %struct.dependency* %18, %struct.dependency** %8, align 8, !dbg !3020
  br label %19, !dbg !3021

; <label>:19:                                     ; preds = %109, %2
  %20 = load %struct.dependency*, %struct.dependency** %8, align 8, !dbg !3022
  %21 = icmp ne %struct.dependency* %20, null, !dbg !3025
  br i1 %21, label %22, label %113, !dbg !3025

; <label>:22:                                     ; preds = %19
  %23 = call i8* @nfmalloc(i64 32), !dbg !3026
  %24 = bitcast i8* %23 to %struct.dependency*, !dbg !3026
  store %struct.dependency* %24, %struct.dependency** %7, align 8, !dbg !3028
  %25 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !3029
  %26 = load %struct.dependency*, %struct.dependency** %7, align 8, !dbg !3030
  %27 = getelementptr inbounds %struct.dependency, %struct.dependency* %26, i32 0, i32 0, !dbg !3031
  store %struct.pkginfo* %25, %struct.pkginfo** %27, align 8, !dbg !3032
  %28 = load %struct.dependency*, %struct.dependency** %7, align 8, !dbg !3033
  %29 = getelementptr inbounds %struct.dependency, %struct.dependency* %28, i32 0, i32 1, !dbg !3034
  store %struct.dependency* null, %struct.dependency** %29, align 8, !dbg !3035
  %30 = load %struct.dependency*, %struct.dependency** %7, align 8, !dbg !3036
  %31 = getelementptr inbounds %struct.dependency, %struct.dependency* %30, i32 0, i32 2, !dbg !3037
  store %struct.deppossi* null, %struct.deppossi** %31, align 8, !dbg !3038
  %32 = load %struct.dependency*, %struct.dependency** %7, align 8, !dbg !3039
  %33 = getelementptr inbounds %struct.dependency, %struct.dependency* %32, i32 0, i32 2, !dbg !3040
  store %struct.deppossi** %33, %struct.deppossi*** %9, align 8, !dbg !3041
  %34 = load %struct.dependency*, %struct.dependency** %8, align 8, !dbg !3042
  %35 = getelementptr inbounds %struct.dependency, %struct.dependency* %34, i32 0, i32 2, !dbg !3044
  %36 = load %struct.deppossi*, %struct.deppossi** %35, align 8, !dbg !3044
  store %struct.deppossi* %36, %struct.deppossi** %10, align 8, !dbg !3045
  br label %37, !dbg !3046

; <label>:37:                                     ; preds = %95, %22
  %38 = load %struct.deppossi*, %struct.deppossi** %10, align 8, !dbg !3047
  %39 = icmp ne %struct.deppossi* %38, null, !dbg !3050
  br i1 %39, label %40, label %99, !dbg !3050

; <label>:40:                                     ; preds = %37
  %41 = call i8* @nfmalloc(i64 80), !dbg !3051
  %42 = bitcast i8* %41 to %struct.deppossi*, !dbg !3051
  store %struct.deppossi* %42, %struct.deppossi** %11, align 8, !dbg !3053
  %43 = load %struct.dependency*, %struct.dependency** %7, align 8, !dbg !3054
  %44 = load %struct.deppossi*, %struct.deppossi** %11, align 8, !dbg !3055
  %45 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %44, i32 0, i32 0, !dbg !3056
  store %struct.dependency* %43, %struct.dependency** %45, align 8, !dbg !3057
  %46 = load %struct.deppossi*, %struct.deppossi** %10, align 8, !dbg !3058
  %47 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %46, i32 0, i32 1, !dbg !3059
  %48 = load %struct.pkgset*, %struct.pkgset** %47, align 8, !dbg !3059
  %49 = load %struct.deppossi*, %struct.deppossi** %11, align 8, !dbg !3060
  %50 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %49, i32 0, i32 1, !dbg !3061
  store %struct.pkgset* %48, %struct.pkgset** %50, align 8, !dbg !3062
  %51 = load %struct.deppossi*, %struct.deppossi** %11, align 8, !dbg !3063
  %52 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %51, i32 0, i32 2, !dbg !3064
  store %struct.deppossi* null, %struct.deppossi** %52, align 8, !dbg !3065
  %53 = load %struct.deppossi*, %struct.deppossi** %11, align 8, !dbg !3066
  %54 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %53, i32 0, i32 4, !dbg !3067
  store %struct.deppossi* null, %struct.deppossi** %54, align 8, !dbg !3068
  %55 = load %struct.deppossi*, %struct.deppossi** %11, align 8, !dbg !3069
  %56 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %55, i32 0, i32 3, !dbg !3070
  store %struct.deppossi* null, %struct.deppossi** %56, align 8, !dbg !3071
  %57 = load %struct.deppossi*, %struct.deppossi** %10, align 8, !dbg !3072
  %58 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %57, i32 0, i32 8, !dbg !3073
  %59 = load i8, i8* %58, align 4, !dbg !3073
  %60 = trunc i8 %59 to i1, !dbg !3073
  %61 = load %struct.deppossi*, %struct.deppossi** %11, align 8, !dbg !3074
  %62 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %61, i32 0, i32 8, !dbg !3075
  %63 = zext i1 %60 to i8, !dbg !3076
  store i8 %63, i8* %62, align 4, !dbg !3076
  %64 = load %struct.deppossi*, %struct.deppossi** %10, align 8, !dbg !3077
  %65 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %64, i32 0, i32 5, !dbg !3078
  %66 = load %struct.dpkg_arch*, %struct.dpkg_arch** %65, align 8, !dbg !3078
  %67 = load %struct.deppossi*, %struct.deppossi** %11, align 8, !dbg !3079
  %68 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %67, i32 0, i32 5, !dbg !3080
  store %struct.dpkg_arch* %66, %struct.dpkg_arch** %68, align 8, !dbg !3081
  %69 = load %struct.deppossi*, %struct.deppossi** %10, align 8, !dbg !3082
  %70 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %69, i32 0, i32 7, !dbg !3083
  %71 = load i32, i32* %70, align 8, !dbg !3083
  %72 = load %struct.deppossi*, %struct.deppossi** %11, align 8, !dbg !3084
  %73 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %72, i32 0, i32 7, !dbg !3085
  store i32 %71, i32* %73, align 8, !dbg !3086
  %74 = load %struct.deppossi*, %struct.deppossi** %10, align 8, !dbg !3087
  %75 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %74, i32 0, i32 7, !dbg !3089
  %76 = load i32, i32* %75, align 8, !dbg !3089
  %77 = icmp ne i32 %76, 0, !dbg !3090
  br i1 %77, label %78, label %85, !dbg !3091

; <label>:78:                                     ; preds = %40
  %79 = load %struct.deppossi*, %struct.deppossi** %11, align 8, !dbg !3092
  %80 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %79, i32 0, i32 6, !dbg !3093
  %81 = load %struct.deppossi*, %struct.deppossi** %10, align 8, !dbg !3094
  %82 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %81, i32 0, i32 6, !dbg !3095
  %83 = bitcast %struct.dpkg_version* %80 to i8*, !dbg !3095
  %84 = bitcast %struct.dpkg_version* %82 to i8*, !dbg !3095
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %83, i8* %84, i64 24, i32 8, i1 false), !dbg !3095
  br label %88, !dbg !3092

; <label>:85:                                     ; preds = %40
  %86 = load %struct.deppossi*, %struct.deppossi** %11, align 8, !dbg !3096
  %87 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %86, i32 0, i32 6, !dbg !3097
  call void @dpkg_version_blank(%struct.dpkg_version* %87), !dbg !3098
  br label %88

; <label>:88:                                     ; preds = %85, %78
  %89 = load %struct.deppossi*, %struct.deppossi** %11, align 8, !dbg !3099
  %90 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %89, i32 0, i32 9, !dbg !3100
  store i8 0, i8* %90, align 1, !dbg !3101
  %91 = load %struct.deppossi*, %struct.deppossi** %11, align 8, !dbg !3102
  %92 = load %struct.deppossi**, %struct.deppossi*** %9, align 8, !dbg !3103
  store %struct.deppossi* %91, %struct.deppossi** %92, align 8, !dbg !3104
  %93 = load %struct.deppossi*, %struct.deppossi** %11, align 8, !dbg !3105
  %94 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %93, i32 0, i32 2, !dbg !3106
  store %struct.deppossi** %94, %struct.deppossi*** %9, align 8, !dbg !3107
  br label %95, !dbg !3108

; <label>:95:                                     ; preds = %88
  %96 = load %struct.deppossi*, %struct.deppossi** %10, align 8, !dbg !3109
  %97 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %96, i32 0, i32 2, !dbg !3111
  %98 = load %struct.deppossi*, %struct.deppossi** %97, align 8, !dbg !3111
  store %struct.deppossi* %98, %struct.deppossi** %10, align 8, !dbg !3112
  br label %37, !dbg !3113, !llvm.loop !3114

; <label>:99:                                     ; preds = %37
  %100 = load %struct.dependency*, %struct.dependency** %8, align 8, !dbg !3116
  %101 = getelementptr inbounds %struct.dependency, %struct.dependency* %100, i32 0, i32 3, !dbg !3117
  %102 = load i32, i32* %101, align 8, !dbg !3117
  %103 = load %struct.dependency*, %struct.dependency** %7, align 8, !dbg !3118
  %104 = getelementptr inbounds %struct.dependency, %struct.dependency* %103, i32 0, i32 3, !dbg !3119
  store i32 %102, i32* %104, align 8, !dbg !3120
  %105 = load %struct.dependency*, %struct.dependency** %7, align 8, !dbg !3121
  %106 = load %struct.dependency**, %struct.dependency*** %6, align 8, !dbg !3122
  store %struct.dependency* %105, %struct.dependency** %106, align 8, !dbg !3123
  %107 = load %struct.dependency*, %struct.dependency** %7, align 8, !dbg !3124
  %108 = getelementptr inbounds %struct.dependency, %struct.dependency* %107, i32 0, i32 1, !dbg !3125
  store %struct.dependency** %108, %struct.dependency*** %6, align 8, !dbg !3126
  br label %109, !dbg !3127

; <label>:109:                                    ; preds = %99
  %110 = load %struct.dependency*, %struct.dependency** %8, align 8, !dbg !3128
  %111 = getelementptr inbounds %struct.dependency, %struct.dependency* %110, i32 0, i32 1, !dbg !3130
  %112 = load %struct.dependency*, %struct.dependency** %111, align 8, !dbg !3130
  store %struct.dependency* %112, %struct.dependency** %8, align 8, !dbg !3131
  br label %19, !dbg !3132, !llvm.loop !3133

; <label>:113:                                    ; preds = %19
  %114 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !3135
  %115 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !3136
  %116 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %115, i32 0, i32 9, !dbg !3137
  %117 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %116, i32 0, i32 0, !dbg !3138
  %118 = load %struct.dependency*, %struct.dependency** %5, align 8, !dbg !3139
  call void @copy_dependency_links(%struct.pkginfo* %114, %struct.dependency** %117, %struct.dependency* %118, i1 zeroext false), !dbg !3140
  %119 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !3141
  %120 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %119, i32 0, i32 10, !dbg !3142
  %121 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %120, i32 0, i32 1, !dbg !3143
  %122 = load i8, i8* %121, align 8, !dbg !3143
  %123 = trunc i8 %122 to i1, !dbg !3143
  %124 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !3144
  %125 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %124, i32 0, i32 9, !dbg !3145
  %126 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %125, i32 0, i32 1, !dbg !3146
  %127 = zext i1 %123 to i8, !dbg !3147
  store i8 %127, i8* %126, align 8, !dbg !3147
  %128 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !3148
  %129 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %128, i32 0, i32 10, !dbg !3149
  %130 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %129, i32 0, i32 2, !dbg !3150
  %131 = load i32, i32* %130, align 4, !dbg !3150
  %132 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !3151
  %133 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %132, i32 0, i32 9, !dbg !3152
  %134 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %133, i32 0, i32 2, !dbg !3153
  store i32 %131, i32* %134, align 4, !dbg !3154
  %135 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !3155
  %136 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %135, i32 0, i32 10, !dbg !3156
  %137 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %136, i32 0, i32 5, !dbg !3157
  %138 = load i8*, i8** %137, align 8, !dbg !3157
  %139 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !3158
  %140 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %139, i32 0, i32 9, !dbg !3159
  %141 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %140, i32 0, i32 5, !dbg !3160
  store i8* %138, i8** %141, align 8, !dbg !3161
  %142 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !3162
  %143 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %142, i32 0, i32 10, !dbg !3163
  %144 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %143, i32 0, i32 6, !dbg !3164
  %145 = load i8*, i8** %144, align 8, !dbg !3164
  %146 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !3165
  %147 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %146, i32 0, i32 9, !dbg !3166
  %148 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %147, i32 0, i32 6, !dbg !3167
  store i8* %145, i8** %148, align 8, !dbg !3168
  %149 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !3169
  %150 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %149, i32 0, i32 10, !dbg !3170
  %151 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %150, i32 0, i32 7, !dbg !3171
  %152 = load i8*, i8** %151, align 8, !dbg !3171
  %153 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !3172
  %154 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %153, i32 0, i32 9, !dbg !3173
  %155 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %154, i32 0, i32 7, !dbg !3174
  store i8* %152, i8** %155, align 8, !dbg !3175
  %156 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !3176
  %157 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %156, i32 0, i32 10, !dbg !3177
  %158 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %157, i32 0, i32 3, !dbg !3178
  %159 = load %struct.dpkg_arch*, %struct.dpkg_arch** %158, align 8, !dbg !3178
  %160 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !3179
  %161 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %160, i32 0, i32 9, !dbg !3180
  %162 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %161, i32 0, i32 3, !dbg !3181
  store %struct.dpkg_arch* %159, %struct.dpkg_arch** %162, align 8, !dbg !3182
  %163 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !3183
  %164 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %163, i32 0, i32 10, !dbg !3184
  %165 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %164, i32 0, i32 4, !dbg !3185
  %166 = load i8*, i8** %165, align 8, !dbg !3185
  %167 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !3186
  %168 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %167, i32 0, i32 9, !dbg !3187
  %169 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %168, i32 0, i32 4, !dbg !3188
  store i8* %166, i8** %169, align 8, !dbg !3189
  %170 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !3190
  %171 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %170, i32 0, i32 10, !dbg !3191
  %172 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %171, i32 0, i32 8, !dbg !3192
  %173 = load i8*, i8** %172, align 8, !dbg !3192
  %174 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !3193
  %175 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %174, i32 0, i32 9, !dbg !3194
  %176 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %175, i32 0, i32 8, !dbg !3195
  store i8* %173, i8** %176, align 8, !dbg !3196
  %177 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !3197
  %178 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %177, i32 0, i32 9, !dbg !3198
  %179 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %178, i32 0, i32 11, !dbg !3199
  %180 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !3200
  %181 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %180, i32 0, i32 10, !dbg !3201
  %182 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %181, i32 0, i32 11, !dbg !3202
  %183 = bitcast %struct.dpkg_version* %179 to i8*, !dbg !3202
  %184 = bitcast %struct.dpkg_version* %182 to i8*, !dbg !3202
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %183, i8* %184, i64 24, i32 8, i1 false), !dbg !3202
  %185 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !3203
  %186 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %185, i32 0, i32 10, !dbg !3204
  %187 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %186, i32 0, i32 9, !dbg !3205
  %188 = load i8*, i8** %187, align 8, !dbg !3205
  %189 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !3206
  %190 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %189, i32 0, i32 9, !dbg !3207
  %191 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %190, i32 0, i32 9, !dbg !3208
  store i8* %188, i8** %191, align 8, !dbg !3209
  %192 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !3210
  %193 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %192, i32 0, i32 10, !dbg !3211
  %194 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %193, i32 0, i32 10, !dbg !3212
  %195 = load i8*, i8** %194, align 8, !dbg !3212
  %196 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !3213
  %197 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %196, i32 0, i32 9, !dbg !3214
  %198 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %197, i32 0, i32 10, !dbg !3215
  store i8* %195, i8** %198, align 8, !dbg !3216
  %199 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !3217
  %200 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %199, i32 0, i32 9, !dbg !3218
  %201 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %200, i32 0, i32 12, !dbg !3219
  store %struct.conffile* null, %struct.conffile** %201, align 8, !dbg !3220
  %202 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !3221
  %203 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %202, i32 0, i32 9, !dbg !3222
  %204 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %203, i32 0, i32 12, !dbg !3223
  store %struct.conffile** %204, %struct.conffile*** %12, align 8, !dbg !3224
  %205 = load %struct.fsys_namenode_queue*, %struct.fsys_namenode_queue** %4, align 8, !dbg !3225
  %206 = getelementptr inbounds %struct.fsys_namenode_queue, %struct.fsys_namenode_queue* %205, i32 0, i32 0, !dbg !3227
  %207 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %206, align 8, !dbg !3227
  store %struct.fsys_namenode_list* %207, %struct.fsys_namenode_list** %14, align 8, !dbg !3228
  br label %208, !dbg !3229

; <label>:208:                                    ; preds = %248, %113
  %209 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %14, align 8, !dbg !3230
  %210 = icmp ne %struct.fsys_namenode_list* %209, null, !dbg !3233
  br i1 %210, label %211, label %252, !dbg !3233

; <label>:211:                                    ; preds = %208
  %212 = call i8* @nfmalloc(i64 32), !dbg !3234
  %213 = bitcast i8* %212 to %struct.conffile*, !dbg !3234
  store %struct.conffile* %213, %struct.conffile** %13, align 8, !dbg !3236
  %214 = load %struct.conffile*, %struct.conffile** %13, align 8, !dbg !3237
  %215 = getelementptr inbounds %struct.conffile, %struct.conffile* %214, i32 0, i32 0, !dbg !3238
  store %struct.conffile* null, %struct.conffile** %215, align 8, !dbg !3239
  %216 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %14, align 8, !dbg !3240
  %217 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %216, i32 0, i32 1, !dbg !3241
  %218 = load %struct.fsys_namenode*, %struct.fsys_namenode** %217, align 8, !dbg !3241
  %219 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %218, i32 0, i32 1, !dbg !3242
  %220 = load i8*, i8** %219, align 8, !dbg !3242
  %221 = call i8* @nfstrsave(i8* %220), !dbg !3243
  %222 = load %struct.conffile*, %struct.conffile** %13, align 8, !dbg !3244
  %223 = getelementptr inbounds %struct.conffile, %struct.conffile* %222, i32 0, i32 1, !dbg !3245
  store i8* %221, i8** %223, align 8, !dbg !3246
  %224 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %14, align 8, !dbg !3247
  %225 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %224, i32 0, i32 1, !dbg !3248
  %226 = load %struct.fsys_namenode*, %struct.fsys_namenode** %225, align 8, !dbg !3248
  %227 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %226, i32 0, i32 7, !dbg !3249
  %228 = load i8*, i8** %227, align 8, !dbg !3249
  %229 = call i8* @nfstrsave(i8* %228), !dbg !3250
  %230 = load %struct.conffile*, %struct.conffile** %13, align 8, !dbg !3251
  %231 = getelementptr inbounds %struct.conffile, %struct.conffile* %230, i32 0, i32 2, !dbg !3252
  store i8* %229, i8** %231, align 8, !dbg !3253
  %232 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %14, align 8, !dbg !3254
  %233 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %232, i32 0, i32 1, !dbg !3255
  %234 = load %struct.fsys_namenode*, %struct.fsys_namenode** %233, align 8, !dbg !3255
  %235 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %234, i32 0, i32 6, !dbg !3256
  %236 = load i32, i32* %235, align 8, !dbg !3256
  %237 = and i32 %236, 8, !dbg !3257
  %238 = icmp ne i32 %237, 0, !dbg !3258
  %239 = xor i1 %238, true, !dbg !3258
  %240 = xor i1 %239, true, !dbg !3259
  %241 = load %struct.conffile*, %struct.conffile** %13, align 8, !dbg !3260
  %242 = getelementptr inbounds %struct.conffile, %struct.conffile* %241, i32 0, i32 3, !dbg !3261
  %243 = zext i1 %240 to i8, !dbg !3262
  store i8 %243, i8* %242, align 8, !dbg !3262
  %244 = load %struct.conffile*, %struct.conffile** %13, align 8, !dbg !3263
  %245 = load %struct.conffile**, %struct.conffile*** %12, align 8, !dbg !3264
  store %struct.conffile* %244, %struct.conffile** %245, align 8, !dbg !3265
  %246 = load %struct.conffile*, %struct.conffile** %13, align 8, !dbg !3266
  %247 = getelementptr inbounds %struct.conffile, %struct.conffile* %246, i32 0, i32 0, !dbg !3267
  store %struct.conffile** %247, %struct.conffile*** %12, align 8, !dbg !3268
  br label %248, !dbg !3269

; <label>:248:                                    ; preds = %211
  %249 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %14, align 8, !dbg !3270
  %250 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %249, i32 0, i32 0, !dbg !3272
  %251 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %250, align 8, !dbg !3272
  store %struct.fsys_namenode_list* %251, %struct.fsys_namenode_list** %14, align 8, !dbg !3273
  br label %208, !dbg !3274, !llvm.loop !3275

; <label>:252:                                    ; preds = %208
  %253 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !3277
  %254 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %253, i32 0, i32 10, !dbg !3278
  %255 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %254, i32 0, i32 13, !dbg !3279
  %256 = load %struct.arbitraryfield*, %struct.arbitraryfield** %255, align 8, !dbg !3279
  %257 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !3280
  %258 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %257, i32 0, i32 9, !dbg !3281
  %259 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %258, i32 0, i32 13, !dbg !3282
  store %struct.arbitraryfield* %256, %struct.arbitraryfield** %259, align 8, !dbg !3283
  ret void, !dbg !3284
}

declare i8* @pkg_status_name(%struct.pkginfo*) #2

declare void @pkg_blank(%struct.pkginfo*) #2

; Function Attrs: nounwind uwtable
define internal void @pkg_disappear_others(%struct.pkginfo*) #0 !dbg !3285 {
  %2 = alloca %struct.pkginfo*, align 8
  %3 = alloca %struct.pkg_hash_iter*, align 8
  %4 = alloca %struct.pkginfo*, align 8
  %5 = alloca %struct.fsys_namenode_list*, align 8
  %6 = alloca %struct.deppossi*, align 8
  %7 = alloca %struct.dependency*, align 8
  %8 = alloca %struct.varbuf, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %2, metadata !3286, metadata !623), !dbg !3287
  call void @llvm.dbg.declare(metadata %struct.pkg_hash_iter** %3, metadata !3288, metadata !623), !dbg !3291
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %4, metadata !3292, metadata !623), !dbg !3293
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode_list** %5, metadata !3294, metadata !623), !dbg !3295
  call void @llvm.dbg.declare(metadata %struct.deppossi** %6, metadata !3296, metadata !623), !dbg !3297
  call void @llvm.dbg.declare(metadata %struct.dependency** %7, metadata !3298, metadata !623), !dbg !3299
  call void @llvm.dbg.declare(metadata %struct.varbuf* %8, metadata !3300, metadata !623), !dbg !3301
  %9 = bitcast %struct.varbuf* %8 to i8*, !dbg !3301
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 24, i32 8, i1 false), !dbg !3301
  %10 = call %struct.pkg_hash_iter* @pkg_hash_iter_new(), !dbg !3302
  store %struct.pkg_hash_iter* %10, %struct.pkg_hash_iter** %3, align 8, !dbg !3303
  br label %11, !dbg !3304

; <label>:11:                                     ; preds = %273, %272, %137, %113, %63, %42, %1
  %12 = load %struct.pkg_hash_iter*, %struct.pkg_hash_iter** %3, align 8, !dbg !3305
  %13 = call %struct.pkginfo* @pkg_hash_iter_next_pkg(%struct.pkg_hash_iter* %12), !dbg !3307
  store %struct.pkginfo* %13, %struct.pkginfo** %4, align 8, !dbg !3308
  %14 = icmp ne %struct.pkginfo* %13, null, !dbg !3309
  br i1 %14, label %15, label %276, !dbg !3310

; <label>:15:                                     ; preds = %11
  %16 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !3311
  call void @ensure_package_clientdata(%struct.pkginfo* %16), !dbg !3313
  %17 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !3314
  %18 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !3316
  %19 = icmp eq %struct.pkginfo* %17, %18, !dbg !3317
  br i1 %19, label %42, label %20, !dbg !3318

; <label>:20:                                     ; preds = %15
  %21 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !3319
  %22 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %21, i32 0, i32 4, !dbg !3320
  %23 = load i32, i32* %22, align 8, !dbg !3320
  %24 = icmp eq i32 %23, 0, !dbg !3321
  br i1 %24, label %42, label %25, !dbg !3322

; <label>:25:                                     ; preds = %20
  %26 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !3323
  %27 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %26, i32 0, i32 4, !dbg !3324
  %28 = load i32, i32* %27, align 8, !dbg !3324
  %29 = icmp eq i32 %28, 1, !dbg !3325
  br i1 %29, label %42, label %30, !dbg !3326

; <label>:30:                                     ; preds = %25
  %31 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !3327
  %32 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %31, i32 0, i32 11, !dbg !3328
  %33 = load %struct.perpackagestate*, %struct.perpackagestate** %32, align 8, !dbg !3328
  %34 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %33, i32 0, i32 0, !dbg !3329
  %35 = load i32, i32* %34, align 8, !dbg !3329
  %36 = icmp eq i32 %35, 1, !dbg !3330
  br i1 %36, label %42, label %37, !dbg !3331

; <label>:37:                                     ; preds = %30
  %38 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !3332
  %39 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %38, i32 0, i32 16, !dbg !3333
  %40 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %39, align 8, !dbg !3333
  %41 = icmp ne %struct.fsys_namenode_list* %40, null, !dbg !3332
  br i1 %41, label %43, label %42, !dbg !3334

; <label>:42:                                     ; preds = %37, %30, %25, %20, %15
  br label %11, !dbg !3336, !llvm.loop !3337

; <label>:43:                                     ; preds = %37
  %44 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !3338
  %45 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %44, i32 0, i32 9, !dbg !3340
  %46 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %45, i32 0, i32 2, !dbg !3341
  %47 = load i32, i32* %46, align 4, !dbg !3341
  %48 = icmp eq i32 %47, 1, !dbg !3342
  br i1 %48, label %49, label %64, !dbg !3343

; <label>:49:                                     ; preds = %43
  %50 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !3344
  %51 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %50, i32 0, i32 9, !dbg !3345
  %52 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %51, i32 0, i32 2, !dbg !3346
  %53 = load i32, i32* %52, align 4, !dbg !3346
  %54 = icmp eq i32 %53, 1, !dbg !3347
  br i1 %54, label %55, label %64, !dbg !3348

; <label>:55:                                     ; preds = %49
  %56 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !3349
  %57 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %56, i32 0, i32 0, !dbg !3350
  %58 = load %struct.pkgset*, %struct.pkgset** %57, align 8, !dbg !3350
  %59 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !3351
  %60 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %59, i32 0, i32 0, !dbg !3352
  %61 = load %struct.pkgset*, %struct.pkgset** %60, align 8, !dbg !3352
  %62 = icmp eq %struct.pkgset* %58, %61, !dbg !3353
  br i1 %62, label %63, label %64, !dbg !3354

; <label>:63:                                     ; preds = %55
  br label %11, !dbg !3355, !llvm.loop !3337

; <label>:64:                                     ; preds = %55, %49, %43
  %65 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !3356
  %66 = call i8* @pkg_name(%struct.pkginfo* %65, i32 3), !dbg !3357
  call void (i32, i8*, ...) @debug(i32 512, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.106, i32 0, i32 0), i8* %66), !dbg !3358
  %67 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !3359
  %68 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %67, i32 0, i32 11, !dbg !3361
  %69 = load %struct.perpackagestate*, %struct.perpackagestate** %68, align 8, !dbg !3361
  %70 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %69, i32 0, i32 0, !dbg !3362
  %71 = load i32, i32* %70, align 8, !dbg !3362
  %72 = icmp ne i32 %71, 0, !dbg !3363
  br i1 %72, label %73, label %88, !dbg !3364

; <label>:73:                                     ; preds = %64
  %74 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !3365
  %75 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %74, i32 0, i32 11, !dbg !3366
  %76 = load %struct.perpackagestate*, %struct.perpackagestate** %75, align 8, !dbg !3366
  %77 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %76, i32 0, i32 0, !dbg !3367
  %78 = load i32, i32* %77, align 8, !dbg !3367
  %79 = icmp ne i32 %78, 3, !dbg !3368
  br i1 %79, label %80, label %88, !dbg !3369

; <label>:80:                                     ; preds = %73
  %81 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !3370
  %82 = call i8* @pkg_name(%struct.pkginfo* %81, i32 3), !dbg !3371
  %83 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !3372
  %84 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %83, i32 0, i32 11, !dbg !3373
  %85 = load %struct.perpackagestate*, %struct.perpackagestate** %84, align 8, !dbg !3373
  %86 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %85, i32 0, i32 0, !dbg !3374
  %87 = load i32, i32* %86, align 8, !dbg !3374
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 871, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.pkg_disappear_others, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.107, i32 0, i32 0), i8* %82, i32 %87) #10, !dbg !3375
  unreachable, !dbg !3377

; <label>:88:                                     ; preds = %73, %64
  %89 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !3378
  %90 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %89, i32 0, i32 16, !dbg !3380
  %91 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %90, align 8, !dbg !3380
  store %struct.fsys_namenode_list* %91, %struct.fsys_namenode_list** %5, align 8, !dbg !3381
  br label %92, !dbg !3382

; <label>:92:                                     ; preds = %106, %88
  %93 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %5, align 8, !dbg !3383
  %94 = icmp ne %struct.fsys_namenode_list* %93, null, !dbg !3383
  br i1 %94, label %95, label %103, !dbg !3385

; <label>:95:                                     ; preds = %92
  %96 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %5, align 8, !dbg !3386
  %97 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %96, i32 0, i32 1, !dbg !3388
  %98 = load %struct.fsys_namenode*, %struct.fsys_namenode** %97, align 8, !dbg !3388
  %99 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %98, i32 0, i32 1, !dbg !3389
  %100 = load i8*, i8** %99, align 8, !dbg !3389
  %101 = call i32 @strcmp(i8* %100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.77, i32 0, i32 0)) #11, !dbg !3390
  %102 = icmp eq i32 %101, 0, !dbg !3391
  br label %103

; <label>:103:                                    ; preds = %95, %92
  %104 = phi i1 [ false, %92 ], [ %102, %95 ]
  br i1 %104, label %105, label %110, !dbg !3392

; <label>:105:                                    ; preds = %103
  br label %106, !dbg !3394

; <label>:106:                                    ; preds = %105
  %107 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %5, align 8, !dbg !3396
  %108 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %107, i32 0, i32 0, !dbg !3397
  %109 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %108, align 8, !dbg !3397
  store %struct.fsys_namenode_list* %109, %struct.fsys_namenode_list** %5, align 8, !dbg !3398
  br label %92, !dbg !3399, !llvm.loop !3401

; <label>:110:                                    ; preds = %103
  %111 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %5, align 8, !dbg !3403
  %112 = icmp ne %struct.fsys_namenode_list* %111, null, !dbg !3403
  br i1 %112, label %114, label %113, !dbg !3405

; <label>:113:                                    ; preds = %110
  call void (i32, i8*, ...) @debug(i32 1024, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.108, i32 0, i32 0)), !dbg !3406
  br label %11, !dbg !3408, !llvm.loop !3337

; <label>:114:                                    ; preds = %110
  %115 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !3409
  %116 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %115, i32 0, i32 16, !dbg !3411
  %117 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %116, align 8, !dbg !3411
  store %struct.fsys_namenode_list* %117, %struct.fsys_namenode_list** %5, align 8, !dbg !3412
  br label %118, !dbg !3413

; <label>:118:                                    ; preds = %130, %114
  %119 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %5, align 8, !dbg !3414
  %120 = icmp ne %struct.fsys_namenode_list* %119, null, !dbg !3414
  br i1 %120, label %121, label %127, !dbg !3416

; <label>:121:                                    ; preds = %118
  %122 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %5, align 8, !dbg !3417
  %123 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !3419
  %124 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !3420
  %125 = call zeroext i1 @filesavespackage(%struct.fsys_namenode_list* %122, %struct.pkginfo* %123, %struct.pkginfo* %124), !dbg !3421
  %126 = xor i1 %125, true, !dbg !3422
  br label %127

; <label>:127:                                    ; preds = %121, %118
  %128 = phi i1 [ false, %118 ], [ %126, %121 ]
  br i1 %128, label %129, label %134, !dbg !3423

; <label>:129:                                    ; preds = %127
  br label %130, !dbg !3425

; <label>:130:                                    ; preds = %129
  %131 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %5, align 8, !dbg !3427
  %132 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %131, i32 0, i32 0, !dbg !3428
  %133 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %132, align 8, !dbg !3428
  store %struct.fsys_namenode_list* %133, %struct.fsys_namenode_list** %5, align 8, !dbg !3429
  br label %118, !dbg !3430, !llvm.loop !3432

; <label>:134:                                    ; preds = %127
  %135 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %5, align 8, !dbg !3434
  %136 = icmp ne %struct.fsys_namenode_list* %135, null, !dbg !3434
  br i1 %136, label %137, label %138, !dbg !3436

; <label>:137:                                    ; preds = %134
  br label %11, !dbg !3437, !llvm.loop !3337

; <label>:138:                                    ; preds = %134
  %139 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !3438
  %140 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %139, i32 0, i32 11, !dbg !3439
  %141 = load %struct.perpackagestate*, %struct.perpackagestate** %140, align 8, !dbg !3439
  %142 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %141, i32 0, i32 0, !dbg !3440
  store i32 1, i32* %142, align 8, !dbg !3441
  call void (i32, i8*, ...) @debug(i32 512, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.109, i32 0, i32 0)), !dbg !3442
  %143 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !3443
  %144 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %143, i32 0, i32 0, !dbg !3445
  %145 = load %struct.pkgset*, %struct.pkgset** %144, align 8, !dbg !3445
  %146 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %145, i32 0, i32 3, !dbg !3446
  %147 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %146, i32 0, i32 1, !dbg !3447
  %148 = load %struct.deppossi*, %struct.deppossi** %147, align 8, !dbg !3447
  store %struct.deppossi* %148, %struct.deppossi** %6, align 8, !dbg !3448
  br label %149, !dbg !3449

; <label>:149:                                    ; preds = %183, %138
  %150 = load %struct.deppossi*, %struct.deppossi** %6, align 8, !dbg !3450
  %151 = icmp ne %struct.deppossi* %150, null, !dbg !3452
  br i1 %151, label %152, label %187, !dbg !3452

; <label>:152:                                    ; preds = %149
  %153 = load %struct.deppossi*, %struct.deppossi** %6, align 8, !dbg !3454
  %154 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %153, i32 0, i32 0, !dbg !3457
  %155 = load %struct.dependency*, %struct.dependency** %154, align 8, !dbg !3457
  %156 = getelementptr inbounds %struct.dependency, %struct.dependency* %155, i32 0, i32 3, !dbg !3458
  %157 = load i32, i32* %156, align 8, !dbg !3458
  %158 = icmp ne i32 %157, 2, !dbg !3459
  br i1 %158, label %159, label %174, !dbg !3460

; <label>:159:                                    ; preds = %152
  %160 = load %struct.deppossi*, %struct.deppossi** %6, align 8, !dbg !3461
  %161 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %160, i32 0, i32 0, !dbg !3462
  %162 = load %struct.dependency*, %struct.dependency** %161, align 8, !dbg !3462
  %163 = getelementptr inbounds %struct.dependency, %struct.dependency* %162, i32 0, i32 3, !dbg !3463
  %164 = load i32, i32* %163, align 8, !dbg !3463
  %165 = icmp ne i32 %164, 3, !dbg !3464
  br i1 %165, label %166, label %174, !dbg !3465

; <label>:166:                                    ; preds = %159
  %167 = load %struct.deppossi*, %struct.deppossi** %6, align 8, !dbg !3466
  %168 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %167, i32 0, i32 0, !dbg !3467
  %169 = load %struct.dependency*, %struct.dependency** %168, align 8, !dbg !3467
  %170 = getelementptr inbounds %struct.dependency, %struct.dependency* %169, i32 0, i32 3, !dbg !3468
  %171 = load i32, i32* %170, align 8, !dbg !3468
  %172 = icmp ne i32 %171, 1, !dbg !3469
  br i1 %172, label %173, label %174, !dbg !3470

; <label>:173:                                    ; preds = %166
  br label %183, !dbg !3472

; <label>:174:                                    ; preds = %166, %159, %152
  %175 = load %struct.deppossi*, %struct.deppossi** %6, align 8, !dbg !3473
  %176 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %175, i32 0, i32 0, !dbg !3475
  %177 = load %struct.dependency*, %struct.dependency** %176, align 8, !dbg !3475
  %178 = call zeroext i1 @depisok(%struct.dependency* %177, %struct.varbuf* %8, %struct.pkginfo** null, %struct.pkginfo** null, i1 zeroext false), !dbg !3476
  br i1 %178, label %179, label %180, !dbg !3477

; <label>:179:                                    ; preds = %174
  br label %183, !dbg !3478

; <label>:180:                                    ; preds = %174
  call void @varbuf_end_str(%struct.varbuf* %8), !dbg !3479
  %181 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %8, i32 0, i32 2, !dbg !3480
  %182 = load i8*, i8** %181, align 8, !dbg !3480
  call void (i32, i8*, ...) @debug(i32 512, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.110, i32 0, i32 0), i8* %182), !dbg !3481
  br label %187, !dbg !3482

; <label>:183:                                    ; preds = %179, %173
  %184 = load %struct.deppossi*, %struct.deppossi** %6, align 8, !dbg !3483
  %185 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %184, i32 0, i32 3, !dbg !3484
  %186 = load %struct.deppossi*, %struct.deppossi** %185, align 8, !dbg !3484
  store %struct.deppossi* %186, %struct.deppossi** %6, align 8, !dbg !3485
  br label %149, !dbg !3486, !llvm.loop !3488

; <label>:187:                                    ; preds = %180, %149
  %188 = load %struct.deppossi*, %struct.deppossi** %6, align 8, !dbg !3490
  %189 = icmp ne %struct.deppossi* %188, null, !dbg !3490
  br i1 %189, label %265, label %190, !dbg !3492

; <label>:190:                                    ; preds = %187
  %191 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !3493
  %192 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %191, i32 0, i32 9, !dbg !3496
  %193 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %192, i32 0, i32 0, !dbg !3497
  %194 = load %struct.dependency*, %struct.dependency** %193, align 8, !dbg !3497
  store %struct.dependency* %194, %struct.dependency** %7, align 8, !dbg !3498
  br label %195, !dbg !3499

; <label>:195:                                    ; preds = %259, %190
  %196 = load %struct.dependency*, %struct.dependency** %7, align 8, !dbg !3500
  %197 = icmp ne %struct.dependency* %196, null, !dbg !3502
  br i1 %197, label %198, label %263, !dbg !3502

; <label>:198:                                    ; preds = %195
  %199 = load %struct.dependency*, %struct.dependency** %7, align 8, !dbg !3504
  %200 = getelementptr inbounds %struct.dependency, %struct.dependency* %199, i32 0, i32 3, !dbg !3507
  %201 = load i32, i32* %200, align 8, !dbg !3507
  %202 = icmp ne i32 %201, 6, !dbg !3508
  br i1 %202, label %203, label %204, !dbg !3509

; <label>:203:                                    ; preds = %198
  br label %259, !dbg !3510

; <label>:204:                                    ; preds = %198
  %205 = load %struct.dependency*, %struct.dependency** %7, align 8, !dbg !3511
  %206 = getelementptr inbounds %struct.dependency, %struct.dependency* %205, i32 0, i32 2, !dbg !3513
  %207 = load %struct.deppossi*, %struct.deppossi** %206, align 8, !dbg !3513
  %208 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %207, i32 0, i32 1, !dbg !3514
  %209 = load %struct.pkgset*, %struct.pkgset** %208, align 8, !dbg !3514
  %210 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %209, i32 0, i32 3, !dbg !3515
  %211 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %210, i32 0, i32 1, !dbg !3516
  %212 = load %struct.deppossi*, %struct.deppossi** %211, align 8, !dbg !3516
  store %struct.deppossi* %212, %struct.deppossi** %6, align 8, !dbg !3517
  br label %213, !dbg !3518

; <label>:213:                                    ; preds = %254, %204
  %214 = load %struct.deppossi*, %struct.deppossi** %6, align 8, !dbg !3519
  %215 = icmp ne %struct.deppossi* %214, null, !dbg !3521
  br i1 %215, label %216, label %258, !dbg !3521

; <label>:216:                                    ; preds = %213
  %217 = load %struct.deppossi*, %struct.deppossi** %6, align 8, !dbg !3523
  %218 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %217, i32 0, i32 0, !dbg !3526
  %219 = load %struct.dependency*, %struct.dependency** %218, align 8, !dbg !3526
  %220 = getelementptr inbounds %struct.dependency, %struct.dependency* %219, i32 0, i32 3, !dbg !3527
  %221 = load i32, i32* %220, align 8, !dbg !3527
  %222 = icmp ne i32 %221, 2, !dbg !3528
  br i1 %222, label %223, label %238, !dbg !3529

; <label>:223:                                    ; preds = %216
  %224 = load %struct.deppossi*, %struct.deppossi** %6, align 8, !dbg !3530
  %225 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %224, i32 0, i32 0, !dbg !3531
  %226 = load %struct.dependency*, %struct.dependency** %225, align 8, !dbg !3531
  %227 = getelementptr inbounds %struct.dependency, %struct.dependency* %226, i32 0, i32 3, !dbg !3532
  %228 = load i32, i32* %227, align 8, !dbg !3532
  %229 = icmp ne i32 %228, 3, !dbg !3533
  br i1 %229, label %230, label %238, !dbg !3534

; <label>:230:                                    ; preds = %223
  %231 = load %struct.deppossi*, %struct.deppossi** %6, align 8, !dbg !3535
  %232 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %231, i32 0, i32 0, !dbg !3536
  %233 = load %struct.dependency*, %struct.dependency** %232, align 8, !dbg !3536
  %234 = getelementptr inbounds %struct.dependency, %struct.dependency* %233, i32 0, i32 3, !dbg !3537
  %235 = load i32, i32* %234, align 8, !dbg !3537
  %236 = icmp ne i32 %235, 1, !dbg !3538
  br i1 %236, label %237, label %238, !dbg !3539

; <label>:237:                                    ; preds = %230
  br label %254, !dbg !3541

; <label>:238:                                    ; preds = %230, %223, %216
  %239 = load %struct.deppossi*, %struct.deppossi** %6, align 8, !dbg !3542
  %240 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %239, i32 0, i32 0, !dbg !3544
  %241 = load %struct.dependency*, %struct.dependency** %240, align 8, !dbg !3544
  %242 = call zeroext i1 @depisok(%struct.dependency* %241, %struct.varbuf* %8, %struct.pkginfo** null, %struct.pkginfo** null, i1 zeroext false), !dbg !3545
  br i1 %242, label %243, label %244, !dbg !3546

; <label>:243:                                    ; preds = %238
  br label %254, !dbg !3547

; <label>:244:                                    ; preds = %238
  call void @varbuf_end_str(%struct.varbuf* %8), !dbg !3548
  %245 = load %struct.dependency*, %struct.dependency** %7, align 8, !dbg !3549
  %246 = getelementptr inbounds %struct.dependency, %struct.dependency* %245, i32 0, i32 2, !dbg !3550
  %247 = load %struct.deppossi*, %struct.deppossi** %246, align 8, !dbg !3550
  %248 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %247, i32 0, i32 1, !dbg !3551
  %249 = load %struct.pkgset*, %struct.pkgset** %248, align 8, !dbg !3551
  %250 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %249, i32 0, i32 1, !dbg !3552
  %251 = load i8*, i8** %250, align 8, !dbg !3552
  %252 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %8, i32 0, i32 2, !dbg !3553
  %253 = load i8*, i8** %252, align 8, !dbg !3553
  call void (i32, i8*, ...) @debug(i32 512, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.111, i32 0, i32 0), i8* %251, i8* %253), !dbg !3554
  br label %264, !dbg !3555

; <label>:254:                                    ; preds = %243, %237
  %255 = load %struct.deppossi*, %struct.deppossi** %6, align 8, !dbg !3556
  %256 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %255, i32 0, i32 3, !dbg !3557
  %257 = load %struct.deppossi*, %struct.deppossi** %256, align 8, !dbg !3557
  store %struct.deppossi* %257, %struct.deppossi** %6, align 8, !dbg !3558
  br label %213, !dbg !3559, !llvm.loop !3561

; <label>:258:                                    ; preds = %213
  br label %259, !dbg !3563

; <label>:259:                                    ; preds = %258, %203
  %260 = load %struct.dependency*, %struct.dependency** %7, align 8, !dbg !3564
  %261 = getelementptr inbounds %struct.dependency, %struct.dependency* %260, i32 0, i32 1, !dbg !3565
  %262 = load %struct.dependency*, %struct.dependency** %261, align 8, !dbg !3565
  store %struct.dependency* %262, %struct.dependency** %7, align 8, !dbg !3566
  br label %195, !dbg !3567, !llvm.loop !3569

; <label>:263:                                    ; preds = %195
  br label %264, !dbg !3571

; <label>:264:                                    ; preds = %263, %244
  br label %265, !dbg !3572

; <label>:265:                                    ; preds = %264, %187
  %266 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !3573
  %267 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %266, i32 0, i32 11, !dbg !3574
  %268 = load %struct.perpackagestate*, %struct.perpackagestate** %267, align 8, !dbg !3574
  %269 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %268, i32 0, i32 0, !dbg !3575
  store i32 0, i32* %269, align 8, !dbg !3576
  %270 = load %struct.deppossi*, %struct.deppossi** %6, align 8, !dbg !3577
  %271 = icmp ne %struct.deppossi* %270, null, !dbg !3577
  br i1 %271, label %272, label %273, !dbg !3579

; <label>:272:                                    ; preds = %265
  br label %11, !dbg !3580, !llvm.loop !3337

; <label>:273:                                    ; preds = %265
  %274 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !3581
  %275 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !3582
  call void @pkg_disappear(%struct.pkginfo* %274, %struct.pkginfo* %275), !dbg !3583
  br label %11, !dbg !3584, !llvm.loop !3337

; <label>:276:                                    ; preds = %11
  %277 = load %struct.pkg_hash_iter*, %struct.pkg_hash_iter** %3, align 8, !dbg !3586
  call void @pkg_hash_iter_free(%struct.pkg_hash_iter* %277), !dbg !3587
  ret void, !dbg !3588
}

; Function Attrs: nounwind uwtable
define internal void @pkg_remove_files_from_others(%struct.pkginfo*, %struct.fsys_namenode_list*) #0 !dbg !3589 {
  %3 = alloca %struct.pkginfo*, align 8
  %4 = alloca %struct.fsys_namenode_list*, align 8
  %5 = alloca %struct.fsys_namenode_list*, align 8
  %6 = alloca %struct.pkginfo*, align 8
  %7 = alloca %struct.fsys_node_pkgs_iter*, align 8
  %8 = alloca %struct.pkgset*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %3, metadata !3592, metadata !623), !dbg !3593
  store %struct.fsys_namenode_list* %1, %struct.fsys_namenode_list** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode_list** %4, metadata !3594, metadata !623), !dbg !3595
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode_list** %5, metadata !3596, metadata !623), !dbg !3597
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %6, metadata !3598, metadata !623), !dbg !3599
  %9 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %4, align 8, !dbg !3600
  store %struct.fsys_namenode_list* %9, %struct.fsys_namenode_list** %5, align 8, !dbg !3602
  br label %10, !dbg !3603

; <label>:10:                                     ; preds = %145, %2
  %11 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %5, align 8, !dbg !3604
  %12 = icmp ne %struct.fsys_namenode_list* %11, null, !dbg !3607
  br i1 %12, label %13, label %149, !dbg !3607

; <label>:13:                                     ; preds = %10
  call void @llvm.dbg.declare(metadata %struct.fsys_node_pkgs_iter** %7, metadata !3608, metadata !623), !dbg !3610
  call void @llvm.dbg.declare(metadata %struct.pkgset** %8, metadata !3611, metadata !623), !dbg !3612
  %14 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %5, align 8, !dbg !3613
  %15 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %14, i32 0, i32 1, !dbg !3615
  %16 = load %struct.fsys_namenode*, %struct.fsys_namenode** %15, align 8, !dbg !3615
  %17 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %16, i32 0, i32 6, !dbg !3616
  %18 = load i32, i32* %17, align 8, !dbg !3616
  %19 = and i32 %18, 16, !dbg !3617
  %20 = icmp ne i32 %19, 0, !dbg !3617
  br i1 %20, label %22, label %21, !dbg !3618

; <label>:21:                                     ; preds = %13
  br label %145, !dbg !3619

; <label>:22:                                     ; preds = %13
  %23 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %5, align 8, !dbg !3620
  %24 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %23, i32 0, i32 1, !dbg !3622
  %25 = load %struct.fsys_namenode*, %struct.fsys_namenode** %24, align 8, !dbg !3622
  %26 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %25, i32 0, i32 3, !dbg !3623
  %27 = load %struct.fsys_diversion*, %struct.fsys_diversion** %26, align 8, !dbg !3623
  %28 = icmp ne %struct.fsys_diversion* %27, null, !dbg !3620
  br i1 %28, label %29, label %82, !dbg !3624

; <label>:29:                                     ; preds = %22
  %30 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %5, align 8, !dbg !3625
  %31 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %30, i32 0, i32 1, !dbg !3627
  %32 = load %struct.fsys_namenode*, %struct.fsys_namenode** %31, align 8, !dbg !3627
  %33 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %32, i32 0, i32 3, !dbg !3628
  %34 = load %struct.fsys_diversion*, %struct.fsys_diversion** %33, align 8, !dbg !3628
  %35 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %34, i32 0, i32 0, !dbg !3629
  %36 = load %struct.fsys_namenode*, %struct.fsys_namenode** %35, align 8, !dbg !3629
  %37 = icmp ne %struct.fsys_namenode* %36, null, !dbg !3625
  br i1 %37, label %38, label %82, !dbg !3630

; <label>:38:                                     ; preds = %29
  %39 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %5, align 8, !dbg !3631
  %40 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %39, i32 0, i32 1, !dbg !3633
  %41 = load %struct.fsys_namenode*, %struct.fsys_namenode** %40, align 8, !dbg !3633
  %42 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %41, i32 0, i32 3, !dbg !3634
  %43 = load %struct.fsys_diversion*, %struct.fsys_diversion** %42, align 8, !dbg !3634
  %44 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %43, i32 0, i32 2, !dbg !3635
  %45 = load %struct.pkgset*, %struct.pkgset** %44, align 8, !dbg !3635
  store %struct.pkgset* %45, %struct.pkgset** %8, align 8, !dbg !3636
  %46 = load %struct.pkgset*, %struct.pkgset** %8, align 8, !dbg !3637
  %47 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !3639
  %48 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %47, i32 0, i32 0, !dbg !3640
  %49 = load %struct.pkgset*, %struct.pkgset** %48, align 8, !dbg !3640
  %50 = icmp eq %struct.pkgset* %46, %49, !dbg !3641
  br i1 %50, label %51, label %66, !dbg !3642

; <label>:51:                                     ; preds = %38
  %52 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %5, align 8, !dbg !3643
  %53 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %52, i32 0, i32 1, !dbg !3645
  %54 = load %struct.fsys_namenode*, %struct.fsys_namenode** %53, align 8, !dbg !3645
  %55 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %54, i32 0, i32 1, !dbg !3646
  %56 = load i8*, i8** %55, align 8, !dbg !3646
  %57 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %5, align 8, !dbg !3647
  %58 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %57, i32 0, i32 1, !dbg !3648
  %59 = load %struct.fsys_namenode*, %struct.fsys_namenode** %58, align 8, !dbg !3648
  %60 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %59, i32 0, i32 3, !dbg !3649
  %61 = load %struct.fsys_diversion*, %struct.fsys_diversion** %60, align 8, !dbg !3649
  %62 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %61, i32 0, i32 0, !dbg !3650
  %63 = load %struct.fsys_namenode*, %struct.fsys_namenode** %62, align 8, !dbg !3650
  %64 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %63, i32 0, i32 1, !dbg !3651
  %65 = load i8*, i8** %64, align 8, !dbg !3651
  call void (i32, i8*, ...) @debug(i32 8, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.117, i32 0, i32 0), i8* %56, i8* %65), !dbg !3652
  br label %145, !dbg !3653

; <label>:66:                                     ; preds = %38
  %67 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %5, align 8, !dbg !3654
  %68 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %67, i32 0, i32 1, !dbg !3656
  %69 = load %struct.fsys_namenode*, %struct.fsys_namenode** %68, align 8, !dbg !3656
  %70 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %69, i32 0, i32 1, !dbg !3657
  %71 = load i8*, i8** %70, align 8, !dbg !3657
  %72 = load %struct.pkgset*, %struct.pkgset** %8, align 8, !dbg !3658
  %73 = icmp ne %struct.pkgset* %72, null, !dbg !3658
  br i1 %73, label %74, label %78, !dbg !3658

; <label>:74:                                     ; preds = %66
  %75 = load %struct.pkgset*, %struct.pkgset** %8, align 8, !dbg !3659
  %76 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %75, i32 0, i32 1, !dbg !3661
  %77 = load i8*, i8** %76, align 8, !dbg !3661
  br label %79, !dbg !3662

; <label>:78:                                     ; preds = %66
  br label %79, !dbg !3663

; <label>:79:                                     ; preds = %78, %74
  %80 = phi i8* [ %77, %74 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.119, i32 0, i32 0), %78 ], !dbg !3665
  call void (i32, i8*, ...) @debug(i32 8, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.118, i32 0, i32 0), i8* %71, i8* %80), !dbg !3667
  br label %81

; <label>:81:                                     ; preds = %79
  br label %88, !dbg !3668

; <label>:82:                                     ; preds = %29, %22
  store %struct.pkgset* null, %struct.pkgset** %8, align 8, !dbg !3669
  %83 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %5, align 8, !dbg !3671
  %84 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %83, i32 0, i32 1, !dbg !3672
  %85 = load %struct.fsys_namenode*, %struct.fsys_namenode** %84, align 8, !dbg !3672
  %86 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %85, i32 0, i32 1, !dbg !3673
  %87 = load i8*, i8** %86, align 8, !dbg !3673
  call void (i32, i8*, ...) @debug(i32 8, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.120, i32 0, i32 0), i8* %87), !dbg !3674
  br label %88

; <label>:88:                                     ; preds = %82, %81
  %89 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %5, align 8, !dbg !3675
  %90 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %89, i32 0, i32 1, !dbg !3676
  %91 = load %struct.fsys_namenode*, %struct.fsys_namenode** %90, align 8, !dbg !3676
  %92 = call %struct.fsys_node_pkgs_iter* @fsys_node_pkgs_iter_new(%struct.fsys_namenode* %91), !dbg !3677
  store %struct.fsys_node_pkgs_iter* %92, %struct.fsys_node_pkgs_iter** %7, align 8, !dbg !3678
  br label %93, !dbg !3679

; <label>:93:                                     ; preds = %134, %133, %114, %107, %88
  %94 = load %struct.fsys_node_pkgs_iter*, %struct.fsys_node_pkgs_iter** %7, align 8, !dbg !3680
  %95 = call %struct.pkginfo* @fsys_node_pkgs_iter_next(%struct.fsys_node_pkgs_iter* %94), !dbg !3682
  store %struct.pkginfo* %95, %struct.pkginfo** %6, align 8, !dbg !3683
  %96 = icmp ne %struct.pkginfo* %95, null, !dbg !3684
  br i1 %96, label %97, label %143, !dbg !3684

; <label>:97:                                     ; preds = %93
  %98 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !3685
  %99 = call i8* @pkg_name(%struct.pkginfo* %98, i32 3), !dbg !3687
  call void (i32, i8*, ...) @debug(i32 64, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.121, i32 0, i32 0), i8* %99), !dbg !3688
  %100 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !3689
  %101 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %100, i32 0, i32 0, !dbg !3691
  %102 = load %struct.pkgset*, %struct.pkgset** %101, align 8, !dbg !3691
  %103 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !3692
  %104 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %103, i32 0, i32 0, !dbg !3693
  %105 = load %struct.pkgset*, %struct.pkgset** %104, align 8, !dbg !3693
  %106 = icmp eq %struct.pkgset* %102, %105, !dbg !3694
  br i1 %106, label %107, label %108, !dbg !3695

; <label>:107:                                    ; preds = %97
  br label %93, !dbg !3696, !llvm.loop !3697

; <label>:108:                                    ; preds = %97
  %109 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !3698
  %110 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %109, i32 0, i32 0, !dbg !3700
  %111 = load %struct.pkgset*, %struct.pkgset** %110, align 8, !dbg !3700
  %112 = load %struct.pkgset*, %struct.pkgset** %8, align 8, !dbg !3701
  %113 = icmp eq %struct.pkgset* %111, %112, !dbg !3702
  br i1 %113, label %114, label %115, !dbg !3703

; <label>:114:                                    ; preds = %108
  call void (i32, i8*, ...) @debug(i32 64, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.122, i32 0, i32 0)), !dbg !3704
  br label %93, !dbg !3706, !llvm.loop !3697

; <label>:115:                                    ; preds = %108
  %116 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %5, align 8, !dbg !3707
  %117 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %116, i32 0, i32 1, !dbg !3709
  %118 = load %struct.fsys_namenode*, %struct.fsys_namenode** %117, align 8, !dbg !3709
  %119 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %118, i32 0, i32 6, !dbg !3710
  %120 = load i32, i32* %119, align 8, !dbg !3710
  %121 = and i32 %120, 1, !dbg !3711
  %122 = icmp ne i32 %121, 0, !dbg !3711
  br i1 %122, label %123, label %128, !dbg !3712

; <label>:123:                                    ; preds = %115
  %124 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !3713
  %125 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %5, align 8, !dbg !3714
  %126 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %125, i32 0, i32 1, !dbg !3715
  %127 = load %struct.fsys_namenode*, %struct.fsys_namenode** %126, align 8, !dbg !3715
  call void @conffile_mark_obsolete(%struct.pkginfo* %124, %struct.fsys_namenode* %127), !dbg !3716
  br label %128, !dbg !3716

; <label>:128:                                    ; preds = %123, %115
  %129 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !3717
  %130 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %129, i32 0, i32 18, !dbg !3719
  %131 = load i8, i8* %130, align 8, !dbg !3719
  %132 = trunc i8 %131 to i1, !dbg !3719
  br i1 %132, label %134, label %133, !dbg !3720

; <label>:133:                                    ; preds = %128
  br label %93, !dbg !3721, !llvm.loop !3697

; <label>:134:                                    ; preds = %128
  %135 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !3722
  %136 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !3723
  %137 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %136, i32 0, i32 9, !dbg !3724
  %138 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !3725
  %139 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %138, i32 0, i32 16, !dbg !3726
  %140 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %139, align 8, !dbg !3726
  call void @write_filelist_except(%struct.pkginfo* %135, %struct.pkgbin* %137, %struct.fsys_namenode_list* %140, i32 16), !dbg !3727
  %141 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !3728
  %142 = call i8* @pkg_name(%struct.pkginfo* %141, i32 3), !dbg !3729
  call void (i32, i8*, ...) @debug(i32 512, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.123, i32 0, i32 0), i8* %142), !dbg !3730
  br label %93, !dbg !3731, !llvm.loop !3697

; <label>:143:                                    ; preds = %93
  %144 = load %struct.fsys_node_pkgs_iter*, %struct.fsys_node_pkgs_iter** %7, align 8, !dbg !3733
  call void @fsys_node_pkgs_iter_free(%struct.fsys_node_pkgs_iter* %144), !dbg !3734
  br label %145, !dbg !3735

; <label>:145:                                    ; preds = %143, %51, %21
  %146 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %5, align 8, !dbg !3736
  %147 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %146, i32 0, i32 0, !dbg !3738
  %148 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %147, align 8, !dbg !3738
  store %struct.fsys_namenode_list* %148, %struct.fsys_namenode_list** %5, align 8, !dbg !3739
  br label %10, !dbg !3740, !llvm.loop !3741

; <label>:149:                                    ; preds = %10
  ret void, !dbg !3743
}

; Function Attrs: nounwind uwtable
define internal void @pkg_remove_backup_files(%struct.pkginfo*, %struct.fsys_namenode_list*) #0 !dbg !3744 {
  %3 = alloca %struct.pkginfo*, align 8
  %4 = alloca %struct.fsys_namenode_list*, align 8
  %5 = alloca %struct.fsys_namenode_list*, align 8
  %6 = alloca %struct.fsys_namenode*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %3, metadata !3745, metadata !623), !dbg !3746
  store %struct.fsys_namenode_list* %1, %struct.fsys_namenode_list** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode_list** %4, metadata !3747, metadata !623), !dbg !3748
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode_list** %5, metadata !3749, metadata !623), !dbg !3750
  %7 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %4, align 8, !dbg !3751
  store %struct.fsys_namenode_list* %7, %struct.fsys_namenode_list** %5, align 8, !dbg !3753
  br label %8, !dbg !3754

; <label>:8:                                      ; preds = %43, %2
  %9 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %5, align 8, !dbg !3755
  %10 = icmp ne %struct.fsys_namenode_list* %9, null, !dbg !3758
  br i1 %10, label %11, label %47, !dbg !3758

; <label>:11:                                     ; preds = %8
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %6, metadata !3759, metadata !623), !dbg !3761
  %12 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %5, align 8, !dbg !3762
  %13 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %12, i32 0, i32 1, !dbg !3764
  %14 = load %struct.fsys_namenode*, %struct.fsys_namenode** %13, align 8, !dbg !3764
  %15 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %14, i32 0, i32 6, !dbg !3765
  %16 = load i32, i32* %15, align 8, !dbg !3765
  %17 = and i32 %16, 1, !dbg !3766
  %18 = icmp ne i32 %17, 0, !dbg !3766
  br i1 %18, label %19, label %20, !dbg !3767

; <label>:19:                                     ; preds = %11
  br label %43, !dbg !3768

; <label>:20:                                     ; preds = %11
  %21 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %5, align 8, !dbg !3769
  %22 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %21, i32 0, i32 1, !dbg !3770
  %23 = load %struct.fsys_namenode*, %struct.fsys_namenode** %22, align 8, !dbg !3770
  %24 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !3771
  %25 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !3772
  %26 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %25, i32 0, i32 9, !dbg !3773
  %27 = call %struct.fsys_namenode* @namenodetouse(%struct.fsys_namenode* %23, %struct.pkginfo* %24, %struct.pkgbin* %26), !dbg !3774
  store %struct.fsys_namenode* %27, %struct.fsys_namenode** %6, align 8, !dbg !3775
  %28 = load %struct.fsys_namenode*, %struct.fsys_namenode** %6, align 8, !dbg !3776
  %29 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %28, i32 0, i32 1, !dbg !3778
  %30 = load i8*, i8** %29, align 8, !dbg !3778
  %31 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.77, i32 0, i32 0)) #11, !dbg !3779
  %32 = icmp eq i32 %31, 0, !dbg !3780
  br i1 %32, label %33, label %34, !dbg !3781

; <label>:33:                                     ; preds = %20
  br label %43, !dbg !3782

; <label>:34:                                     ; preds = %20
  call void @varbuf_rollback(%struct.varbuf* @fnametmpvb, %struct.varbuf_state* @fname_state), !dbg !3783
  %35 = load %struct.fsys_namenode*, %struct.fsys_namenode** %6, align 8, !dbg !3784
  %36 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %35, i32 0, i32 1, !dbg !3785
  %37 = load i8*, i8** %36, align 8, !dbg !3785
  %38 = load %struct.fsys_namenode*, %struct.fsys_namenode** %6, align 8, !dbg !3786
  %39 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %38, i32 0, i32 1, !dbg !3787
  %40 = load i8*, i8** %39, align 8, !dbg !3787
  %41 = call i64 @strlen(i8* %40) #11, !dbg !3788
  call void @varbuf_add_buf(%struct.varbuf* @fnametmpvb, i8* %37, i64 %41), !dbg !3789
  call void @varbuf_add_buf(%struct.varbuf* @fnametmpvb, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.124, i32 0, i32 0), i64 9), !dbg !3791
  call void @varbuf_end_str(%struct.varbuf* @fnametmpvb), !dbg !3792
  %42 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fnametmpvb, i32 0, i32 2), align 8, !dbg !3793
  call void @path_remove_tree(i8* %42), !dbg !3794
  br label %43, !dbg !3795

; <label>:43:                                     ; preds = %34, %33, %19
  %44 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %5, align 8, !dbg !3796
  %45 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %44, i32 0, i32 0, !dbg !3798
  %46 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %45, align 8, !dbg !3798
  store %struct.fsys_namenode_list* %46, %struct.fsys_namenode_list** %5, align 8, !dbg !3799
  br label %8, !dbg !3800, !llvm.loop !3801

; <label>:47:                                     ; preds = %8
  ret void, !dbg !3803
}

declare void @pkg_reset_eflags(%struct.pkginfo*) #2

declare i32 @pkg_queue_is_empty(%struct.pkg_queue*) #2

declare %struct.pkginfo* @pkg_queue_pop(%struct.pkg_queue*) #2

declare void @removal_bulk(%struct.pkginfo*) #2

declare void @enqueue_package_mark_seen(%struct.pkginfo*) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #5

declare i8* @dpkg_db_get_path(i8*) #2

; Function Attrs: nounwind
declare i32 @unlink(i8*) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #7

declare void @cu_pathname(i32, i8**) #2

declare zeroext i1 @find_command(i8*) #2

declare i32 @fflush(%struct._IO_FILE*) #2

declare void @notice(i8*, ...) #2

; Function Attrs: nounwind
declare i8* @mkdtemp(i8*) #3

declare i8* @path_make_temp_template(i8*) #2

declare i8* @m_realloc(i8*, i64) #2

; Function Attrs: nounwind
declare void @free(i8*) #3

declare i8* @dpkg_db_get_dir() #2

declare i8* @m_malloc(i64) #2

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #3

declare void @path_remove_tree(i8*) #2

declare void @ensure_package_clientdata(%struct.pkginfo*) #2

declare void @check_conflict(%struct.dependency*, %struct.pkginfo*, i8*) #2

declare void @check_breaks(%struct.dependency*, %struct.pkginfo*, i8*) #2

declare zeroext i1 @depisok(%struct.dependency*, %struct.varbuf*, %struct.pkginfo**, %struct.pkginfo**, i1 zeroext) #2

declare void @trigproc(%struct.pkginfo*, i32) #2

declare void @varbuf_end_str(%struct.varbuf*) #2

declare zeroext i1 @force_depends(%struct.deppossi*) #2

declare void @warning(i8*, ...) #2

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare void @cu_closestream(i32, i8**) #2

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @c_isspace(i32) #8 !dbg !3804 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3807, metadata !623), !dbg !3808
  %3 = load i32, i32* %2, align 4, !dbg !3809
  %4 = call zeroext i1 @c_isbits(i32 %3, i32 4), !dbg !3810
  ret i1 %4, !dbg !3811
}

declare %struct.fsys_namenode* @fsys_hash_find_node(i8*, i32) #2

declare %struct.fsys_namenode_list* @tar_fsys_namenode_queue_push(%struct.fsys_namenode_queue*, %struct.fsys_namenode*) #2

declare %struct.fsys_node_pkgs_iter* @fsys_node_pkgs_iter_new(%struct.fsys_namenode*) #2

declare %struct.pkginfo* @fsys_node_pkgs_iter_next(%struct.fsys_node_pkgs_iter*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

declare void @fsys_node_pkgs_iter_free(%struct.fsys_node_pkgs_iter*) #2

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #3

declare i32 @fclose(%struct._IO_FILE*) #2

declare zeroext i1 @c_isbits(i32, i32) #2

declare void @push_cleanup_fallback(void (i32, i8**)*, i32, void (i32, i8**)*, i32, i32, ...) #2

declare void @cu_prermdeconfigure(i32, i8**) #2

declare void @ok_prermdeconfigure(i32, i8**) #2

declare void @fsys_hash_rev_iter_init(%struct.fsys_hash_rev_iter*, %struct.fsys_namenode_list*) #2

declare %struct.fsys_namenode* @fsys_hash_rev_iter_next(%struct.fsys_hash_rev_iter*) #2

declare %struct.fsys_namenode* @namenodetouse(%struct.fsys_namenode*, %struct.pkginfo*, %struct.pkgbin*) #2

declare void @varbuf_rollback(%struct.varbuf*, %struct.varbuf_state*) #2

declare void @varbuf_add_buf(%struct.varbuf*, i8*, i64) #2

declare zeroext i1 @dir_is_used_by_others(%struct.fsys_namenode*, %struct.pkginfo*) #2

; Function Attrs: nounwind
declare i32 @lstat(i8*, %struct.stat*) #3

; Function Attrs: nounwind
declare i8* @strerror(i32) #3

declare void @trig_path_activate(%struct.fsys_namenode*, %struct.pkginfo*) #2

; Function Attrs: nounwind
declare i32 @rmdir(i8*) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #6

declare void @varbuf_reset(%struct.varbuf*) #2

declare void @varbuf_destroy(%struct.varbuf*) #2

declare i32 @secure_unlink_statted(i8*, %struct.stat*) #2

declare void @match_node_free(%struct.match_node*) #2

declare void @pkg_infodb_foreach(%struct.pkginfo*, %struct.pkgbin*, void (i8*, i8*)*) #2

; Function Attrs: nounwind uwtable
define internal void @pkg_infodb_update_file(i8*, i8*) #0 !dbg !3812 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3815, metadata !623), !dbg !3816
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3817, metadata !623), !dbg !3818
  %5 = load i8*, i8** %4, align 8, !dbg !3819
  %6 = call i64 @strlen(i8* %5) #11, !dbg !3821
  %7 = icmp ugt i64 %6, 100, !dbg !3822
  br i1 %7, label %8, label %11, !dbg !3823

; <label>:8:                                      ; preds = %2
  %9 = call i8* @gettext(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.103, i32 0, i32 0)) #9, !dbg !3824
  %10 = load i8*, i8** %3, align 8, !dbg !3825
  call void (i8*, ...) @ohshit(i8* %9, i8* %10) #10, !dbg !3826
  unreachable, !dbg !3828

; <label>:11:                                     ; preds = %2
  %12 = load i8*, i8** %4, align 8, !dbg !3829
  %13 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.98, i32 0, i32 0)) #11, !dbg !3831
  %14 = icmp eq i32 %13, 0, !dbg !3832
  br i1 %14, label %15, label %16, !dbg !3833

; <label>:15:                                     ; preds = %11
  br label %21, !dbg !3834

; <label>:16:                                     ; preds = %11
  %17 = load i8*, i8** %3, align 8, !dbg !3835
  %18 = load i8*, i8** %4, align 8, !dbg !3836
  %19 = load %struct.match_node*, %struct.match_node** @match_head, align 8, !dbg !3837
  %20 = call %struct.match_node* @match_node_new(i8* %17, i8* %18, %struct.match_node* %19), !dbg !3838
  store %struct.match_node* %20, %struct.match_node** @match_head, align 8, !dbg !3839
  br label %21, !dbg !3840

; <label>:21:                                     ; preds = %16, %15
  ret void, !dbg !3841
}

; Function Attrs: nounwind
declare i32 @rename(i8*, i8*) #3

declare %struct.__dirstream* @opendir(i8*) #2

declare void @cu_closedir(i32, i8**) #2

declare %struct.dirent* @readdir(%struct.__dirstream*) #2

; Function Attrs: nounwind uwtable
define internal void @pkg_infodb_remove_file(i8*, i8*) #0 !dbg !3843 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3844, metadata !623), !dbg !3845
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3846, metadata !623), !dbg !3847
  %5 = load i8*, i8** %3, align 8, !dbg !3848
  %6 = call i32 @unlink(i8* %5) #9, !dbg !3850
  %7 = icmp ne i32 %6, 0, !dbg !3850
  br i1 %7, label %8, label %11, !dbg !3851

; <label>:8:                                      ; preds = %2
  %9 = call i8* @gettext(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.104, i32 0, i32 0)) #9, !dbg !3852
  %10 = load i8*, i8** %3, align 8, !dbg !3853
  call void (i8*, ...) @ohshite(i8* %9, i8* %10) #10, !dbg !3854
  unreachable, !dbg !3856

; <label>:11:                                     ; preds = %2
  %12 = load i8*, i8** %3, align 8, !dbg !3857
  call void (i32, i8*, ...) @debug(i32 2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.105, i32 0, i32 0), i8* %12), !dbg !3858
  ret void, !dbg !3859
}

declare void @dir_sync_path(i8*) #2

declare i8* @pkg_infodb_get_dir() #2

declare %struct.match_node* @match_node_new(i8*, i8*, %struct.match_node*) #2

declare void @dpkg_version_blank(%struct.dpkg_version*) #2

declare void @copy_dependency_links(%struct.pkginfo*, %struct.dependency**, %struct.dependency*, i1 zeroext) #2

declare i8* @nfstrsave(i8*) #2

declare %struct.pkg_hash_iter* @pkg_hash_iter_new() #2

declare %struct.pkginfo* @pkg_hash_iter_next_pkg(%struct.pkg_hash_iter*) #2

declare zeroext i1 @filesavespackage(%struct.fsys_namenode_list*, %struct.pkginfo*, %struct.pkginfo*) #2

; Function Attrs: nounwind uwtable
define internal void @pkg_disappear(%struct.pkginfo*, %struct.pkginfo*) #0 !dbg !3860 {
  %3 = alloca %struct.pkginfo*, align 8
  %4 = alloca %struct.pkginfo*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %3, metadata !3863, metadata !623), !dbg !3864
  store %struct.pkginfo* %1, %struct.pkginfo** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %4, metadata !3865, metadata !623), !dbg !3866
  %5 = call i8* @gettext(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.112, i32 0, i32 0)) #9, !dbg !3867
  %6 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !3868
  %7 = call i8* @pkg_name(%struct.pkginfo* %6, i32 1), !dbg !3869
  %8 = call i32 (i8*, ...) @printf(i8* %5, i8* %7), !dbg !3870
  %9 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !3872
  %10 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !3873
  %11 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %10, i32 0, i32 9, !dbg !3874
  call void @log_action(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.113, i32 0, i32 0), %struct.pkginfo* %9, %struct.pkgbin* %11), !dbg !3875
  %12 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !3876
  %13 = call i8* @pkg_name(%struct.pkginfo* %12, i32 3), !dbg !3877
  call void (i32, i8*, ...) @debug(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.114, i32 0, i32 0), i8* %13), !dbg !3878
  %14 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !3879
  call void @trig_activate_packageprocessing(%struct.pkginfo* %14), !dbg !3880
  %15 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !3881
  %16 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !3882
  %17 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !3883
  %18 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %17, i32 0, i32 10, !dbg !3884
  %19 = call i8* @pkgbin_name(%struct.pkginfo* %16, %struct.pkgbin* %18, i32 1), !dbg !3885
  %20 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !3886
  %21 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %20, i32 0, i32 10, !dbg !3887
  %22 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %21, i32 0, i32 11, !dbg !3888
  %23 = call i8* @versiondescribe(%struct.dpkg_version* %22, i32 1), !dbg !3889
  %24 = call i32 (%struct.pkginfo*, i8*, i8*, ...) @maintscript_installed(%struct.pkginfo* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.113, i32 0, i32 0), i8* %19, i8* %23, i8* null), !dbg !3890
  call void (i32, i8*, ...) @debug(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.116, i32 0, i32 0)), !dbg !3891
  %25 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !3892
  %26 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !3893
  %27 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %26, i32 0, i32 9, !dbg !3894
  call void @pkg_infodb_foreach(%struct.pkginfo* %25, %struct.pkgbin* %27, void (i8*, i8*)* @pkg_infodb_remove_file), !dbg !3895
  %28 = call i8* @pkg_infodb_get_dir(), !dbg !3896
  call void @dir_sync_path(i8* %28), !dbg !3897
  %29 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !3898
  call void @pkg_set_status(%struct.pkginfo* %29, i32 0), !dbg !3899
  %30 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !3900
  call void @pkg_set_want(%struct.pkginfo* %30, i32 0), !dbg !3901
  %31 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !3902
  call void @pkg_reset_eflags(%struct.pkginfo* %31), !dbg !3903
  %32 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !3904
  %33 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %32, i32 0, i32 8, !dbg !3905
  call void @dpkg_version_blank(%struct.dpkg_version* %33), !dbg !3906
  %34 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !3907
  %35 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %34, i32 0, i32 9, !dbg !3908
  call void @pkgbin_blank(%struct.pkgbin* %35), !dbg !3909
  %36 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !3910
  %37 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %36, i32 0, i32 18, !dbg !3911
  store i8 0, i8* %37, align 8, !dbg !3912
  %38 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !3913
  call void @modstatdb_note(%struct.pkginfo* %38), !dbg !3914
  ret void, !dbg !3915
}

declare void @pkg_hash_iter_free(%struct.pkg_hash_iter*) #2

declare void @pkgbin_blank(%struct.pkgbin*) #2

declare void @conffile_mark_obsolete(%struct.pkginfo*, %struct.fsys_namenode*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind }
attributes #10 = { noreturn }
attributes #11 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!616, !617}
!llvm.ident = !{!618}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !290, globals: !295)
!1 = !DIFile(filename: "[inter]src--unpack.o.i", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!2 = !{!3, !15, !26, !35, !43, !47, !57, !67, !73, !81, !86, !91, !104, !110, !118, !139, !156, !201, !232, !238, !244, !260, !265, !274, !279}
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
!104 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_msg_type", file: !105, line: 36, size: 32, align: 32, elements: !106)
!105 = !DIFile(filename: "../lib/dpkg/error.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!106 = !{!107, !108, !109}
!107 = !DIEnumerator(name: "DPKG_MSG_NONE", value: 0)
!108 = !DIEnumerator(name: "DPKG_MSG_WARN", value: 1)
!109 = !DIEnumerator(name: "DPKG_MSG_ERROR", value: 2)
!110 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tar_format", file: !111, line: 40, size: 32, align: 32, elements: !112)
!111 = !DIFile(filename: "../lib/dpkg/tarfn.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!112 = !{!113, !114, !115, !116, !117}
!113 = !DIEnumerator(name: "TAR_FORMAT_UNKNOWN", value: 0)
!114 = !DIEnumerator(name: "TAR_FORMAT_OLD", value: 1)
!115 = !DIEnumerator(name: "TAR_FORMAT_GNU", value: 2)
!116 = !DIEnumerator(name: "TAR_FORMAT_USTAR", value: 3)
!117 = !DIEnumerator(name: "TAR_FORMAT_PAX", value: 4)
!118 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tar_filetype", file: !111, line: 48, size: 32, align: 32, elements: !119)
!119 = !{!120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138}
!120 = !DIEnumerator(name: "TAR_FILETYPE_FILE0", value: 0)
!121 = !DIEnumerator(name: "TAR_FILETYPE_FILE", value: 48)
!122 = !DIEnumerator(name: "TAR_FILETYPE_HARDLINK", value: 49)
!123 = !DIEnumerator(name: "TAR_FILETYPE_SYMLINK", value: 50)
!124 = !DIEnumerator(name: "TAR_FILETYPE_CHARDEV", value: 51)
!125 = !DIEnumerator(name: "TAR_FILETYPE_BLOCKDEV", value: 52)
!126 = !DIEnumerator(name: "TAR_FILETYPE_DIR", value: 53)
!127 = !DIEnumerator(name: "TAR_FILETYPE_FIFO", value: 54)
!128 = !DIEnumerator(name: "TAR_FILETYPE_CONTIG", value: 55)
!129 = !DIEnumerator(name: "TAR_FILETYPE_GNU_LONGLINK", value: 75)
!130 = !DIEnumerator(name: "TAR_FILETYPE_GNU_LONGNAME", value: 76)
!131 = !DIEnumerator(name: "TAR_FILETYPE_GNU_VOLUME", value: 86)
!132 = !DIEnumerator(name: "TAR_FILETYPE_GNU_MULTIVOL", value: 77)
!133 = !DIEnumerator(name: "TAR_FILETYPE_GNU_DUMPDIR", value: 68)
!134 = !DIEnumerator(name: "TAR_FILETYPE_GNU_SPARSE", value: 83)
!135 = !DIEnumerator(name: "TAR_FILETYPE_PAX_GLOBAL", value: 103)
!136 = !DIEnumerator(name: "TAR_FILETYPE_PAX_EXTENDED", value: 120)
!137 = !DIEnumerator(name: "TAR_FILETYPE_SOLARIS_EXTENDED", value: 88)
!138 = !DIEnumerator(name: "TAR_FILETYPE_SOLARIS_ACL", value: 65)
!139 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "parsedbflags", file: !4, line: 328, size: 32, align: 32, elements: !140)
!140 = !{!141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155}
!141 = !DIEnumerator(name: "pdb_single_stanza", value: 1)
!142 = !DIEnumerator(name: "pdb_recordavailable", value: 2)
!143 = !DIEnumerator(name: "pdb_rejectstatus", value: 4)
!144 = !DIEnumerator(name: "pdb_weakclassification", value: 8)
!145 = !DIEnumerator(name: "pdb_ignore_archives", value: 16)
!146 = !DIEnumerator(name: "pdb_ignoreolder", value: 32)
!147 = !DIEnumerator(name: "pdb_lax_version_parser", value: 64)
!148 = !DIEnumerator(name: "pdb_lax_stanza_parser", value: 512)
!149 = !DIEnumerator(name: "pdb_lax_parser", value: 576)
!150 = !DIEnumerator(name: "pdb_close_fd", value: 128)
!151 = !DIEnumerator(name: "pdb_dash_is_stdin", value: 256)
!152 = !DIEnumerator(name: "pdb_parse_status", value: 584)
!153 = !DIEnumerator(name: "pdb_parse_update", value: 585)
!154 = !DIEnumerator(name: "pdb_parse_available", value: 582)
!155 = !DIEnumerator(name: "pdb_parse_binary", value: 7)
!156 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "action", file: !74, line: 68, size: 32, align: 32, elements: !157)
!157 = !{!158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200}
!158 = !DIEnumerator(name: "act_unset", value: 0)
!159 = !DIEnumerator(name: "act_unpack", value: 1)
!160 = !DIEnumerator(name: "act_configure", value: 2)
!161 = !DIEnumerator(name: "act_install", value: 3)
!162 = !DIEnumerator(name: "act_triggers", value: 4)
!163 = !DIEnumerator(name: "act_remove", value: 5)
!164 = !DIEnumerator(name: "act_purge", value: 6)
!165 = !DIEnumerator(name: "act_verify", value: 7)
!166 = !DIEnumerator(name: "act_commandfd", value: 8)
!167 = !DIEnumerator(name: "act_status", value: 9)
!168 = !DIEnumerator(name: "act_listpackages", value: 10)
!169 = !DIEnumerator(name: "act_listfiles", value: 11)
!170 = !DIEnumerator(name: "act_searchfiles", value: 12)
!171 = !DIEnumerator(name: "act_controlpath", value: 13)
!172 = !DIEnumerator(name: "act_controllist", value: 14)
!173 = !DIEnumerator(name: "act_controlshow", value: 15)
!174 = !DIEnumerator(name: "act_cmpversions", value: 16)
!175 = !DIEnumerator(name: "act_arch_add", value: 17)
!176 = !DIEnumerator(name: "act_arch_remove", value: 18)
!177 = !DIEnumerator(name: "act_printarch", value: 19)
!178 = !DIEnumerator(name: "act_printforeignarches", value: 20)
!179 = !DIEnumerator(name: "act_assertpredep", value: 21)
!180 = !DIEnumerator(name: "act_assertepoch", value: 22)
!181 = !DIEnumerator(name: "act_assertlongfilenames", value: 23)
!182 = !DIEnumerator(name: "act_assertmulticonrep", value: 24)
!183 = !DIEnumerator(name: "act_assertmultiarch", value: 25)
!184 = !DIEnumerator(name: "act_assertverprovides", value: 26)
!185 = !DIEnumerator(name: "act_validate_pkgname", value: 27)
!186 = !DIEnumerator(name: "act_validate_trigname", value: 28)
!187 = !DIEnumerator(name: "act_validate_archname", value: 29)
!188 = !DIEnumerator(name: "act_validate_version", value: 30)
!189 = !DIEnumerator(name: "act_audit", value: 31)
!190 = !DIEnumerator(name: "act_unpackchk", value: 32)
!191 = !DIEnumerator(name: "act_predeppackage", value: 33)
!192 = !DIEnumerator(name: "act_getselections", value: 34)
!193 = !DIEnumerator(name: "act_setselections", value: 35)
!194 = !DIEnumerator(name: "act_clearselections", value: 36)
!195 = !DIEnumerator(name: "act_avail", value: 37)
!196 = !DIEnumerator(name: "act_printavail", value: 38)
!197 = !DIEnumerator(name: "act_avclear", value: 39)
!198 = !DIEnumerator(name: "act_avreplace", value: 40)
!199 = !DIEnumerator(name: "act_avmerge", value: 41)
!200 = !DIEnumerator(name: "act_forgetold", value: 42)
!201 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "force_flags", file: !202, line: 28, size: 32, align: 32, elements: !203)
!202 = !DIFile(filename: "force.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!203 = !{!204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231}
!204 = !DIEnumerator(name: "FORCE_ARCHITECTURE", value: 1)
!205 = !DIEnumerator(name: "FORCE_BAD_PATH", value: 2)
!206 = !DIEnumerator(name: "FORCE_BAD_VERIFY", value: 4)
!207 = !DIEnumerator(name: "FORCE_BAD_VERSION", value: 8)
!208 = !DIEnumerator(name: "FORCE_BREAKS", value: 16)
!209 = !DIEnumerator(name: "FORCE_CONFF_ASK", value: 32)
!210 = !DIEnumerator(name: "FORCE_CONFF_DEF", value: 64)
!211 = !DIEnumerator(name: "FORCE_CONFF_MISS", value: 128)
!212 = !DIEnumerator(name: "FORCE_CONFF_NEW", value: 256)
!213 = !DIEnumerator(name: "FORCE_CONFF_OLD", value: 512)
!214 = !DIEnumerator(name: "FORCE_CONFIGURE_ANY", value: 1024)
!215 = !DIEnumerator(name: "FORCE_CONFLICTS", value: 2048)
!216 = !DIEnumerator(name: "FORCE_DEPENDS", value: 4096)
!217 = !DIEnumerator(name: "FORCE_DEPENDS_VERSION", value: 8192)
!218 = !DIEnumerator(name: "FORCE_DOWNGRADE", value: 16384)
!219 = !DIEnumerator(name: "FORCE_HOLD", value: 32768)
!220 = !DIEnumerator(name: "FORCE_NON_ROOT", value: 65536)
!221 = !DIEnumerator(name: "FORCE_OVERWRITE", value: 131072)
!222 = !DIEnumerator(name: "FORCE_OVERWRITE_DIR", value: 262144)
!223 = !DIEnumerator(name: "FORCE_OVERWRITE_DIVERTED", value: 524288)
!224 = !DIEnumerator(name: "FORCE_REMOVE_ESSENTIAL", value: 1048576)
!225 = !DIEnumerator(name: "FORCE_REMOVE_REINSTREQ", value: 2097152)
!226 = !DIEnumerator(name: "FORCE_SCRIPT_CHROOTLESS", value: 4194304)
!227 = !DIEnumerator(name: "FORCE_UNSAFE_IO", value: 8388608)
!228 = !DIEnumerator(name: "FORCE_STATOVERRIDE_ADD", value: 16777216)
!229 = !DIEnumerator(name: "FORCE_STATOVERRIDE_DEL", value: 33554432)
!230 = !DIEnumerator(name: "FORCE_SECURITY_MAC", value: 67108864)
!231 = !DIEnumerator(name: "FORCE_ALL", value: -1)
!232 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkg_name_arch_when", file: !4, line: 396, size: 32, align: 32, elements: !233)
!233 = !{!234, !235, !236, !237}
!234 = !DIEnumerator(name: "pnaw_never", value: 0)
!235 = !DIEnumerator(name: "pnaw_nonambig", value: 1)
!236 = !DIEnumerator(name: "pnaw_foreign", value: 2)
!237 = !DIEnumerator(name: "pnaw_always", value: 3)
!238 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !239, line: 41, size: 32, align: 32, elements: !240)
!239 = !DIFile(filename: "../lib/dpkg/ehandle.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!240 = !{!241, !242, !243}
!241 = !DIEnumerator(name: "ehflag_normaltidy", value: 1)
!242 = !DIEnumerator(name: "ehflag_bombout", value: 2)
!243 = !DIEnumerator(name: "ehflag_recursiveerror", value: 4)
!244 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "debugflags", file: !245, line: 41, size: 32, align: 32, elements: !246)
!245 = !DIFile(filename: "../lib/dpkg/debug.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!246 = !{!247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259}
!247 = !DIEnumerator(name: "dbg_general", value: 1)
!248 = !DIEnumerator(name: "dbg_scripts", value: 2)
!249 = !DIEnumerator(name: "dbg_eachfile", value: 8)
!250 = !DIEnumerator(name: "dbg_eachfiledetail", value: 64)
!251 = !DIEnumerator(name: "dbg_conff", value: 16)
!252 = !DIEnumerator(name: "dbg_conffdetail", value: 128)
!253 = !DIEnumerator(name: "dbg_depcon", value: 32)
!254 = !DIEnumerator(name: "dbg_depcondetail", value: 256)
!255 = !DIEnumerator(name: "dbg_veryverbose", value: 512)
!256 = !DIEnumerator(name: "dbg_stupidlyverbose", value: 1024)
!257 = !DIEnumerator(name: "dbg_triggers", value: 4096)
!258 = !DIEnumerator(name: "dbg_triggersdetail", value: 8192)
!259 = !DIEnumerator(name: "dbg_triggersstupid", value: 16384)
!260 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "versiondisplayepochwhen", file: !4, line: 388, size: 32, align: 32, elements: !261)
!261 = !{!262, !263, !264}
!262 = !DIEnumerator(name: "vdew_never", value: 0)
!263 = !DIEnumerator(name: "vdew_nonambig", value: 1)
!264 = !DIEnumerator(name: "vdew_always", value: 2)
!265 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "subproc_flags", file: !266, line: 36, size: 32, align: 32, elements: !267)
!266 = !DIFile(filename: "../lib/dpkg/subproc.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!267 = !{!268, !269, !270, !271, !272, !273}
!268 = !DIEnumerator(name: "SUBPROC_NORMAL", value: 0)
!269 = !DIEnumerator(name: "SUBPROC_WARN", value: 1)
!270 = !DIEnumerator(name: "SUBPROC_NOPIPE", value: 2)
!271 = !DIEnumerator(name: "SUBPROC_NOCHECK", value: 4)
!272 = !DIEnumerator(name: "SUBPROC_RETERROR", value: 8)
!273 = !DIEnumerator(name: "SUBPROC_RETSIGNO", value: 8)
!274 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "trigproc_type", file: !74, line: 320, size: 32, align: 32, elements: !275)
!275 = !{!276, !277, !278}
!276 = !DIEnumerator(name: "TRIGPROC_TRY_DEFERRED", value: 0)
!277 = !DIEnumerator(name: "TRIGPROC_TRY_QUEUED", value: 1)
!278 = !DIEnumerator(name: "TRIGPROC_REQUIRED", value: 2)
!279 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "c_ctype_bit", file: !280, line: 32, size: 32, align: 32, elements: !281)
!280 = !DIFile(filename: "../lib/dpkg/c-ctype.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!281 = !{!282, !283, !284, !285, !286, !287, !288, !289}
!282 = !DIEnumerator(name: "C_CTYPE_BLANK", value: 1)
!283 = !DIEnumerator(name: "C_CTYPE_WHITE", value: 2)
!284 = !DIEnumerator(name: "C_CTYPE_SPACE", value: 4)
!285 = !DIEnumerator(name: "C_CTYPE_UPPER", value: 8)
!286 = !DIEnumerator(name: "C_CTYPE_LOWER", value: 16)
!287 = !DIEnumerator(name: "C_CTYPE_DIGIT", value: 32)
!288 = !DIEnumerator(name: "C_CTYPE_ALPHA", value: 24)
!289 = !DIEnumerator(name: "C_CTYPE_ALNUM", value: 56)
!290 = !{!291, !292}
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !293, line: 134, baseType: !294)
!293 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!294 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!295 = !{!296, !373, !377, !378, !580, !587, !592, !604, !608}
!296 = distinct !DIGlobalVariable(name: "tf", scope: !297, file: !298, line: 1063, type: !305, isLocal: true, isDefinition: true, variable: %struct.tar_operations* @process_archive.tf)
!297 = distinct !DISubprogram(name: "process_archive", scope: !298, file: !298, line: 1062, type: !299, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !304)
!298 = !DIFile(filename: "unpack.c", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!299 = !DISubroutineType(types: !300)
!300 = !{null, !301}
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64, align: 64)
!302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !303)
!303 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!304 = !{}
!305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !306)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tar_operations", file: !111, line: 95, size: 384, align: 64, elements: !307)
!307 = !{!308, !328, !369, !370, !371, !372}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !306, file: !111, line: 96, baseType: !309, size: 64, align: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64, align: 64)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "tar_read_func", file: !111, line: 92, baseType: !311)
!311 = !DISubroutineType(types: !312)
!312 = !{!313, !314, !323, !313}
!313 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64, align: 64)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tar_archive", file: !111, line: 105, size: 320, align: 64, elements: !316)
!316 = !{!317, !324, !325, !327}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !315, file: !111, line: 107, baseType: !318, size: 128, align: 64)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_error", file: !105, line: 42, size: 128, align: 64, elements: !319)
!319 = !{!320, !321, !322}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !318, file: !105, line: 43, baseType: !104, size: 32, align: 32)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "syserrno", scope: !318, file: !105, line: 45, baseType: !313, size: 32, align: 32, offset: 32)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !318, file: !105, line: 46, baseType: !323, size: 64, align: 64, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64, align: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !315, file: !111, line: 110, baseType: !110, size: 32, align: 32, offset: 128)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !315, file: !111, line: 113, baseType: !326, size: 64, align: 64, offset: 192)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64, align: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !315, file: !111, line: 114, baseType: !291, size: 64, align: 64, offset: 256)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "extract_file", scope: !306, file: !111, line: 98, baseType: !329, size: 64, align: 64, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64, align: 64)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "tar_make_func", file: !111, line: 93, baseType: !331)
!331 = !DISubroutineType(types: !332)
!332 = !{!313, !314, !333}
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64, align: 64)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tar_entry", file: !111, line: 71, size: 640, align: 64, elements: !335)
!335 = !{!336, !337, !338, !339, !340, !345, !349, !353}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !334, file: !111, line: 73, baseType: !110, size: 32, align: 32)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !334, file: !111, line: 75, baseType: !118, size: 32, align: 32, offset: 32)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !334, file: !111, line: 77, baseType: !323, size: 64, align: 64, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "linkname", scope: !334, file: !111, line: 79, baseType: !323, size: 64, align: 64, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !334, file: !111, line: 81, baseType: !341, size: 64, align: 64, offset: 192)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !342, line: 86, baseType: !343)
!342 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !344, line: 131, baseType: !294)
!344 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!345 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !334, file: !111, line: 83, baseType: !346, size: 64, align: 64, offset: 256)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !347, line: 75, baseType: !348)
!347 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !344, line: 139, baseType: !294)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !334, file: !111, line: 85, baseType: !350, size: 64, align: 64, offset: 320)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !342, line: 60, baseType: !351)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !344, line: 124, baseType: !352)
!352 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !334, file: !111, line: 87, baseType: !354, size: 256, align: 64, offset: 384)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_stat", file: !355, line: 40, size: 256, align: 64, elements: !356)
!355 = !DIFile(filename: "../lib/dpkg/file.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!356 = !{!357, !361, !364, !367, !368}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !354, file: !355, line: 41, baseType: !358, size: 32, align: 32)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !342, line: 80, baseType: !359)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !344, line: 125, baseType: !360)
!360 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !354, file: !355, line: 42, baseType: !362, size: 32, align: 32, offset: 32)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !342, line: 65, baseType: !363)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !344, line: 126, baseType: !360)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !354, file: !355, line: 43, baseType: !365, size: 32, align: 32, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !342, line: 70, baseType: !366)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !344, line: 129, baseType: !360)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "uname", scope: !354, file: !355, line: 47, baseType: !323, size: 64, align: 64, offset: 128)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !354, file: !355, line: 48, baseType: !323, size: 64, align: 64, offset: 192)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !306, file: !111, line: 99, baseType: !329, size: 64, align: 64, offset: 128)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !306, file: !111, line: 100, baseType: !329, size: 64, align: 64, offset: 192)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !306, file: !111, line: 101, baseType: !329, size: 64, align: 64, offset: 256)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !306, file: !111, line: 102, baseType: !329, size: 64, align: 64, offset: 320)
!373 = distinct !DIGlobalVariable(name: "p1", scope: !297, file: !298, line: 1076, type: !374, isLocal: true, isDefinition: true, variable: [2 x i32]* @process_archive.p1)
!374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !313, size: 64, align: 32, elements: !375)
!375 = !{!376}
!376 = !DISubrange(count: 2)
!377 = distinct !DIGlobalVariable(name: "oldversionstatus", scope: !297, file: !298, line: 1077, type: !47, isLocal: true, isDefinition: true, variable: i32* @process_archive.oldversionstatus)
!378 = distinct !DIGlobalVariable(name: "tc", scope: !297, file: !298, line: 1078, type: !379, isLocal: true, isDefinition: true, variable: %struct.tarcontext* @process_archive.tc)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tarcontext", file: !380, line: 29, size: 256, align: 64, elements: !381)
!380 = !DIFile(filename: "archives.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!381 = !{!382, !383, !572, !579}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "backendpipe", scope: !379, file: !380, line: 30, baseType: !313, size: 32, align: 32)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !379, file: !380, line: 31, baseType: !384, size: 64, align: 64, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64, align: 64)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkginfo", file: !4, line: 195, size: 3072, align: 64, elements: !386)
!386 = !{!387, !434, !435, !436, !437, !438, !439, !440, !441, !442, !472, !473, !489, !498, !514, !515, !521, !569, !570, !571}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !385, file: !4, line: 196, baseType: !388, size: 64, align: 64)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64, align: 64)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgset", file: !4, line: 242, size: 3392, align: 64, elements: !390)
!390 = !{!391, !392, !393, !394, !433}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !389, file: !4, line: 243, baseType: !388, size: 64, align: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !389, file: !4, line: 244, baseType: !301, size: 64, align: 64, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !389, file: !4, line: 245, baseType: !385, size: 3072, align: 64, offset: 128)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "depended", scope: !389, file: !4, line: 249, baseType: !395, size: 128, align: 64, offset: 3200)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !389, file: !4, line: 246, size: 128, align: 64, elements: !396)
!396 = !{!397, !432}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !395, file: !4, line: 247, baseType: !398, size: 64, align: 64)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64, align: 64)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "deppossi", file: !4, line: 63, size: 640, align: 64, elements: !400)
!400 = !{!401, !409, !410, !411, !412, !413, !422, !428, !429, !431}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !399, file: !4, line: 64, baseType: !402, size: 64, align: 64)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64, align: 64)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dependency", file: !4, line: 56, size: 256, align: 64, elements: !404)
!404 = !{!405, !406, !407, !408}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !403, file: !4, line: 57, baseType: !384, size: 64, align: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !403, file: !4, line: 58, baseType: !402, size: 64, align: 64, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !403, file: !4, line: 59, baseType: !398, size: 64, align: 64, offset: 128)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !403, file: !4, line: 60, baseType: !3, size: 32, align: 32, offset: 192)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "ed", scope: !399, file: !4, line: 65, baseType: !388, size: 64, align: 64, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !399, file: !4, line: 66, baseType: !398, size: 64, align: 64, offset: 128)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "rev_next", scope: !399, file: !4, line: 66, baseType: !398, size: 64, align: 64, offset: 192)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "rev_prev", scope: !399, file: !4, line: 66, baseType: !398, size: 64, align: 64, offset: 256)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !399, file: !4, line: 67, baseType: !414, size: 64, align: 64, offset: 320)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64, align: 64)
!415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !416)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_arch", file: !16, line: 48, size: 192, align: 64, elements: !417)
!417 = !{!418, !420, !421}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !416, file: !16, line: 49, baseType: !419, size: 64, align: 64)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64, align: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !416, file: !16, line: 50, baseType: !301, size: 64, align: 64, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !416, file: !16, line: 51, baseType: !15, size: 32, align: 32, offset: 128)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !399, file: !4, line: 68, baseType: !423, size: 192, align: 64, offset: 384)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_version", file: !27, line: 42, size: 192, align: 64, elements: !424)
!424 = !{!425, !426, !427}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !423, file: !27, line: 44, baseType: !360, size: 32, align: 32)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !423, file: !27, line: 46, baseType: !301, size: 64, align: 64, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !423, file: !27, line: 48, baseType: !301, size: 64, align: 64, offset: 128)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "verrel", scope: !399, file: !4, line: 69, baseType: !26, size: 32, align: 32, offset: 576)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "arch_is_implicit", scope: !399, file: !4, line: 70, baseType: !430, size: 8, align: 8, offset: 608)
!430 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "cyclebreak", scope: !399, file: !4, line: 71, baseType: !430, size: 8, align: 8, offset: 616)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !395, file: !4, line: 248, baseType: !398, size: 64, align: 64, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "installed_instances", scope: !389, file: !4, line: 250, baseType: !313, size: 32, align: 32, offset: 3328)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "arch_next", scope: !385, file: !4, line: 197, baseType: !384, size: 64, align: 64, offset: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "want", scope: !385, file: !4, line: 199, baseType: !35, size: 32, align: 32, offset: 128)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "eflag", scope: !385, file: !4, line: 201, baseType: !43, size: 32, align: 32, offset: 160)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !385, file: !4, line: 202, baseType: !47, size: 32, align: 32, offset: 192)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !385, file: !4, line: 203, baseType: !57, size: 32, align: 32, offset: 224)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "otherpriority", scope: !385, file: !4, line: 204, baseType: !301, size: 64, align: 64, offset: 256)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "section", scope: !385, file: !4, line: 205, baseType: !301, size: 64, align: 64, offset: 320)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "configversion", scope: !385, file: !4, line: 206, baseType: !423, size: 192, align: 64, offset: 384)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !385, file: !4, line: 207, baseType: !443, size: 960, align: 64, offset: 576)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgbin", file: !4, line: 107, size: 960, align: 64, elements: !444)
!444 = !{!445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !465}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "depends", scope: !443, file: !4, line: 108, baseType: !402, size: 64, align: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "essential", scope: !443, file: !4, line: 110, baseType: !430, size: 8, align: 8, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "multiarch", scope: !443, file: !4, line: 111, baseType: !67, size: 32, align: 32, offset: 96)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !443, file: !4, line: 112, baseType: !414, size: 64, align: 64, offset: 128)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "pkgname_archqual", scope: !443, file: !4, line: 115, baseType: !301, size: 64, align: 64, offset: 192)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !443, file: !4, line: 116, baseType: !301, size: 64, align: 64, offset: 256)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "maintainer", scope: !443, file: !4, line: 117, baseType: !301, size: 64, align: 64, offset: 320)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !443, file: !4, line: 118, baseType: !301, size: 64, align: 64, offset: 384)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "installedsize", scope: !443, file: !4, line: 119, baseType: !301, size: 64, align: 64, offset: 448)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !443, file: !4, line: 120, baseType: !301, size: 64, align: 64, offset: 512)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "bugs", scope: !443, file: !4, line: 121, baseType: !301, size: 64, align: 64, offset: 576)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !443, file: !4, line: 122, baseType: !423, size: 192, align: 64, offset: 640)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "conffiles", scope: !443, file: !4, line: 123, baseType: !458, size: 64, align: 64, offset: 832)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64, align: 64)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conffile", file: !4, line: 80, size: 256, align: 64, elements: !460)
!460 = !{!461, !462, !463, !464}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !459, file: !4, line: 81, baseType: !458, size: 64, align: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !459, file: !4, line: 82, baseType: !301, size: 64, align: 64, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !459, file: !4, line: 83, baseType: !301, size: 64, align: 64, offset: 128)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "obsolete", scope: !459, file: !4, line: 84, baseType: !430, size: 8, align: 8, offset: 192)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "arbs", scope: !443, file: !4, line: 124, baseType: !466, size: 64, align: 64, offset: 896)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64, align: 64)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arbitraryfield", file: !4, line: 74, size: 192, align: 64, elements: !468)
!468 = !{!469, !470, !471}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !467, file: !4, line: 75, baseType: !466, size: 64, align: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !467, file: !4, line: 76, baseType: !301, size: 64, align: 64, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !467, file: !4, line: 77, baseType: !301, size: 64, align: 64, offset: 128)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !385, file: !4, line: 208, baseType: !443, size: 960, align: 64, offset: 1536)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "clientdata", scope: !385, file: !4, line: 209, baseType: !474, size: 64, align: 64, offset: 2496)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64, align: 64)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perpackagestate", file: !74, line: 53, size: 256, align: 64, elements: !476)
!476 = !{!477, !478, !479, !480, !481, !482}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "istobe", scope: !475, file: !74, line: 54, baseType: !73, size: 32, align: 32)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !475, file: !74, line: 57, baseType: !81, size: 32, align: 32, offset: 32)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !475, file: !74, line: 59, baseType: !430, size: 8, align: 8, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "replacingfilesandsaid", scope: !475, file: !74, line: 61, baseType: !313, size: 32, align: 32, offset: 96)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "cmdline_seen", scope: !475, file: !74, line: 62, baseType: !313, size: 32, align: 32, offset: 128)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "trigprocdeferred", scope: !475, file: !74, line: 65, baseType: !483, size: 64, align: 64, offset: 192)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64, align: 64)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_list", file: !485, line: 34, size: 128, align: 64, elements: !486)
!485 = !DIFile(filename: "../lib/dpkg/pkg-list.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!486 = !{!487, !488}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !484, file: !485, line: 35, baseType: !483, size: 64, align: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !484, file: !485, line: 36, baseType: !384, size: 64, align: 64, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "archives", scope: !385, file: !4, line: 211, baseType: !490, size: 64, align: 64, offset: 2560)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64, align: 64)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archivedetails", file: !4, line: 87, size: 320, align: 64, elements: !492)
!492 = !{!493, !494, !495, !496, !497}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !491, file: !4, line: 88, baseType: !490, size: 64, align: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !491, file: !4, line: 89, baseType: !301, size: 64, align: 64, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "msdosname", scope: !491, file: !4, line: 90, baseType: !301, size: 64, align: 64, offset: 128)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !491, file: !4, line: 91, baseType: !301, size: 64, align: 64, offset: 192)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "md5sum", scope: !491, file: !4, line: 92, baseType: !301, size: 64, align: 64, offset: 256)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "trigaw", scope: !385, file: !4, line: 216, baseType: !499, size: 128, align: 64, offset: 2624)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !385, file: !4, line: 213, size: 128, align: 64, elements: !500)
!500 = !{!501, !513}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !499, file: !4, line: 215, baseType: !502, size: 64, align: 64)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64, align: 64)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigaw", file: !4, line: 142, size: 320, align: 64, elements: !504)
!504 = !{!505, !506, !507, !508}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "aw", scope: !503, file: !4, line: 143, baseType: !384, size: 64, align: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "pend", scope: !503, file: !4, line: 143, baseType: !384, size: 64, align: 64, offset: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "samepend_next", scope: !503, file: !4, line: 144, baseType: !502, size: 64, align: 64, offset: 128)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "sameaw", scope: !503, file: !4, line: 147, baseType: !509, size: 128, align: 64, offset: 192)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !503, file: !4, line: 145, size: 128, align: 64, elements: !510)
!510 = !{!511, !512}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !509, file: !4, line: 146, baseType: !502, size: 64, align: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !509, file: !4, line: 146, baseType: !502, size: 64, align: 64, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !499, file: !4, line: 215, baseType: !502, size: 64, align: 64, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "othertrigaw_head", scope: !385, file: !4, line: 219, baseType: !502, size: 64, align: 64, offset: 2752)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "trigpend_head", scope: !385, file: !4, line: 220, baseType: !516, size: 64, align: 64, offset: 2816)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64, align: 64)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigpend", file: !4, line: 134, size: 128, align: 64, elements: !518)
!518 = !{!519, !520}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !517, file: !4, line: 135, baseType: !516, size: 64, align: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !517, file: !4, line: 136, baseType: !301, size: 64, align: 64, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !385, file: !4, line: 231, baseType: !522, size: 64, align: 64, offset: 2880)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64, align: 64)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode_list", file: !92, line: 122, size: 128, align: 64, elements: !524)
!524 = !{!525, !526}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !523, file: !92, line: 123, baseType: !522, size: 64, align: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "namenode", scope: !523, file: !92, line: 124, baseType: !527, size: 64, align: 64, offset: 64)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64, align: 64)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode", file: !92, line: 90, size: 640, align: 64, elements: !529)
!529 = !{!530, !531, !532, !533, !541, !543, !558, !559, !560, !561}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !528, file: !92, line: 91, baseType: !527, size: 64, align: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !528, file: !92, line: 92, baseType: !301, size: 64, align: 64, offset: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "packages", scope: !528, file: !92, line: 93, baseType: !483, size: 64, align: 64, offset: 128)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "divert", scope: !528, file: !92, line: 94, baseType: !534, size: 64, align: 64, offset: 192)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64, align: 64)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_diversion", file: !92, line: 151, size: 256, align: 64, elements: !536)
!536 = !{!537, !538, !539, !540}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "useinstead", scope: !535, file: !92, line: 152, baseType: !527, size: 64, align: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "camefrom", scope: !535, file: !92, line: 153, baseType: !527, size: 64, align: 64, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "pkgset", scope: !535, file: !92, line: 154, baseType: !388, size: 64, align: 64, offset: 128)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !535, file: !92, line: 157, baseType: !534, size: 64, align: 64, offset: 192)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "statoverride", scope: !528, file: !92, line: 101, baseType: !542, size: 64, align: 64, offset: 256)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64, align: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "trig_interested", scope: !528, file: !92, line: 103, baseType: !544, size: 64, align: 64, offset: 320)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64, align: 64)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigfileint", file: !87, line: 54, size: 448, align: 64, elements: !546)
!546 = !{!547, !548, !550, !551, !552, !553}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !545, file: !87, line: 55, baseType: !384, size: 64, align: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "pkgbin", scope: !545, file: !87, line: 56, baseType: !549, size: 64, align: 64, offset: 64)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64, align: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "fnn", scope: !545, file: !87, line: 57, baseType: !527, size: 64, align: 64, offset: 128)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !545, file: !87, line: 58, baseType: !86, size: 32, align: 32, offset: 192)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "samefile_next", scope: !545, file: !87, line: 59, baseType: !544, size: 64, align: 64, offset: 256)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "inoverall", scope: !545, file: !87, line: 62, baseType: !554, size: 128, align: 64, offset: 320)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !545, file: !87, line: 60, size: 128, align: 64, elements: !555)
!555 = !{!556, !557}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !554, file: !87, line: 61, baseType: !544, size: 64, align: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !554, file: !87, line: 61, baseType: !544, size: 64, align: 64, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !528, file: !92, line: 111, baseType: !91, size: 32, align: 32, offset: 384)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "oldhash", scope: !528, file: !92, line: 114, baseType: !301, size: 64, align: 64, offset: 448)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "newhash", scope: !528, file: !92, line: 117, baseType: !301, size: 64, align: 64, offset: 512)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "file_ondisk_id", scope: !528, file: !92, line: 119, baseType: !562, size: 64, align: 64, offset: 576)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64, align: 64)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ondisk_id", file: !92, line: 85, size: 128, align: 64, elements: !564)
!564 = !{!565, !566}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "id_dev", scope: !563, file: !92, line: 86, baseType: !350, size: 64, align: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "id_ino", scope: !563, file: !92, line: 87, baseType: !567, size: 64, align: 64, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !342, line: 48, baseType: !568)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !344, line: 127, baseType: !352)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_phys_offs", scope: !385, file: !4, line: 232, baseType: !341, size: 64, align: 64, offset: 2944)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_valid", scope: !385, file: !4, line: 233, baseType: !430, size: 8, align: 8, offset: 3008)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "status_dirty", scope: !385, file: !4, line: 236, baseType: !430, size: 8, align: 8, offset: 3016)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "newfiles_queue", scope: !379, file: !380, line: 33, baseType: !573, size: 64, align: 64, offset: 128)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64, align: 64)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode_queue", file: !92, line: 130, size: 128, align: 64, elements: !575)
!575 = !{!576, !577}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !574, file: !92, line: 131, baseType: !522, size: 64, align: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !574, file: !92, line: 131, baseType: !578, size: 64, align: 64, offset: 64)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64, align: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "pkgset_getting_in_sync", scope: !379, file: !380, line: 35, baseType: !430, size: 8, align: 8, offset: 192)
!580 = distinct !DIGlobalVariable(name: "conflictors", scope: !0, file: !298, line: 421, type: !581, isLocal: true, isDefinition: true, variable: %struct.pkg_queue* @conflictors)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_queue", file: !582, line: 35, size: 192, align: 64, elements: !583)
!582 = !DIFile(filename: "../lib/dpkg/pkg-queue.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!583 = !{!584, !585, !586}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !581, file: !582, line: 36, baseType: !483, size: 64, align: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !581, file: !582, line: 36, baseType: !483, size: 64, align: 64, offset: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !581, file: !582, line: 37, baseType: !313, size: 32, align: 32, offset: 128)
!587 = distinct !DIGlobalVariable(name: "reasmbuf", scope: !588, file: !298, line: 87, type: !323, isLocal: true, isDefinition: true, variable: i8** @deb_reassemble.reasmbuf)
!588 = distinct !DISubprogram(name: "deb_reassemble", scope: !298, file: !298, line: 85, type: !589, isLocal: true, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !304)
!589 = !DISubroutineType(types: !590)
!590 = !{!430, !591, !591}
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64, align: 64)
!592 = distinct !DIGlobalVariable(name: "depprobwhy", scope: !593, file: !298, line: 206, type: !596, isLocal: true, isDefinition: true, variable: %struct.varbuf* @pkg_check_depcon.depprobwhy)
!593 = distinct !DISubprogram(name: "pkg_check_depcon", scope: !298, file: !298, line: 201, type: !594, isLocal: true, isDefinition: true, scopeLine: 202, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !304)
!594 = !DISubroutineType(types: !595)
!595 = !{null, !384, !301}
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varbuf", file: !597, line: 55, size: 192, align: 64, elements: !598)
!597 = !DIFile(filename: "../lib/dpkg/varbuf.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!598 = !{!599, !602, !603}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !596, file: !597, line: 56, baseType: !600, size: 64, align: 64)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !601, line: 216, baseType: !352)
!601 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!602 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !596, file: !597, line: 56, baseType: !600, size: 64, align: 64, offset: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !596, file: !597, line: 57, baseType: !323, size: 64, align: 64, offset: 128)
!604 = distinct !DIGlobalVariable(name: "empty_ondisk_id", scope: !605, file: !298, line: 611, type: !563, isLocal: true, isDefinition: true, variable: %struct.file_ondisk_id* @pkg_remove_old_files.empty_ondisk_id)
!605 = distinct !DISubprogram(name: "pkg_remove_old_files", scope: !298, file: !298, line: 558, type: !606, isLocal: true, isDefinition: true, scopeLine: 561, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !304)
!606 = !DISubroutineType(types: !607)
!607 = !{null, !384, !573, !573}
!608 = distinct !DIGlobalVariable(name: "match_head", scope: !0, file: !298, line: 438, type: !609, isLocal: true, isDefinition: true, variable: %struct.match_node** @match_head)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64, align: 64)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "match_node", file: !611, line: 24, size: 192, align: 64, elements: !612)
!611 = !DIFile(filename: "file-match.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!612 = !{!613, !614, !615}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !610, file: !611, line: 25, baseType: !609, size: 64, align: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "filetype", scope: !610, file: !611, line: 26, baseType: !323, size: 64, align: 64, offset: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !610, file: !611, line: 27, baseType: !323, size: 64, align: 64, offset: 128)
!616 = !{i32 2, !"Dwarf Version", i32 4}
!617 = !{i32 2, !"Debug Info Version", i32 3}
!618 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!619 = distinct !DISubprogram(name: "enqueue_conflictor", scope: !298, file: !298, line: 424, type: !620, isLocal: false, isDefinition: true, scopeLine: 425, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !304)
!620 = !DISubroutineType(types: !621)
!621 = !{null, !384}
!622 = !DILocalVariable(name: "pkg", arg: 1, scope: !619, file: !298, line: 424, type: !384)
!623 = !DIExpression()
!624 = !DILocation(line: 424, column: 36, scope: !619)
!625 = !DILocation(line: 426, column: 32, scope: !619)
!626 = !DILocation(line: 426, column: 3, scope: !619)
!627 = !DILocation(line: 427, column: 1, scope: !619)
!628 = !DILocalVariable(name: "filename", arg: 1, scope: !297, file: !298, line: 1062, type: !301)
!629 = !DILocation(line: 1062, column: 34, scope: !297)
!630 = !DILocalVariable(name: "tar", scope: !297, file: !298, line: 1080, type: !315)
!631 = !DILocation(line: 1080, column: 22, scope: !297)
!632 = !DILocalVariable(name: "err", scope: !297, file: !298, line: 1081, type: !318)
!633 = !DILocation(line: 1081, column: 21, scope: !297)
!634 = !DILocalVariable(name: "parsedb_flags", scope: !297, file: !298, line: 1082, type: !139)
!635 = !DILocation(line: 1082, column: 21, scope: !297)
!636 = !DILocalVariable(name: "rc", scope: !297, file: !298, line: 1083, type: !313)
!637 = !DILocation(line: 1083, column: 7, scope: !297)
!638 = !DILocalVariable(name: "pid", scope: !297, file: !298, line: 1084, type: !639)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !342, line: 98, baseType: !640)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !344, line: 133, baseType: !313)
!641 = !DILocation(line: 1084, column: 9, scope: !297)
!642 = !DILocalVariable(name: "pkg", scope: !297, file: !298, line: 1085, type: !384)
!643 = !DILocation(line: 1085, column: 19, scope: !297)
!644 = !DILocalVariable(name: "otherpkg", scope: !297, file: !298, line: 1085, type: !384)
!645 = !DILocation(line: 1085, column: 25, scope: !297)
!646 = !DILocalVariable(name: "conflictor_iter", scope: !297, file: !298, line: 1086, type: !483)
!647 = !DILocation(line: 1086, column: 20, scope: !297)
!648 = !DILocalVariable(name: "cidir", scope: !297, file: !298, line: 1087, type: !323)
!649 = !DILocation(line: 1087, column: 9, scope: !297)
!650 = !DILocalVariable(name: "cidirrest", scope: !297, file: !298, line: 1088, type: !323)
!651 = !DILocation(line: 1088, column: 9, scope: !297)
!652 = !DILocalVariable(name: "psize", scope: !297, file: !298, line: 1089, type: !323)
!653 = !DILocation(line: 1089, column: 9, scope: !297)
!654 = !DILocalVariable(name: "pfilename", scope: !297, file: !298, line: 1090, type: !301)
!655 = !DILocation(line: 1090, column: 15, scope: !297)
!656 = !DILocalVariable(name: "newconffiles", scope: !297, file: !298, line: 1091, type: !574)
!657 = !DILocation(line: 1091, column: 30, scope: !297)
!658 = !DILocalVariable(name: "newfiles_queue", scope: !297, file: !298, line: 1091, type: !574)
!659 = !DILocation(line: 1091, column: 44, scope: !297)
!660 = !DILocalVariable(name: "stab", scope: !297, file: !298, line: 1092, type: !661)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !662, line: 46, size: 1152, align: 64, elements: !663)
!662 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!663 = !{!664, !665, !666, !668, !669, !670, !671, !672, !673, !674, !676, !678, !684, !685, !686}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !661, file: !662, line: 48, baseType: !351, size: 64, align: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !661, file: !662, line: 53, baseType: !568, size: 64, align: 64, offset: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !661, file: !662, line: 61, baseType: !667, size: 64, align: 64, offset: 128)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !344, line: 130, baseType: !352)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !661, file: !662, line: 62, baseType: !366, size: 32, align: 32, offset: 192)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !661, file: !662, line: 64, baseType: !359, size: 32, align: 32, offset: 224)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !661, file: !662, line: 65, baseType: !363, size: 32, align: 32, offset: 256)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !661, file: !662, line: 67, baseType: !313, size: 32, align: 32, offset: 288)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !661, file: !662, line: 69, baseType: !351, size: 64, align: 64, offset: 320)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !661, file: !662, line: 74, baseType: !343, size: 64, align: 64, offset: 384)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !661, file: !662, line: 78, baseType: !675, size: 64, align: 64, offset: 448)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !344, line: 153, baseType: !294)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !661, file: !662, line: 80, baseType: !677, size: 64, align: 64, offset: 512)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !344, line: 158, baseType: !294)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !661, file: !662, line: 91, baseType: !679, size: 128, align: 64, offset: 576)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !347, line: 120, size: 128, align: 64, elements: !680)
!680 = !{!681, !682}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !679, file: !347, line: 122, baseType: !348, size: 64, align: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !679, file: !347, line: 123, baseType: !683, size: 64, align: 64, offset: 64)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !344, line: 175, baseType: !294)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !661, file: !662, line: 92, baseType: !679, size: 128, align: 64, offset: 704)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !661, file: !662, line: 93, baseType: !679, size: 128, align: 64, offset: 832)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !661, file: !662, line: 106, baseType: !687, size: 192, align: 64, offset: 960)
!687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !683, size: 192, align: 64, elements: !688)
!688 = !{!689}
!689 = !DISubrange(count: 3)
!690 = !DILocation(line: 1092, column: 15, scope: !297)
!691 = !DILocation(line: 1094, column: 48, scope: !297)
!692 = !DILocation(line: 1094, column: 21, scope: !297)
!693 = !DILocation(line: 1096, column: 34, scope: !297)
!694 = !DILocation(line: 1096, column: 15, scope: !297)
!695 = !DILocation(line: 1096, column: 13, scope: !297)
!696 = !DILocation(line: 1098, column: 12, scope: !697)
!697 = distinct !DILexicalBlock(scope: !297, file: !298, line: 1098, column: 7)
!698 = !DILocation(line: 1098, column: 7, scope: !697)
!699 = !DILocation(line: 1098, column: 7, scope: !297)
!700 = !DILocation(line: 1099, column: 13, scope: !697)
!701 = !DILocation(line: 1099, column: 52, scope: !697)
!702 = !DILocation(line: 1099, column: 5, scope: !703)
!703 = !DILexicalBlockFile(scope: !697, file: !298, discriminator: 1)
!704 = !DILocation(line: 1099, column: 5, scope: !697)
!705 = !DILocation(line: 1102, column: 8, scope: !706)
!706 = distinct !DILexicalBlock(scope: !297, file: !298, line: 1102, column: 7)
!707 = !DILocation(line: 1102, column: 7, scope: !297)
!708 = !DILocation(line: 1103, column: 10, scope: !709)
!709 = distinct !DILexicalBlock(scope: !710, file: !298, line: 1103, column: 9)
!710 = distinct !DILexicalBlock(scope: !706, file: !298, line: 1102, column: 17)
!711 = !DILocation(line: 1103, column: 9, scope: !710)
!712 = !DILocation(line: 1104, column: 7, scope: !709)
!713 = !DILocation(line: 1105, column: 3, scope: !710)
!714 = !DILocation(line: 1108, column: 8, scope: !715)
!715 = distinct !DILexicalBlock(scope: !297, file: !298, line: 1108, column: 7)
!716 = !DILocation(line: 1108, column: 7, scope: !297)
!717 = !DILocation(line: 1109, column: 16, scope: !715)
!718 = !DILocation(line: 1109, column: 5, scope: !715)
!719 = !DILocation(line: 1112, column: 27, scope: !297)
!720 = !DILocation(line: 1112, column: 11, scope: !297)
!721 = !DILocation(line: 1112, column: 9, scope: !297)
!722 = !DILocation(line: 1113, column: 15, scope: !297)
!723 = !DILocation(line: 1113, column: 30, scope: !297)
!724 = !DILocation(line: 1113, column: 23, scope: !297)
!725 = !DILocation(line: 1113, column: 21, scope: !297)
!726 = !DILocation(line: 1113, column: 13, scope: !297)
!727 = !DILocation(line: 1114, column: 41, scope: !297)
!728 = !DILocation(line: 1114, column: 56, scope: !297)
!729 = !DILocation(line: 1114, column: 3, scope: !297)
!730 = !DILocation(line: 1116, column: 9, scope: !297)
!731 = !DILocation(line: 1116, column: 7, scope: !297)
!732 = !DILocation(line: 1117, column: 7, scope: !733)
!733 = distinct !DILexicalBlock(scope: !297, file: !298, line: 1117, column: 7)
!734 = !DILocation(line: 1117, column: 11, scope: !733)
!735 = !DILocation(line: 1117, column: 7, scope: !297)
!736 = !DILocation(line: 1118, column: 5, scope: !737)
!737 = distinct !DILexicalBlock(scope: !733, file: !298, line: 1117, column: 17)
!738 = !DILocation(line: 1118, column: 19, scope: !737)
!739 = !DILocation(line: 1119, column: 49, scope: !737)
!740 = !DILocation(line: 1119, column: 59, scope: !737)
!741 = !DILocation(line: 1119, column: 5, scope: !737)
!742 = !DILocation(line: 1120, column: 13, scope: !737)
!743 = !DILocation(line: 1121, column: 13, scope: !737)
!744 = !DILocation(line: 1120, column: 5, scope: !745)
!745 = !DILexicalBlockFile(scope: !737, file: !298, discriminator: 1)
!746 = !DILocation(line: 1120, column: 5, scope: !737)
!747 = !DILocation(line: 1123, column: 16, scope: !297)
!748 = !DILocation(line: 1123, column: 3, scope: !297)
!749 = !DILocation(line: 1130, column: 21, scope: !297)
!750 = !DILocation(line: 1130, column: 3, scope: !297)
!751 = !DILocation(line: 1132, column: 10, scope: !297)
!752 = !DILocation(line: 1132, column: 3, scope: !297)
!753 = !DILocation(line: 1134, column: 7, scope: !754)
!754 = distinct !DILexicalBlock(scope: !297, file: !298, line: 1134, column: 7)
!755 = !DILocation(line: 1134, column: 18, scope: !754)
!756 = !DILocation(line: 1134, column: 26, scope: !754)
!757 = !DILocation(line: 1134, column: 7, scope: !297)
!758 = !DILocation(line: 1135, column: 19, scope: !754)
!759 = !DILocation(line: 1135, column: 5, scope: !754)
!760 = !DILocation(line: 1137, column: 19, scope: !754)
!761 = !DILocation(line: 1138, column: 17, scope: !297)
!762 = !DILocation(line: 1139, column: 7, scope: !763)
!763 = distinct !DILexicalBlock(scope: !297, file: !298, line: 1139, column: 7)
!764 = !DILocation(line: 1139, column: 7, scope: !297)
!765 = !DILocation(line: 1140, column: 19, scope: !763)
!766 = !DILocation(line: 1140, column: 5, scope: !763)
!767 = !DILocation(line: 1142, column: 11, scope: !297)
!768 = !DILocation(line: 1142, column: 18, scope: !297)
!769 = !DILocation(line: 1142, column: 3, scope: !297)
!770 = !DILocation(line: 1144, column: 8, scope: !771)
!771 = distinct !DILexicalBlock(scope: !297, file: !298, line: 1144, column: 7)
!772 = !DILocation(line: 1144, column: 13, scope: !771)
!773 = !DILocation(line: 1144, column: 7, scope: !297)
!774 = !DILocation(line: 1145, column: 21, scope: !775)
!775 = distinct !DILexicalBlock(scope: !771, file: !298, line: 1144, column: 23)
!776 = !DILocation(line: 1145, column: 5, scope: !775)
!777 = !DILocation(line: 1145, column: 10, scope: !775)
!778 = !DILocation(line: 1145, column: 19, scope: !775)
!779 = !DILocation(line: 1146, column: 5, scope: !775)
!780 = !DILocation(line: 1146, column: 10, scope: !775)
!781 = !DILocation(line: 1146, column: 20, scope: !775)
!782 = !DILocation(line: 1146, column: 25, scope: !775)
!783 = !DILocation(line: 1147, column: 5, scope: !775)
!784 = !DILocation(line: 1147, column: 10, scope: !775)
!785 = !DILocation(line: 1147, column: 20, scope: !775)
!786 = !DILocation(line: 1147, column: 25, scope: !775)
!787 = !DILocation(line: 1148, column: 5, scope: !775)
!788 = !DILocation(line: 1148, column: 10, scope: !775)
!789 = !DILocation(line: 1148, column: 20, scope: !775)
!790 = !DILocation(line: 1148, column: 30, scope: !775)
!791 = !DILocation(line: 1149, column: 5, scope: !775)
!792 = !DILocation(line: 1149, column: 10, scope: !775)
!793 = !DILocation(line: 1149, column: 20, scope: !775)
!794 = !DILocation(line: 1149, column: 27, scope: !775)
!795 = !DILocation(line: 1150, column: 3, scope: !775)
!796 = !DILocation(line: 1153, column: 11, scope: !297)
!797 = !DILocation(line: 1153, column: 9, scope: !297)
!798 = !DILocation(line: 1154, column: 11, scope: !297)
!799 = !DILocation(line: 1154, column: 40, scope: !297)
!800 = !DILocation(line: 1154, column: 3, scope: !297)
!801 = !DILocation(line: 1155, column: 25, scope: !297)
!802 = !DILocation(line: 1155, column: 3, scope: !297)
!803 = !DILocation(line: 1155, column: 8, scope: !297)
!804 = !DILocation(line: 1155, column: 18, scope: !297)
!805 = !DILocation(line: 1155, column: 23, scope: !297)
!806 = !DILocation(line: 1157, column: 7, scope: !807)
!807 = distinct !DILexicalBlock(scope: !297, file: !298, line: 1157, column: 7)
!808 = !DILocation(line: 1157, column: 18, scope: !807)
!809 = !DILocation(line: 1157, column: 26, scope: !807)
!810 = !DILocation(line: 1157, column: 7, scope: !297)
!811 = !DILocation(line: 1158, column: 12, scope: !812)
!812 = distinct !DILexicalBlock(scope: !807, file: !298, line: 1157, column: 40)
!813 = !DILocation(line: 1159, column: 24, scope: !812)
!814 = !DILocation(line: 1159, column: 30, scope: !812)
!815 = !DILocation(line: 1159, column: 35, scope: !812)
!816 = !DILocation(line: 1159, column: 12, scope: !812)
!817 = !DILocation(line: 1159, column: 62, scope: !812)
!818 = !DILocation(line: 1158, column: 5, scope: !819)
!819 = !DILexicalBlockFile(scope: !812, file: !298, discriminator: 1)
!820 = !DILocation(line: 1160, column: 5, scope: !812)
!821 = !DILocation(line: 1161, column: 5, scope: !812)
!822 = !DILocation(line: 1164, column: 7, scope: !823)
!823 = distinct !DILexicalBlock(scope: !297, file: !298, line: 1164, column: 7)
!824 = !DILocation(line: 1164, column: 12, scope: !823)
!825 = !DILocation(line: 1164, column: 22, scope: !823)
!826 = !DILocation(line: 1164, column: 28, scope: !823)
!827 = !DILocation(line: 1164, column: 33, scope: !823)
!828 = !DILocation(line: 1164, column: 50, scope: !823)
!829 = !DILocation(line: 1165, column: 7, scope: !823)
!830 = !DILocation(line: 1165, column: 12, scope: !823)
!831 = !DILocation(line: 1165, column: 22, scope: !823)
!832 = !DILocation(line: 1165, column: 28, scope: !823)
!833 = !DILocation(line: 1165, column: 33, scope: !823)
!834 = !DILocation(line: 1165, column: 53, scope: !823)
!835 = !DILocation(line: 1166, column: 7, scope: !823)
!836 = !DILocation(line: 1166, column: 12, scope: !823)
!837 = !DILocation(line: 1166, column: 22, scope: !823)
!838 = !DILocation(line: 1166, column: 28, scope: !823)
!839 = !DILocation(line: 1166, column: 33, scope: !823)
!840 = !DILocation(line: 1164, column: 7, scope: !841)
!841 = !DILexicalBlockFile(scope: !297, file: !298, discriminator: 1)
!842 = !DILocation(line: 1168, column: 17, scope: !823)
!843 = !DILocation(line: 1169, column: 17, scope: !823)
!844 = !DILocation(line: 1169, column: 22, scope: !823)
!845 = !DILocation(line: 1169, column: 32, scope: !823)
!846 = !DILocation(line: 1169, column: 38, scope: !823)
!847 = !DILocation(line: 1170, column: 17, scope: !823)
!848 = !DILocation(line: 1170, column: 50, scope: !823)
!849 = !DILocation(line: 1167, column: 5, scope: !823)
!850 = !DILocation(line: 1172, column: 3, scope: !297)
!851 = !DILocation(line: 1173, column: 3, scope: !297)
!852 = !DILocation(line: 1175, column: 21, scope: !853)
!853 = distinct !DILexicalBlock(scope: !297, file: !298, line: 1175, column: 7)
!854 = !DILocation(line: 1175, column: 7, scope: !853)
!855 = !DILocation(line: 1175, column: 7, scope: !297)
!856 = !DILocation(line: 1176, column: 18, scope: !857)
!857 = distinct !DILexicalBlock(scope: !853, file: !298, line: 1175, column: 27)
!858 = !DILocation(line: 1176, column: 5, scope: !857)
!859 = !DILocation(line: 1177, column: 3, scope: !857)
!860 = !DILocation(line: 1178, column: 5, scope: !861)
!861 = distinct !DILexicalBlock(scope: !853, file: !298, line: 1177, column: 10)
!862 = !DILocation(line: 1179, column: 5, scope: !861)
!863 = !DILocation(line: 1183, column: 20, scope: !864)
!864 = distinct !DILexicalBlock(scope: !297, file: !298, line: 1183, column: 3)
!865 = !DILocation(line: 1183, column: 25, scope: !864)
!866 = !DILocation(line: 1183, column: 30, scope: !864)
!867 = !DILocation(line: 1183, column: 17, scope: !864)
!868 = !DILocation(line: 1183, column: 8, scope: !864)
!869 = !DILocation(line: 1183, column: 35, scope: !870)
!870 = !DILexicalBlockFile(scope: !871, file: !298, discriminator: 1)
!871 = distinct !DILexicalBlock(scope: !864, file: !298, line: 1183, column: 3)
!872 = !DILocation(line: 1183, column: 3, scope: !870)
!873 = !DILocation(line: 1184, column: 9, scope: !874)
!874 = distinct !DILexicalBlock(scope: !875, file: !298, line: 1184, column: 9)
!875 = distinct !DILexicalBlock(scope: !871, file: !298, line: 1183, column: 77)
!876 = !DILocation(line: 1184, column: 21, scope: !874)
!877 = !DILocation(line: 1184, column: 18, scope: !874)
!878 = !DILocation(line: 1184, column: 9, scope: !875)
!879 = !DILocation(line: 1185, column: 7, scope: !874)
!880 = !DILocation(line: 1186, column: 9, scope: !881)
!881 = distinct !DILexicalBlock(scope: !875, file: !298, line: 1186, column: 9)
!882 = !DILocation(line: 1186, column: 19, scope: !881)
!883 = !DILocation(line: 1186, column: 26, scope: !881)
!884 = !DILocation(line: 1186, column: 9, scope: !875)
!885 = !DILocation(line: 1187, column: 7, scope: !881)
!886 = !DILocation(line: 1189, column: 31, scope: !887)
!887 = distinct !DILexicalBlock(scope: !875, file: !298, line: 1189, column: 9)
!888 = !DILocation(line: 1189, column: 36, scope: !887)
!889 = !DILocation(line: 1189, column: 46, scope: !887)
!890 = !DILocation(line: 1190, column: 31, scope: !887)
!891 = !DILocation(line: 1190, column: 41, scope: !887)
!892 = !DILocation(line: 1190, column: 51, scope: !887)
!893 = !DILocation(line: 1189, column: 9, scope: !887)
!894 = !DILocation(line: 1189, column: 9, scope: !875)
!895 = !DILocation(line: 1191, column: 27, scope: !887)
!896 = !DILocation(line: 1191, column: 7, scope: !887)
!897 = !DILocation(line: 1192, column: 3, scope: !875)
!898 = !DILocation(line: 1183, column: 56, scope: !899)
!899 = !DILexicalBlockFile(scope: !871, file: !298, discriminator: 2)
!900 = !DILocation(line: 1183, column: 66, scope: !899)
!901 = !DILocation(line: 1183, column: 54, scope: !899)
!902 = !DILocation(line: 1183, column: 3, scope: !899)
!903 = distinct !{!903, !904}
!904 = !DILocation(line: 1183, column: 3, scope: !297)
!905 = !DILocation(line: 1194, column: 20, scope: !297)
!906 = !DILocation(line: 1194, column: 25, scope: !297)
!907 = !DILocation(line: 1194, column: 3, scope: !297)
!908 = !DILocation(line: 1196, column: 3, scope: !297)
!909 = !DILocation(line: 1197, column: 3, scope: !297)
!910 = !DILocation(line: 1198, column: 3, scope: !297)
!911 = !DILocation(line: 1200, column: 10, scope: !297)
!912 = !DILocation(line: 1200, column: 51, scope: !297)
!913 = !DILocation(line: 1200, column: 3, scope: !841)
!914 = !DILocation(line: 1202, column: 7, scope: !915)
!915 = distinct !DILexicalBlock(scope: !297, file: !298, line: 1202, column: 7)
!916 = !DILocation(line: 1202, column: 12, scope: !915)
!917 = !DILocation(line: 1202, column: 19, scope: !915)
!918 = !DILocation(line: 1202, column: 44, scope: !915)
!919 = !DILocation(line: 1203, column: 7, scope: !915)
!920 = !DILocation(line: 1203, column: 12, scope: !915)
!921 = !DILocation(line: 1203, column: 19, scope: !915)
!922 = !DILocation(line: 1202, column: 7, scope: !841)
!923 = !DILocation(line: 1204, column: 27, scope: !924)
!924 = distinct !DILexicalBlock(scope: !915, file: !298, line: 1203, column: 44)
!925 = !DILocation(line: 1204, column: 33, scope: !924)
!926 = !DILocation(line: 1204, column: 38, scope: !924)
!927 = !DILocation(line: 1204, column: 5, scope: !924)
!928 = !DILocation(line: 1205, column: 3, scope: !924)
!929 = !DILocation(line: 1206, column: 27, scope: !930)
!930 = distinct !DILexicalBlock(scope: !915, file: !298, line: 1205, column: 10)
!931 = !DILocation(line: 1206, column: 33, scope: !930)
!932 = !DILocation(line: 1206, column: 38, scope: !930)
!933 = !DILocation(line: 1206, column: 5, scope: !930)
!934 = !DILocation(line: 1209, column: 7, scope: !935)
!935 = distinct !DILexicalBlock(scope: !297, file: !298, line: 1209, column: 7)
!936 = !DILocation(line: 1209, column: 7, scope: !297)
!937 = !DILocation(line: 1210, column: 5, scope: !938)
!938 = distinct !DILexicalBlock(scope: !935, file: !298, line: 1209, column: 16)
!939 = !DILocation(line: 1211, column: 5, scope: !938)
!940 = !DILocation(line: 1218, column: 35, scope: !297)
!941 = !DILocation(line: 1218, column: 3, scope: !297)
!942 = !DILocation(line: 1219, column: 10, scope: !297)
!943 = !DILocation(line: 1219, column: 3, scope: !297)
!944 = !DILocation(line: 1220, column: 17, scope: !297)
!945 = !DILocation(line: 1220, column: 62, scope: !297)
!946 = !DILocation(line: 1220, column: 68, scope: !297)
!947 = !DILocation(line: 1220, column: 73, scope: !297)
!948 = !DILocation(line: 1220, column: 3, scope: !297)
!949 = !DILocation(line: 1223, column: 16, scope: !297)
!950 = !DILocation(line: 1223, column: 21, scope: !297)
!951 = !DILocation(line: 1224, column: 37, scope: !297)
!952 = !DILocation(line: 1224, column: 16, scope: !297)
!953 = !DILocation(line: 1224, column: 21, scope: !297)
!954 = !DILocation(line: 1225, column: 3, scope: !297)
!955 = !DILocation(line: 1226, column: 10, scope: !297)
!956 = !DILocation(line: 1226, column: 3, scope: !297)
!957 = !DILocation(line: 1227, column: 23, scope: !297)
!958 = !DILocation(line: 1227, column: 28, scope: !297)
!959 = !DILocation(line: 1227, column: 3, scope: !297)
!960 = !DILocation(line: 1231, column: 26, scope: !297)
!961 = !DILocation(line: 1231, column: 3, scope: !297)
!962 = !DILocation(line: 1232, column: 38, scope: !963)
!963 = distinct !DILexicalBlock(scope: !297, file: !298, line: 1232, column: 3)
!964 = !DILocation(line: 1232, column: 24, scope: !963)
!965 = !DILocation(line: 1232, column: 8, scope: !963)
!966 = !DILocation(line: 1233, column: 8, scope: !967)
!967 = distinct !DILexicalBlock(scope: !963, file: !298, line: 1232, column: 3)
!968 = !DILocation(line: 1232, column: 3, scope: !969)
!969 = !DILexicalBlockFile(scope: !963, file: !298, discriminator: 1)
!970 = !DILocation(line: 1235, column: 28, scope: !967)
!971 = !DILocation(line: 1235, column: 45, scope: !967)
!972 = !DILocation(line: 1235, column: 5, scope: !967)
!973 = !DILocation(line: 1234, column: 26, scope: !967)
!974 = !DILocation(line: 1234, column: 43, scope: !967)
!975 = !DILocation(line: 1234, column: 24, scope: !967)
!976 = !DILocation(line: 1232, column: 3, scope: !977)
!977 = !DILexicalBlockFile(scope: !967, file: !298, discriminator: 2)
!978 = distinct !{!978, !979}
!979 = !DILocation(line: 1232, column: 3, scope: !297)
!980 = !DILocation(line: 1237, column: 21, scope: !297)
!981 = !DILocation(line: 1237, column: 26, scope: !297)
!982 = !DILocation(line: 1237, column: 19, scope: !297)
!983 = !DILocation(line: 1239, column: 7, scope: !984)
!984 = distinct !DILexicalBlock(scope: !297, file: !298, line: 1239, column: 7)
!985 = !DILocation(line: 1239, column: 24, scope: !984)
!986 = !DILocation(line: 1239, column: 7, scope: !297)
!987 = !DILocation(line: 1240, column: 66, scope: !984)
!988 = !DILocation(line: 1240, column: 57, scope: !984)
!989 = !DILocation(line: 1240, column: 85, scope: !984)
!990 = !DILocation(line: 1240, column: 5, scope: !991)
!991 = !DILexicalBlockFile(scope: !984, file: !298, discriminator: 1)
!992 = !DILocation(line: 1240, column: 5, scope: !984)
!993 = !DILocation(line: 1244, column: 23, scope: !297)
!994 = !DILocation(line: 1244, column: 9, scope: !297)
!995 = !DILocation(line: 1243, column: 3, scope: !297)
!996 = !DILocation(line: 1246, column: 7, scope: !997)
!997 = distinct !DILexicalBlock(scope: !297, file: !298, line: 1246, column: 7)
!998 = !DILocation(line: 1246, column: 24, scope: !997)
!999 = !DILocation(line: 1246, column: 51, scope: !997)
!1000 = !DILocation(line: 1247, column: 7, scope: !997)
!1001 = !DILocation(line: 1247, column: 24, scope: !997)
!1002 = !DILocation(line: 1247, column: 52, scope: !997)
!1003 = !DILocation(line: 1248, column: 7, scope: !997)
!1004 = !DILocation(line: 1248, column: 24, scope: !997)
!1005 = !DILocation(line: 1248, column: 52, scope: !997)
!1006 = !DILocation(line: 1249, column: 7, scope: !997)
!1007 = !DILocation(line: 1249, column: 24, scope: !997)
!1008 = !DILocation(line: 1246, column: 7, scope: !841)
!1009 = !DILocation(line: 1250, column: 20, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !997, file: !298, line: 1249, column: 47)
!1011 = !DILocation(line: 1250, column: 5, scope: !1010)
!1012 = !DILocation(line: 1251, column: 20, scope: !1010)
!1013 = !DILocation(line: 1251, column: 5, scope: !1010)
!1014 = !DILocation(line: 1252, column: 20, scope: !1010)
!1015 = !DILocation(line: 1252, column: 5, scope: !1010)
!1016 = !DILocation(line: 1253, column: 66, scope: !1010)
!1017 = !DILocation(line: 1253, column: 58, scope: !1010)
!1018 = !DILocation(line: 1253, column: 5, scope: !1010)
!1019 = !DILocation(line: 1254, column: 31, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1010, file: !298, line: 1254, column: 9)
!1021 = !DILocation(line: 1254, column: 36, scope: !1020)
!1022 = !DILocation(line: 1254, column: 46, scope: !1020)
!1023 = !DILocation(line: 1255, column: 31, scope: !1020)
!1024 = !DILocation(line: 1255, column: 36, scope: !1020)
!1025 = !DILocation(line: 1255, column: 46, scope: !1020)
!1026 = !DILocation(line: 1254, column: 9, scope: !1020)
!1027 = !DILocation(line: 1255, column: 55, scope: !1020)
!1028 = !DILocation(line: 1254, column: 9, scope: !1010)
!1029 = !DILocation(line: 1257, column: 28, scope: !1020)
!1030 = !DILocation(line: 1257, column: 57, scope: !1020)
!1031 = !DILocation(line: 1257, column: 64, scope: !1020)
!1032 = !DILocation(line: 1257, column: 7, scope: !1020)
!1033 = !DILocation(line: 1260, column: 29, scope: !1020)
!1034 = !DILocation(line: 1262, column: 46, scope: !1020)
!1035 = !DILocation(line: 1262, column: 51, scope: !1020)
!1036 = !DILocation(line: 1262, column: 61, scope: !1020)
!1037 = !DILocation(line: 1262, column: 29, scope: !1020)
!1038 = !DILocation(line: 1260, column: 7, scope: !1020)
!1039 = !DILocation(line: 1265, column: 20, scope: !1010)
!1040 = !DILocation(line: 1265, column: 5, scope: !1010)
!1041 = !DILocation(line: 1266, column: 22, scope: !1010)
!1042 = !DILocation(line: 1267, column: 20, scope: !1010)
!1043 = !DILocation(line: 1267, column: 5, scope: !1010)
!1044 = !DILocation(line: 1268, column: 3, scope: !1010)
!1045 = !DILocation(line: 1270, column: 26, scope: !297)
!1046 = !DILocation(line: 1270, column: 3, scope: !297)
!1047 = !DILocation(line: 1272, column: 38, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !297, file: !298, line: 1272, column: 3)
!1049 = !DILocation(line: 1272, column: 24, scope: !1048)
!1050 = !DILocation(line: 1272, column: 8, scope: !1048)
!1051 = !DILocation(line: 1273, column: 8, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1048, file: !298, line: 1272, column: 3)
!1053 = !DILocation(line: 1272, column: 3, scope: !1054)
!1054 = !DILexicalBlockFile(scope: !1048, file: !298, discriminator: 1)
!1055 = !DILocalVariable(name: "conflictor", scope: !1056, file: !298, line: 1275, type: !384)
!1056 = distinct !DILexicalBlock(scope: !1052, file: !298, line: 1274, column: 49)
!1057 = !DILocation(line: 1275, column: 21, scope: !1056)
!1058 = !DILocation(line: 1275, column: 34, scope: !1056)
!1059 = !DILocation(line: 1275, column: 51, scope: !1056)
!1060 = !DILocation(line: 1277, column: 11, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1056, file: !298, line: 1277, column: 9)
!1062 = !DILocation(line: 1277, column: 23, scope: !1061)
!1063 = !DILocation(line: 1277, column: 30, scope: !1061)
!1064 = !DILocation(line: 1277, column: 57, scope: !1061)
!1065 = !DILocation(line: 1278, column: 11, scope: !1061)
!1066 = !DILocation(line: 1278, column: 23, scope: !1061)
!1067 = !DILocation(line: 1278, column: 30, scope: !1061)
!1068 = !DILocation(line: 1278, column: 58, scope: !1061)
!1069 = !DILocation(line: 1279, column: 11, scope: !1061)
!1070 = !DILocation(line: 1279, column: 23, scope: !1061)
!1071 = !DILocation(line: 1279, column: 30, scope: !1061)
!1072 = !DILocation(line: 1279, column: 58, scope: !1061)
!1073 = !DILocation(line: 1280, column: 11, scope: !1061)
!1074 = !DILocation(line: 1280, column: 23, scope: !1061)
!1075 = !DILocation(line: 1280, column: 30, scope: !1061)
!1076 = !DILocation(line: 1277, column: 9, scope: !1077)
!1077 = !DILexicalBlockFile(scope: !1056, file: !298, discriminator: 1)
!1078 = !DILocation(line: 1281, column: 7, scope: !1061)
!1079 = !DILocation(line: 1283, column: 37, scope: !1056)
!1080 = !DILocation(line: 1283, column: 5, scope: !1056)
!1081 = !DILocation(line: 1284, column: 20, scope: !1056)
!1082 = !DILocation(line: 1284, column: 5, scope: !1056)
!1083 = !DILocation(line: 1285, column: 20, scope: !1056)
!1084 = !DILocation(line: 1285, column: 5, scope: !1056)
!1085 = !DILocation(line: 1287, column: 21, scope: !1056)
!1086 = !DILocation(line: 1287, column: 33, scope: !1056)
!1087 = !DILocation(line: 1286, column: 5, scope: !1056)
!1088 = !DILocation(line: 1288, column: 27, scope: !1056)
!1089 = !DILocation(line: 1290, column: 39, scope: !1056)
!1090 = !DILocation(line: 1290, column: 45, scope: !1056)
!1091 = !DILocation(line: 1290, column: 50, scope: !1056)
!1092 = !DILocation(line: 1290, column: 27, scope: !1056)
!1093 = !DILocation(line: 1291, column: 44, scope: !1056)
!1094 = !DILocation(line: 1291, column: 49, scope: !1056)
!1095 = !DILocation(line: 1291, column: 59, scope: !1056)
!1096 = !DILocation(line: 1291, column: 27, scope: !1056)
!1097 = !DILocation(line: 1288, column: 5, scope: !1056)
!1098 = !DILocation(line: 1294, column: 20, scope: !1056)
!1099 = !DILocation(line: 1294, column: 5, scope: !1056)
!1100 = !DILocation(line: 1295, column: 20, scope: !1056)
!1101 = !DILocation(line: 1295, column: 5, scope: !1056)
!1102 = !DILocation(line: 1296, column: 3, scope: !1056)
!1103 = !DILocation(line: 1274, column: 26, scope: !1052)
!1104 = !DILocation(line: 1274, column: 43, scope: !1052)
!1105 = !DILocation(line: 1274, column: 24, scope: !1052)
!1106 = !DILocation(line: 1272, column: 3, scope: !1107)
!1107 = !DILexicalBlockFile(scope: !1052, file: !298, discriminator: 2)
!1108 = distinct !{!1108, !1109}
!1109 = !DILocation(line: 1272, column: 3, scope: !297)
!1110 = !DILocation(line: 1298, column: 18, scope: !297)
!1111 = !DILocation(line: 1298, column: 3, scope: !297)
!1112 = !DILocation(line: 1299, column: 7, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !297, file: !298, line: 1299, column: 7)
!1114 = !DILocation(line: 1299, column: 12, scope: !1113)
!1115 = !DILocation(line: 1299, column: 19, scope: !1113)
!1116 = !DILocation(line: 1299, column: 7, scope: !297)
!1117 = !DILocation(line: 1300, column: 5, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1113, file: !298, line: 1299, column: 45)
!1119 = !DILocation(line: 1300, column: 10, scope: !1118)
!1120 = !DILocation(line: 1300, column: 20, scope: !1118)
!1121 = !DILocation(line: 1300, column: 29, scope: !1118)
!1122 = !DILocation(line: 1300, column: 34, scope: !1118)
!1123 = !DILocation(line: 1300, column: 44, scope: !1118)
!1124 = !DILocation(line: 1301, column: 32, scope: !1118)
!1125 = !DILocation(line: 1301, column: 37, scope: !1118)
!1126 = !DILocation(line: 1301, column: 47, scope: !1118)
!1127 = !DILocation(line: 1301, column: 5, scope: !1118)
!1128 = !DILocation(line: 1301, column: 10, scope: !1118)
!1129 = !DILocation(line: 1301, column: 20, scope: !1118)
!1130 = !DILocation(line: 1301, column: 30, scope: !1118)
!1131 = !DILocation(line: 1302, column: 3, scope: !1118)
!1132 = !DILocation(line: 1303, column: 18, scope: !297)
!1133 = !DILocation(line: 1303, column: 3, scope: !297)
!1134 = !DILocation(line: 1304, column: 18, scope: !297)
!1135 = !DILocation(line: 1304, column: 3, scope: !297)
!1136 = !DILocation(line: 1305, column: 7, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !297, file: !298, line: 1305, column: 7)
!1138 = !DILocation(line: 1305, column: 24, scope: !1137)
!1139 = !DILocation(line: 1305, column: 7, scope: !297)
!1140 = !DILocation(line: 1307, column: 27, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1137, file: !298, line: 1305, column: 50)
!1142 = !DILocation(line: 1307, column: 20, scope: !1141)
!1143 = !DILocation(line: 1307, column: 38, scope: !1141)
!1144 = !DILocation(line: 1307, column: 51, scope: !1141)
!1145 = !DILocation(line: 1306, column: 5, scope: !1141)
!1146 = !DILocation(line: 1308, column: 21, scope: !1141)
!1147 = !DILocation(line: 1308, column: 57, scope: !1141)
!1148 = !DILocation(line: 1308, column: 64, scope: !1141)
!1149 = !DILocation(line: 1308, column: 5, scope: !1141)
!1150 = !DILocation(line: 1310, column: 3, scope: !1141)
!1151 = !DILocation(line: 1310, column: 14, scope: !1152)
!1152 = !DILexicalBlockFile(scope: !1153, file: !298, discriminator: 1)
!1153 = distinct !DILexicalBlock(scope: !1137, file: !298, line: 1310, column: 14)
!1154 = !DILocation(line: 1310, column: 31, scope: !1152)
!1155 = !DILocation(line: 1312, column: 27, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1153, file: !298, line: 1310, column: 56)
!1157 = !DILocation(line: 1312, column: 20, scope: !1156)
!1158 = !DILocation(line: 1312, column: 38, scope: !1156)
!1159 = !DILocation(line: 1312, column: 51, scope: !1156)
!1160 = !DILocation(line: 1311, column: 5, scope: !1156)
!1161 = !DILocation(line: 1313, column: 21, scope: !1156)
!1162 = !DILocation(line: 1313, column: 57, scope: !1156)
!1163 = !DILocation(line: 1313, column: 64, scope: !1156)
!1164 = !DILocation(line: 1315, column: 38, scope: !1156)
!1165 = !DILocation(line: 1315, column: 43, scope: !1156)
!1166 = !DILocation(line: 1315, column: 53, scope: !1156)
!1167 = !DILocation(line: 1315, column: 21, scope: !1156)
!1168 = !DILocation(line: 1316, column: 38, scope: !1156)
!1169 = !DILocation(line: 1316, column: 43, scope: !1156)
!1170 = !DILocation(line: 1316, column: 53, scope: !1156)
!1171 = !DILocation(line: 1316, column: 21, scope: !1156)
!1172 = !DILocation(line: 1313, column: 5, scope: !1156)
!1173 = !DILocation(line: 1318, column: 3, scope: !1156)
!1174 = !DILocation(line: 1320, column: 27, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1153, file: !298, line: 1318, column: 10)
!1176 = !DILocation(line: 1320, column: 20, scope: !1175)
!1177 = !DILocation(line: 1320, column: 38, scope: !1175)
!1178 = !DILocation(line: 1320, column: 51, scope: !1175)
!1179 = !DILocation(line: 1319, column: 5, scope: !1175)
!1180 = !DILocation(line: 1321, column: 21, scope: !1175)
!1181 = !DILocation(line: 1321, column: 57, scope: !1175)
!1182 = !DILocation(line: 1321, column: 64, scope: !1175)
!1183 = !DILocation(line: 1323, column: 38, scope: !1175)
!1184 = !DILocation(line: 1323, column: 43, scope: !1175)
!1185 = !DILocation(line: 1323, column: 53, scope: !1175)
!1186 = !DILocation(line: 1323, column: 21, scope: !1175)
!1187 = !DILocation(line: 1324, column: 38, scope: !1175)
!1188 = !DILocation(line: 1324, column: 43, scope: !1175)
!1189 = !DILocation(line: 1324, column: 53, scope: !1175)
!1190 = !DILocation(line: 1324, column: 21, scope: !1175)
!1191 = !DILocation(line: 1321, column: 5, scope: !1175)
!1192 = !DILocation(line: 1328, column: 7, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !297, file: !298, line: 1328, column: 7)
!1194 = !DILocation(line: 1328, column: 24, scope: !1193)
!1195 = !DILocation(line: 1328, column: 49, scope: !1193)
!1196 = !DILocation(line: 1329, column: 7, scope: !1193)
!1197 = !DILocation(line: 1329, column: 24, scope: !1193)
!1198 = !DILocation(line: 1328, column: 7, scope: !841)
!1199 = !DILocation(line: 1330, column: 12, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1193, file: !298, line: 1329, column: 49)
!1201 = !DILocation(line: 1331, column: 24, scope: !1200)
!1202 = !DILocation(line: 1331, column: 30, scope: !1200)
!1203 = !DILocation(line: 1331, column: 35, scope: !1200)
!1204 = !DILocation(line: 1331, column: 12, scope: !1200)
!1205 = !DILocation(line: 1332, column: 29, scope: !1200)
!1206 = !DILocation(line: 1332, column: 34, scope: !1200)
!1207 = !DILocation(line: 1332, column: 44, scope: !1200)
!1208 = !DILocation(line: 1332, column: 12, scope: !1200)
!1209 = !DILocation(line: 1330, column: 5, scope: !1210)
!1210 = !DILexicalBlockFile(scope: !1200, file: !298, discriminator: 1)
!1211 = !DILocation(line: 1333, column: 3, scope: !1200)
!1212 = !DILocation(line: 1334, column: 12, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1193, file: !298, line: 1333, column: 10)
!1214 = !DILocation(line: 1335, column: 24, scope: !1213)
!1215 = !DILocation(line: 1335, column: 30, scope: !1213)
!1216 = !DILocation(line: 1335, column: 35, scope: !1213)
!1217 = !DILocation(line: 1335, column: 12, scope: !1213)
!1218 = !DILocation(line: 1336, column: 29, scope: !1213)
!1219 = !DILocation(line: 1336, column: 34, scope: !1213)
!1220 = !DILocation(line: 1336, column: 44, scope: !1213)
!1221 = !DILocation(line: 1336, column: 12, scope: !1213)
!1222 = !DILocation(line: 1337, column: 29, scope: !1213)
!1223 = !DILocation(line: 1337, column: 34, scope: !1213)
!1224 = !DILocation(line: 1337, column: 44, scope: !1213)
!1225 = !DILocation(line: 1337, column: 12, scope: !1213)
!1226 = !DILocation(line: 1334, column: 5, scope: !1227)
!1227 = !DILexicalBlockFile(scope: !1213, file: !298, discriminator: 1)
!1228 = !DILocation(line: 1415, column: 3, scope: !297)
!1229 = !DILocation(line: 1416, column: 3, scope: !297)
!1230 = !DILocation(line: 1417, column: 9, scope: !297)
!1231 = !DILocation(line: 1417, column: 7, scope: !297)
!1232 = !DILocation(line: 1418, column: 7, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !297, file: !298, line: 1418, column: 7)
!1234 = !DILocation(line: 1418, column: 11, scope: !1233)
!1235 = !DILocation(line: 1418, column: 7, scope: !297)
!1236 = !DILocation(line: 1419, column: 12, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1233, file: !298, line: 1418, column: 17)
!1238 = !DILocation(line: 1419, column: 5, scope: !1237)
!1239 = !DILocation(line: 1419, column: 28, scope: !1237)
!1240 = !DILocation(line: 1419, column: 22, scope: !1241)
!1241 = !DILexicalBlockFile(scope: !1237, file: !298, discriminator: 1)
!1242 = !DILocation(line: 1419, column: 42, scope: !1237)
!1243 = !DILocation(line: 1419, column: 36, scope: !1244)
!1244 = !DILexicalBlockFile(scope: !1237, file: !298, discriminator: 2)
!1245 = !DILocation(line: 1420, column: 54, scope: !1237)
!1246 = !DILocation(line: 1420, column: 5, scope: !1237)
!1247 = !DILocation(line: 1421, column: 13, scope: !1237)
!1248 = !DILocation(line: 1422, column: 13, scope: !1237)
!1249 = !DILocation(line: 1421, column: 5, scope: !1241)
!1250 = !DILocation(line: 1421, column: 5, scope: !1237)
!1251 = !DILocation(line: 1424, column: 9, scope: !297)
!1252 = !DILocation(line: 1424, column: 3, scope: !297)
!1253 = !DILocation(line: 1425, column: 9, scope: !297)
!1254 = !DILocation(line: 1427, column: 18, scope: !297)
!1255 = !DILocation(line: 1427, column: 23, scope: !297)
!1256 = !DILocation(line: 1428, column: 41, scope: !297)
!1257 = !DILocation(line: 1428, column: 18, scope: !297)
!1258 = !DILocation(line: 1428, column: 23, scope: !297)
!1259 = !DILocation(line: 1429, column: 21, scope: !297)
!1260 = !DILocation(line: 1430, column: 3, scope: !297)
!1261 = !DILocation(line: 1431, column: 11, scope: !297)
!1262 = !DILocation(line: 1431, column: 9, scope: !297)
!1263 = !DILocation(line: 1432, column: 19, scope: !297)
!1264 = !DILocation(line: 1432, column: 17, scope: !297)
!1265 = !DILocation(line: 1433, column: 54, scope: !297)
!1266 = !DILocation(line: 1433, column: 31, scope: !297)
!1267 = !DILocation(line: 1433, column: 29, scope: !297)
!1268 = !DILocation(line: 1436, column: 7, scope: !297)
!1269 = !DILocation(line: 1436, column: 32, scope: !297)
!1270 = !DILocation(line: 1436, column: 13, scope: !297)
!1271 = !DILocation(line: 1437, column: 7, scope: !297)
!1272 = !DILocation(line: 1437, column: 11, scope: !297)
!1273 = !DILocation(line: 1438, column: 7, scope: !297)
!1274 = !DILocation(line: 1438, column: 11, scope: !297)
!1275 = !DILocation(line: 1440, column: 8, scope: !297)
!1276 = !DILocation(line: 1440, column: 6, scope: !297)
!1277 = !DILocation(line: 1441, column: 7, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !297, file: !298, line: 1441, column: 7)
!1279 = !DILocation(line: 1441, column: 7, scope: !297)
!1280 = !DILocation(line: 1442, column: 27, scope: !1278)
!1281 = !DILocation(line: 1443, column: 22, scope: !1278)
!1282 = !DILocation(line: 1442, column: 5, scope: !1278)
!1283 = !DILocation(line: 1444, column: 23, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !297, file: !298, line: 1444, column: 7)
!1285 = !DILocation(line: 1444, column: 7, scope: !1284)
!1286 = !DILocation(line: 1444, column: 43, scope: !1284)
!1287 = !DILocation(line: 1444, column: 7, scope: !297)
!1288 = !DILocation(line: 1445, column: 12, scope: !1284)
!1289 = !DILocation(line: 1445, column: 81, scope: !1284)
!1290 = !DILocation(line: 1445, column: 5, scope: !1291)
!1291 = !DILexicalBlockFile(scope: !1284, file: !298, discriminator: 1)
!1292 = !DILocation(line: 1445, column: 5, scope: !1284)
!1293 = !DILocation(line: 1446, column: 9, scope: !297)
!1294 = !DILocation(line: 1446, column: 3, scope: !297)
!1295 = !DILocation(line: 1447, column: 9, scope: !297)
!1296 = !DILocation(line: 1448, column: 16, scope: !297)
!1297 = !DILocation(line: 1448, column: 3, scope: !297)
!1298 = !DILocation(line: 1450, column: 39, scope: !297)
!1299 = !DILocation(line: 1450, column: 45, scope: !297)
!1300 = !DILocation(line: 1450, column: 3, scope: !297)
!1301 = !DILocation(line: 1452, column: 7, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !297, file: !298, line: 1452, column: 7)
!1303 = !DILocation(line: 1452, column: 24, scope: !1302)
!1304 = !DILocation(line: 1452, column: 50, scope: !1302)
!1305 = !DILocation(line: 1453, column: 7, scope: !1302)
!1306 = !DILocation(line: 1453, column: 24, scope: !1302)
!1307 = !DILocation(line: 1452, column: 7, scope: !841)
!1308 = !DILocation(line: 1456, column: 20, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1302, file: !298, line: 1453, column: 46)
!1310 = !DILocation(line: 1456, column: 5, scope: !1309)
!1311 = !DILocation(line: 1457, column: 20, scope: !1309)
!1312 = !DILocation(line: 1457, column: 5, scope: !1309)
!1313 = !DILocation(line: 1458, column: 67, scope: !1309)
!1314 = !DILocation(line: 1458, column: 59, scope: !1309)
!1315 = !DILocation(line: 1458, column: 5, scope: !1309)
!1316 = !DILocation(line: 1459, column: 26, scope: !1309)
!1317 = !DILocation(line: 1459, column: 57, scope: !1309)
!1318 = !DILocation(line: 1459, column: 64, scope: !1309)
!1319 = !DILocation(line: 1459, column: 5, scope: !1309)
!1320 = !DILocation(line: 1461, column: 3, scope: !1309)
!1321 = !DILocation(line: 1477, column: 3, scope: !297)
!1322 = !DILocation(line: 1482, column: 24, scope: !297)
!1323 = !DILocation(line: 1482, column: 3, scope: !297)
!1324 = !DILocation(line: 1486, column: 25, scope: !297)
!1325 = !DILocation(line: 1486, column: 31, scope: !297)
!1326 = !DILocation(line: 1486, column: 36, scope: !297)
!1327 = !DILocation(line: 1486, column: 62, scope: !297)
!1328 = !DILocation(line: 1486, column: 3, scope: !297)
!1329 = !DILocation(line: 1491, column: 10, scope: !297)
!1330 = !DILocation(line: 1491, column: 3, scope: !297)
!1331 = !DILocation(line: 1492, column: 37, scope: !297)
!1332 = !DILocation(line: 1492, column: 43, scope: !297)
!1333 = !DILocation(line: 1492, column: 48, scope: !297)
!1334 = !DILocation(line: 1492, column: 17, scope: !297)
!1335 = !DILocation(line: 1493, column: 49, scope: !297)
!1336 = !DILocation(line: 1493, column: 55, scope: !297)
!1337 = !DILocation(line: 1493, column: 60, scope: !297)
!1338 = !DILocation(line: 1492, column: 3, scope: !841)
!1339 = !DILocation(line: 1494, column: 17, scope: !297)
!1340 = !DILocation(line: 1494, column: 53, scope: !297)
!1341 = !DILocation(line: 1494, column: 59, scope: !297)
!1342 = !DILocation(line: 1494, column: 64, scope: !297)
!1343 = !DILocation(line: 1494, column: 3, scope: !297)
!1344 = !DILocation(line: 1495, column: 3, scope: !297)
!1345 = !DILocation(line: 1502, column: 3, scope: !297)
!1346 = !DILocation(line: 1503, column: 21, scope: !297)
!1347 = !DILocation(line: 1503, column: 26, scope: !297)
!1348 = !DILocation(line: 1503, column: 33, scope: !297)
!1349 = !DILocation(line: 1503, column: 3, scope: !297)
!1350 = !DILocation(line: 1506, column: 25, scope: !297)
!1351 = !DILocation(line: 1506, column: 31, scope: !297)
!1352 = !DILocation(line: 1506, column: 36, scope: !297)
!1353 = !DILocation(line: 1506, column: 62, scope: !297)
!1354 = !DILocation(line: 1506, column: 3, scope: !297)
!1355 = !DILocation(line: 1520, column: 21, scope: !297)
!1356 = !DILocation(line: 1520, column: 3, scope: !297)
!1357 = !DILocation(line: 1527, column: 20, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !297, file: !298, line: 1527, column: 3)
!1359 = !DILocation(line: 1527, column: 25, scope: !1358)
!1360 = !DILocation(line: 1527, column: 30, scope: !1358)
!1361 = !DILocation(line: 1527, column: 17, scope: !1358)
!1362 = !DILocation(line: 1527, column: 8, scope: !1358)
!1363 = !DILocation(line: 1527, column: 35, scope: !1364)
!1364 = !DILexicalBlockFile(scope: !1365, file: !298, discriminator: 1)
!1365 = distinct !DILexicalBlock(scope: !1358, file: !298, line: 1527, column: 3)
!1366 = !DILocation(line: 1527, column: 3, scope: !1364)
!1367 = !DILocation(line: 1528, column: 9, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1369, file: !298, line: 1528, column: 9)
!1369 = distinct !DILexicalBlock(scope: !1365, file: !298, line: 1527, column: 77)
!1370 = !DILocation(line: 1528, column: 21, scope: !1368)
!1371 = !DILocation(line: 1528, column: 18, scope: !1368)
!1372 = !DILocation(line: 1528, column: 9, scope: !1369)
!1373 = !DILocation(line: 1529, column: 7, scope: !1368)
!1374 = !DILocation(line: 1530, column: 9, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1369, file: !298, line: 1530, column: 9)
!1376 = !DILocation(line: 1530, column: 19, scope: !1375)
!1377 = !DILocation(line: 1530, column: 29, scope: !1375)
!1378 = !DILocation(line: 1530, column: 37, scope: !1375)
!1379 = !DILocation(line: 1530, column: 42, scope: !1375)
!1380 = !DILocation(line: 1530, column: 52, scope: !1375)
!1381 = !DILocation(line: 1530, column: 34, scope: !1375)
!1382 = !DILocation(line: 1530, column: 9, scope: !1369)
!1383 = !DILocation(line: 1531, column: 7, scope: !1375)
!1384 = !DILocation(line: 1533, column: 9, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1369, file: !298, line: 1533, column: 9)
!1386 = !DILocation(line: 1533, column: 19, scope: !1385)
!1387 = !DILocation(line: 1533, column: 26, scope: !1385)
!1388 = !DILocation(line: 1533, column: 9, scope: !1369)
!1389 = !DILocation(line: 1534, column: 94, scope: !1385)
!1390 = !DILocation(line: 1534, column: 85, scope: !1385)
!1391 = !DILocation(line: 1534, column: 134, scope: !1385)
!1392 = !DILocation(line: 1534, column: 118, scope: !1393)
!1393 = !DILexicalBlockFile(scope: !1385, file: !298, discriminator: 1)
!1394 = !DILocation(line: 1534, column: 7, scope: !1395)
!1395 = !DILexicalBlockFile(scope: !1385, file: !298, discriminator: 2)
!1396 = !DILocation(line: 1534, column: 7, scope: !1385)
!1397 = !DILocation(line: 1537, column: 15, scope: !1369)
!1398 = !DILocation(line: 1537, column: 5, scope: !1369)
!1399 = !DILocation(line: 1538, column: 3, scope: !1369)
!1400 = !DILocation(line: 1527, column: 56, scope: !1401)
!1401 = !DILexicalBlockFile(scope: !1365, file: !298, discriminator: 2)
!1402 = !DILocation(line: 1527, column: 66, scope: !1401)
!1403 = !DILocation(line: 1527, column: 54, scope: !1401)
!1404 = !DILocation(line: 1527, column: 3, scope: !1401)
!1405 = distinct !{!1405, !1406}
!1406 = !DILocation(line: 1527, column: 3, scope: !297)
!1407 = !DILocation(line: 1549, column: 24, scope: !297)
!1408 = !DILocation(line: 1549, column: 3, scope: !297)
!1409 = !DILocation(line: 1558, column: 32, scope: !297)
!1410 = !DILocation(line: 1558, column: 52, scope: !297)
!1411 = !DILocation(line: 1558, column: 3, scope: !297)
!1412 = !DILocation(line: 1564, column: 18, scope: !297)
!1413 = !DILocation(line: 1564, column: 3, scope: !297)
!1414 = !DILocation(line: 1565, column: 18, scope: !297)
!1415 = !DILocation(line: 1565, column: 3, scope: !297)
!1416 = !DILocation(line: 1576, column: 27, scope: !297)
!1417 = !DILocation(line: 1576, column: 47, scope: !297)
!1418 = !DILocation(line: 1576, column: 3, scope: !297)
!1419 = !DILocation(line: 1580, column: 20, scope: !297)
!1420 = !DILocation(line: 1580, column: 3, scope: !297)
!1421 = !DILocation(line: 1581, column: 18, scope: !297)
!1422 = !DILocation(line: 1581, column: 3, scope: !297)
!1423 = !DILocation(line: 1582, column: 3, scope: !297)
!1424 = !DILocation(line: 1588, column: 3, scope: !297)
!1425 = !DILocation(line: 1588, column: 11, scope: !841)
!1426 = !DILocation(line: 1588, column: 10, scope: !841)
!1427 = !DILocation(line: 1588, column: 3, scope: !841)
!1428 = !DILocalVariable(name: "conflictor", scope: !1429, file: !298, line: 1589, type: !384)
!1429 = distinct !DILexicalBlock(scope: !297, file: !298, line: 1588, column: 45)
!1430 = !DILocation(line: 1589, column: 21, scope: !1429)
!1431 = !DILocation(line: 1589, column: 34, scope: !1429)
!1432 = !DILocation(line: 1593, column: 5, scope: !1429)
!1433 = !DILocation(line: 1594, column: 18, scope: !1429)
!1434 = !DILocation(line: 1594, column: 5, scope: !1429)
!1435 = !DILocation(line: 1588, column: 3, scope: !1436)
!1436 = !DILexicalBlockFile(scope: !297, file: !298, discriminator: 2)
!1437 = distinct !{!1437, !1424}
!1438 = !DILocation(line: 1597, column: 7, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !297, file: !298, line: 1597, column: 7)
!1440 = !DILocation(line: 1597, column: 18, scope: !1439)
!1441 = !DILocation(line: 1597, column: 26, scope: !1439)
!1442 = !DILocation(line: 1597, column: 7, scope: !297)
!1443 = !DILocation(line: 1598, column: 31, scope: !1439)
!1444 = !DILocation(line: 1598, column: 5, scope: !1439)
!1445 = !DILocation(line: 1599, column: 1, scope: !297)
!1446 = distinct !DISubprogram(name: "summarize_filename", scope: !298, file: !298, line: 63, type: !1447, isLocal: true, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !304)
!1447 = !DISubroutineType(types: !1448)
!1448 = !{!301, !301}
!1449 = !DILocalVariable(name: "filename", arg: 1, scope: !1446, file: !298, line: 63, type: !301)
!1450 = !DILocation(line: 63, column: 32, scope: !1446)
!1451 = !DILocalVariable(name: "pfilename", scope: !1446, file: !298, line: 65, type: !301)
!1452 = !DILocation(line: 65, column: 15, scope: !1446)
!1453 = !DILocalVariable(name: "pfilenamebuf", scope: !1446, file: !298, line: 66, type: !323)
!1454 = !DILocation(line: 66, column: 9, scope: !1446)
!1455 = !DILocation(line: 68, column: 20, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1446, file: !298, line: 68, column: 3)
!1457 = !DILocation(line: 68, column: 18, scope: !1456)
!1458 = !DILocation(line: 68, column: 8, scope: !1456)
!1459 = !DILocation(line: 69, column: 8, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1456, file: !298, line: 68, column: 3)
!1461 = !DILocation(line: 69, column: 18, scope: !1460)
!1462 = !DILocation(line: 69, column: 28, scope: !1463)
!1463 = !DILexicalBlockFile(scope: !1460, file: !298, discriminator: 1)
!1464 = !DILocation(line: 69, column: 21, scope: !1463)
!1465 = !DILocation(line: 69, column: 39, scope: !1463)
!1466 = !DILocation(line: 69, column: 44, scope: !1463)
!1467 = !DILocation(line: 69, column: 54, scope: !1468)
!1468 = !DILexicalBlockFile(scope: !1460, file: !298, discriminator: 2)
!1469 = !DILocation(line: 69, column: 47, scope: !1468)
!1470 = !DILocation(line: 69, column: 70, scope: !1468)
!1471 = !DILocation(line: 68, column: 3, scope: !1472)
!1472 = !DILexicalBlockFile(scope: !1456, file: !298, discriminator: 1)
!1473 = !DILocation(line: 71, column: 24, scope: !1460)
!1474 = !DILocation(line: 71, column: 17, scope: !1460)
!1475 = !DILocation(line: 71, column: 15, scope: !1460)
!1476 = !DILocation(line: 71, column: 5, scope: !1460)
!1477 = !DILocation(line: 70, column: 17, scope: !1460)
!1478 = !DILocation(line: 68, column: 3, scope: !1468)
!1479 = distinct !{!1479, !1480}
!1480 = !DILocation(line: 68, column: 3, scope: !1446)
!1481 = !DILocation(line: 73, column: 7, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1446, file: !298, line: 73, column: 7)
!1483 = !DILocation(line: 73, column: 17, scope: !1482)
!1484 = !DILocation(line: 73, column: 20, scope: !1485)
!1485 = !DILexicalBlockFile(scope: !1482, file: !298, discriminator: 1)
!1486 = !DILocation(line: 73, column: 33, scope: !1485)
!1487 = !DILocation(line: 73, column: 30, scope: !1485)
!1488 = !DILocation(line: 73, column: 7, scope: !1485)
!1489 = !DILocation(line: 74, column: 36, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1482, file: !298, line: 73, column: 43)
!1491 = !DILocation(line: 74, column: 29, scope: !1490)
!1492 = !DILocation(line: 74, column: 47, scope: !1490)
!1493 = !DILocation(line: 74, column: 20, scope: !1494)
!1494 = !DILexicalBlockFile(scope: !1490, file: !298, discriminator: 1)
!1495 = !DILocation(line: 74, column: 18, scope: !1490)
!1496 = !DILocation(line: 75, column: 13, scope: !1490)
!1497 = !DILocation(line: 75, column: 27, scope: !1490)
!1498 = !DILocation(line: 75, column: 46, scope: !1490)
!1499 = !DILocation(line: 75, column: 5, scope: !1494)
!1500 = !DILocation(line: 76, column: 17, scope: !1490)
!1501 = !DILocation(line: 76, column: 15, scope: !1490)
!1502 = !DILocation(line: 77, column: 3, scope: !1490)
!1503 = !DILocation(line: 78, column: 17, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1482, file: !298, line: 77, column: 10)
!1505 = !DILocation(line: 78, column: 15, scope: !1504)
!1506 = !DILocation(line: 81, column: 10, scope: !1446)
!1507 = !DILocation(line: 81, column: 3, scope: !1446)
!1508 = !DILocalVariable(name: "filename", arg: 1, scope: !588, file: !298, line: 85, type: !591)
!1509 = !DILocation(line: 85, column: 29, scope: !588)
!1510 = !DILocalVariable(name: "pfilename", arg: 2, scope: !588, file: !298, line: 85, type: !591)
!1511 = !DILocation(line: 85, column: 52, scope: !588)
!1512 = !DILocalVariable(name: "stab", scope: !588, file: !298, line: 88, type: !661)
!1513 = !DILocation(line: 88, column: 15, scope: !588)
!1514 = !DILocalVariable(name: "status", scope: !588, file: !298, line: 89, type: !313)
!1515 = !DILocation(line: 89, column: 7, scope: !588)
!1516 = !DILocalVariable(name: "pid", scope: !588, file: !298, line: 90, type: !639)
!1517 = !DILocation(line: 90, column: 9, scope: !588)
!1518 = !DILocation(line: 92, column: 8, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !588, file: !298, line: 92, column: 7)
!1520 = !DILocation(line: 92, column: 7, scope: !588)
!1521 = !DILocation(line: 93, column: 16, scope: !1519)
!1522 = !DILocation(line: 93, column: 14, scope: !1519)
!1523 = !DILocation(line: 93, column: 5, scope: !1519)
!1524 = !DILocation(line: 94, column: 14, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !588, file: !298, line: 94, column: 7)
!1526 = !DILocation(line: 94, column: 7, scope: !1525)
!1527 = !DILocation(line: 94, column: 24, scope: !1525)
!1528 = !DILocation(line: 94, column: 28, scope: !1529)
!1529 = !DILexicalBlockFile(scope: !1525, file: !298, discriminator: 1)
!1530 = !DILocation(line: 94, column: 27, scope: !1529)
!1531 = !DILocation(line: 94, column: 32, scope: !1529)
!1532 = !DILocation(line: 94, column: 7, scope: !1529)
!1533 = !DILocation(line: 95, column: 13, scope: !1525)
!1534 = !DILocation(line: 95, column: 63, scope: !1525)
!1535 = !DILocation(line: 95, column: 5, scope: !1529)
!1536 = !DILocation(line: 95, column: 5, scope: !1525)
!1537 = !DILocation(line: 97, column: 44, scope: !588)
!1538 = !DILocation(line: 97, column: 3, scope: !588)
!1539 = !DILocation(line: 99, column: 9, scope: !588)
!1540 = !DILocation(line: 99, column: 7, scope: !588)
!1541 = !DILocation(line: 100, column: 8, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !588, file: !298, line: 100, column: 7)
!1543 = !DILocation(line: 100, column: 7, scope: !588)
!1544 = !DILocation(line: 101, column: 48, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1542, file: !298, line: 100, column: 13)
!1546 = !DILocation(line: 101, column: 59, scope: !1545)
!1547 = !DILocation(line: 101, column: 58, scope: !1545)
!1548 = !DILocation(line: 101, column: 5, scope: !1545)
!1549 = !DILocation(line: 102, column: 13, scope: !1545)
!1550 = !DILocation(line: 103, column: 13, scope: !1545)
!1551 = !DILocation(line: 102, column: 5, scope: !1552)
!1552 = !DILexicalBlockFile(scope: !1545, file: !298, discriminator: 1)
!1553 = !DILocation(line: 102, column: 5, scope: !1545)
!1554 = !DILocation(line: 105, column: 25, scope: !588)
!1555 = !DILocation(line: 105, column: 12, scope: !588)
!1556 = !DILocation(line: 105, column: 10, scope: !588)
!1557 = !DILocation(line: 106, column: 11, scope: !588)
!1558 = !DILocation(line: 106, column: 3, scope: !588)
!1559 = !DILocation(line: 109, column: 15, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1561, file: !298, line: 109, column: 9)
!1561 = distinct !DILexicalBlock(scope: !588, file: !298, line: 106, column: 19)
!1562 = !DILocation(line: 109, column: 10, scope: !1560)
!1563 = !DILocation(line: 109, column: 9, scope: !1561)
!1564 = !DILocation(line: 111, column: 19, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1560, file: !298, line: 109, column: 33)
!1566 = !DILocation(line: 111, column: 8, scope: !1565)
!1567 = !DILocation(line: 111, column: 17, scope: !1565)
!1568 = !DILocation(line: 112, column: 20, scope: !1565)
!1569 = !DILocation(line: 112, column: 8, scope: !1565)
!1570 = !DILocation(line: 112, column: 18, scope: !1565)
!1571 = !DILocation(line: 113, column: 7, scope: !1565)
!1572 = !DILocation(line: 114, column: 17, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1560, file: !298, line: 114, column: 15)
!1574 = !DILocation(line: 114, column: 16, scope: !1573)
!1575 = !DILocation(line: 114, column: 21, scope: !1573)
!1576 = !DILocation(line: 114, column: 15, scope: !1560)
!1577 = !DILocation(line: 116, column: 7, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1573, file: !298, line: 114, column: 32)
!1579 = !DILocation(line: 109, column: 30, scope: !1580)
!1580 = !DILexicalBlockFile(scope: !1560, file: !298, discriminator: 1)
!1581 = !DILocation(line: 120, column: 5, scope: !1561)
!1582 = !DILocation(line: 122, column: 12, scope: !1561)
!1583 = !DILocation(line: 122, column: 82, scope: !1561)
!1584 = !DILocation(line: 122, column: 5, scope: !1585)
!1585 = !DILexicalBlockFile(scope: !1561, file: !298, discriminator: 1)
!1586 = !DILocation(line: 122, column: 5, scope: !1561)
!1587 = !DILocation(line: 125, column: 3, scope: !588)
!1588 = !DILocation(line: 126, column: 1, scope: !588)
!1589 = distinct !DISubprogram(name: "deb_verify", scope: !298, file: !298, line: 129, type: !299, isLocal: true, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !304)
!1590 = !DILocalVariable(name: "filename", arg: 1, scope: !1589, file: !298, line: 129, type: !301)
!1591 = !DILocation(line: 129, column: 24, scope: !1589)
!1592 = !DILocalVariable(name: "pid", scope: !1589, file: !298, line: 131, type: !639)
!1593 = !DILocation(line: 131, column: 9, scope: !1589)
!1594 = !DILocation(line: 135, column: 8, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1589, file: !298, line: 135, column: 7)
!1596 = !DILocation(line: 135, column: 7, scope: !1589)
!1597 = !DILocation(line: 136, column: 5, scope: !1595)
!1598 = !DILocation(line: 138, column: 10, scope: !1589)
!1599 = !DILocation(line: 138, column: 46, scope: !1589)
!1600 = !DILocation(line: 138, column: 3, scope: !1601)
!1601 = !DILexicalBlockFile(scope: !1589, file: !298, discriminator: 1)
!1602 = !DILocation(line: 139, column: 9, scope: !1589)
!1603 = !DILocation(line: 139, column: 3, scope: !1589)
!1604 = !DILocation(line: 140, column: 9, scope: !1589)
!1605 = !DILocation(line: 140, column: 7, scope: !1589)
!1606 = !DILocation(line: 141, column: 8, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1589, file: !298, line: 141, column: 7)
!1608 = !DILocation(line: 141, column: 7, scope: !1589)
!1609 = !DILocation(line: 142, column: 52, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1607, file: !298, line: 141, column: 13)
!1611 = !DILocation(line: 142, column: 5, scope: !1610)
!1612 = !DILocation(line: 143, column: 13, scope: !1610)
!1613 = !DILocation(line: 144, column: 13, scope: !1610)
!1614 = !DILocation(line: 143, column: 5, scope: !1615)
!1615 = !DILexicalBlockFile(scope: !1610, file: !298, discriminator: 1)
!1616 = !DILocation(line: 143, column: 5, scope: !1610)
!1617 = !DILocalVariable(name: "status", scope: !1618, file: !298, line: 146, type: !313)
!1618 = distinct !DILexicalBlock(scope: !1607, file: !298, line: 145, column: 10)
!1619 = !DILocation(line: 146, column: 9, scope: !1618)
!1620 = !DILocation(line: 148, column: 27, scope: !1618)
!1621 = !DILocation(line: 148, column: 14, scope: !1618)
!1622 = !DILocation(line: 148, column: 12, scope: !1618)
!1623 = !DILocation(line: 149, column: 30, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1618, file: !298, line: 149, column: 9)
!1625 = !DILocation(line: 149, column: 10, scope: !1624)
!1626 = !DILocation(line: 149, column: 15, scope: !1624)
!1627 = !DILocation(line: 149, column: 22, scope: !1624)
!1628 = !DILocation(line: 149, column: 28, scope: !1624)
!1629 = !DILocation(line: 149, column: 51, scope: !1630)
!1630 = !DILexicalBlockFile(scope: !1624, file: !298, discriminator: 1)
!1631 = !DILocation(line: 149, column: 31, scope: !1630)
!1632 = !DILocation(line: 149, column: 36, scope: !1630)
!1633 = !DILocation(line: 149, column: 43, scope: !1630)
!1634 = !DILocation(line: 149, column: 53, scope: !1630)
!1635 = !DILocation(line: 149, column: 9, scope: !1630)
!1636 = !DILocation(line: 150, column: 12, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !298, line: 150, column: 11)
!1638 = distinct !DILexicalBlock(scope: !1624, file: !298, line: 149, column: 58)
!1639 = !DILocation(line: 150, column: 11, scope: !1638)
!1640 = !DILocation(line: 151, column: 16, scope: !1637)
!1641 = !DILocation(line: 151, column: 63, scope: !1637)
!1642 = !DILocation(line: 151, column: 9, scope: !1643)
!1643 = !DILexicalBlockFile(scope: !1637, file: !298, discriminator: 1)
!1644 = !DILocation(line: 151, column: 9, scope: !1637)
!1645 = !DILocation(line: 153, column: 16, scope: !1637)
!1646 = !DILocation(line: 154, column: 61, scope: !1637)
!1647 = !DILocation(line: 153, column: 9, scope: !1643)
!1648 = !DILocation(line: 155, column: 5, scope: !1638)
!1649 = !DILocation(line: 156, column: 14, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1624, file: !298, line: 155, column: 12)
!1651 = !DILocation(line: 156, column: 7, scope: !1652)
!1652 = !DILexicalBlockFile(scope: !1650, file: !298, discriminator: 1)
!1653 = !DILocation(line: 159, column: 1, scope: !1589)
!1654 = distinct !DISubprogram(name: "get_control_dir", scope: !298, file: !298, line: 162, type: !1655, isLocal: true, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !304)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{!323, !323}
!1657 = !DILocalVariable(name: "cidir", arg: 1, scope: !1654, file: !298, line: 162, type: !323)
!1658 = !DILocation(line: 162, column: 23, scope: !1654)
!1659 = !DILocation(line: 164, column: 7, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1654, file: !298, line: 164, column: 7)
!1661 = !DILocation(line: 164, column: 7, scope: !1654)
!1662 = !DILocalVariable(name: "tmpdir", scope: !1663, file: !298, line: 165, type: !323)
!1663 = distinct !DILexicalBlock(scope: !1660, file: !298, line: 164, column: 16)
!1664 = !DILocation(line: 165, column: 11, scope: !1663)
!1665 = !DILocation(line: 167, column: 22, scope: !1663)
!1666 = !DILocation(line: 167, column: 14, scope: !1667)
!1667 = !DILexicalBlockFile(scope: !1663, file: !298, discriminator: 1)
!1668 = !DILocation(line: 167, column: 12, scope: !1663)
!1669 = !DILocation(line: 168, column: 9, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1663, file: !298, line: 168, column: 9)
!1671 = !DILocation(line: 168, column: 16, scope: !1670)
!1672 = !DILocation(line: 168, column: 9, scope: !1663)
!1673 = !DILocation(line: 169, column: 15, scope: !1670)
!1674 = !DILocation(line: 169, column: 7, scope: !1675)
!1675 = !DILexicalBlockFile(scope: !1670, file: !298, discriminator: 1)
!1676 = !DILocation(line: 169, column: 7, scope: !1670)
!1677 = !DILocation(line: 171, column: 23, scope: !1663)
!1678 = !DILocation(line: 171, column: 37, scope: !1663)
!1679 = !DILocation(line: 171, column: 30, scope: !1663)
!1680 = !DILocation(line: 171, column: 45, scope: !1663)
!1681 = !DILocation(line: 171, column: 51, scope: !1663)
!1682 = !DILocation(line: 171, column: 13, scope: !1667)
!1683 = !DILocation(line: 171, column: 11, scope: !1663)
!1684 = !DILocation(line: 173, column: 12, scope: !1663)
!1685 = !DILocation(line: 173, column: 19, scope: !1663)
!1686 = !DILocation(line: 173, column: 5, scope: !1663)
!1687 = !DILocation(line: 175, column: 10, scope: !1663)
!1688 = !DILocation(line: 175, column: 5, scope: !1663)
!1689 = !DILocation(line: 176, column: 3, scope: !1663)
!1690 = !DILocalVariable(name: "admindir", scope: !1691, file: !298, line: 177, type: !301)
!1691 = distinct !DILexicalBlock(scope: !1660, file: !298, line: 176, column: 10)
!1692 = !DILocation(line: 177, column: 17, scope: !1691)
!1693 = !DILocation(line: 179, column: 16, scope: !1691)
!1694 = !DILocation(line: 179, column: 14, scope: !1691)
!1695 = !DILocation(line: 182, column: 9, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1691, file: !298, line: 182, column: 9)
!1697 = !DILocation(line: 182, column: 15, scope: !1696)
!1698 = !DILocation(line: 182, column: 9, scope: !1691)
!1699 = !DILocation(line: 183, column: 31, scope: !1696)
!1700 = !DILocation(line: 183, column: 24, scope: !1696)
!1701 = !DILocation(line: 183, column: 41, scope: !1696)
!1702 = !DILocation(line: 183, column: 60, scope: !1696)
!1703 = !DILocation(line: 184, column: 28, scope: !1696)
!1704 = !DILocation(line: 183, column: 15, scope: !1705)
!1705 = !DILexicalBlockFile(scope: !1696, file: !298, discriminator: 1)
!1706 = !DILocation(line: 183, column: 13, scope: !1696)
!1707 = !DILocation(line: 183, column: 7, scope: !1696)
!1708 = !DILocation(line: 188, column: 12, scope: !1691)
!1709 = !DILocation(line: 188, column: 19, scope: !1691)
!1710 = !DILocation(line: 188, column: 5, scope: !1691)
!1711 = !DILocation(line: 189, column: 12, scope: !1691)
!1712 = !DILocation(line: 189, column: 5, scope: !1691)
!1713 = !DILocation(line: 192, column: 22, scope: !1691)
!1714 = !DILocation(line: 192, column: 5, scope: !1691)
!1715 = !DILocation(line: 195, column: 10, scope: !1654)
!1716 = !DILocation(line: 195, column: 3, scope: !1654)
!1717 = !DILocation(line: 197, column: 10, scope: !1654)
!1718 = !DILocation(line: 197, column: 3, scope: !1654)
!1719 = !DILocalVariable(name: "pkg", arg: 1, scope: !593, file: !298, line: 201, type: !384)
!1720 = !DILocation(line: 201, column: 34, scope: !593)
!1721 = !DILocalVariable(name: "pfilename", arg: 2, scope: !593, file: !298, line: 201, type: !301)
!1722 = !DILocation(line: 201, column: 51, scope: !593)
!1723 = !DILocalVariable(name: "dsearch", scope: !593, file: !298, line: 203, type: !402)
!1724 = !DILocation(line: 203, column: 22, scope: !593)
!1725 = !DILocalVariable(name: "psearch", scope: !593, file: !298, line: 204, type: !398)
!1726 = !DILocation(line: 204, column: 20, scope: !593)
!1727 = !DILocalVariable(name: "fixbytrigaw", scope: !593, file: !298, line: 205, type: !384)
!1728 = !DILocation(line: 205, column: 19, scope: !593)
!1729 = !DILocation(line: 210, column: 29, scope: !593)
!1730 = !DILocation(line: 210, column: 3, scope: !593)
!1731 = !DILocation(line: 211, column: 3, scope: !593)
!1732 = !DILocation(line: 211, column: 8, scope: !593)
!1733 = !DILocation(line: 211, column: 20, scope: !593)
!1734 = !DILocation(line: 211, column: 27, scope: !593)
!1735 = !DILocation(line: 213, column: 18, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !593, file: !298, line: 213, column: 3)
!1737 = !DILocation(line: 213, column: 23, scope: !1736)
!1738 = !DILocation(line: 213, column: 33, scope: !1736)
!1739 = !DILocation(line: 213, column: 16, scope: !1736)
!1740 = !DILocation(line: 213, column: 8, scope: !1736)
!1741 = !DILocation(line: 213, column: 42, scope: !1742)
!1742 = !DILexicalBlockFile(scope: !1743, file: !298, discriminator: 1)
!1743 = distinct !DILexicalBlock(scope: !1736, file: !298, line: 213, column: 3)
!1744 = !DILocation(line: 213, column: 3, scope: !1742)
!1745 = !DILocation(line: 214, column: 13, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1743, file: !298, line: 213, column: 76)
!1747 = !DILocation(line: 214, column: 22, scope: !1746)
!1748 = !DILocation(line: 214, column: 5, scope: !1746)
!1749 = !DILocation(line: 217, column: 22, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1746, file: !298, line: 214, column: 28)
!1751 = !DILocation(line: 217, column: 31, scope: !1750)
!1752 = !DILocation(line: 217, column: 36, scope: !1750)
!1753 = !DILocation(line: 217, column: 7, scope: !1750)
!1754 = !DILocation(line: 218, column: 7, scope: !1750)
!1755 = !DILocation(line: 221, column: 20, scope: !1750)
!1756 = !DILocation(line: 221, column: 29, scope: !1750)
!1757 = !DILocation(line: 221, column: 34, scope: !1750)
!1758 = !DILocation(line: 221, column: 7, scope: !1750)
!1759 = !DILocation(line: 222, column: 7, scope: !1750)
!1760 = !DILocation(line: 225, column: 22, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1750, file: !298, line: 225, column: 7)
!1762 = !DILocation(line: 225, column: 31, scope: !1761)
!1763 = !DILocation(line: 225, column: 37, scope: !1761)
!1764 = !DILocation(line: 225, column: 41, scope: !1761)
!1765 = !DILocation(line: 225, column: 50, scope: !1761)
!1766 = !DILocation(line: 225, column: 20, scope: !1761)
!1767 = !DILocation(line: 225, column: 12, scope: !1761)
!1768 = !DILocation(line: 226, column: 12, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1761, file: !298, line: 225, column: 7)
!1770 = !DILocation(line: 225, column: 7, scope: !1771)
!1771 = !DILexicalBlockFile(scope: !1761, file: !298, discriminator: 1)
!1772 = !DILocation(line: 228, column: 13, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1774, file: !298, line: 228, column: 13)
!1774 = distinct !DILexicalBlock(scope: !1769, file: !298, line: 227, column: 41)
!1775 = !DILocation(line: 228, column: 22, scope: !1773)
!1776 = !DILocation(line: 228, column: 26, scope: !1773)
!1777 = !DILocation(line: 228, column: 31, scope: !1773)
!1778 = !DILocation(line: 228, column: 13, scope: !1774)
!1779 = !DILocation(line: 229, column: 11, scope: !1773)
!1780 = !DILocation(line: 230, column: 24, scope: !1774)
!1781 = !DILocation(line: 230, column: 33, scope: !1774)
!1782 = !DILocation(line: 230, column: 37, scope: !1774)
!1783 = !DILocation(line: 230, column: 42, scope: !1774)
!1784 = !DILocation(line: 230, column: 9, scope: !1774)
!1785 = !DILocation(line: 231, column: 7, scope: !1774)
!1786 = !DILocation(line: 227, column: 22, scope: !1769)
!1787 = !DILocation(line: 227, column: 31, scope: !1769)
!1788 = !DILocation(line: 227, column: 20, scope: !1769)
!1789 = !DILocation(line: 225, column: 7, scope: !1790)
!1790 = !DILexicalBlockFile(scope: !1769, file: !298, discriminator: 2)
!1791 = distinct !{!1791, !1792}
!1792 = !DILocation(line: 225, column: 7, scope: !1750)
!1793 = !DILocation(line: 232, column: 7, scope: !1750)
!1794 = !DILocation(line: 239, column: 7, scope: !1750)
!1795 = !DILocation(line: 241, column: 20, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1750, file: !298, line: 241, column: 11)
!1797 = !DILocation(line: 241, column: 12, scope: !1796)
!1798 = !DILocation(line: 241, column: 11, scope: !1750)
!1799 = !DILocation(line: 242, column: 13, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1801, file: !298, line: 242, column: 13)
!1801 = distinct !DILexicalBlock(scope: !1796, file: !298, line: 241, column: 68)
!1802 = !DILocation(line: 242, column: 13, scope: !1801)
!1803 = !DILocation(line: 243, column: 11, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1800, file: !298, line: 242, column: 26)
!1805 = !DILocation(line: 243, column: 18, scope: !1806)
!1806 = !DILexicalBlockFile(scope: !1804, file: !298, discriminator: 1)
!1807 = !DILocation(line: 243, column: 31, scope: !1806)
!1808 = !DILocation(line: 243, column: 38, scope: !1806)
!1809 = !DILocation(line: 243, column: 11, scope: !1806)
!1810 = !DILocation(line: 244, column: 22, scope: !1804)
!1811 = !DILocation(line: 244, column: 35, scope: !1804)
!1812 = !DILocation(line: 244, column: 42, scope: !1804)
!1813 = !DILocation(line: 244, column: 48, scope: !1804)
!1814 = !DILocation(line: 244, column: 13, scope: !1804)
!1815 = !DILocation(line: 243, column: 11, scope: !1816)
!1816 = !DILexicalBlockFile(scope: !1804, file: !298, discriminator: 2)
!1817 = distinct !{!1817, !1803}
!1818 = !DILocation(line: 245, column: 9, scope: !1804)
!1819 = !DILocation(line: 246, column: 11, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1800, file: !298, line: 245, column: 16)
!1821 = !DILocation(line: 247, column: 18, scope: !1820)
!1822 = !DILocation(line: 248, column: 18, scope: !1820)
!1823 = !DILocation(line: 248, column: 41, scope: !1820)
!1824 = !DILocation(line: 248, column: 47, scope: !1820)
!1825 = !DILocation(line: 248, column: 52, scope: !1820)
!1826 = !DILocation(line: 248, column: 29, scope: !1820)
!1827 = !DILocation(line: 249, column: 29, scope: !1820)
!1828 = !DILocation(line: 247, column: 11, scope: !1829)
!1829 = !DILexicalBlockFile(scope: !1820, file: !298, discriminator: 1)
!1830 = !DILocation(line: 250, column: 30, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1820, file: !298, line: 250, column: 15)
!1832 = !DILocation(line: 250, column: 39, scope: !1831)
!1833 = !DILocation(line: 250, column: 16, scope: !1831)
!1834 = !DILocation(line: 250, column: 15, scope: !1820)
!1835 = !DILocation(line: 251, column: 20, scope: !1831)
!1836 = !DILocation(line: 252, column: 32, scope: !1831)
!1837 = !DILocation(line: 252, column: 38, scope: !1831)
!1838 = !DILocation(line: 252, column: 43, scope: !1831)
!1839 = !DILocation(line: 252, column: 20, scope: !1831)
!1840 = !DILocation(line: 251, column: 13, scope: !1841)
!1841 = !DILexicalBlockFile(scope: !1831, file: !298, discriminator: 1)
!1842 = !DILocation(line: 251, column: 13, scope: !1831)
!1843 = !DILocation(line: 253, column: 19, scope: !1820)
!1844 = !DILocation(line: 253, column: 11, scope: !1829)
!1845 = !DILocation(line: 255, column: 7, scope: !1801)
!1846 = !DILocation(line: 256, column: 5, scope: !1750)
!1847 = !DILocation(line: 257, column: 3, scope: !1746)
!1848 = !DILocation(line: 213, column: 61, scope: !1849)
!1849 = !DILexicalBlockFile(scope: !1743, file: !298, discriminator: 2)
!1850 = !DILocation(line: 213, column: 70, scope: !1849)
!1851 = !DILocation(line: 213, column: 59, scope: !1849)
!1852 = !DILocation(line: 213, column: 3, scope: !1849)
!1853 = distinct !{!1853, !1854}
!1854 = !DILocation(line: 213, column: 3, scope: !593)
!1855 = !DILocation(line: 260, column: 18, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !593, file: !298, line: 260, column: 3)
!1857 = !DILocation(line: 260, column: 23, scope: !1856)
!1858 = !DILocation(line: 260, column: 28, scope: !1856)
!1859 = !DILocation(line: 260, column: 37, scope: !1856)
!1860 = !DILocation(line: 260, column: 16, scope: !1856)
!1861 = !DILocation(line: 260, column: 8, scope: !1856)
!1862 = !DILocation(line: 260, column: 48, scope: !1863)
!1863 = !DILexicalBlockFile(scope: !1864, file: !298, discriminator: 1)
!1864 = distinct !DILexicalBlock(scope: !1856, file: !298, line: 260, column: 3)
!1865 = !DILocation(line: 260, column: 3, scope: !1863)
!1866 = !DILocation(line: 261, column: 9, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1868, file: !298, line: 261, column: 9)
!1868 = distinct !DILexicalBlock(scope: !1864, file: !298, line: 260, column: 86)
!1869 = !DILocation(line: 261, column: 18, scope: !1867)
!1870 = !DILocation(line: 261, column: 22, scope: !1867)
!1871 = !DILocation(line: 261, column: 27, scope: !1867)
!1872 = !DILocation(line: 261, column: 9, scope: !1868)
!1873 = !DILocation(line: 262, column: 7, scope: !1867)
!1874 = !DILocation(line: 264, column: 20, scope: !1868)
!1875 = !DILocation(line: 264, column: 29, scope: !1868)
!1876 = !DILocation(line: 264, column: 33, scope: !1868)
!1877 = !DILocation(line: 264, column: 38, scope: !1868)
!1878 = !DILocation(line: 264, column: 5, scope: !1868)
!1879 = !DILocation(line: 265, column: 3, scope: !1868)
!1880 = !DILocation(line: 260, column: 67, scope: !1881)
!1881 = !DILexicalBlockFile(scope: !1864, file: !298, discriminator: 2)
!1882 = !DILocation(line: 260, column: 76, scope: !1881)
!1883 = !DILocation(line: 260, column: 65, scope: !1881)
!1884 = !DILocation(line: 260, column: 3, scope: !1881)
!1885 = distinct !{!1885, !1886}
!1886 = !DILocation(line: 260, column: 3, scope: !593)
!1887 = !DILocation(line: 266, column: 1, scope: !593)
!1888 = distinct !DISubprogram(name: "deb_parse_conffiles", scope: !298, file: !298, line: 324, type: !1889, isLocal: true, isDefinition: true, scopeLine: 326, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !304)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{null, !384, !301, !573}
!1891 = !DILocalVariable(name: "pkg", arg: 1, scope: !1888, file: !298, line: 324, type: !384)
!1892 = !DILocation(line: 324, column: 37, scope: !1888)
!1893 = !DILocalVariable(name: "control_conffiles", arg: 2, scope: !1888, file: !298, line: 324, type: !301)
!1894 = !DILocation(line: 324, column: 54, scope: !1888)
!1895 = !DILocalVariable(name: "newconffiles", arg: 3, scope: !1888, file: !298, line: 325, type: !573)
!1896 = !DILocation(line: 325, column: 49, scope: !1888)
!1897 = !DILocalVariable(name: "conff", scope: !1888, file: !298, line: 327, type: !1898)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64, align: 64)
!1899 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1900, line: 48, baseType: !1901)
!1900 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1902, line: 241, size: 1728, align: 64, elements: !1903)
!1902 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!1903 = !{!1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1924, !1925, !1926, !1927, !1928, !1930, !1932, !1936, !1939, !1941, !1942, !1943, !1944, !1945, !1946, !1947}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1901, file: !1902, line: 242, baseType: !313, size: 32, align: 32)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1901, file: !1902, line: 247, baseType: !323, size: 64, align: 64, offset: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1901, file: !1902, line: 248, baseType: !323, size: 64, align: 64, offset: 128)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1901, file: !1902, line: 249, baseType: !323, size: 64, align: 64, offset: 192)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1901, file: !1902, line: 250, baseType: !323, size: 64, align: 64, offset: 256)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1901, file: !1902, line: 251, baseType: !323, size: 64, align: 64, offset: 320)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1901, file: !1902, line: 252, baseType: !323, size: 64, align: 64, offset: 384)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1901, file: !1902, line: 253, baseType: !323, size: 64, align: 64, offset: 448)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1901, file: !1902, line: 254, baseType: !323, size: 64, align: 64, offset: 512)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1901, file: !1902, line: 256, baseType: !323, size: 64, align: 64, offset: 576)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1901, file: !1902, line: 257, baseType: !323, size: 64, align: 64, offset: 640)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1901, file: !1902, line: 258, baseType: !323, size: 64, align: 64, offset: 704)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1901, file: !1902, line: 260, baseType: !1917, size: 64, align: 64, offset: 768)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64, align: 64)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1902, line: 156, size: 192, align: 64, elements: !1919)
!1919 = !{!1920, !1921, !1923}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1918, file: !1902, line: 157, baseType: !1917, size: 64, align: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1918, file: !1902, line: 158, baseType: !1922, size: 64, align: 64, offset: 64)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64, align: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1918, file: !1902, line: 162, baseType: !313, size: 32, align: 32, offset: 128)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1901, file: !1902, line: 262, baseType: !1922, size: 64, align: 64, offset: 832)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1901, file: !1902, line: 264, baseType: !313, size: 32, align: 32, offset: 896)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1901, file: !1902, line: 268, baseType: !313, size: 32, align: 32, offset: 928)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1901, file: !1902, line: 270, baseType: !343, size: 64, align: 64, offset: 960)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1901, file: !1902, line: 274, baseType: !1929, size: 16, align: 16, offset: 1024)
!1929 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1901, file: !1902, line: 275, baseType: !1931, size: 8, align: 8, offset: 1040)
!1931 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1901, file: !1902, line: 276, baseType: !1933, size: 8, align: 8, offset: 1048)
!1933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 8, align: 8, elements: !1934)
!1934 = !{!1935}
!1935 = !DISubrange(count: 1)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1901, file: !1902, line: 280, baseType: !1937, size: 64, align: 64, offset: 1088)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64, align: 64)
!1938 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1902, line: 150, baseType: null)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1901, file: !1902, line: 289, baseType: !1940, size: 64, align: 64, offset: 1152)
!1940 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !344, line: 132, baseType: !294)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1901, file: !1902, line: 297, baseType: !291, size: 64, align: 64, offset: 1216)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1901, file: !1902, line: 298, baseType: !291, size: 64, align: 64, offset: 1280)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1901, file: !1902, line: 299, baseType: !291, size: 64, align: 64, offset: 1344)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1901, file: !1902, line: 300, baseType: !291, size: 64, align: 64, offset: 1408)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1901, file: !1902, line: 302, baseType: !600, size: 64, align: 64, offset: 1472)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1901, file: !1902, line: 303, baseType: !313, size: 32, align: 32, offset: 1536)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1901, file: !1902, line: 305, baseType: !1948, size: 160, align: 8, offset: 1568)
!1948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 160, align: 8, elements: !1949)
!1949 = !{!1950}
!1950 = !DISubrange(count: 20)
!1951 = !DILocation(line: 327, column: 9, scope: !1888)
!1952 = !DILocalVariable(name: "conffilenamebuf", scope: !1888, file: !298, line: 328, type: !1953)
!1953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 8000, align: 8, elements: !1954)
!1954 = !{!1955}
!1955 = !DISubrange(count: 1000)
!1956 = !DILocation(line: 328, column: 8, scope: !1888)
!1957 = !DILocation(line: 330, column: 17, scope: !1888)
!1958 = !DILocation(line: 330, column: 11, scope: !1888)
!1959 = !DILocation(line: 330, column: 9, scope: !1888)
!1960 = !DILocation(line: 331, column: 7, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1888, file: !298, line: 331, column: 7)
!1962 = !DILocation(line: 331, column: 13, scope: !1961)
!1963 = !DILocation(line: 331, column: 7, scope: !1888)
!1964 = !DILocation(line: 332, column: 10, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1966, file: !298, line: 332, column: 8)
!1966 = distinct !DILexicalBlock(scope: !1961, file: !298, line: 331, column: 21)
!1967 = !DILocation(line: 332, column: 9, scope: !1965)
!1968 = !DILocation(line: 332, column: 14, scope: !1965)
!1969 = !DILocation(line: 332, column: 8, scope: !1966)
!1970 = !DILocation(line: 333, column: 7, scope: !1965)
!1971 = !DILocation(line: 334, column: 13, scope: !1966)
!1972 = !DILocation(line: 334, column: 53, scope: !1966)
!1973 = !DILocation(line: 334, column: 5, scope: !1974)
!1974 = !DILexicalBlockFile(scope: !1966, file: !298, discriminator: 1)
!1975 = !DILocation(line: 334, column: 5, scope: !1966)
!1976 = !DILocation(line: 337, column: 51, scope: !1888)
!1977 = !DILocation(line: 337, column: 3, scope: !1888)
!1978 = !DILocation(line: 339, column: 3, scope: !1888)
!1979 = !DILocation(line: 339, column: 16, scope: !1980)
!1980 = !DILexicalBlockFile(scope: !1888, file: !298, discriminator: 1)
!1981 = !DILocation(line: 339, column: 43, scope: !1980)
!1982 = !DILocation(line: 339, column: 10, scope: !1980)
!1983 = !DILocation(line: 339, column: 3, scope: !1980)
!1984 = !DILocalVariable(name: "otherpkg", scope: !1985, file: !298, line: 340, type: !384)
!1985 = distinct !DILexicalBlock(scope: !1888, file: !298, line: 339, column: 51)
!1986 = !DILocation(line: 340, column: 21, scope: !1985)
!1987 = !DILocalVariable(name: "iter", scope: !1985, file: !298, line: 341, type: !1988)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64, align: 64)
!1989 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_node_pkgs_iter", file: !92, line: 160, flags: DIFlagFwdDecl)
!1990 = !DILocation(line: 341, column: 33, scope: !1985)
!1991 = !DILocalVariable(name: "namenode", scope: !1985, file: !298, line: 342, type: !527)
!1992 = !DILocation(line: 342, column: 27, scope: !1985)
!1993 = !DILocalVariable(name: "newconff", scope: !1985, file: !298, line: 343, type: !522)
!1994 = !DILocation(line: 343, column: 32, scope: !1985)
!1995 = !DILocalVariable(name: "searchconff", scope: !1985, file: !298, line: 344, type: !458)
!1996 = !DILocation(line: 344, column: 22, scope: !1985)
!1997 = !DILocalVariable(name: "p", scope: !1985, file: !298, line: 345, type: !323)
!1998 = !DILocation(line: 345, column: 11, scope: !1985)
!1999 = !DILocation(line: 347, column: 9, scope: !1985)
!2000 = !DILocation(line: 347, column: 34, scope: !1985)
!2001 = !DILocation(line: 347, column: 27, scope: !1985)
!2002 = !DILocation(line: 347, column: 25, scope: !1985)
!2003 = !DILocation(line: 347, column: 7, scope: !1985)
!2004 = !DILocation(line: 348, column: 9, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !1985, file: !298, line: 348, column: 9)
!2006 = !DILocation(line: 348, column: 14, scope: !2005)
!2007 = !DILocation(line: 348, column: 11, scope: !2005)
!2008 = !DILocation(line: 348, column: 9, scope: !1985)
!2009 = !DILocation(line: 349, column: 14, scope: !2005)
!2010 = !DILocation(line: 349, column: 7, scope: !2011)
!2011 = !DILexicalBlockFile(scope: !2005, file: !298, discriminator: 1)
!2012 = !DILocation(line: 349, column: 7, scope: !2005)
!2013 = !DILocation(line: 350, column: 9, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !1985, file: !298, line: 350, column: 9)
!2015 = !DILocation(line: 350, column: 15, scope: !2014)
!2016 = !DILocation(line: 350, column: 9, scope: !1985)
!2017 = !DILocation(line: 351, column: 14, scope: !2014)
!2018 = !DILocation(line: 352, column: 14, scope: !2014)
!2019 = !DILocation(line: 351, column: 7, scope: !2020)
!2020 = !DILexicalBlockFile(scope: !2014, file: !298, discriminator: 1)
!2021 = !DILocation(line: 351, column: 7, scope: !2014)
!2022 = !DILocation(line: 353, column: 5, scope: !1985)
!2023 = !DILocation(line: 353, column: 12, scope: !2024)
!2024 = !DILexicalBlockFile(scope: !1985, file: !298, discriminator: 1)
!2025 = !DILocation(line: 353, column: 16, scope: !2024)
!2026 = !DILocation(line: 353, column: 14, scope: !2024)
!2027 = !DILocation(line: 353, column: 32, scope: !2024)
!2028 = !DILocation(line: 353, column: 45, scope: !2029)
!2029 = !DILexicalBlockFile(scope: !1985, file: !298, discriminator: 2)
!2030 = !DILocation(line: 353, column: 35, scope: !2029)
!2031 = !DILocation(line: 353, column: 5, scope: !2032)
!2032 = !DILexicalBlockFile(scope: !1985, file: !298, discriminator: 3)
!2033 = !DILocation(line: 354, column: 7, scope: !1985)
!2034 = !DILocation(line: 353, column: 5, scope: !2035)
!2035 = !DILexicalBlockFile(scope: !1985, file: !298, discriminator: 4)
!2036 = distinct !{!2036, !2022}
!2037 = !DILocation(line: 355, column: 9, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !1985, file: !298, line: 355, column: 9)
!2039 = !DILocation(line: 355, column: 14, scope: !2038)
!2040 = !DILocation(line: 355, column: 11, scope: !2038)
!2041 = !DILocation(line: 355, column: 9, scope: !1985)
!2042 = !DILocation(line: 356, column: 7, scope: !2038)
!2043 = distinct !{!2043, !1978}
!2044 = !DILocation(line: 357, column: 6, scope: !1985)
!2045 = !DILocation(line: 357, column: 8, scope: !1985)
!2046 = !DILocation(line: 359, column: 36, scope: !1985)
!2047 = !DILocation(line: 359, column: 16, scope: !1985)
!2048 = !DILocation(line: 359, column: 14, scope: !1985)
!2049 = !DILocation(line: 360, column: 5, scope: !1985)
!2050 = !DILocation(line: 360, column: 15, scope: !1985)
!2051 = !DILocation(line: 360, column: 23, scope: !1985)
!2052 = !DILocation(line: 361, column: 45, scope: !1985)
!2053 = !DILocation(line: 361, column: 59, scope: !1985)
!2054 = !DILocation(line: 361, column: 16, scope: !1985)
!2055 = !DILocation(line: 361, column: 14, scope: !1985)
!2056 = !DILocation(line: 378, column: 17, scope: !1985)
!2057 = !DILocation(line: 380, column: 36, scope: !1985)
!2058 = !DILocation(line: 380, column: 46, scope: !1985)
!2059 = !DILocation(line: 380, column: 12, scope: !1985)
!2060 = !DILocation(line: 380, column: 10, scope: !1985)
!2061 = !DILocation(line: 381, column: 5, scope: !1985)
!2062 = !DILocation(line: 381, column: 49, scope: !2024)
!2063 = !DILocation(line: 381, column: 24, scope: !2024)
!2064 = !DILocation(line: 381, column: 22, scope: !2024)
!2065 = !DILocation(line: 381, column: 5, scope: !2024)
!2066 = !DILocation(line: 384, column: 13, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !1985, file: !298, line: 381, column: 57)
!2068 = !DILocation(line: 384, column: 23, scope: !2067)
!2069 = !DILocation(line: 384, column: 33, scope: !2067)
!2070 = !DILocation(line: 384, column: 48, scope: !2067)
!2071 = !DILocation(line: 384, column: 39, scope: !2067)
!2072 = !DILocation(line: 382, column: 7, scope: !2067)
!2073 = !DILocation(line: 385, column: 26, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2067, file: !298, line: 385, column: 7)
!2075 = !DILocation(line: 385, column: 36, scope: !2074)
!2076 = !DILocation(line: 385, column: 46, scope: !2074)
!2077 = !DILocation(line: 385, column: 24, scope: !2074)
!2078 = !DILocation(line: 385, column: 12, scope: !2074)
!2079 = !DILocation(line: 386, column: 12, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2074, file: !298, line: 385, column: 7)
!2081 = !DILocation(line: 386, column: 24, scope: !2080)
!2082 = !DILocation(line: 386, column: 34, scope: !2083)
!2083 = !DILexicalBlockFile(scope: !2080, file: !298, discriminator: 1)
!2084 = !DILocation(line: 386, column: 44, scope: !2083)
!2085 = !DILocation(line: 386, column: 54, scope: !2083)
!2086 = !DILocation(line: 386, column: 60, scope: !2083)
!2087 = !DILocation(line: 386, column: 73, scope: !2083)
!2088 = !DILocation(line: 386, column: 27, scope: !2083)
!2089 = !DILocation(line: 386, column: 24, scope: !2083)
!2090 = !DILocation(line: 385, column: 7, scope: !2091)
!2091 = !DILexicalBlockFile(scope: !2074, file: !298, discriminator: 1)
!2092 = !DILocation(line: 390, column: 15, scope: !2080)
!2093 = !DILocation(line: 390, column: 25, scope: !2080)
!2094 = !DILocation(line: 390, column: 35, scope: !2080)
!2095 = !DILocation(line: 390, column: 50, scope: !2080)
!2096 = !DILocation(line: 390, column: 41, scope: !2080)
!2097 = !DILocation(line: 391, column: 15, scope: !2080)
!2098 = !DILocation(line: 391, column: 28, scope: !2080)
!2099 = !DILocation(line: 388, column: 9, scope: !2080)
!2100 = !DILocation(line: 387, column: 26, scope: !2080)
!2101 = !DILocation(line: 387, column: 39, scope: !2080)
!2102 = !DILocation(line: 387, column: 24, scope: !2080)
!2103 = !DILocation(line: 385, column: 7, scope: !2104)
!2104 = !DILexicalBlockFile(scope: !2080, file: !298, discriminator: 2)
!2105 = distinct !{!2105, !2106}
!2106 = !DILocation(line: 385, column: 7, scope: !2067)
!2107 = !DILocation(line: 392, column: 11, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2067, file: !298, line: 392, column: 11)
!2109 = !DILocation(line: 392, column: 11, scope: !2067)
!2110 = !DILocation(line: 395, column: 15, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2108, file: !298, line: 392, column: 24)
!2112 = !DILocation(line: 395, column: 25, scope: !2111)
!2113 = !DILocation(line: 395, column: 35, scope: !2111)
!2114 = !DILocation(line: 395, column: 50, scope: !2111)
!2115 = !DILocation(line: 395, column: 41, scope: !2111)
!2116 = !DILocation(line: 396, column: 15, scope: !2111)
!2117 = !DILocation(line: 396, column: 27, scope: !2111)
!2118 = !DILocation(line: 396, column: 24, scope: !2111)
!2119 = !DILocation(line: 397, column: 15, scope: !2111)
!2120 = !DILocation(line: 397, column: 28, scope: !2111)
!2121 = !DILocation(line: 393, column: 9, scope: !2111)
!2122 = !DILocation(line: 398, column: 13, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2111, file: !298, line: 398, column: 13)
!2124 = !DILocation(line: 398, column: 25, scope: !2123)
!2125 = !DILocation(line: 398, column: 22, scope: !2123)
!2126 = !DILocation(line: 398, column: 13, scope: !2111)
!2127 = !DILocation(line: 399, column: 11, scope: !2123)
!2128 = !DILocation(line: 400, column: 7, scope: !2111)
!2129 = !DILocation(line: 381, column: 5, scope: !2029)
!2130 = distinct !{!2130, !2061}
!2131 = !DILocation(line: 402, column: 30, scope: !1985)
!2132 = !DILocation(line: 402, column: 5, scope: !1985)
!2133 = !DILocation(line: 404, column: 9, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !1985, file: !298, line: 404, column: 9)
!2135 = !DILocation(line: 404, column: 9, scope: !1985)
!2136 = !DILocation(line: 406, column: 37, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2134, file: !298, line: 404, column: 22)
!2138 = !DILocation(line: 406, column: 50, scope: !2137)
!2139 = !DILocation(line: 406, column: 7, scope: !2137)
!2140 = !DILocation(line: 406, column: 17, scope: !2137)
!2141 = !DILocation(line: 406, column: 27, scope: !2137)
!2142 = !DILocation(line: 406, column: 35, scope: !2137)
!2143 = !DILocation(line: 407, column: 5, scope: !2137)
!2144 = !DILocation(line: 409, column: 13, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2134, file: !298, line: 407, column: 12)
!2146 = !DILocation(line: 409, column: 23, scope: !2145)
!2147 = !DILocation(line: 409, column: 33, scope: !2145)
!2148 = !DILocation(line: 408, column: 7, scope: !2145)
!2149 = !DILocation(line: 411, column: 5, scope: !1985)
!2150 = !DILocation(line: 411, column: 15, scope: !1985)
!2151 = !DILocation(line: 411, column: 25, scope: !1985)
!2152 = !DILocation(line: 411, column: 31, scope: !1985)
!2153 = !DILocation(line: 339, column: 3, scope: !2154)
!2154 = !DILexicalBlockFile(scope: !1888, file: !298, discriminator: 2)
!2155 = !DILocation(line: 414, column: 14, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !1888, file: !298, line: 414, column: 7)
!2157 = !DILocation(line: 414, column: 7, scope: !2156)
!2158 = !DILocation(line: 414, column: 7, scope: !1888)
!2159 = !DILocation(line: 415, column: 13, scope: !2156)
!2160 = !DILocation(line: 415, column: 46, scope: !2156)
!2161 = !DILocation(line: 415, column: 5, scope: !2162)
!2162 = !DILexicalBlockFile(scope: !2156, file: !298, discriminator: 1)
!2163 = !DILocation(line: 415, column: 5, scope: !2156)
!2164 = !DILocation(line: 416, column: 3, scope: !1888)
!2165 = !DILocation(line: 417, column: 14, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !1888, file: !298, line: 417, column: 7)
!2167 = !DILocation(line: 417, column: 7, scope: !2166)
!2168 = !DILocation(line: 417, column: 7, scope: !1888)
!2169 = !DILocation(line: 418, column: 13, scope: !2166)
!2170 = !DILocation(line: 418, column: 46, scope: !2166)
!2171 = !DILocation(line: 418, column: 5, scope: !2172)
!2172 = !DILexicalBlockFile(scope: !2166, file: !298, discriminator: 1)
!2173 = !DILocation(line: 418, column: 5, scope: !2166)
!2174 = !DILocation(line: 419, column: 1, scope: !1888)
!2175 = distinct !DISubprogram(name: "pkg_deconfigure_others", scope: !298, file: !298, line: 269, type: !620, isLocal: true, isDefinition: true, scopeLine: 270, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !304)
!2176 = !DILocalVariable(name: "pkg", arg: 1, scope: !2175, file: !298, line: 269, type: !384)
!2177 = !DILocation(line: 269, column: 40, scope: !2175)
!2178 = !DILocalVariable(name: "deconpil", scope: !2175, file: !298, line: 271, type: !2179)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64, align: 64)
!2180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_deconf_list", file: !380, line: 38, size: 192, align: 64, elements: !2181)
!2181 = !{!2182, !2183, !2184}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2180, file: !380, line: 39, baseType: !2179, size: 64, align: 64)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !2180, file: !380, line: 40, baseType: !384, size: 64, align: 64, offset: 64)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_removal", scope: !2180, file: !380, line: 41, baseType: !384, size: 64, align: 64, offset: 128)
!2185 = !DILocation(line: 271, column: 27, scope: !2175)
!2186 = !DILocation(line: 273, column: 19, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2175, file: !298, line: 273, column: 3)
!2188 = !DILocation(line: 273, column: 17, scope: !2187)
!2189 = !DILocation(line: 273, column: 8, scope: !2187)
!2190 = !DILocation(line: 273, column: 32, scope: !2191)
!2191 = !DILexicalBlockFile(scope: !2192, file: !298, discriminator: 1)
!2192 = distinct !DILexicalBlock(scope: !2187, file: !298, line: 273, column: 3)
!2193 = !DILocation(line: 273, column: 3, scope: !2191)
!2194 = !DILocalVariable(name: "removing", scope: !2195, file: !298, line: 274, type: !384)
!2195 = distinct !DILexicalBlock(scope: !2192, file: !298, line: 273, column: 69)
!2196 = !DILocation(line: 274, column: 21, scope: !2195)
!2197 = !DILocation(line: 274, column: 32, scope: !2195)
!2198 = !DILocation(line: 274, column: 42, scope: !2195)
!2199 = !DILocation(line: 276, column: 9, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2195, file: !298, line: 276, column: 9)
!2201 = !DILocation(line: 276, column: 9, scope: !2195)
!2202 = !DILocation(line: 277, column: 14, scope: !2200)
!2203 = !DILocation(line: 278, column: 23, scope: !2200)
!2204 = !DILocation(line: 278, column: 33, scope: !2200)
!2205 = !DILocation(line: 278, column: 14, scope: !2200)
!2206 = !DILocation(line: 279, column: 31, scope: !2200)
!2207 = !DILocation(line: 279, column: 41, scope: !2200)
!2208 = !DILocation(line: 279, column: 46, scope: !2200)
!2209 = !DILocation(line: 279, column: 56, scope: !2200)
!2210 = !DILocation(line: 279, column: 14, scope: !2200)
!2211 = !DILocation(line: 280, column: 23, scope: !2200)
!2212 = !DILocation(line: 280, column: 14, scope: !2200)
!2213 = !DILocation(line: 281, column: 31, scope: !2200)
!2214 = !DILocation(line: 281, column: 41, scope: !2200)
!2215 = !DILocation(line: 281, column: 51, scope: !2200)
!2216 = !DILocation(line: 281, column: 14, scope: !2200)
!2217 = !DILocation(line: 277, column: 7, scope: !2218)
!2218 = !DILexicalBlockFile(scope: !2200, file: !298, discriminator: 1)
!2219 = !DILocation(line: 277, column: 7, scope: !2200)
!2220 = !DILocation(line: 283, column: 14, scope: !2200)
!2221 = !DILocation(line: 284, column: 23, scope: !2200)
!2222 = !DILocation(line: 284, column: 33, scope: !2200)
!2223 = !DILocation(line: 284, column: 14, scope: !2200)
!2224 = !DILocation(line: 285, column: 31, scope: !2200)
!2225 = !DILocation(line: 285, column: 41, scope: !2200)
!2226 = !DILocation(line: 285, column: 46, scope: !2200)
!2227 = !DILocation(line: 285, column: 56, scope: !2200)
!2228 = !DILocation(line: 285, column: 14, scope: !2200)
!2229 = !DILocation(line: 283, column: 7, scope: !2218)
!2230 = !DILocation(line: 287, column: 37, scope: !2195)
!2231 = !DILocation(line: 287, column: 47, scope: !2195)
!2232 = !DILocation(line: 287, column: 5, scope: !2195)
!2233 = !DILocation(line: 288, column: 20, scope: !2195)
!2234 = !DILocation(line: 288, column: 30, scope: !2195)
!2235 = !DILocation(line: 288, column: 5, scope: !2195)
!2236 = !DILocation(line: 289, column: 20, scope: !2195)
!2237 = !DILocation(line: 289, column: 30, scope: !2195)
!2238 = !DILocation(line: 289, column: 5, scope: !2195)
!2239 = !DILocation(line: 296, column: 38, scope: !2195)
!2240 = !DILocation(line: 296, column: 48, scope: !2195)
!2241 = !DILocation(line: 296, column: 30, scope: !2195)
!2242 = !DILocation(line: 296, column: 61, scope: !2195)
!2243 = !DILocation(line: 296, column: 53, scope: !2195)
!2244 = !DILocation(line: 296, column: 79, scope: !2195)
!2245 = !DILocation(line: 296, column: 71, scope: !2195)
!2246 = !DILocation(line: 294, column: 5, scope: !2195)
!2247 = !DILocation(line: 298, column: 9, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2195, file: !298, line: 298, column: 9)
!2249 = !DILocation(line: 298, column: 9, scope: !2195)
!2250 = !DILocation(line: 299, column: 29, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2248, file: !298, line: 298, column: 19)
!2252 = !DILocation(line: 299, column: 39, scope: !2251)
!2253 = !DILocation(line: 301, column: 41, scope: !2251)
!2254 = !DILocation(line: 301, column: 47, scope: !2251)
!2255 = !DILocation(line: 301, column: 52, scope: !2251)
!2256 = !DILocation(line: 301, column: 29, scope: !2251)
!2257 = !DILocation(line: 302, column: 46, scope: !2251)
!2258 = !DILocation(line: 302, column: 51, scope: !2251)
!2259 = !DILocation(line: 302, column: 61, scope: !2251)
!2260 = !DILocation(line: 302, column: 29, scope: !2251)
!2261 = !DILocation(line: 305, column: 38, scope: !2251)
!2262 = !DILocation(line: 305, column: 29, scope: !2251)
!2263 = !DILocation(line: 306, column: 46, scope: !2251)
!2264 = !DILocation(line: 306, column: 56, scope: !2251)
!2265 = !DILocation(line: 306, column: 66, scope: !2251)
!2266 = !DILocation(line: 306, column: 29, scope: !2251)
!2267 = !DILocation(line: 299, column: 7, scope: !2251)
!2268 = !DILocation(line: 309, column: 5, scope: !2251)
!2269 = !DILocation(line: 310, column: 29, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2248, file: !298, line: 309, column: 12)
!2271 = !DILocation(line: 310, column: 39, scope: !2270)
!2272 = !DILocation(line: 312, column: 41, scope: !2270)
!2273 = !DILocation(line: 312, column: 47, scope: !2270)
!2274 = !DILocation(line: 312, column: 52, scope: !2270)
!2275 = !DILocation(line: 312, column: 29, scope: !2270)
!2276 = !DILocation(line: 313, column: 46, scope: !2270)
!2277 = !DILocation(line: 313, column: 51, scope: !2270)
!2278 = !DILocation(line: 313, column: 61, scope: !2270)
!2279 = !DILocation(line: 313, column: 29, scope: !2270)
!2280 = !DILocation(line: 310, column: 7, scope: !2270)
!2281 = !DILocation(line: 317, column: 3, scope: !2195)
!2282 = !DILocation(line: 273, column: 53, scope: !2283)
!2283 = !DILexicalBlockFile(scope: !2192, file: !298, discriminator: 2)
!2284 = !DILocation(line: 273, column: 63, scope: !2283)
!2285 = !DILocation(line: 273, column: 51, scope: !2283)
!2286 = !DILocation(line: 273, column: 3, scope: !2283)
!2287 = distinct !{!2287, !2288}
!2288 = !DILocation(line: 273, column: 3, scope: !2175)
!2289 = !DILocation(line: 318, column: 1, scope: !2175)
!2290 = distinct !DISubprogram(name: "pkgset_getting_in_sync", scope: !298, file: !298, line: 952, type: !2291, isLocal: true, isDefinition: true, scopeLine: 953, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !304)
!2291 = !DISubroutineType(types: !2292)
!2292 = !{!430, !384}
!2293 = !DILocalVariable(name: "pkg", arg: 1, scope: !2290, file: !298, line: 952, type: !384)
!2294 = !DILocation(line: 952, column: 40, scope: !2290)
!2295 = !DILocalVariable(name: "otherpkg", scope: !2290, file: !298, line: 954, type: !384)
!2296 = !DILocation(line: 954, column: 19, scope: !2290)
!2297 = !DILocation(line: 956, column: 20, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2290, file: !298, line: 956, column: 3)
!2299 = !DILocation(line: 956, column: 25, scope: !2298)
!2300 = !DILocation(line: 956, column: 30, scope: !2298)
!2301 = !DILocation(line: 956, column: 17, scope: !2298)
!2302 = !DILocation(line: 956, column: 8, scope: !2298)
!2303 = !DILocation(line: 956, column: 35, scope: !2304)
!2304 = !DILexicalBlockFile(scope: !2305, file: !298, discriminator: 1)
!2305 = distinct !DILexicalBlock(scope: !2298, file: !298, line: 956, column: 3)
!2306 = !DILocation(line: 956, column: 3, scope: !2304)
!2307 = !DILocation(line: 957, column: 9, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2309, file: !298, line: 957, column: 9)
!2309 = distinct !DILexicalBlock(scope: !2305, file: !298, line: 956, column: 77)
!2310 = !DILocation(line: 957, column: 21, scope: !2308)
!2311 = !DILocation(line: 957, column: 18, scope: !2308)
!2312 = !DILocation(line: 957, column: 9, scope: !2309)
!2313 = !DILocation(line: 958, column: 7, scope: !2308)
!2314 = !DILocation(line: 959, column: 9, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2309, file: !298, line: 959, column: 9)
!2316 = !DILocation(line: 959, column: 19, scope: !2315)
!2317 = !DILocation(line: 959, column: 26, scope: !2315)
!2318 = !DILocation(line: 959, column: 9, scope: !2309)
!2319 = !DILocation(line: 960, column: 7, scope: !2315)
!2320 = !DILocation(line: 961, column: 31, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2309, file: !298, line: 961, column: 9)
!2322 = !DILocation(line: 961, column: 36, scope: !2321)
!2323 = !DILocation(line: 961, column: 46, scope: !2321)
!2324 = !DILocation(line: 962, column: 31, scope: !2321)
!2325 = !DILocation(line: 962, column: 41, scope: !2321)
!2326 = !DILocation(line: 962, column: 51, scope: !2321)
!2327 = !DILocation(line: 961, column: 9, scope: !2321)
!2328 = !DILocation(line: 961, column: 9, scope: !2309)
!2329 = !DILocation(line: 963, column: 7, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2321, file: !298, line: 962, column: 61)
!2331 = !DILocation(line: 965, column: 3, scope: !2309)
!2332 = !DILocation(line: 956, column: 56, scope: !2333)
!2333 = !DILexicalBlockFile(scope: !2305, file: !298, discriminator: 2)
!2334 = !DILocation(line: 956, column: 66, scope: !2333)
!2335 = !DILocation(line: 956, column: 54, scope: !2333)
!2336 = !DILocation(line: 956, column: 3, scope: !2333)
!2337 = distinct !{!2337, !2338}
!2338 = !DILocation(line: 956, column: 3, scope: !2290)
!2339 = !DILocation(line: 967, column: 3, scope: !2290)
!2340 = !DILocation(line: 968, column: 1, scope: !2290)
!2341 = !DILocalVariable(name: "pkg", arg: 1, scope: !605, file: !298, line: 558, type: !384)
!2342 = !DILocation(line: 558, column: 38, scope: !605)
!2343 = !DILocalVariable(name: "newfiles_queue", arg: 2, scope: !605, file: !298, line: 559, type: !573)
!2344 = !DILocation(line: 559, column: 50, scope: !605)
!2345 = !DILocalVariable(name: "newconffiles", arg: 3, scope: !605, file: !298, line: 560, type: !573)
!2346 = !DILocation(line: 560, column: 50, scope: !605)
!2347 = !DILocalVariable(name: "rev_iter", scope: !605, file: !298, line: 562, type: !2348)
!2348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_hash_rev_iter", file: !92, line: 188, size: 64, align: 64, elements: !2349)
!2349 = !{!2350}
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "todo", scope: !2348, file: !92, line: 189, baseType: !522, size: 64, align: 64)
!2351 = !DILocation(line: 562, column: 29, scope: !605)
!2352 = !DILocalVariable(name: "namenode", scope: !605, file: !298, line: 563, type: !527)
!2353 = !DILocation(line: 563, column: 25, scope: !605)
!2354 = !DILocalVariable(name: "stab", scope: !605, file: !298, line: 564, type: !661)
!2355 = !DILocation(line: 564, column: 15, scope: !605)
!2356 = !DILocalVariable(name: "oldfs", scope: !605, file: !298, line: 564, type: !661)
!2357 = !DILocation(line: 564, column: 21, scope: !605)
!2358 = !DILocation(line: 566, column: 38, scope: !605)
!2359 = !DILocation(line: 566, column: 43, scope: !605)
!2360 = !DILocation(line: 566, column: 3, scope: !605)
!2361 = !DILocation(line: 568, column: 3, scope: !605)
!2362 = !DILocation(line: 568, column: 22, scope: !2363)
!2363 = !DILexicalBlockFile(scope: !605, file: !298, discriminator: 1)
!2364 = !DILocation(line: 568, column: 20, scope: !2363)
!2365 = !DILocation(line: 568, column: 3, scope: !2363)
!2366 = !DILocalVariable(name: "usenode", scope: !2367, file: !298, line: 569, type: !527)
!2367 = distinct !DILexicalBlock(scope: !605, file: !298, line: 568, column: 59)
!2368 = !DILocation(line: 569, column: 27, scope: !2367)
!2369 = !DILocation(line: 571, column: 10, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2367, file: !298, line: 571, column: 9)
!2371 = !DILocation(line: 571, column: 20, scope: !2370)
!2372 = !DILocation(line: 571, column: 26, scope: !2370)
!2373 = !DILocation(line: 571, column: 44, scope: !2370)
!2374 = !DILocation(line: 572, column: 10, scope: !2370)
!2375 = !DILocation(line: 572, column: 20, scope: !2370)
!2376 = !DILocation(line: 572, column: 26, scope: !2370)
!2377 = !DILocation(line: 571, column: 9, scope: !2378)
!2378 = !DILexicalBlockFile(scope: !2367, file: !298, discriminator: 1)
!2379 = !DILocation(line: 573, column: 7, scope: !2370)
!2380 = distinct !{!2380, !2361}
!2381 = !DILocation(line: 575, column: 29, scope: !2367)
!2382 = !DILocation(line: 575, column: 39, scope: !2367)
!2383 = !DILocation(line: 575, column: 45, scope: !2367)
!2384 = !DILocation(line: 575, column: 50, scope: !2367)
!2385 = !DILocation(line: 575, column: 15, scope: !2367)
!2386 = !DILocation(line: 575, column: 13, scope: !2367)
!2387 = !DILocation(line: 577, column: 5, scope: !2367)
!2388 = !DILocation(line: 578, column: 30, scope: !2367)
!2389 = !DILocation(line: 578, column: 39, scope: !2367)
!2390 = !DILocation(line: 578, column: 52, scope: !2367)
!2391 = !DILocation(line: 578, column: 61, scope: !2367)
!2392 = !DILocation(line: 578, column: 45, scope: !2367)
!2393 = !DILocation(line: 578, column: 5, scope: !2378)
!2394 = !DILocation(line: 579, column: 5, scope: !2367)
!2395 = !DILocation(line: 581, column: 15, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2367, file: !298, line: 581, column: 9)
!2397 = !DILocation(line: 581, column: 25, scope: !2396)
!2398 = !DILocation(line: 581, column: 10, scope: !2396)
!2399 = !DILocation(line: 581, column: 38, scope: !2396)
!2400 = !DILocation(line: 581, column: 45, scope: !2401)
!2401 = !DILexicalBlockFile(scope: !2396, file: !298, discriminator: 1)
!2402 = !DILocation(line: 581, column: 43, scope: !2401)
!2403 = !DILocation(line: 581, column: 54, scope: !2401)
!2404 = !DILocation(line: 581, column: 9, scope: !2401)
!2405 = !DILocation(line: 583, column: 13, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2396, file: !298, line: 581, column: 63)
!2407 = !DILocation(line: 583, column: 23, scope: !2406)
!2408 = !DILocation(line: 582, column: 7, scope: !2406)
!2409 = !DILocation(line: 584, column: 33, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2406, file: !298, line: 584, column: 11)
!2411 = !DILocation(line: 584, column: 43, scope: !2410)
!2412 = !DILocation(line: 584, column: 11, scope: !2410)
!2413 = !DILocation(line: 584, column: 11, scope: !2406)
!2414 = !DILocation(line: 585, column: 9, scope: !2410)
!2415 = !DILocation(line: 586, column: 5, scope: !2406)
!2416 = !DILocation(line: 588, column: 23, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2367, file: !298, line: 588, column: 9)
!2418 = !DILocation(line: 588, column: 9, scope: !2417)
!2419 = !DILocation(line: 588, column: 9, scope: !2367)
!2420 = !DILocation(line: 589, column: 14, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2422, file: !298, line: 589, column: 11)
!2422 = distinct !DILexicalBlock(scope: !2417, file: !298, line: 588, column: 37)
!2423 = !DILocation(line: 589, column: 13, scope: !2421)
!2424 = !DILocation(line: 589, column: 18, scope: !2421)
!2425 = !DILocation(line: 589, column: 28, scope: !2421)
!2426 = !DILocation(line: 589, column: 33, scope: !2427)
!2427 = !DILexicalBlockFile(scope: !2421, file: !298, discriminator: 1)
!2428 = !DILocation(line: 589, column: 32, scope: !2427)
!2429 = !DILocation(line: 589, column: 37, scope: !2427)
!2430 = !DILocation(line: 589, column: 46, scope: !2427)
!2431 = !DILocation(line: 589, column: 51, scope: !2432)
!2432 = !DILexicalBlockFile(scope: !2421, file: !298, discriminator: 2)
!2433 = !DILocation(line: 589, column: 50, scope: !2432)
!2434 = !DILocation(line: 589, column: 55, scope: !2432)
!2435 = !DILocation(line: 589, column: 11, scope: !2432)
!2436 = !DILocation(line: 590, column: 17, scope: !2421)
!2437 = !DILocation(line: 591, column: 25, scope: !2421)
!2438 = !DILocation(line: 591, column: 40, scope: !2421)
!2439 = !DILocation(line: 591, column: 39, scope: !2421)
!2440 = !DILocation(line: 591, column: 30, scope: !2427)
!2441 = !DILocation(line: 590, column: 9, scope: !2427)
!2442 = !DILocation(line: 590, column: 9, scope: !2421)
!2443 = !DILocation(line: 592, column: 7, scope: !2422)
!2444 = !DILocation(line: 594, column: 14, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2367, file: !298, line: 594, column: 8)
!2446 = !DILocation(line: 594, column: 11, scope: !2445)
!2447 = !DILocation(line: 594, column: 22, scope: !2445)
!2448 = !DILocation(line: 594, column: 8, scope: !2367)
!2449 = !DILocation(line: 595, column: 26, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2445, file: !298, line: 594, column: 32)
!2451 = !DILocation(line: 595, column: 35, scope: !2450)
!2452 = !DILocation(line: 595, column: 7, scope: !2450)
!2453 = !DILocation(line: 598, column: 18, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2450, file: !298, line: 598, column: 11)
!2455 = !DILocation(line: 598, column: 27, scope: !2454)
!2456 = !DILocation(line: 598, column: 11, scope: !2454)
!2457 = !DILocation(line: 598, column: 39, scope: !2454)
!2458 = !DILocation(line: 598, column: 11, scope: !2450)
!2459 = !DILocation(line: 599, column: 9, scope: !2454)
!2460 = !DILocation(line: 601, column: 25, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2450, file: !298, line: 601, column: 11)
!2462 = !DILocation(line: 601, column: 11, scope: !2461)
!2463 = !DILocation(line: 601, column: 11, scope: !2450)
!2464 = !DILocation(line: 602, column: 17, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2461, file: !298, line: 601, column: 31)
!2466 = !DILocation(line: 603, column: 17, scope: !2465)
!2467 = !DILocation(line: 603, column: 27, scope: !2465)
!2468 = !DILocation(line: 603, column: 43, scope: !2465)
!2469 = !DILocation(line: 603, column: 42, scope: !2465)
!2470 = !DILocation(line: 603, column: 33, scope: !2471)
!2471 = !DILexicalBlockFile(scope: !2465, file: !298, discriminator: 1)
!2472 = !DILocation(line: 602, column: 9, scope: !2471)
!2473 = !DILocation(line: 604, column: 7, scope: !2465)
!2474 = !DILocation(line: 604, column: 19, scope: !2475)
!2475 = !DILexicalBlockFile(scope: !2476, file: !298, discriminator: 1)
!2476 = distinct !DILexicalBlock(scope: !2461, file: !298, line: 604, column: 18)
!2477 = !DILocation(line: 604, column: 29, scope: !2475)
!2478 = !DILocation(line: 604, column: 35, scope: !2475)
!2479 = !DILocation(line: 604, column: 18, scope: !2475)
!2480 = !DILocation(line: 605, column: 17, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2476, file: !298, line: 604, column: 54)
!2482 = !DILocation(line: 606, column: 50, scope: !2481)
!2483 = !DILocation(line: 606, column: 60, scope: !2481)
!2484 = !DILocation(line: 605, column: 9, scope: !2485)
!2485 = !DILexicalBlockFile(scope: !2481, file: !298, discriminator: 1)
!2486 = !DILocation(line: 607, column: 7, scope: !2481)
!2487 = !DILocation(line: 608, column: 5, scope: !2450)
!2488 = !DILocalVariable(name: "sameas", scope: !2489, file: !298, line: 609, type: !522)
!2489 = distinct !DILexicalBlock(scope: !2445, file: !298, line: 608, column: 12)
!2490 = !DILocation(line: 609, column: 34, scope: !2489)
!2491 = !DILocalVariable(name: "cfile", scope: !2489, file: !298, line: 610, type: !522)
!2492 = !DILocation(line: 610, column: 34, scope: !2489)
!2493 = !DILocalVariable(name: "cfilename", scope: !2489, file: !298, line: 612, type: !596)
!2494 = !DILocation(line: 612, column: 21, scope: !2489)
!2495 = !DILocation(line: 632, column: 42, scope: !2489)
!2496 = !DILocation(line: 631, column: 7, scope: !2489)
!2497 = !DILocation(line: 634, column: 20, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2489, file: !298, line: 634, column: 7)
!2499 = !DILocation(line: 634, column: 36, scope: !2498)
!2500 = !DILocation(line: 634, column: 18, scope: !2498)
!2501 = !DILocation(line: 634, column: 12, scope: !2498)
!2502 = !DILocation(line: 634, column: 42, scope: !2503)
!2503 = !DILexicalBlockFile(scope: !2504, file: !298, discriminator: 1)
!2504 = distinct !DILexicalBlock(scope: !2498, file: !298, line: 634, column: 7)
!2505 = !DILocation(line: 634, column: 7, scope: !2503)
!2506 = !DILocation(line: 637, column: 13, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2508, file: !298, line: 637, column: 13)
!2508 = distinct !DILexicalBlock(scope: !2504, file: !298, line: 634, column: 70)
!2509 = !DILocation(line: 637, column: 20, scope: !2507)
!2510 = !DILocation(line: 637, column: 30, scope: !2507)
!2511 = !DILocation(line: 637, column: 36, scope: !2507)
!2512 = !DILocation(line: 637, column: 13, scope: !2508)
!2513 = !DILocation(line: 638, column: 11, scope: !2507)
!2514 = !DILocation(line: 640, column: 13, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2508, file: !298, line: 640, column: 13)
!2516 = !DILocation(line: 640, column: 20, scope: !2515)
!2517 = !DILocation(line: 640, column: 30, scope: !2515)
!2518 = !DILocation(line: 640, column: 45, scope: !2515)
!2519 = !DILocation(line: 640, column: 13, scope: !2508)
!2520 = !DILocalVariable(name: "tmp_stat", scope: !2521, file: !298, line: 641, type: !661)
!2521 = distinct !DILexicalBlock(scope: !2515, file: !298, line: 640, column: 53)
!2522 = !DILocation(line: 641, column: 23, scope: !2521)
!2523 = !DILocation(line: 643, column: 11, scope: !2521)
!2524 = !DILocation(line: 644, column: 38, scope: !2521)
!2525 = !DILocation(line: 644, column: 54, scope: !2521)
!2526 = !DILocation(line: 644, column: 47, scope: !2521)
!2527 = !DILocation(line: 644, column: 11, scope: !2528)
!2528 = !DILexicalBlockFile(scope: !2521, file: !298, discriminator: 1)
!2529 = !DILocation(line: 645, column: 38, scope: !2521)
!2530 = !DILocation(line: 645, column: 45, scope: !2521)
!2531 = !DILocation(line: 645, column: 55, scope: !2521)
!2532 = !DILocation(line: 645, column: 68, scope: !2521)
!2533 = !DILocation(line: 645, column: 75, scope: !2521)
!2534 = !DILocation(line: 645, column: 85, scope: !2521)
!2535 = !DILocation(line: 645, column: 61, scope: !2521)
!2536 = !DILocation(line: 645, column: 11, scope: !2528)
!2537 = !DILocation(line: 646, column: 11, scope: !2521)
!2538 = !DILocation(line: 648, column: 31, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2521, file: !298, line: 648, column: 15)
!2540 = !DILocation(line: 648, column: 15, scope: !2539)
!2541 = !DILocation(line: 648, column: 47, scope: !2539)
!2542 = !DILocation(line: 648, column: 15, scope: !2521)
!2543 = !DILocalVariable(name: "file_ondisk_id", scope: !2544, file: !298, line: 649, type: !562)
!2544 = distinct !DILexicalBlock(scope: !2539, file: !298, line: 648, column: 53)
!2545 = !DILocation(line: 649, column: 36, scope: !2544)
!2546 = !DILocation(line: 651, column: 30, scope: !2544)
!2547 = !DILocation(line: 651, column: 28, scope: !2544)
!2548 = !DILocation(line: 652, column: 47, scope: !2544)
!2549 = !DILocation(line: 652, column: 13, scope: !2544)
!2550 = !DILocation(line: 652, column: 29, scope: !2544)
!2551 = !DILocation(line: 652, column: 36, scope: !2544)
!2552 = !DILocation(line: 653, column: 47, scope: !2544)
!2553 = !DILocation(line: 653, column: 13, scope: !2544)
!2554 = !DILocation(line: 653, column: 29, scope: !2544)
!2555 = !DILocation(line: 653, column: 36, scope: !2544)
!2556 = !DILocation(line: 654, column: 47, scope: !2544)
!2557 = !DILocation(line: 654, column: 13, scope: !2544)
!2558 = !DILocation(line: 654, column: 20, scope: !2544)
!2559 = !DILocation(line: 654, column: 30, scope: !2544)
!2560 = !DILocation(line: 654, column: 45, scope: !2544)
!2561 = !DILocation(line: 655, column: 11, scope: !2544)
!2562 = !DILocation(line: 656, column: 20, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2564, file: !298, line: 656, column: 17)
!2564 = distinct !DILexicalBlock(scope: !2539, file: !298, line: 655, column: 18)
!2565 = !DILocation(line: 656, column: 19, scope: !2563)
!2566 = !DILocation(line: 656, column: 24, scope: !2563)
!2567 = !DILocation(line: 656, column: 34, scope: !2563)
!2568 = !DILocation(line: 656, column: 39, scope: !2569)
!2569 = !DILexicalBlockFile(scope: !2563, file: !298, discriminator: 1)
!2570 = !DILocation(line: 656, column: 38, scope: !2569)
!2571 = !DILocation(line: 656, column: 43, scope: !2569)
!2572 = !DILocation(line: 656, column: 52, scope: !2569)
!2573 = !DILocation(line: 656, column: 57, scope: !2574)
!2574 = !DILexicalBlockFile(scope: !2563, file: !298, discriminator: 2)
!2575 = !DILocation(line: 656, column: 56, scope: !2574)
!2576 = !DILocation(line: 656, column: 61, scope: !2574)
!2577 = !DILocation(line: 656, column: 17, scope: !2574)
!2578 = !DILocation(line: 657, column: 23, scope: !2563)
!2579 = !DILocation(line: 658, column: 23, scope: !2563)
!2580 = !DILocation(line: 658, column: 30, scope: !2563)
!2581 = !DILocation(line: 658, column: 40, scope: !2563)
!2582 = !DILocation(line: 657, column: 15, scope: !2569)
!2583 = !DILocation(line: 657, column: 15, scope: !2563)
!2584 = !DILocation(line: 659, column: 13, scope: !2564)
!2585 = !DILocation(line: 659, column: 20, scope: !2564)
!2586 = !DILocation(line: 659, column: 30, scope: !2564)
!2587 = !DILocation(line: 659, column: 45, scope: !2564)
!2588 = !DILocation(line: 660, column: 13, scope: !2564)
!2589 = !DILocation(line: 662, column: 9, scope: !2521)
!2590 = !DILocation(line: 664, column: 13, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2508, file: !298, line: 664, column: 13)
!2592 = !DILocation(line: 664, column: 20, scope: !2591)
!2593 = !DILocation(line: 664, column: 30, scope: !2591)
!2594 = !DILocation(line: 664, column: 45, scope: !2591)
!2595 = !DILocation(line: 664, column: 13, scope: !2508)
!2596 = !DILocation(line: 665, column: 11, scope: !2591)
!2597 = !DILocation(line: 667, column: 19, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2508, file: !298, line: 667, column: 13)
!2599 = !DILocation(line: 667, column: 29, scope: !2598)
!2600 = !DILocation(line: 667, column: 36, scope: !2598)
!2601 = !DILocation(line: 667, column: 46, scope: !2598)
!2602 = !DILocation(line: 667, column: 62, scope: !2598)
!2603 = !DILocation(line: 667, column: 26, scope: !2598)
!2604 = !DILocation(line: 667, column: 69, scope: !2598)
!2605 = !DILocation(line: 668, column: 19, scope: !2598)
!2606 = !DILocation(line: 668, column: 29, scope: !2598)
!2607 = !DILocation(line: 668, column: 36, scope: !2598)
!2608 = !DILocation(line: 668, column: 46, scope: !2598)
!2609 = !DILocation(line: 668, column: 62, scope: !2598)
!2610 = !DILocation(line: 668, column: 26, scope: !2598)
!2611 = !DILocation(line: 667, column: 13, scope: !2612)
!2612 = !DILexicalBlockFile(scope: !2508, file: !298, discriminator: 1)
!2613 = !DILocation(line: 669, column: 15, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2615, file: !298, line: 669, column: 15)
!2615 = distinct !DILexicalBlock(scope: !2598, file: !298, line: 668, column: 70)
!2616 = !DILocation(line: 669, column: 15, scope: !2615)
!2617 = !DILocation(line: 670, column: 21, scope: !2614)
!2618 = !DILocation(line: 671, column: 64, scope: !2614)
!2619 = !DILocation(line: 672, column: 21, scope: !2614)
!2620 = !DILocation(line: 672, column: 29, scope: !2614)
!2621 = !DILocation(line: 672, column: 39, scope: !2614)
!2622 = !DILocation(line: 672, column: 45, scope: !2614)
!2623 = !DILocation(line: 672, column: 52, scope: !2614)
!2624 = !DILocation(line: 672, column: 62, scope: !2614)
!2625 = !DILocation(line: 670, column: 13, scope: !2626)
!2626 = !DILexicalBlockFile(scope: !2614, file: !298, discriminator: 1)
!2627 = !DILocation(line: 670, column: 13, scope: !2614)
!2628 = !DILocation(line: 673, column: 20, scope: !2615)
!2629 = !DILocation(line: 673, column: 18, scope: !2615)
!2630 = !DILocation(line: 675, column: 48, scope: !2615)
!2631 = !DILocation(line: 675, column: 53, scope: !2615)
!2632 = !DILocation(line: 675, column: 60, scope: !2615)
!2633 = !DILocation(line: 675, column: 70, scope: !2615)
!2634 = !DILocation(line: 674, column: 11, scope: !2615)
!2635 = !DILocation(line: 676, column: 9, scope: !2615)
!2636 = !DILocation(line: 677, column: 7, scope: !2508)
!2637 = !DILocation(line: 634, column: 57, scope: !2638)
!2638 = !DILexicalBlockFile(scope: !2504, file: !298, discriminator: 2)
!2639 = !DILocation(line: 634, column: 64, scope: !2638)
!2640 = !DILocation(line: 634, column: 55, scope: !2638)
!2641 = !DILocation(line: 634, column: 7, scope: !2638)
!2642 = distinct !{!2642, !2643}
!2643 = !DILocation(line: 634, column: 7, scope: !2489)
!2644 = !DILocation(line: 679, column: 7, scope: !2489)
!2645 = !DILocation(line: 681, column: 12, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2489, file: !298, line: 681, column: 11)
!2647 = !DILocation(line: 681, column: 22, scope: !2646)
!2648 = !DILocation(line: 681, column: 28, scope: !2646)
!2649 = !DILocation(line: 681, column: 11, scope: !2489)
!2650 = !DILocation(line: 682, column: 13, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2652, file: !298, line: 682, column: 13)
!2652 = distinct !DILexicalBlock(scope: !2646, file: !298, line: 681, column: 47)
!2653 = !DILocation(line: 682, column: 13, scope: !2652)
!2654 = !DILocation(line: 683, column: 15, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2656, file: !298, line: 683, column: 15)
!2656 = distinct !DILexicalBlock(scope: !2651, file: !298, line: 682, column: 21)
!2657 = !DILocation(line: 683, column: 23, scope: !2655)
!2658 = !DILocation(line: 683, column: 33, scope: !2655)
!2659 = !DILocation(line: 683, column: 39, scope: !2655)
!2660 = !DILocation(line: 683, column: 15, scope: !2656)
!2661 = !DILocation(line: 684, column: 24, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2663, file: !298, line: 684, column: 17)
!2663 = distinct !DILexicalBlock(scope: !2655, file: !298, line: 683, column: 57)
!2664 = !DILocation(line: 684, column: 32, scope: !2662)
!2665 = !DILocation(line: 684, column: 42, scope: !2662)
!2666 = !DILocation(line: 684, column: 17, scope: !2662)
!2667 = !DILocation(line: 684, column: 66, scope: !2662)
!2668 = !DILocation(line: 684, column: 17, scope: !2663)
!2669 = !DILocation(line: 685, column: 43, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2662, file: !298, line: 684, column: 72)
!2671 = !DILocation(line: 685, column: 53, scope: !2670)
!2672 = !DILocation(line: 685, column: 15, scope: !2670)
!2673 = !DILocation(line: 685, column: 23, scope: !2670)
!2674 = !DILocation(line: 685, column: 33, scope: !2670)
!2675 = !DILocation(line: 685, column: 41, scope: !2670)
!2676 = !DILocation(line: 688, column: 21, scope: !2670)
!2677 = !DILocation(line: 688, column: 31, scope: !2670)
!2678 = !DILocation(line: 688, column: 37, scope: !2670)
!2679 = !DILocation(line: 688, column: 45, scope: !2670)
!2680 = !DILocation(line: 688, column: 55, scope: !2670)
!2681 = !DILocation(line: 686, column: 15, scope: !2670)
!2682 = !DILocation(line: 689, column: 13, scope: !2670)
!2683 = !DILocation(line: 692, column: 21, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !2662, file: !298, line: 689, column: 20)
!2685 = !DILocation(line: 692, column: 31, scope: !2684)
!2686 = !DILocation(line: 692, column: 37, scope: !2684)
!2687 = !DILocation(line: 692, column: 45, scope: !2684)
!2688 = !DILocation(line: 692, column: 55, scope: !2684)
!2689 = !DILocation(line: 690, column: 15, scope: !2684)
!2690 = !DILocation(line: 694, column: 11, scope: !2663)
!2691 = !DILocation(line: 695, column: 9, scope: !2656)
!2692 = !DILocation(line: 697, column: 36, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2651, file: !298, line: 695, column: 16)
!2694 = !DILocation(line: 697, column: 46, scope: !2693)
!2695 = !DILocation(line: 696, column: 11, scope: !2693)
!2696 = !DILocation(line: 698, column: 11, scope: !2693)
!2697 = !DILocation(line: 698, column: 21, scope: !2693)
!2698 = !DILocation(line: 698, column: 27, scope: !2693)
!2699 = !DILocation(line: 699, column: 40, scope: !2693)
!2700 = !DILocation(line: 699, column: 54, scope: !2693)
!2701 = !DILocation(line: 699, column: 11, scope: !2693)
!2702 = !DILocation(line: 700, column: 40, scope: !2693)
!2703 = !DILocation(line: 700, column: 56, scope: !2693)
!2704 = !DILocation(line: 700, column: 11, scope: !2693)
!2705 = !DILocation(line: 702, column: 9, scope: !2652)
!2706 = !DILocation(line: 705, column: 11, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2489, file: !298, line: 705, column: 11)
!2708 = !DILocation(line: 705, column: 11, scope: !2489)
!2709 = !DILocation(line: 706, column: 9, scope: !2707)
!2710 = !DILocation(line: 708, column: 26, scope: !2489)
!2711 = !DILocation(line: 708, column: 35, scope: !2489)
!2712 = !DILocation(line: 708, column: 7, scope: !2489)
!2713 = !DILocation(line: 710, column: 41, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2489, file: !298, line: 710, column: 11)
!2715 = !DILocation(line: 710, column: 11, scope: !2714)
!2716 = !DILocation(line: 710, column: 11, scope: !2489)
!2717 = !DILocation(line: 711, column: 17, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2714, file: !298, line: 710, column: 55)
!2719 = !DILocation(line: 712, column: 17, scope: !2718)
!2720 = !DILocation(line: 712, column: 27, scope: !2718)
!2721 = !DILocation(line: 712, column: 43, scope: !2718)
!2722 = !DILocation(line: 712, column: 42, scope: !2718)
!2723 = !DILocation(line: 712, column: 33, scope: !2724)
!2724 = !DILexicalBlockFile(scope: !2718, file: !298, discriminator: 1)
!2725 = !DILocation(line: 711, column: 9, scope: !2724)
!2726 = !DILocation(line: 713, column: 7, scope: !2718)
!2727 = !DILocation(line: 568, column: 3, scope: !2728)
!2728 = !DILexicalBlockFile(scope: !605, file: !298, discriminator: 2)
!2729 = !DILocation(line: 716, column: 1, scope: !605)
!2730 = distinct !DISubprogram(name: "pkg_infodb_update", scope: !298, file: !298, line: 459, type: !2731, isLocal: true, isDefinition: true, scopeLine: 460, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !304)
!2731 = !DISubroutineType(types: !2732)
!2732 = !{null, !384, !323, !323}
!2733 = !DILocalVariable(name: "pkg", arg: 1, scope: !2730, file: !298, line: 459, type: !384)
!2734 = !DILocation(line: 459, column: 35, scope: !2730)
!2735 = !DILocalVariable(name: "cidir", arg: 2, scope: !2730, file: !298, line: 459, type: !323)
!2736 = !DILocation(line: 459, column: 46, scope: !2730)
!2737 = !DILocalVariable(name: "cidirrest", arg: 3, scope: !2730, file: !298, line: 459, type: !323)
!2738 = !DILocation(line: 459, column: 59, scope: !2730)
!2739 = !DILocalVariable(name: "match_node", scope: !2730, file: !298, line: 461, type: !609)
!2740 = !DILocation(line: 461, column: 22, scope: !2730)
!2741 = !DILocalVariable(name: "dsd", scope: !2730, file: !298, line: 462, type: !2742)
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64, align: 64)
!2743 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !2744, line: 127, baseType: !2745)
!2744 = !DIFile(filename: "/usr/include/dirent.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!2745 = !DICompositeType(tag: DW_TAG_structure_type, name: "__dirstream", file: !2744, line: 127, flags: DIFlagFwdDecl)
!2746 = !DILocation(line: 462, column: 8, scope: !2730)
!2747 = !DILocalVariable(name: "de", scope: !2730, file: !298, line: 463, type: !2748)
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2749, size: 64, align: 64)
!2749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dirent", file: !2750, line: 22, size: 2240, align: 64, elements: !2751)
!2750 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/dirent.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!2751 = !{!2752, !2753, !2754, !2755, !2757}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino", scope: !2749, file: !2750, line: 25, baseType: !568, size: 64, align: 64)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "d_off", scope: !2749, file: !2750, line: 26, baseType: !343, size: 64, align: 64, offset: 64)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "d_reclen", scope: !2749, file: !2750, line: 31, baseType: !1929, size: 16, align: 16, offset: 128)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "d_type", scope: !2749, file: !2750, line: 32, baseType: !2756, size: 8, align: 8, offset: 144)
!2756 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !2749, file: !2750, line: 33, baseType: !2758, size: 2048, align: 8, offset: 152)
!2758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 2048, align: 8, elements: !2759)
!2759 = !{!2760}
!2760 = !DISubrange(count: 256)
!2761 = !DILocation(line: 463, column: 18, scope: !2730)
!2762 = !DILocation(line: 466, column: 3, scope: !2730)
!2763 = !DILocation(line: 466, column: 24, scope: !2764)
!2764 = !DILexicalBlockFile(scope: !2730, file: !298, discriminator: 1)
!2765 = !DILocation(line: 466, column: 22, scope: !2764)
!2766 = !DILocation(line: 466, column: 3, scope: !2764)
!2767 = !DILocation(line: 467, column: 18, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2730, file: !298, line: 466, column: 37)
!2769 = !DILocation(line: 467, column: 30, scope: !2768)
!2770 = !DILocation(line: 467, column: 16, scope: !2768)
!2771 = !DILocation(line: 468, column: 21, scope: !2768)
!2772 = !DILocation(line: 468, column: 5, scope: !2768)
!2773 = !DILocation(line: 466, column: 3, scope: !2774)
!2774 = !DILexicalBlockFile(scope: !2730, file: !298, discriminator: 2)
!2775 = distinct !{!2775, !2762}
!2776 = !DILocation(line: 471, column: 22, scope: !2730)
!2777 = !DILocation(line: 471, column: 28, scope: !2730)
!2778 = !DILocation(line: 471, column: 33, scope: !2730)
!2779 = !DILocation(line: 471, column: 3, scope: !2730)
!2780 = !DILocation(line: 473, column: 3, scope: !2730)
!2781 = !DILocation(line: 473, column: 24, scope: !2764)
!2782 = !DILocation(line: 473, column: 22, scope: !2764)
!2783 = !DILocation(line: 473, column: 3, scope: !2764)
!2784 = !DILocation(line: 474, column: 12, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2730, file: !298, line: 473, column: 37)
!2786 = !DILocation(line: 474, column: 23, scope: !2785)
!2787 = !DILocation(line: 474, column: 35, scope: !2785)
!2788 = !DILocation(line: 474, column: 5, scope: !2785)
!2789 = !DILocation(line: 476, column: 17, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2785, file: !298, line: 476, column: 9)
!2791 = !DILocation(line: 476, column: 24, scope: !2790)
!2792 = !DILocation(line: 476, column: 36, scope: !2790)
!2793 = !DILocation(line: 476, column: 10, scope: !2790)
!2794 = !DILocation(line: 476, column: 9, scope: !2785)
!2795 = !DILocation(line: 478, column: 13, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2790, file: !298, line: 476, column: 47)
!2797 = !DILocation(line: 478, column: 20, scope: !2796)
!2798 = !DILocation(line: 478, column: 32, scope: !2796)
!2799 = !DILocation(line: 477, column: 7, scope: !2796)
!2800 = !DILocation(line: 479, column: 5, scope: !2796)
!2801 = !DILocation(line: 479, column: 17, scope: !2802)
!2802 = !DILexicalBlockFile(scope: !2803, file: !298, discriminator: 1)
!2803 = distinct !DILexicalBlock(scope: !2790, file: !298, line: 479, column: 15)
!2804 = !DILocation(line: 479, column: 16, scope: !2802)
!2805 = !DILocation(line: 479, column: 21, scope: !2802)
!2806 = !DILocation(line: 479, column: 15, scope: !2802)
!2807 = !DILocation(line: 481, column: 18, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2809, file: !298, line: 481, column: 11)
!2809 = distinct !DILexicalBlock(scope: !2803, file: !298, line: 479, column: 32)
!2810 = !DILocation(line: 481, column: 30, scope: !2808)
!2811 = !DILocation(line: 481, column: 11, scope: !2808)
!2812 = !DILocation(line: 481, column: 11, scope: !2809)
!2813 = !DILocation(line: 482, column: 17, scope: !2808)
!2814 = !DILocation(line: 483, column: 17, scope: !2808)
!2815 = !DILocation(line: 483, column: 29, scope: !2808)
!2816 = !DILocation(line: 482, column: 9, scope: !2817)
!2817 = !DILexicalBlockFile(scope: !2808, file: !298, discriminator: 1)
!2818 = !DILocation(line: 482, column: 9, scope: !2808)
!2819 = !DILocation(line: 485, column: 13, scope: !2809)
!2820 = !DILocation(line: 485, column: 25, scope: !2809)
!2821 = !DILocation(line: 484, column: 7, scope: !2809)
!2822 = !DILocation(line: 486, column: 5, scope: !2809)
!2823 = !DILocation(line: 487, column: 15, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2803, file: !298, line: 486, column: 12)
!2825 = !DILocation(line: 487, column: 79, scope: !2824)
!2826 = !DILocation(line: 487, column: 7, scope: !2827)
!2827 = !DILexicalBlockFile(scope: !2824, file: !298, discriminator: 1)
!2828 = !DILocation(line: 487, column: 7, scope: !2824)
!2829 = !DILocation(line: 489, column: 18, scope: !2785)
!2830 = !DILocation(line: 489, column: 30, scope: !2785)
!2831 = !DILocation(line: 489, column: 16, scope: !2785)
!2832 = !DILocation(line: 490, column: 21, scope: !2785)
!2833 = !DILocation(line: 490, column: 5, scope: !2785)
!2834 = !DILocation(line: 473, column: 3, scope: !2774)
!2835 = distinct !{!2835, !2780}
!2836 = !DILocation(line: 494, column: 3, scope: !2730)
!2837 = !DILocation(line: 494, column: 16, scope: !2730)
!2838 = !DILocation(line: 495, column: 17, scope: !2730)
!2839 = !DILocation(line: 495, column: 9, scope: !2730)
!2840 = !DILocation(line: 495, column: 7, scope: !2730)
!2841 = !DILocation(line: 496, column: 8, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2730, file: !298, line: 496, column: 7)
!2843 = !DILocation(line: 496, column: 7, scope: !2730)
!2844 = !DILocation(line: 497, column: 13, scope: !2842)
!2845 = !DILocation(line: 497, column: 5, scope: !2846)
!2846 = !DILexicalBlockFile(scope: !2842, file: !298, discriminator: 1)
!2847 = !DILocation(line: 497, column: 5, scope: !2842)
!2848 = !DILocation(line: 498, column: 44, scope: !2730)
!2849 = !DILocation(line: 498, column: 36, scope: !2730)
!2850 = !DILocation(line: 498, column: 3, scope: !2730)
!2851 = !DILocation(line: 499, column: 3, scope: !2730)
!2852 = !DILocation(line: 499, column: 24, scope: !2764)
!2853 = !DILocation(line: 499, column: 16, scope: !2764)
!2854 = !DILocation(line: 499, column: 14, scope: !2764)
!2855 = !DILocation(line: 499, column: 3, scope: !2764)
!2856 = !DILocalVariable(name: "newinfofilename", scope: !2857, file: !298, line: 500, type: !301)
!2857 = distinct !DILexicalBlock(scope: !2730, file: !298, line: 499, column: 31)
!2858 = !DILocation(line: 500, column: 17, scope: !2857)
!2859 = !DILocation(line: 502, column: 16, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2857, file: !298, line: 502, column: 9)
!2861 = !DILocation(line: 502, column: 20, scope: !2860)
!2862 = !DILocation(line: 502, column: 9, scope: !2860)
!2863 = !DILocation(line: 502, column: 9, scope: !2857)
!2864 = !DILocation(line: 504, column: 13, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2860, file: !298, line: 502, column: 34)
!2866 = !DILocation(line: 504, column: 17, scope: !2865)
!2867 = !DILocation(line: 503, column: 7, scope: !2865)
!2868 = !DILocation(line: 505, column: 7, scope: !2865)
!2869 = distinct !{!2869, !2851}
!2870 = !DILocation(line: 507, column: 16, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2857, file: !298, line: 507, column: 9)
!2872 = !DILocation(line: 507, column: 20, scope: !2871)
!2873 = !DILocation(line: 507, column: 9, scope: !2871)
!2874 = !DILocation(line: 507, column: 28, scope: !2871)
!2875 = !DILocation(line: 507, column: 9, scope: !2857)
!2876 = !DILocation(line: 508, column: 14, scope: !2871)
!2877 = !DILocation(line: 509, column: 14, scope: !2871)
!2878 = !DILocation(line: 509, column: 18, scope: !2871)
!2879 = !DILocation(line: 508, column: 7, scope: !2880)
!2880 = !DILexicalBlockFile(scope: !2871, file: !298, discriminator: 1)
!2881 = !DILocation(line: 508, column: 7, scope: !2871)
!2882 = !DILocation(line: 511, column: 12, scope: !2857)
!2883 = !DILocation(line: 511, column: 23, scope: !2857)
!2884 = !DILocation(line: 511, column: 27, scope: !2857)
!2885 = !DILocation(line: 511, column: 5, scope: !2857)
!2886 = !DILocation(line: 514, column: 15, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2857, file: !298, line: 514, column: 9)
!2888 = !DILocation(line: 514, column: 9, scope: !2887)
!2889 = !DILocation(line: 514, column: 22, scope: !2887)
!2890 = !DILocation(line: 514, column: 9, scope: !2857)
!2891 = !DILocation(line: 515, column: 14, scope: !2887)
!2892 = !DILocation(line: 515, column: 76, scope: !2887)
!2893 = !DILocation(line: 515, column: 7, scope: !2894)
!2894 = !DILexicalBlockFile(scope: !2887, file: !298, discriminator: 1)
!2895 = !DILocation(line: 515, column: 7, scope: !2887)
!2896 = !DILocation(line: 516, column: 15, scope: !2897)
!2897 = distinct !DILexicalBlock(scope: !2887, file: !298, line: 516, column: 13)
!2898 = !DILocation(line: 516, column: 14, scope: !2897)
!2899 = !DILocation(line: 516, column: 19, scope: !2897)
!2900 = !DILocation(line: 516, column: 13, scope: !2887)
!2901 = !DILocation(line: 517, column: 15, scope: !2897)
!2902 = !DILocation(line: 518, column: 15, scope: !2897)
!2903 = !DILocation(line: 518, column: 19, scope: !2897)
!2904 = !DILocation(line: 517, column: 7, scope: !2905)
!2905 = !DILexicalBlockFile(scope: !2897, file: !298, discriminator: 1)
!2906 = !DILocation(line: 517, column: 7, scope: !2897)
!2907 = !DILocation(line: 521, column: 16, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2857, file: !298, line: 521, column: 9)
!2909 = !DILocation(line: 521, column: 20, scope: !2908)
!2910 = !DILocation(line: 521, column: 9, scope: !2908)
!2911 = !DILocation(line: 521, column: 39, scope: !2908)
!2912 = !DILocation(line: 521, column: 9, scope: !2857)
!2913 = !DILocation(line: 523, column: 13, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2908, file: !298, line: 521, column: 45)
!2915 = !DILocation(line: 522, column: 7, scope: !2914)
!2916 = !DILocation(line: 524, column: 7, scope: !2914)
!2917 = !DILocation(line: 526, column: 16, scope: !2918)
!2918 = distinct !DILexicalBlock(scope: !2857, file: !298, line: 526, column: 9)
!2919 = !DILocation(line: 526, column: 20, scope: !2918)
!2920 = !DILocation(line: 526, column: 9, scope: !2918)
!2921 = !DILocation(line: 526, column: 36, scope: !2918)
!2922 = !DILocation(line: 526, column: 9, scope: !2857)
!2923 = !DILocation(line: 527, column: 15, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2918, file: !298, line: 526, column: 42)
!2925 = !DILocation(line: 528, column: 27, scope: !2924)
!2926 = !DILocation(line: 528, column: 33, scope: !2924)
!2927 = !DILocation(line: 528, column: 38, scope: !2924)
!2928 = !DILocation(line: 528, column: 15, scope: !2924)
!2929 = !DILocation(line: 527, column: 7, scope: !2930)
!2930 = !DILexicalBlockFile(scope: !2924, file: !298, discriminator: 1)
!2931 = !DILocation(line: 529, column: 7, scope: !2924)
!2932 = !DILocation(line: 533, column: 43, scope: !2857)
!2933 = !DILocation(line: 533, column: 49, scope: !2857)
!2934 = !DILocation(line: 533, column: 54, scope: !2857)
!2935 = !DILocation(line: 533, column: 65, scope: !2857)
!2936 = !DILocation(line: 533, column: 69, scope: !2857)
!2937 = !DILocation(line: 533, column: 23, scope: !2857)
!2938 = !DILocation(line: 533, column: 21, scope: !2857)
!2939 = !DILocation(line: 534, column: 16, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2857, file: !298, line: 534, column: 9)
!2941 = !DILocation(line: 534, column: 23, scope: !2940)
!2942 = !DILocation(line: 534, column: 9, scope: !2940)
!2943 = !DILocation(line: 534, column: 9, scope: !2857)
!2944 = !DILocation(line: 535, column: 15, scope: !2940)
!2945 = !DILocation(line: 536, column: 15, scope: !2940)
!2946 = !DILocation(line: 536, column: 22, scope: !2940)
!2947 = !DILocation(line: 535, column: 7, scope: !2948)
!2948 = !DILexicalBlockFile(scope: !2940, file: !298, discriminator: 1)
!2949 = !DILocation(line: 535, column: 7, scope: !2940)
!2950 = !DILocation(line: 540, column: 11, scope: !2857)
!2951 = !DILocation(line: 540, column: 18, scope: !2857)
!2952 = !DILocation(line: 538, column: 5, scope: !2857)
!2953 = !DILocation(line: 499, column: 3, scope: !2774)
!2954 = !DILocation(line: 542, column: 3, scope: !2730)
!2955 = !DILocation(line: 546, column: 7, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !2730, file: !298, line: 546, column: 7)
!2957 = !DILocation(line: 546, column: 12, scope: !2956)
!2958 = !DILocation(line: 546, column: 22, scope: !2956)
!2959 = !DILocation(line: 546, column: 35, scope: !2956)
!2960 = !DILocation(line: 546, column: 40, scope: !2956)
!2961 = !DILocation(line: 546, column: 50, scope: !2956)
!2962 = !DILocation(line: 546, column: 32, scope: !2956)
!2963 = !DILocation(line: 546, column: 60, scope: !2956)
!2964 = !DILocation(line: 547, column: 8, scope: !2956)
!2965 = !DILocation(line: 547, column: 13, scope: !2956)
!2966 = !DILocation(line: 547, column: 23, scope: !2956)
!2967 = !DILocation(line: 547, column: 33, scope: !2956)
!2968 = !DILocation(line: 547, column: 55, scope: !2956)
!2969 = !DILocation(line: 548, column: 8, scope: !2956)
!2970 = !DILocation(line: 548, column: 13, scope: !2956)
!2971 = !DILocation(line: 548, column: 23, scope: !2956)
!2972 = !DILocation(line: 548, column: 33, scope: !2956)
!2973 = !DILocation(line: 546, column: 7, scope: !2764)
!2974 = !DILocation(line: 549, column: 5, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2956, file: !298, line: 548, column: 57)
!2976 = !DILocation(line: 551, column: 24, scope: !2975)
!2977 = !DILocation(line: 551, column: 30, scope: !2975)
!2978 = !DILocation(line: 551, column: 35, scope: !2975)
!2979 = !DILocation(line: 551, column: 5, scope: !2975)
!2980 = !DILocation(line: 552, column: 3, scope: !2975)
!2981 = !DILocation(line: 554, column: 17, scope: !2730)
!2982 = !DILocation(line: 554, column: 3, scope: !2764)
!2983 = !DILocation(line: 555, column: 1, scope: !2730)
!2984 = distinct !DISubprogram(name: "pkg_update_fields", scope: !298, file: !298, line: 719, type: !2985, isLocal: true, isDefinition: true, scopeLine: 720, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !304)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{null, !384, !573}
!2987 = !DILocalVariable(name: "pkg", arg: 1, scope: !2984, file: !298, line: 719, type: !384)
!2988 = !DILocation(line: 719, column: 35, scope: !2984)
!2989 = !DILocalVariable(name: "newconffiles", arg: 2, scope: !2984, file: !298, line: 719, type: !573)
!2990 = !DILocation(line: 719, column: 68, scope: !2984)
!2991 = !DILocalVariable(name: "newdeplist", scope: !2984, file: !298, line: 721, type: !402)
!2992 = !DILocation(line: 721, column: 22, scope: !2984)
!2993 = !DILocalVariable(name: "newdeplistlastp", scope: !2984, file: !298, line: 721, type: !2994)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64, align: 64)
!2995 = !DILocation(line: 721, column: 36, scope: !2984)
!2996 = !DILocalVariable(name: "newdep", scope: !2984, file: !298, line: 722, type: !402)
!2997 = !DILocation(line: 722, column: 22, scope: !2984)
!2998 = !DILocalVariable(name: "dep", scope: !2984, file: !298, line: 722, type: !402)
!2999 = !DILocation(line: 722, column: 31, scope: !2984)
!3000 = !DILocalVariable(name: "newpossilastp", scope: !2984, file: !298, line: 723, type: !3001)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64, align: 64)
!3002 = !DILocation(line: 723, column: 21, scope: !2984)
!3003 = !DILocalVariable(name: "possi", scope: !2984, file: !298, line: 723, type: !398)
!3004 = !DILocation(line: 723, column: 37, scope: !2984)
!3005 = !DILocalVariable(name: "newpossi", scope: !2984, file: !298, line: 723, type: !398)
!3006 = !DILocation(line: 723, column: 45, scope: !2984)
!3007 = !DILocalVariable(name: "iconffileslastp", scope: !2984, file: !298, line: 724, type: !3008)
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64, align: 64)
!3009 = !DILocation(line: 724, column: 21, scope: !2984)
!3010 = !DILocalVariable(name: "newiconff", scope: !2984, file: !298, line: 724, type: !458)
!3011 = !DILocation(line: 724, column: 39, scope: !2984)
!3012 = !DILocalVariable(name: "cfile", scope: !2984, file: !298, line: 725, type: !522)
!3013 = !DILocation(line: 725, column: 30, scope: !2984)
!3014 = !DILocation(line: 731, column: 14, scope: !2984)
!3015 = !DILocation(line: 732, column: 19, scope: !2984)
!3016 = !DILocation(line: 733, column: 14, scope: !3017)
!3017 = distinct !DILexicalBlock(scope: !2984, file: !298, line: 733, column: 3)
!3018 = !DILocation(line: 733, column: 19, scope: !3017)
!3019 = !DILocation(line: 733, column: 29, scope: !3017)
!3020 = !DILocation(line: 733, column: 12, scope: !3017)
!3021 = !DILocation(line: 733, column: 8, scope: !3017)
!3022 = !DILocation(line: 733, column: 38, scope: !3023)
!3023 = !DILexicalBlockFile(scope: !3024, file: !298, discriminator: 1)
!3024 = distinct !DILexicalBlock(scope: !3017, file: !298, line: 733, column: 3)
!3025 = !DILocation(line: 733, column: 3, scope: !3023)
!3026 = !DILocation(line: 734, column: 14, scope: !3027)
!3027 = distinct !DILexicalBlock(scope: !3024, file: !298, line: 733, column: 60)
!3028 = !DILocation(line: 734, column: 12, scope: !3027)
!3029 = !DILocation(line: 735, column: 18, scope: !3027)
!3030 = !DILocation(line: 735, column: 5, scope: !3027)
!3031 = !DILocation(line: 735, column: 13, scope: !3027)
!3032 = !DILocation(line: 735, column: 16, scope: !3027)
!3033 = !DILocation(line: 736, column: 5, scope: !3027)
!3034 = !DILocation(line: 736, column: 13, scope: !3027)
!3035 = !DILocation(line: 736, column: 18, scope: !3027)
!3036 = !DILocation(line: 737, column: 5, scope: !3027)
!3037 = !DILocation(line: 737, column: 13, scope: !3027)
!3038 = !DILocation(line: 737, column: 18, scope: !3027)
!3039 = !DILocation(line: 738, column: 22, scope: !3027)
!3040 = !DILocation(line: 738, column: 30, scope: !3027)
!3041 = !DILocation(line: 738, column: 19, scope: !3027)
!3042 = !DILocation(line: 740, column: 18, scope: !3043)
!3043 = distinct !DILexicalBlock(scope: !3027, file: !298, line: 740, column: 5)
!3044 = !DILocation(line: 740, column: 23, scope: !3043)
!3045 = !DILocation(line: 740, column: 16, scope: !3043)
!3046 = !DILocation(line: 740, column: 10, scope: !3043)
!3047 = !DILocation(line: 740, column: 29, scope: !3048)
!3048 = !DILexicalBlockFile(scope: !3049, file: !298, discriminator: 1)
!3049 = distinct !DILexicalBlock(scope: !3043, file: !298, line: 740, column: 5)
!3050 = !DILocation(line: 740, column: 5, scope: !3048)
!3051 = !DILocation(line: 741, column: 18, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !3049, file: !298, line: 740, column: 57)
!3053 = !DILocation(line: 741, column: 16, scope: !3052)
!3054 = !DILocation(line: 742, column: 22, scope: !3052)
!3055 = !DILocation(line: 742, column: 7, scope: !3052)
!3056 = !DILocation(line: 742, column: 17, scope: !3052)
!3057 = !DILocation(line: 742, column: 20, scope: !3052)
!3058 = !DILocation(line: 743, column: 22, scope: !3052)
!3059 = !DILocation(line: 743, column: 29, scope: !3052)
!3060 = !DILocation(line: 743, column: 7, scope: !3052)
!3061 = !DILocation(line: 743, column: 17, scope: !3052)
!3062 = !DILocation(line: 743, column: 20, scope: !3052)
!3063 = !DILocation(line: 744, column: 7, scope: !3052)
!3064 = !DILocation(line: 744, column: 17, scope: !3052)
!3065 = !DILocation(line: 744, column: 22, scope: !3052)
!3066 = !DILocation(line: 745, column: 28, scope: !3052)
!3067 = !DILocation(line: 745, column: 38, scope: !3052)
!3068 = !DILocation(line: 745, column: 47, scope: !3052)
!3069 = !DILocation(line: 745, column: 7, scope: !3052)
!3070 = !DILocation(line: 745, column: 17, scope: !3052)
!3071 = !DILocation(line: 745, column: 26, scope: !3052)
!3072 = !DILocation(line: 746, column: 36, scope: !3052)
!3073 = !DILocation(line: 746, column: 43, scope: !3052)
!3074 = !DILocation(line: 746, column: 7, scope: !3052)
!3075 = !DILocation(line: 746, column: 17, scope: !3052)
!3076 = !DILocation(line: 746, column: 34, scope: !3052)
!3077 = !DILocation(line: 747, column: 24, scope: !3052)
!3078 = !DILocation(line: 747, column: 31, scope: !3052)
!3079 = !DILocation(line: 747, column: 7, scope: !3052)
!3080 = !DILocation(line: 747, column: 17, scope: !3052)
!3081 = !DILocation(line: 747, column: 22, scope: !3052)
!3082 = !DILocation(line: 748, column: 26, scope: !3052)
!3083 = !DILocation(line: 748, column: 33, scope: !3052)
!3084 = !DILocation(line: 748, column: 7, scope: !3052)
!3085 = !DILocation(line: 748, column: 17, scope: !3052)
!3086 = !DILocation(line: 748, column: 24, scope: !3052)
!3087 = !DILocation(line: 749, column: 11, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3052, file: !298, line: 749, column: 11)
!3089 = !DILocation(line: 749, column: 18, scope: !3088)
!3090 = !DILocation(line: 749, column: 25, scope: !3088)
!3091 = !DILocation(line: 749, column: 11, scope: !3052)
!3092 = !DILocation(line: 750, column: 9, scope: !3088)
!3093 = !DILocation(line: 750, column: 19, scope: !3088)
!3094 = !DILocation(line: 750, column: 29, scope: !3088)
!3095 = !DILocation(line: 750, column: 36, scope: !3088)
!3096 = !DILocation(line: 752, column: 29, scope: !3088)
!3097 = !DILocation(line: 752, column: 39, scope: !3088)
!3098 = !DILocation(line: 752, column: 9, scope: !3088)
!3099 = !DILocation(line: 753, column: 7, scope: !3052)
!3100 = !DILocation(line: 753, column: 17, scope: !3052)
!3101 = !DILocation(line: 753, column: 28, scope: !3052)
!3102 = !DILocation(line: 754, column: 24, scope: !3052)
!3103 = !DILocation(line: 754, column: 8, scope: !3052)
!3104 = !DILocation(line: 754, column: 22, scope: !3052)
!3105 = !DILocation(line: 755, column: 24, scope: !3052)
!3106 = !DILocation(line: 755, column: 34, scope: !3052)
!3107 = !DILocation(line: 755, column: 21, scope: !3052)
!3108 = !DILocation(line: 756, column: 5, scope: !3052)
!3109 = !DILocation(line: 740, column: 44, scope: !3110)
!3110 = !DILexicalBlockFile(scope: !3049, file: !298, discriminator: 2)
!3111 = !DILocation(line: 740, column: 51, scope: !3110)
!3112 = !DILocation(line: 740, column: 42, scope: !3110)
!3113 = !DILocation(line: 740, column: 5, scope: !3110)
!3114 = distinct !{!3114, !3115}
!3115 = !DILocation(line: 740, column: 5, scope: !3027)
!3116 = !DILocation(line: 757, column: 20, scope: !3027)
!3117 = !DILocation(line: 757, column: 25, scope: !3027)
!3118 = !DILocation(line: 757, column: 5, scope: !3027)
!3119 = !DILocation(line: 757, column: 13, scope: !3027)
!3120 = !DILocation(line: 757, column: 18, scope: !3027)
!3121 = !DILocation(line: 758, column: 24, scope: !3027)
!3122 = !DILocation(line: 758, column: 6, scope: !3027)
!3123 = !DILocation(line: 758, column: 22, scope: !3027)
!3124 = !DILocation(line: 759, column: 24, scope: !3027)
!3125 = !DILocation(line: 759, column: 32, scope: !3027)
!3126 = !DILocation(line: 759, column: 21, scope: !3027)
!3127 = !DILocation(line: 760, column: 3, scope: !3027)
!3128 = !DILocation(line: 733, column: 49, scope: !3129)
!3129 = !DILexicalBlockFile(scope: !3024, file: !298, discriminator: 2)
!3130 = !DILocation(line: 733, column: 54, scope: !3129)
!3131 = !DILocation(line: 733, column: 47, scope: !3129)
!3132 = !DILocation(line: 733, column: 3, scope: !3129)
!3133 = distinct !{!3133, !3134}
!3134 = !DILocation(line: 733, column: 3, scope: !2984)
!3135 = !DILocation(line: 767, column: 25, scope: !2984)
!3136 = !DILocation(line: 767, column: 31, scope: !2984)
!3137 = !DILocation(line: 767, column: 36, scope: !2984)
!3138 = !DILocation(line: 767, column: 46, scope: !2984)
!3139 = !DILocation(line: 767, column: 55, scope: !2984)
!3140 = !DILocation(line: 767, column: 3, scope: !2984)
!3141 = !DILocation(line: 770, column: 30, scope: !2984)
!3142 = !DILocation(line: 770, column: 35, scope: !2984)
!3143 = !DILocation(line: 770, column: 45, scope: !2984)
!3144 = !DILocation(line: 770, column: 3, scope: !2984)
!3145 = !DILocation(line: 770, column: 8, scope: !2984)
!3146 = !DILocation(line: 770, column: 18, scope: !2984)
!3147 = !DILocation(line: 770, column: 28, scope: !2984)
!3148 = !DILocation(line: 771, column: 30, scope: !2984)
!3149 = !DILocation(line: 771, column: 35, scope: !2984)
!3150 = !DILocation(line: 771, column: 45, scope: !2984)
!3151 = !DILocation(line: 771, column: 3, scope: !2984)
!3152 = !DILocation(line: 771, column: 8, scope: !2984)
!3153 = !DILocation(line: 771, column: 18, scope: !2984)
!3154 = !DILocation(line: 771, column: 28, scope: !2984)
!3155 = !DILocation(line: 772, column: 32, scope: !2984)
!3156 = !DILocation(line: 772, column: 37, scope: !2984)
!3157 = !DILocation(line: 772, column: 47, scope: !2984)
!3158 = !DILocation(line: 772, column: 3, scope: !2984)
!3159 = !DILocation(line: 772, column: 8, scope: !2984)
!3160 = !DILocation(line: 772, column: 18, scope: !2984)
!3161 = !DILocation(line: 772, column: 30, scope: !2984)
!3162 = !DILocation(line: 773, column: 31, scope: !2984)
!3163 = !DILocation(line: 773, column: 36, scope: !2984)
!3164 = !DILocation(line: 773, column: 46, scope: !2984)
!3165 = !DILocation(line: 773, column: 3, scope: !2984)
!3166 = !DILocation(line: 773, column: 8, scope: !2984)
!3167 = !DILocation(line: 773, column: 18, scope: !2984)
!3168 = !DILocation(line: 773, column: 29, scope: !2984)
!3169 = !DILocation(line: 774, column: 27, scope: !2984)
!3170 = !DILocation(line: 774, column: 32, scope: !2984)
!3171 = !DILocation(line: 774, column: 42, scope: !2984)
!3172 = !DILocation(line: 774, column: 3, scope: !2984)
!3173 = !DILocation(line: 774, column: 8, scope: !2984)
!3174 = !DILocation(line: 774, column: 18, scope: !2984)
!3175 = !DILocation(line: 774, column: 25, scope: !2984)
!3176 = !DILocation(line: 775, column: 25, scope: !2984)
!3177 = !DILocation(line: 775, column: 30, scope: !2984)
!3178 = !DILocation(line: 775, column: 40, scope: !2984)
!3179 = !DILocation(line: 775, column: 3, scope: !2984)
!3180 = !DILocation(line: 775, column: 8, scope: !2984)
!3181 = !DILocation(line: 775, column: 18, scope: !2984)
!3182 = !DILocation(line: 775, column: 23, scope: !2984)
!3183 = !DILocation(line: 776, column: 37, scope: !2984)
!3184 = !DILocation(line: 776, column: 42, scope: !2984)
!3185 = !DILocation(line: 776, column: 52, scope: !2984)
!3186 = !DILocation(line: 776, column: 3, scope: !2984)
!3187 = !DILocation(line: 776, column: 8, scope: !2984)
!3188 = !DILocation(line: 776, column: 18, scope: !2984)
!3189 = !DILocation(line: 776, column: 35, scope: !2984)
!3190 = !DILocation(line: 777, column: 34, scope: !2984)
!3191 = !DILocation(line: 777, column: 39, scope: !2984)
!3192 = !DILocation(line: 777, column: 49, scope: !2984)
!3193 = !DILocation(line: 777, column: 3, scope: !2984)
!3194 = !DILocation(line: 777, column: 8, scope: !2984)
!3195 = !DILocation(line: 777, column: 18, scope: !2984)
!3196 = !DILocation(line: 777, column: 32, scope: !2984)
!3197 = !DILocation(line: 778, column: 3, scope: !2984)
!3198 = !DILocation(line: 778, column: 8, scope: !2984)
!3199 = !DILocation(line: 778, column: 18, scope: !2984)
!3200 = !DILocation(line: 778, column: 28, scope: !2984)
!3201 = !DILocation(line: 778, column: 33, scope: !2984)
!3202 = !DILocation(line: 778, column: 43, scope: !2984)
!3203 = !DILocation(line: 779, column: 27, scope: !2984)
!3204 = !DILocation(line: 779, column: 32, scope: !2984)
!3205 = !DILocation(line: 779, column: 42, scope: !2984)
!3206 = !DILocation(line: 779, column: 3, scope: !2984)
!3207 = !DILocation(line: 779, column: 8, scope: !2984)
!3208 = !DILocation(line: 779, column: 18, scope: !2984)
!3209 = !DILocation(line: 779, column: 25, scope: !2984)
!3210 = !DILocation(line: 780, column: 25, scope: !2984)
!3211 = !DILocation(line: 780, column: 30, scope: !2984)
!3212 = !DILocation(line: 780, column: 40, scope: !2984)
!3213 = !DILocation(line: 780, column: 3, scope: !2984)
!3214 = !DILocation(line: 780, column: 8, scope: !2984)
!3215 = !DILocation(line: 780, column: 18, scope: !2984)
!3216 = !DILocation(line: 780, column: 23, scope: !2984)
!3217 = !DILocation(line: 783, column: 3, scope: !2984)
!3218 = !DILocation(line: 783, column: 8, scope: !2984)
!3219 = !DILocation(line: 783, column: 18, scope: !2984)
!3220 = !DILocation(line: 783, column: 28, scope: !2984)
!3221 = !DILocation(line: 784, column: 22, scope: !2984)
!3222 = !DILocation(line: 784, column: 27, scope: !2984)
!3223 = !DILocation(line: 784, column: 37, scope: !2984)
!3224 = !DILocation(line: 784, column: 19, scope: !2984)
!3225 = !DILocation(line: 785, column: 16, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !2984, file: !298, line: 785, column: 3)
!3227 = !DILocation(line: 785, column: 30, scope: !3226)
!3228 = !DILocation(line: 785, column: 14, scope: !3226)
!3229 = !DILocation(line: 785, column: 8, scope: !3226)
!3230 = !DILocation(line: 785, column: 36, scope: !3231)
!3231 = !DILexicalBlockFile(scope: !3232, file: !298, discriminator: 1)
!3232 = distinct !DILexicalBlock(scope: !3226, file: !298, line: 785, column: 3)
!3233 = !DILocation(line: 785, column: 3, scope: !3231)
!3234 = !DILocation(line: 786, column: 17, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3232, file: !298, line: 785, column: 64)
!3236 = !DILocation(line: 786, column: 15, scope: !3235)
!3237 = !DILocation(line: 787, column: 5, scope: !3235)
!3238 = !DILocation(line: 787, column: 16, scope: !3235)
!3239 = !DILocation(line: 787, column: 21, scope: !3235)
!3240 = !DILocation(line: 788, column: 33, scope: !3235)
!3241 = !DILocation(line: 788, column: 40, scope: !3235)
!3242 = !DILocation(line: 788, column: 50, scope: !3235)
!3243 = !DILocation(line: 788, column: 23, scope: !3235)
!3244 = !DILocation(line: 788, column: 5, scope: !3235)
!3245 = !DILocation(line: 788, column: 16, scope: !3235)
!3246 = !DILocation(line: 788, column: 21, scope: !3235)
!3247 = !DILocation(line: 789, column: 33, scope: !3235)
!3248 = !DILocation(line: 789, column: 40, scope: !3235)
!3249 = !DILocation(line: 789, column: 50, scope: !3235)
!3250 = !DILocation(line: 789, column: 23, scope: !3235)
!3251 = !DILocation(line: 789, column: 5, scope: !3235)
!3252 = !DILocation(line: 789, column: 16, scope: !3235)
!3253 = !DILocation(line: 789, column: 21, scope: !3235)
!3254 = !DILocation(line: 790, column: 30, scope: !3235)
!3255 = !DILocation(line: 790, column: 37, scope: !3235)
!3256 = !DILocation(line: 790, column: 47, scope: !3235)
!3257 = !DILocation(line: 790, column: 53, scope: !3235)
!3258 = !DILocation(line: 790, column: 28, scope: !3235)
!3259 = !DILocation(line: 790, column: 27, scope: !3235)
!3260 = !DILocation(line: 790, column: 5, scope: !3235)
!3261 = !DILocation(line: 790, column: 16, scope: !3235)
!3262 = !DILocation(line: 790, column: 25, scope: !3235)
!3263 = !DILocation(line: 791, column: 24, scope: !3235)
!3264 = !DILocation(line: 791, column: 6, scope: !3235)
!3265 = !DILocation(line: 791, column: 22, scope: !3235)
!3266 = !DILocation(line: 792, column: 24, scope: !3235)
!3267 = !DILocation(line: 792, column: 35, scope: !3235)
!3268 = !DILocation(line: 792, column: 21, scope: !3235)
!3269 = !DILocation(line: 793, column: 3, scope: !3235)
!3270 = !DILocation(line: 785, column: 51, scope: !3271)
!3271 = !DILexicalBlockFile(scope: !3232, file: !298, discriminator: 2)
!3272 = !DILocation(line: 785, column: 58, scope: !3271)
!3273 = !DILocation(line: 785, column: 49, scope: !3271)
!3274 = !DILocation(line: 785, column: 3, scope: !3271)
!3275 = distinct !{!3275, !3276}
!3276 = !DILocation(line: 785, column: 3, scope: !2984)
!3277 = !DILocation(line: 797, column: 25, scope: !2984)
!3278 = !DILocation(line: 797, column: 30, scope: !2984)
!3279 = !DILocation(line: 797, column: 40, scope: !2984)
!3280 = !DILocation(line: 797, column: 3, scope: !2984)
!3281 = !DILocation(line: 797, column: 8, scope: !2984)
!3282 = !DILocation(line: 797, column: 18, scope: !2984)
!3283 = !DILocation(line: 797, column: 23, scope: !2984)
!3284 = !DILocation(line: 798, column: 1, scope: !2984)
!3285 = distinct !DISubprogram(name: "pkg_disappear_others", scope: !298, file: !298, line: 837, type: !620, isLocal: true, isDefinition: true, scopeLine: 838, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !304)
!3286 = !DILocalVariable(name: "pkg", arg: 1, scope: !3285, file: !298, line: 837, type: !384)
!3287 = !DILocation(line: 837, column: 38, scope: !3285)
!3288 = !DILocalVariable(name: "iter", scope: !3285, file: !298, line: 839, type: !3289)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64, align: 64)
!3290 = !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_hash_iter", file: !4, line: 314, flags: DIFlagFwdDecl)
!3291 = !DILocation(line: 839, column: 25, scope: !3285)
!3292 = !DILocalVariable(name: "otherpkg", scope: !3285, file: !298, line: 840, type: !384)
!3293 = !DILocation(line: 840, column: 19, scope: !3285)
!3294 = !DILocalVariable(name: "cfile", scope: !3285, file: !298, line: 841, type: !522)
!3295 = !DILocation(line: 841, column: 30, scope: !3285)
!3296 = !DILocalVariable(name: "pdep", scope: !3285, file: !298, line: 842, type: !398)
!3297 = !DILocation(line: 842, column: 20, scope: !3285)
!3298 = !DILocalVariable(name: "providecheck", scope: !3285, file: !298, line: 843, type: !402)
!3299 = !DILocation(line: 843, column: 22, scope: !3285)
!3300 = !DILocalVariable(name: "depprobwhy", scope: !3285, file: !298, line: 844, type: !596)
!3301 = !DILocation(line: 844, column: 17, scope: !3285)
!3302 = !DILocation(line: 846, column: 10, scope: !3285)
!3303 = !DILocation(line: 846, column: 8, scope: !3285)
!3304 = !DILocation(line: 847, column: 3, scope: !3285)
!3305 = !DILocation(line: 847, column: 45, scope: !3306)
!3306 = !DILexicalBlockFile(scope: !3285, file: !298, discriminator: 1)
!3307 = !DILocation(line: 847, column: 22, scope: !3306)
!3308 = !DILocation(line: 847, column: 20, scope: !3306)
!3309 = !DILocation(line: 847, column: 52, scope: !3306)
!3310 = !DILocation(line: 847, column: 3, scope: !3306)
!3311 = !DILocation(line: 848, column: 31, scope: !3312)
!3312 = distinct !DILexicalBlock(scope: !3285, file: !298, line: 847, column: 60)
!3313 = !DILocation(line: 848, column: 5, scope: !3312)
!3314 = !DILocation(line: 850, column: 9, scope: !3315)
!3315 = distinct !DILexicalBlock(scope: !3312, file: !298, line: 850, column: 9)
!3316 = !DILocation(line: 850, column: 21, scope: !3315)
!3317 = !DILocation(line: 850, column: 18, scope: !3315)
!3318 = !DILocation(line: 850, column: 25, scope: !3315)
!3319 = !DILocation(line: 851, column: 9, scope: !3315)
!3320 = !DILocation(line: 851, column: 19, scope: !3315)
!3321 = !DILocation(line: 851, column: 26, scope: !3315)
!3322 = !DILocation(line: 851, column: 51, scope: !3315)
!3323 = !DILocation(line: 852, column: 9, scope: !3315)
!3324 = !DILocation(line: 852, column: 19, scope: !3315)
!3325 = !DILocation(line: 852, column: 26, scope: !3315)
!3326 = !DILocation(line: 852, column: 50, scope: !3315)
!3327 = !DILocation(line: 853, column: 9, scope: !3315)
!3328 = !DILocation(line: 853, column: 19, scope: !3315)
!3329 = !DILocation(line: 853, column: 31, scope: !3315)
!3330 = !DILocation(line: 853, column: 38, scope: !3315)
!3331 = !DILocation(line: 853, column: 59, scope: !3315)
!3332 = !DILocation(line: 854, column: 10, scope: !3315)
!3333 = !DILocation(line: 854, column: 20, scope: !3315)
!3334 = !DILocation(line: 850, column: 9, scope: !3335)
!3335 = !DILexicalBlockFile(scope: !3312, file: !298, discriminator: 1)
!3336 = !DILocation(line: 855, column: 7, scope: !3315)
!3337 = distinct !{!3337, !3304}
!3338 = !DILocation(line: 859, column: 9, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3312, file: !298, line: 859, column: 9)
!3340 = !DILocation(line: 859, column: 14, scope: !3339)
!3341 = !DILocation(line: 859, column: 24, scope: !3339)
!3342 = !DILocation(line: 859, column: 34, scope: !3339)
!3343 = !DILocation(line: 859, column: 56, scope: !3339)
!3344 = !DILocation(line: 860, column: 9, scope: !3339)
!3345 = !DILocation(line: 860, column: 19, scope: !3339)
!3346 = !DILocation(line: 860, column: 29, scope: !3339)
!3347 = !DILocation(line: 860, column: 39, scope: !3339)
!3348 = !DILocation(line: 860, column: 61, scope: !3339)
!3349 = !DILocation(line: 861, column: 9, scope: !3339)
!3350 = !DILocation(line: 861, column: 19, scope: !3339)
!3351 = !DILocation(line: 861, column: 26, scope: !3339)
!3352 = !DILocation(line: 861, column: 31, scope: !3339)
!3353 = !DILocation(line: 861, column: 23, scope: !3339)
!3354 = !DILocation(line: 859, column: 9, scope: !3335)
!3355 = !DILocation(line: 862, column: 7, scope: !3339)
!3356 = !DILocation(line: 865, column: 20, scope: !3312)
!3357 = !DILocation(line: 865, column: 11, scope: !3312)
!3358 = !DILocation(line: 864, column: 5, scope: !3312)
!3359 = !DILocation(line: 867, column: 9, scope: !3360)
!3360 = distinct !DILexicalBlock(scope: !3312, file: !298, line: 867, column: 9)
!3361 = !DILocation(line: 867, column: 19, scope: !3360)
!3362 = !DILocation(line: 867, column: 31, scope: !3360)
!3363 = !DILocation(line: 867, column: 38, scope: !3360)
!3364 = !DILocation(line: 867, column: 59, scope: !3360)
!3365 = !DILocation(line: 868, column: 9, scope: !3360)
!3366 = !DILocation(line: 868, column: 19, scope: !3360)
!3367 = !DILocation(line: 868, column: 31, scope: !3360)
!3368 = !DILocation(line: 868, column: 38, scope: !3360)
!3369 = !DILocation(line: 867, column: 9, scope: !3335)
!3370 = !DILocation(line: 869, column: 106, scope: !3360)
!3371 = !DILocation(line: 869, column: 97, scope: !3360)
!3372 = !DILocation(line: 869, column: 130, scope: !3360)
!3373 = !DILocation(line: 869, column: 140, scope: !3360)
!3374 = !DILocation(line: 869, column: 152, scope: !3360)
!3375 = !DILocation(line: 869, column: 7, scope: !3376)
!3376 = !DILexicalBlockFile(scope: !3360, file: !298, discriminator: 1)
!3377 = !DILocation(line: 869, column: 7, scope: !3360)
!3378 = !DILocation(line: 873, column: 18, scope: !3379)
!3379 = distinct !DILexicalBlock(scope: !3312, file: !298, line: 873, column: 5)
!3380 = !DILocation(line: 873, column: 28, scope: !3379)
!3381 = !DILocation(line: 873, column: 16, scope: !3379)
!3382 = !DILocation(line: 873, column: 10, scope: !3379)
!3383 = !DILocation(line: 874, column: 10, scope: !3384)
!3384 = distinct !DILexicalBlock(scope: !3379, file: !298, line: 873, column: 5)
!3385 = !DILocation(line: 874, column: 16, scope: !3384)
!3386 = !DILocation(line: 874, column: 26, scope: !3387)
!3387 = !DILexicalBlockFile(scope: !3384, file: !298, discriminator: 1)
!3388 = !DILocation(line: 874, column: 33, scope: !3387)
!3389 = !DILocation(line: 874, column: 43, scope: !3387)
!3390 = !DILocation(line: 874, column: 19, scope: !3387)
!3391 = !DILocation(line: 874, column: 55, scope: !3387)
!3392 = !DILocation(line: 873, column: 5, scope: !3393)
!3393 = !DILexicalBlockFile(scope: !3379, file: !298, discriminator: 1)
!3394 = !DILocation(line: 873, column: 5, scope: !3395)
!3395 = !DILexicalBlockFile(scope: !3379, file: !298, discriminator: 2)
!3396 = !DILocation(line: 875, column: 18, scope: !3384)
!3397 = !DILocation(line: 875, column: 25, scope: !3384)
!3398 = !DILocation(line: 875, column: 16, scope: !3384)
!3399 = !DILocation(line: 873, column: 5, scope: !3400)
!3400 = !DILexicalBlockFile(scope: !3384, file: !298, discriminator: 3)
!3401 = distinct !{!3401, !3402}
!3402 = !DILocation(line: 873, column: 5, scope: !3312)
!3403 = !DILocation(line: 876, column: 10, scope: !3404)
!3404 = distinct !DILexicalBlock(scope: !3312, file: !298, line: 876, column: 9)
!3405 = !DILocation(line: 876, column: 9, scope: !3312)
!3406 = !DILocation(line: 877, column: 7, scope: !3407)
!3407 = distinct !DILexicalBlock(scope: !3404, file: !298, line: 876, column: 17)
!3408 = !DILocation(line: 878, column: 7, scope: !3407)
!3409 = !DILocation(line: 880, column: 18, scope: !3410)
!3410 = distinct !DILexicalBlock(scope: !3312, file: !298, line: 880, column: 5)
!3411 = !DILocation(line: 880, column: 28, scope: !3410)
!3412 = !DILocation(line: 880, column: 16, scope: !3410)
!3413 = !DILocation(line: 880, column: 10, scope: !3410)
!3414 = !DILocation(line: 881, column: 10, scope: !3415)
!3415 = distinct !DILexicalBlock(scope: !3410, file: !298, line: 880, column: 5)
!3416 = !DILocation(line: 881, column: 16, scope: !3415)
!3417 = !DILocation(line: 881, column: 37, scope: !3418)
!3418 = !DILexicalBlockFile(scope: !3415, file: !298, discriminator: 1)
!3419 = !DILocation(line: 881, column: 44, scope: !3418)
!3420 = !DILocation(line: 881, column: 54, scope: !3418)
!3421 = !DILocation(line: 881, column: 20, scope: !3418)
!3422 = !DILocation(line: 881, column: 19, scope: !3418)
!3423 = !DILocation(line: 880, column: 5, scope: !3424)
!3424 = !DILexicalBlockFile(scope: !3410, file: !298, discriminator: 1)
!3425 = !DILocation(line: 880, column: 5, scope: !3426)
!3426 = !DILexicalBlockFile(scope: !3410, file: !298, discriminator: 2)
!3427 = !DILocation(line: 882, column: 18, scope: !3415)
!3428 = !DILocation(line: 882, column: 25, scope: !3415)
!3429 = !DILocation(line: 882, column: 16, scope: !3415)
!3430 = !DILocation(line: 880, column: 5, scope: !3431)
!3431 = !DILexicalBlockFile(scope: !3415, file: !298, discriminator: 3)
!3432 = distinct !{!3432, !3433}
!3433 = !DILocation(line: 880, column: 5, scope: !3312)
!3434 = !DILocation(line: 883, column: 9, scope: !3435)
!3435 = distinct !DILexicalBlock(scope: !3312, file: !298, line: 883, column: 9)
!3436 = !DILocation(line: 883, column: 9, scope: !3312)
!3437 = !DILocation(line: 884, column: 7, scope: !3435)
!3438 = !DILocation(line: 887, column: 5, scope: !3312)
!3439 = !DILocation(line: 887, column: 15, scope: !3312)
!3440 = !DILocation(line: 887, column: 27, scope: !3312)
!3441 = !DILocation(line: 887, column: 34, scope: !3312)
!3442 = !DILocation(line: 888, column: 5, scope: !3312)
!3443 = !DILocation(line: 889, column: 17, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3312, file: !298, line: 889, column: 5)
!3445 = !DILocation(line: 889, column: 27, scope: !3444)
!3446 = !DILocation(line: 889, column: 32, scope: !3444)
!3447 = !DILocation(line: 889, column: 41, scope: !3444)
!3448 = !DILocation(line: 889, column: 15, scope: !3444)
!3449 = !DILocation(line: 889, column: 10, scope: !3444)
!3450 = !DILocation(line: 890, column: 10, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3444, file: !298, line: 889, column: 5)
!3452 = !DILocation(line: 889, column: 5, scope: !3453)
!3453 = !DILexicalBlockFile(scope: !3444, file: !298, discriminator: 1)
!3454 = !DILocation(line: 892, column: 11, scope: !3455)
!3455 = distinct !DILexicalBlock(scope: !3456, file: !298, line: 892, column: 11)
!3456 = distinct !DILexicalBlock(scope: !3451, file: !298, line: 891, column: 33)
!3457 = !DILocation(line: 892, column: 17, scope: !3455)
!3458 = !DILocation(line: 892, column: 21, scope: !3455)
!3459 = !DILocation(line: 892, column: 26, scope: !3455)
!3460 = !DILocation(line: 892, column: 41, scope: !3455)
!3461 = !DILocation(line: 893, column: 11, scope: !3455)
!3462 = !DILocation(line: 893, column: 17, scope: !3455)
!3463 = !DILocation(line: 893, column: 21, scope: !3455)
!3464 = !DILocation(line: 893, column: 26, scope: !3455)
!3465 = !DILocation(line: 893, column: 44, scope: !3455)
!3466 = !DILocation(line: 894, column: 11, scope: !3455)
!3467 = !DILocation(line: 894, column: 17, scope: !3455)
!3468 = !DILocation(line: 894, column: 21, scope: !3455)
!3469 = !DILocation(line: 894, column: 26, scope: !3455)
!3470 = !DILocation(line: 892, column: 11, scope: !3471)
!3471 = !DILexicalBlockFile(scope: !3456, file: !298, discriminator: 1)
!3472 = !DILocation(line: 895, column: 9, scope: !3455)
!3473 = !DILocation(line: 897, column: 19, scope: !3474)
!3474 = distinct !DILexicalBlock(scope: !3456, file: !298, line: 897, column: 11)
!3475 = !DILocation(line: 897, column: 25, scope: !3474)
!3476 = !DILocation(line: 897, column: 11, scope: !3474)
!3477 = !DILocation(line: 897, column: 11, scope: !3456)
!3478 = !DILocation(line: 898, column: 9, scope: !3474)
!3479 = !DILocation(line: 900, column: 7, scope: !3456)
!3480 = !DILocation(line: 902, column: 24, scope: !3456)
!3481 = !DILocation(line: 901, column: 7, scope: !3456)
!3482 = !DILocation(line: 903, column: 7, scope: !3456)
!3483 = !DILocation(line: 891, column: 17, scope: !3451)
!3484 = !DILocation(line: 891, column: 23, scope: !3451)
!3485 = !DILocation(line: 891, column: 15, scope: !3451)
!3486 = !DILocation(line: 889, column: 5, scope: !3487)
!3487 = !DILexicalBlockFile(scope: !3451, file: !298, discriminator: 2)
!3488 = distinct !{!3488, !3489}
!3489 = !DILocation(line: 889, column: 5, scope: !3312)
!3490 = !DILocation(line: 905, column: 10, scope: !3491)
!3491 = distinct !DILexicalBlock(scope: !3312, file: !298, line: 905, column: 9)
!3492 = !DILocation(line: 905, column: 9, scope: !3312)
!3493 = !DILocation(line: 907, column: 27, scope: !3494)
!3494 = distinct !DILexicalBlock(scope: !3495, file: !298, line: 907, column: 7)
!3495 = distinct !DILexicalBlock(scope: !3491, file: !298, line: 905, column: 16)
!3496 = !DILocation(line: 907, column: 37, scope: !3494)
!3497 = !DILocation(line: 907, column: 47, scope: !3494)
!3498 = !DILocation(line: 907, column: 25, scope: !3494)
!3499 = !DILocation(line: 907, column: 12, scope: !3494)
!3500 = !DILocation(line: 908, column: 12, scope: !3501)
!3501 = distinct !DILexicalBlock(scope: !3494, file: !298, line: 907, column: 7)
!3502 = !DILocation(line: 907, column: 7, scope: !3503)
!3503 = !DILexicalBlockFile(scope: !3494, file: !298, discriminator: 1)
!3504 = !DILocation(line: 910, column: 13, scope: !3505)
!3505 = distinct !DILexicalBlock(scope: !3506, file: !298, line: 910, column: 13)
!3506 = distinct !DILexicalBlock(scope: !3501, file: !298, line: 909, column: 47)
!3507 = !DILocation(line: 910, column: 27, scope: !3505)
!3508 = !DILocation(line: 910, column: 32, scope: !3505)
!3509 = !DILocation(line: 910, column: 13, scope: !3506)
!3510 = !DILocation(line: 911, column: 11, scope: !3505)
!3511 = !DILocation(line: 913, column: 21, scope: !3512)
!3512 = distinct !DILexicalBlock(scope: !3506, file: !298, line: 913, column: 9)
!3513 = !DILocation(line: 913, column: 35, scope: !3512)
!3514 = !DILocation(line: 913, column: 41, scope: !3512)
!3515 = !DILocation(line: 913, column: 45, scope: !3512)
!3516 = !DILocation(line: 913, column: 54, scope: !3512)
!3517 = !DILocation(line: 913, column: 19, scope: !3512)
!3518 = !DILocation(line: 913, column: 14, scope: !3512)
!3519 = !DILocation(line: 914, column: 14, scope: !3520)
!3520 = distinct !DILexicalBlock(scope: !3512, file: !298, line: 913, column: 9)
!3521 = !DILocation(line: 913, column: 9, scope: !3522)
!3522 = !DILexicalBlockFile(scope: !3512, file: !298, discriminator: 1)
!3523 = !DILocation(line: 916, column: 15, scope: !3524)
!3524 = distinct !DILexicalBlock(scope: !3525, file: !298, line: 916, column: 15)
!3525 = distinct !DILexicalBlock(scope: !3520, file: !298, line: 915, column: 37)
!3526 = !DILocation(line: 916, column: 21, scope: !3524)
!3527 = !DILocation(line: 916, column: 25, scope: !3524)
!3528 = !DILocation(line: 916, column: 30, scope: !3524)
!3529 = !DILocation(line: 916, column: 45, scope: !3524)
!3530 = !DILocation(line: 917, column: 15, scope: !3524)
!3531 = !DILocation(line: 917, column: 21, scope: !3524)
!3532 = !DILocation(line: 917, column: 25, scope: !3524)
!3533 = !DILocation(line: 917, column: 30, scope: !3524)
!3534 = !DILocation(line: 917, column: 48, scope: !3524)
!3535 = !DILocation(line: 918, column: 15, scope: !3524)
!3536 = !DILocation(line: 918, column: 21, scope: !3524)
!3537 = !DILocation(line: 918, column: 25, scope: !3524)
!3538 = !DILocation(line: 918, column: 30, scope: !3524)
!3539 = !DILocation(line: 916, column: 15, scope: !3540)
!3540 = !DILexicalBlockFile(scope: !3525, file: !298, discriminator: 1)
!3541 = !DILocation(line: 919, column: 13, scope: !3524)
!3542 = !DILocation(line: 921, column: 23, scope: !3543)
!3543 = distinct !DILexicalBlock(scope: !3525, file: !298, line: 921, column: 15)
!3544 = !DILocation(line: 921, column: 29, scope: !3543)
!3545 = !DILocation(line: 921, column: 15, scope: !3543)
!3546 = !DILocation(line: 921, column: 15, scope: !3525)
!3547 = !DILocation(line: 922, column: 13, scope: !3543)
!3548 = !DILocation(line: 924, column: 11, scope: !3525)
!3549 = !DILocation(line: 927, column: 17, scope: !3525)
!3550 = !DILocation(line: 927, column: 31, scope: !3525)
!3551 = !DILocation(line: 927, column: 37, scope: !3525)
!3552 = !DILocation(line: 927, column: 41, scope: !3525)
!3553 = !DILocation(line: 927, column: 58, scope: !3525)
!3554 = !DILocation(line: 925, column: 11, scope: !3525)
!3555 = !DILocation(line: 928, column: 11, scope: !3525)
!3556 = !DILocation(line: 915, column: 21, scope: !3520)
!3557 = !DILocation(line: 915, column: 27, scope: !3520)
!3558 = !DILocation(line: 915, column: 19, scope: !3520)
!3559 = !DILocation(line: 913, column: 9, scope: !3560)
!3560 = !DILexicalBlockFile(scope: !3520, file: !298, discriminator: 2)
!3561 = distinct !{!3561, !3562}
!3562 = !DILocation(line: 913, column: 9, scope: !3506)
!3563 = !DILocation(line: 930, column: 7, scope: !3506)
!3564 = !DILocation(line: 909, column: 27, scope: !3501)
!3565 = !DILocation(line: 909, column: 41, scope: !3501)
!3566 = !DILocation(line: 909, column: 25, scope: !3501)
!3567 = !DILocation(line: 907, column: 7, scope: !3568)
!3568 = !DILexicalBlockFile(scope: !3501, file: !298, discriminator: 2)
!3569 = distinct !{!3569, !3570}
!3570 = !DILocation(line: 907, column: 7, scope: !3495)
!3571 = !DILocation(line: 930, column: 7, scope: !3503)
!3572 = !DILocation(line: 932, column: 5, scope: !3495)
!3573 = !DILocation(line: 933, column: 5, scope: !3312)
!3574 = !DILocation(line: 933, column: 15, scope: !3312)
!3575 = !DILocation(line: 933, column: 27, scope: !3312)
!3576 = !DILocation(line: 933, column: 34, scope: !3312)
!3577 = !DILocation(line: 934, column: 9, scope: !3578)
!3578 = distinct !DILexicalBlock(scope: !3312, file: !298, line: 934, column: 9)
!3579 = !DILocation(line: 934, column: 9, scope: !3312)
!3580 = !DILocation(line: 935, column: 7, scope: !3578)
!3581 = !DILocation(line: 940, column: 19, scope: !3312)
!3582 = !DILocation(line: 940, column: 29, scope: !3312)
!3583 = !DILocation(line: 940, column: 5, scope: !3312)
!3584 = !DILocation(line: 847, column: 3, scope: !3585)
!3585 = !DILexicalBlockFile(scope: !3285, file: !298, discriminator: 2)
!3586 = !DILocation(line: 942, column: 22, scope: !3285)
!3587 = !DILocation(line: 942, column: 3, scope: !3285)
!3588 = !DILocation(line: 943, column: 1, scope: !3285)
!3589 = distinct !DISubprogram(name: "pkg_remove_files_from_others", scope: !298, file: !298, line: 971, type: !3590, isLocal: true, isDefinition: true, scopeLine: 972, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !304)
!3590 = !DISubroutineType(types: !3591)
!3591 = !{null, !384, !522}
!3592 = !DILocalVariable(name: "pkg", arg: 1, scope: !3589, file: !298, line: 971, type: !384)
!3593 = !DILocation(line: 971, column: 46, scope: !3589)
!3594 = !DILocalVariable(name: "newfileslist", arg: 2, scope: !3589, file: !298, line: 971, type: !522)
!3595 = !DILocation(line: 971, column: 78, scope: !3589)
!3596 = !DILocalVariable(name: "cfile", scope: !3589, file: !298, line: 973, type: !522)
!3597 = !DILocation(line: 973, column: 30, scope: !3589)
!3598 = !DILocalVariable(name: "otherpkg", scope: !3589, file: !298, line: 974, type: !384)
!3599 = !DILocation(line: 974, column: 19, scope: !3589)
!3600 = !DILocation(line: 976, column: 16, scope: !3601)
!3601 = distinct !DILexicalBlock(scope: !3589, file: !298, line: 976, column: 3)
!3602 = !DILocation(line: 976, column: 14, scope: !3601)
!3603 = !DILocation(line: 976, column: 8, scope: !3601)
!3604 = !DILocation(line: 976, column: 30, scope: !3605)
!3605 = !DILexicalBlockFile(scope: !3606, file: !298, discriminator: 1)
!3606 = distinct !DILexicalBlock(scope: !3601, file: !298, line: 976, column: 3)
!3607 = !DILocation(line: 976, column: 3, scope: !3605)
!3608 = !DILocalVariable(name: "iter", scope: !3609, file: !298, line: 977, type: !1988)
!3609 = distinct !DILexicalBlock(scope: !3606, file: !298, line: 976, column: 58)
!3610 = !DILocation(line: 977, column: 33, scope: !3609)
!3611 = !DILocalVariable(name: "divpkgset", scope: !3609, file: !298, line: 978, type: !388)
!3612 = !DILocation(line: 978, column: 20, scope: !3609)
!3613 = !DILocation(line: 980, column: 11, scope: !3614)
!3614 = distinct !DILexicalBlock(scope: !3609, file: !298, line: 980, column: 9)
!3615 = !DILocation(line: 980, column: 18, scope: !3614)
!3616 = !DILocation(line: 980, column: 28, scope: !3614)
!3617 = !DILocation(line: 980, column: 34, scope: !3614)
!3618 = !DILocation(line: 980, column: 9, scope: !3609)
!3619 = !DILocation(line: 981, column: 7, scope: !3614)
!3620 = !DILocation(line: 983, column: 9, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3609, file: !298, line: 983, column: 9)
!3622 = !DILocation(line: 983, column: 16, scope: !3621)
!3623 = !DILocation(line: 983, column: 26, scope: !3621)
!3624 = !DILocation(line: 983, column: 33, scope: !3621)
!3625 = !DILocation(line: 983, column: 36, scope: !3626)
!3626 = !DILexicalBlockFile(scope: !3621, file: !298, discriminator: 1)
!3627 = !DILocation(line: 983, column: 43, scope: !3626)
!3628 = !DILocation(line: 983, column: 53, scope: !3626)
!3629 = !DILocation(line: 983, column: 61, scope: !3626)
!3630 = !DILocation(line: 983, column: 9, scope: !3626)
!3631 = !DILocation(line: 984, column: 19, scope: !3632)
!3632 = distinct !DILexicalBlock(scope: !3621, file: !298, line: 983, column: 73)
!3633 = !DILocation(line: 984, column: 26, scope: !3632)
!3634 = !DILocation(line: 984, column: 36, scope: !3632)
!3635 = !DILocation(line: 984, column: 44, scope: !3632)
!3636 = !DILocation(line: 984, column: 17, scope: !3632)
!3637 = !DILocation(line: 985, column: 11, scope: !3638)
!3638 = distinct !DILexicalBlock(scope: !3632, file: !298, line: 985, column: 11)
!3639 = !DILocation(line: 985, column: 24, scope: !3638)
!3640 = !DILocation(line: 985, column: 29, scope: !3638)
!3641 = !DILocation(line: 985, column: 21, scope: !3638)
!3642 = !DILocation(line: 985, column: 11, scope: !3632)
!3643 = !DILocation(line: 988, column: 15, scope: !3644)
!3644 = distinct !DILexicalBlock(scope: !3638, file: !298, line: 985, column: 34)
!3645 = !DILocation(line: 988, column: 22, scope: !3644)
!3646 = !DILocation(line: 988, column: 32, scope: !3644)
!3647 = !DILocation(line: 988, column: 38, scope: !3644)
!3648 = !DILocation(line: 988, column: 45, scope: !3644)
!3649 = !DILocation(line: 988, column: 55, scope: !3644)
!3650 = !DILocation(line: 988, column: 63, scope: !3644)
!3651 = !DILocation(line: 988, column: 75, scope: !3644)
!3652 = !DILocation(line: 986, column: 9, scope: !3644)
!3653 = !DILocation(line: 989, column: 9, scope: !3644)
!3654 = !DILocation(line: 993, column: 15, scope: !3655)
!3655 = distinct !DILexicalBlock(scope: !3638, file: !298, line: 990, column: 14)
!3656 = !DILocation(line: 993, column: 22, scope: !3655)
!3657 = !DILocation(line: 993, column: 32, scope: !3655)
!3658 = !DILocation(line: 993, column: 38, scope: !3655)
!3659 = !DILocation(line: 993, column: 50, scope: !3660)
!3660 = !DILexicalBlockFile(scope: !3655, file: !298, discriminator: 1)
!3661 = !DILocation(line: 993, column: 61, scope: !3660)
!3662 = !DILocation(line: 993, column: 38, scope: !3660)
!3663 = !DILocation(line: 993, column: 38, scope: !3664)
!3664 = !DILexicalBlockFile(scope: !3655, file: !298, discriminator: 2)
!3665 = !DILocation(line: 993, column: 38, scope: !3666)
!3666 = !DILexicalBlockFile(scope: !3655, file: !298, discriminator: 3)
!3667 = !DILocation(line: 991, column: 9, scope: !3655)
!3668 = !DILocation(line: 995, column: 5, scope: !3632)
!3669 = !DILocation(line: 996, column: 17, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !3621, file: !298, line: 995, column: 12)
!3671 = !DILocation(line: 998, column: 13, scope: !3670)
!3672 = !DILocation(line: 998, column: 20, scope: !3670)
!3673 = !DILocation(line: 998, column: 30, scope: !3670)
!3674 = !DILocation(line: 997, column: 7, scope: !3670)
!3675 = !DILocation(line: 1001, column: 36, scope: !3609)
!3676 = !DILocation(line: 1001, column: 43, scope: !3609)
!3677 = !DILocation(line: 1001, column: 12, scope: !3609)
!3678 = !DILocation(line: 1001, column: 10, scope: !3609)
!3679 = !DILocation(line: 1002, column: 5, scope: !3609)
!3680 = !DILocation(line: 1002, column: 49, scope: !3681)
!3681 = !DILexicalBlockFile(scope: !3609, file: !298, discriminator: 1)
!3682 = !DILocation(line: 1002, column: 24, scope: !3681)
!3683 = !DILocation(line: 1002, column: 22, scope: !3681)
!3684 = !DILocation(line: 1002, column: 5, scope: !3681)
!3685 = !DILocation(line: 1004, column: 22, scope: !3686)
!3686 = distinct !DILexicalBlock(scope: !3609, file: !298, line: 1002, column: 57)
!3687 = !DILocation(line: 1004, column: 13, scope: !3686)
!3688 = !DILocation(line: 1003, column: 7, scope: !3686)
!3689 = !DILocation(line: 1008, column: 11, scope: !3690)
!3690 = distinct !DILexicalBlock(scope: !3686, file: !298, line: 1008, column: 11)
!3691 = !DILocation(line: 1008, column: 21, scope: !3690)
!3692 = !DILocation(line: 1008, column: 28, scope: !3690)
!3693 = !DILocation(line: 1008, column: 33, scope: !3690)
!3694 = !DILocation(line: 1008, column: 25, scope: !3690)
!3695 = !DILocation(line: 1008, column: 11, scope: !3686)
!3696 = !DILocation(line: 1009, column: 9, scope: !3690)
!3697 = distinct !{!3697, !3679}
!3698 = !DILocation(line: 1011, column: 11, scope: !3699)
!3699 = distinct !DILexicalBlock(scope: !3686, file: !298, line: 1011, column: 11)
!3700 = !DILocation(line: 1011, column: 21, scope: !3699)
!3701 = !DILocation(line: 1011, column: 28, scope: !3699)
!3702 = !DILocation(line: 1011, column: 25, scope: !3699)
!3703 = !DILocation(line: 1011, column: 11, scope: !3686)
!3704 = !DILocation(line: 1012, column: 9, scope: !3705)
!3705 = distinct !DILexicalBlock(scope: !3699, file: !298, line: 1011, column: 39)
!3706 = !DILocation(line: 1013, column: 9, scope: !3705)
!3707 = !DILocation(line: 1016, column: 11, scope: !3708)
!3708 = distinct !DILexicalBlock(scope: !3686, file: !298, line: 1016, column: 11)
!3709 = !DILocation(line: 1016, column: 18, scope: !3708)
!3710 = !DILocation(line: 1016, column: 28, scope: !3708)
!3711 = !DILocation(line: 1016, column: 34, scope: !3708)
!3712 = !DILocation(line: 1016, column: 11, scope: !3686)
!3713 = !DILocation(line: 1017, column: 32, scope: !3708)
!3714 = !DILocation(line: 1017, column: 42, scope: !3708)
!3715 = !DILocation(line: 1017, column: 49, scope: !3708)
!3716 = !DILocation(line: 1017, column: 9, scope: !3708)
!3717 = !DILocation(line: 1022, column: 12, scope: !3718)
!3718 = distinct !DILexicalBlock(scope: !3686, file: !298, line: 1022, column: 11)
!3719 = !DILocation(line: 1022, column: 22, scope: !3718)
!3720 = !DILocation(line: 1022, column: 11, scope: !3686)
!3721 = !DILocation(line: 1023, column: 9, scope: !3718)
!3722 = !DILocation(line: 1028, column: 29, scope: !3686)
!3723 = !DILocation(line: 1028, column: 40, scope: !3686)
!3724 = !DILocation(line: 1028, column: 50, scope: !3686)
!3725 = !DILocation(line: 1029, column: 29, scope: !3686)
!3726 = !DILocation(line: 1029, column: 39, scope: !3686)
!3727 = !DILocation(line: 1028, column: 7, scope: !3686)
!3728 = !DILocation(line: 1031, column: 22, scope: !3686)
!3729 = !DILocation(line: 1031, column: 13, scope: !3686)
!3730 = !DILocation(line: 1030, column: 7, scope: !3686)
!3731 = !DILocation(line: 1002, column: 5, scope: !3732)
!3732 = !DILexicalBlockFile(scope: !3609, file: !298, discriminator: 2)
!3733 = !DILocation(line: 1033, column: 30, scope: !3609)
!3734 = !DILocation(line: 1033, column: 5, scope: !3609)
!3735 = !DILocation(line: 1034, column: 3, scope: !3609)
!3736 = !DILocation(line: 976, column: 45, scope: !3737)
!3737 = !DILexicalBlockFile(scope: !3606, file: !298, discriminator: 2)
!3738 = !DILocation(line: 976, column: 52, scope: !3737)
!3739 = !DILocation(line: 976, column: 43, scope: !3737)
!3740 = !DILocation(line: 976, column: 3, scope: !3737)
!3741 = distinct !{!3741, !3742}
!3742 = !DILocation(line: 976, column: 3, scope: !3589)
!3743 = !DILocation(line: 1035, column: 1, scope: !3589)
!3744 = distinct !DISubprogram(name: "pkg_remove_backup_files", scope: !298, file: !298, line: 1038, type: !3590, isLocal: true, isDefinition: true, scopeLine: 1039, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !304)
!3745 = !DILocalVariable(name: "pkg", arg: 1, scope: !3744, file: !298, line: 1038, type: !384)
!3746 = !DILocation(line: 1038, column: 41, scope: !3744)
!3747 = !DILocalVariable(name: "newfileslist", arg: 2, scope: !3744, file: !298, line: 1038, type: !522)
!3748 = !DILocation(line: 1038, column: 73, scope: !3744)
!3749 = !DILocalVariable(name: "cfile", scope: !3744, file: !298, line: 1040, type: !522)
!3750 = !DILocation(line: 1040, column: 30, scope: !3744)
!3751 = !DILocation(line: 1042, column: 16, scope: !3752)
!3752 = distinct !DILexicalBlock(scope: !3744, file: !298, line: 1042, column: 3)
!3753 = !DILocation(line: 1042, column: 14, scope: !3752)
!3754 = !DILocation(line: 1042, column: 8, scope: !3752)
!3755 = !DILocation(line: 1042, column: 30, scope: !3756)
!3756 = !DILexicalBlockFile(scope: !3757, file: !298, discriminator: 1)
!3757 = distinct !DILexicalBlock(scope: !3752, file: !298, line: 1042, column: 3)
!3758 = !DILocation(line: 1042, column: 3, scope: !3756)
!3759 = !DILocalVariable(name: "usenode", scope: !3760, file: !298, line: 1043, type: !527)
!3760 = distinct !DILexicalBlock(scope: !3757, file: !298, line: 1042, column: 58)
!3761 = !DILocation(line: 1043, column: 27, scope: !3760)
!3762 = !DILocation(line: 1045, column: 9, scope: !3763)
!3763 = distinct !DILexicalBlock(scope: !3760, file: !298, line: 1045, column: 9)
!3764 = !DILocation(line: 1045, column: 16, scope: !3763)
!3765 = !DILocation(line: 1045, column: 26, scope: !3763)
!3766 = !DILocation(line: 1045, column: 32, scope: !3763)
!3767 = !DILocation(line: 1045, column: 9, scope: !3760)
!3768 = !DILocation(line: 1046, column: 7, scope: !3763)
!3769 = !DILocation(line: 1048, column: 29, scope: !3760)
!3770 = !DILocation(line: 1048, column: 36, scope: !3760)
!3771 = !DILocation(line: 1048, column: 46, scope: !3760)
!3772 = !DILocation(line: 1048, column: 52, scope: !3760)
!3773 = !DILocation(line: 1048, column: 57, scope: !3760)
!3774 = !DILocation(line: 1048, column: 15, scope: !3760)
!3775 = !DILocation(line: 1048, column: 13, scope: !3760)
!3776 = !DILocation(line: 1051, column: 16, scope: !3777)
!3777 = distinct !DILexicalBlock(scope: !3760, file: !298, line: 1051, column: 9)
!3778 = !DILocation(line: 1051, column: 25, scope: !3777)
!3779 = !DILocation(line: 1051, column: 9, scope: !3777)
!3780 = !DILocation(line: 1051, column: 37, scope: !3777)
!3781 = !DILocation(line: 1051, column: 9, scope: !3760)
!3782 = !DILocation(line: 1052, column: 7, scope: !3777)
!3783 = !DILocation(line: 1054, column: 5, scope: !3760)
!3784 = !DILocation(line: 1055, column: 33, scope: !3760)
!3785 = !DILocation(line: 1055, column: 42, scope: !3760)
!3786 = !DILocation(line: 1055, column: 55, scope: !3760)
!3787 = !DILocation(line: 1055, column: 64, scope: !3760)
!3788 = !DILocation(line: 1055, column: 48, scope: !3760)
!3789 = !DILocation(line: 1055, column: 5, scope: !3790)
!3790 = !DILexicalBlockFile(scope: !3760, file: !298, discriminator: 1)
!3791 = !DILocation(line: 1056, column: 5, scope: !3760)
!3792 = !DILocation(line: 1057, column: 5, scope: !3760)
!3793 = !DILocation(line: 1058, column: 33, scope: !3760)
!3794 = !DILocation(line: 1058, column: 5, scope: !3760)
!3795 = !DILocation(line: 1059, column: 3, scope: !3760)
!3796 = !DILocation(line: 1042, column: 45, scope: !3797)
!3797 = !DILexicalBlockFile(scope: !3757, file: !298, discriminator: 2)
!3798 = !DILocation(line: 1042, column: 52, scope: !3797)
!3799 = !DILocation(line: 1042, column: 43, scope: !3797)
!3800 = !DILocation(line: 1042, column: 3, scope: !3797)
!3801 = distinct !{!3801, !3802}
!3802 = !DILocation(line: 1042, column: 3, scope: !3744)
!3803 = !DILocation(line: 1060, column: 1, scope: !3744)
!3804 = distinct !DISubprogram(name: "c_isspace", scope: !280, file: !280, line: 69, type: !3805, isLocal: true, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !304)
!3805 = !DISubroutineType(types: !3806)
!3806 = !{!430, !313}
!3807 = !DILocalVariable(name: "c", arg: 1, scope: !3804, file: !280, line: 69, type: !313)
!3808 = !DILocation(line: 69, column: 15, scope: !3804)
!3809 = !DILocation(line: 71, column: 18, scope: !3804)
!3810 = !DILocation(line: 71, column: 9, scope: !3804)
!3811 = !DILocation(line: 71, column: 2, scope: !3804)
!3812 = distinct !DISubprogram(name: "pkg_infodb_update_file", scope: !298, file: !298, line: 441, type: !3813, isLocal: true, isDefinition: true, scopeLine: 442, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !304)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{null, !301, !301}
!3815 = !DILocalVariable(name: "filename", arg: 1, scope: !3812, file: !298, line: 441, type: !301)
!3816 = !DILocation(line: 441, column: 36, scope: !3812)
!3817 = !DILocalVariable(name: "filetype", arg: 2, scope: !3812, file: !298, line: 441, type: !301)
!3818 = !DILocation(line: 441, column: 58, scope: !3812)
!3819 = !DILocation(line: 443, column: 14, scope: !3820)
!3820 = distinct !DILexicalBlock(scope: !3812, file: !298, line: 443, column: 7)
!3821 = !DILocation(line: 443, column: 7, scope: !3820)
!3822 = !DILocation(line: 443, column: 24, scope: !3820)
!3823 = !DILocation(line: 443, column: 7, scope: !3812)
!3824 = !DILocation(line: 444, column: 12, scope: !3820)
!3825 = !DILocation(line: 445, column: 12, scope: !3820)
!3826 = !DILocation(line: 444, column: 5, scope: !3827)
!3827 = !DILexicalBlockFile(scope: !3820, file: !298, discriminator: 1)
!3828 = !DILocation(line: 444, column: 5, scope: !3820)
!3829 = !DILocation(line: 448, column: 14, scope: !3830)
!3830 = distinct !DILexicalBlock(scope: !3812, file: !298, line: 448, column: 7)
!3831 = !DILocation(line: 448, column: 7, scope: !3830)
!3832 = !DILocation(line: 448, column: 32, scope: !3830)
!3833 = !DILocation(line: 448, column: 7, scope: !3812)
!3834 = !DILocation(line: 449, column: 5, scope: !3830)
!3835 = !DILocation(line: 455, column: 31, scope: !3812)
!3836 = !DILocation(line: 455, column: 41, scope: !3812)
!3837 = !DILocation(line: 455, column: 51, scope: !3812)
!3838 = !DILocation(line: 455, column: 16, scope: !3812)
!3839 = !DILocation(line: 455, column: 14, scope: !3812)
!3840 = !DILocation(line: 456, column: 1, scope: !3812)
!3841 = !DILocation(line: 456, column: 1, scope: !3842)
!3842 = !DILexicalBlockFile(scope: !3812, file: !298, discriminator: 1)
!3843 = distinct !DISubprogram(name: "pkg_infodb_remove_file", scope: !298, file: !298, line: 430, type: !3813, isLocal: true, isDefinition: true, scopeLine: 431, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !304)
!3844 = !DILocalVariable(name: "filename", arg: 1, scope: !3843, file: !298, line: 430, type: !301)
!3845 = !DILocation(line: 430, column: 36, scope: !3843)
!3846 = !DILocalVariable(name: "filetype", arg: 2, scope: !3843, file: !298, line: 430, type: !301)
!3847 = !DILocation(line: 430, column: 58, scope: !3843)
!3848 = !DILocation(line: 432, column: 14, scope: !3849)
!3849 = distinct !DILexicalBlock(scope: !3843, file: !298, line: 432, column: 7)
!3850 = !DILocation(line: 432, column: 7, scope: !3849)
!3851 = !DILocation(line: 432, column: 7, scope: !3843)
!3852 = !DILocation(line: 433, column: 13, scope: !3849)
!3853 = !DILocation(line: 433, column: 69, scope: !3849)
!3854 = !DILocation(line: 433, column: 5, scope: !3855)
!3855 = !DILexicalBlockFile(scope: !3849, file: !298, discriminator: 1)
!3856 = !DILocation(line: 433, column: 5, scope: !3849)
!3857 = !DILocation(line: 435, column: 55, scope: !3843)
!3858 = !DILocation(line: 435, column: 3, scope: !3843)
!3859 = !DILocation(line: 436, column: 1, scope: !3843)
!3860 = distinct !DISubprogram(name: "pkg_disappear", scope: !298, file: !298, line: 801, type: !3861, isLocal: true, isDefinition: true, scopeLine: 802, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !304)
!3861 = !DISubroutineType(types: !3862)
!3862 = !{null, !384, !384}
!3863 = !DILocalVariable(name: "pkg", arg: 1, scope: !3860, file: !298, line: 801, type: !384)
!3864 = !DILocation(line: 801, column: 31, scope: !3860)
!3865 = !DILocalVariable(name: "infavour", arg: 2, scope: !3860, file: !298, line: 801, type: !384)
!3866 = !DILocation(line: 801, column: 52, scope: !3860)
!3867 = !DILocation(line: 803, column: 10, scope: !3860)
!3868 = !DILocation(line: 804, column: 19, scope: !3860)
!3869 = !DILocation(line: 804, column: 10, scope: !3860)
!3870 = !DILocation(line: 803, column: 3, scope: !3871)
!3871 = !DILexicalBlockFile(scope: !3860, file: !298, discriminator: 1)
!3872 = !DILocation(line: 805, column: 27, scope: !3860)
!3873 = !DILocation(line: 805, column: 33, scope: !3860)
!3874 = !DILocation(line: 805, column: 38, scope: !3860)
!3875 = !DILocation(line: 805, column: 3, scope: !3860)
!3876 = !DILocation(line: 807, column: 18, scope: !3860)
!3877 = !DILocation(line: 807, column: 9, scope: !3860)
!3878 = !DILocation(line: 806, column: 3, scope: !3860)
!3879 = !DILocation(line: 809, column: 35, scope: !3860)
!3880 = !DILocation(line: 809, column: 3, scope: !3860)
!3881 = !DILocation(line: 810, column: 25, scope: !3860)
!3882 = !DILocation(line: 813, column: 37, scope: !3860)
!3883 = !DILocation(line: 813, column: 48, scope: !3860)
!3884 = !DILocation(line: 813, column: 58, scope: !3860)
!3885 = !DILocation(line: 813, column: 25, scope: !3860)
!3886 = !DILocation(line: 815, column: 42, scope: !3860)
!3887 = !DILocation(line: 815, column: 52, scope: !3860)
!3888 = !DILocation(line: 815, column: 62, scope: !3860)
!3889 = !DILocation(line: 815, column: 25, scope: !3860)
!3890 = !DILocation(line: 810, column: 3, scope: !3860)
!3891 = !DILocation(line: 820, column: 3, scope: !3860)
!3892 = !DILocation(line: 821, column: 22, scope: !3860)
!3893 = !DILocation(line: 821, column: 28, scope: !3860)
!3894 = !DILocation(line: 821, column: 33, scope: !3860)
!3895 = !DILocation(line: 821, column: 3, scope: !3860)
!3896 = !DILocation(line: 822, column: 17, scope: !3860)
!3897 = !DILocation(line: 822, column: 3, scope: !3871)
!3898 = !DILocation(line: 824, column: 18, scope: !3860)
!3899 = !DILocation(line: 824, column: 3, scope: !3860)
!3900 = !DILocation(line: 825, column: 16, scope: !3860)
!3901 = !DILocation(line: 825, column: 3, scope: !3860)
!3902 = !DILocation(line: 826, column: 20, scope: !3860)
!3903 = !DILocation(line: 826, column: 3, scope: !3860)
!3904 = !DILocation(line: 828, column: 23, scope: !3860)
!3905 = !DILocation(line: 828, column: 28, scope: !3860)
!3906 = !DILocation(line: 828, column: 3, scope: !3860)
!3907 = !DILocation(line: 829, column: 17, scope: !3860)
!3908 = !DILocation(line: 829, column: 22, scope: !3860)
!3909 = !DILocation(line: 829, column: 3, scope: !3860)
!3910 = !DILocation(line: 831, column: 3, scope: !3860)
!3911 = !DILocation(line: 831, column: 8, scope: !3860)
!3912 = !DILocation(line: 831, column: 25, scope: !3860)
!3913 = !DILocation(line: 833, column: 18, scope: !3860)
!3914 = !DILocation(line: 833, column: 3, scope: !3860)
!3915 = !DILocation(line: 834, column: 1, scope: !3860)
