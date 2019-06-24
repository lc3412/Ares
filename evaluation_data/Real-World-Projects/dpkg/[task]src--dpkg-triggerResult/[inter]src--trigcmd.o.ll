; ModuleID = './[inter]src--trigcmd.o.i'
source_filename = "./[inter]src--trigcmd.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cmdinfo = type { i8*, i8, i32, i32*, i8**, void (%struct.cmdinfo*, i8*)*, i32, i8*, i32 (i8**)* }
%struct.trigdefmeths = type { void (i8*)*, void (i8*)*, void ()* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.dpkg_error = type { i32, i32, i8* }
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
%struct.perpackagestate = type opaque
%struct.archivedetails = type { %struct.archivedetails*, i8*, i8*, i8*, i8* }
%struct.anon = type { %struct.trigaw*, %struct.trigaw* }
%struct.trigaw = type { %struct.pkginfo*, %struct.pkginfo*, %struct.trigaw*, %struct.anon.0 }
%struct.anon.0 = type { %struct.trigaw*, %struct.trigaw* }
%struct.trigpend = type { %struct.trigpend*, i8* }
%struct.fsys_namenode_list = type { %struct.fsys_namenode_list*, %struct.fsys_namenode* }
%struct.fsys_namenode = type { %struct.fsys_namenode*, i8*, %struct.pkg_list*, %struct.fsys_diversion*, %struct.file_stat*, %struct.trigfileint*, i32, i8*, i8*, %struct.file_ondisk_id* }
%struct.pkg_list = type opaque
%struct.fsys_diversion = type { %struct.fsys_namenode*, %struct.fsys_namenode*, %struct.pkgset*, %struct.fsys_diversion* }
%struct.file_stat = type { i32, i32, i32, i8*, i8* }
%struct.trigfileint = type { %struct.pkginfo*, %struct.pkgbin*, %struct.fsys_namenode*, i32, %struct.trigfileint*, %struct.anon.1 }
%struct.anon.1 = type { %struct.trigfileint*, %struct.trigfileint* }
%struct.file_ondisk_id = type { i64, i64 }

@.str = private unnamed_addr constant [5 x i8] c"dpkg\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"dpkg-trigger\00", align 1
@cmdinfos = internal constant [9 x %struct.cmdinfo] [%struct.cmdinfo { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8 0, i32 1, i32* null, i8** @admindir, void (%struct.cmdinfo*, i8*)* null, i32 0, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8 102, i32 1, i32* null, i8** @bypackage, void (%struct.cmdinfo*, i8*)* null, i32 0, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8 0, i32 0, i32* @f_await, i8** null, void (%struct.cmdinfo*, i8*)* null, i32 1, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i8 0, i32 0, i32* @f_await, i8** null, void (%struct.cmdinfo*, i8*)* null, i32 0, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i8 0, i32 0, i32* @f_noact, i8** null, void (%struct.cmdinfo*, i8*)* null, i32 1, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i8 0, i32 0, i32* @f_check, i8** null, void (%struct.cmdinfo*, i8*)* null, i32 1, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8 63, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @usage, i32 0, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i8 0, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @printversion, i32 0, i8* null, i32 (i8**)* null }, %struct.cmdinfo zeroinitializer], align 16
@printforhelp = internal constant [54 x i8] c"Type dpkg-trigger --help for help about this utility.\00", align 16
@admindir = internal global i8* null, align 8
@f_check = internal global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"--%s takes no arguments\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"check-supported\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"takes one argument, the trigger name\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"illegal awaited package name '%.250s': %.250s\00", align 1
@bypackage = internal global i8* null, align 8
@activate = internal global i8* null, align 8
@.str.6 = private unnamed_addr constant [38 x i8] c"invalid trigger name '%.250s': %.250s\00", align 1
@tdm_add = internal constant %struct.trigdefmeths { void (i8*)* @tdm_add_trig_begin, void (i8*)* @tdm_add_package, void ()* @tdm_add_trig_end }, align 8
@f_noact = internal global i32 0, align 4
@done_trig = internal global i8 0, align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"admindir\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"by-package\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"await\00", align 1
@f_await = internal global i32 1, align 4
@.str.11 = private unnamed_addr constant [9 x i8] c"no-await\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"no-act\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.15 = private unnamed_addr constant [79 x i8] c"Usage: %s [<options> ...] <trigger-name>\0A       %s [<options> ...] <command>\0A\0A\00", align 1
@.str.16 = private unnamed_addr constant [92 x i8] c"Commands:\0A  --check-supported                Check if the running dpkg supports triggers.\0A\0A\00", align 1
@.str.17 = private unnamed_addr constant [114 x i8] c"  -?, --help                       Show this help message.\0A      --version                    Show the version.\0A\0A\00", align 1
@.str.18 = private unnamed_addr constant [428 x i8] c"Options:\0A  --admindir=<directory>           Use <directory> instead of %s.\0A  --by-package=<package>           Override trigger awaiter (normally set\0A                                     by dpkg).\0A  --await                          Package needs to await the processing.\0A  --no-await                       No package needs to await the processing.\0A  --no-act                         Just test - don't actually change anything.\0A\0A\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"/usr/local/var/lib/dpkg\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.20 = private unnamed_addr constant [18 x i8] c"<standard output>\00", align 1
@.str.21 = private unnamed_addr constant [47 x i8] c"Debian %s package trigger utility version %s.\0A\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"1.19.5-19-g1da50 (amd64)\00", align 1
@.str.23 = private unnamed_addr constant [124 x i8] c"This is free software; see the GNU General Public License version 2 or\0Alater for copying conditions. There is NO warranty.\0A\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"triggers data directory not yet created\00", align 1
@.str.25 = private unnamed_addr constant [37 x i8] c"trigger records not yet in existence\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"trigcmd.c\00", align 1
@__func__.do_check = private unnamed_addr constant [9 x i8] c"do_check\00", align 1
@.str.27 = private unnamed_addr constant [47 x i8] c"unknown trigdef_update_start return value '%d'\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"DPKG_MAINTSCRIPT_PACKAGE\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"DPKG_MAINTSCRIPT_ARCH\00", align 1
@.str.31 = private unnamed_addr constant [72 x i8] c"must be called from a maintainer script (or with a --by-package option)\00", align 1
@ctrig = internal global i8 0, align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32, i8**) #0 !dbg !184 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !188, metadata !189), !dbg !190
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !191, metadata !189), !dbg !192
  call void @llvm.dbg.declare(metadata i8** %6, metadata !193, metadata !189), !dbg !194
  call void @llvm.dbg.declare(metadata i32* %7, metadata !195, metadata !189), !dbg !196
  call void @llvm.dbg.declare(metadata i32* %8, metadata !197, metadata !189), !dbg !198
  call void @dpkg_locales_init(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)), !dbg !199
  call void @dpkg_program_init(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)), !dbg !200
  call void @dpkg_options_parse(i8*** %5, %struct.cmdinfo* getelementptr inbounds ([9 x %struct.cmdinfo], [9 x %struct.cmdinfo]* @cmdinfos, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @printforhelp, i32 0, i32 0)), !dbg !201
  %9 = load i8*, i8** @admindir, align 8, !dbg !202
  %10 = call i8* @dpkg_db_set_dir(i8* %9), !dbg !203
  store i8* %10, i8** @admindir, align 8, !dbg !204
  %11 = load i32, i32* @f_check, align 4, !dbg !205
  %12 = icmp ne i32 %11, 0, !dbg !205
  br i1 %12, label %13, label %21, !dbg !207

; <label>:13:                                     ; preds = %2
  %14 = load i8**, i8*** %5, align 8, !dbg !208
  %15 = load i8*, i8** %14, align 8, !dbg !211
  %16 = icmp ne i8* %15, null, !dbg !211
  br i1 %16, label %17, label %19, !dbg !212

; <label>:17:                                     ; preds = %13
  %18 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0)) #9, !dbg !213
  call void (i8*, ...) @badusage(i8* %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0)) #10, !dbg !214
  unreachable, !dbg !216

; <label>:19:                                     ; preds = %13
  %20 = call i32 @do_check(), !dbg !217
  store i32 %20, i32* %3, align 4, !dbg !218
  br label %72, !dbg !218

; <label>:21:                                     ; preds = %2
  %22 = load i8**, i8*** %5, align 8, !dbg !219
  %23 = load i8*, i8** %22, align 8, !dbg !221
  %24 = icmp ne i8* %23, null, !dbg !221
  br i1 %24, label %25, label %30, !dbg !222

; <label>:25:                                     ; preds = %21
  %26 = load i8**, i8*** %5, align 8, !dbg !223
  %27 = getelementptr inbounds i8*, i8** %26, i64 1, !dbg !223
  %28 = load i8*, i8** %27, align 8, !dbg !223
  %29 = icmp ne i8* %28, null, !dbg !223
  br i1 %29, label %30, label %32, !dbg !225

; <label>:30:                                     ; preds = %25, %21
  %31 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i32 0, i32 0)) #9, !dbg !226
  call void (i8*, ...) @badusage(i8* %31) #10, !dbg !227
  unreachable, !dbg !228

; <label>:32:                                     ; preds = %25
  %33 = call i8* @parse_awaiter_package(), !dbg !229
  store i8* %33, i8** %6, align 8, !dbg !230
  %34 = load i8*, i8** %6, align 8, !dbg !231
  %35 = icmp ne i8* %34, null, !dbg !231
  br i1 %35, label %36, label %40, !dbg !233

; <label>:36:                                     ; preds = %32
  %37 = call i8* @gettext(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i32 0, i32 0)) #9, !dbg !234
  %38 = load i8*, i8** @bypackage, align 8, !dbg !235
  %39 = load i8*, i8** %6, align 8, !dbg !236
  call void (i8*, ...) @badusage(i8* %37, i8* %38, i8* %39) #10, !dbg !237
  unreachable, !dbg !239

