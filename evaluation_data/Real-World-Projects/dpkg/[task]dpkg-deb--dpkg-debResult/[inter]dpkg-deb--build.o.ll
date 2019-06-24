; ModuleID = './[inter]dpkg-deb--build.o.i'
source_filename = "./[inter]dpkg-deb--build.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cmdinfo = type { i8*, i8, i32, i32*, i8**, void (%struct.cmdinfo*, i8*)*, i32, i8*, i32 (i8**)* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.compress_params = type { i32, i32, i32 }
%struct.deb_version = type { i32, i32 }
%struct.tar_pack_options = type { i64, i8*, i8 }
%struct.dpkg_error = type { i32, i32, i8* }
%struct.dpkg_ar = type { i8*, i32, i64, i64, i32 }
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
%struct.perpackagestate = type opaque
%struct.archivedetails = type { %struct.archivedetails*, i8*, i8*, i8*, i8* }
%struct.anon = type { %struct.trigaw*, %struct.trigaw* }
%struct.trigaw = type { %struct.pkginfo*, %struct.pkginfo*, %struct.trigaw*, %struct.anon.0 }
%struct.anon.0 = type { %struct.trigaw*, %struct.trigaw* }
%struct.trigpend = type { %struct.trigpend*, i8* }
%struct.fsys_namenode_list = type opaque
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.command = type { i8*, i8*, i32, i32, i8** }
%struct.treeroot = type opaque
%struct.treenode = type opaque
%struct.treewalk_funcs = type { i32 (%struct.treenode*)*, i32 (%struct.treenode*)*, i1 (%struct.treenode*)* }
%struct.file_info = type { %struct.file_info*, i8* }
%struct.varbuf = type { i64, i64, i8* }

@.str = private unnamed_addr constant [34 x i8] c"--%s needs a <directory> argument\00", align 1
@cipaction = external global %struct.cmdinfo*, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"--%s takes at most two arguments\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"DEBIAN\00", align 1
@nocheckflag = external global i32, align 4
@.str.4 = private unnamed_addr constant [53 x i8] c"target is directory - cannot skip control file check\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"not checking contents of control area\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"building an unknown package in '%s'.\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"building package '%s' in '%s'.\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.8 = private unnamed_addr constant [18 x i8] c"<standard output>\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"SOURCE_DATE_EPOCH\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"TAR_OPTIONS\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"dpkg-deb\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"failed to make temporary file (%s)\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"control member\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"failed to unlink temporary file (%s), %s\00", align 1
@opt_uniform_compression = external global i32, align 4
@compress_params = external global %struct.compress_params, align 4
@.str.15 = private unnamed_addr constant [8 x i8] c"build.c\00", align 1
@__func__.do_build = private unnamed_addr constant [9 x i8] c"do_build\00", align 1
@.str.16 = private unnamed_addr constant [45 x i8] c"invalid control member compressor params: %s\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"u+rw,go=rX\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"failed to rewind temporary file (%s)\00", align 1
@deb_format = external global %struct.deb_version, align 4
@.str.19 = private unnamed_addr constant [35 x i8] c"failed to stat temporary file (%s)\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"%-8s\0A%jd\0A\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"0.939000\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"error writing '%s'\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"cannot copy '%s' into archive '%s': %s\00", align 1
@do_build.deb_magic = internal constant [5 x i8] c"2.0\0A\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"control.tar\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"debian-binary\00", align 1
@.str.27 = private unnamed_addr constant [33 x i8] c"unknown deb format version %d.%d\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"data member\00", align 1
@opt_root_owner_group = external global i32, align 4
@.str.29 = private unnamed_addr constant [9 x i8] c"data.tar\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"unable to sync file '%s'\00", align 1
@.str.31 = private unnamed_addr constant [50 x i8] c"unable to check for existence of archive '%.250s'\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c".deb\00", align 1
@.str.33 = private unnamed_addr constant [46 x i8] c"ignoring %d warning about the control file(s)\00", align 1
@.str.34 = private unnamed_addr constant [47 x i8] c"ignoring %d warnings about the control file(s)\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"control\00", align 1
@.str.36 = private unnamed_addr constant [40 x i8] c"abcdefghijklmnopqrstuvwxyz0123456789+-.\00", align 1
@.str.37 = private unnamed_addr constant [69 x i8] c"package name has characters that aren't lowercase alphanums or '-+.'\00", align 1
@.str.38 = private unnamed_addr constant [41 x i8] c"package architecture is missing or empty\00", align 1
@.str.39 = private unnamed_addr constant [47 x i8] c"'%s' contains user-defined Priority value '%s'\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"%s/\00", align 1
@.str.41 = private unnamed_addr constant [33 x i8] c"unable to stat control directory\00", align 1
@.str.42 = private unnamed_addr constant [37 x i8] c"control directory is not a directory\00", align 1
@.str.43 = private unnamed_addr constant [72 x i8] c"control directory has bad permissions %03lo (must be >=0755 and <=0775)\00", align 1
@maintainerscripts = internal constant [6 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i8* null], align 16
@.str.44 = private unnamed_addr constant [57 x i8] c"maintainer script '%.50s' is not a plain file or symlink\00", align 1
@.str.45 = private unnamed_addr constant [80 x i8] c"maintainer script '%.50s' has bad permissions %03lo (must be >=0555 and <=0775)\00", align 1
@.str.46 = private unnamed_addr constant [43 x i8] c"maintainer script '%.50s' is not stattable\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"preinst\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"postinst\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"prerm\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"postrm\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"conffiles\00", align 1
@.str.53 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.54 = private unnamed_addr constant [29 x i8] c"error opening conffiles file\00", align 1
@.str.55 = private unnamed_addr constant [42 x i8] c"empty string from fgets reading conffiles\00", align 1
@.str.56 = private unnamed_addr constant [57 x i8] c"conffile name '%s' is too long, or missing final newline\00", align 1
@.str.57 = private unnamed_addr constant [54 x i8] c"conffile filename '%s' contains trailing white spaces\00", align 1
@.str.58 = private unnamed_addr constant [45 x i8] c"conffile '%.250s' does not appear in package\00", align 1
@.str.59 = private unnamed_addr constant [35 x i8] c"conffile '%.250s' is not stattable\00", align 1
@.str.60 = private unnamed_addr constant [34 x i8] c"conffile '%s' is not a plain file\00", align 1
@.str.61 = private unnamed_addr constant [33 x i8] c"conffile name '%s' is duplicated\00", align 1
@.str.62 = private unnamed_addr constant [29 x i8] c"error reading conffiles file\00", align 1
@.str.63 = private unnamed_addr constant [14 x i8] c"%s/%s_%s_%s%s\00", align 1
@.str.64 = private unnamed_addr constant [35 x i8] c"unable to parse timestamp '%.255s'\00", align 1
@.str.65 = private unnamed_addr constant [28 x i8] c"failed to chdir to '%.255s'\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"@%ld\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"tar\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"tar -cf\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"-cf\00", align 1
@.str.70 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.71 = private unnamed_addr constant [13 x i8] c"--format=gnu\00", align 1
@.str.72 = private unnamed_addr constant [8 x i8] c"--mtime\00", align 1
@.str.73 = private unnamed_addr constant [14 x i8] c"--clamp-mtime\00", align 1
@.str.74 = private unnamed_addr constant [7 x i8] c"--mode\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c"--owner\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"root:0\00", align 1
@.str.77 = private unnamed_addr constant [8 x i8] c"--group\00", align 1
@.str.78 = private unnamed_addr constant [7 x i8] c"--null\00", align 1
@.str.79 = private unnamed_addr constant [13 x i8] c"--no-unquote\00", align 1
@.str.80 = private unnamed_addr constant [15 x i8] c"--no-recursion\00", align 1
@.str.81 = private unnamed_addr constant [3 x i8] c"-T\00", align 1
@.str.82 = private unnamed_addr constant [23 x i8] c"compressing tar member\00", align 1
@.str.83 = private unnamed_addr constant [24 x i8] c"<compress> from tar -cf\00", align 1
@.str.84 = private unnamed_addr constant [5 x i8] c"./%s\00", align 1
@.str.85 = private unnamed_addr constant [42 x i8] c"failed to write filename to tar pipe (%s)\00", align 1
@.str.86 = private unnamed_addr constant [37 x i8] c"newline not allowed in pathname '%s'\00", align 1

; Function Attrs: nounwind uwtable
define i32 @do_build(i8**) #0 !dbg !144 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.compress_params, align 4
  %4 = alloca %struct.tar_pack_options, align 8
  %5 = alloca %struct.dpkg_error, align 8
  %6 = alloca %struct.dpkg_ar*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.pkginfo*, align 8
  %16 = alloca %struct.stat, align 8
  %17 = alloca [40 x i8], align 16
  %18 = alloca [17 x i8], align 16
  %19 = alloca [17 x i8], align 16
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !165, metadata !166), !dbg !167
  call void @llvm.dbg.declare(metadata %struct.compress_params* %3, metadata !168, metadata !166), !dbg !174
  call void @llvm.dbg.declare(metadata %struct.tar_pack_options* %4, metadata !175, metadata !166), !dbg !186
  call void @llvm.dbg.declare(metadata %struct.dpkg_error* %5, metadata !187, metadata !166), !dbg !194
  call void @llvm.dbg.declare(metadata %struct.dpkg_ar** %6, metadata !195, metadata !166), !dbg !211
  call void @llvm.dbg.declare(metadata i64* %7, metadata !212, metadata !166), !dbg !213
  call void @llvm.dbg.declare(metadata i8** %8, metadata !214, metadata !166), !dbg !215
  call void @llvm.dbg.declare(metadata i8** %9, metadata !216, metadata !166), !dbg !217
  call void @llvm.dbg.declare(metadata i8** %10, metadata !218, metadata !166), !dbg !219
  call void @llvm.dbg.declare(metadata i8** %11, metadata !220, metadata !166), !dbg !221
  call void @llvm.dbg.declare(metadata i8** %12, metadata !222, metadata !166), !dbg !223
  call void @llvm.dbg.declare(metadata i8** %13, metadata !224, metadata !166), !dbg !225
  call void @llvm.dbg.declare(metadata i32* %14, metadata !226, metadata !166), !dbg !227
  %20 = load i8**, i8*** %2, align 8, !dbg !228
  %21 = getelementptr inbounds i8*, i8** %20, i32 1, !dbg !228
  store i8** %21, i8*** %2, align 8, !dbg !228
  %22 = load i8*, i8** %20, align 8, !dbg !229
  store i8* %22, i8** %9, align 8, !dbg !230
  %23 = load i8*, i8** %9, align 8, !dbg !231
  %24 = icmp ne i8* %23, null, !dbg !231
  br i1 %24, label %30, label %25, !dbg !233

; <label>:25:                                     ; preds = %1
  %26 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i32 0, i32 0)) #10, !dbg !234
  %27 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !235
  %28 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %27, i32 0, i32 0, !dbg !236
  %29 = load i8*, i8** %28, align 8, !dbg !236
  call void (i8*, ...) @badusage(i8* %26, i8* %29) #11, !dbg !237
  unreachable, !dbg !239

; <label>:30:                                     ; preds = %1
  %31 = load i8**, i8*** %2, align 8, !dbg !240
  %32 = getelementptr inbounds i8*, i8** %31, i32 1, !dbg !240
  store i8** %32, i8*** %2, align 8, !dbg !240
  %33 = load i8*, i8** %31, align 8, !dbg !241
  store i8* %33, i8** %10, align 8, !dbg !242
  %34 = load i8*, i8** %10, align 8, !dbg !243
  %35 = icmp ne i8* %34, null, !dbg !243
  br i1 %35, label %36, label %45, !dbg !245

; <label>:36:                                     ; preds = %30
  %37 = load i8**, i8*** %2, align 8, !dbg !246
  %38 = load i8*, i8** %37, align 8, !dbg !248
  %39 = icmp ne i8* %38, null, !dbg !248
  br i1 %39, label %40, label %45, !dbg !249

; <label>:40:                                     ; preds = %36
  %41 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0)) #10, !dbg !250
  %42 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !251
  %43 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %42, i32 0, i32 0, !dbg !252
  %44 = load i8*, i8** %43, align 8, !dbg !252
  call void (i8*, ...) @badusage(i8* %41, i8* %44) #11, !dbg !253
  unreachable, !dbg !254

; <label>:45:                                     ; preds = %36, %30
  %46 = load i8*, i8** %9, align 8, !dbg !255
  %47 = load i8*, i8** %10, align 8, !dbg !256
  %48 = call i8* @gen_dest_pathname(i8* %46, i8* %47), !dbg !257
  store i8* %48, i8** %12, align 8, !dbg !258
  %49 = load i8*, i8** %9, align 8, !dbg !259
  %50 = call i8* (i8*, ...) @str_fmt(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0)), !dbg !260
  store i8* %50, i8** %11, align 8, !dbg !261
  %51 = load i32, i32* @nocheckflag, align 4, !dbg !262
  %52 = icmp ne i32 %51, 0, !dbg !262
  br i1 %52, label %53, label %62, !dbg !264

; <label>:53:                                     ; preds = %45
  %54 = load i8*, i8** %12, align 8, !dbg !265
  %55 = icmp eq i8* %54, null, !dbg !268
  br i1 %55, label %56, label %58, !dbg !269

; <label>:56:                                     ; preds = %53
  %57 = call i8* @gettext(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i32 0, i32 0)) #10, !dbg !270
  call void (i8*, ...) @ohshit(i8* %57) #11, !dbg !271
  unreachable, !dbg !273

; <label>:58:                                     ; preds = %53
  %59 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i32 0, i32 0)) #10, !dbg !274
  call void (i8*, ...) @warning(i8* %59), !dbg !275
  %60 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i32 0, i32 0)) #10, !dbg !277
  %61 = load i8*, i8** %12, align 8, !dbg !278
  call void (i8*, ...) @info(i8* %60, i8* %61), !dbg !279
  br label %80, !dbg !280

; <label>:62:                                     ; preds = %45
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %15, metadata !281, metadata !166), !dbg !412
  %63 = load i8*, i8** %11, align 8, !dbg !413
  %64 = load i8*, i8** %9, align 8, !dbg !414
  %65 = call %struct.pkginfo* @check_control_area(i8* %63, i8* %64), !dbg !415
  store %struct.pkginfo* %65, %struct.pkginfo** %15, align 8, !dbg !416
  %66 = load i8*, i8** %12, align 8, !dbg !417
  %67 = icmp eq i8* %66, null, !dbg !419
  br i1 %67, label %68, label %72, !dbg !420

; <label>:68:                                     ; preds = %62
  %69 = load i8*, i8** %10, align 8, !dbg !421
  %70 = load %struct.pkginfo*, %struct.pkginfo** %15, align 8, !dbg !422
  %71 = call i8* @gen_dest_pathname_from_pkg(i8* %69, %struct.pkginfo* %70), !dbg !423
  store i8* %71, i8** %12, align 8, !dbg !424
  br label %72, !dbg !425

; <label>:72:                                     ; preds = %68, %62
  %73 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i32 0, i32 0)) #10, !dbg !426
  %74 = load %struct.pkginfo*, %struct.pkginfo** %15, align 8, !dbg !427
  %75 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %74, i32 0, i32 0, !dbg !428
  %76 = load %struct.pkgset*, %struct.pkgset** %75, align 8, !dbg !428
  %77 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %76, i32 0, i32 1, !dbg !429
  %78 = load i8*, i8** %77, align 8, !dbg !429
  %79 = load i8*, i8** %12, align 8, !dbg !430
  call void (i8*, ...) @info(i8* %73, i8* %78, i8* %79), !dbg !431
  br label %80

; <label>:80:                                     ; preds = %72, %58
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !433
  %82 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0)) #10, !dbg !434
  call void @m_output(%struct._IO_FILE* %81, i8* %82), !dbg !435
  %83 = call i8* @getenv(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0)) #10, !dbg !437
  store i8* %83, i8** %8, align 8, !dbg !438
  %84 = load i8*, i8** %8, align 8, !dbg !439
  %85 = icmp ne i8* %84, null, !dbg !439
  br i1 %85, label %86, label %89, !dbg !441

; <label>:86:                                     ; preds = %80
  %87 = load i8*, i8** %8, align 8, !dbg !442
  %88 = call i64 @parse_timestamp(i8* %87), !dbg !443
  store i64 %88, i64* %7, align 8, !dbg !444
  br label %91, !dbg !445

; <label>:89:                                     ; preds = %80
  %90 = call i64 @time(i64* null) #10, !dbg !446
  store i64 %90, i64* %7, align 8, !dbg !447
  br label %91

; <label>:91:                                     ; preds = %89, %86
  %92 = load i8*, i8** %12, align 8, !dbg !448
  %93 = call %struct.dpkg_ar* @dpkg_ar_create(i8* %92, i32 420), !dbg !449
  store %struct.dpkg_ar* %93, %struct.dpkg_ar** %6, align 8, !dbg !450
  %94 = load %struct.dpkg_ar*, %struct.dpkg_ar** %6, align 8, !dbg !451
  %95 = load i64, i64* %7, align 8, !dbg !452
  call void @dpkg_ar_set_mtime(%struct.dpkg_ar* %94, i64 %95), !dbg !453
  %96 = call i32 @unsetenv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0)) #10, !dbg !454
  %97 = call i8* @path_make_temp_template(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0)), !dbg !455
  store i8* %97, i8** %13, align 8, !dbg !456
  %98 = load i8*, i8** %13, align 8, !dbg !457
  %99 = call i32 @mkstemp(i8* %98), !dbg !458
  store i32 %99, i32* %14, align 4, !dbg !459
  %100 = load i32, i32* %14, align 4, !dbg !460
  %101 = icmp eq i32 %100, -1, !dbg !462
  br i1 %101, label %102, label %105, !dbg !463

; <label>:102:                                    ; preds = %91
  %103 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i32 0, i32 0)) #10, !dbg !464
  %104 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0)) #10, !dbg !465
  call void (i8*, ...) @ohshite(i8* %103, i8* %104) #11, !dbg !467
  unreachable, !dbg !469

; <label>:105:                                    ; preds = %91
  %106 = load i8*, i8** %13, align 8, !dbg !470
  %107 = call i32 @unlink(i8* %106) #10, !dbg !472
  %108 = icmp ne i32 %107, 0, !dbg !472
  br i1 %108, label %109, label %113, !dbg !473

; <label>:109:                                    ; preds = %105
  %110 = call i8* @gettext(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i32 0, i32 0)) #10, !dbg !474
  %111 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0)) #10, !dbg !475
  %112 = load i8*, i8** %13, align 8, !dbg !477
  call void (i8*, ...) @ohshit(i8* %110, i8* %111, i8* %112) #11, !dbg !478
  unreachable, !dbg !480

; <label>:113:                                    ; preds = %105
  %114 = load i8*, i8** %13, align 8, !dbg !481
  call void @free(i8* %114) #10, !dbg !482
  %115 = load i32, i32* @opt_uniform_compression, align 4, !dbg !483
  %116 = icmp ne i32 %115, 0, !dbg !483
  br i1 %116, label %117, label %119, !dbg !485

; <label>:117:                                    ; preds = %113
  %118 = bitcast %struct.compress_params* %3 to i8*, !dbg !486
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %118, i8* bitcast (%struct.compress_params* @compress_params to i8*), i64 12, i32 4, i1 false), !dbg !486
  br label %128, !dbg !488

; <label>:119:                                    ; preds = %113
  %120 = getelementptr inbounds %struct.compress_params, %struct.compress_params* %3, i32 0, i32 0, !dbg !489
  store i32 1, i32* %120, align 4, !dbg !491
  %121 = getelementptr inbounds %struct.compress_params, %struct.compress_params* %3, i32 0, i32 1, !dbg !492
  store i32 0, i32* %121, align 4, !dbg !493
  %122 = getelementptr inbounds %struct.compress_params, %struct.compress_params* %3, i32 0, i32 2, !dbg !494
  store i32 -1, i32* %122, align 4, !dbg !495
  %123 = call zeroext i1 @compressor_check_params(%struct.compress_params* %3, %struct.dpkg_error* %5), !dbg !496
  br i1 %123, label %127, label %124, !dbg !498

; <label>:124:                                    ; preds = %119
  %125 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %5, i32 0, i32 2, !dbg !499
  %126 = load i8*, i8** %125, align 8, !dbg !499
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i32 586, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.do_build, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.16, i32 0, i32 0), i8* %126) #11, !dbg !500
  unreachable, !dbg !500

; <label>:127:                                    ; preds = %119
  br label %128

; <label>:128:                                    ; preds = %127, %117
  %129 = getelementptr inbounds %struct.tar_pack_options, %struct.tar_pack_options* %4, i32 0, i32 1, !dbg !501
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0), i8** %129, align 8, !dbg !502
  %130 = load i64, i64* %7, align 8, !dbg !503
  %131 = getelementptr inbounds %struct.tar_pack_options, %struct.tar_pack_options* %4, i32 0, i32 0, !dbg !504
  store i64 %130, i64* %131, align 8, !dbg !505
  %132 = getelementptr inbounds %struct.tar_pack_options, %struct.tar_pack_options* %4, i32 0, i32 2, !dbg !506
  store i8 1, i8* %132, align 8, !dbg !507
  %133 = load i8*, i8** %11, align 8, !dbg !508
  %134 = load i32, i32* %14, align 4, !dbg !509
  call void @tarball_pack(i8* %133, void (i8*, i32)* @control_treewalk_feed, %struct.tar_pack_options* %4, %struct.compress_params* %3, i32 %134), !dbg !510
  %135 = load i8*, i8** %11, align 8, !dbg !511
  call void @free(i8* %135) #10, !dbg !512
  %136 = load i32, i32* %14, align 4, !dbg !513
  %137 = call i64 @lseek(i32 %136, i64 0, i32 0) #10, !dbg !515
  %138 = icmp ne i64 %137, 0, !dbg !515
  br i1 %138, label %139, label %142, !dbg !516

; <label>:139:                                    ; preds = %128
  %140 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.18, i32 0, i32 0)) #10, !dbg !517
  %141 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0)) #10, !dbg !518
  call void (i8*, ...) @ohshite(i8* %140, i8* %141) #11, !dbg !520
  unreachable, !dbg !522

; <label>:142:                                    ; preds = %128
  %143 = load i32, i32* getelementptr inbounds (%struct.deb_version, %struct.deb_version* @deb_format, i32 0, i32 0), align 4, !dbg !523
  %144 = icmp eq i32 %143, 0, !dbg !525
  br i1 %144, label %145, label %184, !dbg !526

; <label>:145:                                    ; preds = %142
  call void @llvm.dbg.declare(metadata %struct.stat* %16, metadata !527, metadata !166), !dbg !562
  call void @llvm.dbg.declare(metadata [40 x i8]* %17, metadata !563, metadata !166), !dbg !567
  %146 = load i32, i32* %14, align 4, !dbg !568
  %147 = call i32 @fstat(i32 %146, %struct.stat* %16) #10, !dbg !570
  %148 = icmp ne i32 %147, 0, !dbg !570
  br i1 %148, label %149, label %152, !dbg !571

; <label>:149:                                    ; preds = %145
  %150 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i32 0, i32 0)) #10, !dbg !572
  %151 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0)) #10, !dbg !573
  call void (i8*, ...) @ohshite(i8* %150, i8* %151) #11, !dbg !575
  unreachable, !dbg !577

; <label>:152:                                    ; preds = %145
  %153 = getelementptr inbounds [40 x i8], [40 x i8]* %17, i32 0, i32 0, !dbg !578
  %154 = getelementptr inbounds %struct.stat, %struct.stat* %16, i32 0, i32 8, !dbg !579
  %155 = load i64, i64* %154, align 8, !dbg !579
  %156 = call i32 (i8*, i8*, ...) @sprintf(i8* %153, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i64 %155) #10, !dbg !580
  %157 = load %struct.dpkg_ar*, %struct.dpkg_ar** %6, align 8, !dbg !581
  %158 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %157, i32 0, i32 4, !dbg !583
  %159 = load i32, i32* %158, align 8, !dbg !583
  %160 = getelementptr inbounds [40 x i8], [40 x i8]* %17, i32 0, i32 0, !dbg !584
  %161 = getelementptr inbounds [40 x i8], [40 x i8]* %17, i32 0, i32 0, !dbg !585
  %162 = call i64 @strlen(i8* %161) #12, !dbg !586
  %163 = call i64 @fd_write(i32 %159, i8* %160, i64 %162), !dbg !587
  %164 = icmp slt i64 %163, 0, !dbg !589
  br i1 %164, label %165, label %168, !dbg !590

; <label>:165:                                    ; preds = %152
  %166 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i32 0, i32 0)) #10, !dbg !591
  %167 = load i8*, i8** %12, align 8, !dbg !592
  call void (i8*, ...) @ohshite(i8* %166, i8* %167) #11, !dbg !593
  unreachable, !dbg !594

; <label>:168:                                    ; preds = %152
  %169 = load i32, i32* %14, align 4, !dbg !595
  %170 = load %struct.dpkg_ar*, %struct.dpkg_ar** %6, align 8, !dbg !597
  %171 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %170, i32 0, i32 4, !dbg !598
  %172 = load i32, i32* %171, align 8, !dbg !598
  %173 = call i64 @buffer_copy_IntInt(i32 %169, i32 0, i8* null, i32 4, i32 %172, i32 2, i64 -1, %struct.dpkg_error* %5), !dbg !599
  %174 = icmp slt i64 %173, 0, !dbg !600
  br i1 %174, label %175, label %183, !dbg !601

; <label>:175:                                    ; preds = %168
  %176 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i32 0, i32 0)) #10, !dbg !602
  %177 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0)) #10, !dbg !603
  %178 = load %struct.dpkg_ar*, %struct.dpkg_ar** %6, align 8, !dbg !605
  %179 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %178, i32 0, i32 0, !dbg !606
  %180 = load i8*, i8** %179, align 8, !dbg !606
  %181 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %5, i32 0, i32 2, !dbg !607
  %182 = load i8*, i8** %181, align 8, !dbg !607
  call void (i8*, ...) @ohshit(i8* %176, i8* %177, i8* %180, i8* %182) #11, !dbg !608
  unreachable, !dbg !610

; <label>:183:                                    ; preds = %168
  br label %203, !dbg !611

; <label>:184:                                    ; preds = %142
  %185 = load i32, i32* getelementptr inbounds (%struct.deb_version, %struct.deb_version* @deb_format, i32 0, i32 0), align 4, !dbg !612
  %186 = icmp eq i32 %185, 2, !dbg !615
  br i1 %186, label %187, label %199, !dbg !616

; <label>:187:                                    ; preds = %184
  call void @llvm.dbg.declare(metadata [17 x i8]* %18, metadata !617, metadata !166), !dbg !622
  %188 = getelementptr inbounds [17 x i8], [17 x i8]* %18, i32 0, i32 0, !dbg !623
  %189 = getelementptr inbounds %struct.compress_params, %struct.compress_params* %3, i32 0, i32 0, !dbg !624
  %190 = load i32, i32* %189, align 4, !dbg !624
  %191 = call i8* @compressor_get_extension(i32 %190), !dbg !625
  %192 = call i32 (i8*, i8*, ...) @sprintf(i8* %188, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0), i8* %191) #10, !dbg !626
  %193 = load %struct.dpkg_ar*, %struct.dpkg_ar** %6, align 8, !dbg !627
  call void @dpkg_ar_put_magic(%struct.dpkg_ar* %193), !dbg !628
  %194 = load %struct.dpkg_ar*, %struct.dpkg_ar** %6, align 8, !dbg !629
  %195 = call i64 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @do_build.deb_magic, i32 0, i32 0)) #12, !dbg !630
  call void @dpkg_ar_member_put_mem(%struct.dpkg_ar* %194, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @do_build.deb_magic, i32 0, i32 0), i64 %195), !dbg !631
  %196 = load %struct.dpkg_ar*, %struct.dpkg_ar** %6, align 8, !dbg !633
  %197 = getelementptr inbounds [17 x i8], [17 x i8]* %18, i32 0, i32 0, !dbg !634
  %198 = load i32, i32* %14, align 4, !dbg !635
  call void @dpkg_ar_member_put_file(%struct.dpkg_ar* %196, i8* %197, i32 %198, i64 -1), !dbg !636
  br label %202, !dbg !637

; <label>:199:                                    ; preds = %184
  %200 = load i32, i32* getelementptr inbounds (%struct.deb_version, %struct.deb_version* @deb_format, i32 0, i32 0), align 4, !dbg !638
  %201 = load i32, i32* getelementptr inbounds (%struct.deb_version, %struct.deb_version* @deb_format, i32 0, i32 1), align 4, !dbg !640
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i32 627, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.do_build, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.27, i32 0, i32 0), i32 %200, i32 %201) #11, !dbg !641
  unreachable, !dbg !641

; <label>:202:                                    ; preds = %187
  br label %203

; <label>:203:                                    ; preds = %202, %183
  %204 = load i32, i32* %14, align 4, !dbg !642
  %205 = call i32 @close(i32 %204), !dbg !643
  %206 = load i32, i32* getelementptr inbounds (%struct.deb_version, %struct.deb_version* @deb_format, i32 0, i32 0), align 4, !dbg !644
  %207 = icmp eq i32 %206, 0, !dbg !646
  br i1 %207, label %208, label %212, !dbg !647

