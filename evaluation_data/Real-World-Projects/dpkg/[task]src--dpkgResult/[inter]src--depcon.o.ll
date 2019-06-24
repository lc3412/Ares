; ModuleID = './[inter]src--depcon.o.i'
source_filename = "./[inter]src--depcon.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.deppossi_pkg_iterator = type { %struct.deppossi*, %struct.pkginfo*, i32 }
%struct.pkginfo = type { %struct.pkgset*, %struct.pkginfo*, i32, i32, i32, i32, i8*, i8*, %struct.dpkg_version, %struct.pkgbin, %struct.pkgbin, %struct.perpackagestate*, %struct.archivedetails*, %struct.anon, %struct.trigaw*, %struct.trigpend*, %struct.fsys_namenode_list*, i64, i8, i8 }
%struct.pkgset = type { %struct.pkgset*, i8*, %struct.pkginfo, %struct.anon.1, i32 }
%struct.anon.1 = type { %struct.deppossi*, %struct.deppossi* }
%struct.dpkg_version = type { i32, i8*, i8* }
%struct.pkgbin = type { %struct.dependency*, i8, i32, %struct.dpkg_arch*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.dpkg_version, %struct.conffile*, %struct.arbitraryfield* }
%struct.dependency = type { %struct.pkginfo*, %struct.dependency*, %struct.deppossi*, i32 }
%struct.dpkg_arch = type { %struct.dpkg_arch*, i8*, i32 }
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
%struct.trigfileint = type opaque
%struct.file_ondisk_id = type { i64, i64 }
%struct.deppossi = type { %struct.dependency*, %struct.pkgset*, %struct.deppossi*, %struct.deppossi*, %struct.deppossi*, %struct.dpkg_arch*, %struct.dpkg_version, i32, i8, i8 }
%struct.pkg_hash_iter = type opaque
%struct.cyclesofarlink = type { %struct.cyclesofarlink*, %struct.pkginfo*, %struct.deppossi* }
%struct.varbuf = type { i64, i64, i8* }

@.str = private unnamed_addr constant [9 x i8] c"depcon.c\00", align 1
@__func__.deppossi_pkg_iter_next = private unnamed_addr constant [23 x i8] c"deppossi_pkg_iter_next\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"unknown which_pkgbin %d\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"%s depends on %s\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"%s pre-depends on %s\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"%s recommends %s\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"%s suggests %s\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"%s breaks %s\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"%s conflicts with %s\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"%s enhances %s\00", align 1
@__func__.describedepcon = private unnamed_addr constant [15 x i8] c"describedepcon\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"unknown deptype '%d'\00", align 1
@__func__.depisok = private unnamed_addr constant [8 x i8] c"depisok\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"unknown dependency type %d\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"unknown status depending '%d'\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"unknown istobe depending '%d'\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"  %.250s is to be removed.\0A\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"  %.250s is to be deconfigured.\0A\00", align 1
@.str.15 = private unnamed_addr constant [53 x i8] c"  %.250s is to be installed, but is version %.250s.\0A\00", align 1
@.str.16 = private unnamed_addr constant [47 x i8] c"  %.250s is installed, but is version %.250s.\0A\00", align 1
@.str.17 = private unnamed_addr constant [54 x i8] c"  %.250s is unpacked, but has never been configured.\0A\00", align 1
@.str.18 = private unnamed_addr constant [46 x i8] c"  %.250s is unpacked, but is version %.250s.\0A\00", align 1
@.str.19 = private unnamed_addr constant [47 x i8] c"  %.250s latest configured version is %.250s.\0A\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"  %.250s is %s.\0A\00", align 1
@statusstrings = external constant [0 x i8*], align 8
@.str.21 = private unnamed_addr constant [29 x i8] c"unknown istobe depended '%d'\00", align 1
@.str.22 = private unnamed_addr constant [48 x i8] c"  %.250s provides %.250s but is to be removed.\0A\00", align 1
@.str.23 = private unnamed_addr constant [53 x i8] c"  %.250s provides %.250s but is to be deconfigured.\0A\00", align 1
@.str.24 = private unnamed_addr constant [37 x i8] c"  %.250s provides %.250s but is %s.\0A\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"unknown istobe provider '%d'\00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"  %.250s is not installed.\0A\00", align 1
@.str.27 = private unnamed_addr constant [47 x i8] c"  %.250s (version %.250s) is to be installed.\0A\00", align 1
@.str.28 = private unnamed_addr constant [46 x i8] c"  %.250s (version %.250s) is present and %s.\0A\00", align 1
@.str.29 = private unnamed_addr constant [29 x i8] c"unknown istobe conflict '%d'\00", align 1
@.str.30 = private unnamed_addr constant [50 x i8] c"  %.250s provides %.250s and is to be installed.\0A\00", align 1
@.str.31 = private unnamed_addr constant [49 x i8] c"  %.250s provides %.250s and is present and %s.\0A\00", align 1
@.str.32 = private unnamed_addr constant [38 x i8] c"unknown istobe conflict provider '%d'\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c" <- \00", align 1
@.str.34 = private unnamed_addr constant [30 x i8] c"findbreakcyclerecursive %s %s\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"found cycle\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"postinst\00", align 1
@.str.37 = private unnamed_addr constant [25 x i8] c"cycle broken at %s -> %s\00", align 1

; Function Attrs: nounwind uwtable
define %struct.deppossi_pkg_iterator* @deppossi_pkg_iter_new(%struct.deppossi*, i32) #0 !dbg !134 {
  %3 = alloca %struct.deppossi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.deppossi_pkg_iterator*, align 8
  store %struct.deppossi* %0, %struct.deppossi** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.deppossi** %3, metadata !349, metadata !350), !dbg !351
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !352, metadata !350), !dbg !353
  call void @llvm.dbg.declare(metadata %struct.deppossi_pkg_iterator** %5, metadata !354, metadata !350), !dbg !355
  %6 = call i8* @m_malloc(i64 24), !dbg !356
  %7 = bitcast i8* %6 to %struct.deppossi_pkg_iterator*, !dbg !356
  store %struct.deppossi_pkg_iterator* %7, %struct.deppossi_pkg_iterator** %5, align 8, !dbg !357
  %8 = load %struct.deppossi*, %struct.deppossi** %3, align 8, !dbg !358
  %9 = load %struct.deppossi_pkg_iterator*, %struct.deppossi_pkg_iterator** %5, align 8, !dbg !359
  %10 = getelementptr inbounds %struct.deppossi_pkg_iterator, %struct.deppossi_pkg_iterator* %9, i32 0, i32 0, !dbg !360
  store %struct.deppossi* %8, %struct.deppossi** %10, align 8, !dbg !361
  %11 = load %struct.deppossi*, %struct.deppossi** %3, align 8, !dbg !362
  %12 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %11, i32 0, i32 1, !dbg !363
  %13 = load %struct.pkgset*, %struct.pkgset** %12, align 8, !dbg !363
  %14 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %13, i32 0, i32 2, !dbg !364
  %15 = load %struct.deppossi_pkg_iterator*, %struct.deppossi_pkg_iterator** %5, align 8, !dbg !365
  %16 = getelementptr inbounds %struct.deppossi_pkg_iterator, %struct.deppossi_pkg_iterator* %15, i32 0, i32 1, !dbg !366
  store %struct.pkginfo* %14, %struct.pkginfo** %16, align 8, !dbg !367
  %17 = load i32, i32* %4, align 4, !dbg !368
  %18 = load %struct.deppossi_pkg_iterator*, %struct.deppossi_pkg_iterator** %5, align 8, !dbg !369
  %19 = getelementptr inbounds %struct.deppossi_pkg_iterator, %struct.deppossi_pkg_iterator* %18, i32 0, i32 2, !dbg !370
  store i32 %17, i32* %19, align 8, !dbg !371
  %20 = load %struct.deppossi_pkg_iterator*, %struct.deppossi_pkg_iterator** %5, align 8, !dbg !372
  ret %struct.deppossi_pkg_iterator* %20, !dbg !373
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i8* @m_malloc(i64) #2

; Function Attrs: nounwind uwtable
define %struct.pkginfo* @deppossi_pkg_iter_next(%struct.deppossi_pkg_iterator*) #0 !dbg !374 {
  %2 = alloca %struct.pkginfo*, align 8
  %3 = alloca %struct.deppossi_pkg_iterator*, align 8
  %4 = alloca %struct.pkginfo*, align 8
  %5 = alloca %struct.pkgbin*, align 8
  store %struct.deppossi_pkg_iterator* %0, %struct.deppossi_pkg_iterator** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.deppossi_pkg_iterator** %3, metadata !377, metadata !350), !dbg !378
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %4, metadata !379, metadata !350), !dbg !380
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %5, metadata !381, metadata !350), !dbg !383
  br label %6, !dbg !384

; <label>:6:                                      ; preds = %57, %1
  %7 = load %struct.deppossi_pkg_iterator*, %struct.deppossi_pkg_iterator** %3, align 8, !dbg !385
  %8 = getelementptr inbounds %struct.deppossi_pkg_iterator, %struct.deppossi_pkg_iterator* %7, i32 0, i32 1, !dbg !387
  %9 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !387
  store %struct.pkginfo* %9, %struct.pkginfo** %4, align 8, !dbg !388
  %10 = icmp ne %struct.pkginfo* %9, null, !dbg !389
  br i1 %10, label %11, label %58, !dbg !389

; <label>:11:                                     ; preds = %6
  %12 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !390
  %13 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %12, i32 0, i32 1, !dbg !392
  %14 = load %struct.pkginfo*, %struct.pkginfo** %13, align 8, !dbg !392
  %15 = load %struct.deppossi_pkg_iterator*, %struct.deppossi_pkg_iterator** %3, align 8, !dbg !393
  %16 = getelementptr inbounds %struct.deppossi_pkg_iterator, %struct.deppossi_pkg_iterator* %15, i32 0, i32 1, !dbg !394
  store %struct.pkginfo* %14, %struct.pkginfo** %16, align 8, !dbg !395
  %17 = load %struct.deppossi_pkg_iterator*, %struct.deppossi_pkg_iterator** %3, align 8, !dbg !396
  %18 = getelementptr inbounds %struct.deppossi_pkg_iterator, %struct.deppossi_pkg_iterator* %17, i32 0, i32 2, !dbg !397
  %19 = load i32, i32* %18, align 8, !dbg !397
  switch i32 %19, label %45 [
    i32 0, label %20
    i32 1, label %23
    i32 2, label %26
  ], !dbg !398

; <label>:20:                                     ; preds = %11
  %21 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !399
  %22 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %21, i32 0, i32 9, !dbg !401
  store %struct.pkgbin* %22, %struct.pkgbin** %5, align 8, !dbg !402
  br label %49, !dbg !403

; <label>:23:                                     ; preds = %11
  %24 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !404
  %25 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %24, i32 0, i32 10, !dbg !405
  store %struct.pkgbin* %25, %struct.pkgbin** %5, align 8, !dbg !406
  br label %49, !dbg !407

; <label>:26:                                     ; preds = %11
  %27 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !408
  %28 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %27, i32 0, i32 11, !dbg !410
  %29 = load %struct.perpackagestate*, %struct.perpackagestate** %28, align 8, !dbg !410
  %30 = icmp ne %struct.perpackagestate* %29, null, !dbg !408
  br i1 %30, label %31, label %41, !dbg !411

; <label>:31:                                     ; preds = %26
  %32 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !412
  %33 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %32, i32 0, i32 11, !dbg !413
  %34 = load %struct.perpackagestate*, %struct.perpackagestate** %33, align 8, !dbg !413
  %35 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %34, i32 0, i32 0, !dbg !414
  %36 = load i32, i32* %35, align 8, !dbg !414
  %37 = icmp eq i32 %36, 2, !dbg !415
  br i1 %37, label %38, label %41, !dbg !416

; <label>:38:                                     ; preds = %31
  %39 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !418
  %40 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %39, i32 0, i32 10, !dbg !419
  store %struct.pkgbin* %40, %struct.pkgbin** %5, align 8, !dbg !420
  br label %44, !dbg !421

; <label>:41:                                     ; preds = %31, %26
  %42 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !422
  %43 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %42, i32 0, i32 9, !dbg !423
  store %struct.pkgbin* %43, %struct.pkgbin** %5, align 8, !dbg !424
  br label %44

; <label>:44:                                     ; preds = %41, %38
  br label %49, !dbg !425

; <label>:45:                                     ; preds = %11
  %46 = load %struct.deppossi_pkg_iterator*, %struct.deppossi_pkg_iterator** %3, align 8, !dbg !426
  %47 = getelementptr inbounds %struct.deppossi_pkg_iterator, %struct.deppossi_pkg_iterator* %46, i32 0, i32 2, !dbg !427
  %48 = load i32, i32* %47, align 8, !dbg !427
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 85, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.deppossi_pkg_iter_next, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i32 %48) #7, !dbg !428
  unreachable, !dbg !428

; <label>:49:                                     ; preds = %44, %23, %20
  %50 = load %struct.pkgbin*, %struct.pkgbin** %5, align 8, !dbg !429
  %51 = load %struct.deppossi_pkg_iterator*, %struct.deppossi_pkg_iterator** %3, align 8, !dbg !431
  %52 = getelementptr inbounds %struct.deppossi_pkg_iterator, %struct.deppossi_pkg_iterator* %51, i32 0, i32 0, !dbg !432
  %53 = load %struct.deppossi*, %struct.deppossi** %52, align 8, !dbg !432
  %54 = call zeroext i1 @archsatisfied(%struct.pkgbin* %50, %struct.deppossi* %53), !dbg !433
  br i1 %54, label %55, label %57, !dbg !434

; <label>:55:                                     ; preds = %49
  %56 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !435
  store %struct.pkginfo* %56, %struct.pkginfo** %2, align 8, !dbg !436
  br label %59, !dbg !436

; <label>:57:                                     ; preds = %49
  br label %6, !dbg !437, !llvm.loop !439

; <label>:58:                                     ; preds = %6
  store %struct.pkginfo* null, %struct.pkginfo** %2, align 8, !dbg !440
  br label %59, !dbg !440

; <label>:59:                                     ; preds = %58, %55
  %60 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !441
  ret %struct.pkginfo* %60, !dbg !441
}

; Function Attrs: noreturn
declare void @do_internerr(i8*, i32, i8*, i8*, ...) #3

declare zeroext i1 @archsatisfied(%struct.pkgbin*, %struct.deppossi*) #2

; Function Attrs: nounwind uwtable
define void @deppossi_pkg_iter_free(%struct.deppossi_pkg_iterator*) #0 !dbg !442 {
  %2 = alloca %struct.deppossi_pkg_iterator*, align 8
  store %struct.deppossi_pkg_iterator* %0, %struct.deppossi_pkg_iterator** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.deppossi_pkg_iterator** %2, metadata !445, metadata !350), !dbg !446
  %3 = load %struct.deppossi_pkg_iterator*, %struct.deppossi_pkg_iterator** %2, align 8, !dbg !447
  %4 = bitcast %struct.deppossi_pkg_iterator* %3 to i8*, !dbg !447
  call void @free(i8* %4) #8, !dbg !448
  ret void, !dbg !449
}

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: nounwind uwtable
define zeroext i1 @findbreakcycle(%struct.pkginfo*) #0 !dbg !450 {
  %2 = alloca %struct.pkginfo*, align 8
  %3 = alloca %struct.pkg_hash_iter*, align 8
  %4 = alloca %struct.pkginfo*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %2, metadata !453, metadata !350), !dbg !454
  call void @llvm.dbg.declare(metadata %struct.pkg_hash_iter** %3, metadata !455, metadata !350), !dbg !458
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %4, metadata !459, metadata !350), !dbg !460
  %5 = call %struct.pkg_hash_iter* @pkg_hash_iter_new(), !dbg !461
  store %struct.pkg_hash_iter* %5, %struct.pkg_hash_iter** %3, align 8, !dbg !462
  br label %6, !dbg !463

; <label>:6:                                      ; preds = %10, %1
  %7 = load %struct.pkg_hash_iter*, %struct.pkg_hash_iter** %3, align 8, !dbg !464
  %8 = call %struct.pkginfo* @pkg_hash_iter_next_pkg(%struct.pkg_hash_iter* %7), !dbg !466
  store %struct.pkginfo* %8, %struct.pkginfo** %4, align 8, !dbg !467
  %9 = icmp ne %struct.pkginfo* %8, null, !dbg !468
  br i1 %9, label %10, label %16, !dbg !468

; <label>:10:                                     ; preds = %6
  %11 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !469
  call void @ensure_package_clientdata(%struct.pkginfo* %11), !dbg !471
  %12 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !472
  %13 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %12, i32 0, i32 11, !dbg !473
  %14 = load %struct.perpackagestate*, %struct.perpackagestate** %13, align 8, !dbg !473
  %15 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %14, i32 0, i32 1, !dbg !474
  store i32 0, i32* %15, align 4, !dbg !475
  br label %6, !dbg !476, !llvm.loop !478

; <label>:16:                                     ; preds = %6
  %17 = load %struct.pkg_hash_iter*, %struct.pkg_hash_iter** %3, align 8, !dbg !479
  call void @pkg_hash_iter_free(%struct.pkg_hash_iter* %17), !dbg !480
  %18 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !481
  %19 = call zeroext i1 @findbreakcyclerecursive(%struct.pkginfo* %18, %struct.cyclesofarlink* null), !dbg !482
  ret i1 %19, !dbg !483
}

declare %struct.pkg_hash_iter* @pkg_hash_iter_new() #2

declare %struct.pkginfo* @pkg_hash_iter_next_pkg(%struct.pkg_hash_iter*) #2

declare void @ensure_package_clientdata(%struct.pkginfo*) #2

declare void @pkg_hash_iter_free(%struct.pkg_hash_iter*) #2

; Function Attrs: nounwind uwtable
define internal zeroext i1 @findbreakcyclerecursive(%struct.pkginfo*, %struct.cyclesofarlink*) #0 !dbg !484 {
  %3 = alloca i1, align 1
  %4 = alloca %struct.pkginfo*, align 8
  %5 = alloca %struct.cyclesofarlink*, align 8
  %6 = alloca %struct.cyclesofarlink, align 8
  %7 = alloca %struct.cyclesofarlink*, align 8
  %8 = alloca %struct.dependency*, align 8
  %9 = alloca %struct.deppossi*, align 8
  %10 = alloca %struct.deppossi*, align 8
  %11 = alloca %struct.pkginfo*, align 8
  %12 = alloca %struct.pkginfo*, align 8
  %13 = alloca %struct.varbuf, align 8
  %14 = alloca %struct.deppossi_pkg_iterator*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %4, metadata !493, metadata !350), !dbg !494
  store %struct.cyclesofarlink* %1, %struct.cyclesofarlink** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.cyclesofarlink** %5, metadata !495, metadata !350), !dbg !496
  call void @llvm.dbg.declare(metadata %struct.cyclesofarlink* %6, metadata !497, metadata !350), !dbg !498
  call void @llvm.dbg.declare(metadata %struct.cyclesofarlink** %7, metadata !499, metadata !350), !dbg !500
  call void @llvm.dbg.declare(metadata %struct.dependency** %8, metadata !501, metadata !350), !dbg !502
  call void @llvm.dbg.declare(metadata %struct.deppossi** %9, metadata !503, metadata !350), !dbg !504
  call void @llvm.dbg.declare(metadata %struct.deppossi** %10, metadata !505, metadata !350), !dbg !506
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %11, metadata !507, metadata !350), !dbg !508
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %12, metadata !509, metadata !350), !dbg !510
  %15 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !511
  %16 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %15, i32 0, i32 11, !dbg !513
  %17 = load %struct.perpackagestate*, %struct.perpackagestate** %16, align 8, !dbg !513
  %18 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %17, i32 0, i32 1, !dbg !514
  %19 = load i32, i32* %18, align 4, !dbg !514
  %20 = icmp eq i32 %19, 2, !dbg !515
  br i1 %20, label %21, label %22, !dbg !516

; <label>:21:                                     ; preds = %2
  store i1 false, i1* %3, align 1, !dbg !517
  br label %163, !dbg !517

; <label>:22:                                     ; preds = %2
  %23 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !518
  %24 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %23, i32 0, i32 11, !dbg !519
  %25 = load %struct.perpackagestate*, %struct.perpackagestate** %24, align 8, !dbg !519
  %26 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %25, i32 0, i32 1, !dbg !520
  store i32 1, i32* %26, align 4, !dbg !521
  %27 = call zeroext i1 @debug_has_flag(i32 256), !dbg !522
  br i1 %27, label %28, label %51, !dbg !524

; <label>:28:                                     ; preds = %22
  call void @llvm.dbg.declare(metadata %struct.varbuf* %13, metadata !525, metadata !350), !dbg !535
  %29 = bitcast %struct.varbuf* %13 to i8*, !dbg !535
  call void @llvm.memset.p0i8.i64(i8* %29, i8 0, i64 24, i32 8, i1 false), !dbg !535
  %30 = load %struct.cyclesofarlink*, %struct.cyclesofarlink** %5, align 8, !dbg !536
  store %struct.cyclesofarlink* %30, %struct.cyclesofarlink** %7, align 8, !dbg !538
  br label %31, !dbg !539

; <label>:31:                                     ; preds = %42, %28
  %32 = load %struct.cyclesofarlink*, %struct.cyclesofarlink** %7, align 8, !dbg !540
  %33 = icmp ne %struct.cyclesofarlink* %32, null, !dbg !543
  br i1 %33, label %34, label %46, !dbg !543

; <label>:34:                                     ; preds = %31
  call void @varbuf_add_buf(%struct.varbuf* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i64 4), !dbg !544
  %35 = load %struct.cyclesofarlink*, %struct.cyclesofarlink** %7, align 8, !dbg !546
  %36 = getelementptr inbounds %struct.cyclesofarlink, %struct.cyclesofarlink* %35, i32 0, i32 1, !dbg !547
  %37 = load %struct.pkginfo*, %struct.pkginfo** %36, align 8, !dbg !547
  %38 = load %struct.cyclesofarlink*, %struct.cyclesofarlink** %7, align 8, !dbg !548
  %39 = getelementptr inbounds %struct.cyclesofarlink, %struct.cyclesofarlink* %38, i32 0, i32 1, !dbg !549
  %40 = load %struct.pkginfo*, %struct.pkginfo** %39, align 8, !dbg !549
  %41 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %40, i32 0, i32 9, !dbg !550
  call void @varbuf_add_pkgbin_name(%struct.varbuf* %13, %struct.pkginfo* %37, %struct.pkgbin* %41, i32 1), !dbg !551
  br label %42, !dbg !552

; <label>:42:                                     ; preds = %34
  %43 = load %struct.cyclesofarlink*, %struct.cyclesofarlink** %7, align 8, !dbg !553
  %44 = getelementptr inbounds %struct.cyclesofarlink, %struct.cyclesofarlink* %43, i32 0, i32 0, !dbg !555
  %45 = load %struct.cyclesofarlink*, %struct.cyclesofarlink** %44, align 8, !dbg !555
  store %struct.cyclesofarlink* %45, %struct.cyclesofarlink** %7, align 8, !dbg !556
  br label %31, !dbg !557, !llvm.loop !558

; <label>:46:                                     ; preds = %31
  call void @varbuf_end_str(%struct.varbuf* %13), !dbg !560
  %47 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !561
  %48 = call i8* @pkg_name(%struct.pkginfo* %47, i32 3), !dbg !562
  %49 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %13, i32 0, i32 2, !dbg !563
  %50 = load i8*, i8** %49, align 8, !dbg !563
  call void (i32, i8*, ...) @debug(i32 256, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.34, i32 0, i32 0), i8* %48, i8* %50), !dbg !564
  call void @varbuf_destroy(%struct.varbuf* %13), !dbg !565
  br label %51, !dbg !566

; <label>:51:                                     ; preds = %46, %22
  %52 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !567
  %53 = getelementptr inbounds %struct.cyclesofarlink, %struct.cyclesofarlink* %6, i32 0, i32 1, !dbg !568
  store %struct.pkginfo* %52, %struct.pkginfo** %53, align 8, !dbg !569
  %54 = load %struct.cyclesofarlink*, %struct.cyclesofarlink** %5, align 8, !dbg !570
  %55 = getelementptr inbounds %struct.cyclesofarlink, %struct.cyclesofarlink* %6, i32 0, i32 0, !dbg !571
  store %struct.cyclesofarlink* %54, %struct.cyclesofarlink** %55, align 8, !dbg !572
  %56 = getelementptr inbounds %struct.cyclesofarlink, %struct.cyclesofarlink* %6, i32 0, i32 2, !dbg !573
  store %struct.deppossi* null, %struct.deppossi** %56, align 8, !dbg !574
  %57 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !575
  %58 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %57, i32 0, i32 9, !dbg !577
  %59 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %58, i32 0, i32 0, !dbg !578
  %60 = load %struct.dependency*, %struct.dependency** %59, align 8, !dbg !578
  store %struct.dependency* %60, %struct.dependency** %8, align 8, !dbg !579
  br label %61, !dbg !580

; <label>:61:                                     ; preds = %154, %51
  %62 = load %struct.dependency*, %struct.dependency** %8, align 8, !dbg !581
  %63 = icmp ne %struct.dependency* %62, null, !dbg !584
  br i1 %63, label %64, label %158, !dbg !584

; <label>:64:                                     ; preds = %61
  %65 = load %struct.dependency*, %struct.dependency** %8, align 8, !dbg !585
  %66 = getelementptr inbounds %struct.dependency, %struct.dependency* %65, i32 0, i32 3, !dbg !588
  %67 = load i32, i32* %66, align 8, !dbg !588
  %68 = icmp ne i32 %67, 2, !dbg !589
  br i1 %68, label %69, label %75, !dbg !590

; <label>:69:                                     ; preds = %64
  %70 = load %struct.dependency*, %struct.dependency** %8, align 8, !dbg !591
  %71 = getelementptr inbounds %struct.dependency, %struct.dependency* %70, i32 0, i32 3, !dbg !593
  %72 = load i32, i32* %71, align 8, !dbg !593
  %73 = icmp ne i32 %72, 3, !dbg !594
  br i1 %73, label %74, label %75, !dbg !595

; <label>:74:                                     ; preds = %69
  br label %154, !dbg !596

; <label>:75:                                     ; preds = %69, %64
  %76 = load %struct.dependency*, %struct.dependency** %8, align 8, !dbg !598
  %77 = getelementptr inbounds %struct.dependency, %struct.dependency* %76, i32 0, i32 2, !dbg !600
  %78 = load %struct.deppossi*, %struct.deppossi** %77, align 8, !dbg !600
  store %struct.deppossi* %78, %struct.deppossi** %9, align 8, !dbg !601
  br label %79, !dbg !602

; <label>:79:                                     ; preds = %149, %75
  %80 = load %struct.deppossi*, %struct.deppossi** %9, align 8, !dbg !603
  %81 = icmp ne %struct.deppossi* %80, null, !dbg !606
  br i1 %81, label %82, label %153, !dbg !606

; <label>:82:                                     ; preds = %79
  call void @llvm.dbg.declare(metadata %struct.deppossi_pkg_iterator** %14, metadata !607, metadata !350), !dbg !609
  %83 = load %struct.deppossi*, %struct.deppossi** %9, align 8, !dbg !610
  %84 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %83, i32 0, i32 9, !dbg !612
  %85 = load i8, i8* %84, align 1, !dbg !612
  %86 = trunc i8 %85 to i1, !dbg !612
  br i1 %86, label %87, label %88, !dbg !613

; <label>:87:                                     ; preds = %82
  br label %149, !dbg !614

; <label>:88:                                     ; preds = %82
  %89 = load %struct.deppossi*, %struct.deppossi** %9, align 8, !dbg !616
  %90 = getelementptr inbounds %struct.cyclesofarlink, %struct.cyclesofarlink* %6, i32 0, i32 2, !dbg !617
  store %struct.deppossi* %89, %struct.deppossi** %90, align 8, !dbg !618
  %91 = load %struct.deppossi*, %struct.deppossi** %9, align 8, !dbg !619
  %92 = call %struct.deppossi_pkg_iterator* @deppossi_pkg_iter_new(%struct.deppossi* %91, i32 0), !dbg !620
  store %struct.deppossi_pkg_iterator* %92, %struct.deppossi_pkg_iterator** %14, align 8, !dbg !621
  br label %93, !dbg !622

; <label>:93:                                     ; preds = %104, %88
  %94 = load %struct.deppossi_pkg_iterator*, %struct.deppossi_pkg_iterator** %14, align 8, !dbg !623
  %95 = call %struct.pkginfo* @deppossi_pkg_iter_next(%struct.deppossi_pkg_iterator* %94), !dbg !625
  store %struct.pkginfo* %95, %struct.pkginfo** %12, align 8, !dbg !626
  %96 = icmp ne %struct.pkginfo* %95, null, !dbg !627
  br i1 %96, label %97, label %105, !dbg !627

; <label>:97:                                     ; preds = %93
  %98 = load %struct.cyclesofarlink*, %struct.cyclesofarlink** %5, align 8, !dbg !628
  %99 = load %struct.pkginfo*, %struct.pkginfo** %12, align 8, !dbg !630
  %100 = load %struct.deppossi*, %struct.deppossi** %9, align 8, !dbg !631
  %101 = call zeroext i1 @foundcyclebroken(%struct.cyclesofarlink* %6, %struct.cyclesofarlink* %98, %struct.pkginfo* %99, %struct.deppossi* %100), !dbg !632
  br i1 %101, label %102, label %104, !dbg !633

; <label>:102:                                    ; preds = %97
  %103 = load %struct.deppossi_pkg_iterator*, %struct.deppossi_pkg_iterator** %14, align 8, !dbg !634
  call void @deppossi_pkg_iter_free(%struct.deppossi_pkg_iterator* %103), !dbg !636
  store i1 true, i1* %3, align 1, !dbg !637
  br label %163, !dbg !637

; <label>:104:                                    ; preds = %97
  br label %93, !dbg !638, !llvm.loop !640

; <label>:105:                                    ; preds = %93
  %106 = load %struct.deppossi_pkg_iterator*, %struct.deppossi_pkg_iterator** %14, align 8, !dbg !641
  call void @deppossi_pkg_iter_free(%struct.deppossi_pkg_iterator* %106), !dbg !642
  %107 = load %struct.deppossi*, %struct.deppossi** %9, align 8, !dbg !643
  %108 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %107, i32 0, i32 1, !dbg !645
  %109 = load %struct.pkgset*, %struct.pkgset** %108, align 8, !dbg !645
  %110 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %109, i32 0, i32 3, !dbg !646
  %111 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %110, i32 0, i32 1, !dbg !647
  %112 = load %struct.deppossi*, %struct.deppossi** %111, align 8, !dbg !647
  store %struct.deppossi* %112, %struct.deppossi** %10, align 8, !dbg !648
  br label %113, !dbg !649

; <label>:113:                                    ; preds = %144, %105
  %114 = load %struct.deppossi*, %struct.deppossi** %10, align 8, !dbg !650
  %115 = icmp ne %struct.deppossi* %114, null, !dbg !652
  br i1 %115, label %116, label %148, !dbg !652

; <label>:116:                                    ; preds = %113
  %117 = load %struct.deppossi*, %struct.deppossi** %10, align 8, !dbg !654
  %118 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %117, i32 0, i32 0, !dbg !657
  %119 = load %struct.dependency*, %struct.dependency** %118, align 8, !dbg !657
  %120 = getelementptr inbounds %struct.dependency, %struct.dependency* %119, i32 0, i32 3, !dbg !658
  %121 = load i32, i32* %120, align 8, !dbg !658
  %122 = icmp ne i32 %121, 6, !dbg !659
  br i1 %122, label %123, label %124, !dbg !660

; <label>:123:                                    ; preds = %116
  br label %144, !dbg !661

; <label>:124:                                    ; preds = %116
  %125 = load %struct.deppossi*, %struct.deppossi** %10, align 8, !dbg !663
  %126 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %125, i32 0, i32 0, !dbg !664
  %127 = load %struct.dependency*, %struct.dependency** %126, align 8, !dbg !664
  %128 = getelementptr inbounds %struct.dependency, %struct.dependency* %127, i32 0, i32 0, !dbg !665
  %129 = load %struct.pkginfo*, %struct.pkginfo** %128, align 8, !dbg !665
  store %struct.pkginfo* %129, %struct.pkginfo** %11, align 8, !dbg !666
  %130 = load %struct.pkginfo*, %struct.pkginfo** %11, align 8, !dbg !667
  %131 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %130, i32 0, i32 11, !dbg !669
  %132 = load %struct.perpackagestate*, %struct.perpackagestate** %131, align 8, !dbg !669
  %133 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %132, i32 0, i32 0, !dbg !670
  %134 = load i32, i32* %133, align 8, !dbg !670
  %135 = icmp eq i32 %134, 0, !dbg !671
  br i1 %135, label %136, label %137, !dbg !672

