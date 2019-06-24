; ModuleID = './[inter]lib--dpkg--db-fsys-digest.o.i'
source_filename = "./[inter]lib--dpkg--db-fsys-digest.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct.fsys_namenode_list = type { %struct.fsys_namenode_list*, %struct.fsys_namenode* }
%struct.fsys_namenode = type { %struct.fsys_namenode*, i8*, %struct.pkg_list*, %struct.fsys_diversion*, %struct.file_stat*, %struct.trigfileint*, i32, i8*, i8*, %struct.file_ondisk_id* }
%struct.pkg_list = type opaque
%struct.fsys_diversion = type { %struct.fsys_namenode*, %struct.fsys_namenode*, %struct.pkgset*, %struct.fsys_diversion* }
%struct.file_stat = type { i32, i32, i32, i8*, i8* }
%struct.trigfileint = type opaque
%struct.file_ondisk_id = type { i64, i64 }
%struct.atomic_file = type { i32, i8*, i8*, %struct._IO_FILE* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.varbuf = type { i64, i64, i8* }
%struct.dpkg_error = type { i32, i32, i8* }

@.str = private unnamed_addr constant [27 x i8] c"generating infodb hashfile\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"md5sums\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%s  %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"dpkg\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"loading control file '%s' for package '%s'\00", align 1
@.str.6 = private unnamed_addr constant [60 x i8] c"control file '%s' for package '%s' is missing final newline\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"control file '%s' for package '%s' is missing value\00", align 1
@.str.8 = private unnamed_addr constant [62 x i8] c"control file '%s' for package '%s' is missing value separator\00", align 1
@.str.9 = private unnamed_addr constant [59 x i8] c"control file '%s' for package '%s' contains empty filename\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"load hash '%s' for filename '%s'\00", align 1

; Function Attrs: nounwind uwtable
define void @write_filehash_except(%struct.pkginfo*, %struct.pkgbin*, %struct.fsys_namenode_list*, i32) #0 !dbg !123 {
  %5 = alloca %struct.pkginfo*, align 8
  %6 = alloca %struct.pkgbin*, align 8
  %7 = alloca %struct.fsys_namenode_list*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.atomic_file*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.fsys_namenode*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %5, metadata !322, metadata !323), !dbg !324
  store %struct.pkgbin* %1, %struct.pkgbin** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %6, metadata !325, metadata !323), !dbg !326
  store %struct.fsys_namenode_list* %2, %struct.fsys_namenode_list** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode_list** %7, metadata !327, metadata !323), !dbg !328
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !329, metadata !323), !dbg !330
  call void @llvm.dbg.declare(metadata %struct.atomic_file** %9, metadata !331, metadata !323), !dbg !394
  call void @llvm.dbg.declare(metadata i8** %10, metadata !395, metadata !323), !dbg !396
  call void (i32, i8*, ...) @debug(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0)), !dbg !397
  %12 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !398
  %13 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !400
  %14 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %13, i32 0, i32 10, !dbg !401
  %15 = call zeroext i1 @pkg_infodb_has_file(%struct.pkginfo* %12, %struct.pkgbin* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0)), !dbg !402
  br i1 %15, label %16, label %17, !dbg !403

; <label>:16:                                     ; preds = %4
  br label %70, !dbg !404

; <label>:17:                                     ; preds = %4
  %18 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !405
  %19 = load %struct.pkgbin*, %struct.pkgbin** %6, align 8, !dbg !406
  %20 = call i8* @pkg_infodb_get_file(%struct.pkginfo* %18, %struct.pkgbin* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0)), !dbg !407
  store i8* %20, i8** %10, align 8, !dbg !408
  %21 = load i8*, i8** %10, align 8, !dbg !409
  %22 = call %struct.atomic_file* @atomic_file_new(i8* %21, i32 0), !dbg !410
  store %struct.atomic_file* %22, %struct.atomic_file** %9, align 8, !dbg !411
  %23 = load %struct.atomic_file*, %struct.atomic_file** %9, align 8, !dbg !412
  call void @atomic_file_open(%struct.atomic_file* %23), !dbg !413
  br label %24, !dbg !414

; <label>:24:                                     ; preds = %60, %17
  %25 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %7, align 8, !dbg !415
  %26 = icmp ne %struct.fsys_namenode_list* %25, null, !dbg !419
  br i1 %26, label %27, label %64, !dbg !419

; <label>:27:                                     ; preds = %24
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %11, metadata !420, metadata !323), !dbg !422
  %28 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %7, align 8, !dbg !423
  %29 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %28, i32 0, i32 1, !dbg !424
  %30 = load %struct.fsys_namenode*, %struct.fsys_namenode** %29, align 8, !dbg !424
  store %struct.fsys_namenode* %30, %struct.fsys_namenode** %11, align 8, !dbg !422
  %31 = load i32, i32* %8, align 4, !dbg !425
  %32 = icmp ne i32 %31, 0, !dbg !425
  br i1 %32, label %33, label %41, !dbg !427

; <label>:33:                                     ; preds = %27
  %34 = load %struct.fsys_namenode*, %struct.fsys_namenode** %11, align 8, !dbg !428
  %35 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %34, i32 0, i32 6, !dbg !430
  %36 = load i32, i32* %35, align 8, !dbg !430
  %37 = load i32, i32* %8, align 4, !dbg !431
  %38 = and i32 %36, %37, !dbg !432
  %39 = icmp ne i32 %38, 0, !dbg !432
  br i1 %39, label %40, label %41, !dbg !433

; <label>:40:                                     ; preds = %33
  br label %60, !dbg !434

; <label>:41:                                     ; preds = %33, %27
  %42 = load %struct.fsys_namenode*, %struct.fsys_namenode** %11, align 8, !dbg !435
  %43 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %42, i32 0, i32 8, !dbg !437
  %44 = load i8*, i8** %43, align 8, !dbg !437
  %45 = call i32 @strcmp(i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)) #7, !dbg !438
  %46 = icmp eq i32 %45, 0, !dbg !439
  br i1 %46, label %47, label %48, !dbg !440

; <label>:47:                                     ; preds = %41
  br label %60, !dbg !441

; <label>:48:                                     ; preds = %41
  %49 = load %struct.atomic_file*, %struct.atomic_file** %9, align 8, !dbg !442
  %50 = getelementptr inbounds %struct.atomic_file, %struct.atomic_file* %49, i32 0, i32 3, !dbg !443
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %50, align 8, !dbg !443
  %52 = load %struct.fsys_namenode*, %struct.fsys_namenode** %11, align 8, !dbg !444
  %53 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %52, i32 0, i32 8, !dbg !445
  %54 = load i8*, i8** %53, align 8, !dbg !445
  %55 = load %struct.fsys_namenode*, %struct.fsys_namenode** %11, align 8, !dbg !446
  %56 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %55, i32 0, i32 1, !dbg !447
  %57 = load i8*, i8** %56, align 8, !dbg !447
  %58 = getelementptr inbounds i8, i8* %57, i64 1, !dbg !448
  %59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* %54, i8* %58), !dbg !449
  br label %60, !dbg !450

; <label>:60:                                     ; preds = %48, %47, %40
  %61 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %7, align 8, !dbg !451
  %62 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %61, i32 0, i32 0, !dbg !453
  %63 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %62, align 8, !dbg !453
  store %struct.fsys_namenode_list* %63, %struct.fsys_namenode_list** %7, align 8, !dbg !454
  br label %24, !dbg !455, !llvm.loop !456

; <label>:64:                                     ; preds = %24
  %65 = load %struct.atomic_file*, %struct.atomic_file** %9, align 8, !dbg !457
  call void @atomic_file_sync(%struct.atomic_file* %65), !dbg !458
  %66 = load %struct.atomic_file*, %struct.atomic_file** %9, align 8, !dbg !459
  call void @atomic_file_close(%struct.atomic_file* %66), !dbg !460
  %67 = load %struct.atomic_file*, %struct.atomic_file** %9, align 8, !dbg !461
  call void @atomic_file_commit(%struct.atomic_file* %67), !dbg !462
  %68 = load %struct.atomic_file*, %struct.atomic_file** %9, align 8, !dbg !463
  call void @atomic_file_free(%struct.atomic_file* %68), !dbg !464
  %69 = call i8* @pkg_infodb_get_dir(), !dbg !465
  call void @dir_sync_path(i8* %69), !dbg !466
  br label %70, !dbg !468

