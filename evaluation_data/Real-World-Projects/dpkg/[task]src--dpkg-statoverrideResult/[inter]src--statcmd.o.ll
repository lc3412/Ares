; ModuleID = './[inter]src--statcmd.o.i'
source_filename = "./[inter]src--statcmd.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cmdinfo = type { i8*, i8, i32, i32*, i8**, void (%struct.cmdinfo*, i8*)*, i32, i8*, i32 (i8**)* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.file_stat = type { i32, i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.varbuf = type { i64, i64, i8* }
%struct.fsys_hash_iter = type opaque
%struct.fsys_namenode = type { %struct.fsys_namenode*, i8*, %struct.pkg_list*, %struct.fsys_diversion*, %struct.file_stat*, %struct.trigfileint*, i32, i8*, i8*, %struct.file_ondisk_id* }
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
%struct.fsys_diversion = type { %struct.fsys_namenode*, %struct.fsys_namenode*, %struct.pkgset*, %struct.fsys_diversion* }
%struct.trigfileint = type opaque
%struct.file_ondisk_id = type { i64, i64 }
%struct.glob_node = type { %struct.glob_node*, i8* }
%struct.atomic_file = type { i32, i8*, i8*, %struct._IO_FILE* }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.group = type { i8*, i8*, i32, i8** }

@.str = private unnamed_addr constant [5 x i8] c"dpkg\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"dpkg-statoverride\00", align 1
@cmdinfos = internal constant [15 x %struct.cmdinfo] [%struct.cmdinfo { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8 0, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 3, i8* null, i32 (i8**)* @statoverride_add }, %struct.cmdinfo { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8 0, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 5, i8* null, i32 (i8**)* @statoverride_remove }, %struct.cmdinfo { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8 0, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 11, i8* null, i32 (i8**)* @statoverride_list }, %struct.cmdinfo { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8 0, i32 1, i32* null, i8** @admindir, void (%struct.cmdinfo*, i8*)* null, i32 0, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8 0, i32 1, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @set_instdir, i32 0, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8 0, i32 1, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @set_root, i32 0, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i8 0, i32 0, i32* @opt_verbose, i8** null, void (%struct.cmdinfo*, i8*)* null, i32 0, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8 0, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @set_force_obsolete, i32 0, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8 0, i32 2, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @set_force_option, i32 1, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i8 0, i32 2, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @set_force_option, i32 0, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i8 0, i32 2, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @set_force_option, i32 0, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i8 0, i32 0, i32* @opt_update, i8** null, void (%struct.cmdinfo*, i8*)* null, i32 1, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8 63, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @usage, i32 0, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i8 0, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @printversion, i32 0, i8* null, i32 (i8**)* null }, %struct.cmdinfo zeroinitializer], align 16
@printforhelp = internal constant [60 x i8] c"Use --help for help about overriding file stat information.\00", align 16
@admindir = internal global i8* null, align 8
@instdir = common global i8* null, align 8
@cipaction = external global %struct.cmdinfo*, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"need an action option\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"admindir\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"instdir\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@opt_verbose = internal global i32 1, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"no-force\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"refuse\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"update\00", align 1
@opt_update = internal global i32 0, align 4
@.str.14 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"--%s needs four arguments\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"path may not contain newlines\00", align 1
@.str.18 = private unnamed_addr constant [78 x i8] c"an override for '%s' already exists, but --force specified so will be ignored\00", align 1
@.str.19 = private unnamed_addr constant [46 x i8] c"an override for '%s' already exists; aborting\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"--update given but %s does not exist\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"stripping trailing /\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"user '%s' does not exist\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"group '%s' does not exist\00", align 1
@.str.24 = private unnamed_addr constant [36 x i8] c"error setting ownership of '%.255s'\00", align 1
@.str.25 = private unnamed_addr constant [38 x i8] c"error setting permissions of '%.255s'\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"statoverride\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"#%d \00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"%o %s\0A\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"--%s needs a single argument\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"no override present\00", align 1
@.str.32 = private unnamed_addr constant [33 x i8] c"--update is useless for --remove\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.34 = private unnamed_addr constant [24 x i8] c"/usr/local/var/lib/dpkg\00", align 1
@.str.35 = private unnamed_addr constant [41 x i8] c"deprecated --%s option; use --%s instead\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"force-all\00", align 1
@.str.37 = private unnamed_addr constant [37 x i8] c"Usage: %s [<option> ...] <command>\0A\0A\00", align 1
@.str.38 = private unnamed_addr constant [246 x i8] c"Commands:\0A  --add <owner> <group> <mode> <path>\0A                           add a new <path> entry into the database.\0A  --remove <path>          remove <path> from the database.\0A  --list [<glob-pattern>]  list current overrides in the database.\0A\0A\00", align 1
@.str.39 = private unnamed_addr constant [668 x i8] c"Options:\0A  --admindir <directory>   set the directory with the statoverride file.\0A  --instdir <directory>    set the root directory, but not the admin dir.\0A  --root <directory>       set the directory of the root filesystem.\0A  --update                 immediately update <path> permissions.\0A  --force                  deprecated alias for --force-all.\0A  --force-...              override problems (see --force-help).\0A  --no-force-...           stop when problems encountered.\0A  --refuse-...             ditto.\0A  --quiet                  quiet operation, minimal output.\0A  --help                   show this help message.\0A  --version                show the version.\0A\0A\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"<standard output>\00", align 1
@.str.41 = private unnamed_addr constant [23 x i8] c"Debian %s version %s.\0A\00", align 1
@.str.42 = private unnamed_addr constant [25 x i8] c"1.19.5-19-g1da50 (amd64)\00", align 1
@.str.43 = private unnamed_addr constant [124 x i8] c"This is free software; see the GNU General Public License version 2 or\0Alater for copying conditions. There is NO warranty.\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32, i8**) #0 !dbg !198 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !202, metadata !203), !dbg !204
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !205, metadata !203), !dbg !206
  call void @llvm.dbg.declare(metadata i32* %6, metadata !207, metadata !203), !dbg !208
  call void @dpkg_locales_init(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)), !dbg !209
  call void @dpkg_program_init(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0)), !dbg !210
  call void @set_force_default(i32 117440512), !dbg !211
  call void @dpkg_options_parse(i8*** %5, %struct.cmdinfo* getelementptr inbounds ([15 x %struct.cmdinfo], [15 x %struct.cmdinfo]* @cmdinfos, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @printforhelp, i32 0, i32 0)), !dbg !212
  %7 = load i8*, i8** @admindir, align 8, !dbg !213
  %8 = call i8* @dpkg_db_set_dir(i8* %7), !dbg !214
  store i8* %8, i8** @admindir, align 8, !dbg !215
  %9 = load i8*, i8** @instdir, align 8, !dbg !216
  %10 = call i8* @dpkg_fsys_set_dir(i8* %9), !dbg !217
  store i8* %10, i8** @instdir, align 8, !dbg !218
  %11 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !219
  %12 = icmp ne %struct.cmdinfo* %11, null, !dbg !219
  br i1 %12, label %15, label %13, !dbg !221

; <label>:13:                                     ; preds = %2
  %14 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0)) #9, !dbg !222
  call void (i8*, ...) @badusage(i8* %14) #10, !dbg !223
  unreachable, !dbg !225

; <label>:15:                                     ; preds = %2
  call void @fsys_hash_init(), !dbg !226
  call void @ensure_statoverrides(i32 1), !dbg !227
  %16 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !228
  %17 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %16, i32 0, i32 8, !dbg !229
  %18 = load i32 (i8**)*, i32 (i8**)** %17, align 8, !dbg !229
  %19 = load i8**, i8*** %5, align 8, !dbg !230
  %20 = call i32 %18(i8** %19), !dbg !228
  store i32 %20, i32* %6, align 4, !dbg !231
  call void @dpkg_program_done(), !dbg !232
  %21 = load i32, i32* %6, align 4, !dbg !233
  ret i32 %21, !dbg !234
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @dpkg_locales_init(i8*) #2

declare void @dpkg_program_init(i8*) #2

declare void @set_force_default(i32) #2

declare void @dpkg_options_parse(i8***, %struct.cmdinfo*, i8*) #2

declare i8* @dpkg_db_set_dir(i8*) #2

declare i8* @dpkg_fsys_set_dir(i8*) #2

; Function Attrs: noreturn
declare void @badusage(i8*, ...) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare void @fsys_hash_init() #2

declare void @ensure_statoverrides(i32) #2

declare void @dpkg_program_done() #2

declare void @setaction(%struct.cmdinfo*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @statoverride_add(i8**) #0 !dbg !235 {
  %2 = alloca i8**, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.file_stat**, align 8
  %9 = alloca %struct.stat, align 8
  %10 = alloca %struct.varbuf, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !236, metadata !203), !dbg !237
  call void @llvm.dbg.declare(metadata i8** %3, metadata !238, metadata !203), !dbg !239
  %11 = load i8**, i8*** %2, align 8, !dbg !240
  %12 = getelementptr inbounds i8*, i8** %11, i64 0, !dbg !240
  %13 = load i8*, i8** %12, align 8, !dbg !240
  store i8* %13, i8** %3, align 8, !dbg !239
  call void @llvm.dbg.declare(metadata i8** %4, metadata !241, metadata !203), !dbg !242
  %14 = load i8**, i8*** %2, align 8, !dbg !243
  %15 = getelementptr inbounds i8*, i8** %14, i64 1, !dbg !243
  %16 = load i8*, i8** %15, align 8, !dbg !243
  store i8* %16, i8** %4, align 8, !dbg !242
  call void @llvm.dbg.declare(metadata i8** %5, metadata !244, metadata !203), !dbg !245
  %17 = load i8**, i8*** %2, align 8, !dbg !246
  %18 = getelementptr inbounds i8*, i8** %17, i64 2, !dbg !246
  %19 = load i8*, i8** %18, align 8, !dbg !246
  store i8* %19, i8** %5, align 8, !dbg !245
  call void @llvm.dbg.declare(metadata i8** %6, metadata !247, metadata !203), !dbg !248
  %20 = load i8**, i8*** %2, align 8, !dbg !249
  %21 = getelementptr inbounds i8*, i8** %20, i64 3, !dbg !249
  %22 = load i8*, i8** %21, align 8, !dbg !249
  store i8* %22, i8** %6, align 8, !dbg !248
  call void @llvm.dbg.declare(metadata i8** %7, metadata !250, metadata !203), !dbg !252
  call void @llvm.dbg.declare(metadata %struct.file_stat*** %8, metadata !253, metadata !203), !dbg !266
  %23 = load i8*, i8** %3, align 8, !dbg !267
  %24 = icmp ne i8* %23, null, !dbg !267
  br i1 %24, label %25, label %39, !dbg !269

; <label>:25:                                     ; preds = %1
  %26 = load i8*, i8** %4, align 8, !dbg !270
  %27 = icmp ne i8* %26, null, !dbg !270
  br i1 %27, label %28, label %39, !dbg !272

; <label>:28:                                     ; preds = %25
  %29 = load i8*, i8** %5, align 8, !dbg !273
  %30 = icmp ne i8* %29, null, !dbg !273
  br i1 %30, label %31, label %39, !dbg !275

; <label>:31:                                     ; preds = %28
  %32 = load i8*, i8** %6, align 8, !dbg !276
  %33 = icmp ne i8* %32, null, !dbg !276
  br i1 %33, label %34, label %39, !dbg !278

; <label>:34:                                     ; preds = %31
  %35 = load i8**, i8*** %2, align 8, !dbg !279
  %36 = getelementptr inbounds i8*, i8** %35, i64 4, !dbg !279
  %37 = load i8*, i8** %36, align 8, !dbg !279
  %38 = icmp ne i8* %37, null, !dbg !279
  br i1 %38, label %39, label %44, !dbg !281

; <label>:39:                                     ; preds = %34, %31, %28, %25, %1
  %40 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i32 0, i32 0)) #9, !dbg !282
  %41 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !283
  %42 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %41, i32 0, i32 0, !dbg !284
  %43 = load i8*, i8** %42, align 8, !dbg !284
  call void (i8*, ...) @badusage(i8* %40, i8* %43) #10, !dbg !285
  unreachable, !dbg !286

; <label>:44:                                     ; preds = %34
  %45 = load i8*, i8** %6, align 8, !dbg !287
  %46 = call i8* @strchr(i8* %45, i32 10) #11, !dbg !289
  %47 = icmp ne i8* %46, null, !dbg !289
  br i1 %47, label %48, label %50, !dbg !290

; <label>:48:                                     ; preds = %44
  %49 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i32 0, i32 0)) #9, !dbg !291
  call void (i8*, ...) @badusage(i8* %49) #10, !dbg !292
  unreachable, !dbg !294

; <label>:50:                                     ; preds = %44
  %51 = load i8*, i8** %6, align 8, !dbg !295
  %52 = call i8* @path_cleanup(i8* %51), !dbg !296
  store i8* %52, i8** %7, align 8, !dbg !297
  %53 = load i8*, i8** %7, align 8, !dbg !298
  %54 = call %struct.file_stat** @statdb_node_find(i8* %53), !dbg !299
  store %struct.file_stat** %54, %struct.file_stat*** %8, align 8, !dbg !300
  %55 = load %struct.file_stat**, %struct.file_stat*** %8, align 8, !dbg !301
  %56 = load %struct.file_stat*, %struct.file_stat** %55, align 8, !dbg !303
  %57 = icmp ne %struct.file_stat* %56, null, !dbg !304
  br i1 %57, label %58, label %67, !dbg !305

; <label>:58:                                     ; preds = %50
  %59 = call zeroext i1 @in_force(i32 16777216), !dbg !306
  br i1 %59, label %60, label %63, !dbg !309

; <label>:60:                                     ; preds = %58
  %61 = call i8* @gettext(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.18, i32 0, i32 0)) #9, !dbg !310
  %62 = load i8*, i8** %7, align 8, !dbg !311
  call void (i8*, ...) @warning(i8* %61, i8* %62), !dbg !312
  br label %66, !dbg !314

; <label>:63:                                     ; preds = %58
  %64 = call i8* @gettext(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.19, i32 0, i32 0)) #9, !dbg !315
  %65 = load i8*, i8** %7, align 8, !dbg !316
  call void (i8*, ...) @ohshit(i8* %64, i8* %65) #10, !dbg !317
  unreachable, !dbg !318

; <label>:66:                                     ; preds = %60
  br label %67, !dbg !319

; <label>:67:                                     ; preds = %66, %50
  %68 = load i8*, i8** %3, align 8, !dbg !320
  %69 = load i8*, i8** %4, align 8, !dbg !321
  %70 = load i8*, i8** %5, align 8, !dbg !322
  %71 = call %struct.file_stat* @statdb_node_new(i8* %68, i8* %69, i8* %70), !dbg !323
  %72 = load %struct.file_stat**, %struct.file_stat*** %8, align 8, !dbg !324
  store %struct.file_stat* %71, %struct.file_stat** %72, align 8, !dbg !325
  %73 = load i32, i32* @opt_update, align 4, !dbg !326
  %74 = icmp ne i32 %73, 0, !dbg !326
  br i1 %74, label %75, label %109, !dbg !328

; <label>:75:                                     ; preds = %67
  call void @llvm.dbg.declare(metadata %struct.stat* %9, metadata !329, metadata !203), !dbg !367
  call void @llvm.dbg.declare(metadata %struct.varbuf* %10, metadata !368, metadata !203), !dbg !377
  %76 = bitcast %struct.varbuf* %10 to i8*, !dbg !377
  call void @llvm.memset.p0i8.i64(i8* %76, i8 0, i64 24, i32 8, i1 false), !dbg !377
  %77 = load i8*, i8** @instdir, align 8, !dbg !378
  %78 = load i8*, i8** @instdir, align 8, !dbg !379
  %79 = call i64 @strlen(i8* %78) #11, !dbg !380
  call void @varbuf_add_buf(%struct.varbuf* %10, i8* %77, i64 %79), !dbg !381
  %80 = load i8*, i8** %7, align 8, !dbg !383
  %81 = load i8*, i8** %7, align 8, !dbg !384
  %82 = call i64 @strlen(i8* %81) #11, !dbg !385
  call void @varbuf_add_buf(%struct.varbuf* %10, i8* %80, i64 %82), !dbg !386
  call void @varbuf_end_str(%struct.varbuf* %10), !dbg !387
  %83 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %10, i32 0, i32 2, !dbg !388
  %84 = load i8*, i8** %83, align 8, !dbg !388
  %85 = call i32 @stat(i8* %84, %struct.stat* %9) #9, !dbg !390
  %86 = icmp eq i32 %85, 0, !dbg !391
  br i1 %86, label %87, label %100, !dbg !392

; <label>:87:                                     ; preds = %75
  %88 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 3, !dbg !393
  %89 = load i32, i32* %88, align 8, !dbg !393
  %90 = and i32 %89, 61440, !dbg !395
  %91 = load %struct.file_stat**, %struct.file_stat*** %8, align 8, !dbg !396
  %92 = load %struct.file_stat*, %struct.file_stat** %91, align 8, !dbg !397
  %93 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %92, i32 0, i32 2, !dbg !398
  %94 = load i32, i32* %93, align 8, !dbg !399
  %95 = or i32 %94, %90, !dbg !399
  store i32 %95, i32* %93, align 8, !dbg !399
  %96 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %10, i32 0, i32 2, !dbg !400
  %97 = load i8*, i8** %96, align 8, !dbg !400
  %98 = load %struct.file_stat**, %struct.file_stat*** %8, align 8, !dbg !401
  %99 = load %struct.file_stat*, %struct.file_stat** %98, align 8, !dbg !402
  call void @statdb_node_apply(i8* %97, %struct.file_stat* %99), !dbg !403
  br label %108, !dbg !404

; <label>:100:                                    ; preds = %75
  %101 = load i32, i32* @opt_verbose, align 4, !dbg !405
  %102 = icmp ne i32 %101, 0, !dbg !405
  br i1 %102, label %103, label %107, !dbg !405

; <label>:103:                                    ; preds = %100
  %104 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i32 0, i32 0)) #9, !dbg !408
  %105 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %10, i32 0, i32 2, !dbg !410
  %106 = load i8*, i8** %105, align 8, !dbg !410
  call void (i8*, ...) @warning(i8* %104, i8* %106), !dbg !411
  br label %107, !dbg !413