; <label>:136:                                    ; preds = %124
  br label %144, !dbg !673

; <label>:137:                                    ; preds = %124
  %138 = load %struct.cyclesofarlink*, %struct.cyclesofarlink** %5, align 8, !dbg !674
  %139 = load %struct.pkginfo*, %struct.pkginfo** %11, align 8, !dbg !676
  %140 = load %struct.deppossi*, %struct.deppossi** %9, align 8, !dbg !677
  %141 = call zeroext i1 @foundcyclebroken(%struct.cyclesofarlink* %6, %struct.cyclesofarlink* %138, %struct.pkginfo* %139, %struct.deppossi* %140), !dbg !678
  br i1 %141, label %142, label %143, !dbg !679

; <label>:142:                                    ; preds = %137
  store i1 true, i1* %3, align 1, !dbg !680
  br label %163, !dbg !680

; <label>:143:                                    ; preds = %137
  br label %144, !dbg !681

; <label>:144:                                    ; preds = %143, %136, %123
  %145 = load %struct.deppossi*, %struct.deppossi** %10, align 8, !dbg !682
  %146 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %145, i32 0, i32 3, !dbg !683
  %147 = load %struct.deppossi*, %struct.deppossi** %146, align 8, !dbg !683
  store %struct.deppossi* %147, %struct.deppossi** %10, align 8, !dbg !684
  br label %113, !dbg !685, !llvm.loop !687

; <label>:148:                                    ; preds = %113
  br label %149, !dbg !689

; <label>:149:                                    ; preds = %148, %87
  %150 = load %struct.deppossi*, %struct.deppossi** %9, align 8, !dbg !690
  %151 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %150, i32 0, i32 2, !dbg !692
  %152 = load %struct.deppossi*, %struct.deppossi** %151, align 8, !dbg !692
  store %struct.deppossi* %152, %struct.deppossi** %9, align 8, !dbg !693
  br label %79, !dbg !694, !llvm.loop !695

; <label>:153:                                    ; preds = %79
  br label %154, !dbg !697

; <label>:154:                                    ; preds = %153, %74
  %155 = load %struct.dependency*, %struct.dependency** %8, align 8, !dbg !698
  %156 = getelementptr inbounds %struct.dependency, %struct.dependency* %155, i32 0, i32 1, !dbg !700
  %157 = load %struct.dependency*, %struct.dependency** %156, align 8, !dbg !700
  store %struct.dependency* %157, %struct.dependency** %8, align 8, !dbg !701
  br label %61, !dbg !702, !llvm.loop !703

; <label>:158:                                    ; preds = %61
  %159 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !705
  %160 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %159, i32 0, i32 11, !dbg !706
  %161 = load %struct.perpackagestate*, %struct.perpackagestate** %160, align 8, !dbg !706
  %162 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %161, i32 0, i32 1, !dbg !707
  store i32 2, i32* %162, align 4, !dbg !708
  store i1 false, i1* %3, align 1, !dbg !709
  br label %163, !dbg !709

; <label>:163:                                    ; preds = %158, %142, %102, %21
  %164 = load i1, i1* %3, align 1, !dbg !710
  ret i1 %164, !dbg !710
}

; Function Attrs: nounwind uwtable
define void @describedepcon(%struct.varbuf*, %struct.dependency*) #0 !dbg !711 {
  %3 = alloca %struct.varbuf*, align 8
  %4 = alloca %struct.dependency*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.varbuf, align 8
  store %struct.varbuf* %0, %struct.varbuf** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %3, metadata !715, metadata !350), !dbg !716
  store %struct.dependency* %1, %struct.dependency** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.dependency** %4, metadata !717, metadata !350), !dbg !718
  call void @llvm.dbg.declare(metadata i8** %5, metadata !719, metadata !350), !dbg !720
  call void @llvm.dbg.declare(metadata %struct.varbuf* %6, metadata !721, metadata !350), !dbg !722
  %7 = bitcast %struct.varbuf* %6 to i8*, !dbg !722
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 24, i32 8, i1 false), !dbg !722
  %8 = load %struct.dependency*, %struct.dependency** %4, align 8, !dbg !723
  %9 = getelementptr inbounds %struct.dependency, %struct.dependency* %8, i32 0, i32 3, !dbg !724
  %10 = load i32, i32* %9, align 8, !dbg !724
  switch i32 %10, label %25 [
    i32 2, label %11
    i32 3, label %13
    i32 1, label %15
    i32 0, label %17
    i32 4, label %19
    i32 5, label %21
    i32 8, label %23
  ], !dbg !725

; <label>:11:                                     ; preds = %2
  %12 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0)) #8, !dbg !726
  store i8* %12, i8** %5, align 8, !dbg !728
  br label %29, !dbg !729

; <label>:13:                                     ; preds = %2
  %14 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0)) #8, !dbg !730
  store i8* %14, i8** %5, align 8, !dbg !731
  br label %29, !dbg !732

; <label>:15:                                     ; preds = %2
  %16 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0)) #8, !dbg !733
  store i8* %16, i8** %5, align 8, !dbg !734
  br label %29, !dbg !735

; <label>:17:                                     ; preds = %2
  %18 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0)) #8, !dbg !736
  store i8* %18, i8** %5, align 8, !dbg !737
  br label %29, !dbg !738

; <label>:19:                                     ; preds = %2
  %20 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0)) #8, !dbg !739
  store i8* %20, i8** %5, align 8, !dbg !740
  br label %29, !dbg !741

; <label>:21:                                     ; preds = %2
  %22 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0)) #8, !dbg !742
  store i8* %22, i8** %5, align 8, !dbg !743
  br label %29, !dbg !744

; <label>:23:                                     ; preds = %2
  %24 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0)) #8, !dbg !745
  store i8* %24, i8** %5, align 8, !dbg !746
  br label %29, !dbg !747

; <label>:25:                                     ; preds = %2
  %26 = load %struct.dependency*, %struct.dependency** %4, align 8, !dbg !748
  %27 = getelementptr inbounds %struct.dependency, %struct.dependency* %26, i32 0, i32 3, !dbg !749
  %28 = load i32, i32* %27, align 8, !dbg !749
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 268, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.describedepcon, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i32 0, i32 0), i32 %28) #7, !dbg !750
  unreachable, !dbg !750

; <label>:29:                                     ; preds = %23, %21, %19, %17, %15, %13, %11
  %30 = load %struct.dependency*, %struct.dependency** %4, align 8, !dbg !751
  call void @varbufdependency(%struct.varbuf* %6, %struct.dependency* %30), !dbg !752
  call void @varbuf_end_str(%struct.varbuf* %6), !dbg !753
  %31 = load %struct.varbuf*, %struct.varbuf** %3, align 8, !dbg !754
  %32 = load i8*, i8** %5, align 8, !dbg !755
  %33 = load %struct.dependency*, %struct.dependency** %4, align 8, !dbg !756
  %34 = getelementptr inbounds %struct.dependency, %struct.dependency* %33, i32 0, i32 0, !dbg !757
  %35 = load %struct.pkginfo*, %struct.pkginfo** %34, align 8, !dbg !757
  %36 = call i8* @pkg_name(%struct.pkginfo* %35, i32 1), !dbg !758
  %37 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %6, i32 0, i32 2, !dbg !759
  %38 = load i8*, i8** %37, align 8, !dbg !759
  %39 = call i32 (%struct.varbuf*, i8*, ...) @varbuf_printf(%struct.varbuf* %31, i8* %32, i8* %36, i8* %38), !dbg !760
  call void @varbuf_destroy(%struct.varbuf* %6), !dbg !762
  ret void, !dbg !763
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #5

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare void @varbufdependency(%struct.varbuf*, %struct.dependency*) #2

declare void @varbuf_end_str(%struct.varbuf*) #2

declare i32 @varbuf_printf(%struct.varbuf*, i8*, ...) #2

declare i8* @pkg_name(%struct.pkginfo*, i32) #2

declare void @varbuf_destroy(%struct.varbuf*) #2

; Function Attrs: nounwind uwtable
define zeroext i1 @depisok(%struct.dependency*, %struct.varbuf*, %struct.pkginfo**, %struct.pkginfo**, i1 zeroext) #0 !dbg !764 {
  %6 = alloca i1, align 1
  %7 = alloca %struct.dependency*, align 8
  %8 = alloca %struct.varbuf*, align 8
  %9 = alloca %struct.pkginfo**, align 8
  %10 = alloca %struct.pkginfo**, align 8
  %11 = alloca i8, align 1
  %12 = alloca %struct.deppossi*, align 8
  %13 = alloca %struct.deppossi*, align 8
  %14 = alloca %struct.pkginfo*, align 8
  %15 = alloca i32, align 4
  %16 = alloca [1024 x i8], align 16
  %17 = alloca %struct.deppossi_pkg_iterator*, align 8
  %18 = alloca %struct.deppossi_pkg_iterator*, align 8
  store %struct.dependency* %0, %struct.dependency** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.dependency** %7, metadata !768, metadata !350), !dbg !769
  store %struct.varbuf* %1, %struct.varbuf** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %8, metadata !770, metadata !350), !dbg !771
  store %struct.pkginfo** %2, %struct.pkginfo*** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo*** %9, metadata !772, metadata !350), !dbg !773
  store %struct.pkginfo** %3, %struct.pkginfo*** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo*** %10, metadata !774, metadata !350), !dbg !775
  %19 = zext i1 %4 to i8
  store i8 %19, i8* %11, align 1
  call void @llvm.dbg.declare(metadata i8* %11, metadata !776, metadata !350), !dbg !777
  call void @llvm.dbg.declare(metadata %struct.deppossi** %12, metadata !778, metadata !350), !dbg !779
  call void @llvm.dbg.declare(metadata %struct.deppossi** %13, metadata !780, metadata !350), !dbg !781
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %14, metadata !782, metadata !350), !dbg !783
  call void @llvm.dbg.declare(metadata i32* %15, metadata !784, metadata !350), !dbg !785
  call void @llvm.dbg.declare(metadata [1024 x i8]* %16, metadata !786, metadata !350), !dbg !790
  %20 = load %struct.dependency*, %struct.dependency** %7, align 8, !dbg !791
  %21 = getelementptr inbounds %struct.dependency, %struct.dependency* %20, i32 0, i32 3, !dbg !793
  %22 = load i32, i32* %21, align 8, !dbg !793
  %23 = icmp ne i32 %22, 2, !dbg !794
  br i1 %23, label %24, label %58, !dbg !795

; <label>:24:                                     ; preds = %5
  %25 = load %struct.dependency*, %struct.dependency** %7, align 8, !dbg !796
  %26 = getelementptr inbounds %struct.dependency, %struct.dependency* %25, i32 0, i32 3, !dbg !797
  %27 = load i32, i32* %26, align 8, !dbg !797
  %28 = icmp ne i32 %27, 3, !dbg !798
  br i1 %28, label %29, label %58, !dbg !799

; <label>:29:                                     ; preds = %24
  %30 = load %struct.dependency*, %struct.dependency** %7, align 8, !dbg !800
  %31 = getelementptr inbounds %struct.dependency, %struct.dependency* %30, i32 0, i32 3, !dbg !801
  %32 = load i32, i32* %31, align 8, !dbg !801
  %33 = icmp ne i32 %32, 4, !dbg !802
  br i1 %33, label %34, label %58, !dbg !803

; <label>:34:                                     ; preds = %29
  %35 = load %struct.dependency*, %struct.dependency** %7, align 8, !dbg !804
  %36 = getelementptr inbounds %struct.dependency, %struct.dependency* %35, i32 0, i32 3, !dbg !805
  %37 = load i32, i32* %36, align 8, !dbg !805
  %38 = icmp ne i32 %37, 5, !dbg !806
  br i1 %38, label %39, label %58, !dbg !807

; <label>:39:                                     ; preds = %34
  %40 = load %struct.dependency*, %struct.dependency** %7, align 8, !dbg !808
  %41 = getelementptr inbounds %struct.dependency, %struct.dependency* %40, i32 0, i32 3, !dbg !809
  %42 = load i32, i32* %41, align 8, !dbg !809
  %43 = icmp ne i32 %42, 1, !dbg !810
  br i1 %43, label %44, label %58, !dbg !811

; <label>:44:                                     ; preds = %39
  %45 = load %struct.dependency*, %struct.dependency** %7, align 8, !dbg !812
  %46 = getelementptr inbounds %struct.dependency, %struct.dependency* %45, i32 0, i32 3, !dbg !813
  %47 = load i32, i32* %46, align 8, !dbg !813
  %48 = icmp ne i32 %47, 0, !dbg !814
  br i1 %48, label %49, label %58, !dbg !815

; <label>:49:                                     ; preds = %44
  %50 = load %struct.dependency*, %struct.dependency** %7, align 8, !dbg !816
  %51 = getelementptr inbounds %struct.dependency, %struct.dependency* %50, i32 0, i32 3, !dbg !817
  %52 = load i32, i32* %51, align 8, !dbg !817
  %53 = icmp ne i32 %52, 8, !dbg !818
  br i1 %53, label %54, label %58, !dbg !819

; <label>:54:                                     ; preds = %49
  %55 = load %struct.dependency*, %struct.dependency** %7, align 8, !dbg !821
  %56 = getelementptr inbounds %struct.dependency, %struct.dependency* %55, i32 0, i32 3, !dbg !822
  %57 = load i32, i32* %56, align 8, !dbg !822
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 324, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.depisok, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i32 0, i32 0), i32 %57) #7, !dbg !823
  unreachable, !dbg !823

; <label>:58:                                     ; preds = %49, %44, %39, %34, %29, %24, %5
  %59 = load %struct.pkginfo**, %struct.pkginfo*** %9, align 8, !dbg !824
  %60 = icmp ne %struct.pkginfo** %59, null, !dbg !824
  br i1 %60, label %61, label %63, !dbg !826

; <label>:61:                                     ; preds = %58
  %62 = load %struct.pkginfo**, %struct.pkginfo*** %9, align 8, !dbg !827
  store %struct.pkginfo* null, %struct.pkginfo** %62, align 8, !dbg !828
  br label %63, !dbg !829

; <label>:63:                                     ; preds = %61, %58
  %64 = load %struct.pkginfo**, %struct.pkginfo*** %10, align 8, !dbg !830
  %65 = icmp ne %struct.pkginfo** %64, null, !dbg !830
  br i1 %65, label %66, label %68, !dbg !832

; <label>:66:                                     ; preds = %63
  %67 = load %struct.pkginfo**, %struct.pkginfo*** %10, align 8, !dbg !833
  store %struct.pkginfo* null, %struct.pkginfo** %67, align 8, !dbg !834
  br label %68, !dbg !835

; <label>:68:                                     ; preds = %66, %63
  %69 = load %struct.dependency*, %struct.dependency** %7, align 8, !dbg !836
  %70 = getelementptr inbounds %struct.dependency, %struct.dependency* %69, i32 0, i32 0, !dbg !837
  %71 = load %struct.pkginfo*, %struct.pkginfo** %70, align 8, !dbg !837
  %72 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %71, i32 0, i32 11, !dbg !838
  %73 = load %struct.perpackagestate*, %struct.perpackagestate** %72, align 8, !dbg !838
  %74 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %73, i32 0, i32 0, !dbg !839
  %75 = load i32, i32* %74, align 8, !dbg !839
  switch i32 %75, label %110 [
    i32 1, label %76
    i32 3, label %76
    i32 0, label %77
    i32 2, label %109
    i32 4, label %109
  ], !dbg !840

; <label>:76:                                     ; preds = %68, %68
  store i1 true, i1* %6, align 1, !dbg !841
  br label %861, !dbg !841

; <label>:77:                                     ; preds = %68
  %78 = load %struct.dependency*, %struct.dependency** %7, align 8, !dbg !843
  %79 = getelementptr inbounds %struct.dependency, %struct.dependency* %78, i32 0, i32 0, !dbg !844
  %80 = load %struct.pkginfo*, %struct.pkginfo** %79, align 8, !dbg !844
  %81 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %80, i32 0, i32 4, !dbg !845
  %82 = load i32, i32* %81, align 8, !dbg !845
  switch i32 %82, label %102 [
    i32 7, label %83
    i32 6, label %83
    i32 5, label %83
    i32 4, label %84
    i32 3, label %84
    i32 2, label %84
    i32 1, label %101
    i32 0, label %101
  ], !dbg !846

; <label>:83:                                     ; preds = %77, %77, %77
  br label %108, !dbg !847

; <label>:84:                                     ; preds = %77, %77, %77
  %85 = load %struct.dependency*, %struct.dependency** %7, align 8, !dbg !849
  %86 = getelementptr inbounds %struct.dependency, %struct.dependency* %85, i32 0, i32 3, !dbg !851
  %87 = load i32, i32* %86, align 8, !dbg !851
  %88 = icmp eq i32 %87, 3, !dbg !852
  br i1 %88, label %99, label %89, !dbg !853

; <label>:89:                                     ; preds = %84
  %90 = load %struct.dependency*, %struct.dependency** %7, align 8, !dbg !854
  %91 = getelementptr inbounds %struct.dependency, %struct.dependency* %90, i32 0, i32 3, !dbg !855
  %92 = load i32, i32* %91, align 8, !dbg !855
  %93 = icmp eq i32 %92, 5, !dbg !856
  br i1 %93, label %99, label %94, !dbg !857

; <label>:94:                                     ; preds = %89
  %95 = load %struct.dependency*, %struct.dependency** %7, align 8, !dbg !858
  %96 = getelementptr inbounds %struct.dependency, %struct.dependency* %95, i32 0, i32 3, !dbg !859
  %97 = load i32, i32* %96, align 8, !dbg !859
  %98 = icmp eq i32 %97, 4, !dbg !860
  br i1 %98, label %99, label %100, !dbg !861

; <label>:99:                                     ; preds = %94, %89, %84
  br label %108, !dbg !863

; <label>:100:                                    ; preds = %94
  br label %101, !dbg !864

; <label>:101:                                    ; preds = %77, %77, %100
  store i1 true, i1* %6, align 1, !dbg !866
  br label %861, !dbg !866

; <label>:102:                                    ; preds = %77
  %103 = load %struct.dependency*, %struct.dependency** %7, align 8, !dbg !867
  %104 = getelementptr inbounds %struct.dependency, %struct.dependency* %103, i32 0, i32 0, !dbg !868
  %105 = load %struct.pkginfo*, %struct.pkginfo** %104, align 8, !dbg !868
  %106 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %105, i32 0, i32 4, !dbg !869
  %107 = load i32, i32* %106, align 8, !dbg !869
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 356, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.depisok, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i32 0, i32 0), i32 %107) #7, !dbg !870
  unreachable, !dbg !870

; <label>:108:                                    ; preds = %99, %83
  br label %118, !dbg !871

; <label>:109:                                    ; preds = %68, %68
  br label %118, !dbg !872

; <label>:110:                                    ; preds = %68
  %111 = load %struct.dependency*, %struct.dependency** %7, align 8, !dbg !873
  %112 = getelementptr inbounds %struct.dependency, %struct.dependency* %111, i32 0, i32 0, !dbg !874
  %113 = load %struct.pkginfo*, %struct.pkginfo** %112, align 8, !dbg !874
  %114 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %113, i32 0, i32 11, !dbg !875
  %115 = load %struct.perpackagestate*, %struct.perpackagestate** %114, align 8, !dbg !875
  %116 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %115, i32 0, i32 0, !dbg !876
  %117 = load i32, i32* %116, align 8, !dbg !876
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 363, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.depisok, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i32 0, i32 0), i32 %117) #7, !dbg !877
  unreachable, !dbg !877

; <label>:118:                                    ; preds = %109, %108
  %119 = load %struct.varbuf*, %struct.varbuf** %8, align 8, !dbg !878
  call void @varbuf_reset(%struct.varbuf* %119), !dbg !879
  %120 = load %struct.varbuf*, %struct.varbuf** %8, align 8, !dbg !880
  call void @varbuf_add_char(%struct.varbuf* %120, i32 32), !dbg !881
  %121 = load %struct.varbuf*, %struct.varbuf** %8, align 8, !dbg !882
  %122 = load %struct.dependency*, %struct.dependency** %7, align 8, !dbg !883
  call void @describedepcon(%struct.varbuf* %121, %struct.dependency* %122), !dbg !884
  %123 = load %struct.varbuf*, %struct.varbuf** %8, align 8, !dbg !885
  call void @varbuf_add_char(%struct.varbuf* %123, i32 10), !dbg !886
  %124 = load %struct.dependency*, %struct.dependency** %7, align 8, !dbg !887
  %125 = getelementptr inbounds %struct.dependency, %struct.dependency* %124, i32 0, i32 3, !dbg !889
  %126 = load i32, i32* %125, align 8, !dbg !889
  %127 = icmp eq i32 %126, 2, !dbg !890
  br i1 %127, label %143, label %128, !dbg !891

; <label>:128:                                    ; preds = %118
  %129 = load %struct.dependency*, %struct.dependency** %7, align 8, !dbg !892
  %130 = getelementptr inbounds %struct.dependency, %struct.dependency* %129, i32 0, i32 3, !dbg !894
  %131 = load i32, i32* %130, align 8, !dbg !894
  %132 = icmp eq i32 %131, 3, !dbg !895
  br i1 %132, label %143, label %133, !dbg !896

; <label>:133:                                    ; preds = %128
  %134 = load %struct.dependency*, %struct.dependency** %7, align 8, !dbg !897
  %135 = getelementptr inbounds %struct.dependency, %struct.dependency* %134, i32 0, i32 3, !dbg !898
  %136 = load i32, i32* %135, align 8, !dbg !898
  %137 = icmp eq i32 %136, 1, !dbg !899
  br i1 %137, label %143, label %138, !dbg !900

; <label>:138:                                    ; preds = %133
  %139 = load %struct.dependency*, %struct.dependency** %7, align 8, !dbg !901
  %140 = getelementptr inbounds %struct.dependency, %struct.dependency* %139, i32 0, i32 3, !dbg !902
  %141 = load i32, i32* %140, align 8, !dbg !902
  %142 = icmp eq i32 %141, 0, !dbg !903
  br i1 %142, label %143, label %511, !dbg !904

; <label>:143:                                    ; preds = %138, %133, %128, %118
  %144 = load %struct.dependency*, %struct.dependency** %7, align 8, !dbg !906
  %145 = getelementptr inbounds %struct.dependency, %struct.dependency* %144, i32 0, i32 2, !dbg !909
  %146 = load %struct.deppossi*, %struct.deppossi** %145, align 8, !dbg !909
  store %struct.deppossi* %146, %struct.deppossi** %12, align 8, !dbg !910
  br label %147, !dbg !911

; <label>:147:                                    ; preds = %506, %143
  %148 = load %struct.deppossi*, %struct.deppossi** %12, align 8, !dbg !912
  %149 = icmp ne %struct.deppossi* %148, null, !dbg !915
  br i1 %149, label %150, label %510, !dbg !915

; <label>:150:                                    ; preds = %147
  call void @llvm.dbg.declare(metadata %struct.deppossi_pkg_iterator** %17, metadata !916, metadata !350), !dbg !918
  %151 = load %struct.deppossi*, %struct.deppossi** %12, align 8, !dbg !919
  %152 = call %struct.deppossi_pkg_iterator* @deppossi_pkg_iter_new(%struct.deppossi* %151, i32 2), !dbg !920
  store %struct.deppossi_pkg_iterator* %152, %struct.deppossi_pkg_iterator** %17, align 8, !dbg !921
  br label %153, !dbg !922

; <label>:153:                                    ; preds = %298, %150
  %154 = load %struct.deppossi_pkg_iterator*, %struct.deppossi_pkg_iterator** %17, align 8, !dbg !923
  %155 = call %struct.pkginfo* @deppossi_pkg_iter_next(%struct.deppossi_pkg_iterator* %154), !dbg !925
  store %struct.pkginfo* %155, %struct.pkginfo** %14, align 8, !dbg !926
  %156 = icmp ne %struct.pkginfo* %155, null, !dbg !927
  br i1 %156, label %157, label %303, !dbg !927

; <label>:157:                                    ; preds = %153
  %158 = load %struct.pkginfo*, %struct.pkginfo** %14, align 8, !dbg !928
  %159 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %158, i32 0, i32 11, !dbg !930
  %160 = load %struct.perpackagestate*, %struct.perpackagestate** %159, align 8, !dbg !930
  %161 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %160, i32 0, i32 0, !dbg !931
  %162 = load i32, i32* %161, align 8, !dbg !931
  switch i32 %162, label %292 [
    i32 1, label %163
    i32 3, label %169
    i32 2, label %175
    i32 0, label %194
    i32 4, label %194
  ], !dbg !932

; <label>:163:                                    ; preds = %157
  %164 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i32 0, i32 0, !dbg !933
  %165 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i32 0, i32 0)) #8, !dbg !935
  %166 = load %struct.pkginfo*, %struct.pkginfo** %14, align 8, !dbg !936
  %167 = call i8* @pkg_name(%struct.pkginfo* %166, i32 1), !dbg !937
  %168 = call i32 (i8*, i8*, ...) @sprintf(i8* %164, i8* %165, i8* %167) #8, !dbg !938
  br label %298, !dbg !940

; <label>:169:                                    ; preds = %157
  %170 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i32 0, i32 0, !dbg !941
  %171 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i32 0, i32 0)) #8, !dbg !942
  %172 = load %struct.pkginfo*, %struct.pkginfo** %14, align 8, !dbg !943
  %173 = call i8* @pkg_name(%struct.pkginfo* %172, i32 1), !dbg !944
  %174 = call i32 (i8*, i8*, ...) @sprintf(i8* %170, i8* %171, i8* %173) #8, !dbg !945
  br label %298, !dbg !946

; <label>:175:                                    ; preds = %157
  %176 = load %struct.pkginfo*, %struct.pkginfo** %14, align 8, !dbg !947
  %177 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %176, i32 0, i32 10, !dbg !949
  %178 = load %struct.deppossi*, %struct.deppossi** %12, align 8, !dbg !950
  %179 = call zeroext i1 @versionsatisfied(%struct.pkgbin* %177, %struct.deppossi* %178), !dbg !951
  br i1 %179, label %180, label %182, !dbg !952

; <label>:180:                                    ; preds = %175
  %181 = load %struct.deppossi_pkg_iterator*, %struct.deppossi_pkg_iterator** %17, align 8, !dbg !953
  call void @deppossi_pkg_iter_free(%struct.deppossi_pkg_iterator* %181), !dbg !955
  store i1 true, i1* %6, align 1, !dbg !956
  br label %861, !dbg !956

; <label>:182:                                    ; preds = %175
  %183 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i32 0, i32 0, !dbg !957
  %184 = call i8* @gettext(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.15, i32 0, i32 0)) #8, !dbg !958
  %185 = load %struct.pkginfo*, %struct.pkginfo** %14, align 8, !dbg !959
  %186 = load %struct.pkginfo*, %struct.pkginfo** %14, align 8, !dbg !960
  %187 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %186, i32 0, i32 10, !dbg !961
  %188 = call i8* @pkgbin_name(%struct.pkginfo* %185, %struct.pkgbin* %187, i32 1), !dbg !962
  %189 = load %struct.pkginfo*, %struct.pkginfo** %14, align 8, !dbg !963
  %190 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %189, i32 0, i32 10, !dbg !964
  %191 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %190, i32 0, i32 11, !dbg !965
  %192 = call i8* @versiondescribe(%struct.dpkg_version* %191, i32 1), !dbg !966
  %193 = call i32 (i8*, i8*, ...) @sprintf(i8* %183, i8* %184, i8* %188, i8* %192) #8, !dbg !967
  br label %298, !dbg !968

; <label>:194:                                    ; preds = %157, %157
  %195 = load %struct.pkginfo*, %struct.pkginfo** %14, align 8, !dbg !969
  %196 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %195, i32 0, i32 4, !dbg !970
  %197 = load i32, i32* %196, align 8, !dbg !970
  switch i32 %197, label %278 [
    i32 7, label %198
    i32 6, label %198
    i32 0, label %215
    i32 5, label %217
    i32 3, label %229
    i32 4, label %229
  ], !dbg !971

; <label>:198:                                    ; preds = %194, %194
  %199 = load %struct.pkginfo*, %struct.pkginfo** %14, align 8, !dbg !972
  %200 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %199, i32 0, i32 9, !dbg !975
  %201 = load %struct.deppossi*, %struct.deppossi** %12, align 8, !dbg !976
  %202 = call zeroext i1 @versionsatisfied(%struct.pkgbin* %200, %struct.deppossi* %201), !dbg !977
  br i1 %202, label %203, label %205, !dbg !978

; <label>:203:                                    ; preds = %198
  %204 = load %struct.deppossi_pkg_iterator*, %struct.deppossi_pkg_iterator** %17, align 8, !dbg !979
  call void @deppossi_pkg_iter_free(%struct.deppossi_pkg_iterator* %204), !dbg !981
  store i1 true, i1* %6, align 1, !dbg !982
  br label %861, !dbg !982

; <label>:205:                                    ; preds = %198
  %206 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i32 0, i32 0, !dbg !983
  %207 = call i8* @gettext(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.16, i32 0, i32 0)) #8, !dbg !984
  %208 = load %struct.pkginfo*, %struct.pkginfo** %14, align 8, !dbg !985
  %209 = call i8* @pkg_name(%struct.pkginfo* %208, i32 1), !dbg !986
  %210 = load %struct.pkginfo*, %struct.pkginfo** %14, align 8, !dbg !987
  %211 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %210, i32 0, i32 9, !dbg !988
  %212 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %211, i32 0, i32 11, !dbg !989
  %213 = call i8* @versiondescribe(%struct.dpkg_version* %212, i32 1), !dbg !990
  %214 = call i32 (i8*, i8*, ...) @sprintf(i8* %206, i8* %207, i8* %209, i8* %213) #8, !dbg !991
  br label %291, !dbg !993

; <label>:215:                                    ; preds = %194
  %216 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i32 0, i32 0, !dbg !994
  store i8 0, i8* %216, align 16, !dbg !995
  br label %291, !dbg !996

; <label>:217:                                    ; preds = %194
  %218 = load %struct.pkginfo**, %struct.pkginfo*** %10, align 8, !dbg !997
  %219 = icmp ne %struct.pkginfo** %218, null, !dbg !997
  br i1 %219, label %220, label %228, !dbg !999

; <label>:220:                                    ; preds = %217
  %221 = load %struct.pkginfo*, %struct.pkginfo** %14, align 8, !dbg !1000
  %222 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %221, i32 0, i32 9, !dbg !1002
  %223 = load %struct.deppossi*, %struct.deppossi** %12, align 8, !dbg !1003
  %224 = call zeroext i1 @versionsatisfied(%struct.pkgbin* %222, %struct.deppossi* %223), !dbg !1004
  br i1 %224, label %225, label %228, !dbg !1005

; <label>:225:                                    ; preds = %220
  %226 = load %struct.pkginfo*, %struct.pkginfo** %14, align 8, !dbg !1006
  %227 = load %struct.pkginfo**, %struct.pkginfo*** %10, align 8, !dbg !1007
  store %struct.pkginfo* %226, %struct.pkginfo** %227, align 8, !dbg !1008
  br label %228, !dbg !1009

; <label>:228:                                    ; preds = %225, %220, %217
  br label %229, !dbg !1010

; <label>:229:                                    ; preds = %194, %194, %228
  %230 = load i8, i8* %11, align 1, !dbg !1012
  %231 = trunc i8 %230 to i1, !dbg !1012
  br i1 %231, label %232, label %277, !dbg !1014

; <label>:232:                                    ; preds = %229
  %233 = load %struct.pkginfo*, %struct.pkginfo** %14, align 8, !dbg !1015
  %234 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %233, i32 0, i32 8, !dbg !1018
  %235 = call zeroext i1 @dpkg_version_is_informative(%struct.dpkg_version* %234), !dbg !1019
  br i1 %235, label %242, label %236, !dbg !1020

; <label>:236:                                    ; preds = %232
  %237 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i32 0, i32 0, !dbg !1021
  %238 = call i8* @gettext(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.17, i32 0, i32 0)) #8, !dbg !1023
  %239 = load %struct.pkginfo*, %struct.pkginfo** %14, align 8, !dbg !1024
  %240 = call i8* @pkg_name(%struct.pkginfo* %239, i32 1), !dbg !1025
  %241 = call i32 (i8*, i8*, ...) @sprintf(i8* %237, i8* %238, i8* %240) #8, !dbg !1026
  br label %291, !dbg !1028

