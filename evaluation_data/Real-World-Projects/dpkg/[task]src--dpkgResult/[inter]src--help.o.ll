; ModuleID = './[inter]src--help.o.i'
source_filename = "./[inter]src--help.o.i"
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
%struct.varbuf = type { i64, i64, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.deppossi_pkg_iterator = type opaque
%struct.pkg_hash_iter = type opaque
%struct.fsys_node_pkgs_iter = type opaque

@.str = private unnamed_addr constant [14 x i8] c"not installed\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"not installed but configs remain\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"broken due to failed removal or installation\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"unpacked but not configured\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"broken due to postinst failure\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"awaiting trigger processing by another package\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"triggered\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"installed\00", align 1
@statusstrings = constant [8 x i8*] [i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0)], align 16
@.str.8 = private unnamed_addr constant [35 x i8] c"namenodetouse namenode='%s' pkg=%s\00", align 1
@.str.9 = private unnamed_addr constant [61 x i8] c"namenodetouse ... useinstead=%s camefrom=%s pkg=%s return %s\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"<none>\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"PATH is not set\00", align 1
@checkpath.prog_list = internal constant [7 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i8* null], align 16
@.str.13 = private unnamed_addr constant [3 x i8] c"sh\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"rm\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"tar\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"diff\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"dpkg-deb\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"ldconfig\00", align 1
@.str.19 = private unnamed_addr constant [41 x i8] c"'%s' not found in PATH or not executable\00", align 1
@.str.20 = private unnamed_addr constant [59 x i8] c"%d expected program not found in PATH or not executable\0A%s\00", align 1
@.str.21 = private unnamed_addr constant [60 x i8] c"%d expected programs not found in PATH or not executable\0A%s\00", align 1
@.str.22 = private unnamed_addr constant [78 x i8] c"Note: root's PATH should usually contain /usr/local/sbin, /usr/sbin and /sbin\00", align 1
@ignoredependss = external global %struct.pkg_list*, align 8
@.str.23 = private unnamed_addr constant [33 x i8] c"dir_has_conffiles '%s' (from %s)\00", align 1
@.str.24 = private unnamed_addr constant [37 x i8] c"directory %s has conffile %s from %s\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"dir_has_conffiles no\00", align 1
@.str.26 = private unnamed_addr constant [39 x i8] c"dir_is_used_by_others '%s' (except %s)\00", align 1
@.str.27 = private unnamed_addr constant [41 x i8] c"dir_is_used_by_others considering %s ...\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"dir_is_used_by_others yes\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"dir_is_used_by_others no\00", align 1
@.str.30 = private unnamed_addr constant [32 x i8] c"dir_is_used_by_pkg '%s' (by %s)\00", align 1
@.str.31 = private unnamed_addr constant [38 x i8] c"dir_is_used_by_pkg considering %s ...\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"dir_is_used_by_pkg yes\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"dir_is_used_by_pkg no\00", align 1
@.str.34 = private unnamed_addr constant [35 x i8] c"marking %s conffile %s as obsolete\00", align 1
@.str.35 = private unnamed_addr constant [31 x i8] c"%s '%s' namenode '%s' flags %o\00", align 1
@__func__.pkg_conffiles_mark_old = private unnamed_addr constant [23 x i8] c"pkg_conffiles_mark_old\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"%s %s %s %s\00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c"processing: %s: %s\00", align 1

; Function Attrs: nounwind uwtable
define %struct.fsys_namenode* @namenodetouse(%struct.fsys_namenode*, %struct.pkginfo*, %struct.pkgbin*) #0 !dbg !188 {
  %4 = alloca %struct.fsys_namenode*, align 8
  %5 = alloca %struct.fsys_namenode*, align 8
  %6 = alloca %struct.pkginfo*, align 8
  %7 = alloca %struct.pkgbin*, align 8
  %8 = alloca %struct.fsys_namenode*, align 8
  store %struct.fsys_namenode* %0, %struct.fsys_namenode** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %5, metadata !392, metadata !393), !dbg !394
  store %struct.pkginfo* %1, %struct.pkginfo** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %6, metadata !395, metadata !393), !dbg !396
  store %struct.pkgbin* %2, %struct.pkgbin** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %7, metadata !397, metadata !393), !dbg !398
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %8, metadata !399, metadata !393), !dbg !400
  %9 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !401
  %10 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %9, i32 0, i32 3, !dbg !403
  %11 = load %struct.fsys_diversion*, %struct.fsys_diversion** %10, align 8, !dbg !403
  %12 = icmp ne %struct.fsys_diversion* %11, null, !dbg !401
  br i1 %12, label %15, label %13, !dbg !404

; <label>:13:                                     ; preds = %3
  %14 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !405
  store %struct.fsys_namenode* %14, %struct.fsys_namenode** %4, align 8, !dbg !406
  br label %103, !dbg !406

; <label>:15:                                     ; preds = %3
  %16 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !407
  %17 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %16, i32 0, i32 1, !dbg !408
  %18 = load i8*, i8** %17, align 8, !dbg !408
  %19 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !409
  %20 = load %struct.pkgbin*, %struct.pkgbin** %7, align 8, !dbg !410
  %21 = call i8* @pkgbin_name(%struct.pkginfo* %19, %struct.pkgbin* %20, i32 3), !dbg !411
  call void (i32, i8*, ...) @debug(i32 8, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i32 0, i32 0), i8* %18, i8* %21), !dbg !412
  %22 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !413
  %23 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %22, i32 0, i32 3, !dbg !414
  %24 = load %struct.fsys_diversion*, %struct.fsys_diversion** %23, align 8, !dbg !414
  %25 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %24, i32 0, i32 0, !dbg !415
  %26 = load %struct.fsys_namenode*, %struct.fsys_namenode** %25, align 8, !dbg !415
  %27 = icmp ne %struct.fsys_namenode* %26, null, !dbg !413
  br i1 %27, label %28, label %44, !dbg !416

; <label>:28:                                     ; preds = %15
  %29 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !417
  %30 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %29, i32 0, i32 3, !dbg !419
  %31 = load %struct.fsys_diversion*, %struct.fsys_diversion** %30, align 8, !dbg !419
  %32 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %31, i32 0, i32 2, !dbg !420
  %33 = load %struct.pkgset*, %struct.pkgset** %32, align 8, !dbg !420
  %34 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !421
  %35 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %34, i32 0, i32 0, !dbg !422
  %36 = load %struct.pkgset*, %struct.pkgset** %35, align 8, !dbg !422
  %37 = icmp ne %struct.pkgset* %33, %36, !dbg !423
  br i1 %37, label %38, label %44, !dbg !424

; <label>:38:                                     ; preds = %28
  %39 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !425
  %40 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %39, i32 0, i32 3, !dbg !426
  %41 = load %struct.fsys_diversion*, %struct.fsys_diversion** %40, align 8, !dbg !426
  %42 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %41, i32 0, i32 0, !dbg !427
  %43 = load %struct.fsys_namenode*, %struct.fsys_namenode** %42, align 8, !dbg !427
  br label %46, !dbg !428

; <label>:44:                                     ; preds = %28, %15
  %45 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !430
  br label %46, !dbg !431

; <label>:46:                                     ; preds = %44, %38
  %47 = phi %struct.fsys_namenode* [ %43, %38 ], [ %45, %44 ], !dbg !433
  store %struct.fsys_namenode* %47, %struct.fsys_namenode** %8, align 8, !dbg !435
  %48 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !436
  %49 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %48, i32 0, i32 3, !dbg !437
  %50 = load %struct.fsys_diversion*, %struct.fsys_diversion** %49, align 8, !dbg !437
  %51 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %50, i32 0, i32 0, !dbg !438
  %52 = load %struct.fsys_namenode*, %struct.fsys_namenode** %51, align 8, !dbg !438
  %53 = icmp ne %struct.fsys_namenode* %52, null, !dbg !436
  br i1 %53, label %54, label %62, !dbg !436

; <label>:54:                                     ; preds = %46
  %55 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !439
  %56 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %55, i32 0, i32 3, !dbg !440
  %57 = load %struct.fsys_diversion*, %struct.fsys_diversion** %56, align 8, !dbg !440
  %58 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %57, i32 0, i32 0, !dbg !441
  %59 = load %struct.fsys_namenode*, %struct.fsys_namenode** %58, align 8, !dbg !441
  %60 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %59, i32 0, i32 1, !dbg !442
  %61 = load i8*, i8** %60, align 8, !dbg !442
  br label %63, !dbg !443

; <label>:62:                                     ; preds = %46
  br label %63, !dbg !444

; <label>:63:                                     ; preds = %62, %54
  %64 = phi i8* [ %61, %54 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), %62 ], !dbg !445
  %65 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !446
  %66 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %65, i32 0, i32 3, !dbg !447
  %67 = load %struct.fsys_diversion*, %struct.fsys_diversion** %66, align 8, !dbg !447
  %68 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %67, i32 0, i32 1, !dbg !448
  %69 = load %struct.fsys_namenode*, %struct.fsys_namenode** %68, align 8, !dbg !448
  %70 = icmp ne %struct.fsys_namenode* %69, null, !dbg !446
  br i1 %70, label %71, label %79, !dbg !446

; <label>:71:                                     ; preds = %63
  %72 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !449
  %73 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %72, i32 0, i32 3, !dbg !450
  %74 = load %struct.fsys_diversion*, %struct.fsys_diversion** %73, align 8, !dbg !450
  %75 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %74, i32 0, i32 1, !dbg !451
  %76 = load %struct.fsys_namenode*, %struct.fsys_namenode** %75, align 8, !dbg !451
  %77 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %76, i32 0, i32 1, !dbg !452
  %78 = load i8*, i8** %77, align 8, !dbg !452
  br label %80, !dbg !453

; <label>:79:                                     ; preds = %63
  br label %80, !dbg !454

; <label>:80:                                     ; preds = %79, %71
  %81 = phi i8* [ %78, %71 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), %79 ], !dbg !455
  %82 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !456
  %83 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %82, i32 0, i32 3, !dbg !457
  %84 = load %struct.fsys_diversion*, %struct.fsys_diversion** %83, align 8, !dbg !457
  %85 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %84, i32 0, i32 2, !dbg !458
  %86 = load %struct.pkgset*, %struct.pkgset** %85, align 8, !dbg !458
  %87 = icmp ne %struct.pkgset* %86, null, !dbg !456
  br i1 %87, label %88, label %96, !dbg !456

; <label>:88:                                     ; preds = %80
  %89 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !459
  %90 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %89, i32 0, i32 3, !dbg !460
  %91 = load %struct.fsys_diversion*, %struct.fsys_diversion** %90, align 8, !dbg !460
  %92 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %91, i32 0, i32 2, !dbg !461
  %93 = load %struct.pkgset*, %struct.pkgset** %92, align 8, !dbg !461
  %94 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %93, i32 0, i32 1, !dbg !462
  %95 = load i8*, i8** %94, align 8, !dbg !462
  br label %97, !dbg !463

; <label>:96:                                     ; preds = %80
  br label %97, !dbg !464

; <label>:97:                                     ; preds = %96, %88
  %98 = phi i8* [ %95, %88 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), %96 ], !dbg !465
  %99 = load %struct.fsys_namenode*, %struct.fsys_namenode** %8, align 8, !dbg !466
  %100 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %99, i32 0, i32 1, !dbg !467
  %101 = load i8*, i8** %100, align 8, !dbg !467
  call void (i32, i8*, ...) @debug(i32 8, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.9, i32 0, i32 0), i8* %64, i8* %81, i8* %98, i8* %101), !dbg !468
  %102 = load %struct.fsys_namenode*, %struct.fsys_namenode** %8, align 8, !dbg !469
  store %struct.fsys_namenode* %102, %struct.fsys_namenode** %4, align 8, !dbg !470
  br label %103, !dbg !470

; <label>:103:                                    ; preds = %97, %13
  %104 = load %struct.fsys_namenode*, %struct.fsys_namenode** %4, align 8, !dbg !471
  ret %struct.fsys_namenode* %104, !dbg !471
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @debug(i32, i8*, ...) #2

declare i8* @pkgbin_name(%struct.pkginfo*, %struct.pkgbin*, i32) #2

; Function Attrs: nounwind uwtable
define zeroext i1 @find_command(i8*) #0 !dbg !472 {
  %2 = alloca i1, align 1
  %3 = alloca i8*, align 8
  %4 = alloca %struct.varbuf, align 8
  %5 = alloca %struct.stat, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !475, metadata !393), !dbg !476
  call void @llvm.dbg.declare(metadata %struct.varbuf* %4, metadata !477, metadata !393), !dbg !484
  %10 = bitcast %struct.varbuf* %4 to i8*, !dbg !484
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 24, i32 8, i1 false), !dbg !484
  call void @llvm.dbg.declare(metadata %struct.stat* %5, metadata !485, metadata !393), !dbg !517
  call void @llvm.dbg.declare(metadata i8** %6, metadata !518, metadata !393), !dbg !519
  call void @llvm.dbg.declare(metadata i8** %7, metadata !520, metadata !393), !dbg !521
  call void @llvm.dbg.declare(metadata i8** %8, metadata !522, metadata !393), !dbg !523
  call void @llvm.dbg.declare(metadata i64* %9, metadata !524, metadata !393), !dbg !525
  %11 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0)) #7, !dbg !526
  store i8* %11, i8** %6, align 8, !dbg !527
  %12 = load i8*, i8** %6, align 8, !dbg !528
  %13 = icmp ne i8* %12, null, !dbg !528
  br i1 %13, label %16, label %14, !dbg !530

; <label>:14:                                     ; preds = %1
  %15 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0)) #7, !dbg !531
  call void (i8*, ...) @ohshit(i8* %15) #8, !dbg !532
  unreachable, !dbg !534

; <label>:16:                                     ; preds = %1
  %17 = load i8*, i8** %6, align 8, !dbg !535
  store i8* %17, i8** %7, align 8, !dbg !537
  br label %18, !dbg !538

; <label>:18:                                     ; preds = %58, %16
  %19 = load i8*, i8** %7, align 8, !dbg !539
  %20 = icmp ne i8* %19, null, !dbg !542
  br i1 %20, label %21, label %60, !dbg !542

; <label>:21:                                     ; preds = %18
  %22 = load i8*, i8** %7, align 8, !dbg !543
  %23 = call i8* @strchrnul(i8* %22, i32 58) #9, !dbg !545
  store i8* %23, i8** %8, align 8, !dbg !546
  %24 = load i8*, i8** %8, align 8, !dbg !547
  %25 = load i8*, i8** %7, align 8, !dbg !548
  %26 = ptrtoint i8* %24 to i64, !dbg !549
  %27 = ptrtoint i8* %25 to i64, !dbg !549
  %28 = sub i64 %26, %27, !dbg !549
  store i64 %28, i64* %9, align 8, !dbg !550
  call void @varbuf_reset(%struct.varbuf* %4), !dbg !551
  %29 = load i8*, i8** %7, align 8, !dbg !552
  %30 = load i64, i64* %9, align 8, !dbg !553
  call void @varbuf_add_buf(%struct.varbuf* %4, i8* %29, i64 %30), !dbg !554
  %31 = load i64, i64* %9, align 8, !dbg !555
  %32 = icmp ne i64 %31, 0, !dbg !555
  br i1 %32, label %33, label %34, !dbg !557

; <label>:33:                                     ; preds = %21
  call void @varbuf_add_char(%struct.varbuf* %4, i32 47), !dbg !558
  br label %34, !dbg !558

; <label>:34:                                     ; preds = %33, %21
  %35 = load i8*, i8** %3, align 8, !dbg !559
  %36 = load i8*, i8** %3, align 8, !dbg !560
  %37 = call i64 @strlen(i8* %36) #9, !dbg !561
  call void @varbuf_add_buf(%struct.varbuf* %4, i8* %35, i64 %37), !dbg !562
  call void @varbuf_end_str(%struct.varbuf* %4), !dbg !564
  %38 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %4, i32 0, i32 2, !dbg !565
  %39 = load i8*, i8** %38, align 8, !dbg !565
  %40 = call i32 @stat(i8* %39, %struct.stat* %5) #7, !dbg !567
  %41 = icmp eq i32 %40, 0, !dbg !568
  br i1 %41, label %42, label %48, !dbg !569

; <label>:42:                                     ; preds = %34
  %43 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 3, !dbg !570
  %44 = load i32, i32* %43, align 8, !dbg !570
  %45 = and i32 %44, 73, !dbg !572
  %46 = icmp ne i32 %45, 0, !dbg !572
  br i1 %46, label %47, label %48, !dbg !573

; <label>:47:                                     ; preds = %42
  call void @varbuf_destroy(%struct.varbuf* %4), !dbg !574
  store i1 true, i1* %2, align 1, !dbg !576
  br label %61, !dbg !576

; <label>:48:                                     ; preds = %42, %34
  br label %49, !dbg !577

; <label>:49:                                     ; preds = %48
  %50 = load i8*, i8** %8, align 8, !dbg !578
  %51 = load i8, i8* %50, align 1, !dbg !580
  %52 = sext i8 %51 to i32, !dbg !580
  %53 = icmp ne i32 %52, 0, !dbg !580
  br i1 %53, label %54, label %57, !dbg !580

