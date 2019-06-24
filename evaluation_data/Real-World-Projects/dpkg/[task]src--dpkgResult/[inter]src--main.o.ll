; ModuleID = './[inter]src--main.o.i'
source_filename = "./[inter]src--main.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct.invoke_list = type { %struct.invoke_hook*, %struct.invoke_hook** }
%struct.invoke_hook = type { %struct.invoke_hook*, i8* }
%struct.cmdinfo = type { i8*, i8, i32, i32*, i8**, void (%struct.cmdinfo*, i8*)*, i32, i8*, i32 (i8**)* }
%struct.debuginfo = type { i32, i8*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.command = type { i8*, i8*, i32, i32, i8** }
%struct.varbuf = type { i64, i64, i8* }
%struct.pkg_hash_iter = type opaque

@f_pending = global i32 0, align 4
@f_recursive = global i32 0, align 4
@f_alsoselect = global i32 1, align 4
@f_skipsame = global i32 0, align 4
@f_noact = global i32 0, align 4
@f_autodeconf = global i32 0, align 4
@f_nodebsig = global i32 0, align 4
@f_triggers = global i32 0, align 4
@errabort = global i32 50, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@instdir = global i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), align 8
@ignoredependss = global %struct.pkg_list* null, align 8
@pre_invoke_hooks = global %struct.invoke_list { %struct.invoke_hook* null, %struct.invoke_hook** getelementptr inbounds (%struct.invoke_list, %struct.invoke_list* @pre_invoke_hooks, i32 0, i32 0) }, align 8
@post_invoke_hooks = global %struct.invoke_list { %struct.invoke_hook* null, %struct.invoke_hook** getelementptr inbounds (%struct.invoke_list, %struct.invoke_list* @post_invoke_hooks, i32 0, i32 0) }, align 8
@status_loggers = global %struct.invoke_list { %struct.invoke_hook* null, %struct.invoke_hook** getelementptr inbounds (%struct.invoke_list, %struct.invoke_list* @status_loggers, i32 0, i32 0) }, align 8
@cipaction = external global %struct.cmdinfo*, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"--%s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"--%s takes exactly one argument\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"couldn't open '%i' for stream\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"unexpected end of file before end of line %d\00", align 1
@cmdinfos = internal constant [81 x %struct.cmdinfo] [%struct.cmdinfo { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i8 105, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 3, i8* null, i32 (i8**)* @archivefiles }, %struct.cmdinfo { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i8 0, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 1, i8* null, i32 (i8**)* @archivefiles }, %struct.cmdinfo { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i8 65, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 37, i8* null, i32 (i8**)* @archivefiles }, %struct.cmdinfo { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8 0, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 2, i8* null, i32 (i8**)* @packages }, %struct.cmdinfo { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i8 114, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 5, i8* null, i32 (i8**)* @packages }, %struct.cmdinfo { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8 80, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 6, i8* null, i32 (i8**)* @packages }, %struct.cmdinfo { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), i8 0, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 4, i8* null, i32 (i8**)* @packages }, %struct.cmdinfo { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), i8 86, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 7, i8* null, i32 (i8**)* @verify }, %struct.cmdinfo { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8 76, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), i32 (i8**)* @execbackend }, %struct.cmdinfo { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), i8 115, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), i32 (i8**)* @execbackend }, %struct.cmdinfo { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0), i8 0, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 34, i8* null, i32 (i8**)* @getselections }, %struct.cmdinfo { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0), i8 0, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 35, i8* null, i32 (i8**)* @setselections }, %struct.cmdinfo { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i32 0, i32 0), i8 0, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 36, i8* null, i32 (i8**)* @clearselections }, %struct.cmdinfo { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0), i8 112, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), i32 (i8**)* @execbackend }, %struct.cmdinfo { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0), i8 0, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 40, i8* null, i32 (i8**)* @updateavailable }, %struct.cmdinfo { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0), i8 0, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 41, i8* null, i32 (i8**)* @updateavailable }, %struct.cmdinfo { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i32 0, i32 0), i8 0, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 39, i8* null, i32 (i8**)* @updateavailable }, %struct.cmdinfo { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i32 0, i32 0), i8 0, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 42, i8* null, i32 (i8**)* @forgetold }, %struct.cmdinfo { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i8 67, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 31, i8* null, i32 (i8**)* @audit }, %struct.cmdinfo { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i32 0, i32 0), i8 0, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 32, i8* null, i32 (i8**)* @unpackchk }, %struct.cmdinfo { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i8 108, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), i32 (i8**)* @execbackend }, %struct.cmdinfo { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i8 83, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), i32 (i8**)* @execbackend }, %struct.cmdinfo { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.37, i32 0, i32 0), i8 0, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 21, i8* null, i32 (i8**)* @assertpredep }, %struct.cmdinfo { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.38, i32 0, i32 0), i8 0, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 22, i8* null, i32 (i8**)* @assertepoch }, %struct.cmdinfo { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.39, i32 0, i32 0), i8 0, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 23, i8* null, i32 (i8**)* @assertlongfilenames }, %struct.cmdinfo { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.40, i32 0, i32 0), i8 0, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 24, i8* null, i32 (i8**)* @assertmulticonrep }, %struct.cmdinfo { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.41, i32 0, i32 0), i8 0, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 25, i8* null, i32 (i8**)* @assertmultiarch }, %struct.cmdinfo { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.42, i32 0, i32 0), i8 0, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 26, i8* null, i32 (i8**)* @assertverprovides }, %struct.cmdinfo { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i32 0, i32 0), i8 0, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 17, i8* null, i32 (i8**)* @arch_add }, %struct.cmdinfo { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.44, i32 0, i32 0), i8 0, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 18, i8* null, i32 (i8**)* @arch_remove }, %struct.cmdinfo { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.45, i32 0, i32 0), i8 0, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 19, i8* null, i32 (i8**)* @printarch }, %struct.cmdinfo { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.46, i32 0, i32 0), i8 0, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 20, i8* null, i32 (i8**)* @print_foreign_arches }, %struct.cmdinfo { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0), i8 0, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 33, i8* null, i32 (i8**)* @predeppackage }, %struct.cmdinfo { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.48, i32 0, i32 0), i8 0, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 27, i8* null, i32 (i8**)* @validate_pkgname }, %struct.cmdinfo { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.49, i32 0, i32 0), i8 0, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 28, i8* null, i32 (i8**)* @validate_trigname }, %struct.cmdinfo { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.50, i32 0, i32 0), i8 0, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 29, i8* null, i32 (i8**)* @validate_archname }, %struct.cmdinfo { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.51, i32 0, i32 0), i8 0, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 30, i8* null, i32 (i8**)* @validate_version }, %struct.cmdinfo { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.52, i32 0, i32 0), i8 0, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 16, i8* null, i32 (i8**)* @cmpversions }, %struct.cmdinfo { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.53, i32 0, i32 0), i8 0, i32 1, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @set_invoke_hook, i32 0, i8* bitcast (%struct.invoke_list* @pre_invoke_hooks to i8*), i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i32 0, i32 0), i8 0, i32 1, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @set_invoke_hook, i32 0, i8* bitcast (%struct.invoke_list* @post_invoke_hooks to i8*), i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.55, i32 0, i32 0), i8 0, i32 1, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @set_filter, i32 0, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i32 0, i32 0), i8 0, i32 1, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @set_filter, i32 1, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.57, i32 0, i32 0), i8 0, i32 1, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @set_verify_format, i32 0, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.58, i32 0, i32 0), i8 0, i32 1, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @set_invoke_hook, i32 0, i8* bitcast (%struct.invoke_list* @status_loggers to i8*), i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), i8 0, i32 1, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @set_pipe, i32 0, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i32 0, i32 0), i8 0, i32 1, i32* null, i8** @log_file, void (%struct.cmdinfo*, i8*)* null, i32 0, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i32 0, i32 0), i8 97, i32 0, i32* @f_pending, i8** null, void (%struct.cmdinfo*, i8*)* null, i32 1, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i32 0, i32 0), i8 82, i32 0, i32* @f_recursive, i8** null, void (%struct.cmdinfo*, i8*)* null, i32 1, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i32 0, i32 0), i8 0, i32 0, i32* @f_noact, i8** null, void (%struct.cmdinfo*, i8*)* null, i32 1, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i32 0, i32 0), i8 0, i32 0, i32* @f_noact, i8** null, void (%struct.cmdinfo*, i8*)* null, i32 1, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.65, i32 0, i32 0), i8 0, i32 0, i32* @f_noact, i8** null, void (%struct.cmdinfo*, i8*)* null, i32 1, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.66, i32 0, i32 0), i8 0, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @set_no_pager, i32 0, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i32 0, i32 0), i8 0, i32 0, i32* @f_nodebsig, i8** null, void (%struct.cmdinfo*, i8*)* null, i32 1, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* null, i8 71, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @reset_force_option, i32 16384, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.68, i32 0, i32 0), i8 79, i32 0, i32* @f_alsoselect, i8** null, void (%struct.cmdinfo*, i8*)* null, i32 0, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.69, i32 0, i32 0), i8 0, i32 0, i32* @f_triggers, i8** null, void (%struct.cmdinfo*, i8*)* null, i32 1, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.70, i32 0, i32 0), i8 0, i32 0, i32* @f_triggers, i8** null, void (%struct.cmdinfo*, i8*)* null, i32 -1, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.71, i32 0, i32 0), i8 78, i32 0, i32* @f_alsoselect, i8** null, void (%struct.cmdinfo*, i8*)* null, i32 0, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.72, i32 0, i32 0), i8 69, i32 0, i32* @f_skipsame, i8** null, void (%struct.cmdinfo*, i8*)* null, i32 1, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.73, i32 0, i32 0), i8 66, i32 0, i32* @f_autodeconf, i8** null, void (%struct.cmdinfo*, i8*)* null, i32 1, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i32 0, i32 0), i8 0, i32 1, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @set_root, i32 0, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.75, i32 0, i32 0), i8 0, i32 1, i32* @errabort, i8** null, void (%struct.cmdinfo*, i8*)* @set_integer, i32 0, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.76, i32 0, i32 0), i8 0, i32 1, i32* null, i8** @admindir, void (%struct.cmdinfo*, i8*)* null, i32 0, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.77, i32 0, i32 0), i8 0, i32 1, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @set_instdir, i32 0, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.78, i32 0, i32 0), i8 0, i32 1, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @set_ignore_depends, i32 0, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.79, i32 0, i32 0), i8 0, i32 2, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @set_force_option, i32 1, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.80, i32 0, i32 0), i8 0, i32 2, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @set_force_option, i32 0, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.81, i32 0, i32 0), i8 0, i32 2, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @set_force_option, i32 0, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.82, i32 0, i32 0), i8 68, i32 1, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @set_debug, i32 0, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.83, i32 0, i32 0), i8 63, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @usage, i32 0, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.84, i32 0, i32 0), i8 0, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @printversion, i32 0, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.85, i32 0, i32 0), i8 98, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.86, i32 0, i32 0), i32 (i8**)* @execbackend }, %struct.cmdinfo { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.87, i32 0, i32 0), i8 99, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.86, i32 0, i32 0), i32 (i8**)* @execbackend }, %struct.cmdinfo { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.88, i32 0, i32 0), i8 101, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.86, i32 0, i32 0), i32 (i8**)* @execbackend }, %struct.cmdinfo { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.89, i32 0, i32 0), i8 73, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.86, i32 0, i32 0), i32 (i8**)* @execbackend }, %struct.cmdinfo { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.90, i32 0, i32 0), i8 102, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.86, i32 0, i32 0), i32 (i8**)* @execbackend }, %struct.cmdinfo { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.91, i32 0, i32 0), i8 120, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.86, i32 0, i32 0), i32 (i8**)* @execbackend }, %struct.cmdinfo { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.92, i32 0, i32 0), i8 88, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.86, i32 0, i32 0), i32 (i8**)* @execbackend }, %struct.cmdinfo { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.93, i32 0, i32 0), i8 0, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.86, i32 0, i32 0), i32 (i8**)* @execbackend }, %struct.cmdinfo { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.94, i32 0, i32 0), i8 0, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.86, i32 0, i32 0), i32 (i8**)* @execbackend }, %struct.cmdinfo zeroinitializer], align 16
@printforhelp = internal constant [388 x i8] c"Type dpkg --help for help about installing and deinstalling packages [*];\0AUse 'apt' or 'aptitude' for user-friendly package management;\0AType dpkg -Dhelp for a list of dpkg debug flag values;\0AType dpkg --force-help for a list of forcing options;\0AType dpkg-deb --help for help about manipulating *.deb files;\0A\0AOptions marked [*] produce a lot of output - pipe it through 'less' or 'more' !\00", align 16
@.str.7 = private unnamed_addr constant [22 x i8] c"need an action option\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"dpkg\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"cannot set primary group ID to root\00", align 1
@admindir = internal global i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.103, i32 0, i32 0), align 8
@.str.10 = private unnamed_addr constant [14 x i8] c"DPKG_ADMINDIR\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"unable to setenv for subprocesses\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"DPKG_ROOT\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"DPKG_FORCE\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"install\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"unpack\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"record-avail\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"configure\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"purge\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"triggers-only\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"verify\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"listfiles\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"dpkg-query\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"get-selections\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"set-selections\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"clear-selections\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"print-avail\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"update-avail\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"merge-avail\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"clear-avail\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"forget-old-unavail\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"audit\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"yet-to-unpack\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"search\00", align 1
@.str.37 = private unnamed_addr constant [26 x i8] c"assert-support-predepends\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"assert-working-epoch\00", align 1
@.str.39 = private unnamed_addr constant [22 x i8] c"assert-long-filenames\00", align 1
@.str.40 = private unnamed_addr constant [20 x i8] c"assert-multi-conrep\00", align 1
@.str.41 = private unnamed_addr constant [18 x i8] c"assert-multi-arch\00", align 1
@.str.42 = private unnamed_addr constant [26 x i8] c"assert-versioned-provides\00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c"add-architecture\00", align 1
@.str.44 = private unnamed_addr constant [20 x i8] c"remove-architecture\00", align 1
@.str.45 = private unnamed_addr constant [19 x i8] c"print-architecture\00", align 1
@.str.46 = private unnamed_addr constant [28 x i8] c"print-foreign-architectures\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"predep-package\00", align 1
@.str.48 = private unnamed_addr constant [17 x i8] c"validate-pkgname\00", align 1
@.str.49 = private unnamed_addr constant [18 x i8] c"validate-trigname\00", align 1
@.str.50 = private unnamed_addr constant [18 x i8] c"validate-archname\00", align 1
@.str.51 = private unnamed_addr constant [17 x i8] c"validate-version\00", align 1
@.str.52 = private unnamed_addr constant [17 x i8] c"compare-versions\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"pre-invoke\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"post-invoke\00", align 1
@.str.55 = private unnamed_addr constant [13 x i8] c"path-exclude\00", align 1
@.str.56 = private unnamed_addr constant [13 x i8] c"path-include\00", align 1
@.str.57 = private unnamed_addr constant [14 x i8] c"verify-format\00", align 1
@.str.58 = private unnamed_addr constant [14 x i8] c"status-logger\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"status-fd\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@log_file = external global i8*, align 8
@.str.61 = private unnamed_addr constant [8 x i8] c"pending\00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"recursive\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"no-act\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"dry-run\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"simulate\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"no-pager\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"no-debsig\00", align 1
@.str.68 = private unnamed_addr constant [14 x i8] c"selected-only\00", align 1
@.str.69 = private unnamed_addr constant [9 x i8] c"triggers\00", align 1
@.str.70 = private unnamed_addr constant [12 x i8] c"no-triggers\00", align 1
@.str.71 = private unnamed_addr constant [15 x i8] c"no-also-select\00", align 1
@.str.72 = private unnamed_addr constant [18 x i8] c"skip-same-version\00", align 1
@.str.73 = private unnamed_addr constant [17 x i8] c"auto-deconfigure\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.75 = private unnamed_addr constant [12 x i8] c"abort-after\00", align 1
@.str.76 = private unnamed_addr constant [9 x i8] c"admindir\00", align 1
@.str.77 = private unnamed_addr constant [8 x i8] c"instdir\00", align 1
@.str.78 = private unnamed_addr constant [15 x i8] c"ignore-depends\00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@.str.80 = private unnamed_addr constant [7 x i8] c"refuse\00", align 1
@.str.81 = private unnamed_addr constant [9 x i8] c"no-force\00", align 1
@.str.82 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.84 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"build\00", align 1
@.str.86 = private unnamed_addr constant [9 x i8] c"dpkg-deb\00", align 1
@.str.87 = private unnamed_addr constant [9 x i8] c"contents\00", align 1
@.str.88 = private unnamed_addr constant [8 x i8] c"control\00", align 1
@.str.89 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.90 = private unnamed_addr constant [6 x i8] c"field\00", align 1
@.str.91 = private unnamed_addr constant [8 x i8] c"extract\00", align 1
@.str.92 = private unnamed_addr constant [9 x i8] c"vextract\00", align 1
@.str.93 = private unnamed_addr constant [13 x i8] c"ctrl-tarfile\00", align 1
@.str.94 = private unnamed_addr constant [13 x i8] c"fsys-tarfile\00", align 1
@.str.95 = private unnamed_addr constant [33 x i8] c"architecture '%s' is illegal: %s\00", align 1
@.str.96 = private unnamed_addr constant [50 x i8] c"architecture '%s' is reserved and cannot be added\00", align 1
@.str.97 = private unnamed_addr constant [44 x i8] c"cannot remove non-foreign architecture '%s'\00", align 1
@.str.98 = private unnamed_addr constant [56 x i8] c"removing architecture '%s' currently in use by database\00", align 1
@.str.99 = private unnamed_addr constant [65 x i8] c"cannot remove architecture '%s' currently in use by the database\00", align 1
@.str.100 = private unnamed_addr constant [34 x i8] c"unknown verify output format '%s'\00", align 1
@.str.101 = private unnamed_addr constant [11 x i8] c"DPKG_PAGER\00", align 1
@.str.102 = private unnamed_addr constant [4 x i8] c"cat\00", align 1
@.str.103 = private unnamed_addr constant [24 x i8] c"/usr/local/var/lib/dpkg\00", align 1
@.str.104 = private unnamed_addr constant [56 x i8] c"null package name in --%s comma-separated list '%.250s'\00", align 1
@.str.105 = private unnamed_addr constant [91 x i8] c"%s debugging option, --debug=<octal> or -D<octal>:\0A\0A Number  Ref. in source   Description\0A\00", align 1
@debuginfos = internal constant [14 x %struct.debuginfo] [%struct.debuginfo { i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.111, i32 0, i32 0) }, %struct.debuginfo { i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.113, i32 0, i32 0) }, %struct.debuginfo { i32 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.115, i32 0, i32 0) }, %struct.debuginfo { i32 64, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.117, i32 0, i32 0) }, %struct.debuginfo { i32 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.119, i32 0, i32 0) }, %struct.debuginfo { i32 128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.120, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.121, i32 0, i32 0) }, %struct.debuginfo { i32 32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.123, i32 0, i32 0) }, %struct.debuginfo { i32 256, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.125, i32 0, i32 0) }, %struct.debuginfo { i32 4096, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.126, i32 0, i32 0) }, %struct.debuginfo { i32 8192, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.128, i32 0, i32 0) }, %struct.debuginfo { i32 16384, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.130, i32 0, i32 0) }, %struct.debuginfo { i32 512, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.132, i32 0, i32 0) }, %struct.debuginfo { i32 1024, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.134, i32 0, i32 0) }, %struct.debuginfo zeroinitializer], align 16
@.str.106 = private unnamed_addr constant [16 x i8] c" %6o  %-16s %s\0A\00", align 1
@.str.107 = private unnamed_addr constant [108 x i8] c"\0ADebugging options can be mixed using bitwise-or.\0ANote that the meanings and values are subject to change.\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.108 = private unnamed_addr constant [18 x i8] c"<standard output>\00", align 1
@.str.109 = private unnamed_addr constant [40 x i8] c"--%s requires a positive octal argument\00", align 1
@.str.110 = private unnamed_addr constant [8 x i8] c"general\00", align 1
@.str.111 = private unnamed_addr constant [39 x i8] c"Generally helpful progress information\00", align 1
@.str.112 = private unnamed_addr constant [8 x i8] c"scripts\00", align 1
@.str.113 = private unnamed_addr constant [44 x i8] c"Invocation and status of maintainer scripts\00", align 1
@.str.114 = private unnamed_addr constant [9 x i8] c"eachfile\00", align 1
@.str.115 = private unnamed_addr constant [31 x i8] c"Output for each file processed\00", align 1
@.str.116 = private unnamed_addr constant [15 x i8] c"eachfiledetail\00", align 1
@.str.117 = private unnamed_addr constant [39 x i8] c"Lots of output for each file processed\00", align 1
@.str.118 = private unnamed_addr constant [6 x i8] c"conff\00", align 1
@.str.119 = private unnamed_addr constant [35 x i8] c"Output for each configuration file\00", align 1
@.str.120 = private unnamed_addr constant [12 x i8] c"conffdetail\00", align 1
@.str.121 = private unnamed_addr constant [43 x i8] c"Lots of output for each configuration file\00", align 1
@.str.122 = private unnamed_addr constant [7 x i8] c"depcon\00", align 1
@.str.123 = private unnamed_addr constant [27 x i8] c"Dependencies and conflicts\00", align 1
@.str.124 = private unnamed_addr constant [13 x i8] c"depcondetail\00", align 1
@.str.125 = private unnamed_addr constant [38 x i8] c"Lots of dependencies/conflicts output\00", align 1
@.str.126 = private unnamed_addr constant [34 x i8] c"Trigger activation and processing\00", align 1
@.str.127 = private unnamed_addr constant [15 x i8] c"triggersdetail\00", align 1
@.str.128 = private unnamed_addr constant [34 x i8] c"Lots of output regarding triggers\00", align 1
@.str.129 = private unnamed_addr constant [15 x i8] c"triggersstupid\00", align 1
@.str.130 = private unnamed_addr constant [43 x i8] c"Silly amounts of output regarding triggers\00", align 1
@.str.131 = private unnamed_addr constant [12 x i8] c"veryverbose\00", align 1
@.str.132 = private unnamed_addr constant [48 x i8] c"Lots of drivel about eg the dpkg/info directory\00", align 1
@.str.133 = private unnamed_addr constant [16 x i8] c"stupidlyverbose\00", align 1
@.str.134 = private unnamed_addr constant [25 x i8] c"Insane amounts of drivel\00", align 1
@.str.135 = private unnamed_addr constant [37 x i8] c"Usage: %s [<option> ...] <command>\0A\0A\00", align 1
@.str.136 = private unnamed_addr constant [2141 x i8] c"Commands:\0A  -i|--install       <.deb file name>... | -R|--recursive <directory>...\0A  --unpack           <.deb file name>... | -R|--recursive <directory>...\0A  -A|--record-avail  <.deb file name>... | -R|--recursive <directory>...\0A  --configure        <package>... | -a|--pending\0A  --triggers-only    <package>... | -a|--pending\0A  -r|--remove        <package>... | -a|--pending\0A  -P|--purge         <package>... | -a|--pending\0A  -V|--verify [<package>...]       Verify the integrity of package(s).\0A  --get-selections [<pattern>...]  Get list of selections to stdout.\0A  --set-selections                 Set package selections from stdin.\0A  --clear-selections               Deselect every non-essential package.\0A  --update-avail [<Packages-file>] Replace available packages info.\0A  --merge-avail [<Packages-file>]  Merge with info from file.\0A  --clear-avail                    Erase existing available info.\0A  --forget-old-unavail             Forget uninstalled unavailable pkgs.\0A  -s|--status [<package>...]       Display package status details.\0A  -p|--print-avail [<package>...]  Display available version details.\0A  -L|--listfiles <package>...      List files 'owned' by package(s).\0A  -l|--list [<pattern>...]         List packages concisely.\0A  -S|--search <pattern>...         Find package(s) owning file(s).\0A  -C|--audit [<package>...]        Check for broken package(s).\0A  --yet-to-unpack                  Print packages selected for installation.\0A  --predep-package                 Print pre-dependencies to unpack.\0A  --add-architecture <arch>        Add <arch> to the list of architectures.\0A  --remove-architecture <arch>     Remove <arch> from the list of architectures.\0A  --print-architecture             Print dpkg architecture.\0A  --print-foreign-architectures    Print allowed foreign architectures.\0A  --assert-<feature>               Assert support for the specified feature.\0A  --validate-<thing> <string>      Validate a <thing>'s <string>.\0A  --compare-versions <a> <op> <b>  Compare version numbers - see below.\0A  --force-help                     Show help on forcing.\0A  -Dh|--debug=help                 Show help on debugging.\0A\0A\00", align 1
@.str.137 = private unnamed_addr constant [114 x i8] c"  -?, --help                       Show this help message.\0A      --version                    Show the version.\0A\0A\00", align 1
@.str.138 = private unnamed_addr constant [122 x i8] c"Assertable features: support-predepends, working-epoch, long-filenames,\0A  multi-conrep, multi-arch, versioned-provides.\0A\0A\00", align 1
@.str.139 = private unnamed_addr constant [60 x i8] c"Validatable things: pkgname, archname, trigname, version.\0A\0A\00", align 1
@.str.140 = private unnamed_addr constant [179 x i8] c"Use dpkg with -b, --build, -c, --contents, -e, --control, -I, --info,\0A  -f, --field, -x, --extract, -X, --vextract, --ctrl-tarfile, --fsys-tarfile\0Aon archives (type %s --help).\0A\0A\00", align 1
@.str.141 = private unnamed_addr constant [1645 x i8] c"Options:\0A  --admindir=<directory>     Use <directory> instead of %s.\0A  --root=<directory>         Install on a different root directory.\0A  --instdir=<directory>      Change installation dir without changing admin dir.\0A  --path-exclude=<pattern>   Do not install paths which match a shell pattern.\0A  --path-include=<pattern>   Re-include a pattern after a previous exclusion.\0A  -O|--selected-only         Skip packages not selected for install/upgrade.\0A  -E|--skip-same-version     Skip packages whose same version is installed.\0A  -G|--refuse-downgrade      Skip packages with earlier version than installed.\0A  -B|--auto-deconfigure      Install even if it would break some other package.\0A  --[no-]triggers            Skip or force consequential trigger processing.\0A  --verify-format=<format>   Verify output format (supported: 'rpm').\0A  --no-debsig                Do not try to verify package signatures.\0A  --no-act|--dry-run|--simulate\0A                             Just say what we would do - don't do it.\0A  -D|--debug=<octal>         Enable debugging (see -Dhelp or --debug=help).\0A  --status-fd <n>            Send status change updates to file descriptor <n>.\0A  --status-logger=<command>  Send status change updates to <command>'s stdin.\0A  --log=<filename>           Log status changes and actions to <filename>.\0A  --ignore-depends=<package>,...\0A                             Ignore dependencies involving <package>.\0A  --force-...                Override problems (see --force-help).\0A  --no-force-...|--refuse-...\0A                             Stop when problems encountered.\0A  --abort-after <n>          Abort after encountering <n> errors.\0A\0A\00", align 1
@.str.142 = private unnamed_addr constant [280 x i8] c"Comparison operators for --compare-versions are:\0A  lt le eq ne ge gt       (treat empty version as earlier than any version);\0A  lt-nl le-nl ge-nl gt-nl (treat empty version as later than any version);\0A  < << <= = >= >> >       (only for compatibility with control file syntax).\0A\0A\00", align 1
@.str.143 = private unnamed_addr constant [63 x i8] c"Use 'apt' or 'aptitude' for user-friendly package management.\0A\00", align 1
@.str.144 = private unnamed_addr constant [52 x i8] c"Debian '%s' package management program version %s.\0A\00", align 1
@.str.145 = private unnamed_addr constant [25 x i8] c"1.19.5-19-g1da50 (amd64)\00", align 1
@.str.146 = private unnamed_addr constant [124 x i8] c"This is free software; see the GNU General Public License version 2 or\0Alater for copying conditions. There is NO warranty.\0A\00", align 1
@.str.147 = private unnamed_addr constant [17 x i8] c"DPKG_HOOK_ACTION\00", align 1
@.str.148 = private unnamed_addr constant [40 x i8] c"error executing hook '%s', exit code %d\00", align 1
@.str.149 = private unnamed_addr constant [14 x i8] c"status logger\00", align 1

