; ModuleID = './[inter]src--querycmd.o.i'
source_filename = "./[inter]src--querycmd.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cmdinfo = type { i8*, i8, i32, i32*, i8**, void (%struct.cmdinfo*, i8*)*, i32, i8*, i32 (i8**)* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.varbuf = type { i64, i64, i8* }
%struct.fsys_namenode_list = type { %struct.fsys_namenode_list*, %struct.fsys_namenode* }
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
%struct.fsys_diversion = type { %struct.fsys_namenode*, %struct.fsys_namenode*, %struct.pkgset*, %struct.fsys_diversion* }
%struct.file_stat = type { i32, i32, i32, i8*, i8* }
%struct.trigfileint = type opaque
%struct.file_ondisk_id = type { i64, i64 }
%struct.pkg_array = type { i32, %struct.pkginfo** }
%struct.list_format = type { i8, i32, i32, i32, i32 }
%struct.pager = type opaque
%struct.fsys_hash_iter = type opaque
%struct.dpkg_error = type { i32, i32, i8* }
%struct.pkg_format_node = type opaque
%struct.pkg_spec = type { i8*, %struct.dpkg_arch*, i32, i8, i8, %struct.pkg_hash_iter*, %struct.pkginfo* }
%struct.pkg_hash_iter = type opaque
%struct.str_crop_info = type { i32, i32 }
%struct.fsys_node_pkgs_iter = type opaque
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [5 x i8] c"dpkg\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"dpkg-query\00", align 1
@cmdinfos = internal constant [16 x %struct.cmdinfo] [%struct.cmdinfo { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8 76, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 11, i8* null, i32 (i8**)* @list_files }, %struct.cmdinfo { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8 115, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 9, i8* null, i32 (i8**)* @print_status }, %struct.cmdinfo { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8 112, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 38, i8* null, i32 (i8**)* @print_avail }, %struct.cmdinfo { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8 108, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 10, i8* null, i32 (i8**)* @listpackages }, %struct.cmdinfo { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8 83, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 12, i8* null, i32 (i8**)* @searchfiles }, %struct.cmdinfo { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8 87, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 10, i8* null, i32 (i8**)* @showpackages }, %struct.cmdinfo { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i8 99, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 13, i8* null, i32 (i8**)* @control_path }, %struct.cmdinfo { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8 0, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 14, i8* null, i32 (i8**)* @control_list }, %struct.cmdinfo { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i8 0, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 15, i8* null, i32 (i8**)* @control_show }, %struct.cmdinfo { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i8 0, i32 1, i32* null, i8** @admindir, void (%struct.cmdinfo*, i8*)* null, i32 0, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i8 0, i32 0, i32* @opt_loadavail, i8** null, void (%struct.cmdinfo*, i8*)* null, i32 1, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i8 102, i32 1, i32* null, i8** @showformat, void (%struct.cmdinfo*, i8*)* null, i32 0, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8 0, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @set_no_pager, i32 0, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8 63, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @usage, i32 0, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8 0, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @printversion, i32 0, i8* null, i32 (i8**)* null }, %struct.cmdinfo zeroinitializer], align 16
@printforhelp = internal constant [45 x i8] c"Use --help for help about querying packages.\00", align 16
@admindir = internal global i8* null, align 8
@cipaction = external global %struct.cmdinfo*, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"need an action option\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"listfiles\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"print-avail\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"search\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"show\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"control-path\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"control-list\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"control-show\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"admindir\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"load-avail\00", align 1
@opt_loadavail = internal global i32 0, align 4
@.str.14 = private unnamed_addr constant [11 x i8] c"showformat\00", align 1
@showformat = internal global i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.61, i32 0, i32 0), align 8
@.str.15 = private unnamed_addr constant [9 x i8] c"no-pager\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.18 = private unnamed_addr constant [46 x i8] c"--%s needs at least one package name argument\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"package '%s' is not installed\00", align 1
@.str.20 = private unnamed_addr constant [45 x i8] c"Package '%s' does not contain any files (!)\0A\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"locally diverted to: %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"package diverts others to: %s\0A\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"diverted by %s to: %s\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.24 = private unnamed_addr constant [18 x i8] c"<standard output>\00", align 1
@.str.25 = private unnamed_addr constant [77 x i8] c"Use dpkg --contents (= dpkg-deb --contents) to list archive files contents.\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.26 = private unnamed_addr constant [17 x i8] c"<standard error>\00", align 1
@.str.27 = private unnamed_addr constant [62 x i8] c"package '%s' is not installed and no information is available\00", align 1
@.str.28 = private unnamed_addr constant [63 x i8] c"Use dpkg --info (= dpkg-deb --info) to examine archive files.\0A\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"package '%s' is not available\00", align 1
@.str.30 = private unnamed_addr constant [30 x i8] c"showing package list on pager\00", align 1
@.str.31 = private unnamed_addr constant [181 x i8] c"Desired=Unknown/Install/Remove/Purge/Hold\0A| Status=Not/Inst/Conf-files/Unpacked/halF-conf/Half-inst/trig-aWait/Trig-pend\0A|/ Err?=(none)/Reinst-required (Status,Err: uppercase=bad)\0A\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"Version\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"Architecture\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"Description\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"+++-\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.40 = private unnamed_addr constant [34 x i8] c"%c%c%c %-*.*s %-*.*s %-*.*s %.*s\0A\00", align 1
@.str.41 = private unnamed_addr constant [30 x i8] c"no packages found matching %s\00", align 1
@searchfiles.vb = internal global %struct.varbuf zeroinitializer, align 8
@.str.42 = private unnamed_addr constant [55 x i8] c"--search needs at least one file name pattern argument\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"*[?/\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"*[?\5C\00", align 1
@.str.45 = private unnamed_addr constant [34 x i8] c"no path found matching pattern %s\00", align 1
@.str.46 = private unnamed_addr constant [26 x i8] c"diversion by %s from: %s\0A\00", align 1
@.str.47 = private unnamed_addr constant [24 x i8] c"diversion by %s to: %s\0A\00", align 1
@.str.48 = private unnamed_addr constant [26 x i8] c"local diversion from: %s\0A\00", align 1
@.str.49 = private unnamed_addr constant [24 x i8] c"local diversion to: %s\0A\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c": %s\0A\00", align 1
@.str.52 = private unnamed_addr constant [25 x i8] c"error in show format: %s\00", align 1
@.str.53 = private unnamed_addr constant [33 x i8] c"--%s takes at most two arguments\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"/.\00", align 1
@.str.55 = private unnamed_addr constant [25 x i8] c"control file contains %c\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"conffiles\00", align 1
@.str.58 = private unnamed_addr constant [37 x i8] c"--%s takes one package name argument\00", align 1
@.str.59 = private unnamed_addr constant [33 x i8] c"--%s takes exactly two arguments\00", align 1
@.str.60 = private unnamed_addr constant [33 x i8] c"control file '%s' does not exist\00", align 1
@.str.61 = private unnamed_addr constant [30 x i8] c"${binary:Package}\09${Version}\0A\00", align 1
@.str.62 = private unnamed_addr constant [37 x i8] c"Usage: %s [<option> ...] <command>\0A\0A\00", align 1
@.str.63 = private unnamed_addr constant [700 x i8] c"Commands:\0A  -s, --status [<package>...]      Display package status details.\0A  -p, --print-avail [<package>...] Display available version details.\0A  -L, --listfiles <package>...     List files 'owned' by package(s).\0A  -l, --list [<pattern>...]        List packages concisely.\0A  -W, --show [<pattern>...]        Show information on package(s).\0A  -S, --search <pattern>...        Find package(s) owning file(s).\0A      --control-list <package>     Print the package control file list.\0A      --control-show <package> <file>\0A                                   Show the package control file.\0A  -c, --control-path <package> [<file>]\0A                                   Print path for package control file.\0A\0A\00", align 1
@.str.64 = private unnamed_addr constant [114 x i8] c"  -?, --help                       Show this help message.\0A      --version                    Show the version.\0A\0A\00", align 1
@.str.65 = private unnamed_addr constant [223 x i8] c"Options:\0A  --admindir=<directory>           Use <directory> instead of %s.\0A  --load-avail                     Use available file on --show and --list.\0A  -f|--showformat=<format>         Use alternative format for --show.\0A\0A\00", align 1
@.str.66 = private unnamed_addr constant [24 x i8] c"/usr/local/var/lib/dpkg\00", align 1
@.str.67 = private unnamed_addr constant [421 x i8] c"Format syntax:\0A  A format is a string that will be output for each package. The format\0A  can include the standard escape sequences \5Cn (newline), \5Cr (carriage\0A  return) or \5C\5C (plain backslash). Package information can be included\0A  by inserting variable references to package fields using the ${var[;width]}\0A  syntax. Fields will be right-aligned unless the width is negative in which\0A  case left alignment will be used.\0A\00", align 1
@.str.68 = private unnamed_addr constant [61 x i8] c"Debian %s package management program query tool version %s.\0A\00", align 1
@.str.69 = private unnamed_addr constant [25 x i8] c"1.19.5-19-g1da50 (amd64)\00", align 1
@.str.70 = private unnamed_addr constant [124 x i8] c"This is free software; see the GNU General Public License version 2 or\0Alater for copying conditions. There is NO warranty.\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32, i8**) #0 !dbg !197 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !200, metadata !201), !dbg !202
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !203, metadata !201), !dbg !204
  call void @llvm.dbg.declare(metadata i32* %6, metadata !205, metadata !201), !dbg !206
  call void @dpkg_set_report_piped_mode(i32 0), !dbg !207
  call void @dpkg_locales_init(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)), !dbg !208
  call void @dpkg_program_init(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0)), !dbg !209
  call void @dpkg_options_parse(i8*** %5, %struct.cmdinfo* getelementptr inbounds ([16 x %struct.cmdinfo], [16 x %struct.cmdinfo]* @cmdinfos, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @printforhelp, i32 0, i32 0)), !dbg !210
  %7 = load i8*, i8** @admindir, align 8, !dbg !211
  %8 = call i8* @dpkg_db_set_dir(i8* %7), !dbg !212
  store i8* %8, i8** @admindir, align 8, !dbg !213
  %9 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !214
  %10 = icmp ne %struct.cmdinfo* %9, null, !dbg !214
  br i1 %10, label %13, label %11, !dbg !216

; <label>:11:                                     ; preds = %2
  %12 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0)) #10, !dbg !217
  call void (i8*, ...) @badusage(i8* %12) #11, !dbg !219
  unreachable, !dbg !221

; <label>:13:                                     ; preds = %2
  call void @fsys_hash_init(), !dbg !222
  %14 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !223
  %15 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %14, i32 0, i32 8, !dbg !224
  %16 = load i32 (i8**)*, i32 (i8**)** %15, align 8, !dbg !224
  %17 = load i8**, i8*** %5, align 8, !dbg !225
  %18 = call i32 %16(i8** %17), !dbg !223
  store i32 %18, i32* %6, align 4, !dbg !226
  call void @dpkg_program_done(), !dbg !227
  %19 = load i32, i32* %6, align 4, !dbg !228
  %20 = icmp ne i32 %19, 0, !dbg !229
  %21 = xor i1 %20, true, !dbg !229
  %22 = xor i1 %21, true, !dbg !230
  %23 = zext i1 %22 to i32, !dbg !230
  ret i32 %23, !dbg !231
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @dpkg_set_report_piped_mode(i32) #2

declare void @dpkg_locales_init(i8*) #2

declare void @dpkg_program_init(i8*) #2

declare void @dpkg_options_parse(i8***, %struct.cmdinfo*, i8*) #2

declare i8* @dpkg_db_set_dir(i8*) #2

; Function Attrs: noreturn
declare void @badusage(i8*, ...) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare void @fsys_hash_init() #2

declare void @dpkg_program_done() #2

declare void @setaction(%struct.cmdinfo*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @list_files(i8**) #0 !dbg !232 {
  %2 = alloca i8**, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.fsys_namenode_list*, align 8
  %5 = alloca %struct.pkginfo*, align 8
  %6 = alloca %struct.fsys_namenode*, align 8
  %7 = alloca i32, align 4
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !233, metadata !201), !dbg !234
  call void @llvm.dbg.declare(metadata i8** %3, metadata !235, metadata !201), !dbg !236
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode_list** %4, metadata !237, metadata !201), !dbg !436
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %5, metadata !437, metadata !201), !dbg !438
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %6, metadata !439, metadata !201), !dbg !440
  call void @llvm.dbg.declare(metadata i32* %7, metadata !441, metadata !201), !dbg !442
  store i32 0, i32* %7, align 4, !dbg !442
  %8 = load i8**, i8*** %2, align 8, !dbg !443
  %9 = load i8*, i8** %8, align 8, !dbg !445
  %10 = icmp ne i8* %9, null, !dbg !445
  br i1 %10, label %16, label %11, !dbg !446

; <label>:11:                                     ; preds = %1
  %12 = call i8* @gettext(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.18, i32 0, i32 0)) #10, !dbg !447
  %13 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !448
  %14 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %13, i32 0, i32 0, !dbg !449
  %15 = load i8*, i8** %14, align 8, !dbg !449
  call void (i8*, ...) @badusage(i8* %12, i8* %15) #11, !dbg !450
  unreachable, !dbg !452

; <label>:16:                                     ; preds = %1
  %17 = call i32 @modstatdb_open(i32 0), !dbg !453
  br label %18, !dbg !454

; <label>:18:                                     ; preds = %139, %16
  %19 = load i8**, i8*** %2, align 8, !dbg !455
  %20 = getelementptr inbounds i8*, i8** %19, i32 1, !dbg !455
  store i8** %20, i8*** %2, align 8, !dbg !455
  %21 = load i8*, i8** %19, align 8, !dbg !457
  store i8* %21, i8** %3, align 8, !dbg !458
  %22 = icmp ne i8* %21, null, !dbg !459
  br i1 %22, label %23, label %140, !dbg !460

; <label>:23:                                     ; preds = %18
  %24 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !461
  %25 = load i8*, i8** %3, align 8, !dbg !463
  %26 = call %struct.pkginfo* @dpkg_options_parse_pkgname(%struct.cmdinfo* %24, i8* %25), !dbg !464
  store %struct.pkginfo* %26, %struct.pkginfo** %5, align 8, !dbg !465
  %27 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !466
  %28 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %27, i32 0, i32 4, !dbg !467
  %29 = load i32, i32* %28, align 8, !dbg !467
  switch i32 %29, label %36 [
    i32 0, label %30
  ], !dbg !468

; <label>:30:                                     ; preds = %23
  %31 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i32 0, i32 0)) #10, !dbg !469
  %32 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !471
  %33 = call i8* @pkg_name(%struct.pkginfo* %32, i32 1), !dbg !472
  call void (i8*, ...) @notice(i8* %31, i8* %33), !dbg !473
  %34 = load i32, i32* %7, align 4, !dbg !475
  %35 = add nsw i32 %34, 1, !dbg !475
  store i32 %35, i32* %7, align 4, !dbg !475
  br label %133, !dbg !476

; <label>:36:                                     ; preds = %23
  %37 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !477
  call void @ensure_packagefiles_available(%struct.pkginfo* %37), !dbg !478
  call void @ensure_diversions(), !dbg !479
  %38 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !480
  %39 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %38, i32 0, i32 16, !dbg !481
  %40 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %39, align 8, !dbg !481
  store %struct.fsys_namenode_list* %40, %struct.fsys_namenode_list** %4, align 8, !dbg !482
  %41 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %4, align 8, !dbg !483
  %42 = icmp ne %struct.fsys_namenode_list* %41, null, !dbg !483
  br i1 %42, label %48, label %43, !dbg !485

; <label>:43:                                     ; preds = %36
  %44 = call i8* @gettext(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.20, i32 0, i32 0)) #10, !dbg !486
  %45 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !488
  %46 = call i8* @pkg_name(%struct.pkginfo* %45, i32 1), !dbg !489
  %47 = call i32 (i8*, ...) @printf(i8* %44, i8* %46), !dbg !490
  br label %132, !dbg !492

; <label>:48:                                     ; preds = %36
  br label %49, !dbg !493

; <label>:49:                                     ; preds = %127, %48
  %50 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %4, align 8, !dbg !495
  %51 = icmp ne %struct.fsys_namenode_list* %50, null, !dbg !497
  br i1 %51, label %52, label %131, !dbg !497

; <label>:52:                                     ; preds = %49
  %53 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %4, align 8, !dbg !498
  %54 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %53, i32 0, i32 1, !dbg !500
  %55 = load %struct.fsys_namenode*, %struct.fsys_namenode** %54, align 8, !dbg !500
  store %struct.fsys_namenode* %55, %struct.fsys_namenode** %6, align 8, !dbg !501
  %56 = load %struct.fsys_namenode*, %struct.fsys_namenode** %6, align 8, !dbg !502
  %57 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %56, i32 0, i32 1, !dbg !503
  %58 = load i8*, i8** %57, align 8, !dbg !503
  %59 = call i32 @puts(i8* %58), !dbg !504
  %60 = load %struct.fsys_namenode*, %struct.fsys_namenode** %6, align 8, !dbg !505
  %61 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %60, i32 0, i32 3, !dbg !507
  %62 = load %struct.fsys_diversion*, %struct.fsys_diversion** %61, align 8, !dbg !507
  %63 = icmp ne %struct.fsys_diversion* %62, null, !dbg !505
  br i1 %63, label %64, label %127, !dbg !508

; <label>:64:                                     ; preds = %52
  %65 = load %struct.fsys_namenode*, %struct.fsys_namenode** %6, align 8, !dbg !509
  %66 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %65, i32 0, i32 3, !dbg !511
  %67 = load %struct.fsys_diversion*, %struct.fsys_diversion** %66, align 8, !dbg !511
  %68 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %67, i32 0, i32 1, !dbg !512
  %69 = load %struct.fsys_namenode*, %struct.fsys_namenode** %68, align 8, !dbg !512
  %70 = icmp ne %struct.fsys_namenode* %69, null, !dbg !509
  br i1 %70, label %127, label %71, !dbg !513

; <label>:71:                                     ; preds = %64
  %72 = load %struct.fsys_namenode*, %struct.fsys_namenode** %6, align 8, !dbg !514
  %73 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %72, i32 0, i32 3, !dbg !517
  %74 = load %struct.fsys_diversion*, %struct.fsys_diversion** %73, align 8, !dbg !517
  %75 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %74, i32 0, i32 2, !dbg !518
  %76 = load %struct.pkgset*, %struct.pkgset** %75, align 8, !dbg !518
  %77 = icmp ne %struct.pkgset* %76, null, !dbg !514
  br i1 %77, label %88, label %78, !dbg !519

; <label>:78:                                     ; preds = %71
  %79 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i32 0, i32 0)) #10, !dbg !520
  %80 = load %struct.fsys_namenode*, %struct.fsys_namenode** %6, align 8, !dbg !521
  %81 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %80, i32 0, i32 3, !dbg !522
  %82 = load %struct.fsys_diversion*, %struct.fsys_diversion** %81, align 8, !dbg !522
  %83 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %82, i32 0, i32 0, !dbg !523
  %84 = load %struct.fsys_namenode*, %struct.fsys_namenode** %83, align 8, !dbg !523
  %85 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %84, i32 0, i32 1, !dbg !524
  %86 = load i8*, i8** %85, align 8, !dbg !524
  %87 = call i32 (i8*, ...) @printf(i8* %79, i8* %86), !dbg !525
  br label %126, !dbg !527

; <label>:88:                                     ; preds = %71
  %89 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !528
  %90 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %89, i32 0, i32 0, !dbg !530
  %91 = load %struct.pkgset*, %struct.pkgset** %90, align 8, !dbg !530
  %92 = load %struct.fsys_namenode*, %struct.fsys_namenode** %6, align 8, !dbg !531
  %93 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %92, i32 0, i32 3, !dbg !532
  %94 = load %struct.fsys_diversion*, %struct.fsys_diversion** %93, align 8, !dbg !532
  %95 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %94, i32 0, i32 2, !dbg !533
  %96 = load %struct.pkgset*, %struct.pkgset** %95, align 8, !dbg !533
  %97 = icmp eq %struct.pkgset* %91, %96, !dbg !534
  br i1 %97, label %98, label %108, !dbg !535

; <label>:98:                                     ; preds = %88
  %99 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.22, i32 0, i32 0)) #10, !dbg !536
  %100 = load %struct.fsys_namenode*, %struct.fsys_namenode** %6, align 8, !dbg !537
  %101 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %100, i32 0, i32 3, !dbg !538
  %102 = load %struct.fsys_diversion*, %struct.fsys_diversion** %101, align 8, !dbg !538
  %103 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %102, i32 0, i32 0, !dbg !539
  %104 = load %struct.fsys_namenode*, %struct.fsys_namenode** %103, align 8, !dbg !539
  %105 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %104, i32 0, i32 1, !dbg !540
  %106 = load i8*, i8** %105, align 8, !dbg !540
  %107 = call i32 (i8*, ...) @printf(i8* %99, i8* %106), !dbg !541
  br label %125, !dbg !543

; <label>:108:                                    ; preds = %88
  %109 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i32 0, i32 0)) #10, !dbg !544
  %110 = load %struct.fsys_namenode*, %struct.fsys_namenode** %6, align 8, !dbg !545
  %111 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %110, i32 0, i32 3, !dbg !546
  %112 = load %struct.fsys_diversion*, %struct.fsys_diversion** %111, align 8, !dbg !546
  %113 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %112, i32 0, i32 2, !dbg !547
  %114 = load %struct.pkgset*, %struct.pkgset** %113, align 8, !dbg !547
  %115 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %114, i32 0, i32 1, !dbg !548
  %116 = load i8*, i8** %115, align 8, !dbg !548
  %117 = load %struct.fsys_namenode*, %struct.fsys_namenode** %6, align 8, !dbg !549
  %118 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %117, i32 0, i32 3, !dbg !550
  %119 = load %struct.fsys_diversion*, %struct.fsys_diversion** %118, align 8, !dbg !550
  %120 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %119, i32 0, i32 0, !dbg !551
  %121 = load %struct.fsys_namenode*, %struct.fsys_namenode** %120, align 8, !dbg !551
  %122 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %121, i32 0, i32 1, !dbg !552
  %123 = load i8*, i8** %122, align 8, !dbg !552
  %124 = call i32 (i8*, ...) @printf(i8* %109, i8* %116, i8* %123), !dbg !553
  br label %125

; <label>:125:                                    ; preds = %108, %98
  br label %126

; <label>:126:                                    ; preds = %125, %78
  br label %127, !dbg !554

; <label>:127:                                    ; preds = %126, %64, %52
  %128 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %4, align 8, !dbg !555
  %129 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %128, i32 0, i32 0, !dbg !556
  %130 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %129, align 8, !dbg !556
  store %struct.fsys_namenode_list* %130, %struct.fsys_namenode_list** %4, align 8, !dbg !557
  br label %49, !dbg !558, !llvm.loop !560

; <label>:131:                                    ; preds = %49
  br label %132

; <label>:132:                                    ; preds = %131, %43
  br label %133, !dbg !561

; <label>:133:                                    ; preds = %132, %30
  %134 = load i8**, i8*** %2, align 8, !dbg !562
  %135 = load i8*, i8** %134, align 8, !dbg !564
  %136 = icmp ne i8* %135, null, !dbg !565
  br i1 %136, label %137, label %139, !dbg !566

; <label>:137:                                    ; preds = %133
  %138 = call i32 @putchar(i32 10), !dbg !567
  br label %139, !dbg !567

; <label>:139:                                    ; preds = %137, %133
  br label %18, !dbg !568, !llvm.loop !570

; <label>:140:                                    ; preds = %18
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !571
  %142 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0)) #10, !dbg !572
  call void @m_output(%struct._IO_FILE* %141, i8* %142), !dbg !573
  %143 = load i32, i32* %7, align 4, !dbg !574
  %144 = icmp ne i32 %143, 0, !dbg !574
  br i1 %144, label %145, label %151, !dbg !576

; <label>:145:                                    ; preds = %140
  %146 = call i8* @gettext(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.25, i32 0, i32 0)) #10, !dbg !577
  %147 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !579
  %148 = call i32 @fputs(i8* %146, %struct._IO_FILE* %147), !dbg !580
  %149 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !582
  %150 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i32 0, i32 0)) #10, !dbg !583
  call void @m_output(%struct._IO_FILE* %149, i8* %150), !dbg !584
  br label %151, !dbg !585

; <label>:151:                                    ; preds = %145, %140
  call void @modstatdb_shutdown(), !dbg !586
  %152 = load i32, i32* %7, align 4, !dbg !587
  ret i32 %152, !dbg !588
}

; Function Attrs: nounwind uwtable
define internal i32 @print_status(i8**) #0 !dbg !589 {
  %2 = alloca i8**, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.pkginfo*, align 8
  %5 = alloca i32, align 4
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !590, metadata !201), !dbg !591
  call void @llvm.dbg.declare(metadata i8** %3, metadata !592, metadata !201), !dbg !593
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %4, metadata !594, metadata !201), !dbg !595
  call void @llvm.dbg.declare(metadata i32* %5, metadata !596, metadata !201), !dbg !597
  store i32 0, i32* %5, align 4, !dbg !597
  %6 = call i32 @modstatdb_open(i32 0), !dbg !598
  %7 = load i8**, i8*** %2, align 8, !dbg !599
  %8 = load i8*, i8** %7, align 8, !dbg !601
  %9 = icmp ne i8* %8, null, !dbg !601
  br i1 %9, label %13, label %10, !dbg !602

; <label>:10:                                     ; preds = %1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !603
  %12 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0)) #10, !dbg !605
  call void @writedb_records(%struct._IO_FILE* %11, i8* %12, i32 0), !dbg !606
  br label %72, !dbg !608

; <label>:13:                                     ; preds = %1
  br label %14, !dbg !609

; <label>:14:                                     ; preds = %70, %13
  %15 = load i8**, i8*** %2, align 8, !dbg !611
  %16 = getelementptr inbounds i8*, i8** %15, i32 1, !dbg !611
  store i8** %16, i8*** %2, align 8, !dbg !611
  %17 = load i8*, i8** %15, align 8, !dbg !613
  store i8* %17, i8** %3, align 8, !dbg !614
  %18 = icmp ne i8* %17, null, !dbg !615
  br i1 %18, label %19, label %71, !dbg !616

; <label>:19:                                     ; preds = %14
  %20 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !617
  %21 = load i8*, i8** %3, align 8, !dbg !619
  %22 = call %struct.pkginfo* @dpkg_options_parse_pkgname(%struct.cmdinfo* %20, i8* %21), !dbg !620
  store %struct.pkginfo* %22, %struct.pkginfo** %4, align 8, !dbg !621
  %23 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !622
  %24 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %23, i32 0, i32 4, !dbg !624
  %25 = load i32, i32* %24, align 8, !dbg !624
  %26 = icmp eq i32 %25, 0, !dbg !625
  br i1 %26, label %27, label %58, !dbg !626

; <label>:27:                                     ; preds = %19
  %28 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !627
  %29 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %28, i32 0, i32 5, !dbg !628
  %30 = load i32, i32* %29, align 4, !dbg !628
  %31 = icmp eq i32 %30, 6, !dbg !629
  br i1 %31, label %32, label %58, !dbg !630

; <label>:32:                                     ; preds = %27
  %33 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !631
  %34 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %33, i32 0, i32 7, !dbg !632
  %35 = load i8*, i8** %34, align 8, !dbg !632
  %36 = call zeroext i1 @str_is_unset(i8* %35), !dbg !633
  br i1 %36, label %37, label %58, !dbg !634

; <label>:37:                                     ; preds = %32
  %38 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !635
  %39 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %38, i32 0, i32 12, !dbg !636
  %40 = load %struct.archivedetails*, %struct.archivedetails** %39, align 8, !dbg !636
  %41 = icmp ne %struct.archivedetails* %40, null, !dbg !635
  br i1 %41, label %58, label %42, !dbg !637

; <label>:42:                                     ; preds = %37
  %43 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !638
  %44 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %43, i32 0, i32 2, !dbg !639
  %45 = load i32, i32* %44, align 8, !dbg !639
  %46 = icmp eq i32 %45, 0, !dbg !640
  br i1 %46, label %47, label %58, !dbg !641

; <label>:47:                                     ; preds = %42
  %48 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !642
  %49 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !643
  %50 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %49, i32 0, i32 9, !dbg !644
  %51 = call zeroext i1 @pkg_is_informative(%struct.pkginfo* %48, %struct.pkgbin* %50), !dbg !645
  br i1 %51, label %58, label %52, !dbg !646

; <label>:52:                                     ; preds = %47
  %53 = call i8* @gettext(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.27, i32 0, i32 0)) #10, !dbg !648
  %54 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !650
  %55 = call i8* @pkg_name(%struct.pkginfo* %54, i32 1), !dbg !651
  call void (i8*, ...) @notice(i8* %53, i8* %55), !dbg !652
  %56 = load i32, i32* %5, align 4, !dbg !654
  %57 = add nsw i32 %56, 1, !dbg !654
  store i32 %57, i32* %5, align 4, !dbg !654
  br label %64, !dbg !655

; <label>:58:                                     ; preds = %47, %42, %37, %32, %27, %19
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !656
  %60 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0)) #10, !dbg !658
  %61 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !659
  %62 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !660
  %63 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %62, i32 0, i32 9, !dbg !661
  call void @writerecord(%struct._IO_FILE* %59, i8* %60, %struct.pkginfo* %61, %struct.pkgbin* %63), !dbg !662
  br label %64

; <label>:64:                                     ; preds = %58, %52
  %65 = load i8**, i8*** %2, align 8, !dbg !664
  %66 = load i8*, i8** %65, align 8, !dbg !666
  %67 = icmp ne i8* %66, null, !dbg !667
  br i1 %67, label %68, label %70, !dbg !668

; <label>:68:                                     ; preds = %64
  %69 = call i32 @putchar(i32 10), !dbg !669
  br label %70, !dbg !669

; <label>:70:                                     ; preds = %68, %64
  br label %14, !dbg !670, !llvm.loop !672

; <label>:71:                                     ; preds = %14
  br label %72

; <label>:72:                                     ; preds = %71, %10
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !673
  %74 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0)) #10, !dbg !674
  call void @m_output(%struct._IO_FILE* %73, i8* %74), !dbg !675
  %75 = load i32, i32* %5, align 4, !dbg !677
  %76 = icmp ne i32 %75, 0, !dbg !677
  br i1 %76, label %77, label %83, !dbg !679

; <label>:77:                                     ; preds = %72
  %78 = call i8* @gettext(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.28, i32 0, i32 0)) #10, !dbg !680
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !682
  %80 = call i32 @fputs(i8* %78, %struct._IO_FILE* %79), !dbg !683
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !685
  %82 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i32 0, i32 0)) #10, !dbg !686
  call void @m_output(%struct._IO_FILE* %81, i8* %82), !dbg !687
  br label %83, !dbg !688

; <label>:83:                                     ; preds = %77, %72
  call void @modstatdb_shutdown(), !dbg !689
  %84 = load i32, i32* %5, align 4, !dbg !690
  ret i32 %84, !dbg !691
}

; Function Attrs: nounwind uwtable
define internal i32 @print_avail(i8**) #0 !dbg !692 {
  %2 = alloca i8**, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.pkginfo*, align 8
  %5 = alloca i32, align 4
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !693, metadata !201), !dbg !694
  call void @llvm.dbg.declare(metadata i8** %3, metadata !695, metadata !201), !dbg !696
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %4, metadata !697, metadata !201), !dbg !698
  call void @llvm.dbg.declare(metadata i32* %5, metadata !699, metadata !201), !dbg !700
  store i32 0, i32* %5, align 4, !dbg !700
  %6 = call i32 @modstatdb_open(i32 256), !dbg !701
  %7 = load i8**, i8*** %2, align 8, !dbg !702
  %8 = load i8*, i8** %7, align 8, !dbg !704
  %9 = icmp ne i8* %8, null, !dbg !704
  br i1 %9, label %13, label %10, !dbg !705

; <label>:10:                                     ; preds = %1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !706
  %12 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0)) #10, !dbg !708
  call void @writedb_records(%struct._IO_FILE* %11, i8* %12, i32 1), !dbg !709
  br label %49, !dbg !711

; <label>:13:                                     ; preds = %1
  br label %14, !dbg !712

; <label>:14:                                     ; preds = %47, %13
  %15 = load i8**, i8*** %2, align 8, !dbg !714
  %16 = getelementptr inbounds i8*, i8** %15, i32 1, !dbg !714
  store i8** %16, i8*** %2, align 8, !dbg !714
  %17 = load i8*, i8** %15, align 8, !dbg !716
  store i8* %17, i8** %3, align 8, !dbg !717
  %18 = icmp ne i8* %17, null, !dbg !718
  br i1 %18, label %19, label %48, !dbg !719

; <label>:19:                                     ; preds = %14
  %20 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !720
  %21 = load i8*, i8** %3, align 8, !dbg !722
  %22 = call %struct.pkginfo* @dpkg_options_parse_pkgname(%struct.cmdinfo* %20, i8* %21), !dbg !723
  store %struct.pkginfo* %22, %struct.pkginfo** %4, align 8, !dbg !724
  %23 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !725
  %24 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !727
  %25 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %24, i32 0, i32 10, !dbg !728
  %26 = call zeroext i1 @pkg_is_informative(%struct.pkginfo* %23, %struct.pkgbin* %25), !dbg !729
  br i1 %26, label %35, label %27, !dbg !730

; <label>:27:                                     ; preds = %19
  %28 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.29, i32 0, i32 0)) #10, !dbg !731
  %29 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !733
  %30 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !734
  %31 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %30, i32 0, i32 10, !dbg !735
  %32 = call i8* @pkgbin_name(%struct.pkginfo* %29, %struct.pkgbin* %31, i32 1), !dbg !736
  call void (i8*, ...) @notice(i8* %28, i8* %32), !dbg !737
  %33 = load i32, i32* %5, align 4, !dbg !739
  %34 = add nsw i32 %33, 1, !dbg !739
  store i32 %34, i32* %5, align 4, !dbg !739
  br label %41, !dbg !740

; <label>:35:                                     ; preds = %19
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !741
  %37 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0)) #10, !dbg !743
  %38 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !744
  %39 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !745
  %40 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %39, i32 0, i32 10, !dbg !746
  call void @writerecord(%struct._IO_FILE* %36, i8* %37, %struct.pkginfo* %38, %struct.pkgbin* %40), !dbg !747
  br label %41

; <label>:41:                                     ; preds = %35, %27
  %42 = load i8**, i8*** %2, align 8, !dbg !749
  %43 = load i8*, i8** %42, align 8, !dbg !751
  %44 = icmp ne i8* %43, null, !dbg !752
  br i1 %44, label %45, label %47, !dbg !753

; <label>:45:                                     ; preds = %41
  %46 = call i32 @putchar(i32 10), !dbg !754
  br label %47, !dbg !754

; <label>:47:                                     ; preds = %45, %41
  br label %14, !dbg !755, !llvm.loop !757

; <label>:48:                                     ; preds = %14
  br label %49

; <label>:49:                                     ; preds = %48, %10
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !758
  %51 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0)) #10, !dbg !759
  call void @m_output(%struct._IO_FILE* %50, i8* %51), !dbg !760
  %52 = load i32, i32* %5, align 4, !dbg !762
  %53 = icmp ne i32 %52, 0, !dbg !762
  br i1 %53, label %54, label %57, !dbg !764

; <label>:54:                                     ; preds = %49
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !765
  %56 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i32 0, i32 0)) #10, !dbg !766
  call void @m_output(%struct._IO_FILE* %55, i8* %56), !dbg !767
  br label %57, !dbg !769

; <label>:57:                                     ; preds = %54, %49
  call void @modstatdb_shutdown(), !dbg !770
  %58 = load i32, i32* %5, align 4, !dbg !771
  ret i32 %58, !dbg !772
}

; Function Attrs: nounwind uwtable
define internal i32 @listpackages(i8**) #0 !dbg !773 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.pkg_array, align 8
  %4 = alloca %struct.pkginfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.list_format, align 4
  %8 = alloca %struct.pager*, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !774, metadata !201), !dbg !775
  call void @llvm.dbg.declare(metadata %struct.pkg_array* %3, metadata !776, metadata !201), !dbg !783
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %4, metadata !784, metadata !201), !dbg !785
  call void @llvm.dbg.declare(metadata i32* %5, metadata !786, metadata !201), !dbg !787
  call void @llvm.dbg.declare(metadata i32* %6, metadata !788, metadata !201), !dbg !789
  store i32 0, i32* %6, align 4, !dbg !789
  call void @llvm.dbg.declare(metadata %struct.list_format* %7, metadata !790, metadata !201), !dbg !798
  call void @llvm.dbg.declare(metadata %struct.pager** %8, metadata !799, metadata !201), !dbg !803
  %9 = load i32, i32* @opt_loadavail, align 4, !dbg !804
  %10 = icmp ne i32 %9, 0, !dbg !804
  br i1 %10, label %13, label %11, !dbg !806

; <label>:11:                                     ; preds = %1
  %12 = call i32 @modstatdb_open(i32 0), !dbg !807
  br label %15, !dbg !807

; <label>:13:                                     ; preds = %1
  %14 = call i32 @modstatdb_open(i32 256), !dbg !808
  br label %15

; <label>:15:                                     ; preds = %13, %11
  call void @pkg_array_init_from_hash(%struct.pkg_array* %3), !dbg !809
  call void @pkg_array_sort(%struct.pkg_array* %3, i32 (i8*, i8*)* @pkg_sorter_by_nonambig_name_arch), !dbg !810
  %16 = bitcast %struct.list_format* %7 to i8*, !dbg !811
  call void @llvm.memset.p0i8.i64(i8* %16, i8 0, i64 20, i32 4, i1 false), !dbg !811
  %17 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.30, i32 0, i32 0)) #10, !dbg !812
  %18 = call %struct.pager* @pager_spawn(i8* %17), !dbg !813
  store %struct.pager* %18, %struct.pager** %8, align 8, !dbg !815
  %19 = load i8**, i8*** %2, align 8, !dbg !816
  %20 = load i8*, i8** %19, align 8, !dbg !818
  %21 = icmp ne i8* %20, null, !dbg !818
  br i1 %21, label %51, label %22, !dbg !819