; <label>:70:                                     ; preds = %64, %16
  ret void, !dbg !469
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @debug(i32, i8*, ...) #2

declare zeroext i1 @pkg_infodb_has_file(%struct.pkginfo*, %struct.pkgbin*, i8*) #2

declare i8* @pkg_infodb_get_file(%struct.pkginfo*, %struct.pkgbin*, i8*) #2

declare %struct.atomic_file* @atomic_file_new(i8*, i32) #2

declare void @atomic_file_open(%struct.atomic_file*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare void @atomic_file_sync(%struct.atomic_file*) #2

declare void @atomic_file_close(%struct.atomic_file*) #2

declare void @atomic_file_commit(%struct.atomic_file*) #2

declare void @atomic_file_free(%struct.atomic_file*) #2

declare void @dir_sync_path(i8*) #2

declare i8* @pkg_infodb_get_dir() #2

; Function Attrs: nounwind uwtable
define void @parse_filehash(%struct.pkginfo*, %struct.pkgbin*) #0 !dbg !470 {
  %3 = alloca %struct.pkginfo*, align 8
  %4 = alloca %struct.pkgbin*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.varbuf, align 8
  %7 = alloca %struct.dpkg_error, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %3, metadata !473, metadata !323), !dbg !474
  store %struct.pkgbin* %1, %struct.pkgbin** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %4, metadata !475, metadata !323), !dbg !476
  call void @llvm.dbg.declare(metadata i8** %5, metadata !477, metadata !323), !dbg !478
  call void @llvm.dbg.declare(metadata %struct.varbuf* %6, metadata !479, metadata !323), !dbg !486
  %8 = bitcast %struct.varbuf* %6 to i8*, !dbg !486
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 24, i32 8, i1 false), !dbg !486
  call void @llvm.dbg.declare(metadata %struct.dpkg_error* %7, metadata !487, metadata !323), !dbg !493
  %9 = bitcast %struct.dpkg_error* %7 to i8*, !dbg !493
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 16, i32 8, i1 false), !dbg !493
  %10 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !494
  %11 = load %struct.pkgbin*, %struct.pkgbin** %4, align 8, !dbg !495
  %12 = call i8* @pkg_infodb_get_file(%struct.pkginfo* %10, %struct.pkgbin* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0)), !dbg !496
  store i8* %12, i8** %5, align 8, !dbg !497
  %13 = load i8*, i8** %5, align 8, !dbg !498
  %14 = call i32 @file_slurp(i8* %13, %struct.varbuf* %6, %struct.dpkg_error* %7), !dbg !500
  %15 = icmp slt i32 %14, 0, !dbg !501
  br i1 %15, label %16, label %24, !dbg !502

; <label>:16:                                     ; preds = %2
  %17 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %7, i32 0, i32 1, !dbg !503
  %18 = load i32, i32* %17, align 4, !dbg !503
  %19 = icmp ne i32 %18, 2, !dbg !505
  br i1 %19, label %20, label %24, !dbg !506

; <label>:20:                                     ; preds = %16
  %21 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i32 0)) #8, !dbg !507
  %22 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !508
  %23 = call i8* @pkg_name(%struct.pkginfo* %22, i32 1), !dbg !509
  call void (%struct.dpkg_error*, i8*, ...) @dpkg_error_print(%struct.dpkg_error* %7, i8* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* %23), !dbg !510
  br label %24, !dbg !510

; <label>:24:                                     ; preds = %20, %16, %2
  %25 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %6, i32 0, i32 0, !dbg !511
  %26 = load i64, i64* %25, align 8, !dbg !511
  %27 = icmp ugt i64 %26, 0, !dbg !513
  br i1 %27, label %28, label %31, !dbg !514

; <label>:28:                                     ; preds = %24
  %29 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !515
  %30 = load %struct.pkgbin*, %struct.pkgbin** %4, align 8, !dbg !516
  call void @parse_filehash_buffer(%struct.varbuf* %6, %struct.pkginfo* %29, %struct.pkgbin* %30), !dbg !517
  br label %31, !dbg !517

; <label>:31:                                     ; preds = %28, %24
  call void @varbuf_destroy(%struct.varbuf* %6), !dbg !518
  ret void, !dbg !519
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #4

declare i32 @file_slurp(i8*, %struct.varbuf*, %struct.dpkg_error*) #2

declare void @dpkg_error_print(%struct.dpkg_error*, i8*, ...) #2

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #5

declare i8* @pkg_name(%struct.pkginfo*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @parse_filehash_buffer(%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*) #0 !dbg !520 {
  %4 = alloca %struct.varbuf*, align 8
  %5 = alloca %struct.pkginfo*, align 8
  %6 = alloca %struct.pkgbin*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.fsys_namenode*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.varbuf* %0, %struct.varbuf** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %4, metadata !524, metadata !323), !dbg !525
  store %struct.pkginfo* %1, %struct.pkginfo** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %5, metadata !526, metadata !323), !dbg !527
  store %struct.pkgbin* %2, %struct.pkgbin** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %6, metadata !528, metadata !323), !dbg !529
  call void @llvm.dbg.declare(metadata i8** %7, metadata !530, metadata !323), !dbg !531
  call void @llvm.dbg.declare(metadata i8** %8, metadata !532, metadata !323), !dbg !533
  call void @llvm.dbg.declare(metadata i8** %9, metadata !534, metadata !323), !dbg !535
  %15 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !536
  %16 = call i8* @pkg_name(%struct.pkginfo* %15, i32 1), !dbg !537
  store i8* %16, i8** %9, align 8, !dbg !535
  call void @llvm.dbg.declare(metadata i8** %10, metadata !538, metadata !323), !dbg !539
  %17 = load %struct.varbuf*, %struct.varbuf** %4, align 8, !dbg !540
  %18 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %17, i32 0, i32 2, !dbg !541
  %19 = load i8*, i8** %18, align 8, !dbg !541
  %20 = load %struct.varbuf*, %struct.varbuf** %4, align 8, !dbg !542
  %21 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %20, i32 0, i32 0, !dbg !543
  %22 = load i64, i64* %21, align 8, !dbg !543
  %23 = getelementptr inbounds i8, i8* %19, i64 %22, !dbg !544
  store i8* %23, i8** %10, align 8, !dbg !539
  %24 = load %struct.varbuf*, %struct.varbuf** %4, align 8, !dbg !545
  %25 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %24, i32 0, i32 2, !dbg !547
  %26 = load i8*, i8** %25, align 8, !dbg !547
  store i8* %26, i8** %7, align 8, !dbg !548
  br label %27, !dbg !549

; <label>:27:                                     ; preds = %105, %3
  %28 = load i8*, i8** %7, align 8, !dbg !550
  %29 = load i8*, i8** %10, align 8, !dbg !553
  %30 = icmp ult i8* %28, %29, !dbg !554
  br i1 %30, label %31, label %107, !dbg !555

; <label>:31:                                     ; preds = %27
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %11, metadata !556, metadata !323), !dbg !558
  call void @llvm.dbg.declare(metadata i8** %12, metadata !559, metadata !323), !dbg !560
  call void @llvm.dbg.declare(metadata i8** %13, metadata !561, metadata !323), !dbg !562
  call void @llvm.dbg.declare(metadata i8** %14, metadata !563, metadata !323), !dbg !564
  %32 = load i8*, i8** %7, align 8, !dbg !565
  %33 = load i8*, i8** %10, align 8, !dbg !566
  %34 = load i8*, i8** %7, align 8, !dbg !567
  %35 = ptrtoint i8* %33 to i64, !dbg !568
  %36 = ptrtoint i8* %34 to i64, !dbg !568
  %37 = sub i64 %35, %36, !dbg !568
  %38 = call i8* @memchr(i8* %32, i32 10, i64 %37) #7, !dbg !569
  store i8* %38, i8** %12, align 8, !dbg !570
  %39 = load i8*, i8** %12, align 8, !dbg !571
  %40 = icmp eq i8* %39, null, !dbg !573
  br i1 %40, label %41, label %44, !dbg !574