; <label>:107:                                    ; preds = %103, %100
  br label %108

; <label>:108:                                    ; preds = %107, %87
  call void @varbuf_destroy(%struct.varbuf* %10), !dbg !414
  br label %109, !dbg !415

; <label>:109:                                    ; preds = %108, %67
  call void @statdb_write(), !dbg !416
  %110 = load i8*, i8** %7, align 8, !dbg !417
  call void @free(i8* %110) #9, !dbg !418
  ret i32 0, !dbg !419
}

; Function Attrs: nounwind uwtable
define internal i32 @statoverride_remove(i8**) #0 !dbg !420 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !421, metadata !203), !dbg !422
  call void @llvm.dbg.declare(metadata i8** %4, metadata !423, metadata !203), !dbg !424
  %6 = load i8**, i8*** %3, align 8, !dbg !425
  %7 = getelementptr inbounds i8*, i8** %6, i64 0, !dbg !425
  %8 = load i8*, i8** %7, align 8, !dbg !425
  store i8* %8, i8** %4, align 8, !dbg !424
  call void @llvm.dbg.declare(metadata i8** %5, metadata !426, metadata !203), !dbg !427
  %9 = load i8*, i8** %4, align 8, !dbg !428
  %10 = icmp ne i8* %9, null, !dbg !428
  br i1 %10, label %11, label %16, !dbg !430

; <label>:11:                                     ; preds = %1
  %12 = load i8**, i8*** %3, align 8, !dbg !431
  %13 = getelementptr inbounds i8*, i8** %12, i64 1, !dbg !431
  %14 = load i8*, i8** %13, align 8, !dbg !431
  %15 = icmp ne i8* %14, null, !dbg !431
  br i1 %15, label %16, label %18, !dbg !433

; <label>:16:                                     ; preds = %11, %1
  %17 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.30, i32 0, i32 0)) #9, !dbg !434
  call void (i8*, ...) @badusage(i8* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0)) #10, !dbg !435
  unreachable, !dbg !436

; <label>:18:                                     ; preds = %11
  %19 = load i8*, i8** %4, align 8, !dbg !437
  %20 = call i8* @path_cleanup(i8* %19), !dbg !438
  store i8* %20, i8** %5, align 8, !dbg !439
  %21 = load i8*, i8** %5, align 8, !dbg !440
  %22 = call i32 @statdb_node_remove(i8* %21), !dbg !442
  %23 = icmp ne i32 %22, 0, !dbg !442
  br i1 %23, label %33, label %24, !dbg !443

; <label>:24:                                     ; preds = %18
  %25 = load i32, i32* @opt_verbose, align 4, !dbg !444
  %26 = icmp ne i32 %25, 0, !dbg !444
  br i1 %26, label %27, label %29, !dbg !447

; <label>:27:                                     ; preds = %24
  %28 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.31, i32 0, i32 0)) #9, !dbg !448
  call void (i8*, ...) @warning(i8* %28), !dbg !449
  br label %29, !dbg !451

; <label>:29:                                     ; preds = %27, %24
  %30 = call zeroext i1 @in_force(i32 33554432), !dbg !452
  br i1 %30, label %31, label %32, !dbg !454

; <label>:31:                                     ; preds = %29
  store i32 0, i32* %2, align 4, !dbg !455
  br label %43, !dbg !455

; <label>:32:                                     ; preds = %29
  store i32 2, i32* %2, align 4, !dbg !456
  br label %43, !dbg !456

; <label>:33:                                     ; preds = %18
  %34 = load i32, i32* @opt_update, align 4, !dbg !457
  %35 = icmp ne i32 %34, 0, !dbg !457
  br i1 %35, label %36, label %41, !dbg !459

; <label>:36:                                     ; preds = %33
  %37 = load i32, i32* @opt_verbose, align 4, !dbg !460
  %38 = icmp ne i32 %37, 0, !dbg !460
  br i1 %38, label %39, label %41, !dbg !462

; <label>:39:                                     ; preds = %36
  %40 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.32, i32 0, i32 0)) #9, !dbg !463
  call void (i8*, ...) @warning(i8* %40), !dbg !464
  br label %41, !dbg !465

; <label>:41:                                     ; preds = %39, %36, %33
  call void @statdb_write(), !dbg !466
  %42 = load i8*, i8** %5, align 8, !dbg !467
  call void @free(i8* %42) #9, !dbg !468
  store i32 0, i32* %2, align 4, !dbg !469
  br label %43, !dbg !469

; <label>:43:                                     ; preds = %41, %32, %31
  %44 = load i32, i32* %2, align 4, !dbg !470
  ret i32 %44, !dbg !470
}

; Function Attrs: nounwind uwtable
define internal i32 @statoverride_list(i8**) #0 !dbg !471 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.fsys_hash_iter*, align 8
  %4 = alloca %struct.fsys_namenode*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.glob_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.glob_node*, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !472, metadata !203), !dbg !473
  call void @llvm.dbg.declare(metadata %struct.fsys_hash_iter** %3, metadata !474, metadata !203), !dbg !477
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %4, metadata !478, metadata !203), !dbg !655
  call void @llvm.dbg.declare(metadata i8** %5, metadata !656, metadata !203), !dbg !657
  call void @llvm.dbg.declare(metadata %struct.glob_node** %6, metadata !658, metadata !203), !dbg !665
  store %struct.glob_node* null, %struct.glob_node** %6, align 8, !dbg !665
  call void @llvm.dbg.declare(metadata i32* %7, metadata !666, metadata !203), !dbg !667
  store i32 1, i32* %7, align 4, !dbg !667
  br label %10, !dbg !668

; <label>:10:                                     ; preds = %15, %1
  %11 = load i8**, i8*** %2, align 8, !dbg !669
  %12 = getelementptr inbounds i8*, i8** %11, i32 1, !dbg !669
  store i8** %12, i8*** %2, align 8, !dbg !669
  %13 = load i8*, i8** %11, align 8, !dbg !671
  store i8* %13, i8** %5, align 8, !dbg !672
  %14 = icmp ne i8* %13, null, !dbg !673
  br i1 %14, label %15, label %19, !dbg !673

; <label>:15:                                     ; preds = %10
  call void @llvm.dbg.declare(metadata i8** %8, metadata !674, metadata !203), !dbg !676
  %16 = load i8*, i8** %5, align 8, !dbg !677
  %17 = call i8* @path_cleanup(i8* %16), !dbg !678
  store i8* %17, i8** %8, align 8, !dbg !676
  %18 = load i8*, i8** %8, align 8, !dbg !679
  call void @glob_list_prepend(%struct.glob_node** %6, i8* %18), !dbg !680
  br label %10, !dbg !681, !llvm.loop !683

; <label>:19:                                     ; preds = %10
  %20 = load %struct.glob_node*, %struct.glob_node** %6, align 8, !dbg !684
  %21 = icmp eq %struct.glob_node* %20, null, !dbg !686
  br i1 %21, label %22, label %24, !dbg !687

; <label>:22:                                     ; preds = %19
  %23 = call i8* @m_strdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i32 0, i32 0)), !dbg !688
  call void @glob_list_prepend(%struct.glob_node** %6, i8* %23), !dbg !689
  br label %24, !dbg !691

; <label>:24:                                     ; preds = %22, %19
  %25 = call %struct.fsys_hash_iter* @fsys_hash_iter_new(), !dbg !692
  store %struct.fsys_hash_iter* %25, %struct.fsys_hash_iter** %3, align 8, !dbg !693
  br label %26, !dbg !694

; <label>:26:                                     ; preds = %52, %24
  %27 = load %struct.fsys_hash_iter*, %struct.fsys_hash_iter** %3, align 8, !dbg !695
  %28 = call %struct.fsys_namenode* @fsys_hash_iter_next(%struct.fsys_hash_iter* %27), !dbg !696
  store %struct.fsys_namenode* %28, %struct.fsys_namenode** %4, align 8, !dbg !697
  %29 = icmp ne %struct.fsys_namenode* %28, null, !dbg !698
  br i1 %29, label %30, label %53, !dbg !698

; <label>:30:                                     ; preds = %26
  call void @llvm.dbg.declare(metadata %struct.glob_node** %9, metadata !699, metadata !203), !dbg !701
  %31 = load %struct.glob_node*, %struct.glob_node** %6, align 8, !dbg !702
  store %struct.glob_node* %31, %struct.glob_node** %9, align 8, !dbg !704
  br label %32, !dbg !705

; <label>:32:                                     ; preds = %48, %30
  %33 = load %struct.glob_node*, %struct.glob_node** %9, align 8, !dbg !706
  %34 = icmp ne %struct.glob_node* %33, null, !dbg !709
  br i1 %34, label %35, label %52, !dbg !709

; <label>:35:                                     ; preds = %32
  %36 = load %struct.glob_node*, %struct.glob_node** %9, align 8, !dbg !710
  %37 = getelementptr inbounds %struct.glob_node, %struct.glob_node* %36, i32 0, i32 1, !dbg !713
  %38 = load i8*, i8** %37, align 8, !dbg !713
  %39 = load %struct.fsys_namenode*, %struct.fsys_namenode** %4, align 8, !dbg !714
  %40 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %39, i32 0, i32 1, !dbg !715
  %41 = load i8*, i8** %40, align 8, !dbg !715
  %42 = call i32 @fnmatch(i8* %38, i8* %41, i32 0), !dbg !716
  %43 = icmp eq i32 %42, 0, !dbg !717
  br i1 %43, label %44, label %47, !dbg !718

; <label>:44:                                     ; preds = %35
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !719
  %46 = load %struct.fsys_namenode*, %struct.fsys_namenode** %4, align 8, !dbg !721
  call void @statdb_node_print(%struct._IO_FILE* %45, %struct.fsys_namenode* %46), !dbg !722
  store i32 0, i32* %7, align 4, !dbg !723
  br label %52, !dbg !724

; <label>:47:                                     ; preds = %35
  br label %48, !dbg !725

; <label>:48:                                     ; preds = %47
  %49 = load %struct.glob_node*, %struct.glob_node** %9, align 8, !dbg !726
  %50 = getelementptr inbounds %struct.glob_node, %struct.glob_node* %49, i32 0, i32 0, !dbg !728
  %51 = load %struct.glob_node*, %struct.glob_node** %50, align 8, !dbg !728
  store %struct.glob_node* %51, %struct.glob_node** %9, align 8, !dbg !729
  br label %32, !dbg !730, !llvm.loop !731

; <label>:52:                                     ; preds = %44, %32
  br label %26, !dbg !733, !llvm.loop !734

; <label>:53:                                     ; preds = %26
  %54 = load %struct.fsys_hash_iter*, %struct.fsys_hash_iter** %3, align 8, !dbg !735
  call void @fsys_hash_iter_free(%struct.fsys_hash_iter* %54), !dbg !736
  %55 = load %struct.glob_node*, %struct.glob_node** %6, align 8, !dbg !737
  call void @glob_list_free(%struct.glob_node* %55), !dbg !738
  %56 = load i32, i32* %7, align 4, !dbg !739
  ret i32 %56, !dbg !740
}

; Function Attrs: nounwind uwtable
define internal void @set_instdir(%struct.cmdinfo*, i8*) #0 !dbg !741 {
  %3 = alloca %struct.cmdinfo*, align 8
  %4 = alloca i8*, align 8
  store %struct.cmdinfo* %0, %struct.cmdinfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.cmdinfo** %3, metadata !742, metadata !203), !dbg !743
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !744, metadata !203), !dbg !745
  %5 = load i8*, i8** %4, align 8, !dbg !746
  %6 = call i8* @dpkg_fsys_set_dir(i8* %5), !dbg !747
  store i8* %6, i8** @instdir, align 8, !dbg !748
  ret void, !dbg !749
}

; Function Attrs: nounwind uwtable
define internal void @set_root(%struct.cmdinfo*, i8*) #0 !dbg !750 {
  %3 = alloca %struct.cmdinfo*, align 8
  %4 = alloca i8*, align 8
  store %struct.cmdinfo* %0, %struct.cmdinfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.cmdinfo** %3, metadata !751, metadata !203), !dbg !752
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !753, metadata !203), !dbg !754
  %5 = load i8*, i8** %4, align 8, !dbg !755
  %6 = call i8* @dpkg_fsys_set_dir(i8* %5), !dbg !756
  store i8* %6, i8** @instdir, align 8, !dbg !757
  %7 = call i8* @dpkg_fsys_get_path(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.34, i32 0, i32 0)), !dbg !758
  store i8* %7, i8** @admindir, align 8, !dbg !759
  ret void, !dbg !760
}

; Function Attrs: nounwind uwtable
define internal void @set_force_obsolete(%struct.cmdinfo*, i8*) #0 !dbg !761 {
  %3 = alloca %struct.cmdinfo*, align 8
  %4 = alloca i8*, align 8
  store %struct.cmdinfo* %0, %struct.cmdinfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.cmdinfo** %3, metadata !762, metadata !203), !dbg !763
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !764, metadata !203), !dbg !765
  %5 = call i8* @gettext(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.35, i32 0, i32 0)) #9, !dbg !766
  %6 = load %struct.cmdinfo*, %struct.cmdinfo** %3, align 8, !dbg !767
  %7 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %6, i32 0, i32 0, !dbg !768
  %8 = load i8*, i8** %7, align 8, !dbg !768
  call void (i8*, ...) @warning(i8* %5, i8* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0)), !dbg !769
  call void @set_force(i32 -1), !dbg !771
  ret void, !dbg !772
}

declare void @set_force_option(%struct.cmdinfo*, i8*) #2

; Function Attrs: noreturn nounwind uwtable
define internal void @usage(%struct.cmdinfo*, i8*) #5 !dbg !773 {
  %3 = alloca %struct.cmdinfo*, align 8
  %4 = alloca i8*, align 8
  store %struct.cmdinfo* %0, %struct.cmdinfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.cmdinfo** %3, metadata !774, metadata !203), !dbg !775
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !776, metadata !203), !dbg !777
  %5 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.37, i32 0, i32 0)) #9, !dbg !778
  %6 = call i8* @dpkg_get_progname(), !dbg !779
  %7 = call i32 (i8*, ...) @printf(i8* %5, i8* %6), !dbg !780
  %8 = call i8* @gettext(i8* getelementptr inbounds ([246 x i8], [246 x i8]* @.str.38, i32 0, i32 0)) #9, !dbg !782
  %9 = call i32 (i8*, ...) @printf(i8* %8), !dbg !783
  %10 = call i8* @gettext(i8* getelementptr inbounds ([668 x i8], [668 x i8]* @.str.39, i32 0, i32 0)) #9, !dbg !784
  %11 = call i32 (i8*, ...) @printf(i8* %10), !dbg !785
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !786
  %13 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.40, i32 0, i32 0)) #9, !dbg !787
  call void @m_output(%struct._IO_FILE* %12, i8* %13), !dbg !788
  call void @exit(i32 0) #12, !dbg !789
  unreachable, !dbg !789
                                                  ; No predecessors!
  ret void, !dbg !790
}

; Function Attrs: noreturn nounwind uwtable
define internal void @printversion(%struct.cmdinfo*, i8*) #5 !dbg !791 {
  %3 = alloca %struct.cmdinfo*, align 8
  %4 = alloca i8*, align 8
  store %struct.cmdinfo* %0, %struct.cmdinfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.cmdinfo** %3, metadata !792, metadata !203), !dbg !793
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !794, metadata !203), !dbg !795
  %5 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.41, i32 0, i32 0)) #9, !dbg !796
  %6 = call i8* @dpkg_get_progname(), !dbg !797
  %7 = call i32 (i8*, ...) @printf(i8* %5, i8* %6, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i32 0, i32 0)), !dbg !799
  %8 = call i8* @gettext(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.43, i32 0, i32 0)) #9, !dbg !801
  %9 = call i32 (i8*, ...) @printf(i8* %8), !dbg !802
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !803
  %11 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.40, i32 0, i32 0)) #9, !dbg !804
  call void @m_output(%struct._IO_FILE* %10, i8* %11), !dbg !805
  call void @exit(i32 0) #12, !dbg !806
  unreachable, !dbg !806
                                                  ; No predecessors!
  ret void, !dbg !807
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #6

; Function Attrs: nounwind uwtable
define internal i8* @path_cleanup(i8*) #0 !dbg !808 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !811, metadata !203), !dbg !812
  call void @llvm.dbg.declare(metadata i8** %3, metadata !813, metadata !203), !dbg !814
  %4 = load i8*, i8** %2, align 8, !dbg !815
  %5 = call i8* @m_strdup(i8* %4), !dbg !816
  store i8* %5, i8** %3, align 8, !dbg !814
  %6 = load i8*, i8** %3, align 8, !dbg !817
  %7 = call i64 @path_trim_slash_slashdot(i8* %6), !dbg !818
  %8 = load i32, i32* @opt_verbose, align 4, !dbg !819
  %9 = icmp ne i32 %8, 0, !dbg !819
  br i1 %9, label %10, label %17, !dbg !821

; <label>:10:                                     ; preds = %1
  %11 = load i8*, i8** %2, align 8, !dbg !822
  %12 = load i8*, i8** %3, align 8, !dbg !824
  %13 = call i32 @strcmp(i8* %11, i8* %12) #11, !dbg !825
  %14 = icmp ne i32 %13, 0, !dbg !826
  br i1 %14, label %15, label %17, !dbg !827

; <label>:15:                                     ; preds = %10
  %16 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i32 0, i32 0)) #9, !dbg !828
  call void (i8*, ...) @warning(i8* %16), !dbg !829
  br label %17, !dbg !830

; <label>:17:                                     ; preds = %15, %10, %1
  %18 = load i8*, i8** %3, align 8, !dbg !831
  ret i8* %18, !dbg !832
}

; Function Attrs: nounwind uwtable
define internal %struct.file_stat** @statdb_node_find(i8*) #0 !dbg !833 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.fsys_namenode*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !836, metadata !203), !dbg !837
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %3, metadata !838, metadata !203), !dbg !839
  %4 = load i8*, i8** %2, align 8, !dbg !840
  %5 = call %struct.fsys_namenode* @fsys_hash_find_node(i8* %4, i32 0), !dbg !841
  store %struct.fsys_namenode* %5, %struct.fsys_namenode** %3, align 8, !dbg !842
  %6 = load %struct.fsys_namenode*, %struct.fsys_namenode** %3, align 8, !dbg !843
  %7 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %6, i32 0, i32 4, !dbg !844
  ret %struct.file_stat** %7, !dbg !845
}