; <label>:54:                                     ; preds = %49
  %55 = load i8*, i8** %8, align 8, !dbg !581
  %56 = getelementptr inbounds i8, i8* %55, i64 1, !dbg !583
  br label %58, !dbg !584

; <label>:57:                                     ; preds = %49
  br label %58, !dbg !585

; <label>:58:                                     ; preds = %57, %54
  %59 = phi i8* [ %56, %54 ], [ null, %57 ], !dbg !587
  store i8* %59, i8** %7, align 8, !dbg !589
  br label %18, !dbg !590, !llvm.loop !591

; <label>:60:                                     ; preds = %18
  call void @varbuf_destroy(%struct.varbuf* %4), !dbg !593
  store i1 false, i1* %2, align 1, !dbg !594
  br label %61, !dbg !594

; <label>:61:                                     ; preds = %60, %47
  %62 = load i1, i1* %2, align 1, !dbg !595
  ret i1 %62, !dbg !595
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #3

; Function Attrs: nounwind
declare i8* @getenv(i8*) #4

; Function Attrs: noreturn
declare void @ohshit(i8*, ...) #5

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

; Function Attrs: nounwind readonly
declare i8* @strchrnul(i8*, i32) #6

declare void @varbuf_reset(%struct.varbuf*) #2

declare void @varbuf_add_buf(%struct.varbuf*, i8*, i64) #2

declare void @varbuf_add_char(%struct.varbuf*, i32) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #6

declare void @varbuf_end_str(%struct.varbuf*) #2

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #4

declare void @varbuf_destroy(%struct.varbuf*) #2

; Function Attrs: nounwind uwtable
define void @checkpath() #0 !dbg !178 {
  %1 = alloca i8**, align 8
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8*** %1, metadata !596, metadata !393), !dbg !598
  call void @llvm.dbg.declare(metadata i32* %2, metadata !599, metadata !393), !dbg !600
  store i32 0, i32* %2, align 4, !dbg !600
  store i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @checkpath.prog_list, i32 0, i32 0), i8*** %1, align 8, !dbg !601
  br label %3, !dbg !603

; <label>:3:                                      ; preds = %18, %0
  %4 = load i8**, i8*** %1, align 8, !dbg !604
  %5 = load i8*, i8** %4, align 8, !dbg !607
  %6 = icmp ne i8* %5, null, !dbg !608
  br i1 %6, label %7, label %21, !dbg !608

; <label>:7:                                      ; preds = %3
  %8 = load i8**, i8*** %1, align 8, !dbg !609
  %9 = load i8*, i8** %8, align 8, !dbg !612
  %10 = call zeroext i1 @find_command(i8* %9), !dbg !613
  br i1 %10, label %17, label %11, !dbg !614

; <label>:11:                                     ; preds = %7
  %12 = call i8* @gettext(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.19, i32 0, i32 0)) #7, !dbg !615
  %13 = load i8**, i8*** %1, align 8, !dbg !617
  %14 = load i8*, i8** %13, align 8, !dbg !618
  call void (i8*, ...) @warning(i8* %12, i8* %14), !dbg !619
  %15 = load i32, i32* %2, align 4, !dbg !621
  %16 = add nsw i32 %15, 1, !dbg !621
  store i32 %16, i32* %2, align 4, !dbg !621
  br label %17, !dbg !622

; <label>:17:                                     ; preds = %11, %7
  br label %18, !dbg !623

; <label>:18:                                     ; preds = %17
  %19 = load i8**, i8*** %1, align 8, !dbg !624
  %20 = getelementptr inbounds i8*, i8** %19, i32 1, !dbg !624
  store i8** %20, i8*** %1, align 8, !dbg !624
  br label %3, !dbg !626, !llvm.loop !627

; <label>:21:                                     ; preds = %3
  %22 = load i32, i32* %2, align 4, !dbg !629
  %23 = icmp ne i32 %22, 0, !dbg !629
  br i1 %23, label %24, label %30, !dbg !631

; <label>:24:                                     ; preds = %21
  %25 = load i32, i32* %2, align 4, !dbg !632
  %26 = sext i32 %25 to i64, !dbg !632
  %27 = call i8* @ngettext(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.21, i32 0, i32 0), i64 %26) #7, !dbg !633
  %28 = load i32, i32* %2, align 4, !dbg !634
  %29 = call i8* @gettext(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.22, i32 0, i32 0)) #7, !dbg !635
  call void (i32, i8*, ...) @forcibleerr(i32 2, i8* %27, i32 %28, i8* %29), !dbg !636
  br label %30, !dbg !636

; <label>:30:                                     ; preds = %24, %21
  ret void, !dbg !637
}

declare void @warning(i8*, ...) #2

declare void @forcibleerr(i32, i8*, ...) #2

; Function Attrs: nounwind
declare i8* @ngettext(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define zeroext i1 @ignore_depends(%struct.pkginfo*) #0 !dbg !638 {
  %2 = alloca i1, align 1
  %3 = alloca %struct.pkginfo*, align 8
  %4 = alloca %struct.pkg_list*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %3, metadata !641, metadata !393), !dbg !642
  call void @llvm.dbg.declare(metadata %struct.pkg_list** %4, metadata !643, metadata !393), !dbg !644
  %5 = load %struct.pkg_list*, %struct.pkg_list** @ignoredependss, align 8, !dbg !645
  store %struct.pkg_list* %5, %struct.pkg_list** %4, align 8, !dbg !647
  br label %6, !dbg !648

; <label>:6:                                      ; preds = %17, %1
  %7 = load %struct.pkg_list*, %struct.pkg_list** %4, align 8, !dbg !649
  %8 = icmp ne %struct.pkg_list* %7, null, !dbg !652
  br i1 %8, label %9, label %21, !dbg !652

; <label>:9:                                      ; preds = %6
  %10 = load %struct.pkg_list*, %struct.pkg_list** %4, align 8, !dbg !653
  %11 = getelementptr inbounds %struct.pkg_list, %struct.pkg_list* %10, i32 0, i32 1, !dbg !655
  %12 = load %struct.pkginfo*, %struct.pkginfo** %11, align 8, !dbg !655
  %13 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !656
  %14 = icmp eq %struct.pkginfo* %12, %13, !dbg !657
  br i1 %14, label %15, label %16, !dbg !658

; <label>:15:                                     ; preds = %9
  store i1 true, i1* %2, align 1, !dbg !659
  br label %22, !dbg !659

; <label>:16:                                     ; preds = %9
  br label %17, !dbg !660

; <label>:17:                                     ; preds = %16
  %18 = load %struct.pkg_list*, %struct.pkg_list** %4, align 8, !dbg !662
  %19 = getelementptr inbounds %struct.pkg_list, %struct.pkg_list* %18, i32 0, i32 0, !dbg !664
  %20 = load %struct.pkg_list*, %struct.pkg_list** %19, align 8, !dbg !664
  store %struct.pkg_list* %20, %struct.pkg_list** %4, align 8, !dbg !665
  br label %6, !dbg !666, !llvm.loop !667

; <label>:21:                                     ; preds = %6
  store i1 false, i1* %2, align 1, !dbg !669
  br label %22, !dbg !669

; <label>:22:                                     ; preds = %21, %15
  %23 = load i1, i1* %2, align 1, !dbg !670
  ret i1 %23, !dbg !670
}

; Function Attrs: nounwind uwtable
define zeroext i1 @force_depends(%struct.deppossi*) #0 !dbg !671 {
  %2 = alloca %struct.deppossi*, align 8
  store %struct.deppossi* %0, %struct.deppossi** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.deppossi** %2, metadata !674, metadata !393), !dbg !675
  %3 = call zeroext i1 @in_force(i32 4096), !dbg !676
  br i1 %3, label %14, label %4, !dbg !677

; <label>:4:                                      ; preds = %1
  %5 = load %struct.deppossi*, %struct.deppossi** %2, align 8, !dbg !678
  %6 = call zeroext i1 @ignore_depends_possi(%struct.deppossi* %5), !dbg !679
  br i1 %6, label %14, label %7, !dbg !680

; <label>:7:                                      ; preds = %4
  %8 = load %struct.deppossi*, %struct.deppossi** %2, align 8, !dbg !681
  %9 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %8, i32 0, i32 0, !dbg !682
  %10 = load %struct.dependency*, %struct.dependency** %9, align 8, !dbg !682
  %11 = getelementptr inbounds %struct.dependency, %struct.dependency* %10, i32 0, i32 0, !dbg !683
  %12 = load %struct.pkginfo*, %struct.pkginfo** %11, align 8, !dbg !683
  %13 = call zeroext i1 @ignore_depends(%struct.pkginfo* %12), !dbg !684
  br label %14, !dbg !685

; <label>:14:                                     ; preds = %7, %4, %1
  %15 = phi i1 [ true, %4 ], [ true, %1 ], [ %13, %7 ]
  ret i1 %15, !dbg !687
}

declare zeroext i1 @in_force(i32) #2

; Function Attrs: nounwind uwtable
define internal zeroext i1 @ignore_depends_possi(%struct.deppossi*) #0 !dbg !688 {
  %2 = alloca i1, align 1
  %3 = alloca %struct.deppossi*, align 8
  %4 = alloca %struct.deppossi_pkg_iterator*, align 8
  %5 = alloca %struct.pkginfo*, align 8
  store %struct.deppossi* %0, %struct.deppossi** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.deppossi** %3, metadata !689, metadata !393), !dbg !690
  call void @llvm.dbg.declare(metadata %struct.deppossi_pkg_iterator** %4, metadata !691, metadata !393), !dbg !694
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %5, metadata !695, metadata !393), !dbg !696
  %6 = load %struct.deppossi*, %struct.deppossi** %3, align 8, !dbg !697
  %7 = call %struct.deppossi_pkg_iterator* @deppossi_pkg_iter_new(%struct.deppossi* %6, i32 0), !dbg !698
  store %struct.deppossi_pkg_iterator* %7, %struct.deppossi_pkg_iterator** %4, align 8, !dbg !699
  br label %8, !dbg !700

; <label>:8:                                      ; preds = %17, %1
  %9 = load %struct.deppossi_pkg_iterator*, %struct.deppossi_pkg_iterator** %4, align 8, !dbg !701
  %10 = call %struct.pkginfo* @deppossi_pkg_iter_next(%struct.deppossi_pkg_iterator* %9), !dbg !703
  store %struct.pkginfo* %10, %struct.pkginfo** %5, align 8, !dbg !704
  %11 = icmp ne %struct.pkginfo* %10, null, !dbg !705
  br i1 %11, label %12, label %18, !dbg !705

; <label>:12:                                     ; preds = %8
  %13 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !706
  %14 = call zeroext i1 @ignore_depends(%struct.pkginfo* %13), !dbg !709
  br i1 %14, label %15, label %17, !dbg !710

; <label>:15:                                     ; preds = %12
  %16 = load %struct.deppossi_pkg_iterator*, %struct.deppossi_pkg_iterator** %4, align 8, !dbg !711
  call void @deppossi_pkg_iter_free(%struct.deppossi_pkg_iterator* %16), !dbg !713
  store i1 true, i1* %2, align 1, !dbg !714
  br label %20, !dbg !714

; <label>:17:                                     ; preds = %12
  br label %8, !dbg !715, !llvm.loop !717

; <label>:18:                                     ; preds = %8
  %19 = load %struct.deppossi_pkg_iterator*, %struct.deppossi_pkg_iterator** %4, align 8, !dbg !718
  call void @deppossi_pkg_iter_free(%struct.deppossi_pkg_iterator* %19), !dbg !719
  store i1 false, i1* %2, align 1, !dbg !720
  br label %20, !dbg !720

; <label>:20:                                     ; preds = %18, %15
  %21 = load i1, i1* %2, align 1, !dbg !721
  ret i1 %21, !dbg !721
}

; Function Attrs: nounwind uwtable
define zeroext i1 @force_breaks(%struct.deppossi*) #0 !dbg !722 {
  %2 = alloca %struct.deppossi*, align 8
  store %struct.deppossi* %0, %struct.deppossi** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.deppossi** %2, metadata !723, metadata !393), !dbg !724
  %3 = call zeroext i1 @in_force(i32 16), !dbg !725
  br i1 %3, label %14, label %4, !dbg !726

; <label>:4:                                      ; preds = %1
  %5 = load %struct.deppossi*, %struct.deppossi** %2, align 8, !dbg !727
  %6 = call zeroext i1 @ignore_depends_possi(%struct.deppossi* %5), !dbg !728
  br i1 %6, label %14, label %7, !dbg !729

; <label>:7:                                      ; preds = %4
  %8 = load %struct.deppossi*, %struct.deppossi** %2, align 8, !dbg !730
  %9 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %8, i32 0, i32 0, !dbg !731
  %10 = load %struct.dependency*, %struct.dependency** %9, align 8, !dbg !731
  %11 = getelementptr inbounds %struct.dependency, %struct.dependency* %10, i32 0, i32 0, !dbg !732
  %12 = load %struct.pkginfo*, %struct.pkginfo** %11, align 8, !dbg !732
  %13 = call zeroext i1 @ignore_depends(%struct.pkginfo* %12), !dbg !733
  br label %14, !dbg !734

; <label>:14:                                     ; preds = %7, %4, %1
  %15 = phi i1 [ true, %4 ], [ true, %1 ], [ %13, %7 ]
  ret i1 %15, !dbg !736
}

; Function Attrs: nounwind uwtable
define zeroext i1 @force_conflicts(%struct.deppossi*) #0 !dbg !737 {
  %2 = alloca %struct.deppossi*, align 8
  store %struct.deppossi* %0, %struct.deppossi** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.deppossi** %2, metadata !738, metadata !393), !dbg !739
  %3 = call zeroext i1 @in_force(i32 2048), !dbg !740
  ret i1 %3, !dbg !741
}

; Function Attrs: nounwind uwtable
define void @clear_istobes() #0 !dbg !742 {
  %1 = alloca %struct.pkg_hash_iter*, align 8
  %2 = alloca %struct.pkginfo*, align 8
  call void @llvm.dbg.declare(metadata %struct.pkg_hash_iter** %1, metadata !743, metadata !393), !dbg !746
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %2, metadata !747, metadata !393), !dbg !748
  %3 = call %struct.pkg_hash_iter* @pkg_hash_iter_new(), !dbg !749
  store %struct.pkg_hash_iter* %3, %struct.pkg_hash_iter** %1, align 8, !dbg !750
  br label %4, !dbg !751

; <label>:4:                                      ; preds = %8, %0
  %5 = load %struct.pkg_hash_iter*, %struct.pkg_hash_iter** %1, align 8, !dbg !752
  %6 = call %struct.pkginfo* @pkg_hash_iter_next_pkg(%struct.pkg_hash_iter* %5), !dbg !754
  store %struct.pkginfo* %6, %struct.pkginfo** %2, align 8, !dbg !755
  %7 = icmp ne %struct.pkginfo* %6, null, !dbg !756
  br i1 %7, label %8, label %18, !dbg !757

; <label>:8:                                      ; preds = %4
  %9 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !758
  call void @ensure_package_clientdata(%struct.pkginfo* %9), !dbg !760
  %10 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !761
  %11 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %10, i32 0, i32 11, !dbg !762
  %12 = load %struct.perpackagestate*, %struct.perpackagestate** %11, align 8, !dbg !762
  %13 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %12, i32 0, i32 0, !dbg !763
  store i32 0, i32* %13, align 8, !dbg !764
  %14 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !765
  %15 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %14, i32 0, i32 11, !dbg !766
  %16 = load %struct.perpackagestate*, %struct.perpackagestate** %15, align 8, !dbg !766
  %17 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %16, i32 0, i32 3, !dbg !767
  store i32 0, i32* %17, align 4, !dbg !768
  br label %4, !dbg !769, !llvm.loop !771

; <label>:18:                                     ; preds = %4
  %19 = load %struct.pkg_hash_iter*, %struct.pkg_hash_iter** %1, align 8, !dbg !772
  call void @pkg_hash_iter_free(%struct.pkg_hash_iter* %19), !dbg !773
  ret void, !dbg !774
}

declare %struct.pkg_hash_iter* @pkg_hash_iter_new() #2

declare %struct.pkginfo* @pkg_hash_iter_next_pkg(%struct.pkg_hash_iter*) #2

declare void @ensure_package_clientdata(%struct.pkginfo*) #2

declare void @pkg_hash_iter_free(%struct.pkg_hash_iter*) #2

