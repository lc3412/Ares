; ModuleID = './[inter]src--select.o.i'
source_filename = "./[inter]src--select.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.cmdinfo = type { i8*, i8, i32, i32*, i8**, void (%struct.cmdinfo*, i8*)*, i32, i8*, i32 (i8**)* }
%struct.namevalue = type { i8*, i32, i32 }
%struct.pkg_array = type { i32, %struct.pkginfo** }
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
%struct.pkg_spec = type { i8*, %struct.dpkg_arch*, i32, i8, i8, %struct.pkg_hash_iter*, %struct.pkginfo* }
%struct.pkg_hash_iter = type opaque
%struct.varbuf = type { i64, i64, i8* }
%struct.dpkg_error = type { i32, i32, i8* }

@.str = private unnamed_addr constant [30 x i8] c"no packages found matching %s\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"<standard output>\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"<standard error>\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"--%s takes no arguments\00", align 1
@cipaction = external global %struct.cmdinfo*, align 8
@f_noact = external global i32, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"unexpected end of file in package name at line %d\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"unexpected end of line in package name at line %d\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"unexpected end of file after package name at line %d\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"unexpected end of line after package name at line %d\00", align 1
@.str.8 = private unnamed_addr constant [55 x i8] c"unexpected data after package and selection at line %d\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"illegal package name at line %d: %.250s\00", align 1
@.str.10 = private unnamed_addr constant [64 x i8] c"package not in status nor available database at line %d: %.250s\00", align 1
@wantinfos = external constant [0 x %struct.namevalue], align 8
@.str.11 = private unnamed_addr constant [41 x i8] c"unknown wanted status at line %d: %.250s\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@.str.12 = private unnamed_addr constant [29 x i8] c"read error on standard input\00", align 1
@.str.13 = private unnamed_addr constant [187 x i8] c"found unknown packages; this might mean the available database\0Ais outdated, and needs to be updated through a frontend method;\0Aplease see the FAQ <https://wiki.debian.org/Teams/Dpkg/FAQ>\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"%s%.*s%s\0A\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"\09\09\09\09\09\09\00", align 1

; Function Attrs: nounwind uwtable
define i32 @getselections(i8**) #0 !dbg !144 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.pkg_array, align 8
  %4 = alloca %struct.pkginfo*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pkg_spec, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !155, metadata !156), !dbg !157
  call void @llvm.dbg.declare(metadata %struct.pkg_array* %3, metadata !158, metadata !156), !dbg !365
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %4, metadata !366, metadata !156), !dbg !367
  call void @llvm.dbg.declare(metadata i8** %5, metadata !368, metadata !156), !dbg !369
  call void @llvm.dbg.declare(metadata i32* %6, metadata !370, metadata !156), !dbg !371
  call void @llvm.dbg.declare(metadata i32* %7, metadata !372, metadata !156), !dbg !373
  %9 = call i32 @modstatdb_open(i32 0), !dbg !374
  call void @pkg_array_init_from_hash(%struct.pkg_array* %3), !dbg !375
  call void @pkg_array_sort(%struct.pkg_array* %3, i32 (i8*, i8*)* @pkg_sorter_by_nonambig_name_arch), !dbg !376
  %10 = load i8**, i8*** %2, align 8, !dbg !377
  %11 = load i8*, i8** %10, align 8, !dbg !379
  %12 = icmp ne i8* %11, null, !dbg !379
  br i1 %12, label %37, label %13, !dbg !380

; <label>:13:                                     ; preds = %1
  store i32 0, i32* %6, align 4, !dbg !381
  br label %14, !dbg !384

; <label>:14:                                     ; preds = %33, %13
  %15 = load i32, i32* %6, align 4, !dbg !385
  %16 = getelementptr inbounds %struct.pkg_array, %struct.pkg_array* %3, i32 0, i32 0, !dbg !388
  %17 = load i32, i32* %16, align 8, !dbg !388
  %18 = icmp slt i32 %15, %17, !dbg !389
  br i1 %18, label %19, label %36, !dbg !390

; <label>:19:                                     ; preds = %14
  %20 = load i32, i32* %6, align 4, !dbg !391
  %21 = sext i32 %20 to i64, !dbg !393
  %22 = getelementptr inbounds %struct.pkg_array, %struct.pkg_array* %3, i32 0, i32 1, !dbg !394
  %23 = load %struct.pkginfo**, %struct.pkginfo*** %22, align 8, !dbg !394
  %24 = getelementptr inbounds %struct.pkginfo*, %struct.pkginfo** %23, i64 %21, !dbg !393
  %25 = load %struct.pkginfo*, %struct.pkginfo** %24, align 8, !dbg !393
  store %struct.pkginfo* %25, %struct.pkginfo** %4, align 8, !dbg !395
  %26 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !396
  %27 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %26, i32 0, i32 4, !dbg !398
  %28 = load i32, i32* %27, align 8, !dbg !398
  %29 = icmp eq i32 %28, 0, !dbg !399
  br i1 %29, label %30, label %31, !dbg !400

; <label>:30:                                     ; preds = %19
  br label %33, !dbg !401

; <label>:31:                                     ; preds = %19
  %32 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !402
  call void @getsel1package(%struct.pkginfo* %32), !dbg !403
  br label %33, !dbg !404

; <label>:33:                                     ; preds = %31, %30
  %34 = load i32, i32* %6, align 4, !dbg !405
  %35 = add nsw i32 %34, 1, !dbg !405
  store i32 %35, i32* %6, align 4, !dbg !405
  br label %14, !dbg !407, !llvm.loop !408

; <label>:36:                                     ; preds = %14
  br label %78, !dbg !410

; <label>:37:                                     ; preds = %1
  br label %38, !dbg !411

; <label>:38:                                     ; preds = %76, %37
  %39 = load i8**, i8*** %2, align 8, !dbg !413
  %40 = getelementptr inbounds i8*, i8** %39, i32 1, !dbg !413
  store i8** %40, i8*** %2, align 8, !dbg !413
  %41 = load i8*, i8** %39, align 8, !dbg !415
  store i8* %41, i8** %5, align 8, !dbg !416
  %42 = icmp ne i8* %41, null, !dbg !417
  br i1 %42, label %43, label %77, !dbg !417

; <label>:43:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata %struct.pkg_spec* %8, metadata !418, metadata !156), !dbg !431
  store i32 0, i32* %7, align 4, !dbg !432
  call void @pkg_spec_init(%struct.pkg_spec* %8, i32 513), !dbg !433
  %44 = load i8*, i8** %5, align 8, !dbg !434
  %45 = call i8* @pkg_spec_parse(%struct.pkg_spec* %8, i8* %44), !dbg !435
  store i32 0, i32* %6, align 4, !dbg !436
  br label %46, !dbg !438

; <label>:46:                                     ; preds = %67, %43
  %47 = load i32, i32* %6, align 4, !dbg !439
  %48 = getelementptr inbounds %struct.pkg_array, %struct.pkg_array* %3, i32 0, i32 0, !dbg !442
  %49 = load i32, i32* %48, align 8, !dbg !442
  %50 = icmp slt i32 %47, %49, !dbg !443
  br i1 %50, label %51, label %70, !dbg !444

; <label>:51:                                     ; preds = %46
  %52 = load i32, i32* %6, align 4, !dbg !445
  %53 = sext i32 %52 to i64, !dbg !447
  %54 = getelementptr inbounds %struct.pkg_array, %struct.pkg_array* %3, i32 0, i32 1, !dbg !448
  %55 = load %struct.pkginfo**, %struct.pkginfo*** %54, align 8, !dbg !448
  %56 = getelementptr inbounds %struct.pkginfo*, %struct.pkginfo** %55, i64 %53, !dbg !447
  %57 = load %struct.pkginfo*, %struct.pkginfo** %56, align 8, !dbg !447
  store %struct.pkginfo* %57, %struct.pkginfo** %4, align 8, !dbg !449
  %58 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !450
  %59 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !452
  %60 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %59, i32 0, i32 9, !dbg !453
  %61 = call zeroext i1 @pkg_spec_match_pkg(%struct.pkg_spec* %8, %struct.pkginfo* %58, %struct.pkgbin* %60), !dbg !454
  br i1 %61, label %63, label %62, !dbg !455

; <label>:62:                                     ; preds = %51
  br label %67, !dbg !456

; <label>:63:                                     ; preds = %51
  %64 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !457
  call void @getsel1package(%struct.pkginfo* %64), !dbg !458
  %65 = load i32, i32* %7, align 4, !dbg !459
  %66 = add nsw i32 %65, 1, !dbg !459
  store i32 %66, i32* %7, align 4, !dbg !459
  br label %67, !dbg !460

; <label>:67:                                     ; preds = %63, %62
  %68 = load i32, i32* %6, align 4, !dbg !461
  %69 = add nsw i32 %68, 1, !dbg !461
  store i32 %69, i32* %6, align 4, !dbg !461
  br label %46, !dbg !463, !llvm.loop !464

; <label>:70:                                     ; preds = %46
  %71 = load i32, i32* %7, align 4, !dbg !466
  %72 = icmp ne i32 %71, 0, !dbg !466
  br i1 %72, label %76, label %73, !dbg !468

; <label>:73:                                     ; preds = %70
  %74 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0)) #8, !dbg !469
  %75 = load i8*, i8** %5, align 8, !dbg !470
  call void (i8*, ...) @notice(i8* %74, i8* %75), !dbg !471
  br label %76, !dbg !473

; <label>:76:                                     ; preds = %73, %70
  call void @pkg_spec_destroy(%struct.pkg_spec* %8), !dbg !474
  br label %38, !dbg !475, !llvm.loop !477

; <label>:77:                                     ; preds = %38
  br label %78

; <label>:78:                                     ; preds = %77, %36
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !478
  %80 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0)) #8, !dbg !479
  call void @m_output(%struct._IO_FILE* %79, i8* %80), !dbg !480
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !482
  %82 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0)) #8, !dbg !483
  call void @m_output(%struct._IO_FILE* %81, i8* %82), !dbg !484
  call void @pkg_array_destroy(%struct.pkg_array* %3), !dbg !485
  call void @modstatdb_shutdown(), !dbg !486
  ret i32 0, !dbg !487
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @modstatdb_open(i32) #2

declare void @pkg_array_init_from_hash(%struct.pkg_array*) #2

declare void @pkg_array_sort(%struct.pkg_array*, i32 (i8*, i8*)*) #2

declare i32 @pkg_sorter_by_nonambig_name_arch(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @getsel1package(%struct.pkginfo*) #0 !dbg !488 {
  %2 = alloca %struct.pkginfo*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %struct.pkginfo* %0, %struct.pkginfo** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %2, metadata !491, metadata !156), !dbg !492
  call void @llvm.dbg.declare(metadata i8** %3, metadata !493, metadata !156), !dbg !494
  call void @llvm.dbg.declare(metadata i32* %4, metadata !495, metadata !156), !dbg !496
  %5 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !497
  %6 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %5, i32 0, i32 2, !dbg !499
  %7 = load i32, i32* %6, align 8, !dbg !499
  %8 = icmp eq i32 %7, 0, !dbg !500
  br i1 %8, label %9, label %10, !dbg !501

; <label>:9:                                      ; preds = %1
  br label %29, !dbg !502

; <label>:10:                                     ; preds = %1
  %11 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !503
  %12 = call i8* @pkg_name(%struct.pkginfo* %11, i32 1), !dbg !504
  store i8* %12, i8** %3, align 8, !dbg !505
  %13 = load i8*, i8** %3, align 8, !dbg !506
  %14 = call i64 @strlen(i8* %13) #9, !dbg !507
  %15 = trunc i64 %14 to i32, !dbg !507
  store i32 %15, i32* %4, align 4, !dbg !508
  %16 = load i32, i32* %4, align 4, !dbg !509
  %17 = ashr i32 %16, 3, !dbg !509
  store i32 %17, i32* %4, align 4, !dbg !509
  %18 = load i32, i32* %4, align 4, !dbg !510
  %19 = sub nsw i32 6, %18, !dbg !511
  store i32 %19, i32* %4, align 4, !dbg !512
  %20 = load i32, i32* %4, align 4, !dbg !513
  %21 = icmp slt i32 %20, 1, !dbg !515
  br i1 %21, label %22, label %23, !dbg !516

