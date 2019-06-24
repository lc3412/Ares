; ModuleID = './[inter]src--verify.o.i'
source_filename = "./[inter]src--verify.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct.file_stat = type { i32, i32, i32, i8*, i8* }
%struct.trigfileint = type opaque
%struct.file_ondisk_id = type { i64, i64 }
%struct.verify_checks = type { i32 }
%struct.cmdinfo = type { i8*, i8, i32, i32*, i8**, void (%struct.cmdinfo*, i8*)*, i32, i8*, i32 (i8**)* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.pkg_hash_iter = type opaque
%struct.varbuf = type { i64, i64, i8* }

@.str = private unnamed_addr constant [4 x i8] c"rpm\00", align 1
@verify_output = internal global void (%struct.fsys_namenode*, %struct.verify_checks*)* @verify_output_rpm, align 8
@cipaction = external global %struct.cmdinfo*, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"package '%s' is not installed\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"<standard output>\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"%.9s %c %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@instdir = external global i8*, align 8

; Function Attrs: nounwind uwtable
define zeroext i1 @verify_set_output(i8*) #0 !dbg !341 {
  %2 = alloca i1, align 1
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !345, metadata !346), !dbg !347
  %4 = load i8*, i8** %3, align 8, !dbg !348
  %5 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0)) #6, !dbg !350
  %6 = icmp eq i32 %5, 0, !dbg !351
  br i1 %6, label %7, label %8, !dbg !352

; <label>:7:                                      ; preds = %1
  store void (%struct.fsys_namenode*, %struct.verify_checks*)* @verify_output_rpm, void (%struct.fsys_namenode*, %struct.verify_checks*)** @verify_output, align 8, !dbg !353
  br label %9, !dbg !354

; <label>:8:                                      ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !355
  br label %10, !dbg !355

; <label>:9:                                      ; preds = %7
  store i1 true, i1* %2, align 1, !dbg !356
  br label %10, !dbg !356

; <label>:10:                                     ; preds = %9, %8
  %11 = load i1, i1* %2, align 1, !dbg !357
  ret i1 %11, !dbg !357
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @verify_output_rpm(%struct.fsys_namenode*, %struct.verify_checks*) #0 !dbg !358 {
  %3 = alloca %struct.fsys_namenode*, align 8
  %4 = alloca %struct.verify_checks*, align 8
  %5 = alloca [9 x i8], align 1
  %6 = alloca i32, align 4
  store %struct.fsys_namenode* %0, %struct.fsys_namenode** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %3, metadata !359, metadata !346), !dbg !360
  store %struct.verify_checks* %1, %struct.verify_checks** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.verify_checks** %4, metadata !361, metadata !346), !dbg !362
  call void @llvm.dbg.declare(metadata [9 x i8]* %5, metadata !363, metadata !346), !dbg !367
  call void @llvm.dbg.declare(metadata i32* %6, metadata !368, metadata !346), !dbg !369
  %7 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i32 0, i32 0, !dbg !370
  call void @llvm.memset.p0i8.i64(i8* %7, i8 63, i64 9, i32 1, i1 false), !dbg !370
  %8 = load %struct.verify_checks*, %struct.verify_checks** %4, align 8, !dbg !371
  %9 = getelementptr inbounds %struct.verify_checks, %struct.verify_checks* %8, i32 0, i32 0, !dbg !372
  %10 = load i32, i32* %9, align 4, !dbg !372
  %11 = call i32 @verify_result_rpm(i32 %10, i32 53), !dbg !373
  %12 = trunc i32 %11 to i8, !dbg !373
  %13 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 2, !dbg !374
  store i8 %12, i8* %13, align 1, !dbg !375
  %14 = load %struct.fsys_namenode*, %struct.fsys_namenode** %3, align 8, !dbg !376
  %15 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %14, i32 0, i32 6, !dbg !378
  %16 = load i32, i32* %15, align 8, !dbg !378
  %17 = and i32 %16, 4, !dbg !379
  %18 = icmp ne i32 %17, 0, !dbg !379
  br i1 %18, label %19, label %20, !dbg !380

; <label>:19:                                     ; preds = %2
  store i32 99, i32* %6, align 4, !dbg !381
  br label %21, !dbg !382

; <label>:20:                                     ; preds = %2
  store i32 32, i32* %6, align 4, !dbg !383
  br label %21

; <label>:21:                                     ; preds = %20, %19
  %22 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i32 0, i32 0, !dbg !384
  %23 = load i32, i32* %6, align 4, !dbg !385
  %24 = load %struct.fsys_namenode*, %struct.fsys_namenode** %3, align 8, !dbg !386
  %25 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %24, i32 0, i32 1, !dbg !387
  %26 = load i8*, i8** %25, align 8, !dbg !387
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* %22, i32 %23, i8* %26), !dbg !388
  ret void, !dbg !389
}

; Function Attrs: nounwind uwtable
define i32 @verify(i8**) #0 !dbg !390 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.pkginfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pkg_hash_iter*, align 8
  %6 = alloca i8*, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !395, metadata !346), !dbg !396
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %3, metadata !397, metadata !346), !dbg !398
  call void @llvm.dbg.declare(metadata i32* %4, metadata !399, metadata !346), !dbg !400
  store i32 0, i32* %4, align 4, !dbg !400
  %7 = call i32 @modstatdb_open(i32 0), !dbg !401
  call void @ensure_diversions(), !dbg !402
  %8 = load i8**, i8*** %2, align 8, !dbg !403
  %9 = load i8*, i8** %8, align 8, !dbg !405
  %10 = icmp ne i8* %9, null, !dbg !405
  br i1 %10, label %21, label %11, !dbg !406

; <label>:11:                                     ; preds = %1
  call void @llvm.dbg.declare(metadata %struct.pkg_hash_iter** %5, metadata !407, metadata !346), !dbg !411
  %12 = call %struct.pkg_hash_iter* @pkg_hash_iter_new(), !dbg !412
  store %struct.pkg_hash_iter* %12, %struct.pkg_hash_iter** %5, align 8, !dbg !413
  br label %13, !dbg !414

; <label>:13:                                     ; preds = %17, %11
  %14 = load %struct.pkg_hash_iter*, %struct.pkg_hash_iter** %5, align 8, !dbg !415
  %15 = call %struct.pkginfo* @pkg_hash_iter_next_pkg(%struct.pkg_hash_iter* %14), !dbg !417
  store %struct.pkginfo* %15, %struct.pkginfo** %3, align 8, !dbg !418
  %16 = icmp ne %struct.pkginfo* %15, null, !dbg !419
  br i1 %16, label %17, label %19, !dbg !419

; <label>:17:                                     ; preds = %13
  %18 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !420
  call void @verify_package(%struct.pkginfo* %18), !dbg !421
  br label %13, !dbg !422, !llvm.loop !424

; <label>:19:                                     ; preds = %13
  %20 = load %struct.pkg_hash_iter*, %struct.pkg_hash_iter** %5, align 8, !dbg !425
  call void @pkg_hash_iter_free(%struct.pkg_hash_iter* %20), !dbg !426
  br label %42, !dbg !427

