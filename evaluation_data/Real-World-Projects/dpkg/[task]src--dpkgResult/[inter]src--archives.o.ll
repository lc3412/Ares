; ModuleID = './[inter]src--archives.o.i'
source_filename = "./[inter]src--archives.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pkg_deconf_list = type { %struct.pkg_deconf_list*, %struct.pkginfo*, %struct.pkginfo* }
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
%struct.varbuf = type { i64, i64, i8* }
%struct.varbuf_state = type { i64 }
%struct.cmdinfo = type { i8*, i8, i32, i32*, i8**, void (%struct.cmdinfo*, i8*)*, i32, i8*, i32 (i8**)* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, %union.anon, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%union.anon = type { i64 }
%struct.fsys_namenode_queue = type { %struct.fsys_namenode_list*, %struct.fsys_namenode_list** }
%struct.fsys_node_pkgs_iter = type opaque
%struct.tar_archive = type { %struct.dpkg_error, i32, %struct.tar_operations*, i8* }
%struct.dpkg_error = type { i32, i32, i8* }
%struct.tar_operations = type { {}*, i32 (%struct.tar_archive*, %struct.tar_entry*)*, i32 (%struct.tar_archive*, %struct.tar_entry*)*, i32 (%struct.tar_archive*, %struct.tar_entry*)*, i32 (%struct.tar_archive*, %struct.tar_entry*)*, i32 (%struct.tar_archive*, %struct.tar_entry*)* }
%struct.tar_entry = type { i32, i32, i8*, i8*, i64, i64, i64, %struct.file_stat }
%struct.tarcontext = type { i32, %struct.pkginfo*, %struct.fsys_namenode_queue*, i8 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.timeval = type { i64, i64 }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.treeroot = type opaque
%struct.treenode = type opaque
%struct.treewalk_funcs = type { i32 (%struct.treenode*)*, i32 (%struct.treenode*)*, i1 (%struct.treenode*)* }

@.str = private unnamed_addr constant [38 x i8] c"filesavespackage file '%s' package %s\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"filesavespackage ... diverted -- save!\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"filesavespackage ... in new archive -- no save\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"filesavespackage ... also in %s\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"filesavespackage ...  is 3rd package\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"process_archive ... already disappeared!\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"filesavespackage ...  taken -- no save\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"filesavespackage ... not taken -- save !\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"error reading from dpkg-deb pipe\00", align 1
@deconfigure = global %struct.pkg_deconf_list* null, align 8
@fnamevb = common global %struct.varbuf zeroinitializer, align 8
@fname_state = common global %struct.varbuf_state zeroinitializer, align 8
@fnametmpvb = common global %struct.varbuf zeroinitializer, align 8
@.str.9 = private unnamed_addr constant [10 x i8] c".dpkg-tmp\00", align 1
@fnamenewvb = common global %struct.varbuf zeroinitializer, align 8
@.str.10 = private unnamed_addr constant [10 x i8] c".dpkg-new\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"setupvnamevbs main='%s' tmp='%s' new='%s'\00", align 1
@tarobject.conffderefn = internal global %struct.varbuf zeroinitializer, align 8
@tarobject.symlinkfn = internal global %struct.varbuf zeroinitializer, align 8
@.str.12 = private unnamed_addr constant [52 x i8] c"newline not allowed in archive object name '%.255s'\00", align 1
@.str.13 = private unnamed_addr constant [111 x i8] c"tarobject ti->name='%s' mode=%lo owner=%u:%u type=%d(%c) ti->linkname='%s' namenode='%s' flags=%o instead='%s'\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"-hlcbdp\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"<none>\00", align 1
@.str.16 = private unnamed_addr constant [90 x i8] c"trying to overwrite '%.250s', which is the diverted version of '%.250s' (package: %.100s)\00", align 1
@.str.17 = private unnamed_addr constant [72 x i8] c"trying to overwrite '%.250s', which is the diverted version of '%.250s'\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"tarobject FNNF_NEW_CONFF deref='%s'\00", align 1
@.str.19 = private unnamed_addr constant [55 x i8] c"unable to stat '%.255s' (which I was about to install)\00", align 1
@.str.20 = private unnamed_addr constant [79 x i8] c"unable to clean up mess surrounding '%.255s' before installing another version\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"tarobject nonexistent\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"tarobject restored tmp to main\00", align 1
@.str.23 = private unnamed_addr constant [67 x i8] c"unable to stat restored '%.255s' before installing another version\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"tarobject already exists\00", align 1
@.str.25 = private unnamed_addr constant [38 x i8] c"tarobject symlink exists as directory\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"tarobject directory exists\00", align 1
@.str.27 = private unnamed_addr constant [55 x i8] c"archive contained object '%.255s' of unknown type 0x%x\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"tarobject ... found in %s\00", align 1
@.str.29 = private unnamed_addr constant [45 x i8] c"tarobject ... shared with %s %s (syncing=%d)\00", align 1
@.str.30 = private unnamed_addr constant [37 x i8] c"tarobject ... diverted, divpkgset=%s\00", align 1
@.str.31 = private unnamed_addr constant [40 x i8] c"tarobject ... assuming shared directory\00", align 1
@.str.32 = private unnamed_addr constant [36 x i8] c"tarobject other's obsolete conffile\00", align 1
@.str.33 = private unnamed_addr constant [44 x i8] c"Replacing files in old package %s (%s) ...\0A\00", align 1
@.str.34 = private unnamed_addr constant [52 x i8] c"Replaced by files in installed package %s (%s) ...\0A\00", align 1
@.str.35 = private unnamed_addr constant [82 x i8] c"trying to overwrite directory '%.250s' in package %.250s %.250s with nondirectory\00", align 1
@.str.36 = private unnamed_addr constant [69 x i8] c"trying to overwrite '%.250s', which is also in package %.250s %.250s\00", align 1
@.str.37 = private unnamed_addr constant [49 x i8] c"tarobject hashing on-disk file '%s', refcounting\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.39 = private unnamed_addr constant [29 x i8] c"tarobject conffile extracted\00", align 1
@.str.40 = private unnamed_addr constant [26 x i8] c"tarobject new - no backup\00", align 1
@.str.41 = private unnamed_addr constant [31 x i8] c"tarobject directory, nonatomic\00", align 1
@.str.42 = private unnamed_addr constant [53 x i8] c"unable to move aside '%.255s' to install new version\00", align 1
@.str.43 = private unnamed_addr constant [29 x i8] c"unable to read link '%.255s'\00", align 1
@.str.44 = private unnamed_addr constant [56 x i8] c"symbolic link '%.250s' size has changed from %jd to %zd\00", align 1
@.str.45 = private unnamed_addr constant [43 x i8] c"unable to make backup symlink for '%.255s'\00", align 1
@.str.46 = private unnamed_addr constant [44 x i8] c"unable to chown backup symlink for '%.255s'\00", align 1
@.str.47 = private unnamed_addr constant [38 x i8] c"tarobject nondirectory, 'link' backup\00", align 1
@.str.48 = private unnamed_addr constant [69 x i8] c"unable to make backup link of '%.255s' before installing new version\00", align 1
@.str.49 = private unnamed_addr constant [41 x i8] c"tarobject done and installation deferred\00", align 1
@.str.50 = private unnamed_addr constant [42 x i8] c"unable to install new version of '%.255s'\00", align 1
@.str.51 = private unnamed_addr constant [29 x i8] c"tarobject done and installed\00", align 1
@.str.52 = private unnamed_addr constant [29 x i8] c"deferred extract of '%.255s'\00", align 1
@.str.53 = private unnamed_addr constant [29 x i8] c"deferred extract needs fsync\00", align 1
@.str.54 = private unnamed_addr constant [24 x i8] c"unable to open '%.255s'\00", align 1
@.str.55 = private unnamed_addr constant [29 x i8] c"unable to sync file '%.255s'\00", align 1
@.str.56 = private unnamed_addr constant [31 x i8] c"error closing/writing '%.255s'\00", align 1
@.str.57 = private unnamed_addr constant [30 x i8] c"deferred extract needs rename\00", align 1
@.str.58 = private unnamed_addr constant [36 x i8] c"deferred extract done and installed\00", align 1
@f_autodeconf = external global i32, align 4
@.str.59 = private unnamed_addr constant [11 x i8] c"archives.c\00", align 1
@__func__.check_breaks = private unnamed_addr constant [13 x i8] c"check_breaks\00", align 1
@.str.60 = private unnamed_addr constant [66 x i8] c"package %s being fixed by deconf is not to be normal, is to be %d\00", align 1
@.str.61 = private unnamed_addr constant [23 x i8] c"installation of %.250s\00", align 1
@.str.62 = private unnamed_addr constant [67 x i8] c"considering deconfiguration of %s, which would be broken by %s ...\00", align 1
@.str.63 = private unnamed_addr constant [40 x i8] c"yes, will deconfigure %s (broken by %s)\00", align 1
@.str.64 = private unnamed_addr constant [31 x i8] c"regarding %s containing %s:\0A%s\00", align 1
@.str.65 = private unnamed_addr constant [39 x i8] c"ignoring breakage, may proceed anyway!\00", align 1
@.str.66 = private unnamed_addr constant [108 x i8] c"installing %.250s would break %.250s, and\0A deconfiguration is not permitted (--auto-deconfigure might help)\00", align 1
@.str.67 = private unnamed_addr constant [48 x i8] c"installing %.250s would break existing software\00", align 1
@__func__.check_conflict = private unnamed_addr constant [15 x i8] c"check_conflict\00", align 1
@.str.68 = private unnamed_addr constant [83 x i8] c"package %s to be fixed by removal is not to be normal nor deconfigure, is to be %d\00", align 1
@.str.69 = private unnamed_addr constant [44 x i8] c"considering removing %s in favour of %s ...\00", align 1
@.str.70 = private unnamed_addr constant [62 x i8] c"%s is not properly installed; ignoring any dependencies on it\00", align 1
@.str.71 = private unnamed_addr constant [52 x i8] c"may have trouble removing %s, as it provides %s ...\00", align 1
@.str.72 = private unnamed_addr constant [76 x i8] c"package %s requires reinstallation, but will remove anyway as you requested\00", align 1
@.str.73 = private unnamed_addr constant [52 x i8] c"package %s requires reinstallation, will not remove\00", align 1
@.str.74 = private unnamed_addr constant [36 x i8] c"yes, will remove %s in favour of %s\00", align 1
@.str.75 = private unnamed_addr constant [45 x i8] c"conflicting packages - not installing %.250s\00", align 1
@.str.76 = private unnamed_addr constant [39 x i8] c"ignoring conflict, may proceed anyway!\00", align 1
@f_noact = external global i32, align 4
@cipaction = external global %struct.cmdinfo*, align 8
@.str.77 = private unnamed_addr constant [20 x i8] c"startup archives %s\00", align 1
@f_recursive = external global i32, align 4
@.str.78 = private unnamed_addr constant [50 x i8] c"--%s --recursive needs at least one path argument\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c".deb\00", align 1
@.str.80 = private unnamed_addr constant [55 x i8] c"searched, but found no packages (files matching *.deb)\00", align 1
@.str.81 = private unnamed_addr constant [54 x i8] c"--%s needs at least one package archive file argument\00", align 1
@.str.82 = private unnamed_addr constant [27 x i8] c"cannot access archive '%s'\00", align 1
@.str.83 = private unnamed_addr constant [35 x i8] c"archive '%s' is not a regular file\00", align 1
@currenttime = internal global i64 0, align 8
@instdir = external global i8*, align 8
@abort_processing = external global i8, align 1
@onerr_abort = external global i32, align 4
@stdout = external global %struct._IO_FILE*, align 8
@.str.84 = private unnamed_addr constant [18 x i8] c"<standard output>\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.85 = private unnamed_addr constant [17 x i8] c"<standard error>\00", align 1
@__func__.archivefiles = private unnamed_addr constant [13 x i8] c"archivefiles\00", align 1
@.str.86 = private unnamed_addr constant [20 x i8] c"unknown action '%d'\00", align 1
@f_alsoselect = external global i32, align 4
@.str.87 = private unnamed_addr constant [45 x i8] c"Selecting previously unselected package %s.\0A\00", align 1
@.str.88 = private unnamed_addr constant [33 x i8] c"Skipping unselected package %s.\0A\00", align 1
@f_skipsame = external global i32, align 4
@.str.89 = private unnamed_addr constant [53 x i8] c"version %.250s of %.250s already installed, skipping\00", align 1
@.str.90 = private unnamed_addr constant [41 x i8] c"downgrading %.250s from %.250s to %.250s\00", align 1
@.str.91 = private unnamed_addr constant [58 x i8] c"will not downgrade %.250s from %.250s to %.250s, skipping\00", align 1
@tar_pool_init = internal global i8 0, align 1
@tar_pool = internal global %struct.obstack zeroinitializer, align 8
@.str.92 = private unnamed_addr constant [55 x i8] c"failed to stat (dereference) existing symlink '%.250s'\00", align 1
@__func__.linktosameexistingdir = private unnamed_addr constant [22 x i8] c"linktosameexistingdir\00", align 1
@.str.93 = private unnamed_addr constant [45 x i8] c"tar entry filename '%s' does not contain '/'\00", align 1
@.str.94 = private unnamed_addr constant [87 x i8] c"failed to stat (dereference) proposed new symlink target '%.250s' for symlink '%.250s'\00", align 1
@.str.95 = private unnamed_addr constant [32 x i8] c"does_replace new=%s old=%s (%s)\00", align 1
@.str.96 = private unnamed_addr constant [39 x i8] c"does_replace ... found old, version %s\00", align 1
@.str.97 = private unnamed_addr constant [21 x i8] c"does_replace ... yes\00", align 1
@.str.98 = private unnamed_addr constant [20 x i8] c"does_replace ... no\00", align 1
@.str.99 = private unnamed_addr constant [64 x i8] c"cannot skip file '%.255s' (replaced or excluded?) from pipe: %s\00", align 1
@.str.100 = private unnamed_addr constant [42 x i8] c"cannot skip padding for file '%.255s': %s\00", align 1
@.str.101 = private unnamed_addr constant [41 x i8] c"tarobject looking for shared conffile %s\00", align 1
@.str.102 = private unnamed_addr constant [59 x i8] c"tarobject found shared conffile, from pkg %s (%s); hash=%s\00", align 1
@.str.103 = private unnamed_addr constant [52 x i8] c"tarobject found shared conffile, from disk; hash=%s\00", align 1
@.str.104 = private unnamed_addr constant [50 x i8] c"cannot compute MD5 hash for tar file '%.255s': %s\00", align 1
@.str.105 = private unnamed_addr constant [23 x i8] c"tarobject file hash=%s\00", align 1
@.str.106 = private unnamed_addr constant [27 x i8] c"tarobject hardlink hash=%s\00", align 1
@tarobject_extract.hardlinkfn = internal global %struct.varbuf zeroinitializer, align 8
@tarobject_extract.fd = internal global i32 0, align 4
@.str.107 = private unnamed_addr constant [54 x i8] c"unable to create '%.255s' (while processing '%.255s')\00", align 1
@.str.108 = private unnamed_addr constant [29 x i8] c"tarobject file open size=%jd\00", align 1
@.str.109 = private unnamed_addr constant [56 x i8] c"cannot copy extracted data for '%.255s' to '%.255s': %s\00", align 1
@.str.110 = private unnamed_addr constant [55 x i8] c"tarobject ... stat override, uid=%d, gid=%d, mode=%04o\00", align 1
@.str.111 = private unnamed_addr constant [36 x i8] c"error setting ownership of '%.255s'\00", align 1
@.str.112 = private unnamed_addr constant [38 x i8] c"error setting permissions of '%.255s'\00", align 1
@.str.113 = private unnamed_addr constant [29 x i8] c"error creating pipe '%.255s'\00", align 1
@.str.114 = private unnamed_addr constant [15 x i8] c"tarobject fifo\00", align 1
@.str.115 = private unnamed_addr constant [31 x i8] c"error creating device '%.255s'\00", align 1
@.str.116 = private unnamed_addr constant [18 x i8] c"tarobject chardev\00", align 1
@.str.117 = private unnamed_addr constant [19 x i8] c"tarobject blockdev\00", align 1
@.str.118 = private unnamed_addr constant [34 x i8] c"error creating hard link '%.255s'\00", align 1
@.str.119 = private unnamed_addr constant [38 x i8] c"error creating symbolic link '%.255s'\00", align 1
@.str.120 = private unnamed_addr constant [27 x i8] c"tarobject symlink creating\00", align 1
@.str.121 = private unnamed_addr constant [34 x i8] c"error creating directory '%.255s'\00", align 1
@.str.122 = private unnamed_addr constant [29 x i8] c"tarobject directory creating\00", align 1
@__func__.tarobject_extract = private unnamed_addr constant [18 x i8] c"tarobject_extract\00", align 1
@.str.123 = private unnamed_addr constant [43 x i8] c"unknown tar type '%d', but already checked\00", align 1
@.str.124 = private unnamed_addr constant [34 x i8] c"tarobject matches on-disk object?\00", align 1
@__func__.tarobject_matches = private unnamed_addr constant [18 x i8] c"tarobject_matches\00", align 1
@.str.125 = private unnamed_addr constant [95 x i8] c"trying to overwrite shared '%.250s', which is different from other instances of package %.250s\00", align 1
@.str.126 = private unnamed_addr constant [44 x i8] c"error setting ownership of symlink '%.255s'\00", align 1
@.str.127 = private unnamed_addr constant [37 x i8] c"error setting timestamps of '%.255s'\00", align 1
@.str.128 = private unnamed_addr constant [40 x i8] c"ignoring dependency problem with %s:\0A%s\00", align 1
@.str.129 = private unnamed_addr constant [67 x i8] c"considering deconfiguration of essential\0A package %s, to enable %s\00", align 1
@.str.130 = private unnamed_addr constant [68 x i8] c"no, %s is essential, will not deconfigure\0A it in order to enable %s\00", align 1
@.str.131 = private unnamed_addr constant [62 x i8] c"no, cannot proceed with %s (--auto-deconfigure will help):\0A%s\00", align 1
@.str.132 = private unnamed_addr constant [18 x i8] c"removal of %.250s\00", align 1

; Function Attrs: nounwind uwtable
define %struct.fsys_namenode_list* @tar_fsys_namenode_queue_push(%struct.fsys_namenode_queue*, %struct.fsys_namenode*) #0 !dbg !627 {
  %3 = alloca %struct.fsys_namenode_queue*, align 8
  %4 = alloca %struct.fsys_namenode*, align 8
  %5 = alloca %struct.fsys_namenode_list*, align 8
  store %struct.fsys_namenode_queue* %0, %struct.fsys_namenode_queue** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode_queue** %3, metadata !630, metadata !631), !dbg !632
  store %struct.fsys_namenode* %1, %struct.fsys_namenode** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %4, metadata !633, metadata !631), !dbg !634
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode_list** %5, metadata !635, metadata !631), !dbg !636
  %6 = call i8* @tar_pool_alloc(i64 16), !dbg !637
  %7 = bitcast i8* %6 to %struct.fsys_namenode_list*, !dbg !637
  store %struct.fsys_namenode_list* %7, %struct.fsys_namenode_list** %5, align 8, !dbg !638
  %8 = load %struct.fsys_namenode*, %struct.fsys_namenode** %4, align 8, !dbg !639
  %9 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %5, align 8, !dbg !640
  %10 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %9, i32 0, i32 1, !dbg !641
  store %struct.fsys_namenode* %8, %struct.fsys_namenode** %10, align 8, !dbg !642
  %11 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %5, align 8, !dbg !643
  %12 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %11, i32 0, i32 0, !dbg !644
  store %struct.fsys_namenode_list* null, %struct.fsys_namenode_list** %12, align 8, !dbg !645
  %13 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %5, align 8, !dbg !646
  %14 = load %struct.fsys_namenode_queue*, %struct.fsys_namenode_queue** %3, align 8, !dbg !647
  %15 = getelementptr inbounds %struct.fsys_namenode_queue, %struct.fsys_namenode_queue* %14, i32 0, i32 1, !dbg !648
  %16 = load %struct.fsys_namenode_list**, %struct.fsys_namenode_list*** %15, align 8, !dbg !648
  store %struct.fsys_namenode_list* %13, %struct.fsys_namenode_list** %16, align 8, !dbg !649
  %17 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %5, align 8, !dbg !650
  %18 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %17, i32 0, i32 0, !dbg !651
  %19 = load %struct.fsys_namenode_queue*, %struct.fsys_namenode_queue** %3, align 8, !dbg !652
  %20 = getelementptr inbounds %struct.fsys_namenode_queue, %struct.fsys_namenode_queue* %19, i32 0, i32 1, !dbg !653
  store %struct.fsys_namenode_list** %18, %struct.fsys_namenode_list*** %20, align 8, !dbg !654
  %21 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %5, align 8, !dbg !655
  ret %struct.fsys_namenode_list* %21, !dbg !656
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal i8* @tar_pool_alloc(i64) #0 !dbg !657 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.obstack*, align 8
  %4 = alloca %struct.obstack*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.obstack*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !660, metadata !631), !dbg !661
  %10 = load i8, i8* @tar_pool_init, align 1, !dbg !662
  %11 = trunc i8 %10 to i1, !dbg !662
  br i1 %11, label %14, label %12, !dbg !664

; <label>:12:                                     ; preds = %1
  %13 = call i32 @_obstack_begin(%struct.obstack* @tar_pool, i32 0, i32 0, i8* (i64)* @m_malloc, void (i8*)* @free), !dbg !665
  store i8 1, i8* @tar_pool_init, align 1, !dbg !667
  br label %14, !dbg !668

; <label>:14:                                     ; preds = %12, %1
  call void @llvm.dbg.declare(metadata %struct.obstack** %3, metadata !669, metadata !631), !dbg !672
  store %struct.obstack* @tar_pool, %struct.obstack** %3, align 8, !dbg !672
  call void @llvm.dbg.declare(metadata %struct.obstack** %4, metadata !673, metadata !631), !dbg !675
  %15 = load %struct.obstack*, %struct.obstack** %3, align 8, !dbg !676
  store %struct.obstack* %15, %struct.obstack** %4, align 8, !dbg !675
  call void @llvm.dbg.declare(metadata i32* %5, metadata !677, metadata !631), !dbg !678
  %16 = load i64, i64* %2, align 8, !dbg !679
  %17 = trunc i64 %16 to i32, !dbg !680
  store i32 %17, i32* %5, align 4, !dbg !678
  %18 = load %struct.obstack*, %struct.obstack** %4, align 8, !dbg !681
  %19 = getelementptr inbounds %struct.obstack, %struct.obstack* %18, i32 0, i32 4, !dbg !683
  %20 = load i8*, i8** %19, align 8, !dbg !683
  %21 = load %struct.obstack*, %struct.obstack** %4, align 8, !dbg !684
  %22 = getelementptr inbounds %struct.obstack, %struct.obstack* %21, i32 0, i32 3, !dbg !685
  %23 = load i8*, i8** %22, align 8, !dbg !685
  %24 = ptrtoint i8* %20 to i64, !dbg !686
  %25 = ptrtoint i8* %23 to i64, !dbg !686
  %26 = sub i64 %24, %25, !dbg !686
  %27 = load i32, i32* %5, align 4, !dbg !687
  %28 = sext i32 %27 to i64, !dbg !687
  %29 = icmp slt i64 %26, %28, !dbg !688
  br i1 %29, label %30, label %33, !dbg !689

; <label>:30:                                     ; preds = %14
  %31 = load %struct.obstack*, %struct.obstack** %4, align 8, !dbg !690
  %32 = load i32, i32* %5, align 4, !dbg !692
  call void @_obstack_newchunk(%struct.obstack* %31, i32 %32), !dbg !693
  br label %33, !dbg !693

; <label>:33:                                     ; preds = %30, %14
  %34 = load i32, i32* %5, align 4, !dbg !694
  %35 = load %struct.obstack*, %struct.obstack** %4, align 8, !dbg !696
  %36 = getelementptr inbounds %struct.obstack, %struct.obstack* %35, i32 0, i32 3, !dbg !697
  %37 = load i8*, i8** %36, align 8, !dbg !698
  %38 = sext i32 %34 to i64, !dbg !698
  %39 = getelementptr inbounds i8, i8* %37, i64 %38, !dbg !698
  store i8* %39, i8** %36, align 8, !dbg !698
  call void @llvm.dbg.declare(metadata %struct.obstack** %7, metadata !699, metadata !631), !dbg !701
  %40 = load %struct.obstack*, %struct.obstack** %3, align 8, !dbg !702
  store %struct.obstack* %40, %struct.obstack** %7, align 8, !dbg !703
  call void @llvm.dbg.declare(metadata i8** %8, metadata !704, metadata !631), !dbg !705
  %41 = load %struct.obstack*, %struct.obstack** %7, align 8, !dbg !706
  %42 = getelementptr inbounds %struct.obstack, %struct.obstack* %41, i32 0, i32 2, !dbg !707
  %43 = load i8*, i8** %42, align 8, !dbg !707
  store i8* %43, i8** %8, align 8, !dbg !708
  %44 = load %struct.obstack*, %struct.obstack** %7, align 8, !dbg !709
  %45 = getelementptr inbounds %struct.obstack, %struct.obstack* %44, i32 0, i32 3, !dbg !710
  %46 = load i8*, i8** %45, align 8, !dbg !710
  %47 = load i8*, i8** %8, align 8, !dbg !711
  %48 = icmp eq i8* %46, %47, !dbg !712
  br i1 %48, label %49, label %55, !dbg !709

; <label>:49:                                     ; preds = %33
  %50 = load %struct.obstack*, %struct.obstack** %7, align 8, !dbg !713
  %51 = getelementptr inbounds %struct.obstack, %struct.obstack* %50, i32 0, i32 10, !dbg !716
  %52 = load i8, i8* %51, align 8, !dbg !717
  %53 = and i8 %52, -3, !dbg !717
  %54 = or i8 %53, 2, !dbg !717
  store i8 %54, i8* %51, align 8, !dbg !717
  br label %55, !dbg !713

; <label>:55:                                     ; preds = %49, %33
  %56 = load %struct.obstack*, %struct.obstack** %7, align 8, !dbg !718
  %57 = getelementptr inbounds %struct.obstack, %struct.obstack* %56, i32 0, i32 3, !dbg !720
  %58 = load i8*, i8** %57, align 8, !dbg !720
  %59 = ptrtoint i8* %58 to i64, !dbg !721
  %60 = sub i64 %59, 0, !dbg !721
  %61 = load %struct.obstack*, %struct.obstack** %7, align 8, !dbg !722
  %62 = getelementptr inbounds %struct.obstack, %struct.obstack* %61, i32 0, i32 6, !dbg !723
  %63 = load i32, i32* %62, align 8, !dbg !723
  %64 = sext i32 %63 to i64, !dbg !724
  %65 = add nsw i64 %60, %64, !dbg !725
  %66 = load %struct.obstack*, %struct.obstack** %7, align 8, !dbg !726
  %67 = getelementptr inbounds %struct.obstack, %struct.obstack* %66, i32 0, i32 6, !dbg !727
  %68 = load i32, i32* %67, align 8, !dbg !727
  %69 = xor i32 %68, -1, !dbg !728
  %70 = sext i32 %69 to i64, !dbg !728
  %71 = and i64 %65, %70, !dbg !729
  %72 = getelementptr inbounds i8, i8* null, i64 %71, !dbg !730
  %73 = load %struct.obstack*, %struct.obstack** %7, align 8, !dbg !731
  %74 = getelementptr inbounds %struct.obstack, %struct.obstack* %73, i32 0, i32 3, !dbg !732
  store i8* %72, i8** %74, align 8, !dbg !733
  %75 = load %struct.obstack*, %struct.obstack** %7, align 8, !dbg !734
  %76 = getelementptr inbounds %struct.obstack, %struct.obstack* %75, i32 0, i32 3, !dbg !735
  %77 = load i8*, i8** %76, align 8, !dbg !735
  %78 = load %struct.obstack*, %struct.obstack** %7, align 8, !dbg !736
  %79 = getelementptr inbounds %struct.obstack, %struct.obstack* %78, i32 0, i32 1, !dbg !737
  %80 = load %struct._obstack_chunk*, %struct._obstack_chunk** %79, align 8, !dbg !737
  %81 = bitcast %struct._obstack_chunk* %80 to i8*, !dbg !738
  %82 = ptrtoint i8* %77 to i64, !dbg !739
  %83 = ptrtoint i8* %81 to i64, !dbg !739
  %84 = sub i64 %82, %83, !dbg !739
  %85 = load %struct.obstack*, %struct.obstack** %7, align 8, !dbg !740
  %86 = getelementptr inbounds %struct.obstack, %struct.obstack* %85, i32 0, i32 4, !dbg !741
  %87 = load i8*, i8** %86, align 8, !dbg !741
  %88 = load %struct.obstack*, %struct.obstack** %7, align 8, !dbg !742
  %89 = getelementptr inbounds %struct.obstack, %struct.obstack* %88, i32 0, i32 1, !dbg !743
  %90 = load %struct._obstack_chunk*, %struct._obstack_chunk** %89, align 8, !dbg !743
  %91 = bitcast %struct._obstack_chunk* %90 to i8*, !dbg !744
  %92 = ptrtoint i8* %87 to i64, !dbg !745
  %93 = ptrtoint i8* %91 to i64, !dbg !745
  %94 = sub i64 %92, %93, !dbg !745
  %95 = icmp sgt i64 %84, %94, !dbg !746
  br i1 %95, label %96, label %102, !dbg !734

; <label>:96:                                     ; preds = %55
  %97 = load %struct.obstack*, %struct.obstack** %7, align 8, !dbg !747
  %98 = getelementptr inbounds %struct.obstack, %struct.obstack* %97, i32 0, i32 4, !dbg !750
  %99 = load i8*, i8** %98, align 8, !dbg !750
  %100 = load %struct.obstack*, %struct.obstack** %7, align 8, !dbg !751
  %101 = getelementptr inbounds %struct.obstack, %struct.obstack* %100, i32 0, i32 3, !dbg !752
  store i8* %99, i8** %101, align 8, !dbg !753
  br label %102, !dbg !751

; <label>:102:                                    ; preds = %96, %55
  %103 = load %struct.obstack*, %struct.obstack** %7, align 8, !dbg !754
  %104 = getelementptr inbounds %struct.obstack, %struct.obstack* %103, i32 0, i32 3, !dbg !756
  %105 = load i8*, i8** %104, align 8, !dbg !756
  %106 = load %struct.obstack*, %struct.obstack** %7, align 8, !dbg !757
  %107 = getelementptr inbounds %struct.obstack, %struct.obstack* %106, i32 0, i32 2, !dbg !758
  store i8* %105, i8** %107, align 8, !dbg !759
  %108 = load i8*, i8** %8, align 8, !dbg !760
  store i8* %108, i8** %9, align 8, !dbg !757
  %109 = load i8*, i8** %9, align 8, !dbg !761
  store i8* %109, i8** %6, align 8, !dbg !762
  %110 = load i8*, i8** %6, align 8, !dbg !763
  ret i8* %110, !dbg !764
}

; Function Attrs: nounwind uwtable
define zeroext i1 @filesavespackage(%struct.fsys_namenode_list*, %struct.pkginfo*, %struct.pkginfo*) #0 !dbg !765 {
  %4 = alloca i1, align 1
  %5 = alloca %struct.fsys_namenode_list*, align 8
  %6 = alloca %struct.pkginfo*, align 8
  %7 = alloca %struct.pkginfo*, align 8
  %8 = alloca %struct.fsys_node_pkgs_iter*, align 8
  %9 = alloca %struct.pkgset*, align 8
  %10 = alloca %struct.pkginfo*, align 8
  store %struct.fsys_namenode_list* %0, %struct.fsys_namenode_list** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode_list** %5, metadata !768, metadata !631), !dbg !769
  store %struct.pkginfo* %1, %struct.pkginfo** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %6, metadata !770, metadata !631), !dbg !771
  store %struct.pkginfo* %2, %struct.pkginfo** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %7, metadata !772, metadata !631), !dbg !773
  call void @llvm.dbg.declare(metadata %struct.fsys_node_pkgs_iter** %8, metadata !774, metadata !631), !dbg !777
  call void @llvm.dbg.declare(metadata %struct.pkgset** %9, metadata !778, metadata !631), !dbg !779
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %10, metadata !780, metadata !631), !dbg !781
  %11 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %5, align 8, !dbg !782
  %12 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %11, i32 0, i32 1, !dbg !783
  %13 = load %struct.fsys_namenode*, %struct.fsys_namenode** %12, align 8, !dbg !783
  %14 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %13, i32 0, i32 1, !dbg !784
  %15 = load i8*, i8** %14, align 8, !dbg !784
  %16 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !785
  %17 = call i8* @pkg_name(%struct.pkginfo* %16, i32 3), !dbg !786
  call void (i32, i8*, ...) @debug(i32 64, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i32 0, i32 0), i8* %15, i8* %17), !dbg !787
  %18 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %5, align 8, !dbg !788
  %19 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %18, i32 0, i32 1, !dbg !790
  %20 = load %struct.fsys_namenode*, %struct.fsys_namenode** %19, align 8, !dbg !790
  %21 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %20, i32 0, i32 3, !dbg !791
  %22 = load %struct.fsys_diversion*, %struct.fsys_diversion** %21, align 8, !dbg !791
  %23 = icmp ne %struct.fsys_diversion* %22, null, !dbg !788
  br i1 %23, label %24, label %54, !dbg !792

; <label>:24:                                     ; preds = %3
  %25 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %5, align 8, !dbg !793
  %26 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %25, i32 0, i32 1, !dbg !795
  %27 = load %struct.fsys_namenode*, %struct.fsys_namenode** %26, align 8, !dbg !795
  %28 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %27, i32 0, i32 3, !dbg !796
  %29 = load %struct.fsys_diversion*, %struct.fsys_diversion** %28, align 8, !dbg !796
  %30 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %29, i32 0, i32 0, !dbg !797
  %31 = load %struct.fsys_namenode*, %struct.fsys_namenode** %30, align 8, !dbg !797
  %32 = icmp ne %struct.fsys_namenode* %31, null, !dbg !793
  br i1 %32, label %33, label %54, !dbg !798

; <label>:33:                                     ; preds = %24
  %34 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %5, align 8, !dbg !799
  %35 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %34, i32 0, i32 1, !dbg !801
  %36 = load %struct.fsys_namenode*, %struct.fsys_namenode** %35, align 8, !dbg !801
  %37 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %36, i32 0, i32 3, !dbg !802
  %38 = load %struct.fsys_diversion*, %struct.fsys_diversion** %37, align 8, !dbg !802
  %39 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %38, i32 0, i32 2, !dbg !803
  %40 = load %struct.pkgset*, %struct.pkgset** %39, align 8, !dbg !803
  store %struct.pkgset* %40, %struct.pkgset** %9, align 8, !dbg !804
  %41 = load %struct.pkgset*, %struct.pkgset** %9, align 8, !dbg !805
  %42 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !807
  %43 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %42, i32 0, i32 0, !dbg !808
  %44 = load %struct.pkgset*, %struct.pkgset** %43, align 8, !dbg !808
  %45 = icmp eq %struct.pkgset* %41, %44, !dbg !809
  br i1 %45, label %52, label %46, !dbg !810

; <label>:46:                                     ; preds = %33
  %47 = load %struct.pkgset*, %struct.pkgset** %9, align 8, !dbg !811
  %48 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !813
  %49 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %48, i32 0, i32 0, !dbg !814
  %50 = load %struct.pkgset*, %struct.pkgset** %49, align 8, !dbg !814
  %51 = icmp eq %struct.pkgset* %47, %50, !dbg !815
  br i1 %51, label %52, label %53, !dbg !816

; <label>:52:                                     ; preds = %46, %33
  call void (i32, i8*, ...) @debug(i32 64, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i32 0, i32 0)), !dbg !817
  store i1 true, i1* %4, align 1, !dbg !819
  br label %108, !dbg !819

; <label>:53:                                     ; preds = %46
  br label %54, !dbg !820

; <label>:54:                                     ; preds = %53, %24, %3
  %55 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %5, align 8, !dbg !821
  %56 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %55, i32 0, i32 1, !dbg !823
  %57 = load %struct.fsys_namenode*, %struct.fsys_namenode** %56, align 8, !dbg !823
  %58 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %57, i32 0, i32 6, !dbg !824
  %59 = load i32, i32* %58, align 8, !dbg !824
  %60 = and i32 %59, 2, !dbg !825
  %61 = icmp ne i32 %60, 0, !dbg !825
  br i1 %61, label %62, label %63, !dbg !826

; <label>:62:                                     ; preds = %54
  call void (i32, i8*, ...) @debug(i32 64, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i32 0, i32 0)), !dbg !827
  store i1 false, i1* %4, align 1, !dbg !829
  br label %108, !dbg !829

; <label>:63:                                     ; preds = %54
  %64 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %5, align 8, !dbg !830
  %65 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %64, i32 0, i32 1, !dbg !831
  %66 = load %struct.fsys_namenode*, %struct.fsys_namenode** %65, align 8, !dbg !831
  %67 = call %struct.fsys_node_pkgs_iter* @fsys_node_pkgs_iter_new(%struct.fsys_namenode* %66), !dbg !832
  store %struct.fsys_node_pkgs_iter* %67, %struct.fsys_node_pkgs_iter** %8, align 8, !dbg !833
  br label %68, !dbg !834

; <label>:68:                                     ; preds = %103, %97, %82, %63
  %69 = load %struct.fsys_node_pkgs_iter*, %struct.fsys_node_pkgs_iter** %8, align 8, !dbg !835
  %70 = call %struct.pkginfo* @fsys_node_pkgs_iter_next(%struct.fsys_node_pkgs_iter* %69), !dbg !837
  store %struct.pkginfo* %70, %struct.pkginfo** %10, align 8, !dbg !838
  %71 = icmp ne %struct.pkginfo* %70, null, !dbg !839
  br i1 %71, label %72, label %106, !dbg !839

; <label>:72:                                     ; preds = %68
  %73 = load %struct.pkginfo*, %struct.pkginfo** %10, align 8, !dbg !840
  %74 = call i8* @pkg_name(%struct.pkginfo* %73, i32 3), !dbg !842
  call void (i32, i8*, ...) @debug(i32 64, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0), i8* %74), !dbg !843
  %75 = load %struct.pkginfo*, %struct.pkginfo** %10, align 8, !dbg !844
  %76 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !846
  %77 = icmp eq %struct.pkginfo* %75, %76, !dbg !847
  br i1 %77, label %82, label %78, !dbg !848

; <label>:78:                                     ; preds = %72
  %79 = load %struct.pkginfo*, %struct.pkginfo** %10, align 8, !dbg !849
  %80 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !851
  %81 = icmp eq %struct.pkginfo* %79, %80, !dbg !852
  br i1 %81, label %82, label %83, !dbg !853

; <label>:82:                                     ; preds = %78, %72
  br label %68, !dbg !854, !llvm.loop !855

; <label>:83:                                     ; preds = %78
  %84 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !856
  %85 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %84, i32 0, i32 9, !dbg !858
  %86 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %85, i32 0, i32 2, !dbg !859
  %87 = load i32, i32* %86, align 4, !dbg !859
  %88 = icmp eq i32 %87, 1, !dbg !860
  br i1 %88, label %89, label %98, !dbg !861

; <label>:89:                                     ; preds = %83
  %90 = load %struct.pkginfo*, %struct.pkginfo** %10, align 8, !dbg !862
  %91 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %90, i32 0, i32 0, !dbg !863
  %92 = load %struct.pkgset*, %struct.pkgset** %91, align 8, !dbg !863
  %93 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !864
  %94 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %93, i32 0, i32 0, !dbg !865
  %95 = load %struct.pkgset*, %struct.pkgset** %94, align 8, !dbg !865
  %96 = icmp eq %struct.pkgset* %92, %95, !dbg !866
  br i1 %96, label %97, label %98, !dbg !867

; <label>:97:                                     ; preds = %89
  br label %68, !dbg !869, !llvm.loop !855

; <label>:98:                                     ; preds = %89, %83
  call void (i32, i8*, ...) @debug(i32 64, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i32 0, i32 0)), !dbg !870
  %99 = load %struct.pkginfo*, %struct.pkginfo** %10, align 8, !dbg !871
  %100 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %99, i32 0, i32 18, !dbg !873
  %101 = load i8, i8* %100, align 8, !dbg !873
  %102 = trunc i8 %101 to i1, !dbg !873
  br i1 %102, label %104, label %103, !dbg !874

; <label>:103:                                    ; preds = %98
  call void (i32, i8*, ...) @debug(i32 64, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i32 0, i32 0)), !dbg !875
  br label %68, !dbg !877, !llvm.loop !855

; <label>:104:                                    ; preds = %98
  call void (i32, i8*, ...) @debug(i32 64, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i32 0, i32 0)), !dbg !878
  %105 = load %struct.fsys_node_pkgs_iter*, %struct.fsys_node_pkgs_iter** %8, align 8, !dbg !879
  call void @fsys_node_pkgs_iter_free(%struct.fsys_node_pkgs_iter* %105), !dbg !880
  store i1 false, i1* %4, align 1, !dbg !881
  br label %108, !dbg !881

; <label>:106:                                    ; preds = %68
  %107 = load %struct.fsys_node_pkgs_iter*, %struct.fsys_node_pkgs_iter** %8, align 8, !dbg !882
  call void @fsys_node_pkgs_iter_free(%struct.fsys_node_pkgs_iter* %107), !dbg !883
  call void (i32, i8*, ...) @debug(i32 64, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i32 0, i32 0)), !dbg !884
  store i1 true, i1* %4, align 1, !dbg !885
  br label %108, !dbg !885

; <label>:108:                                    ; preds = %106, %104, %62, %52
  %109 = load i1, i1* %4, align 1, !dbg !886
  ret i1 %109, !dbg !886
}

declare void @debug(i32, i8*, ...) #2

declare i8* @pkg_name(%struct.pkginfo*, i32) #2

declare %struct.fsys_node_pkgs_iter* @fsys_node_pkgs_iter_new(%struct.fsys_namenode*) #2

declare %struct.pkginfo* @fsys_node_pkgs_iter_next(%struct.fsys_node_pkgs_iter*) #2

declare void @fsys_node_pkgs_iter_free(%struct.fsys_node_pkgs_iter*) #2

; Function Attrs: nounwind uwtable
define void @cu_pathname(i32, i8**) #0 !dbg !887 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !891, metadata !631), !dbg !892
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !893, metadata !631), !dbg !894
  %5 = load i8**, i8*** %4, align 8, !dbg !895
  %6 = getelementptr inbounds i8*, i8** %5, i64 0, !dbg !895
  %7 = load i8*, i8** %6, align 8, !dbg !895
  call void @path_remove_tree(i8* %7), !dbg !896
  ret void, !dbg !897
}

declare void @path_remove_tree(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @tarfileread(%struct.tar_archive*, i8*, i32) #0 !dbg !898 {
  %4 = alloca %struct.tar_archive*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tarcontext*, align 8
  %8 = alloca i32, align 4
  store %struct.tar_archive* %0, %struct.tar_archive** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.tar_archive** %4, metadata !899, metadata !631), !dbg !900
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !901, metadata !631), !dbg !902
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !903, metadata !631), !dbg !904
  call void @llvm.dbg.declare(metadata %struct.tarcontext** %7, metadata !905, metadata !631), !dbg !906
  %9 = load %struct.tar_archive*, %struct.tar_archive** %4, align 8, !dbg !907
  %10 = getelementptr inbounds %struct.tar_archive, %struct.tar_archive* %9, i32 0, i32 3, !dbg !908
  %11 = load i8*, i8** %10, align 8, !dbg !908
  %12 = bitcast i8* %11 to %struct.tarcontext*, !dbg !909
  store %struct.tarcontext* %12, %struct.tarcontext** %7, align 8, !dbg !906
  call void @llvm.dbg.declare(metadata i32* %8, metadata !910, metadata !631), !dbg !911
  %13 = load %struct.tarcontext*, %struct.tarcontext** %7, align 8, !dbg !912
  %14 = getelementptr inbounds %struct.tarcontext, %struct.tarcontext* %13, i32 0, i32 0, !dbg !913
  %15 = load i32, i32* %14, align 8, !dbg !913
  %16 = load i8*, i8** %5, align 8, !dbg !914
  %17 = load i32, i32* %6, align 4, !dbg !915
  %18 = sext i32 %17 to i64, !dbg !915
  %19 = call i64 @fd_read(i32 %15, i8* %16, i64 %18), !dbg !916
  %20 = trunc i64 %19 to i32, !dbg !916
  store i32 %20, i32* %8, align 4, !dbg !917
  %21 = load i32, i32* %8, align 4, !dbg !918
  %22 = icmp slt i32 %21, 0, !dbg !920
  br i1 %22, label %23, label %25, !dbg !921

; <label>:23:                                     ; preds = %3
  %24 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i32 0, i32 0)) #10, !dbg !922
  call void (i8*, ...) @ohshite(i8* %24) #11, !dbg !923
  unreachable, !dbg !925

; <label>:25:                                     ; preds = %3
  %26 = load i32, i32* %8, align 4, !dbg !926
  ret i32 %26, !dbg !927
}

declare i64 @fd_read(i32, i8*, i64) #2

; Function Attrs: noreturn
declare void @ohshite(i8*, ...) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

; Function Attrs: nounwind uwtable
define void @setupfnamevbs(i8*) #0 !dbg !928 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !931, metadata !631), !dbg !932
  call void @varbuf_rollback(%struct.varbuf* @fnamevb, %struct.varbuf_state* @fname_state), !dbg !933
  %3 = load i8*, i8** %2, align 8, !dbg !934
  %4 = load i8*, i8** %2, align 8, !dbg !935
  %5 = call i64 @strlen(i8* %4) #12, !dbg !936
  call void @varbuf_add_buf(%struct.varbuf* @fnamevb, i8* %3, i64 %5), !dbg !937
  call void @varbuf_end_str(%struct.varbuf* @fnamevb), !dbg !939
  call void @varbuf_rollback(%struct.varbuf* @fnametmpvb, %struct.varbuf_state* @fname_state), !dbg !940
  %6 = load i8*, i8** %2, align 8, !dbg !941
  %7 = load i8*, i8** %2, align 8, !dbg !942
  %8 = call i64 @strlen(i8* %7) #12, !dbg !943
  call void @varbuf_add_buf(%struct.varbuf* @fnametmpvb, i8* %6, i64 %8), !dbg !944
  call void @varbuf_add_buf(%struct.varbuf* @fnametmpvb, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i64 9), !dbg !945
  call void @varbuf_end_str(%struct.varbuf* @fnametmpvb), !dbg !946
  call void @varbuf_rollback(%struct.varbuf* @fnamenewvb, %struct.varbuf_state* @fname_state), !dbg !947
  %9 = load i8*, i8** %2, align 8, !dbg !948
  %10 = load i8*, i8** %2, align 8, !dbg !949
  %11 = call i64 @strlen(i8* %10) #12, !dbg !950
  call void @varbuf_add_buf(%struct.varbuf* @fnamenewvb, i8* %9, i64 %11), !dbg !951
  call void @varbuf_add_buf(%struct.varbuf* @fnamenewvb, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i64 9), !dbg !952
  call void @varbuf_end_str(%struct.varbuf* @fnamenewvb), !dbg !953
  %12 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fnamevb, i32 0, i32 2), align 8, !dbg !954
  %13 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fnametmpvb, i32 0, i32 2), align 8, !dbg !955
  %14 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fnamenewvb, i32 0, i32 2), align 8, !dbg !956
  call void (i32, i8*, ...) @debug(i32 64, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i32 0, i32 0), i8* %12, i8* %13, i8* %14), !dbg !957
  ret void, !dbg !958
}

declare void @varbuf_rollback(%struct.varbuf*, %struct.varbuf_state*) #2

declare void @varbuf_add_buf(%struct.varbuf*, i8*, i64) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

declare void @varbuf_end_str(%struct.varbuf*) #2

; Function Attrs: nounwind uwtable
define i32 @tarobject(%struct.tar_archive*, %struct.tar_entry*) #0 !dbg !519 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tar_archive*, align 8
  %5 = alloca %struct.tar_entry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fsys_namenode*, align 8
  %8 = alloca %struct.conffile*, align 8
  %9 = alloca %struct.tarcontext*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca [33 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.stat, align 8
  %17 = alloca %struct.stat, align 8
  %18 = alloca %struct.file_stat, align 8
  %19 = alloca %struct.fsys_namenode_list*, align 8
  %20 = alloca %struct.fsys_namenode_list**, align 8
  %21 = alloca %struct.pkgset*, align 8
  %22 = alloca %struct.pkginfo*, align 8
  %23 = alloca %struct.fsys_node_pkgs_iter*, align 8
  %24 = alloca i32, align 4
  store %struct.tar_archive* %0, %struct.tar_archive** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.tar_archive** %4, metadata !959, metadata !631), !dbg !960
  store %struct.tar_entry* %1, %struct.tar_entry** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.tar_entry** %5, metadata !961, metadata !631), !dbg !962
  call void @llvm.dbg.declare(metadata i8** %6, metadata !963, metadata !631), !dbg !964
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %7, metadata !965, metadata !631), !dbg !966
  call void @llvm.dbg.declare(metadata %struct.conffile** %8, metadata !967, metadata !631), !dbg !968
  call void @llvm.dbg.declare(metadata %struct.tarcontext** %9, metadata !969, metadata !631), !dbg !970
  %25 = load %struct.tar_archive*, %struct.tar_archive** %4, align 8, !dbg !971
  %26 = getelementptr inbounds %struct.tar_archive, %struct.tar_archive* %25, i32 0, i32 3, !dbg !972
  %27 = load i8*, i8** %26, align 8, !dbg !972
  %28 = bitcast i8* %27 to %struct.tarcontext*, !dbg !971
  store %struct.tarcontext* %28, %struct.tarcontext** %9, align 8, !dbg !970
  call void @llvm.dbg.declare(metadata i8* %10, metadata !973, metadata !631), !dbg !974
  call void @llvm.dbg.declare(metadata i8* %11, metadata !975, metadata !631), !dbg !976
  call void @llvm.dbg.declare(metadata i8* %12, metadata !977, metadata !631), !dbg !978
  call void @llvm.dbg.declare(metadata [33 x i8]* %13, metadata !979, metadata !631), !dbg !983
  call void @llvm.dbg.declare(metadata i32* %14, metadata !984, metadata !631), !dbg !985
  call void @llvm.dbg.declare(metadata i64* %15, metadata !986, metadata !631), !dbg !989
  call void @llvm.dbg.declare(metadata %struct.stat* %16, metadata !990, metadata !631), !dbg !1020
  call void @llvm.dbg.declare(metadata %struct.stat* %17, metadata !1021, metadata !631), !dbg !1022
  call void @llvm.dbg.declare(metadata %struct.file_stat* %18, metadata !1023, metadata !631), !dbg !1024
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode_list** %19, metadata !1025, metadata !631), !dbg !1026
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode_list*** %20, metadata !1027, metadata !631), !dbg !1028
  call void @llvm.dbg.declare(metadata %struct.pkgset** %21, metadata !1029, metadata !631), !dbg !1030
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %22, metadata !1031, metadata !631), !dbg !1032
  %29 = load %struct.tar_entry*, %struct.tar_entry** %5, align 8, !dbg !1033
  call void @tar_entry_update_from_system(%struct.tar_entry* %29), !dbg !1034
  %30 = load %struct.tar_entry*, %struct.tar_entry** %5, align 8, !dbg !1035
  %31 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %30, i32 0, i32 2, !dbg !1037
  %32 = load i8*, i8** %31, align 8, !dbg !1037
  %33 = call i8* @strchr(i8* %32, i32 10) #12, !dbg !1038
  %34 = icmp ne i8* %33, null, !dbg !1038
  br i1 %34, label %35, label %40, !dbg !1039

; <label>:35:                                     ; preds = %2
  %36 = call i8* @gettext(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12, i32 0, i32 0)) #10, !dbg !1040
  %37 = load %struct.tar_entry*, %struct.tar_entry** %5, align 8, !dbg !1041
  %38 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %37, i32 0, i32 2, !dbg !1042
  %39 = load i8*, i8** %38, align 8, !dbg !1042
  call void (i8*, ...) @ohshit(i8* %36, i8* %39) #11, !dbg !1043
  unreachable, !dbg !1045

; <label>:40:                                     ; preds = %2
  %41 = load %struct.tarcontext*, %struct.tarcontext** %9, align 8, !dbg !1046
  %42 = getelementptr inbounds %struct.tarcontext, %struct.tarcontext* %41, i32 0, i32 2, !dbg !1047
  %43 = load %struct.fsys_namenode_queue*, %struct.fsys_namenode_queue** %42, align 8, !dbg !1047
  %44 = getelementptr inbounds %struct.fsys_namenode_queue, %struct.fsys_namenode_queue* %43, i32 0, i32 1, !dbg !1048
  %45 = load %struct.fsys_namenode_list**, %struct.fsys_namenode_list*** %44, align 8, !dbg !1048
  store %struct.fsys_namenode_list** %45, %struct.fsys_namenode_list*** %20, align 8, !dbg !1049
  %46 = load %struct.tarcontext*, %struct.tarcontext** %9, align 8, !dbg !1050
  %47 = getelementptr inbounds %struct.tarcontext, %struct.tarcontext* %46, i32 0, i32 2, !dbg !1051
  %48 = load %struct.fsys_namenode_queue*, %struct.fsys_namenode_queue** %47, align 8, !dbg !1051
  %49 = load %struct.tar_entry*, %struct.tar_entry** %5, align 8, !dbg !1052
  %50 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %49, i32 0, i32 2, !dbg !1053
  %51 = load i8*, i8** %50, align 8, !dbg !1053
  %52 = call %struct.fsys_namenode* @fsys_hash_find_node(i8* %51, i32 0), !dbg !1054
  %53 = call %struct.fsys_namenode_list* @tar_fsys_namenode_queue_push(%struct.fsys_namenode_queue* %48, %struct.fsys_namenode* %52), !dbg !1055
  store %struct.fsys_namenode_list* %53, %struct.fsys_namenode_list** %19, align 8, !dbg !1056
  %54 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %19, align 8, !dbg !1057
  %55 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %54, i32 0, i32 1, !dbg !1058
  %56 = load %struct.fsys_namenode*, %struct.fsys_namenode** %55, align 8, !dbg !1058
  %57 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %56, i32 0, i32 6, !dbg !1059
  %58 = load i32, i32* %57, align 8, !dbg !1060
  %59 = or i32 %58, 2, !dbg !1060
  store i32 %59, i32* %57, align 8, !dbg !1060
  %60 = load %struct.tar_entry*, %struct.tar_entry** %5, align 8, !dbg !1061
  %61 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %60, i32 0, i32 2, !dbg !1062
  %62 = load i8*, i8** %61, align 8, !dbg !1062
  %63 = load %struct.tar_entry*, %struct.tar_entry** %5, align 8, !dbg !1063
  %64 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %63, i32 0, i32 7, !dbg !1064
  %65 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %64, i32 0, i32 2, !dbg !1065
  %66 = load i32, i32* %65, align 8, !dbg !1065
  %67 = zext i32 %66 to i64, !dbg !1066
  %68 = load %struct.tar_entry*, %struct.tar_entry** %5, align 8, !dbg !1067
  %69 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %68, i32 0, i32 7, !dbg !1068
  %70 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %69, i32 0, i32 0, !dbg !1069
  %71 = load i32, i32* %70, align 8, !dbg !1069
  %72 = load %struct.tar_entry*, %struct.tar_entry** %5, align 8, !dbg !1070
  %73 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %72, i32 0, i32 7, !dbg !1071
  %74 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %73, i32 0, i32 1, !dbg !1072
  %75 = load i32, i32* %74, align 4, !dbg !1072
  %76 = load %struct.tar_entry*, %struct.tar_entry** %5, align 8, !dbg !1073
  %77 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %76, i32 0, i32 1, !dbg !1074
  %78 = load i32, i32* %77, align 4, !dbg !1074
  %79 = load %struct.tar_entry*, %struct.tar_entry** %5, align 8, !dbg !1075
  %80 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %79, i32 0, i32 1, !dbg !1076
  %81 = load i32, i32* %80, align 4, !dbg !1076
  %82 = icmp uge i32 %81, 48, !dbg !1077
  br i1 %82, label %83, label %97, !dbg !1078

; <label>:83:                                     ; preds = %40
  %84 = load %struct.tar_entry*, %struct.tar_entry** %5, align 8, !dbg !1079
  %85 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %84, i32 0, i32 1, !dbg !1081
  %86 = load i32, i32* %85, align 4, !dbg !1081
  %87 = icmp ule i32 %86, 54, !dbg !1082
  br i1 %87, label %88, label %97, !dbg !1083

; <label>:88:                                     ; preds = %83
  %89 = load %struct.tar_entry*, %struct.tar_entry** %5, align 8, !dbg !1084
  %90 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %89, i32 0, i32 1, !dbg !1086
  %91 = load i32, i32* %90, align 4, !dbg !1086
  %92 = sub i32 %91, 48, !dbg !1087
  %93 = zext i32 %92 to i64, !dbg !1088
  %94 = getelementptr inbounds [8 x i8], [8 x i8]* @.str.14, i64 0, i64 %93, !dbg !1088
  %95 = load i8, i8* %94, align 1, !dbg !1088
  %96 = sext i8 %95 to i32, !dbg !1088
  br label %98, !dbg !1089

; <label>:97:                                     ; preds = %83, %40
  br label %98, !dbg !1090

; <label>:98:                                     ; preds = %97, %88
  %99 = phi i32 [ %96, %88 ], [ 63, %97 ], !dbg !1092
  %100 = load %struct.tar_entry*, %struct.tar_entry** %5, align 8, !dbg !1094
  %101 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %100, i32 0, i32 3, !dbg !1095
  %102 = load i8*, i8** %101, align 8, !dbg !1095
  %103 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %19, align 8, !dbg !1096
  %104 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %103, i32 0, i32 1, !dbg !1097
  %105 = load %struct.fsys_namenode*, %struct.fsys_namenode** %104, align 8, !dbg !1097
  %106 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %105, i32 0, i32 1, !dbg !1098
  %107 = load i8*, i8** %106, align 8, !dbg !1098
  %108 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %19, align 8, !dbg !1099
  %109 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %108, i32 0, i32 1, !dbg !1100
  %110 = load %struct.fsys_namenode*, %struct.fsys_namenode** %109, align 8, !dbg !1100
  %111 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %110, i32 0, i32 6, !dbg !1101
  %112 = load i32, i32* %111, align 8, !dbg !1101
  %113 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %19, align 8, !dbg !1102
  %114 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %113, i32 0, i32 1, !dbg !1103
  %115 = load %struct.fsys_namenode*, %struct.fsys_namenode** %114, align 8, !dbg !1103
  %116 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %115, i32 0, i32 3, !dbg !1104
  %117 = load %struct.fsys_diversion*, %struct.fsys_diversion** %116, align 8, !dbg !1104
  %118 = icmp ne %struct.fsys_diversion* %117, null, !dbg !1102
  br i1 %118, label %119, label %138, !dbg !1105

; <label>:119:                                    ; preds = %98
  %120 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %19, align 8, !dbg !1106
  %121 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %120, i32 0, i32 1, !dbg !1107
  %122 = load %struct.fsys_namenode*, %struct.fsys_namenode** %121, align 8, !dbg !1107
  %123 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %122, i32 0, i32 3, !dbg !1108
  %124 = load %struct.fsys_diversion*, %struct.fsys_diversion** %123, align 8, !dbg !1108
  %125 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %124, i32 0, i32 0, !dbg !1109
  %126 = load %struct.fsys_namenode*, %struct.fsys_namenode** %125, align 8, !dbg !1109
  %127 = icmp ne %struct.fsys_namenode* %126, null, !dbg !1106
  br i1 %127, label %128, label %138, !dbg !1110

; <label>:128:                                    ; preds = %119
  %129 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %19, align 8, !dbg !1111
  %130 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %129, i32 0, i32 1, !dbg !1112
  %131 = load %struct.fsys_namenode*, %struct.fsys_namenode** %130, align 8, !dbg !1112
  %132 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %131, i32 0, i32 3, !dbg !1113
  %133 = load %struct.fsys_diversion*, %struct.fsys_diversion** %132, align 8, !dbg !1113
  %134 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %133, i32 0, i32 0, !dbg !1114
  %135 = load %struct.fsys_namenode*, %struct.fsys_namenode** %134, align 8, !dbg !1114
  %136 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %135, i32 0, i32 1, !dbg !1115
  %137 = load i8*, i8** %136, align 8, !dbg !1115
  br label %139, !dbg !1116

; <label>:138:                                    ; preds = %119, %98
  br label %139, !dbg !1117

; <label>:139:                                    ; preds = %138, %128
  %140 = phi i8* [ %137, %128 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), %138 ], !dbg !1118
  call void (i32, i8*, ...) @debug(i32 8, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.13, i32 0, i32 0), i8* %62, i64 %67, i32 %71, i32 %75, i32 %78, i32 %99, i8* %102, i8* %107, i32 %112, i8* %140), !dbg !1119
  %141 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %19, align 8, !dbg !1120
  %142 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %141, i32 0, i32 1, !dbg !1122
  %143 = load %struct.fsys_namenode*, %struct.fsys_namenode** %142, align 8, !dbg !1122
  %144 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %143, i32 0, i32 3, !dbg !1123
  %145 = load %struct.fsys_diversion*, %struct.fsys_diversion** %144, align 8, !dbg !1123
  %146 = icmp ne %struct.fsys_diversion* %145, null, !dbg !1120
  br i1 %146, label %147, label %202, !dbg !1124

; <label>:147:                                    ; preds = %139
  %148 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %19, align 8, !dbg !1125
  %149 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %148, i32 0, i32 1, !dbg !1127
  %150 = load %struct.fsys_namenode*, %struct.fsys_namenode** %149, align 8, !dbg !1127
  %151 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %150, i32 0, i32 3, !dbg !1128
  %152 = load %struct.fsys_diversion*, %struct.fsys_diversion** %151, align 8, !dbg !1128
  %153 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %152, i32 0, i32 1, !dbg !1129
  %154 = load %struct.fsys_namenode*, %struct.fsys_namenode** %153, align 8, !dbg !1129
  %155 = icmp ne %struct.fsys_namenode* %154, null, !dbg !1125
  br i1 %155, label %156, label %202, !dbg !1130

; <label>:156:                                    ; preds = %147
  %157 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %19, align 8, !dbg !1131
  %158 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %157, i32 0, i32 1, !dbg !1133
  %159 = load %struct.fsys_namenode*, %struct.fsys_namenode** %158, align 8, !dbg !1133
  %160 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %159, i32 0, i32 3, !dbg !1134
  %161 = load %struct.fsys_diversion*, %struct.fsys_diversion** %160, align 8, !dbg !1134
  %162 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %161, i32 0, i32 2, !dbg !1135
  %163 = load %struct.pkgset*, %struct.pkgset** %162, align 8, !dbg !1135
  store %struct.pkgset* %163, %struct.pkgset** %21, align 8, !dbg !1136
  %164 = load %struct.pkgset*, %struct.pkgset** %21, align 8, !dbg !1137
  %165 = icmp ne %struct.pkgset* %164, null, !dbg !1137
  br i1 %165, label %166, label %185, !dbg !1139

; <label>:166:                                    ; preds = %156
  %167 = call i8* @gettext(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.16, i32 0, i32 0)) #10, !dbg !1140
  %168 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %19, align 8, !dbg !1142
  %169 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %168, i32 0, i32 1, !dbg !1143
  %170 = load %struct.fsys_namenode*, %struct.fsys_namenode** %169, align 8, !dbg !1143
  %171 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %170, i32 0, i32 1, !dbg !1144
  %172 = load i8*, i8** %171, align 8, !dbg !1144
  %173 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %19, align 8, !dbg !1145
  %174 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %173, i32 0, i32 1, !dbg !1146
  %175 = load %struct.fsys_namenode*, %struct.fsys_namenode** %174, align 8, !dbg !1146
  %176 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %175, i32 0, i32 3, !dbg !1147
  %177 = load %struct.fsys_diversion*, %struct.fsys_diversion** %176, align 8, !dbg !1147
  %178 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %177, i32 0, i32 1, !dbg !1148
  %179 = load %struct.fsys_namenode*, %struct.fsys_namenode** %178, align 8, !dbg !1148
  %180 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %179, i32 0, i32 1, !dbg !1149
  %181 = load i8*, i8** %180, align 8, !dbg !1149
  %182 = load %struct.pkgset*, %struct.pkgset** %21, align 8, !dbg !1150
  %183 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %182, i32 0, i32 1, !dbg !1151
  %184 = load i8*, i8** %183, align 8, !dbg !1151
  call void (i32, i8*, ...) @forcibleerr(i32 524288, i8* %167, i8* %172, i8* %181, i8* %184), !dbg !1152
  br label %201, !dbg !1153

; <label>:185:                                    ; preds = %156
  %186 = call i8* @gettext(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.17, i32 0, i32 0)) #10, !dbg !1154
  %187 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %19, align 8, !dbg !1156
  %188 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %187, i32 0, i32 1, !dbg !1157
  %189 = load %struct.fsys_namenode*, %struct.fsys_namenode** %188, align 8, !dbg !1157
  %190 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %189, i32 0, i32 1, !dbg !1158
  %191 = load i8*, i8** %190, align 8, !dbg !1158
  %192 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %19, align 8, !dbg !1159
  %193 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %192, i32 0, i32 1, !dbg !1160
  %194 = load %struct.fsys_namenode*, %struct.fsys_namenode** %193, align 8, !dbg !1160
  %195 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %194, i32 0, i32 3, !dbg !1161
  %196 = load %struct.fsys_diversion*, %struct.fsys_diversion** %195, align 8, !dbg !1161
  %197 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %196, i32 0, i32 1, !dbg !1162
  %198 = load %struct.fsys_namenode*, %struct.fsys_namenode** %197, align 8, !dbg !1162
  %199 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %198, i32 0, i32 1, !dbg !1163
  %200 = load i8*, i8** %199, align 8, !dbg !1163
  call void (i32, i8*, ...) @forcibleerr(i32 524288, i8* %186, i8* %191, i8* %200), !dbg !1164
  br label %201

; <label>:201:                                    ; preds = %185, %166
  br label %202, !dbg !1165

; <label>:202:                                    ; preds = %201, %147, %139
  %203 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %19, align 8, !dbg !1166
  %204 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %203, i32 0, i32 1, !dbg !1168
  %205 = load %struct.fsys_namenode*, %struct.fsys_namenode** %204, align 8, !dbg !1168
  %206 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %205, i32 0, i32 4, !dbg !1169
  %207 = load %struct.file_stat*, %struct.file_stat** %206, align 8, !dbg !1169
  %208 = icmp ne %struct.file_stat* %207, null, !dbg !1166
  br i1 %208, label %209, label %225, !dbg !1170

; <label>:209:                                    ; preds = %202
  %210 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %19, align 8, !dbg !1171
  %211 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %210, i32 0, i32 1, !dbg !1173
  %212 = load %struct.fsys_namenode*, %struct.fsys_namenode** %211, align 8, !dbg !1173
  %213 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %212, i32 0, i32 4, !dbg !1174
  %214 = load %struct.file_stat*, %struct.file_stat** %213, align 8, !dbg !1174
  %215 = bitcast %struct.file_stat* %18 to i8*, !dbg !1175
  %216 = bitcast %struct.file_stat* %214 to i8*, !dbg !1175
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %215, i8* %216, i64 32, i32 8, i1 false), !dbg !1175
  %217 = load %struct.tar_entry*, %struct.tar_entry** %5, align 8, !dbg !1176
  %218 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %217, i32 0, i32 7, !dbg !1177
  %219 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %218, i32 0, i32 2, !dbg !1178
  %220 = load i32, i32* %219, align 8, !dbg !1178
  %221 = and i32 %220, 61440, !dbg !1179
  %222 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %18, i32 0, i32 2, !dbg !1180
  %223 = load i32, i32* %222, align 8, !dbg !1181
  %224 = or i32 %223, %221, !dbg !1181
  store i32 %224, i32* %222, align 8, !dbg !1181
  br label %230, !dbg !1182

; <label>:225:                                    ; preds = %202
  %226 = load %struct.tar_entry*, %struct.tar_entry** %5, align 8, !dbg !1183
  %227 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %226, i32 0, i32 7, !dbg !1185
  %228 = bitcast %struct.file_stat* %18 to i8*, !dbg !1185
  %229 = bitcast %struct.file_stat* %227 to i8*, !dbg !1185
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %228, i8* %229, i64 32, i32 8, i1 false), !dbg !1185
  br label %230

; <label>:230:                                    ; preds = %225, %209
  %231 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %19, align 8, !dbg !1186
  %232 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %231, i32 0, i32 1, !dbg !1187
  %233 = load %struct.fsys_namenode*, %struct.fsys_namenode** %232, align 8, !dbg !1187
  %234 = load %struct.tarcontext*, %struct.tarcontext** %9, align 8, !dbg !1188
  %235 = getelementptr inbounds %struct.tarcontext, %struct.tarcontext* %234, i32 0, i32 1, !dbg !1189
  %236 = load %struct.pkginfo*, %struct.pkginfo** %235, align 8, !dbg !1189
  %237 = load %struct.tarcontext*, %struct.tarcontext** %9, align 8, !dbg !1190
  %238 = getelementptr inbounds %struct.tarcontext, %struct.tarcontext* %237, i32 0, i32 1, !dbg !1191
  %239 = load %struct.pkginfo*, %struct.pkginfo** %238, align 8, !dbg !1191
  %240 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %239, i32 0, i32 10, !dbg !1192
  %241 = call %struct.fsys_namenode* @namenodetouse(%struct.fsys_namenode* %233, %struct.pkginfo* %236, %struct.pkgbin* %240), !dbg !1193
  store %struct.fsys_namenode* %241, %struct.fsys_namenode** %7, align 8, !dbg !1194
  %242 = load %struct.fsys_namenode*, %struct.fsys_namenode** %7, align 8, !dbg !1195
  %243 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %242, i32 0, i32 1, !dbg !1196
  %244 = load i8*, i8** %243, align 8, !dbg !1196
  store i8* %244, i8** %6, align 8, !dbg !1197
  %245 = load %struct.fsys_namenode*, %struct.fsys_namenode** %7, align 8, !dbg !1198
  %246 = load %struct.tarcontext*, %struct.tarcontext** %9, align 8, !dbg !1199
  %247 = getelementptr inbounds %struct.tarcontext, %struct.tarcontext* %246, i32 0, i32 1, !dbg !1200
  %248 = load %struct.pkginfo*, %struct.pkginfo** %247, align 8, !dbg !1200
  call void @trig_file_activate(%struct.fsys_namenode* %245, %struct.pkginfo* %248), !dbg !1201
  %249 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %19, align 8, !dbg !1202
  %250 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %249, i32 0, i32 1, !dbg !1204
  %251 = load %struct.fsys_namenode*, %struct.fsys_namenode** %250, align 8, !dbg !1204
  %252 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %251, i32 0, i32 6, !dbg !1205
  %253 = load i32, i32* %252, align 8, !dbg !1205
  %254 = and i32 %253, 1, !dbg !1206
  %255 = icmp ne i32 %254, 0, !dbg !1206
  br i1 %255, label %256, label %267, !dbg !1207

; <label>:256:                                    ; preds = %230
  %257 = load %struct.tarcontext*, %struct.tarcontext** %9, align 8, !dbg !1208
  %258 = getelementptr inbounds %struct.tarcontext, %struct.tarcontext* %257, i32 0, i32 1, !dbg !1211
  %259 = load %struct.pkginfo*, %struct.pkginfo** %258, align 8, !dbg !1211
  %260 = load i8*, i8** %6, align 8, !dbg !1212
  %261 = call i32 @conffderef(%struct.pkginfo* %259, %struct.varbuf* @tarobject.conffderefn, i8* %260), !dbg !1213
  %262 = icmp ne i32 %261, 0, !dbg !1213
  br i1 %262, label %263, label %265, !dbg !1214

; <label>:263:                                    ; preds = %256
  %264 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @tarobject.conffderefn, i32 0, i32 2), align 8, !dbg !1215
  store i8* %264, i8** %6, align 8, !dbg !1216
  br label %265, !dbg !1217

; <label>:265:                                    ; preds = %263, %256
  %266 = load i8*, i8** %6, align 8, !dbg !1218
  call void (i32, i8*, ...) @debug(i32 16, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i32 0, i32 0), i8* %266), !dbg !1219
  br label %267, !dbg !1220

; <label>:267:                                    ; preds = %265, %230
  %268 = load i8*, i8** %6, align 8, !dbg !1221
  call void @setupfnamevbs(i8* %268), !dbg !1222
  %269 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fnamevb, i32 0, i32 2), align 8, !dbg !1223
  %270 = call i32 @lstat(i8* %269, %struct.stat* %16) #10, !dbg !1224
  store i32 %270, i32* %14, align 4, !dbg !1225
  %271 = load i32, i32* %14, align 4, !dbg !1226
  %272 = icmp ne i32 %271, 0, !dbg !1226
  br i1 %272, label %273, label %317, !dbg !1228

; <label>:273:                                    ; preds = %267
  %274 = call i32* @__errno_location() #1, !dbg !1229
  %275 = load i32, i32* %274, align 4, !dbg !1232
  %276 = icmp ne i32 %275, 2, !dbg !1233
  br i1 %276, label %277, label %286, !dbg !1234

; <label>:277:                                    ; preds = %273
  %278 = call i32* @__errno_location() #1, !dbg !1235
  %279 = load i32, i32* %278, align 4, !dbg !1237
  %280 = icmp ne i32 %279, 20, !dbg !1238
  br i1 %280, label %281, label %286, !dbg !1239

; <label>:281:                                    ; preds = %277
  %282 = call i8* @gettext(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.19, i32 0, i32 0)) #10, !dbg !1240
  %283 = load %struct.tar_entry*, %struct.tar_entry** %5, align 8, !dbg !1241
  %284 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %283, i32 0, i32 2, !dbg !1242
  %285 = load i8*, i8** %284, align 8, !dbg !1242
  call void (i8*, ...) @ohshite(i8* %282, i8* %285) #11, !dbg !1243
  unreachable, !dbg !1244

; <label>:286:                                    ; preds = %277, %273
  %287 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fnametmpvb, i32 0, i32 2), align 8, !dbg !1245
  %288 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fnamevb, i32 0, i32 2), align 8, !dbg !1247
  %289 = call i32 @rename(i8* %287, i8* %288) #10, !dbg !1248
  %290 = icmp ne i32 %289, 0, !dbg !1248
  br i1 %290, label %291, label %305, !dbg !1249

; <label>:291:                                    ; preds = %286
  %292 = call i32* @__errno_location() #1, !dbg !1250
  %293 = load i32, i32* %292, align 4, !dbg !1253
  %294 = icmp ne i32 %293, 2, !dbg !1254
  br i1 %294, label %295, label %304, !dbg !1255

; <label>:295:                                    ; preds = %291
  %296 = call i32* @__errno_location() #1, !dbg !1256
  %297 = load i32, i32* %296, align 4, !dbg !1258
  %298 = icmp ne i32 %297, 20, !dbg !1259
  br i1 %298, label %299, label %304, !dbg !1260

; <label>:299:                                    ; preds = %295
  %300 = call i8* @gettext(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.20, i32 0, i32 0)) #10, !dbg !1261
  %301 = load %struct.tar_entry*, %struct.tar_entry** %5, align 8, !dbg !1262
  %302 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %301, i32 0, i32 2, !dbg !1263
  %303 = load i8*, i8** %302, align 8, !dbg !1263
  call void (i8*, ...) @ohshite(i8* %300, i8* %303) #11, !dbg !1264
  unreachable, !dbg !1265

; <label>:304:                                    ; preds = %295, %291
  call void (i32, i8*, ...) @debug(i32 64, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i32 0, i32 0)), !dbg !1266
  br label %316, !dbg !1267

; <label>:305:                                    ; preds = %286
  call void (i32, i8*, ...) @debug(i32 64, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.22, i32 0, i32 0)), !dbg !1268
  %306 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fnamevb, i32 0, i32 2), align 8, !dbg !1270
  %307 = call i32 @lstat(i8* %306, %struct.stat* %16) #10, !dbg !1271
  store i32 %307, i32* %14, align 4, !dbg !1272
  %308 = load i32, i32* %14, align 4, !dbg !1273
  %309 = icmp ne i32 %308, 0, !dbg !1273
  br i1 %309, label %310, label %315, !dbg !1275

; <label>:310:                                    ; preds = %305
  %311 = call i8* @gettext(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.23, i32 0, i32 0)) #10, !dbg !1276
  %312 = load %struct.tar_entry*, %struct.tar_entry** %5, align 8, !dbg !1277
  %313 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %312, i32 0, i32 2, !dbg !1278
  %314 = load i8*, i8** %313, align 8, !dbg !1278
  call void (i8*, ...) @ohshite(i8* %311, i8* %314) #11, !dbg !1279
  unreachable, !dbg !1281

; <label>:315:                                    ; preds = %305
  br label %316

; <label>:316:                                    ; preds = %315, %304
  br label %318, !dbg !1282

; <label>:317:                                    ; preds = %267
  call void (i32, i8*, ...) @debug(i32 64, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i32 0, i32 0)), !dbg !1283
  br label %318

; <label>:318:                                    ; preds = %317, %316
  store i8 0, i8* %10, align 1, !dbg !1285
  %319 = load %struct.tar_entry*, %struct.tar_entry** %5, align 8, !dbg !1286
  %320 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %319, i32 0, i32 1, !dbg !1287
  %321 = load i32, i32* %320, align 4, !dbg !1287
  switch i32 %321, label %359 [
    i32 50, label %322
    i32 53, label %347
    i32 48, label %358
    i32 51, label %358
    i32 52, label %358
    i32 54, label %358
    i32 49, label %358
  ], !dbg !1288

; <label>:322:                                    ; preds = %318
  %323 = load i32, i32* %14, align 4, !dbg !1289
  %324 = icmp ne i32 %323, 0, !dbg !1289
  br i1 %324, label %331, label %325, !dbg !1292

; <label>:325:                                    ; preds = %322
  %326 = getelementptr inbounds %struct.stat, %struct.stat* %16, i32 0, i32 3, !dbg !1293
  %327 = load i32, i32* %326, align 8, !dbg !1293
  %328 = and i32 %327, 61440, !dbg !1295
  %329 = icmp eq i32 %328, 16384, !dbg !1296
  br i1 %329, label %330, label %331, !dbg !1297

; <label>:330:                                    ; preds = %325
  call void (i32, i8*, ...) @debug(i32 64, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.25, i32 0, i32 0)), !dbg !1298
  store i8 1, i8* %10, align 1, !dbg !1300
  br label %346, !dbg !1301

; <label>:331:                                    ; preds = %325, %322
  %332 = load i32, i32* %14, align 4, !dbg !1302
  %333 = icmp ne i32 %332, 0, !dbg !1302
  br i1 %333, label %345, label %334, !dbg !1305

; <label>:334:                                    ; preds = %331
  %335 = getelementptr inbounds %struct.stat, %struct.stat* %16, i32 0, i32 3, !dbg !1306
  %336 = load i32, i32* %335, align 8, !dbg !1306
  %337 = and i32 %336, 61440, !dbg !1308
  %338 = icmp eq i32 %337, 40960, !dbg !1309
  br i1 %338, label %339, label %345, !dbg !1310

; <label>:339:                                    ; preds = %334
  %340 = load %struct.tar_entry*, %struct.tar_entry** %5, align 8, !dbg !1311
  %341 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fnamevb, i32 0, i32 2), align 8, !dbg !1314
  %342 = call zeroext i1 @linktosameexistingdir(%struct.tar_entry* %340, i8* %341, %struct.varbuf* @tarobject.symlinkfn), !dbg !1315
  br i1 %342, label %343, label %344, !dbg !1316

; <label>:343:                                    ; preds = %339
  store i8 1, i8* %10, align 1, !dbg !1317
  br label %344, !dbg !1318

; <label>:344:                                    ; preds = %343, %339
  br label %345, !dbg !1319

; <label>:345:                                    ; preds = %344, %334, %331
  br label %346

; <label>:346:                                    ; preds = %345, %330
  br label %367, !dbg !1320

; <label>:347:                                    ; preds = %318
  %348 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fnamevb, i32 0, i32 2), align 8, !dbg !1321
  %349 = call i32 @stat(i8* %348, %struct.stat* %17) #10, !dbg !1323
  %350 = icmp ne i32 %349, 0, !dbg !1323
  br i1 %350, label %357, label %351, !dbg !1324

; <label>:351:                                    ; preds = %347
  %352 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 3, !dbg !1325
  %353 = load i32, i32* %352, align 8, !dbg !1325
  %354 = and i32 %353, 61440, !dbg !1327
  %355 = icmp eq i32 %354, 16384, !dbg !1328
  br i1 %355, label %356, label %357, !dbg !1329

; <label>:356:                                    ; preds = %351
  call void (i32, i8*, ...) @debug(i32 64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i32 0, i32 0)), !dbg !1330
  store i8 1, i8* %10, align 1, !dbg !1332
  br label %357, !dbg !1333

; <label>:357:                                    ; preds = %356, %351, %347
  br label %367, !dbg !1334

; <label>:358:                                    ; preds = %318, %318, %318, %318, %318
  br label %367, !dbg !1335

; <label>:359:                                    ; preds = %318
  %360 = call i8* @gettext(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.27, i32 0, i32 0)) #10, !dbg !1336
  %361 = load %struct.tar_entry*, %struct.tar_entry** %5, align 8, !dbg !1337
  %362 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %361, i32 0, i32 2, !dbg !1338
  %363 = load i8*, i8** %362, align 8, !dbg !1338
  %364 = load %struct.tar_entry*, %struct.tar_entry** %5, align 8, !dbg !1339
  %365 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %364, i32 0, i32 1, !dbg !1340
  %366 = load i32, i32* %365, align 4, !dbg !1340
  call void (i8*, ...) @ohshit(i8* %360, i8* %363, i32 %366) #11, !dbg !1341
  unreachable, !dbg !1343

; <label>:367:                                    ; preds = %358, %357, %346
  store i8 0, i8* %11, align 1, !dbg !1344
  store i8 0, i8* %12, align 1, !dbg !1345
  %368 = load i8, i8* %10, align 1, !dbg !1346
  %369 = trunc i8 %368 to i1, !dbg !1346
  br i1 %369, label %662, label %370, !dbg !1348

; <label>:370:                                    ; preds = %367
  call void @llvm.dbg.declare(metadata %struct.fsys_node_pkgs_iter** %23, metadata !1349, metadata !631), !dbg !1351
  %371 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %19, align 8, !dbg !1352
  %372 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %371, i32 0, i32 1, !dbg !1353
  %373 = load %struct.fsys_namenode*, %struct.fsys_namenode** %372, align 8, !dbg !1353
  %374 = call %struct.fsys_node_pkgs_iter* @fsys_node_pkgs_iter_new(%struct.fsys_namenode* %373), !dbg !1354
  store %struct.fsys_node_pkgs_iter* %374, %struct.fsys_node_pkgs_iter** %23, align 8, !dbg !1355
  br label %375, !dbg !1356

; <label>:375:                                    ; preds = %659, %563, %512, %504, %498, %489, %479, %421, %385, %370
  %376 = load %struct.fsys_node_pkgs_iter*, %struct.fsys_node_pkgs_iter** %23, align 8, !dbg !1357
  %377 = call %struct.pkginfo* @fsys_node_pkgs_iter_next(%struct.fsys_node_pkgs_iter* %376), !dbg !1359
  store %struct.pkginfo* %377, %struct.pkginfo** %22, align 8, !dbg !1360
  %378 = icmp ne %struct.pkginfo* %377, null, !dbg !1361
  br i1 %378, label %379, label %660, !dbg !1361

; <label>:379:                                    ; preds = %375
  %380 = load %struct.pkginfo*, %struct.pkginfo** %22, align 8, !dbg !1362
  %381 = load %struct.tarcontext*, %struct.tarcontext** %9, align 8, !dbg !1365
  %382 = getelementptr inbounds %struct.tarcontext, %struct.tarcontext* %381, i32 0, i32 1, !dbg !1366
  %383 = load %struct.pkginfo*, %struct.pkginfo** %382, align 8, !dbg !1366
  %384 = icmp eq %struct.pkginfo* %380, %383, !dbg !1367
  br i1 %384, label %385, label %386, !dbg !1368

; <label>:385:                                    ; preds = %379
  br label %375, !dbg !1369, !llvm.loop !1370

; <label>:386:                                    ; preds = %379
  %387 = load %struct.pkginfo*, %struct.pkginfo** %22, align 8, !dbg !1371
  %388 = call i8* @pkg_name(%struct.pkginfo* %387, i32 3), !dbg !1372
  call void (i32, i8*, ...) @debug(i32 8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.28, i32 0, i32 0), i8* %388), !dbg !1373
  %389 = load %struct.pkginfo*, %struct.pkginfo** %22, align 8, !dbg !1374
  %390 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %389, i32 0, i32 0, !dbg !1376
  %391 = load %struct.pkgset*, %struct.pkgset** %390, align 8, !dbg !1376
  %392 = load %struct.tarcontext*, %struct.tarcontext** %9, align 8, !dbg !1377
  %393 = getelementptr inbounds %struct.tarcontext, %struct.tarcontext* %392, i32 0, i32 1, !dbg !1378
  %394 = load %struct.pkginfo*, %struct.pkginfo** %393, align 8, !dbg !1378
  %395 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %394, i32 0, i32 0, !dbg !1379
  %396 = load %struct.pkgset*, %struct.pkgset** %395, align 8, !dbg !1379
  %397 = icmp eq %struct.pkgset* %391, %396, !dbg !1380
  br i1 %397, label %398, label %433, !dbg !1381

; <label>:398:                                    ; preds = %386
  %399 = load %struct.pkginfo*, %struct.pkginfo** %22, align 8, !dbg !1382
  %400 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %399, i32 0, i32 9, !dbg !1383
  %401 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %400, i32 0, i32 2, !dbg !1384
  %402 = load i32, i32* %401, align 4, !dbg !1384
  %403 = icmp eq i32 %402, 1, !dbg !1385
  br i1 %403, label %404, label %433, !dbg !1386

; <label>:404:                                    ; preds = %398
  %405 = load %struct.tarcontext*, %struct.tarcontext** %9, align 8, !dbg !1387
  %406 = getelementptr inbounds %struct.tarcontext, %struct.tarcontext* %405, i32 0, i32 1, !dbg !1388
  %407 = load %struct.pkginfo*, %struct.pkginfo** %406, align 8, !dbg !1388
  %408 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %407, i32 0, i32 10, !dbg !1389
  %409 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %408, i32 0, i32 2, !dbg !1390
  %410 = load i32, i32* %409, align 4, !dbg !1390
  %411 = icmp eq i32 %410, 1, !dbg !1391
  br i1 %411, label %412, label %433, !dbg !1392

; <label>:412:                                    ; preds = %404
  %413 = load i32, i32* %14, align 4, !dbg !1394
  %414 = icmp eq i32 %413, 0, !dbg !1397
  br i1 %414, label %415, label %421, !dbg !1398

; <label>:415:                                    ; preds = %412
  %416 = load %struct.tarcontext*, %struct.tarcontext** %9, align 8, !dbg !1399
  %417 = getelementptr inbounds %struct.tarcontext, %struct.tarcontext* %416, i32 0, i32 3, !dbg !1401
  %418 = load i8, i8* %417, align 8, !dbg !1401
  %419 = trunc i8 %418 to i1, !dbg !1401
  br i1 %419, label %420, label %421, !dbg !1402

; <label>:420:                                    ; preds = %415
  store i8 1, i8* %12, align 1, !dbg !1403
  br label %421, !dbg !1404

; <label>:421:                                    ; preds = %420, %415, %412
  %422 = load %struct.pkginfo*, %struct.pkginfo** %22, align 8, !dbg !1405
  %423 = call i8* @pkg_name(%struct.pkginfo* %422, i32 3), !dbg !1406
  %424 = load %struct.pkginfo*, %struct.pkginfo** %22, align 8, !dbg !1407
  %425 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %424, i32 0, i32 9, !dbg !1408
  %426 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %425, i32 0, i32 11, !dbg !1409
  %427 = call i8* @versiondescribe(%struct.dpkg_version* %426, i32 1), !dbg !1410
  %428 = load %struct.tarcontext*, %struct.tarcontext** %9, align 8, !dbg !1411
  %429 = getelementptr inbounds %struct.tarcontext, %struct.tarcontext* %428, i32 0, i32 3, !dbg !1412
  %430 = load i8, i8* %429, align 8, !dbg !1412
  %431 = trunc i8 %430 to i1, !dbg !1412
  %432 = zext i1 %431 to i32, !dbg !1411
  call void (i32, i8*, ...) @debug(i32 64, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.29, i32 0, i32 0), i8* %423, i8* %427, i32 %432), !dbg !1413
  br label %375, !dbg !1414, !llvm.loop !1370

; <label>:433:                                    ; preds = %404, %398, %386
  %434 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %19, align 8, !dbg !1415
  %435 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %434, i32 0, i32 1, !dbg !1417
  %436 = load %struct.fsys_namenode*, %struct.fsys_namenode** %435, align 8, !dbg !1417
  %437 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %436, i32 0, i32 3, !dbg !1418
  %438 = load %struct.fsys_diversion*, %struct.fsys_diversion** %437, align 8, !dbg !1418
  %439 = icmp ne %struct.fsys_diversion* %438, null, !dbg !1415
  br i1 %439, label %440, label %481, !dbg !1419

; <label>:440:                                    ; preds = %433
  %441 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %19, align 8, !dbg !1420
  %442 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %441, i32 0, i32 1, !dbg !1422
  %443 = load %struct.fsys_namenode*, %struct.fsys_namenode** %442, align 8, !dbg !1422
  %444 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %443, i32 0, i32 3, !dbg !1423
  %445 = load %struct.fsys_diversion*, %struct.fsys_diversion** %444, align 8, !dbg !1423
  %446 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %445, i32 0, i32 0, !dbg !1424
  %447 = load %struct.fsys_namenode*, %struct.fsys_namenode** %446, align 8, !dbg !1424
  %448 = icmp ne %struct.fsys_namenode* %447, null, !dbg !1420
  br i1 %448, label %449, label %481, !dbg !1425

; <label>:449:                                    ; preds = %440
  %450 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %19, align 8, !dbg !1426
  %451 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %450, i32 0, i32 1, !dbg !1428
  %452 = load %struct.fsys_namenode*, %struct.fsys_namenode** %451, align 8, !dbg !1428
  %453 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %452, i32 0, i32 3, !dbg !1429
  %454 = load %struct.fsys_diversion*, %struct.fsys_diversion** %453, align 8, !dbg !1429
  %455 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %454, i32 0, i32 2, !dbg !1430
  %456 = load %struct.pkgset*, %struct.pkgset** %455, align 8, !dbg !1430
  store %struct.pkgset* %456, %struct.pkgset** %21, align 8, !dbg !1431
  %457 = load %struct.pkgset*, %struct.pkgset** %21, align 8, !dbg !1432
  %458 = icmp ne %struct.pkgset* %457, null, !dbg !1432
  br i1 %458, label %459, label %463, !dbg !1432

; <label>:459:                                    ; preds = %449
  %460 = load %struct.pkgset*, %struct.pkgset** %21, align 8, !dbg !1433
  %461 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %460, i32 0, i32 1, !dbg !1435
  %462 = load i8*, i8** %461, align 8, !dbg !1435
  br label %464, !dbg !1436

; <label>:463:                                    ; preds = %449
  br label %464, !dbg !1437

; <label>:464:                                    ; preds = %463, %459
  %465 = phi i8* [ %462, %459 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), %463 ], !dbg !1439
  call void (i32, i8*, ...) @debug(i32 8, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.30, i32 0, i32 0), i8* %465), !dbg !1441
  %466 = load %struct.pkginfo*, %struct.pkginfo** %22, align 8, !dbg !1442
  %467 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %466, i32 0, i32 0, !dbg !1444
  %468 = load %struct.pkgset*, %struct.pkgset** %467, align 8, !dbg !1444
  %469 = load %struct.pkgset*, %struct.pkgset** %21, align 8, !dbg !1445
  %470 = icmp eq %struct.pkgset* %468, %469, !dbg !1446
  br i1 %470, label %479, label %471, !dbg !1447

; <label>:471:                                    ; preds = %464
  %472 = load %struct.tarcontext*, %struct.tarcontext** %9, align 8, !dbg !1448
  %473 = getelementptr inbounds %struct.tarcontext, %struct.tarcontext* %472, i32 0, i32 1, !dbg !1450
  %474 = load %struct.pkginfo*, %struct.pkginfo** %473, align 8, !dbg !1450
  %475 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %474, i32 0, i32 0, !dbg !1451
  %476 = load %struct.pkgset*, %struct.pkgset** %475, align 8, !dbg !1451
  %477 = load %struct.pkgset*, %struct.pkgset** %21, align 8, !dbg !1452
  %478 = icmp eq %struct.pkgset* %476, %477, !dbg !1453
  br i1 %478, label %479, label %480, !dbg !1454

; <label>:479:                                    ; preds = %471, %464
  br label %375, !dbg !1455, !llvm.loop !1370

; <label>:480:                                    ; preds = %471
  br label %481, !dbg !1456

; <label>:481:                                    ; preds = %480, %440, %433
  %482 = load i32, i32* %14, align 4, !dbg !1457
  %483 = icmp ne i32 %482, 0, !dbg !1459
  br i1 %483, label %484, label %490, !dbg !1460

; <label>:484:                                    ; preds = %481
  %485 = load %struct.tar_entry*, %struct.tar_entry** %5, align 8, !dbg !1461
  %486 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %485, i32 0, i32 1, !dbg !1463
  %487 = load i32, i32* %486, align 4, !dbg !1463
  %488 = icmp eq i32 %487, 53, !dbg !1464
  br i1 %488, label %489, label %490, !dbg !1465

; <label>:489:                                    ; preds = %484
  call void (i32, i8*, ...) @debug(i32 8, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i32 0, i32 0)), !dbg !1466
  br label %375, !dbg !1468, !llvm.loop !1370

; <label>:490:                                    ; preds = %484, %481
  %491 = load %struct.pkginfo*, %struct.pkginfo** %22, align 8, !dbg !1469
  call void @ensure_package_clientdata(%struct.pkginfo* %491), !dbg !1470
  %492 = load %struct.pkginfo*, %struct.pkginfo** %22, align 8, !dbg !1471
  %493 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %492, i32 0, i32 11, !dbg !1472
  %494 = load %struct.perpackagestate*, %struct.perpackagestate** %493, align 8, !dbg !1472
  %495 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %494, i32 0, i32 3, !dbg !1473
  %496 = load i32, i32* %495, align 4, !dbg !1473
  switch i32 %496, label %499 [
    i32 2, label %497
    i32 1, label %498
  ], !dbg !1474

; <label>:497:                                    ; preds = %490
  store i8 1, i8* %11, align 1, !dbg !1475
  br label %498, !dbg !1477

; <label>:498:                                    ; preds = %490, %497
  br label %375, !dbg !1478, !llvm.loop !1370

; <label>:499:                                    ; preds = %490
  %500 = load %struct.pkginfo*, %struct.pkginfo** %22, align 8, !dbg !1479
  %501 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %500, i32 0, i32 4, !dbg !1481
  %502 = load i32, i32* %501, align 8, !dbg !1481
  %503 = icmp eq i32 %502, 1, !dbg !1482
  br i1 %503, label %504, label %505, !dbg !1483

; <label>:504:                                    ; preds = %499
  br label %375, !dbg !1484, !llvm.loop !1370

; <label>:505:                                    ; preds = %499
  %506 = load %struct.pkginfo*, %struct.pkginfo** %22, align 8, !dbg !1485
  %507 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %506, i32 0, i32 11, !dbg !1487
  %508 = load %struct.perpackagestate*, %struct.perpackagestate** %507, align 8, !dbg !1487
  %509 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %508, i32 0, i32 0, !dbg !1488
  %510 = load i32, i32* %509, align 8, !dbg !1488
  %511 = icmp eq i32 %510, 1, !dbg !1489
  br i1 %511, label %512, label %513, !dbg !1490

; <label>:512:                                    ; preds = %505
  br label %375, !dbg !1491, !llvm.loop !1370

; <label>:513:                                    ; preds = %505
  %514 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %19, align 8, !dbg !1492
  %515 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %514, i32 0, i32 1, !dbg !1494
  %516 = load %struct.fsys_namenode*, %struct.fsys_namenode** %515, align 8, !dbg !1494
  %517 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %516, i32 0, i32 6, !dbg !1495
  %518 = load i32, i32* %517, align 8, !dbg !1495
  %519 = and i32 %518, 1, !dbg !1496
  %520 = icmp ne i32 %519, 0, !dbg !1496
  br i1 %520, label %521, label %565, !dbg !1497

; <label>:521:                                    ; preds = %513
  %522 = load i32, i32* %14, align 4, !dbg !1498
  %523 = icmp ne i32 %522, 0, !dbg !1498
  br i1 %523, label %565, label %524, !dbg !1499

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds %struct.stat, %struct.stat* %16, i32 0, i32 3, !dbg !1500
  %526 = load i32, i32* %525, align 8, !dbg !1500
  %527 = and i32 %526, 61440, !dbg !1502
  %528 = icmp eq i32 %527, 32768, !dbg !1503
  br i1 %528, label %529, label %565, !dbg !1504

; <label>:529:                                    ; preds = %524
  %530 = load %struct.pkginfo*, %struct.pkginfo** %22, align 8, !dbg !1505
  %531 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %530, i32 0, i32 9, !dbg !1508
  %532 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %531, i32 0, i32 12, !dbg !1509
  %533 = load %struct.conffile*, %struct.conffile** %532, align 8, !dbg !1509
  store %struct.conffile* %533, %struct.conffile** %8, align 8, !dbg !1510
  br label %534, !dbg !1511

; <label>:534:                                    ; preds = %556, %529
  %535 = load %struct.conffile*, %struct.conffile** %8, align 8, !dbg !1512
  %536 = icmp ne %struct.conffile* %535, null, !dbg !1514
  br i1 %536, label %537, label %560, !dbg !1514

; <label>:537:                                    ; preds = %534
  %538 = load %struct.conffile*, %struct.conffile** %8, align 8, !dbg !1516
  %539 = getelementptr inbounds %struct.conffile, %struct.conffile* %538, i32 0, i32 3, !dbg !1519
  %540 = load i8, i8* %539, align 8, !dbg !1519
  %541 = trunc i8 %540 to i1, !dbg !1519
  br i1 %541, label %543, label %542, !dbg !1520

; <label>:542:                                    ; preds = %537
  br label %556, !dbg !1521

; <label>:543:                                    ; preds = %537
  %544 = load %struct.conffile*, %struct.conffile** %8, align 8, !dbg !1522
  %545 = getelementptr inbounds %struct.conffile, %struct.conffile* %544, i32 0, i32 1, !dbg !1524
  %546 = load i8*, i8** %545, align 8, !dbg !1524
  %547 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %19, align 8, !dbg !1525
  %548 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %547, i32 0, i32 1, !dbg !1526
  %549 = load %struct.fsys_namenode*, %struct.fsys_namenode** %548, align 8, !dbg !1526
  %550 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %549, i32 0, i32 1, !dbg !1527
  %551 = load i8*, i8** %550, align 8, !dbg !1527
  %552 = call i32 @strcmp(i8* %546, i8* %551) #12, !dbg !1528
  %553 = icmp eq i32 %552, 0, !dbg !1529
  br i1 %553, label %554, label %555, !dbg !1530

; <label>:554:                                    ; preds = %543
  br label %560, !dbg !1531

; <label>:555:                                    ; preds = %543
  br label %556, !dbg !1532

; <label>:556:                                    ; preds = %555, %542
  %557 = load %struct.conffile*, %struct.conffile** %8, align 8, !dbg !1533
  %558 = getelementptr inbounds %struct.conffile, %struct.conffile* %557, i32 0, i32 0, !dbg !1534
  %559 = load %struct.conffile*, %struct.conffile** %558, align 8, !dbg !1534
  store %struct.conffile* %559, %struct.conffile** %8, align 8, !dbg !1535
  br label %534, !dbg !1536, !llvm.loop !1538

; <label>:560:                                    ; preds = %554, %534
  %561 = load %struct.conffile*, %struct.conffile** %8, align 8, !dbg !1540
  %562 = icmp ne %struct.conffile* %561, null, !dbg !1540
  br i1 %562, label %563, label %564, !dbg !1542

; <label>:563:                                    ; preds = %560
  call void (i32, i8*, ...) @debug(i32 64, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.32, i32 0, i32 0)), !dbg !1543
  br label %375, !dbg !1545, !llvm.loop !1370

; <label>:564:                                    ; preds = %560
  br label %565, !dbg !1546

; <label>:565:                                    ; preds = %564, %524, %521, %513
  %566 = load %struct.tarcontext*, %struct.tarcontext** %9, align 8, !dbg !1547
  %567 = getelementptr inbounds %struct.tarcontext, %struct.tarcontext* %566, i32 0, i32 1, !dbg !1549
  %568 = load %struct.pkginfo*, %struct.pkginfo** %567, align 8, !dbg !1549
  %569 = load %struct.tarcontext*, %struct.tarcontext** %9, align 8, !dbg !1550
  %570 = getelementptr inbounds %struct.tarcontext, %struct.tarcontext* %569, i32 0, i32 1, !dbg !1551
  %571 = load %struct.pkginfo*, %struct.pkginfo** %570, align 8, !dbg !1551
  %572 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %571, i32 0, i32 10, !dbg !1552
  %573 = load %struct.pkginfo*, %struct.pkginfo** %22, align 8, !dbg !1553
  %574 = load %struct.pkginfo*, %struct.pkginfo** %22, align 8, !dbg !1554
  %575 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %574, i32 0, i32 9, !dbg !1555
  %576 = call i32 @does_replace(%struct.pkginfo* %568, %struct.pkgbin* %572, %struct.pkginfo* %573, %struct.pkgbin* %575), !dbg !1556
  %577 = icmp ne i32 %576, 0, !dbg !1556
  br i1 %577, label %578, label %591, !dbg !1557

; <label>:578:                                    ; preds = %565
  %579 = call i8* @gettext(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.33, i32 0, i32 0)) #10, !dbg !1558
  %580 = load %struct.pkginfo*, %struct.pkginfo** %22, align 8, !dbg !1560
  %581 = call i8* @pkg_name(%struct.pkginfo* %580, i32 1), !dbg !1561
  %582 = load %struct.pkginfo*, %struct.pkginfo** %22, align 8, !dbg !1562
  %583 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %582, i32 0, i32 9, !dbg !1563
  %584 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %583, i32 0, i32 11, !dbg !1564
  %585 = call i8* @versiondescribe(%struct.dpkg_version* %584, i32 1), !dbg !1565
  %586 = call i32 (i8*, ...) @printf(i8* %579, i8* %581, i8* %585), !dbg !1566
  %587 = load %struct.pkginfo*, %struct.pkginfo** %22, align 8, !dbg !1568
  %588 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %587, i32 0, i32 11, !dbg !1569
  %589 = load %struct.perpackagestate*, %struct.perpackagestate** %588, align 8, !dbg !1569
  %590 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %589, i32 0, i32 3, !dbg !1570
  store i32 1, i32* %590, align 4, !dbg !1571
  br label %659, !dbg !1572

; <label>:591:                                    ; preds = %565
  %592 = load %struct.pkginfo*, %struct.pkginfo** %22, align 8, !dbg !1573
  %593 = load %struct.pkginfo*, %struct.pkginfo** %22, align 8, !dbg !1576
  %594 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %593, i32 0, i32 9, !dbg !1577
  %595 = load %struct.tarcontext*, %struct.tarcontext** %9, align 8, !dbg !1578
  %596 = getelementptr inbounds %struct.tarcontext, %struct.tarcontext* %595, i32 0, i32 1, !dbg !1579
  %597 = load %struct.pkginfo*, %struct.pkginfo** %596, align 8, !dbg !1579
  %598 = load %struct.tarcontext*, %struct.tarcontext** %9, align 8, !dbg !1580
  %599 = getelementptr inbounds %struct.tarcontext, %struct.tarcontext* %598, i32 0, i32 1, !dbg !1581
  %600 = load %struct.pkginfo*, %struct.pkginfo** %599, align 8, !dbg !1581
  %601 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %600, i32 0, i32 10, !dbg !1582
  %602 = call i32 @does_replace(%struct.pkginfo* %592, %struct.pkgbin* %594, %struct.pkginfo* %597, %struct.pkgbin* %601), !dbg !1583
  %603 = icmp ne i32 %602, 0, !dbg !1583
  br i1 %603, label %604, label %623, !dbg !1583

; <label>:604:                                    ; preds = %591
  %605 = call i8* @gettext(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.34, i32 0, i32 0)) #10, !dbg !1584
  %606 = load %struct.pkginfo*, %struct.pkginfo** %22, align 8, !dbg !1586
  %607 = call i8* @pkg_name(%struct.pkginfo* %606, i32 1), !dbg !1587
  %608 = load %struct.pkginfo*, %struct.pkginfo** %22, align 8, !dbg !1588
  %609 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %608, i32 0, i32 9, !dbg !1589
  %610 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %609, i32 0, i32 11, !dbg !1590
  %611 = call i8* @versiondescribe(%struct.dpkg_version* %610, i32 1), !dbg !1591
  %612 = call i32 (i8*, ...) @printf(i8* %605, i8* %607, i8* %611), !dbg !1592
  %613 = load %struct.pkginfo*, %struct.pkginfo** %22, align 8, !dbg !1594
  %614 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %613, i32 0, i32 11, !dbg !1595
  %615 = load %struct.perpackagestate*, %struct.perpackagestate** %614, align 8, !dbg !1595
  %616 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %615, i32 0, i32 3, !dbg !1596
  store i32 2, i32* %616, align 4, !dbg !1597
  %617 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %19, align 8, !dbg !1598
  %618 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %617, i32 0, i32 1, !dbg !1599
  %619 = load %struct.fsys_namenode*, %struct.fsys_namenode** %618, align 8, !dbg !1599
  %620 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %619, i32 0, i32 6, !dbg !1600
  %621 = load i32, i32* %620, align 8, !dbg !1601
  %622 = and i32 %621, -3, !dbg !1601
  store i32 %622, i32* %620, align 8, !dbg !1601
  store i8 1, i8* %11, align 1, !dbg !1602
  br label %658, !dbg !1603

; <label>:623:                                    ; preds = %591
  %624 = load i32, i32* %14, align 4, !dbg !1604
  %625 = icmp ne i32 %624, 0, !dbg !1604
  br i1 %625, label %644, label %626, !dbg !1607

; <label>:626:                                    ; preds = %623
  %627 = getelementptr inbounds %struct.stat, %struct.stat* %16, i32 0, i32 3, !dbg !1608
  %628 = load i32, i32* %627, align 8, !dbg !1608
  %629 = and i32 %628, 61440, !dbg !1610
  %630 = icmp eq i32 %629, 16384, !dbg !1611
  br i1 %630, label %631, label %644, !dbg !1612

; <label>:631:                                    ; preds = %626
  %632 = call i8* @gettext(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.35, i32 0, i32 0)) #10, !dbg !1613
  %633 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %19, align 8, !dbg !1615
  %634 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %633, i32 0, i32 1, !dbg !1616
  %635 = load %struct.fsys_namenode*, %struct.fsys_namenode** %634, align 8, !dbg !1616
  %636 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %635, i32 0, i32 1, !dbg !1617
  %637 = load i8*, i8** %636, align 8, !dbg !1617
  %638 = load %struct.pkginfo*, %struct.pkginfo** %22, align 8, !dbg !1618
  %639 = call i8* @pkg_name(%struct.pkginfo* %638, i32 1), !dbg !1619
  %640 = load %struct.pkginfo*, %struct.pkginfo** %22, align 8, !dbg !1620
  %641 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %640, i32 0, i32 9, !dbg !1621
  %642 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %641, i32 0, i32 11, !dbg !1622
  %643 = call i8* @versiondescribe(%struct.dpkg_version* %642, i32 1), !dbg !1623
  call void (i32, i8*, ...) @forcibleerr(i32 262144, i8* %632, i8* %637, i8* %639, i8* %643), !dbg !1624
  br label %657, !dbg !1625

; <label>:644:                                    ; preds = %626, %623
  %645 = call i8* @gettext(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.36, i32 0, i32 0)) #10, !dbg !1626
  %646 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %19, align 8, !dbg !1628
  %647 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %646, i32 0, i32 1, !dbg !1629
  %648 = load %struct.fsys_namenode*, %struct.fsys_namenode** %647, align 8, !dbg !1629
  %649 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %648, i32 0, i32 1, !dbg !1630
  %650 = load i8*, i8** %649, align 8, !dbg !1630
  %651 = load %struct.pkginfo*, %struct.pkginfo** %22, align 8, !dbg !1631
  %652 = call i8* @pkg_name(%struct.pkginfo* %651, i32 1), !dbg !1632
  %653 = load %struct.pkginfo*, %struct.pkginfo** %22, align 8, !dbg !1633
  %654 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %653, i32 0, i32 9, !dbg !1634
  %655 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %654, i32 0, i32 11, !dbg !1635
  %656 = call i8* @versiondescribe(%struct.dpkg_version* %655, i32 1), !dbg !1636
  call void (i32, i8*, ...) @forcibleerr(i32 131072, i8* %645, i8* %650, i8* %652, i8* %656), !dbg !1637
  br label %657

; <label>:657:                                    ; preds = %644, %631
  br label %658

; <label>:658:                                    ; preds = %657, %604
  br label %659

; <label>:659:                                    ; preds = %658, %578
  br label %375, !dbg !1638, !llvm.loop !1370

; <label>:660:                                    ; preds = %375
  %661 = load %struct.fsys_node_pkgs_iter*, %struct.fsys_node_pkgs_iter** %23, align 8, !dbg !1640
  call void @fsys_node_pkgs_iter_free(%struct.fsys_node_pkgs_iter* %661), !dbg !1641
  br label %662, !dbg !1642

; <label>:662:                                    ; preds = %660, %367
  %663 = load i8, i8* %11, align 1, !dbg !1643
  %664 = trunc i8 %663 to i1, !dbg !1643
  br i1 %664, label %665, label %688, !dbg !1645

; <label>:665:                                    ; preds = %662
  %666 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %19, align 8, !dbg !1646
  %667 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %666, i32 0, i32 1, !dbg !1649
  %668 = load %struct.fsys_namenode*, %struct.fsys_namenode** %667, align 8, !dbg !1649
  %669 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %668, i32 0, i32 6, !dbg !1650
  %670 = load i32, i32* %669, align 8, !dbg !1650
  %671 = and i32 %670, 1, !dbg !1651
  %672 = icmp ne i32 %671, 0, !dbg !1651
  br i1 %672, label %673, label %680, !dbg !1652

; <label>:673:                                    ; preds = %665
  %674 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %19, align 8, !dbg !1653
  %675 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %674, i32 0, i32 1, !dbg !1654
  %676 = load %struct.fsys_namenode*, %struct.fsys_namenode** %675, align 8, !dbg !1654
  %677 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %676, i32 0, i32 6, !dbg !1655
  %678 = load i32, i32* %677, align 8, !dbg !1656
  %679 = or i32 %678, 8, !dbg !1656
  store i32 %679, i32* %677, align 8, !dbg !1656
  br label %680, !dbg !1653

; <label>:680:                                    ; preds = %673, %665
  %681 = load %struct.tarcontext*, %struct.tarcontext** %9, align 8, !dbg !1657
  %682 = getelementptr inbounds %struct.tarcontext, %struct.tarcontext* %681, i32 0, i32 2, !dbg !1658
  %683 = load %struct.fsys_namenode_queue*, %struct.fsys_namenode_queue** %682, align 8, !dbg !1658
  %684 = load %struct.fsys_namenode_list**, %struct.fsys_namenode_list*** %20, align 8, !dbg !1659
  %685 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %19, align 8, !dbg !1660
  call void @tar_fsys_namenode_queue_pop(%struct.fsys_namenode_queue* %683, %struct.fsys_namenode_list** %684, %struct.fsys_namenode_list* %685), !dbg !1661
  %686 = load %struct.tarcontext*, %struct.tarcontext** %9, align 8, !dbg !1662
  %687 = load %struct.tar_entry*, %struct.tar_entry** %5, align 8, !dbg !1663
  call void @tarobject_skip_entry(%struct.tarcontext* %686, %struct.tar_entry* %687), !dbg !1664
  store i32 0, i32* %3, align 4, !dbg !1665
  br label %976, !dbg !1665

; <label>:688:                                    ; preds = %662
  %689 = load %struct.tar_entry*, %struct.tar_entry** %5, align 8, !dbg !1666
  %690 = call zeroext i1 @filter_should_skip(%struct.tar_entry* %689), !dbg !1668
  br i1 %690, label %691, label %706, !dbg !1669

; <label>:691:                                    ; preds = %688
  %692 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %19, align 8, !dbg !1670
  %693 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %692, i32 0, i32 1, !dbg !1672
  %694 = load %struct.fsys_namenode*, %struct.fsys_namenode** %693, align 8, !dbg !1672
  %695 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %694, i32 0, i32 6, !dbg !1673
  %696 = load i32, i32* %695, align 8, !dbg !1674
  %697 = and i32 %696, -3, !dbg !1674
  store i32 %697, i32* %695, align 8, !dbg !1674
  %698 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %19, align 8, !dbg !1675
  %699 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %698, i32 0, i32 1, !dbg !1676
  %700 = load %struct.fsys_namenode*, %struct.fsys_namenode** %699, align 8, !dbg !1676
  %701 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %700, i32 0, i32 6, !dbg !1677
  %702 = load i32, i32* %701, align 8, !dbg !1678
  %703 = or i32 %702, 512, !dbg !1678
  store i32 %703, i32* %701, align 8, !dbg !1678
  %704 = load %struct.tarcontext*, %struct.tarcontext** %9, align 8, !dbg !1679
  %705 = load %struct.tar_entry*, %struct.tar_entry** %5, align 8, !dbg !1680
  call void @tarobject_skip_entry(%struct.tarcontext* %704, %struct.tar_entry* %705), !dbg !1681
  store i32 0, i32* %3, align 4, !dbg !1682
  br label %976, !dbg !1682

; <label>:706:                                    ; preds = %688
  %707 = load i8, i8* %10, align 1, !dbg !1683
  %708 = trunc i8 %707 to i1, !dbg !1683
  br i1 %708, label %709, label %710, !dbg !1685

; <label>:709:                                    ; preds = %706
  store i32 0, i32* %3, align 4, !dbg !1686
  br label %976, !dbg !1686

; <label>:710:                                    ; preds = %706
  %711 = load i8, i8* %12, align 1, !dbg !1687
  %712 = trunc i8 %711 to i1, !dbg !1687
  br i1 %712, label %713, label %747, !dbg !1689

; <label>:713:                                    ; preds = %710
  %714 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fnamevb, i32 0, i32 2), align 8, !dbg !1690
  call void (i32, i8*, ...) @debug(i32 64, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.37, i32 0, i32 0), i8* %714), !dbg !1692
  %715 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %19, align 8, !dbg !1693
  %716 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %715, i32 0, i32 1, !dbg !1695
  %717 = load %struct.fsys_namenode*, %struct.fsys_namenode** %716, align 8, !dbg !1695
  %718 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %717, i32 0, i32 6, !dbg !1696
  %719 = load i32, i32* %718, align 8, !dbg !1696
  %720 = and i32 %719, 1, !dbg !1697
  %721 = icmp ne i32 %720, 0, !dbg !1697
  br i1 %721, label %722, label %731, !dbg !1698

; <label>:722:                                    ; preds = %713
  %723 = load %struct.tarcontext*, %struct.tarcontext** %9, align 8, !dbg !1699
  %724 = getelementptr inbounds %struct.tarcontext, %struct.tarcontext* %723, i32 0, i32 1, !dbg !1701
  %725 = load %struct.pkginfo*, %struct.pkginfo** %724, align 8, !dbg !1701
  %726 = getelementptr inbounds [33 x i8], [33 x i8]* %13, i32 0, i32 0, !dbg !1702
  %727 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fnamenewvb, i32 0, i32 2), align 8, !dbg !1703
  %728 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %19, align 8, !dbg !1704
  %729 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %728, i32 0, i32 1, !dbg !1705
  %730 = load %struct.fsys_namenode*, %struct.fsys_namenode** %729, align 8, !dbg !1705
  call void @md5hash_prev_conffile(%struct.pkginfo* %725, i8* %726, i8* %727, %struct.fsys_namenode* %730), !dbg !1706
  br label %746, !dbg !1707

; <label>:731:                                    ; preds = %713
  %732 = getelementptr inbounds %struct.stat, %struct.stat* %16, i32 0, i32 3, !dbg !1708
  %733 = load i32, i32* %732, align 8, !dbg !1708
  %734 = and i32 %733, 61440, !dbg !1711
  %735 = icmp eq i32 %734, 32768, !dbg !1712
  br i1 %735, label %736, label %742, !dbg !1713

; <label>:736:                                    ; preds = %731
  %737 = load %struct.tarcontext*, %struct.tarcontext** %9, align 8, !dbg !1714
  %738 = getelementptr inbounds %struct.tarcontext, %struct.tarcontext* %737, i32 0, i32 1, !dbg !1716
  %739 = load %struct.pkginfo*, %struct.pkginfo** %738, align 8, !dbg !1716
  %740 = getelementptr inbounds [33 x i8], [33 x i8]* %13, i32 0, i32 0, !dbg !1717
  %741 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fnamevb, i32 0, i32 2), align 8, !dbg !1718
  call void @md5hash(%struct.pkginfo* %739, i8* %740, i8* %741), !dbg !1719
  br label %745, !dbg !1720

; <label>:742:                                    ; preds = %731
  %743 = getelementptr inbounds [33 x i8], [33 x i8]* %13, i32 0, i32 0, !dbg !1721
  %744 = call i8* @strcpy(i8* %743, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0)) #10, !dbg !1723
  br label %745

; <label>:745:                                    ; preds = %742, %736
  br label %746

; <label>:746:                                    ; preds = %745, %722
  br label %747, !dbg !1724

; <label>:747:                                    ; preds = %746, %710
  %748 = load i8, i8* %12, align 1, !dbg !1725
  %749 = trunc i8 %748 to i1, !dbg !1725
  br i1 %749, label %750, label %758, !dbg !1727

; <label>:750:                                    ; preds = %747
  %751 = call zeroext i1 @in_force(i32 131072), !dbg !1728
  br i1 %751, label %758, label %752, !dbg !1730

; <label>:752:                                    ; preds = %750
  %753 = load %struct.tarcontext*, %struct.tarcontext** %9, align 8, !dbg !1731
  %754 = load %struct.tar_entry*, %struct.tar_entry** %5, align 8, !dbg !1733
  %755 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %19, align 8, !dbg !1734
  %756 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %755, i32 0, i32 1, !dbg !1735
  %757 = load %struct.fsys_namenode*, %struct.fsys_namenode** %756, align 8, !dbg !1735
  call void @tarobject_hash(%struct.tarcontext* %753, %struct.tar_entry* %754, %struct.fsys_namenode* %757), !dbg !1736
  br label %770, !dbg !1737

; <label>:758:                                    ; preds = %750, %747
  %759 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fnamenewvb, i32 0, i32 2), align 8, !dbg !1738
  call void @path_remove_tree(i8* %759), !dbg !1740
  %760 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fnametmpvb, i32 0, i32 2), align 8, !dbg !1741
  call void @path_remove_tree(i8* %760), !dbg !1742
  %761 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %19, align 8, !dbg !1743
  %762 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %761, i32 0, i32 1, !dbg !1744
  %763 = load %struct.fsys_namenode*, %struct.fsys_namenode** %762, align 8, !dbg !1744
  call void (void (i32, i8**)*, i32, i32, ...) @push_cleanup(void (i32, i8**)* @cu_installnew, i32 -2, i32 1, %struct.fsys_namenode* %763), !dbg !1745
  %764 = load %struct.tarcontext*, %struct.tarcontext** %9, align 8, !dbg !1746
  %765 = load %struct.tar_entry*, %struct.tar_entry** %5, align 8, !dbg !1747
  %766 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fnamenewvb, i32 0, i32 2), align 8, !dbg !1748
  %767 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %19, align 8, !dbg !1749
  %768 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %767, i32 0, i32 1, !dbg !1750
  %769 = load %struct.fsys_namenode*, %struct.fsys_namenode** %768, align 8, !dbg !1750
  call void @tarobject_extract(%struct.tarcontext* %764, %struct.tar_entry* %765, i8* %766, %struct.file_stat* %18, %struct.fsys_namenode* %769), !dbg !1751
  br label %770

; <label>:770:                                    ; preds = %758, %752
  %771 = load i8, i8* %12, align 1, !dbg !1752
  %772 = trunc i8 %771 to i1, !dbg !1752
  br i1 %772, label %773, label %782, !dbg !1754

; <label>:773:                                    ; preds = %770
  %774 = load %struct.tarcontext*, %struct.tarcontext** %9, align 8, !dbg !1755
  %775 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fnamevb, i32 0, i32 2), align 8, !dbg !1756
  %776 = getelementptr inbounds [33 x i8], [33 x i8]* %13, i32 0, i32 0, !dbg !1757
  %777 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fnamenewvb, i32 0, i32 2), align 8, !dbg !1758
  %778 = load %struct.tar_entry*, %struct.tar_entry** %5, align 8, !dbg !1759
  %779 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %19, align 8, !dbg !1760
  %780 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %779, i32 0, i32 1, !dbg !1761
  %781 = load %struct.fsys_namenode*, %struct.fsys_namenode** %780, align 8, !dbg !1761
  call void @tarobject_matches(%struct.tarcontext* %774, i8* %775, %struct.stat* %16, i8* %776, i8* %777, %struct.tar_entry* %778, %struct.fsys_namenode* %781), !dbg !1762
  br label %782, !dbg !1762

; <label>:782:                                    ; preds = %773, %770
  %783 = load i8, i8* %12, align 1, !dbg !1763
  %784 = trunc i8 %783 to i1, !dbg !1763
  br i1 %784, label %785, label %788, !dbg !1765

; <label>:785:                                    ; preds = %782
  %786 = call zeroext i1 @in_force(i32 131072), !dbg !1766
  br i1 %786, label %788, label %787, !dbg !1768

; <label>:787:                                    ; preds = %785
  store i32 0, i32* %3, align 4, !dbg !1769
  br label %976, !dbg !1769

; <label>:788:                                    ; preds = %785, %782
  %789 = load %struct.tar_entry*, %struct.tar_entry** %5, align 8, !dbg !1770
  %790 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fnamenewvb, i32 0, i32 2), align 8, !dbg !1771
  call void @tarobject_set_perms(%struct.tar_entry* %789, i8* %790, %struct.file_stat* %18), !dbg !1772
  %791 = load %struct.tar_entry*, %struct.tar_entry** %5, align 8, !dbg !1773
  %792 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fnamenewvb, i32 0, i32 2), align 8, !dbg !1774
  call void @tarobject_set_mtime(%struct.tar_entry* %791, i8* %792), !dbg !1775
  %793 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fnamevb, i32 0, i32 2), align 8, !dbg !1776
  %794 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fnamenewvb, i32 0, i32 2), align 8, !dbg !1777
  %795 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %18, i32 0, i32 2, !dbg !1778
  %796 = load i32, i32* %795, align 8, !dbg !1778
  call void @tarobject_set_se_context(i8* %793, i8* %794, i32 %796), !dbg !1779
  %797 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %19, align 8, !dbg !1780
  %798 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %797, i32 0, i32 1, !dbg !1782
  %799 = load %struct.fsys_namenode*, %struct.fsys_namenode** %798, align 8, !dbg !1782
  %800 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %799, i32 0, i32 6, !dbg !1783
  %801 = load i32, i32* %800, align 8, !dbg !1783
  %802 = and i32 %801, 1, !dbg !1784
  %803 = icmp ne i32 %802, 0, !dbg !1784
  br i1 %803, label %804, label %811, !dbg !1785

; <label>:804:                                    ; preds = %788
  call void (i32, i8*, ...) @debug(i32 128, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.39, i32 0, i32 0)), !dbg !1786
  %805 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %19, align 8, !dbg !1788
  %806 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %805, i32 0, i32 1, !dbg !1789
  %807 = load %struct.fsys_namenode*, %struct.fsys_namenode** %806, align 8, !dbg !1789
  %808 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %807, i32 0, i32 6, !dbg !1790
  %809 = load i32, i32* %808, align 8, !dbg !1791
  %810 = or i32 %809, 16, !dbg !1791
  store i32 %810, i32* %808, align 8, !dbg !1791
  store i32 0, i32* %3, align 4, !dbg !1792
  br label %976, !dbg !1792

; <label>:811:                                    ; preds = %788
  %812 = load i32, i32* %14, align 4, !dbg !1793
  %813 = icmp ne i32 %812, 0, !dbg !1793
  br i1 %813, label %814, label %815, !dbg !1795

; <label>:814:                                    ; preds = %811
  call void (i32, i8*, ...) @debug(i32 64, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.40, i32 0, i32 0)), !dbg !1796
  br label %930, !dbg !1798

; <label>:815:                                    ; preds = %811
  %816 = load %struct.tar_entry*, %struct.tar_entry** %5, align 8, !dbg !1799
  %817 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %816, i32 0, i32 1, !dbg !1802
  %818 = load i32, i32* %817, align 4, !dbg !1802
  %819 = icmp eq i32 %818, 53, !dbg !1803
  br i1 %819, label %825, label %820, !dbg !1804

; <label>:820:                                    ; preds = %815
  %821 = getelementptr inbounds %struct.stat, %struct.stat* %16, i32 0, i32 3, !dbg !1805
  %822 = load i32, i32* %821, align 8, !dbg !1805
  %823 = and i32 %822, 61440, !dbg !1807
  %824 = icmp eq i32 %823, 16384, !dbg !1808
  br i1 %824, label %825, label %842, !dbg !1809

; <label>:825:                                    ; preds = %820, %815
  call void (i32, i8*, ...) @debug(i32 64, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.41, i32 0, i32 0)), !dbg !1810
  %826 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %19, align 8, !dbg !1812
  %827 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %826, i32 0, i32 1, !dbg !1813
  %828 = load %struct.fsys_namenode*, %struct.fsys_namenode** %827, align 8, !dbg !1813
  %829 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %828, i32 0, i32 6, !dbg !1814
  %830 = load i32, i32* %829, align 8, !dbg !1815
  %831 = or i32 %830, 32, !dbg !1815
  store i32 %831, i32* %829, align 8, !dbg !1815
  %832 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fnamevb, i32 0, i32 2), align 8, !dbg !1816
  %833 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fnametmpvb, i32 0, i32 2), align 8, !dbg !1818
  %834 = call i32 @rename(i8* %832, i8* %833) #10, !dbg !1819
  %835 = icmp ne i32 %834, 0, !dbg !1819
  br i1 %835, label %836, label %841, !dbg !1820

; <label>:836:                                    ; preds = %825
  %837 = call i8* @gettext(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.42, i32 0, i32 0)) #10, !dbg !1821
  %838 = load %struct.tar_entry*, %struct.tar_entry** %5, align 8, !dbg !1822
  %839 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %838, i32 0, i32 2, !dbg !1823
  %840 = load i8*, i8** %839, align 8, !dbg !1823
  call void (i8*, ...) @ohshite(i8* %837, i8* %840) #11, !dbg !1824
  unreachable, !dbg !1826

; <label>:841:                                    ; preds = %825
  br label %929, !dbg !1827

; <label>:842:                                    ; preds = %820
  %843 = getelementptr inbounds %struct.stat, %struct.stat* %16, i32 0, i32 3, !dbg !1828
  %844 = load i32, i32* %843, align 8, !dbg !1828
  %845 = and i32 %844, 61440, !dbg !1831
  %846 = icmp eq i32 %845, 40960, !dbg !1832
  br i1 %846, label %847, label %917, !dbg !1833

; <label>:847:                                    ; preds = %842
  call void @llvm.dbg.declare(metadata i32* %24, metadata !1834, metadata !631), !dbg !1836
  call void @varbuf_reset(%struct.varbuf* @tarobject.symlinkfn), !dbg !1837
  %848 = getelementptr inbounds %struct.stat, %struct.stat* %16, i32 0, i32 8, !dbg !1838
  %849 = load i64, i64* %848, align 8, !dbg !1838
  %850 = add nsw i64 %849, 1, !dbg !1839
  call void @varbuf_grow(%struct.varbuf* @tarobject.symlinkfn, i64 %850), !dbg !1840
  %851 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fnamevb, i32 0, i32 2), align 8, !dbg !1841
  %852 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @tarobject.symlinkfn, i32 0, i32 2), align 8, !dbg !1842
  %853 = load i64, i64* getelementptr inbounds (%struct.varbuf, %struct.varbuf* @tarobject.symlinkfn, i32 0, i32 1), align 8, !dbg !1843
  %854 = call i64 @readlink(i8* %851, i8* %852, i64 %853) #10, !dbg !1844
  store i64 %854, i64* %15, align 8, !dbg !1845
  %855 = load i64, i64* %15, align 8, !dbg !1846
  %856 = icmp slt i64 %855, 0, !dbg !1848
  br i1 %856, label %857, label %862, !dbg !1849

; <label>:857:                                    ; preds = %847
  %858 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.43, i32 0, i32 0)) #10, !dbg !1850
  %859 = load %struct.tar_entry*, %struct.tar_entry** %5, align 8, !dbg !1851
  %860 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %859, i32 0, i32 2, !dbg !1852
  %861 = load i8*, i8** %860, align 8, !dbg !1852
  call void (i8*, ...) @ohshite(i8* %858, i8* %861) #11, !dbg !1853
  unreachable, !dbg !1855

; <label>:862:                                    ; preds = %847
  %863 = load i64, i64* %15, align 8, !dbg !1856
  %864 = getelementptr inbounds %struct.stat, %struct.stat* %16, i32 0, i32 8, !dbg !1858
  %865 = load i64, i64* %864, align 8, !dbg !1858
  %866 = icmp sgt i64 %863, %865, !dbg !1859
  br i1 %866, label %867, label %873, !dbg !1860

; <label>:867:                                    ; preds = %862
  %868 = call i8* @gettext(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.44, i32 0, i32 0)) #10, !dbg !1861
  %869 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fnamevb, i32 0, i32 2), align 8, !dbg !1862
  %870 = getelementptr inbounds %struct.stat, %struct.stat* %16, i32 0, i32 8, !dbg !1863
  %871 = load i64, i64* %870, align 8, !dbg !1863
  %872 = load i64, i64* %15, align 8, !dbg !1864
  call void (i8*, ...) @ohshit(i8* %868, i8* %869, i64 %871, i64 %872) #11, !dbg !1865
  unreachable, !dbg !1867

; <label>:873:                                    ; preds = %862
  %874 = load i64, i64* %15, align 8, !dbg !1868
  %875 = getelementptr inbounds %struct.stat, %struct.stat* %16, i32 0, i32 8, !dbg !1870
  %876 = load i64, i64* %875, align 8, !dbg !1870
  %877 = icmp slt i64 %874, %876, !dbg !1871
  br i1 %877, label %878, label %884, !dbg !1872

; <label>:878:                                    ; preds = %873
  %879 = call i8* @gettext(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.44, i32 0, i32 0)) #10, !dbg !1873
  %880 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fnamevb, i32 0, i32 2), align 8, !dbg !1874
  %881 = getelementptr inbounds %struct.stat, %struct.stat* %16, i32 0, i32 8, !dbg !1875
  %882 = load i64, i64* %881, align 8, !dbg !1875
  %883 = load i64, i64* %15, align 8, !dbg !1876
  call void (i8*, ...) @warning(i8* %879, i8* %880, i64 %882, i64 %883), !dbg !1877
  br label %884, !dbg !1879

; <label>:884:                                    ; preds = %878, %873
  br label %885

; <label>:885:                                    ; preds = %884
  br label %886

; <label>:886:                                    ; preds = %885
  %887 = load i64, i64* %15, align 8, !dbg !1880
  call void @varbuf_trunc(%struct.varbuf* @tarobject.symlinkfn, i64 %887), !dbg !1881
  call void @varbuf_end_str(%struct.varbuf* @tarobject.symlinkfn), !dbg !1882
  %888 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @tarobject.symlinkfn, i32 0, i32 2), align 8, !dbg !1883
  %889 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fnametmpvb, i32 0, i32 2), align 8, !dbg !1885
  %890 = call i32 @symlink(i8* %888, i8* %889) #10, !dbg !1886
  %891 = icmp ne i32 %890, 0, !dbg !1886
  br i1 %891, label %892, label %897, !dbg !1887

; <label>:892:                                    ; preds = %886
  %893 = call i8* @gettext(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.45, i32 0, i32 0)) #10, !dbg !1888
  %894 = load %struct.tar_entry*, %struct.tar_entry** %5, align 8, !dbg !1889
  %895 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %894, i32 0, i32 2, !dbg !1890
  %896 = load i8*, i8** %895, align 8, !dbg !1890
  call void (i8*, ...) @ohshite(i8* %893, i8* %896) #11, !dbg !1891
  unreachable, !dbg !1893

; <label>:897:                                    ; preds = %886
  %898 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fnametmpvb, i32 0, i32 2), align 8, !dbg !1894
  %899 = getelementptr inbounds %struct.stat, %struct.stat* %16, i32 0, i32 4, !dbg !1895
  %900 = load i32, i32* %899, align 4, !dbg !1895
  %901 = getelementptr inbounds %struct.stat, %struct.stat* %16, i32 0, i32 5, !dbg !1896
  %902 = load i32, i32* %901, align 8, !dbg !1896
  %903 = call i32 @lchown(i8* %898, i32 %900, i32 %902) #10, !dbg !1897
  store i32 %903, i32* %24, align 4, !dbg !1898
  %904 = load i32, i32* %24, align 4, !dbg !1899
  %905 = call i32 @forcible_nonroot_error(i32 %904), !dbg !1901
  %906 = icmp ne i32 %905, 0, !dbg !1901
  br i1 %906, label %907, label %912, !dbg !1902

; <label>:907:                                    ; preds = %897
  %908 = call i8* @gettext(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.46, i32 0, i32 0)) #10, !dbg !1903
  %909 = load %struct.tar_entry*, %struct.tar_entry** %5, align 8, !dbg !1904
  %910 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %909, i32 0, i32 2, !dbg !1905
  %911 = load i8*, i8** %910, align 8, !dbg !1905
  call void (i8*, ...) @ohshite(i8* %908, i8* %911) #11, !dbg !1906
  unreachable, !dbg !1908

; <label>:912:                                    ; preds = %897
  %913 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fnamevb, i32 0, i32 2), align 8, !dbg !1909
  %914 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fnametmpvb, i32 0, i32 2), align 8, !dbg !1910
  %915 = getelementptr inbounds %struct.stat, %struct.stat* %16, i32 0, i32 3, !dbg !1911
  %916 = load i32, i32* %915, align 8, !dbg !1911
  call void @tarobject_set_se_context(i8* %913, i8* %914, i32 %916), !dbg !1912
  br label %928, !dbg !1913

; <label>:917:                                    ; preds = %842
  call void (i32, i8*, ...) @debug(i32 64, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.47, i32 0, i32 0)), !dbg !1914
  %918 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fnamevb, i32 0, i32 2), align 8, !dbg !1916
  %919 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fnametmpvb, i32 0, i32 2), align 8, !dbg !1918
  %920 = call i32 @link(i8* %918, i8* %919) #10, !dbg !1919
  %921 = icmp ne i32 %920, 0, !dbg !1919
  br i1 %921, label %922, label %927, !dbg !1920

; <label>:922:                                    ; preds = %917
  %923 = call i8* @gettext(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.48, i32 0, i32 0)) #10, !dbg !1921
  %924 = load %struct.tar_entry*, %struct.tar_entry** %5, align 8, !dbg !1922
  %925 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %924, i32 0, i32 2, !dbg !1923
  %926 = load i8*, i8** %925, align 8, !dbg !1923
  call void (i8*, ...) @ohshite(i8* %923, i8* %926) #11, !dbg !1924
  unreachable, !dbg !1926

; <label>:927:                                    ; preds = %917
  br label %928

; <label>:928:                                    ; preds = %927, %912
  br label %929

; <label>:929:                                    ; preds = %928, %841
  br label %930

; <label>:930:                                    ; preds = %929, %814
  %931 = load %struct.tar_entry*, %struct.tar_entry** %5, align 8, !dbg !1927
  %932 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %931, i32 0, i32 1, !dbg !1929
  %933 = load i32, i32* %932, align 4, !dbg !1929
  %934 = icmp eq i32 %933, 48, !dbg !1930
  br i1 %934, label %945, label %935, !dbg !1931

; <label>:935:                                    ; preds = %930
  %936 = load %struct.tar_entry*, %struct.tar_entry** %5, align 8, !dbg !1932
  %937 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %936, i32 0, i32 1, !dbg !1934
  %938 = load i32, i32* %937, align 4, !dbg !1934
  %939 = icmp eq i32 %938, 49, !dbg !1935
  br i1 %939, label %945, label %940, !dbg !1936

; <label>:940:                                    ; preds = %935
  %941 = load %struct.tar_entry*, %struct.tar_entry** %5, align 8, !dbg !1937
  %942 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %941, i32 0, i32 1, !dbg !1938
  %943 = load i32, i32* %942, align 4, !dbg !1938
  %944 = icmp eq i32 %943, 50, !dbg !1939
  br i1 %944, label %945, label %952, !dbg !1940

; <label>:945:                                    ; preds = %940, %935, %930
  %946 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %19, align 8, !dbg !1941
  %947 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %946, i32 0, i32 1, !dbg !1943
  %948 = load %struct.fsys_namenode*, %struct.fsys_namenode** %947, align 8, !dbg !1943
  %949 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %948, i32 0, i32 6, !dbg !1944
  %950 = load i32, i32* %949, align 8, !dbg !1945
  %951 = or i32 %950, 256, !dbg !1945
  store i32 %951, i32* %949, align 8, !dbg !1945
  call void (i32, i8*, ...) @debug(i32 64, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.49, i32 0, i32 0)), !dbg !1946
  br label %975, !dbg !1947

; <label>:952:                                    ; preds = %940
  %953 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fnamenewvb, i32 0, i32 2), align 8, !dbg !1948
  %954 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fnamevb, i32 0, i32 2), align 8, !dbg !1951
  %955 = call i32 @rename(i8* %953, i8* %954) #10, !dbg !1952
  %956 = icmp ne i32 %955, 0, !dbg !1952
  br i1 %956, label %957, label %962, !dbg !1953

; <label>:957:                                    ; preds = %952
  %958 = call i8* @gettext(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.50, i32 0, i32 0)) #10, !dbg !1954
  %959 = load %struct.tar_entry*, %struct.tar_entry** %5, align 8, !dbg !1955
  %960 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %959, i32 0, i32 2, !dbg !1956
  %961 = load i8*, i8** %960, align 8, !dbg !1956
  call void (i8*, ...) @ohshite(i8* %958, i8* %961) #11, !dbg !1957
  unreachable, !dbg !1959

; <label>:962:                                    ; preds = %952
  %963 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %19, align 8, !dbg !1960
  %964 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %963, i32 0, i32 1, !dbg !1961
  %965 = load %struct.fsys_namenode*, %struct.fsys_namenode** %964, align 8, !dbg !1961
  %966 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %965, i32 0, i32 6, !dbg !1962
  %967 = load i32, i32* %966, align 8, !dbg !1963
  %968 = or i32 %967, 64, !dbg !1963
  store i32 %968, i32* %966, align 8, !dbg !1963
  %969 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %19, align 8, !dbg !1964
  %970 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %969, i32 0, i32 1, !dbg !1965
  %971 = load %struct.fsys_namenode*, %struct.fsys_namenode** %970, align 8, !dbg !1965
  %972 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %971, i32 0, i32 6, !dbg !1966
  %973 = load i32, i32* %972, align 8, !dbg !1967
  %974 = or i32 %973, 16, !dbg !1967
  store i32 %974, i32* %972, align 8, !dbg !1967
  call void (i32, i8*, ...) @debug(i32 64, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.51, i32 0, i32 0)), !dbg !1968
  br label %975

; <label>:975:                                    ; preds = %962, %945
  store i32 0, i32* %3, align 4, !dbg !1969
  br label %976, !dbg !1969

; <label>:976:                                    ; preds = %975, %804, %787, %709, %691, %680
  %977 = load i32, i32* %3, align 4, !dbg !1970
  ret i32 %977, !dbg !1970
}

declare void @tar_entry_update_from_system(%struct.tar_entry*) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #5

; Function Attrs: noreturn
declare void @ohshit(i8*, ...) #3

declare %struct.fsys_namenode* @fsys_hash_find_node(i8*, i32) #2

declare void @forcibleerr(i32, i8*, ...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #6

declare %struct.fsys_namenode* @namenodetouse(%struct.fsys_namenode*, %struct.pkginfo*, %struct.pkgbin*) #2

declare void @trig_file_activate(%struct.fsys_namenode*, %struct.pkginfo*) #2

declare i32 @conffderef(%struct.pkginfo*, %struct.varbuf*, i8*) #2

; Function Attrs: nounwind
declare i32 @lstat(i8*, %struct.stat*) #4

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #7

; Function Attrs: nounwind
declare i32 @rename(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define internal zeroext i1 @linktosameexistingdir(%struct.tar_entry*, i8*, %struct.varbuf*) #0 !dbg !1971 {
  %4 = alloca i1, align 1
  %5 = alloca %struct.tar_entry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.varbuf*, align 8
  %8 = alloca %struct.stat, align 8
  %9 = alloca %struct.stat, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.tar_entry* %0, %struct.tar_entry** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.tar_entry** %5, metadata !1977, metadata !631), !dbg !1978
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1979, metadata !631), !dbg !1980
  store %struct.varbuf* %2, %struct.varbuf** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %7, metadata !1981, metadata !631), !dbg !1982
  call void @llvm.dbg.declare(metadata %struct.stat* %8, metadata !1983, metadata !631), !dbg !1984
  call void @llvm.dbg.declare(metadata %struct.stat* %9, metadata !1985, metadata !631), !dbg !1986
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1987, metadata !631), !dbg !1988
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1989, metadata !631), !dbg !1990
  %12 = load i8*, i8** %6, align 8, !dbg !1991
  %13 = call i32 @stat(i8* %12, %struct.stat* %8) #10, !dbg !1992
  store i32 %13, i32* %10, align 4, !dbg !1993
  %14 = load i32, i32* %10, align 4, !dbg !1994
  %15 = icmp ne i32 %14, 0, !dbg !1994
  br i1 %15, label %16, label %32, !dbg !1996

; <label>:16:                                     ; preds = %3
  %17 = call i32* @__errno_location() #1, !dbg !1997
  %18 = load i32, i32* %17, align 4, !dbg !2000
  %19 = icmp eq i32 %18, 2, !dbg !2001
  br i1 %19, label %31, label %20, !dbg !2002

; <label>:20:                                     ; preds = %16
  %21 = call i32* @__errno_location() #1, !dbg !2003
  %22 = load i32, i32* %21, align 4, !dbg !2005
  %23 = icmp eq i32 %22, 40, !dbg !2006
  br i1 %23, label %31, label %24, !dbg !2007

; <label>:24:                                     ; preds = %20
  %25 = call i32* @__errno_location() #1, !dbg !2008
  %26 = load i32, i32* %25, align 4, !dbg !2010
  %27 = icmp eq i32 %26, 20, !dbg !2011
  br i1 %27, label %31, label %28, !dbg !2012

; <label>:28:                                     ; preds = %24
  %29 = call i8* @gettext(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.92, i32 0, i32 0)) #10, !dbg !2013
  %30 = load i8*, i8** %6, align 8, !dbg !2014
  call void (i8*, ...) @ohshite(i8* %29, i8* %30) #11, !dbg !2015
  unreachable, !dbg !2016

; <label>:31:                                     ; preds = %24, %20, %16
  store i1 false, i1* %4, align 1, !dbg !2017
  br label %123, !dbg !2017

; <label>:32:                                     ; preds = %3
  %33 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 3, !dbg !2018
  %34 = load i32, i32* %33, align 8, !dbg !2018
  %35 = and i32 %34, 61440, !dbg !2020
  %36 = icmp eq i32 %35, 16384, !dbg !2021
  br i1 %36, label %38, label %37, !dbg !2022

; <label>:37:                                     ; preds = %32
  store i1 false, i1* %4, align 1, !dbg !2023
  br label %123, !dbg !2023

; <label>:38:                                     ; preds = %32
  %39 = load %struct.varbuf*, %struct.varbuf** %7, align 8, !dbg !2024
  call void @varbuf_reset(%struct.varbuf* %39), !dbg !2025
  %40 = load %struct.tar_entry*, %struct.tar_entry** %5, align 8, !dbg !2026
  %41 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %40, i32 0, i32 3, !dbg !2028
  %42 = load i8*, i8** %41, align 8, !dbg !2028
  %43 = getelementptr inbounds i8, i8* %42, i64 0, !dbg !2026
  %44 = load i8, i8* %43, align 1, !dbg !2026
  %45 = sext i8 %44 to i32, !dbg !2026
  %46 = icmp eq i32 %45, 47, !dbg !2029
  br i1 %46, label %47, label %52, !dbg !2030

; <label>:47:                                     ; preds = %38
  %48 = load %struct.varbuf*, %struct.varbuf** %7, align 8, !dbg !2031
  %49 = load i8*, i8** @instdir, align 8, !dbg !2033
  %50 = load i8*, i8** @instdir, align 8, !dbg !2034
  %51 = call i64 @strlen(i8* %50) #12, !dbg !2035
  call void @varbuf_add_buf(%struct.varbuf* %48, i8* %49, i64 %51), !dbg !2036
  br label %68, !dbg !2038

; <label>:52:                                     ; preds = %38
  %53 = load i8*, i8** %6, align 8, !dbg !2039
  %54 = call i8* @strrchr(i8* %53, i32 47) #12, !dbg !2041
  store i8* %54, i8** %11, align 8, !dbg !2042
  %55 = load i8*, i8** %11, align 8, !dbg !2043
  %56 = icmp eq i8* %55, null, !dbg !2045
  br i1 %56, label %57, label %59, !dbg !2046

; <label>:57:                                     ; preds = %52
  %58 = load i8*, i8** %6, align 8, !dbg !2047
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.59, i32 0, i32 0), i32 644, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.linktosameexistingdir, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.93, i32 0, i32 0), i8* %58) #11, !dbg !2048
  unreachable, !dbg !2048

; <label>:59:                                     ; preds = %52
  %60 = load %struct.varbuf*, %struct.varbuf** %7, align 8, !dbg !2049
  %61 = load i8*, i8** %6, align 8, !dbg !2050
  %62 = load i8*, i8** %11, align 8, !dbg !2051
  %63 = load i8*, i8** %6, align 8, !dbg !2052
  %64 = ptrtoint i8* %62 to i64, !dbg !2053
  %65 = ptrtoint i8* %63 to i64, !dbg !2053
  %66 = sub i64 %64, %65, !dbg !2053
  %67 = add nsw i64 %66, 1, !dbg !2054
  call void @varbuf_add_buf(%struct.varbuf* %60, i8* %61, i64 %67), !dbg !2055
  br label %68

; <label>:68:                                     ; preds = %59, %47
  %69 = load %struct.varbuf*, %struct.varbuf** %7, align 8, !dbg !2056
  %70 = load %struct.tar_entry*, %struct.tar_entry** %5, align 8, !dbg !2057
  %71 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %70, i32 0, i32 3, !dbg !2058
  %72 = load i8*, i8** %71, align 8, !dbg !2058
  %73 = load %struct.tar_entry*, %struct.tar_entry** %5, align 8, !dbg !2059
  %74 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %73, i32 0, i32 3, !dbg !2060
  %75 = load i8*, i8** %74, align 8, !dbg !2060
  %76 = call i64 @strlen(i8* %75) #12, !dbg !2061
  call void @varbuf_add_buf(%struct.varbuf* %69, i8* %72, i64 %76), !dbg !2062
  %77 = load %struct.varbuf*, %struct.varbuf** %7, align 8, !dbg !2064
  call void @varbuf_end_str(%struct.varbuf* %77), !dbg !2065
  %78 = load %struct.varbuf*, %struct.varbuf** %7, align 8, !dbg !2066
  %79 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %78, i32 0, i32 2, !dbg !2067
  %80 = load i8*, i8** %79, align 8, !dbg !2067
  %81 = call i32 @stat(i8* %80, %struct.stat* %9) #10, !dbg !2068
  store i32 %81, i32* %10, align 4, !dbg !2069
  %82 = load i32, i32* %10, align 4, !dbg !2070
  %83 = icmp ne i32 %82, 0, !dbg !2070
  br i1 %83, label %84, label %103, !dbg !2072

; <label>:84:                                     ; preds = %68
  %85 = call i32* @__errno_location() #1, !dbg !2073
  %86 = load i32, i32* %85, align 4, !dbg !2076
  %87 = icmp eq i32 %86, 2, !dbg !2077
  br i1 %87, label %102, label %88, !dbg !2078

; <label>:88:                                     ; preds = %84
  %89 = call i32* @__errno_location() #1, !dbg !2079
  %90 = load i32, i32* %89, align 4, !dbg !2081
  %91 = icmp eq i32 %90, 40, !dbg !2082
  br i1 %91, label %102, label %92, !dbg !2083

; <label>:92:                                     ; preds = %88
  %93 = call i32* @__errno_location() #1, !dbg !2084
  %94 = load i32, i32* %93, align 4, !dbg !2086
  %95 = icmp eq i32 %94, 20, !dbg !2087
  br i1 %95, label %102, label %96, !dbg !2088

; <label>:96:                                     ; preds = %92
  %97 = call i8* @gettext(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.94, i32 0, i32 0)) #10, !dbg !2089
  %98 = load %struct.varbuf*, %struct.varbuf** %7, align 8, !dbg !2090
  %99 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %98, i32 0, i32 2, !dbg !2091
  %100 = load i8*, i8** %99, align 8, !dbg !2091
  %101 = load i8*, i8** %6, align 8, !dbg !2092
  call void (i8*, ...) @ohshite(i8* %97, i8* %100, i8* %101) #11, !dbg !2093
  unreachable, !dbg !2094

; <label>:102:                                    ; preds = %92, %88, %84
  store i1 false, i1* %4, align 1, !dbg !2095
  br label %123, !dbg !2095

; <label>:103:                                    ; preds = %68
  %104 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 3, !dbg !2096
  %105 = load i32, i32* %104, align 8, !dbg !2096
  %106 = and i32 %105, 61440, !dbg !2098
  %107 = icmp eq i32 %106, 16384, !dbg !2099
  br i1 %107, label %109, label %108, !dbg !2100

; <label>:108:                                    ; preds = %103
  store i1 false, i1* %4, align 1, !dbg !2101
  br label %123, !dbg !2101

; <label>:109:                                    ; preds = %103
  %110 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0, !dbg !2102
  %111 = load i64, i64* %110, align 8, !dbg !2102
  %112 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0, !dbg !2104
  %113 = load i64, i64* %112, align 8, !dbg !2104
  %114 = icmp ne i64 %111, %113, !dbg !2105
  br i1 %114, label %121, label %115, !dbg !2106

; <label>:115:                                    ; preds = %109
  %116 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 1, !dbg !2107
  %117 = load i64, i64* %116, align 8, !dbg !2107
  %118 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 1, !dbg !2108
  %119 = load i64, i64* %118, align 8, !dbg !2108
  %120 = icmp ne i64 %117, %119, !dbg !2109
  br i1 %120, label %121, label %122, !dbg !2110

; <label>:121:                                    ; preds = %115, %109
  store i1 false, i1* %4, align 1, !dbg !2111
  br label %123, !dbg !2111

; <label>:122:                                    ; preds = %115
  store i1 true, i1* %4, align 1, !dbg !2112
  br label %123, !dbg !2112

; <label>:123:                                    ; preds = %122, %121, %108, %102, %37, %31
  %124 = load i1, i1* %4, align 1, !dbg !2113
  ret i1 %124, !dbg !2113
}

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #4

declare i8* @versiondescribe(%struct.dpkg_version*, i32) #2

declare void @ensure_package_clientdata(%struct.pkginfo*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

; Function Attrs: nounwind uwtable
define internal i32 @does_replace(%struct.pkginfo*, %struct.pkgbin*, %struct.pkginfo*, %struct.pkgbin*) #0 !dbg !2114 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pkginfo*, align 8
  %7 = alloca %struct.pkgbin*, align 8
  %8 = alloca %struct.pkginfo*, align 8
  %9 = alloca %struct.pkgbin*, align 8
  %10 = alloca %struct.dependency*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %6, metadata !2117, metadata !631), !dbg !2118
  store %struct.pkgbin* %1, %struct.pkgbin** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %7, metadata !2119, metadata !631), !dbg !2120
  store %struct.pkginfo* %2, %struct.pkginfo** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %8, metadata !2121, metadata !631), !dbg !2122
  store %struct.pkgbin* %3, %struct.pkgbin** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %9, metadata !2123, metadata !631), !dbg !2124
  call void @llvm.dbg.declare(metadata %struct.dependency** %10, metadata !2125, metadata !631), !dbg !2126
  %11 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !2127
  %12 = load %struct.pkgbin*, %struct.pkgbin** %7, align 8, !dbg !2128
  %13 = call i8* @pkgbin_name(%struct.pkginfo* %11, %struct.pkgbin* %12, i32 3), !dbg !2129
  %14 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !2130
  %15 = load %struct.pkgbin*, %struct.pkgbin** %9, align 8, !dbg !2131
  %16 = call i8* @pkgbin_name(%struct.pkginfo* %14, %struct.pkgbin* %15, i32 3), !dbg !2132
  %17 = load %struct.pkgbin*, %struct.pkgbin** %9, align 8, !dbg !2133
  %18 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %17, i32 0, i32 11, !dbg !2134
  %19 = call i8* @versiondescribe(%struct.dpkg_version* %18, i32 2), !dbg !2135
  call void (i32, i8*, ...) @debug(i32 32, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.95, i32 0, i32 0), i8* %13, i8* %16, i8* %19), !dbg !2136
  %20 = load %struct.pkgbin*, %struct.pkgbin** %7, align 8, !dbg !2137
  %21 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %20, i32 0, i32 0, !dbg !2139
  %22 = load %struct.dependency*, %struct.dependency** %21, align 8, !dbg !2139
  store %struct.dependency* %22, %struct.dependency** %10, align 8, !dbg !2140
  br label %23, !dbg !2141

; <label>:23:                                     ; preds = %62, %4
  %24 = load %struct.dependency*, %struct.dependency** %10, align 8, !dbg !2142
  %25 = icmp ne %struct.dependency* %24, null, !dbg !2145
  br i1 %25, label %26, label %66, !dbg !2145

; <label>:26:                                     ; preds = %23
  %27 = load %struct.dependency*, %struct.dependency** %10, align 8, !dbg !2146
  %28 = getelementptr inbounds %struct.dependency, %struct.dependency* %27, i32 0, i32 3, !dbg !2149
  %29 = load i32, i32* %28, align 8, !dbg !2149
  %30 = icmp ne i32 %29, 7, !dbg !2150
  br i1 %30, label %41, label %31, !dbg !2151

; <label>:31:                                     ; preds = %26
  %32 = load %struct.dependency*, %struct.dependency** %10, align 8, !dbg !2152
  %33 = getelementptr inbounds %struct.dependency, %struct.dependency* %32, i32 0, i32 2, !dbg !2154
  %34 = load %struct.deppossi*, %struct.deppossi** %33, align 8, !dbg !2154
  %35 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %34, i32 0, i32 1, !dbg !2155
  %36 = load %struct.pkgset*, %struct.pkgset** %35, align 8, !dbg !2155
  %37 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !2156
  %38 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %37, i32 0, i32 0, !dbg !2157
  %39 = load %struct.pkgset*, %struct.pkgset** %38, align 8, !dbg !2157
  %40 = icmp ne %struct.pkgset* %36, %39, !dbg !2158
  br i1 %40, label %41, label %42, !dbg !2159

; <label>:41:                                     ; preds = %31, %26
  br label %62, !dbg !2160

; <label>:42:                                     ; preds = %31
  %43 = load %struct.dependency*, %struct.dependency** %10, align 8, !dbg !2161
  %44 = getelementptr inbounds %struct.dependency, %struct.dependency* %43, i32 0, i32 2, !dbg !2162
  %45 = load %struct.deppossi*, %struct.deppossi** %44, align 8, !dbg !2162
  %46 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %45, i32 0, i32 6, !dbg !2163
  %47 = call i8* @versiondescribe(%struct.dpkg_version* %46, i32 2), !dbg !2164
  call void (i32, i8*, ...) @debug(i32 256, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.96, i32 0, i32 0), i8* %47), !dbg !2165
  %48 = load %struct.pkgbin*, %struct.pkgbin** %9, align 8, !dbg !2166
  %49 = load %struct.dependency*, %struct.dependency** %10, align 8, !dbg !2168
  %50 = getelementptr inbounds %struct.dependency, %struct.dependency* %49, i32 0, i32 2, !dbg !2169
  %51 = load %struct.deppossi*, %struct.deppossi** %50, align 8, !dbg !2169
  %52 = call zeroext i1 @versionsatisfied(%struct.pkgbin* %48, %struct.deppossi* %51), !dbg !2170
  br i1 %52, label %54, label %53, !dbg !2171

; <label>:53:                                     ; preds = %42
  br label %62, !dbg !2172

; <label>:54:                                     ; preds = %42
  %55 = load %struct.pkgbin*, %struct.pkgbin** %9, align 8, !dbg !2173
  %56 = load %struct.dependency*, %struct.dependency** %10, align 8, !dbg !2175
  %57 = getelementptr inbounds %struct.dependency, %struct.dependency* %56, i32 0, i32 2, !dbg !2176
  %58 = load %struct.deppossi*, %struct.deppossi** %57, align 8, !dbg !2176
  %59 = call zeroext i1 @archsatisfied(%struct.pkgbin* %55, %struct.deppossi* %58), !dbg !2177
  br i1 %59, label %61, label %60, !dbg !2178

; <label>:60:                                     ; preds = %54
  br label %62, !dbg !2179

; <label>:61:                                     ; preds = %54
  call void (i32, i8*, ...) @debug(i32 32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.97, i32 0, i32 0)), !dbg !2180
  store i32 1, i32* %5, align 4, !dbg !2181
  br label %67, !dbg !2181

; <label>:62:                                     ; preds = %60, %53, %41
  %63 = load %struct.dependency*, %struct.dependency** %10, align 8, !dbg !2182
  %64 = getelementptr inbounds %struct.dependency, %struct.dependency* %63, i32 0, i32 1, !dbg !2184
  %65 = load %struct.dependency*, %struct.dependency** %64, align 8, !dbg !2184
  store %struct.dependency* %65, %struct.dependency** %10, align 8, !dbg !2185
  br label %23, !dbg !2186, !llvm.loop !2187

; <label>:66:                                     ; preds = %23
  call void (i32, i8*, ...) @debug(i32 32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.98, i32 0, i32 0)), !dbg !2189
  store i32 0, i32* %5, align 4, !dbg !2190
  br label %67, !dbg !2190

; <label>:67:                                     ; preds = %66, %61
  %68 = load i32, i32* %5, align 4, !dbg !2191
  ret i32 %68, !dbg !2191
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal void @tar_fsys_namenode_queue_pop(%struct.fsys_namenode_queue*, %struct.fsys_namenode_list**, %struct.fsys_namenode_list*) #0 !dbg !2192 {
  %4 = alloca %struct.fsys_namenode_queue*, align 8
  %5 = alloca %struct.fsys_namenode_list**, align 8
  %6 = alloca %struct.fsys_namenode_list*, align 8
  store %struct.fsys_namenode_queue* %0, %struct.fsys_namenode_queue** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode_queue** %4, metadata !2195, metadata !631), !dbg !2196
  store %struct.fsys_namenode_list** %1, %struct.fsys_namenode_list*** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode_list*** %5, metadata !2197, metadata !631), !dbg !2198
  store %struct.fsys_namenode_list* %2, %struct.fsys_namenode_list** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode_list** %6, metadata !2199, metadata !631), !dbg !2200
  %7 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %6, align 8, !dbg !2201
  %8 = bitcast %struct.fsys_namenode_list* %7 to i8*, !dbg !2201
  call void @tar_pool_free(i8* %8), !dbg !2202
  %9 = load %struct.fsys_namenode_list**, %struct.fsys_namenode_list*** %5, align 8, !dbg !2203
  %10 = load %struct.fsys_namenode_queue*, %struct.fsys_namenode_queue** %4, align 8, !dbg !2204
  %11 = getelementptr inbounds %struct.fsys_namenode_queue, %struct.fsys_namenode_queue* %10, i32 0, i32 1, !dbg !2205
  store %struct.fsys_namenode_list** %9, %struct.fsys_namenode_list*** %11, align 8, !dbg !2206
  %12 = load %struct.fsys_namenode_list**, %struct.fsys_namenode_list*** %5, align 8, !dbg !2207
  store %struct.fsys_namenode_list* null, %struct.fsys_namenode_list** %12, align 8, !dbg !2208
  ret void, !dbg !2209
}

; Function Attrs: nounwind uwtable
define internal void @tarobject_skip_entry(%struct.tarcontext*, %struct.tar_entry*) #0 !dbg !2210 {
  %3 = alloca %struct.tarcontext*, align 8
  %4 = alloca %struct.tar_entry*, align 8
  %5 = alloca %struct.dpkg_error, align 8
  %6 = alloca [256 x i8], align 16
  store %struct.tarcontext* %0, %struct.tarcontext** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.tarcontext** %3, metadata !2213, metadata !631), !dbg !2214
  store %struct.tar_entry* %1, %struct.tar_entry** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.tar_entry** %4, metadata !2215, metadata !631), !dbg !2216
  %7 = load %struct.tar_entry*, %struct.tar_entry** %4, align 8, !dbg !2217
  %8 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %7, i32 0, i32 1, !dbg !2219
  %9 = load i32, i32* %8, align 4, !dbg !2219
  %10 = icmp eq i32 %9, 48, !dbg !2220
  br i1 %10, label %11, label %32, !dbg !2221

; <label>:11:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata %struct.dpkg_error* %5, metadata !2222, metadata !631), !dbg !2224
  call void @llvm.dbg.declare(metadata [256 x i8]* %6, metadata !2225, metadata !631), !dbg !2229
  %12 = load %struct.tarcontext*, %struct.tarcontext** %3, align 8, !dbg !2230
  %13 = getelementptr inbounds %struct.tarcontext, %struct.tarcontext* %12, i32 0, i32 0, !dbg !2232
  %14 = load i32, i32* %13, align 8, !dbg !2232
  %15 = load %struct.tar_entry*, %struct.tar_entry** %4, align 8, !dbg !2233
  %16 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %15, i32 0, i32 4, !dbg !2234
  %17 = load i64, i64* %16, align 8, !dbg !2234
  %18 = call i64 @buffer_skip_Int(i32 %14, i32 0, i64 %17, %struct.dpkg_error* %5), !dbg !2235
  %19 = icmp slt i64 %18, 0, !dbg !2236
  br i1 %19, label %20, label %29, !dbg !2237

; <label>:20:                                     ; preds = %11
  %21 = call i8* @gettext(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.99, i32 0, i32 0)) #10, !dbg !2238
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0, !dbg !2239
  %23 = load %struct.tar_entry*, %struct.tar_entry** %4, align 8, !dbg !2240
  %24 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %23, i32 0, i32 2, !dbg !2241
  %25 = load i8*, i8** %24, align 8, !dbg !2241
  %26 = call i8* @path_quote_filename(i8* %22, i8* %25, i64 256), !dbg !2242
  %27 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %5, i32 0, i32 2, !dbg !2243
  %28 = load i8*, i8** %27, align 8, !dbg !2243
  call void (i8*, ...) @ohshit(i8* %21, i8* %26, i8* %28) #11, !dbg !2244
  unreachable, !dbg !2246

; <label>:29:                                     ; preds = %11
  %30 = load %struct.tarcontext*, %struct.tarcontext** %3, align 8, !dbg !2247
  %31 = load %struct.tar_entry*, %struct.tar_entry** %4, align 8, !dbg !2248
  call void @tarobject_skip_padding(%struct.tarcontext* %30, %struct.tar_entry* %31), !dbg !2249
  br label %32, !dbg !2250

; <label>:32:                                     ; preds = %29, %2
  ret void, !dbg !2251
}

declare zeroext i1 @filter_should_skip(%struct.tar_entry*) #2

; Function Attrs: nounwind uwtable
define internal void @md5hash_prev_conffile(%struct.pkginfo*, i8*, i8*, %struct.fsys_namenode*) #0 !dbg !2252 {
  %5 = alloca %struct.pkginfo*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.fsys_namenode*, align 8
  %9 = alloca %struct.pkginfo*, align 8
  %10 = alloca %struct.conffile*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %5, metadata !2255, metadata !631), !dbg !2256
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2257, metadata !631), !dbg !2258
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2259, metadata !631), !dbg !2260
  store %struct.fsys_namenode* %3, %struct.fsys_namenode** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %8, metadata !2261, metadata !631), !dbg !2262
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %9, metadata !2263, metadata !631), !dbg !2264
  call void @llvm.dbg.declare(metadata %struct.conffile** %10, metadata !2265, metadata !631), !dbg !2266
  %11 = load %struct.fsys_namenode*, %struct.fsys_namenode** %8, align 8, !dbg !2267
  %12 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %11, i32 0, i32 1, !dbg !2268
  %13 = load i8*, i8** %12, align 8, !dbg !2268
  call void (i32, i8*, ...) @debug(i32 128, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.101, i32 0, i32 0), i8* %13), !dbg !2269
  %14 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !2270
  %15 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %14, i32 0, i32 0, !dbg !2272
  %16 = load %struct.pkgset*, %struct.pkgset** %15, align 8, !dbg !2272
  %17 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %16, i32 0, i32 2, !dbg !2273
  store %struct.pkginfo* %17, %struct.pkginfo** %9, align 8, !dbg !2274
  br label %18, !dbg !2275

; <label>:18:                                     ; preds = %84, %4
  %19 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !2276
  %20 = icmp ne %struct.pkginfo* %19, null, !dbg !2279
  br i1 %20, label %21, label %88, !dbg !2279

; <label>:21:                                     ; preds = %18
  %22 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !2280
  %23 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !2283
  %24 = icmp eq %struct.pkginfo* %22, %23, !dbg !2284
  br i1 %24, label %25, label %26, !dbg !2285

; <label>:25:                                     ; preds = %21
  br label %84, !dbg !2286

; <label>:26:                                     ; preds = %21
  %27 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !2287
  %28 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %27, i32 0, i32 4, !dbg !2289
  %29 = load i32, i32* %28, align 8, !dbg !2289
  %30 = icmp ule i32 %29, 3, !dbg !2290
  br i1 %30, label %31, label %40, !dbg !2291

; <label>:31:                                     ; preds = %26
  %32 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !2292
  %33 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %32, i32 0, i32 9, !dbg !2293
  %34 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %33, i32 0, i32 11, !dbg !2294
  %35 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !2295
  %36 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %35, i32 0, i32 8, !dbg !2296
  %37 = call i32 @dpkg_version_compare(%struct.dpkg_version* %34, %struct.dpkg_version* %36), !dbg !2297
  %38 = icmp ne i32 %37, 0, !dbg !2298
  br i1 %38, label %39, label %40, !dbg !2299

; <label>:39:                                     ; preds = %31
  br label %84, !dbg !2301

; <label>:40:                                     ; preds = %31, %26
  %41 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !2302
  %42 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %41, i32 0, i32 9, !dbg !2304
  %43 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %42, i32 0, i32 12, !dbg !2305
  %44 = load %struct.conffile*, %struct.conffile** %43, align 8, !dbg !2305
  store %struct.conffile* %44, %struct.conffile** %10, align 8, !dbg !2306
  br label %45, !dbg !2307

; <label>:45:                                     ; preds = %65, %40
  %46 = load %struct.conffile*, %struct.conffile** %10, align 8, !dbg !2308
  %47 = icmp ne %struct.conffile* %46, null, !dbg !2311
  br i1 %47, label %48, label %69, !dbg !2311

; <label>:48:                                     ; preds = %45
  %49 = load %struct.conffile*, %struct.conffile** %10, align 8, !dbg !2312
  %50 = getelementptr inbounds %struct.conffile, %struct.conffile* %49, i32 0, i32 3, !dbg !2315
  %51 = load i8, i8* %50, align 8, !dbg !2315
  %52 = trunc i8 %51 to i1, !dbg !2315
  br i1 %52, label %53, label %54, !dbg !2316

; <label>:53:                                     ; preds = %48
  br label %65, !dbg !2317

; <label>:54:                                     ; preds = %48
  %55 = load %struct.conffile*, %struct.conffile** %10, align 8, !dbg !2318
  %56 = getelementptr inbounds %struct.conffile, %struct.conffile* %55, i32 0, i32 1, !dbg !2320
  %57 = load i8*, i8** %56, align 8, !dbg !2320
  %58 = load %struct.fsys_namenode*, %struct.fsys_namenode** %8, align 8, !dbg !2321
  %59 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %58, i32 0, i32 1, !dbg !2322
  %60 = load i8*, i8** %59, align 8, !dbg !2322
  %61 = call i32 @strcmp(i8* %57, i8* %60) #12, !dbg !2323
  %62 = icmp eq i32 %61, 0, !dbg !2324
  br i1 %62, label %63, label %64, !dbg !2325

; <label>:63:                                     ; preds = %54
  br label %69, !dbg !2326

; <label>:64:                                     ; preds = %54
  br label %65, !dbg !2327

; <label>:65:                                     ; preds = %64, %53
  %66 = load %struct.conffile*, %struct.conffile** %10, align 8, !dbg !2328
  %67 = getelementptr inbounds %struct.conffile, %struct.conffile* %66, i32 0, i32 0, !dbg !2330
  %68 = load %struct.conffile*, %struct.conffile** %67, align 8, !dbg !2330
  store %struct.conffile* %68, %struct.conffile** %10, align 8, !dbg !2331
  br label %45, !dbg !2332, !llvm.loop !2333

; <label>:69:                                     ; preds = %63, %45
  %70 = load %struct.conffile*, %struct.conffile** %10, align 8, !dbg !2335
  %71 = icmp ne %struct.conffile* %70, null, !dbg !2335
  br i1 %71, label %72, label %83, !dbg !2337

; <label>:72:                                     ; preds = %69
  %73 = load i8*, i8** %6, align 8, !dbg !2338
  %74 = load %struct.conffile*, %struct.conffile** %10, align 8, !dbg !2340
  %75 = getelementptr inbounds %struct.conffile, %struct.conffile* %74, i32 0, i32 2, !dbg !2341
  %76 = load i8*, i8** %75, align 8, !dbg !2341
  %77 = call i8* @strcpy(i8* %73, i8* %76) #10, !dbg !2342
  %78 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !2343
  %79 = call i8* @pkg_name(%struct.pkginfo* %78, i32 3), !dbg !2344
  %80 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !2345
  %81 = call i8* @pkg_status_name(%struct.pkginfo* %80), !dbg !2346
  %82 = load i8*, i8** %6, align 8, !dbg !2347
  call void (i32, i8*, ...) @debug(i32 128, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.102, i32 0, i32 0), i8* %79, i8* %81, i8* %82), !dbg !2348
  br label %88, !dbg !2349

; <label>:83:                                     ; preds = %69
  br label %84, !dbg !2350

; <label>:84:                                     ; preds = %83, %39, %25
  %85 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !2351
  %86 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %85, i32 0, i32 1, !dbg !2353
  %87 = load %struct.pkginfo*, %struct.pkginfo** %86, align 8, !dbg !2353
  store %struct.pkginfo* %87, %struct.pkginfo** %9, align 8, !dbg !2354
  br label %18, !dbg !2355, !llvm.loop !2356

; <label>:88:                                     ; preds = %72, %18
  %89 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !2358
  %90 = icmp eq %struct.pkginfo* %89, null, !dbg !2360
  br i1 %90, label %91, label %96, !dbg !2361

; <label>:91:                                     ; preds = %88
  %92 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !2362
  %93 = load i8*, i8** %6, align 8, !dbg !2364
  %94 = load i8*, i8** %7, align 8, !dbg !2365
  call void @md5hash(%struct.pkginfo* %92, i8* %93, i8* %94), !dbg !2366
  %95 = load i8*, i8** %6, align 8, !dbg !2367
  call void (i32, i8*, ...) @debug(i32 128, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.103, i32 0, i32 0), i8* %95), !dbg !2368
  br label %96, !dbg !2369

; <label>:96:                                     ; preds = %91, %88
  ret void, !dbg !2370
}

declare void @md5hash(%struct.pkginfo*, i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #4

declare zeroext i1 @in_force(i32) #2

; Function Attrs: nounwind uwtable
define internal void @tarobject_hash(%struct.tarcontext*, %struct.tar_entry*, %struct.fsys_namenode*) #0 !dbg !2371 {
  %4 = alloca %struct.tarcontext*, align 8
  %5 = alloca %struct.tar_entry*, align 8
  %6 = alloca %struct.fsys_namenode*, align 8
  %7 = alloca %struct.dpkg_error, align 8
  %8 = alloca [256 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca %struct.fsys_namenode*, align 8
  store %struct.tarcontext* %0, %struct.tarcontext** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.tarcontext** %4, metadata !2374, metadata !631), !dbg !2375
  store %struct.tar_entry* %1, %struct.tar_entry** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.tar_entry** %5, metadata !2376, metadata !631), !dbg !2377
  store %struct.fsys_namenode* %2, %struct.fsys_namenode** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %6, metadata !2378, metadata !631), !dbg !2379
  %11 = load %struct.tar_entry*, %struct.tar_entry** %5, align 8, !dbg !2380
  %12 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %11, i32 0, i32 1, !dbg !2382
  %13 = load i32, i32* %12, align 4, !dbg !2382
  %14 = icmp eq i32 %13, 48, !dbg !2383
  br i1 %14, label %15, label %44, !dbg !2384

; <label>:15:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata %struct.dpkg_error* %7, metadata !2385, metadata !631), !dbg !2387
  call void @llvm.dbg.declare(metadata [256 x i8]* %8, metadata !2388, metadata !631), !dbg !2389
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2390, metadata !631), !dbg !2391
  %16 = call i8* @nfmalloc(i64 33), !dbg !2392
  store i8* %16, i8** %9, align 8, !dbg !2393
  %17 = load %struct.tarcontext*, %struct.tarcontext** %4, align 8, !dbg !2394
  %18 = getelementptr inbounds %struct.tarcontext, %struct.tarcontext* %17, i32 0, i32 0, !dbg !2396
  %19 = load i32, i32* %18, align 8, !dbg !2396
  %20 = load i8*, i8** %9, align 8, !dbg !2397
  %21 = load %struct.tar_entry*, %struct.tar_entry** %5, align 8, !dbg !2398
  %22 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %21, i32 0, i32 4, !dbg !2399
  %23 = load i64, i64* %22, align 8, !dbg !2399
  %24 = call i64 @buffer_copy_IntPtr(i32 %19, i32 0, i8* %20, i32 5, i8* null, i32 3, i64 %23, %struct.dpkg_error* %7), !dbg !2400
  %25 = icmp slt i64 %24, 0, !dbg !2401
  br i1 %25, label %26, label %35, !dbg !2402

; <label>:26:                                     ; preds = %15
  %27 = call i8* @gettext(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.104, i32 0, i32 0)) #10, !dbg !2403
  %28 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i32 0, i32 0, !dbg !2404
  %29 = load %struct.tar_entry*, %struct.tar_entry** %5, align 8, !dbg !2405
  %30 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %29, i32 0, i32 2, !dbg !2406
  %31 = load i8*, i8** %30, align 8, !dbg !2406
  %32 = call i8* @path_quote_filename(i8* %28, i8* %31, i64 256), !dbg !2407
  %33 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %7, i32 0, i32 2, !dbg !2408
  %34 = load i8*, i8** %33, align 8, !dbg !2408
  call void (i8*, ...) @ohshit(i8* %27, i8* %32, i8* %34) #11, !dbg !2409
  unreachable, !dbg !2411

; <label>:35:                                     ; preds = %15
  %36 = load %struct.tarcontext*, %struct.tarcontext** %4, align 8, !dbg !2412
  %37 = load %struct.tar_entry*, %struct.tar_entry** %5, align 8, !dbg !2413
  call void @tarobject_skip_padding(%struct.tarcontext* %36, %struct.tar_entry* %37), !dbg !2414
  %38 = load i8*, i8** %9, align 8, !dbg !2415
  %39 = load %struct.fsys_namenode*, %struct.fsys_namenode** %6, align 8, !dbg !2416
  %40 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %39, i32 0, i32 8, !dbg !2417
  store i8* %38, i8** %40, align 8, !dbg !2418
  %41 = load %struct.fsys_namenode*, %struct.fsys_namenode** %6, align 8, !dbg !2419
  %42 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %41, i32 0, i32 8, !dbg !2420
  %43 = load i8*, i8** %42, align 8, !dbg !2420
  call void (i32, i8*, ...) @debug(i32 64, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.105, i32 0, i32 0), i8* %43), !dbg !2421
  br label %63, !dbg !2422

; <label>:44:                                     ; preds = %3
  %45 = load %struct.tar_entry*, %struct.tar_entry** %5, align 8, !dbg !2423
  %46 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %45, i32 0, i32 1, !dbg !2426
  %47 = load i32, i32* %46, align 4, !dbg !2426
  %48 = icmp eq i32 %47, 49, !dbg !2427
  br i1 %48, label %49, label %62, !dbg !2423

; <label>:49:                                     ; preds = %44
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %10, metadata !2428, metadata !631), !dbg !2430
  %50 = load %struct.tar_entry*, %struct.tar_entry** %5, align 8, !dbg !2431
  %51 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %50, i32 0, i32 3, !dbg !2432
  %52 = load i8*, i8** %51, align 8, !dbg !2432
  %53 = call %struct.fsys_namenode* @fsys_hash_find_node(i8* %52, i32 0), !dbg !2433
  store %struct.fsys_namenode* %53, %struct.fsys_namenode** %10, align 8, !dbg !2434
  %54 = load %struct.fsys_namenode*, %struct.fsys_namenode** %10, align 8, !dbg !2435
  %55 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %54, i32 0, i32 8, !dbg !2436
  %56 = load i8*, i8** %55, align 8, !dbg !2436
  %57 = load %struct.fsys_namenode*, %struct.fsys_namenode** %6, align 8, !dbg !2437
  %58 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %57, i32 0, i32 8, !dbg !2438
  store i8* %56, i8** %58, align 8, !dbg !2439
  %59 = load %struct.fsys_namenode*, %struct.fsys_namenode** %6, align 8, !dbg !2440
  %60 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %59, i32 0, i32 8, !dbg !2441
  %61 = load i8*, i8** %60, align 8, !dbg !2441
  call void (i32, i8*, ...) @debug(i32 64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.106, i32 0, i32 0), i8* %61), !dbg !2442
  br label %62, !dbg !2443

; <label>:62:                                     ; preds = %49, %44
  br label %63

; <label>:63:                                     ; preds = %62, %35
  ret void, !dbg !2444
}

declare void @push_cleanup(void (i32, i8**)*, i32, i32, ...) #2

declare void @cu_installnew(i32, i8**) #2

; Function Attrs: nounwind uwtable
define internal void @tarobject_extract(%struct.tarcontext*, %struct.tar_entry*, i8*, %struct.file_stat*, %struct.fsys_namenode*) #0 !dbg !620 {
  %6 = alloca %struct.tarcontext*, align 8
  %7 = alloca %struct.tar_entry*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.file_stat*, align 8
  %10 = alloca %struct.fsys_namenode*, align 8
  %11 = alloca %struct.dpkg_error, align 8
  %12 = alloca %struct.fsys_namenode*, align 8
  %13 = alloca [256 x i8], align 16
  %14 = alloca [256 x i8], align 16
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.tarcontext* %0, %struct.tarcontext** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.tarcontext** %6, metadata !2445, metadata !631), !dbg !2446
  store %struct.tar_entry* %1, %struct.tar_entry** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.tar_entry** %7, metadata !2447, metadata !631), !dbg !2448
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2449, metadata !631), !dbg !2450
  store %struct.file_stat* %3, %struct.file_stat** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.file_stat** %9, metadata !2451, metadata !631), !dbg !2452
  store %struct.fsys_namenode* %4, %struct.fsys_namenode** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %10, metadata !2453, metadata !631), !dbg !2454
  call void @llvm.dbg.declare(metadata %struct.dpkg_error* %11, metadata !2455, metadata !631), !dbg !2456
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %12, metadata !2457, metadata !631), !dbg !2458
  call void @llvm.dbg.declare(metadata [256 x i8]* %13, metadata !2459, metadata !631), !dbg !2460
  call void @llvm.dbg.declare(metadata [256 x i8]* %14, metadata !2461, metadata !631), !dbg !2462
  call void @llvm.dbg.declare(metadata i8** %15, metadata !2463, metadata !631), !dbg !2464
  call void @llvm.dbg.declare(metadata i32* %16, metadata !2465, metadata !631), !dbg !2466
  %17 = load %struct.tar_entry*, %struct.tar_entry** %7, align 8, !dbg !2467
  %18 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %17, i32 0, i32 1, !dbg !2468
  %19 = load i32, i32* %18, align 4, !dbg !2468
  switch i32 %19, label %257 [
    i32 48, label %20
    i32 54, label %142
    i32 51, label %152
    i32 52, label %165
    i32 49, label %178
    i32 50, label %234
    i32 53, label %247
  ], !dbg !2469

; <label>:20:                                     ; preds = %5
  %21 = load i8*, i8** %8, align 8, !dbg !2470
  %22 = call i32 (i8*, i32, ...) @open(i8* %21, i32 193, i32 0), !dbg !2472
  store i32 %22, i32* @tarobject_extract.fd, align 4, !dbg !2473
  %23 = load i32, i32* @tarobject_extract.fd, align 4, !dbg !2474
  %24 = icmp slt i32 %23, 0, !dbg !2476
  br i1 %24, label %25, label %31, !dbg !2477

; <label>:25:                                     ; preds = %20
  %26 = call i8* @gettext(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.107, i32 0, i32 0)) #10, !dbg !2478
  %27 = load i8*, i8** %8, align 8, !dbg !2479
  %28 = load %struct.tar_entry*, %struct.tar_entry** %7, align 8, !dbg !2480
  %29 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %28, i32 0, i32 2, !dbg !2481
  %30 = load i8*, i8** %29, align 8, !dbg !2481
  call void (i8*, ...) @ohshite(i8* %26, i8* %27, i8* %30) #11, !dbg !2482
  unreachable, !dbg !2484

; <label>:31:                                     ; preds = %20
  call void (void (i32, i8**)*, i32, i32, ...) @push_cleanup(void (i32, i8**)* @cu_closefd, i32 2, i32 1, i32* @tarobject_extract.fd), !dbg !2485
  %32 = load %struct.tar_entry*, %struct.tar_entry** %7, align 8, !dbg !2486
  %33 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %32, i32 0, i32 4, !dbg !2487
  %34 = load i64, i64* %33, align 8, !dbg !2487
  call void (i32, i8*, ...) @debug(i32 64, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.108, i32 0, i32 0), i64 %34), !dbg !2488
  %35 = load i32, i32* @tarobject_extract.fd, align 4, !dbg !2489
  %36 = load %struct.tar_entry*, %struct.tar_entry** %7, align 8, !dbg !2490
  %37 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %36, i32 0, i32 4, !dbg !2491
  %38 = load i64, i64* %37, align 8, !dbg !2491
  %39 = call i32 @fd_allocate_size(i32 %35, i64 0, i64 %38), !dbg !2492
  %40 = call i8* @nfmalloc(i64 33), !dbg !2493
  store i8* %40, i8** %15, align 8, !dbg !2494
  %41 = load %struct.tarcontext*, %struct.tarcontext** %6, align 8, !dbg !2495
  %42 = getelementptr inbounds %struct.tarcontext, %struct.tarcontext* %41, i32 0, i32 0, !dbg !2497
  %43 = load i32, i32* %42, align 8, !dbg !2497
  %44 = load i8*, i8** %15, align 8, !dbg !2498
  %45 = load i32, i32* @tarobject_extract.fd, align 4, !dbg !2499
  %46 = load %struct.tar_entry*, %struct.tar_entry** %7, align 8, !dbg !2500
  %47 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %46, i32 0, i32 4, !dbg !2501
  %48 = load i64, i64* %47, align 8, !dbg !2501
  %49 = call i64 @buffer_copy_IntInt(i32 %43, i32 0, i8* %44, i32 5, i32 %45, i32 2, i64 %48, %struct.dpkg_error* %11), !dbg !2502
  %50 = icmp slt i64 %49, 0, !dbg !2503
  br i1 %50, label %51, label %63, !dbg !2504

; <label>:51:                                     ; preds = %31
  %52 = call i8* @gettext(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.109, i32 0, i32 0)) #10, !dbg !2505
  %53 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i32 0, i32 0, !dbg !2506
  %54 = load %struct.tar_entry*, %struct.tar_entry** %7, align 8, !dbg !2507
  %55 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %54, i32 0, i32 2, !dbg !2508
  %56 = load i8*, i8** %55, align 8, !dbg !2508
  %57 = call i8* @path_quote_filename(i8* %53, i8* %56, i64 256), !dbg !2509
  %58 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i32 0, i32 0, !dbg !2510
  %59 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fnamenewvb, i32 0, i32 2), align 8, !dbg !2511
  %60 = call i8* @path_quote_filename(i8* %58, i8* %59, i64 256), !dbg !2512
  %61 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %11, i32 0, i32 2, !dbg !2513
  %62 = load i8*, i8** %61, align 8, !dbg !2513
  call void (i8*, ...) @ohshit(i8* %52, i8* %57, i8* %60, i8* %62) #11, !dbg !2514
  unreachable, !dbg !2516

; <label>:63:                                     ; preds = %31
  %64 = load i8*, i8** %15, align 8, !dbg !2517
  %65 = load %struct.fsys_namenode*, %struct.fsys_namenode** %10, align 8, !dbg !2518
  %66 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %65, i32 0, i32 8, !dbg !2519
  store i8* %64, i8** %66, align 8, !dbg !2520
  %67 = load %struct.fsys_namenode*, %struct.fsys_namenode** %10, align 8, !dbg !2521
  %68 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %67, i32 0, i32 8, !dbg !2522
  %69 = load i8*, i8** %68, align 8, !dbg !2522
  call void (i32, i8*, ...) @debug(i32 64, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.105, i32 0, i32 0), i8* %69), !dbg !2523
  %70 = load %struct.tarcontext*, %struct.tarcontext** %6, align 8, !dbg !2524
  %71 = load %struct.tar_entry*, %struct.tar_entry** %7, align 8, !dbg !2525
  call void @tarobject_skip_padding(%struct.tarcontext* %70, %struct.tar_entry* %71), !dbg !2526
  %72 = load i32, i32* @tarobject_extract.fd, align 4, !dbg !2527
  call void @fd_writeback_init(i32 %72), !dbg !2528
  %73 = load %struct.fsys_namenode*, %struct.fsys_namenode** %10, align 8, !dbg !2529
  %74 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %73, i32 0, i32 4, !dbg !2531
  %75 = load %struct.file_stat*, %struct.file_stat** %74, align 8, !dbg !2531
  %76 = icmp ne %struct.file_stat* %75, null, !dbg !2529
  br i1 %76, label %77, label %93, !dbg !2532

; <label>:77:                                     ; preds = %63
  %78 = load %struct.fsys_namenode*, %struct.fsys_namenode** %10, align 8, !dbg !2533
  %79 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %78, i32 0, i32 4, !dbg !2534
  %80 = load %struct.file_stat*, %struct.file_stat** %79, align 8, !dbg !2534
  %81 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %80, i32 0, i32 0, !dbg !2535
  %82 = load i32, i32* %81, align 8, !dbg !2535
  %83 = load %struct.fsys_namenode*, %struct.fsys_namenode** %10, align 8, !dbg !2536
  %84 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %83, i32 0, i32 4, !dbg !2537
  %85 = load %struct.file_stat*, %struct.file_stat** %84, align 8, !dbg !2537
  %86 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %85, i32 0, i32 1, !dbg !2538
  %87 = load i32, i32* %86, align 4, !dbg !2538
  %88 = load %struct.fsys_namenode*, %struct.fsys_namenode** %10, align 8, !dbg !2539
  %89 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %88, i32 0, i32 4, !dbg !2540
  %90 = load %struct.file_stat*, %struct.file_stat** %89, align 8, !dbg !2540
  %91 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %90, i32 0, i32 2, !dbg !2541
  %92 = load i32, i32* %91, align 8, !dbg !2541
  call void (i32, i8*, ...) @debug(i32 8, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.110, i32 0, i32 0), i32 %82, i32 %87, i32 %92), !dbg !2542
  br label %93, !dbg !2542

; <label>:93:                                     ; preds = %77, %63
  %94 = load i32, i32* @tarobject_extract.fd, align 4, !dbg !2543
  %95 = load %struct.file_stat*, %struct.file_stat** %9, align 8, !dbg !2544
  %96 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %95, i32 0, i32 0, !dbg !2545
  %97 = load i32, i32* %96, align 8, !dbg !2545
  %98 = load %struct.file_stat*, %struct.file_stat** %9, align 8, !dbg !2546
  %99 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %98, i32 0, i32 1, !dbg !2547
  %100 = load i32, i32* %99, align 4, !dbg !2547
  %101 = call i32 @fchown(i32 %94, i32 %97, i32 %100) #10, !dbg !2548
  store i32 %101, i32* %16, align 4, !dbg !2549
  %102 = load i32, i32* %16, align 4, !dbg !2550
  %103 = call i32 @forcible_nonroot_error(i32 %102), !dbg !2552
  %104 = icmp ne i32 %103, 0, !dbg !2552
  br i1 %104, label %105, label %110, !dbg !2553

; <label>:105:                                    ; preds = %93
  %106 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.111, i32 0, i32 0)) #10, !dbg !2554
  %107 = load %struct.tar_entry*, %struct.tar_entry** %7, align 8, !dbg !2555
  %108 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %107, i32 0, i32 2, !dbg !2556
  %109 = load i8*, i8** %108, align 8, !dbg !2556
  call void (i8*, ...) @ohshite(i8* %106, i8* %109) #11, !dbg !2557
  unreachable, !dbg !2559

; <label>:110:                                    ; preds = %93
  %111 = load i32, i32* @tarobject_extract.fd, align 4, !dbg !2560
  %112 = load %struct.file_stat*, %struct.file_stat** %9, align 8, !dbg !2561
  %113 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %112, i32 0, i32 2, !dbg !2562
  %114 = load i32, i32* %113, align 8, !dbg !2562
  %115 = and i32 %114, -61441, !dbg !2563
  %116 = call i32 @fchmod(i32 %111, i32 %115) #10, !dbg !2564
  store i32 %116, i32* %16, align 4, !dbg !2565
  %117 = load i32, i32* %16, align 4, !dbg !2566
  %118 = call i32 @forcible_nonroot_error(i32 %117), !dbg !2568
  %119 = icmp ne i32 %118, 0, !dbg !2568
  br i1 %119, label %120, label %125, !dbg !2569

; <label>:120:                                    ; preds = %110
  %121 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.112, i32 0, i32 0)) #10, !dbg !2570
  %122 = load %struct.tar_entry*, %struct.tar_entry** %7, align 8, !dbg !2571
  %123 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %122, i32 0, i32 2, !dbg !2572
  %124 = load i8*, i8** %123, align 8, !dbg !2572
  call void (i8*, ...) @ohshite(i8* %121, i8* %124) #11, !dbg !2573
  unreachable, !dbg !2575

; <label>:125:                                    ; preds = %110
  %126 = call zeroext i1 @in_force(i32 8388608), !dbg !2576
  br i1 %126, label %132, label %127, !dbg !2578

; <label>:127:                                    ; preds = %125
  %128 = load %struct.fsys_namenode*, %struct.fsys_namenode** %10, align 8, !dbg !2579
  %129 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %128, i32 0, i32 6, !dbg !2580
  %130 = load i32, i32* %129, align 8, !dbg !2581
  %131 = or i32 %130, 128, !dbg !2581
  store i32 %131, i32* %129, align 8, !dbg !2581
  br label %132, !dbg !2579

; <label>:132:                                    ; preds = %127, %125
  call void @pop_cleanup(i32 1), !dbg !2582
  %133 = load i32, i32* @tarobject_extract.fd, align 4, !dbg !2583
  %134 = call i32 @close(i32 %133), !dbg !2585
  %135 = icmp ne i32 %134, 0, !dbg !2585
  br i1 %135, label %136, label %141, !dbg !2586

; <label>:136:                                    ; preds = %132
  %137 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.56, i32 0, i32 0)) #10, !dbg !2587
  %138 = load %struct.tar_entry*, %struct.tar_entry** %7, align 8, !dbg !2588
  %139 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %138, i32 0, i32 2, !dbg !2589
  %140 = load i8*, i8** %139, align 8, !dbg !2589
  call void (i8*, ...) @ohshite(i8* %137, i8* %140) #11, !dbg !2590
  unreachable, !dbg !2592

; <label>:141:                                    ; preds = %132
  br label %261, !dbg !2593

; <label>:142:                                    ; preds = %5
  %143 = load i8*, i8** %8, align 8, !dbg !2594
  %144 = call i32 @mkfifo(i8* %143, i32 0) #10, !dbg !2596
  %145 = icmp ne i32 %144, 0, !dbg !2596
  br i1 %145, label %146, label %151, !dbg !2597

; <label>:146:                                    ; preds = %142
  %147 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.113, i32 0, i32 0)) #10, !dbg !2598
  %148 = load %struct.tar_entry*, %struct.tar_entry** %7, align 8, !dbg !2599
  %149 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %148, i32 0, i32 2, !dbg !2600
  %150 = load i8*, i8** %149, align 8, !dbg !2600
  call void (i8*, ...) @ohshite(i8* %147, i8* %150) #11, !dbg !2601
  unreachable, !dbg !2603

; <label>:151:                                    ; preds = %142
  call void (i32, i8*, ...) @debug(i32 64, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.114, i32 0, i32 0)), !dbg !2604
  br label %261, !dbg !2605

; <label>:152:                                    ; preds = %5
  %153 = load i8*, i8** %8, align 8, !dbg !2606
  %154 = load %struct.tar_entry*, %struct.tar_entry** %7, align 8, !dbg !2608
  %155 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %154, i32 0, i32 6, !dbg !2609
  %156 = load i64, i64* %155, align 8, !dbg !2609
  %157 = call i32 @mknod(i8* %153, i32 8192, i64 %156) #10, !dbg !2610
  %158 = icmp ne i32 %157, 0, !dbg !2610
  br i1 %158, label %159, label %164, !dbg !2611

; <label>:159:                                    ; preds = %152
  %160 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.115, i32 0, i32 0)) #10, !dbg !2612
  %161 = load %struct.tar_entry*, %struct.tar_entry** %7, align 8, !dbg !2613
  %162 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %161, i32 0, i32 2, !dbg !2614
  %163 = load i8*, i8** %162, align 8, !dbg !2614
  call void (i8*, ...) @ohshite(i8* %160, i8* %163) #11, !dbg !2615
  unreachable, !dbg !2617

; <label>:164:                                    ; preds = %152
  call void (i32, i8*, ...) @debug(i32 64, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.116, i32 0, i32 0)), !dbg !2618
  br label %261, !dbg !2619

; <label>:165:                                    ; preds = %5
  %166 = load i8*, i8** %8, align 8, !dbg !2620
  %167 = load %struct.tar_entry*, %struct.tar_entry** %7, align 8, !dbg !2622
  %168 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %167, i32 0, i32 6, !dbg !2623
  %169 = load i64, i64* %168, align 8, !dbg !2623
  %170 = call i32 @mknod(i8* %166, i32 24576, i64 %169) #10, !dbg !2624
  %171 = icmp ne i32 %170, 0, !dbg !2624
  br i1 %171, label %172, label %177, !dbg !2625

; <label>:172:                                    ; preds = %165
  %173 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.115, i32 0, i32 0)) #10, !dbg !2626
  %174 = load %struct.tar_entry*, %struct.tar_entry** %7, align 8, !dbg !2627
  %175 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %174, i32 0, i32 2, !dbg !2628
  %176 = load i8*, i8** %175, align 8, !dbg !2628
  call void (i8*, ...) @ohshite(i8* %173, i8* %176) #11, !dbg !2629
  unreachable, !dbg !2631

; <label>:177:                                    ; preds = %165
  call void (i32, i8*, ...) @debug(i32 64, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.117, i32 0, i32 0)), !dbg !2632
  br label %261, !dbg !2633

; <label>:178:                                    ; preds = %5
  call void @varbuf_reset(%struct.varbuf* @tarobject_extract.hardlinkfn), !dbg !2634
  %179 = load i8*, i8** @instdir, align 8, !dbg !2635
  %180 = load i8*, i8** @instdir, align 8, !dbg !2636
  %181 = call i64 @strlen(i8* %180) #12, !dbg !2637
  call void @varbuf_add_buf(%struct.varbuf* @tarobject_extract.hardlinkfn, i8* %179, i64 %181), !dbg !2638
  %182 = load %struct.tar_entry*, %struct.tar_entry** %7, align 8, !dbg !2640
  %183 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %182, i32 0, i32 3, !dbg !2641
  %184 = load i8*, i8** %183, align 8, !dbg !2641
  %185 = call %struct.fsys_namenode* @fsys_hash_find_node(i8* %184, i32 0), !dbg !2642
  store %struct.fsys_namenode* %185, %struct.fsys_namenode** %12, align 8, !dbg !2643
  %186 = load %struct.fsys_namenode*, %struct.fsys_namenode** %12, align 8, !dbg !2644
  %187 = load %struct.tarcontext*, %struct.tarcontext** %6, align 8, !dbg !2645
  %188 = getelementptr inbounds %struct.tarcontext, %struct.tarcontext* %187, i32 0, i32 1, !dbg !2646
  %189 = load %struct.pkginfo*, %struct.pkginfo** %188, align 8, !dbg !2646
  %190 = load %struct.tarcontext*, %struct.tarcontext** %6, align 8, !dbg !2647
  %191 = getelementptr inbounds %struct.tarcontext, %struct.tarcontext* %190, i32 0, i32 1, !dbg !2648
  %192 = load %struct.pkginfo*, %struct.pkginfo** %191, align 8, !dbg !2648
  %193 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %192, i32 0, i32 10, !dbg !2649
  %194 = call %struct.fsys_namenode* @namenodetouse(%struct.fsys_namenode* %186, %struct.pkginfo* %189, %struct.pkgbin* %193), !dbg !2650
  %195 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %194, i32 0, i32 1, !dbg !2651
  %196 = load i8*, i8** %195, align 8, !dbg !2651
  %197 = load %struct.fsys_namenode*, %struct.fsys_namenode** %12, align 8, !dbg !2652
  %198 = load %struct.tarcontext*, %struct.tarcontext** %6, align 8, !dbg !2653
  %199 = getelementptr inbounds %struct.tarcontext, %struct.tarcontext* %198, i32 0, i32 1, !dbg !2654
  %200 = load %struct.pkginfo*, %struct.pkginfo** %199, align 8, !dbg !2654
  %201 = load %struct.tarcontext*, %struct.tarcontext** %6, align 8, !dbg !2655
  %202 = getelementptr inbounds %struct.tarcontext, %struct.tarcontext* %201, i32 0, i32 1, !dbg !2656
  %203 = load %struct.pkginfo*, %struct.pkginfo** %202, align 8, !dbg !2656
  %204 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %203, i32 0, i32 10, !dbg !2657
  %205 = call %struct.fsys_namenode* @namenodetouse(%struct.fsys_namenode* %197, %struct.pkginfo* %200, %struct.pkgbin* %204), !dbg !2658
  %206 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %205, i32 0, i32 1, !dbg !2659
  %207 = load i8*, i8** %206, align 8, !dbg !2659
  %208 = call i64 @strlen(i8* %207) #12, !dbg !2660
  call void @varbuf_add_buf(%struct.varbuf* @tarobject_extract.hardlinkfn, i8* %196, i64 %208), !dbg !2662
  %209 = load %struct.fsys_namenode*, %struct.fsys_namenode** %12, align 8, !dbg !2664
  %210 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %209, i32 0, i32 6, !dbg !2666
  %211 = load i32, i32* %210, align 8, !dbg !2666
  %212 = and i32 %211, 257, !dbg !2667
  %213 = icmp ne i32 %212, 0, !dbg !2667
  br i1 %213, label %214, label %215, !dbg !2668

; <label>:214:                                    ; preds = %178
  call void @varbuf_add_buf(%struct.varbuf* @tarobject_extract.hardlinkfn, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i64 9), !dbg !2669
  br label %215, !dbg !2669

; <label>:215:                                    ; preds = %214, %178
  call void @varbuf_end_str(%struct.varbuf* @tarobject_extract.hardlinkfn), !dbg !2670
  %216 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @tarobject_extract.hardlinkfn, i32 0, i32 2), align 8, !dbg !2671
  %217 = load i8*, i8** %8, align 8, !dbg !2673
  %218 = call i32 @link(i8* %216, i8* %217) #10, !dbg !2674
  %219 = icmp ne i32 %218, 0, !dbg !2674
  br i1 %219, label %220, label %225, !dbg !2675

; <label>:220:                                    ; preds = %215
  %221 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.118, i32 0, i32 0)) #10, !dbg !2676
  %222 = load %struct.tar_entry*, %struct.tar_entry** %7, align 8, !dbg !2677
  %223 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %222, i32 0, i32 2, !dbg !2678
  %224 = load i8*, i8** %223, align 8, !dbg !2678
  call void (i8*, ...) @ohshite(i8* %221, i8* %224) #11, !dbg !2679
  unreachable, !dbg !2681

; <label>:225:                                    ; preds = %215
  %226 = load %struct.fsys_namenode*, %struct.fsys_namenode** %12, align 8, !dbg !2682
  %227 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %226, i32 0, i32 8, !dbg !2683
  %228 = load i8*, i8** %227, align 8, !dbg !2683
  %229 = load %struct.fsys_namenode*, %struct.fsys_namenode** %10, align 8, !dbg !2684
  %230 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %229, i32 0, i32 8, !dbg !2685
  store i8* %228, i8** %230, align 8, !dbg !2686
  %231 = load %struct.fsys_namenode*, %struct.fsys_namenode** %10, align 8, !dbg !2687
  %232 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %231, i32 0, i32 8, !dbg !2688
  %233 = load i8*, i8** %232, align 8, !dbg !2688
  call void (i32, i8*, ...) @debug(i32 64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.106, i32 0, i32 0), i8* %233), !dbg !2689
  br label %261, !dbg !2690

; <label>:234:                                    ; preds = %5
  %235 = load %struct.tar_entry*, %struct.tar_entry** %7, align 8, !dbg !2691
  %236 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %235, i32 0, i32 3, !dbg !2693
  %237 = load i8*, i8** %236, align 8, !dbg !2693
  %238 = load i8*, i8** %8, align 8, !dbg !2694
  %239 = call i32 @symlink(i8* %237, i8* %238) #10, !dbg !2695
  %240 = icmp ne i32 %239, 0, !dbg !2695
  br i1 %240, label %241, label %246, !dbg !2696

; <label>:241:                                    ; preds = %234
  %242 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.119, i32 0, i32 0)) #10, !dbg !2697
  %243 = load %struct.tar_entry*, %struct.tar_entry** %7, align 8, !dbg !2698
  %244 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %243, i32 0, i32 2, !dbg !2699
  %245 = load i8*, i8** %244, align 8, !dbg !2699
  call void (i8*, ...) @ohshite(i8* %242, i8* %245) #11, !dbg !2700
  unreachable, !dbg !2702

; <label>:246:                                    ; preds = %234
  call void (i32, i8*, ...) @debug(i32 64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.120, i32 0, i32 0)), !dbg !2703
  br label %261, !dbg !2704

; <label>:247:                                    ; preds = %5
  %248 = load i8*, i8** %8, align 8, !dbg !2705
  %249 = call i32 @mkdir(i8* %248, i32 0) #10, !dbg !2707
  %250 = icmp ne i32 %249, 0, !dbg !2707
  br i1 %250, label %251, label %256, !dbg !2708

; <label>:251:                                    ; preds = %247
  %252 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.121, i32 0, i32 0)) #10, !dbg !2709
  %253 = load %struct.tar_entry*, %struct.tar_entry** %7, align 8, !dbg !2710
  %254 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %253, i32 0, i32 2, !dbg !2711
  %255 = load i8*, i8** %254, align 8, !dbg !2711
  call void (i8*, ...) @ohshite(i8* %252, i8* %255) #11, !dbg !2712
  unreachable, !dbg !2714

; <label>:256:                                    ; preds = %247
  call void (i32, i8*, ...) @debug(i32 64, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.122, i32 0, i32 0)), !dbg !2715
  br label %261, !dbg !2716

; <label>:257:                                    ; preds = %5
  %258 = load %struct.tar_entry*, %struct.tar_entry** %7, align 8, !dbg !2717
  %259 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %258, i32 0, i32 1, !dbg !2718
  %260 = load i32, i32* %259, align 4, !dbg !2718
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.59, i32 0, i32 0), i32 451, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.tarobject_extract, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.123, i32 0, i32 0), i32 %260) #11, !dbg !2719
  unreachable, !dbg !2719

; <label>:261:                                    ; preds = %256, %246, %225, %177, %164, %151, %141
  ret void, !dbg !2720
}

; Function Attrs: nounwind uwtable
define internal void @tarobject_matches(%struct.tarcontext*, i8*, %struct.stat*, i8*, i8*, %struct.tar_entry*, %struct.fsys_namenode*) #0 !dbg !2721 {
  %8 = alloca %struct.tarcontext*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.stat*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.tar_entry*, align 8
  %14 = alloca %struct.fsys_namenode*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store %struct.tarcontext* %0, %struct.tarcontext** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.tarcontext** %8, metadata !2725, metadata !631), !dbg !2726
  store i8* %1, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2727, metadata !631), !dbg !2728
  store %struct.stat* %2, %struct.stat** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.stat** %10, metadata !2729, metadata !631), !dbg !2730
  store i8* %3, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2731, metadata !631), !dbg !2732
  store i8* %4, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !2733, metadata !631), !dbg !2734
  store %struct.tar_entry* %5, %struct.tar_entry** %13, align 8
  call void @llvm.dbg.declare(metadata %struct.tar_entry** %13, metadata !2735, metadata !631), !dbg !2736
  store %struct.fsys_namenode* %6, %struct.fsys_namenode** %14, align 8
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %14, metadata !2737, metadata !631), !dbg !2738
  call void @llvm.dbg.declare(metadata i8** %15, metadata !2739, metadata !631), !dbg !2740
  call void @llvm.dbg.declare(metadata i64* %16, metadata !2741, metadata !631), !dbg !2742
  call void (i32, i8*, ...) @debug(i32 64, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.124, i32 0, i32 0)), !dbg !2743
  %17 = load %struct.tar_entry*, %struct.tar_entry** %13, align 8, !dbg !2744
  %18 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %17, i32 0, i32 1, !dbg !2745
  %19 = load i32, i32* %18, align 4, !dbg !2745
  switch i32 %19, label %159 [
    i32 53, label %20
    i32 50, label %21
    i32 51, label %89
    i32 52, label %105
    i32 54, label %121
    i32 49, label %129
    i32 48, label %129
  ], !dbg !2746

; <label>:20:                                     ; preds = %7
  br label %172, !dbg !2747

; <label>:21:                                     ; preds = %7
  %22 = load %struct.stat*, %struct.stat** %10, align 8, !dbg !2749
  %23 = getelementptr inbounds %struct.stat, %struct.stat* %22, i32 0, i32 3, !dbg !2751
  %24 = load i32, i32* %23, align 8, !dbg !2751
  %25 = and i32 %24, 61440, !dbg !2752
  %26 = icmp eq i32 %25, 40960, !dbg !2753
  br i1 %26, label %28, label %27, !dbg !2754

; <label>:27:                                     ; preds = %21
  br label %163, !dbg !2755

; <label>:28:                                     ; preds = %21
  %29 = load %struct.stat*, %struct.stat** %10, align 8, !dbg !2756
  %30 = getelementptr inbounds %struct.stat, %struct.stat* %29, i32 0, i32 8, !dbg !2757
  %31 = load i64, i64* %30, align 8, !dbg !2757
  %32 = add nsw i64 %31, 1, !dbg !2758
  %33 = call i8* @m_malloc(i64 %32), !dbg !2759
  store i8* %33, i8** %15, align 8, !dbg !2760
  %34 = load i8*, i8** %9, align 8, !dbg !2761
  %35 = load i8*, i8** %15, align 8, !dbg !2762
  %36 = load %struct.stat*, %struct.stat** %10, align 8, !dbg !2763
  %37 = getelementptr inbounds %struct.stat, %struct.stat* %36, i32 0, i32 8, !dbg !2764
  %38 = load i64, i64* %37, align 8, !dbg !2764
  %39 = add nsw i64 %38, 1, !dbg !2765
  %40 = call i64 @readlink(i8* %34, i8* %35, i64 %39) #10, !dbg !2766
  store i64 %40, i64* %16, align 8, !dbg !2767
  %41 = load i64, i64* %16, align 8, !dbg !2768
  %42 = icmp slt i64 %41, 0, !dbg !2770
  br i1 %42, label %43, label %46, !dbg !2771

; <label>:43:                                     ; preds = %28
  %44 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.43, i32 0, i32 0)) #10, !dbg !2772
  %45 = load i8*, i8** %9, align 8, !dbg !2773
  call void (i8*, ...) @ohshite(i8* %44, i8* %45) #11, !dbg !2774
  unreachable, !dbg !2776

; <label>:46:                                     ; preds = %28
  %47 = load i64, i64* %16, align 8, !dbg !2777
  %48 = load %struct.stat*, %struct.stat** %10, align 8, !dbg !2779
  %49 = getelementptr inbounds %struct.stat, %struct.stat* %48, i32 0, i32 8, !dbg !2780
  %50 = load i64, i64* %49, align 8, !dbg !2780
  %51 = icmp sgt i64 %47, %50, !dbg !2781
  br i1 %51, label %52, label %59, !dbg !2782

; <label>:52:                                     ; preds = %46
  %53 = call i8* @gettext(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.44, i32 0, i32 0)) #10, !dbg !2783
  %54 = load i8*, i8** %9, align 8, !dbg !2784
  %55 = load %struct.stat*, %struct.stat** %10, align 8, !dbg !2785
  %56 = getelementptr inbounds %struct.stat, %struct.stat* %55, i32 0, i32 8, !dbg !2786
  %57 = load i64, i64* %56, align 8, !dbg !2786
  %58 = load i64, i64* %16, align 8, !dbg !2787
  call void (i8*, ...) @ohshit(i8* %53, i8* %54, i64 %57, i64 %58) #11, !dbg !2788
  unreachable, !dbg !2790

; <label>:59:                                     ; preds = %46
  %60 = load i64, i64* %16, align 8, !dbg !2791
  %61 = load %struct.stat*, %struct.stat** %10, align 8, !dbg !2793
  %62 = getelementptr inbounds %struct.stat, %struct.stat* %61, i32 0, i32 8, !dbg !2794
  %63 = load i64, i64* %62, align 8, !dbg !2794
  %64 = icmp slt i64 %60, %63, !dbg !2795
  br i1 %64, label %65, label %72, !dbg !2796

; <label>:65:                                     ; preds = %59
  %66 = call i8* @gettext(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.44, i32 0, i32 0)) #10, !dbg !2797
  %67 = load i8*, i8** %9, align 8, !dbg !2798
  %68 = load %struct.stat*, %struct.stat** %10, align 8, !dbg !2799
  %69 = getelementptr inbounds %struct.stat, %struct.stat* %68, i32 0, i32 8, !dbg !2800
  %70 = load i64, i64* %69, align 8, !dbg !2800
  %71 = load i64, i64* %16, align 8, !dbg !2801
  call void (i8*, ...) @warning(i8* %66, i8* %67, i64 %70, i64 %71), !dbg !2802
  br label %72, !dbg !2804

; <label>:72:                                     ; preds = %65, %59
  br label %73

; <label>:73:                                     ; preds = %72
  br label %74

; <label>:74:                                     ; preds = %73
  %75 = load i64, i64* %16, align 8, !dbg !2805
  %76 = load i8*, i8** %15, align 8, !dbg !2806
  %77 = getelementptr inbounds i8, i8* %76, i64 %75, !dbg !2806
  store i8 0, i8* %77, align 1, !dbg !2807
  %78 = load i8*, i8** %15, align 8, !dbg !2808
  %79 = load %struct.tar_entry*, %struct.tar_entry** %13, align 8, !dbg !2810
  %80 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %79, i32 0, i32 3, !dbg !2811
  %81 = load i8*, i8** %80, align 8, !dbg !2811
  %82 = call i32 @strcmp(i8* %78, i8* %81) #12, !dbg !2812
  %83 = icmp eq i32 %82, 0, !dbg !2813
  br i1 %83, label %84, label %86, !dbg !2814

; <label>:84:                                     ; preds = %74
  %85 = load i8*, i8** %15, align 8, !dbg !2815
  call void @free(i8* %85) #10, !dbg !2817
  br label %172, !dbg !2818

; <label>:86:                                     ; preds = %74
  %87 = load i8*, i8** %15, align 8, !dbg !2819
  call void @free(i8* %87) #10, !dbg !2821
  br label %88

; <label>:88:                                     ; preds = %86
  br label %163, !dbg !2822

; <label>:89:                                     ; preds = %7
  %90 = load %struct.stat*, %struct.stat** %10, align 8, !dbg !2823
  %91 = getelementptr inbounds %struct.stat, %struct.stat* %90, i32 0, i32 3, !dbg !2825
  %92 = load i32, i32* %91, align 8, !dbg !2825
  %93 = and i32 %92, 61440, !dbg !2826
  %94 = icmp eq i32 %93, 8192, !dbg !2827
  br i1 %94, label %95, label %104, !dbg !2828

; <label>:95:                                     ; preds = %89
  %96 = load %struct.stat*, %struct.stat** %10, align 8, !dbg !2829
  %97 = getelementptr inbounds %struct.stat, %struct.stat* %96, i32 0, i32 7, !dbg !2831
  %98 = load i64, i64* %97, align 8, !dbg !2831
  %99 = load %struct.tar_entry*, %struct.tar_entry** %13, align 8, !dbg !2832
  %100 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %99, i32 0, i32 6, !dbg !2833
  %101 = load i64, i64* %100, align 8, !dbg !2833
  %102 = icmp eq i64 %98, %101, !dbg !2834
  br i1 %102, label %103, label %104, !dbg !2835

; <label>:103:                                    ; preds = %95
  br label %172, !dbg !2836

; <label>:104:                                    ; preds = %95, %89
  br label %163, !dbg !2837

; <label>:105:                                    ; preds = %7
  %106 = load %struct.stat*, %struct.stat** %10, align 8, !dbg !2838
  %107 = getelementptr inbounds %struct.stat, %struct.stat* %106, i32 0, i32 3, !dbg !2840
  %108 = load i32, i32* %107, align 8, !dbg !2840
  %109 = and i32 %108, 61440, !dbg !2841
  %110 = icmp eq i32 %109, 24576, !dbg !2842
  br i1 %110, label %111, label %120, !dbg !2843

; <label>:111:                                    ; preds = %105
  %112 = load %struct.stat*, %struct.stat** %10, align 8, !dbg !2844
  %113 = getelementptr inbounds %struct.stat, %struct.stat* %112, i32 0, i32 7, !dbg !2846
  %114 = load i64, i64* %113, align 8, !dbg !2846
  %115 = load %struct.tar_entry*, %struct.tar_entry** %13, align 8, !dbg !2847
  %116 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %115, i32 0, i32 6, !dbg !2848
  %117 = load i64, i64* %116, align 8, !dbg !2848
  %118 = icmp eq i64 %114, %117, !dbg !2849
  br i1 %118, label %119, label %120, !dbg !2850

; <label>:119:                                    ; preds = %111
  br label %172, !dbg !2851

; <label>:120:                                    ; preds = %111, %105
  br label %163, !dbg !2852

; <label>:121:                                    ; preds = %7
  %122 = load %struct.stat*, %struct.stat** %10, align 8, !dbg !2853
  %123 = getelementptr inbounds %struct.stat, %struct.stat* %122, i32 0, i32 3, !dbg !2855
  %124 = load i32, i32* %123, align 8, !dbg !2855
  %125 = and i32 %124, 61440, !dbg !2856
  %126 = icmp eq i32 %125, 4096, !dbg !2857
  br i1 %126, label %127, label %128, !dbg !2858

; <label>:127:                                    ; preds = %121
  br label %172, !dbg !2859

; <label>:128:                                    ; preds = %121
  br label %163, !dbg !2860

; <label>:129:                                    ; preds = %7, %7
  %130 = load %struct.fsys_namenode*, %struct.fsys_namenode** %14, align 8, !dbg !2861
  %131 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %130, i32 0, i32 6, !dbg !2863
  %132 = load i32, i32* %131, align 8, !dbg !2863
  %133 = and i32 %132, 1, !dbg !2864
  %134 = icmp ne i32 %133, 0, !dbg !2864
  br i1 %134, label %150, label %135, !dbg !2865

; <label>:135:                                    ; preds = %129
  %136 = load %struct.stat*, %struct.stat** %10, align 8, !dbg !2866
  %137 = getelementptr inbounds %struct.stat, %struct.stat* %136, i32 0, i32 3, !dbg !2867
  %138 = load i32, i32* %137, align 8, !dbg !2867
  %139 = and i32 %138, 61440, !dbg !2868
  %140 = icmp eq i32 %139, 32768, !dbg !2869
  br i1 %140, label %141, label %149, !dbg !2870

; <label>:141:                                    ; preds = %135
  %142 = load %struct.tar_entry*, %struct.tar_entry** %13, align 8, !dbg !2871
  %143 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %142, i32 0, i32 4, !dbg !2873
  %144 = load i64, i64* %143, align 8, !dbg !2873
  %145 = load %struct.stat*, %struct.stat** %10, align 8, !dbg !2874
  %146 = getelementptr inbounds %struct.stat, %struct.stat* %145, i32 0, i32 8, !dbg !2875
  %147 = load i64, i64* %146, align 8, !dbg !2875
  %148 = icmp eq i64 %144, %147, !dbg !2876
  br i1 %148, label %150, label %149, !dbg !2877

; <label>:149:                                    ; preds = %141, %135
  br label %163, !dbg !2879

; <label>:150:                                    ; preds = %141, %129
  %151 = load i8*, i8** %11, align 8, !dbg !2880
  %152 = load %struct.fsys_namenode*, %struct.fsys_namenode** %14, align 8, !dbg !2882
  %153 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %152, i32 0, i32 8, !dbg !2883
  %154 = load i8*, i8** %153, align 8, !dbg !2883
  %155 = call i32 @strcmp(i8* %151, i8* %154) #12, !dbg !2884
  %156 = icmp eq i32 %155, 0, !dbg !2885
  br i1 %156, label %157, label %158, !dbg !2886

; <label>:157:                                    ; preds = %150
  br label %172, !dbg !2887

; <label>:158:                                    ; preds = %150
  br label %163, !dbg !2888

; <label>:159:                                    ; preds = %7
  %160 = load %struct.tar_entry*, %struct.tar_entry** %13, align 8, !dbg !2889
  %161 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %160, i32 0, i32 1, !dbg !2890
  %162 = load i32, i32* %161, align 4, !dbg !2890
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.59, i32 0, i32 0), i32 591, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.tarobject_matches, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.123, i32 0, i32 0), i32 %162) #11, !dbg !2891
  unreachable, !dbg !2891

; <label>:163:                                    ; preds = %158, %149, %128, %120, %104, %88, %27
  %164 = call i8* @gettext(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.125, i32 0, i32 0)) #10, !dbg !2892
  %165 = load %struct.fsys_namenode*, %struct.fsys_namenode** %14, align 8, !dbg !2893
  %166 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %165, i32 0, i32 1, !dbg !2894
  %167 = load i8*, i8** %166, align 8, !dbg !2894
  %168 = load %struct.tarcontext*, %struct.tarcontext** %8, align 8, !dbg !2895
  %169 = getelementptr inbounds %struct.tarcontext, %struct.tarcontext* %168, i32 0, i32 1, !dbg !2896
  %170 = load %struct.pkginfo*, %struct.pkginfo** %169, align 8, !dbg !2896
  %171 = call i8* @pkg_name(%struct.pkginfo* %170, i32 1), !dbg !2897
  call void (i32, i8*, ...) @forcibleerr(i32 131072, i8* %164, i8* %167, i8* %171), !dbg !2898
  br label %172, !dbg !2899

; <label>:172:                                    ; preds = %163, %157, %127, %119, %103, %84, %20
  ret void, !dbg !2900
}

; Function Attrs: nounwind uwtable
define internal void @tarobject_set_perms(%struct.tar_entry*, i8*, %struct.file_stat*) #0 !dbg !2902 {
  %4 = alloca %struct.tar_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.file_stat*, align 8
  %7 = alloca i32, align 4
  store %struct.tar_entry* %0, %struct.tar_entry** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.tar_entry** %4, metadata !2905, metadata !631), !dbg !2906
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2907, metadata !631), !dbg !2908
  store %struct.file_stat* %2, %struct.file_stat** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.file_stat** %6, metadata !2909, metadata !631), !dbg !2910
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2911, metadata !631), !dbg !2912
  %8 = load %struct.tar_entry*, %struct.tar_entry** %4, align 8, !dbg !2913
  %9 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %8, i32 0, i32 1, !dbg !2915
  %10 = load i32, i32* %9, align 4, !dbg !2915
  %11 = icmp eq i32 %10, 48, !dbg !2916
  br i1 %11, label %12, label %13, !dbg !2917

; <label>:12:                                     ; preds = %3
  br label %63, !dbg !2918

; <label>:13:                                     ; preds = %3
  %14 = load %struct.tar_entry*, %struct.tar_entry** %4, align 8, !dbg !2919
  %15 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %14, i32 0, i32 1, !dbg !2921
  %16 = load i32, i32* %15, align 4, !dbg !2921
  %17 = icmp eq i32 %16, 50, !dbg !2922
  br i1 %17, label %18, label %34, !dbg !2923

; <label>:18:                                     ; preds = %13
  %19 = load i8*, i8** %5, align 8, !dbg !2924
  %20 = load %struct.file_stat*, %struct.file_stat** %6, align 8, !dbg !2926
  %21 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %20, i32 0, i32 0, !dbg !2927
  %22 = load i32, i32* %21, align 8, !dbg !2927
  %23 = load %struct.file_stat*, %struct.file_stat** %6, align 8, !dbg !2928
  %24 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %23, i32 0, i32 1, !dbg !2929
  %25 = load i32, i32* %24, align 4, !dbg !2929
  %26 = call i32 @lchown(i8* %19, i32 %22, i32 %25) #10, !dbg !2930
  store i32 %26, i32* %7, align 4, !dbg !2931
  %27 = load i32, i32* %7, align 4, !dbg !2932
  %28 = call i32 @forcible_nonroot_error(i32 %27), !dbg !2934
  %29 = icmp ne i32 %28, 0, !dbg !2934
  br i1 %29, label %30, label %33, !dbg !2935

; <label>:30:                                     ; preds = %18
  %31 = call i8* @gettext(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.126, i32 0, i32 0)) #10, !dbg !2936
  %32 = load i8*, i8** %5, align 8, !dbg !2937
  call void (i8*, ...) @ohshite(i8* %31, i8* %32) #11, !dbg !2938
  unreachable, !dbg !2940

; <label>:33:                                     ; preds = %18
  br label %63, !dbg !2941

; <label>:34:                                     ; preds = %13
  %35 = load i8*, i8** %5, align 8, !dbg !2942
  %36 = load %struct.file_stat*, %struct.file_stat** %6, align 8, !dbg !2944
  %37 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %36, i32 0, i32 0, !dbg !2945
  %38 = load i32, i32* %37, align 8, !dbg !2945
  %39 = load %struct.file_stat*, %struct.file_stat** %6, align 8, !dbg !2946
  %40 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %39, i32 0, i32 1, !dbg !2947
  %41 = load i32, i32* %40, align 4, !dbg !2947
  %42 = call i32 @chown(i8* %35, i32 %38, i32 %41) #10, !dbg !2948
  store i32 %42, i32* %7, align 4, !dbg !2949
  %43 = load i32, i32* %7, align 4, !dbg !2950
  %44 = call i32 @forcible_nonroot_error(i32 %43), !dbg !2952
  %45 = icmp ne i32 %44, 0, !dbg !2952
  br i1 %45, label %46, label %49, !dbg !2953

; <label>:46:                                     ; preds = %34
  %47 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.111, i32 0, i32 0)) #10, !dbg !2954
  %48 = load i8*, i8** %5, align 8, !dbg !2955
  call void (i8*, ...) @ohshite(i8* %47, i8* %48) #11, !dbg !2956
  unreachable, !dbg !2958

; <label>:49:                                     ; preds = %34
  %50 = load i8*, i8** %5, align 8, !dbg !2959
  %51 = load %struct.file_stat*, %struct.file_stat** %6, align 8, !dbg !2960
  %52 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %51, i32 0, i32 2, !dbg !2961
  %53 = load i32, i32* %52, align 8, !dbg !2961
  %54 = and i32 %53, -61441, !dbg !2962
  %55 = call i32 @chmod(i8* %50, i32 %54) #10, !dbg !2963
  store i32 %55, i32* %7, align 4, !dbg !2964
  %56 = load i32, i32* %7, align 4, !dbg !2965
  %57 = call i32 @forcible_nonroot_error(i32 %56), !dbg !2967
  %58 = icmp ne i32 %57, 0, !dbg !2967
  br i1 %58, label %59, label %62, !dbg !2968

; <label>:59:                                     ; preds = %49
  %60 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.112, i32 0, i32 0)) #10, !dbg !2969
  %61 = load i8*, i8** %5, align 8, !dbg !2970
  call void (i8*, ...) @ohshite(i8* %60, i8* %61) #11, !dbg !2971
  unreachable, !dbg !2973

; <label>:62:                                     ; preds = %49
  br label %63

; <label>:63:                                     ; preds = %12, %62, %33
  ret void, !dbg !2974
}

; Function Attrs: nounwind uwtable
define internal void @tarobject_set_mtime(%struct.tar_entry*, i8*) #0 !dbg !2975 {
  %3 = alloca %struct.tar_entry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [2 x %struct.timeval], align 16
  store %struct.tar_entry* %0, %struct.tar_entry** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.tar_entry** %3, metadata !2978, metadata !631), !dbg !2979
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2980, metadata !631), !dbg !2981
  call void @llvm.dbg.declare(metadata [2 x %struct.timeval]* %5, metadata !2982, metadata !631), !dbg !2992
  %6 = load i64, i64* @currenttime, align 8, !dbg !2993
  %7 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %5, i64 0, i64 0, !dbg !2994
  %8 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0, !dbg !2995
  store i64 %6, i64* %8, align 16, !dbg !2996
  %9 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %5, i64 0, i64 0, !dbg !2997
  %10 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1, !dbg !2998
  store i64 0, i64* %10, align 8, !dbg !2999
  %11 = load %struct.tar_entry*, %struct.tar_entry** %3, align 8, !dbg !3000
  %12 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %11, i32 0, i32 5, !dbg !3001
  %13 = load i64, i64* %12, align 8, !dbg !3001
  %14 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %5, i64 0, i64 1, !dbg !3002
  %15 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 0, !dbg !3003
  store i64 %13, i64* %15, align 16, !dbg !3004
  %16 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %5, i64 0, i64 1, !dbg !3005
  %17 = getelementptr inbounds %struct.timeval, %struct.timeval* %16, i32 0, i32 1, !dbg !3006
  store i64 0, i64* %17, align 8, !dbg !3007
  %18 = load %struct.tar_entry*, %struct.tar_entry** %3, align 8, !dbg !3008
  %19 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %18, i32 0, i32 1, !dbg !3010
  %20 = load i32, i32* %19, align 4, !dbg !3010
  %21 = icmp eq i32 %20, 50, !dbg !3011
  br i1 %21, label %22, label %35, !dbg !3012

; <label>:22:                                     ; preds = %2
  %23 = load i8*, i8** %4, align 8, !dbg !3013
  %24 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %5, i32 0, i32 0, !dbg !3016
  %25 = call i32 @lutimes(i8* %23, %struct.timeval* %24) #10, !dbg !3017
  %26 = icmp ne i32 %25, 0, !dbg !3017
  br i1 %26, label %27, label %34, !dbg !3018

; <label>:27:                                     ; preds = %22
  %28 = call i32* @__errno_location() #1, !dbg !3019
  %29 = load i32, i32* %28, align 4, !dbg !3021
  %30 = icmp ne i32 %29, 38, !dbg !3022
  br i1 %30, label %31, label %34, !dbg !3023

; <label>:31:                                     ; preds = %27
  %32 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.127, i32 0, i32 0)) #10, !dbg !3024
  %33 = load i8*, i8** %4, align 8, !dbg !3025
  call void (i8*, ...) @ohshite(i8* %32, i8* %33) #11, !dbg !3026
  unreachable, !dbg !3027

; <label>:34:                                     ; preds = %27, %22
  br label %44, !dbg !3028

; <label>:35:                                     ; preds = %2
  %36 = load i8*, i8** %4, align 8, !dbg !3029
  %37 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %5, i32 0, i32 0, !dbg !3032
  %38 = call i32 @utimes(i8* %36, %struct.timeval* %37) #10, !dbg !3033
  %39 = icmp ne i32 %38, 0, !dbg !3033
  br i1 %39, label %40, label %43, !dbg !3034

; <label>:40:                                     ; preds = %35
  %41 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.127, i32 0, i32 0)) #10, !dbg !3035
  %42 = load i8*, i8** %4, align 8, !dbg !3036
  call void (i8*, ...) @ohshite(i8* %41, i8* %42) #11, !dbg !3037
  unreachable, !dbg !3039

; <label>:43:                                     ; preds = %35
  br label %44

; <label>:44:                                     ; preds = %43, %34
  ret void, !dbg !3040
}

; Function Attrs: nounwind uwtable
define internal void @tarobject_set_se_context(i8*, i8*, i32) #0 !dbg !3041 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3044, metadata !631), !dbg !3045
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3046, metadata !631), !dbg !3047
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3048, metadata !631), !dbg !3049
  %7 = load i8*, i8** %4, align 8, !dbg !3050
  %8 = load i8*, i8** %5, align 8, !dbg !3051
  %9 = load i32, i32* %6, align 4, !dbg !3052
  call void @dpkg_selabel_set_context(i8* %7, i8* %8, i32 %9), !dbg !3053
  ret void, !dbg !3054
}

declare void @varbuf_reset(%struct.varbuf*) #2

declare void @varbuf_grow(%struct.varbuf*, i64) #2

; Function Attrs: nounwind
declare i64 @readlink(i8*, i8*, i64) #4

declare void @warning(i8*, ...) #2

declare void @varbuf_trunc(%struct.varbuf*, i64) #2

; Function Attrs: nounwind
declare i32 @symlink(i8*, i8*) #4

; Function Attrs: nounwind
declare i32 @lchown(i8*, i32, i32) #4

declare i32 @forcible_nonroot_error(i32) #2

; Function Attrs: nounwind
declare i32 @link(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define void @tar_deferred_extract(%struct.fsys_namenode_list*, %struct.pkginfo*) #0 !dbg !3055 {
  %3 = alloca %struct.fsys_namenode_list*, align 8
  %4 = alloca %struct.pkginfo*, align 8
  %5 = alloca %struct.fsys_namenode_list*, align 8
  %6 = alloca %struct.fsys_namenode*, align 8
  %7 = alloca i32, align 4
  store %struct.fsys_namenode_list* %0, %struct.fsys_namenode_list** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode_list** %3, metadata !3058, metadata !631), !dbg !3059
  store %struct.pkginfo* %1, %struct.pkginfo** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %4, metadata !3060, metadata !631), !dbg !3061
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode_list** %5, metadata !3062, metadata !631), !dbg !3063
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %6, metadata !3064, metadata !631), !dbg !3065
  %8 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %3, align 8, !dbg !3066
  %9 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !3067
  call void @tar_writeback_barrier(%struct.fsys_namenode_list* %8, %struct.pkginfo* %9), !dbg !3068
  %10 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %3, align 8, !dbg !3069
  store %struct.fsys_namenode_list* %10, %struct.fsys_namenode_list** %5, align 8, !dbg !3071
  br label %11, !dbg !3072

; <label>:11:                                     ; preds = %106, %2
  %12 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %5, align 8, !dbg !3073
  %13 = icmp ne %struct.fsys_namenode_list* %12, null, !dbg !3076
  br i1 %13, label %14, label %110, !dbg !3076

; <label>:14:                                     ; preds = %11
  %15 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %5, align 8, !dbg !3077
  %16 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %15, i32 0, i32 1, !dbg !3079
  %17 = load %struct.fsys_namenode*, %struct.fsys_namenode** %16, align 8, !dbg !3079
  %18 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %17, i32 0, i32 1, !dbg !3080
  %19 = load i8*, i8** %18, align 8, !dbg !3080
  call void (i32, i8*, ...) @debug(i32 8, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.52, i32 0, i32 0), i8* %19), !dbg !3081
  %20 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %5, align 8, !dbg !3082
  %21 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %20, i32 0, i32 1, !dbg !3084
  %22 = load %struct.fsys_namenode*, %struct.fsys_namenode** %21, align 8, !dbg !3084
  %23 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %22, i32 0, i32 6, !dbg !3085
  %24 = load i32, i32* %23, align 8, !dbg !3085
  %25 = and i32 %24, 256, !dbg !3086
  %26 = icmp ne i32 %25, 0, !dbg !3086
  br i1 %26, label %28, label %27, !dbg !3087

; <label>:27:                                     ; preds = %14
  br label %106, !dbg !3088

; <label>:28:                                     ; preds = %14
  %29 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %5, align 8, !dbg !3089
  %30 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %29, i32 0, i32 1, !dbg !3090
  %31 = load %struct.fsys_namenode*, %struct.fsys_namenode** %30, align 8, !dbg !3090
  %32 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !3091
  %33 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !3092
  %34 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %33, i32 0, i32 10, !dbg !3093
  %35 = call %struct.fsys_namenode* @namenodetouse(%struct.fsys_namenode* %31, %struct.pkginfo* %32, %struct.pkgbin* %34), !dbg !3094
  store %struct.fsys_namenode* %35, %struct.fsys_namenode** %6, align 8, !dbg !3095
  %36 = load %struct.fsys_namenode*, %struct.fsys_namenode** %6, align 8, !dbg !3096
  %37 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %36, i32 0, i32 1, !dbg !3097
  %38 = load i8*, i8** %37, align 8, !dbg !3097
  call void @setupfnamevbs(i8* %38), !dbg !3098
  %39 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %5, align 8, !dbg !3099
  %40 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %39, i32 0, i32 1, !dbg !3101
  %41 = load %struct.fsys_namenode*, %struct.fsys_namenode** %40, align 8, !dbg !3101
  %42 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %41, i32 0, i32 6, !dbg !3102
  %43 = load i32, i32* %42, align 8, !dbg !3102
  %44 = and i32 %43, 128, !dbg !3103
  %45 = icmp ne i32 %44, 0, !dbg !3103
  br i1 %45, label %46, label %75, !dbg !3104

; <label>:46:                                     ; preds = %28
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3105, metadata !631), !dbg !3107
  call void (i32, i8*, ...) @debug(i32 64, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.53, i32 0, i32 0)), !dbg !3108
  %47 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fnamenewvb, i32 0, i32 2), align 8, !dbg !3109
  %48 = call i32 (i8*, i32, ...) @open(i8* %47, i32 1), !dbg !3110
  store i32 %48, i32* %7, align 4, !dbg !3111
  %49 = load i32, i32* %7, align 4, !dbg !3112
  %50 = icmp slt i32 %49, 0, !dbg !3114
  br i1 %50, label %51, label %54, !dbg !3115

; <label>:51:                                     ; preds = %46
  %52 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.54, i32 0, i32 0)) #10, !dbg !3116
  %53 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fnamenewvb, i32 0, i32 2), align 8, !dbg !3117
  call void (i8*, ...) @ohshite(i8* %52, i8* %53) #11, !dbg !3118
  unreachable, !dbg !3120

; <label>:54:                                     ; preds = %46
  %55 = load i32, i32* %7, align 4, !dbg !3121
  %56 = call i32 @fsync(i32 %55), !dbg !3123
  %57 = icmp ne i32 %56, 0, !dbg !3123
  br i1 %57, label %58, label %61, !dbg !3124

; <label>:58:                                     ; preds = %54
  %59 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.55, i32 0, i32 0)) #10, !dbg !3125
  %60 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fnamenewvb, i32 0, i32 2), align 8, !dbg !3126
  call void (i8*, ...) @ohshite(i8* %59, i8* %60) #11, !dbg !3127
  unreachable, !dbg !3129

; <label>:61:                                     ; preds = %54
  %62 = load i32, i32* %7, align 4, !dbg !3130
  %63 = call i32 @close(i32 %62), !dbg !3132
  %64 = icmp ne i32 %63, 0, !dbg !3132
  br i1 %64, label %65, label %68, !dbg !3133

; <label>:65:                                     ; preds = %61
  %66 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.56, i32 0, i32 0)) #10, !dbg !3134
  %67 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fnamenewvb, i32 0, i32 2), align 8, !dbg !3135
  call void (i8*, ...) @ohshite(i8* %66, i8* %67) #11, !dbg !3136
  unreachable, !dbg !3138

; <label>:68:                                     ; preds = %61
  %69 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %5, align 8, !dbg !3139
  %70 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %69, i32 0, i32 1, !dbg !3140
  %71 = load %struct.fsys_namenode*, %struct.fsys_namenode** %70, align 8, !dbg !3140
  %72 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %71, i32 0, i32 6, !dbg !3141
  %73 = load i32, i32* %72, align 8, !dbg !3142
  %74 = and i32 %73, -129, !dbg !3142
  store i32 %74, i32* %72, align 8, !dbg !3142
  br label %75, !dbg !3143

; <label>:75:                                     ; preds = %68, %28
  call void (i32, i8*, ...) @debug(i32 64, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.57, i32 0, i32 0)), !dbg !3144
  %76 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fnamenewvb, i32 0, i32 2), align 8, !dbg !3145
  %77 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fnamevb, i32 0, i32 2), align 8, !dbg !3147
  %78 = call i32 @rename(i8* %76, i8* %77) #10, !dbg !3148
  %79 = icmp ne i32 %78, 0, !dbg !3148
  br i1 %79, label %80, label %87, !dbg !3149

; <label>:80:                                     ; preds = %75
  %81 = call i8* @gettext(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.50, i32 0, i32 0)) #10, !dbg !3150
  %82 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %5, align 8, !dbg !3151
  %83 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %82, i32 0, i32 1, !dbg !3152
  %84 = load %struct.fsys_namenode*, %struct.fsys_namenode** %83, align 8, !dbg !3152
  %85 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %84, i32 0, i32 1, !dbg !3153
  %86 = load i8*, i8** %85, align 8, !dbg !3153
  call void (i8*, ...) @ohshite(i8* %81, i8* %86) #11, !dbg !3154
  unreachable, !dbg !3156

; <label>:87:                                     ; preds = %75
  %88 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %5, align 8, !dbg !3157
  %89 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %88, i32 0, i32 1, !dbg !3158
  %90 = load %struct.fsys_namenode*, %struct.fsys_namenode** %89, align 8, !dbg !3158
  %91 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %90, i32 0, i32 6, !dbg !3159
  %92 = load i32, i32* %91, align 8, !dbg !3160
  %93 = and i32 %92, -257, !dbg !3160
  store i32 %93, i32* %91, align 8, !dbg !3160
  %94 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %5, align 8, !dbg !3161
  %95 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %94, i32 0, i32 1, !dbg !3162
  %96 = load %struct.fsys_namenode*, %struct.fsys_namenode** %95, align 8, !dbg !3162
  %97 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %96, i32 0, i32 6, !dbg !3163
  %98 = load i32, i32* %97, align 8, !dbg !3164
  %99 = or i32 %98, 64, !dbg !3164
  store i32 %99, i32* %97, align 8, !dbg !3164
  %100 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %5, align 8, !dbg !3165
  %101 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %100, i32 0, i32 1, !dbg !3166
  %102 = load %struct.fsys_namenode*, %struct.fsys_namenode** %101, align 8, !dbg !3166
  %103 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %102, i32 0, i32 6, !dbg !3167
  %104 = load i32, i32* %103, align 8, !dbg !3168
  %105 = or i32 %104, 16, !dbg !3168
  store i32 %105, i32* %103, align 8, !dbg !3168
  call void (i32, i8*, ...) @debug(i32 64, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.58, i32 0, i32 0)), !dbg !3169
  br label %106, !dbg !3170

; <label>:106:                                    ; preds = %87, %27
  %107 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %5, align 8, !dbg !3171
  %108 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %107, i32 0, i32 0, !dbg !3173
  %109 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %108, align 8, !dbg !3173
  store %struct.fsys_namenode_list* %109, %struct.fsys_namenode_list** %5, align 8, !dbg !3174
  br label %11, !dbg !3175, !llvm.loop !3176

; <label>:110:                                    ; preds = %11
  ret void, !dbg !3178
}

; Function Attrs: nounwind uwtable
define internal void @tar_writeback_barrier(%struct.fsys_namenode_list*, %struct.pkginfo*) #0 !dbg !3179 {
  %3 = alloca %struct.fsys_namenode_list*, align 8
  %4 = alloca %struct.pkginfo*, align 8
  %5 = alloca %struct.fsys_namenode_list*, align 8
  %6 = alloca %struct.fsys_namenode*, align 8
  %7 = alloca i32, align 4
  store %struct.fsys_namenode_list* %0, %struct.fsys_namenode_list** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode_list** %3, metadata !3180, metadata !631), !dbg !3181
  store %struct.pkginfo* %1, %struct.pkginfo** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %4, metadata !3182, metadata !631), !dbg !3183
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode_list** %5, metadata !3184, metadata !631), !dbg !3185
  %8 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %3, align 8, !dbg !3186
  store %struct.fsys_namenode_list* %8, %struct.fsys_namenode_list** %5, align 8, !dbg !3188
  br label %9, !dbg !3189

; <label>:9:                                      ; preds = %49, %2
  %10 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %5, align 8, !dbg !3190
  %11 = icmp ne %struct.fsys_namenode_list* %10, null, !dbg !3193
  br i1 %11, label %12, label %53, !dbg !3193

; <label>:12:                                     ; preds = %9
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %6, metadata !3194, metadata !631), !dbg !3196
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3197, metadata !631), !dbg !3198
  %13 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %5, align 8, !dbg !3199
  %14 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %13, i32 0, i32 1, !dbg !3201
  %15 = load %struct.fsys_namenode*, %struct.fsys_namenode** %14, align 8, !dbg !3201
  %16 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %15, i32 0, i32 6, !dbg !3202
  %17 = load i32, i32* %16, align 8, !dbg !3202
  %18 = and i32 %17, 128, !dbg !3203
  %19 = icmp ne i32 %18, 0, !dbg !3203
  br i1 %19, label %21, label %20, !dbg !3204

; <label>:20:                                     ; preds = %12
  br label %49, !dbg !3205

; <label>:21:                                     ; preds = %12
  %22 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %5, align 8, !dbg !3206
  %23 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %22, i32 0, i32 1, !dbg !3207
  %24 = load %struct.fsys_namenode*, %struct.fsys_namenode** %23, align 8, !dbg !3207
  %25 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !3208
  %26 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !3209
  %27 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %26, i32 0, i32 10, !dbg !3210
  %28 = call %struct.fsys_namenode* @namenodetouse(%struct.fsys_namenode* %24, %struct.pkginfo* %25, %struct.pkgbin* %27), !dbg !3211
  store %struct.fsys_namenode* %28, %struct.fsys_namenode** %6, align 8, !dbg !3212
  %29 = load %struct.fsys_namenode*, %struct.fsys_namenode** %6, align 8, !dbg !3213
  %30 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %29, i32 0, i32 1, !dbg !3214
  %31 = load i8*, i8** %30, align 8, !dbg !3214
  call void @setupfnamevbs(i8* %31), !dbg !3215
  %32 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fnamenewvb, i32 0, i32 2), align 8, !dbg !3216
  %33 = call i32 (i8*, i32, ...) @open(i8* %32, i32 1), !dbg !3217
  store i32 %33, i32* %7, align 4, !dbg !3218
  %34 = load i32, i32* %7, align 4, !dbg !3219
  %35 = icmp slt i32 %34, 0, !dbg !3221
  br i1 %35, label %36, label %39, !dbg !3222

; <label>:36:                                     ; preds = %21
  %37 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.54, i32 0, i32 0)) #10, !dbg !3223
  %38 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fnamenewvb, i32 0, i32 2), align 8, !dbg !3224
  call void (i8*, ...) @ohshite(i8* %37, i8* %38) #11, !dbg !3225
  unreachable, !dbg !3227

; <label>:39:                                     ; preds = %21
  %40 = load i32, i32* %7, align 4, !dbg !3228
  %41 = call i32 @sync_file_range(i32 %40, i64 0, i64 0, i32 1), !dbg !3229
  %42 = load i32, i32* %7, align 4, !dbg !3230
  %43 = call i32 @close(i32 %42), !dbg !3232
  %44 = icmp ne i32 %43, 0, !dbg !3232
  br i1 %44, label %45, label %48, !dbg !3233

; <label>:45:                                     ; preds = %39
  %46 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.56, i32 0, i32 0)) #10, !dbg !3234
  %47 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fnamenewvb, i32 0, i32 2), align 8, !dbg !3235
  call void (i8*, ...) @ohshite(i8* %46, i8* %47) #11, !dbg !3236
  unreachable, !dbg !3238

; <label>:48:                                     ; preds = %39
  br label %49, !dbg !3239

; <label>:49:                                     ; preds = %48, %20
  %50 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %5, align 8, !dbg !3240
  %51 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %50, i32 0, i32 0, !dbg !3242
  %52 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %51, align 8, !dbg !3242
  store %struct.fsys_namenode_list* %52, %struct.fsys_namenode_list** %5, align 8, !dbg !3243
  br label %9, !dbg !3244, !llvm.loop !3245

; <label>:53:                                     ; preds = %9
  ret void, !dbg !3247
}

declare i32 @open(i8*, i32, ...) #2

declare i32 @fsync(i32) #2

declare i32 @close(i32) #2

; Function Attrs: nounwind uwtable
define void @enqueue_deconfigure(%struct.pkginfo*, %struct.pkginfo*) #0 !dbg !3248 {
  %3 = alloca %struct.pkginfo*, align 8
  %4 = alloca %struct.pkginfo*, align 8
  %5 = alloca %struct.pkg_deconf_list*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %3, metadata !3251, metadata !631), !dbg !3252
  store %struct.pkginfo* %1, %struct.pkginfo** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %4, metadata !3253, metadata !631), !dbg !3254
  call void @llvm.dbg.declare(metadata %struct.pkg_deconf_list** %5, metadata !3255, metadata !631), !dbg !3256
  %6 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !3257
  call void @ensure_package_clientdata(%struct.pkginfo* %6), !dbg !3258
  %7 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !3259
  %8 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %7, i32 0, i32 11, !dbg !3260
  %9 = load %struct.perpackagestate*, %struct.perpackagestate** %8, align 8, !dbg !3260
  %10 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %9, i32 0, i32 0, !dbg !3261
  store i32 3, i32* %10, align 8, !dbg !3262
  %11 = call i8* @m_malloc(i64 24), !dbg !3263
  %12 = bitcast i8* %11 to %struct.pkg_deconf_list*, !dbg !3263
  store %struct.pkg_deconf_list* %12, %struct.pkg_deconf_list** %5, align 8, !dbg !3264
  %13 = load %struct.pkg_deconf_list*, %struct.pkg_deconf_list** @deconfigure, align 8, !dbg !3265
  %14 = load %struct.pkg_deconf_list*, %struct.pkg_deconf_list** %5, align 8, !dbg !3266
  %15 = getelementptr inbounds %struct.pkg_deconf_list, %struct.pkg_deconf_list* %14, i32 0, i32 0, !dbg !3267
  store %struct.pkg_deconf_list* %13, %struct.pkg_deconf_list** %15, align 8, !dbg !3268
  %16 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !3269
  %17 = load %struct.pkg_deconf_list*, %struct.pkg_deconf_list** %5, align 8, !dbg !3270
  %18 = getelementptr inbounds %struct.pkg_deconf_list, %struct.pkg_deconf_list* %17, i32 0, i32 1, !dbg !3271
  store %struct.pkginfo* %16, %struct.pkginfo** %18, align 8, !dbg !3272
  %19 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !3273
  %20 = load %struct.pkg_deconf_list*, %struct.pkg_deconf_list** %5, align 8, !dbg !3274
  %21 = getelementptr inbounds %struct.pkg_deconf_list, %struct.pkg_deconf_list* %20, i32 0, i32 2, !dbg !3275
  store %struct.pkginfo* %19, %struct.pkginfo** %21, align 8, !dbg !3276
  %22 = load %struct.pkg_deconf_list*, %struct.pkg_deconf_list** %5, align 8, !dbg !3277
  store %struct.pkg_deconf_list* %22, %struct.pkg_deconf_list** @deconfigure, align 8, !dbg !3278
  ret void, !dbg !3279
}

declare i8* @m_malloc(i64) #2

; Function Attrs: nounwind uwtable
define void @clear_deconfigure_queue() #0 !dbg !3280 {
  %1 = alloca %struct.pkg_deconf_list*, align 8
  %2 = alloca %struct.pkg_deconf_list*, align 8
  call void @llvm.dbg.declare(metadata %struct.pkg_deconf_list** %1, metadata !3283, metadata !631), !dbg !3284
  call void @llvm.dbg.declare(metadata %struct.pkg_deconf_list** %2, metadata !3285, metadata !631), !dbg !3286
  %3 = load %struct.pkg_deconf_list*, %struct.pkg_deconf_list** @deconfigure, align 8, !dbg !3287
  store %struct.pkg_deconf_list* %3, %struct.pkg_deconf_list** %1, align 8, !dbg !3289
  br label %4, !dbg !3290

; <label>:4:                                      ; preds = %13, %0
  %5 = load %struct.pkg_deconf_list*, %struct.pkg_deconf_list** %1, align 8, !dbg !3291
  %6 = icmp ne %struct.pkg_deconf_list* %5, null, !dbg !3294
  br i1 %6, label %7, label %15, !dbg !3294

; <label>:7:                                      ; preds = %4
  %8 = load %struct.pkg_deconf_list*, %struct.pkg_deconf_list** %1, align 8, !dbg !3295
  %9 = getelementptr inbounds %struct.pkg_deconf_list, %struct.pkg_deconf_list* %8, i32 0, i32 0, !dbg !3297
  %10 = load %struct.pkg_deconf_list*, %struct.pkg_deconf_list** %9, align 8, !dbg !3297
  store %struct.pkg_deconf_list* %10, %struct.pkg_deconf_list** %2, align 8, !dbg !3298
  %11 = load %struct.pkg_deconf_list*, %struct.pkg_deconf_list** %1, align 8, !dbg !3299
  %12 = bitcast %struct.pkg_deconf_list* %11 to i8*, !dbg !3299
  call void @free(i8* %12) #10, !dbg !3300
  br label %13, !dbg !3301

; <label>:13:                                     ; preds = %7
  %14 = load %struct.pkg_deconf_list*, %struct.pkg_deconf_list** %2, align 8, !dbg !3302
  store %struct.pkg_deconf_list* %14, %struct.pkg_deconf_list** %1, align 8, !dbg !3304
  br label %4, !dbg !3305, !llvm.loop !3306

; <label>:15:                                     ; preds = %4
  store %struct.pkg_deconf_list* null, %struct.pkg_deconf_list** @deconfigure, align 8, !dbg !3308
  ret void, !dbg !3309
}

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: nounwind uwtable
define void @check_breaks(%struct.dependency*, %struct.pkginfo*, i8*) #0 !dbg !3310 {
  %4 = alloca %struct.dependency*, align 8
  %5 = alloca %struct.pkginfo*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.pkginfo*, align 8
  %8 = alloca %struct.varbuf, align 8
  %9 = alloca i32, align 4
  %10 = alloca [512 x i8], align 16
  store %struct.dependency* %0, %struct.dependency** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.dependency** %4, metadata !3313, metadata !631), !dbg !3314
  store %struct.pkginfo* %1, %struct.pkginfo** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %5, metadata !3315, metadata !631), !dbg !3316
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3317, metadata !631), !dbg !3318
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %7, metadata !3319, metadata !631), !dbg !3320
  call void @llvm.dbg.declare(metadata %struct.varbuf* %8, metadata !3321, metadata !631), !dbg !3322
  %11 = bitcast %struct.varbuf* %8 to i8*, !dbg !3322
  call void @llvm.memset.p0i8.i64(i8* %11, i8 0, i64 24, i32 8, i1 false), !dbg !3322
  call void @llvm.dbg.declare(metadata i32* %9, metadata !3323, metadata !631), !dbg !3324
  store %struct.pkginfo* null, %struct.pkginfo** %7, align 8, !dbg !3325
  %12 = load %struct.dependency*, %struct.dependency** %4, align 8, !dbg !3326
  %13 = call zeroext i1 @depisok(%struct.dependency* %12, %struct.varbuf* %8, %struct.pkginfo** %7, %struct.pkginfo** null, i1 zeroext false), !dbg !3328
  br i1 %13, label %14, label %15, !dbg !3329

; <label>:14:                                     ; preds = %3
  call void @varbuf_destroy(%struct.varbuf* %8), !dbg !3330
  br label %108, !dbg !3332

; <label>:15:                                     ; preds = %3
  call void @varbuf_end_str(%struct.varbuf* %8), !dbg !3333
  %16 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !3334
  %17 = icmp ne %struct.pkginfo* %16, null, !dbg !3334
  br i1 %17, label %18, label %68, !dbg !3336

; <label>:18:                                     ; preds = %15
  %19 = load i32, i32* @f_autodeconf, align 4, !dbg !3337
  %20 = icmp ne i32 %19, 0, !dbg !3337
  br i1 %20, label %21, label %68, !dbg !3339

; <label>:21:                                     ; preds = %18
  call void @llvm.dbg.declare(metadata [512 x i8]* %10, metadata !3340, metadata !631), !dbg !3345
  %22 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !3346
  call void @ensure_package_clientdata(%struct.pkginfo* %22), !dbg !3347
  %23 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !3348
  %24 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %23, i32 0, i32 11, !dbg !3350
  %25 = load %struct.perpackagestate*, %struct.perpackagestate** %24, align 8, !dbg !3350
  %26 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %25, i32 0, i32 0, !dbg !3351
  %27 = load i32, i32* %26, align 8, !dbg !3351
  %28 = icmp ne i32 %27, 0, !dbg !3352
  br i1 %28, label %29, label %37, !dbg !3353

; <label>:29:                                     ; preds = %21
  %30 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !3354
  %31 = call i8* @pkg_name(%struct.pkginfo* %30, i32 3), !dbg !3355
  %32 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !3356
  %33 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %32, i32 0, i32 11, !dbg !3357
  %34 = load %struct.perpackagestate*, %struct.perpackagestate** %33, align 8, !dbg !3357
  %35 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %34, i32 0, i32 0, !dbg !3358
  %36 = load i32, i32* %35, align 8, !dbg !3358
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.59, i32 0, i32 0), i32 1289, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.check_breaks, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.60, i32 0, i32 0), i8* %31, i32 %36) #11, !dbg !3359
  unreachable, !dbg !3361

; <label>:37:                                     ; preds = %21
  %38 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i32 0, i32 0, !dbg !3362
  %39 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.61, i32 0, i32 0)) #10, !dbg !3363
  %40 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !3364
  %41 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !3365
  %42 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %41, i32 0, i32 10, !dbg !3366
  %43 = call i8* @pkgbin_name(%struct.pkginfo* %40, %struct.pkgbin* %42, i32 1), !dbg !3367
  %44 = call i32 (i8*, i8*, ...) @sprintf(i8* %38, i8* %39, i8* %43) #10, !dbg !3368
  %45 = call i8* @gettext(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.62, i32 0, i32 0)) #10, !dbg !3370
  %46 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !3371
  %47 = call i8* @pkg_name(%struct.pkginfo* %46, i32 1), !dbg !3372
  %48 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i32 0, i32 0, !dbg !3373
  call void (i8*, ...) @notice(i8* %45, i8* %47, i8* %48), !dbg !3374
  %49 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !3375
  %50 = load %struct.dependency*, %struct.dependency** %4, align 8, !dbg !3376
  %51 = getelementptr inbounds %struct.dependency, %struct.dependency* %50, i32 0, i32 2, !dbg !3377
  %52 = load %struct.deppossi*, %struct.deppossi** %51, align 8, !dbg !3377
  %53 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i32 0, i32 0, !dbg !3378
  %54 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %8, i32 0, i32 2, !dbg !3379
  %55 = load i8*, i8** %54, align 8, !dbg !3379
  %56 = call i32 @try_deconfigure_can(i1 (%struct.deppossi*)* @force_breaks, %struct.pkginfo* %49, %struct.deppossi* %52, i8* %53, %struct.pkginfo* null, i8* %55), !dbg !3380
  store i32 %56, i32* %9, align 4, !dbg !3381
  %57 = load i32, i32* %9, align 4, !dbg !3382
  %58 = icmp eq i32 %57, 1, !dbg !3384
  br i1 %58, label %59, label %67, !dbg !3385

; <label>:59:                                     ; preds = %37
  %60 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.63, i32 0, i32 0)) #10, !dbg !3386
  %61 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !3388
  %62 = call i8* @pkg_name(%struct.pkginfo* %61, i32 1), !dbg !3389
  %63 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !3390
  %64 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !3391
  %65 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %64, i32 0, i32 10, !dbg !3392
  %66 = call i8* @pkgbin_name(%struct.pkginfo* %63, %struct.pkgbin* %65, i32 1), !dbg !3393
  call void (i8*, ...) @notice(i8* %60, i8* %62, i8* %66), !dbg !3394
  br label %67, !dbg !3396

; <label>:67:                                     ; preds = %59, %37
  br label %77, !dbg !3397

; <label>:68:                                     ; preds = %18, %15
  %69 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.64, i32 0, i32 0)) #10, !dbg !3398
  %70 = load i8*, i8** %6, align 8, !dbg !3400
  %71 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !3401
  %72 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !3402
  %73 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %72, i32 0, i32 10, !dbg !3403
  %74 = call i8* @pkgbin_name(%struct.pkginfo* %71, %struct.pkgbin* %73, i32 1), !dbg !3404
  %75 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %8, i32 0, i32 2, !dbg !3405
  %76 = load i8*, i8** %75, align 8, !dbg !3405
  call void (i8*, ...) @notice(i8* %69, i8* %70, i8* %74, i8* %76), !dbg !3406
  store i32 0, i32* %9, align 4, !dbg !3408
  br label %77

; <label>:77:                                     ; preds = %68, %67
  call void @varbuf_destroy(%struct.varbuf* %8), !dbg !3409
  %78 = load i32, i32* %9, align 4, !dbg !3410
  %79 = icmp sgt i32 %78, 0, !dbg !3412
  br i1 %79, label %80, label %81, !dbg !3413

; <label>:80:                                     ; preds = %77
  br label %108, !dbg !3414

; <label>:81:                                     ; preds = %77
  %82 = load %struct.dependency*, %struct.dependency** %4, align 8, !dbg !3416
  %83 = getelementptr inbounds %struct.dependency, %struct.dependency* %82, i32 0, i32 2, !dbg !3418
  %84 = load %struct.deppossi*, %struct.deppossi** %83, align 8, !dbg !3418
  %85 = call zeroext i1 @force_breaks(%struct.deppossi* %84), !dbg !3419
  br i1 %85, label %86, label %88, !dbg !3420

; <label>:86:                                     ; preds = %81
  %87 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.65, i32 0, i32 0)) #10, !dbg !3421
  call void (i8*, ...) @warning(i8* %87), !dbg !3423
  br label %108, !dbg !3425

; <label>:88:                                     ; preds = %81
  %89 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !3426
  %90 = icmp ne %struct.pkginfo* %89, null, !dbg !3426
  br i1 %90, label %91, label %102, !dbg !3428

; <label>:91:                                     ; preds = %88
  %92 = load i32, i32* @f_autodeconf, align 4, !dbg !3429
  %93 = icmp ne i32 %92, 0, !dbg !3429
  br i1 %93, label %102, label %94, !dbg !3431

; <label>:94:                                     ; preds = %91
  %95 = call i8* @gettext(i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.66, i32 0, i32 0)) #10, !dbg !3432
  %96 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !3434
  %97 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !3435
  %98 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %97, i32 0, i32 10, !dbg !3436
  %99 = call i8* @pkgbin_name(%struct.pkginfo* %96, %struct.pkgbin* %98, i32 1), !dbg !3437
  %100 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !3438
  %101 = call i8* @pkg_name(%struct.pkginfo* %100, i32 1), !dbg !3439
  call void (i8*, ...) @ohshit(i8* %95, i8* %99, i8* %101) #11, !dbg !3440
  unreachable, !dbg !3442

; <label>:102:                                    ; preds = %91, %88
  %103 = call i8* @gettext(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.67, i32 0, i32 0)) #10, !dbg !3443
  %104 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !3445
  %105 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !3446
  %106 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %105, i32 0, i32 10, !dbg !3447
  %107 = call i8* @pkgbin_name(%struct.pkginfo* %104, %struct.pkgbin* %106, i32 1), !dbg !3448
  call void (i8*, ...) @ohshit(i8* %103, i8* %107) #11, !dbg !3449
  unreachable, !dbg !3451

; <label>:108:                                    ; preds = %86, %80, %14
  ret void, !dbg !3452
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #6

declare zeroext i1 @depisok(%struct.dependency*, %struct.varbuf*, %struct.pkginfo**, %struct.pkginfo**, i1 zeroext) #2

declare void @varbuf_destroy(%struct.varbuf*) #2

; Function Attrs: noreturn
declare void @do_internerr(i8*, i32, i8*, i8*, ...) #3

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #4

declare i8* @pkgbin_name(%struct.pkginfo*, %struct.pkgbin*, i32) #2

declare void @notice(i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal i32 @try_deconfigure_can(i1 (%struct.deppossi*)*, %struct.pkginfo*, %struct.deppossi*, i8*, %struct.pkginfo*, i8*) #0 !dbg !3453 {
  %7 = alloca i32, align 4
  %8 = alloca i1 (%struct.deppossi*)*, align 8
  %9 = alloca %struct.pkginfo*, align 8
  %10 = alloca %struct.deppossi*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.pkginfo*, align 8
  %13 = alloca i8*, align 8
  store i1 (%struct.deppossi*)* %0, i1 (%struct.deppossi*)** %8, align 8
  call void @llvm.dbg.declare(metadata i1 (%struct.deppossi*)** %8, metadata !3459, metadata !631), !dbg !3460
  store %struct.pkginfo* %1, %struct.pkginfo** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %9, metadata !3461, metadata !631), !dbg !3462
  store %struct.deppossi* %2, %struct.deppossi** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.deppossi** %10, metadata !3463, metadata !631), !dbg !3464
  store i8* %3, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !3465, metadata !631), !dbg !3466
  store %struct.pkginfo* %4, %struct.pkginfo** %12, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %12, metadata !3467, metadata !631), !dbg !3468
  store i8* %5, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !3469, metadata !631), !dbg !3470
  %14 = load i1 (%struct.deppossi*)*, i1 (%struct.deppossi*)** %8, align 8, !dbg !3471
  %15 = icmp ne i1 (%struct.deppossi*)* %14, null, !dbg !3471
  br i1 %15, label %16, label %24, !dbg !3473

; <label>:16:                                     ; preds = %6
  %17 = load i1 (%struct.deppossi*)*, i1 (%struct.deppossi*)** %8, align 8, !dbg !3474
  %18 = load %struct.deppossi*, %struct.deppossi** %10, align 8, !dbg !3476
  %19 = call zeroext i1 %17(%struct.deppossi* %18), !dbg !3474
  br i1 %19, label %20, label %24, !dbg !3477

; <label>:20:                                     ; preds = %16
  %21 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.128, i32 0, i32 0)) #10, !dbg !3478
  %22 = load i8*, i8** %11, align 8, !dbg !3480
  %23 = load i8*, i8** %13, align 8, !dbg !3481
  call void (i8*, ...) @warning(i8* %21, i8* %22, i8* %23), !dbg !3482
  store i32 2, i32* %7, align 4, !dbg !3484
  br label %53, !dbg !3484

; <label>:24:                                     ; preds = %16, %6
  %25 = load i32, i32* @f_autodeconf, align 4, !dbg !3485
  %26 = icmp ne i32 %25, 0, !dbg !3485
  br i1 %26, label %27, label %49, !dbg !3487

; <label>:27:                                     ; preds = %24
  %28 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !3488
  %29 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %28, i32 0, i32 9, !dbg !3491
  %30 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %29, i32 0, i32 1, !dbg !3492
  %31 = load i8, i8* %30, align 8, !dbg !3492
  %32 = trunc i8 %31 to i1, !dbg !3492
  br i1 %32, label %33, label %46, !dbg !3493

; <label>:33:                                     ; preds = %27
  %34 = call zeroext i1 @in_force(i32 1048576), !dbg !3494
  br i1 %34, label %35, label %40, !dbg !3497

; <label>:35:                                     ; preds = %33
  %36 = call i8* @gettext(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.129, i32 0, i32 0)) #10, !dbg !3498
  %37 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !3500
  %38 = call i8* @pkg_name(%struct.pkginfo* %37, i32 1), !dbg !3501
  %39 = load i8*, i8** %11, align 8, !dbg !3502
  call void (i8*, ...) @warning(i8* %36, i8* %38, i8* %39), !dbg !3503
  br label %45, !dbg !3505

; <label>:40:                                     ; preds = %33
  %41 = call i8* @gettext(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.130, i32 0, i32 0)) #10, !dbg !3506
  %42 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !3508
  %43 = call i8* @pkg_name(%struct.pkginfo* %42, i32 1), !dbg !3509
  %44 = load i8*, i8** %11, align 8, !dbg !3510
  call void (i8*, ...) @notice(i8* %41, i8* %43, i8* %44), !dbg !3511
  store i32 0, i32* %7, align 4, !dbg !3513
  br label %53, !dbg !3513

; <label>:45:                                     ; preds = %35
  br label %46, !dbg !3514

; <label>:46:                                     ; preds = %45, %27
  %47 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !3515
  %48 = load %struct.pkginfo*, %struct.pkginfo** %12, align 8, !dbg !3516
  call void @enqueue_deconfigure(%struct.pkginfo* %47, %struct.pkginfo* %48), !dbg !3517
  store i32 1, i32* %7, align 4, !dbg !3518
  br label %53, !dbg !3518

; <label>:49:                                     ; preds = %24
  %50 = call i8* @gettext(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.131, i32 0, i32 0)) #10, !dbg !3519
  %51 = load i8*, i8** %11, align 8, !dbg !3521
  %52 = load i8*, i8** %13, align 8, !dbg !3522
  call void (i8*, ...) @notice(i8* %50, i8* %51, i8* %52), !dbg !3523
  store i32 0, i32* %7, align 4, !dbg !3525
  br label %53, !dbg !3525

; <label>:53:                                     ; preds = %49, %46, %40, %20
  %54 = load i32, i32* %7, align 4, !dbg !3526
  ret i32 %54, !dbg !3526
}

declare zeroext i1 @force_breaks(%struct.deppossi*) #2

; Function Attrs: nounwind uwtable
define void @check_conflict(%struct.dependency*, %struct.pkginfo*, i8*) #0 !dbg !3527 {
  %4 = alloca %struct.dependency*, align 8
  %5 = alloca %struct.pkginfo*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.pkginfo*, align 8
  %8 = alloca %struct.deppossi*, align 8
  %9 = alloca %struct.deppossi, align 8
  %10 = alloca %struct.varbuf, align 8
  %11 = alloca %struct.varbuf, align 8
  %12 = alloca %struct.dependency*, align 8
  store %struct.dependency* %0, %struct.dependency** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.dependency** %4, metadata !3528, metadata !631), !dbg !3529
  store %struct.pkginfo* %1, %struct.pkginfo** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %5, metadata !3530, metadata !631), !dbg !3531
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3532, metadata !631), !dbg !3533
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %7, metadata !3534, metadata !631), !dbg !3535
  call void @llvm.dbg.declare(metadata %struct.deppossi** %8, metadata !3536, metadata !631), !dbg !3537
  call void @llvm.dbg.declare(metadata %struct.deppossi* %9, metadata !3538, metadata !631), !dbg !3539
  call void @llvm.dbg.declare(metadata %struct.varbuf* %10, metadata !3540, metadata !631), !dbg !3541
  %13 = bitcast %struct.varbuf* %10 to i8*, !dbg !3541
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 24, i32 8, i1 false), !dbg !3541
  call void @llvm.dbg.declare(metadata %struct.varbuf* %11, metadata !3542, metadata !631), !dbg !3543
  %14 = bitcast %struct.varbuf* %11 to i8*, !dbg !3543
  call void @llvm.memset.p0i8.i64(i8* %14, i8 0, i64 24, i32 8, i1 false), !dbg !3544
  call void @llvm.dbg.declare(metadata %struct.dependency** %12, metadata !3546, metadata !631), !dbg !3547
  store %struct.pkginfo* null, %struct.pkginfo** %7, align 8, !dbg !3548
  %15 = load %struct.dependency*, %struct.dependency** %4, align 8, !dbg !3549
  %16 = call zeroext i1 @depisok(%struct.dependency* %15, %struct.varbuf* %10, %struct.pkginfo** %7, %struct.pkginfo** null, i1 zeroext false), !dbg !3551
  br i1 %16, label %17, label %18, !dbg !3552

; <label>:17:                                     ; preds = %3
  call void @varbuf_destroy(%struct.varbuf* %10), !dbg !3553
  call void @varbuf_destroy(%struct.varbuf* %11), !dbg !3555
  br label %316, !dbg !3556

; <label>:18:                                     ; preds = %3
  %19 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !3557
  %20 = icmp ne %struct.pkginfo* %19, null, !dbg !3557
  br i1 %20, label %21, label %295, !dbg !3559

; <label>:21:                                     ; preds = %18
  %22 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !3560
  call void @ensure_package_clientdata(%struct.pkginfo* %22), !dbg !3562
  %23 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !3563
  %24 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %23, i32 0, i32 11, !dbg !3565
  %25 = load %struct.perpackagestate*, %struct.perpackagestate** %24, align 8, !dbg !3565
  %26 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %25, i32 0, i32 0, !dbg !3566
  %27 = load i32, i32* %26, align 8, !dbg !3566
  %28 = icmp eq i32 %27, 2, !dbg !3567
  br i1 %28, label %29, label %34, !dbg !3568

; <label>:29:                                     ; preds = %21
  %30 = load %struct.dependency*, %struct.dependency** %4, align 8, !dbg !3569
  %31 = getelementptr inbounds %struct.dependency, %struct.dependency* %30, i32 0, i32 0, !dbg !3571
  %32 = load %struct.pkginfo*, %struct.pkginfo** %31, align 8, !dbg !3571
  store %struct.pkginfo* %32, %struct.pkginfo** %7, align 8, !dbg !3572
  %33 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !3573
  call void @ensure_package_clientdata(%struct.pkginfo* %33), !dbg !3574
  br label %34, !dbg !3575

; <label>:34:                                     ; preds = %29, %21
  %35 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !3576
  %36 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %35, i32 0, i32 10, !dbg !3578
  %37 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %36, i32 0, i32 1, !dbg !3579
  %38 = load i8, i8* %37, align 8, !dbg !3579
  %39 = trunc i8 %38 to i1, !dbg !3579
  br i1 %39, label %40, label %46, !dbg !3580

; <label>:40:                                     ; preds = %34
  %41 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !3581
  %42 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %41, i32 0, i32 9, !dbg !3583
  %43 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %42, i32 0, i32 1, !dbg !3584
  %44 = load i8, i8* %43, align 8, !dbg !3584
  %45 = trunc i8 %44 to i1, !dbg !3584
  br i1 %45, label %73, label %46, !dbg !3585

; <label>:46:                                     ; preds = %40, %34
  %47 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !3586
  %48 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %47, i32 0, i32 2, !dbg !3587
  %49 = load i32, i32* %48, align 8, !dbg !3587
  %50 = icmp ne i32 %49, 1, !dbg !3588
  br i1 %50, label %51, label %56, !dbg !3589

; <label>:51:                                     ; preds = %46
  %52 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !3590
  %53 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %52, i32 0, i32 2, !dbg !3591
  %54 = load i32, i32* %53, align 8, !dbg !3591
  %55 = icmp ne i32 %54, 2, !dbg !3592
  br i1 %55, label %65, label %56, !dbg !3593

; <label>:56:                                     ; preds = %51, %46
  %57 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !3594
  %58 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !3595
  %59 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %58, i32 0, i32 10, !dbg !3596
  %60 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !3597
  %61 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !3598
  %62 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %61, i32 0, i32 9, !dbg !3599
  %63 = call i32 @does_replace(%struct.pkginfo* %57, %struct.pkgbin* %59, %struct.pkginfo* %60, %struct.pkgbin* %62), !dbg !3600
  %64 = icmp ne i32 %63, 0, !dbg !3600
  br i1 %64, label %65, label %294, !dbg !3601

; <label>:65:                                     ; preds = %56, %51
  %66 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !3602
  %67 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %66, i32 0, i32 9, !dbg !3603
  %68 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %67, i32 0, i32 1, !dbg !3604
  %69 = load i8, i8* %68, align 8, !dbg !3604
  %70 = trunc i8 %69 to i1, !dbg !3604
  br i1 %70, label %71, label %73, !dbg !3605

; <label>:71:                                     ; preds = %65
  %72 = call zeroext i1 @in_force(i32 1048576), !dbg !3606
  br i1 %72, label %73, label %294, !dbg !3607

; <label>:73:                                     ; preds = %71, %65, %40
  %74 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !3609
  %75 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %74, i32 0, i32 11, !dbg !3612
  %76 = load %struct.perpackagestate*, %struct.perpackagestate** %75, align 8, !dbg !3612
  %77 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %76, i32 0, i32 0, !dbg !3613
  %78 = load i32, i32* %77, align 8, !dbg !3613
  %79 = icmp ne i32 %78, 0, !dbg !3614
  br i1 %79, label %80, label %95, !dbg !3615

; <label>:80:                                     ; preds = %73
  %81 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !3616
  %82 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %81, i32 0, i32 11, !dbg !3617
  %83 = load %struct.perpackagestate*, %struct.perpackagestate** %82, align 8, !dbg !3617
  %84 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %83, i32 0, i32 0, !dbg !3618
  %85 = load i32, i32* %84, align 8, !dbg !3618
  %86 = icmp ne i32 %85, 3, !dbg !3619
  br i1 %86, label %87, label %95, !dbg !3620

; <label>:87:                                     ; preds = %80
  %88 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !3622
  %89 = call i8* @pkg_name(%struct.pkginfo* %88, i32 3), !dbg !3623
  %90 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !3624
  %91 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %90, i32 0, i32 11, !dbg !3625
  %92 = load %struct.perpackagestate*, %struct.perpackagestate** %91, align 8, !dbg !3625
  %93 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %92, i32 0, i32 0, !dbg !3626
  %94 = load i32, i32* %93, align 8, !dbg !3626
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.59, i32 0, i32 0), i32 1355, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.check_conflict, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.68, i32 0, i32 0), i8* %89, i32 %94) #11, !dbg !3627
  unreachable, !dbg !3629

; <label>:95:                                     ; preds = %80, %73
  %96 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !3630
  %97 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %96, i32 0, i32 11, !dbg !3631
  %98 = load %struct.perpackagestate*, %struct.perpackagestate** %97, align 8, !dbg !3631
  %99 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %98, i32 0, i32 0, !dbg !3632
  store i32 1, i32* %99, align 8, !dbg !3633
  %100 = call i8* @gettext(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.69, i32 0, i32 0)) #10, !dbg !3634
  %101 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !3635
  %102 = call i8* @pkg_name(%struct.pkginfo* %101, i32 1), !dbg !3636
  %103 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !3637
  %104 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !3638
  %105 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %104, i32 0, i32 10, !dbg !3639
  %106 = call i8* @pkgbin_name(%struct.pkginfo* %103, %struct.pkgbin* %105, i32 1), !dbg !3640
  call void (i8*, ...) @notice(i8* %100, i8* %102, i8* %106), !dbg !3641
  %107 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !3642
  %108 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %107, i32 0, i32 4, !dbg !3644
  %109 = load i32, i32* %108, align 8, !dbg !3644
  %110 = icmp eq i32 %109, 7, !dbg !3645
  br i1 %110, label %125, label %111, !dbg !3646

; <label>:111:                                    ; preds = %95
  %112 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !3647
  %113 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %112, i32 0, i32 4, !dbg !3648
  %114 = load i32, i32* %113, align 8, !dbg !3648
  %115 = icmp eq i32 %114, 6, !dbg !3649
  br i1 %115, label %125, label %116, !dbg !3650

; <label>:116:                                    ; preds = %111
  %117 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !3651
  %118 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %117, i32 0, i32 4, !dbg !3652
  %119 = load i32, i32* %118, align 8, !dbg !3652
  %120 = icmp eq i32 %119, 5, !dbg !3653
  br i1 %120, label %125, label %121, !dbg !3654

; <label>:121:                                    ; preds = %116
  %122 = call i8* @gettext(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.70, i32 0, i32 0)) #10, !dbg !3655
  %123 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !3657
  %124 = call i8* @pkg_name(%struct.pkginfo* %123, i32 1), !dbg !3658
  call void (i8*, ...) @notice(i8* %122, i8* %124), !dbg !3659
  store %struct.deppossi* null, %struct.deppossi** %8, align 8, !dbg !3661
  br label %250, !dbg !3662

; <label>:125:                                    ; preds = %116, %111, %95
  %126 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !3663
  %127 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %126, i32 0, i32 0, !dbg !3666
  %128 = load %struct.pkgset*, %struct.pkgset** %127, align 8, !dbg !3666
  %129 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %128, i32 0, i32 3, !dbg !3667
  %130 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %129, i32 0, i32 1, !dbg !3668
  %131 = load %struct.deppossi*, %struct.deppossi** %130, align 8, !dbg !3668
  store %struct.deppossi* %131, %struct.deppossi** %8, align 8, !dbg !3669
  br label %132, !dbg !3670

; <label>:132:                                    ; preds = %165, %125
  %133 = load %struct.deppossi*, %struct.deppossi** %8, align 8, !dbg !3671
  %134 = icmp ne %struct.deppossi* %133, null, !dbg !3673
  br i1 %134, label %135, label %169, !dbg !3673

; <label>:135:                                    ; preds = %132
  %136 = load %struct.deppossi*, %struct.deppossi** %8, align 8, !dbg !3675
  %137 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %136, i32 0, i32 0, !dbg !3678
  %138 = load %struct.dependency*, %struct.dependency** %137, align 8, !dbg !3678
  %139 = getelementptr inbounds %struct.dependency, %struct.dependency* %138, i32 0, i32 3, !dbg !3679
  %140 = load i32, i32* %139, align 8, !dbg !3679
  %141 = icmp ne i32 %140, 2, !dbg !3680
  br i1 %141, label %142, label %150, !dbg !3681

; <label>:142:                                    ; preds = %135
  %143 = load %struct.deppossi*, %struct.deppossi** %8, align 8, !dbg !3682
  %144 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %143, i32 0, i32 0, !dbg !3684
  %145 = load %struct.dependency*, %struct.dependency** %144, align 8, !dbg !3684
  %146 = getelementptr inbounds %struct.dependency, %struct.dependency* %145, i32 0, i32 3, !dbg !3685
  %147 = load i32, i32* %146, align 8, !dbg !3685
  %148 = icmp ne i32 %147, 3, !dbg !3686
  br i1 %148, label %149, label %150, !dbg !3687

; <label>:149:                                    ; preds = %142
  br label %165, !dbg !3688

; <label>:150:                                    ; preds = %142, %135
  %151 = load %struct.deppossi*, %struct.deppossi** %8, align 8, !dbg !3689
  %152 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %151, i32 0, i32 0, !dbg !3691
  %153 = load %struct.dependency*, %struct.dependency** %152, align 8, !dbg !3691
  %154 = call zeroext i1 @depisok(%struct.dependency* %153, %struct.varbuf* %11, %struct.pkginfo** null, %struct.pkginfo** null, i1 zeroext false), !dbg !3692
  br i1 %154, label %155, label %156, !dbg !3693

; <label>:155:                                    ; preds = %150
  br label %165, !dbg !3694

; <label>:156:                                    ; preds = %150
  call void @varbuf_end_str(%struct.varbuf* %11), !dbg !3695
  %157 = load %struct.deppossi*, %struct.deppossi** %8, align 8, !dbg !3696
  %158 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !3698
  %159 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %11, i32 0, i32 2, !dbg !3699
  %160 = load i8*, i8** %159, align 8, !dbg !3699
  %161 = call i32 @try_remove_can(%struct.deppossi* %157, %struct.pkginfo* %158, i8* %160), !dbg !3700
  %162 = icmp ne i32 %161, 0, !dbg !3700
  br i1 %162, label %164, label %163, !dbg !3701

; <label>:163:                                    ; preds = %156
  br label %169, !dbg !3702

; <label>:164:                                    ; preds = %156
  br label %165, !dbg !3703

; <label>:165:                                    ; preds = %164, %155, %149
  %166 = load %struct.deppossi*, %struct.deppossi** %8, align 8, !dbg !3704
  %167 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %166, i32 0, i32 3, !dbg !3705
  %168 = load %struct.deppossi*, %struct.deppossi** %167, align 8, !dbg !3705
  store %struct.deppossi* %168, %struct.deppossi** %8, align 8, !dbg !3706
  br label %132, !dbg !3707, !llvm.loop !3709

; <label>:169:                                    ; preds = %163, %132
  %170 = load %struct.deppossi*, %struct.deppossi** %8, align 8, !dbg !3711
  %171 = icmp ne %struct.deppossi* %170, null, !dbg !3711
  br i1 %171, label %249, label %172, !dbg !3713

; <label>:172:                                    ; preds = %169
  %173 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !3714
  %174 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %173, i32 0, i32 9, !dbg !3717
  %175 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %174, i32 0, i32 0, !dbg !3718
  %176 = load %struct.dependency*, %struct.dependency** %175, align 8, !dbg !3718
  store %struct.dependency* %176, %struct.dependency** %12, align 8, !dbg !3719
  br label %177, !dbg !3720

; <label>:177:                                    ; preds = %243, %172
  %178 = load %struct.dependency*, %struct.dependency** %12, align 8, !dbg !3721
  %179 = icmp ne %struct.dependency* %178, null, !dbg !3723
  br i1 %179, label %180, label %247, !dbg !3723

; <label>:180:                                    ; preds = %177
  %181 = load %struct.dependency*, %struct.dependency** %12, align 8, !dbg !3725
  %182 = getelementptr inbounds %struct.dependency, %struct.dependency* %181, i32 0, i32 3, !dbg !3728
  %183 = load i32, i32* %182, align 8, !dbg !3728
  %184 = icmp ne i32 %183, 6, !dbg !3729
  br i1 %184, label %185, label %186, !dbg !3730

; <label>:185:                                    ; preds = %180
  br label %243, !dbg !3731

; <label>:186:                                    ; preds = %180
  %187 = load %struct.dependency*, %struct.dependency** %12, align 8, !dbg !3733
  %188 = getelementptr inbounds %struct.dependency, %struct.dependency* %187, i32 0, i32 2, !dbg !3735
  %189 = load %struct.deppossi*, %struct.deppossi** %188, align 8, !dbg !3735
  %190 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %189, i32 0, i32 1, !dbg !3736
  %191 = load %struct.pkgset*, %struct.pkgset** %190, align 8, !dbg !3736
  %192 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %191, i32 0, i32 3, !dbg !3737
  %193 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %192, i32 0, i32 1, !dbg !3738
  %194 = load %struct.deppossi*, %struct.deppossi** %193, align 8, !dbg !3738
  store %struct.deppossi* %194, %struct.deppossi** %8, align 8, !dbg !3739
  br label %195, !dbg !3740

; <label>:195:                                    ; preds = %238, %186
  %196 = load %struct.deppossi*, %struct.deppossi** %8, align 8, !dbg !3741
  %197 = icmp ne %struct.deppossi* %196, null, !dbg !3743
  br i1 %197, label %198, label %242, !dbg !3743

; <label>:198:                                    ; preds = %195
  %199 = load %struct.deppossi*, %struct.deppossi** %8, align 8, !dbg !3745
  %200 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %199, i32 0, i32 0, !dbg !3748
  %201 = load %struct.dependency*, %struct.dependency** %200, align 8, !dbg !3748
  %202 = getelementptr inbounds %struct.dependency, %struct.dependency* %201, i32 0, i32 3, !dbg !3749
  %203 = load i32, i32* %202, align 8, !dbg !3749
  %204 = icmp ne i32 %203, 2, !dbg !3750
  br i1 %204, label %205, label %213, !dbg !3751

; <label>:205:                                    ; preds = %198
  %206 = load %struct.deppossi*, %struct.deppossi** %8, align 8, !dbg !3752
  %207 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %206, i32 0, i32 0, !dbg !3754
  %208 = load %struct.dependency*, %struct.dependency** %207, align 8, !dbg !3754
  %209 = getelementptr inbounds %struct.dependency, %struct.dependency* %208, i32 0, i32 3, !dbg !3755
  %210 = load i32, i32* %209, align 8, !dbg !3755
  %211 = icmp ne i32 %210, 3, !dbg !3756
  br i1 %211, label %212, label %213, !dbg !3757

; <label>:212:                                    ; preds = %205
  br label %238, !dbg !3758

; <label>:213:                                    ; preds = %205, %198
  %214 = load %struct.deppossi*, %struct.deppossi** %8, align 8, !dbg !3759
  %215 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %214, i32 0, i32 0, !dbg !3761
  %216 = load %struct.dependency*, %struct.dependency** %215, align 8, !dbg !3761
  %217 = call zeroext i1 @depisok(%struct.dependency* %216, %struct.varbuf* %11, %struct.pkginfo** null, %struct.pkginfo** null, i1 zeroext false), !dbg !3762
  br i1 %217, label %218, label %219, !dbg !3763

; <label>:218:                                    ; preds = %213
  br label %238, !dbg !3764

; <label>:219:                                    ; preds = %213
  call void @varbuf_end_str(%struct.varbuf* %11), !dbg !3765
  %220 = call i8* @gettext(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.71, i32 0, i32 0)) #10, !dbg !3766
  %221 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !3767
  %222 = call i8* @pkg_name(%struct.pkginfo* %221, i32 1), !dbg !3768
  %223 = load %struct.dependency*, %struct.dependency** %12, align 8, !dbg !3769
  %224 = getelementptr inbounds %struct.dependency, %struct.dependency* %223, i32 0, i32 2, !dbg !3770
  %225 = load %struct.deppossi*, %struct.deppossi** %224, align 8, !dbg !3770
  %226 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %225, i32 0, i32 1, !dbg !3771
  %227 = load %struct.pkgset*, %struct.pkgset** %226, align 8, !dbg !3771
  %228 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %227, i32 0, i32 1, !dbg !3772
  %229 = load i8*, i8** %228, align 8, !dbg !3772
  call void (i8*, ...) @notice(i8* %220, i8* %222, i8* %229), !dbg !3773
  %230 = load %struct.deppossi*, %struct.deppossi** %8, align 8, !dbg !3775
  %231 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !3777
  %232 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %11, i32 0, i32 2, !dbg !3778
  %233 = load i8*, i8** %232, align 8, !dbg !3778
  %234 = call i32 @try_remove_can(%struct.deppossi* %230, %struct.pkginfo* %231, i8* %233), !dbg !3779
  %235 = icmp ne i32 %234, 0, !dbg !3779
  br i1 %235, label %237, label %236, !dbg !3780

; <label>:236:                                    ; preds = %219
  br label %248, !dbg !3781

; <label>:237:                                    ; preds = %219
  br label %238, !dbg !3782

; <label>:238:                                    ; preds = %237, %218, %212
  %239 = load %struct.deppossi*, %struct.deppossi** %8, align 8, !dbg !3783
  %240 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %239, i32 0, i32 3, !dbg !3784
  %241 = load %struct.deppossi*, %struct.deppossi** %240, align 8, !dbg !3784
  store %struct.deppossi* %241, %struct.deppossi** %8, align 8, !dbg !3785
  br label %195, !dbg !3786, !llvm.loop !3788

; <label>:242:                                    ; preds = %195
  br label %243, !dbg !3790

; <label>:243:                                    ; preds = %242, %185
  %244 = load %struct.dependency*, %struct.dependency** %12, align 8, !dbg !3791
  %245 = getelementptr inbounds %struct.dependency, %struct.dependency* %244, i32 0, i32 1, !dbg !3792
  %246 = load %struct.dependency*, %struct.dependency** %245, align 8, !dbg !3792
  store %struct.dependency* %246, %struct.dependency** %12, align 8, !dbg !3793
  br label %177, !dbg !3794, !llvm.loop !3796

; <label>:247:                                    ; preds = %177
  br label %248, !dbg !3798

; <label>:248:                                    ; preds = %247, %236
  br label %249, !dbg !3799

; <label>:249:                                    ; preds = %248, %169
  br label %250

; <label>:250:                                    ; preds = %249, %121
  %251 = load %struct.deppossi*, %struct.deppossi** %8, align 8, !dbg !3800
  %252 = icmp ne %struct.deppossi* %251, null, !dbg !3800
  br i1 %252, label %257, label %253, !dbg !3802

; <label>:253:                                    ; preds = %250
  %254 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !3803
  %255 = call zeroext i1 @skip_due_to_hold(%struct.pkginfo* %254), !dbg !3805
  br i1 %255, label %256, label %257, !dbg !3806

; <label>:256:                                    ; preds = %253
  store %struct.deppossi* %9, %struct.deppossi** %8, align 8, !dbg !3807
  br label %257, !dbg !3809

; <label>:257:                                    ; preds = %256, %253, %250
  %258 = load %struct.deppossi*, %struct.deppossi** %8, align 8, !dbg !3810
  %259 = icmp ne %struct.deppossi* %258, null, !dbg !3810
  br i1 %259, label %277, label %260, !dbg !3812

; <label>:260:                                    ; preds = %257
  %261 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !3813
  %262 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %261, i32 0, i32 3, !dbg !3815
  %263 = load i32, i32* %262, align 4, !dbg !3815
  %264 = and i32 %263, 1, !dbg !3816
  %265 = icmp ne i32 %264, 0, !dbg !3816
  br i1 %265, label %266, label %277, !dbg !3817

; <label>:266:                                    ; preds = %260
  %267 = call zeroext i1 @in_force(i32 2097152), !dbg !3818
  br i1 %267, label %268, label %272, !dbg !3821

; <label>:268:                                    ; preds = %266
  %269 = call i8* @gettext(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.72, i32 0, i32 0)) #10, !dbg !3822
  %270 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !3824
  %271 = call i8* @pkg_name(%struct.pkginfo* %270, i32 1), !dbg !3825
  call void (i8*, ...) @notice(i8* %269, i8* %271), !dbg !3826
  br label %276, !dbg !3828

; <label>:272:                                    ; preds = %266
  %273 = call i8* @gettext(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.73, i32 0, i32 0)) #10, !dbg !3829
  %274 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !3831
  %275 = call i8* @pkg_name(%struct.pkginfo* %274, i32 1), !dbg !3832
  call void (i8*, ...) @notice(i8* %273, i8* %275), !dbg !3833
  store %struct.deppossi* %9, %struct.deppossi** %8, align 8, !dbg !3835
  br label %276

; <label>:276:                                    ; preds = %272, %268
  br label %277, !dbg !3836

; <label>:277:                                    ; preds = %276, %260, %257
  %278 = load %struct.deppossi*, %struct.deppossi** %8, align 8, !dbg !3837
  %279 = icmp ne %struct.deppossi* %278, null, !dbg !3837
  br i1 %279, label %289, label %280, !dbg !3839

; <label>:280:                                    ; preds = %277
  %281 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !3840
  call void @enqueue_conflictor(%struct.pkginfo* %281), !dbg !3842
  call void @varbuf_destroy(%struct.varbuf* %10), !dbg !3843
  call void @varbuf_destroy(%struct.varbuf* %11), !dbg !3844
  %282 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.74, i32 0, i32 0)) #10, !dbg !3846
  %283 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !3847
  %284 = call i8* @pkg_name(%struct.pkginfo* %283, i32 1), !dbg !3848
  %285 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !3849
  %286 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !3850
  %287 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %286, i32 0, i32 10, !dbg !3851
  %288 = call i8* @pkgbin_name(%struct.pkginfo* %285, %struct.pkgbin* %287, i32 1), !dbg !3852
  call void (i8*, ...) @notice(i8* %282, i8* %284, i8* %288), !dbg !3853
  br label %316, !dbg !3854

; <label>:289:                                    ; preds = %277
  %290 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !3855
  %291 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %290, i32 0, i32 11, !dbg !3856
  %292 = load %struct.perpackagestate*, %struct.perpackagestate** %291, align 8, !dbg !3856
  %293 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %292, i32 0, i32 0, !dbg !3857
  store i32 0, i32* %293, align 8, !dbg !3858
  br label %294, !dbg !3859

; <label>:294:                                    ; preds = %289, %71, %56
  br label %295, !dbg !3860

; <label>:295:                                    ; preds = %294, %18
  call void @varbuf_end_str(%struct.varbuf* %10), !dbg !3861
  %296 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.64, i32 0, i32 0)) #10, !dbg !3862
  %297 = load i8*, i8** %6, align 8, !dbg !3863
  %298 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !3864
  %299 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !3865
  %300 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %299, i32 0, i32 10, !dbg !3866
  %301 = call i8* @pkgbin_name(%struct.pkginfo* %298, %struct.pkgbin* %300, i32 1), !dbg !3867
  %302 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %10, i32 0, i32 2, !dbg !3868
  %303 = load i8*, i8** %302, align 8, !dbg !3868
  call void (i8*, ...) @notice(i8* %296, i8* %297, i8* %301, i8* %303), !dbg !3869
  %304 = load %struct.dependency*, %struct.dependency** %4, align 8, !dbg !3870
  %305 = getelementptr inbounds %struct.dependency, %struct.dependency* %304, i32 0, i32 2, !dbg !3872
  %306 = load %struct.deppossi*, %struct.deppossi** %305, align 8, !dbg !3872
  %307 = call zeroext i1 @force_conflicts(%struct.deppossi* %306), !dbg !3873
  br i1 %307, label %314, label %308, !dbg !3874

; <label>:308:                                    ; preds = %295
  %309 = call i8* @gettext(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.75, i32 0, i32 0)) #10, !dbg !3875
  %310 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !3876
  %311 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !3877
  %312 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %311, i32 0, i32 10, !dbg !3878
  %313 = call i8* @pkgbin_name(%struct.pkginfo* %310, %struct.pkgbin* %312, i32 1), !dbg !3879
  call void (i8*, ...) @ohshit(i8* %309, i8* %313) #11, !dbg !3880
  unreachable, !dbg !3882

; <label>:314:                                    ; preds = %295
  %315 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.76, i32 0, i32 0)) #10, !dbg !3883
  call void (i8*, ...) @warning(i8* %315), !dbg !3884
  call void @varbuf_destroy(%struct.varbuf* %10), !dbg !3885
  br label %316, !dbg !3886

; <label>:316:                                    ; preds = %314, %280, %17
  ret void, !dbg !3887
}

; Function Attrs: nounwind uwtable
define internal i32 @try_remove_can(%struct.deppossi*, %struct.pkginfo*, i8*) #0 !dbg !3888 {
  %4 = alloca %struct.deppossi*, align 8
  %5 = alloca %struct.pkginfo*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [512 x i8], align 16
  store %struct.deppossi* %0, %struct.deppossi** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.deppossi** %4, metadata !3891, metadata !631), !dbg !3892
  store %struct.pkginfo* %1, %struct.pkginfo** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %5, metadata !3893, metadata !631), !dbg !3894
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3895, metadata !631), !dbg !3896
  call void @llvm.dbg.declare(metadata [512 x i8]* %7, metadata !3897, metadata !631), !dbg !3898
  %8 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i32 0, i32 0, !dbg !3899
  %9 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.132, i32 0, i32 0)) #10, !dbg !3900
  %10 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !3901
  %11 = call i8* @pkg_name(%struct.pkginfo* %10, i32 1), !dbg !3902
  %12 = call i32 (i8*, i8*, ...) @sprintf(i8* %8, i8* %9, i8* %11) #10, !dbg !3904
  %13 = load %struct.deppossi*, %struct.deppossi** %4, align 8, !dbg !3906
  %14 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %13, i32 0, i32 0, !dbg !3907
  %15 = load %struct.dependency*, %struct.dependency** %14, align 8, !dbg !3907
  %16 = getelementptr inbounds %struct.dependency, %struct.dependency* %15, i32 0, i32 0, !dbg !3908
  %17 = load %struct.pkginfo*, %struct.pkginfo** %16, align 8, !dbg !3908
  %18 = load %struct.deppossi*, %struct.deppossi** %4, align 8, !dbg !3909
  %19 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i32 0, i32 0, !dbg !3910
  %20 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !3911
  %21 = load i8*, i8** %6, align 8, !dbg !3912
  %22 = call i32 @try_deconfigure_can(i1 (%struct.deppossi*)* @force_depends, %struct.pkginfo* %17, %struct.deppossi* %18, i8* %19, %struct.pkginfo* %20, i8* %21), !dbg !3913
  ret i32 %22, !dbg !3914
}

declare zeroext i1 @skip_due_to_hold(%struct.pkginfo*) #2

declare void @enqueue_conflictor(%struct.pkginfo*) #2

declare zeroext i1 @force_conflicts(%struct.deppossi*) #2

; Function Attrs: nounwind uwtable
define void @cu_cidir(i32, i8**) #0 !dbg !3915 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3916, metadata !631), !dbg !3917
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !3918, metadata !631), !dbg !3919
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3920, metadata !631), !dbg !3921
  %7 = load i8**, i8*** %4, align 8, !dbg !3922
  %8 = getelementptr inbounds i8*, i8** %7, i64 0, !dbg !3922
  %9 = load i8*, i8** %8, align 8, !dbg !3922
  store i8* %9, i8** %5, align 8, !dbg !3921
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3923, metadata !631), !dbg !3924
  %10 = load i8**, i8*** %4, align 8, !dbg !3925
  %11 = getelementptr inbounds i8*, i8** %10, i64 1, !dbg !3925
  %12 = load i8*, i8** %11, align 8, !dbg !3925
  store i8* %12, i8** %6, align 8, !dbg !3924
  %13 = load i8*, i8** %6, align 8, !dbg !3926
  %14 = getelementptr inbounds i8, i8* %13, i64 -1, !dbg !3926
  store i8 0, i8* %14, align 1, !dbg !3927
  %15 = load i8*, i8** %5, align 8, !dbg !3928
  call void @path_remove_tree(i8* %15), !dbg !3929
  ret void, !dbg !3930
}

; Function Attrs: nounwind uwtable
define void @cu_fileslist(i32, i8**) #0 !dbg !3931 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3932, metadata !631), !dbg !3933
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !3934, metadata !631), !dbg !3935
  call void @tar_pool_release(), !dbg !3936
  ret void, !dbg !3937
}

; Function Attrs: nounwind uwtable
define internal void @tar_pool_release() #0 !dbg !3938 {
  %1 = alloca %struct.obstack*, align 8
  %2 = alloca i8*, align 8
  %3 = load i8, i8* @tar_pool_init, align 1, !dbg !3939
  %4 = trunc i8 %3 to i1, !dbg !3939
  br i1 %4, label %5, label %28, !dbg !3941

; <label>:5:                                      ; preds = %0
  call void @llvm.dbg.declare(metadata %struct.obstack** %1, metadata !3942, metadata !631), !dbg !3945
  store %struct.obstack* @tar_pool, %struct.obstack** %1, align 8, !dbg !3945
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3946, metadata !631), !dbg !3947
  store i8* null, i8** %2, align 8, !dbg !3947
  %6 = load i8*, i8** %2, align 8, !dbg !3948
  %7 = load %struct.obstack*, %struct.obstack** %1, align 8, !dbg !3950
  %8 = getelementptr inbounds %struct.obstack, %struct.obstack* %7, i32 0, i32 1, !dbg !3951
  %9 = load %struct._obstack_chunk*, %struct._obstack_chunk** %8, align 8, !dbg !3951
  %10 = bitcast %struct._obstack_chunk* %9 to i8*, !dbg !3952
  %11 = icmp ugt i8* %6, %10, !dbg !3953
  br i1 %11, label %12, label %24, !dbg !3954

; <label>:12:                                     ; preds = %5
  %13 = load i8*, i8** %2, align 8, !dbg !3955
  %14 = load %struct.obstack*, %struct.obstack** %1, align 8, !dbg !3957
  %15 = getelementptr inbounds %struct.obstack, %struct.obstack* %14, i32 0, i32 4, !dbg !3958
  %16 = load i8*, i8** %15, align 8, !dbg !3958
  %17 = icmp ult i8* %13, %16, !dbg !3959
  br i1 %17, label %18, label %24, !dbg !3960

; <label>:18:                                     ; preds = %12
  %19 = load i8*, i8** %2, align 8, !dbg !3961
  %20 = load %struct.obstack*, %struct.obstack** %1, align 8, !dbg !3963
  %21 = getelementptr inbounds %struct.obstack, %struct.obstack* %20, i32 0, i32 2, !dbg !3964
  store i8* %19, i8** %21, align 8, !dbg !3965
  %22 = load %struct.obstack*, %struct.obstack** %1, align 8, !dbg !3966
  %23 = getelementptr inbounds %struct.obstack, %struct.obstack* %22, i32 0, i32 3, !dbg !3967
  store i8* %19, i8** %23, align 8, !dbg !3968
  br label %27, !dbg !3966

; <label>:24:                                     ; preds = %12, %5
  %25 = load %struct.obstack*, %struct.obstack** %1, align 8, !dbg !3969
  %26 = load i8*, i8** %2, align 8, !dbg !3971
  call void @obstack_free(%struct.obstack* %25, i8* %26), !dbg !3972
  br label %27

; <label>:27:                                     ; preds = %24, %18
  store i8 0, i8* @tar_pool_init, align 1, !dbg !3973
  br label %28, !dbg !3974

; <label>:28:                                     ; preds = %27, %0
  ret void, !dbg !3975
}

; Function Attrs: nounwind uwtable
define i32 @archivefiles(i8**) #0 !dbg !3976 {
  %2 = alloca i8**, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1 x %struct.__jmp_buf_tag], align 16
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.treeroot*, align 8
  %11 = alloca %struct.treenode*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.stat, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !3981, metadata !631), !dbg !3982
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !3983, metadata !631), !dbg !3985
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !3986, metadata !631), !dbg !3989
  store volatile i8** null, i8*** %4, align 8, !dbg !3989
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3990, metadata !631), !dbg !3991
  call void @llvm.dbg.declare(metadata [1 x %struct.__jmp_buf_tag]* %6, metadata !3992, metadata !631), !dbg !4016
  call void @llvm.dbg.declare(metadata i32* %7, metadata !4017, metadata !631), !dbg !4018
  call void @trigproc_install_hooks(), !dbg !4019
  %14 = load i32, i32* @f_noact, align 4, !dbg !4020
  %15 = icmp ne i32 %14, 0, !dbg !4020
  br i1 %15, label %16, label %17, !dbg !4022

; <label>:16:                                     ; preds = %1
  store i32 0, i32* %7, align 4, !dbg !4023
  br label %29, !dbg !4024

; <label>:17:                                     ; preds = %1
  %18 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !4025
  %19 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %18, i32 0, i32 6, !dbg !4027
  %20 = load i32, i32* %19, align 8, !dbg !4027
  %21 = icmp eq i32 %20, 37, !dbg !4028
  br i1 %21, label %22, label %23, !dbg !4029

; <label>:22:                                     ; preds = %17
  store i32 512, i32* %7, align 4, !dbg !4030
  br label %28, !dbg !4031

; <label>:23:                                     ; preds = %17
  %24 = call zeroext i1 @in_force(i32 65536), !dbg !4032
  br i1 %24, label %25, label %26, !dbg !4034

; <label>:25:                                     ; preds = %23
  store i32 3, i32* %7, align 4, !dbg !4035
  br label %27, !dbg !4036

; <label>:26:                                     ; preds = %23
  store i32 4, i32* %7, align 4, !dbg !4037
  br label %27

; <label>:27:                                     ; preds = %26, %25
  br label %28

; <label>:28:                                     ; preds = %27, %22
  br label %29

; <label>:29:                                     ; preds = %28, %16
  %30 = load i32, i32* %7, align 4, !dbg !4038
  %31 = call i32 @modstatdb_open(i32 %30), !dbg !4039
  call void @checkpath(), !dbg !4040
  call void @pkg_infodb_upgrade(), !dbg !4041
  %32 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !4042
  %33 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %32, i32 0, i32 0, !dbg !4043
  %34 = load i8*, i8** %33, align 8, !dbg !4043
  call void (i8*, ...) @log_message(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.77, i32 0, i32 0), i8* %34), !dbg !4044
  %35 = load i32, i32* @f_recursive, align 4, !dbg !4045
  %36 = icmp ne i32 %35, 0, !dbg !4045
  br i1 %36, label %37, label %109, !dbg !4047

; <label>:37:                                     ; preds = %29
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !4048, metadata !631), !dbg !4050
  call void @llvm.dbg.declare(metadata i32* %9, metadata !4051, metadata !631), !dbg !4052
  store i32 0, i32* %9, align 4, !dbg !4052
  %38 = load i8**, i8*** %2, align 8, !dbg !4053
  %39 = load i8*, i8** %38, align 8, !dbg !4055
  %40 = icmp ne i8* %39, null, !dbg !4055
  br i1 %40, label %46, label %41, !dbg !4056

; <label>:41:                                     ; preds = %37
  %42 = call i8* @gettext(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.78, i32 0, i32 0)) #10, !dbg !4057
  %43 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !4058
  %44 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %43, i32 0, i32 0, !dbg !4059
  %45 = load i8*, i8** %44, align 8, !dbg !4059
  call void (i8*, ...) @badusage(i8* %42, i8* %45) #11, !dbg !4060
  unreachable, !dbg !4062

; <label>:46:                                     ; preds = %37
  %47 = load i8**, i8*** %2, align 8, !dbg !4063
  store i8** %47, i8*** %8, align 8, !dbg !4065
  br label %48, !dbg !4066

; <label>:48:                                     ; preds = %95, %46
  %49 = load i8**, i8*** %8, align 8, !dbg !4067
  %50 = load i8*, i8** %49, align 8, !dbg !4070
  %51 = icmp ne i8* %50, null, !dbg !4071
  br i1 %51, label %52, label %98, !dbg !4071

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.declare(metadata %struct.treeroot** %10, metadata !4072, metadata !631), !dbg !4076
  call void @llvm.dbg.declare(metadata %struct.treenode** %11, metadata !4077, metadata !631), !dbg !4080
  %53 = load i8**, i8*** %8, align 8, !dbg !4081
  %54 = load i8*, i8** %53, align 8, !dbg !4082
  %55 = call %struct.treeroot* @treewalk_open(i8* %54, i32 2, %struct.treewalk_funcs* null), !dbg !4083
  store %struct.treeroot* %55, %struct.treeroot** %10, align 8, !dbg !4084
  br label %56, !dbg !4085

; <label>:56:                                     ; preds = %77, %76, %65, %52
  %57 = load %struct.treeroot*, %struct.treeroot** %10, align 8, !dbg !4086
  %58 = call %struct.treenode* @treewalk_next(%struct.treeroot* %57), !dbg !4088
  store %struct.treenode* %58, %struct.treenode** %11, align 8, !dbg !4089
  %59 = icmp ne %struct.treenode* %58, null, !dbg !4090
  br i1 %59, label %60, label %93, !dbg !4090

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.declare(metadata i8** %12, metadata !4091, metadata !631), !dbg !4093
  %61 = load %struct.treenode*, %struct.treenode** %11, align 8, !dbg !4094
  %62 = call i32 @treenode_get_mode(%struct.treenode* %61), !dbg !4096
  %63 = and i32 %62, 61440, !dbg !4097
  %64 = icmp eq i32 %63, 32768, !dbg !4098
  br i1 %64, label %66, label %65, !dbg !4099

; <label>:65:                                     ; preds = %60
  br label %56, !dbg !4100, !llvm.loop !4101

; <label>:66:                                     ; preds = %60
  %67 = load %struct.treenode*, %struct.treenode** %11, align 8, !dbg !4102
  %68 = call i8* @treenode_get_pathname(%struct.treenode* %67), !dbg !4103
  store i8* %68, i8** %12, align 8, !dbg !4104
  %69 = load i8*, i8** %12, align 8, !dbg !4105
  %70 = load i8*, i8** %12, align 8, !dbg !4107
  %71 = call i64 @strlen(i8* %70) #12, !dbg !4108
  %72 = getelementptr inbounds i8, i8* %69, i64 %71, !dbg !4109
  %73 = getelementptr inbounds i8, i8* %72, i64 -4, !dbg !4110
  %74 = call i32 @strcmp(i8* %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.79, i32 0, i32 0)) #12, !dbg !4111
  %75 = icmp ne i32 %74, 0, !dbg !4113
  br i1 %75, label %76, label %77, !dbg !4114

; <label>:76:                                     ; preds = %66
  br label %56, !dbg !4115, !llvm.loop !4101

; <label>:77:                                     ; preds = %66
  %78 = load volatile i8**, i8*** %4, align 8, !dbg !4116
  %79 = bitcast i8** %78 to i8*, !dbg !4116
  %80 = load i32, i32* %9, align 4, !dbg !4117
  %81 = add nsw i32 %80, 2, !dbg !4118
  %82 = sext i32 %81 to i64, !dbg !4119
  %83 = mul i64 8, %82, !dbg !4120
  %84 = call i8* @m_realloc(i8* %79, i64 %83), !dbg !4121
  %85 = bitcast i8* %84 to i8**, !dbg !4121
  store volatile i8** %85, i8*** %4, align 8, !dbg !4122
  %86 = load i8*, i8** %12, align 8, !dbg !4123
  %87 = call i8* @m_strdup(i8* %86), !dbg !4124
  %88 = load i32, i32* %9, align 4, !dbg !4125
  %89 = add nsw i32 %88, 1, !dbg !4125
  store i32 %89, i32* %9, align 4, !dbg !4125
  %90 = sext i32 %88 to i64, !dbg !4126
  %91 = load volatile i8**, i8*** %4, align 8, !dbg !4126
  %92 = getelementptr inbounds i8*, i8** %91, i64 %90, !dbg !4126
  store i8* %87, i8** %92, align 8, !dbg !4127
  br label %56, !dbg !4128, !llvm.loop !4101

; <label>:93:                                     ; preds = %56
  %94 = load %struct.treeroot*, %struct.treeroot** %10, align 8, !dbg !4130
  call void @treewalk_close(%struct.treeroot* %94), !dbg !4131
  br label %95, !dbg !4132

; <label>:95:                                     ; preds = %93
  %96 = load i8**, i8*** %8, align 8, !dbg !4133
  %97 = getelementptr inbounds i8*, i8** %96, i32 1, !dbg !4133
  store i8** %97, i8*** %8, align 8, !dbg !4133
  br label %48, !dbg !4135, !llvm.loop !4136

; <label>:98:                                     ; preds = %48
  %99 = load i32, i32* %9, align 4, !dbg !4138
  %100 = icmp ne i32 %99, 0, !dbg !4138
  br i1 %100, label %103, label %101, !dbg !4140

; <label>:101:                                    ; preds = %98
  %102 = call i8* @gettext(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.80, i32 0, i32 0)) #10, !dbg !4141
  call void (i8*, ...) @ohshit(i8* %102) #11, !dbg !4142
  unreachable, !dbg !4144

; <label>:103:                                    ; preds = %98
  %104 = load i32, i32* %9, align 4, !dbg !4145
  %105 = sext i32 %104 to i64, !dbg !4146
  %106 = load volatile i8**, i8*** %4, align 8, !dbg !4146
  %107 = getelementptr inbounds i8*, i8** %106, i64 %105, !dbg !4146
  store i8* null, i8** %107, align 8, !dbg !4147
  %108 = load volatile i8**, i8*** %4, align 8, !dbg !4148
  store volatile i8** %108, i8*** %3, align 8, !dbg !4149
  br label %120, !dbg !4150

; <label>:109:                                    ; preds = %29
  %110 = load i8**, i8*** %2, align 8, !dbg !4151
  %111 = load i8*, i8** %110, align 8, !dbg !4154
  %112 = icmp ne i8* %111, null, !dbg !4154
  br i1 %112, label %118, label %113, !dbg !4155

; <label>:113:                                    ; preds = %109
  %114 = call i8* @gettext(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.81, i32 0, i32 0)) #10, !dbg !4156
  %115 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !4158
  %116 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %115, i32 0, i32 0, !dbg !4159
  %117 = load i8*, i8** %116, align 8, !dbg !4159
  call void (i8*, ...) @badusage(i8* %114, i8* %117) #11, !dbg !4160
  unreachable, !dbg !4162

; <label>:118:                                    ; preds = %109
  %119 = load i8**, i8*** %2, align 8, !dbg !4163
  store volatile i8** %119, i8*** %3, align 8, !dbg !4164
  br label %120

; <label>:120:                                    ; preds = %118, %103
  store i32 0, i32* %5, align 4, !dbg !4165
  br label %121, !dbg !4167

; <label>:121:                                    ; preds = %156, %120
  %122 = load i32, i32* %5, align 4, !dbg !4168
  %123 = sext i32 %122 to i64, !dbg !4171
  %124 = load volatile i8**, i8*** %3, align 8, !dbg !4171
  %125 = getelementptr inbounds i8*, i8** %124, i64 %123, !dbg !4171
  %126 = load i8*, i8** %125, align 8, !dbg !4171
  %127 = icmp ne i8* %126, null, !dbg !4172
  br i1 %127, label %128, label %159, !dbg !4172

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.declare(metadata %struct.stat* %13, metadata !4173, metadata !631), !dbg !4175
  %129 = load i32, i32* %5, align 4, !dbg !4176
  %130 = sext i32 %129 to i64, !dbg !4178
  %131 = load volatile i8**, i8*** %3, align 8, !dbg !4178
  %132 = getelementptr inbounds i8*, i8** %131, i64 %130, !dbg !4178
  %133 = load i8*, i8** %132, align 8, !dbg !4178
  %134 = call i32 @stat(i8* %133, %struct.stat* %13) #10, !dbg !4179
  %135 = icmp slt i32 %134, 0, !dbg !4180
  br i1 %135, label %136, label %143, !dbg !4181

; <label>:136:                                    ; preds = %128
  %137 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.82, i32 0, i32 0)) #10, !dbg !4182
  %138 = load i32, i32* %5, align 4, !dbg !4183
  %139 = sext i32 %138 to i64, !dbg !4184
  %140 = load volatile i8**, i8*** %3, align 8, !dbg !4184
  %141 = getelementptr inbounds i8*, i8** %140, i64 %139, !dbg !4184
  %142 = load i8*, i8** %141, align 8, !dbg !4184
  call void (i8*, ...) @ohshite(i8* %137, i8* %142) #11, !dbg !4185
  unreachable, !dbg !4187

; <label>:143:                                    ; preds = %128
  %144 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 3, !dbg !4188
  %145 = load i32, i32* %144, align 8, !dbg !4188
  %146 = and i32 %145, 61440, !dbg !4188
  %147 = icmp eq i32 %146, 32768, !dbg !4190
  br i1 %147, label %155, label %148, !dbg !4191

; <label>:148:                                    ; preds = %143
  %149 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.83, i32 0, i32 0)) #10, !dbg !4192
  %150 = load i32, i32* %5, align 4, !dbg !4193
  %151 = sext i32 %150 to i64, !dbg !4194
  %152 = load volatile i8**, i8*** %3, align 8, !dbg !4194
  %153 = getelementptr inbounds i8*, i8** %152, i64 %151, !dbg !4194
  %154 = load i8*, i8** %153, align 8, !dbg !4194
  call void (i8*, ...) @ohshit(i8* %149, i8* %154) #11, !dbg !4195
  unreachable, !dbg !4197

; <label>:155:                                    ; preds = %143
  br label %156, !dbg !4198

; <label>:156:                                    ; preds = %155
  %157 = load i32, i32* %5, align 4, !dbg !4199
  %158 = add nsw i32 %157, 1, !dbg !4199
  store i32 %158, i32* %5, align 4, !dbg !4199
  br label %121, !dbg !4201, !llvm.loop !4202

; <label>:159:                                    ; preds = %121
  %160 = call i64 @time(i64* null) #10, !dbg !4204
  store i64 %160, i64* @currenttime, align 8, !dbg !4205
  call void @varbuf_reset(%struct.varbuf* @fnamevb), !dbg !4206
  call void @varbuf_reset(%struct.varbuf* @fnametmpvb), !dbg !4207
  call void @varbuf_reset(%struct.varbuf* @fnamenewvb), !dbg !4208
  %161 = load i8*, i8** @instdir, align 8, !dbg !4209
  %162 = load i8*, i8** @instdir, align 8, !dbg !4210
  %163 = call i64 @strlen(i8* %162) #12, !dbg !4211
  call void @varbuf_add_buf(%struct.varbuf* @fnamevb, i8* %161, i64 %163), !dbg !4212
  %164 = load i8*, i8** @instdir, align 8, !dbg !4214
  %165 = load i8*, i8** @instdir, align 8, !dbg !4215
  %166 = call i64 @strlen(i8* %165) #12, !dbg !4216
  call void @varbuf_add_buf(%struct.varbuf* @fnametmpvb, i8* %164, i64 %166), !dbg !4217
  %167 = load i8*, i8** @instdir, align 8, !dbg !4218
  %168 = load i8*, i8** @instdir, align 8, !dbg !4219
  %169 = call i64 @strlen(i8* %168) #12, !dbg !4220
  call void @varbuf_add_buf(%struct.varbuf* @fnamenewvb, i8* %167, i64 %169), !dbg !4221
  call void @varbuf_snapshot(%struct.varbuf* @fnamevb, %struct.varbuf_state* @fname_state), !dbg !4222
  call void @ensure_diversions(), !dbg !4223
  call void @ensure_statoverrides(i32 0), !dbg !4224
  store i32 0, i32* %5, align 4, !dbg !4225
  br label %170, !dbg !4227

; <label>:170:                                    ; preds = %205, %159
  %171 = load i32, i32* %5, align 4, !dbg !4228
  %172 = sext i32 %171 to i64, !dbg !4231
  %173 = load volatile i8**, i8*** %3, align 8, !dbg !4231
  %174 = getelementptr inbounds i8*, i8** %173, i64 %172, !dbg !4231
  %175 = load i8*, i8** %174, align 8, !dbg !4231
  %176 = icmp ne i8* %175, null, !dbg !4232
  br i1 %176, label %177, label %208, !dbg !4232

; <label>:177:                                    ; preds = %170
  %178 = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %6, i32 0, i32 0, !dbg !4233
  %179 = call i32 @_setjmp(%struct.__jmp_buf_tag* %178) #13, !dbg !4233
  %180 = icmp ne i32 %179, 0, !dbg !4233
  br i1 %180, label %181, label %186, !dbg !4236

; <label>:181:                                    ; preds = %177
  call void @pop_error_context(i32 2), !dbg !4237
  %182 = load i8, i8* @abort_processing, align 1, !dbg !4239
  %183 = trunc i8 %182 to i1, !dbg !4239
  br i1 %183, label %184, label %185, !dbg !4241

; <label>:184:                                    ; preds = %181
  br label %208, !dbg !4242

; <label>:185:                                    ; preds = %181
  br label %205, !dbg !4243

; <label>:186:                                    ; preds = %177
  %187 = load i32, i32* %5, align 4, !dbg !4244
  %188 = sext i32 %187 to i64, !dbg !4245
  %189 = load volatile i8**, i8*** %3, align 8, !dbg !4245
  %190 = getelementptr inbounds i8*, i8** %189, i64 %188, !dbg !4245
  %191 = load i8*, i8** %190, align 8, !dbg !4245
  call void @push_error_context_jump([1 x %struct.__jmp_buf_tag]* %6, void (i8*, i8*)* @print_error_perarchive, i8* %191), !dbg !4246
  call void @dpkg_selabel_load(), !dbg !4247
  %192 = load i32, i32* %5, align 4, !dbg !4248
  %193 = sext i32 %192 to i64, !dbg !4249
  %194 = load volatile i8**, i8*** %3, align 8, !dbg !4249
  %195 = getelementptr inbounds i8*, i8** %194, i64 %193, !dbg !4249
  %196 = load i8*, i8** %195, align 8, !dbg !4249
  call void @process_archive(i8* %196), !dbg !4250
  %197 = load volatile i32, i32* @onerr_abort, align 4, !dbg !4251
  %198 = add nsw i32 %197, 1, !dbg !4251
  store volatile i32 %198, i32* @onerr_abort, align 4, !dbg !4251
  %199 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4252
  %200 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.84, i32 0, i32 0)) #10, !dbg !4253
  call void @m_output(%struct._IO_FILE* %199, i8* %200), !dbg !4254
  %201 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4256
  %202 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.85, i32 0, i32 0)) #10, !dbg !4257
  call void @m_output(%struct._IO_FILE* %201, i8* %202), !dbg !4258
  %203 = load volatile i32, i32* @onerr_abort, align 4, !dbg !4259
  %204 = add nsw i32 %203, -1, !dbg !4259
  store volatile i32 %204, i32* @onerr_abort, align 4, !dbg !4259
  call void @pop_error_context(i32 1), !dbg !4260
  br label %205, !dbg !4261

; <label>:205:                                    ; preds = %186, %185
  %206 = load i32, i32* %5, align 4, !dbg !4262
  %207 = add nsw i32 %206, 1, !dbg !4262
  store i32 %207, i32* %5, align 4, !dbg !4262
  br label %170, !dbg !4264, !llvm.loop !4265

; <label>:208:                                    ; preds = %184, %170
  call void @dpkg_selabel_close(), !dbg !4267
  %209 = load volatile i8**, i8*** %4, align 8, !dbg !4268
  %210 = bitcast i8** %209 to i8*, !dbg !4268
  call void @free(i8* %210) #10, !dbg !4269
  %211 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !4270
  %212 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %211, i32 0, i32 6, !dbg !4271
  %213 = load i32, i32* %212, align 8, !dbg !4271
  switch i32 %213, label %216 [
    i32 3, label %214
    i32 2, label %214
    i32 4, label %214
    i32 5, label %214
    i32 6, label %214
    i32 1, label %215
    i32 37, label %215
  ], !dbg !4272

; <label>:214:                                    ; preds = %208, %208, %208, %208, %208
  call void @process_queue(), !dbg !4273
  br label %215, !dbg !4273

; <label>:215:                                    ; preds = %208, %208, %214
  br label %220, !dbg !4275

; <label>:216:                                    ; preds = %208
  %217 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !4276
  %218 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %217, i32 0, i32 6, !dbg !4277
  %219 = load i32, i32* %218, align 8, !dbg !4277
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.59, i32 0, i32 0), i32 1586, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.archivefiles, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.86, i32 0, i32 0), i32 %219) #11, !dbg !4278
  unreachable, !dbg !4278

; <label>:220:                                    ; preds = %215
  call void @trigproc_run_deferred(), !dbg !4279
  call void @modstatdb_shutdown(), !dbg !4280
  ret i32 0, !dbg !4281
}

declare void @trigproc_install_hooks() #2

declare i32 @modstatdb_open(i32) #2

declare void @checkpath() #2

declare void @pkg_infodb_upgrade() #2

declare void @log_message(i8*, ...) #2

; Function Attrs: noreturn
declare void @badusage(i8*, ...) #3

declare %struct.treeroot* @treewalk_open(i8*, i32, %struct.treewalk_funcs*) #2

declare %struct.treenode* @treewalk_next(%struct.treeroot*) #2

declare i32 @treenode_get_mode(%struct.treenode*) #2

declare i8* @treenode_get_pathname(%struct.treenode*) #2

declare i8* @m_realloc(i8*, i64) #2

declare i8* @m_strdup(i8*) #2

declare void @treewalk_close(%struct.treeroot*) #2

; Function Attrs: nounwind
declare i64 @time(i64*) #4

declare void @varbuf_snapshot(%struct.varbuf*, %struct.varbuf_state*) #2

declare void @ensure_diversions() #2

declare void @ensure_statoverrides(i32) #2

; Function Attrs: nounwind returns_twice
declare i32 @_setjmp(%struct.__jmp_buf_tag*) #8

declare void @pop_error_context(i32) #2

declare void @push_error_context_jump([1 x %struct.__jmp_buf_tag]*, void (i8*, i8*)*, i8*) #2

declare void @print_error_perarchive(i8*, i8*) #2

declare void @dpkg_selabel_load() #2

declare void @process_archive(i8*) #2

declare void @m_output(%struct._IO_FILE*, i8*) #2

declare void @dpkg_selabel_close() #2

declare void @process_queue() #2

declare void @trigproc_run_deferred() #2

declare void @modstatdb_shutdown() #2

; Function Attrs: nounwind uwtable
define zeroext i1 @wanttoinstall(%struct.pkginfo*) #0 !dbg !4282 {
  %2 = alloca i1, align 1
  %3 = alloca %struct.pkginfo*, align 8
  %4 = alloca i32, align 4
  store %struct.pkginfo* %0, %struct.pkginfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %3, metadata !4285, metadata !631), !dbg !4286
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4287, metadata !631), !dbg !4288
  %5 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !4289
  %6 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %5, i32 0, i32 2, !dbg !4291
  %7 = load i32, i32* %6, align 8, !dbg !4291
  %8 = icmp ne i32 %7, 1, !dbg !4292
  br i1 %8, label %9, label %31, !dbg !4293

; <label>:9:                                      ; preds = %1
  %10 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !4294
  %11 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %10, i32 0, i32 2, !dbg !4296
  %12 = load i32, i32* %11, align 8, !dbg !4296
  %13 = icmp ne i32 %12, 2, !dbg !4297
  br i1 %13, label %14, label %31, !dbg !4298

; <label>:14:                                     ; preds = %9
  %15 = load i32, i32* @f_alsoselect, align 4, !dbg !4299
  %16 = icmp ne i32 %15, 0, !dbg !4299
  br i1 %16, label %17, label %24, !dbg !4302

; <label>:17:                                     ; preds = %14
  %18 = call i8* @gettext(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.87, i32 0, i32 0)) #10, !dbg !4303
  %19 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !4305
  %20 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !4306
  %21 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %20, i32 0, i32 10, !dbg !4307
  %22 = call i8* @pkgbin_name(%struct.pkginfo* %19, %struct.pkgbin* %21, i32 1), !dbg !4308
  %23 = call i32 (i8*, ...) @printf(i8* %18, i8* %22), !dbg !4309
  store i1 true, i1* %2, align 1, !dbg !4311
  br label %96, !dbg !4311

; <label>:24:                                     ; preds = %14
  %25 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.88, i32 0, i32 0)) #10, !dbg !4312
  %26 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !4314
  %27 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !4315
  %28 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %27, i32 0, i32 10, !dbg !4316
  %29 = call i8* @pkgbin_name(%struct.pkginfo* %26, %struct.pkgbin* %28, i32 1), !dbg !4317
  %30 = call i32 (i8*, ...) @printf(i8* %25, i8* %29), !dbg !4318
  store i1 false, i1* %2, align 1, !dbg !4320
  br label %96, !dbg !4320

; <label>:31:                                     ; preds = %9, %1
  %32 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !4321
  %33 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %32, i32 0, i32 3, !dbg !4323
  %34 = load i32, i32* %33, align 4, !dbg !4323
  %35 = and i32 %34, 1, !dbg !4324
  %36 = icmp ne i32 %35, 0, !dbg !4324
  br i1 %36, label %37, label %38, !dbg !4325

; <label>:37:                                     ; preds = %31
  store i1 true, i1* %2, align 1, !dbg !4326
  br label %96, !dbg !4326

; <label>:38:                                     ; preds = %31
  %39 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !4327
  %40 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %39, i32 0, i32 4, !dbg !4329
  %41 = load i32, i32* %40, align 8, !dbg !4329
  %42 = icmp ult i32 %41, 3, !dbg !4330
  br i1 %42, label %43, label %44, !dbg !4331

; <label>:43:                                     ; preds = %38
  store i1 true, i1* %2, align 1, !dbg !4332
  br label %96, !dbg !4332

; <label>:44:                                     ; preds = %38
  %45 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !4333
  %46 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %45, i32 0, i32 10, !dbg !4334
  %47 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %46, i32 0, i32 11, !dbg !4335
  %48 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !4336
  %49 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %48, i32 0, i32 9, !dbg !4337
  %50 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %49, i32 0, i32 11, !dbg !4338
  %51 = call i32 @dpkg_version_compare(%struct.dpkg_version* %47, %struct.dpkg_version* %50), !dbg !4339
  store i32 %51, i32* %4, align 4, !dbg !4340
  %52 = load i32, i32* %4, align 4, !dbg !4341
  %53 = icmp sgt i32 %52, 0, !dbg !4343
  br i1 %53, label %54, label %55, !dbg !4344

; <label>:54:                                     ; preds = %44
  store i1 true, i1* %2, align 1, !dbg !4345
  br label %96, !dbg !4345

; <label>:55:                                     ; preds = %44
  %56 = load i32, i32* %4, align 4, !dbg !4347
  %57 = icmp eq i32 %56, 0, !dbg !4349
  br i1 %57, label %58, label %70, !dbg !4350

; <label>:58:                                     ; preds = %55
  %59 = load i32, i32* @f_skipsame, align 4, !dbg !4351
  %60 = icmp ne i32 %59, 0, !dbg !4351
  br i1 %60, label %61, label %69, !dbg !4354

; <label>:61:                                     ; preds = %58
  %62 = call i8* @gettext(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.89, i32 0, i32 0)) #10, !dbg !4355
  %63 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !4357
  %64 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %63, i32 0, i32 9, !dbg !4358
  %65 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %64, i32 0, i32 11, !dbg !4359
  %66 = call i8* @versiondescribe(%struct.dpkg_version* %65, i32 1), !dbg !4360
  %67 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !4361
  %68 = call i8* @pkg_name(%struct.pkginfo* %67, i32 1), !dbg !4362
  call void (i8*, ...) @notice(i8* %62, i8* %66, i8* %68), !dbg !4363
  store i1 false, i1* %2, align 1, !dbg !4365
  br label %96, !dbg !4365

; <label>:69:                                     ; preds = %58
  store i1 true, i1* %2, align 1, !dbg !4366
  br label %96, !dbg !4366

; <label>:70:                                     ; preds = %55
  %71 = call zeroext i1 @in_force(i32 16384), !dbg !4368
  br i1 %71, label %72, label %84, !dbg !4371

; <label>:72:                                     ; preds = %70
  %73 = call i8* @gettext(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.90, i32 0, i32 0)) #10, !dbg !4372
  %74 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !4374
  %75 = call i8* @pkg_name(%struct.pkginfo* %74, i32 1), !dbg !4375
  %76 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !4376
  %77 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %76, i32 0, i32 9, !dbg !4377
  %78 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %77, i32 0, i32 11, !dbg !4378
  %79 = call i8* @versiondescribe(%struct.dpkg_version* %78, i32 1), !dbg !4379
  %80 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !4380
  %81 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %80, i32 0, i32 10, !dbg !4381
  %82 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %81, i32 0, i32 11, !dbg !4382
  %83 = call i8* @versiondescribe(%struct.dpkg_version* %82, i32 1), !dbg !4383
  call void (i8*, ...) @warning(i8* %73, i8* %75, i8* %79, i8* %83), !dbg !4384
  store i1 true, i1* %2, align 1, !dbg !4386
  br label %96, !dbg !4386

; <label>:84:                                     ; preds = %70
  %85 = call i8* @gettext(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.91, i32 0, i32 0)) #10, !dbg !4387
  %86 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !4389
  %87 = call i8* @pkg_name(%struct.pkginfo* %86, i32 1), !dbg !4390
  %88 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !4391
  %89 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %88, i32 0, i32 9, !dbg !4392
  %90 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %89, i32 0, i32 11, !dbg !4393
  %91 = call i8* @versiondescribe(%struct.dpkg_version* %90, i32 1), !dbg !4394
  %92 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !4395
  %93 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %92, i32 0, i32 10, !dbg !4396
  %94 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %93, i32 0, i32 11, !dbg !4397
  %95 = call i8* @versiondescribe(%struct.dpkg_version* %94, i32 1), !dbg !4398
  call void (i8*, ...) @notice(i8* %85, i8* %87, i8* %91, i8* %95), !dbg !4399
  store i1 false, i1* %2, align 1, !dbg !4401
  br label %96, !dbg !4401

; <label>:96:                                     ; preds = %84, %72, %69, %61, %54, %43, %37, %24, %17
  %97 = load i1, i1* %2, align 1, !dbg !4402
  ret i1 %97, !dbg !4402
}

declare i32 @dpkg_version_compare(%struct.dpkg_version*, %struct.dpkg_version*) #2

declare i32 @_obstack_begin(%struct.obstack*, i32, i32, i8* (i64)*, void (i8*)*) #2

declare void @_obstack_newchunk(%struct.obstack*, i32) #2

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #5

declare zeroext i1 @versionsatisfied(%struct.pkgbin*, %struct.deppossi*) #2

declare zeroext i1 @archsatisfied(%struct.pkgbin*, %struct.deppossi*) #2

; Function Attrs: nounwind uwtable
define internal void @tar_pool_free(i8*) #0 !dbg !4403 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.obstack*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !4404, metadata !631), !dbg !4405
  call void @llvm.dbg.declare(metadata %struct.obstack** %3, metadata !4406, metadata !631), !dbg !4408
  store %struct.obstack* @tar_pool, %struct.obstack** %3, align 8, !dbg !4408
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4409, metadata !631), !dbg !4410
  %5 = load i8*, i8** %2, align 8, !dbg !4411
  store i8* %5, i8** %4, align 8, !dbg !4410
  %6 = load i8*, i8** %4, align 8, !dbg !4412
  %7 = load %struct.obstack*, %struct.obstack** %3, align 8, !dbg !4414
  %8 = getelementptr inbounds %struct.obstack, %struct.obstack* %7, i32 0, i32 1, !dbg !4415
  %9 = load %struct._obstack_chunk*, %struct._obstack_chunk** %8, align 8, !dbg !4415
  %10 = bitcast %struct._obstack_chunk* %9 to i8*, !dbg !4416
  %11 = icmp ugt i8* %6, %10, !dbg !4417
  br i1 %11, label %12, label %24, !dbg !4418

; <label>:12:                                     ; preds = %1
  %13 = load i8*, i8** %4, align 8, !dbg !4419
  %14 = load %struct.obstack*, %struct.obstack** %3, align 8, !dbg !4421
  %15 = getelementptr inbounds %struct.obstack, %struct.obstack* %14, i32 0, i32 4, !dbg !4422
  %16 = load i8*, i8** %15, align 8, !dbg !4422
  %17 = icmp ult i8* %13, %16, !dbg !4423
  br i1 %17, label %18, label %24, !dbg !4424

; <label>:18:                                     ; preds = %12
  %19 = load i8*, i8** %4, align 8, !dbg !4425
  %20 = load %struct.obstack*, %struct.obstack** %3, align 8, !dbg !4427
  %21 = getelementptr inbounds %struct.obstack, %struct.obstack* %20, i32 0, i32 2, !dbg !4428
  store i8* %19, i8** %21, align 8, !dbg !4429
  %22 = load %struct.obstack*, %struct.obstack** %3, align 8, !dbg !4430
  %23 = getelementptr inbounds %struct.obstack, %struct.obstack* %22, i32 0, i32 3, !dbg !4431
  store i8* %19, i8** %23, align 8, !dbg !4432
  br label %27, !dbg !4430

; <label>:24:                                     ; preds = %12, %1
  %25 = load %struct.obstack*, %struct.obstack** %3, align 8, !dbg !4433
  %26 = load i8*, i8** %4, align 8, !dbg !4435
  call void @obstack_free(%struct.obstack* %25, i8* %26), !dbg !4436
  br label %27

; <label>:27:                                     ; preds = %24, %18
  ret void, !dbg !4437
}

declare void @obstack_free(%struct.obstack*, i8*) #2

declare i64 @buffer_skip_Int(i32, i32, i64, %struct.dpkg_error*) #2

declare i8* @path_quote_filename(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal void @tarobject_skip_padding(%struct.tarcontext*, %struct.tar_entry*) #0 !dbg !4438 {
  %3 = alloca %struct.tarcontext*, align 8
  %4 = alloca %struct.tar_entry*, align 8
  %5 = alloca %struct.dpkg_error, align 8
  %6 = alloca i64, align 8
  store %struct.tarcontext* %0, %struct.tarcontext** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.tarcontext** %3, metadata !4439, metadata !631), !dbg !4440
  store %struct.tar_entry* %1, %struct.tar_entry** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.tar_entry** %4, metadata !4441, metadata !631), !dbg !4442
  call void @llvm.dbg.declare(metadata %struct.dpkg_error* %5, metadata !4443, metadata !631), !dbg !4444
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4445, metadata !631), !dbg !4446
  %7 = load %struct.tar_entry*, %struct.tar_entry** %4, align 8, !dbg !4447
  %8 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %7, i32 0, i32 4, !dbg !4448
  %9 = load i64, i64* %8, align 8, !dbg !4448
  %10 = srem i64 %9, 512, !dbg !4449
  store i64 %10, i64* %6, align 8, !dbg !4450
  %11 = load i64, i64* %6, align 8, !dbg !4451
  %12 = icmp eq i64 %11, 0, !dbg !4453
  br i1 %12, label %13, label %14, !dbg !4454

; <label>:13:                                     ; preds = %2
  br label %29, !dbg !4455

; <label>:14:                                     ; preds = %2
  %15 = load %struct.tarcontext*, %struct.tarcontext** %3, align 8, !dbg !4456
  %16 = getelementptr inbounds %struct.tarcontext, %struct.tarcontext* %15, i32 0, i32 0, !dbg !4458
  %17 = load i32, i32* %16, align 8, !dbg !4458
  %18 = load i64, i64* %6, align 8, !dbg !4459
  %19 = sub i64 512, %18, !dbg !4460
  %20 = call i64 @buffer_skip_Int(i32 %17, i32 0, i64 %19, %struct.dpkg_error* %5), !dbg !4461
  %21 = icmp slt i64 %20, 0, !dbg !4462
  br i1 %21, label %22, label %29, !dbg !4463

; <label>:22:                                     ; preds = %14
  %23 = call i8* @gettext(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.100, i32 0, i32 0)) #10, !dbg !4464
  %24 = load %struct.tar_entry*, %struct.tar_entry** %4, align 8, !dbg !4465
  %25 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %24, i32 0, i32 2, !dbg !4466
  %26 = load i8*, i8** %25, align 8, !dbg !4466
  %27 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %5, i32 0, i32 2, !dbg !4467
  %28 = load i8*, i8** %27, align 8, !dbg !4467
  call void (i8*, ...) @ohshit(i8* %23, i8* %26, i8* %28) #11, !dbg !4468
  unreachable, !dbg !4470

; <label>:29:                                     ; preds = %13, %14
  ret void, !dbg !4471
}

declare i8* @pkg_status_name(%struct.pkginfo*) #2

declare i8* @nfmalloc(i64) #2

declare i64 @buffer_copy_IntPtr(i32, i32, i8*, i32, i8*, i32, i64, %struct.dpkg_error*) #2

declare void @cu_closefd(i32, i8**) #2

declare i32 @fd_allocate_size(i32, i64, i64) #2

declare i64 @buffer_copy_IntInt(i32, i32, i8*, i32, i32, i32, i64, %struct.dpkg_error*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @fd_writeback_init(i32) #9 !dbg !4472 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !4475, metadata !631), !dbg !4476
  %3 = load i32, i32* %2, align 4, !dbg !4477
  %4 = call i32 @sync_file_range(i32 %3, i64 0, i64 0, i32 2), !dbg !4478
  ret void, !dbg !4479
}

; Function Attrs: nounwind
declare i32 @fchown(i32, i32, i32) #4

; Function Attrs: nounwind
declare i32 @fchmod(i32, i32) #4

declare void @pop_cleanup(i32) #2

; Function Attrs: nounwind
declare i32 @mkfifo(i8*, i32) #4

; Function Attrs: nounwind
declare i32 @mknod(i8*, i32, i64) #4

; Function Attrs: nounwind
declare i32 @mkdir(i8*, i32) #4

declare i32 @sync_file_range(i32, i64, i64, i32) #2

; Function Attrs: nounwind
declare i32 @chown(i8*, i32, i32) #4

; Function Attrs: nounwind
declare i32 @chmod(i8*, i32) #4

; Function Attrs: nounwind
declare i32 @lutimes(i8*, %struct.timeval*) #4

; Function Attrs: nounwind
declare i32 @utimes(i8*, %struct.timeval*) #4

declare void @dpkg_selabel_set_context(i8*, i8*, i32) #2

declare zeroext i1 @force_depends(%struct.deppossi*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind returns_twice "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind }
attributes #11 = { noreturn }
attributes #12 = { nounwind readonly }
attributes #13 = { nounwind returns_twice }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!624, !625}
!llvm.ident = !{!626}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !269, globals: !509)
!1 = !DIFile(filename: "[inter]src--archives.o.i", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!2 = !{!3, !15, !26, !35, !43, !47, !57, !67, !73, !81, !86, !91, !104, !120, !126, !132, !140, !161, !192, !197, !203, !213, !258, !264}
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
!126 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_msg_type", file: !127, line: 36, size: 32, align: 32, elements: !128)
!127 = !DIFile(filename: "../lib/dpkg/error.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!128 = !{!129, !130, !131}
!129 = !DIEnumerator(name: "DPKG_MSG_NONE", value: 0)
!130 = !DIEnumerator(name: "DPKG_MSG_WARN", value: 1)
!131 = !DIEnumerator(name: "DPKG_MSG_ERROR", value: 2)
!132 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tar_format", file: !133, line: 40, size: 32, align: 32, elements: !134)
!133 = !DIFile(filename: "../lib/dpkg/tarfn.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!134 = !{!135, !136, !137, !138, !139}
!135 = !DIEnumerator(name: "TAR_FORMAT_UNKNOWN", value: 0)
!136 = !DIEnumerator(name: "TAR_FORMAT_OLD", value: 1)
!137 = !DIEnumerator(name: "TAR_FORMAT_GNU", value: 2)
!138 = !DIEnumerator(name: "TAR_FORMAT_USTAR", value: 3)
!139 = !DIEnumerator(name: "TAR_FORMAT_PAX", value: 4)
!140 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tar_filetype", file: !133, line: 48, size: 32, align: 32, elements: !141)
!141 = !{!142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160}
!142 = !DIEnumerator(name: "TAR_FILETYPE_FILE0", value: 0)
!143 = !DIEnumerator(name: "TAR_FILETYPE_FILE", value: 48)
!144 = !DIEnumerator(name: "TAR_FILETYPE_HARDLINK", value: 49)
!145 = !DIEnumerator(name: "TAR_FILETYPE_SYMLINK", value: 50)
!146 = !DIEnumerator(name: "TAR_FILETYPE_CHARDEV", value: 51)
!147 = !DIEnumerator(name: "TAR_FILETYPE_BLOCKDEV", value: 52)
!148 = !DIEnumerator(name: "TAR_FILETYPE_DIR", value: 53)
!149 = !DIEnumerator(name: "TAR_FILETYPE_FIFO", value: 54)
!150 = !DIEnumerator(name: "TAR_FILETYPE_CONTIG", value: 55)
!151 = !DIEnumerator(name: "TAR_FILETYPE_GNU_LONGLINK", value: 75)
!152 = !DIEnumerator(name: "TAR_FILETYPE_GNU_LONGNAME", value: 76)
!153 = !DIEnumerator(name: "TAR_FILETYPE_GNU_VOLUME", value: 86)
!154 = !DIEnumerator(name: "TAR_FILETYPE_GNU_MULTIVOL", value: 77)
!155 = !DIEnumerator(name: "TAR_FILETYPE_GNU_DUMPDIR", value: 68)
!156 = !DIEnumerator(name: "TAR_FILETYPE_GNU_SPARSE", value: 83)
!157 = !DIEnumerator(name: "TAR_FILETYPE_PAX_GLOBAL", value: 103)
!158 = !DIEnumerator(name: "TAR_FILETYPE_PAX_EXTENDED", value: 120)
!159 = !DIEnumerator(name: "TAR_FILETYPE_SOLARIS_EXTENDED", value: 88)
!160 = !DIEnumerator(name: "TAR_FILETYPE_SOLARIS_ACL", value: 65)
!161 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "force_flags", file: !162, line: 28, size: 32, align: 32, elements: !163)
!162 = !DIFile(filename: "force.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!163 = !{!164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191}
!164 = !DIEnumerator(name: "FORCE_ARCHITECTURE", value: 1)
!165 = !DIEnumerator(name: "FORCE_BAD_PATH", value: 2)
!166 = !DIEnumerator(name: "FORCE_BAD_VERIFY", value: 4)
!167 = !DIEnumerator(name: "FORCE_BAD_VERSION", value: 8)
!168 = !DIEnumerator(name: "FORCE_BREAKS", value: 16)
!169 = !DIEnumerator(name: "FORCE_CONFF_ASK", value: 32)
!170 = !DIEnumerator(name: "FORCE_CONFF_DEF", value: 64)
!171 = !DIEnumerator(name: "FORCE_CONFF_MISS", value: 128)
!172 = !DIEnumerator(name: "FORCE_CONFF_NEW", value: 256)
!173 = !DIEnumerator(name: "FORCE_CONFF_OLD", value: 512)
!174 = !DIEnumerator(name: "FORCE_CONFIGURE_ANY", value: 1024)
!175 = !DIEnumerator(name: "FORCE_CONFLICTS", value: 2048)
!176 = !DIEnumerator(name: "FORCE_DEPENDS", value: 4096)
!177 = !DIEnumerator(name: "FORCE_DEPENDS_VERSION", value: 8192)
!178 = !DIEnumerator(name: "FORCE_DOWNGRADE", value: 16384)
!179 = !DIEnumerator(name: "FORCE_HOLD", value: 32768)
!180 = !DIEnumerator(name: "FORCE_NON_ROOT", value: 65536)
!181 = !DIEnumerator(name: "FORCE_OVERWRITE", value: 131072)
!182 = !DIEnumerator(name: "FORCE_OVERWRITE_DIR", value: 262144)
!183 = !DIEnumerator(name: "FORCE_OVERWRITE_DIVERTED", value: 524288)
!184 = !DIEnumerator(name: "FORCE_REMOVE_ESSENTIAL", value: 1048576)
!185 = !DIEnumerator(name: "FORCE_REMOVE_REINSTREQ", value: 2097152)
!186 = !DIEnumerator(name: "FORCE_SCRIPT_CHROOTLESS", value: 4194304)
!187 = !DIEnumerator(name: "FORCE_UNSAFE_IO", value: 8388608)
!188 = !DIEnumerator(name: "FORCE_STATOVERRIDE_ADD", value: 16777216)
!189 = !DIEnumerator(name: "FORCE_STATOVERRIDE_DEL", value: 33554432)
!190 = !DIEnumerator(name: "FORCE_SECURITY_MAC", value: 67108864)
!191 = !DIEnumerator(name: "FORCE_ALL", value: -1)
!192 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "versiondisplayepochwhen", file: !4, line: 388, size: 32, align: 32, elements: !193)
!193 = !{!194, !195, !196}
!194 = !DIEnumerator(name: "vdew_never", value: 0)
!195 = !DIEnumerator(name: "vdew_nonambig", value: 1)
!196 = !DIEnumerator(name: "vdew_always", value: 2)
!197 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !198, line: 41, size: 32, align: 32, elements: !199)
!198 = !DIFile(filename: "../lib/dpkg/ehandle.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!199 = !{!200, !201, !202}
!200 = !DIEnumerator(name: "ehflag_normaltidy", value: 1)
!201 = !DIEnumerator(name: "ehflag_bombout", value: 2)
!202 = !DIEnumerator(name: "ehflag_recursiveerror", value: 4)
!203 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "modstatdb_rw", file: !4, line: 263, size: 32, align: 32, elements: !204)
!204 = !{!205, !206, !207, !208, !209, !210, !211, !212}
!205 = !DIEnumerator(name: "msdbrw_readonly", value: 0)
!206 = !DIEnumerator(name: "msdbrw_needsuperuserlockonly", value: 1)
!207 = !DIEnumerator(name: "msdbrw_writeifposs", value: 2)
!208 = !DIEnumerator(name: "msdbrw_write", value: 3)
!209 = !DIEnumerator(name: "msdbrw_needsuperuser", value: 4)
!210 = !DIEnumerator(name: "msdbrw_available_readonly", value: 256)
!211 = !DIEnumerator(name: "msdbrw_available_write", value: 512)
!212 = !DIEnumerator(name: "msdbrw_available_mask", value: 65280)
!213 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "action", file: !74, line: 68, size: 32, align: 32, elements: !214)
!214 = !{!215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257}
!215 = !DIEnumerator(name: "act_unset", value: 0)
!216 = !DIEnumerator(name: "act_unpack", value: 1)
!217 = !DIEnumerator(name: "act_configure", value: 2)
!218 = !DIEnumerator(name: "act_install", value: 3)
!219 = !DIEnumerator(name: "act_triggers", value: 4)
!220 = !DIEnumerator(name: "act_remove", value: 5)
!221 = !DIEnumerator(name: "act_purge", value: 6)
!222 = !DIEnumerator(name: "act_verify", value: 7)
!223 = !DIEnumerator(name: "act_commandfd", value: 8)
!224 = !DIEnumerator(name: "act_status", value: 9)
!225 = !DIEnumerator(name: "act_listpackages", value: 10)
!226 = !DIEnumerator(name: "act_listfiles", value: 11)
!227 = !DIEnumerator(name: "act_searchfiles", value: 12)
!228 = !DIEnumerator(name: "act_controlpath", value: 13)
!229 = !DIEnumerator(name: "act_controllist", value: 14)
!230 = !DIEnumerator(name: "act_controlshow", value: 15)
!231 = !DIEnumerator(name: "act_cmpversions", value: 16)
!232 = !DIEnumerator(name: "act_arch_add", value: 17)
!233 = !DIEnumerator(name: "act_arch_remove", value: 18)
!234 = !DIEnumerator(name: "act_printarch", value: 19)
!235 = !DIEnumerator(name: "act_printforeignarches", value: 20)
!236 = !DIEnumerator(name: "act_assertpredep", value: 21)
!237 = !DIEnumerator(name: "act_assertepoch", value: 22)
!238 = !DIEnumerator(name: "act_assertlongfilenames", value: 23)
!239 = !DIEnumerator(name: "act_assertmulticonrep", value: 24)
!240 = !DIEnumerator(name: "act_assertmultiarch", value: 25)
!241 = !DIEnumerator(name: "act_assertverprovides", value: 26)
!242 = !DIEnumerator(name: "act_validate_pkgname", value: 27)
!243 = !DIEnumerator(name: "act_validate_trigname", value: 28)
!244 = !DIEnumerator(name: "act_validate_archname", value: 29)
!245 = !DIEnumerator(name: "act_validate_version", value: 30)
!246 = !DIEnumerator(name: "act_audit", value: 31)
!247 = !DIEnumerator(name: "act_unpackchk", value: 32)
!248 = !DIEnumerator(name: "act_predeppackage", value: 33)
!249 = !DIEnumerator(name: "act_getselections", value: 34)
!250 = !DIEnumerator(name: "act_setselections", value: 35)
!251 = !DIEnumerator(name: "act_clearselections", value: 36)
!252 = !DIEnumerator(name: "act_avail", value: 37)
!253 = !DIEnumerator(name: "act_printavail", value: 38)
!254 = !DIEnumerator(name: "act_avclear", value: 39)
!255 = !DIEnumerator(name: "act_avreplace", value: 40)
!256 = !DIEnumerator(name: "act_avmerge", value: 41)
!257 = !DIEnumerator(name: "act_forgetold", value: 42)
!258 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "treewalk_options", file: !259, line: 39, size: 32, align: 32, elements: !260)
!259 = !DIFile(filename: "../lib/dpkg/treewalk.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!260 = !{!261, !262, !263}
!261 = !DIEnumerator(name: "TREEWALK_NONE", value: 0)
!262 = !DIEnumerator(name: "TREEWALK_FORCE_STAT", value: 1)
!263 = !DIEnumerator(name: "TREEWALK_FOLLOW_LINKS", value: 2)
!264 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "statdb_parse_flags", file: !265, line: 52, size: 32, align: 32, elements: !266)
!265 = !DIFile(filename: "../lib/dpkg/db-fsys.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!266 = !{!267, !268}
!267 = !DIEnumerator(name: "STATDB_PARSE_NORMAL", value: 0)
!268 = !DIEnumerator(name: "STATDB_PARSE_LAX", value: 1)
!269 = !{!270, !272, !489, !323, !500, !288, !502, !506, !505}
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!271 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64, align: 64)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tarcontext", file: !274, line: 29, size: 256, align: 64, elements: !275)
!274 = !DIFile(filename: "archives.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!275 = !{!276, !278, !492, !499}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "backendpipe", scope: !273, file: !274, line: 30, baseType: !277, size: 32, align: 32)
!277 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !273, file: !274, line: 31, baseType: !279, size: 64, align: 64, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64, align: 64)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkginfo", file: !4, line: 195, size: 3072, align: 64, elements: !281)
!281 = !{!282, !332, !333, !334, !335, !336, !337, !338, !339, !340, !370, !371, !387, !396, !412, !413, !419, !486, !490, !491}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !280, file: !4, line: 196, baseType: !283, size: 64, align: 64)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64, align: 64)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgset", file: !4, line: 242, size: 3392, align: 64, elements: !285)
!285 = !{!286, !287, !290, !291, !331}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !284, file: !4, line: 243, baseType: !283, size: 64, align: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !284, file: !4, line: 244, baseType: !288, size: 64, align: 64, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64, align: 64)
!289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !271)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !284, file: !4, line: 245, baseType: !280, size: 3072, align: 64, offset: 128)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "depended", scope: !284, file: !4, line: 249, baseType: !292, size: 128, align: 64, offset: 3200)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !284, file: !4, line: 246, size: 128, align: 64, elements: !293)
!293 = !{!294, !330}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !292, file: !4, line: 247, baseType: !295, size: 64, align: 64)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64, align: 64)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "deppossi", file: !4, line: 63, size: 640, align: 64, elements: !297)
!297 = !{!298, !306, !307, !308, !309, !310, !319, !326, !327, !329}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !296, file: !4, line: 64, baseType: !299, size: 64, align: 64)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64, align: 64)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dependency", file: !4, line: 56, size: 256, align: 64, elements: !301)
!301 = !{!302, !303, !304, !305}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !300, file: !4, line: 57, baseType: !279, size: 64, align: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !300, file: !4, line: 58, baseType: !299, size: 64, align: 64, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !300, file: !4, line: 59, baseType: !295, size: 64, align: 64, offset: 128)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !300, file: !4, line: 60, baseType: !3, size: 32, align: 32, offset: 192)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "ed", scope: !296, file: !4, line: 65, baseType: !283, size: 64, align: 64, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !296, file: !4, line: 66, baseType: !295, size: 64, align: 64, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "rev_next", scope: !296, file: !4, line: 66, baseType: !295, size: 64, align: 64, offset: 192)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "rev_prev", scope: !296, file: !4, line: 66, baseType: !295, size: 64, align: 64, offset: 256)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !296, file: !4, line: 67, baseType: !311, size: 64, align: 64, offset: 320)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64, align: 64)
!312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !313)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_arch", file: !16, line: 48, size: 192, align: 64, elements: !314)
!314 = !{!315, !317, !318}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !313, file: !16, line: 49, baseType: !316, size: 64, align: 64)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64, align: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !313, file: !16, line: 50, baseType: !288, size: 64, align: 64, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !313, file: !16, line: 51, baseType: !15, size: 32, align: 32, offset: 128)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !296, file: !4, line: 68, baseType: !320, size: 192, align: 64, offset: 384)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_version", file: !27, line: 42, size: 192, align: 64, elements: !321)
!321 = !{!322, !324, !325}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !320, file: !27, line: 44, baseType: !323, size: 32, align: 32)
!323 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !320, file: !27, line: 46, baseType: !288, size: 64, align: 64, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !320, file: !27, line: 48, baseType: !288, size: 64, align: 64, offset: 128)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "verrel", scope: !296, file: !4, line: 69, baseType: !26, size: 32, align: 32, offset: 576)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "arch_is_implicit", scope: !296, file: !4, line: 70, baseType: !328, size: 8, align: 8, offset: 608)
!328 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "cyclebreak", scope: !296, file: !4, line: 71, baseType: !328, size: 8, align: 8, offset: 616)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !292, file: !4, line: 248, baseType: !295, size: 64, align: 64, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "installed_instances", scope: !284, file: !4, line: 250, baseType: !277, size: 32, align: 32, offset: 3328)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "arch_next", scope: !280, file: !4, line: 197, baseType: !279, size: 64, align: 64, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "want", scope: !280, file: !4, line: 199, baseType: !35, size: 32, align: 32, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "eflag", scope: !280, file: !4, line: 201, baseType: !43, size: 32, align: 32, offset: 160)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !280, file: !4, line: 202, baseType: !47, size: 32, align: 32, offset: 192)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !280, file: !4, line: 203, baseType: !57, size: 32, align: 32, offset: 224)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "otherpriority", scope: !280, file: !4, line: 204, baseType: !288, size: 64, align: 64, offset: 256)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "section", scope: !280, file: !4, line: 205, baseType: !288, size: 64, align: 64, offset: 320)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "configversion", scope: !280, file: !4, line: 206, baseType: !320, size: 192, align: 64, offset: 384)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !280, file: !4, line: 207, baseType: !341, size: 960, align: 64, offset: 576)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgbin", file: !4, line: 107, size: 960, align: 64, elements: !342)
!342 = !{!343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !363}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "depends", scope: !341, file: !4, line: 108, baseType: !299, size: 64, align: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "essential", scope: !341, file: !4, line: 110, baseType: !328, size: 8, align: 8, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "multiarch", scope: !341, file: !4, line: 111, baseType: !67, size: 32, align: 32, offset: 96)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !341, file: !4, line: 112, baseType: !311, size: 64, align: 64, offset: 128)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "pkgname_archqual", scope: !341, file: !4, line: 115, baseType: !288, size: 64, align: 64, offset: 192)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !341, file: !4, line: 116, baseType: !288, size: 64, align: 64, offset: 256)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "maintainer", scope: !341, file: !4, line: 117, baseType: !288, size: 64, align: 64, offset: 320)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !341, file: !4, line: 118, baseType: !288, size: 64, align: 64, offset: 384)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "installedsize", scope: !341, file: !4, line: 119, baseType: !288, size: 64, align: 64, offset: 448)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !341, file: !4, line: 120, baseType: !288, size: 64, align: 64, offset: 512)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "bugs", scope: !341, file: !4, line: 121, baseType: !288, size: 64, align: 64, offset: 576)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !341, file: !4, line: 122, baseType: !320, size: 192, align: 64, offset: 640)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "conffiles", scope: !341, file: !4, line: 123, baseType: !356, size: 64, align: 64, offset: 832)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64, align: 64)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conffile", file: !4, line: 80, size: 256, align: 64, elements: !358)
!358 = !{!359, !360, !361, !362}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !357, file: !4, line: 81, baseType: !356, size: 64, align: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !357, file: !4, line: 82, baseType: !288, size: 64, align: 64, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !357, file: !4, line: 83, baseType: !288, size: 64, align: 64, offset: 128)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "obsolete", scope: !357, file: !4, line: 84, baseType: !328, size: 8, align: 8, offset: 192)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "arbs", scope: !341, file: !4, line: 124, baseType: !364, size: 64, align: 64, offset: 896)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64, align: 64)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arbitraryfield", file: !4, line: 74, size: 192, align: 64, elements: !366)
!366 = !{!367, !368, !369}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !365, file: !4, line: 75, baseType: !364, size: 64, align: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !365, file: !4, line: 76, baseType: !288, size: 64, align: 64, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !365, file: !4, line: 77, baseType: !288, size: 64, align: 64, offset: 128)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !280, file: !4, line: 208, baseType: !341, size: 960, align: 64, offset: 1536)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "clientdata", scope: !280, file: !4, line: 209, baseType: !372, size: 64, align: 64, offset: 2496)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64, align: 64)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perpackagestate", file: !74, line: 53, size: 256, align: 64, elements: !374)
!374 = !{!375, !376, !377, !378, !379, !380}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "istobe", scope: !373, file: !74, line: 54, baseType: !73, size: 32, align: 32)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !373, file: !74, line: 57, baseType: !81, size: 32, align: 32, offset: 32)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !373, file: !74, line: 59, baseType: !328, size: 8, align: 8, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "replacingfilesandsaid", scope: !373, file: !74, line: 61, baseType: !277, size: 32, align: 32, offset: 96)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "cmdline_seen", scope: !373, file: !74, line: 62, baseType: !277, size: 32, align: 32, offset: 128)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "trigprocdeferred", scope: !373, file: !74, line: 65, baseType: !381, size: 64, align: 64, offset: 192)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64, align: 64)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_list", file: !383, line: 34, size: 128, align: 64, elements: !384)
!383 = !DIFile(filename: "../lib/dpkg/pkg-list.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!384 = !{!385, !386}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !382, file: !383, line: 35, baseType: !381, size: 64, align: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !382, file: !383, line: 36, baseType: !279, size: 64, align: 64, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "archives", scope: !280, file: !4, line: 211, baseType: !388, size: 64, align: 64, offset: 2560)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64, align: 64)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archivedetails", file: !4, line: 87, size: 320, align: 64, elements: !390)
!390 = !{!391, !392, !393, !394, !395}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !389, file: !4, line: 88, baseType: !388, size: 64, align: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !389, file: !4, line: 89, baseType: !288, size: 64, align: 64, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "msdosname", scope: !389, file: !4, line: 90, baseType: !288, size: 64, align: 64, offset: 128)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !389, file: !4, line: 91, baseType: !288, size: 64, align: 64, offset: 192)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "md5sum", scope: !389, file: !4, line: 92, baseType: !288, size: 64, align: 64, offset: 256)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "trigaw", scope: !280, file: !4, line: 216, baseType: !397, size: 128, align: 64, offset: 2624)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !280, file: !4, line: 213, size: 128, align: 64, elements: !398)
!398 = !{!399, !411}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !397, file: !4, line: 215, baseType: !400, size: 64, align: 64)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64, align: 64)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigaw", file: !4, line: 142, size: 320, align: 64, elements: !402)
!402 = !{!403, !404, !405, !406}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "aw", scope: !401, file: !4, line: 143, baseType: !279, size: 64, align: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "pend", scope: !401, file: !4, line: 143, baseType: !279, size: 64, align: 64, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "samepend_next", scope: !401, file: !4, line: 144, baseType: !400, size: 64, align: 64, offset: 128)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "sameaw", scope: !401, file: !4, line: 147, baseType: !407, size: 128, align: 64, offset: 192)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !401, file: !4, line: 145, size: 128, align: 64, elements: !408)
!408 = !{!409, !410}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !407, file: !4, line: 146, baseType: !400, size: 64, align: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !407, file: !4, line: 146, baseType: !400, size: 64, align: 64, offset: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !397, file: !4, line: 215, baseType: !400, size: 64, align: 64, offset: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "othertrigaw_head", scope: !280, file: !4, line: 219, baseType: !400, size: 64, align: 64, offset: 2752)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "trigpend_head", scope: !280, file: !4, line: 220, baseType: !414, size: 64, align: 64, offset: 2816)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64, align: 64)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigpend", file: !4, line: 134, size: 128, align: 64, elements: !416)
!416 = !{!417, !418}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !415, file: !4, line: 135, baseType: !414, size: 64, align: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !415, file: !4, line: 136, baseType: !288, size: 64, align: 64, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !280, file: !4, line: 231, baseType: !420, size: 64, align: 64, offset: 2880)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64, align: 64)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode_list", file: !92, line: 122, size: 128, align: 64, elements: !422)
!422 = !{!423, !424}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !421, file: !92, line: 123, baseType: !420, size: 64, align: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "namenode", scope: !421, file: !92, line: 124, baseType: !425, size: 64, align: 64, offset: 64)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64, align: 64)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode", file: !92, line: 90, size: 640, align: 64, elements: !427)
!427 = !{!428, !429, !430, !431, !439, !457, !472, !473, !474, !475}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !426, file: !92, line: 91, baseType: !425, size: 64, align: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !426, file: !92, line: 92, baseType: !288, size: 64, align: 64, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "packages", scope: !426, file: !92, line: 93, baseType: !381, size: 64, align: 64, offset: 128)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "divert", scope: !426, file: !92, line: 94, baseType: !432, size: 64, align: 64, offset: 192)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64, align: 64)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_diversion", file: !92, line: 151, size: 256, align: 64, elements: !434)
!434 = !{!435, !436, !437, !438}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "useinstead", scope: !433, file: !92, line: 152, baseType: !425, size: 64, align: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "camefrom", scope: !433, file: !92, line: 153, baseType: !425, size: 64, align: 64, offset: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "pkgset", scope: !433, file: !92, line: 154, baseType: !283, size: 64, align: 64, offset: 128)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !433, file: !92, line: 157, baseType: !432, size: 64, align: 64, offset: 192)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "statoverride", scope: !426, file: !92, line: 101, baseType: !440, size: 64, align: 64, offset: 256)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64, align: 64)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_stat", file: !442, line: 40, size: 256, align: 64, elements: !443)
!442 = !DIFile(filename: "../lib/dpkg/file.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!443 = !{!444, !449, !452, !455, !456}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !441, file: !442, line: 41, baseType: !445, size: 32, align: 32)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !446, line: 80, baseType: !447)
!446 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !448, line: 125, baseType: !323)
!448 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!449 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !441, file: !442, line: 42, baseType: !450, size: 32, align: 32, offset: 32)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !446, line: 65, baseType: !451)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !448, line: 126, baseType: !323)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !441, file: !442, line: 43, baseType: !453, size: 32, align: 32, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !446, line: 70, baseType: !454)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !448, line: 129, baseType: !323)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "uname", scope: !441, file: !442, line: 47, baseType: !270, size: 64, align: 64, offset: 128)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !441, file: !442, line: 48, baseType: !270, size: 64, align: 64, offset: 192)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "trig_interested", scope: !426, file: !92, line: 103, baseType: !458, size: 64, align: 64, offset: 320)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64, align: 64)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigfileint", file: !87, line: 54, size: 448, align: 64, elements: !460)
!460 = !{!461, !462, !464, !465, !466, !467}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !459, file: !87, line: 55, baseType: !279, size: 64, align: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "pkgbin", scope: !459, file: !87, line: 56, baseType: !463, size: 64, align: 64, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64, align: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "fnn", scope: !459, file: !87, line: 57, baseType: !425, size: 64, align: 64, offset: 128)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !459, file: !87, line: 58, baseType: !86, size: 32, align: 32, offset: 192)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "samefile_next", scope: !459, file: !87, line: 59, baseType: !458, size: 64, align: 64, offset: 256)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "inoverall", scope: !459, file: !87, line: 62, baseType: !468, size: 128, align: 64, offset: 320)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !459, file: !87, line: 60, size: 128, align: 64, elements: !469)
!469 = !{!470, !471}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !468, file: !87, line: 61, baseType: !458, size: 64, align: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !468, file: !87, line: 61, baseType: !458, size: 64, align: 64, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !426, file: !92, line: 111, baseType: !91, size: 32, align: 32, offset: 384)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "oldhash", scope: !426, file: !92, line: 114, baseType: !288, size: 64, align: 64, offset: 448)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "newhash", scope: !426, file: !92, line: 117, baseType: !288, size: 64, align: 64, offset: 512)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "file_ondisk_id", scope: !426, file: !92, line: 119, baseType: !476, size: 64, align: 64, offset: 576)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64, align: 64)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ondisk_id", file: !92, line: 85, size: 128, align: 64, elements: !478)
!478 = !{!479, !483}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "id_dev", scope: !477, file: !92, line: 86, baseType: !480, size: 64, align: 64)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !446, line: 60, baseType: !481)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !448, line: 124, baseType: !482)
!482 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "id_ino", scope: !477, file: !92, line: 87, baseType: !484, size: 64, align: 64, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !446, line: 48, baseType: !485)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !448, line: 127, baseType: !482)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_phys_offs", scope: !280, file: !4, line: 232, baseType: !487, size: 64, align: 64, offset: 2944)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !446, line: 86, baseType: !488)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !448, line: 131, baseType: !489)
!489 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_valid", scope: !280, file: !4, line: 233, baseType: !328, size: 8, align: 8, offset: 3008)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "status_dirty", scope: !280, file: !4, line: 236, baseType: !328, size: 8, align: 8, offset: 3016)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "newfiles_queue", scope: !273, file: !274, line: 33, baseType: !493, size: 64, align: 64, offset: 128)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64, align: 64)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode_queue", file: !92, line: 130, size: 128, align: 64, elements: !495)
!495 = !{!496, !497}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !494, file: !92, line: 131, baseType: !420, size: 64, align: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !494, file: !92, line: 131, baseType: !498, size: 64, align: 64, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64, align: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "pkgset_getting_in_sync", scope: !273, file: !274, line: 35, baseType: !328, size: 8, align: 8, offset: 192)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !501, line: 134, baseType: !489)
!501 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64, align: 64)
!503 = !DISubroutineType(types: !504)
!504 = !{!505, !489}
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64, align: 64)
!507 = !DISubroutineType(types: !508)
!508 = !{null, !505}
!509 = !{!510, !518, !573, !574, !578, !579, !580, !581, !582, !583, !619, !623}
!510 = distinct !DIGlobalVariable(name: "deconfigure", scope: !0, file: !511, line: 313, type: !512, isLocal: false, isDefinition: true, variable: %struct.pkg_deconf_list** @deconfigure)
!511 = !DIFile(filename: "archives.c", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64, align: 64)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_deconf_list", file: !274, line: 38, size: 192, align: 64, elements: !514)
!514 = !{!515, !516, !517}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !513, file: !274, line: 39, baseType: !512, size: 64, align: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !513, file: !274, line: 40, baseType: !279, size: 64, align: 64, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_removal", scope: !513, file: !274, line: 41, baseType: !279, size: 64, align: 64, offset: 128)
!518 = distinct !DIGlobalVariable(name: "conffderefn", scope: !519, file: !511, line: 668, type: !565, isLocal: true, isDefinition: true, variable: %struct.varbuf* @tarobject.conffderefn)
!519 = distinct !DISubprogram(name: "tarobject", scope: !511, file: !511, line: 666, type: !520, isLocal: false, isDefinition: true, scopeLine: 667, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !564)
!520 = !DISubroutineType(types: !521)
!521 = !{!277, !522, !550}
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64, align: 64)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tar_archive", file: !133, line: 105, size: 320, align: 64, elements: !524)
!524 = !{!525, !531, !532, !549}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !523, file: !133, line: 107, baseType: !526, size: 128, align: 64)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_error", file: !127, line: 42, size: 128, align: 64, elements: !527)
!527 = !{!528, !529, !530}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !526, file: !127, line: 43, baseType: !126, size: 32, align: 32)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "syserrno", scope: !526, file: !127, line: 45, baseType: !277, size: 32, align: 32, offset: 32)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !526, file: !127, line: 46, baseType: !270, size: 64, align: 64, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !523, file: !133, line: 110, baseType: !132, size: 32, align: 32, offset: 128)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !523, file: !133, line: 113, baseType: !533, size: 64, align: 64, offset: 192)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64, align: 64)
!534 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !535)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tar_operations", file: !133, line: 95, size: 384, align: 64, elements: !536)
!536 = !{!537, !542, !545, !546, !547, !548}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !535, file: !133, line: 96, baseType: !538, size: 64, align: 64)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64, align: 64)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "tar_read_func", file: !133, line: 92, baseType: !540)
!540 = !DISubroutineType(types: !541)
!541 = !{!277, !522, !270, !277}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "extract_file", scope: !535, file: !133, line: 98, baseType: !543, size: 64, align: 64, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64, align: 64)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "tar_make_func", file: !133, line: 93, baseType: !520)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !535, file: !133, line: 99, baseType: !543, size: 64, align: 64, offset: 128)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !535, file: !133, line: 100, baseType: !543, size: 64, align: 64, offset: 192)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !535, file: !133, line: 101, baseType: !543, size: 64, align: 64, offset: 256)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !535, file: !133, line: 102, baseType: !543, size: 64, align: 64, offset: 320)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !523, file: !133, line: 114, baseType: !505, size: 64, align: 64, offset: 256)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64, align: 64)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tar_entry", file: !133, line: 71, size: 640, align: 64, elements: !552)
!552 = !{!553, !554, !555, !556, !557, !558, !562, !563}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !551, file: !133, line: 73, baseType: !132, size: 32, align: 32)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !551, file: !133, line: 75, baseType: !140, size: 32, align: 32, offset: 32)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !551, file: !133, line: 77, baseType: !270, size: 64, align: 64, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "linkname", scope: !551, file: !133, line: 79, baseType: !270, size: 64, align: 64, offset: 128)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !551, file: !133, line: 81, baseType: !487, size: 64, align: 64, offset: 192)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !551, file: !133, line: 83, baseType: !559, size: 64, align: 64, offset: 256)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !560, line: 75, baseType: !561)
!560 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !448, line: 139, baseType: !489)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !551, file: !133, line: 85, baseType: !480, size: 64, align: 64, offset: 320)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !551, file: !133, line: 87, baseType: !441, size: 256, align: 64, offset: 384)
!564 = !{}
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varbuf", file: !566, line: 55, size: 192, align: 64, elements: !567)
!566 = !DIFile(filename: "../lib/dpkg/varbuf.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!567 = !{!568, !571, !572}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !565, file: !566, line: 56, baseType: !569, size: 64, align: 64)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !570, line: 216, baseType: !482)
!570 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!571 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !565, file: !566, line: 56, baseType: !569, size: 64, align: 64, offset: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !565, file: !566, line: 57, baseType: !270, size: 64, align: 64, offset: 128)
!573 = distinct !DIGlobalVariable(name: "symlinkfn", scope: !519, file: !511, line: 668, type: !565, isLocal: true, isDefinition: true, variable: %struct.varbuf* @tarobject.symlinkfn)
!574 = distinct !DIGlobalVariable(name: "fname_state", scope: !0, file: !511, line: 309, type: !575, isLocal: false, isDefinition: true, variable: %struct.varbuf_state* @fname_state)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varbuf_state", file: !566, line: 96, size: 64, align: 64, elements: !576)
!576 = !{!577}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !575, file: !566, line: 97, baseType: !569, size: 64, align: 64)
!578 = distinct !DIGlobalVariable(name: "fnamevb", scope: !0, file: !511, line: 310, type: !565, isLocal: false, isDefinition: true, variable: %struct.varbuf* @fnamevb)
!579 = distinct !DIGlobalVariable(name: "fnametmpvb", scope: !0, file: !511, line: 311, type: !565, isLocal: false, isDefinition: true, variable: %struct.varbuf* @fnametmpvb)
!580 = distinct !DIGlobalVariable(name: "fnamenewvb", scope: !0, file: !511, line: 312, type: !565, isLocal: false, isDefinition: true, variable: %struct.varbuf* @fnamenewvb)
!581 = distinct !DIGlobalVariable(name: "currenttime", scope: !0, file: !511, line: 315, type: !559, isLocal: true, isDefinition: true, variable: i64* @currenttime)
!582 = distinct !DIGlobalVariable(name: "tar_pool_init", scope: !0, file: !511, line: 79, type: !328, isLocal: true, isDefinition: true, variable: i8* @tar_pool_init)
!583 = distinct !DIGlobalVariable(name: "tar_pool", scope: !0, file: !511, line: 78, type: !584, isLocal: true, isDefinition: true, variable: %struct.obstack* @tar_pool)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !585, line: 153, size: 704, align: 64, elements: !586)
!585 = !DIFile(filename: "/usr/include/obstack.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!586 = !{!587, !588, !598, !599, !600, !601, !606, !607, !611, !615, !616, !617, !618}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !584, file: !585, line: 155, baseType: !489, size: 64, align: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !584, file: !585, line: 156, baseType: !589, size: 64, align: 64, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64, align: 64)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !585, line: 146, size: 192, align: 64, elements: !591)
!591 = !{!592, !593, !594}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !590, file: !585, line: 148, baseType: !270, size: 64, align: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !590, file: !585, line: 149, baseType: !589, size: 64, align: 64, offset: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !590, file: !585, line: 150, baseType: !595, size: 32, align: 8, offset: 128)
!595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 32, align: 8, elements: !596)
!596 = !{!597}
!597 = !DISubrange(count: 4)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !584, file: !585, line: 157, baseType: !270, size: 64, align: 64, offset: 128)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !584, file: !585, line: 158, baseType: !270, size: 64, align: 64, offset: 192)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !584, file: !585, line: 159, baseType: !270, size: 64, align: 64, offset: 256)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !584, file: !585, line: 164, baseType: !602, size: 64, align: 64, offset: 320)
!602 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !584, file: !585, line: 160, size: 64, align: 64, elements: !603)
!603 = !{!604, !605}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "tempint", scope: !602, file: !585, line: 162, baseType: !489, size: 64, align: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "tempptr", scope: !602, file: !585, line: 163, baseType: !505, size: 64, align: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !584, file: !585, line: 165, baseType: !277, size: 32, align: 32, offset: 384)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !584, file: !585, line: 169, baseType: !608, size: 64, align: 64, offset: 448)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64, align: 64)
!609 = !DISubroutineType(types: !610)
!610 = !{!589, !505, !489}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !584, file: !585, line: 170, baseType: !612, size: 64, align: 64, offset: 512)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64, align: 64)
!613 = !DISubroutineType(types: !614)
!614 = !{null, !505, !589}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !584, file: !585, line: 171, baseType: !505, size: 64, align: 64, offset: 576)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !584, file: !585, line: 172, baseType: !323, size: 1, align: 32, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !584, file: !585, line: 173, baseType: !323, size: 1, align: 32, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !584, file: !585, line: 177, baseType: !323, size: 1, align: 32, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!619 = distinct !DIGlobalVariable(name: "hardlinkfn", scope: !620, file: !511, line: 350, type: !565, isLocal: true, isDefinition: true, variable: %struct.varbuf* @tarobject_extract.hardlinkfn)
!620 = distinct !DISubprogram(name: "tarobject_extract", scope: !511, file: !511, line: 346, type: !621, isLocal: true, isDefinition: true, scopeLine: 349, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !564)
!621 = !DISubroutineType(types: !622)
!622 = !{null, !272, !550, !288, !440, !425}
!623 = distinct !DIGlobalVariable(name: "fd", scope: !620, file: !511, line: 351, type: !277, isLocal: true, isDefinition: true, variable: i32* @tarobject_extract.fd)
!624 = !{i32 2, !"Dwarf Version", i32 4}
!625 = !{i32 2, !"Debug Info Version", i32 3}
!626 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!627 = distinct !DISubprogram(name: "tar_fsys_namenode_queue_push", scope: !511, file: !511, line: 117, type: !628, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !564)
!628 = !DISubroutineType(types: !629)
!629 = !{!420, !493, !425}
!630 = !DILocalVariable(name: "queue", arg: 1, scope: !627, file: !511, line: 117, type: !493)
!631 = !DIExpression()
!632 = !DILocation(line: 117, column: 58, scope: !627)
!633 = !DILocalVariable(name: "namenode", arg: 2, scope: !627, file: !511, line: 118, type: !425)
!634 = !DILocation(line: 118, column: 51, scope: !627)
!635 = !DILocalVariable(name: "node", scope: !627, file: !511, line: 120, type: !420)
!636 = !DILocation(line: 120, column: 30, scope: !627)
!637 = !DILocation(line: 122, column: 10, scope: !627)
!638 = !DILocation(line: 122, column: 8, scope: !627)
!639 = !DILocation(line: 123, column: 20, scope: !627)
!640 = !DILocation(line: 123, column: 3, scope: !627)
!641 = !DILocation(line: 123, column: 9, scope: !627)
!642 = !DILocation(line: 123, column: 18, scope: !627)
!643 = !DILocation(line: 124, column: 3, scope: !627)
!644 = !DILocation(line: 124, column: 9, scope: !627)
!645 = !DILocation(line: 124, column: 14, scope: !627)
!646 = !DILocation(line: 126, column: 18, scope: !627)
!647 = !DILocation(line: 126, column: 4, scope: !627)
!648 = !DILocation(line: 126, column: 11, scope: !627)
!649 = !DILocation(line: 126, column: 16, scope: !627)
!650 = !DILocation(line: 127, column: 18, scope: !627)
!651 = !DILocation(line: 127, column: 24, scope: !627)
!652 = !DILocation(line: 127, column: 3, scope: !627)
!653 = !DILocation(line: 127, column: 10, scope: !627)
!654 = !DILocation(line: 127, column: 15, scope: !627)
!655 = !DILocation(line: 129, column: 10, scope: !627)
!656 = !DILocation(line: 129, column: 3, scope: !627)
!657 = distinct !DISubprogram(name: "tar_pool_alloc", scope: !511, file: !511, line: 85, type: !658, isLocal: true, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !564)
!658 = !DISubroutineType(types: !659)
!659 = !{!505, !569}
!660 = !DILocalVariable(name: "size", arg: 1, scope: !657, file: !511, line: 85, type: !569)
!661 = !DILocation(line: 85, column: 23, scope: !657)
!662 = !DILocation(line: 87, column: 8, scope: !663)
!663 = distinct !DILexicalBlock(scope: !657, file: !511, line: 87, column: 7)
!664 = !DILocation(line: 87, column: 7, scope: !657)
!665 = !DILocation(line: 88, column: 4, scope: !666)
!666 = distinct !DILexicalBlock(scope: !663, file: !511, line: 87, column: 23)
!667 = !DILocation(line: 89, column: 19, scope: !666)
!668 = !DILocation(line: 90, column: 3, scope: !666)
!669 = !DILocalVariable(name: "__h", scope: !670, file: !511, line: 92, type: !671)
!670 = distinct !DILexicalBlock(scope: !657, file: !511, line: 92, column: 24)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64, align: 64)
!672 = !DILocation(line: 92, column: 42, scope: !670)
!673 = !DILocalVariable(name: "__o", scope: !674, file: !511, line: 92, type: !671)
!674 = distinct !DILexicalBlock(scope: !670, file: !511, line: 92, column: 27)
!675 = !DILocation(line: 92, column: 45, scope: !674)
!676 = !DILocation(line: 92, column: 52, scope: !674)
!677 = !DILocalVariable(name: "__len", scope: !674, file: !511, line: 92, type: !277)
!678 = !DILocation(line: 92, column: 62, scope: !674)
!679 = !DILocation(line: 92, column: 9, scope: !674)
!680 = !DILocation(line: 92, column: 70, scope: !674)
!681 = !DILocation(line: 92, column: 17, scope: !682)
!682 = distinct !DILexicalBlock(scope: !674, file: !511, line: 92, column: 17)
!683 = !DILocation(line: 92, column: 22, scope: !682)
!684 = !DILocation(line: 92, column: 36, scope: !682)
!685 = !DILocation(line: 92, column: 41, scope: !682)
!686 = !DILocation(line: 92, column: 34, scope: !682)
!687 = !DILocation(line: 92, column: 53, scope: !682)
!688 = !DILocation(line: 92, column: 51, scope: !682)
!689 = !DILocation(line: 92, column: 17, scope: !674)
!690 = !DILocation(line: 92, column: 79, scope: !691)
!691 = !DILexicalBlockFile(scope: !682, file: !511, discriminator: 1)
!692 = !DILocation(line: 92, column: 84, scope: !691)
!693 = !DILocation(line: 92, column: 60, scope: !691)
!694 = !DILocation(line: 92, column: 114, scope: !695)
!695 = !DILexicalBlockFile(scope: !674, file: !511, discriminator: 2)
!696 = !DILocation(line: 92, column: 94, scope: !695)
!697 = !DILocation(line: 92, column: 100, scope: !695)
!698 = !DILocation(line: 92, column: 110, scope: !695)
!699 = !DILocalVariable(name: "__o1", scope: !700, file: !511, line: 92, type: !671)
!700 = distinct !DILexicalBlock(scope: !670, file: !511, line: 92, column: 152)
!701 = !DILocation(line: 92, column: 170, scope: !700)
!702 = !DILocation(line: 92, column: 178, scope: !695)
!703 = !DILocation(line: 92, column: 170, scope: !695)
!704 = !DILocalVariable(name: "__value", scope: !700, file: !511, line: 92, type: !505)
!705 = !DILocation(line: 92, column: 190, scope: !700)
!706 = !DILocation(line: 92, column: 209, scope: !695)
!707 = !DILocation(line: 92, column: 215, scope: !695)
!708 = !DILocation(line: 92, column: 190, scope: !695)
!709 = !DILocation(line: 92, column: 232, scope: !695)
!710 = !DILocation(line: 92, column: 238, scope: !695)
!711 = !DILocation(line: 92, column: 251, scope: !695)
!712 = !DILocation(line: 92, column: 248, scope: !695)
!713 = !DILocation(line: 92, column: 260, scope: !714)
!714 = !DILexicalBlockFile(scope: !715, file: !511, discriminator: 3)
!715 = distinct !DILexicalBlock(scope: !700, file: !511, line: 92, column: 232)
!716 = !DILocation(line: 92, column: 266, scope: !714)
!717 = !DILocation(line: 92, column: 285, scope: !714)
!718 = !DILocation(line: 92, column: 387, scope: !719)
!719 = !DILexicalBlockFile(scope: !700, file: !511, discriminator: 4)
!720 = !DILocation(line: 92, column: 393, scope: !719)
!721 = !DILocation(line: 92, column: 404, scope: !719)
!722 = !DILocation(line: 92, column: 482, scope: !719)
!723 = !DILocation(line: 92, column: 488, scope: !719)
!724 = !DILocation(line: 92, column: 481, scope: !719)
!725 = !DILocation(line: 92, column: 479, scope: !719)
!726 = !DILocation(line: 92, column: 509, scope: !719)
!727 = !DILocation(line: 92, column: 515, scope: !719)
!728 = !DILocation(line: 92, column: 507, scope: !719)
!729 = !DILocation(line: 92, column: 505, scope: !719)
!730 = !DILocation(line: 92, column: 382, scope: !719)
!731 = !DILocation(line: 92, column: 290, scope: !719)
!732 = !DILocation(line: 92, column: 296, scope: !719)
!733 = !DILocation(line: 92, column: 306, scope: !719)
!734 = !DILocation(line: 92, column: 538, scope: !719)
!735 = !DILocation(line: 92, column: 544, scope: !719)
!736 = !DILocation(line: 92, column: 565, scope: !719)
!737 = !DILocation(line: 92, column: 571, scope: !719)
!738 = !DILocation(line: 92, column: 556, scope: !719)
!739 = !DILocation(line: 92, column: 554, scope: !719)
!740 = !DILocation(line: 92, column: 579, scope: !719)
!741 = !DILocation(line: 92, column: 585, scope: !719)
!742 = !DILocation(line: 92, column: 608, scope: !719)
!743 = !DILocation(line: 92, column: 614, scope: !719)
!744 = !DILocation(line: 92, column: 599, scope: !719)
!745 = !DILocation(line: 92, column: 597, scope: !719)
!746 = !DILocation(line: 92, column: 577, scope: !719)
!747 = !DILocation(line: 92, column: 639, scope: !748)
!748 = !DILexicalBlockFile(scope: !749, file: !511, discriminator: 5)
!749 = distinct !DILexicalBlock(scope: !700, file: !511, line: 92, column: 538)
!750 = !DILocation(line: 92, column: 645, scope: !748)
!751 = !DILocation(line: 92, column: 621, scope: !748)
!752 = !DILocation(line: 92, column: 627, scope: !748)
!753 = !DILocation(line: 92, column: 637, scope: !748)
!754 = !DILocation(line: 92, column: 678, scope: !755)
!755 = !DILexicalBlockFile(scope: !700, file: !511, discriminator: 6)
!756 = !DILocation(line: 92, column: 684, scope: !755)
!757 = !DILocation(line: 92, column: 658, scope: !755)
!758 = !DILocation(line: 92, column: 664, scope: !755)
!759 = !DILocation(line: 92, column: 676, scope: !755)
!760 = !DILocation(line: 92, column: 695, scope: !755)
!761 = !DILocation(line: 92, column: 704, scope: !755)
!762 = !DILocation(line: 92, column: 12, scope: !755)
!763 = !DILocation(line: 92, column: 708, scope: !755)
!764 = !DILocation(line: 92, column: 3, scope: !755)
!765 = distinct !DISubprogram(name: "filesavespackage", scope: !511, file: !511, line: 151, type: !766, isLocal: false, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !564)
!766 = !DISubroutineType(types: !767)
!767 = !{!328, !420, !279, !279}
!768 = !DILocalVariable(name: "file", arg: 1, scope: !765, file: !511, line: 151, type: !420)
!769 = !DILocation(line: 151, column: 45, scope: !765)
!770 = !DILocalVariable(name: "pkgtobesaved", arg: 2, scope: !765, file: !511, line: 152, type: !279)
!771 = !DILocation(line: 152, column: 34, scope: !765)
!772 = !DILocalVariable(name: "pkgbeinginstalled", arg: 3, scope: !765, file: !511, line: 153, type: !279)
!773 = !DILocation(line: 153, column: 34, scope: !765)
!774 = !DILocalVariable(name: "iter", scope: !765, file: !511, line: 155, type: !775)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64, align: 64)
!776 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_node_pkgs_iter", file: !92, line: 160, flags: DIFlagFwdDecl)
!777 = !DILocation(line: 155, column: 31, scope: !765)
!778 = !DILocalVariable(name: "divpkgset", scope: !765, file: !511, line: 156, type: !283)
!779 = !DILocation(line: 156, column: 18, scope: !765)
!780 = !DILocalVariable(name: "thirdpkg", scope: !765, file: !511, line: 157, type: !279)
!781 = !DILocation(line: 157, column: 19, scope: !765)
!782 = !DILocation(line: 160, column: 9, scope: !765)
!783 = !DILocation(line: 160, column: 15, scope: !765)
!784 = !DILocation(line: 160, column: 25, scope: !765)
!785 = !DILocation(line: 160, column: 40, scope: !765)
!786 = !DILocation(line: 160, column: 31, scope: !765)
!787 = !DILocation(line: 159, column: 3, scope: !765)
!788 = !DILocation(line: 166, column: 7, scope: !789)
!789 = distinct !DILexicalBlock(scope: !765, file: !511, line: 166, column: 7)
!790 = !DILocation(line: 166, column: 13, scope: !789)
!791 = !DILocation(line: 166, column: 23, scope: !789)
!792 = !DILocation(line: 166, column: 30, scope: !789)
!793 = !DILocation(line: 166, column: 33, scope: !794)
!794 = !DILexicalBlockFile(scope: !789, file: !511, discriminator: 1)
!795 = !DILocation(line: 166, column: 39, scope: !794)
!796 = !DILocation(line: 166, column: 49, scope: !794)
!797 = !DILocation(line: 166, column: 57, scope: !794)
!798 = !DILocation(line: 166, column: 7, scope: !794)
!799 = !DILocation(line: 167, column: 17, scope: !800)
!800 = distinct !DILexicalBlock(scope: !789, file: !511, line: 166, column: 69)
!801 = !DILocation(line: 167, column: 23, scope: !800)
!802 = !DILocation(line: 167, column: 33, scope: !800)
!803 = !DILocation(line: 167, column: 41, scope: !800)
!804 = !DILocation(line: 167, column: 15, scope: !800)
!805 = !DILocation(line: 168, column: 9, scope: !806)
!806 = distinct !DILexicalBlock(scope: !800, file: !511, line: 168, column: 9)
!807 = !DILocation(line: 168, column: 22, scope: !806)
!808 = !DILocation(line: 168, column: 36, scope: !806)
!809 = !DILocation(line: 168, column: 19, scope: !806)
!810 = !DILocation(line: 168, column: 40, scope: !806)
!811 = !DILocation(line: 168, column: 43, scope: !812)
!812 = !DILexicalBlockFile(scope: !806, file: !511, discriminator: 1)
!813 = !DILocation(line: 168, column: 56, scope: !812)
!814 = !DILocation(line: 168, column: 75, scope: !812)
!815 = !DILocation(line: 168, column: 53, scope: !812)
!816 = !DILocation(line: 168, column: 9, scope: !812)
!817 = !DILocation(line: 169, column: 7, scope: !818)
!818 = distinct !DILexicalBlock(scope: !806, file: !511, line: 168, column: 80)
!819 = !DILocation(line: 170, column: 7, scope: !818)
!820 = !DILocation(line: 172, column: 3, scope: !800)
!821 = !DILocation(line: 174, column: 7, scope: !822)
!822 = distinct !DILexicalBlock(scope: !765, file: !511, line: 174, column: 7)
!823 = !DILocation(line: 174, column: 13, scope: !822)
!824 = !DILocation(line: 174, column: 23, scope: !822)
!825 = !DILocation(line: 174, column: 29, scope: !822)
!826 = !DILocation(line: 174, column: 7, scope: !765)
!827 = !DILocation(line: 175, column: 5, scope: !828)
!828 = distinct !DILexicalBlock(scope: !822, file: !511, line: 174, column: 51)
!829 = !DILocation(line: 176, column: 5, scope: !828)
!830 = !DILocation(line: 180, column: 34, scope: !765)
!831 = !DILocation(line: 180, column: 40, scope: !765)
!832 = !DILocation(line: 180, column: 10, scope: !765)
!833 = !DILocation(line: 180, column: 8, scope: !765)
!834 = !DILocation(line: 181, column: 3, scope: !765)
!835 = !DILocation(line: 181, column: 47, scope: !836)
!836 = !DILexicalBlockFile(scope: !765, file: !511, discriminator: 1)
!837 = !DILocation(line: 181, column: 22, scope: !836)
!838 = !DILocation(line: 181, column: 20, scope: !836)
!839 = !DILocation(line: 181, column: 3, scope: !836)
!840 = !DILocation(line: 183, column: 20, scope: !841)
!841 = distinct !DILexicalBlock(scope: !765, file: !511, line: 181, column: 55)
!842 = !DILocation(line: 183, column: 11, scope: !841)
!843 = !DILocation(line: 182, column: 5, scope: !841)
!844 = !DILocation(line: 187, column: 9, scope: !845)
!845 = distinct !DILexicalBlock(scope: !841, file: !511, line: 187, column: 9)
!846 = !DILocation(line: 187, column: 21, scope: !845)
!847 = !DILocation(line: 187, column: 18, scope: !845)
!848 = !DILocation(line: 187, column: 39, scope: !845)
!849 = !DILocation(line: 187, column: 42, scope: !850)
!850 = !DILexicalBlockFile(scope: !845, file: !511, discriminator: 1)
!851 = !DILocation(line: 187, column: 54, scope: !850)
!852 = !DILocation(line: 187, column: 51, scope: !850)
!853 = !DILocation(line: 187, column: 9, scope: !850)
!854 = !DILocation(line: 188, column: 7, scope: !845)
!855 = distinct !{!855, !834}
!856 = !DILocation(line: 193, column: 9, scope: !857)
!857 = distinct !DILexicalBlock(scope: !841, file: !511, line: 193, column: 9)
!858 = !DILocation(line: 193, column: 23, scope: !857)
!859 = !DILocation(line: 193, column: 33, scope: !857)
!860 = !DILocation(line: 193, column: 43, scope: !857)
!861 = !DILocation(line: 193, column: 65, scope: !857)
!862 = !DILocation(line: 194, column: 9, scope: !857)
!863 = !DILocation(line: 194, column: 19, scope: !857)
!864 = !DILocation(line: 194, column: 26, scope: !857)
!865 = !DILocation(line: 194, column: 40, scope: !857)
!866 = !DILocation(line: 194, column: 23, scope: !857)
!867 = !DILocation(line: 193, column: 9, scope: !868)
!868 = !DILexicalBlockFile(scope: !841, file: !511, discriminator: 1)
!869 = !DILocation(line: 195, column: 7, scope: !857)
!870 = !DILocation(line: 199, column: 5, scope: !841)
!871 = !DILocation(line: 201, column: 10, scope: !872)
!872 = distinct !DILexicalBlock(scope: !841, file: !511, line: 201, column: 9)
!873 = !DILocation(line: 201, column: 20, scope: !872)
!874 = !DILocation(line: 201, column: 9, scope: !841)
!875 = !DILocation(line: 202, column: 7, scope: !876)
!876 = distinct !DILexicalBlock(scope: !872, file: !511, line: 201, column: 38)
!877 = !DILocation(line: 203, column: 7, scope: !876)
!878 = !DILocation(line: 207, column: 5, scope: !841)
!879 = !DILocation(line: 208, column: 30, scope: !841)
!880 = !DILocation(line: 208, column: 5, scope: !841)
!881 = !DILocation(line: 209, column: 5, scope: !841)
!882 = !DILocation(line: 211, column: 28, scope: !765)
!883 = !DILocation(line: 211, column: 3, scope: !765)
!884 = !DILocation(line: 213, column: 3, scope: !765)
!885 = !DILocation(line: 214, column: 3, scope: !765)
!886 = !DILocation(line: 215, column: 1, scope: !765)
!887 = distinct !DISubprogram(name: "cu_pathname", scope: !511, file: !511, line: 263, type: !888, isLocal: false, isDefinition: true, scopeLine: 263, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !564)
!888 = !DISubroutineType(types: !889)
!889 = !{null, !277, !890}
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64, align: 64)
!891 = !DILocalVariable(name: "argc", arg: 1, scope: !887, file: !511, line: 263, type: !277)
!892 = !DILocation(line: 263, column: 22, scope: !887)
!893 = !DILocalVariable(name: "argv", arg: 2, scope: !887, file: !511, line: 263, type: !890)
!894 = !DILocation(line: 263, column: 35, scope: !887)
!895 = !DILocation(line: 264, column: 28, scope: !887)
!896 = !DILocation(line: 264, column: 3, scope: !887)
!897 = !DILocation(line: 265, column: 1, scope: !887)
!898 = distinct !DISubprogram(name: "tarfileread", scope: !511, file: !511, line: 268, type: !540, isLocal: false, isDefinition: true, scopeLine: 269, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !564)
!899 = !DILocalVariable(name: "tar", arg: 1, scope: !898, file: !511, line: 268, type: !522)
!900 = !DILocation(line: 268, column: 33, scope: !898)
!901 = !DILocalVariable(name: "buf", arg: 2, scope: !898, file: !511, line: 268, type: !270)
!902 = !DILocation(line: 268, column: 44, scope: !898)
!903 = !DILocalVariable(name: "len", arg: 3, scope: !898, file: !511, line: 268, type: !277)
!904 = !DILocation(line: 268, column: 53, scope: !898)
!905 = !DILocalVariable(name: "tc", scope: !898, file: !511, line: 270, type: !272)
!906 = !DILocation(line: 270, column: 22, scope: !898)
!907 = !DILocation(line: 270, column: 48, scope: !898)
!908 = !DILocation(line: 270, column: 53, scope: !898)
!909 = !DILocation(line: 270, column: 27, scope: !898)
!910 = !DILocalVariable(name: "r", scope: !898, file: !511, line: 271, type: !277)
!911 = !DILocation(line: 271, column: 7, scope: !898)
!912 = !DILocation(line: 273, column: 15, scope: !898)
!913 = !DILocation(line: 273, column: 19, scope: !898)
!914 = !DILocation(line: 273, column: 32, scope: !898)
!915 = !DILocation(line: 273, column: 37, scope: !898)
!916 = !DILocation(line: 273, column: 7, scope: !898)
!917 = !DILocation(line: 273, column: 5, scope: !898)
!918 = !DILocation(line: 274, column: 7, scope: !919)
!919 = distinct !DILexicalBlock(scope: !898, file: !511, line: 274, column: 7)
!920 = !DILocation(line: 274, column: 9, scope: !919)
!921 = !DILocation(line: 274, column: 7, scope: !898)
!922 = !DILocation(line: 275, column: 13, scope: !919)
!923 = !DILocation(line: 275, column: 5, scope: !924)
!924 = !DILexicalBlockFile(scope: !919, file: !511, discriminator: 1)
!925 = !DILocation(line: 275, column: 5, scope: !919)
!926 = !DILocation(line: 276, column: 10, scope: !898)
!927 = !DILocation(line: 276, column: 3, scope: !898)
!928 = distinct !DISubprogram(name: "setupfnamevbs", scope: !511, file: !511, line: 600, type: !929, isLocal: false, isDefinition: true, scopeLine: 600, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !564)
!929 = !DISubroutineType(types: !930)
!930 = !{null, !288}
!931 = !DILocalVariable(name: "filename", arg: 1, scope: !928, file: !511, line: 600, type: !288)
!932 = !DILocation(line: 600, column: 32, scope: !928)
!933 = !DILocation(line: 601, column: 3, scope: !928)
!934 = !DILocation(line: 602, column: 28, scope: !928)
!935 = !DILocation(line: 602, column: 45, scope: !928)
!936 = !DILocation(line: 602, column: 38, scope: !928)
!937 = !DILocation(line: 602, column: 3, scope: !938)
!938 = !DILexicalBlockFile(scope: !928, file: !511, discriminator: 1)
!939 = !DILocation(line: 603, column: 3, scope: !928)
!940 = !DILocation(line: 605, column: 3, scope: !928)
!941 = !DILocation(line: 606, column: 31, scope: !928)
!942 = !DILocation(line: 606, column: 48, scope: !928)
!943 = !DILocation(line: 606, column: 41, scope: !928)
!944 = !DILocation(line: 606, column: 3, scope: !938)
!945 = !DILocation(line: 607, column: 3, scope: !928)
!946 = !DILocation(line: 608, column: 3, scope: !928)
!947 = !DILocation(line: 610, column: 3, scope: !928)
!948 = !DILocation(line: 611, column: 31, scope: !928)
!949 = !DILocation(line: 611, column: 48, scope: !928)
!950 = !DILocation(line: 611, column: 41, scope: !928)
!951 = !DILocation(line: 611, column: 3, scope: !938)
!952 = !DILocation(line: 612, column: 3, scope: !928)
!953 = !DILocation(line: 613, column: 3, scope: !928)
!954 = !DILocation(line: 616, column: 17, scope: !928)
!955 = !DILocation(line: 616, column: 33, scope: !928)
!956 = !DILocation(line: 616, column: 49, scope: !928)
!957 = !DILocation(line: 615, column: 3, scope: !928)
!958 = !DILocation(line: 617, column: 1, scope: !928)
!959 = !DILocalVariable(name: "tar", arg: 1, scope: !519, file: !511, line: 666, type: !522)
!960 = !DILocation(line: 666, column: 31, scope: !519)
!961 = !DILocalVariable(name: "ti", arg: 2, scope: !519, file: !511, line: 666, type: !550)
!962 = !DILocation(line: 666, column: 54, scope: !519)
!963 = !DILocalVariable(name: "usename", scope: !519, file: !511, line: 669, type: !288)
!964 = !DILocation(line: 669, column: 15, scope: !519)
!965 = !DILocalVariable(name: "usenode", scope: !519, file: !511, line: 670, type: !425)
!966 = !DILocation(line: 670, column: 25, scope: !519)
!967 = !DILocalVariable(name: "conff", scope: !519, file: !511, line: 672, type: !356)
!968 = !DILocation(line: 672, column: 20, scope: !519)
!969 = !DILocalVariable(name: "tc", scope: !519, file: !511, line: 673, type: !272)
!970 = !DILocation(line: 673, column: 22, scope: !519)
!971 = !DILocation(line: 673, column: 27, scope: !519)
!972 = !DILocation(line: 673, column: 32, scope: !519)
!973 = !DILocalVariable(name: "existingdir", scope: !519, file: !511, line: 674, type: !328)
!974 = !DILocation(line: 674, column: 7, scope: !519)
!975 = !DILocalVariable(name: "keepexisting", scope: !519, file: !511, line: 674, type: !328)
!976 = !DILocation(line: 674, column: 20, scope: !519)
!977 = !DILocalVariable(name: "refcounting", scope: !519, file: !511, line: 675, type: !328)
!978 = !DILocation(line: 675, column: 7, scope: !519)
!979 = !DILocalVariable(name: "oldhash", scope: !519, file: !511, line: 676, type: !980)
!980 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 264, align: 8, elements: !981)
!981 = !{!982}
!982 = !DISubrange(count: 33)
!983 = !DILocation(line: 676, column: 8, scope: !519)
!984 = !DILocalVariable(name: "statr", scope: !519, file: !511, line: 677, type: !277)
!985 = !DILocation(line: 677, column: 7, scope: !519)
!986 = !DILocalVariable(name: "r", scope: !519, file: !511, line: 678, type: !987)
!987 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !446, line: 109, baseType: !988)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !448, line: 172, baseType: !489)
!989 = !DILocation(line: 678, column: 11, scope: !519)
!990 = !DILocalVariable(name: "stab", scope: !519, file: !511, line: 679, type: !991)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !992, line: 46, size: 1152, align: 64, elements: !993)
!992 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!993 = !{!994, !995, !996, !998, !999, !1000, !1001, !1002, !1003, !1004, !1006, !1008, !1014, !1015, !1016}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !991, file: !992, line: 48, baseType: !481, size: 64, align: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !991, file: !992, line: 53, baseType: !485, size: 64, align: 64, offset: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !991, file: !992, line: 61, baseType: !997, size: 64, align: 64, offset: 128)
!997 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !448, line: 130, baseType: !482)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !991, file: !992, line: 62, baseType: !454, size: 32, align: 32, offset: 192)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !991, file: !992, line: 64, baseType: !447, size: 32, align: 32, offset: 224)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !991, file: !992, line: 65, baseType: !451, size: 32, align: 32, offset: 256)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !991, file: !992, line: 67, baseType: !277, size: 32, align: 32, offset: 288)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !991, file: !992, line: 69, baseType: !481, size: 64, align: 64, offset: 320)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !991, file: !992, line: 74, baseType: !488, size: 64, align: 64, offset: 384)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !991, file: !992, line: 78, baseType: !1005, size: 64, align: 64, offset: 448)
!1005 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !448, line: 153, baseType: !489)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !991, file: !992, line: 80, baseType: !1007, size: 64, align: 64, offset: 512)
!1007 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !448, line: 158, baseType: !489)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !991, file: !992, line: 91, baseType: !1009, size: 128, align: 64, offset: 576)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !560, line: 120, size: 128, align: 64, elements: !1010)
!1010 = !{!1011, !1012}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1009, file: !560, line: 122, baseType: !561, size: 64, align: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1009, file: !560, line: 123, baseType: !1013, size: 64, align: 64, offset: 64)
!1013 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !448, line: 175, baseType: !489)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !991, file: !992, line: 92, baseType: !1009, size: 128, align: 64, offset: 704)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !991, file: !992, line: 93, baseType: !1009, size: 128, align: 64, offset: 832)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !991, file: !992, line: 106, baseType: !1017, size: 192, align: 64, offset: 960)
!1017 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1013, size: 192, align: 64, elements: !1018)
!1018 = !{!1019}
!1019 = !DISubrange(count: 3)
!1020 = !DILocation(line: 679, column: 15, scope: !519)
!1021 = !DILocalVariable(name: "stabtmp", scope: !519, file: !511, line: 679, type: !991)
!1022 = !DILocation(line: 679, column: 21, scope: !519)
!1023 = !DILocalVariable(name: "nodestat", scope: !519, file: !511, line: 680, type: !441)
!1024 = !DILocation(line: 680, column: 20, scope: !519)
!1025 = !DILocalVariable(name: "nifd", scope: !519, file: !511, line: 681, type: !420)
!1026 = !DILocation(line: 681, column: 30, scope: !519)
!1027 = !DILocalVariable(name: "oldnifd", scope: !519, file: !511, line: 681, type: !498)
!1028 = !DILocation(line: 681, column: 38, scope: !519)
!1029 = !DILocalVariable(name: "divpkgset", scope: !519, file: !511, line: 682, type: !283)
!1030 = !DILocation(line: 682, column: 18, scope: !519)
!1031 = !DILocalVariable(name: "otherpkg", scope: !519, file: !511, line: 683, type: !279)
!1032 = !DILocation(line: 683, column: 19, scope: !519)
!1033 = !DILocation(line: 685, column: 32, scope: !519)
!1034 = !DILocation(line: 685, column: 3, scope: !519)
!1035 = !DILocation(line: 688, column: 14, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !519, file: !511, line: 688, column: 7)
!1037 = !DILocation(line: 688, column: 18, scope: !1036)
!1038 = !DILocation(line: 688, column: 7, scope: !1036)
!1039 = !DILocation(line: 688, column: 7, scope: !519)
!1040 = !DILocation(line: 689, column: 12, scope: !1036)
!1041 = !DILocation(line: 689, column: 76, scope: !1036)
!1042 = !DILocation(line: 689, column: 80, scope: !1036)
!1043 = !DILocation(line: 689, column: 5, scope: !1044)
!1044 = !DILexicalBlockFile(scope: !1036, file: !511, discriminator: 1)
!1045 = !DILocation(line: 689, column: 5, scope: !1036)
!1046 = !DILocation(line: 694, column: 13, scope: !519)
!1047 = !DILocation(line: 694, column: 17, scope: !519)
!1048 = !DILocation(line: 694, column: 33, scope: !519)
!1049 = !DILocation(line: 694, column: 11, scope: !519)
!1050 = !DILocation(line: 695, column: 39, scope: !519)
!1051 = !DILocation(line: 695, column: 43, scope: !519)
!1052 = !DILocation(line: 696, column: 58, scope: !519)
!1053 = !DILocation(line: 696, column: 62, scope: !519)
!1054 = !DILocation(line: 696, column: 38, scope: !519)
!1055 = !DILocation(line: 695, column: 10, scope: !519)
!1056 = !DILocation(line: 695, column: 8, scope: !519)
!1057 = !DILocation(line: 697, column: 3, scope: !519)
!1058 = !DILocation(line: 697, column: 9, scope: !519)
!1059 = !DILocation(line: 697, column: 19, scope: !519)
!1060 = !DILocation(line: 697, column: 25, scope: !519)
!1061 = !DILocation(line: 702, column: 9, scope: !519)
!1062 = !DILocation(line: 702, column: 13, scope: !519)
!1063 = !DILocation(line: 702, column: 25, scope: !519)
!1064 = !DILocation(line: 702, column: 29, scope: !519)
!1065 = !DILocation(line: 702, column: 34, scope: !519)
!1066 = !DILocation(line: 702, column: 19, scope: !519)
!1067 = !DILocation(line: 703, column: 19, scope: !519)
!1068 = !DILocation(line: 703, column: 23, scope: !519)
!1069 = !DILocation(line: 703, column: 28, scope: !519)
!1070 = !DILocation(line: 703, column: 43, scope: !519)
!1071 = !DILocation(line: 703, column: 47, scope: !519)
!1072 = !DILocation(line: 703, column: 52, scope: !519)
!1073 = !DILocation(line: 704, column: 9, scope: !519)
!1074 = !DILocation(line: 704, column: 13, scope: !519)
!1075 = !DILocation(line: 705, column: 9, scope: !519)
!1076 = !DILocation(line: 705, column: 13, scope: !519)
!1077 = !DILocation(line: 705, column: 18, scope: !519)
!1078 = !DILocation(line: 705, column: 25, scope: !519)
!1079 = !DILocation(line: 705, column: 28, scope: !1080)
!1080 = !DILexicalBlockFile(scope: !519, file: !511, discriminator: 1)
!1081 = !DILocation(line: 705, column: 32, scope: !1080)
!1082 = !DILocation(line: 705, column: 37, scope: !1080)
!1083 = !DILocation(line: 705, column: 9, scope: !1080)
!1084 = !DILocation(line: 705, column: 56, scope: !1085)
!1085 = !DILexicalBlockFile(scope: !519, file: !511, discriminator: 2)
!1086 = !DILocation(line: 705, column: 60, scope: !1085)
!1087 = !DILocation(line: 705, column: 65, scope: !1085)
!1088 = !DILocation(line: 705, column: 46, scope: !1085)
!1089 = !DILocation(line: 705, column: 9, scope: !1085)
!1090 = !DILocation(line: 705, column: 9, scope: !1091)
!1091 = !DILexicalBlockFile(scope: !519, file: !511, discriminator: 3)
!1092 = !DILocation(line: 705, column: 9, scope: !1093)
!1093 = !DILexicalBlockFile(scope: !519, file: !511, discriminator: 4)
!1094 = !DILocation(line: 706, column: 9, scope: !519)
!1095 = !DILocation(line: 706, column: 13, scope: !519)
!1096 = !DILocation(line: 707, column: 9, scope: !519)
!1097 = !DILocation(line: 707, column: 15, scope: !519)
!1098 = !DILocation(line: 707, column: 25, scope: !519)
!1099 = !DILocation(line: 707, column: 31, scope: !519)
!1100 = !DILocation(line: 707, column: 37, scope: !519)
!1101 = !DILocation(line: 707, column: 47, scope: !519)
!1102 = !DILocation(line: 708, column: 9, scope: !519)
!1103 = !DILocation(line: 708, column: 15, scope: !519)
!1104 = !DILocation(line: 708, column: 25, scope: !519)
!1105 = !DILocation(line: 708, column: 32, scope: !519)
!1106 = !DILocation(line: 708, column: 35, scope: !1080)
!1107 = !DILocation(line: 708, column: 41, scope: !1080)
!1108 = !DILocation(line: 708, column: 51, scope: !1080)
!1109 = !DILocation(line: 708, column: 59, scope: !1080)
!1110 = !DILocation(line: 708, column: 9, scope: !1080)
!1111 = !DILocation(line: 709, column: 11, scope: !519)
!1112 = !DILocation(line: 709, column: 17, scope: !519)
!1113 = !DILocation(line: 709, column: 27, scope: !519)
!1114 = !DILocation(line: 709, column: 35, scope: !519)
!1115 = !DILocation(line: 709, column: 47, scope: !519)
!1116 = !DILocation(line: 708, column: 9, scope: !1085)
!1117 = !DILocation(line: 708, column: 9, scope: !1091)
!1118 = !DILocation(line: 708, column: 9, scope: !1093)
!1119 = !DILocation(line: 699, column: 3, scope: !519)
!1120 = !DILocation(line: 711, column: 7, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !519, file: !511, line: 711, column: 7)
!1122 = !DILocation(line: 711, column: 13, scope: !1121)
!1123 = !DILocation(line: 711, column: 23, scope: !1121)
!1124 = !DILocation(line: 711, column: 30, scope: !1121)
!1125 = !DILocation(line: 711, column: 33, scope: !1126)
!1126 = !DILexicalBlockFile(scope: !1121, file: !511, discriminator: 1)
!1127 = !DILocation(line: 711, column: 39, scope: !1126)
!1128 = !DILocation(line: 711, column: 49, scope: !1126)
!1129 = !DILocation(line: 711, column: 57, scope: !1126)
!1130 = !DILocation(line: 711, column: 7, scope: !1126)
!1131 = !DILocation(line: 712, column: 17, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1121, file: !511, line: 711, column: 67)
!1133 = !DILocation(line: 712, column: 23, scope: !1132)
!1134 = !DILocation(line: 712, column: 33, scope: !1132)
!1135 = !DILocation(line: 712, column: 41, scope: !1132)
!1136 = !DILocation(line: 712, column: 15, scope: !1132)
!1137 = !DILocation(line: 714, column: 9, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1132, file: !511, line: 714, column: 9)
!1139 = !DILocation(line: 714, column: 9, scope: !1132)
!1140 = !DILocation(line: 716, column: 19, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1138, file: !511, line: 714, column: 20)
!1142 = !DILocation(line: 718, column: 19, scope: !1141)
!1143 = !DILocation(line: 718, column: 25, scope: !1141)
!1144 = !DILocation(line: 718, column: 35, scope: !1141)
!1145 = !DILocation(line: 718, column: 41, scope: !1141)
!1146 = !DILocation(line: 718, column: 47, scope: !1141)
!1147 = !DILocation(line: 718, column: 57, scope: !1141)
!1148 = !DILocation(line: 718, column: 65, scope: !1141)
!1149 = !DILocation(line: 718, column: 75, scope: !1141)
!1150 = !DILocation(line: 719, column: 19, scope: !1141)
!1151 = !DILocation(line: 719, column: 30, scope: !1141)
!1152 = !DILocation(line: 715, column: 7, scope: !1141)
!1153 = !DILocation(line: 720, column: 5, scope: !1141)
!1154 = !DILocation(line: 722, column: 19, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1138, file: !511, line: 720, column: 12)
!1156 = !DILocation(line: 724, column: 19, scope: !1155)
!1157 = !DILocation(line: 724, column: 25, scope: !1155)
!1158 = !DILocation(line: 724, column: 35, scope: !1155)
!1159 = !DILocation(line: 724, column: 41, scope: !1155)
!1160 = !DILocation(line: 724, column: 47, scope: !1155)
!1161 = !DILocation(line: 724, column: 57, scope: !1155)
!1162 = !DILocation(line: 724, column: 65, scope: !1155)
!1163 = !DILocation(line: 724, column: 75, scope: !1155)
!1164 = !DILocation(line: 721, column: 7, scope: !1155)
!1165 = !DILocation(line: 726, column: 3, scope: !1132)
!1166 = !DILocation(line: 728, column: 7, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !519, file: !511, line: 728, column: 7)
!1168 = !DILocation(line: 728, column: 13, scope: !1167)
!1169 = !DILocation(line: 728, column: 23, scope: !1167)
!1170 = !DILocation(line: 728, column: 7, scope: !519)
!1171 = !DILocation(line: 729, column: 17, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1167, file: !511, line: 728, column: 37)
!1173 = !DILocation(line: 729, column: 23, scope: !1172)
!1174 = !DILocation(line: 729, column: 33, scope: !1172)
!1175 = !DILocation(line: 729, column: 16, scope: !1172)
!1176 = !DILocation(line: 730, column: 22, scope: !1172)
!1177 = !DILocation(line: 730, column: 26, scope: !1172)
!1178 = !DILocation(line: 730, column: 31, scope: !1172)
!1179 = !DILocation(line: 730, column: 36, scope: !1172)
!1180 = !DILocation(line: 730, column: 14, scope: !1172)
!1181 = !DILocation(line: 730, column: 19, scope: !1172)
!1182 = !DILocation(line: 731, column: 3, scope: !1172)
!1183 = !DILocation(line: 732, column: 16, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1167, file: !511, line: 731, column: 10)
!1185 = !DILocation(line: 732, column: 20, scope: !1184)
!1186 = !DILocation(line: 735, column: 27, scope: !519)
!1187 = !DILocation(line: 735, column: 33, scope: !519)
!1188 = !DILocation(line: 735, column: 43, scope: !519)
!1189 = !DILocation(line: 735, column: 47, scope: !519)
!1190 = !DILocation(line: 735, column: 53, scope: !519)
!1191 = !DILocation(line: 735, column: 57, scope: !519)
!1192 = !DILocation(line: 735, column: 62, scope: !519)
!1193 = !DILocation(line: 735, column: 13, scope: !519)
!1194 = !DILocation(line: 735, column: 11, scope: !519)
!1195 = !DILocation(line: 736, column: 13, scope: !519)
!1196 = !DILocation(line: 736, column: 22, scope: !519)
!1197 = !DILocation(line: 736, column: 11, scope: !519)
!1198 = !DILocation(line: 738, column: 22, scope: !519)
!1199 = !DILocation(line: 738, column: 31, scope: !519)
!1200 = !DILocation(line: 738, column: 35, scope: !519)
!1201 = !DILocation(line: 738, column: 3, scope: !519)
!1202 = !DILocation(line: 740, column: 7, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !519, file: !511, line: 740, column: 7)
!1204 = !DILocation(line: 740, column: 13, scope: !1203)
!1205 = !DILocation(line: 740, column: 23, scope: !1203)
!1206 = !DILocation(line: 740, column: 29, scope: !1203)
!1207 = !DILocation(line: 740, column: 7, scope: !519)
!1208 = !DILocation(line: 743, column: 20, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1210, file: !511, line: 743, column: 9)
!1210 = distinct !DILexicalBlock(scope: !1203, file: !511, line: 740, column: 47)
!1211 = !DILocation(line: 743, column: 24, scope: !1209)
!1212 = !DILocation(line: 743, column: 43, scope: !1209)
!1213 = !DILocation(line: 743, column: 9, scope: !1209)
!1214 = !DILocation(line: 743, column: 9, scope: !1210)
!1215 = !DILocation(line: 744, column: 28, scope: !1209)
!1216 = !DILocation(line: 744, column: 14, scope: !1209)
!1217 = !DILocation(line: 744, column: 7, scope: !1209)
!1218 = !DILocation(line: 745, column: 61, scope: !1210)
!1219 = !DILocation(line: 745, column: 5, scope: !1210)
!1220 = !DILocation(line: 746, column: 3, scope: !1210)
!1221 = !DILocation(line: 748, column: 17, scope: !519)
!1222 = !DILocation(line: 748, column: 3, scope: !519)
!1223 = !DILocation(line: 750, column: 24, scope: !519)
!1224 = !DILocation(line: 750, column: 10, scope: !519)
!1225 = !DILocation(line: 750, column: 8, scope: !519)
!1226 = !DILocation(line: 751, column: 7, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !519, file: !511, line: 751, column: 7)
!1228 = !DILocation(line: 751, column: 7, scope: !519)
!1229 = !DILocation(line: 753, column: 10, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1231, file: !511, line: 753, column: 8)
!1231 = distinct !DILexicalBlock(scope: !1227, file: !511, line: 751, column: 14)
!1232 = !DILocation(line: 753, column: 9, scope: !1230)
!1233 = !DILocation(line: 753, column: 14, scope: !1230)
!1234 = !DILocation(line: 753, column: 24, scope: !1230)
!1235 = !DILocation(line: 753, column: 29, scope: !1236)
!1236 = !DILexicalBlockFile(scope: !1230, file: !511, discriminator: 1)
!1237 = !DILocation(line: 753, column: 28, scope: !1236)
!1238 = !DILocation(line: 753, column: 33, scope: !1236)
!1239 = !DILocation(line: 753, column: 8, scope: !1236)
!1240 = !DILocation(line: 754, column: 15, scope: !1230)
!1241 = !DILocation(line: 755, column: 15, scope: !1230)
!1242 = !DILocation(line: 755, column: 19, scope: !1230)
!1243 = !DILocation(line: 754, column: 7, scope: !1236)
!1244 = !DILocation(line: 754, column: 7, scope: !1230)
!1245 = !DILocation(line: 760, column: 27, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1231, file: !511, line: 760, column: 9)
!1247 = !DILocation(line: 760, column: 39, scope: !1246)
!1248 = !DILocation(line: 760, column: 9, scope: !1246)
!1249 = !DILocation(line: 760, column: 9, scope: !1231)
!1250 = !DILocation(line: 761, column: 12, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !511, line: 761, column: 10)
!1252 = distinct !DILexicalBlock(scope: !1246, file: !511, line: 760, column: 45)
!1253 = !DILocation(line: 761, column: 11, scope: !1251)
!1254 = !DILocation(line: 761, column: 16, scope: !1251)
!1255 = !DILocation(line: 761, column: 26, scope: !1251)
!1256 = !DILocation(line: 761, column: 31, scope: !1257)
!1257 = !DILexicalBlockFile(scope: !1251, file: !511, discriminator: 1)
!1258 = !DILocation(line: 761, column: 30, scope: !1257)
!1259 = !DILocation(line: 761, column: 35, scope: !1257)
!1260 = !DILocation(line: 761, column: 10, scope: !1257)
!1261 = !DILocation(line: 762, column: 17, scope: !1251)
!1262 = !DILocation(line: 763, column: 50, scope: !1251)
!1263 = !DILocation(line: 763, column: 54, scope: !1251)
!1264 = !DILocation(line: 762, column: 9, scope: !1257)
!1265 = !DILocation(line: 762, column: 9, scope: !1251)
!1266 = !DILocation(line: 764, column: 7, scope: !1252)
!1267 = !DILocation(line: 765, column: 5, scope: !1252)
!1268 = !DILocation(line: 766, column: 7, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1246, file: !511, line: 765, column: 12)
!1270 = !DILocation(line: 767, column: 28, scope: !1269)
!1271 = !DILocation(line: 767, column: 14, scope: !1269)
!1272 = !DILocation(line: 767, column: 12, scope: !1269)
!1273 = !DILocation(line: 768, column: 11, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1269, file: !511, line: 768, column: 11)
!1275 = !DILocation(line: 768, column: 11, scope: !1269)
!1276 = !DILocation(line: 769, column: 17, scope: !1274)
!1277 = !DILocation(line: 770, column: 40, scope: !1274)
!1278 = !DILocation(line: 770, column: 44, scope: !1274)
!1279 = !DILocation(line: 769, column: 9, scope: !1280)
!1280 = !DILexicalBlockFile(scope: !1274, file: !511, discriminator: 1)
!1281 = !DILocation(line: 769, column: 9, scope: !1274)
!1282 = !DILocation(line: 772, column: 3, scope: !1231)
!1283 = !DILocation(line: 773, column: 5, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1227, file: !511, line: 772, column: 10)
!1285 = !DILocation(line: 779, column: 15, scope: !519)
!1286 = !DILocation(line: 780, column: 11, scope: !519)
!1287 = !DILocation(line: 780, column: 15, scope: !519)
!1288 = !DILocation(line: 780, column: 3, scope: !519)
!1289 = !DILocation(line: 783, column: 10, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1291, file: !511, line: 783, column: 9)
!1291 = distinct !DILexicalBlock(scope: !519, file: !511, line: 780, column: 21)
!1292 = !DILocation(line: 783, column: 16, scope: !1290)
!1293 = !DILocation(line: 783, column: 23, scope: !1294)
!1294 = !DILexicalBlockFile(scope: !1290, file: !511, discriminator: 1)
!1295 = !DILocation(line: 783, column: 21, scope: !1294)
!1296 = !DILocation(line: 783, column: 32, scope: !1294)
!1297 = !DILocation(line: 783, column: 9, scope: !1294)
!1298 = !DILocation(line: 784, column: 7, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1290, file: !511, line: 783, column: 41)
!1300 = !DILocation(line: 785, column: 19, scope: !1299)
!1301 = !DILocation(line: 786, column: 5, scope: !1299)
!1302 = !DILocation(line: 786, column: 17, scope: !1303)
!1303 = !DILexicalBlockFile(scope: !1304, file: !511, discriminator: 1)
!1304 = distinct !DILexicalBlock(scope: !1290, file: !511, line: 786, column: 16)
!1305 = !DILocation(line: 786, column: 23, scope: !1303)
!1306 = !DILocation(line: 786, column: 30, scope: !1307)
!1307 = !DILexicalBlockFile(scope: !1304, file: !511, discriminator: 2)
!1308 = !DILocation(line: 786, column: 28, scope: !1307)
!1309 = !DILocation(line: 786, column: 39, scope: !1307)
!1310 = !DILocation(line: 786, column: 16, scope: !1307)
!1311 = !DILocation(line: 787, column: 33, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1313, file: !511, line: 787, column: 11)
!1313 = distinct !DILexicalBlock(scope: !1304, file: !511, line: 786, column: 48)
!1314 = !DILocation(line: 787, column: 45, scope: !1312)
!1315 = !DILocation(line: 787, column: 11, scope: !1312)
!1316 = !DILocation(line: 787, column: 11, scope: !1313)
!1317 = !DILocation(line: 788, column: 21, scope: !1312)
!1318 = !DILocation(line: 788, column: 9, scope: !1312)
!1319 = !DILocation(line: 789, column: 5, scope: !1313)
!1320 = !DILocation(line: 790, column: 5, scope: !1291)
!1321 = !DILocation(line: 793, column: 23, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1291, file: !511, line: 793, column: 9)
!1323 = !DILocation(line: 793, column: 10, scope: !1322)
!1324 = !DILocation(line: 793, column: 37, scope: !1322)
!1325 = !DILocation(line: 793, column: 47, scope: !1326)
!1326 = !DILexicalBlockFile(scope: !1322, file: !511, discriminator: 1)
!1327 = !DILocation(line: 793, column: 42, scope: !1326)
!1328 = !DILocation(line: 793, column: 53, scope: !1326)
!1329 = !DILocation(line: 793, column: 9, scope: !1326)
!1330 = !DILocation(line: 794, column: 7, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1322, file: !511, line: 793, column: 65)
!1332 = !DILocation(line: 795, column: 19, scope: !1331)
!1333 = !DILocation(line: 796, column: 5, scope: !1331)
!1334 = !DILocation(line: 797, column: 5, scope: !1291)
!1335 = !DILocation(line: 803, column: 5, scope: !1291)
!1336 = !DILocation(line: 805, column: 12, scope: !1291)
!1337 = !DILocation(line: 806, column: 12, scope: !1291)
!1338 = !DILocation(line: 806, column: 16, scope: !1291)
!1339 = !DILocation(line: 806, column: 22, scope: !1291)
!1340 = !DILocation(line: 806, column: 26, scope: !1291)
!1341 = !DILocation(line: 805, column: 5, scope: !1342)
!1342 = !DILexicalBlockFile(scope: !1291, file: !511, discriminator: 1)
!1343 = !DILocation(line: 805, column: 5, scope: !1291)
!1344 = !DILocation(line: 809, column: 16, scope: !519)
!1345 = !DILocation(line: 810, column: 15, scope: !519)
!1346 = !DILocation(line: 811, column: 8, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !519, file: !511, line: 811, column: 7)
!1348 = !DILocation(line: 811, column: 7, scope: !519)
!1349 = !DILocalVariable(name: "iter", scope: !1350, file: !511, line: 812, type: !775)
!1350 = distinct !DILexicalBlock(scope: !1347, file: !511, line: 811, column: 21)
!1351 = !DILocation(line: 812, column: 33, scope: !1350)
!1352 = !DILocation(line: 814, column: 36, scope: !1350)
!1353 = !DILocation(line: 814, column: 42, scope: !1350)
!1354 = !DILocation(line: 814, column: 12, scope: !1350)
!1355 = !DILocation(line: 814, column: 10, scope: !1350)
!1356 = !DILocation(line: 815, column: 5, scope: !1350)
!1357 = !DILocation(line: 815, column: 49, scope: !1358)
!1358 = !DILexicalBlockFile(scope: !1350, file: !511, discriminator: 1)
!1359 = !DILocation(line: 815, column: 24, scope: !1358)
!1360 = !DILocation(line: 815, column: 22, scope: !1358)
!1361 = !DILocation(line: 815, column: 5, scope: !1358)
!1362 = !DILocation(line: 816, column: 11, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1364, file: !511, line: 816, column: 11)
!1364 = distinct !DILexicalBlock(scope: !1350, file: !511, line: 815, column: 57)
!1365 = !DILocation(line: 816, column: 23, scope: !1363)
!1366 = !DILocation(line: 816, column: 27, scope: !1363)
!1367 = !DILocation(line: 816, column: 20, scope: !1363)
!1368 = !DILocation(line: 816, column: 11, scope: !1364)
!1369 = !DILocation(line: 817, column: 9, scope: !1363)
!1370 = distinct !{!1370, !1356}
!1371 = !DILocation(line: 819, column: 22, scope: !1364)
!1372 = !DILocation(line: 819, column: 13, scope: !1364)
!1373 = !DILocation(line: 818, column: 7, scope: !1364)
!1374 = !DILocation(line: 824, column: 11, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1364, file: !511, line: 824, column: 11)
!1376 = !DILocation(line: 824, column: 21, scope: !1375)
!1377 = !DILocation(line: 824, column: 28, scope: !1375)
!1378 = !DILocation(line: 824, column: 32, scope: !1375)
!1379 = !DILocation(line: 824, column: 37, scope: !1375)
!1380 = !DILocation(line: 824, column: 25, scope: !1375)
!1381 = !DILocation(line: 824, column: 41, scope: !1375)
!1382 = !DILocation(line: 825, column: 11, scope: !1375)
!1383 = !DILocation(line: 825, column: 21, scope: !1375)
!1384 = !DILocation(line: 825, column: 31, scope: !1375)
!1385 = !DILocation(line: 825, column: 41, scope: !1375)
!1386 = !DILocation(line: 825, column: 63, scope: !1375)
!1387 = !DILocation(line: 826, column: 11, scope: !1375)
!1388 = !DILocation(line: 826, column: 15, scope: !1375)
!1389 = !DILocation(line: 826, column: 20, scope: !1375)
!1390 = !DILocation(line: 826, column: 30, scope: !1375)
!1391 = !DILocation(line: 826, column: 40, scope: !1375)
!1392 = !DILocation(line: 824, column: 11, scope: !1393)
!1393 = !DILexicalBlockFile(scope: !1364, file: !511, discriminator: 1)
!1394 = !DILocation(line: 827, column: 13, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1396, file: !511, line: 827, column: 13)
!1396 = distinct !DILexicalBlock(scope: !1375, file: !511, line: 826, column: 63)
!1397 = !DILocation(line: 827, column: 19, scope: !1395)
!1398 = !DILocation(line: 827, column: 24, scope: !1395)
!1399 = !DILocation(line: 827, column: 27, scope: !1400)
!1400 = !DILexicalBlockFile(scope: !1395, file: !511, discriminator: 1)
!1401 = !DILocation(line: 827, column: 31, scope: !1400)
!1402 = !DILocation(line: 827, column: 13, scope: !1400)
!1403 = !DILocation(line: 828, column: 23, scope: !1395)
!1404 = !DILocation(line: 828, column: 11, scope: !1395)
!1405 = !DILocation(line: 830, column: 24, scope: !1396)
!1406 = !DILocation(line: 830, column: 15, scope: !1396)
!1407 = !DILocation(line: 831, column: 32, scope: !1396)
!1408 = !DILocation(line: 831, column: 42, scope: !1396)
!1409 = !DILocation(line: 831, column: 52, scope: !1396)
!1410 = !DILocation(line: 831, column: 15, scope: !1396)
!1411 = !DILocation(line: 832, column: 15, scope: !1396)
!1412 = !DILocation(line: 832, column: 19, scope: !1396)
!1413 = !DILocation(line: 829, column: 9, scope: !1396)
!1414 = !DILocation(line: 833, column: 9, scope: !1396)
!1415 = !DILocation(line: 836, column: 11, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1364, file: !511, line: 836, column: 11)
!1417 = !DILocation(line: 836, column: 17, scope: !1416)
!1418 = !DILocation(line: 836, column: 27, scope: !1416)
!1419 = !DILocation(line: 836, column: 34, scope: !1416)
!1420 = !DILocation(line: 836, column: 37, scope: !1421)
!1421 = !DILexicalBlockFile(scope: !1416, file: !511, discriminator: 1)
!1422 = !DILocation(line: 836, column: 43, scope: !1421)
!1423 = !DILocation(line: 836, column: 53, scope: !1421)
!1424 = !DILocation(line: 836, column: 61, scope: !1421)
!1425 = !DILocation(line: 836, column: 11, scope: !1421)
!1426 = !DILocation(line: 840, column: 21, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1416, file: !511, line: 836, column: 73)
!1428 = !DILocation(line: 840, column: 27, scope: !1427)
!1429 = !DILocation(line: 840, column: 37, scope: !1427)
!1430 = !DILocation(line: 840, column: 45, scope: !1427)
!1431 = !DILocation(line: 840, column: 19, scope: !1427)
!1432 = !DILocation(line: 842, column: 15, scope: !1427)
!1433 = !DILocation(line: 842, column: 27, scope: !1434)
!1434 = !DILexicalBlockFile(scope: !1427, file: !511, discriminator: 1)
!1435 = !DILocation(line: 842, column: 38, scope: !1434)
!1436 = !DILocation(line: 842, column: 15, scope: !1434)
!1437 = !DILocation(line: 842, column: 15, scope: !1438)
!1438 = !DILexicalBlockFile(scope: !1427, file: !511, discriminator: 2)
!1439 = !DILocation(line: 842, column: 15, scope: !1440)
!1440 = !DILexicalBlockFile(scope: !1427, file: !511, discriminator: 3)
!1441 = !DILocation(line: 841, column: 9, scope: !1427)
!1442 = !DILocation(line: 843, column: 13, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1427, file: !511, line: 843, column: 13)
!1444 = !DILocation(line: 843, column: 23, scope: !1443)
!1445 = !DILocation(line: 843, column: 30, scope: !1443)
!1446 = !DILocation(line: 843, column: 27, scope: !1443)
!1447 = !DILocation(line: 843, column: 40, scope: !1443)
!1448 = !DILocation(line: 843, column: 43, scope: !1449)
!1449 = !DILexicalBlockFile(scope: !1443, file: !511, discriminator: 1)
!1450 = !DILocation(line: 843, column: 47, scope: !1449)
!1451 = !DILocation(line: 843, column: 52, scope: !1449)
!1452 = !DILocation(line: 843, column: 59, scope: !1449)
!1453 = !DILocation(line: 843, column: 56, scope: !1449)
!1454 = !DILocation(line: 843, column: 13, scope: !1449)
!1455 = !DILocation(line: 844, column: 11, scope: !1443)
!1456 = !DILocation(line: 845, column: 7, scope: !1427)
!1457 = !DILocation(line: 851, column: 11, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1364, file: !511, line: 851, column: 11)
!1459 = !DILocation(line: 851, column: 17, scope: !1458)
!1460 = !DILocation(line: 851, column: 22, scope: !1458)
!1461 = !DILocation(line: 851, column: 25, scope: !1462)
!1462 = !DILexicalBlockFile(scope: !1458, file: !511, discriminator: 1)
!1463 = !DILocation(line: 851, column: 29, scope: !1462)
!1464 = !DILocation(line: 851, column: 34, scope: !1462)
!1465 = !DILocation(line: 851, column: 11, scope: !1462)
!1466 = !DILocation(line: 852, column: 9, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1458, file: !511, line: 851, column: 55)
!1468 = !DILocation(line: 853, column: 9, scope: !1467)
!1469 = !DILocation(line: 856, column: 33, scope: !1364)
!1470 = !DILocation(line: 856, column: 7, scope: !1364)
!1471 = !DILocation(line: 859, column: 15, scope: !1364)
!1472 = !DILocation(line: 859, column: 25, scope: !1364)
!1473 = !DILocation(line: 859, column: 37, scope: !1364)
!1474 = !DILocation(line: 859, column: 7, scope: !1364)
!1475 = !DILocation(line: 861, column: 22, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1364, file: !511, line: 859, column: 60)
!1477 = !DILocation(line: 861, column: 9, scope: !1476)
!1478 = !DILocation(line: 864, column: 9, scope: !1476)
!1479 = !DILocation(line: 870, column: 11, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1364, file: !511, line: 870, column: 11)
!1481 = !DILocation(line: 870, column: 21, scope: !1480)
!1482 = !DILocation(line: 870, column: 28, scope: !1480)
!1483 = !DILocation(line: 870, column: 11, scope: !1364)
!1484 = !DILocation(line: 871, column: 9, scope: !1480)
!1485 = !DILocation(line: 874, column: 11, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1364, file: !511, line: 874, column: 11)
!1487 = !DILocation(line: 874, column: 21, scope: !1486)
!1488 = !DILocation(line: 874, column: 33, scope: !1486)
!1489 = !DILocation(line: 874, column: 40, scope: !1486)
!1490 = !DILocation(line: 874, column: 11, scope: !1364)
!1491 = !DILocation(line: 875, column: 9, scope: !1486)
!1492 = !DILocation(line: 879, column: 12, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1364, file: !511, line: 879, column: 11)
!1494 = !DILocation(line: 879, column: 18, scope: !1493)
!1495 = !DILocation(line: 879, column: 28, scope: !1493)
!1496 = !DILocation(line: 879, column: 34, scope: !1493)
!1497 = !DILocation(line: 879, column: 52, scope: !1493)
!1498 = !DILocation(line: 880, column: 12, scope: !1493)
!1499 = !DILocation(line: 880, column: 18, scope: !1493)
!1500 = !DILocation(line: 880, column: 25, scope: !1501)
!1501 = !DILexicalBlockFile(scope: !1493, file: !511, discriminator: 1)
!1502 = !DILocation(line: 880, column: 23, scope: !1501)
!1503 = !DILocation(line: 880, column: 34, scope: !1501)
!1504 = !DILocation(line: 879, column: 11, scope: !1393)
!1505 = !DILocation(line: 881, column: 22, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1507, file: !511, line: 881, column: 9)
!1507 = distinct !DILexicalBlock(scope: !1493, file: !511, line: 880, column: 43)
!1508 = !DILocation(line: 881, column: 32, scope: !1506)
!1509 = !DILocation(line: 881, column: 42, scope: !1506)
!1510 = !DILocation(line: 881, column: 20, scope: !1506)
!1511 = !DILocation(line: 881, column: 14, scope: !1506)
!1512 = !DILocation(line: 882, column: 14, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1506, file: !511, line: 881, column: 9)
!1514 = !DILocation(line: 881, column: 9, scope: !1515)
!1515 = !DILexicalBlockFile(scope: !1506, file: !511, discriminator: 1)
!1516 = !DILocation(line: 884, column: 16, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1518, file: !511, line: 884, column: 15)
!1518 = distinct !DILexicalBlock(scope: !1513, file: !511, line: 883, column: 35)
!1519 = !DILocation(line: 884, column: 23, scope: !1517)
!1520 = !DILocation(line: 884, column: 15, scope: !1518)
!1521 = !DILocation(line: 885, column: 13, scope: !1517)
!1522 = !DILocation(line: 886, column: 22, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1518, file: !511, line: 886, column: 15)
!1524 = !DILocation(line: 886, column: 29, scope: !1523)
!1525 = !DILocation(line: 886, column: 35, scope: !1523)
!1526 = !DILocation(line: 886, column: 41, scope: !1523)
!1527 = !DILocation(line: 886, column: 51, scope: !1523)
!1528 = !DILocation(line: 886, column: 15, scope: !1523)
!1529 = !DILocation(line: 886, column: 57, scope: !1523)
!1530 = !DILocation(line: 886, column: 15, scope: !1518)
!1531 = !DILocation(line: 887, column: 13, scope: !1523)
!1532 = !DILocation(line: 888, column: 9, scope: !1518)
!1533 = !DILocation(line: 883, column: 22, scope: !1513)
!1534 = !DILocation(line: 883, column: 29, scope: !1513)
!1535 = !DILocation(line: 883, column: 20, scope: !1513)
!1536 = !DILocation(line: 881, column: 9, scope: !1537)
!1537 = !DILexicalBlockFile(scope: !1513, file: !511, discriminator: 2)
!1538 = distinct !{!1538, !1539}
!1539 = !DILocation(line: 881, column: 9, scope: !1507)
!1540 = !DILocation(line: 889, column: 13, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1507, file: !511, line: 889, column: 13)
!1542 = !DILocation(line: 889, column: 13, scope: !1507)
!1543 = !DILocation(line: 890, column: 11, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1541, file: !511, line: 889, column: 20)
!1545 = !DILocation(line: 892, column: 11, scope: !1544)
!1546 = !DILocation(line: 894, column: 7, scope: !1507)
!1547 = !DILocation(line: 896, column: 24, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1364, file: !511, line: 896, column: 11)
!1549 = !DILocation(line: 896, column: 28, scope: !1548)
!1550 = !DILocation(line: 896, column: 34, scope: !1548)
!1551 = !DILocation(line: 896, column: 38, scope: !1548)
!1552 = !DILocation(line: 896, column: 43, scope: !1548)
!1553 = !DILocation(line: 897, column: 24, scope: !1548)
!1554 = !DILocation(line: 897, column: 35, scope: !1548)
!1555 = !DILocation(line: 897, column: 45, scope: !1548)
!1556 = !DILocation(line: 896, column: 11, scope: !1548)
!1557 = !DILocation(line: 896, column: 11, scope: !1364)
!1558 = !DILocation(line: 898, column: 16, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1548, file: !511, line: 897, column: 57)
!1560 = !DILocation(line: 899, column: 25, scope: !1559)
!1561 = !DILocation(line: 899, column: 16, scope: !1559)
!1562 = !DILocation(line: 900, column: 33, scope: !1559)
!1563 = !DILocation(line: 900, column: 43, scope: !1559)
!1564 = !DILocation(line: 900, column: 53, scope: !1559)
!1565 = !DILocation(line: 900, column: 16, scope: !1559)
!1566 = !DILocation(line: 898, column: 9, scope: !1567)
!1567 = !DILexicalBlockFile(scope: !1559, file: !511, discriminator: 1)
!1568 = !DILocation(line: 901, column: 9, scope: !1559)
!1569 = !DILocation(line: 901, column: 19, scope: !1559)
!1570 = !DILocation(line: 901, column: 31, scope: !1559)
!1571 = !DILocation(line: 901, column: 53, scope: !1559)
!1572 = !DILocation(line: 902, column: 7, scope: !1559)
!1573 = !DILocation(line: 902, column: 31, scope: !1574)
!1574 = !DILexicalBlockFile(scope: !1575, file: !511, discriminator: 1)
!1575 = distinct !DILexicalBlock(scope: !1548, file: !511, line: 902, column: 18)
!1576 = !DILocation(line: 902, column: 42, scope: !1574)
!1577 = !DILocation(line: 902, column: 52, scope: !1574)
!1578 = !DILocation(line: 903, column: 31, scope: !1575)
!1579 = !DILocation(line: 903, column: 35, scope: !1575)
!1580 = !DILocation(line: 903, column: 41, scope: !1575)
!1581 = !DILocation(line: 903, column: 45, scope: !1575)
!1582 = !DILocation(line: 903, column: 50, scope: !1575)
!1583 = !DILocation(line: 902, column: 18, scope: !1574)
!1584 = !DILocation(line: 904, column: 16, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1575, file: !511, line: 903, column: 62)
!1586 = !DILocation(line: 905, column: 25, scope: !1585)
!1587 = !DILocation(line: 905, column: 16, scope: !1585)
!1588 = !DILocation(line: 906, column: 33, scope: !1585)
!1589 = !DILocation(line: 906, column: 43, scope: !1585)
!1590 = !DILocation(line: 906, column: 53, scope: !1585)
!1591 = !DILocation(line: 906, column: 16, scope: !1585)
!1592 = !DILocation(line: 904, column: 9, scope: !1593)
!1593 = !DILexicalBlockFile(scope: !1585, file: !511, discriminator: 1)
!1594 = !DILocation(line: 907, column: 9, scope: !1585)
!1595 = !DILocation(line: 907, column: 19, scope: !1585)
!1596 = !DILocation(line: 907, column: 31, scope: !1585)
!1597 = !DILocation(line: 907, column: 53, scope: !1585)
!1598 = !DILocation(line: 908, column: 9, scope: !1585)
!1599 = !DILocation(line: 908, column: 15, scope: !1585)
!1600 = !DILocation(line: 908, column: 25, scope: !1585)
!1601 = !DILocation(line: 908, column: 31, scope: !1585)
!1602 = !DILocation(line: 909, column: 22, scope: !1585)
!1603 = !DILocation(line: 910, column: 7, scope: !1585)
!1604 = !DILocation(line: 912, column: 14, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1606, file: !511, line: 912, column: 13)
!1606 = distinct !DILexicalBlock(scope: !1575, file: !511, line: 910, column: 14)
!1607 = !DILocation(line: 912, column: 20, scope: !1605)
!1608 = !DILocation(line: 912, column: 27, scope: !1609)
!1609 = !DILexicalBlockFile(scope: !1605, file: !511, discriminator: 1)
!1610 = !DILocation(line: 912, column: 25, scope: !1609)
!1611 = !DILocation(line: 912, column: 36, scope: !1609)
!1612 = !DILocation(line: 912, column: 13, scope: !1609)
!1613 = !DILocation(line: 914, column: 23, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1605, file: !511, line: 912, column: 45)
!1615 = !DILocation(line: 916, column: 23, scope: !1614)
!1616 = !DILocation(line: 916, column: 29, scope: !1614)
!1617 = !DILocation(line: 916, column: 39, scope: !1614)
!1618 = !DILocation(line: 916, column: 54, scope: !1614)
!1619 = !DILocation(line: 916, column: 45, scope: !1614)
!1620 = !DILocation(line: 917, column: 40, scope: !1614)
!1621 = !DILocation(line: 917, column: 50, scope: !1614)
!1622 = !DILocation(line: 917, column: 60, scope: !1614)
!1623 = !DILocation(line: 917, column: 23, scope: !1614)
!1624 = !DILocation(line: 913, column: 11, scope: !1614)
!1625 = !DILocation(line: 919, column: 9, scope: !1614)
!1626 = !DILocation(line: 921, column: 23, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1605, file: !511, line: 919, column: 16)
!1628 = !DILocation(line: 923, column: 23, scope: !1627)
!1629 = !DILocation(line: 923, column: 29, scope: !1627)
!1630 = !DILocation(line: 923, column: 39, scope: !1627)
!1631 = !DILocation(line: 923, column: 54, scope: !1627)
!1632 = !DILocation(line: 923, column: 45, scope: !1627)
!1633 = !DILocation(line: 924, column: 40, scope: !1627)
!1634 = !DILocation(line: 924, column: 50, scope: !1627)
!1635 = !DILocation(line: 924, column: 60, scope: !1627)
!1636 = !DILocation(line: 924, column: 23, scope: !1627)
!1637 = !DILocation(line: 920, column: 11, scope: !1627)
!1638 = !DILocation(line: 815, column: 5, scope: !1639)
!1639 = !DILexicalBlockFile(scope: !1350, file: !511, discriminator: 2)
!1640 = !DILocation(line: 929, column: 30, scope: !1350)
!1641 = !DILocation(line: 929, column: 5, scope: !1350)
!1642 = !DILocation(line: 930, column: 3, scope: !1350)
!1643 = !DILocation(line: 932, column: 7, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !519, file: !511, line: 932, column: 7)
!1645 = !DILocation(line: 932, column: 7, scope: !519)
!1646 = !DILocation(line: 933, column: 9, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1648, file: !511, line: 933, column: 9)
!1648 = distinct !DILexicalBlock(scope: !1644, file: !511, line: 932, column: 21)
!1649 = !DILocation(line: 933, column: 15, scope: !1647)
!1650 = !DILocation(line: 933, column: 25, scope: !1647)
!1651 = !DILocation(line: 933, column: 31, scope: !1647)
!1652 = !DILocation(line: 933, column: 9, scope: !1648)
!1653 = !DILocation(line: 934, column: 7, scope: !1647)
!1654 = !DILocation(line: 934, column: 13, scope: !1647)
!1655 = !DILocation(line: 934, column: 23, scope: !1647)
!1656 = !DILocation(line: 934, column: 29, scope: !1647)
!1657 = !DILocation(line: 935, column: 33, scope: !1648)
!1658 = !DILocation(line: 935, column: 37, scope: !1648)
!1659 = !DILocation(line: 935, column: 53, scope: !1648)
!1660 = !DILocation(line: 935, column: 62, scope: !1648)
!1661 = !DILocation(line: 935, column: 5, scope: !1648)
!1662 = !DILocation(line: 936, column: 26, scope: !1648)
!1663 = !DILocation(line: 936, column: 30, scope: !1648)
!1664 = !DILocation(line: 936, column: 5, scope: !1648)
!1665 = !DILocation(line: 937, column: 5, scope: !1648)
!1666 = !DILocation(line: 940, column: 26, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !519, file: !511, line: 940, column: 7)
!1668 = !DILocation(line: 940, column: 7, scope: !1667)
!1669 = !DILocation(line: 940, column: 7, scope: !519)
!1670 = !DILocation(line: 941, column: 5, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1667, file: !511, line: 940, column: 31)
!1672 = !DILocation(line: 941, column: 11, scope: !1671)
!1673 = !DILocation(line: 941, column: 21, scope: !1671)
!1674 = !DILocation(line: 941, column: 27, scope: !1671)
!1675 = !DILocation(line: 942, column: 5, scope: !1671)
!1676 = !DILocation(line: 942, column: 11, scope: !1671)
!1677 = !DILocation(line: 942, column: 21, scope: !1671)
!1678 = !DILocation(line: 942, column: 27, scope: !1671)
!1679 = !DILocation(line: 943, column: 26, scope: !1671)
!1680 = !DILocation(line: 943, column: 30, scope: !1671)
!1681 = !DILocation(line: 943, column: 5, scope: !1671)
!1682 = !DILocation(line: 945, column: 5, scope: !1671)
!1683 = !DILocation(line: 948, column: 7, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !519, file: !511, line: 948, column: 7)
!1685 = !DILocation(line: 948, column: 7, scope: !519)
!1686 = !DILocation(line: 949, column: 5, scope: !1684)
!1687 = !DILocation(line: 953, column: 7, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !519, file: !511, line: 953, column: 7)
!1689 = !DILocation(line: 953, column: 7, scope: !519)
!1690 = !DILocation(line: 955, column: 19, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1688, file: !511, line: 953, column: 20)
!1692 = !DILocation(line: 954, column: 5, scope: !1691)
!1693 = !DILocation(line: 956, column: 9, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1691, file: !511, line: 956, column: 9)
!1695 = !DILocation(line: 956, column: 15, scope: !1694)
!1696 = !DILocation(line: 956, column: 25, scope: !1694)
!1697 = !DILocation(line: 956, column: 31, scope: !1694)
!1698 = !DILocation(line: 956, column: 9, scope: !1691)
!1699 = !DILocation(line: 957, column: 29, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1694, file: !511, line: 956, column: 49)
!1701 = !DILocation(line: 957, column: 33, scope: !1700)
!1702 = !DILocation(line: 957, column: 38, scope: !1700)
!1703 = !DILocation(line: 957, column: 58, scope: !1700)
!1704 = !DILocation(line: 957, column: 63, scope: !1700)
!1705 = !DILocation(line: 957, column: 69, scope: !1700)
!1706 = !DILocation(line: 957, column: 7, scope: !1700)
!1707 = !DILocation(line: 958, column: 5, scope: !1700)
!1708 = !DILocation(line: 958, column: 20, scope: !1709)
!1709 = !DILexicalBlockFile(scope: !1710, file: !511, discriminator: 1)
!1710 = distinct !DILexicalBlock(scope: !1694, file: !511, line: 958, column: 15)
!1711 = !DILocation(line: 958, column: 18, scope: !1709)
!1712 = !DILocation(line: 958, column: 29, scope: !1709)
!1713 = !DILocation(line: 958, column: 15, scope: !1709)
!1714 = !DILocation(line: 959, column: 15, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1710, file: !511, line: 958, column: 38)
!1716 = !DILocation(line: 959, column: 19, scope: !1715)
!1717 = !DILocation(line: 959, column: 24, scope: !1715)
!1718 = !DILocation(line: 959, column: 41, scope: !1715)
!1719 = !DILocation(line: 959, column: 7, scope: !1715)
!1720 = !DILocation(line: 960, column: 5, scope: !1715)
!1721 = !DILocation(line: 961, column: 14, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1710, file: !511, line: 960, column: 12)
!1723 = !DILocation(line: 961, column: 7, scope: !1722)
!1724 = !DILocation(line: 963, column: 3, scope: !1691)
!1725 = !DILocation(line: 965, column: 7, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !519, file: !511, line: 965, column: 7)
!1727 = !DILocation(line: 965, column: 19, scope: !1726)
!1728 = !DILocation(line: 965, column: 23, scope: !1729)
!1729 = !DILexicalBlockFile(scope: !1726, file: !511, discriminator: 1)
!1730 = !DILocation(line: 965, column: 7, scope: !1729)
!1731 = !DILocation(line: 968, column: 20, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1726, file: !511, line: 965, column: 50)
!1733 = !DILocation(line: 968, column: 24, scope: !1732)
!1734 = !DILocation(line: 968, column: 28, scope: !1732)
!1735 = !DILocation(line: 968, column: 34, scope: !1732)
!1736 = !DILocation(line: 968, column: 5, scope: !1732)
!1737 = !DILocation(line: 969, column: 3, scope: !1732)
!1738 = !DILocation(line: 972, column: 33, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1726, file: !511, line: 969, column: 10)
!1740 = !DILocation(line: 972, column: 5, scope: !1739)
!1741 = !DILocation(line: 973, column: 33, scope: !1739)
!1742 = !DILocation(line: 973, column: 5, scope: !1739)
!1743 = !DILocation(line: 978, column: 56, scope: !1739)
!1744 = !DILocation(line: 978, column: 62, scope: !1739)
!1745 = !DILocation(line: 978, column: 5, scope: !1739)
!1746 = !DILocation(line: 986, column: 23, scope: !1739)
!1747 = !DILocation(line: 986, column: 27, scope: !1739)
!1748 = !DILocation(line: 986, column: 42, scope: !1739)
!1749 = !DILocation(line: 986, column: 58, scope: !1739)
!1750 = !DILocation(line: 986, column: 64, scope: !1739)
!1751 = !DILocation(line: 986, column: 5, scope: !1739)
!1752 = !DILocation(line: 990, column: 7, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !519, file: !511, line: 990, column: 7)
!1754 = !DILocation(line: 990, column: 7, scope: !519)
!1755 = !DILocation(line: 991, column: 23, scope: !1753)
!1756 = !DILocation(line: 991, column: 35, scope: !1753)
!1757 = !DILocation(line: 991, column: 47, scope: !1753)
!1758 = !DILocation(line: 992, column: 38, scope: !1753)
!1759 = !DILocation(line: 992, column: 43, scope: !1753)
!1760 = !DILocation(line: 992, column: 47, scope: !1753)
!1761 = !DILocation(line: 992, column: 53, scope: !1753)
!1762 = !DILocation(line: 991, column: 5, scope: !1753)
!1763 = !DILocation(line: 995, column: 7, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !519, file: !511, line: 995, column: 7)
!1765 = !DILocation(line: 995, column: 19, scope: !1764)
!1766 = !DILocation(line: 995, column: 23, scope: !1767)
!1767 = !DILexicalBlockFile(scope: !1764, file: !511, discriminator: 1)
!1768 = !DILocation(line: 995, column: 7, scope: !1767)
!1769 = !DILocation(line: 996, column: 5, scope: !1764)
!1770 = !DILocation(line: 998, column: 23, scope: !519)
!1771 = !DILocation(line: 998, column: 38, scope: !519)
!1772 = !DILocation(line: 998, column: 3, scope: !519)
!1773 = !DILocation(line: 999, column: 23, scope: !519)
!1774 = !DILocation(line: 999, column: 38, scope: !519)
!1775 = !DILocation(line: 999, column: 3, scope: !519)
!1776 = !DILocation(line: 1000, column: 36, scope: !519)
!1777 = !DILocation(line: 1000, column: 52, scope: !519)
!1778 = !DILocation(line: 1000, column: 66, scope: !519)
!1779 = !DILocation(line: 1000, column: 3, scope: !519)
!1780 = !DILocation(line: 1013, column: 7, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !519, file: !511, line: 1013, column: 7)
!1782 = !DILocation(line: 1013, column: 13, scope: !1781)
!1783 = !DILocation(line: 1013, column: 23, scope: !1781)
!1784 = !DILocation(line: 1013, column: 29, scope: !1781)
!1785 = !DILocation(line: 1013, column: 7, scope: !519)
!1786 = !DILocation(line: 1014, column: 5, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1781, file: !511, line: 1013, column: 47)
!1788 = !DILocation(line: 1015, column: 5, scope: !1787)
!1789 = !DILocation(line: 1015, column: 11, scope: !1787)
!1790 = !DILocation(line: 1015, column: 21, scope: !1787)
!1791 = !DILocation(line: 1015, column: 27, scope: !1787)
!1792 = !DILocation(line: 1016, column: 5, scope: !1787)
!1793 = !DILocation(line: 1021, column: 7, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !519, file: !511, line: 1021, column: 7)
!1795 = !DILocation(line: 1021, column: 7, scope: !519)
!1796 = !DILocation(line: 1023, column: 5, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1794, file: !511, line: 1021, column: 14)
!1798 = !DILocation(line: 1024, column: 3, scope: !1797)
!1799 = !DILocation(line: 1025, column: 9, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1801, file: !511, line: 1025, column: 9)
!1801 = distinct !DILexicalBlock(scope: !1794, file: !511, line: 1024, column: 10)
!1802 = !DILocation(line: 1025, column: 13, scope: !1800)
!1803 = !DILocation(line: 1025, column: 18, scope: !1800)
!1804 = !DILocation(line: 1025, column: 38, scope: !1800)
!1805 = !DILocation(line: 1025, column: 45, scope: !1806)
!1806 = !DILexicalBlockFile(scope: !1800, file: !511, discriminator: 1)
!1807 = !DILocation(line: 1025, column: 43, scope: !1806)
!1808 = !DILocation(line: 1025, column: 54, scope: !1806)
!1809 = !DILocation(line: 1025, column: 9, scope: !1806)
!1810 = !DILocation(line: 1027, column: 7, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1800, file: !511, line: 1025, column: 63)
!1812 = !DILocation(line: 1028, column: 7, scope: !1811)
!1813 = !DILocation(line: 1028, column: 13, scope: !1811)
!1814 = !DILocation(line: 1028, column: 23, scope: !1811)
!1815 = !DILocation(line: 1028, column: 29, scope: !1811)
!1816 = !DILocation(line: 1029, column: 26, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1811, file: !511, line: 1029, column: 11)
!1818 = !DILocation(line: 1029, column: 41, scope: !1817)
!1819 = !DILocation(line: 1029, column: 11, scope: !1817)
!1820 = !DILocation(line: 1029, column: 11, scope: !1811)
!1821 = !DILocation(line: 1030, column: 17, scope: !1817)
!1822 = !DILocation(line: 1031, column: 17, scope: !1817)
!1823 = !DILocation(line: 1031, column: 21, scope: !1817)
!1824 = !DILocation(line: 1030, column: 9, scope: !1825)
!1825 = !DILexicalBlockFile(scope: !1817, file: !511, discriminator: 1)
!1826 = !DILocation(line: 1030, column: 9, scope: !1817)
!1827 = !DILocation(line: 1032, column: 5, scope: !1811)
!1828 = !DILocation(line: 1032, column: 20, scope: !1829)
!1829 = !DILexicalBlockFile(scope: !1830, file: !511, discriminator: 1)
!1830 = distinct !DILexicalBlock(scope: !1800, file: !511, line: 1032, column: 15)
!1831 = !DILocation(line: 1032, column: 18, scope: !1829)
!1832 = !DILocation(line: 1032, column: 29, scope: !1829)
!1833 = !DILocation(line: 1032, column: 15, scope: !1829)
!1834 = !DILocalVariable(name: "rc", scope: !1835, file: !511, line: 1033, type: !277)
!1835 = distinct !DILexicalBlock(scope: !1830, file: !511, line: 1032, column: 38)
!1836 = !DILocation(line: 1033, column: 11, scope: !1835)
!1837 = !DILocation(line: 1038, column: 7, scope: !1835)
!1838 = !DILocation(line: 1039, column: 36, scope: !1835)
!1839 = !DILocation(line: 1039, column: 44, scope: !1835)
!1840 = !DILocation(line: 1039, column: 7, scope: !1835)
!1841 = !DILocation(line: 1040, column: 28, scope: !1835)
!1842 = !DILocation(line: 1040, column: 43, scope: !1835)
!1843 = !DILocation(line: 1040, column: 58, scope: !1835)
!1844 = !DILocation(line: 1040, column: 11, scope: !1835)
!1845 = !DILocation(line: 1040, column: 9, scope: !1835)
!1846 = !DILocation(line: 1041, column: 11, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1835, file: !511, line: 1041, column: 11)
!1848 = !DILocation(line: 1041, column: 13, scope: !1847)
!1849 = !DILocation(line: 1041, column: 11, scope: !1835)
!1850 = !DILocation(line: 1042, column: 17, scope: !1847)
!1851 = !DILocation(line: 1042, column: 58, scope: !1847)
!1852 = !DILocation(line: 1042, column: 62, scope: !1847)
!1853 = !DILocation(line: 1042, column: 9, scope: !1854)
!1854 = !DILexicalBlockFile(scope: !1847, file: !511, discriminator: 1)
!1855 = !DILocation(line: 1042, column: 9, scope: !1847)
!1856 = !DILocation(line: 1043, column: 16, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1847, file: !511, line: 1043, column: 16)
!1858 = !DILocation(line: 1043, column: 25, scope: !1857)
!1859 = !DILocation(line: 1043, column: 18, scope: !1857)
!1860 = !DILocation(line: 1043, column: 16, scope: !1847)
!1861 = !DILocation(line: 1044, column: 16, scope: !1857)
!1862 = !DILocation(line: 1045, column: 24, scope: !1857)
!1863 = !DILocation(line: 1045, column: 44, scope: !1857)
!1864 = !DILocation(line: 1045, column: 53, scope: !1857)
!1865 = !DILocation(line: 1044, column: 9, scope: !1866)
!1866 = !DILexicalBlockFile(scope: !1857, file: !511, discriminator: 1)
!1867 = !DILocation(line: 1044, column: 9, scope: !1857)
!1868 = !DILocation(line: 1046, column: 16, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1857, file: !511, line: 1046, column: 16)
!1870 = !DILocation(line: 1046, column: 25, scope: !1869)
!1871 = !DILocation(line: 1046, column: 18, scope: !1869)
!1872 = !DILocation(line: 1046, column: 16, scope: !1857)
!1873 = !DILocation(line: 1047, column: 17, scope: !1869)
!1874 = !DILocation(line: 1048, column: 24, scope: !1869)
!1875 = !DILocation(line: 1048, column: 44, scope: !1869)
!1876 = !DILocation(line: 1048, column: 53, scope: !1869)
!1877 = !DILocation(line: 1047, column: 9, scope: !1878)
!1878 = !DILexicalBlockFile(scope: !1869, file: !511, discriminator: 1)
!1879 = !DILocation(line: 1047, column: 9, scope: !1869)
!1880 = !DILocation(line: 1049, column: 32, scope: !1835)
!1881 = !DILocation(line: 1049, column: 7, scope: !1835)
!1882 = !DILocation(line: 1050, column: 7, scope: !1835)
!1883 = !DILocation(line: 1051, column: 29, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1835, file: !511, line: 1051, column: 11)
!1885 = !DILocation(line: 1051, column: 44, scope: !1884)
!1886 = !DILocation(line: 1051, column: 11, scope: !1884)
!1887 = !DILocation(line: 1051, column: 11, scope: !1835)
!1888 = !DILocation(line: 1052, column: 17, scope: !1884)
!1889 = !DILocation(line: 1052, column: 72, scope: !1884)
!1890 = !DILocation(line: 1052, column: 76, scope: !1884)
!1891 = !DILocation(line: 1052, column: 9, scope: !1892)
!1892 = !DILexicalBlockFile(scope: !1884, file: !511, discriminator: 1)
!1893 = !DILocation(line: 1052, column: 9, scope: !1884)
!1894 = !DILocation(line: 1053, column: 30, scope: !1835)
!1895 = !DILocation(line: 1053, column: 40, scope: !1835)
!1896 = !DILocation(line: 1053, column: 53, scope: !1835)
!1897 = !DILocation(line: 1053, column: 12, scope: !1835)
!1898 = !DILocation(line: 1053, column: 10, scope: !1835)
!1899 = !DILocation(line: 1054, column: 34, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1835, file: !511, line: 1054, column: 11)
!1901 = !DILocation(line: 1054, column: 11, scope: !1900)
!1902 = !DILocation(line: 1054, column: 11, scope: !1835)
!1903 = !DILocation(line: 1055, column: 17, scope: !1900)
!1904 = !DILocation(line: 1055, column: 73, scope: !1900)
!1905 = !DILocation(line: 1055, column: 77, scope: !1900)
!1906 = !DILocation(line: 1055, column: 9, scope: !1907)
!1907 = !DILexicalBlockFile(scope: !1900, file: !511, discriminator: 1)
!1908 = !DILocation(line: 1055, column: 9, scope: !1900)
!1909 = !DILocation(line: 1056, column: 40, scope: !1835)
!1910 = !DILocation(line: 1056, column: 56, scope: !1835)
!1911 = !DILocation(line: 1056, column: 66, scope: !1835)
!1912 = !DILocation(line: 1056, column: 7, scope: !1835)
!1913 = !DILocation(line: 1057, column: 5, scope: !1835)
!1914 = !DILocation(line: 1058, column: 7, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1830, file: !511, line: 1057, column: 12)
!1916 = !DILocation(line: 1059, column: 24, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1915, file: !511, line: 1059, column: 11)
!1918 = !DILocation(line: 1059, column: 39, scope: !1917)
!1919 = !DILocation(line: 1059, column: 11, scope: !1917)
!1920 = !DILocation(line: 1059, column: 11, scope: !1915)
!1921 = !DILocation(line: 1060, column: 17, scope: !1917)
!1922 = !DILocation(line: 1061, column: 17, scope: !1917)
!1923 = !DILocation(line: 1061, column: 21, scope: !1917)
!1924 = !DILocation(line: 1060, column: 9, scope: !1925)
!1925 = !DILexicalBlockFile(scope: !1917, file: !511, discriminator: 1)
!1926 = !DILocation(line: 1060, column: 9, scope: !1917)
!1927 = !DILocation(line: 1070, column: 7, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !519, file: !511, line: 1070, column: 7)
!1929 = !DILocation(line: 1070, column: 11, scope: !1928)
!1930 = !DILocation(line: 1070, column: 16, scope: !1928)
!1931 = !DILocation(line: 1070, column: 37, scope: !1928)
!1932 = !DILocation(line: 1070, column: 40, scope: !1933)
!1933 = !DILexicalBlockFile(scope: !1928, file: !511, discriminator: 1)
!1934 = !DILocation(line: 1070, column: 44, scope: !1933)
!1935 = !DILocation(line: 1070, column: 49, scope: !1933)
!1936 = !DILocation(line: 1070, column: 74, scope: !1933)
!1937 = !DILocation(line: 1071, column: 7, scope: !1928)
!1938 = !DILocation(line: 1071, column: 11, scope: !1928)
!1939 = !DILocation(line: 1071, column: 16, scope: !1928)
!1940 = !DILocation(line: 1070, column: 7, scope: !1085)
!1941 = !DILocation(line: 1072, column: 5, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1928, file: !511, line: 1071, column: 41)
!1943 = !DILocation(line: 1072, column: 11, scope: !1942)
!1944 = !DILocation(line: 1072, column: 21, scope: !1942)
!1945 = !DILocation(line: 1072, column: 27, scope: !1942)
!1946 = !DILocation(line: 1074, column: 5, scope: !1942)
!1947 = !DILocation(line: 1075, column: 3, scope: !1942)
!1948 = !DILocation(line: 1076, column: 27, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1950, file: !511, line: 1076, column: 9)
!1950 = distinct !DILexicalBlock(scope: !1928, file: !511, line: 1075, column: 10)
!1951 = !DILocation(line: 1076, column: 40, scope: !1949)
!1952 = !DILocation(line: 1076, column: 9, scope: !1949)
!1953 = !DILocation(line: 1076, column: 9, scope: !1950)
!1954 = !DILocation(line: 1077, column: 15, scope: !1949)
!1955 = !DILocation(line: 1077, column: 69, scope: !1949)
!1956 = !DILocation(line: 1077, column: 73, scope: !1949)
!1957 = !DILocation(line: 1077, column: 7, scope: !1958)
!1958 = !DILexicalBlockFile(scope: !1949, file: !511, discriminator: 1)
!1959 = !DILocation(line: 1077, column: 7, scope: !1949)
!1960 = !DILocation(line: 1086, column: 5, scope: !1950)
!1961 = !DILocation(line: 1086, column: 11, scope: !1950)
!1962 = !DILocation(line: 1086, column: 21, scope: !1950)
!1963 = !DILocation(line: 1086, column: 27, scope: !1950)
!1964 = !DILocation(line: 1087, column: 5, scope: !1950)
!1965 = !DILocation(line: 1087, column: 11, scope: !1950)
!1966 = !DILocation(line: 1087, column: 21, scope: !1950)
!1967 = !DILocation(line: 1087, column: 27, scope: !1950)
!1968 = !DILocation(line: 1089, column: 5, scope: !1950)
!1969 = !DILocation(line: 1092, column: 3, scope: !519)
!1970 = !DILocation(line: 1093, column: 1, scope: !519)
!1971 = distinct !DISubprogram(name: "linktosameexistingdir", scope: !511, file: !511, line: 620, type: !1972, isLocal: true, isDefinition: true, scopeLine: 622, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !564)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!328, !1974, !288, !1976}
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64, align: 64)
!1975 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !551)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64, align: 64)
!1977 = !DILocalVariable(name: "ti", arg: 1, scope: !1971, file: !511, line: 620, type: !1974)
!1978 = !DILocation(line: 620, column: 47, scope: !1971)
!1979 = !DILocalVariable(name: "fname", arg: 2, scope: !1971, file: !511, line: 620, type: !288)
!1980 = !DILocation(line: 620, column: 63, scope: !1971)
!1981 = !DILocalVariable(name: "symlinkfn", arg: 3, scope: !1971, file: !511, line: 621, type: !1976)
!1982 = !DILocation(line: 621, column: 38, scope: !1971)
!1983 = !DILocalVariable(name: "oldstab", scope: !1971, file: !511, line: 623, type: !991)
!1984 = !DILocation(line: 623, column: 15, scope: !1971)
!1985 = !DILocalVariable(name: "newstab", scope: !1971, file: !511, line: 623, type: !991)
!1986 = !DILocation(line: 623, column: 24, scope: !1971)
!1987 = !DILocalVariable(name: "statr", scope: !1971, file: !511, line: 624, type: !277)
!1988 = !DILocation(line: 624, column: 7, scope: !1971)
!1989 = !DILocalVariable(name: "lastslash", scope: !1971, file: !511, line: 625, type: !288)
!1990 = !DILocation(line: 625, column: 15, scope: !1971)
!1991 = !DILocation(line: 627, column: 15, scope: !1971)
!1992 = !DILocation(line: 627, column: 10, scope: !1971)
!1993 = !DILocation(line: 627, column: 8, scope: !1971)
!1994 = !DILocation(line: 628, column: 7, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1971, file: !511, line: 628, column: 7)
!1996 = !DILocation(line: 628, column: 7, scope: !1971)
!1997 = !DILocation(line: 629, column: 12, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1999, file: !511, line: 629, column: 9)
!1999 = distinct !DILexicalBlock(scope: !1995, file: !511, line: 628, column: 14)
!2000 = !DILocation(line: 629, column: 11, scope: !1998)
!2001 = !DILocation(line: 629, column: 16, scope: !1998)
!2002 = !DILocation(line: 629, column: 26, scope: !1998)
!2003 = !DILocation(line: 629, column: 31, scope: !2004)
!2004 = !DILexicalBlockFile(scope: !1998, file: !511, discriminator: 1)
!2005 = !DILocation(line: 629, column: 30, scope: !2004)
!2006 = !DILocation(line: 629, column: 35, scope: !2004)
!2007 = !DILocation(line: 629, column: 44, scope: !2004)
!2008 = !DILocation(line: 629, column: 49, scope: !2009)
!2009 = !DILexicalBlockFile(scope: !1998, file: !511, discriminator: 2)
!2010 = !DILocation(line: 629, column: 48, scope: !2009)
!2011 = !DILocation(line: 629, column: 53, scope: !2009)
!2012 = !DILocation(line: 629, column: 9, scope: !2009)
!2013 = !DILocation(line: 630, column: 15, scope: !1998)
!2014 = !DILocation(line: 631, column: 15, scope: !1998)
!2015 = !DILocation(line: 630, column: 7, scope: !2004)
!2016 = !DILocation(line: 630, column: 7, scope: !1998)
!2017 = !DILocation(line: 632, column: 5, scope: !1999)
!2018 = !DILocation(line: 634, column: 15, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !1971, file: !511, line: 634, column: 7)
!2020 = !DILocation(line: 634, column: 10, scope: !2019)
!2021 = !DILocation(line: 634, column: 21, scope: !2019)
!2022 = !DILocation(line: 634, column: 7, scope: !1971)
!2023 = !DILocation(line: 635, column: 5, scope: !2019)
!2024 = !DILocation(line: 638, column: 16, scope: !1971)
!2025 = !DILocation(line: 638, column: 3, scope: !1971)
!2026 = !DILocation(line: 639, column: 7, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !1971, file: !511, line: 639, column: 7)
!2028 = !DILocation(line: 639, column: 11, scope: !2027)
!2029 = !DILocation(line: 639, column: 23, scope: !2027)
!2030 = !DILocation(line: 639, column: 7, scope: !1971)
!2031 = !DILocation(line: 640, column: 20, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !2027, file: !511, line: 639, column: 31)
!2033 = !DILocation(line: 640, column: 31, scope: !2032)
!2034 = !DILocation(line: 640, column: 47, scope: !2032)
!2035 = !DILocation(line: 640, column: 40, scope: !2032)
!2036 = !DILocation(line: 640, column: 5, scope: !2037)
!2037 = !DILexicalBlockFile(scope: !2032, file: !511, discriminator: 1)
!2038 = !DILocation(line: 641, column: 3, scope: !2032)
!2039 = !DILocation(line: 642, column: 24, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2027, file: !511, line: 641, column: 10)
!2041 = !DILocation(line: 642, column: 16, scope: !2040)
!2042 = !DILocation(line: 642, column: 14, scope: !2040)
!2043 = !DILocation(line: 643, column: 9, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2040, file: !511, line: 643, column: 9)
!2045 = !DILocation(line: 643, column: 19, scope: !2044)
!2046 = !DILocation(line: 643, column: 9, scope: !2040)
!2047 = !DILocation(line: 644, column: 97, scope: !2044)
!2048 = !DILocation(line: 644, column: 7, scope: !2044)
!2049 = !DILocation(line: 645, column: 20, scope: !2040)
!2050 = !DILocation(line: 645, column: 31, scope: !2040)
!2051 = !DILocation(line: 645, column: 39, scope: !2040)
!2052 = !DILocation(line: 645, column: 51, scope: !2040)
!2053 = !DILocation(line: 645, column: 49, scope: !2040)
!2054 = !DILocation(line: 645, column: 58, scope: !2040)
!2055 = !DILocation(line: 645, column: 5, scope: !2040)
!2056 = !DILocation(line: 647, column: 18, scope: !1971)
!2057 = !DILocation(line: 647, column: 29, scope: !1971)
!2058 = !DILocation(line: 647, column: 33, scope: !1971)
!2059 = !DILocation(line: 647, column: 50, scope: !1971)
!2060 = !DILocation(line: 647, column: 54, scope: !1971)
!2061 = !DILocation(line: 647, column: 43, scope: !1971)
!2062 = !DILocation(line: 647, column: 3, scope: !2063)
!2063 = !DILexicalBlockFile(scope: !1971, file: !511, discriminator: 1)
!2064 = !DILocation(line: 648, column: 18, scope: !1971)
!2065 = !DILocation(line: 648, column: 3, scope: !1971)
!2066 = !DILocation(line: 650, column: 15, scope: !1971)
!2067 = !DILocation(line: 650, column: 26, scope: !1971)
!2068 = !DILocation(line: 650, column: 10, scope: !1971)
!2069 = !DILocation(line: 650, column: 8, scope: !1971)
!2070 = !DILocation(line: 651, column: 7, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !1971, file: !511, line: 651, column: 7)
!2072 = !DILocation(line: 651, column: 7, scope: !1971)
!2073 = !DILocation(line: 652, column: 12, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2075, file: !511, line: 652, column: 9)
!2075 = distinct !DILexicalBlock(scope: !2071, file: !511, line: 651, column: 14)
!2076 = !DILocation(line: 652, column: 11, scope: !2074)
!2077 = !DILocation(line: 652, column: 16, scope: !2074)
!2078 = !DILocation(line: 652, column: 26, scope: !2074)
!2079 = !DILocation(line: 652, column: 31, scope: !2080)
!2080 = !DILexicalBlockFile(scope: !2074, file: !511, discriminator: 1)
!2081 = !DILocation(line: 652, column: 30, scope: !2080)
!2082 = !DILocation(line: 652, column: 35, scope: !2080)
!2083 = !DILocation(line: 652, column: 44, scope: !2080)
!2084 = !DILocation(line: 652, column: 49, scope: !2085)
!2085 = !DILexicalBlockFile(scope: !2074, file: !511, discriminator: 2)
!2086 = !DILocation(line: 652, column: 48, scope: !2085)
!2087 = !DILocation(line: 652, column: 53, scope: !2085)
!2088 = !DILocation(line: 652, column: 9, scope: !2085)
!2089 = !DILocation(line: 653, column: 15, scope: !2074)
!2090 = !DILocation(line: 654, column: 52, scope: !2074)
!2091 = !DILocation(line: 654, column: 63, scope: !2074)
!2092 = !DILocation(line: 654, column: 68, scope: !2074)
!2093 = !DILocation(line: 653, column: 7, scope: !2080)
!2094 = !DILocation(line: 653, column: 7, scope: !2074)
!2095 = !DILocation(line: 655, column: 5, scope: !2075)
!2096 = !DILocation(line: 657, column: 15, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !1971, file: !511, line: 657, column: 7)
!2098 = !DILocation(line: 657, column: 10, scope: !2097)
!2099 = !DILocation(line: 657, column: 21, scope: !2097)
!2100 = !DILocation(line: 657, column: 7, scope: !1971)
!2101 = !DILocation(line: 658, column: 5, scope: !2097)
!2102 = !DILocation(line: 659, column: 15, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !1971, file: !511, line: 659, column: 7)
!2104 = !DILocation(line: 659, column: 33, scope: !2103)
!2105 = !DILocation(line: 659, column: 22, scope: !2103)
!2106 = !DILocation(line: 659, column: 40, scope: !2103)
!2107 = !DILocation(line: 660, column: 15, scope: !2103)
!2108 = !DILocation(line: 660, column: 33, scope: !2103)
!2109 = !DILocation(line: 660, column: 22, scope: !2103)
!2110 = !DILocation(line: 659, column: 7, scope: !2063)
!2111 = !DILocation(line: 661, column: 5, scope: !2103)
!2112 = !DILocation(line: 662, column: 3, scope: !1971)
!2113 = !DILocation(line: 663, column: 1, scope: !1971)
!2114 = distinct !DISubprogram(name: "does_replace", scope: !511, file: !511, line: 318, type: !2115, isLocal: true, isDefinition: true, scopeLine: 320, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !564)
!2115 = !DISubroutineType(types: !2116)
!2116 = !{!277, !279, !463, !279, !463}
!2117 = !DILocalVariable(name: "new_pkg", arg: 1, scope: !2114, file: !511, line: 318, type: !279)
!2118 = !DILocation(line: 318, column: 30, scope: !2114)
!2119 = !DILocalVariable(name: "new_pkgbin", arg: 2, scope: !2114, file: !511, line: 318, type: !463)
!2120 = !DILocation(line: 318, column: 54, scope: !2114)
!2121 = !DILocalVariable(name: "old_pkg", arg: 3, scope: !2114, file: !511, line: 319, type: !279)
!2122 = !DILocation(line: 319, column: 30, scope: !2114)
!2123 = !DILocalVariable(name: "old_pkgbin", arg: 4, scope: !2114, file: !511, line: 319, type: !463)
!2124 = !DILocation(line: 319, column: 54, scope: !2114)
!2125 = !DILocalVariable(name: "dep", scope: !2114, file: !511, line: 321, type: !299)
!2126 = !DILocation(line: 321, column: 22, scope: !2114)
!2127 = !DILocation(line: 324, column: 21, scope: !2114)
!2128 = !DILocation(line: 324, column: 30, scope: !2114)
!2129 = !DILocation(line: 324, column: 9, scope: !2114)
!2130 = !DILocation(line: 325, column: 21, scope: !2114)
!2131 = !DILocation(line: 325, column: 30, scope: !2114)
!2132 = !DILocation(line: 325, column: 9, scope: !2114)
!2133 = !DILocation(line: 326, column: 26, scope: !2114)
!2134 = !DILocation(line: 326, column: 38, scope: !2114)
!2135 = !DILocation(line: 326, column: 9, scope: !2114)
!2136 = !DILocation(line: 323, column: 3, scope: !2114)
!2137 = !DILocation(line: 327, column: 14, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2114, file: !511, line: 327, column: 3)
!2139 = !DILocation(line: 327, column: 26, scope: !2138)
!2140 = !DILocation(line: 327, column: 12, scope: !2138)
!2141 = !DILocation(line: 327, column: 8, scope: !2138)
!2142 = !DILocation(line: 327, column: 35, scope: !2143)
!2143 = !DILexicalBlockFile(scope: !2144, file: !511, discriminator: 1)
!2144 = distinct !DILexicalBlock(scope: !2138, file: !511, line: 327, column: 3)
!2145 = !DILocation(line: 327, column: 3, scope: !2143)
!2146 = !DILocation(line: 328, column: 9, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2148, file: !511, line: 328, column: 9)
!2148 = distinct !DILexicalBlock(scope: !2144, file: !511, line: 327, column: 57)
!2149 = !DILocation(line: 328, column: 14, scope: !2147)
!2150 = !DILocation(line: 328, column: 19, scope: !2147)
!2151 = !DILocation(line: 328, column: 35, scope: !2147)
!2152 = !DILocation(line: 328, column: 38, scope: !2153)
!2153 = !DILexicalBlockFile(scope: !2147, file: !511, discriminator: 1)
!2154 = !DILocation(line: 328, column: 43, scope: !2153)
!2155 = !DILocation(line: 328, column: 49, scope: !2153)
!2156 = !DILocation(line: 328, column: 55, scope: !2153)
!2157 = !DILocation(line: 328, column: 64, scope: !2153)
!2158 = !DILocation(line: 328, column: 52, scope: !2153)
!2159 = !DILocation(line: 328, column: 9, scope: !2153)
!2160 = !DILocation(line: 329, column: 7, scope: !2147)
!2161 = !DILocation(line: 331, column: 28, scope: !2148)
!2162 = !DILocation(line: 331, column: 33, scope: !2148)
!2163 = !DILocation(line: 331, column: 39, scope: !2148)
!2164 = !DILocation(line: 331, column: 11, scope: !2148)
!2165 = !DILocation(line: 330, column: 5, scope: !2148)
!2166 = !DILocation(line: 332, column: 27, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2148, file: !511, line: 332, column: 9)
!2168 = !DILocation(line: 332, column: 39, scope: !2167)
!2169 = !DILocation(line: 332, column: 44, scope: !2167)
!2170 = !DILocation(line: 332, column: 10, scope: !2167)
!2171 = !DILocation(line: 332, column: 9, scope: !2148)
!2172 = !DILocation(line: 333, column: 7, scope: !2167)
!2173 = !DILocation(line: 336, column: 24, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2148, file: !511, line: 336, column: 9)
!2175 = !DILocation(line: 336, column: 36, scope: !2174)
!2176 = !DILocation(line: 336, column: 41, scope: !2174)
!2177 = !DILocation(line: 336, column: 10, scope: !2174)
!2178 = !DILocation(line: 336, column: 9, scope: !2148)
!2179 = !DILocation(line: 337, column: 7, scope: !2174)
!2180 = !DILocation(line: 338, column: 5, scope: !2148)
!2181 = !DILocation(line: 339, column: 5, scope: !2148)
!2182 = !DILocation(line: 327, column: 46, scope: !2183)
!2183 = !DILexicalBlockFile(scope: !2144, file: !511, discriminator: 2)
!2184 = !DILocation(line: 327, column: 51, scope: !2183)
!2185 = !DILocation(line: 327, column: 44, scope: !2183)
!2186 = !DILocation(line: 327, column: 3, scope: !2183)
!2187 = distinct !{!2187, !2188}
!2188 = !DILocation(line: 327, column: 3, scope: !2114)
!2189 = !DILocation(line: 341, column: 3, scope: !2114)
!2190 = !DILocation(line: 342, column: 3, scope: !2114)
!2191 = !DILocation(line: 343, column: 1, scope: !2114)
!2192 = distinct !DISubprogram(name: "tar_fsys_namenode_queue_pop", scope: !511, file: !511, line: 133, type: !2193, isLocal: true, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !564)
!2193 = !DISubroutineType(types: !2194)
!2194 = !{null, !493, !498, !420}
!2195 = !DILocalVariable(name: "queue", arg: 1, scope: !2192, file: !511, line: 133, type: !493)
!2196 = !DILocation(line: 133, column: 57, scope: !2192)
!2197 = !DILocalVariable(name: "tail_prev", arg: 2, scope: !2192, file: !511, line: 134, type: !498)
!2198 = !DILocation(line: 134, column: 56, scope: !2192)
!2199 = !DILocalVariable(name: "node", arg: 3, scope: !2192, file: !511, line: 135, type: !420)
!2200 = !DILocation(line: 135, column: 55, scope: !2192)
!2201 = !DILocation(line: 137, column: 17, scope: !2192)
!2202 = !DILocation(line: 137, column: 3, scope: !2192)
!2203 = !DILocation(line: 138, column: 17, scope: !2192)
!2204 = !DILocation(line: 138, column: 3, scope: !2192)
!2205 = !DILocation(line: 138, column: 10, scope: !2192)
!2206 = !DILocation(line: 138, column: 15, scope: !2192)
!2207 = !DILocation(line: 139, column: 4, scope: !2192)
!2208 = !DILocation(line: 139, column: 14, scope: !2192)
!2209 = !DILocation(line: 140, column: 1, scope: !2192)
!2210 = distinct !DISubprogram(name: "tarobject_skip_entry", scope: !511, file: !511, line: 294, type: !2211, isLocal: true, isDefinition: true, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !564)
!2211 = !DISubroutineType(types: !2212)
!2212 = !{null, !272, !550}
!2213 = !DILocalVariable(name: "tc", arg: 1, scope: !2210, file: !511, line: 294, type: !272)
!2214 = !DILocation(line: 294, column: 41, scope: !2210)
!2215 = !DILocalVariable(name: "ti", arg: 2, scope: !2210, file: !511, line: 294, type: !550)
!2216 = !DILocation(line: 294, column: 63, scope: !2210)
!2217 = !DILocation(line: 298, column: 7, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2210, file: !511, line: 298, column: 7)
!2219 = !DILocation(line: 298, column: 11, scope: !2218)
!2220 = !DILocation(line: 298, column: 16, scope: !2218)
!2221 = !DILocation(line: 298, column: 7, scope: !2210)
!2222 = !DILocalVariable(name: "err", scope: !2223, file: !511, line: 299, type: !526)
!2223 = distinct !DILexicalBlock(scope: !2218, file: !511, line: 298, column: 38)
!2224 = !DILocation(line: 299, column: 23, scope: !2223)
!2225 = !DILocalVariable(name: "fnamebuf", scope: !2223, file: !511, line: 300, type: !2226)
!2226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 2048, align: 8, elements: !2227)
!2227 = !{!2228}
!2228 = !DISubrange(count: 256)
!2229 = !DILocation(line: 300, column: 10, scope: !2223)
!2230 = !DILocation(line: 302, column: 25, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2223, file: !511, line: 302, column: 9)
!2232 = !DILocation(line: 302, column: 29, scope: !2231)
!2233 = !DILocation(line: 302, column: 45, scope: !2231)
!2234 = !DILocation(line: 302, column: 49, scope: !2231)
!2235 = !DILocation(line: 302, column: 9, scope: !2231)
!2236 = !DILocation(line: 302, column: 61, scope: !2231)
!2237 = !DILocation(line: 302, column: 9, scope: !2223)
!2238 = !DILocation(line: 303, column: 14, scope: !2231)
!2239 = !DILocation(line: 304, column: 34, scope: !2231)
!2240 = !DILocation(line: 304, column: 44, scope: !2231)
!2241 = !DILocation(line: 304, column: 48, scope: !2231)
!2242 = !DILocation(line: 304, column: 14, scope: !2231)
!2243 = !DILocation(line: 304, column: 64, scope: !2231)
!2244 = !DILocation(line: 303, column: 7, scope: !2245)
!2245 = !DILexicalBlockFile(scope: !2231, file: !511, discriminator: 1)
!2246 = !DILocation(line: 303, column: 7, scope: !2231)
!2247 = !DILocation(line: 305, column: 28, scope: !2223)
!2248 = !DILocation(line: 305, column: 32, scope: !2223)
!2249 = !DILocation(line: 305, column: 5, scope: !2223)
!2250 = !DILocation(line: 306, column: 3, scope: !2223)
!2251 = !DILocation(line: 307, column: 1, scope: !2210)
!2252 = distinct !DISubprogram(name: "md5hash_prev_conffile", scope: !511, file: !511, line: 218, type: !2253, isLocal: true, isDefinition: true, scopeLine: 220, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !564)
!2253 = !DISubroutineType(types: !2254)
!2254 = !{null, !279, !270, !288, !425}
!2255 = !DILocalVariable(name: "pkg", arg: 1, scope: !2252, file: !511, line: 218, type: !279)
!2256 = !DILocation(line: 218, column: 39, scope: !2252)
!2257 = !DILocalVariable(name: "oldhash", arg: 2, scope: !2252, file: !511, line: 218, type: !270)
!2258 = !DILocation(line: 218, column: 50, scope: !2252)
!2259 = !DILocalVariable(name: "oldname", arg: 3, scope: !2252, file: !511, line: 218, type: !288)
!2260 = !DILocation(line: 218, column: 71, scope: !2252)
!2261 = !DILocalVariable(name: "namenode", arg: 4, scope: !2252, file: !511, line: 219, type: !425)
!2262 = !DILocation(line: 219, column: 45, scope: !2252)
!2263 = !DILocalVariable(name: "otherpkg", scope: !2252, file: !511, line: 221, type: !279)
!2264 = !DILocation(line: 221, column: 19, scope: !2252)
!2265 = !DILocalVariable(name: "conff", scope: !2252, file: !511, line: 222, type: !356)
!2266 = !DILocation(line: 222, column: 20, scope: !2252)
!2267 = !DILocation(line: 225, column: 9, scope: !2252)
!2268 = !DILocation(line: 225, column: 19, scope: !2252)
!2269 = !DILocation(line: 224, column: 3, scope: !2252)
!2270 = !DILocation(line: 227, column: 20, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2252, file: !511, line: 227, column: 3)
!2272 = !DILocation(line: 227, column: 25, scope: !2271)
!2273 = !DILocation(line: 227, column: 30, scope: !2271)
!2274 = !DILocation(line: 227, column: 17, scope: !2271)
!2275 = !DILocation(line: 227, column: 8, scope: !2271)
!2276 = !DILocation(line: 227, column: 35, scope: !2277)
!2277 = !DILexicalBlockFile(scope: !2278, file: !511, discriminator: 1)
!2278 = distinct !DILexicalBlock(scope: !2271, file: !511, line: 227, column: 3)
!2279 = !DILocation(line: 227, column: 3, scope: !2277)
!2280 = !DILocation(line: 228, column: 9, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2282, file: !511, line: 228, column: 9)
!2282 = distinct !DILexicalBlock(scope: !2278, file: !511, line: 227, column: 77)
!2283 = !DILocation(line: 228, column: 21, scope: !2281)
!2284 = !DILocation(line: 228, column: 18, scope: !2281)
!2285 = !DILocation(line: 228, column: 9, scope: !2282)
!2286 = !DILocation(line: 229, column: 7, scope: !2281)
!2287 = !DILocation(line: 233, column: 9, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2282, file: !511, line: 233, column: 9)
!2289 = !DILocation(line: 233, column: 19, scope: !2288)
!2290 = !DILocation(line: 233, column: 26, scope: !2288)
!2291 = !DILocation(line: 233, column: 47, scope: !2288)
!2292 = !DILocation(line: 234, column: 31, scope: !2288)
!2293 = !DILocation(line: 234, column: 41, scope: !2288)
!2294 = !DILocation(line: 234, column: 51, scope: !2288)
!2295 = !DILocation(line: 235, column: 31, scope: !2288)
!2296 = !DILocation(line: 235, column: 41, scope: !2288)
!2297 = !DILocation(line: 234, column: 9, scope: !2288)
!2298 = !DILocation(line: 235, column: 56, scope: !2288)
!2299 = !DILocation(line: 233, column: 9, scope: !2300)
!2300 = !DILexicalBlockFile(scope: !2282, file: !511, discriminator: 1)
!2301 = !DILocation(line: 236, column: 7, scope: !2288)
!2302 = !DILocation(line: 237, column: 18, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2282, file: !511, line: 237, column: 5)
!2304 = !DILocation(line: 237, column: 28, scope: !2303)
!2305 = !DILocation(line: 237, column: 38, scope: !2303)
!2306 = !DILocation(line: 237, column: 16, scope: !2303)
!2307 = !DILocation(line: 237, column: 10, scope: !2303)
!2308 = !DILocation(line: 237, column: 49, scope: !2309)
!2309 = !DILexicalBlockFile(scope: !2310, file: !511, discriminator: 1)
!2310 = distinct !DILexicalBlock(scope: !2303, file: !511, line: 237, column: 5)
!2311 = !DILocation(line: 237, column: 5, scope: !2309)
!2312 = !DILocation(line: 238, column: 11, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2314, file: !511, line: 238, column: 11)
!2314 = distinct !DILexicalBlock(scope: !2310, file: !511, line: 237, column: 77)
!2315 = !DILocation(line: 238, column: 18, scope: !2313)
!2316 = !DILocation(line: 238, column: 11, scope: !2314)
!2317 = !DILocation(line: 239, column: 9, scope: !2313)
!2318 = !DILocation(line: 240, column: 18, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2314, file: !511, line: 240, column: 11)
!2320 = !DILocation(line: 240, column: 25, scope: !2319)
!2321 = !DILocation(line: 240, column: 31, scope: !2319)
!2322 = !DILocation(line: 240, column: 41, scope: !2319)
!2323 = !DILocation(line: 240, column: 11, scope: !2319)
!2324 = !DILocation(line: 240, column: 47, scope: !2319)
!2325 = !DILocation(line: 240, column: 11, scope: !2314)
!2326 = !DILocation(line: 241, column: 9, scope: !2319)
!2327 = !DILocation(line: 242, column: 5, scope: !2314)
!2328 = !DILocation(line: 237, column: 64, scope: !2329)
!2329 = !DILexicalBlockFile(scope: !2310, file: !511, discriminator: 2)
!2330 = !DILocation(line: 237, column: 71, scope: !2329)
!2331 = !DILocation(line: 237, column: 62, scope: !2329)
!2332 = !DILocation(line: 237, column: 5, scope: !2329)
!2333 = distinct !{!2333, !2334}
!2334 = !DILocation(line: 237, column: 5, scope: !2282)
!2335 = !DILocation(line: 243, column: 9, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2282, file: !511, line: 243, column: 9)
!2337 = !DILocation(line: 243, column: 9, scope: !2282)
!2338 = !DILocation(line: 244, column: 14, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2336, file: !511, line: 243, column: 16)
!2340 = !DILocation(line: 244, column: 23, scope: !2339)
!2341 = !DILocation(line: 244, column: 30, scope: !2339)
!2342 = !DILocation(line: 244, column: 7, scope: !2339)
!2343 = !DILocation(line: 247, column: 22, scope: !2339)
!2344 = !DILocation(line: 247, column: 13, scope: !2339)
!2345 = !DILocation(line: 248, column: 29, scope: !2339)
!2346 = !DILocation(line: 248, column: 13, scope: !2339)
!2347 = !DILocation(line: 248, column: 40, scope: !2339)
!2348 = !DILocation(line: 245, column: 7, scope: !2339)
!2349 = !DILocation(line: 249, column: 7, scope: !2339)
!2350 = !DILocation(line: 251, column: 3, scope: !2282)
!2351 = !DILocation(line: 227, column: 56, scope: !2352)
!2352 = !DILexicalBlockFile(scope: !2278, file: !511, discriminator: 2)
!2353 = !DILocation(line: 227, column: 66, scope: !2352)
!2354 = !DILocation(line: 227, column: 54, scope: !2352)
!2355 = !DILocation(line: 227, column: 3, scope: !2352)
!2356 = distinct !{!2356, !2357}
!2357 = !DILocation(line: 227, column: 3, scope: !2252)
!2358 = !DILocation(line: 256, column: 7, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2252, file: !511, line: 256, column: 7)
!2360 = !DILocation(line: 256, column: 16, scope: !2359)
!2361 = !DILocation(line: 256, column: 7, scope: !2252)
!2362 = !DILocation(line: 257, column: 13, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2359, file: !511, line: 256, column: 24)
!2364 = !DILocation(line: 257, column: 18, scope: !2363)
!2365 = !DILocation(line: 257, column: 27, scope: !2363)
!2366 = !DILocation(line: 257, column: 5, scope: !2363)
!2367 = !DILocation(line: 259, column: 66, scope: !2363)
!2368 = !DILocation(line: 258, column: 5, scope: !2363)
!2369 = !DILocation(line: 260, column: 3, scope: !2363)
!2370 = !DILocation(line: 261, column: 1, scope: !2252)
!2371 = distinct !DISubprogram(name: "tarobject_hash", scope: !511, file: !511, line: 456, type: !2372, isLocal: true, isDefinition: true, scopeLine: 458, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !564)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{null, !272, !550, !425}
!2374 = !DILocalVariable(name: "tc", arg: 1, scope: !2371, file: !511, line: 456, type: !272)
!2375 = !DILocation(line: 456, column: 35, scope: !2371)
!2376 = !DILocalVariable(name: "te", arg: 2, scope: !2371, file: !511, line: 456, type: !550)
!2377 = !DILocation(line: 456, column: 57, scope: !2371)
!2378 = !DILocalVariable(name: "namenode", arg: 3, scope: !2371, file: !511, line: 457, type: !425)
!2379 = !DILocation(line: 457, column: 38, scope: !2371)
!2380 = !DILocation(line: 459, column: 7, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2371, file: !511, line: 459, column: 7)
!2382 = !DILocation(line: 459, column: 11, scope: !2381)
!2383 = !DILocation(line: 459, column: 16, scope: !2381)
!2384 = !DILocation(line: 459, column: 7, scope: !2371)
!2385 = !DILocalVariable(name: "err", scope: !2386, file: !511, line: 460, type: !526)
!2386 = distinct !DILexicalBlock(scope: !2381, file: !511, line: 459, column: 38)
!2387 = !DILocation(line: 460, column: 23, scope: !2386)
!2388 = !DILocalVariable(name: "fnamebuf", scope: !2386, file: !511, line: 461, type: !2226)
!2389 = !DILocation(line: 461, column: 10, scope: !2386)
!2390 = !DILocalVariable(name: "newhash", scope: !2386, file: !511, line: 462, type: !270)
!2391 = !DILocation(line: 462, column: 11, scope: !2386)
!2392 = !DILocation(line: 464, column: 15, scope: !2386)
!2393 = !DILocation(line: 464, column: 13, scope: !2386)
!2394 = !DILocation(line: 465, column: 28, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2386, file: !511, line: 465, column: 9)
!2396 = !DILocation(line: 465, column: 32, scope: !2395)
!2397 = !DILocation(line: 465, column: 48, scope: !2395)
!2398 = !DILocation(line: 465, column: 13, scope: !2395)
!2399 = !DILocation(line: 465, column: 17, scope: !2395)
!2400 = !DILocation(line: 465, column: 9, scope: !2395)
!2401 = !DILocation(line: 465, column: 29, scope: !2395)
!2402 = !DILocation(line: 465, column: 9, scope: !2386)
!2403 = !DILocation(line: 466, column: 14, scope: !2395)
!2404 = !DILocation(line: 467, column: 34, scope: !2395)
!2405 = !DILocation(line: 467, column: 44, scope: !2395)
!2406 = !DILocation(line: 467, column: 48, scope: !2395)
!2407 = !DILocation(line: 467, column: 14, scope: !2395)
!2408 = !DILocation(line: 467, column: 64, scope: !2395)
!2409 = !DILocation(line: 466, column: 7, scope: !2410)
!2410 = !DILexicalBlockFile(scope: !2395, file: !511, discriminator: 1)
!2411 = !DILocation(line: 466, column: 7, scope: !2395)
!2412 = !DILocation(line: 468, column: 28, scope: !2386)
!2413 = !DILocation(line: 468, column: 32, scope: !2386)
!2414 = !DILocation(line: 468, column: 5, scope: !2386)
!2415 = !DILocation(line: 470, column: 25, scope: !2386)
!2416 = !DILocation(line: 470, column: 5, scope: !2386)
!2417 = !DILocation(line: 470, column: 15, scope: !2386)
!2418 = !DILocation(line: 470, column: 23, scope: !2386)
!2419 = !DILocation(line: 471, column: 57, scope: !2386)
!2420 = !DILocation(line: 471, column: 67, scope: !2386)
!2421 = !DILocation(line: 471, column: 5, scope: !2386)
!2422 = !DILocation(line: 472, column: 3, scope: !2386)
!2423 = !DILocation(line: 472, column: 14, scope: !2424)
!2424 = !DILexicalBlockFile(scope: !2425, file: !511, discriminator: 1)
!2425 = distinct !DILexicalBlock(scope: !2381, file: !511, line: 472, column: 14)
!2426 = !DILocation(line: 472, column: 18, scope: !2424)
!2427 = !DILocation(line: 472, column: 23, scope: !2424)
!2428 = !DILocalVariable(name: "linknode", scope: !2429, file: !511, line: 473, type: !425)
!2429 = distinct !DILexicalBlock(scope: !2425, file: !511, line: 472, column: 49)
!2430 = !DILocation(line: 473, column: 27, scope: !2429)
!2431 = !DILocation(line: 475, column: 36, scope: !2429)
!2432 = !DILocation(line: 475, column: 40, scope: !2429)
!2433 = !DILocation(line: 475, column: 16, scope: !2429)
!2434 = !DILocation(line: 475, column: 14, scope: !2429)
!2435 = !DILocation(line: 476, column: 25, scope: !2429)
!2436 = !DILocation(line: 476, column: 35, scope: !2429)
!2437 = !DILocation(line: 476, column: 5, scope: !2429)
!2438 = !DILocation(line: 476, column: 15, scope: !2429)
!2439 = !DILocation(line: 476, column: 23, scope: !2429)
!2440 = !DILocation(line: 477, column: 61, scope: !2429)
!2441 = !DILocation(line: 477, column: 71, scope: !2429)
!2442 = !DILocation(line: 477, column: 5, scope: !2429)
!2443 = !DILocation(line: 478, column: 3, scope: !2429)
!2444 = !DILocation(line: 479, column: 1, scope: !2371)
!2445 = !DILocalVariable(name: "tc", arg: 1, scope: !620, file: !511, line: 346, type: !272)
!2446 = !DILocation(line: 346, column: 38, scope: !620)
!2447 = !DILocalVariable(name: "te", arg: 2, scope: !620, file: !511, line: 346, type: !550)
!2448 = !DILocation(line: 346, column: 60, scope: !620)
!2449 = !DILocalVariable(name: "path", arg: 3, scope: !620, file: !511, line: 347, type: !288)
!2450 = !DILocation(line: 347, column: 31, scope: !620)
!2451 = !DILocalVariable(name: "st", arg: 4, scope: !620, file: !511, line: 347, type: !440)
!2452 = !DILocation(line: 347, column: 55, scope: !620)
!2453 = !DILocalVariable(name: "namenode", arg: 5, scope: !620, file: !511, line: 348, type: !425)
!2454 = !DILocation(line: 348, column: 41, scope: !620)
!2455 = !DILocalVariable(name: "err", scope: !620, file: !511, line: 353, type: !526)
!2456 = !DILocation(line: 353, column: 21, scope: !620)
!2457 = !DILocalVariable(name: "linknode", scope: !620, file: !511, line: 354, type: !425)
!2458 = !DILocation(line: 354, column: 25, scope: !620)
!2459 = !DILocalVariable(name: "fnamebuf", scope: !620, file: !511, line: 355, type: !2226)
!2460 = !DILocation(line: 355, column: 8, scope: !620)
!2461 = !DILocalVariable(name: "fnamenewbuf", scope: !620, file: !511, line: 356, type: !2226)
!2462 = !DILocation(line: 356, column: 8, scope: !620)
!2463 = !DILocalVariable(name: "newhash", scope: !620, file: !511, line: 357, type: !270)
!2464 = !DILocation(line: 357, column: 9, scope: !620)
!2465 = !DILocalVariable(name: "rc", scope: !620, file: !511, line: 358, type: !277)
!2466 = !DILocation(line: 358, column: 7, scope: !620)
!2467 = !DILocation(line: 360, column: 11, scope: !620)
!2468 = !DILocation(line: 360, column: 15, scope: !620)
!2469 = !DILocation(line: 360, column: 3, scope: !620)
!2470 = !DILocation(line: 364, column: 15, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !620, file: !511, line: 360, column: 21)
!2472 = !DILocation(line: 364, column: 10, scope: !2471)
!2473 = !DILocation(line: 364, column: 8, scope: !2471)
!2474 = !DILocation(line: 365, column: 9, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2471, file: !511, line: 365, column: 9)
!2476 = !DILocation(line: 365, column: 12, scope: !2475)
!2477 = !DILocation(line: 365, column: 9, scope: !2471)
!2478 = !DILocation(line: 366, column: 15, scope: !2475)
!2479 = !DILocation(line: 367, column: 15, scope: !2475)
!2480 = !DILocation(line: 367, column: 21, scope: !2475)
!2481 = !DILocation(line: 367, column: 25, scope: !2475)
!2482 = !DILocation(line: 366, column: 7, scope: !2483)
!2483 = !DILexicalBlockFile(scope: !2475, file: !511, discriminator: 1)
!2484 = !DILocation(line: 366, column: 7, scope: !2475)
!2485 = !DILocation(line: 368, column: 5, scope: !2471)
!2486 = !DILocation(line: 370, column: 21, scope: !2471)
!2487 = !DILocation(line: 370, column: 25, scope: !2471)
!2488 = !DILocation(line: 369, column: 5, scope: !2471)
!2489 = !DILocation(line: 375, column: 22, scope: !2471)
!2490 = !DILocation(line: 375, column: 29, scope: !2471)
!2491 = !DILocation(line: 375, column: 33, scope: !2471)
!2492 = !DILocation(line: 375, column: 5, scope: !2471)
!2493 = !DILocation(line: 377, column: 15, scope: !2471)
!2494 = !DILocation(line: 377, column: 13, scope: !2471)
!2495 = !DILocation(line: 378, column: 28, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2471, file: !511, line: 378, column: 9)
!2497 = !DILocation(line: 378, column: 32, scope: !2496)
!2498 = !DILocation(line: 378, column: 48, scope: !2496)
!2499 = !DILocation(line: 378, column: 60, scope: !2496)
!2500 = !DILocation(line: 378, column: 67, scope: !2496)
!2501 = !DILocation(line: 378, column: 71, scope: !2496)
!2502 = !DILocation(line: 378, column: 9, scope: !2496)
!2503 = !DILocation(line: 378, column: 83, scope: !2496)
!2504 = !DILocation(line: 378, column: 9, scope: !2471)
!2505 = !DILocation(line: 379, column: 14, scope: !2496)
!2506 = !DILocation(line: 380, column: 34, scope: !2496)
!2507 = !DILocation(line: 380, column: 44, scope: !2496)
!2508 = !DILocation(line: 380, column: 48, scope: !2496)
!2509 = !DILocation(line: 380, column: 14, scope: !2496)
!2510 = !DILocation(line: 381, column: 34, scope: !2496)
!2511 = !DILocation(line: 381, column: 58, scope: !2496)
!2512 = !DILocation(line: 381, column: 14, scope: !2496)
!2513 = !DILocation(line: 381, column: 73, scope: !2496)
!2514 = !DILocation(line: 379, column: 7, scope: !2515)
!2515 = !DILexicalBlockFile(scope: !2496, file: !511, discriminator: 1)
!2516 = !DILocation(line: 379, column: 7, scope: !2496)
!2517 = !DILocation(line: 382, column: 25, scope: !2471)
!2518 = !DILocation(line: 382, column: 5, scope: !2471)
!2519 = !DILocation(line: 382, column: 15, scope: !2471)
!2520 = !DILocation(line: 382, column: 23, scope: !2471)
!2521 = !DILocation(line: 383, column: 57, scope: !2471)
!2522 = !DILocation(line: 383, column: 67, scope: !2471)
!2523 = !DILocation(line: 383, column: 5, scope: !2471)
!2524 = !DILocation(line: 385, column: 28, scope: !2471)
!2525 = !DILocation(line: 385, column: 32, scope: !2471)
!2526 = !DILocation(line: 385, column: 5, scope: !2471)
!2527 = !DILocation(line: 387, column: 23, scope: !2471)
!2528 = !DILocation(line: 387, column: 5, scope: !2471)
!2529 = !DILocation(line: 389, column: 9, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2471, file: !511, line: 389, column: 9)
!2531 = !DILocation(line: 389, column: 19, scope: !2530)
!2532 = !DILocation(line: 389, column: 9, scope: !2471)
!2533 = !DILocation(line: 391, column: 13, scope: !2530)
!2534 = !DILocation(line: 391, column: 23, scope: !2530)
!2535 = !DILocation(line: 391, column: 37, scope: !2530)
!2536 = !DILocation(line: 392, column: 13, scope: !2530)
!2537 = !DILocation(line: 392, column: 23, scope: !2530)
!2538 = !DILocation(line: 392, column: 37, scope: !2530)
!2539 = !DILocation(line: 393, column: 13, scope: !2530)
!2540 = !DILocation(line: 393, column: 23, scope: !2530)
!2541 = !DILocation(line: 393, column: 37, scope: !2530)
!2542 = !DILocation(line: 390, column: 7, scope: !2530)
!2543 = !DILocation(line: 394, column: 17, scope: !2471)
!2544 = !DILocation(line: 394, column: 21, scope: !2471)
!2545 = !DILocation(line: 394, column: 25, scope: !2471)
!2546 = !DILocation(line: 394, column: 30, scope: !2471)
!2547 = !DILocation(line: 394, column: 34, scope: !2471)
!2548 = !DILocation(line: 394, column: 10, scope: !2471)
!2549 = !DILocation(line: 394, column: 8, scope: !2471)
!2550 = !DILocation(line: 395, column: 32, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2471, file: !511, line: 395, column: 9)
!2552 = !DILocation(line: 395, column: 9, scope: !2551)
!2553 = !DILocation(line: 395, column: 9, scope: !2471)
!2554 = !DILocation(line: 396, column: 15, scope: !2551)
!2555 = !DILocation(line: 396, column: 63, scope: !2551)
!2556 = !DILocation(line: 396, column: 67, scope: !2551)
!2557 = !DILocation(line: 396, column: 7, scope: !2558)
!2558 = !DILexicalBlockFile(scope: !2551, file: !511, discriminator: 1)
!2559 = !DILocation(line: 396, column: 7, scope: !2551)
!2560 = !DILocation(line: 397, column: 17, scope: !2471)
!2561 = !DILocation(line: 397, column: 21, scope: !2471)
!2562 = !DILocation(line: 397, column: 25, scope: !2471)
!2563 = !DILocation(line: 397, column: 30, scope: !2471)
!2564 = !DILocation(line: 397, column: 10, scope: !2471)
!2565 = !DILocation(line: 397, column: 8, scope: !2471)
!2566 = !DILocation(line: 398, column: 32, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2471, file: !511, line: 398, column: 9)
!2568 = !DILocation(line: 398, column: 9, scope: !2567)
!2569 = !DILocation(line: 398, column: 9, scope: !2471)
!2570 = !DILocation(line: 399, column: 15, scope: !2567)
!2571 = !DILocation(line: 399, column: 65, scope: !2567)
!2572 = !DILocation(line: 399, column: 69, scope: !2567)
!2573 = !DILocation(line: 399, column: 7, scope: !2574)
!2574 = !DILexicalBlockFile(scope: !2567, file: !511, discriminator: 1)
!2575 = !DILocation(line: 399, column: 7, scope: !2567)
!2576 = !DILocation(line: 402, column: 10, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2471, file: !511, line: 402, column: 9)
!2578 = !DILocation(line: 402, column: 9, scope: !2471)
!2579 = !DILocation(line: 403, column: 7, scope: !2577)
!2580 = !DILocation(line: 403, column: 17, scope: !2577)
!2581 = !DILocation(line: 403, column: 23, scope: !2577)
!2582 = !DILocation(line: 405, column: 5, scope: !2471)
!2583 = !DILocation(line: 406, column: 15, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2471, file: !511, line: 406, column: 9)
!2585 = !DILocation(line: 406, column: 9, scope: !2584)
!2586 = !DILocation(line: 406, column: 9, scope: !2471)
!2587 = !DILocation(line: 407, column: 15, scope: !2584)
!2588 = !DILocation(line: 407, column: 58, scope: !2584)
!2589 = !DILocation(line: 407, column: 62, scope: !2584)
!2590 = !DILocation(line: 407, column: 7, scope: !2591)
!2591 = !DILexicalBlockFile(scope: !2584, file: !511, discriminator: 1)
!2592 = !DILocation(line: 407, column: 7, scope: !2584)
!2593 = !DILocation(line: 408, column: 5, scope: !2471)
!2594 = !DILocation(line: 410, column: 16, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2471, file: !511, line: 410, column: 9)
!2596 = !DILocation(line: 410, column: 9, scope: !2595)
!2597 = !DILocation(line: 410, column: 9, scope: !2471)
!2598 = !DILocation(line: 411, column: 15, scope: !2595)
!2599 = !DILocation(line: 411, column: 56, scope: !2595)
!2600 = !DILocation(line: 411, column: 60, scope: !2595)
!2601 = !DILocation(line: 411, column: 7, scope: !2602)
!2602 = !DILexicalBlockFile(scope: !2595, file: !511, discriminator: 1)
!2603 = !DILocation(line: 411, column: 7, scope: !2595)
!2604 = !DILocation(line: 412, column: 5, scope: !2471)
!2605 = !DILocation(line: 413, column: 5, scope: !2471)
!2606 = !DILocation(line: 415, column: 15, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2471, file: !511, line: 415, column: 9)
!2608 = !DILocation(line: 415, column: 29, scope: !2607)
!2609 = !DILocation(line: 415, column: 33, scope: !2607)
!2610 = !DILocation(line: 415, column: 9, scope: !2607)
!2611 = !DILocation(line: 415, column: 9, scope: !2471)
!2612 = !DILocation(line: 416, column: 15, scope: !2607)
!2613 = !DILocation(line: 416, column: 58, scope: !2607)
!2614 = !DILocation(line: 416, column: 62, scope: !2607)
!2615 = !DILocation(line: 416, column: 7, scope: !2616)
!2616 = !DILexicalBlockFile(scope: !2607, file: !511, discriminator: 1)
!2617 = !DILocation(line: 416, column: 7, scope: !2607)
!2618 = !DILocation(line: 417, column: 5, scope: !2471)
!2619 = !DILocation(line: 418, column: 5, scope: !2471)
!2620 = !DILocation(line: 420, column: 15, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2471, file: !511, line: 420, column: 9)
!2622 = !DILocation(line: 420, column: 29, scope: !2621)
!2623 = !DILocation(line: 420, column: 33, scope: !2621)
!2624 = !DILocation(line: 420, column: 9, scope: !2621)
!2625 = !DILocation(line: 420, column: 9, scope: !2471)
!2626 = !DILocation(line: 421, column: 15, scope: !2621)
!2627 = !DILocation(line: 421, column: 58, scope: !2621)
!2628 = !DILocation(line: 421, column: 62, scope: !2621)
!2629 = !DILocation(line: 421, column: 7, scope: !2630)
!2630 = !DILexicalBlockFile(scope: !2621, file: !511, discriminator: 1)
!2631 = !DILocation(line: 421, column: 7, scope: !2621)
!2632 = !DILocation(line: 422, column: 5, scope: !2471)
!2633 = !DILocation(line: 423, column: 5, scope: !2471)
!2634 = !DILocation(line: 425, column: 5, scope: !2471)
!2635 = !DILocation(line: 426, column: 33, scope: !2471)
!2636 = !DILocation(line: 426, column: 49, scope: !2471)
!2637 = !DILocation(line: 426, column: 42, scope: !2471)
!2638 = !DILocation(line: 426, column: 5, scope: !2639)
!2639 = !DILexicalBlockFile(scope: !2471, file: !511, discriminator: 1)
!2640 = !DILocation(line: 427, column: 36, scope: !2471)
!2641 = !DILocation(line: 427, column: 40, scope: !2471)
!2642 = !DILocation(line: 427, column: 16, scope: !2471)
!2643 = !DILocation(line: 427, column: 14, scope: !2471)
!2644 = !DILocation(line: 428, column: 47, scope: !2471)
!2645 = !DILocation(line: 428, column: 57, scope: !2471)
!2646 = !DILocation(line: 428, column: 61, scope: !2471)
!2647 = !DILocation(line: 428, column: 67, scope: !2471)
!2648 = !DILocation(line: 428, column: 71, scope: !2471)
!2649 = !DILocation(line: 428, column: 76, scope: !2471)
!2650 = !DILocation(line: 428, column: 33, scope: !2471)
!2651 = !DILocation(line: 428, column: 88, scope: !2471)
!2652 = !DILocation(line: 428, column: 115, scope: !2471)
!2653 = !DILocation(line: 428, column: 125, scope: !2471)
!2654 = !DILocation(line: 428, column: 129, scope: !2471)
!2655 = !DILocation(line: 428, column: 135, scope: !2471)
!2656 = !DILocation(line: 428, column: 139, scope: !2471)
!2657 = !DILocation(line: 428, column: 144, scope: !2471)
!2658 = !DILocation(line: 428, column: 101, scope: !2639)
!2659 = !DILocation(line: 428, column: 156, scope: !2471)
!2660 = !DILocation(line: 428, column: 94, scope: !2661)
!2661 = !DILexicalBlockFile(scope: !2471, file: !511, discriminator: 2)
!2662 = !DILocation(line: 428, column: 5, scope: !2663)
!2663 = !DILexicalBlockFile(scope: !2471, file: !511, discriminator: 3)
!2664 = !DILocation(line: 430, column: 9, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2471, file: !511, line: 430, column: 9)
!2666 = !DILocation(line: 430, column: 19, scope: !2665)
!2667 = !DILocation(line: 430, column: 25, scope: !2665)
!2668 = !DILocation(line: 430, column: 9, scope: !2471)
!2669 = !DILocation(line: 431, column: 7, scope: !2665)
!2670 = !DILocation(line: 432, column: 5, scope: !2471)
!2671 = !DILocation(line: 433, column: 25, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2471, file: !511, line: 433, column: 9)
!2673 = !DILocation(line: 433, column: 30, scope: !2672)
!2674 = !DILocation(line: 433, column: 9, scope: !2672)
!2675 = !DILocation(line: 433, column: 9, scope: !2471)
!2676 = !DILocation(line: 434, column: 15, scope: !2672)
!2677 = !DILocation(line: 434, column: 61, scope: !2672)
!2678 = !DILocation(line: 434, column: 65, scope: !2672)
!2679 = !DILocation(line: 434, column: 7, scope: !2680)
!2680 = !DILexicalBlockFile(scope: !2672, file: !511, discriminator: 1)
!2681 = !DILocation(line: 434, column: 7, scope: !2672)
!2682 = !DILocation(line: 435, column: 25, scope: !2471)
!2683 = !DILocation(line: 435, column: 35, scope: !2471)
!2684 = !DILocation(line: 435, column: 5, scope: !2471)
!2685 = !DILocation(line: 435, column: 15, scope: !2471)
!2686 = !DILocation(line: 435, column: 23, scope: !2471)
!2687 = !DILocation(line: 436, column: 61, scope: !2471)
!2688 = !DILocation(line: 436, column: 71, scope: !2471)
!2689 = !DILocation(line: 436, column: 5, scope: !2471)
!2690 = !DILocation(line: 437, column: 5, scope: !2471)
!2691 = !DILocation(line: 440, column: 17, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2471, file: !511, line: 440, column: 9)
!2693 = !DILocation(line: 440, column: 21, scope: !2692)
!2694 = !DILocation(line: 440, column: 31, scope: !2692)
!2695 = !DILocation(line: 440, column: 9, scope: !2692)
!2696 = !DILocation(line: 440, column: 9, scope: !2471)
!2697 = !DILocation(line: 441, column: 15, scope: !2692)
!2698 = !DILocation(line: 441, column: 65, scope: !2692)
!2699 = !DILocation(line: 441, column: 69, scope: !2692)
!2700 = !DILocation(line: 441, column: 7, scope: !2701)
!2701 = !DILexicalBlockFile(scope: !2692, file: !511, discriminator: 1)
!2702 = !DILocation(line: 441, column: 7, scope: !2692)
!2703 = !DILocation(line: 442, column: 5, scope: !2471)
!2704 = !DILocation(line: 443, column: 5, scope: !2471)
!2705 = !DILocation(line: 446, column: 15, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2471, file: !511, line: 446, column: 9)
!2707 = !DILocation(line: 446, column: 9, scope: !2706)
!2708 = !DILocation(line: 446, column: 9, scope: !2471)
!2709 = !DILocation(line: 447, column: 15, scope: !2706)
!2710 = !DILocation(line: 447, column: 61, scope: !2706)
!2711 = !DILocation(line: 447, column: 65, scope: !2706)
!2712 = !DILocation(line: 447, column: 7, scope: !2713)
!2713 = !DILexicalBlockFile(scope: !2706, file: !511, discriminator: 1)
!2714 = !DILocation(line: 447, column: 7, scope: !2706)
!2715 = !DILocation(line: 448, column: 5, scope: !2471)
!2716 = !DILocation(line: 449, column: 5, scope: !2471)
!2717 = !DILocation(line: 451, column: 93, scope: !2471)
!2718 = !DILocation(line: 451, column: 97, scope: !2471)
!2719 = !DILocation(line: 451, column: 5, scope: !2471)
!2720 = !DILocation(line: 453, column: 1, scope: !620)
!2721 = distinct !DISubprogram(name: "tarobject_matches", scope: !511, file: !511, line: 531, type: !2722, isLocal: true, isDefinition: true, scopeLine: 535, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !564)
!2722 = !DISubroutineType(types: !2723)
!2723 = !{null, !272, !288, !2724, !270, !288, !550, !425}
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64, align: 64)
!2725 = !DILocalVariable(name: "tc", arg: 1, scope: !2721, file: !511, line: 531, type: !272)
!2726 = !DILocation(line: 531, column: 38, scope: !2721)
!2727 = !DILocalVariable(name: "fn_old", arg: 2, scope: !2721, file: !511, line: 532, type: !288)
!2728 = !DILocation(line: 532, column: 31, scope: !2721)
!2729 = !DILocalVariable(name: "stab", arg: 3, scope: !2721, file: !511, line: 532, type: !2724)
!2730 = !DILocation(line: 532, column: 52, scope: !2721)
!2731 = !DILocalVariable(name: "oldhash", arg: 4, scope: !2721, file: !511, line: 532, type: !270)
!2732 = !DILocation(line: 532, column: 64, scope: !2721)
!2733 = !DILocalVariable(name: "fn_new", arg: 5, scope: !2721, file: !511, line: 533, type: !288)
!2734 = !DILocation(line: 533, column: 31, scope: !2721)
!2735 = !DILocalVariable(name: "te", arg: 6, scope: !2721, file: !511, line: 533, type: !550)
!2736 = !DILocation(line: 533, column: 57, scope: !2721)
!2737 = !DILocalVariable(name: "namenode", arg: 7, scope: !2721, file: !511, line: 534, type: !425)
!2738 = !DILocation(line: 534, column: 41, scope: !2721)
!2739 = !DILocalVariable(name: "linkname", scope: !2721, file: !511, line: 536, type: !270)
!2740 = !DILocation(line: 536, column: 9, scope: !2721)
!2741 = !DILocalVariable(name: "linksize", scope: !2721, file: !511, line: 537, type: !987)
!2742 = !DILocation(line: 537, column: 11, scope: !2721)
!2743 = !DILocation(line: 539, column: 3, scope: !2721)
!2744 = !DILocation(line: 541, column: 11, scope: !2721)
!2745 = !DILocation(line: 541, column: 15, scope: !2721)
!2746 = !DILocation(line: 541, column: 3, scope: !2721)
!2747 = !DILocation(line: 544, column: 5, scope: !2748)
!2748 = distinct !DILexicalBlock(scope: !2721, file: !511, line: 541, column: 21)
!2749 = !DILocation(line: 548, column: 9, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2748, file: !511, line: 548, column: 9)
!2751 = !DILocation(line: 548, column: 15, scope: !2750)
!2752 = !DILocation(line: 548, column: 12, scope: !2750)
!2753 = !DILocation(line: 548, column: 23, scope: !2750)
!2754 = !DILocation(line: 548, column: 9, scope: !2748)
!2755 = !DILocation(line: 549, column: 7, scope: !2750)
!2756 = !DILocation(line: 550, column: 25, scope: !2748)
!2757 = !DILocation(line: 550, column: 31, scope: !2748)
!2758 = !DILocation(line: 550, column: 39, scope: !2748)
!2759 = !DILocation(line: 550, column: 16, scope: !2748)
!2760 = !DILocation(line: 550, column: 14, scope: !2748)
!2761 = !DILocation(line: 551, column: 25, scope: !2748)
!2762 = !DILocation(line: 551, column: 33, scope: !2748)
!2763 = !DILocation(line: 551, column: 43, scope: !2748)
!2764 = !DILocation(line: 551, column: 49, scope: !2748)
!2765 = !DILocation(line: 551, column: 57, scope: !2748)
!2766 = !DILocation(line: 551, column: 16, scope: !2748)
!2767 = !DILocation(line: 551, column: 14, scope: !2748)
!2768 = !DILocation(line: 552, column: 9, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2748, file: !511, line: 552, column: 9)
!2770 = !DILocation(line: 552, column: 18, scope: !2769)
!2771 = !DILocation(line: 552, column: 9, scope: !2748)
!2772 = !DILocation(line: 553, column: 15, scope: !2769)
!2773 = !DILocation(line: 553, column: 56, scope: !2769)
!2774 = !DILocation(line: 553, column: 7, scope: !2775)
!2775 = !DILexicalBlockFile(scope: !2769, file: !511, discriminator: 1)
!2776 = !DILocation(line: 553, column: 7, scope: !2769)
!2777 = !DILocation(line: 554, column: 14, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2769, file: !511, line: 554, column: 14)
!2779 = !DILocation(line: 554, column: 25, scope: !2778)
!2780 = !DILocation(line: 554, column: 31, scope: !2778)
!2781 = !DILocation(line: 554, column: 23, scope: !2778)
!2782 = !DILocation(line: 554, column: 14, scope: !2769)
!2783 = !DILocation(line: 555, column: 14, scope: !2778)
!2784 = !DILocation(line: 556, column: 14, scope: !2778)
!2785 = !DILocation(line: 556, column: 32, scope: !2778)
!2786 = !DILocation(line: 556, column: 38, scope: !2778)
!2787 = !DILocation(line: 556, column: 47, scope: !2778)
!2788 = !DILocation(line: 555, column: 7, scope: !2789)
!2789 = !DILexicalBlockFile(scope: !2778, file: !511, discriminator: 1)
!2790 = !DILocation(line: 555, column: 7, scope: !2778)
!2791 = !DILocation(line: 557, column: 14, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2778, file: !511, line: 557, column: 14)
!2793 = !DILocation(line: 557, column: 25, scope: !2792)
!2794 = !DILocation(line: 557, column: 31, scope: !2792)
!2795 = !DILocation(line: 557, column: 23, scope: !2792)
!2796 = !DILocation(line: 557, column: 14, scope: !2778)
!2797 = !DILocation(line: 558, column: 15, scope: !2792)
!2798 = !DILocation(line: 559, column: 14, scope: !2792)
!2799 = !DILocation(line: 559, column: 32, scope: !2792)
!2800 = !DILocation(line: 559, column: 38, scope: !2792)
!2801 = !DILocation(line: 559, column: 47, scope: !2792)
!2802 = !DILocation(line: 558, column: 7, scope: !2803)
!2803 = !DILexicalBlockFile(scope: !2792, file: !511, discriminator: 1)
!2804 = !DILocation(line: 558, column: 7, scope: !2792)
!2805 = !DILocation(line: 560, column: 14, scope: !2748)
!2806 = !DILocation(line: 560, column: 5, scope: !2748)
!2807 = !DILocation(line: 560, column: 24, scope: !2748)
!2808 = !DILocation(line: 561, column: 16, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2748, file: !511, line: 561, column: 9)
!2810 = !DILocation(line: 561, column: 26, scope: !2809)
!2811 = !DILocation(line: 561, column: 30, scope: !2809)
!2812 = !DILocation(line: 561, column: 9, scope: !2809)
!2813 = !DILocation(line: 561, column: 40, scope: !2809)
!2814 = !DILocation(line: 561, column: 9, scope: !2748)
!2815 = !DILocation(line: 562, column: 12, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2809, file: !511, line: 561, column: 46)
!2817 = !DILocation(line: 562, column: 7, scope: !2816)
!2818 = !DILocation(line: 563, column: 7, scope: !2816)
!2819 = !DILocation(line: 565, column: 12, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2809, file: !511, line: 564, column: 12)
!2821 = !DILocation(line: 565, column: 7, scope: !2820)
!2822 = !DILocation(line: 567, column: 5, scope: !2748)
!2823 = !DILocation(line: 569, column: 8, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2748, file: !511, line: 569, column: 8)
!2825 = !DILocation(line: 569, column: 14, scope: !2824)
!2826 = !DILocation(line: 569, column: 11, scope: !2824)
!2827 = !DILocation(line: 569, column: 22, scope: !2824)
!2828 = !DILocation(line: 569, column: 31, scope: !2824)
!2829 = !DILocation(line: 569, column: 34, scope: !2830)
!2830 = !DILexicalBlockFile(scope: !2824, file: !511, discriminator: 1)
!2831 = !DILocation(line: 569, column: 40, scope: !2830)
!2832 = !DILocation(line: 569, column: 51, scope: !2830)
!2833 = !DILocation(line: 569, column: 55, scope: !2830)
!2834 = !DILocation(line: 569, column: 48, scope: !2830)
!2835 = !DILocation(line: 569, column: 8, scope: !2830)
!2836 = !DILocation(line: 570, column: 7, scope: !2824)
!2837 = !DILocation(line: 571, column: 5, scope: !2748)
!2838 = !DILocation(line: 573, column: 8, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2748, file: !511, line: 573, column: 8)
!2840 = !DILocation(line: 573, column: 14, scope: !2839)
!2841 = !DILocation(line: 573, column: 11, scope: !2839)
!2842 = !DILocation(line: 573, column: 22, scope: !2839)
!2843 = !DILocation(line: 573, column: 31, scope: !2839)
!2844 = !DILocation(line: 573, column: 34, scope: !2845)
!2845 = !DILexicalBlockFile(scope: !2839, file: !511, discriminator: 1)
!2846 = !DILocation(line: 573, column: 40, scope: !2845)
!2847 = !DILocation(line: 573, column: 51, scope: !2845)
!2848 = !DILocation(line: 573, column: 55, scope: !2845)
!2849 = !DILocation(line: 573, column: 48, scope: !2845)
!2850 = !DILocation(line: 573, column: 8, scope: !2845)
!2851 = !DILocation(line: 574, column: 7, scope: !2839)
!2852 = !DILocation(line: 575, column: 5, scope: !2748)
!2853 = !DILocation(line: 577, column: 8, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2748, file: !511, line: 577, column: 8)
!2855 = !DILocation(line: 577, column: 14, scope: !2854)
!2856 = !DILocation(line: 577, column: 11, scope: !2854)
!2857 = !DILocation(line: 577, column: 22, scope: !2854)
!2858 = !DILocation(line: 577, column: 8, scope: !2748)
!2859 = !DILocation(line: 578, column: 7, scope: !2854)
!2860 = !DILocation(line: 579, column: 5, scope: !2748)
!2861 = !DILocation(line: 584, column: 11, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2748, file: !511, line: 584, column: 9)
!2863 = !DILocation(line: 584, column: 21, scope: !2862)
!2864 = !DILocation(line: 584, column: 27, scope: !2862)
!2865 = !DILocation(line: 584, column: 45, scope: !2862)
!2866 = !DILocation(line: 585, column: 10, scope: !2862)
!2867 = !DILocation(line: 585, column: 16, scope: !2862)
!2868 = !DILocation(line: 585, column: 13, scope: !2862)
!2869 = !DILocation(line: 585, column: 24, scope: !2862)
!2870 = !DILocation(line: 585, column: 33, scope: !2862)
!2871 = !DILocation(line: 585, column: 36, scope: !2872)
!2872 = !DILexicalBlockFile(scope: !2862, file: !511, discriminator: 1)
!2873 = !DILocation(line: 585, column: 40, scope: !2872)
!2874 = !DILocation(line: 585, column: 48, scope: !2872)
!2875 = !DILocation(line: 585, column: 54, scope: !2872)
!2876 = !DILocation(line: 585, column: 45, scope: !2872)
!2877 = !DILocation(line: 584, column: 9, scope: !2878)
!2878 = !DILexicalBlockFile(scope: !2748, file: !511, discriminator: 1)
!2879 = !DILocation(line: 586, column: 7, scope: !2862)
!2880 = !DILocation(line: 587, column: 16, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2748, file: !511, line: 587, column: 9)
!2882 = !DILocation(line: 587, column: 25, scope: !2881)
!2883 = !DILocation(line: 587, column: 35, scope: !2881)
!2884 = !DILocation(line: 587, column: 9, scope: !2881)
!2885 = !DILocation(line: 587, column: 44, scope: !2881)
!2886 = !DILocation(line: 587, column: 9, scope: !2748)
!2887 = !DILocation(line: 588, column: 7, scope: !2881)
!2888 = !DILocation(line: 589, column: 5, scope: !2748)
!2889 = !DILocation(line: 591, column: 93, scope: !2748)
!2890 = !DILocation(line: 591, column: 97, scope: !2748)
!2891 = !DILocation(line: 591, column: 5, scope: !2748)
!2892 = !DILocation(line: 595, column: 15, scope: !2721)
!2893 = !DILocation(line: 597, column: 15, scope: !2721)
!2894 = !DILocation(line: 597, column: 25, scope: !2721)
!2895 = !DILocation(line: 597, column: 40, scope: !2721)
!2896 = !DILocation(line: 597, column: 44, scope: !2721)
!2897 = !DILocation(line: 597, column: 31, scope: !2721)
!2898 = !DILocation(line: 594, column: 3, scope: !2721)
!2899 = !DILocation(line: 598, column: 1, scope: !2721)
!2900 = !DILocation(line: 598, column: 1, scope: !2901)
!2901 = !DILexicalBlockFile(scope: !2721, file: !511, discriminator: 1)
!2902 = distinct !DISubprogram(name: "tarobject_set_perms", scope: !511, file: !511, line: 503, type: !2903, isLocal: true, isDefinition: true, scopeLine: 504, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !564)
!2903 = !DISubroutineType(types: !2904)
!2904 = !{null, !550, !288, !440}
!2905 = !DILocalVariable(name: "te", arg: 1, scope: !2902, file: !511, line: 503, type: !550)
!2906 = !DILocation(line: 503, column: 39, scope: !2902)
!2907 = !DILocalVariable(name: "path", arg: 2, scope: !2902, file: !511, line: 503, type: !288)
!2908 = !DILocation(line: 503, column: 55, scope: !2902)
!2909 = !DILocalVariable(name: "st", arg: 3, scope: !2902, file: !511, line: 503, type: !440)
!2910 = !DILocation(line: 503, column: 79, scope: !2902)
!2911 = !DILocalVariable(name: "rc", scope: !2902, file: !511, line: 505, type: !277)
!2912 = !DILocation(line: 505, column: 7, scope: !2902)
!2913 = !DILocation(line: 507, column: 7, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2902, file: !511, line: 507, column: 7)
!2915 = !DILocation(line: 507, column: 11, scope: !2914)
!2916 = !DILocation(line: 507, column: 16, scope: !2914)
!2917 = !DILocation(line: 507, column: 7, scope: !2902)
!2918 = !DILocation(line: 508, column: 5, scope: !2914)
!2919 = !DILocation(line: 510, column: 7, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !2902, file: !511, line: 510, column: 7)
!2921 = !DILocation(line: 510, column: 11, scope: !2920)
!2922 = !DILocation(line: 510, column: 16, scope: !2920)
!2923 = !DILocation(line: 510, column: 7, scope: !2902)
!2924 = !DILocation(line: 511, column: 17, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2920, file: !511, line: 510, column: 41)
!2926 = !DILocation(line: 511, column: 23, scope: !2925)
!2927 = !DILocation(line: 511, column: 27, scope: !2925)
!2928 = !DILocation(line: 511, column: 32, scope: !2925)
!2929 = !DILocation(line: 511, column: 36, scope: !2925)
!2930 = !DILocation(line: 511, column: 10, scope: !2925)
!2931 = !DILocation(line: 511, column: 8, scope: !2925)
!2932 = !DILocation(line: 512, column: 32, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2925, file: !511, line: 512, column: 9)
!2934 = !DILocation(line: 512, column: 9, scope: !2933)
!2935 = !DILocation(line: 512, column: 9, scope: !2925)
!2936 = !DILocation(line: 513, column: 15, scope: !2933)
!2937 = !DILocation(line: 513, column: 71, scope: !2933)
!2938 = !DILocation(line: 513, column: 7, scope: !2939)
!2939 = !DILexicalBlockFile(scope: !2933, file: !511, discriminator: 1)
!2940 = !DILocation(line: 513, column: 7, scope: !2933)
!2941 = !DILocation(line: 514, column: 3, scope: !2925)
!2942 = !DILocation(line: 515, column: 16, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2920, file: !511, line: 514, column: 10)
!2944 = !DILocation(line: 515, column: 22, scope: !2943)
!2945 = !DILocation(line: 515, column: 26, scope: !2943)
!2946 = !DILocation(line: 515, column: 31, scope: !2943)
!2947 = !DILocation(line: 515, column: 35, scope: !2943)
!2948 = !DILocation(line: 515, column: 10, scope: !2943)
!2949 = !DILocation(line: 515, column: 8, scope: !2943)
!2950 = !DILocation(line: 516, column: 32, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2943, file: !511, line: 516, column: 9)
!2952 = !DILocation(line: 516, column: 9, scope: !2951)
!2953 = !DILocation(line: 516, column: 9, scope: !2943)
!2954 = !DILocation(line: 517, column: 15, scope: !2951)
!2955 = !DILocation(line: 517, column: 63, scope: !2951)
!2956 = !DILocation(line: 517, column: 7, scope: !2957)
!2957 = !DILexicalBlockFile(scope: !2951, file: !511, discriminator: 1)
!2958 = !DILocation(line: 517, column: 7, scope: !2951)
!2959 = !DILocation(line: 518, column: 16, scope: !2943)
!2960 = !DILocation(line: 518, column: 22, scope: !2943)
!2961 = !DILocation(line: 518, column: 26, scope: !2943)
!2962 = !DILocation(line: 518, column: 31, scope: !2943)
!2963 = !DILocation(line: 518, column: 10, scope: !2943)
!2964 = !DILocation(line: 518, column: 8, scope: !2943)
!2965 = !DILocation(line: 519, column: 32, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2943, file: !511, line: 519, column: 9)
!2967 = !DILocation(line: 519, column: 9, scope: !2966)
!2968 = !DILocation(line: 519, column: 9, scope: !2943)
!2969 = !DILocation(line: 520, column: 15, scope: !2966)
!2970 = !DILocation(line: 520, column: 65, scope: !2966)
!2971 = !DILocation(line: 520, column: 7, scope: !2972)
!2972 = !DILexicalBlockFile(scope: !2966, file: !511, discriminator: 1)
!2973 = !DILocation(line: 520, column: 7, scope: !2966)
!2974 = !DILocation(line: 522, column: 1, scope: !2902)
!2975 = distinct !DISubprogram(name: "tarobject_set_mtime", scope: !511, file: !511, line: 482, type: !2976, isLocal: true, isDefinition: true, scopeLine: 483, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !564)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{null, !550, !288}
!2978 = !DILocalVariable(name: "te", arg: 1, scope: !2975, file: !511, line: 482, type: !550)
!2979 = !DILocation(line: 482, column: 39, scope: !2975)
!2980 = !DILocalVariable(name: "path", arg: 2, scope: !2975, file: !511, line: 482, type: !288)
!2981 = !DILocation(line: 482, column: 55, scope: !2975)
!2982 = !DILocalVariable(name: "tv", scope: !2975, file: !511, line: 484, type: !2983)
!2983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2984, size: 256, align: 64, elements: !2990)
!2984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !2985, line: 30, size: 128, align: 64, elements: !2986)
!2985 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!2986 = !{!2987, !2988}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2984, file: !2985, line: 32, baseType: !561, size: 64, align: 64)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !2984, file: !2985, line: 33, baseType: !2989, size: 64, align: 64, offset: 64)
!2989 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !448, line: 141, baseType: !489)
!2990 = !{!2991}
!2991 = !DISubrange(count: 2)
!2992 = !DILocation(line: 484, column: 18, scope: !2975)
!2993 = !DILocation(line: 486, column: 18, scope: !2975)
!2994 = !DILocation(line: 486, column: 3, scope: !2975)
!2995 = !DILocation(line: 486, column: 9, scope: !2975)
!2996 = !DILocation(line: 486, column: 16, scope: !2975)
!2997 = !DILocation(line: 487, column: 3, scope: !2975)
!2998 = !DILocation(line: 487, column: 9, scope: !2975)
!2999 = !DILocation(line: 487, column: 17, scope: !2975)
!3000 = !DILocation(line: 488, column: 18, scope: !2975)
!3001 = !DILocation(line: 488, column: 22, scope: !2975)
!3002 = !DILocation(line: 488, column: 3, scope: !2975)
!3003 = !DILocation(line: 488, column: 9, scope: !2975)
!3004 = !DILocation(line: 488, column: 16, scope: !2975)
!3005 = !DILocation(line: 489, column: 3, scope: !2975)
!3006 = !DILocation(line: 489, column: 9, scope: !2975)
!3007 = !DILocation(line: 489, column: 17, scope: !2975)
!3008 = !DILocation(line: 491, column: 7, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !2975, file: !511, line: 491, column: 7)
!3010 = !DILocation(line: 491, column: 11, scope: !3009)
!3011 = !DILocation(line: 491, column: 16, scope: !3009)
!3012 = !DILocation(line: 491, column: 7, scope: !2975)
!3013 = !DILocation(line: 493, column: 17, scope: !3014)
!3014 = distinct !DILexicalBlock(scope: !3015, file: !511, line: 493, column: 9)
!3015 = distinct !DILexicalBlock(scope: !3009, file: !511, line: 491, column: 41)
!3016 = !DILocation(line: 493, column: 23, scope: !3014)
!3017 = !DILocation(line: 493, column: 9, scope: !3014)
!3018 = !DILocation(line: 493, column: 27, scope: !3014)
!3019 = !DILocation(line: 493, column: 31, scope: !3020)
!3020 = !DILexicalBlockFile(scope: !3014, file: !511, discriminator: 1)
!3021 = !DILocation(line: 493, column: 30, scope: !3020)
!3022 = !DILocation(line: 493, column: 35, scope: !3020)
!3023 = !DILocation(line: 493, column: 9, scope: !3020)
!3024 = !DILocation(line: 494, column: 15, scope: !3014)
!3025 = !DILocation(line: 494, column: 64, scope: !3014)
!3026 = !DILocation(line: 494, column: 7, scope: !3020)
!3027 = !DILocation(line: 494, column: 7, scope: !3014)
!3028 = !DILocation(line: 496, column: 3, scope: !3015)
!3029 = !DILocation(line: 497, column: 16, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !3031, file: !511, line: 497, column: 9)
!3031 = distinct !DILexicalBlock(scope: !3009, file: !511, line: 496, column: 10)
!3032 = !DILocation(line: 497, column: 22, scope: !3030)
!3033 = !DILocation(line: 497, column: 9, scope: !3030)
!3034 = !DILocation(line: 497, column: 9, scope: !3031)
!3035 = !DILocation(line: 498, column: 15, scope: !3030)
!3036 = !DILocation(line: 498, column: 64, scope: !3030)
!3037 = !DILocation(line: 498, column: 7, scope: !3038)
!3038 = !DILexicalBlockFile(scope: !3030, file: !511, discriminator: 1)
!3039 = !DILocation(line: 498, column: 7, scope: !3030)
!3040 = !DILocation(line: 500, column: 1, scope: !2975)
!3041 = distinct !DISubprogram(name: "tarobject_set_se_context", scope: !511, file: !511, line: 525, type: !3042, isLocal: true, isDefinition: true, scopeLine: 526, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !564)
!3042 = !DISubroutineType(types: !3043)
!3043 = !{null, !288, !288, !453}
!3044 = !DILocalVariable(name: "matchpath", arg: 1, scope: !3041, file: !511, line: 525, type: !288)
!3045 = !DILocation(line: 525, column: 38, scope: !3041)
!3046 = !DILocalVariable(name: "path", arg: 2, scope: !3041, file: !511, line: 525, type: !288)
!3047 = !DILocation(line: 525, column: 61, scope: !3041)
!3048 = !DILocalVariable(name: "mode", arg: 3, scope: !3041, file: !511, line: 525, type: !453)
!3049 = !DILocation(line: 525, column: 74, scope: !3041)
!3050 = !DILocation(line: 527, column: 28, scope: !3041)
!3051 = !DILocation(line: 527, column: 39, scope: !3041)
!3052 = !DILocation(line: 527, column: 45, scope: !3041)
!3053 = !DILocation(line: 527, column: 3, scope: !3041)
!3054 = !DILocation(line: 528, column: 1, scope: !3041)
!3055 = distinct !DISubprogram(name: "tar_deferred_extract", scope: !511, file: !511, line: 1131, type: !3056, isLocal: false, isDefinition: true, scopeLine: 1132, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !564)
!3056 = !DISubroutineType(types: !3057)
!3057 = !{null, !420, !279}
!3058 = !DILocalVariable(name: "files", arg: 1, scope: !3055, file: !511, line: 1131, type: !420)
!3059 = !DILocation(line: 1131, column: 49, scope: !3055)
!3060 = !DILocalVariable(name: "pkg", arg: 2, scope: !3055, file: !511, line: 1131, type: !279)
!3061 = !DILocation(line: 1131, column: 72, scope: !3055)
!3062 = !DILocalVariable(name: "cfile", scope: !3055, file: !511, line: 1133, type: !420)
!3063 = !DILocation(line: 1133, column: 30, scope: !3055)
!3064 = !DILocalVariable(name: "usenode", scope: !3055, file: !511, line: 1134, type: !425)
!3065 = !DILocation(line: 1134, column: 25, scope: !3055)
!3066 = !DILocation(line: 1136, column: 25, scope: !3055)
!3067 = !DILocation(line: 1136, column: 32, scope: !3055)
!3068 = !DILocation(line: 1136, column: 3, scope: !3055)
!3069 = !DILocation(line: 1138, column: 16, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !3055, file: !511, line: 1138, column: 3)
!3071 = !DILocation(line: 1138, column: 14, scope: !3070)
!3072 = !DILocation(line: 1138, column: 8, scope: !3070)
!3073 = !DILocation(line: 1138, column: 23, scope: !3074)
!3074 = !DILexicalBlockFile(scope: !3075, file: !511, discriminator: 1)
!3075 = distinct !DILexicalBlock(scope: !3070, file: !511, line: 1138, column: 3)
!3076 = !DILocation(line: 1138, column: 3, scope: !3074)
!3077 = !DILocation(line: 1139, column: 57, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !3075, file: !511, line: 1138, column: 51)
!3079 = !DILocation(line: 1139, column: 64, scope: !3078)
!3080 = !DILocation(line: 1139, column: 74, scope: !3078)
!3081 = !DILocation(line: 1139, column: 5, scope: !3078)
!3082 = !DILocation(line: 1141, column: 11, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3078, file: !511, line: 1141, column: 9)
!3084 = !DILocation(line: 1141, column: 18, scope: !3083)
!3085 = !DILocation(line: 1141, column: 28, scope: !3083)
!3086 = !DILocation(line: 1141, column: 34, scope: !3083)
!3087 = !DILocation(line: 1141, column: 9, scope: !3078)
!3088 = !DILocation(line: 1142, column: 7, scope: !3083)
!3089 = !DILocation(line: 1144, column: 29, scope: !3078)
!3090 = !DILocation(line: 1144, column: 36, scope: !3078)
!3091 = !DILocation(line: 1144, column: 46, scope: !3078)
!3092 = !DILocation(line: 1144, column: 52, scope: !3078)
!3093 = !DILocation(line: 1144, column: 57, scope: !3078)
!3094 = !DILocation(line: 1144, column: 15, scope: !3078)
!3095 = !DILocation(line: 1144, column: 13, scope: !3078)
!3096 = !DILocation(line: 1146, column: 19, scope: !3078)
!3097 = !DILocation(line: 1146, column: 28, scope: !3078)
!3098 = !DILocation(line: 1146, column: 5, scope: !3078)
!3099 = !DILocation(line: 1148, column: 9, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3078, file: !511, line: 1148, column: 9)
!3101 = !DILocation(line: 1148, column: 16, scope: !3100)
!3102 = !DILocation(line: 1148, column: 26, scope: !3100)
!3103 = !DILocation(line: 1148, column: 32, scope: !3100)
!3104 = !DILocation(line: 1148, column: 9, scope: !3078)
!3105 = !DILocalVariable(name: "fd", scope: !3106, file: !511, line: 1149, type: !277)
!3106 = distinct !DILexicalBlock(scope: !3100, file: !511, line: 1148, column: 55)
!3107 = !DILocation(line: 1149, column: 11, scope: !3106)
!3108 = !DILocation(line: 1151, column: 7, scope: !3106)
!3109 = !DILocation(line: 1153, column: 28, scope: !3106)
!3110 = !DILocation(line: 1153, column: 12, scope: !3106)
!3111 = !DILocation(line: 1153, column: 10, scope: !3106)
!3112 = !DILocation(line: 1154, column: 11, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3106, file: !511, line: 1154, column: 11)
!3114 = !DILocation(line: 1154, column: 14, scope: !3113)
!3115 = !DILocation(line: 1154, column: 11, scope: !3106)
!3116 = !DILocation(line: 1155, column: 17, scope: !3113)
!3117 = !DILocation(line: 1155, column: 64, scope: !3113)
!3118 = !DILocation(line: 1155, column: 9, scope: !3119)
!3119 = !DILexicalBlockFile(scope: !3113, file: !511, discriminator: 1)
!3120 = !DILocation(line: 1155, column: 9, scope: !3113)
!3121 = !DILocation(line: 1156, column: 17, scope: !3122)
!3122 = distinct !DILexicalBlock(scope: !3106, file: !511, line: 1156, column: 11)
!3123 = !DILocation(line: 1156, column: 11, scope: !3122)
!3124 = !DILocation(line: 1156, column: 11, scope: !3106)
!3125 = !DILocation(line: 1157, column: 17, scope: !3122)
!3126 = !DILocation(line: 1157, column: 69, scope: !3122)
!3127 = !DILocation(line: 1157, column: 9, scope: !3128)
!3128 = !DILexicalBlockFile(scope: !3122, file: !511, discriminator: 1)
!3129 = !DILocation(line: 1157, column: 9, scope: !3122)
!3130 = !DILocation(line: 1158, column: 17, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !3106, file: !511, line: 1158, column: 11)
!3132 = !DILocation(line: 1158, column: 11, scope: !3131)
!3133 = !DILocation(line: 1158, column: 11, scope: !3106)
!3134 = !DILocation(line: 1159, column: 17, scope: !3131)
!3135 = !DILocation(line: 1159, column: 71, scope: !3131)
!3136 = !DILocation(line: 1159, column: 9, scope: !3137)
!3137 = !DILexicalBlockFile(scope: !3131, file: !511, discriminator: 1)
!3138 = !DILocation(line: 1159, column: 9, scope: !3131)
!3139 = !DILocation(line: 1161, column: 7, scope: !3106)
!3140 = !DILocation(line: 1161, column: 14, scope: !3106)
!3141 = !DILocation(line: 1161, column: 24, scope: !3106)
!3142 = !DILocation(line: 1161, column: 30, scope: !3106)
!3143 = !DILocation(line: 1162, column: 5, scope: !3106)
!3144 = !DILocation(line: 1164, column: 5, scope: !3078)
!3145 = !DILocation(line: 1166, column: 27, scope: !3146)
!3146 = distinct !DILexicalBlock(scope: !3078, file: !511, line: 1166, column: 9)
!3147 = !DILocation(line: 1166, column: 40, scope: !3146)
!3148 = !DILocation(line: 1166, column: 9, scope: !3146)
!3149 = !DILocation(line: 1166, column: 9, scope: !3078)
!3150 = !DILocation(line: 1167, column: 15, scope: !3146)
!3151 = !DILocation(line: 1168, column: 15, scope: !3146)
!3152 = !DILocation(line: 1168, column: 22, scope: !3146)
!3153 = !DILocation(line: 1168, column: 32, scope: !3146)
!3154 = !DILocation(line: 1167, column: 7, scope: !3155)
!3155 = !DILexicalBlockFile(scope: !3146, file: !511, discriminator: 1)
!3156 = !DILocation(line: 1167, column: 7, scope: !3146)
!3157 = !DILocation(line: 1170, column: 5, scope: !3078)
!3158 = !DILocation(line: 1170, column: 12, scope: !3078)
!3159 = !DILocation(line: 1170, column: 22, scope: !3078)
!3160 = !DILocation(line: 1170, column: 28, scope: !3078)
!3161 = !DILocation(line: 1179, column: 5, scope: !3078)
!3162 = !DILocation(line: 1179, column: 12, scope: !3078)
!3163 = !DILocation(line: 1179, column: 22, scope: !3078)
!3164 = !DILocation(line: 1179, column: 28, scope: !3078)
!3165 = !DILocation(line: 1180, column: 5, scope: !3078)
!3166 = !DILocation(line: 1180, column: 12, scope: !3078)
!3167 = !DILocation(line: 1180, column: 22, scope: !3078)
!3168 = !DILocation(line: 1180, column: 28, scope: !3078)
!3169 = !DILocation(line: 1182, column: 5, scope: !3078)
!3170 = !DILocation(line: 1183, column: 3, scope: !3078)
!3171 = !DILocation(line: 1138, column: 38, scope: !3172)
!3172 = !DILexicalBlockFile(scope: !3075, file: !511, discriminator: 2)
!3173 = !DILocation(line: 1138, column: 45, scope: !3172)
!3174 = !DILocation(line: 1138, column: 36, scope: !3172)
!3175 = !DILocation(line: 1138, column: 3, scope: !3172)
!3176 = distinct !{!3176, !3177}
!3177 = !DILocation(line: 1138, column: 3, scope: !3055)
!3178 = !DILocation(line: 1184, column: 1, scope: !3055)
!3179 = distinct !DISubprogram(name: "tar_writeback_barrier", scope: !511, file: !511, line: 1097, type: !3056, isLocal: true, isDefinition: true, scopeLine: 1098, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !564)
!3180 = !DILocalVariable(name: "files", arg: 1, scope: !3179, file: !511, line: 1097, type: !420)
!3181 = !DILocation(line: 1097, column: 50, scope: !3179)
!3182 = !DILocalVariable(name: "pkg", arg: 2, scope: !3179, file: !511, line: 1097, type: !279)
!3183 = !DILocation(line: 1097, column: 73, scope: !3179)
!3184 = !DILocalVariable(name: "cfile", scope: !3179, file: !511, line: 1099, type: !420)
!3185 = !DILocation(line: 1099, column: 30, scope: !3179)
!3186 = !DILocation(line: 1101, column: 16, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !3179, file: !511, line: 1101, column: 3)
!3188 = !DILocation(line: 1101, column: 14, scope: !3187)
!3189 = !DILocation(line: 1101, column: 8, scope: !3187)
!3190 = !DILocation(line: 1101, column: 23, scope: !3191)
!3191 = !DILexicalBlockFile(scope: !3192, file: !511, discriminator: 1)
!3192 = distinct !DILexicalBlock(scope: !3187, file: !511, line: 1101, column: 3)
!3193 = !DILocation(line: 1101, column: 3, scope: !3191)
!3194 = !DILocalVariable(name: "usenode", scope: !3195, file: !511, line: 1102, type: !425)
!3195 = distinct !DILexicalBlock(scope: !3192, file: !511, line: 1101, column: 51)
!3196 = !DILocation(line: 1102, column: 27, scope: !3195)
!3197 = !DILocalVariable(name: "fd", scope: !3195, file: !511, line: 1103, type: !277)
!3198 = !DILocation(line: 1103, column: 9, scope: !3195)
!3199 = !DILocation(line: 1105, column: 11, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !3195, file: !511, line: 1105, column: 9)
!3201 = !DILocation(line: 1105, column: 18, scope: !3200)
!3202 = !DILocation(line: 1105, column: 28, scope: !3200)
!3203 = !DILocation(line: 1105, column: 34, scope: !3200)
!3204 = !DILocation(line: 1105, column: 9, scope: !3195)
!3205 = !DILocation(line: 1106, column: 7, scope: !3200)
!3206 = !DILocation(line: 1108, column: 29, scope: !3195)
!3207 = !DILocation(line: 1108, column: 36, scope: !3195)
!3208 = !DILocation(line: 1108, column: 46, scope: !3195)
!3209 = !DILocation(line: 1108, column: 52, scope: !3195)
!3210 = !DILocation(line: 1108, column: 57, scope: !3195)
!3211 = !DILocation(line: 1108, column: 15, scope: !3195)
!3212 = !DILocation(line: 1108, column: 13, scope: !3195)
!3213 = !DILocation(line: 1110, column: 19, scope: !3195)
!3214 = !DILocation(line: 1110, column: 28, scope: !3195)
!3215 = !DILocation(line: 1110, column: 5, scope: !3195)
!3216 = !DILocation(line: 1112, column: 26, scope: !3195)
!3217 = !DILocation(line: 1112, column: 10, scope: !3195)
!3218 = !DILocation(line: 1112, column: 8, scope: !3195)
!3219 = !DILocation(line: 1113, column: 9, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !3195, file: !511, line: 1113, column: 9)
!3221 = !DILocation(line: 1113, column: 12, scope: !3220)
!3222 = !DILocation(line: 1113, column: 9, scope: !3195)
!3223 = !DILocation(line: 1114, column: 15, scope: !3220)
!3224 = !DILocation(line: 1114, column: 62, scope: !3220)
!3225 = !DILocation(line: 1114, column: 7, scope: !3226)
!3226 = !DILexicalBlockFile(scope: !3220, file: !511, discriminator: 1)
!3227 = !DILocation(line: 1114, column: 7, scope: !3220)
!3228 = !DILocation(line: 1118, column: 21, scope: !3195)
!3229 = !DILocation(line: 1118, column: 5, scope: !3195)
!3230 = !DILocation(line: 1119, column: 15, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3195, file: !511, line: 1119, column: 9)
!3232 = !DILocation(line: 1119, column: 9, scope: !3231)
!3233 = !DILocation(line: 1119, column: 9, scope: !3195)
!3234 = !DILocation(line: 1120, column: 15, scope: !3231)
!3235 = !DILocation(line: 1120, column: 69, scope: !3231)
!3236 = !DILocation(line: 1120, column: 7, scope: !3237)
!3237 = !DILexicalBlockFile(scope: !3231, file: !511, discriminator: 1)
!3238 = !DILocation(line: 1120, column: 7, scope: !3231)
!3239 = !DILocation(line: 1121, column: 3, scope: !3195)
!3240 = !DILocation(line: 1101, column: 38, scope: !3241)
!3241 = !DILexicalBlockFile(scope: !3192, file: !511, discriminator: 2)
!3242 = !DILocation(line: 1101, column: 45, scope: !3241)
!3243 = !DILocation(line: 1101, column: 36, scope: !3241)
!3244 = !DILocation(line: 1101, column: 3, scope: !3241)
!3245 = distinct !{!3245, !3246}
!3246 = !DILocation(line: 1101, column: 3, scope: !3179)
!3247 = !DILocation(line: 1122, column: 1, scope: !3179)
!3248 = distinct !DISubprogram(name: "enqueue_deconfigure", scope: !511, file: !511, line: 1187, type: !3249, isLocal: false, isDefinition: true, scopeLine: 1188, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !564)
!3249 = !DISubroutineType(types: !3250)
!3250 = !{null, !279, !279}
!3251 = !DILocalVariable(name: "pkg", arg: 1, scope: !3248, file: !511, line: 1187, type: !279)
!3252 = !DILocation(line: 1187, column: 37, scope: !3248)
!3253 = !DILocalVariable(name: "pkg_removal", arg: 2, scope: !3248, file: !511, line: 1187, type: !279)
!3254 = !DILocation(line: 1187, column: 58, scope: !3248)
!3255 = !DILocalVariable(name: "newdeconf", scope: !3248, file: !511, line: 1189, type: !512)
!3256 = !DILocation(line: 1189, column: 27, scope: !3248)
!3257 = !DILocation(line: 1191, column: 29, scope: !3248)
!3258 = !DILocation(line: 1191, column: 3, scope: !3248)
!3259 = !DILocation(line: 1192, column: 3, scope: !3248)
!3260 = !DILocation(line: 1192, column: 8, scope: !3248)
!3261 = !DILocation(line: 1192, column: 20, scope: !3248)
!3262 = !DILocation(line: 1192, column: 27, scope: !3248)
!3263 = !DILocation(line: 1193, column: 15, scope: !3248)
!3264 = !DILocation(line: 1193, column: 13, scope: !3248)
!3265 = !DILocation(line: 1194, column: 21, scope: !3248)
!3266 = !DILocation(line: 1194, column: 3, scope: !3248)
!3267 = !DILocation(line: 1194, column: 14, scope: !3248)
!3268 = !DILocation(line: 1194, column: 19, scope: !3248)
!3269 = !DILocation(line: 1195, column: 20, scope: !3248)
!3270 = !DILocation(line: 1195, column: 3, scope: !3248)
!3271 = !DILocation(line: 1195, column: 14, scope: !3248)
!3272 = !DILocation(line: 1195, column: 18, scope: !3248)
!3273 = !DILocation(line: 1196, column: 28, scope: !3248)
!3274 = !DILocation(line: 1196, column: 3, scope: !3248)
!3275 = !DILocation(line: 1196, column: 14, scope: !3248)
!3276 = !DILocation(line: 1196, column: 26, scope: !3248)
!3277 = !DILocation(line: 1197, column: 17, scope: !3248)
!3278 = !DILocation(line: 1197, column: 15, scope: !3248)
!3279 = !DILocation(line: 1198, column: 1, scope: !3248)
!3280 = distinct !DISubprogram(name: "clear_deconfigure_queue", scope: !511, file: !511, line: 1201, type: !3281, isLocal: false, isDefinition: true, scopeLine: 1202, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !564)
!3281 = !DISubroutineType(types: !3282)
!3282 = !{null}
!3283 = !DILocalVariable(name: "deconf", scope: !3280, file: !511, line: 1203, type: !512)
!3284 = !DILocation(line: 1203, column: 27, scope: !3280)
!3285 = !DILocalVariable(name: "deconf_next", scope: !3280, file: !511, line: 1203, type: !512)
!3286 = !DILocation(line: 1203, column: 36, scope: !3280)
!3287 = !DILocation(line: 1205, column: 17, scope: !3288)
!3288 = distinct !DILexicalBlock(scope: !3280, file: !511, line: 1205, column: 3)
!3289 = !DILocation(line: 1205, column: 15, scope: !3288)
!3290 = !DILocation(line: 1205, column: 8, scope: !3288)
!3291 = !DILocation(line: 1205, column: 30, scope: !3292)
!3292 = !DILexicalBlockFile(scope: !3293, file: !511, discriminator: 1)
!3293 = distinct !DILexicalBlock(scope: !3288, file: !511, line: 1205, column: 3)
!3294 = !DILocation(line: 1205, column: 3, scope: !3292)
!3295 = !DILocation(line: 1206, column: 19, scope: !3296)
!3296 = distinct !DILexicalBlock(scope: !3293, file: !511, line: 1205, column: 60)
!3297 = !DILocation(line: 1206, column: 27, scope: !3296)
!3298 = !DILocation(line: 1206, column: 17, scope: !3296)
!3299 = !DILocation(line: 1207, column: 10, scope: !3296)
!3300 = !DILocation(line: 1207, column: 5, scope: !3296)
!3301 = !DILocation(line: 1208, column: 3, scope: !3296)
!3302 = !DILocation(line: 1205, column: 47, scope: !3303)
!3303 = !DILexicalBlockFile(scope: !3293, file: !511, discriminator: 2)
!3304 = !DILocation(line: 1205, column: 45, scope: !3303)
!3305 = !DILocation(line: 1205, column: 3, scope: !3303)
!3306 = distinct !{!3306, !3307}
!3307 = !DILocation(line: 1205, column: 3, scope: !3280)
!3308 = !DILocation(line: 1209, column: 15, scope: !3280)
!3309 = !DILocation(line: 1210, column: 1, scope: !3280)
!3310 = distinct !DISubprogram(name: "check_breaks", scope: !511, file: !511, line: 1267, type: !3311, isLocal: false, isDefinition: true, scopeLine: 1268, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !564)
!3311 = !DISubroutineType(types: !3312)
!3312 = !{null, !299, !279, !288}
!3313 = !DILocalVariable(name: "dep", arg: 1, scope: !3310, file: !511, line: 1267, type: !299)
!3314 = !DILocation(line: 1267, column: 38, scope: !3310)
!3315 = !DILocalVariable(name: "pkg", arg: 2, scope: !3310, file: !511, line: 1267, type: !279)
!3316 = !DILocation(line: 1267, column: 59, scope: !3310)
!3317 = !DILocalVariable(name: "pfilename", arg: 3, scope: !3310, file: !511, line: 1268, type: !288)
!3318 = !DILocation(line: 1268, column: 31, scope: !3310)
!3319 = !DILocalVariable(name: "fixbydeconf", scope: !3310, file: !511, line: 1269, type: !279)
!3320 = !DILocation(line: 1269, column: 19, scope: !3310)
!3321 = !DILocalVariable(name: "why", scope: !3310, file: !511, line: 1270, type: !565)
!3322 = !DILocation(line: 1270, column: 17, scope: !3310)
!3323 = !DILocalVariable(name: "ok", scope: !3310, file: !511, line: 1271, type: !277)
!3324 = !DILocation(line: 1271, column: 7, scope: !3310)
!3325 = !DILocation(line: 1273, column: 15, scope: !3310)
!3326 = !DILocation(line: 1274, column: 15, scope: !3327)
!3327 = distinct !DILexicalBlock(scope: !3310, file: !511, line: 1274, column: 7)
!3328 = !DILocation(line: 1274, column: 7, scope: !3327)
!3329 = !DILocation(line: 1274, column: 7, scope: !3310)
!3330 = !DILocation(line: 1275, column: 5, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3327, file: !511, line: 1274, column: 53)
!3332 = !DILocation(line: 1276, column: 5, scope: !3331)
!3333 = !DILocation(line: 1279, column: 3, scope: !3310)
!3334 = !DILocation(line: 1281, column: 7, scope: !3335)
!3335 = distinct !DILexicalBlock(scope: !3310, file: !511, line: 1281, column: 7)
!3336 = !DILocation(line: 1281, column: 19, scope: !3335)
!3337 = !DILocation(line: 1281, column: 22, scope: !3338)
!3338 = !DILexicalBlockFile(scope: !3335, file: !511, discriminator: 1)
!3339 = !DILocation(line: 1281, column: 7, scope: !3338)
!3340 = !DILocalVariable(name: "action", scope: !3341, file: !511, line: 1282, type: !3342)
!3341 = distinct !DILexicalBlock(scope: !3335, file: !511, line: 1281, column: 36)
!3342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 4096, align: 8, elements: !3343)
!3343 = !{!3344}
!3344 = !DISubrange(count: 512)
!3345 = !DILocation(line: 1282, column: 10, scope: !3341)
!3346 = !DILocation(line: 1284, column: 31, scope: !3341)
!3347 = !DILocation(line: 1284, column: 5, scope: !3341)
!3348 = !DILocation(line: 1286, column: 9, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !3341, file: !511, line: 1286, column: 9)
!3350 = !DILocation(line: 1286, column: 22, scope: !3349)
!3351 = !DILocation(line: 1286, column: 34, scope: !3349)
!3352 = !DILocation(line: 1286, column: 41, scope: !3349)
!3353 = !DILocation(line: 1286, column: 9, scope: !3341)
!3354 = !DILocation(line: 1287, column: 100, scope: !3349)
!3355 = !DILocation(line: 1287, column: 91, scope: !3349)
!3356 = !DILocation(line: 1287, column: 119, scope: !3349)
!3357 = !DILocation(line: 1287, column: 132, scope: !3349)
!3358 = !DILocation(line: 1287, column: 144, scope: !3349)
!3359 = !DILocation(line: 1287, column: 7, scope: !3360)
!3360 = !DILexicalBlockFile(scope: !3349, file: !511, discriminator: 1)
!3361 = !DILocation(line: 1287, column: 7, scope: !3349)
!3362 = !DILocation(line: 1291, column: 13, scope: !3341)
!3363 = !DILocation(line: 1291, column: 21, scope: !3341)
!3364 = !DILocation(line: 1292, column: 25, scope: !3341)
!3365 = !DILocation(line: 1292, column: 31, scope: !3341)
!3366 = !DILocation(line: 1292, column: 36, scope: !3341)
!3367 = !DILocation(line: 1292, column: 13, scope: !3341)
!3368 = !DILocation(line: 1291, column: 5, scope: !3369)
!3369 = !DILexicalBlockFile(scope: !3341, file: !511, discriminator: 1)
!3370 = !DILocation(line: 1293, column: 12, scope: !3341)
!3371 = !DILocation(line: 1294, column: 21, scope: !3341)
!3372 = !DILocation(line: 1294, column: 12, scope: !3341)
!3373 = !DILocation(line: 1294, column: 50, scope: !3341)
!3374 = !DILocation(line: 1293, column: 5, scope: !3369)
!3375 = !DILocation(line: 1296, column: 43, scope: !3341)
!3376 = !DILocation(line: 1296, column: 56, scope: !3341)
!3377 = !DILocation(line: 1296, column: 61, scope: !3341)
!3378 = !DILocation(line: 1297, column: 29, scope: !3341)
!3379 = !DILocation(line: 1297, column: 46, scope: !3341)
!3380 = !DILocation(line: 1296, column: 9, scope: !3341)
!3381 = !DILocation(line: 1296, column: 7, scope: !3341)
!3382 = !DILocation(line: 1298, column: 9, scope: !3383)
!3383 = distinct !DILexicalBlock(scope: !3341, file: !511, line: 1298, column: 9)
!3384 = !DILocation(line: 1298, column: 12, scope: !3383)
!3385 = !DILocation(line: 1298, column: 9, scope: !3341)
!3386 = !DILocation(line: 1299, column: 14, scope: !3387)
!3387 = distinct !DILexicalBlock(scope: !3383, file: !511, line: 1298, column: 18)
!3388 = !DILocation(line: 1300, column: 23, scope: !3387)
!3389 = !DILocation(line: 1300, column: 14, scope: !3387)
!3390 = !DILocation(line: 1301, column: 26, scope: !3387)
!3391 = !DILocation(line: 1301, column: 32, scope: !3387)
!3392 = !DILocation(line: 1301, column: 37, scope: !3387)
!3393 = !DILocation(line: 1301, column: 14, scope: !3387)
!3394 = !DILocation(line: 1299, column: 7, scope: !3395)
!3395 = !DILexicalBlockFile(scope: !3387, file: !511, discriminator: 1)
!3396 = !DILocation(line: 1302, column: 5, scope: !3387)
!3397 = !DILocation(line: 1303, column: 3, scope: !3341)
!3398 = !DILocation(line: 1304, column: 12, scope: !3399)
!3399 = distinct !DILexicalBlock(scope: !3335, file: !511, line: 1303, column: 10)
!3400 = !DILocation(line: 1304, column: 56, scope: !3399)
!3401 = !DILocation(line: 1305, column: 24, scope: !3399)
!3402 = !DILocation(line: 1305, column: 30, scope: !3399)
!3403 = !DILocation(line: 1305, column: 35, scope: !3399)
!3404 = !DILocation(line: 1305, column: 12, scope: !3399)
!3405 = !DILocation(line: 1305, column: 66, scope: !3399)
!3406 = !DILocation(line: 1304, column: 5, scope: !3407)
!3407 = !DILexicalBlockFile(scope: !3399, file: !511, discriminator: 1)
!3408 = !DILocation(line: 1306, column: 7, scope: !3399)
!3409 = !DILocation(line: 1308, column: 3, scope: !3310)
!3410 = !DILocation(line: 1309, column: 7, scope: !3411)
!3411 = distinct !DILexicalBlock(scope: !3310, file: !511, line: 1309, column: 7)
!3412 = !DILocation(line: 1309, column: 10, scope: !3411)
!3413 = !DILocation(line: 1309, column: 7, scope: !3310)
!3414 = !DILocation(line: 1309, column: 15, scope: !3415)
!3415 = !DILexicalBlockFile(scope: !3411, file: !511, discriminator: 1)
!3416 = !DILocation(line: 1311, column: 20, scope: !3417)
!3417 = distinct !DILexicalBlock(scope: !3310, file: !511, line: 1311, column: 7)
!3418 = !DILocation(line: 1311, column: 25, scope: !3417)
!3419 = !DILocation(line: 1311, column: 7, scope: !3417)
!3420 = !DILocation(line: 1311, column: 7, scope: !3310)
!3421 = !DILocation(line: 1312, column: 13, scope: !3422)
!3422 = distinct !DILexicalBlock(scope: !3417, file: !511, line: 1311, column: 32)
!3423 = !DILocation(line: 1312, column: 5, scope: !3424)
!3424 = !DILexicalBlockFile(scope: !3422, file: !511, discriminator: 1)
!3425 = !DILocation(line: 1313, column: 5, scope: !3422)
!3426 = !DILocation(line: 1316, column: 7, scope: !3427)
!3427 = distinct !DILexicalBlock(scope: !3310, file: !511, line: 1316, column: 7)
!3428 = !DILocation(line: 1316, column: 19, scope: !3427)
!3429 = !DILocation(line: 1316, column: 23, scope: !3430)
!3430 = !DILexicalBlockFile(scope: !3427, file: !511, discriminator: 1)
!3431 = !DILocation(line: 1316, column: 7, scope: !3430)
!3432 = !DILocation(line: 1317, column: 12, scope: !3433)
!3433 = distinct !DILexicalBlock(scope: !3427, file: !511, line: 1316, column: 37)
!3434 = !DILocation(line: 1319, column: 24, scope: !3433)
!3435 = !DILocation(line: 1319, column: 30, scope: !3433)
!3436 = !DILocation(line: 1319, column: 35, scope: !3433)
!3437 = !DILocation(line: 1319, column: 12, scope: !3433)
!3438 = !DILocation(line: 1320, column: 21, scope: !3433)
!3439 = !DILocation(line: 1320, column: 12, scope: !3433)
!3440 = !DILocation(line: 1317, column: 5, scope: !3441)
!3441 = !DILexicalBlockFile(scope: !3433, file: !511, discriminator: 1)
!3442 = !DILocation(line: 1317, column: 5, scope: !3433)
!3443 = !DILocation(line: 1322, column: 12, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3427, file: !511, line: 1321, column: 10)
!3445 = !DILocation(line: 1323, column: 24, scope: !3444)
!3446 = !DILocation(line: 1323, column: 30, scope: !3444)
!3447 = !DILocation(line: 1323, column: 35, scope: !3444)
!3448 = !DILocation(line: 1323, column: 12, scope: !3444)
!3449 = !DILocation(line: 1322, column: 5, scope: !3450)
!3450 = !DILexicalBlockFile(scope: !3444, file: !511, discriminator: 1)
!3451 = !DILocation(line: 1322, column: 5, scope: !3444)
!3452 = !DILocation(line: 1325, column: 1, scope: !3310)
!3453 = distinct !DISubprogram(name: "try_deconfigure_can", scope: !511, file: !511, line: 1229, type: !3454, isLocal: true, isDefinition: true, scopeLine: 1232, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !564)
!3454 = !DISubroutineType(types: !3455)
!3455 = !{!277, !3456, !279, !295, !288, !279, !288}
!3456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3457, size: 64, align: 64)
!3457 = !DISubroutineType(types: !3458)
!3458 = !{!328, !295}
!3459 = !DILocalVariable(name: "force_p", arg: 1, scope: !3453, file: !511, line: 1229, type: !3456)
!3460 = !DILocation(line: 1229, column: 27, scope: !3453)
!3461 = !DILocalVariable(name: "pkg", arg: 2, scope: !3453, file: !511, line: 1229, type: !279)
!3462 = !DILocation(line: 1229, column: 72, scope: !3453)
!3463 = !DILocalVariable(name: "pdep", arg: 3, scope: !3453, file: !511, line: 1230, type: !295)
!3464 = !DILocation(line: 1230, column: 38, scope: !3453)
!3465 = !DILocalVariable(name: "action", arg: 4, scope: !3453, file: !511, line: 1230, type: !288)
!3466 = !DILocation(line: 1230, column: 56, scope: !3453)
!3467 = !DILocalVariable(name: "removal", arg: 5, scope: !3453, file: !511, line: 1231, type: !279)
!3468 = !DILocation(line: 1231, column: 37, scope: !3453)
!3469 = !DILocalVariable(name: "why", arg: 6, scope: !3453, file: !511, line: 1231, type: !288)
!3470 = !DILocation(line: 1231, column: 58, scope: !3453)
!3471 = !DILocation(line: 1233, column: 7, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3453, file: !511, line: 1233, column: 7)
!3473 = !DILocation(line: 1233, column: 15, scope: !3472)
!3474 = !DILocation(line: 1233, column: 18, scope: !3475)
!3475 = !DILexicalBlockFile(scope: !3472, file: !511, discriminator: 1)
!3476 = !DILocation(line: 1233, column: 26, scope: !3475)
!3477 = !DILocation(line: 1233, column: 7, scope: !3475)
!3478 = !DILocation(line: 1234, column: 13, scope: !3479)
!3479 = distinct !DILexicalBlock(scope: !3472, file: !511, line: 1233, column: 33)
!3480 = !DILocation(line: 1234, column: 66, scope: !3479)
!3481 = !DILocation(line: 1234, column: 74, scope: !3479)
!3482 = !DILocation(line: 1234, column: 5, scope: !3483)
!3483 = !DILexicalBlockFile(scope: !3479, file: !511, discriminator: 1)
!3484 = !DILocation(line: 1235, column: 5, scope: !3479)
!3485 = !DILocation(line: 1236, column: 14, scope: !3486)
!3486 = distinct !DILexicalBlock(scope: !3472, file: !511, line: 1236, column: 14)
!3487 = !DILocation(line: 1236, column: 14, scope: !3472)
!3488 = !DILocation(line: 1237, column: 9, scope: !3489)
!3489 = distinct !DILexicalBlock(scope: !3490, file: !511, line: 1237, column: 9)
!3490 = distinct !DILexicalBlock(scope: !3486, file: !511, line: 1236, column: 28)
!3491 = !DILocation(line: 1237, column: 14, scope: !3489)
!3492 = !DILocation(line: 1237, column: 24, scope: !3489)
!3493 = !DILocation(line: 1237, column: 9, scope: !3490)
!3494 = !DILocation(line: 1238, column: 11, scope: !3495)
!3495 = distinct !DILexicalBlock(scope: !3496, file: !511, line: 1238, column: 11)
!3496 = distinct !DILexicalBlock(scope: !3489, file: !511, line: 1237, column: 35)
!3497 = !DILocation(line: 1238, column: 11, scope: !3496)
!3498 = !DILocation(line: 1239, column: 17, scope: !3499)
!3499 = distinct !DILexicalBlock(scope: !3495, file: !511, line: 1238, column: 45)
!3500 = !DILocation(line: 1241, column: 26, scope: !3499)
!3501 = !DILocation(line: 1241, column: 17, scope: !3499)
!3502 = !DILocation(line: 1241, column: 47, scope: !3499)
!3503 = !DILocation(line: 1239, column: 9, scope: !3504)
!3504 = !DILexicalBlockFile(scope: !3499, file: !511, discriminator: 1)
!3505 = !DILocation(line: 1242, column: 7, scope: !3499)
!3506 = !DILocation(line: 1243, column: 16, scope: !3507)
!3507 = distinct !DILexicalBlock(scope: !3495, file: !511, line: 1242, column: 14)
!3508 = !DILocation(line: 1245, column: 25, scope: !3507)
!3509 = !DILocation(line: 1245, column: 16, scope: !3507)
!3510 = !DILocation(line: 1245, column: 46, scope: !3507)
!3511 = !DILocation(line: 1243, column: 9, scope: !3512)
!3512 = !DILexicalBlockFile(scope: !3507, file: !511, discriminator: 1)
!3513 = !DILocation(line: 1246, column: 9, scope: !3507)
!3514 = !DILocation(line: 1248, column: 5, scope: !3496)
!3515 = !DILocation(line: 1249, column: 25, scope: !3490)
!3516 = !DILocation(line: 1249, column: 30, scope: !3490)
!3517 = !DILocation(line: 1249, column: 5, scope: !3490)
!3518 = !DILocation(line: 1250, column: 5, scope: !3490)
!3519 = !DILocation(line: 1252, column: 12, scope: !3520)
!3520 = distinct !DILexicalBlock(scope: !3486, file: !511, line: 1251, column: 10)
!3521 = !DILocation(line: 1253, column: 12, scope: !3520)
!3522 = !DILocation(line: 1253, column: 20, scope: !3520)
!3523 = !DILocation(line: 1252, column: 5, scope: !3524)
!3524 = !DILexicalBlockFile(scope: !3520, file: !511, discriminator: 1)
!3525 = !DILocation(line: 1254, column: 5, scope: !3520)
!3526 = !DILocation(line: 1256, column: 1, scope: !3453)
!3527 = distinct !DISubprogram(name: "check_conflict", scope: !511, file: !511, line: 1327, type: !3311, isLocal: false, isDefinition: true, scopeLine: 1328, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !564)
!3528 = !DILocalVariable(name: "dep", arg: 1, scope: !3527, file: !511, line: 1327, type: !299)
!3529 = !DILocation(line: 1327, column: 40, scope: !3527)
!3530 = !DILocalVariable(name: "pkg", arg: 2, scope: !3527, file: !511, line: 1327, type: !279)
!3531 = !DILocation(line: 1327, column: 61, scope: !3527)
!3532 = !DILocalVariable(name: "pfilename", arg: 3, scope: !3527, file: !511, line: 1328, type: !288)
!3533 = !DILocation(line: 1328, column: 33, scope: !3527)
!3534 = !DILocalVariable(name: "fixbyrm", scope: !3527, file: !511, line: 1329, type: !279)
!3535 = !DILocation(line: 1329, column: 19, scope: !3527)
!3536 = !DILocalVariable(name: "pdep", scope: !3527, file: !511, line: 1330, type: !295)
!3537 = !DILocation(line: 1330, column: 20, scope: !3527)
!3538 = !DILocalVariable(name: "flagdeppossi", scope: !3527, file: !511, line: 1330, type: !296)
!3539 = !DILocation(line: 1330, column: 26, scope: !3527)
!3540 = !DILocalVariable(name: "conflictwhy", scope: !3527, file: !511, line: 1331, type: !565)
!3541 = !DILocation(line: 1331, column: 17, scope: !3527)
!3542 = !DILocalVariable(name: "removalwhy", scope: !3527, file: !511, line: 1331, type: !565)
!3543 = !DILocation(line: 1331, column: 33, scope: !3527)
!3544 = !DILocation(line: 1331, column: 33, scope: !3545)
!3545 = !DILexicalBlockFile(scope: !3527, file: !511, discriminator: 1)
!3546 = !DILocalVariable(name: "providecheck", scope: !3527, file: !511, line: 1332, type: !299)
!3547 = !DILocation(line: 1332, column: 22, scope: !3527)
!3548 = !DILocation(line: 1334, column: 11, scope: !3527)
!3549 = !DILocation(line: 1335, column: 15, scope: !3550)
!3550 = distinct !DILexicalBlock(scope: !3527, file: !511, line: 1335, column: 7)
!3551 = !DILocation(line: 1335, column: 7, scope: !3550)
!3552 = !DILocation(line: 1335, column: 7, scope: !3527)
!3553 = !DILocation(line: 1336, column: 5, scope: !3554)
!3554 = distinct !DILexicalBlock(scope: !3550, file: !511, line: 1335, column: 57)
!3555 = !DILocation(line: 1337, column: 5, scope: !3554)
!3556 = !DILocation(line: 1338, column: 5, scope: !3554)
!3557 = !DILocation(line: 1340, column: 7, scope: !3558)
!3558 = distinct !DILexicalBlock(scope: !3527, file: !511, line: 1340, column: 7)
!3559 = !DILocation(line: 1340, column: 7, scope: !3527)
!3560 = !DILocation(line: 1341, column: 31, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !3558, file: !511, line: 1340, column: 16)
!3562 = !DILocation(line: 1341, column: 5, scope: !3561)
!3563 = !DILocation(line: 1342, column: 9, scope: !3564)
!3564 = distinct !DILexicalBlock(scope: !3561, file: !511, line: 1342, column: 9)
!3565 = !DILocation(line: 1342, column: 18, scope: !3564)
!3566 = !DILocation(line: 1342, column: 30, scope: !3564)
!3567 = !DILocation(line: 1342, column: 37, scope: !3564)
!3568 = !DILocation(line: 1342, column: 9, scope: !3561)
!3569 = !DILocation(line: 1343, column: 16, scope: !3570)
!3570 = distinct !DILexicalBlock(scope: !3564, file: !511, line: 1342, column: 63)
!3571 = !DILocation(line: 1343, column: 21, scope: !3570)
!3572 = !DILocation(line: 1343, column: 14, scope: !3570)
!3573 = !DILocation(line: 1344, column: 33, scope: !3570)
!3574 = !DILocation(line: 1344, column: 7, scope: !3570)
!3575 = !DILocation(line: 1345, column: 5, scope: !3570)
!3576 = !DILocation(line: 1346, column: 11, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !3561, file: !511, line: 1346, column: 9)
!3578 = !DILocation(line: 1346, column: 16, scope: !3577)
!3579 = !DILocation(line: 1346, column: 26, scope: !3577)
!3580 = !DILocation(line: 1346, column: 36, scope: !3577)
!3581 = !DILocation(line: 1346, column: 39, scope: !3582)
!3582 = !DILexicalBlockFile(scope: !3577, file: !511, discriminator: 1)
!3583 = !DILocation(line: 1346, column: 48, scope: !3582)
!3584 = !DILocation(line: 1346, column: 58, scope: !3582)
!3585 = !DILocation(line: 1346, column: 69, scope: !3582)
!3586 = !DILocation(line: 1347, column: 13, scope: !3577)
!3587 = !DILocation(line: 1347, column: 22, scope: !3577)
!3588 = !DILocation(line: 1347, column: 27, scope: !3577)
!3589 = !DILocation(line: 1347, column: 47, scope: !3577)
!3590 = !DILocation(line: 1348, column: 13, scope: !3577)
!3591 = !DILocation(line: 1348, column: 22, scope: !3577)
!3592 = !DILocation(line: 1348, column: 27, scope: !3577)
!3593 = !DILocation(line: 1348, column: 45, scope: !3577)
!3594 = !DILocation(line: 1349, column: 25, scope: !3577)
!3595 = !DILocation(line: 1349, column: 31, scope: !3577)
!3596 = !DILocation(line: 1349, column: 36, scope: !3577)
!3597 = !DILocation(line: 1349, column: 47, scope: !3577)
!3598 = !DILocation(line: 1349, column: 57, scope: !3577)
!3599 = !DILocation(line: 1349, column: 66, scope: !3577)
!3600 = !DILocation(line: 1349, column: 12, scope: !3577)
!3601 = !DILocation(line: 1349, column: 78, scope: !3577)
!3602 = !DILocation(line: 1350, column: 13, scope: !3577)
!3603 = !DILocation(line: 1350, column: 22, scope: !3577)
!3604 = !DILocation(line: 1350, column: 32, scope: !3577)
!3605 = !DILocation(line: 1350, column: 42, scope: !3577)
!3606 = !DILocation(line: 1350, column: 45, scope: !3582)
!3607 = !DILocation(line: 1346, column: 9, scope: !3608)
!3608 = !DILexicalBlockFile(scope: !3561, file: !511, discriminator: 2)
!3609 = !DILocation(line: 1351, column: 11, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3611, file: !511, line: 1351, column: 11)
!3611 = distinct !DILexicalBlock(scope: !3577, file: !511, line: 1350, column: 82)
!3612 = !DILocation(line: 1351, column: 20, scope: !3610)
!3613 = !DILocation(line: 1351, column: 32, scope: !3610)
!3614 = !DILocation(line: 1351, column: 39, scope: !3610)
!3615 = !DILocation(line: 1351, column: 60, scope: !3610)
!3616 = !DILocation(line: 1352, column: 11, scope: !3610)
!3617 = !DILocation(line: 1352, column: 20, scope: !3610)
!3618 = !DILocation(line: 1352, column: 32, scope: !3610)
!3619 = !DILocation(line: 1352, column: 39, scope: !3610)
!3620 = !DILocation(line: 1351, column: 11, scope: !3621)
!3621 = !DILexicalBlockFile(scope: !3611, file: !511, discriminator: 1)
!3622 = !DILocation(line: 1353, column: 119, scope: !3610)
!3623 = !DILocation(line: 1353, column: 110, scope: !3610)
!3624 = !DILocation(line: 1353, column: 138, scope: !3610)
!3625 = !DILocation(line: 1353, column: 147, scope: !3610)
!3626 = !DILocation(line: 1353, column: 159, scope: !3610)
!3627 = !DILocation(line: 1353, column: 9, scope: !3628)
!3628 = !DILexicalBlockFile(scope: !3610, file: !511, discriminator: 1)
!3629 = !DILocation(line: 1353, column: 9, scope: !3610)
!3630 = !DILocation(line: 1356, column: 7, scope: !3611)
!3631 = !DILocation(line: 1356, column: 16, scope: !3611)
!3632 = !DILocation(line: 1356, column: 28, scope: !3611)
!3633 = !DILocation(line: 1356, column: 35, scope: !3611)
!3634 = !DILocation(line: 1357, column: 14, scope: !3611)
!3635 = !DILocation(line: 1358, column: 23, scope: !3611)
!3636 = !DILocation(line: 1358, column: 14, scope: !3611)
!3637 = !DILocation(line: 1359, column: 26, scope: !3611)
!3638 = !DILocation(line: 1359, column: 32, scope: !3611)
!3639 = !DILocation(line: 1359, column: 37, scope: !3611)
!3640 = !DILocation(line: 1359, column: 14, scope: !3611)
!3641 = !DILocation(line: 1357, column: 7, scope: !3621)
!3642 = !DILocation(line: 1360, column: 13, scope: !3643)
!3643 = distinct !DILexicalBlock(scope: !3611, file: !511, line: 1360, column: 11)
!3644 = !DILocation(line: 1360, column: 22, scope: !3643)
!3645 = !DILocation(line: 1360, column: 29, scope: !3643)
!3646 = !DILocation(line: 1360, column: 51, scope: !3643)
!3647 = !DILocation(line: 1361, column: 13, scope: !3643)
!3648 = !DILocation(line: 1361, column: 22, scope: !3643)
!3649 = !DILocation(line: 1361, column: 29, scope: !3643)
!3650 = !DILocation(line: 1361, column: 57, scope: !3643)
!3651 = !DILocation(line: 1362, column: 13, scope: !3643)
!3652 = !DILocation(line: 1362, column: 22, scope: !3643)
!3653 = !DILocation(line: 1362, column: 29, scope: !3643)
!3654 = !DILocation(line: 1360, column: 11, scope: !3621)
!3655 = !DILocation(line: 1363, column: 16, scope: !3656)
!3656 = distinct !DILexicalBlock(scope: !3643, file: !511, line: 1362, column: 59)
!3657 = !DILocation(line: 1364, column: 25, scope: !3656)
!3658 = !DILocation(line: 1364, column: 16, scope: !3656)
!3659 = !DILocation(line: 1363, column: 9, scope: !3660)
!3660 = !DILexicalBlockFile(scope: !3656, file: !511, discriminator: 1)
!3661 = !DILocation(line: 1365, column: 14, scope: !3656)
!3662 = !DILocation(line: 1366, column: 7, scope: !3656)
!3663 = !DILocation(line: 1367, column: 21, scope: !3664)
!3664 = distinct !DILexicalBlock(scope: !3665, file: !511, line: 1367, column: 9)
!3665 = distinct !DILexicalBlock(scope: !3643, file: !511, line: 1366, column: 14)
!3666 = !DILocation(line: 1367, column: 30, scope: !3664)
!3667 = !DILocation(line: 1367, column: 35, scope: !3664)
!3668 = !DILocation(line: 1367, column: 44, scope: !3664)
!3669 = !DILocation(line: 1367, column: 19, scope: !3664)
!3670 = !DILocation(line: 1367, column: 14, scope: !3664)
!3671 = !DILocation(line: 1368, column: 14, scope: !3672)
!3672 = distinct !DILexicalBlock(scope: !3664, file: !511, line: 1367, column: 9)
!3673 = !DILocation(line: 1367, column: 9, scope: !3674)
!3674 = !DILexicalBlockFile(scope: !3664, file: !511, discriminator: 1)
!3675 = !DILocation(line: 1370, column: 15, scope: !3676)
!3676 = distinct !DILexicalBlock(scope: !3677, file: !511, line: 1370, column: 15)
!3677 = distinct !DILexicalBlock(scope: !3672, file: !511, line: 1369, column: 37)
!3678 = !DILocation(line: 1370, column: 21, scope: !3676)
!3679 = !DILocation(line: 1370, column: 25, scope: !3676)
!3680 = !DILocation(line: 1370, column: 30, scope: !3676)
!3681 = !DILocation(line: 1370, column: 45, scope: !3676)
!3682 = !DILocation(line: 1370, column: 48, scope: !3683)
!3683 = !DILexicalBlockFile(scope: !3676, file: !511, discriminator: 1)
!3684 = !DILocation(line: 1370, column: 54, scope: !3683)
!3685 = !DILocation(line: 1370, column: 58, scope: !3683)
!3686 = !DILocation(line: 1370, column: 63, scope: !3683)
!3687 = !DILocation(line: 1370, column: 15, scope: !3683)
!3688 = !DILocation(line: 1371, column: 13, scope: !3676)
!3689 = !DILocation(line: 1372, column: 23, scope: !3690)
!3690 = distinct !DILexicalBlock(scope: !3677, file: !511, line: 1372, column: 15)
!3691 = !DILocation(line: 1372, column: 29, scope: !3690)
!3692 = !DILocation(line: 1372, column: 15, scope: !3690)
!3693 = !DILocation(line: 1372, column: 15, scope: !3677)
!3694 = !DILocation(line: 1373, column: 13, scope: !3690)
!3695 = !DILocation(line: 1374, column: 11, scope: !3677)
!3696 = !DILocation(line: 1375, column: 31, scope: !3697)
!3697 = distinct !DILexicalBlock(scope: !3677, file: !511, line: 1375, column: 15)
!3698 = !DILocation(line: 1375, column: 36, scope: !3697)
!3699 = !DILocation(line: 1375, column: 55, scope: !3697)
!3700 = !DILocation(line: 1375, column: 16, scope: !3697)
!3701 = !DILocation(line: 1375, column: 15, scope: !3677)
!3702 = !DILocation(line: 1376, column: 13, scope: !3697)
!3703 = !DILocation(line: 1377, column: 9, scope: !3677)
!3704 = !DILocation(line: 1369, column: 21, scope: !3672)
!3705 = !DILocation(line: 1369, column: 27, scope: !3672)
!3706 = !DILocation(line: 1369, column: 19, scope: !3672)
!3707 = !DILocation(line: 1367, column: 9, scope: !3708)
!3708 = !DILexicalBlockFile(scope: !3672, file: !511, discriminator: 2)
!3709 = distinct !{!3709, !3710}
!3710 = !DILocation(line: 1367, column: 9, scope: !3665)
!3711 = !DILocation(line: 1378, column: 14, scope: !3712)
!3712 = distinct !DILexicalBlock(scope: !3665, file: !511, line: 1378, column: 13)
!3713 = !DILocation(line: 1378, column: 13, scope: !3665)
!3714 = !DILocation(line: 1380, column: 30, scope: !3715)
!3715 = distinct !DILexicalBlock(scope: !3716, file: !511, line: 1380, column: 11)
!3716 = distinct !DILexicalBlock(scope: !3712, file: !511, line: 1378, column: 20)
!3717 = !DILocation(line: 1380, column: 39, scope: !3715)
!3718 = !DILocation(line: 1380, column: 49, scope: !3715)
!3719 = !DILocation(line: 1380, column: 28, scope: !3715)
!3720 = !DILocation(line: 1380, column: 16, scope: !3715)
!3721 = !DILocation(line: 1381, column: 16, scope: !3722)
!3722 = distinct !DILexicalBlock(scope: !3715, file: !511, line: 1380, column: 11)
!3723 = !DILocation(line: 1380, column: 11, scope: !3724)
!3724 = !DILexicalBlockFile(scope: !3715, file: !511, discriminator: 1)
!3725 = !DILocation(line: 1383, column: 17, scope: !3726)
!3726 = distinct !DILexicalBlock(scope: !3727, file: !511, line: 1383, column: 17)
!3727 = distinct !DILexicalBlock(scope: !3722, file: !511, line: 1382, column: 50)
!3728 = !DILocation(line: 1383, column: 31, scope: !3726)
!3729 = !DILocation(line: 1383, column: 36, scope: !3726)
!3730 = !DILocation(line: 1383, column: 17, scope: !3727)
!3731 = !DILocation(line: 1383, column: 53, scope: !3732)
!3732 = !DILexicalBlockFile(scope: !3726, file: !511, discriminator: 1)
!3733 = !DILocation(line: 1384, column: 25, scope: !3734)
!3734 = distinct !DILexicalBlock(scope: !3727, file: !511, line: 1384, column: 13)
!3735 = !DILocation(line: 1384, column: 39, scope: !3734)
!3736 = !DILocation(line: 1384, column: 45, scope: !3734)
!3737 = !DILocation(line: 1384, column: 49, scope: !3734)
!3738 = !DILocation(line: 1384, column: 58, scope: !3734)
!3739 = !DILocation(line: 1384, column: 23, scope: !3734)
!3740 = !DILocation(line: 1384, column: 18, scope: !3734)
!3741 = !DILocation(line: 1385, column: 18, scope: !3742)
!3742 = distinct !DILexicalBlock(scope: !3734, file: !511, line: 1384, column: 13)
!3743 = !DILocation(line: 1384, column: 13, scope: !3744)
!3744 = !DILexicalBlockFile(scope: !3734, file: !511, discriminator: 1)
!3745 = !DILocation(line: 1387, column: 19, scope: !3746)
!3746 = distinct !DILexicalBlock(scope: !3747, file: !511, line: 1387, column: 19)
!3747 = distinct !DILexicalBlock(scope: !3742, file: !511, line: 1386, column: 41)
!3748 = !DILocation(line: 1387, column: 25, scope: !3746)
!3749 = !DILocation(line: 1387, column: 29, scope: !3746)
!3750 = !DILocation(line: 1387, column: 34, scope: !3746)
!3751 = !DILocation(line: 1387, column: 49, scope: !3746)
!3752 = !DILocation(line: 1387, column: 52, scope: !3753)
!3753 = !DILexicalBlockFile(scope: !3746, file: !511, discriminator: 1)
!3754 = !DILocation(line: 1387, column: 58, scope: !3753)
!3755 = !DILocation(line: 1387, column: 62, scope: !3753)
!3756 = !DILocation(line: 1387, column: 67, scope: !3753)
!3757 = !DILocation(line: 1387, column: 19, scope: !3753)
!3758 = !DILocation(line: 1388, column: 17, scope: !3746)
!3759 = !DILocation(line: 1389, column: 27, scope: !3760)
!3760 = distinct !DILexicalBlock(scope: !3747, file: !511, line: 1389, column: 19)
!3761 = !DILocation(line: 1389, column: 33, scope: !3760)
!3762 = !DILocation(line: 1389, column: 19, scope: !3760)
!3763 = !DILocation(line: 1389, column: 19, scope: !3747)
!3764 = !DILocation(line: 1390, column: 17, scope: !3760)
!3765 = !DILocation(line: 1391, column: 15, scope: !3747)
!3766 = !DILocation(line: 1392, column: 22, scope: !3747)
!3767 = !DILocation(line: 1393, column: 31, scope: !3747)
!3768 = !DILocation(line: 1393, column: 22, scope: !3747)
!3769 = !DILocation(line: 1394, column: 22, scope: !3747)
!3770 = !DILocation(line: 1394, column: 36, scope: !3747)
!3771 = !DILocation(line: 1394, column: 42, scope: !3747)
!3772 = !DILocation(line: 1394, column: 46, scope: !3747)
!3773 = !DILocation(line: 1392, column: 15, scope: !3774)
!3774 = !DILexicalBlockFile(scope: !3747, file: !511, discriminator: 1)
!3775 = !DILocation(line: 1395, column: 35, scope: !3776)
!3776 = distinct !DILexicalBlock(scope: !3747, file: !511, line: 1395, column: 19)
!3777 = !DILocation(line: 1395, column: 40, scope: !3776)
!3778 = !DILocation(line: 1395, column: 59, scope: !3776)
!3779 = !DILocation(line: 1395, column: 20, scope: !3776)
!3780 = !DILocation(line: 1395, column: 19, scope: !3747)
!3781 = !DILocation(line: 1396, column: 17, scope: !3776)
!3782 = !DILocation(line: 1397, column: 13, scope: !3747)
!3783 = !DILocation(line: 1386, column: 25, scope: !3742)
!3784 = !DILocation(line: 1386, column: 31, scope: !3742)
!3785 = !DILocation(line: 1386, column: 23, scope: !3742)
!3786 = !DILocation(line: 1384, column: 13, scope: !3787)
!3787 = !DILexicalBlockFile(scope: !3742, file: !511, discriminator: 2)
!3788 = distinct !{!3788, !3789}
!3789 = !DILocation(line: 1384, column: 13, scope: !3727)
!3790 = !DILocation(line: 1398, column: 11, scope: !3727)
!3791 = !DILocation(line: 1382, column: 30, scope: !3722)
!3792 = !DILocation(line: 1382, column: 44, scope: !3722)
!3793 = !DILocation(line: 1382, column: 28, scope: !3722)
!3794 = !DILocation(line: 1380, column: 11, scope: !3795)
!3795 = !DILexicalBlockFile(scope: !3722, file: !511, discriminator: 2)
!3796 = distinct !{!3796, !3797}
!3797 = !DILocation(line: 1380, column: 11, scope: !3716)
!3798 = !DILocation(line: 1398, column: 11, scope: !3724)
!3799 = !DILocation(line: 1400, column: 9, scope: !3716)
!3800 = !DILocation(line: 1402, column: 12, scope: !3801)
!3801 = distinct !DILexicalBlock(scope: !3611, file: !511, line: 1402, column: 11)
!3802 = !DILocation(line: 1402, column: 17, scope: !3801)
!3803 = !DILocation(line: 1402, column: 37, scope: !3804)
!3804 = !DILexicalBlockFile(scope: !3801, file: !511, discriminator: 1)
!3805 = !DILocation(line: 1402, column: 20, scope: !3804)
!3806 = !DILocation(line: 1402, column: 11, scope: !3804)
!3807 = !DILocation(line: 1403, column: 13, scope: !3808)
!3808 = distinct !DILexicalBlock(scope: !3801, file: !511, line: 1402, column: 47)
!3809 = !DILocation(line: 1404, column: 7, scope: !3808)
!3810 = !DILocation(line: 1405, column: 12, scope: !3811)
!3811 = distinct !DILexicalBlock(scope: !3611, file: !511, line: 1405, column: 11)
!3812 = !DILocation(line: 1405, column: 17, scope: !3811)
!3813 = !DILocation(line: 1405, column: 21, scope: !3814)
!3814 = !DILexicalBlockFile(scope: !3811, file: !511, discriminator: 1)
!3815 = !DILocation(line: 1405, column: 30, scope: !3814)
!3816 = !DILocation(line: 1405, column: 36, scope: !3814)
!3817 = !DILocation(line: 1405, column: 11, scope: !3814)
!3818 = !DILocation(line: 1406, column: 13, scope: !3819)
!3819 = distinct !DILexicalBlock(scope: !3820, file: !511, line: 1406, column: 13)
!3820 = distinct !DILexicalBlock(scope: !3811, file: !511, line: 1405, column: 60)
!3821 = !DILocation(line: 1406, column: 13, scope: !3820)
!3822 = !DILocation(line: 1407, column: 18, scope: !3823)
!3823 = distinct !DILexicalBlock(scope: !3819, file: !511, line: 1406, column: 47)
!3824 = !DILocation(line: 1409, column: 27, scope: !3823)
!3825 = !DILocation(line: 1409, column: 18, scope: !3823)
!3826 = !DILocation(line: 1407, column: 11, scope: !3827)
!3827 = !DILexicalBlockFile(scope: !3823, file: !511, discriminator: 1)
!3828 = !DILocation(line: 1410, column: 9, scope: !3823)
!3829 = !DILocation(line: 1411, column: 18, scope: !3830)
!3830 = distinct !DILexicalBlock(scope: !3819, file: !511, line: 1410, column: 16)
!3831 = !DILocation(line: 1412, column: 27, scope: !3830)
!3832 = !DILocation(line: 1412, column: 18, scope: !3830)
!3833 = !DILocation(line: 1411, column: 11, scope: !3834)
!3834 = !DILexicalBlockFile(scope: !3830, file: !511, discriminator: 1)
!3835 = !DILocation(line: 1413, column: 15, scope: !3830)
!3836 = !DILocation(line: 1415, column: 7, scope: !3820)
!3837 = !DILocation(line: 1416, column: 12, scope: !3838)
!3838 = distinct !DILexicalBlock(scope: !3611, file: !511, line: 1416, column: 11)
!3839 = !DILocation(line: 1416, column: 11, scope: !3611)
!3840 = !DILocation(line: 1418, column: 28, scope: !3841)
!3841 = distinct !DILexicalBlock(scope: !3838, file: !511, line: 1416, column: 18)
!3842 = !DILocation(line: 1418, column: 9, scope: !3841)
!3843 = !DILocation(line: 1419, column: 9, scope: !3841)
!3844 = !DILocation(line: 1419, column: 39, scope: !3845)
!3845 = !DILexicalBlockFile(scope: !3841, file: !511, discriminator: 1)
!3846 = !DILocation(line: 1420, column: 16, scope: !3841)
!3847 = !DILocation(line: 1421, column: 25, scope: !3841)
!3848 = !DILocation(line: 1421, column: 16, scope: !3841)
!3849 = !DILocation(line: 1422, column: 28, scope: !3841)
!3850 = !DILocation(line: 1422, column: 34, scope: !3841)
!3851 = !DILocation(line: 1422, column: 39, scope: !3841)
!3852 = !DILocation(line: 1422, column: 16, scope: !3841)
!3853 = !DILocation(line: 1420, column: 9, scope: !3845)
!3854 = !DILocation(line: 1423, column: 9, scope: !3841)
!3855 = !DILocation(line: 1426, column: 7, scope: !3611)
!3856 = !DILocation(line: 1426, column: 16, scope: !3611)
!3857 = !DILocation(line: 1426, column: 28, scope: !3611)
!3858 = !DILocation(line: 1426, column: 35, scope: !3611)
!3859 = !DILocation(line: 1427, column: 5, scope: !3611)
!3860 = !DILocation(line: 1428, column: 3, scope: !3561)
!3861 = !DILocation(line: 1429, column: 3, scope: !3527)
!3862 = !DILocation(line: 1430, column: 10, scope: !3527)
!3863 = !DILocation(line: 1430, column: 54, scope: !3527)
!3864 = !DILocation(line: 1431, column: 22, scope: !3527)
!3865 = !DILocation(line: 1431, column: 28, scope: !3527)
!3866 = !DILocation(line: 1431, column: 33, scope: !3527)
!3867 = !DILocation(line: 1431, column: 10, scope: !3527)
!3868 = !DILocation(line: 1431, column: 72, scope: !3527)
!3869 = !DILocation(line: 1430, column: 3, scope: !3545)
!3870 = !DILocation(line: 1432, column: 24, scope: !3871)
!3871 = distinct !DILexicalBlock(scope: !3527, file: !511, line: 1432, column: 7)
!3872 = !DILocation(line: 1432, column: 29, scope: !3871)
!3873 = !DILocation(line: 1432, column: 8, scope: !3871)
!3874 = !DILocation(line: 1432, column: 7, scope: !3527)
!3875 = !DILocation(line: 1433, column: 12, scope: !3871)
!3876 = !DILocation(line: 1434, column: 24, scope: !3871)
!3877 = !DILocation(line: 1434, column: 30, scope: !3871)
!3878 = !DILocation(line: 1434, column: 35, scope: !3871)
!3879 = !DILocation(line: 1434, column: 12, scope: !3871)
!3880 = !DILocation(line: 1433, column: 5, scope: !3881)
!3881 = !DILexicalBlockFile(scope: !3871, file: !511, discriminator: 1)
!3882 = !DILocation(line: 1433, column: 5, scope: !3871)
!3883 = !DILocation(line: 1435, column: 11, scope: !3527)
!3884 = !DILocation(line: 1435, column: 3, scope: !3545)
!3885 = !DILocation(line: 1436, column: 3, scope: !3527)
!3886 = !DILocation(line: 1438, column: 3, scope: !3527)
!3887 = !DILocation(line: 1439, column: 1, scope: !3527)
!3888 = distinct !DISubprogram(name: "try_remove_can", scope: !511, file: !511, line: 1258, type: !3889, isLocal: true, isDefinition: true, scopeLine: 1260, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !564)
!3889 = !DISubroutineType(types: !3890)
!3890 = !{!277, !295, !279, !288}
!3891 = !DILocalVariable(name: "pdep", arg: 1, scope: !3888, file: !511, line: 1258, type: !295)
!3892 = !DILocation(line: 1258, column: 44, scope: !3888)
!3893 = !DILocalVariable(name: "fixbyrm", arg: 2, scope: !3888, file: !511, line: 1259, type: !279)
!3894 = !DILocation(line: 1259, column: 43, scope: !3888)
!3895 = !DILocalVariable(name: "why", arg: 3, scope: !3888, file: !511, line: 1260, type: !288)
!3896 = !DILocation(line: 1260, column: 39, scope: !3888)
!3897 = !DILocalVariable(name: "action", scope: !3888, file: !511, line: 1261, type: !3342)
!3898 = !DILocation(line: 1261, column: 8, scope: !3888)
!3899 = !DILocation(line: 1262, column: 11, scope: !3888)
!3900 = !DILocation(line: 1262, column: 19, scope: !3888)
!3901 = !DILocation(line: 1262, column: 58, scope: !3888)
!3902 = !DILocation(line: 1262, column: 49, scope: !3903)
!3903 = !DILexicalBlockFile(scope: !3888, file: !511, discriminator: 1)
!3904 = !DILocation(line: 1262, column: 3, scope: !3905)
!3905 = !DILexicalBlockFile(scope: !3888, file: !511, discriminator: 2)
!3906 = !DILocation(line: 1263, column: 45, scope: !3888)
!3907 = !DILocation(line: 1263, column: 51, scope: !3888)
!3908 = !DILocation(line: 1263, column: 55, scope: !3888)
!3909 = !DILocation(line: 1263, column: 59, scope: !3888)
!3910 = !DILocation(line: 1264, column: 30, scope: !3888)
!3911 = !DILocation(line: 1264, column: 38, scope: !3888)
!3912 = !DILocation(line: 1264, column: 47, scope: !3888)
!3913 = !DILocation(line: 1263, column: 10, scope: !3888)
!3914 = !DILocation(line: 1263, column: 3, scope: !3888)
!3915 = distinct !DISubprogram(name: "cu_cidir", scope: !511, file: !511, line: 1441, type: !888, isLocal: false, isDefinition: true, scopeLine: 1441, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !564)
!3916 = !DILocalVariable(name: "argc", arg: 1, scope: !3915, file: !511, line: 1441, type: !277)
!3917 = !DILocation(line: 1441, column: 19, scope: !3915)
!3918 = !DILocalVariable(name: "argv", arg: 2, scope: !3915, file: !511, line: 1441, type: !890)
!3919 = !DILocation(line: 1441, column: 32, scope: !3915)
!3920 = !DILocalVariable(name: "cidir", scope: !3915, file: !511, line: 1442, type: !270)
!3921 = !DILocation(line: 1442, column: 9, scope: !3915)
!3922 = !DILocation(line: 1442, column: 23, scope: !3915)
!3923 = !DILocalVariable(name: "cidirrest", scope: !3915, file: !511, line: 1443, type: !270)
!3924 = !DILocation(line: 1443, column: 9, scope: !3915)
!3925 = !DILocation(line: 1443, column: 27, scope: !3915)
!3926 = !DILocation(line: 1444, column: 3, scope: !3915)
!3927 = !DILocation(line: 1444, column: 17, scope: !3915)
!3928 = !DILocation(line: 1445, column: 20, scope: !3915)
!3929 = !DILocation(line: 1445, column: 3, scope: !3915)
!3930 = !DILocation(line: 1446, column: 1, scope: !3915)
!3931 = distinct !DISubprogram(name: "cu_fileslist", scope: !511, file: !511, line: 1448, type: !888, isLocal: false, isDefinition: true, scopeLine: 1448, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !564)
!3932 = !DILocalVariable(name: "argc", arg: 1, scope: !3931, file: !511, line: 1448, type: !277)
!3933 = !DILocation(line: 1448, column: 23, scope: !3931)
!3934 = !DILocalVariable(name: "argv", arg: 2, scope: !3931, file: !511, line: 1448, type: !890)
!3935 = !DILocation(line: 1448, column: 36, scope: !3931)
!3936 = !DILocation(line: 1449, column: 3, scope: !3931)
!3937 = !DILocation(line: 1450, column: 1, scope: !3931)
!3938 = distinct !DISubprogram(name: "tar_pool_release", scope: !511, file: !511, line: 108, type: !3281, isLocal: true, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !564)
!3939 = !DILocation(line: 110, column: 7, scope: !3940)
!3940 = distinct !DILexicalBlock(scope: !3938, file: !511, line: 110, column: 7)
!3941 = !DILocation(line: 110, column: 7, scope: !3938)
!3942 = !DILocalVariable(name: "__o", scope: !3943, file: !511, line: 111, type: !671)
!3943 = distinct !DILexicalBlock(scope: !3944, file: !511, line: 111, column: 19)
!3944 = distinct !DILexicalBlock(scope: !3940, file: !511, line: 110, column: 22)
!3945 = !DILocation(line: 111, column: 37, scope: !3943)
!3946 = !DILocalVariable(name: "__obj", scope: !3943, file: !511, line: 111, type: !505)
!3947 = !DILocation(line: 111, column: 13, scope: !3943)
!3948 = !DILocation(line: 111, column: 40, scope: !3949)
!3949 = distinct !DILexicalBlock(scope: !3943, file: !511, line: 111, column: 40)
!3950 = !DILocation(line: 111, column: 57, scope: !3949)
!3951 = !DILocation(line: 111, column: 62, scope: !3949)
!3952 = !DILocation(line: 111, column: 48, scope: !3949)
!3953 = !DILocation(line: 111, column: 46, scope: !3949)
!3954 = !DILocation(line: 111, column: 68, scope: !3949)
!3955 = !DILocation(line: 111, column: 71, scope: !3956)
!3956 = !DILexicalBlockFile(scope: !3949, file: !511, discriminator: 1)
!3957 = !DILocation(line: 111, column: 88, scope: !3956)
!3958 = !DILocation(line: 111, column: 93, scope: !3956)
!3959 = !DILocation(line: 111, column: 77, scope: !3956)
!3960 = !DILocation(line: 111, column: 40, scope: !3956)
!3961 = !DILocation(line: 111, column: 151, scope: !3962)
!3962 = !DILexicalBlockFile(scope: !3949, file: !511, discriminator: 2)
!3963 = !DILocation(line: 111, column: 123, scope: !3962)
!3964 = !DILocation(line: 111, column: 128, scope: !3962)
!3965 = !DILocation(line: 111, column: 140, scope: !3962)
!3966 = !DILocation(line: 111, column: 106, scope: !3962)
!3967 = !DILocation(line: 111, column: 111, scope: !3962)
!3968 = !DILocation(line: 111, column: 121, scope: !3962)
!3969 = !DILocation(line: 111, column: 179, scope: !3970)
!3970 = !DILexicalBlockFile(scope: !3949, file: !511, discriminator: 3)
!3971 = !DILocation(line: 111, column: 184, scope: !3970)
!3972 = !DILocation(line: 111, column: 163, scope: !3970)
!3973 = !DILocation(line: 112, column: 19, scope: !3944)
!3974 = !DILocation(line: 113, column: 3, scope: !3944)
!3975 = !DILocation(line: 114, column: 1, scope: !3938)
!3976 = distinct !DISubprogram(name: "archivefiles", scope: !511, file: !511, line: 1453, type: !3977, isLocal: false, isDefinition: true, scopeLine: 1454, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !564)
!3977 = !DISubroutineType(types: !3978)
!3978 = !{!277, !3979}
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3980, size: 64, align: 64)
!3980 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !288)
!3981 = !DILocalVariable(name: "argv", arg: 1, scope: !3976, file: !511, line: 1453, type: !3979)
!3982 = !DILocation(line: 1453, column: 33, scope: !3976)
!3983 = !DILocalVariable(name: "argp", scope: !3976, file: !511, line: 1455, type: !3984)
!3984 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !3979)
!3985 = !DILocation(line: 1455, column: 31, scope: !3976)
!3986 = !DILocalVariable(name: "arglist", scope: !3976, file: !511, line: 1456, type: !3987)
!3987 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !3988)
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64, align: 64)
!3989 = !DILocation(line: 1456, column: 25, scope: !3976)
!3990 = !DILocalVariable(name: "i", scope: !3976, file: !511, line: 1457, type: !277)
!3991 = !DILocation(line: 1457, column: 7, scope: !3976)
!3992 = !DILocalVariable(name: "ejbuf", scope: !3976, file: !511, line: 1458, type: !3993)
!3993 = !DIDerivedType(tag: DW_TAG_typedef, name: "jmp_buf", file: !3994, line: 48, baseType: !3995)
!3994 = !DIFile(filename: "/usr/include/setjmp.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!3995 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3996, size: 1600, align: 64, elements: !4014)
!3996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__jmp_buf_tag", file: !3994, line: 34, size: 1600, align: 64, elements: !3997)
!3997 = !{!3998, !4004, !4005}
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "__jmpbuf", scope: !3996, file: !3994, line: 40, baseType: !3999, size: 512, align: 64)
!3999 = !DIDerivedType(tag: DW_TAG_typedef, name: "__jmp_buf", file: !4000, line: 31, baseType: !4001)
!4000 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/setjmp.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!4001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !489, size: 512, align: 64, elements: !4002)
!4002 = !{!4003}
!4003 = !DISubrange(count: 8)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "__mask_was_saved", scope: !3996, file: !3994, line: 41, baseType: !277, size: 32, align: 32, offset: 512)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "__saved_mask", scope: !3996, file: !3994, line: 42, baseType: !4006, size: 1024, align: 64, offset: 576)
!4006 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !4007, line: 30, baseType: !4008)
!4007 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sigset.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!4008 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4007, line: 27, size: 1024, align: 64, elements: !4009)
!4009 = !{!4010}
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !4008, file: !4007, line: 29, baseType: !4011, size: 1024, align: 64)
!4011 = !DICompositeType(tag: DW_TAG_array_type, baseType: !482, size: 1024, align: 64, elements: !4012)
!4012 = !{!4013}
!4013 = !DISubrange(count: 16)
!4014 = !{!4015}
!4015 = !DISubrange(count: 1)
!4016 = !DILocation(line: 1458, column: 11, scope: !3976)
!4017 = !DILocalVariable(name: "msdbflags", scope: !3976, file: !511, line: 1459, type: !203)
!4018 = !DILocation(line: 1459, column: 21, scope: !3976)
!4019 = !DILocation(line: 1461, column: 3, scope: !3976)
!4020 = !DILocation(line: 1463, column: 7, scope: !4021)
!4021 = distinct !DILexicalBlock(scope: !3976, file: !511, line: 1463, column: 7)
!4022 = !DILocation(line: 1463, column: 7, scope: !3976)
!4023 = !DILocation(line: 1464, column: 15, scope: !4021)
!4024 = !DILocation(line: 1464, column: 5, scope: !4021)
!4025 = !DILocation(line: 1465, column: 12, scope: !4026)
!4026 = distinct !DILexicalBlock(scope: !4021, file: !511, line: 1465, column: 12)
!4027 = !DILocation(line: 1465, column: 23, scope: !4026)
!4028 = !DILocation(line: 1465, column: 31, scope: !4026)
!4029 = !DILocation(line: 1465, column: 12, scope: !4021)
!4030 = !DILocation(line: 1466, column: 15, scope: !4026)
!4031 = !DILocation(line: 1466, column: 5, scope: !4026)
!4032 = !DILocation(line: 1467, column: 12, scope: !4033)
!4033 = distinct !DILexicalBlock(scope: !4026, file: !511, line: 1467, column: 12)
!4034 = !DILocation(line: 1467, column: 12, scope: !4026)
!4035 = !DILocation(line: 1468, column: 15, scope: !4033)
!4036 = !DILocation(line: 1468, column: 5, scope: !4033)
!4037 = !DILocation(line: 1470, column: 15, scope: !4033)
!4038 = !DILocation(line: 1472, column: 18, scope: !3976)
!4039 = !DILocation(line: 1472, column: 3, scope: !3976)
!4040 = !DILocation(line: 1474, column: 3, scope: !3976)
!4041 = !DILocation(line: 1475, column: 3, scope: !3976)
!4042 = !DILocation(line: 1477, column: 38, scope: !3976)
!4043 = !DILocation(line: 1477, column: 49, scope: !3976)
!4044 = !DILocation(line: 1477, column: 3, scope: !3976)
!4045 = !DILocation(line: 1479, column: 7, scope: !4046)
!4046 = distinct !DILexicalBlock(scope: !3976, file: !511, line: 1479, column: 7)
!4047 = !DILocation(line: 1479, column: 7, scope: !3976)
!4048 = !DILocalVariable(name: "ap", scope: !4049, file: !511, line: 1480, type: !3979)
!4049 = distinct !DILexicalBlock(scope: !4046, file: !511, line: 1479, column: 20)
!4050 = !DILocation(line: 1480, column: 24, scope: !4049)
!4051 = !DILocalVariable(name: "nfiles", scope: !4049, file: !511, line: 1481, type: !277)
!4052 = !DILocation(line: 1481, column: 9, scope: !4049)
!4053 = !DILocation(line: 1483, column: 11, scope: !4054)
!4054 = distinct !DILexicalBlock(scope: !4049, file: !511, line: 1483, column: 9)
!4055 = !DILocation(line: 1483, column: 10, scope: !4054)
!4056 = !DILocation(line: 1483, column: 9, scope: !4049)
!4057 = !DILocation(line: 1484, column: 16, scope: !4054)
!4058 = !DILocation(line: 1484, column: 77, scope: !4054)
!4059 = !DILocation(line: 1484, column: 88, scope: !4054)
!4060 = !DILocation(line: 1484, column: 7, scope: !4061)
!4061 = !DILexicalBlockFile(scope: !4054, file: !511, discriminator: 1)
!4062 = !DILocation(line: 1484, column: 7, scope: !4054)
!4063 = !DILocation(line: 1486, column: 15, scope: !4064)
!4064 = distinct !DILexicalBlock(scope: !4049, file: !511, line: 1486, column: 5)
!4065 = !DILocation(line: 1486, column: 13, scope: !4064)
!4066 = !DILocation(line: 1486, column: 10, scope: !4064)
!4067 = !DILocation(line: 1486, column: 22, scope: !4068)
!4068 = !DILexicalBlockFile(scope: !4069, file: !511, discriminator: 1)
!4069 = distinct !DILexicalBlock(scope: !4064, file: !511, line: 1486, column: 5)
!4070 = !DILocation(line: 1486, column: 21, scope: !4068)
!4071 = !DILocation(line: 1486, column: 5, scope: !4068)
!4072 = !DILocalVariable(name: "tree", scope: !4073, file: !511, line: 1487, type: !4074)
!4073 = distinct !DILexicalBlock(scope: !4069, file: !511, line: 1486, column: 32)
!4074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4075, size: 64, align: 64)
!4075 = !DICompositeType(tag: DW_TAG_structure_type, name: "treeroot", file: !259, line: 57, flags: DIFlagFwdDecl)
!4076 = !DILocation(line: 1487, column: 24, scope: !4073)
!4077 = !DILocalVariable(name: "node", scope: !4073, file: !511, line: 1488, type: !4078)
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4079, size: 64, align: 64)
!4079 = !DICompositeType(tag: DW_TAG_structure_type, name: "treenode", file: !259, line: 45, flags: DIFlagFwdDecl)
!4080 = !DILocation(line: 1488, column: 24, scope: !4073)
!4081 = !DILocation(line: 1490, column: 43, scope: !4073)
!4082 = !DILocation(line: 1490, column: 42, scope: !4073)
!4083 = !DILocation(line: 1490, column: 14, scope: !4073)
!4084 = !DILocation(line: 1490, column: 12, scope: !4073)
!4085 = !DILocation(line: 1492, column: 7, scope: !4073)
!4086 = !DILocation(line: 1492, column: 36, scope: !4087)
!4087 = !DILexicalBlockFile(scope: !4073, file: !511, discriminator: 1)
!4088 = !DILocation(line: 1492, column: 22, scope: !4087)
!4089 = !DILocation(line: 1492, column: 20, scope: !4087)
!4090 = !DILocation(line: 1492, column: 7, scope: !4087)
!4091 = !DILocalVariable(name: "nodename", scope: !4092, file: !511, line: 1493, type: !288)
!4092 = distinct !DILexicalBlock(scope: !4073, file: !511, line: 1492, column: 44)
!4093 = !DILocation(line: 1493, column: 21, scope: !4092)
!4094 = !DILocation(line: 1495, column: 31, scope: !4095)
!4095 = distinct !DILexicalBlock(scope: !4092, file: !511, line: 1495, column: 13)
!4096 = !DILocation(line: 1495, column: 13, scope: !4095)
!4097 = !DILocation(line: 1495, column: 16, scope: !4095)
!4098 = !DILocation(line: 1495, column: 27, scope: !4095)
!4099 = !DILocation(line: 1495, column: 13, scope: !4092)
!4100 = !DILocation(line: 1496, column: 11, scope: !4095)
!4101 = distinct !{!4101, !4085}
!4102 = !DILocation(line: 1499, column: 42, scope: !4092)
!4103 = !DILocation(line: 1499, column: 20, scope: !4092)
!4104 = !DILocation(line: 1499, column: 18, scope: !4092)
!4105 = !DILocation(line: 1500, column: 20, scope: !4106)
!4106 = distinct !DILexicalBlock(scope: !4092, file: !511, line: 1500, column: 13)
!4107 = !DILocation(line: 1500, column: 38, scope: !4106)
!4108 = !DILocation(line: 1500, column: 31, scope: !4106)
!4109 = !DILocation(line: 1500, column: 29, scope: !4106)
!4110 = !DILocation(line: 1500, column: 48, scope: !4106)
!4111 = !DILocation(line: 1500, column: 13, scope: !4112)
!4112 = !DILexicalBlockFile(scope: !4106, file: !511, discriminator: 1)
!4113 = !DILocation(line: 1500, column: 61, scope: !4106)
!4114 = !DILocation(line: 1500, column: 13, scope: !4092)
!4115 = !DILocation(line: 1501, column: 11, scope: !4106)
!4116 = !DILocation(line: 1503, column: 29, scope: !4092)
!4117 = !DILocation(line: 1503, column: 56, scope: !4092)
!4118 = !DILocation(line: 1503, column: 63, scope: !4092)
!4119 = !DILocation(line: 1503, column: 55, scope: !4092)
!4120 = !DILocation(line: 1503, column: 53, scope: !4092)
!4121 = !DILocation(line: 1503, column: 19, scope: !4092)
!4122 = !DILocation(line: 1503, column: 17, scope: !4092)
!4123 = !DILocation(line: 1504, column: 38, scope: !4092)
!4124 = !DILocation(line: 1504, column: 29, scope: !4092)
!4125 = !DILocation(line: 1504, column: 23, scope: !4092)
!4126 = !DILocation(line: 1504, column: 9, scope: !4092)
!4127 = !DILocation(line: 1504, column: 27, scope: !4092)
!4128 = !DILocation(line: 1492, column: 7, scope: !4129)
!4129 = !DILexicalBlockFile(scope: !4073, file: !511, discriminator: 2)
!4130 = !DILocation(line: 1507, column: 22, scope: !4073)
!4131 = !DILocation(line: 1507, column: 7, scope: !4073)
!4132 = !DILocation(line: 1508, column: 5, scope: !4073)
!4133 = !DILocation(line: 1486, column: 28, scope: !4134)
!4134 = !DILexicalBlockFile(scope: !4069, file: !511, discriminator: 2)
!4135 = !DILocation(line: 1486, column: 5, scope: !4134)
!4136 = distinct !{!4136, !4137}
!4137 = !DILocation(line: 1486, column: 5, scope: !4049)
!4138 = !DILocation(line: 1510, column: 10, scope: !4139)
!4139 = distinct !DILexicalBlock(scope: !4049, file: !511, line: 1510, column: 9)
!4140 = !DILocation(line: 1510, column: 9, scope: !4049)
!4141 = !DILocation(line: 1511, column: 14, scope: !4139)
!4142 = !DILocation(line: 1511, column: 7, scope: !4143)
!4143 = !DILexicalBlockFile(scope: !4139, file: !511, discriminator: 1)
!4144 = !DILocation(line: 1511, column: 7, scope: !4139)
!4145 = !DILocation(line: 1513, column: 13, scope: !4049)
!4146 = !DILocation(line: 1513, column: 5, scope: !4049)
!4147 = !DILocation(line: 1513, column: 21, scope: !4049)
!4148 = !DILocation(line: 1514, column: 11, scope: !4049)
!4149 = !DILocation(line: 1514, column: 9, scope: !4049)
!4150 = !DILocation(line: 1515, column: 3, scope: !4049)
!4151 = !DILocation(line: 1516, column: 11, scope: !4152)
!4152 = distinct !DILexicalBlock(scope: !4153, file: !511, line: 1516, column: 9)
!4153 = distinct !DILexicalBlock(scope: !4046, file: !511, line: 1515, column: 10)
!4154 = !DILocation(line: 1516, column: 10, scope: !4152)
!4155 = !DILocation(line: 1516, column: 9, scope: !4153)
!4156 = !DILocation(line: 1516, column: 26, scope: !4157)
!4157 = !DILexicalBlockFile(scope: !4152, file: !511, discriminator: 1)
!4158 = !DILocation(line: 1517, column: 26, scope: !4152)
!4159 = !DILocation(line: 1517, column: 37, scope: !4152)
!4160 = !DILocation(line: 1516, column: 17, scope: !4161)
!4161 = !DILexicalBlockFile(scope: !4157, file: !511, discriminator: 2)
!4162 = !DILocation(line: 1516, column: 17, scope: !4157)
!4163 = !DILocation(line: 1518, column: 11, scope: !4153)
!4164 = !DILocation(line: 1518, column: 9, scope: !4153)
!4165 = !DILocation(line: 1522, column: 10, scope: !4166)
!4166 = distinct !DILexicalBlock(scope: !3976, file: !511, line: 1522, column: 3)
!4167 = !DILocation(line: 1522, column: 8, scope: !4166)
!4168 = !DILocation(line: 1522, column: 20, scope: !4169)
!4169 = !DILexicalBlockFile(scope: !4170, file: !511, discriminator: 1)
!4170 = distinct !DILexicalBlock(scope: !4166, file: !511, line: 1522, column: 3)
!4171 = !DILocation(line: 1522, column: 15, scope: !4169)
!4172 = !DILocation(line: 1522, column: 3, scope: !4169)
!4173 = !DILocalVariable(name: "st", scope: !4174, file: !511, line: 1523, type: !991)
!4174 = distinct !DILexicalBlock(scope: !4170, file: !511, line: 1522, column: 29)
!4175 = !DILocation(line: 1523, column: 17, scope: !4174)
!4176 = !DILocation(line: 1526, column: 19, scope: !4177)
!4177 = distinct !DILexicalBlock(scope: !4174, file: !511, line: 1526, column: 9)
!4178 = !DILocation(line: 1526, column: 14, scope: !4177)
!4179 = !DILocation(line: 1526, column: 9, scope: !4177)
!4180 = !DILocation(line: 1526, column: 28, scope: !4177)
!4181 = !DILocation(line: 1526, column: 9, scope: !4174)
!4182 = !DILocation(line: 1527, column: 15, scope: !4177)
!4183 = !DILocation(line: 1527, column: 59, scope: !4177)
!4184 = !DILocation(line: 1527, column: 54, scope: !4177)
!4185 = !DILocation(line: 1527, column: 7, scope: !4186)
!4186 = !DILexicalBlockFile(scope: !4177, file: !511, discriminator: 1)
!4187 = !DILocation(line: 1527, column: 7, scope: !4177)
!4188 = !DILocation(line: 1530, column: 12, scope: !4189)
!4189 = distinct !DILexicalBlock(scope: !4174, file: !511, line: 1530, column: 9)
!4190 = !DILocation(line: 1530, column: 23, scope: !4189)
!4191 = !DILocation(line: 1530, column: 9, scope: !4174)
!4192 = !DILocation(line: 1531, column: 14, scope: !4189)
!4193 = !DILocation(line: 1531, column: 66, scope: !4189)
!4194 = !DILocation(line: 1531, column: 61, scope: !4189)
!4195 = !DILocation(line: 1531, column: 7, scope: !4196)
!4196 = !DILexicalBlockFile(scope: !4189, file: !511, discriminator: 1)
!4197 = !DILocation(line: 1531, column: 7, scope: !4189)
!4198 = !DILocation(line: 1532, column: 3, scope: !4174)
!4199 = !DILocation(line: 1522, column: 25, scope: !4200)
!4200 = !DILexicalBlockFile(scope: !4170, file: !511, discriminator: 2)
!4201 = !DILocation(line: 1522, column: 3, scope: !4200)
!4202 = distinct !{!4202, !4203}
!4203 = !DILocation(line: 1522, column: 3, scope: !3976)
!4204 = !DILocation(line: 1534, column: 17, scope: !3976)
!4205 = !DILocation(line: 1534, column: 15, scope: !3976)
!4206 = !DILocation(line: 1538, column: 3, scope: !3976)
!4207 = !DILocation(line: 1539, column: 3, scope: !3976)
!4208 = !DILocation(line: 1540, column: 3, scope: !3976)
!4209 = !DILocation(line: 1542, column: 28, scope: !3976)
!4210 = !DILocation(line: 1542, column: 44, scope: !3976)
!4211 = !DILocation(line: 1542, column: 37, scope: !3976)
!4212 = !DILocation(line: 1542, column: 3, scope: !4213)
!4213 = !DILexicalBlockFile(scope: !3976, file: !511, discriminator: 1)
!4214 = !DILocation(line: 1543, column: 31, scope: !3976)
!4215 = !DILocation(line: 1543, column: 47, scope: !3976)
!4216 = !DILocation(line: 1543, column: 40, scope: !3976)
!4217 = !DILocation(line: 1543, column: 3, scope: !4213)
!4218 = !DILocation(line: 1544, column: 31, scope: !3976)
!4219 = !DILocation(line: 1544, column: 47, scope: !3976)
!4220 = !DILocation(line: 1544, column: 40, scope: !3976)
!4221 = !DILocation(line: 1544, column: 3, scope: !4213)
!4222 = !DILocation(line: 1546, column: 3, scope: !3976)
!4223 = !DILocation(line: 1548, column: 3, scope: !3976)
!4224 = !DILocation(line: 1549, column: 3, scope: !3976)
!4225 = !DILocation(line: 1551, column: 10, scope: !4226)
!4226 = distinct !DILexicalBlock(scope: !3976, file: !511, line: 1551, column: 3)
!4227 = !DILocation(line: 1551, column: 8, scope: !4226)
!4228 = !DILocation(line: 1551, column: 20, scope: !4229)
!4229 = !DILexicalBlockFile(scope: !4230, file: !511, discriminator: 1)
!4230 = distinct !DILexicalBlock(scope: !4226, file: !511, line: 1551, column: 3)
!4231 = !DILocation(line: 1551, column: 15, scope: !4229)
!4232 = !DILocation(line: 1551, column: 3, scope: !4229)
!4233 = !DILocation(line: 1552, column: 8, scope: !4234)
!4234 = distinct !DILexicalBlock(scope: !4235, file: !511, line: 1552, column: 8)
!4235 = distinct !DILexicalBlock(scope: !4230, file: !511, line: 1551, column: 29)
!4236 = !DILocation(line: 1552, column: 8, scope: !4235)
!4237 = !DILocation(line: 1553, column: 7, scope: !4238)
!4238 = distinct !DILexicalBlock(scope: !4234, file: !511, line: 1552, column: 23)
!4239 = !DILocation(line: 1554, column: 11, scope: !4240)
!4240 = distinct !DILexicalBlock(scope: !4238, file: !511, line: 1554, column: 11)
!4241 = !DILocation(line: 1554, column: 11, scope: !4238)
!4242 = !DILocation(line: 1555, column: 9, scope: !4240)
!4243 = !DILocation(line: 1556, column: 7, scope: !4238)
!4244 = !DILocation(line: 1558, column: 66, scope: !4235)
!4245 = !DILocation(line: 1558, column: 61, scope: !4235)
!4246 = !DILocation(line: 1558, column: 5, scope: !4235)
!4247 = !DILocation(line: 1560, column: 5, scope: !4235)
!4248 = !DILocation(line: 1562, column: 26, scope: !4235)
!4249 = !DILocation(line: 1562, column: 21, scope: !4235)
!4250 = !DILocation(line: 1562, column: 5, scope: !4235)
!4251 = !DILocation(line: 1563, column: 16, scope: !4235)
!4252 = !DILocation(line: 1564, column: 13, scope: !4235)
!4253 = !DILocation(line: 1564, column: 21, scope: !4235)
!4254 = !DILocation(line: 1564, column: 5, scope: !4255)
!4255 = !DILexicalBlockFile(scope: !4235, file: !511, discriminator: 1)
!4256 = !DILocation(line: 1565, column: 13, scope: !4235)
!4257 = !DILocation(line: 1565, column: 21, scope: !4235)
!4258 = !DILocation(line: 1565, column: 5, scope: !4255)
!4259 = !DILocation(line: 1566, column: 16, scope: !4235)
!4260 = !DILocation(line: 1568, column: 5, scope: !4235)
!4261 = !DILocation(line: 1569, column: 3, scope: !4235)
!4262 = !DILocation(line: 1551, column: 25, scope: !4263)
!4263 = !DILexicalBlockFile(scope: !4230, file: !511, discriminator: 2)
!4264 = !DILocation(line: 1551, column: 3, scope: !4263)
!4265 = distinct !{!4265, !4266}
!4266 = !DILocation(line: 1551, column: 3, scope: !3976)
!4267 = !DILocation(line: 1571, column: 3, scope: !3976)
!4268 = !DILocation(line: 1573, column: 8, scope: !3976)
!4269 = !DILocation(line: 1573, column: 3, scope: !3976)
!4270 = !DILocation(line: 1575, column: 11, scope: !3976)
!4271 = !DILocation(line: 1575, column: 22, scope: !3976)
!4272 = !DILocation(line: 1575, column: 3, scope: !3976)
!4273 = !DILocation(line: 1581, column: 5, scope: !4274)
!4274 = distinct !DILexicalBlock(scope: !3976, file: !511, line: 1575, column: 31)
!4275 = !DILocation(line: 1584, column: 5, scope: !4274)
!4276 = !DILocation(line: 1586, column: 71, scope: !4274)
!4277 = !DILocation(line: 1586, column: 82, scope: !4274)
!4278 = !DILocation(line: 1586, column: 5, scope: !4274)
!4279 = !DILocation(line: 1589, column: 3, scope: !3976)
!4280 = !DILocation(line: 1590, column: 3, scope: !3976)
!4281 = !DILocation(line: 1592, column: 3, scope: !3976)
!4282 = distinct !DISubprogram(name: "wanttoinstall", scope: !511, file: !511, line: 1604, type: !4283, isLocal: false, isDefinition: true, scopeLine: 1605, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !564)
!4283 = !DISubroutineType(types: !4284)
!4284 = !{!328, !279}
!4285 = !DILocalVariable(name: "pkg", arg: 1, scope: !4282, file: !511, line: 1604, type: !279)
!4286 = !DILocation(line: 1604, column: 31, scope: !4282)
!4287 = !DILocalVariable(name: "rc", scope: !4282, file: !511, line: 1606, type: !277)
!4288 = !DILocation(line: 1606, column: 7, scope: !4282)
!4289 = !DILocation(line: 1608, column: 7, scope: !4290)
!4290 = distinct !DILexicalBlock(scope: !4282, file: !511, line: 1608, column: 7)
!4291 = !DILocation(line: 1608, column: 12, scope: !4290)
!4292 = !DILocation(line: 1608, column: 17, scope: !4290)
!4293 = !DILocation(line: 1608, column: 37, scope: !4290)
!4294 = !DILocation(line: 1608, column: 40, scope: !4295)
!4295 = !DILexicalBlockFile(scope: !4290, file: !511, discriminator: 1)
!4296 = !DILocation(line: 1608, column: 45, scope: !4295)
!4297 = !DILocation(line: 1608, column: 50, scope: !4295)
!4298 = !DILocation(line: 1608, column: 7, scope: !4295)
!4299 = !DILocation(line: 1609, column: 9, scope: !4300)
!4300 = distinct !DILexicalBlock(scope: !4301, file: !511, line: 1609, column: 9)
!4301 = distinct !DILexicalBlock(scope: !4290, file: !511, line: 1608, column: 68)
!4302 = !DILocation(line: 1609, column: 9, scope: !4301)
!4303 = !DILocation(line: 1610, column: 14, scope: !4304)
!4304 = distinct !DILexicalBlock(scope: !4300, file: !511, line: 1609, column: 23)
!4305 = !DILocation(line: 1611, column: 26, scope: !4304)
!4306 = !DILocation(line: 1611, column: 32, scope: !4304)
!4307 = !DILocation(line: 1611, column: 37, scope: !4304)
!4308 = !DILocation(line: 1611, column: 14, scope: !4304)
!4309 = !DILocation(line: 1610, column: 7, scope: !4310)
!4310 = !DILexicalBlockFile(scope: !4304, file: !511, discriminator: 1)
!4311 = !DILocation(line: 1612, column: 7, scope: !4304)
!4312 = !DILocation(line: 1614, column: 14, scope: !4313)
!4313 = distinct !DILexicalBlock(scope: !4300, file: !511, line: 1613, column: 12)
!4314 = !DILocation(line: 1615, column: 26, scope: !4313)
!4315 = !DILocation(line: 1615, column: 32, scope: !4313)
!4316 = !DILocation(line: 1615, column: 37, scope: !4313)
!4317 = !DILocation(line: 1615, column: 14, scope: !4313)
!4318 = !DILocation(line: 1614, column: 7, scope: !4319)
!4319 = !DILexicalBlockFile(scope: !4313, file: !511, discriminator: 1)
!4320 = !DILocation(line: 1616, column: 7, scope: !4313)
!4321 = !DILocation(line: 1620, column: 7, scope: !4322)
!4322 = distinct !DILexicalBlock(scope: !4282, file: !511, line: 1620, column: 7)
!4323 = !DILocation(line: 1620, column: 12, scope: !4322)
!4324 = !DILocation(line: 1620, column: 18, scope: !4322)
!4325 = !DILocation(line: 1620, column: 7, scope: !4282)
!4326 = !DILocation(line: 1621, column: 5, scope: !4322)
!4327 = !DILocation(line: 1622, column: 7, scope: !4328)
!4328 = distinct !DILexicalBlock(scope: !4282, file: !511, line: 1622, column: 7)
!4329 = !DILocation(line: 1622, column: 12, scope: !4328)
!4330 = !DILocation(line: 1622, column: 19, scope: !4328)
!4331 = !DILocation(line: 1622, column: 7, scope: !4282)
!4332 = !DILocation(line: 1623, column: 5, scope: !4328)
!4333 = !DILocation(line: 1625, column: 30, scope: !4282)
!4334 = !DILocation(line: 1625, column: 35, scope: !4282)
!4335 = !DILocation(line: 1625, column: 45, scope: !4282)
!4336 = !DILocation(line: 1625, column: 55, scope: !4282)
!4337 = !DILocation(line: 1625, column: 60, scope: !4282)
!4338 = !DILocation(line: 1625, column: 70, scope: !4282)
!4339 = !DILocation(line: 1625, column: 8, scope: !4282)
!4340 = !DILocation(line: 1625, column: 6, scope: !4282)
!4341 = !DILocation(line: 1626, column: 7, scope: !4342)
!4342 = distinct !DILexicalBlock(scope: !4282, file: !511, line: 1626, column: 7)
!4343 = !DILocation(line: 1626, column: 10, scope: !4342)
!4344 = !DILocation(line: 1626, column: 7, scope: !4282)
!4345 = !DILocation(line: 1627, column: 5, scope: !4346)
!4346 = distinct !DILexicalBlock(scope: !4342, file: !511, line: 1626, column: 15)
!4347 = !DILocation(line: 1628, column: 14, scope: !4348)
!4348 = distinct !DILexicalBlock(scope: !4342, file: !511, line: 1628, column: 14)
!4349 = !DILocation(line: 1628, column: 17, scope: !4348)
!4350 = !DILocation(line: 1628, column: 14, scope: !4342)
!4351 = !DILocation(line: 1630, column: 9, scope: !4352)
!4352 = distinct !DILexicalBlock(scope: !4353, file: !511, line: 1630, column: 9)
!4353 = distinct !DILexicalBlock(scope: !4348, file: !511, line: 1628, column: 23)
!4354 = !DILocation(line: 1630, column: 9, scope: !4353)
!4355 = !DILocation(line: 1631, column: 14, scope: !4356)
!4356 = distinct !DILexicalBlock(scope: !4352, file: !511, line: 1630, column: 21)
!4357 = !DILocation(line: 1632, column: 31, scope: !4356)
!4358 = !DILocation(line: 1632, column: 36, scope: !4356)
!4359 = !DILocation(line: 1632, column: 46, scope: !4356)
!4360 = !DILocation(line: 1632, column: 14, scope: !4356)
!4361 = !DILocation(line: 1633, column: 23, scope: !4356)
!4362 = !DILocation(line: 1633, column: 14, scope: !4356)
!4363 = !DILocation(line: 1631, column: 7, scope: !4364)
!4364 = !DILexicalBlockFile(scope: !4356, file: !511, discriminator: 1)
!4365 = !DILocation(line: 1634, column: 7, scope: !4356)
!4366 = !DILocation(line: 1636, column: 7, scope: !4367)
!4367 = distinct !DILexicalBlock(scope: !4352, file: !511, line: 1635, column: 12)
!4368 = !DILocation(line: 1639, column: 9, scope: !4369)
!4369 = distinct !DILexicalBlock(scope: !4370, file: !511, line: 1639, column: 9)
!4370 = distinct !DILexicalBlock(scope: !4348, file: !511, line: 1638, column: 10)
!4371 = !DILocation(line: 1639, column: 9, scope: !4370)
!4372 = !DILocation(line: 1640, column: 15, scope: !4373)
!4373 = distinct !DILexicalBlock(scope: !4369, file: !511, line: 1639, column: 36)
!4374 = !DILocation(line: 1641, column: 24, scope: !4373)
!4375 = !DILocation(line: 1641, column: 15, scope: !4373)
!4376 = !DILocation(line: 1642, column: 32, scope: !4373)
!4377 = !DILocation(line: 1642, column: 37, scope: !4373)
!4378 = !DILocation(line: 1642, column: 47, scope: !4373)
!4379 = !DILocation(line: 1642, column: 15, scope: !4373)
!4380 = !DILocation(line: 1643, column: 32, scope: !4373)
!4381 = !DILocation(line: 1643, column: 37, scope: !4373)
!4382 = !DILocation(line: 1643, column: 47, scope: !4373)
!4383 = !DILocation(line: 1643, column: 15, scope: !4373)
!4384 = !DILocation(line: 1640, column: 7, scope: !4385)
!4385 = !DILexicalBlockFile(scope: !4373, file: !511, discriminator: 1)
!4386 = !DILocation(line: 1644, column: 7, scope: !4373)
!4387 = !DILocation(line: 1646, column: 14, scope: !4388)
!4388 = distinct !DILexicalBlock(scope: !4369, file: !511, line: 1645, column: 12)
!4389 = !DILocation(line: 1647, column: 23, scope: !4388)
!4390 = !DILocation(line: 1647, column: 14, scope: !4388)
!4391 = !DILocation(line: 1648, column: 31, scope: !4388)
!4392 = !DILocation(line: 1648, column: 36, scope: !4388)
!4393 = !DILocation(line: 1648, column: 46, scope: !4388)
!4394 = !DILocation(line: 1648, column: 14, scope: !4388)
!4395 = !DILocation(line: 1649, column: 31, scope: !4388)
!4396 = !DILocation(line: 1649, column: 36, scope: !4388)
!4397 = !DILocation(line: 1649, column: 46, scope: !4388)
!4398 = !DILocation(line: 1649, column: 14, scope: !4388)
!4399 = !DILocation(line: 1646, column: 7, scope: !4400)
!4400 = !DILexicalBlockFile(scope: !4388, file: !511, discriminator: 1)
!4401 = !DILocation(line: 1650, column: 7, scope: !4388)
!4402 = !DILocation(line: 1653, column: 1, scope: !4282)
!4403 = distinct !DISubprogram(name: "tar_pool_free", scope: !511, file: !511, line: 99, type: !507, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !564)
!4404 = !DILocalVariable(name: "ptr", arg: 1, scope: !4403, file: !511, line: 99, type: !505)
!4405 = !DILocation(line: 99, column: 21, scope: !4403)
!4406 = !DILocalVariable(name: "__o", scope: !4407, file: !511, line: 101, type: !671)
!4407 = distinct !DILexicalBlock(scope: !4403, file: !511, line: 101, column: 17)
!4408 = !DILocation(line: 101, column: 35, scope: !4407)
!4409 = !DILocalVariable(name: "__obj", scope: !4407, file: !511, line: 101, type: !505)
!4410 = !DILocation(line: 101, column: 11, scope: !4407)
!4411 = !DILocation(line: 101, column: 2, scope: !4407)
!4412 = !DILocation(line: 101, column: 9, scope: !4413)
!4413 = distinct !DILexicalBlock(scope: !4407, file: !511, line: 101, column: 9)
!4414 = !DILocation(line: 101, column: 26, scope: !4413)
!4415 = !DILocation(line: 101, column: 31, scope: !4413)
!4416 = !DILocation(line: 101, column: 17, scope: !4413)
!4417 = !DILocation(line: 101, column: 15, scope: !4413)
!4418 = !DILocation(line: 101, column: 37, scope: !4413)
!4419 = !DILocation(line: 101, column: 40, scope: !4420)
!4420 = !DILexicalBlockFile(scope: !4413, file: !511, discriminator: 1)
!4421 = !DILocation(line: 101, column: 57, scope: !4420)
!4422 = !DILocation(line: 101, column: 62, scope: !4420)
!4423 = !DILocation(line: 101, column: 46, scope: !4420)
!4424 = !DILocation(line: 101, column: 9, scope: !4420)
!4425 = !DILocation(line: 101, column: 120, scope: !4426)
!4426 = !DILexicalBlockFile(scope: !4413, file: !511, discriminator: 2)
!4427 = !DILocation(line: 101, column: 92, scope: !4426)
!4428 = !DILocation(line: 101, column: 97, scope: !4426)
!4429 = !DILocation(line: 101, column: 109, scope: !4426)
!4430 = !DILocation(line: 101, column: 75, scope: !4426)
!4431 = !DILocation(line: 101, column: 80, scope: !4426)
!4432 = !DILocation(line: 101, column: 90, scope: !4426)
!4433 = !DILocation(line: 101, column: 148, scope: !4434)
!4434 = !DILexicalBlockFile(scope: !4413, file: !511, discriminator: 3)
!4435 = !DILocation(line: 101, column: 153, scope: !4434)
!4436 = !DILocation(line: 101, column: 132, scope: !4434)
!4437 = !DILocation(line: 102, column: 1, scope: !4403)
!4438 = distinct !DISubprogram(name: "tarobject_skip_padding", scope: !511, file: !511, line: 280, type: !2211, isLocal: true, isDefinition: true, scopeLine: 281, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !564)
!4439 = !DILocalVariable(name: "tc", arg: 1, scope: !4438, file: !511, line: 280, type: !272)
!4440 = !DILocation(line: 280, column: 43, scope: !4438)
!4441 = !DILocalVariable(name: "te", arg: 2, scope: !4438, file: !511, line: 280, type: !550)
!4442 = !DILocation(line: 280, column: 65, scope: !4438)
!4443 = !DILocalVariable(name: "err", scope: !4438, file: !511, line: 282, type: !526)
!4444 = !DILocation(line: 282, column: 21, scope: !4438)
!4445 = !DILocalVariable(name: "r", scope: !4438, file: !511, line: 283, type: !569)
!4446 = !DILocation(line: 283, column: 10, scope: !4438)
!4447 = !DILocation(line: 285, column: 7, scope: !4438)
!4448 = !DILocation(line: 285, column: 11, scope: !4438)
!4449 = !DILocation(line: 285, column: 16, scope: !4438)
!4450 = !DILocation(line: 285, column: 5, scope: !4438)
!4451 = !DILocation(line: 286, column: 7, scope: !4452)
!4452 = distinct !DILexicalBlock(scope: !4438, file: !511, line: 286, column: 7)
!4453 = !DILocation(line: 286, column: 9, scope: !4452)
!4454 = !DILocation(line: 286, column: 7, scope: !4438)
!4455 = !DILocation(line: 287, column: 5, scope: !4452)
!4456 = !DILocation(line: 289, column: 23, scope: !4457)
!4457 = distinct !DILexicalBlock(scope: !4438, file: !511, line: 289, column: 7)
!4458 = !DILocation(line: 289, column: 27, scope: !4457)
!4459 = !DILocation(line: 289, column: 49, scope: !4457)
!4460 = !DILocation(line: 289, column: 47, scope: !4457)
!4461 = !DILocation(line: 289, column: 7, scope: !4457)
!4462 = !DILocation(line: 289, column: 58, scope: !4457)
!4463 = !DILocation(line: 289, column: 7, scope: !4438)
!4464 = !DILocation(line: 290, column: 12, scope: !4457)
!4465 = !DILocation(line: 290, column: 66, scope: !4457)
!4466 = !DILocation(line: 290, column: 70, scope: !4457)
!4467 = !DILocation(line: 290, column: 80, scope: !4457)
!4468 = !DILocation(line: 290, column: 5, scope: !4469)
!4469 = !DILexicalBlockFile(scope: !4457, file: !511, discriminator: 1)
!4470 = !DILocation(line: 290, column: 5, scope: !4457)
!4471 = !DILocation(line: 291, column: 1, scope: !4438)
!4472 = distinct !DISubprogram(name: "fd_writeback_init", scope: !511, file: !511, line: 66, type: !4473, isLocal: true, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !564)
!4473 = !DISubroutineType(types: !4474)
!4474 = !{null, !277}
!4475 = !DILocalVariable(name: "fd", arg: 1, scope: !4472, file: !511, line: 66, type: !277)
!4476 = !DILocation(line: 66, column: 23, scope: !4472)
!4477 = !DILocation(line: 72, column: 19, scope: !4472)
!4478 = !DILocation(line: 72, column: 3, scope: !4472)
!4479 = !DILocation(line: 76, column: 1, scope: !4472)