; <label>:22:                                     ; preds = %10
  store i32 1, i32* %4, align 4, !dbg !517
  br label %23, !dbg !518

; <label>:23:                                     ; preds = %22, %10
  %24 = load i8*, i8** %3, align 8, !dbg !519
  %25 = load i32, i32* %4, align 4, !dbg !520
  %26 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !521
  %27 = call i8* @pkg_want_name(%struct.pkginfo* %26), !dbg !522
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* %24, i32 %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i8* %27), !dbg !523
  br label %29, !dbg !525

; <label>:29:                                     ; preds = %23, %9
  ret void, !dbg !526
}

declare void @pkg_spec_init(%struct.pkg_spec*, i32) #2

declare i8* @pkg_spec_parse(%struct.pkg_spec*, i8*) #2

declare zeroext i1 @pkg_spec_match_pkg(%struct.pkg_spec*, %struct.pkginfo*, %struct.pkgbin*) #2

declare void @notice(i8*, ...) #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare void @pkg_spec_destroy(%struct.pkg_spec*) #2

declare void @m_output(%struct._IO_FILE*, i8*) #2

declare void @pkg_array_destroy(%struct.pkg_array*) #2

declare void @modstatdb_shutdown() #2

; Function Attrs: nounwind uwtable
define i32 @setselections(i8**) #0 !dbg !527 {
  %2 = alloca i8**, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.namevalue*, align 8
  %5 = alloca %struct.pkginfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.varbuf, align 8
  %9 = alloca %struct.varbuf, align 8
  %10 = alloca i8, align 1
  %11 = alloca %struct.dpkg_error, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !528, metadata !156), !dbg !529
  call void @llvm.dbg.declare(metadata i32* %3, metadata !530, metadata !156), !dbg !531
  call void @llvm.dbg.declare(metadata %struct.namevalue** %4, metadata !532, metadata !156), !dbg !541
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %5, metadata !542, metadata !156), !dbg !543
  call void @llvm.dbg.declare(metadata i32* %6, metadata !544, metadata !156), !dbg !545
  call void @llvm.dbg.declare(metadata i32* %7, metadata !546, metadata !156), !dbg !547
  call void @llvm.dbg.declare(metadata %struct.varbuf* %8, metadata !548, metadata !156), !dbg !557
  %12 = bitcast %struct.varbuf* %8 to i8*, !dbg !557
  call void @llvm.memset.p0i8.i64(i8* %12, i8 0, i64 24, i32 8, i1 false), !dbg !557
  call void @llvm.dbg.declare(metadata %struct.varbuf* %9, metadata !558, metadata !156), !dbg !559
  %13 = bitcast %struct.varbuf* %9 to i8*, !dbg !559
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 24, i32 8, i1 false), !dbg !559
  call void @llvm.dbg.declare(metadata i8* %10, metadata !560, metadata !156), !dbg !561
  store i8 0, i8* %10, align 1, !dbg !561
  %14 = load i8**, i8*** %2, align 8, !dbg !562
  %15 = load i8*, i8** %14, align 8, !dbg !564
  %16 = icmp ne i8* %15, null, !dbg !564
  br i1 %16, label %17, label %22, !dbg !565

; <label>:17:                                     ; preds = %1
  %18 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0)) #8, !dbg !566
  %19 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !567
  %20 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %19, i32 0, i32 0, !dbg !568
  %21 = load i8*, i8** %20, align 8, !dbg !568
  call void (i8*, ...) @badusage(i8* %18, i8* %21) #10, !dbg !569
  unreachable, !dbg !571

; <label>:22:                                     ; preds = %1
  store i32 256, i32* %3, align 4, !dbg !572
  %23 = load i32, i32* @f_noact, align 4, !dbg !573
  %24 = icmp ne i32 %23, 0, !dbg !573
  br i1 %24, label %25, label %27, !dbg !575

; <label>:25:                                     ; preds = %22
  %26 = load i32, i32* %3, align 4, !dbg !576
  store i32 %26, i32* %3, align 4, !dbg !576
  br label %30, !dbg !577

; <label>:27:                                     ; preds = %22
  %28 = load i32, i32* %3, align 4, !dbg !578
  %29 = or i32 %28, 3, !dbg !578
  store i32 %29, i32* %3, align 4, !dbg !578
  br label %30

; <label>:30:                                     ; preds = %27, %25
  %31 = load i32, i32* %3, align 4, !dbg !579
  %32 = call i32 @modstatdb_open(i32 %31), !dbg !580
  call void @pkg_infodb_upgrade(), !dbg !581
  store i32 1, i32* %7, align 4, !dbg !582
  br label %33, !dbg !583

; <label>:33:                                     ; preds = %195, %169, %74, %30
  call void @llvm.dbg.declare(metadata %struct.dpkg_error* %11, metadata !584, metadata !156), !dbg !593
  br label %34, !dbg !594, !llvm.loop !595

; <label>:34:                                     ; preds = %48, %33
  %35 = call i32 @getchar(), !dbg !596
  store i32 %35, i32* %6, align 4, !dbg !598
  %36 = load i32, i32* %6, align 4, !dbg !599
  %37 = icmp eq i32 %36, 10, !dbg !601
  br i1 %37, label %38, label %41, !dbg !602

; <label>:38:                                     ; preds = %34
  %39 = load i32, i32* %7, align 4, !dbg !603
  %40 = add nsw i32 %39, 1, !dbg !603
  store i32 %40, i32* %7, align 4, !dbg !603
  br label %41, !dbg !604

; <label>:41:                                     ; preds = %38, %34
  br label %42, !dbg !605

; <label>:42:                                     ; preds = %41
  %43 = load i32, i32* %6, align 4, !dbg !606
  %44 = icmp ne i32 %43, -1, !dbg !608
  br i1 %44, label %45, label %48, !dbg !609

; <label>:45:                                     ; preds = %42
  %46 = load i32, i32* %6, align 4, !dbg !610
  %47 = call zeroext i1 @c_isspace(i32 %46), !dbg !612
  br label %48

; <label>:48:                                     ; preds = %45, %42
  %49 = phi i1 [ false, %42 ], [ %47, %45 ]
  br i1 %49, label %34, label %50, !dbg !613, !llvm.loop !595

; <label>:50:                                     ; preds = %48
  %51 = load i32, i32* %6, align 4, !dbg !615
  %52 = icmp eq i32 %51, -1, !dbg !617
  br i1 %52, label %53, label %54, !dbg !618

; <label>:53:                                     ; preds = %50
  br label %198, !dbg !619

; <label>:54:                                     ; preds = %50
  %55 = load i32, i32* %6, align 4, !dbg !621
  %56 = icmp eq i32 %55, 35, !dbg !623
  br i1 %56, label %57, label %75, !dbg !624

; <label>:57:                                     ; preds = %54
  br label %58, !dbg !625, !llvm.loop !627

; <label>:58:                                     ; preds = %72, %57
  %59 = call i32 @getchar(), !dbg !628
  store i32 %59, i32* %6, align 4, !dbg !631
  %60 = load i32, i32* %6, align 4, !dbg !632
  %61 = icmp eq i32 %60, 10, !dbg !633
  br i1 %61, label %62, label %65, !dbg !632

; <label>:62:                                     ; preds = %58
  %63 = load i32, i32* %7, align 4, !dbg !634
  %64 = add nsw i32 %63, 1, !dbg !634
  store i32 %64, i32* %7, align 4, !dbg !634
  br label %65, !dbg !637

; <label>:65:                                     ; preds = %62, %58
  br label %66, !dbg !638

; <label>:66:                                     ; preds = %65
  %67 = load i32, i32* %6, align 4, !dbg !640
  %68 = icmp ne i32 %67, -1, !dbg !642
  br i1 %68, label %69, label %72, !dbg !643

; <label>:69:                                     ; preds = %66
  %70 = load i32, i32* %6, align 4, !dbg !644
  %71 = icmp ne i32 %70, 10, !dbg !646
  br label %72

; <label>:72:                                     ; preds = %69, %66
  %73 = phi i1 [ false, %66 ], [ %71, %69 ]
  br i1 %73, label %58, label %74, !dbg !647, !llvm.loop !627

; <label>:74:                                     ; preds = %72
  br label %33, !dbg !649, !llvm.loop !650

; <label>:75:                                     ; preds = %54
  call void @varbuf_reset(%struct.varbuf* %8), !dbg !651
  br label %76, !dbg !652

; <label>:76:                                     ; preds = %94, %75
  %77 = load i32, i32* %6, align 4, !dbg !653
  %78 = call zeroext i1 @c_isspace(i32 %77), !dbg !654
  %79 = xor i1 %78, true, !dbg !655
  br i1 %79, label %80, label %95, !dbg !656

; <label>:80:                                     ; preds = %76
  %81 = load i32, i32* %6, align 4, !dbg !657
  call void @varbuf_add_char(%struct.varbuf* %8, i32 %81), !dbg !659
  %82 = call i32 @getchar(), !dbg !660
  store i32 %82, i32* %6, align 4, !dbg !661
  %83 = load i32, i32* %6, align 4, !dbg !662
  %84 = icmp eq i32 %83, -1, !dbg !664
  br i1 %84, label %85, label %88, !dbg !665

; <label>:85:                                     ; preds = %80
  %86 = call i8* @gettext(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i32 0)) #8, !dbg !666
  %87 = load i32, i32* %7, align 4, !dbg !667
  call void (i8*, ...) @ohshit(i8* %86, i32 %87) #10, !dbg !668
  unreachable, !dbg !670

; <label>:88:                                     ; preds = %80
  %89 = load i32, i32* %6, align 4, !dbg !671
  %90 = icmp eq i32 %89, 10, !dbg !673
  br i1 %90, label %91, label %94, !dbg !674

; <label>:91:                                     ; preds = %88
  %92 = call i8* @gettext(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i32 0, i32 0)) #8, !dbg !675
  %93 = load i32, i32* %7, align 4, !dbg !677
  call void (i8*, ...) @ohshit(i8* %92, i32 %93) #10, !dbg !678
  unreachable, !dbg !680

; <label>:94:                                     ; preds = %88
  br label %76, !dbg !681, !llvm.loop !682

; <label>:95:                                     ; preds = %76
  call void @varbuf_end_str(%struct.varbuf* %8), !dbg !683
  br label %96, !dbg !684

; <label>:96:                                     ; preds = %117, %95
  %97 = load i32, i32* %6, align 4, !dbg !685
  %98 = icmp ne i32 %97, -1, !dbg !686
  br i1 %98, label %99, label %102, !dbg !687

; <label>:99:                                     ; preds = %96
  %100 = load i32, i32* %6, align 4, !dbg !688
  %101 = call zeroext i1 @c_isspace(i32 %100), !dbg !689
  br label %102

; <label>:102:                                    ; preds = %99, %96
  %103 = phi i1 [ false, %96 ], [ %101, %99 ]
  br i1 %103, label %104, label %118, !dbg !690

; <label>:104:                                    ; preds = %102
  %105 = call i32 @getchar(), !dbg !692
  store i32 %105, i32* %6, align 4, !dbg !694
  %106 = load i32, i32* %6, align 4, !dbg !695
  %107 = icmp eq i32 %106, -1, !dbg !697
  br i1 %107, label %108, label %111, !dbg !698

; <label>:108:                                    ; preds = %104
  %109 = call i8* @gettext(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i32 0, i32 0)) #8, !dbg !699
  %110 = load i32, i32* %7, align 4, !dbg !700
  call void (i8*, ...) @ohshit(i8* %109, i32 %110) #10, !dbg !701
  unreachable, !dbg !703

; <label>:111:                                    ; preds = %104
  %112 = load i32, i32* %6, align 4, !dbg !704
  %113 = icmp eq i32 %112, 10, !dbg !706
  br i1 %113, label %114, label %117, !dbg !707