; Function Attrs: noreturn nounwind uwtable
define i32 @execbackend(i8**) #0 !dbg !482 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca %struct.command, align 8
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !484, metadata !485), !dbg !486
  call void @llvm.dbg.declare(metadata %struct.command* %4, metadata !487, metadata !485), !dbg !496
  %5 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !497
  %6 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %5, i32 0, i32 7, !dbg !498
  %7 = load i8*, i8** %6, align 8, !dbg !498
  call void @command_init(%struct.command* %4, i8* %7, i8* null), !dbg !499
  %8 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !500
  %9 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %8, i32 0, i32 7, !dbg !501
  %10 = load i8*, i8** %9, align 8, !dbg !501
  call void @command_add_arg(%struct.command* %4, i8* %10), !dbg !502
  %11 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !503
  %12 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %11, i32 0, i32 0, !dbg !504
  %13 = load i8*, i8** %12, align 8, !dbg !504
  %14 = call i8* (i8*, ...) @str_fmt(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* %13), !dbg !505
  call void @command_add_arg(%struct.command* %4, i8* %14), !dbg !506
  call void @command_add_arg(%struct.command* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0)), !dbg !508
  %15 = load i8**, i8*** %3, align 8, !dbg !509
  call void @command_add_argl(%struct.command* %4, i8** %15), !dbg !510
  call void @command_exec(%struct.command* %4) #11, !dbg !511
  unreachable, !dbg !511
                                                  ; No predecessors!
  %17 = load i32, i32* %2, align 4, !dbg !512
  ret i32 %17, !dbg !512
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @command_init(%struct.command*, i8*, i8*) #2

declare void @command_add_arg(%struct.command*, i8*) #2

declare i8* @str_fmt(i8*, ...) #2

declare void @command_add_argl(%struct.command*, i8**) #2

; Function Attrs: noreturn
declare void @command_exec(%struct.command*) #3

; Function Attrs: nounwind uwtable
define i32 @commandfd(i8**) #4 !dbg !513 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.varbuf, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct._IO_FILE*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !514, metadata !485), !dbg !515
  call void @llvm.dbg.declare(metadata %struct.varbuf* %3, metadata !516, metadata !485), !dbg !525
  %18 = bitcast %struct.varbuf* %3 to i8*, !dbg !525
  call void @llvm.memset.p0i8.i64(i8* %18, i8 0, i64 24, i32 8, i1 false), !dbg !525
  call void @llvm.dbg.declare(metadata i8** %4, metadata !526, metadata !485), !dbg !527
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !528, metadata !485), !dbg !529
  store i8** null, i8*** %5, align 8, !dbg !529
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !530, metadata !485), !dbg !531
  call void @llvm.dbg.declare(metadata i8** %7, metadata !532, metadata !485), !dbg !533
  call void @llvm.dbg.declare(metadata i8** %8, metadata !534, metadata !485), !dbg !535
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %9, metadata !536, metadata !485), !dbg !590
  call void @llvm.dbg.declare(metadata i64* %10, metadata !591, metadata !485), !dbg !592
  call void @llvm.dbg.declare(metadata i32* %11, metadata !593, metadata !485), !dbg !594
  store i32 0, i32* %11, align 4, !dbg !594
  call void @llvm.dbg.declare(metadata i32* %12, metadata !595, metadata !485), !dbg !596
  call void @llvm.dbg.declare(metadata i32* %13, metadata !597, metadata !485), !dbg !598
  call void @llvm.dbg.declare(metadata i32* %14, metadata !599, metadata !485), !dbg !600
  call void @llvm.dbg.declare(metadata i8* %15, metadata !601, metadata !485), !dbg !602
  %19 = load i8**, i8*** %2, align 8, !dbg !603
  %20 = getelementptr inbounds i8*, i8** %19, i32 1, !dbg !603
  store i8** %20, i8*** %2, align 8, !dbg !603
  %21 = load i8*, i8** %19, align 8, !dbg !604
  store i8* %21, i8** %4, align 8, !dbg !605
  %22 = load i8*, i8** %4, align 8, !dbg !606
  %23 = icmp eq i8* %22, null, !dbg !608
  br i1 %23, label %28, label %24, !dbg !609

; <label>:24:                                     ; preds = %1
  %25 = load i8**, i8*** %2, align 8, !dbg !610
  %26 = load i8*, i8** %25, align 8, !dbg !612
  %27 = icmp ne i8* %26, null, !dbg !612
  br i1 %27, label %28, label %33, !dbg !613

; <label>:28:                                     ; preds = %24, %1
  %29 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0)) #12, !dbg !614
  %30 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !615
  %31 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %30, i32 0, i32 0, !dbg !616
  %32 = load i8*, i8** %31, align 8, !dbg !616
  call void (i8*, ...) @badusage(i8* %29, i8* %32) #11, !dbg !617
  unreachable, !dbg !618

; <label>:33:                                     ; preds = %24
  %34 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !619
  %35 = load i8*, i8** %4, align 8, !dbg !620
  %36 = call i64 @dpkg_options_parse_arg_int(%struct.cmdinfo* %34, i8* %35), !dbg !621
  store i64 %36, i64* %10, align 8, !dbg !622
  %37 = load i64, i64* %10, align 8, !dbg !623
  %38 = trunc i64 %37 to i32, !dbg !623
  %39 = call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #12, !dbg !624
  store %struct._IO_FILE* %39, %struct._IO_FILE** %9, align 8, !dbg !625
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !626
  %41 = icmp eq %struct._IO_FILE* %40, null, !dbg !628
  br i1 %41, label %42, label %46, !dbg !629

; <label>:42:                                     ; preds = %33
  %43 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i32 0, i32 0)) #12, !dbg !630
  %44 = load i64, i64* %10, align 8, !dbg !631
  %45 = trunc i64 %44 to i32, !dbg !632
  call void (i8*, ...) @ohshite(i8* %43, i32 %45) #11, !dbg !633
  unreachable, !dbg !635

; <label>:46:                                     ; preds = %33
  br label %47, !dbg !636

; <label>:47:                                     ; preds = %242, %125, %90, %46
  call void @llvm.dbg.declare(metadata i8* %16, metadata !637, metadata !485), !dbg !641
  store i8 0, i8* %16, align 1, !dbg !641
  call void @llvm.dbg.declare(metadata i32* %17, metadata !642, metadata !485), !dbg !643
  store i32 1, i32* %17, align 4, !dbg !643
  store i32 0, i32* %13, align 4, !dbg !644
  call void @push_error_context(), !dbg !645
  br label %48, !dbg !646, !llvm.loop !647

; <label>:48:                                     ; preds = %63, %47
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !648
  %50 = call i32 @_IO_getc(%struct._IO_FILE* %49), !dbg !648
  store i32 %50, i32* %12, align 4, !dbg !650
  %51 = load i32, i32* %12, align 4, !dbg !651
  %52 = icmp eq i32 %51, 10, !dbg !653
  br i1 %52, label %53, label %56, !dbg !654

; <label>:53:                                     ; preds = %48
  %54 = load i32, i32* %13, align 4, !dbg !655
  %55 = add nsw i32 %54, 1, !dbg !655
  store i32 %55, i32* %13, align 4, !dbg !655
  br label %56, !dbg !656

; <label>:56:                                     ; preds = %53, %48
  br label %57, !dbg !657

; <label>:57:                                     ; preds = %56
  %58 = load i32, i32* %12, align 4, !dbg !658
  %59 = icmp ne i32 %58, -1, !dbg !660
  br i1 %59, label %60, label %63, !dbg !661

; <label>:60:                                     ; preds = %57
  %61 = load i32, i32* %12, align 4, !dbg !662
  %62 = call zeroext i1 @c_isspace(i32 %61), !dbg !664
  br label %63

; <label>:63:                                     ; preds = %60, %57
  %64 = phi i1 [ false, %57 ], [ %62, %60 ]
  br i1 %64, label %48, label %65, !dbg !665, !llvm.loop !647

; <label>:65:                                     ; preds = %63
  %66 = load i32, i32* %12, align 4, !dbg !667
  %67 = icmp eq i32 %66, -1, !dbg !669
  br i1 %67, label %68, label %69, !dbg !670

; <label>:68:                                     ; preds = %65
  br label %250, !dbg !671

; <label>:69:                                     ; preds = %65
  %70 = load i32, i32* %12, align 4, !dbg !673
  %71 = icmp eq i32 %70, 35, !dbg !675
  br i1 %71, label %72, label %91, !dbg !676

; <label>:72:                                     ; preds = %69
  br label %73, !dbg !677, !llvm.loop !679

; <label>:73:                                     ; preds = %88, %72
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !680
  %75 = call i32 @_IO_getc(%struct._IO_FILE* %74), !dbg !680
  store i32 %75, i32* %12, align 4, !dbg !683
  %76 = load i32, i32* %12, align 4, !dbg !684
  %77 = icmp eq i32 %76, 10, !dbg !685
  br i1 %77, label %78, label %81, !dbg !684

; <label>:78:                                     ; preds = %73
  %79 = load i32, i32* %13, align 4, !dbg !686
  %80 = add nsw i32 %79, 1, !dbg !686
  store i32 %80, i32* %13, align 4, !dbg !686
  br label %81, !dbg !689

; <label>:81:                                     ; preds = %78, %73
  br label %82, !dbg !690

; <label>:82:                                     ; preds = %81
  %83 = load i32, i32* %12, align 4, !dbg !692
  %84 = icmp ne i32 %83, -1, !dbg !694
  br i1 %84, label %85, label %88, !dbg !695

; <label>:85:                                     ; preds = %82
  %86 = load i32, i32* %12, align 4, !dbg !696
  %87 = icmp ne i32 %86, 10, !dbg !698
  br label %88

; <label>:88:                                     ; preds = %85, %82
  %89 = phi i1 [ false, %82 ], [ %87, %85 ]
  br i1 %89, label %73, label %90, !dbg !699, !llvm.loop !679

; <label>:90:                                     ; preds = %88
  br label %47, !dbg !701, !llvm.loop !702

; <label>:91:                                     ; preds = %69
  call void @varbuf_reset(%struct.varbuf* %3), !dbg !703
  br label %92, !dbg !704, !llvm.loop !705

; <label>:92:                                     ; preds = %114, %91
  %93 = load i32, i32* %12, align 4, !dbg !706
  call void @varbuf_add_char(%struct.varbuf* %3, i32 %93), !dbg !708
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !709
  %95 = call i32 @_IO_getc(%struct._IO_FILE* %94), !dbg !709
  store i32 %95, i32* %12, align 4, !dbg !710
  %96 = load i32, i32* %12, align 4, !dbg !711
  %97 = icmp eq i32 %96, 10, !dbg !713
  br i1 %97, label %98, label %101, !dbg !714

; <label>:98:                                     ; preds = %92
  %99 = load i32, i32* %13, align 4, !dbg !715
  %100 = add nsw i32 %99, 1, !dbg !715
  store i32 %100, i32* %13, align 4, !dbg !715
  br label %101, !dbg !717

; <label>:101:                                    ; preds = %98, %92
  %102 = load i32, i32* %12, align 4, !dbg !718
  %103 = call zeroext i1 @c_isspace(i32 %102), !dbg !720
  br i1 %103, label %104, label %107, !dbg !721

; <label>:104:                                    ; preds = %101
  %105 = load i32, i32* %17, align 4, !dbg !722
  %106 = add nsw i32 %105, 1, !dbg !722
  store i32 %106, i32* %17, align 4, !dbg !722
  br label %107, !dbg !723

; <label>:107:                                    ; preds = %104, %101
  br label %108, !dbg !724

; <label>:108:                                    ; preds = %107
  %109 = load i32, i32* %12, align 4, !dbg !725
  %110 = icmp ne i32 %109, -1, !dbg !726
  br i1 %110, label %111, label %114, !dbg !727

; <label>:111:                                    ; preds = %108
  %112 = load i32, i32* %12, align 4, !dbg !728
  %113 = icmp ne i32 %112, 10, !dbg !729
  br label %114

; <label>:114:                                    ; preds = %111, %108
  %115 = phi i1 [ false, %108 ], [ %113, %111 ]
  br i1 %115, label %92, label %116, !dbg !730, !llvm.loop !705

; <label>:116:                                    ; preds = %114
  %117 = load i32, i32* %12, align 4, !dbg !732
  %118 = icmp eq i32 %117, -1, !dbg !734
  br i1 %118, label %119, label %122, !dbg !735

; <label>:119:                                    ; preds = %116
  %120 = call i8* @gettext(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i32 0, i32 0)) #12, !dbg !736
  %121 = load i32, i32* %13, align 4, !dbg !737
  call void (i8*, ...) @ohshit(i8* %120, i32 %121) #11, !dbg !738
  unreachable, !dbg !740

; <label>:122:                                    ; preds = %116
  %123 = load i32, i32* %17, align 4, !dbg !741
  %124 = icmp ne i32 %123, 0, !dbg !741
  br i1 %124, label %126, label %125, !dbg !743

; <label>:125:                                    ; preds = %122
  br label %47, !dbg !744, !llvm.loop !702

; <label>:126:                                    ; preds = %122
  call void @varbuf_end_str(%struct.varbuf* %3), !dbg !746
  %127 = load i8**, i8*** %5, align 8, !dbg !747
  %128 = bitcast i8** %127 to i8*, !dbg !747
  %129 = load i32, i32* %17, align 4, !dbg !748
  %130 = add nsw i32 %129, 1, !dbg !749
  %131 = sext i32 %130 to i64, !dbg !750
  %132 = mul i64 8, %131, !dbg !751
  %133 = call i8* @m_realloc(i8* %128, i64 %132), !dbg !752
  %134 = bitcast i8* %133 to i8**, !dbg !752
  store i8** %134, i8*** %5, align 8, !dbg !753
  store i32 1, i32* %17, align 4, !dbg !754
  %135 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %3, i32 0, i32 2, !dbg !755
  %136 = load i8*, i8** %135, align 8, !dbg !755
  store i8* %136, i8** %7, align 8, !dbg !756
  %137 = load i8*, i8** %7, align 8, !dbg !757
  %138 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %3, i32 0, i32 0, !dbg !758
  %139 = load i64, i64* %138, align 8, !dbg !758
  %140 = getelementptr inbounds i8, i8* %137, i64 %139, !dbg !759
  %141 = getelementptr inbounds i8, i8* %140, i64 1, !dbg !760
  store i8* %141, i8** %8, align 8, !dbg !761
  store i8 0, i8* %15, align 1, !dbg !762
  br label %142, !dbg !763

; <label>:142:                                    ; preds = %200, %155, %126
  %143 = load i8*, i8** %7, align 8, !dbg !764
  %144 = load i8*, i8** %8, align 8, !dbg !765
  %145 = icmp ult i8* %143, %144, !dbg !766
  br i1 %145, label %146, label %203, !dbg !767

; <label>:146:                                    ; preds = %142
  %147 = load i8, i8* %15, align 1, !dbg !768
  %148 = trunc i8 %147 to i1, !dbg !768
  br i1 %148, label %149, label %150, !dbg !771

; <label>:149:                                    ; preds = %146
  store i8 0, i8* %15, align 1, !dbg !772
  br label %200, !dbg !774

; <label>:150:                                    ; preds = %146
  %151 = load i8*, i8** %7, align 8, !dbg !775
  %152 = load i8, i8* %151, align 1, !dbg !778
  %153 = sext i8 %152 to i32, !dbg !778
  %154 = icmp eq i32 %153, 92, !dbg !779
  br i1 %154, label %155, label %171, !dbg !778

; <label>:155:                                    ; preds = %150
  %156 = load i8*, i8** %7, align 8, !dbg !780
  %157 = load i8*, i8** %7, align 8, !dbg !782
  %158 = getelementptr inbounds i8, i8* %157, i64 1, !dbg !783
  %159 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %3, i32 0, i32 0, !dbg !784
  %160 = load i64, i64* %159, align 8, !dbg !784
  %161 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %3, i32 0, i32 2, !dbg !785
  %162 = load i8*, i8** %161, align 8, !dbg !785
  %163 = load i8*, i8** %7, align 8, !dbg !786
  %164 = ptrtoint i8* %162 to i64, !dbg !787
  %165 = ptrtoint i8* %163 to i64, !dbg !787
  %166 = sub i64 %164, %165, !dbg !787
  %167 = sub i64 %160, %166, !dbg !788
  %168 = sub i64 %167, 1, !dbg !789
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %156, i8* %158, i64 %168, i32 1, i1 false), !dbg !790
  %169 = load i8*, i8** %8, align 8, !dbg !791
  %170 = getelementptr inbounds i8, i8* %169, i32 -1, !dbg !791
  store i8* %170, i8** %8, align 8, !dbg !791
  store i8 1, i8* %15, align 1, !dbg !792
  br label %142, !dbg !793, !llvm.loop !794

; <label>:171:                                    ; preds = %150
  %172 = load i8*, i8** %7, align 8, !dbg !795
  %173 = load i8, i8* %172, align 1, !dbg !797
  %174 = sext i8 %173 to i32, !dbg !797
  %175 = call zeroext i1 @c_isspace(i32 %174), !dbg !798
  br i1 %175, label %176, label %184, !dbg !799

; <label>:176:                                    ; preds = %171
  %177 = load i8, i8* %16, align 1, !dbg !800
  %178 = trunc i8 %177 to i1, !dbg !800
  %179 = zext i1 %178 to i32, !dbg !800
  %180 = icmp eq i32 %179, 1, !dbg !803
  br i1 %180, label %181, label %183, !dbg !804

; <label>:181:                                    ; preds = %176
  %182 = load i8*, i8** %7, align 8, !dbg !805
  store i8 0, i8* %182, align 1, !dbg !807
  store i8 0, i8* %16, align 1, !dbg !808
  br label %183, !dbg !809

; <label>:183:                                    ; preds = %181, %176
  br label %198, !dbg !810

; <label>:184:                                    ; preds = %171
  %185 = load i8, i8* %16, align 1, !dbg !811
  %186 = trunc i8 %185 to i1, !dbg !811
  %187 = zext i1 %186 to i32, !dbg !811
  %188 = icmp eq i32 %187, 0, !dbg !814
  br i1 %188, label %189, label %197, !dbg !815

; <label>:189:                                    ; preds = %184
  %190 = load i8*, i8** %7, align 8, !dbg !816
  %191 = load i32, i32* %17, align 4, !dbg !818
  %192 = sext i32 %191 to i64, !dbg !819
  %193 = load i8**, i8*** %5, align 8, !dbg !819
  %194 = getelementptr inbounds i8*, i8** %193, i64 %192, !dbg !819
  store i8* %190, i8** %194, align 8, !dbg !820
  %195 = load i32, i32* %17, align 4, !dbg !821
  %196 = add nsw i32 %195, 1, !dbg !821
  store i32 %196, i32* %17, align 4, !dbg !821
  store i8 1, i8* %16, align 1, !dbg !822
  br label %197, !dbg !823

; <label>:197:                                    ; preds = %189, %184
  br label %198

; <label>:198:                                    ; preds = %197, %183
  br label %199

; <label>:199:                                    ; preds = %198
  br label %200

; <label>:200:                                    ; preds = %199, %149
  %201 = load i8*, i8** %7, align 8, !dbg !824
  %202 = getelementptr inbounds i8, i8* %201, i32 1, !dbg !824
  store i8* %202, i8** %7, align 8, !dbg !824
  br label %142, !dbg !825, !llvm.loop !794

; <label>:203:                                    ; preds = %142
  %204 = load i8*, i8** %7, align 8, !dbg !826
  store i8 0, i8* %204, align 1, !dbg !827
  %205 = load i32, i32* %17, align 4, !dbg !828
  %206 = add nsw i32 %205, 1, !dbg !828
  store i32 %206, i32* %17, align 4, !dbg !828
  %207 = sext i32 %205 to i64, !dbg !829
  %208 = load i8**, i8*** %5, align 8, !dbg !829
  %209 = getelementptr inbounds i8*, i8** %208, i64 %207, !dbg !829
  store i8* null, i8** %209, align 8, !dbg !830
  store i32 1, i32* %14, align 4, !dbg !831
  br label %210, !dbg !833

; <label>:210:                                    ; preds = %233, %203
  %211 = load i32, i32* %14, align 4, !dbg !834
  %212 = load i32, i32* %17, align 4, !dbg !837
  %213 = icmp slt i32 %211, %212, !dbg !838
  br i1 %213, label %214, label %236, !dbg !839

; <label>:214:                                    ; preds = %210
  %215 = load i32, i32* %14, align 4, !dbg !840
  %216 = sext i32 %215 to i64, !dbg !842
  %217 = load i8**, i8*** %5, align 8, !dbg !842
  %218 = getelementptr inbounds i8*, i8** %217, i64 %216, !dbg !842
  %219 = load i8*, i8** %218, align 8, !dbg !842
  %220 = icmp ne i8* %219, null, !dbg !842
  br i1 %220, label %221, label %232, !dbg !843

; <label>:221:                                    ; preds = %214
  %222 = load i32, i32* %14, align 4, !dbg !844
  %223 = sext i32 %222 to i64, !dbg !845
  %224 = load i8**, i8*** %5, align 8, !dbg !845
  %225 = getelementptr inbounds i8*, i8** %224, i64 %223, !dbg !845
  %226 = load i8*, i8** %225, align 8, !dbg !845
  %227 = call i8* @m_strdup(i8* %226), !dbg !846
  %228 = load i32, i32* %14, align 4, !dbg !847
  %229 = sext i32 %228 to i64, !dbg !848
  %230 = load i8**, i8*** %5, align 8, !dbg !848
  %231 = getelementptr inbounds i8*, i8** %230, i64 %229, !dbg !848
  store i8* %227, i8** %231, align 8, !dbg !849
  br label %232, !dbg !848

; <label>:232:                                    ; preds = %221, %214
  br label %233, !dbg !850

; <label>:233:                                    ; preds = %232
  %234 = load i32, i32* %14, align 4, !dbg !852
  %235 = add nsw i32 %234, 1, !dbg !852
  store i32 %235, i32* %14, align 4, !dbg !852
  br label %210, !dbg !854, !llvm.loop !855

; <label>:236:                                    ; preds = %210
  %237 = load i8**, i8*** %5, align 8, !dbg !857
  store i8** %237, i8*** %6, align 8, !dbg !858
  call void @setaction(%struct.cmdinfo* null, i8* null), !dbg !859
  call void @dpkg_options_parse(i8*** %6, %struct.cmdinfo* getelementptr inbounds ([81 x %struct.cmdinfo], [81 x %struct.cmdinfo]* @cmdinfos, i32 0, i32 0), i8* getelementptr inbounds ([388 x i8], [388 x i8]* @printforhelp, i32 0, i32 0)), !dbg !860
  %238 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !861
  %239 = icmp ne %struct.cmdinfo* %238, null, !dbg !861
  br i1 %239, label %242, label %240, !dbg !863

; <label>:240:                                    ; preds = %236
  %241 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0)) #12, !dbg !864
  call void (i8*, ...) @badusage(i8* %241) #11, !dbg !866
  unreachable, !dbg !868

; <label>:242:                                    ; preds = %236
  call void @fsys_hash_init(), !dbg !869
  %243 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !870
  %244 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %243, i32 0, i32 8, !dbg !871
  %245 = load i32 (i8**)*, i32 (i8**)** %244, align 8, !dbg !871
  %246 = load i8**, i8*** %6, align 8, !dbg !872
  %247 = call i32 %245(i8** %246), !dbg !870
  %248 = load i32, i32* %11, align 4, !dbg !873
  %249 = or i32 %248, %247, !dbg !873
  store i32 %249, i32* %11, align 4, !dbg !873
  call void @fsys_hash_reset(), !dbg !874
  call void @pop_error_context(i32 1), !dbg !875
  br label %47, !dbg !876, !llvm.loop !702

; <label>:250:                                    ; preds = %68
  %251 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !878
  %252 = call i32 @fclose(%struct._IO_FILE* %251), !dbg !879
  %253 = load i32, i32* %11, align 4, !dbg !880
  ret i32 %253, !dbg !881
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #5

; Function Attrs: noreturn
declare void @badusage(i8*, ...) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #6

declare i64 @dpkg_options_parse_arg_int(%struct.cmdinfo*, i8*) #2

; Function Attrs: nounwind
declare %struct._IO_FILE* @fdopen(i32, i8*) #6

; Function Attrs: noreturn
declare void @ohshite(i8*, ...) #3

declare void @push_error_context() #2

declare i32 @_IO_getc(%struct._IO_FILE*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @c_isspace(i32) #7 !dbg !882 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !885, metadata !485), !dbg !886
  %3 = load i32, i32* %2, align 4, !dbg !887
  %4 = call zeroext i1 @c_isbits(i32 %3, i32 4), !dbg !888
  ret i1 %4, !dbg !889
}

declare void @varbuf_reset(%struct.varbuf*) #2

declare void @varbuf_add_char(%struct.varbuf*, i32) #2

; Function Attrs: noreturn
declare void @ohshit(i8*, ...) #3

declare void @varbuf_end_str(%struct.varbuf*) #2

declare i8* @m_realloc(i8*, i64) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare i8* @m_strdup(i8*) #2

declare void @setaction(%struct.cmdinfo*, i8*) #2

declare void @dpkg_options_parse(i8***, %struct.cmdinfo*, i8*) #2

declare void @fsys_hash_init() #2

declare void @fsys_hash_reset() #2

declare void @pop_error_context(i32) #2

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define i32 @main(i32, i8**) #4 !dbg !890 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !893, metadata !485), !dbg !894
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !895, metadata !485), !dbg !896
  call void @llvm.dbg.declare(metadata i32* %6, metadata !897, metadata !485), !dbg !898
  call void @dpkg_locales_init(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0)), !dbg !899
  call void @dpkg_program_init(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0)), !dbg !900
  call void @dpkg_options_load(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), %struct.cmdinfo* getelementptr inbounds ([81 x %struct.cmdinfo], [81 x %struct.cmdinfo]* @cmdinfos, i32 0, i32 0)), !dbg !901
  call void @set_force_default(i32 -1), !dbg !902
  call void @dpkg_options_parse(i8*** %5, %struct.cmdinfo* getelementptr inbounds ([81 x %struct.cmdinfo], [81 x %struct.cmdinfo]* @cmdinfos, i32 0, i32 0), i8* getelementptr inbounds ([388 x i8], [388 x i8]* @printforhelp, i32 0, i32 0)), !dbg !903
  %7 = call zeroext i1 @in_force(i32 65536), !dbg !904
  br i1 %7, label %17, label %8, !dbg !906

; <label>:8:                                      ; preds = %2
  %9 = call i32 @getuid() #12, !dbg !907
  %10 = icmp eq i32 %9, 0, !dbg !909
  br i1 %10, label %11, label %17, !dbg !910

; <label>:11:                                     ; preds = %8
  %12 = call i32 @setgid(i32 0) #12, !dbg !911
  %13 = icmp slt i32 %12, 0, !dbg !913
  br i1 %13, label %14, label %16, !dbg !914

; <label>:14:                                     ; preds = %11
  %15 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i32 0, i32 0)) #12, !dbg !915
  call void (i8*, ...) @ohshite(i8* %15) #11, !dbg !916
  unreachable, !dbg !918

; <label>:16:                                     ; preds = %11
  br label %17, !dbg !919

; <label>:17:                                     ; preds = %16, %8, %2
  %18 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !920
  %19 = icmp ne %struct.cmdinfo* %18, null, !dbg !920
  br i1 %19, label %22, label %20, !dbg !922

; <label>:20:                                     ; preds = %17
  %21 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0)) #12, !dbg !923
  call void (i8*, ...) @badusage(i8* %21) #11, !dbg !925
  unreachable, !dbg !927

; <label>:22:                                     ; preds = %17
  %23 = load i8*, i8** @admindir, align 8, !dbg !928
  %24 = call i8* @dpkg_db_set_dir(i8* %23), !dbg !929
  store i8* %24, i8** @admindir, align 8, !dbg !930
  %25 = load i8*, i8** @admindir, align 8, !dbg !931
  %26 = call i32 @setenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i8* %25, i32 1) #12, !dbg !933
  %27 = icmp slt i32 %26, 0, !dbg !934
  br i1 %27, label %28, label %30, !dbg !935

; <label>:28:                                     ; preds = %22
  %29 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i32 0, i32 0)) #12, !dbg !936
  call void (i8*, ...) @ohshite(i8* %29) #11, !dbg !937
  unreachable, !dbg !939

; <label>:30:                                     ; preds = %22
  %31 = load i8*, i8** @instdir, align 8, !dbg !940
  %32 = call i32 @setenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* %31, i32 1) #12, !dbg !942
  %33 = icmp slt i32 %32, 0, !dbg !943
  br i1 %33, label %34, label %36, !dbg !944

; <label>:34:                                     ; preds = %30
  %35 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i32 0, i32 0)) #12, !dbg !945
  call void (i8*, ...) @ohshite(i8* %35) #11, !dbg !946
  unreachable, !dbg !948

; <label>:36:                                     ; preds = %30
  %37 = call i8* @get_force_string(), !dbg !949
  %38 = call i32 @setenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i8* %37, i32 1) #12, !dbg !951
  %39 = icmp slt i32 %38, 0, !dbg !953
  br i1 %39, label %40, label %42, !dbg !954