; <label>:242:                                    ; preds = %232
  %243 = load %struct.pkginfo*, %struct.pkginfo** %14, align 8, !dbg !1029
  %244 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %243, i32 0, i32 9, !dbg !1031
  %245 = load %struct.deppossi*, %struct.deppossi** %12, align 8, !dbg !1032
  %246 = call zeroext i1 @versionsatisfied(%struct.pkgbin* %244, %struct.deppossi* %245), !dbg !1033
  br i1 %246, label %257, label %247, !dbg !1034

; <label>:247:                                    ; preds = %242
  %248 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i32 0, i32 0, !dbg !1035
  %249 = call i8* @gettext(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.18, i32 0, i32 0)) #8, !dbg !1037
  %250 = load %struct.pkginfo*, %struct.pkginfo** %14, align 8, !dbg !1038
  %251 = call i8* @pkg_name(%struct.pkginfo* %250, i32 1), !dbg !1039
  %252 = load %struct.pkginfo*, %struct.pkginfo** %14, align 8, !dbg !1040
  %253 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %252, i32 0, i32 9, !dbg !1041
  %254 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %253, i32 0, i32 11, !dbg !1042
  %255 = call i8* @versiondescribe(%struct.dpkg_version* %254, i32 1), !dbg !1043
  %256 = call i32 (i8*, i8*, ...) @sprintf(i8* %248, i8* %249, i8* %251, i8* %255) #8, !dbg !1044
  br label %291, !dbg !1046

; <label>:257:                                    ; preds = %242
  %258 = load %struct.pkginfo*, %struct.pkginfo** %14, align 8, !dbg !1047
  %259 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %258, i32 0, i32 8, !dbg !1049
  %260 = load %struct.deppossi*, %struct.deppossi** %12, align 8, !dbg !1050
  %261 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %260, i32 0, i32 7, !dbg !1051
  %262 = load i32, i32* %261, align 8, !dbg !1051
  %263 = load %struct.deppossi*, %struct.deppossi** %12, align 8, !dbg !1052
  %264 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %263, i32 0, i32 6, !dbg !1053
  %265 = call zeroext i1 @dpkg_version_relate(%struct.dpkg_version* %259, i32 %262, %struct.dpkg_version* %264), !dbg !1054
  br i1 %265, label %275, label %266, !dbg !1055

; <label>:266:                                    ; preds = %257
  %267 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i32 0, i32 0, !dbg !1056
  %268 = call i8* @gettext(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.19, i32 0, i32 0)) #8, !dbg !1058
  %269 = load %struct.pkginfo*, %struct.pkginfo** %14, align 8, !dbg !1059
  %270 = call i8* @pkg_name(%struct.pkginfo* %269, i32 1), !dbg !1060
  %271 = load %struct.pkginfo*, %struct.pkginfo** %14, align 8, !dbg !1061
  %272 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %271, i32 0, i32 8, !dbg !1062
  %273 = call i8* @versiondescribe(%struct.dpkg_version* %272, i32 1), !dbg !1063
  %274 = call i32 (i8*, i8*, ...) @sprintf(i8* %267, i8* %268, i8* %270, i8* %273) #8, !dbg !1064
  br label %291, !dbg !1066

; <label>:275:                                    ; preds = %257
  %276 = load %struct.deppossi_pkg_iterator*, %struct.deppossi_pkg_iterator** %17, align 8, !dbg !1067
  call void @deppossi_pkg_iter_free(%struct.deppossi_pkg_iterator* %276), !dbg !1069
  store i1 true, i1* %6, align 1, !dbg !1070
  br label %861, !dbg !1070

; <label>:277:                                    ; preds = %229
  br label %278, !dbg !1071

; <label>:278:                                    ; preds = %194, %277
  %279 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i32 0, i32 0, !dbg !1073
  %280 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0)) #8, !dbg !1074
  %281 = load %struct.pkginfo*, %struct.pkginfo** %14, align 8, !dbg !1075
  %282 = call i8* @pkg_name(%struct.pkginfo* %281, i32 1), !dbg !1076
  %283 = load %struct.pkginfo*, %struct.pkginfo** %14, align 8, !dbg !1077
  %284 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %283, i32 0, i32 4, !dbg !1078
  %285 = load i32, i32* %284, align 8, !dbg !1078
  %286 = zext i32 %285 to i64, !dbg !1079
  %287 = getelementptr inbounds [0 x i8*], [0 x i8*]* @statusstrings, i64 0, i64 %286, !dbg !1079
  %288 = load i8*, i8** %287, align 8, !dbg !1079
  %289 = call i8* @gettext(i8* %288) #8, !dbg !1080
  %290 = call i32 (i8*, i8*, ...) @sprintf(i8* %279, i8* %280, i8* %282, i8* %289) #8, !dbg !1081
  br label %291, !dbg !1082

; <label>:291:                                    ; preds = %278, %266, %247, %236, %215, %205
  br label %298, !dbg !1083

; <label>:292:                                    ; preds = %157
  %293 = load %struct.pkginfo*, %struct.pkginfo** %14, align 8, !dbg !1084
  %294 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %293, i32 0, i32 11, !dbg !1085
  %295 = load %struct.perpackagestate*, %struct.perpackagestate** %294, align 8, !dbg !1085
  %296 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %295, i32 0, i32 0, !dbg !1086
  %297 = load i32, i32* %296, align 8, !dbg !1086
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 465, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.depisok, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i32 0, i32 0), i32 %297) #7, !dbg !1087
  unreachable, !dbg !1087

; <label>:298:                                    ; preds = %291, %182, %169, %163
  %299 = load %struct.varbuf*, %struct.varbuf** %8, align 8, !dbg !1088
  %300 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i32 0, i32 0, !dbg !1089
  %301 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i32 0, i32 0, !dbg !1090
  %302 = call i64 @strlen(i8* %301) #9, !dbg !1091
  call void @varbuf_add_buf(%struct.varbuf* %299, i8* %300, i64 %302), !dbg !1092
  br label %153, !dbg !1094, !llvm.loop !1096

; <label>:303:                                    ; preds = %153
  %304 = load %struct.deppossi_pkg_iterator*, %struct.deppossi_pkg_iterator** %17, align 8, !dbg !1097
  call void @deppossi_pkg_iter_free(%struct.deppossi_pkg_iterator* %304), !dbg !1098
  %305 = load %struct.deppossi*, %struct.deppossi** %12, align 8, !dbg !1099
  %306 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %305, i32 0, i32 1, !dbg !1101
  %307 = load %struct.pkgset*, %struct.pkgset** %306, align 8, !dbg !1101
  %308 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %307, i32 0, i32 3, !dbg !1102
  %309 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %308, i32 0, i32 0, !dbg !1103
  %310 = load %struct.deppossi*, %struct.deppossi** %309, align 8, !dbg !1103
  store %struct.deppossi* %310, %struct.deppossi** %13, align 8, !dbg !1104
  br label %311, !dbg !1105

; <label>:311:                                    ; preds = %340, %303
  %312 = load %struct.deppossi*, %struct.deppossi** %13, align 8, !dbg !1106
  %313 = icmp ne %struct.deppossi* %312, null, !dbg !1108
  br i1 %313, label %314, label %344, !dbg !1108

; <label>:314:                                    ; preds = %311
  %315 = load %struct.deppossi*, %struct.deppossi** %13, align 8, !dbg !1110
  %316 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %315, i32 0, i32 0, !dbg !1113
  %317 = load %struct.dependency*, %struct.dependency** %316, align 8, !dbg !1113
  %318 = getelementptr inbounds %struct.dependency, %struct.dependency* %317, i32 0, i32 3, !dbg !1114
  %319 = load i32, i32* %318, align 8, !dbg !1114
  %320 = icmp ne i32 %319, 6, !dbg !1115
  br i1 %320, label %321, label %322, !dbg !1116

; <label>:321:                                    ; preds = %314
  br label %340, !dbg !1117

; <label>:322:                                    ; preds = %314
  %323 = load %struct.deppossi*, %struct.deppossi** %12, align 8, !dbg !1119
  %324 = load %struct.deppossi*, %struct.deppossi** %13, align 8, !dbg !1121
  %325 = call zeroext i1 @pkg_virtual_deppossi_satisfied(%struct.deppossi* %323, %struct.deppossi* %324), !dbg !1122
  br i1 %325, label %327, label %326, !dbg !1123

; <label>:326:                                    ; preds = %322
  br label %340, !dbg !1124

; <label>:327:                                    ; preds = %322
  %328 = load %struct.deppossi*, %struct.deppossi** %13, align 8, !dbg !1125
  %329 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %328, i32 0, i32 0, !dbg !1127
  %330 = load %struct.dependency*, %struct.dependency** %329, align 8, !dbg !1127
  %331 = getelementptr inbounds %struct.dependency, %struct.dependency* %330, i32 0, i32 0, !dbg !1128
  %332 = load %struct.pkginfo*, %struct.pkginfo** %331, align 8, !dbg !1128
  %333 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %332, i32 0, i32 11, !dbg !1129
  %334 = load %struct.perpackagestate*, %struct.perpackagestate** %333, align 8, !dbg !1129
  %335 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %334, i32 0, i32 0, !dbg !1130
  %336 = load i32, i32* %335, align 8, !dbg !1130
  %337 = icmp eq i32 %336, 2, !dbg !1131
  br i1 %337, label %338, label %339, !dbg !1132

; <label>:338:                                    ; preds = %327
  store i1 true, i1* %6, align 1, !dbg !1133
  br label %861, !dbg !1133

; <label>:339:                                    ; preds = %327
  br label %340, !dbg !1134

; <label>:340:                                    ; preds = %339, %326, %321
  %341 = load %struct.deppossi*, %struct.deppossi** %13, align 8, !dbg !1135
  %342 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %341, i32 0, i32 3, !dbg !1136
  %343 = load %struct.deppossi*, %struct.deppossi** %342, align 8, !dbg !1136
  store %struct.deppossi* %343, %struct.deppossi** %13, align 8, !dbg !1137
  br label %311, !dbg !1138, !llvm.loop !1140

; <label>:344:                                    ; preds = %311
  %345 = load %struct.deppossi*, %struct.deppossi** %12, align 8, !dbg !1142
  %346 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %345, i32 0, i32 1, !dbg !1144
  %347 = load %struct.pkgset*, %struct.pkgset** %346, align 8, !dbg !1144
  %348 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %347, i32 0, i32 3, !dbg !1145
  %349 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %348, i32 0, i32 1, !dbg !1146
  %350 = load %struct.deppossi*, %struct.deppossi** %349, align 8, !dbg !1146
  store %struct.deppossi* %350, %struct.deppossi** %13, align 8, !dbg !1147
  br label %351, !dbg !1148

; <label>:351:                                    ; preds = %484, %344
  %352 = load %struct.deppossi*, %struct.deppossi** %13, align 8, !dbg !1149
  %353 = icmp ne %struct.deppossi* %352, null, !dbg !1151
  br i1 %353, label %354, label %488, !dbg !1151

; <label>:354:                                    ; preds = %351
  %355 = load %struct.deppossi*, %struct.deppossi** %13, align 8, !dbg !1153
  %356 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %355, i32 0, i32 0, !dbg !1156
  %357 = load %struct.dependency*, %struct.dependency** %356, align 8, !dbg !1156
  %358 = getelementptr inbounds %struct.dependency, %struct.dependency* %357, i32 0, i32 3, !dbg !1157
  %359 = load i32, i32* %358, align 8, !dbg !1157
  %360 = icmp ne i32 %359, 6, !dbg !1158
  br i1 %360, label %361, label %362, !dbg !1159

; <label>:361:                                    ; preds = %354
  br label %484, !dbg !1160

; <label>:362:                                    ; preds = %354
  %363 = load %struct.deppossi*, %struct.deppossi** %12, align 8, !dbg !1162
  %364 = load %struct.deppossi*, %struct.deppossi** %13, align 8, !dbg !1164
  %365 = call zeroext i1 @pkg_virtual_deppossi_satisfied(%struct.deppossi* %363, %struct.deppossi* %364), !dbg !1165
  br i1 %365, label %367, label %366, !dbg !1166

; <label>:366:                                    ; preds = %362
  br label %484, !dbg !1167

; <label>:367:                                    ; preds = %362
  %368 = load %struct.deppossi*, %struct.deppossi** %13, align 8, !dbg !1168
  %369 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %368, i32 0, i32 0, !dbg !1169
  %370 = load %struct.dependency*, %struct.dependency** %369, align 8, !dbg !1169
  %371 = getelementptr inbounds %struct.dependency, %struct.dependency* %370, i32 0, i32 0, !dbg !1170
  %372 = load %struct.pkginfo*, %struct.pkginfo** %371, align 8, !dbg !1170
  %373 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %372, i32 0, i32 11, !dbg !1171
  %374 = load %struct.perpackagestate*, %struct.perpackagestate** %373, align 8, !dbg !1171
  %375 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %374, i32 0, i32 0, !dbg !1172
  %376 = load i32, i32* %375, align 8, !dbg !1172
  switch i32 %376, label %469 [
    i32 2, label %377
    i32 1, label %378
    i32 3, label %393
    i32 0, label %408
    i32 4, label %408
  ], !dbg !1173

; <label>:377:                                    ; preds = %367
  br label %484, !dbg !1174

; <label>:378:                                    ; preds = %367
  %379 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i32 0, i32 0, !dbg !1176
  %380 = call i8* @gettext(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.22, i32 0, i32 0)) #8, !dbg !1177
  %381 = load %struct.deppossi*, %struct.deppossi** %13, align 8, !dbg !1178
  %382 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %381, i32 0, i32 0, !dbg !1179
  %383 = load %struct.dependency*, %struct.dependency** %382, align 8, !dbg !1179
  %384 = getelementptr inbounds %struct.dependency, %struct.dependency* %383, i32 0, i32 0, !dbg !1180
  %385 = load %struct.pkginfo*, %struct.pkginfo** %384, align 8, !dbg !1180
  %386 = call i8* @pkg_name(%struct.pkginfo* %385, i32 1), !dbg !1181
  %387 = load %struct.deppossi*, %struct.deppossi** %12, align 8, !dbg !1182
  %388 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %387, i32 0, i32 1, !dbg !1183
  %389 = load %struct.pkgset*, %struct.pkgset** %388, align 8, !dbg !1183
  %390 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %389, i32 0, i32 1, !dbg !1184
  %391 = load i8*, i8** %390, align 8, !dbg !1184
  %392 = call i32 (i8*, i8*, ...) @sprintf(i8* %379, i8* %380, i8* %386, i8* %391) #8, !dbg !1185
  br label %479, !dbg !1187

; <label>:393:                                    ; preds = %367
  %394 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i32 0, i32 0, !dbg !1188
  %395 = call i8* @gettext(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.23, i32 0, i32 0)) #8, !dbg !1189
  %396 = load %struct.deppossi*, %struct.deppossi** %13, align 8, !dbg !1190
  %397 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %396, i32 0, i32 0, !dbg !1191
  %398 = load %struct.dependency*, %struct.dependency** %397, align 8, !dbg !1191
  %399 = getelementptr inbounds %struct.dependency, %struct.dependency* %398, i32 0, i32 0, !dbg !1192
  %400 = load %struct.pkginfo*, %struct.pkginfo** %399, align 8, !dbg !1192
  %401 = call i8* @pkg_name(%struct.pkginfo* %400, i32 1), !dbg !1193
  %402 = load %struct.deppossi*, %struct.deppossi** %12, align 8, !dbg !1194
  %403 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %402, i32 0, i32 1, !dbg !1195
  %404 = load %struct.pkgset*, %struct.pkgset** %403, align 8, !dbg !1195
  %405 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %404, i32 0, i32 1, !dbg !1196
  %406 = load i8*, i8** %405, align 8, !dbg !1196
  %407 = call i32 (i8*, i8*, ...) @sprintf(i8* %394, i8* %395, i8* %401, i8* %406) #8, !dbg !1197
  br label %479, !dbg !1198

; <label>:408:                                    ; preds = %367, %367
  %409 = load %struct.deppossi*, %struct.deppossi** %13, align 8, !dbg !1199
  %410 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %409, i32 0, i32 0, !dbg !1201
  %411 = load %struct.dependency*, %struct.dependency** %410, align 8, !dbg !1201
  %412 = getelementptr inbounds %struct.dependency, %struct.dependency* %411, i32 0, i32 0, !dbg !1202
  %413 = load %struct.pkginfo*, %struct.pkginfo** %412, align 8, !dbg !1202
  %414 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %413, i32 0, i32 4, !dbg !1203
  %415 = load i32, i32* %414, align 8, !dbg !1203
  %416 = icmp eq i32 %415, 7, !dbg !1204
  br i1 %416, label %426, label %417, !dbg !1205

; <label>:417:                                    ; preds = %408
  %418 = load %struct.deppossi*, %struct.deppossi** %13, align 8, !dbg !1206
  %419 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %418, i32 0, i32 0, !dbg !1207
  %420 = load %struct.dependency*, %struct.dependency** %419, align 8, !dbg !1207
  %421 = getelementptr inbounds %struct.dependency, %struct.dependency* %420, i32 0, i32 0, !dbg !1208
  %422 = load %struct.pkginfo*, %struct.pkginfo** %421, align 8, !dbg !1208
  %423 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %422, i32 0, i32 4, !dbg !1209
  %424 = load i32, i32* %423, align 8, !dbg !1209
  %425 = icmp eq i32 %424, 6, !dbg !1210
  br i1 %425, label %426, label %427, !dbg !1211

; <label>:426:                                    ; preds = %417, %408
  store i1 true, i1* %6, align 1, !dbg !1212
  br label %861, !dbg !1212

; <label>:427:                                    ; preds = %417
  %428 = load %struct.deppossi*, %struct.deppossi** %13, align 8, !dbg !1213
  %429 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %428, i32 0, i32 0, !dbg !1215
  %430 = load %struct.dependency*, %struct.dependency** %429, align 8, !dbg !1215
  %431 = getelementptr inbounds %struct.dependency, %struct.dependency* %430, i32 0, i32 0, !dbg !1216
  %432 = load %struct.pkginfo*, %struct.pkginfo** %431, align 8, !dbg !1216
  %433 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %432, i32 0, i32 4, !dbg !1217
  %434 = load i32, i32* %433, align 8, !dbg !1217
  %435 = icmp eq i32 %434, 5, !dbg !1218
  br i1 %435, label %436, label %443, !dbg !1219

; <label>:436:                                    ; preds = %427
  %437 = load %struct.deppossi*, %struct.deppossi** %13, align 8, !dbg !1220
  %438 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %437, i32 0, i32 0, !dbg !1221
  %439 = load %struct.dependency*, %struct.dependency** %438, align 8, !dbg !1221
  %440 = getelementptr inbounds %struct.dependency, %struct.dependency* %439, i32 0, i32 0, !dbg !1222
  %441 = load %struct.pkginfo*, %struct.pkginfo** %440, align 8, !dbg !1222
  %442 = load %struct.pkginfo**, %struct.pkginfo*** %10, align 8, !dbg !1223
  store %struct.pkginfo* %441, %struct.pkginfo** %442, align 8, !dbg !1224
  br label %443, !dbg !1225

; <label>:443:                                    ; preds = %436, %427
  %444 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i32 0, i32 0, !dbg !1226
  %445 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.24, i32 0, i32 0)) #8, !dbg !1227
  %446 = load %struct.deppossi*, %struct.deppossi** %13, align 8, !dbg !1228
  %447 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %446, i32 0, i32 0, !dbg !1229
  %448 = load %struct.dependency*, %struct.dependency** %447, align 8, !dbg !1229
  %449 = getelementptr inbounds %struct.dependency, %struct.dependency* %448, i32 0, i32 0, !dbg !1230
  %450 = load %struct.pkginfo*, %struct.pkginfo** %449, align 8, !dbg !1230
  %451 = call i8* @pkg_name(%struct.pkginfo* %450, i32 1), !dbg !1231
  %452 = load %struct.deppossi*, %struct.deppossi** %12, align 8, !dbg !1232
  %453 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %452, i32 0, i32 1, !dbg !1233
  %454 = load %struct.pkgset*, %struct.pkgset** %453, align 8, !dbg !1233
  %455 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %454, i32 0, i32 1, !dbg !1234
  %456 = load i8*, i8** %455, align 8, !dbg !1234
  %457 = load %struct.deppossi*, %struct.deppossi** %13, align 8, !dbg !1235
  %458 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %457, i32 0, i32 0, !dbg !1236
  %459 = load %struct.dependency*, %struct.dependency** %458, align 8, !dbg !1236
  %460 = getelementptr inbounds %struct.dependency, %struct.dependency* %459, i32 0, i32 0, !dbg !1237
  %461 = load %struct.pkginfo*, %struct.pkginfo** %460, align 8, !dbg !1237
  %462 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %461, i32 0, i32 4, !dbg !1238
  %463 = load i32, i32* %462, align 8, !dbg !1238
  %464 = zext i32 %463 to i64, !dbg !1239
  %465 = getelementptr inbounds [0 x i8*], [0 x i8*]* @statusstrings, i64 0, i64 %464, !dbg !1239
  %466 = load i8*, i8** %465, align 8, !dbg !1239
  %467 = call i8* @gettext(i8* %466) #8, !dbg !1240
  %468 = call i32 (i8*, i8*, ...) @sprintf(i8* %444, i8* %445, i8* %451, i8* %456, i8* %467) #8, !dbg !1241
  br label %479, !dbg !1242

; <label>:469:                                    ; preds = %367
  %470 = load %struct.deppossi*, %struct.deppossi** %13, align 8, !dbg !1243
  %471 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %470, i32 0, i32 0, !dbg !1244
  %472 = load %struct.dependency*, %struct.dependency** %471, align 8, !dbg !1244
  %473 = getelementptr inbounds %struct.dependency, %struct.dependency* %472, i32 0, i32 0, !dbg !1245
  %474 = load %struct.pkginfo*, %struct.pkginfo** %473, align 8, !dbg !1245
  %475 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %474, i32 0, i32 11, !dbg !1246
  %476 = load %struct.perpackagestate*, %struct.perpackagestate** %475, align 8, !dbg !1246
  %477 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %476, i32 0, i32 0, !dbg !1247
  %478 = load i32, i32* %477, align 8, !dbg !1247
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 521, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.depisok, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.25, i32 0, i32 0), i32 %478) #7, !dbg !1248
  unreachable, !dbg !1248

; <label>:479:                                    ; preds = %443, %393, %378
  %480 = load %struct.varbuf*, %struct.varbuf** %8, align 8, !dbg !1249
  %481 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i32 0, i32 0, !dbg !1250
  %482 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i32 0, i32 0, !dbg !1251
  %483 = call i64 @strlen(i8* %482) #9, !dbg !1252
  call void @varbuf_add_buf(%struct.varbuf* %480, i8* %481, i64 %483), !dbg !1253
  br label %484, !dbg !1255

; <label>:484:                                    ; preds = %479, %377, %366, %361
  %485 = load %struct.deppossi*, %struct.deppossi** %13, align 8, !dbg !1256
  %486 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %485, i32 0, i32 3, !dbg !1257
  %487 = load %struct.deppossi*, %struct.deppossi** %486, align 8, !dbg !1257
  store %struct.deppossi* %487, %struct.deppossi** %13, align 8, !dbg !1258
  br label %351, !dbg !1259, !llvm.loop !1261

; <label>:488:                                    ; preds = %351
  %489 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i32 0, i32 0, !dbg !1263
  %490 = load i8, i8* %489, align 16, !dbg !1263
  %491 = icmp ne i8 %490, 0, !dbg !1263
  br i1 %491, label %505, label %492, !dbg !1265

; <label>:492:                                    ; preds = %488
  %493 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i32 0, i32 0, !dbg !1266
  %494 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.26, i32 0, i32 0)) #8, !dbg !1268
  %495 = load %struct.deppossi*, %struct.deppossi** %12, align 8, !dbg !1269
  %496 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %495, i32 0, i32 1, !dbg !1270
  %497 = load %struct.pkgset*, %struct.pkgset** %496, align 8, !dbg !1270
  %498 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %497, i32 0, i32 1, !dbg !1271
  %499 = load i8*, i8** %498, align 8, !dbg !1271
  %500 = call i32 (i8*, i8*, ...) @sprintf(i8* %493, i8* %494, i8* %499) #8, !dbg !1272
  %501 = load %struct.varbuf*, %struct.varbuf** %8, align 8, !dbg !1274
  %502 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i32 0, i32 0, !dbg !1275
  %503 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i32 0, i32 0, !dbg !1276
  %504 = call i64 @strlen(i8* %503) #9, !dbg !1277
  call void @varbuf_add_buf(%struct.varbuf* %501, i8* %502, i64 %504), !dbg !1278
  br label %505, !dbg !1279

; <label>:505:                                    ; preds = %492, %488
  br label %506, !dbg !1280

; <label>:506:                                    ; preds = %505
  %507 = load %struct.deppossi*, %struct.deppossi** %12, align 8, !dbg !1281
  %508 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %507, i32 0, i32 2, !dbg !1283
  %509 = load %struct.deppossi*, %struct.deppossi** %508, align 8, !dbg !1283
  store %struct.deppossi* %509, %struct.deppossi** %12, align 8, !dbg !1284
  br label %147, !dbg !1285, !llvm.loop !1286

; <label>:510:                                    ; preds = %147
  store i1 false, i1* %6, align 1, !dbg !1288
  br label %861, !dbg !1288

; <label>:511:                                    ; preds = %138
  %512 = load %struct.dependency*, %struct.dependency** %7, align 8, !dbg !1289
  %513 = getelementptr inbounds %struct.dependency, %struct.dependency* %512, i32 0, i32 2, !dbg !1291
  %514 = load %struct.deppossi*, %struct.deppossi** %513, align 8, !dbg !1291
  store %struct.deppossi* %514, %struct.deppossi** %12, align 8, !dbg !1292
  store i32 0, i32* %15, align 4, !dbg !1293
  %515 = load %struct.deppossi*, %struct.deppossi** %12, align 8, !dbg !1294
  %516 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %515, i32 0, i32 1, !dbg !1296
  %517 = load %struct.pkgset*, %struct.pkgset** %516, align 8, !dbg !1296
  %518 = load %struct.deppossi*, %struct.deppossi** %12, align 8, !dbg !1297
  %519 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %518, i32 0, i32 0, !dbg !1298
  %520 = load %struct.dependency*, %struct.dependency** %519, align 8, !dbg !1298
  %521 = getelementptr inbounds %struct.dependency, %struct.dependency* %520, i32 0, i32 0, !dbg !1299
  %522 = load %struct.pkginfo*, %struct.pkginfo** %521, align 8, !dbg !1299
  %523 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %522, i32 0, i32 0, !dbg !1300
  %524 = load %struct.pkgset*, %struct.pkgset** %523, align 8, !dbg !1300
  %525 = icmp ne %struct.pkgset* %517, %524, !dbg !1301
  br i1 %525, label %526, label %636, !dbg !1302

; <label>:526:                                    ; preds = %511
  call void @llvm.dbg.declare(metadata %struct.deppossi_pkg_iterator** %18, metadata !1303, metadata !350), !dbg !1305
  %527 = load %struct.deppossi*, %struct.deppossi** %12, align 8, !dbg !1306
  %528 = call %struct.deppossi_pkg_iterator* @deppossi_pkg_iter_new(%struct.deppossi* %527, i32 2), !dbg !1307
  store %struct.deppossi_pkg_iterator* %528, %struct.deppossi_pkg_iterator** %18, align 8, !dbg !1308
  br label %529, !dbg !1309

; <label>:529:                                    ; preds = %633, %526
  %530 = load %struct.deppossi_pkg_iterator*, %struct.deppossi_pkg_iterator** %18, align 8, !dbg !1310
  %531 = call %struct.pkginfo* @deppossi_pkg_iter_next(%struct.deppossi_pkg_iterator* %530), !dbg !1312
  store %struct.pkginfo* %531, %struct.pkginfo** %14, align 8, !dbg !1313
  %532 = icmp ne %struct.pkginfo* %531, null, !dbg !1314
  br i1 %532, label %533, label %634, !dbg !1314

; <label>:533:                                    ; preds = %529
  %534 = load %struct.pkginfo*, %struct.pkginfo** %14, align 8, !dbg !1315
  %535 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %534, i32 0, i32 11, !dbg !1317
  %536 = load %struct.perpackagestate*, %struct.perpackagestate** %535, align 8, !dbg !1317
  %537 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %536, i32 0, i32 0, !dbg !1318
  %538 = load i32, i32* %537, align 8, !dbg !1318
  switch i32 %538, label %627 [
    i32 1, label %539
    i32 2, label %540
    i32 3, label %571
    i32 0, label %578
    i32 4, label %578
  ], !dbg !1319

; <label>:539:                                    ; preds = %533
  br label %633, !dbg !1320

; <label>:540:                                    ; preds = %533
  %541 = load %struct.pkginfo*, %struct.pkginfo** %14, align 8, !dbg !1322
  %542 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %541, i32 0, i32 10, !dbg !1324
  %543 = load %struct.deppossi*, %struct.deppossi** %12, align 8, !dbg !1325
  %544 = call zeroext i1 @versionsatisfied(%struct.pkgbin* %542, %struct.deppossi* %543), !dbg !1326
  br i1 %544, label %546, label %545, !dbg !1327

; <label>:545:                                    ; preds = %540
  br label %633, !dbg !1328

; <label>:546:                                    ; preds = %540
  %547 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i32 0, i32 0, !dbg !1329
  %548 = call i8* @gettext(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.27, i32 0, i32 0)) #8, !dbg !1330
  %549 = load %struct.pkginfo*, %struct.pkginfo** %14, align 8, !dbg !1331
  %550 = load %struct.pkginfo*, %struct.pkginfo** %14, align 8, !dbg !1332
  %551 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %550, i32 0, i32 10, !dbg !1333
  %552 = call i8* @pkgbin_name(%struct.pkginfo* %549, %struct.pkgbin* %551, i32 1), !dbg !1334
  %553 = load %struct.pkginfo*, %struct.pkginfo** %14, align 8, !dbg !1335
  %554 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %553, i32 0, i32 10, !dbg !1336
  %555 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %554, i32 0, i32 11, !dbg !1337
  %556 = call i8* @versiondescribe(%struct.dpkg_version* %555, i32 1), !dbg !1338
  %557 = call i32 (i8*, i8*, ...) @sprintf(i8* %547, i8* %548, i8* %552, i8* %556) #8, !dbg !1339
  %558 = load %struct.varbuf*, %struct.varbuf** %8, align 8, !dbg !1341
  %559 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i32 0, i32 0, !dbg !1342
  %560 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i32 0, i32 0, !dbg !1343
  %561 = call i64 @strlen(i8* %560) #9, !dbg !1344
  call void @varbuf_add_buf(%struct.varbuf* %558, i8* %559, i64 %561), !dbg !1345
  %562 = load %struct.pkginfo**, %struct.pkginfo*** %9, align 8, !dbg !1346
  %563 = icmp ne %struct.pkginfo** %562, null, !dbg !1346
  br i1 %563, label %566, label %564, !dbg !1348

; <label>:564:                                    ; preds = %546
  %565 = load %struct.deppossi_pkg_iterator*, %struct.deppossi_pkg_iterator** %18, align 8, !dbg !1349
  call void @deppossi_pkg_iter_free(%struct.deppossi_pkg_iterator* %565), !dbg !1351
  store i1 false, i1* %6, align 1, !dbg !1352
  br label %861, !dbg !1352

; <label>:566:                                    ; preds = %546
  %567 = load i32, i32* %15, align 4, !dbg !1353
  %568 = add nsw i32 %567, 1, !dbg !1353
  store i32 %568, i32* %15, align 4, !dbg !1353
  %569 = load %struct.pkginfo*, %struct.pkginfo** %14, align 8, !dbg !1354
  %570 = load %struct.pkginfo**, %struct.pkginfo*** %9, align 8, !dbg !1355
  store %struct.pkginfo* %569, %struct.pkginfo** %570, align 8, !dbg !1356
  br label %633, !dbg !1357

; <label>:571:                                    ; preds = %533
  %572 = load %struct.dependency*, %struct.dependency** %7, align 8, !dbg !1358
  %573 = getelementptr inbounds %struct.dependency, %struct.dependency* %572, i32 0, i32 3, !dbg !1360
  %574 = load i32, i32* %573, align 8, !dbg !1360
  %575 = icmp eq i32 %574, 4, !dbg !1361
  br i1 %575, label %576, label %577, !dbg !1362