; <label>:22:                                     ; preds = %15
  store i32 0, i32* %5, align 4, !dbg !820
  br label %23, !dbg !823

; <label>:23:                                     ; preds = %46, %22
  %24 = load i32, i32* %5, align 4, !dbg !824
  %25 = getelementptr inbounds %struct.pkg_array, %struct.pkg_array* %3, i32 0, i32 0, !dbg !827
  %26 = load i32, i32* %25, align 8, !dbg !827
  %27 = icmp slt i32 %24, %26, !dbg !828
  br i1 %27, label %28, label %49, !dbg !829

; <label>:28:                                     ; preds = %23
  %29 = load i32, i32* %5, align 4, !dbg !830
  %30 = sext i32 %29 to i64, !dbg !832
  %31 = getelementptr inbounds %struct.pkg_array, %struct.pkg_array* %3, i32 0, i32 1, !dbg !833
  %32 = load %struct.pkginfo**, %struct.pkginfo*** %31, align 8, !dbg !833
  %33 = getelementptr inbounds %struct.pkginfo*, %struct.pkginfo** %32, i64 %30, !dbg !832
  %34 = load %struct.pkginfo*, %struct.pkginfo** %33, align 8, !dbg !832
  store %struct.pkginfo* %34, %struct.pkginfo** %4, align 8, !dbg !834
  %35 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !835
  %36 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %35, i32 0, i32 4, !dbg !837
  %37 = load i32, i32* %36, align 8, !dbg !837
  %38 = icmp eq i32 %37, 0, !dbg !838
  br i1 %38, label %39, label %45, !dbg !839

; <label>:39:                                     ; preds = %28
  %40 = load i32, i32* %5, align 4, !dbg !840
  %41 = sext i32 %40 to i64, !dbg !841
  %42 = getelementptr inbounds %struct.pkg_array, %struct.pkg_array* %3, i32 0, i32 1, !dbg !842
  %43 = load %struct.pkginfo**, %struct.pkginfo*** %42, align 8, !dbg !842
  %44 = getelementptr inbounds %struct.pkginfo*, %struct.pkginfo** %43, i64 %41, !dbg !841
  store %struct.pkginfo* null, %struct.pkginfo** %44, align 8, !dbg !843
  br label %45, !dbg !841

; <label>:45:                                     ; preds = %39, %28
  br label %46, !dbg !844

; <label>:46:                                     ; preds = %45
  %47 = load i32, i32* %5, align 4, !dbg !845
  %48 = add nsw i32 %47, 1, !dbg !845
  store i32 %48, i32* %5, align 4, !dbg !845
  br label %23, !dbg !847, !llvm.loop !848

; <label>:49:                                     ; preds = %23
  %50 = bitcast %struct.list_format* %7 to i8*, !dbg !850
  call void @pkg_array_foreach(%struct.pkg_array* %3, void (%struct.pkg_array*, %struct.pkginfo*, i8*)* @pkg_array_list_item, i8* %50), !dbg !851
  br label %55, !dbg !852

; <label>:51:                                     ; preds = %15
  %52 = bitcast %struct.list_format* %7 to i8*, !dbg !853
  %53 = load i8**, i8*** %2, align 8, !dbg !855
  %54 = call i32 @pkg_array_match_patterns(%struct.pkg_array* %3, void (%struct.pkg_array*, %struct.pkginfo*, i8*)* @pkg_array_list_item, i8* %52, i8** %53), !dbg !856
  store i32 %54, i32* %6, align 4, !dbg !857
  br label %55

; <label>:55:                                     ; preds = %51, %49
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !858
  %57 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0)) #10, !dbg !859
  call void @m_output(%struct._IO_FILE* %56, i8* %57), !dbg !860
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !861
  %59 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i32 0, i32 0)) #10, !dbg !862
  call void @m_output(%struct._IO_FILE* %58, i8* %59), !dbg !863
  %60 = load %struct.pager*, %struct.pager** %8, align 8, !dbg !864
  call void @pager_reap(%struct.pager* %60), !dbg !865
  call void @pkg_array_destroy(%struct.pkg_array* %3), !dbg !866
  call void @modstatdb_shutdown(), !dbg !867
  %61 = load i32, i32* %6, align 4, !dbg !868
  ret i32 %61, !dbg !869
}

; Function Attrs: nounwind uwtable
define internal i32 @searchfiles(i8**) #0 !dbg !176 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.fsys_namenode*, align 8
  %4 = alloca %struct.fsys_hash_iter*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.varbuf, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !870, metadata !201), !dbg !871
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %3, metadata !872, metadata !201), !dbg !873
  call void @llvm.dbg.declare(metadata %struct.fsys_hash_iter** %4, metadata !874, metadata !201), !dbg !877
  call void @llvm.dbg.declare(metadata i8** %5, metadata !878, metadata !201), !dbg !879
  call void @llvm.dbg.declare(metadata i32* %6, metadata !880, metadata !201), !dbg !881
  call void @llvm.dbg.declare(metadata i32* %7, metadata !882, metadata !201), !dbg !883
  store i32 0, i32* %7, align 4, !dbg !883
  call void @llvm.dbg.declare(metadata %struct.varbuf* %8, metadata !884, metadata !201), !dbg !885
  %9 = bitcast %struct.varbuf* %8 to i8*, !dbg !885
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 24, i32 8, i1 false), !dbg !885
  %10 = load i8**, i8*** %2, align 8, !dbg !886
  %11 = load i8*, i8** %10, align 8, !dbg !888
  %12 = icmp ne i8* %11, null, !dbg !888
  br i1 %12, label %15, label %13, !dbg !889

; <label>:13:                                     ; preds = %1
  %14 = call i8* @gettext(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.42, i32 0, i32 0)) #10, !dbg !890
  call void (i8*, ...) @badusage(i8* %14) #11, !dbg !891
  unreachable, !dbg !893

; <label>:15:                                     ; preds = %1
  %16 = call i32 @modstatdb_open(i32 0), !dbg !894
  call void @ensure_allinstfiles_available_quiet(), !dbg !895
  call void @ensure_diversions(), !dbg !896
  br label %17, !dbg !897

; <label>:17:                                     ; preds = %85, %15
  %18 = load i8**, i8*** %2, align 8, !dbg !898
  %19 = getelementptr inbounds i8*, i8** %18, i32 1, !dbg !898
  store i8** %19, i8*** %2, align 8, !dbg !898
  %20 = load i8*, i8** %18, align 8, !dbg !900
  store i8* %20, i8** %5, align 8, !dbg !901
  %21 = icmp ne i8* %20, null, !dbg !902
  br i1 %21, label %22, label %86, !dbg !903

; <label>:22:                                     ; preds = %17
  store i32 0, i32* %6, align 4, !dbg !904
  %23 = load i8*, i8** %5, align 8, !dbg !906
  %24 = load i8, i8* %23, align 1, !dbg !908
  %25 = sext i8 %24 to i32, !dbg !908
  %26 = call i8* @strchr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0), i32 %25) #12, !dbg !909
  %27 = icmp ne i8* %26, null, !dbg !909
  br i1 %27, label %33, label %28, !dbg !910

; <label>:28:                                     ; preds = %22
  call void @varbuf_reset(%struct.varbuf* @searchfiles.vb), !dbg !911
  call void @varbuf_add_char(%struct.varbuf* @searchfiles.vb, i32 42), !dbg !913
  %29 = load i8*, i8** %5, align 8, !dbg !914
  %30 = load i8*, i8** %5, align 8, !dbg !915
  %31 = call i64 @strlen(i8* %30) #12, !dbg !916
  call void @varbuf_add_buf(%struct.varbuf* @searchfiles.vb, i8* %29, i64 %31), !dbg !917
  call void @varbuf_add_char(%struct.varbuf* @searchfiles.vb, i32 42), !dbg !919
  call void @varbuf_end_str(%struct.varbuf* @searchfiles.vb), !dbg !920
  %32 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @searchfiles.vb, i32 0, i32 2), align 8, !dbg !921
  store i8* %32, i8** %5, align 8, !dbg !922
  br label %33, !dbg !923

; <label>:33:                                     ; preds = %28, %22
  %34 = load i8*, i8** %5, align 8, !dbg !924
  %35 = call i8* @strpbrk(i8* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0)) #12, !dbg !926
  %36 = icmp ne i8* %35, null, !dbg !926
  br i1 %36, label %51, label %37, !dbg !927

; <label>:37:                                     ; preds = %33
  call void @varbuf_reset(%struct.varbuf* %8), !dbg !928
  %38 = load i8*, i8** %5, align 8, !dbg !930
  %39 = load i8*, i8** %5, align 8, !dbg !931
  %40 = call i64 @strlen(i8* %39) #12, !dbg !932
  call void @varbuf_add_buf(%struct.varbuf* %8, i8* %38, i64 %40), !dbg !933
  call void @varbuf_end_str(%struct.varbuf* %8), !dbg !935
  %41 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %8, i32 0, i32 2, !dbg !936
  %42 = load i8*, i8** %41, align 8, !dbg !936
  %43 = call i64 @path_trim_slash_slashdot(i8* %42), !dbg !937
  call void @varbuf_trunc(%struct.varbuf* %8, i64 %43), !dbg !938
  %44 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %8, i32 0, i32 2, !dbg !939
  %45 = load i8*, i8** %44, align 8, !dbg !939
  %46 = call %struct.fsys_namenode* @fsys_hash_find_node(i8* %45, i32 0), !dbg !940
  store %struct.fsys_namenode* %46, %struct.fsys_namenode** %3, align 8, !dbg !941
  %47 = load %struct.fsys_namenode*, %struct.fsys_namenode** %3, align 8, !dbg !942
  %48 = call i32 @searchoutput(%struct.fsys_namenode* %47), !dbg !943
  %49 = load i32, i32* %6, align 4, !dbg !944
  %50 = add nsw i32 %49, %48, !dbg !944
  store i32 %50, i32* %6, align 4, !dbg !944
  br label %72, !dbg !945

; <label>:51:                                     ; preds = %33
  %52 = call %struct.fsys_hash_iter* @fsys_hash_iter_new(), !dbg !946
  store %struct.fsys_hash_iter* %52, %struct.fsys_hash_iter** %4, align 8, !dbg !948
  br label %53, !dbg !949

; <label>:53:                                     ; preds = %65, %64, %51
  %54 = load %struct.fsys_hash_iter*, %struct.fsys_hash_iter** %4, align 8, !dbg !950
  %55 = call %struct.fsys_namenode* @fsys_hash_iter_next(%struct.fsys_hash_iter* %54), !dbg !952
  store %struct.fsys_namenode* %55, %struct.fsys_namenode** %3, align 8, !dbg !953
  %56 = icmp ne %struct.fsys_namenode* %55, null, !dbg !954
  br i1 %56, label %57, label %70, !dbg !955

; <label>:57:                                     ; preds = %53
  %58 = load i8*, i8** %5, align 8, !dbg !956
  %59 = load %struct.fsys_namenode*, %struct.fsys_namenode** %3, align 8, !dbg !959
  %60 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %59, i32 0, i32 1, !dbg !960
  %61 = load i8*, i8** %60, align 8, !dbg !960
  %62 = call i32 @fnmatch(i8* %58, i8* %61, i32 0), !dbg !961
  %63 = icmp ne i32 %62, 0, !dbg !961
  br i1 %63, label %64, label %65, !dbg !962

; <label>:64:                                     ; preds = %57
  br label %53, !dbg !963, !llvm.loop !965

; <label>:65:                                     ; preds = %57
  %66 = load %struct.fsys_namenode*, %struct.fsys_namenode** %3, align 8, !dbg !966
  %67 = call i32 @searchoutput(%struct.fsys_namenode* %66), !dbg !967
  %68 = load i32, i32* %6, align 4, !dbg !968
  %69 = add nsw i32 %68, %67, !dbg !968
  store i32 %69, i32* %6, align 4, !dbg !968
  br label %53, !dbg !969, !llvm.loop !965

; <label>:70:                                     ; preds = %53
  %71 = load %struct.fsys_hash_iter*, %struct.fsys_hash_iter** %4, align 8, !dbg !971
  call void @fsys_hash_iter_free(%struct.fsys_hash_iter* %71), !dbg !972
  br label %72

; <label>:72:                                     ; preds = %70, %37
  %73 = load i32, i32* %6, align 4, !dbg !973
  %74 = icmp ne i32 %73, 0, !dbg !973
  br i1 %74, label %82, label %75, !dbg !975

; <label>:75:                                     ; preds = %72
  %76 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.45, i32 0, i32 0)) #10, !dbg !976
  %77 = load i8*, i8** %5, align 8, !dbg !978
  call void (i8*, ...) @notice(i8* %76, i8* %77), !dbg !979
  %78 = load i32, i32* %7, align 4, !dbg !981
  %79 = add nsw i32 %78, 1, !dbg !981
  store i32 %79, i32* %7, align 4, !dbg !981
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !982
  %81 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i32 0, i32 0)) #10, !dbg !983
  call void @m_output(%struct._IO_FILE* %80, i8* %81), !dbg !984
  br label %85, !dbg !985

; <label>:82:                                     ; preds = %72
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !986
  %84 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0)) #10, !dbg !988
  call void @m_output(%struct._IO_FILE* %83, i8* %84), !dbg !989
  br label %85

; <label>:85:                                     ; preds = %82, %75
  br label %17, !dbg !991, !llvm.loop !993

; <label>:86:                                     ; preds = %17
  call void @modstatdb_shutdown(), !dbg !994
  call void @varbuf_destroy(%struct.varbuf* %8), !dbg !995
  %87 = load i32, i32* %7, align 4, !dbg !996
  ret i32 %87, !dbg !997
}

; Function Attrs: nounwind uwtable
define internal i32 @showpackages(i8**) #0 !dbg !998 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca %struct.dpkg_error, align 8
  %5 = alloca %struct.pkg_array, align 8
  %6 = alloca %struct.pkginfo*, align 8
  %7 = alloca %struct.pkg_format_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !999, metadata !201), !dbg !1000
  call void @llvm.dbg.declare(metadata %struct.dpkg_error* %4, metadata !1001, metadata !201), !dbg !1007
  call void @llvm.dbg.declare(metadata %struct.pkg_array* %5, metadata !1008, metadata !201), !dbg !1009
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %6, metadata !1010, metadata !201), !dbg !1011
  call void @llvm.dbg.declare(metadata %struct.pkg_format_node** %7, metadata !1012, metadata !201), !dbg !1016
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1017, metadata !201), !dbg !1018
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1019, metadata !201), !dbg !1020
  store i32 0, i32* %9, align 4, !dbg !1020
  %10 = load i8*, i8** @showformat, align 8, !dbg !1021
  %11 = call %struct.pkg_format_node* @pkg_format_parse(i8* %10, %struct.dpkg_error* %4), !dbg !1022
  store %struct.pkg_format_node* %11, %struct.pkg_format_node** %7, align 8, !dbg !1023
  %12 = load %struct.pkg_format_node*, %struct.pkg_format_node** %7, align 8, !dbg !1024
  %13 = icmp ne %struct.pkg_format_node* %12, null, !dbg !1024
  br i1 %13, label %21, label %14, !dbg !1026

; <label>:14:                                     ; preds = %1
  %15 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.52, i32 0, i32 0)) #10, !dbg !1027
  %16 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %4, i32 0, i32 2, !dbg !1029
  %17 = load i8*, i8** %16, align 8, !dbg !1029
  call void (i8*, ...) @notice(i8* %15, i8* %17), !dbg !1030
  call void @dpkg_error_destroy(%struct.dpkg_error* %4), !dbg !1032
  %18 = load i32, i32* %9, align 4, !dbg !1033
  %19 = add nsw i32 %18, 1, !dbg !1033
  store i32 %19, i32* %9, align 4, !dbg !1033
  %20 = load i32, i32* %9, align 4, !dbg !1034
  store i32 %20, i32* %2, align 4, !dbg !1035
  br label %71, !dbg !1035

; <label>:21:                                     ; preds = %1
  %22 = load i32, i32* @opt_loadavail, align 4, !dbg !1036
  %23 = icmp ne i32 %22, 0, !dbg !1036
  br i1 %23, label %26, label %24, !dbg !1038

; <label>:24:                                     ; preds = %21
  %25 = call i32 @modstatdb_open(i32 0), !dbg !1039
  br label %28, !dbg !1039

; <label>:26:                                     ; preds = %21
  %27 = call i32 @modstatdb_open(i32 256), !dbg !1040
  br label %28

; <label>:28:                                     ; preds = %26, %24
  call void @pkg_array_init_from_hash(%struct.pkg_array* %5), !dbg !1041
  call void @pkg_array_sort(%struct.pkg_array* %5, i32 (i8*, i8*)* @pkg_sorter_by_nonambig_name_arch), !dbg !1042
  %29 = load i8**, i8*** %3, align 8, !dbg !1043
  %30 = load i8*, i8** %29, align 8, !dbg !1045
  %31 = icmp ne i8* %30, null, !dbg !1045
  br i1 %31, label %59, label %32, !dbg !1046

; <label>:32:                                     ; preds = %28
  store i32 0, i32* %8, align 4, !dbg !1047
  br label %33, !dbg !1050

; <label>:33:                                     ; preds = %55, %32
  %34 = load i32, i32* %8, align 4, !dbg !1051
  %35 = getelementptr inbounds %struct.pkg_array, %struct.pkg_array* %5, i32 0, i32 0, !dbg !1054
  %36 = load i32, i32* %35, align 8, !dbg !1054
  %37 = icmp slt i32 %34, %36, !dbg !1055
  br i1 %37, label %38, label %58, !dbg !1056

; <label>:38:                                     ; preds = %33
  %39 = load i32, i32* %8, align 4, !dbg !1057
  %40 = sext i32 %39 to i64, !dbg !1059
  %41 = getelementptr inbounds %struct.pkg_array, %struct.pkg_array* %5, i32 0, i32 1, !dbg !1060
  %42 = load %struct.pkginfo**, %struct.pkginfo*** %41, align 8, !dbg !1060
  %43 = getelementptr inbounds %struct.pkginfo*, %struct.pkginfo** %42, i64 %40, !dbg !1059
  %44 = load %struct.pkginfo*, %struct.pkginfo** %43, align 8, !dbg !1059
  store %struct.pkginfo* %44, %struct.pkginfo** %6, align 8, !dbg !1061
  %45 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !1062
  %46 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %45, i32 0, i32 4, !dbg !1064
  %47 = load i32, i32* %46, align 8, !dbg !1064
  %48 = icmp eq i32 %47, 0, !dbg !1065
  br i1 %48, label %49, label %50, !dbg !1066

; <label>:49:                                     ; preds = %38
  br label %55, !dbg !1067

; <label>:50:                                     ; preds = %38
  %51 = load %struct.pkg_format_node*, %struct.pkg_format_node** %7, align 8, !dbg !1068
  %52 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !1069
  %53 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !1070
  %54 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %53, i32 0, i32 9, !dbg !1071
  call void @pkg_format_show(%struct.pkg_format_node* %51, %struct.pkginfo* %52, %struct.pkgbin* %54), !dbg !1072
  br label %55, !dbg !1073

; <label>:55:                                     ; preds = %50, %49
  %56 = load i32, i32* %8, align 4, !dbg !1074
  %57 = add nsw i32 %56, 1, !dbg !1074
  store i32 %57, i32* %8, align 4, !dbg !1074
  br label %33, !dbg !1076, !llvm.loop !1077

; <label>:58:                                     ; preds = %33
  br label %64, !dbg !1079

; <label>:59:                                     ; preds = %28
  %60 = load %struct.pkg_format_node*, %struct.pkg_format_node** %7, align 8, !dbg !1080
  %61 = bitcast %struct.pkg_format_node* %60 to i8*, !dbg !1080
  %62 = load i8**, i8*** %3, align 8, !dbg !1082
  %63 = call i32 @pkg_array_match_patterns(%struct.pkg_array* %5, void (%struct.pkg_array*, %struct.pkginfo*, i8*)* @pkg_array_show_item, i8* %61, i8** %62), !dbg !1083
  store i32 %63, i32* %9, align 4, !dbg !1084
  br label %64

; <label>:64:                                     ; preds = %59, %58
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1085
  %66 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0)) #10, !dbg !1086
  call void @m_output(%struct._IO_FILE* %65, i8* %66), !dbg !1087
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1089
  %68 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i32 0, i32 0)) #10, !dbg !1090
  call void @m_output(%struct._IO_FILE* %67, i8* %68), !dbg !1091
  call void @pkg_array_destroy(%struct.pkg_array* %5), !dbg !1092
  %69 = load %struct.pkg_format_node*, %struct.pkg_format_node** %7, align 8, !dbg !1093
  call void @pkg_format_free(%struct.pkg_format_node* %69), !dbg !1094
  call void @modstatdb_shutdown(), !dbg !1095
  %70 = load i32, i32* %9, align 4, !dbg !1096
  store i32 %70, i32* %2, align 4, !dbg !1097
  br label %71, !dbg !1097

; <label>:71:                                     ; preds = %64, %14
  %72 = load i32, i32* %2, align 4, !dbg !1098
  ret i32 %72, !dbg !1098
}

; Function Attrs: nounwind uwtable
define internal i32 @control_path(i8**) #0 !dbg !1099 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.pkginfo*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !1100, metadata !201), !dbg !1101
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %3, metadata !1102, metadata !201), !dbg !1103
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1104, metadata !201), !dbg !1105
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1106, metadata !201), !dbg !1107
  %6 = load i8**, i8*** %2, align 8, !dbg !1108
  %7 = getelementptr inbounds i8*, i8** %6, i32 1, !dbg !1108
  store i8** %7, i8*** %2, align 8, !dbg !1108
  %8 = load i8*, i8** %6, align 8, !dbg !1109
  store i8* %8, i8** %4, align 8, !dbg !1110
  %9 = load i8*, i8** %4, align 8, !dbg !1111
  %10 = icmp ne i8* %9, null, !dbg !1111
  br i1 %10, label %16, label %11, !dbg !1113

; <label>:11:                                     ; preds = %1
  %12 = call i8* @gettext(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.18, i32 0, i32 0)) #10, !dbg !1114
  %13 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !1115
  %14 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %13, i32 0, i32 0, !dbg !1116
  %15 = load i8*, i8** %14, align 8, !dbg !1116
  call void (i8*, ...) @badusage(i8* %12, i8* %15) #11, !dbg !1117
  unreachable, !dbg !1119

; <label>:16:                                     ; preds = %1
  %17 = load i8**, i8*** %2, align 8, !dbg !1120
  %18 = getelementptr inbounds i8*, i8** %17, i32 1, !dbg !1120
  store i8** %18, i8*** %2, align 8, !dbg !1120
  %19 = load i8*, i8** %17, align 8, !dbg !1121
  store i8* %19, i8** %5, align 8, !dbg !1122
  %20 = load i8*, i8** %5, align 8, !dbg !1123
  %21 = icmp ne i8* %20, null, !dbg !1123
  br i1 %21, label %22, label %31, !dbg !1125

; <label>:22:                                     ; preds = %16
  %23 = load i8**, i8*** %2, align 8, !dbg !1126
  %24 = load i8*, i8** %23, align 8, !dbg !1128
  %25 = icmp ne i8* %24, null, !dbg !1128
  br i1 %25, label %26, label %31, !dbg !1129

; <label>:26:                                     ; preds = %22
  %27 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.53, i32 0, i32 0)) #10, !dbg !1130
  %28 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !1131
  %29 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %28, i32 0, i32 0, !dbg !1132
  %30 = load i8*, i8** %29, align 8, !dbg !1132
  call void (i8*, ...) @badusage(i8* %27, i8* %30) #11, !dbg !1133
  unreachable, !dbg !1134

; <label>:31:                                     ; preds = %22, %16
  %32 = load i8*, i8** %5, align 8, !dbg !1135
  %33 = icmp ne i8* %32, null, !dbg !1135
  br i1 %33, label %34, label %36, !dbg !1137

; <label>:34:                                     ; preds = %31
  %35 = load i8*, i8** %5, align 8, !dbg !1138
  call void @pkg_infodb_check_filetype(i8* %35), !dbg !1139
  br label %36, !dbg !1139

; <label>:36:                                     ; preds = %34, %31
  %37 = call i32 @modstatdb_open(i32 0), !dbg !1140
  %38 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !1141
  %39 = load i8*, i8** %4, align 8, !dbg !1142
  %40 = call %struct.pkginfo* @dpkg_options_parse_pkgname(%struct.cmdinfo* %38, i8* %39), !dbg !1143
  store %struct.pkginfo* %40, %struct.pkginfo** %3, align 8, !dbg !1144
  %41 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !1145
  %42 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %41, i32 0, i32 4, !dbg !1147
  %43 = load i32, i32* %42, align 8, !dbg !1147
  %44 = icmp eq i32 %43, 0, !dbg !1148
  br i1 %44, label %45, label %49, !dbg !1149

; <label>:45:                                     ; preds = %36
  %46 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i32 0, i32 0)) #10, !dbg !1150
  %47 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !1151
  %48 = call i8* @pkg_name(%struct.pkginfo* %47, i32 1), !dbg !1152
  call void (i8*, ...) @ohshit(i8* %46, i8* %48) #11, !dbg !1153
  unreachable, !dbg !1155

; <label>:49:                                     ; preds = %36
  %50 = load i8*, i8** %5, align 8, !dbg !1156
  %51 = icmp ne i8* %50, null, !dbg !1156
  br i1 %51, label %52, label %55, !dbg !1158

; <label>:52:                                     ; preds = %49
  %53 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !1159
  %54 = load i8*, i8** %5, align 8, !dbg !1160
  call void @control_path_file(%struct.pkginfo* %53, i8* %54), !dbg !1161
  br label %59, !dbg !1161

; <label>:55:                                     ; preds = %49
  %56 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !1162
  %57 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !1163
  %58 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %57, i32 0, i32 9, !dbg !1164
  call void @pkg_infodb_foreach(%struct.pkginfo* %56, %struct.pkgbin* %58, void (i8*, i8*)* @pkg_infodb_print_filename), !dbg !1165
  br label %59

; <label>:59:                                     ; preds = %55, %52
  call void @modstatdb_shutdown(), !dbg !1166
  ret i32 0, !dbg !1167
}

; Function Attrs: nounwind uwtable
define internal i32 @control_list(i8**) #0 !dbg !1168 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.pkginfo*, align 8
  %4 = alloca i8*, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !1169, metadata !201), !dbg !1170
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %3, metadata !1171, metadata !201), !dbg !1172
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1173, metadata !201), !dbg !1174
  %5 = load i8**, i8*** %2, align 8, !dbg !1175
  %6 = getelementptr inbounds i8*, i8** %5, i32 1, !dbg !1175
  store i8** %6, i8*** %2, align 8, !dbg !1175
  %7 = load i8*, i8** %5, align 8, !dbg !1176
  store i8* %7, i8** %4, align 8, !dbg !1177
  %8 = load i8*, i8** %4, align 8, !dbg !1178
  %9 = icmp ne i8* %8, null, !dbg !1178
  br i1 %9, label %10, label %14, !dbg !1180

; <label>:10:                                     ; preds = %1
  %11 = load i8**, i8*** %2, align 8, !dbg !1181
  %12 = load i8*, i8** %11, align 8, !dbg !1183
  %13 = icmp ne i8* %12, null, !dbg !1183
  br i1 %13, label %14, label %19, !dbg !1184

; <label>:14:                                     ; preds = %10, %1
  %15 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.58, i32 0, i32 0)) #10, !dbg !1185
  %16 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !1186
  %17 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %16, i32 0, i32 0, !dbg !1187
  %18 = load i8*, i8** %17, align 8, !dbg !1187
  call void (i8*, ...) @badusage(i8* %15, i8* %18) #11, !dbg !1188
  unreachable, !dbg !1189

; <label>:19:                                     ; preds = %10
  %20 = call i32 @modstatdb_open(i32 0), !dbg !1190
  %21 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !1191
  %22 = load i8*, i8** %4, align 8, !dbg !1192
  %23 = call %struct.pkginfo* @dpkg_options_parse_pkgname(%struct.cmdinfo* %21, i8* %22), !dbg !1193
  store %struct.pkginfo* %23, %struct.pkginfo** %3, align 8, !dbg !1194
  %24 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !1195
  %25 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %24, i32 0, i32 4, !dbg !1197
  %26 = load i32, i32* %25, align 8, !dbg !1197
  %27 = icmp eq i32 %26, 0, !dbg !1198
  br i1 %27, label %28, label %32, !dbg !1199

; <label>:28:                                     ; preds = %19
  %29 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i32 0, i32 0)) #10, !dbg !1200
  %30 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !1201
  %31 = call i8* @pkg_name(%struct.pkginfo* %30, i32 1), !dbg !1202
  call void (i8*, ...) @ohshit(i8* %29, i8* %31) #11, !dbg !1204
  unreachable, !dbg !1206

; <label>:32:                                     ; preds = %19
  %33 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !1207
  %34 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !1208
  %35 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %34, i32 0, i32 9, !dbg !1209
  call void @pkg_infodb_foreach(%struct.pkginfo* %33, %struct.pkgbin* %35, void (i8*, i8*)* @pkg_infodb_print_filetype), !dbg !1210
  call void @modstatdb_shutdown(), !dbg !1211
  ret i32 0, !dbg !1212
}

; Function Attrs: nounwind uwtable
define internal i32 @control_show(i8**) #0 !dbg !1213 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.pkginfo*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !1214, metadata !201), !dbg !1215
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %3, metadata !1216, metadata !201), !dbg !1217
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1218, metadata !201), !dbg !1219
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1220, metadata !201), !dbg !1221
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1222, metadata !201), !dbg !1223
  %7 = load i8**, i8*** %2, align 8, !dbg !1224
  %8 = getelementptr inbounds i8*, i8** %7, i32 1, !dbg !1224
  store i8** %8, i8*** %2, align 8, !dbg !1224
  %9 = load i8*, i8** %7, align 8, !dbg !1225
  store i8* %9, i8** %4, align 8, !dbg !1226
  %10 = load i8*, i8** %4, align 8, !dbg !1227
  %11 = icmp ne i8* %10, null, !dbg !1227
  br i1 %11, label %12, label %16, !dbg !1229

; <label>:12:                                     ; preds = %1
  %13 = load i8**, i8*** %2, align 8, !dbg !1230
  %14 = load i8*, i8** %13, align 8, !dbg !1232
  %15 = icmp ne i8* %14, null, !dbg !1232
  br i1 %15, label %21, label %16, !dbg !1233

; <label>:16:                                     ; preds = %12, %1
  %17 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.59, i32 0, i32 0)) #10, !dbg !1234
  %18 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !1235
  %19 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %18, i32 0, i32 0, !dbg !1236
  %20 = load i8*, i8** %19, align 8, !dbg !1236
  call void (i8*, ...) @badusage(i8* %17, i8* %20) #11, !dbg !1237
  unreachable, !dbg !1238

; <label>:21:                                     ; preds = %12
  %22 = load i8**, i8*** %2, align 8, !dbg !1239
  %23 = getelementptr inbounds i8*, i8** %22, i32 1, !dbg !1239
  store i8** %23, i8*** %2, align 8, !dbg !1239
  %24 = load i8*, i8** %22, align 8, !dbg !1240
  store i8* %24, i8** %6, align 8, !dbg !1241
  %25 = load i8*, i8** %6, align 8, !dbg !1242
  %26 = icmp ne i8* %25, null, !dbg !1242
  br i1 %26, label %27, label %31, !dbg !1244

; <label>:27:                                     ; preds = %21
  %28 = load i8**, i8*** %2, align 8, !dbg !1245
  %29 = load i8*, i8** %28, align 8, !dbg !1247
  %30 = icmp ne i8* %29, null, !dbg !1247
  br i1 %30, label %31, label %36, !dbg !1248

; <label>:31:                                     ; preds = %27, %21
  %32 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.59, i32 0, i32 0)) #10, !dbg !1249
  %33 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !1250
  %34 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %33, i32 0, i32 0, !dbg !1251
  %35 = load i8*, i8** %34, align 8, !dbg !1251
  call void (i8*, ...) @badusage(i8* %32, i8* %35) #11, !dbg !1252
  unreachable, !dbg !1253

; <label>:36:                                     ; preds = %27
  %37 = load i8*, i8** %6, align 8, !dbg !1254
  call void @pkg_infodb_check_filetype(i8* %37), !dbg !1255
  %38 = call i32 @modstatdb_open(i32 0), !dbg !1256
  %39 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !1257
  %40 = load i8*, i8** %4, align 8, !dbg !1258
  %41 = call %struct.pkginfo* @dpkg_options_parse_pkgname(%struct.cmdinfo* %39, i8* %40), !dbg !1259
  store %struct.pkginfo* %41, %struct.pkginfo** %3, align 8, !dbg !1260
  %42 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !1261
  %43 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %42, i32 0, i32 4, !dbg !1263
  %44 = load i32, i32* %43, align 8, !dbg !1263
  %45 = icmp eq i32 %44, 0, !dbg !1264
  br i1 %45, label %46, label %50, !dbg !1265

; <label>:46:                                     ; preds = %36
  %47 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i32 0, i32 0)) #10, !dbg !1266
  %48 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !1267
  %49 = call i8* @pkg_name(%struct.pkginfo* %48, i32 1), !dbg !1268
  call void (i8*, ...) @ohshit(i8* %47, i8* %49) #11, !dbg !1270
  unreachable, !dbg !1272

; <label>:50:                                     ; preds = %36
  %51 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !1273
  %52 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !1275
  %53 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %52, i32 0, i32 9, !dbg !1276
  %54 = load i8*, i8** %6, align 8, !dbg !1277
  %55 = call zeroext i1 @pkg_infodb_has_file(%struct.pkginfo* %51, %struct.pkgbin* %53, i8* %54), !dbg !1278
  br i1 %55, label %56, label %62, !dbg !1279

; <label>:56:                                     ; preds = %50
  %57 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !1280
  %58 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !1281
  %59 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %58, i32 0, i32 9, !dbg !1282
  %60 = load i8*, i8** %6, align 8, !dbg !1283
  %61 = call i8* @pkg_infodb_get_file(%struct.pkginfo* %57, %struct.pkgbin* %59, i8* %60), !dbg !1284
  store i8* %61, i8** %5, align 8, !dbg !1285
  br label %65, !dbg !1286

; <label>:62:                                     ; preds = %50
  %63 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.60, i32 0, i32 0)) #10, !dbg !1287
  %64 = load i8*, i8** %6, align 8, !dbg !1288
  call void (i8*, ...) @ohshit(i8* %63, i8* %64) #11, !dbg !1289
  unreachable, !dbg !1291

; <label>:65:                                     ; preds = %56
  call void @modstatdb_shutdown(), !dbg !1292
  %66 = load i8*, i8** %5, align 8, !dbg !1293
  call void @file_show(i8* %66), !dbg !1294
  ret i32 0, !dbg !1295
}

; Function Attrs: nounwind uwtable
define internal void @set_no_pager(%struct.cmdinfo*, i8*) #0 !dbg !1296 {
  %3 = alloca %struct.cmdinfo*, align 8
  %4 = alloca i8*, align 8
  store %struct.cmdinfo* %0, %struct.cmdinfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.cmdinfo** %3, metadata !1297, metadata !201), !dbg !1298
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1299, metadata !201), !dbg !1300
  call void @pager_enable(i1 zeroext false), !dbg !1301
  ret void, !dbg !1302
}

; Function Attrs: noreturn nounwind uwtable
define internal void @usage(%struct.cmdinfo*, i8*) #5 !dbg !1303 {
  %3 = alloca %struct.cmdinfo*, align 8
  %4 = alloca i8*, align 8
  store %struct.cmdinfo* %0, %struct.cmdinfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.cmdinfo** %3, metadata !1304, metadata !201), !dbg !1305
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1306, metadata !201), !dbg !1307
  %5 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.62, i32 0, i32 0)) #10, !dbg !1308
  %6 = call i32 (i8*, ...) @printf(i8* %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0)), !dbg !1309
  %7 = call i8* @gettext(i8* getelementptr inbounds ([700 x i8], [700 x i8]* @.str.63, i32 0, i32 0)) #10, !dbg !1311
  %8 = call i32 (i8*, ...) @printf(i8* %7), !dbg !1312
  %9 = call i8* @gettext(i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.64, i32 0, i32 0)) #10, !dbg !1313
  %10 = call i32 (i8*, ...) @printf(i8* %9), !dbg !1314
  %11 = call i8* @gettext(i8* getelementptr inbounds ([223 x i8], [223 x i8]* @.str.65, i32 0, i32 0)) #10, !dbg !1315
  %12 = call i32 (i8*, ...) @printf(i8* %11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.66, i32 0, i32 0)), !dbg !1316
  %13 = call i8* @gettext(i8* getelementptr inbounds ([421 x i8], [421 x i8]* @.str.67, i32 0, i32 0)) #10, !dbg !1317
  %14 = call i32 (i8*, ...) @printf(i8* %13), !dbg !1318
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1319
  %16 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0)) #10, !dbg !1320
  call void @m_output(%struct._IO_FILE* %15, i8* %16), !dbg !1321
  call void @exit(i32 0) #13, !dbg !1322
  unreachable, !dbg !1322
                                                  ; No predecessors!
  ret void, !dbg !1323
}