declare zeroext i1 @in_force(i32) #2

declare void @warning(i8*, ...) #2

; Function Attrs: noreturn
declare void @ohshit(i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal %struct.file_stat* @statdb_node_new(i8*, i8*, i8*) #0 !dbg !846 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.file_stat*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !849, metadata !203), !dbg !850
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !851, metadata !203), !dbg !852
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !853, metadata !203), !dbg !854
  call void @llvm.dbg.declare(metadata %struct.file_stat** %7, metadata !855, metadata !203), !dbg !856
  %8 = call i8* @nfmalloc(i64 32), !dbg !857
  %9 = bitcast i8* %8 to %struct.file_stat*, !dbg !857
  store %struct.file_stat* %9, %struct.file_stat** %7, align 8, !dbg !858
  %10 = load i8*, i8** %4, align 8, !dbg !859
  %11 = call i32 @statdb_parse_uid(i8* %10), !dbg !860
  %12 = load %struct.file_stat*, %struct.file_stat** %7, align 8, !dbg !861
  %13 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %12, i32 0, i32 0, !dbg !862
  store i32 %11, i32* %13, align 8, !dbg !863
  %14 = load %struct.file_stat*, %struct.file_stat** %7, align 8, !dbg !864
  %15 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %14, i32 0, i32 0, !dbg !866
  %16 = load i32, i32* %15, align 8, !dbg !866
  %17 = icmp eq i32 %16, -1, !dbg !867
  br i1 %17, label %18, label %21, !dbg !868

; <label>:18:                                     ; preds = %3
  %19 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i32 0, i32 0)) #9, !dbg !869
  %20 = load i8*, i8** %4, align 8, !dbg !870
  call void (i8*, ...) @ohshit(i8* %19, i8* %20) #10, !dbg !871
  unreachable, !dbg !873

; <label>:21:                                     ; preds = %3
  %22 = load %struct.file_stat*, %struct.file_stat** %7, align 8, !dbg !874
  %23 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %22, i32 0, i32 3, !dbg !875
  store i8* null, i8** %23, align 8, !dbg !876
  %24 = load i8*, i8** %5, align 8, !dbg !877
  %25 = call i32 @statdb_parse_gid(i8* %24), !dbg !878
  %26 = load %struct.file_stat*, %struct.file_stat** %7, align 8, !dbg !879
  %27 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %26, i32 0, i32 1, !dbg !880
  store i32 %25, i32* %27, align 4, !dbg !881
  %28 = load %struct.file_stat*, %struct.file_stat** %7, align 8, !dbg !882
  %29 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %28, i32 0, i32 1, !dbg !884
  %30 = load i32, i32* %29, align 4, !dbg !884
  %31 = icmp eq i32 %30, -1, !dbg !885
  br i1 %31, label %32, label %35, !dbg !886

; <label>:32:                                     ; preds = %21
  %33 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.23, i32 0, i32 0)) #9, !dbg !887
  %34 = load i8*, i8** %5, align 8, !dbg !888
  call void (i8*, ...) @ohshit(i8* %33, i8* %34) #10, !dbg !889
  unreachable, !dbg !891

; <label>:35:                                     ; preds = %21
  %36 = load %struct.file_stat*, %struct.file_stat** %7, align 8, !dbg !892
  %37 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %36, i32 0, i32 4, !dbg !893
  store i8* null, i8** %37, align 8, !dbg !894
  %38 = load i8*, i8** %6, align 8, !dbg !895
  %39 = call i32 @statdb_parse_mode(i8* %38), !dbg !896
  %40 = load %struct.file_stat*, %struct.file_stat** %7, align 8, !dbg !897
  %41 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %40, i32 0, i32 2, !dbg !898
  store i32 %39, i32* %41, align 8, !dbg !899
  %42 = load %struct.file_stat*, %struct.file_stat** %7, align 8, !dbg !900
  ret %struct.file_stat* %42, !dbg !901
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

declare void @varbuf_add_buf(%struct.varbuf*, i8*, i64) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #6

declare void @varbuf_end_str(%struct.varbuf*) #2

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #4

; Function Attrs: nounwind uwtable
define internal void @statdb_node_apply(i8*, %struct.file_stat*) #0 !dbg !902 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.file_stat*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !905, metadata !203), !dbg !906
  store %struct.file_stat* %1, %struct.file_stat** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.file_stat** %4, metadata !907, metadata !203), !dbg !908
  %5 = load i8*, i8** %3, align 8, !dbg !909
  %6 = load %struct.file_stat*, %struct.file_stat** %4, align 8, !dbg !911
  %7 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %6, i32 0, i32 0, !dbg !912
  %8 = load i32, i32* %7, align 8, !dbg !912
  %9 = load %struct.file_stat*, %struct.file_stat** %4, align 8, !dbg !913
  %10 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %9, i32 0, i32 1, !dbg !914
  %11 = load i32, i32* %10, align 4, !dbg !914
  %12 = call i32 @chown(i8* %5, i32 %8, i32 %11) #9, !dbg !915
  %13 = icmp slt i32 %12, 0, !dbg !916
  br i1 %13, label %14, label %17, !dbg !917

; <label>:14:                                     ; preds = %2
  %15 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.24, i32 0, i32 0)) #9, !dbg !918
  %16 = load i8*, i8** %3, align 8, !dbg !919
  call void (i8*, ...) @ohshite(i8* %15, i8* %16) #10, !dbg !920
  unreachable, !dbg !922

; <label>:17:                                     ; preds = %2
  %18 = load i8*, i8** %3, align 8, !dbg !923
  %19 = load %struct.file_stat*, %struct.file_stat** %4, align 8, !dbg !925
  %20 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %19, i32 0, i32 2, !dbg !926
  %21 = load i32, i32* %20, align 8, !dbg !926
  %22 = and i32 %21, -61441, !dbg !927
  %23 = call i32 @chmod(i8* %18, i32 %22) #9, !dbg !928
  %24 = icmp ne i32 %23, 0, !dbg !928
  br i1 %24, label %25, label %28, !dbg !929

; <label>:25:                                     ; preds = %17
  %26 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.25, i32 0, i32 0)) #9, !dbg !930
  %27 = load i8*, i8** %3, align 8, !dbg !931
  call void (i8*, ...) @ohshite(i8* %26, i8* %27) #10, !dbg !932
  unreachable, !dbg !934

; <label>:28:                                     ; preds = %17
  call void @dpkg_selabel_load(), !dbg !935
  %29 = load i8*, i8** %3, align 8, !dbg !936
  %30 = load i8*, i8** %3, align 8, !dbg !937
  %31 = load %struct.file_stat*, %struct.file_stat** %4, align 8, !dbg !938
  %32 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %31, i32 0, i32 2, !dbg !939
  %33 = load i32, i32* %32, align 8, !dbg !939
  call void @dpkg_selabel_set_context(i8* %29, i8* %30, i32 %33), !dbg !940
  call void @dpkg_selabel_close(), !dbg !941
  ret void, !dbg !942
}

declare void @varbuf_destroy(%struct.varbuf*) #2

; Function Attrs: nounwind uwtable
define internal void @statdb_write() #0 !dbg !943 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.atomic_file*, align 8
  %3 = alloca %struct.fsys_hash_iter*, align 8
  %4 = alloca %struct.fsys_namenode*, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !946, metadata !203), !dbg !947
  call void @llvm.dbg.declare(metadata %struct.atomic_file** %2, metadata !948, metadata !203), !dbg !1009
  call void @llvm.dbg.declare(metadata %struct.fsys_hash_iter** %3, metadata !1010, metadata !203), !dbg !1011
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %4, metadata !1012, metadata !203), !dbg !1013
  %5 = call i8* @dpkg_db_get_path(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0)), !dbg !1014
  store i8* %5, i8** %1, align 8, !dbg !1015
  %6 = load i8*, i8** %1, align 8, !dbg !1016
  %7 = call %struct.atomic_file* @atomic_file_new(i8* %6, i32 1), !dbg !1017
  store %struct.atomic_file* %7, %struct.atomic_file** %2, align 8, !dbg !1018
  %8 = load %struct.atomic_file*, %struct.atomic_file** %2, align 8, !dbg !1019
  call void @atomic_file_open(%struct.atomic_file* %8), !dbg !1020
  %9 = call %struct.fsys_hash_iter* @fsys_hash_iter_new(), !dbg !1021
  store %struct.fsys_hash_iter* %9, %struct.fsys_hash_iter** %3, align 8, !dbg !1022
  br label %10, !dbg !1023

; <label>:10:                                     ; preds = %14, %0
  %11 = load %struct.fsys_hash_iter*, %struct.fsys_hash_iter** %3, align 8, !dbg !1024
  %12 = call %struct.fsys_namenode* @fsys_hash_iter_next(%struct.fsys_hash_iter* %11), !dbg !1026
  store %struct.fsys_namenode* %12, %struct.fsys_namenode** %4, align 8, !dbg !1027
  %13 = icmp ne %struct.fsys_namenode* %12, null, !dbg !1028
  br i1 %13, label %14, label %19, !dbg !1028

; <label>:14:                                     ; preds = %10
  %15 = load %struct.atomic_file*, %struct.atomic_file** %2, align 8, !dbg !1029
  %16 = getelementptr inbounds %struct.atomic_file, %struct.atomic_file* %15, i32 0, i32 3, !dbg !1030
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %16, align 8, !dbg !1030
  %18 = load %struct.fsys_namenode*, %struct.fsys_namenode** %4, align 8, !dbg !1031
  call void @statdb_node_print(%struct._IO_FILE* %17, %struct.fsys_namenode* %18), !dbg !1032
  br label %10, !dbg !1033, !llvm.loop !1035

; <label>:19:                                     ; preds = %10
  %20 = load %struct.fsys_hash_iter*, %struct.fsys_hash_iter** %3, align 8, !dbg !1036
  call void @fsys_hash_iter_free(%struct.fsys_hash_iter* %20), !dbg !1037
  %21 = load %struct.atomic_file*, %struct.atomic_file** %2, align 8, !dbg !1038
  call void @atomic_file_sync(%struct.atomic_file* %21), !dbg !1039
  %22 = load %struct.atomic_file*, %struct.atomic_file** %2, align 8, !dbg !1040
  call void @atomic_file_close(%struct.atomic_file* %22), !dbg !1041
  %23 = load %struct.atomic_file*, %struct.atomic_file** %2, align 8, !dbg !1042
  call void @atomic_file_commit(%struct.atomic_file* %23), !dbg !1043
  %24 = load %struct.atomic_file*, %struct.atomic_file** %2, align 8, !dbg !1044
  call void @atomic_file_free(%struct.atomic_file* %24), !dbg !1045
  %25 = call i8* @dpkg_db_get_dir(), !dbg !1046
  call void @dir_sync_path(i8* %25), !dbg !1047
  %26 = load i8*, i8** %1, align 8, !dbg !1048
  call void @free(i8* %26) #9, !dbg !1049
  ret void, !dbg !1050
}

; Function Attrs: nounwind
declare void @free(i8*) #4

declare i8* @m_strdup(i8*) #2

declare i64 @path_trim_slash_slashdot(i8*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #6

declare %struct.fsys_namenode* @fsys_hash_find_node(i8*, i32) #2

declare i8* @nfmalloc(i64) #2

declare i32 @statdb_parse_uid(i8*) #2

declare i32 @statdb_parse_gid(i8*) #2

declare i32 @statdb_parse_mode(i8*) #2

; Function Attrs: nounwind
declare i32 @chown(i8*, i32, i32) #4

; Function Attrs: noreturn
declare void @ohshite(i8*, ...) #3

; Function Attrs: nounwind
declare i32 @chmod(i8*, i32) #4

declare void @dpkg_selabel_load() #2

declare void @dpkg_selabel_set_context(i8*, i8*, i32) #2

declare void @dpkg_selabel_close() #2

declare i8* @dpkg_db_get_path(i8*) #2

declare %struct.atomic_file* @atomic_file_new(i8*, i32) #2

declare void @atomic_file_open(%struct.atomic_file*) #2

declare %struct.fsys_hash_iter* @fsys_hash_iter_new() #2

declare %struct.fsys_namenode* @fsys_hash_iter_next(%struct.fsys_hash_iter*) #2

; Function Attrs: nounwind uwtable
define internal void @statdb_node_print(%struct._IO_FILE*, %struct.fsys_namenode*) #0 !dbg !1051 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca %struct.fsys_namenode*, align 8
  %5 = alloca %struct.file_stat*, align 8
  %6 = alloca %struct.passwd*, align 8
  %7 = alloca %struct.group*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !1054, metadata !203), !dbg !1055
  store %struct.fsys_namenode* %1, %struct.fsys_namenode** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %4, metadata !1056, metadata !203), !dbg !1057
  call void @llvm.dbg.declare(metadata %struct.file_stat** %5, metadata !1058, metadata !203), !dbg !1059
  %8 = load %struct.fsys_namenode*, %struct.fsys_namenode** %4, align 8, !dbg !1060
  %9 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %8, i32 0, i32 4, !dbg !1061
  %10 = load %struct.file_stat*, %struct.file_stat** %9, align 8, !dbg !1061
  store %struct.file_stat* %10, %struct.file_stat** %5, align 8, !dbg !1059
  call void @llvm.dbg.declare(metadata %struct.passwd** %6, metadata !1062, metadata !203), !dbg !1074
  call void @llvm.dbg.declare(metadata %struct.group** %7, metadata !1075, metadata !203), !dbg !1085
  %11 = load %struct.file_stat*, %struct.file_stat** %5, align 8, !dbg !1086
  %12 = icmp ne %struct.file_stat* %11, null, !dbg !1086
  br i1 %12, label %14, label %13, !dbg !1088

; <label>:13:                                     ; preds = %2
  br label %86, !dbg !1089

; <label>:14:                                     ; preds = %2
  %15 = load %struct.file_stat*, %struct.file_stat** %5, align 8, !dbg !1090
  %16 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %15, i32 0, i32 0, !dbg !1091
  %17 = load i32, i32* %16, align 8, !dbg !1091
  %18 = call %struct.passwd* @getpwuid(i32 %17), !dbg !1092
  store %struct.passwd* %18, %struct.passwd** %6, align 8, !dbg !1093
  %19 = load %struct.passwd*, %struct.passwd** %6, align 8, !dbg !1094
  %20 = icmp ne %struct.passwd* %19, null, !dbg !1094
  br i1 %20, label %21, label %27, !dbg !1096

; <label>:21:                                     ; preds = %14
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1097
  %23 = load %struct.passwd*, %struct.passwd** %6, align 8, !dbg !1098
  %24 = getelementptr inbounds %struct.passwd, %struct.passwd* %23, i32 0, i32 0, !dbg !1099
  %25 = load i8*, i8** %24, align 8, !dbg !1099
  %26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i8* %25), !dbg !1100
  br label %45, !dbg !1100

; <label>:27:                                     ; preds = %14
  %28 = load %struct.file_stat*, %struct.file_stat** %5, align 8, !dbg !1101
  %29 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %28, i32 0, i32 3, !dbg !1103
  %30 = load i8*, i8** %29, align 8, !dbg !1103
  %31 = icmp ne i8* %30, null, !dbg !1101
  br i1 %31, label %32, label %38, !dbg !1104

; <label>:32:                                     ; preds = %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1105
  %34 = load %struct.file_stat*, %struct.file_stat** %5, align 8, !dbg !1106
  %35 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %34, i32 0, i32 3, !dbg !1107
  %36 = load i8*, i8** %35, align 8, !dbg !1107
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i8* %36), !dbg !1108
  br label %44, !dbg !1108

; <label>:38:                                     ; preds = %27
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1109
  %40 = load %struct.file_stat*, %struct.file_stat** %5, align 8, !dbg !1110
  %41 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %40, i32 0, i32 0, !dbg !1111
  %42 = load i32, i32* %41, align 8, !dbg !1111
  %43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i32 %42), !dbg !1112
  br label %44

; <label>:44:                                     ; preds = %38, %32
  br label %45

; <label>:45:                                     ; preds = %44, %21
  %46 = load %struct.file_stat*, %struct.file_stat** %5, align 8, !dbg !1113
  %47 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %46, i32 0, i32 1, !dbg !1114
  %48 = load i32, i32* %47, align 4, !dbg !1114
  %49 = call %struct.group* @getgrgid(i32 %48), !dbg !1115
  store %struct.group* %49, %struct.group** %7, align 8, !dbg !1116
  %50 = load %struct.group*, %struct.group** %7, align 8, !dbg !1117
  %51 = icmp ne %struct.group* %50, null, !dbg !1117
  br i1 %51, label %52, label %58, !dbg !1119

; <label>:52:                                     ; preds = %45
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1120
  %54 = load %struct.group*, %struct.group** %7, align 8, !dbg !1121
  %55 = getelementptr inbounds %struct.group, %struct.group* %54, i32 0, i32 0, !dbg !1122
  %56 = load i8*, i8** %55, align 8, !dbg !1122
  %57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i8* %56), !dbg !1123
  br label %76, !dbg !1123

; <label>:58:                                     ; preds = %45
  %59 = load %struct.file_stat*, %struct.file_stat** %5, align 8, !dbg !1124
  %60 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %59, i32 0, i32 4, !dbg !1126
  %61 = load i8*, i8** %60, align 8, !dbg !1126
  %62 = icmp ne i8* %61, null, !dbg !1124
  br i1 %62, label %63, label %69, !dbg !1127

; <label>:63:                                     ; preds = %58
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1128
  %65 = load %struct.file_stat*, %struct.file_stat** %5, align 8, !dbg !1129
  %66 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %65, i32 0, i32 4, !dbg !1130
  %67 = load i8*, i8** %66, align 8, !dbg !1130
  %68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i8* %67), !dbg !1131
  br label %75, !dbg !1131