; <label>:208:                                    ; preds = %203
  %209 = load %struct.dpkg_ar*, %struct.dpkg_ar** %6, align 8, !dbg !648
  %210 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %209, i32 0, i32 4, !dbg !650
  %211 = load i32, i32* %210, align 8, !dbg !650
  store i32 %211, i32* %14, align 4, !dbg !651
  br label %238, !dbg !652

; <label>:212:                                    ; preds = %203
  %213 = load i32, i32* getelementptr inbounds (%struct.deb_version, %struct.deb_version* @deb_format, i32 0, i32 0), align 4, !dbg !653
  %214 = icmp eq i32 %213, 2, !dbg !656
  br i1 %214, label %215, label %234, !dbg !657

; <label>:215:                                    ; preds = %212
  %216 = call i8* @path_make_temp_template(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0)), !dbg !658
  store i8* %216, i8** %13, align 8, !dbg !660
  %217 = load i8*, i8** %13, align 8, !dbg !661
  %218 = call i32 @mkstemp(i8* %217), !dbg !662
  store i32 %218, i32* %14, align 4, !dbg !663
  %219 = load i32, i32* %14, align 4, !dbg !664
  %220 = icmp eq i32 %219, -1, !dbg !666
  br i1 %220, label %221, label %224, !dbg !667

; <label>:221:                                    ; preds = %215
  %222 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i32 0, i32 0)) #10, !dbg !668
  %223 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0)) #10, !dbg !669
  call void (i8*, ...) @ohshite(i8* %222, i8* %223) #11, !dbg !671
  unreachable, !dbg !673

; <label>:224:                                    ; preds = %215
  %225 = load i8*, i8** %13, align 8, !dbg !674
  %226 = call i32 @unlink(i8* %225) #10, !dbg !676
  %227 = icmp ne i32 %226, 0, !dbg !676
  br i1 %227, label %228, label %232, !dbg !677

; <label>:228:                                    ; preds = %224
  %229 = call i8* @gettext(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i32 0, i32 0)) #10, !dbg !678
  %230 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0)) #10, !dbg !679
  %231 = load i8*, i8** %13, align 8, !dbg !681
  call void (i8*, ...) @ohshit(i8* %229, i8* %230, i8* %231) #11, !dbg !682
  unreachable, !dbg !684

; <label>:232:                                    ; preds = %224
  %233 = load i8*, i8** %13, align 8, !dbg !685
  call void @free(i8* %233) #10, !dbg !686
  br label %237, !dbg !687

; <label>:234:                                    ; preds = %212
  %235 = load i32, i32* getelementptr inbounds (%struct.deb_version, %struct.deb_version* @deb_format, i32 0, i32 0), align 4, !dbg !688
  %236 = load i32, i32* getelementptr inbounds (%struct.deb_version, %struct.deb_version* @deb_format, i32 0, i32 1), align 4, !dbg !690
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i32 651, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.do_build, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.27, i32 0, i32 0), i32 %235, i32 %236) #11, !dbg !691
  unreachable, !dbg !691

; <label>:237:                                    ; preds = %232
  br label %238

; <label>:238:                                    ; preds = %237, %208
  %239 = getelementptr inbounds %struct.tar_pack_options, %struct.tar_pack_options* %4, i32 0, i32 1, !dbg !692
  store i8* null, i8** %239, align 8, !dbg !693
  %240 = load i64, i64* %7, align 8, !dbg !694
  %241 = getelementptr inbounds %struct.tar_pack_options, %struct.tar_pack_options* %4, i32 0, i32 0, !dbg !695
  store i64 %240, i64* %241, align 8, !dbg !696
  %242 = load i32, i32* @opt_root_owner_group, align 4, !dbg !697
  %243 = icmp ne i32 %242, 0, !dbg !697
  %244 = getelementptr inbounds %struct.tar_pack_options, %struct.tar_pack_options* %4, i32 0, i32 2, !dbg !698
  %245 = zext i1 %243 to i8, !dbg !699
  store i8 %245, i8* %244, align 8, !dbg !699
  %246 = load i8*, i8** %9, align 8, !dbg !700
  %247 = load i32, i32* %14, align 4, !dbg !701
  call void @tarball_pack(i8* %246, void (i8*, i32)* @file_treewalk_feed, %struct.tar_pack_options* %4, %struct.compress_params* @compress_params, i32 %247), !dbg !702
  %248 = load i32, i32* getelementptr inbounds (%struct.deb_version, %struct.deb_version* @deb_format, i32 0, i32 0), align 4, !dbg !703
  %249 = icmp eq i32 %248, 2, !dbg !705
  br i1 %249, label %250, label %267, !dbg !706

; <label>:250:                                    ; preds = %238
  call void @llvm.dbg.declare(metadata [17 x i8]* %19, metadata !707, metadata !166), !dbg !709
  %251 = getelementptr inbounds [17 x i8], [17 x i8]* %19, i32 0, i32 0, !dbg !710
  %252 = load i32, i32* getelementptr inbounds (%struct.compress_params, %struct.compress_params* @compress_params, i32 0, i32 0), align 4, !dbg !711
  %253 = call i8* @compressor_get_extension(i32 %252), !dbg !712
  %254 = call i32 (i8*, i8*, ...) @sprintf(i8* %251, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i8* %253) #10, !dbg !713
  %255 = load i32, i32* %14, align 4, !dbg !714
  %256 = call i64 @lseek(i32 %255, i64 0, i32 0) #10, !dbg !716
  %257 = icmp ne i64 %256, 0, !dbg !716
  br i1 %257, label %258, label %261, !dbg !717

; <label>:258:                                    ; preds = %250
  %259 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.18, i32 0, i32 0)) #10, !dbg !718
  %260 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0)) #10, !dbg !719
  call void (i8*, ...) @ohshite(i8* %259, i8* %260) #11, !dbg !721
  unreachable, !dbg !723

; <label>:261:                                    ; preds = %250
  %262 = load %struct.dpkg_ar*, %struct.dpkg_ar** %6, align 8, !dbg !724
  %263 = getelementptr inbounds [17 x i8], [17 x i8]* %19, i32 0, i32 0, !dbg !725
  %264 = load i32, i32* %14, align 4, !dbg !726
  call void @dpkg_ar_member_put_file(%struct.dpkg_ar* %262, i8* %263, i32 %264, i64 -1), !dbg !727
  %265 = load i32, i32* %14, align 4, !dbg !728
  %266 = call i32 @close(i32 %265), !dbg !729
  br label %267, !dbg !730

; <label>:267:                                    ; preds = %261, %238
  %268 = load %struct.dpkg_ar*, %struct.dpkg_ar** %6, align 8, !dbg !731
  %269 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %268, i32 0, i32 4, !dbg !733
  %270 = load i32, i32* %269, align 8, !dbg !733
  %271 = call i32 @fsync(i32 %270), !dbg !734
  %272 = icmp ne i32 %271, 0, !dbg !734
  br i1 %272, label %273, label %278, !dbg !735

; <label>:273:                                    ; preds = %267
  %274 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.30, i32 0, i32 0)) #10, !dbg !736
  %275 = load %struct.dpkg_ar*, %struct.dpkg_ar** %6, align 8, !dbg !737
  %276 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %275, i32 0, i32 0, !dbg !738
  %277 = load i8*, i8** %276, align 8, !dbg !738
  call void (i8*, ...) @ohshite(i8* %274, i8* %277) #11, !dbg !739
  unreachable, !dbg !741

; <label>:278:                                    ; preds = %267
  %279 = load %struct.dpkg_ar*, %struct.dpkg_ar** %6, align 8, !dbg !742
  call void @dpkg_ar_close(%struct.dpkg_ar* %279), !dbg !743
  %280 = load i8*, i8** %12, align 8, !dbg !744
  call void @free(i8* %280) #10, !dbg !745
  ret i32 0, !dbg !746
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noreturn
declare void @badusage(i8*, ...) #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

; Function Attrs: nounwind uwtable
define internal i8* @gen_dest_pathname(i8*, i8*) #0 !dbg !747 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stat, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !750, metadata !166), !dbg !751
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !752, metadata !166), !dbg !753
  %8 = load i8*, i8** %5, align 8, !dbg !754
  %9 = icmp ne i8* %8, null, !dbg !754
  br i1 %9, label %10, label %32, !dbg !756

; <label>:10:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata %struct.stat* %6, metadata !757, metadata !166), !dbg !759
  %11 = load i8*, i8** %5, align 8, !dbg !760
  %12 = call i32 @stat(i8* %11, %struct.stat* %6) #10, !dbg !762
  %13 = icmp ne i32 %12, 0, !dbg !762
  br i1 %13, label %14, label %22, !dbg !763

; <label>:14:                                     ; preds = %10
  %15 = call i32* @__errno_location() #1, !dbg !764
  %16 = load i32, i32* %15, align 4, !dbg !767
  %17 = icmp ne i32 %16, 2, !dbg !768
  br i1 %17, label %18, label %21, !dbg !769

; <label>:18:                                     ; preds = %14
  %19 = call i8* @gettext(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.31, i32 0, i32 0)) #10, !dbg !770
  %20 = load i8*, i8** %5, align 8, !dbg !771
  call void (i8*, ...) @ohshite(i8* %19, i8* %20) #11, !dbg !772
  unreachable, !dbg !774

; <label>:21:                                     ; preds = %14
  br label %29, !dbg !775

; <label>:22:                                     ; preds = %10
  %23 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 3, !dbg !776
  %24 = load i32, i32* %23, align 8, !dbg !776
  %25 = and i32 %24, 61440, !dbg !779
  %26 = icmp eq i32 %25, 16384, !dbg !780
  br i1 %26, label %27, label %28, !dbg !781

; <label>:27:                                     ; preds = %22
  store i8* null, i8** %3, align 8, !dbg !782
  br label %45, !dbg !782

; <label>:28:                                     ; preds = %22
  br label %29

; <label>:29:                                     ; preds = %28, %21
  %30 = load i8*, i8** %5, align 8, !dbg !784
  %31 = call i8* @m_strdup(i8* %30), !dbg !785
  store i8* %31, i8** %3, align 8, !dbg !786
  br label %45, !dbg !786

; <label>:32:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %7, metadata !787, metadata !166), !dbg !789
  %33 = load i8*, i8** %4, align 8, !dbg !790
  %34 = call i64 @strlen(i8* %33) #12, !dbg !791
  %35 = add i64 %34, 5, !dbg !792
  %36 = call i8* @m_malloc(i64 %35), !dbg !793
  store i8* %36, i8** %7, align 8, !dbg !795
  %37 = load i8*, i8** %7, align 8, !dbg !796
  %38 = load i8*, i8** %4, align 8, !dbg !797
  %39 = call i8* @strcpy(i8* %37, i8* %38) #10, !dbg !798
  %40 = load i8*, i8** %7, align 8, !dbg !799
  %41 = call i64 @path_trim_slash_slashdot(i8* %40), !dbg !800
  %42 = load i8*, i8** %7, align 8, !dbg !801
  %43 = call i8* @strcat(i8* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0)) #10, !dbg !802
  %44 = load i8*, i8** %7, align 8, !dbg !803
  store i8* %44, i8** %3, align 8, !dbg !804
  br label %45, !dbg !804

; <label>:45:                                     ; preds = %32, %29, %27
  %46 = load i8*, i8** %3, align 8, !dbg !805
  ret i8* %46, !dbg !805
}

declare i8* @str_fmt(i8*, ...) #4

; Function Attrs: noreturn
declare void @ohshit(i8*, ...) #2

declare void @warning(i8*, ...) #4

declare void @info(i8*, ...) #4

; Function Attrs: nounwind uwtable
define internal %struct.pkginfo* @check_control_area(i8*, i8*) #0 !dbg !806 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pkginfo*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !809, metadata !166), !dbg !810
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !811, metadata !166), !dbg !812
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %5, metadata !813, metadata !166), !dbg !814
  call void @llvm.dbg.declare(metadata i32* %6, metadata !815, metadata !166), !dbg !816
  %7 = load i8*, i8** %3, align 8, !dbg !817
  %8 = call %struct.pkginfo* @check_control_file(i8* %7), !dbg !818
  store %struct.pkginfo* %8, %struct.pkginfo** %5, align 8, !dbg !819
  %9 = load i8*, i8** %3, align 8, !dbg !820
  call void @check_file_perms(i8* %9), !dbg !821
  %10 = load i8*, i8** %3, align 8, !dbg !822
  %11 = load i8*, i8** %4, align 8, !dbg !823
  call void @check_conffiles(i8* %10, i8* %11), !dbg !824
  %12 = call i32 @warning_get_count(), !dbg !825
  store i32 %12, i32* %6, align 4, !dbg !826
  %13 = load i32, i32* %6, align 4, !dbg !827
  %14 = icmp ne i32 %13, 0, !dbg !827
  br i1 %14, label %15, label %20, !dbg !829

; <label>:15:                                     ; preds = %2
  %16 = load i32, i32* %6, align 4, !dbg !830
  %17 = sext i32 %16 to i64, !dbg !830
  %18 = call i8* @ngettext(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.34, i32 0, i32 0), i64 %17) #10, !dbg !831
  %19 = load i32, i32* %6, align 4, !dbg !832
  call void (i8*, ...) @warning(i8* %18, i32 %19), !dbg !833
  br label %20, !dbg !835

; <label>:20:                                     ; preds = %15, %2
  %21 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !836
  ret %struct.pkginfo* %21, !dbg !837
}

; Function Attrs: nounwind uwtable
define internal i8* @gen_dest_pathname_from_pkg(i8*, %struct.pkginfo*) #0 !dbg !838 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.pkginfo*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !841, metadata !166), !dbg !842
  store %struct.pkginfo* %1, %struct.pkginfo** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %4, metadata !843, metadata !166), !dbg !844
  %5 = load i8*, i8** %3, align 8, !dbg !845
  %6 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !846
  %7 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %6, i32 0, i32 0, !dbg !847
  %8 = load %struct.pkgset*, %struct.pkgset** %7, align 8, !dbg !847
  %9 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %8, i32 0, i32 1, !dbg !848
  %10 = load i8*, i8** %9, align 8, !dbg !848
  %11 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !849
  %12 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %11, i32 0, i32 10, !dbg !850
  %13 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %12, i32 0, i32 11, !dbg !851
  %14 = call i8* @versiondescribe(%struct.dpkg_version* %13, i32 0), !dbg !852
  %15 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !853
  %16 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %15, i32 0, i32 10, !dbg !854
  %17 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %16, i32 0, i32 3, !dbg !855
  %18 = load %struct.dpkg_arch*, %struct.dpkg_arch** %17, align 8, !dbg !855
  %19 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %18, i32 0, i32 1, !dbg !856
  %20 = load i8*, i8** %19, align 8, !dbg !856
  %21 = call i8* (i8*, ...) @str_fmt(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.63, i32 0, i32 0), i8* %5, i8* %10, i8* %14, i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0)), !dbg !857
  ret i8* %21, !dbg !858
}

declare void @m_output(%struct._IO_FILE*, i8*) #4

; Function Attrs: nounwind
declare i8* @getenv(i8*) #3

; Function Attrs: nounwind uwtable
define internal i64 @parse_timestamp(i8*) #0 !dbg !859 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !862, metadata !166), !dbg !863
  call void @llvm.dbg.declare(metadata i64* %3, metadata !864, metadata !166), !dbg !865
  call void @llvm.dbg.declare(metadata i8** %4, metadata !866, metadata !166), !dbg !867
  %5 = call i32* @__errno_location() #1, !dbg !868
  store i32 0, i32* %5, align 4, !dbg !869
  %6 = load i8*, i8** %2, align 8, !dbg !870
  %7 = call i64 @strtol(i8* %6, i8** %4, i32 10) #10, !dbg !871
  store i64 %7, i64* %3, align 8, !dbg !872
  %8 = load i8*, i8** %2, align 8, !dbg !873
  %9 = load i8*, i8** %4, align 8, !dbg !875
  %10 = icmp eq i8* %8, %9, !dbg !876
  br i1 %10, label %20, label %11, !dbg !877

; <label>:11:                                     ; preds = %1
  %12 = load i8*, i8** %4, align 8, !dbg !878
  %13 = load i8, i8* %12, align 1, !dbg !880
  %14 = sext i8 %13 to i32, !dbg !880
  %15 = icmp ne i32 %14, 0, !dbg !880
  br i1 %15, label %20, label %16, !dbg !881

; <label>:16:                                     ; preds = %11
  %17 = call i32* @__errno_location() #1, !dbg !882
  %18 = load i32, i32* %17, align 4, !dbg !884
  %19 = icmp ne i32 %18, 0, !dbg !885
  br i1 %19, label %20, label %23, !dbg !886

; <label>:20:                                     ; preds = %16, %11, %1
  %21 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.64, i32 0, i32 0)) #10, !dbg !887
  %22 = load i8*, i8** %2, align 8, !dbg !888
  call void (i8*, ...) @ohshite(i8* %21, i8* %22) #11, !dbg !889
  unreachable, !dbg !890

; <label>:23:                                     ; preds = %16
  %24 = load i64, i64* %3, align 8, !dbg !891
  ret i64 %24, !dbg !892
}

; Function Attrs: nounwind
declare i64 @time(i64*) #3

declare %struct.dpkg_ar* @dpkg_ar_create(i8*, i32) #4

declare void @dpkg_ar_set_mtime(%struct.dpkg_ar*, i64) #4

; Function Attrs: nounwind
declare i32 @unsetenv(i8*) #3

declare i8* @path_make_temp_template(i8*) #4

declare i32 @mkstemp(i8*) #4

; Function Attrs: noreturn
declare void @ohshite(i8*, ...) #2

; Function Attrs: nounwind
declare i32 @unlink(i8*) #3

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #5

declare zeroext i1 @compressor_check_params(%struct.compress_params*, %struct.dpkg_error*) #4

; Function Attrs: noreturn
declare void @do_internerr(i8*, i32, i8*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal void @tarball_pack(i8*, void (i8*, i32)*, %struct.tar_pack_options*, %struct.compress_params*, i32) #0 !dbg !893 {
  %6 = alloca i8*, align 8
  %7 = alloca void (i8*, i32)*, align 8
  %8 = alloca %struct.tar_pack_options*, align 8
  %9 = alloca %struct.compress_params*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [2 x i32], align 4
  %12 = alloca [2 x i32], align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.command, align 8
  %16 = alloca [50 x i8], align 16
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !902, metadata !166), !dbg !903
  store void (i8*, i32)* %1, void (i8*, i32)** %7, align 8
  call void @llvm.dbg.declare(metadata void (i8*, i32)** %7, metadata !904, metadata !166), !dbg !905
  store %struct.tar_pack_options* %2, %struct.tar_pack_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.tar_pack_options** %8, metadata !906, metadata !166), !dbg !907
  store %struct.compress_params* %3, %struct.compress_params** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.compress_params** %9, metadata !908, metadata !166), !dbg !909
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !910, metadata !166), !dbg !911
  call void @llvm.dbg.declare(metadata [2 x i32]* %11, metadata !912, metadata !166), !dbg !916
  call void @llvm.dbg.declare(metadata [2 x i32]* %12, metadata !917, metadata !166), !dbg !918
  call void @llvm.dbg.declare(metadata i32* %13, metadata !919, metadata !166), !dbg !922
  call void @llvm.dbg.declare(metadata i32* %14, metadata !923, metadata !166), !dbg !924
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i32 0, i32 0, !dbg !925
  call void @m_pipe(i32* %17), !dbg !926
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i32 0, i32 0, !dbg !927
  call void @m_pipe(i32* %18), !dbg !928
  %19 = call i32 @subproc_fork(), !dbg !929
  store i32 %19, i32* %13, align 4, !dbg !930
  %20 = load i32, i32* %13, align 4, !dbg !931
  %21 = icmp eq i32 %20, 0, !dbg !933
  br i1 %21, label %22, label %67, !dbg !934

; <label>:22:                                     ; preds = %5
  call void @llvm.dbg.declare(metadata %struct.command* %15, metadata !935, metadata !166), !dbg !946
  call void @llvm.dbg.declare(metadata [50 x i8]* %16, metadata !947, metadata !166), !dbg !951
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0, !dbg !952
  %24 = load i32, i32* %23, align 4, !dbg !952
  call void @m_dup2(i32 %24, i32 0), !dbg !953
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0, !dbg !954
  %26 = load i32, i32* %25, align 4, !dbg !954
  %27 = call i32 @close(i32 %26), !dbg !955
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1, !dbg !956
  %29 = load i32, i32* %28, align 4, !dbg !956
  %30 = call i32 @close(i32 %29), !dbg !957
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1, !dbg !958
  %32 = load i32, i32* %31, align 4, !dbg !958
  call void @m_dup2(i32 %32, i32 1), !dbg !959
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0, !dbg !960
  %34 = load i32, i32* %33, align 4, !dbg !960
  %35 = call i32 @close(i32 %34), !dbg !961
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1, !dbg !962
  %37 = load i32, i32* %36, align 4, !dbg !962
  %38 = call i32 @close(i32 %37), !dbg !963
  %39 = load i8*, i8** %6, align 8, !dbg !964
  %40 = call i32 @chdir(i8* %39) #10, !dbg !966
  %41 = icmp ne i32 %40, 0, !dbg !966
  br i1 %41, label %42, label %45, !dbg !967

; <label>:42:                                     ; preds = %22
  %43 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.65, i32 0, i32 0)) #10, !dbg !968
  %44 = load i8*, i8** %6, align 8, !dbg !969
  call void (i8*, ...) @ohshite(i8* %43, i8* %44) #11, !dbg !970
  unreachable, !dbg !972

; <label>:45:                                     ; preds = %22
  %46 = getelementptr inbounds [50 x i8], [50 x i8]* %16, i32 0, i32 0, !dbg !973
  %47 = load %struct.tar_pack_options*, %struct.tar_pack_options** %8, align 8, !dbg !974
  %48 = getelementptr inbounds %struct.tar_pack_options, %struct.tar_pack_options* %47, i32 0, i32 0, !dbg !975
  %49 = load i64, i64* %48, align 8, !dbg !975
  %50 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %46, i64 50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i32 0, i32 0), i64 %49) #10, !dbg !976
  call void @command_init(%struct.command* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i32 0, i32 0)), !dbg !977
  %51 = getelementptr inbounds [50 x i8], [50 x i8]* %16, i32 0, i32 0, !dbg !978
  call void (%struct.command*, ...) @command_add_args(%struct.command* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.72, i32 0, i32 0), i8* %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i32 0, i32 0), i8* null), !dbg !979
  %52 = load %struct.tar_pack_options*, %struct.tar_pack_options** %8, align 8, !dbg !980
  %53 = getelementptr inbounds %struct.tar_pack_options, %struct.tar_pack_options* %52, i32 0, i32 1, !dbg !982
  %54 = load i8*, i8** %53, align 8, !dbg !982
  %55 = icmp ne i8* %54, null, !dbg !980
  br i1 %55, label %56, label %60, !dbg !983

; <label>:56:                                     ; preds = %45
  %57 = load %struct.tar_pack_options*, %struct.tar_pack_options** %8, align 8, !dbg !984
  %58 = getelementptr inbounds %struct.tar_pack_options, %struct.tar_pack_options* %57, i32 0, i32 1, !dbg !985
  %59 = load i8*, i8** %58, align 8, !dbg !985
  call void (%struct.command*, ...) @command_add_args(%struct.command* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i32 0, i32 0), i8* %59, i8* null), !dbg !986
  br label %60, !dbg !986

; <label>:60:                                     ; preds = %56, %45
  %61 = load %struct.tar_pack_options*, %struct.tar_pack_options** %8, align 8, !dbg !987
  %62 = getelementptr inbounds %struct.tar_pack_options, %struct.tar_pack_options* %61, i32 0, i32 2, !dbg !989
  %63 = load i8, i8* %62, align 8, !dbg !989
  %64 = trunc i8 %63 to i1, !dbg !989
  br i1 %64, label %65, label %66, !dbg !990

; <label>:65:                                     ; preds = %60
  call void (%struct.command*, ...) @command_add_args(%struct.command* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i32 0, i32 0), i8* null), !dbg !991
  br label %66, !dbg !991

; <label>:66:                                     ; preds = %65, %60
  call void (%struct.command*, ...) @command_add_args(%struct.command* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i32 0, i32 0), i8* null), !dbg !992
  call void @command_exec(%struct.command* %15) #11, !dbg !993
  unreachable, !dbg !993

; <label>:67:                                     ; preds = %5
  %68 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0, !dbg !994
  %69 = load i32, i32* %68, align 4, !dbg !994
  %70 = call i32 @close(i32 %69), !dbg !995
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1, !dbg !996
  %72 = load i32, i32* %71, align 4, !dbg !996
  %73 = call i32 @close(i32 %72), !dbg !997
  %74 = call i32 @subproc_fork(), !dbg !998
  store i32 %74, i32* %14, align 4, !dbg !999
  %75 = load i32, i32* %14, align 4, !dbg !1000
  %76 = icmp eq i32 %75, 0, !dbg !1002
  br i1 %76, label %77, label %86, !dbg !1003

; <label>:77:                                     ; preds = %67
  %78 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1, !dbg !1004
  %79 = load i32, i32* %78, align 4, !dbg !1004
  %80 = call i32 @close(i32 %79), !dbg !1006
  %81 = load %struct.compress_params*, %struct.compress_params** %9, align 8, !dbg !1007
  %82 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0, !dbg !1008
  %83 = load i32, i32* %82, align 4, !dbg !1008
  %84 = load i32, i32* %10, align 4, !dbg !1009
  %85 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.82, i32 0, i32 0)) #10, !dbg !1010
  call void (%struct.compress_params*, i32, i32, i8*, ...) @compress_filter(%struct.compress_params* %81, i32 %83, i32 %84, i8* %85), !dbg !1011
  call void @exit(i32 0) #13, !dbg !1012
  unreachable, !dbg !1012

; <label>:86:                                     ; preds = %67
  %87 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0, !dbg !1013
  %88 = load i32, i32* %87, align 4, !dbg !1013
  %89 = call i32 @close(i32 %88), !dbg !1014
  %90 = load void (i8*, i32)*, void (i8*, i32)** %7, align 8, !dbg !1015
  %91 = load i8*, i8** %6, align 8, !dbg !1016
  %92 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1, !dbg !1017
  %93 = load i32, i32* %92, align 4, !dbg !1017
  call void %90(i8* %91, i32 %93), !dbg !1015
  %94 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1, !dbg !1018
  %95 = load i32, i32* %94, align 4, !dbg !1018
  %96 = call i32 @close(i32 %95), !dbg !1019
  %97 = load i32, i32* %14, align 4, !dbg !1020
  %98 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.83, i32 0, i32 0)) #10, !dbg !1021
  %99 = call i32 @subproc_reap(i32 %97, i8* %98, i32 0), !dbg !1022
  %100 = load i32, i32* %13, align 4, !dbg !1024
  %101 = call i32 @subproc_reap(i32 %100, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i32 0, i32 0), i32 0), !dbg !1025
  ret void, !dbg !1026
}

; Function Attrs: nounwind uwtable
define internal void @control_treewalk_feed(i8*, i32) #0 !dbg !1027 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.treeroot*, align 8
  %6 = alloca %struct.treenode*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1028, metadata !166), !dbg !1029
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1030, metadata !166), !dbg !1031
  call void @llvm.dbg.declare(metadata %struct.treeroot** %5, metadata !1032, metadata !166), !dbg !1035
  call void @llvm.dbg.declare(metadata %struct.treenode** %6, metadata !1036, metadata !166), !dbg !1039
  %8 = load i8*, i8** %3, align 8, !dbg !1040
  %9 = call %struct.treeroot* @treewalk_open(i8* %8, i32 0, %struct.treewalk_funcs* null), !dbg !1041
  store %struct.treeroot* %9, %struct.treeroot** %5, align 8, !dbg !1042
  %10 = load %struct.treeroot*, %struct.treeroot** %5, align 8, !dbg !1043
  %11 = call %struct.treenode* @treewalk_node(%struct.treeroot* %10), !dbg !1045
  store %struct.treenode* %11, %struct.treenode** %6, align 8, !dbg !1046
  br label %12, !dbg !1047

; <label>:12:                                     ; preds = %31, %2
  %13 = load %struct.treenode*, %struct.treenode** %6, align 8, !dbg !1048
  %14 = icmp ne %struct.treenode* %13, null, !dbg !1051
  br i1 %14, label %15, label %34, !dbg !1051

; <label>:15:                                     ; preds = %12
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1052, metadata !166), !dbg !1054
  %16 = load %struct.treenode*, %struct.treenode** %6, align 8, !dbg !1055
  %17 = call i8* @treenode_get_virtname(%struct.treenode* %16), !dbg !1056
  %18 = call i8* (i8*, ...) @str_fmt(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.84, i32 0, i32 0), i8* %17), !dbg !1057
  store i8* %18, i8** %7, align 8, !dbg !1059
  %19 = load i32, i32* %4, align 4, !dbg !1060
  %20 = load i8*, i8** %7, align 8, !dbg !1062
  %21 = load i8*, i8** %7, align 8, !dbg !1063
  %22 = call i64 @strlen(i8* %21) #12, !dbg !1064
  %23 = add i64 %22, 1, !dbg !1065
  %24 = call i64 @fd_write(i32 %19, i8* %20, i64 %23), !dbg !1066
  %25 = icmp slt i64 %24, 0, !dbg !1068
  br i1 %25, label %26, label %29, !dbg !1069