; <label>:576:                                    ; preds = %571
  br label %633, !dbg !1363

; <label>:577:                                    ; preds = %571
  br label %578, !dbg !1364

; <label>:578:                                    ; preds = %533, %533, %577
  %579 = load %struct.pkginfo*, %struct.pkginfo** %14, align 8, !dbg !1366
  %580 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %579, i32 0, i32 4, !dbg !1367
  %581 = load i32, i32* %580, align 8, !dbg !1367
  switch i32 %581, label %626 [
    i32 0, label %582
    i32 1, label %582
    i32 2, label %583
    i32 3, label %583
    i32 4, label %583
    i32 7, label %590
    i32 6, label %590
    i32 5, label %590
  ], !dbg !1368

; <label>:582:                                    ; preds = %578, %578
  br label %626, !dbg !1369

; <label>:583:                                    ; preds = %578, %578, %578
  %584 = load %struct.dependency*, %struct.dependency** %7, align 8, !dbg !1371
  %585 = getelementptr inbounds %struct.dependency, %struct.dependency* %584, i32 0, i32 3, !dbg !1373
  %586 = load i32, i32* %585, align 8, !dbg !1373
  %587 = icmp eq i32 %586, 4, !dbg !1374
  br i1 %587, label %588, label %589, !dbg !1375

; <label>:588:                                    ; preds = %583
  br label %626, !dbg !1376

; <label>:589:                                    ; preds = %583
  br label %590, !dbg !1377

; <label>:590:                                    ; preds = %578, %578, %578, %589
  %591 = load %struct.pkginfo*, %struct.pkginfo** %14, align 8, !dbg !1379
  %592 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %591, i32 0, i32 9, !dbg !1381
  %593 = load %struct.deppossi*, %struct.deppossi** %12, align 8, !dbg !1382
  %594 = call zeroext i1 @versionsatisfied(%struct.pkgbin* %592, %struct.deppossi* %593), !dbg !1383
  br i1 %594, label %596, label %595, !dbg !1384

; <label>:595:                                    ; preds = %590
  br label %626, !dbg !1385

; <label>:596:                                    ; preds = %590
  %597 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i32 0, i32 0, !dbg !1386
  %598 = call i8* @gettext(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.28, i32 0, i32 0)) #8, !dbg !1387
  %599 = load %struct.pkginfo*, %struct.pkginfo** %14, align 8, !dbg !1388
  %600 = call i8* @pkg_name(%struct.pkginfo* %599, i32 1), !dbg !1389
  %601 = load %struct.pkginfo*, %struct.pkginfo** %14, align 8, !dbg !1390
  %602 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %601, i32 0, i32 9, !dbg !1391
  %603 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %602, i32 0, i32 11, !dbg !1392
  %604 = call i8* @versiondescribe(%struct.dpkg_version* %603, i32 1), !dbg !1393
  %605 = load %struct.pkginfo*, %struct.pkginfo** %14, align 8, !dbg !1394
  %606 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %605, i32 0, i32 4, !dbg !1395
  %607 = load i32, i32* %606, align 8, !dbg !1395
  %608 = zext i32 %607 to i64, !dbg !1396
  %609 = getelementptr inbounds [0 x i8*], [0 x i8*]* @statusstrings, i64 0, i64 %608, !dbg !1396
  %610 = load i8*, i8** %609, align 8, !dbg !1396
  %611 = call i8* @gettext(i8* %610) #8, !dbg !1397
  %612 = call i32 (i8*, i8*, ...) @sprintf(i8* %597, i8* %598, i8* %600, i8* %604, i8* %611) #8, !dbg !1398
  %613 = load %struct.varbuf*, %struct.varbuf** %8, align 8, !dbg !1400
  %614 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i32 0, i32 0, !dbg !1401
  %615 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i32 0, i32 0, !dbg !1402
  %616 = call i64 @strlen(i8* %615) #9, !dbg !1403
  call void @varbuf_add_buf(%struct.varbuf* %613, i8* %614, i64 %616), !dbg !1404
  %617 = load %struct.pkginfo**, %struct.pkginfo*** %9, align 8, !dbg !1405
  %618 = icmp ne %struct.pkginfo** %617, null, !dbg !1405
  br i1 %618, label %621, label %619, !dbg !1407

; <label>:619:                                    ; preds = %596
  %620 = load %struct.deppossi_pkg_iterator*, %struct.deppossi_pkg_iterator** %18, align 8, !dbg !1408
  call void @deppossi_pkg_iter_free(%struct.deppossi_pkg_iterator* %620), !dbg !1410
  store i1 false, i1* %6, align 1, !dbg !1411
  br label %861, !dbg !1411

; <label>:621:                                    ; preds = %596
  %622 = load i32, i32* %15, align 4, !dbg !1412
  %623 = add nsw i32 %622, 1, !dbg !1412
  store i32 %623, i32* %15, align 4, !dbg !1412
  %624 = load %struct.pkginfo*, %struct.pkginfo** %14, align 8, !dbg !1413
  %625 = load %struct.pkginfo**, %struct.pkginfo*** %9, align 8, !dbg !1414
  store %struct.pkginfo* %624, %struct.pkginfo** %625, align 8, !dbg !1415
  br label %626, !dbg !1416

; <label>:626:                                    ; preds = %621, %578, %595, %588, %582
  br label %633, !dbg !1417

; <label>:627:                                    ; preds = %533
  %628 = load %struct.pkginfo*, %struct.pkginfo** %14, align 8, !dbg !1418
  %629 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %628, i32 0, i32 11, !dbg !1419
  %630 = load %struct.perpackagestate*, %struct.perpackagestate** %629, align 8, !dbg !1419
  %631 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %630, i32 0, i32 0, !dbg !1420
  %632 = load i32, i32* %631, align 8, !dbg !1420
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 607, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.depisok, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.29, i32 0, i32 0), i32 %632) #7, !dbg !1421
  unreachable, !dbg !1421

; <label>:633:                                    ; preds = %626, %576, %566, %545, %539
  br label %529, !dbg !1422, !llvm.loop !1424

; <label>:634:                                    ; preds = %529
  %635 = load %struct.deppossi_pkg_iterator*, %struct.deppossi_pkg_iterator** %18, align 8, !dbg !1425
  call void @deppossi_pkg_iter_free(%struct.deppossi_pkg_iterator* %635), !dbg !1426
  br label %636, !dbg !1427

; <label>:636:                                    ; preds = %634, %511
  %637 = load %struct.deppossi*, %struct.deppossi** %12, align 8, !dbg !1428
  %638 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %637, i32 0, i32 1, !dbg !1430
  %639 = load %struct.pkgset*, %struct.pkgset** %638, align 8, !dbg !1430
  %640 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %639, i32 0, i32 3, !dbg !1431
  %641 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %640, i32 0, i32 0, !dbg !1432
  %642 = load %struct.deppossi*, %struct.deppossi** %641, align 8, !dbg !1432
  store %struct.deppossi* %642, %struct.deppossi** %13, align 8, !dbg !1433
  br label %643, !dbg !1434

; <label>:643:                                    ; preds = %716, %636
  %644 = load %struct.deppossi*, %struct.deppossi** %13, align 8, !dbg !1435
  %645 = icmp ne %struct.deppossi* %644, null, !dbg !1437
  br i1 %645, label %646, label %720, !dbg !1437

; <label>:646:                                    ; preds = %643
  %647 = load %struct.deppossi*, %struct.deppossi** %13, align 8, !dbg !1439
  %648 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %647, i32 0, i32 0, !dbg !1442
  %649 = load %struct.dependency*, %struct.dependency** %648, align 8, !dbg !1442
  %650 = getelementptr inbounds %struct.dependency, %struct.dependency* %649, i32 0, i32 3, !dbg !1443
  %651 = load i32, i32* %650, align 8, !dbg !1443
  %652 = icmp ne i32 %651, 6, !dbg !1444
  br i1 %652, label %653, label %654, !dbg !1445

; <label>:653:                                    ; preds = %646
  br label %716, !dbg !1446

; <label>:654:                                    ; preds = %646
  %655 = load %struct.deppossi*, %struct.deppossi** %13, align 8, !dbg !1448
  %656 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %655, i32 0, i32 0, !dbg !1450
  %657 = load %struct.dependency*, %struct.dependency** %656, align 8, !dbg !1450
  %658 = getelementptr inbounds %struct.dependency, %struct.dependency* %657, i32 0, i32 0, !dbg !1451
  %659 = load %struct.pkginfo*, %struct.pkginfo** %658, align 8, !dbg !1451
  %660 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %659, i32 0, i32 11, !dbg !1452
  %661 = load %struct.perpackagestate*, %struct.perpackagestate** %660, align 8, !dbg !1452
  %662 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %661, i32 0, i32 0, !dbg !1453
  %663 = load i32, i32* %662, align 8, !dbg !1453
  %664 = icmp ne i32 %663, 2, !dbg !1454
  br i1 %664, label %665, label %666, !dbg !1455

; <label>:665:                                    ; preds = %654
  br label %716, !dbg !1456

; <label>:666:                                    ; preds = %654
  %667 = load %struct.deppossi*, %struct.deppossi** %13, align 8, !dbg !1457
  %668 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %667, i32 0, i32 0, !dbg !1459
  %669 = load %struct.dependency*, %struct.dependency** %668, align 8, !dbg !1459
  %670 = getelementptr inbounds %struct.dependency, %struct.dependency* %669, i32 0, i32 0, !dbg !1460
  %671 = load %struct.pkginfo*, %struct.pkginfo** %670, align 8, !dbg !1460
  %672 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %671, i32 0, i32 0, !dbg !1461
  %673 = load %struct.pkgset*, %struct.pkgset** %672, align 8, !dbg !1461
  %674 = load %struct.dependency*, %struct.dependency** %7, align 8, !dbg !1462
  %675 = getelementptr inbounds %struct.dependency, %struct.dependency* %674, i32 0, i32 0, !dbg !1463
  %676 = load %struct.pkginfo*, %struct.pkginfo** %675, align 8, !dbg !1463
  %677 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %676, i32 0, i32 0, !dbg !1464
  %678 = load %struct.pkgset*, %struct.pkgset** %677, align 8, !dbg !1464
  %679 = icmp eq %struct.pkgset* %673, %678, !dbg !1465
  br i1 %679, label %680, label %681, !dbg !1466

; <label>:680:                                    ; preds = %666
  br label %716, !dbg !1467

; <label>:681:                                    ; preds = %666
  %682 = load %struct.deppossi*, %struct.deppossi** %12, align 8, !dbg !1468
  %683 = load %struct.deppossi*, %struct.deppossi** %13, align 8, !dbg !1470
  %684 = call zeroext i1 @pkg_virtual_deppossi_satisfied(%struct.deppossi* %682, %struct.deppossi* %683), !dbg !1471
  br i1 %684, label %686, label %685, !dbg !1472

; <label>:685:                                    ; preds = %681
  br label %716, !dbg !1473

; <label>:686:                                    ; preds = %681
  %687 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i32 0, i32 0, !dbg !1474
  %688 = call i8* @gettext(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.30, i32 0, i32 0)) #8, !dbg !1475
  %689 = load %struct.deppossi*, %struct.deppossi** %13, align 8, !dbg !1476
  %690 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %689, i32 0, i32 0, !dbg !1477
  %691 = load %struct.dependency*, %struct.dependency** %690, align 8, !dbg !1477
  %692 = getelementptr inbounds %struct.dependency, %struct.dependency* %691, i32 0, i32 0, !dbg !1478
  %693 = load %struct.pkginfo*, %struct.pkginfo** %692, align 8, !dbg !1478
  %694 = load %struct.deppossi*, %struct.deppossi** %13, align 8, !dbg !1479
  %695 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %694, i32 0, i32 0, !dbg !1480
  %696 = load %struct.dependency*, %struct.dependency** %695, align 8, !dbg !1480
  %697 = getelementptr inbounds %struct.dependency, %struct.dependency* %696, i32 0, i32 0, !dbg !1481
  %698 = load %struct.pkginfo*, %struct.pkginfo** %697, align 8, !dbg !1481
  %699 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %698, i32 0, i32 10, !dbg !1482
  %700 = call i8* @pkgbin_name(%struct.pkginfo* %693, %struct.pkgbin* %699, i32 1), !dbg !1483
  %701 = load %struct.deppossi*, %struct.deppossi** %12, align 8, !dbg !1484
  %702 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %701, i32 0, i32 1, !dbg !1485
  %703 = load %struct.pkgset*, %struct.pkgset** %702, align 8, !dbg !1485
  %704 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %703, i32 0, i32 1, !dbg !1486
  %705 = load i8*, i8** %704, align 8, !dbg !1486
  %706 = call i32 (i8*, i8*, ...) @sprintf(i8* %687, i8* %688, i8* %700, i8* %705) #8, !dbg !1487
  %707 = load %struct.varbuf*, %struct.varbuf** %8, align 8, !dbg !1489
  %708 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i32 0, i32 0, !dbg !1490
  %709 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i32 0, i32 0, !dbg !1491
  %710 = call i64 @strlen(i8* %709) #9, !dbg !1492
  call void @varbuf_add_buf(%struct.varbuf* %707, i8* %708, i64 %710), !dbg !1493
  %711 = load %struct.pkginfo**, %struct.pkginfo*** %9, align 8, !dbg !1494
  %712 = icmp ne %struct.pkginfo** %711, null, !dbg !1494
  br i1 %712, label %713, label %715, !dbg !1496

; <label>:713:                                    ; preds = %686
  %714 = load %struct.pkginfo**, %struct.pkginfo*** %9, align 8, !dbg !1497
  store %struct.pkginfo* null, %struct.pkginfo** %714, align 8, !dbg !1498
  br label %715, !dbg !1499

; <label>:715:                                    ; preds = %713, %686
  store i1 false, i1* %6, align 1, !dbg !1500
  br label %861, !dbg !1500

; <label>:716:                                    ; preds = %685, %680, %665, %653
  %717 = load %struct.deppossi*, %struct.deppossi** %13, align 8, !dbg !1501
  %718 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %717, i32 0, i32 3, !dbg !1502
  %719 = load %struct.deppossi*, %struct.deppossi** %718, align 8, !dbg !1502
  store %struct.deppossi* %719, %struct.deppossi** %13, align 8, !dbg !1503
  br label %643, !dbg !1504, !llvm.loop !1506

; <label>:720:                                    ; preds = %643
  %721 = load %struct.deppossi*, %struct.deppossi** %12, align 8, !dbg !1508
  %722 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %721, i32 0, i32 1, !dbg !1510
  %723 = load %struct.pkgset*, %struct.pkgset** %722, align 8, !dbg !1510
  %724 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %723, i32 0, i32 3, !dbg !1511
  %725 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %724, i32 0, i32 1, !dbg !1512
  %726 = load %struct.deppossi*, %struct.deppossi** %725, align 8, !dbg !1512
  store %struct.deppossi* %726, %struct.deppossi** %13, align 8, !dbg !1513
  br label %727, !dbg !1514

; <label>:727:                                    ; preds = %847, %720
  %728 = load %struct.deppossi*, %struct.deppossi** %13, align 8, !dbg !1515
  %729 = icmp ne %struct.deppossi* %728, null, !dbg !1517
  br i1 %729, label %730, label %851, !dbg !1517

; <label>:730:                                    ; preds = %727
  %731 = load %struct.deppossi*, %struct.deppossi** %13, align 8, !dbg !1519
  %732 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %731, i32 0, i32 0, !dbg !1522
  %733 = load %struct.dependency*, %struct.dependency** %732, align 8, !dbg !1522
  %734 = getelementptr inbounds %struct.dependency, %struct.dependency* %733, i32 0, i32 3, !dbg !1523
  %735 = load i32, i32* %734, align 8, !dbg !1523
  %736 = icmp ne i32 %735, 6, !dbg !1524
  br i1 %736, label %737, label %738, !dbg !1525

; <label>:737:                                    ; preds = %730
  br label %847, !dbg !1526

; <label>:738:                                    ; preds = %730
  %739 = load %struct.deppossi*, %struct.deppossi** %13, align 8, !dbg !1528
  %740 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %739, i32 0, i32 0, !dbg !1530
  %741 = load %struct.dependency*, %struct.dependency** %740, align 8, !dbg !1530
  %742 = getelementptr inbounds %struct.dependency, %struct.dependency* %741, i32 0, i32 0, !dbg !1531
  %743 = load %struct.pkginfo*, %struct.pkginfo** %742, align 8, !dbg !1531
  %744 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %743, i32 0, i32 0, !dbg !1532
  %745 = load %struct.pkgset*, %struct.pkgset** %744, align 8, !dbg !1532
  %746 = load %struct.dependency*, %struct.dependency** %7, align 8, !dbg !1533
  %747 = getelementptr inbounds %struct.dependency, %struct.dependency* %746, i32 0, i32 0, !dbg !1534
  %748 = load %struct.pkginfo*, %struct.pkginfo** %747, align 8, !dbg !1534
  %749 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %748, i32 0, i32 0, !dbg !1535
  %750 = load %struct.pkgset*, %struct.pkgset** %749, align 8, !dbg !1535
  %751 = icmp eq %struct.pkgset* %745, %750, !dbg !1536
  br i1 %751, label %752, label %753, !dbg !1537

; <label>:752:                                    ; preds = %738
  br label %847, !dbg !1538

; <label>:753:                                    ; preds = %738
  %754 = load %struct.deppossi*, %struct.deppossi** %12, align 8, !dbg !1539
  %755 = load %struct.deppossi*, %struct.deppossi** %13, align 8, !dbg !1541
  %756 = call zeroext i1 @pkg_virtual_deppossi_satisfied(%struct.deppossi* %754, %struct.deppossi* %755), !dbg !1542
  br i1 %756, label %758, label %757, !dbg !1543

; <label>:757:                                    ; preds = %753
  br label %847, !dbg !1544

; <label>:758:                                    ; preds = %753
  %759 = load %struct.deppossi*, %struct.deppossi** %13, align 8, !dbg !1545
  %760 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %759, i32 0, i32 0, !dbg !1546
  %761 = load %struct.dependency*, %struct.dependency** %760, align 8, !dbg !1546
  %762 = getelementptr inbounds %struct.dependency, %struct.dependency* %761, i32 0, i32 0, !dbg !1547
  %763 = load %struct.pkginfo*, %struct.pkginfo** %762, align 8, !dbg !1547
  %764 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %763, i32 0, i32 11, !dbg !1548
  %765 = load %struct.perpackagestate*, %struct.perpackagestate** %764, align 8, !dbg !1548
  %766 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %765, i32 0, i32 0, !dbg !1549
  %767 = load i32, i32* %766, align 8, !dbg !1549
  switch i32 %767, label %836 [
    i32 2, label %768
    i32 1, label %769
    i32 3, label %770
    i32 0, label %777
    i32 4, label %777
  ], !dbg !1550

; <label>:768:                                    ; preds = %758
  br label %847, !dbg !1551

; <label>:769:                                    ; preds = %758
  br label %847, !dbg !1553

; <label>:770:                                    ; preds = %758
  %771 = load %struct.dependency*, %struct.dependency** %7, align 8, !dbg !1554
  %772 = getelementptr inbounds %struct.dependency, %struct.dependency* %771, i32 0, i32 3, !dbg !1556
  %773 = load i32, i32* %772, align 8, !dbg !1556
  %774 = icmp eq i32 %773, 4, !dbg !1557
  br i1 %774, label %775, label %776, !dbg !1558

; <label>:775:                                    ; preds = %770
  br label %847, !dbg !1559

; <label>:776:                                    ; preds = %770
  br label %777, !dbg !1560

; <label>:777:                                    ; preds = %758, %758, %776
  %778 = load %struct.deppossi*, %struct.deppossi** %13, align 8, !dbg !1562
  %779 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %778, i32 0, i32 0, !dbg !1563
  %780 = load %struct.dependency*, %struct.dependency** %779, align 8, !dbg !1563
  %781 = getelementptr inbounds %struct.dependency, %struct.dependency* %780, i32 0, i32 0, !dbg !1564
  %782 = load %struct.pkginfo*, %struct.pkginfo** %781, align 8, !dbg !1564
  %783 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %782, i32 0, i32 4, !dbg !1565
  %784 = load i32, i32* %783, align 8, !dbg !1565
  switch i32 %784, label %835 [
    i32 0, label %785
    i32 1, label %785
    i32 2, label %786
    i32 3, label %786
    i32 4, label %786
    i32 7, label %793
    i32 6, label %793
    i32 5, label %793
  ], !dbg !1566

; <label>:785:                                    ; preds = %777, %777
  br label %847, !dbg !1567

; <label>:786:                                    ; preds = %777, %777, %777
  %787 = load %struct.dependency*, %struct.dependency** %7, align 8, !dbg !1569
  %788 = getelementptr inbounds %struct.dependency, %struct.dependency* %787, i32 0, i32 3, !dbg !1571
  %789 = load i32, i32* %788, align 8, !dbg !1571
  %790 = icmp eq i32 %789, 4, !dbg !1572
  br i1 %790, label %791, label %792, !dbg !1573

; <label>:791:                                    ; preds = %786
  br label %835, !dbg !1574

; <label>:792:                                    ; preds = %786
  br label %793, !dbg !1575

; <label>:793:                                    ; preds = %777, %777, %777, %792
  %794 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i32 0, i32 0, !dbg !1577
  %795 = call i8* @gettext(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.31, i32 0, i32 0)) #8, !dbg !1578
  %796 = load %struct.deppossi*, %struct.deppossi** %13, align 8, !dbg !1579
  %797 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %796, i32 0, i32 0, !dbg !1580
  %798 = load %struct.dependency*, %struct.dependency** %797, align 8, !dbg !1580
  %799 = getelementptr inbounds %struct.dependency, %struct.dependency* %798, i32 0, i32 0, !dbg !1581
  %800 = load %struct.pkginfo*, %struct.pkginfo** %799, align 8, !dbg !1581
  %801 = call i8* @pkg_name(%struct.pkginfo* %800, i32 1), !dbg !1582
  %802 = load %struct.deppossi*, %struct.deppossi** %12, align 8, !dbg !1583
  %803 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %802, i32 0, i32 1, !dbg !1584
  %804 = load %struct.pkgset*, %struct.pkgset** %803, align 8, !dbg !1584
  %805 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %804, i32 0, i32 1, !dbg !1585
  %806 = load i8*, i8** %805, align 8, !dbg !1585
  %807 = load %struct.deppossi*, %struct.deppossi** %13, align 8, !dbg !1586
  %808 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %807, i32 0, i32 0, !dbg !1587
  %809 = load %struct.dependency*, %struct.dependency** %808, align 8, !dbg !1587
  %810 = getelementptr inbounds %struct.dependency, %struct.dependency* %809, i32 0, i32 0, !dbg !1588
  %811 = load %struct.pkginfo*, %struct.pkginfo** %810, align 8, !dbg !1588
  %812 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %811, i32 0, i32 4, !dbg !1589
  %813 = load i32, i32* %812, align 8, !dbg !1589
  %814 = zext i32 %813 to i64, !dbg !1590
  %815 = getelementptr inbounds [0 x i8*], [0 x i8*]* @statusstrings, i64 0, i64 %814, !dbg !1590
  %816 = load i8*, i8** %815, align 8, !dbg !1590
  %817 = call i8* @gettext(i8* %816) #8, !dbg !1591
  %818 = call i32 (i8*, i8*, ...) @sprintf(i8* %794, i8* %795, i8* %801, i8* %806, i8* %817) #8, !dbg !1592
  %819 = load %struct.varbuf*, %struct.varbuf** %8, align 8, !dbg !1593
  %820 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i32 0, i32 0, !dbg !1594
  %821 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i32 0, i32 0, !dbg !1595
  %822 = call i64 @strlen(i8* %821) #9, !dbg !1596
  call void @varbuf_add_buf(%struct.varbuf* %819, i8* %820, i64 %822), !dbg !1597
  %823 = load %struct.pkginfo**, %struct.pkginfo*** %9, align 8, !dbg !1599
  %824 = icmp ne %struct.pkginfo** %823, null, !dbg !1599
  br i1 %824, label %826, label %825, !dbg !1601

; <label>:825:                                    ; preds = %793
  store i1 false, i1* %6, align 1, !dbg !1602
  br label %861, !dbg !1602

; <label>:826:                                    ; preds = %793
  %827 = load i32, i32* %15, align 4, !dbg !1603
  %828 = add nsw i32 %827, 1, !dbg !1603
  store i32 %828, i32* %15, align 4, !dbg !1603
  %829 = load %struct.deppossi*, %struct.deppossi** %13, align 8, !dbg !1604
  %830 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %829, i32 0, i32 0, !dbg !1605
  %831 = load %struct.dependency*, %struct.dependency** %830, align 8, !dbg !1605
  %832 = getelementptr inbounds %struct.dependency, %struct.dependency* %831, i32 0, i32 0, !dbg !1606
  %833 = load %struct.pkginfo*, %struct.pkginfo** %832, align 8, !dbg !1606
  %834 = load %struct.pkginfo**, %struct.pkginfo*** %9, align 8, !dbg !1607
  store %struct.pkginfo* %833, %struct.pkginfo** %834, align 8, !dbg !1608
  br label %835, !dbg !1609

; <label>:835:                                    ; preds = %777, %826, %791
  br label %846, !dbg !1610

; <label>:836:                                    ; preds = %758
  %837 = load %struct.deppossi*, %struct.deppossi** %13, align 8, !dbg !1611
  %838 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %837, i32 0, i32 0, !dbg !1612
  %839 = load %struct.dependency*, %struct.dependency** %838, align 8, !dbg !1612
  %840 = getelementptr inbounds %struct.dependency, %struct.dependency* %839, i32 0, i32 0, !dbg !1613
  %841 = load %struct.pkginfo*, %struct.pkginfo** %840, align 8, !dbg !1613
  %842 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %841, i32 0, i32 11, !dbg !1614
  %843 = load %struct.perpackagestate*, %struct.perpackagestate** %842, align 8, !dbg !1614
  %844 = getelementptr inbounds %struct.perpackagestate, %struct.perpackagestate* %843, i32 0, i32 0, !dbg !1615
  %845 = load i32, i32* %844, align 8, !dbg !1615
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 688, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.depisok, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.32, i32 0, i32 0), i32 %845) #7, !dbg !1616
  unreachable, !dbg !1616

; <label>:846:                                    ; preds = %835
  br label %847, !dbg !1617

; <label>:847:                                    ; preds = %846, %785, %775, %769, %768, %757, %752, %737
  %848 = load %struct.deppossi*, %struct.deppossi** %13, align 8, !dbg !1618
  %849 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %848, i32 0, i32 3, !dbg !1619
  %850 = load %struct.deppossi*, %struct.deppossi** %849, align 8, !dbg !1619
  store %struct.deppossi* %850, %struct.deppossi** %13, align 8, !dbg !1620
  br label %727, !dbg !1621, !llvm.loop !1623

; <label>:851:                                    ; preds = %727
  %852 = load i32, i32* %15, align 4, !dbg !1625
  %853 = icmp ne i32 %852, 0, !dbg !1625
  br i1 %853, label %855, label %854, !dbg !1627

; <label>:854:                                    ; preds = %851
  store i1 true, i1* %6, align 1, !dbg !1628
  br label %861, !dbg !1628

; <label>:855:                                    ; preds = %851
  %856 = load i32, i32* %15, align 4, !dbg !1629
  %857 = icmp sgt i32 %856, 1, !dbg !1631
  br i1 %857, label %858, label %860, !dbg !1632

; <label>:858:                                    ; preds = %855
  %859 = load %struct.pkginfo**, %struct.pkginfo*** %9, align 8, !dbg !1633
  store %struct.pkginfo* null, %struct.pkginfo** %859, align 8, !dbg !1634
  br label %860, !dbg !1635

; <label>:860:                                    ; preds = %858, %855
  store i1 false, i1* %6, align 1, !dbg !1636
  br label %861, !dbg !1636

; <label>:861:                                    ; preds = %860, %854, %825, %715, %619, %564, %510, %426, %338, %275, %203, %180, %101, %76
  %862 = load i1, i1* %6, align 1, !dbg !1637
  ret i1 %862, !dbg !1637
}

declare void @varbuf_reset(%struct.varbuf*) #2

declare void @varbuf_add_char(%struct.varbuf*, i32) #2

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #4

declare zeroext i1 @versionsatisfied(%struct.pkgbin*, %struct.deppossi*) #2

declare i8* @pkgbin_name(%struct.pkginfo*, %struct.pkgbin*, i32) #2

declare i8* @versiondescribe(%struct.dpkg_version*, i32) #2

declare zeroext i1 @dpkg_version_is_informative(%struct.dpkg_version*) #2

declare zeroext i1 @dpkg_version_relate(%struct.dpkg_version*, i32, %struct.dpkg_version*) #2

declare void @varbuf_add_buf(%struct.varbuf*, i8*, i64) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #6

declare zeroext i1 @pkg_virtual_deppossi_satisfied(%struct.deppossi*, %struct.deppossi*) #2

declare zeroext i1 @debug_has_flag(i32) #2

declare void @varbuf_add_pkgbin_name(%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32) #2

declare void @debug(i32, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal zeroext i1 @foundcyclebroken(%struct.cyclesofarlink*, %struct.cyclesofarlink*, %struct.pkginfo*, %struct.deppossi*) #0 !dbg !1638 {
  %5 = alloca i1, align 1
  %6 = alloca %struct.cyclesofarlink*, align 8
  %7 = alloca %struct.cyclesofarlink*, align 8
  %8 = alloca %struct.pkginfo*, align 8
  %9 = alloca %struct.deppossi*, align 8
  %10 = alloca %struct.cyclesofarlink*, align 8
  store %struct.cyclesofarlink* %0, %struct.cyclesofarlink** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.cyclesofarlink** %6, metadata !1641, metadata !350), !dbg !1642
  store %struct.cyclesofarlink* %1, %struct.cyclesofarlink** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.cyclesofarlink** %7, metadata !1643, metadata !350), !dbg !1644
  store %struct.pkginfo* %2, %struct.pkginfo** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %8, metadata !1645, metadata !350), !dbg !1646
  store %struct.deppossi* %3, %struct.deppossi** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.deppossi** %9, metadata !1647, metadata !350), !dbg !1648
  call void @llvm.dbg.declare(metadata %struct.cyclesofarlink** %10, metadata !1649, metadata !350), !dbg !1650
  %11 = load %struct.deppossi*, %struct.deppossi** %9, align 8, !dbg !1651
  %12 = icmp ne %struct.deppossi* %11, null, !dbg !1651
  br i1 %12, label %14, label %13, !dbg !1653

; <label>:13:                                     ; preds = %4
  store i1 false, i1* %5, align 1, !dbg !1654
  br label %90, !dbg !1654

; <label>:14:                                     ; preds = %4
  %15 = load %struct.cyclesofarlink*, %struct.cyclesofarlink** %7, align 8, !dbg !1655
  store %struct.cyclesofarlink* %15, %struct.cyclesofarlink** %10, align 8, !dbg !1657
  br label %16, !dbg !1658

; <label>:16:                                     ; preds = %28, %14
  %17 = load %struct.cyclesofarlink*, %struct.cyclesofarlink** %10, align 8, !dbg !1659
  %18 = icmp ne %struct.cyclesofarlink* %17, null, !dbg !1659
  br i1 %18, label %19, label %25, !dbg !1662

; <label>:19:                                     ; preds = %16
  %20 = load %struct.cyclesofarlink*, %struct.cyclesofarlink** %10, align 8, !dbg !1663
  %21 = getelementptr inbounds %struct.cyclesofarlink, %struct.cyclesofarlink* %20, i32 0, i32 1, !dbg !1665
  %22 = load %struct.pkginfo*, %struct.pkginfo** %21, align 8, !dbg !1665
  %23 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1666
  %24 = icmp ne %struct.pkginfo* %22, %23, !dbg !1667
  br label %25

; <label>:25:                                     ; preds = %19, %16
  %26 = phi i1 [ false, %16 ], [ %24, %19 ]
  br i1 %26, label %27, label %32, !dbg !1668

; <label>:27:                                     ; preds = %25
  br label %28, !dbg !1670

; <label>:28:                                     ; preds = %27
  %29 = load %struct.cyclesofarlink*, %struct.cyclesofarlink** %10, align 8, !dbg !1672
  %30 = getelementptr inbounds %struct.cyclesofarlink, %struct.cyclesofarlink* %29, i32 0, i32 0, !dbg !1674
  %31 = load %struct.cyclesofarlink*, %struct.cyclesofarlink** %30, align 8, !dbg !1674
  store %struct.cyclesofarlink* %31, %struct.cyclesofarlink** %10, align 8, !dbg !1675
  br label %16, !dbg !1676, !llvm.loop !1677