; <label>:40:                                     ; preds = %32
  call void @fsys_hash_init(), !dbg !240
  %41 = load i8**, i8*** %5, align 8, !dbg !241
  %42 = getelementptr inbounds i8*, i8** %41, i64 0, !dbg !241
  %43 = load i8*, i8** %42, align 8, !dbg !241
  store i8* %43, i8** @activate, align 8, !dbg !242
  %44 = load i8*, i8** @activate, align 8, !dbg !243
  %45 = call i8* @trig_name_is_illegal(i8* %44), !dbg !244
  store i8* %45, i8** %6, align 8, !dbg !245
  %46 = load i8*, i8** %6, align 8, !dbg !246
  %47 = icmp ne i8* %46, null, !dbg !246
  br i1 %47, label %48, label %52, !dbg !248

; <label>:48:                                     ; preds = %40
  %49 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i32 0, i32 0)) #9, !dbg !249
  %50 = load i8*, i8** @activate, align 8, !dbg !250
  %51 = load i8*, i8** %6, align 8, !dbg !251
  call void (i8*, ...) @badusage(i8* %49, i8* %50, i8* %51) #10, !dbg !252
  unreachable, !dbg !254

; <label>:52:                                     ; preds = %40
  call void @trigdef_set_methods(%struct.trigdefmeths* @tdm_add), !dbg !255
  store i32 1, i32* %7, align 4, !dbg !256
  %53 = load i32, i32* @f_noact, align 4, !dbg !257
  %54 = icmp ne i32 %53, 0, !dbg !257
  br i1 %54, label %58, label %55, !dbg !259

; <label>:55:                                     ; preds = %52
  %56 = load i32, i32* %7, align 4, !dbg !260
  %57 = or i32 %56, 10, !dbg !260
  store i32 %57, i32* %7, align 4, !dbg !260
  br label %58, !dbg !261

; <label>:58:                                     ; preds = %55, %52
  %59 = load i32, i32* %7, align 4, !dbg !262
  %60 = call i32 @trigdef_update_start(i32 %59), !dbg !263
  store i32 %60, i32* %8, align 4, !dbg !264
  %61 = load i32, i32* %8, align 4, !dbg !265
  %62 = icmp sge i32 %61, 0, !dbg !267
  br i1 %62, label %63, label %71, !dbg !268

; <label>:63:                                     ; preds = %58
  %64 = call i32 @trigdef_parse(), !dbg !269
  %65 = load i8, i8* @done_trig, align 1, !dbg !271
  %66 = trunc i8 %65 to i1, !dbg !271
  br i1 %66, label %70, label %67, !dbg !273

; <label>:67:                                     ; preds = %63
  %68 = load i8*, i8** @activate, align 8, !dbg !274
  %69 = load i8*, i8** @bypackage, align 8, !dbg !275
  call void (i8*, ...) @trigdef_update_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* %68, i8* %69), !dbg !276
  br label %70, !dbg !276

; <label>:70:                                     ; preds = %67, %63
  call void @trigdef_process_done(), !dbg !277
  br label %71, !dbg !278

; <label>:71:                                     ; preds = %70, %58
  call void @dpkg_program_done(), !dbg !279
  store i32 0, i32* %3, align 4, !dbg !280
  br label %72, !dbg !280

; <label>:72:                                     ; preds = %71, %19
  %73 = load i32, i32* %3, align 4, !dbg !281
  ret i32 %73, !dbg !281
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @dpkg_locales_init(i8*) #2

declare void @dpkg_program_init(i8*) #2

declare void @dpkg_options_parse(i8***, %struct.cmdinfo*, i8*) #2

declare i8* @dpkg_db_set_dir(i8*) #2

; Function Attrs: noreturn
declare void @badusage(i8*, ...) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

; Function Attrs: nounwind uwtable
define internal i32 @do_check() #0 !dbg !282 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !285, metadata !189), !dbg !286
  %3 = call i32 @trigdef_update_start(i32 1), !dbg !287
  store i32 %3, i32* %2, align 4, !dbg !288
  %4 = load i32, i32* %2, align 4, !dbg !289
  switch i32 %4, label %10 [
    i32 -1, label %5
    i32 -3, label %7
    i32 2, label %9
    i32 -2, label %9
  ], !dbg !290

; <label>:5:                                      ; preds = %0
  %6 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i32 0, i32 0)) #9, !dbg !291
  call void (i8*, ...) @notice(i8* %6), !dbg !293
  store i32 1, i32* %1, align 4, !dbg !295
  br label %12, !dbg !295

; <label>:7:                                      ; preds = %0
  %8 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.25, i32 0, i32 0)) #9, !dbg !296
  call void (i8*, ...) @notice(i8* %8), !dbg !297
  store i32 1, i32* %1, align 4, !dbg !298
  br label %12, !dbg !298

; <label>:9:                                      ; preds = %0, %0
  store i32 0, i32* %1, align 4, !dbg !299
  br label %12, !dbg !299

; <label>:10:                                     ; preds = %0
  %11 = load i32, i32* %2, align 4, !dbg !300
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i32 188, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.do_check, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.27, i32 0, i32 0), i32 %11) #10, !dbg !301
  unreachable, !dbg !301

; <label>:12:                                     ; preds = %9, %7, %5
  %13 = load i32, i32* %1, align 4, !dbg !302
  ret i32 %13, !dbg !302
}

; Function Attrs: nounwind uwtable
define internal i8* @parse_awaiter_package() #0 !dbg !303 {
  %1 = alloca %struct.dpkg_error, align 8
  %2 = alloca %struct.pkginfo*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata %struct.dpkg_error* %1, metadata !306, metadata !189), !dbg !313
  %5 = bitcast %struct.dpkg_error* %1 to i8*, !dbg !313
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 16, i32 8, i1 false), !dbg !313
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %2, metadata !314, metadata !189), !dbg !514
  %6 = load i32, i32* @f_await, align 4, !dbg !515
  %7 = icmp ne i32 %6, 0, !dbg !515
  br i1 %7, label %9, label %8, !dbg !517

; <label>:8:                                      ; preds = %0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0), i8** @bypackage, align 8, !dbg !518
  br label %9, !dbg !519

; <label>:9:                                      ; preds = %8, %0
  %10 = load i8*, i8** @bypackage, align 8, !dbg !520
  %11 = icmp eq i8* %10, null, !dbg !522
  br i1 %11, label %12, label %26, !dbg !523

; <label>:12:                                     ; preds = %9
  call void @llvm.dbg.declare(metadata i8** %3, metadata !524, metadata !189), !dbg !526
  call void @llvm.dbg.declare(metadata i8** %4, metadata !527, metadata !189), !dbg !528
  %13 = call i8* @getenv(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.29, i32 0, i32 0)) #9, !dbg !529
  store i8* %13, i8** %3, align 8, !dbg !530
  %14 = call i8* @getenv(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.30, i32 0, i32 0)) #9, !dbg !531
  store i8* %14, i8** %4, align 8, !dbg !532
  %15 = load i8*, i8** %3, align 8, !dbg !533
  %16 = icmp eq i8* %15, null, !dbg !535
  br i1 %16, label %20, label %17, !dbg !536

; <label>:17:                                     ; preds = %12
  %18 = load i8*, i8** %4, align 8, !dbg !537
  %19 = icmp eq i8* %18, null, !dbg !539
  br i1 %19, label %20, label %22, !dbg !540

; <label>:20:                                     ; preds = %17, %12
  %21 = call i8* @gettext(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.31, i32 0, i32 0)) #9, !dbg !541
  call void (i8*, ...) @badusage(i8* %21) #10, !dbg !542
  unreachable, !dbg !543

; <label>:22:                                     ; preds = %17
  %23 = load i8*, i8** %3, align 8, !dbg !544
  %24 = load i8*, i8** %4, align 8, !dbg !545
  %25 = call %struct.pkginfo* @pkg_spec_find_pkg(i8* %23, i8* %24, %struct.dpkg_error* %1), !dbg !546
  store %struct.pkginfo* %25, %struct.pkginfo** %2, align 8, !dbg !547
  br label %35, !dbg !548

; <label>:26:                                     ; preds = %9
  %27 = load i8*, i8** @bypackage, align 8, !dbg !549
  %28 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0)) #11, !dbg !552
  %29 = icmp eq i32 %28, 0, !dbg !553
  br i1 %29, label %30, label %31, !dbg !552

; <label>:30:                                     ; preds = %26
  store %struct.pkginfo* null, %struct.pkginfo** %2, align 8, !dbg !554
  br label %34, !dbg !556

; <label>:31:                                     ; preds = %26
  %32 = load i8*, i8** @bypackage, align 8, !dbg !557
  %33 = call %struct.pkginfo* @pkg_spec_parse_pkg(i8* %32, %struct.dpkg_error* %1), !dbg !559
  store %struct.pkginfo* %33, %struct.pkginfo** %2, align 8, !dbg !560
  br label %34

; <label>:34:                                     ; preds = %31, %30
  br label %35

; <label>:35:                                     ; preds = %34, %22
  %36 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !561
  %37 = icmp ne %struct.pkginfo* %36, null, !dbg !561
  br i1 %37, label %38, label %41, !dbg !563

; <label>:38:                                     ; preds = %35
  %39 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !564
  %40 = call i8* @pkg_name(%struct.pkginfo* %39, i32 1), !dbg !565
  store i8* %40, i8** @bypackage, align 8, !dbg !566
  br label %41, !dbg !567