; <label>:69:                                     ; preds = %58
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1132
  %71 = load %struct.file_stat*, %struct.file_stat** %5, align 8, !dbg !1133
  %72 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %71, i32 0, i32 1, !dbg !1134
  %73 = load i32, i32* %72, align 4, !dbg !1134
  %74 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i32 %73), !dbg !1135
  br label %75

; <label>:75:                                     ; preds = %69, %63
  br label %76

; <label>:76:                                     ; preds = %75, %52
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1136
  %78 = load %struct.file_stat*, %struct.file_stat** %5, align 8, !dbg !1137
  %79 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %78, i32 0, i32 2, !dbg !1138
  %80 = load i32, i32* %79, align 8, !dbg !1138
  %81 = and i32 %80, -61441, !dbg !1139
  %82 = load %struct.fsys_namenode*, %struct.fsys_namenode** %4, align 8, !dbg !1140
  %83 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %82, i32 0, i32 1, !dbg !1141
  %84 = load i8*, i8** %83, align 8, !dbg !1141
  %85 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i32 %81, i8* %84), !dbg !1142
  br label %86, !dbg !1143

; <label>:86:                                     ; preds = %76, %13
  ret void, !dbg !1144
}

declare void @fsys_hash_iter_free(%struct.fsys_hash_iter*) #2

declare void @atomic_file_sync(%struct.atomic_file*) #2

declare void @atomic_file_close(%struct.atomic_file*) #2

declare void @atomic_file_commit(%struct.atomic_file*) #2

declare void @atomic_file_free(%struct.atomic_file*) #2

declare void @dir_sync_path(i8*) #2

declare i8* @dpkg_db_get_dir() #2

declare %struct.passwd* @getpwuid(i32) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare %struct.group* @getgrgid(i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @statdb_node_remove(i8*) #0 !dbg !1146 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.fsys_namenode*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1149, metadata !203), !dbg !1150
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %4, metadata !1151, metadata !203), !dbg !1152
  %5 = load i8*, i8** %3, align 8, !dbg !1153
  %6 = call %struct.fsys_namenode* @fsys_hash_find_node(i8* %5, i32 2), !dbg !1154
  store %struct.fsys_namenode* %6, %struct.fsys_namenode** %4, align 8, !dbg !1155
  %7 = load %struct.fsys_namenode*, %struct.fsys_namenode** %4, align 8, !dbg !1156
  %8 = icmp ne %struct.fsys_namenode* %7, null, !dbg !1156
  br i1 %8, label %9, label %14, !dbg !1158

; <label>:9:                                      ; preds = %1
  %10 = load %struct.fsys_namenode*, %struct.fsys_namenode** %4, align 8, !dbg !1159
  %11 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %10, i32 0, i32 4, !dbg !1161
  %12 = load %struct.file_stat*, %struct.file_stat** %11, align 8, !dbg !1161
  %13 = icmp ne %struct.file_stat* %12, null, !dbg !1159
  br i1 %13, label %15, label %14, !dbg !1162

; <label>:14:                                     ; preds = %9, %1
  store i32 0, i32* %2, align 4, !dbg !1163
  br label %18, !dbg !1163

; <label>:15:                                     ; preds = %9
  %16 = load %struct.fsys_namenode*, %struct.fsys_namenode** %4, align 8, !dbg !1164
  %17 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %16, i32 0, i32 4, !dbg !1165
  store %struct.file_stat* null, %struct.file_stat** %17, align 8, !dbg !1166
  store i32 1, i32* %2, align 4, !dbg !1167
  br label %18, !dbg !1167

; <label>:18:                                     ; preds = %15, %14
  %19 = load i32, i32* %2, align 4, !dbg !1168
  ret i32 %19, !dbg !1168
}

declare void @glob_list_prepend(%struct.glob_node**, i8*) #2

declare i32 @fnmatch(i8*, i8*, i32) #2

declare void @glob_list_free(%struct.glob_node*) #2

declare i8* @dpkg_fsys_get_path(i8*) #2

declare void @set_force(i32) #2

declare i32 @printf(i8*, ...) #2

declare i8* @dpkg_get_progname() #2