; Function Attrs: nounwind uwtable
define zeroext i1 @dir_has_conffiles(%struct.fsys_namenode*, %struct.pkginfo*) #0 !dbg !775 {
  %3 = alloca i1, align 1
  %4 = alloca %struct.fsys_namenode*, align 8
  %5 = alloca %struct.pkginfo*, align 8
  %6 = alloca %struct.conffile*, align 8
  %7 = alloca i64, align 8
  store %struct.fsys_namenode* %0, %struct.fsys_namenode** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %4, metadata !778, metadata !393), !dbg !779
  store %struct.pkginfo* %1, %struct.pkginfo** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %5, metadata !780, metadata !393), !dbg !781
  call void @llvm.dbg.declare(metadata %struct.conffile** %6, metadata !782, metadata !393), !dbg !783
  call void @llvm.dbg.declare(metadata i64* %7, metadata !784, metadata !393), !dbg !785
  %8 = load %struct.fsys_namenode*, %struct.fsys_namenode** %4, align 8, !dbg !786
  %9 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %8, i32 0, i32 1, !dbg !787
  %10 = load i8*, i8** %9, align 8, !dbg !787
  %11 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !788
  %12 = call i8* @pkg_name(%struct.pkginfo* %11, i32 3), !dbg !789
  call void (i32, i8*, ...) @debug(i32 512, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.23, i32 0, i32 0), i8* %10, i8* %12), !dbg !790
  %13 = load %struct.fsys_namenode*, %struct.fsys_namenode** %4, align 8, !dbg !791
  %14 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %13, i32 0, i32 1, !dbg !792
  %15 = load i8*, i8** %14, align 8, !dbg !792
  %16 = call i64 @strlen(i8* %15) #9, !dbg !793
  store i64 %16, i64* %7, align 8, !dbg !794
  %17 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !795
  %18 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %17, i32 0, i32 9, !dbg !797
  %19 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %18, i32 0, i32 12, !dbg !798
  %20 = load %struct.conffile*, %struct.conffile** %19, align 8, !dbg !798
  store %struct.conffile* %20, %struct.conffile** %6, align 8, !dbg !799
  br label %21, !dbg !800

; <label>:21:                                     ; preds = %66, %2
  %22 = load %struct.conffile*, %struct.conffile** %6, align 8, !dbg !801
  %23 = icmp ne %struct.conffile* %22, null, !dbg !804
  br i1 %23, label %24, label %70, !dbg !804

; <label>:24:                                     ; preds = %21
  %25 = load %struct.conffile*, %struct.conffile** %6, align 8, !dbg !805
  %26 = getelementptr inbounds %struct.conffile, %struct.conffile* %25, i32 0, i32 3, !dbg !808
  %27 = load i8, i8* %26, align 8, !dbg !808
  %28 = trunc i8 %27 to i1, !dbg !808
  br i1 %28, label %29, label %30, !dbg !809

; <label>:29:                                     ; preds = %24
  br label %66, !dbg !810

; <label>:30:                                     ; preds = %24
  %31 = load %struct.fsys_namenode*, %struct.fsys_namenode** %4, align 8, !dbg !811
  %32 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %31, i32 0, i32 1, !dbg !813
  %33 = load i8*, i8** %32, align 8, !dbg !813
  %34 = load %struct.conffile*, %struct.conffile** %6, align 8, !dbg !814
  %35 = getelementptr inbounds %struct.conffile, %struct.conffile* %34, i32 0, i32 1, !dbg !815
  %36 = load i8*, i8** %35, align 8, !dbg !815
  %37 = load i64, i64* %7, align 8, !dbg !816
  %38 = call i32 @strncmp(i8* %33, i8* %36, i64 %37) #9, !dbg !817
  %39 = icmp eq i32 %38, 0, !dbg !818
  br i1 %39, label %40, label %65, !dbg !819

; <label>:40:                                     ; preds = %30
  %41 = load %struct.conffile*, %struct.conffile** %6, align 8, !dbg !820
  %42 = getelementptr inbounds %struct.conffile, %struct.conffile* %41, i32 0, i32 1, !dbg !821
  %43 = load i8*, i8** %42, align 8, !dbg !821
  %44 = call i64 @strlen(i8* %43) #9, !dbg !822
  %45 = load i64, i64* %7, align 8, !dbg !823
  %46 = icmp ugt i64 %44, %45, !dbg !824
  br i1 %46, label %47, label %65, !dbg !825

; <label>:47:                                     ; preds = %40
  %48 = load i64, i64* %7, align 8, !dbg !826
  %49 = load %struct.conffile*, %struct.conffile** %6, align 8, !dbg !828
  %50 = getelementptr inbounds %struct.conffile, %struct.conffile* %49, i32 0, i32 1, !dbg !829
  %51 = load i8*, i8** %50, align 8, !dbg !829
  %52 = getelementptr inbounds i8, i8* %51, i64 %48, !dbg !828
  %53 = load i8, i8* %52, align 1, !dbg !828
  %54 = sext i8 %53 to i32, !dbg !828
  %55 = icmp eq i32 %54, 47, !dbg !830
  br i1 %55, label %56, label %65, !dbg !831

; <label>:56:                                     ; preds = %47
  %57 = load %struct.fsys_namenode*, %struct.fsys_namenode** %4, align 8, !dbg !833
  %58 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %57, i32 0, i32 1, !dbg !835
  %59 = load i8*, i8** %58, align 8, !dbg !835
  %60 = load %struct.conffile*, %struct.conffile** %6, align 8, !dbg !836
  %61 = getelementptr inbounds %struct.conffile, %struct.conffile* %60, i32 0, i32 1, !dbg !837
  %62 = load i8*, i8** %61, align 8, !dbg !837
  %63 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !838
  %64 = call i8* @pkg_name(%struct.pkginfo* %63, i32 3), !dbg !839
  call void (i32, i8*, ...) @debug(i32 512, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.24, i32 0, i32 0), i8* %59, i8* %62, i8* %64), !dbg !840
  store i1 true, i1* %3, align 1, !dbg !841
  br label %71, !dbg !841

; <label>:65:                                     ; preds = %47, %40, %30
  br label %66, !dbg !842

; <label>:66:                                     ; preds = %65, %29
  %67 = load %struct.conffile*, %struct.conffile** %6, align 8, !dbg !843
  %68 = getelementptr inbounds %struct.conffile, %struct.conffile* %67, i32 0, i32 0, !dbg !845
  %69 = load %struct.conffile*, %struct.conffile** %68, align 8, !dbg !845
  store %struct.conffile* %69, %struct.conffile** %6, align 8, !dbg !846
  br label %21, !dbg !847, !llvm.loop !848

; <label>:70:                                     ; preds = %21
  call void (i32, i8*, ...) @debug(i32 512, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i32 0, i32 0)), !dbg !850
  store i1 false, i1* %3, align 1, !dbg !851
  br label %71, !dbg !851

; <label>:71:                                     ; preds = %70, %56
  %72 = load i1, i1* %3, align 1, !dbg !852
  ret i1 %72, !dbg !852
}

declare i8* @pkg_name(%struct.pkginfo*, i32) #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #6

; Function Attrs: nounwind uwtable
define zeroext i1 @dir_is_used_by_others(%struct.fsys_namenode*, %struct.pkginfo*) #0 !dbg !853 {
  %3 = alloca i1, align 1
  %4 = alloca %struct.fsys_namenode*, align 8
  %5 = alloca %struct.pkginfo*, align 8
  %6 = alloca %struct.fsys_node_pkgs_iter*, align 8
  %7 = alloca %struct.pkginfo*, align 8
  store %struct.fsys_namenode* %0, %struct.fsys_namenode** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %4, metadata !854, metadata !393), !dbg !855
  store %struct.pkginfo* %1, %struct.pkginfo** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %5, metadata !856, metadata !393), !dbg !857
  call void @llvm.dbg.declare(metadata %struct.fsys_node_pkgs_iter** %6, metadata !858, metadata !393), !dbg !861
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %7, metadata !862, metadata !393), !dbg !863
  %8 = load %struct.fsys_namenode*, %struct.fsys_namenode** %4, align 8, !dbg !864
  %9 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %8, i32 0, i32 1, !dbg !865
  %10 = load i8*, i8** %9, align 8, !dbg !865
  %11 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !866
  %12 = icmp ne %struct.pkginfo* %11, null, !dbg !866
  br i1 %12, label %13, label %16, !dbg !866

; <label>:13:                                     ; preds = %2
  %14 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !867
  %15 = call i8* @pkg_name(%struct.pkginfo* %14, i32 3), !dbg !869
  br label %17, !dbg !870

; <label>:16:                                     ; preds = %2
  br label %17, !dbg !871

; <label>:17:                                     ; preds = %16, %13
  %18 = phi i8* [ %15, %13 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), %16 ], !dbg !873
  call void (i32, i8*, ...) @debug(i32 512, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.26, i32 0, i32 0), i8* %10, i8* %18), !dbg !875
  %19 = load %struct.fsys_namenode*, %struct.fsys_namenode** %4, align 8, !dbg !876
  %20 = call %struct.fsys_node_pkgs_iter* @fsys_node_pkgs_iter_new(%struct.fsys_namenode* %19), !dbg !877
  store %struct.fsys_node_pkgs_iter* %20, %struct.fsys_node_pkgs_iter** %6, align 8, !dbg !878
  br label %21, !dbg !879

; <label>:21:                                     ; preds = %31, %17
  %22 = load %struct.fsys_node_pkgs_iter*, %struct.fsys_node_pkgs_iter** %6, align 8, !dbg !880
  %23 = call %struct.pkginfo* @fsys_node_pkgs_iter_next(%struct.fsys_node_pkgs_iter* %22), !dbg !881
  store %struct.pkginfo* %23, %struct.pkginfo** %7, align 8, !dbg !882
  %24 = icmp ne %struct.pkginfo* %23, null, !dbg !883
  br i1 %24, label %25, label %34, !dbg !883

; <label>:25:                                     ; preds = %21
  %26 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !884
  %27 = call i8* @pkg_name(%struct.pkginfo* %26, i32 3), !dbg !886
  call void (i32, i8*, ...) @debug(i32 512, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.27, i32 0, i32 0), i8* %27), !dbg !887
  %28 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !888
  %29 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !890
  %30 = icmp eq %struct.pkginfo* %28, %29, !dbg !891
  br i1 %30, label %31, label %32, !dbg !892

; <label>:31:                                     ; preds = %25
  br label %21, !dbg !893, !llvm.loop !894

; <label>:32:                                     ; preds = %25
  %33 = load %struct.fsys_node_pkgs_iter*, %struct.fsys_node_pkgs_iter** %6, align 8, !dbg !895
  call void @fsys_node_pkgs_iter_free(%struct.fsys_node_pkgs_iter* %33), !dbg !896
  call void (i32, i8*, ...) @debug(i32 512, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.28, i32 0, i32 0)), !dbg !897
  store i1 true, i1* %3, align 1, !dbg !898
  br label %36, !dbg !898

; <label>:34:                                     ; preds = %21
  %35 = load %struct.fsys_node_pkgs_iter*, %struct.fsys_node_pkgs_iter** %6, align 8, !dbg !899
  call void @fsys_node_pkgs_iter_free(%struct.fsys_node_pkgs_iter* %35), !dbg !900
  call void (i32, i8*, ...) @debug(i32 512, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.29, i32 0, i32 0)), !dbg !901
  store i1 false, i1* %3, align 1, !dbg !902
  br label %36, !dbg !902

; <label>:36:                                     ; preds = %34, %32
  %37 = load i1, i1* %3, align 1, !dbg !903
  ret i1 %37, !dbg !903
}

declare %struct.fsys_node_pkgs_iter* @fsys_node_pkgs_iter_new(%struct.fsys_namenode*) #2

declare %struct.pkginfo* @fsys_node_pkgs_iter_next(%struct.fsys_node_pkgs_iter*) #2

declare void @fsys_node_pkgs_iter_free(%struct.fsys_node_pkgs_iter*) #2

; Function Attrs: nounwind uwtable
define zeroext i1 @dir_is_used_by_pkg(%struct.fsys_namenode*, %struct.pkginfo*, %struct.fsys_namenode_list*) #0 !dbg !904 {
  %4 = alloca i1, align 1
  %5 = alloca %struct.fsys_namenode*, align 8
  %6 = alloca %struct.pkginfo*, align 8
  %7 = alloca %struct.fsys_namenode_list*, align 8
  %8 = alloca %struct.fsys_namenode_list*, align 8
  %9 = alloca i64, align 8
  store %struct.fsys_namenode* %0, %struct.fsys_namenode** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %5, metadata !907, metadata !393), !dbg !908
  store %struct.pkginfo* %1, %struct.pkginfo** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %6, metadata !909, metadata !393), !dbg !910
  store %struct.fsys_namenode_list* %2, %struct.fsys_namenode_list** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode_list** %7, metadata !911, metadata !393), !dbg !912
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode_list** %8, metadata !913, metadata !393), !dbg !914
  call void @llvm.dbg.declare(metadata i64* %9, metadata !915, metadata !393), !dbg !916
  %10 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !917
  %11 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %10, i32 0, i32 1, !dbg !918
  %12 = load i8*, i8** %11, align 8, !dbg !918
  %13 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !919
  %14 = icmp ne %struct.pkginfo* %13, null, !dbg !919
  br i1 %14, label %15, label %18, !dbg !919

; <label>:15:                                     ; preds = %3
  %16 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !920
  %17 = call i8* @pkg_name(%struct.pkginfo* %16, i32 3), !dbg !922
  br label %19, !dbg !923

; <label>:18:                                     ; preds = %3
  br label %19, !dbg !924

; <label>:19:                                     ; preds = %18, %15
  %20 = phi i8* [ %17, %15 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), %18 ], !dbg !926
  call void (i32, i8*, ...) @debug(i32 512, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.30, i32 0, i32 0), i8* %12, i8* %20), !dbg !928
  %21 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !929
  %22 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %21, i32 0, i32 1, !dbg !930
  %23 = load i8*, i8** %22, align 8, !dbg !930
  %24 = call i64 @strlen(i8* %23) #9, !dbg !931
  store i64 %24, i64* %9, align 8, !dbg !932
  %25 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %7, align 8, !dbg !933
  store %struct.fsys_namenode_list* %25, %struct.fsys_namenode_list** %8, align 8, !dbg !935
  br label %26, !dbg !936

; <label>:26:                                     ; preds = %68, %19
  %27 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %8, align 8, !dbg !937
  %28 = icmp ne %struct.fsys_namenode_list* %27, null, !dbg !940
  br i1 %28, label %29, label %72, !dbg !940

; <label>:29:                                     ; preds = %26
  %30 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %8, align 8, !dbg !941
  %31 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %30, i32 0, i32 1, !dbg !943
  %32 = load %struct.fsys_namenode*, %struct.fsys_namenode** %31, align 8, !dbg !943
  %33 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %32, i32 0, i32 1, !dbg !944
  %34 = load i8*, i8** %33, align 8, !dbg !944
  call void (i32, i8*, ...) @debug(i32 512, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.31, i32 0, i32 0), i8* %34), !dbg !945
  %35 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !946
  %36 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %35, i32 0, i32 1, !dbg !948
  %37 = load i8*, i8** %36, align 8, !dbg !948
  %38 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %8, align 8, !dbg !949
  %39 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %38, i32 0, i32 1, !dbg !950
  %40 = load %struct.fsys_namenode*, %struct.fsys_namenode** %39, align 8, !dbg !950
  %41 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %40, i32 0, i32 1, !dbg !951
  %42 = load i8*, i8** %41, align 8, !dbg !951
  %43 = load i64, i64* %9, align 8, !dbg !952
  %44 = call i32 @strncmp(i8* %37, i8* %42, i64 %43) #9, !dbg !953
  %45 = icmp eq i32 %44, 0, !dbg !954
  br i1 %45, label %46, label %67, !dbg !955

; <label>:46:                                     ; preds = %29
  %47 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %8, align 8, !dbg !956
  %48 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %47, i32 0, i32 1, !dbg !957
  %49 = load %struct.fsys_namenode*, %struct.fsys_namenode** %48, align 8, !dbg !957
  %50 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %49, i32 0, i32 1, !dbg !958
  %51 = load i8*, i8** %50, align 8, !dbg !958
  %52 = call i64 @strlen(i8* %51) #9, !dbg !959
  %53 = load i64, i64* %9, align 8, !dbg !960
  %54 = icmp ugt i64 %52, %53, !dbg !961
  br i1 %54, label %55, label %67, !dbg !962

; <label>:55:                                     ; preds = %46
  %56 = load i64, i64* %9, align 8, !dbg !963
  %57 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %8, align 8, !dbg !964
  %58 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %57, i32 0, i32 1, !dbg !965
  %59 = load %struct.fsys_namenode*, %struct.fsys_namenode** %58, align 8, !dbg !965
  %60 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %59, i32 0, i32 1, !dbg !966
  %61 = load i8*, i8** %60, align 8, !dbg !966
  %62 = getelementptr inbounds i8, i8* %61, i64 %56, !dbg !964
  %63 = load i8, i8* %62, align 1, !dbg !964
  %64 = sext i8 %63 to i32, !dbg !964
  %65 = icmp eq i32 %64, 47, !dbg !967
  br i1 %65, label %66, label %67, !dbg !968

; <label>:66:                                     ; preds = %55
  call void (i32, i8*, ...) @debug(i32 512, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.32, i32 0, i32 0)), !dbg !970
  store i1 true, i1* %4, align 1, !dbg !972
  br label %73, !dbg !972

; <label>:67:                                     ; preds = %55, %46, %29
  br label %68, !dbg !973