; <label>:41:                                     ; preds = %31
  %42 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i32 0, i32 0)) #8, !dbg !575
  %43 = load i8*, i8** %9, align 8, !dbg !576
  call void (i8*, ...) @ohshit(i8* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* %43) #9, !dbg !577
  unreachable, !dbg !579

; <label>:44:                                     ; preds = %31
  %45 = load i8*, i8** %7, align 8, !dbg !580
  %46 = getelementptr inbounds i8, i8* %45, i64 32, !dbg !581
  store i8* %46, i8** %13, align 8, !dbg !582
  %47 = load i8*, i8** %13, align 8, !dbg !583
  %48 = getelementptr inbounds i8, i8* %47, i64 2, !dbg !584
  store i8* %48, i8** %14, align 8, !dbg !585
  %49 = load i8*, i8** %14, align 8, !dbg !586
  %50 = getelementptr inbounds i8, i8* %49, i64 1, !dbg !588
  %51 = load i8*, i8** %12, align 8, !dbg !589
  %52 = icmp ugt i8* %50, %51, !dbg !590
  br i1 %52, label %53, label %56, !dbg !591

; <label>:53:                                     ; preds = %44
  %54 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i32 0, i32 0)) #8, !dbg !592
  %55 = load i8*, i8** %9, align 8, !dbg !593
  call void (i8*, ...) @ohshit(i8* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* %55) #9, !dbg !594
  unreachable, !dbg !596

; <label>:56:                                     ; preds = %44
  %57 = load i8*, i8** %13, align 8, !dbg !597
  %58 = getelementptr inbounds i8, i8* %57, i64 0, !dbg !597
  %59 = load i8, i8* %58, align 1, !dbg !597
  %60 = sext i8 %59 to i32, !dbg !597
  %61 = icmp ne i32 %60, 32, !dbg !599
  br i1 %61, label %68, label %62, !dbg !600

; <label>:62:                                     ; preds = %56
  %63 = load i8*, i8** %13, align 8, !dbg !601
  %64 = getelementptr inbounds i8, i8* %63, i64 1, !dbg !601
  %65 = load i8, i8* %64, align 1, !dbg !601
  %66 = sext i8 %65 to i32, !dbg !601
  %67 = icmp ne i32 %66, 32, !dbg !603
  br i1 %67, label %68, label %71, !dbg !604

; <label>:68:                                     ; preds = %62, %56
  %69 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i32 0, i32 0)) #8, !dbg !605
  %70 = load i8*, i8** %9, align 8, !dbg !606
  call void (i8*, ...) @ohshit(i8* %69, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* %70) #9, !dbg !607
  unreachable, !dbg !608

; <label>:71:                                     ; preds = %62
  %72 = load i8*, i8** %13, align 8, !dbg !609
  %73 = getelementptr inbounds i8, i8* %72, i64 0, !dbg !609
  store i8 0, i8* %73, align 1, !dbg !610
  %74 = load i8*, i8** %12, align 8, !dbg !611
  %75 = getelementptr inbounds i8, i8* %74, i64 1, !dbg !612
  store i8* %75, i8** %8, align 8, !dbg !613
  %76 = load i8*, i8** %12, align 8, !dbg !614
  %77 = load i8*, i8** %7, align 8, !dbg !616
  %78 = icmp ugt i8* %76, %77, !dbg !617
  br i1 %78, label %79, label %88, !dbg !618

; <label>:79:                                     ; preds = %71
  %80 = load i8*, i8** %12, align 8, !dbg !619
  %81 = getelementptr inbounds i8, i8* %80, i64 -1, !dbg !619
  %82 = load i8, i8* %81, align 1, !dbg !619
  %83 = sext i8 %82 to i32, !dbg !619
  %84 = icmp eq i32 %83, 47, !dbg !621
  br i1 %84, label %85, label %88, !dbg !622

; <label>:85:                                     ; preds = %79
  %86 = load i8*, i8** %12, align 8, !dbg !623
  %87 = getelementptr inbounds i8, i8* %86, i32 -1, !dbg !623
  store i8* %87, i8** %12, align 8, !dbg !623
  br label %88, !dbg !624

; <label>:88:                                     ; preds = %85, %79, %71
  %89 = load i8*, i8** %12, align 8, !dbg !625
  store i8 0, i8* %89, align 1, !dbg !626
  %90 = load i8*, i8** %12, align 8, !dbg !627
  %91 = load i8*, i8** %7, align 8, !dbg !629
  %92 = icmp eq i8* %90, %91, !dbg !630
  br i1 %92, label %93, label %96, !dbg !631

; <label>:93:                                     ; preds = %88
  %94 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9, i32 0, i32 0)) #8, !dbg !632
  %95 = load i8*, i8** %9, align 8, !dbg !633
  call void (i8*, ...) @ohshit(i8* %94, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* %95) #9, !dbg !634
  unreachable, !dbg !636

; <label>:96:                                     ; preds = %88
  %97 = load i8*, i8** %7, align 8, !dbg !637
  %98 = load i8*, i8** %14, align 8, !dbg !638
  call void (i32, i8*, ...) @debug(i32 64, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i32 0, i32 0), i8* %97, i8* %98), !dbg !639
  %99 = load i8*, i8** %14, align 8, !dbg !640
  %100 = call %struct.fsys_namenode* @fsys_hash_find_node(i8* %99, i32 0), !dbg !641
  store %struct.fsys_namenode* %100, %struct.fsys_namenode** %11, align 8, !dbg !642
  %101 = load i8*, i8** %7, align 8, !dbg !643
  %102 = call i8* @nfstrsave(i8* %101), !dbg !644
  %103 = load %struct.fsys_namenode*, %struct.fsys_namenode** %11, align 8, !dbg !645
  %104 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %103, i32 0, i32 8, !dbg !646
  store i8* %102, i8** %104, align 8, !dbg !647
  br label %105, !dbg !648

; <label>:105:                                    ; preds = %96
  %106 = load i8*, i8** %8, align 8, !dbg !649
  store i8* %106, i8** %7, align 8, !dbg !651
  br label %27, !dbg !652, !llvm.loop !653

; <label>:107:                                    ; preds = %27
  ret void, !dbg !655
}

declare void @varbuf_destroy(%struct.varbuf*) #2

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) #3

; Function Attrs: noreturn
declare void @ohshit(i8*, ...) #6

declare %struct.fsys_namenode* @fsys_hash_find_node(i8*, i32) #2