; <label>:114:                                    ; preds = %111
  %115 = call i8* @gettext(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i32 0, i32 0)) #8, !dbg !708
  %116 = load i32, i32* %7, align 4, !dbg !710
  call void (i8*, ...) @ohshit(i8* %115, i32 %116) #10, !dbg !711
  unreachable, !dbg !713

; <label>:117:                                    ; preds = %111
  br label %96, !dbg !714, !llvm.loop !716

; <label>:118:                                    ; preds = %102
  call void @varbuf_reset(%struct.varbuf* %9), !dbg !717
  br label %119, !dbg !718

; <label>:119:                                    ; preds = %128, %118
  %120 = load i32, i32* %6, align 4, !dbg !719
  %121 = icmp ne i32 %120, -1, !dbg !720
  br i1 %121, label %122, label %126, !dbg !721

; <label>:122:                                    ; preds = %119
  %123 = load i32, i32* %6, align 4, !dbg !722
  %124 = call zeroext i1 @c_isspace(i32 %123), !dbg !723
  %125 = xor i1 %124, true, !dbg !724
  br label %126

; <label>:126:                                    ; preds = %122, %119
  %127 = phi i1 [ false, %119 ], [ %125, %122 ]
  br i1 %127, label %128, label %131, !dbg !725

; <label>:128:                                    ; preds = %126
  %129 = load i32, i32* %6, align 4, !dbg !726
  call void @varbuf_add_char(%struct.varbuf* %9, i32 %129), !dbg !728
  %130 = call i32 @getchar(), !dbg !729
  store i32 %130, i32* %6, align 4, !dbg !730
  br label %119, !dbg !731, !llvm.loop !732

; <label>:131:                                    ; preds = %126
  call void @varbuf_end_str(%struct.varbuf* %9), !dbg !733
  br label %132, !dbg !734

; <label>:132:                                    ; preds = %147, %131
  %133 = load i32, i32* %6, align 4, !dbg !735
  %134 = icmp ne i32 %133, -1, !dbg !736
  br i1 %134, label %135, label %138, !dbg !737

; <label>:135:                                    ; preds = %132
  %136 = load i32, i32* %6, align 4, !dbg !738
  %137 = icmp ne i32 %136, 10, !dbg !739
  br label %138

; <label>:138:                                    ; preds = %135, %132
  %139 = phi i1 [ false, %132 ], [ %137, %135 ]
  br i1 %139, label %140, label %148, !dbg !740

; <label>:140:                                    ; preds = %138
  %141 = call i32 @getchar(), !dbg !741
  store i32 %141, i32* %6, align 4, !dbg !743
  %142 = load i32, i32* %6, align 4, !dbg !744
  %143 = call zeroext i1 @c_isspace(i32 %142), !dbg !746
  br i1 %143, label %147, label %144, !dbg !747

; <label>:144:                                    ; preds = %140
  %145 = call i8* @gettext(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.8, i32 0, i32 0)) #8, !dbg !748
  %146 = load i32, i32* %7, align 4, !dbg !749
  call void (i8*, ...) @ohshit(i8* %145, i32 %146) #10, !dbg !750
  unreachable, !dbg !752

; <label>:147:                                    ; preds = %140
  br label %132, !dbg !753, !llvm.loop !754

; <label>:148:                                    ; preds = %138
  %149 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %8, i32 0, i32 2, !dbg !755
  %150 = load i8*, i8** %149, align 8, !dbg !755
  %151 = call %struct.pkginfo* @pkg_spec_parse_pkg(i8* %150, %struct.dpkg_error* %11), !dbg !756
  store %struct.pkginfo* %151, %struct.pkginfo** %5, align 8, !dbg !757
  %152 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !758
  %153 = icmp eq %struct.pkginfo* %152, null, !dbg !760
  br i1 %153, label %154, label %159, !dbg !761

; <label>:154:                                    ; preds = %148
  %155 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i32 0, i32 0)) #8, !dbg !762
  %156 = load i32, i32* %7, align 4, !dbg !763
  %157 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %11, i32 0, i32 2, !dbg !764
  %158 = load i8*, i8** %157, align 8, !dbg !764
  call void (i8*, ...) @ohshit(i8* %155, i32 %156, i8* %158) #10, !dbg !765
  unreachable, !dbg !767

; <label>:159:                                    ; preds = %148
  %160 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !768
  %161 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !770
  %162 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %161, i32 0, i32 9, !dbg !771
  %163 = call zeroext i1 @pkg_is_informative(%struct.pkginfo* %160, %struct.pkgbin* %162), !dbg !772
  br i1 %163, label %176, label %164, !dbg !773

; <label>:164:                                    ; preds = %159
  %165 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !774
  %166 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !775
  %167 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %166, i32 0, i32 10, !dbg !776
  %168 = call zeroext i1 @pkg_is_informative(%struct.pkginfo* %165, %struct.pkgbin* %167), !dbg !777
  br i1 %168, label %176, label %169, !dbg !778

; <label>:169:                                    ; preds = %164
  store i8 1, i8* %10, align 1, !dbg !779
  %170 = call i8* @gettext(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.10, i32 0, i32 0)) #8, !dbg !781
  %171 = load i32, i32* %7, align 4, !dbg !782
  %172 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %8, i32 0, i32 2, !dbg !783
  %173 = load i8*, i8** %172, align 8, !dbg !783
  call void (i8*, ...) @warning(i8* %170, i32 %171, i8* %173), !dbg !784
  %174 = load i32, i32* %7, align 4, !dbg !786
  %175 = add nsw i32 %174, 1, !dbg !786
  store i32 %175, i32* %7, align 4, !dbg !786
  br label %33, !dbg !787, !llvm.loop !650

; <label>:176:                                    ; preds = %164, %159
  %177 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %9, i32 0, i32 2, !dbg !788
  %178 = load i8*, i8** %177, align 8, !dbg !788
  %179 = call %struct.namevalue* @namevalue_find_by_name(%struct.namevalue* getelementptr inbounds ([0 x %struct.namevalue], [0 x %struct.namevalue]* @wantinfos, i32 0, i32 0), i8* %178), !dbg !789
  store %struct.namevalue* %179, %struct.namevalue** %4, align 8, !dbg !790
  %180 = load %struct.namevalue*, %struct.namevalue** %4, align 8, !dbg !791
  %181 = icmp eq %struct.namevalue* %180, null, !dbg !793
  br i1 %181, label %182, label %187, !dbg !794

; <label>:182:                                    ; preds = %176
  %183 = call i8* @gettext(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i32 0, i32 0)) #8, !dbg !795
  %184 = load i32, i32* %7, align 4, !dbg !796
  %185 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %9, i32 0, i32 2, !dbg !797
  %186 = load i8*, i8** %185, align 8, !dbg !797
  call void (i8*, ...) @ohshit(i8* %183, i32 %184, i8* %186) #10, !dbg !798
  unreachable, !dbg !800

; <label>:187:                                    ; preds = %176
  %188 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !801
  %189 = load %struct.namevalue*, %struct.namevalue** %4, align 8, !dbg !802
  %190 = getelementptr inbounds %struct.namevalue, %struct.namevalue* %189, i32 0, i32 1, !dbg !803
  %191 = load i32, i32* %190, align 8, !dbg !803
  call void @pkg_set_want(%struct.pkginfo* %188, i32 %191), !dbg !804
  %192 = load i32, i32* %6, align 4, !dbg !805
  %193 = icmp eq i32 %192, -1, !dbg !807
  br i1 %193, label %194, label %195, !dbg !808

; <label>:194:                                    ; preds = %187
  br label %198, !dbg !809

; <label>:195:                                    ; preds = %187
  %196 = load i32, i32* %7, align 4, !dbg !811
  %197 = add nsw i32 %196, 1, !dbg !811
  store i32 %197, i32* %7, align 4, !dbg !811
  br label %33, !dbg !812, !llvm.loop !650

; <label>:198:                                    ; preds = %194, %53
  %199 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !814
  %200 = call i32 @ferror(%struct._IO_FILE* %199) #8, !dbg !816
  %201 = icmp ne i32 %200, 0, !dbg !816
  br i1 %201, label %202, label %204, !dbg !817

; <label>:202:                                    ; preds = %198
  %203 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i32 0, i32 0)) #8, !dbg !818
  call void (i8*, ...) @ohshite(i8* %203) #10, !dbg !820
  unreachable, !dbg !822

; <label>:204:                                    ; preds = %198
  call void @modstatdb_shutdown(), !dbg !823
  call void @varbuf_destroy(%struct.varbuf* %8), !dbg !824
  call void @varbuf_destroy(%struct.varbuf* %9), !dbg !825
  %205 = load i8, i8* %10, align 1, !dbg !826
  %206 = trunc i8 %205 to i1, !dbg !826
  br i1 %206, label %207, label %209, !dbg !828

; <label>:207:                                    ; preds = %204
  %208 = call i8* @gettext(i8* getelementptr inbounds ([187 x i8], [187 x i8]* @.str.13, i32 0, i32 0)) #8, !dbg !829
  call void (i8*, ...) @warning(i8* %208), !dbg !830
  br label %209, !dbg !832

; <label>:209:                                    ; preds = %207, %204
  ret i32 0, !dbg !833
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #4

; Function Attrs: noreturn
declare void @badusage(i8*, ...) #5

declare void @pkg_infodb_upgrade() #2

declare i32 @getchar() #2

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @c_isspace(i32) #6 !dbg !834 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !837, metadata !156), !dbg !838
  %3 = load i32, i32* %2, align 4, !dbg !839
  %4 = call zeroext i1 @c_isbits(i32 %3, i32 4), !dbg !840
  ret i1 %4, !dbg !841
}

declare void @varbuf_reset(%struct.varbuf*) #2

declare void @varbuf_add_char(%struct.varbuf*, i32) #2

; Function Attrs: noreturn
declare void @ohshit(i8*, ...) #5

declare void @varbuf_end_str(%struct.varbuf*) #2

declare %struct.pkginfo* @pkg_spec_parse_pkg(i8*, %struct.dpkg_error*) #2

declare zeroext i1 @pkg_is_informative(%struct.pkginfo*, %struct.pkgbin*) #2

declare void @warning(i8*, ...) #2

declare %struct.namevalue* @namevalue_find_by_name(%struct.namevalue*, i8*) #2

declare void @pkg_set_want(%struct.pkginfo*, i32) #2

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #3

; Function Attrs: noreturn
declare void @ohshite(i8*, ...) #5

declare void @varbuf_destroy(%struct.varbuf*) #2

; Function Attrs: nounwind uwtable
define i32 @clearselections(i8**) #0 !dbg !842 {
  %2 = alloca i8**, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pkg_hash_iter*, align 8
  %5 = alloca %struct.pkginfo*, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !843, metadata !156), !dbg !844
  call void @llvm.dbg.declare(metadata i32* %3, metadata !845, metadata !156), !dbg !846
  call void @llvm.dbg.declare(metadata %struct.pkg_hash_iter** %4, metadata !847, metadata !156), !dbg !848
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %5, metadata !849, metadata !156), !dbg !850
  %6 = load i8**, i8*** %2, align 8, !dbg !851
  %7 = load i8*, i8** %6, align 8, !dbg !853
  %8 = icmp ne i8* %7, null, !dbg !853
  br i1 %8, label %9, label %14, !dbg !854

; <label>:9:                                      ; preds = %1
  %10 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0)) #8, !dbg !855
  %11 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !856
  %12 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %11, i32 0, i32 0, !dbg !857
  %13 = load i8*, i8** %12, align 8, !dbg !857
  call void (i8*, ...) @badusage(i8* %10, i8* %13) #10, !dbg !858
  unreachable, !dbg !860

; <label>:14:                                     ; preds = %1
  %15 = load i32, i32* @f_noact, align 4, !dbg !861
  %16 = icmp ne i32 %15, 0, !dbg !861
  br i1 %16, label %17, label %18, !dbg !863