; <label>:68:                                     ; preds = %67
  %69 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %8, align 8, !dbg !974
  %70 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %69, i32 0, i32 0, !dbg !976
  %71 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %70, align 8, !dbg !976
  store %struct.fsys_namenode_list* %71, %struct.fsys_namenode_list** %8, align 8, !dbg !977
  br label %26, !dbg !978, !llvm.loop !979

; <label>:72:                                     ; preds = %26
  call void (i32, i8*, ...) @debug(i32 512, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.33, i32 0, i32 0)), !dbg !981
  store i1 false, i1* %4, align 1, !dbg !982
  br label %73, !dbg !982

; <label>:73:                                     ; preds = %72, %66
  %74 = load i1, i1* %4, align 1, !dbg !983
  ret i1 %74, !dbg !983
}

; Function Attrs: nounwind uwtable
define void @conffile_mark_obsolete(%struct.pkginfo*, %struct.fsys_namenode*) #0 !dbg !984 {
  %3 = alloca %struct.pkginfo*, align 8
  %4 = alloca %struct.fsys_namenode*, align 8
  %5 = alloca %struct.conffile*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %3, metadata !987, metadata !393), !dbg !988
  store %struct.fsys_namenode* %1, %struct.fsys_namenode** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %4, metadata !989, metadata !393), !dbg !990
  call void @llvm.dbg.declare(metadata %struct.conffile** %5, metadata !991, metadata !393), !dbg !992
  %6 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !993
  %7 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %6, i32 0, i32 9, !dbg !995
  %8 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %7, i32 0, i32 12, !dbg !996
  %9 = load %struct.conffile*, %struct.conffile** %8, align 8, !dbg !996
  store %struct.conffile* %9, %struct.conffile** %5, align 8, !dbg !997
  br label %10, !dbg !998

; <label>:10:                                     ; preds = %31, %2
  %11 = load %struct.conffile*, %struct.conffile** %5, align 8, !dbg !999
  %12 = icmp ne %struct.conffile* %11, null, !dbg !1002
  br i1 %12, label %13, label %35, !dbg !1002

; <label>:13:                                     ; preds = %10
  %14 = load %struct.conffile*, %struct.conffile** %5, align 8, !dbg !1003
  %15 = getelementptr inbounds %struct.conffile, %struct.conffile* %14, i32 0, i32 1, !dbg !1006
  %16 = load i8*, i8** %15, align 8, !dbg !1006
  %17 = load %struct.fsys_namenode*, %struct.fsys_namenode** %4, align 8, !dbg !1007
  %18 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %17, i32 0, i32 1, !dbg !1008
  %19 = load i8*, i8** %18, align 8, !dbg !1008
  %20 = call i32 @strcmp(i8* %16, i8* %19) #9, !dbg !1009
  %21 = icmp eq i32 %20, 0, !dbg !1010
  br i1 %21, label %22, label %30, !dbg !1011

; <label>:22:                                     ; preds = %13
  %23 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !1012
  %24 = call i8* @pkg_name(%struct.pkginfo* %23, i32 3), !dbg !1014
  %25 = load %struct.conffile*, %struct.conffile** %5, align 8, !dbg !1015
  %26 = getelementptr inbounds %struct.conffile, %struct.conffile* %25, i32 0, i32 1, !dbg !1016
  %27 = load i8*, i8** %26, align 8, !dbg !1016
  call void (i32, i8*, ...) @debug(i32 16, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.34, i32 0, i32 0), i8* %24, i8* %27), !dbg !1017
  %28 = load %struct.conffile*, %struct.conffile** %5, align 8, !dbg !1018
  %29 = getelementptr inbounds %struct.conffile, %struct.conffile* %28, i32 0, i32 3, !dbg !1019
  store i8 1, i8* %29, align 8, !dbg !1020
  br label %35, !dbg !1021

; <label>:30:                                     ; preds = %13
  br label %31, !dbg !1022

; <label>:31:                                     ; preds = %30
  %32 = load %struct.conffile*, %struct.conffile** %5, align 8, !dbg !1023
  %33 = getelementptr inbounds %struct.conffile, %struct.conffile* %32, i32 0, i32 0, !dbg !1025
  %34 = load %struct.conffile*, %struct.conffile** %33, align 8, !dbg !1025
  store %struct.conffile* %34, %struct.conffile** %5, align 8, !dbg !1026
  br label %10, !dbg !1027, !llvm.loop !1028

; <label>:35:                                     ; preds = %22, %10
  ret void, !dbg !1030
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #6

; Function Attrs: nounwind uwtable
define void @pkg_conffiles_mark_old(%struct.pkginfo*) #0 !dbg !1031 {
  %2 = alloca %struct.pkginfo*, align 8
  %3 = alloca %struct.conffile*, align 8
  %4 = alloca %struct.fsys_namenode*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %2, metadata !1034, metadata !393), !dbg !1035
  call void @llvm.dbg.declare(metadata %struct.conffile** %3, metadata !1036, metadata !393), !dbg !1039
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %4, metadata !1040, metadata !393), !dbg !1041
  %5 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1042
  %6 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %5, i32 0, i32 9, !dbg !1044
  %7 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %6, i32 0, i32 12, !dbg !1045
  %8 = load %struct.conffile*, %struct.conffile** %7, align 8, !dbg !1045
  store %struct.conffile* %8, %struct.conffile** %3, align 8, !dbg !1046
  br label %9, !dbg !1047

; <label>:9:                                      ; preds = %41, %1
  %10 = load %struct.conffile*, %struct.conffile** %3, align 8, !dbg !1048
  %11 = icmp ne %struct.conffile* %10, null, !dbg !1051
  br i1 %11, label %12, label %45, !dbg !1051

; <label>:12:                                     ; preds = %9
  %13 = load %struct.conffile*, %struct.conffile** %3, align 8, !dbg !1052
  %14 = getelementptr inbounds %struct.conffile, %struct.conffile* %13, i32 0, i32 1, !dbg !1054
  %15 = load i8*, i8** %14, align 8, !dbg !1054
  %16 = call %struct.fsys_namenode* @fsys_hash_find_node(i8* %15, i32 0), !dbg !1055
  store %struct.fsys_namenode* %16, %struct.fsys_namenode** %4, align 8, !dbg !1056
  %17 = load %struct.fsys_namenode*, %struct.fsys_namenode** %4, align 8, !dbg !1057
  %18 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %17, i32 0, i32 6, !dbg !1058
  %19 = load i32, i32* %18, align 8, !dbg !1059
  %20 = or i32 %19, 4, !dbg !1059
  store i32 %20, i32* %18, align 8, !dbg !1059
  %21 = load %struct.fsys_namenode*, %struct.fsys_namenode** %4, align 8, !dbg !1060
  %22 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %21, i32 0, i32 7, !dbg !1062
  %23 = load i8*, i8** %22, align 8, !dbg !1062
  %24 = icmp ne i8* %23, null, !dbg !1060
  br i1 %24, label %31, label %25, !dbg !1063

; <label>:25:                                     ; preds = %12
  %26 = load %struct.conffile*, %struct.conffile** %3, align 8, !dbg !1064
  %27 = getelementptr inbounds %struct.conffile, %struct.conffile* %26, i32 0, i32 2, !dbg !1065
  %28 = load i8*, i8** %27, align 8, !dbg !1065
  %29 = load %struct.fsys_namenode*, %struct.fsys_namenode** %4, align 8, !dbg !1066
  %30 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %29, i32 0, i32 7, !dbg !1067
  store i8* %28, i8** %30, align 8, !dbg !1068
  br label %31, !dbg !1066

; <label>:31:                                     ; preds = %25, %12
  %32 = load %struct.conffile*, %struct.conffile** %3, align 8, !dbg !1069
  %33 = getelementptr inbounds %struct.conffile, %struct.conffile* %32, i32 0, i32 1, !dbg !1070
  %34 = load i8*, i8** %33, align 8, !dbg !1070
  %35 = load %struct.fsys_namenode*, %struct.fsys_namenode** %4, align 8, !dbg !1071
  %36 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %35, i32 0, i32 1, !dbg !1072
  %37 = load i8*, i8** %36, align 8, !dbg !1072
  %38 = load %struct.fsys_namenode*, %struct.fsys_namenode** %4, align 8, !dbg !1073
  %39 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %38, i32 0, i32 6, !dbg !1074
  %40 = load i32, i32* %39, align 8, !dbg !1074
  call void (i32, i8*, ...) @debug(i32 128, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.pkg_conffiles_mark_old, i32 0, i32 0), i8* %34, i8* %37, i32 %40), !dbg !1075
  br label %41, !dbg !1076

; <label>:41:                                     ; preds = %31
  %42 = load %struct.conffile*, %struct.conffile** %3, align 8, !dbg !1077
  %43 = getelementptr inbounds %struct.conffile, %struct.conffile* %42, i32 0, i32 0, !dbg !1079
  %44 = load %struct.conffile*, %struct.conffile** %43, align 8, !dbg !1079
  store %struct.conffile* %44, %struct.conffile** %3, align 8, !dbg !1080
  br label %9, !dbg !1081, !llvm.loop !1082

; <label>:45:                                     ; preds = %9
  ret void, !dbg !1084
}

declare %struct.fsys_namenode* @fsys_hash_find_node(i8*, i32) #2

; Function Attrs: nounwind uwtable
define void @log_action(i8*, %struct.pkginfo*, %struct.pkgbin*) #0 !dbg !1085 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pkginfo*, align 8
  %6 = alloca %struct.pkgbin*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1088, metadata !393), !dbg !1089
  store %struct.pkginfo* %1, %struct.pkginfo** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %5, metadata !1090, metadata !393), !dbg !1091
  store %struct.pkgbin* %2, %struct.pkgbin** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %6, metadata !1092, metadata !393), !dbg !1093
  %7 = load i8*, i8** %4, align 8, !dbg !1094
  %8 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1095
  %9 = load %struct.pkgbin*, %struct.pkgbin** %6, align 8, !dbg !1096
  %10 = call i8* @pkgbin_name(%struct.pkginfo* %8, %struct.pkgbin* %9, i32 3), !dbg !1097
  %11 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1098
  %12 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %11, i32 0, i32 9, !dbg !1099
  %13 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %12, i32 0, i32 11, !dbg !1100
  %14 = call i8* @versiondescribe(%struct.dpkg_version* %13, i32 1), !dbg !1101
  %15 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1102
  %16 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %15, i32 0, i32 10, !dbg !1103
  %17 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %16, i32 0, i32 11, !dbg !1104
  %18 = call i8* @versiondescribe(%struct.dpkg_version* %17, i32 1), !dbg !1105
  call void (i8*, ...) @log_message(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i32 0, i32 0), i8* %7, i8* %10, i8* %14, i8* %18), !dbg !1106
  %19 = load i8*, i8** %4, align 8, !dbg !1108
  %20 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1109
  %21 = load %struct.pkgbin*, %struct.pkgbin** %6, align 8, !dbg !1110
  %22 = call i8* @pkgbin_name(%struct.pkginfo* %20, %struct.pkgbin* %21, i32 1), !dbg !1111
  call void (i8*, ...) @statusfd_send(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.37, i32 0, i32 0), i8* %19, i8* %22), !dbg !1112
  ret void, !dbg !1113
}

declare void @log_message(i8*, ...) #2

declare i8* @versiondescribe(%struct.dpkg_version*, i32) #2

declare void @statusfd_send(i8*, ...) #2

declare %struct.deppossi_pkg_iterator* @deppossi_pkg_iter_new(%struct.deppossi*, i32) #2

declare %struct.pkginfo* @deppossi_pkg_iter_next(%struct.deppossi_pkg_iterator*) #2