; <label>:26:                                     ; preds = %15
  %27 = call i8* @gettext(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.85, i32 0, i32 0)) #10, !dbg !1070
  %28 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0)) #10, !dbg !1071
  call void (i8*, ...) @ohshite(i8* %27, i8* %28) #11, !dbg !1072
  unreachable, !dbg !1073

; <label>:29:                                     ; preds = %15
  %30 = load i8*, i8** %7, align 8, !dbg !1074
  call void @free(i8* %30) #10, !dbg !1075
  br label %31, !dbg !1076

; <label>:31:                                     ; preds = %29
  %32 = load %struct.treeroot*, %struct.treeroot** %5, align 8, !dbg !1077
  %33 = call %struct.treenode* @treewalk_next(%struct.treeroot* %32), !dbg !1079
  store %struct.treenode* %33, %struct.treenode** %6, align 8, !dbg !1080
  br label %12, !dbg !1081, !llvm.loop !1082

; <label>:34:                                     ; preds = %12
  %35 = load %struct.treeroot*, %struct.treeroot** %5, align 8, !dbg !1084
  call void @treewalk_close(%struct.treeroot* %35), !dbg !1085
  ret void, !dbg !1086
}

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) #3

; Function Attrs: nounwind
declare i32 @fstat(i32, %struct.stat*) #3

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

declare i64 @fd_write(i32, i8*, i64) #4

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #6

declare i64 @buffer_copy_IntInt(i32, i32, i8*, i32, i32, i32, i64, %struct.dpkg_error*) #4

declare i8* @compressor_get_extension(i32) #4

declare void @dpkg_ar_put_magic(%struct.dpkg_ar*) #4

declare void @dpkg_ar_member_put_mem(%struct.dpkg_ar*, i8*, i8*, i64) #4

declare void @dpkg_ar_member_put_file(%struct.dpkg_ar*, i8*, i32, i64) #4

declare i32 @close(i32) #4

; Function Attrs: nounwind uwtable
define internal void @file_treewalk_feed(i8*, i32) #0 !dbg !1087 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.treeroot*, align 8
  %6 = alloca %struct.treenode*, align 8
  %7 = alloca %struct.file_info*, align 8
  %8 = alloca %struct.file_info*, align 8
  %9 = alloca %struct.file_info*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1088, metadata !166), !dbg !1089
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1090, metadata !166), !dbg !1091
  call void @llvm.dbg.declare(metadata %struct.treeroot** %5, metadata !1092, metadata !166), !dbg !1093
  call void @llvm.dbg.declare(metadata %struct.treenode** %6, metadata !1094, metadata !166), !dbg !1095
  call void @llvm.dbg.declare(metadata %struct.file_info** %7, metadata !1096, metadata !166), !dbg !1102
  call void @llvm.dbg.declare(metadata %struct.file_info** %8, metadata !1103, metadata !166), !dbg !1104
  store %struct.file_info* null, %struct.file_info** %8, align 8, !dbg !1104
  call void @llvm.dbg.declare(metadata %struct.file_info** %9, metadata !1105, metadata !166), !dbg !1106
  store %struct.file_info* null, %struct.file_info** %9, align 8, !dbg !1106
  %12 = load i8*, i8** %3, align 8, !dbg !1107
  %13 = call %struct.treeroot* @treewalk_open(i8* %12, i32 0, %struct.treewalk_funcs* null), !dbg !1108
  store %struct.treeroot* %13, %struct.treeroot** %5, align 8, !dbg !1109
  %14 = load %struct.treeroot*, %struct.treeroot** %5, align 8, !dbg !1110
  %15 = call %struct.treenode* @treewalk_node(%struct.treeroot* %14), !dbg !1112
  store %struct.treenode* %15, %struct.treenode** %6, align 8, !dbg !1113
  br label %16, !dbg !1114

; <label>:16:                                     ; preds = %58, %2
  %17 = load %struct.treenode*, %struct.treenode** %6, align 8, !dbg !1115
  %18 = icmp ne %struct.treenode* %17, null, !dbg !1118
  br i1 %18, label %19, label %61, !dbg !1118

; <label>:19:                                     ; preds = %16
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1119, metadata !166), !dbg !1121
  %20 = load %struct.treenode*, %struct.treenode** %6, align 8, !dbg !1122
  %21 = call i8* @treenode_get_virtname(%struct.treenode* %20), !dbg !1123
  store i8* %21, i8** %10, align 8, !dbg !1121
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1124, metadata !166), !dbg !1125
  %22 = load i8*, i8** %10, align 8, !dbg !1126
  %23 = call i32 @strncmp(i8* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i64 6) #12, !dbg !1128
  %24 = icmp eq i32 %23, 0, !dbg !1129
  br i1 %24, label %25, label %26, !dbg !1130

; <label>:25:                                     ; preds = %19
  br label %58, !dbg !1131

; <label>:26:                                     ; preds = %19
  %27 = load i8*, i8** %10, align 8, !dbg !1132
  %28 = call i8* (i8*, ...) @str_fmt(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.84, i32 0, i32 0), i8* %27), !dbg !1133
  store i8* %28, i8** %11, align 8, !dbg !1134
  %29 = load i8*, i8** %11, align 8, !dbg !1135
  %30 = call i8* @strchr(i8* %29, i32 10) #12, !dbg !1137
  %31 = icmp ne i8* %30, null, !dbg !1137
  br i1 %31, label %32, label %35, !dbg !1138

; <label>:32:                                     ; preds = %26
  %33 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.86, i32 0, i32 0)) #10, !dbg !1139
  %34 = load i8*, i8** %11, align 8, !dbg !1140
  call void (i8*, ...) @ohshit(i8* %33, i8* %34) #11, !dbg !1141
  unreachable, !dbg !1143

; <label>:35:                                     ; preds = %26
  %36 = load %struct.treenode*, %struct.treenode** %6, align 8, !dbg !1144
  %37 = call i32 @treenode_get_mode(%struct.treenode* %36), !dbg !1146
  %38 = and i32 %37, 61440, !dbg !1147
  %39 = icmp eq i32 %38, 40960, !dbg !1148
  br i1 %39, label %40, label %44, !dbg !1149

; <label>:40:                                     ; preds = %35
  %41 = load i8*, i8** %11, align 8, !dbg !1150
  %42 = call %struct.file_info* @file_info_new(i8* %41), !dbg !1152
  store %struct.file_info* %42, %struct.file_info** %7, align 8, !dbg !1153
  %43 = load %struct.file_info*, %struct.file_info** %7, align 8, !dbg !1154
  call void @file_info_list_append(%struct.file_info** %8, %struct.file_info** %9, %struct.file_info* %43), !dbg !1155
  br label %56, !dbg !1156

; <label>:44:                                     ; preds = %35
  %45 = load i32, i32* %4, align 4, !dbg !1157
  %46 = load i8*, i8** %11, align 8, !dbg !1160
  %47 = load i8*, i8** %11, align 8, !dbg !1161
  %48 = call i64 @strlen(i8* %47) #12, !dbg !1162
  %49 = add i64 %48, 1, !dbg !1163
  %50 = call i64 @fd_write(i32 %45, i8* %46, i64 %49), !dbg !1164
  %51 = icmp slt i64 %50, 0, !dbg !1166
  br i1 %51, label %52, label %55, !dbg !1167

; <label>:52:                                     ; preds = %44
  %53 = call i8* @gettext(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.85, i32 0, i32 0)) #10, !dbg !1168
  %54 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0)) #10, !dbg !1169
  call void (i8*, ...) @ohshite(i8* %53, i8* %54) #11, !dbg !1170
  unreachable, !dbg !1171

; <label>:55:                                     ; preds = %44
  br label %56

; <label>:56:                                     ; preds = %55, %40
  %57 = load i8*, i8** %11, align 8, !dbg !1172
  call void @free(i8* %57) #10, !dbg !1173
  br label %58, !dbg !1174

; <label>:58:                                     ; preds = %56, %25
  %59 = load %struct.treeroot*, %struct.treeroot** %5, align 8, !dbg !1175
  %60 = call %struct.treenode* @treewalk_next(%struct.treeroot* %59), !dbg !1177
  store %struct.treenode* %60, %struct.treenode** %6, align 8, !dbg !1178
  br label %16, !dbg !1179, !llvm.loop !1180

; <label>:61:                                     ; preds = %16
  %62 = load %struct.treeroot*, %struct.treeroot** %5, align 8, !dbg !1182
  call void @treewalk_close(%struct.treeroot* %62), !dbg !1183
  %63 = load %struct.file_info*, %struct.file_info** %8, align 8, !dbg !1184
  store %struct.file_info* %63, %struct.file_info** %7, align 8, !dbg !1186
  br label %64, !dbg !1187

; <label>:64:                                     ; preds = %83, %61
  %65 = load %struct.file_info*, %struct.file_info** %7, align 8, !dbg !1188
  %66 = icmp ne %struct.file_info* %65, null, !dbg !1191
  br i1 %66, label %67, label %87, !dbg !1191

; <label>:67:                                     ; preds = %64
  %68 = load i32, i32* %4, align 4, !dbg !1192
  %69 = load %struct.file_info*, %struct.file_info** %7, align 8, !dbg !1194
  %70 = getelementptr inbounds %struct.file_info, %struct.file_info* %69, i32 0, i32 1, !dbg !1195
  %71 = load i8*, i8** %70, align 8, !dbg !1195
  %72 = load %struct.file_info*, %struct.file_info** %7, align 8, !dbg !1196
  %73 = getelementptr inbounds %struct.file_info, %struct.file_info* %72, i32 0, i32 1, !dbg !1197
  %74 = load i8*, i8** %73, align 8, !dbg !1197
  %75 = call i64 @strlen(i8* %74) #12, !dbg !1198
  %76 = add i64 %75, 1, !dbg !1199
  %77 = call i64 @fd_write(i32 %68, i8* %71, i64 %76), !dbg !1200
  %78 = icmp slt i64 %77, 0, !dbg !1202
  br i1 %78, label %79, label %82, !dbg !1203

; <label>:79:                                     ; preds = %67
  %80 = call i8* @gettext(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.85, i32 0, i32 0)) #10, !dbg !1204
  %81 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0)) #10, !dbg !1205
  call void (i8*, ...) @ohshite(i8* %80, i8* %81) #11, !dbg !1207
  unreachable, !dbg !1208

; <label>:82:                                     ; preds = %67
  br label %83, !dbg !1209

; <label>:83:                                     ; preds = %82
  %84 = load %struct.file_info*, %struct.file_info** %7, align 8, !dbg !1210
  %85 = getelementptr inbounds %struct.file_info, %struct.file_info* %84, i32 0, i32 0, !dbg !1212
  %86 = load %struct.file_info*, %struct.file_info** %85, align 8, !dbg !1212
  store %struct.file_info* %86, %struct.file_info** %7, align 8, !dbg !1213
  br label %64, !dbg !1214, !llvm.loop !1215

; <label>:87:                                     ; preds = %64
  %88 = load %struct.file_info*, %struct.file_info** %8, align 8, !dbg !1217
  call void @file_info_list_free(%struct.file_info* %88), !dbg !1218
  ret void, !dbg !1219
}

declare i32 @fsync(i32) #4

declare void @dpkg_ar_close(%struct.dpkg_ar*) #4

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #7

declare i8* @m_strdup(i8*) #4

declare i8* @m_malloc(i64) #4

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

declare i64 @path_trim_slash_slashdot(i8*) #4

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal %struct.pkginfo* @check_control_file(i8*) #0 !dbg !1220 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pkginfo*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1223, metadata !166), !dbg !1224
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %3, metadata !1225, metadata !166), !dbg !1226
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1227, metadata !166), !dbg !1228
  %5 = load i8*, i8** %2, align 8, !dbg !1229
  %6 = call i8* (i8*, ...) @str_fmt(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0)), !dbg !1230
  store i8* %6, i8** %4, align 8, !dbg !1231
  %7 = load i8*, i8** %4, align 8, !dbg !1232
  %8 = call i32 @parsedb(i8* %7, i32 7, %struct.pkginfo** %3), !dbg !1233
  %9 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !1234
  %10 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %9, i32 0, i32 0, !dbg !1236
  %11 = load %struct.pkgset*, %struct.pkgset** %10, align 8, !dbg !1236
  %12 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %11, i32 0, i32 1, !dbg !1237
  %13 = load i8*, i8** %12, align 8, !dbg !1237
  %14 = call i64 @strspn(i8* %13, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i32 0, i32 0)) #12, !dbg !1238
  %15 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !1239
  %16 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %15, i32 0, i32 0, !dbg !1240
  %17 = load %struct.pkgset*, %struct.pkgset** %16, align 8, !dbg !1240
  %18 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %17, i32 0, i32 1, !dbg !1241
  %19 = load i8*, i8** %18, align 8, !dbg !1241
  %20 = call i64 @strlen(i8* %19) #12, !dbg !1242
  %21 = icmp ne i64 %14, %20, !dbg !1243
  br i1 %21, label %22, label %24, !dbg !1244

; <label>:22:                                     ; preds = %1
  %23 = call i8* @gettext(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.37, i32 0, i32 0)) #10, !dbg !1245
  call void (i8*, ...) @ohshit(i8* %23) #11, !dbg !1246
  unreachable, !dbg !1248

; <label>:24:                                     ; preds = %1
  %25 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !1249
  %26 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %25, i32 0, i32 10, !dbg !1251
  %27 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %26, i32 0, i32 3, !dbg !1252
  %28 = load %struct.dpkg_arch*, %struct.dpkg_arch** %27, align 8, !dbg !1252
  %29 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %28, i32 0, i32 2, !dbg !1253
  %30 = load i32, i32* %29, align 8, !dbg !1253
  %31 = icmp eq i32 %30, 0, !dbg !1254
  br i1 %31, label %40, label %32, !dbg !1255

; <label>:32:                                     ; preds = %24
  %33 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !1256
  %34 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %33, i32 0, i32 10, !dbg !1257
  %35 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %34, i32 0, i32 3, !dbg !1258
  %36 = load %struct.dpkg_arch*, %struct.dpkg_arch** %35, align 8, !dbg !1258
  %37 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %36, i32 0, i32 2, !dbg !1259
  %38 = load i32, i32* %37, align 8, !dbg !1259
  %39 = icmp eq i32 %38, 1, !dbg !1260
  br i1 %39, label %40, label %42, !dbg !1261

; <label>:40:                                     ; preds = %32, %24
  %41 = call i8* @gettext(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.38, i32 0, i32 0)) #10, !dbg !1263
  call void (i8*, ...) @ohshit(i8* %41) #11, !dbg !1264
  unreachable, !dbg !1266

; <label>:42:                                     ; preds = %32
  %43 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !1267
  %44 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %43, i32 0, i32 5, !dbg !1269
  %45 = load i32, i32* %44, align 4, !dbg !1269
  %46 = icmp eq i32 %45, 5, !dbg !1270
  br i1 %46, label %47, label %53, !dbg !1271

; <label>:47:                                     ; preds = %42
  %48 = call i8* @gettext(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.39, i32 0, i32 0)) #10, !dbg !1272
  %49 = load i8*, i8** %4, align 8, !dbg !1273
  %50 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !1274
  %51 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %50, i32 0, i32 6, !dbg !1275
  %52 = load i8*, i8** %51, align 8, !dbg !1275
  call void (i8*, ...) @warning(i8* %48, i8* %49, i8* %52), !dbg !1276
  br label %53, !dbg !1278

; <label>:53:                                     ; preds = %47, %42
  %54 = load i8*, i8** %4, align 8, !dbg !1279
  call void @free(i8* %54) #10, !dbg !1280
  %55 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !1281
  ret %struct.pkginfo* %55, !dbg !1282
}

; Function Attrs: nounwind uwtable
define internal void @check_file_perms(i8*) #0 !dbg !1283 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.varbuf, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.stat, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1286, metadata !166), !dbg !1287
  call void @llvm.dbg.declare(metadata %struct.varbuf* %3, metadata !1288, metadata !166), !dbg !1297
  %6 = bitcast %struct.varbuf* %3 to i8*, !dbg !1297
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 24, i32 8, i1 false), !dbg !1297
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !1298, metadata !166), !dbg !1299
  call void @llvm.dbg.declare(metadata %struct.stat* %5, metadata !1300, metadata !166), !dbg !1301
  %7 = load i8*, i8** %2, align 8, !dbg !1302
  %8 = call i32 (%struct.varbuf*, i8*, ...) @varbuf_printf(%struct.varbuf* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i32 0, i32 0), i8* %7), !dbg !1303
  %9 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %3, i32 0, i32 2, !dbg !1304
  %10 = load i8*, i8** %9, align 8, !dbg !1304
  %11 = call i32 @lstat(i8* %10, %struct.stat* %5) #10, !dbg !1306
  %12 = icmp ne i32 %11, 0, !dbg !1306
  br i1 %12, label %13, label %15, !dbg !1307

; <label>:13:                                     ; preds = %1
  %14 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.41, i32 0, i32 0)) #10, !dbg !1308
  call void (i8*, ...) @ohshite(i8* %14) #11, !dbg !1309
  unreachable, !dbg !1311

; <label>:15:                                     ; preds = %1
  %16 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 3, !dbg !1312
  %17 = load i32, i32* %16, align 8, !dbg !1312
  %18 = and i32 %17, 61440, !dbg !1314
  %19 = icmp eq i32 %18, 16384, !dbg !1315
  br i1 %19, label %22, label %20, !dbg !1316

; <label>:20:                                     ; preds = %15
  %21 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.42, i32 0, i32 0)) #10, !dbg !1317
  call void (i8*, ...) @ohshit(i8* %21) #11, !dbg !1318
  unreachable, !dbg !1320

; <label>:22:                                     ; preds = %15
  %23 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 3, !dbg !1321
  %24 = load i32, i32* %23, align 8, !dbg !1321
  %25 = and i32 %24, 4079, !dbg !1323
  %26 = icmp ne i32 %25, 493, !dbg !1324
  br i1 %26, label %27, label %33, !dbg !1325

; <label>:27:                                     ; preds = %22
  %28 = call i8* @gettext(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.43, i32 0, i32 0)) #10, !dbg !1326
  %29 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 3, !dbg !1327
  %30 = load i32, i32* %29, align 8, !dbg !1327
  %31 = and i32 %30, 4095, !dbg !1328
  %32 = zext i32 %31 to i64, !dbg !1329
  call void (i8*, ...) @ohshit(i8* %28, i64 %32) #11, !dbg !1330
  unreachable, !dbg !1332

; <label>:33:                                     ; preds = %22
  store i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @maintainerscripts, i32 0, i32 0), i8*** %4, align 8, !dbg !1333
  br label %34, !dbg !1335

; <label>:34:                                     ; preds = %86, %33
  %35 = load i8**, i8*** %4, align 8, !dbg !1336
  %36 = load i8*, i8** %35, align 8, !dbg !1339
  %37 = icmp ne i8* %36, null, !dbg !1340
  br i1 %37, label %38, label %89, !dbg !1340

; <label>:38:                                     ; preds = %34
  call void @varbuf_reset(%struct.varbuf* %3), !dbg !1341
  %39 = load i8*, i8** %2, align 8, !dbg !1343
  %40 = load i8**, i8*** %4, align 8, !dbg !1344
  %41 = load i8*, i8** %40, align 8, !dbg !1345
  %42 = call i32 (%struct.varbuf*, i8*, ...) @varbuf_printf(%struct.varbuf* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* %39, i8* %41), !dbg !1346
  %43 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %3, i32 0, i32 2, !dbg !1347
  %44 = load i8*, i8** %43, align 8, !dbg !1347
  %45 = call i32 @lstat(i8* %44, %struct.stat* %5) #10, !dbg !1349
  %46 = icmp ne i32 %45, 0, !dbg !1349
  br i1 %46, label %76, label %47, !dbg !1350

; <label>:47:                                     ; preds = %38
  %48 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 3, !dbg !1351
  %49 = load i32, i32* %48, align 8, !dbg !1351
  %50 = and i32 %49, 61440, !dbg !1354
  %51 = icmp eq i32 %50, 40960, !dbg !1355
  br i1 %51, label %52, label %53, !dbg !1356

; <label>:52:                                     ; preds = %47
  br label %86, !dbg !1357

; <label>:53:                                     ; preds = %47
  %54 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 3, !dbg !1358
  %55 = load i32, i32* %54, align 8, !dbg !1358
  %56 = and i32 %55, 61440, !dbg !1360
  %57 = icmp eq i32 %56, 32768, !dbg !1361
  br i1 %57, label %62, label %58, !dbg !1362

; <label>:58:                                     ; preds = %53
  %59 = call i8* @gettext(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.44, i32 0, i32 0)) #10, !dbg !1363
  %60 = load i8**, i8*** %4, align 8, !dbg !1364
  %61 = load i8*, i8** %60, align 8, !dbg !1365
  call void (i8*, ...) @ohshit(i8* %59, i8* %61) #11, !dbg !1366
  unreachable, !dbg !1368

; <label>:62:                                     ; preds = %53
  %63 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 3, !dbg !1369
  %64 = load i32, i32* %63, align 8, !dbg !1369
  %65 = and i32 %64, 3951, !dbg !1371
  %66 = icmp ne i32 %65, 365, !dbg !1372
  br i1 %66, label %67, label %75, !dbg !1373

; <label>:67:                                     ; preds = %62
  %68 = call i8* @gettext(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.45, i32 0, i32 0)) #10, !dbg !1374
  %69 = load i8**, i8*** %4, align 8, !dbg !1375
  %70 = load i8*, i8** %69, align 8, !dbg !1376
  %71 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 3, !dbg !1377
  %72 = load i32, i32* %71, align 8, !dbg !1377
  %73 = and i32 %72, 4095, !dbg !1378
  %74 = zext i32 %73 to i64, !dbg !1379
  call void (i8*, ...) @ohshit(i8* %68, i8* %70, i64 %74) #11, !dbg !1380
  unreachable, !dbg !1382

; <label>:75:                                     ; preds = %62
  br label %85, !dbg !1383

; <label>:76:                                     ; preds = %38
  %77 = call i32* @__errno_location() #1, !dbg !1384
  %78 = load i32, i32* %77, align 4, !dbg !1387
  %79 = icmp ne i32 %78, 2, !dbg !1388
  br i1 %79, label %80, label %84, !dbg !1389

; <label>:80:                                     ; preds = %76
  %81 = call i8* @gettext(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.46, i32 0, i32 0)) #10, !dbg !1390
  %82 = load i8**, i8*** %4, align 8, !dbg !1392
  %83 = load i8*, i8** %82, align 8, !dbg !1393
  call void (i8*, ...) @ohshite(i8* %81, i8* %83) #11, !dbg !1394
  unreachable, !dbg !1396

; <label>:84:                                     ; preds = %76
  br label %85

; <label>:85:                                     ; preds = %84, %75
  br label %86, !dbg !1397

; <label>:86:                                     ; preds = %85, %52
  %87 = load i8**, i8*** %4, align 8, !dbg !1398
  %88 = getelementptr inbounds i8*, i8** %87, i32 1, !dbg !1398
  store i8** %88, i8*** %4, align 8, !dbg !1398
  br label %34, !dbg !1400, !llvm.loop !1401

; <label>:89:                                     ; preds = %34
  call void @varbuf_destroy(%struct.varbuf* %3), !dbg !1403
  ret void, !dbg !1404
}

; Function Attrs: nounwind uwtable
define internal void @check_conffiles(i8*, i8*) #0 !dbg !1405 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca %struct.varbuf, align 8
  %7 = alloca [1001 x i8], align 16
  %8 = alloca %struct.file_info*, align 8
  %9 = alloca %struct.file_info*, align 8
  %10 = alloca %struct.stat, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.file_info*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1408, metadata !166), !dbg !1409
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1410, metadata !166), !dbg !1411
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !1412, metadata !166), !dbg !1466
  call void @llvm.dbg.declare(metadata %struct.varbuf* %6, metadata !1467, metadata !166), !dbg !1468
  %13 = bitcast %struct.varbuf* %6 to i8*, !dbg !1468
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 24, i32 8, i1 false), !dbg !1468
  call void @llvm.dbg.declare(metadata [1001 x i8]* %7, metadata !1469, metadata !166), !dbg !1473
  call void @llvm.dbg.declare(metadata %struct.file_info** %8, metadata !1474, metadata !166), !dbg !1475
  store %struct.file_info* null, %struct.file_info** %8, align 8, !dbg !1475
  call void @llvm.dbg.declare(metadata %struct.file_info** %9, metadata !1476, metadata !166), !dbg !1477
  store %struct.file_info* null, %struct.file_info** %9, align 8, !dbg !1477
  %14 = load i8*, i8** %3, align 8, !dbg !1478
  %15 = call i32 (%struct.varbuf*, i8*, ...) @varbuf_printf(%struct.varbuf* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i32 0, i32 0)), !dbg !1479
  %16 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %6, i32 0, i32 2, !dbg !1480
  %17 = load i8*, i8** %16, align 8, !dbg !1480
  %18 = call %struct._IO_FILE* @fopen(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i32 0, i32 0)), !dbg !1481
  store %struct._IO_FILE* %18, %struct._IO_FILE** %5, align 8, !dbg !1482
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !1483
  %20 = icmp eq %struct._IO_FILE* %19, null, !dbg !1485
  br i1 %20, label %21, label %28, !dbg !1486

; <label>:21:                                     ; preds = %2
  %22 = call i32* @__errno_location() #1, !dbg !1487
  %23 = load i32, i32* %22, align 4, !dbg !1490
  %24 = icmp eq i32 %23, 2, !dbg !1491
  br i1 %24, label %25, label %26, !dbg !1492

; <label>:25:                                     ; preds = %21
  br label %121, !dbg !1493

; <label>:26:                                     ; preds = %21
  %27 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.54, i32 0, i32 0)) #10, !dbg !1494
  call void (i8*, ...) @ohshite(i8* %27) #11, !dbg !1495
  unreachable, !dbg !1497

; <label>:28:                                     ; preds = %2
  br label %29, !dbg !1498

; <label>:29:                                     ; preds = %110, %28
  %30 = getelementptr inbounds [1001 x i8], [1001 x i8]* %7, i32 0, i32 0, !dbg !1499
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !1501
  %32 = call i8* @fgets(i8* %30, i32 1001, %struct._IO_FILE* %31), !dbg !1502
  %33 = icmp ne i8* %32, null, !dbg !1503
  br i1 %33, label %34, label %111, !dbg !1503

; <label>:34:                                     ; preds = %29
  call void @llvm.dbg.declare(metadata %struct.stat* %10, metadata !1504, metadata !166), !dbg !1506
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1507, metadata !166), !dbg !1508
  %35 = getelementptr inbounds [1001 x i8], [1001 x i8]* %7, i32 0, i32 0, !dbg !1509
  %36 = call i64 @strlen(i8* %35) #12, !dbg !1510
  %37 = trunc i64 %36 to i32, !dbg !1510
  store i32 %37, i32* %11, align 4, !dbg !1511
  %38 = load i32, i32* %11, align 4, !dbg !1512
  %39 = icmp ne i32 %38, 0, !dbg !1512
  br i1 %39, label %42, label %40, !dbg !1514

; <label>:40:                                     ; preds = %34
  %41 = call i8* @gettext(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.55, i32 0, i32 0)) #10, !dbg !1515
  call void (i8*, ...) @ohshite(i8* %41) #11, !dbg !1516
  unreachable, !dbg !1518

; <label>:42:                                     ; preds = %34
  %43 = load i32, i32* %11, align 4, !dbg !1519
  %44 = sub nsw i32 %43, 1, !dbg !1521
  %45 = sext i32 %44 to i64, !dbg !1522
  %46 = getelementptr inbounds [1001 x i8], [1001 x i8]* %7, i64 0, i64 %45, !dbg !1522
  %47 = load i8, i8* %46, align 1, !dbg !1522
  %48 = sext i8 %47 to i32, !dbg !1522
  %49 = icmp ne i32 %48, 10, !dbg !1523
  br i1 %49, label %50, label %53, !dbg !1524

; <label>:50:                                     ; preds = %42
  %51 = call i8* @gettext(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.56, i32 0, i32 0)) #10, !dbg !1525
  %52 = getelementptr inbounds [1001 x i8], [1001 x i8]* %7, i32 0, i32 0, !dbg !1526
  call void (i8*, ...) @ohshit(i8* %51, i8* %52) #11, !dbg !1527
  unreachable, !dbg !1529