declare void @m_output(%struct._IO_FILE*, i8*) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #8

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind }
attributes #8 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind }
attributes #10 = { noreturn }
attributes #11 = { nounwind readonly }
attributes #12 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!195, !196}
!llvm.ident = !{!197}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !143, globals: !152)
!1 = !DIFile(filename: "[inter]src--statcmd.o.i", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-statoverride")
!2 = !{!3, !34, !39, !51, !62, !71, !79, !83, !93, !103, !109, !117, !122, !135, !139}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "force_flags", file: !4, line: 28, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "force.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-statoverride")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33}
!6 = !DIEnumerator(name: "FORCE_ARCHITECTURE", value: 1)
!7 = !DIEnumerator(name: "FORCE_BAD_PATH", value: 2)
!8 = !DIEnumerator(name: "FORCE_BAD_VERIFY", value: 4)
!9 = !DIEnumerator(name: "FORCE_BAD_VERSION", value: 8)
!10 = !DIEnumerator(name: "FORCE_BREAKS", value: 16)
!11 = !DIEnumerator(name: "FORCE_CONFF_ASK", value: 32)
!12 = !DIEnumerator(name: "FORCE_CONFF_DEF", value: 64)
!13 = !DIEnumerator(name: "FORCE_CONFF_MISS", value: 128)
!14 = !DIEnumerator(name: "FORCE_CONFF_NEW", value: 256)
!15 = !DIEnumerator(name: "FORCE_CONFF_OLD", value: 512)
!16 = !DIEnumerator(name: "FORCE_CONFIGURE_ANY", value: 1024)
!17 = !DIEnumerator(name: "FORCE_CONFLICTS", value: 2048)
!18 = !DIEnumerator(name: "FORCE_DEPENDS", value: 4096)
!19 = !DIEnumerator(name: "FORCE_DEPENDS_VERSION", value: 8192)
!20 = !DIEnumerator(name: "FORCE_DOWNGRADE", value: 16384)
!21 = !DIEnumerator(name: "FORCE_HOLD", value: 32768)
!22 = !DIEnumerator(name: "FORCE_NON_ROOT", value: 65536)
!23 = !DIEnumerator(name: "FORCE_OVERWRITE", value: 131072)
!24 = !DIEnumerator(name: "FORCE_OVERWRITE_DIR", value: 262144)
!25 = !DIEnumerator(name: "FORCE_OVERWRITE_DIVERTED", value: 524288)
!26 = !DIEnumerator(name: "FORCE_REMOVE_ESSENTIAL", value: 1048576)
!27 = !DIEnumerator(name: "FORCE_REMOVE_REINSTREQ", value: 2097152)
!28 = !DIEnumerator(name: "FORCE_SCRIPT_CHROOTLESS", value: 4194304)
!29 = !DIEnumerator(name: "FORCE_UNSAFE_IO", value: 8388608)
!30 = !DIEnumerator(name: "FORCE_STATOVERRIDE_ADD", value: 16777216)
!31 = !DIEnumerator(name: "FORCE_STATOVERRIDE_DEL", value: 33554432)
!32 = !DIEnumerator(name: "FORCE_SECURITY_MAC", value: 67108864)
!33 = !DIEnumerator(name: "FORCE_ALL", value: -1)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "statdb_parse_flags", file: !35, line: 52, size: 32, align: 32, elements: !36)
!35 = !DIFile(filename: "../lib/dpkg/db-fsys.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-statoverride")
!36 = !{!37, !38}
!37 = !DIEnumerator(name: "STATDB_PARSE_NORMAL", value: 0)
!38 = !DIEnumerator(name: "STATDB_PARSE_LAX", value: 1)
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "deptype", file: !40, line: 44, size: 32, align: 32, elements: !41)
!40 = !DIFile(filename: "../lib/dpkg/dpkg-db.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-statoverride")
!41 = !{!42, !43, !44, !45, !46, !47, !48, !49, !50}
!42 = !DIEnumerator(name: "dep_suggests", value: 0)
!43 = !DIEnumerator(name: "dep_recommends", value: 1)
!44 = !DIEnumerator(name: "dep_depends", value: 2)
!45 = !DIEnumerator(name: "dep_predepends", value: 3)
!46 = !DIEnumerator(name: "dep_breaks", value: 4)
!47 = !DIEnumerator(name: "dep_conflicts", value: 5)
!48 = !DIEnumerator(name: "dep_provides", value: 6)
!49 = !DIEnumerator(name: "dep_replaces", value: 7)
!50 = !DIEnumerator(name: "dep_enhances", value: 8)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_arch_type", file: !52, line: 37, size: 32, align: 32, elements: !53)
!52 = !DIFile(filename: "../lib/dpkg/arch.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-statoverride")
!53 = !{!54, !55, !56, !57, !58, !59, !60, !61}
!54 = !DIEnumerator(name: "DPKG_ARCH_NONE", value: 0)
!55 = !DIEnumerator(name: "DPKG_ARCH_EMPTY", value: 1)
!56 = !DIEnumerator(name: "DPKG_ARCH_ILLEGAL", value: 2)
!57 = !DIEnumerator(name: "DPKG_ARCH_WILDCARD", value: 3)
!58 = !DIEnumerator(name: "DPKG_ARCH_ALL", value: 4)
!59 = !DIEnumerator(name: "DPKG_ARCH_NATIVE", value: 5)
!60 = !DIEnumerator(name: "DPKG_ARCH_FOREIGN", value: 6)
!61 = !DIEnumerator(name: "DPKG_ARCH_UNKNOWN", value: 7)
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_relation", file: !63, line: 61, size: 32, align: 32, elements: !64)
!63 = !DIFile(filename: "../lib/dpkg/version.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-statoverride")
!64 = !{!65, !66, !67, !68, !69, !70}
!65 = !DIEnumerator(name: "DPKG_RELATION_NONE", value: 0)
!66 = !DIEnumerator(name: "DPKG_RELATION_EQ", value: 1)
!67 = !DIEnumerator(name: "DPKG_RELATION_LT", value: 2)
!68 = !DIEnumerator(name: "DPKG_RELATION_LE", value: 3)
!69 = !DIEnumerator(name: "DPKG_RELATION_GT", value: 4)
!70 = !DIEnumerator(name: "DPKG_RELATION_GE", value: 5)
!71 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgwant", file: !40, line: 153, size: 32, align: 32, elements: !72)
!72 = !{!73, !74, !75, !76, !77, !78}
!73 = !DIEnumerator(name: "PKG_WANT_UNKNOWN", value: 0)
!74 = !DIEnumerator(name: "PKG_WANT_INSTALL", value: 1)
!75 = !DIEnumerator(name: "PKG_WANT_HOLD", value: 2)
!76 = !DIEnumerator(name: "PKG_WANT_DEINSTALL", value: 3)
!77 = !DIEnumerator(name: "PKG_WANT_PURGE", value: 4)
!78 = !DIEnumerator(name: "PKG_WANT_SENTINEL", value: 5)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgeflag", file: !40, line: 163, size: 32, align: 32, elements: !80)
!80 = !{!81, !82}
!81 = !DIEnumerator(name: "PKG_EFLAG_OK", value: 0)
!82 = !DIEnumerator(name: "PKG_EFLAG_REINSTREQ", value: 1)
!83 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgstatus", file: !40, line: 168, size: 32, align: 32, elements: !84)
!84 = !{!85, !86, !87, !88, !89, !90, !91, !92}
!85 = !DIEnumerator(name: "PKG_STAT_NOTINSTALLED", value: 0)
!86 = !DIEnumerator(name: "PKG_STAT_CONFIGFILES", value: 1)
!87 = !DIEnumerator(name: "PKG_STAT_HALFINSTALLED", value: 2)
!88 = !DIEnumerator(name: "PKG_STAT_UNPACKED", value: 3)
!89 = !DIEnumerator(name: "PKG_STAT_HALFCONFIGURED", value: 4)
!90 = !DIEnumerator(name: "PKG_STAT_TRIGGERSAWAITED", value: 5)
!91 = !DIEnumerator(name: "PKG_STAT_TRIGGERSPENDING", value: 6)
!92 = !DIEnumerator(name: "PKG_STAT_INSTALLED", value: 7)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgpriority", file: !40, line: 179, size: 32, align: 32, elements: !94)
!94 = !{!95, !96, !97, !98, !99, !100, !101, !102}
!95 = !DIEnumerator(name: "PKG_PRIO_REQUIRED", value: 0)
!96 = !DIEnumerator(name: "PKG_PRIO_IMPORTANT", value: 1)
!97 = !DIEnumerator(name: "PKG_PRIO_STANDARD", value: 2)
!98 = !DIEnumerator(name: "PKG_PRIO_OPTIONAL", value: 3)
!99 = !DIEnumerator(name: "PKG_PRIO_EXTRA", value: 4)
!100 = !DIEnumerator(name: "PKG_PRIO_OTHER", value: 5)
!101 = !DIEnumerator(name: "PKG_PRIO_UNKNOWN", value: 6)
!102 = !DIEnumerator(name: "PKG_PRIO_UNSET", value: -1)
!103 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgmultiarch", file: !40, line: 95, size: 32, align: 32, elements: !104)
!104 = !{!105, !106, !107, !108}
!105 = !DIEnumerator(name: "PKG_MULTIARCH_NO", value: 0)
!106 = !DIEnumerator(name: "PKG_MULTIARCH_SAME", value: 1)
!107 = !DIEnumerator(name: "PKG_MULTIARCH_ALLOWED", value: 2)
!108 = !DIEnumerator(name: "PKG_MULTIARCH_FOREIGN", value: 3)
!109 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkg_istobe", file: !110, line: 34, size: 32, align: 32, elements: !111)
!110 = !DIFile(filename: "main.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-statoverride")
!111 = !{!112, !113, !114, !115, !116}
!112 = !DIEnumerator(name: "PKG_ISTOBE_NORMAL", value: 0)
!113 = !DIEnumerator(name: "PKG_ISTOBE_REMOVE", value: 1)
!114 = !DIEnumerator(name: "PKG_ISTOBE_INSTALLNEW", value: 2)
!115 = !DIEnumerator(name: "PKG_ISTOBE_DECONFIGURE", value: 3)
!116 = !DIEnumerator(name: "PKG_ISTOBE_PREINSTALL", value: 4)
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkg_cycle_color", file: !110, line: 47, size: 32, align: 32, elements: !118)
!118 = !{!119, !120, !121}
!119 = !DIEnumerator(name: "PKG_CYCLE_WHITE", value: 0)
!120 = !DIEnumerator(name: "PKG_CYCLE_GRAY", value: 1)
!121 = !DIEnumerator(name: "PKG_CYCLE_BLACK", value: 2)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fsys_namenode_flags", file: !123, line: 61, size: 32, align: 32, elements: !124)
!123 = !DIFile(filename: "../lib/dpkg/fsys.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-statoverride")
!124 = !{!125, !126, !127, !128, !129, !130, !131, !132, !133, !134}
!125 = !DIEnumerator(name: "FNNF_NEW_CONFF", value: 1)
!126 = !DIEnumerator(name: "FNNF_NEW_INARCHIVE", value: 2)
!127 = !DIEnumerator(name: "FNNF_OLD_CONFF", value: 4)
!128 = !DIEnumerator(name: "FNNF_OBS_CONFF", value: 8)
!129 = !DIEnumerator(name: "FNNF_ELIDE_OTHER_LISTS", value: 16)
!130 = !DIEnumerator(name: "FNNF_NO_ATOMIC_OVERWRITE", value: 32)
!131 = !DIEnumerator(name: "FNNF_PLACED_ON_DISK", value: 64)
!132 = !DIEnumerator(name: "FNNF_DEFERRED_FSYNC", value: 128)
!133 = !DIEnumerator(name: "FNNF_DEFERRED_RENAME", value: 256)
!134 = !DIEnumerator(name: "FNNF_FILTERED", value: 512)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "atomic_file_flags", file: !136, line: 36, size: 32, align: 32, elements: !137)
!136 = !DIFile(filename: "../lib/dpkg/atomic-file.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-statoverride")
!137 = !{!138}
!138 = !DIEnumerator(name: "ATOMIC_FILE_BACKUP", value: 1)
!139 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fsys_hash_find_flags", file: !123, line: 54, size: 32, align: 32, elements: !140)
!140 = !{!141, !142}
!141 = !DIEnumerator(name: "FHFF_NOCOPY", value: 1)
!142 = !DIEnumerator(name: "FHFF_NONE", value: 2)
!143 = !{!144, !145, !150}
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !146, line: 80, baseType: !147)
!146 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-statoverride")
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !148, line: 125, baseType: !149)
!148 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-statoverride")
!149 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !146, line: 65, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !148, line: 126, baseType: !149)
!152 = !{!153, !158, !159, !189, !190, !191}
!153 = distinct !DIGlobalVariable(name: "admindir", scope: !0, file: !154, line: 109, type: !155, isLocal: true, isDefinition: true, variable: i8** @admindir)
!154 = !DIFile(filename: "statcmd.c", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-statoverride")
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64, align: 64)
!156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !157)
!157 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!158 = distinct !DIGlobalVariable(name: "instdir", scope: !0, file: !154, line: 110, type: !155, isLocal: false, isDefinition: true, variable: i8** @instdir)
!159 = distinct !DIGlobalVariable(name: "cmdinfos", scope: !0, file: !154, line: 384, type: !160, isLocal: true, isDefinition: true, variable: [15 x %struct.cmdinfo]* @cmdinfos)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 7680, align: 64, elements: !187)
!161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !162)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cmdinfo", file: !163, line: 38, size: 512, align: 64, elements: !164)
!163 = !DIFile(filename: "../lib/dpkg/options.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-statoverride")
!164 = !{!165, !166, !167, !169, !171, !173, !178, !179, !180}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "olong", scope: !162, file: !163, line: 39, baseType: !155, size: 64, align: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "oshort", scope: !162, file: !163, line: 40, baseType: !157, size: 8, align: 8, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "takesvalue", scope: !162, file: !163, line: 48, baseType: !168, size: 32, align: 32, offset: 96)
!168 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "iassignto", scope: !162, file: !163, line: 49, baseType: !170, size: 64, align: 64, offset: 128)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64, align: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "sassignto", scope: !162, file: !163, line: 50, baseType: !172, size: 64, align: 64, offset: 192)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64, align: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !162, file: !163, line: 51, baseType: !174, size: 64, align: 64, offset: 256)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64, align: 64)
!175 = !DISubroutineType(types: !176)
!176 = !{null, !177, !155}
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64, align: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "arg_int", scope: !162, file: !163, line: 53, baseType: !168, size: 32, align: 32, offset: 320)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "arg_ptr", scope: !162, file: !163, line: 54, baseType: !144, size: 64, align: 64, offset: 384)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !162, file: !163, line: 56, baseType: !181, size: 64, align: 64, offset: 448)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64, align: 64)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "action_func", file: !163, line: 36, baseType: !183)
!183 = !DISubroutineType(types: !184)
!184 = !{!168, !185}
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64, align: 64)
!186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !155)
!187 = !{!188}
!188 = !DISubrange(count: 15)
!189 = distinct !DIGlobalVariable(name: "opt_verbose", scope: !0, file: !154, line: 112, type: !168, isLocal: true, isDefinition: true, variable: i32* @opt_verbose)
!190 = distinct !DIGlobalVariable(name: "opt_update", scope: !0, file: !154, line: 113, type: !168, isLocal: true, isDefinition: true, variable: i32* @opt_update)
!191 = distinct !DIGlobalVariable(name: "printforhelp", scope: !0, file: !154, line: 53, type: !192, isLocal: true, isDefinition: true, variable: [60 x i8]* @printforhelp)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 480, align: 8, elements: !193)
!193 = !{!194}
!194 = !DISubrange(count: 60)
!195 = !{i32 2, !"Dwarf Version", i32 4}
!196 = !{i32 2, !"Debug Info Version", i32 3}
!197 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!198 = distinct !DISubprogram(name: "main", scope: !154, file: !154, line: 404, type: !199, isLocal: false, isDefinition: true, scopeLine: 405, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !201)
!199 = !DISubroutineType(types: !200)
!200 = !{!168, !168, !185}
!201 = !{}
!202 = !DILocalVariable(name: "argc", arg: 1, scope: !198, file: !154, line: 404, type: !168)
!203 = !DIExpression()
!204 = !DILocation(line: 404, column: 10, scope: !198)
!205 = !DILocalVariable(name: "argv", arg: 2, scope: !198, file: !154, line: 404, type: !185)
!206 = !DILocation(line: 404, column: 35, scope: !198)
!207 = !DILocalVariable(name: "ret", scope: !198, file: !154, line: 406, type: !168)
!208 = !DILocation(line: 406, column: 6, scope: !198)
!209 = !DILocation(line: 408, column: 2, scope: !198)
!210 = !DILocation(line: 409, column: 2, scope: !198)
!211 = !DILocation(line: 410, column: 2, scope: !198)
!212 = !DILocation(line: 411, column: 2, scope: !198)
!213 = !DILocation(line: 413, column: 29, scope: !198)
!214 = !DILocation(line: 413, column: 13, scope: !198)
!215 = !DILocation(line: 413, column: 11, scope: !198)
!216 = !DILocation(line: 414, column: 30, scope: !198)
!217 = !DILocation(line: 414, column: 12, scope: !198)
!218 = !DILocation(line: 414, column: 10, scope: !198)
!219 = !DILocation(line: 416, column: 7, scope: !220)
!220 = distinct !DILexicalBlock(scope: !198, file: !154, line: 416, column: 6)
!221 = !DILocation(line: 416, column: 6, scope: !198)
!222 = !DILocation(line: 417, column: 12, scope: !220)
!223 = !DILocation(line: 417, column: 3, scope: !224)
!224 = !DILexicalBlockFile(scope: !220, file: !154, discriminator: 1)
!225 = !DILocation(line: 417, column: 3, scope: !220)
!226 = !DILocation(line: 419, column: 2, scope: !198)
!227 = !DILocation(line: 420, column: 2, scope: !198)
!228 = !DILocation(line: 422, column: 8, scope: !198)
!229 = !DILocation(line: 422, column: 19, scope: !198)
!230 = !DILocation(line: 422, column: 26, scope: !198)
!231 = !DILocation(line: 422, column: 6, scope: !198)
!232 = !DILocation(line: 424, column: 2, scope: !198)
!233 = !DILocation(line: 426, column: 9, scope: !198)
!234 = !DILocation(line: 426, column: 2, scope: !198)
!235 = distinct !DISubprogram(name: "statoverride_add", scope: !154, file: !154, line: 254, type: !183, isLocal: true, isDefinition: true, scopeLine: 255, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !201)
!236 = !DILocalVariable(name: "argv", arg: 1, scope: !235, file: !154, line: 254, type: !185)
!237 = !DILocation(line: 254, column: 37, scope: !235)
!238 = !DILocalVariable(name: "user", scope: !235, file: !154, line: 256, type: !155)
!239 = !DILocation(line: 256, column: 14, scope: !235)
!240 = !DILocation(line: 256, column: 21, scope: !235)
!241 = !DILocalVariable(name: "group", scope: !235, file: !154, line: 257, type: !155)
!242 = !DILocation(line: 257, column: 14, scope: !235)
!243 = !DILocation(line: 257, column: 22, scope: !235)
!244 = !DILocalVariable(name: "mode", scope: !235, file: !154, line: 258, type: !155)
!245 = !DILocation(line: 258, column: 14, scope: !235)
!246 = !DILocation(line: 258, column: 21, scope: !235)
!247 = !DILocalVariable(name: "path", scope: !235, file: !154, line: 259, type: !155)
!248 = !DILocation(line: 259, column: 14, scope: !235)
!249 = !DILocation(line: 259, column: 21, scope: !235)
!250 = !DILocalVariable(name: "filename", scope: !235, file: !154, line: 260, type: !251)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64, align: 64)
!252 = !DILocation(line: 260, column: 8, scope: !235)
!253 = !DILocalVariable(name: "filestat", scope: !235, file: !154, line: 261, type: !254)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64, align: 64)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64, align: 64)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_stat", file: !257, line: 40, size: 256, align: 64, elements: !258)
!257 = !DIFile(filename: "../lib/dpkg/file.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-statoverride")
!258 = !{!259, !260, !261, !264, !265}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !256, file: !257, line: 41, baseType: !145, size: 32, align: 32)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !256, file: !257, line: 42, baseType: !150, size: 32, align: 32, offset: 32)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !256, file: !257, line: 43, baseType: !262, size: 32, align: 32, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !146, line: 70, baseType: !263)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !148, line: 129, baseType: !149)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "uname", scope: !256, file: !257, line: 47, baseType: !251, size: 64, align: 64, offset: 128)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !256, file: !257, line: 48, baseType: !251, size: 64, align: 64, offset: 192)
!266 = !DILocation(line: 261, column: 21, scope: !235)
!267 = !DILocation(line: 263, column: 7, scope: !268)
!268 = distinct !DILexicalBlock(scope: !235, file: !154, line: 263, column: 6)
!269 = !DILocation(line: 263, column: 12, scope: !268)
!270 = !DILocation(line: 263, column: 16, scope: !271)
!271 = !DILexicalBlockFile(scope: !268, file: !154, discriminator: 1)
!272 = !DILocation(line: 263, column: 22, scope: !271)
!273 = !DILocation(line: 263, column: 26, scope: !274)
!274 = !DILexicalBlockFile(scope: !268, file: !154, discriminator: 2)
!275 = !DILocation(line: 263, column: 31, scope: !274)
!276 = !DILocation(line: 263, column: 35, scope: !277)
!277 = !DILexicalBlockFile(scope: !268, file: !154, discriminator: 3)
!278 = !DILocation(line: 263, column: 40, scope: !277)
!279 = !DILocation(line: 263, column: 43, scope: !280)
!280 = !DILexicalBlockFile(scope: !268, file: !154, discriminator: 4)
!281 = !DILocation(line: 263, column: 6, scope: !280)
!282 = !DILocation(line: 264, column: 12, scope: !268)
!283 = !DILocation(line: 264, column: 50, scope: !268)
!284 = !DILocation(line: 264, column: 61, scope: !268)
!285 = !DILocation(line: 264, column: 3, scope: !271)
!286 = !DILocation(line: 264, column: 3, scope: !268)
!287 = !DILocation(line: 266, column: 13, scope: !288)
!288 = distinct !DILexicalBlock(scope: !235, file: !154, line: 266, column: 6)
!289 = !DILocation(line: 266, column: 6, scope: !288)
!290 = !DILocation(line: 266, column: 6, scope: !235)
!291 = !DILocation(line: 267, column: 12, scope: !288)
!292 = !DILocation(line: 267, column: 3, scope: !293)
!293 = !DILexicalBlockFile(scope: !288, file: !154, discriminator: 1)
!294 = !DILocation(line: 267, column: 3, scope: !288)
!295 = !DILocation(line: 269, column: 26, scope: !235)
!296 = !DILocation(line: 269, column: 13, scope: !235)
!297 = !DILocation(line: 269, column: 11, scope: !235)
!298 = !DILocation(line: 271, column: 30, scope: !235)
!299 = !DILocation(line: 271, column: 13, scope: !235)
!300 = !DILocation(line: 271, column: 11, scope: !235)
!301 = !DILocation(line: 272, column: 7, scope: !302)
!302 = distinct !DILexicalBlock(scope: !235, file: !154, line: 272, column: 6)
!303 = !DILocation(line: 272, column: 6, scope: !302)
!304 = !DILocation(line: 272, column: 16, scope: !302)
!305 = !DILocation(line: 272, column: 6, scope: !235)
!306 = !DILocation(line: 273, column: 7, scope: !307)
!307 = distinct !DILexicalBlock(scope: !308, file: !154, line: 273, column: 7)
!308 = distinct !DILexicalBlock(scope: !302, file: !154, line: 272, column: 24)
!309 = !DILocation(line: 273, column: 7, scope: !308)
!310 = !DILocation(line: 274, column: 12, scope: !307)
!311 = !DILocation(line: 276, column: 12, scope: !307)
!312 = !DILocation(line: 274, column: 4, scope: !313)
!313 = !DILexicalBlockFile(scope: !307, file: !154, discriminator: 1)
!314 = !DILocation(line: 274, column: 4, scope: !307)
!315 = !DILocation(line: 278, column: 11, scope: !307)
!316 = !DILocation(line: 279, column: 26, scope: !307)
!317 = !DILocation(line: 278, column: 4, scope: !313)
!318 = !DILocation(line: 278, column: 4, scope: !307)
!319 = !DILocation(line: 280, column: 2, scope: !308)
!320 = !DILocation(line: 282, column: 30, scope: !235)
!321 = !DILocation(line: 282, column: 36, scope: !235)
!322 = !DILocation(line: 282, column: 43, scope: !235)
!323 = !DILocation(line: 282, column: 14, scope: !235)
!324 = !DILocation(line: 282, column: 3, scope: !235)
!325 = !DILocation(line: 282, column: 12, scope: !235)
!326 = !DILocation(line: 284, column: 6, scope: !327)
!327 = distinct !DILexicalBlock(scope: !235, file: !154, line: 284, column: 6)
!328 = !DILocation(line: 284, column: 6, scope: !235)
!329 = !DILocalVariable(name: "st", scope: !330, file: !154, line: 285, type: !331)
!330 = distinct !DILexicalBlock(scope: !327, file: !154, line: 284, column: 18)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !332, line: 46, size: 1152, align: 64, elements: !333)
!332 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-statoverride")
!333 = !{!334, !337, !339, !341, !342, !343, !344, !345, !346, !349, !351, !353, !361, !362, !363}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !331, file: !332, line: 48, baseType: !335, size: 64, align: 64)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !148, line: 124, baseType: !336)
!336 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !331, file: !332, line: 53, baseType: !338, size: 64, align: 64, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !148, line: 127, baseType: !336)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !331, file: !332, line: 61, baseType: !340, size: 64, align: 64, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !148, line: 130, baseType: !336)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !331, file: !332, line: 62, baseType: !263, size: 32, align: 32, offset: 192)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !331, file: !332, line: 64, baseType: !147, size: 32, align: 32, offset: 224)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !331, file: !332, line: 65, baseType: !151, size: 32, align: 32, offset: 256)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !331, file: !332, line: 67, baseType: !168, size: 32, align: 32, offset: 288)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !331, file: !332, line: 69, baseType: !335, size: 64, align: 64, offset: 320)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !331, file: !332, line: 74, baseType: !347, size: 64, align: 64, offset: 384)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !148, line: 131, baseType: !348)
!348 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !331, file: !332, line: 78, baseType: !350, size: 64, align: 64, offset: 448)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !148, line: 153, baseType: !348)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !331, file: !332, line: 80, baseType: !352, size: 64, align: 64, offset: 512)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !148, line: 158, baseType: !348)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !331, file: !332, line: 91, baseType: !354, size: 128, align: 64, offset: 576)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !355, line: 120, size: 128, align: 64, elements: !356)
!355 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-statoverride")
!356 = !{!357, !359}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !354, file: !355, line: 122, baseType: !358, size: 64, align: 64)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !148, line: 139, baseType: !348)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !354, file: !355, line: 123, baseType: !360, size: 64, align: 64, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !148, line: 175, baseType: !348)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !331, file: !332, line: 92, baseType: !354, size: 128, align: 64, offset: 704)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !331, file: !332, line: 93, baseType: !354, size: 128, align: 64, offset: 832)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !331, file: !332, line: 106, baseType: !364, size: 192, align: 64, offset: 960)
!364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !360, size: 192, align: 64, elements: !365)
!365 = !{!366}
!366 = !DISubrange(count: 3)
!367 = !DILocation(line: 285, column: 15, scope: !330)
!368 = !DILocalVariable(name: "realfilename", scope: !330, file: !154, line: 286, type: !369)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varbuf", file: !370, line: 55, size: 192, align: 64, elements: !371)
!370 = !DIFile(filename: "../lib/dpkg/varbuf.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-statoverride")
!371 = !{!372, !375, !376}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !369, file: !370, line: 56, baseType: !373, size: 64, align: 64)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !374, line: 216, baseType: !336)
!374 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-statoverride")
!375 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !369, file: !370, line: 56, baseType: !373, size: 64, align: 64, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !369, file: !370, line: 57, baseType: !251, size: 64, align: 64, offset: 128)
!377 = !DILocation(line: 286, column: 17, scope: !330)
!378 = !DILocation(line: 288, column: 33, scope: !330)
!379 = !DILocation(line: 288, column: 49, scope: !330)
!380 = !DILocation(line: 288, column: 42, scope: !330)
!381 = !DILocation(line: 288, column: 3, scope: !382)
!382 = !DILexicalBlockFile(scope: !330, file: !154, discriminator: 1)
!383 = !DILocation(line: 289, column: 33, scope: !330)
!384 = !DILocation(line: 289, column: 50, scope: !330)
!385 = !DILocation(line: 289, column: 43, scope: !330)
!386 = !DILocation(line: 289, column: 3, scope: !382)
!387 = !DILocation(line: 290, column: 3, scope: !330)
!388 = !DILocation(line: 292, column: 25, scope: !389)
!389 = distinct !DILexicalBlock(scope: !330, file: !154, line: 292, column: 7)
!390 = !DILocation(line: 292, column: 7, scope: !389)
!391 = !DILocation(line: 292, column: 35, scope: !389)
!392 = !DILocation(line: 292, column: 7, scope: !330)
!393 = !DILocation(line: 293, column: 28, scope: !394)
!394 = distinct !DILexicalBlock(scope: !389, file: !154, line: 292, column: 41)
!395 = !DILocation(line: 293, column: 36, scope: !394)
!396 = !DILocation(line: 293, column: 6, scope: !394)
!397 = !DILocation(line: 293, column: 5, scope: !394)
!398 = !DILocation(line: 293, column: 17, scope: !394)
!399 = !DILocation(line: 293, column: 22, scope: !394)
!400 = !DILocation(line: 294, column: 35, scope: !394)
!401 = !DILocation(line: 294, column: 41, scope: !394)
!402 = !DILocation(line: 294, column: 40, scope: !394)
!403 = !DILocation(line: 294, column: 4, scope: !394)
!404 = !DILocation(line: 295, column: 3, scope: !394)
!405 = !DILocation(line: 295, column: 14, scope: !406)
!406 = !DILexicalBlockFile(scope: !407, file: !154, discriminator: 1)
!407 = distinct !DILexicalBlock(scope: !389, file: !154, line: 295, column: 14)
!408 = !DILocation(line: 296, column: 12, scope: !409)
!409 = distinct !DILexicalBlock(scope: !407, file: !154, line: 295, column: 27)
!410 = !DILocation(line: 297, column: 25, scope: !409)
!411 = !DILocation(line: 296, column: 4, scope: !412)
!412 = !DILexicalBlockFile(scope: !409, file: !154, discriminator: 1)
!413 = !DILocation(line: 298, column: 3, scope: !409)
!414 = !DILocation(line: 300, column: 3, scope: !330)
!415 = !DILocation(line: 301, column: 2, scope: !330)
!416 = !DILocation(line: 303, column: 2, scope: !235)
!417 = !DILocation(line: 305, column: 7, scope: !235)
!418 = !DILocation(line: 305, column: 2, scope: !235)
!419 = !DILocation(line: 307, column: 2, scope: !235)
!420 = distinct !DISubprogram(name: "statoverride_remove", scope: !154, file: !154, line: 311, type: !183, isLocal: true, isDefinition: true, scopeLine: 312, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !201)
!421 = !DILocalVariable(name: "argv", arg: 1, scope: !420, file: !154, line: 311, type: !185)
!422 = !DILocation(line: 311, column: 40, scope: !420)
!423 = !DILocalVariable(name: "path", scope: !420, file: !154, line: 313, type: !155)
!424 = !DILocation(line: 313, column: 14, scope: !420)
!425 = !DILocation(line: 313, column: 21, scope: !420)
!426 = !DILocalVariable(name: "filename", scope: !420, file: !154, line: 314, type: !251)
!427 = !DILocation(line: 314, column: 8, scope: !420)
!428 = !DILocation(line: 316, column: 7, scope: !429)
!429 = distinct !DILexicalBlock(scope: !420, file: !154, line: 316, column: 6)
!430 = !DILocation(line: 316, column: 12, scope: !429)
!431 = !DILocation(line: 316, column: 15, scope: !432)
!432 = !DILexicalBlockFile(scope: !429, file: !154, discriminator: 1)
!433 = !DILocation(line: 316, column: 6, scope: !432)
!434 = !DILocation(line: 317, column: 12, scope: !429)
!435 = !DILocation(line: 317, column: 3, scope: !432)
!436 = !DILocation(line: 317, column: 3, scope: !429)
!437 = !DILocation(line: 319, column: 26, scope: !420)
!438 = !DILocation(line: 319, column: 13, scope: !420)
!439 = !DILocation(line: 319, column: 11, scope: !420)
!440 = !DILocation(line: 321, column: 26, scope: !441)
!441 = distinct !DILexicalBlock(scope: !420, file: !154, line: 321, column: 6)
!442 = !DILocation(line: 321, column: 7, scope: !441)
!443 = !DILocation(line: 321, column: 6, scope: !420)
!444 = !DILocation(line: 322, column: 7, scope: !445)
!445 = distinct !DILexicalBlock(scope: !446, file: !154, line: 322, column: 7)
!446 = distinct !DILexicalBlock(scope: !441, file: !154, line: 321, column: 37)
!447 = !DILocation(line: 322, column: 7, scope: !446)
!448 = !DILocation(line: 323, column: 12, scope: !445)
!449 = !DILocation(line: 323, column: 4, scope: !450)
!450 = !DILexicalBlockFile(scope: !445, file: !154, discriminator: 1)
!451 = !DILocation(line: 323, column: 4, scope: !445)
!452 = !DILocation(line: 324, column: 7, scope: !453)
!453 = distinct !DILexicalBlock(scope: !446, file: !154, line: 324, column: 7)
!454 = !DILocation(line: 324, column: 7, scope: !446)
!455 = !DILocation(line: 325, column: 4, scope: !453)
!456 = !DILocation(line: 327, column: 4, scope: !453)
!457 = !DILocation(line: 330, column: 6, scope: !458)
!458 = distinct !DILexicalBlock(scope: !420, file: !154, line: 330, column: 6)
!459 = !DILocation(line: 330, column: 17, scope: !458)
!460 = !DILocation(line: 330, column: 20, scope: !461)
!461 = !DILexicalBlockFile(scope: !458, file: !154, discriminator: 1)
!462 = !DILocation(line: 330, column: 6, scope: !461)
!463 = !DILocation(line: 331, column: 11, scope: !458)
!464 = !DILocation(line: 331, column: 3, scope: !461)
!465 = !DILocation(line: 331, column: 3, scope: !458)
!466 = !DILocation(line: 333, column: 2, scope: !420)
!467 = !DILocation(line: 335, column: 7, scope: !420)
!468 = !DILocation(line: 335, column: 2, scope: !420)
!469 = !DILocation(line: 337, column: 2, scope: !420)
!470 = !DILocation(line: 338, column: 1, scope: !420)
!471 = distinct !DISubprogram(name: "statoverride_list", scope: !154, file: !154, line: 341, type: !183, isLocal: true, isDefinition: true, scopeLine: 342, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !201)
!472 = !DILocalVariable(name: "argv", arg: 1, scope: !471, file: !154, line: 341, type: !185)
!473 = !DILocation(line: 341, column: 38, scope: !471)
!474 = !DILocalVariable(name: "iter", scope: !471, file: !154, line: 343, type: !475)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64, align: 64)
!476 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_hash_iter", file: !123, line: 177, flags: DIFlagFwdDecl)
!477 = !DILocation(line: 343, column: 25, scope: !471)
!478 = !DILocalVariable(name: "file", scope: !471, file: !154, line: 344, type: !479)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64, align: 64)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode", file: !123, line: 90, size: 640, align: 64, elements: !481)
!481 = !{!482, !483, !484, !632, !640, !641, !644, !645, !646, !647}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !480, file: !123, line: 91, baseType: !479, size: 64, align: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !480, file: !123, line: 92, baseType: !155, size: 64, align: 64, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "packages", scope: !480, file: !123, line: 93, baseType: !485, size: 64, align: 64, offset: 128)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64, align: 64)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_list", file: !487, line: 34, size: 128, align: 64, elements: !488)
!487 = !DIFile(filename: "../lib/dpkg/pkg-list.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-statoverride")
!488 = !{!489, !490}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !486, file: !487, line: 35, baseType: !485, size: 64, align: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !486, file: !487, line: 36, baseType: !491, size: 64, align: 64, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64, align: 64)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkginfo", file: !40, line: 195, size: 3072, align: 64, elements: !493)
!493 = !{!494, !541, !542, !543, !544, !545, !546, !547, !548, !549, !579, !580, !590, !599, !615, !616, !622, !628, !630, !631}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !492, file: !40, line: 196, baseType: !495, size: 64, align: 64)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64, align: 64)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgset", file: !40, line: 242, size: 3392, align: 64, elements: !497)
!497 = !{!498, !499, !500, !501, !540}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !496, file: !40, line: 243, baseType: !495, size: 64, align: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !496, file: !40, line: 244, baseType: !155, size: 64, align: 64, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !496, file: !40, line: 245, baseType: !492, size: 3072, align: 64, offset: 128)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "depended", scope: !496, file: !40, line: 249, baseType: !502, size: 128, align: 64, offset: 3200)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !496, file: !40, line: 246, size: 128, align: 64, elements: !503)
!503 = !{!504, !539}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !502, file: !40, line: 247, baseType: !505, size: 64, align: 64)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64, align: 64)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "deppossi", file: !40, line: 63, size: 640, align: 64, elements: !507)
!507 = !{!508, !516, !517, !518, !519, !520, !529, !535, !536, !538}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !506, file: !40, line: 64, baseType: !509, size: 64, align: 64)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64, align: 64)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dependency", file: !40, line: 56, size: 256, align: 64, elements: !511)
!511 = !{!512, !513, !514, !515}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !510, file: !40, line: 57, baseType: !491, size: 64, align: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !510, file: !40, line: 58, baseType: !509, size: 64, align: 64, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !510, file: !40, line: 59, baseType: !505, size: 64, align: 64, offset: 128)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !510, file: !40, line: 60, baseType: !39, size: 32, align: 32, offset: 192)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "ed", scope: !506, file: !40, line: 65, baseType: !495, size: 64, align: 64, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !506, file: !40, line: 66, baseType: !505, size: 64, align: 64, offset: 128)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "rev_next", scope: !506, file: !40, line: 66, baseType: !505, size: 64, align: 64, offset: 192)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "rev_prev", scope: !506, file: !40, line: 66, baseType: !505, size: 64, align: 64, offset: 256)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !506, file: !40, line: 67, baseType: !521, size: 64, align: 64, offset: 320)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64, align: 64)
!522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !523)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_arch", file: !52, line: 48, size: 192, align: 64, elements: !524)
!524 = !{!525, !527, !528}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !523, file: !52, line: 49, baseType: !526, size: 64, align: 64)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64, align: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !523, file: !52, line: 50, baseType: !155, size: 64, align: 64, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !523, file: !52, line: 51, baseType: !51, size: 32, align: 32, offset: 128)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !506, file: !40, line: 68, baseType: !530, size: 192, align: 64, offset: 384)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_version", file: !63, line: 42, size: 192, align: 64, elements: !531)
!531 = !{!532, !533, !534}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !530, file: !63, line: 44, baseType: !149, size: 32, align: 32)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !530, file: !63, line: 46, baseType: !155, size: 64, align: 64, offset: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !530, file: !63, line: 48, baseType: !155, size: 64, align: 64, offset: 128)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "verrel", scope: !506, file: !40, line: 69, baseType: !62, size: 32, align: 32, offset: 576)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "arch_is_implicit", scope: !506, file: !40, line: 70, baseType: !537, size: 8, align: 8, offset: 608)
!537 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "cyclebreak", scope: !506, file: !40, line: 71, baseType: !537, size: 8, align: 8, offset: 616)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !502, file: !40, line: 248, baseType: !505, size: 64, align: 64, offset: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "installed_instances", scope: !496, file: !40, line: 250, baseType: !168, size: 32, align: 32, offset: 3328)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "arch_next", scope: !492, file: !40, line: 197, baseType: !491, size: 64, align: 64, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "want", scope: !492, file: !40, line: 199, baseType: !71, size: 32, align: 32, offset: 128)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "eflag", scope: !492, file: !40, line: 201, baseType: !79, size: 32, align: 32, offset: 160)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !492, file: !40, line: 202, baseType: !83, size: 32, align: 32, offset: 192)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !492, file: !40, line: 203, baseType: !93, size: 32, align: 32, offset: 224)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "otherpriority", scope: !492, file: !40, line: 204, baseType: !155, size: 64, align: 64, offset: 256)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "section", scope: !492, file: !40, line: 205, baseType: !155, size: 64, align: 64, offset: 320)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "configversion", scope: !492, file: !40, line: 206, baseType: !530, size: 192, align: 64, offset: 384)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !492, file: !40, line: 207, baseType: !550, size: 960, align: 64, offset: 576)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgbin", file: !40, line: 107, size: 960, align: 64, elements: !551)
!551 = !{!552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !572}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "depends", scope: !550, file: !40, line: 108, baseType: !509, size: 64, align: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "essential", scope: !550, file: !40, line: 110, baseType: !537, size: 8, align: 8, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "multiarch", scope: !550, file: !40, line: 111, baseType: !103, size: 32, align: 32, offset: 96)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !550, file: !40, line: 112, baseType: !521, size: 64, align: 64, offset: 128)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "pkgname_archqual", scope: !550, file: !40, line: 115, baseType: !155, size: 64, align: 64, offset: 192)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !550, file: !40, line: 116, baseType: !155, size: 64, align: 64, offset: 256)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "maintainer", scope: !550, file: !40, line: 117, baseType: !155, size: 64, align: 64, offset: 320)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !550, file: !40, line: 118, baseType: !155, size: 64, align: 64, offset: 384)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "installedsize", scope: !550, file: !40, line: 119, baseType: !155, size: 64, align: 64, offset: 448)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !550, file: !40, line: 120, baseType: !155, size: 64, align: 64, offset: 512)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "bugs", scope: !550, file: !40, line: 121, baseType: !155, size: 64, align: 64, offset: 576)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !550, file: !40, line: 122, baseType: !530, size: 192, align: 64, offset: 640)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "conffiles", scope: !550, file: !40, line: 123, baseType: !565, size: 64, align: 64, offset: 832)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64, align: 64)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conffile", file: !40, line: 80, size: 256, align: 64, elements: !567)
!567 = !{!568, !569, !570, !571}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !566, file: !40, line: 81, baseType: !565, size: 64, align: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !566, file: !40, line: 82, baseType: !155, size: 64, align: 64, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !566, file: !40, line: 83, baseType: !155, size: 64, align: 64, offset: 128)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "obsolete", scope: !566, file: !40, line: 84, baseType: !537, size: 8, align: 8, offset: 192)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "arbs", scope: !550, file: !40, line: 124, baseType: !573, size: 64, align: 64, offset: 896)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64, align: 64)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arbitraryfield", file: !40, line: 74, size: 192, align: 64, elements: !575)
!575 = !{!576, !577, !578}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !574, file: !40, line: 75, baseType: !573, size: 64, align: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !574, file: !40, line: 76, baseType: !155, size: 64, align: 64, offset: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !574, file: !40, line: 77, baseType: !155, size: 64, align: 64, offset: 128)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !492, file: !40, line: 208, baseType: !550, size: 960, align: 64, offset: 1536)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "clientdata", scope: !492, file: !40, line: 209, baseType: !581, size: 64, align: 64, offset: 2496)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64, align: 64)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perpackagestate", file: !110, line: 53, size: 256, align: 64, elements: !583)
!583 = !{!584, !585, !586, !587, !588, !589}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "istobe", scope: !582, file: !110, line: 54, baseType: !109, size: 32, align: 32)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !582, file: !110, line: 57, baseType: !117, size: 32, align: 32, offset: 32)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !582, file: !110, line: 59, baseType: !537, size: 8, align: 8, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "replacingfilesandsaid", scope: !582, file: !110, line: 61, baseType: !168, size: 32, align: 32, offset: 96)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "cmdline_seen", scope: !582, file: !110, line: 62, baseType: !168, size: 32, align: 32, offset: 128)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "trigprocdeferred", scope: !582, file: !110, line: 65, baseType: !485, size: 64, align: 64, offset: 192)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "archives", scope: !492, file: !40, line: 211, baseType: !591, size: 64, align: 64, offset: 2560)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64, align: 64)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archivedetails", file: !40, line: 87, size: 320, align: 64, elements: !593)
!593 = !{!594, !595, !596, !597, !598}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !592, file: !40, line: 88, baseType: !591, size: 64, align: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !592, file: !40, line: 89, baseType: !155, size: 64, align: 64, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "msdosname", scope: !592, file: !40, line: 90, baseType: !155, size: 64, align: 64, offset: 128)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !592, file: !40, line: 91, baseType: !155, size: 64, align: 64, offset: 192)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "md5sum", scope: !592, file: !40, line: 92, baseType: !155, size: 64, align: 64, offset: 256)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "trigaw", scope: !492, file: !40, line: 216, baseType: !600, size: 128, align: 64, offset: 2624)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !492, file: !40, line: 213, size: 128, align: 64, elements: !601)
!601 = !{!602, !614}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !600, file: !40, line: 215, baseType: !603, size: 64, align: 64)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64, align: 64)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigaw", file: !40, line: 142, size: 320, align: 64, elements: !605)
!605 = !{!606, !607, !608, !609}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "aw", scope: !604, file: !40, line: 143, baseType: !491, size: 64, align: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "pend", scope: !604, file: !40, line: 143, baseType: !491, size: 64, align: 64, offset: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "samepend_next", scope: !604, file: !40, line: 144, baseType: !603, size: 64, align: 64, offset: 128)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "sameaw", scope: !604, file: !40, line: 147, baseType: !610, size: 128, align: 64, offset: 192)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !604, file: !40, line: 145, size: 128, align: 64, elements: !611)
!611 = !{!612, !613}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !610, file: !40, line: 146, baseType: !603, size: 64, align: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !610, file: !40, line: 146, baseType: !603, size: 64, align: 64, offset: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !600, file: !40, line: 215, baseType: !603, size: 64, align: 64, offset: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "othertrigaw_head", scope: !492, file: !40, line: 219, baseType: !603, size: 64, align: 64, offset: 2752)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "trigpend_head", scope: !492, file: !40, line: 220, baseType: !617, size: 64, align: 64, offset: 2816)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64, align: 64)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigpend", file: !40, line: 134, size: 128, align: 64, elements: !619)
!619 = !{!620, !621}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !618, file: !40, line: 135, baseType: !617, size: 64, align: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !618, file: !40, line: 136, baseType: !155, size: 64, align: 64, offset: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !492, file: !40, line: 231, baseType: !623, size: 64, align: 64, offset: 2880)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64, align: 64)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode_list", file: !123, line: 122, size: 128, align: 64, elements: !625)
!625 = !{!626, !627}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !624, file: !123, line: 123, baseType: !623, size: 64, align: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "namenode", scope: !624, file: !123, line: 124, baseType: !479, size: 64, align: 64, offset: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_phys_offs", scope: !492, file: !40, line: 232, baseType: !629, size: 64, align: 64, offset: 2944)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !146, line: 86, baseType: !347)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_valid", scope: !492, file: !40, line: 233, baseType: !537, size: 8, align: 8, offset: 3008)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "status_dirty", scope: !492, file: !40, line: 236, baseType: !537, size: 8, align: 8, offset: 3016)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "divert", scope: !480, file: !123, line: 94, baseType: !633, size: 64, align: 64, offset: 192)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64, align: 64)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_diversion", file: !123, line: 151, size: 256, align: 64, elements: !635)
!635 = !{!636, !637, !638, !639}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "useinstead", scope: !634, file: !123, line: 152, baseType: !479, size: 64, align: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "camefrom", scope: !634, file: !123, line: 153, baseType: !479, size: 64, align: 64, offset: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "pkgset", scope: !634, file: !123, line: 154, baseType: !495, size: 64, align: 64, offset: 128)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !634, file: !123, line: 157, baseType: !633, size: 64, align: 64, offset: 192)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "statoverride", scope: !480, file: !123, line: 101, baseType: !255, size: 64, align: 64, offset: 256)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "trig_interested", scope: !480, file: !123, line: 103, baseType: !642, size: 64, align: 64, offset: 320)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64, align: 64)
!643 = !DICompositeType(tag: DW_TAG_structure_type, name: "trigfileint", file: !123, line: 103, flags: DIFlagFwdDecl)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !480, file: !123, line: 111, baseType: !122, size: 32, align: 32, offset: 384)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "oldhash", scope: !480, file: !123, line: 114, baseType: !155, size: 64, align: 64, offset: 448)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "newhash", scope: !480, file: !123, line: 117, baseType: !155, size: 64, align: 64, offset: 512)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "file_ondisk_id", scope: !480, file: !123, line: 119, baseType: !648, size: 64, align: 64, offset: 576)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64, align: 64)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ondisk_id", file: !123, line: 85, size: 128, align: 64, elements: !650)
!650 = !{!651, !653}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "id_dev", scope: !649, file: !123, line: 86, baseType: !652, size: 64, align: 64)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !146, line: 60, baseType: !335)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "id_ino", scope: !649, file: !123, line: 87, baseType: !654, size: 64, align: 64, offset: 64)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !146, line: 48, baseType: !338)
!655 = !DILocation(line: 344, column: 24, scope: !471)
!656 = !DILocalVariable(name: "thisarg", scope: !471, file: !154, line: 345, type: !155)
!657 = !DILocation(line: 345, column: 14, scope: !471)
!658 = !DILocalVariable(name: "glob_list", scope: !471, file: !154, line: 346, type: !659)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64, align: 64)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "glob_node", file: !661, line: 34, size: 128, align: 64, elements: !662)
!661 = !DIFile(filename: "../lib/dpkg/glob.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-statoverride")
!662 = !{!663, !664}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !660, file: !661, line: 35, baseType: !659, size: 64, align: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "pattern", scope: !660, file: !661, line: 36, baseType: !251, size: 64, align: 64, offset: 64)
!665 = !DILocation(line: 346, column: 20, scope: !471)
!666 = !DILocalVariable(name: "ret", scope: !471, file: !154, line: 347, type: !168)
!667 = !DILocation(line: 347, column: 6, scope: !471)
!668 = !DILocation(line: 349, column: 2, scope: !471)
!669 = !DILocation(line: 349, column: 25, scope: !670)
!670 = !DILexicalBlockFile(scope: !471, file: !154, discriminator: 1)
!671 = !DILocation(line: 349, column: 20, scope: !670)
!672 = !DILocation(line: 349, column: 18, scope: !670)
!673 = !DILocation(line: 349, column: 2, scope: !670)
!674 = !DILocalVariable(name: "pattern", scope: !675, file: !154, line: 350, type: !251)
!675 = distinct !DILexicalBlock(scope: !471, file: !154, line: 349, column: 30)
!676 = !DILocation(line: 350, column: 9, scope: !675)
!677 = !DILocation(line: 350, column: 32, scope: !675)
!678 = !DILocation(line: 350, column: 19, scope: !675)
!679 = !DILocation(line: 352, column: 33, scope: !675)
!680 = !DILocation(line: 352, column: 3, scope: !675)
!681 = !DILocation(line: 349, column: 2, scope: !682)
!682 = !DILexicalBlockFile(scope: !471, file: !154, discriminator: 2)
!683 = distinct !{!683, !668}
!684 = !DILocation(line: 354, column: 6, scope: !685)
!685 = distinct !DILexicalBlock(scope: !471, file: !154, line: 354, column: 6)
!686 = !DILocation(line: 354, column: 16, scope: !685)
!687 = !DILocation(line: 354, column: 6, scope: !471)
!688 = !DILocation(line: 355, column: 33, scope: !685)
!689 = !DILocation(line: 355, column: 3, scope: !690)
!690 = !DILexicalBlockFile(scope: !685, file: !154, discriminator: 1)
!691 = !DILocation(line: 355, column: 3, scope: !685)
!692 = !DILocation(line: 357, column: 9, scope: !471)
!693 = !DILocation(line: 357, column: 7, scope: !471)
!694 = !DILocation(line: 358, column: 2, scope: !471)
!695 = !DILocation(line: 358, column: 37, scope: !670)
!696 = !DILocation(line: 358, column: 17, scope: !670)
!697 = !DILocation(line: 358, column: 15, scope: !670)
!698 = !DILocation(line: 358, column: 2, scope: !670)
!699 = !DILocalVariable(name: "g", scope: !700, file: !154, line: 359, type: !659)
!700 = distinct !DILexicalBlock(scope: !471, file: !154, line: 358, column: 45)
!701 = !DILocation(line: 359, column: 21, scope: !700)
!702 = !DILocation(line: 361, column: 12, scope: !703)
!703 = distinct !DILexicalBlock(scope: !700, file: !154, line: 361, column: 3)
!704 = !DILocation(line: 361, column: 10, scope: !703)
!705 = !DILocation(line: 361, column: 8, scope: !703)
!706 = !DILocation(line: 361, column: 23, scope: !707)
!707 = !DILexicalBlockFile(scope: !708, file: !154, discriminator: 1)
!708 = distinct !DILexicalBlock(scope: !703, file: !154, line: 361, column: 3)
!709 = !DILocation(line: 361, column: 3, scope: !707)
!710 = !DILocation(line: 362, column: 16, scope: !711)
!711 = distinct !DILexicalBlock(scope: !712, file: !154, line: 362, column: 8)
!712 = distinct !DILexicalBlock(scope: !708, file: !154, line: 361, column: 39)
!713 = !DILocation(line: 362, column: 19, scope: !711)
!714 = !DILocation(line: 362, column: 28, scope: !711)
!715 = !DILocation(line: 362, column: 34, scope: !711)
!716 = !DILocation(line: 362, column: 8, scope: !711)
!717 = !DILocation(line: 362, column: 43, scope: !711)
!718 = !DILocation(line: 362, column: 8, scope: !712)
!719 = !DILocation(line: 363, column: 22, scope: !720)
!720 = distinct !DILexicalBlock(scope: !711, file: !154, line: 362, column: 49)
!721 = !DILocation(line: 363, column: 30, scope: !720)
!722 = !DILocation(line: 363, column: 5, scope: !720)
!723 = !DILocation(line: 364, column: 9, scope: !720)
!724 = !DILocation(line: 365, column: 5, scope: !720)
!725 = !DILocation(line: 367, column: 3, scope: !712)
!726 = !DILocation(line: 361, column: 30, scope: !727)
!727 = !DILexicalBlockFile(scope: !708, file: !154, discriminator: 2)
!728 = !DILocation(line: 361, column: 33, scope: !727)
!729 = !DILocation(line: 361, column: 28, scope: !727)
!730 = !DILocation(line: 361, column: 3, scope: !727)
!731 = distinct !{!731, !732}
!732 = !DILocation(line: 361, column: 3, scope: !700)
!733 = !DILocation(line: 358, column: 2, scope: !682)
!734 = distinct !{!734, !694}
!735 = !DILocation(line: 369, column: 22, scope: !471)
!736 = !DILocation(line: 369, column: 2, scope: !471)
!737 = !DILocation(line: 371, column: 17, scope: !471)
!738 = !DILocation(line: 371, column: 2, scope: !471)
!739 = !DILocation(line: 373, column: 9, scope: !471)
!740 = !DILocation(line: 373, column: 2, scope: !471)
!741 = distinct !DISubprogram(name: "set_instdir", scope: !154, file: !154, line: 116, type: !175, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !201)
!742 = !DILocalVariable(name: "cip", arg: 1, scope: !741, file: !154, line: 116, type: !177)
!743 = !DILocation(line: 116, column: 35, scope: !741)
!744 = !DILocalVariable(name: "value", arg: 2, scope: !741, file: !154, line: 116, type: !155)
!745 = !DILocation(line: 116, column: 52, scope: !741)
!746 = !DILocation(line: 118, column: 30, scope: !741)
!747 = !DILocation(line: 118, column: 12, scope: !741)
!748 = !DILocation(line: 118, column: 10, scope: !741)
!749 = !DILocation(line: 119, column: 1, scope: !741)
!750 = distinct !DISubprogram(name: "set_root", scope: !154, file: !154, line: 122, type: !175, isLocal: true, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !201)
!751 = !DILocalVariable(name: "cip", arg: 1, scope: !750, file: !154, line: 122, type: !177)
!752 = !DILocation(line: 122, column: 32, scope: !750)
!753 = !DILocalVariable(name: "value", arg: 2, scope: !750, file: !154, line: 122, type: !155)
!754 = !DILocation(line: 122, column: 49, scope: !750)
!755 = !DILocation(line: 124, column: 30, scope: !750)
!756 = !DILocation(line: 124, column: 12, scope: !750)
!757 = !DILocation(line: 124, column: 10, scope: !750)
!758 = !DILocation(line: 125, column: 13, scope: !750)
!759 = !DILocation(line: 125, column: 11, scope: !750)
!760 = !DILocation(line: 126, column: 1, scope: !750)
!761 = distinct !DISubprogram(name: "set_force_obsolete", scope: !154, file: !154, line: 377, type: !175, isLocal: true, isDefinition: true, scopeLine: 378, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !201)
!762 = !DILocalVariable(name: "cip", arg: 1, scope: !761, file: !154, line: 377, type: !177)
!763 = !DILocation(line: 377, column: 42, scope: !761)
!764 = !DILocalVariable(name: "value", arg: 2, scope: !761, file: !154, line: 377, type: !155)
!765 = !DILocation(line: 377, column: 59, scope: !761)
!766 = !DILocation(line: 379, column: 10, scope: !761)
!767 = !DILocation(line: 380, column: 10, scope: !761)
!768 = !DILocation(line: 380, column: 15, scope: !761)
!769 = !DILocation(line: 379, column: 2, scope: !770)
!770 = !DILexicalBlockFile(scope: !761, file: !154, discriminator: 1)
!771 = !DILocation(line: 381, column: 2, scope: !761)
!772 = !DILocation(line: 382, column: 1, scope: !761)
!773 = distinct !DISubprogram(name: "usage", scope: !154, file: !154, line: 72, type: !175, isLocal: true, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !201)
!774 = !DILocalVariable(name: "cip", arg: 1, scope: !773, file: !154, line: 72, type: !177)
!775 = !DILocation(line: 72, column: 29, scope: !773)
!776 = !DILocalVariable(name: "value", arg: 2, scope: !773, file: !154, line: 72, type: !155)
!777 = !DILocation(line: 72, column: 46, scope: !773)
!778 = !DILocation(line: 74, column: 9, scope: !773)
!779 = !DILocation(line: 76, column: 8, scope: !773)
!780 = !DILocation(line: 74, column: 2, scope: !781)
!781 = !DILexicalBlockFile(scope: !773, file: !154, discriminator: 1)
!782 = !DILocation(line: 78, column: 9, scope: !773)
!783 = !DILocation(line: 78, column: 2, scope: !781)
!784 = !DILocation(line: 86, column: 9, scope: !773)
!785 = !DILocation(line: 86, column: 2, scope: !781)
!786 = !DILocation(line: 101, column: 10, scope: !773)
!787 = !DILocation(line: 101, column: 18, scope: !773)
!788 = !DILocation(line: 101, column: 2, scope: !781)
!789 = !DILocation(line: 103, column: 2, scope: !773)
!790 = !DILocation(line: 104, column: 1, scope: !773)
!791 = distinct !DISubprogram(name: "printversion", scope: !154, file: !154, line: 57, type: !175, isLocal: true, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !201)
!792 = !DILocalVariable(name: "cip", arg: 1, scope: !791, file: !154, line: 57, type: !177)
!793 = !DILocation(line: 57, column: 36, scope: !791)
!794 = !DILocalVariable(name: "value", arg: 2, scope: !791, file: !154, line: 57, type: !155)
!795 = !DILocation(line: 57, column: 53, scope: !791)
!796 = !DILocation(line: 59, column: 9, scope: !791)
!797 = !DILocation(line: 59, column: 45, scope: !798)
!798 = !DILexicalBlockFile(scope: !791, file: !154, discriminator: 1)
!799 = !DILocation(line: 59, column: 2, scope: !800)
!800 = !DILexicalBlockFile(scope: !791, file: !154, discriminator: 2)
!801 = !DILocation(line: 62, column: 9, scope: !791)
!802 = !DILocation(line: 62, column: 2, scope: !798)
!803 = !DILocation(line: 66, column: 10, scope: !791)
!804 = !DILocation(line: 66, column: 18, scope: !791)
!805 = !DILocation(line: 66, column: 2, scope: !798)
!806 = !DILocation(line: 68, column: 2, scope: !791)
!807 = !DILocation(line: 69, column: 1, scope: !791)
!808 = distinct !DISubprogram(name: "path_cleanup", scope: !154, file: !154, line: 129, type: !809, isLocal: true, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !201)
!809 = !DISubroutineType(types: !810)
!810 = !{!251, !155}
!811 = !DILocalVariable(name: "path", arg: 1, scope: !808, file: !154, line: 129, type: !155)
!812 = !DILocation(line: 129, column: 26, scope: !808)
!813 = !DILocalVariable(name: "new_path", scope: !808, file: !154, line: 131, type: !251)
!814 = !DILocation(line: 131, column: 8, scope: !808)
!815 = !DILocation(line: 131, column: 28, scope: !808)
!816 = !DILocation(line: 131, column: 19, scope: !808)
!817 = !DILocation(line: 133, column: 27, scope: !808)
!818 = !DILocation(line: 133, column: 2, scope: !808)
!819 = !DILocation(line: 134, column: 6, scope: !820)
!820 = distinct !DILexicalBlock(scope: !808, file: !154, line: 134, column: 6)
!821 = !DILocation(line: 134, column: 18, scope: !820)
!822 = !DILocation(line: 134, column: 28, scope: !823)
!823 = !DILexicalBlockFile(scope: !820, file: !154, discriminator: 1)
!824 = !DILocation(line: 134, column: 34, scope: !823)
!825 = !DILocation(line: 134, column: 21, scope: !823)
!826 = !DILocation(line: 134, column: 44, scope: !823)
!827 = !DILocation(line: 134, column: 6, scope: !823)
!828 = !DILocation(line: 135, column: 11, scope: !820)
!829 = !DILocation(line: 135, column: 3, scope: !823)
!830 = !DILocation(line: 135, column: 3, scope: !820)
!831 = !DILocation(line: 137, column: 9, scope: !808)
!832 = !DILocation(line: 137, column: 2, scope: !808)
!833 = distinct !DISubprogram(name: "statdb_node_find", scope: !154, file: !154, line: 161, type: !834, isLocal: true, isDefinition: true, scopeLine: 162, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !201)
!834 = !DISubroutineType(types: !835)
!835 = !{!254, !155}
!836 = !DILocalVariable(name: "filename", arg: 1, scope: !833, file: !154, line: 161, type: !155)
!837 = !DILocation(line: 161, column: 30, scope: !833)
!838 = !DILocalVariable(name: "file", scope: !833, file: !154, line: 163, type: !479)
!839 = !DILocation(line: 163, column: 24, scope: !833)
!840 = !DILocation(line: 165, column: 29, scope: !833)
!841 = !DILocation(line: 165, column: 9, scope: !833)
!842 = !DILocation(line: 165, column: 7, scope: !833)
!843 = !DILocation(line: 167, column: 10, scope: !833)
!844 = !DILocation(line: 167, column: 16, scope: !833)
!845 = !DILocation(line: 167, column: 2, scope: !833)
!846 = distinct !DISubprogram(name: "statdb_node_new", scope: !154, file: !154, line: 141, type: !847, isLocal: true, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !201)
!847 = !DISubroutineType(types: !848)
!848 = !{!255, !155, !155, !155}
!849 = !DILocalVariable(name: "user", arg: 1, scope: !846, file: !154, line: 141, type: !155)
!850 = !DILocation(line: 141, column: 29, scope: !846)
!851 = !DILocalVariable(name: "group", arg: 2, scope: !846, file: !154, line: 141, type: !155)
!852 = !DILocation(line: 141, column: 47, scope: !846)
!853 = !DILocalVariable(name: "mode", arg: 3, scope: !846, file: !154, line: 141, type: !155)
!854 = !DILocation(line: 141, column: 66, scope: !846)
!855 = !DILocalVariable(name: "filestat", scope: !846, file: !154, line: 143, type: !255)
!856 = !DILocation(line: 143, column: 20, scope: !846)
!857 = !DILocation(line: 145, column: 13, scope: !846)
!858 = !DILocation(line: 145, column: 11, scope: !846)
!859 = !DILocation(line: 147, column: 35, scope: !846)
!860 = !DILocation(line: 147, column: 18, scope: !846)
!861 = !DILocation(line: 147, column: 2, scope: !846)
!862 = !DILocation(line: 147, column: 12, scope: !846)
!863 = !DILocation(line: 147, column: 16, scope: !846)
!864 = !DILocation(line: 148, column: 6, scope: !865)
!865 = distinct !DILexicalBlock(scope: !846, file: !154, line: 148, column: 6)
!866 = !DILocation(line: 148, column: 16, scope: !865)
!867 = !DILocation(line: 148, column: 20, scope: !865)
!868 = !DILocation(line: 148, column: 6, scope: !846)
!869 = !DILocation(line: 149, column: 10, scope: !865)
!870 = !DILocation(line: 149, column: 47, scope: !865)
!871 = !DILocation(line: 149, column: 3, scope: !872)
!872 = !DILexicalBlockFile(scope: !865, file: !154, discriminator: 1)
!873 = !DILocation(line: 149, column: 3, scope: !865)
!874 = !DILocation(line: 150, column: 2, scope: !846)
!875 = !DILocation(line: 150, column: 12, scope: !846)
!876 = !DILocation(line: 150, column: 18, scope: !846)
!877 = !DILocation(line: 151, column: 35, scope: !846)
!878 = !DILocation(line: 151, column: 18, scope: !846)
!879 = !DILocation(line: 151, column: 2, scope: !846)
!880 = !DILocation(line: 151, column: 12, scope: !846)
!881 = !DILocation(line: 151, column: 16, scope: !846)
!882 = !DILocation(line: 152, column: 6, scope: !883)
!883 = distinct !DILexicalBlock(scope: !846, file: !154, line: 152, column: 6)
!884 = !DILocation(line: 152, column: 16, scope: !883)
!885 = !DILocation(line: 152, column: 20, scope: !883)
!886 = !DILocation(line: 152, column: 6, scope: !846)
!887 = !DILocation(line: 153, column: 10, scope: !883)
!888 = !DILocation(line: 153, column: 48, scope: !883)
!889 = !DILocation(line: 153, column: 3, scope: !890)
!890 = !DILexicalBlockFile(scope: !883, file: !154, discriminator: 1)
!891 = !DILocation(line: 153, column: 3, scope: !883)
!892 = !DILocation(line: 154, column: 2, scope: !846)
!893 = !DILocation(line: 154, column: 12, scope: !846)
!894 = !DILocation(line: 154, column: 18, scope: !846)
!895 = !DILocation(line: 155, column: 37, scope: !846)
!896 = !DILocation(line: 155, column: 19, scope: !846)
!897 = !DILocation(line: 155, column: 2, scope: !846)
!898 = !DILocation(line: 155, column: 12, scope: !846)
!899 = !DILocation(line: 155, column: 17, scope: !846)
!900 = !DILocation(line: 157, column: 9, scope: !846)
!901 = !DILocation(line: 157, column: 2, scope: !846)
!902 = distinct !DISubprogram(name: "statdb_node_apply", scope: !154, file: !154, line: 185, type: !903, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !201)
!903 = !DISubroutineType(types: !904)
!904 = !{null, !155, !255}
!905 = !DILocalVariable(name: "filename", arg: 1, scope: !902, file: !154, line: 185, type: !155)
!906 = !DILocation(line: 185, column: 31, scope: !902)
!907 = !DILocalVariable(name: "filestat", arg: 2, scope: !902, file: !154, line: 185, type: !255)
!908 = !DILocation(line: 185, column: 59, scope: !902)
!909 = !DILocation(line: 187, column: 12, scope: !910)
!910 = distinct !DILexicalBlock(scope: !902, file: !154, line: 187, column: 6)
!911 = !DILocation(line: 187, column: 22, scope: !910)
!912 = !DILocation(line: 187, column: 32, scope: !910)
!913 = !DILocation(line: 187, column: 37, scope: !910)
!914 = !DILocation(line: 187, column: 47, scope: !910)
!915 = !DILocation(line: 187, column: 6, scope: !910)
!916 = !DILocation(line: 187, column: 52, scope: !910)
!917 = !DILocation(line: 187, column: 6, scope: !902)
!918 = !DILocation(line: 188, column: 11, scope: !910)
!919 = !DILocation(line: 188, column: 59, scope: !910)
!920 = !DILocation(line: 188, column: 3, scope: !921)
!921 = !DILexicalBlockFile(scope: !910, file: !154, discriminator: 1)
!922 = !DILocation(line: 188, column: 3, scope: !910)
!923 = !DILocation(line: 189, column: 12, scope: !924)
!924 = distinct !DILexicalBlock(scope: !902, file: !154, line: 189, column: 6)
!925 = !DILocation(line: 189, column: 22, scope: !924)
!926 = !DILocation(line: 189, column: 32, scope: !924)
!927 = !DILocation(line: 189, column: 37, scope: !924)
!928 = !DILocation(line: 189, column: 6, scope: !924)
!929 = !DILocation(line: 189, column: 6, scope: !902)
!930 = !DILocation(line: 190, column: 11, scope: !924)
!931 = !DILocation(line: 190, column: 61, scope: !924)
!932 = !DILocation(line: 190, column: 3, scope: !933)
!933 = !DILexicalBlockFile(scope: !924, file: !154, discriminator: 1)
!934 = !DILocation(line: 190, column: 3, scope: !924)
!935 = !DILocation(line: 192, column: 2, scope: !902)
!936 = !DILocation(line: 193, column: 27, scope: !902)
!937 = !DILocation(line: 193, column: 37, scope: !902)
!938 = !DILocation(line: 193, column: 47, scope: !902)
!939 = !DILocation(line: 193, column: 57, scope: !902)
!940 = !DILocation(line: 193, column: 2, scope: !902)
!941 = !DILocation(line: 194, column: 2, scope: !902)
!942 = !DILocation(line: 195, column: 1, scope: !902)
!943 = distinct !DISubprogram(name: "statdb_write", scope: !154, file: !154, line: 227, type: !944, isLocal: true, isDefinition: true, scopeLine: 228, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !201)
!944 = !DISubroutineType(types: !945)
!945 = !{null}
!946 = !DILocalVariable(name: "dbname", scope: !943, file: !154, line: 229, type: !251)
!947 = !DILocation(line: 229, column: 8, scope: !943)
!948 = !DILocalVariable(name: "dbfile", scope: !943, file: !154, line: 230, type: !949)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64, align: 64)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atomic_file", file: !136, line: 40, size: 256, align: 64, elements: !951)
!951 = !{!952, !953, !954, !955}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !950, file: !136, line: 41, baseType: !135, size: 32, align: 32)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !950, file: !136, line: 42, baseType: !251, size: 64, align: 64, offset: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "name_new", scope: !950, file: !136, line: 43, baseType: !251, size: 64, align: 64, offset: 128)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !950, file: !136, line: 44, baseType: !956, size: 64, align: 64, offset: 192)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64, align: 64)
!957 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !958, line: 48, baseType: !959)
!958 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-statoverride")
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !960, line: 241, size: 1728, align: 64, elements: !961)
!960 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-statoverride")
!961 = !{!962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !982, !983, !984, !985, !986, !988, !990, !994, !997, !999, !1000, !1001, !1002, !1003, !1004, !1005}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !959, file: !960, line: 242, baseType: !168, size: 32, align: 32)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !959, file: !960, line: 247, baseType: !251, size: 64, align: 64, offset: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !959, file: !960, line: 248, baseType: !251, size: 64, align: 64, offset: 128)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !959, file: !960, line: 249, baseType: !251, size: 64, align: 64, offset: 192)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !959, file: !960, line: 250, baseType: !251, size: 64, align: 64, offset: 256)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !959, file: !960, line: 251, baseType: !251, size: 64, align: 64, offset: 320)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !959, file: !960, line: 252, baseType: !251, size: 64, align: 64, offset: 384)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !959, file: !960, line: 253, baseType: !251, size: 64, align: 64, offset: 448)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !959, file: !960, line: 254, baseType: !251, size: 64, align: 64, offset: 512)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !959, file: !960, line: 256, baseType: !251, size: 64, align: 64, offset: 576)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !959, file: !960, line: 257, baseType: !251, size: 64, align: 64, offset: 640)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !959, file: !960, line: 258, baseType: !251, size: 64, align: 64, offset: 704)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !959, file: !960, line: 260, baseType: !975, size: 64, align: 64, offset: 768)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64, align: 64)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !960, line: 156, size: 192, align: 64, elements: !977)
!977 = !{!978, !979, !981}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !976, file: !960, line: 157, baseType: !975, size: 64, align: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !976, file: !960, line: 158, baseType: !980, size: 64, align: 64, offset: 64)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64, align: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !976, file: !960, line: 162, baseType: !168, size: 32, align: 32, offset: 128)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !959, file: !960, line: 262, baseType: !980, size: 64, align: 64, offset: 832)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !959, file: !960, line: 264, baseType: !168, size: 32, align: 32, offset: 896)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !959, file: !960, line: 268, baseType: !168, size: 32, align: 32, offset: 928)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !959, file: !960, line: 270, baseType: !347, size: 64, align: 64, offset: 960)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !959, file: !960, line: 274, baseType: !987, size: 16, align: 16, offset: 1024)
!987 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !959, file: !960, line: 275, baseType: !989, size: 8, align: 8, offset: 1040)
!989 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !959, file: !960, line: 276, baseType: !991, size: 8, align: 8, offset: 1048)
!991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 8, align: 8, elements: !992)
!992 = !{!993}
!993 = !DISubrange(count: 1)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !959, file: !960, line: 280, baseType: !995, size: 64, align: 64, offset: 1088)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64, align: 64)
!996 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !960, line: 150, baseType: null)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !959, file: !960, line: 289, baseType: !998, size: 64, align: 64, offset: 1152)
!998 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !148, line: 132, baseType: !348)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !959, file: !960, line: 297, baseType: !144, size: 64, align: 64, offset: 1216)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !959, file: !960, line: 298, baseType: !144, size: 64, align: 64, offset: 1280)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !959, file: !960, line: 299, baseType: !144, size: 64, align: 64, offset: 1344)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !959, file: !960, line: 300, baseType: !144, size: 64, align: 64, offset: 1408)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !959, file: !960, line: 302, baseType: !373, size: 64, align: 64, offset: 1472)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !959, file: !960, line: 303, baseType: !168, size: 32, align: 32, offset: 1536)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !959, file: !960, line: 305, baseType: !1006, size: 160, align: 8, offset: 1568)
!1006 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 160, align: 8, elements: !1007)
!1007 = !{!1008}
!1008 = !DISubrange(count: 20)
!1009 = !DILocation(line: 230, column: 22, scope: !943)
!1010 = !DILocalVariable(name: "iter", scope: !943, file: !154, line: 231, type: !475)
!1011 = !DILocation(line: 231, column: 25, scope: !943)
!1012 = !DILocalVariable(name: "file", scope: !943, file: !154, line: 232, type: !479)
!1013 = !DILocation(line: 232, column: 24, scope: !943)
!1014 = !DILocation(line: 234, column: 11, scope: !943)
!1015 = !DILocation(line: 234, column: 9, scope: !943)
!1016 = !DILocation(line: 235, column: 27, scope: !943)
!1017 = !DILocation(line: 235, column: 11, scope: !943)
!1018 = !DILocation(line: 235, column: 9, scope: !943)
!1019 = !DILocation(line: 236, column: 19, scope: !943)
!1020 = !DILocation(line: 236, column: 2, scope: !943)
!1021 = !DILocation(line: 238, column: 9, scope: !943)
!1022 = !DILocation(line: 238, column: 7, scope: !943)
!1023 = !DILocation(line: 239, column: 2, scope: !943)
!1024 = !DILocation(line: 239, column: 37, scope: !1025)
!1025 = !DILexicalBlockFile(scope: !943, file: !154, discriminator: 1)
!1026 = !DILocation(line: 239, column: 17, scope: !1025)
!1027 = !DILocation(line: 239, column: 15, scope: !1025)
!1028 = !DILocation(line: 239, column: 2, scope: !1025)
!1029 = !DILocation(line: 240, column: 21, scope: !943)
!1030 = !DILocation(line: 240, column: 29, scope: !943)
!1031 = !DILocation(line: 240, column: 33, scope: !943)
!1032 = !DILocation(line: 240, column: 3, scope: !943)
!1033 = !DILocation(line: 239, column: 2, scope: !1034)
!1034 = !DILexicalBlockFile(scope: !943, file: !154, discriminator: 2)
!1035 = distinct !{!1035, !1023}
!1036 = !DILocation(line: 241, column: 22, scope: !943)
!1037 = !DILocation(line: 241, column: 2, scope: !943)
!1038 = !DILocation(line: 243, column: 19, scope: !943)
!1039 = !DILocation(line: 243, column: 2, scope: !943)
!1040 = !DILocation(line: 244, column: 20, scope: !943)
!1041 = !DILocation(line: 244, column: 2, scope: !943)
!1042 = !DILocation(line: 245, column: 21, scope: !943)
!1043 = !DILocation(line: 245, column: 2, scope: !943)
!1044 = !DILocation(line: 246, column: 19, scope: !943)
!1045 = !DILocation(line: 246, column: 2, scope: !943)
!1046 = !DILocation(line: 248, column: 16, scope: !943)
!1047 = !DILocation(line: 248, column: 2, scope: !1025)
!1048 = !DILocation(line: 250, column: 7, scope: !943)
!1049 = !DILocation(line: 250, column: 2, scope: !943)
!1050 = !DILocation(line: 251, column: 1, scope: !943)
!1051 = distinct !DISubprogram(name: "statdb_node_print", scope: !154, file: !154, line: 198, type: !1052, isLocal: true, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !201)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{null, !956, !479}
!1054 = !DILocalVariable(name: "out", arg: 1, scope: !1051, file: !154, line: 198, type: !956)
!1055 = !DILocation(line: 198, column: 25, scope: !1051)
!1056 = !DILocalVariable(name: "file", arg: 2, scope: !1051, file: !154, line: 198, type: !479)
!1057 = !DILocation(line: 198, column: 52, scope: !1051)
!1058 = !DILocalVariable(name: "filestat", scope: !1051, file: !154, line: 200, type: !255)
!1059 = !DILocation(line: 200, column: 20, scope: !1051)
!1060 = !DILocation(line: 200, column: 31, scope: !1051)
!1061 = !DILocation(line: 200, column: 37, scope: !1051)
!1062 = !DILocalVariable(name: "pw", scope: !1051, file: !154, line: 201, type: !1063)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64, align: 64)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !1065, line: 49, size: 384, align: 64, elements: !1066)
!1065 = !DIFile(filename: "/usr/include/pwd.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-statoverride")
!1066 = !{!1067, !1068, !1069, !1070, !1071, !1072, !1073}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !1064, file: !1065, line: 51, baseType: !251, size: 64, align: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !1064, file: !1065, line: 52, baseType: !251, size: 64, align: 64, offset: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !1064, file: !1065, line: 53, baseType: !147, size: 32, align: 32, offset: 128)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !1064, file: !1065, line: 54, baseType: !151, size: 32, align: 32, offset: 160)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !1064, file: !1065, line: 55, baseType: !251, size: 64, align: 64, offset: 192)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !1064, file: !1065, line: 56, baseType: !251, size: 64, align: 64, offset: 256)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !1064, file: !1065, line: 57, baseType: !251, size: 64, align: 64, offset: 320)
!1074 = !DILocation(line: 201, column: 17, scope: !1051)
!1075 = !DILocalVariable(name: "gr", scope: !1051, file: !154, line: 202, type: !1076)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64, align: 64)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !1078, line: 42, size: 256, align: 64, elements: !1079)
!1078 = !DIFile(filename: "/usr/include/grp.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-statoverride")
!1079 = !{!1080, !1081, !1082, !1083}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !1077, file: !1078, line: 44, baseType: !251, size: 64, align: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !1077, file: !1078, line: 45, baseType: !251, size: 64, align: 64, offset: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !1077, file: !1078, line: 46, baseType: !151, size: 32, align: 32, offset: 128)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !1077, file: !1078, line: 47, baseType: !1084, size: 64, align: 64, offset: 192)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64, align: 64)
!1085 = !DILocation(line: 202, column: 16, scope: !1051)
!1086 = !DILocation(line: 204, column: 7, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1051, file: !154, line: 204, column: 6)
!1088 = !DILocation(line: 204, column: 6, scope: !1051)
!1089 = !DILocation(line: 205, column: 3, scope: !1087)
!1090 = !DILocation(line: 207, column: 16, scope: !1051)
!1091 = !DILocation(line: 207, column: 26, scope: !1051)
!1092 = !DILocation(line: 207, column: 7, scope: !1051)
!1093 = !DILocation(line: 207, column: 5, scope: !1051)
!1094 = !DILocation(line: 208, column: 6, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1051, file: !154, line: 208, column: 6)
!1096 = !DILocation(line: 208, column: 6, scope: !1051)
!1097 = !DILocation(line: 209, column: 11, scope: !1095)
!1098 = !DILocation(line: 209, column: 23, scope: !1095)
!1099 = !DILocation(line: 209, column: 27, scope: !1095)
!1100 = !DILocation(line: 209, column: 3, scope: !1095)
!1101 = !DILocation(line: 210, column: 11, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1095, file: !154, line: 210, column: 11)
!1103 = !DILocation(line: 210, column: 21, scope: !1102)
!1104 = !DILocation(line: 210, column: 11, scope: !1095)
!1105 = !DILocation(line: 211, column: 11, scope: !1102)
!1106 = !DILocation(line: 211, column: 23, scope: !1102)
!1107 = !DILocation(line: 211, column: 33, scope: !1102)
!1108 = !DILocation(line: 211, column: 3, scope: !1102)
!1109 = !DILocation(line: 213, column: 11, scope: !1102)
!1110 = !DILocation(line: 213, column: 24, scope: !1102)
!1111 = !DILocation(line: 213, column: 34, scope: !1102)
!1112 = !DILocation(line: 213, column: 3, scope: !1102)
!1113 = !DILocation(line: 215, column: 16, scope: !1051)
!1114 = !DILocation(line: 215, column: 26, scope: !1051)
!1115 = !DILocation(line: 215, column: 7, scope: !1051)
!1116 = !DILocation(line: 215, column: 5, scope: !1051)
!1117 = !DILocation(line: 216, column: 6, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1051, file: !154, line: 216, column: 6)
!1119 = !DILocation(line: 216, column: 6, scope: !1051)
!1120 = !DILocation(line: 217, column: 11, scope: !1118)
!1121 = !DILocation(line: 217, column: 23, scope: !1118)
!1122 = !DILocation(line: 217, column: 27, scope: !1118)
!1123 = !DILocation(line: 217, column: 3, scope: !1118)
!1124 = !DILocation(line: 218, column: 11, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1118, file: !154, line: 218, column: 11)
!1126 = !DILocation(line: 218, column: 21, scope: !1125)
!1127 = !DILocation(line: 218, column: 11, scope: !1118)
!1128 = !DILocation(line: 219, column: 11, scope: !1125)
!1129 = !DILocation(line: 219, column: 23, scope: !1125)
!1130 = !DILocation(line: 219, column: 33, scope: !1125)
!1131 = !DILocation(line: 219, column: 3, scope: !1125)
!1132 = !DILocation(line: 221, column: 11, scope: !1125)
!1133 = !DILocation(line: 221, column: 24, scope: !1125)
!1134 = !DILocation(line: 221, column: 34, scope: !1125)
!1135 = !DILocation(line: 221, column: 3, scope: !1125)
!1136 = !DILocation(line: 223, column: 10, scope: !1051)
!1137 = !DILocation(line: 223, column: 26, scope: !1051)
!1138 = !DILocation(line: 223, column: 36, scope: !1051)
!1139 = !DILocation(line: 223, column: 41, scope: !1051)
!1140 = !DILocation(line: 223, column: 51, scope: !1051)
!1141 = !DILocation(line: 223, column: 57, scope: !1051)
!1142 = !DILocation(line: 223, column: 2, scope: !1051)
!1143 = !DILocation(line: 224, column: 1, scope: !1051)
!1144 = !DILocation(line: 224, column: 1, scope: !1145)
!1145 = !DILexicalBlockFile(scope: !1051, file: !154, discriminator: 1)
!1146 = distinct !DISubprogram(name: "statdb_node_remove", scope: !154, file: !154, line: 171, type: !1147, isLocal: true, isDefinition: true, scopeLine: 172, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !201)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!168, !155}
!1149 = !DILocalVariable(name: "filename", arg: 1, scope: !1146, file: !154, line: 171, type: !155)
!1150 = !DILocation(line: 171, column: 32, scope: !1146)
!1151 = !DILocalVariable(name: "file", scope: !1146, file: !154, line: 173, type: !479)
!1152 = !DILocation(line: 173, column: 24, scope: !1146)
!1153 = !DILocation(line: 175, column: 29, scope: !1146)
!1154 = !DILocation(line: 175, column: 9, scope: !1146)
!1155 = !DILocation(line: 175, column: 7, scope: !1146)
!1156 = !DILocation(line: 176, column: 7, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1146, file: !154, line: 176, column: 6)
!1158 = !DILocation(line: 176, column: 12, scope: !1157)
!1159 = !DILocation(line: 176, column: 16, scope: !1160)
!1160 = !DILexicalBlockFile(scope: !1157, file: !154, discriminator: 1)
!1161 = !DILocation(line: 176, column: 22, scope: !1160)
!1162 = !DILocation(line: 176, column: 6, scope: !1160)
!1163 = !DILocation(line: 177, column: 3, scope: !1157)
!1164 = !DILocation(line: 179, column: 2, scope: !1146)
!1165 = !DILocation(line: 179, column: 8, scope: !1146)
!1166 = !DILocation(line: 179, column: 21, scope: !1146)
!1167 = !DILocation(line: 181, column: 2, scope: !1146)
!1168 = !DILocation(line: 182, column: 1, scope: !1146)