; <label>:21:                                     ; preds = %1
  call void @llvm.dbg.declare(metadata i8** %6, metadata !428, metadata !346), !dbg !430
  br label %22, !dbg !431

; <label>:22:                                     ; preds = %39, %35, %21
  %23 = load i8**, i8*** %2, align 8, !dbg !432
  %24 = getelementptr inbounds i8*, i8** %23, i32 1, !dbg !432
  store i8** %24, i8*** %2, align 8, !dbg !432
  %25 = load i8*, i8** %23, align 8, !dbg !434
  store i8* %25, i8** %6, align 8, !dbg !435
  %26 = icmp ne i8* %25, null, !dbg !436
  br i1 %26, label %27, label %41, !dbg !436

; <label>:27:                                     ; preds = %22
  %28 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !437
  %29 = load i8*, i8** %6, align 8, !dbg !439
  %30 = call %struct.pkginfo* @dpkg_options_parse_pkgname(%struct.cmdinfo* %28, i8* %29), !dbg !440
  store %struct.pkginfo* %30, %struct.pkginfo** %3, align 8, !dbg !441
  %31 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !442
  %32 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %31, i32 0, i32 4, !dbg !444
  %33 = load i32, i32* %32, align 8, !dbg !444
  %34 = icmp eq i32 %33, 0, !dbg !445
  br i1 %34, label %35, label %39, !dbg !446

; <label>:35:                                     ; preds = %27
  %36 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0)) #7, !dbg !447
  %37 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !449
  %38 = call i8* @pkg_name(%struct.pkginfo* %37, i32 1), !dbg !450
  call void (i8*, ...) @notice(i8* %36, i8* %38), !dbg !451
  store i32 1, i32* %4, align 4, !dbg !453
  br label %22, !dbg !454, !llvm.loop !455

; <label>:39:                                     ; preds = %27
  %40 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !456
  call void @verify_package(%struct.pkginfo* %40), !dbg !457
  br label %22, !dbg !458, !llvm.loop !455

; <label>:41:                                     ; preds = %22
  br label %42

; <label>:42:                                     ; preds = %41, %19
  call void @modstatdb_shutdown(), !dbg !460
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !461
  %44 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0)) #7, !dbg !462
  call void @m_output(%struct._IO_FILE* %43, i8* %44), !dbg !463
  %45 = load i32, i32* %4, align 4, !dbg !465
  ret i32 %45, !dbg !466
}

declare i32 @modstatdb_open(i32) #3

declare void @ensure_diversions() #3

declare %struct.pkg_hash_iter* @pkg_hash_iter_new() #3

declare %struct.pkginfo* @pkg_hash_iter_next_pkg(%struct.pkg_hash_iter*) #3

; Function Attrs: nounwind uwtable
define internal void @verify_package(%struct.pkginfo*) #0 !dbg !467 {
  %2 = alloca %struct.pkginfo*, align 8
  %3 = alloca %struct.fsys_namenode_list*, align 8
  %4 = alloca %struct.varbuf, align 8
  %5 = alloca %struct.verify_checks, align 4
  %6 = alloca %struct.fsys_namenode*, align 8
  %7 = alloca [33 x i8], align 16
  %8 = alloca i32, align 4
  store %struct.pkginfo* %0, %struct.pkginfo** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %2, metadata !470, metadata !346), !dbg !471
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode_list** %3, metadata !472, metadata !346), !dbg !473
  call void @llvm.dbg.declare(metadata %struct.varbuf* %4, metadata !474, metadata !346), !dbg !483
  %9 = bitcast %struct.varbuf* %4 to i8*, !dbg !483
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 24, i32 8, i1 false), !dbg !483
  %10 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !484
  call void @ensure_packagefiles_available(%struct.pkginfo* %10), !dbg !485
  %11 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !486
  %12 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !487
  %13 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %12, i32 0, i32 9, !dbg !488
  call void @parse_filehash(%struct.pkginfo* %11, %struct.pkgbin* %13), !dbg !489
  %14 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !490
  call void @pkg_conffiles_mark_old(%struct.pkginfo* %14), !dbg !491
  %15 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !492
  %16 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %15, i32 0, i32 16, !dbg !494
  %17 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %16, align 8, !dbg !494
  store %struct.fsys_namenode_list* %17, %struct.fsys_namenode_list** %3, align 8, !dbg !495
  br label %18, !dbg !496

; <label>:18:                                     ; preds = %80, %1
  %19 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %3, align 8, !dbg !497
  %20 = icmp ne %struct.fsys_namenode_list* %19, null, !dbg !500
  br i1 %20, label %21, label %84, !dbg !500