; <label>:17:                                     ; preds = %14
  store i32 0, i32* %3, align 4, !dbg !864
  br label %19, !dbg !865

; <label>:18:                                     ; preds = %14
  store i32 3, i32* %3, align 4, !dbg !866
  br label %19

; <label>:19:                                     ; preds = %18, %17
  %20 = load i32, i32* %3, align 4, !dbg !867
  %21 = call i32 @modstatdb_open(i32 %20), !dbg !868
  call void @pkg_infodb_upgrade(), !dbg !869
  %22 = call %struct.pkg_hash_iter* @pkg_hash_iter_new(), !dbg !870
  store %struct.pkg_hash_iter* %22, %struct.pkg_hash_iter** %4, align 8, !dbg !871
  br label %23, !dbg !872

; <label>:23:                                     ; preds = %35, %19
  %24 = load %struct.pkg_hash_iter*, %struct.pkg_hash_iter** %4, align 8, !dbg !873
  %25 = call %struct.pkginfo* @pkg_hash_iter_next_pkg(%struct.pkg_hash_iter* %24), !dbg !875
  store %struct.pkginfo* %25, %struct.pkginfo** %5, align 8, !dbg !876
  %26 = icmp ne %struct.pkginfo* %25, null, !dbg !877
  br i1 %26, label %27, label %36, !dbg !877

; <label>:27:                                     ; preds = %23
  %28 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !878
  %29 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %28, i32 0, i32 9, !dbg !881
  %30 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %29, i32 0, i32 1, !dbg !882
  %31 = load i8, i8* %30, align 8, !dbg !882
  %32 = trunc i8 %31 to i1, !dbg !882
  br i1 %32, label %35, label %33, !dbg !883

; <label>:33:                                     ; preds = %27
  %34 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !884
  call void @pkg_set_want(%struct.pkginfo* %34, i32 3), !dbg !885
  br label %35, !dbg !885

; <label>:35:                                     ; preds = %33, %27
  br label %23, !dbg !886, !llvm.loop !888

; <label>:36:                                     ; preds = %23
  %37 = load %struct.pkg_hash_iter*, %struct.pkg_hash_iter** %4, align 8, !dbg !889
  call void @pkg_hash_iter_free(%struct.pkg_hash_iter* %37), !dbg !890
  call void @modstatdb_shutdown(), !dbg !891
  ret i32 0, !dbg !892
}

declare %struct.pkg_hash_iter* @pkg_hash_iter_new() #2

declare %struct.pkginfo* @pkg_hash_iter_next_pkg(%struct.pkg_hash_iter*) #2

declare void @pkg_hash_iter_free(%struct.pkg_hash_iter*) #2

declare i8* @pkg_name(%struct.pkginfo*, i32) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #7

declare i32 @printf(i8*, ...) #2

declare i8* @pkg_want_name(%struct.pkginfo*) #2