; <label>:32:                                     ; preds = %25
  %33 = load %struct.cyclesofarlink*, %struct.cyclesofarlink** %10, align 8, !dbg !1679
  %34 = icmp ne %struct.cyclesofarlink* %33, null, !dbg !1679
  br i1 %34, label %39, label %35, !dbg !1681

; <label>:35:                                     ; preds = %32
  %36 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1682
  %37 = load %struct.cyclesofarlink*, %struct.cyclesofarlink** %6, align 8, !dbg !1683
  %38 = call zeroext i1 @findbreakcyclerecursive(%struct.pkginfo* %36, %struct.cyclesofarlink* %37), !dbg !1684
  store i1 %38, i1* %5, align 1, !dbg !1685
  br label %90, !dbg !1685

; <label>:39:                                     ; preds = %32
  call void (i32, i8*, ...) @debug(i32 32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i32 0, i32 0)), !dbg !1686
  %40 = load %struct.cyclesofarlink*, %struct.cyclesofarlink** %6, align 8, !dbg !1687
  store %struct.cyclesofarlink* %40, %struct.cyclesofarlink** %7, align 8, !dbg !1688
  %41 = load %struct.cyclesofarlink*, %struct.cyclesofarlink** %7, align 8, !dbg !1689
  store %struct.cyclesofarlink* %41, %struct.cyclesofarlink** %10, align 8, !dbg !1691
  br label %42, !dbg !1692

; <label>:42:                                     ; preds = %66, %39
  %43 = load %struct.cyclesofarlink*, %struct.cyclesofarlink** %10, align 8, !dbg !1693
  %44 = load %struct.cyclesofarlink*, %struct.cyclesofarlink** %7, align 8, !dbg !1696
  %45 = icmp ne %struct.cyclesofarlink* %43, %44, !dbg !1697
  br i1 %45, label %46, label %52, !dbg !1698

; <label>:46:                                     ; preds = %42
  %47 = load %struct.cyclesofarlink*, %struct.cyclesofarlink** %10, align 8, !dbg !1699
  %48 = getelementptr inbounds %struct.cyclesofarlink, %struct.cyclesofarlink* %47, i32 0, i32 1, !dbg !1701
  %49 = load %struct.pkginfo*, %struct.pkginfo** %48, align 8, !dbg !1701
  %50 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1702
  %51 = icmp eq %struct.pkginfo* %49, %50, !dbg !1703
  br label %52

; <label>:52:                                     ; preds = %46, %42
  %53 = phi i1 [ false, %42 ], [ %51, %46 ]
  %54 = xor i1 %53, true, !dbg !1704
  br i1 %54, label %55, label %70, !dbg !1706

; <label>:55:                                     ; preds = %52
  %56 = load %struct.cyclesofarlink*, %struct.cyclesofarlink** %10, align 8, !dbg !1707
  %57 = getelementptr inbounds %struct.cyclesofarlink, %struct.cyclesofarlink* %56, i32 0, i32 1, !dbg !1710
  %58 = load %struct.pkginfo*, %struct.pkginfo** %57, align 8, !dbg !1710
  %59 = load %struct.cyclesofarlink*, %struct.cyclesofarlink** %10, align 8, !dbg !1711
  %60 = getelementptr inbounds %struct.cyclesofarlink, %struct.cyclesofarlink* %59, i32 0, i32 1, !dbg !1712
  %61 = load %struct.pkginfo*, %struct.pkginfo** %60, align 8, !dbg !1712
  %62 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %61, i32 0, i32 9, !dbg !1713
  %63 = call zeroext i1 @pkg_infodb_has_file(%struct.pkginfo* %58, %struct.pkgbin* %62, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0)), !dbg !1714
  br i1 %63, label %65, label %64, !dbg !1715

; <label>:64:                                     ; preds = %55
  br label %70, !dbg !1716

; <label>:65:                                     ; preds = %55
  br label %66, !dbg !1717

; <label>:66:                                     ; preds = %65
  %67 = load %struct.cyclesofarlink*, %struct.cyclesofarlink** %10, align 8, !dbg !1718
  %68 = getelementptr inbounds %struct.cyclesofarlink, %struct.cyclesofarlink* %67, i32 0, i32 0, !dbg !1720
  %69 = load %struct.cyclesofarlink*, %struct.cyclesofarlink** %68, align 8, !dbg !1720
  store %struct.cyclesofarlink* %69, %struct.cyclesofarlink** %10, align 8, !dbg !1721
  br label %42, !dbg !1722, !llvm.loop !1723

; <label>:70:                                     ; preds = %64, %52
  %71 = load %struct.cyclesofarlink*, %struct.cyclesofarlink** %10, align 8, !dbg !1725
  %72 = getelementptr inbounds %struct.cyclesofarlink, %struct.cyclesofarlink* %71, i32 0, i32 2, !dbg !1726
  %73 = load %struct.deppossi*, %struct.deppossi** %72, align 8, !dbg !1726
  %74 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %73, i32 0, i32 9, !dbg !1727
  store i8 1, i8* %74, align 1, !dbg !1728
  %75 = load %struct.cyclesofarlink*, %struct.cyclesofarlink** %10, align 8, !dbg !1729
  %76 = getelementptr inbounds %struct.cyclesofarlink, %struct.cyclesofarlink* %75, i32 0, i32 2, !dbg !1730
  %77 = load %struct.deppossi*, %struct.deppossi** %76, align 8, !dbg !1730
  %78 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %77, i32 0, i32 0, !dbg !1731
  %79 = load %struct.dependency*, %struct.dependency** %78, align 8, !dbg !1731
  %80 = getelementptr inbounds %struct.dependency, %struct.dependency* %79, i32 0, i32 0, !dbg !1732
  %81 = load %struct.pkginfo*, %struct.pkginfo** %80, align 8, !dbg !1732
  %82 = call i8* @pkg_name(%struct.pkginfo* %81, i32 3), !dbg !1733
  %83 = load %struct.cyclesofarlink*, %struct.cyclesofarlink** %10, align 8, !dbg !1734
  %84 = getelementptr inbounds %struct.cyclesofarlink, %struct.cyclesofarlink* %83, i32 0, i32 2, !dbg !1735
  %85 = load %struct.deppossi*, %struct.deppossi** %84, align 8, !dbg !1735
  %86 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %85, i32 0, i32 1, !dbg !1736
  %87 = load %struct.pkgset*, %struct.pkgset** %86, align 8, !dbg !1736
  %88 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %87, i32 0, i32 1, !dbg !1737
  %89 = load i8*, i8** %88, align 8, !dbg !1737
  call void (i32, i8*, ...) @debug(i32 32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.37, i32 0, i32 0), i8* %82, i8* %89), !dbg !1738
  store i1 true, i1* %5, align 1, !dbg !1739
  br label %90, !dbg !1739

; <label>:90:                                     ; preds = %70, %35, %13
  %91 = load i1, i1* %5, align 1, !dbg !1740
  ret i1 %91, !dbg !1740
}