; <label>:40:                                     ; preds = %36
  %41 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i32 0, i32 0)) #12, !dbg !955
  call void (i8*, ...) @ohshite(i8* %41) #11, !dbg !956
  unreachable, !dbg !957

; <label>:42:                                     ; preds = %36
  %43 = load i32, i32* @f_triggers, align 4, !dbg !958
  %44 = icmp ne i32 %43, 0, !dbg !958
  br i1 %44, label %57, label %45, !dbg !960

; <label>:45:                                     ; preds = %42
  %46 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !961
  %47 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %46, i32 0, i32 6, !dbg !962
  %48 = load i32, i32* %47, align 8, !dbg !962
  %49 = icmp eq i32 %48, 4, !dbg !963
  br i1 %49, label %50, label %54, !dbg !964

; <label>:50:                                     ; preds = %45
  %51 = load i8**, i8*** %5, align 8, !dbg !965
  %52 = load i8*, i8** %51, align 8, !dbg !967
  %53 = icmp ne i8* %52, null, !dbg !968
  br label %54

; <label>:54:                                     ; preds = %50, %45
  %55 = phi i1 [ false, %45 ], [ %53, %50 ]
  %56 = select i1 %55, i32 -1, i32 1, !dbg !969
  store i32 %56, i32* @f_triggers, align 4, !dbg !971
  br label %57, !dbg !972

; <label>:57:                                     ; preds = %54, %42
  %58 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !973
  %59 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %58, i32 0, i32 6, !dbg !975
  %60 = load i32, i32* %59, align 8, !dbg !975
  %61 = call zeroext i1 @is_invoke_action(i32 %60), !dbg !976
  br i1 %61, label %62, label %66, !dbg !977

; <label>:62:                                     ; preds = %57
  %63 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !978
  %64 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %63, i32 0, i32 0, !dbg !980
  %65 = load i8*, i8** %64, align 8, !dbg !980
  call void @run_invoke_hooks(i8* %65, %struct.invoke_list* @pre_invoke_hooks), !dbg !981
  call void @run_status_loggers(%struct.invoke_list* @status_loggers), !dbg !982
  br label %66, !dbg !983

; <label>:66:                                     ; preds = %62, %57
  call void @fsys_hash_init(), !dbg !984
  %67 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !985
  %68 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %67, i32 0, i32 8, !dbg !986
  %69 = load i32 (i8**)*, i32 (i8**)** %68, align 8, !dbg !986
  %70 = load i8**, i8*** %5, align 8, !dbg !987
  %71 = call i32 %69(i8** %70), !dbg !985
  store i32 %71, i32* %6, align 4, !dbg !988
  %72 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !989
  %73 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %72, i32 0, i32 6, !dbg !991
  %74 = load i32, i32* %73, align 8, !dbg !991
  %75 = call zeroext i1 @is_invoke_action(i32 %74), !dbg !992
  br i1 %75, label %76, label %80, !dbg !993

; <label>:76:                                     ; preds = %66
  %77 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !994
  %78 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %77, i32 0, i32 0, !dbg !995
  %79 = load i8*, i8** %78, align 8, !dbg !995
  call void @run_invoke_hooks(i8* %79, %struct.invoke_list* @post_invoke_hooks), !dbg !996
  br label %80, !dbg !996

; <label>:80:                                     ; preds = %76, %66
  call void @free_invoke_hooks(%struct.invoke_list* @pre_invoke_hooks), !dbg !997
  call void @free_invoke_hooks(%struct.invoke_list* @post_invoke_hooks), !dbg !998
  call void @dpkg_program_done(), !dbg !999
  %81 = load i32, i32* %6, align 4, !dbg !1000
  %82 = call i32 @reportbroken_retexitstatus(i32 %81), !dbg !1001
  ret i32 %82, !dbg !1002
}

declare void @dpkg_locales_init(i8*) #2

declare void @dpkg_program_init(i8*) #2

declare void @dpkg_options_load(i8*, %struct.cmdinfo*) #2

declare void @set_force_default(i32) #2

declare zeroext i1 @in_force(i32) #2

; Function Attrs: nounwind
declare i32 @getuid() #6

; Function Attrs: nounwind
declare i32 @setgid(i32) #6

declare i8* @dpkg_db_set_dir(i8*) #2

; Function Attrs: nounwind
declare i32 @setenv(i8*, i8*, i32) #6

declare i8* @get_force_string() #2

; Function Attrs: nounwind uwtable
define internal zeroext i1 @is_invoke_action(i32) #4 !dbg !1003 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1006, metadata !485), !dbg !1007
  %4 = load i32, i32* %3, align 4, !dbg !1008
  switch i32 %4, label %6 [
    i32 1, label %5
    i32 2, label %5
    i32 3, label %5
    i32 4, label %5
    i32 5, label %5
    i32 6, label %5
    i32 17, label %5
    i32 18, label %5
  ], !dbg !1009

; <label>:5:                                      ; preds = %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !1010
  br label %7, !dbg !1010

; <label>:6:                                      ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !1012
  br label %7, !dbg !1012

; <label>:7:                                      ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !1013
  ret i1 %8, !dbg !1013
}

; Function Attrs: nounwind uwtable
define internal void @run_invoke_hooks(i8*, %struct.invoke_list*) #4 !dbg !1014 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.invoke_list*, align 8
  %5 = alloca %struct.invoke_hook*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1018, metadata !485), !dbg !1019
  store %struct.invoke_list* %1, %struct.invoke_list** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.invoke_list** %4, metadata !1020, metadata !485), !dbg !1021
  call void @llvm.dbg.declare(metadata %struct.invoke_hook** %5, metadata !1022, metadata !485), !dbg !1023
  %7 = load i8*, i8** %3, align 8, !dbg !1024
  %8 = call i32 @setenv(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.147, i32 0, i32 0), i8* %7, i32 1) #12, !dbg !1025
  %9 = load %struct.invoke_list*, %struct.invoke_list** %4, align 8, !dbg !1026
  %10 = getelementptr inbounds %struct.invoke_list, %struct.invoke_list* %9, i32 0, i32 0, !dbg !1028
  %11 = load %struct.invoke_hook*, %struct.invoke_hook** %10, align 8, !dbg !1028
  store %struct.invoke_hook* %11, %struct.invoke_hook** %5, align 8, !dbg !1029
  br label %12, !dbg !1030

; <label>:12:                                     ; preds = %29, %2
  %13 = load %struct.invoke_hook*, %struct.invoke_hook** %5, align 8, !dbg !1031
  %14 = icmp ne %struct.invoke_hook* %13, null, !dbg !1034
  br i1 %14, label %15, label %33, !dbg !1034

; <label>:15:                                     ; preds = %12
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1035, metadata !485), !dbg !1037
  %16 = load %struct.invoke_hook*, %struct.invoke_hook** %5, align 8, !dbg !1038
  %17 = getelementptr inbounds %struct.invoke_hook, %struct.invoke_hook* %16, i32 0, i32 1, !dbg !1039
  %18 = load i8*, i8** %17, align 8, !dbg !1039
  %19 = call i32 @system(i8* %18), !dbg !1040
  store i32 %19, i32* %6, align 4, !dbg !1041
  %20 = load i32, i32* %6, align 4, !dbg !1042
  %21 = icmp ne i32 %20, 0, !dbg !1044
  br i1 %21, label %22, label %28, !dbg !1045

; <label>:22:                                     ; preds = %15
  %23 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.148, i32 0, i32 0)) #12, !dbg !1046
  %24 = load %struct.invoke_hook*, %struct.invoke_hook** %5, align 8, !dbg !1047
  %25 = getelementptr inbounds %struct.invoke_hook, %struct.invoke_hook* %24, i32 0, i32 1, !dbg !1048
  %26 = load i8*, i8** %25, align 8, !dbg !1048
  %27 = load i32, i32* %6, align 4, !dbg !1049
  call void (i8*, ...) @ohshit(i8* %23, i8* %26, i32 %27) #11, !dbg !1050
  unreachable, !dbg !1052

; <label>:28:                                     ; preds = %15
  br label %29, !dbg !1053

; <label>:29:                                     ; preds = %28
  %30 = load %struct.invoke_hook*, %struct.invoke_hook** %5, align 8, !dbg !1054
  %31 = getelementptr inbounds %struct.invoke_hook, %struct.invoke_hook* %30, i32 0, i32 0, !dbg !1056
  %32 = load %struct.invoke_hook*, %struct.invoke_hook** %31, align 8, !dbg !1056
  store %struct.invoke_hook* %32, %struct.invoke_hook** %5, align 8, !dbg !1057
  br label %12, !dbg !1058, !llvm.loop !1059

; <label>:33:                                     ; preds = %12
  %34 = call i32 @unsetenv(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.147, i32 0, i32 0)) #12, !dbg !1061
  ret void, !dbg !1062
}

; Function Attrs: nounwind uwtable
define internal void @run_status_loggers(%struct.invoke_list*) #4 !dbg !1063 {
  %2 = alloca %struct.invoke_list*, align 8
  %3 = alloca %struct.invoke_hook*, align 8
  %4 = alloca i32, align 4
  store %struct.invoke_list* %0, %struct.invoke_list** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.invoke_list** %2, metadata !1066, metadata !485), !dbg !1067
  call void @llvm.dbg.declare(metadata %struct.invoke_hook** %3, metadata !1068, metadata !485), !dbg !1069
  %5 = load %struct.invoke_list*, %struct.invoke_list** %2, align 8, !dbg !1070
  %6 = getelementptr inbounds %struct.invoke_list, %struct.invoke_list* %5, i32 0, i32 0, !dbg !1072
  %7 = load %struct.invoke_hook*, %struct.invoke_hook** %6, align 8, !dbg !1072
  store %struct.invoke_hook* %7, %struct.invoke_hook** %3, align 8, !dbg !1073
  br label %8, !dbg !1074

; <label>:8:                                      ; preds = %16, %1
  %9 = load %struct.invoke_hook*, %struct.invoke_hook** %3, align 8, !dbg !1075
  %10 = icmp ne %struct.invoke_hook* %9, null, !dbg !1078
  br i1 %10, label %11, label %20, !dbg !1078

; <label>:11:                                     ; preds = %8
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1079, metadata !485), !dbg !1081
  %12 = load %struct.invoke_hook*, %struct.invoke_hook** %3, align 8, !dbg !1082
  %13 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.149, i32 0, i32 0)) #12, !dbg !1083
  %14 = call i32 @run_logger(%struct.invoke_hook* %12, i8* %13), !dbg !1084
  store i32 %14, i32* %4, align 4, !dbg !1086
  %15 = load i32, i32* %4, align 4, !dbg !1087
  call void @statusfd_add(i32 %15), !dbg !1088
  br label %16, !dbg !1089

; <label>:16:                                     ; preds = %11
  %17 = load %struct.invoke_hook*, %struct.invoke_hook** %3, align 8, !dbg !1090
  %18 = getelementptr inbounds %struct.invoke_hook, %struct.invoke_hook* %17, i32 0, i32 0, !dbg !1092
  %19 = load %struct.invoke_hook*, %struct.invoke_hook** %18, align 8, !dbg !1092
  store %struct.invoke_hook* %19, %struct.invoke_hook** %3, align 8, !dbg !1093
  br label %8, !dbg !1094, !llvm.loop !1095

; <label>:20:                                     ; preds = %8
  ret void, !dbg !1097
}

; Function Attrs: nounwind uwtable
define internal void @free_invoke_hooks(%struct.invoke_list*) #4 !dbg !1098 {
  %2 = alloca %struct.invoke_list*, align 8
  %3 = alloca %struct.invoke_hook*, align 8
  %4 = alloca %struct.invoke_hook*, align 8
  store %struct.invoke_list* %0, %struct.invoke_list** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.invoke_list** %2, metadata !1099, metadata !485), !dbg !1100
  call void @llvm.dbg.declare(metadata %struct.invoke_hook** %3, metadata !1101, metadata !485), !dbg !1102
  call void @llvm.dbg.declare(metadata %struct.invoke_hook** %4, metadata !1103, metadata !485), !dbg !1104
  %5 = load %struct.invoke_list*, %struct.invoke_list** %2, align 8, !dbg !1105
  %6 = getelementptr inbounds %struct.invoke_list, %struct.invoke_list* %5, i32 0, i32 0, !dbg !1107
  %7 = load %struct.invoke_hook*, %struct.invoke_hook** %6, align 8, !dbg !1107
  store %struct.invoke_hook* %7, %struct.invoke_hook** %3, align 8, !dbg !1108
  br label %8, !dbg !1109

; <label>:8:                                      ; preds = %20, %1
  %9 = load %struct.invoke_hook*, %struct.invoke_hook** %3, align 8, !dbg !1110
  %10 = icmp ne %struct.invoke_hook* %9, null, !dbg !1113
  br i1 %10, label %11, label %22, !dbg !1113

; <label>:11:                                     ; preds = %8
  %12 = load %struct.invoke_hook*, %struct.invoke_hook** %3, align 8, !dbg !1114
  %13 = getelementptr inbounds %struct.invoke_hook, %struct.invoke_hook* %12, i32 0, i32 0, !dbg !1116
  %14 = load %struct.invoke_hook*, %struct.invoke_hook** %13, align 8, !dbg !1116
  store %struct.invoke_hook* %14, %struct.invoke_hook** %4, align 8, !dbg !1117
  %15 = load %struct.invoke_hook*, %struct.invoke_hook** %3, align 8, !dbg !1118
  %16 = getelementptr inbounds %struct.invoke_hook, %struct.invoke_hook* %15, i32 0, i32 1, !dbg !1119
  %17 = load i8*, i8** %16, align 8, !dbg !1119
  call void @free(i8* %17) #12, !dbg !1120
  %18 = load %struct.invoke_hook*, %struct.invoke_hook** %3, align 8, !dbg !1121
  %19 = bitcast %struct.invoke_hook* %18 to i8*, !dbg !1121
  call void @free(i8* %19) #12, !dbg !1122
  br label %20, !dbg !1123

; <label>:20:                                     ; preds = %11
  %21 = load %struct.invoke_hook*, %struct.invoke_hook** %4, align 8, !dbg !1124
  store %struct.invoke_hook* %21, %struct.invoke_hook** %3, align 8, !dbg !1126
  br label %8, !dbg !1127, !llvm.loop !1128

; <label>:22:                                     ; preds = %8
  ret void, !dbg !1130
}

declare void @dpkg_program_done() #2

declare i32 @reportbroken_retexitstatus(i32) #2

declare zeroext i1 @c_isbits(i32, i32) #2

declare i32 @archivefiles(i8**) #2

declare i32 @packages(i8**) #2

declare i32 @verify(i8**) #2

declare i32 @getselections(i8**) #2

declare i32 @setselections(i8**) #2

declare i32 @clearselections(i8**) #2

declare i32 @updateavailable(i8**) #2

declare i32 @forgetold(i8**) #2

declare i32 @audit(i8**) #2

declare i32 @unpackchk(i8**) #2

declare i32 @assertpredep(i8**) #2

declare i32 @assertepoch(i8**) #2

declare i32 @assertlongfilenames(i8**) #2

declare i32 @assertmulticonrep(i8**) #2

declare i32 @assertmultiarch(i8**) #2

declare i32 @assertverprovides(i8**) #2

; Function Attrs: nounwind uwtable
define internal i32 @arch_add(i8**) #4 !dbg !1131 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.dpkg_arch*, align 8
  %4 = alloca i8*, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !1132, metadata !485), !dbg !1133
  call void @llvm.dbg.declare(metadata %struct.dpkg_arch** %3, metadata !1134, metadata !485), !dbg !1135
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1136, metadata !485), !dbg !1137
  %5 = load i8**, i8*** %2, align 8, !dbg !1138
  %6 = getelementptr inbounds i8*, i8** %5, i32 1, !dbg !1138
  store i8** %6, i8*** %2, align 8, !dbg !1138
  %7 = load i8*, i8** %5, align 8, !dbg !1139
  store i8* %7, i8** %4, align 8, !dbg !1137
  %8 = load i8*, i8** %4, align 8, !dbg !1140
  %9 = icmp eq i8* %8, null, !dbg !1142
  br i1 %9, label %14, label %10, !dbg !1143

; <label>:10:                                     ; preds = %1
  %11 = load i8**, i8*** %2, align 8, !dbg !1144
  %12 = load i8*, i8** %11, align 8, !dbg !1146
  %13 = icmp ne i8* %12, null, !dbg !1146
  br i1 %13, label %14, label %19, !dbg !1147

; <label>:14:                                     ; preds = %10, %1
  %15 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0)) #12, !dbg !1148
  %16 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !1149
  %17 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %16, i32 0, i32 0, !dbg !1150
  %18 = load i8*, i8** %17, align 8, !dbg !1150
  call void (i8*, ...) @badusage(i8* %15, i8* %18) #11, !dbg !1151
  unreachable, !dbg !1152

; <label>:19:                                     ; preds = %10
  call void @dpkg_arch_load_list(), !dbg !1153
  %20 = load i8*, i8** %4, align 8, !dbg !1154
  %21 = call %struct.dpkg_arch* @dpkg_arch_add(i8* %20), !dbg !1155
  store %struct.dpkg_arch* %21, %struct.dpkg_arch** %3, align 8, !dbg !1156
  %22 = load %struct.dpkg_arch*, %struct.dpkg_arch** %3, align 8, !dbg !1157
  %23 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %22, i32 0, i32 2, !dbg !1158
  %24 = load i32, i32* %23, align 8, !dbg !1158
  switch i32 %24, label %31 [
    i32 5, label %25
    i32 6, label %25
    i32 2, label %26
  ], !dbg !1159

; <label>:25:                                     ; preds = %19, %19
  br label %34, !dbg !1160

; <label>:26:                                     ; preds = %19
  %27 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.95, i32 0, i32 0)) #12, !dbg !1162
  %28 = load i8*, i8** %4, align 8, !dbg !1163
  %29 = load i8*, i8** %4, align 8, !dbg !1164
  %30 = call i8* @dpkg_arch_name_is_illegal(i8* %29), !dbg !1165
  call void (i8*, ...) @ohshit(i8* %27, i8* %28, i8* %30) #11, !dbg !1166
  unreachable, !dbg !1168

; <label>:31:                                     ; preds = %19
  %32 = call i8* @gettext(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.96, i32 0, i32 0)) #12, !dbg !1169
  %33 = load i8*, i8** %4, align 8, !dbg !1170
  call void (i8*, ...) @ohshit(i8* %32, i8* %33) #11, !dbg !1171
  unreachable, !dbg !1172

; <label>:34:                                     ; preds = %25
  call void @dpkg_arch_save_list(), !dbg !1173
  ret i32 0, !dbg !1174
}

; Function Attrs: nounwind uwtable
define internal i32 @arch_remove(i8**) #4 !dbg !1175 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dpkg_arch*, align 8
  %6 = alloca %struct.pkg_hash_iter*, align 8
  %7 = alloca %struct.pkginfo*, align 8
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !1176, metadata !485), !dbg !1177
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1178, metadata !485), !dbg !1179
  %8 = load i8**, i8*** %3, align 8, !dbg !1180
  %9 = getelementptr inbounds i8*, i8** %8, i32 1, !dbg !1180
  store i8** %9, i8*** %3, align 8, !dbg !1180
  %10 = load i8*, i8** %8, align 8, !dbg !1181
  store i8* %10, i8** %4, align 8, !dbg !1179
  call void @llvm.dbg.declare(metadata %struct.dpkg_arch** %5, metadata !1182, metadata !485), !dbg !1183
  call void @llvm.dbg.declare(metadata %struct.pkg_hash_iter** %6, metadata !1184, metadata !485), !dbg !1187
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %7, metadata !1188, metadata !485), !dbg !1189
  %11 = load i8*, i8** %4, align 8, !dbg !1190
  %12 = icmp eq i8* %11, null, !dbg !1192
  br i1 %12, label %17, label %13, !dbg !1193

; <label>:13:                                     ; preds = %1
  %14 = load i8**, i8*** %3, align 8, !dbg !1194
  %15 = load i8*, i8** %14, align 8, !dbg !1196
  %16 = icmp ne i8* %15, null, !dbg !1196
  br i1 %16, label %17, label %22, !dbg !1197

; <label>:17:                                     ; preds = %13, %1
  %18 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0)) #12, !dbg !1198
  %19 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !1199
  %20 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %19, i32 0, i32 0, !dbg !1200
  %21 = load i8*, i8** %20, align 8, !dbg !1200
  call void (i8*, ...) @badusage(i8* %18, i8* %21) #11, !dbg !1201
  unreachable, !dbg !1202

; <label>:22:                                     ; preds = %13
  %23 = call i32 @modstatdb_open(i32 0), !dbg !1203
  %24 = load i8*, i8** %4, align 8, !dbg !1204
  %25 = call %struct.dpkg_arch* @dpkg_arch_find(i8* %24), !dbg !1205
  store %struct.dpkg_arch* %25, %struct.dpkg_arch** %5, align 8, !dbg !1206
  %26 = load %struct.dpkg_arch*, %struct.dpkg_arch** %5, align 8, !dbg !1207
  %27 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %26, i32 0, i32 2, !dbg !1209
  %28 = load i32, i32* %27, align 8, !dbg !1209
  %29 = icmp ne i32 %28, 6, !dbg !1210
  br i1 %29, label %30, label %35, !dbg !1211

; <label>:30:                                     ; preds = %22
  %31 = call i8* @gettext(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.97, i32 0, i32 0)) #12, !dbg !1212
  %32 = load %struct.dpkg_arch*, %struct.dpkg_arch** %5, align 8, !dbg !1214
  %33 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %32, i32 0, i32 1, !dbg !1215
  %34 = load i8*, i8** %33, align 8, !dbg !1215
  call void (i8*, ...) @warning(i8* %31, i8* %34), !dbg !1216
  store i32 0, i32* %2, align 4, !dbg !1218
  br label %71, !dbg !1218

; <label>:35:                                     ; preds = %22
  %36 = call %struct.pkg_hash_iter* @pkg_hash_iter_new(), !dbg !1219
  store %struct.pkg_hash_iter* %36, %struct.pkg_hash_iter** %6, align 8, !dbg !1220
  br label %37, !dbg !1221

; <label>:37:                                     ; preds = %67, %46, %35
  %38 = load %struct.pkg_hash_iter*, %struct.pkg_hash_iter** %6, align 8, !dbg !1222
  %39 = call %struct.pkginfo* @pkg_hash_iter_next_pkg(%struct.pkg_hash_iter* %38), !dbg !1224
  store %struct.pkginfo* %39, %struct.pkginfo** %7, align 8, !dbg !1225
  %40 = icmp ne %struct.pkginfo* %39, null, !dbg !1226
  br i1 %40, label %41, label %68, !dbg !1226

; <label>:41:                                     ; preds = %37
  %42 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1227
  %43 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %42, i32 0, i32 4, !dbg !1230
  %44 = load i32, i32* %43, align 8, !dbg !1230
  %45 = icmp ult i32 %44, 2, !dbg !1231
  br i1 %45, label %46, label %47, !dbg !1232

; <label>:46:                                     ; preds = %41
  br label %37, !dbg !1233, !llvm.loop !1234

; <label>:47:                                     ; preds = %41
  %48 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1235
  %49 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %48, i32 0, i32 9, !dbg !1237
  %50 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %49, i32 0, i32 3, !dbg !1238
  %51 = load %struct.dpkg_arch*, %struct.dpkg_arch** %50, align 8, !dbg !1238
  %52 = load %struct.dpkg_arch*, %struct.dpkg_arch** %5, align 8, !dbg !1239
  %53 = icmp eq %struct.dpkg_arch* %51, %52, !dbg !1240
  br i1 %53, label %54, label %67, !dbg !1241

; <label>:54:                                     ; preds = %47
  %55 = call zeroext i1 @in_force(i32 1), !dbg !1242
  br i1 %55, label %56, label %61, !dbg !1245

; <label>:56:                                     ; preds = %54
  %57 = call i8* @gettext(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.98, i32 0, i32 0)) #12, !dbg !1246
  %58 = load %struct.dpkg_arch*, %struct.dpkg_arch** %5, align 8, !dbg !1247
  %59 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %58, i32 0, i32 1, !dbg !1248
  %60 = load i8*, i8** %59, align 8, !dbg !1248
  call void (i8*, ...) @warning(i8* %57, i8* %60), !dbg !1249
  br label %66, !dbg !1251

; <label>:61:                                     ; preds = %54
  %62 = call i8* @gettext(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.99, i32 0, i32 0)) #12, !dbg !1252
  %63 = load %struct.dpkg_arch*, %struct.dpkg_arch** %5, align 8, !dbg !1253
  %64 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %63, i32 0, i32 1, !dbg !1254
  %65 = load i8*, i8** %64, align 8, !dbg !1254
  call void (i8*, ...) @ohshit(i8* %62, i8* %65) #11, !dbg !1255
  unreachable, !dbg !1256

; <label>:66:                                     ; preds = %56
  br label %68, !dbg !1257

; <label>:67:                                     ; preds = %47
  br label %37, !dbg !1258, !llvm.loop !1234

; <label>:68:                                     ; preds = %66, %37
  %69 = load %struct.pkg_hash_iter*, %struct.pkg_hash_iter** %6, align 8, !dbg !1260
  call void @pkg_hash_iter_free(%struct.pkg_hash_iter* %69), !dbg !1261
  %70 = load %struct.dpkg_arch*, %struct.dpkg_arch** %5, align 8, !dbg !1262
  call void @dpkg_arch_unmark(%struct.dpkg_arch* %70), !dbg !1263
  call void @dpkg_arch_save_list(), !dbg !1264
  call void @modstatdb_shutdown(), !dbg !1265
  store i32 0, i32* %2, align 4, !dbg !1266
  br label %71, !dbg !1266

; <label>:71:                                     ; preds = %68, %30
  %72 = load i32, i32* %2, align 4, !dbg !1267
  ret i32 %72, !dbg !1267
}

declare i32 @printarch(i8**) #2

declare i32 @print_foreign_arches(i8**) #2

declare i32 @predeppackage(i8**) #2

declare i32 @validate_pkgname(i8**) #2

declare i32 @validate_trigname(i8**) #2

declare i32 @validate_archname(i8**) #2

declare i32 @validate_version(i8**) #2

declare i32 @cmpversions(i8**) #2

; Function Attrs: nounwind uwtable
define internal void @set_invoke_hook(%struct.cmdinfo*, i8*) #4 !dbg !1268 {
  %3 = alloca %struct.cmdinfo*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.invoke_list*, align 8
  %6 = alloca %struct.invoke_hook*, align 8
  store %struct.cmdinfo* %0, %struct.cmdinfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.cmdinfo** %3, metadata !1269, metadata !485), !dbg !1270
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1271, metadata !485), !dbg !1272
  call void @llvm.dbg.declare(metadata %struct.invoke_list** %5, metadata !1273, metadata !485), !dbg !1274
  %7 = load %struct.cmdinfo*, %struct.cmdinfo** %3, align 8, !dbg !1275
  %8 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %7, i32 0, i32 7, !dbg !1276
  %9 = load i8*, i8** %8, align 8, !dbg !1276
  %10 = bitcast i8* %9 to %struct.invoke_list*, !dbg !1275
  store %struct.invoke_list* %10, %struct.invoke_list** %5, align 8, !dbg !1274
  call void @llvm.dbg.declare(metadata %struct.invoke_hook** %6, metadata !1277, metadata !485), !dbg !1278
  %11 = call i8* @m_malloc(i64 16), !dbg !1279
  %12 = bitcast i8* %11 to %struct.invoke_hook*, !dbg !1279
  store %struct.invoke_hook* %12, %struct.invoke_hook** %6, align 8, !dbg !1280
  %13 = load i8*, i8** %4, align 8, !dbg !1281
  %14 = call i8* @m_strdup(i8* %13), !dbg !1282
  %15 = load %struct.invoke_hook*, %struct.invoke_hook** %6, align 8, !dbg !1283
  %16 = getelementptr inbounds %struct.invoke_hook, %struct.invoke_hook* %15, i32 0, i32 1, !dbg !1284
  store i8* %14, i8** %16, align 8, !dbg !1285
  %17 = load %struct.invoke_hook*, %struct.invoke_hook** %6, align 8, !dbg !1286
  %18 = getelementptr inbounds %struct.invoke_hook, %struct.invoke_hook* %17, i32 0, i32 0, !dbg !1287
  store %struct.invoke_hook* null, %struct.invoke_hook** %18, align 8, !dbg !1288
  %19 = load %struct.invoke_hook*, %struct.invoke_hook** %6, align 8, !dbg !1289
  %20 = load %struct.invoke_list*, %struct.invoke_list** %5, align 8, !dbg !1290
  %21 = getelementptr inbounds %struct.invoke_list, %struct.invoke_list* %20, i32 0, i32 1, !dbg !1291
  %22 = load %struct.invoke_hook**, %struct.invoke_hook*** %21, align 8, !dbg !1291
  store %struct.invoke_hook* %19, %struct.invoke_hook** %22, align 8, !dbg !1292
  %23 = load %struct.invoke_hook*, %struct.invoke_hook** %6, align 8, !dbg !1293
  %24 = getelementptr inbounds %struct.invoke_hook, %struct.invoke_hook* %23, i32 0, i32 0, !dbg !1294
  %25 = load %struct.invoke_list*, %struct.invoke_list** %5, align 8, !dbg !1295
  %26 = getelementptr inbounds %struct.invoke_list, %struct.invoke_list* %25, i32 0, i32 1, !dbg !1296
  store %struct.invoke_hook** %24, %struct.invoke_hook*** %26, align 8, !dbg !1297
  ret void, !dbg !1298
}