declare zeroext i1 @c_isbits(i32, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!141, !142}
!llvm.ident = !{!143}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !139)
!1 = !DIFile(filename: "[inter]src--select.o.i", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!2 = !{!3, !15, !26, !35, !43, !47, !57, !67, !73, !81, !86, !99, !109, !116, !122, !128}
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
!109 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkg_spec_flags", file: !110, line: 41, size: 32, align: 32, elements: !111)
!110 = !DIFile(filename: "../lib/dpkg/pkg-spec.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!111 = !{!112, !113, !114, !115}
!112 = !DIEnumerator(name: "PKG_SPEC_PATTERNS", value: 1)
!113 = !DIEnumerator(name: "PKG_SPEC_ARCH_SINGLE", value: 256)
!114 = !DIEnumerator(name: "PKG_SPEC_ARCH_WILDCARD", value: 512)
!115 = !DIEnumerator(name: "PKG_SPEC_ARCH_MASK", value: 65280)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_msg_type", file: !117, line: 36, size: 32, align: 32, elements: !118)
!117 = !DIFile(filename: "../lib/dpkg/error.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!118 = !{!119, !120, !121}
!119 = !DIEnumerator(name: "DPKG_MSG_NONE", value: 0)
!120 = !DIEnumerator(name: "DPKG_MSG_WARN", value: 1)
!121 = !DIEnumerator(name: "DPKG_MSG_ERROR", value: 2)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkg_name_arch_when", file: !4, line: 396, size: 32, align: 32, elements: !123)
!123 = !{!124, !125, !126, !127}
!124 = !DIEnumerator(name: "pnaw_never", value: 0)
!125 = !DIEnumerator(name: "pnaw_nonambig", value: 1)
!126 = !DIEnumerator(name: "pnaw_foreign", value: 2)
!127 = !DIEnumerator(name: "pnaw_always", value: 3)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "c_ctype_bit", file: !129, line: 32, size: 32, align: 32, elements: !130)
!129 = !DIFile(filename: "../lib/dpkg/c-ctype.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!130 = !{!131, !132, !133, !134, !135, !136, !137, !138}
!131 = !DIEnumerator(name: "C_CTYPE_BLANK", value: 1)
!132 = !DIEnumerator(name: "C_CTYPE_WHITE", value: 2)
!133 = !DIEnumerator(name: "C_CTYPE_SPACE", value: 4)
!134 = !DIEnumerator(name: "C_CTYPE_UPPER", value: 8)
!135 = !DIEnumerator(name: "C_CTYPE_LOWER", value: 16)
!136 = !DIEnumerator(name: "C_CTYPE_DIGIT", value: 32)
!137 = !DIEnumerator(name: "C_CTYPE_ALPHA", value: 24)
!138 = !DIEnumerator(name: "C_CTYPE_ALNUM", value: 56)
!139 = !{!140}
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!141 = !{i32 2, !"Dwarf Version", i32 4}
!142 = !{i32 2, !"Debug Info Version", i32 3}
!143 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!144 = distinct !DISubprogram(name: "getselections", scope: !145, file: !145, line: 61, type: !146, isLocal: false, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !154)
!145 = !DIFile(filename: "select.c", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!146 = !DISubroutineType(types: !147)
!147 = !{!148, !149}
!148 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64, align: 64)
!150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64, align: 64)
!152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!153 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!154 = !{}
!155 = !DILocalVariable(name: "argv", arg: 1, scope: !144, file: !145, line: 61, type: !149)
!156 = !DIExpression()
!157 = !DILocation(line: 61, column: 34, scope: !144)
!158 = !DILocalVariable(name: "array", scope: !144, file: !145, line: 63, type: !159)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_array", file: !160, line: 38, size: 128, align: 64, elements: !161)
!160 = !DIFile(filename: "../lib/dpkg/pkg-array.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!161 = !{!162, !163}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "n_pkgs", scope: !159, file: !160, line: 39, baseType: !148, size: 32, align: 32)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "pkgs", scope: !159, file: !160, line: 40, baseType: !164, size: 64, align: 64, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64, align: 64)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64, align: 64)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkginfo", file: !4, line: 195, size: 3072, align: 64, elements: !167)
!167 = !{!168, !216, !217, !218, !219, !220, !221, !222, !223, !224, !254, !255, !271, !280, !296, !297, !303, !359, !363, !364}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !166, file: !4, line: 196, baseType: !169, size: 64, align: 64)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64, align: 64)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgset", file: !4, line: 242, size: 3392, align: 64, elements: !171)
!171 = !{!172, !173, !174, !175, !215}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !170, file: !4, line: 243, baseType: !169, size: 64, align: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !170, file: !4, line: 244, baseType: !151, size: 64, align: 64, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !170, file: !4, line: 245, baseType: !166, size: 3072, align: 64, offset: 128)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "depended", scope: !170, file: !4, line: 249, baseType: !176, size: 128, align: 64, offset: 3200)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !170, file: !4, line: 246, size: 128, align: 64, elements: !177)
!177 = !{!178, !214}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !176, file: !4, line: 247, baseType: !179, size: 64, align: 64)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64, align: 64)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "deppossi", file: !4, line: 63, size: 640, align: 64, elements: !181)
!181 = !{!182, !190, !191, !192, !193, !194, !203, !210, !211, !213}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !180, file: !4, line: 64, baseType: !183, size: 64, align: 64)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dependency", file: !4, line: 56, size: 256, align: 64, elements: !185)
!185 = !{!186, !187, !188, !189}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !184, file: !4, line: 57, baseType: !165, size: 64, align: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !184, file: !4, line: 58, baseType: !183, size: 64, align: 64, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !184, file: !4, line: 59, baseType: !179, size: 64, align: 64, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !184, file: !4, line: 60, baseType: !3, size: 32, align: 32, offset: 192)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "ed", scope: !180, file: !4, line: 65, baseType: !169, size: 64, align: 64, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !180, file: !4, line: 66, baseType: !179, size: 64, align: 64, offset: 128)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "rev_next", scope: !180, file: !4, line: 66, baseType: !179, size: 64, align: 64, offset: 192)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "rev_prev", scope: !180, file: !4, line: 66, baseType: !179, size: 64, align: 64, offset: 256)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !180, file: !4, line: 67, baseType: !195, size: 64, align: 64, offset: 320)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64, align: 64)
!196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !197)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_arch", file: !16, line: 48, size: 192, align: 64, elements: !198)
!198 = !{!199, !201, !202}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !197, file: !16, line: 49, baseType: !200, size: 64, align: 64)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64, align: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !197, file: !16, line: 50, baseType: !151, size: 64, align: 64, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !197, file: !16, line: 51, baseType: !15, size: 32, align: 32, offset: 128)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !180, file: !4, line: 68, baseType: !204, size: 192, align: 64, offset: 384)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_version", file: !27, line: 42, size: 192, align: 64, elements: !205)
!205 = !{!206, !208, !209}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !204, file: !27, line: 44, baseType: !207, size: 32, align: 32)
!207 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !204, file: !27, line: 46, baseType: !151, size: 64, align: 64, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !204, file: !27, line: 48, baseType: !151, size: 64, align: 64, offset: 128)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "verrel", scope: !180, file: !4, line: 69, baseType: !26, size: 32, align: 32, offset: 576)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "arch_is_implicit", scope: !180, file: !4, line: 70, baseType: !212, size: 8, align: 8, offset: 608)
!212 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "cyclebreak", scope: !180, file: !4, line: 71, baseType: !212, size: 8, align: 8, offset: 616)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !176, file: !4, line: 248, baseType: !179, size: 64, align: 64, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "installed_instances", scope: !170, file: !4, line: 250, baseType: !148, size: 32, align: 32, offset: 3328)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "arch_next", scope: !166, file: !4, line: 197, baseType: !165, size: 64, align: 64, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "want", scope: !166, file: !4, line: 199, baseType: !35, size: 32, align: 32, offset: 128)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "eflag", scope: !166, file: !4, line: 201, baseType: !43, size: 32, align: 32, offset: 160)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !166, file: !4, line: 202, baseType: !47, size: 32, align: 32, offset: 192)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !166, file: !4, line: 203, baseType: !57, size: 32, align: 32, offset: 224)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "otherpriority", scope: !166, file: !4, line: 204, baseType: !151, size: 64, align: 64, offset: 256)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "section", scope: !166, file: !4, line: 205, baseType: !151, size: 64, align: 64, offset: 320)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "configversion", scope: !166, file: !4, line: 206, baseType: !204, size: 192, align: 64, offset: 384)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !166, file: !4, line: 207, baseType: !225, size: 960, align: 64, offset: 576)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgbin", file: !4, line: 107, size: 960, align: 64, elements: !226)
!226 = !{!227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !247}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "depends", scope: !225, file: !4, line: 108, baseType: !183, size: 64, align: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "essential", scope: !225, file: !4, line: 110, baseType: !212, size: 8, align: 8, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "multiarch", scope: !225, file: !4, line: 111, baseType: !67, size: 32, align: 32, offset: 96)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !225, file: !4, line: 112, baseType: !195, size: 64, align: 64, offset: 128)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "pkgname_archqual", scope: !225, file: !4, line: 115, baseType: !151, size: 64, align: 64, offset: 192)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !225, file: !4, line: 116, baseType: !151, size: 64, align: 64, offset: 256)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "maintainer", scope: !225, file: !4, line: 117, baseType: !151, size: 64, align: 64, offset: 320)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !225, file: !4, line: 118, baseType: !151, size: 64, align: 64, offset: 384)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "installedsize", scope: !225, file: !4, line: 119, baseType: !151, size: 64, align: 64, offset: 448)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !225, file: !4, line: 120, baseType: !151, size: 64, align: 64, offset: 512)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "bugs", scope: !225, file: !4, line: 121, baseType: !151, size: 64, align: 64, offset: 576)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !225, file: !4, line: 122, baseType: !204, size: 192, align: 64, offset: 640)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "conffiles", scope: !225, file: !4, line: 123, baseType: !240, size: 64, align: 64, offset: 832)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64, align: 64)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conffile", file: !4, line: 80, size: 256, align: 64, elements: !242)
!242 = !{!243, !244, !245, !246}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !241, file: !4, line: 81, baseType: !240, size: 64, align: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !241, file: !4, line: 82, baseType: !151, size: 64, align: 64, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !241, file: !4, line: 83, baseType: !151, size: 64, align: 64, offset: 128)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "obsolete", scope: !241, file: !4, line: 84, baseType: !212, size: 8, align: 8, offset: 192)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "arbs", scope: !225, file: !4, line: 124, baseType: !248, size: 64, align: 64, offset: 896)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64, align: 64)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arbitraryfield", file: !4, line: 74, size: 192, align: 64, elements: !250)
!250 = !{!251, !252, !253}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !249, file: !4, line: 75, baseType: !248, size: 64, align: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !249, file: !4, line: 76, baseType: !151, size: 64, align: 64, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !249, file: !4, line: 77, baseType: !151, size: 64, align: 64, offset: 128)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !166, file: !4, line: 208, baseType: !225, size: 960, align: 64, offset: 1536)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "clientdata", scope: !166, file: !4, line: 209, baseType: !256, size: 64, align: 64, offset: 2496)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64, align: 64)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perpackagestate", file: !74, line: 53, size: 256, align: 64, elements: !258)
!258 = !{!259, !260, !261, !262, !263, !264}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "istobe", scope: !257, file: !74, line: 54, baseType: !73, size: 32, align: 32)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !257, file: !74, line: 57, baseType: !81, size: 32, align: 32, offset: 32)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !257, file: !74, line: 59, baseType: !212, size: 8, align: 8, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "replacingfilesandsaid", scope: !257, file: !74, line: 61, baseType: !148, size: 32, align: 32, offset: 96)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "cmdline_seen", scope: !257, file: !74, line: 62, baseType: !148, size: 32, align: 32, offset: 128)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "trigprocdeferred", scope: !257, file: !74, line: 65, baseType: !265, size: 64, align: 64, offset: 192)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64, align: 64)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_list", file: !267, line: 34, size: 128, align: 64, elements: !268)
!267 = !DIFile(filename: "../lib/dpkg/pkg-list.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!268 = !{!269, !270}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !266, file: !267, line: 35, baseType: !265, size: 64, align: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !266, file: !267, line: 36, baseType: !165, size: 64, align: 64, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "archives", scope: !166, file: !4, line: 211, baseType: !272, size: 64, align: 64, offset: 2560)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64, align: 64)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archivedetails", file: !4, line: 87, size: 320, align: 64, elements: !274)
!274 = !{!275, !276, !277, !278, !279}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !273, file: !4, line: 88, baseType: !272, size: 64, align: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !273, file: !4, line: 89, baseType: !151, size: 64, align: 64, offset: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "msdosname", scope: !273, file: !4, line: 90, baseType: !151, size: 64, align: 64, offset: 128)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !273, file: !4, line: 91, baseType: !151, size: 64, align: 64, offset: 192)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "md5sum", scope: !273, file: !4, line: 92, baseType: !151, size: 64, align: 64, offset: 256)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "trigaw", scope: !166, file: !4, line: 216, baseType: !281, size: 128, align: 64, offset: 2624)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !166, file: !4, line: 213, size: 128, align: 64, elements: !282)
!282 = !{!283, !295}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !281, file: !4, line: 215, baseType: !284, size: 64, align: 64)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64, align: 64)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigaw", file: !4, line: 142, size: 320, align: 64, elements: !286)
!286 = !{!287, !288, !289, !290}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "aw", scope: !285, file: !4, line: 143, baseType: !165, size: 64, align: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "pend", scope: !285, file: !4, line: 143, baseType: !165, size: 64, align: 64, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "samepend_next", scope: !285, file: !4, line: 144, baseType: !284, size: 64, align: 64, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "sameaw", scope: !285, file: !4, line: 147, baseType: !291, size: 128, align: 64, offset: 192)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !285, file: !4, line: 145, size: 128, align: 64, elements: !292)
!292 = !{!293, !294}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !291, file: !4, line: 146, baseType: !284, size: 64, align: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !291, file: !4, line: 146, baseType: !284, size: 64, align: 64, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !281, file: !4, line: 215, baseType: !284, size: 64, align: 64, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "othertrigaw_head", scope: !166, file: !4, line: 219, baseType: !284, size: 64, align: 64, offset: 2752)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "trigpend_head", scope: !166, file: !4, line: 220, baseType: !298, size: 64, align: 64, offset: 2816)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64, align: 64)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigpend", file: !4, line: 134, size: 128, align: 64, elements: !300)
!300 = !{!301, !302}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !299, file: !4, line: 135, baseType: !298, size: 64, align: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !299, file: !4, line: 136, baseType: !151, size: 64, align: 64, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !166, file: !4, line: 231, baseType: !304, size: 64, align: 64, offset: 2880)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64, align: 64)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode_list", file: !87, line: 122, size: 128, align: 64, elements: !306)
!306 = !{!307, !308}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !305, file: !87, line: 123, baseType: !304, size: 64, align: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "namenode", scope: !305, file: !87, line: 124, baseType: !309, size: 64, align: 64, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64, align: 64)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode", file: !87, line: 90, size: 640, align: 64, elements: !311)
!311 = !{!312, !313, !314, !315, !323, !342, !345, !346, !347, !348}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !310, file: !87, line: 91, baseType: !309, size: 64, align: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !310, file: !87, line: 92, baseType: !151, size: 64, align: 64, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "packages", scope: !310, file: !87, line: 93, baseType: !265, size: 64, align: 64, offset: 128)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "divert", scope: !310, file: !87, line: 94, baseType: !316, size: 64, align: 64, offset: 192)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64, align: 64)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_diversion", file: !87, line: 151, size: 256, align: 64, elements: !318)
!318 = !{!319, !320, !321, !322}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "useinstead", scope: !317, file: !87, line: 152, baseType: !309, size: 64, align: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "camefrom", scope: !317, file: !87, line: 153, baseType: !309, size: 64, align: 64, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "pkgset", scope: !317, file: !87, line: 154, baseType: !169, size: 64, align: 64, offset: 128)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !317, file: !87, line: 157, baseType: !316, size: 64, align: 64, offset: 192)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "statoverride", scope: !310, file: !87, line: 101, baseType: !324, size: 64, align: 64, offset: 256)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64, align: 64)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_stat", file: !326, line: 40, size: 256, align: 64, elements: !327)
!326 = !DIFile(filename: "../lib/dpkg/file.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!327 = !{!328, !333, !336, !339, !341}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !325, file: !326, line: 41, baseType: !329, size: 32, align: 32)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !330, line: 80, baseType: !331)
!330 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !332, line: 125, baseType: !207)
!332 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!333 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !325, file: !326, line: 42, baseType: !334, size: 32, align: 32, offset: 32)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !330, line: 65, baseType: !335)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !332, line: 126, baseType: !207)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !325, file: !326, line: 43, baseType: !337, size: 32, align: 32, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !330, line: 70, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !332, line: 129, baseType: !207)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "uname", scope: !325, file: !326, line: 47, baseType: !340, size: 64, align: 64, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64, align: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !325, file: !326, line: 48, baseType: !340, size: 64, align: 64, offset: 192)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "trig_interested", scope: !310, file: !87, line: 103, baseType: !343, size: 64, align: 64, offset: 320)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64, align: 64)
!344 = !DICompositeType(tag: DW_TAG_structure_type, name: "trigfileint", file: !87, line: 103, flags: DIFlagFwdDecl)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !310, file: !87, line: 111, baseType: !86, size: 32, align: 32, offset: 384)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "oldhash", scope: !310, file: !87, line: 114, baseType: !151, size: 64, align: 64, offset: 448)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "newhash", scope: !310, file: !87, line: 117, baseType: !151, size: 64, align: 64, offset: 512)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "file_ondisk_id", scope: !310, file: !87, line: 119, baseType: !349, size: 64, align: 64, offset: 576)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64, align: 64)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ondisk_id", file: !87, line: 85, size: 128, align: 64, elements: !351)
!351 = !{!352, !356}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "id_dev", scope: !350, file: !87, line: 86, baseType: !353, size: 64, align: 64)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !330, line: 60, baseType: !354)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !332, line: 124, baseType: !355)
!355 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "id_ino", scope: !350, file: !87, line: 87, baseType: !357, size: 64, align: 64, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !330, line: 48, baseType: !358)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !332, line: 127, baseType: !355)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_phys_offs", scope: !166, file: !4, line: 232, baseType: !360, size: 64, align: 64, offset: 2944)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !330, line: 86, baseType: !361)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !332, line: 131, baseType: !362)
!362 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_valid", scope: !166, file: !4, line: 233, baseType: !212, size: 8, align: 8, offset: 3008)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "status_dirty", scope: !166, file: !4, line: 236, baseType: !212, size: 8, align: 8, offset: 3016)
!365 = !DILocation(line: 63, column: 20, scope: !144)
!366 = !DILocalVariable(name: "pkg", scope: !144, file: !145, line: 64, type: !165)
!367 = !DILocation(line: 64, column: 19, scope: !144)
!368 = !DILocalVariable(name: "thisarg", scope: !144, file: !145, line: 65, type: !151)
!369 = !DILocation(line: 65, column: 15, scope: !144)
!370 = !DILocalVariable(name: "i", scope: !144, file: !145, line: 66, type: !148)
!371 = !DILocation(line: 66, column: 7, scope: !144)
!372 = !DILocalVariable(name: "found", scope: !144, file: !145, line: 66, type: !148)
!373 = !DILocation(line: 66, column: 10, scope: !144)
!374 = !DILocation(line: 68, column: 3, scope: !144)
!375 = !DILocation(line: 70, column: 3, scope: !144)
!376 = !DILocation(line: 71, column: 3, scope: !144)
!377 = !DILocation(line: 73, column: 9, scope: !378)
!378 = distinct !DILexicalBlock(scope: !144, file: !145, line: 73, column: 7)
!379 = !DILocation(line: 73, column: 8, scope: !378)
!380 = !DILocation(line: 73, column: 7, scope: !144)
!381 = !DILocation(line: 74, column: 12, scope: !382)
!382 = distinct !DILexicalBlock(scope: !383, file: !145, line: 74, column: 5)
!383 = distinct !DILexicalBlock(scope: !378, file: !145, line: 73, column: 15)
!384 = !DILocation(line: 74, column: 10, scope: !382)
!385 = !DILocation(line: 74, column: 17, scope: !386)
!386 = !DILexicalBlockFile(scope: !387, file: !145, discriminator: 1)
!387 = distinct !DILexicalBlock(scope: !382, file: !145, line: 74, column: 5)
!388 = !DILocation(line: 74, column: 27, scope: !386)
!389 = !DILocation(line: 74, column: 19, scope: !386)
!390 = !DILocation(line: 74, column: 5, scope: !386)
!391 = !DILocation(line: 75, column: 24, scope: !392)
!392 = distinct !DILexicalBlock(scope: !387, file: !145, line: 74, column: 40)
!393 = !DILocation(line: 75, column: 13, scope: !392)
!394 = !DILocation(line: 75, column: 19, scope: !392)
!395 = !DILocation(line: 75, column: 11, scope: !392)
!396 = !DILocation(line: 76, column: 11, scope: !397)
!397 = distinct !DILexicalBlock(scope: !392, file: !145, line: 76, column: 11)
!398 = !DILocation(line: 76, column: 16, scope: !397)
!399 = !DILocation(line: 76, column: 23, scope: !397)
!400 = !DILocation(line: 76, column: 11, scope: !392)
!401 = !DILocation(line: 77, column: 9, scope: !397)
!402 = !DILocation(line: 78, column: 22, scope: !392)
!403 = !DILocation(line: 78, column: 7, scope: !392)
!404 = !DILocation(line: 79, column: 5, scope: !392)
!405 = !DILocation(line: 74, column: 36, scope: !406)
!406 = !DILexicalBlockFile(scope: !387, file: !145, discriminator: 2)
!407 = !DILocation(line: 74, column: 5, scope: !406)
!408 = distinct !{!408, !409}
!409 = !DILocation(line: 74, column: 5, scope: !383)
!410 = !DILocation(line: 80, column: 3, scope: !383)
!411 = !DILocation(line: 81, column: 5, scope: !412)
!412 = distinct !DILexicalBlock(scope: !378, file: !145, line: 80, column: 10)
!413 = !DILocation(line: 81, column: 27, scope: !414)
!414 = !DILexicalBlockFile(scope: !412, file: !145, discriminator: 1)
!415 = !DILocation(line: 81, column: 22, scope: !414)
!416 = !DILocation(line: 81, column: 20, scope: !414)
!417 = !DILocation(line: 81, column: 5, scope: !414)
!418 = !DILocalVariable(name: "pkgspec", scope: !419, file: !145, line: 82, type: !420)
!419 = distinct !DILexicalBlock(scope: !412, file: !145, line: 81, column: 32)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_spec", file: !110, line: 51, size: 320, align: 64, elements: !421)
!421 = !{!422, !423, !424, !425, !426, !427, !430}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !420, file: !110, line: 52, baseType: !340, size: 64, align: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !420, file: !110, line: 53, baseType: !195, size: 64, align: 64, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !420, file: !110, line: 55, baseType: !109, size: 32, align: 32, offset: 128)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "name_is_pattern", scope: !420, file: !110, line: 59, baseType: !212, size: 8, align: 8, offset: 160)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "arch_is_pattern", scope: !420, file: !110, line: 60, baseType: !212, size: 8, align: 8, offset: 168)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_iter", scope: !420, file: !110, line: 63, baseType: !428, size: 64, align: 64, offset: 192)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64, align: 64)
!429 = !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_hash_iter", file: !4, line: 314, flags: DIFlagFwdDecl)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_next", scope: !420, file: !110, line: 65, baseType: !165, size: 64, align: 64, offset: 256)
!431 = !DILocation(line: 82, column: 23, scope: !419)
!432 = !DILocation(line: 84, column: 12, scope: !419)
!433 = !DILocation(line: 85, column: 7, scope: !419)
!434 = !DILocation(line: 86, column: 32, scope: !419)
!435 = !DILocation(line: 86, column: 7, scope: !419)
!436 = !DILocation(line: 88, column: 14, scope: !437)
!437 = distinct !DILexicalBlock(scope: !419, file: !145, line: 88, column: 7)
!438 = !DILocation(line: 88, column: 12, scope: !437)
!439 = !DILocation(line: 88, column: 19, scope: !440)
!440 = !DILexicalBlockFile(scope: !441, file: !145, discriminator: 1)
!441 = distinct !DILexicalBlock(scope: !437, file: !145, line: 88, column: 7)
!442 = !DILocation(line: 88, column: 29, scope: !440)
!443 = !DILocation(line: 88, column: 21, scope: !440)
!444 = !DILocation(line: 88, column: 7, scope: !440)
!445 = !DILocation(line: 89, column: 26, scope: !446)
!446 = distinct !DILexicalBlock(scope: !441, file: !145, line: 88, column: 42)
!447 = !DILocation(line: 89, column: 15, scope: !446)
!448 = !DILocation(line: 89, column: 21, scope: !446)
!449 = !DILocation(line: 89, column: 13, scope: !446)
!450 = !DILocation(line: 90, column: 43, scope: !451)
!451 = distinct !DILexicalBlock(scope: !446, file: !145, line: 90, column: 13)
!452 = !DILocation(line: 90, column: 49, scope: !451)
!453 = !DILocation(line: 90, column: 54, scope: !451)
!454 = !DILocation(line: 90, column: 14, scope: !451)
!455 = !DILocation(line: 90, column: 13, scope: !446)
!456 = !DILocation(line: 91, column: 11, scope: !451)
!457 = !DILocation(line: 92, column: 24, scope: !446)
!458 = !DILocation(line: 92, column: 9, scope: !446)
!459 = !DILocation(line: 92, column: 35, scope: !446)
!460 = !DILocation(line: 93, column: 7, scope: !446)
!461 = !DILocation(line: 88, column: 38, scope: !462)
!462 = !DILexicalBlockFile(scope: !441, file: !145, discriminator: 2)
!463 = !DILocation(line: 88, column: 7, scope: !462)
!464 = distinct !{!464, !465}
!465 = !DILocation(line: 88, column: 7, scope: !419)
!466 = !DILocation(line: 94, column: 12, scope: !467)
!467 = distinct !DILexicalBlock(scope: !419, file: !145, line: 94, column: 11)
!468 = !DILocation(line: 94, column: 11, scope: !419)
!469 = !DILocation(line: 95, column: 16, scope: !467)
!470 = !DILocation(line: 95, column: 58, scope: !467)
!471 = !DILocation(line: 95, column: 9, scope: !472)
!472 = !DILexicalBlockFile(scope: !467, file: !145, discriminator: 1)
!473 = !DILocation(line: 95, column: 9, scope: !467)
!474 = !DILocation(line: 97, column: 7, scope: !419)
!475 = !DILocation(line: 81, column: 5, scope: !476)
!476 = !DILexicalBlockFile(scope: !412, file: !145, discriminator: 2)
!477 = distinct !{!477, !411}
!478 = !DILocation(line: 101, column: 11, scope: !144)
!479 = !DILocation(line: 101, column: 19, scope: !144)
!480 = !DILocation(line: 101, column: 3, scope: !481)
!481 = !DILexicalBlockFile(scope: !144, file: !145, discriminator: 1)
!482 = !DILocation(line: 102, column: 11, scope: !144)
!483 = !DILocation(line: 102, column: 19, scope: !144)
!484 = !DILocation(line: 102, column: 3, scope: !481)
!485 = !DILocation(line: 104, column: 3, scope: !144)
!486 = !DILocation(line: 106, column: 3, scope: !144)
!487 = !DILocation(line: 108, column: 3, scope: !144)
!488 = distinct !DISubprogram(name: "getsel1package", scope: !145, file: !145, line: 45, type: !489, isLocal: true, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !154)
!489 = !DISubroutineType(types: !490)
!490 = !{null, !165}
!491 = !DILocalVariable(name: "pkg", arg: 1, scope: !488, file: !145, line: 45, type: !165)
!492 = !DILocation(line: 45, column: 44, scope: !488)
!493 = !DILocalVariable(name: "pkgname", scope: !488, file: !145, line: 46, type: !151)
!494 = !DILocation(line: 46, column: 15, scope: !488)
!495 = !DILocalVariable(name: "l", scope: !488, file: !145, line: 47, type: !148)
!496 = !DILocation(line: 47, column: 7, scope: !488)
!497 = !DILocation(line: 49, column: 7, scope: !498)
!498 = distinct !DILexicalBlock(scope: !488, file: !145, line: 49, column: 7)
!499 = !DILocation(line: 49, column: 12, scope: !498)
!500 = !DILocation(line: 49, column: 17, scope: !498)
!501 = !DILocation(line: 49, column: 7, scope: !488)
!502 = !DILocation(line: 50, column: 5, scope: !498)
!503 = !DILocation(line: 51, column: 22, scope: !488)
!504 = !DILocation(line: 51, column: 13, scope: !488)
!505 = !DILocation(line: 51, column: 11, scope: !488)
!506 = !DILocation(line: 52, column: 14, scope: !488)
!507 = !DILocation(line: 52, column: 7, scope: !488)
!508 = !DILocation(line: 52, column: 5, scope: !488)
!509 = !DILocation(line: 53, column: 5, scope: !488)
!510 = !DILocation(line: 54, column: 11, scope: !488)
!511 = !DILocation(line: 54, column: 9, scope: !488)
!512 = !DILocation(line: 54, column: 5, scope: !488)
!513 = !DILocation(line: 55, column: 7, scope: !514)
!514 = distinct !DILexicalBlock(scope: !488, file: !145, line: 55, column: 7)
!515 = !DILocation(line: 55, column: 9, scope: !514)
!516 = !DILocation(line: 55, column: 7, scope: !488)
!517 = !DILocation(line: 56, column: 7, scope: !514)
!518 = !DILocation(line: 56, column: 5, scope: !514)
!519 = !DILocation(line: 57, column: 24, scope: !488)
!520 = !DILocation(line: 57, column: 33, scope: !488)
!521 = !DILocation(line: 57, column: 66, scope: !488)
!522 = !DILocation(line: 57, column: 52, scope: !488)
!523 = !DILocation(line: 57, column: 3, scope: !524)
!524 = !DILexicalBlockFile(scope: !488, file: !145, discriminator: 1)
!525 = !DILocation(line: 58, column: 1, scope: !488)
!526 = !DILocation(line: 58, column: 1, scope: !524)
!527 = distinct !DISubprogram(name: "setselections", scope: !145, file: !145, line: 112, type: !146, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !154)
!528 = !DILocalVariable(name: "argv", arg: 1, scope: !527, file: !145, line: 112, type: !149)
!529 = !DILocation(line: 112, column: 34, scope: !527)
!530 = !DILocalVariable(name: "msdbflags", scope: !527, file: !145, line: 114, type: !99)
!531 = !DILocation(line: 114, column: 21, scope: !527)
!532 = !DILocalVariable(name: "nv", scope: !527, file: !145, line: 115, type: !533)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64, align: 64)
!534 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !535)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "namevalue", file: !536, line: 35, size: 128, align: 64, elements: !537)
!536 = !DIFile(filename: "../lib/dpkg/namevalue.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!537 = !{!538, !539, !540}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !535, file: !536, line: 36, baseType: !151, size: 64, align: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !535, file: !536, line: 37, baseType: !148, size: 32, align: 32, offset: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !535, file: !536, line: 38, baseType: !148, size: 32, align: 32, offset: 96)
!541 = !DILocation(line: 115, column: 27, scope: !527)
!542 = !DILocalVariable(name: "pkg", scope: !527, file: !145, line: 116, type: !165)
!543 = !DILocation(line: 116, column: 19, scope: !527)
!544 = !DILocalVariable(name: "c", scope: !527, file: !145, line: 117, type: !148)
!545 = !DILocation(line: 117, column: 7, scope: !527)
!546 = !DILocalVariable(name: "lno", scope: !527, file: !145, line: 117, type: !148)
!547 = !DILocation(line: 117, column: 10, scope: !527)
!548 = !DILocalVariable(name: "namevb", scope: !527, file: !145, line: 118, type: !549)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varbuf", file: !550, line: 55, size: 192, align: 64, elements: !551)
!550 = !DIFile(filename: "../lib/dpkg/varbuf.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!551 = !{!552, !555, !556}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !549, file: !550, line: 56, baseType: !553, size: 64, align: 64)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !554, line: 216, baseType: !355)
!554 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!555 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !549, file: !550, line: 56, baseType: !553, size: 64, align: 64, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !549, file: !550, line: 57, baseType: !340, size: 64, align: 64, offset: 128)
!557 = !DILocation(line: 118, column: 17, scope: !527)
!558 = !DILocalVariable(name: "selvb", scope: !527, file: !145, line: 119, type: !549)
!559 = !DILocation(line: 119, column: 17, scope: !527)
!560 = !DILocalVariable(name: "db_possibly_outdated", scope: !527, file: !145, line: 120, type: !212)
!561 = !DILocation(line: 120, column: 7, scope: !527)
!562 = !DILocation(line: 122, column: 8, scope: !563)
!563 = distinct !DILexicalBlock(scope: !527, file: !145, line: 122, column: 7)
!564 = !DILocation(line: 122, column: 7, scope: !563)
!565 = !DILocation(line: 122, column: 7, scope: !527)
!566 = !DILocation(line: 123, column: 14, scope: !563)
!567 = !DILocation(line: 123, column: 50, scope: !563)
!568 = !DILocation(line: 123, column: 61, scope: !563)
!569 = !DILocation(line: 123, column: 5, scope: !570)
!570 = !DILexicalBlockFile(scope: !563, file: !145, discriminator: 1)
!571 = !DILocation(line: 123, column: 5, scope: !563)
!572 = !DILocation(line: 125, column: 13, scope: !527)
!573 = !DILocation(line: 126, column: 7, scope: !574)
!574 = distinct !DILexicalBlock(scope: !527, file: !145, line: 126, column: 7)
!575 = !DILocation(line: 126, column: 7, scope: !527)
!576 = !DILocation(line: 127, column: 15, scope: !574)
!577 = !DILocation(line: 127, column: 5, scope: !574)
!578 = !DILocation(line: 129, column: 15, scope: !574)
!579 = !DILocation(line: 131, column: 18, scope: !527)
!580 = !DILocation(line: 131, column: 3, scope: !527)
!581 = !DILocation(line: 132, column: 3, scope: !527)
!582 = !DILocation(line: 134, column: 6, scope: !527)
!583 = !DILocation(line: 135, column: 3, scope: !527)
!584 = !DILocalVariable(name: "err", scope: !585, file: !145, line: 136, type: !588)
!585 = distinct !DILexicalBlock(scope: !586, file: !145, line: 135, column: 12)
!586 = distinct !DILexicalBlock(scope: !587, file: !145, line: 135, column: 3)
!587 = distinct !DILexicalBlock(scope: !527, file: !145, line: 135, column: 3)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_error", file: !117, line: 42, size: 128, align: 64, elements: !589)
!589 = !{!590, !591, !592}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !588, file: !117, line: 43, baseType: !116, size: 32, align: 32)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "syserrno", scope: !588, file: !117, line: 45, baseType: !148, size: 32, align: 32, offset: 32)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !588, file: !117, line: 46, baseType: !340, size: 64, align: 64, offset: 64)
!593 = !DILocation(line: 136, column: 23, scope: !585)
!594 = !DILocation(line: 138, column: 5, scope: !585)
!595 = distinct !{!595, !594}
!596 = !DILocation(line: 139, column: 11, scope: !597)
!597 = distinct !DILexicalBlock(scope: !585, file: !145, line: 138, column: 8)
!598 = !DILocation(line: 139, column: 9, scope: !597)
!599 = !DILocation(line: 140, column: 11, scope: !600)
!600 = distinct !DILexicalBlock(scope: !597, file: !145, line: 140, column: 11)
!601 = !DILocation(line: 140, column: 13, scope: !600)
!602 = !DILocation(line: 140, column: 11, scope: !597)
!603 = !DILocation(line: 141, column: 12, scope: !600)
!604 = !DILocation(line: 141, column: 9, scope: !600)
!605 = !DILocation(line: 142, column: 5, scope: !597)
!606 = !DILocation(line: 142, column: 14, scope: !607)
!607 = !DILexicalBlockFile(scope: !585, file: !145, discriminator: 1)
!608 = !DILocation(line: 142, column: 16, scope: !607)
!609 = !DILocation(line: 142, column: 22, scope: !607)
!610 = !DILocation(line: 142, column: 35, scope: !611)
!611 = !DILexicalBlockFile(scope: !585, file: !145, discriminator: 2)
!612 = !DILocation(line: 142, column: 25, scope: !611)
!613 = !DILocation(line: 142, column: 5, scope: !614)
!614 = !DILexicalBlockFile(scope: !597, file: !145, discriminator: 3)
!615 = !DILocation(line: 143, column: 9, scope: !616)
!616 = distinct !DILexicalBlock(scope: !585, file: !145, line: 143, column: 9)
!617 = !DILocation(line: 143, column: 11, scope: !616)
!618 = !DILocation(line: 143, column: 9, scope: !585)
!619 = !DILocation(line: 143, column: 18, scope: !620)
!620 = !DILexicalBlockFile(scope: !616, file: !145, discriminator: 1)
!621 = !DILocation(line: 144, column: 9, scope: !622)
!622 = distinct !DILexicalBlock(scope: !585, file: !145, line: 144, column: 9)
!623 = !DILocation(line: 144, column: 11, scope: !622)
!624 = !DILocation(line: 144, column: 9, scope: !585)
!625 = !DILocation(line: 145, column: 7, scope: !626)
!626 = distinct !DILexicalBlock(scope: !622, file: !145, line: 144, column: 19)
!627 = distinct !{!627, !625}
!628 = !DILocation(line: 145, column: 15, scope: !629)
!629 = !DILexicalBlockFile(scope: !630, file: !145, discriminator: 1)
!630 = distinct !DILexicalBlock(scope: !626, file: !145, line: 145, column: 10)
!631 = !DILocation(line: 145, column: 13, scope: !629)
!632 = !DILocation(line: 145, column: 30, scope: !629)
!633 = !DILocation(line: 145, column: 32, scope: !629)
!634 = !DILocation(line: 145, column: 44, scope: !635)
!635 = !DILexicalBlockFile(scope: !636, file: !145, discriminator: 2)
!636 = distinct !DILexicalBlock(scope: !630, file: !145, line: 145, column: 30)
!637 = !DILocation(line: 145, column: 41, scope: !635)
!638 = !DILocation(line: 145, column: 48, scope: !639)
!639 = !DILexicalBlockFile(scope: !630, file: !145, discriminator: 3)
!640 = !DILocation(line: 145, column: 57, scope: !641)
!641 = !DILexicalBlockFile(scope: !626, file: !145, discriminator: 4)
!642 = !DILocation(line: 145, column: 59, scope: !641)
!643 = !DILocation(line: 145, column: 65, scope: !641)
!644 = !DILocation(line: 145, column: 68, scope: !645)
!645 = !DILexicalBlockFile(scope: !626, file: !145, discriminator: 5)
!646 = !DILocation(line: 145, column: 70, scope: !645)
!647 = !DILocation(line: 145, column: 48, scope: !648)
!648 = !DILexicalBlockFile(scope: !630, file: !145, discriminator: 6)
!649 = !DILocation(line: 146, column: 7, scope: !626)
!650 = distinct !{!650, !583}
!651 = !DILocation(line: 149, column: 5, scope: !585)
!652 = !DILocation(line: 150, column: 5, scope: !585)
!653 = !DILocation(line: 150, column: 23, scope: !607)
!654 = !DILocation(line: 150, column: 13, scope: !607)
!655 = !DILocation(line: 150, column: 12, scope: !607)
!656 = !DILocation(line: 150, column: 5, scope: !607)
!657 = !DILocation(line: 151, column: 32, scope: !658)
!658 = distinct !DILexicalBlock(scope: !585, file: !145, line: 150, column: 27)
!659 = !DILocation(line: 151, column: 7, scope: !658)
!660 = !DILocation(line: 152, column: 10, scope: !658)
!661 = !DILocation(line: 152, column: 8, scope: !658)
!662 = !DILocation(line: 153, column: 11, scope: !663)
!663 = distinct !DILexicalBlock(scope: !658, file: !145, line: 153, column: 11)
!664 = !DILocation(line: 153, column: 13, scope: !663)
!665 = !DILocation(line: 153, column: 11, scope: !658)
!666 = !DILocation(line: 154, column: 16, scope: !663)
!667 = !DILocation(line: 154, column: 78, scope: !663)
!668 = !DILocation(line: 154, column: 9, scope: !669)
!669 = !DILexicalBlockFile(scope: !663, file: !145, discriminator: 1)
!670 = !DILocation(line: 154, column: 9, scope: !663)
!671 = !DILocation(line: 155, column: 11, scope: !672)
!672 = distinct !DILexicalBlock(scope: !658, file: !145, line: 155, column: 11)
!673 = !DILocation(line: 155, column: 13, scope: !672)
!674 = !DILocation(line: 155, column: 11, scope: !658)
!675 = !DILocation(line: 155, column: 29, scope: !676)
!676 = !DILexicalBlockFile(scope: !672, file: !145, discriminator: 1)
!677 = !DILocation(line: 155, column: 90, scope: !676)
!678 = !DILocation(line: 155, column: 22, scope: !679)
!679 = !DILexicalBlockFile(scope: !676, file: !145, discriminator: 2)
!680 = !DILocation(line: 155, column: 22, scope: !676)
!681 = !DILocation(line: 150, column: 5, scope: !611)
!682 = distinct !{!682, !652}
!683 = !DILocation(line: 157, column: 5, scope: !585)
!684 = !DILocation(line: 159, column: 5, scope: !585)
!685 = !DILocation(line: 159, column: 12, scope: !607)
!686 = !DILocation(line: 159, column: 14, scope: !607)
!687 = !DILocation(line: 159, column: 20, scope: !607)
!688 = !DILocation(line: 159, column: 33, scope: !611)
!689 = !DILocation(line: 159, column: 23, scope: !611)
!690 = !DILocation(line: 159, column: 5, scope: !691)
!691 = !DILexicalBlockFile(scope: !585, file: !145, discriminator: 3)
!692 = !DILocation(line: 160, column: 10, scope: !693)
!693 = distinct !DILexicalBlock(scope: !585, file: !145, line: 159, column: 37)
!694 = !DILocation(line: 160, column: 8, scope: !693)
!695 = !DILocation(line: 161, column: 11, scope: !696)
!696 = distinct !DILexicalBlock(scope: !693, file: !145, line: 161, column: 11)
!697 = !DILocation(line: 161, column: 13, scope: !696)
!698 = !DILocation(line: 161, column: 11, scope: !693)
!699 = !DILocation(line: 162, column: 16, scope: !696)
!700 = !DILocation(line: 162, column: 81, scope: !696)
!701 = !DILocation(line: 162, column: 9, scope: !702)
!702 = !DILexicalBlockFile(scope: !696, file: !145, discriminator: 1)
!703 = !DILocation(line: 162, column: 9, scope: !696)
!704 = !DILocation(line: 163, column: 11, scope: !705)
!705 = distinct !DILexicalBlock(scope: !693, file: !145, line: 163, column: 11)
!706 = !DILocation(line: 163, column: 13, scope: !705)
!707 = !DILocation(line: 163, column: 11, scope: !693)
!708 = !DILocation(line: 163, column: 29, scope: !709)
!709 = !DILexicalBlockFile(scope: !705, file: !145, discriminator: 1)
!710 = !DILocation(line: 163, column: 93, scope: !709)
!711 = !DILocation(line: 163, column: 22, scope: !712)
!712 = !DILexicalBlockFile(scope: !709, file: !145, discriminator: 2)
!713 = !DILocation(line: 163, column: 22, scope: !709)
!714 = !DILocation(line: 159, column: 5, scope: !715)
!715 = !DILexicalBlockFile(scope: !585, file: !145, discriminator: 4)
!716 = distinct !{!716, !684}
!717 = !DILocation(line: 166, column: 5, scope: !585)
!718 = !DILocation(line: 167, column: 5, scope: !585)
!719 = !DILocation(line: 167, column: 12, scope: !607)
!720 = !DILocation(line: 167, column: 14, scope: !607)
!721 = !DILocation(line: 167, column: 20, scope: !607)
!722 = !DILocation(line: 167, column: 34, scope: !611)
!723 = !DILocation(line: 167, column: 24, scope: !611)
!724 = !DILocation(line: 167, column: 23, scope: !611)
!725 = !DILocation(line: 167, column: 5, scope: !691)
!726 = !DILocation(line: 168, column: 31, scope: !727)
!727 = distinct !DILexicalBlock(scope: !585, file: !145, line: 167, column: 38)
!728 = !DILocation(line: 168, column: 7, scope: !727)
!729 = !DILocation(line: 169, column: 10, scope: !727)
!730 = !DILocation(line: 169, column: 8, scope: !727)
!731 = !DILocation(line: 167, column: 5, scope: !715)
!732 = distinct !{!732, !718}
!733 = !DILocation(line: 171, column: 5, scope: !585)
!734 = !DILocation(line: 173, column: 5, scope: !585)
!735 = !DILocation(line: 173, column: 12, scope: !607)
!736 = !DILocation(line: 173, column: 14, scope: !607)
!737 = !DILocation(line: 173, column: 20, scope: !607)
!738 = !DILocation(line: 173, column: 23, scope: !611)
!739 = !DILocation(line: 173, column: 25, scope: !611)
!740 = !DILocation(line: 173, column: 5, scope: !691)
!741 = !DILocation(line: 174, column: 10, scope: !742)
!742 = distinct !DILexicalBlock(scope: !585, file: !145, line: 173, column: 34)
!743 = !DILocation(line: 174, column: 8, scope: !742)
!744 = !DILocation(line: 175, column: 22, scope: !745)
!745 = distinct !DILexicalBlock(scope: !742, file: !145, line: 175, column: 11)
!746 = !DILocation(line: 175, column: 12, scope: !745)
!747 = !DILocation(line: 175, column: 11, scope: !742)
!748 = !DILocation(line: 176, column: 16, scope: !745)
!749 = !DILocation(line: 176, column: 82, scope: !745)
!750 = !DILocation(line: 176, column: 9, scope: !751)
!751 = !DILexicalBlockFile(scope: !745, file: !145, discriminator: 1)
!752 = !DILocation(line: 176, column: 9, scope: !745)
!753 = !DILocation(line: 173, column: 5, scope: !715)
!754 = distinct !{!754, !734}
!755 = !DILocation(line: 178, column: 37, scope: !585)
!756 = !DILocation(line: 178, column: 11, scope: !585)
!757 = !DILocation(line: 178, column: 9, scope: !585)
!758 = !DILocation(line: 179, column: 9, scope: !759)
!759 = distinct !DILexicalBlock(scope: !585, file: !145, line: 179, column: 9)
!760 = !DILocation(line: 179, column: 13, scope: !759)
!761 = !DILocation(line: 179, column: 9, scope: !585)
!762 = !DILocation(line: 180, column: 14, scope: !759)
!763 = !DILocation(line: 180, column: 66, scope: !759)
!764 = !DILocation(line: 180, column: 75, scope: !759)
!765 = !DILocation(line: 180, column: 7, scope: !766)
!766 = !DILexicalBlockFile(scope: !759, file: !145, discriminator: 1)
!767 = !DILocation(line: 180, column: 7, scope: !759)
!768 = !DILocation(line: 182, column: 29, scope: !769)
!769 = distinct !DILexicalBlock(scope: !585, file: !145, line: 182, column: 9)
!770 = !DILocation(line: 182, column: 35, scope: !769)
!771 = !DILocation(line: 182, column: 40, scope: !769)
!772 = !DILocation(line: 182, column: 10, scope: !769)
!773 = !DILocation(line: 182, column: 51, scope: !769)
!774 = !DILocation(line: 183, column: 29, scope: !769)
!775 = !DILocation(line: 183, column: 35, scope: !769)
!776 = !DILocation(line: 183, column: 40, scope: !769)
!777 = !DILocation(line: 183, column: 10, scope: !769)
!778 = !DILocation(line: 182, column: 9, scope: !607)
!779 = !DILocation(line: 184, column: 28, scope: !780)
!780 = distinct !DILexicalBlock(scope: !769, file: !145, line: 183, column: 52)
!781 = !DILocation(line: 185, column: 15, scope: !780)
!782 = !DILocation(line: 185, column: 91, scope: !780)
!783 = !DILocation(line: 185, column: 103, scope: !780)
!784 = !DILocation(line: 185, column: 7, scope: !785)
!785 = !DILexicalBlockFile(scope: !780, file: !145, discriminator: 1)
!786 = !DILocation(line: 186, column: 10, scope: !780)
!787 = !DILocation(line: 187, column: 7, scope: !780)
!788 = !DILocation(line: 190, column: 50, scope: !585)
!789 = !DILocation(line: 190, column: 10, scope: !585)
!790 = !DILocation(line: 190, column: 8, scope: !585)
!791 = !DILocation(line: 191, column: 9, scope: !792)
!792 = distinct !DILexicalBlock(scope: !585, file: !145, line: 191, column: 9)
!793 = !DILocation(line: 191, column: 12, scope: !792)
!794 = !DILocation(line: 191, column: 9, scope: !585)
!795 = !DILocation(line: 192, column: 14, scope: !792)
!796 = !DILocation(line: 192, column: 67, scope: !792)
!797 = !DILocation(line: 192, column: 78, scope: !792)
!798 = !DILocation(line: 192, column: 7, scope: !799)
!799 = !DILexicalBlockFile(scope: !792, file: !145, discriminator: 1)
!800 = !DILocation(line: 192, column: 7, scope: !792)
!801 = !DILocation(line: 194, column: 18, scope: !585)
!802 = !DILocation(line: 194, column: 23, scope: !585)
!803 = !DILocation(line: 194, column: 27, scope: !585)
!804 = !DILocation(line: 194, column: 5, scope: !585)
!805 = !DILocation(line: 195, column: 9, scope: !806)
!806 = distinct !DILexicalBlock(scope: !585, file: !145, line: 195, column: 9)
!807 = !DILocation(line: 195, column: 11, scope: !806)
!808 = !DILocation(line: 195, column: 9, scope: !585)
!809 = !DILocation(line: 195, column: 18, scope: !810)
!810 = !DILexicalBlockFile(scope: !806, file: !145, discriminator: 1)
!811 = !DILocation(line: 196, column: 8, scope: !585)
!812 = !DILocation(line: 135, column: 3, scope: !813)
!813 = !DILexicalBlockFile(scope: !586, file: !145, discriminator: 1)
!814 = !DILocation(line: 198, column: 13, scope: !815)
!815 = distinct !DILexicalBlock(scope: !527, file: !145, line: 198, column: 7)
!816 = !DILocation(line: 198, column: 7, scope: !815)
!817 = !DILocation(line: 198, column: 7, scope: !527)
!818 = !DILocation(line: 198, column: 29, scope: !819)
!819 = !DILexicalBlockFile(scope: !815, file: !145, discriminator: 1)
!820 = !DILocation(line: 198, column: 21, scope: !821)
!821 = !DILexicalBlockFile(scope: !819, file: !145, discriminator: 2)
!822 = !DILocation(line: 198, column: 21, scope: !819)
!823 = !DILocation(line: 199, column: 3, scope: !527)
!824 = !DILocation(line: 200, column: 3, scope: !527)
!825 = !DILocation(line: 201, column: 3, scope: !527)
!826 = !DILocation(line: 203, column: 7, scope: !827)
!827 = distinct !DILexicalBlock(scope: !527, file: !145, line: 203, column: 7)
!828 = !DILocation(line: 203, column: 7, scope: !527)
!829 = !DILocation(line: 204, column: 13, scope: !827)
!830 = !DILocation(line: 204, column: 5, scope: !831)
!831 = !DILexicalBlockFile(scope: !827, file: !145, discriminator: 1)
!832 = !DILocation(line: 204, column: 5, scope: !827)
!833 = !DILocation(line: 208, column: 3, scope: !527)
!834 = distinct !DISubprogram(name: "c_isspace", scope: !129, file: !129, line: 69, type: !835, isLocal: true, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !154)
!835 = !DISubroutineType(types: !836)
!836 = !{!212, !148}
!837 = !DILocalVariable(name: "c", arg: 1, scope: !834, file: !129, line: 69, type: !148)
!838 = !DILocation(line: 69, column: 15, scope: !834)
!839 = !DILocation(line: 71, column: 18, scope: !834)
!840 = !DILocation(line: 71, column: 9, scope: !834)
!841 = !DILocation(line: 71, column: 2, scope: !834)
!842 = distinct !DISubprogram(name: "clearselections", scope: !145, file: !145, line: 212, type: !146, isLocal: false, isDefinition: true, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !154)
!843 = !DILocalVariable(name: "argv", arg: 1, scope: !842, file: !145, line: 212, type: !149)
!844 = !DILocation(line: 212, column: 36, scope: !842)
!845 = !DILocalVariable(name: "msdbflags", scope: !842, file: !145, line: 214, type: !99)
!846 = !DILocation(line: 214, column: 21, scope: !842)
!847 = !DILocalVariable(name: "iter", scope: !842, file: !145, line: 215, type: !428)
!848 = !DILocation(line: 215, column: 25, scope: !842)
!849 = !DILocalVariable(name: "pkg", scope: !842, file: !145, line: 216, type: !165)
!850 = !DILocation(line: 216, column: 19, scope: !842)
!851 = !DILocation(line: 218, column: 8, scope: !852)
!852 = distinct !DILexicalBlock(scope: !842, file: !145, line: 218, column: 7)
!853 = !DILocation(line: 218, column: 7, scope: !852)
!854 = !DILocation(line: 218, column: 7, scope: !842)
!855 = !DILocation(line: 219, column: 14, scope: !852)
!856 = !DILocation(line: 219, column: 50, scope: !852)
!857 = !DILocation(line: 219, column: 61, scope: !852)
!858 = !DILocation(line: 219, column: 5, scope: !859)
!859 = !DILexicalBlockFile(scope: !852, file: !145, discriminator: 1)
!860 = !DILocation(line: 219, column: 5, scope: !852)
!861 = !DILocation(line: 221, column: 7, scope: !862)
!862 = distinct !DILexicalBlock(scope: !842, file: !145, line: 221, column: 7)
!863 = !DILocation(line: 221, column: 7, scope: !842)
!864 = !DILocation(line: 222, column: 15, scope: !862)
!865 = !DILocation(line: 222, column: 5, scope: !862)
!866 = !DILocation(line: 224, column: 15, scope: !862)
!867 = !DILocation(line: 226, column: 18, scope: !842)
!868 = !DILocation(line: 226, column: 3, scope: !842)
!869 = !DILocation(line: 227, column: 3, scope: !842)
!870 = !DILocation(line: 229, column: 10, scope: !842)
!871 = !DILocation(line: 229, column: 8, scope: !842)
!872 = !DILocation(line: 230, column: 3, scope: !842)
!873 = !DILocation(line: 230, column: 40, scope: !874)
!874 = !DILexicalBlockFile(scope: !842, file: !145, discriminator: 1)
!875 = !DILocation(line: 230, column: 17, scope: !874)
!876 = !DILocation(line: 230, column: 15, scope: !874)
!877 = !DILocation(line: 230, column: 3, scope: !874)
!878 = !DILocation(line: 231, column: 10, scope: !879)
!879 = distinct !DILexicalBlock(scope: !880, file: !145, line: 231, column: 9)
!880 = distinct !DILexicalBlock(scope: !842, file: !145, line: 230, column: 48)
!881 = !DILocation(line: 231, column: 15, scope: !879)
!882 = !DILocation(line: 231, column: 25, scope: !879)
!883 = !DILocation(line: 231, column: 9, scope: !880)
!884 = !DILocation(line: 232, column: 20, scope: !879)
!885 = !DILocation(line: 232, column: 7, scope: !879)
!886 = !DILocation(line: 230, column: 3, scope: !887)
!887 = !DILexicalBlockFile(scope: !842, file: !145, discriminator: 2)
!888 = distinct !{!888, !872}
!889 = !DILocation(line: 234, column: 22, scope: !842)
!890 = !DILocation(line: 234, column: 3, scope: !842)
!891 = !DILocation(line: 236, column: 3, scope: !842)
!892 = !DILocation(line: 238, column: 3, scope: !842)