declare void @deppossi_pkg_iter_free(%struct.deppossi_pkg_iterator*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { noreturn }
attributes #9 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!185, !186}
!llvm.ident = !{!187}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !162, globals: !167)
!1 = !DIFile(filename: "[inter]src--help.o.i", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!2 = !{!3, !15, !26, !35, !43, !47, !57, !67, !73, !81, !86, !99, !115, !121, !152, !157}
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
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "debugflags", file: !100, line: 41, size: 32, align: 32, elements: !101)
!100 = !DIFile(filename: "../lib/dpkg/debug.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!101 = !{!102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114}
!102 = !DIEnumerator(name: "dbg_general", value: 1)
!103 = !DIEnumerator(name: "dbg_scripts", value: 2)
!104 = !DIEnumerator(name: "dbg_eachfile", value: 8)
!105 = !DIEnumerator(name: "dbg_eachfiledetail", value: 64)
!106 = !DIEnumerator(name: "dbg_conff", value: 16)
!107 = !DIEnumerator(name: "dbg_conffdetail", value: 128)
!108 = !DIEnumerator(name: "dbg_depcon", value: 32)
!109 = !DIEnumerator(name: "dbg_depcondetail", value: 256)
!110 = !DIEnumerator(name: "dbg_veryverbose", value: 512)
!111 = !DIEnumerator(name: "dbg_stupidlyverbose", value: 1024)
!112 = !DIEnumerator(name: "dbg_triggers", value: 4096)
!113 = !DIEnumerator(name: "dbg_triggersdetail", value: 8192)
!114 = !DIEnumerator(name: "dbg_triggersstupid", value: 16384)
!115 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkg_name_arch_when", file: !4, line: 396, size: 32, align: 32, elements: !116)
!116 = !{!117, !118, !119, !120}
!117 = !DIEnumerator(name: "pnaw_never", value: 0)
!118 = !DIEnumerator(name: "pnaw_nonambig", value: 1)
!119 = !DIEnumerator(name: "pnaw_foreign", value: 2)
!120 = !DIEnumerator(name: "pnaw_always", value: 3)
!121 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "force_flags", file: !122, line: 28, size: 32, align: 32, elements: !123)
!122 = !DIFile(filename: "force.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!123 = !{!124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151}
!124 = !DIEnumerator(name: "FORCE_ARCHITECTURE", value: 1)
!125 = !DIEnumerator(name: "FORCE_BAD_PATH", value: 2)
!126 = !DIEnumerator(name: "FORCE_BAD_VERIFY", value: 4)
!127 = !DIEnumerator(name: "FORCE_BAD_VERSION", value: 8)
!128 = !DIEnumerator(name: "FORCE_BREAKS", value: 16)
!129 = !DIEnumerator(name: "FORCE_CONFF_ASK", value: 32)
!130 = !DIEnumerator(name: "FORCE_CONFF_DEF", value: 64)
!131 = !DIEnumerator(name: "FORCE_CONFF_MISS", value: 128)
!132 = !DIEnumerator(name: "FORCE_CONFF_NEW", value: 256)
!133 = !DIEnumerator(name: "FORCE_CONFF_OLD", value: 512)
!134 = !DIEnumerator(name: "FORCE_CONFIGURE_ANY", value: 1024)
!135 = !DIEnumerator(name: "FORCE_CONFLICTS", value: 2048)
!136 = !DIEnumerator(name: "FORCE_DEPENDS", value: 4096)
!137 = !DIEnumerator(name: "FORCE_DEPENDS_VERSION", value: 8192)
!138 = !DIEnumerator(name: "FORCE_DOWNGRADE", value: 16384)
!139 = !DIEnumerator(name: "FORCE_HOLD", value: 32768)
!140 = !DIEnumerator(name: "FORCE_NON_ROOT", value: 65536)
!141 = !DIEnumerator(name: "FORCE_OVERWRITE", value: 131072)
!142 = !DIEnumerator(name: "FORCE_OVERWRITE_DIR", value: 262144)
!143 = !DIEnumerator(name: "FORCE_OVERWRITE_DIVERTED", value: 524288)
!144 = !DIEnumerator(name: "FORCE_REMOVE_ESSENTIAL", value: 1048576)
!145 = !DIEnumerator(name: "FORCE_REMOVE_REINSTREQ", value: 2097152)
!146 = !DIEnumerator(name: "FORCE_SCRIPT_CHROOTLESS", value: 4194304)
!147 = !DIEnumerator(name: "FORCE_UNSAFE_IO", value: 8388608)
!148 = !DIEnumerator(name: "FORCE_STATOVERRIDE_ADD", value: 16777216)
!149 = !DIEnumerator(name: "FORCE_STATOVERRIDE_DEL", value: 33554432)
!150 = !DIEnumerator(name: "FORCE_SECURITY_MAC", value: 67108864)
!151 = !DIEnumerator(name: "FORCE_ALL", value: -1)
!152 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "versiondisplayepochwhen", file: !4, line: 388, size: 32, align: 32, elements: !153)
!153 = !{!154, !155, !156}
!154 = !DIEnumerator(name: "vdew_never", value: 0)
!155 = !DIEnumerator(name: "vdew_nonambig", value: 1)
!156 = !DIEnumerator(name: "vdew_always", value: 2)
!157 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "which_pkgbin", file: !74, line: 340, size: 32, align: 32, elements: !158)
!158 = !{!159, !160, !161}
!159 = !DIEnumerator(name: "wpb_installed", value: 0)
!160 = !DIEnumerator(name: "wpb_available", value: 1)
!161 = !DIEnumerator(name: "wpb_by_istobe", value: 2)
!162 = !{!163, !166}
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !164, line: 216, baseType: !165)
!164 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!165 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!167 = !{!168, !177}
!168 = distinct !DIGlobalVariable(name: "statusstrings", scope: !0, file: !169, line: 41, type: !170, isLocal: false, isDefinition: true, variable: [8 x i8*]* @statusstrings)
!169 = !DIFile(filename: "help.c", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 512, align: 64, elements: !175)
!171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !172)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64, align: 64)
!173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !174)
!174 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!175 = !{!176}
!176 = !DISubrange(count: 8)
!177 = distinct !DIGlobalVariable(name: "prog_list", scope: !178, file: !169, line: 115, type: !182, isLocal: true, isDefinition: true, variable: [7 x i8*]* @checkpath.prog_list)
!178 = distinct !DISubprogram(name: "checkpath", scope: !169, file: !169, line: 114, type: !179, isLocal: false, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !181)
!179 = !DISubroutineType(types: !180)
!180 = !{null}
!181 = !{}
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 448, align: 64, elements: !183)
!183 = !{!184}
!184 = !DISubrange(count: 7)
!185 = !{i32 2, !"Dwarf Version", i32 4}
!186 = !{i32 2, !"Debug Info Version", i32 3}
!187 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!188 = distinct !DISubprogram(name: "namenodetouse", scope: !169, file: !169, line: 53, type: !189, isLocal: false, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !181)
!189 = !DISubroutineType(types: !190)
!190 = !{!191, !191, !203, !391}
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64, align: 64)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode", file: !87, line: 90, size: 640, align: 64, elements: !193)
!193 = !{!194, !195, !196, !350, !358, !375, !378, !379, !380, !381}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !192, file: !87, line: 91, baseType: !191, size: 64, align: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !192, file: !87, line: 92, baseType: !172, size: 64, align: 64, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "packages", scope: !192, file: !87, line: 93, baseType: !197, size: 64, align: 64, offset: 128)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64, align: 64)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_list", file: !199, line: 34, size: 128, align: 64, elements: !200)
!199 = !DIFile(filename: "../lib/dpkg/pkg-list.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!200 = !{!201, !202}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !198, file: !199, line: 35, baseType: !197, size: 64, align: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !198, file: !199, line: 36, baseType: !203, size: 64, align: 64, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64, align: 64)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkginfo", file: !4, line: 195, size: 3072, align: 64, elements: !205)
!205 = !{!206, !255, !256, !257, !258, !259, !260, !261, !262, !263, !293, !294, !304, !313, !329, !330, !336, !342, !348, !349}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !204, file: !4, line: 196, baseType: !207, size: 64, align: 64)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64, align: 64)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgset", file: !4, line: 242, size: 3392, align: 64, elements: !209)
!209 = !{!210, !211, !212, !213, !253}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !208, file: !4, line: 243, baseType: !207, size: 64, align: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !208, file: !4, line: 244, baseType: !172, size: 64, align: 64, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !208, file: !4, line: 245, baseType: !204, size: 3072, align: 64, offset: 128)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "depended", scope: !208, file: !4, line: 249, baseType: !214, size: 128, align: 64, offset: 3200)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !208, file: !4, line: 246, size: 128, align: 64, elements: !215)
!215 = !{!216, !252}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !214, file: !4, line: 247, baseType: !217, size: 64, align: 64)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64, align: 64)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "deppossi", file: !4, line: 63, size: 640, align: 64, elements: !219)
!219 = !{!220, !228, !229, !230, !231, !232, !241, !248, !249, !251}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !218, file: !4, line: 64, baseType: !221, size: 64, align: 64)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64, align: 64)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dependency", file: !4, line: 56, size: 256, align: 64, elements: !223)
!223 = !{!224, !225, !226, !227}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !222, file: !4, line: 57, baseType: !203, size: 64, align: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !222, file: !4, line: 58, baseType: !221, size: 64, align: 64, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !222, file: !4, line: 59, baseType: !217, size: 64, align: 64, offset: 128)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !222, file: !4, line: 60, baseType: !3, size: 32, align: 32, offset: 192)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "ed", scope: !218, file: !4, line: 65, baseType: !207, size: 64, align: 64, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !218, file: !4, line: 66, baseType: !217, size: 64, align: 64, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "rev_next", scope: !218, file: !4, line: 66, baseType: !217, size: 64, align: 64, offset: 192)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "rev_prev", scope: !218, file: !4, line: 66, baseType: !217, size: 64, align: 64, offset: 256)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !218, file: !4, line: 67, baseType: !233, size: 64, align: 64, offset: 320)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64, align: 64)
!234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !235)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_arch", file: !16, line: 48, size: 192, align: 64, elements: !236)
!236 = !{!237, !239, !240}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !235, file: !16, line: 49, baseType: !238, size: 64, align: 64)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64, align: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !235, file: !16, line: 50, baseType: !172, size: 64, align: 64, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !235, file: !16, line: 51, baseType: !15, size: 32, align: 32, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !218, file: !4, line: 68, baseType: !242, size: 192, align: 64, offset: 384)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_version", file: !27, line: 42, size: 192, align: 64, elements: !243)
!243 = !{!244, !246, !247}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !242, file: !27, line: 44, baseType: !245, size: 32, align: 32)
!245 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !242, file: !27, line: 46, baseType: !172, size: 64, align: 64, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !242, file: !27, line: 48, baseType: !172, size: 64, align: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "verrel", scope: !218, file: !4, line: 69, baseType: !26, size: 32, align: 32, offset: 576)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "arch_is_implicit", scope: !218, file: !4, line: 70, baseType: !250, size: 8, align: 8, offset: 608)
!250 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "cyclebreak", scope: !218, file: !4, line: 71, baseType: !250, size: 8, align: 8, offset: 616)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !214, file: !4, line: 248, baseType: !217, size: 64, align: 64, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "installed_instances", scope: !208, file: !4, line: 250, baseType: !254, size: 32, align: 32, offset: 3328)
!254 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "arch_next", scope: !204, file: !4, line: 197, baseType: !203, size: 64, align: 64, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "want", scope: !204, file: !4, line: 199, baseType: !35, size: 32, align: 32, offset: 128)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "eflag", scope: !204, file: !4, line: 201, baseType: !43, size: 32, align: 32, offset: 160)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !204, file: !4, line: 202, baseType: !47, size: 32, align: 32, offset: 192)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !204, file: !4, line: 203, baseType: !57, size: 32, align: 32, offset: 224)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "otherpriority", scope: !204, file: !4, line: 204, baseType: !172, size: 64, align: 64, offset: 256)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "section", scope: !204, file: !4, line: 205, baseType: !172, size: 64, align: 64, offset: 320)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "configversion", scope: !204, file: !4, line: 206, baseType: !242, size: 192, align: 64, offset: 384)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !204, file: !4, line: 207, baseType: !264, size: 960, align: 64, offset: 576)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgbin", file: !4, line: 107, size: 960, align: 64, elements: !265)
!265 = !{!266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !286}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "depends", scope: !264, file: !4, line: 108, baseType: !221, size: 64, align: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "essential", scope: !264, file: !4, line: 110, baseType: !250, size: 8, align: 8, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "multiarch", scope: !264, file: !4, line: 111, baseType: !67, size: 32, align: 32, offset: 96)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !264, file: !4, line: 112, baseType: !233, size: 64, align: 64, offset: 128)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "pkgname_archqual", scope: !264, file: !4, line: 115, baseType: !172, size: 64, align: 64, offset: 192)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !264, file: !4, line: 116, baseType: !172, size: 64, align: 64, offset: 256)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "maintainer", scope: !264, file: !4, line: 117, baseType: !172, size: 64, align: 64, offset: 320)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !264, file: !4, line: 118, baseType: !172, size: 64, align: 64, offset: 384)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "installedsize", scope: !264, file: !4, line: 119, baseType: !172, size: 64, align: 64, offset: 448)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !264, file: !4, line: 120, baseType: !172, size: 64, align: 64, offset: 512)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "bugs", scope: !264, file: !4, line: 121, baseType: !172, size: 64, align: 64, offset: 576)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !264, file: !4, line: 122, baseType: !242, size: 192, align: 64, offset: 640)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "conffiles", scope: !264, file: !4, line: 123, baseType: !279, size: 64, align: 64, offset: 832)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64, align: 64)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conffile", file: !4, line: 80, size: 256, align: 64, elements: !281)
!281 = !{!282, !283, !284, !285}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !280, file: !4, line: 81, baseType: !279, size: 64, align: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !280, file: !4, line: 82, baseType: !172, size: 64, align: 64, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !280, file: !4, line: 83, baseType: !172, size: 64, align: 64, offset: 128)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "obsolete", scope: !280, file: !4, line: 84, baseType: !250, size: 8, align: 8, offset: 192)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "arbs", scope: !264, file: !4, line: 124, baseType: !287, size: 64, align: 64, offset: 896)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64, align: 64)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arbitraryfield", file: !4, line: 74, size: 192, align: 64, elements: !289)
!289 = !{!290, !291, !292}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !288, file: !4, line: 75, baseType: !287, size: 64, align: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !288, file: !4, line: 76, baseType: !172, size: 64, align: 64, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !288, file: !4, line: 77, baseType: !172, size: 64, align: 64, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !204, file: !4, line: 208, baseType: !264, size: 960, align: 64, offset: 1536)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "clientdata", scope: !204, file: !4, line: 209, baseType: !295, size: 64, align: 64, offset: 2496)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64, align: 64)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perpackagestate", file: !74, line: 53, size: 256, align: 64, elements: !297)
!297 = !{!298, !299, !300, !301, !302, !303}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "istobe", scope: !296, file: !74, line: 54, baseType: !73, size: 32, align: 32)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !296, file: !74, line: 57, baseType: !81, size: 32, align: 32, offset: 32)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !296, file: !74, line: 59, baseType: !250, size: 8, align: 8, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "replacingfilesandsaid", scope: !296, file: !74, line: 61, baseType: !254, size: 32, align: 32, offset: 96)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "cmdline_seen", scope: !296, file: !74, line: 62, baseType: !254, size: 32, align: 32, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "trigprocdeferred", scope: !296, file: !74, line: 65, baseType: !197, size: 64, align: 64, offset: 192)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "archives", scope: !204, file: !4, line: 211, baseType: !305, size: 64, align: 64, offset: 2560)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64, align: 64)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archivedetails", file: !4, line: 87, size: 320, align: 64, elements: !307)
!307 = !{!308, !309, !310, !311, !312}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !306, file: !4, line: 88, baseType: !305, size: 64, align: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !306, file: !4, line: 89, baseType: !172, size: 64, align: 64, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "msdosname", scope: !306, file: !4, line: 90, baseType: !172, size: 64, align: 64, offset: 128)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !306, file: !4, line: 91, baseType: !172, size: 64, align: 64, offset: 192)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "md5sum", scope: !306, file: !4, line: 92, baseType: !172, size: 64, align: 64, offset: 256)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "trigaw", scope: !204, file: !4, line: 216, baseType: !314, size: 128, align: 64, offset: 2624)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !204, file: !4, line: 213, size: 128, align: 64, elements: !315)
!315 = !{!316, !328}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !314, file: !4, line: 215, baseType: !317, size: 64, align: 64)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64, align: 64)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigaw", file: !4, line: 142, size: 320, align: 64, elements: !319)
!319 = !{!320, !321, !322, !323}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "aw", scope: !318, file: !4, line: 143, baseType: !203, size: 64, align: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "pend", scope: !318, file: !4, line: 143, baseType: !203, size: 64, align: 64, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "samepend_next", scope: !318, file: !4, line: 144, baseType: !317, size: 64, align: 64, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "sameaw", scope: !318, file: !4, line: 147, baseType: !324, size: 128, align: 64, offset: 192)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !318, file: !4, line: 145, size: 128, align: 64, elements: !325)
!325 = !{!326, !327}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !324, file: !4, line: 146, baseType: !317, size: 64, align: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !324, file: !4, line: 146, baseType: !317, size: 64, align: 64, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !314, file: !4, line: 215, baseType: !317, size: 64, align: 64, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "othertrigaw_head", scope: !204, file: !4, line: 219, baseType: !317, size: 64, align: 64, offset: 2752)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "trigpend_head", scope: !204, file: !4, line: 220, baseType: !331, size: 64, align: 64, offset: 2816)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64, align: 64)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigpend", file: !4, line: 134, size: 128, align: 64, elements: !333)
!333 = !{!334, !335}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !332, file: !4, line: 135, baseType: !331, size: 64, align: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !332, file: !4, line: 136, baseType: !172, size: 64, align: 64, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !204, file: !4, line: 231, baseType: !337, size: 64, align: 64, offset: 2880)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64, align: 64)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode_list", file: !87, line: 122, size: 128, align: 64, elements: !339)
!339 = !{!340, !341}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !338, file: !87, line: 123, baseType: !337, size: 64, align: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "namenode", scope: !338, file: !87, line: 124, baseType: !191, size: 64, align: 64, offset: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_phys_offs", scope: !204, file: !4, line: 232, baseType: !343, size: 64, align: 64, offset: 2944)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !344, line: 86, baseType: !345)
!344 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !346, line: 131, baseType: !347)
!346 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!347 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_valid", scope: !204, file: !4, line: 233, baseType: !250, size: 8, align: 8, offset: 3008)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "status_dirty", scope: !204, file: !4, line: 236, baseType: !250, size: 8, align: 8, offset: 3016)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "divert", scope: !192, file: !87, line: 94, baseType: !351, size: 64, align: 64, offset: 192)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64, align: 64)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_diversion", file: !87, line: 151, size: 256, align: 64, elements: !353)
!353 = !{!354, !355, !356, !357}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "useinstead", scope: !352, file: !87, line: 152, baseType: !191, size: 64, align: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "camefrom", scope: !352, file: !87, line: 153, baseType: !191, size: 64, align: 64, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "pkgset", scope: !352, file: !87, line: 154, baseType: !207, size: 64, align: 64, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !352, file: !87, line: 157, baseType: !351, size: 64, align: 64, offset: 192)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "statoverride", scope: !192, file: !87, line: 101, baseType: !359, size: 64, align: 64, offset: 256)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64, align: 64)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_stat", file: !361, line: 40, size: 256, align: 64, elements: !362)
!361 = !DIFile(filename: "../lib/dpkg/file.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!362 = !{!363, !366, !369, !372, !374}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !360, file: !361, line: 41, baseType: !364, size: 32, align: 32)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !344, line: 80, baseType: !365)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !346, line: 125, baseType: !245)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !360, file: !361, line: 42, baseType: !367, size: 32, align: 32, offset: 32)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !344, line: 65, baseType: !368)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !346, line: 126, baseType: !245)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !360, file: !361, line: 43, baseType: !370, size: 32, align: 32, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !344, line: 70, baseType: !371)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !346, line: 129, baseType: !245)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "uname", scope: !360, file: !361, line: 47, baseType: !373, size: 64, align: 64, offset: 128)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64, align: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !360, file: !361, line: 48, baseType: !373, size: 64, align: 64, offset: 192)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "trig_interested", scope: !192, file: !87, line: 103, baseType: !376, size: 64, align: 64, offset: 320)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64, align: 64)
!377 = !DICompositeType(tag: DW_TAG_structure_type, name: "trigfileint", file: !87, line: 103, flags: DIFlagFwdDecl)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !192, file: !87, line: 111, baseType: !86, size: 32, align: 32, offset: 384)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "oldhash", scope: !192, file: !87, line: 114, baseType: !172, size: 64, align: 64, offset: 448)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "newhash", scope: !192, file: !87, line: 117, baseType: !172, size: 64, align: 64, offset: 512)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "file_ondisk_id", scope: !192, file: !87, line: 119, baseType: !382, size: 64, align: 64, offset: 576)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64, align: 64)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ondisk_id", file: !87, line: 85, size: 128, align: 64, elements: !384)
!384 = !{!385, !388}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "id_dev", scope: !383, file: !87, line: 86, baseType: !386, size: 64, align: 64)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !344, line: 60, baseType: !387)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !346, line: 124, baseType: !165)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "id_ino", scope: !383, file: !87, line: 87, baseType: !389, size: 64, align: 64, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !344, line: 48, baseType: !390)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !346, line: 127, baseType: !165)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64, align: 64)
!392 = !DILocalVariable(name: "namenode", arg: 1, scope: !188, file: !169, line: 53, type: !191)
!393 = !DIExpression()
!394 = !DILocation(line: 53, column: 37, scope: !188)
!395 = !DILocalVariable(name: "pkg", arg: 2, scope: !188, file: !169, line: 53, type: !203)
!396 = !DILocation(line: 53, column: 63, scope: !188)
!397 = !DILocalVariable(name: "pkgbin", arg: 3, scope: !188, file: !169, line: 54, type: !391)
!398 = !DILocation(line: 54, column: 30, scope: !188)
!399 = !DILocalVariable(name: "fnn", scope: !188, file: !169, line: 56, type: !191)
!400 = !DILocation(line: 56, column: 25, scope: !188)
!401 = !DILocation(line: 58, column: 8, scope: !402)
!402 = distinct !DILexicalBlock(scope: !188, file: !169, line: 58, column: 7)
!403 = !DILocation(line: 58, column: 18, scope: !402)
!404 = !DILocation(line: 58, column: 7, scope: !188)
!405 = !DILocation(line: 59, column: 12, scope: !402)
!406 = !DILocation(line: 59, column: 5, scope: !402)
!407 = !DILocation(line: 62, column: 9, scope: !188)
!408 = !DILocation(line: 62, column: 19, scope: !188)
!409 = !DILocation(line: 62, column: 37, scope: !188)
!410 = !DILocation(line: 62, column: 42, scope: !188)
!411 = !DILocation(line: 62, column: 25, scope: !188)
!412 = !DILocation(line: 61, column: 3, scope: !188)
!413 = !DILocation(line: 64, column: 10, scope: !188)
!414 = !DILocation(line: 64, column: 20, scope: !188)
!415 = !DILocation(line: 64, column: 28, scope: !188)
!416 = !DILocation(line: 64, column: 39, scope: !188)
!417 = !DILocation(line: 64, column: 42, scope: !418)
!418 = !DILexicalBlockFile(scope: !188, file: !169, discriminator: 1)
!419 = !DILocation(line: 64, column: 52, scope: !418)
!420 = !DILocation(line: 64, column: 60, scope: !418)
!421 = !DILocation(line: 64, column: 70, scope: !418)
!422 = !DILocation(line: 64, column: 75, scope: !418)
!423 = !DILocation(line: 64, column: 67, scope: !418)
!424 = !DILocation(line: 64, column: 9, scope: !418)
!425 = !DILocation(line: 65, column: 11, scope: !188)
!426 = !DILocation(line: 65, column: 21, scope: !188)
!427 = !DILocation(line: 65, column: 29, scope: !188)
!428 = !DILocation(line: 64, column: 9, scope: !429)
!429 = !DILexicalBlockFile(scope: !188, file: !169, discriminator: 2)
!430 = !DILocation(line: 65, column: 42, scope: !418)
!431 = !DILocation(line: 64, column: 9, scope: !432)
!432 = !DILexicalBlockFile(scope: !188, file: !169, discriminator: 3)
!433 = !DILocation(line: 64, column: 9, scope: !434)
!434 = !DILexicalBlockFile(scope: !188, file: !169, discriminator: 4)
!435 = !DILocation(line: 64, column: 7, scope: !434)
!436 = !DILocation(line: 69, column: 9, scope: !188)
!437 = !DILocation(line: 69, column: 19, scope: !188)
!438 = !DILocation(line: 69, column: 27, scope: !188)
!439 = !DILocation(line: 69, column: 40, scope: !418)
!440 = !DILocation(line: 69, column: 50, scope: !418)
!441 = !DILocation(line: 69, column: 58, scope: !418)
!442 = !DILocation(line: 69, column: 70, scope: !418)
!443 = !DILocation(line: 69, column: 9, scope: !418)
!444 = !DILocation(line: 69, column: 9, scope: !429)
!445 = !DILocation(line: 69, column: 9, scope: !432)
!446 = !DILocation(line: 70, column: 9, scope: !188)
!447 = !DILocation(line: 70, column: 19, scope: !188)
!448 = !DILocation(line: 70, column: 27, scope: !188)
!449 = !DILocation(line: 70, column: 38, scope: !418)
!450 = !DILocation(line: 70, column: 48, scope: !418)
!451 = !DILocation(line: 70, column: 56, scope: !418)
!452 = !DILocation(line: 70, column: 66, scope: !418)
!453 = !DILocation(line: 70, column: 9, scope: !418)
!454 = !DILocation(line: 70, column: 9, scope: !429)
!455 = !DILocation(line: 70, column: 9, scope: !432)
!456 = !DILocation(line: 71, column: 9, scope: !188)
!457 = !DILocation(line: 71, column: 19, scope: !188)
!458 = !DILocation(line: 71, column: 27, scope: !188)
!459 = !DILocation(line: 71, column: 36, scope: !418)
!460 = !DILocation(line: 71, column: 46, scope: !418)
!461 = !DILocation(line: 71, column: 54, scope: !418)
!462 = !DILocation(line: 71, column: 62, scope: !418)
!463 = !DILocation(line: 71, column: 9, scope: !418)
!464 = !DILocation(line: 71, column: 9, scope: !429)
!465 = !DILocation(line: 71, column: 9, scope: !432)
!466 = !DILocation(line: 72, column: 9, scope: !188)
!467 = !DILocation(line: 72, column: 14, scope: !188)
!468 = !DILocation(line: 67, column: 3, scope: !188)
!469 = !DILocation(line: 74, column: 10, scope: !188)
!470 = !DILocation(line: 74, column: 3, scope: !188)
!471 = !DILocation(line: 75, column: 1, scope: !188)
!472 = distinct !DISubprogram(name: "find_command", scope: !169, file: !169, line: 78, type: !473, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !181)
!473 = !DISubroutineType(types: !474)
!474 = !{!250, !172}
!475 = !DILocalVariable(name: "prog", arg: 1, scope: !472, file: !169, line: 78, type: !172)
!476 = !DILocation(line: 78, column: 26, scope: !472)
!477 = !DILocalVariable(name: "filename", scope: !472, file: !169, line: 80, type: !478)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varbuf", file: !479, line: 55, size: 192, align: 64, elements: !480)
!479 = !DIFile(filename: "../lib/dpkg/varbuf.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!480 = !{!481, !482, !483}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !478, file: !479, line: 56, baseType: !163, size: 64, align: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !478, file: !479, line: 56, baseType: !163, size: 64, align: 64, offset: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !478, file: !479, line: 57, baseType: !373, size: 64, align: 64, offset: 128)
!484 = !DILocation(line: 80, column: 17, scope: !472)
!485 = !DILocalVariable(name: "stab", scope: !472, file: !169, line: 81, type: !486)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !487, line: 46, size: 1152, align: 64, elements: !488)
!487 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!488 = !{!489, !490, !491, !493, !494, !495, !496, !497, !498, !499, !501, !503, !511, !512, !513}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !486, file: !487, line: 48, baseType: !387, size: 64, align: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !486, file: !487, line: 53, baseType: !390, size: 64, align: 64, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !486, file: !487, line: 61, baseType: !492, size: 64, align: 64, offset: 128)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !346, line: 130, baseType: !165)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !486, file: !487, line: 62, baseType: !371, size: 32, align: 32, offset: 192)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !486, file: !487, line: 64, baseType: !365, size: 32, align: 32, offset: 224)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !486, file: !487, line: 65, baseType: !368, size: 32, align: 32, offset: 256)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !486, file: !487, line: 67, baseType: !254, size: 32, align: 32, offset: 288)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !486, file: !487, line: 69, baseType: !387, size: 64, align: 64, offset: 320)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !486, file: !487, line: 74, baseType: !345, size: 64, align: 64, offset: 384)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !486, file: !487, line: 78, baseType: !500, size: 64, align: 64, offset: 448)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !346, line: 153, baseType: !347)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !486, file: !487, line: 80, baseType: !502, size: 64, align: 64, offset: 512)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !346, line: 158, baseType: !347)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !486, file: !487, line: 91, baseType: !504, size: 128, align: 64, offset: 576)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !505, line: 120, size: 128, align: 64, elements: !506)
!505 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!506 = !{!507, !509}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !504, file: !505, line: 122, baseType: !508, size: 64, align: 64)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !346, line: 139, baseType: !347)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !504, file: !505, line: 123, baseType: !510, size: 64, align: 64, offset: 64)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !346, line: 175, baseType: !347)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !486, file: !487, line: 92, baseType: !504, size: 128, align: 64, offset: 704)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !486, file: !487, line: 93, baseType: !504, size: 128, align: 64, offset: 832)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !486, file: !487, line: 106, baseType: !514, size: 192, align: 64, offset: 960)
!514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !510, size: 192, align: 64, elements: !515)
!515 = !{!516}
!516 = !DISubrange(count: 3)
!517 = !DILocation(line: 81, column: 15, scope: !472)
!518 = !DILocalVariable(name: "path_list", scope: !472, file: !169, line: 82, type: !172)
!519 = !DILocation(line: 82, column: 15, scope: !472)
!520 = !DILocalVariable(name: "path", scope: !472, file: !169, line: 83, type: !172)
!521 = !DILocation(line: 83, column: 15, scope: !472)
!522 = !DILocalVariable(name: "path_end", scope: !472, file: !169, line: 83, type: !172)
!523 = !DILocation(line: 83, column: 22, scope: !472)
!524 = !DILocalVariable(name: "path_len", scope: !472, file: !169, line: 84, type: !163)
!525 = !DILocation(line: 84, column: 10, scope: !472)
!526 = !DILocation(line: 86, column: 15, scope: !472)
!527 = !DILocation(line: 86, column: 13, scope: !472)
!528 = !DILocation(line: 87, column: 8, scope: !529)
!529 = distinct !DILexicalBlock(scope: !472, file: !169, line: 87, column: 7)
!530 = !DILocation(line: 87, column: 7, scope: !472)
!531 = !DILocation(line: 88, column: 12, scope: !529)
!532 = !DILocation(line: 88, column: 5, scope: !533)
!533 = !DILexicalBlockFile(scope: !529, file: !169, discriminator: 1)
!534 = !DILocation(line: 88, column: 5, scope: !529)
!535 = !DILocation(line: 90, column: 15, scope: !536)
!536 = distinct !DILexicalBlock(scope: !472, file: !169, line: 90, column: 3)
!537 = !DILocation(line: 90, column: 13, scope: !536)
!538 = !DILocation(line: 90, column: 8, scope: !536)
!539 = !DILocation(line: 90, column: 26, scope: !540)
!540 = !DILexicalBlockFile(scope: !541, file: !169, discriminator: 1)
!541 = distinct !DILexicalBlock(scope: !536, file: !169, line: 90, column: 3)
!542 = !DILocation(line: 90, column: 3, scope: !540)
!543 = !DILocation(line: 91, column: 26, scope: !544)
!544 = distinct !DILexicalBlock(scope: !541, file: !169, line: 90, column: 71)
!545 = !DILocation(line: 91, column: 16, scope: !544)
!546 = !DILocation(line: 91, column: 14, scope: !544)
!547 = !DILocation(line: 92, column: 25, scope: !544)
!548 = !DILocation(line: 92, column: 36, scope: !544)
!549 = !DILocation(line: 92, column: 34, scope: !544)
!550 = !DILocation(line: 92, column: 14, scope: !544)
!551 = !DILocation(line: 94, column: 5, scope: !544)
!552 = !DILocation(line: 95, column: 31, scope: !544)
!553 = !DILocation(line: 95, column: 37, scope: !544)
!554 = !DILocation(line: 95, column: 5, scope: !544)
!555 = !DILocation(line: 96, column: 9, scope: !556)
!556 = distinct !DILexicalBlock(scope: !544, file: !169, line: 96, column: 9)
!557 = !DILocation(line: 96, column: 9, scope: !544)
!558 = !DILocation(line: 97, column: 7, scope: !556)
!559 = !DILocation(line: 98, column: 31, scope: !544)
!560 = !DILocation(line: 98, column: 44, scope: !544)
!561 = !DILocation(line: 98, column: 37, scope: !544)
!562 = !DILocation(line: 98, column: 5, scope: !563)
!563 = !DILexicalBlockFile(scope: !544, file: !169, discriminator: 1)
!564 = !DILocation(line: 99, column: 5, scope: !544)
!565 = !DILocation(line: 101, column: 23, scope: !566)
!566 = distinct !DILexicalBlock(scope: !544, file: !169, line: 101, column: 9)
!567 = !DILocation(line: 101, column: 9, scope: !566)
!568 = !DILocation(line: 101, column: 35, scope: !566)
!569 = !DILocation(line: 101, column: 40, scope: !566)
!570 = !DILocation(line: 101, column: 49, scope: !571)
!571 = !DILexicalBlockFile(scope: !566, file: !169, discriminator: 1)
!572 = !DILocation(line: 101, column: 57, scope: !571)
!573 = !DILocation(line: 101, column: 9, scope: !571)
!574 = !DILocation(line: 102, column: 7, scope: !575)
!575 = distinct !DILexicalBlock(scope: !566, file: !169, line: 101, column: 66)
!576 = !DILocation(line: 103, column: 7, scope: !575)
!577 = !DILocation(line: 105, column: 3, scope: !544)
!578 = !DILocation(line: 90, column: 40, scope: !579)
!579 = !DILexicalBlockFile(scope: !541, file: !169, discriminator: 2)
!580 = !DILocation(line: 90, column: 39, scope: !579)
!581 = !DILocation(line: 90, column: 51, scope: !582)
!582 = !DILexicalBlockFile(scope: !541, file: !169, discriminator: 3)
!583 = !DILocation(line: 90, column: 60, scope: !582)
!584 = !DILocation(line: 90, column: 39, scope: !582)
!585 = !DILocation(line: 90, column: 39, scope: !586)
!586 = !DILexicalBlockFile(scope: !541, file: !169, discriminator: 4)
!587 = !DILocation(line: 90, column: 39, scope: !588)
!588 = !DILexicalBlockFile(scope: !541, file: !169, discriminator: 5)
!589 = !DILocation(line: 90, column: 37, scope: !588)
!590 = !DILocation(line: 90, column: 3, scope: !588)
!591 = distinct !{!591, !592}
!592 = !DILocation(line: 90, column: 3, scope: !472)
!593 = !DILocation(line: 107, column: 3, scope: !472)
!594 = !DILocation(line: 108, column: 3, scope: !472)
!595 = !DILocation(line: 109, column: 1, scope: !472)
!596 = !DILocalVariable(name: "prog", scope: !178, file: !169, line: 135, type: !597)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64, align: 64)
!598 = !DILocation(line: 135, column: 22, scope: !178)
!599 = !DILocalVariable(name: "warned", scope: !178, file: !169, line: 136, type: !254)
!600 = !DILocation(line: 136, column: 7, scope: !178)
!601 = !DILocation(line: 138, column: 13, scope: !602)
!602 = distinct !DILexicalBlock(scope: !178, file: !169, line: 138, column: 3)
!603 = !DILocation(line: 138, column: 8, scope: !602)
!604 = !DILocation(line: 138, column: 27, scope: !605)
!605 = !DILexicalBlockFile(scope: !606, file: !169, discriminator: 1)
!606 = distinct !DILexicalBlock(scope: !602, file: !169, line: 138, column: 3)
!607 = !DILocation(line: 138, column: 26, scope: !605)
!608 = !DILocation(line: 138, column: 3, scope: !605)
!609 = !DILocation(line: 139, column: 24, scope: !610)
!610 = distinct !DILexicalBlock(scope: !611, file: !169, line: 139, column: 9)
!611 = distinct !DILexicalBlock(scope: !606, file: !169, line: 138, column: 41)
!612 = !DILocation(line: 139, column: 23, scope: !610)
!613 = !DILocation(line: 139, column: 10, scope: !610)
!614 = !DILocation(line: 139, column: 9, scope: !611)
!615 = !DILocation(line: 140, column: 15, scope: !616)
!616 = distinct !DILexicalBlock(scope: !610, file: !169, line: 139, column: 31)
!617 = !DILocation(line: 140, column: 69, scope: !616)
!618 = !DILocation(line: 140, column: 68, scope: !616)
!619 = !DILocation(line: 140, column: 7, scope: !620)
!620 = !DILexicalBlockFile(scope: !616, file: !169, discriminator: 1)
!621 = !DILocation(line: 141, column: 13, scope: !616)
!622 = !DILocation(line: 142, column: 5, scope: !616)
!623 = !DILocation(line: 143, column: 3, scope: !611)
!624 = !DILocation(line: 138, column: 37, scope: !625)
!625 = !DILexicalBlockFile(scope: !606, file: !169, discriminator: 2)
!626 = !DILocation(line: 138, column: 3, scope: !625)
!627 = distinct !{!627, !628}
!628 = !DILocation(line: 138, column: 3, scope: !178)
!629 = !DILocation(line: 145, column: 7, scope: !630)
!630 = distinct !DILexicalBlock(scope: !178, file: !169, line: 145, column: 7)
!631 = !DILocation(line: 145, column: 7, scope: !178)
!632 = !DILocation(line: 147, column: 153, scope: !630)
!633 = !DILocation(line: 147, column: 17, scope: !630)
!634 = !DILocation(line: 150, column: 17, scope: !630)
!635 = !DILocation(line: 150, column: 25, scope: !630)
!636 = !DILocation(line: 146, column: 5, scope: !630)
!637 = !DILocation(line: 152, column: 1, scope: !178)
!638 = distinct !DISubprogram(name: "ignore_depends", scope: !169, file: !169, line: 155, type: !639, isLocal: false, isDefinition: true, scopeLine: 156, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !181)
!639 = !DISubroutineType(types: !640)
!640 = !{!250, !203}
!641 = !DILocalVariable(name: "pkg", arg: 1, scope: !638, file: !169, line: 155, type: !203)
!642 = !DILocation(line: 155, column: 32, scope: !638)
!643 = !DILocalVariable(name: "id", scope: !638, file: !169, line: 157, type: !197)
!644 = !DILocation(line: 157, column: 20, scope: !638)
!645 = !DILocation(line: 158, column: 12, scope: !646)
!646 = distinct !DILexicalBlock(scope: !638, file: !169, line: 158, column: 3)
!647 = !DILocation(line: 158, column: 10, scope: !646)
!648 = !DILocation(line: 158, column: 8, scope: !646)
!649 = !DILocation(line: 158, column: 28, scope: !650)
!650 = !DILexicalBlockFile(scope: !651, file: !169, discriminator: 1)
!651 = distinct !DILexicalBlock(scope: !646, file: !169, line: 158, column: 3)
!652 = !DILocation(line: 158, column: 3, scope: !650)
!653 = !DILocation(line: 159, column: 9, scope: !654)
!654 = distinct !DILexicalBlock(scope: !651, file: !169, line: 159, column: 9)
!655 = !DILocation(line: 159, column: 13, scope: !654)
!656 = !DILocation(line: 159, column: 20, scope: !654)
!657 = !DILocation(line: 159, column: 17, scope: !654)
!658 = !DILocation(line: 159, column: 9, scope: !651)
!659 = !DILocation(line: 160, column: 7, scope: !654)
!660 = !DILocation(line: 159, column: 20, scope: !661)
!661 = !DILexicalBlockFile(scope: !654, file: !169, discriminator: 1)
!662 = !DILocation(line: 158, column: 36, scope: !663)
!663 = !DILexicalBlockFile(scope: !651, file: !169, discriminator: 2)
!664 = !DILocation(line: 158, column: 40, scope: !663)
!665 = !DILocation(line: 158, column: 34, scope: !663)
!666 = !DILocation(line: 158, column: 3, scope: !663)
!667 = distinct !{!667, !668}
!668 = !DILocation(line: 158, column: 3, scope: !638)
!669 = !DILocation(line: 161, column: 3, scope: !638)
!670 = !DILocation(line: 162, column: 1, scope: !638)
!671 = distinct !DISubprogram(name: "force_depends", scope: !169, file: !169, line: 183, type: !672, isLocal: false, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !181)
!672 = !DISubroutineType(types: !673)
!673 = !{!250, !217}
!674 = !DILocalVariable(name: "possi", arg: 1, scope: !671, file: !169, line: 183, type: !217)
!675 = !DILocation(line: 183, column: 32, scope: !671)
!676 = !DILocation(line: 185, column: 10, scope: !671)
!677 = !DILocation(line: 185, column: 34, scope: !671)
!678 = !DILocation(line: 186, column: 31, scope: !671)
!679 = !DILocation(line: 186, column: 10, scope: !671)
!680 = !DILocation(line: 186, column: 38, scope: !671)
!681 = !DILocation(line: 187, column: 25, scope: !671)
!682 = !DILocation(line: 187, column: 32, scope: !671)
!683 = !DILocation(line: 187, column: 36, scope: !671)
!684 = !DILocation(line: 187, column: 10, scope: !671)
!685 = !DILocation(line: 186, column: 38, scope: !686)
!686 = !DILexicalBlockFile(scope: !671, file: !169, discriminator: 1)
!687 = !DILocation(line: 185, column: 3, scope: !686)
!688 = distinct !DISubprogram(name: "ignore_depends_possi", scope: !169, file: !169, line: 165, type: !672, isLocal: true, isDefinition: true, scopeLine: 166, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !181)
!689 = !DILocalVariable(name: "possi", arg: 1, scope: !688, file: !169, line: 165, type: !217)
!690 = !DILocation(line: 165, column: 39, scope: !688)
!691 = !DILocalVariable(name: "possi_iter", scope: !688, file: !169, line: 167, type: !692)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64, align: 64)
!693 = !DICompositeType(tag: DW_TAG_structure_type, name: "deppossi_pkg_iterator", file: !74, line: 346, flags: DIFlagFwdDecl)
!694 = !DILocation(line: 167, column: 33, scope: !688)
!695 = !DILocalVariable(name: "pkg", scope: !688, file: !169, line: 168, type: !203)
!696 = !DILocation(line: 168, column: 19, scope: !688)
!697 = !DILocation(line: 170, column: 38, scope: !688)
!698 = !DILocation(line: 170, column: 16, scope: !688)
!699 = !DILocation(line: 170, column: 14, scope: !688)
!700 = !DILocation(line: 171, column: 3, scope: !688)
!701 = !DILocation(line: 171, column: 40, scope: !702)
!702 = !DILexicalBlockFile(scope: !688, file: !169, discriminator: 1)
!703 = !DILocation(line: 171, column: 17, scope: !702)
!704 = !DILocation(line: 171, column: 15, scope: !702)
!705 = !DILocation(line: 171, column: 3, scope: !702)
!706 = !DILocation(line: 172, column: 24, scope: !707)
!707 = distinct !DILexicalBlock(scope: !708, file: !169, line: 172, column: 9)
!708 = distinct !DILexicalBlock(scope: !688, file: !169, line: 171, column: 54)
!709 = !DILocation(line: 172, column: 9, scope: !707)
!710 = !DILocation(line: 172, column: 9, scope: !708)
!711 = !DILocation(line: 173, column: 30, scope: !712)
!712 = distinct !DILexicalBlock(scope: !707, file: !169, line: 172, column: 30)
!713 = !DILocation(line: 173, column: 7, scope: !712)
!714 = !DILocation(line: 174, column: 7, scope: !712)
!715 = !DILocation(line: 171, column: 3, scope: !716)
!716 = !DILexicalBlockFile(scope: !688, file: !169, discriminator: 2)
!717 = distinct !{!717, !700}
!718 = !DILocation(line: 177, column: 26, scope: !688)
!719 = !DILocation(line: 177, column: 3, scope: !688)
!720 = !DILocation(line: 179, column: 3, scope: !688)
!721 = !DILocation(line: 180, column: 1, scope: !688)
!722 = distinct !DISubprogram(name: "force_breaks", scope: !169, file: !169, line: 191, type: !672, isLocal: false, isDefinition: true, scopeLine: 192, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !181)
!723 = !DILocalVariable(name: "possi", arg: 1, scope: !722, file: !169, line: 191, type: !217)
!724 = !DILocation(line: 191, column: 31, scope: !722)
!725 = !DILocation(line: 193, column: 10, scope: !722)
!726 = !DILocation(line: 193, column: 33, scope: !722)
!727 = !DILocation(line: 194, column: 31, scope: !722)
!728 = !DILocation(line: 194, column: 10, scope: !722)
!729 = !DILocation(line: 194, column: 38, scope: !722)
!730 = !DILocation(line: 195, column: 25, scope: !722)
!731 = !DILocation(line: 195, column: 32, scope: !722)
!732 = !DILocation(line: 195, column: 36, scope: !722)
!733 = !DILocation(line: 195, column: 10, scope: !722)
!734 = !DILocation(line: 194, column: 38, scope: !735)
!735 = !DILexicalBlockFile(scope: !722, file: !169, discriminator: 1)
!736 = !DILocation(line: 193, column: 3, scope: !735)
!737 = distinct !DISubprogram(name: "force_conflicts", scope: !169, file: !169, line: 199, type: !672, isLocal: false, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !181)
!738 = !DILocalVariable(name: "possi", arg: 1, scope: !737, file: !169, line: 199, type: !217)
!739 = !DILocation(line: 199, column: 34, scope: !737)
!740 = !DILocation(line: 201, column: 10, scope: !737)
!741 = !DILocation(line: 201, column: 3, scope: !737)
!742 = distinct !DISubprogram(name: "clear_istobes", scope: !169, file: !169, line: 204, type: !179, isLocal: false, isDefinition: true, scopeLine: 204, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !181)
!743 = !DILocalVariable(name: "iter", scope: !742, file: !169, line: 205, type: !744)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64, align: 64)
!745 = !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_hash_iter", file: !4, line: 314, flags: DIFlagFwdDecl)
!746 = !DILocation(line: 205, column: 25, scope: !742)
!747 = !DILocalVariable(name: "pkg", scope: !742, file: !169, line: 206, type: !203)
!748 = !DILocation(line: 206, column: 19, scope: !742)
!749 = !DILocation(line: 208, column: 10, scope: !742)
!750 = !DILocation(line: 208, column: 8, scope: !742)
!751 = !DILocation(line: 209, column: 3, scope: !742)
!752 = !DILocation(line: 209, column: 40, scope: !753)
!753 = !DILexicalBlockFile(scope: !742, file: !169, discriminator: 1)
!754 = !DILocation(line: 209, column: 17, scope: !753)
!755 = !DILocation(line: 209, column: 15, scope: !753)
!756 = !DILocation(line: 209, column: 47, scope: !753)
!757 = !DILocation(line: 209, column: 3, scope: !753)
!758 = !DILocation(line: 210, column: 31, scope: !759)
!759 = distinct !DILexicalBlock(scope: !742, file: !169, line: 209, column: 55)
!760 = !DILocation(line: 210, column: 5, scope: !759)
!761 = !DILocation(line: 211, column: 5, scope: !759)
!762 = !DILocation(line: 211, column: 10, scope: !759)
!763 = !DILocation(line: 211, column: 22, scope: !759)
!764 = !DILocation(line: 211, column: 29, scope: !759)
!765 = !DILocation(line: 212, column: 5, scope: !759)
!766 = !DILocation(line: 212, column: 10, scope: !759)
!767 = !DILocation(line: 212, column: 22, scope: !759)
!768 = !DILocation(line: 212, column: 43, scope: !759)
!769 = !DILocation(line: 209, column: 3, scope: !770)
!770 = !DILexicalBlockFile(scope: !742, file: !169, discriminator: 2)
!771 = distinct !{!771, !751}
!772 = !DILocation(line: 214, column: 22, scope: !742)
!773 = !DILocation(line: 214, column: 3, scope: !742)
!774 = !DILocation(line: 215, column: 1, scope: !742)
!775 = distinct !DISubprogram(name: "dir_has_conffiles", scope: !169, file: !169, line: 222, type: !776, isLocal: false, isDefinition: true, scopeLine: 223, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !181)
!776 = !DISubroutineType(types: !777)
!777 = !{!250, !191, !203}
!778 = !DILocalVariable(name: "file", arg: 1, scope: !775, file: !169, line: 222, type: !191)
!779 = !DILocation(line: 222, column: 41, scope: !775)
!780 = !DILocalVariable(name: "pkg", arg: 2, scope: !775, file: !169, line: 222, type: !203)
!781 = !DILocation(line: 222, column: 63, scope: !775)
!782 = !DILocalVariable(name: "conff", scope: !775, file: !169, line: 224, type: !279)
!783 = !DILocation(line: 224, column: 20, scope: !775)
!784 = !DILocalVariable(name: "namelen", scope: !775, file: !169, line: 225, type: !163)
!785 = !DILocation(line: 225, column: 10, scope: !775)
!786 = !DILocation(line: 227, column: 62, scope: !775)
!787 = !DILocation(line: 227, column: 68, scope: !775)
!788 = !DILocation(line: 228, column: 18, scope: !775)
!789 = !DILocation(line: 228, column: 9, scope: !775)
!790 = !DILocation(line: 227, column: 3, scope: !775)
!791 = !DILocation(line: 229, column: 20, scope: !775)
!792 = !DILocation(line: 229, column: 26, scope: !775)
!793 = !DILocation(line: 229, column: 13, scope: !775)
!794 = !DILocation(line: 229, column: 11, scope: !775)
!795 = !DILocation(line: 230, column: 15, scope: !796)
!796 = distinct !DILexicalBlock(scope: !775, file: !169, line: 230, column: 3)
!797 = !DILocation(line: 230, column: 20, scope: !796)
!798 = !DILocation(line: 230, column: 30, scope: !796)
!799 = !DILocation(line: 230, column: 13, scope: !796)
!800 = !DILocation(line: 230, column: 8, scope: !796)
!801 = !DILocation(line: 230, column: 41, scope: !802)
!802 = !DILexicalBlockFile(scope: !803, file: !169, discriminator: 1)
!803 = distinct !DILexicalBlock(scope: !796, file: !169, line: 230, column: 3)
!804 = !DILocation(line: 230, column: 3, scope: !802)
!805 = !DILocation(line: 231, column: 11, scope: !806)
!806 = distinct !DILexicalBlock(scope: !807, file: !169, line: 231, column: 11)
!807 = distinct !DILexicalBlock(scope: !803, file: !169, line: 230, column: 68)
!808 = !DILocation(line: 231, column: 18, scope: !806)
!809 = !DILocation(line: 231, column: 11, scope: !807)
!810 = !DILocation(line: 232, column: 9, scope: !806)
!811 = !DILocation(line: 233, column: 19, scope: !812)
!812 = distinct !DILexicalBlock(scope: !807, file: !169, line: 233, column: 11)
!813 = !DILocation(line: 233, column: 25, scope: !812)
!814 = !DILocation(line: 233, column: 31, scope: !812)
!815 = !DILocation(line: 233, column: 38, scope: !812)
!816 = !DILocation(line: 233, column: 44, scope: !812)
!817 = !DILocation(line: 233, column: 11, scope: !812)
!818 = !DILocation(line: 233, column: 53, scope: !812)
!819 = !DILocation(line: 233, column: 58, scope: !812)
!820 = !DILocation(line: 234, column: 18, scope: !812)
!821 = !DILocation(line: 234, column: 25, scope: !812)
!822 = !DILocation(line: 234, column: 11, scope: !812)
!823 = !DILocation(line: 234, column: 33, scope: !812)
!824 = !DILocation(line: 234, column: 31, scope: !812)
!825 = !DILocation(line: 234, column: 41, scope: !812)
!826 = !DILocation(line: 234, column: 56, scope: !827)
!827 = !DILexicalBlockFile(scope: !812, file: !169, discriminator: 1)
!828 = !DILocation(line: 234, column: 44, scope: !827)
!829 = !DILocation(line: 234, column: 51, scope: !827)
!830 = !DILocation(line: 234, column: 65, scope: !827)
!831 = !DILocation(line: 233, column: 11, scope: !832)
!832 = !DILexicalBlockFile(scope: !807, file: !169, discriminator: 1)
!833 = !DILocation(line: 236, column: 8, scope: !834)
!834 = distinct !DILexicalBlock(scope: !812, file: !169, line: 234, column: 73)
!835 = !DILocation(line: 236, column: 14, scope: !834)
!836 = !DILocation(line: 236, column: 20, scope: !834)
!837 = !DILocation(line: 236, column: 27, scope: !834)
!838 = !DILocation(line: 236, column: 42, scope: !834)
!839 = !DILocation(line: 236, column: 33, scope: !834)
!840 = !DILocation(line: 235, column: 2, scope: !834)
!841 = !DILocation(line: 237, column: 2, scope: !834)
!842 = !DILocation(line: 239, column: 3, scope: !807)
!843 = !DILocation(line: 230, column: 55, scope: !844)
!844 = !DILexicalBlockFile(scope: !803, file: !169, discriminator: 2)
!845 = !DILocation(line: 230, column: 62, scope: !844)
!846 = !DILocation(line: 230, column: 53, scope: !844)
!847 = !DILocation(line: 230, column: 3, scope: !844)
!848 = distinct !{!848, !849}
!849 = !DILocation(line: 230, column: 3, scope: !775)
!850 = !DILocation(line: 240, column: 3, scope: !775)
!851 = !DILocation(line: 241, column: 3, scope: !775)
!852 = !DILocation(line: 242, column: 1, scope: !775)
!853 = distinct !DISubprogram(name: "dir_is_used_by_others", scope: !169, file: !169, line: 249, type: !776, isLocal: false, isDefinition: true, scopeLine: 250, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !181)
!854 = !DILocalVariable(name: "file", arg: 1, scope: !853, file: !169, line: 249, type: !191)
!855 = !DILocation(line: 249, column: 45, scope: !853)
!856 = !DILocalVariable(name: "pkg", arg: 2, scope: !853, file: !169, line: 249, type: !203)
!857 = !DILocation(line: 249, column: 67, scope: !853)
!858 = !DILocalVariable(name: "iter", scope: !853, file: !169, line: 251, type: !859)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64, align: 64)
!860 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_node_pkgs_iter", file: !87, line: 160, flags: DIFlagFwdDecl)
!861 = !DILocation(line: 251, column: 31, scope: !853)
!862 = !DILocalVariable(name: "other_pkg", scope: !853, file: !169, line: 252, type: !203)
!863 = !DILocation(line: 252, column: 19, scope: !853)
!864 = !DILocation(line: 254, column: 68, scope: !853)
!865 = !DILocation(line: 254, column: 74, scope: !853)
!866 = !DILocation(line: 255, column: 9, scope: !853)
!867 = !DILocation(line: 255, column: 24, scope: !868)
!868 = !DILexicalBlockFile(scope: !853, file: !169, discriminator: 1)
!869 = !DILocation(line: 255, column: 15, scope: !868)
!870 = !DILocation(line: 255, column: 9, scope: !868)
!871 = !DILocation(line: 255, column: 9, scope: !872)
!872 = !DILexicalBlockFile(scope: !853, file: !169, discriminator: 2)
!873 = !DILocation(line: 255, column: 9, scope: !874)
!874 = !DILexicalBlockFile(scope: !853, file: !169, discriminator: 3)
!875 = !DILocation(line: 254, column: 3, scope: !868)
!876 = !DILocation(line: 257, column: 34, scope: !853)
!877 = !DILocation(line: 257, column: 10, scope: !853)
!878 = !DILocation(line: 257, column: 8, scope: !853)
!879 = !DILocation(line: 258, column: 3, scope: !853)
!880 = !DILocation(line: 258, column: 48, scope: !868)
!881 = !DILocation(line: 258, column: 23, scope: !868)
!882 = !DILocation(line: 258, column: 21, scope: !868)
!883 = !DILocation(line: 258, column: 3, scope: !868)
!884 = !DILocation(line: 260, column: 20, scope: !885)
!885 = distinct !DILexicalBlock(scope: !853, file: !169, line: 258, column: 56)
!886 = !DILocation(line: 260, column: 11, scope: !885)
!887 = !DILocation(line: 259, column: 5, scope: !885)
!888 = !DILocation(line: 261, column: 9, scope: !889)
!889 = distinct !DILexicalBlock(scope: !885, file: !169, line: 261, column: 9)
!890 = !DILocation(line: 261, column: 22, scope: !889)
!891 = !DILocation(line: 261, column: 19, scope: !889)
!892 = !DILocation(line: 261, column: 9, scope: !885)
!893 = !DILocation(line: 262, column: 7, scope: !889)
!894 = distinct !{!894, !879}
!895 = !DILocation(line: 264, column: 30, scope: !885)
!896 = !DILocation(line: 264, column: 5, scope: !885)
!897 = !DILocation(line: 265, column: 5, scope: !885)
!898 = !DILocation(line: 266, column: 5, scope: !885)
!899 = !DILocation(line: 268, column: 28, scope: !853)
!900 = !DILocation(line: 268, column: 3, scope: !853)
!901 = !DILocation(line: 270, column: 3, scope: !853)
!902 = !DILocation(line: 271, column: 3, scope: !853)
!903 = !DILocation(line: 272, column: 1, scope: !853)
!904 = distinct !DISubprogram(name: "dir_is_used_by_pkg", scope: !169, file: !169, line: 278, type: !905, isLocal: false, isDefinition: true, scopeLine: 280, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !181)
!905 = !DISubroutineType(types: !906)
!906 = !{!250, !191, !203, !337}
!907 = !DILocalVariable(name: "file", arg: 1, scope: !904, file: !169, line: 278, type: !191)
!908 = !DILocation(line: 278, column: 42, scope: !904)
!909 = !DILocalVariable(name: "pkg", arg: 2, scope: !904, file: !169, line: 278, type: !203)
!910 = !DILocation(line: 278, column: 64, scope: !904)
!911 = !DILocalVariable(name: "list", arg: 3, scope: !904, file: !169, line: 279, type: !337)
!912 = !DILocation(line: 279, column: 47, scope: !904)
!913 = !DILocalVariable(name: "node", scope: !904, file: !169, line: 281, type: !337)
!914 = !DILocation(line: 281, column: 30, scope: !904)
!915 = !DILocalVariable(name: "namelen", scope: !904, file: !169, line: 282, type: !163)
!916 = !DILocation(line: 282, column: 10, scope: !904)
!917 = !DILocation(line: 285, column: 9, scope: !904)
!918 = !DILocation(line: 285, column: 15, scope: !904)
!919 = !DILocation(line: 285, column: 21, scope: !904)
!920 = !DILocation(line: 285, column: 36, scope: !921)
!921 = !DILexicalBlockFile(scope: !904, file: !169, discriminator: 1)
!922 = !DILocation(line: 285, column: 27, scope: !921)
!923 = !DILocation(line: 285, column: 21, scope: !921)
!924 = !DILocation(line: 285, column: 21, scope: !925)
!925 = !DILexicalBlockFile(scope: !904, file: !169, discriminator: 2)
!926 = !DILocation(line: 285, column: 21, scope: !927)
!927 = !DILexicalBlockFile(scope: !904, file: !169, discriminator: 3)
!928 = !DILocation(line: 284, column: 3, scope: !904)
!929 = !DILocation(line: 287, column: 20, scope: !904)
!930 = !DILocation(line: 287, column: 26, scope: !904)
!931 = !DILocation(line: 287, column: 13, scope: !904)
!932 = !DILocation(line: 287, column: 11, scope: !904)
!933 = !DILocation(line: 289, column: 15, scope: !934)
!934 = distinct !DILexicalBlock(scope: !904, file: !169, line: 289, column: 3)
!935 = !DILocation(line: 289, column: 13, scope: !934)
!936 = !DILocation(line: 289, column: 8, scope: !934)
!937 = !DILocation(line: 289, column: 21, scope: !938)
!938 = !DILexicalBlockFile(scope: !939, file: !169, discriminator: 1)
!939 = distinct !DILexicalBlock(scope: !934, file: !169, line: 289, column: 3)
!940 = !DILocation(line: 289, column: 3, scope: !938)
!941 = !DILocation(line: 291, column: 11, scope: !942)
!942 = distinct !DILexicalBlock(scope: !939, file: !169, line: 289, column: 46)
!943 = !DILocation(line: 291, column: 17, scope: !942)
!944 = !DILocation(line: 291, column: 27, scope: !942)
!945 = !DILocation(line: 290, column: 5, scope: !942)
!946 = !DILocation(line: 293, column: 17, scope: !947)
!947 = distinct !DILexicalBlock(scope: !942, file: !169, line: 293, column: 9)
!948 = !DILocation(line: 293, column: 23, scope: !947)
!949 = !DILocation(line: 293, column: 29, scope: !947)
!950 = !DILocation(line: 293, column: 35, scope: !947)
!951 = !DILocation(line: 293, column: 45, scope: !947)
!952 = !DILocation(line: 293, column: 51, scope: !947)
!953 = !DILocation(line: 293, column: 9, scope: !947)
!954 = !DILocation(line: 293, column: 60, scope: !947)
!955 = !DILocation(line: 293, column: 65, scope: !947)
!956 = !DILocation(line: 294, column: 16, scope: !947)
!957 = !DILocation(line: 294, column: 22, scope: !947)
!958 = !DILocation(line: 294, column: 32, scope: !947)
!959 = !DILocation(line: 294, column: 9, scope: !947)
!960 = !DILocation(line: 294, column: 40, scope: !947)
!961 = !DILocation(line: 294, column: 38, scope: !947)
!962 = !DILocation(line: 294, column: 48, scope: !947)
!963 = !DILocation(line: 295, column: 30, scope: !947)
!964 = !DILocation(line: 295, column: 9, scope: !947)
!965 = !DILocation(line: 295, column: 15, scope: !947)
!966 = !DILocation(line: 295, column: 25, scope: !947)
!967 = !DILocation(line: 295, column: 39, scope: !947)
!968 = !DILocation(line: 293, column: 9, scope: !969)
!969 = !DILexicalBlockFile(scope: !942, file: !169, discriminator: 1)
!970 = !DILocation(line: 296, column: 7, scope: !971)
!971 = distinct !DILexicalBlock(scope: !947, file: !169, line: 295, column: 47)
!972 = !DILocation(line: 297, column: 7, scope: !971)
!973 = !DILocation(line: 299, column: 3, scope: !942)
!974 = !DILocation(line: 289, column: 34, scope: !975)
!975 = !DILexicalBlockFile(scope: !939, file: !169, discriminator: 2)
!976 = !DILocation(line: 289, column: 40, scope: !975)
!977 = !DILocation(line: 289, column: 32, scope: !975)
!978 = !DILocation(line: 289, column: 3, scope: !975)
!979 = distinct !{!979, !980}
!980 = !DILocation(line: 289, column: 3, scope: !904)
!981 = !DILocation(line: 301, column: 3, scope: !904)
!982 = !DILocation(line: 303, column: 3, scope: !904)
!983 = !DILocation(line: 304, column: 1, scope: !904)
!984 = distinct !DISubprogram(name: "conffile_mark_obsolete", scope: !169, file: !169, line: 313, type: !985, isLocal: false, isDefinition: true, scopeLine: 314, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !181)
!985 = !DISubroutineType(types: !986)
!986 = !{null, !203, !191}
!987 = !DILocalVariable(name: "pkg", arg: 1, scope: !984, file: !169, line: 313, type: !203)
!988 = !DILocation(line: 313, column: 40, scope: !984)
!989 = !DILocalVariable(name: "namenode", arg: 2, scope: !984, file: !169, line: 313, type: !191)
!990 = !DILocation(line: 313, column: 67, scope: !984)
!991 = !DILocalVariable(name: "conff", scope: !984, file: !169, line: 315, type: !279)
!992 = !DILocation(line: 315, column: 20, scope: !984)
!993 = !DILocation(line: 317, column: 16, scope: !994)
!994 = distinct !DILexicalBlock(scope: !984, file: !169, line: 317, column: 3)
!995 = !DILocation(line: 317, column: 21, scope: !994)
!996 = !DILocation(line: 317, column: 31, scope: !994)
!997 = !DILocation(line: 317, column: 14, scope: !994)
!998 = !DILocation(line: 317, column: 8, scope: !994)
!999 = !DILocation(line: 317, column: 42, scope: !1000)
!1000 = !DILexicalBlockFile(scope: !1001, file: !169, discriminator: 1)
!1001 = distinct !DILexicalBlock(scope: !994, file: !169, line: 317, column: 3)
!1002 = !DILocation(line: 317, column: 3, scope: !1000)
!1003 = !DILocation(line: 318, column: 16, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !1005, file: !169, line: 318, column: 9)
!1005 = distinct !DILexicalBlock(scope: !1001, file: !169, line: 317, column: 70)
!1006 = !DILocation(line: 318, column: 23, scope: !1004)
!1007 = !DILocation(line: 318, column: 29, scope: !1004)
!1008 = !DILocation(line: 318, column: 39, scope: !1004)
!1009 = !DILocation(line: 318, column: 9, scope: !1004)
!1010 = !DILocation(line: 318, column: 45, scope: !1004)
!1011 = !DILocation(line: 318, column: 9, scope: !1005)
!1012 = !DILocation(line: 320, column: 22, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1004, file: !169, line: 318, column: 51)
!1014 = !DILocation(line: 320, column: 13, scope: !1013)
!1015 = !DILocation(line: 320, column: 41, scope: !1013)
!1016 = !DILocation(line: 320, column: 48, scope: !1013)
!1017 = !DILocation(line: 319, column: 7, scope: !1013)
!1018 = !DILocation(line: 321, column: 7, scope: !1013)
!1019 = !DILocation(line: 321, column: 14, scope: !1013)
!1020 = !DILocation(line: 321, column: 23, scope: !1013)
!1021 = !DILocation(line: 322, column: 7, scope: !1013)
!1022 = !DILocation(line: 324, column: 3, scope: !1005)
!1023 = !DILocation(line: 317, column: 57, scope: !1024)
!1024 = !DILexicalBlockFile(scope: !1001, file: !169, discriminator: 2)
!1025 = !DILocation(line: 317, column: 64, scope: !1024)
!1026 = !DILocation(line: 317, column: 55, scope: !1024)
!1027 = !DILocation(line: 317, column: 3, scope: !1024)
!1028 = distinct !{!1028, !1029}
!1029 = !DILocation(line: 317, column: 3, scope: !984)
!1030 = !DILocation(line: 325, column: 1, scope: !984)
!1031 = distinct !DISubprogram(name: "pkg_conffiles_mark_old", scope: !169, file: !169, line: 333, type: !1032, isLocal: false, isDefinition: true, scopeLine: 334, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !181)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{null, !203}
!1034 = !DILocalVariable(name: "pkg", arg: 1, scope: !1031, file: !169, line: 333, type: !203)
!1035 = !DILocation(line: 333, column: 40, scope: !1031)
!1036 = !DILocalVariable(name: "conff", scope: !1031, file: !169, line: 335, type: !1037)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64, align: 64)
!1038 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !280)
!1039 = !DILocation(line: 335, column: 26, scope: !1031)
!1040 = !DILocalVariable(name: "namenode", scope: !1031, file: !169, line: 336, type: !191)
!1041 = !DILocation(line: 336, column: 25, scope: !1031)
!1042 = !DILocation(line: 338, column: 16, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1031, file: !169, line: 338, column: 3)
!1044 = !DILocation(line: 338, column: 21, scope: !1043)
!1045 = !DILocation(line: 338, column: 31, scope: !1043)
!1046 = !DILocation(line: 338, column: 14, scope: !1043)
!1047 = !DILocation(line: 338, column: 8, scope: !1043)
!1048 = !DILocation(line: 338, column: 42, scope: !1049)
!1049 = !DILexicalBlockFile(scope: !1050, file: !169, discriminator: 1)
!1050 = distinct !DILexicalBlock(scope: !1043, file: !169, line: 338, column: 3)
!1051 = !DILocation(line: 338, column: 3, scope: !1049)
!1052 = !DILocation(line: 339, column: 36, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1050, file: !169, line: 338, column: 70)
!1054 = !DILocation(line: 339, column: 43, scope: !1053)
!1055 = !DILocation(line: 339, column: 16, scope: !1053)
!1056 = !DILocation(line: 339, column: 14, scope: !1053)
!1057 = !DILocation(line: 340, column: 5, scope: !1053)
!1058 = !DILocation(line: 340, column: 15, scope: !1053)
!1059 = !DILocation(line: 340, column: 21, scope: !1053)
!1060 = !DILocation(line: 341, column: 10, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1053, file: !169, line: 341, column: 9)
!1062 = !DILocation(line: 341, column: 20, scope: !1061)
!1063 = !DILocation(line: 341, column: 9, scope: !1053)
!1064 = !DILocation(line: 342, column: 27, scope: !1061)
!1065 = !DILocation(line: 342, column: 34, scope: !1061)
!1066 = !DILocation(line: 342, column: 7, scope: !1061)
!1067 = !DILocation(line: 342, column: 17, scope: !1061)
!1068 = !DILocation(line: 342, column: 25, scope: !1061)
!1069 = !DILocation(line: 344, column: 11, scope: !1053)
!1070 = !DILocation(line: 344, column: 18, scope: !1053)
!1071 = !DILocation(line: 344, column: 24, scope: !1053)
!1072 = !DILocation(line: 344, column: 34, scope: !1053)
!1073 = !DILocation(line: 344, column: 40, scope: !1053)
!1074 = !DILocation(line: 344, column: 50, scope: !1053)
!1075 = !DILocation(line: 343, column: 5, scope: !1053)
!1076 = !DILocation(line: 345, column: 3, scope: !1053)
!1077 = !DILocation(line: 338, column: 57, scope: !1078)
!1078 = !DILexicalBlockFile(scope: !1050, file: !169, discriminator: 2)
!1079 = !DILocation(line: 338, column: 64, scope: !1078)
!1080 = !DILocation(line: 338, column: 55, scope: !1078)
!1081 = !DILocation(line: 338, column: 3, scope: !1078)
!1082 = distinct !{!1082, !1083}
!1083 = !DILocation(line: 338, column: 3, scope: !1031)
!1084 = !DILocation(line: 346, column: 1, scope: !1031)
!1085 = distinct !DISubprogram(name: "log_action", scope: !169, file: !169, line: 349, type: !1086, isLocal: false, isDefinition: true, scopeLine: 350, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !181)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{null, !172, !203, !391}
!1088 = !DILocalVariable(name: "action", arg: 1, scope: !1085, file: !169, line: 349, type: !172)
!1089 = !DILocation(line: 349, column: 24, scope: !1085)
!1090 = !DILocalVariable(name: "pkg", arg: 2, scope: !1085, file: !169, line: 349, type: !203)
!1091 = !DILocation(line: 349, column: 48, scope: !1085)
!1092 = !DILocalVariable(name: "pkgbin", arg: 3, scope: !1085, file: !169, line: 349, type: !391)
!1093 = !DILocation(line: 349, column: 68, scope: !1085)
!1094 = !DILocation(line: 351, column: 30, scope: !1085)
!1095 = !DILocation(line: 351, column: 50, scope: !1085)
!1096 = !DILocation(line: 351, column: 55, scope: !1085)
!1097 = !DILocation(line: 351, column: 38, scope: !1085)
!1098 = !DILocation(line: 352, column: 25, scope: !1085)
!1099 = !DILocation(line: 352, column: 30, scope: !1085)
!1100 = !DILocation(line: 352, column: 40, scope: !1085)
!1101 = !DILocation(line: 352, column: 8, scope: !1085)
!1102 = !DILocation(line: 353, column: 25, scope: !1085)
!1103 = !DILocation(line: 353, column: 30, scope: !1085)
!1104 = !DILocation(line: 353, column: 40, scope: !1085)
!1105 = !DILocation(line: 353, column: 8, scope: !1085)
!1106 = !DILocation(line: 351, column: 3, scope: !1107)
!1107 = !DILexicalBlockFile(scope: !1085, file: !169, discriminator: 1)
!1108 = !DILocation(line: 354, column: 39, scope: !1085)
!1109 = !DILocation(line: 355, column: 29, scope: !1085)
!1110 = !DILocation(line: 355, column: 34, scope: !1085)
!1111 = !DILocation(line: 355, column: 17, scope: !1085)
!1112 = !DILocation(line: 354, column: 3, scope: !1085)
!1113 = !DILocation(line: 356, column: 1, scope: !1085)