; Function Attrs: nounwind uwtable
define internal void @set_filter(%struct.cmdinfo*, i8*) #4 !dbg !1299 {
  %3 = alloca %struct.cmdinfo*, align 8
  %4 = alloca i8*, align 8
  store %struct.cmdinfo* %0, %struct.cmdinfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.cmdinfo** %3, metadata !1300, metadata !485), !dbg !1301
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1302, metadata !485), !dbg !1303
  %5 = load i8*, i8** %4, align 8, !dbg !1304
  %6 = load %struct.cmdinfo*, %struct.cmdinfo** %3, align 8, !dbg !1305
  %7 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %6, i32 0, i32 6, !dbg !1306
  %8 = load i32, i32* %7, align 8, !dbg !1306
  %9 = icmp ne i32 %8, 0, !dbg !1305
  call void @filter_add(i8* %5, i1 zeroext %9), !dbg !1307
  ret void, !dbg !1308
}

; Function Attrs: nounwind uwtable
define internal void @set_verify_format(%struct.cmdinfo*, i8*) #4 !dbg !1309 {
  %3 = alloca %struct.cmdinfo*, align 8
  %4 = alloca i8*, align 8
  store %struct.cmdinfo* %0, %struct.cmdinfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.cmdinfo** %3, metadata !1310, metadata !485), !dbg !1311
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1312, metadata !485), !dbg !1313
  %5 = load i8*, i8** %4, align 8, !dbg !1314
  %6 = call zeroext i1 @verify_set_output(i8* %5), !dbg !1316
  br i1 %6, label %10, label %7, !dbg !1317

; <label>:7:                                      ; preds = %2
  %8 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.100, i32 0, i32 0)) #12, !dbg !1318
  %9 = load i8*, i8** %4, align 8, !dbg !1319
  call void (i8*, ...) @badusage(i8* %8, i8* %9) #11, !dbg !1320
  unreachable, !dbg !1322

; <label>:10:                                     ; preds = %2
  ret void, !dbg !1323
}

; Function Attrs: nounwind uwtable
define internal void @set_pipe(%struct.cmdinfo*, i8*) #4 !dbg !1324 {
  %3 = alloca %struct.cmdinfo*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.cmdinfo* %0, %struct.cmdinfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.cmdinfo** %3, metadata !1325, metadata !485), !dbg !1326
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1327, metadata !485), !dbg !1328
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1329, metadata !485), !dbg !1330
  %6 = load %struct.cmdinfo*, %struct.cmdinfo** %3, align 8, !dbg !1331
  %7 = load i8*, i8** %4, align 8, !dbg !1332
  %8 = call i64 @dpkg_options_parse_arg_int(%struct.cmdinfo* %6, i8* %7), !dbg !1333
  store i64 %8, i64* %5, align 8, !dbg !1334
  %9 = load i64, i64* %5, align 8, !dbg !1335
  %10 = trunc i64 %9 to i32, !dbg !1335
  call void @statusfd_add(i32 %10), !dbg !1336
  ret void, !dbg !1337
}

; Function Attrs: nounwind uwtable
define internal void @set_no_pager(%struct.cmdinfo*, i8*) #4 !dbg !1338 {
  %3 = alloca %struct.cmdinfo*, align 8
  %4 = alloca i8*, align 8
  store %struct.cmdinfo* %0, %struct.cmdinfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.cmdinfo** %3, metadata !1339, metadata !485), !dbg !1340
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1341, metadata !485), !dbg !1342
  call void @pager_enable(i1 zeroext false), !dbg !1343
  %5 = call i32 @setenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.102, i32 0, i32 0), i32 1) #12, !dbg !1344
  ret void, !dbg !1345
}

declare void @reset_force_option(%struct.cmdinfo*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @set_root(%struct.cmdinfo*, i8*) #4 !dbg !1346 {
  %3 = alloca %struct.cmdinfo*, align 8
  %4 = alloca i8*, align 8
  store %struct.cmdinfo* %0, %struct.cmdinfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.cmdinfo** %3, metadata !1347, metadata !485), !dbg !1348
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1349, metadata !485), !dbg !1350
  %5 = load i8*, i8** %4, align 8, !dbg !1351
  %6 = call i8* @dpkg_fsys_set_dir(i8* %5), !dbg !1352
  store i8* %6, i8** @instdir, align 8, !dbg !1353
  %7 = call i8* @dpkg_fsys_get_path(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.103, i32 0, i32 0)), !dbg !1354
  store i8* %7, i8** @admindir, align 8, !dbg !1355
  ret void, !dbg !1356
}

; Function Attrs: nounwind uwtable
define internal void @set_integer(%struct.cmdinfo*, i8*) #4 !dbg !1357 {
  %3 = alloca %struct.cmdinfo*, align 8
  %4 = alloca i8*, align 8
  store %struct.cmdinfo* %0, %struct.cmdinfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.cmdinfo** %3, metadata !1358, metadata !485), !dbg !1359
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1360, metadata !485), !dbg !1361
  %5 = load %struct.cmdinfo*, %struct.cmdinfo** %3, align 8, !dbg !1362
  %6 = load i8*, i8** %4, align 8, !dbg !1363
  %7 = call i64 @dpkg_options_parse_arg_int(%struct.cmdinfo* %5, i8* %6), !dbg !1364
  %8 = trunc i64 %7 to i32, !dbg !1364
  %9 = load %struct.cmdinfo*, %struct.cmdinfo** %3, align 8, !dbg !1365
  %10 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %9, i32 0, i32 3, !dbg !1366
  %11 = load i32*, i32** %10, align 8, !dbg !1366
  store i32 %8, i32* %11, align 4, !dbg !1367
  ret void, !dbg !1368
}

; Function Attrs: nounwind uwtable
define internal void @set_instdir(%struct.cmdinfo*, i8*) #4 !dbg !1369 {
  %3 = alloca %struct.cmdinfo*, align 8
  %4 = alloca i8*, align 8
  store %struct.cmdinfo* %0, %struct.cmdinfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.cmdinfo** %3, metadata !1370, metadata !485), !dbg !1371
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1372, metadata !485), !dbg !1373
  %5 = load i8*, i8** %4, align 8, !dbg !1374
  %6 = call i8* @dpkg_fsys_set_dir(i8* %5), !dbg !1375
  store i8* %6, i8** @instdir, align 8, !dbg !1376
  ret void, !dbg !1377
}

; Function Attrs: nounwind uwtable
define internal void @set_ignore_depends(%struct.cmdinfo*, i8*) #4 !dbg !1378 {
  %3 = alloca %struct.cmdinfo*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.pkginfo*, align 8
  store %struct.cmdinfo* %0, %struct.cmdinfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.cmdinfo** %3, metadata !1379, metadata !485), !dbg !1380
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1381, metadata !485), !dbg !1382
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1383, metadata !485), !dbg !1384
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1385, metadata !485), !dbg !1386
  %8 = load i8*, i8** %4, align 8, !dbg !1387
  %9 = call i64 @strlen(i8* %8) #13, !dbg !1388
  %10 = add i64 %9, 2, !dbg !1389
  %11 = call i8* @m_malloc(i64 %10), !dbg !1390
  store i8* %11, i8** %5, align 8, !dbg !1392
  %12 = load i8*, i8** %5, align 8, !dbg !1393
  %13 = load i8*, i8** %4, align 8, !dbg !1394
  %14 = call i8* @strcpy(i8* %12, i8* %13) #12, !dbg !1395
  %15 = load i8*, i8** %4, align 8, !dbg !1396
  %16 = call i64 @strlen(i8* %15) #13, !dbg !1397
  %17 = add i64 %16, 1, !dbg !1398
  %18 = load i8*, i8** %5, align 8, !dbg !1399
  %19 = getelementptr inbounds i8, i8* %18, i64 %17, !dbg !1399
  store i8 0, i8* %19, align 1, !dbg !1400
  %20 = load i8*, i8** %5, align 8, !dbg !1401
  store i8* %20, i8** %6, align 8, !dbg !1403
  br label %21, !dbg !1404

; <label>:21:                                     ; preds = %54, %2
  %22 = load i8*, i8** %6, align 8, !dbg !1405
  %23 = load i8, i8* %22, align 1, !dbg !1408
  %24 = icmp ne i8 %23, 0, !dbg !1409
  br i1 %24, label %25, label %57, !dbg !1409

; <label>:25:                                     ; preds = %21
  %26 = load i8*, i8** %6, align 8, !dbg !1410
  %27 = load i8, i8* %26, align 1, !dbg !1413
  %28 = sext i8 %27 to i32, !dbg !1413
  %29 = icmp ne i32 %28, 44, !dbg !1414
  br i1 %29, label %30, label %31, !dbg !1415

; <label>:30:                                     ; preds = %25
  br label %54, !dbg !1416

; <label>:31:                                     ; preds = %25
  %32 = load i8*, i8** %6, align 8, !dbg !1418
  %33 = getelementptr inbounds i8, i8* %32, i32 1, !dbg !1418
  store i8* %33, i8** %6, align 8, !dbg !1418
  store i8 0, i8* %32, align 1, !dbg !1419
  %34 = load i8*, i8** %6, align 8, !dbg !1420
  %35 = load i8, i8* %34, align 1, !dbg !1422
  %36 = icmp ne i8 %35, 0, !dbg !1422
  br i1 %36, label %37, label %47, !dbg !1423

; <label>:37:                                     ; preds = %31
  %38 = load i8*, i8** %6, align 8, !dbg !1424
  %39 = load i8, i8* %38, align 1, !dbg !1426
  %40 = sext i8 %39 to i32, !dbg !1426
  %41 = icmp eq i32 %40, 44, !dbg !1427
  br i1 %41, label %47, label %42, !dbg !1428

; <label>:42:                                     ; preds = %37
  %43 = load i8*, i8** %6, align 8, !dbg !1429
  %44 = load i8*, i8** %5, align 8, !dbg !1431
  %45 = getelementptr inbounds i8, i8* %44, i64 1, !dbg !1432
  %46 = icmp eq i8* %43, %45, !dbg !1433
  br i1 %46, label %47, label %53, !dbg !1434

; <label>:47:                                     ; preds = %42, %37, %31
  %48 = call i8* @gettext(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.104, i32 0, i32 0)) #12, !dbg !1435
  %49 = load %struct.cmdinfo*, %struct.cmdinfo** %3, align 8, !dbg !1436
  %50 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %49, i32 0, i32 0, !dbg !1437
  %51 = load i8*, i8** %50, align 8, !dbg !1437
  %52 = load i8*, i8** %4, align 8, !dbg !1438
  call void (i8*, ...) @badusage(i8* %48, i8* %51, i8* %52) #11, !dbg !1439
  unreachable, !dbg !1440

; <label>:53:                                     ; preds = %42
  br label %54, !dbg !1441

; <label>:54:                                     ; preds = %53, %30
  %55 = load i8*, i8** %6, align 8, !dbg !1442
  %56 = getelementptr inbounds i8, i8* %55, i32 1, !dbg !1442
  store i8* %56, i8** %6, align 8, !dbg !1442
  br label %21, !dbg !1444, !llvm.loop !1445

; <label>:57:                                     ; preds = %21
  %58 = load i8*, i8** %5, align 8, !dbg !1447
  store i8* %58, i8** %6, align 8, !dbg !1448
  br label %59, !dbg !1449

; <label>:59:                                     ; preds = %63, %57
  %60 = load i8*, i8** %6, align 8, !dbg !1450
  %61 = load i8, i8* %60, align 1, !dbg !1451
  %62 = icmp ne i8 %61, 0, !dbg !1452
  br i1 %62, label %63, label %73, !dbg !1452

; <label>:63:                                     ; preds = %59
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %7, metadata !1453, metadata !485), !dbg !1455
  %64 = load %struct.cmdinfo*, %struct.cmdinfo** %3, align 8, !dbg !1456
  %65 = load i8*, i8** %6, align 8, !dbg !1457
  %66 = call %struct.pkginfo* @dpkg_options_parse_pkgname(%struct.cmdinfo* %64, i8* %65), !dbg !1458
  store %struct.pkginfo* %66, %struct.pkginfo** %7, align 8, !dbg !1459
  %67 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1460
  call void @pkg_list_prepend(%struct.pkg_list** @ignoredependss, %struct.pkginfo* %67), !dbg !1461
  %68 = load i8*, i8** %6, align 8, !dbg !1462
  %69 = call i64 @strlen(i8* %68) #13, !dbg !1463
  %70 = add i64 %69, 1, !dbg !1464
  %71 = load i8*, i8** %6, align 8, !dbg !1465
  %72 = getelementptr inbounds i8, i8* %71, i64 %70, !dbg !1465
  store i8* %72, i8** %6, align 8, !dbg !1465
  br label %59, !dbg !1466, !llvm.loop !1468

; <label>:73:                                     ; preds = %59
  %74 = load i8*, i8** %5, align 8, !dbg !1469
  call void @free(i8* %74) #12, !dbg !1470
  ret void, !dbg !1471
}

declare void @set_force_option(%struct.cmdinfo*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @set_debug(%struct.cmdinfo*, i8*) #4 !dbg !1472 {
  %3 = alloca %struct.cmdinfo*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.debuginfo*, align 8
  store %struct.cmdinfo* %0, %struct.cmdinfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.cmdinfo** %3, metadata !1473, metadata !485), !dbg !1474
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1475, metadata !485), !dbg !1476
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1477, metadata !485), !dbg !1478
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1479, metadata !485), !dbg !1480
  call void @llvm.dbg.declare(metadata %struct.debuginfo** %7, metadata !1481, metadata !485), !dbg !1483
  %8 = load i8*, i8** %4, align 8, !dbg !1484
  %9 = load i8, i8* %8, align 1, !dbg !1486
  %10 = sext i8 %9 to i32, !dbg !1486
  %11 = icmp eq i32 %10, 104, !dbg !1487
  br i1 %11, label %12, label %40, !dbg !1488

; <label>:12:                                     ; preds = %2
  %13 = call i8* @gettext(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.105, i32 0, i32 0)) #12, !dbg !1489
  %14 = call i32 (i8*, ...) @printf(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0)), !dbg !1491
  store %struct.debuginfo* getelementptr inbounds ([14 x %struct.debuginfo], [14 x %struct.debuginfo]* @debuginfos, i32 0, i32 0), %struct.debuginfo** %7, align 8, !dbg !1493
  br label %15, !dbg !1495

; <label>:15:                                     ; preds = %32, %12
  %16 = load %struct.debuginfo*, %struct.debuginfo** %7, align 8, !dbg !1496
  %17 = getelementptr inbounds %struct.debuginfo, %struct.debuginfo* %16, i32 0, i32 1, !dbg !1499
  %18 = load i8*, i8** %17, align 8, !dbg !1499
  %19 = icmp ne i8* %18, null, !dbg !1500
  br i1 %19, label %20, label %35, !dbg !1500

; <label>:20:                                     ; preds = %15
  %21 = load %struct.debuginfo*, %struct.debuginfo** %7, align 8, !dbg !1501
  %22 = getelementptr inbounds %struct.debuginfo, %struct.debuginfo* %21, i32 0, i32 0, !dbg !1502
  %23 = load i32, i32* %22, align 8, !dbg !1502
  %24 = load %struct.debuginfo*, %struct.debuginfo** %7, align 8, !dbg !1503
  %25 = getelementptr inbounds %struct.debuginfo, %struct.debuginfo* %24, i32 0, i32 1, !dbg !1504
  %26 = load i8*, i8** %25, align 8, !dbg !1504
  %27 = load %struct.debuginfo*, %struct.debuginfo** %7, align 8, !dbg !1505
  %28 = getelementptr inbounds %struct.debuginfo, %struct.debuginfo* %27, i32 0, i32 2, !dbg !1506
  %29 = load i8*, i8** %28, align 8, !dbg !1506
  %30 = call i8* @gettext(i8* %29) #12, !dbg !1507
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.106, i32 0, i32 0), i32 %23, i8* %26, i8* %30), !dbg !1508
  br label %32, !dbg !1509

; <label>:32:                                     ; preds = %20
  %33 = load %struct.debuginfo*, %struct.debuginfo** %7, align 8, !dbg !1510
  %34 = getelementptr inbounds %struct.debuginfo, %struct.debuginfo* %33, i32 1, !dbg !1510
  store %struct.debuginfo* %34, %struct.debuginfo** %7, align 8, !dbg !1510
  br label %15, !dbg !1512, !llvm.loop !1513

; <label>:35:                                     ; preds = %15
  %36 = call i8* @gettext(i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.107, i32 0, i32 0)) #12, !dbg !1515
  %37 = call i32 (i8*, ...) @printf(i8* %36), !dbg !1516
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1517
  %39 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.108, i32 0, i32 0)) #12, !dbg !1518
  call void @m_output(%struct._IO_FILE* %38, i8* %39), !dbg !1519
  call void @exit(i32 0) #14, !dbg !1520
  unreachable, !dbg !1520

; <label>:40:                                     ; preds = %2
  %41 = call i32* @__errno_location() #1, !dbg !1521
  store i32 0, i32* %41, align 4, !dbg !1522
  %42 = load i8*, i8** %4, align 8, !dbg !1523
  %43 = call i64 @strtol(i8* %42, i8** %5, i32 8) #12, !dbg !1524
  store i64 %43, i64* %6, align 8, !dbg !1525
  %44 = load i8*, i8** %4, align 8, !dbg !1526
  %45 = load i8*, i8** %5, align 8, !dbg !1528
  %46 = icmp eq i8* %44, %45, !dbg !1529
  br i1 %46, label %59, label %47, !dbg !1530

; <label>:47:                                     ; preds = %40
  %48 = load i8*, i8** %5, align 8, !dbg !1531
  %49 = load i8, i8* %48, align 1, !dbg !1533
  %50 = sext i8 %49 to i32, !dbg !1533
  %51 = icmp ne i32 %50, 0, !dbg !1533
  br i1 %51, label %59, label %52, !dbg !1534

; <label>:52:                                     ; preds = %47
  %53 = load i64, i64* %6, align 8, !dbg !1535
  %54 = icmp slt i64 %53, 0, !dbg !1537
  br i1 %54, label %59, label %55, !dbg !1538

; <label>:55:                                     ; preds = %52
  %56 = call i32* @__errno_location() #1, !dbg !1539
  %57 = load i32, i32* %56, align 4, !dbg !1541
  %58 = icmp eq i32 %57, 34, !dbg !1542
  br i1 %58, label %59, label %64, !dbg !1543

; <label>:59:                                     ; preds = %55, %52, %47, %40
  %60 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.109, i32 0, i32 0)) #12, !dbg !1544
  %61 = load %struct.cmdinfo*, %struct.cmdinfo** %3, align 8, !dbg !1545
  %62 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %61, i32 0, i32 0, !dbg !1546
  %63 = load i8*, i8** %62, align 8, !dbg !1546
  call void (i8*, ...) @badusage(i8* %60, i8* %63) #11, !dbg !1547
  unreachable, !dbg !1548

; <label>:64:                                     ; preds = %55
  %65 = load i64, i64* %6, align 8, !dbg !1549
  %66 = trunc i64 %65 to i32, !dbg !1549
  call void @debug_set_mask(i32 %66), !dbg !1550
  ret void, !dbg !1551
}

; Function Attrs: noreturn nounwind uwtable
define internal void @usage(%struct.cmdinfo*, i8*) #0 !dbg !1552 {
  %3 = alloca %struct.cmdinfo*, align 8
  %4 = alloca i8*, align 8
  store %struct.cmdinfo* %0, %struct.cmdinfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.cmdinfo** %3, metadata !1553, metadata !485), !dbg !1554
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1555, metadata !485), !dbg !1556
  %5 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.135, i32 0, i32 0)) #12, !dbg !1557
  %6 = call i32 (i8*, ...) @printf(i8* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0)), !dbg !1558
  %7 = call i8* @gettext(i8* getelementptr inbounds ([2141 x i8], [2141 x i8]* @.str.136, i32 0, i32 0)) #12, !dbg !1560
  %8 = call i32 (i8*, ...) @printf(i8* %7), !dbg !1561
  %9 = call i8* @gettext(i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.137, i32 0, i32 0)) #12, !dbg !1562
  %10 = call i32 (i8*, ...) @printf(i8* %9), !dbg !1563
  %11 = call i8* @gettext(i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.138, i32 0, i32 0)) #12, !dbg !1564
  %12 = call i32 (i8*, ...) @printf(i8* %11), !dbg !1565
  %13 = call i8* @gettext(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.139, i32 0, i32 0)) #12, !dbg !1566
  %14 = call i32 (i8*, ...) @printf(i8* %13), !dbg !1567
  %15 = call i8* @gettext(i8* getelementptr inbounds ([179 x i8], [179 x i8]* @.str.140, i32 0, i32 0)) #12, !dbg !1568
  %16 = call i32 (i8*, ...) @printf(i8* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.86, i32 0, i32 0)), !dbg !1569
  %17 = call i8* @gettext(i8* getelementptr inbounds ([1645 x i8], [1645 x i8]* @.str.141, i32 0, i32 0)) #12, !dbg !1570
  %18 = call i32 (i8*, ...) @printf(i8* %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.103, i32 0, i32 0)), !dbg !1571
  %19 = call i8* @gettext(i8* getelementptr inbounds ([280 x i8], [280 x i8]* @.str.142, i32 0, i32 0)) #12, !dbg !1572
  %20 = call i32 (i8*, ...) @printf(i8* %19), !dbg !1573
  %21 = call i8* @gettext(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.143, i32 0, i32 0)) #12, !dbg !1574
  %22 = call i32 (i8*, ...) @printf(i8* %21), !dbg !1575
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1576
  %24 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.108, i32 0, i32 0)) #12, !dbg !1577
  call void @m_output(%struct._IO_FILE* %23, i8* %24), !dbg !1578
  call void @exit(i32 0) #14, !dbg !1579
  unreachable, !dbg !1579
                                                  ; No predecessors!
  ret void, !dbg !1580
}

; Function Attrs: noreturn nounwind uwtable
define internal void @printversion(%struct.cmdinfo*, i8*) #0 !dbg !1581 {
  %3 = alloca %struct.cmdinfo*, align 8
  %4 = alloca i8*, align 8
  store %struct.cmdinfo* %0, %struct.cmdinfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.cmdinfo** %3, metadata !1582, metadata !485), !dbg !1583
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1584, metadata !485), !dbg !1585
  %5 = call i8* @gettext(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.144, i32 0, i32 0)) #12, !dbg !1586
  %6 = call i32 (i8*, ...) @printf(i8* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.145, i32 0, i32 0)), !dbg !1587
  %7 = call i8* @gettext(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.146, i32 0, i32 0)) #12, !dbg !1589
  %8 = call i32 (i8*, ...) @printf(i8* %7), !dbg !1590
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1591
  %10 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.108, i32 0, i32 0)) #12, !dbg !1592
  call void @m_output(%struct._IO_FILE* %9, i8* %10), !dbg !1593
  call void @exit(i32 0) #14, !dbg !1594
  unreachable, !dbg !1594
                                                  ; No predecessors!
  ret void, !dbg !1595
}

declare void @dpkg_arch_load_list() #2

declare %struct.dpkg_arch* @dpkg_arch_add(i8*) #2

declare i8* @dpkg_arch_name_is_illegal(i8*) #2

declare void @dpkg_arch_save_list() #2

declare i32 @modstatdb_open(i32) #2

declare %struct.dpkg_arch* @dpkg_arch_find(i8*) #2

declare void @warning(i8*, ...) #2

declare %struct.pkg_hash_iter* @pkg_hash_iter_new() #2

declare %struct.pkginfo* @pkg_hash_iter_next_pkg(%struct.pkg_hash_iter*) #2

declare void @pkg_hash_iter_free(%struct.pkg_hash_iter*) #2

declare void @dpkg_arch_unmark(%struct.dpkg_arch*) #2

declare void @modstatdb_shutdown() #2

declare i8* @m_malloc(i64) #2

declare void @filter_add(i8*, i1 zeroext) #2

declare zeroext i1 @verify_set_output(i8*) #2

declare void @statusfd_add(i32) #2

declare void @pager_enable(i1 zeroext) #2

declare i8* @dpkg_fsys_set_dir(i8*) #2

declare i8* @dpkg_fsys_get_path(i8*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #8

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #6

declare %struct.pkginfo* @dpkg_options_parse_pkgname(%struct.cmdinfo*, i8*) #2

declare void @pkg_list_prepend(%struct.pkg_list**, %struct.pkginfo*) #2

; Function Attrs: nounwind
declare void @free(i8*) #6

declare i32 @printf(i8*, ...) #2

declare void @m_output(%struct._IO_FILE*, i8*) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #9

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #10

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #6

declare void @debug_set_mask(i32) #2

declare i32 @system(i8*) #2

; Function Attrs: nounwind
declare i32 @unsetenv(i8*) #6

; Function Attrs: nounwind uwtable
define internal i32 @run_logger(%struct.invoke_hook*, i8*) #4 !dbg !1596 {
  %3 = alloca %struct.invoke_hook*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  store %struct.invoke_hook* %0, %struct.invoke_hook** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.invoke_hook** %3, metadata !1599, metadata !485), !dbg !1600
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1601, metadata !485), !dbg !1602
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1603, metadata !485), !dbg !1606
  call void @llvm.dbg.declare(metadata [2 x i32]* %6, metadata !1607, metadata !485), !dbg !1611
  %7 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i32 0, i32 0, !dbg !1612
  call void @m_pipe(i32* %7), !dbg !1613
  %8 = call i32 @subproc_fork(), !dbg !1614
  store i32 %8, i32* %5, align 4, !dbg !1615
  %9 = load i32, i32* %5, align 4, !dbg !1616
  %10 = icmp eq i32 %9, 0, !dbg !1618
  br i1 %10, label %11, label %25, !dbg !1619

; <label>:11:                                     ; preds = %2
  %12 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0, !dbg !1620
  %13 = load i32, i32* %12, align 4, !dbg !1620
  call void @m_dup2(i32 %13, i32 0), !dbg !1622
  %14 = call i32 @close(i32 1), !dbg !1623
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0, !dbg !1624
  %16 = load i32, i32* %15, align 4, !dbg !1624
  %17 = call i32 @close(i32 %16), !dbg !1625
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1, !dbg !1626
  %19 = load i32, i32* %18, align 4, !dbg !1626
  %20 = call i32 @close(i32 %19), !dbg !1627
  %21 = load %struct.invoke_hook*, %struct.invoke_hook** %3, align 8, !dbg !1628
  %22 = getelementptr inbounds %struct.invoke_hook, %struct.invoke_hook* %21, i32 0, i32 1, !dbg !1629
  %23 = load i8*, i8** %22, align 8, !dbg !1629
  %24 = load i8*, i8** %4, align 8, !dbg !1630
  call void @command_shell(i8* %23, i8* %24) #11, !dbg !1631
  unreachable, !dbg !1631

; <label>:25:                                     ; preds = %2
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0, !dbg !1632
  %27 = load i32, i32* %26, align 4, !dbg !1632
  %28 = call i32 @close(i32 %27), !dbg !1633
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1, !dbg !1634
  %30 = load i32, i32* %29, align 4, !dbg !1634
  ret i32 %30, !dbg !1635
}

declare void @m_pipe(i32*) #2

declare i32 @subproc_fork() #2

declare void @m_dup2(i32, i32) #2

declare i32 @close(i32) #2

; Function Attrs: noreturn
declare void @command_shell(i8*, i8*) #3