; Function Attrs: noreturn nounwind uwtable
define internal void @printversion(%struct.cmdinfo*, i8*) #5 !dbg !1324 {
  %3 = alloca %struct.cmdinfo*, align 8
  %4 = alloca i8*, align 8
  store %struct.cmdinfo* %0, %struct.cmdinfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.cmdinfo** %3, metadata !1325, metadata !201), !dbg !1326
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1327, metadata !201), !dbg !1328
  %5 = call i8* @gettext(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.68, i32 0, i32 0)) #10, !dbg !1329
  %6 = call i32 (i8*, ...) @printf(i8* %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.69, i32 0, i32 0)), !dbg !1330
  %7 = call i8* @gettext(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.70, i32 0, i32 0)) #10, !dbg !1332
  %8 = call i32 (i8*, ...) @printf(i8* %7), !dbg !1333
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1334
  %10 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0)) #10, !dbg !1335
  call void @m_output(%struct._IO_FILE* %9, i8* %10), !dbg !1336
  call void @exit(i32 0) #13, !dbg !1337
  unreachable, !dbg !1337
                                                  ; No predecessors!
  ret void, !dbg !1338
}

declare i32 @modstatdb_open(i32) #2

declare %struct.pkginfo* @dpkg_options_parse_pkgname(%struct.cmdinfo*, i8*) #2

declare void @notice(i8*, ...) #2

declare i8* @pkg_name(%struct.pkginfo*, i32) #2

declare void @ensure_packagefiles_available(%struct.pkginfo*) #2

declare void @ensure_diversions() #2

declare i32 @printf(i8*, ...) #2

declare i32 @puts(i8*) #2

declare i32 @putchar(i32) #2

declare void @m_output(%struct._IO_FILE*, i8*) #2

declare i32 @fputs(i8*, %struct._IO_FILE*) #2

declare void @modstatdb_shutdown() #2

declare void @writedb_records(%struct._IO_FILE*, i8*, i32) #2

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @str_is_unset(i8*) #6 !dbg !1339 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1343, metadata !201), !dbg !1344
  %3 = load i8*, i8** %2, align 8, !dbg !1345
  %4 = icmp eq i8* %3, null, !dbg !1346
  br i1 %4, label %11, label %5, !dbg !1347

; <label>:5:                                      ; preds = %1
  %6 = load i8*, i8** %2, align 8, !dbg !1348
  %7 = getelementptr inbounds i8, i8* %6, i64 0, !dbg !1348
  %8 = load i8, i8* %7, align 1, !dbg !1348
  %9 = sext i8 %8 to i32, !dbg !1348
  %10 = icmp eq i32 %9, 0, !dbg !1350
  br label %11, !dbg !1351

; <label>:11:                                     ; preds = %5, %1
  %12 = phi i1 [ true, %1 ], [ %10, %5 ]
  ret i1 %12, !dbg !1352
}

declare zeroext i1 @pkg_is_informative(%struct.pkginfo*, %struct.pkgbin*) #2

declare void @writerecord(%struct._IO_FILE*, i8*, %struct.pkginfo*, %struct.pkgbin*) #2

declare i8* @pkgbin_name(%struct.pkginfo*, %struct.pkgbin*, i32) #2

declare void @pkg_array_init_from_hash(%struct.pkg_array*) #2

declare void @pkg_array_sort(%struct.pkg_array*, i32 (i8*, i8*)*) #2

declare i32 @pkg_sorter_by_nonambig_name_arch(i8*, i8*) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

declare %struct.pager* @pager_spawn(i8*) #2

declare void @pkg_array_foreach(%struct.pkg_array*, void (%struct.pkg_array*, %struct.pkginfo*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @pkg_array_list_item(%struct.pkg_array*, %struct.pkginfo*, i8*) #0 !dbg !1354 {
  %4 = alloca %struct.pkg_array*, align 8
  %5 = alloca %struct.pkginfo*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.list_format*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.pkg_array* %0, %struct.pkg_array** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.pkg_array** %4, metadata !1358, metadata !201), !dbg !1359
  store %struct.pkginfo* %1, %struct.pkginfo** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %5, metadata !1360, metadata !201), !dbg !1361
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1362, metadata !201), !dbg !1363
  call void @llvm.dbg.declare(metadata %struct.list_format** %7, metadata !1364, metadata !201), !dbg !1366
  %10 = load i8*, i8** %6, align 8, !dbg !1367
  %11 = bitcast i8* %10 to %struct.list_format*, !dbg !1367
  store %struct.list_format* %11, %struct.list_format** %7, align 8, !dbg !1366
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1368, metadata !201), !dbg !1369
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1370, metadata !201), !dbg !1371
  %12 = load %struct.list_format*, %struct.list_format** %7, align 8, !dbg !1372
  %13 = load %struct.pkg_array*, %struct.pkg_array** %4, align 8, !dbg !1373
  call void @list_format_init(%struct.list_format* %12, %struct.pkg_array* %13), !dbg !1374
  %14 = load %struct.list_format*, %struct.list_format** %7, align 8, !dbg !1375
  call void @list_format_print_header(%struct.list_format* %14), !dbg !1376
  %15 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1377
  %16 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1378
  %17 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %16, i32 0, i32 9, !dbg !1379
  %18 = call i8* @pkgbin_synopsis(%struct.pkginfo* %15, %struct.pkgbin* %17, i32* %8), !dbg !1380
  store i8* %18, i8** %9, align 8, !dbg !1381
  %19 = load i32, i32* %8, align 4, !dbg !1382
  %20 = load %struct.list_format*, %struct.list_format** %7, align 8, !dbg !1383
  %21 = getelementptr inbounds %struct.list_format, %struct.list_format* %20, i32 0, i32 4, !dbg !1384
  %22 = load i32, i32* %21, align 4, !dbg !1384
  %23 = icmp slt i32 %19, %22, !dbg !1385
  br i1 %23, label %24, label %26, !dbg !1386

; <label>:24:                                     ; preds = %3
  %25 = load i32, i32* %8, align 4, !dbg !1387
  br label %30, !dbg !1389

; <label>:26:                                     ; preds = %3
  %27 = load %struct.list_format*, %struct.list_format** %7, align 8, !dbg !1390
  %28 = getelementptr inbounds %struct.list_format, %struct.list_format* %27, i32 0, i32 4, !dbg !1392
  %29 = load i32, i32* %28, align 4, !dbg !1392
  br label %30, !dbg !1393

; <label>:30:                                     ; preds = %26, %24
  %31 = phi i32 [ %25, %24 ], [ %29, %26 ], !dbg !1394
  store i32 %31, i32* %8, align 4, !dbg !1396
  %32 = load %struct.list_format*, %struct.list_format** %7, align 8, !dbg !1397
  %33 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1398
  %34 = call i32 @pkg_abbrev_want(%struct.pkginfo* %33), !dbg !1399
  %35 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1400
  %36 = call i32 @pkg_abbrev_status(%struct.pkginfo* %35), !dbg !1401
  %37 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1402
  %38 = call i32 @pkg_abbrev_eflag(%struct.pkginfo* %37), !dbg !1403
  %39 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1404
  %40 = call i8* @pkg_name(%struct.pkginfo* %39, i32 1), !dbg !1405
  %41 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1406
  %42 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %41, i32 0, i32 9, !dbg !1407
  %43 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %42, i32 0, i32 11, !dbg !1408
  %44 = call i8* @versiondescribe(%struct.dpkg_version* %43, i32 1), !dbg !1409
  %45 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1410
  %46 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %45, i32 0, i32 9, !dbg !1411
  %47 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %46, i32 0, i32 3, !dbg !1412
  %48 = load %struct.dpkg_arch*, %struct.dpkg_arch** %47, align 8, !dbg !1412
  %49 = call i8* @dpkg_arch_describe(%struct.dpkg_arch* %48), !dbg !1413
  %50 = load i8*, i8** %9, align 8, !dbg !1414
  %51 = load i32, i32* %8, align 4, !dbg !1415
  call void @list_format_print(%struct.list_format* %32, i32 %34, i32 %36, i32 %38, i8* %40, i8* %44, i8* %49, i8* %50, i32 %51), !dbg !1416
  ret void, !dbg !1417
}

; Function Attrs: nounwind uwtable
define internal i32 @pkg_array_match_patterns(%struct.pkg_array*, void (%struct.pkg_array*, %struct.pkginfo*, i8*)*, i8*, i8**) #0 !dbg !1418 {
  %5 = alloca %struct.pkg_array*, align 8
  %6 = alloca void (%struct.pkg_array*, %struct.pkginfo*, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.pkg_spec*, align 8
  %15 = alloca %struct.pkginfo*, align 8
  %16 = alloca i8, align 1
  store %struct.pkg_array* %0, %struct.pkg_array** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.pkg_array** %5, metadata !1423, metadata !201), !dbg !1424
  store void (%struct.pkg_array*, %struct.pkginfo*, i8*)* %1, void (%struct.pkg_array*, %struct.pkginfo*, i8*)** %6, align 8
  call void @llvm.dbg.declare(metadata void (%struct.pkg_array*, %struct.pkginfo*, i8*)** %6, metadata !1425, metadata !201), !dbg !1426
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1427, metadata !201), !dbg !1428
  store i8** %3, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !1429, metadata !201), !dbg !1430
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1431, metadata !201), !dbg !1432
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1433, metadata !201), !dbg !1434
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1435, metadata !201), !dbg !1436
  call void @llvm.dbg.declare(metadata i32** %12, metadata !1437, metadata !201), !dbg !1438
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1439, metadata !201), !dbg !1440
  store i32 0, i32* %13, align 4, !dbg !1440
  call void @llvm.dbg.declare(metadata %struct.pkg_spec** %14, metadata !1441, metadata !201), !dbg !1454
  store i32 0, i32* %9, align 4, !dbg !1455
  br label %17, !dbg !1457

; <label>:17:                                     ; preds = %25, %4
  %18 = load i32, i32* %9, align 4, !dbg !1458
  %19 = sext i32 %18 to i64, !dbg !1461
  %20 = load i8**, i8*** %8, align 8, !dbg !1461
  %21 = getelementptr inbounds i8*, i8** %20, i64 %19, !dbg !1461
  %22 = load i8*, i8** %21, align 8, !dbg !1461
  %23 = icmp ne i8* %22, null, !dbg !1462
  br i1 %23, label %24, label %28, !dbg !1462

; <label>:24:                                     ; preds = %17
  br label %25, !dbg !1463

; <label>:25:                                     ; preds = %24
  %26 = load i32, i32* %9, align 4, !dbg !1465
  %27 = add nsw i32 %26, 1, !dbg !1465
  store i32 %27, i32* %9, align 4, !dbg !1465
  br label %17, !dbg !1467, !llvm.loop !1468

; <label>:28:                                     ; preds = %17
  %29 = load i32, i32* %9, align 4, !dbg !1470
  %30 = sext i32 %29 to i64, !dbg !1470
  %31 = call i8* @m_calloc(i64 %30, i64 4), !dbg !1471
  %32 = bitcast i8* %31 to i32*, !dbg !1471
  store i32* %32, i32** %12, align 8, !dbg !1472
  %33 = load i32, i32* %9, align 4, !dbg !1473
  %34 = sext i32 %33 to i64, !dbg !1473
  %35 = mul i64 40, %34, !dbg !1474
  %36 = call i8* @m_malloc(i64 %35), !dbg !1475
  %37 = bitcast i8* %36 to %struct.pkg_spec*, !dbg !1475
  store %struct.pkg_spec* %37, %struct.pkg_spec** %14, align 8, !dbg !1476
  store i32 0, i32* %11, align 4, !dbg !1477
  br label %38, !dbg !1479

; <label>:38:                                     ; preds = %57, %28
  %39 = load i32, i32* %11, align 4, !dbg !1480
  %40 = load i32, i32* %9, align 4, !dbg !1483
  %41 = icmp slt i32 %39, %40, !dbg !1484
  br i1 %41, label %42, label %60, !dbg !1485

; <label>:42:                                     ; preds = %38
  %43 = load i32, i32* %11, align 4, !dbg !1486
  %44 = sext i32 %43 to i64, !dbg !1488
  %45 = load %struct.pkg_spec*, %struct.pkg_spec** %14, align 8, !dbg !1488
  %46 = getelementptr inbounds %struct.pkg_spec, %struct.pkg_spec* %45, i64 %44, !dbg !1488
  call void @pkg_spec_init(%struct.pkg_spec* %46, i32 513), !dbg !1489
  %47 = load i32, i32* %11, align 4, !dbg !1490
  %48 = sext i32 %47 to i64, !dbg !1491
  %49 = load %struct.pkg_spec*, %struct.pkg_spec** %14, align 8, !dbg !1491
  %50 = getelementptr inbounds %struct.pkg_spec, %struct.pkg_spec* %49, i64 %48, !dbg !1491
  %51 = load i32, i32* %11, align 4, !dbg !1492
  %52 = sext i32 %51 to i64, !dbg !1493
  %53 = load i8**, i8*** %8, align 8, !dbg !1493
  %54 = getelementptr inbounds i8*, i8** %53, i64 %52, !dbg !1493
  %55 = load i8*, i8** %54, align 8, !dbg !1493
  %56 = call i8* @pkg_spec_parse(%struct.pkg_spec* %50, i8* %55), !dbg !1494
  br label %57, !dbg !1495

; <label>:57:                                     ; preds = %42
  %58 = load i32, i32* %11, align 4, !dbg !1496
  %59 = add nsw i32 %58, 1, !dbg !1496
  store i32 %59, i32* %11, align 4, !dbg !1496
  br label %38, !dbg !1498, !llvm.loop !1499

; <label>:60:                                     ; preds = %38
  store i32 0, i32* %10, align 4, !dbg !1501
  br label %61, !dbg !1503

; <label>:61:                                     ; preds = %110, %60
  %62 = load i32, i32* %10, align 4, !dbg !1504
  %63 = load %struct.pkg_array*, %struct.pkg_array** %5, align 8, !dbg !1507
  %64 = getelementptr inbounds %struct.pkg_array, %struct.pkg_array* %63, i32 0, i32 0, !dbg !1508
  %65 = load i32, i32* %64, align 8, !dbg !1508
  %66 = icmp slt i32 %62, %65, !dbg !1509
  br i1 %66, label %67, label %113, !dbg !1510

; <label>:67:                                     ; preds = %61
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %15, metadata !1511, metadata !201), !dbg !1513
  call void @llvm.dbg.declare(metadata i8* %16, metadata !1514, metadata !201), !dbg !1515
  store i8 0, i8* %16, align 1, !dbg !1515
  %68 = load i32, i32* %10, align 4, !dbg !1516
  %69 = sext i32 %68 to i64, !dbg !1517
  %70 = load %struct.pkg_array*, %struct.pkg_array** %5, align 8, !dbg !1517
  %71 = getelementptr inbounds %struct.pkg_array, %struct.pkg_array* %70, i32 0, i32 1, !dbg !1518
  %72 = load %struct.pkginfo**, %struct.pkginfo*** %71, align 8, !dbg !1518
  %73 = getelementptr inbounds %struct.pkginfo*, %struct.pkginfo** %72, i64 %69, !dbg !1517
  %74 = load %struct.pkginfo*, %struct.pkginfo** %73, align 8, !dbg !1517
  store %struct.pkginfo* %74, %struct.pkginfo** %15, align 8, !dbg !1519
  store i32 0, i32* %11, align 4, !dbg !1520
  br label %75, !dbg !1522

; <label>:75:                                     ; preds = %96, %67
  %76 = load i32, i32* %11, align 4, !dbg !1523
  %77 = load i32, i32* %9, align 4, !dbg !1526
  %78 = icmp slt i32 %76, %77, !dbg !1527
  br i1 %78, label %79, label %99, !dbg !1528

; <label>:79:                                     ; preds = %75
  %80 = load i32, i32* %11, align 4, !dbg !1529
  %81 = sext i32 %80 to i64, !dbg !1532
  %82 = load %struct.pkg_spec*, %struct.pkg_spec** %14, align 8, !dbg !1532
  %83 = getelementptr inbounds %struct.pkg_spec, %struct.pkg_spec* %82, i64 %81, !dbg !1532
  %84 = load %struct.pkginfo*, %struct.pkginfo** %15, align 8, !dbg !1533
  %85 = load %struct.pkginfo*, %struct.pkginfo** %15, align 8, !dbg !1534
  %86 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %85, i32 0, i32 9, !dbg !1535
  %87 = call zeroext i1 @pkg_spec_match_pkg(%struct.pkg_spec* %83, %struct.pkginfo* %84, %struct.pkgbin* %86), !dbg !1536
  br i1 %87, label %88, label %95, !dbg !1537

; <label>:88:                                     ; preds = %79
  store i8 1, i8* %16, align 1, !dbg !1538
  %89 = load i32, i32* %11, align 4, !dbg !1540
  %90 = sext i32 %89 to i64, !dbg !1541
  %91 = load i32*, i32** %12, align 8, !dbg !1541
  %92 = getelementptr inbounds i32, i32* %91, i64 %90, !dbg !1541
  %93 = load i32, i32* %92, align 4, !dbg !1542
  %94 = add nsw i32 %93, 1, !dbg !1542
  store i32 %94, i32* %92, align 4, !dbg !1542
  br label %95, !dbg !1543

; <label>:95:                                     ; preds = %88, %79
  br label %96, !dbg !1544

; <label>:96:                                     ; preds = %95
  %97 = load i32, i32* %11, align 4, !dbg !1545
  %98 = add nsw i32 %97, 1, !dbg !1545
  store i32 %98, i32* %11, align 4, !dbg !1545
  br label %75, !dbg !1547, !llvm.loop !1548

; <label>:99:                                     ; preds = %75
  %100 = load i8, i8* %16, align 1, !dbg !1550
  %101 = trunc i8 %100 to i1, !dbg !1550
  br i1 %101, label %109, label %102, !dbg !1552

; <label>:102:                                    ; preds = %99
  %103 = load i32, i32* %10, align 4, !dbg !1553
  %104 = sext i32 %103 to i64, !dbg !1554
  %105 = load %struct.pkg_array*, %struct.pkg_array** %5, align 8, !dbg !1554
  %106 = getelementptr inbounds %struct.pkg_array, %struct.pkg_array* %105, i32 0, i32 1, !dbg !1555
  %107 = load %struct.pkginfo**, %struct.pkginfo*** %106, align 8, !dbg !1555
  %108 = getelementptr inbounds %struct.pkginfo*, %struct.pkginfo** %107, i64 %104, !dbg !1554
  store %struct.pkginfo* null, %struct.pkginfo** %108, align 8, !dbg !1556
  br label %109, !dbg !1554

; <label>:109:                                    ; preds = %102, %99
  br label %110, !dbg !1557

; <label>:110:                                    ; preds = %109
  %111 = load i32, i32* %10, align 4, !dbg !1558
  %112 = add nsw i32 %111, 1, !dbg !1558
  store i32 %112, i32* %10, align 4, !dbg !1558
  br label %61, !dbg !1560, !llvm.loop !1561

; <label>:113:                                    ; preds = %61
  %114 = load %struct.pkg_array*, %struct.pkg_array** %5, align 8, !dbg !1563
  %115 = load void (%struct.pkg_array*, %struct.pkginfo*, i8*)*, void (%struct.pkg_array*, %struct.pkginfo*, i8*)** %6, align 8, !dbg !1564
  %116 = load i8*, i8** %7, align 8, !dbg !1565
  call void @pkg_array_foreach(%struct.pkg_array* %114, void (%struct.pkg_array*, %struct.pkginfo*, i8*)* %115, i8* %116), !dbg !1566
  store i32 0, i32* %11, align 4, !dbg !1567
  br label %117, !dbg !1569

; <label>:117:                                    ; preds = %142, %113
  %118 = load i32, i32* %11, align 4, !dbg !1570
  %119 = load i32, i32* %9, align 4, !dbg !1573
  %120 = icmp slt i32 %118, %119, !dbg !1574
  br i1 %120, label %121, label %145, !dbg !1575

; <label>:121:                                    ; preds = %117
  %122 = load i32, i32* %11, align 4, !dbg !1576
  %123 = sext i32 %122 to i64, !dbg !1579
  %124 = load i32*, i32** %12, align 8, !dbg !1579
  %125 = getelementptr inbounds i32, i32* %124, i64 %123, !dbg !1579
  %126 = load i32, i32* %125, align 4, !dbg !1579
  %127 = icmp ne i32 %126, 0, !dbg !1579
  br i1 %127, label %137, label %128, !dbg !1580

; <label>:128:                                    ; preds = %121
  %129 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.41, i32 0, i32 0)) #10, !dbg !1581
  %130 = load i32, i32* %11, align 4, !dbg !1583
  %131 = sext i32 %130 to i64, !dbg !1584
  %132 = load i8**, i8*** %8, align 8, !dbg !1584
  %133 = getelementptr inbounds i8*, i8** %132, i64 %131, !dbg !1584
  %134 = load i8*, i8** %133, align 8, !dbg !1584
  call void (i8*, ...) @notice(i8* %129, i8* %134), !dbg !1585
  %135 = load i32, i32* %13, align 4, !dbg !1587
  %136 = add nsw i32 %135, 1, !dbg !1587
  store i32 %136, i32* %13, align 4, !dbg !1587
  br label %137, !dbg !1588

; <label>:137:                                    ; preds = %128, %121
  %138 = load i32, i32* %11, align 4, !dbg !1589
  %139 = sext i32 %138 to i64, !dbg !1590
  %140 = load %struct.pkg_spec*, %struct.pkg_spec** %14, align 8, !dbg !1590
  %141 = getelementptr inbounds %struct.pkg_spec, %struct.pkg_spec* %140, i64 %139, !dbg !1590
  call void @pkg_spec_destroy(%struct.pkg_spec* %141), !dbg !1591
  br label %142, !dbg !1592

; <label>:142:                                    ; preds = %137
  %143 = load i32, i32* %11, align 4, !dbg !1593
  %144 = add nsw i32 %143, 1, !dbg !1593
  store i32 %144, i32* %11, align 4, !dbg !1593
  br label %117, !dbg !1595, !llvm.loop !1596

; <label>:145:                                    ; preds = %117
  %146 = load %struct.pkg_spec*, %struct.pkg_spec** %14, align 8, !dbg !1598
  %147 = bitcast %struct.pkg_spec* %146 to i8*, !dbg !1598
  call void @free(i8* %147) #10, !dbg !1599
  %148 = load i32*, i32** %12, align 8, !dbg !1600
  %149 = bitcast i32* %148 to i8*, !dbg !1600
  call void @free(i8* %149) #10, !dbg !1601
  %150 = load i32, i32* %13, align 4, !dbg !1602
  ret i32 %150, !dbg !1603
}

declare void @pager_reap(%struct.pager*) #2

declare void @pkg_array_destroy(%struct.pkg_array*) #2

; Function Attrs: nounwind uwtable
define internal void @list_format_init(%struct.list_format*, %struct.pkg_array*) #0 !dbg !1604 {
  %3 = alloca %struct.list_format*, align 8
  %4 = alloca %struct.pkg_array*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.list_format* %0, %struct.list_format** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.list_format** %3, metadata !1607, metadata !201), !dbg !1608
  store %struct.pkg_array* %1, %struct.pkg_array** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.pkg_array** %4, metadata !1609, metadata !201), !dbg !1610
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1611, metadata !201), !dbg !1612
  %10 = load %struct.list_format*, %struct.list_format** %3, align 8, !dbg !1613
  %11 = getelementptr inbounds %struct.list_format, %struct.list_format* %10, i32 0, i32 1, !dbg !1615
  %12 = load i32, i32* %11, align 4, !dbg !1615
  %13 = icmp ne i32 %12, 0, !dbg !1616
  br i1 %13, label %14, label %15, !dbg !1617

; <label>:14:                                     ; preds = %2
  br label %132, !dbg !1618

; <label>:15:                                     ; preds = %2
  %16 = load %struct.list_format*, %struct.list_format** %3, align 8, !dbg !1619
  %17 = getelementptr inbounds %struct.list_format, %struct.list_format* %16, i32 0, i32 1, !dbg !1620
  store i32 14, i32* %17, align 4, !dbg !1621
  %18 = load %struct.list_format*, %struct.list_format** %3, align 8, !dbg !1622
  %19 = getelementptr inbounds %struct.list_format, %struct.list_format* %18, i32 0, i32 2, !dbg !1623
  store i32 12, i32* %19, align 4, !dbg !1624
  %20 = load %struct.list_format*, %struct.list_format** %3, align 8, !dbg !1625
  %21 = getelementptr inbounds %struct.list_format, %struct.list_format* %20, i32 0, i32 3, !dbg !1626
  store i32 12, i32* %21, align 4, !dbg !1627
  %22 = load %struct.list_format*, %struct.list_format** %3, align 8, !dbg !1628
  %23 = getelementptr inbounds %struct.list_format, %struct.list_format* %22, i32 0, i32 4, !dbg !1629
  store i32 33, i32* %23, align 4, !dbg !1630
  store i32 0, i32* %5, align 4, !dbg !1631
  br label %24, !dbg !1633

; <label>:24:                                     ; preds = %129, %15
  %25 = load i32, i32* %5, align 4, !dbg !1634
  %26 = load %struct.pkg_array*, %struct.pkg_array** %4, align 8, !dbg !1637
  %27 = getelementptr inbounds %struct.pkg_array, %struct.pkg_array* %26, i32 0, i32 0, !dbg !1638
  %28 = load i32, i32* %27, align 8, !dbg !1638
  %29 = icmp slt i32 %25, %28, !dbg !1639
  br i1 %29, label %30, label %132, !dbg !1640

; <label>:30:                                     ; preds = %24
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1641, metadata !201), !dbg !1643
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1644, metadata !201), !dbg !1645
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1646, metadata !201), !dbg !1647
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1648, metadata !201), !dbg !1649
  %31 = load i32, i32* %5, align 4, !dbg !1650
  %32 = sext i32 %31 to i64, !dbg !1652
  %33 = load %struct.pkg_array*, %struct.pkg_array** %4, align 8, !dbg !1652
  %34 = getelementptr inbounds %struct.pkg_array, %struct.pkg_array* %33, i32 0, i32 1, !dbg !1653
  %35 = load %struct.pkginfo**, %struct.pkginfo*** %34, align 8, !dbg !1653
  %36 = getelementptr inbounds %struct.pkginfo*, %struct.pkginfo** %35, i64 %32, !dbg !1652
  %37 = load %struct.pkginfo*, %struct.pkginfo** %36, align 8, !dbg !1652
  %38 = icmp eq %struct.pkginfo* %37, null, !dbg !1654
  br i1 %38, label %39, label %40, !dbg !1655

; <label>:39:                                     ; preds = %30
  br label %129, !dbg !1656

; <label>:40:                                     ; preds = %30
  %41 = load i32, i32* %5, align 4, !dbg !1657
  %42 = sext i32 %41 to i64, !dbg !1658
  %43 = load %struct.pkg_array*, %struct.pkg_array** %4, align 8, !dbg !1658
  %44 = getelementptr inbounds %struct.pkg_array, %struct.pkg_array* %43, i32 0, i32 1, !dbg !1659
  %45 = load %struct.pkginfo**, %struct.pkginfo*** %44, align 8, !dbg !1659
  %46 = getelementptr inbounds %struct.pkginfo*, %struct.pkginfo** %45, i64 %42, !dbg !1658
  %47 = load %struct.pkginfo*, %struct.pkginfo** %46, align 8, !dbg !1658
  %48 = call i8* @pkg_name(%struct.pkginfo* %47, i32 1), !dbg !1660
  %49 = call i32 @str_width(i8* %48), !dbg !1661
  store i32 %49, i32* %6, align 4, !dbg !1663
  %50 = load i32, i32* %5, align 4, !dbg !1664
  %51 = sext i32 %50 to i64, !dbg !1665
  %52 = load %struct.pkg_array*, %struct.pkg_array** %4, align 8, !dbg !1665
  %53 = getelementptr inbounds %struct.pkg_array, %struct.pkg_array* %52, i32 0, i32 1, !dbg !1666
  %54 = load %struct.pkginfo**, %struct.pkginfo*** %53, align 8, !dbg !1666
  %55 = getelementptr inbounds %struct.pkginfo*, %struct.pkginfo** %54, i64 %51, !dbg !1665
  %56 = load %struct.pkginfo*, %struct.pkginfo** %55, align 8, !dbg !1665
  %57 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %56, i32 0, i32 9, !dbg !1667
  %58 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %57, i32 0, i32 11, !dbg !1668
  %59 = call i8* @versiondescribe(%struct.dpkg_version* %58, i32 1), !dbg !1669
  %60 = call i32 @str_width(i8* %59), !dbg !1670
  store i32 %60, i32* %7, align 4, !dbg !1671
  %61 = load i32, i32* %5, align 4, !dbg !1672
  %62 = sext i32 %61 to i64, !dbg !1673
  %63 = load %struct.pkg_array*, %struct.pkg_array** %4, align 8, !dbg !1673
  %64 = getelementptr inbounds %struct.pkg_array, %struct.pkg_array* %63, i32 0, i32 1, !dbg !1674
  %65 = load %struct.pkginfo**, %struct.pkginfo*** %64, align 8, !dbg !1674
  %66 = getelementptr inbounds %struct.pkginfo*, %struct.pkginfo** %65, i64 %62, !dbg !1673
  %67 = load %struct.pkginfo*, %struct.pkginfo** %66, align 8, !dbg !1673
  %68 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %67, i32 0, i32 9, !dbg !1675
  %69 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %68, i32 0, i32 3, !dbg !1676
  %70 = load %struct.dpkg_arch*, %struct.dpkg_arch** %69, align 8, !dbg !1676
  %71 = call i8* @dpkg_arch_describe(%struct.dpkg_arch* %70), !dbg !1677
  %72 = call i32 @str_width(i8* %71), !dbg !1678
  store i32 %72, i32* %8, align 4, !dbg !1679
  %73 = load i32, i32* %5, align 4, !dbg !1680
  %74 = sext i32 %73 to i64, !dbg !1681
  %75 = load %struct.pkg_array*, %struct.pkg_array** %4, align 8, !dbg !1681
  %76 = getelementptr inbounds %struct.pkg_array, %struct.pkg_array* %75, i32 0, i32 1, !dbg !1682
  %77 = load %struct.pkginfo**, %struct.pkginfo*** %76, align 8, !dbg !1682
  %78 = getelementptr inbounds %struct.pkginfo*, %struct.pkginfo** %77, i64 %74, !dbg !1681
  %79 = load %struct.pkginfo*, %struct.pkginfo** %78, align 8, !dbg !1681
  %80 = load i32, i32* %5, align 4, !dbg !1683
  %81 = sext i32 %80 to i64, !dbg !1684
  %82 = load %struct.pkg_array*, %struct.pkg_array** %4, align 8, !dbg !1684
  %83 = getelementptr inbounds %struct.pkg_array, %struct.pkg_array* %82, i32 0, i32 1, !dbg !1685
  %84 = load %struct.pkginfo**, %struct.pkginfo*** %83, align 8, !dbg !1685
  %85 = getelementptr inbounds %struct.pkginfo*, %struct.pkginfo** %84, i64 %81, !dbg !1684
  %86 = load %struct.pkginfo*, %struct.pkginfo** %85, align 8, !dbg !1684
  %87 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %86, i32 0, i32 9, !dbg !1686
  %88 = call i8* @pkgbin_synopsis(%struct.pkginfo* %79, %struct.pkgbin* %87, i32* %9), !dbg !1687
  %89 = load i32, i32* %6, align 4, !dbg !1688
  %90 = load %struct.list_format*, %struct.list_format** %3, align 8, !dbg !1690
  %91 = getelementptr inbounds %struct.list_format, %struct.list_format* %90, i32 0, i32 1, !dbg !1691
  %92 = load i32, i32* %91, align 4, !dbg !1691
  %93 = icmp sgt i32 %89, %92, !dbg !1692
  br i1 %93, label %94, label %98, !dbg !1693

; <label>:94:                                     ; preds = %40
  %95 = load i32, i32* %6, align 4, !dbg !1694
  %96 = load %struct.list_format*, %struct.list_format** %3, align 8, !dbg !1695
  %97 = getelementptr inbounds %struct.list_format, %struct.list_format* %96, i32 0, i32 1, !dbg !1696
  store i32 %95, i32* %97, align 4, !dbg !1697
  br label %98, !dbg !1695

; <label>:98:                                     ; preds = %94, %40
  %99 = load i32, i32* %7, align 4, !dbg !1698
  %100 = load %struct.list_format*, %struct.list_format** %3, align 8, !dbg !1700
  %101 = getelementptr inbounds %struct.list_format, %struct.list_format* %100, i32 0, i32 2, !dbg !1701
  %102 = load i32, i32* %101, align 4, !dbg !1701
  %103 = icmp sgt i32 %99, %102, !dbg !1702
  br i1 %103, label %104, label %108, !dbg !1703

; <label>:104:                                    ; preds = %98
  %105 = load i32, i32* %7, align 4, !dbg !1704
  %106 = load %struct.list_format*, %struct.list_format** %3, align 8, !dbg !1705
  %107 = getelementptr inbounds %struct.list_format, %struct.list_format* %106, i32 0, i32 2, !dbg !1706
  store i32 %105, i32* %107, align 4, !dbg !1707
  br label %108, !dbg !1705

; <label>:108:                                    ; preds = %104, %98
  %109 = load i32, i32* %8, align 4, !dbg !1708
  %110 = load %struct.list_format*, %struct.list_format** %3, align 8, !dbg !1710
  %111 = getelementptr inbounds %struct.list_format, %struct.list_format* %110, i32 0, i32 3, !dbg !1711
  %112 = load i32, i32* %111, align 4, !dbg !1711
  %113 = icmp sgt i32 %109, %112, !dbg !1712
  br i1 %113, label %114, label %118, !dbg !1713

; <label>:114:                                    ; preds = %108
  %115 = load i32, i32* %8, align 4, !dbg !1714
  %116 = load %struct.list_format*, %struct.list_format** %3, align 8, !dbg !1715
  %117 = getelementptr inbounds %struct.list_format, %struct.list_format* %116, i32 0, i32 3, !dbg !1716
  store i32 %115, i32* %117, align 4, !dbg !1717
  br label %118, !dbg !1715

; <label>:118:                                    ; preds = %114, %108
  %119 = load i32, i32* %9, align 4, !dbg !1718
  %120 = load %struct.list_format*, %struct.list_format** %3, align 8, !dbg !1720
  %121 = getelementptr inbounds %struct.list_format, %struct.list_format* %120, i32 0, i32 4, !dbg !1721
  %122 = load i32, i32* %121, align 4, !dbg !1721
  %123 = icmp sgt i32 %119, %122, !dbg !1722
  br i1 %123, label %124, label %128, !dbg !1723

; <label>:124:                                    ; preds = %118
  %125 = load i32, i32* %9, align 4, !dbg !1724
  %126 = load %struct.list_format*, %struct.list_format** %3, align 8, !dbg !1725
  %127 = getelementptr inbounds %struct.list_format, %struct.list_format* %126, i32 0, i32 4, !dbg !1726
  store i32 %125, i32* %127, align 4, !dbg !1727
  br label %128, !dbg !1725

; <label>:128:                                    ; preds = %124, %118
  br label %129, !dbg !1728

; <label>:129:                                    ; preds = %128, %39
  %130 = load i32, i32* %5, align 4, !dbg !1729
  %131 = add nsw i32 %130, 1, !dbg !1729
  store i32 %131, i32* %5, align 4, !dbg !1729
  br label %24, !dbg !1731, !llvm.loop !1732

; <label>:132:                                    ; preds = %14, %24
  ret void, !dbg !1734
}

; Function Attrs: nounwind uwtable
define internal void @list_format_print_header(%struct.list_format*) #0 !dbg !1735 {
  %2 = alloca %struct.list_format*, align 8
  %3 = alloca i32, align 4
  store %struct.list_format* %0, %struct.list_format** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.list_format** %2, metadata !1738, metadata !201), !dbg !1739
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1740, metadata !201), !dbg !1741
  %4 = load %struct.list_format*, %struct.list_format** %2, align 8, !dbg !1742
  %5 = getelementptr inbounds %struct.list_format, %struct.list_format* %4, i32 0, i32 0, !dbg !1744
  %6 = load i8, i8* %5, align 4, !dbg !1744
  %7 = trunc i8 %6 to i1, !dbg !1744
  br i1 %7, label %8, label %9, !dbg !1745

; <label>:8:                                      ; preds = %1
  br label %76, !dbg !1746

; <label>:9:                                      ; preds = %1
  %10 = call i8* @gettext(i8* getelementptr inbounds ([181 x i8], [181 x i8]* @.str.31, i32 0, i32 0)) #10, !dbg !1747
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1748
  %12 = call i32 @fputs(i8* %10, %struct._IO_FILE* %11), !dbg !1749
  %13 = load %struct.list_format*, %struct.list_format** %2, align 8, !dbg !1751
  %14 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0)) #10, !dbg !1752
  %15 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0)) #10, !dbg !1753
  %16 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i32 0, i32 0)) #10, !dbg !1754
  %17 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i32 0, i32 0)) #10, !dbg !1755
  %18 = load %struct.list_format*, %struct.list_format** %2, align 8, !dbg !1756
  %19 = getelementptr inbounds %struct.list_format, %struct.list_format* %18, i32 0, i32 4, !dbg !1757
  %20 = load i32, i32* %19, align 4, !dbg !1757
  call void @list_format_print(%struct.list_format* %13, i32 124, i32 124, i32 47, i8* %14, i8* %15, i8* %16, i8* %17, i32 %20), !dbg !1758
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0)), !dbg !1760
  store i32 0, i32* %3, align 4, !dbg !1761
  br label %22, !dbg !1763

; <label>:22:                                     ; preds = %30, %9
  %23 = load i32, i32* %3, align 4, !dbg !1764
  %24 = load %struct.list_format*, %struct.list_format** %2, align 8, !dbg !1767
  %25 = getelementptr inbounds %struct.list_format, %struct.list_format* %24, i32 0, i32 1, !dbg !1768
  %26 = load i32, i32* %25, align 4, !dbg !1768
  %27 = icmp slt i32 %23, %26, !dbg !1769
  br i1 %27, label %28, label %33, !dbg !1770