; <label>:53:                                     ; preds = %42
  %54 = load i32, i32* %11, align 4, !dbg !1530
  %55 = sub nsw i32 %54, 1, !dbg !1531
  %56 = sext i32 %55 to i64, !dbg !1532
  %57 = getelementptr inbounds [1001 x i8], [1001 x i8]* %7, i64 0, i64 %56, !dbg !1532
  store i8 0, i8* %57, align 1, !dbg !1533
  call void @varbuf_reset(%struct.varbuf* %6), !dbg !1534
  %58 = load i8*, i8** %4, align 8, !dbg !1535
  %59 = getelementptr inbounds [1001 x i8], [1001 x i8]* %7, i32 0, i32 0, !dbg !1536
  %60 = call i32 (%struct.varbuf*, i8*, ...) @varbuf_printf(%struct.varbuf* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* %58, i8* %59), !dbg !1537
  %61 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %6, i32 0, i32 2, !dbg !1538
  %62 = load i8*, i8** %61, align 8, !dbg !1538
  %63 = call i32 @lstat(i8* %62, %struct.stat* %10) #10, !dbg !1540
  %64 = icmp ne i32 %63, 0, !dbg !1540
  br i1 %64, label %65, label %89, !dbg !1541

; <label>:65:                                     ; preds = %53
  %66 = call i32* @__errno_location() #1, !dbg !1542
  %67 = load i32, i32* %66, align 4, !dbg !1545
  %68 = icmp eq i32 %67, 2, !dbg !1546
  br i1 %68, label %69, label %86, !dbg !1547

; <label>:69:                                     ; preds = %65
  %70 = load i32, i32* %11, align 4, !dbg !1548
  %71 = icmp sgt i32 %70, 1, !dbg !1551
  br i1 %71, label %72, label %83, !dbg !1552

; <label>:72:                                     ; preds = %69
  %73 = load i32, i32* %11, align 4, !dbg !1553
  %74 = sub nsw i32 %73, 2, !dbg !1555
  %75 = sext i32 %74 to i64, !dbg !1556
  %76 = getelementptr inbounds [1001 x i8], [1001 x i8]* %7, i64 0, i64 %75, !dbg !1556
  %77 = load i8, i8* %76, align 1, !dbg !1556
  %78 = sext i8 %77 to i32, !dbg !1556
  %79 = call zeroext i1 @c_isspace(i32 %78), !dbg !1557
  br i1 %79, label %80, label %83, !dbg !1558

; <label>:80:                                     ; preds = %72
  %81 = call i8* @gettext(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.57, i32 0, i32 0)) #10, !dbg !1559
  %82 = getelementptr inbounds [1001 x i8], [1001 x i8]* %7, i32 0, i32 0, !dbg !1560
  call void (i8*, ...) @warning(i8* %81, i8* %82), !dbg !1561
  br label %83, !dbg !1562

; <label>:83:                                     ; preds = %80, %72, %69
  %84 = call i8* @gettext(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.58, i32 0, i32 0)) #10, !dbg !1563
  %85 = getelementptr inbounds [1001 x i8], [1001 x i8]* %7, i32 0, i32 0, !dbg !1564
  call void (i8*, ...) @ohshit(i8* %84, i8* %85) #11, !dbg !1565
  unreachable, !dbg !1567

; <label>:86:                                     ; preds = %65
  %87 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.59, i32 0, i32 0)) #10, !dbg !1568
  %88 = getelementptr inbounds [1001 x i8], [1001 x i8]* %7, i32 0, i32 0, !dbg !1569
  call void (i8*, ...) @ohshite(i8* %87, i8* %88) #11, !dbg !1570
  unreachable, !dbg !1572

; <label>:89:                                     ; preds = %53
  %90 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 3, !dbg !1573
  %91 = load i32, i32* %90, align 8, !dbg !1573
  %92 = and i32 %91, 61440, !dbg !1575
  %93 = icmp eq i32 %92, 32768, !dbg !1576
  br i1 %93, label %97, label %94, !dbg !1577

; <label>:94:                                     ; preds = %89
  %95 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.60, i32 0, i32 0)) #10, !dbg !1578
  %96 = getelementptr inbounds [1001 x i8], [1001 x i8]* %7, i32 0, i32 0, !dbg !1580
  call void (i8*, ...) @warning(i8* %95, i8* %96), !dbg !1581
  br label %97, !dbg !1583

; <label>:97:                                     ; preds = %94, %89
  br label %98

; <label>:98:                                     ; preds = %97
  %99 = load %struct.file_info*, %struct.file_info** %8, align 8, !dbg !1584
  %100 = getelementptr inbounds [1001 x i8], [1001 x i8]* %7, i32 0, i32 0, !dbg !1586
  %101 = call %struct.file_info* @file_info_find_name(%struct.file_info* %99, i8* %100), !dbg !1587
  %102 = icmp ne %struct.file_info* %101, null, !dbg !1587
  br i1 %102, label %103, label %106, !dbg !1588

; <label>:103:                                    ; preds = %98
  %104 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.61, i32 0, i32 0)) #10, !dbg !1589
  %105 = getelementptr inbounds [1001 x i8], [1001 x i8]* %7, i32 0, i32 0, !dbg !1591
  call void (i8*, ...) @warning(i8* %104, i8* %105), !dbg !1592
  br label %110, !dbg !1594

; <label>:106:                                    ; preds = %98
  call void @llvm.dbg.declare(metadata %struct.file_info** %12, metadata !1595, metadata !166), !dbg !1597
  %107 = getelementptr inbounds [1001 x i8], [1001 x i8]* %7, i32 0, i32 0, !dbg !1598
  %108 = call %struct.file_info* @file_info_new(i8* %107), !dbg !1599
  store %struct.file_info* %108, %struct.file_info** %12, align 8, !dbg !1600
  %109 = load %struct.file_info*, %struct.file_info** %12, align 8, !dbg !1601
  call void @file_info_list_append(%struct.file_info** %8, %struct.file_info** %9, %struct.file_info* %109), !dbg !1602
  br label %110

; <label>:110:                                    ; preds = %106, %103
  br label %29, !dbg !1603, !llvm.loop !1605

; <label>:111:                                    ; preds = %29
  %112 = load %struct.file_info*, %struct.file_info** %8, align 8, !dbg !1606
  call void @file_info_list_free(%struct.file_info* %112), !dbg !1607
  call void @varbuf_destroy(%struct.varbuf* %6), !dbg !1608
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !1609
  %114 = call i32 @ferror(%struct._IO_FILE* %113) #10, !dbg !1611
  %115 = icmp ne i32 %114, 0, !dbg !1611
  br i1 %115, label %116, label %118, !dbg !1612

; <label>:116:                                    ; preds = %111
  %117 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.62, i32 0, i32 0)) #10, !dbg !1613
  call void (i8*, ...) @ohshite(i8* %117) #11, !dbg !1614
  unreachable, !dbg !1616

; <label>:118:                                    ; preds = %111
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !1617
  %120 = call i32 @fclose(%struct._IO_FILE* %119), !dbg !1618
  br label %121, !dbg !1619

; <label>:121:                                    ; preds = %118, %25
  ret void, !dbg !1620
}

declare i32 @warning_get_count() #4

; Function Attrs: nounwind
declare i8* @ngettext(i8*, i8*, i64) #3

declare i32 @parsedb(i8*, i32, %struct.pkginfo**) #4

; Function Attrs: nounwind readonly
declare i64 @strspn(i8*, i8*) #6

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #5

declare i32 @varbuf_printf(%struct.varbuf*, i8*, ...) #4

; Function Attrs: nounwind
declare i32 @lstat(i8*, %struct.stat*) #3

declare void @varbuf_reset(%struct.varbuf*) #4

declare void @varbuf_destroy(%struct.varbuf*) #4

declare %struct._IO_FILE* @fopen(i8*, i8*) #4

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @c_isspace(i32) #8 !dbg !1621 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1624, metadata !166), !dbg !1625
  %3 = load i32, i32* %2, align 4, !dbg !1626
  %4 = call zeroext i1 @c_isbits(i32 %3, i32 4), !dbg !1627
  ret i1 %4, !dbg !1628
}

; Function Attrs: nounwind uwtable
define internal %struct.file_info* @file_info_find_name(%struct.file_info*, i8*) #0 !dbg !1629 {
  %3 = alloca %struct.file_info*, align 8
  %4 = alloca %struct.file_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.file_info*, align 8
  store %struct.file_info* %0, %struct.file_info** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.file_info** %4, metadata !1632, metadata !166), !dbg !1633
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1634, metadata !166), !dbg !1635
  call void @llvm.dbg.declare(metadata %struct.file_info** %6, metadata !1636, metadata !166), !dbg !1637
  %7 = load %struct.file_info*, %struct.file_info** %4, align 8, !dbg !1638
  store %struct.file_info* %7, %struct.file_info** %6, align 8, !dbg !1640
  br label %8, !dbg !1641

; <label>:8:                                      ; preds = %21, %2
  %9 = load %struct.file_info*, %struct.file_info** %6, align 8, !dbg !1642
  %10 = icmp ne %struct.file_info* %9, null, !dbg !1645
  br i1 %10, label %11, label %25, !dbg !1645

; <label>:11:                                     ; preds = %8
  %12 = load %struct.file_info*, %struct.file_info** %6, align 8, !dbg !1646
  %13 = getelementptr inbounds %struct.file_info, %struct.file_info* %12, i32 0, i32 1, !dbg !1648
  %14 = load i8*, i8** %13, align 8, !dbg !1648
  %15 = load i8*, i8** %5, align 8, !dbg !1649
  %16 = call i32 @strcmp(i8* %14, i8* %15) #12, !dbg !1650
  %17 = icmp eq i32 %16, 0, !dbg !1651
  br i1 %17, label %18, label %20, !dbg !1652

; <label>:18:                                     ; preds = %11
  %19 = load %struct.file_info*, %struct.file_info** %6, align 8, !dbg !1653
  store %struct.file_info* %19, %struct.file_info** %3, align 8, !dbg !1654
  br label %26, !dbg !1654

; <label>:20:                                     ; preds = %11
  br label %21, !dbg !1655

; <label>:21:                                     ; preds = %20
  %22 = load %struct.file_info*, %struct.file_info** %6, align 8, !dbg !1657
  %23 = getelementptr inbounds %struct.file_info, %struct.file_info* %22, i32 0, i32 0, !dbg !1659
  %24 = load %struct.file_info*, %struct.file_info** %23, align 8, !dbg !1659
  store %struct.file_info* %24, %struct.file_info** %6, align 8, !dbg !1660
  br label %8, !dbg !1661, !llvm.loop !1662

; <label>:25:                                     ; preds = %8
  store %struct.file_info* null, %struct.file_info** %3, align 8, !dbg !1664
  br label %26, !dbg !1664

; <label>:26:                                     ; preds = %25, %18
  %27 = load %struct.file_info*, %struct.file_info** %3, align 8, !dbg !1665
  ret %struct.file_info* %27, !dbg !1665
}

; Function Attrs: nounwind uwtable
define internal %struct.file_info* @file_info_new(i8*) #0 !dbg !1666 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.file_info*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1669, metadata !166), !dbg !1670
  call void @llvm.dbg.declare(metadata %struct.file_info** %3, metadata !1671, metadata !166), !dbg !1672
  %4 = call i8* @m_malloc(i64 16), !dbg !1673
  %5 = bitcast i8* %4 to %struct.file_info*, !dbg !1673
  store %struct.file_info* %5, %struct.file_info** %3, align 8, !dbg !1674
  %6 = load i8*, i8** %2, align 8, !dbg !1675
  %7 = call i8* @m_strdup(i8* %6), !dbg !1676
  %8 = load %struct.file_info*, %struct.file_info** %3, align 8, !dbg !1677
  %9 = getelementptr inbounds %struct.file_info, %struct.file_info* %8, i32 0, i32 1, !dbg !1678
  store i8* %7, i8** %9, align 8, !dbg !1679
  %10 = load %struct.file_info*, %struct.file_info** %3, align 8, !dbg !1680
  %11 = getelementptr inbounds %struct.file_info, %struct.file_info* %10, i32 0, i32 0, !dbg !1681
  store %struct.file_info* null, %struct.file_info** %11, align 8, !dbg !1682
  %12 = load %struct.file_info*, %struct.file_info** %3, align 8, !dbg !1683
  ret %struct.file_info* %12, !dbg !1684
}

; Function Attrs: nounwind uwtable
define internal void @file_info_list_append(%struct.file_info**, %struct.file_info**, %struct.file_info*) #0 !dbg !1685 {
  %4 = alloca %struct.file_info**, align 8
  %5 = alloca %struct.file_info**, align 8
  %6 = alloca %struct.file_info*, align 8
  store %struct.file_info** %0, %struct.file_info*** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.file_info*** %4, metadata !1689, metadata !166), !dbg !1690
  store %struct.file_info** %1, %struct.file_info*** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.file_info*** %5, metadata !1691, metadata !166), !dbg !1692
  store %struct.file_info* %2, %struct.file_info** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.file_info** %6, metadata !1693, metadata !166), !dbg !1694
  %7 = load %struct.file_info**, %struct.file_info*** %4, align 8, !dbg !1695
  %8 = load %struct.file_info*, %struct.file_info** %7, align 8, !dbg !1697
  %9 = icmp eq %struct.file_info* %8, null, !dbg !1698
  br i1 %9, label %10, label %14, !dbg !1699

; <label>:10:                                     ; preds = %3
  %11 = load %struct.file_info*, %struct.file_info** %6, align 8, !dbg !1700
  %12 = load %struct.file_info**, %struct.file_info*** %5, align 8, !dbg !1701
  store %struct.file_info* %11, %struct.file_info** %12, align 8, !dbg !1702
  %13 = load %struct.file_info**, %struct.file_info*** %4, align 8, !dbg !1703
  store %struct.file_info* %11, %struct.file_info** %13, align 8, !dbg !1704
  br label %20, !dbg !1705

; <label>:14:                                     ; preds = %3
  %15 = load %struct.file_info*, %struct.file_info** %6, align 8, !dbg !1706
  %16 = load %struct.file_info**, %struct.file_info*** %5, align 8, !dbg !1707
  %17 = load %struct.file_info*, %struct.file_info** %16, align 8, !dbg !1708
  %18 = getelementptr inbounds %struct.file_info, %struct.file_info* %17, i32 0, i32 0, !dbg !1709
  store %struct.file_info* %15, %struct.file_info** %18, align 8, !dbg !1710
  %19 = load %struct.file_info**, %struct.file_info*** %5, align 8, !dbg !1711
  store %struct.file_info* %15, %struct.file_info** %19, align 8, !dbg !1712
  br label %20

; <label>:20:                                     ; preds = %14, %10
  ret void, !dbg !1713
}

; Function Attrs: nounwind uwtable
define internal void @file_info_list_free(%struct.file_info*) #0 !dbg !1714 {
  %2 = alloca %struct.file_info*, align 8
  %3 = alloca %struct.file_info*, align 8
  store %struct.file_info* %0, %struct.file_info** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.file_info** %2, metadata !1717, metadata !166), !dbg !1718
  br label %4, !dbg !1719

; <label>:4:                                      ; preds = %7, %1
  %5 = load %struct.file_info*, %struct.file_info** %2, align 8, !dbg !1720
  %6 = icmp ne %struct.file_info* %5, null, !dbg !1722
  br i1 %6, label %7, label %13, !dbg !1722

; <label>:7:                                      ; preds = %4
  call void @llvm.dbg.declare(metadata %struct.file_info** %3, metadata !1723, metadata !166), !dbg !1725
  %8 = load %struct.file_info*, %struct.file_info** %2, align 8, !dbg !1726
  store %struct.file_info* %8, %struct.file_info** %3, align 8, !dbg !1727
  %9 = load %struct.file_info*, %struct.file_info** %2, align 8, !dbg !1728
  %10 = getelementptr inbounds %struct.file_info, %struct.file_info* %9, i32 0, i32 0, !dbg !1729
  %11 = load %struct.file_info*, %struct.file_info** %10, align 8, !dbg !1729
  store %struct.file_info* %11, %struct.file_info** %2, align 8, !dbg !1730
  %12 = load %struct.file_info*, %struct.file_info** %3, align 8, !dbg !1731
  call void @file_info_free(%struct.file_info* %12), !dbg !1732
  br label %4, !dbg !1733, !llvm.loop !1735

; <label>:13:                                     ; preds = %4
  ret void, !dbg !1736
}

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #3

declare i32 @fclose(%struct._IO_FILE*) #4

declare zeroext i1 @c_isbits(i32, i32) #4

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #6

; Function Attrs: nounwind uwtable
define internal void @file_info_free(%struct.file_info*) #0 !dbg !1737 {
  %2 = alloca %struct.file_info*, align 8
  store %struct.file_info* %0, %struct.file_info** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.file_info** %2, metadata !1738, metadata !166), !dbg !1739
  %3 = load %struct.file_info*, %struct.file_info** %2, align 8, !dbg !1740
  %4 = getelementptr inbounds %struct.file_info, %struct.file_info* %3, i32 0, i32 1, !dbg !1741
  %5 = load i8*, i8** %4, align 8, !dbg !1741
  call void @free(i8* %5) #10, !dbg !1742
  %6 = load %struct.file_info*, %struct.file_info** %2, align 8, !dbg !1743
  %7 = bitcast %struct.file_info* %6 to i8*, !dbg !1743
  call void @free(i8* %7) #10, !dbg !1744
  ret void, !dbg !1745
}

declare i8* @versiondescribe(%struct.dpkg_version*, i32) #4

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #3

declare void @m_pipe(i32*) #4

declare i32 @subproc_fork() #4

declare void @m_dup2(i32, i32) #4

; Function Attrs: nounwind
declare i32 @chdir(i8*) #3

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #3

declare void @command_init(%struct.command*, i8*, i8*) #4

declare void @command_add_args(%struct.command*, ...) #4

; Function Attrs: noreturn
declare void @command_exec(%struct.command*) #2

declare void @compress_filter(%struct.compress_params*, i32, i32, i8*, ...) #4

; Function Attrs: noreturn nounwind
declare void @exit(i32) #9

declare i32 @subproc_reap(i32, i8*, i32) #4

declare %struct.treeroot* @treewalk_open(i8*, i32, %struct.treewalk_funcs*) #4

declare %struct.treenode* @treewalk_node(%struct.treeroot*) #4

declare i8* @treenode_get_virtname(%struct.treenode*) #4

declare %struct.treenode* @treewalk_next(%struct.treeroot*) #4

declare void @treewalk_close(%struct.treeroot*) #4

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #6

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #6