attributes #0 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind readonly }
attributes #14 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!479, !480}
!llvm.ident = !{!481}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !202, globals: !212)
!1 = !DIFile(filename: "[inter]src--main.o.i", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!2 = !{!3, !15, !26, !35, !43, !47, !57, !67, !73, !81, !86, !99, !105, !136, !181, !192}
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
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fsys_namenode_flags", file: !87, line: 61, size: 32, align: 32, elements: !88)
!87 = !DIFile(filename: "../lib/dpkg/fsys.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
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
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !100, line: 41, size: 32, align: 32, elements: !101)
!100 = !DIFile(filename: "../lib/dpkg/ehandle.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!101 = !{!102, !103, !104}
!102 = !DIEnumerator(name: "ehflag_normaltidy", value: 1)
!103 = !DIEnumerator(name: "ehflag_bombout", value: 2)
!104 = !DIEnumerator(name: "ehflag_recursiveerror", value: 4)
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "force_flags", file: !106, line: 28, size: 32, align: 32, elements: !107)
!106 = !DIFile(filename: "force.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!107 = !{!108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135}
!108 = !DIEnumerator(name: "FORCE_ARCHITECTURE", value: 1)
!109 = !DIEnumerator(name: "FORCE_BAD_PATH", value: 2)
!110 = !DIEnumerator(name: "FORCE_BAD_VERIFY", value: 4)
!111 = !DIEnumerator(name: "FORCE_BAD_VERSION", value: 8)
!112 = !DIEnumerator(name: "FORCE_BREAKS", value: 16)
!113 = !DIEnumerator(name: "FORCE_CONFF_ASK", value: 32)
!114 = !DIEnumerator(name: "FORCE_CONFF_DEF", value: 64)
!115 = !DIEnumerator(name: "FORCE_CONFF_MISS", value: 128)
!116 = !DIEnumerator(name: "FORCE_CONFF_NEW", value: 256)
!117 = !DIEnumerator(name: "FORCE_CONFF_OLD", value: 512)
!118 = !DIEnumerator(name: "FORCE_CONFIGURE_ANY", value: 1024)
!119 = !DIEnumerator(name: "FORCE_CONFLICTS", value: 2048)
!120 = !DIEnumerator(name: "FORCE_DEPENDS", value: 4096)
!121 = !DIEnumerator(name: "FORCE_DEPENDS_VERSION", value: 8192)
!122 = !DIEnumerator(name: "FORCE_DOWNGRADE", value: 16384)
!123 = !DIEnumerator(name: "FORCE_HOLD", value: 32768)
!124 = !DIEnumerator(name: "FORCE_NON_ROOT", value: 65536)
!125 = !DIEnumerator(name: "FORCE_OVERWRITE", value: 131072)
!126 = !DIEnumerator(name: "FORCE_OVERWRITE_DIR", value: 262144)
!127 = !DIEnumerator(name: "FORCE_OVERWRITE_DIVERTED", value: 524288)
!128 = !DIEnumerator(name: "FORCE_REMOVE_ESSENTIAL", value: 1048576)
!129 = !DIEnumerator(name: "FORCE_REMOVE_REINSTREQ", value: 2097152)
!130 = !DIEnumerator(name: "FORCE_SCRIPT_CHROOTLESS", value: 4194304)
!131 = !DIEnumerator(name: "FORCE_UNSAFE_IO", value: 8388608)
!132 = !DIEnumerator(name: "FORCE_STATOVERRIDE_ADD", value: 16777216)
!133 = !DIEnumerator(name: "FORCE_STATOVERRIDE_DEL", value: 33554432)
!134 = !DIEnumerator(name: "FORCE_SECURITY_MAC", value: 67108864)
!135 = !DIEnumerator(name: "FORCE_ALL", value: -1)
!136 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "action", file: !74, line: 68, size: 32, align: 32, elements: !137)
!137 = !{!138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180}
!138 = !DIEnumerator(name: "act_unset", value: 0)
!139 = !DIEnumerator(name: "act_unpack", value: 1)
!140 = !DIEnumerator(name: "act_configure", value: 2)
!141 = !DIEnumerator(name: "act_install", value: 3)
!142 = !DIEnumerator(name: "act_triggers", value: 4)
!143 = !DIEnumerator(name: "act_remove", value: 5)
!144 = !DIEnumerator(name: "act_purge", value: 6)
!145 = !DIEnumerator(name: "act_verify", value: 7)
!146 = !DIEnumerator(name: "act_commandfd", value: 8)
!147 = !DIEnumerator(name: "act_status", value: 9)
!148 = !DIEnumerator(name: "act_listpackages", value: 10)
!149 = !DIEnumerator(name: "act_listfiles", value: 11)
!150 = !DIEnumerator(name: "act_searchfiles", value: 12)
!151 = !DIEnumerator(name: "act_controlpath", value: 13)
!152 = !DIEnumerator(name: "act_controllist", value: 14)
!153 = !DIEnumerator(name: "act_controlshow", value: 15)
!154 = !DIEnumerator(name: "act_cmpversions", value: 16)
!155 = !DIEnumerator(name: "act_arch_add", value: 17)
!156 = !DIEnumerator(name: "act_arch_remove", value: 18)
!157 = !DIEnumerator(name: "act_printarch", value: 19)
!158 = !DIEnumerator(name: "act_printforeignarches", value: 20)
!159 = !DIEnumerator(name: "act_assertpredep", value: 21)
!160 = !DIEnumerator(name: "act_assertepoch", value: 22)
!161 = !DIEnumerator(name: "act_assertlongfilenames", value: 23)
!162 = !DIEnumerator(name: "act_assertmulticonrep", value: 24)
!163 = !DIEnumerator(name: "act_assertmultiarch", value: 25)
!164 = !DIEnumerator(name: "act_assertverprovides", value: 26)
!165 = !DIEnumerator(name: "act_validate_pkgname", value: 27)
!166 = !DIEnumerator(name: "act_validate_trigname", value: 28)
!167 = !DIEnumerator(name: "act_validate_archname", value: 29)
!168 = !DIEnumerator(name: "act_validate_version", value: 30)
!169 = !DIEnumerator(name: "act_audit", value: 31)
!170 = !DIEnumerator(name: "act_unpackchk", value: 32)
!171 = !DIEnumerator(name: "act_predeppackage", value: 33)
!172 = !DIEnumerator(name: "act_getselections", value: 34)
!173 = !DIEnumerator(name: "act_setselections", value: 35)
!174 = !DIEnumerator(name: "act_clearselections", value: 36)
!175 = !DIEnumerator(name: "act_avail", value: 37)
!176 = !DIEnumerator(name: "act_printavail", value: 38)
!177 = !DIEnumerator(name: "act_avclear", value: 39)
!178 = !DIEnumerator(name: "act_avreplace", value: 40)
!179 = !DIEnumerator(name: "act_avmerge", value: 41)
!180 = !DIEnumerator(name: "act_forgetold", value: 42)
!181 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "c_ctype_bit", file: !182, line: 32, size: 32, align: 32, elements: !183)
!182 = !DIFile(filename: "../lib/dpkg/c-ctype.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!183 = !{!184, !185, !186, !187, !188, !189, !190, !191}
!184 = !DIEnumerator(name: "C_CTYPE_BLANK", value: 1)
!185 = !DIEnumerator(name: "C_CTYPE_WHITE", value: 2)
!186 = !DIEnumerator(name: "C_CTYPE_SPACE", value: 4)
!187 = !DIEnumerator(name: "C_CTYPE_UPPER", value: 8)
!188 = !DIEnumerator(name: "C_CTYPE_LOWER", value: 16)
!189 = !DIEnumerator(name: "C_CTYPE_DIGIT", value: 32)
!190 = !DIEnumerator(name: "C_CTYPE_ALPHA", value: 24)
!191 = !DIEnumerator(name: "C_CTYPE_ALNUM", value: 56)
!192 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "modstatdb_rw", file: !4, line: 263, size: 32, align: 32, elements: !193)
!193 = !{!194, !195, !196, !197, !198, !199, !200, !201}
!194 = !DIEnumerator(name: "msdbrw_readonly", value: 0)
!195 = !DIEnumerator(name: "msdbrw_needsuperuserlockonly", value: 1)
!196 = !DIEnumerator(name: "msdbrw_writeifposs", value: 2)
!197 = !DIEnumerator(name: "msdbrw_write", value: 3)
!198 = !DIEnumerator(name: "msdbrw_needsuperuser", value: 4)
!199 = !DIEnumerator(name: "msdbrw_available_readonly", value: 256)
!200 = !DIEnumerator(name: "msdbrw_available_write", value: 512)
!201 = !DIEnumerator(name: "msdbrw_available_mask", value: 65280)
!202 = !{!203, !207, !208, !209}
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64, align: 64)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64, align: 64)
!205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !206)
!206 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!208 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64, align: 64)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !204)
!212 = !{!213, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !425, !436, !437, !438, !464, !474, !478}
!213 = distinct !DIGlobalVariable(name: "f_pending", scope: !0, file: !214, line: 192, type: !208, isLocal: false, isDefinition: true, variable: i32* @f_pending)
!214 = !DIFile(filename: "main.c", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!215 = distinct !DIGlobalVariable(name: "f_recursive", scope: !0, file: !214, line: 192, type: !208, isLocal: false, isDefinition: true, variable: i32* @f_recursive)
!216 = distinct !DIGlobalVariable(name: "f_alsoselect", scope: !0, file: !214, line: 192, type: !208, isLocal: false, isDefinition: true, variable: i32* @f_alsoselect)
!217 = distinct !DIGlobalVariable(name: "f_skipsame", scope: !0, file: !214, line: 192, type: !208, isLocal: false, isDefinition: true, variable: i32* @f_skipsame)
!218 = distinct !DIGlobalVariable(name: "f_noact", scope: !0, file: !214, line: 192, type: !208, isLocal: false, isDefinition: true, variable: i32* @f_noact)
!219 = distinct !DIGlobalVariable(name: "f_autodeconf", scope: !0, file: !214, line: 193, type: !208, isLocal: false, isDefinition: true, variable: i32* @f_autodeconf)
!220 = distinct !DIGlobalVariable(name: "f_nodebsig", scope: !0, file: !214, line: 193, type: !208, isLocal: false, isDefinition: true, variable: i32* @f_nodebsig)
!221 = distinct !DIGlobalVariable(name: "f_triggers", scope: !0, file: !214, line: 194, type: !208, isLocal: false, isDefinition: true, variable: i32* @f_triggers)
!222 = distinct !DIGlobalVariable(name: "errabort", scope: !0, file: !214, line: 196, type: !208, isLocal: false, isDefinition: true, variable: i32* @errabort)
!223 = distinct !DIGlobalVariable(name: "instdir", scope: !0, file: !214, line: 198, type: !204, isLocal: false, isDefinition: true, variable: i8** @instdir)
!224 = distinct !DIGlobalVariable(name: "ignoredependss", scope: !0, file: !214, line: 199, type: !225, isLocal: false, isDefinition: true, variable: %struct.pkg_list** @ignoredependss)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64, align: 64)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_list", file: !227, line: 34, size: 128, align: 64, elements: !228)
!227 = !DIFile(filename: "../lib/dpkg/pkg-list.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!228 = !{!229, !230}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !226, file: !227, line: 35, baseType: !225, size: 64, align: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !226, file: !227, line: 36, baseType: !231, size: 64, align: 64, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64, align: 64)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkginfo", file: !4, line: 195, size: 3072, align: 64, elements: !233)
!233 = !{!234, !282, !283, !284, !285, !286, !287, !288, !289, !290, !320, !321, !331, !340, !356, !357, !363, !419, !423, !424}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !232, file: !4, line: 196, baseType: !235, size: 64, align: 64)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64, align: 64)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgset", file: !4, line: 242, size: 3392, align: 64, elements: !237)
!237 = !{!238, !239, !240, !241, !281}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !236, file: !4, line: 243, baseType: !235, size: 64, align: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !236, file: !4, line: 244, baseType: !204, size: 64, align: 64, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !236, file: !4, line: 245, baseType: !232, size: 3072, align: 64, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "depended", scope: !236, file: !4, line: 249, baseType: !242, size: 128, align: 64, offset: 3200)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !236, file: !4, line: 246, size: 128, align: 64, elements: !243)
!243 = !{!244, !280}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !242, file: !4, line: 247, baseType: !245, size: 64, align: 64)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64, align: 64)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "deppossi", file: !4, line: 63, size: 640, align: 64, elements: !247)
!247 = !{!248, !256, !257, !258, !259, !260, !269, !276, !277, !279}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !246, file: !4, line: 64, baseType: !249, size: 64, align: 64)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64, align: 64)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dependency", file: !4, line: 56, size: 256, align: 64, elements: !251)
!251 = !{!252, !253, !254, !255}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !250, file: !4, line: 57, baseType: !231, size: 64, align: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !250, file: !4, line: 58, baseType: !249, size: 64, align: 64, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !250, file: !4, line: 59, baseType: !245, size: 64, align: 64, offset: 128)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !250, file: !4, line: 60, baseType: !3, size: 32, align: 32, offset: 192)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "ed", scope: !246, file: !4, line: 65, baseType: !235, size: 64, align: 64, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !246, file: !4, line: 66, baseType: !245, size: 64, align: 64, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "rev_next", scope: !246, file: !4, line: 66, baseType: !245, size: 64, align: 64, offset: 192)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "rev_prev", scope: !246, file: !4, line: 66, baseType: !245, size: 64, align: 64, offset: 256)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !246, file: !4, line: 67, baseType: !261, size: 64, align: 64, offset: 320)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64, align: 64)
!262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !263)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_arch", file: !16, line: 48, size: 192, align: 64, elements: !264)
!264 = !{!265, !267, !268}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !263, file: !16, line: 49, baseType: !266, size: 64, align: 64)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64, align: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !263, file: !16, line: 50, baseType: !204, size: 64, align: 64, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !263, file: !16, line: 51, baseType: !15, size: 32, align: 32, offset: 128)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !246, file: !4, line: 68, baseType: !270, size: 192, align: 64, offset: 384)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_version", file: !27, line: 42, size: 192, align: 64, elements: !271)
!271 = !{!272, !274, !275}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !270, file: !27, line: 44, baseType: !273, size: 32, align: 32)
!273 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !270, file: !27, line: 46, baseType: !204, size: 64, align: 64, offset: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !270, file: !27, line: 48, baseType: !204, size: 64, align: 64, offset: 128)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "verrel", scope: !246, file: !4, line: 69, baseType: !26, size: 32, align: 32, offset: 576)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "arch_is_implicit", scope: !246, file: !4, line: 70, baseType: !278, size: 8, align: 8, offset: 608)
!278 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "cyclebreak", scope: !246, file: !4, line: 71, baseType: !278, size: 8, align: 8, offset: 616)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !242, file: !4, line: 248, baseType: !245, size: 64, align: 64, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "installed_instances", scope: !236, file: !4, line: 250, baseType: !208, size: 32, align: 32, offset: 3328)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "arch_next", scope: !232, file: !4, line: 197, baseType: !231, size: 64, align: 64, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "want", scope: !232, file: !4, line: 199, baseType: !35, size: 32, align: 32, offset: 128)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "eflag", scope: !232, file: !4, line: 201, baseType: !43, size: 32, align: 32, offset: 160)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !232, file: !4, line: 202, baseType: !47, size: 32, align: 32, offset: 192)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !232, file: !4, line: 203, baseType: !57, size: 32, align: 32, offset: 224)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "otherpriority", scope: !232, file: !4, line: 204, baseType: !204, size: 64, align: 64, offset: 256)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "section", scope: !232, file: !4, line: 205, baseType: !204, size: 64, align: 64, offset: 320)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "configversion", scope: !232, file: !4, line: 206, baseType: !270, size: 192, align: 64, offset: 384)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !232, file: !4, line: 207, baseType: !291, size: 960, align: 64, offset: 576)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgbin", file: !4, line: 107, size: 960, align: 64, elements: !292)
!292 = !{!293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !313}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "depends", scope: !291, file: !4, line: 108, baseType: !249, size: 64, align: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "essential", scope: !291, file: !4, line: 110, baseType: !278, size: 8, align: 8, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "multiarch", scope: !291, file: !4, line: 111, baseType: !67, size: 32, align: 32, offset: 96)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !291, file: !4, line: 112, baseType: !261, size: 64, align: 64, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "pkgname_archqual", scope: !291, file: !4, line: 115, baseType: !204, size: 64, align: 64, offset: 192)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !291, file: !4, line: 116, baseType: !204, size: 64, align: 64, offset: 256)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "maintainer", scope: !291, file: !4, line: 117, baseType: !204, size: 64, align: 64, offset: 320)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !291, file: !4, line: 118, baseType: !204, size: 64, align: 64, offset: 384)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "installedsize", scope: !291, file: !4, line: 119, baseType: !204, size: 64, align: 64, offset: 448)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !291, file: !4, line: 120, baseType: !204, size: 64, align: 64, offset: 512)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "bugs", scope: !291, file: !4, line: 121, baseType: !204, size: 64, align: 64, offset: 576)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !291, file: !4, line: 122, baseType: !270, size: 192, align: 64, offset: 640)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "conffiles", scope: !291, file: !4, line: 123, baseType: !306, size: 64, align: 64, offset: 832)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64, align: 64)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conffile", file: !4, line: 80, size: 256, align: 64, elements: !308)
!308 = !{!309, !310, !311, !312}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !307, file: !4, line: 81, baseType: !306, size: 64, align: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !307, file: !4, line: 82, baseType: !204, size: 64, align: 64, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !307, file: !4, line: 83, baseType: !204, size: 64, align: 64, offset: 128)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "obsolete", scope: !307, file: !4, line: 84, baseType: !278, size: 8, align: 8, offset: 192)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "arbs", scope: !291, file: !4, line: 124, baseType: !314, size: 64, align: 64, offset: 896)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64, align: 64)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arbitraryfield", file: !4, line: 74, size: 192, align: 64, elements: !316)
!316 = !{!317, !318, !319}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !315, file: !4, line: 75, baseType: !314, size: 64, align: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !315, file: !4, line: 76, baseType: !204, size: 64, align: 64, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !315, file: !4, line: 77, baseType: !204, size: 64, align: 64, offset: 128)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !232, file: !4, line: 208, baseType: !291, size: 960, align: 64, offset: 1536)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "clientdata", scope: !232, file: !4, line: 209, baseType: !322, size: 64, align: 64, offset: 2496)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64, align: 64)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perpackagestate", file: !74, line: 53, size: 256, align: 64, elements: !324)
!324 = !{!325, !326, !327, !328, !329, !330}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "istobe", scope: !323, file: !74, line: 54, baseType: !73, size: 32, align: 32)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !323, file: !74, line: 57, baseType: !81, size: 32, align: 32, offset: 32)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !323, file: !74, line: 59, baseType: !278, size: 8, align: 8, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "replacingfilesandsaid", scope: !323, file: !74, line: 61, baseType: !208, size: 32, align: 32, offset: 96)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "cmdline_seen", scope: !323, file: !74, line: 62, baseType: !208, size: 32, align: 32, offset: 128)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "trigprocdeferred", scope: !323, file: !74, line: 65, baseType: !225, size: 64, align: 64, offset: 192)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "archives", scope: !232, file: !4, line: 211, baseType: !332, size: 64, align: 64, offset: 2560)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64, align: 64)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archivedetails", file: !4, line: 87, size: 320, align: 64, elements: !334)
!334 = !{!335, !336, !337, !338, !339}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !333, file: !4, line: 88, baseType: !332, size: 64, align: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !333, file: !4, line: 89, baseType: !204, size: 64, align: 64, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "msdosname", scope: !333, file: !4, line: 90, baseType: !204, size: 64, align: 64, offset: 128)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !333, file: !4, line: 91, baseType: !204, size: 64, align: 64, offset: 192)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "md5sum", scope: !333, file: !4, line: 92, baseType: !204, size: 64, align: 64, offset: 256)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "trigaw", scope: !232, file: !4, line: 216, baseType: !341, size: 128, align: 64, offset: 2624)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !232, file: !4, line: 213, size: 128, align: 64, elements: !342)
!342 = !{!343, !355}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !341, file: !4, line: 215, baseType: !344, size: 64, align: 64)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64, align: 64)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigaw", file: !4, line: 142, size: 320, align: 64, elements: !346)
!346 = !{!347, !348, !349, !350}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "aw", scope: !345, file: !4, line: 143, baseType: !231, size: 64, align: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "pend", scope: !345, file: !4, line: 143, baseType: !231, size: 64, align: 64, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "samepend_next", scope: !345, file: !4, line: 144, baseType: !344, size: 64, align: 64, offset: 128)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "sameaw", scope: !345, file: !4, line: 147, baseType: !351, size: 128, align: 64, offset: 192)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !345, file: !4, line: 145, size: 128, align: 64, elements: !352)
!352 = !{!353, !354}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !351, file: !4, line: 146, baseType: !344, size: 64, align: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !351, file: !4, line: 146, baseType: !344, size: 64, align: 64, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !341, file: !4, line: 215, baseType: !344, size: 64, align: 64, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "othertrigaw_head", scope: !232, file: !4, line: 219, baseType: !344, size: 64, align: 64, offset: 2752)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "trigpend_head", scope: !232, file: !4, line: 220, baseType: !358, size: 64, align: 64, offset: 2816)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64, align: 64)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigpend", file: !4, line: 134, size: 128, align: 64, elements: !360)
!360 = !{!361, !362}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !359, file: !4, line: 135, baseType: !358, size: 64, align: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !359, file: !4, line: 136, baseType: !204, size: 64, align: 64, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !232, file: !4, line: 231, baseType: !364, size: 64, align: 64, offset: 2880)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64, align: 64)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode_list", file: !87, line: 122, size: 128, align: 64, elements: !366)
!366 = !{!367, !368}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !365, file: !87, line: 123, baseType: !364, size: 64, align: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "namenode", scope: !365, file: !87, line: 124, baseType: !369, size: 64, align: 64, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64, align: 64)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode", file: !87, line: 90, size: 640, align: 64, elements: !371)
!371 = !{!372, !373, !374, !375, !383, !402, !405, !406, !407, !408}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !370, file: !87, line: 91, baseType: !369, size: 64, align: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !370, file: !87, line: 92, baseType: !204, size: 64, align: 64, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "packages", scope: !370, file: !87, line: 93, baseType: !225, size: 64, align: 64, offset: 128)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "divert", scope: !370, file: !87, line: 94, baseType: !376, size: 64, align: 64, offset: 192)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64, align: 64)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_diversion", file: !87, line: 151, size: 256, align: 64, elements: !378)
!378 = !{!379, !380, !381, !382}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "useinstead", scope: !377, file: !87, line: 152, baseType: !369, size: 64, align: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "camefrom", scope: !377, file: !87, line: 153, baseType: !369, size: 64, align: 64, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "pkgset", scope: !377, file: !87, line: 154, baseType: !235, size: 64, align: 64, offset: 128)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !377, file: !87, line: 157, baseType: !376, size: 64, align: 64, offset: 192)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "statoverride", scope: !370, file: !87, line: 101, baseType: !384, size: 64, align: 64, offset: 256)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64, align: 64)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_stat", file: !386, line: 40, size: 256, align: 64, elements: !387)
!386 = !DIFile(filename: "../lib/dpkg/file.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!387 = !{!388, !393, !396, !399, !401}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !385, file: !386, line: 41, baseType: !389, size: 32, align: 32)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !390, line: 80, baseType: !391)
!390 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !392, line: 125, baseType: !273)
!392 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!393 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !385, file: !386, line: 42, baseType: !394, size: 32, align: 32, offset: 32)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !390, line: 65, baseType: !395)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !392, line: 126, baseType: !273)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !385, file: !386, line: 43, baseType: !397, size: 32, align: 32, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !390, line: 70, baseType: !398)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !392, line: 129, baseType: !273)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "uname", scope: !385, file: !386, line: 47, baseType: !400, size: 64, align: 64, offset: 128)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64, align: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !385, file: !386, line: 48, baseType: !400, size: 64, align: 64, offset: 192)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "trig_interested", scope: !370, file: !87, line: 103, baseType: !403, size: 64, align: 64, offset: 320)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64, align: 64)
!404 = !DICompositeType(tag: DW_TAG_structure_type, name: "trigfileint", file: !87, line: 103, flags: DIFlagFwdDecl)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !370, file: !87, line: 111, baseType: !86, size: 32, align: 32, offset: 384)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "oldhash", scope: !370, file: !87, line: 114, baseType: !204, size: 64, align: 64, offset: 448)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "newhash", scope: !370, file: !87, line: 117, baseType: !204, size: 64, align: 64, offset: 512)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "file_ondisk_id", scope: !370, file: !87, line: 119, baseType: !409, size: 64, align: 64, offset: 576)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64, align: 64)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ondisk_id", file: !87, line: 85, size: 128, align: 64, elements: !411)
!411 = !{!412, !416}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "id_dev", scope: !410, file: !87, line: 86, baseType: !413, size: 64, align: 64)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !390, line: 60, baseType: !414)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !392, line: 124, baseType: !415)
!415 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "id_ino", scope: !410, file: !87, line: 87, baseType: !417, size: 64, align: 64, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !390, line: 48, baseType: !418)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !392, line: 127, baseType: !415)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_phys_offs", scope: !232, file: !4, line: 232, baseType: !420, size: 64, align: 64, offset: 2944)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !390, line: 86, baseType: !421)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !392, line: 131, baseType: !422)
!422 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_valid", scope: !232, file: !4, line: 233, baseType: !278, size: 8, align: 8, offset: 3008)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "status_dirty", scope: !232, file: !4, line: 236, baseType: !278, size: 8, align: 8, offset: 3016)
!425 = distinct !DIGlobalVariable(name: "pre_invoke_hooks", scope: !0, file: !214, line: 353, type: !426, isLocal: false, isDefinition: true, variable: %struct.invoke_list* @pre_invoke_hooks)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "invoke_list", file: !74, line: 139, size: 128, align: 64, elements: !427)
!427 = !{!428, !434}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !426, file: !74, line: 140, baseType: !429, size: 64, align: 64)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64, align: 64)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "invoke_hook", file: !74, line: 134, size: 128, align: 64, elements: !431)
!431 = !{!432, !433}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !430, file: !74, line: 135, baseType: !429, size: 64, align: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "command", scope: !430, file: !74, line: 136, baseType: !400, size: 64, align: 64, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !426, file: !74, line: 140, baseType: !435, size: 64, align: 64, offset: 64)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64, align: 64)
!436 = distinct !DIGlobalVariable(name: "post_invoke_hooks", scope: !0, file: !214, line: 354, type: !426, isLocal: false, isDefinition: true, variable: %struct.invoke_list* @post_invoke_hooks)
!437 = distinct !DIGlobalVariable(name: "status_loggers", scope: !0, file: !214, line: 355, type: !426, isLocal: false, isDefinition: true, variable: %struct.invoke_list* @status_loggers)
!438 = distinct !DIGlobalVariable(name: "cmdinfos", scope: !0, file: !214, line: 520, type: !439, isLocal: true, isDefinition: true, variable: [81 x %struct.cmdinfo]* @cmdinfos)
!439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !440, size: 41472, align: 64, elements: !462)
!440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !441)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cmdinfo", file: !442, line: 38, size: 512, align: 64, elements: !443)
!442 = !DIFile(filename: "../lib/dpkg/options.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!443 = !{!444, !445, !446, !447, !449, !450, !455, !456, !457}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "olong", scope: !441, file: !442, line: 39, baseType: !204, size: 64, align: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "oshort", scope: !441, file: !442, line: 40, baseType: !206, size: 8, align: 8, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "takesvalue", scope: !441, file: !442, line: 48, baseType: !208, size: 32, align: 32, offset: 96)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "iassignto", scope: !441, file: !442, line: 49, baseType: !448, size: 64, align: 64, offset: 128)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64, align: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "sassignto", scope: !441, file: !442, line: 50, baseType: !203, size: 64, align: 64, offset: 192)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !441, file: !442, line: 51, baseType: !451, size: 64, align: 64, offset: 256)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64, align: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{null, !454, !204}
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64, align: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "arg_int", scope: !441, file: !442, line: 53, baseType: !208, size: 32, align: 32, offset: 320)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "arg_ptr", scope: !441, file: !442, line: 54, baseType: !207, size: 64, align: 64, offset: 384)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !441, file: !442, line: 56, baseType: !458, size: 64, align: 64, offset: 448)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64, align: 64)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "action_func", file: !442, line: 36, baseType: !460)
!460 = !DISubroutineType(types: !461)
!461 = !{!208, !210}
!462 = !{!463}
!463 = !DISubrange(count: 81)
!464 = distinct !DIGlobalVariable(name: "debuginfos", scope: !0, file: !214, line: 208, type: !465, isLocal: true, isDefinition: true, variable: [14 x %struct.debuginfo]* @debuginfos)
!465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !466, size: 2688, align: 64, elements: !472)
!466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !467)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "debuginfo", file: !214, line: 204, size: 192, align: 64, elements: !468)
!468 = !{!469, !470, !471}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !467, file: !214, line: 205, baseType: !208, size: 32, align: 32)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !467, file: !214, line: 206, baseType: !204, size: 64, align: 64, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !467, file: !214, line: 207, baseType: !204, size: 64, align: 64, offset: 128)
!472 = !{!473}
!473 = !DISubrange(count: 14)
!474 = distinct !DIGlobalVariable(name: "printforhelp", scope: !0, file: !214, line: 183, type: !475, isLocal: true, isDefinition: true, variable: [388 x i8]* @printforhelp)
!475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 3104, align: 8, elements: !476)
!476 = !{!477}
!477 = !DISubrange(count: 388)
!478 = distinct !DIGlobalVariable(name: "admindir", scope: !0, file: !214, line: 197, type: !204, isLocal: true, isDefinition: true, variable: i8** @admindir)
!479 = !{i32 2, !"Dwarf Version", i32 4}
!480 = !{i32 2, !"Debug Info Version", i32 3}
!481 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!482 = distinct !DISubprogram(name: "execbackend", scope: !214, file: !214, line: 614, type: !460, isLocal: false, isDefinition: true, scopeLine: 615, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !483)
!483 = !{}
!484 = !DILocalVariable(name: "argv", arg: 1, scope: !482, file: !214, line: 614, type: !210)
!485 = !DIExpression()
!486 = !DILocation(line: 614, column: 32, scope: !482)
!487 = !DILocalVariable(name: "cmd", scope: !482, file: !214, line: 616, type: !488)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "command", file: !489, line: 37, size: 256, align: 64, elements: !490)
!489 = !DIFile(filename: "../lib/dpkg/command.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!490 = !{!491, !492, !493, !494, !495}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !488, file: !489, line: 39, baseType: !204, size: 64, align: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !488, file: !489, line: 41, baseType: !204, size: 64, align: 64, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !488, file: !489, line: 42, baseType: !208, size: 32, align: 32, offset: 128)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "argv_size", scope: !488, file: !489, line: 43, baseType: !208, size: 32, align: 32, offset: 160)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !488, file: !489, line: 44, baseType: !203, size: 64, align: 64, offset: 192)
!496 = !DILocation(line: 616, column: 18, scope: !482)
!497 = !DILocation(line: 618, column: 22, scope: !482)
!498 = !DILocation(line: 618, column: 33, scope: !482)
!499 = !DILocation(line: 618, column: 3, scope: !482)
!500 = !DILocation(line: 619, column: 25, scope: !482)
!501 = !DILocation(line: 619, column: 36, scope: !482)
!502 = !DILocation(line: 619, column: 3, scope: !482)
!503 = !DILocation(line: 620, column: 41, scope: !482)
!504 = !DILocation(line: 620, column: 52, scope: !482)
!505 = !DILocation(line: 620, column: 25, scope: !482)
!506 = !DILocation(line: 620, column: 3, scope: !507)
!507 = !DILexicalBlockFile(scope: !482, file: !214, discriminator: 1)
!508 = !DILocation(line: 624, column: 3, scope: !482)
!509 = !DILocation(line: 625, column: 41, scope: !482)
!510 = !DILocation(line: 625, column: 3, scope: !482)
!511 = !DILocation(line: 627, column: 3, scope: !482)
!512 = !DILocation(line: 628, column: 1, scope: !482)
!513 = distinct !DISubprogram(name: "commandfd", scope: !214, file: !214, line: 631, type: !460, isLocal: false, isDefinition: true, scopeLine: 632, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !483)
!514 = !DILocalVariable(name: "argv", arg: 1, scope: !513, file: !214, line: 631, type: !210)
!515 = !DILocation(line: 631, column: 30, scope: !513)
!516 = !DILocalVariable(name: "linevb", scope: !513, file: !214, line: 633, type: !517)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varbuf", file: !518, line: 55, size: 192, align: 64, elements: !519)
!518 = !DIFile(filename: "../lib/dpkg/varbuf.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!519 = !{!520, !523, !524}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !517, file: !518, line: 56, baseType: !521, size: 64, align: 64)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !522, line: 216, baseType: !415)
!522 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!523 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !517, file: !518, line: 56, baseType: !521, size: 64, align: 64, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !517, file: !518, line: 57, baseType: !400, size: 64, align: 64, offset: 128)
!525 = !DILocation(line: 633, column: 17, scope: !513)
!526 = !DILocalVariable(name: "pipein", scope: !513, file: !214, line: 634, type: !204)
!527 = !DILocation(line: 634, column: 16, scope: !513)
!528 = !DILocalVariable(name: "newargs", scope: !513, file: !214, line: 635, type: !203)
!529 = !DILocation(line: 635, column: 16, scope: !513)
!530 = !DILocalVariable(name: "endargs", scope: !513, file: !214, line: 635, type: !203)
!531 = !DILocation(line: 635, column: 33, scope: !513)
!532 = !DILocalVariable(name: "ptr", scope: !513, file: !214, line: 636, type: !400)
!533 = !DILocation(line: 636, column: 9, scope: !513)
!534 = !DILocalVariable(name: "endptr", scope: !513, file: !214, line: 636, type: !400)
!535 = !DILocation(line: 636, column: 15, scope: !513)
!536 = !DILocalVariable(name: "in", scope: !513, file: !214, line: 637, type: !537)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64, align: 64)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !539, line: 48, baseType: !540)
!539 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !541, line: 241, size: 1728, align: 64, elements: !542)
!541 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!542 = !{!543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !563, !564, !565, !566, !567, !569, !571, !575, !578, !580, !581, !582, !583, !584, !585, !586}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !540, file: !541, line: 242, baseType: !208, size: 32, align: 32)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !540, file: !541, line: 247, baseType: !400, size: 64, align: 64, offset: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !540, file: !541, line: 248, baseType: !400, size: 64, align: 64, offset: 128)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !540, file: !541, line: 249, baseType: !400, size: 64, align: 64, offset: 192)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !540, file: !541, line: 250, baseType: !400, size: 64, align: 64, offset: 256)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !540, file: !541, line: 251, baseType: !400, size: 64, align: 64, offset: 320)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !540, file: !541, line: 252, baseType: !400, size: 64, align: 64, offset: 384)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !540, file: !541, line: 253, baseType: !400, size: 64, align: 64, offset: 448)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !540, file: !541, line: 254, baseType: !400, size: 64, align: 64, offset: 512)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !540, file: !541, line: 256, baseType: !400, size: 64, align: 64, offset: 576)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !540, file: !541, line: 257, baseType: !400, size: 64, align: 64, offset: 640)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !540, file: !541, line: 258, baseType: !400, size: 64, align: 64, offset: 704)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !540, file: !541, line: 260, baseType: !556, size: 64, align: 64, offset: 768)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64, align: 64)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !541, line: 156, size: 192, align: 64, elements: !558)
!558 = !{!559, !560, !562}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !557, file: !541, line: 157, baseType: !556, size: 64, align: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !557, file: !541, line: 158, baseType: !561, size: 64, align: 64, offset: 64)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64, align: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !557, file: !541, line: 162, baseType: !208, size: 32, align: 32, offset: 128)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !540, file: !541, line: 262, baseType: !561, size: 64, align: 64, offset: 832)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !540, file: !541, line: 264, baseType: !208, size: 32, align: 32, offset: 896)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !540, file: !541, line: 268, baseType: !208, size: 32, align: 32, offset: 928)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !540, file: !541, line: 270, baseType: !421, size: 64, align: 64, offset: 960)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !540, file: !541, line: 274, baseType: !568, size: 16, align: 16, offset: 1024)
!568 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !540, file: !541, line: 275, baseType: !570, size: 8, align: 8, offset: 1040)
!570 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !540, file: !541, line: 276, baseType: !572, size: 8, align: 8, offset: 1048)
!572 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 8, align: 8, elements: !573)
!573 = !{!574}
!574 = !DISubrange(count: 1)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !540, file: !541, line: 280, baseType: !576, size: 64, align: 64, offset: 1088)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64, align: 64)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !541, line: 150, baseType: null)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !540, file: !541, line: 289, baseType: !579, size: 64, align: 64, offset: 1152)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !392, line: 132, baseType: !422)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !540, file: !541, line: 297, baseType: !207, size: 64, align: 64, offset: 1216)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !540, file: !541, line: 298, baseType: !207, size: 64, align: 64, offset: 1280)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !540, file: !541, line: 299, baseType: !207, size: 64, align: 64, offset: 1344)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !540, file: !541, line: 300, baseType: !207, size: 64, align: 64, offset: 1408)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !540, file: !541, line: 302, baseType: !521, size: 64, align: 64, offset: 1472)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !540, file: !541, line: 303, baseType: !208, size: 32, align: 32, offset: 1536)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !540, file: !541, line: 305, baseType: !587, size: 160, align: 8, offset: 1568)
!587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 160, align: 8, elements: !588)
!588 = !{!589}
!589 = !DISubrange(count: 20)
!590 = !DILocation(line: 637, column: 9, scope: !513)
!591 = !DILocalVariable(name: "infd", scope: !513, file: !214, line: 638, type: !422)
!592 = !DILocation(line: 638, column: 8, scope: !513)
!593 = !DILocalVariable(name: "ret", scope: !513, file: !214, line: 639, type: !208)
!594 = !DILocation(line: 639, column: 7, scope: !513)
!595 = !DILocalVariable(name: "c", scope: !513, file: !214, line: 640, type: !208)
!596 = !DILocation(line: 640, column: 7, scope: !513)
!597 = !DILocalVariable(name: "lno", scope: !513, file: !214, line: 640, type: !208)
!598 = !DILocation(line: 640, column: 10, scope: !513)
!599 = !DILocalVariable(name: "i", scope: !513, file: !214, line: 640, type: !208)
!600 = !DILocation(line: 640, column: 15, scope: !513)
!601 = !DILocalVariable(name: "skipchar", scope: !513, file: !214, line: 641, type: !278)
!602 = !DILocation(line: 641, column: 7, scope: !513)
!603 = !DILocation(line: 643, column: 17, scope: !513)
!604 = !DILocation(line: 643, column: 12, scope: !513)
!605 = !DILocation(line: 643, column: 10, scope: !513)
!606 = !DILocation(line: 644, column: 7, scope: !607)
!607 = distinct !DILexicalBlock(scope: !513, file: !214, line: 644, column: 7)
!608 = !DILocation(line: 644, column: 14, scope: !607)
!609 = !DILocation(line: 644, column: 21, scope: !607)
!610 = !DILocation(line: 644, column: 25, scope: !611)
!611 = !DILexicalBlockFile(scope: !607, file: !214, discriminator: 1)
!612 = !DILocation(line: 644, column: 24, scope: !611)
!613 = !DILocation(line: 644, column: 7, scope: !611)
!614 = !DILocation(line: 645, column: 14, scope: !607)
!615 = !DILocation(line: 645, column: 58, scope: !607)
!616 = !DILocation(line: 645, column: 69, scope: !607)
!617 = !DILocation(line: 645, column: 5, scope: !611)
!618 = !DILocation(line: 645, column: 5, scope: !607)
!619 = !DILocation(line: 647, column: 37, scope: !513)
!620 = !DILocation(line: 647, column: 48, scope: !513)
!621 = !DILocation(line: 647, column: 10, scope: !513)
!622 = !DILocation(line: 647, column: 8, scope: !513)
!623 = !DILocation(line: 648, column: 15, scope: !513)
!624 = !DILocation(line: 648, column: 8, scope: !513)
!625 = !DILocation(line: 648, column: 6, scope: !513)
!626 = !DILocation(line: 649, column: 7, scope: !627)
!627 = distinct !DILexicalBlock(scope: !513, file: !214, line: 649, column: 7)
!628 = !DILocation(line: 649, column: 10, scope: !627)
!629 = !DILocation(line: 649, column: 7, scope: !513)
!630 = !DILocation(line: 650, column: 13, scope: !627)
!631 = !DILocation(line: 650, column: 60, scope: !627)
!632 = !DILocation(line: 650, column: 55, scope: !627)
!633 = !DILocation(line: 650, column: 5, scope: !634)
!634 = !DILexicalBlockFile(scope: !627, file: !214, discriminator: 1)
!635 = !DILocation(line: 650, column: 5, scope: !627)
!636 = !DILocation(line: 652, column: 3, scope: !513)
!637 = !DILocalVariable(name: "mode", scope: !638, file: !214, line: 653, type: !278)
!638 = distinct !DILexicalBlock(scope: !639, file: !214, line: 652, column: 12)
!639 = distinct !DILexicalBlock(scope: !640, file: !214, line: 652, column: 3)
!640 = distinct !DILexicalBlock(scope: !513, file: !214, line: 652, column: 3)
!641 = !DILocation(line: 653, column: 9, scope: !638)
!642 = !DILocalVariable(name: "argc", scope: !638, file: !214, line: 654, type: !208)
!643 = !DILocation(line: 654, column: 9, scope: !638)
!644 = !DILocation(line: 655, column: 8, scope: !638)
!645 = !DILocation(line: 657, column: 5, scope: !638)
!646 = !DILocation(line: 659, column: 5, scope: !638)
!647 = distinct !{!647, !646}
!648 = !DILocation(line: 660, column: 10, scope: !649)
!649 = distinct !DILexicalBlock(scope: !638, file: !214, line: 659, column: 8)
!650 = !DILocation(line: 660, column: 9, scope: !649)
!651 = !DILocation(line: 661, column: 11, scope: !652)
!652 = distinct !DILexicalBlock(scope: !649, file: !214, line: 661, column: 11)
!653 = !DILocation(line: 661, column: 13, scope: !652)
!654 = !DILocation(line: 661, column: 11, scope: !649)
!655 = !DILocation(line: 662, column: 12, scope: !652)
!656 = !DILocation(line: 662, column: 9, scope: !652)
!657 = !DILocation(line: 663, column: 5, scope: !649)
!658 = !DILocation(line: 663, column: 14, scope: !659)
!659 = !DILexicalBlockFile(scope: !638, file: !214, discriminator: 1)
!660 = !DILocation(line: 663, column: 16, scope: !659)
!661 = !DILocation(line: 663, column: 22, scope: !659)
!662 = !DILocation(line: 663, column: 35, scope: !663)
!663 = !DILexicalBlockFile(scope: !638, file: !214, discriminator: 2)
!664 = !DILocation(line: 663, column: 25, scope: !663)
!665 = !DILocation(line: 663, column: 5, scope: !666)
!666 = !DILexicalBlockFile(scope: !649, file: !214, discriminator: 3)
!667 = !DILocation(line: 664, column: 9, scope: !668)
!668 = distinct !DILexicalBlock(scope: !638, file: !214, line: 664, column: 9)
!669 = !DILocation(line: 664, column: 11, scope: !668)
!670 = !DILocation(line: 664, column: 9, scope: !638)
!671 = !DILocation(line: 664, column: 18, scope: !672)
!672 = !DILexicalBlockFile(scope: !668, file: !214, discriminator: 1)
!673 = !DILocation(line: 665, column: 9, scope: !674)
!674 = distinct !DILexicalBlock(scope: !638, file: !214, line: 665, column: 9)
!675 = !DILocation(line: 665, column: 11, scope: !674)
!676 = !DILocation(line: 665, column: 9, scope: !638)
!677 = !DILocation(line: 666, column: 7, scope: !678)
!678 = distinct !DILexicalBlock(scope: !674, file: !214, line: 665, column: 19)
!679 = distinct !{!679, !677}
!680 = !DILocation(line: 666, column: 14, scope: !681)
!681 = !DILexicalBlockFile(scope: !682, file: !214, discriminator: 1)
!682 = distinct !DILexicalBlock(scope: !678, file: !214, line: 666, column: 10)
!683 = !DILocation(line: 666, column: 13, scope: !681)
!684 = !DILocation(line: 666, column: 28, scope: !681)
!685 = !DILocation(line: 666, column: 30, scope: !681)
!686 = !DILocation(line: 666, column: 42, scope: !687)
!687 = !DILexicalBlockFile(scope: !688, file: !214, discriminator: 2)
!688 = distinct !DILexicalBlock(scope: !682, file: !214, line: 666, column: 28)
!689 = !DILocation(line: 666, column: 39, scope: !687)
!690 = !DILocation(line: 666, column: 46, scope: !691)
!691 = !DILexicalBlockFile(scope: !682, file: !214, discriminator: 3)
!692 = !DILocation(line: 666, column: 55, scope: !693)
!693 = !DILexicalBlockFile(scope: !678, file: !214, discriminator: 4)
!694 = !DILocation(line: 666, column: 57, scope: !693)
!695 = !DILocation(line: 666, column: 64, scope: !693)
!696 = !DILocation(line: 666, column: 67, scope: !697)
!697 = !DILexicalBlockFile(scope: !678, file: !214, discriminator: 5)
!698 = !DILocation(line: 666, column: 69, scope: !697)
!699 = !DILocation(line: 666, column: 46, scope: !700)
!700 = !DILexicalBlockFile(scope: !682, file: !214, discriminator: 6)
!701 = !DILocation(line: 667, column: 7, scope: !678)
!702 = distinct !{!702, !636}
!703 = !DILocation(line: 669, column: 5, scope: !638)
!704 = !DILocation(line: 670, column: 5, scope: !638)
!705 = distinct !{!705, !704}
!706 = !DILocation(line: 671, column: 32, scope: !707)
!707 = distinct !DILexicalBlock(scope: !638, file: !214, line: 670, column: 8)
!708 = !DILocation(line: 671, column: 7, scope: !707)
!709 = !DILocation(line: 672, column: 9, scope: !707)
!710 = !DILocation(line: 672, column: 8, scope: !707)
!711 = !DILocation(line: 673, column: 11, scope: !712)
!712 = distinct !DILexicalBlock(scope: !707, file: !214, line: 673, column: 11)
!713 = !DILocation(line: 673, column: 13, scope: !712)
!714 = !DILocation(line: 673, column: 11, scope: !707)
!715 = !DILocation(line: 673, column: 25, scope: !716)
!716 = !DILexicalBlockFile(scope: !712, file: !214, discriminator: 1)
!717 = !DILocation(line: 673, column: 22, scope: !716)
!718 = !DILocation(line: 676, column: 21, scope: !719)
!719 = distinct !DILexicalBlock(scope: !707, file: !214, line: 676, column: 11)
!720 = !DILocation(line: 676, column: 11, scope: !719)
!721 = !DILocation(line: 676, column: 11, scope: !707)
!722 = !DILocation(line: 677, column: 13, scope: !719)
!723 = !DILocation(line: 677, column: 9, scope: !719)
!724 = !DILocation(line: 678, column: 5, scope: !707)
!725 = !DILocation(line: 678, column: 14, scope: !659)
!726 = !DILocation(line: 678, column: 16, scope: !659)
!727 = !DILocation(line: 678, column: 22, scope: !659)
!728 = !DILocation(line: 678, column: 25, scope: !663)
!729 = !DILocation(line: 678, column: 27, scope: !663)
!730 = !DILocation(line: 678, column: 5, scope: !731)
!731 = !DILexicalBlockFile(scope: !707, file: !214, discriminator: 3)
!732 = !DILocation(line: 679, column: 9, scope: !733)
!733 = distinct !DILexicalBlock(scope: !638, file: !214, line: 679, column: 9)
!734 = !DILocation(line: 679, column: 11, scope: !733)
!735 = !DILocation(line: 679, column: 9, scope: !638)
!736 = !DILocation(line: 680, column: 14, scope: !733)
!737 = !DILocation(line: 680, column: 71, scope: !733)
!738 = !DILocation(line: 680, column: 7, scope: !739)
!739 = !DILexicalBlockFile(scope: !733, file: !214, discriminator: 1)
!740 = !DILocation(line: 680, column: 7, scope: !733)
!741 = !DILocation(line: 681, column: 10, scope: !742)
!742 = distinct !DILexicalBlock(scope: !638, file: !214, line: 681, column: 9)
!743 = !DILocation(line: 681, column: 9, scope: !638)
!744 = !DILocation(line: 681, column: 16, scope: !745)
!745 = !DILexicalBlockFile(scope: !742, file: !214, discriminator: 1)
!746 = !DILocation(line: 682, column: 5, scope: !638)
!747 = !DILocation(line: 683, column: 25, scope: !638)
!748 = !DILocation(line: 683, column: 58, scope: !638)
!749 = !DILocation(line: 683, column: 63, scope: !638)
!750 = !DILocation(line: 683, column: 57, scope: !638)
!751 = !DILocation(line: 683, column: 55, scope: !638)
!752 = !DILocation(line: 683, column: 15, scope: !638)
!753 = !DILocation(line: 683, column: 13, scope: !638)
!754 = !DILocation(line: 684, column: 9, scope: !638)
!755 = !DILocation(line: 685, column: 17, scope: !638)
!756 = !DILocation(line: 685, column: 8, scope: !638)
!757 = !DILocation(line: 686, column: 14, scope: !638)
!758 = !DILocation(line: 686, column: 27, scope: !638)
!759 = !DILocation(line: 686, column: 18, scope: !638)
!760 = !DILocation(line: 686, column: 32, scope: !638)
!761 = !DILocation(line: 686, column: 12, scope: !638)
!762 = !DILocation(line: 687, column: 14, scope: !638)
!763 = !DILocation(line: 688, column: 5, scope: !638)
!764 = !DILocation(line: 688, column: 11, scope: !659)
!765 = !DILocation(line: 688, column: 17, scope: !659)
!766 = !DILocation(line: 688, column: 15, scope: !659)
!767 = !DILocation(line: 688, column: 5, scope: !659)
!768 = !DILocation(line: 689, column: 11, scope: !769)
!769 = distinct !DILexicalBlock(scope: !770, file: !214, line: 689, column: 11)
!770 = distinct !DILexicalBlock(scope: !638, file: !214, line: 688, column: 25)
!771 = !DILocation(line: 689, column: 11, scope: !770)
!772 = !DILocation(line: 690, column: 11, scope: !773)
!773 = distinct !DILexicalBlock(scope: !769, file: !214, line: 689, column: 21)
!774 = !DILocation(line: 691, column: 7, scope: !773)
!775 = !DILocation(line: 691, column: 19, scope: !776)
!776 = !DILexicalBlockFile(scope: !777, file: !214, discriminator: 1)
!777 = distinct !DILexicalBlock(scope: !769, file: !214, line: 691, column: 18)
!778 = !DILocation(line: 691, column: 18, scope: !776)
!779 = !DILocation(line: 691, column: 23, scope: !776)
!780 = !DILocation(line: 692, column: 10, scope: !781)
!781 = distinct !DILexicalBlock(scope: !777, file: !214, line: 691, column: 32)
!782 = !DILocation(line: 692, column: 16, scope: !781)
!783 = !DILocation(line: 692, column: 19, scope: !781)
!784 = !DILocation(line: 692, column: 32, scope: !781)
!785 = !DILocation(line: 692, column: 45, scope: !781)
!786 = !DILocation(line: 692, column: 51, scope: !781)
!787 = !DILocation(line: 692, column: 49, scope: !781)
!788 = !DILocation(line: 692, column: 36, scope: !781)
!789 = !DILocation(line: 692, column: 55, scope: !781)
!790 = !DILocation(line: 692, column: 2, scope: !781)
!791 = !DILocation(line: 693, column: 8, scope: !781)
!792 = !DILocation(line: 694, column: 11, scope: !781)
!793 = !DILocation(line: 695, column: 2, scope: !781)
!794 = distinct !{!794, !763}
!795 = !DILocation(line: 696, column: 29, scope: !796)
!796 = distinct !DILexicalBlock(scope: !777, file: !214, line: 696, column: 18)
!797 = !DILocation(line: 696, column: 28, scope: !796)
!798 = !DILocation(line: 696, column: 18, scope: !796)
!799 = !DILocation(line: 696, column: 18, scope: !777)
!800 = !DILocation(line: 697, column: 6, scope: !801)
!801 = distinct !DILexicalBlock(scope: !802, file: !214, line: 697, column: 6)
!802 = distinct !DILexicalBlock(scope: !796, file: !214, line: 696, column: 35)
!803 = !DILocation(line: 697, column: 11, scope: !801)
!804 = !DILocation(line: 697, column: 6, scope: !802)
!805 = !DILocation(line: 698, column: 5, scope: !806)
!806 = distinct !DILexicalBlock(scope: !801, file: !214, line: 697, column: 19)
!807 = !DILocation(line: 698, column: 9, scope: !806)
!808 = !DILocation(line: 699, column: 9, scope: !806)
!809 = !DILocation(line: 700, column: 2, scope: !806)
!810 = !DILocation(line: 701, column: 7, scope: !802)
!811 = !DILocation(line: 702, column: 6, scope: !812)
!812 = distinct !DILexicalBlock(scope: !813, file: !214, line: 702, column: 6)
!813 = distinct !DILexicalBlock(scope: !796, file: !214, line: 701, column: 14)
!814 = !DILocation(line: 702, column: 11, scope: !812)
!815 = !DILocation(line: 702, column: 6, scope: !813)
!816 = !DILocation(line: 703, column: 19, scope: !817)
!817 = distinct !DILexicalBlock(scope: !812, file: !214, line: 702, column: 20)
!818 = !DILocation(line: 703, column: 12, scope: !817)
!819 = !DILocation(line: 703, column: 4, scope: !817)
!820 = !DILocation(line: 703, column: 17, scope: !817)
!821 = !DILocation(line: 704, column: 8, scope: !817)
!822 = !DILocation(line: 705, column: 9, scope: !817)
!823 = !DILocation(line: 706, column: 2, scope: !817)
!824 = !DILocation(line: 708, column: 10, scope: !770)
!825 = !DILocation(line: 688, column: 5, scope: !663)
!826 = !DILocation(line: 710, column: 6, scope: !638)
!827 = !DILocation(line: 710, column: 10, scope: !638)
!828 = !DILocation(line: 711, column: 17, scope: !638)
!829 = !DILocation(line: 711, column: 5, scope: !638)
!830 = !DILocation(line: 711, column: 21, scope: !638)
!831 = !DILocation(line: 717, column: 10, scope: !832)
!832 = distinct !DILexicalBlock(scope: !638, file: !214, line: 717, column: 5)
!833 = !DILocation(line: 717, column: 9, scope: !832)
!834 = !DILocation(line: 717, column: 13, scope: !835)
!835 = !DILexicalBlockFile(scope: !836, file: !214, discriminator: 1)
!836 = distinct !DILexicalBlock(scope: !832, file: !214, line: 717, column: 5)
!837 = !DILocation(line: 717, column: 15, scope: !835)
!838 = !DILocation(line: 717, column: 14, scope: !835)
!839 = !DILocation(line: 717, column: 5, scope: !835)
!840 = !DILocation(line: 718, column: 19, scope: !841)
!841 = distinct !DILexicalBlock(scope: !836, file: !214, line: 718, column: 11)
!842 = !DILocation(line: 718, column: 11, scope: !841)
!843 = !DILocation(line: 718, column: 11, scope: !836)
!844 = !DILocation(line: 719, column: 39, scope: !841)
!845 = !DILocation(line: 719, column: 31, scope: !841)
!846 = !DILocation(line: 719, column: 22, scope: !841)
!847 = !DILocation(line: 719, column: 17, scope: !841)
!848 = !DILocation(line: 719, column: 9, scope: !841)
!849 = !DILocation(line: 719, column: 20, scope: !841)
!850 = !DILocation(line: 718, column: 20, scope: !851)
!851 = !DILexicalBlockFile(scope: !841, file: !214, discriminator: 1)
!852 = !DILocation(line: 717, column: 21, scope: !853)
!853 = !DILexicalBlockFile(scope: !836, file: !214, discriminator: 2)
!854 = !DILocation(line: 717, column: 5, scope: !853)
!855 = distinct !{!855, !856}
!856 = !DILocation(line: 717, column: 5, scope: !638)
!857 = !DILocation(line: 720, column: 15, scope: !638)
!858 = !DILocation(line: 720, column: 13, scope: !638)
!859 = !DILocation(line: 722, column: 5, scope: !638)
!860 = !DILocation(line: 723, column: 5, scope: !638)
!861 = !DILocation(line: 724, column: 10, scope: !862)
!862 = distinct !DILexicalBlock(scope: !638, file: !214, line: 724, column: 9)
!863 = !DILocation(line: 724, column: 9, scope: !638)
!864 = !DILocation(line: 724, column: 30, scope: !865)
!865 = !DILexicalBlockFile(scope: !862, file: !214, discriminator: 1)
!866 = !DILocation(line: 724, column: 21, scope: !867)
!867 = !DILexicalBlockFile(scope: !865, file: !214, discriminator: 2)
!868 = !DILocation(line: 724, column: 21, scope: !865)
!869 = !DILocation(line: 726, column: 5, scope: !638)
!870 = !DILocation(line: 728, column: 12, scope: !638)
!871 = !DILocation(line: 728, column: 23, scope: !638)
!872 = !DILocation(line: 728, column: 30, scope: !638)
!873 = !DILocation(line: 728, column: 9, scope: !638)
!874 = !DILocation(line: 730, column: 5, scope: !638)
!875 = !DILocation(line: 732, column: 5, scope: !638)
!876 = !DILocation(line: 652, column: 3, scope: !877)
!877 = !DILexicalBlockFile(scope: !639, file: !214, discriminator: 1)
!878 = !DILocation(line: 735, column: 10, scope: !513)
!879 = !DILocation(line: 735, column: 3, scope: !513)
!880 = !DILocation(line: 737, column: 10, scope: !513)
!881 = !DILocation(line: 737, column: 3, scope: !513)
!882 = distinct !DISubprogram(name: "c_isspace", scope: !182, file: !182, line: 69, type: !883, isLocal: true, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !483)
!883 = !DISubroutineType(types: !884)
!884 = !{!278, !208}
!885 = !DILocalVariable(name: "c", arg: 1, scope: !882, file: !182, line: 69, type: !208)
!886 = !DILocation(line: 69, column: 15, scope: !882)
!887 = !DILocation(line: 71, column: 18, scope: !882)
!888 = !DILocation(line: 71, column: 9, scope: !882)
!889 = !DILocation(line: 71, column: 2, scope: !882)
!890 = distinct !DISubprogram(name: "main", scope: !214, file: !214, line: 740, type: !891, isLocal: false, isDefinition: true, scopeLine: 740, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !483)
!891 = !DISubroutineType(types: !892)
!892 = !{!208, !208, !210}
!893 = !DILocalVariable(name: "argc", arg: 1, scope: !890, file: !214, line: 740, type: !208)
!894 = !DILocation(line: 740, column: 14, scope: !890)
!895 = !DILocalVariable(name: "argv", arg: 2, scope: !890, file: !214, line: 740, type: !210)
!896 = !DILocation(line: 740, column: 39, scope: !890)
!897 = !DILocalVariable(name: "ret", scope: !890, file: !214, line: 741, type: !208)
!898 = !DILocation(line: 741, column: 7, scope: !890)
!899 = !DILocation(line: 743, column: 3, scope: !890)
!900 = !DILocation(line: 744, column: 3, scope: !890)
!901 = !DILocation(line: 745, column: 3, scope: !890)
!902 = !DILocation(line: 746, column: 3, scope: !890)
!903 = !DILocation(line: 747, column: 3, scope: !890)
!904 = !DILocation(line: 751, column: 8, scope: !905)
!905 = distinct !DILexicalBlock(scope: !890, file: !214, line: 751, column: 7)
!906 = !DILocation(line: 751, column: 33, scope: !905)
!907 = !DILocation(line: 751, column: 36, scope: !908)
!908 = !DILexicalBlockFile(scope: !905, file: !214, discriminator: 1)
!909 = !DILocation(line: 751, column: 45, scope: !908)
!910 = !DILocation(line: 751, column: 7, scope: !908)
!911 = !DILocation(line: 752, column: 9, scope: !912)
!912 = distinct !DILexicalBlock(scope: !905, file: !214, line: 752, column: 9)
!913 = !DILocation(line: 752, column: 19, scope: !912)
!914 = !DILocation(line: 752, column: 9, scope: !905)
!915 = !DILocation(line: 753, column: 15, scope: !912)
!916 = !DILocation(line: 753, column: 7, scope: !917)
!917 = !DILexicalBlockFile(scope: !912, file: !214, discriminator: 1)
!918 = !DILocation(line: 753, column: 7, scope: !912)
!919 = !DILocation(line: 752, column: 21, scope: !917)
!920 = !DILocation(line: 755, column: 8, scope: !921)
!921 = distinct !DILexicalBlock(scope: !890, file: !214, line: 755, column: 7)
!922 = !DILocation(line: 755, column: 7, scope: !890)
!923 = !DILocation(line: 755, column: 28, scope: !924)
!924 = !DILexicalBlockFile(scope: !921, file: !214, discriminator: 1)
!925 = !DILocation(line: 755, column: 19, scope: !926)
!926 = !DILexicalBlockFile(scope: !924, file: !214, discriminator: 2)
!927 = !DILocation(line: 755, column: 19, scope: !924)
!928 = !DILocation(line: 757, column: 30, scope: !890)
!929 = !DILocation(line: 757, column: 14, scope: !890)
!930 = !DILocation(line: 757, column: 12, scope: !890)
!931 = !DILocation(line: 760, column: 31, scope: !932)
!932 = distinct !DILexicalBlock(scope: !890, file: !214, line: 760, column: 7)
!933 = !DILocation(line: 760, column: 7, scope: !932)
!934 = !DILocation(line: 760, column: 44, scope: !932)
!935 = !DILocation(line: 760, column: 7, scope: !890)
!936 = !DILocation(line: 761, column: 13, scope: !932)
!937 = !DILocation(line: 761, column: 5, scope: !938)
!938 = !DILexicalBlockFile(scope: !932, file: !214, discriminator: 1)
!939 = !DILocation(line: 761, column: 5, scope: !932)
!940 = !DILocation(line: 762, column: 27, scope: !941)
!941 = distinct !DILexicalBlock(scope: !890, file: !214, line: 762, column: 7)
!942 = !DILocation(line: 762, column: 7, scope: !941)
!943 = !DILocation(line: 762, column: 39, scope: !941)
!944 = !DILocation(line: 762, column: 7, scope: !890)
!945 = !DILocation(line: 763, column: 13, scope: !941)
!946 = !DILocation(line: 763, column: 5, scope: !947)
!947 = !DILexicalBlockFile(scope: !941, file: !214, discriminator: 1)
!948 = !DILocation(line: 763, column: 5, scope: !941)
!949 = !DILocation(line: 764, column: 28, scope: !950)
!950 = distinct !DILexicalBlock(scope: !890, file: !214, line: 764, column: 7)
!951 = !DILocation(line: 764, column: 7, scope: !952)
!952 = !DILexicalBlockFile(scope: !950, file: !214, discriminator: 1)
!953 = !DILocation(line: 764, column: 51, scope: !950)
!954 = !DILocation(line: 764, column: 7, scope: !890)
!955 = !DILocation(line: 765, column: 13, scope: !950)
!956 = !DILocation(line: 765, column: 5, scope: !952)
!957 = !DILocation(line: 765, column: 5, scope: !950)
!958 = !DILocation(line: 767, column: 8, scope: !959)
!959 = distinct !DILexicalBlock(scope: !890, file: !214, line: 767, column: 7)
!960 = !DILocation(line: 767, column: 7, scope: !890)
!961 = !DILocation(line: 768, column: 19, scope: !959)
!962 = !DILocation(line: 768, column: 30, scope: !959)
!963 = !DILocation(line: 768, column: 38, scope: !959)
!964 = !DILocation(line: 768, column: 54, scope: !959)
!965 = !DILocation(line: 768, column: 58, scope: !966)
!966 = !DILexicalBlockFile(scope: !959, file: !214, discriminator: 1)
!967 = !DILocation(line: 768, column: 57, scope: !966)
!968 = !DILocation(line: 768, column: 54, scope: !966)
!969 = !DILocation(line: 768, column: 18, scope: !970)
!970 = !DILexicalBlockFile(scope: !959, file: !214, discriminator: 2)
!971 = !DILocation(line: 768, column: 16, scope: !970)
!972 = !DILocation(line: 768, column: 5, scope: !970)
!973 = !DILocation(line: 770, column: 24, scope: !974)
!974 = distinct !DILexicalBlock(scope: !890, file: !214, line: 770, column: 7)
!975 = !DILocation(line: 770, column: 35, scope: !974)
!976 = !DILocation(line: 770, column: 7, scope: !974)
!977 = !DILocation(line: 770, column: 7, scope: !890)
!978 = !DILocation(line: 771, column: 22, scope: !979)
!979 = distinct !DILexicalBlock(scope: !974, file: !214, line: 770, column: 45)
!980 = !DILocation(line: 771, column: 33, scope: !979)
!981 = !DILocation(line: 771, column: 5, scope: !979)
!982 = !DILocation(line: 772, column: 5, scope: !979)
!983 = !DILocation(line: 773, column: 3, scope: !979)
!984 = !DILocation(line: 775, column: 3, scope: !890)
!985 = !DILocation(line: 777, column: 9, scope: !890)
!986 = !DILocation(line: 777, column: 20, scope: !890)
!987 = !DILocation(line: 777, column: 27, scope: !890)
!988 = !DILocation(line: 777, column: 7, scope: !890)
!989 = !DILocation(line: 779, column: 24, scope: !990)
!990 = distinct !DILexicalBlock(scope: !890, file: !214, line: 779, column: 7)
!991 = !DILocation(line: 779, column: 35, scope: !990)
!992 = !DILocation(line: 779, column: 7, scope: !990)
!993 = !DILocation(line: 779, column: 7, scope: !890)
!994 = !DILocation(line: 780, column: 22, scope: !990)
!995 = !DILocation(line: 780, column: 33, scope: !990)
!996 = !DILocation(line: 780, column: 5, scope: !990)
!997 = !DILocation(line: 782, column: 3, scope: !890)
!998 = !DILocation(line: 783, column: 3, scope: !890)
!999 = !DILocation(line: 785, column: 3, scope: !890)
!1000 = !DILocation(line: 787, column: 37, scope: !890)
!1001 = !DILocation(line: 787, column: 10, scope: !890)
!1002 = !DILocation(line: 787, column: 3, scope: !890)
!1003 = distinct !DISubprogram(name: "is_invoke_action", scope: !214, file: !214, line: 336, type: !1004, isLocal: true, isDefinition: true, scopeLine: 337, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !483)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!278, !136}
!1006 = !DILocalVariable(name: "action", arg: 1, scope: !1003, file: !214, line: 336, type: !136)
!1007 = !DILocation(line: 336, column: 30, scope: !1003)
!1008 = !DILocation(line: 338, column: 11, scope: !1003)
!1009 = !DILocation(line: 338, column: 3, scope: !1003)
!1010 = !DILocation(line: 347, column: 5, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1003, file: !214, line: 338, column: 19)
!1012 = !DILocation(line: 349, column: 5, scope: !1011)
!1013 = !DILocation(line: 351, column: 1, scope: !1003)
!1014 = distinct !DISubprogram(name: "run_invoke_hooks", scope: !214, file: !214, line: 373, type: !1015, isLocal: true, isDefinition: true, scopeLine: 374, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !483)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{null, !204, !1017}
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64, align: 64)
!1018 = !DILocalVariable(name: "action", arg: 1, scope: !1014, file: !214, line: 373, type: !204)
!1019 = !DILocation(line: 373, column: 30, scope: !1014)
!1020 = !DILocalVariable(name: "hook_list", arg: 2, scope: !1014, file: !214, line: 373, type: !1017)
!1021 = !DILocation(line: 373, column: 58, scope: !1014)
!1022 = !DILocalVariable(name: "hook", scope: !1014, file: !214, line: 375, type: !429)
!1023 = !DILocation(line: 375, column: 23, scope: !1014)
!1024 = !DILocation(line: 377, column: 30, scope: !1014)
!1025 = !DILocation(line: 377, column: 3, scope: !1014)
!1026 = !DILocation(line: 379, column: 15, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1014, file: !214, line: 379, column: 3)
!1028 = !DILocation(line: 379, column: 26, scope: !1027)
!1029 = !DILocation(line: 379, column: 13, scope: !1027)
!1030 = !DILocation(line: 379, column: 8, scope: !1027)
!1031 = !DILocation(line: 379, column: 32, scope: !1032)
!1032 = !DILexicalBlockFile(scope: !1033, file: !214, discriminator: 1)
!1033 = distinct !DILexicalBlock(scope: !1027, file: !214, line: 379, column: 3)
!1034 = !DILocation(line: 379, column: 3, scope: !1032)
!1035 = !DILocalVariable(name: "status", scope: !1036, file: !214, line: 380, type: !208)
!1036 = distinct !DILexicalBlock(scope: !1033, file: !214, line: 379, column: 57)
!1037 = !DILocation(line: 380, column: 9, scope: !1036)
!1038 = !DILocation(line: 384, column: 21, scope: !1036)
!1039 = !DILocation(line: 384, column: 27, scope: !1036)
!1040 = !DILocation(line: 384, column: 14, scope: !1036)
!1041 = !DILocation(line: 384, column: 12, scope: !1036)
!1042 = !DILocation(line: 385, column: 9, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1036, file: !214, line: 385, column: 9)
!1044 = !DILocation(line: 385, column: 16, scope: !1043)
!1045 = !DILocation(line: 385, column: 9, scope: !1036)
!1046 = !DILocation(line: 386, column: 14, scope: !1043)
!1047 = !DILocation(line: 386, column: 66, scope: !1043)
!1048 = !DILocation(line: 386, column: 72, scope: !1043)
!1049 = !DILocation(line: 387, column: 14, scope: !1043)
!1050 = !DILocation(line: 386, column: 7, scope: !1051)
!1051 = !DILexicalBlockFile(scope: !1043, file: !214, discriminator: 1)
!1052 = !DILocation(line: 386, column: 7, scope: !1043)
!1053 = !DILocation(line: 388, column: 3, scope: !1036)
!1054 = !DILocation(line: 379, column: 45, scope: !1055)
!1055 = !DILexicalBlockFile(scope: !1033, file: !214, discriminator: 2)
!1056 = !DILocation(line: 379, column: 51, scope: !1055)
!1057 = !DILocation(line: 379, column: 43, scope: !1055)
!1058 = !DILocation(line: 379, column: 3, scope: !1055)
!1059 = distinct !{!1059, !1060}
!1060 = !DILocation(line: 379, column: 3, scope: !1014)
!1061 = !DILocation(line: 390, column: 3, scope: !1014)
!1062 = !DILocation(line: 391, column: 1, scope: !1014)
!1063 = distinct !DISubprogram(name: "run_status_loggers", scope: !214, file: !214, line: 430, type: !1064, isLocal: true, isDefinition: true, scopeLine: 431, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !483)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{null, !1017}
!1066 = !DILocalVariable(name: "hook_list", arg: 1, scope: !1063, file: !214, line: 430, type: !1017)
!1067 = !DILocation(line: 430, column: 40, scope: !1063)
!1068 = !DILocalVariable(name: "hook", scope: !1063, file: !214, line: 432, type: !429)
!1069 = !DILocation(line: 432, column: 23, scope: !1063)
!1070 = !DILocation(line: 434, column: 15, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1063, file: !214, line: 434, column: 3)
!1072 = !DILocation(line: 434, column: 26, scope: !1071)
!1073 = !DILocation(line: 434, column: 13, scope: !1071)
!1074 = !DILocation(line: 434, column: 8, scope: !1071)
!1075 = !DILocation(line: 434, column: 32, scope: !1076)
!1076 = !DILexicalBlockFile(scope: !1077, file: !214, discriminator: 1)
!1077 = distinct !DILexicalBlock(scope: !1071, file: !214, line: 434, column: 3)
!1078 = !DILocation(line: 434, column: 3, scope: !1076)
!1079 = !DILocalVariable(name: "fd", scope: !1080, file: !214, line: 435, type: !208)
!1080 = distinct !DILexicalBlock(scope: !1077, file: !214, line: 434, column: 57)
!1081 = !DILocation(line: 435, column: 9, scope: !1080)
!1082 = !DILocation(line: 437, column: 21, scope: !1080)
!1083 = !DILocation(line: 437, column: 27, scope: !1080)
!1084 = !DILocation(line: 437, column: 10, scope: !1085)
!1085 = !DILexicalBlockFile(scope: !1080, file: !214, discriminator: 1)
!1086 = !DILocation(line: 437, column: 8, scope: !1080)
!1087 = !DILocation(line: 438, column: 18, scope: !1080)
!1088 = !DILocation(line: 438, column: 5, scope: !1080)
!1089 = !DILocation(line: 439, column: 3, scope: !1080)
!1090 = !DILocation(line: 434, column: 45, scope: !1091)
!1091 = !DILexicalBlockFile(scope: !1077, file: !214, discriminator: 2)
!1092 = !DILocation(line: 434, column: 51, scope: !1091)
!1093 = !DILocation(line: 434, column: 43, scope: !1091)
!1094 = !DILocation(line: 434, column: 3, scope: !1091)
!1095 = distinct !{!1095, !1096}
!1096 = !DILocation(line: 434, column: 3, scope: !1063)
!1097 = !DILocation(line: 440, column: 1, scope: !1063)
!1098 = distinct !DISubprogram(name: "free_invoke_hooks", scope: !214, file: !214, line: 394, type: !1064, isLocal: true, isDefinition: true, scopeLine: 395, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !483)
!1099 = !DILocalVariable(name: "hook_list", arg: 1, scope: !1098, file: !214, line: 394, type: !1017)
!1100 = !DILocation(line: 394, column: 39, scope: !1098)
!1101 = !DILocalVariable(name: "hook", scope: !1098, file: !214, line: 396, type: !429)
!1102 = !DILocation(line: 396, column: 23, scope: !1098)
!1103 = !DILocalVariable(name: "hook_next", scope: !1098, file: !214, line: 396, type: !429)
!1104 = !DILocation(line: 396, column: 30, scope: !1098)
!1105 = !DILocation(line: 398, column: 15, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1098, file: !214, line: 398, column: 3)
!1107 = !DILocation(line: 398, column: 26, scope: !1106)
!1108 = !DILocation(line: 398, column: 13, scope: !1106)
!1109 = !DILocation(line: 398, column: 8, scope: !1106)
!1110 = !DILocation(line: 398, column: 32, scope: !1111)
!1111 = !DILexicalBlockFile(scope: !1112, file: !214, discriminator: 1)
!1112 = distinct !DILexicalBlock(scope: !1106, file: !214, line: 398, column: 3)
!1113 = !DILocation(line: 398, column: 3, scope: !1111)
!1114 = !DILocation(line: 399, column: 17, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1112, file: !214, line: 398, column: 56)
!1116 = !DILocation(line: 399, column: 23, scope: !1115)
!1117 = !DILocation(line: 399, column: 15, scope: !1115)
!1118 = !DILocation(line: 400, column: 10, scope: !1115)
!1119 = !DILocation(line: 400, column: 16, scope: !1115)
!1120 = !DILocation(line: 400, column: 5, scope: !1115)
!1121 = !DILocation(line: 401, column: 10, scope: !1115)
!1122 = !DILocation(line: 401, column: 5, scope: !1115)
!1123 = !DILocation(line: 402, column: 3, scope: !1115)
!1124 = !DILocation(line: 398, column: 45, scope: !1125)
!1125 = !DILexicalBlockFile(scope: !1112, file: !214, discriminator: 2)
!1126 = !DILocation(line: 398, column: 43, scope: !1125)
!1127 = !DILocation(line: 398, column: 3, scope: !1125)
!1128 = distinct !{!1128, !1129}
!1129 = !DILocation(line: 398, column: 3, scope: !1098)
!1130 = !DILocation(line: 403, column: 1, scope: !1098)
!1131 = distinct !DISubprogram(name: "arch_add", scope: !214, file: !214, line: 443, type: !460, isLocal: true, isDefinition: true, scopeLine: 444, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !483)
!1132 = !DILocalVariable(name: "argv", arg: 1, scope: !1131, file: !214, line: 443, type: !210)
!1133 = !DILocation(line: 443, column: 29, scope: !1131)
!1134 = !DILocalVariable(name: "arch", scope: !1131, file: !214, line: 445, type: !266)
!1135 = !DILocation(line: 445, column: 21, scope: !1131)
!1136 = !DILocalVariable(name: "archname", scope: !1131, file: !214, line: 446, type: !204)
!1137 = !DILocation(line: 446, column: 15, scope: !1131)
!1138 = !DILocation(line: 446, column: 31, scope: !1131)
!1139 = !DILocation(line: 446, column: 26, scope: !1131)
!1140 = !DILocation(line: 448, column: 7, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1131, file: !214, line: 448, column: 7)
!1142 = !DILocation(line: 448, column: 16, scope: !1141)
!1143 = !DILocation(line: 448, column: 23, scope: !1141)
!1144 = !DILocation(line: 448, column: 27, scope: !1145)
!1145 = !DILexicalBlockFile(scope: !1141, file: !214, discriminator: 1)
!1146 = !DILocation(line: 448, column: 26, scope: !1145)
!1147 = !DILocation(line: 448, column: 7, scope: !1145)
!1148 = !DILocation(line: 449, column: 14, scope: !1141)
!1149 = !DILocation(line: 449, column: 58, scope: !1141)
!1150 = !DILocation(line: 449, column: 69, scope: !1141)
!1151 = !DILocation(line: 449, column: 5, scope: !1145)
!1152 = !DILocation(line: 449, column: 5, scope: !1141)
!1153 = !DILocation(line: 451, column: 3, scope: !1131)
!1154 = !DILocation(line: 453, column: 24, scope: !1131)
!1155 = !DILocation(line: 453, column: 10, scope: !1131)
!1156 = !DILocation(line: 453, column: 8, scope: !1131)
!1157 = !DILocation(line: 454, column: 11, scope: !1131)
!1158 = !DILocation(line: 454, column: 17, scope: !1131)
!1159 = !DILocation(line: 454, column: 3, scope: !1131)
!1160 = !DILocation(line: 457, column: 5, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1131, file: !214, line: 454, column: 23)
!1162 = !DILocation(line: 459, column: 12, scope: !1161)
!1163 = !DILocation(line: 459, column: 57, scope: !1161)
!1164 = !DILocation(line: 460, column: 38, scope: !1161)
!1165 = !DILocation(line: 460, column: 12, scope: !1161)
!1166 = !DILocation(line: 459, column: 5, scope: !1167)
!1167 = !DILexicalBlockFile(scope: !1161, file: !214, discriminator: 1)
!1168 = !DILocation(line: 459, column: 5, scope: !1161)
!1169 = !DILocation(line: 462, column: 12, scope: !1161)
!1170 = !DILocation(line: 462, column: 74, scope: !1161)
!1171 = !DILocation(line: 462, column: 5, scope: !1167)
!1172 = !DILocation(line: 462, column: 5, scope: !1161)
!1173 = !DILocation(line: 465, column: 3, scope: !1131)
!1174 = !DILocation(line: 467, column: 3, scope: !1131)
!1175 = distinct !DISubprogram(name: "arch_remove", scope: !214, file: !214, line: 471, type: !460, isLocal: true, isDefinition: true, scopeLine: 472, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !483)
!1176 = !DILocalVariable(name: "argv", arg: 1, scope: !1175, file: !214, line: 471, type: !210)
!1177 = !DILocation(line: 471, column: 32, scope: !1175)
!1178 = !DILocalVariable(name: "archname", scope: !1175, file: !214, line: 473, type: !204)
!1179 = !DILocation(line: 473, column: 15, scope: !1175)
!1180 = !DILocation(line: 473, column: 31, scope: !1175)
!1181 = !DILocation(line: 473, column: 26, scope: !1175)
!1182 = !DILocalVariable(name: "arch", scope: !1175, file: !214, line: 474, type: !266)
!1183 = !DILocation(line: 474, column: 21, scope: !1175)
!1184 = !DILocalVariable(name: "iter", scope: !1175, file: !214, line: 475, type: !1185)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64, align: 64)
!1186 = !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_hash_iter", file: !4, line: 314, flags: DIFlagFwdDecl)
!1187 = !DILocation(line: 475, column: 25, scope: !1175)
!1188 = !DILocalVariable(name: "pkg", scope: !1175, file: !214, line: 476, type: !231)
!1189 = !DILocation(line: 476, column: 19, scope: !1175)
!1190 = !DILocation(line: 478, column: 7, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1175, file: !214, line: 478, column: 7)
!1192 = !DILocation(line: 478, column: 16, scope: !1191)
!1193 = !DILocation(line: 478, column: 23, scope: !1191)
!1194 = !DILocation(line: 478, column: 27, scope: !1195)
!1195 = !DILexicalBlockFile(scope: !1191, file: !214, discriminator: 1)
!1196 = !DILocation(line: 478, column: 26, scope: !1195)
!1197 = !DILocation(line: 478, column: 7, scope: !1195)
!1198 = !DILocation(line: 479, column: 14, scope: !1191)
!1199 = !DILocation(line: 479, column: 58, scope: !1191)
!1200 = !DILocation(line: 479, column: 69, scope: !1191)
!1201 = !DILocation(line: 479, column: 5, scope: !1195)
!1202 = !DILocation(line: 479, column: 5, scope: !1191)
!1203 = !DILocation(line: 481, column: 3, scope: !1175)
!1204 = !DILocation(line: 483, column: 25, scope: !1175)
!1205 = !DILocation(line: 483, column: 10, scope: !1175)
!1206 = !DILocation(line: 483, column: 8, scope: !1175)
!1207 = !DILocation(line: 484, column: 7, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1175, file: !214, line: 484, column: 7)
!1209 = !DILocation(line: 484, column: 13, scope: !1208)
!1210 = !DILocation(line: 484, column: 18, scope: !1208)
!1211 = !DILocation(line: 484, column: 7, scope: !1175)
!1212 = !DILocation(line: 485, column: 13, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1208, file: !214, line: 484, column: 40)
!1214 = !DILocation(line: 485, column: 69, scope: !1213)
!1215 = !DILocation(line: 485, column: 75, scope: !1213)
!1216 = !DILocation(line: 485, column: 5, scope: !1217)
!1217 = !DILexicalBlockFile(scope: !1213, file: !214, discriminator: 1)
!1218 = !DILocation(line: 486, column: 5, scope: !1213)
!1219 = !DILocation(line: 490, column: 10, scope: !1175)
!1220 = !DILocation(line: 490, column: 8, scope: !1175)
!1221 = !DILocation(line: 491, column: 3, scope: !1175)
!1222 = !DILocation(line: 491, column: 40, scope: !1223)
!1223 = !DILexicalBlockFile(scope: !1175, file: !214, discriminator: 1)
!1224 = !DILocation(line: 491, column: 17, scope: !1223)
!1225 = !DILocation(line: 491, column: 15, scope: !1223)
!1226 = !DILocation(line: 491, column: 3, scope: !1223)
!1227 = !DILocation(line: 492, column: 9, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1229, file: !214, line: 492, column: 9)
!1229 = distinct !DILexicalBlock(scope: !1175, file: !214, line: 491, column: 48)
!1230 = !DILocation(line: 492, column: 14, scope: !1228)
!1231 = !DILocation(line: 492, column: 21, scope: !1228)
!1232 = !DILocation(line: 492, column: 9, scope: !1229)
!1233 = !DILocation(line: 493, column: 7, scope: !1228)
!1234 = distinct !{!1234, !1221}
!1235 = !DILocation(line: 494, column: 9, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1229, file: !214, line: 494, column: 9)
!1237 = !DILocation(line: 494, column: 14, scope: !1236)
!1238 = !DILocation(line: 494, column: 24, scope: !1236)
!1239 = !DILocation(line: 494, column: 32, scope: !1236)
!1240 = !DILocation(line: 494, column: 29, scope: !1236)
!1241 = !DILocation(line: 494, column: 9, scope: !1229)
!1242 = !DILocation(line: 495, column: 11, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1244, file: !214, line: 495, column: 11)
!1244 = distinct !DILexicalBlock(scope: !1236, file: !214, line: 494, column: 38)
!1245 = !DILocation(line: 495, column: 11, scope: !1244)
!1246 = !DILocation(line: 496, column: 17, scope: !1243)
!1247 = !DILocation(line: 497, column: 17, scope: !1243)
!1248 = !DILocation(line: 497, column: 23, scope: !1243)
!1249 = !DILocation(line: 496, column: 9, scope: !1250)
!1250 = !DILexicalBlockFile(scope: !1243, file: !214, discriminator: 1)
!1251 = !DILocation(line: 496, column: 9, scope: !1243)
!1252 = !DILocation(line: 499, column: 16, scope: !1243)
!1253 = !DILocation(line: 500, column: 16, scope: !1243)
!1254 = !DILocation(line: 500, column: 22, scope: !1243)
!1255 = !DILocation(line: 499, column: 9, scope: !1250)
!1256 = !DILocation(line: 499, column: 9, scope: !1243)
!1257 = !DILocation(line: 501, column: 7, scope: !1244)
!1258 = !DILocation(line: 491, column: 3, scope: !1259)
!1259 = !DILexicalBlockFile(scope: !1175, file: !214, discriminator: 2)
!1260 = !DILocation(line: 504, column: 22, scope: !1175)
!1261 = !DILocation(line: 504, column: 3, scope: !1175)
!1262 = !DILocation(line: 506, column: 20, scope: !1175)
!1263 = !DILocation(line: 506, column: 3, scope: !1175)
!1264 = !DILocation(line: 507, column: 3, scope: !1175)
!1265 = !DILocation(line: 509, column: 3, scope: !1175)
!1266 = !DILocation(line: 511, column: 3, scope: !1175)
!1267 = !DILocation(line: 512, column: 1, scope: !1175)
!1268 = distinct !DISubprogram(name: "set_invoke_hook", scope: !214, file: !214, line: 358, type: !452, isLocal: true, isDefinition: true, scopeLine: 359, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !483)
!1269 = !DILocalVariable(name: "cip", arg: 1, scope: !1268, file: !214, line: 358, type: !454)
!1270 = !DILocation(line: 358, column: 39, scope: !1268)
!1271 = !DILocalVariable(name: "value", arg: 2, scope: !1268, file: !214, line: 358, type: !204)
!1272 = !DILocation(line: 358, column: 56, scope: !1268)
!1273 = !DILocalVariable(name: "hook_list", scope: !1268, file: !214, line: 360, type: !1017)
!1274 = !DILocation(line: 360, column: 23, scope: !1268)
!1275 = !DILocation(line: 360, column: 35, scope: !1268)
!1276 = !DILocation(line: 360, column: 40, scope: !1268)
!1277 = !DILocalVariable(name: "hook_new", scope: !1268, file: !214, line: 361, type: !429)
!1278 = !DILocation(line: 361, column: 23, scope: !1268)
!1279 = !DILocation(line: 363, column: 14, scope: !1268)
!1280 = !DILocation(line: 363, column: 12, scope: !1268)
!1281 = !DILocation(line: 364, column: 32, scope: !1268)
!1282 = !DILocation(line: 364, column: 23, scope: !1268)
!1283 = !DILocation(line: 364, column: 3, scope: !1268)
!1284 = !DILocation(line: 364, column: 13, scope: !1268)
!1285 = !DILocation(line: 364, column: 21, scope: !1268)
!1286 = !DILocation(line: 365, column: 3, scope: !1268)
!1287 = !DILocation(line: 365, column: 13, scope: !1268)
!1288 = !DILocation(line: 365, column: 18, scope: !1268)
!1289 = !DILocation(line: 368, column: 22, scope: !1268)
!1290 = !DILocation(line: 368, column: 4, scope: !1268)
!1291 = !DILocation(line: 368, column: 15, scope: !1268)
!1292 = !DILocation(line: 368, column: 20, scope: !1268)
!1293 = !DILocation(line: 369, column: 22, scope: !1268)
!1294 = !DILocation(line: 369, column: 32, scope: !1268)
!1295 = !DILocation(line: 369, column: 3, scope: !1268)
!1296 = !DILocation(line: 369, column: 14, scope: !1268)
!1297 = !DILocation(line: 369, column: 19, scope: !1268)
!1298 = !DILocation(line: 370, column: 1, scope: !1268)
!1299 = distinct !DISubprogram(name: "set_filter", scope: !214, file: !214, line: 266, type: !452, isLocal: true, isDefinition: true, scopeLine: 267, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !483)
!1300 = !DILocalVariable(name: "cip", arg: 1, scope: !1299, file: !214, line: 266, type: !454)
!1301 = !DILocation(line: 266, column: 34, scope: !1299)
!1302 = !DILocalVariable(name: "value", arg: 2, scope: !1299, file: !214, line: 266, type: !204)
!1303 = !DILocation(line: 266, column: 51, scope: !1299)
!1304 = !DILocation(line: 268, column: 14, scope: !1299)
!1305 = !DILocation(line: 268, column: 21, scope: !1299)
!1306 = !DILocation(line: 268, column: 26, scope: !1299)
!1307 = !DILocation(line: 268, column: 3, scope: !1299)
!1308 = !DILocation(line: 269, column: 1, scope: !1299)
!1309 = distinct !DISubprogram(name: "set_verify_format", scope: !214, file: !214, line: 272, type: !452, isLocal: true, isDefinition: true, scopeLine: 273, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !483)
!1310 = !DILocalVariable(name: "cip", arg: 1, scope: !1309, file: !214, line: 272, type: !454)
!1311 = !DILocation(line: 272, column: 41, scope: !1309)
!1312 = !DILocalVariable(name: "value", arg: 2, scope: !1309, file: !214, line: 272, type: !204)
!1313 = !DILocation(line: 272, column: 58, scope: !1309)
!1314 = !DILocation(line: 274, column: 26, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1309, file: !214, line: 274, column: 7)
!1316 = !DILocation(line: 274, column: 8, scope: !1315)
!1317 = !DILocation(line: 274, column: 7, scope: !1309)
!1318 = !DILocation(line: 275, column: 14, scope: !1315)
!1319 = !DILocation(line: 275, column: 60, scope: !1315)
!1320 = !DILocation(line: 275, column: 5, scope: !1321)
!1321 = !DILexicalBlockFile(scope: !1315, file: !214, discriminator: 1)
!1322 = !DILocation(line: 275, column: 5, scope: !1315)
!1323 = !DILocation(line: 276, column: 1, scope: !1309)
!1324 = distinct !DISubprogram(name: "set_pipe", scope: !214, file: !214, line: 326, type: !452, isLocal: true, isDefinition: true, scopeLine: 327, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !483)
!1325 = !DILocalVariable(name: "cip", arg: 1, scope: !1324, file: !214, line: 326, type: !454)
!1326 = !DILocation(line: 326, column: 32, scope: !1324)
!1327 = !DILocalVariable(name: "value", arg: 2, scope: !1324, file: !214, line: 326, type: !204)
!1328 = !DILocation(line: 326, column: 49, scope: !1324)
!1329 = !DILocalVariable(name: "v", scope: !1324, file: !214, line: 328, type: !422)
!1330 = !DILocation(line: 328, column: 8, scope: !1324)
!1331 = !DILocation(line: 330, column: 34, scope: !1324)
!1332 = !DILocation(line: 330, column: 39, scope: !1324)
!1333 = !DILocation(line: 330, column: 7, scope: !1324)
!1334 = !DILocation(line: 330, column: 5, scope: !1324)
!1335 = !DILocation(line: 332, column: 16, scope: !1324)
!1336 = !DILocation(line: 332, column: 3, scope: !1324)
!1337 = !DILocation(line: 333, column: 1, scope: !1324)
!1338 = distinct !DISubprogram(name: "set_no_pager", scope: !214, file: !214, line: 257, type: !452, isLocal: true, isDefinition: true, scopeLine: 258, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !483)
!1339 = !DILocalVariable(name: "ci", arg: 1, scope: !1338, file: !214, line: 257, type: !454)
!1340 = !DILocation(line: 257, column: 36, scope: !1338)
!1341 = !DILocalVariable(name: "value", arg: 2, scope: !1338, file: !214, line: 257, type: !204)
!1342 = !DILocation(line: 257, column: 52, scope: !1338)
!1343 = !DILocation(line: 259, column: 3, scope: !1338)
!1344 = !DILocation(line: 262, column: 3, scope: !1338)
!1345 = !DILocation(line: 263, column: 1, scope: !1338)
!1346 = distinct !DISubprogram(name: "set_root", scope: !214, file: !214, line: 285, type: !452, isLocal: true, isDefinition: true, scopeLine: 286, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !483)
!1347 = !DILocalVariable(name: "cip", arg: 1, scope: !1346, file: !214, line: 285, type: !454)
!1348 = !DILocation(line: 285, column: 32, scope: !1346)
!1349 = !DILocalVariable(name: "value", arg: 2, scope: !1346, file: !214, line: 285, type: !204)
!1350 = !DILocation(line: 285, column: 49, scope: !1346)
!1351 = !DILocation(line: 287, column: 31, scope: !1346)
!1352 = !DILocation(line: 287, column: 13, scope: !1346)
!1353 = !DILocation(line: 287, column: 11, scope: !1346)
!1354 = !DILocation(line: 288, column: 14, scope: !1346)
!1355 = !DILocation(line: 288, column: 12, scope: !1346)
!1356 = !DILocation(line: 289, column: 1, scope: !1346)
!1357 = distinct !DISubprogram(name: "set_integer", scope: !214, file: !214, line: 320, type: !452, isLocal: true, isDefinition: true, scopeLine: 321, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !483)
!1358 = !DILocalVariable(name: "cip", arg: 1, scope: !1357, file: !214, line: 320, type: !454)
!1359 = !DILocation(line: 320, column: 35, scope: !1357)
!1360 = !DILocalVariable(name: "value", arg: 2, scope: !1357, file: !214, line: 320, type: !204)
!1361 = !DILocation(line: 320, column: 52, scope: !1357)
!1362 = !DILocation(line: 322, column: 48, scope: !1357)
!1363 = !DILocation(line: 322, column: 53, scope: !1357)
!1364 = !DILocation(line: 322, column: 21, scope: !1357)
!1365 = !DILocation(line: 322, column: 4, scope: !1357)
!1366 = !DILocation(line: 322, column: 9, scope: !1357)
!1367 = !DILocation(line: 322, column: 19, scope: !1357)
!1368 = !DILocation(line: 323, column: 1, scope: !1357)
!1369 = distinct !DISubprogram(name: "set_instdir", scope: !214, file: !214, line: 279, type: !452, isLocal: true, isDefinition: true, scopeLine: 280, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !483)
!1370 = !DILocalVariable(name: "cip", arg: 1, scope: !1369, file: !214, line: 279, type: !454)
!1371 = !DILocation(line: 279, column: 35, scope: !1369)
!1372 = !DILocalVariable(name: "value", arg: 2, scope: !1369, file: !214, line: 279, type: !204)
!1373 = !DILocation(line: 279, column: 52, scope: !1369)
!1374 = !DILocation(line: 281, column: 31, scope: !1369)
!1375 = !DILocation(line: 281, column: 13, scope: !1369)
!1376 = !DILocation(line: 281, column: 11, scope: !1369)
!1377 = !DILocation(line: 282, column: 1, scope: !1369)
!1378 = distinct !DISubprogram(name: "set_ignore_depends", scope: !214, file: !214, line: 292, type: !452, isLocal: true, isDefinition: true, scopeLine: 293, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !483)
!1379 = !DILocalVariable(name: "cip", arg: 1, scope: !1378, file: !214, line: 292, type: !454)
!1380 = !DILocation(line: 292, column: 42, scope: !1378)
!1381 = !DILocalVariable(name: "value", arg: 2, scope: !1378, file: !214, line: 292, type: !204)
!1382 = !DILocation(line: 292, column: 59, scope: !1378)
!1383 = !DILocalVariable(name: "copy", scope: !1378, file: !214, line: 294, type: !400)
!1384 = !DILocation(line: 294, column: 9, scope: !1378)
!1385 = !DILocalVariable(name: "p", scope: !1378, file: !214, line: 294, type: !400)
!1386 = !DILocation(line: 294, column: 16, scope: !1378)
!1387 = !DILocation(line: 296, column: 25, scope: !1378)
!1388 = !DILocation(line: 296, column: 18, scope: !1378)
!1389 = !DILocation(line: 296, column: 31, scope: !1378)
!1390 = !DILocation(line: 296, column: 9, scope: !1391)
!1391 = !DILexicalBlockFile(scope: !1378, file: !214, discriminator: 1)
!1392 = !DILocation(line: 296, column: 7, scope: !1378)
!1393 = !DILocation(line: 297, column: 10, scope: !1378)
!1394 = !DILocation(line: 297, column: 15, scope: !1378)
!1395 = !DILocation(line: 297, column: 3, scope: !1378)
!1396 = !DILocation(line: 298, column: 15, scope: !1378)
!1397 = !DILocation(line: 298, column: 8, scope: !1378)
!1398 = !DILocation(line: 298, column: 22, scope: !1378)
!1399 = !DILocation(line: 298, column: 3, scope: !1378)
!1400 = !DILocation(line: 298, column: 27, scope: !1378)
!1401 = !DILocation(line: 299, column: 10, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1378, file: !214, line: 299, column: 3)
!1403 = !DILocation(line: 299, column: 9, scope: !1402)
!1404 = !DILocation(line: 299, column: 8, scope: !1402)
!1405 = !DILocation(line: 299, column: 17, scope: !1406)
!1406 = !DILexicalBlockFile(scope: !1407, file: !214, discriminator: 1)
!1407 = distinct !DILexicalBlock(scope: !1402, file: !214, line: 299, column: 3)
!1408 = !DILocation(line: 299, column: 16, scope: !1406)
!1409 = !DILocation(line: 299, column: 3, scope: !1406)
!1410 = !DILocation(line: 300, column: 10, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1412, file: !214, line: 300, column: 9)
!1412 = distinct !DILexicalBlock(scope: !1407, file: !214, line: 299, column: 25)
!1413 = !DILocation(line: 300, column: 9, scope: !1411)
!1414 = !DILocation(line: 300, column: 12, scope: !1411)
!1415 = !DILocation(line: 300, column: 9, scope: !1412)
!1416 = !DILocation(line: 300, column: 20, scope: !1417)
!1417 = !DILexicalBlockFile(scope: !1411, file: !214, discriminator: 1)
!1418 = !DILocation(line: 301, column: 7, scope: !1412)
!1419 = !DILocation(line: 301, column: 10, scope: !1412)
!1420 = !DILocation(line: 302, column: 11, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1412, file: !214, line: 302, column: 9)
!1422 = !DILocation(line: 302, column: 10, scope: !1421)
!1423 = !DILocation(line: 302, column: 13, scope: !1421)
!1424 = !DILocation(line: 302, column: 17, scope: !1425)
!1425 = !DILexicalBlockFile(scope: !1421, file: !214, discriminator: 1)
!1426 = !DILocation(line: 302, column: 16, scope: !1425)
!1427 = !DILocation(line: 302, column: 18, scope: !1425)
!1428 = !DILocation(line: 302, column: 24, scope: !1425)
!1429 = !DILocation(line: 302, column: 27, scope: !1430)
!1430 = !DILexicalBlockFile(scope: !1421, file: !214, discriminator: 2)
!1431 = !DILocation(line: 302, column: 30, scope: !1430)
!1432 = !DILocation(line: 302, column: 34, scope: !1430)
!1433 = !DILocation(line: 302, column: 28, scope: !1430)
!1434 = !DILocation(line: 302, column: 9, scope: !1430)
!1435 = !DILocation(line: 303, column: 16, scope: !1421)
!1436 = !DILocation(line: 304, column: 16, scope: !1421)
!1437 = !DILocation(line: 304, column: 21, scope: !1421)
!1438 = !DILocation(line: 304, column: 28, scope: !1421)
!1439 = !DILocation(line: 303, column: 7, scope: !1425)
!1440 = !DILocation(line: 303, column: 7, scope: !1421)
!1441 = !DILocation(line: 305, column: 3, scope: !1412)
!1442 = !DILocation(line: 299, column: 21, scope: !1443)
!1443 = !DILexicalBlockFile(scope: !1407, file: !214, discriminator: 2)
!1444 = !DILocation(line: 299, column: 3, scope: !1443)
!1445 = distinct !{!1445, !1446}
!1446 = !DILocation(line: 299, column: 3, scope: !1378)
!1447 = !DILocation(line: 306, column: 6, scope: !1378)
!1448 = !DILocation(line: 306, column: 4, scope: !1378)
!1449 = !DILocation(line: 307, column: 3, scope: !1378)
!1450 = !DILocation(line: 307, column: 11, scope: !1391)
!1451 = !DILocation(line: 307, column: 10, scope: !1391)
!1452 = !DILocation(line: 307, column: 3, scope: !1391)
!1453 = !DILocalVariable(name: "pkg", scope: !1454, file: !214, line: 308, type: !231)
!1454 = distinct !DILexicalBlock(scope: !1378, file: !214, line: 307, column: 14)
!1455 = !DILocation(line: 308, column: 21, scope: !1454)
!1456 = !DILocation(line: 310, column: 38, scope: !1454)
!1457 = !DILocation(line: 310, column: 43, scope: !1454)
!1458 = !DILocation(line: 310, column: 11, scope: !1454)
!1459 = !DILocation(line: 310, column: 9, scope: !1454)
!1460 = !DILocation(line: 311, column: 39, scope: !1454)
!1461 = !DILocation(line: 311, column: 5, scope: !1454)
!1462 = !DILocation(line: 313, column: 16, scope: !1454)
!1463 = !DILocation(line: 313, column: 9, scope: !1454)
!1464 = !DILocation(line: 313, column: 18, scope: !1454)
!1465 = !DILocation(line: 313, column: 6, scope: !1454)
!1466 = !DILocation(line: 307, column: 3, scope: !1467)
!1467 = !DILexicalBlockFile(scope: !1378, file: !214, discriminator: 2)
!1468 = distinct !{!1468, !1449}
!1469 = !DILocation(line: 316, column: 8, scope: !1378)
!1470 = !DILocation(line: 316, column: 3, scope: !1378)
!1471 = !DILocation(line: 317, column: 1, scope: !1378)
!1472 = distinct !DISubprogram(name: "set_debug", scope: !214, file: !214, line: 226, type: !452, isLocal: true, isDefinition: true, scopeLine: 227, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !483)
!1473 = !DILocalVariable(name: "cpi", arg: 1, scope: !1472, file: !214, line: 226, type: !454)
!1474 = !DILocation(line: 226, column: 33, scope: !1472)
!1475 = !DILocalVariable(name: "value", arg: 2, scope: !1472, file: !214, line: 226, type: !204)
!1476 = !DILocation(line: 226, column: 50, scope: !1472)
!1477 = !DILocalVariable(name: "endp", scope: !1472, file: !214, line: 228, type: !400)
!1478 = !DILocation(line: 228, column: 9, scope: !1472)
!1479 = !DILocalVariable(name: "mask", scope: !1472, file: !214, line: 229, type: !422)
!1480 = !DILocation(line: 229, column: 8, scope: !1472)
!1481 = !DILocalVariable(name: "dip", scope: !1472, file: !214, line: 230, type: !1482)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64, align: 64)
!1483 = !DILocation(line: 230, column: 27, scope: !1472)
!1484 = !DILocation(line: 232, column: 8, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1472, file: !214, line: 232, column: 7)
!1486 = !DILocation(line: 232, column: 7, scope: !1485)
!1487 = !DILocation(line: 232, column: 14, scope: !1485)
!1488 = !DILocation(line: 232, column: 7, scope: !1472)
!1489 = !DILocation(line: 233, column: 12, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1485, file: !214, line: 232, column: 22)
!1491 = !DILocation(line: 233, column: 5, scope: !1492)
!1492 = !DILexicalBlockFile(scope: !1490, file: !214, discriminator: 1)
!1493 = !DILocation(line: 238, column: 14, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1490, file: !214, line: 238, column: 5)
!1495 = !DILocation(line: 238, column: 10, scope: !1494)
!1496 = !DILocation(line: 238, column: 28, scope: !1497)
!1497 = !DILexicalBlockFile(scope: !1498, file: !214, discriminator: 1)
!1498 = distinct !DILexicalBlock(scope: !1494, file: !214, line: 238, column: 5)
!1499 = !DILocation(line: 238, column: 33, scope: !1497)
!1500 = !DILocation(line: 238, column: 5, scope: !1497)
!1501 = !DILocation(line: 239, column: 34, scope: !1498)
!1502 = !DILocation(line: 239, column: 39, scope: !1498)
!1503 = !DILocation(line: 239, column: 45, scope: !1498)
!1504 = !DILocation(line: 239, column: 50, scope: !1498)
!1505 = !DILocation(line: 239, column: 64, scope: !1498)
!1506 = !DILocation(line: 239, column: 69, scope: !1498)
!1507 = !DILocation(line: 239, column: 56, scope: !1498)
!1508 = !DILocation(line: 239, column: 7, scope: !1497)
!1509 = !DILocation(line: 239, column: 7, scope: !1498)
!1510 = !DILocation(line: 238, column: 42, scope: !1511)
!1511 = !DILexicalBlockFile(scope: !1498, file: !214, discriminator: 2)
!1512 = !DILocation(line: 238, column: 5, scope: !1511)
!1513 = distinct !{!1513, !1514}
!1514 = !DILocation(line: 238, column: 5, scope: !1490)
!1515 = !DILocation(line: 241, column: 12, scope: !1490)
!1516 = !DILocation(line: 241, column: 5, scope: !1492)
!1517 = !DILocation(line: 244, column: 13, scope: !1490)
!1518 = !DILocation(line: 244, column: 21, scope: !1490)
!1519 = !DILocation(line: 244, column: 5, scope: !1492)
!1520 = !DILocation(line: 245, column: 5, scope: !1490)
!1521 = !DILocation(line: 248, column: 4, scope: !1472)
!1522 = !DILocation(line: 248, column: 8, scope: !1472)
!1523 = !DILocation(line: 249, column: 17, scope: !1472)
!1524 = !DILocation(line: 249, column: 10, scope: !1472)
!1525 = !DILocation(line: 249, column: 8, scope: !1472)
!1526 = !DILocation(line: 250, column: 7, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1472, file: !214, line: 250, column: 7)
!1528 = !DILocation(line: 250, column: 16, scope: !1527)
!1529 = !DILocation(line: 250, column: 13, scope: !1527)
!1530 = !DILocation(line: 250, column: 21, scope: !1527)
!1531 = !DILocation(line: 250, column: 25, scope: !1532)
!1532 = !DILexicalBlockFile(scope: !1527, file: !214, discriminator: 1)
!1533 = !DILocation(line: 250, column: 24, scope: !1532)
!1534 = !DILocation(line: 250, column: 30, scope: !1532)
!1535 = !DILocation(line: 250, column: 33, scope: !1536)
!1536 = !DILexicalBlockFile(scope: !1527, file: !214, discriminator: 2)
!1537 = !DILocation(line: 250, column: 38, scope: !1536)
!1538 = !DILocation(line: 250, column: 42, scope: !1536)
!1539 = !DILocation(line: 250, column: 46, scope: !1540)
!1540 = !DILexicalBlockFile(scope: !1527, file: !214, discriminator: 3)
!1541 = !DILocation(line: 250, column: 45, scope: !1540)
!1542 = !DILocation(line: 250, column: 50, scope: !1540)
!1543 = !DILocation(line: 250, column: 7, scope: !1540)
!1544 = !DILocation(line: 251, column: 14, scope: !1527)
!1545 = !DILocation(line: 251, column: 66, scope: !1527)
!1546 = !DILocation(line: 251, column: 71, scope: !1527)
!1547 = !DILocation(line: 251, column: 5, scope: !1532)
!1548 = !DILocation(line: 251, column: 5, scope: !1527)
!1549 = !DILocation(line: 253, column: 18, scope: !1472)
!1550 = !DILocation(line: 253, column: 3, scope: !1472)
!1551 = !DILocation(line: 254, column: 1, scope: !1472)
!1552 = distinct !DISubprogram(name: "usage", scope: !214, file: !214, line: 78, type: !452, isLocal: true, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !483)
!1553 = !DILocalVariable(name: "ci", arg: 1, scope: !1552, file: !214, line: 78, type: !454)
!1554 = !DILocation(line: 78, column: 29, scope: !1552)
!1555 = !DILocalVariable(name: "value", arg: 2, scope: !1552, file: !214, line: 78, type: !204)
!1556 = !DILocation(line: 78, column: 45, scope: !1552)
!1557 = !DILocation(line: 80, column: 10, scope: !1552)
!1558 = !DILocation(line: 80, column: 3, scope: !1559)
!1559 = !DILexicalBlockFile(scope: !1552, file: !214, discriminator: 1)
!1560 = !DILocation(line: 84, column: 10, scope: !1552)
!1561 = !DILocation(line: 84, column: 3, scope: !1559)
!1562 = !DILocation(line: 120, column: 10, scope: !1552)
!1563 = !DILocation(line: 120, column: 3, scope: !1559)
!1564 = !DILocation(line: 125, column: 10, scope: !1552)
!1565 = !DILocation(line: 125, column: 3, scope: !1559)
!1566 = !DILocation(line: 130, column: 10, scope: !1552)
!1567 = !DILocation(line: 130, column: 3, scope: !1559)
!1568 = !DILocation(line: 134, column: 10, scope: !1552)
!1569 = !DILocation(line: 134, column: 3, scope: !1559)
!1570 = !DILocation(line: 140, column: 10, scope: !1552)
!1571 = !DILocation(line: 140, column: 3, scope: !1559)
!1572 = !DILocation(line: 168, column: 10, scope: !1552)
!1573 = !DILocation(line: 168, column: 3, scope: !1559)
!1574 = !DILocation(line: 175, column: 10, scope: !1552)
!1575 = !DILocation(line: 175, column: 3, scope: !1559)
!1576 = !DILocation(line: 178, column: 11, scope: !1552)
!1577 = !DILocation(line: 178, column: 19, scope: !1552)
!1578 = !DILocation(line: 178, column: 3, scope: !1559)
!1579 = !DILocation(line: 180, column: 3, scope: !1552)
!1580 = !DILocation(line: 181, column: 1, scope: !1552)
!1581 = distinct !DISubprogram(name: "printversion", scope: !214, file: !214, line: 59, type: !452, isLocal: true, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !483)
!1582 = !DILocalVariable(name: "ci", arg: 1, scope: !1581, file: !214, line: 59, type: !454)
!1583 = !DILocation(line: 59, column: 36, scope: !1581)
!1584 = !DILocalVariable(name: "value", arg: 2, scope: !1581, file: !214, line: 59, type: !204)
!1585 = !DILocation(line: 59, column: 52, scope: !1581)
!1586 = !DILocation(line: 61, column: 10, scope: !1581)
!1587 = !DILocation(line: 61, column: 3, scope: !1588)
!1588 = !DILexicalBlockFile(scope: !1581, file: !214, discriminator: 1)
!1589 = !DILocation(line: 63, column: 10, scope: !1581)
!1590 = !DILocation(line: 63, column: 3, scope: !1588)
!1591 = !DILocation(line: 67, column: 11, scope: !1581)
!1592 = !DILocation(line: 67, column: 19, scope: !1581)
!1593 = !DILocation(line: 67, column: 3, scope: !1588)
!1594 = !DILocation(line: 69, column: 3, scope: !1581)
!1595 = !DILocation(line: 70, column: 1, scope: !1581)
!1596 = distinct !DISubprogram(name: "run_logger", scope: !214, file: !214, line: 406, type: !1597, isLocal: true, isDefinition: true, scopeLine: 407, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !483)
!1597 = !DISubroutineType(types: !1598)
!1598 = !{!208, !429, !204}
!1599 = !DILocalVariable(name: "hook", arg: 1, scope: !1596, file: !214, line: 406, type: !429)
!1600 = !DILocation(line: 406, column: 32, scope: !1596)
!1601 = !DILocalVariable(name: "name", arg: 2, scope: !1596, file: !214, line: 406, type: !204)
!1602 = !DILocation(line: 406, column: 50, scope: !1596)
!1603 = !DILocalVariable(name: "pid", scope: !1596, file: !214, line: 408, type: !1604)
!1604 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !390, line: 98, baseType: !1605)
!1605 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !392, line: 133, baseType: !208)
!1606 = !DILocation(line: 408, column: 9, scope: !1596)
!1607 = !DILocalVariable(name: "p", scope: !1596, file: !214, line: 409, type: !1608)
!1608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 64, align: 32, elements: !1609)
!1609 = !{!1610}
!1610 = !DISubrange(count: 2)
!1611 = !DILocation(line: 409, column: 7, scope: !1596)
!1612 = !DILocation(line: 411, column: 10, scope: !1596)
!1613 = !DILocation(line: 411, column: 3, scope: !1596)
!1614 = !DILocation(line: 413, column: 9, scope: !1596)
!1615 = !DILocation(line: 413, column: 7, scope: !1596)
!1616 = !DILocation(line: 414, column: 7, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1596, file: !214, line: 414, column: 7)
!1618 = !DILocation(line: 414, column: 11, scope: !1617)
!1619 = !DILocation(line: 414, column: 7, scope: !1596)
!1620 = !DILocation(line: 416, column: 12, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1617, file: !214, line: 414, column: 17)
!1622 = !DILocation(line: 416, column: 5, scope: !1621)
!1623 = !DILocation(line: 417, column: 5, scope: !1621)
!1624 = !DILocation(line: 419, column: 11, scope: !1621)
!1625 = !DILocation(line: 419, column: 5, scope: !1621)
!1626 = !DILocation(line: 420, column: 11, scope: !1621)
!1627 = !DILocation(line: 420, column: 5, scope: !1621)
!1628 = !DILocation(line: 422, column: 19, scope: !1621)
!1629 = !DILocation(line: 422, column: 25, scope: !1621)
!1630 = !DILocation(line: 422, column: 34, scope: !1621)
!1631 = !DILocation(line: 422, column: 5, scope: !1621)
!1632 = !DILocation(line: 424, column: 9, scope: !1596)
!1633 = !DILocation(line: 424, column: 3, scope: !1596)
!1634 = !DILocation(line: 426, column: 10, scope: !1596)
!1635 = !DILocation(line: 426, column: 3, scope: !1596)