; <label>:41:                                     ; preds = %38, %35
  %42 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %1, i32 0, i32 2, !dbg !568
  %43 = load i8*, i8** %42, align 8, !dbg !568
  ret i8* %43, !dbg !569
}

declare void @fsys_hash_init() #2

declare i8* @trig_name_is_illegal(i8*) #2

declare void @trigdef_set_methods(%struct.trigdefmeths*) #2

declare i32 @trigdef_update_start(i32) #2

declare i32 @trigdef_parse() #2

declare void @trigdef_update_printf(i8*, ...) #2

declare void @trigdef_process_done() #2

declare void @dpkg_program_done() #2

; Function Attrs: noreturn nounwind uwtable
define internal void @usage(%struct.cmdinfo*, i8*) #5 !dbg !570 {
  %3 = alloca %struct.cmdinfo*, align 8
  %4 = alloca i8*, align 8
  store %struct.cmdinfo* %0, %struct.cmdinfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.cmdinfo** %3, metadata !571, metadata !189), !dbg !572
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !573, metadata !189), !dbg !574
  %5 = call i8* @gettext(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.15, i32 0, i32 0)) #9, !dbg !575
  %6 = call i8* @dpkg_get_progname(), !dbg !576
  %7 = call i8* @dpkg_get_progname(), !dbg !577
  %8 = call i32 (i8*, ...) @printf(i8* %5, i8* %6, i8* %7), !dbg !579
  %9 = call i8* @gettext(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.16, i32 0, i32 0)) #9, !dbg !580
  %10 = call i32 (i8*, ...) @printf(i8* %9), !dbg !581
  %11 = call i8* @gettext(i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.17, i32 0, i32 0)) #9, !dbg !582
  %12 = call i32 (i8*, ...) @printf(i8* %11), !dbg !583
  %13 = call i8* @gettext(i8* getelementptr inbounds ([428 x i8], [428 x i8]* @.str.18, i32 0, i32 0)) #9, !dbg !584
  %14 = call i32 (i8*, ...) @printf(i8* %13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i32 0, i32 0)), !dbg !585
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !586
  %16 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0)) #9, !dbg !587
  call void @m_output(%struct._IO_FILE* %15, i8* %16), !dbg !588
  call void @exit(i32 0) #12, !dbg !589
  unreachable, !dbg !589
                                                  ; No predecessors!
  ret void, !dbg !590
}

; Function Attrs: noreturn nounwind uwtable
define internal void @printversion(%struct.cmdinfo*, i8*) #5 !dbg !591 {
  %3 = alloca %struct.cmdinfo*, align 8
  %4 = alloca i8*, align 8
  store %struct.cmdinfo* %0, %struct.cmdinfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.cmdinfo** %3, metadata !592, metadata !189), !dbg !593
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !594, metadata !189), !dbg !595
  %5 = call i8* @gettext(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.21, i32 0, i32 0)) #9, !dbg !596
  %6 = call i8* @dpkg_get_progname(), !dbg !597
  %7 = call i32 (i8*, ...) @printf(i8* %5, i8* %6, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i32 0, i32 0)), !dbg !598
  %8 = call i8* @gettext(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.23, i32 0, i32 0)) #9, !dbg !600
  %9 = call i32 (i8*, ...) @printf(i8* %8), !dbg !601
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !602
  %11 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0)) #9, !dbg !603
  call void @m_output(%struct._IO_FILE* %10, i8* %11), !dbg !604
  call void @exit(i32 0) #12, !dbg !605
  unreachable, !dbg !605
                                                  ; No predecessors!
  ret void, !dbg !606
}

declare i32 @printf(i8*, ...) #2

declare i8* @dpkg_get_progname() #2

declare void @m_output(%struct._IO_FILE*, i8*) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #6

declare void @notice(i8*, ...) #2

; Function Attrs: noreturn
declare void @do_internerr(i8*, i32, i8*, i8*, ...) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind
declare i8* @getenv(i8*) #4

declare %struct.pkginfo* @pkg_spec_find_pkg(i8*, i8*, %struct.dpkg_error*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #8

declare %struct.pkginfo* @pkg_spec_parse_pkg(i8*, %struct.dpkg_error*) #2

declare i8* @pkg_name(%struct.pkginfo*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @tdm_add_trig_begin(i8*) #0 !dbg !607 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !608, metadata !189), !dbg !609
  %3 = load i8*, i8** %2, align 8, !dbg !610
  %4 = load i8*, i8** @activate, align 8, !dbg !611
  %5 = call i32 @strcmp(i8* %3, i8* %4) #11, !dbg !612
  %6 = icmp eq i32 %5, 0, !dbg !613
  %7 = zext i1 %6 to i8, !dbg !614
  store i8 %7, i8* @ctrig, align 1, !dbg !614
  %8 = load i8*, i8** %2, align 8, !dbg !615
  call void (i8*, ...) @trigdef_update_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0), i8* %8), !dbg !616
  %9 = load i8, i8* @ctrig, align 1, !dbg !617
  %10 = trunc i8 %9 to i1, !dbg !617
  br i1 %10, label %11, label %14, !dbg !619

; <label>:11:                                     ; preds = %1
  %12 = load i8, i8* @done_trig, align 1, !dbg !620
  %13 = trunc i8 %12 to i1, !dbg !620
  br i1 %13, label %14, label %15, !dbg !622

; <label>:14:                                     ; preds = %11, %1
  br label %17, !dbg !623

; <label>:15:                                     ; preds = %11
  %16 = load i8*, i8** @bypackage, align 8, !dbg !624
  call void @yespackage(i8* %16), !dbg !625
  store i8 1, i8* @done_trig, align 1, !dbg !626
  br label %17, !dbg !627

; <label>:17:                                     ; preds = %15, %14
  ret void, !dbg !628
}

; Function Attrs: nounwind uwtable
define internal void @tdm_add_package(i8*) #0 !dbg !630 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !631, metadata !189), !dbg !632
  %3 = load i8, i8* @ctrig, align 1, !dbg !633
  %4 = trunc i8 %3 to i1, !dbg !633
  br i1 %4, label %5, label %11, !dbg !635

; <label>:5:                                      ; preds = %1
  %6 = load i8*, i8** %2, align 8, !dbg !636
  %7 = load i8*, i8** @bypackage, align 8, !dbg !638
  %8 = call i32 @strcmp(i8* %6, i8* %7) #11, !dbg !639
  %9 = icmp eq i32 %8, 0, !dbg !640
  br i1 %9, label %10, label %11, !dbg !641

; <label>:10:                                     ; preds = %5
  br label %13, !dbg !642

; <label>:11:                                     ; preds = %5, %1
  %12 = load i8*, i8** %2, align 8, !dbg !643
  call void @yespackage(i8* %12), !dbg !644
  br label %13, !dbg !645

; <label>:13:                                     ; preds = %11, %10
  ret void, !dbg !646
}

; Function Attrs: nounwind uwtable
define internal void @tdm_add_trig_end() #0 !dbg !648 {
  call void (i8*, ...) @trigdef_update_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i32 0, i32 0)), !dbg !649
  ret void, !dbg !650
}