declare zeroext i1 @pkg_infodb_has_file(%struct.pkginfo*, %struct.pkgbin*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!131, !132}
!llvm.ident = !{!133}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "[inter]src--depcon.o.i", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!2 = !{!3, !12, !16, !26, !36, !42, !53, !61, !66, !79, !90, !99, !104, !110, !115}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgwant", file: !4, line: 153, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../lib/dpkg/dpkg-db.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!5 = !{!6, !7, !8, !9, !10, !11}
!6 = !DIEnumerator(name: "PKG_WANT_UNKNOWN", value: 0)
!7 = !DIEnumerator(name: "PKG_WANT_INSTALL", value: 1)
!8 = !DIEnumerator(name: "PKG_WANT_HOLD", value: 2)
!9 = !DIEnumerator(name: "PKG_WANT_DEINSTALL", value: 3)
!10 = !DIEnumerator(name: "PKG_WANT_PURGE", value: 4)
!11 = !DIEnumerator(name: "PKG_WANT_SENTINEL", value: 5)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgeflag", file: !4, line: 163, size: 32, align: 32, elements: !13)
!13 = !{!14, !15}
!14 = !DIEnumerator(name: "PKG_EFLAG_OK", value: 0)
!15 = !DIEnumerator(name: "PKG_EFLAG_REINSTREQ", value: 1)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgstatus", file: !4, line: 168, size: 32, align: 32, elements: !17)
!17 = !{!18, !19, !20, !21, !22, !23, !24, !25}
!18 = !DIEnumerator(name: "PKG_STAT_NOTINSTALLED", value: 0)
!19 = !DIEnumerator(name: "PKG_STAT_CONFIGFILES", value: 1)
!20 = !DIEnumerator(name: "PKG_STAT_HALFINSTALLED", value: 2)
!21 = !DIEnumerator(name: "PKG_STAT_UNPACKED", value: 3)
!22 = !DIEnumerator(name: "PKG_STAT_HALFCONFIGURED", value: 4)
!23 = !DIEnumerator(name: "PKG_STAT_TRIGGERSAWAITED", value: 5)
!24 = !DIEnumerator(name: "PKG_STAT_TRIGGERSPENDING", value: 6)
!25 = !DIEnumerator(name: "PKG_STAT_INSTALLED", value: 7)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgpriority", file: !4, line: 179, size: 32, align: 32, elements: !27)
!27 = !{!28, !29, !30, !31, !32, !33, !34, !35}
!28 = !DIEnumerator(name: "PKG_PRIO_REQUIRED", value: 0)
!29 = !DIEnumerator(name: "PKG_PRIO_IMPORTANT", value: 1)
!30 = !DIEnumerator(name: "PKG_PRIO_STANDARD", value: 2)
!31 = !DIEnumerator(name: "PKG_PRIO_OPTIONAL", value: 3)
!32 = !DIEnumerator(name: "PKG_PRIO_EXTRA", value: 4)
!33 = !DIEnumerator(name: "PKG_PRIO_OTHER", value: 5)
!34 = !DIEnumerator(name: "PKG_PRIO_UNKNOWN", value: 6)
!35 = !DIEnumerator(name: "PKG_PRIO_UNSET", value: -1)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgmultiarch", file: !4, line: 95, size: 32, align: 32, elements: !37)
!37 = !{!38, !39, !40, !41}
!38 = !DIEnumerator(name: "PKG_MULTIARCH_NO", value: 0)
!39 = !DIEnumerator(name: "PKG_MULTIARCH_SAME", value: 1)
!40 = !DIEnumerator(name: "PKG_MULTIARCH_ALLOWED", value: 2)
!41 = !DIEnumerator(name: "PKG_MULTIARCH_FOREIGN", value: 3)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_arch_type", file: !43, line: 37, size: 32, align: 32, elements: !44)
!43 = !DIFile(filename: "../lib/dpkg/arch.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!44 = !{!45, !46, !47, !48, !49, !50, !51, !52}
!45 = !DIEnumerator(name: "DPKG_ARCH_NONE", value: 0)
!46 = !DIEnumerator(name: "DPKG_ARCH_EMPTY", value: 1)
!47 = !DIEnumerator(name: "DPKG_ARCH_ILLEGAL", value: 2)
!48 = !DIEnumerator(name: "DPKG_ARCH_WILDCARD", value: 3)
!49 = !DIEnumerator(name: "DPKG_ARCH_ALL", value: 4)
!50 = !DIEnumerator(name: "DPKG_ARCH_NATIVE", value: 5)
!51 = !DIEnumerator(name: "DPKG_ARCH_FOREIGN", value: 6)
!52 = !DIEnumerator(name: "DPKG_ARCH_UNKNOWN", value: 7)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkg_istobe", file: !54, line: 34, size: 32, align: 32, elements: !55)
!54 = !DIFile(filename: "main.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!55 = !{!56, !57, !58, !59, !60}
!56 = !DIEnumerator(name: "PKG_ISTOBE_NORMAL", value: 0)
!57 = !DIEnumerator(name: "PKG_ISTOBE_REMOVE", value: 1)
!58 = !DIEnumerator(name: "PKG_ISTOBE_INSTALLNEW", value: 2)
!59 = !DIEnumerator(name: "PKG_ISTOBE_DECONFIGURE", value: 3)
!60 = !DIEnumerator(name: "PKG_ISTOBE_PREINSTALL", value: 4)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkg_cycle_color", file: !54, line: 47, size: 32, align: 32, elements: !62)
!62 = !{!63, !64, !65}
!63 = !DIEnumerator(name: "PKG_CYCLE_WHITE", value: 0)
!64 = !DIEnumerator(name: "PKG_CYCLE_GRAY", value: 1)
!65 = !DIEnumerator(name: "PKG_CYCLE_BLACK", value: 2)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fsys_namenode_flags", file: !67, line: 61, size: 32, align: 32, elements: !68)
!67 = !DIFile(filename: "../lib/dpkg/fsys.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!68 = !{!69, !70, !71, !72, !73, !74, !75, !76, !77, !78}
!69 = !DIEnumerator(name: "FNNF_NEW_CONFF", value: 1)
!70 = !DIEnumerator(name: "FNNF_NEW_INARCHIVE", value: 2)
!71 = !DIEnumerator(name: "FNNF_OLD_CONFF", value: 4)
!72 = !DIEnumerator(name: "FNNF_OBS_CONFF", value: 8)
!73 = !DIEnumerator(name: "FNNF_ELIDE_OTHER_LISTS", value: 16)
!74 = !DIEnumerator(name: "FNNF_NO_ATOMIC_OVERWRITE", value: 32)
!75 = !DIEnumerator(name: "FNNF_PLACED_ON_DISK", value: 64)
!76 = !DIEnumerator(name: "FNNF_DEFERRED_FSYNC", value: 128)
!77 = !DIEnumerator(name: "FNNF_DEFERRED_RENAME", value: 256)
!78 = !DIEnumerator(name: "FNNF_FILTERED", value: 512)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "deptype", file: !4, line: 44, size: 32, align: 32, elements: !80)
!80 = !{!81, !82, !83, !84, !85, !86, !87, !88, !89}
!81 = !DIEnumerator(name: "dep_suggests", value: 0)
!82 = !DIEnumerator(name: "dep_recommends", value: 1)
!83 = !DIEnumerator(name: "dep_depends", value: 2)
!84 = !DIEnumerator(name: "dep_predepends", value: 3)
!85 = !DIEnumerator(name: "dep_breaks", value: 4)
!86 = !DIEnumerator(name: "dep_conflicts", value: 5)
!87 = !DIEnumerator(name: "dep_provides", value: 6)
!88 = !DIEnumerator(name: "dep_replaces", value: 7)
!89 = !DIEnumerator(name: "dep_enhances", value: 8)
!90 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_relation", file: !91, line: 61, size: 32, align: 32, elements: !92)
!91 = !DIFile(filename: "../lib/dpkg/version.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!92 = !{!93, !94, !95, !96, !97, !98}
!93 = !DIEnumerator(name: "DPKG_RELATION_NONE", value: 0)
!94 = !DIEnumerator(name: "DPKG_RELATION_EQ", value: 1)
!95 = !DIEnumerator(name: "DPKG_RELATION_LT", value: 2)
!96 = !DIEnumerator(name: "DPKG_RELATION_LE", value: 3)
!97 = !DIEnumerator(name: "DPKG_RELATION_GT", value: 4)
!98 = !DIEnumerator(name: "DPKG_RELATION_GE", value: 5)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "which_pkgbin", file: !54, line: 340, size: 32, align: 32, elements: !100)
!100 = !{!101, !102, !103}
!101 = !DIEnumerator(name: "wpb_installed", value: 0)
!102 = !DIEnumerator(name: "wpb_available", value: 1)
!103 = !DIEnumerator(name: "wpb_by_istobe", value: 2)
!104 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkg_name_arch_when", file: !4, line: 396, size: 32, align: 32, elements: !105)
!105 = !{!106, !107, !108, !109}
!106 = !DIEnumerator(name: "pnaw_never", value: 0)
!107 = !DIEnumerator(name: "pnaw_nonambig", value: 1)
!108 = !DIEnumerator(name: "pnaw_foreign", value: 2)
!109 = !DIEnumerator(name: "pnaw_always", value: 3)
!110 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "versiondisplayepochwhen", file: !4, line: 388, size: 32, align: 32, elements: !111)
!111 = !{!112, !113, !114}
!112 = !DIEnumerator(name: "vdew_never", value: 0)
!113 = !DIEnumerator(name: "vdew_nonambig", value: 1)
!114 = !DIEnumerator(name: "vdew_always", value: 2)
!115 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "debugflags", file: !116, line: 41, size: 32, align: 32, elements: !117)
!116 = !DIFile(filename: "../lib/dpkg/debug.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!117 = !{!118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130}
!118 = !DIEnumerator(name: "dbg_general", value: 1)
!119 = !DIEnumerator(name: "dbg_scripts", value: 2)
!120 = !DIEnumerator(name: "dbg_eachfile", value: 8)
!121 = !DIEnumerator(name: "dbg_eachfiledetail", value: 64)
!122 = !DIEnumerator(name: "dbg_conff", value: 16)
!123 = !DIEnumerator(name: "dbg_conffdetail", value: 128)
!124 = !DIEnumerator(name: "dbg_depcon", value: 32)
!125 = !DIEnumerator(name: "dbg_depcondetail", value: 256)
!126 = !DIEnumerator(name: "dbg_veryverbose", value: 512)
!127 = !DIEnumerator(name: "dbg_stupidlyverbose", value: 1024)
!128 = !DIEnumerator(name: "dbg_triggers", value: 4096)
!129 = !DIEnumerator(name: "dbg_triggersdetail", value: 8192)
!130 = !DIEnumerator(name: "dbg_triggersstupid", value: 16384)
!131 = !{i32 2, !"Dwarf Version", i32 4}
!132 = !{i32 2, !"Debug Info Version", i32 3}
!133 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!134 = distinct !DISubprogram(name: "deppossi_pkg_iter_new", scope: !135, file: !135, line: 49, type: !136, isLocal: false, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !348)
!135 = !DIFile(filename: "depcon.c", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!136 = !DISubroutineType(types: !137)
!137 = !{!138, !142, !99}
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64, align: 64)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "deppossi_pkg_iterator", file: !135, line: 42, size: 192, align: 64, elements: !140)
!140 = !{!141, !346, !347}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "possi", scope: !139, file: !135, line: 43, baseType: !142, size: 64, align: 64)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64, align: 64)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "deppossi", file: !4, line: 63, size: 640, align: 64, elements: !144)
!144 = !{!145, !337, !338, !339, !340, !341, !342, !343, !344, !345}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !143, file: !4, line: 64, baseType: !146, size: 64, align: 64)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64, align: 64)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dependency", file: !4, line: 56, size: 256, align: 64, elements: !148)
!148 = !{!149, !334, !335, !336}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !147, file: !4, line: 57, baseType: !150, size: 64, align: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64, align: 64)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkginfo", file: !4, line: 195, size: 3072, align: 64, elements: !152)
!152 = !{!153, !170, !171, !172, !173, !174, !175, !176, !177, !184, !223, !224, !240, !249, !265, !266, !272, !328, !332, !333}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !151, file: !4, line: 196, baseType: !154, size: 64, align: 64)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64, align: 64)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgset", file: !4, line: 242, size: 3392, align: 64, elements: !156)
!156 = !{!157, !158, !162, !163, !168}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !155, file: !4, line: 243, baseType: !154, size: 64, align: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !155, file: !4, line: 244, baseType: !159, size: 64, align: 64, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64, align: 64)
!160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !161)
!161 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !155, file: !4, line: 245, baseType: !151, size: 3072, align: 64, offset: 128)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "depended", scope: !155, file: !4, line: 249, baseType: !164, size: 128, align: 64, offset: 3200)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !155, file: !4, line: 246, size: 128, align: 64, elements: !165)
!165 = !{!166, !167}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !164, file: !4, line: 247, baseType: !142, size: 64, align: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !164, file: !4, line: 248, baseType: !142, size: 64, align: 64, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "installed_instances", scope: !155, file: !4, line: 250, baseType: !169, size: 32, align: 32, offset: 3328)
!169 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "arch_next", scope: !151, file: !4, line: 197, baseType: !150, size: 64, align: 64, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "want", scope: !151, file: !4, line: 199, baseType: !3, size: 32, align: 32, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "eflag", scope: !151, file: !4, line: 201, baseType: !12, size: 32, align: 32, offset: 160)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !151, file: !4, line: 202, baseType: !16, size: 32, align: 32, offset: 192)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !151, file: !4, line: 203, baseType: !26, size: 32, align: 32, offset: 224)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "otherpriority", scope: !151, file: !4, line: 204, baseType: !159, size: 64, align: 64, offset: 256)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "section", scope: !151, file: !4, line: 205, baseType: !159, size: 64, align: 64, offset: 320)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "configversion", scope: !151, file: !4, line: 206, baseType: !178, size: 192, align: 64, offset: 384)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_version", file: !91, line: 42, size: 192, align: 64, elements: !179)
!179 = !{!180, !182, !183}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !178, file: !91, line: 44, baseType: !181, size: 32, align: 32)
!181 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !178, file: !91, line: 46, baseType: !159, size: 64, align: 64, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !178, file: !91, line: 48, baseType: !159, size: 64, align: 64, offset: 128)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !151, file: !4, line: 207, baseType: !185, size: 960, align: 64, offset: 576)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgbin", file: !4, line: 107, size: 960, align: 64, elements: !186)
!186 = !{!187, !188, !190, !191, !200, !201, !202, !203, !204, !205, !206, !207, !208, !216}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "depends", scope: !185, file: !4, line: 108, baseType: !146, size: 64, align: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "essential", scope: !185, file: !4, line: 110, baseType: !189, size: 8, align: 8, offset: 64)
!189 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "multiarch", scope: !185, file: !4, line: 111, baseType: !36, size: 32, align: 32, offset: 96)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !185, file: !4, line: 112, baseType: !192, size: 64, align: 64, offset: 128)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64, align: 64)
!193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !194)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_arch", file: !43, line: 48, size: 192, align: 64, elements: !195)
!195 = !{!196, !198, !199}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !194, file: !43, line: 49, baseType: !197, size: 64, align: 64)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64, align: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !194, file: !43, line: 50, baseType: !159, size: 64, align: 64, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !194, file: !43, line: 51, baseType: !42, size: 32, align: 32, offset: 128)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "pkgname_archqual", scope: !185, file: !4, line: 115, baseType: !159, size: 64, align: 64, offset: 192)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !185, file: !4, line: 116, baseType: !159, size: 64, align: 64, offset: 256)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "maintainer", scope: !185, file: !4, line: 117, baseType: !159, size: 64, align: 64, offset: 320)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !185, file: !4, line: 118, baseType: !159, size: 64, align: 64, offset: 384)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "installedsize", scope: !185, file: !4, line: 119, baseType: !159, size: 64, align: 64, offset: 448)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !185, file: !4, line: 120, baseType: !159, size: 64, align: 64, offset: 512)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "bugs", scope: !185, file: !4, line: 121, baseType: !159, size: 64, align: 64, offset: 576)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !185, file: !4, line: 122, baseType: !178, size: 192, align: 64, offset: 640)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "conffiles", scope: !185, file: !4, line: 123, baseType: !209, size: 64, align: 64, offset: 832)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64, align: 64)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conffile", file: !4, line: 80, size: 256, align: 64, elements: !211)
!211 = !{!212, !213, !214, !215}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !210, file: !4, line: 81, baseType: !209, size: 64, align: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !210, file: !4, line: 82, baseType: !159, size: 64, align: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !210, file: !4, line: 83, baseType: !159, size: 64, align: 64, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "obsolete", scope: !210, file: !4, line: 84, baseType: !189, size: 8, align: 8, offset: 192)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "arbs", scope: !185, file: !4, line: 124, baseType: !217, size: 64, align: 64, offset: 896)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64, align: 64)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arbitraryfield", file: !4, line: 74, size: 192, align: 64, elements: !219)
!219 = !{!220, !221, !222}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !218, file: !4, line: 75, baseType: !217, size: 64, align: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !218, file: !4, line: 76, baseType: !159, size: 64, align: 64, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !218, file: !4, line: 77, baseType: !159, size: 64, align: 64, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !151, file: !4, line: 208, baseType: !185, size: 960, align: 64, offset: 1536)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "clientdata", scope: !151, file: !4, line: 209, baseType: !225, size: 64, align: 64, offset: 2496)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64, align: 64)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perpackagestate", file: !54, line: 53, size: 256, align: 64, elements: !227)
!227 = !{!228, !229, !230, !231, !232, !233}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "istobe", scope: !226, file: !54, line: 54, baseType: !53, size: 32, align: 32)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !226, file: !54, line: 57, baseType: !61, size: 32, align: 32, offset: 32)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !226, file: !54, line: 59, baseType: !189, size: 8, align: 8, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "replacingfilesandsaid", scope: !226, file: !54, line: 61, baseType: !169, size: 32, align: 32, offset: 96)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "cmdline_seen", scope: !226, file: !54, line: 62, baseType: !169, size: 32, align: 32, offset: 128)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "trigprocdeferred", scope: !226, file: !54, line: 65, baseType: !234, size: 64, align: 64, offset: 192)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64, align: 64)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_list", file: !236, line: 34, size: 128, align: 64, elements: !237)
!236 = !DIFile(filename: "../lib/dpkg/pkg-list.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!237 = !{!238, !239}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !235, file: !236, line: 35, baseType: !234, size: 64, align: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !235, file: !236, line: 36, baseType: !150, size: 64, align: 64, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "archives", scope: !151, file: !4, line: 211, baseType: !241, size: 64, align: 64, offset: 2560)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64, align: 64)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archivedetails", file: !4, line: 87, size: 320, align: 64, elements: !243)
!243 = !{!244, !245, !246, !247, !248}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !242, file: !4, line: 88, baseType: !241, size: 64, align: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !242, file: !4, line: 89, baseType: !159, size: 64, align: 64, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "msdosname", scope: !242, file: !4, line: 90, baseType: !159, size: 64, align: 64, offset: 128)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !242, file: !4, line: 91, baseType: !159, size: 64, align: 64, offset: 192)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "md5sum", scope: !242, file: !4, line: 92, baseType: !159, size: 64, align: 64, offset: 256)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "trigaw", scope: !151, file: !4, line: 216, baseType: !250, size: 128, align: 64, offset: 2624)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !151, file: !4, line: 213, size: 128, align: 64, elements: !251)
!251 = !{!252, !264}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !250, file: !4, line: 215, baseType: !253, size: 64, align: 64)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigaw", file: !4, line: 142, size: 320, align: 64, elements: !255)
!255 = !{!256, !257, !258, !259}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "aw", scope: !254, file: !4, line: 143, baseType: !150, size: 64, align: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "pend", scope: !254, file: !4, line: 143, baseType: !150, size: 64, align: 64, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "samepend_next", scope: !254, file: !4, line: 144, baseType: !253, size: 64, align: 64, offset: 128)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "sameaw", scope: !254, file: !4, line: 147, baseType: !260, size: 128, align: 64, offset: 192)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !254, file: !4, line: 145, size: 128, align: 64, elements: !261)
!261 = !{!262, !263}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !260, file: !4, line: 146, baseType: !253, size: 64, align: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !260, file: !4, line: 146, baseType: !253, size: 64, align: 64, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !250, file: !4, line: 215, baseType: !253, size: 64, align: 64, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "othertrigaw_head", scope: !151, file: !4, line: 219, baseType: !253, size: 64, align: 64, offset: 2752)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "trigpend_head", scope: !151, file: !4, line: 220, baseType: !267, size: 64, align: 64, offset: 2816)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64, align: 64)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigpend", file: !4, line: 134, size: 128, align: 64, elements: !269)
!269 = !{!270, !271}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !268, file: !4, line: 135, baseType: !267, size: 64, align: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !268, file: !4, line: 136, baseType: !159, size: 64, align: 64, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !151, file: !4, line: 231, baseType: !273, size: 64, align: 64, offset: 2880)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64, align: 64)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode_list", file: !67, line: 122, size: 128, align: 64, elements: !275)
!275 = !{!276, !277}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !274, file: !67, line: 123, baseType: !273, size: 64, align: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "namenode", scope: !274, file: !67, line: 124, baseType: !278, size: 64, align: 64, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64, align: 64)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode", file: !67, line: 90, size: 640, align: 64, elements: !280)
!280 = !{!281, !282, !283, !284, !292, !311, !314, !315, !316, !317}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !279, file: !67, line: 91, baseType: !278, size: 64, align: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !279, file: !67, line: 92, baseType: !159, size: 64, align: 64, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "packages", scope: !279, file: !67, line: 93, baseType: !234, size: 64, align: 64, offset: 128)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "divert", scope: !279, file: !67, line: 94, baseType: !285, size: 64, align: 64, offset: 192)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64, align: 64)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_diversion", file: !67, line: 151, size: 256, align: 64, elements: !287)
!287 = !{!288, !289, !290, !291}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "useinstead", scope: !286, file: !67, line: 152, baseType: !278, size: 64, align: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "camefrom", scope: !286, file: !67, line: 153, baseType: !278, size: 64, align: 64, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "pkgset", scope: !286, file: !67, line: 154, baseType: !154, size: 64, align: 64, offset: 128)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !286, file: !67, line: 157, baseType: !285, size: 64, align: 64, offset: 192)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "statoverride", scope: !279, file: !67, line: 101, baseType: !293, size: 64, align: 64, offset: 256)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64, align: 64)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_stat", file: !295, line: 40, size: 256, align: 64, elements: !296)
!295 = !DIFile(filename: "../lib/dpkg/file.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!296 = !{!297, !302, !305, !308, !310}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !294, file: !295, line: 41, baseType: !298, size: 32, align: 32)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !299, line: 80, baseType: !300)
!299 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !301, line: 125, baseType: !181)
!301 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!302 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !294, file: !295, line: 42, baseType: !303, size: 32, align: 32, offset: 32)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !299, line: 65, baseType: !304)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !301, line: 126, baseType: !181)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !294, file: !295, line: 43, baseType: !306, size: 32, align: 32, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !299, line: 70, baseType: !307)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !301, line: 129, baseType: !181)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "uname", scope: !294, file: !295, line: 47, baseType: !309, size: 64, align: 64, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64, align: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !294, file: !295, line: 48, baseType: !309, size: 64, align: 64, offset: 192)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "trig_interested", scope: !279, file: !67, line: 103, baseType: !312, size: 64, align: 64, offset: 320)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64, align: 64)
!313 = !DICompositeType(tag: DW_TAG_structure_type, name: "trigfileint", file: !67, line: 103, flags: DIFlagFwdDecl)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !279, file: !67, line: 111, baseType: !66, size: 32, align: 32, offset: 384)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "oldhash", scope: !279, file: !67, line: 114, baseType: !159, size: 64, align: 64, offset: 448)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "newhash", scope: !279, file: !67, line: 117, baseType: !159, size: 64, align: 64, offset: 512)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "file_ondisk_id", scope: !279, file: !67, line: 119, baseType: !318, size: 64, align: 64, offset: 576)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64, align: 64)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ondisk_id", file: !67, line: 85, size: 128, align: 64, elements: !320)
!320 = !{!321, !325}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "id_dev", scope: !319, file: !67, line: 86, baseType: !322, size: 64, align: 64)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !299, line: 60, baseType: !323)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !301, line: 124, baseType: !324)
!324 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "id_ino", scope: !319, file: !67, line: 87, baseType: !326, size: 64, align: 64, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !299, line: 48, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !301, line: 127, baseType: !324)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_phys_offs", scope: !151, file: !4, line: 232, baseType: !329, size: 64, align: 64, offset: 2944)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !299, line: 86, baseType: !330)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !301, line: 131, baseType: !331)
!331 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_valid", scope: !151, file: !4, line: 233, baseType: !189, size: 8, align: 8, offset: 3008)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "status_dirty", scope: !151, file: !4, line: 236, baseType: !189, size: 8, align: 8, offset: 3016)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !147, file: !4, line: 58, baseType: !146, size: 64, align: 64, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !147, file: !4, line: 59, baseType: !142, size: 64, align: 64, offset: 128)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !147, file: !4, line: 60, baseType: !79, size: 32, align: 32, offset: 192)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "ed", scope: !143, file: !4, line: 65, baseType: !154, size: 64, align: 64, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !143, file: !4, line: 66, baseType: !142, size: 64, align: 64, offset: 128)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "rev_next", scope: !143, file: !4, line: 66, baseType: !142, size: 64, align: 64, offset: 192)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "rev_prev", scope: !143, file: !4, line: 66, baseType: !142, size: 64, align: 64, offset: 256)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !143, file: !4, line: 67, baseType: !192, size: 64, align: 64, offset: 320)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !143, file: !4, line: 68, baseType: !178, size: 192, align: 64, offset: 384)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "verrel", scope: !143, file: !4, line: 69, baseType: !90, size: 32, align: 32, offset: 576)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "arch_is_implicit", scope: !143, file: !4, line: 70, baseType: !189, size: 8, align: 8, offset: 608)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "cyclebreak", scope: !143, file: !4, line: 71, baseType: !189, size: 8, align: 8, offset: 616)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_next", scope: !139, file: !135, line: 44, baseType: !150, size: 64, align: 64, offset: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "which_pkgbin", scope: !139, file: !135, line: 45, baseType: !99, size: 32, align: 32, offset: 128)
!348 = !{}
!349 = !DILocalVariable(name: "possi", arg: 1, scope: !134, file: !135, line: 49, type: !142)
!350 = !DIExpression()
!351 = !DILocation(line: 49, column: 40, scope: !134)
!352 = !DILocalVariable(name: "wpb", arg: 2, scope: !134, file: !135, line: 49, type: !99)
!353 = !DILocation(line: 49, column: 65, scope: !134)
!354 = !DILocalVariable(name: "iter", scope: !134, file: !135, line: 51, type: !138)
!355 = !DILocation(line: 51, column: 33, scope: !134)
!356 = !DILocation(line: 53, column: 10, scope: !134)
!357 = !DILocation(line: 53, column: 8, scope: !134)
!358 = !DILocation(line: 54, column: 17, scope: !134)
!359 = !DILocation(line: 54, column: 3, scope: !134)
!360 = !DILocation(line: 54, column: 9, scope: !134)
!361 = !DILocation(line: 54, column: 15, scope: !134)
!362 = !DILocation(line: 55, column: 21, scope: !134)
!363 = !DILocation(line: 55, column: 28, scope: !134)
!364 = !DILocation(line: 55, column: 32, scope: !134)
!365 = !DILocation(line: 55, column: 3, scope: !134)
!366 = !DILocation(line: 55, column: 9, scope: !134)
!367 = !DILocation(line: 55, column: 18, scope: !134)
!368 = !DILocation(line: 56, column: 24, scope: !134)
!369 = !DILocation(line: 56, column: 3, scope: !134)
!370 = !DILocation(line: 56, column: 9, scope: !134)
!371 = !DILocation(line: 56, column: 22, scope: !134)
!372 = !DILocation(line: 58, column: 10, scope: !134)
!373 = !DILocation(line: 58, column: 3, scope: !134)
!374 = distinct !DISubprogram(name: "deppossi_pkg_iter_next", scope: !135, file: !135, line: 62, type: !375, isLocal: false, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !348)
!375 = !DISubroutineType(types: !376)
!376 = !{!150, !138}
!377 = !DILocalVariable(name: "iter", arg: 1, scope: !374, file: !135, line: 62, type: !138)
!378 = !DILocation(line: 62, column: 54, scope: !374)
!379 = !DILocalVariable(name: "pkg_cur", scope: !374, file: !135, line: 64, type: !150)
!380 = !DILocation(line: 64, column: 19, scope: !374)
!381 = !DILocalVariable(name: "pkgbin", scope: !374, file: !135, line: 65, type: !382)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64, align: 64)
!383 = !DILocation(line: 65, column: 18, scope: !374)
!384 = !DILocation(line: 67, column: 3, scope: !374)
!385 = !DILocation(line: 67, column: 21, scope: !386)
!386 = !DILexicalBlockFile(scope: !374, file: !135, discriminator: 1)
!387 = !DILocation(line: 67, column: 27, scope: !386)
!388 = !DILocation(line: 67, column: 19, scope: !386)
!389 = !DILocation(line: 67, column: 3, scope: !386)
!390 = !DILocation(line: 68, column: 22, scope: !391)
!391 = distinct !DILexicalBlock(scope: !374, file: !135, line: 67, column: 38)
!392 = !DILocation(line: 68, column: 31, scope: !391)
!393 = !DILocation(line: 68, column: 5, scope: !391)
!394 = !DILocation(line: 68, column: 11, scope: !391)
!395 = !DILocation(line: 68, column: 20, scope: !391)
!396 = !DILocation(line: 70, column: 13, scope: !391)
!397 = !DILocation(line: 70, column: 19, scope: !391)
!398 = !DILocation(line: 70, column: 5, scope: !391)
!399 = !DILocation(line: 72, column: 17, scope: !400)
!400 = distinct !DILexicalBlock(scope: !391, file: !135, line: 70, column: 33)
!401 = !DILocation(line: 72, column: 26, scope: !400)
!402 = !DILocation(line: 72, column: 14, scope: !400)
!403 = !DILocation(line: 73, column: 7, scope: !400)
!404 = !DILocation(line: 75, column: 17, scope: !400)
!405 = !DILocation(line: 75, column: 26, scope: !400)
!406 = !DILocation(line: 75, column: 14, scope: !400)
!407 = !DILocation(line: 76, column: 7, scope: !400)
!408 = !DILocation(line: 78, column: 11, scope: !409)
!409 = distinct !DILexicalBlock(scope: !400, file: !135, line: 78, column: 11)
!410 = !DILocation(line: 78, column: 20, scope: !409)
!411 = !DILocation(line: 78, column: 31, scope: !409)
!412 = !DILocation(line: 79, column: 11, scope: !409)
!413 = !DILocation(line: 79, column: 20, scope: !409)
!414 = !DILocation(line: 79, column: 32, scope: !409)
!415 = !DILocation(line: 79, column: 39, scope: !409)
!416 = !DILocation(line: 78, column: 11, scope: !417)
!417 = !DILexicalBlockFile(scope: !400, file: !135, discriminator: 1)
!418 = !DILocation(line: 80, column: 19, scope: !409)
!419 = !DILocation(line: 80, column: 28, scope: !409)
!420 = !DILocation(line: 80, column: 16, scope: !409)
!421 = !DILocation(line: 80, column: 9, scope: !409)
!422 = !DILocation(line: 82, column: 19, scope: !409)
!423 = !DILocation(line: 82, column: 28, scope: !409)
!424 = !DILocation(line: 82, column: 16, scope: !409)
!425 = !DILocation(line: 83, column: 7, scope: !400)
!426 = !DILocation(line: 85, column: 73, scope: !400)
!427 = !DILocation(line: 85, column: 79, scope: !400)
!428 = !DILocation(line: 85, column: 7, scope: !400)
!429 = !DILocation(line: 88, column: 23, scope: !430)
!430 = distinct !DILexicalBlock(scope: !391, file: !135, line: 88, column: 9)
!431 = !DILocation(line: 88, column: 31, scope: !430)
!432 = !DILocation(line: 88, column: 37, scope: !430)
!433 = !DILocation(line: 88, column: 9, scope: !430)
!434 = !DILocation(line: 88, column: 9, scope: !391)
!435 = !DILocation(line: 89, column: 14, scope: !430)
!436 = !DILocation(line: 89, column: 7, scope: !430)
!437 = !DILocation(line: 67, column: 3, scope: !438)
!438 = !DILexicalBlockFile(scope: !374, file: !135, discriminator: 2)
!439 = distinct !{!439, !384}
!440 = !DILocation(line: 92, column: 3, scope: !374)
!441 = !DILocation(line: 93, column: 1, scope: !374)
!442 = distinct !DISubprogram(name: "deppossi_pkg_iter_free", scope: !135, file: !135, line: 96, type: !443, isLocal: false, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !348)
!443 = !DISubroutineType(types: !444)
!444 = !{null, !138}
!445 = !DILocalVariable(name: "iter", arg: 1, scope: !442, file: !135, line: 96, type: !138)
!446 = !DILocation(line: 96, column: 54, scope: !442)
!447 = !DILocation(line: 98, column: 8, scope: !442)
!448 = !DILocation(line: 98, column: 3, scope: !442)
!449 = !DILocation(line: 99, column: 1, scope: !442)
!450 = distinct !DISubprogram(name: "findbreakcycle", scope: !135, file: !135, line: 225, type: !451, isLocal: false, isDefinition: true, scopeLine: 226, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !348)
!451 = !DISubroutineType(types: !452)
!452 = !{!189, !150}
!453 = !DILocalVariable(name: "pkg", arg: 1, scope: !450, file: !135, line: 225, type: !150)
!454 = !DILocation(line: 225, column: 32, scope: !450)
!455 = !DILocalVariable(name: "iter", scope: !450, file: !135, line: 227, type: !456)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64, align: 64)
!457 = !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_hash_iter", file: !4, line: 314, flags: DIFlagFwdDecl)
!458 = !DILocation(line: 227, column: 25, scope: !450)
!459 = !DILocalVariable(name: "tpkg", scope: !450, file: !135, line: 228, type: !150)
!460 = !DILocation(line: 228, column: 19, scope: !450)
!461 = !DILocation(line: 231, column: 10, scope: !450)
!462 = !DILocation(line: 231, column: 8, scope: !450)
!463 = !DILocation(line: 232, column: 3, scope: !450)
!464 = !DILocation(line: 232, column: 41, scope: !465)
!465 = !DILexicalBlockFile(scope: !450, file: !135, discriminator: 1)
!466 = !DILocation(line: 232, column: 18, scope: !465)
!467 = !DILocation(line: 232, column: 16, scope: !465)
!468 = !DILocation(line: 232, column: 3, scope: !465)
!469 = !DILocation(line: 233, column: 31, scope: !470)
!470 = distinct !DILexicalBlock(scope: !450, file: !135, line: 232, column: 49)
!471 = !DILocation(line: 233, column: 5, scope: !470)
!472 = !DILocation(line: 234, column: 5, scope: !470)
!473 = !DILocation(line: 234, column: 11, scope: !470)
!474 = !DILocation(line: 234, column: 23, scope: !470)
!475 = !DILocation(line: 234, column: 29, scope: !470)
!476 = !DILocation(line: 232, column: 3, scope: !477)
!477 = !DILexicalBlockFile(scope: !450, file: !135, discriminator: 2)
!478 = distinct !{!478, !463}
!479 = !DILocation(line: 236, column: 22, scope: !450)
!480 = !DILocation(line: 236, column: 3, scope: !450)
!481 = !DILocation(line: 238, column: 34, scope: !450)
!482 = !DILocation(line: 238, column: 10, scope: !450)
!483 = !DILocation(line: 238, column: 3, scope: !450)
!484 = distinct !DISubprogram(name: "findbreakcyclerecursive", scope: !135, file: !135, line: 161, type: !485, isLocal: true, isDefinition: true, scopeLine: 162, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !348)
!485 = !DISubroutineType(types: !486)
!486 = !{!189, !150, !487}
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64, align: 64)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cyclesofarlink", file: !135, line: 101, size: 192, align: 64, elements: !489)
!489 = !{!490, !491, !492}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !488, file: !135, line: 102, baseType: !487, size: 64, align: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !488, file: !135, line: 103, baseType: !150, size: 64, align: 64, offset: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "possi", scope: !488, file: !135, line: 104, baseType: !142, size: 64, align: 64, offset: 128)
!493 = !DILocalVariable(name: "pkg", arg: 1, scope: !484, file: !135, line: 161, type: !150)
!494 = !DILocation(line: 161, column: 41, scope: !484)
!495 = !DILocalVariable(name: "sofar", arg: 2, scope: !484, file: !135, line: 161, type: !487)
!496 = !DILocation(line: 161, column: 69, scope: !484)
!497 = !DILocalVariable(name: "thislink", scope: !484, file: !135, line: 163, type: !488)
!498 = !DILocation(line: 163, column: 25, scope: !484)
!499 = !DILocalVariable(name: "sol", scope: !484, file: !135, line: 163, type: !487)
!500 = !DILocation(line: 163, column: 36, scope: !484)
!501 = !DILocalVariable(name: "dep", scope: !484, file: !135, line: 164, type: !146)
!502 = !DILocation(line: 164, column: 22, scope: !484)
!503 = !DILocalVariable(name: "possi", scope: !484, file: !135, line: 165, type: !142)
!504 = !DILocation(line: 165, column: 20, scope: !484)
!505 = !DILocalVariable(name: "providelink", scope: !484, file: !135, line: 165, type: !142)
!506 = !DILocation(line: 165, column: 28, scope: !484)
!507 = !DILocalVariable(name: "provider", scope: !484, file: !135, line: 166, type: !150)
!508 = !DILocation(line: 166, column: 19, scope: !484)
!509 = !DILocalVariable(name: "pkg_pos", scope: !484, file: !135, line: 166, type: !150)
!510 = !DILocation(line: 166, column: 30, scope: !484)
!511 = !DILocation(line: 168, column: 7, scope: !512)
!512 = distinct !DILexicalBlock(scope: !484, file: !135, line: 168, column: 7)
!513 = !DILocation(line: 168, column: 12, scope: !512)
!514 = !DILocation(line: 168, column: 24, scope: !512)
!515 = !DILocation(line: 168, column: 30, scope: !512)
!516 = !DILocation(line: 168, column: 7, scope: !484)
!517 = !DILocation(line: 169, column: 5, scope: !512)
!518 = !DILocation(line: 170, column: 3, scope: !484)
!519 = !DILocation(line: 170, column: 8, scope: !484)
!520 = !DILocation(line: 170, column: 20, scope: !484)
!521 = !DILocation(line: 170, column: 26, scope: !484)
!522 = !DILocation(line: 172, column: 7, scope: !523)
!523 = distinct !DILexicalBlock(scope: !484, file: !135, line: 172, column: 7)
!524 = !DILocation(line: 172, column: 7, scope: !484)
!525 = !DILocalVariable(name: "str_pkgs", scope: !526, file: !135, line: 173, type: !527)
!526 = distinct !DILexicalBlock(scope: !523, file: !135, line: 172, column: 41)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varbuf", file: !528, line: 55, size: 192, align: 64, elements: !529)
!528 = !DIFile(filename: "../lib/dpkg/varbuf.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!529 = !{!530, !533, !534}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !527, file: !528, line: 56, baseType: !531, size: 64, align: 64)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !532, line: 216, baseType: !324)
!532 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!533 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !527, file: !528, line: 56, baseType: !531, size: 64, align: 64, offset: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !527, file: !528, line: 57, baseType: !309, size: 64, align: 64, offset: 128)
!535 = !DILocation(line: 173, column: 19, scope: !526)
!536 = !DILocation(line: 175, column: 16, scope: !537)
!537 = distinct !DILexicalBlock(scope: !526, file: !135, line: 175, column: 5)
!538 = !DILocation(line: 175, column: 14, scope: !537)
!539 = !DILocation(line: 175, column: 10, scope: !537)
!540 = !DILocation(line: 175, column: 23, scope: !541)
!541 = !DILexicalBlockFile(scope: !542, file: !135, discriminator: 1)
!542 = distinct !DILexicalBlock(scope: !537, file: !135, line: 175, column: 5)
!543 = !DILocation(line: 175, column: 5, scope: !541)
!544 = !DILocation(line: 176, column: 7, scope: !545)
!545 = distinct !DILexicalBlock(scope: !542, file: !135, line: 175, column: 45)
!546 = !DILocation(line: 177, column: 41, scope: !545)
!547 = !DILocation(line: 177, column: 46, scope: !545)
!548 = !DILocation(line: 177, column: 52, scope: !545)
!549 = !DILocation(line: 177, column: 57, scope: !545)
!550 = !DILocation(line: 177, column: 62, scope: !545)
!551 = !DILocation(line: 177, column: 7, scope: !545)
!552 = !DILocation(line: 178, column: 5, scope: !545)
!553 = !DILocation(line: 175, column: 34, scope: !554)
!554 = !DILexicalBlockFile(scope: !542, file: !135, discriminator: 2)
!555 = !DILocation(line: 175, column: 39, scope: !554)
!556 = !DILocation(line: 175, column: 32, scope: !554)
!557 = !DILocation(line: 175, column: 5, scope: !554)
!558 = distinct !{!558, !559}
!559 = !DILocation(line: 175, column: 5, scope: !526)
!560 = !DILocation(line: 179, column: 5, scope: !526)
!561 = !DILocation(line: 181, column: 20, scope: !526)
!562 = !DILocation(line: 181, column: 11, scope: !526)
!563 = !DILocation(line: 181, column: 48, scope: !526)
!564 = !DILocation(line: 180, column: 5, scope: !526)
!565 = !DILocation(line: 182, column: 5, scope: !526)
!566 = !DILocation(line: 183, column: 3, scope: !526)
!567 = !DILocation(line: 184, column: 17, scope: !484)
!568 = !DILocation(line: 184, column: 12, scope: !484)
!569 = !DILocation(line: 184, column: 15, scope: !484)
!570 = !DILocation(line: 185, column: 19, scope: !484)
!571 = !DILocation(line: 185, column: 12, scope: !484)
!572 = !DILocation(line: 185, column: 17, scope: !484)
!573 = !DILocation(line: 186, column: 12, scope: !484)
!574 = !DILocation(line: 186, column: 18, scope: !484)
!575 = !DILocation(line: 187, column: 13, scope: !576)
!576 = distinct !DILexicalBlock(scope: !484, file: !135, line: 187, column: 3)
!577 = !DILocation(line: 187, column: 18, scope: !576)
!578 = !DILocation(line: 187, column: 28, scope: !576)
!579 = !DILocation(line: 187, column: 11, scope: !576)
!580 = !DILocation(line: 187, column: 8, scope: !576)
!581 = !DILocation(line: 187, column: 37, scope: !582)
!582 = !DILexicalBlockFile(scope: !583, file: !135, discriminator: 1)
!583 = distinct !DILexicalBlock(scope: !576, file: !135, line: 187, column: 3)
!584 = !DILocation(line: 187, column: 3, scope: !582)
!585 = !DILocation(line: 188, column: 9, scope: !586)
!586 = distinct !DILexicalBlock(scope: !587, file: !135, line: 188, column: 9)
!587 = distinct !DILexicalBlock(scope: !583, file: !135, line: 187, column: 58)
!588 = !DILocation(line: 188, column: 14, scope: !586)
!589 = !DILocation(line: 188, column: 19, scope: !586)
!590 = !DILocation(line: 188, column: 34, scope: !586)
!591 = !DILocation(line: 188, column: 37, scope: !592)
!592 = !DILexicalBlockFile(scope: !586, file: !135, discriminator: 1)
!593 = !DILocation(line: 188, column: 42, scope: !592)
!594 = !DILocation(line: 188, column: 47, scope: !592)
!595 = !DILocation(line: 188, column: 9, scope: !592)
!596 = !DILocation(line: 188, column: 66, scope: !597)
!597 = !DILexicalBlockFile(scope: !586, file: !135, discriminator: 2)
!598 = !DILocation(line: 189, column: 17, scope: !599)
!599 = distinct !DILexicalBlock(scope: !587, file: !135, line: 189, column: 5)
!600 = !DILocation(line: 189, column: 22, scope: !599)
!601 = !DILocation(line: 189, column: 15, scope: !599)
!602 = !DILocation(line: 189, column: 10, scope: !599)
!603 = !DILocation(line: 189, column: 28, scope: !604)
!604 = !DILexicalBlockFile(scope: !605, file: !135, discriminator: 1)
!605 = distinct !DILexicalBlock(scope: !599, file: !135, line: 189, column: 5)
!606 = !DILocation(line: 189, column: 5, scope: !604)
!607 = !DILocalVariable(name: "possi_iter", scope: !608, file: !135, line: 190, type: !138)
!608 = distinct !DILexicalBlock(scope: !605, file: !135, line: 189, column: 55)
!609 = !DILocation(line: 190, column: 37, scope: !608)
!610 = !DILocation(line: 193, column: 11, scope: !611)
!611 = distinct !DILexicalBlock(scope: !608, file: !135, line: 193, column: 11)
!612 = !DILocation(line: 193, column: 18, scope: !611)
!613 = !DILocation(line: 193, column: 11, scope: !608)
!614 = !DILocation(line: 193, column: 30, scope: !615)
!615 = !DILexicalBlockFile(scope: !611, file: !135, discriminator: 1)
!616 = !DILocation(line: 194, column: 23, scope: !608)
!617 = !DILocation(line: 194, column: 16, scope: !608)
!618 = !DILocation(line: 194, column: 21, scope: !608)
!619 = !DILocation(line: 196, column: 42, scope: !608)
!620 = !DILocation(line: 196, column: 20, scope: !608)
!621 = !DILocation(line: 196, column: 18, scope: !608)
!622 = !DILocation(line: 197, column: 7, scope: !608)
!623 = !DILocation(line: 197, column: 48, scope: !624)
!624 = !DILexicalBlockFile(scope: !608, file: !135, discriminator: 1)
!625 = !DILocation(line: 197, column: 25, scope: !624)
!626 = !DILocation(line: 197, column: 23, scope: !624)
!627 = !DILocation(line: 197, column: 7, scope: !624)
!628 = !DILocation(line: 198, column: 41, scope: !629)
!629 = distinct !DILexicalBlock(scope: !608, file: !135, line: 198, column: 13)
!630 = !DILocation(line: 198, column: 48, scope: !629)
!631 = !DILocation(line: 198, column: 57, scope: !629)
!632 = !DILocation(line: 198, column: 13, scope: !629)
!633 = !DILocation(line: 198, column: 13, scope: !608)
!634 = !DILocation(line: 199, column: 34, scope: !635)
!635 = distinct !DILexicalBlock(scope: !629, file: !135, line: 198, column: 65)
!636 = !DILocation(line: 199, column: 11, scope: !635)
!637 = !DILocation(line: 200, column: 11, scope: !635)
!638 = !DILocation(line: 197, column: 7, scope: !639)
!639 = !DILexicalBlockFile(scope: !608, file: !135, discriminator: 2)
!640 = distinct !{!640, !622}
!641 = !DILocation(line: 202, column: 30, scope: !608)
!642 = !DILocation(line: 202, column: 7, scope: !608)
!643 = !DILocation(line: 205, column: 26, scope: !644)
!644 = distinct !DILexicalBlock(scope: !608, file: !135, line: 205, column: 7)
!645 = !DILocation(line: 205, column: 33, scope: !644)
!646 = !DILocation(line: 205, column: 37, scope: !644)
!647 = !DILocation(line: 205, column: 46, scope: !644)
!648 = !DILocation(line: 205, column: 24, scope: !644)
!649 = !DILocation(line: 205, column: 12, scope: !644)
!650 = !DILocation(line: 206, column: 12, scope: !651)
!651 = distinct !DILexicalBlock(scope: !644, file: !135, line: 205, column: 7)
!652 = !DILocation(line: 205, column: 7, scope: !653)
!653 = !DILexicalBlockFile(scope: !644, file: !135, discriminator: 1)
!654 = !DILocation(line: 208, column: 13, scope: !655)
!655 = distinct !DILexicalBlock(scope: !656, file: !135, line: 208, column: 13)
!656 = distinct !DILexicalBlock(scope: !651, file: !135, line: 207, column: 49)
!657 = !DILocation(line: 208, column: 26, scope: !655)
!658 = !DILocation(line: 208, column: 30, scope: !655)
!659 = !DILocation(line: 208, column: 35, scope: !655)
!660 = !DILocation(line: 208, column: 13, scope: !656)
!661 = !DILocation(line: 208, column: 52, scope: !662)
!662 = !DILexicalBlockFile(scope: !655, file: !135, discriminator: 1)
!663 = !DILocation(line: 209, column: 19, scope: !656)
!664 = !DILocation(line: 209, column: 32, scope: !656)
!665 = !DILocation(line: 209, column: 36, scope: !656)
!666 = !DILocation(line: 209, column: 17, scope: !656)
!667 = !DILocation(line: 210, column: 13, scope: !668)
!668 = distinct !DILexicalBlock(scope: !656, file: !135, line: 210, column: 13)
!669 = !DILocation(line: 210, column: 23, scope: !668)
!670 = !DILocation(line: 210, column: 35, scope: !668)
!671 = !DILocation(line: 210, column: 42, scope: !668)
!672 = !DILocation(line: 210, column: 13, scope: !656)
!673 = !DILocation(line: 211, column: 11, scope: !668)
!674 = !DILocation(line: 214, column: 41, scope: !675)
!675 = distinct !DILexicalBlock(scope: !656, file: !135, line: 214, column: 13)
!676 = !DILocation(line: 214, column: 48, scope: !675)
!677 = !DILocation(line: 214, column: 58, scope: !675)
!678 = !DILocation(line: 214, column: 13, scope: !675)
!679 = !DILocation(line: 214, column: 13, scope: !656)
!680 = !DILocation(line: 215, column: 11, scope: !675)
!681 = !DILocation(line: 216, column: 7, scope: !656)
!682 = !DILocation(line: 207, column: 26, scope: !651)
!683 = !DILocation(line: 207, column: 39, scope: !651)
!684 = !DILocation(line: 207, column: 24, scope: !651)
!685 = !DILocation(line: 205, column: 7, scope: !686)
!686 = !DILexicalBlockFile(scope: !651, file: !135, discriminator: 2)
!687 = distinct !{!687, !688}
!688 = !DILocation(line: 205, column: 7, scope: !608)
!689 = !DILocation(line: 217, column: 5, scope: !608)
!690 = !DILocation(line: 189, column: 42, scope: !691)
!691 = !DILexicalBlockFile(scope: !605, file: !135, discriminator: 2)
!692 = !DILocation(line: 189, column: 49, scope: !691)
!693 = !DILocation(line: 189, column: 40, scope: !691)
!694 = !DILocation(line: 189, column: 5, scope: !691)
!695 = distinct !{!695, !696}
!696 = !DILocation(line: 189, column: 5, scope: !587)
!697 = !DILocation(line: 218, column: 3, scope: !587)
!698 = !DILocation(line: 187, column: 47, scope: !699)
!699 = !DILexicalBlockFile(scope: !583, file: !135, discriminator: 2)
!700 = !DILocation(line: 187, column: 52, scope: !699)
!701 = !DILocation(line: 187, column: 45, scope: !699)
!702 = !DILocation(line: 187, column: 3, scope: !699)
!703 = distinct !{!703, !704}
!704 = !DILocation(line: 187, column: 3, scope: !484)
!705 = !DILocation(line: 220, column: 3, scope: !484)
!706 = !DILocation(line: 220, column: 8, scope: !484)
!707 = !DILocation(line: 220, column: 20, scope: !484)
!708 = !DILocation(line: 220, column: 26, scope: !484)
!709 = !DILocation(line: 221, column: 3, scope: !484)
!710 = !DILocation(line: 222, column: 1, scope: !484)
!711 = distinct !DISubprogram(name: "describedepcon", scope: !135, file: !135, line: 241, type: !712, isLocal: false, isDefinition: true, scopeLine: 241, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !348)
!712 = !DISubroutineType(types: !713)
!713 = !{null, !714, !146}
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64, align: 64)
!715 = !DILocalVariable(name: "addto", arg: 1, scope: !711, file: !135, line: 241, type: !714)
!716 = !DILocation(line: 241, column: 36, scope: !711)
!717 = !DILocalVariable(name: "dep", arg: 2, scope: !711, file: !135, line: 241, type: !146)
!718 = !DILocation(line: 241, column: 62, scope: !711)
!719 = !DILocalVariable(name: "fmt", scope: !711, file: !135, line: 242, type: !159)
!720 = !DILocation(line: 242, column: 15, scope: !711)
!721 = !DILocalVariable(name: "depstr", scope: !711, file: !135, line: 243, type: !527)
!722 = !DILocation(line: 243, column: 17, scope: !711)
!723 = !DILocation(line: 245, column: 11, scope: !711)
!724 = !DILocation(line: 245, column: 16, scope: !711)
!725 = !DILocation(line: 245, column: 3, scope: !711)
!726 = !DILocation(line: 247, column: 11, scope: !727)
!727 = distinct !DILexicalBlock(scope: !711, file: !135, line: 245, column: 22)
!728 = !DILocation(line: 247, column: 9, scope: !727)
!729 = !DILocation(line: 248, column: 5, scope: !727)
!730 = !DILocation(line: 250, column: 11, scope: !727)
!731 = !DILocation(line: 250, column: 9, scope: !727)
!732 = !DILocation(line: 251, column: 5, scope: !727)
!733 = !DILocation(line: 253, column: 11, scope: !727)
!734 = !DILocation(line: 253, column: 9, scope: !727)
!735 = !DILocation(line: 254, column: 5, scope: !727)
!736 = !DILocation(line: 256, column: 11, scope: !727)
!737 = !DILocation(line: 256, column: 9, scope: !727)
!738 = !DILocation(line: 257, column: 5, scope: !727)
!739 = !DILocation(line: 259, column: 11, scope: !727)
!740 = !DILocation(line: 259, column: 9, scope: !727)
!741 = !DILocation(line: 260, column: 5, scope: !727)
!742 = !DILocation(line: 262, column: 11, scope: !727)
!743 = !DILocation(line: 262, column: 9, scope: !727)
!744 = !DILocation(line: 263, column: 5, scope: !727)
!745 = !DILocation(line: 265, column: 11, scope: !727)
!746 = !DILocation(line: 265, column: 9, scope: !727)
!747 = !DILocation(line: 266, column: 5, scope: !727)
!748 = !DILocation(line: 268, column: 69, scope: !727)
!749 = !DILocation(line: 268, column: 74, scope: !727)
!750 = !DILocation(line: 268, column: 5, scope: !727)
!751 = !DILocation(line: 271, column: 29, scope: !711)
!752 = !DILocation(line: 271, column: 3, scope: !711)
!753 = !DILocation(line: 272, column: 3, scope: !711)
!754 = !DILocation(line: 274, column: 17, scope: !711)
!755 = !DILocation(line: 274, column: 24, scope: !711)
!756 = !DILocation(line: 274, column: 38, scope: !711)
!757 = !DILocation(line: 274, column: 43, scope: !711)
!758 = !DILocation(line: 274, column: 29, scope: !711)
!759 = !DILocation(line: 274, column: 70, scope: !711)
!760 = !DILocation(line: 274, column: 3, scope: !761)
!761 = !DILexicalBlockFile(scope: !711, file: !135, discriminator: 1)
!762 = !DILocation(line: 275, column: 3, scope: !711)
!763 = !DILocation(line: 276, column: 1, scope: !711)
!764 = distinct !DISubprogram(name: "depisok", scope: !135, file: !135, line: 302, type: !765, isLocal: false, isDefinition: true, scopeLine: 305, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !348)
!765 = !DISubroutineType(types: !766)
!766 = !{!189, !146, !714, !767, !767, !189}
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64, align: 64)
!768 = !DILocalVariable(name: "dep", arg: 1, scope: !764, file: !135, line: 302, type: !146)
!769 = !DILocation(line: 302, column: 28, scope: !764)
!770 = !DILocalVariable(name: "whynot", arg: 2, scope: !764, file: !135, line: 302, type: !714)
!771 = !DILocation(line: 302, column: 48, scope: !764)
!772 = !DILocalVariable(name: "canfixbyremove", arg: 3, scope: !764, file: !135, line: 303, type: !767)
!773 = !DILocation(line: 303, column: 26, scope: !764)
!774 = !DILocalVariable(name: "canfixbytrigaw", arg: 4, scope: !764, file: !135, line: 303, type: !767)
!775 = !DILocation(line: 303, column: 59, scope: !764)
!776 = !DILocalVariable(name: "allowunconfigd", arg: 5, scope: !764, file: !135, line: 304, type: !189)
!777 = !DILocation(line: 304, column: 13, scope: !764)
!778 = !DILocalVariable(name: "possi", scope: !764, file: !135, line: 306, type: !142)
!779 = !DILocation(line: 306, column: 20, scope: !764)
!780 = !DILocalVariable(name: "provider", scope: !764, file: !135, line: 307, type: !142)
!781 = !DILocation(line: 307, column: 20, scope: !764)
!782 = !DILocalVariable(name: "pkg_pos", scope: !764, file: !135, line: 308, type: !150)
!783 = !DILocation(line: 308, column: 19, scope: !764)
!784 = !DILocalVariable(name: "nconflicts", scope: !764, file: !135, line: 309, type: !169)
!785 = !DILocation(line: 309, column: 7, scope: !764)
!786 = !DILocalVariable(name: "linebuf", scope: !764, file: !135, line: 315, type: !787)
!787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 8192, align: 8, elements: !788)
!788 = !{!789}
!789 = !DISubrange(count: 1024)
!790 = !DILocation(line: 315, column: 8, scope: !764)
!791 = !DILocation(line: 317, column: 7, scope: !792)
!792 = distinct !DILexicalBlock(scope: !764, file: !135, line: 317, column: 7)
!793 = !DILocation(line: 317, column: 12, scope: !792)
!794 = !DILocation(line: 317, column: 17, scope: !792)
!795 = !DILocation(line: 317, column: 32, scope: !792)
!796 = !DILocation(line: 318, column: 7, scope: !792)
!797 = !DILocation(line: 318, column: 12, scope: !792)
!798 = !DILocation(line: 318, column: 17, scope: !792)
!799 = !DILocation(line: 318, column: 35, scope: !792)
!800 = !DILocation(line: 319, column: 7, scope: !792)
!801 = !DILocation(line: 319, column: 12, scope: !792)
!802 = !DILocation(line: 319, column: 17, scope: !792)
!803 = !DILocation(line: 319, column: 31, scope: !792)
!804 = !DILocation(line: 320, column: 7, scope: !792)
!805 = !DILocation(line: 320, column: 12, scope: !792)
!806 = !DILocation(line: 320, column: 17, scope: !792)
!807 = !DILocation(line: 320, column: 34, scope: !792)
!808 = !DILocation(line: 321, column: 7, scope: !792)
!809 = !DILocation(line: 321, column: 12, scope: !792)
!810 = !DILocation(line: 321, column: 17, scope: !792)
!811 = !DILocation(line: 321, column: 35, scope: !792)
!812 = !DILocation(line: 322, column: 7, scope: !792)
!813 = !DILocation(line: 322, column: 12, scope: !792)
!814 = !DILocation(line: 322, column: 17, scope: !792)
!815 = !DILocation(line: 322, column: 33, scope: !792)
!816 = !DILocation(line: 323, column: 7, scope: !792)
!817 = !DILocation(line: 323, column: 12, scope: !792)
!818 = !DILocation(line: 323, column: 17, scope: !792)
!819 = !DILocation(line: 317, column: 7, scope: !820)
!820 = !DILexicalBlockFile(scope: !764, file: !135, discriminator: 1)
!821 = !DILocation(line: 324, column: 75, scope: !792)
!822 = !DILocation(line: 324, column: 80, scope: !792)
!823 = !DILocation(line: 324, column: 5, scope: !792)
!824 = !DILocation(line: 326, column: 7, scope: !825)
!825 = distinct !DILexicalBlock(scope: !764, file: !135, line: 326, column: 7)
!826 = !DILocation(line: 326, column: 7, scope: !764)
!827 = !DILocation(line: 327, column: 6, scope: !825)
!828 = !DILocation(line: 327, column: 21, scope: !825)
!829 = !DILocation(line: 327, column: 5, scope: !825)
!830 = !DILocation(line: 328, column: 7, scope: !831)
!831 = distinct !DILexicalBlock(scope: !764, file: !135, line: 328, column: 7)
!832 = !DILocation(line: 328, column: 7, scope: !764)
!833 = !DILocation(line: 329, column: 6, scope: !831)
!834 = !DILocation(line: 329, column: 21, scope: !831)
!835 = !DILocation(line: 329, column: 5, scope: !831)
!836 = !DILocation(line: 333, column: 11, scope: !764)
!837 = !DILocation(line: 333, column: 16, scope: !764)
!838 = !DILocation(line: 333, column: 20, scope: !764)
!839 = !DILocation(line: 333, column: 32, scope: !764)
!840 = !DILocation(line: 333, column: 3, scope: !764)
!841 = !DILocation(line: 336, column: 5, scope: !842)
!842 = distinct !DILexicalBlock(scope: !764, file: !135, line: 333, column: 40)
!843 = !DILocation(line: 339, column: 13, scope: !842)
!844 = !DILocation(line: 339, column: 18, scope: !842)
!845 = !DILocation(line: 339, column: 22, scope: !842)
!846 = !DILocation(line: 339, column: 5, scope: !842)
!847 = !DILocation(line: 343, column: 7, scope: !848)
!848 = distinct !DILexicalBlock(scope: !842, file: !135, line: 339, column: 30)
!849 = !DILocation(line: 347, column: 11, scope: !850)
!850 = distinct !DILexicalBlock(scope: !848, file: !135, line: 347, column: 11)
!851 = !DILocation(line: 347, column: 16, scope: !850)
!852 = !DILocation(line: 347, column: 21, scope: !850)
!853 = !DILocation(line: 347, column: 39, scope: !850)
!854 = !DILocation(line: 348, column: 11, scope: !850)
!855 = !DILocation(line: 348, column: 16, scope: !850)
!856 = !DILocation(line: 348, column: 21, scope: !850)
!857 = !DILocation(line: 348, column: 38, scope: !850)
!858 = !DILocation(line: 349, column: 11, scope: !850)
!859 = !DILocation(line: 349, column: 16, scope: !850)
!860 = !DILocation(line: 349, column: 21, scope: !850)
!861 = !DILocation(line: 347, column: 11, scope: !862)
!862 = !DILexicalBlockFile(scope: !848, file: !135, discriminator: 1)
!863 = !DILocation(line: 350, column: 9, scope: !850)
!864 = !DILocation(line: 349, column: 24, scope: !865)
!865 = !DILexicalBlockFile(scope: !850, file: !135, discriminator: 1)
!866 = !DILocation(line: 354, column: 7, scope: !848)
!867 = !DILocation(line: 356, column: 80, scope: !848)
!868 = !DILocation(line: 356, column: 85, scope: !848)
!869 = !DILocation(line: 356, column: 89, scope: !848)
!870 = !DILocation(line: 356, column: 7, scope: !848)
!871 = !DILocation(line: 358, column: 5, scope: !842)
!872 = !DILocation(line: 361, column: 5, scope: !842)
!873 = !DILocation(line: 363, column: 78, scope: !842)
!874 = !DILocation(line: 363, column: 83, scope: !842)
!875 = !DILocation(line: 363, column: 87, scope: !842)
!876 = !DILocation(line: 363, column: 99, scope: !842)
!877 = !DILocation(line: 363, column: 5, scope: !842)
!878 = !DILocation(line: 367, column: 16, scope: !764)
!879 = !DILocation(line: 367, column: 3, scope: !764)
!880 = !DILocation(line: 368, column: 19, scope: !764)
!881 = !DILocation(line: 368, column: 3, scope: !764)
!882 = !DILocation(line: 369, column: 18, scope: !764)
!883 = !DILocation(line: 369, column: 26, scope: !764)
!884 = !DILocation(line: 369, column: 3, scope: !764)
!885 = !DILocation(line: 370, column: 19, scope: !764)
!886 = !DILocation(line: 370, column: 3, scope: !764)
!887 = !DILocation(line: 373, column: 7, scope: !888)
!888 = distinct !DILexicalBlock(scope: !764, file: !135, line: 373, column: 7)
!889 = !DILocation(line: 373, column: 12, scope: !888)
!890 = !DILocation(line: 373, column: 17, scope: !888)
!891 = !DILocation(line: 373, column: 32, scope: !888)
!892 = !DILocation(line: 373, column: 35, scope: !893)
!893 = !DILexicalBlockFile(scope: !888, file: !135, discriminator: 1)
!894 = !DILocation(line: 373, column: 40, scope: !893)
!895 = !DILocation(line: 373, column: 45, scope: !893)
!896 = !DILocation(line: 373, column: 63, scope: !893)
!897 = !DILocation(line: 374, column: 7, scope: !888)
!898 = !DILocation(line: 374, column: 12, scope: !888)
!899 = !DILocation(line: 374, column: 17, scope: !888)
!900 = !DILocation(line: 374, column: 35, scope: !888)
!901 = !DILocation(line: 374, column: 38, scope: !893)
!902 = !DILocation(line: 374, column: 43, scope: !893)
!903 = !DILocation(line: 374, column: 48, scope: !893)
!904 = !DILocation(line: 373, column: 7, scope: !905)
!905 = !DILexicalBlockFile(scope: !764, file: !135, discriminator: 2)
!906 = !DILocation(line: 380, column: 17, scope: !907)
!907 = distinct !DILexicalBlock(scope: !908, file: !135, line: 380, column: 5)
!908 = distinct !DILexicalBlock(scope: !888, file: !135, line: 374, column: 66)
!909 = !DILocation(line: 380, column: 22, scope: !907)
!910 = !DILocation(line: 380, column: 15, scope: !907)
!911 = !DILocation(line: 380, column: 10, scope: !907)
!912 = !DILocation(line: 380, column: 28, scope: !913)
!913 = !DILexicalBlockFile(scope: !914, file: !135, discriminator: 1)
!914 = distinct !DILexicalBlock(scope: !907, file: !135, line: 380, column: 5)
!915 = !DILocation(line: 380, column: 5, scope: !913)
!916 = !DILocalVariable(name: "possi_iter", scope: !917, file: !135, line: 381, type: !138)
!917 = distinct !DILexicalBlock(scope: !914, file: !135, line: 380, column: 55)
!918 = !DILocation(line: 381, column: 37, scope: !917)
!919 = !DILocation(line: 383, column: 42, scope: !917)
!920 = !DILocation(line: 383, column: 20, scope: !917)
!921 = !DILocation(line: 383, column: 18, scope: !917)
!922 = !DILocation(line: 384, column: 7, scope: !917)
!923 = !DILocation(line: 384, column: 48, scope: !924)
!924 = !DILexicalBlockFile(scope: !917, file: !135, discriminator: 1)
!925 = !DILocation(line: 384, column: 25, scope: !924)
!926 = !DILocation(line: 384, column: 23, scope: !924)
!927 = !DILocation(line: 384, column: 7, scope: !924)
!928 = !DILocation(line: 385, column: 17, scope: !929)
!929 = distinct !DILexicalBlock(scope: !917, file: !135, line: 384, column: 62)
!930 = !DILocation(line: 385, column: 26, scope: !929)
!931 = !DILocation(line: 385, column: 38, scope: !929)
!932 = !DILocation(line: 385, column: 9, scope: !929)
!933 = !DILocation(line: 387, column: 19, scope: !934)
!934 = distinct !DILexicalBlock(scope: !929, file: !135, line: 385, column: 46)
!935 = !DILocation(line: 387, column: 28, scope: !934)
!936 = !DILocation(line: 388, column: 28, scope: !934)
!937 = !DILocation(line: 388, column: 19, scope: !934)
!938 = !DILocation(line: 387, column: 11, scope: !939)
!939 = !DILexicalBlockFile(scope: !934, file: !135, discriminator: 1)
!940 = !DILocation(line: 389, column: 11, scope: !934)
!941 = !DILocation(line: 391, column: 19, scope: !934)
!942 = !DILocation(line: 391, column: 28, scope: !934)
!943 = !DILocation(line: 392, column: 28, scope: !934)
!944 = !DILocation(line: 392, column: 19, scope: !934)
!945 = !DILocation(line: 391, column: 11, scope: !939)
!946 = !DILocation(line: 393, column: 11, scope: !934)
!947 = !DILocation(line: 395, column: 33, scope: !948)
!948 = distinct !DILexicalBlock(scope: !934, file: !135, line: 395, column: 15)
!949 = !DILocation(line: 395, column: 42, scope: !948)
!950 = !DILocation(line: 395, column: 53, scope: !948)
!951 = !DILocation(line: 395, column: 15, scope: !948)
!952 = !DILocation(line: 395, column: 15, scope: !934)
!953 = !DILocation(line: 396, column: 36, scope: !954)
!954 = distinct !DILexicalBlock(scope: !948, file: !135, line: 395, column: 61)
!955 = !DILocation(line: 396, column: 13, scope: !954)
!956 = !DILocation(line: 397, column: 13, scope: !954)
!957 = !DILocation(line: 399, column: 19, scope: !934)
!958 = !DILocation(line: 399, column: 28, scope: !934)
!959 = !DILocation(line: 401, column: 31, scope: !934)
!960 = !DILocation(line: 401, column: 41, scope: !934)
!961 = !DILocation(line: 401, column: 50, scope: !934)
!962 = !DILocation(line: 401, column: 19, scope: !934)
!963 = !DILocation(line: 402, column: 36, scope: !934)
!964 = !DILocation(line: 402, column: 45, scope: !934)
!965 = !DILocation(line: 402, column: 55, scope: !934)
!966 = !DILocation(line: 402, column: 19, scope: !934)
!967 = !DILocation(line: 399, column: 11, scope: !939)
!968 = !DILocation(line: 403, column: 11, scope: !934)
!969 = !DILocation(line: 406, column: 19, scope: !934)
!970 = !DILocation(line: 406, column: 28, scope: !934)
!971 = !DILocation(line: 406, column: 11, scope: !934)
!972 = !DILocation(line: 409, column: 35, scope: !973)
!973 = distinct !DILexicalBlock(scope: !974, file: !135, line: 409, column: 17)
!974 = distinct !DILexicalBlock(scope: !934, file: !135, line: 406, column: 36)
!975 = !DILocation(line: 409, column: 44, scope: !973)
!976 = !DILocation(line: 409, column: 55, scope: !973)
!977 = !DILocation(line: 409, column: 17, scope: !973)
!978 = !DILocation(line: 409, column: 17, scope: !974)
!979 = !DILocation(line: 410, column: 38, scope: !980)
!980 = distinct !DILexicalBlock(scope: !973, file: !135, line: 409, column: 63)
!981 = !DILocation(line: 410, column: 15, scope: !980)
!982 = !DILocation(line: 411, column: 15, scope: !980)
!983 = !DILocation(line: 413, column: 21, scope: !974)
!984 = !DILocation(line: 413, column: 30, scope: !974)
!985 = !DILocation(line: 415, column: 30, scope: !974)
!986 = !DILocation(line: 415, column: 21, scope: !974)
!987 = !DILocation(line: 416, column: 38, scope: !974)
!988 = !DILocation(line: 416, column: 47, scope: !974)
!989 = !DILocation(line: 416, column: 57, scope: !974)
!990 = !DILocation(line: 416, column: 21, scope: !974)
!991 = !DILocation(line: 413, column: 13, scope: !992)
!992 = !DILexicalBlockFile(scope: !974, file: !135, discriminator: 1)
!993 = !DILocation(line: 417, column: 13, scope: !974)
!994 = !DILocation(line: 422, column: 13, scope: !974)
!995 = !DILocation(line: 422, column: 22, scope: !974)
!996 = !DILocation(line: 423, column: 13, scope: !974)
!997 = !DILocation(line: 425, column: 19, scope: !998)
!998 = distinct !DILexicalBlock(scope: !974, file: !135, line: 425, column: 19)
!999 = !DILocation(line: 425, column: 34, scope: !998)
!1000 = !DILocation(line: 425, column: 55, scope: !1001)
!1001 = !DILexicalBlockFile(scope: !998, file: !135, discriminator: 1)
!1002 = !DILocation(line: 425, column: 64, scope: !1001)
!1003 = !DILocation(line: 425, column: 75, scope: !1001)
!1004 = !DILocation(line: 425, column: 37, scope: !1001)
!1005 = !DILocation(line: 425, column: 19, scope: !1001)
!1006 = !DILocation(line: 426, column: 35, scope: !998)
!1007 = !DILocation(line: 426, column: 18, scope: !998)
!1008 = !DILocation(line: 426, column: 33, scope: !998)
!1009 = !DILocation(line: 426, column: 17, scope: !998)
!1010 = !DILocation(line: 425, column: 80, scope: !1011)
!1011 = !DILexicalBlockFile(scope: !998, file: !135, discriminator: 2)
!1012 = !DILocation(line: 430, column: 17, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !974, file: !135, line: 430, column: 17)
!1014 = !DILocation(line: 430, column: 17, scope: !974)
!1015 = !DILocation(line: 431, column: 49, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1017, file: !135, line: 431, column: 19)
!1017 = distinct !DILexicalBlock(scope: !1013, file: !135, line: 430, column: 33)
!1018 = !DILocation(line: 431, column: 58, scope: !1016)
!1019 = !DILocation(line: 431, column: 20, scope: !1016)
!1020 = !DILocation(line: 431, column: 19, scope: !1017)
!1021 = !DILocation(line: 432, column: 25, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1016, file: !135, line: 431, column: 74)
!1023 = !DILocation(line: 432, column: 34, scope: !1022)
!1024 = !DILocation(line: 434, column: 34, scope: !1022)
!1025 = !DILocation(line: 434, column: 25, scope: !1022)
!1026 = !DILocation(line: 432, column: 17, scope: !1027)
!1027 = !DILexicalBlockFile(scope: !1022, file: !135, discriminator: 1)
!1028 = !DILocation(line: 435, column: 17, scope: !1022)
!1029 = !DILocation(line: 436, column: 45, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1016, file: !135, line: 436, column: 26)
!1031 = !DILocation(line: 436, column: 54, scope: !1030)
!1032 = !DILocation(line: 436, column: 65, scope: !1030)
!1033 = !DILocation(line: 436, column: 27, scope: !1030)
!1034 = !DILocation(line: 436, column: 26, scope: !1016)
!1035 = !DILocation(line: 437, column: 25, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1030, file: !135, line: 436, column: 73)
!1037 = !DILocation(line: 437, column: 34, scope: !1036)
!1038 = !DILocation(line: 439, column: 34, scope: !1036)
!1039 = !DILocation(line: 439, column: 25, scope: !1036)
!1040 = !DILocation(line: 440, column: 42, scope: !1036)
!1041 = !DILocation(line: 440, column: 51, scope: !1036)
!1042 = !DILocation(line: 440, column: 61, scope: !1036)
!1043 = !DILocation(line: 440, column: 25, scope: !1036)
!1044 = !DILocation(line: 437, column: 17, scope: !1045)
!1045 = !DILexicalBlockFile(scope: !1036, file: !135, discriminator: 1)
!1046 = !DILocation(line: 442, column: 17, scope: !1036)
!1047 = !DILocation(line: 443, column: 48, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1030, file: !135, line: 443, column: 26)
!1049 = !DILocation(line: 443, column: 57, scope: !1048)
!1050 = !DILocation(line: 444, column: 47, scope: !1048)
!1051 = !DILocation(line: 444, column: 54, scope: !1048)
!1052 = !DILocation(line: 445, column: 48, scope: !1048)
!1053 = !DILocation(line: 445, column: 55, scope: !1048)
!1054 = !DILocation(line: 443, column: 27, scope: !1048)
!1055 = !DILocation(line: 443, column: 26, scope: !1030)
!1056 = !DILocation(line: 446, column: 25, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1048, file: !135, line: 445, column: 65)
!1058 = !DILocation(line: 446, column: 34, scope: !1057)
!1059 = !DILocation(line: 448, column: 34, scope: !1057)
!1060 = !DILocation(line: 448, column: 25, scope: !1057)
!1061 = !DILocation(line: 449, column: 42, scope: !1057)
!1062 = !DILocation(line: 449, column: 51, scope: !1057)
!1063 = !DILocation(line: 449, column: 25, scope: !1057)
!1064 = !DILocation(line: 446, column: 17, scope: !1065)
!1065 = !DILexicalBlockFile(scope: !1057, file: !135, discriminator: 1)
!1066 = !DILocation(line: 450, column: 17, scope: !1057)
!1067 = !DILocation(line: 452, column: 40, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1048, file: !135, line: 451, column: 22)
!1069 = !DILocation(line: 452, column: 17, scope: !1068)
!1070 = !DILocation(line: 453, column: 17, scope: !1068)
!1071 = !DILocation(line: 430, column: 17, scope: !1072)
!1072 = !DILexicalBlockFile(scope: !1013, file: !135, discriminator: 1)
!1073 = !DILocation(line: 458, column: 21, scope: !974)
!1074 = !DILocation(line: 458, column: 30, scope: !974)
!1075 = !DILocation(line: 459, column: 30, scope: !974)
!1076 = !DILocation(line: 459, column: 21, scope: !974)
!1077 = !DILocation(line: 460, column: 43, scope: !974)
!1078 = !DILocation(line: 460, column: 52, scope: !974)
!1079 = !DILocation(line: 460, column: 29, scope: !974)
!1080 = !DILocation(line: 460, column: 21, scope: !974)
!1081 = !DILocation(line: 458, column: 13, scope: !992)
!1082 = !DILocation(line: 461, column: 13, scope: !974)
!1083 = !DILocation(line: 463, column: 11, scope: !934)
!1084 = !DILocation(line: 465, column: 83, scope: !934)
!1085 = !DILocation(line: 465, column: 92, scope: !934)
!1086 = !DILocation(line: 465, column: 104, scope: !934)
!1087 = !DILocation(line: 465, column: 11, scope: !934)
!1088 = !DILocation(line: 467, column: 24, scope: !929)
!1089 = !DILocation(line: 467, column: 32, scope: !929)
!1090 = !DILocation(line: 467, column: 48, scope: !929)
!1091 = !DILocation(line: 467, column: 41, scope: !929)
!1092 = !DILocation(line: 467, column: 9, scope: !1093)
!1093 = !DILexicalBlockFile(scope: !929, file: !135, discriminator: 1)
!1094 = !DILocation(line: 384, column: 7, scope: !1095)
!1095 = !DILexicalBlockFile(scope: !917, file: !135, discriminator: 2)
!1096 = distinct !{!1096, !922}
!1097 = !DILocation(line: 469, column: 30, scope: !917)
!1098 = !DILocation(line: 469, column: 7, scope: !917)
!1099 = !DILocation(line: 472, column: 25, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !917, file: !135, line: 472, column: 9)
!1101 = !DILocation(line: 472, column: 32, scope: !1100)
!1102 = !DILocation(line: 472, column: 36, scope: !1100)
!1103 = !DILocation(line: 472, column: 45, scope: !1100)
!1104 = !DILocation(line: 472, column: 23, scope: !1100)
!1105 = !DILocation(line: 472, column: 14, scope: !1100)
!1106 = !DILocation(line: 473, column: 14, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1100, file: !135, line: 472, column: 9)
!1108 = !DILocation(line: 472, column: 9, scope: !1109)
!1109 = !DILexicalBlockFile(scope: !1100, file: !135, discriminator: 1)
!1110 = !DILocation(line: 475, column: 15, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1112, file: !135, line: 475, column: 15)
!1112 = distinct !DILexicalBlock(scope: !1107, file: !135, line: 474, column: 45)
!1113 = !DILocation(line: 475, column: 25, scope: !1111)
!1114 = !DILocation(line: 475, column: 29, scope: !1111)
!1115 = !DILocation(line: 475, column: 34, scope: !1111)
!1116 = !DILocation(line: 475, column: 15, scope: !1112)
!1117 = !DILocation(line: 475, column: 51, scope: !1118)
!1118 = !DILexicalBlockFile(scope: !1111, file: !135, discriminator: 1)
!1119 = !DILocation(line: 476, column: 47, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1112, file: !135, line: 476, column: 15)
!1121 = !DILocation(line: 476, column: 54, scope: !1120)
!1122 = !DILocation(line: 476, column: 16, scope: !1120)
!1123 = !DILocation(line: 476, column: 15, scope: !1112)
!1124 = !DILocation(line: 477, column: 13, scope: !1120)
!1125 = !DILocation(line: 478, column: 15, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1112, file: !135, line: 478, column: 15)
!1127 = !DILocation(line: 478, column: 25, scope: !1126)
!1128 = !DILocation(line: 478, column: 29, scope: !1126)
!1129 = !DILocation(line: 478, column: 33, scope: !1126)
!1130 = !DILocation(line: 478, column: 45, scope: !1126)
!1131 = !DILocation(line: 478, column: 52, scope: !1126)
!1132 = !DILocation(line: 478, column: 15, scope: !1112)
!1133 = !DILocation(line: 479, column: 13, scope: !1126)
!1134 = !DILocation(line: 480, column: 9, scope: !1112)
!1135 = !DILocation(line: 474, column: 25, scope: !1107)
!1136 = !DILocation(line: 474, column: 35, scope: !1107)
!1137 = !DILocation(line: 474, column: 23, scope: !1107)
!1138 = !DILocation(line: 472, column: 9, scope: !1139)
!1139 = !DILexicalBlockFile(scope: !1107, file: !135, discriminator: 2)
!1140 = distinct !{!1140, !1141}
!1141 = !DILocation(line: 472, column: 9, scope: !917)
!1142 = !DILocation(line: 483, column: 25, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !917, file: !135, line: 483, column: 9)
!1144 = !DILocation(line: 483, column: 32, scope: !1143)
!1145 = !DILocation(line: 483, column: 36, scope: !1143)
!1146 = !DILocation(line: 483, column: 45, scope: !1143)
!1147 = !DILocation(line: 483, column: 23, scope: !1143)
!1148 = !DILocation(line: 483, column: 14, scope: !1143)
!1149 = !DILocation(line: 484, column: 14, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1143, file: !135, line: 483, column: 9)
!1151 = !DILocation(line: 483, column: 9, scope: !1152)
!1152 = !DILexicalBlockFile(scope: !1143, file: !135, discriminator: 1)
!1153 = !DILocation(line: 486, column: 15, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1155, file: !135, line: 486, column: 15)
!1155 = distinct !DILexicalBlock(scope: !1150, file: !135, line: 485, column: 45)
!1156 = !DILocation(line: 486, column: 25, scope: !1154)
!1157 = !DILocation(line: 486, column: 29, scope: !1154)
!1158 = !DILocation(line: 486, column: 34, scope: !1154)
!1159 = !DILocation(line: 486, column: 15, scope: !1155)
!1160 = !DILocation(line: 486, column: 51, scope: !1161)
!1161 = !DILexicalBlockFile(scope: !1154, file: !135, discriminator: 1)
!1162 = !DILocation(line: 487, column: 47, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1155, file: !135, line: 487, column: 15)
!1164 = !DILocation(line: 487, column: 54, scope: !1163)
!1165 = !DILocation(line: 487, column: 16, scope: !1163)
!1166 = !DILocation(line: 487, column: 15, scope: !1155)
!1167 = !DILocation(line: 488, column: 13, scope: !1163)
!1168 = !DILocation(line: 490, column: 19, scope: !1155)
!1169 = !DILocation(line: 490, column: 29, scope: !1155)
!1170 = !DILocation(line: 490, column: 33, scope: !1155)
!1171 = !DILocation(line: 490, column: 37, scope: !1155)
!1172 = !DILocation(line: 490, column: 49, scope: !1155)
!1173 = !DILocation(line: 490, column: 11, scope: !1155)
!1174 = !DILocation(line: 496, column: 13, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1155, file: !135, line: 490, column: 57)
!1176 = !DILocation(line: 498, column: 21, scope: !1175)
!1177 = !DILocation(line: 498, column: 30, scope: !1175)
!1178 = !DILocation(line: 499, column: 30, scope: !1175)
!1179 = !DILocation(line: 499, column: 40, scope: !1175)
!1180 = !DILocation(line: 499, column: 44, scope: !1175)
!1181 = !DILocation(line: 499, column: 21, scope: !1175)
!1182 = !DILocation(line: 500, column: 21, scope: !1175)
!1183 = !DILocation(line: 500, column: 28, scope: !1175)
!1184 = !DILocation(line: 500, column: 32, scope: !1175)
!1185 = !DILocation(line: 498, column: 13, scope: !1186)
!1186 = !DILexicalBlockFile(scope: !1175, file: !135, discriminator: 1)
!1187 = !DILocation(line: 501, column: 13, scope: !1175)
!1188 = !DILocation(line: 503, column: 21, scope: !1175)
!1189 = !DILocation(line: 503, column: 30, scope: !1175)
!1190 = !DILocation(line: 504, column: 30, scope: !1175)
!1191 = !DILocation(line: 504, column: 40, scope: !1175)
!1192 = !DILocation(line: 504, column: 44, scope: !1175)
!1193 = !DILocation(line: 504, column: 21, scope: !1175)
!1194 = !DILocation(line: 505, column: 21, scope: !1175)
!1195 = !DILocation(line: 505, column: 28, scope: !1175)
!1196 = !DILocation(line: 505, column: 32, scope: !1175)
!1197 = !DILocation(line: 503, column: 13, scope: !1186)
!1198 = !DILocation(line: 506, column: 13, scope: !1175)
!1199 = !DILocation(line: 509, column: 17, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1175, file: !135, line: 509, column: 17)
!1201 = !DILocation(line: 509, column: 27, scope: !1200)
!1202 = !DILocation(line: 509, column: 31, scope: !1200)
!1203 = !DILocation(line: 509, column: 35, scope: !1200)
!1204 = !DILocation(line: 509, column: 42, scope: !1200)
!1205 = !DILocation(line: 509, column: 64, scope: !1200)
!1206 = !DILocation(line: 510, column: 17, scope: !1200)
!1207 = !DILocation(line: 510, column: 27, scope: !1200)
!1208 = !DILocation(line: 510, column: 31, scope: !1200)
!1209 = !DILocation(line: 510, column: 35, scope: !1200)
!1210 = !DILocation(line: 510, column: 42, scope: !1200)
!1211 = !DILocation(line: 509, column: 17, scope: !1186)
!1212 = !DILocation(line: 511, column: 15, scope: !1200)
!1213 = !DILocation(line: 512, column: 17, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1175, file: !135, line: 512, column: 17)
!1215 = !DILocation(line: 512, column: 27, scope: !1214)
!1216 = !DILocation(line: 512, column: 31, scope: !1214)
!1217 = !DILocation(line: 512, column: 35, scope: !1214)
!1218 = !DILocation(line: 512, column: 42, scope: !1214)
!1219 = !DILocation(line: 512, column: 17, scope: !1175)
!1220 = !DILocation(line: 513, column: 33, scope: !1214)
!1221 = !DILocation(line: 513, column: 43, scope: !1214)
!1222 = !DILocation(line: 513, column: 47, scope: !1214)
!1223 = !DILocation(line: 513, column: 16, scope: !1214)
!1224 = !DILocation(line: 513, column: 31, scope: !1214)
!1225 = !DILocation(line: 513, column: 15, scope: !1214)
!1226 = !DILocation(line: 514, column: 21, scope: !1175)
!1227 = !DILocation(line: 514, column: 30, scope: !1175)
!1228 = !DILocation(line: 515, column: 30, scope: !1175)
!1229 = !DILocation(line: 515, column: 40, scope: !1175)
!1230 = !DILocation(line: 515, column: 44, scope: !1175)
!1231 = !DILocation(line: 515, column: 21, scope: !1175)
!1232 = !DILocation(line: 516, column: 21, scope: !1175)
!1233 = !DILocation(line: 516, column: 28, scope: !1175)
!1234 = !DILocation(line: 516, column: 32, scope: !1175)
!1235 = !DILocation(line: 517, column: 43, scope: !1175)
!1236 = !DILocation(line: 517, column: 53, scope: !1175)
!1237 = !DILocation(line: 517, column: 57, scope: !1175)
!1238 = !DILocation(line: 517, column: 61, scope: !1175)
!1239 = !DILocation(line: 517, column: 29, scope: !1175)
!1240 = !DILocation(line: 517, column: 21, scope: !1175)
!1241 = !DILocation(line: 514, column: 13, scope: !1186)
!1242 = !DILocation(line: 518, column: 13, scope: !1175)
!1243 = !DILocation(line: 520, column: 57, scope: !1175)
!1244 = !DILocation(line: 520, column: 67, scope: !1175)
!1245 = !DILocation(line: 520, column: 71, scope: !1175)
!1246 = !DILocation(line: 520, column: 75, scope: !1175)
!1247 = !DILocation(line: 520, column: 87, scope: !1175)
!1248 = !DILocation(line: 520, column: 13, scope: !1175)
!1249 = !DILocation(line: 523, column: 26, scope: !1155)
!1250 = !DILocation(line: 523, column: 34, scope: !1155)
!1251 = !DILocation(line: 523, column: 50, scope: !1155)
!1252 = !DILocation(line: 523, column: 43, scope: !1155)
!1253 = !DILocation(line: 523, column: 11, scope: !1254)
!1254 = !DILexicalBlockFile(scope: !1155, file: !135, discriminator: 1)
!1255 = !DILocation(line: 524, column: 9, scope: !1155)
!1256 = !DILocation(line: 485, column: 25, scope: !1150)
!1257 = !DILocation(line: 485, column: 35, scope: !1150)
!1258 = !DILocation(line: 485, column: 23, scope: !1150)
!1259 = !DILocation(line: 483, column: 9, scope: !1260)
!1260 = !DILexicalBlockFile(scope: !1150, file: !135, discriminator: 2)
!1261 = distinct !{!1261, !1262}
!1262 = !DILocation(line: 483, column: 9, scope: !917)
!1263 = !DILocation(line: 526, column: 14, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !917, file: !135, line: 526, column: 13)
!1265 = !DILocation(line: 526, column: 13, scope: !917)
!1266 = !DILocation(line: 529, column: 19, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1264, file: !135, line: 526, column: 24)
!1268 = !DILocation(line: 529, column: 28, scope: !1267)
!1269 = !DILocation(line: 529, column: 69, scope: !1267)
!1270 = !DILocation(line: 529, column: 76, scope: !1267)
!1271 = !DILocation(line: 529, column: 80, scope: !1267)
!1272 = !DILocation(line: 529, column: 11, scope: !1273)
!1273 = !DILexicalBlockFile(scope: !1267, file: !135, discriminator: 1)
!1274 = !DILocation(line: 530, column: 26, scope: !1267)
!1275 = !DILocation(line: 530, column: 34, scope: !1267)
!1276 = !DILocation(line: 530, column: 50, scope: !1267)
!1277 = !DILocation(line: 530, column: 43, scope: !1267)
!1278 = !DILocation(line: 530, column: 11, scope: !1273)
!1279 = !DILocation(line: 531, column: 9, scope: !1267)
!1280 = !DILocation(line: 532, column: 5, scope: !917)
!1281 = !DILocation(line: 380, column: 42, scope: !1282)
!1282 = !DILexicalBlockFile(scope: !914, file: !135, discriminator: 2)
!1283 = !DILocation(line: 380, column: 49, scope: !1282)
!1284 = !DILocation(line: 380, column: 40, scope: !1282)
!1285 = !DILocation(line: 380, column: 5, scope: !1282)
!1286 = distinct !{!1286, !1287}
!1287 = !DILocation(line: 380, column: 5, scope: !908)
!1288 = !DILocation(line: 534, column: 5, scope: !908)
!1289 = !DILocation(line: 542, column: 12, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !888, file: !135, line: 535, column: 10)
!1291 = !DILocation(line: 542, column: 17, scope: !1290)
!1292 = !DILocation(line: 542, column: 10, scope: !1290)
!1293 = !DILocation(line: 543, column: 15, scope: !1290)
!1294 = !DILocation(line: 545, column: 9, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1290, file: !135, line: 545, column: 9)
!1296 = !DILocation(line: 545, column: 16, scope: !1295)
!1297 = !DILocation(line: 545, column: 22, scope: !1295)
!1298 = !DILocation(line: 545, column: 29, scope: !1295)
!1299 = !DILocation(line: 545, column: 33, scope: !1295)
!1300 = !DILocation(line: 545, column: 37, scope: !1295)
!1301 = !DILocation(line: 545, column: 19, scope: !1295)
!1302 = !DILocation(line: 545, column: 9, scope: !1290)
!1303 = !DILocalVariable(name: "possi_iter", scope: !1304, file: !135, line: 546, type: !138)
!1304 = distinct !DILexicalBlock(scope: !1295, file: !135, line: 545, column: 42)
!1305 = !DILocation(line: 546, column: 37, scope: !1304)
!1306 = !DILocation(line: 553, column: 42, scope: !1304)
!1307 = !DILocation(line: 553, column: 20, scope: !1304)
!1308 = !DILocation(line: 553, column: 18, scope: !1304)
!1309 = !DILocation(line: 554, column: 7, scope: !1304)
!1310 = !DILocation(line: 554, column: 48, scope: !1311)
!1311 = !DILexicalBlockFile(scope: !1304, file: !135, discriminator: 1)
!1312 = !DILocation(line: 554, column: 25, scope: !1311)
!1313 = !DILocation(line: 554, column: 23, scope: !1311)
!1314 = !DILocation(line: 554, column: 7, scope: !1311)
!1315 = !DILocation(line: 555, column: 17, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1304, file: !135, line: 554, column: 62)
!1317 = !DILocation(line: 555, column: 26, scope: !1316)
!1318 = !DILocation(line: 555, column: 38, scope: !1316)
!1319 = !DILocation(line: 555, column: 9, scope: !1316)
!1320 = !DILocation(line: 557, column: 11, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1316, file: !135, line: 555, column: 46)
!1322 = !DILocation(line: 559, column: 34, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1321, file: !135, line: 559, column: 15)
!1324 = !DILocation(line: 559, column: 43, scope: !1323)
!1325 = !DILocation(line: 559, column: 54, scope: !1323)
!1326 = !DILocation(line: 559, column: 16, scope: !1323)
!1327 = !DILocation(line: 559, column: 15, scope: !1321)
!1328 = !DILocation(line: 560, column: 13, scope: !1323)
!1329 = !DILocation(line: 561, column: 19, scope: !1321)
!1330 = !DILocation(line: 561, column: 28, scope: !1321)
!1331 = !DILocation(line: 562, column: 31, scope: !1321)
!1332 = !DILocation(line: 562, column: 41, scope: !1321)
!1333 = !DILocation(line: 562, column: 50, scope: !1321)
!1334 = !DILocation(line: 562, column: 19, scope: !1321)
!1335 = !DILocation(line: 563, column: 36, scope: !1321)
!1336 = !DILocation(line: 563, column: 45, scope: !1321)
!1337 = !DILocation(line: 563, column: 55, scope: !1321)
!1338 = !DILocation(line: 563, column: 19, scope: !1321)
!1339 = !DILocation(line: 561, column: 11, scope: !1340)
!1340 = !DILexicalBlockFile(scope: !1321, file: !135, discriminator: 1)
!1341 = !DILocation(line: 564, column: 26, scope: !1321)
!1342 = !DILocation(line: 564, column: 34, scope: !1321)
!1343 = !DILocation(line: 564, column: 50, scope: !1321)
!1344 = !DILocation(line: 564, column: 43, scope: !1321)
!1345 = !DILocation(line: 564, column: 11, scope: !1340)
!1346 = !DILocation(line: 565, column: 16, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1321, file: !135, line: 565, column: 15)
!1348 = !DILocation(line: 565, column: 15, scope: !1321)
!1349 = !DILocation(line: 566, column: 36, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1347, file: !135, line: 565, column: 32)
!1351 = !DILocation(line: 566, column: 13, scope: !1350)
!1352 = !DILocation(line: 567, column: 13, scope: !1350)
!1353 = !DILocation(line: 569, column: 21, scope: !1321)
!1354 = !DILocation(line: 570, column: 29, scope: !1321)
!1355 = !DILocation(line: 570, column: 12, scope: !1321)
!1356 = !DILocation(line: 570, column: 27, scope: !1321)
!1357 = !DILocation(line: 571, column: 11, scope: !1321)
!1358 = !DILocation(line: 573, column: 15, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1321, file: !135, line: 573, column: 15)
!1360 = !DILocation(line: 573, column: 20, scope: !1359)
!1361 = !DILocation(line: 573, column: 25, scope: !1359)
!1362 = !DILocation(line: 573, column: 15, scope: !1321)
!1363 = !DILocation(line: 574, column: 13, scope: !1359)
!1364 = !DILocation(line: 573, column: 28, scope: !1365)
!1365 = !DILexicalBlockFile(scope: !1359, file: !135, discriminator: 1)
!1366 = !DILocation(line: 578, column: 19, scope: !1321)
!1367 = !DILocation(line: 578, column: 28, scope: !1321)
!1368 = !DILocation(line: 578, column: 11, scope: !1321)
!1369 = !DILocation(line: 581, column: 13, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1321, file: !135, line: 578, column: 36)
!1371 = !DILocation(line: 585, column: 17, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1370, file: !135, line: 585, column: 17)
!1373 = !DILocation(line: 585, column: 22, scope: !1372)
!1374 = !DILocation(line: 585, column: 27, scope: !1372)
!1375 = !DILocation(line: 585, column: 17, scope: !1370)
!1376 = !DILocation(line: 586, column: 15, scope: !1372)
!1377 = !DILocation(line: 585, column: 30, scope: !1378)
!1378 = !DILexicalBlockFile(scope: !1372, file: !135, discriminator: 1)
!1379 = !DILocation(line: 591, column: 36, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1370, file: !135, line: 591, column: 17)
!1381 = !DILocation(line: 591, column: 45, scope: !1380)
!1382 = !DILocation(line: 591, column: 56, scope: !1380)
!1383 = !DILocation(line: 591, column: 18, scope: !1380)
!1384 = !DILocation(line: 591, column: 17, scope: !1370)
!1385 = !DILocation(line: 592, column: 15, scope: !1380)
!1386 = !DILocation(line: 593, column: 21, scope: !1370)
!1387 = !DILocation(line: 593, column: 30, scope: !1370)
!1388 = !DILocation(line: 594, column: 30, scope: !1370)
!1389 = !DILocation(line: 594, column: 21, scope: !1370)
!1390 = !DILocation(line: 595, column: 38, scope: !1370)
!1391 = !DILocation(line: 595, column: 47, scope: !1370)
!1392 = !DILocation(line: 595, column: 57, scope: !1370)
!1393 = !DILocation(line: 595, column: 21, scope: !1370)
!1394 = !DILocation(line: 596, column: 43, scope: !1370)
!1395 = !DILocation(line: 596, column: 52, scope: !1370)
!1396 = !DILocation(line: 596, column: 29, scope: !1370)
!1397 = !DILocation(line: 596, column: 21, scope: !1370)
!1398 = !DILocation(line: 593, column: 13, scope: !1399)
!1399 = !DILexicalBlockFile(scope: !1370, file: !135, discriminator: 1)
!1400 = !DILocation(line: 597, column: 28, scope: !1370)
!1401 = !DILocation(line: 597, column: 36, scope: !1370)
!1402 = !DILocation(line: 597, column: 52, scope: !1370)
!1403 = !DILocation(line: 597, column: 45, scope: !1370)
!1404 = !DILocation(line: 597, column: 13, scope: !1399)
!1405 = !DILocation(line: 598, column: 18, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1370, file: !135, line: 598, column: 17)
!1407 = !DILocation(line: 598, column: 17, scope: !1370)
!1408 = !DILocation(line: 599, column: 38, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1406, file: !135, line: 598, column: 34)
!1410 = !DILocation(line: 599, column: 15, scope: !1409)
!1411 = !DILocation(line: 600, column: 15, scope: !1409)
!1412 = !DILocation(line: 602, column: 23, scope: !1370)
!1413 = !DILocation(line: 603, column: 31, scope: !1370)
!1414 = !DILocation(line: 603, column: 14, scope: !1370)
!1415 = !DILocation(line: 603, column: 29, scope: !1370)
!1416 = !DILocation(line: 604, column: 11, scope: !1370)
!1417 = !DILocation(line: 605, column: 11, scope: !1321)
!1418 = !DILocation(line: 607, column: 83, scope: !1321)
!1419 = !DILocation(line: 607, column: 92, scope: !1321)
!1420 = !DILocation(line: 607, column: 104, scope: !1321)
!1421 = !DILocation(line: 607, column: 11, scope: !1321)
!1422 = !DILocation(line: 554, column: 7, scope: !1423)
!1423 = !DILexicalBlockFile(scope: !1304, file: !135, discriminator: 2)
!1424 = distinct !{!1424, !1309}
!1425 = !DILocation(line: 610, column: 30, scope: !1304)
!1426 = !DILocation(line: 610, column: 7, scope: !1304)
!1427 = !DILocation(line: 611, column: 5, scope: !1304)
!1428 = !DILocation(line: 614, column: 23, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1290, file: !135, line: 614, column: 7)
!1430 = !DILocation(line: 614, column: 30, scope: !1429)
!1431 = !DILocation(line: 614, column: 34, scope: !1429)
!1432 = !DILocation(line: 614, column: 43, scope: !1429)
!1433 = !DILocation(line: 614, column: 21, scope: !1429)
!1434 = !DILocation(line: 614, column: 12, scope: !1429)
!1435 = !DILocation(line: 615, column: 12, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1429, file: !135, line: 614, column: 7)
!1437 = !DILocation(line: 614, column: 7, scope: !1438)
!1438 = !DILexicalBlockFile(scope: !1429, file: !135, discriminator: 1)
!1439 = !DILocation(line: 617, column: 13, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1441, file: !135, line: 617, column: 13)
!1441 = distinct !DILexicalBlock(scope: !1436, file: !135, line: 616, column: 43)
!1442 = !DILocation(line: 617, column: 23, scope: !1440)
!1443 = !DILocation(line: 617, column: 27, scope: !1440)
!1444 = !DILocation(line: 617, column: 32, scope: !1440)
!1445 = !DILocation(line: 617, column: 13, scope: !1441)
!1446 = !DILocation(line: 617, column: 49, scope: !1447)
!1447 = !DILexicalBlockFile(scope: !1440, file: !135, discriminator: 1)
!1448 = !DILocation(line: 618, column: 13, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1441, file: !135, line: 618, column: 13)
!1450 = !DILocation(line: 618, column: 23, scope: !1449)
!1451 = !DILocation(line: 618, column: 27, scope: !1449)
!1452 = !DILocation(line: 618, column: 31, scope: !1449)
!1453 = !DILocation(line: 618, column: 43, scope: !1449)
!1454 = !DILocation(line: 618, column: 50, scope: !1449)
!1455 = !DILocation(line: 618, column: 13, scope: !1441)
!1456 = !DILocation(line: 619, column: 11, scope: !1449)
!1457 = !DILocation(line: 620, column: 13, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1441, file: !135, line: 620, column: 13)
!1459 = !DILocation(line: 620, column: 23, scope: !1458)
!1460 = !DILocation(line: 620, column: 27, scope: !1458)
!1461 = !DILocation(line: 620, column: 31, scope: !1458)
!1462 = !DILocation(line: 620, column: 38, scope: !1458)
!1463 = !DILocation(line: 620, column: 43, scope: !1458)
!1464 = !DILocation(line: 620, column: 47, scope: !1458)
!1465 = !DILocation(line: 620, column: 35, scope: !1458)
!1466 = !DILocation(line: 620, column: 13, scope: !1441)
!1467 = !DILocation(line: 621, column: 11, scope: !1458)
!1468 = !DILocation(line: 622, column: 45, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1441, file: !135, line: 622, column: 13)
!1470 = !DILocation(line: 622, column: 52, scope: !1469)
!1471 = !DILocation(line: 622, column: 14, scope: !1469)
!1472 = !DILocation(line: 622, column: 13, scope: !1441)
!1473 = !DILocation(line: 623, column: 11, scope: !1469)
!1474 = !DILocation(line: 624, column: 17, scope: !1441)
!1475 = !DILocation(line: 624, column: 26, scope: !1441)
!1476 = !DILocation(line: 625, column: 29, scope: !1441)
!1477 = !DILocation(line: 625, column: 39, scope: !1441)
!1478 = !DILocation(line: 625, column: 43, scope: !1441)
!1479 = !DILocation(line: 625, column: 48, scope: !1441)
!1480 = !DILocation(line: 625, column: 58, scope: !1441)
!1481 = !DILocation(line: 625, column: 62, scope: !1441)
!1482 = !DILocation(line: 625, column: 66, scope: !1441)
!1483 = !DILocation(line: 625, column: 17, scope: !1441)
!1484 = !DILocation(line: 626, column: 45, scope: !1441)
!1485 = !DILocation(line: 626, column: 52, scope: !1441)
!1486 = !DILocation(line: 626, column: 56, scope: !1441)
!1487 = !DILocation(line: 624, column: 9, scope: !1488)
!1488 = !DILexicalBlockFile(scope: !1441, file: !135, discriminator: 1)
!1489 = !DILocation(line: 627, column: 24, scope: !1441)
!1490 = !DILocation(line: 627, column: 32, scope: !1441)
!1491 = !DILocation(line: 627, column: 48, scope: !1441)
!1492 = !DILocation(line: 627, column: 41, scope: !1441)
!1493 = !DILocation(line: 627, column: 9, scope: !1488)
!1494 = !DILocation(line: 629, column: 13, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1441, file: !135, line: 629, column: 13)
!1496 = !DILocation(line: 629, column: 13, scope: !1441)
!1497 = !DILocation(line: 630, column: 12, scope: !1495)
!1498 = !DILocation(line: 630, column: 27, scope: !1495)
!1499 = !DILocation(line: 630, column: 11, scope: !1495)
!1500 = !DILocation(line: 631, column: 9, scope: !1441)
!1501 = !DILocation(line: 616, column: 23, scope: !1436)
!1502 = !DILocation(line: 616, column: 33, scope: !1436)
!1503 = !DILocation(line: 616, column: 21, scope: !1436)
!1504 = !DILocation(line: 614, column: 7, scope: !1505)
!1505 = !DILexicalBlockFile(scope: !1436, file: !135, discriminator: 2)
!1506 = distinct !{!1506, !1507}
!1507 = !DILocation(line: 614, column: 7, scope: !1290)
!1508 = !DILocation(line: 635, column: 23, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1290, file: !135, line: 635, column: 7)
!1510 = !DILocation(line: 635, column: 30, scope: !1509)
!1511 = !DILocation(line: 635, column: 34, scope: !1509)
!1512 = !DILocation(line: 635, column: 43, scope: !1509)
!1513 = !DILocation(line: 635, column: 21, scope: !1509)
!1514 = !DILocation(line: 635, column: 12, scope: !1509)
!1515 = !DILocation(line: 636, column: 12, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1509, file: !135, line: 635, column: 7)
!1517 = !DILocation(line: 635, column: 7, scope: !1518)
!1518 = !DILexicalBlockFile(scope: !1509, file: !135, discriminator: 1)
!1519 = !DILocation(line: 638, column: 13, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1521, file: !135, line: 638, column: 13)
!1521 = distinct !DILexicalBlock(scope: !1516, file: !135, line: 637, column: 43)
!1522 = !DILocation(line: 638, column: 23, scope: !1520)
!1523 = !DILocation(line: 638, column: 27, scope: !1520)
!1524 = !DILocation(line: 638, column: 32, scope: !1520)
!1525 = !DILocation(line: 638, column: 13, scope: !1521)
!1526 = !DILocation(line: 638, column: 49, scope: !1527)
!1527 = !DILexicalBlockFile(scope: !1520, file: !135, discriminator: 1)
!1528 = !DILocation(line: 640, column: 13, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1521, file: !135, line: 640, column: 13)
!1530 = !DILocation(line: 640, column: 23, scope: !1529)
!1531 = !DILocation(line: 640, column: 27, scope: !1529)
!1532 = !DILocation(line: 640, column: 31, scope: !1529)
!1533 = !DILocation(line: 640, column: 38, scope: !1529)
!1534 = !DILocation(line: 640, column: 43, scope: !1529)
!1535 = !DILocation(line: 640, column: 47, scope: !1529)
!1536 = !DILocation(line: 640, column: 35, scope: !1529)
!1537 = !DILocation(line: 640, column: 13, scope: !1521)
!1538 = !DILocation(line: 641, column: 11, scope: !1529)
!1539 = !DILocation(line: 643, column: 45, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1521, file: !135, line: 643, column: 13)
!1541 = !DILocation(line: 643, column: 52, scope: !1540)
!1542 = !DILocation(line: 643, column: 14, scope: !1540)
!1543 = !DILocation(line: 643, column: 13, scope: !1521)
!1544 = !DILocation(line: 644, column: 11, scope: !1540)
!1545 = !DILocation(line: 646, column: 17, scope: !1521)
!1546 = !DILocation(line: 646, column: 27, scope: !1521)
!1547 = !DILocation(line: 646, column: 31, scope: !1521)
!1548 = !DILocation(line: 646, column: 35, scope: !1521)
!1549 = !DILocation(line: 646, column: 47, scope: !1521)
!1550 = !DILocation(line: 646, column: 9, scope: !1521)
!1551 = !DILocation(line: 652, column: 11, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1521, file: !135, line: 646, column: 55)
!1553 = !DILocation(line: 654, column: 11, scope: !1552)
!1554 = !DILocation(line: 656, column: 15, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1552, file: !135, line: 656, column: 15)
!1556 = !DILocation(line: 656, column: 20, scope: !1555)
!1557 = !DILocation(line: 656, column: 25, scope: !1555)
!1558 = !DILocation(line: 656, column: 15, scope: !1552)
!1559 = !DILocation(line: 657, column: 13, scope: !1555)
!1560 = !DILocation(line: 656, column: 28, scope: !1561)
!1561 = !DILexicalBlockFile(scope: !1555, file: !135, discriminator: 1)
!1562 = !DILocation(line: 661, column: 19, scope: !1552)
!1563 = !DILocation(line: 661, column: 29, scope: !1552)
!1564 = !DILocation(line: 661, column: 33, scope: !1552)
!1565 = !DILocation(line: 661, column: 37, scope: !1552)
!1566 = !DILocation(line: 661, column: 11, scope: !1552)
!1567 = !DILocation(line: 664, column: 13, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1552, file: !135, line: 661, column: 45)
!1569 = !DILocation(line: 668, column: 17, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1568, file: !135, line: 668, column: 17)
!1571 = !DILocation(line: 668, column: 22, scope: !1570)
!1572 = !DILocation(line: 668, column: 27, scope: !1570)
!1573 = !DILocation(line: 668, column: 17, scope: !1568)
!1574 = !DILocation(line: 669, column: 15, scope: !1570)
!1575 = !DILocation(line: 668, column: 30, scope: !1576)
!1576 = !DILexicalBlockFile(scope: !1570, file: !135, discriminator: 1)
!1577 = !DILocation(line: 674, column: 21, scope: !1568)
!1578 = !DILocation(line: 675, column: 21, scope: !1568)
!1579 = !DILocation(line: 676, column: 30, scope: !1568)
!1580 = !DILocation(line: 676, column: 40, scope: !1568)
!1581 = !DILocation(line: 676, column: 44, scope: !1568)
!1582 = !DILocation(line: 676, column: 21, scope: !1568)
!1583 = !DILocation(line: 676, column: 64, scope: !1568)
!1584 = !DILocation(line: 676, column: 71, scope: !1568)
!1585 = !DILocation(line: 676, column: 75, scope: !1568)
!1586 = !DILocation(line: 677, column: 43, scope: !1568)
!1587 = !DILocation(line: 677, column: 53, scope: !1568)
!1588 = !DILocation(line: 677, column: 57, scope: !1568)
!1589 = !DILocation(line: 677, column: 61, scope: !1568)
!1590 = !DILocation(line: 677, column: 29, scope: !1568)
!1591 = !DILocation(line: 677, column: 21, scope: !1568)
!1592 = !DILocation(line: 674, column: 13, scope: !1568)
!1593 = !DILocation(line: 678, column: 28, scope: !1568)
!1594 = !DILocation(line: 678, column: 36, scope: !1568)
!1595 = !DILocation(line: 678, column: 52, scope: !1568)
!1596 = !DILocation(line: 678, column: 45, scope: !1568)
!1597 = !DILocation(line: 678, column: 13, scope: !1598)
!1598 = !DILexicalBlockFile(scope: !1568, file: !135, discriminator: 1)
!1599 = !DILocation(line: 679, column: 18, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1568, file: !135, line: 679, column: 17)
!1601 = !DILocation(line: 679, column: 17, scope: !1568)
!1602 = !DILocation(line: 680, column: 15, scope: !1600)
!1603 = !DILocation(line: 681, column: 23, scope: !1568)
!1604 = !DILocation(line: 682, column: 30, scope: !1568)
!1605 = !DILocation(line: 682, column: 40, scope: !1568)
!1606 = !DILocation(line: 682, column: 44, scope: !1568)
!1607 = !DILocation(line: 682, column: 14, scope: !1568)
!1608 = !DILocation(line: 682, column: 28, scope: !1568)
!1609 = !DILocation(line: 683, column: 13, scope: !1568)
!1610 = !DILocation(line: 685, column: 11, scope: !1552)
!1611 = !DILocation(line: 687, column: 64, scope: !1552)
!1612 = !DILocation(line: 687, column: 74, scope: !1552)
!1613 = !DILocation(line: 687, column: 78, scope: !1552)
!1614 = !DILocation(line: 687, column: 82, scope: !1552)
!1615 = !DILocation(line: 687, column: 94, scope: !1552)
!1616 = !DILocation(line: 687, column: 11, scope: !1552)
!1617 = !DILocation(line: 690, column: 7, scope: !1521)
!1618 = !DILocation(line: 637, column: 23, scope: !1516)
!1619 = !DILocation(line: 637, column: 33, scope: !1516)
!1620 = !DILocation(line: 637, column: 21, scope: !1516)
!1621 = !DILocation(line: 635, column: 7, scope: !1622)
!1622 = !DILexicalBlockFile(scope: !1516, file: !135, discriminator: 2)
!1623 = distinct !{!1623, !1624}
!1624 = !DILocation(line: 635, column: 7, scope: !1290)
!1625 = !DILocation(line: 692, column: 10, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1290, file: !135, line: 692, column: 9)
!1627 = !DILocation(line: 692, column: 9, scope: !1290)
!1628 = !DILocation(line: 693, column: 7, scope: !1626)
!1629 = !DILocation(line: 694, column: 9, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1290, file: !135, line: 694, column: 9)
!1631 = !DILocation(line: 694, column: 20, scope: !1630)
!1632 = !DILocation(line: 694, column: 9, scope: !1290)
!1633 = !DILocation(line: 695, column: 8, scope: !1630)
!1634 = !DILocation(line: 695, column: 23, scope: !1630)
!1635 = !DILocation(line: 695, column: 7, scope: !1630)
!1636 = !DILocation(line: 696, column: 5, scope: !1290)
!1637 = !DILocation(line: 699, column: 1, scope: !764)
!1638 = distinct !DISubprogram(name: "foundcyclebroken", scope: !135, file: !135, line: 111, type: !1639, isLocal: true, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !348)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{!189, !487, !487, !150, !142}
!1641 = !DILocalVariable(name: "thislink", arg: 1, scope: !1638, file: !135, line: 111, type: !487)
!1642 = !DILocation(line: 111, column: 41, scope: !1638)
!1643 = !DILocalVariable(name: "sofar", arg: 2, scope: !1638, file: !135, line: 111, type: !487)
!1644 = !DILocation(line: 111, column: 74, scope: !1638)
!1645 = !DILocalVariable(name: "dependedon", arg: 3, scope: !1638, file: !135, line: 112, type: !150)
!1646 = !DILocation(line: 112, column: 34, scope: !1638)
!1647 = !DILocalVariable(name: "possi", arg: 4, scope: !1638, file: !135, line: 112, type: !142)
!1648 = !DILocation(line: 112, column: 63, scope: !1638)
!1649 = !DILocalVariable(name: "sol", scope: !1638, file: !135, line: 114, type: !487)
!1650 = !DILocation(line: 114, column: 26, scope: !1638)
!1651 = !DILocation(line: 116, column: 7, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1638, file: !135, line: 116, column: 6)
!1653 = !DILocation(line: 116, column: 6, scope: !1638)
!1654 = !DILocation(line: 117, column: 5, scope: !1652)
!1655 = !DILocation(line: 123, column: 14, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1638, file: !135, line: 123, column: 3)
!1657 = !DILocation(line: 123, column: 12, scope: !1656)
!1658 = !DILocation(line: 123, column: 8, scope: !1656)
!1659 = !DILocation(line: 123, column: 21, scope: !1660)
!1660 = !DILexicalBlockFile(scope: !1661, file: !135, discriminator: 1)
!1661 = distinct !DILexicalBlock(scope: !1656, file: !135, line: 123, column: 3)
!1662 = !DILocation(line: 123, column: 25, scope: !1660)
!1663 = !DILocation(line: 123, column: 28, scope: !1664)
!1664 = !DILexicalBlockFile(scope: !1661, file: !135, discriminator: 2)
!1665 = !DILocation(line: 123, column: 33, scope: !1664)
!1666 = !DILocation(line: 123, column: 40, scope: !1664)
!1667 = !DILocation(line: 123, column: 37, scope: !1664)
!1668 = !DILocation(line: 123, column: 3, scope: !1669)
!1669 = !DILexicalBlockFile(scope: !1656, file: !135, discriminator: 3)
!1670 = !DILocation(line: 123, column: 3, scope: !1671)
!1671 = !DILexicalBlockFile(scope: !1656, file: !135, discriminator: 4)
!1672 = !DILocation(line: 123, column: 58, scope: !1673)
!1673 = !DILexicalBlockFile(scope: !1661, file: !135, discriminator: 5)
!1674 = !DILocation(line: 123, column: 63, scope: !1673)
!1675 = !DILocation(line: 123, column: 56, scope: !1673)
!1676 = !DILocation(line: 123, column: 3, scope: !1673)
!1677 = distinct !{!1677, !1678}
!1678 = !DILocation(line: 123, column: 3, scope: !1638)
!1679 = !DILocation(line: 126, column: 8, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1638, file: !135, line: 126, column: 7)
!1681 = !DILocation(line: 126, column: 7, scope: !1638)
!1682 = !DILocation(line: 127, column: 36, scope: !1680)
!1683 = !DILocation(line: 127, column: 48, scope: !1680)
!1684 = !DILocation(line: 127, column: 12, scope: !1680)
!1685 = !DILocation(line: 127, column: 5, scope: !1680)
!1686 = !DILocation(line: 129, column: 3, scope: !1638)
!1687 = !DILocation(line: 138, column: 10, scope: !1638)
!1688 = !DILocation(line: 138, column: 8, scope: !1638)
!1689 = !DILocation(line: 139, column: 14, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1638, file: !135, line: 139, column: 3)
!1691 = !DILocation(line: 139, column: 12, scope: !1690)
!1692 = !DILocation(line: 139, column: 8, scope: !1690)
!1693 = !DILocation(line: 139, column: 23, scope: !1694)
!1694 = !DILexicalBlockFile(scope: !1695, file: !135, discriminator: 1)
!1695 = distinct !DILexicalBlock(scope: !1690, file: !135, line: 139, column: 3)
!1696 = !DILocation(line: 139, column: 30, scope: !1694)
!1697 = !DILocation(line: 139, column: 27, scope: !1694)
!1698 = !DILocation(line: 139, column: 36, scope: !1694)
!1699 = !DILocation(line: 139, column: 39, scope: !1700)
!1700 = !DILexicalBlockFile(scope: !1695, file: !135, discriminator: 2)
!1701 = !DILocation(line: 139, column: 44, scope: !1700)
!1702 = !DILocation(line: 139, column: 51, scope: !1700)
!1703 = !DILocation(line: 139, column: 48, scope: !1700)
!1704 = !DILocation(line: 139, column: 21, scope: !1705)
!1705 = !DILexicalBlockFile(scope: !1695, file: !135, discriminator: 3)
!1706 = !DILocation(line: 139, column: 3, scope: !1705)
!1707 = !DILocation(line: 140, column: 30, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1709, file: !135, line: 140, column: 9)
!1709 = distinct !DILexicalBlock(scope: !1695, file: !135, line: 139, column: 81)
!1710 = !DILocation(line: 140, column: 35, scope: !1708)
!1711 = !DILocation(line: 140, column: 41, scope: !1708)
!1712 = !DILocation(line: 140, column: 46, scope: !1708)
!1713 = !DILocation(line: 140, column: 51, scope: !1708)
!1714 = !DILocation(line: 140, column: 10, scope: !1708)
!1715 = !DILocation(line: 140, column: 9, scope: !1709)
!1716 = !DILocation(line: 141, column: 7, scope: !1708)
!1717 = !DILocation(line: 142, column: 3, scope: !1709)
!1718 = !DILocation(line: 139, column: 70, scope: !1719)
!1719 = !DILexicalBlockFile(scope: !1695, file: !135, discriminator: 4)
!1720 = !DILocation(line: 139, column: 75, scope: !1719)
!1721 = !DILocation(line: 139, column: 68, scope: !1719)
!1722 = !DILocation(line: 139, column: 3, scope: !1719)
!1723 = distinct !{!1723, !1724}
!1724 = !DILocation(line: 139, column: 3, scope: !1638)
!1725 = !DILocation(line: 146, column: 3, scope: !1638)
!1726 = !DILocation(line: 146, column: 8, scope: !1638)
!1727 = !DILocation(line: 146, column: 15, scope: !1638)
!1728 = !DILocation(line: 146, column: 26, scope: !1638)
!1729 = !DILocation(line: 149, column: 18, scope: !1638)
!1730 = !DILocation(line: 149, column: 23, scope: !1638)
!1731 = !DILocation(line: 149, column: 30, scope: !1638)
!1732 = !DILocation(line: 149, column: 34, scope: !1638)
!1733 = !DILocation(line: 149, column: 9, scope: !1638)
!1734 = !DILocation(line: 149, column: 52, scope: !1638)
!1735 = !DILocation(line: 149, column: 57, scope: !1638)
!1736 = !DILocation(line: 149, column: 64, scope: !1638)
!1737 = !DILocation(line: 149, column: 68, scope: !1638)
!1738 = !DILocation(line: 148, column: 3, scope: !1638)
!1739 = !DILocation(line: 151, column: 3, scope: !1638)
!1740 = !DILocation(line: 152, column: 1, scope: !1638)