declare i8* @nfstrsave(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!120, !121}
!llvm.ident = !{!122}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !118)
!1 = !DIFile(filename: "[inter]lib--dpkg--db-fsys-digest.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{!3, !15, !26, !35, !43, !47, !57, !67, !73, !86, !90, !106, !112}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "deptype", file: !4, line: 44, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../lib/dpkg/dpkg-db.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
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
!16 = !DIFile(filename: "../../lib/dpkg/arch.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
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
!27 = !DIFile(filename: "../../lib/dpkg/version.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
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
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fsys_namenode_flags", file: !74, line: 61, size: 32, align: 32, elements: !75)
!74 = !DIFile(filename: "../../lib/dpkg/fsys.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!75 = !{!76, !77, !78, !79, !80, !81, !82, !83, !84, !85}
!76 = !DIEnumerator(name: "FNNF_NEW_CONFF", value: 1)
!77 = !DIEnumerator(name: "FNNF_NEW_INARCHIVE", value: 2)
!78 = !DIEnumerator(name: "FNNF_OLD_CONFF", value: 4)
!79 = !DIEnumerator(name: "FNNF_OBS_CONFF", value: 8)
!80 = !DIEnumerator(name: "FNNF_ELIDE_OTHER_LISTS", value: 16)
!81 = !DIEnumerator(name: "FNNF_NO_ATOMIC_OVERWRITE", value: 32)
!82 = !DIEnumerator(name: "FNNF_PLACED_ON_DISK", value: 64)
!83 = !DIEnumerator(name: "FNNF_DEFERRED_FSYNC", value: 128)
!84 = !DIEnumerator(name: "FNNF_DEFERRED_RENAME", value: 256)
!85 = !DIEnumerator(name: "FNNF_FILTERED", value: 512)
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "atomic_file_flags", file: !87, line: 36, size: 32, align: 32, elements: !88)
!87 = !DIFile(filename: "../../lib/dpkg/atomic-file.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!88 = !{!89}
!89 = !DIEnumerator(name: "ATOMIC_FILE_BACKUP", value: 1)
!90 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "debugflags", file: !91, line: 41, size: 32, align: 32, elements: !92)
!91 = !DIFile(filename: "../../lib/dpkg/debug.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!92 = !{!93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105}
!93 = !DIEnumerator(name: "dbg_general", value: 1)
!94 = !DIEnumerator(name: "dbg_scripts", value: 2)
!95 = !DIEnumerator(name: "dbg_eachfile", value: 8)
!96 = !DIEnumerator(name: "dbg_eachfiledetail", value: 64)
!97 = !DIEnumerator(name: "dbg_conff", value: 16)
!98 = !DIEnumerator(name: "dbg_conffdetail", value: 128)
!99 = !DIEnumerator(name: "dbg_depcon", value: 32)
!100 = !DIEnumerator(name: "dbg_depcondetail", value: 256)
!101 = !DIEnumerator(name: "dbg_veryverbose", value: 512)
!102 = !DIEnumerator(name: "dbg_stupidlyverbose", value: 1024)
!103 = !DIEnumerator(name: "dbg_triggers", value: 4096)
!104 = !DIEnumerator(name: "dbg_triggersdetail", value: 8192)
!105 = !DIEnumerator(name: "dbg_triggersstupid", value: 16384)
!106 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_msg_type", file: !107, line: 36, size: 32, align: 32, elements: !108)
!107 = !DIFile(filename: "../../lib/dpkg/error.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!108 = !{!109, !110, !111}
!109 = !DIEnumerator(name: "DPKG_MSG_NONE", value: 0)
!110 = !DIEnumerator(name: "DPKG_MSG_WARN", value: 1)
!111 = !DIEnumerator(name: "DPKG_MSG_ERROR", value: 2)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkg_name_arch_when", file: !4, line: 396, size: 32, align: 32, elements: !113)
!113 = !{!114, !115, !116, !117}
!114 = !DIEnumerator(name: "pnaw_never", value: 0)
!115 = !DIEnumerator(name: "pnaw_nonambig", value: 1)
!116 = !DIEnumerator(name: "pnaw_foreign", value: 2)
!117 = !DIEnumerator(name: "pnaw_always", value: 3)
!118 = !{!119}
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!120 = !{i32 2, !"Dwarf Version", i32 4}
!121 = !{i32 2, !"Debug Info Version", i32 3}
!122 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!123 = distinct !DISubprogram(name: "write_filehash_except", scope: !124, file: !124, line: 46, type: !125, isLocal: false, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !321)
!124 = !DIFile(filename: "db-fsys-digest.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!125 = !DISubroutineType(types: !126)
!126 = !{null, !127, !320, !257, !73}
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64, align: 64)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkginfo", file: !4, line: 195, size: 3072, align: 64, elements: !129)
!129 = !{!130, !182, !183, !184, !185, !186, !187, !188, !189, !190, !220, !221, !224, !233, !249, !250, !256, !314, !318, !319}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !128, file: !4, line: 196, baseType: !131, size: 64, align: 64)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64, align: 64)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgset", file: !4, line: 242, size: 3392, align: 64, elements: !133)
!133 = !{!134, !135, !139, !140, !180}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !132, file: !4, line: 243, baseType: !131, size: 64, align: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !132, file: !4, line: 244, baseType: !136, size: 64, align: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64, align: 64)
!137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!138 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !132, file: !4, line: 245, baseType: !128, size: 3072, align: 64, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "depended", scope: !132, file: !4, line: 249, baseType: !141, size: 128, align: 64, offset: 3200)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !132, file: !4, line: 246, size: 128, align: 64, elements: !142)
!142 = !{!143, !179}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !141, file: !4, line: 247, baseType: !144, size: 64, align: 64)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64, align: 64)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "deppossi", file: !4, line: 63, size: 640, align: 64, elements: !146)
!146 = !{!147, !155, !156, !157, !158, !159, !168, !175, !176, !178}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !145, file: !4, line: 64, baseType: !148, size: 64, align: 64)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64, align: 64)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dependency", file: !4, line: 56, size: 256, align: 64, elements: !150)
!150 = !{!151, !152, !153, !154}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !149, file: !4, line: 57, baseType: !127, size: 64, align: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !149, file: !4, line: 58, baseType: !148, size: 64, align: 64, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !149, file: !4, line: 59, baseType: !144, size: 64, align: 64, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !149, file: !4, line: 60, baseType: !3, size: 32, align: 32, offset: 192)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "ed", scope: !145, file: !4, line: 65, baseType: !131, size: 64, align: 64, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !145, file: !4, line: 66, baseType: !144, size: 64, align: 64, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "rev_next", scope: !145, file: !4, line: 66, baseType: !144, size: 64, align: 64, offset: 192)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "rev_prev", scope: !145, file: !4, line: 66, baseType: !144, size: 64, align: 64, offset: 256)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !145, file: !4, line: 67, baseType: !160, size: 64, align: 64, offset: 320)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64, align: 64)
!161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !162)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_arch", file: !16, line: 48, size: 192, align: 64, elements: !163)
!163 = !{!164, !166, !167}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !162, file: !16, line: 49, baseType: !165, size: 64, align: 64)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64, align: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !162, file: !16, line: 50, baseType: !136, size: 64, align: 64, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !162, file: !16, line: 51, baseType: !15, size: 32, align: 32, offset: 128)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !145, file: !4, line: 68, baseType: !169, size: 192, align: 64, offset: 384)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_version", file: !27, line: 42, size: 192, align: 64, elements: !170)
!170 = !{!171, !173, !174}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !169, file: !27, line: 44, baseType: !172, size: 32, align: 32)
!172 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !169, file: !27, line: 46, baseType: !136, size: 64, align: 64, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !169, file: !27, line: 48, baseType: !136, size: 64, align: 64, offset: 128)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "verrel", scope: !145, file: !4, line: 69, baseType: !26, size: 32, align: 32, offset: 576)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "arch_is_implicit", scope: !145, file: !4, line: 70, baseType: !177, size: 8, align: 8, offset: 608)
!177 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "cyclebreak", scope: !145, file: !4, line: 71, baseType: !177, size: 8, align: 8, offset: 616)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !141, file: !4, line: 248, baseType: !144, size: 64, align: 64, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "installed_instances", scope: !132, file: !4, line: 250, baseType: !181, size: 32, align: 32, offset: 3328)
!181 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "arch_next", scope: !128, file: !4, line: 197, baseType: !127, size: 64, align: 64, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "want", scope: !128, file: !4, line: 199, baseType: !35, size: 32, align: 32, offset: 128)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "eflag", scope: !128, file: !4, line: 201, baseType: !43, size: 32, align: 32, offset: 160)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !128, file: !4, line: 202, baseType: !47, size: 32, align: 32, offset: 192)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !128, file: !4, line: 203, baseType: !57, size: 32, align: 32, offset: 224)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "otherpriority", scope: !128, file: !4, line: 204, baseType: !136, size: 64, align: 64, offset: 256)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "section", scope: !128, file: !4, line: 205, baseType: !136, size: 64, align: 64, offset: 320)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "configversion", scope: !128, file: !4, line: 206, baseType: !169, size: 192, align: 64, offset: 384)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !128, file: !4, line: 207, baseType: !191, size: 960, align: 64, offset: 576)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgbin", file: !4, line: 107, size: 960, align: 64, elements: !192)
!192 = !{!193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !213}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "depends", scope: !191, file: !4, line: 108, baseType: !148, size: 64, align: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "essential", scope: !191, file: !4, line: 110, baseType: !177, size: 8, align: 8, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "multiarch", scope: !191, file: !4, line: 111, baseType: !67, size: 32, align: 32, offset: 96)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !191, file: !4, line: 112, baseType: !160, size: 64, align: 64, offset: 128)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "pkgname_archqual", scope: !191, file: !4, line: 115, baseType: !136, size: 64, align: 64, offset: 192)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !191, file: !4, line: 116, baseType: !136, size: 64, align: 64, offset: 256)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "maintainer", scope: !191, file: !4, line: 117, baseType: !136, size: 64, align: 64, offset: 320)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !191, file: !4, line: 118, baseType: !136, size: 64, align: 64, offset: 384)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "installedsize", scope: !191, file: !4, line: 119, baseType: !136, size: 64, align: 64, offset: 448)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !191, file: !4, line: 120, baseType: !136, size: 64, align: 64, offset: 512)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "bugs", scope: !191, file: !4, line: 121, baseType: !136, size: 64, align: 64, offset: 576)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !191, file: !4, line: 122, baseType: !169, size: 192, align: 64, offset: 640)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "conffiles", scope: !191, file: !4, line: 123, baseType: !206, size: 64, align: 64, offset: 832)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64, align: 64)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conffile", file: !4, line: 80, size: 256, align: 64, elements: !208)
!208 = !{!209, !210, !211, !212}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !207, file: !4, line: 81, baseType: !206, size: 64, align: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !207, file: !4, line: 82, baseType: !136, size: 64, align: 64, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !207, file: !4, line: 83, baseType: !136, size: 64, align: 64, offset: 128)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "obsolete", scope: !207, file: !4, line: 84, baseType: !177, size: 8, align: 8, offset: 192)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "arbs", scope: !191, file: !4, line: 124, baseType: !214, size: 64, align: 64, offset: 896)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64, align: 64)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arbitraryfield", file: !4, line: 74, size: 192, align: 64, elements: !216)
!216 = !{!217, !218, !219}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !215, file: !4, line: 75, baseType: !214, size: 64, align: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !215, file: !4, line: 76, baseType: !136, size: 64, align: 64, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !215, file: !4, line: 77, baseType: !136, size: 64, align: 64, offset: 128)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !128, file: !4, line: 208, baseType: !191, size: 960, align: 64, offset: 1536)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "clientdata", scope: !128, file: !4, line: 209, baseType: !222, size: 64, align: 64, offset: 2496)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64, align: 64)
!223 = !DICompositeType(tag: DW_TAG_structure_type, name: "perpackagestate", file: !4, line: 151, flags: DIFlagFwdDecl)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "archives", scope: !128, file: !4, line: 211, baseType: !225, size: 64, align: 64, offset: 2560)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64, align: 64)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archivedetails", file: !4, line: 87, size: 320, align: 64, elements: !227)
!227 = !{!228, !229, !230, !231, !232}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !226, file: !4, line: 88, baseType: !225, size: 64, align: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !226, file: !4, line: 89, baseType: !136, size: 64, align: 64, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "msdosname", scope: !226, file: !4, line: 90, baseType: !136, size: 64, align: 64, offset: 128)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !226, file: !4, line: 91, baseType: !136, size: 64, align: 64, offset: 192)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "md5sum", scope: !226, file: !4, line: 92, baseType: !136, size: 64, align: 64, offset: 256)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "trigaw", scope: !128, file: !4, line: 216, baseType: !234, size: 128, align: 64, offset: 2624)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !128, file: !4, line: 213, size: 128, align: 64, elements: !235)
!235 = !{!236, !248}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !234, file: !4, line: 215, baseType: !237, size: 64, align: 64)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64, align: 64)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigaw", file: !4, line: 142, size: 320, align: 64, elements: !239)
!239 = !{!240, !241, !242, !243}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "aw", scope: !238, file: !4, line: 143, baseType: !127, size: 64, align: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "pend", scope: !238, file: !4, line: 143, baseType: !127, size: 64, align: 64, offset: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "samepend_next", scope: !238, file: !4, line: 144, baseType: !237, size: 64, align: 64, offset: 128)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "sameaw", scope: !238, file: !4, line: 147, baseType: !244, size: 128, align: 64, offset: 192)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !238, file: !4, line: 145, size: 128, align: 64, elements: !245)
!245 = !{!246, !247}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !244, file: !4, line: 146, baseType: !237, size: 64, align: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !244, file: !4, line: 146, baseType: !237, size: 64, align: 64, offset: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !234, file: !4, line: 215, baseType: !237, size: 64, align: 64, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "othertrigaw_head", scope: !128, file: !4, line: 219, baseType: !237, size: 64, align: 64, offset: 2752)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "trigpend_head", scope: !128, file: !4, line: 220, baseType: !251, size: 64, align: 64, offset: 2816)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64, align: 64)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigpend", file: !4, line: 134, size: 128, align: 64, elements: !253)
!253 = !{!254, !255}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !252, file: !4, line: 135, baseType: !251, size: 64, align: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !252, file: !4, line: 136, baseType: !136, size: 64, align: 64, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !128, file: !4, line: 231, baseType: !257, size: 64, align: 64, offset: 2880)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64, align: 64)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode_list", file: !74, line: 122, size: 128, align: 64, elements: !259)
!259 = !{!260, !261}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !258, file: !74, line: 123, baseType: !257, size: 64, align: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "namenode", scope: !258, file: !74, line: 124, baseType: !262, size: 64, align: 64, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64, align: 64)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode", file: !74, line: 90, size: 640, align: 64, elements: !264)
!264 = !{!265, !266, !267, !270, !278, !297, !300, !301, !302, !303}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !263, file: !74, line: 91, baseType: !262, size: 64, align: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !263, file: !74, line: 92, baseType: !136, size: 64, align: 64, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "packages", scope: !263, file: !74, line: 93, baseType: !268, size: 64, align: 64, offset: 128)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64, align: 64)
!269 = !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_list", file: !74, line: 93, flags: DIFlagFwdDecl)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "divert", scope: !263, file: !74, line: 94, baseType: !271, size: 64, align: 64, offset: 192)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64, align: 64)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_diversion", file: !74, line: 151, size: 256, align: 64, elements: !273)
!273 = !{!274, !275, !276, !277}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "useinstead", scope: !272, file: !74, line: 152, baseType: !262, size: 64, align: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "camefrom", scope: !272, file: !74, line: 153, baseType: !262, size: 64, align: 64, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "pkgset", scope: !272, file: !74, line: 154, baseType: !131, size: 64, align: 64, offset: 128)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !272, file: !74, line: 157, baseType: !271, size: 64, align: 64, offset: 192)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "statoverride", scope: !263, file: !74, line: 101, baseType: !279, size: 64, align: 64, offset: 256)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64, align: 64)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_stat", file: !281, line: 40, size: 256, align: 64, elements: !282)
!281 = !DIFile(filename: "../../lib/dpkg/file.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!282 = !{!283, !288, !291, !294, !296}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !280, file: !281, line: 41, baseType: !284, size: 32, align: 32)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !285, line: 81, baseType: !286)
!285 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !287, line: 125, baseType: !172)
!287 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!288 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !280, file: !281, line: 42, baseType: !289, size: 32, align: 32, offset: 32)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !285, line: 48, baseType: !290)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !287, line: 126, baseType: !172)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !280, file: !281, line: 43, baseType: !292, size: 32, align: 32, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !285, line: 62, baseType: !293)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !287, line: 129, baseType: !172)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "uname", scope: !280, file: !281, line: 47, baseType: !295, size: 64, align: 64, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64, align: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !280, file: !281, line: 48, baseType: !295, size: 64, align: 64, offset: 192)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "trig_interested", scope: !263, file: !74, line: 103, baseType: !298, size: 64, align: 64, offset: 320)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64, align: 64)
!299 = !DICompositeType(tag: DW_TAG_structure_type, name: "trigfileint", file: !74, line: 103, flags: DIFlagFwdDecl)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !263, file: !74, line: 111, baseType: !73, size: 32, align: 32, offset: 384)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "oldhash", scope: !263, file: !74, line: 114, baseType: !136, size: 64, align: 64, offset: 448)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "newhash", scope: !263, file: !74, line: 117, baseType: !136, size: 64, align: 64, offset: 512)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "file_ondisk_id", scope: !263, file: !74, line: 119, baseType: !304, size: 64, align: 64, offset: 576)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64, align: 64)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ondisk_id", file: !74, line: 85, size: 128, align: 64, elements: !306)
!306 = !{!307, !311}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "id_dev", scope: !305, file: !74, line: 86, baseType: !308, size: 64, align: 64)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !285, line: 43, baseType: !309)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !287, line: 124, baseType: !310)
!310 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "id_ino", scope: !305, file: !74, line: 87, baseType: !312, size: 64, align: 64, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !285, line: 54, baseType: !313)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !287, line: 127, baseType: !310)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_phys_offs", scope: !128, file: !4, line: 232, baseType: !315, size: 64, align: 64, offset: 2944)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !285, line: 73, baseType: !316)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !287, line: 131, baseType: !317)
!317 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_valid", scope: !128, file: !4, line: 233, baseType: !177, size: 8, align: 8, offset: 3008)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "status_dirty", scope: !128, file: !4, line: 236, baseType: !177, size: 8, align: 8, offset: 3016)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64, align: 64)
!321 = !{}
!322 = !DILocalVariable(name: "pkg", arg: 1, scope: !123, file: !124, line: 46, type: !127)
!323 = !DIExpression()
!324 = !DILocation(line: 46, column: 39, scope: !123)
!325 = !DILocalVariable(name: "pkgbin", arg: 2, scope: !123, file: !124, line: 46, type: !320)
!326 = !DILocation(line: 46, column: 59, scope: !123)
!327 = !DILocalVariable(name: "list", arg: 3, scope: !123, file: !124, line: 47, type: !257)
!328 = !DILocation(line: 47, column: 50, scope: !123)
!329 = !DILocalVariable(name: "mask", arg: 4, scope: !123, file: !124, line: 47, type: !73)
!330 = !DILocation(line: 47, column: 81, scope: !123)
!331 = !DILocalVariable(name: "file", scope: !123, file: !124, line: 49, type: !332)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64, align: 64)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atomic_file", file: !87, line: 40, size: 256, align: 64, elements: !334)
!334 = !{!335, !336, !337, !338}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !333, file: !87, line: 41, baseType: !86, size: 32, align: 32)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !333, file: !87, line: 42, baseType: !295, size: 64, align: 64, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "name_new", scope: !333, file: !87, line: 43, baseType: !295, size: 64, align: 64, offset: 128)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !333, file: !87, line: 44, baseType: !339, size: 64, align: 64, offset: 192)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64, align: 64)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !341, line: 48, baseType: !342)
!341 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !343, line: 241, size: 1728, align: 64, elements: !344)
!343 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!344 = !{!345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !365, !366, !367, !368, !369, !371, !373, !377, !380, !382, !383, !384, !385, !386, !389, !390}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !342, file: !343, line: 242, baseType: !181, size: 32, align: 32)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !342, file: !343, line: 247, baseType: !295, size: 64, align: 64, offset: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !342, file: !343, line: 248, baseType: !295, size: 64, align: 64, offset: 128)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !342, file: !343, line: 249, baseType: !295, size: 64, align: 64, offset: 192)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !342, file: !343, line: 250, baseType: !295, size: 64, align: 64, offset: 256)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !342, file: !343, line: 251, baseType: !295, size: 64, align: 64, offset: 320)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !342, file: !343, line: 252, baseType: !295, size: 64, align: 64, offset: 384)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !342, file: !343, line: 253, baseType: !295, size: 64, align: 64, offset: 448)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !342, file: !343, line: 254, baseType: !295, size: 64, align: 64, offset: 512)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !342, file: !343, line: 256, baseType: !295, size: 64, align: 64, offset: 576)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !342, file: !343, line: 257, baseType: !295, size: 64, align: 64, offset: 640)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !342, file: !343, line: 258, baseType: !295, size: 64, align: 64, offset: 704)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !342, file: !343, line: 260, baseType: !358, size: 64, align: 64, offset: 768)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64, align: 64)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !343, line: 156, size: 192, align: 64, elements: !360)
!360 = !{!361, !362, !364}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !359, file: !343, line: 157, baseType: !358, size: 64, align: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !359, file: !343, line: 158, baseType: !363, size: 64, align: 64, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64, align: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !359, file: !343, line: 162, baseType: !181, size: 32, align: 32, offset: 128)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !342, file: !343, line: 262, baseType: !363, size: 64, align: 64, offset: 832)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !342, file: !343, line: 264, baseType: !181, size: 32, align: 32, offset: 896)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !342, file: !343, line: 268, baseType: !181, size: 32, align: 32, offset: 928)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !342, file: !343, line: 270, baseType: !316, size: 64, align: 64, offset: 960)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !342, file: !343, line: 274, baseType: !370, size: 16, align: 16, offset: 1024)
!370 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !342, file: !343, line: 275, baseType: !372, size: 8, align: 8, offset: 1040)
!372 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !342, file: !343, line: 276, baseType: !374, size: 8, align: 8, offset: 1048)
!374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 8, align: 8, elements: !375)
!375 = !{!376}
!376 = !DISubrange(count: 1)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !342, file: !343, line: 280, baseType: !378, size: 64, align: 64, offset: 1088)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64, align: 64)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !343, line: 150, baseType: null)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !342, file: !343, line: 289, baseType: !381, size: 64, align: 64, offset: 1152)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !287, line: 132, baseType: !317)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !342, file: !343, line: 297, baseType: !119, size: 64, align: 64, offset: 1216)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !342, file: !343, line: 298, baseType: !119, size: 64, align: 64, offset: 1280)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !342, file: !343, line: 299, baseType: !119, size: 64, align: 64, offset: 1344)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !342, file: !343, line: 300, baseType: !119, size: 64, align: 64, offset: 1408)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !342, file: !343, line: 302, baseType: !387, size: 64, align: 64, offset: 1472)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !388, line: 216, baseType: !310)
!388 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!389 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !342, file: !343, line: 303, baseType: !181, size: 32, align: 32, offset: 1536)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !342, file: !343, line: 305, baseType: !391, size: 160, align: 8, offset: 1568)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 160, align: 8, elements: !392)
!392 = !{!393}
!393 = !DISubrange(count: 20)
!394 = !DILocation(line: 49, column: 22, scope: !123)
!395 = !DILocalVariable(name: "hashfile", scope: !123, file: !124, line: 50, type: !136)
!396 = !DILocation(line: 50, column: 14, scope: !123)
!397 = !DILocation(line: 52, column: 2, scope: !123)
!398 = !DILocation(line: 54, column: 26, scope: !399)
!399 = distinct !DILexicalBlock(scope: !123, file: !124, line: 54, column: 6)
!400 = !DILocation(line: 54, column: 32, scope: !399)
!401 = !DILocation(line: 54, column: 37, scope: !399)
!402 = !DILocation(line: 54, column: 6, scope: !399)
!403 = !DILocation(line: 54, column: 6, scope: !123)
!404 = !DILocation(line: 55, column: 3, scope: !399)
!405 = !DILocation(line: 57, column: 33, scope: !123)
!406 = !DILocation(line: 57, column: 38, scope: !123)
!407 = !DILocation(line: 57, column: 13, scope: !123)
!408 = !DILocation(line: 57, column: 11, scope: !123)
!409 = !DILocation(line: 59, column: 25, scope: !123)
!410 = !DILocation(line: 59, column: 9, scope: !123)
!411 = !DILocation(line: 59, column: 7, scope: !123)
!412 = !DILocation(line: 60, column: 19, scope: !123)
!413 = !DILocation(line: 60, column: 2, scope: !123)
!414 = !DILocation(line: 62, column: 2, scope: !123)
!415 = !DILocation(line: 62, column: 9, scope: !416)
!416 = !DILexicalBlockFile(scope: !417, file: !124, discriminator: 1)
!417 = distinct !DILexicalBlock(scope: !418, file: !124, line: 62, column: 2)
!418 = distinct !DILexicalBlock(scope: !123, file: !124, line: 62, column: 2)
!419 = !DILocation(line: 62, column: 2, scope: !416)
!420 = !DILocalVariable(name: "namenode", scope: !421, file: !124, line: 63, type: !262)
!421 = distinct !DILexicalBlock(scope: !417, file: !124, line: 62, column: 34)
!422 = !DILocation(line: 63, column: 26, scope: !421)
!423 = !DILocation(line: 63, column: 37, scope: !421)
!424 = !DILocation(line: 63, column: 43, scope: !421)
!425 = !DILocation(line: 65, column: 7, scope: !426)
!426 = distinct !DILexicalBlock(scope: !421, file: !124, line: 65, column: 7)
!427 = !DILocation(line: 65, column: 12, scope: !426)
!428 = !DILocation(line: 65, column: 16, scope: !429)
!429 = !DILexicalBlockFile(scope: !426, file: !124, discriminator: 1)
!430 = !DILocation(line: 65, column: 26, scope: !429)
!431 = !DILocation(line: 65, column: 34, scope: !429)
!432 = !DILocation(line: 65, column: 32, scope: !429)
!433 = !DILocation(line: 65, column: 7, scope: !429)
!434 = !DILocation(line: 66, column: 4, scope: !426)
!435 = !DILocation(line: 67, column: 14, scope: !436)
!436 = distinct !DILexicalBlock(scope: !421, file: !124, line: 67, column: 7)
!437 = !DILocation(line: 67, column: 24, scope: !436)
!438 = !DILocation(line: 67, column: 7, scope: !436)
!439 = !DILocation(line: 67, column: 38, scope: !436)
!440 = !DILocation(line: 67, column: 7, scope: !421)
!441 = !DILocation(line: 68, column: 4, scope: !436)
!442 = !DILocation(line: 70, column: 11, scope: !421)
!443 = !DILocation(line: 70, column: 17, scope: !421)
!444 = !DILocation(line: 71, column: 11, scope: !421)
!445 = !DILocation(line: 71, column: 21, scope: !421)
!446 = !DILocation(line: 71, column: 30, scope: !421)
!447 = !DILocation(line: 71, column: 40, scope: !421)
!448 = !DILocation(line: 71, column: 45, scope: !421)
!449 = !DILocation(line: 70, column: 3, scope: !421)
!450 = !DILocation(line: 72, column: 2, scope: !421)
!451 = !DILocation(line: 62, column: 22, scope: !452)
!452 = !DILexicalBlockFile(scope: !417, file: !124, discriminator: 2)
!453 = !DILocation(line: 62, column: 28, scope: !452)
!454 = !DILocation(line: 62, column: 20, scope: !452)
!455 = !DILocation(line: 62, column: 2, scope: !452)
!456 = distinct !{!456, !414}
!457 = !DILocation(line: 74, column: 19, scope: !123)
!458 = !DILocation(line: 74, column: 2, scope: !123)
!459 = !DILocation(line: 75, column: 20, scope: !123)
!460 = !DILocation(line: 75, column: 2, scope: !123)
!461 = !DILocation(line: 76, column: 21, scope: !123)
!462 = !DILocation(line: 76, column: 2, scope: !123)
!463 = !DILocation(line: 77, column: 19, scope: !123)
!464 = !DILocation(line: 77, column: 2, scope: !123)
!465 = !DILocation(line: 79, column: 16, scope: !123)
!466 = !DILocation(line: 79, column: 2, scope: !467)
!467 = !DILexicalBlockFile(scope: !123, file: !124, discriminator: 1)
!468 = !DILocation(line: 80, column: 1, scope: !123)
!469 = !DILocation(line: 80, column: 1, scope: !467)
!470 = distinct !DISubprogram(name: "parse_filehash", scope: !124, file: !124, line: 134, type: !471, isLocal: false, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !321)
!471 = !DISubroutineType(types: !472)
!472 = !{null, !127, !320}
!473 = !DILocalVariable(name: "pkg", arg: 1, scope: !470, file: !124, line: 134, type: !127)
!474 = !DILocation(line: 134, column: 32, scope: !470)
!475 = !DILocalVariable(name: "pkgbin", arg: 2, scope: !470, file: !124, line: 134, type: !320)
!476 = !DILocation(line: 134, column: 52, scope: !470)
!477 = !DILocalVariable(name: "hashfile", scope: !470, file: !124, line: 136, type: !136)
!478 = !DILocation(line: 136, column: 14, scope: !470)
!479 = !DILocalVariable(name: "buf", scope: !470, file: !124, line: 137, type: !480)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varbuf", file: !481, line: 55, size: 192, align: 64, elements: !482)
!481 = !DIFile(filename: "../../lib/dpkg/varbuf.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!482 = !{!483, !484, !485}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !480, file: !481, line: 56, baseType: !387, size: 64, align: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !480, file: !481, line: 56, baseType: !387, size: 64, align: 64, offset: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !480, file: !481, line: 57, baseType: !295, size: 64, align: 64, offset: 128)
!486 = !DILocation(line: 137, column: 16, scope: !470)
!487 = !DILocalVariable(name: "err", scope: !470, file: !124, line: 138, type: !488)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_error", file: !107, line: 42, size: 128, align: 64, elements: !489)
!489 = !{!490, !491, !492}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !488, file: !107, line: 43, baseType: !106, size: 32, align: 32)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "syserrno", scope: !488, file: !107, line: 45, baseType: !181, size: 32, align: 32, offset: 32)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !488, file: !107, line: 46, baseType: !295, size: 64, align: 64, offset: 64)
!493 = !DILocation(line: 138, column: 20, scope: !470)
!494 = !DILocation(line: 140, column: 33, scope: !470)
!495 = !DILocation(line: 140, column: 38, scope: !470)
!496 = !DILocation(line: 140, column: 13, scope: !470)
!497 = !DILocation(line: 140, column: 11, scope: !470)
!498 = !DILocation(line: 142, column: 17, scope: !499)
!499 = distinct !DILexicalBlock(scope: !470, file: !124, line: 142, column: 6)
!500 = !DILocation(line: 142, column: 6, scope: !499)
!501 = !DILocation(line: 142, column: 39, scope: !499)
!502 = !DILocation(line: 142, column: 43, scope: !499)
!503 = !DILocation(line: 142, column: 50, scope: !504)
!504 = !DILexicalBlockFile(scope: !499, file: !124, discriminator: 1)
!505 = !DILocation(line: 142, column: 59, scope: !504)
!506 = !DILocation(line: 142, column: 6, scope: !504)
!507 = !DILocation(line: 144, column: 19, scope: !499)
!508 = !DILocation(line: 145, column: 40, scope: !499)
!509 = !DILocation(line: 145, column: 31, scope: !499)
!510 = !DILocation(line: 143, column: 3, scope: !499)
!511 = !DILocation(line: 147, column: 10, scope: !512)
!512 = distinct !DILexicalBlock(scope: !470, file: !124, line: 147, column: 6)
!513 = !DILocation(line: 147, column: 15, scope: !512)
!514 = !DILocation(line: 147, column: 6, scope: !470)
!515 = !DILocation(line: 148, column: 31, scope: !512)
!516 = !DILocation(line: 148, column: 36, scope: !512)
!517 = !DILocation(line: 148, column: 3, scope: !512)
!518 = !DILocation(line: 150, column: 2, scope: !470)
!519 = !DILocation(line: 151, column: 1, scope: !470)
!520 = distinct !DISubprogram(name: "parse_filehash_buffer", scope: !124, file: !124, line: 83, type: !521, isLocal: true, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !321)
!521 = !DISubroutineType(types: !522)
!522 = !{null, !523, !127, !320}
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64, align: 64)
!524 = !DILocalVariable(name: "buf", arg: 1, scope: !520, file: !124, line: 83, type: !523)
!525 = !DILocation(line: 83, column: 38, scope: !520)
!526 = !DILocalVariable(name: "pkg", arg: 2, scope: !520, file: !124, line: 84, type: !127)
!527 = !DILocation(line: 84, column: 39, scope: !520)
!528 = !DILocalVariable(name: "pkgbin", arg: 3, scope: !520, file: !124, line: 84, type: !320)
!529 = !DILocation(line: 84, column: 59, scope: !520)
!530 = !DILocalVariable(name: "thisline", scope: !520, file: !124, line: 86, type: !295)
!531 = !DILocation(line: 86, column: 8, scope: !520)
!532 = !DILocalVariable(name: "nextline", scope: !520, file: !124, line: 86, type: !295)
!533 = !DILocation(line: 86, column: 19, scope: !520)
!534 = !DILocalVariable(name: "pkgname", scope: !520, file: !124, line: 87, type: !136)
!535 = !DILocation(line: 87, column: 14, scope: !520)
!536 = !DILocation(line: 87, column: 33, scope: !520)
!537 = !DILocation(line: 87, column: 24, scope: !520)
!538 = !DILocalVariable(name: "buf_end", scope: !520, file: !124, line: 88, type: !136)
!539 = !DILocation(line: 88, column: 14, scope: !520)
!540 = !DILocation(line: 88, column: 24, scope: !520)
!541 = !DILocation(line: 88, column: 29, scope: !520)
!542 = !DILocation(line: 88, column: 35, scope: !520)
!543 = !DILocation(line: 88, column: 40, scope: !520)
!544 = !DILocation(line: 88, column: 33, scope: !520)
!545 = !DILocation(line: 90, column: 18, scope: !546)
!546 = distinct !DILexicalBlock(scope: !520, file: !124, line: 90, column: 2)
!547 = !DILocation(line: 90, column: 23, scope: !546)
!548 = !DILocation(line: 90, column: 16, scope: !546)
!549 = !DILocation(line: 90, column: 7, scope: !546)
!550 = !DILocation(line: 90, column: 28, scope: !551)
!551 = !DILexicalBlockFile(scope: !552, file: !124, discriminator: 1)
!552 = distinct !DILexicalBlock(scope: !546, file: !124, line: 90, column: 2)
!553 = !DILocation(line: 90, column: 39, scope: !551)
!554 = !DILocation(line: 90, column: 37, scope: !551)
!555 = !DILocation(line: 90, column: 2, scope: !551)
!556 = !DILocalVariable(name: "namenode", scope: !557, file: !124, line: 91, type: !262)
!557 = distinct !DILexicalBlock(scope: !552, file: !124, line: 90, column: 69)
!558 = !DILocation(line: 91, column: 25, scope: !557)
!559 = !DILocalVariable(name: "endline", scope: !557, file: !124, line: 92, type: !295)
!560 = !DILocation(line: 92, column: 9, scope: !557)
!561 = !DILocalVariable(name: "hash_end", scope: !557, file: !124, line: 92, type: !295)
!562 = !DILocation(line: 92, column: 19, scope: !557)
!563 = !DILocalVariable(name: "filename", scope: !557, file: !124, line: 92, type: !295)
!564 = !DILocation(line: 92, column: 30, scope: !557)
!565 = !DILocation(line: 94, column: 20, scope: !557)
!566 = !DILocation(line: 94, column: 36, scope: !557)
!567 = !DILocation(line: 94, column: 46, scope: !557)
!568 = !DILocation(line: 94, column: 44, scope: !557)
!569 = !DILocation(line: 94, column: 13, scope: !557)
!570 = !DILocation(line: 94, column: 11, scope: !557)
!571 = !DILocation(line: 95, column: 7, scope: !572)
!572 = distinct !DILexicalBlock(scope: !557, file: !124, line: 95, column: 7)
!573 = !DILocation(line: 95, column: 15, scope: !572)
!574 = !DILocation(line: 95, column: 7, scope: !557)
!575 = !DILocation(line: 96, column: 10, scope: !572)
!576 = !DILocation(line: 97, column: 49, scope: !572)
!577 = !DILocation(line: 96, column: 4, scope: !578)
!578 = !DILexicalBlockFile(scope: !572, file: !124, discriminator: 1)
!579 = !DILocation(line: 96, column: 4, scope: !572)
!580 = !DILocation(line: 100, column: 14, scope: !557)
!581 = !DILocation(line: 100, column: 23, scope: !557)
!582 = !DILocation(line: 100, column: 12, scope: !557)
!583 = !DILocation(line: 102, column: 14, scope: !557)
!584 = !DILocation(line: 102, column: 23, scope: !557)
!585 = !DILocation(line: 102, column: 12, scope: !557)
!586 = !DILocation(line: 103, column: 7, scope: !587)
!587 = distinct !DILexicalBlock(scope: !557, file: !124, line: 103, column: 7)
!588 = !DILocation(line: 103, column: 16, scope: !587)
!589 = !DILocation(line: 103, column: 22, scope: !587)
!590 = !DILocation(line: 103, column: 20, scope: !587)
!591 = !DILocation(line: 103, column: 7, scope: !557)
!592 = !DILocation(line: 104, column: 10, scope: !587)
!593 = !DILocation(line: 105, column: 41, scope: !587)
!594 = !DILocation(line: 104, column: 4, scope: !595)
!595 = !DILexicalBlockFile(scope: !587, file: !124, discriminator: 1)
!596 = !DILocation(line: 104, column: 4, scope: !587)
!597 = !DILocation(line: 107, column: 7, scope: !598)
!598 = distinct !DILexicalBlock(scope: !557, file: !124, line: 107, column: 7)
!599 = !DILocation(line: 107, column: 19, scope: !598)
!600 = !DILocation(line: 107, column: 26, scope: !598)
!601 = !DILocation(line: 107, column: 29, scope: !602)
!602 = !DILexicalBlockFile(scope: !598, file: !124, discriminator: 1)
!603 = !DILocation(line: 107, column: 41, scope: !602)
!604 = !DILocation(line: 107, column: 7, scope: !602)
!605 = !DILocation(line: 108, column: 10, scope: !598)
!606 = !DILocation(line: 109, column: 51, scope: !598)
!607 = !DILocation(line: 108, column: 4, scope: !602)
!608 = !DILocation(line: 108, column: 4, scope: !598)
!609 = !DILocation(line: 110, column: 3, scope: !557)
!610 = !DILocation(line: 110, column: 15, scope: !557)
!611 = !DILocation(line: 113, column: 14, scope: !557)
!612 = !DILocation(line: 113, column: 22, scope: !557)
!613 = !DILocation(line: 113, column: 12, scope: !557)
!614 = !DILocation(line: 116, column: 7, scope: !615)
!615 = distinct !DILexicalBlock(scope: !557, file: !124, line: 116, column: 7)
!616 = !DILocation(line: 116, column: 17, scope: !615)
!617 = !DILocation(line: 116, column: 15, scope: !615)
!618 = !DILocation(line: 116, column: 26, scope: !615)
!619 = !DILocation(line: 116, column: 29, scope: !620)
!620 = !DILexicalBlockFile(scope: !615, file: !124, discriminator: 1)
!621 = !DILocation(line: 116, column: 41, scope: !620)
!622 = !DILocation(line: 116, column: 7, scope: !620)
!623 = !DILocation(line: 117, column: 11, scope: !615)
!624 = !DILocation(line: 117, column: 4, scope: !615)
!625 = !DILocation(line: 118, column: 4, scope: !557)
!626 = !DILocation(line: 118, column: 12, scope: !557)
!627 = !DILocation(line: 120, column: 7, scope: !628)
!628 = distinct !DILexicalBlock(scope: !557, file: !124, line: 120, column: 7)
!629 = !DILocation(line: 120, column: 18, scope: !628)
!630 = !DILocation(line: 120, column: 15, scope: !628)
!631 = !DILocation(line: 120, column: 7, scope: !557)
!632 = !DILocation(line: 121, column: 10, scope: !628)
!633 = !DILocation(line: 122, column: 51, scope: !628)
!634 = !DILocation(line: 121, column: 4, scope: !635)
!635 = !DILexicalBlockFile(scope: !628, file: !124, discriminator: 1)
!636 = !DILocation(line: 121, column: 4, scope: !628)
!637 = !DILocation(line: 125, column: 9, scope: !557)
!638 = !DILocation(line: 125, column: 19, scope: !557)
!639 = !DILocation(line: 124, column: 3, scope: !557)
!640 = !DILocation(line: 128, column: 34, scope: !557)
!641 = !DILocation(line: 128, column: 14, scope: !557)
!642 = !DILocation(line: 128, column: 12, scope: !557)
!643 = !DILocation(line: 129, column: 33, scope: !557)
!644 = !DILocation(line: 129, column: 23, scope: !557)
!645 = !DILocation(line: 129, column: 3, scope: !557)
!646 = !DILocation(line: 129, column: 13, scope: !557)
!647 = !DILocation(line: 129, column: 21, scope: !557)
!648 = !DILocation(line: 130, column: 2, scope: !557)
!649 = !DILocation(line: 90, column: 59, scope: !650)
!650 = !DILexicalBlockFile(scope: !552, file: !124, discriminator: 2)
!651 = !DILocation(line: 90, column: 57, scope: !650)
!652 = !DILocation(line: 90, column: 2, scope: !650)
!653 = distinct !{!653, !654}
!654 = !DILocation(line: 90, column: 2, scope: !520)
!655 = !DILocation(line: 131, column: 1, scope: !520)