; Function Attrs: nounwind uwtable
define internal void @yespackage(i8*) #0 !dbg !651 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !652, metadata !189), !dbg !653
  %3 = load i8*, i8** %2, align 8, !dbg !654
  call void (i8*, ...) @trigdef_update_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i32 0, i32 0), i8* %3), !dbg !655
  ret void, !dbg !656
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind }
attributes #8 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind }
attributes #10 = { noreturn }
attributes #11 = { nounwind readonly }
attributes #12 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!181, !182}
!llvm.ident = !{!183}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !118, globals: !120)
!1 = !DIFile(filename: "[inter]src--trigcmd.o.i", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-trigger")
!2 = !{!3, !11, !18, !24, !36, !47, !56, !64, !68, !78, !88, !94, !99, !112}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "trigdef_update_flags", file: !4, line: 36, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../lib/dpkg/trigdeferred.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-trigger")
!5 = !{!6, !7, !8, !9, !10}
!6 = !DIEnumerator(name: "TDUF_NO_LOCK_OK", value: 1)
!7 = !DIEnumerator(name: "TDUF_WRITE", value: 2)
!8 = !DIEnumerator(name: "TDUF_NO_LOCK", value: 3)
!9 = !DIEnumerator(name: "TDUF_WRITE_IF_EMPTY", value: 8)
!10 = !DIEnumerator(name: "TDUF_WRITE_IF_ENOENT", value: 16)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "trigdef_update_status", file: !4, line: 45, size: 32, align: 32, elements: !12)
!12 = !{!13, !14, !15, !16, !17}
!13 = !DIEnumerator(name: "TDUS_ERROR_NO_DIR", value: -1)
!14 = !DIEnumerator(name: "TDUS_ERROR_EMPTY_DEFERRED", value: -2)
!15 = !DIEnumerator(name: "TDUS_ERROR_NO_DEFERRED", value: -3)
!16 = !DIEnumerator(name: "TDUS_NO_DEFERRED", value: 1)
!17 = !DIEnumerator(name: "TDUS_OK", value: 2)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_msg_type", file: !19, line: 36, size: 32, align: 32, elements: !20)
!19 = !DIFile(filename: "../lib/dpkg/error.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-trigger")
!20 = !{!21, !22, !23}
!21 = !DIEnumerator(name: "DPKG_MSG_NONE", value: 0)
!22 = !DIEnumerator(name: "DPKG_MSG_WARN", value: 1)
!23 = !DIEnumerator(name: "DPKG_MSG_ERROR", value: 2)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "deptype", file: !25, line: 44, size: 32, align: 32, elements: !26)
!25 = !DIFile(filename: "../lib/dpkg/dpkg-db.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-trigger")
!26 = !{!27, !28, !29, !30, !31, !32, !33, !34, !35}
!27 = !DIEnumerator(name: "dep_suggests", value: 0)
!28 = !DIEnumerator(name: "dep_recommends", value: 1)
!29 = !DIEnumerator(name: "dep_depends", value: 2)
!30 = !DIEnumerator(name: "dep_predepends", value: 3)
!31 = !DIEnumerator(name: "dep_breaks", value: 4)
!32 = !DIEnumerator(name: "dep_conflicts", value: 5)
!33 = !DIEnumerator(name: "dep_provides", value: 6)
!34 = !DIEnumerator(name: "dep_replaces", value: 7)
!35 = !DIEnumerator(name: "dep_enhances", value: 8)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_arch_type", file: !37, line: 37, size: 32, align: 32, elements: !38)
!37 = !DIFile(filename: "../lib/dpkg/arch.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-trigger")
!38 = !{!39, !40, !41, !42, !43, !44, !45, !46}
!39 = !DIEnumerator(name: "DPKG_ARCH_NONE", value: 0)
!40 = !DIEnumerator(name: "DPKG_ARCH_EMPTY", value: 1)
!41 = !DIEnumerator(name: "DPKG_ARCH_ILLEGAL", value: 2)
!42 = !DIEnumerator(name: "DPKG_ARCH_WILDCARD", value: 3)
!43 = !DIEnumerator(name: "DPKG_ARCH_ALL", value: 4)
!44 = !DIEnumerator(name: "DPKG_ARCH_NATIVE", value: 5)
!45 = !DIEnumerator(name: "DPKG_ARCH_FOREIGN", value: 6)
!46 = !DIEnumerator(name: "DPKG_ARCH_UNKNOWN", value: 7)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_relation", file: !48, line: 61, size: 32, align: 32, elements: !49)
!48 = !DIFile(filename: "../lib/dpkg/version.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-trigger")
!49 = !{!50, !51, !52, !53, !54, !55}
!50 = !DIEnumerator(name: "DPKG_RELATION_NONE", value: 0)
!51 = !DIEnumerator(name: "DPKG_RELATION_EQ", value: 1)
!52 = !DIEnumerator(name: "DPKG_RELATION_LT", value: 2)
!53 = !DIEnumerator(name: "DPKG_RELATION_LE", value: 3)
!54 = !DIEnumerator(name: "DPKG_RELATION_GT", value: 4)
!55 = !DIEnumerator(name: "DPKG_RELATION_GE", value: 5)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgwant", file: !25, line: 153, size: 32, align: 32, elements: !57)
!57 = !{!58, !59, !60, !61, !62, !63}
!58 = !DIEnumerator(name: "PKG_WANT_UNKNOWN", value: 0)
!59 = !DIEnumerator(name: "PKG_WANT_INSTALL", value: 1)
!60 = !DIEnumerator(name: "PKG_WANT_HOLD", value: 2)
!61 = !DIEnumerator(name: "PKG_WANT_DEINSTALL", value: 3)
!62 = !DIEnumerator(name: "PKG_WANT_PURGE", value: 4)
!63 = !DIEnumerator(name: "PKG_WANT_SENTINEL", value: 5)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgeflag", file: !25, line: 163, size: 32, align: 32, elements: !65)
!65 = !{!66, !67}
!66 = !DIEnumerator(name: "PKG_EFLAG_OK", value: 0)
!67 = !DIEnumerator(name: "PKG_EFLAG_REINSTREQ", value: 1)
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgstatus", file: !25, line: 168, size: 32, align: 32, elements: !69)
!69 = !{!70, !71, !72, !73, !74, !75, !76, !77}
!70 = !DIEnumerator(name: "PKG_STAT_NOTINSTALLED", value: 0)
!71 = !DIEnumerator(name: "PKG_STAT_CONFIGFILES", value: 1)
!72 = !DIEnumerator(name: "PKG_STAT_HALFINSTALLED", value: 2)
!73 = !DIEnumerator(name: "PKG_STAT_UNPACKED", value: 3)
!74 = !DIEnumerator(name: "PKG_STAT_HALFCONFIGURED", value: 4)
!75 = !DIEnumerator(name: "PKG_STAT_TRIGGERSAWAITED", value: 5)
!76 = !DIEnumerator(name: "PKG_STAT_TRIGGERSPENDING", value: 6)
!77 = !DIEnumerator(name: "PKG_STAT_INSTALLED", value: 7)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgpriority", file: !25, line: 179, size: 32, align: 32, elements: !79)
!79 = !{!80, !81, !82, !83, !84, !85, !86, !87}
!80 = !DIEnumerator(name: "PKG_PRIO_REQUIRED", value: 0)
!81 = !DIEnumerator(name: "PKG_PRIO_IMPORTANT", value: 1)
!82 = !DIEnumerator(name: "PKG_PRIO_STANDARD", value: 2)
!83 = !DIEnumerator(name: "PKG_PRIO_OPTIONAL", value: 3)
!84 = !DIEnumerator(name: "PKG_PRIO_EXTRA", value: 4)
!85 = !DIEnumerator(name: "PKG_PRIO_OTHER", value: 5)
!86 = !DIEnumerator(name: "PKG_PRIO_UNKNOWN", value: 6)
!87 = !DIEnumerator(name: "PKG_PRIO_UNSET", value: -1)
!88 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgmultiarch", file: !25, line: 95, size: 32, align: 32, elements: !89)
!89 = !{!90, !91, !92, !93}
!90 = !DIEnumerator(name: "PKG_MULTIARCH_NO", value: 0)
!91 = !DIEnumerator(name: "PKG_MULTIARCH_SAME", value: 1)
!92 = !DIEnumerator(name: "PKG_MULTIARCH_ALLOWED", value: 2)
!93 = !DIEnumerator(name: "PKG_MULTIARCH_FOREIGN", value: 3)
!94 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "trig_options", file: !95, line: 49, size: 32, align: 32, elements: !96)
!95 = !DIFile(filename: "../lib/dpkg/triglib.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-trigger")
!96 = !{!97, !98}
!97 = !DIEnumerator(name: "TRIG_AWAIT", value: 0)
!98 = !DIEnumerator(name: "TRIG_NOAWAIT", value: 1)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fsys_namenode_flags", file: !100, line: 61, size: 32, align: 32, elements: !101)
!100 = !DIFile(filename: "../lib/dpkg/fsys.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-trigger")
!101 = !{!102, !103, !104, !105, !106, !107, !108, !109, !110, !111}
!102 = !DIEnumerator(name: "FNNF_NEW_CONFF", value: 1)
!103 = !DIEnumerator(name: "FNNF_NEW_INARCHIVE", value: 2)
!104 = !DIEnumerator(name: "FNNF_OLD_CONFF", value: 4)
!105 = !DIEnumerator(name: "FNNF_OBS_CONFF", value: 8)
!106 = !DIEnumerator(name: "FNNF_ELIDE_OTHER_LISTS", value: 16)
!107 = !DIEnumerator(name: "FNNF_NO_ATOMIC_OVERWRITE", value: 32)
!108 = !DIEnumerator(name: "FNNF_PLACED_ON_DISK", value: 64)
!109 = !DIEnumerator(name: "FNNF_DEFERRED_FSYNC", value: 128)
!110 = !DIEnumerator(name: "FNNF_DEFERRED_RENAME", value: 256)
!111 = !DIEnumerator(name: "FNNF_FILTERED", value: 512)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkg_name_arch_when", file: !25, line: 396, size: 32, align: 32, elements: !113)
!113 = !{!114, !115, !116, !117}
!114 = !DIEnumerator(name: "pnaw_never", value: 0)
!115 = !DIEnumerator(name: "pnaw_nonambig", value: 1)
!116 = !DIEnumerator(name: "pnaw_foreign", value: 2)
!117 = !DIEnumerator(name: "pnaw_always", value: 3)
!118 = !{!119}
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!120 = !{!121, !126, !128, !129, !130, !131, !133, !162, !163, !167, !180}
!121 = distinct !DIGlobalVariable(name: "admindir", scope: !0, file: !122, line: 95, type: !123, isLocal: true, isDefinition: true, variable: i8** @admindir)
!122 = !DIFile(filename: "trigcmd.c", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-trigger")
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64, align: 64)
!124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!125 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!126 = distinct !DIGlobalVariable(name: "f_noact", scope: !0, file: !122, line: 96, type: !127, isLocal: true, isDefinition: true, variable: i32* @f_noact)
!127 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!128 = distinct !DIGlobalVariable(name: "f_check", scope: !0, file: !122, line: 96, type: !127, isLocal: true, isDefinition: true, variable: i32* @f_check)
!129 = distinct !DIGlobalVariable(name: "bypackage", scope: !0, file: !122, line: 99, type: !123, isLocal: true, isDefinition: true, variable: i8** @bypackage)
!130 = distinct !DIGlobalVariable(name: "activate", scope: !0, file: !122, line: 99, type: !123, isLocal: true, isDefinition: true, variable: i8** @activate)
!131 = distinct !DIGlobalVariable(name: "done_trig", scope: !0, file: !122, line: 100, type: !132, isLocal: true, isDefinition: true, variable: i8* @done_trig)
!132 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!133 = distinct !DIGlobalVariable(name: "cmdinfos", scope: !0, file: !122, line: 192, type: !134, isLocal: true, isDefinition: true, variable: [9 x %struct.cmdinfo]* @cmdinfos)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 4608, align: 64, elements: !160)
!135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cmdinfo", file: !137, line: 38, size: 512, align: 64, elements: !138)
!137 = !DIFile(filename: "../lib/dpkg/options.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-trigger")
!138 = !{!139, !140, !141, !142, !144, !146, !151, !152, !153}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "olong", scope: !136, file: !137, line: 39, baseType: !123, size: 64, align: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "oshort", scope: !136, file: !137, line: 40, baseType: !125, size: 8, align: 8, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "takesvalue", scope: !136, file: !137, line: 48, baseType: !127, size: 32, align: 32, offset: 96)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "iassignto", scope: !136, file: !137, line: 49, baseType: !143, size: 64, align: 64, offset: 128)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64, align: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "sassignto", scope: !136, file: !137, line: 50, baseType: !145, size: 64, align: 64, offset: 192)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64, align: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !136, file: !137, line: 51, baseType: !147, size: 64, align: 64, offset: 256)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64, align: 64)
!148 = !DISubroutineType(types: !149)
!149 = !{null, !150, !123}
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "arg_int", scope: !136, file: !137, line: 53, baseType: !127, size: 32, align: 32, offset: 320)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "arg_ptr", scope: !136, file: !137, line: 54, baseType: !119, size: 64, align: 64, offset: 384)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !136, file: !137, line: 56, baseType: !154, size: 64, align: 64, offset: 448)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64, align: 64)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "action_func", file: !137, line: 36, baseType: !156)
!156 = !DISubroutineType(types: !157)
!157 = !{!127, !158}
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64, align: 64)
!159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!160 = !{!161}
!161 = !DISubrange(count: 9)
!162 = distinct !DIGlobalVariable(name: "f_await", scope: !0, file: !122, line: 97, type: !127, isLocal: true, isDefinition: true, variable: i32* @f_await)
!163 = distinct !DIGlobalVariable(name: "printforhelp", scope: !0, file: !122, line: 44, type: !164, isLocal: true, isDefinition: true, variable: [54 x i8]* @printforhelp)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 432, align: 8, elements: !165)
!165 = !{!166}
!166 = !DISubrange(count: 54)
!167 = distinct !DIGlobalVariable(name: "tdm_add", scope: !0, file: !122, line: 165, type: !168, isLocal: true, isDefinition: true, variable: %struct.trigdefmeths* @tdm_add)
!168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !169)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigdefmeths", file: !4, line: 53, size: 192, align: 64, elements: !170)
!170 = !{!171, !175, !176}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "trig_begin", scope: !169, file: !4, line: 54, baseType: !172, size: 64, align: 64)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64, align: 64)
!173 = !DISubroutineType(types: !174)
!174 = !{null, !123}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !169, file: !4, line: 55, baseType: !172, size: 64, align: 64, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "trig_end", scope: !169, file: !4, line: 56, baseType: !177, size: 64, align: 64, offset: 128)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64, align: 64)
!178 = !DISubroutineType(types: !179)
!179 = !{null}
!180 = distinct !DIGlobalVariable(name: "ctrig", scope: !0, file: !122, line: 100, type: !132, isLocal: true, isDefinition: true, variable: i8* @ctrig)
!181 = !{i32 2, !"Dwarf Version", i32 4}
!182 = !{i32 2, !"Debug Info Version", i32 3}
!183 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!184 = distinct !DISubprogram(name: "main", scope: !122, file: !122, line: 205, type: !185, isLocal: false, isDefinition: true, scopeLine: 206, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !187)
!185 = !DISubroutineType(types: !186)
!186 = !{!127, !127, !158}
!187 = !{}
!188 = !DILocalVariable(name: "argc", arg: 1, scope: !184, file: !122, line: 205, type: !127)
!189 = !DIExpression()
!190 = !DILocation(line: 205, column: 10, scope: !184)
!191 = !DILocalVariable(name: "argv", arg: 2, scope: !184, file: !122, line: 205, type: !158)
!192 = !DILocation(line: 205, column: 35, scope: !184)
!193 = !DILocalVariable(name: "badname", scope: !184, file: !122, line: 207, type: !123)
!194 = !DILocation(line: 207, column: 14, scope: !184)
!195 = !DILocalVariable(name: "tduf", scope: !184, file: !122, line: 208, type: !3)
!196 = !DILocation(line: 208, column: 28, scope: !184)
!197 = !DILocalVariable(name: "tdus", scope: !184, file: !122, line: 209, type: !11)
!198 = !DILocation(line: 209, column: 29, scope: !184)
!199 = !DILocation(line: 211, column: 2, scope: !184)
!200 = !DILocation(line: 212, column: 2, scope: !184)
!201 = !DILocation(line: 213, column: 2, scope: !184)
!202 = !DILocation(line: 215, column: 29, scope: !184)
!203 = !DILocation(line: 215, column: 13, scope: !184)
!204 = !DILocation(line: 215, column: 11, scope: !184)
!205 = !DILocation(line: 217, column: 6, scope: !206)
!206 = distinct !DILexicalBlock(scope: !184, file: !122, line: 217, column: 6)
!207 = !DILocation(line: 217, column: 6, scope: !184)
!208 = !DILocation(line: 218, column: 8, scope: !209)
!209 = distinct !DILexicalBlock(scope: !210, file: !122, line: 218, column: 7)
!210 = distinct !DILexicalBlock(scope: !206, file: !122, line: 217, column: 15)
!211 = !DILocation(line: 218, column: 7, scope: !209)
!212 = !DILocation(line: 218, column: 7, scope: !210)
!213 = !DILocation(line: 219, column: 13, scope: !209)
!214 = !DILocation(line: 219, column: 4, scope: !215)
!215 = !DILexicalBlockFile(scope: !209, file: !122, discriminator: 1)
!216 = !DILocation(line: 219, column: 4, scope: !209)
!217 = !DILocation(line: 221, column: 10, scope: !210)
!218 = !DILocation(line: 221, column: 3, scope: !210)
!219 = !DILocation(line: 224, column: 8, scope: !220)
!220 = distinct !DILexicalBlock(scope: !184, file: !122, line: 224, column: 6)
!221 = !DILocation(line: 224, column: 7, scope: !220)
!222 = !DILocation(line: 224, column: 13, scope: !220)
!223 = !DILocation(line: 224, column: 16, scope: !224)
!224 = !DILexicalBlockFile(scope: !220, file: !122, discriminator: 1)
!225 = !DILocation(line: 224, column: 6, scope: !224)
!226 = !DILocation(line: 225, column: 12, scope: !220)
!227 = !DILocation(line: 225, column: 3, scope: !224)
!228 = !DILocation(line: 225, column: 3, scope: !220)
!229 = !DILocation(line: 227, column: 12, scope: !184)
!230 = !DILocation(line: 227, column: 10, scope: !184)
!231 = !DILocation(line: 228, column: 6, scope: !232)
!232 = distinct !DILexicalBlock(scope: !184, file: !122, line: 228, column: 6)
!233 = !DILocation(line: 228, column: 6, scope: !184)
!234 = !DILocation(line: 229, column: 12, scope: !232)
!235 = !DILocation(line: 230, column: 12, scope: !232)
!236 = !DILocation(line: 230, column: 23, scope: !232)
!237 = !DILocation(line: 229, column: 3, scope: !238)
!238 = !DILexicalBlockFile(scope: !232, file: !122, discriminator: 1)
!239 = !DILocation(line: 229, column: 3, scope: !232)
!240 = !DILocation(line: 232, column: 2, scope: !184)
!241 = !DILocation(line: 234, column: 13, scope: !184)
!242 = !DILocation(line: 234, column: 11, scope: !184)
!243 = !DILocation(line: 235, column: 33, scope: !184)
!244 = !DILocation(line: 235, column: 12, scope: !184)
!245 = !DILocation(line: 235, column: 10, scope: !184)
!246 = !DILocation(line: 236, column: 6, scope: !247)
!247 = distinct !DILexicalBlock(scope: !184, file: !122, line: 236, column: 6)
!248 = !DILocation(line: 236, column: 6, scope: !184)
!249 = !DILocation(line: 237, column: 12, scope: !247)
!250 = !DILocation(line: 238, column: 12, scope: !247)
!251 = !DILocation(line: 238, column: 22, scope: !247)
!252 = !DILocation(line: 237, column: 3, scope: !253)
!253 = !DILexicalBlockFile(scope: !247, file: !122, discriminator: 1)
!254 = !DILocation(line: 237, column: 3, scope: !247)
!255 = !DILocation(line: 240, column: 2, scope: !184)
!256 = !DILocation(line: 242, column: 7, scope: !184)
!257 = !DILocation(line: 243, column: 7, scope: !258)
!258 = distinct !DILexicalBlock(scope: !184, file: !122, line: 243, column: 6)
!259 = !DILocation(line: 243, column: 6, scope: !184)
!260 = !DILocation(line: 244, column: 8, scope: !258)
!261 = !DILocation(line: 244, column: 3, scope: !258)
!262 = !DILocation(line: 245, column: 30, scope: !184)
!263 = !DILocation(line: 245, column: 9, scope: !184)
!264 = !DILocation(line: 245, column: 7, scope: !184)
!265 = !DILocation(line: 246, column: 6, scope: !266)
!266 = distinct !DILexicalBlock(scope: !184, file: !122, line: 246, column: 6)
!267 = !DILocation(line: 246, column: 11, scope: !266)
!268 = !DILocation(line: 246, column: 6, scope: !184)
!269 = !DILocation(line: 247, column: 3, scope: !270)
!270 = distinct !DILexicalBlock(scope: !266, file: !122, line: 246, column: 17)
!271 = !DILocation(line: 248, column: 8, scope: !272)
!272 = distinct !DILexicalBlock(scope: !270, file: !122, line: 248, column: 7)
!273 = !DILocation(line: 248, column: 7, scope: !270)
!274 = !DILocation(line: 249, column: 37, scope: !272)
!275 = !DILocation(line: 249, column: 47, scope: !272)
!276 = !DILocation(line: 249, column: 4, scope: !272)
!277 = !DILocation(line: 250, column: 3, scope: !270)
!278 = !DILocation(line: 251, column: 2, scope: !270)
!279 = !DILocation(line: 253, column: 2, scope: !184)
!280 = !DILocation(line: 255, column: 2, scope: !184)
!281 = !DILocation(line: 256, column: 1, scope: !184)
!282 = distinct !DISubprogram(name: "do_check", scope: !122, file: !122, line: 172, type: !283, isLocal: true, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !187)
!283 = !DISubroutineType(types: !284)
!284 = !{!127}
!285 = !DILocalVariable(name: "uf", scope: !282, file: !122, line: 174, type: !11)
!286 = !DILocation(line: 174, column: 29, scope: !282)
!287 = !DILocation(line: 176, column: 7, scope: !282)
!288 = !DILocation(line: 176, column: 5, scope: !282)
!289 = !DILocation(line: 177, column: 10, scope: !282)
!290 = !DILocation(line: 177, column: 2, scope: !282)
!291 = !DILocation(line: 179, column: 10, scope: !292)
!292 = distinct !DILexicalBlock(scope: !282, file: !122, line: 177, column: 14)
!293 = !DILocation(line: 179, column: 3, scope: !294)
!294 = !DILexicalBlockFile(scope: !292, file: !122, discriminator: 1)
!295 = !DILocation(line: 180, column: 3, scope: !292)
!296 = !DILocation(line: 182, column: 10, scope: !292)
!297 = !DILocation(line: 182, column: 3, scope: !294)
!298 = !DILocation(line: 183, column: 3, scope: !292)
!299 = !DILocation(line: 186, column: 3, scope: !292)
!300 = !DILocation(line: 188, column: 94, scope: !292)
!301 = !DILocation(line: 188, column: 3, scope: !292)
!302 = !DILocation(line: 190, column: 1, scope: !282)
!303 = distinct !DISubprogram(name: "parse_awaiter_package", scope: !122, file: !122, line: 109, type: !304, isLocal: true, isDefinition: true, scopeLine: 110, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !187)
!304 = !DISubroutineType(types: !305)
!305 = !{!123}
!306 = !DILocalVariable(name: "err", scope: !303, file: !122, line: 111, type: !307)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_error", file: !19, line: 42, size: 128, align: 64, elements: !308)
!308 = !{!309, !310, !311}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !307, file: !19, line: 43, baseType: !18, size: 32, align: 32)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "syserrno", scope: !307, file: !19, line: 45, baseType: !127, size: 32, align: 32, offset: 32)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !307, file: !19, line: 46, baseType: !312, size: 64, align: 64, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64, align: 64)
!313 = !DILocation(line: 111, column: 20, scope: !303)
!314 = !DILocalVariable(name: "pkg", scope: !303, file: !122, line: 112, type: !315)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64, align: 64)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkginfo", file: !25, line: 195, size: 3072, align: 64, elements: !317)
!317 = !{!318, !365, !366, !367, !368, !369, !370, !371, !372, !373, !403, !404, !407, !416, !432, !433, !439, !508, !512, !513}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !316, file: !25, line: 196, baseType: !319, size: 64, align: 64)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64, align: 64)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgset", file: !25, line: 242, size: 3392, align: 64, elements: !321)
!321 = !{!322, !323, !324, !325, !364}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !320, file: !25, line: 243, baseType: !319, size: 64, align: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !320, file: !25, line: 244, baseType: !123, size: 64, align: 64, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !320, file: !25, line: 245, baseType: !316, size: 3072, align: 64, offset: 128)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "depended", scope: !320, file: !25, line: 249, baseType: !326, size: 128, align: 64, offset: 3200)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !320, file: !25, line: 246, size: 128, align: 64, elements: !327)
!327 = !{!328, !363}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !326, file: !25, line: 247, baseType: !329, size: 64, align: 64)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64, align: 64)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "deppossi", file: !25, line: 63, size: 640, align: 64, elements: !331)
!331 = !{!332, !340, !341, !342, !343, !344, !353, !360, !361, !362}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !330, file: !25, line: 64, baseType: !333, size: 64, align: 64)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64, align: 64)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dependency", file: !25, line: 56, size: 256, align: 64, elements: !335)
!335 = !{!336, !337, !338, !339}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !334, file: !25, line: 57, baseType: !315, size: 64, align: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !334, file: !25, line: 58, baseType: !333, size: 64, align: 64, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !334, file: !25, line: 59, baseType: !329, size: 64, align: 64, offset: 128)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !334, file: !25, line: 60, baseType: !24, size: 32, align: 32, offset: 192)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "ed", scope: !330, file: !25, line: 65, baseType: !319, size: 64, align: 64, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !330, file: !25, line: 66, baseType: !329, size: 64, align: 64, offset: 128)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "rev_next", scope: !330, file: !25, line: 66, baseType: !329, size: 64, align: 64, offset: 192)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "rev_prev", scope: !330, file: !25, line: 66, baseType: !329, size: 64, align: 64, offset: 256)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !330, file: !25, line: 67, baseType: !345, size: 64, align: 64, offset: 320)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64, align: 64)
!346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !347)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_arch", file: !37, line: 48, size: 192, align: 64, elements: !348)
!348 = !{!349, !351, !352}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !347, file: !37, line: 49, baseType: !350, size: 64, align: 64)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64, align: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !347, file: !37, line: 50, baseType: !123, size: 64, align: 64, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !347, file: !37, line: 51, baseType: !36, size: 32, align: 32, offset: 128)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !330, file: !25, line: 68, baseType: !354, size: 192, align: 64, offset: 384)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_version", file: !48, line: 42, size: 192, align: 64, elements: !355)
!355 = !{!356, !358, !359}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !354, file: !48, line: 44, baseType: !357, size: 32, align: 32)
!357 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !354, file: !48, line: 46, baseType: !123, size: 64, align: 64, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !354, file: !48, line: 48, baseType: !123, size: 64, align: 64, offset: 128)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "verrel", scope: !330, file: !25, line: 69, baseType: !47, size: 32, align: 32, offset: 576)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "arch_is_implicit", scope: !330, file: !25, line: 70, baseType: !132, size: 8, align: 8, offset: 608)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "cyclebreak", scope: !330, file: !25, line: 71, baseType: !132, size: 8, align: 8, offset: 616)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !326, file: !25, line: 248, baseType: !329, size: 64, align: 64, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "installed_instances", scope: !320, file: !25, line: 250, baseType: !127, size: 32, align: 32, offset: 3328)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "arch_next", scope: !316, file: !25, line: 197, baseType: !315, size: 64, align: 64, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "want", scope: !316, file: !25, line: 199, baseType: !56, size: 32, align: 32, offset: 128)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "eflag", scope: !316, file: !25, line: 201, baseType: !64, size: 32, align: 32, offset: 160)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !316, file: !25, line: 202, baseType: !68, size: 32, align: 32, offset: 192)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !316, file: !25, line: 203, baseType: !78, size: 32, align: 32, offset: 224)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "otherpriority", scope: !316, file: !25, line: 204, baseType: !123, size: 64, align: 64, offset: 256)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "section", scope: !316, file: !25, line: 205, baseType: !123, size: 64, align: 64, offset: 320)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "configversion", scope: !316, file: !25, line: 206, baseType: !354, size: 192, align: 64, offset: 384)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !316, file: !25, line: 207, baseType: !374, size: 960, align: 64, offset: 576)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgbin", file: !25, line: 107, size: 960, align: 64, elements: !375)
!375 = !{!376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !396}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "depends", scope: !374, file: !25, line: 108, baseType: !333, size: 64, align: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "essential", scope: !374, file: !25, line: 110, baseType: !132, size: 8, align: 8, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "multiarch", scope: !374, file: !25, line: 111, baseType: !88, size: 32, align: 32, offset: 96)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !374, file: !25, line: 112, baseType: !345, size: 64, align: 64, offset: 128)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "pkgname_archqual", scope: !374, file: !25, line: 115, baseType: !123, size: 64, align: 64, offset: 192)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !374, file: !25, line: 116, baseType: !123, size: 64, align: 64, offset: 256)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "maintainer", scope: !374, file: !25, line: 117, baseType: !123, size: 64, align: 64, offset: 320)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !374, file: !25, line: 118, baseType: !123, size: 64, align: 64, offset: 384)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "installedsize", scope: !374, file: !25, line: 119, baseType: !123, size: 64, align: 64, offset: 448)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !374, file: !25, line: 120, baseType: !123, size: 64, align: 64, offset: 512)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "bugs", scope: !374, file: !25, line: 121, baseType: !123, size: 64, align: 64, offset: 576)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !374, file: !25, line: 122, baseType: !354, size: 192, align: 64, offset: 640)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "conffiles", scope: !374, file: !25, line: 123, baseType: !389, size: 64, align: 64, offset: 832)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64, align: 64)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conffile", file: !25, line: 80, size: 256, align: 64, elements: !391)
!391 = !{!392, !393, !394, !395}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !390, file: !25, line: 81, baseType: !389, size: 64, align: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !390, file: !25, line: 82, baseType: !123, size: 64, align: 64, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !390, file: !25, line: 83, baseType: !123, size: 64, align: 64, offset: 128)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "obsolete", scope: !390, file: !25, line: 84, baseType: !132, size: 8, align: 8, offset: 192)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "arbs", scope: !374, file: !25, line: 124, baseType: !397, size: 64, align: 64, offset: 896)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64, align: 64)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arbitraryfield", file: !25, line: 74, size: 192, align: 64, elements: !399)
!399 = !{!400, !401, !402}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !398, file: !25, line: 75, baseType: !397, size: 64, align: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !398, file: !25, line: 76, baseType: !123, size: 64, align: 64, offset: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !398, file: !25, line: 77, baseType: !123, size: 64, align: 64, offset: 128)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !316, file: !25, line: 208, baseType: !374, size: 960, align: 64, offset: 1536)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "clientdata", scope: !316, file: !25, line: 209, baseType: !405, size: 64, align: 64, offset: 2496)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64, align: 64)
!406 = !DICompositeType(tag: DW_TAG_structure_type, name: "perpackagestate", file: !25, line: 151, flags: DIFlagFwdDecl)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "archives", scope: !316, file: !25, line: 211, baseType: !408, size: 64, align: 64, offset: 2560)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64, align: 64)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archivedetails", file: !25, line: 87, size: 320, align: 64, elements: !410)
!410 = !{!411, !412, !413, !414, !415}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !409, file: !25, line: 88, baseType: !408, size: 64, align: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !409, file: !25, line: 89, baseType: !123, size: 64, align: 64, offset: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "msdosname", scope: !409, file: !25, line: 90, baseType: !123, size: 64, align: 64, offset: 128)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !409, file: !25, line: 91, baseType: !123, size: 64, align: 64, offset: 192)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "md5sum", scope: !409, file: !25, line: 92, baseType: !123, size: 64, align: 64, offset: 256)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "trigaw", scope: !316, file: !25, line: 216, baseType: !417, size: 128, align: 64, offset: 2624)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !316, file: !25, line: 213, size: 128, align: 64, elements: !418)
!418 = !{!419, !431}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !417, file: !25, line: 215, baseType: !420, size: 64, align: 64)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64, align: 64)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigaw", file: !25, line: 142, size: 320, align: 64, elements: !422)
!422 = !{!423, !424, !425, !426}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "aw", scope: !421, file: !25, line: 143, baseType: !315, size: 64, align: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "pend", scope: !421, file: !25, line: 143, baseType: !315, size: 64, align: 64, offset: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "samepend_next", scope: !421, file: !25, line: 144, baseType: !420, size: 64, align: 64, offset: 128)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "sameaw", scope: !421, file: !25, line: 147, baseType: !427, size: 128, align: 64, offset: 192)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !421, file: !25, line: 145, size: 128, align: 64, elements: !428)
!428 = !{!429, !430}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !427, file: !25, line: 146, baseType: !420, size: 64, align: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !427, file: !25, line: 146, baseType: !420, size: 64, align: 64, offset: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !417, file: !25, line: 215, baseType: !420, size: 64, align: 64, offset: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "othertrigaw_head", scope: !316, file: !25, line: 219, baseType: !420, size: 64, align: 64, offset: 2752)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "trigpend_head", scope: !316, file: !25, line: 220, baseType: !434, size: 64, align: 64, offset: 2816)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64, align: 64)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigpend", file: !25, line: 134, size: 128, align: 64, elements: !436)
!436 = !{!437, !438}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !435, file: !25, line: 135, baseType: !434, size: 64, align: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !435, file: !25, line: 136, baseType: !123, size: 64, align: 64, offset: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !316, file: !25, line: 231, baseType: !440, size: 64, align: 64, offset: 2880)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64, align: 64)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode_list", file: !100, line: 122, size: 128, align: 64, elements: !442)
!442 = !{!443, !444}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !441, file: !100, line: 123, baseType: !440, size: 64, align: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "namenode", scope: !441, file: !100, line: 124, baseType: !445, size: 64, align: 64, offset: 64)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64, align: 64)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode", file: !100, line: 90, size: 640, align: 64, elements: !447)
!447 = !{!448, !449, !450, !453, !461, !479, !494, !495, !496, !497}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !446, file: !100, line: 91, baseType: !445, size: 64, align: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !446, file: !100, line: 92, baseType: !123, size: 64, align: 64, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "packages", scope: !446, file: !100, line: 93, baseType: !451, size: 64, align: 64, offset: 128)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64, align: 64)
!452 = !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_list", file: !100, line: 93, flags: DIFlagFwdDecl)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "divert", scope: !446, file: !100, line: 94, baseType: !454, size: 64, align: 64, offset: 192)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64, align: 64)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_diversion", file: !100, line: 151, size: 256, align: 64, elements: !456)
!456 = !{!457, !458, !459, !460}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "useinstead", scope: !455, file: !100, line: 152, baseType: !445, size: 64, align: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "camefrom", scope: !455, file: !100, line: 153, baseType: !445, size: 64, align: 64, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "pkgset", scope: !455, file: !100, line: 154, baseType: !319, size: 64, align: 64, offset: 128)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !455, file: !100, line: 157, baseType: !454, size: 64, align: 64, offset: 192)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "statoverride", scope: !446, file: !100, line: 101, baseType: !462, size: 64, align: 64, offset: 256)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64, align: 64)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_stat", file: !464, line: 40, size: 256, align: 64, elements: !465)
!464 = !DIFile(filename: "../lib/dpkg/file.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-trigger")
!465 = !{!466, !471, !474, !477, !478}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !463, file: !464, line: 41, baseType: !467, size: 32, align: 32)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !468, line: 80, baseType: !469)
!468 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-trigger")
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !470, line: 125, baseType: !357)
!470 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-trigger")
!471 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !463, file: !464, line: 42, baseType: !472, size: 32, align: 32, offset: 32)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !468, line: 65, baseType: !473)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !470, line: 126, baseType: !357)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !463, file: !464, line: 43, baseType: !475, size: 32, align: 32, offset: 64)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !468, line: 70, baseType: !476)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !470, line: 129, baseType: !357)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "uname", scope: !463, file: !464, line: 47, baseType: !312, size: 64, align: 64, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !463, file: !464, line: 48, baseType: !312, size: 64, align: 64, offset: 192)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "trig_interested", scope: !446, file: !100, line: 103, baseType: !480, size: 64, align: 64, offset: 320)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64, align: 64)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigfileint", file: !95, line: 54, size: 448, align: 64, elements: !482)
!482 = !{!483, !484, !486, !487, !488, !489}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !481, file: !95, line: 55, baseType: !315, size: 64, align: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "pkgbin", scope: !481, file: !95, line: 56, baseType: !485, size: 64, align: 64, offset: 64)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64, align: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "fnn", scope: !481, file: !95, line: 57, baseType: !445, size: 64, align: 64, offset: 128)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !481, file: !95, line: 58, baseType: !94, size: 32, align: 32, offset: 192)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "samefile_next", scope: !481, file: !95, line: 59, baseType: !480, size: 64, align: 64, offset: 256)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "inoverall", scope: !481, file: !95, line: 62, baseType: !490, size: 128, align: 64, offset: 320)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !481, file: !95, line: 60, size: 128, align: 64, elements: !491)
!491 = !{!492, !493}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !490, file: !95, line: 61, baseType: !480, size: 64, align: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !490, file: !95, line: 61, baseType: !480, size: 64, align: 64, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !446, file: !100, line: 111, baseType: !99, size: 32, align: 32, offset: 384)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "oldhash", scope: !446, file: !100, line: 114, baseType: !123, size: 64, align: 64, offset: 448)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "newhash", scope: !446, file: !100, line: 117, baseType: !123, size: 64, align: 64, offset: 512)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "file_ondisk_id", scope: !446, file: !100, line: 119, baseType: !498, size: 64, align: 64, offset: 576)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64, align: 64)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ondisk_id", file: !100, line: 85, size: 128, align: 64, elements: !500)
!500 = !{!501, !505}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "id_dev", scope: !499, file: !100, line: 86, baseType: !502, size: 64, align: 64)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !468, line: 60, baseType: !503)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !470, line: 124, baseType: !504)
!504 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "id_ino", scope: !499, file: !100, line: 87, baseType: !506, size: 64, align: 64, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !468, line: 48, baseType: !507)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !470, line: 127, baseType: !504)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_phys_offs", scope: !316, file: !25, line: 232, baseType: !509, size: 64, align: 64, offset: 2944)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !468, line: 86, baseType: !510)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !470, line: 131, baseType: !511)
!511 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_valid", scope: !316, file: !25, line: 233, baseType: !132, size: 8, align: 8, offset: 3008)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "status_dirty", scope: !316, file: !25, line: 236, baseType: !132, size: 8, align: 8, offset: 3016)
!514 = !DILocation(line: 112, column: 18, scope: !303)
!515 = !DILocation(line: 114, column: 7, scope: !516)
!516 = distinct !DILexicalBlock(scope: !303, file: !122, line: 114, column: 6)
!517 = !DILocation(line: 114, column: 6, scope: !303)
!518 = !DILocation(line: 115, column: 13, scope: !516)
!519 = !DILocation(line: 115, column: 3, scope: !516)
!520 = !DILocation(line: 117, column: 6, scope: !521)
!521 = distinct !DILexicalBlock(scope: !303, file: !122, line: 117, column: 6)
!522 = !DILocation(line: 117, column: 16, scope: !521)
!523 = !DILocation(line: 117, column: 6, scope: !303)
!524 = !DILocalVariable(name: "pkgname", scope: !525, file: !122, line: 118, type: !123)
!525 = distinct !DILexicalBlock(scope: !521, file: !122, line: 117, column: 24)
!526 = !DILocation(line: 118, column: 15, scope: !525)
!527 = !DILocalVariable(name: "archname", scope: !525, file: !122, line: 118, type: !123)
!528 = !DILocation(line: 118, column: 25, scope: !525)
!529 = !DILocation(line: 120, column: 13, scope: !525)
!530 = !DILocation(line: 120, column: 11, scope: !525)
!531 = !DILocation(line: 121, column: 14, scope: !525)
!532 = !DILocation(line: 121, column: 12, scope: !525)
!533 = !DILocation(line: 122, column: 7, scope: !534)
!534 = distinct !DILexicalBlock(scope: !525, file: !122, line: 122, column: 7)
!535 = !DILocation(line: 122, column: 15, scope: !534)
!536 = !DILocation(line: 122, column: 22, scope: !534)
!537 = !DILocation(line: 122, column: 25, scope: !538)
!538 = !DILexicalBlockFile(scope: !534, file: !122, discriminator: 1)
!539 = !DILocation(line: 122, column: 34, scope: !538)
!540 = !DILocation(line: 122, column: 7, scope: !538)
!541 = !DILocation(line: 123, column: 13, scope: !534)
!542 = !DILocation(line: 123, column: 4, scope: !538)
!543 = !DILocation(line: 123, column: 4, scope: !534)
!544 = !DILocation(line: 126, column: 27, scope: !525)
!545 = !DILocation(line: 126, column: 36, scope: !525)
!546 = !DILocation(line: 126, column: 9, scope: !525)
!547 = !DILocation(line: 126, column: 7, scope: !525)
!548 = !DILocation(line: 127, column: 2, scope: !525)
!549 = !DILocation(line: 127, column: 20, scope: !550)
!550 = !DILexicalBlockFile(scope: !551, file: !122, discriminator: 1)
!551 = distinct !DILexicalBlock(scope: !521, file: !122, line: 127, column: 13)
!552 = !DILocation(line: 127, column: 13, scope: !550)
!553 = !DILocation(line: 127, column: 36, scope: !550)
!554 = !DILocation(line: 128, column: 7, scope: !555)
!555 = distinct !DILexicalBlock(scope: !551, file: !122, line: 127, column: 42)
!556 = !DILocation(line: 129, column: 2, scope: !555)
!557 = !DILocation(line: 130, column: 28, scope: !558)
!558 = distinct !DILexicalBlock(scope: !551, file: !122, line: 129, column: 9)
!559 = !DILocation(line: 130, column: 9, scope: !558)
!560 = !DILocation(line: 130, column: 7, scope: !558)
!561 = !DILocation(line: 134, column: 6, scope: !562)
!562 = distinct !DILexicalBlock(scope: !303, file: !122, line: 134, column: 6)
!563 = !DILocation(line: 134, column: 6, scope: !303)
!564 = !DILocation(line: 135, column: 24, scope: !562)
!565 = !DILocation(line: 135, column: 15, scope: !562)
!566 = !DILocation(line: 135, column: 13, scope: !562)
!567 = !DILocation(line: 135, column: 3, scope: !562)
!568 = !DILocation(line: 137, column: 13, scope: !303)
!569 = !DILocation(line: 137, column: 2, scope: !303)
!570 = distinct !DISubprogram(name: "usage", scope: !122, file: !122, line: 63, type: !148, isLocal: true, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !187)
!571 = !DILocalVariable(name: "ci", arg: 1, scope: !570, file: !122, line: 63, type: !150)
!572 = !DILocation(line: 63, column: 29, scope: !570)
!573 = !DILocalVariable(name: "value", arg: 2, scope: !570, file: !122, line: 63, type: !123)
!574 = !DILocation(line: 63, column: 45, scope: !570)
!575 = !DILocation(line: 65, column: 9, scope: !570)
!576 = !DILocation(line: 68, column: 8, scope: !570)
!577 = !DILocation(line: 68, column: 29, scope: !578)
!578 = !DILexicalBlockFile(scope: !570, file: !122, discriminator: 1)
!579 = !DILocation(line: 65, column: 2, scope: !578)
!580 = !DILocation(line: 70, column: 9, scope: !570)
!581 = !DILocation(line: 70, column: 2, scope: !578)
!582 = !DILocation(line: 75, column: 9, scope: !570)
!583 = !DILocation(line: 75, column: 2, scope: !578)
!584 = !DILocation(line: 80, column: 9, scope: !570)
!585 = !DILocation(line: 80, column: 2, scope: !578)
!586 = !DILocation(line: 90, column: 10, scope: !570)
!587 = !DILocation(line: 90, column: 18, scope: !570)
!588 = !DILocation(line: 90, column: 2, scope: !578)
!589 = !DILocation(line: 92, column: 2, scope: !570)
!590 = !DILocation(line: 93, column: 1, scope: !570)
!591 = distinct !DISubprogram(name: "printversion", scope: !122, file: !122, line: 48, type: !148, isLocal: true, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !187)
!592 = !DILocalVariable(name: "ci", arg: 1, scope: !591, file: !122, line: 48, type: !150)
!593 = !DILocation(line: 48, column: 36, scope: !591)
!594 = !DILocalVariable(name: "value", arg: 2, scope: !591, file: !122, line: 48, type: !123)
!595 = !DILocation(line: 48, column: 52, scope: !591)
!596 = !DILocation(line: 50, column: 9, scope: !591)
!597 = !DILocation(line: 51, column: 9, scope: !591)
!598 = !DILocation(line: 50, column: 2, scope: !599)
!599 = !DILexicalBlockFile(scope: !591, file: !122, discriminator: 1)
!600 = !DILocation(line: 53, column: 9, scope: !591)
!601 = !DILocation(line: 53, column: 2, scope: !599)
!602 = !DILocation(line: 57, column: 10, scope: !591)
!603 = !DILocation(line: 57, column: 18, scope: !591)
!604 = !DILocation(line: 57, column: 2, scope: !599)
!605 = !DILocation(line: 59, column: 2, scope: !591)
!606 = !DILocation(line: 60, column: 1, scope: !591)
!607 = distinct !DISubprogram(name: "tdm_add_trig_begin", scope: !122, file: !122, line: 141, type: !173, isLocal: true, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !187)
!608 = !DILocalVariable(name: "trig", arg: 1, scope: !607, file: !122, line: 141, type: !123)
!609 = !DILocation(line: 141, column: 32, scope: !607)
!610 = !DILocation(line: 143, column: 17, scope: !607)
!611 = !DILocation(line: 143, column: 23, scope: !607)
!612 = !DILocation(line: 143, column: 10, scope: !607)
!613 = !DILocation(line: 143, column: 33, scope: !607)
!614 = !DILocation(line: 143, column: 8, scope: !607)
!615 = !DILocation(line: 144, column: 30, scope: !607)
!616 = !DILocation(line: 144, column: 2, scope: !607)
!617 = !DILocation(line: 145, column: 7, scope: !618)
!618 = distinct !DILexicalBlock(scope: !607, file: !122, line: 145, column: 6)
!619 = !DILocation(line: 145, column: 13, scope: !618)
!620 = !DILocation(line: 145, column: 16, scope: !621)
!621 = !DILexicalBlockFile(scope: !618, file: !122, discriminator: 1)
!622 = !DILocation(line: 145, column: 6, scope: !621)
!623 = !DILocation(line: 146, column: 3, scope: !618)
!624 = !DILocation(line: 147, column: 13, scope: !607)
!625 = !DILocation(line: 147, column: 2, scope: !607)
!626 = !DILocation(line: 148, column: 12, scope: !607)
!627 = !DILocation(line: 149, column: 1, scope: !607)
!628 = !DILocation(line: 149, column: 1, scope: !629)
!629 = !DILexicalBlockFile(scope: !607, file: !122, discriminator: 1)
!630 = distinct !DISubprogram(name: "tdm_add_package", scope: !122, file: !122, line: 152, type: !173, isLocal: true, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !187)
!631 = !DILocalVariable(name: "awname", arg: 1, scope: !630, file: !122, line: 152, type: !123)
!632 = !DILocation(line: 152, column: 29, scope: !630)
!633 = !DILocation(line: 154, column: 6, scope: !634)
!634 = distinct !DILexicalBlock(scope: !630, file: !122, line: 154, column: 6)
!635 = !DILocation(line: 154, column: 12, scope: !634)
!636 = !DILocation(line: 154, column: 22, scope: !637)
!637 = !DILexicalBlockFile(scope: !634, file: !122, discriminator: 1)
!638 = !DILocation(line: 154, column: 30, scope: !637)
!639 = !DILocation(line: 154, column: 15, scope: !637)
!640 = !DILocation(line: 154, column: 41, scope: !637)
!641 = !DILocation(line: 154, column: 6, scope: !637)
!642 = !DILocation(line: 155, column: 3, scope: !634)
!643 = !DILocation(line: 156, column: 13, scope: !630)
!644 = !DILocation(line: 156, column: 2, scope: !630)
!645 = !DILocation(line: 157, column: 1, scope: !630)
!646 = !DILocation(line: 157, column: 1, scope: !647)
!647 = !DILexicalBlockFile(scope: !630, file: !122, discriminator: 1)
!648 = distinct !DISubprogram(name: "tdm_add_trig_end", scope: !122, file: !122, line: 160, type: !178, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !187)
!649 = !DILocation(line: 162, column: 2, scope: !648)
!650 = !DILocation(line: 163, column: 1, scope: !648)
!651 = distinct !DISubprogram(name: "yespackage", scope: !122, file: !122, line: 103, type: !173, isLocal: true, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !187)
!652 = !DILocalVariable(name: "awname", arg: 1, scope: !651, file: !122, line: 103, type: !123)
!653 = !DILocation(line: 103, column: 24, scope: !651)
!654 = !DILocation(line: 105, column: 31, scope: !651)
!655 = !DILocation(line: 105, column: 2, scope: !651)
!656 = !DILocation(line: 106, column: 1, scope: !651)