declare i32 @treenode_get_mode(%struct.treenode*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind }
attributes #11 = { noreturn }
attributes #12 = { nounwind readonly }
attributes #13 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!162, !163}
!llvm.ident = !{!164}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !136, globals: !142)
!1 = !DIFile(filename: "[inter]dpkg-deb--build.o.i", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-deb--dpkg-deb")
!2 = !{!3, !12, !21, !27, !39, !50, !59, !67, !71, !81, !91, !97, !114, !125, !130}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "compressor_type", file: !4, line: 38, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../lib/dpkg/compress.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-deb--dpkg-deb")
!5 = !{!6, !7, !8, !9, !10, !11}
!6 = !DIEnumerator(name: "COMPRESSOR_TYPE_UNKNOWN", value: -1)
!7 = !DIEnumerator(name: "COMPRESSOR_TYPE_NONE", value: 0)
!8 = !DIEnumerator(name: "COMPRESSOR_TYPE_GZIP", value: 1)
!9 = !DIEnumerator(name: "COMPRESSOR_TYPE_XZ", value: 2)
!10 = !DIEnumerator(name: "COMPRESSOR_TYPE_BZIP2", value: 3)
!11 = !DIEnumerator(name: "COMPRESSOR_TYPE_LZMA", value: 4)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "compressor_strategy", file: !4, line: 47, size: 32, align: 32, elements: !13)
!13 = !{!14, !15, !16, !17, !18, !19, !20}
!14 = !DIEnumerator(name: "COMPRESSOR_STRATEGY_UNKNOWN", value: -1)
!15 = !DIEnumerator(name: "COMPRESSOR_STRATEGY_NONE", value: 0)
!16 = !DIEnumerator(name: "COMPRESSOR_STRATEGY_FILTERED", value: 1)
!17 = !DIEnumerator(name: "COMPRESSOR_STRATEGY_HUFFMAN", value: 2)
!18 = !DIEnumerator(name: "COMPRESSOR_STRATEGY_RLE", value: 3)
!19 = !DIEnumerator(name: "COMPRESSOR_STRATEGY_FIXED", value: 4)
!20 = !DIEnumerator(name: "COMPRESSOR_STRATEGY_EXTREME", value: 5)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_msg_type", file: !22, line: 36, size: 32, align: 32, elements: !23)
!22 = !DIFile(filename: "../lib/dpkg/error.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-deb--dpkg-deb")
!23 = !{!24, !25, !26}
!24 = !DIEnumerator(name: "DPKG_MSG_NONE", value: 0)
!25 = !DIEnumerator(name: "DPKG_MSG_WARN", value: 1)
!26 = !DIEnumerator(name: "DPKG_MSG_ERROR", value: 2)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "deptype", file: !28, line: 44, size: 32, align: 32, elements: !29)
!28 = !DIFile(filename: "../lib/dpkg/dpkg-db.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-deb--dpkg-deb")
!29 = !{!30, !31, !32, !33, !34, !35, !36, !37, !38}
!30 = !DIEnumerator(name: "dep_suggests", value: 0)
!31 = !DIEnumerator(name: "dep_recommends", value: 1)
!32 = !DIEnumerator(name: "dep_depends", value: 2)
!33 = !DIEnumerator(name: "dep_predepends", value: 3)
!34 = !DIEnumerator(name: "dep_breaks", value: 4)
!35 = !DIEnumerator(name: "dep_conflicts", value: 5)
!36 = !DIEnumerator(name: "dep_provides", value: 6)
!37 = !DIEnumerator(name: "dep_replaces", value: 7)
!38 = !DIEnumerator(name: "dep_enhances", value: 8)
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_arch_type", file: !40, line: 37, size: 32, align: 32, elements: !41)
!40 = !DIFile(filename: "../lib/dpkg/arch.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-deb--dpkg-deb")
!41 = !{!42, !43, !44, !45, !46, !47, !48, !49}
!42 = !DIEnumerator(name: "DPKG_ARCH_NONE", value: 0)
!43 = !DIEnumerator(name: "DPKG_ARCH_EMPTY", value: 1)
!44 = !DIEnumerator(name: "DPKG_ARCH_ILLEGAL", value: 2)
!45 = !DIEnumerator(name: "DPKG_ARCH_WILDCARD", value: 3)
!46 = !DIEnumerator(name: "DPKG_ARCH_ALL", value: 4)
!47 = !DIEnumerator(name: "DPKG_ARCH_NATIVE", value: 5)
!48 = !DIEnumerator(name: "DPKG_ARCH_FOREIGN", value: 6)
!49 = !DIEnumerator(name: "DPKG_ARCH_UNKNOWN", value: 7)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_relation", file: !51, line: 61, size: 32, align: 32, elements: !52)
!51 = !DIFile(filename: "../lib/dpkg/version.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-deb--dpkg-deb")
!52 = !{!53, !54, !55, !56, !57, !58}
!53 = !DIEnumerator(name: "DPKG_RELATION_NONE", value: 0)
!54 = !DIEnumerator(name: "DPKG_RELATION_EQ", value: 1)
!55 = !DIEnumerator(name: "DPKG_RELATION_LT", value: 2)
!56 = !DIEnumerator(name: "DPKG_RELATION_LE", value: 3)
!57 = !DIEnumerator(name: "DPKG_RELATION_GT", value: 4)
!58 = !DIEnumerator(name: "DPKG_RELATION_GE", value: 5)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgwant", file: !28, line: 153, size: 32, align: 32, elements: !60)
!60 = !{!61, !62, !63, !64, !65, !66}
!61 = !DIEnumerator(name: "PKG_WANT_UNKNOWN", value: 0)
!62 = !DIEnumerator(name: "PKG_WANT_INSTALL", value: 1)
!63 = !DIEnumerator(name: "PKG_WANT_HOLD", value: 2)
!64 = !DIEnumerator(name: "PKG_WANT_DEINSTALL", value: 3)
!65 = !DIEnumerator(name: "PKG_WANT_PURGE", value: 4)
!66 = !DIEnumerator(name: "PKG_WANT_SENTINEL", value: 5)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgeflag", file: !28, line: 163, size: 32, align: 32, elements: !68)
!68 = !{!69, !70}
!69 = !DIEnumerator(name: "PKG_EFLAG_OK", value: 0)
!70 = !DIEnumerator(name: "PKG_EFLAG_REINSTREQ", value: 1)
!71 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgstatus", file: !28, line: 168, size: 32, align: 32, elements: !72)
!72 = !{!73, !74, !75, !76, !77, !78, !79, !80}
!73 = !DIEnumerator(name: "PKG_STAT_NOTINSTALLED", value: 0)
!74 = !DIEnumerator(name: "PKG_STAT_CONFIGFILES", value: 1)
!75 = !DIEnumerator(name: "PKG_STAT_HALFINSTALLED", value: 2)
!76 = !DIEnumerator(name: "PKG_STAT_UNPACKED", value: 3)
!77 = !DIEnumerator(name: "PKG_STAT_HALFCONFIGURED", value: 4)
!78 = !DIEnumerator(name: "PKG_STAT_TRIGGERSAWAITED", value: 5)
!79 = !DIEnumerator(name: "PKG_STAT_TRIGGERSPENDING", value: 6)
!80 = !DIEnumerator(name: "PKG_STAT_INSTALLED", value: 7)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgpriority", file: !28, line: 179, size: 32, align: 32, elements: !82)
!82 = !{!83, !84, !85, !86, !87, !88, !89, !90}
!83 = !DIEnumerator(name: "PKG_PRIO_REQUIRED", value: 0)
!84 = !DIEnumerator(name: "PKG_PRIO_IMPORTANT", value: 1)
!85 = !DIEnumerator(name: "PKG_PRIO_STANDARD", value: 2)
!86 = !DIEnumerator(name: "PKG_PRIO_OPTIONAL", value: 3)
!87 = !DIEnumerator(name: "PKG_PRIO_EXTRA", value: 4)
!88 = !DIEnumerator(name: "PKG_PRIO_OTHER", value: 5)
!89 = !DIEnumerator(name: "PKG_PRIO_UNKNOWN", value: 6)
!90 = !DIEnumerator(name: "PKG_PRIO_UNSET", value: -1)
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgmultiarch", file: !28, line: 95, size: 32, align: 32, elements: !92)
!92 = !{!93, !94, !95, !96}
!93 = !DIEnumerator(name: "PKG_MULTIARCH_NO", value: 0)
!94 = !DIEnumerator(name: "PKG_MULTIARCH_SAME", value: 1)
!95 = !DIEnumerator(name: "PKG_MULTIARCH_ALLOWED", value: 2)
!96 = !DIEnumerator(name: "PKG_MULTIARCH_FOREIGN", value: 3)
!97 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "parsedbflags", file: !28, line: 328, size: 32, align: 32, elements: !98)
!98 = !{!99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113}
!99 = !DIEnumerator(name: "pdb_single_stanza", value: 1)
!100 = !DIEnumerator(name: "pdb_recordavailable", value: 2)
!101 = !DIEnumerator(name: "pdb_rejectstatus", value: 4)
!102 = !DIEnumerator(name: "pdb_weakclassification", value: 8)
!103 = !DIEnumerator(name: "pdb_ignore_archives", value: 16)
!104 = !DIEnumerator(name: "pdb_ignoreolder", value: 32)
!105 = !DIEnumerator(name: "pdb_lax_version_parser", value: 64)
!106 = !DIEnumerator(name: "pdb_lax_stanza_parser", value: 512)
!107 = !DIEnumerator(name: "pdb_lax_parser", value: 576)
!108 = !DIEnumerator(name: "pdb_close_fd", value: 128)
!109 = !DIEnumerator(name: "pdb_dash_is_stdin", value: 256)
!110 = !DIEnumerator(name: "pdb_parse_status", value: 584)
!111 = !DIEnumerator(name: "pdb_parse_update", value: 585)
!112 = !DIEnumerator(name: "pdb_parse_available", value: 582)
!113 = !DIEnumerator(name: "pdb_parse_binary", value: 7)
!114 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "c_ctype_bit", file: !115, line: 32, size: 32, align: 32, elements: !116)
!115 = !DIFile(filename: "../lib/dpkg/c-ctype.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-deb--dpkg-deb")
!116 = !{!117, !118, !119, !120, !121, !122, !123, !124}
!117 = !DIEnumerator(name: "C_CTYPE_BLANK", value: 1)
!118 = !DIEnumerator(name: "C_CTYPE_WHITE", value: 2)
!119 = !DIEnumerator(name: "C_CTYPE_SPACE", value: 4)
!120 = !DIEnumerator(name: "C_CTYPE_UPPER", value: 8)
!121 = !DIEnumerator(name: "C_CTYPE_LOWER", value: 16)
!122 = !DIEnumerator(name: "C_CTYPE_DIGIT", value: 32)
!123 = !DIEnumerator(name: "C_CTYPE_ALPHA", value: 24)
!124 = !DIEnumerator(name: "C_CTYPE_ALNUM", value: 56)
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "versiondisplayepochwhen", file: !28, line: 388, size: 32, align: 32, elements: !126)
!126 = !{!127, !128, !129}
!127 = !DIEnumerator(name: "vdew_never", value: 0)
!128 = !DIEnumerator(name: "vdew_nonambig", value: 1)
!129 = !DIEnumerator(name: "vdew_always", value: 2)
!130 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "treewalk_options", file: !131, line: 39, size: 32, align: 32, elements: !132)
!131 = !DIFile(filename: "../lib/dpkg/treewalk.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-deb--dpkg-deb")
!132 = !{!133, !134, !135}
!133 = !DIEnumerator(name: "TREEWALK_NONE", value: 0)
!134 = !DIEnumerator(name: "TREEWALK_FORCE_STAT", value: 1)
!135 = !DIEnumerator(name: "TREEWALK_FOLLOW_LINKS", value: 2)
!136 = !{!137, !138, !141}
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !139, line: 134, baseType: !140)
!139 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-deb--dpkg-deb")
!140 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!141 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!142 = !{!143, !158}
!143 = distinct !DIGlobalVariable(name: "deb_magic", scope: !144, file: !145, line: 617, type: !155, isLocal: true, isDefinition: true, variable: [5 x i8]* @do_build.deb_magic)
!144 = distinct !DISubprogram(name: "do_build", scope: !145, file: !145, line: 510, type: !146, isLocal: false, isDefinition: true, scopeLine: 511, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !154)
!145 = !DIFile(filename: "build.c", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-deb--dpkg-deb")
!146 = !DISubroutineType(types: !147)
!147 = !{!148, !149}
!148 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64, align: 64)
!150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64, align: 64)
!152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!153 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!154 = !{}
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 40, align: 8, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 5)
!158 = distinct !DIGlobalVariable(name: "maintainerscripts", scope: !0, file: !145, line: 196, type: !159, isLocal: true, isDefinition: true, variable: [6 x i8*]* @maintainerscripts)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 384, align: 64, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 6)
!162 = !{i32 2, !"Dwarf Version", i32 4}
!163 = !{i32 2, !"Debug Info Version", i32 3}
!164 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!165 = !DILocalVariable(name: "argv", arg: 1, scope: !144, file: !145, line: 510, type: !149)
!166 = !DIExpression()
!167 = !DILocation(line: 510, column: 29, scope: !144)
!168 = !DILocalVariable(name: "control_compress_params", scope: !144, file: !145, line: 512, type: !169)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compress_params", file: !4, line: 57, size: 96, align: 32, elements: !170)
!170 = !{!171, !172, !173}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !169, file: !4, line: 58, baseType: !3, size: 32, align: 32)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "strategy", scope: !169, file: !4, line: 59, baseType: !12, size: 32, align: 32, offset: 32)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !169, file: !4, line: 60, baseType: !148, size: 32, align: 32, offset: 64)
!174 = !DILocation(line: 512, column: 26, scope: !144)
!175 = !DILocalVariable(name: "tar_options", scope: !144, file: !145, line: 513, type: !176)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tar_pack_options", file: !145, line: 421, size: 192, align: 64, elements: !177)
!177 = !{!178, !183, !184}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !176, file: !145, line: 422, baseType: !179, size: 64, align: 64)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !180, line: 75, baseType: !181)
!180 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-deb--dpkg-deb")
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !182, line: 139, baseType: !140)
!182 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-deb--dpkg-deb")
!183 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !176, file: !145, line: 423, baseType: !151, size: 64, align: 64, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "root_owner_group", scope: !176, file: !145, line: 424, baseType: !185, size: 8, align: 8, offset: 128)
!185 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!186 = !DILocation(line: 513, column: 27, scope: !144)
!187 = !DILocalVariable(name: "err", scope: !144, file: !145, line: 514, type: !188)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_error", file: !22, line: 42, size: 128, align: 64, elements: !189)
!189 = !{!190, !191, !192}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !188, file: !22, line: 43, baseType: !21, size: 32, align: 32)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "syserrno", scope: !188, file: !22, line: 45, baseType: !148, size: 32, align: 32, offset: 32)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !188, file: !22, line: 46, baseType: !193, size: 64, align: 64, offset: 64)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64, align: 64)
!194 = !DILocation(line: 514, column: 21, scope: !144)
!195 = !DILocalVariable(name: "ar", scope: !144, file: !145, line: 515, type: !196)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64, align: 64)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_ar", file: !198, line: 57, size: 320, align: 64, elements: !199)
!198 = !DIFile(filename: "../lib/dpkg/ar.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-deb--dpkg-deb")
!199 = !{!200, !201, !206, !207, !210}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !197, file: !198, line: 58, baseType: !151, size: 64, align: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !197, file: !198, line: 59, baseType: !202, size: 32, align: 32, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !203, line: 70, baseType: !204)
!203 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-deb--dpkg-deb")
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !182, line: 129, baseType: !205)
!205 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !197, file: !198, line: 60, baseType: !179, size: 64, align: 64, offset: 128)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !197, file: !198, line: 61, baseType: !208, size: 64, align: 64, offset: 192)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !203, line: 86, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !182, line: 131, baseType: !140)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !197, file: !198, line: 62, baseType: !148, size: 32, align: 32, offset: 256)
!211 = !DILocation(line: 515, column: 19, scope: !144)
!212 = !DILocalVariable(name: "timestamp", scope: !144, file: !145, line: 516, type: !179)
!213 = !DILocation(line: 516, column: 10, scope: !144)
!214 = !DILocalVariable(name: "timestamp_str", scope: !144, file: !145, line: 517, type: !151)
!215 = !DILocation(line: 517, column: 15, scope: !144)
!216 = !DILocalVariable(name: "dir", scope: !144, file: !145, line: 518, type: !151)
!217 = !DILocation(line: 518, column: 15, scope: !144)
!218 = !DILocalVariable(name: "dest", scope: !144, file: !145, line: 518, type: !151)
!219 = !DILocation(line: 518, column: 21, scope: !144)
!220 = !DILocalVariable(name: "ctrldir", scope: !144, file: !145, line: 519, type: !193)
!221 = !DILocation(line: 519, column: 9, scope: !144)
!222 = !DILocalVariable(name: "debar", scope: !144, file: !145, line: 520, type: !193)
!223 = !DILocation(line: 520, column: 9, scope: !144)
!224 = !DILocalVariable(name: "tfbuf", scope: !144, file: !145, line: 521, type: !193)
!225 = !DILocation(line: 521, column: 9, scope: !144)
!226 = !DILocalVariable(name: "gzfd", scope: !144, file: !145, line: 522, type: !148)
!227 = !DILocation(line: 522, column: 7, scope: !144)
!228 = !DILocation(line: 525, column: 14, scope: !144)
!229 = !DILocation(line: 525, column: 9, scope: !144)
!230 = !DILocation(line: 525, column: 7, scope: !144)
!231 = !DILocation(line: 526, column: 8, scope: !232)
!232 = distinct !DILexicalBlock(scope: !144, file: !145, line: 526, column: 7)
!233 = !DILocation(line: 526, column: 7, scope: !144)
!234 = !DILocation(line: 527, column: 14, scope: !232)
!235 = !DILocation(line: 527, column: 60, scope: !232)
!236 = !DILocation(line: 527, column: 71, scope: !232)
!237 = !DILocation(line: 527, column: 5, scope: !238)
!238 = !DILexicalBlockFile(scope: !232, file: !145, discriminator: 1)
!239 = !DILocation(line: 527, column: 5, scope: !232)
!240 = !DILocation(line: 529, column: 15, scope: !144)
!241 = !DILocation(line: 529, column: 10, scope: !144)
!242 = !DILocation(line: 529, column: 8, scope: !144)
!243 = !DILocation(line: 530, column: 7, scope: !244)
!244 = distinct !DILexicalBlock(scope: !144, file: !145, line: 530, column: 7)
!245 = !DILocation(line: 530, column: 12, scope: !244)
!246 = !DILocation(line: 530, column: 16, scope: !247)
!247 = !DILexicalBlockFile(scope: !244, file: !145, discriminator: 1)
!248 = !DILocation(line: 530, column: 15, scope: !247)
!249 = !DILocation(line: 530, column: 7, scope: !247)
!250 = !DILocation(line: 531, column: 14, scope: !244)
!251 = !DILocation(line: 531, column: 59, scope: !244)
!252 = !DILocation(line: 531, column: 70, scope: !244)
!253 = !DILocation(line: 531, column: 5, scope: !247)
!254 = !DILocation(line: 531, column: 5, scope: !244)
!255 = !DILocation(line: 533, column: 29, scope: !144)
!256 = !DILocation(line: 533, column: 34, scope: !144)
!257 = !DILocation(line: 533, column: 11, scope: !144)
!258 = !DILocation(line: 533, column: 9, scope: !144)
!259 = !DILocation(line: 534, column: 30, scope: !144)
!260 = !DILocation(line: 534, column: 13, scope: !144)
!261 = !DILocation(line: 534, column: 11, scope: !144)
!262 = !DILocation(line: 537, column: 7, scope: !263)
!263 = distinct !DILexicalBlock(scope: !144, file: !145, line: 537, column: 7)
!264 = !DILocation(line: 537, column: 7, scope: !144)
!265 = !DILocation(line: 538, column: 9, scope: !266)
!266 = distinct !DILexicalBlock(scope: !267, file: !145, line: 538, column: 9)
!267 = distinct !DILexicalBlock(scope: !263, file: !145, line: 537, column: 20)
!268 = !DILocation(line: 538, column: 15, scope: !266)
!269 = !DILocation(line: 538, column: 9, scope: !267)
!270 = !DILocation(line: 539, column: 14, scope: !266)
!271 = !DILocation(line: 539, column: 7, scope: !272)
!272 = !DILexicalBlockFile(scope: !266, file: !145, discriminator: 1)
!273 = !DILocation(line: 539, column: 7, scope: !266)
!274 = !DILocation(line: 540, column: 13, scope: !267)
!275 = !DILocation(line: 540, column: 5, scope: !276)
!276 = !DILexicalBlockFile(scope: !267, file: !145, discriminator: 1)
!277 = !DILocation(line: 541, column: 10, scope: !267)
!278 = !DILocation(line: 541, column: 59, scope: !267)
!279 = !DILocation(line: 541, column: 5, scope: !276)
!280 = !DILocation(line: 542, column: 3, scope: !267)
!281 = !DILocalVariable(name: "pkg", scope: !282, file: !145, line: 543, type: !283)
!282 = distinct !DILexicalBlock(scope: !263, file: !145, line: 542, column: 10)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64, align: 64)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkginfo", file: !28, line: 195, size: 3072, align: 64, elements: !285)
!285 = !{!286, !332, !333, !334, !335, !336, !337, !338, !339, !340, !370, !371, !374, !383, !399, !400, !406, !409, !410, !411}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !284, file: !28, line: 196, baseType: !287, size: 64, align: 64)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64, align: 64)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgset", file: !28, line: 242, size: 3392, align: 64, elements: !289)
!289 = !{!290, !291, !292, !293, !331}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !288, file: !28, line: 243, baseType: !287, size: 64, align: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !288, file: !28, line: 244, baseType: !151, size: 64, align: 64, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !288, file: !28, line: 245, baseType: !284, size: 3072, align: 64, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "depended", scope: !288, file: !28, line: 249, baseType: !294, size: 128, align: 64, offset: 3200)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !288, file: !28, line: 246, size: 128, align: 64, elements: !295)
!295 = !{!296, !330}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !294, file: !28, line: 247, baseType: !297, size: 64, align: 64)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64, align: 64)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "deppossi", file: !28, line: 63, size: 640, align: 64, elements: !299)
!299 = !{!300, !308, !309, !310, !311, !312, !321, !327, !328, !329}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !298, file: !28, line: 64, baseType: !301, size: 64, align: 64)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64, align: 64)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dependency", file: !28, line: 56, size: 256, align: 64, elements: !303)
!303 = !{!304, !305, !306, !307}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !302, file: !28, line: 57, baseType: !283, size: 64, align: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !302, file: !28, line: 58, baseType: !301, size: 64, align: 64, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !302, file: !28, line: 59, baseType: !297, size: 64, align: 64, offset: 128)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !302, file: !28, line: 60, baseType: !27, size: 32, align: 32, offset: 192)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "ed", scope: !298, file: !28, line: 65, baseType: !287, size: 64, align: 64, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !298, file: !28, line: 66, baseType: !297, size: 64, align: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "rev_next", scope: !298, file: !28, line: 66, baseType: !297, size: 64, align: 64, offset: 192)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "rev_prev", scope: !298, file: !28, line: 66, baseType: !297, size: 64, align: 64, offset: 256)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !298, file: !28, line: 67, baseType: !313, size: 64, align: 64, offset: 320)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64, align: 64)
!314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !315)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_arch", file: !40, line: 48, size: 192, align: 64, elements: !316)
!316 = !{!317, !319, !320}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !315, file: !40, line: 49, baseType: !318, size: 64, align: 64)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64, align: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !315, file: !40, line: 50, baseType: !151, size: 64, align: 64, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !315, file: !40, line: 51, baseType: !39, size: 32, align: 32, offset: 128)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !298, file: !28, line: 68, baseType: !322, size: 192, align: 64, offset: 384)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_version", file: !51, line: 42, size: 192, align: 64, elements: !323)
!323 = !{!324, !325, !326}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !322, file: !51, line: 44, baseType: !205, size: 32, align: 32)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !322, file: !51, line: 46, baseType: !151, size: 64, align: 64, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !322, file: !51, line: 48, baseType: !151, size: 64, align: 64, offset: 128)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "verrel", scope: !298, file: !28, line: 69, baseType: !50, size: 32, align: 32, offset: 576)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "arch_is_implicit", scope: !298, file: !28, line: 70, baseType: !185, size: 8, align: 8, offset: 608)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "cyclebreak", scope: !298, file: !28, line: 71, baseType: !185, size: 8, align: 8, offset: 616)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !294, file: !28, line: 248, baseType: !297, size: 64, align: 64, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "installed_instances", scope: !288, file: !28, line: 250, baseType: !148, size: 32, align: 32, offset: 3328)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "arch_next", scope: !284, file: !28, line: 197, baseType: !283, size: 64, align: 64, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "want", scope: !284, file: !28, line: 199, baseType: !59, size: 32, align: 32, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "eflag", scope: !284, file: !28, line: 201, baseType: !67, size: 32, align: 32, offset: 160)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !284, file: !28, line: 202, baseType: !71, size: 32, align: 32, offset: 192)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !284, file: !28, line: 203, baseType: !81, size: 32, align: 32, offset: 224)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "otherpriority", scope: !284, file: !28, line: 204, baseType: !151, size: 64, align: 64, offset: 256)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "section", scope: !284, file: !28, line: 205, baseType: !151, size: 64, align: 64, offset: 320)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "configversion", scope: !284, file: !28, line: 206, baseType: !322, size: 192, align: 64, offset: 384)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !284, file: !28, line: 207, baseType: !341, size: 960, align: 64, offset: 576)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgbin", file: !28, line: 107, size: 960, align: 64, elements: !342)
!342 = !{!343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !363}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "depends", scope: !341, file: !28, line: 108, baseType: !301, size: 64, align: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "essential", scope: !341, file: !28, line: 110, baseType: !185, size: 8, align: 8, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "multiarch", scope: !341, file: !28, line: 111, baseType: !91, size: 32, align: 32, offset: 96)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !341, file: !28, line: 112, baseType: !313, size: 64, align: 64, offset: 128)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "pkgname_archqual", scope: !341, file: !28, line: 115, baseType: !151, size: 64, align: 64, offset: 192)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !341, file: !28, line: 116, baseType: !151, size: 64, align: 64, offset: 256)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "maintainer", scope: !341, file: !28, line: 117, baseType: !151, size: 64, align: 64, offset: 320)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !341, file: !28, line: 118, baseType: !151, size: 64, align: 64, offset: 384)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "installedsize", scope: !341, file: !28, line: 119, baseType: !151, size: 64, align: 64, offset: 448)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !341, file: !28, line: 120, baseType: !151, size: 64, align: 64, offset: 512)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "bugs", scope: !341, file: !28, line: 121, baseType: !151, size: 64, align: 64, offset: 576)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !341, file: !28, line: 122, baseType: !322, size: 192, align: 64, offset: 640)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "conffiles", scope: !341, file: !28, line: 123, baseType: !356, size: 64, align: 64, offset: 832)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64, align: 64)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conffile", file: !28, line: 80, size: 256, align: 64, elements: !358)
!358 = !{!359, !360, !361, !362}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !357, file: !28, line: 81, baseType: !356, size: 64, align: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !357, file: !28, line: 82, baseType: !151, size: 64, align: 64, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !357, file: !28, line: 83, baseType: !151, size: 64, align: 64, offset: 128)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "obsolete", scope: !357, file: !28, line: 84, baseType: !185, size: 8, align: 8, offset: 192)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "arbs", scope: !341, file: !28, line: 124, baseType: !364, size: 64, align: 64, offset: 896)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64, align: 64)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arbitraryfield", file: !28, line: 74, size: 192, align: 64, elements: !366)
!366 = !{!367, !368, !369}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !365, file: !28, line: 75, baseType: !364, size: 64, align: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !365, file: !28, line: 76, baseType: !151, size: 64, align: 64, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !365, file: !28, line: 77, baseType: !151, size: 64, align: 64, offset: 128)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !284, file: !28, line: 208, baseType: !341, size: 960, align: 64, offset: 1536)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "clientdata", scope: !284, file: !28, line: 209, baseType: !372, size: 64, align: 64, offset: 2496)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64, align: 64)
!373 = !DICompositeType(tag: DW_TAG_structure_type, name: "perpackagestate", file: !28, line: 151, flags: DIFlagFwdDecl)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "archives", scope: !284, file: !28, line: 211, baseType: !375, size: 64, align: 64, offset: 2560)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64, align: 64)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archivedetails", file: !28, line: 87, size: 320, align: 64, elements: !377)
!377 = !{!378, !379, !380, !381, !382}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !376, file: !28, line: 88, baseType: !375, size: 64, align: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !376, file: !28, line: 89, baseType: !151, size: 64, align: 64, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "msdosname", scope: !376, file: !28, line: 90, baseType: !151, size: 64, align: 64, offset: 128)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !376, file: !28, line: 91, baseType: !151, size: 64, align: 64, offset: 192)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "md5sum", scope: !376, file: !28, line: 92, baseType: !151, size: 64, align: 64, offset: 256)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "trigaw", scope: !284, file: !28, line: 216, baseType: !384, size: 128, align: 64, offset: 2624)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !284, file: !28, line: 213, size: 128, align: 64, elements: !385)
!385 = !{!386, !398}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !384, file: !28, line: 215, baseType: !387, size: 64, align: 64)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64, align: 64)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigaw", file: !28, line: 142, size: 320, align: 64, elements: !389)
!389 = !{!390, !391, !392, !393}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "aw", scope: !388, file: !28, line: 143, baseType: !283, size: 64, align: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "pend", scope: !388, file: !28, line: 143, baseType: !283, size: 64, align: 64, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "samepend_next", scope: !388, file: !28, line: 144, baseType: !387, size: 64, align: 64, offset: 128)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "sameaw", scope: !388, file: !28, line: 147, baseType: !394, size: 128, align: 64, offset: 192)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !388, file: !28, line: 145, size: 128, align: 64, elements: !395)
!395 = !{!396, !397}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !394, file: !28, line: 146, baseType: !387, size: 64, align: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !394, file: !28, line: 146, baseType: !387, size: 64, align: 64, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !384, file: !28, line: 215, baseType: !387, size: 64, align: 64, offset: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "othertrigaw_head", scope: !284, file: !28, line: 219, baseType: !387, size: 64, align: 64, offset: 2752)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "trigpend_head", scope: !284, file: !28, line: 220, baseType: !401, size: 64, align: 64, offset: 2816)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64, align: 64)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigpend", file: !28, line: 134, size: 128, align: 64, elements: !403)
!403 = !{!404, !405}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !402, file: !28, line: 135, baseType: !401, size: 64, align: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !402, file: !28, line: 136, baseType: !151, size: 64, align: 64, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !284, file: !28, line: 231, baseType: !407, size: 64, align: 64, offset: 2880)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64, align: 64)
!408 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode_list", file: !28, line: 231, flags: DIFlagFwdDecl)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_phys_offs", scope: !284, file: !28, line: 232, baseType: !208, size: 64, align: 64, offset: 2944)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_valid", scope: !284, file: !28, line: 233, baseType: !185, size: 8, align: 8, offset: 3008)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "status_dirty", scope: !284, file: !28, line: 236, baseType: !185, size: 8, align: 8, offset: 3016)
!412 = !DILocation(line: 543, column: 21, scope: !282)
!413 = !DILocation(line: 545, column: 30, scope: !282)
!414 = !DILocation(line: 545, column: 39, scope: !282)
!415 = !DILocation(line: 545, column: 11, scope: !282)
!416 = !DILocation(line: 545, column: 9, scope: !282)
!417 = !DILocation(line: 546, column: 9, scope: !418)
!418 = distinct !DILexicalBlock(scope: !282, file: !145, line: 546, column: 9)
!419 = !DILocation(line: 546, column: 15, scope: !418)
!420 = !DILocation(line: 546, column: 9, scope: !282)
!421 = !DILocation(line: 547, column: 42, scope: !418)
!422 = !DILocation(line: 547, column: 48, scope: !418)
!423 = !DILocation(line: 547, column: 15, scope: !418)
!424 = !DILocation(line: 547, column: 13, scope: !418)
!425 = !DILocation(line: 547, column: 7, scope: !418)
!426 = !DILocation(line: 548, column: 10, scope: !282)
!427 = !DILocation(line: 548, column: 53, scope: !282)
!428 = !DILocation(line: 548, column: 58, scope: !282)
!429 = !DILocation(line: 548, column: 63, scope: !282)
!430 = !DILocation(line: 548, column: 69, scope: !282)
!431 = !DILocation(line: 548, column: 5, scope: !432)
!432 = !DILexicalBlockFile(scope: !282, file: !145, discriminator: 1)
!433 = !DILocation(line: 550, column: 11, scope: !144)
!434 = !DILocation(line: 550, column: 19, scope: !144)
!435 = !DILocation(line: 550, column: 3, scope: !436)
!436 = !DILexicalBlockFile(scope: !144, file: !145, discriminator: 1)
!437 = !DILocation(line: 552, column: 19, scope: !144)
!438 = !DILocation(line: 552, column: 17, scope: !144)
!439 = !DILocation(line: 553, column: 7, scope: !440)
!440 = distinct !DILexicalBlock(scope: !144, file: !145, line: 553, column: 7)
!441 = !DILocation(line: 553, column: 7, scope: !144)
!442 = !DILocation(line: 554, column: 33, scope: !440)
!443 = !DILocation(line: 554, column: 17, scope: !440)
!444 = !DILocation(line: 554, column: 15, scope: !440)
!445 = !DILocation(line: 554, column: 5, scope: !440)
!446 = !DILocation(line: 556, column: 17, scope: !440)
!447 = !DILocation(line: 556, column: 15, scope: !440)
!448 = !DILocation(line: 560, column: 23, scope: !144)
!449 = !DILocation(line: 560, column: 8, scope: !144)
!450 = !DILocation(line: 560, column: 6, scope: !144)
!451 = !DILocation(line: 562, column: 21, scope: !144)
!452 = !DILocation(line: 562, column: 25, scope: !144)
!453 = !DILocation(line: 562, column: 3, scope: !144)
!454 = !DILocation(line: 564, column: 3, scope: !144)
!455 = !DILocation(line: 568, column: 11, scope: !144)
!456 = !DILocation(line: 568, column: 9, scope: !144)
!457 = !DILocation(line: 569, column: 18, scope: !144)
!458 = !DILocation(line: 569, column: 10, scope: !144)
!459 = !DILocation(line: 569, column: 8, scope: !144)
!460 = !DILocation(line: 570, column: 7, scope: !461)
!461 = distinct !DILexicalBlock(scope: !144, file: !145, line: 570, column: 7)
!462 = !DILocation(line: 570, column: 12, scope: !461)
!463 = !DILocation(line: 570, column: 7, scope: !144)
!464 = !DILocation(line: 571, column: 13, scope: !461)
!465 = !DILocation(line: 571, column: 60, scope: !466)
!466 = !DILexicalBlockFile(scope: !461, file: !145, discriminator: 1)
!467 = !DILocation(line: 571, column: 5, scope: !468)
!468 = !DILexicalBlockFile(scope: !461, file: !145, discriminator: 2)
!469 = !DILocation(line: 571, column: 5, scope: !461)
!470 = !DILocation(line: 573, column: 14, scope: !471)
!471 = distinct !DILexicalBlock(scope: !144, file: !145, line: 573, column: 7)
!472 = !DILocation(line: 573, column: 7, scope: !471)
!473 = !DILocation(line: 573, column: 7, scope: !144)
!474 = !DILocation(line: 574, column: 12, scope: !471)
!475 = !DILocation(line: 574, column: 65, scope: !476)
!476 = !DILexicalBlockFile(scope: !471, file: !145, discriminator: 1)
!477 = !DILocation(line: 575, column: 12, scope: !471)
!478 = !DILocation(line: 574, column: 5, scope: !479)
!479 = !DILexicalBlockFile(scope: !471, file: !145, discriminator: 2)
!480 = !DILocation(line: 574, column: 5, scope: !471)
!481 = !DILocation(line: 576, column: 8, scope: !144)
!482 = !DILocation(line: 576, column: 3, scope: !144)
!483 = !DILocation(line: 579, column: 7, scope: !484)
!484 = distinct !DILexicalBlock(scope: !144, file: !145, line: 579, column: 7)
!485 = !DILocation(line: 579, column: 7, scope: !144)
!486 = !DILocation(line: 580, column: 31, scope: !487)
!487 = distinct !DILexicalBlock(scope: !484, file: !145, line: 579, column: 32)
!488 = !DILocation(line: 581, column: 3, scope: !487)
!489 = !DILocation(line: 582, column: 29, scope: !490)
!490 = distinct !DILexicalBlock(scope: !484, file: !145, line: 581, column: 10)
!491 = !DILocation(line: 582, column: 34, scope: !490)
!492 = !DILocation(line: 583, column: 29, scope: !490)
!493 = !DILocation(line: 583, column: 38, scope: !490)
!494 = !DILocation(line: 584, column: 29, scope: !490)
!495 = !DILocation(line: 584, column: 35, scope: !490)
!496 = !DILocation(line: 585, column: 10, scope: !497)
!497 = distinct !DILexicalBlock(scope: !490, file: !145, line: 585, column: 9)
!498 = !DILocation(line: 585, column: 9, scope: !490)
!499 = !DILocation(line: 586, column: 98, scope: !497)
!500 = !DILocation(line: 586, column: 7, scope: !497)
!501 = !DILocation(line: 590, column: 15, scope: !144)
!502 = !DILocation(line: 590, column: 20, scope: !144)
!503 = !DILocation(line: 591, column: 27, scope: !144)
!504 = !DILocation(line: 591, column: 15, scope: !144)
!505 = !DILocation(line: 591, column: 25, scope: !144)
!506 = !DILocation(line: 592, column: 15, scope: !144)
!507 = !DILocation(line: 592, column: 32, scope: !144)
!508 = !DILocation(line: 593, column: 16, scope: !144)
!509 = !DILocation(line: 594, column: 42, scope: !144)
!510 = !DILocation(line: 593, column: 3, scope: !144)
!511 = !DILocation(line: 596, column: 8, scope: !144)
!512 = !DILocation(line: 596, column: 3, scope: !144)
!513 = !DILocation(line: 598, column: 13, scope: !514)
!514 = distinct !DILexicalBlock(scope: !144, file: !145, line: 598, column: 7)
!515 = !DILocation(line: 598, column: 7, scope: !514)
!516 = !DILocation(line: 598, column: 7, scope: !144)
!517 = !DILocation(line: 599, column: 13, scope: !514)
!518 = !DILocation(line: 599, column: 62, scope: !519)
!519 = !DILexicalBlockFile(scope: !514, file: !145, discriminator: 1)
!520 = !DILocation(line: 599, column: 5, scope: !521)
!521 = !DILexicalBlockFile(scope: !514, file: !145, discriminator: 2)
!522 = !DILocation(line: 599, column: 5, scope: !514)
!523 = !DILocation(line: 603, column: 18, scope: !524)
!524 = distinct !DILexicalBlock(scope: !144, file: !145, line: 603, column: 7)
!525 = !DILocation(line: 603, column: 24, scope: !524)
!526 = !DILocation(line: 603, column: 7, scope: !144)
!527 = !DILocalVariable(name: "controlstab", scope: !528, file: !145, line: 604, type: !529)
!528 = distinct !DILexicalBlock(scope: !524, file: !145, line: 603, column: 30)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !530, line: 46, size: 1152, align: 64, elements: !531)
!530 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-deb--dpkg-deb")
!531 = !{!532, !534, !536, !538, !539, !541, !543, !544, !545, !546, !548, !550, !556, !557, !558}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !529, file: !530, line: 48, baseType: !533, size: 64, align: 64)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !182, line: 124, baseType: !141)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !529, file: !530, line: 53, baseType: !535, size: 64, align: 64, offset: 64)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !182, line: 127, baseType: !141)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !529, file: !530, line: 61, baseType: !537, size: 64, align: 64, offset: 128)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !182, line: 130, baseType: !141)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !529, file: !530, line: 62, baseType: !204, size: 32, align: 32, offset: 192)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !529, file: !530, line: 64, baseType: !540, size: 32, align: 32, offset: 224)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !182, line: 125, baseType: !205)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !529, file: !530, line: 65, baseType: !542, size: 32, align: 32, offset: 256)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !182, line: 126, baseType: !205)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !529, file: !530, line: 67, baseType: !148, size: 32, align: 32, offset: 288)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !529, file: !530, line: 69, baseType: !533, size: 64, align: 64, offset: 320)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !529, file: !530, line: 74, baseType: !209, size: 64, align: 64, offset: 384)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !529, file: !530, line: 78, baseType: !547, size: 64, align: 64, offset: 448)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !182, line: 153, baseType: !140)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !529, file: !530, line: 80, baseType: !549, size: 64, align: 64, offset: 512)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !182, line: 158, baseType: !140)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !529, file: !530, line: 91, baseType: !551, size: 128, align: 64, offset: 576)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !180, line: 120, size: 128, align: 64, elements: !552)
!552 = !{!553, !554}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !551, file: !180, line: 122, baseType: !181, size: 64, align: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !551, file: !180, line: 123, baseType: !555, size: 64, align: 64, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !182, line: 175, baseType: !140)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !529, file: !530, line: 92, baseType: !551, size: 128, align: 64, offset: 704)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !529, file: !530, line: 93, baseType: !551, size: 128, align: 64, offset: 832)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !529, file: !530, line: 106, baseType: !559, size: 192, align: 64, offset: 960)
!559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !555, size: 192, align: 64, elements: !560)
!560 = !{!561}
!561 = !DISubrange(count: 3)
!562 = !DILocation(line: 604, column: 17, scope: !528)
!563 = !DILocalVariable(name: "versionbuf", scope: !528, file: !145, line: 605, type: !564)
!564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 320, align: 8, elements: !565)
!565 = !{!566}
!566 = !DISubrange(count: 40)
!567 = !DILocation(line: 605, column: 10, scope: !528)
!568 = !DILocation(line: 607, column: 15, scope: !569)
!569 = distinct !DILexicalBlock(scope: !528, file: !145, line: 607, column: 9)
!570 = !DILocation(line: 607, column: 9, scope: !569)
!571 = !DILocation(line: 607, column: 9, scope: !528)
!572 = !DILocation(line: 608, column: 15, scope: !569)
!573 = !DILocation(line: 608, column: 62, scope: !574)
!574 = !DILexicalBlockFile(scope: !569, file: !145, discriminator: 1)
!575 = !DILocation(line: 608, column: 7, scope: !576)
!576 = !DILexicalBlockFile(scope: !569, file: !145, discriminator: 2)
!577 = !DILocation(line: 608, column: 7, scope: !569)
!578 = !DILocation(line: 609, column: 13, scope: !528)
!579 = !DILocation(line: 610, column: 35, scope: !528)
!580 = !DILocation(line: 609, column: 5, scope: !528)
!581 = !DILocation(line: 611, column: 18, scope: !582)
!582 = distinct !DILexicalBlock(scope: !528, file: !145, line: 611, column: 9)
!583 = !DILocation(line: 611, column: 22, scope: !582)
!584 = !DILocation(line: 611, column: 26, scope: !582)
!585 = !DILocation(line: 611, column: 45, scope: !582)
!586 = !DILocation(line: 611, column: 38, scope: !582)
!587 = !DILocation(line: 611, column: 9, scope: !588)
!588 = !DILexicalBlockFile(scope: !582, file: !145, discriminator: 1)
!589 = !DILocation(line: 611, column: 58, scope: !582)
!590 = !DILocation(line: 611, column: 9, scope: !528)
!591 = !DILocation(line: 612, column: 15, scope: !582)
!592 = !DILocation(line: 612, column: 46, scope: !582)
!593 = !DILocation(line: 612, column: 7, scope: !588)
!594 = !DILocation(line: 612, column: 7, scope: !582)
!595 = !DILocation(line: 613, column: 28, scope: !596)
!596 = distinct !DILexicalBlock(scope: !528, file: !145, line: 613, column: 9)
!597 = !DILocation(line: 613, column: 13, scope: !596)
!598 = !DILocation(line: 613, column: 17, scope: !596)
!599 = !DILocation(line: 613, column: 9, scope: !596)
!600 = !DILocation(line: 613, column: 34, scope: !596)
!601 = !DILocation(line: 613, column: 9, scope: !528)
!602 = !DILocation(line: 614, column: 14, scope: !596)
!603 = !DILocation(line: 614, column: 65, scope: !604)
!604 = !DILexicalBlockFile(scope: !596, file: !145, discriminator: 1)
!605 = !DILocation(line: 615, column: 14, scope: !596)
!606 = !DILocation(line: 615, column: 18, scope: !596)
!607 = !DILocation(line: 615, column: 28, scope: !596)
!608 = !DILocation(line: 614, column: 7, scope: !609)
!609 = !DILexicalBlockFile(scope: !596, file: !145, discriminator: 2)
!610 = !DILocation(line: 614, column: 7, scope: !596)
!611 = !DILocation(line: 616, column: 3, scope: !528)
!612 = !DILocation(line: 616, column: 25, scope: !613)
!613 = !DILexicalBlockFile(scope: !614, file: !145, discriminator: 1)
!614 = distinct !DILexicalBlock(scope: !524, file: !145, line: 616, column: 14)
!615 = !DILocation(line: 616, column: 31, scope: !613)
!616 = !DILocation(line: 616, column: 14, scope: !613)
!617 = !DILocalVariable(name: "adminmember", scope: !618, file: !145, line: 618, type: !619)
!618 = distinct !DILexicalBlock(scope: !614, file: !145, line: 616, column: 37)
!619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 136, align: 8, elements: !620)
!620 = !{!621}
!621 = !DISubrange(count: 17)
!622 = !DILocation(line: 618, column: 10, scope: !618)
!623 = !DILocation(line: 620, column: 13, scope: !618)
!624 = !DILocation(line: 621, column: 62, scope: !618)
!625 = !DILocation(line: 621, column: 13, scope: !618)
!626 = !DILocation(line: 620, column: 5, scope: !618)
!627 = !DILocation(line: 623, column: 23, scope: !618)
!628 = !DILocation(line: 623, column: 5, scope: !618)
!629 = !DILocation(line: 624, column: 28, scope: !618)
!630 = !DILocation(line: 624, column: 60, scope: !618)
!631 = !DILocation(line: 624, column: 5, scope: !632)
!632 = !DILexicalBlockFile(scope: !618, file: !145, discriminator: 1)
!633 = !DILocation(line: 625, column: 29, scope: !618)
!634 = !DILocation(line: 625, column: 33, scope: !618)
!635 = !DILocation(line: 625, column: 46, scope: !618)
!636 = !DILocation(line: 625, column: 5, scope: !618)
!637 = !DILocation(line: 626, column: 3, scope: !618)
!638 = !DILocation(line: 627, column: 91, scope: !639)
!639 = distinct !DILexicalBlock(scope: !614, file: !145, line: 626, column: 10)
!640 = !DILocation(line: 627, column: 109, scope: !639)
!641 = !DILocation(line: 627, column: 5, scope: !639)
!642 = !DILocation(line: 630, column: 9, scope: !144)
!643 = !DILocation(line: 630, column: 3, scope: !144)
!644 = !DILocation(line: 633, column: 18, scope: !645)
!645 = distinct !DILexicalBlock(scope: !144, file: !145, line: 633, column: 7)
!646 = !DILocation(line: 633, column: 24, scope: !645)
!647 = !DILocation(line: 633, column: 7, scope: !144)
!648 = !DILocation(line: 637, column: 12, scope: !649)
!649 = distinct !DILexicalBlock(scope: !645, file: !145, line: 633, column: 30)
!650 = !DILocation(line: 637, column: 16, scope: !649)
!651 = !DILocation(line: 637, column: 10, scope: !649)
!652 = !DILocation(line: 638, column: 3, scope: !649)
!653 = !DILocation(line: 638, column: 25, scope: !654)
!654 = !DILexicalBlockFile(scope: !655, file: !145, discriminator: 1)
!655 = distinct !DILexicalBlock(scope: !645, file: !145, line: 638, column: 14)
!656 = !DILocation(line: 638, column: 31, scope: !654)
!657 = !DILocation(line: 638, column: 14, scope: !654)
!658 = !DILocation(line: 641, column: 13, scope: !659)
!659 = distinct !DILexicalBlock(scope: !655, file: !145, line: 638, column: 37)
!660 = !DILocation(line: 641, column: 11, scope: !659)
!661 = !DILocation(line: 642, column: 20, scope: !659)
!662 = !DILocation(line: 642, column: 12, scope: !659)
!663 = !DILocation(line: 642, column: 10, scope: !659)
!664 = !DILocation(line: 643, column: 9, scope: !665)
!665 = distinct !DILexicalBlock(scope: !659, file: !145, line: 643, column: 9)
!666 = !DILocation(line: 643, column: 14, scope: !665)
!667 = !DILocation(line: 643, column: 9, scope: !659)
!668 = !DILocation(line: 644, column: 15, scope: !665)
!669 = !DILocation(line: 644, column: 62, scope: !670)
!670 = !DILexicalBlockFile(scope: !665, file: !145, discriminator: 1)
!671 = !DILocation(line: 644, column: 7, scope: !672)
!672 = !DILexicalBlockFile(scope: !665, file: !145, discriminator: 2)
!673 = !DILocation(line: 644, column: 7, scope: !665)
!674 = !DILocation(line: 646, column: 16, scope: !675)
!675 = distinct !DILexicalBlock(scope: !659, file: !145, line: 646, column: 9)
!676 = !DILocation(line: 646, column: 9, scope: !675)
!677 = !DILocation(line: 646, column: 9, scope: !659)
!678 = !DILocation(line: 647, column: 14, scope: !675)
!679 = !DILocation(line: 647, column: 67, scope: !680)
!680 = !DILexicalBlockFile(scope: !675, file: !145, discriminator: 1)
!681 = !DILocation(line: 648, column: 14, scope: !675)
!682 = !DILocation(line: 647, column: 7, scope: !683)
!683 = !DILexicalBlockFile(scope: !675, file: !145, discriminator: 2)
!684 = !DILocation(line: 647, column: 7, scope: !675)
!685 = !DILocation(line: 649, column: 10, scope: !659)
!686 = !DILocation(line: 649, column: 5, scope: !659)
!687 = !DILocation(line: 650, column: 3, scope: !659)
!688 = !DILocation(line: 651, column: 91, scope: !689)
!689 = distinct !DILexicalBlock(scope: !655, file: !145, line: 650, column: 10)
!690 = !DILocation(line: 651, column: 109, scope: !689)
!691 = !DILocation(line: 651, column: 5, scope: !689)
!692 = !DILocation(line: 655, column: 15, scope: !144)
!693 = !DILocation(line: 655, column: 20, scope: !144)
!694 = !DILocation(line: 656, column: 27, scope: !144)
!695 = !DILocation(line: 656, column: 15, scope: !144)
!696 = !DILocation(line: 656, column: 25, scope: !144)
!697 = !DILocation(line: 657, column: 34, scope: !144)
!698 = !DILocation(line: 657, column: 15, scope: !144)
!699 = !DILocation(line: 657, column: 32, scope: !144)
!700 = !DILocation(line: 658, column: 16, scope: !144)
!701 = !DILocation(line: 658, column: 73, scope: !144)
!702 = !DILocation(line: 658, column: 3, scope: !144)
!703 = !DILocation(line: 661, column: 18, scope: !704)
!704 = distinct !DILexicalBlock(scope: !144, file: !145, line: 661, column: 7)
!705 = !DILocation(line: 661, column: 24, scope: !704)
!706 = !DILocation(line: 661, column: 7, scope: !144)
!707 = !DILocalVariable(name: "datamember", scope: !708, file: !145, line: 662, type: !619)
!708 = distinct !DILexicalBlock(scope: !704, file: !145, line: 661, column: 30)
!709 = !DILocation(line: 662, column: 10, scope: !708)
!710 = !DILocation(line: 664, column: 13, scope: !708)
!711 = !DILocation(line: 665, column: 54, scope: !708)
!712 = !DILocation(line: 665, column: 13, scope: !708)
!713 = !DILocation(line: 664, column: 5, scope: !708)
!714 = !DILocation(line: 667, column: 15, scope: !715)
!715 = distinct !DILexicalBlock(scope: !708, file: !145, line: 667, column: 9)
!716 = !DILocation(line: 667, column: 9, scope: !715)
!717 = !DILocation(line: 667, column: 9, scope: !708)
!718 = !DILocation(line: 668, column: 15, scope: !715)
!719 = !DILocation(line: 668, column: 64, scope: !720)
!720 = !DILexicalBlockFile(scope: !715, file: !145, discriminator: 1)
!721 = !DILocation(line: 668, column: 7, scope: !722)
!722 = !DILexicalBlockFile(scope: !715, file: !145, discriminator: 2)
!723 = !DILocation(line: 668, column: 7, scope: !715)
!724 = !DILocation(line: 670, column: 29, scope: !708)
!725 = !DILocation(line: 670, column: 33, scope: !708)
!726 = !DILocation(line: 670, column: 45, scope: !708)
!727 = !DILocation(line: 670, column: 5, scope: !708)
!728 = !DILocation(line: 672, column: 11, scope: !708)
!729 = !DILocation(line: 672, column: 5, scope: !708)
!730 = !DILocation(line: 673, column: 3, scope: !708)
!731 = !DILocation(line: 674, column: 13, scope: !732)
!732 = distinct !DILexicalBlock(scope: !144, file: !145, line: 674, column: 7)
!733 = !DILocation(line: 674, column: 17, scope: !732)
!734 = !DILocation(line: 674, column: 7, scope: !732)
!735 = !DILocation(line: 674, column: 7, scope: !144)
!736 = !DILocation(line: 675, column: 13, scope: !732)
!737 = !DILocation(line: 675, column: 50, scope: !732)
!738 = !DILocation(line: 675, column: 54, scope: !732)
!739 = !DILocation(line: 675, column: 5, scope: !740)
!740 = !DILexicalBlockFile(scope: !732, file: !145, discriminator: 1)
!741 = !DILocation(line: 675, column: 5, scope: !732)
!742 = !DILocation(line: 677, column: 17, scope: !144)
!743 = !DILocation(line: 677, column: 3, scope: !144)
!744 = !DILocation(line: 679, column: 8, scope: !144)
!745 = !DILocation(line: 679, column: 3, scope: !144)
!746 = !DILocation(line: 681, column: 3, scope: !144)
!747 = distinct !DISubprogram(name: "gen_dest_pathname", scope: !145, file: !145, line: 380, type: !748, isLocal: true, isDefinition: true, scopeLine: 381, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !154)
!748 = !DISubroutineType(types: !749)
!749 = !{!193, !151, !151}
!750 = !DILocalVariable(name: "dir", arg: 1, scope: !747, file: !145, line: 380, type: !151)
!751 = !DILocation(line: 380, column: 31, scope: !747)
!752 = !DILocalVariable(name: "dest", arg: 2, scope: !747, file: !145, line: 380, type: !151)
!753 = !DILocation(line: 380, column: 48, scope: !747)
!754 = !DILocation(line: 382, column: 7, scope: !755)
!755 = distinct !DILexicalBlock(scope: !747, file: !145, line: 382, column: 7)
!756 = !DILocation(line: 382, column: 7, scope: !747)
!757 = !DILocalVariable(name: "dest_stab", scope: !758, file: !145, line: 383, type: !529)
!758 = distinct !DILexicalBlock(scope: !755, file: !145, line: 382, column: 13)
!759 = !DILocation(line: 383, column: 17, scope: !758)
!760 = !DILocation(line: 385, column: 14, scope: !761)
!761 = distinct !DILexicalBlock(scope: !758, file: !145, line: 385, column: 9)
!762 = !DILocation(line: 385, column: 9, scope: !761)
!763 = !DILocation(line: 385, column: 9, scope: !758)
!764 = !DILocation(line: 386, column: 12, scope: !765)
!765 = distinct !DILexicalBlock(scope: !766, file: !145, line: 386, column: 10)
!766 = distinct !DILexicalBlock(scope: !761, file: !145, line: 385, column: 33)
!767 = !DILocation(line: 386, column: 11, scope: !765)
!768 = !DILocation(line: 386, column: 16, scope: !765)
!769 = !DILocation(line: 386, column: 10, scope: !766)
!770 = !DILocation(line: 387, column: 17, scope: !765)
!771 = !DILocation(line: 387, column: 79, scope: !765)
!772 = !DILocation(line: 387, column: 9, scope: !773)
!773 = !DILexicalBlockFile(scope: !765, file: !145, discriminator: 1)
!774 = !DILocation(line: 387, column: 9, scope: !765)
!775 = !DILocation(line: 388, column: 5, scope: !766)
!776 = !DILocation(line: 388, column: 25, scope: !777)
!777 = !DILexicalBlockFile(scope: !778, file: !145, discriminator: 1)
!778 = distinct !DILexicalBlock(scope: !761, file: !145, line: 388, column: 15)
!779 = !DILocation(line: 388, column: 18, scope: !777)
!780 = !DILocation(line: 388, column: 29, scope: !777)
!781 = !DILocation(line: 388, column: 15, scope: !777)
!782 = !DILocation(line: 390, column: 7, scope: !783)
!783 = distinct !DILexicalBlock(scope: !778, file: !145, line: 388, column: 43)
!784 = !DILocation(line: 393, column: 21, scope: !758)
!785 = !DILocation(line: 393, column: 12, scope: !758)
!786 = !DILocation(line: 393, column: 5, scope: !758)
!787 = !DILocalVariable(name: "pathname", scope: !788, file: !145, line: 395, type: !193)
!788 = distinct !DILexicalBlock(scope: !755, file: !145, line: 394, column: 10)
!789 = !DILocation(line: 395, column: 11, scope: !788)
!790 = !DILocation(line: 397, column: 32, scope: !788)
!791 = !DILocation(line: 397, column: 25, scope: !788)
!792 = !DILocation(line: 397, column: 37, scope: !788)
!793 = !DILocation(line: 397, column: 16, scope: !794)
!794 = !DILexicalBlockFile(scope: !788, file: !145, discriminator: 1)
!795 = !DILocation(line: 397, column: 14, scope: !788)
!796 = !DILocation(line: 398, column: 12, scope: !788)
!797 = !DILocation(line: 398, column: 22, scope: !788)
!798 = !DILocation(line: 398, column: 5, scope: !788)
!799 = !DILocation(line: 399, column: 30, scope: !788)
!800 = !DILocation(line: 399, column: 5, scope: !788)
!801 = !DILocation(line: 400, column: 12, scope: !788)
!802 = !DILocation(line: 400, column: 5, scope: !788)
!803 = !DILocation(line: 402, column: 12, scope: !788)
!804 = !DILocation(line: 402, column: 5, scope: !788)
!805 = !DILocation(line: 404, column: 1, scope: !747)
!806 = distinct !DISubprogram(name: "check_control_area", scope: !145, file: !145, line: 350, type: !807, isLocal: true, isDefinition: true, scopeLine: 351, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !154)
!807 = !DISubroutineType(types: !808)
!808 = !{!283, !151, !151}
!809 = !DILocalVariable(name: "ctrldir", arg: 1, scope: !806, file: !145, line: 350, type: !151)
!810 = !DILocation(line: 350, column: 32, scope: !806)
!811 = !DILocalVariable(name: "rootdir", arg: 2, scope: !806, file: !145, line: 350, type: !151)
!812 = !DILocation(line: 350, column: 53, scope: !806)
!813 = !DILocalVariable(name: "pkg", scope: !806, file: !145, line: 352, type: !283)
!814 = !DILocation(line: 352, column: 19, scope: !806)
!815 = !DILocalVariable(name: "warns", scope: !806, file: !145, line: 353, type: !148)
!816 = !DILocation(line: 353, column: 7, scope: !806)
!817 = !DILocation(line: 356, column: 28, scope: !806)
!818 = !DILocation(line: 356, column: 9, scope: !806)
!819 = !DILocation(line: 356, column: 7, scope: !806)
!820 = !DILocation(line: 357, column: 20, scope: !806)
!821 = !DILocation(line: 357, column: 3, scope: !806)
!822 = !DILocation(line: 358, column: 19, scope: !806)
!823 = !DILocation(line: 358, column: 28, scope: !806)
!824 = !DILocation(line: 358, column: 3, scope: !806)
!825 = !DILocation(line: 360, column: 11, scope: !806)
!826 = !DILocation(line: 360, column: 9, scope: !806)
!827 = !DILocation(line: 361, column: 7, scope: !828)
!828 = distinct !DILexicalBlock(scope: !806, file: !145, line: 361, column: 7)
!829 = !DILocation(line: 361, column: 7, scope: !806)
!830 = !DILocation(line: 362, column: 121, scope: !828)
!831 = !DILocation(line: 362, column: 13, scope: !828)
!832 = !DILocation(line: 364, column: 13, scope: !828)
!833 = !DILocation(line: 362, column: 5, scope: !834)
!834 = !DILexicalBlockFile(scope: !828, file: !145, discriminator: 1)
!835 = !DILocation(line: 362, column: 5, scope: !828)
!836 = !DILocation(line: 366, column: 10, scope: !806)
!837 = !DILocation(line: 366, column: 3, scope: !806)
!838 = distinct !DISubprogram(name: "gen_dest_pathname_from_pkg", scope: !145, file: !145, line: 412, type: !839, isLocal: true, isDefinition: true, scopeLine: 413, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !154)
!839 = !DISubroutineType(types: !840)
!840 = !{!193, !151, !283}
!841 = !DILocalVariable(name: "dir", arg: 1, scope: !838, file: !145, line: 412, type: !151)
!842 = !DILocation(line: 412, column: 40, scope: !838)
!843 = !DILocalVariable(name: "pkg", arg: 2, scope: !838, file: !145, line: 412, type: !283)
!844 = !DILocation(line: 412, column: 61, scope: !838)
!845 = !DILocation(line: 414, column: 35, scope: !838)
!846 = !DILocation(line: 414, column: 40, scope: !838)
!847 = !DILocation(line: 414, column: 45, scope: !838)
!848 = !DILocation(line: 414, column: 50, scope: !838)
!849 = !DILocation(line: 415, column: 35, scope: !838)
!850 = !DILocation(line: 415, column: 40, scope: !838)
!851 = !DILocation(line: 415, column: 50, scope: !838)
!852 = !DILocation(line: 415, column: 18, scope: !838)
!853 = !DILocation(line: 416, column: 18, scope: !838)
!854 = !DILocation(line: 416, column: 23, scope: !838)
!855 = !DILocation(line: 416, column: 33, scope: !838)
!856 = !DILocation(line: 416, column: 39, scope: !838)
!857 = !DILocation(line: 414, column: 10, scope: !838)
!858 = !DILocation(line: 414, column: 3, scope: !838)
!859 = distinct !DISubprogram(name: "parse_timestamp", scope: !145, file: !145, line: 493, type: !860, isLocal: true, isDefinition: true, scopeLine: 494, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !154)
!860 = !DISubroutineType(types: !861)
!861 = !{!179, !151}
!862 = !DILocalVariable(name: "value", arg: 1, scope: !859, file: !145, line: 493, type: !151)
!863 = !DILocation(line: 493, column: 29, scope: !859)
!864 = !DILocalVariable(name: "timestamp", scope: !859, file: !145, line: 495, type: !179)
!865 = !DILocation(line: 495, column: 10, scope: !859)
!866 = !DILocalVariable(name: "end", scope: !859, file: !145, line: 496, type: !193)
!867 = !DILocation(line: 496, column: 9, scope: !859)
!868 = !DILocation(line: 498, column: 4, scope: !859)
!869 = !DILocation(line: 498, column: 8, scope: !859)
!870 = !DILocation(line: 499, column: 22, scope: !859)
!871 = !DILocation(line: 499, column: 15, scope: !859)
!872 = !DILocation(line: 499, column: 13, scope: !859)
!873 = !DILocation(line: 500, column: 7, scope: !874)
!874 = distinct !DILexicalBlock(scope: !859, file: !145, line: 500, column: 7)
!875 = !DILocation(line: 500, column: 16, scope: !874)
!876 = !DILocation(line: 500, column: 13, scope: !874)
!877 = !DILocation(line: 500, column: 20, scope: !874)
!878 = !DILocation(line: 500, column: 24, scope: !879)
!879 = !DILexicalBlockFile(scope: !874, file: !145, discriminator: 1)
!880 = !DILocation(line: 500, column: 23, scope: !879)
!881 = !DILocation(line: 500, column: 28, scope: !879)
!882 = !DILocation(line: 500, column: 32, scope: !883)
!883 = !DILexicalBlockFile(scope: !874, file: !145, discriminator: 2)
!884 = !DILocation(line: 500, column: 31, scope: !883)
!885 = !DILocation(line: 500, column: 36, scope: !883)
!886 = !DILocation(line: 500, column: 7, scope: !883)
!887 = !DILocation(line: 501, column: 13, scope: !874)
!888 = !DILocation(line: 501, column: 60, scope: !874)
!889 = !DILocation(line: 501, column: 5, scope: !879)
!890 = !DILocation(line: 501, column: 5, scope: !874)
!891 = !DILocation(line: 503, column: 10, scope: !859)
!892 = !DILocation(line: 503, column: 3, scope: !859)
!893 = distinct !DISubprogram(name: "tarball_pack", scope: !145, file: !145, line: 431, type: !894, isLocal: true, isDefinition: true, scopeLine: 434, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !154)
!894 = !DISubroutineType(types: !895)
!895 = !{null, !151, !896, !900, !901, !148}
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64, align: 64)
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "filenames_feed_func", file: !145, line: 419, baseType: !898)
!898 = !DISubroutineType(types: !899)
!899 = !{null, !151, !148}
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64, align: 64)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64, align: 64)
!902 = !DILocalVariable(name: "dir", arg: 1, scope: !893, file: !145, line: 431, type: !151)
!903 = !DILocation(line: 431, column: 26, scope: !893)
!904 = !DILocalVariable(name: "tar_filenames_feeder", arg: 2, scope: !893, file: !145, line: 431, type: !896)
!905 = !DILocation(line: 431, column: 52, scope: !893)
!906 = !DILocalVariable(name: "options", arg: 3, scope: !893, file: !145, line: 432, type: !900)
!907 = !DILocation(line: 432, column: 39, scope: !893)
!908 = !DILocalVariable(name: "tar_compress_params", arg: 4, scope: !893, file: !145, line: 433, type: !901)
!909 = !DILocation(line: 433, column: 38, scope: !893)
!910 = !DILocalVariable(name: "fd_out", arg: 5, scope: !893, file: !145, line: 433, type: !148)
!911 = !DILocation(line: 433, column: 63, scope: !893)
!912 = !DILocalVariable(name: "pipe_filenames", scope: !893, file: !145, line: 435, type: !913)
!913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 64, align: 32, elements: !914)
!914 = !{!915}
!915 = !DISubrange(count: 2)
!916 = !DILocation(line: 435, column: 7, scope: !893)
!917 = !DILocalVariable(name: "pipe_tarball", scope: !893, file: !145, line: 435, type: !913)
!918 = !DILocation(line: 435, column: 26, scope: !893)
!919 = !DILocalVariable(name: "pid_tar", scope: !893, file: !145, line: 436, type: !920)
!920 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !203, line: 98, baseType: !921)
!921 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !182, line: 133, baseType: !148)
!922 = !DILocation(line: 436, column: 9, scope: !893)
!923 = !DILocalVariable(name: "pid_comp", scope: !893, file: !145, line: 436, type: !920)
!924 = !DILocation(line: 436, column: 18, scope: !893)
!925 = !DILocation(line: 439, column: 10, scope: !893)
!926 = !DILocation(line: 439, column: 3, scope: !893)
!927 = !DILocation(line: 440, column: 10, scope: !893)
!928 = !DILocation(line: 440, column: 3, scope: !893)
!929 = !DILocation(line: 441, column: 13, scope: !893)
!930 = !DILocation(line: 441, column: 11, scope: !893)
!931 = !DILocation(line: 442, column: 7, scope: !932)
!932 = distinct !DILexicalBlock(scope: !893, file: !145, line: 442, column: 7)
!933 = !DILocation(line: 442, column: 15, scope: !932)
!934 = !DILocation(line: 442, column: 7, scope: !893)
!935 = !DILocalVariable(name: "cmd", scope: !936, file: !145, line: 443, type: !937)
!936 = distinct !DILexicalBlock(scope: !932, file: !145, line: 442, column: 21)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "command", file: !938, line: 37, size: 256, align: 64, elements: !939)
!938 = !DIFile(filename: "../lib/dpkg/command.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-deb--dpkg-deb")
!939 = !{!940, !941, !942, !943, !944}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !937, file: !938, line: 39, baseType: !151, size: 64, align: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !937, file: !938, line: 41, baseType: !151, size: 64, align: 64, offset: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !937, file: !938, line: 42, baseType: !148, size: 32, align: 32, offset: 128)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "argv_size", scope: !937, file: !938, line: 43, baseType: !148, size: 32, align: 32, offset: 160)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !937, file: !938, line: 44, baseType: !945, size: 64, align: 64, offset: 192)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64, align: 64)
!946 = !DILocation(line: 443, column: 20, scope: !936)
!947 = !DILocalVariable(name: "mtime", scope: !936, file: !145, line: 444, type: !948)
!948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 400, align: 8, elements: !949)
!949 = !{!950}
!950 = !DISubrange(count: 50)
!951 = !DILocation(line: 444, column: 10, scope: !936)
!952 = !DILocation(line: 446, column: 12, scope: !936)
!953 = !DILocation(line: 446, column: 5, scope: !936)
!954 = !DILocation(line: 447, column: 11, scope: !936)
!955 = !DILocation(line: 447, column: 5, scope: !936)
!956 = !DILocation(line: 448, column: 11, scope: !936)
!957 = !DILocation(line: 448, column: 5, scope: !936)
!958 = !DILocation(line: 449, column: 12, scope: !936)
!959 = !DILocation(line: 449, column: 5, scope: !936)
!960 = !DILocation(line: 450, column: 11, scope: !936)
!961 = !DILocation(line: 450, column: 5, scope: !936)
!962 = !DILocation(line: 451, column: 11, scope: !936)
!963 = !DILocation(line: 451, column: 5, scope: !936)
!964 = !DILocation(line: 453, column: 15, scope: !965)
!965 = distinct !DILexicalBlock(scope: !936, file: !145, line: 453, column: 9)
!966 = !DILocation(line: 453, column: 9, scope: !965)
!967 = !DILocation(line: 453, column: 9, scope: !936)
!968 = !DILocation(line: 454, column: 15, scope: !965)
!969 = !DILocation(line: 454, column: 55, scope: !965)
!970 = !DILocation(line: 454, column: 7, scope: !971)
!971 = !DILexicalBlockFile(scope: !965, file: !145, discriminator: 1)
!972 = !DILocation(line: 454, column: 7, scope: !965)
!973 = !DILocation(line: 456, column: 14, scope: !936)
!974 = !DILocation(line: 456, column: 44, scope: !936)
!975 = !DILocation(line: 456, column: 53, scope: !936)
!976 = !DILocation(line: 456, column: 5, scope: !936)
!977 = !DILocation(line: 458, column: 5, scope: !936)
!978 = !DILocation(line: 460, column: 39, scope: !936)
!979 = !DILocation(line: 459, column: 5, scope: !936)
!980 = !DILocation(line: 462, column: 9, scope: !981)
!981 = distinct !DILexicalBlock(scope: !936, file: !145, line: 462, column: 9)
!982 = !DILocation(line: 462, column: 18, scope: !981)
!983 = !DILocation(line: 462, column: 9, scope: !936)
!984 = !DILocation(line: 463, column: 40, scope: !981)
!985 = !DILocation(line: 463, column: 49, scope: !981)
!986 = !DILocation(line: 463, column: 7, scope: !981)
!987 = !DILocation(line: 464, column: 9, scope: !988)
!988 = distinct !DILexicalBlock(scope: !936, file: !145, line: 464, column: 9)
!989 = !DILocation(line: 464, column: 18, scope: !988)
!990 = !DILocation(line: 464, column: 9, scope: !936)
!991 = !DILocation(line: 465, column: 7, scope: !988)
!992 = !DILocation(line: 466, column: 5, scope: !936)
!993 = !DILocation(line: 468, column: 5, scope: !936)
!994 = !DILocation(line: 470, column: 9, scope: !893)
!995 = !DILocation(line: 470, column: 3, scope: !893)
!996 = !DILocation(line: 471, column: 9, scope: !893)
!997 = !DILocation(line: 471, column: 3, scope: !893)
!998 = !DILocation(line: 474, column: 14, scope: !893)
!999 = !DILocation(line: 474, column: 12, scope: !893)
!1000 = !DILocation(line: 475, column: 7, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !893, file: !145, line: 475, column: 7)
!1002 = !DILocation(line: 475, column: 16, scope: !1001)
!1003 = !DILocation(line: 475, column: 7, scope: !893)
!1004 = !DILocation(line: 476, column: 11, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1001, file: !145, line: 475, column: 22)
!1006 = !DILocation(line: 476, column: 5, scope: !1005)
!1007 = !DILocation(line: 477, column: 21, scope: !1005)
!1008 = !DILocation(line: 477, column: 42, scope: !1005)
!1009 = !DILocation(line: 477, column: 59, scope: !1005)
!1010 = !DILocation(line: 478, column: 21, scope: !1005)
!1011 = !DILocation(line: 477, column: 5, scope: !1005)
!1012 = !DILocation(line: 479, column: 5, scope: !1005)
!1013 = !DILocation(line: 481, column: 9, scope: !893)
!1014 = !DILocation(line: 481, column: 3, scope: !893)
!1015 = !DILocation(line: 484, column: 3, scope: !893)
!1016 = !DILocation(line: 484, column: 24, scope: !893)
!1017 = !DILocation(line: 484, column: 29, scope: !893)
!1018 = !DILocation(line: 487, column: 9, scope: !893)
!1019 = !DILocation(line: 487, column: 3, scope: !893)
!1020 = !DILocation(line: 488, column: 16, scope: !893)
!1021 = !DILocation(line: 488, column: 26, scope: !893)
!1022 = !DILocation(line: 488, column: 3, scope: !1023)
!1023 = !DILexicalBlockFile(scope: !893, file: !145, discriminator: 1)
!1024 = !DILocation(line: 489, column: 16, scope: !893)
!1025 = !DILocation(line: 489, column: 3, scope: !893)
!1026 = !DILocation(line: 490, column: 1, scope: !893)
!1027 = distinct !DISubprogram(name: "control_treewalk_feed", scope: !145, file: !145, line: 60, type: !898, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !154)
!1028 = !DILocalVariable(name: "dir", arg: 1, scope: !1027, file: !145, line: 60, type: !151)
!1029 = !DILocation(line: 60, column: 35, scope: !1027)
!1030 = !DILocalVariable(name: "fd_out", arg: 2, scope: !1027, file: !145, line: 60, type: !148)
!1031 = !DILocation(line: 60, column: 44, scope: !1027)
!1032 = !DILocalVariable(name: "tree", scope: !1027, file: !145, line: 62, type: !1033)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64, align: 64)
!1034 = !DICompositeType(tag: DW_TAG_structure_type, name: "treeroot", file: !131, line: 57, flags: DIFlagFwdDecl)
!1035 = !DILocation(line: 62, column: 20, scope: !1027)
!1036 = !DILocalVariable(name: "node", scope: !1027, file: !145, line: 63, type: !1037)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64, align: 64)
!1038 = !DICompositeType(tag: DW_TAG_structure_type, name: "treenode", file: !131, line: 45, flags: DIFlagFwdDecl)
!1039 = !DILocation(line: 63, column: 20, scope: !1027)
!1040 = !DILocation(line: 65, column: 24, scope: !1027)
!1041 = !DILocation(line: 65, column: 10, scope: !1027)
!1042 = !DILocation(line: 65, column: 8, scope: !1027)
!1043 = !DILocation(line: 66, column: 29, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1027, file: !145, line: 66, column: 3)
!1045 = !DILocation(line: 66, column: 15, scope: !1044)
!1046 = !DILocation(line: 66, column: 13, scope: !1044)
!1047 = !DILocation(line: 66, column: 8, scope: !1044)
!1048 = !DILocation(line: 66, column: 36, scope: !1049)
!1049 = !DILexicalBlockFile(scope: !1050, file: !145, discriminator: 1)
!1050 = distinct !DILexicalBlock(scope: !1044, file: !145, line: 66, column: 3)
!1051 = !DILocation(line: 66, column: 3, scope: !1049)
!1052 = !DILocalVariable(name: "nodename", scope: !1053, file: !145, line: 67, type: !193)
!1053 = distinct !DILexicalBlock(scope: !1050, file: !145, line: 66, column: 70)
!1054 = !DILocation(line: 67, column: 11, scope: !1053)
!1055 = !DILocation(line: 69, column: 54, scope: !1053)
!1056 = !DILocation(line: 69, column: 32, scope: !1053)
!1057 = !DILocation(line: 69, column: 16, scope: !1058)
!1058 = !DILexicalBlockFile(scope: !1053, file: !145, discriminator: 1)
!1059 = !DILocation(line: 69, column: 14, scope: !1053)
!1060 = !DILocation(line: 70, column: 18, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1053, file: !145, line: 70, column: 9)
!1062 = !DILocation(line: 70, column: 26, scope: !1061)
!1063 = !DILocation(line: 70, column: 43, scope: !1061)
!1064 = !DILocation(line: 70, column: 36, scope: !1061)
!1065 = !DILocation(line: 70, column: 53, scope: !1061)
!1066 = !DILocation(line: 70, column: 9, scope: !1067)
!1067 = !DILexicalBlockFile(scope: !1061, file: !145, discriminator: 1)
!1068 = !DILocation(line: 70, column: 58, scope: !1061)
!1069 = !DILocation(line: 70, column: 9, scope: !1053)
!1070 = !DILocation(line: 71, column: 15, scope: !1061)
!1071 = !DILocation(line: 72, column: 15, scope: !1061)
!1072 = !DILocation(line: 71, column: 7, scope: !1067)
!1073 = !DILocation(line: 71, column: 7, scope: !1061)
!1074 = !DILocation(line: 73, column: 10, scope: !1053)
!1075 = !DILocation(line: 73, column: 5, scope: !1053)
!1076 = !DILocation(line: 74, column: 3, scope: !1053)
!1077 = !DILocation(line: 66, column: 63, scope: !1078)
!1078 = !DILexicalBlockFile(scope: !1050, file: !145, discriminator: 2)
!1079 = !DILocation(line: 66, column: 49, scope: !1078)
!1080 = !DILocation(line: 66, column: 47, scope: !1078)
!1081 = !DILocation(line: 66, column: 3, scope: !1078)
!1082 = distinct !{!1082, !1083}
!1083 = !DILocation(line: 66, column: 3, scope: !1027)
!1084 = !DILocation(line: 75, column: 18, scope: !1027)
!1085 = !DILocation(line: 75, column: 3, scope: !1027)
!1086 = !DILocation(line: 76, column: 1, scope: !1027)
!1087 = distinct !DISubprogram(name: "file_treewalk_feed", scope: !145, file: !145, line: 153, type: !898, isLocal: true, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !154)
!1088 = !DILocalVariable(name: "dir", arg: 1, scope: !1087, file: !145, line: 153, type: !151)
!1089 = !DILocation(line: 153, column: 32, scope: !1087)
!1090 = !DILocalVariable(name: "fd_out", arg: 2, scope: !1087, file: !145, line: 153, type: !148)
!1091 = !DILocation(line: 153, column: 41, scope: !1087)
!1092 = !DILocalVariable(name: "tree", scope: !1087, file: !145, line: 155, type: !1033)
!1093 = !DILocation(line: 155, column: 20, scope: !1087)
!1094 = !DILocalVariable(name: "node", scope: !1087, file: !145, line: 156, type: !1037)
!1095 = !DILocation(line: 156, column: 20, scope: !1087)
!1096 = !DILocalVariable(name: "fi", scope: !1087, file: !145, line: 157, type: !1097)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64, align: 64)
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_info", file: !145, line: 81, size: 128, align: 64, elements: !1099)
!1099 = !{!1100, !1101}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1098, file: !145, line: 82, baseType: !1097, size: 64, align: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1098, file: !145, line: 83, baseType: !193, size: 64, align: 64, offset: 64)
!1102 = !DILocation(line: 157, column: 21, scope: !1087)
!1103 = !DILocalVariable(name: "symlist", scope: !1087, file: !145, line: 158, type: !1097)
!1104 = !DILocation(line: 158, column: 21, scope: !1087)
!1105 = !DILocalVariable(name: "symlist_end", scope: !1087, file: !145, line: 159, type: !1097)
!1106 = !DILocation(line: 159, column: 21, scope: !1087)
!1107 = !DILocation(line: 161, column: 24, scope: !1087)
!1108 = !DILocation(line: 161, column: 10, scope: !1087)
!1109 = !DILocation(line: 161, column: 8, scope: !1087)
!1110 = !DILocation(line: 162, column: 29, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1087, file: !145, line: 162, column: 3)
!1112 = !DILocation(line: 162, column: 15, scope: !1111)
!1113 = !DILocation(line: 162, column: 13, scope: !1111)
!1114 = !DILocation(line: 162, column: 8, scope: !1111)
!1115 = !DILocation(line: 162, column: 36, scope: !1116)
!1116 = !DILexicalBlockFile(scope: !1117, file: !145, discriminator: 1)
!1117 = distinct !DILexicalBlock(scope: !1111, file: !145, line: 162, column: 3)
!1118 = !DILocation(line: 162, column: 3, scope: !1116)
!1119 = !DILocalVariable(name: "virtname", scope: !1120, file: !145, line: 163, type: !151)
!1120 = distinct !DILexicalBlock(scope: !1117, file: !145, line: 162, column: 71)
!1121 = !DILocation(line: 163, column: 17, scope: !1120)
!1122 = !DILocation(line: 163, column: 50, scope: !1120)
!1123 = !DILocation(line: 163, column: 28, scope: !1120)
!1124 = !DILocalVariable(name: "nodename", scope: !1120, file: !145, line: 164, type: !193)
!1125 = !DILocation(line: 164, column: 11, scope: !1120)
!1126 = !DILocation(line: 166, column: 17, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1120, file: !145, line: 166, column: 9)
!1128 = !DILocation(line: 166, column: 9, scope: !1127)
!1129 = !DILocation(line: 166, column: 55, scope: !1127)
!1130 = !DILocation(line: 166, column: 9, scope: !1120)
!1131 = !DILocation(line: 167, column: 7, scope: !1127)
!1132 = !DILocation(line: 169, column: 32, scope: !1120)
!1133 = !DILocation(line: 169, column: 16, scope: !1120)
!1134 = !DILocation(line: 169, column: 14, scope: !1120)
!1135 = !DILocation(line: 171, column: 16, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1120, file: !145, line: 171, column: 9)
!1137 = !DILocation(line: 171, column: 9, scope: !1136)
!1138 = !DILocation(line: 171, column: 9, scope: !1120)
!1139 = !DILocation(line: 172, column: 14, scope: !1136)
!1140 = !DILocation(line: 172, column: 63, scope: !1136)
!1141 = !DILocation(line: 172, column: 7, scope: !1142)
!1142 = !DILexicalBlockFile(scope: !1136, file: !145, discriminator: 1)
!1143 = !DILocation(line: 172, column: 7, scope: !1136)
!1144 = !DILocation(line: 176, column: 26, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1120, file: !145, line: 176, column: 8)
!1146 = !DILocation(line: 176, column: 8, scope: !1145)
!1147 = !DILocation(line: 176, column: 11, scope: !1145)
!1148 = !DILocation(line: 176, column: 22, scope: !1145)
!1149 = !DILocation(line: 176, column: 8, scope: !1120)
!1150 = !DILocation(line: 177, column: 26, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1145, file: !145, line: 176, column: 42)
!1152 = !DILocation(line: 177, column: 12, scope: !1151)
!1153 = !DILocation(line: 177, column: 10, scope: !1151)
!1154 = !DILocation(line: 178, column: 53, scope: !1151)
!1155 = !DILocation(line: 178, column: 7, scope: !1151)
!1156 = !DILocation(line: 179, column: 5, scope: !1151)
!1157 = !DILocation(line: 180, column: 20, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1159, file: !145, line: 180, column: 11)
!1159 = distinct !DILexicalBlock(scope: !1145, file: !145, line: 179, column: 12)
!1160 = !DILocation(line: 180, column: 28, scope: !1158)
!1161 = !DILocation(line: 180, column: 45, scope: !1158)
!1162 = !DILocation(line: 180, column: 38, scope: !1158)
!1163 = !DILocation(line: 180, column: 55, scope: !1158)
!1164 = !DILocation(line: 180, column: 11, scope: !1165)
!1165 = !DILexicalBlockFile(scope: !1158, file: !145, discriminator: 1)
!1166 = !DILocation(line: 180, column: 60, scope: !1158)
!1167 = !DILocation(line: 180, column: 11, scope: !1159)
!1168 = !DILocation(line: 181, column: 17, scope: !1158)
!1169 = !DILocation(line: 182, column: 17, scope: !1158)
!1170 = !DILocation(line: 181, column: 9, scope: !1165)
!1171 = !DILocation(line: 181, column: 9, scope: !1158)
!1172 = !DILocation(line: 185, column: 10, scope: !1120)
!1173 = !DILocation(line: 185, column: 5, scope: !1120)
!1174 = !DILocation(line: 186, column: 3, scope: !1120)
!1175 = !DILocation(line: 162, column: 64, scope: !1176)
!1176 = !DILexicalBlockFile(scope: !1117, file: !145, discriminator: 2)
!1177 = !DILocation(line: 162, column: 50, scope: !1176)
!1178 = !DILocation(line: 162, column: 48, scope: !1176)
!1179 = !DILocation(line: 162, column: 3, scope: !1176)
!1180 = distinct !{!1180, !1181}
!1181 = !DILocation(line: 162, column: 3, scope: !1087)
!1182 = !DILocation(line: 187, column: 18, scope: !1087)
!1183 = !DILocation(line: 187, column: 3, scope: !1087)
!1184 = !DILocation(line: 189, column: 13, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1087, file: !145, line: 189, column: 3)
!1186 = !DILocation(line: 189, column: 11, scope: !1185)
!1187 = !DILocation(line: 189, column: 8, scope: !1185)
!1188 = !DILocation(line: 189, column: 22, scope: !1189)
!1189 = !DILexicalBlockFile(scope: !1190, file: !145, discriminator: 1)
!1190 = distinct !DILexicalBlock(scope: !1185, file: !145, line: 189, column: 3)
!1191 = !DILocation(line: 189, column: 3, scope: !1189)
!1192 = !DILocation(line: 190, column: 18, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1190, file: !145, line: 190, column: 9)
!1194 = !DILocation(line: 190, column: 26, scope: !1193)
!1195 = !DILocation(line: 190, column: 30, scope: !1193)
!1196 = !DILocation(line: 190, column: 41, scope: !1193)
!1197 = !DILocation(line: 190, column: 45, scope: !1193)
!1198 = !DILocation(line: 190, column: 34, scope: !1193)
!1199 = !DILocation(line: 190, column: 49, scope: !1193)
!1200 = !DILocation(line: 190, column: 9, scope: !1201)
!1201 = !DILexicalBlockFile(scope: !1193, file: !145, discriminator: 2)
!1202 = !DILocation(line: 190, column: 54, scope: !1193)
!1203 = !DILocation(line: 190, column: 9, scope: !1190)
!1204 = !DILocation(line: 191, column: 15, scope: !1193)
!1205 = !DILocation(line: 191, column: 69, scope: !1206)
!1206 = !DILexicalBlockFile(scope: !1193, file: !145, discriminator: 1)
!1207 = !DILocation(line: 191, column: 7, scope: !1201)
!1208 = !DILocation(line: 191, column: 7, scope: !1193)
!1209 = !DILocation(line: 190, column: 56, scope: !1206)
!1210 = !DILocation(line: 189, column: 31, scope: !1211)
!1211 = !DILexicalBlockFile(scope: !1190, file: !145, discriminator: 2)
!1212 = !DILocation(line: 189, column: 35, scope: !1211)
!1213 = !DILocation(line: 189, column: 29, scope: !1211)
!1214 = !DILocation(line: 189, column: 3, scope: !1211)
!1215 = distinct !{!1215, !1216}
!1216 = !DILocation(line: 189, column: 3, scope: !1087)
!1217 = !DILocation(line: 193, column: 23, scope: !1087)
!1218 = !DILocation(line: 193, column: 3, scope: !1087)
!1219 = !DILocation(line: 194, column: 1, scope: !1087)
!1220 = distinct !DISubprogram(name: "check_control_file", scope: !145, file: !145, line: 320, type: !1221, isLocal: true, isDefinition: true, scopeLine: 321, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !154)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{!283, !151}
!1223 = !DILocalVariable(name: "ctrldir", arg: 1, scope: !1220, file: !145, line: 320, type: !151)
!1224 = !DILocation(line: 320, column: 32, scope: !1220)
!1225 = !DILocalVariable(name: "pkg", scope: !1220, file: !145, line: 322, type: !283)
!1226 = !DILocation(line: 322, column: 19, scope: !1220)
!1227 = !DILocalVariable(name: "controlfile", scope: !1220, file: !145, line: 323, type: !193)
!1228 = !DILocation(line: 323, column: 9, scope: !1220)
!1229 = !DILocation(line: 325, column: 34, scope: !1220)
!1230 = !DILocation(line: 325, column: 17, scope: !1220)
!1231 = !DILocation(line: 325, column: 15, scope: !1220)
!1232 = !DILocation(line: 326, column: 11, scope: !1220)
!1233 = !DILocation(line: 326, column: 3, scope: !1220)
!1234 = !DILocation(line: 328, column: 14, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1220, file: !145, line: 328, column: 7)
!1236 = !DILocation(line: 328, column: 19, scope: !1235)
!1237 = !DILocation(line: 328, column: 24, scope: !1235)
!1238 = !DILocation(line: 328, column: 7, scope: !1235)
!1239 = !DILocation(line: 329, column: 14, scope: !1235)
!1240 = !DILocation(line: 329, column: 19, scope: !1235)
!1241 = !DILocation(line: 329, column: 24, scope: !1235)
!1242 = !DILocation(line: 329, column: 7, scope: !1235)
!1243 = !DILocation(line: 328, column: 73, scope: !1235)
!1244 = !DILocation(line: 328, column: 7, scope: !1220)
!1245 = !DILocation(line: 330, column: 12, scope: !1235)
!1246 = !DILocation(line: 330, column: 5, scope: !1247)
!1247 = !DILexicalBlockFile(scope: !1235, file: !145, discriminator: 1)
!1248 = !DILocation(line: 330, column: 5, scope: !1235)
!1249 = !DILocation(line: 331, column: 7, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1220, file: !145, line: 331, column: 7)
!1251 = !DILocation(line: 331, column: 12, scope: !1250)
!1252 = !DILocation(line: 331, column: 22, scope: !1250)
!1253 = !DILocation(line: 331, column: 28, scope: !1250)
!1254 = !DILocation(line: 331, column: 33, scope: !1250)
!1255 = !DILocation(line: 331, column: 51, scope: !1250)
!1256 = !DILocation(line: 332, column: 7, scope: !1250)
!1257 = !DILocation(line: 332, column: 12, scope: !1250)
!1258 = !DILocation(line: 332, column: 22, scope: !1250)
!1259 = !DILocation(line: 332, column: 28, scope: !1250)
!1260 = !DILocation(line: 332, column: 33, scope: !1250)
!1261 = !DILocation(line: 331, column: 7, scope: !1262)
!1262 = !DILexicalBlockFile(scope: !1220, file: !145, discriminator: 1)
!1263 = !DILocation(line: 333, column: 12, scope: !1250)
!1264 = !DILocation(line: 333, column: 5, scope: !1265)
!1265 = !DILexicalBlockFile(scope: !1250, file: !145, discriminator: 1)
!1266 = !DILocation(line: 333, column: 5, scope: !1250)
!1267 = !DILocation(line: 334, column: 7, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1220, file: !145, line: 334, column: 7)
!1269 = !DILocation(line: 334, column: 12, scope: !1268)
!1270 = !DILocation(line: 334, column: 21, scope: !1268)
!1271 = !DILocation(line: 334, column: 7, scope: !1220)
!1272 = !DILocation(line: 335, column: 13, scope: !1268)
!1273 = !DILocation(line: 336, column: 13, scope: !1268)
!1274 = !DILocation(line: 336, column: 26, scope: !1268)
!1275 = !DILocation(line: 336, column: 31, scope: !1268)
!1276 = !DILocation(line: 335, column: 5, scope: !1277)
!1277 = !DILexicalBlockFile(scope: !1268, file: !145, discriminator: 1)
!1278 = !DILocation(line: 335, column: 5, scope: !1268)
!1279 = !DILocation(line: 338, column: 8, scope: !1220)
!1280 = !DILocation(line: 338, column: 3, scope: !1220)
!1281 = !DILocation(line: 340, column: 10, scope: !1220)
!1282 = !DILocation(line: 340, column: 3, scope: !1220)
!1283 = distinct !DISubprogram(name: "check_file_perms", scope: !145, file: !145, line: 209, type: !1284, isLocal: true, isDefinition: true, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !154)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{null, !151}
!1286 = !DILocalVariable(name: "ctrldir", arg: 1, scope: !1283, file: !145, line: 209, type: !151)
!1287 = !DILocation(line: 209, column: 30, scope: !1283)
!1288 = !DILocalVariable(name: "path", scope: !1283, file: !145, line: 211, type: !1289)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varbuf", file: !1290, line: 55, size: 192, align: 64, elements: !1291)
!1290 = !DIFile(filename: "../lib/dpkg/varbuf.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-deb--dpkg-deb")
!1291 = !{!1292, !1295, !1296}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1289, file: !1290, line: 56, baseType: !1293, size: 64, align: 64)
!1293 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1294, line: 216, baseType: !141)
!1294 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-deb--dpkg-deb")
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1289, file: !1290, line: 56, baseType: !1293, size: 64, align: 64, offset: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1289, file: !1290, line: 57, baseType: !193, size: 64, align: 64, offset: 128)
!1297 = !DILocation(line: 211, column: 17, scope: !1283)
!1298 = !DILocalVariable(name: "mscriptp", scope: !1283, file: !145, line: 212, type: !149)
!1299 = !DILocation(line: 212, column: 22, scope: !1283)
!1300 = !DILocalVariable(name: "mscriptstab", scope: !1283, file: !145, line: 213, type: !529)
!1301 = !DILocation(line: 213, column: 15, scope: !1283)
!1302 = !DILocation(line: 215, column: 31, scope: !1283)
!1303 = !DILocation(line: 215, column: 3, scope: !1283)
!1304 = !DILocation(line: 216, column: 18, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1283, file: !145, line: 216, column: 7)
!1306 = !DILocation(line: 216, column: 7, scope: !1305)
!1307 = !DILocation(line: 216, column: 7, scope: !1283)
!1308 = !DILocation(line: 217, column: 13, scope: !1305)
!1309 = !DILocation(line: 217, column: 5, scope: !1310)
!1310 = !DILexicalBlockFile(scope: !1305, file: !145, discriminator: 1)
!1311 = !DILocation(line: 217, column: 5, scope: !1305)
!1312 = !DILocation(line: 218, column: 19, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1283, file: !145, line: 218, column: 7)
!1314 = !DILocation(line: 218, column: 10, scope: !1313)
!1315 = !DILocation(line: 218, column: 21, scope: !1313)
!1316 = !DILocation(line: 218, column: 7, scope: !1283)
!1317 = !DILocation(line: 219, column: 12, scope: !1313)
!1318 = !DILocation(line: 219, column: 5, scope: !1319)
!1319 = !DILexicalBlockFile(scope: !1313, file: !145, discriminator: 1)
!1320 = !DILocation(line: 219, column: 5, scope: !1313)
!1321 = !DILocation(line: 220, column: 20, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1283, file: !145, line: 220, column: 7)
!1323 = !DILocation(line: 220, column: 28, scope: !1322)
!1324 = !DILocation(line: 220, column: 37, scope: !1322)
!1325 = !DILocation(line: 220, column: 7, scope: !1283)
!1326 = !DILocation(line: 221, column: 12, scope: !1322)
!1327 = !DILocation(line: 223, column: 40, scope: !1322)
!1328 = !DILocation(line: 223, column: 48, scope: !1322)
!1329 = !DILocation(line: 223, column: 12, scope: !1322)
!1330 = !DILocation(line: 221, column: 5, scope: !1331)
!1331 = !DILexicalBlockFile(scope: !1322, file: !145, discriminator: 1)
!1332 = !DILocation(line: 221, column: 5, scope: !1322)
!1333 = !DILocation(line: 225, column: 17, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1283, file: !145, line: 225, column: 3)
!1335 = !DILocation(line: 225, column: 8, scope: !1334)
!1336 = !DILocation(line: 225, column: 39, scope: !1337)
!1337 = !DILexicalBlockFile(scope: !1338, file: !145, discriminator: 1)
!1338 = distinct !DILexicalBlock(scope: !1334, file: !145, line: 225, column: 3)
!1339 = !DILocation(line: 225, column: 38, scope: !1337)
!1340 = !DILocation(line: 225, column: 3, scope: !1337)
!1341 = !DILocation(line: 226, column: 5, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1338, file: !145, line: 225, column: 61)
!1343 = !DILocation(line: 227, column: 35, scope: !1342)
!1344 = !DILocation(line: 227, column: 45, scope: !1342)
!1345 = !DILocation(line: 227, column: 44, scope: !1342)
!1346 = !DILocation(line: 227, column: 5, scope: !1342)
!1347 = !DILocation(line: 228, column: 21, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1342, file: !145, line: 228, column: 9)
!1349 = !DILocation(line: 228, column: 10, scope: !1348)
!1350 = !DILocation(line: 228, column: 9, scope: !1342)
!1351 = !DILocation(line: 229, column: 22, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1353, file: !145, line: 229, column: 10)
!1353 = distinct !DILexicalBlock(scope: !1348, file: !145, line: 228, column: 41)
!1354 = !DILocation(line: 229, column: 13, scope: !1352)
!1355 = !DILocation(line: 229, column: 24, scope: !1352)
!1356 = !DILocation(line: 229, column: 10, scope: !1353)
!1357 = !DILocation(line: 230, column: 9, scope: !1352)
!1358 = !DILocation(line: 231, column: 23, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1353, file: !145, line: 231, column: 11)
!1360 = !DILocation(line: 231, column: 14, scope: !1359)
!1361 = !DILocation(line: 231, column: 25, scope: !1359)
!1362 = !DILocation(line: 231, column: 11, scope: !1353)
!1363 = !DILocation(line: 232, column: 16, scope: !1359)
!1364 = !DILocation(line: 233, column: 17, scope: !1359)
!1365 = !DILocation(line: 233, column: 16, scope: !1359)
!1366 = !DILocation(line: 232, column: 9, scope: !1367)
!1367 = !DILexicalBlockFile(scope: !1359, file: !145, discriminator: 1)
!1368 = !DILocation(line: 232, column: 9, scope: !1359)
!1369 = !DILocation(line: 234, column: 24, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1353, file: !145, line: 234, column: 11)
!1371 = !DILocation(line: 234, column: 32, scope: !1370)
!1372 = !DILocation(line: 234, column: 41, scope: !1370)
!1373 = !DILocation(line: 234, column: 11, scope: !1353)
!1374 = !DILocation(line: 235, column: 16, scope: !1370)
!1375 = !DILocation(line: 237, column: 17, scope: !1370)
!1376 = !DILocation(line: 237, column: 16, scope: !1370)
!1377 = !DILocation(line: 237, column: 55, scope: !1370)
!1378 = !DILocation(line: 237, column: 63, scope: !1370)
!1379 = !DILocation(line: 237, column: 27, scope: !1370)
!1380 = !DILocation(line: 235, column: 9, scope: !1381)
!1381 = !DILexicalBlockFile(scope: !1370, file: !145, discriminator: 1)
!1382 = !DILocation(line: 235, column: 9, scope: !1370)
!1383 = !DILocation(line: 238, column: 5, scope: !1353)
!1384 = !DILocation(line: 238, column: 17, scope: !1385)
!1385 = !DILexicalBlockFile(scope: !1386, file: !145, discriminator: 1)
!1386 = distinct !DILexicalBlock(scope: !1348, file: !145, line: 238, column: 15)
!1387 = !DILocation(line: 238, column: 16, scope: !1385)
!1388 = !DILocation(line: 238, column: 21, scope: !1385)
!1389 = !DILocation(line: 238, column: 15, scope: !1385)
!1390 = !DILocation(line: 239, column: 15, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1386, file: !145, line: 238, column: 32)
!1392 = !DILocation(line: 239, column: 71, scope: !1391)
!1393 = !DILocation(line: 239, column: 70, scope: !1391)
!1394 = !DILocation(line: 239, column: 7, scope: !1395)
!1395 = !DILexicalBlockFile(scope: !1391, file: !145, discriminator: 1)
!1396 = !DILocation(line: 239, column: 7, scope: !1391)
!1397 = !DILocation(line: 241, column: 3, scope: !1342)
!1398 = !DILocation(line: 225, column: 57, scope: !1399)
!1399 = !DILexicalBlockFile(scope: !1338, file: !145, discriminator: 2)
!1400 = !DILocation(line: 225, column: 3, scope: !1399)
!1401 = distinct !{!1401, !1402}
!1402 = !DILocation(line: 225, column: 3, scope: !1283)
!1403 = !DILocation(line: 243, column: 3, scope: !1283)
!1404 = !DILocation(line: 244, column: 1, scope: !1283)
!1405 = distinct !DISubprogram(name: "check_conffiles", scope: !145, file: !145, line: 250, type: !1406, isLocal: true, isDefinition: true, scopeLine: 251, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !154)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{null, !151, !151}
!1408 = !DILocalVariable(name: "ctrldir", arg: 1, scope: !1405, file: !145, line: 250, type: !151)
!1409 = !DILocation(line: 250, column: 29, scope: !1405)
!1410 = !DILocalVariable(name: "rootdir", arg: 2, scope: !1405, file: !145, line: 250, type: !151)
!1411 = !DILocation(line: 250, column: 50, scope: !1405)
!1412 = !DILocalVariable(name: "cf", scope: !1405, file: !145, line: 252, type: !1413)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64, align: 64)
!1414 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1415, line: 48, baseType: !1416)
!1415 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-deb--dpkg-deb")
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1417, line: 241, size: 1728, align: 64, elements: !1418)
!1417 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-deb--dpkg-deb")
!1418 = !{!1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1439, !1440, !1441, !1442, !1443, !1445, !1447, !1451, !1454, !1456, !1457, !1458, !1459, !1460, !1461, !1462}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1416, file: !1417, line: 242, baseType: !148, size: 32, align: 32)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1416, file: !1417, line: 247, baseType: !193, size: 64, align: 64, offset: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1416, file: !1417, line: 248, baseType: !193, size: 64, align: 64, offset: 128)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1416, file: !1417, line: 249, baseType: !193, size: 64, align: 64, offset: 192)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1416, file: !1417, line: 250, baseType: !193, size: 64, align: 64, offset: 256)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1416, file: !1417, line: 251, baseType: !193, size: 64, align: 64, offset: 320)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1416, file: !1417, line: 252, baseType: !193, size: 64, align: 64, offset: 384)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1416, file: !1417, line: 253, baseType: !193, size: 64, align: 64, offset: 448)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1416, file: !1417, line: 254, baseType: !193, size: 64, align: 64, offset: 512)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1416, file: !1417, line: 256, baseType: !193, size: 64, align: 64, offset: 576)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1416, file: !1417, line: 257, baseType: !193, size: 64, align: 64, offset: 640)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1416, file: !1417, line: 258, baseType: !193, size: 64, align: 64, offset: 704)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1416, file: !1417, line: 260, baseType: !1432, size: 64, align: 64, offset: 768)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64, align: 64)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1417, line: 156, size: 192, align: 64, elements: !1434)
!1434 = !{!1435, !1436, !1438}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1433, file: !1417, line: 157, baseType: !1432, size: 64, align: 64)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1433, file: !1417, line: 158, baseType: !1437, size: 64, align: 64, offset: 64)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64, align: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1433, file: !1417, line: 162, baseType: !148, size: 32, align: 32, offset: 128)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1416, file: !1417, line: 262, baseType: !1437, size: 64, align: 64, offset: 832)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1416, file: !1417, line: 264, baseType: !148, size: 32, align: 32, offset: 896)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1416, file: !1417, line: 268, baseType: !148, size: 32, align: 32, offset: 928)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1416, file: !1417, line: 270, baseType: !209, size: 64, align: 64, offset: 960)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1416, file: !1417, line: 274, baseType: !1444, size: 16, align: 16, offset: 1024)
!1444 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1416, file: !1417, line: 275, baseType: !1446, size: 8, align: 8, offset: 1040)
!1446 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1416, file: !1417, line: 276, baseType: !1448, size: 8, align: 8, offset: 1048)
!1448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 8, align: 8, elements: !1449)
!1449 = !{!1450}
!1450 = !DISubrange(count: 1)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1416, file: !1417, line: 280, baseType: !1452, size: 64, align: 64, offset: 1088)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64, align: 64)
!1453 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1417, line: 150, baseType: null)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1416, file: !1417, line: 289, baseType: !1455, size: 64, align: 64, offset: 1152)
!1455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !182, line: 132, baseType: !140)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1416, file: !1417, line: 297, baseType: !137, size: 64, align: 64, offset: 1216)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1416, file: !1417, line: 298, baseType: !137, size: 64, align: 64, offset: 1280)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1416, file: !1417, line: 299, baseType: !137, size: 64, align: 64, offset: 1344)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1416, file: !1417, line: 300, baseType: !137, size: 64, align: 64, offset: 1408)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1416, file: !1417, line: 302, baseType: !1293, size: 64, align: 64, offset: 1472)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1416, file: !1417, line: 303, baseType: !148, size: 32, align: 32, offset: 1536)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1416, file: !1417, line: 305, baseType: !1463, size: 160, align: 8, offset: 1568)
!1463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 160, align: 8, elements: !1464)
!1464 = !{!1465}
!1465 = !DISubrange(count: 20)
!1466 = !DILocation(line: 252, column: 9, scope: !1405)
!1467 = !DILocalVariable(name: "controlfile", scope: !1405, file: !145, line: 253, type: !1289)
!1468 = !DILocation(line: 253, column: 17, scope: !1405)
!1469 = !DILocalVariable(name: "conffilename", scope: !1405, file: !145, line: 254, type: !1470)
!1470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 8008, align: 8, elements: !1471)
!1471 = !{!1472}
!1472 = !DISubrange(count: 1001)
!1473 = !DILocation(line: 254, column: 8, scope: !1405)
!1474 = !DILocalVariable(name: "conffiles_head", scope: !1405, file: !145, line: 255, type: !1097)
!1475 = !DILocation(line: 255, column: 21, scope: !1405)
!1476 = !DILocalVariable(name: "conffiles_tail", scope: !1405, file: !145, line: 256, type: !1097)
!1477 = !DILocation(line: 256, column: 21, scope: !1405)
!1478 = !DILocation(line: 258, column: 40, scope: !1405)
!1479 = !DILocation(line: 258, column: 3, scope: !1405)
!1480 = !DILocation(line: 260, column: 26, scope: !1405)
!1481 = !DILocation(line: 260, column: 8, scope: !1405)
!1482 = !DILocation(line: 260, column: 6, scope: !1405)
!1483 = !DILocation(line: 261, column: 7, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1405, file: !145, line: 261, column: 7)
!1485 = !DILocation(line: 261, column: 10, scope: !1484)
!1486 = !DILocation(line: 261, column: 7, scope: !1405)
!1487 = !DILocation(line: 262, column: 10, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1489, file: !145, line: 262, column: 8)
!1489 = distinct !DILexicalBlock(scope: !1484, file: !145, line: 261, column: 18)
!1490 = !DILocation(line: 262, column: 9, scope: !1488)
!1491 = !DILocation(line: 262, column: 14, scope: !1488)
!1492 = !DILocation(line: 262, column: 8, scope: !1489)
!1493 = !DILocation(line: 263, column: 7, scope: !1488)
!1494 = !DILocation(line: 265, column: 13, scope: !1489)
!1495 = !DILocation(line: 265, column: 5, scope: !1496)
!1496 = !DILexicalBlockFile(scope: !1489, file: !145, discriminator: 1)
!1497 = !DILocation(line: 265, column: 5, scope: !1489)
!1498 = !DILocation(line: 268, column: 3, scope: !1405)
!1499 = !DILocation(line: 268, column: 16, scope: !1500)
!1500 = !DILexicalBlockFile(scope: !1405, file: !145, discriminator: 1)
!1501 = !DILocation(line: 268, column: 40, scope: !1500)
!1502 = !DILocation(line: 268, column: 10, scope: !1500)
!1503 = !DILocation(line: 268, column: 3, scope: !1500)
!1504 = !DILocalVariable(name: "controlstab", scope: !1505, file: !145, line: 269, type: !529)
!1505 = distinct !DILexicalBlock(scope: !1405, file: !145, line: 268, column: 45)
!1506 = !DILocation(line: 269, column: 17, scope: !1505)
!1507 = !DILocalVariable(name: "n", scope: !1505, file: !145, line: 270, type: !148)
!1508 = !DILocation(line: 270, column: 9, scope: !1505)
!1509 = !DILocation(line: 272, column: 16, scope: !1505)
!1510 = !DILocation(line: 272, column: 9, scope: !1505)
!1511 = !DILocation(line: 272, column: 7, scope: !1505)
!1512 = !DILocation(line: 273, column: 10, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1505, file: !145, line: 273, column: 9)
!1514 = !DILocation(line: 273, column: 9, scope: !1505)
!1515 = !DILocation(line: 274, column: 15, scope: !1513)
!1516 = !DILocation(line: 274, column: 7, scope: !1517)
!1517 = !DILexicalBlockFile(scope: !1513, file: !145, discriminator: 1)
!1518 = !DILocation(line: 274, column: 7, scope: !1513)
!1519 = !DILocation(line: 276, column: 22, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1505, file: !145, line: 276, column: 9)
!1521 = !DILocation(line: 276, column: 24, scope: !1520)
!1522 = !DILocation(line: 276, column: 9, scope: !1520)
!1523 = !DILocation(line: 276, column: 29, scope: !1520)
!1524 = !DILocation(line: 276, column: 9, scope: !1505)
!1525 = !DILocation(line: 277, column: 14, scope: !1520)
!1526 = !DILocation(line: 278, column: 14, scope: !1520)
!1527 = !DILocation(line: 277, column: 7, scope: !1528)
!1528 = !DILexicalBlockFile(scope: !1520, file: !145, discriminator: 1)
!1529 = !DILocation(line: 277, column: 7, scope: !1520)
!1530 = !DILocation(line: 280, column: 18, scope: !1505)
!1531 = !DILocation(line: 280, column: 20, scope: !1505)
!1532 = !DILocation(line: 280, column: 5, scope: !1505)
!1533 = !DILocation(line: 280, column: 25, scope: !1505)
!1534 = !DILocation(line: 281, column: 5, scope: !1505)
!1535 = !DILocation(line: 282, column: 42, scope: !1505)
!1536 = !DILocation(line: 282, column: 51, scope: !1505)
!1537 = !DILocation(line: 282, column: 5, scope: !1505)
!1538 = !DILocation(line: 283, column: 27, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1505, file: !145, line: 283, column: 9)
!1540 = !DILocation(line: 283, column: 9, scope: !1539)
!1541 = !DILocation(line: 283, column: 9, scope: !1505)
!1542 = !DILocation(line: 284, column: 12, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1544, file: !145, line: 284, column: 10)
!1544 = distinct !DILexicalBlock(scope: !1539, file: !145, line: 283, column: 47)
!1545 = !DILocation(line: 284, column: 11, scope: !1543)
!1546 = !DILocation(line: 284, column: 16, scope: !1543)
!1547 = !DILocation(line: 284, column: 10, scope: !1544)
!1548 = !DILocation(line: 285, column: 14, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1550, file: !145, line: 285, column: 13)
!1550 = distinct !DILexicalBlock(scope: !1543, file: !145, line: 284, column: 27)
!1551 = !DILocation(line: 285, column: 16, scope: !1549)
!1552 = !DILocation(line: 285, column: 21, scope: !1549)
!1553 = !DILocation(line: 285, column: 47, scope: !1554)
!1554 = !DILexicalBlockFile(scope: !1549, file: !145, discriminator: 1)
!1555 = !DILocation(line: 285, column: 49, scope: !1554)
!1556 = !DILocation(line: 285, column: 34, scope: !1554)
!1557 = !DILocation(line: 285, column: 24, scope: !1554)
!1558 = !DILocation(line: 285, column: 13, scope: !1554)
!1559 = !DILocation(line: 286, column: 19, scope: !1549)
!1560 = !DILocation(line: 287, column: 19, scope: !1549)
!1561 = !DILocation(line: 286, column: 11, scope: !1554)
!1562 = !DILocation(line: 286, column: 11, scope: !1549)
!1563 = !DILocation(line: 288, column: 16, scope: !1550)
!1564 = !DILocation(line: 288, column: 73, scope: !1550)
!1565 = !DILocation(line: 288, column: 9, scope: !1566)
!1566 = !DILexicalBlockFile(scope: !1550, file: !145, discriminator: 1)
!1567 = !DILocation(line: 288, column: 9, scope: !1550)
!1568 = !DILocation(line: 290, column: 17, scope: !1543)
!1569 = !DILocation(line: 290, column: 64, scope: !1543)
!1570 = !DILocation(line: 290, column: 9, scope: !1571)
!1571 = !DILexicalBlockFile(scope: !1543, file: !145, discriminator: 1)
!1572 = !DILocation(line: 290, column: 9, scope: !1543)
!1573 = !DILocation(line: 291, column: 28, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1539, file: !145, line: 291, column: 16)
!1575 = !DILocation(line: 291, column: 19, scope: !1574)
!1576 = !DILocation(line: 291, column: 30, scope: !1574)
!1577 = !DILocation(line: 291, column: 16, scope: !1539)
!1578 = !DILocation(line: 292, column: 15, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1574, file: !145, line: 291, column: 46)
!1580 = !DILocation(line: 292, column: 61, scope: !1579)
!1581 = !DILocation(line: 292, column: 7, scope: !1582)
!1582 = !DILexicalBlockFile(scope: !1579, file: !145, discriminator: 1)
!1583 = !DILocation(line: 293, column: 5, scope: !1579)
!1584 = !DILocation(line: 295, column: 29, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1505, file: !145, line: 295, column: 9)
!1586 = !DILocation(line: 295, column: 45, scope: !1585)
!1587 = !DILocation(line: 295, column: 9, scope: !1585)
!1588 = !DILocation(line: 295, column: 9, scope: !1505)
!1589 = !DILocation(line: 296, column: 15, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1585, file: !145, line: 295, column: 60)
!1591 = !DILocation(line: 296, column: 60, scope: !1590)
!1592 = !DILocation(line: 296, column: 7, scope: !1593)
!1593 = !DILexicalBlockFile(scope: !1590, file: !145, discriminator: 1)
!1594 = !DILocation(line: 297, column: 5, scope: !1590)
!1595 = !DILocalVariable(name: "conffile", scope: !1596, file: !145, line: 298, type: !1097)
!1596 = distinct !DILexicalBlock(scope: !1585, file: !145, line: 297, column: 12)
!1597 = !DILocation(line: 298, column: 25, scope: !1596)
!1598 = !DILocation(line: 300, column: 32, scope: !1596)
!1599 = !DILocation(line: 300, column: 18, scope: !1596)
!1600 = !DILocation(line: 300, column: 16, scope: !1596)
!1601 = !DILocation(line: 301, column: 63, scope: !1596)
!1602 = !DILocation(line: 301, column: 7, scope: !1596)
!1603 = !DILocation(line: 268, column: 3, scope: !1604)
!1604 = !DILexicalBlockFile(scope: !1405, file: !145, discriminator: 2)
!1605 = distinct !{!1605, !1498}
!1606 = !DILocation(line: 305, column: 23, scope: !1405)
!1607 = !DILocation(line: 305, column: 3, scope: !1405)
!1608 = !DILocation(line: 306, column: 3, scope: !1405)
!1609 = !DILocation(line: 308, column: 14, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1405, file: !145, line: 308, column: 7)
!1611 = !DILocation(line: 308, column: 7, scope: !1610)
!1612 = !DILocation(line: 308, column: 7, scope: !1405)
!1613 = !DILocation(line: 309, column: 13, scope: !1610)
!1614 = !DILocation(line: 309, column: 5, scope: !1615)
!1615 = !DILexicalBlockFile(scope: !1610, file: !145, discriminator: 1)
!1616 = !DILocation(line: 309, column: 5, scope: !1610)
!1617 = !DILocation(line: 310, column: 10, scope: !1405)
!1618 = !DILocation(line: 310, column: 3, scope: !1405)
!1619 = !DILocation(line: 311, column: 1, scope: !1405)
!1620 = !DILocation(line: 311, column: 1, scope: !1500)
!1621 = distinct !DISubprogram(name: "c_isspace", scope: !115, file: !115, line: 69, type: !1622, isLocal: true, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !154)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!185, !148}
!1624 = !DILocalVariable(name: "c", arg: 1, scope: !1621, file: !115, line: 69, type: !148)
!1625 = !DILocation(line: 69, column: 15, scope: !1621)
!1626 = !DILocation(line: 71, column: 18, scope: !1621)
!1627 = !DILocation(line: 71, column: 9, scope: !1621)
!1628 = !DILocation(line: 71, column: 2, scope: !1621)
!1629 = distinct !DISubprogram(name: "file_info_find_name", scope: !145, file: !145, line: 106, type: !1630, isLocal: true, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !154)
!1630 = !DISubroutineType(types: !1631)
!1631 = !{!1097, !1097, !151}
!1632 = !DILocalVariable(name: "list", arg: 1, scope: !1629, file: !145, line: 106, type: !1097)
!1633 = !DILocation(line: 106, column: 39, scope: !1629)
!1634 = !DILocalVariable(name: "filename", arg: 2, scope: !1629, file: !145, line: 106, type: !151)
!1635 = !DILocation(line: 106, column: 57, scope: !1629)
!1636 = !DILocalVariable(name: "node", scope: !1629, file: !145, line: 108, type: !1097)
!1637 = !DILocation(line: 108, column: 21, scope: !1629)
!1638 = !DILocation(line: 110, column: 15, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1629, file: !145, line: 110, column: 3)
!1640 = !DILocation(line: 110, column: 13, scope: !1639)
!1641 = !DILocation(line: 110, column: 8, scope: !1639)
!1642 = !DILocation(line: 110, column: 21, scope: !1643)
!1643 = !DILexicalBlockFile(scope: !1644, file: !145, discriminator: 1)
!1644 = distinct !DILexicalBlock(scope: !1639, file: !145, line: 110, column: 3)
!1645 = !DILocation(line: 110, column: 3, scope: !1643)
!1646 = !DILocation(line: 111, column: 16, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1644, file: !145, line: 111, column: 9)
!1648 = !DILocation(line: 111, column: 22, scope: !1647)
!1649 = !DILocation(line: 111, column: 26, scope: !1647)
!1650 = !DILocation(line: 111, column: 9, scope: !1647)
!1651 = !DILocation(line: 111, column: 36, scope: !1647)
!1652 = !DILocation(line: 111, column: 9, scope: !1644)
!1653 = !DILocation(line: 112, column: 14, scope: !1647)
!1654 = !DILocation(line: 112, column: 7, scope: !1647)
!1655 = !DILocation(line: 111, column: 39, scope: !1656)
!1656 = !DILexicalBlockFile(scope: !1647, file: !145, discriminator: 1)
!1657 = !DILocation(line: 110, column: 34, scope: !1658)
!1658 = !DILexicalBlockFile(scope: !1644, file: !145, discriminator: 2)
!1659 = !DILocation(line: 110, column: 40, scope: !1658)
!1660 = !DILocation(line: 110, column: 32, scope: !1658)
!1661 = !DILocation(line: 110, column: 3, scope: !1658)
!1662 = distinct !{!1662, !1663}
!1663 = !DILocation(line: 110, column: 3, scope: !1629)
!1664 = !DILocation(line: 114, column: 3, scope: !1629)
!1665 = !DILocation(line: 115, column: 1, scope: !1629)
!1666 = distinct !DISubprogram(name: "file_info_new", scope: !145, file: !145, line: 87, type: !1667, isLocal: true, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !154)
!1667 = !DISubroutineType(types: !1668)
!1668 = !{!1097, !151}
!1669 = !DILocalVariable(name: "filename", arg: 1, scope: !1666, file: !145, line: 87, type: !151)
!1670 = !DILocation(line: 87, column: 27, scope: !1666)
!1671 = !DILocalVariable(name: "fi", scope: !1666, file: !145, line: 89, type: !1097)
!1672 = !DILocation(line: 89, column: 21, scope: !1666)
!1673 = !DILocation(line: 91, column: 8, scope: !1666)
!1674 = !DILocation(line: 91, column: 6, scope: !1666)
!1675 = !DILocation(line: 92, column: 21, scope: !1666)
!1676 = !DILocation(line: 92, column: 12, scope: !1666)
!1677 = !DILocation(line: 92, column: 3, scope: !1666)
!1678 = !DILocation(line: 92, column: 7, scope: !1666)
!1679 = !DILocation(line: 92, column: 10, scope: !1666)
!1680 = !DILocation(line: 93, column: 3, scope: !1666)
!1681 = !DILocation(line: 93, column: 7, scope: !1666)
!1682 = !DILocation(line: 93, column: 12, scope: !1666)
!1683 = !DILocation(line: 95, column: 10, scope: !1666)
!1684 = !DILocation(line: 95, column: 3, scope: !1666)
!1685 = distinct !DISubprogram(name: "file_info_list_append", scope: !145, file: !145, line: 129, type: !1686, isLocal: true, isDefinition: true, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !154)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{null, !1688, !1688, !1097}
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64, align: 64)
!1689 = !DILocalVariable(name: "head", arg: 1, scope: !1685, file: !145, line: 129, type: !1688)
!1690 = !DILocation(line: 129, column: 42, scope: !1685)
!1691 = !DILocalVariable(name: "tail", arg: 2, scope: !1685, file: !145, line: 129, type: !1688)
!1692 = !DILocation(line: 129, column: 67, scope: !1685)
!1693 = !DILocalVariable(name: "fi", arg: 3, scope: !1685, file: !145, line: 130, type: !1097)
!1694 = !DILocation(line: 130, column: 41, scope: !1685)
!1695 = !DILocation(line: 132, column: 8, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1685, file: !145, line: 132, column: 7)
!1697 = !DILocation(line: 132, column: 7, scope: !1696)
!1698 = !DILocation(line: 132, column: 13, scope: !1696)
!1699 = !DILocation(line: 132, column: 7, scope: !1685)
!1700 = !DILocation(line: 133, column: 21, scope: !1696)
!1701 = !DILocation(line: 133, column: 14, scope: !1696)
!1702 = !DILocation(line: 133, column: 19, scope: !1696)
!1703 = !DILocation(line: 133, column: 6, scope: !1696)
!1704 = !DILocation(line: 133, column: 11, scope: !1696)
!1705 = !DILocation(line: 133, column: 5, scope: !1696)
!1706 = !DILocation(line: 135, column: 28, scope: !1696)
!1707 = !DILocation(line: 135, column: 15, scope: !1696)
!1708 = !DILocation(line: 135, column: 14, scope: !1696)
!1709 = !DILocation(line: 135, column: 22, scope: !1696)
!1710 = !DILocation(line: 135, column: 27, scope: !1696)
!1711 = !DILocation(line: 135, column: 6, scope: !1696)
!1712 = !DILocation(line: 135, column: 11, scope: !1696)
!1713 = !DILocation(line: 136, column: 1, scope: !1685)
!1714 = distinct !DISubprogram(name: "file_info_list_free", scope: !145, file: !145, line: 142, type: !1715, isLocal: true, isDefinition: true, scopeLine: 143, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !154)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{null, !1097}
!1717 = !DILocalVariable(name: "fi", arg: 1, scope: !1714, file: !145, line: 142, type: !1097)
!1718 = !DILocation(line: 142, column: 39, scope: !1714)
!1719 = !DILocation(line: 144, column: 3, scope: !1714)
!1720 = !DILocation(line: 144, column: 10, scope: !1721)
!1721 = !DILexicalBlockFile(scope: !1714, file: !145, discriminator: 1)
!1722 = !DILocation(line: 144, column: 3, scope: !1721)
!1723 = !DILocalVariable(name: "fl", scope: !1724, file: !145, line: 145, type: !1097)
!1724 = distinct !DILexicalBlock(scope: !1714, file: !145, line: 144, column: 14)
!1725 = !DILocation(line: 145, column: 23, scope: !1724)
!1726 = !DILocation(line: 147, column: 8, scope: !1724)
!1727 = !DILocation(line: 147, column: 7, scope: !1724)
!1728 = !DILocation(line: 147, column: 15, scope: !1724)
!1729 = !DILocation(line: 147, column: 19, scope: !1724)
!1730 = !DILocation(line: 147, column: 14, scope: !1724)
!1731 = !DILocation(line: 148, column: 20, scope: !1724)
!1732 = !DILocation(line: 148, column: 5, scope: !1724)
!1733 = !DILocation(line: 144, column: 3, scope: !1734)
!1734 = !DILexicalBlockFile(scope: !1714, file: !145, discriminator: 2)
!1735 = distinct !{!1735, !1719}
!1736 = !DILocation(line: 150, column: 1, scope: !1714)
!1737 = distinct !DISubprogram(name: "file_info_free", scope: !145, file: !145, line: 99, type: !1715, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !154)
!1738 = !DILocalVariable(name: "fi", arg: 1, scope: !1737, file: !145, line: 99, type: !1097)
!1739 = !DILocation(line: 99, column: 34, scope: !1737)
!1740 = !DILocation(line: 101, column: 8, scope: !1737)
!1741 = !DILocation(line: 101, column: 12, scope: !1737)
!1742 = !DILocation(line: 101, column: 3, scope: !1737)
!1743 = !DILocation(line: 102, column: 8, scope: !1737)
!1744 = !DILocation(line: 102, column: 3, scope: !1737)
!1745 = !DILocation(line: 103, column: 1, scope: !1737)