; <label>:28:                                     ; preds = %22
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0)), !dbg !1771
  br label %30, !dbg !1771

; <label>:30:                                     ; preds = %28
  %31 = load i32, i32* %3, align 4, !dbg !1772
  %32 = add nsw i32 %31, 1, !dbg !1772
  store i32 %32, i32* %3, align 4, !dbg !1772
  br label %22, !dbg !1774, !llvm.loop !1775

; <label>:33:                                     ; preds = %22
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0)), !dbg !1777
  store i32 0, i32* %3, align 4, !dbg !1778
  br label %35, !dbg !1780

; <label>:35:                                     ; preds = %43, %33
  %36 = load i32, i32* %3, align 4, !dbg !1781
  %37 = load %struct.list_format*, %struct.list_format** %2, align 8, !dbg !1784
  %38 = getelementptr inbounds %struct.list_format, %struct.list_format* %37, i32 0, i32 2, !dbg !1785
  %39 = load i32, i32* %38, align 4, !dbg !1785
  %40 = icmp slt i32 %36, %39, !dbg !1786
  br i1 %40, label %41, label %46, !dbg !1787

; <label>:41:                                     ; preds = %35
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0)), !dbg !1788
  br label %43, !dbg !1788

; <label>:43:                                     ; preds = %41
  %44 = load i32, i32* %3, align 4, !dbg !1789
  %45 = add nsw i32 %44, 1, !dbg !1789
  store i32 %45, i32* %3, align 4, !dbg !1789
  br label %35, !dbg !1791, !llvm.loop !1792

; <label>:46:                                     ; preds = %35
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0)), !dbg !1794
  store i32 0, i32* %3, align 4, !dbg !1795
  br label %48, !dbg !1797

; <label>:48:                                     ; preds = %56, %46
  %49 = load i32, i32* %3, align 4, !dbg !1798
  %50 = load %struct.list_format*, %struct.list_format** %2, align 8, !dbg !1801
  %51 = getelementptr inbounds %struct.list_format, %struct.list_format* %50, i32 0, i32 3, !dbg !1802
  %52 = load i32, i32* %51, align 4, !dbg !1802
  %53 = icmp slt i32 %49, %52, !dbg !1803
  br i1 %53, label %54, label %59, !dbg !1804

; <label>:54:                                     ; preds = %48
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0)), !dbg !1805
  br label %56, !dbg !1805

; <label>:56:                                     ; preds = %54
  %57 = load i32, i32* %3, align 4, !dbg !1806
  %58 = add nsw i32 %57, 1, !dbg !1806
  store i32 %58, i32* %3, align 4, !dbg !1806
  br label %48, !dbg !1808, !llvm.loop !1809

; <label>:59:                                     ; preds = %48
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0)), !dbg !1811
  store i32 0, i32* %3, align 4, !dbg !1812
  br label %61, !dbg !1814

; <label>:61:                                     ; preds = %69, %59
  %62 = load i32, i32* %3, align 4, !dbg !1815
  %63 = load %struct.list_format*, %struct.list_format** %2, align 8, !dbg !1818
  %64 = getelementptr inbounds %struct.list_format, %struct.list_format* %63, i32 0, i32 4, !dbg !1819
  %65 = load i32, i32* %64, align 4, !dbg !1819
  %66 = icmp slt i32 %62, %65, !dbg !1820
  br i1 %66, label %67, label %72, !dbg !1821

; <label>:67:                                     ; preds = %61
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0)), !dbg !1822
  br label %69, !dbg !1822

; <label>:69:                                     ; preds = %67
  %70 = load i32, i32* %3, align 4, !dbg !1823
  %71 = add nsw i32 %70, 1, !dbg !1823
  store i32 %71, i32* %3, align 4, !dbg !1823
  br label %61, !dbg !1825, !llvm.loop !1826

; <label>:72:                                     ; preds = %61
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0)), !dbg !1828
  %74 = load %struct.list_format*, %struct.list_format** %2, align 8, !dbg !1829
  %75 = getelementptr inbounds %struct.list_format, %struct.list_format* %74, i32 0, i32 0, !dbg !1830
  store i8 1, i8* %75, align 4, !dbg !1831
  br label %76, !dbg !1832

; <label>:76:                                     ; preds = %72, %8
  ret void, !dbg !1833
}

declare i8* @pkgbin_synopsis(%struct.pkginfo*, %struct.pkgbin*, i32*) #2

; Function Attrs: nounwind uwtable
define internal void @list_format_print(%struct.list_format*, i32, i32, i32, i8*, i8*, i8*, i8*, i32) #0 !dbg !1834 {
  %10 = alloca %struct.list_format*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.str_crop_info, align 4
  %20 = alloca %struct.str_crop_info, align 4
  %21 = alloca %struct.str_crop_info, align 4
  %22 = alloca %struct.str_crop_info, align 4
  store %struct.list_format* %0, %struct.list_format** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.list_format** %10, metadata !1837, metadata !201), !dbg !1838
  store i32 %1, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1839, metadata !201), !dbg !1840
  store i32 %2, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1841, metadata !201), !dbg !1842
  store i32 %3, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1843, metadata !201), !dbg !1844
  store i8* %4, i8** %14, align 8
  call void @llvm.dbg.declare(metadata i8** %14, metadata !1845, metadata !201), !dbg !1846
  store i8* %5, i8** %15, align 8
  call void @llvm.dbg.declare(metadata i8** %15, metadata !1847, metadata !201), !dbg !1848
  store i8* %6, i8** %16, align 8
  call void @llvm.dbg.declare(metadata i8** %16, metadata !1849, metadata !201), !dbg !1850
  store i8* %7, i8** %17, align 8
  call void @llvm.dbg.declare(metadata i8** %17, metadata !1851, metadata !201), !dbg !1852
  store i32 %8, i32* %18, align 4
  call void @llvm.dbg.declare(metadata i32* %18, metadata !1853, metadata !201), !dbg !1854
  call void @llvm.dbg.declare(metadata %struct.str_crop_info* %19, metadata !1855, metadata !201), !dbg !1860
  call void @llvm.dbg.declare(metadata %struct.str_crop_info* %20, metadata !1861, metadata !201), !dbg !1862
  call void @llvm.dbg.declare(metadata %struct.str_crop_info* %21, metadata !1863, metadata !201), !dbg !1864
  call void @llvm.dbg.declare(metadata %struct.str_crop_info* %22, metadata !1865, metadata !201), !dbg !1866
  %23 = load i8*, i8** %14, align 8, !dbg !1867
  %24 = load %struct.list_format*, %struct.list_format** %10, align 8, !dbg !1868
  %25 = getelementptr inbounds %struct.list_format, %struct.list_format* %24, i32 0, i32 1, !dbg !1869
  %26 = load i32, i32* %25, align 4, !dbg !1869
  call void @str_gen_crop(i8* %23, i32 %26, %struct.str_crop_info* %19), !dbg !1870
  %27 = load i8*, i8** %15, align 8, !dbg !1871
  %28 = load %struct.list_format*, %struct.list_format** %10, align 8, !dbg !1872
  %29 = getelementptr inbounds %struct.list_format, %struct.list_format* %28, i32 0, i32 2, !dbg !1873
  %30 = load i32, i32* %29, align 4, !dbg !1873
  call void @str_gen_crop(i8* %27, i32 %30, %struct.str_crop_info* %20), !dbg !1874
  %31 = load i8*, i8** %16, align 8, !dbg !1875
  %32 = load %struct.list_format*, %struct.list_format** %10, align 8, !dbg !1876
  %33 = getelementptr inbounds %struct.list_format, %struct.list_format* %32, i32 0, i32 3, !dbg !1877
  %34 = load i32, i32* %33, align 4, !dbg !1877
  call void @str_gen_crop(i8* %31, i32 %34, %struct.str_crop_info* %21), !dbg !1878
  %35 = load i8*, i8** %17, align 8, !dbg !1879
  %36 = load i32, i32* %18, align 4, !dbg !1880
  call void @str_gen_crop(i8* %35, i32 %36, %struct.str_crop_info* %22), !dbg !1881
  %37 = load i32, i32* %11, align 4, !dbg !1882
  %38 = load i32, i32* %12, align 4, !dbg !1883
  %39 = load i32, i32* %13, align 4, !dbg !1884
  %40 = getelementptr inbounds %struct.str_crop_info, %struct.str_crop_info* %19, i32 0, i32 1, !dbg !1885
  %41 = load i32, i32* %40, align 4, !dbg !1885
  %42 = getelementptr inbounds %struct.str_crop_info, %struct.str_crop_info* %19, i32 0, i32 0, !dbg !1886
  %43 = load i32, i32* %42, align 4, !dbg !1886
  %44 = load i8*, i8** %14, align 8, !dbg !1887
  %45 = getelementptr inbounds %struct.str_crop_info, %struct.str_crop_info* %20, i32 0, i32 1, !dbg !1888
  %46 = load i32, i32* %45, align 4, !dbg !1888
  %47 = getelementptr inbounds %struct.str_crop_info, %struct.str_crop_info* %20, i32 0, i32 0, !dbg !1889
  %48 = load i32, i32* %47, align 4, !dbg !1889
  %49 = load i8*, i8** %15, align 8, !dbg !1890
  %50 = getelementptr inbounds %struct.str_crop_info, %struct.str_crop_info* %21, i32 0, i32 1, !dbg !1891
  %51 = load i32, i32* %50, align 4, !dbg !1891
  %52 = getelementptr inbounds %struct.str_crop_info, %struct.str_crop_info* %21, i32 0, i32 0, !dbg !1892
  %53 = load i32, i32* %52, align 4, !dbg !1892
  %54 = load i8*, i8** %16, align 8, !dbg !1893
  %55 = getelementptr inbounds %struct.str_crop_info, %struct.str_crop_info* %22, i32 0, i32 0, !dbg !1894
  %56 = load i32, i32* %55, align 4, !dbg !1894
  %57 = load i8*, i8** %17, align 8, !dbg !1895
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.40, i32 0, i32 0), i32 %37, i32 %38, i32 %39, i32 %41, i32 %43, i8* %44, i32 %46, i32 %48, i8* %49, i32 %51, i32 %53, i8* %54, i32 %56, i8* %57), !dbg !1896
  ret void, !dbg !1897
}

declare i32 @pkg_abbrev_want(%struct.pkginfo*) #2

declare i32 @pkg_abbrev_status(%struct.pkginfo*) #2

declare i32 @pkg_abbrev_eflag(%struct.pkginfo*) #2

declare i8* @versiondescribe(%struct.dpkg_version*, i32) #2

declare i8* @dpkg_arch_describe(%struct.dpkg_arch*) #2

declare i32 @str_width(i8*) #2

declare void @str_gen_crop(i8*, i32, %struct.str_crop_info*) #2

declare i8* @m_calloc(i64, i64) #2

declare i8* @m_malloc(i64) #2

declare void @pkg_spec_init(%struct.pkg_spec*, i32) #2

declare i8* @pkg_spec_parse(%struct.pkg_spec*, i8*) #2

declare zeroext i1 @pkg_spec_match_pkg(%struct.pkg_spec*, %struct.pkginfo*, %struct.pkgbin*) #2

declare void @pkg_spec_destroy(%struct.pkg_spec*) #2

; Function Attrs: nounwind
declare void @free(i8*) #4

declare void @ensure_allinstfiles_available_quiet() #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #8

declare void @varbuf_reset(%struct.varbuf*) #2

declare void @varbuf_add_char(%struct.varbuf*, i32) #2

declare void @varbuf_add_buf(%struct.varbuf*, i8*, i64) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #8

declare void @varbuf_end_str(%struct.varbuf*) #2

; Function Attrs: nounwind readonly
declare i8* @strpbrk(i8*, i8*) #8

declare void @varbuf_trunc(%struct.varbuf*, i64) #2

declare i64 @path_trim_slash_slashdot(i8*) #2

declare %struct.fsys_namenode* @fsys_hash_find_node(i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @searchoutput(%struct.fsys_namenode*) #0 !dbg !1898 {
  %2 = alloca %struct.fsys_namenode*, align 8
  %3 = alloca %struct.fsys_node_pkgs_iter*, align 8
  %4 = alloca %struct.pkginfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.fsys_namenode* %0, %struct.fsys_namenode** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %2, metadata !1901, metadata !201), !dbg !1902
  call void @llvm.dbg.declare(metadata %struct.fsys_node_pkgs_iter** %3, metadata !1903, metadata !201), !dbg !1906
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %4, metadata !1907, metadata !201), !dbg !1908
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1909, metadata !201), !dbg !1910
  %8 = load %struct.fsys_namenode*, %struct.fsys_namenode** %2, align 8, !dbg !1911
  %9 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %8, i32 0, i32 3, !dbg !1913
  %10 = load %struct.fsys_diversion*, %struct.fsys_diversion** %9, align 8, !dbg !1913
  %11 = icmp ne %struct.fsys_diversion* %10, null, !dbg !1911
  br i1 %11, label %12, label %88, !dbg !1914

; <label>:12:                                     ; preds = %1
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1915, metadata !201), !dbg !1917
  %13 = load %struct.fsys_namenode*, %struct.fsys_namenode** %2, align 8, !dbg !1918
  %14 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %13, i32 0, i32 3, !dbg !1919
  %15 = load %struct.fsys_diversion*, %struct.fsys_diversion** %14, align 8, !dbg !1919
  %16 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %15, i32 0, i32 1, !dbg !1920
  %17 = load %struct.fsys_namenode*, %struct.fsys_namenode** %16, align 8, !dbg !1920
  %18 = icmp ne %struct.fsys_namenode* %17, null, !dbg !1918
  br i1 %18, label %19, label %27, !dbg !1918

; <label>:19:                                     ; preds = %12
  %20 = load %struct.fsys_namenode*, %struct.fsys_namenode** %2, align 8, !dbg !1921
  %21 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %20, i32 0, i32 3, !dbg !1922
  %22 = load %struct.fsys_diversion*, %struct.fsys_diversion** %21, align 8, !dbg !1922
  %23 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %22, i32 0, i32 1, !dbg !1923
  %24 = load %struct.fsys_namenode*, %struct.fsys_namenode** %23, align 8, !dbg !1923
  %25 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %24, i32 0, i32 1, !dbg !1924
  %26 = load i8*, i8** %25, align 8, !dbg !1924
  br label %31, !dbg !1925

; <label>:27:                                     ; preds = %12
  %28 = load %struct.fsys_namenode*, %struct.fsys_namenode** %2, align 8, !dbg !1927
  %29 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %28, i32 0, i32 1, !dbg !1928
  %30 = load i8*, i8** %29, align 8, !dbg !1928
  br label %31, !dbg !1929

; <label>:31:                                     ; preds = %27, %19
  %32 = phi i8* [ %26, %19 ], [ %30, %27 ], !dbg !1931
  store i8* %32, i8** %6, align 8, !dbg !1933
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1934, metadata !201), !dbg !1935
  %33 = load %struct.fsys_namenode*, %struct.fsys_namenode** %2, align 8, !dbg !1936
  %34 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %33, i32 0, i32 3, !dbg !1937
  %35 = load %struct.fsys_diversion*, %struct.fsys_diversion** %34, align 8, !dbg !1937
  %36 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %35, i32 0, i32 0, !dbg !1938
  %37 = load %struct.fsys_namenode*, %struct.fsys_namenode** %36, align 8, !dbg !1938
  %38 = icmp ne %struct.fsys_namenode* %37, null, !dbg !1936
  br i1 %38, label %39, label %47, !dbg !1936

; <label>:39:                                     ; preds = %31
  %40 = load %struct.fsys_namenode*, %struct.fsys_namenode** %2, align 8, !dbg !1939
  %41 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %40, i32 0, i32 3, !dbg !1940
  %42 = load %struct.fsys_diversion*, %struct.fsys_diversion** %41, align 8, !dbg !1940
  %43 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %42, i32 0, i32 0, !dbg !1941
  %44 = load %struct.fsys_namenode*, %struct.fsys_namenode** %43, align 8, !dbg !1941
  %45 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %44, i32 0, i32 1, !dbg !1942
  %46 = load i8*, i8** %45, align 8, !dbg !1942
  br label %51, !dbg !1943

; <label>:47:                                     ; preds = %31
  %48 = load %struct.fsys_namenode*, %struct.fsys_namenode** %2, align 8, !dbg !1944
  %49 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %48, i32 0, i32 1, !dbg !1945
  %50 = load i8*, i8** %49, align 8, !dbg !1945
  br label %51, !dbg !1946

; <label>:51:                                     ; preds = %47, %39
  %52 = phi i8* [ %46, %39 ], [ %50, %47 ], !dbg !1947
  store i8* %52, i8** %7, align 8, !dbg !1948
  %53 = load %struct.fsys_namenode*, %struct.fsys_namenode** %2, align 8, !dbg !1949
  %54 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %53, i32 0, i32 3, !dbg !1951
  %55 = load %struct.fsys_diversion*, %struct.fsys_diversion** %54, align 8, !dbg !1951
  %56 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %55, i32 0, i32 2, !dbg !1952
  %57 = load %struct.pkgset*, %struct.pkgset** %56, align 8, !dbg !1952
  %58 = icmp ne %struct.pkgset* %57, null, !dbg !1949
  br i1 %58, label %59, label %80, !dbg !1953

; <label>:59:                                     ; preds = %51
  %60 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.46, i32 0, i32 0)) #10, !dbg !1954
  %61 = load %struct.fsys_namenode*, %struct.fsys_namenode** %2, align 8, !dbg !1956
  %62 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %61, i32 0, i32 3, !dbg !1957
  %63 = load %struct.fsys_diversion*, %struct.fsys_diversion** %62, align 8, !dbg !1957
  %64 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %63, i32 0, i32 2, !dbg !1958
  %65 = load %struct.pkgset*, %struct.pkgset** %64, align 8, !dbg !1958
  %66 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %65, i32 0, i32 1, !dbg !1959
  %67 = load i8*, i8** %66, align 8, !dbg !1959
  %68 = load i8*, i8** %6, align 8, !dbg !1960
  %69 = call i32 (i8*, ...) @printf(i8* %60, i8* %67, i8* %68), !dbg !1961
  %70 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.47, i32 0, i32 0)) #10, !dbg !1963
  %71 = load %struct.fsys_namenode*, %struct.fsys_namenode** %2, align 8, !dbg !1964
  %72 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %71, i32 0, i32 3, !dbg !1965
  %73 = load %struct.fsys_diversion*, %struct.fsys_diversion** %72, align 8, !dbg !1965
  %74 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %73, i32 0, i32 2, !dbg !1966
  %75 = load %struct.pkgset*, %struct.pkgset** %74, align 8, !dbg !1966
  %76 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %75, i32 0, i32 1, !dbg !1967
  %77 = load i8*, i8** %76, align 8, !dbg !1967
  %78 = load i8*, i8** %7, align 8, !dbg !1968
  %79 = call i32 (i8*, ...) @printf(i8* %70, i8* %77, i8* %78), !dbg !1969
  br label %87, !dbg !1970

; <label>:80:                                     ; preds = %51
  %81 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.48, i32 0, i32 0)) #10, !dbg !1971
  %82 = load i8*, i8** %6, align 8, !dbg !1973
  %83 = call i32 (i8*, ...) @printf(i8* %81, i8* %82), !dbg !1974
  %84 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.49, i32 0, i32 0)) #10, !dbg !1976
  %85 = load i8*, i8** %7, align 8, !dbg !1977
  %86 = call i32 (i8*, ...) @printf(i8* %84, i8* %85), !dbg !1978
  br label %87

; <label>:87:                                     ; preds = %80, %59
  br label %88, !dbg !1979

; <label>:88:                                     ; preds = %87, %1
  store i32 0, i32* %5, align 4, !dbg !1980
  %89 = load %struct.fsys_namenode*, %struct.fsys_namenode** %2, align 8, !dbg !1981
  %90 = call %struct.fsys_node_pkgs_iter* @fsys_node_pkgs_iter_new(%struct.fsys_namenode* %89), !dbg !1982
  store %struct.fsys_node_pkgs_iter* %90, %struct.fsys_node_pkgs_iter** %3, align 8, !dbg !1983
  br label %91, !dbg !1984

; <label>:91:                                     ; preds = %101, %88
  %92 = load %struct.fsys_node_pkgs_iter*, %struct.fsys_node_pkgs_iter** %3, align 8, !dbg !1985
  %93 = call %struct.pkginfo* @fsys_node_pkgs_iter_next(%struct.fsys_node_pkgs_iter* %92), !dbg !1987
  store %struct.pkginfo* %93, %struct.pkginfo** %4, align 8, !dbg !1988
  %94 = icmp ne %struct.pkginfo* %93, null, !dbg !1989
  br i1 %94, label %95, label %108, !dbg !1989

; <label>:95:                                     ; preds = %91
  %96 = load i32, i32* %5, align 4, !dbg !1990
  %97 = icmp ne i32 %96, 0, !dbg !1990
  br i1 %97, label %98, label %101, !dbg !1993

; <label>:98:                                     ; preds = %95
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1994
  %100 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i32 0, i32 0), %struct._IO_FILE* %99), !dbg !1995
  br label %101, !dbg !1995

; <label>:101:                                    ; preds = %98, %95
  %102 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !1996
  %103 = call i8* @pkg_name(%struct.pkginfo* %102, i32 1), !dbg !1997
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1998
  %105 = call i32 @fputs(i8* %103, %struct._IO_FILE* %104), !dbg !1999
  %106 = load i32, i32* %5, align 4, !dbg !2001
  %107 = add nsw i32 %106, 1, !dbg !2001
  store i32 %107, i32* %5, align 4, !dbg !2001
  br label %91, !dbg !2002, !llvm.loop !2004

; <label>:108:                                    ; preds = %91
  %109 = load %struct.fsys_node_pkgs_iter*, %struct.fsys_node_pkgs_iter** %3, align 8, !dbg !2005
  call void @fsys_node_pkgs_iter_free(%struct.fsys_node_pkgs_iter* %109), !dbg !2006
  %110 = load i32, i32* %5, align 4, !dbg !2007
  %111 = icmp ne i32 %110, 0, !dbg !2007
  br i1 %111, label %112, label %117, !dbg !2009

; <label>:112:                                    ; preds = %108
  %113 = load %struct.fsys_namenode*, %struct.fsys_namenode** %2, align 8, !dbg !2010
  %114 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %113, i32 0, i32 1, !dbg !2012
  %115 = load i8*, i8** %114, align 8, !dbg !2012
  %116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i32 0, i32 0), i8* %115), !dbg !2013
  br label %117, !dbg !2013

; <label>:117:                                    ; preds = %112, %108
  %118 = load i32, i32* %5, align 4, !dbg !2014
  %119 = load %struct.fsys_namenode*, %struct.fsys_namenode** %2, align 8, !dbg !2015
  %120 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %119, i32 0, i32 3, !dbg !2016
  %121 = load %struct.fsys_diversion*, %struct.fsys_diversion** %120, align 8, !dbg !2016
  %122 = icmp ne %struct.fsys_diversion* %121, null, !dbg !2015
  %123 = select i1 %122, i32 1, i32 0, !dbg !2015
  %124 = add nsw i32 %118, %123, !dbg !2017
  ret i32 %124, !dbg !2018
}

declare %struct.fsys_hash_iter* @fsys_hash_iter_new() #2

declare %struct.fsys_namenode* @fsys_hash_iter_next(%struct.fsys_hash_iter*) #2

declare i32 @fnmatch(i8*, i8*, i32) #2

declare void @fsys_hash_iter_free(%struct.fsys_hash_iter*) #2

declare void @varbuf_destroy(%struct.varbuf*) #2

declare %struct.fsys_node_pkgs_iter* @fsys_node_pkgs_iter_new(%struct.fsys_namenode*) #2

declare %struct.pkginfo* @fsys_node_pkgs_iter_next(%struct.fsys_node_pkgs_iter*) #2

declare void @fsys_node_pkgs_iter_free(%struct.fsys_node_pkgs_iter*) #2

declare %struct.pkg_format_node* @pkg_format_parse(i8*, %struct.dpkg_error*) #2

declare void @dpkg_error_destroy(%struct.dpkg_error*) #2

declare void @pkg_format_show(%struct.pkg_format_node*, %struct.pkginfo*, %struct.pkgbin*) #2

; Function Attrs: nounwind uwtable
define internal void @pkg_array_show_item(%struct.pkg_array*, %struct.pkginfo*, i8*) #0 !dbg !2019 {
  %4 = alloca %struct.pkg_array*, align 8
  %5 = alloca %struct.pkginfo*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.pkg_format_node*, align 8
  store %struct.pkg_array* %0, %struct.pkg_array** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.pkg_array** %4, metadata !2020, metadata !201), !dbg !2021
  store %struct.pkginfo* %1, %struct.pkginfo** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %5, metadata !2022, metadata !201), !dbg !2023
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2024, metadata !201), !dbg !2025
  call void @llvm.dbg.declare(metadata %struct.pkg_format_node** %7, metadata !2026, metadata !201), !dbg !2027
  %8 = load i8*, i8** %6, align 8, !dbg !2028
  %9 = bitcast i8* %8 to %struct.pkg_format_node*, !dbg !2028
  store %struct.pkg_format_node* %9, %struct.pkg_format_node** %7, align 8, !dbg !2027
  %10 = load %struct.pkg_format_node*, %struct.pkg_format_node** %7, align 8, !dbg !2029
  %11 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !2030
  %12 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !2031
  %13 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %12, i32 0, i32 9, !dbg !2032
  call void @pkg_format_show(%struct.pkg_format_node* %10, %struct.pkginfo* %11, %struct.pkgbin* %13), !dbg !2033
  ret void, !dbg !2034
}

declare void @pkg_format_free(%struct.pkg_format_node*) #2

; Function Attrs: nounwind uwtable
define internal void @pkg_infodb_check_filetype(i8*) #0 !dbg !2035 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2038, metadata !201), !dbg !2039
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2040, metadata !201), !dbg !2041
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i32 0, i32 0), i8** %3, align 8, !dbg !2042
  br label %4, !dbg !2044

; <label>:4:                                      ; preds = %21, %1
  %5 = load i8*, i8** %3, align 8, !dbg !2045
  %6 = load i8, i8* %5, align 1, !dbg !2048
  %7 = icmp ne i8 %6, 0, !dbg !2049
  br i1 %7, label %8, label %24, !dbg !2049

; <label>:8:                                      ; preds = %4
  %9 = load i8*, i8** %2, align 8, !dbg !2050
  %10 = load i8*, i8** %3, align 8, !dbg !2052
  %11 = load i8, i8* %10, align 1, !dbg !2053
  %12 = sext i8 %11 to i32, !dbg !2053
  %13 = call i8* @strchr(i8* %9, i32 %12) #12, !dbg !2054
  %14 = icmp ne i8* %13, null, !dbg !2054
  br i1 %14, label %15, label %20, !dbg !2055

; <label>:15:                                     ; preds = %8
  %16 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.55, i32 0, i32 0)) #10, !dbg !2056
  %17 = load i8*, i8** %3, align 8, !dbg !2057
  %18 = load i8, i8* %17, align 1, !dbg !2058
  %19 = sext i8 %18 to i32, !dbg !2058
  call void (i8*, ...) @badusage(i8* %16, i32 %19) #11, !dbg !2059
  unreachable, !dbg !2061

; <label>:20:                                     ; preds = %8
  br label %21, !dbg !2062

; <label>:21:                                     ; preds = %20
  %22 = load i8*, i8** %3, align 8, !dbg !2063
  %23 = getelementptr inbounds i8, i8* %22, i32 1, !dbg !2063
  store i8* %23, i8** %3, align 8, !dbg !2063
  br label %4, !dbg !2065, !llvm.loop !2066

; <label>:24:                                     ; preds = %4
  ret void, !dbg !2068
}

; Function Attrs: noreturn
declare void @ohshit(i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal void @control_path_file(%struct.pkginfo*, i8*) #0 !dbg !2069 {
  %3 = alloca %struct.pkginfo*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stat, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %3, metadata !2072, metadata !201), !dbg !2073
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2074, metadata !201), !dbg !2075
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2076, metadata !201), !dbg !2077
  call void @llvm.dbg.declare(metadata %struct.stat* %6, metadata !2078, metadata !201), !dbg !2110
  %7 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !2111
  %8 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !2112
  %9 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %8, i32 0, i32 9, !dbg !2113
  %10 = load i8*, i8** %4, align 8, !dbg !2114
  %11 = call i8* @pkg_infodb_get_file(%struct.pkginfo* %7, %struct.pkgbin* %9, i8* %10), !dbg !2115
  store i8* %11, i8** %5, align 8, !dbg !2116
  %12 = load i8*, i8** %5, align 8, !dbg !2117
  %13 = call i32 @stat(i8* %12, %struct.stat* %6) #10, !dbg !2119
  %14 = icmp slt i32 %13, 0, !dbg !2120
  br i1 %14, label %15, label %16, !dbg !2121

; <label>:15:                                     ; preds = %2
  br label %25, !dbg !2122

; <label>:16:                                     ; preds = %2
  %17 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 3, !dbg !2123
  %18 = load i32, i32* %17, align 8, !dbg !2123
  %19 = and i32 %18, 61440, !dbg !2123
  %20 = icmp eq i32 %19, 32768, !dbg !2125
  br i1 %20, label %22, label %21, !dbg !2126

; <label>:21:                                     ; preds = %16
  br label %25, !dbg !2127

; <label>:22:                                     ; preds = %16
  %23 = load i8*, i8** %5, align 8, !dbg !2128
  %24 = load i8*, i8** %4, align 8, !dbg !2129
  call void @pkg_infodb_print_filename(i8* %23, i8* %24), !dbg !2130
  br label %25, !dbg !2131

; <label>:25:                                     ; preds = %22, %21, %15
  ret void, !dbg !2132
}

declare void @pkg_infodb_foreach(%struct.pkginfo*, %struct.pkgbin*, void (i8*, i8*)*) #2

; Function Attrs: nounwind uwtable
define internal void @pkg_infodb_print_filename(i8*, i8*) #0 !dbg !2134 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2137, metadata !201), !dbg !2138
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2139, metadata !201), !dbg !2140
  %5 = load i8*, i8** %4, align 8, !dbg !2141
  %6 = call zeroext i1 @pkg_infodb_is_internal(i8* %5), !dbg !2143
  br i1 %6, label %7, label %8, !dbg !2144

; <label>:7:                                      ; preds = %2
  br label %11, !dbg !2145

; <label>:8:                                      ; preds = %2
  %9 = load i8*, i8** %3, align 8, !dbg !2146
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i32 0, i32 0), i8* %9), !dbg !2147
  br label %11, !dbg !2148

; <label>:11:                                     ; preds = %8, %7
  ret void, !dbg !2149
}

declare i8* @pkg_infodb_get_file(%struct.pkginfo*, %struct.pkgbin*, i8*) #2

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #4

; Function Attrs: nounwind uwtable
define internal zeroext i1 @pkg_infodb_is_internal(i8*) #0 !dbg !2151 {
  %2 = alloca i1, align 1
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2152, metadata !201), !dbg !2153
  %4 = load i8*, i8** %3, align 8, !dbg !2154
  %5 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0)) #12, !dbg !2156
  %6 = icmp eq i32 %5, 0, !dbg !2157
  br i1 %6, label %11, label %7, !dbg !2158

; <label>:7:                                      ; preds = %1
  %8 = load i8*, i8** %3, align 8, !dbg !2159
  %9 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i32 0, i32 0)) #12, !dbg !2160
  %10 = icmp eq i32 %9, 0, !dbg !2161
  br i1 %10, label %11, label %12, !dbg !2162

; <label>:11:                                     ; preds = %7, %1
  store i1 true, i1* %2, align 1, !dbg !2164
  br label %18, !dbg !2164

; <label>:12:                                     ; preds = %7
  %13 = load i8*, i8** %3, align 8, !dbg !2165
  %14 = call i64 @strlen(i8* %13) #12, !dbg !2167
  %15 = icmp ugt i64 %14, 100, !dbg !2168
  br i1 %15, label %16, label %17, !dbg !2169

; <label>:16:                                     ; preds = %12
  store i1 true, i1* %2, align 1, !dbg !2170
  br label %18, !dbg !2170

; <label>:17:                                     ; preds = %12
  store i1 false, i1* %2, align 1, !dbg !2171
  br label %18, !dbg !2171

; <label>:18:                                     ; preds = %17, %16, %11
  %19 = load i1, i1* %2, align 1, !dbg !2172
  ret i1 %19, !dbg !2172
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #8

; Function Attrs: nounwind uwtable
define internal void @pkg_infodb_print_filetype(i8*, i8*) #0 !dbg !2173 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2174, metadata !201), !dbg !2175
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2176, metadata !201), !dbg !2177
  %5 = load i8*, i8** %4, align 8, !dbg !2178
  %6 = call zeroext i1 @pkg_infodb_is_internal(i8* %5), !dbg !2180
  br i1 %6, label %7, label %8, !dbg !2181

; <label>:7:                                      ; preds = %2
  br label %11, !dbg !2182

; <label>:8:                                      ; preds = %2
  %9 = load i8*, i8** %4, align 8, !dbg !2183
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i32 0, i32 0), i8* %9), !dbg !2184
  br label %11, !dbg !2185

; <label>:11:                                     ; preds = %8, %7
  ret void, !dbg !2186
}

declare zeroext i1 @pkg_infodb_has_file(%struct.pkginfo*, %struct.pkgbin*, i8*) #2

declare void @file_show(i8*) #2