; <label>:21:                                     ; preds = %18
  call void @llvm.dbg.declare(metadata %struct.verify_checks* %5, metadata !501, metadata !346), !dbg !503
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %6, metadata !504, metadata !346), !dbg !505
  call void @llvm.dbg.declare(metadata [33 x i8]* %7, metadata !506, metadata !346), !dbg !510
  call void @llvm.dbg.declare(metadata i32* %8, metadata !511, metadata !346), !dbg !512
  store i32 0, i32* %8, align 4, !dbg !512
  %22 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %3, align 8, !dbg !513
  %23 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %22, i32 0, i32 1, !dbg !514
  %24 = load %struct.fsys_namenode*, %struct.fsys_namenode** %23, align 8, !dbg !514
  %25 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !515
  %26 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !516
  %27 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %26, i32 0, i32 9, !dbg !517
  %28 = call %struct.fsys_namenode* @namenodetouse(%struct.fsys_namenode* %24, %struct.pkginfo* %25, %struct.pkgbin* %27), !dbg !518
  store %struct.fsys_namenode* %28, %struct.fsys_namenode** %6, align 8, !dbg !519
  %29 = load %struct.fsys_namenode*, %struct.fsys_namenode** %6, align 8, !dbg !520
  %30 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %29, i32 0, i32 8, !dbg !522
  %31 = load i8*, i8** %30, align 8, !dbg !522
  %32 = call i32 @strcmp(i8* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #6, !dbg !523
  %33 = icmp eq i32 %32, 0, !dbg !524
  br i1 %33, label %34, label %47, !dbg !525

; <label>:34:                                     ; preds = %21
  %35 = load %struct.fsys_namenode*, %struct.fsys_namenode** %6, align 8, !dbg !526
  %36 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %35, i32 0, i32 7, !dbg !529
  %37 = load i8*, i8** %36, align 8, !dbg !529
  %38 = icmp eq i8* %37, null, !dbg !530
  br i1 %38, label %39, label %40, !dbg !531

; <label>:39:                                     ; preds = %34
  br label %80, !dbg !532

; <label>:40:                                     ; preds = %34
  %41 = load %struct.fsys_namenode*, %struct.fsys_namenode** %6, align 8, !dbg !533
  %42 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %41, i32 0, i32 7, !dbg !534
  %43 = load i8*, i8** %42, align 8, !dbg !534
  %44 = load %struct.fsys_namenode*, %struct.fsys_namenode** %6, align 8, !dbg !535
  %45 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %44, i32 0, i32 8, !dbg !536
  store i8* %43, i8** %45, align 8, !dbg !537
  br label %46

; <label>:46:                                     ; preds = %40
  br label %47, !dbg !538

; <label>:47:                                     ; preds = %46, %21
  call void @varbuf_reset(%struct.varbuf* %4), !dbg !539
  %48 = load i8*, i8** @instdir, align 8, !dbg !540
  %49 = load i8*, i8** @instdir, align 8, !dbg !541
  %50 = call i64 @strlen(i8* %49) #6, !dbg !542
  call void @varbuf_add_buf(%struct.varbuf* %4, i8* %48, i64 %50), !dbg !543
  %51 = load %struct.fsys_namenode*, %struct.fsys_namenode** %6, align 8, !dbg !545
  %52 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %51, i32 0, i32 1, !dbg !546
  %53 = load i8*, i8** %52, align 8, !dbg !546
  %54 = load %struct.fsys_namenode*, %struct.fsys_namenode** %6, align 8, !dbg !547
  %55 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %54, i32 0, i32 1, !dbg !548
  %56 = load i8*, i8** %55, align 8, !dbg !548
  %57 = call i64 @strlen(i8* %56) #6, !dbg !549
  call void @varbuf_add_buf(%struct.varbuf* %4, i8* %53, i64 %57), !dbg !550
  call void @varbuf_end_str(%struct.varbuf* %4), !dbg !551
  %58 = bitcast %struct.verify_checks* %5 to i8*, !dbg !552
  call void @llvm.memset.p0i8.i64(i8* %58, i8 0, i64 4, i32 4, i1 false), !dbg !552
  %59 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !553
  %60 = getelementptr inbounds [33 x i8], [33 x i8]* %7, i32 0, i32 0, !dbg !554
  %61 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %4, i32 0, i32 2, !dbg !555
  %62 = load i8*, i8** %61, align 8, !dbg !555
  call void @md5hash(%struct.pkginfo* %59, i8* %60, i8* %62), !dbg !556
  %63 = getelementptr inbounds [33 x i8], [33 x i8]* %7, i32 0, i32 0, !dbg !557
  %64 = load %struct.fsys_namenode*, %struct.fsys_namenode** %6, align 8, !dbg !559
  %65 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %64, i32 0, i32 8, !dbg !560
  %66 = load i8*, i8** %65, align 8, !dbg !560
  %67 = call i32 @strcmp(i8* %63, i8* %66) #6, !dbg !561
  %68 = icmp ne i32 %67, 0, !dbg !562
  br i1 %68, label %69, label %73, !dbg !563

; <label>:69:                                     ; preds = %47
  %70 = getelementptr inbounds %struct.verify_checks, %struct.verify_checks* %5, i32 0, i32 0, !dbg !564
  store i32 2, i32* %70, align 4, !dbg !566
  %71 = load i32, i32* %8, align 4, !dbg !567
  %72 = add nsw i32 %71, 1, !dbg !567
  store i32 %72, i32* %8, align 4, !dbg !567
  br label %73, !dbg !568

; <label>:73:                                     ; preds = %69, %47
  %74 = load i32, i32* %8, align 4, !dbg !569
  %75 = icmp ne i32 %74, 0, !dbg !569
  br i1 %75, label %76, label %79, !dbg !571

; <label>:76:                                     ; preds = %73
  %77 = load void (%struct.fsys_namenode*, %struct.verify_checks*)*, void (%struct.fsys_namenode*, %struct.verify_checks*)** @verify_output, align 8, !dbg !572
  %78 = load %struct.fsys_namenode*, %struct.fsys_namenode** %6, align 8, !dbg !573
  call void %77(%struct.fsys_namenode* %78, %struct.verify_checks* %5), !dbg !572
  br label %79, !dbg !572

; <label>:79:                                     ; preds = %76, %73
  br label %80, !dbg !574

; <label>:80:                                     ; preds = %79, %39
  %81 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %3, align 8, !dbg !575
  %82 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %81, i32 0, i32 0, !dbg !577
  %83 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %82, align 8, !dbg !577
  store %struct.fsys_namenode_list* %83, %struct.fsys_namenode_list** %3, align 8, !dbg !578
  br label %18, !dbg !579, !llvm.loop !580

; <label>:84:                                     ; preds = %18
  call void @varbuf_destroy(%struct.varbuf* %4), !dbg !582
  ret void, !dbg !583
}

declare void @pkg_hash_iter_free(%struct.pkg_hash_iter*) #3

declare %struct.pkginfo* @dpkg_options_parse_pkgname(%struct.cmdinfo*, i8*) #3

declare void @notice(i8*, ...) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare i8* @pkg_name(%struct.pkginfo*, i32) #3

declare void @modstatdb_shutdown() #3

declare void @m_output(%struct._IO_FILE*, i8*) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #5

; Function Attrs: nounwind uwtable
define internal i32 @verify_result_rpm(i32, i32) #0 !dbg !584 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !587, metadata !346), !dbg !588
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !589, metadata !346), !dbg !590
  %6 = load i32, i32* %4, align 4, !dbg !591
  switch i32 %6, label %11 [
    i32 2, label %7
    i32 1, label %9
    i32 0, label %10
  ], !dbg !592

; <label>:7:                                      ; preds = %2
  %8 = load i32, i32* %5, align 4, !dbg !593
  store i32 %8, i32* %3, align 4, !dbg !595
  br label %12, !dbg !595

; <label>:9:                                      ; preds = %2
  store i32 46, i32* %3, align 4, !dbg !596
  br label %12, !dbg !596

; <label>:10:                                     ; preds = %2
  br label %11, !dbg !597

; <label>:11:                                     ; preds = %2, %10
  store i32 63, i32* %3, align 4, !dbg !599
  br label %12, !dbg !599

; <label>:12:                                     ; preds = %11, %9, %7
  %13 = load i32, i32* %3, align 4, !dbg !600
  ret i32 %13, !dbg !600
}

declare i32 @printf(i8*, ...) #3

declare void @ensure_packagefiles_available(%struct.pkginfo*) #3

declare void @parse_filehash(%struct.pkginfo*, %struct.pkgbin*) #3

declare void @pkg_conffiles_mark_old(%struct.pkginfo*) #3

declare %struct.fsys_namenode* @namenodetouse(%struct.fsys_namenode*, %struct.pkginfo*, %struct.pkgbin*) #3

declare void @varbuf_reset(%struct.varbuf*) #3

declare void @varbuf_add_buf(%struct.varbuf*, i8*, i64) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare void @varbuf_end_str(%struct.varbuf*) #3

declare void @md5hash(%struct.pkginfo*, i8*, i8*) #3

declare void @varbuf_destroy(%struct.varbuf*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!338, !339}
!llvm.ident = !{!340}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !121, globals: !123)
!1 = !DIFile(filename: "[inter]src--verify.o.i", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!2 = !{!3, !15, !26, !35, !43, !47, !57, !67, !73, !81, !86, !99, !109, !115}
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
!115 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "verify_result", file: !116, line: 38, size: 32, align: 32, elements: !117)
!116 = !DIFile(filename: "verify.c", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!117 = !{!118, !119, !120}
!118 = !DIEnumerator(name: "VERIFY_NONE", value: 0)
!119 = !DIEnumerator(name: "VERIFY_PASS", value: 1)
!120 = !DIEnumerator(name: "VERIFY_FAIL", value: 2)
!121 = !{!122}
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!123 = !{!124}
!124 = distinct !DIGlobalVariable(name: "verify_output", scope: !0, file: !116, line: 82, type: !125, isLocal: true, isDefinition: true, variable: void (%struct.fsys_namenode*, %struct.verify_checks*)** @verify_output)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "verify_output_func", file: !116, line: 48, baseType: !127)
!127 = !DISubroutineType(types: !128)
!128 = !{null, !129, !334}
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64, align: 64)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode", file: !87, line: 90, size: 640, align: 64, elements: !131)
!131 = !{!132, !133, !137, !291, !299, !317, !320, !321, !322, !323}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !130, file: !87, line: 91, baseType: !129, size: 64, align: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !130, file: !87, line: 92, baseType: !134, size: 64, align: 64, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!136 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "packages", scope: !130, file: !87, line: 93, baseType: !138, size: 64, align: 64, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64, align: 64)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_list", file: !140, line: 34, size: 128, align: 64, elements: !141)
!140 = !DIFile(filename: "../lib/dpkg/pkg-list.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!141 = !{!142, !143}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !139, file: !140, line: 35, baseType: !138, size: 64, align: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !139, file: !140, line: 36, baseType: !144, size: 64, align: 64, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64, align: 64)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkginfo", file: !4, line: 195, size: 3072, align: 64, elements: !146)
!146 = !{!147, !196, !197, !198, !199, !200, !201, !202, !203, !204, !234, !235, !245, !254, !270, !271, !277, !283, !289, !290}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !145, file: !4, line: 196, baseType: !148, size: 64, align: 64)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64, align: 64)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgset", file: !4, line: 242, size: 3392, align: 64, elements: !150)
!150 = !{!151, !152, !153, !154, !194}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !149, file: !4, line: 243, baseType: !148, size: 64, align: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !149, file: !4, line: 244, baseType: !134, size: 64, align: 64, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !149, file: !4, line: 245, baseType: !145, size: 3072, align: 64, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "depended", scope: !149, file: !4, line: 249, baseType: !155, size: 128, align: 64, offset: 3200)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !149, file: !4, line: 246, size: 128, align: 64, elements: !156)
!156 = !{!157, !193}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !155, file: !4, line: 247, baseType: !158, size: 64, align: 64)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64, align: 64)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "deppossi", file: !4, line: 63, size: 640, align: 64, elements: !160)
!160 = !{!161, !169, !170, !171, !172, !173, !182, !189, !190, !192}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !159, file: !4, line: 64, baseType: !162, size: 64, align: 64)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64, align: 64)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dependency", file: !4, line: 56, size: 256, align: 64, elements: !164)
!164 = !{!165, !166, !167, !168}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !163, file: !4, line: 57, baseType: !144, size: 64, align: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !163, file: !4, line: 58, baseType: !162, size: 64, align: 64, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !163, file: !4, line: 59, baseType: !158, size: 64, align: 64, offset: 128)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !163, file: !4, line: 60, baseType: !3, size: 32, align: 32, offset: 192)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "ed", scope: !159, file: !4, line: 65, baseType: !148, size: 64, align: 64, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !159, file: !4, line: 66, baseType: !158, size: 64, align: 64, offset: 128)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "rev_next", scope: !159, file: !4, line: 66, baseType: !158, size: 64, align: 64, offset: 192)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "rev_prev", scope: !159, file: !4, line: 66, baseType: !158, size: 64, align: 64, offset: 256)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !159, file: !4, line: 67, baseType: !174, size: 64, align: 64, offset: 320)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64, align: 64)
!175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !176)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_arch", file: !16, line: 48, size: 192, align: 64, elements: !177)
!177 = !{!178, !180, !181}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !176, file: !16, line: 49, baseType: !179, size: 64, align: 64)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64, align: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !176, file: !16, line: 50, baseType: !134, size: 64, align: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !176, file: !16, line: 51, baseType: !15, size: 32, align: 32, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !159, file: !4, line: 68, baseType: !183, size: 192, align: 64, offset: 384)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_version", file: !27, line: 42, size: 192, align: 64, elements: !184)
!184 = !{!185, !187, !188}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !183, file: !27, line: 44, baseType: !186, size: 32, align: 32)
!186 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !183, file: !27, line: 46, baseType: !134, size: 64, align: 64, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !183, file: !27, line: 48, baseType: !134, size: 64, align: 64, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "verrel", scope: !159, file: !4, line: 69, baseType: !26, size: 32, align: 32, offset: 576)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "arch_is_implicit", scope: !159, file: !4, line: 70, baseType: !191, size: 8, align: 8, offset: 608)
!191 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "cyclebreak", scope: !159, file: !4, line: 71, baseType: !191, size: 8, align: 8, offset: 616)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !155, file: !4, line: 248, baseType: !158, size: 64, align: 64, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "installed_instances", scope: !149, file: !4, line: 250, baseType: !195, size: 32, align: 32, offset: 3328)
!195 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "arch_next", scope: !145, file: !4, line: 197, baseType: !144, size: 64, align: 64, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "want", scope: !145, file: !4, line: 199, baseType: !35, size: 32, align: 32, offset: 128)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "eflag", scope: !145, file: !4, line: 201, baseType: !43, size: 32, align: 32, offset: 160)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !145, file: !4, line: 202, baseType: !47, size: 32, align: 32, offset: 192)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !145, file: !4, line: 203, baseType: !57, size: 32, align: 32, offset: 224)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "otherpriority", scope: !145, file: !4, line: 204, baseType: !134, size: 64, align: 64, offset: 256)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "section", scope: !145, file: !4, line: 205, baseType: !134, size: 64, align: 64, offset: 320)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "configversion", scope: !145, file: !4, line: 206, baseType: !183, size: 192, align: 64, offset: 384)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !145, file: !4, line: 207, baseType: !205, size: 960, align: 64, offset: 576)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgbin", file: !4, line: 107, size: 960, align: 64, elements: !206)
!206 = !{!207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !227}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "depends", scope: !205, file: !4, line: 108, baseType: !162, size: 64, align: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "essential", scope: !205, file: !4, line: 110, baseType: !191, size: 8, align: 8, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "multiarch", scope: !205, file: !4, line: 111, baseType: !67, size: 32, align: 32, offset: 96)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !205, file: !4, line: 112, baseType: !174, size: 64, align: 64, offset: 128)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "pkgname_archqual", scope: !205, file: !4, line: 115, baseType: !134, size: 64, align: 64, offset: 192)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !205, file: !4, line: 116, baseType: !134, size: 64, align: 64, offset: 256)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "maintainer", scope: !205, file: !4, line: 117, baseType: !134, size: 64, align: 64, offset: 320)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !205, file: !4, line: 118, baseType: !134, size: 64, align: 64, offset: 384)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "installedsize", scope: !205, file: !4, line: 119, baseType: !134, size: 64, align: 64, offset: 448)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !205, file: !4, line: 120, baseType: !134, size: 64, align: 64, offset: 512)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "bugs", scope: !205, file: !4, line: 121, baseType: !134, size: 64, align: 64, offset: 576)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !205, file: !4, line: 122, baseType: !183, size: 192, align: 64, offset: 640)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "conffiles", scope: !205, file: !4, line: 123, baseType: !220, size: 64, align: 64, offset: 832)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64, align: 64)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conffile", file: !4, line: 80, size: 256, align: 64, elements: !222)
!222 = !{!223, !224, !225, !226}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !221, file: !4, line: 81, baseType: !220, size: 64, align: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !221, file: !4, line: 82, baseType: !134, size: 64, align: 64, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !221, file: !4, line: 83, baseType: !134, size: 64, align: 64, offset: 128)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "obsolete", scope: !221, file: !4, line: 84, baseType: !191, size: 8, align: 8, offset: 192)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "arbs", scope: !205, file: !4, line: 124, baseType: !228, size: 64, align: 64, offset: 896)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64, align: 64)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arbitraryfield", file: !4, line: 74, size: 192, align: 64, elements: !230)
!230 = !{!231, !232, !233}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !229, file: !4, line: 75, baseType: !228, size: 64, align: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !229, file: !4, line: 76, baseType: !134, size: 64, align: 64, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !229, file: !4, line: 77, baseType: !134, size: 64, align: 64, offset: 128)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !145, file: !4, line: 208, baseType: !205, size: 960, align: 64, offset: 1536)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "clientdata", scope: !145, file: !4, line: 209, baseType: !236, size: 64, align: 64, offset: 2496)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64, align: 64)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perpackagestate", file: !74, line: 53, size: 256, align: 64, elements: !238)
!238 = !{!239, !240, !241, !242, !243, !244}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "istobe", scope: !237, file: !74, line: 54, baseType: !73, size: 32, align: 32)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !237, file: !74, line: 57, baseType: !81, size: 32, align: 32, offset: 32)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !237, file: !74, line: 59, baseType: !191, size: 8, align: 8, offset: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "replacingfilesandsaid", scope: !237, file: !74, line: 61, baseType: !195, size: 32, align: 32, offset: 96)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "cmdline_seen", scope: !237, file: !74, line: 62, baseType: !195, size: 32, align: 32, offset: 128)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "trigprocdeferred", scope: !237, file: !74, line: 65, baseType: !138, size: 64, align: 64, offset: 192)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "archives", scope: !145, file: !4, line: 211, baseType: !246, size: 64, align: 64, offset: 2560)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64, align: 64)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archivedetails", file: !4, line: 87, size: 320, align: 64, elements: !248)
!248 = !{!249, !250, !251, !252, !253}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !247, file: !4, line: 88, baseType: !246, size: 64, align: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !247, file: !4, line: 89, baseType: !134, size: 64, align: 64, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "msdosname", scope: !247, file: !4, line: 90, baseType: !134, size: 64, align: 64, offset: 128)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !247, file: !4, line: 91, baseType: !134, size: 64, align: 64, offset: 192)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "md5sum", scope: !247, file: !4, line: 92, baseType: !134, size: 64, align: 64, offset: 256)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "trigaw", scope: !145, file: !4, line: 216, baseType: !255, size: 128, align: 64, offset: 2624)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !145, file: !4, line: 213, size: 128, align: 64, elements: !256)
!256 = !{!257, !269}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !255, file: !4, line: 215, baseType: !258, size: 64, align: 64)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64, align: 64)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigaw", file: !4, line: 142, size: 320, align: 64, elements: !260)
!260 = !{!261, !262, !263, !264}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "aw", scope: !259, file: !4, line: 143, baseType: !144, size: 64, align: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "pend", scope: !259, file: !4, line: 143, baseType: !144, size: 64, align: 64, offset: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "samepend_next", scope: !259, file: !4, line: 144, baseType: !258, size: 64, align: 64, offset: 128)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "sameaw", scope: !259, file: !4, line: 147, baseType: !265, size: 128, align: 64, offset: 192)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !259, file: !4, line: 145, size: 128, align: 64, elements: !266)
!266 = !{!267, !268}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !265, file: !4, line: 146, baseType: !258, size: 64, align: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !265, file: !4, line: 146, baseType: !258, size: 64, align: 64, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !255, file: !4, line: 215, baseType: !258, size: 64, align: 64, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "othertrigaw_head", scope: !145, file: !4, line: 219, baseType: !258, size: 64, align: 64, offset: 2752)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "trigpend_head", scope: !145, file: !4, line: 220, baseType: !272, size: 64, align: 64, offset: 2816)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64, align: 64)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigpend", file: !4, line: 134, size: 128, align: 64, elements: !274)
!274 = !{!275, !276}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !273, file: !4, line: 135, baseType: !272, size: 64, align: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !273, file: !4, line: 136, baseType: !134, size: 64, align: 64, offset: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !145, file: !4, line: 231, baseType: !278, size: 64, align: 64, offset: 2880)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64, align: 64)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode_list", file: !87, line: 122, size: 128, align: 64, elements: !280)
!280 = !{!281, !282}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !279, file: !87, line: 123, baseType: !278, size: 64, align: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "namenode", scope: !279, file: !87, line: 124, baseType: !129, size: 64, align: 64, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_phys_offs", scope: !145, file: !4, line: 232, baseType: !284, size: 64, align: 64, offset: 2944)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !285, line: 90, baseType: !286)
!285 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !287, line: 131, baseType: !288)
!287 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!288 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_valid", scope: !145, file: !4, line: 233, baseType: !191, size: 8, align: 8, offset: 3008)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "status_dirty", scope: !145, file: !4, line: 236, baseType: !191, size: 8, align: 8, offset: 3016)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "divert", scope: !130, file: !87, line: 94, baseType: !292, size: 64, align: 64, offset: 192)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64, align: 64)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_diversion", file: !87, line: 151, size: 256, align: 64, elements: !294)
!294 = !{!295, !296, !297, !298}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "useinstead", scope: !293, file: !87, line: 152, baseType: !129, size: 64, align: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "camefrom", scope: !293, file: !87, line: 153, baseType: !129, size: 64, align: 64, offset: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "pkgset", scope: !293, file: !87, line: 154, baseType: !148, size: 64, align: 64, offset: 128)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !293, file: !87, line: 157, baseType: !292, size: 64, align: 64, offset: 192)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "statoverride", scope: !130, file: !87, line: 101, baseType: !300, size: 64, align: 64, offset: 256)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64, align: 64)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_stat", file: !302, line: 40, size: 256, align: 64, elements: !303)
!302 = !DIFile(filename: "../lib/dpkg/file.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!303 = !{!304, !308, !311, !314, !316}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !301, file: !302, line: 41, baseType: !305, size: 32, align: 32)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !306, line: 80, baseType: !307)
!306 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !287, line: 125, baseType: !186)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !301, file: !302, line: 42, baseType: !309, size: 32, align: 32, offset: 32)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !306, line: 65, baseType: !310)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !287, line: 126, baseType: !186)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !301, file: !302, line: 43, baseType: !312, size: 32, align: 32, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !306, line: 70, baseType: !313)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !287, line: 129, baseType: !186)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "uname", scope: !301, file: !302, line: 47, baseType: !315, size: 64, align: 64, offset: 128)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64, align: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !301, file: !302, line: 48, baseType: !315, size: 64, align: 64, offset: 192)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "trig_interested", scope: !130, file: !87, line: 103, baseType: !318, size: 64, align: 64, offset: 320)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64, align: 64)
!319 = !DICompositeType(tag: DW_TAG_structure_type, name: "trigfileint", file: !87, line: 103, flags: DIFlagFwdDecl)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !130, file: !87, line: 111, baseType: !86, size: 32, align: 32, offset: 384)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "oldhash", scope: !130, file: !87, line: 114, baseType: !134, size: 64, align: 64, offset: 448)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "newhash", scope: !130, file: !87, line: 117, baseType: !134, size: 64, align: 64, offset: 512)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "file_ondisk_id", scope: !130, file: !87, line: 119, baseType: !324, size: 64, align: 64, offset: 576)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64, align: 64)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ondisk_id", file: !87, line: 85, size: 128, align: 64, elements: !326)
!326 = !{!327, !331}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "id_dev", scope: !325, file: !87, line: 86, baseType: !328, size: 64, align: 64)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !306, line: 60, baseType: !329)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !287, line: 124, baseType: !330)
!330 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "id_ino", scope: !325, file: !87, line: 87, baseType: !332, size: 64, align: 64, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !306, line: 48, baseType: !333)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !287, line: 127, baseType: !330)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64, align: 64)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "verify_checks", file: !116, line: 44, size: 32, align: 32, elements: !336)
!336 = !{!337}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "md5sum", scope: !335, file: !116, line: 45, baseType: !115, size: 32, align: 32)
!338 = !{i32 2, !"Dwarf Version", i32 4}
!339 = !{i32 2, !"Debug Info Version", i32 3}
!340 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!341 = distinct !DISubprogram(name: "verify_set_output", scope: !116, file: !116, line: 85, type: !342, isLocal: false, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !344)
!342 = !DISubroutineType(types: !343)
!343 = !{!191, !134}
!344 = !{}
!345 = !DILocalVariable(name: "name", arg: 1, scope: !341, file: !116, line: 85, type: !134)
!346 = !DIExpression()
!347 = !DILocation(line: 85, column: 31, scope: !341)
!348 = !DILocation(line: 87, column: 13, scope: !349)
!349 = distinct !DILexicalBlock(scope: !341, file: !116, line: 87, column: 6)
!350 = !DILocation(line: 87, column: 6, scope: !349)
!351 = !DILocation(line: 87, column: 26, scope: !349)
!352 = !DILocation(line: 87, column: 6, scope: !341)
!353 = !DILocation(line: 88, column: 17, scope: !349)
!354 = !DILocation(line: 88, column: 3, scope: !349)
!355 = !DILocation(line: 90, column: 3, scope: !349)
!356 = !DILocation(line: 92, column: 2, scope: !341)
!357 = !DILocation(line: 93, column: 1, scope: !341)
!358 = distinct !DISubprogram(name: "verify_output_rpm", scope: !116, file: !116, line: 65, type: !127, isLocal: true, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !344)
!359 = !DILocalVariable(name: "namenode", arg: 1, scope: !358, file: !116, line: 65, type: !129)
!360 = !DILocation(line: 65, column: 41, scope: !358)
!361 = !DILocalVariable(name: "checks", arg: 2, scope: !358, file: !116, line: 65, type: !334)
!362 = !DILocation(line: 65, column: 73, scope: !358)
!363 = !DILocalVariable(name: "result", scope: !358, file: !116, line: 67, type: !364)
!364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 72, align: 8, elements: !365)
!365 = !{!366}
!366 = !DISubrange(count: 9)
!367 = !DILocation(line: 67, column: 7, scope: !358)
!368 = !DILocalVariable(name: "attr", scope: !358, file: !116, line: 68, type: !195)
!369 = !DILocation(line: 68, column: 6, scope: !358)
!370 = !DILocation(line: 70, column: 2, scope: !358)
!371 = !DILocation(line: 72, column: 32, scope: !358)
!372 = !DILocation(line: 72, column: 40, scope: !358)
!373 = !DILocation(line: 72, column: 14, scope: !358)
!374 = !DILocation(line: 72, column: 2, scope: !358)
!375 = !DILocation(line: 72, column: 12, scope: !358)
!376 = !DILocation(line: 74, column: 6, scope: !377)
!377 = distinct !DILexicalBlock(scope: !358, file: !116, line: 74, column: 6)
!378 = !DILocation(line: 74, column: 16, scope: !377)
!379 = !DILocation(line: 74, column: 22, scope: !377)
!380 = !DILocation(line: 74, column: 6, scope: !358)
!381 = !DILocation(line: 75, column: 8, scope: !377)
!382 = !DILocation(line: 75, column: 3, scope: !377)
!383 = !DILocation(line: 77, column: 8, scope: !377)
!384 = !DILocation(line: 79, column: 25, scope: !358)
!385 = !DILocation(line: 79, column: 33, scope: !358)
!386 = !DILocation(line: 79, column: 39, scope: !358)
!387 = !DILocation(line: 79, column: 49, scope: !358)
!388 = !DILocation(line: 79, column: 2, scope: !358)
!389 = !DILocation(line: 80, column: 1, scope: !358)
!390 = distinct !DISubprogram(name: "verify", scope: !116, file: !116, line: 141, type: !391, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !344)
!391 = !DISubroutineType(types: !392)
!392 = !{!195, !393}
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64, align: 64)
!394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!395 = !DILocalVariable(name: "argv", arg: 1, scope: !390, file: !116, line: 141, type: !393)
!396 = !DILocation(line: 141, column: 27, scope: !390)
!397 = !DILocalVariable(name: "pkg", scope: !390, file: !116, line: 143, type: !144)
!398 = !DILocation(line: 143, column: 18, scope: !390)
!399 = !DILocalVariable(name: "rc", scope: !390, file: !116, line: 144, type: !195)
!400 = !DILocation(line: 144, column: 6, scope: !390)
!401 = !DILocation(line: 146, column: 2, scope: !390)
!402 = !DILocation(line: 147, column: 2, scope: !390)
!403 = !DILocation(line: 149, column: 8, scope: !404)
!404 = distinct !DILexicalBlock(scope: !390, file: !116, line: 149, column: 6)
!405 = !DILocation(line: 149, column: 7, scope: !404)
!406 = !DILocation(line: 149, column: 6, scope: !390)
!407 = !DILocalVariable(name: "iter", scope: !408, file: !116, line: 150, type: !409)
!408 = distinct !DILexicalBlock(scope: !404, file: !116, line: 149, column: 14)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64, align: 64)
!410 = !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_hash_iter", file: !4, line: 314, flags: DIFlagFwdDecl)
!411 = !DILocation(line: 150, column: 25, scope: !408)
!412 = !DILocation(line: 152, column: 10, scope: !408)
!413 = !DILocation(line: 152, column: 8, scope: !408)
!414 = !DILocation(line: 153, column: 3, scope: !408)
!415 = !DILocation(line: 153, column: 40, scope: !416)
!416 = !DILexicalBlockFile(scope: !408, file: !116, discriminator: 1)
!417 = !DILocation(line: 153, column: 17, scope: !416)
!418 = !DILocation(line: 153, column: 15, scope: !416)
!419 = !DILocation(line: 153, column: 3, scope: !416)
!420 = !DILocation(line: 154, column: 19, scope: !408)
!421 = !DILocation(line: 154, column: 4, scope: !408)
!422 = !DILocation(line: 153, column: 3, scope: !423)
!423 = !DILexicalBlockFile(scope: !408, file: !116, discriminator: 2)
!424 = distinct !{!424, !414}
!425 = !DILocation(line: 155, column: 22, scope: !408)
!426 = !DILocation(line: 155, column: 3, scope: !408)
!427 = !DILocation(line: 156, column: 2, scope: !408)
!428 = !DILocalVariable(name: "thisarg", scope: !429, file: !116, line: 157, type: !134)
!429 = distinct !DILexicalBlock(scope: !404, file: !116, line: 156, column: 9)
!430 = !DILocation(line: 157, column: 15, scope: !429)
!431 = !DILocation(line: 159, column: 3, scope: !429)
!432 = !DILocation(line: 159, column: 26, scope: !433)
!433 = !DILexicalBlockFile(scope: !429, file: !116, discriminator: 1)
!434 = !DILocation(line: 159, column: 21, scope: !433)
!435 = !DILocation(line: 159, column: 19, scope: !433)
!436 = !DILocation(line: 159, column: 3, scope: !433)
!437 = !DILocation(line: 160, column: 37, scope: !438)
!438 = distinct !DILexicalBlock(scope: !429, file: !116, line: 159, column: 31)
!439 = !DILocation(line: 160, column: 48, scope: !438)
!440 = !DILocation(line: 160, column: 10, scope: !438)
!441 = !DILocation(line: 160, column: 8, scope: !438)
!442 = !DILocation(line: 161, column: 8, scope: !443)
!443 = distinct !DILexicalBlock(scope: !438, file: !116, line: 161, column: 8)
!444 = !DILocation(line: 161, column: 13, scope: !443)
!445 = !DILocation(line: 161, column: 20, scope: !443)
!446 = !DILocation(line: 161, column: 8, scope: !438)
!447 = !DILocation(line: 162, column: 12, scope: !448)
!448 = distinct !DILexicalBlock(scope: !443, file: !116, line: 161, column: 46)
!449 = !DILocation(line: 163, column: 21, scope: !448)
!450 = !DILocation(line: 163, column: 12, scope: !448)
!451 = !DILocation(line: 162, column: 5, scope: !452)
!452 = !DILexicalBlockFile(scope: !448, file: !116, discriminator: 1)
!453 = !DILocation(line: 164, column: 8, scope: !448)
!454 = !DILocation(line: 165, column: 5, scope: !448)
!455 = distinct !{!455, !431}
!456 = !DILocation(line: 168, column: 19, scope: !438)
!457 = !DILocation(line: 168, column: 4, scope: !438)
!458 = !DILocation(line: 159, column: 3, scope: !459)
!459 = !DILexicalBlockFile(scope: !429, file: !116, discriminator: 2)
!460 = !DILocation(line: 172, column: 2, scope: !390)
!461 = !DILocation(line: 174, column: 10, scope: !390)
!462 = !DILocation(line: 174, column: 18, scope: !390)
!463 = !DILocation(line: 174, column: 2, scope: !464)
!464 = !DILexicalBlockFile(scope: !390, file: !116, discriminator: 1)
!465 = !DILocation(line: 176, column: 9, scope: !390)
!466 = !DILocation(line: 176, column: 2, scope: !390)
!467 = distinct !DISubprogram(name: "verify_package", scope: !116, file: !116, line: 96, type: !468, isLocal: true, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !344)
!468 = !DISubroutineType(types: !469)
!469 = !{null, !144}
!470 = !DILocalVariable(name: "pkg", arg: 1, scope: !467, file: !116, line: 96, type: !144)
!471 = !DILocation(line: 96, column: 32, scope: !467)
!472 = !DILocalVariable(name: "file", scope: !467, file: !116, line: 98, type: !278)
!473 = !DILocation(line: 98, column: 29, scope: !467)
!474 = !DILocalVariable(name: "filename", scope: !467, file: !116, line: 99, type: !475)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varbuf", file: !476, line: 55, size: 192, align: 64, elements: !477)
!476 = !DIFile(filename: "../lib/dpkg/varbuf.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!477 = !{!478, !481, !482}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !475, file: !476, line: 56, baseType: !479, size: 64, align: 64)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !480, line: 216, baseType: !330)
!480 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!481 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !475, file: !476, line: 56, baseType: !479, size: 64, align: 64, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !475, file: !476, line: 57, baseType: !315, size: 64, align: 64, offset: 128)
!483 = !DILocation(line: 99, column: 16, scope: !467)
!484 = !DILocation(line: 101, column: 32, scope: !467)
!485 = !DILocation(line: 101, column: 2, scope: !467)
!486 = !DILocation(line: 102, column: 17, scope: !467)
!487 = !DILocation(line: 102, column: 23, scope: !467)
!488 = !DILocation(line: 102, column: 28, scope: !467)
!489 = !DILocation(line: 102, column: 2, scope: !467)
!490 = !DILocation(line: 103, column: 25, scope: !467)
!491 = !DILocation(line: 103, column: 2, scope: !467)
!492 = !DILocation(line: 105, column: 14, scope: !493)
!493 = distinct !DILexicalBlock(scope: !467, file: !116, line: 105, column: 2)
!494 = !DILocation(line: 105, column: 19, scope: !493)
!495 = !DILocation(line: 105, column: 12, scope: !493)
!496 = !DILocation(line: 105, column: 7, scope: !493)
!497 = !DILocation(line: 105, column: 26, scope: !498)
!498 = !DILexicalBlockFile(scope: !499, file: !116, discriminator: 1)
!499 = distinct !DILexicalBlock(scope: !493, file: !116, line: 105, column: 2)
!500 = !DILocation(line: 105, column: 2, scope: !498)
!501 = !DILocalVariable(name: "checks", scope: !502, file: !116, line: 106, type: !335)
!502 = distinct !DILexicalBlock(scope: !499, file: !116, line: 105, column: 51)
!503 = !DILocation(line: 106, column: 24, scope: !502)
!504 = !DILocalVariable(name: "fnn", scope: !502, file: !116, line: 107, type: !129)
!505 = !DILocation(line: 107, column: 25, scope: !502)
!506 = !DILocalVariable(name: "hash", scope: !502, file: !116, line: 108, type: !507)
!507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 264, align: 8, elements: !508)
!508 = !{!509}
!509 = !DISubrange(count: 33)
!510 = !DILocation(line: 108, column: 8, scope: !502)
!511 = !DILocalVariable(name: "failures", scope: !502, file: !116, line: 109, type: !195)
!512 = !DILocation(line: 109, column: 7, scope: !502)
!513 = !DILocation(line: 111, column: 23, scope: !502)
!514 = !DILocation(line: 111, column: 29, scope: !502)
!515 = !DILocation(line: 111, column: 39, scope: !502)
!516 = !DILocation(line: 111, column: 45, scope: !502)
!517 = !DILocation(line: 111, column: 50, scope: !502)
!518 = !DILocation(line: 111, column: 9, scope: !502)
!519 = !DILocation(line: 111, column: 7, scope: !502)
!520 = !DILocation(line: 113, column: 14, scope: !521)
!521 = distinct !DILexicalBlock(scope: !502, file: !116, line: 113, column: 7)
!522 = !DILocation(line: 113, column: 19, scope: !521)
!523 = !DILocation(line: 113, column: 7, scope: !521)
!524 = !DILocation(line: 113, column: 33, scope: !521)
!525 = !DILocation(line: 113, column: 7, scope: !502)
!526 = !DILocation(line: 114, column: 8, scope: !527)
!527 = distinct !DILexicalBlock(scope: !528, file: !116, line: 114, column: 8)
!528 = distinct !DILexicalBlock(scope: !521, file: !116, line: 113, column: 39)
!529 = !DILocation(line: 114, column: 13, scope: !527)
!530 = !DILocation(line: 114, column: 21, scope: !527)
!531 = !DILocation(line: 114, column: 8, scope: !528)
!532 = !DILocation(line: 115, column: 5, scope: !527)
!533 = !DILocation(line: 117, column: 20, scope: !527)
!534 = !DILocation(line: 117, column: 25, scope: !527)
!535 = !DILocation(line: 117, column: 5, scope: !527)
!536 = !DILocation(line: 117, column: 10, scope: !527)
!537 = !DILocation(line: 117, column: 18, scope: !527)
!538 = !DILocation(line: 118, column: 3, scope: !528)
!539 = !DILocation(line: 120, column: 3, scope: !502)
!540 = !DILocation(line: 121, column: 29, scope: !502)
!541 = !DILocation(line: 121, column: 45, scope: !502)
!542 = !DILocation(line: 121, column: 38, scope: !502)
!543 = !DILocation(line: 121, column: 3, scope: !544)
!544 = !DILexicalBlockFile(scope: !502, file: !116, discriminator: 1)
!545 = !DILocation(line: 122, column: 29, scope: !502)
!546 = !DILocation(line: 122, column: 34, scope: !502)
!547 = !DILocation(line: 122, column: 47, scope: !502)
!548 = !DILocation(line: 122, column: 52, scope: !502)
!549 = !DILocation(line: 122, column: 40, scope: !502)
!550 = !DILocation(line: 122, column: 3, scope: !544)
!551 = !DILocation(line: 123, column: 3, scope: !502)
!552 = !DILocation(line: 125, column: 3, scope: !502)
!553 = !DILocation(line: 127, column: 11, scope: !502)
!554 = !DILocation(line: 127, column: 16, scope: !502)
!555 = !DILocation(line: 127, column: 31, scope: !502)
!556 = !DILocation(line: 127, column: 3, scope: !502)
!557 = !DILocation(line: 128, column: 14, scope: !558)
!558 = distinct !DILexicalBlock(scope: !502, file: !116, line: 128, column: 7)
!559 = !DILocation(line: 128, column: 20, scope: !558)
!560 = !DILocation(line: 128, column: 25, scope: !558)
!561 = !DILocation(line: 128, column: 7, scope: !558)
!562 = !DILocation(line: 128, column: 34, scope: !558)
!563 = !DILocation(line: 128, column: 7, scope: !502)
!564 = !DILocation(line: 129, column: 11, scope: !565)
!565 = distinct !DILexicalBlock(scope: !558, file: !116, line: 128, column: 40)
!566 = !DILocation(line: 129, column: 18, scope: !565)
!567 = !DILocation(line: 130, column: 12, scope: !565)
!568 = !DILocation(line: 131, column: 3, scope: !565)
!569 = !DILocation(line: 133, column: 7, scope: !570)
!570 = distinct !DILexicalBlock(scope: !502, file: !116, line: 133, column: 7)
!571 = !DILocation(line: 133, column: 7, scope: !502)
!572 = !DILocation(line: 134, column: 4, scope: !570)
!573 = !DILocation(line: 134, column: 18, scope: !570)
!574 = !DILocation(line: 135, column: 2, scope: !502)
!575 = !DILocation(line: 105, column: 39, scope: !576)
!576 = !DILexicalBlockFile(scope: !499, file: !116, discriminator: 2)
!577 = !DILocation(line: 105, column: 45, scope: !576)
!578 = !DILocation(line: 105, column: 37, scope: !576)
!579 = !DILocation(line: 105, column: 2, scope: !576)
!580 = distinct !{!580, !581}
!581 = !DILocation(line: 105, column: 2, scope: !467)
!582 = !DILocation(line: 137, column: 2, scope: !467)
!583 = !DILocation(line: 138, column: 1, scope: !467)
!584 = distinct !DISubprogram(name: "verify_result_rpm", scope: !116, file: !116, line: 51, type: !585, isLocal: true, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !344)
!585 = !DISubroutineType(types: !586)
!586 = !{!195, !115, !195}
!587 = !DILocalVariable(name: "result", arg: 1, scope: !584, file: !116, line: 51, type: !115)
!588 = !DILocation(line: 51, column: 38, scope: !584)
!589 = !DILocalVariable(name: "check", arg: 2, scope: !584, file: !116, line: 51, type: !195)
!590 = !DILocation(line: 51, column: 50, scope: !584)
!591 = !DILocation(line: 53, column: 10, scope: !584)
!592 = !DILocation(line: 53, column: 2, scope: !584)
!593 = !DILocation(line: 55, column: 10, scope: !594)
!594 = distinct !DILexicalBlock(scope: !584, file: !116, line: 53, column: 18)
!595 = !DILocation(line: 55, column: 3, scope: !594)
!596 = !DILocation(line: 57, column: 3, scope: !594)
!597 = !DILocation(line: 57, column: 3, scope: !598)
!598 = !DILexicalBlockFile(scope: !594, file: !116, discriminator: 1)
!599 = !DILocation(line: 60, column: 3, scope: !594)
!600 = !DILocation(line: 62, column: 1, scope: !584)