declare void @pager_enable(i1 zeroext) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #9

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind }
attributes #8 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind }
attributes #11 = { noreturn }
attributes #12 = { nounwind readonly }
attributes #13 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!194, !195}
!llvm.ident = !{!196}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !137, globals: !139)
!1 = !DIFile(filename: "[inter]src--querycmd.o.i", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-query")
!2 = !{!3, !15, !26, !35, !43, !47, !57, !67, !73, !81, !86, !99, !109, !115, !119, !124, !131}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "deptype", file: !4, line: 44, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../lib/dpkg/dpkg-db.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-query")
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
!16 = !DIFile(filename: "../lib/dpkg/arch.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-query")
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
!27 = !DIFile(filename: "../lib/dpkg/version.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-query")
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
!74 = !DIFile(filename: "main.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-query")
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
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fsys_namenode_flags", file: !87, line: 61, size: 32, align: 32, elements: !88)
!87 = !DIFile(filename: "../lib/dpkg/fsys.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-query")
!88 = !{!89, !90, !91, !92, !93, !94, !95, !96, !97, !98}
!89 = !DIEnumerator(name: "FNNF_NEW_CONFF", value: 1)
!90 = !DIEnumerator(name: "FNNF_NEW_INARCHIVE", value: 2)
!91 = !DIEnumerator(name: "FNNF_OLD_CONFF", value: 4)
!92 = !DIEnumerator(name: "FNNF_OBS_CONFF", value: 8)
!93 = !DIEnumerator(name: "FNNF_ELIDE_OTHER_LISTS", value: 16)
!94 = !DIEnumerator(name: "FNNF_NO_ATOMIC_OVERWRITE", value: 32)
!95 = !DIEnumerator(name: "FNNF_PLACED_ON_DISK", value: 64)
!96 = !DIEnumerator(name: "FNNF_DEFERRED_FSYNC", value: 128)
!97 = !DIEnumerator(name: "FNNF_DEFERRED_RENAME", value: 256)
!98 = !DIEnumerator(name: "FNNF_FILTERED", value: 512)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "modstatdb_rw", file: !4, line: 263, size: 32, align: 32, elements: !100)
!100 = !{!101, !102, !103, !104, !105, !106, !107, !108}
!101 = !DIEnumerator(name: "msdbrw_readonly", value: 0)
!102 = !DIEnumerator(name: "msdbrw_needsuperuserlockonly", value: 1)
!103 = !DIEnumerator(name: "msdbrw_writeifposs", value: 2)
!104 = !DIEnumerator(name: "msdbrw_write", value: 3)
!105 = !DIEnumerator(name: "msdbrw_needsuperuser", value: 4)
!106 = !DIEnumerator(name: "msdbrw_available_readonly", value: 256)
!107 = !DIEnumerator(name: "msdbrw_available_write", value: 512)
!108 = !DIEnumerator(name: "msdbrw_available_mask", value: 65280)
!109 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkg_name_arch_when", file: !4, line: 396, size: 32, align: 32, elements: !110)
!110 = !{!111, !112, !113, !114}
!111 = !DIEnumerator(name: "pnaw_never", value: 0)
!112 = !DIEnumerator(name: "pnaw_nonambig", value: 1)
!113 = !DIEnumerator(name: "pnaw_foreign", value: 2)
!114 = !DIEnumerator(name: "pnaw_always", value: 3)
!115 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writedb_flags", file: !4, line: 445, size: 32, align: 32, elements: !116)
!116 = !{!117, !118}
!117 = !DIEnumerator(name: "wdb_dump_available", value: 1)
!118 = !DIEnumerator(name: "wdb_must_sync", value: 2)
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "versiondisplayepochwhen", file: !4, line: 388, size: 32, align: 32, elements: !120)
!120 = !{!121, !122, !123}
!121 = !DIEnumerator(name: "vdew_never", value: 0)
!122 = !DIEnumerator(name: "vdew_nonambig", value: 1)
!123 = !DIEnumerator(name: "vdew_always", value: 2)
!124 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkg_spec_flags", file: !125, line: 41, size: 32, align: 32, elements: !126)
!125 = !DIFile(filename: "../lib/dpkg/pkg-spec.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-query")
!126 = !{!127, !128, !129, !130}
!127 = !DIEnumerator(name: "PKG_SPEC_PATTERNS", value: 1)
!128 = !DIEnumerator(name: "PKG_SPEC_ARCH_SINGLE", value: 256)
!129 = !DIEnumerator(name: "PKG_SPEC_ARCH_WILDCARD", value: 512)
!130 = !DIEnumerator(name: "PKG_SPEC_ARCH_MASK", value: 65280)
!131 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_msg_type", file: !132, line: 36, size: 32, align: 32, elements: !133)
!132 = !DIFile(filename: "../lib/dpkg/error.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-query")
!133 = !{!134, !135, !136}
!134 = !DIEnumerator(name: "DPKG_MSG_NONE", value: 0)
!135 = !DIEnumerator(name: "DPKG_MSG_WARN", value: 1)
!136 = !DIEnumerator(name: "DPKG_MSG_ERROR", value: 2)
!137 = !{!138}
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!139 = !{!140, !145, !175, !188, !189, !190}
!140 = distinct !DIGlobalVariable(name: "admindir", scope: !0, file: !141, line: 823, type: !142, isLocal: true, isDefinition: true, variable: i8** @admindir)
!141 = !DIFile(filename: "querycmd.c", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-query")
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64, align: 64)
!143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !144)
!144 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!145 = distinct !DIGlobalVariable(name: "cmdinfos", scope: !0, file: !141, line: 828, type: !146, isLocal: true, isDefinition: true, variable: [16 x %struct.cmdinfo]* @cmdinfos)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 8192, align: 64, elements: !173)
!147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !148)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cmdinfo", file: !149, line: 38, size: 512, align: 64, elements: !150)
!149 = !DIFile(filename: "../lib/dpkg/options.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-query")
!150 = !{!151, !152, !153, !155, !157, !159, !164, !165, !166}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "olong", scope: !148, file: !149, line: 39, baseType: !142, size: 64, align: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "oshort", scope: !148, file: !149, line: 40, baseType: !144, size: 8, align: 8, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "takesvalue", scope: !148, file: !149, line: 48, baseType: !154, size: 32, align: 32, offset: 96)
!154 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "iassignto", scope: !148, file: !149, line: 49, baseType: !156, size: 64, align: 64, offset: 128)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64, align: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "sassignto", scope: !148, file: !149, line: 50, baseType: !158, size: 64, align: 64, offset: 192)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64, align: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !148, file: !149, line: 51, baseType: !160, size: 64, align: 64, offset: 256)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64, align: 64)
!161 = !DISubroutineType(types: !162)
!162 = !{null, !163, !142}
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64, align: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "arg_int", scope: !148, file: !149, line: 53, baseType: !154, size: 32, align: 32, offset: 320)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "arg_ptr", scope: !148, file: !149, line: 54, baseType: !138, size: 64, align: 64, offset: 384)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !148, file: !149, line: 56, baseType: !167, size: 64, align: 64, offset: 448)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64, align: 64)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "action_func", file: !149, line: 36, baseType: !169)
!169 = !DISubroutineType(types: !170)
!170 = !{!154, !171}
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64, align: 64)
!172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !142)
!173 = !{!174}
!174 = !DISubrange(count: 16)
!175 = distinct !DIGlobalVariable(name: "vb", scope: !176, file: !141, line: 340, type: !178, isLocal: true, isDefinition: true, variable: %struct.varbuf* @searchfiles.vb)
!176 = distinct !DISubprogram(name: "searchfiles", scope: !141, file: !141, line: 332, type: !169, isLocal: true, isDefinition: true, scopeLine: 333, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !177)
!177 = !{}
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varbuf", file: !179, line: 55, size: 192, align: 64, elements: !180)
!179 = !DIFile(filename: "../lib/dpkg/varbuf.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-query")
!180 = !{!181, !185, !186}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !178, file: !179, line: 56, baseType: !182, size: 64, align: 64)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !183, line: 216, baseType: !184)
!183 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-query")
!184 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !178, file: !179, line: 56, baseType: !182, size: 64, align: 64, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !178, file: !179, line: 57, baseType: !187, size: 64, align: 64, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!188 = distinct !DIGlobalVariable(name: "opt_loadavail", scope: !0, file: !141, line: 63, type: !154, isLocal: true, isDefinition: true, variable: i32* @opt_loadavail)
!189 = distinct !DIGlobalVariable(name: "showformat", scope: !0, file: !141, line: 61, type: !142, isLocal: true, isDefinition: true, variable: i8** @showformat)
!190 = distinct !DIGlobalVariable(name: "printforhelp", scope: !0, file: !141, line: 820, type: !191, isLocal: true, isDefinition: true, variable: [45 x i8]* @printforhelp)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 360, align: 8, elements: !192)
!192 = !{!193}
!193 = !DISubrange(count: 45)
!194 = !{i32 2, !"Dwarf Version", i32 4}
!195 = !{i32 2, !"Debug Info Version", i32 3}
!196 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!197 = distinct !DISubprogram(name: "main", scope: !141, file: !141, line: 848, type: !198, isLocal: false, isDefinition: true, scopeLine: 848, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !177)
!198 = !DISubroutineType(types: !199)
!199 = !{!154, !154, !171}
!200 = !DILocalVariable(name: "argc", arg: 1, scope: !197, file: !141, line: 848, type: !154)
!201 = !DIExpression()
!202 = !DILocation(line: 848, column: 14, scope: !197)
!203 = !DILocalVariable(name: "argv", arg: 2, scope: !197, file: !141, line: 848, type: !171)
!204 = !DILocation(line: 848, column: 39, scope: !197)
!205 = !DILocalVariable(name: "ret", scope: !197, file: !141, line: 849, type: !154)
!206 = !DILocation(line: 849, column: 7, scope: !197)
!207 = !DILocation(line: 851, column: 3, scope: !197)
!208 = !DILocation(line: 852, column: 3, scope: !197)
!209 = !DILocation(line: 853, column: 3, scope: !197)
!210 = !DILocation(line: 854, column: 3, scope: !197)
!211 = !DILocation(line: 856, column: 30, scope: !197)
!212 = !DILocation(line: 856, column: 14, scope: !197)
!213 = !DILocation(line: 856, column: 12, scope: !197)
!214 = !DILocation(line: 858, column: 8, scope: !215)
!215 = distinct !DILexicalBlock(scope: !197, file: !141, line: 858, column: 7)
!216 = !DILocation(line: 858, column: 7, scope: !197)
!217 = !DILocation(line: 858, column: 28, scope: !218)
!218 = !DILexicalBlockFile(scope: !215, file: !141, discriminator: 1)
!219 = !DILocation(line: 858, column: 19, scope: !220)
!220 = !DILexicalBlockFile(scope: !218, file: !141, discriminator: 2)
!221 = !DILocation(line: 858, column: 19, scope: !218)
!222 = !DILocation(line: 860, column: 3, scope: !197)
!223 = !DILocation(line: 862, column: 9, scope: !197)
!224 = !DILocation(line: 862, column: 20, scope: !197)
!225 = !DILocation(line: 862, column: 27, scope: !197)
!226 = !DILocation(line: 862, column: 7, scope: !197)
!227 = !DILocation(line: 864, column: 3, scope: !197)
!228 = !DILocation(line: 866, column: 12, scope: !197)
!229 = !DILocation(line: 866, column: 11, scope: !197)
!230 = !DILocation(line: 866, column: 10, scope: !197)
!231 = !DILocation(line: 866, column: 3, scope: !197)
!232 = distinct !DISubprogram(name: "list_files", scope: !141, file: !141, line: 476, type: !169, isLocal: true, isDefinition: true, scopeLine: 477, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !177)
!233 = !DILocalVariable(name: "argv", arg: 1, scope: !232, file: !141, line: 476, type: !171)
!234 = !DILocation(line: 476, column: 31, scope: !232)
!235 = !DILocalVariable(name: "thisarg", scope: !232, file: !141, line: 478, type: !142)
!236 = !DILocation(line: 478, column: 15, scope: !232)
!237 = !DILocalVariable(name: "file", scope: !232, file: !141, line: 479, type: !238)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64, align: 64)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode_list", file: !87, line: 122, size: 128, align: 64, elements: !240)
!240 = !{!241, !242}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !239, file: !87, line: 123, baseType: !238, size: 64, align: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "namenode", scope: !239, file: !87, line: 124, baseType: !243, size: 64, align: 64, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64, align: 64)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode", file: !87, line: 90, size: 640, align: 64, elements: !245)
!245 = !{!246, !247, !248, !396, !404, !420, !423, !424, !425, !426}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !244, file: !87, line: 91, baseType: !243, size: 64, align: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !244, file: !87, line: 92, baseType: !142, size: 64, align: 64, offset: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "packages", scope: !244, file: !87, line: 93, baseType: !249, size: 64, align: 64, offset: 128)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64, align: 64)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_list", file: !251, line: 34, size: 128, align: 64, elements: !252)
!251 = !DIFile(filename: "../lib/dpkg/pkg-list.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-query")
!252 = !{!253, !254}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !250, file: !251, line: 35, baseType: !249, size: 64, align: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !250, file: !251, line: 36, baseType: !255, size: 64, align: 64, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64, align: 64)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkginfo", file: !4, line: 195, size: 3072, align: 64, elements: !257)
!257 = !{!258, !306, !307, !308, !309, !310, !311, !312, !313, !314, !344, !345, !355, !364, !380, !381, !387, !388, !394, !395}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !256, file: !4, line: 196, baseType: !259, size: 64, align: 64)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64, align: 64)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgset", file: !4, line: 242, size: 3392, align: 64, elements: !261)
!261 = !{!262, !263, !264, !265, !305}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !260, file: !4, line: 243, baseType: !259, size: 64, align: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !260, file: !4, line: 244, baseType: !142, size: 64, align: 64, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !260, file: !4, line: 245, baseType: !256, size: 3072, align: 64, offset: 128)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "depended", scope: !260, file: !4, line: 249, baseType: !266, size: 128, align: 64, offset: 3200)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !260, file: !4, line: 246, size: 128, align: 64, elements: !267)
!267 = !{!268, !304}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !266, file: !4, line: 247, baseType: !269, size: 64, align: 64)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64, align: 64)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "deppossi", file: !4, line: 63, size: 640, align: 64, elements: !271)
!271 = !{!272, !280, !281, !282, !283, !284, !293, !300, !301, !303}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !270, file: !4, line: 64, baseType: !273, size: 64, align: 64)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64, align: 64)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dependency", file: !4, line: 56, size: 256, align: 64, elements: !275)
!275 = !{!276, !277, !278, !279}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !274, file: !4, line: 57, baseType: !255, size: 64, align: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !274, file: !4, line: 58, baseType: !273, size: 64, align: 64, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !274, file: !4, line: 59, baseType: !269, size: 64, align: 64, offset: 128)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !274, file: !4, line: 60, baseType: !3, size: 32, align: 32, offset: 192)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "ed", scope: !270, file: !4, line: 65, baseType: !259, size: 64, align: 64, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !270, file: !4, line: 66, baseType: !269, size: 64, align: 64, offset: 128)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "rev_next", scope: !270, file: !4, line: 66, baseType: !269, size: 64, align: 64, offset: 192)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "rev_prev", scope: !270, file: !4, line: 66, baseType: !269, size: 64, align: 64, offset: 256)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !270, file: !4, line: 67, baseType: !285, size: 64, align: 64, offset: 320)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64, align: 64)
!286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !287)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_arch", file: !16, line: 48, size: 192, align: 64, elements: !288)
!288 = !{!289, !291, !292}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !287, file: !16, line: 49, baseType: !290, size: 64, align: 64)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64, align: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !287, file: !16, line: 50, baseType: !142, size: 64, align: 64, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !287, file: !16, line: 51, baseType: !15, size: 32, align: 32, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !270, file: !4, line: 68, baseType: !294, size: 192, align: 64, offset: 384)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_version", file: !27, line: 42, size: 192, align: 64, elements: !295)
!295 = !{!296, !298, !299}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !294, file: !27, line: 44, baseType: !297, size: 32, align: 32)
!297 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !294, file: !27, line: 46, baseType: !142, size: 64, align: 64, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !294, file: !27, line: 48, baseType: !142, size: 64, align: 64, offset: 128)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "verrel", scope: !270, file: !4, line: 69, baseType: !26, size: 32, align: 32, offset: 576)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "arch_is_implicit", scope: !270, file: !4, line: 70, baseType: !302, size: 8, align: 8, offset: 608)
!302 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "cyclebreak", scope: !270, file: !4, line: 71, baseType: !302, size: 8, align: 8, offset: 616)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !266, file: !4, line: 248, baseType: !269, size: 64, align: 64, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "installed_instances", scope: !260, file: !4, line: 250, baseType: !154, size: 32, align: 32, offset: 3328)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "arch_next", scope: !256, file: !4, line: 197, baseType: !255, size: 64, align: 64, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "want", scope: !256, file: !4, line: 199, baseType: !35, size: 32, align: 32, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "eflag", scope: !256, file: !4, line: 201, baseType: !43, size: 32, align: 32, offset: 160)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !256, file: !4, line: 202, baseType: !47, size: 32, align: 32, offset: 192)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !256, file: !4, line: 203, baseType: !57, size: 32, align: 32, offset: 224)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "otherpriority", scope: !256, file: !4, line: 204, baseType: !142, size: 64, align: 64, offset: 256)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "section", scope: !256, file: !4, line: 205, baseType: !142, size: 64, align: 64, offset: 320)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "configversion", scope: !256, file: !4, line: 206, baseType: !294, size: 192, align: 64, offset: 384)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !256, file: !4, line: 207, baseType: !315, size: 960, align: 64, offset: 576)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgbin", file: !4, line: 107, size: 960, align: 64, elements: !316)
!316 = !{!317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !337}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "depends", scope: !315, file: !4, line: 108, baseType: !273, size: 64, align: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "essential", scope: !315, file: !4, line: 110, baseType: !302, size: 8, align: 8, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "multiarch", scope: !315, file: !4, line: 111, baseType: !67, size: 32, align: 32, offset: 96)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !315, file: !4, line: 112, baseType: !285, size: 64, align: 64, offset: 128)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "pkgname_archqual", scope: !315, file: !4, line: 115, baseType: !142, size: 64, align: 64, offset: 192)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !315, file: !4, line: 116, baseType: !142, size: 64, align: 64, offset: 256)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "maintainer", scope: !315, file: !4, line: 117, baseType: !142, size: 64, align: 64, offset: 320)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !315, file: !4, line: 118, baseType: !142, size: 64, align: 64, offset: 384)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "installedsize", scope: !315, file: !4, line: 119, baseType: !142, size: 64, align: 64, offset: 448)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !315, file: !4, line: 120, baseType: !142, size: 64, align: 64, offset: 512)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "bugs", scope: !315, file: !4, line: 121, baseType: !142, size: 64, align: 64, offset: 576)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !315, file: !4, line: 122, baseType: !294, size: 192, align: 64, offset: 640)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "conffiles", scope: !315, file: !4, line: 123, baseType: !330, size: 64, align: 64, offset: 832)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64, align: 64)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conffile", file: !4, line: 80, size: 256, align: 64, elements: !332)
!332 = !{!333, !334, !335, !336}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !331, file: !4, line: 81, baseType: !330, size: 64, align: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !331, file: !4, line: 82, baseType: !142, size: 64, align: 64, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !331, file: !4, line: 83, baseType: !142, size: 64, align: 64, offset: 128)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "obsolete", scope: !331, file: !4, line: 84, baseType: !302, size: 8, align: 8, offset: 192)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "arbs", scope: !315, file: !4, line: 124, baseType: !338, size: 64, align: 64, offset: 896)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64, align: 64)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arbitraryfield", file: !4, line: 74, size: 192, align: 64, elements: !340)
!340 = !{!341, !342, !343}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !339, file: !4, line: 75, baseType: !338, size: 64, align: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !339, file: !4, line: 76, baseType: !142, size: 64, align: 64, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !339, file: !4, line: 77, baseType: !142, size: 64, align: 64, offset: 128)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !256, file: !4, line: 208, baseType: !315, size: 960, align: 64, offset: 1536)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "clientdata", scope: !256, file: !4, line: 209, baseType: !346, size: 64, align: 64, offset: 2496)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64, align: 64)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perpackagestate", file: !74, line: 53, size: 256, align: 64, elements: !348)
!348 = !{!349, !350, !351, !352, !353, !354}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "istobe", scope: !347, file: !74, line: 54, baseType: !73, size: 32, align: 32)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !347, file: !74, line: 57, baseType: !81, size: 32, align: 32, offset: 32)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !347, file: !74, line: 59, baseType: !302, size: 8, align: 8, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "replacingfilesandsaid", scope: !347, file: !74, line: 61, baseType: !154, size: 32, align: 32, offset: 96)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "cmdline_seen", scope: !347, file: !74, line: 62, baseType: !154, size: 32, align: 32, offset: 128)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "trigprocdeferred", scope: !347, file: !74, line: 65, baseType: !249, size: 64, align: 64, offset: 192)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "archives", scope: !256, file: !4, line: 211, baseType: !356, size: 64, align: 64, offset: 2560)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64, align: 64)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archivedetails", file: !4, line: 87, size: 320, align: 64, elements: !358)
!358 = !{!359, !360, !361, !362, !363}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !357, file: !4, line: 88, baseType: !356, size: 64, align: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !357, file: !4, line: 89, baseType: !142, size: 64, align: 64, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "msdosname", scope: !357, file: !4, line: 90, baseType: !142, size: 64, align: 64, offset: 128)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !357, file: !4, line: 91, baseType: !142, size: 64, align: 64, offset: 192)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "md5sum", scope: !357, file: !4, line: 92, baseType: !142, size: 64, align: 64, offset: 256)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "trigaw", scope: !256, file: !4, line: 216, baseType: !365, size: 128, align: 64, offset: 2624)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !256, file: !4, line: 213, size: 128, align: 64, elements: !366)
!366 = !{!367, !379}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !365, file: !4, line: 215, baseType: !368, size: 64, align: 64)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64, align: 64)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigaw", file: !4, line: 142, size: 320, align: 64, elements: !370)
!370 = !{!371, !372, !373, !374}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "aw", scope: !369, file: !4, line: 143, baseType: !255, size: 64, align: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "pend", scope: !369, file: !4, line: 143, baseType: !255, size: 64, align: 64, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "samepend_next", scope: !369, file: !4, line: 144, baseType: !368, size: 64, align: 64, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "sameaw", scope: !369, file: !4, line: 147, baseType: !375, size: 128, align: 64, offset: 192)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !369, file: !4, line: 145, size: 128, align: 64, elements: !376)
!376 = !{!377, !378}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !375, file: !4, line: 146, baseType: !368, size: 64, align: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !375, file: !4, line: 146, baseType: !368, size: 64, align: 64, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !365, file: !4, line: 215, baseType: !368, size: 64, align: 64, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "othertrigaw_head", scope: !256, file: !4, line: 219, baseType: !368, size: 64, align: 64, offset: 2752)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "trigpend_head", scope: !256, file: !4, line: 220, baseType: !382, size: 64, align: 64, offset: 2816)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64, align: 64)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigpend", file: !4, line: 134, size: 128, align: 64, elements: !384)
!384 = !{!385, !386}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !383, file: !4, line: 135, baseType: !382, size: 64, align: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !383, file: !4, line: 136, baseType: !142, size: 64, align: 64, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !256, file: !4, line: 231, baseType: !238, size: 64, align: 64, offset: 2880)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_phys_offs", scope: !256, file: !4, line: 232, baseType: !389, size: 64, align: 64, offset: 2944)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !390, line: 86, baseType: !391)
!390 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-query")
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !392, line: 131, baseType: !393)
!392 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-query")
!393 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_valid", scope: !256, file: !4, line: 233, baseType: !302, size: 8, align: 8, offset: 3008)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "status_dirty", scope: !256, file: !4, line: 236, baseType: !302, size: 8, align: 8, offset: 3016)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "divert", scope: !244, file: !87, line: 94, baseType: !397, size: 64, align: 64, offset: 192)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64, align: 64)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_diversion", file: !87, line: 151, size: 256, align: 64, elements: !399)
!399 = !{!400, !401, !402, !403}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "useinstead", scope: !398, file: !87, line: 152, baseType: !243, size: 64, align: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "camefrom", scope: !398, file: !87, line: 153, baseType: !243, size: 64, align: 64, offset: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "pkgset", scope: !398, file: !87, line: 154, baseType: !259, size: 64, align: 64, offset: 128)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !398, file: !87, line: 157, baseType: !397, size: 64, align: 64, offset: 192)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "statoverride", scope: !244, file: !87, line: 101, baseType: !405, size: 64, align: 64, offset: 256)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64, align: 64)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_stat", file: !407, line: 40, size: 256, align: 64, elements: !408)
!407 = !DIFile(filename: "../lib/dpkg/file.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-query")
!408 = !{!409, !412, !415, !418, !419}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !406, file: !407, line: 41, baseType: !410, size: 32, align: 32)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !390, line: 80, baseType: !411)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !392, line: 125, baseType: !297)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !406, file: !407, line: 42, baseType: !413, size: 32, align: 32, offset: 32)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !390, line: 65, baseType: !414)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !392, line: 126, baseType: !297)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !406, file: !407, line: 43, baseType: !416, size: 32, align: 32, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !390, line: 70, baseType: !417)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !392, line: 129, baseType: !297)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "uname", scope: !406, file: !407, line: 47, baseType: !187, size: 64, align: 64, offset: 128)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !406, file: !407, line: 48, baseType: !187, size: 64, align: 64, offset: 192)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "trig_interested", scope: !244, file: !87, line: 103, baseType: !421, size: 64, align: 64, offset: 320)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64, align: 64)
!422 = !DICompositeType(tag: DW_TAG_structure_type, name: "trigfileint", file: !87, line: 103, flags: DIFlagFwdDecl)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !244, file: !87, line: 111, baseType: !86, size: 32, align: 32, offset: 384)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "oldhash", scope: !244, file: !87, line: 114, baseType: !142, size: 64, align: 64, offset: 448)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "newhash", scope: !244, file: !87, line: 117, baseType: !142, size: 64, align: 64, offset: 512)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "file_ondisk_id", scope: !244, file: !87, line: 119, baseType: !427, size: 64, align: 64, offset: 576)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64, align: 64)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ondisk_id", file: !87, line: 85, size: 128, align: 64, elements: !429)
!429 = !{!430, !433}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "id_dev", scope: !428, file: !87, line: 86, baseType: !431, size: 64, align: 64)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !390, line: 60, baseType: !432)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !392, line: 124, baseType: !184)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "id_ino", scope: !428, file: !87, line: 87, baseType: !434, size: 64, align: 64, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !390, line: 48, baseType: !435)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !392, line: 127, baseType: !184)
!436 = !DILocation(line: 479, column: 30, scope: !232)
!437 = !DILocalVariable(name: "pkg", scope: !232, file: !141, line: 480, type: !255)
!438 = !DILocation(line: 480, column: 19, scope: !232)
!439 = !DILocalVariable(name: "namenode", scope: !232, file: !141, line: 481, type: !243)
!440 = !DILocation(line: 481, column: 25, scope: !232)
!441 = !DILocalVariable(name: "failures", scope: !232, file: !141, line: 482, type: !154)
!442 = !DILocation(line: 482, column: 7, scope: !232)
!443 = !DILocation(line: 484, column: 9, scope: !444)
!444 = distinct !DILexicalBlock(scope: !232, file: !141, line: 484, column: 7)
!445 = !DILocation(line: 484, column: 8, scope: !444)
!446 = !DILocation(line: 484, column: 7, scope: !232)
!447 = !DILocation(line: 485, column: 14, scope: !444)
!448 = !DILocation(line: 485, column: 72, scope: !444)
!449 = !DILocation(line: 485, column: 83, scope: !444)
!450 = !DILocation(line: 485, column: 5, scope: !451)
!451 = !DILexicalBlockFile(scope: !444, file: !141, discriminator: 1)
!452 = !DILocation(line: 485, column: 5, scope: !444)
!453 = !DILocation(line: 487, column: 3, scope: !232)
!454 = !DILocation(line: 489, column: 3, scope: !232)
!455 = !DILocation(line: 489, column: 26, scope: !456)
!456 = !DILexicalBlockFile(scope: !232, file: !141, discriminator: 1)
!457 = !DILocation(line: 489, column: 21, scope: !456)
!458 = !DILocation(line: 489, column: 19, scope: !456)
!459 = !DILocation(line: 489, column: 30, scope: !456)
!460 = !DILocation(line: 489, column: 3, scope: !456)
!461 = !DILocation(line: 490, column: 38, scope: !462)
!462 = distinct !DILexicalBlock(scope: !232, file: !141, line: 489, column: 38)
!463 = !DILocation(line: 490, column: 49, scope: !462)
!464 = !DILocation(line: 490, column: 11, scope: !462)
!465 = !DILocation(line: 490, column: 9, scope: !462)
!466 = !DILocation(line: 492, column: 13, scope: !462)
!467 = !DILocation(line: 492, column: 18, scope: !462)
!468 = !DILocation(line: 492, column: 5, scope: !462)
!469 = !DILocation(line: 494, column: 14, scope: !470)
!470 = distinct !DILexicalBlock(scope: !462, file: !141, line: 492, column: 26)
!471 = !DILocation(line: 495, column: 23, scope: !470)
!472 = !DILocation(line: 495, column: 14, scope: !470)
!473 = !DILocation(line: 494, column: 7, scope: !474)
!474 = !DILexicalBlockFile(scope: !470, file: !141, discriminator: 1)
!475 = !DILocation(line: 496, column: 15, scope: !470)
!476 = !DILocation(line: 497, column: 7, scope: !470)
!477 = !DILocation(line: 499, column: 37, scope: !470)
!478 = !DILocation(line: 499, column: 7, scope: !470)
!479 = !DILocation(line: 500, column: 7, scope: !470)
!480 = !DILocation(line: 501, column: 14, scope: !470)
!481 = !DILocation(line: 501, column: 19, scope: !470)
!482 = !DILocation(line: 501, column: 12, scope: !470)
!483 = !DILocation(line: 502, column: 12, scope: !484)
!484 = distinct !DILexicalBlock(scope: !470, file: !141, line: 502, column: 11)
!485 = !DILocation(line: 502, column: 11, scope: !470)
!486 = !DILocation(line: 503, column: 16, scope: !487)
!487 = distinct !DILexicalBlock(scope: !484, file: !141, line: 502, column: 18)
!488 = !DILocation(line: 504, column: 25, scope: !487)
!489 = !DILocation(line: 504, column: 16, scope: !487)
!490 = !DILocation(line: 503, column: 9, scope: !491)
!491 = !DILexicalBlockFile(scope: !487, file: !141, discriminator: 1)
!492 = !DILocation(line: 505, column: 7, scope: !487)
!493 = !DILocation(line: 506, column: 9, scope: !494)
!494 = distinct !DILexicalBlock(scope: !484, file: !141, line: 505, column: 14)
!495 = !DILocation(line: 506, column: 16, scope: !496)
!496 = !DILexicalBlockFile(scope: !494, file: !141, discriminator: 1)
!497 = !DILocation(line: 506, column: 9, scope: !496)
!498 = !DILocation(line: 507, column: 22, scope: !499)
!499 = distinct !DILexicalBlock(scope: !494, file: !141, line: 506, column: 22)
!500 = !DILocation(line: 507, column: 28, scope: !499)
!501 = !DILocation(line: 507, column: 20, scope: !499)
!502 = !DILocation(line: 508, column: 16, scope: !499)
!503 = !DILocation(line: 508, column: 26, scope: !499)
!504 = !DILocation(line: 508, column: 11, scope: !499)
!505 = !DILocation(line: 509, column: 15, scope: !506)
!506 = distinct !DILexicalBlock(scope: !499, file: !141, line: 509, column: 15)
!507 = !DILocation(line: 509, column: 25, scope: !506)
!508 = !DILocation(line: 509, column: 32, scope: !506)
!509 = !DILocation(line: 509, column: 36, scope: !510)
!510 = !DILexicalBlockFile(scope: !506, file: !141, discriminator: 1)
!511 = !DILocation(line: 509, column: 46, scope: !510)
!512 = !DILocation(line: 509, column: 54, scope: !510)
!513 = !DILocation(line: 509, column: 15, scope: !510)
!514 = !DILocation(line: 510, column: 18, scope: !515)
!515 = distinct !DILexicalBlock(scope: !516, file: !141, line: 510, column: 17)
!516 = distinct !DILexicalBlock(scope: !506, file: !141, line: 509, column: 64)
!517 = !DILocation(line: 510, column: 28, scope: !515)
!518 = !DILocation(line: 510, column: 36, scope: !515)
!519 = !DILocation(line: 510, column: 17, scope: !516)
!520 = !DILocation(line: 511, column: 22, scope: !515)
!521 = !DILocation(line: 512, column: 22, scope: !515)
!522 = !DILocation(line: 512, column: 32, scope: !515)
!523 = !DILocation(line: 512, column: 40, scope: !515)
!524 = !DILocation(line: 512, column: 52, scope: !515)
!525 = !DILocation(line: 511, column: 15, scope: !526)
!526 = !DILexicalBlockFile(scope: !515, file: !141, discriminator: 1)
!527 = !DILocation(line: 511, column: 15, scope: !515)
!528 = !DILocation(line: 513, column: 22, scope: !529)
!529 = distinct !DILexicalBlock(scope: !515, file: !141, line: 513, column: 22)
!530 = !DILocation(line: 513, column: 27, scope: !529)
!531 = !DILocation(line: 513, column: 34, scope: !529)
!532 = !DILocation(line: 513, column: 44, scope: !529)
!533 = !DILocation(line: 513, column: 52, scope: !529)
!534 = !DILocation(line: 513, column: 31, scope: !529)
!535 = !DILocation(line: 513, column: 22, scope: !515)
!536 = !DILocation(line: 514, column: 22, scope: !529)
!537 = !DILocation(line: 515, column: 22, scope: !529)
!538 = !DILocation(line: 515, column: 32, scope: !529)
!539 = !DILocation(line: 515, column: 40, scope: !529)
!540 = !DILocation(line: 515, column: 52, scope: !529)
!541 = !DILocation(line: 514, column: 15, scope: !542)
!542 = !DILexicalBlockFile(scope: !529, file: !141, discriminator: 1)
!543 = !DILocation(line: 514, column: 15, scope: !529)
!544 = !DILocation(line: 517, column: 22, scope: !529)
!545 = !DILocation(line: 518, column: 22, scope: !529)
!546 = !DILocation(line: 518, column: 32, scope: !529)
!547 = !DILocation(line: 518, column: 40, scope: !529)
!548 = !DILocation(line: 518, column: 48, scope: !529)
!549 = !DILocation(line: 519, column: 22, scope: !529)
!550 = !DILocation(line: 519, column: 32, scope: !529)
!551 = !DILocation(line: 519, column: 40, scope: !529)
!552 = !DILocation(line: 519, column: 52, scope: !529)
!553 = !DILocation(line: 517, column: 15, scope: !542)
!554 = !DILocation(line: 520, column: 11, scope: !516)
!555 = !DILocation(line: 521, column: 18, scope: !499)
!556 = !DILocation(line: 521, column: 24, scope: !499)
!557 = !DILocation(line: 521, column: 16, scope: !499)
!558 = !DILocation(line: 506, column: 9, scope: !559)
!559 = !DILexicalBlockFile(scope: !494, file: !141, discriminator: 2)
!560 = distinct !{!560, !493}
!561 = !DILocation(line: 524, column: 7, scope: !470)
!562 = !DILocation(line: 527, column: 10, scope: !563)
!563 = distinct !DILexicalBlock(scope: !462, file: !141, line: 527, column: 9)
!564 = !DILocation(line: 527, column: 9, scope: !563)
!565 = !DILocation(line: 527, column: 15, scope: !563)
!566 = !DILocation(line: 527, column: 9, scope: !462)
!567 = !DILocation(line: 528, column: 7, scope: !563)
!568 = !DILocation(line: 489, column: 3, scope: !569)
!569 = !DILexicalBlockFile(scope: !232, file: !141, discriminator: 2)
!570 = distinct !{!570, !454}
!571 = !DILocation(line: 531, column: 11, scope: !232)
!572 = !DILocation(line: 531, column: 19, scope: !232)
!573 = !DILocation(line: 531, column: 3, scope: !456)
!574 = !DILocation(line: 532, column: 7, scope: !575)
!575 = distinct !DILexicalBlock(scope: !232, file: !141, line: 532, column: 7)
!576 = !DILocation(line: 532, column: 7, scope: !232)
!577 = !DILocation(line: 533, column: 11, scope: !578)
!578 = distinct !DILexicalBlock(scope: !575, file: !141, line: 532, column: 17)
!579 = !DILocation(line: 534, column: 13, scope: !578)
!580 = !DILocation(line: 533, column: 5, scope: !581)
!581 = !DILexicalBlockFile(scope: !578, file: !141, discriminator: 1)
!582 = !DILocation(line: 535, column: 13, scope: !578)
!583 = !DILocation(line: 535, column: 21, scope: !578)
!584 = !DILocation(line: 535, column: 5, scope: !581)
!585 = !DILocation(line: 536, column: 3, scope: !578)
!586 = !DILocation(line: 538, column: 3, scope: !232)
!587 = !DILocation(line: 540, column: 10, scope: !232)
!588 = !DILocation(line: 540, column: 3, scope: !232)
!589 = distinct !DISubprogram(name: "print_status", scope: !141, file: !141, line: 394, type: !169, isLocal: true, isDefinition: true, scopeLine: 395, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !177)
!590 = !DILocalVariable(name: "argv", arg: 1, scope: !589, file: !141, line: 394, type: !171)
!591 = !DILocation(line: 394, column: 33, scope: !589)
!592 = !DILocalVariable(name: "thisarg", scope: !589, file: !141, line: 396, type: !142)
!593 = !DILocation(line: 396, column: 15, scope: !589)
!594 = !DILocalVariable(name: "pkg", scope: !589, file: !141, line: 397, type: !255)
!595 = !DILocation(line: 397, column: 19, scope: !589)
!596 = !DILocalVariable(name: "failures", scope: !589, file: !141, line: 398, type: !154)
!597 = !DILocation(line: 398, column: 7, scope: !589)
!598 = !DILocation(line: 400, column: 3, scope: !589)
!599 = !DILocation(line: 402, column: 9, scope: !600)
!600 = distinct !DILexicalBlock(scope: !589, file: !141, line: 402, column: 7)
!601 = !DILocation(line: 402, column: 8, scope: !600)
!602 = !DILocation(line: 402, column: 7, scope: !589)
!603 = !DILocation(line: 403, column: 20, scope: !604)
!604 = distinct !DILexicalBlock(scope: !600, file: !141, line: 402, column: 15)
!605 = !DILocation(line: 403, column: 28, scope: !604)
!606 = !DILocation(line: 403, column: 5, scope: !607)
!607 = !DILexicalBlockFile(scope: !604, file: !141, discriminator: 1)
!608 = !DILocation(line: 404, column: 3, scope: !604)
!609 = !DILocation(line: 405, column: 5, scope: !610)
!610 = distinct !DILexicalBlock(scope: !600, file: !141, line: 404, column: 10)
!611 = !DILocation(line: 405, column: 28, scope: !612)
!612 = !DILexicalBlockFile(scope: !610, file: !141, discriminator: 1)
!613 = !DILocation(line: 405, column: 23, scope: !612)
!614 = !DILocation(line: 405, column: 21, scope: !612)
!615 = !DILocation(line: 405, column: 32, scope: !612)
!616 = !DILocation(line: 405, column: 5, scope: !612)
!617 = !DILocation(line: 406, column: 40, scope: !618)
!618 = distinct !DILexicalBlock(scope: !610, file: !141, line: 405, column: 40)
!619 = !DILocation(line: 406, column: 51, scope: !618)
!620 = !DILocation(line: 406, column: 13, scope: !618)
!621 = !DILocation(line: 406, column: 11, scope: !618)
!622 = !DILocation(line: 408, column: 11, scope: !623)
!623 = distinct !DILexicalBlock(scope: !618, file: !141, line: 408, column: 11)
!624 = !DILocation(line: 408, column: 16, scope: !623)
!625 = !DILocation(line: 408, column: 23, scope: !623)
!626 = !DILocation(line: 408, column: 48, scope: !623)
!627 = !DILocation(line: 409, column: 11, scope: !623)
!628 = !DILocation(line: 409, column: 16, scope: !623)
!629 = !DILocation(line: 409, column: 25, scope: !623)
!630 = !DILocation(line: 409, column: 45, scope: !623)
!631 = !DILocation(line: 410, column: 24, scope: !623)
!632 = !DILocation(line: 410, column: 29, scope: !623)
!633 = !DILocation(line: 410, column: 11, scope: !623)
!634 = !DILocation(line: 410, column: 38, scope: !623)
!635 = !DILocation(line: 411, column: 12, scope: !623)
!636 = !DILocation(line: 411, column: 17, scope: !623)
!637 = !DILocation(line: 411, column: 26, scope: !623)
!638 = !DILocation(line: 412, column: 11, scope: !623)
!639 = !DILocation(line: 412, column: 16, scope: !623)
!640 = !DILocation(line: 412, column: 21, scope: !623)
!641 = !DILocation(line: 412, column: 41, scope: !623)
!642 = !DILocation(line: 413, column: 31, scope: !623)
!643 = !DILocation(line: 413, column: 37, scope: !623)
!644 = !DILocation(line: 413, column: 42, scope: !623)
!645 = !DILocation(line: 413, column: 12, scope: !623)
!646 = !DILocation(line: 408, column: 11, scope: !647)
!647 = !DILexicalBlockFile(scope: !618, file: !141, discriminator: 1)
!648 = !DILocation(line: 414, column: 16, scope: !649)
!649 = distinct !DILexicalBlock(scope: !623, file: !141, line: 413, column: 54)
!650 = !DILocation(line: 415, column: 25, scope: !649)
!651 = !DILocation(line: 415, column: 16, scope: !649)
!652 = !DILocation(line: 414, column: 9, scope: !653)
!653 = !DILexicalBlockFile(scope: !649, file: !141, discriminator: 1)
!654 = !DILocation(line: 416, column: 17, scope: !649)
!655 = !DILocation(line: 417, column: 7, scope: !649)
!656 = !DILocation(line: 418, column: 20, scope: !657)
!657 = distinct !DILexicalBlock(scope: !623, file: !141, line: 417, column: 14)
!658 = !DILocation(line: 418, column: 28, scope: !657)
!659 = !DILocation(line: 418, column: 58, scope: !657)
!660 = !DILocation(line: 418, column: 64, scope: !657)
!661 = !DILocation(line: 418, column: 69, scope: !657)
!662 = !DILocation(line: 418, column: 9, scope: !663)
!663 = !DILexicalBlockFile(scope: !657, file: !141, discriminator: 1)
!664 = !DILocation(line: 421, column: 12, scope: !665)
!665 = distinct !DILexicalBlock(scope: !618, file: !141, line: 421, column: 11)
!666 = !DILocation(line: 421, column: 11, scope: !665)
!667 = !DILocation(line: 421, column: 17, scope: !665)
!668 = !DILocation(line: 421, column: 11, scope: !618)
!669 = !DILocation(line: 422, column: 9, scope: !665)
!670 = !DILocation(line: 405, column: 5, scope: !671)
!671 = !DILexicalBlockFile(scope: !610, file: !141, discriminator: 2)
!672 = distinct !{!672, !609}
!673 = !DILocation(line: 426, column: 11, scope: !589)
!674 = !DILocation(line: 426, column: 19, scope: !589)
!675 = !DILocation(line: 426, column: 3, scope: !676)
!676 = !DILexicalBlockFile(scope: !589, file: !141, discriminator: 1)
!677 = !DILocation(line: 427, column: 7, scope: !678)
!678 = distinct !DILexicalBlock(scope: !589, file: !141, line: 427, column: 7)
!679 = !DILocation(line: 427, column: 7, scope: !589)
!680 = !DILocation(line: 428, column: 11, scope: !681)
!681 = distinct !DILexicalBlock(scope: !678, file: !141, line: 427, column: 17)
!682 = !DILocation(line: 429, column: 10, scope: !681)
!683 = !DILocation(line: 428, column: 5, scope: !684)
!684 = !DILexicalBlockFile(scope: !681, file: !141, discriminator: 1)
!685 = !DILocation(line: 430, column: 13, scope: !681)
!686 = !DILocation(line: 430, column: 21, scope: !681)
!687 = !DILocation(line: 430, column: 5, scope: !684)
!688 = !DILocation(line: 431, column: 3, scope: !681)
!689 = !DILocation(line: 433, column: 3, scope: !589)
!690 = !DILocation(line: 435, column: 10, scope: !589)
!691 = !DILocation(line: 435, column: 3, scope: !589)
!692 = distinct !DISubprogram(name: "print_avail", scope: !141, file: !141, line: 439, type: !169, isLocal: true, isDefinition: true, scopeLine: 440, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !177)
!693 = !DILocalVariable(name: "argv", arg: 1, scope: !692, file: !141, line: 439, type: !171)
!694 = !DILocation(line: 439, column: 32, scope: !692)
!695 = !DILocalVariable(name: "thisarg", scope: !692, file: !141, line: 441, type: !142)
!696 = !DILocation(line: 441, column: 15, scope: !692)
!697 = !DILocalVariable(name: "pkg", scope: !692, file: !141, line: 442, type: !255)
!698 = !DILocation(line: 442, column: 19, scope: !692)
!699 = !DILocalVariable(name: "failures", scope: !692, file: !141, line: 443, type: !154)
!700 = !DILocation(line: 443, column: 7, scope: !692)
!701 = !DILocation(line: 445, column: 3, scope: !692)
!702 = !DILocation(line: 447, column: 9, scope: !703)
!703 = distinct !DILexicalBlock(scope: !692, file: !141, line: 447, column: 7)
!704 = !DILocation(line: 447, column: 8, scope: !703)
!705 = !DILocation(line: 447, column: 7, scope: !692)
!706 = !DILocation(line: 448, column: 20, scope: !707)
!707 = distinct !DILexicalBlock(scope: !703, file: !141, line: 447, column: 15)
!708 = !DILocation(line: 448, column: 28, scope: !707)
!709 = !DILocation(line: 448, column: 5, scope: !710)
!710 = !DILexicalBlockFile(scope: !707, file: !141, discriminator: 1)
!711 = !DILocation(line: 449, column: 3, scope: !707)
!712 = !DILocation(line: 450, column: 5, scope: !713)
!713 = distinct !DILexicalBlock(scope: !703, file: !141, line: 449, column: 10)
!714 = !DILocation(line: 450, column: 28, scope: !715)
!715 = !DILexicalBlockFile(scope: !713, file: !141, discriminator: 1)
!716 = !DILocation(line: 450, column: 23, scope: !715)
!717 = !DILocation(line: 450, column: 21, scope: !715)
!718 = !DILocation(line: 450, column: 32, scope: !715)
!719 = !DILocation(line: 450, column: 5, scope: !715)
!720 = !DILocation(line: 451, column: 40, scope: !721)
!721 = distinct !DILexicalBlock(scope: !713, file: !141, line: 450, column: 40)
!722 = !DILocation(line: 451, column: 51, scope: !721)
!723 = !DILocation(line: 451, column: 13, scope: !721)
!724 = !DILocation(line: 451, column: 11, scope: !721)
!725 = !DILocation(line: 453, column: 31, scope: !726)
!726 = distinct !DILexicalBlock(scope: !721, file: !141, line: 453, column: 11)
!727 = !DILocation(line: 453, column: 37, scope: !726)
!728 = !DILocation(line: 453, column: 42, scope: !726)
!729 = !DILocation(line: 453, column: 12, scope: !726)
!730 = !DILocation(line: 453, column: 11, scope: !721)
!731 = !DILocation(line: 454, column: 16, scope: !732)
!732 = distinct !DILexicalBlock(scope: !726, file: !141, line: 453, column: 54)
!733 = !DILocation(line: 455, column: 28, scope: !732)
!734 = !DILocation(line: 455, column: 34, scope: !732)
!735 = !DILocation(line: 455, column: 39, scope: !732)
!736 = !DILocation(line: 455, column: 16, scope: !732)
!737 = !DILocation(line: 454, column: 9, scope: !738)
!738 = !DILexicalBlockFile(scope: !732, file: !141, discriminator: 1)
!739 = !DILocation(line: 456, column: 17, scope: !732)
!740 = !DILocation(line: 457, column: 7, scope: !732)
!741 = !DILocation(line: 458, column: 20, scope: !742)
!742 = distinct !DILexicalBlock(scope: !726, file: !141, line: 457, column: 14)
!743 = !DILocation(line: 458, column: 28, scope: !742)
!744 = !DILocation(line: 458, column: 58, scope: !742)
!745 = !DILocation(line: 458, column: 64, scope: !742)
!746 = !DILocation(line: 458, column: 69, scope: !742)
!747 = !DILocation(line: 458, column: 9, scope: !748)
!748 = !DILexicalBlockFile(scope: !742, file: !141, discriminator: 1)
!749 = !DILocation(line: 461, column: 12, scope: !750)
!750 = distinct !DILexicalBlock(scope: !721, file: !141, line: 461, column: 11)
!751 = !DILocation(line: 461, column: 11, scope: !750)
!752 = !DILocation(line: 461, column: 17, scope: !750)
!753 = !DILocation(line: 461, column: 11, scope: !721)
!754 = !DILocation(line: 462, column: 9, scope: !750)
!755 = !DILocation(line: 450, column: 5, scope: !756)
!756 = !DILexicalBlockFile(scope: !713, file: !141, discriminator: 2)
!757 = distinct !{!757, !712}
!758 = !DILocation(line: 466, column: 11, scope: !692)
!759 = !DILocation(line: 466, column: 19, scope: !692)
!760 = !DILocation(line: 466, column: 3, scope: !761)
!761 = !DILexicalBlockFile(scope: !692, file: !141, discriminator: 1)
!762 = !DILocation(line: 467, column: 7, scope: !763)
!763 = distinct !DILexicalBlock(scope: !692, file: !141, line: 467, column: 7)
!764 = !DILocation(line: 467, column: 7, scope: !692)
!765 = !DILocation(line: 468, column: 13, scope: !763)
!766 = !DILocation(line: 468, column: 21, scope: !763)
!767 = !DILocation(line: 468, column: 5, scope: !768)
!768 = !DILexicalBlockFile(scope: !763, file: !141, discriminator: 1)
!769 = !DILocation(line: 468, column: 5, scope: !763)
!770 = !DILocation(line: 470, column: 3, scope: !692)
!771 = !DILocation(line: 472, column: 10, scope: !692)
!772 = !DILocation(line: 472, column: 3, scope: !692)
!773 = distinct !DISubprogram(name: "listpackages", scope: !141, file: !141, line: 249, type: !169, isLocal: true, isDefinition: true, scopeLine: 250, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !177)
!774 = !DILocalVariable(name: "argv", arg: 1, scope: !773, file: !141, line: 249, type: !171)
!775 = !DILocation(line: 249, column: 33, scope: !773)
!776 = !DILocalVariable(name: "array", scope: !773, file: !141, line: 251, type: !777)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_array", file: !778, line: 38, size: 128, align: 64, elements: !779)
!778 = !DIFile(filename: "../lib/dpkg/pkg-array.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-query")
!779 = !{!780, !781}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "n_pkgs", scope: !777, file: !778, line: 39, baseType: !154, size: 32, align: 32)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "pkgs", scope: !777, file: !778, line: 40, baseType: !782, size: 64, align: 64, offset: 64)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64, align: 64)
!783 = !DILocation(line: 251, column: 20, scope: !773)
!784 = !DILocalVariable(name: "pkg", scope: !773, file: !141, line: 252, type: !255)
!785 = !DILocation(line: 252, column: 19, scope: !773)
!786 = !DILocalVariable(name: "i", scope: !773, file: !141, line: 253, type: !154)
!787 = !DILocation(line: 253, column: 7, scope: !773)
!788 = !DILocalVariable(name: "rc", scope: !773, file: !141, line: 254, type: !154)
!789 = !DILocation(line: 254, column: 7, scope: !773)
!790 = !DILocalVariable(name: "fmt", scope: !773, file: !141, line: 255, type: !791)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_format", file: !141, line: 114, size: 160, align: 32, elements: !792)
!792 = !{!793, !794, !795, !796, !797}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !791, file: !141, line: 115, baseType: !302, size: 8, align: 8)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "nw", scope: !791, file: !141, line: 116, baseType: !154, size: 32, align: 32, offset: 32)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "vw", scope: !791, file: !141, line: 117, baseType: !154, size: 32, align: 32, offset: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "aw", scope: !791, file: !141, line: 118, baseType: !154, size: 32, align: 32, offset: 96)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "dw", scope: !791, file: !141, line: 119, baseType: !154, size: 32, align: 32, offset: 128)
!798 = !DILocation(line: 255, column: 22, scope: !773)
!799 = !DILocalVariable(name: "pager", scope: !773, file: !141, line: 256, type: !800)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64, align: 64)
!801 = !DICompositeType(tag: DW_TAG_structure_type, name: "pager", file: !802, line: 36, flags: DIFlagFwdDecl)
!802 = !DIFile(filename: "../lib/dpkg/pager.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-query")
!803 = !DILocation(line: 256, column: 17, scope: !773)
!804 = !DILocation(line: 258, column: 8, scope: !805)
!805 = distinct !DILexicalBlock(scope: !773, file: !141, line: 258, column: 7)
!806 = !DILocation(line: 258, column: 7, scope: !773)
!807 = !DILocation(line: 259, column: 5, scope: !805)
!808 = !DILocation(line: 261, column: 5, scope: !805)
!809 = !DILocation(line: 263, column: 3, scope: !773)
!810 = !DILocation(line: 264, column: 3, scope: !773)
!811 = !DILocation(line: 266, column: 3, scope: !773)
!812 = !DILocation(line: 268, column: 23, scope: !773)
!813 = !DILocation(line: 268, column: 11, scope: !814)
!814 = !DILexicalBlockFile(scope: !773, file: !141, discriminator: 1)
!815 = !DILocation(line: 268, column: 9, scope: !773)
!816 = !DILocation(line: 270, column: 9, scope: !817)
!817 = distinct !DILexicalBlock(scope: !773, file: !141, line: 270, column: 7)
!818 = !DILocation(line: 270, column: 8, scope: !817)
!819 = !DILocation(line: 270, column: 7, scope: !773)
!820 = !DILocation(line: 271, column: 12, scope: !821)
!821 = distinct !DILexicalBlock(scope: !822, file: !141, line: 271, column: 5)
!822 = distinct !DILexicalBlock(scope: !817, file: !141, line: 270, column: 15)
!823 = !DILocation(line: 271, column: 10, scope: !821)
!824 = !DILocation(line: 271, column: 17, scope: !825)
!825 = !DILexicalBlockFile(scope: !826, file: !141, discriminator: 1)
!826 = distinct !DILexicalBlock(scope: !821, file: !141, line: 271, column: 5)
!827 = !DILocation(line: 271, column: 27, scope: !825)
!828 = !DILocation(line: 271, column: 19, scope: !825)
!829 = !DILocation(line: 271, column: 5, scope: !825)
!830 = !DILocation(line: 272, column: 24, scope: !831)
!831 = distinct !DILexicalBlock(scope: !826, file: !141, line: 271, column: 40)
!832 = !DILocation(line: 272, column: 13, scope: !831)
!833 = !DILocation(line: 272, column: 19, scope: !831)
!834 = !DILocation(line: 272, column: 11, scope: !831)
!835 = !DILocation(line: 273, column: 11, scope: !836)
!836 = distinct !DILexicalBlock(scope: !831, file: !141, line: 273, column: 11)
!837 = !DILocation(line: 273, column: 16, scope: !836)
!838 = !DILocation(line: 273, column: 23, scope: !836)
!839 = !DILocation(line: 273, column: 11, scope: !831)
!840 = !DILocation(line: 274, column: 20, scope: !836)
!841 = !DILocation(line: 274, column: 9, scope: !836)
!842 = !DILocation(line: 274, column: 15, scope: !836)
!843 = !DILocation(line: 274, column: 23, scope: !836)
!844 = !DILocation(line: 275, column: 5, scope: !831)
!845 = !DILocation(line: 271, column: 36, scope: !846)
!846 = !DILexicalBlockFile(scope: !826, file: !141, discriminator: 2)
!847 = !DILocation(line: 271, column: 5, scope: !846)
!848 = distinct !{!848, !849}
!849 = !DILocation(line: 271, column: 5, scope: !822)
!850 = !DILocation(line: 277, column: 52, scope: !822)
!851 = !DILocation(line: 277, column: 5, scope: !822)
!852 = !DILocation(line: 278, column: 3, scope: !822)
!853 = !DILocation(line: 279, column: 64, scope: !854)
!854 = distinct !DILexicalBlock(scope: !817, file: !141, line: 278, column: 10)
!855 = !DILocation(line: 279, column: 70, scope: !854)
!856 = !DILocation(line: 279, column: 10, scope: !854)
!857 = !DILocation(line: 279, column: 8, scope: !854)
!858 = !DILocation(line: 282, column: 11, scope: !773)
!859 = !DILocation(line: 282, column: 19, scope: !773)
!860 = !DILocation(line: 282, column: 3, scope: !814)
!861 = !DILocation(line: 283, column: 11, scope: !773)
!862 = !DILocation(line: 283, column: 19, scope: !773)
!863 = !DILocation(line: 283, column: 3, scope: !814)
!864 = !DILocation(line: 285, column: 14, scope: !773)
!865 = !DILocation(line: 285, column: 3, scope: !773)
!866 = !DILocation(line: 287, column: 3, scope: !773)
!867 = !DILocation(line: 288, column: 3, scope: !773)
!868 = !DILocation(line: 290, column: 10, scope: !773)
!869 = !DILocation(line: 290, column: 3, scope: !773)
!870 = !DILocalVariable(name: "argv", arg: 1, scope: !176, file: !141, line: 332, type: !171)
!871 = !DILocation(line: 332, column: 32, scope: !176)
!872 = !DILocalVariable(name: "namenode", scope: !176, file: !141, line: 334, type: !243)
!873 = !DILocation(line: 334, column: 25, scope: !176)
!874 = !DILocalVariable(name: "iter", scope: !176, file: !141, line: 335, type: !875)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64, align: 64)
!876 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_hash_iter", file: !87, line: 177, flags: DIFlagFwdDecl)
!877 = !DILocation(line: 335, column: 26, scope: !176)
!878 = !DILocalVariable(name: "thisarg", scope: !176, file: !141, line: 336, type: !142)
!879 = !DILocation(line: 336, column: 15, scope: !176)
!880 = !DILocalVariable(name: "found", scope: !176, file: !141, line: 337, type: !154)
!881 = !DILocation(line: 337, column: 7, scope: !176)
!882 = !DILocalVariable(name: "failures", scope: !176, file: !141, line: 338, type: !154)
!883 = !DILocation(line: 338, column: 7, scope: !176)
!884 = !DILocalVariable(name: "path", scope: !176, file: !141, line: 339, type: !178)
!885 = !DILocation(line: 339, column: 17, scope: !176)
!886 = !DILocation(line: 342, column: 9, scope: !887)
!887 = distinct !DILexicalBlock(scope: !176, file: !141, line: 342, column: 7)
!888 = !DILocation(line: 342, column: 8, scope: !887)
!889 = !DILocation(line: 342, column: 7, scope: !176)
!890 = !DILocation(line: 343, column: 14, scope: !887)
!891 = !DILocation(line: 343, column: 5, scope: !892)
!892 = !DILexicalBlockFile(scope: !887, file: !141, discriminator: 1)
!893 = !DILocation(line: 343, column: 5, scope: !887)
!894 = !DILocation(line: 345, column: 3, scope: !176)
!895 = !DILocation(line: 346, column: 3, scope: !176)
!896 = !DILocation(line: 347, column: 3, scope: !176)
!897 = !DILocation(line: 349, column: 3, scope: !176)
!898 = !DILocation(line: 349, column: 26, scope: !899)
!899 = !DILexicalBlockFile(scope: !176, file: !141, discriminator: 1)
!900 = !DILocation(line: 349, column: 21, scope: !899)
!901 = !DILocation(line: 349, column: 19, scope: !899)
!902 = !DILocation(line: 349, column: 30, scope: !899)
!903 = !DILocation(line: 349, column: 3, scope: !899)
!904 = !DILocation(line: 350, column: 10, scope: !905)
!905 = distinct !DILexicalBlock(scope: !176, file: !141, line: 349, column: 38)
!906 = !DILocation(line: 352, column: 25, scope: !907)
!907 = distinct !DILexicalBlock(scope: !905, file: !141, line: 352, column: 9)
!908 = !DILocation(line: 352, column: 24, scope: !907)
!909 = !DILocation(line: 352, column: 10, scope: !907)
!910 = !DILocation(line: 352, column: 9, scope: !905)
!911 = !DILocation(line: 353, column: 7, scope: !912)
!912 = distinct !DILexicalBlock(scope: !907, file: !141, line: 352, column: 35)
!913 = !DILocation(line: 354, column: 7, scope: !912)
!914 = !DILocation(line: 355, column: 27, scope: !912)
!915 = !DILocation(line: 355, column: 43, scope: !912)
!916 = !DILocation(line: 355, column: 36, scope: !912)
!917 = !DILocation(line: 355, column: 7, scope: !918)
!918 = !DILexicalBlockFile(scope: !912, file: !141, discriminator: 1)
!919 = !DILocation(line: 356, column: 7, scope: !912)
!920 = !DILocation(line: 357, column: 7, scope: !912)
!921 = !DILocation(line: 358, column: 19, scope: !912)
!922 = !DILocation(line: 358, column: 14, scope: !912)
!923 = !DILocation(line: 359, column: 5, scope: !912)
!924 = !DILocation(line: 360, column: 18, scope: !925)
!925 = distinct !DILexicalBlock(scope: !905, file: !141, line: 360, column: 9)
!926 = !DILocation(line: 360, column: 10, scope: !925)
!927 = !DILocation(line: 360, column: 9, scope: !905)
!928 = !DILocation(line: 363, column: 7, scope: !929)
!929 = distinct !DILexicalBlock(scope: !925, file: !141, line: 360, column: 37)
!930 = !DILocation(line: 364, column: 29, scope: !929)
!931 = !DILocation(line: 364, column: 45, scope: !929)
!932 = !DILocation(line: 364, column: 38, scope: !929)
!933 = !DILocation(line: 364, column: 7, scope: !934)
!934 = !DILexicalBlockFile(scope: !929, file: !141, discriminator: 1)
!935 = !DILocation(line: 365, column: 7, scope: !929)
!936 = !DILocation(line: 366, column: 57, scope: !929)
!937 = !DILocation(line: 366, column: 27, scope: !929)
!938 = !DILocation(line: 366, column: 7, scope: !934)
!939 = !DILocation(line: 368, column: 43, scope: !929)
!940 = !DILocation(line: 368, column: 18, scope: !929)
!941 = !DILocation(line: 368, column: 16, scope: !929)
!942 = !DILocation(line: 369, column: 29, scope: !929)
!943 = !DILocation(line: 369, column: 16, scope: !929)
!944 = !DILocation(line: 369, column: 13, scope: !929)
!945 = !DILocation(line: 370, column: 5, scope: !929)
!946 = !DILocation(line: 371, column: 14, scope: !947)
!947 = distinct !DILexicalBlock(scope: !925, file: !141, line: 370, column: 12)
!948 = !DILocation(line: 371, column: 12, scope: !947)
!949 = !DILocation(line: 372, column: 7, scope: !947)
!950 = !DILocation(line: 372, column: 46, scope: !951)
!951 = !DILexicalBlockFile(scope: !947, file: !141, discriminator: 1)
!952 = !DILocation(line: 372, column: 26, scope: !951)
!953 = !DILocation(line: 372, column: 24, scope: !951)
!954 = !DILocation(line: 372, column: 53, scope: !951)
!955 = !DILocation(line: 372, column: 7, scope: !951)
!956 = !DILocation(line: 373, column: 21, scope: !957)
!957 = distinct !DILexicalBlock(scope: !958, file: !141, line: 373, column: 13)
!958 = distinct !DILexicalBlock(scope: !947, file: !141, line: 372, column: 61)
!959 = !DILocation(line: 373, column: 29, scope: !957)
!960 = !DILocation(line: 373, column: 39, scope: !957)
!961 = !DILocation(line: 373, column: 13, scope: !957)
!962 = !DILocation(line: 373, column: 13, scope: !958)
!963 = !DILocation(line: 373, column: 48, scope: !964)
!964 = !DILexicalBlockFile(scope: !957, file: !141, discriminator: 1)
!965 = distinct !{!965, !949}
!966 = !DILocation(line: 374, column: 30, scope: !958)
!967 = !DILocation(line: 374, column: 17, scope: !958)
!968 = !DILocation(line: 374, column: 14, scope: !958)
!969 = !DILocation(line: 372, column: 7, scope: !970)
!970 = !DILexicalBlockFile(scope: !947, file: !141, discriminator: 2)
!971 = !DILocation(line: 376, column: 27, scope: !947)
!972 = !DILocation(line: 376, column: 7, scope: !947)
!973 = !DILocation(line: 378, column: 10, scope: !974)
!974 = distinct !DILexicalBlock(scope: !905, file: !141, line: 378, column: 9)
!975 = !DILocation(line: 378, column: 9, scope: !905)
!976 = !DILocation(line: 379, column: 14, scope: !977)
!977 = distinct !DILexicalBlock(scope: !974, file: !141, line: 378, column: 17)
!978 = !DILocation(line: 379, column: 60, scope: !977)
!979 = !DILocation(line: 379, column: 7, scope: !980)
!980 = !DILexicalBlockFile(scope: !977, file: !141, discriminator: 1)
!981 = !DILocation(line: 380, column: 15, scope: !977)
!982 = !DILocation(line: 381, column: 15, scope: !977)
!983 = !DILocation(line: 381, column: 23, scope: !977)
!984 = !DILocation(line: 381, column: 7, scope: !980)
!985 = !DILocation(line: 382, column: 5, scope: !977)
!986 = !DILocation(line: 383, column: 15, scope: !987)
!987 = distinct !DILexicalBlock(scope: !974, file: !141, line: 382, column: 12)
!988 = !DILocation(line: 383, column: 23, scope: !987)
!989 = !DILocation(line: 383, column: 7, scope: !990)
!990 = !DILexicalBlockFile(scope: !987, file: !141, discriminator: 1)
!991 = !DILocation(line: 349, column: 3, scope: !992)
!992 = !DILexicalBlockFile(scope: !176, file: !141, discriminator: 2)
!993 = distinct !{!993, !897}
!994 = !DILocation(line: 386, column: 3, scope: !176)
!995 = !DILocation(line: 388, column: 3, scope: !176)
!996 = !DILocation(line: 390, column: 10, scope: !176)
!997 = !DILocation(line: 390, column: 3, scope: !176)
!998 = distinct !DISubprogram(name: "showpackages", scope: !141, file: !141, line: 552, type: !169, isLocal: true, isDefinition: true, scopeLine: 553, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !177)
!999 = !DILocalVariable(name: "argv", arg: 1, scope: !998, file: !141, line: 552, type: !171)
!1000 = !DILocation(line: 552, column: 33, scope: !998)
!1001 = !DILocalVariable(name: "err", scope: !998, file: !141, line: 554, type: !1002)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_error", file: !132, line: 42, size: 128, align: 64, elements: !1003)
!1003 = !{!1004, !1005, !1006}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1002, file: !132, line: 43, baseType: !131, size: 32, align: 32)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "syserrno", scope: !1002, file: !132, line: 45, baseType: !154, size: 32, align: 32, offset: 32)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1002, file: !132, line: 46, baseType: !187, size: 64, align: 64, offset: 64)
!1007 = !DILocation(line: 554, column: 21, scope: !998)
!1008 = !DILocalVariable(name: "array", scope: !998, file: !141, line: 555, type: !777)
!1009 = !DILocation(line: 555, column: 20, scope: !998)
!1010 = !DILocalVariable(name: "pkg", scope: !998, file: !141, line: 556, type: !255)
!1011 = !DILocation(line: 556, column: 19, scope: !998)
!1012 = !DILocalVariable(name: "fmt", scope: !998, file: !141, line: 557, type: !1013)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64, align: 64)
!1014 = !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_format_node", file: !1015, line: 36, flags: DIFlagFwdDecl)
!1015 = !DIFile(filename: "../lib/dpkg/pkg-format.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-query")
!1016 = !DILocation(line: 557, column: 27, scope: !998)
!1017 = !DILocalVariable(name: "i", scope: !998, file: !141, line: 558, type: !154)
!1018 = !DILocation(line: 558, column: 7, scope: !998)
!1019 = !DILocalVariable(name: "rc", scope: !998, file: !141, line: 559, type: !154)
!1020 = !DILocation(line: 559, column: 7, scope: !998)
!1021 = !DILocation(line: 561, column: 26, scope: !998)
!1022 = !DILocation(line: 561, column: 9, scope: !998)
!1023 = !DILocation(line: 561, column: 7, scope: !998)
!1024 = !DILocation(line: 562, column: 8, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !998, file: !141, line: 562, column: 7)
!1026 = !DILocation(line: 562, column: 7, scope: !998)
!1027 = !DILocation(line: 563, column: 12, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1025, file: !141, line: 562, column: 13)
!1029 = !DILocation(line: 563, column: 53, scope: !1028)
!1030 = !DILocation(line: 563, column: 5, scope: !1031)
!1031 = !DILexicalBlockFile(scope: !1028, file: !141, discriminator: 1)
!1032 = !DILocation(line: 564, column: 5, scope: !1028)
!1033 = !DILocation(line: 565, column: 7, scope: !1028)
!1034 = !DILocation(line: 566, column: 12, scope: !1028)
!1035 = !DILocation(line: 566, column: 5, scope: !1028)
!1036 = !DILocation(line: 569, column: 8, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !998, file: !141, line: 569, column: 7)
!1038 = !DILocation(line: 569, column: 7, scope: !998)
!1039 = !DILocation(line: 570, column: 5, scope: !1037)
!1040 = !DILocation(line: 572, column: 5, scope: !1037)
!1041 = !DILocation(line: 574, column: 3, scope: !998)
!1042 = !DILocation(line: 575, column: 3, scope: !998)
!1043 = !DILocation(line: 577, column: 9, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !998, file: !141, line: 577, column: 7)
!1045 = !DILocation(line: 577, column: 8, scope: !1044)
!1046 = !DILocation(line: 577, column: 7, scope: !998)
!1047 = !DILocation(line: 578, column: 12, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1049, file: !141, line: 578, column: 5)
!1049 = distinct !DILexicalBlock(scope: !1044, file: !141, line: 577, column: 15)
!1050 = !DILocation(line: 578, column: 10, scope: !1048)
!1051 = !DILocation(line: 578, column: 17, scope: !1052)
!1052 = !DILexicalBlockFile(scope: !1053, file: !141, discriminator: 1)
!1053 = distinct !DILexicalBlock(scope: !1048, file: !141, line: 578, column: 5)
!1054 = !DILocation(line: 578, column: 27, scope: !1052)
!1055 = !DILocation(line: 578, column: 19, scope: !1052)
!1056 = !DILocation(line: 578, column: 5, scope: !1052)
!1057 = !DILocation(line: 579, column: 24, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1053, file: !141, line: 578, column: 40)
!1059 = !DILocation(line: 579, column: 13, scope: !1058)
!1060 = !DILocation(line: 579, column: 19, scope: !1058)
!1061 = !DILocation(line: 579, column: 11, scope: !1058)
!1062 = !DILocation(line: 580, column: 11, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1058, file: !141, line: 580, column: 11)
!1064 = !DILocation(line: 580, column: 16, scope: !1063)
!1065 = !DILocation(line: 580, column: 23, scope: !1063)
!1066 = !DILocation(line: 580, column: 11, scope: !1058)
!1067 = !DILocation(line: 581, column: 9, scope: !1063)
!1068 = !DILocation(line: 582, column: 23, scope: !1058)
!1069 = !DILocation(line: 582, column: 28, scope: !1058)
!1070 = !DILocation(line: 582, column: 34, scope: !1058)
!1071 = !DILocation(line: 582, column: 39, scope: !1058)
!1072 = !DILocation(line: 582, column: 7, scope: !1058)
!1073 = !DILocation(line: 583, column: 5, scope: !1058)
!1074 = !DILocation(line: 578, column: 36, scope: !1075)
!1075 = !DILexicalBlockFile(scope: !1053, file: !141, discriminator: 2)
!1076 = !DILocation(line: 578, column: 5, scope: !1075)
!1077 = distinct !{!1077, !1078}
!1078 = !DILocation(line: 578, column: 5, scope: !1049)
!1079 = !DILocation(line: 584, column: 3, scope: !1049)
!1080 = !DILocation(line: 585, column: 64, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1044, file: !141, line: 584, column: 10)
!1082 = !DILocation(line: 585, column: 69, scope: !1081)
!1083 = !DILocation(line: 585, column: 10, scope: !1081)
!1084 = !DILocation(line: 585, column: 8, scope: !1081)
!1085 = !DILocation(line: 588, column: 11, scope: !998)
!1086 = !DILocation(line: 588, column: 19, scope: !998)
!1087 = !DILocation(line: 588, column: 3, scope: !1088)
!1088 = !DILexicalBlockFile(scope: !998, file: !141, discriminator: 1)
!1089 = !DILocation(line: 589, column: 11, scope: !998)
!1090 = !DILocation(line: 589, column: 19, scope: !998)
!1091 = !DILocation(line: 589, column: 3, scope: !1088)
!1092 = !DILocation(line: 591, column: 3, scope: !998)
!1093 = !DILocation(line: 592, column: 19, scope: !998)
!1094 = !DILocation(line: 592, column: 3, scope: !998)
!1095 = !DILocation(line: 593, column: 3, scope: !998)
!1096 = !DILocation(line: 595, column: 10, scope: !998)
!1097 = !DILocation(line: 595, column: 3, scope: !998)
!1098 = !DILocation(line: 596, column: 1, scope: !998)
!1099 = distinct !DISubprogram(name: "control_path", scope: !141, file: !141, line: 657, type: !169, isLocal: true, isDefinition: true, scopeLine: 658, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !177)
!1100 = !DILocalVariable(name: "argv", arg: 1, scope: !1099, file: !141, line: 657, type: !171)
!1101 = !DILocation(line: 657, column: 33, scope: !1099)
!1102 = !DILocalVariable(name: "pkg", scope: !1099, file: !141, line: 659, type: !255)
!1103 = !DILocation(line: 659, column: 19, scope: !1099)
!1104 = !DILocalVariable(name: "pkgname", scope: !1099, file: !141, line: 660, type: !142)
!1105 = !DILocation(line: 660, column: 15, scope: !1099)
!1106 = !DILocalVariable(name: "control_file", scope: !1099, file: !141, line: 661, type: !142)
!1107 = !DILocation(line: 661, column: 15, scope: !1099)
!1108 = !DILocation(line: 663, column: 18, scope: !1099)
!1109 = !DILocation(line: 663, column: 13, scope: !1099)
!1110 = !DILocation(line: 663, column: 11, scope: !1099)
!1111 = !DILocation(line: 664, column: 8, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1099, file: !141, line: 664, column: 7)
!1113 = !DILocation(line: 664, column: 7, scope: !1099)
!1114 = !DILocation(line: 665, column: 14, scope: !1112)
!1115 = !DILocation(line: 666, column: 14, scope: !1112)
!1116 = !DILocation(line: 666, column: 25, scope: !1112)
!1117 = !DILocation(line: 665, column: 5, scope: !1118)
!1118 = !DILexicalBlockFile(scope: !1112, file: !141, discriminator: 1)
!1119 = !DILocation(line: 665, column: 5, scope: !1112)
!1120 = !DILocation(line: 668, column: 23, scope: !1099)
!1121 = !DILocation(line: 668, column: 18, scope: !1099)
!1122 = !DILocation(line: 668, column: 16, scope: !1099)
!1123 = !DILocation(line: 669, column: 7, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1099, file: !141, line: 669, column: 7)
!1125 = !DILocation(line: 669, column: 20, scope: !1124)
!1126 = !DILocation(line: 669, column: 24, scope: !1127)
!1127 = !DILexicalBlockFile(scope: !1124, file: !141, discriminator: 1)
!1128 = !DILocation(line: 669, column: 23, scope: !1127)
!1129 = !DILocation(line: 669, column: 7, scope: !1127)
!1130 = !DILocation(line: 670, column: 14, scope: !1124)
!1131 = !DILocation(line: 670, column: 59, scope: !1124)
!1132 = !DILocation(line: 670, column: 70, scope: !1124)
!1133 = !DILocation(line: 670, column: 5, scope: !1127)
!1134 = !DILocation(line: 670, column: 5, scope: !1124)
!1135 = !DILocation(line: 672, column: 7, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1099, file: !141, line: 672, column: 7)
!1137 = !DILocation(line: 672, column: 7, scope: !1099)
!1138 = !DILocation(line: 673, column: 31, scope: !1136)
!1139 = !DILocation(line: 673, column: 5, scope: !1136)
!1140 = !DILocation(line: 675, column: 3, scope: !1099)
!1141 = !DILocation(line: 677, column: 36, scope: !1099)
!1142 = !DILocation(line: 677, column: 47, scope: !1099)
!1143 = !DILocation(line: 677, column: 9, scope: !1099)
!1144 = !DILocation(line: 677, column: 7, scope: !1099)
!1145 = !DILocation(line: 678, column: 7, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1099, file: !141, line: 678, column: 7)
!1147 = !DILocation(line: 678, column: 12, scope: !1146)
!1148 = !DILocation(line: 678, column: 19, scope: !1146)
!1149 = !DILocation(line: 678, column: 7, scope: !1099)
!1150 = !DILocation(line: 679, column: 12, scope: !1146)
!1151 = !DILocation(line: 680, column: 21, scope: !1146)
!1152 = !DILocation(line: 680, column: 12, scope: !1146)
!1153 = !DILocation(line: 679, column: 5, scope: !1154)
!1154 = !DILexicalBlockFile(scope: !1146, file: !141, discriminator: 1)
!1155 = !DILocation(line: 679, column: 5, scope: !1146)
!1156 = !DILocation(line: 682, column: 7, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1099, file: !141, line: 682, column: 7)
!1158 = !DILocation(line: 682, column: 7, scope: !1099)
!1159 = !DILocation(line: 683, column: 23, scope: !1157)
!1160 = !DILocation(line: 683, column: 28, scope: !1157)
!1161 = !DILocation(line: 683, column: 5, scope: !1157)
!1162 = !DILocation(line: 685, column: 24, scope: !1157)
!1163 = !DILocation(line: 685, column: 30, scope: !1157)
!1164 = !DILocation(line: 685, column: 35, scope: !1157)
!1165 = !DILocation(line: 685, column: 5, scope: !1157)
!1166 = !DILocation(line: 687, column: 3, scope: !1099)
!1167 = !DILocation(line: 689, column: 3, scope: !1099)
!1168 = distinct !DISubprogram(name: "control_list", scope: !141, file: !141, line: 693, type: !169, isLocal: true, isDefinition: true, scopeLine: 694, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !177)
!1169 = !DILocalVariable(name: "argv", arg: 1, scope: !1168, file: !141, line: 693, type: !171)
!1170 = !DILocation(line: 693, column: 33, scope: !1168)
!1171 = !DILocalVariable(name: "pkg", scope: !1168, file: !141, line: 695, type: !255)
!1172 = !DILocation(line: 695, column: 19, scope: !1168)
!1173 = !DILocalVariable(name: "pkgname", scope: !1168, file: !141, line: 696, type: !142)
!1174 = !DILocation(line: 696, column: 15, scope: !1168)
!1175 = !DILocation(line: 698, column: 18, scope: !1168)
!1176 = !DILocation(line: 698, column: 13, scope: !1168)
!1177 = !DILocation(line: 698, column: 11, scope: !1168)
!1178 = !DILocation(line: 699, column: 8, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1168, file: !141, line: 699, column: 7)
!1180 = !DILocation(line: 699, column: 16, scope: !1179)
!1181 = !DILocation(line: 699, column: 20, scope: !1182)
!1182 = !DILexicalBlockFile(scope: !1179, file: !141, discriminator: 1)
!1183 = !DILocation(line: 699, column: 19, scope: !1182)
!1184 = !DILocation(line: 699, column: 7, scope: !1182)
!1185 = !DILocation(line: 700, column: 14, scope: !1179)
!1186 = !DILocation(line: 700, column: 63, scope: !1179)
!1187 = !DILocation(line: 700, column: 74, scope: !1179)
!1188 = !DILocation(line: 700, column: 5, scope: !1182)
!1189 = !DILocation(line: 700, column: 5, scope: !1179)
!1190 = !DILocation(line: 702, column: 3, scope: !1168)
!1191 = !DILocation(line: 704, column: 36, scope: !1168)
!1192 = !DILocation(line: 704, column: 47, scope: !1168)
!1193 = !DILocation(line: 704, column: 9, scope: !1168)
!1194 = !DILocation(line: 704, column: 7, scope: !1168)
!1195 = !DILocation(line: 705, column: 7, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1168, file: !141, line: 705, column: 7)
!1197 = !DILocation(line: 705, column: 12, scope: !1196)
!1198 = !DILocation(line: 705, column: 19, scope: !1196)
!1199 = !DILocation(line: 705, column: 7, scope: !1168)
!1200 = !DILocation(line: 706, column: 12, scope: !1196)
!1201 = !DILocation(line: 706, column: 63, scope: !1196)
!1202 = !DILocation(line: 706, column: 54, scope: !1203)
!1203 = !DILexicalBlockFile(scope: !1196, file: !141, discriminator: 1)
!1204 = !DILocation(line: 706, column: 5, scope: !1205)
!1205 = !DILexicalBlockFile(scope: !1196, file: !141, discriminator: 2)
!1206 = !DILocation(line: 706, column: 5, scope: !1196)
!1207 = !DILocation(line: 708, column: 22, scope: !1168)
!1208 = !DILocation(line: 708, column: 28, scope: !1168)
!1209 = !DILocation(line: 708, column: 33, scope: !1168)
!1210 = !DILocation(line: 708, column: 3, scope: !1168)
!1211 = !DILocation(line: 710, column: 3, scope: !1168)
!1212 = !DILocation(line: 712, column: 3, scope: !1168)
!1213 = distinct !DISubprogram(name: "control_show", scope: !141, file: !141, line: 716, type: !169, isLocal: true, isDefinition: true, scopeLine: 717, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !177)
!1214 = !DILocalVariable(name: "argv", arg: 1, scope: !1213, file: !141, line: 716, type: !171)
!1215 = !DILocation(line: 716, column: 33, scope: !1213)
!1216 = !DILocalVariable(name: "pkg", scope: !1213, file: !141, line: 718, type: !255)
!1217 = !DILocation(line: 718, column: 19, scope: !1213)
!1218 = !DILocalVariable(name: "pkgname", scope: !1213, file: !141, line: 719, type: !142)
!1219 = !DILocation(line: 719, column: 15, scope: !1213)
!1220 = !DILocalVariable(name: "filename", scope: !1213, file: !141, line: 720, type: !142)
!1221 = !DILocation(line: 720, column: 15, scope: !1213)
!1222 = !DILocalVariable(name: "control_file", scope: !1213, file: !141, line: 721, type: !142)
!1223 = !DILocation(line: 721, column: 15, scope: !1213)
!1224 = !DILocation(line: 723, column: 18, scope: !1213)
!1225 = !DILocation(line: 723, column: 13, scope: !1213)
!1226 = !DILocation(line: 723, column: 11, scope: !1213)
!1227 = !DILocation(line: 724, column: 8, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1213, file: !141, line: 724, column: 7)
!1229 = !DILocation(line: 724, column: 16, scope: !1228)
!1230 = !DILocation(line: 724, column: 21, scope: !1231)
!1231 = !DILexicalBlockFile(scope: !1228, file: !141, discriminator: 1)
!1232 = !DILocation(line: 724, column: 20, scope: !1231)
!1233 = !DILocation(line: 724, column: 7, scope: !1231)
!1234 = !DILocation(line: 725, column: 14, scope: !1228)
!1235 = !DILocation(line: 726, column: 14, scope: !1228)
!1236 = !DILocation(line: 726, column: 25, scope: !1228)
!1237 = !DILocation(line: 725, column: 5, scope: !1231)
!1238 = !DILocation(line: 725, column: 5, scope: !1228)
!1239 = !DILocation(line: 728, column: 23, scope: !1213)
!1240 = !DILocation(line: 728, column: 18, scope: !1213)
!1241 = !DILocation(line: 728, column: 16, scope: !1213)
!1242 = !DILocation(line: 729, column: 8, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1213, file: !141, line: 729, column: 7)
!1244 = !DILocation(line: 729, column: 21, scope: !1243)
!1245 = !DILocation(line: 729, column: 25, scope: !1246)
!1246 = !DILexicalBlockFile(scope: !1243, file: !141, discriminator: 1)
!1247 = !DILocation(line: 729, column: 24, scope: !1246)
!1248 = !DILocation(line: 729, column: 7, scope: !1246)
!1249 = !DILocation(line: 730, column: 14, scope: !1243)
!1250 = !DILocation(line: 730, column: 59, scope: !1243)
!1251 = !DILocation(line: 730, column: 70, scope: !1243)
!1252 = !DILocation(line: 730, column: 5, scope: !1246)
!1253 = !DILocation(line: 730, column: 5, scope: !1243)
!1254 = !DILocation(line: 732, column: 29, scope: !1213)
!1255 = !DILocation(line: 732, column: 3, scope: !1213)
!1256 = !DILocation(line: 734, column: 3, scope: !1213)
!1257 = !DILocation(line: 736, column: 36, scope: !1213)
!1258 = !DILocation(line: 736, column: 47, scope: !1213)
!1259 = !DILocation(line: 736, column: 9, scope: !1213)
!1260 = !DILocation(line: 736, column: 7, scope: !1213)
!1261 = !DILocation(line: 737, column: 7, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1213, file: !141, line: 737, column: 7)
!1263 = !DILocation(line: 737, column: 12, scope: !1262)
!1264 = !DILocation(line: 737, column: 19, scope: !1262)
!1265 = !DILocation(line: 737, column: 7, scope: !1213)
!1266 = !DILocation(line: 738, column: 12, scope: !1262)
!1267 = !DILocation(line: 738, column: 63, scope: !1262)
!1268 = !DILocation(line: 738, column: 54, scope: !1269)
!1269 = !DILexicalBlockFile(scope: !1262, file: !141, discriminator: 1)
!1270 = !DILocation(line: 738, column: 5, scope: !1271)
!1271 = !DILexicalBlockFile(scope: !1262, file: !141, discriminator: 2)
!1272 = !DILocation(line: 738, column: 5, scope: !1262)
!1273 = !DILocation(line: 740, column: 27, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1213, file: !141, line: 740, column: 7)
!1275 = !DILocation(line: 740, column: 33, scope: !1274)
!1276 = !DILocation(line: 740, column: 38, scope: !1274)
!1277 = !DILocation(line: 740, column: 49, scope: !1274)
!1278 = !DILocation(line: 740, column: 7, scope: !1274)
!1279 = !DILocation(line: 740, column: 7, scope: !1213)
!1280 = !DILocation(line: 741, column: 36, scope: !1274)
!1281 = !DILocation(line: 741, column: 42, scope: !1274)
!1282 = !DILocation(line: 741, column: 47, scope: !1274)
!1283 = !DILocation(line: 741, column: 58, scope: !1274)
!1284 = !DILocation(line: 741, column: 16, scope: !1274)
!1285 = !DILocation(line: 741, column: 14, scope: !1274)
!1286 = !DILocation(line: 741, column: 5, scope: !1274)
!1287 = !DILocation(line: 743, column: 12, scope: !1274)
!1288 = !DILocation(line: 743, column: 57, scope: !1274)
!1289 = !DILocation(line: 743, column: 5, scope: !1290)
!1290 = !DILexicalBlockFile(scope: !1274, file: !141, discriminator: 1)
!1291 = !DILocation(line: 743, column: 5, scope: !1274)
!1292 = !DILocation(line: 745, column: 3, scope: !1213)
!1293 = !DILocation(line: 747, column: 13, scope: !1213)
!1294 = !DILocation(line: 747, column: 3, scope: !1213)
!1295 = !DILocation(line: 749, column: 3, scope: !1213)
!1296 = distinct !DISubprogram(name: "set_no_pager", scope: !141, file: !141, line: 753, type: !161, isLocal: true, isDefinition: true, scopeLine: 754, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !177)
!1297 = !DILocalVariable(name: "ci", arg: 1, scope: !1296, file: !141, line: 753, type: !163)
!1298 = !DILocation(line: 753, column: 36, scope: !1296)
!1299 = !DILocalVariable(name: "value", arg: 2, scope: !1296, file: !141, line: 753, type: !142)
!1300 = !DILocation(line: 753, column: 52, scope: !1296)
!1301 = !DILocation(line: 755, column: 3, scope: !1296)
!1302 = !DILocation(line: 756, column: 1, scope: !1296)
!1303 = distinct !DISubprogram(name: "usage", scope: !141, file: !141, line: 773, type: !161, isLocal: true, isDefinition: true, scopeLine: 774, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !177)
!1304 = !DILocalVariable(name: "ci", arg: 1, scope: !1303, file: !141, line: 773, type: !163)
!1305 = !DILocation(line: 773, column: 29, scope: !1303)
!1306 = !DILocalVariable(name: "value", arg: 2, scope: !1303, file: !141, line: 773, type: !142)
!1307 = !DILocation(line: 773, column: 45, scope: !1303)
!1308 = !DILocation(line: 775, column: 10, scope: !1303)
!1309 = !DILocation(line: 775, column: 3, scope: !1310)
!1310 = !DILexicalBlockFile(scope: !1303, file: !141, discriminator: 1)
!1311 = !DILocation(line: 779, column: 10, scope: !1303)
!1312 = !DILocation(line: 779, column: 3, scope: !1310)
!1313 = !DILocation(line: 794, column: 10, scope: !1303)
!1314 = !DILocation(line: 794, column: 3, scope: !1310)
!1315 = !DILocation(line: 799, column: 10, scope: !1303)
!1316 = !DILocation(line: 799, column: 3, scope: !1310)
!1317 = !DILocation(line: 806, column: 10, scope: !1303)
!1318 = !DILocation(line: 806, column: 3, scope: !1310)
!1319 = !DILocation(line: 815, column: 11, scope: !1303)
!1320 = !DILocation(line: 815, column: 19, scope: !1303)
!1321 = !DILocation(line: 815, column: 3, scope: !1310)
!1322 = !DILocation(line: 817, column: 3, scope: !1303)
!1323 = !DILocation(line: 818, column: 1, scope: !1303)
!1324 = distinct !DISubprogram(name: "printversion", scope: !141, file: !141, line: 759, type: !161, isLocal: true, isDefinition: true, scopeLine: 760, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !177)
!1325 = !DILocalVariable(name: "ci", arg: 1, scope: !1324, file: !141, line: 759, type: !163)
!1326 = !DILocation(line: 759, column: 36, scope: !1324)
!1327 = !DILocalVariable(name: "value", arg: 2, scope: !1324, file: !141, line: 759, type: !142)
!1328 = !DILocation(line: 759, column: 52, scope: !1324)
!1329 = !DILocation(line: 761, column: 10, scope: !1324)
!1330 = !DILocation(line: 761, column: 3, scope: !1331)
!1331 = !DILexicalBlockFile(scope: !1324, file: !141, discriminator: 1)
!1332 = !DILocation(line: 763, column: 10, scope: !1324)
!1333 = !DILocation(line: 763, column: 3, scope: !1331)
!1334 = !DILocation(line: 767, column: 11, scope: !1324)
!1335 = !DILocation(line: 767, column: 19, scope: !1324)
!1336 = !DILocation(line: 767, column: 3, scope: !1331)
!1337 = !DILocation(line: 769, column: 3, scope: !1324)
!1338 = !DILocation(line: 770, column: 1, scope: !1324)
!1339 = distinct !DISubprogram(name: "str_is_unset", scope: !1340, file: !1340, line: 41, type: !1341, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !177)
!1340 = !DIFile(filename: "../lib/dpkg/string.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-query")
!1341 = !DISubroutineType(types: !1342)
!1342 = !{!302, !142}
!1343 = !DILocalVariable(name: "str", arg: 1, scope: !1339, file: !1340, line: 41, type: !142)
!1344 = !DILocation(line: 41, column: 26, scope: !1339)
!1345 = !DILocation(line: 43, column: 9, scope: !1339)
!1346 = !DILocation(line: 43, column: 13, scope: !1339)
!1347 = !DILocation(line: 43, column: 20, scope: !1339)
!1348 = !DILocation(line: 43, column: 23, scope: !1349)
!1349 = !DILexicalBlockFile(scope: !1339, file: !1340, discriminator: 1)
!1350 = !DILocation(line: 43, column: 30, scope: !1349)
!1351 = !DILocation(line: 43, column: 20, scope: !1349)
!1352 = !DILocation(line: 43, column: 2, scope: !1353)
!1353 = !DILexicalBlockFile(scope: !1339, file: !1340, discriminator: 2)
!1354 = distinct !DISubprogram(name: "pkg_array_list_item", scope: !141, file: !141, line: 226, type: !1355, isLocal: true, isDefinition: true, scopeLine: 227, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !177)
!1355 = !DISubroutineType(types: !1356)
!1356 = !{null, !1357, !255, !138}
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64, align: 64)
!1358 = !DILocalVariable(name: "array", arg: 1, scope: !1354, file: !141, line: 226, type: !1357)
!1359 = !DILocation(line: 226, column: 39, scope: !1354)
!1360 = !DILocalVariable(name: "pkg", arg: 2, scope: !1354, file: !141, line: 226, type: !255)
!1361 = !DILocation(line: 226, column: 62, scope: !1354)
!1362 = !DILocalVariable(name: "pkg_data", arg: 3, scope: !1354, file: !141, line: 226, type: !138)
!1363 = !DILocation(line: 226, column: 73, scope: !1354)
!1364 = !DILocalVariable(name: "fmt", scope: !1354, file: !141, line: 228, type: !1365)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64, align: 64)
!1366 = !DILocation(line: 228, column: 23, scope: !1354)
!1367 = !DILocation(line: 228, column: 29, scope: !1354)
!1368 = !DILocalVariable(name: "l", scope: !1354, file: !141, line: 229, type: !154)
!1369 = !DILocation(line: 229, column: 7, scope: !1354)
!1370 = !DILocalVariable(name: "pdesc", scope: !1354, file: !141, line: 230, type: !142)
!1371 = !DILocation(line: 230, column: 15, scope: !1354)
!1372 = !DILocation(line: 232, column: 20, scope: !1354)
!1373 = !DILocation(line: 232, column: 25, scope: !1354)
!1374 = !DILocation(line: 232, column: 3, scope: !1354)
!1375 = !DILocation(line: 233, column: 28, scope: !1354)
!1376 = !DILocation(line: 233, column: 3, scope: !1354)
!1377 = !DILocation(line: 235, column: 27, scope: !1354)
!1378 = !DILocation(line: 235, column: 33, scope: !1354)
!1379 = !DILocation(line: 235, column: 38, scope: !1354)
!1380 = !DILocation(line: 235, column: 11, scope: !1354)
!1381 = !DILocation(line: 235, column: 9, scope: !1354)
!1382 = !DILocation(line: 236, column: 9, scope: !1354)
!1383 = !DILocation(line: 236, column: 15, scope: !1354)
!1384 = !DILocation(line: 236, column: 20, scope: !1354)
!1385 = !DILocation(line: 236, column: 12, scope: !1354)
!1386 = !DILocation(line: 236, column: 8, scope: !1354)
!1387 = !DILocation(line: 236, column: 27, scope: !1388)
!1388 = !DILexicalBlockFile(scope: !1354, file: !141, discriminator: 1)
!1389 = !DILocation(line: 236, column: 8, scope: !1388)
!1390 = !DILocation(line: 236, column: 33, scope: !1391)
!1391 = !DILexicalBlockFile(scope: !1354, file: !141, discriminator: 2)
!1392 = !DILocation(line: 236, column: 38, scope: !1391)
!1393 = !DILocation(line: 236, column: 8, scope: !1391)
!1394 = !DILocation(line: 236, column: 8, scope: !1395)
!1395 = !DILexicalBlockFile(scope: !1354, file: !141, discriminator: 3)
!1396 = !DILocation(line: 236, column: 5, scope: !1395)
!1397 = !DILocation(line: 238, column: 21, scope: !1354)
!1398 = !DILocation(line: 239, column: 37, scope: !1354)
!1399 = !DILocation(line: 239, column: 21, scope: !1354)
!1400 = !DILocation(line: 240, column: 39, scope: !1354)
!1401 = !DILocation(line: 240, column: 21, scope: !1354)
!1402 = !DILocation(line: 241, column: 38, scope: !1354)
!1403 = !DILocation(line: 241, column: 21, scope: !1354)
!1404 = !DILocation(line: 242, column: 30, scope: !1354)
!1405 = !DILocation(line: 242, column: 21, scope: !1354)
!1406 = !DILocation(line: 243, column: 38, scope: !1354)
!1407 = !DILocation(line: 243, column: 43, scope: !1354)
!1408 = !DILocation(line: 243, column: 53, scope: !1354)
!1409 = !DILocation(line: 243, column: 21, scope: !1354)
!1410 = !DILocation(line: 244, column: 40, scope: !1354)
!1411 = !DILocation(line: 244, column: 45, scope: !1354)
!1412 = !DILocation(line: 244, column: 55, scope: !1354)
!1413 = !DILocation(line: 244, column: 21, scope: !1354)
!1414 = !DILocation(line: 245, column: 21, scope: !1354)
!1415 = !DILocation(line: 245, column: 28, scope: !1354)
!1416 = !DILocation(line: 238, column: 3, scope: !1354)
!1417 = !DILocation(line: 246, column: 1, scope: !1354)
!1418 = distinct !DISubprogram(name: "pkg_array_match_patterns", scope: !141, file: !141, line: 66, type: !1419, isLocal: true, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !177)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{!154, !1357, !1421, !138, !171}
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64, align: 64)
!1422 = !DIDerivedType(tag: DW_TAG_typedef, name: "pkg_array_visitor_func", file: !778, line: 44, baseType: !1355)
!1423 = !DILocalVariable(name: "array", arg: 1, scope: !1418, file: !141, line: 66, type: !1357)
!1424 = !DILocation(line: 66, column: 44, scope: !1418)
!1425 = !DILocalVariable(name: "pkg_visitor", arg: 2, scope: !1418, file: !141, line: 67, type: !1421)
!1426 = !DILocation(line: 67, column: 50, scope: !1418)
!1427 = !DILocalVariable(name: "pkg_data", arg: 3, scope: !1418, file: !141, line: 67, type: !138)
!1428 = !DILocation(line: 67, column: 69, scope: !1418)
!1429 = !DILocalVariable(name: "argv", arg: 4, scope: !1418, file: !141, line: 68, type: !171)
!1430 = !DILocation(line: 68, column: 45, scope: !1418)
!1431 = !DILocalVariable(name: "argc", scope: !1418, file: !141, line: 70, type: !154)
!1432 = !DILocation(line: 70, column: 7, scope: !1418)
!1433 = !DILocalVariable(name: "i", scope: !1418, file: !141, line: 70, type: !154)
!1434 = !DILocation(line: 70, column: 13, scope: !1418)
!1435 = !DILocalVariable(name: "ip", scope: !1418, file: !141, line: 70, type: !154)
!1436 = !DILocation(line: 70, column: 16, scope: !1418)
!1437 = !DILocalVariable(name: "found", scope: !1418, file: !141, line: 70, type: !156)
!1438 = !DILocation(line: 70, column: 21, scope: !1418)
!1439 = !DILocalVariable(name: "rc", scope: !1418, file: !141, line: 71, type: !154)
!1440 = !DILocation(line: 71, column: 7, scope: !1418)
!1441 = !DILocalVariable(name: "ps", scope: !1418, file: !141, line: 72, type: !1442)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64, align: 64)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_spec", file: !125, line: 51, size: 320, align: 64, elements: !1444)
!1444 = !{!1445, !1446, !1447, !1448, !1449, !1450, !1453}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1443, file: !125, line: 52, baseType: !187, size: 64, align: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1443, file: !125, line: 53, baseType: !285, size: 64, align: 64, offset: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1443, file: !125, line: 55, baseType: !124, size: 32, align: 32, offset: 128)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "name_is_pattern", scope: !1443, file: !125, line: 59, baseType: !302, size: 8, align: 8, offset: 160)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "arch_is_pattern", scope: !1443, file: !125, line: 60, baseType: !302, size: 8, align: 8, offset: 168)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_iter", scope: !1443, file: !125, line: 63, baseType: !1451, size: 64, align: 64, offset: 192)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64, align: 64)
!1452 = !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_hash_iter", file: !4, line: 314, flags: DIFlagFwdDecl)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_next", scope: !1443, file: !125, line: 65, baseType: !255, size: 64, align: 64, offset: 256)
!1454 = !DILocation(line: 72, column: 20, scope: !1418)
!1455 = !DILocation(line: 74, column: 13, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1418, file: !141, line: 74, column: 3)
!1457 = !DILocation(line: 74, column: 8, scope: !1456)
!1458 = !DILocation(line: 74, column: 23, scope: !1459)
!1459 = !DILexicalBlockFile(scope: !1460, file: !141, discriminator: 1)
!1460 = distinct !DILexicalBlock(scope: !1456, file: !141, line: 74, column: 3)
!1461 = !DILocation(line: 74, column: 18, scope: !1459)
!1462 = !DILocation(line: 74, column: 3, scope: !1459)
!1463 = !DILocation(line: 74, column: 3, scope: !1464)
!1464 = !DILexicalBlockFile(scope: !1456, file: !141, discriminator: 2)
!1465 = !DILocation(line: 74, column: 34, scope: !1466)
!1466 = !DILexicalBlockFile(scope: !1460, file: !141, discriminator: 3)
!1467 = !DILocation(line: 74, column: 3, scope: !1466)
!1468 = distinct !{!1468, !1469}
!1469 = !DILocation(line: 74, column: 3, scope: !1418)
!1470 = !DILocation(line: 75, column: 20, scope: !1418)
!1471 = !DILocation(line: 75, column: 11, scope: !1418)
!1472 = !DILocation(line: 75, column: 9, scope: !1418)
!1473 = !DILocation(line: 77, column: 31, scope: !1418)
!1474 = !DILocation(line: 77, column: 29, scope: !1418)
!1475 = !DILocation(line: 77, column: 8, scope: !1418)
!1476 = !DILocation(line: 77, column: 6, scope: !1418)
!1477 = !DILocation(line: 78, column: 11, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1418, file: !141, line: 78, column: 3)
!1479 = !DILocation(line: 78, column: 8, scope: !1478)
!1480 = !DILocation(line: 78, column: 16, scope: !1481)
!1481 = !DILexicalBlockFile(scope: !1482, file: !141, discriminator: 1)
!1482 = distinct !DILexicalBlock(scope: !1478, file: !141, line: 78, column: 3)
!1483 = !DILocation(line: 78, column: 21, scope: !1481)
!1484 = !DILocation(line: 78, column: 19, scope: !1481)
!1485 = !DILocation(line: 78, column: 3, scope: !1481)
!1486 = !DILocation(line: 79, column: 23, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1482, file: !141, line: 78, column: 33)
!1488 = !DILocation(line: 79, column: 20, scope: !1487)
!1489 = !DILocation(line: 79, column: 5, scope: !1487)
!1490 = !DILocation(line: 80, column: 24, scope: !1487)
!1491 = !DILocation(line: 80, column: 21, scope: !1487)
!1492 = !DILocation(line: 80, column: 34, scope: !1487)
!1493 = !DILocation(line: 80, column: 29, scope: !1487)
!1494 = !DILocation(line: 80, column: 5, scope: !1487)
!1495 = !DILocation(line: 81, column: 3, scope: !1487)
!1496 = !DILocation(line: 78, column: 29, scope: !1497)
!1497 = !DILexicalBlockFile(scope: !1482, file: !141, discriminator: 2)
!1498 = !DILocation(line: 78, column: 3, scope: !1497)
!1499 = distinct !{!1499, !1500}
!1500 = !DILocation(line: 78, column: 3, scope: !1418)
!1501 = !DILocation(line: 83, column: 10, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1418, file: !141, line: 83, column: 3)
!1503 = !DILocation(line: 83, column: 8, scope: !1502)
!1504 = !DILocation(line: 83, column: 15, scope: !1505)
!1505 = !DILexicalBlockFile(scope: !1506, file: !141, discriminator: 1)
!1506 = distinct !DILexicalBlock(scope: !1502, file: !141, line: 83, column: 3)
!1507 = !DILocation(line: 83, column: 19, scope: !1505)
!1508 = !DILocation(line: 83, column: 26, scope: !1505)
!1509 = !DILocation(line: 83, column: 17, scope: !1505)
!1510 = !DILocation(line: 83, column: 3, scope: !1505)
!1511 = !DILocalVariable(name: "pkg", scope: !1512, file: !141, line: 84, type: !255)
!1512 = distinct !DILexicalBlock(scope: !1506, file: !141, line: 83, column: 39)
!1513 = !DILocation(line: 84, column: 21, scope: !1512)
!1514 = !DILocalVariable(name: "pkg_found", scope: !1512, file: !141, line: 85, type: !302)
!1515 = !DILocation(line: 85, column: 9, scope: !1512)
!1516 = !DILocation(line: 87, column: 23, scope: !1512)
!1517 = !DILocation(line: 87, column: 11, scope: !1512)
!1518 = !DILocation(line: 87, column: 18, scope: !1512)
!1519 = !DILocation(line: 87, column: 9, scope: !1512)
!1520 = !DILocation(line: 88, column: 13, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1512, file: !141, line: 88, column: 5)
!1522 = !DILocation(line: 88, column: 10, scope: !1521)
!1523 = !DILocation(line: 88, column: 18, scope: !1524)
!1524 = !DILexicalBlockFile(scope: !1525, file: !141, discriminator: 1)
!1525 = distinct !DILexicalBlock(scope: !1521, file: !141, line: 88, column: 5)
!1526 = !DILocation(line: 88, column: 23, scope: !1524)
!1527 = !DILocation(line: 88, column: 21, scope: !1524)
!1528 = !DILocation(line: 88, column: 5, scope: !1524)
!1529 = !DILocation(line: 89, column: 34, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1531, file: !141, line: 89, column: 11)
!1531 = distinct !DILexicalBlock(scope: !1525, file: !141, line: 88, column: 35)
!1532 = !DILocation(line: 89, column: 31, scope: !1530)
!1533 = !DILocation(line: 89, column: 39, scope: !1530)
!1534 = !DILocation(line: 89, column: 45, scope: !1530)
!1535 = !DILocation(line: 89, column: 50, scope: !1530)
!1536 = !DILocation(line: 89, column: 11, scope: !1530)
!1537 = !DILocation(line: 89, column: 11, scope: !1531)
!1538 = !DILocation(line: 90, column: 19, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1530, file: !141, line: 89, column: 62)
!1540 = !DILocation(line: 91, column: 15, scope: !1539)
!1541 = !DILocation(line: 91, column: 9, scope: !1539)
!1542 = !DILocation(line: 91, column: 18, scope: !1539)
!1543 = !DILocation(line: 92, column: 7, scope: !1539)
!1544 = !DILocation(line: 93, column: 5, scope: !1531)
!1545 = !DILocation(line: 88, column: 31, scope: !1546)
!1546 = !DILexicalBlockFile(scope: !1525, file: !141, discriminator: 2)
!1547 = !DILocation(line: 88, column: 5, scope: !1546)
!1548 = distinct !{!1548, !1549}
!1549 = !DILocation(line: 88, column: 5, scope: !1512)
!1550 = !DILocation(line: 94, column: 10, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1512, file: !141, line: 94, column: 9)
!1552 = !DILocation(line: 94, column: 9, scope: !1512)
!1553 = !DILocation(line: 95, column: 19, scope: !1551)
!1554 = !DILocation(line: 95, column: 7, scope: !1551)
!1555 = !DILocation(line: 95, column: 14, scope: !1551)
!1556 = !DILocation(line: 95, column: 22, scope: !1551)
!1557 = !DILocation(line: 96, column: 3, scope: !1512)
!1558 = !DILocation(line: 83, column: 35, scope: !1559)
!1559 = !DILexicalBlockFile(scope: !1506, file: !141, discriminator: 2)
!1560 = !DILocation(line: 83, column: 3, scope: !1559)
!1561 = distinct !{!1561, !1562}
!1562 = !DILocation(line: 83, column: 3, scope: !1418)
!1563 = !DILocation(line: 98, column: 21, scope: !1418)
!1564 = !DILocation(line: 98, column: 28, scope: !1418)
!1565 = !DILocation(line: 98, column: 41, scope: !1418)
!1566 = !DILocation(line: 98, column: 3, scope: !1418)
!1567 = !DILocation(line: 100, column: 11, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1418, file: !141, line: 100, column: 3)
!1569 = !DILocation(line: 100, column: 8, scope: !1568)
!1570 = !DILocation(line: 100, column: 16, scope: !1571)
!1571 = !DILexicalBlockFile(scope: !1572, file: !141, discriminator: 1)
!1572 = distinct !DILexicalBlock(scope: !1568, file: !141, line: 100, column: 3)
!1573 = !DILocation(line: 100, column: 21, scope: !1571)
!1574 = !DILocation(line: 100, column: 19, scope: !1571)
!1575 = !DILocation(line: 100, column: 3, scope: !1571)
!1576 = !DILocation(line: 101, column: 16, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1578, file: !141, line: 101, column: 9)
!1578 = distinct !DILexicalBlock(scope: !1572, file: !141, line: 100, column: 33)
!1579 = !DILocation(line: 101, column: 10, scope: !1577)
!1580 = !DILocation(line: 101, column: 9, scope: !1578)
!1581 = !DILocation(line: 102, column: 14, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1577, file: !141, line: 101, column: 21)
!1583 = !DILocation(line: 102, column: 61, scope: !1582)
!1584 = !DILocation(line: 102, column: 56, scope: !1582)
!1585 = !DILocation(line: 102, column: 7, scope: !1586)
!1586 = !DILexicalBlockFile(scope: !1582, file: !141, discriminator: 1)
!1587 = !DILocation(line: 103, column: 9, scope: !1582)
!1588 = !DILocation(line: 104, column: 5, scope: !1582)
!1589 = !DILocation(line: 105, column: 26, scope: !1578)
!1590 = !DILocation(line: 105, column: 23, scope: !1578)
!1591 = !DILocation(line: 105, column: 5, scope: !1578)
!1592 = !DILocation(line: 106, column: 3, scope: !1578)
!1593 = !DILocation(line: 100, column: 29, scope: !1594)
!1594 = !DILexicalBlockFile(scope: !1572, file: !141, discriminator: 2)
!1595 = !DILocation(line: 100, column: 3, scope: !1594)
!1596 = distinct !{!1596, !1597}
!1597 = !DILocation(line: 100, column: 3, scope: !1418)
!1598 = !DILocation(line: 108, column: 8, scope: !1418)
!1599 = !DILocation(line: 108, column: 3, scope: !1418)
!1600 = !DILocation(line: 109, column: 8, scope: !1418)
!1601 = !DILocation(line: 109, column: 3, scope: !1418)
!1602 = !DILocation(line: 111, column: 10, scope: !1418)
!1603 = !DILocation(line: 111, column: 3, scope: !1418)
!1604 = distinct !DISubprogram(name: "list_format_init", scope: !141, file: !141, line: 123, type: !1605, isLocal: true, isDefinition: true, scopeLine: 124, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !177)
!1605 = !DISubroutineType(types: !1606)
!1606 = !{null, !1365, !1357}
!1607 = !DILocalVariable(name: "fmt", arg: 1, scope: !1604, file: !141, line: 123, type: !1365)
!1608 = !DILocation(line: 123, column: 38, scope: !1604)
!1609 = !DILocalVariable(name: "array", arg: 2, scope: !1604, file: !141, line: 123, type: !1357)
!1610 = !DILocation(line: 123, column: 61, scope: !1604)
!1611 = !DILocalVariable(name: "i", scope: !1604, file: !141, line: 125, type: !154)
!1612 = !DILocation(line: 125, column: 7, scope: !1604)
!1613 = !DILocation(line: 127, column: 7, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1604, file: !141, line: 127, column: 7)
!1615 = !DILocation(line: 127, column: 12, scope: !1614)
!1616 = !DILocation(line: 127, column: 15, scope: !1614)
!1617 = !DILocation(line: 127, column: 7, scope: !1604)
!1618 = !DILocation(line: 128, column: 5, scope: !1614)
!1619 = !DILocation(line: 130, column: 3, scope: !1604)
!1620 = !DILocation(line: 130, column: 8, scope: !1604)
!1621 = !DILocation(line: 130, column: 11, scope: !1604)
!1622 = !DILocation(line: 131, column: 3, scope: !1604)
!1623 = !DILocation(line: 131, column: 8, scope: !1604)
!1624 = !DILocation(line: 131, column: 11, scope: !1604)
!1625 = !DILocation(line: 132, column: 3, scope: !1604)
!1626 = !DILocation(line: 132, column: 8, scope: !1604)
!1627 = !DILocation(line: 132, column: 11, scope: !1604)
!1628 = !DILocation(line: 133, column: 3, scope: !1604)
!1629 = !DILocation(line: 133, column: 8, scope: !1604)
!1630 = !DILocation(line: 133, column: 11, scope: !1604)
!1631 = !DILocation(line: 135, column: 10, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1604, file: !141, line: 135, column: 3)
!1633 = !DILocation(line: 135, column: 8, scope: !1632)
!1634 = !DILocation(line: 135, column: 15, scope: !1635)
!1635 = !DILexicalBlockFile(scope: !1636, file: !141, discriminator: 1)
!1636 = distinct !DILexicalBlock(scope: !1632, file: !141, line: 135, column: 3)
!1637 = !DILocation(line: 135, column: 19, scope: !1635)
!1638 = !DILocation(line: 135, column: 26, scope: !1635)
!1639 = !DILocation(line: 135, column: 17, scope: !1635)
!1640 = !DILocation(line: 135, column: 3, scope: !1635)
!1641 = !DILocalVariable(name: "plen", scope: !1642, file: !141, line: 136, type: !154)
!1642 = distinct !DILexicalBlock(scope: !1636, file: !141, line: 135, column: 39)
!1643 = !DILocation(line: 136, column: 9, scope: !1642)
!1644 = !DILocalVariable(name: "vlen", scope: !1642, file: !141, line: 136, type: !154)
!1645 = !DILocation(line: 136, column: 15, scope: !1642)
!1646 = !DILocalVariable(name: "alen", scope: !1642, file: !141, line: 136, type: !154)
!1647 = !DILocation(line: 136, column: 21, scope: !1642)
!1648 = !DILocalVariable(name: "dlen", scope: !1642, file: !141, line: 136, type: !154)
!1649 = !DILocation(line: 136, column: 27, scope: !1642)
!1650 = !DILocation(line: 138, column: 21, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1642, file: !141, line: 138, column: 9)
!1652 = !DILocation(line: 138, column: 9, scope: !1651)
!1653 = !DILocation(line: 138, column: 16, scope: !1651)
!1654 = !DILocation(line: 138, column: 24, scope: !1651)
!1655 = !DILocation(line: 138, column: 9, scope: !1642)
!1656 = !DILocation(line: 139, column: 7, scope: !1651)
!1657 = !DILocation(line: 141, column: 43, scope: !1642)
!1658 = !DILocation(line: 141, column: 31, scope: !1642)
!1659 = !DILocation(line: 141, column: 38, scope: !1642)
!1660 = !DILocation(line: 141, column: 22, scope: !1642)
!1661 = !DILocation(line: 141, column: 12, scope: !1662)
!1662 = !DILexicalBlockFile(scope: !1642, file: !141, discriminator: 1)
!1663 = !DILocation(line: 141, column: 10, scope: !1642)
!1664 = !DILocation(line: 142, column: 51, scope: !1642)
!1665 = !DILocation(line: 142, column: 39, scope: !1642)
!1666 = !DILocation(line: 142, column: 46, scope: !1642)
!1667 = !DILocation(line: 142, column: 55, scope: !1642)
!1668 = !DILocation(line: 142, column: 65, scope: !1642)
!1669 = !DILocation(line: 142, column: 22, scope: !1642)
!1670 = !DILocation(line: 142, column: 12, scope: !1662)
!1671 = !DILocation(line: 142, column: 10, scope: !1642)
!1672 = !DILocation(line: 144, column: 53, scope: !1642)
!1673 = !DILocation(line: 144, column: 41, scope: !1642)
!1674 = !DILocation(line: 144, column: 48, scope: !1642)
!1675 = !DILocation(line: 144, column: 57, scope: !1642)
!1676 = !DILocation(line: 144, column: 67, scope: !1642)
!1677 = !DILocation(line: 144, column: 22, scope: !1642)
!1678 = !DILocation(line: 144, column: 12, scope: !1662)
!1679 = !DILocation(line: 144, column: 10, scope: !1642)
!1680 = !DILocation(line: 145, column: 33, scope: !1642)
!1681 = !DILocation(line: 145, column: 21, scope: !1642)
!1682 = !DILocation(line: 145, column: 28, scope: !1642)
!1683 = !DILocation(line: 145, column: 50, scope: !1642)
!1684 = !DILocation(line: 145, column: 38, scope: !1642)
!1685 = !DILocation(line: 145, column: 45, scope: !1642)
!1686 = !DILocation(line: 145, column: 54, scope: !1642)
!1687 = !DILocation(line: 145, column: 5, scope: !1642)
!1688 = !DILocation(line: 147, column: 9, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1642, file: !141, line: 147, column: 9)
!1690 = !DILocation(line: 147, column: 16, scope: !1689)
!1691 = !DILocation(line: 147, column: 21, scope: !1689)
!1692 = !DILocation(line: 147, column: 14, scope: !1689)
!1693 = !DILocation(line: 147, column: 9, scope: !1642)
!1694 = !DILocation(line: 148, column: 17, scope: !1689)
!1695 = !DILocation(line: 148, column: 7, scope: !1689)
!1696 = !DILocation(line: 148, column: 12, scope: !1689)
!1697 = !DILocation(line: 148, column: 15, scope: !1689)
!1698 = !DILocation(line: 149, column: 9, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1642, file: !141, line: 149, column: 9)
!1700 = !DILocation(line: 149, column: 16, scope: !1699)
!1701 = !DILocation(line: 149, column: 21, scope: !1699)
!1702 = !DILocation(line: 149, column: 14, scope: !1699)
!1703 = !DILocation(line: 149, column: 9, scope: !1642)
!1704 = !DILocation(line: 150, column: 17, scope: !1699)
!1705 = !DILocation(line: 150, column: 7, scope: !1699)
!1706 = !DILocation(line: 150, column: 12, scope: !1699)
!1707 = !DILocation(line: 150, column: 15, scope: !1699)
!1708 = !DILocation(line: 151, column: 9, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1642, file: !141, line: 151, column: 9)
!1710 = !DILocation(line: 151, column: 16, scope: !1709)
!1711 = !DILocation(line: 151, column: 21, scope: !1709)
!1712 = !DILocation(line: 151, column: 14, scope: !1709)
!1713 = !DILocation(line: 151, column: 9, scope: !1642)
!1714 = !DILocation(line: 152, column: 17, scope: !1709)
!1715 = !DILocation(line: 152, column: 7, scope: !1709)
!1716 = !DILocation(line: 152, column: 12, scope: !1709)
!1717 = !DILocation(line: 152, column: 15, scope: !1709)
!1718 = !DILocation(line: 153, column: 9, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1642, file: !141, line: 153, column: 9)
!1720 = !DILocation(line: 153, column: 16, scope: !1719)
!1721 = !DILocation(line: 153, column: 21, scope: !1719)
!1722 = !DILocation(line: 153, column: 14, scope: !1719)
!1723 = !DILocation(line: 153, column: 9, scope: !1642)
!1724 = !DILocation(line: 154, column: 17, scope: !1719)
!1725 = !DILocation(line: 154, column: 7, scope: !1719)
!1726 = !DILocation(line: 154, column: 12, scope: !1719)
!1727 = !DILocation(line: 154, column: 15, scope: !1719)
!1728 = !DILocation(line: 155, column: 3, scope: !1642)
!1729 = !DILocation(line: 135, column: 35, scope: !1730)
!1730 = !DILexicalBlockFile(scope: !1636, file: !141, discriminator: 2)
!1731 = !DILocation(line: 135, column: 3, scope: !1730)
!1732 = distinct !{!1732, !1733}
!1733 = !DILocation(line: 135, column: 3, scope: !1604)
!1734 = !DILocation(line: 156, column: 1, scope: !1604)
!1735 = distinct !DISubprogram(name: "list_format_print_header", scope: !141, file: !141, line: 179, type: !1736, isLocal: true, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !177)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{null, !1365}
!1738 = !DILocalVariable(name: "fmt", arg: 1, scope: !1735, file: !141, line: 179, type: !1365)
!1739 = !DILocation(line: 179, column: 46, scope: !1735)
!1740 = !DILocalVariable(name: "l", scope: !1735, file: !141, line: 181, type: !154)
!1741 = !DILocation(line: 181, column: 7, scope: !1735)
!1742 = !DILocation(line: 183, column: 7, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1735, file: !141, line: 183, column: 7)
!1744 = !DILocation(line: 183, column: 12, scope: !1743)
!1745 = !DILocation(line: 183, column: 7, scope: !1735)
!1746 = !DILocation(line: 184, column: 5, scope: !1743)
!1747 = !DILocation(line: 192, column: 9, scope: !1735)
!1748 = !DILocation(line: 195, column: 64, scope: !1735)
!1749 = !DILocation(line: 192, column: 3, scope: !1750)
!1750 = !DILexicalBlockFile(scope: !1735, file: !141, discriminator: 1)
!1751 = !DILocation(line: 196, column: 21, scope: !1735)
!1752 = !DILocation(line: 196, column: 41, scope: !1735)
!1753 = !DILocation(line: 196, column: 58, scope: !1750)
!1754 = !DILocation(line: 197, column: 21, scope: !1735)
!1755 = !DILocation(line: 197, column: 46, scope: !1750)
!1756 = !DILocation(line: 197, column: 70, scope: !1735)
!1757 = !DILocation(line: 197, column: 75, scope: !1735)
!1758 = !DILocation(line: 196, column: 3, scope: !1759)
!1759 = !DILexicalBlockFile(scope: !1735, file: !141, discriminator: 2)
!1760 = !DILocation(line: 200, column: 3, scope: !1735)
!1761 = !DILocation(line: 203, column: 10, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1735, file: !141, line: 203, column: 3)
!1763 = !DILocation(line: 203, column: 8, scope: !1762)
!1764 = !DILocation(line: 203, column: 15, scope: !1765)
!1765 = !DILexicalBlockFile(scope: !1766, file: !141, discriminator: 1)
!1766 = distinct !DILexicalBlock(scope: !1762, file: !141, line: 203, column: 3)
!1767 = !DILocation(line: 203, column: 19, scope: !1765)
!1768 = !DILocation(line: 203, column: 24, scope: !1765)
!1769 = !DILocation(line: 203, column: 17, scope: !1765)
!1770 = !DILocation(line: 203, column: 3, scope: !1765)
!1771 = !DILocation(line: 204, column: 5, scope: !1766)
!1772 = !DILocation(line: 203, column: 29, scope: !1773)
!1773 = !DILexicalBlockFile(scope: !1766, file: !141, discriminator: 2)
!1774 = !DILocation(line: 203, column: 3, scope: !1773)
!1775 = distinct !{!1775, !1776}
!1776 = !DILocation(line: 203, column: 3, scope: !1735)
!1777 = !DILocation(line: 205, column: 3, scope: !1735)
!1778 = !DILocation(line: 208, column: 10, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1735, file: !141, line: 208, column: 3)
!1780 = !DILocation(line: 208, column: 8, scope: !1779)
!1781 = !DILocation(line: 208, column: 15, scope: !1782)
!1782 = !DILexicalBlockFile(scope: !1783, file: !141, discriminator: 1)
!1783 = distinct !DILexicalBlock(scope: !1779, file: !141, line: 208, column: 3)
!1784 = !DILocation(line: 208, column: 19, scope: !1782)
!1785 = !DILocation(line: 208, column: 24, scope: !1782)
!1786 = !DILocation(line: 208, column: 17, scope: !1782)
!1787 = !DILocation(line: 208, column: 3, scope: !1782)
!1788 = !DILocation(line: 209, column: 5, scope: !1783)
!1789 = !DILocation(line: 208, column: 29, scope: !1790)
!1790 = !DILexicalBlockFile(scope: !1783, file: !141, discriminator: 2)
!1791 = !DILocation(line: 208, column: 3, scope: !1790)
!1792 = distinct !{!1792, !1793}
!1793 = !DILocation(line: 208, column: 3, scope: !1735)
!1794 = !DILocation(line: 210, column: 3, scope: !1735)
!1795 = !DILocation(line: 213, column: 10, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1735, file: !141, line: 213, column: 3)
!1797 = !DILocation(line: 213, column: 8, scope: !1796)
!1798 = !DILocation(line: 213, column: 15, scope: !1799)
!1799 = !DILexicalBlockFile(scope: !1800, file: !141, discriminator: 1)
!1800 = distinct !DILexicalBlock(scope: !1796, file: !141, line: 213, column: 3)
!1801 = !DILocation(line: 213, column: 19, scope: !1799)
!1802 = !DILocation(line: 213, column: 24, scope: !1799)
!1803 = !DILocation(line: 213, column: 17, scope: !1799)
!1804 = !DILocation(line: 213, column: 3, scope: !1799)
!1805 = !DILocation(line: 214, column: 5, scope: !1800)
!1806 = !DILocation(line: 213, column: 29, scope: !1807)
!1807 = !DILexicalBlockFile(scope: !1800, file: !141, discriminator: 2)
!1808 = !DILocation(line: 213, column: 3, scope: !1807)
!1809 = distinct !{!1809, !1810}
!1810 = !DILocation(line: 213, column: 3, scope: !1735)
!1811 = !DILocation(line: 215, column: 3, scope: !1735)
!1812 = !DILocation(line: 218, column: 10, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1735, file: !141, line: 218, column: 3)
!1814 = !DILocation(line: 218, column: 8, scope: !1813)
!1815 = !DILocation(line: 218, column: 15, scope: !1816)
!1816 = !DILexicalBlockFile(scope: !1817, file: !141, discriminator: 1)
!1817 = distinct !DILexicalBlock(scope: !1813, file: !141, line: 218, column: 3)
!1818 = !DILocation(line: 218, column: 19, scope: !1816)
!1819 = !DILocation(line: 218, column: 24, scope: !1816)
!1820 = !DILocation(line: 218, column: 17, scope: !1816)
!1821 = !DILocation(line: 218, column: 3, scope: !1816)
!1822 = !DILocation(line: 219, column: 5, scope: !1817)
!1823 = !DILocation(line: 218, column: 29, scope: !1824)
!1824 = !DILexicalBlockFile(scope: !1817, file: !141, discriminator: 2)
!1825 = !DILocation(line: 218, column: 3, scope: !1824)
!1826 = distinct !{!1826, !1827}
!1827 = !DILocation(line: 218, column: 3, scope: !1735)
!1828 = !DILocation(line: 220, column: 3, scope: !1735)
!1829 = !DILocation(line: 222, column: 3, scope: !1735)
!1830 = !DILocation(line: 222, column: 8, scope: !1735)
!1831 = !DILocation(line: 222, column: 13, scope: !1735)
!1832 = !DILocation(line: 223, column: 1, scope: !1735)
!1833 = !DILocation(line: 223, column: 1, scope: !1750)
!1834 = distinct !DISubprogram(name: "list_format_print", scope: !141, file: !141, line: 159, type: !1835, isLocal: true, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !177)
!1835 = !DISubroutineType(types: !1836)
!1836 = !{null, !1365, !154, !154, !154, !142, !142, !142, !142, !154}
!1837 = !DILocalVariable(name: "fmt", arg: 1, scope: !1834, file: !141, line: 159, type: !1365)
!1838 = !DILocation(line: 159, column: 39, scope: !1834)
!1839 = !DILocalVariable(name: "c_want", arg: 2, scope: !1834, file: !141, line: 160, type: !154)
!1840 = !DILocation(line: 160, column: 23, scope: !1834)
!1841 = !DILocalVariable(name: "c_status", arg: 3, scope: !1834, file: !141, line: 160, type: !154)
!1842 = !DILocation(line: 160, column: 35, scope: !1834)
!1843 = !DILocalVariable(name: "c_eflag", arg: 4, scope: !1834, file: !141, line: 160, type: !154)
!1844 = !DILocation(line: 160, column: 49, scope: !1834)
!1845 = !DILocalVariable(name: "name", arg: 5, scope: !1834, file: !141, line: 161, type: !142)
!1846 = !DILocation(line: 161, column: 31, scope: !1834)
!1847 = !DILocalVariable(name: "version", arg: 6, scope: !1834, file: !141, line: 161, type: !142)
!1848 = !DILocation(line: 161, column: 49, scope: !1834)
!1849 = !DILocalVariable(name: "arch", arg: 7, scope: !1834, file: !141, line: 161, type: !142)
!1850 = !DILocation(line: 161, column: 70, scope: !1834)
!1851 = !DILocalVariable(name: "desc", arg: 8, scope: !1834, file: !141, line: 162, type: !142)
!1852 = !DILocation(line: 162, column: 31, scope: !1834)
!1853 = !DILocalVariable(name: "desc_len", arg: 9, scope: !1834, file: !141, line: 162, type: !154)
!1854 = !DILocation(line: 162, column: 41, scope: !1834)
!1855 = !DILocalVariable(name: "ns", scope: !1834, file: !141, line: 164, type: !1856)
!1856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "str_crop_info", file: !1340, line: 65, size: 64, align: 32, elements: !1857)
!1857 = !{!1858, !1859}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "str_bytes", scope: !1856, file: !1340, line: 66, baseType: !154, size: 32, align: 32)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "max_bytes", scope: !1856, file: !1340, line: 67, baseType: !154, size: 32, align: 32, offset: 32)
!1860 = !DILocation(line: 164, column: 24, scope: !1834)
!1861 = !DILocalVariable(name: "vs", scope: !1834, file: !141, line: 164, type: !1856)
!1862 = !DILocation(line: 164, column: 28, scope: !1834)
!1863 = !DILocalVariable(name: "as", scope: !1834, file: !141, line: 164, type: !1856)
!1864 = !DILocation(line: 164, column: 32, scope: !1834)
!1865 = !DILocalVariable(name: "ds", scope: !1834, file: !141, line: 164, type: !1856)
!1866 = !DILocation(line: 164, column: 36, scope: !1834)
!1867 = !DILocation(line: 166, column: 16, scope: !1834)
!1868 = !DILocation(line: 166, column: 22, scope: !1834)
!1869 = !DILocation(line: 166, column: 27, scope: !1834)
!1870 = !DILocation(line: 166, column: 3, scope: !1834)
!1871 = !DILocation(line: 167, column: 16, scope: !1834)
!1872 = !DILocation(line: 167, column: 25, scope: !1834)
!1873 = !DILocation(line: 167, column: 30, scope: !1834)
!1874 = !DILocation(line: 167, column: 3, scope: !1834)
!1875 = !DILocation(line: 168, column: 16, scope: !1834)
!1876 = !DILocation(line: 168, column: 22, scope: !1834)
!1877 = !DILocation(line: 168, column: 27, scope: !1834)
!1878 = !DILocation(line: 168, column: 3, scope: !1834)
!1879 = !DILocation(line: 169, column: 16, scope: !1834)
!1880 = !DILocation(line: 169, column: 22, scope: !1834)
!1881 = !DILocation(line: 169, column: 3, scope: !1834)
!1882 = !DILocation(line: 171, column: 48, scope: !1834)
!1883 = !DILocation(line: 171, column: 56, scope: !1834)
!1884 = !DILocation(line: 171, column: 66, scope: !1834)
!1885 = !DILocation(line: 172, column: 13, scope: !1834)
!1886 = !DILocation(line: 172, column: 27, scope: !1834)
!1887 = !DILocation(line: 172, column: 38, scope: !1834)
!1888 = !DILocation(line: 173, column: 13, scope: !1834)
!1889 = !DILocation(line: 173, column: 27, scope: !1834)
!1890 = !DILocation(line: 173, column: 38, scope: !1834)
!1891 = !DILocation(line: 174, column: 13, scope: !1834)
!1892 = !DILocation(line: 174, column: 27, scope: !1834)
!1893 = !DILocation(line: 174, column: 38, scope: !1834)
!1894 = !DILocation(line: 175, column: 13, scope: !1834)
!1895 = !DILocation(line: 175, column: 24, scope: !1834)
!1896 = !DILocation(line: 171, column: 3, scope: !1834)
!1897 = !DILocation(line: 176, column: 1, scope: !1834)
!1898 = distinct !DISubprogram(name: "searchoutput", scope: !141, file: !141, line: 294, type: !1899, isLocal: true, isDefinition: true, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !177)
!1899 = !DISubroutineType(types: !1900)
!1900 = !{!154, !243}
!1901 = !DILocalVariable(name: "namenode", arg: 1, scope: !1898, file: !141, line: 294, type: !243)
!1902 = !DILocation(line: 294, column: 36, scope: !1898)
!1903 = !DILocalVariable(name: "iter", scope: !1898, file: !141, line: 296, type: !1904)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64, align: 64)
!1905 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_node_pkgs_iter", file: !87, line: 160, flags: DIFlagFwdDecl)
!1906 = !DILocation(line: 296, column: 31, scope: !1898)
!1907 = !DILocalVariable(name: "pkg_owner", scope: !1898, file: !141, line: 297, type: !255)
!1908 = !DILocation(line: 297, column: 19, scope: !1898)
!1909 = !DILocalVariable(name: "found", scope: !1898, file: !141, line: 298, type: !154)
!1910 = !DILocation(line: 298, column: 7, scope: !1898)
!1911 = !DILocation(line: 300, column: 7, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1898, file: !141, line: 300, column: 7)
!1913 = !DILocation(line: 300, column: 17, scope: !1912)
!1914 = !DILocation(line: 300, column: 7, scope: !1898)
!1915 = !DILocalVariable(name: "name_from", scope: !1916, file: !141, line: 301, type: !142)
!1916 = distinct !DILexicalBlock(scope: !1912, file: !141, line: 300, column: 25)
!1917 = !DILocation(line: 301, column: 17, scope: !1916)
!1918 = !DILocation(line: 301, column: 29, scope: !1916)
!1919 = !DILocation(line: 301, column: 39, scope: !1916)
!1920 = !DILocation(line: 301, column: 47, scope: !1916)
!1921 = !DILocation(line: 302, column: 29, scope: !1916)
!1922 = !DILocation(line: 302, column: 39, scope: !1916)
!1923 = !DILocation(line: 302, column: 47, scope: !1916)
!1924 = !DILocation(line: 302, column: 57, scope: !1916)
!1925 = !DILocation(line: 301, column: 29, scope: !1926)
!1926 = !DILexicalBlockFile(scope: !1916, file: !141, discriminator: 1)
!1927 = !DILocation(line: 302, column: 64, scope: !1926)
!1928 = !DILocation(line: 302, column: 74, scope: !1926)
!1929 = !DILocation(line: 301, column: 29, scope: !1930)
!1930 = !DILexicalBlockFile(scope: !1916, file: !141, discriminator: 2)
!1931 = !DILocation(line: 301, column: 29, scope: !1932)
!1932 = !DILexicalBlockFile(scope: !1916, file: !141, discriminator: 3)
!1933 = !DILocation(line: 301, column: 17, scope: !1932)
!1934 = !DILocalVariable(name: "name_to", scope: !1916, file: !141, line: 303, type: !142)
!1935 = !DILocation(line: 303, column: 17, scope: !1916)
!1936 = !DILocation(line: 303, column: 27, scope: !1916)
!1937 = !DILocation(line: 303, column: 37, scope: !1916)
!1938 = !DILocation(line: 303, column: 45, scope: !1916)
!1939 = !DILocation(line: 304, column: 27, scope: !1916)
!1940 = !DILocation(line: 304, column: 37, scope: !1916)
!1941 = !DILocation(line: 304, column: 45, scope: !1916)
!1942 = !DILocation(line: 304, column: 57, scope: !1916)
!1943 = !DILocation(line: 303, column: 27, scope: !1926)
!1944 = !DILocation(line: 304, column: 64, scope: !1926)
!1945 = !DILocation(line: 304, column: 74, scope: !1926)
!1946 = !DILocation(line: 303, column: 27, scope: !1930)
!1947 = !DILocation(line: 303, column: 27, scope: !1932)
!1948 = !DILocation(line: 303, column: 17, scope: !1932)
!1949 = !DILocation(line: 306, column: 9, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1916, file: !141, line: 306, column: 9)
!1951 = !DILocation(line: 306, column: 19, scope: !1950)
!1952 = !DILocation(line: 306, column: 27, scope: !1950)
!1953 = !DILocation(line: 306, column: 9, scope: !1916)
!1954 = !DILocation(line: 307, column: 14, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1950, file: !141, line: 306, column: 35)
!1956 = !DILocation(line: 308, column: 14, scope: !1955)
!1957 = !DILocation(line: 308, column: 24, scope: !1955)
!1958 = !DILocation(line: 308, column: 32, scope: !1955)
!1959 = !DILocation(line: 308, column: 40, scope: !1955)
!1960 = !DILocation(line: 308, column: 46, scope: !1955)
!1961 = !DILocation(line: 307, column: 7, scope: !1962)
!1962 = !DILexicalBlockFile(scope: !1955, file: !141, discriminator: 1)
!1963 = !DILocation(line: 309, column: 14, scope: !1955)
!1964 = !DILocation(line: 310, column: 14, scope: !1955)
!1965 = !DILocation(line: 310, column: 24, scope: !1955)
!1966 = !DILocation(line: 310, column: 32, scope: !1955)
!1967 = !DILocation(line: 310, column: 40, scope: !1955)
!1968 = !DILocation(line: 310, column: 46, scope: !1955)
!1969 = !DILocation(line: 309, column: 7, scope: !1962)
!1970 = !DILocation(line: 311, column: 5, scope: !1955)
!1971 = !DILocation(line: 312, column: 14, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1950, file: !141, line: 311, column: 12)
!1973 = !DILocation(line: 312, column: 53, scope: !1972)
!1974 = !DILocation(line: 312, column: 7, scope: !1975)
!1975 = !DILexicalBlockFile(scope: !1972, file: !141, discriminator: 1)
!1976 = !DILocation(line: 313, column: 14, scope: !1972)
!1977 = !DILocation(line: 313, column: 51, scope: !1972)
!1978 = !DILocation(line: 313, column: 7, scope: !1975)
!1979 = !DILocation(line: 315, column: 3, scope: !1916)
!1980 = !DILocation(line: 316, column: 8, scope: !1898)
!1981 = !DILocation(line: 318, column: 34, scope: !1898)
!1982 = !DILocation(line: 318, column: 10, scope: !1898)
!1983 = !DILocation(line: 318, column: 8, scope: !1898)
!1984 = !DILocation(line: 319, column: 3, scope: !1898)
!1985 = !DILocation(line: 319, column: 48, scope: !1986)
!1986 = !DILexicalBlockFile(scope: !1898, file: !141, discriminator: 1)
!1987 = !DILocation(line: 319, column: 23, scope: !1986)
!1988 = !DILocation(line: 319, column: 21, scope: !1986)
!1989 = !DILocation(line: 319, column: 3, scope: !1986)
!1990 = !DILocation(line: 320, column: 9, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1992, file: !141, line: 320, column: 9)
!1992 = distinct !DILexicalBlock(scope: !1898, file: !141, line: 319, column: 56)
!1993 = !DILocation(line: 320, column: 9, scope: !1992)
!1994 = !DILocation(line: 321, column: 18, scope: !1991)
!1995 = !DILocation(line: 321, column: 7, scope: !1991)
!1996 = !DILocation(line: 322, column: 20, scope: !1992)
!1997 = !DILocation(line: 322, column: 11, scope: !1992)
!1998 = !DILocation(line: 322, column: 46, scope: !1992)
!1999 = !DILocation(line: 322, column: 5, scope: !2000)
!2000 = !DILexicalBlockFile(scope: !1992, file: !141, discriminator: 1)
!2001 = !DILocation(line: 323, column: 10, scope: !1992)
!2002 = !DILocation(line: 319, column: 3, scope: !2003)
!2003 = !DILexicalBlockFile(scope: !1898, file: !141, discriminator: 2)
!2004 = distinct !{!2004, !1984}
!2005 = !DILocation(line: 325, column: 28, scope: !1898)
!2006 = !DILocation(line: 325, column: 3, scope: !1898)
!2007 = !DILocation(line: 327, column: 7, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !1898, file: !141, line: 327, column: 7)
!2009 = !DILocation(line: 327, column: 7, scope: !1898)
!2010 = !DILocation(line: 327, column: 30, scope: !2011)
!2011 = !DILexicalBlockFile(scope: !2008, file: !141, discriminator: 1)
!2012 = !DILocation(line: 327, column: 40, scope: !2011)
!2013 = !DILocation(line: 327, column: 14, scope: !2011)
!2014 = !DILocation(line: 328, column: 10, scope: !1898)
!2015 = !DILocation(line: 328, column: 19, scope: !1898)
!2016 = !DILocation(line: 328, column: 29, scope: !1898)
!2017 = !DILocation(line: 328, column: 16, scope: !1898)
!2018 = !DILocation(line: 328, column: 3, scope: !1898)
!2019 = distinct !DISubprogram(name: "pkg_array_show_item", scope: !141, file: !141, line: 544, type: !1355, isLocal: true, isDefinition: true, scopeLine: 545, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !177)
!2020 = !DILocalVariable(name: "array", arg: 1, scope: !2019, file: !141, line: 544, type: !1357)
!2021 = !DILocation(line: 544, column: 39, scope: !2019)
!2022 = !DILocalVariable(name: "pkg", arg: 2, scope: !2019, file: !141, line: 544, type: !255)
!2023 = !DILocation(line: 544, column: 62, scope: !2019)
!2024 = !DILocalVariable(name: "pkg_data", arg: 3, scope: !2019, file: !141, line: 544, type: !138)
!2025 = !DILocation(line: 544, column: 73, scope: !2019)
!2026 = !DILocalVariable(name: "fmt", scope: !2019, file: !141, line: 546, type: !1013)
!2027 = !DILocation(line: 546, column: 27, scope: !2019)
!2028 = !DILocation(line: 546, column: 33, scope: !2019)
!2029 = !DILocation(line: 548, column: 19, scope: !2019)
!2030 = !DILocation(line: 548, column: 24, scope: !2019)
!2031 = !DILocation(line: 548, column: 30, scope: !2019)
!2032 = !DILocation(line: 548, column: 35, scope: !2019)
!2033 = !DILocation(line: 548, column: 3, scope: !2019)
!2034 = !DILocation(line: 549, column: 1, scope: !2019)
!2035 = distinct !DISubprogram(name: "pkg_infodb_check_filetype", scope: !141, file: !141, line: 613, type: !2036, isLocal: true, isDefinition: true, scopeLine: 614, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !177)
!2036 = !DISubroutineType(types: !2037)
!2037 = !{null, !142}
!2038 = !DILocalVariable(name: "filetype", arg: 1, scope: !2035, file: !141, line: 613, type: !142)
!2039 = !DILocation(line: 613, column: 39, scope: !2035)
!2040 = !DILocalVariable(name: "c", scope: !2035, file: !141, line: 615, type: !142)
!2041 = !DILocation(line: 615, column: 15, scope: !2035)
!2042 = !DILocation(line: 618, column: 10, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2035, file: !141, line: 618, column: 3)
!2044 = !DILocation(line: 618, column: 8, scope: !2043)
!2045 = !DILocation(line: 618, column: 19, scope: !2046)
!2046 = !DILexicalBlockFile(scope: !2047, file: !141, discriminator: 1)
!2047 = distinct !DILexicalBlock(scope: !2043, file: !141, line: 618, column: 3)
!2048 = !DILocation(line: 618, column: 18, scope: !2046)
!2049 = !DILocation(line: 618, column: 3, scope: !2046)
!2050 = !DILocation(line: 619, column: 16, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2047, file: !141, line: 619, column: 9)
!2052 = !DILocation(line: 619, column: 27, scope: !2051)
!2053 = !DILocation(line: 619, column: 26, scope: !2051)
!2054 = !DILocation(line: 619, column: 9, scope: !2051)
!2055 = !DILocation(line: 619, column: 9, scope: !2047)
!2056 = !DILocation(line: 620, column: 16, scope: !2051)
!2057 = !DILocation(line: 620, column: 54, scope: !2051)
!2058 = !DILocation(line: 620, column: 53, scope: !2051)
!2059 = !DILocation(line: 620, column: 7, scope: !2060)
!2060 = !DILexicalBlockFile(scope: !2051, file: !141, discriminator: 1)
!2061 = !DILocation(line: 620, column: 7, scope: !2051)
!2062 = !DILocation(line: 619, column: 28, scope: !2060)
!2063 = !DILocation(line: 618, column: 23, scope: !2064)
!2064 = !DILexicalBlockFile(scope: !2047, file: !141, discriminator: 2)
!2065 = !DILocation(line: 618, column: 3, scope: !2064)
!2066 = distinct !{!2066, !2067}
!2067 = !DILocation(line: 618, column: 3, scope: !2035)
!2068 = !DILocation(line: 621, column: 1, scope: !2035)
!2069 = distinct !DISubprogram(name: "control_path_file", scope: !141, file: !141, line: 642, type: !2070, isLocal: true, isDefinition: true, scopeLine: 643, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !177)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{null, !255, !142}
!2072 = !DILocalVariable(name: "pkg", arg: 1, scope: !2069, file: !141, line: 642, type: !255)
!2073 = !DILocation(line: 642, column: 35, scope: !2069)
!2074 = !DILocalVariable(name: "control_file", arg: 2, scope: !2069, file: !141, line: 642, type: !142)
!2075 = !DILocation(line: 642, column: 52, scope: !2069)
!2076 = !DILocalVariable(name: "control_pathname", scope: !2069, file: !141, line: 644, type: !142)
!2077 = !DILocation(line: 644, column: 15, scope: !2069)
!2078 = !DILocalVariable(name: "st", scope: !2069, file: !141, line: 645, type: !2079)
!2079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2080, line: 46, size: 1152, align: 64, elements: !2081)
!2080 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-query")
!2081 = !{!2082, !2083, !2084, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2094, !2096, !2104, !2105, !2106}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2079, file: !2080, line: 48, baseType: !432, size: 64, align: 64)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2079, file: !2080, line: 53, baseType: !435, size: 64, align: 64, offset: 64)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2079, file: !2080, line: 61, baseType: !2085, size: 64, align: 64, offset: 128)
!2085 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !392, line: 130, baseType: !184)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2079, file: !2080, line: 62, baseType: !417, size: 32, align: 32, offset: 192)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2079, file: !2080, line: 64, baseType: !411, size: 32, align: 32, offset: 224)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2079, file: !2080, line: 65, baseType: !414, size: 32, align: 32, offset: 256)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2079, file: !2080, line: 67, baseType: !154, size: 32, align: 32, offset: 288)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2079, file: !2080, line: 69, baseType: !432, size: 64, align: 64, offset: 320)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2079, file: !2080, line: 74, baseType: !391, size: 64, align: 64, offset: 384)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2079, file: !2080, line: 78, baseType: !2093, size: 64, align: 64, offset: 448)
!2093 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !392, line: 153, baseType: !393)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2079, file: !2080, line: 80, baseType: !2095, size: 64, align: 64, offset: 512)
!2095 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !392, line: 158, baseType: !393)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2079, file: !2080, line: 91, baseType: !2097, size: 128, align: 64, offset: 576)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2098, line: 120, size: 128, align: 64, elements: !2099)
!2098 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-query")
!2099 = !{!2100, !2102}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2097, file: !2098, line: 122, baseType: !2101, size: 64, align: 64)
!2101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !392, line: 139, baseType: !393)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2097, file: !2098, line: 123, baseType: !2103, size: 64, align: 64, offset: 64)
!2103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !392, line: 175, baseType: !393)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2079, file: !2080, line: 92, baseType: !2097, size: 128, align: 64, offset: 704)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2079, file: !2080, line: 93, baseType: !2097, size: 128, align: 64, offset: 832)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2079, file: !2080, line: 106, baseType: !2107, size: 192, align: 64, offset: 960)
!2107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2103, size: 192, align: 64, elements: !2108)
!2108 = !{!2109}
!2109 = !DISubrange(count: 3)
!2110 = !DILocation(line: 645, column: 15, scope: !2069)
!2111 = !DILocation(line: 647, column: 42, scope: !2069)
!2112 = !DILocation(line: 647, column: 48, scope: !2069)
!2113 = !DILocation(line: 647, column: 53, scope: !2069)
!2114 = !DILocation(line: 647, column: 64, scope: !2069)
!2115 = !DILocation(line: 647, column: 22, scope: !2069)
!2116 = !DILocation(line: 647, column: 20, scope: !2069)
!2117 = !DILocation(line: 648, column: 12, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2069, file: !141, line: 648, column: 7)
!2119 = !DILocation(line: 648, column: 7, scope: !2118)
!2120 = !DILocation(line: 648, column: 35, scope: !2118)
!2121 = !DILocation(line: 648, column: 7, scope: !2069)
!2122 = !DILocation(line: 649, column: 5, scope: !2118)
!2123 = !DILocation(line: 650, column: 10, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2069, file: !141, line: 650, column: 7)
!2125 = !DILocation(line: 650, column: 21, scope: !2124)
!2126 = !DILocation(line: 650, column: 7, scope: !2069)
!2127 = !DILocation(line: 651, column: 5, scope: !2124)
!2128 = !DILocation(line: 653, column: 29, scope: !2069)
!2129 = !DILocation(line: 653, column: 47, scope: !2069)
!2130 = !DILocation(line: 653, column: 3, scope: !2069)
!2131 = !DILocation(line: 654, column: 1, scope: !2069)
!2132 = !DILocation(line: 654, column: 1, scope: !2133)
!2133 = !DILexicalBlockFile(scope: !2069, file: !141, discriminator: 1)
!2134 = distinct !DISubprogram(name: "pkg_infodb_print_filename", scope: !141, file: !141, line: 624, type: !2135, isLocal: true, isDefinition: true, scopeLine: 625, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !177)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{null, !142, !142}
!2137 = !DILocalVariable(name: "filename", arg: 1, scope: !2134, file: !141, line: 624, type: !142)
!2138 = !DILocation(line: 624, column: 39, scope: !2134)
!2139 = !DILocalVariable(name: "filetype", arg: 2, scope: !2134, file: !141, line: 624, type: !142)
!2140 = !DILocation(line: 624, column: 61, scope: !2134)
!2141 = !DILocation(line: 626, column: 30, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2134, file: !141, line: 626, column: 7)
!2143 = !DILocation(line: 626, column: 7, scope: !2142)
!2144 = !DILocation(line: 626, column: 7, scope: !2134)
!2145 = !DILocation(line: 627, column: 5, scope: !2142)
!2146 = !DILocation(line: 629, column: 18, scope: !2134)
!2147 = !DILocation(line: 629, column: 3, scope: !2134)
!2148 = !DILocation(line: 630, column: 1, scope: !2134)
!2149 = !DILocation(line: 630, column: 1, scope: !2150)
!2150 = !DILexicalBlockFile(scope: !2134, file: !141, discriminator: 1)
!2151 = distinct !DISubprogram(name: "pkg_infodb_is_internal", scope: !141, file: !141, line: 599, type: !1341, isLocal: true, isDefinition: true, scopeLine: 600, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !177)
!2152 = !DILocalVariable(name: "filetype", arg: 1, scope: !2151, file: !141, line: 599, type: !142)
!2153 = !DILocation(line: 599, column: 36, scope: !2151)
!2154 = !DILocation(line: 602, column: 14, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2151, file: !141, line: 602, column: 7)
!2156 = !DILocation(line: 602, column: 7, scope: !2155)
!2157 = !DILocation(line: 602, column: 32, scope: !2155)
!2158 = !DILocation(line: 602, column: 37, scope: !2155)
!2159 = !DILocation(line: 603, column: 14, scope: !2155)
!2160 = !DILocation(line: 603, column: 7, scope: !2155)
!2161 = !DILocation(line: 603, column: 37, scope: !2155)
!2162 = !DILocation(line: 602, column: 7, scope: !2163)
!2163 = !DILexicalBlockFile(scope: !2151, file: !141, discriminator: 1)
!2164 = !DILocation(line: 604, column: 5, scope: !2155)
!2165 = !DILocation(line: 606, column: 14, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2151, file: !141, line: 606, column: 7)
!2167 = !DILocation(line: 606, column: 7, scope: !2166)
!2168 = !DILocation(line: 606, column: 24, scope: !2166)
!2169 = !DILocation(line: 606, column: 7, scope: !2151)
!2170 = !DILocation(line: 607, column: 5, scope: !2166)
!2171 = !DILocation(line: 609, column: 3, scope: !2151)
!2172 = !DILocation(line: 610, column: 1, scope: !2151)
!2173 = distinct !DISubprogram(name: "pkg_infodb_print_filetype", scope: !141, file: !141, line: 633, type: !2135, isLocal: true, isDefinition: true, scopeLine: 634, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !177)
!2174 = !DILocalVariable(name: "filename", arg: 1, scope: !2173, file: !141, line: 633, type: !142)
!2175 = !DILocation(line: 633, column: 39, scope: !2173)
!2176 = !DILocalVariable(name: "filetype", arg: 2, scope: !2173, file: !141, line: 633, type: !142)
!2177 = !DILocation(line: 633, column: 61, scope: !2173)
!2178 = !DILocation(line: 635, column: 30, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2173, file: !141, line: 635, column: 7)
!2180 = !DILocation(line: 635, column: 7, scope: !2179)
!2181 = !DILocation(line: 635, column: 7, scope: !2173)
!2182 = !DILocation(line: 636, column: 5, scope: !2179)
!2183 = !DILocation(line: 638, column: 18, scope: !2173)
!2184 = !DILocation(line: 638, column: 3, scope: !2173)
!2185 = !DILocation(line: 639, column: 1, scope: !2173)
!2186 = !DILocation(line: 639, column: 1, scope: !2187)
!2187 = !DILexicalBlockFile(scope: !2173, file: !141, discriminator: 1)
