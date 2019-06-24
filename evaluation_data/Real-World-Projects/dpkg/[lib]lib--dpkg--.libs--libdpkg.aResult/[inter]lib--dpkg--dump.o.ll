; ModuleID = './[inter]lib--dpkg--dump.o.i'
source_filename = "./[inter]lib--dpkg--dump.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.namevalue = type { i8*, i32, i32 }
%struct.fieldinfo = type { i8*, i64, void (%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*)*, {}*, i64 }
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
%struct.parsedb_state = type { i32, i32, %struct.dpkg_error, %struct.pkginfo*, %struct.pkgbin*, i8*, i8*, i8*, i8*, i32, i32 }
%struct.dpkg_error = type { i32, i32, i8* }
%struct.varbuf = type { i64, i64, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.pkg_array = type { i32, %struct.pkginfo** }
%struct.atomic_file = type { i32, i8*, i8*, %struct._IO_FILE* }

@.str = private unnamed_addr constant [7 x i8] c"dump.c\00", align 1
@__func__.w_name = private unnamed_addr constant [7 x i8] c"w_name\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"pkgset has no name\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Package: \00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Version: \00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Config-Version: \00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"Section: \00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@multiarchinfos = external constant [0 x %struct.namevalue], align 8
@__func__.w_priority = private unnamed_addr constant [11 x i8] c"w_priority\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"package %s has out-of-range priority %d\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"Priority: \00", align 1
@__func__.w_status = private unnamed_addr constant [9 x i8] c"w_status\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"package %s has unknown want state %d\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"package %s has unknown error state %d\00", align 1
@.str.12 = private unnamed_addr constant [56 x i8] c"package %s in state %s, has awaited or pending triggers\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"package %s in state %s, has pending triggers\00", align 1
@.str.14 = private unnamed_addr constant [48 x i8] c"package %s in state %s, has no awaited triggers\00", align 1
@.str.15 = private unnamed_addr constant [59 x i8] c"package %s in stata %s, has awaited or no pending triggers\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"unknown package status '%d'\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"Status: \00", align 1
@.str.18 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__func__.varbufdependency = private unnamed_addr constant [17 x i8] c"varbufdependency\00", align 1
@.str.19 = private unnamed_addr constant [44 x i8] c"dependency and deppossi not linked properly\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c" | \00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"unknown dpkg_relation %d\00", align 1
@__func__.w_dependency = private unnamed_addr constant [13 x i8] c"w_dependency\00", align 1
@.str.27 = private unnamed_addr constant [46 x i8] c"dependency and package %s not linked properly\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"Conffiles:\0A\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c" obsolete\00", align 1
@__func__.w_trigpend = private unnamed_addr constant [11 x i8] c"w_trigpend\00", align 1
@.str.31 = private unnamed_addr constant [57 x i8] c"package %s in non-trigger state %s, has pending triggers\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"Triggers-Pending:\00", align 1
@__func__.w_trigaw = private unnamed_addr constant [9 x i8] c"w_trigaw\00", align 1
@.str.33 = private unnamed_addr constant [45 x i8] c"package %s in state %s, has awaited triggers\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"Triggers-Awaited:\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c": \00", align 1
@fieldinfos = external constant [0 x %struct.fieldinfo], align 8
@.str.36 = private unnamed_addr constant [5 x i8] c"dpkg\00", align 1
@.str.37 = private unnamed_addr constant [47 x i8] c"failed to write details of '%.50s' to '%.250s'\00", align 1
@writedb_records.writebuf = internal global [8192 x i8] zeroinitializer, align 16
@.str.38 = private unnamed_addr constant [10 x i8] c"available\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.40 = private unnamed_addr constant [44 x i8] c"unable to set buffering on %s database file\00", align 1
@.str.41 = private unnamed_addr constant [61 x i8] c"failed to write %s database record about '%.50s' to '%.250s'\00", align 1

; Function Attrs: nounwind uwtable
define void @w_name(%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*) #0 !dbg !210 {
  %6 = alloca %struct.varbuf*, align 8
  %7 = alloca %struct.pkginfo*, align 8
  %8 = alloca %struct.pkgbin*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fieldinfo*, align 8
  store %struct.varbuf* %0, %struct.varbuf** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %6, metadata !391, metadata !392), !dbg !393
  store %struct.pkginfo* %1, %struct.pkginfo** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %7, metadata !394, metadata !392), !dbg !395
  store %struct.pkgbin* %2, %struct.pkgbin** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %8, metadata !396, metadata !392), !dbg !397
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !398, metadata !392), !dbg !399
  store %struct.fieldinfo* %4, %struct.fieldinfo** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.fieldinfo** %10, metadata !400, metadata !392), !dbg !401
  %11 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !402
  %12 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %11, i32 0, i32 0, !dbg !404
  %13 = load %struct.pkgset*, %struct.pkgset** %12, align 8, !dbg !404
  %14 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %13, i32 0, i32 1, !dbg !405
  %15 = load i8*, i8** %14, align 8, !dbg !405
  %16 = icmp eq i8* %15, null, !dbg !406
  br i1 %16, label %17, label %18, !dbg !407

; <label>:17:                                     ; preds = %5
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @__func__.w_name, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0)) #8, !dbg !408
  unreachable, !dbg !408

; <label>:18:                                     ; preds = %5
  %19 = load i32, i32* %9, align 4, !dbg !409
  %20 = and i32 %19, 1, !dbg !411
  %21 = icmp ne i32 %20, 0, !dbg !411
  br i1 %21, label %22, label %24, !dbg !412

; <label>:22:                                     ; preds = %18
  %23 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !413
  call void @varbuf_add_buf(%struct.varbuf* %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i64 9), !dbg !414
  br label %24, !dbg !414

; <label>:24:                                     ; preds = %22, %18
  %25 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !415
  %26 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !416
  %27 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %26, i32 0, i32 0, !dbg !417
  %28 = load %struct.pkgset*, %struct.pkgset** %27, align 8, !dbg !417
  %29 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %28, i32 0, i32 1, !dbg !418
  %30 = load i8*, i8** %29, align 8, !dbg !418
  %31 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !419
  %32 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %31, i32 0, i32 0, !dbg !420
  %33 = load %struct.pkgset*, %struct.pkgset** %32, align 8, !dbg !420
  %34 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %33, i32 0, i32 1, !dbg !421
  %35 = load i8*, i8** %34, align 8, !dbg !421
  %36 = call i64 @strlen(i8* %35) #9, !dbg !422
  call void @varbuf_add_buf(%struct.varbuf* %25, i8* %30, i64 %36), !dbg !423
  %37 = load i32, i32* %9, align 4, !dbg !425
  %38 = and i32 %37, 1, !dbg !427
  %39 = icmp ne i32 %38, 0, !dbg !427
  br i1 %39, label %40, label %42, !dbg !428

; <label>:40:                                     ; preds = %24
  %41 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !429
  call void @varbuf_add_char(%struct.varbuf* %41, i32 10), !dbg !430
  br label %42, !dbg !430

; <label>:42:                                     ; preds = %40, %24
  ret void, !dbg !431
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noreturn
declare void @do_internerr(i8*, i32, i8*, i8*, ...) #2

declare void @varbuf_add_buf(%struct.varbuf*, i8*, i64) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare void @varbuf_add_char(%struct.varbuf*, i32) #3

; Function Attrs: nounwind uwtable
define void @w_version(%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*) #0 !dbg !432 {
  %6 = alloca %struct.varbuf*, align 8
  %7 = alloca %struct.pkginfo*, align 8
  %8 = alloca %struct.pkgbin*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fieldinfo*, align 8
  store %struct.varbuf* %0, %struct.varbuf** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %6, metadata !433, metadata !392), !dbg !434
  store %struct.pkginfo* %1, %struct.pkginfo** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %7, metadata !435, metadata !392), !dbg !436
  store %struct.pkgbin* %2, %struct.pkgbin** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %8, metadata !437, metadata !392), !dbg !438
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !439, metadata !392), !dbg !440
  store %struct.fieldinfo* %4, %struct.fieldinfo** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.fieldinfo** %10, metadata !441, metadata !392), !dbg !442
  %11 = load %struct.pkgbin*, %struct.pkgbin** %8, align 8, !dbg !443
  %12 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %11, i32 0, i32 11, !dbg !445
  %13 = call zeroext i1 @dpkg_version_is_informative(%struct.dpkg_version* %12), !dbg !446
  br i1 %13, label %15, label %14, !dbg !447

; <label>:14:                                     ; preds = %5
  br label %30, !dbg !448

; <label>:15:                                     ; preds = %5
  %16 = load i32, i32* %9, align 4, !dbg !449
  %17 = and i32 %16, 1, !dbg !451
  %18 = icmp ne i32 %17, 0, !dbg !451
  br i1 %18, label %19, label %21, !dbg !452

; <label>:19:                                     ; preds = %15
  %20 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !453
  call void @varbuf_add_buf(%struct.varbuf* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i64 9), !dbg !454
  br label %21, !dbg !454

; <label>:21:                                     ; preds = %19, %15
  %22 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !455
  %23 = load %struct.pkgbin*, %struct.pkgbin** %8, align 8, !dbg !456
  %24 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %23, i32 0, i32 11, !dbg !457
  call void @varbufversion(%struct.varbuf* %22, %struct.dpkg_version* %24, i32 1), !dbg !458
  %25 = load i32, i32* %9, align 4, !dbg !459
  %26 = and i32 %25, 1, !dbg !461
  %27 = icmp ne i32 %26, 0, !dbg !461
  br i1 %27, label %28, label %30, !dbg !462

; <label>:28:                                     ; preds = %21
  %29 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !463
  call void @varbuf_add_char(%struct.varbuf* %29, i32 10), !dbg !464
  br label %30, !dbg !464

; <label>:30:                                     ; preds = %14, %28, %21
  ret void, !dbg !465
}

declare zeroext i1 @dpkg_version_is_informative(%struct.dpkg_version*) #3

declare void @varbufversion(%struct.varbuf*, %struct.dpkg_version*, i32) #3

; Function Attrs: nounwind uwtable
define void @w_configversion(%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*) #0 !dbg !466 {
  %6 = alloca %struct.varbuf*, align 8
  %7 = alloca %struct.pkginfo*, align 8
  %8 = alloca %struct.pkgbin*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fieldinfo*, align 8
  store %struct.varbuf* %0, %struct.varbuf** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %6, metadata !467, metadata !392), !dbg !468
  store %struct.pkginfo* %1, %struct.pkginfo** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %7, metadata !469, metadata !392), !dbg !470
  store %struct.pkgbin* %2, %struct.pkgbin** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %8, metadata !471, metadata !392), !dbg !472
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !473, metadata !392), !dbg !474
  store %struct.fieldinfo* %4, %struct.fieldinfo** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.fieldinfo** %10, metadata !475, metadata !392), !dbg !476
  %11 = load %struct.pkgbin*, %struct.pkgbin** %8, align 8, !dbg !477
  %12 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !479
  %13 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %12, i32 0, i32 9, !dbg !480
  %14 = icmp ne %struct.pkgbin* %11, %13, !dbg !481
  br i1 %14, label %15, label %16, !dbg !482

; <label>:15:                                     ; preds = %5
  br label %52, !dbg !483

; <label>:16:                                     ; preds = %5
  %17 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !484
  %18 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %17, i32 0, i32 8, !dbg !486
  %19 = call zeroext i1 @dpkg_version_is_informative(%struct.dpkg_version* %18), !dbg !487
  br i1 %19, label %21, label %20, !dbg !488

; <label>:20:                                     ; preds = %16
  br label %52, !dbg !489

; <label>:21:                                     ; preds = %16
  %22 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !490
  %23 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %22, i32 0, i32 4, !dbg !492
  %24 = load i32, i32* %23, align 8, !dbg !492
  %25 = icmp eq i32 %24, 7, !dbg !493
  br i1 %25, label %36, label %26, !dbg !494

; <label>:26:                                     ; preds = %21
  %27 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !495
  %28 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %27, i32 0, i32 4, !dbg !496
  %29 = load i32, i32* %28, align 8, !dbg !496
  %30 = icmp eq i32 %29, 0, !dbg !497
  br i1 %30, label %36, label %31, !dbg !498

; <label>:31:                                     ; preds = %26
  %32 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !499
  %33 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %32, i32 0, i32 4, !dbg !500
  %34 = load i32, i32* %33, align 8, !dbg !500
  %35 = icmp eq i32 %34, 6, !dbg !501
  br i1 %35, label %36, label %37, !dbg !502

; <label>:36:                                     ; preds = %31, %26, %21
  br label %52, !dbg !504

; <label>:37:                                     ; preds = %31
  %38 = load i32, i32* %9, align 4, !dbg !505
  %39 = and i32 %38, 1, !dbg !507
  %40 = icmp ne i32 %39, 0, !dbg !507
  br i1 %40, label %41, label %43, !dbg !508

; <label>:41:                                     ; preds = %37
  %42 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !509
  call void @varbuf_add_buf(%struct.varbuf* %42, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i64 16), !dbg !510
  br label %43, !dbg !510

; <label>:43:                                     ; preds = %41, %37
  %44 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !511
  %45 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !512
  %46 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %45, i32 0, i32 8, !dbg !513
  call void @varbufversion(%struct.varbuf* %44, %struct.dpkg_version* %46, i32 1), !dbg !514
  %47 = load i32, i32* %9, align 4, !dbg !515
  %48 = and i32 %47, 1, !dbg !517
  %49 = icmp ne i32 %48, 0, !dbg !517
  br i1 %49, label %50, label %52, !dbg !518

; <label>:50:                                     ; preds = %43
  %51 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !519
  call void @varbuf_add_char(%struct.varbuf* %51, i32 10), !dbg !520
  br label %52, !dbg !520

; <label>:52:                                     ; preds = %15, %20, %36, %50, %43
  ret void, !dbg !521
}

; Function Attrs: nounwind uwtable
define void @w_null(%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*) #0 !dbg !522 {
  %6 = alloca %struct.varbuf*, align 8
  %7 = alloca %struct.pkginfo*, align 8
  %8 = alloca %struct.pkgbin*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fieldinfo*, align 8
  store %struct.varbuf* %0, %struct.varbuf** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %6, metadata !523, metadata !392), !dbg !524
  store %struct.pkginfo* %1, %struct.pkginfo** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %7, metadata !525, metadata !392), !dbg !526
  store %struct.pkgbin* %2, %struct.pkgbin** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %8, metadata !527, metadata !392), !dbg !528
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !529, metadata !392), !dbg !530
  store %struct.fieldinfo* %4, %struct.fieldinfo** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.fieldinfo** %10, metadata !531, metadata !392), !dbg !532
  ret void, !dbg !533
}

; Function Attrs: nounwind uwtable
define void @w_section(%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*) #0 !dbg !534 {
  %6 = alloca %struct.varbuf*, align 8
  %7 = alloca %struct.pkginfo*, align 8
  %8 = alloca %struct.pkgbin*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fieldinfo*, align 8
  %11 = alloca i8*, align 8
  store %struct.varbuf* %0, %struct.varbuf** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %6, metadata !535, metadata !392), !dbg !536
  store %struct.pkginfo* %1, %struct.pkginfo** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %7, metadata !537, metadata !392), !dbg !538
  store %struct.pkgbin* %2, %struct.pkgbin** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %8, metadata !539, metadata !392), !dbg !540
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !541, metadata !392), !dbg !542
  store %struct.fieldinfo* %4, %struct.fieldinfo** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.fieldinfo** %10, metadata !543, metadata !392), !dbg !544
  call void @llvm.dbg.declare(metadata i8** %11, metadata !545, metadata !392), !dbg !546
  %12 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !547
  %13 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %12, i32 0, i32 7, !dbg !548
  %14 = load i8*, i8** %13, align 8, !dbg !548
  store i8* %14, i8** %11, align 8, !dbg !546
  %15 = load i8*, i8** %11, align 8, !dbg !549
  %16 = call zeroext i1 @str_is_unset(i8* %15), !dbg !551
  br i1 %16, label %17, label %18, !dbg !552

; <label>:17:                                     ; preds = %5
  br label %34, !dbg !553

; <label>:18:                                     ; preds = %5
  %19 = load i32, i32* %9, align 4, !dbg !554
  %20 = and i32 %19, 1, !dbg !556
  %21 = icmp ne i32 %20, 0, !dbg !556
  br i1 %21, label %22, label %24, !dbg !557

; <label>:22:                                     ; preds = %18
  %23 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !558
  call void @varbuf_add_buf(%struct.varbuf* %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i64 9), !dbg !559
  br label %24, !dbg !559

; <label>:24:                                     ; preds = %22, %18
  %25 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !560
  %26 = load i8*, i8** %11, align 8, !dbg !561
  %27 = load i8*, i8** %11, align 8, !dbg !562
  %28 = call i64 @strlen(i8* %27) #9, !dbg !563
  call void @varbuf_add_buf(%struct.varbuf* %25, i8* %26, i64 %28), !dbg !564
  %29 = load i32, i32* %9, align 4, !dbg !566
  %30 = and i32 %29, 1, !dbg !568
  %31 = icmp ne i32 %30, 0, !dbg !568
  br i1 %31, label %32, label %34, !dbg !569

; <label>:32:                                     ; preds = %24
  %33 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !570
  call void @varbuf_add_char(%struct.varbuf* %33, i32 10), !dbg !571
  br label %34, !dbg !571

; <label>:34:                                     ; preds = %17, %32, %24
  ret void, !dbg !572
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @str_is_unset(i8*) #5 !dbg !573 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !577, metadata !392), !dbg !578
  %3 = load i8*, i8** %2, align 8, !dbg !579
  %4 = icmp eq i8* %3, null, !dbg !580
  br i1 %4, label %11, label %5, !dbg !581

; <label>:5:                                      ; preds = %1
  %6 = load i8*, i8** %2, align 8, !dbg !582
  %7 = getelementptr inbounds i8, i8* %6, i64 0, !dbg !582
  %8 = load i8, i8* %7, align 1, !dbg !582
  %9 = sext i8 %8 to i32, !dbg !582
  %10 = icmp eq i32 %9, 0, !dbg !584
  br label %11, !dbg !585

; <label>:11:                                     ; preds = %5, %1
  %12 = phi i1 [ true, %1 ], [ %10, %5 ]
  ret i1 %12, !dbg !586
}

; Function Attrs: nounwind uwtable
define void @w_charfield(%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*) #0 !dbg !588 {
  %6 = alloca %struct.varbuf*, align 8
  %7 = alloca %struct.pkginfo*, align 8
  %8 = alloca %struct.pkgbin*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fieldinfo*, align 8
  %11 = alloca i8*, align 8
  store %struct.varbuf* %0, %struct.varbuf** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %6, metadata !589, metadata !392), !dbg !590
  store %struct.pkginfo* %1, %struct.pkginfo** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %7, metadata !591, metadata !392), !dbg !592
  store %struct.pkgbin* %2, %struct.pkgbin** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %8, metadata !593, metadata !392), !dbg !594
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !595, metadata !392), !dbg !596
  store %struct.fieldinfo* %4, %struct.fieldinfo** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.fieldinfo** %10, metadata !597, metadata !392), !dbg !598
  call void @llvm.dbg.declare(metadata i8** %11, metadata !599, metadata !392), !dbg !600
  %12 = load %struct.pkgbin*, %struct.pkgbin** %8, align 8, !dbg !601
  %13 = ptrtoint %struct.pkgbin* %12 to i64, !dbg !602
  %14 = load %struct.fieldinfo*, %struct.fieldinfo** %10, align 8, !dbg !603
  %15 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %14, i32 0, i32 4, !dbg !604
  %16 = load i64, i64* %15, align 8, !dbg !604
  %17 = add i64 %13, %16, !dbg !605
  %18 = inttoptr i64 %17 to i8**, !dbg !606
  %19 = load i8*, i8** %18, align 8, !dbg !607
  store i8* %19, i8** %11, align 8, !dbg !600
  %20 = load i8*, i8** %11, align 8, !dbg !608
  %21 = call zeroext i1 @str_is_unset(i8* %20), !dbg !610
  br i1 %21, label %22, label %23, !dbg !611

; <label>:22:                                     ; preds = %5
  br label %40, !dbg !612

; <label>:23:                                     ; preds = %5
  %24 = load i32, i32* %9, align 4, !dbg !613
  %25 = and i32 %24, 1, !dbg !615
  %26 = icmp ne i32 %25, 0, !dbg !615
  br i1 %26, label %27, label %30, !dbg !616

; <label>:27:                                     ; preds = %23
  %28 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !617
  %29 = load %struct.fieldinfo*, %struct.fieldinfo** %10, align 8, !dbg !618
  call void @varbuf_add_fieldname(%struct.varbuf* %28, %struct.fieldinfo* %29), !dbg !619
  br label %30, !dbg !619

; <label>:30:                                     ; preds = %27, %23
  %31 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !620
  %32 = load i8*, i8** %11, align 8, !dbg !621
  %33 = load i8*, i8** %11, align 8, !dbg !622
  %34 = call i64 @strlen(i8* %33) #9, !dbg !623
  call void @varbuf_add_buf(%struct.varbuf* %31, i8* %32, i64 %34), !dbg !624
  %35 = load i32, i32* %9, align 4, !dbg !626
  %36 = and i32 %35, 1, !dbg !628
  %37 = icmp ne i32 %36, 0, !dbg !628
  br i1 %37, label %38, label %40, !dbg !629

; <label>:38:                                     ; preds = %30
  %39 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !630
  call void @varbuf_add_char(%struct.varbuf* %39, i32 10), !dbg !631
  br label %40, !dbg !631

; <label>:40:                                     ; preds = %22, %38, %30
  ret void, !dbg !632
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @varbuf_add_fieldname(%struct.varbuf*, %struct.fieldinfo*) #5 !dbg !633 {
  %3 = alloca %struct.varbuf*, align 8
  %4 = alloca %struct.fieldinfo*, align 8
  store %struct.varbuf* %0, %struct.varbuf** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %3, metadata !636, metadata !392), !dbg !637
  store %struct.fieldinfo* %1, %struct.fieldinfo** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.fieldinfo** %4, metadata !638, metadata !392), !dbg !639
  %5 = load %struct.varbuf*, %struct.varbuf** %3, align 8, !dbg !640
  %6 = load %struct.fieldinfo*, %struct.fieldinfo** %4, align 8, !dbg !641
  %7 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %6, i32 0, i32 0, !dbg !642
  %8 = load i8*, i8** %7, align 8, !dbg !642
  %9 = load %struct.fieldinfo*, %struct.fieldinfo** %4, align 8, !dbg !643
  %10 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %9, i32 0, i32 0, !dbg !644
  %11 = load i8*, i8** %10, align 8, !dbg !644
  %12 = call i64 @strlen(i8* %11) #9, !dbg !645
  call void @varbuf_add_buf(%struct.varbuf* %5, i8* %8, i64 %12), !dbg !646
  %13 = load %struct.varbuf*, %struct.varbuf** %3, align 8, !dbg !648
  call void @varbuf_add_buf(%struct.varbuf* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i32 0, i32 0), i64 2), !dbg !649
  ret void, !dbg !650
}

; Function Attrs: nounwind uwtable
define void @w_archives(%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*) #0 !dbg !651 {
  %6 = alloca %struct.varbuf*, align 8
  %7 = alloca %struct.pkginfo*, align 8
  %8 = alloca %struct.pkgbin*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fieldinfo*, align 8
  %11 = alloca %struct.archivedetails*, align 8
  store %struct.varbuf* %0, %struct.varbuf** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %6, metadata !652, metadata !392), !dbg !653
  store %struct.pkginfo* %1, %struct.pkginfo** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %7, metadata !654, metadata !392), !dbg !655
  store %struct.pkgbin* %2, %struct.pkgbin** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %8, metadata !656, metadata !392), !dbg !657
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !658, metadata !392), !dbg !659
  store %struct.fieldinfo* %4, %struct.fieldinfo** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.fieldinfo** %10, metadata !660, metadata !392), !dbg !661
  call void @llvm.dbg.declare(metadata %struct.archivedetails** %11, metadata !662, metadata !392), !dbg !663
  %12 = load %struct.pkgbin*, %struct.pkgbin** %8, align 8, !dbg !664
  %13 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !666
  %14 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %13, i32 0, i32 10, !dbg !667
  %15 = icmp ne %struct.pkgbin* %12, %14, !dbg !668
  br i1 %15, label %16, label %17, !dbg !669

; <label>:16:                                     ; preds = %5
  br label %81, !dbg !670

; <label>:17:                                     ; preds = %5
  %18 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !671
  %19 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %18, i32 0, i32 12, !dbg !672
  %20 = load %struct.archivedetails*, %struct.archivedetails** %19, align 8, !dbg !672
  store %struct.archivedetails* %20, %struct.archivedetails** %11, align 8, !dbg !673
  %21 = load %struct.archivedetails*, %struct.archivedetails** %11, align 8, !dbg !674
  %22 = icmp ne %struct.archivedetails* %21, null, !dbg !674
  br i1 %22, label %23, label %33, !dbg !676

; <label>:23:                                     ; preds = %17
  %24 = load %struct.archivedetails*, %struct.archivedetails** %11, align 8, !dbg !677
  %25 = ptrtoint %struct.archivedetails* %24 to i64, !dbg !679
  %26 = load %struct.fieldinfo*, %struct.fieldinfo** %10, align 8, !dbg !680
  %27 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %26, i32 0, i32 4, !dbg !681
  %28 = load i64, i64* %27, align 8, !dbg !681
  %29 = add i64 %25, %28, !dbg !682
  %30 = inttoptr i64 %29 to i8**, !dbg !683
  %31 = load i8*, i8** %30, align 8, !dbg !684
  %32 = icmp ne i8* %31, null, !dbg !685
  br i1 %32, label %34, label %33, !dbg !686

; <label>:33:                                     ; preds = %23, %17
  br label %81, !dbg !687

; <label>:34:                                     ; preds = %23
  %35 = load i32, i32* %9, align 4, !dbg !688
  %36 = and i32 %35, 1, !dbg !690
  %37 = icmp ne i32 %36, 0, !dbg !690
  br i1 %37, label %38, label %48, !dbg !691

; <label>:38:                                     ; preds = %34
  %39 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !692
  %40 = load %struct.fieldinfo*, %struct.fieldinfo** %10, align 8, !dbg !694
  %41 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %40, i32 0, i32 0, !dbg !695
  %42 = load i8*, i8** %41, align 8, !dbg !695
  %43 = load %struct.fieldinfo*, %struct.fieldinfo** %10, align 8, !dbg !696
  %44 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %43, i32 0, i32 0, !dbg !697
  %45 = load i8*, i8** %44, align 8, !dbg !697
  %46 = call i64 @strlen(i8* %45) #9, !dbg !698
  call void @varbuf_add_buf(%struct.varbuf* %39, i8* %42, i64 %46), !dbg !699
  %47 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !701
  call void @varbuf_add_char(%struct.varbuf* %47, i32 58), !dbg !702
  br label %48, !dbg !703

; <label>:48:                                     ; preds = %38, %34
  br label %49, !dbg !704

; <label>:49:                                     ; preds = %52, %48
  %50 = load %struct.archivedetails*, %struct.archivedetails** %11, align 8, !dbg !705
  %51 = icmp ne %struct.archivedetails* %50, null, !dbg !707
  br i1 %51, label %52, label %75, !dbg !707

; <label>:52:                                     ; preds = %49
  %53 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !708
  call void @varbuf_add_char(%struct.varbuf* %53, i32 32), !dbg !710
  %54 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !711
  %55 = load %struct.archivedetails*, %struct.archivedetails** %11, align 8, !dbg !712
  %56 = ptrtoint %struct.archivedetails* %55 to i64, !dbg !713
  %57 = load %struct.fieldinfo*, %struct.fieldinfo** %10, align 8, !dbg !714
  %58 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %57, i32 0, i32 4, !dbg !715
  %59 = load i64, i64* %58, align 8, !dbg !715
  %60 = add i64 %56, %59, !dbg !716
  %61 = inttoptr i64 %60 to i8**, !dbg !717
  %62 = load i8*, i8** %61, align 8, !dbg !718
  %63 = load %struct.archivedetails*, %struct.archivedetails** %11, align 8, !dbg !719
  %64 = ptrtoint %struct.archivedetails* %63 to i64, !dbg !720
  %65 = load %struct.fieldinfo*, %struct.fieldinfo** %10, align 8, !dbg !721
  %66 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %65, i32 0, i32 4, !dbg !722
  %67 = load i64, i64* %66, align 8, !dbg !722
  %68 = add i64 %64, %67, !dbg !723
  %69 = inttoptr i64 %68 to i8**, !dbg !724
  %70 = load i8*, i8** %69, align 8, !dbg !725
  %71 = call i64 @strlen(i8* %70) #9, !dbg !726
  call void @varbuf_add_buf(%struct.varbuf* %54, i8* %62, i64 %71), !dbg !727
  %72 = load %struct.archivedetails*, %struct.archivedetails** %11, align 8, !dbg !729
  %73 = getelementptr inbounds %struct.archivedetails, %struct.archivedetails* %72, i32 0, i32 0, !dbg !730
  %74 = load %struct.archivedetails*, %struct.archivedetails** %73, align 8, !dbg !730
  store %struct.archivedetails* %74, %struct.archivedetails** %11, align 8, !dbg !731
  br label %49, !dbg !732, !llvm.loop !734

; <label>:75:                                     ; preds = %49
  %76 = load i32, i32* %9, align 4, !dbg !735
  %77 = and i32 %76, 1, !dbg !737
  %78 = icmp ne i32 %77, 0, !dbg !737
  br i1 %78, label %79, label %81, !dbg !738

; <label>:79:                                     ; preds = %75
  %80 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !739
  call void @varbuf_add_char(%struct.varbuf* %80, i32 10), !dbg !740
  br label %81, !dbg !740

; <label>:81:                                     ; preds = %16, %33, %79, %75
  ret void, !dbg !741
}

; Function Attrs: nounwind uwtable
define void @w_booleandefno(%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*) #0 !dbg !742 {
  %6 = alloca %struct.varbuf*, align 8
  %7 = alloca %struct.pkginfo*, align 8
  %8 = alloca %struct.pkgbin*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fieldinfo*, align 8
  %11 = alloca i8, align 1
  store %struct.varbuf* %0, %struct.varbuf** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %6, metadata !743, metadata !392), !dbg !744
  store %struct.pkginfo* %1, %struct.pkginfo** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %7, metadata !745, metadata !392), !dbg !746
  store %struct.pkgbin* %2, %struct.pkgbin** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %8, metadata !747, metadata !392), !dbg !748
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !749, metadata !392), !dbg !750
  store %struct.fieldinfo* %4, %struct.fieldinfo** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.fieldinfo** %10, metadata !751, metadata !392), !dbg !752
  call void @llvm.dbg.declare(metadata i8* %11, metadata !753, metadata !392), !dbg !754
  %12 = load %struct.pkgbin*, %struct.pkgbin** %8, align 8, !dbg !755
  %13 = ptrtoint %struct.pkgbin* %12 to i64, !dbg !756
  %14 = load %struct.fieldinfo*, %struct.fieldinfo** %10, align 8, !dbg !757
  %15 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %14, i32 0, i32 4, !dbg !758
  %16 = load i64, i64* %15, align 8, !dbg !758
  %17 = add i64 %13, %16, !dbg !759
  %18 = inttoptr i64 %17 to i8*, !dbg !760
  %19 = load i8, i8* %18, align 1, !dbg !761
  %20 = trunc i8 %19 to i1, !dbg !761
  %21 = zext i1 %20 to i8, !dbg !754
  store i8 %21, i8* %11, align 1, !dbg !754
  %22 = load i32, i32* %9, align 4, !dbg !762
  %23 = and i32 %22, 1, !dbg !764
  %24 = icmp ne i32 %23, 0, !dbg !764
  br i1 %24, label %25, label %29, !dbg !765

; <label>:25:                                     ; preds = %5
  %26 = load i8, i8* %11, align 1, !dbg !766
  %27 = trunc i8 %26 to i1, !dbg !766
  br i1 %27, label %29, label %28, !dbg !768

; <label>:28:                                     ; preds = %25
  br label %50, !dbg !769

; <label>:29:                                     ; preds = %25, %5
  %30 = load i32, i32* %9, align 4, !dbg !770
  %31 = and i32 %30, 1, !dbg !772
  %32 = icmp ne i32 %31, 0, !dbg !772
  br i1 %32, label %33, label %36, !dbg !773

; <label>:33:                                     ; preds = %29
  %34 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !774
  %35 = load %struct.fieldinfo*, %struct.fieldinfo** %10, align 8, !dbg !775
  call void @varbuf_add_fieldname(%struct.varbuf* %34, %struct.fieldinfo* %35), !dbg !776
  br label %36, !dbg !776

; <label>:36:                                     ; preds = %33, %29
  %37 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !777
  %38 = load i8, i8* %11, align 1, !dbg !778
  %39 = trunc i8 %38 to i1, !dbg !778
  %40 = select i1 %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), !dbg !778
  %41 = load i8, i8* %11, align 1, !dbg !779
  %42 = trunc i8 %41 to i1, !dbg !779
  %43 = select i1 %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), !dbg !779
  %44 = call i64 @strlen(i8* %43) #9, !dbg !780
  call void @varbuf_add_buf(%struct.varbuf* %37, i8* %40, i64 %44), !dbg !781
  %45 = load i32, i32* %9, align 4, !dbg !783
  %46 = and i32 %45, 1, !dbg !785
  %47 = icmp ne i32 %46, 0, !dbg !785
  br i1 %47, label %48, label %50, !dbg !786

; <label>:48:                                     ; preds = %36
  %49 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !787
  call void @varbuf_add_char(%struct.varbuf* %49, i32 10), !dbg !788
  br label %50, !dbg !788

; <label>:50:                                     ; preds = %28, %48, %36
  ret void, !dbg !789
}

; Function Attrs: nounwind uwtable
define void @w_multiarch(%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*) #0 !dbg !790 {
  %6 = alloca %struct.varbuf*, align 8
  %7 = alloca %struct.pkginfo*, align 8
  %8 = alloca %struct.pkgbin*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fieldinfo*, align 8
  %11 = alloca i32, align 4
  store %struct.varbuf* %0, %struct.varbuf** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %6, metadata !791, metadata !392), !dbg !792
  store %struct.pkginfo* %1, %struct.pkginfo** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %7, metadata !793, metadata !392), !dbg !794
  store %struct.pkgbin* %2, %struct.pkgbin** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %8, metadata !795, metadata !392), !dbg !796
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !797, metadata !392), !dbg !798
  store %struct.fieldinfo* %4, %struct.fieldinfo** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.fieldinfo** %10, metadata !799, metadata !392), !dbg !800
  call void @llvm.dbg.declare(metadata i32* %11, metadata !801, metadata !392), !dbg !802
  %12 = load %struct.pkgbin*, %struct.pkgbin** %8, align 8, !dbg !803
  %13 = ptrtoint %struct.pkgbin* %12 to i64, !dbg !804
  %14 = load %struct.fieldinfo*, %struct.fieldinfo** %10, align 8, !dbg !805
  %15 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %14, i32 0, i32 4, !dbg !806
  %16 = load i64, i64* %15, align 8, !dbg !806
  %17 = add i64 %13, %16, !dbg !807
  %18 = inttoptr i64 %17 to i32*, !dbg !808
  %19 = load i32, i32* %18, align 4, !dbg !809
  store i32 %19, i32* %11, align 4, !dbg !802
  %20 = load i32, i32* %9, align 4, !dbg !810
  %21 = and i32 %20, 1, !dbg !812
  %22 = icmp ne i32 %21, 0, !dbg !812
  br i1 %22, label %23, label %27, !dbg !813

; <label>:23:                                     ; preds = %5
  %24 = load i32, i32* %11, align 4, !dbg !814
  %25 = icmp ne i32 %24, 0, !dbg !814
  br i1 %25, label %27, label %26, !dbg !816

; <label>:26:                                     ; preds = %23
  br label %52, !dbg !817

; <label>:27:                                     ; preds = %23, %5
  %28 = load i32, i32* %9, align 4, !dbg !818
  %29 = and i32 %28, 1, !dbg !820
  %30 = icmp ne i32 %29, 0, !dbg !820
  br i1 %30, label %31, label %34, !dbg !821

; <label>:31:                                     ; preds = %27
  %32 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !822
  %33 = load %struct.fieldinfo*, %struct.fieldinfo** %10, align 8, !dbg !823
  call void @varbuf_add_fieldname(%struct.varbuf* %32, %struct.fieldinfo* %33), !dbg !824
  br label %34, !dbg !824

; <label>:34:                                     ; preds = %31, %27
  %35 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !825
  %36 = load i32, i32* %11, align 4, !dbg !826
  %37 = sext i32 %36 to i64, !dbg !827
  %38 = getelementptr inbounds [0 x %struct.namevalue], [0 x %struct.namevalue]* @multiarchinfos, i64 0, i64 %37, !dbg !827
  %39 = getelementptr inbounds %struct.namevalue, %struct.namevalue* %38, i32 0, i32 0, !dbg !828
  %40 = load i8*, i8** %39, align 8, !dbg !828
  %41 = load i32, i32* %11, align 4, !dbg !829
  %42 = sext i32 %41 to i64, !dbg !830
  %43 = getelementptr inbounds [0 x %struct.namevalue], [0 x %struct.namevalue]* @multiarchinfos, i64 0, i64 %42, !dbg !830
  %44 = getelementptr inbounds %struct.namevalue, %struct.namevalue* %43, i32 0, i32 0, !dbg !831
  %45 = load i8*, i8** %44, align 8, !dbg !831
  %46 = call i64 @strlen(i8* %45) #9, !dbg !832
  call void @varbuf_add_buf(%struct.varbuf* %35, i8* %40, i64 %46), !dbg !833
  %47 = load i32, i32* %9, align 4, !dbg !835
  %48 = and i32 %47, 1, !dbg !837
  %49 = icmp ne i32 %48, 0, !dbg !837
  br i1 %49, label %50, label %52, !dbg !838

; <label>:50:                                     ; preds = %34
  %51 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !839
  call void @varbuf_add_char(%struct.varbuf* %51, i32 10), !dbg !840
  br label %52, !dbg !840

; <label>:52:                                     ; preds = %26, %50, %34
  ret void, !dbg !841
}

; Function Attrs: nounwind uwtable
define void @w_architecture(%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*) #0 !dbg !842 {
  %6 = alloca %struct.varbuf*, align 8
  %7 = alloca %struct.pkginfo*, align 8
  %8 = alloca %struct.pkgbin*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fieldinfo*, align 8
  store %struct.varbuf* %0, %struct.varbuf** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %6, metadata !843, metadata !392), !dbg !844
  store %struct.pkginfo* %1, %struct.pkginfo** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %7, metadata !845, metadata !392), !dbg !846
  store %struct.pkgbin* %2, %struct.pkgbin** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %8, metadata !847, metadata !392), !dbg !848
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !849, metadata !392), !dbg !850
  store %struct.fieldinfo* %4, %struct.fieldinfo** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.fieldinfo** %10, metadata !851, metadata !392), !dbg !852
  %11 = load %struct.pkgbin*, %struct.pkgbin** %8, align 8, !dbg !853
  %12 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %11, i32 0, i32 3, !dbg !855
  %13 = load %struct.dpkg_arch*, %struct.dpkg_arch** %12, align 8, !dbg !855
  %14 = icmp ne %struct.dpkg_arch* %13, null, !dbg !853
  br i1 %14, label %16, label %15, !dbg !856

; <label>:15:                                     ; preds = %5
  br label %57, !dbg !857

; <label>:16:                                     ; preds = %5
  %17 = load %struct.pkgbin*, %struct.pkgbin** %8, align 8, !dbg !858
  %18 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %17, i32 0, i32 3, !dbg !860
  %19 = load %struct.dpkg_arch*, %struct.dpkg_arch** %18, align 8, !dbg !860
  %20 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %19, i32 0, i32 2, !dbg !861
  %21 = load i32, i32* %20, align 8, !dbg !861
  %22 = icmp eq i32 %21, 0, !dbg !862
  br i1 %22, label %23, label %24, !dbg !863

; <label>:23:                                     ; preds = %16
  br label %57, !dbg !864

; <label>:24:                                     ; preds = %16
  %25 = load %struct.pkgbin*, %struct.pkgbin** %8, align 8, !dbg !865
  %26 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %25, i32 0, i32 3, !dbg !867
  %27 = load %struct.dpkg_arch*, %struct.dpkg_arch** %26, align 8, !dbg !867
  %28 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %27, i32 0, i32 2, !dbg !868
  %29 = load i32, i32* %28, align 8, !dbg !868
  %30 = icmp eq i32 %29, 1, !dbg !869
  br i1 %30, label %31, label %32, !dbg !870

; <label>:31:                                     ; preds = %24
  br label %57, !dbg !871

; <label>:32:                                     ; preds = %24
  %33 = load i32, i32* %9, align 4, !dbg !872
  %34 = and i32 %33, 1, !dbg !874
  %35 = icmp ne i32 %34, 0, !dbg !874
  br i1 %35, label %36, label %39, !dbg !875

; <label>:36:                                     ; preds = %32
  %37 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !876
  %38 = load %struct.fieldinfo*, %struct.fieldinfo** %10, align 8, !dbg !877
  call void @varbuf_add_fieldname(%struct.varbuf* %37, %struct.fieldinfo* %38), !dbg !878
  br label %39, !dbg !878

; <label>:39:                                     ; preds = %36, %32
  %40 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !879
  %41 = load %struct.pkgbin*, %struct.pkgbin** %8, align 8, !dbg !880
  %42 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %41, i32 0, i32 3, !dbg !881
  %43 = load %struct.dpkg_arch*, %struct.dpkg_arch** %42, align 8, !dbg !881
  %44 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %43, i32 0, i32 1, !dbg !882
  %45 = load i8*, i8** %44, align 8, !dbg !882
  %46 = load %struct.pkgbin*, %struct.pkgbin** %8, align 8, !dbg !883
  %47 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %46, i32 0, i32 3, !dbg !884
  %48 = load %struct.dpkg_arch*, %struct.dpkg_arch** %47, align 8, !dbg !884
  %49 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %48, i32 0, i32 1, !dbg !885
  %50 = load i8*, i8** %49, align 8, !dbg !885
  %51 = call i64 @strlen(i8* %50) #9, !dbg !886
  call void @varbuf_add_buf(%struct.varbuf* %40, i8* %45, i64 %51), !dbg !887
  %52 = load i32, i32* %9, align 4, !dbg !889
  %53 = and i32 %52, 1, !dbg !891
  %54 = icmp ne i32 %53, 0, !dbg !891
  br i1 %54, label %55, label %57, !dbg !892

; <label>:55:                                     ; preds = %39
  %56 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !893
  call void @varbuf_add_char(%struct.varbuf* %56, i32 10), !dbg !894
  br label %57, !dbg !894

; <label>:57:                                     ; preds = %15, %23, %31, %55, %39
  ret void, !dbg !895
}

; Function Attrs: nounwind uwtable
define void @w_priority(%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*) #0 !dbg !896 {
  %6 = alloca %struct.varbuf*, align 8
  %7 = alloca %struct.pkginfo*, align 8
  %8 = alloca %struct.pkgbin*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fieldinfo*, align 8
  store %struct.varbuf* %0, %struct.varbuf** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %6, metadata !897, metadata !392), !dbg !898
  store %struct.pkginfo* %1, %struct.pkginfo** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %7, metadata !899, metadata !392), !dbg !900
  store %struct.pkgbin* %2, %struct.pkgbin** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %8, metadata !901, metadata !392), !dbg !902
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !903, metadata !392), !dbg !904
  store %struct.fieldinfo* %4, %struct.fieldinfo** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.fieldinfo** %10, metadata !905, metadata !392), !dbg !906
  %11 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !907
  %12 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %11, i32 0, i32 5, !dbg !909
  %13 = load i32, i32* %12, align 4, !dbg !909
  %14 = icmp eq i32 %13, 6, !dbg !910
  br i1 %14, label %15, label %16, !dbg !911

; <label>:15:                                     ; preds = %5
  br label %46, !dbg !912

; <label>:16:                                     ; preds = %5
  %17 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !913
  %18 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %17, i32 0, i32 5, !dbg !915
  %19 = load i32, i32* %18, align 4, !dbg !915
  %20 = icmp sgt i32 %19, 6, !dbg !916
  br i1 %20, label %21, label %28, !dbg !917

; <label>:21:                                     ; preds = %16
  %22 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !918
  %23 = load %struct.pkgbin*, %struct.pkgbin** %8, align 8, !dbg !919
  %24 = call i8* @pkgbin_name_const(%struct.pkginfo* %22, %struct.pkgbin* %23, i32 3), !dbg !920
  %25 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !921
  %26 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %25, i32 0, i32 5, !dbg !922
  %27 = load i32, i32* %26, align 4, !dbg !922
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 239, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.w_priority, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i32 0, i32 0), i8* %24, i32 %27) #8, !dbg !923
  unreachable, !dbg !925

; <label>:28:                                     ; preds = %16
  %29 = load i32, i32* %9, align 4, !dbg !926
  %30 = and i32 %29, 1, !dbg !928
  %31 = icmp ne i32 %30, 0, !dbg !928
  br i1 %31, label %32, label %34, !dbg !929

; <label>:32:                                     ; preds = %28
  %33 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !930
  call void @varbuf_add_buf(%struct.varbuf* %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i64 10), !dbg !931
  br label %34, !dbg !931

; <label>:34:                                     ; preds = %32, %28
  %35 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !932
  %36 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !933
  %37 = call i8* @pkg_priority_name(%struct.pkginfo* %36), !dbg !934
  %38 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !935
  %39 = call i8* @pkg_priority_name(%struct.pkginfo* %38), !dbg !936
  %40 = call i64 @strlen(i8* %39) #9, !dbg !938
  call void @varbuf_add_buf(%struct.varbuf* %35, i8* %37, i64 %40), !dbg !940
  %41 = load i32, i32* %9, align 4, !dbg !942
  %42 = and i32 %41, 1, !dbg !944
  %43 = icmp ne i32 %42, 0, !dbg !944
  br i1 %43, label %44, label %46, !dbg !945

; <label>:44:                                     ; preds = %34
  %45 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !946
  call void @varbuf_add_char(%struct.varbuf* %45, i32 10), !dbg !947
  br label %46, !dbg !947

; <label>:46:                                     ; preds = %15, %44, %34
  ret void, !dbg !948
}

declare i8* @pkgbin_name_const(%struct.pkginfo*, %struct.pkgbin*, i32) #3

declare i8* @pkg_priority_name(%struct.pkginfo*) #3

; Function Attrs: nounwind uwtable
define void @w_status(%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*) #0 !dbg !949 {
  %6 = alloca %struct.varbuf*, align 8
  %7 = alloca %struct.pkginfo*, align 8
  %8 = alloca %struct.pkgbin*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fieldinfo*, align 8
  store %struct.varbuf* %0, %struct.varbuf** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %6, metadata !950, metadata !392), !dbg !951
  store %struct.pkginfo* %1, %struct.pkginfo** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %7, metadata !952, metadata !392), !dbg !953
  store %struct.pkgbin* %2, %struct.pkgbin** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %8, metadata !954, metadata !392), !dbg !955
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !956, metadata !392), !dbg !957
  store %struct.fieldinfo* %4, %struct.fieldinfo** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.fieldinfo** %10, metadata !958, metadata !392), !dbg !959
  %11 = load %struct.pkgbin*, %struct.pkgbin** %8, align 8, !dbg !960
  %12 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !962
  %13 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %12, i32 0, i32 9, !dbg !963
  %14 = icmp ne %struct.pkgbin* %11, %13, !dbg !964
  br i1 %14, label %15, label %16, !dbg !965

; <label>:15:                                     ; preds = %5
  br label %159, !dbg !966

; <label>:16:                                     ; preds = %5
  %17 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !967
  %18 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %17, i32 0, i32 2, !dbg !969
  %19 = load i32, i32* %18, align 8, !dbg !969
  %20 = icmp ugt i32 %19, 4, !dbg !970
  br i1 %20, label %21, label %28, !dbg !971

; <label>:21:                                     ; preds = %16
  %22 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !972
  %23 = load %struct.pkgbin*, %struct.pkgbin** %8, align 8, !dbg !973
  %24 = call i8* @pkgbin_name_const(%struct.pkginfo* %22, %struct.pkgbin* %23, i32 3), !dbg !974
  %25 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !975
  %26 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %25, i32 0, i32 2, !dbg !976
  %27 = load i32, i32* %26, align 8, !dbg !976
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 258, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.w_status, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i32 0, i32 0), i8* %24, i32 %27) #8, !dbg !977
  unreachable, !dbg !979

; <label>:28:                                     ; preds = %16
  %29 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !980
  %30 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %29, i32 0, i32 3, !dbg !982
  %31 = load i32, i32* %30, align 4, !dbg !982
  %32 = icmp ugt i32 %31, 1, !dbg !983
  br i1 %32, label %33, label %40, !dbg !984

; <label>:33:                                     ; preds = %28
  %34 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !985
  %35 = load %struct.pkgbin*, %struct.pkgbin** %8, align 8, !dbg !986
  %36 = call i8* @pkgbin_name_const(%struct.pkginfo* %34, %struct.pkgbin* %35, i32 3), !dbg !987
  %37 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !988
  %38 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %37, i32 0, i32 3, !dbg !989
  %39 = load i32, i32* %38, align 4, !dbg !989
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 261, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.w_status, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i32 0, i32 0), i8* %36, i32 %39) #8, !dbg !990
  unreachable, !dbg !992

; <label>:40:                                     ; preds = %28
  %41 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !993
  %42 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %41, i32 0, i32 4, !dbg !994
  %43 = load i32, i32* %42, align 8, !dbg !994
  switch i32 %43, label %123 [
    i32 0, label %44
    i32 1, label %44
    i32 2, label %62
    i32 3, label %62
    i32 4, label %62
    i32 5, label %74
    i32 6, label %87
    i32 7, label %105
  ], !dbg !995

; <label>:44:                                     ; preds = %40, %40
  %45 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !996
  %46 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %45, i32 0, i32 15, !dbg !999
  %47 = load %struct.trigpend*, %struct.trigpend** %46, align 8, !dbg !999
  %48 = icmp ne %struct.trigpend* %47, null, !dbg !996
  br i1 %48, label %55, label %49, !dbg !1000

; <label>:49:                                     ; preds = %44
  %50 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1001
  %51 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %50, i32 0, i32 13, !dbg !1003
  %52 = getelementptr inbounds %struct.anon, %struct.anon* %51, i32 0, i32 0, !dbg !1004
  %53 = load %struct.trigaw*, %struct.trigaw** %52, align 8, !dbg !1004
  %54 = icmp ne %struct.trigaw* %53, null, !dbg !1001
  br i1 %54, label %55, label %61, !dbg !1005

; <label>:55:                                     ; preds = %49, %44
  %56 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1006
  %57 = load %struct.pkgbin*, %struct.pkgbin** %8, align 8, !dbg !1007
  %58 = call i8* @pkgbin_name_const(%struct.pkginfo* %56, %struct.pkgbin* %57, i32 3), !dbg !1008
  %59 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1009
  %60 = call i8* @pkg_status_name(%struct.pkginfo* %59), !dbg !1010
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 268, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.w_status, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.12, i32 0, i32 0), i8* %58, i8* %60) #8, !dbg !1011
  unreachable, !dbg !1013

; <label>:61:                                     ; preds = %49
  br label %127, !dbg !1014

; <label>:62:                                     ; preds = %40, %40, %40
  %63 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1015
  %64 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %63, i32 0, i32 15, !dbg !1017
  %65 = load %struct.trigpend*, %struct.trigpend** %64, align 8, !dbg !1017
  %66 = icmp ne %struct.trigpend* %65, null, !dbg !1015
  br i1 %66, label %67, label %73, !dbg !1018

; <label>:67:                                     ; preds = %62
  %68 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1019
  %69 = load %struct.pkgbin*, %struct.pkgbin** %8, align 8, !dbg !1020
  %70 = call i8* @pkgbin_name_const(%struct.pkginfo* %68, %struct.pkgbin* %69, i32 3), !dbg !1021
  %71 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1022
  %72 = call i8* @pkg_status_name(%struct.pkginfo* %71), !dbg !1023
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 275, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.w_status, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i32 0, i32 0), i8* %70, i8* %72) #8, !dbg !1025
  unreachable, !dbg !1027

; <label>:73:                                     ; preds = %62
  br label %127, !dbg !1028

; <label>:74:                                     ; preds = %40
  %75 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1029
  %76 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %75, i32 0, i32 13, !dbg !1031
  %77 = getelementptr inbounds %struct.anon, %struct.anon* %76, i32 0, i32 0, !dbg !1032
  %78 = load %struct.trigaw*, %struct.trigaw** %77, align 8, !dbg !1032
  %79 = icmp eq %struct.trigaw* %78, null, !dbg !1033
  br i1 %79, label %80, label %86, !dbg !1034

; <label>:80:                                     ; preds = %74
  %81 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1035
  %82 = load %struct.pkgbin*, %struct.pkgbin** %8, align 8, !dbg !1036
  %83 = call i8* @pkgbin_name_const(%struct.pkginfo* %81, %struct.pkgbin* %82, i32 3), !dbg !1037
  %84 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1038
  %85 = call i8* @pkg_status_name(%struct.pkginfo* %84), !dbg !1039
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 280, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.w_status, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14, i32 0, i32 0), i8* %83, i8* %85) #8, !dbg !1041
  unreachable, !dbg !1043

; <label>:86:                                     ; preds = %74
  br label %127, !dbg !1044

; <label>:87:                                     ; preds = %40
  %88 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1045
  %89 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %88, i32 0, i32 15, !dbg !1047
  %90 = load %struct.trigpend*, %struct.trigpend** %89, align 8, !dbg !1047
  %91 = icmp eq %struct.trigpend* %90, null, !dbg !1048
  br i1 %91, label %98, label %92, !dbg !1049

; <label>:92:                                     ; preds = %87
  %93 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1050
  %94 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %93, i32 0, i32 13, !dbg !1052
  %95 = getelementptr inbounds %struct.anon, %struct.anon* %94, i32 0, i32 0, !dbg !1053
  %96 = load %struct.trigaw*, %struct.trigaw** %95, align 8, !dbg !1053
  %97 = icmp ne %struct.trigaw* %96, null, !dbg !1050
  br i1 %97, label %98, label %104, !dbg !1054

; <label>:98:                                     ; preds = %92, %87
  %99 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1055
  %100 = load %struct.pkgbin*, %struct.pkgbin** %8, align 8, !dbg !1056
  %101 = call i8* @pkgbin_name_const(%struct.pkginfo* %99, %struct.pkgbin* %100, i32 3), !dbg !1057
  %102 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1058
  %103 = call i8* @pkg_status_name(%struct.pkginfo* %102), !dbg !1059
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 285, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.w_status, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.15, i32 0, i32 0), i8* %101, i8* %103) #8, !dbg !1060
  unreachable, !dbg !1062

; <label>:104:                                    ; preds = %92
  br label %127, !dbg !1063

; <label>:105:                                    ; preds = %40
  %106 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1064
  %107 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %106, i32 0, i32 15, !dbg !1066
  %108 = load %struct.trigpend*, %struct.trigpend** %107, align 8, !dbg !1066
  %109 = icmp ne %struct.trigpend* %108, null, !dbg !1064
  br i1 %109, label %116, label %110, !dbg !1067

; <label>:110:                                    ; preds = %105
  %111 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1068
  %112 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %111, i32 0, i32 13, !dbg !1070
  %113 = getelementptr inbounds %struct.anon, %struct.anon* %112, i32 0, i32 0, !dbg !1071
  %114 = load %struct.trigaw*, %struct.trigaw** %113, align 8, !dbg !1071
  %115 = icmp ne %struct.trigaw* %114, null, !dbg !1068
  br i1 %115, label %116, label %122, !dbg !1072

; <label>:116:                                    ; preds = %110, %105
  %117 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1073
  %118 = load %struct.pkgbin*, %struct.pkgbin** %8, align 8, !dbg !1074
  %119 = call i8* @pkgbin_name_const(%struct.pkginfo* %117, %struct.pkgbin* %118, i32 3), !dbg !1075
  %120 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1076
  %121 = call i8* @pkg_status_name(%struct.pkginfo* %120), !dbg !1077
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 290, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.w_status, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.12, i32 0, i32 0), i8* %119, i8* %121) #8, !dbg !1078
  unreachable, !dbg !1080

; <label>:122:                                    ; preds = %110
  br label %127, !dbg !1081

; <label>:123:                                    ; preds = %40
  %124 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1082
  %125 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %124, i32 0, i32 4, !dbg !1083
  %126 = load i32, i32* %125, align 8, !dbg !1083
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 293, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.w_status, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i32 0, i32 0), i32 %126) #8, !dbg !1084
  unreachable, !dbg !1084

; <label>:127:                                    ; preds = %122, %104, %86, %73, %61
  %128 = load i32, i32* %9, align 4, !dbg !1085
  %129 = and i32 %128, 1, !dbg !1087
  %130 = icmp ne i32 %129, 0, !dbg !1087
  br i1 %130, label %131, label %133, !dbg !1088

; <label>:131:                                    ; preds = %127
  %132 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1089
  call void @varbuf_add_buf(%struct.varbuf* %132, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i64 8), !dbg !1090
  br label %133, !dbg !1090

; <label>:133:                                    ; preds = %131, %127
  %134 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1091
  %135 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1092
  %136 = call i8* @pkg_want_name(%struct.pkginfo* %135), !dbg !1093
  %137 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1094
  %138 = call i8* @pkg_want_name(%struct.pkginfo* %137), !dbg !1095
  %139 = call i64 @strlen(i8* %138) #9, !dbg !1097
  call void @varbuf_add_buf(%struct.varbuf* %134, i8* %136, i64 %139), !dbg !1099
  %140 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1101
  call void @varbuf_add_char(%struct.varbuf* %140, i32 32), !dbg !1102
  %141 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1103
  %142 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1104
  %143 = call i8* @pkg_eflag_name(%struct.pkginfo* %142), !dbg !1105
  %144 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1106
  %145 = call i8* @pkg_eflag_name(%struct.pkginfo* %144), !dbg !1107
  %146 = call i64 @strlen(i8* %145) #9, !dbg !1108
  call void @varbuf_add_buf(%struct.varbuf* %141, i8* %143, i64 %146), !dbg !1109
  %147 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1110
  call void @varbuf_add_char(%struct.varbuf* %147, i32 32), !dbg !1111
  %148 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1112
  %149 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1113
  %150 = call i8* @pkg_status_name(%struct.pkginfo* %149), !dbg !1114
  %151 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1115
  %152 = call i8* @pkg_status_name(%struct.pkginfo* %151), !dbg !1116
  %153 = call i64 @strlen(i8* %152) #9, !dbg !1117
  call void @varbuf_add_buf(%struct.varbuf* %148, i8* %150, i64 %153), !dbg !1118
  %154 = load i32, i32* %9, align 4, !dbg !1119
  %155 = and i32 %154, 1, !dbg !1121
  %156 = icmp ne i32 %155, 0, !dbg !1121
  br i1 %156, label %157, label %159, !dbg !1122

; <label>:157:                                    ; preds = %133
  %158 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1123
  call void @varbuf_add_char(%struct.varbuf* %158, i32 10), !dbg !1124
  br label %159, !dbg !1124

; <label>:159:                                    ; preds = %15, %157, %133
  ret void, !dbg !1125
}

declare i8* @pkg_status_name(%struct.pkginfo*) #3

declare i8* @pkg_want_name(%struct.pkginfo*) #3

declare i8* @pkg_eflag_name(%struct.pkginfo*) #3

; Function Attrs: nounwind uwtable
define void @varbufdependency(%struct.varbuf*, %struct.dependency*) #0 !dbg !1126 {
  %3 = alloca %struct.varbuf*, align 8
  %4 = alloca %struct.dependency*, align 8
  %5 = alloca %struct.deppossi*, align 8
  %6 = alloca i8*, align 8
  store %struct.varbuf* %0, %struct.varbuf** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %3, metadata !1129, metadata !392), !dbg !1130
  store %struct.dependency* %1, %struct.dependency** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.dependency** %4, metadata !1131, metadata !392), !dbg !1132
  call void @llvm.dbg.declare(metadata %struct.deppossi** %5, metadata !1133, metadata !392), !dbg !1134
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1135, metadata !392), !dbg !1136
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.18, i32 0, i32 0), i8** %6, align 8, !dbg !1137
  %7 = load %struct.dependency*, %struct.dependency** %4, align 8, !dbg !1138
  %8 = getelementptr inbounds %struct.dependency, %struct.dependency* %7, i32 0, i32 2, !dbg !1140
  %9 = load %struct.deppossi*, %struct.deppossi** %8, align 8, !dbg !1140
  store %struct.deppossi* %9, %struct.deppossi** %5, align 8, !dbg !1141
  br label %10, !dbg !1142

; <label>:10:                                     ; preds = %77, %2
  %11 = load %struct.deppossi*, %struct.deppossi** %5, align 8, !dbg !1143
  %12 = icmp ne %struct.deppossi* %11, null, !dbg !1146
  br i1 %12, label %13, label %81, !dbg !1146

; <label>:13:                                     ; preds = %10
  %14 = load %struct.deppossi*, %struct.deppossi** %5, align 8, !dbg !1147
  %15 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %14, i32 0, i32 0, !dbg !1150
  %16 = load %struct.dependency*, %struct.dependency** %15, align 8, !dbg !1150
  %17 = load %struct.dependency*, %struct.dependency** %4, align 8, !dbg !1151
  %18 = icmp ne %struct.dependency* %16, %17, !dbg !1152
  br i1 %18, label %19, label %20, !dbg !1153

; <label>:19:                                     ; preds = %13
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 314, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.varbufdependency, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.19, i32 0, i32 0)) #8, !dbg !1154
  unreachable, !dbg !1154

; <label>:20:                                     ; preds = %13
  %21 = load %struct.varbuf*, %struct.varbuf** %3, align 8, !dbg !1155
  %22 = load i8*, i8** %6, align 8, !dbg !1156
  %23 = load i8*, i8** %6, align 8, !dbg !1157
  %24 = call i64 @strlen(i8* %23) #9, !dbg !1158
  call void @varbuf_add_buf(%struct.varbuf* %21, i8* %22, i64 %24), !dbg !1159
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8** %6, align 8, !dbg !1161
  %25 = load %struct.varbuf*, %struct.varbuf** %3, align 8, !dbg !1162
  %26 = load %struct.deppossi*, %struct.deppossi** %5, align 8, !dbg !1163
  %27 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %26, i32 0, i32 1, !dbg !1164
  %28 = load %struct.pkgset*, %struct.pkgset** %27, align 8, !dbg !1164
  %29 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %28, i32 0, i32 1, !dbg !1165
  %30 = load i8*, i8** %29, align 8, !dbg !1165
  %31 = load %struct.deppossi*, %struct.deppossi** %5, align 8, !dbg !1166
  %32 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %31, i32 0, i32 1, !dbg !1167
  %33 = load %struct.pkgset*, %struct.pkgset** %32, align 8, !dbg !1167
  %34 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %33, i32 0, i32 1, !dbg !1168
  %35 = load i8*, i8** %34, align 8, !dbg !1168
  %36 = call i64 @strlen(i8* %35) #9, !dbg !1169
  call void @varbuf_add_buf(%struct.varbuf* %25, i8* %30, i64 %36), !dbg !1170
  %37 = load %struct.deppossi*, %struct.deppossi** %5, align 8, !dbg !1171
  %38 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %37, i32 0, i32 8, !dbg !1173
  %39 = load i8, i8* %38, align 4, !dbg !1173
  %40 = trunc i8 %39 to i1, !dbg !1173
  br i1 %40, label %46, label %41, !dbg !1174

; <label>:41:                                     ; preds = %20
  %42 = load %struct.varbuf*, %struct.varbuf** %3, align 8, !dbg !1175
  %43 = load %struct.deppossi*, %struct.deppossi** %5, align 8, !dbg !1176
  %44 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %43, i32 0, i32 5, !dbg !1177
  %45 = load %struct.dpkg_arch*, %struct.dpkg_arch** %44, align 8, !dbg !1177
  call void @varbuf_add_archqual(%struct.varbuf* %42, %struct.dpkg_arch* %45), !dbg !1178
  br label %46, !dbg !1178

; <label>:46:                                     ; preds = %41, %20
  %47 = load %struct.deppossi*, %struct.deppossi** %5, align 8, !dbg !1179
  %48 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %47, i32 0, i32 7, !dbg !1181
  %49 = load i32, i32* %48, align 8, !dbg !1181
  %50 = icmp ne i32 %49, 0, !dbg !1182
  br i1 %50, label %51, label %76, !dbg !1183

; <label>:51:                                     ; preds = %46
  %52 = load %struct.varbuf*, %struct.varbuf** %3, align 8, !dbg !1184
  call void @varbuf_add_buf(%struct.varbuf* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i64 2), !dbg !1186
  %53 = load %struct.deppossi*, %struct.deppossi** %5, align 8, !dbg !1187
  %54 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %53, i32 0, i32 7, !dbg !1188
  %55 = load i32, i32* %54, align 8, !dbg !1188
  switch i32 %55, label %66 [
    i32 1, label %56
    i32 5, label %58
    i32 3, label %60
    i32 4, label %62
    i32 2, label %64
  ], !dbg !1189

; <label>:56:                                     ; preds = %51
  %57 = load %struct.varbuf*, %struct.varbuf** %3, align 8, !dbg !1190
  call void @varbuf_add_char(%struct.varbuf* %57, i32 61), !dbg !1192
  br label %70, !dbg !1193

; <label>:58:                                     ; preds = %51
  %59 = load %struct.varbuf*, %struct.varbuf** %3, align 8, !dbg !1194
  call void @varbuf_add_buf(%struct.varbuf* %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0), i64 2), !dbg !1195
  br label %70, !dbg !1196

; <label>:60:                                     ; preds = %51
  %61 = load %struct.varbuf*, %struct.varbuf** %3, align 8, !dbg !1197
  call void @varbuf_add_buf(%struct.varbuf* %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i64 2), !dbg !1198
  br label %70, !dbg !1199

; <label>:62:                                     ; preds = %51
  %63 = load %struct.varbuf*, %struct.varbuf** %3, align 8, !dbg !1200
  call void @varbuf_add_buf(%struct.varbuf* %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), i64 2), !dbg !1201
  br label %70, !dbg !1202

; <label>:64:                                     ; preds = %51
  %65 = load %struct.varbuf*, %struct.varbuf** %3, align 8, !dbg !1203
  call void @varbuf_add_buf(%struct.varbuf* %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i64 2), !dbg !1204
  br label %70, !dbg !1205

; <label>:66:                                     ; preds = %51
  %67 = load %struct.deppossi*, %struct.deppossi** %5, align 8, !dbg !1206
  %68 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %67, i32 0, i32 7, !dbg !1207
  %69 = load i32, i32* %68, align 8, !dbg !1207
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 340, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.varbufdependency, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i32 0, i32 0), i32 %69) #8, !dbg !1208
  unreachable, !dbg !1208

; <label>:70:                                     ; preds = %64, %62, %60, %58, %56
  %71 = load %struct.varbuf*, %struct.varbuf** %3, align 8, !dbg !1209
  call void @varbuf_add_char(%struct.varbuf* %71, i32 32), !dbg !1210
  %72 = load %struct.varbuf*, %struct.varbuf** %3, align 8, !dbg !1211
  %73 = load %struct.deppossi*, %struct.deppossi** %5, align 8, !dbg !1212
  %74 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %73, i32 0, i32 6, !dbg !1213
  call void @varbufversion(%struct.varbuf* %72, %struct.dpkg_version* %74, i32 1), !dbg !1214
  %75 = load %struct.varbuf*, %struct.varbuf** %3, align 8, !dbg !1215
  call void @varbuf_add_char(%struct.varbuf* %75, i32 41), !dbg !1216
  br label %76, !dbg !1217

; <label>:76:                                     ; preds = %70, %46
  br label %77, !dbg !1218

; <label>:77:                                     ; preds = %76
  %78 = load %struct.deppossi*, %struct.deppossi** %5, align 8, !dbg !1219
  %79 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %78, i32 0, i32 2, !dbg !1221
  %80 = load %struct.deppossi*, %struct.deppossi** %79, align 8, !dbg !1221
  store %struct.deppossi* %80, %struct.deppossi** %5, align 8, !dbg !1222
  br label %10, !dbg !1223, !llvm.loop !1224

; <label>:81:                                     ; preds = %10
  ret void, !dbg !1226
}

declare void @varbuf_add_archqual(%struct.varbuf*, %struct.dpkg_arch*) #3

; Function Attrs: nounwind uwtable
define void @w_dependency(%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*) #0 !dbg !1227 {
  %6 = alloca %struct.varbuf*, align 8
  %7 = alloca %struct.pkginfo*, align 8
  %8 = alloca %struct.pkgbin*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fieldinfo*, align 8
  %11 = alloca %struct.dependency*, align 8
  %12 = alloca i8, align 1
  store %struct.varbuf* %0, %struct.varbuf** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %6, metadata !1228, metadata !392), !dbg !1229
  store %struct.pkginfo* %1, %struct.pkginfo** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %7, metadata !1230, metadata !392), !dbg !1231
  store %struct.pkgbin* %2, %struct.pkgbin** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %8, metadata !1232, metadata !392), !dbg !1233
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1234, metadata !392), !dbg !1235
  store %struct.fieldinfo* %4, %struct.fieldinfo** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.fieldinfo** %10, metadata !1236, metadata !392), !dbg !1237
  call void @llvm.dbg.declare(metadata %struct.dependency** %11, metadata !1238, metadata !392), !dbg !1239
  call void @llvm.dbg.declare(metadata i8* %12, metadata !1240, metadata !392), !dbg !1241
  store i8 0, i8* %12, align 1, !dbg !1241
  %13 = load %struct.pkgbin*, %struct.pkgbin** %8, align 8, !dbg !1242
  %14 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %13, i32 0, i32 0, !dbg !1244
  %15 = load %struct.dependency*, %struct.dependency** %14, align 8, !dbg !1244
  store %struct.dependency* %15, %struct.dependency** %11, align 8, !dbg !1245
  br label %16, !dbg !1246

; <label>:16:                                     ; preds = %55, %5
  %17 = load %struct.dependency*, %struct.dependency** %11, align 8, !dbg !1247
  %18 = icmp ne %struct.dependency* %17, null, !dbg !1250
  br i1 %18, label %19, label %59, !dbg !1250

; <label>:19:                                     ; preds = %16
  %20 = load %struct.dependency*, %struct.dependency** %11, align 8, !dbg !1251
  %21 = getelementptr inbounds %struct.dependency, %struct.dependency* %20, i32 0, i32 3, !dbg !1254
  %22 = load i32, i32* %21, align 8, !dbg !1254
  %23 = zext i32 %22 to i64, !dbg !1251
  %24 = load %struct.fieldinfo*, %struct.fieldinfo** %10, align 8, !dbg !1255
  %25 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %24, i32 0, i32 4, !dbg !1256
  %26 = load i64, i64* %25, align 8, !dbg !1256
  %27 = icmp ne i64 %23, %26, !dbg !1257
  br i1 %27, label %28, label %29, !dbg !1258

; <label>:28:                                     ; preds = %19
  br label %55, !dbg !1259

; <label>:29:                                     ; preds = %19
  %30 = load %struct.dependency*, %struct.dependency** %11, align 8, !dbg !1261
  %31 = getelementptr inbounds %struct.dependency, %struct.dependency* %30, i32 0, i32 0, !dbg !1263
  %32 = load %struct.pkginfo*, %struct.pkginfo** %31, align 8, !dbg !1263
  %33 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1264
  %34 = icmp ne %struct.pkginfo* %32, %33, !dbg !1265
  br i1 %34, label %35, label %39, !dbg !1266

; <label>:35:                                     ; preds = %29
  %36 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1267
  %37 = load %struct.pkgbin*, %struct.pkgbin** %8, align 8, !dbg !1268
  %38 = call i8* @pkgbin_name_const(%struct.pkginfo* %36, %struct.pkgbin* %37, i32 3), !dbg !1269
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 362, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.w_dependency, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.27, i32 0, i32 0), i8* %38) #8, !dbg !1270
  unreachable, !dbg !1272

; <label>:39:                                     ; preds = %29
  %40 = load i8, i8* %12, align 1, !dbg !1273
  %41 = trunc i8 %40 to i1, !dbg !1273
  br i1 %41, label %42, label %44, !dbg !1275

; <label>:42:                                     ; preds = %39
  %43 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1276
  call void @varbuf_add_buf(%struct.varbuf* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), i64 2), !dbg !1278
  br label %52, !dbg !1279

; <label>:44:                                     ; preds = %39
  %45 = load i32, i32* %9, align 4, !dbg !1280
  %46 = and i32 %45, 1, !dbg !1283
  %47 = icmp ne i32 %46, 0, !dbg !1283
  br i1 %47, label %48, label %51, !dbg !1284

; <label>:48:                                     ; preds = %44
  %49 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1285
  %50 = load %struct.fieldinfo*, %struct.fieldinfo** %10, align 8, !dbg !1286
  call void @varbuf_add_fieldname(%struct.varbuf* %49, %struct.fieldinfo* %50), !dbg !1287
  br label %51, !dbg !1287

; <label>:51:                                     ; preds = %48, %44
  store i8 1, i8* %12, align 1, !dbg !1288
  br label %52

; <label>:52:                                     ; preds = %51, %42
  %53 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1289
  %54 = load %struct.dependency*, %struct.dependency** %11, align 8, !dbg !1290
  call void @varbufdependency(%struct.varbuf* %53, %struct.dependency* %54), !dbg !1291
  br label %55, !dbg !1292

; <label>:55:                                     ; preds = %52, %28
  %56 = load %struct.dependency*, %struct.dependency** %11, align 8, !dbg !1293
  %57 = getelementptr inbounds %struct.dependency, %struct.dependency* %56, i32 0, i32 1, !dbg !1295
  %58 = load %struct.dependency*, %struct.dependency** %57, align 8, !dbg !1295
  store %struct.dependency* %58, %struct.dependency** %11, align 8, !dbg !1296
  br label %16, !dbg !1297, !llvm.loop !1298

; <label>:59:                                     ; preds = %16
  %60 = load i32, i32* %9, align 4, !dbg !1300
  %61 = and i32 %60, 1, !dbg !1302
  %62 = icmp ne i32 %61, 0, !dbg !1302
  br i1 %62, label %63, label %68, !dbg !1303

; <label>:63:                                     ; preds = %59
  %64 = load i8, i8* %12, align 1, !dbg !1304
  %65 = trunc i8 %64 to i1, !dbg !1304
  br i1 %65, label %66, label %68, !dbg !1306

; <label>:66:                                     ; preds = %63
  %67 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1307
  call void @varbuf_add_char(%struct.varbuf* %67, i32 10), !dbg !1308
  br label %68, !dbg !1308

; <label>:68:                                     ; preds = %66, %63, %59
  ret void, !dbg !1309
}

; Function Attrs: nounwind uwtable
define void @w_conffiles(%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*) #0 !dbg !1310 {
  %6 = alloca %struct.varbuf*, align 8
  %7 = alloca %struct.pkginfo*, align 8
  %8 = alloca %struct.pkgbin*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fieldinfo*, align 8
  %11 = alloca %struct.conffile*, align 8
  store %struct.varbuf* %0, %struct.varbuf** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %6, metadata !1311, metadata !392), !dbg !1312
  store %struct.pkginfo* %1, %struct.pkginfo** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %7, metadata !1313, metadata !392), !dbg !1314
  store %struct.pkgbin* %2, %struct.pkgbin** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %8, metadata !1315, metadata !392), !dbg !1316
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1317, metadata !392), !dbg !1318
  store %struct.fieldinfo* %4, %struct.fieldinfo** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.fieldinfo** %10, metadata !1319, metadata !392), !dbg !1320
  call void @llvm.dbg.declare(metadata %struct.conffile** %11, metadata !1321, metadata !392), !dbg !1322
  %12 = load %struct.pkgbin*, %struct.pkgbin** %8, align 8, !dbg !1323
  %13 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %12, i32 0, i32 12, !dbg !1325
  %14 = load %struct.conffile*, %struct.conffile** %13, align 8, !dbg !1325
  %15 = icmp ne %struct.conffile* %14, null, !dbg !1323
  br i1 %15, label %16, label %21, !dbg !1326

; <label>:16:                                     ; preds = %5
  %17 = load %struct.pkgbin*, %struct.pkgbin** %8, align 8, !dbg !1327
  %18 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1329
  %19 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %18, i32 0, i32 10, !dbg !1330
  %20 = icmp eq %struct.pkgbin* %17, %19, !dbg !1331
  br i1 %20, label %21, label %22, !dbg !1332

; <label>:21:                                     ; preds = %16, %5
  br label %79, !dbg !1333

; <label>:22:                                     ; preds = %16
  %23 = load i32, i32* %9, align 4, !dbg !1334
  %24 = and i32 %23, 1, !dbg !1336
  %25 = icmp ne i32 %24, 0, !dbg !1336
  br i1 %25, label %26, label %28, !dbg !1337

; <label>:26:                                     ; preds = %22
  %27 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1338
  call void @varbuf_add_buf(%struct.varbuf* %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0), i64 11), !dbg !1339
  br label %28, !dbg !1339

; <label>:28:                                     ; preds = %26, %22
  %29 = load %struct.pkgbin*, %struct.pkgbin** %8, align 8, !dbg !1340
  %30 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %29, i32 0, i32 12, !dbg !1342
  %31 = load %struct.conffile*, %struct.conffile** %30, align 8, !dbg !1342
  store %struct.conffile* %31, %struct.conffile** %11, align 8, !dbg !1343
  br label %32, !dbg !1344

; <label>:32:                                     ; preds = %69, %28
  %33 = load %struct.conffile*, %struct.conffile** %11, align 8, !dbg !1345
  %34 = icmp ne %struct.conffile* %33, null, !dbg !1348
  br i1 %34, label %35, label %73, !dbg !1348

; <label>:35:                                     ; preds = %32
  %36 = load %struct.conffile*, %struct.conffile** %11, align 8, !dbg !1349
  %37 = load %struct.pkgbin*, %struct.pkgbin** %8, align 8, !dbg !1352
  %38 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %37, i32 0, i32 12, !dbg !1353
  %39 = load %struct.conffile*, %struct.conffile** %38, align 8, !dbg !1353
  %40 = icmp ne %struct.conffile* %36, %39, !dbg !1354
  br i1 %40, label %41, label %43, !dbg !1355

; <label>:41:                                     ; preds = %35
  %42 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1356
  call void @varbuf_add_char(%struct.varbuf* %42, i32 10), !dbg !1357
  br label %43, !dbg !1357

; <label>:43:                                     ; preds = %41, %35
  %44 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1358
  call void @varbuf_add_char(%struct.varbuf* %44, i32 32), !dbg !1359
  %45 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1360
  %46 = load %struct.conffile*, %struct.conffile** %11, align 8, !dbg !1361
  %47 = getelementptr inbounds %struct.conffile, %struct.conffile* %46, i32 0, i32 1, !dbg !1362
  %48 = load i8*, i8** %47, align 8, !dbg !1362
  %49 = load %struct.conffile*, %struct.conffile** %11, align 8, !dbg !1363
  %50 = getelementptr inbounds %struct.conffile, %struct.conffile* %49, i32 0, i32 1, !dbg !1364
  %51 = load i8*, i8** %50, align 8, !dbg !1364
  %52 = call i64 @strlen(i8* %51) #9, !dbg !1365
  call void @varbuf_add_buf(%struct.varbuf* %45, i8* %48, i64 %52), !dbg !1366
  %53 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1368
  call void @varbuf_add_char(%struct.varbuf* %53, i32 32), !dbg !1369
  %54 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1370
  %55 = load %struct.conffile*, %struct.conffile** %11, align 8, !dbg !1371
  %56 = getelementptr inbounds %struct.conffile, %struct.conffile* %55, i32 0, i32 2, !dbg !1372
  %57 = load i8*, i8** %56, align 8, !dbg !1372
  %58 = load %struct.conffile*, %struct.conffile** %11, align 8, !dbg !1373
  %59 = getelementptr inbounds %struct.conffile, %struct.conffile* %58, i32 0, i32 2, !dbg !1374
  %60 = load i8*, i8** %59, align 8, !dbg !1374
  %61 = call i64 @strlen(i8* %60) #9, !dbg !1375
  call void @varbuf_add_buf(%struct.varbuf* %54, i8* %57, i64 %61), !dbg !1376
  %62 = load %struct.conffile*, %struct.conffile** %11, align 8, !dbg !1377
  %63 = getelementptr inbounds %struct.conffile, %struct.conffile* %62, i32 0, i32 3, !dbg !1379
  %64 = load i8, i8* %63, align 8, !dbg !1379
  %65 = trunc i8 %64 to i1, !dbg !1379
  br i1 %65, label %66, label %68, !dbg !1380

; <label>:66:                                     ; preds = %43
  %67 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1381
  call void @varbuf_add_buf(%struct.varbuf* %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i64 9), !dbg !1382
  br label %68, !dbg !1382

; <label>:68:                                     ; preds = %66, %43
  br label %69, !dbg !1383

; <label>:69:                                     ; preds = %68
  %70 = load %struct.conffile*, %struct.conffile** %11, align 8, !dbg !1384
  %71 = getelementptr inbounds %struct.conffile, %struct.conffile* %70, i32 0, i32 0, !dbg !1386
  %72 = load %struct.conffile*, %struct.conffile** %71, align 8, !dbg !1386
  store %struct.conffile* %72, %struct.conffile** %11, align 8, !dbg !1387
  br label %32, !dbg !1388, !llvm.loop !1389

; <label>:73:                                     ; preds = %32
  %74 = load i32, i32* %9, align 4, !dbg !1391
  %75 = and i32 %74, 1, !dbg !1393
  %76 = icmp ne i32 %75, 0, !dbg !1393
  br i1 %76, label %77, label %79, !dbg !1394

; <label>:77:                                     ; preds = %73
  %78 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1395
  call void @varbuf_add_char(%struct.varbuf* %78, i32 10), !dbg !1396
  br label %79, !dbg !1396

; <label>:79:                                     ; preds = %21, %77, %73
  ret void, !dbg !1397
}

; Function Attrs: nounwind uwtable
define void @w_trigpend(%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*) #0 !dbg !1398 {
  %6 = alloca %struct.varbuf*, align 8
  %7 = alloca %struct.pkginfo*, align 8
  %8 = alloca %struct.pkgbin*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fieldinfo*, align 8
  %11 = alloca %struct.trigpend*, align 8
  store %struct.varbuf* %0, %struct.varbuf** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %6, metadata !1399, metadata !392), !dbg !1400
  store %struct.pkginfo* %1, %struct.pkginfo** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %7, metadata !1401, metadata !392), !dbg !1402
  store %struct.pkgbin* %2, %struct.pkgbin** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %8, metadata !1403, metadata !392), !dbg !1404
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1405, metadata !392), !dbg !1406
  store %struct.fieldinfo* %4, %struct.fieldinfo** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.fieldinfo** %10, metadata !1407, metadata !392), !dbg !1408
  call void @llvm.dbg.declare(metadata %struct.trigpend** %11, metadata !1409, metadata !392), !dbg !1410
  %12 = load %struct.pkgbin*, %struct.pkgbin** %8, align 8, !dbg !1411
  %13 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1413
  %14 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %13, i32 0, i32 10, !dbg !1414
  %15 = icmp eq %struct.pkgbin* %12, %14, !dbg !1415
  br i1 %15, label %21, label %16, !dbg !1416

; <label>:16:                                     ; preds = %5
  %17 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1417
  %18 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %17, i32 0, i32 15, !dbg !1419
  %19 = load %struct.trigpend*, %struct.trigpend** %18, align 8, !dbg !1419
  %20 = icmp ne %struct.trigpend* %19, null, !dbg !1417
  br i1 %20, label %22, label %21, !dbg !1420

; <label>:21:                                     ; preds = %16, %5
  br label %71, !dbg !1421

; <label>:22:                                     ; preds = %16
  %23 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1422
  %24 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %23, i32 0, i32 4, !dbg !1424
  %25 = load i32, i32* %24, align 8, !dbg !1424
  %26 = icmp ult i32 %25, 5, !dbg !1425
  br i1 %26, label %32, label %27, !dbg !1426

; <label>:27:                                     ; preds = %22
  %28 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1427
  %29 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %28, i32 0, i32 4, !dbg !1428
  %30 = load i32, i32* %29, align 8, !dbg !1428
  %31 = icmp ugt i32 %30, 6, !dbg !1429
  br i1 %31, label %32, label %38, !dbg !1430

; <label>:32:                                     ; preds = %27, %22
  %33 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1432
  %34 = load %struct.pkgbin*, %struct.pkgbin** %8, align 8, !dbg !1433
  %35 = call i8* @pkgbin_name_const(%struct.pkginfo* %33, %struct.pkgbin* %34, i32 3), !dbg !1434
  %36 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1435
  %37 = call i8* @pkg_status_name(%struct.pkginfo* %36), !dbg !1436
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 415, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.w_trigpend, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.31, i32 0, i32 0), i8* %35, i8* %37) #8, !dbg !1438
  unreachable, !dbg !1440

; <label>:38:                                     ; preds = %27
  %39 = load i32, i32* %9, align 4, !dbg !1441
  %40 = and i32 %39, 1, !dbg !1443
  %41 = icmp ne i32 %40, 0, !dbg !1443
  br i1 %41, label %42, label %44, !dbg !1444

; <label>:42:                                     ; preds = %38
  %43 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1445
  call void @varbuf_add_buf(%struct.varbuf* %43, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i32 0, i32 0), i64 17), !dbg !1446
  br label %44, !dbg !1446

; <label>:44:                                     ; preds = %42, %38
  %45 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1447
  %46 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %45, i32 0, i32 15, !dbg !1449
  %47 = load %struct.trigpend*, %struct.trigpend** %46, align 8, !dbg !1449
  store %struct.trigpend* %47, %struct.trigpend** %11, align 8, !dbg !1450
  br label %48, !dbg !1451

; <label>:48:                                     ; preds = %61, %44
  %49 = load %struct.trigpend*, %struct.trigpend** %11, align 8, !dbg !1452
  %50 = icmp ne %struct.trigpend* %49, null, !dbg !1455
  br i1 %50, label %51, label %65, !dbg !1455

; <label>:51:                                     ; preds = %48
  %52 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1456
  call void @varbuf_add_char(%struct.varbuf* %52, i32 32), !dbg !1458
  %53 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1459
  %54 = load %struct.trigpend*, %struct.trigpend** %11, align 8, !dbg !1460
  %55 = getelementptr inbounds %struct.trigpend, %struct.trigpend* %54, i32 0, i32 1, !dbg !1461
  %56 = load i8*, i8** %55, align 8, !dbg !1461
  %57 = load %struct.trigpend*, %struct.trigpend** %11, align 8, !dbg !1462
  %58 = getelementptr inbounds %struct.trigpend, %struct.trigpend* %57, i32 0, i32 1, !dbg !1463
  %59 = load i8*, i8** %58, align 8, !dbg !1463
  %60 = call i64 @strlen(i8* %59) #9, !dbg !1464
  call void @varbuf_add_buf(%struct.varbuf* %53, i8* %56, i64 %60), !dbg !1465
  br label %61, !dbg !1467

; <label>:61:                                     ; preds = %51
  %62 = load %struct.trigpend*, %struct.trigpend** %11, align 8, !dbg !1468
  %63 = getelementptr inbounds %struct.trigpend, %struct.trigpend* %62, i32 0, i32 0, !dbg !1470
  %64 = load %struct.trigpend*, %struct.trigpend** %63, align 8, !dbg !1470
  store %struct.trigpend* %64, %struct.trigpend** %11, align 8, !dbg !1471
  br label %48, !dbg !1472, !llvm.loop !1473

; <label>:65:                                     ; preds = %48
  %66 = load i32, i32* %9, align 4, !dbg !1475
  %67 = and i32 %66, 1, !dbg !1477
  %68 = icmp ne i32 %67, 0, !dbg !1477
  br i1 %68, label %69, label %71, !dbg !1478

; <label>:69:                                     ; preds = %65
  %70 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1479
  call void @varbuf_add_char(%struct.varbuf* %70, i32 10), !dbg !1480
  br label %71, !dbg !1480

; <label>:71:                                     ; preds = %21, %69, %65
  ret void, !dbg !1481
}

; Function Attrs: nounwind uwtable
define void @w_trigaw(%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*) #0 !dbg !1482 {
  %6 = alloca %struct.varbuf*, align 8
  %7 = alloca %struct.pkginfo*, align 8
  %8 = alloca %struct.pkgbin*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fieldinfo*, align 8
  %11 = alloca %struct.trigaw*, align 8
  store %struct.varbuf* %0, %struct.varbuf** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %6, metadata !1483, metadata !392), !dbg !1484
  store %struct.pkginfo* %1, %struct.pkginfo** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %7, metadata !1485, metadata !392), !dbg !1486
  store %struct.pkgbin* %2, %struct.pkgbin** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %8, metadata !1487, metadata !392), !dbg !1488
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1489, metadata !392), !dbg !1490
  store %struct.fieldinfo* %4, %struct.fieldinfo** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.fieldinfo** %10, metadata !1491, metadata !392), !dbg !1492
  call void @llvm.dbg.declare(metadata %struct.trigaw** %11, metadata !1493, metadata !392), !dbg !1494
  %12 = load %struct.pkgbin*, %struct.pkgbin** %8, align 8, !dbg !1495
  %13 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1497
  %14 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %13, i32 0, i32 10, !dbg !1498
  %15 = icmp eq %struct.pkgbin* %12, %14, !dbg !1499
  br i1 %15, label %22, label %16, !dbg !1500

; <label>:16:                                     ; preds = %5
  %17 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1501
  %18 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %17, i32 0, i32 13, !dbg !1503
  %19 = getelementptr inbounds %struct.anon, %struct.anon* %18, i32 0, i32 0, !dbg !1504
  %20 = load %struct.trigaw*, %struct.trigaw** %19, align 8, !dbg !1504
  %21 = icmp ne %struct.trigaw* %20, null, !dbg !1501
  br i1 %21, label %23, label %22, !dbg !1505

; <label>:22:                                     ; preds = %16, %5
  br label %74, !dbg !1506

; <label>:23:                                     ; preds = %16
  %24 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1507
  %25 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %24, i32 0, i32 4, !dbg !1509
  %26 = load i32, i32* %25, align 8, !dbg !1509
  %27 = icmp ule i32 %26, 1, !dbg !1510
  br i1 %27, label %33, label %28, !dbg !1511

; <label>:28:                                     ; preds = %23
  %29 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1512
  %30 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %29, i32 0, i32 4, !dbg !1513
  %31 = load i32, i32* %30, align 8, !dbg !1513
  %32 = icmp ugt i32 %31, 5, !dbg !1514
  br i1 %32, label %33, label %39, !dbg !1515

; <label>:33:                                     ; preds = %28, %23
  %34 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1517
  %35 = load %struct.pkgbin*, %struct.pkgbin** %8, align 8, !dbg !1518
  %36 = call i8* @pkgbin_name_const(%struct.pkginfo* %34, %struct.pkgbin* %35, i32 3), !dbg !1519
  %37 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1520
  %38 = call i8* @pkg_status_name(%struct.pkginfo* %37), !dbg !1521
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 440, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.w_trigaw, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.33, i32 0, i32 0), i8* %36, i8* %38) #8, !dbg !1523
  unreachable, !dbg !1525

; <label>:39:                                     ; preds = %28
  %40 = load i32, i32* %9, align 4, !dbg !1526
  %41 = and i32 %40, 1, !dbg !1528
  %42 = icmp ne i32 %41, 0, !dbg !1528
  br i1 %42, label %43, label %45, !dbg !1529

; <label>:43:                                     ; preds = %39
  %44 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1530
  call void @varbuf_add_buf(%struct.varbuf* %44, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i32 0, i32 0), i64 17), !dbg !1531
  br label %45, !dbg !1531

; <label>:45:                                     ; preds = %43, %39
  %46 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1532
  %47 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %46, i32 0, i32 13, !dbg !1534
  %48 = getelementptr inbounds %struct.anon, %struct.anon* %47, i32 0, i32 0, !dbg !1535
  %49 = load %struct.trigaw*, %struct.trigaw** %48, align 8, !dbg !1535
  store %struct.trigaw* %49, %struct.trigaw** %11, align 8, !dbg !1536
  br label %50, !dbg !1537

; <label>:50:                                     ; preds = %63, %45
  %51 = load %struct.trigaw*, %struct.trigaw** %11, align 8, !dbg !1538
  %52 = icmp ne %struct.trigaw* %51, null, !dbg !1541
  br i1 %52, label %53, label %68, !dbg !1541

; <label>:53:                                     ; preds = %50
  %54 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1542
  call void @varbuf_add_char(%struct.varbuf* %54, i32 32), !dbg !1544
  %55 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1545
  %56 = load %struct.trigaw*, %struct.trigaw** %11, align 8, !dbg !1546
  %57 = getelementptr inbounds %struct.trigaw, %struct.trigaw* %56, i32 0, i32 1, !dbg !1547
  %58 = load %struct.pkginfo*, %struct.pkginfo** %57, align 8, !dbg !1547
  %59 = load %struct.trigaw*, %struct.trigaw** %11, align 8, !dbg !1548
  %60 = getelementptr inbounds %struct.trigaw, %struct.trigaw* %59, i32 0, i32 1, !dbg !1549
  %61 = load %struct.pkginfo*, %struct.pkginfo** %60, align 8, !dbg !1549
  %62 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %61, i32 0, i32 9, !dbg !1550
  call void @varbuf_add_pkgbin_name(%struct.varbuf* %55, %struct.pkginfo* %58, %struct.pkgbin* %62, i32 1), !dbg !1551
  br label %63, !dbg !1552

; <label>:63:                                     ; preds = %53
  %64 = load %struct.trigaw*, %struct.trigaw** %11, align 8, !dbg !1553
  %65 = getelementptr inbounds %struct.trigaw, %struct.trigaw* %64, i32 0, i32 3, !dbg !1555
  %66 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %65, i32 0, i32 0, !dbg !1556
  %67 = load %struct.trigaw*, %struct.trigaw** %66, align 8, !dbg !1556
  store %struct.trigaw* %67, %struct.trigaw** %11, align 8, !dbg !1557
  br label %50, !dbg !1558, !llvm.loop !1559

; <label>:68:                                     ; preds = %50
  %69 = load i32, i32* %9, align 4, !dbg !1561
  %70 = and i32 %69, 1, !dbg !1563
  %71 = icmp ne i32 %70, 0, !dbg !1563
  br i1 %71, label %72, label %74, !dbg !1564

; <label>:72:                                     ; preds = %68
  %73 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1565
  call void @varbuf_add_char(%struct.varbuf* %73, i32 10), !dbg !1566
  br label %74, !dbg !1566

; <label>:74:                                     ; preds = %22, %72, %68
  ret void, !dbg !1567
}

declare void @varbuf_add_pkgbin_name(%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32) #3

; Function Attrs: nounwind uwtable
define void @varbuf_add_arbfield(%struct.varbuf*, %struct.arbitraryfield*, i32) #0 !dbg !1568 {
  %4 = alloca %struct.varbuf*, align 8
  %5 = alloca %struct.arbitraryfield*, align 8
  %6 = alloca i32, align 4
  store %struct.varbuf* %0, %struct.varbuf** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %4, metadata !1573, metadata !392), !dbg !1574
  store %struct.arbitraryfield* %1, %struct.arbitraryfield** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.arbitraryfield** %5, metadata !1575, metadata !392), !dbg !1576
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1577, metadata !392), !dbg !1578
  %7 = load i32, i32* %6, align 4, !dbg !1579
  %8 = and i32 %7, 1, !dbg !1581
  %9 = icmp ne i32 %8, 0, !dbg !1581
  br i1 %9, label %10, label %20, !dbg !1582

; <label>:10:                                     ; preds = %3
  %11 = load %struct.varbuf*, %struct.varbuf** %4, align 8, !dbg !1583
  %12 = load %struct.arbitraryfield*, %struct.arbitraryfield** %5, align 8, !dbg !1585
  %13 = getelementptr inbounds %struct.arbitraryfield, %struct.arbitraryfield* %12, i32 0, i32 1, !dbg !1586
  %14 = load i8*, i8** %13, align 8, !dbg !1586
  %15 = load %struct.arbitraryfield*, %struct.arbitraryfield** %5, align 8, !dbg !1587
  %16 = getelementptr inbounds %struct.arbitraryfield, %struct.arbitraryfield* %15, i32 0, i32 1, !dbg !1588
  %17 = load i8*, i8** %16, align 8, !dbg !1588
  %18 = call i64 @strlen(i8* %17) #9, !dbg !1589
  call void @varbuf_add_buf(%struct.varbuf* %11, i8* %14, i64 %18), !dbg !1590
  %19 = load %struct.varbuf*, %struct.varbuf** %4, align 8, !dbg !1592
  call void @varbuf_add_buf(%struct.varbuf* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i32 0, i32 0), i64 2), !dbg !1593
  br label %20, !dbg !1594

; <label>:20:                                     ; preds = %10, %3
  %21 = load %struct.varbuf*, %struct.varbuf** %4, align 8, !dbg !1595
  %22 = load %struct.arbitraryfield*, %struct.arbitraryfield** %5, align 8, !dbg !1596
  %23 = getelementptr inbounds %struct.arbitraryfield, %struct.arbitraryfield* %22, i32 0, i32 2, !dbg !1597
  %24 = load i8*, i8** %23, align 8, !dbg !1597
  %25 = load %struct.arbitraryfield*, %struct.arbitraryfield** %5, align 8, !dbg !1598
  %26 = getelementptr inbounds %struct.arbitraryfield, %struct.arbitraryfield* %25, i32 0, i32 2, !dbg !1599
  %27 = load i8*, i8** %26, align 8, !dbg !1599
  %28 = call i64 @strlen(i8* %27) #9, !dbg !1600
  call void @varbuf_add_buf(%struct.varbuf* %21, i8* %24, i64 %28), !dbg !1601
  %29 = load i32, i32* %6, align 4, !dbg !1603
  %30 = and i32 %29, 1, !dbg !1605
  %31 = icmp ne i32 %30, 0, !dbg !1605
  br i1 %31, label %32, label %34, !dbg !1606

; <label>:32:                                     ; preds = %20
  %33 = load %struct.varbuf*, %struct.varbuf** %4, align 8, !dbg !1607
  call void @varbuf_add_char(%struct.varbuf* %33, i32 10), !dbg !1608
  br label %34, !dbg !1608

; <label>:34:                                     ; preds = %32, %20
  ret void, !dbg !1609
}

; Function Attrs: nounwind uwtable
define void @varbufrecord(%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*) #0 !dbg !1610 {
  %4 = alloca %struct.varbuf*, align 8
  %5 = alloca %struct.pkginfo*, align 8
  %6 = alloca %struct.pkgbin*, align 8
  %7 = alloca %struct.fieldinfo*, align 8
  %8 = alloca %struct.arbitraryfield*, align 8
  store %struct.varbuf* %0, %struct.varbuf** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %4, metadata !1613, metadata !392), !dbg !1614
  store %struct.pkginfo* %1, %struct.pkginfo** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %5, metadata !1615, metadata !392), !dbg !1616
  store %struct.pkgbin* %2, %struct.pkgbin** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %6, metadata !1617, metadata !392), !dbg !1618
  call void @llvm.dbg.declare(metadata %struct.fieldinfo** %7, metadata !1619, metadata !392), !dbg !1620
  call void @llvm.dbg.declare(metadata %struct.arbitraryfield** %8, metadata !1621, metadata !392), !dbg !1622
  store %struct.fieldinfo* getelementptr inbounds ([0 x %struct.fieldinfo], [0 x %struct.fieldinfo]* @fieldinfos, i32 0, i32 0), %struct.fieldinfo** %7, align 8, !dbg !1623
  br label %9, !dbg !1625

; <label>:9:                                      ; preds = %23, %3
  %10 = load %struct.fieldinfo*, %struct.fieldinfo** %7, align 8, !dbg !1626
  %11 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %10, i32 0, i32 0, !dbg !1629
  %12 = load i8*, i8** %11, align 8, !dbg !1629
  %13 = icmp ne i8* %12, null, !dbg !1630
  br i1 %13, label %14, label %26, !dbg !1630

; <label>:14:                                     ; preds = %9
  %15 = load %struct.fieldinfo*, %struct.fieldinfo** %7, align 8, !dbg !1631
  %16 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %15, i32 0, i32 3, !dbg !1633
  %17 = bitcast {}** %16 to void (%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*)**, !dbg !1633
  %18 = load void (%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*)*, void (%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*)** %17, align 8, !dbg !1633
  %19 = load %struct.varbuf*, %struct.varbuf** %4, align 8, !dbg !1634
  %20 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1635
  %21 = load %struct.pkgbin*, %struct.pkgbin** %6, align 8, !dbg !1636
  %22 = load %struct.fieldinfo*, %struct.fieldinfo** %7, align 8, !dbg !1637
  call void %18(%struct.varbuf* %19, %struct.pkginfo* %20, %struct.pkgbin* %21, i32 1, %struct.fieldinfo* %22), !dbg !1631
  br label %23, !dbg !1638

; <label>:23:                                     ; preds = %14
  %24 = load %struct.fieldinfo*, %struct.fieldinfo** %7, align 8, !dbg !1639
  %25 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %24, i32 1, !dbg !1639
  store %struct.fieldinfo* %25, %struct.fieldinfo** %7, align 8, !dbg !1639
  br label %9, !dbg !1641, !llvm.loop !1642

; <label>:26:                                     ; preds = %9
  %27 = load %struct.pkgbin*, %struct.pkgbin** %6, align 8, !dbg !1644
  %28 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %27, i32 0, i32 13, !dbg !1646
  %29 = load %struct.arbitraryfield*, %struct.arbitraryfield** %28, align 8, !dbg !1646
  store %struct.arbitraryfield* %29, %struct.arbitraryfield** %8, align 8, !dbg !1647
  br label %30, !dbg !1648

; <label>:30:                                     ; preds = %36, %26
  %31 = load %struct.arbitraryfield*, %struct.arbitraryfield** %8, align 8, !dbg !1649
  %32 = icmp ne %struct.arbitraryfield* %31, null, !dbg !1652
  br i1 %32, label %33, label %40, !dbg !1652

; <label>:33:                                     ; preds = %30
  %34 = load %struct.varbuf*, %struct.varbuf** %4, align 8, !dbg !1653
  %35 = load %struct.arbitraryfield*, %struct.arbitraryfield** %8, align 8, !dbg !1655
  call void @varbuf_add_arbfield(%struct.varbuf* %34, %struct.arbitraryfield* %35, i32 1), !dbg !1656
  br label %36, !dbg !1657

; <label>:36:                                     ; preds = %33
  %37 = load %struct.arbitraryfield*, %struct.arbitraryfield** %8, align 8, !dbg !1658
  %38 = getelementptr inbounds %struct.arbitraryfield, %struct.arbitraryfield* %37, i32 0, i32 0, !dbg !1660
  %39 = load %struct.arbitraryfield*, %struct.arbitraryfield** %38, align 8, !dbg !1660
  store %struct.arbitraryfield* %39, %struct.arbitraryfield** %8, align 8, !dbg !1661
  br label %30, !dbg !1662, !llvm.loop !1663

; <label>:40:                                     ; preds = %30
  ret void, !dbg !1665
}

; Function Attrs: nounwind uwtable
define void @writerecord(%struct._IO_FILE*, i8*, %struct.pkginfo*, %struct.pkgbin*) #0 !dbg !1666 {
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.pkginfo*, align 8
  %8 = alloca %struct.pkgbin*, align 8
  %9 = alloca %struct.varbuf, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !1669, metadata !392), !dbg !1670
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1671, metadata !392), !dbg !1672
  store %struct.pkginfo* %2, %struct.pkginfo** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %7, metadata !1673, metadata !392), !dbg !1674
  store %struct.pkgbin* %3, %struct.pkgbin** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %8, metadata !1675, metadata !392), !dbg !1676
  call void @llvm.dbg.declare(metadata %struct.varbuf* %9, metadata !1677, metadata !392), !dbg !1678
  %10 = bitcast %struct.varbuf* %9 to i8*, !dbg !1678
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 24, i32 8, i1 false), !dbg !1678
  %11 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1679
  %12 = load %struct.pkgbin*, %struct.pkgbin** %8, align 8, !dbg !1680
  call void @varbufrecord(%struct.varbuf* %9, %struct.pkginfo* %11, %struct.pkgbin* %12), !dbg !1681
  call void @varbuf_end_str(%struct.varbuf* %9), !dbg !1682
  %13 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %9, i32 0, i32 2, !dbg !1683
  %14 = load i8*, i8** %13, align 8, !dbg !1683
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !1685
  %16 = call i32 @fputs(i8* %14, %struct._IO_FILE* %15), !dbg !1686
  %17 = icmp slt i32 %16, 0, !dbg !1687
  br i1 %17, label %18, label %24, !dbg !1688

; <label>:18:                                     ; preds = %4
  %19 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.37, i32 0, i32 0)) #10, !dbg !1689
  %20 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1690
  %21 = load %struct.pkgbin*, %struct.pkgbin** %8, align 8, !dbg !1691
  %22 = call i8* @pkgbin_name_const(%struct.pkginfo* %20, %struct.pkgbin* %21, i32 1), !dbg !1692
  %23 = load i8*, i8** %6, align 8, !dbg !1693
  call void (i8*, ...) @ohshite(i8* %19, i8* %22, i8* %23) #8, !dbg !1694
  unreachable, !dbg !1696

; <label>:24:                                     ; preds = %4
  call void @varbuf_destroy(%struct.varbuf* %9), !dbg !1697
  ret void, !dbg !1698
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #6

declare void @varbuf_end_str(%struct.varbuf*) #3

declare i32 @fputs(i8*, %struct._IO_FILE*) #3

; Function Attrs: noreturn
declare void @ohshite(i8*, ...) #2

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #7

declare void @varbuf_destroy(%struct.varbuf*) #3

; Function Attrs: nounwind uwtable
define void @writedb_records(%struct._IO_FILE*, i8*, i32) #0 !dbg !140 {
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pkg_array, align 8
  %8 = alloca %struct.pkginfo*, align 8
  %9 = alloca %struct.pkgbin*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.varbuf, align 8
  %12 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %4, metadata !1699, metadata !392), !dbg !1700
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1701, metadata !392), !dbg !1702
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1703, metadata !392), !dbg !1704
  call void @llvm.dbg.declare(metadata %struct.pkg_array* %7, metadata !1705, metadata !392), !dbg !1712
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %8, metadata !1713, metadata !392), !dbg !1714
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %9, metadata !1715, metadata !392), !dbg !1716
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1717, metadata !392), !dbg !1718
  call void @llvm.dbg.declare(metadata %struct.varbuf* %11, metadata !1719, metadata !392), !dbg !1720
  %13 = bitcast %struct.varbuf* %11 to i8*, !dbg !1720
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 24, i32 8, i1 false), !dbg !1720
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1721, metadata !392), !dbg !1722
  %14 = load i32, i32* %6, align 4, !dbg !1723
  %15 = and i32 %14, 1, !dbg !1724
  %16 = icmp ne i32 %15, 0, !dbg !1725
  %17 = select i1 %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), !dbg !1725
  store i8* %17, i8** %10, align 8, !dbg !1726
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !1727
  %19 = call i32 @setvbuf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @writedb_records.writebuf, i32 0, i32 0), i32 0, i64 8192) #10, !dbg !1729
  %20 = icmp ne i32 %19, 0, !dbg !1729
  br i1 %20, label %21, label %24, !dbg !1730

; <label>:21:                                     ; preds = %3
  %22 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.40, i32 0, i32 0)) #10, !dbg !1731
  %23 = load i8*, i8** %10, align 8, !dbg !1732
  call void (i8*, ...) @ohshite(i8* %22, i8* %23) #8, !dbg !1733
  unreachable, !dbg !1735

; <label>:24:                                     ; preds = %3
  call void @pkg_array_init_from_hash(%struct.pkg_array* %7), !dbg !1736
  call void @pkg_array_sort(%struct.pkg_array* %7, i32 (i8*, i8*)* @pkg_sorter_by_nonambig_name_arch), !dbg !1737
  store i32 0, i32* %12, align 4, !dbg !1738
  br label %25, !dbg !1740

; <label>:25:                                     ; preds = %68, %24
  %26 = load i32, i32* %12, align 4, !dbg !1741
  %27 = getelementptr inbounds %struct.pkg_array, %struct.pkg_array* %7, i32 0, i32 0, !dbg !1744
  %28 = load i32, i32* %27, align 8, !dbg !1744
  %29 = icmp slt i32 %26, %28, !dbg !1745
  br i1 %29, label %30, label %71, !dbg !1746

; <label>:30:                                     ; preds = %25
  %31 = load i32, i32* %12, align 4, !dbg !1747
  %32 = sext i32 %31 to i64, !dbg !1749
  %33 = getelementptr inbounds %struct.pkg_array, %struct.pkg_array* %7, i32 0, i32 1, !dbg !1750
  %34 = load %struct.pkginfo**, %struct.pkginfo*** %33, align 8, !dbg !1750
  %35 = getelementptr inbounds %struct.pkginfo*, %struct.pkginfo** %34, i64 %32, !dbg !1749
  %36 = load %struct.pkginfo*, %struct.pkginfo** %35, align 8, !dbg !1749
  store %struct.pkginfo* %36, %struct.pkginfo** %8, align 8, !dbg !1751
  %37 = load i32, i32* %6, align 4, !dbg !1752
  %38 = and i32 %37, 1, !dbg !1753
  %39 = icmp ne i32 %38, 0, !dbg !1753
  br i1 %39, label %40, label %43, !dbg !1754

; <label>:40:                                     ; preds = %30
  %41 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1755
  %42 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %41, i32 0, i32 10, !dbg !1757
  br label %46, !dbg !1758

; <label>:43:                                     ; preds = %30
  %44 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1759
  %45 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %44, i32 0, i32 9, !dbg !1761
  br label %46, !dbg !1762

; <label>:46:                                     ; preds = %43, %40
  %47 = phi %struct.pkgbin* [ %42, %40 ], [ %45, %43 ], !dbg !1763
  store %struct.pkgbin* %47, %struct.pkgbin** %9, align 8, !dbg !1765
  %48 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1766
  %49 = load %struct.pkgbin*, %struct.pkgbin** %9, align 8, !dbg !1768
  %50 = call zeroext i1 @pkg_is_informative(%struct.pkginfo* %48, %struct.pkgbin* %49), !dbg !1769
  br i1 %50, label %52, label %51, !dbg !1770

; <label>:51:                                     ; preds = %46
  br label %68, !dbg !1771

; <label>:52:                                     ; preds = %46
  %53 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1772
  %54 = load %struct.pkgbin*, %struct.pkgbin** %9, align 8, !dbg !1773
  call void @varbufrecord(%struct.varbuf* %11, %struct.pkginfo* %53, %struct.pkgbin* %54), !dbg !1774
  call void @varbuf_add_char(%struct.varbuf* %11, i32 10), !dbg !1775
  call void @varbuf_end_str(%struct.varbuf* %11), !dbg !1776
  %55 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %11, i32 0, i32 2, !dbg !1777
  %56 = load i8*, i8** %55, align 8, !dbg !1777
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !1779
  %58 = call i32 @fputs(i8* %56, %struct._IO_FILE* %57), !dbg !1780
  %59 = icmp slt i32 %58, 0, !dbg !1781
  br i1 %59, label %60, label %67, !dbg !1782

; <label>:60:                                     ; preds = %52
  %61 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.41, i32 0, i32 0)) #10, !dbg !1783
  %62 = load i8*, i8** %10, align 8, !dbg !1784
  %63 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !1785
  %64 = load %struct.pkgbin*, %struct.pkgbin** %9, align 8, !dbg !1786
  %65 = call i8* @pkgbin_name(%struct.pkginfo* %63, %struct.pkgbin* %64, i32 1), !dbg !1787
  %66 = load i8*, i8** %5, align 8, !dbg !1788
  call void (i8*, ...) @ohshite(i8* %61, i8* %62, i8* %65, i8* %66) #8, !dbg !1789
  unreachable, !dbg !1791

; <label>:67:                                     ; preds = %52
  call void @varbuf_reset(%struct.varbuf* %11), !dbg !1792
  br label %68, !dbg !1793

; <label>:68:                                     ; preds = %67, %51
  %69 = load i32, i32* %12, align 4, !dbg !1794
  %70 = add nsw i32 %69, 1, !dbg !1794
  store i32 %70, i32* %12, align 4, !dbg !1794
  br label %25, !dbg !1796, !llvm.loop !1797

; <label>:71:                                     ; preds = %25
  call void @pkg_array_destroy(%struct.pkg_array* %7), !dbg !1799
  call void @varbuf_destroy(%struct.varbuf* %11), !dbg !1800
  ret void, !dbg !1801
}

; Function Attrs: nounwind
declare i32 @setvbuf(%struct._IO_FILE*, i8*, i32, i64) #7

declare void @pkg_array_init_from_hash(%struct.pkg_array*) #3

declare void @pkg_array_sort(%struct.pkg_array*, i32 (i8*, i8*)*) #3

declare i32 @pkg_sorter_by_nonambig_name_arch(i8*, i8*) #3

declare zeroext i1 @pkg_is_informative(%struct.pkginfo*, %struct.pkgbin*) #3

declare i8* @pkgbin_name(%struct.pkginfo*, %struct.pkgbin*, i32) #3

declare void @varbuf_reset(%struct.varbuf*) #3

declare void @pkg_array_destroy(%struct.pkg_array*) #3

; Function Attrs: nounwind uwtable
define void @writedb(i8*, i32) #0 !dbg !1802 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.atomic_file*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1805, metadata !392), !dbg !1806
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1807, metadata !392), !dbg !1808
  call void @llvm.dbg.declare(metadata %struct.atomic_file** %5, metadata !1809, metadata !392), !dbg !1817
  %6 = load i8*, i8** %3, align 8, !dbg !1818
  %7 = call %struct.atomic_file* @atomic_file_new(i8* %6, i32 1), !dbg !1819
  store %struct.atomic_file* %7, %struct.atomic_file** %5, align 8, !dbg !1820
  %8 = load %struct.atomic_file*, %struct.atomic_file** %5, align 8, !dbg !1821
  call void @atomic_file_open(%struct.atomic_file* %8), !dbg !1822
  %9 = load %struct.atomic_file*, %struct.atomic_file** %5, align 8, !dbg !1823
  %10 = getelementptr inbounds %struct.atomic_file, %struct.atomic_file* %9, i32 0, i32 3, !dbg !1824
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8, !dbg !1824
  %12 = load i8*, i8** %3, align 8, !dbg !1825
  %13 = load i32, i32* %4, align 4, !dbg !1826
  call void @writedb_records(%struct._IO_FILE* %11, i8* %12, i32 %13), !dbg !1827
  %14 = load i32, i32* %4, align 4, !dbg !1828
  %15 = and i32 %14, 2, !dbg !1830
  %16 = icmp ne i32 %15, 0, !dbg !1830
  br i1 %16, label %17, label %19, !dbg !1831

; <label>:17:                                     ; preds = %2
  %18 = load %struct.atomic_file*, %struct.atomic_file** %5, align 8, !dbg !1832
  call void @atomic_file_sync(%struct.atomic_file* %18), !dbg !1833
  br label %19, !dbg !1833

; <label>:19:                                     ; preds = %17, %2
  %20 = load %struct.atomic_file*, %struct.atomic_file** %5, align 8, !dbg !1834
  call void @atomic_file_close(%struct.atomic_file* %20), !dbg !1835
  %21 = load %struct.atomic_file*, %struct.atomic_file** %5, align 8, !dbg !1836
  call void @atomic_file_commit(%struct.atomic_file* %21), !dbg !1837
  %22 = load %struct.atomic_file*, %struct.atomic_file** %5, align 8, !dbg !1838
  call void @atomic_file_free(%struct.atomic_file* %22), !dbg !1839
  %23 = load i32, i32* %4, align 4, !dbg !1840
  %24 = and i32 %23, 2, !dbg !1842
  %25 = icmp ne i32 %24, 0, !dbg !1842
  br i1 %25, label %26, label %28, !dbg !1843

; <label>:26:                                     ; preds = %19
  %27 = load i8*, i8** %3, align 8, !dbg !1844
  call void @dir_sync_path_parent(i8* %27), !dbg !1845
  br label %28, !dbg !1845

; <label>:28:                                     ; preds = %26, %19
  ret void, !dbg !1846
}

declare %struct.atomic_file* @atomic_file_new(i8*, i32) #3

declare void @atomic_file_open(%struct.atomic_file*) #3

declare void @atomic_file_sync(%struct.atomic_file*) #3

declare void @atomic_file_close(%struct.atomic_file*) #3

declare void @atomic_file_commit(%struct.atomic_file*) #3

declare void @atomic_file_free(%struct.atomic_file*) #3

declare void @dir_sync_path_parent(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!207, !208}
!llvm.ident = !{!209}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !125, globals: !138)
!1 = !DIFile(filename: "[inter]lib--dpkg--dump.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{!3, !15, !26, !35, !43, !47, !57, !67, !73, !77, !83, !100, !106, !111, !117, !121}
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
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fwriteflags", file: !74, line: 112, size: 32, align: 32, elements: !75)
!74 = !DIFile(filename: "../../lib/dpkg/parsedump.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!75 = !{!76}
!76 = !DIEnumerator(name: "fw_printheader", value: 1)
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "parsedbtype", file: !74, line: 41, size: 32, align: 32, elements: !78)
!78 = !{!79, !80, !81, !82}
!79 = !DIEnumerator(name: "pdb_file_update", value: 0)
!80 = !DIEnumerator(name: "pdb_file_status", value: 1)
!81 = !DIEnumerator(name: "pdb_file_control", value: 2)
!82 = !DIEnumerator(name: "pdb_file_available", value: 3)
!83 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "parsedbflags", file: !4, line: 328, size: 32, align: 32, elements: !84)
!84 = !{!85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99}
!85 = !DIEnumerator(name: "pdb_single_stanza", value: 1)
!86 = !DIEnumerator(name: "pdb_recordavailable", value: 2)
!87 = !DIEnumerator(name: "pdb_rejectstatus", value: 4)
!88 = !DIEnumerator(name: "pdb_weakclassification", value: 8)
!89 = !DIEnumerator(name: "pdb_ignore_archives", value: 16)
!90 = !DIEnumerator(name: "pdb_ignoreolder", value: 32)
!91 = !DIEnumerator(name: "pdb_lax_version_parser", value: 64)
!92 = !DIEnumerator(name: "pdb_lax_stanza_parser", value: 512)
!93 = !DIEnumerator(name: "pdb_lax_parser", value: 576)
!94 = !DIEnumerator(name: "pdb_close_fd", value: 128)
!95 = !DIEnumerator(name: "pdb_dash_is_stdin", value: 256)
!96 = !DIEnumerator(name: "pdb_parse_status", value: 584)
!97 = !DIEnumerator(name: "pdb_parse_update", value: 585)
!98 = !DIEnumerator(name: "pdb_parse_available", value: 582)
!99 = !DIEnumerator(name: "pdb_parse_binary", value: 7)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_msg_type", file: !101, line: 36, size: 32, align: 32, elements: !102)
!101 = !DIFile(filename: "../../lib/dpkg/error.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!102 = !{!103, !104, !105}
!103 = !DIEnumerator(name: "DPKG_MSG_NONE", value: 0)
!104 = !DIEnumerator(name: "DPKG_MSG_WARN", value: 1)
!105 = !DIEnumerator(name: "DPKG_MSG_ERROR", value: 2)
!106 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "versiondisplayepochwhen", file: !4, line: 388, size: 32, align: 32, elements: !107)
!107 = !{!108, !109, !110}
!108 = !DIEnumerator(name: "vdew_never", value: 0)
!109 = !DIEnumerator(name: "vdew_nonambig", value: 1)
!110 = !DIEnumerator(name: "vdew_always", value: 2)
!111 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkg_name_arch_when", file: !4, line: 396, size: 32, align: 32, elements: !112)
!112 = !{!113, !114, !115, !116}
!113 = !DIEnumerator(name: "pnaw_never", value: 0)
!114 = !DIEnumerator(name: "pnaw_nonambig", value: 1)
!115 = !DIEnumerator(name: "pnaw_foreign", value: 2)
!116 = !DIEnumerator(name: "pnaw_always", value: 3)
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writedb_flags", file: !4, line: 445, size: 32, align: 32, elements: !118)
!118 = !{!119, !120}
!119 = !DIEnumerator(name: "wdb_dump_available", value: 1)
!120 = !DIEnumerator(name: "wdb_must_sync", value: 2)
!121 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "atomic_file_flags", file: !122, line: 36, size: 32, align: 32, elements: !123)
!122 = !DIFile(filename: "../../lib/dpkg/atomic-file.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!123 = !{!124}
!124 = !DIEnumerator(name: "ATOMIC_FILE_BACKUP", value: 1)
!125 = !{!126, !127, !131, !134, !136}
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64, align: 64)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64, align: 64)
!129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!130 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !132, line: 122, baseType: !133)
!132 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!133 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!135 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64, align: 64)
!137 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!138 = !{!139}
!139 = distinct !DIGlobalVariable(name: "writebuf", scope: !140, file: !141, line: 499, type: !204, isLocal: true, isDefinition: true, variable: [8192 x i8]* @writedb_records.writebuf)
!140 = distinct !DISubprogram(name: "writedb_records", scope: !141, file: !141, line: 497, type: !142, isLocal: false, isDefinition: true, scopeLine: 498, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !203)
!141 = !DIFile(filename: "dump.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!142 = !DISubroutineType(types: !143)
!143 = !{null, !144, !128, !117}
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64, align: 64)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !146, line: 48, baseType: !147)
!146 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !148, line: 241, size: 1728, align: 64, elements: !149)
!148 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!149 = !{!150, !151, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !171, !172, !173, !174, !178, !180, !182, !186, !189, !191, !192, !193, !194, !195, !198, !199}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !147, file: !148, line: 242, baseType: !137, size: 32, align: 32)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !147, file: !148, line: 247, baseType: !152, size: 64, align: 64, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64, align: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !147, file: !148, line: 248, baseType: !152, size: 64, align: 64, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !147, file: !148, line: 249, baseType: !152, size: 64, align: 64, offset: 192)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !147, file: !148, line: 250, baseType: !152, size: 64, align: 64, offset: 256)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !147, file: !148, line: 251, baseType: !152, size: 64, align: 64, offset: 320)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !147, file: !148, line: 252, baseType: !152, size: 64, align: 64, offset: 384)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !147, file: !148, line: 253, baseType: !152, size: 64, align: 64, offset: 448)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !147, file: !148, line: 254, baseType: !152, size: 64, align: 64, offset: 512)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !147, file: !148, line: 256, baseType: !152, size: 64, align: 64, offset: 576)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !147, file: !148, line: 257, baseType: !152, size: 64, align: 64, offset: 640)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !147, file: !148, line: 258, baseType: !152, size: 64, align: 64, offset: 704)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !147, file: !148, line: 260, baseType: !164, size: 64, align: 64, offset: 768)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64, align: 64)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !148, line: 156, size: 192, align: 64, elements: !166)
!166 = !{!167, !168, !170}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !165, file: !148, line: 157, baseType: !164, size: 64, align: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !165, file: !148, line: 158, baseType: !169, size: 64, align: 64, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64, align: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !165, file: !148, line: 162, baseType: !137, size: 32, align: 32, offset: 128)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !147, file: !148, line: 262, baseType: !169, size: 64, align: 64, offset: 832)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !147, file: !148, line: 264, baseType: !137, size: 32, align: 32, offset: 896)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !147, file: !148, line: 268, baseType: !137, size: 32, align: 32, offset: 928)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !147, file: !148, line: 270, baseType: !175, size: 64, align: 64, offset: 960)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !176, line: 131, baseType: !177)
!176 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!177 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !147, file: !148, line: 274, baseType: !179, size: 16, align: 16, offset: 1024)
!179 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !147, file: !148, line: 275, baseType: !181, size: 8, align: 8, offset: 1040)
!181 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !147, file: !148, line: 276, baseType: !183, size: 8, align: 8, offset: 1048)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 8, align: 8, elements: !184)
!184 = !{!185}
!185 = !DISubrange(count: 1)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !147, file: !148, line: 280, baseType: !187, size: 64, align: 64, offset: 1088)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64, align: 64)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !148, line: 150, baseType: null)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !147, file: !148, line: 289, baseType: !190, size: 64, align: 64, offset: 1152)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !176, line: 132, baseType: !177)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !147, file: !148, line: 297, baseType: !126, size: 64, align: 64, offset: 1216)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !147, file: !148, line: 298, baseType: !126, size: 64, align: 64, offset: 1280)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !147, file: !148, line: 299, baseType: !126, size: 64, align: 64, offset: 1344)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !147, file: !148, line: 300, baseType: !126, size: 64, align: 64, offset: 1408)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !147, file: !148, line: 302, baseType: !196, size: 64, align: 64, offset: 1472)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !197, line: 216, baseType: !133)
!197 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !147, file: !148, line: 303, baseType: !137, size: 32, align: 32, offset: 1536)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !147, file: !148, line: 305, baseType: !200, size: 160, align: 8, offset: 1568)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 160, align: 8, elements: !201)
!201 = !{!202}
!202 = !DISubrange(count: 20)
!203 = !{}
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 65536, align: 8, elements: !205)
!205 = !{!206}
!206 = !DISubrange(count: 8192)
!207 = !{i32 2, !"Dwarf Version", i32 4}
!208 = !{i32 2, !"Debug Info Version", i32 3}
!209 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!210 = distinct !DISubprogram(name: "w_name", scope: !141, file: !141, line: 57, type: !211, isLocal: false, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !203)
!211 = !DISubroutineType(types: !212)
!212 = !{null, !213, !220, !354, !73, !356}
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64, align: 64)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varbuf", file: !215, line: 55, size: 192, align: 64, elements: !216)
!215 = !DIFile(filename: "../../lib/dpkg/varbuf.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!216 = !{!217, !218, !219}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !214, file: !215, line: 56, baseType: !196, size: 64, align: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !214, file: !215, line: 56, baseType: !196, size: 64, align: 64, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !214, file: !215, line: 57, baseType: !152, size: 64, align: 64, offset: 128)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64, align: 64)
!221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !222)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkginfo", file: !4, line: 195, size: 3072, align: 64, elements: !223)
!223 = !{!224, !272, !273, !274, !275, !276, !277, !278, !279, !280, !310, !311, !314, !323, !339, !340, !346, !349, !352, !353}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !222, file: !4, line: 196, baseType: !225, size: 64, align: 64)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64, align: 64)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgset", file: !4, line: 242, size: 3392, align: 64, elements: !227)
!227 = !{!228, !229, !230, !231, !271}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !226, file: !4, line: 243, baseType: !225, size: 64, align: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !226, file: !4, line: 244, baseType: !128, size: 64, align: 64, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !226, file: !4, line: 245, baseType: !222, size: 3072, align: 64, offset: 128)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "depended", scope: !226, file: !4, line: 249, baseType: !232, size: 128, align: 64, offset: 3200)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !226, file: !4, line: 246, size: 128, align: 64, elements: !233)
!233 = !{!234, !270}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !232, file: !4, line: 247, baseType: !235, size: 64, align: 64)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64, align: 64)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "deppossi", file: !4, line: 63, size: 640, align: 64, elements: !237)
!237 = !{!238, !247, !248, !249, !250, !251, !260, !267, !268, !269}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !236, file: !4, line: 64, baseType: !239, size: 64, align: 64)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64, align: 64)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dependency", file: !4, line: 56, size: 256, align: 64, elements: !241)
!241 = !{!242, !244, !245, !246}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !240, file: !4, line: 57, baseType: !243, size: 64, align: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64, align: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !240, file: !4, line: 58, baseType: !239, size: 64, align: 64, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !240, file: !4, line: 59, baseType: !235, size: 64, align: 64, offset: 128)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !240, file: !4, line: 60, baseType: !3, size: 32, align: 32, offset: 192)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "ed", scope: !236, file: !4, line: 65, baseType: !225, size: 64, align: 64, offset: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !236, file: !4, line: 66, baseType: !235, size: 64, align: 64, offset: 128)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "rev_next", scope: !236, file: !4, line: 66, baseType: !235, size: 64, align: 64, offset: 192)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "rev_prev", scope: !236, file: !4, line: 66, baseType: !235, size: 64, align: 64, offset: 256)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !236, file: !4, line: 67, baseType: !252, size: 64, align: 64, offset: 320)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64, align: 64)
!253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !254)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_arch", file: !16, line: 48, size: 192, align: 64, elements: !255)
!255 = !{!256, !258, !259}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !254, file: !16, line: 49, baseType: !257, size: 64, align: 64)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !254, file: !16, line: 50, baseType: !128, size: 64, align: 64, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !254, file: !16, line: 51, baseType: !15, size: 32, align: 32, offset: 128)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !236, file: !4, line: 68, baseType: !261, size: 192, align: 64, offset: 384)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_version", file: !27, line: 42, size: 192, align: 64, elements: !262)
!262 = !{!263, !265, !266}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !261, file: !27, line: 44, baseType: !264, size: 32, align: 32)
!264 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !261, file: !27, line: 46, baseType: !128, size: 64, align: 64, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !261, file: !27, line: 48, baseType: !128, size: 64, align: 64, offset: 128)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "verrel", scope: !236, file: !4, line: 69, baseType: !26, size: 32, align: 32, offset: 576)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "arch_is_implicit", scope: !236, file: !4, line: 70, baseType: !135, size: 8, align: 8, offset: 608)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "cyclebreak", scope: !236, file: !4, line: 71, baseType: !135, size: 8, align: 8, offset: 616)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !232, file: !4, line: 248, baseType: !235, size: 64, align: 64, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "installed_instances", scope: !226, file: !4, line: 250, baseType: !137, size: 32, align: 32, offset: 3328)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "arch_next", scope: !222, file: !4, line: 197, baseType: !243, size: 64, align: 64, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "want", scope: !222, file: !4, line: 199, baseType: !35, size: 32, align: 32, offset: 128)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "eflag", scope: !222, file: !4, line: 201, baseType: !43, size: 32, align: 32, offset: 160)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !222, file: !4, line: 202, baseType: !47, size: 32, align: 32, offset: 192)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !222, file: !4, line: 203, baseType: !57, size: 32, align: 32, offset: 224)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "otherpriority", scope: !222, file: !4, line: 204, baseType: !128, size: 64, align: 64, offset: 256)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "section", scope: !222, file: !4, line: 205, baseType: !128, size: 64, align: 64, offset: 320)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "configversion", scope: !222, file: !4, line: 206, baseType: !261, size: 192, align: 64, offset: 384)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !222, file: !4, line: 207, baseType: !281, size: 960, align: 64, offset: 576)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgbin", file: !4, line: 107, size: 960, align: 64, elements: !282)
!282 = !{!283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !303}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "depends", scope: !281, file: !4, line: 108, baseType: !239, size: 64, align: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "essential", scope: !281, file: !4, line: 110, baseType: !135, size: 8, align: 8, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "multiarch", scope: !281, file: !4, line: 111, baseType: !67, size: 32, align: 32, offset: 96)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !281, file: !4, line: 112, baseType: !252, size: 64, align: 64, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "pkgname_archqual", scope: !281, file: !4, line: 115, baseType: !128, size: 64, align: 64, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !281, file: !4, line: 116, baseType: !128, size: 64, align: 64, offset: 256)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "maintainer", scope: !281, file: !4, line: 117, baseType: !128, size: 64, align: 64, offset: 320)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !281, file: !4, line: 118, baseType: !128, size: 64, align: 64, offset: 384)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "installedsize", scope: !281, file: !4, line: 119, baseType: !128, size: 64, align: 64, offset: 448)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !281, file: !4, line: 120, baseType: !128, size: 64, align: 64, offset: 512)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "bugs", scope: !281, file: !4, line: 121, baseType: !128, size: 64, align: 64, offset: 576)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !281, file: !4, line: 122, baseType: !261, size: 192, align: 64, offset: 640)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "conffiles", scope: !281, file: !4, line: 123, baseType: !296, size: 64, align: 64, offset: 832)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64, align: 64)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conffile", file: !4, line: 80, size: 256, align: 64, elements: !298)
!298 = !{!299, !300, !301, !302}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !297, file: !4, line: 81, baseType: !296, size: 64, align: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !297, file: !4, line: 82, baseType: !128, size: 64, align: 64, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !297, file: !4, line: 83, baseType: !128, size: 64, align: 64, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "obsolete", scope: !297, file: !4, line: 84, baseType: !135, size: 8, align: 8, offset: 192)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "arbs", scope: !281, file: !4, line: 124, baseType: !304, size: 64, align: 64, offset: 896)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64, align: 64)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arbitraryfield", file: !4, line: 74, size: 192, align: 64, elements: !306)
!306 = !{!307, !308, !309}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !305, file: !4, line: 75, baseType: !304, size: 64, align: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !305, file: !4, line: 76, baseType: !128, size: 64, align: 64, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !305, file: !4, line: 77, baseType: !128, size: 64, align: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !222, file: !4, line: 208, baseType: !281, size: 960, align: 64, offset: 1536)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "clientdata", scope: !222, file: !4, line: 209, baseType: !312, size: 64, align: 64, offset: 2496)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64, align: 64)
!313 = !DICompositeType(tag: DW_TAG_structure_type, name: "perpackagestate", file: !4, line: 151, flags: DIFlagFwdDecl)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "archives", scope: !222, file: !4, line: 211, baseType: !315, size: 64, align: 64, offset: 2560)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64, align: 64)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archivedetails", file: !4, line: 87, size: 320, align: 64, elements: !317)
!317 = !{!318, !319, !320, !321, !322}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !316, file: !4, line: 88, baseType: !315, size: 64, align: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !316, file: !4, line: 89, baseType: !128, size: 64, align: 64, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "msdosname", scope: !316, file: !4, line: 90, baseType: !128, size: 64, align: 64, offset: 128)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !316, file: !4, line: 91, baseType: !128, size: 64, align: 64, offset: 192)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "md5sum", scope: !316, file: !4, line: 92, baseType: !128, size: 64, align: 64, offset: 256)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "trigaw", scope: !222, file: !4, line: 216, baseType: !324, size: 128, align: 64, offset: 2624)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !222, file: !4, line: 213, size: 128, align: 64, elements: !325)
!325 = !{!326, !338}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !324, file: !4, line: 215, baseType: !327, size: 64, align: 64)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64, align: 64)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigaw", file: !4, line: 142, size: 320, align: 64, elements: !329)
!329 = !{!330, !331, !332, !333}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "aw", scope: !328, file: !4, line: 143, baseType: !243, size: 64, align: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "pend", scope: !328, file: !4, line: 143, baseType: !243, size: 64, align: 64, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "samepend_next", scope: !328, file: !4, line: 144, baseType: !327, size: 64, align: 64, offset: 128)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "sameaw", scope: !328, file: !4, line: 147, baseType: !334, size: 128, align: 64, offset: 192)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !328, file: !4, line: 145, size: 128, align: 64, elements: !335)
!335 = !{!336, !337}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !334, file: !4, line: 146, baseType: !327, size: 64, align: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !334, file: !4, line: 146, baseType: !327, size: 64, align: 64, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !324, file: !4, line: 215, baseType: !327, size: 64, align: 64, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "othertrigaw_head", scope: !222, file: !4, line: 219, baseType: !327, size: 64, align: 64, offset: 2752)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "trigpend_head", scope: !222, file: !4, line: 220, baseType: !341, size: 64, align: 64, offset: 2816)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64, align: 64)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigpend", file: !4, line: 134, size: 128, align: 64, elements: !343)
!343 = !{!344, !345}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !342, file: !4, line: 135, baseType: !341, size: 64, align: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !342, file: !4, line: 136, baseType: !128, size: 64, align: 64, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !222, file: !4, line: 231, baseType: !347, size: 64, align: 64, offset: 2880)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64, align: 64)
!348 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode_list", file: !4, line: 231, flags: DIFlagFwdDecl)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_phys_offs", scope: !222, file: !4, line: 232, baseType: !350, size: 64, align: 64, offset: 2944)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !351, line: 86, baseType: !175)
!351 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!352 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_valid", scope: !222, file: !4, line: 233, baseType: !135, size: 8, align: 8, offset: 3008)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "status_dirty", scope: !222, file: !4, line: 236, baseType: !135, size: 8, align: 8, offset: 3016)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64, align: 64)
!355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !281)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64, align: 64)
!357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !358)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fieldinfo", file: !74, line: 133, size: 320, align: 64, elements: !359)
!359 = !{!360, !361, !362, !387, !390}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !358, file: !74, line: 134, baseType: !128, size: 64, align: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "namelen", scope: !358, file: !74, line: 135, baseType: !196, size: 64, align: 64, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "rcall", scope: !358, file: !74, line: 136, baseType: !363, size: 64, align: 64, offset: 128)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64, align: 64)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "freadfunction", file: !74, line: 97, baseType: !365)
!365 = !DISubroutineType(types: !366)
!366 = !{null, !243, !367, !368, !128, !356}
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64, align: 64)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64, align: 64)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "parsedb_state", file: !74, line: 48, size: 640, align: 64, elements: !370)
!370 = !{!371, !372, !373, !379, !380, !381, !382, !383, !384, !385, !386}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !369, file: !74, line: 49, baseType: !77, size: 32, align: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !369, file: !74, line: 50, baseType: !83, size: 32, align: 32, offset: 32)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !369, file: !74, line: 51, baseType: !374, size: 128, align: 64, offset: 64)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_error", file: !101, line: 42, size: 128, align: 64, elements: !375)
!375 = !{!376, !377, !378}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !374, file: !101, line: 43, baseType: !100, size: 32, align: 32)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "syserrno", scope: !374, file: !101, line: 45, baseType: !137, size: 32, align: 32, offset: 32)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !374, file: !101, line: 46, baseType: !152, size: 64, align: 64, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !369, file: !74, line: 52, baseType: !243, size: 64, align: 64, offset: 192)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "pkgbin", scope: !369, file: !74, line: 53, baseType: !367, size: 64, align: 64, offset: 256)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !369, file: !74, line: 54, baseType: !152, size: 64, align: 64, offset: 320)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "dataptr", scope: !369, file: !74, line: 55, baseType: !152, size: 64, align: 64, offset: 384)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "endptr", scope: !369, file: !74, line: 56, baseType: !152, size: 64, align: 64, offset: 448)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !369, file: !74, line: 57, baseType: !128, size: 64, align: 64, offset: 512)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !369, file: !74, line: 58, baseType: !137, size: 32, align: 32, offset: 576)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "lno", scope: !369, file: !74, line: 59, baseType: !137, size: 32, align: 32, offset: 608)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "wcall", scope: !358, file: !74, line: 137, baseType: !388, size: 64, align: 64, offset: 192)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64, align: 64)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "fwritefunction", file: !74, line: 117, baseType: !211)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !358, file: !74, line: 138, baseType: !196, size: 64, align: 64, offset: 256)
!391 = !DILocalVariable(name: "vb", arg: 1, scope: !210, file: !141, line: 57, type: !213)
!392 = !DIExpression()
!393 = !DILocation(line: 57, column: 23, scope: !210)
!394 = !DILocalVariable(name: "pkg", arg: 2, scope: !210, file: !141, line: 58, type: !220)
!395 = !DILocation(line: 58, column: 30, scope: !210)
!396 = !DILocalVariable(name: "pkgbin", arg: 3, scope: !210, file: !141, line: 58, type: !354)
!397 = !DILocation(line: 58, column: 56, scope: !210)
!398 = !DILocalVariable(name: "flags", arg: 4, scope: !210, file: !141, line: 59, type: !73)
!399 = !DILocation(line: 59, column: 25, scope: !210)
!400 = !DILocalVariable(name: "fip", arg: 5, scope: !210, file: !141, line: 59, type: !356)
!401 = !DILocation(line: 59, column: 56, scope: !210)
!402 = !DILocation(line: 61, column: 7, scope: !403)
!403 = distinct !DILexicalBlock(scope: !210, file: !141, line: 61, column: 7)
!404 = !DILocation(line: 61, column: 12, scope: !403)
!405 = !DILocation(line: 61, column: 17, scope: !403)
!406 = !DILocation(line: 61, column: 22, scope: !403)
!407 = !DILocation(line: 61, column: 7, scope: !210)
!408 = !DILocation(line: 62, column: 5, scope: !403)
!409 = !DILocation(line: 64, column: 7, scope: !410)
!410 = distinct !DILexicalBlock(scope: !210, file: !141, line: 64, column: 7)
!411 = !DILocation(line: 64, column: 12, scope: !410)
!412 = !DILocation(line: 64, column: 7, scope: !210)
!413 = !DILocation(line: 65, column: 20, scope: !410)
!414 = !DILocation(line: 65, column: 5, scope: !410)
!415 = !DILocation(line: 66, column: 18, scope: !210)
!416 = !DILocation(line: 66, column: 22, scope: !210)
!417 = !DILocation(line: 66, column: 27, scope: !210)
!418 = !DILocation(line: 66, column: 32, scope: !210)
!419 = !DILocation(line: 66, column: 45, scope: !210)
!420 = !DILocation(line: 66, column: 50, scope: !210)
!421 = !DILocation(line: 66, column: 55, scope: !210)
!422 = !DILocation(line: 66, column: 38, scope: !210)
!423 = !DILocation(line: 66, column: 3, scope: !424)
!424 = !DILexicalBlockFile(scope: !210, file: !141, discriminator: 1)
!425 = !DILocation(line: 67, column: 7, scope: !426)
!426 = distinct !DILexicalBlock(scope: !210, file: !141, line: 67, column: 7)
!427 = !DILocation(line: 67, column: 12, scope: !426)
!428 = !DILocation(line: 67, column: 7, scope: !210)
!429 = !DILocation(line: 68, column: 21, scope: !426)
!430 = !DILocation(line: 68, column: 5, scope: !426)
!431 = !DILocation(line: 69, column: 1, scope: !210)
!432 = distinct !DISubprogram(name: "w_version", scope: !141, file: !141, line: 72, type: !211, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !203)
!433 = !DILocalVariable(name: "vb", arg: 1, scope: !432, file: !141, line: 72, type: !213)
!434 = !DILocation(line: 72, column: 26, scope: !432)
!435 = !DILocalVariable(name: "pkg", arg: 2, scope: !432, file: !141, line: 73, type: !220)
!436 = !DILocation(line: 73, column: 33, scope: !432)
!437 = !DILocalVariable(name: "pkgbin", arg: 3, scope: !432, file: !141, line: 73, type: !354)
!438 = !DILocation(line: 73, column: 59, scope: !432)
!439 = !DILocalVariable(name: "flags", arg: 4, scope: !432, file: !141, line: 74, type: !73)
!440 = !DILocation(line: 74, column: 28, scope: !432)
!441 = !DILocalVariable(name: "fip", arg: 5, scope: !432, file: !141, line: 74, type: !356)
!442 = !DILocation(line: 74, column: 59, scope: !432)
!443 = !DILocation(line: 76, column: 37, scope: !444)
!444 = distinct !DILexicalBlock(scope: !432, file: !141, line: 76, column: 7)
!445 = !DILocation(line: 76, column: 45, scope: !444)
!446 = !DILocation(line: 76, column: 8, scope: !444)
!447 = !DILocation(line: 76, column: 7, scope: !432)
!448 = !DILocation(line: 77, column: 5, scope: !444)
!449 = !DILocation(line: 78, column: 7, scope: !450)
!450 = distinct !DILexicalBlock(scope: !432, file: !141, line: 78, column: 7)
!451 = !DILocation(line: 78, column: 12, scope: !450)
!452 = !DILocation(line: 78, column: 7, scope: !432)
!453 = !DILocation(line: 79, column: 20, scope: !450)
!454 = !DILocation(line: 79, column: 5, scope: !450)
!455 = !DILocation(line: 80, column: 17, scope: !432)
!456 = !DILocation(line: 80, column: 22, scope: !432)
!457 = !DILocation(line: 80, column: 30, scope: !432)
!458 = !DILocation(line: 80, column: 3, scope: !432)
!459 = !DILocation(line: 81, column: 7, scope: !460)
!460 = distinct !DILexicalBlock(scope: !432, file: !141, line: 81, column: 7)
!461 = !DILocation(line: 81, column: 12, scope: !460)
!462 = !DILocation(line: 81, column: 7, scope: !432)
!463 = !DILocation(line: 82, column: 21, scope: !460)
!464 = !DILocation(line: 82, column: 5, scope: !460)
!465 = !DILocation(line: 83, column: 1, scope: !432)
!466 = distinct !DISubprogram(name: "w_configversion", scope: !141, file: !141, line: 86, type: !211, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !203)
!467 = !DILocalVariable(name: "vb", arg: 1, scope: !466, file: !141, line: 86, type: !213)
!468 = !DILocation(line: 86, column: 32, scope: !466)
!469 = !DILocalVariable(name: "pkg", arg: 2, scope: !466, file: !141, line: 87, type: !220)
!470 = !DILocation(line: 87, column: 39, scope: !466)
!471 = !DILocalVariable(name: "pkgbin", arg: 3, scope: !466, file: !141, line: 87, type: !354)
!472 = !DILocation(line: 87, column: 65, scope: !466)
!473 = !DILocalVariable(name: "flags", arg: 4, scope: !466, file: !141, line: 88, type: !73)
!474 = !DILocation(line: 88, column: 34, scope: !466)
!475 = !DILocalVariable(name: "fip", arg: 5, scope: !466, file: !141, line: 88, type: !356)
!476 = !DILocation(line: 88, column: 65, scope: !466)
!477 = !DILocation(line: 90, column: 7, scope: !478)
!478 = distinct !DILexicalBlock(scope: !466, file: !141, line: 90, column: 7)
!479 = !DILocation(line: 90, column: 18, scope: !478)
!480 = !DILocation(line: 90, column: 23, scope: !478)
!481 = !DILocation(line: 90, column: 14, scope: !478)
!482 = !DILocation(line: 90, column: 7, scope: !466)
!483 = !DILocation(line: 91, column: 5, scope: !478)
!484 = !DILocation(line: 92, column: 37, scope: !485)
!485 = distinct !DILexicalBlock(scope: !466, file: !141, line: 92, column: 7)
!486 = !DILocation(line: 92, column: 42, scope: !485)
!487 = !DILocation(line: 92, column: 8, scope: !485)
!488 = !DILocation(line: 92, column: 7, scope: !466)
!489 = !DILocation(line: 93, column: 5, scope: !485)
!490 = !DILocation(line: 94, column: 7, scope: !491)
!491 = distinct !DILexicalBlock(scope: !466, file: !141, line: 94, column: 7)
!492 = !DILocation(line: 94, column: 12, scope: !491)
!493 = !DILocation(line: 94, column: 19, scope: !491)
!494 = !DILocation(line: 94, column: 41, scope: !491)
!495 = !DILocation(line: 95, column: 7, scope: !491)
!496 = !DILocation(line: 95, column: 12, scope: !491)
!497 = !DILocation(line: 95, column: 19, scope: !491)
!498 = !DILocation(line: 95, column: 44, scope: !491)
!499 = !DILocation(line: 96, column: 7, scope: !491)
!500 = !DILocation(line: 96, column: 12, scope: !491)
!501 = !DILocation(line: 96, column: 19, scope: !491)
!502 = !DILocation(line: 94, column: 7, scope: !503)
!503 = !DILexicalBlockFile(scope: !466, file: !141, discriminator: 1)
!504 = !DILocation(line: 97, column: 5, scope: !491)
!505 = !DILocation(line: 98, column: 7, scope: !506)
!506 = distinct !DILexicalBlock(scope: !466, file: !141, line: 98, column: 7)
!507 = !DILocation(line: 98, column: 12, scope: !506)
!508 = !DILocation(line: 98, column: 7, scope: !466)
!509 = !DILocation(line: 99, column: 20, scope: !506)
!510 = !DILocation(line: 99, column: 5, scope: !506)
!511 = !DILocation(line: 100, column: 17, scope: !466)
!512 = !DILocation(line: 100, column: 22, scope: !466)
!513 = !DILocation(line: 100, column: 27, scope: !466)
!514 = !DILocation(line: 100, column: 3, scope: !466)
!515 = !DILocation(line: 101, column: 7, scope: !516)
!516 = distinct !DILexicalBlock(scope: !466, file: !141, line: 101, column: 7)
!517 = !DILocation(line: 101, column: 12, scope: !516)
!518 = !DILocation(line: 101, column: 7, scope: !466)
!519 = !DILocation(line: 102, column: 21, scope: !516)
!520 = !DILocation(line: 102, column: 5, scope: !516)
!521 = !DILocation(line: 103, column: 1, scope: !466)
!522 = distinct !DISubprogram(name: "w_null", scope: !141, file: !141, line: 106, type: !211, isLocal: false, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !203)
!523 = !DILocalVariable(name: "vb", arg: 1, scope: !522, file: !141, line: 106, type: !213)
!524 = !DILocation(line: 106, column: 23, scope: !522)
!525 = !DILocalVariable(name: "pkg", arg: 2, scope: !522, file: !141, line: 107, type: !220)
!526 = !DILocation(line: 107, column: 30, scope: !522)
!527 = !DILocalVariable(name: "pkgbin", arg: 3, scope: !522, file: !141, line: 107, type: !354)
!528 = !DILocation(line: 107, column: 56, scope: !522)
!529 = !DILocalVariable(name: "flags", arg: 4, scope: !522, file: !141, line: 108, type: !73)
!530 = !DILocation(line: 108, column: 25, scope: !522)
!531 = !DILocalVariable(name: "fip", arg: 5, scope: !522, file: !141, line: 108, type: !356)
!532 = !DILocation(line: 108, column: 56, scope: !522)
!533 = !DILocation(line: 110, column: 1, scope: !522)
!534 = distinct !DISubprogram(name: "w_section", scope: !141, file: !141, line: 113, type: !211, isLocal: false, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !203)
!535 = !DILocalVariable(name: "vb", arg: 1, scope: !534, file: !141, line: 113, type: !213)
!536 = !DILocation(line: 113, column: 26, scope: !534)
!537 = !DILocalVariable(name: "pkg", arg: 2, scope: !534, file: !141, line: 114, type: !220)
!538 = !DILocation(line: 114, column: 33, scope: !534)
!539 = !DILocalVariable(name: "pkgbin", arg: 3, scope: !534, file: !141, line: 114, type: !354)
!540 = !DILocation(line: 114, column: 59, scope: !534)
!541 = !DILocalVariable(name: "flags", arg: 4, scope: !534, file: !141, line: 115, type: !73)
!542 = !DILocation(line: 115, column: 28, scope: !534)
!543 = !DILocalVariable(name: "fip", arg: 5, scope: !534, file: !141, line: 115, type: !356)
!544 = !DILocation(line: 115, column: 59, scope: !534)
!545 = !DILocalVariable(name: "value", scope: !534, file: !141, line: 117, type: !128)
!546 = !DILocation(line: 117, column: 15, scope: !534)
!547 = !DILocation(line: 117, column: 23, scope: !534)
!548 = !DILocation(line: 117, column: 28, scope: !534)
!549 = !DILocation(line: 119, column: 20, scope: !550)
!550 = distinct !DILexicalBlock(scope: !534, file: !141, line: 119, column: 7)
!551 = !DILocation(line: 119, column: 7, scope: !550)
!552 = !DILocation(line: 119, column: 7, scope: !534)
!553 = !DILocation(line: 120, column: 5, scope: !550)
!554 = !DILocation(line: 121, column: 7, scope: !555)
!555 = distinct !DILexicalBlock(scope: !534, file: !141, line: 121, column: 7)
!556 = !DILocation(line: 121, column: 12, scope: !555)
!557 = !DILocation(line: 121, column: 7, scope: !534)
!558 = !DILocation(line: 122, column: 20, scope: !555)
!559 = !DILocation(line: 122, column: 5, scope: !555)
!560 = !DILocation(line: 123, column: 18, scope: !534)
!561 = !DILocation(line: 123, column: 22, scope: !534)
!562 = !DILocation(line: 123, column: 36, scope: !534)
!563 = !DILocation(line: 123, column: 29, scope: !534)
!564 = !DILocation(line: 123, column: 3, scope: !565)
!565 = !DILexicalBlockFile(scope: !534, file: !141, discriminator: 1)
!566 = !DILocation(line: 124, column: 7, scope: !567)
!567 = distinct !DILexicalBlock(scope: !534, file: !141, line: 124, column: 7)
!568 = !DILocation(line: 124, column: 12, scope: !567)
!569 = !DILocation(line: 124, column: 7, scope: !534)
!570 = !DILocation(line: 125, column: 21, scope: !567)
!571 = !DILocation(line: 125, column: 5, scope: !567)
!572 = !DILocation(line: 126, column: 1, scope: !534)
!573 = distinct !DISubprogram(name: "str_is_unset", scope: !574, file: !574, line: 41, type: !575, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !203)
!574 = !DIFile(filename: "../../lib/dpkg/string.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!575 = !DISubroutineType(types: !576)
!576 = !{!135, !128}
!577 = !DILocalVariable(name: "str", arg: 1, scope: !573, file: !574, line: 41, type: !128)
!578 = !DILocation(line: 41, column: 26, scope: !573)
!579 = !DILocation(line: 43, column: 9, scope: !573)
!580 = !DILocation(line: 43, column: 13, scope: !573)
!581 = !DILocation(line: 43, column: 20, scope: !573)
!582 = !DILocation(line: 43, column: 23, scope: !583)
!583 = !DILexicalBlockFile(scope: !573, file: !574, discriminator: 1)
!584 = !DILocation(line: 43, column: 30, scope: !583)
!585 = !DILocation(line: 43, column: 20, scope: !583)
!586 = !DILocation(line: 43, column: 2, scope: !587)
!587 = !DILexicalBlockFile(scope: !573, file: !574, discriminator: 2)
!588 = distinct !DISubprogram(name: "w_charfield", scope: !141, file: !141, line: 129, type: !211, isLocal: false, isDefinition: true, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !203)
!589 = !DILocalVariable(name: "vb", arg: 1, scope: !588, file: !141, line: 129, type: !213)
!590 = !DILocation(line: 129, column: 28, scope: !588)
!591 = !DILocalVariable(name: "pkg", arg: 2, scope: !588, file: !141, line: 130, type: !220)
!592 = !DILocation(line: 130, column: 35, scope: !588)
!593 = !DILocalVariable(name: "pkgbin", arg: 3, scope: !588, file: !141, line: 130, type: !354)
!594 = !DILocation(line: 130, column: 61, scope: !588)
!595 = !DILocalVariable(name: "flags", arg: 4, scope: !588, file: !141, line: 131, type: !73)
!596 = !DILocation(line: 131, column: 30, scope: !588)
!597 = !DILocalVariable(name: "fip", arg: 5, scope: !588, file: !141, line: 131, type: !356)
!598 = !DILocation(line: 131, column: 61, scope: !588)
!599 = !DILocalVariable(name: "value", scope: !588, file: !141, line: 133, type: !128)
!600 = !DILocation(line: 133, column: 15, scope: !588)
!601 = !DILocation(line: 133, column: 54, scope: !588)
!602 = !DILocation(line: 133, column: 42, scope: !588)
!603 = !DILocation(line: 133, column: 65, scope: !588)
!604 = !DILocation(line: 133, column: 70, scope: !588)
!605 = !DILocation(line: 133, column: 62, scope: !588)
!606 = !DILocation(line: 133, column: 25, scope: !588)
!607 = !DILocation(line: 133, column: 24, scope: !588)
!608 = !DILocation(line: 135, column: 20, scope: !609)
!609 = distinct !DILexicalBlock(scope: !588, file: !141, line: 135, column: 7)
!610 = !DILocation(line: 135, column: 7, scope: !609)
!611 = !DILocation(line: 135, column: 7, scope: !588)
!612 = !DILocation(line: 136, column: 5, scope: !609)
!613 = !DILocation(line: 137, column: 7, scope: !614)
!614 = distinct !DILexicalBlock(scope: !588, file: !141, line: 137, column: 7)
!615 = !DILocation(line: 137, column: 13, scope: !614)
!616 = !DILocation(line: 137, column: 7, scope: !588)
!617 = !DILocation(line: 138, column: 26, scope: !614)
!618 = !DILocation(line: 138, column: 30, scope: !614)
!619 = !DILocation(line: 138, column: 5, scope: !614)
!620 = !DILocation(line: 139, column: 18, scope: !588)
!621 = !DILocation(line: 139, column: 22, scope: !588)
!622 = !DILocation(line: 139, column: 36, scope: !588)
!623 = !DILocation(line: 139, column: 29, scope: !588)
!624 = !DILocation(line: 139, column: 3, scope: !625)
!625 = !DILexicalBlockFile(scope: !588, file: !141, discriminator: 1)
!626 = !DILocation(line: 140, column: 7, scope: !627)
!627 = distinct !DILexicalBlock(scope: !588, file: !141, line: 140, column: 7)
!628 = !DILocation(line: 140, column: 12, scope: !627)
!629 = !DILocation(line: 140, column: 7, scope: !588)
!630 = !DILocation(line: 141, column: 21, scope: !627)
!631 = !DILocation(line: 141, column: 5, scope: !627)
!632 = !DILocation(line: 142, column: 1, scope: !588)
!633 = distinct !DISubprogram(name: "varbuf_add_fieldname", scope: !141, file: !141, line: 50, type: !634, isLocal: true, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !203)
!634 = !DISubroutineType(types: !635)
!635 = !{null, !213, !356}
!636 = !DILocalVariable(name: "vb", arg: 1, scope: !633, file: !141, line: 50, type: !213)
!637 = !DILocation(line: 50, column: 37, scope: !633)
!638 = !DILocalVariable(name: "fip", arg: 2, scope: !633, file: !141, line: 50, type: !356)
!639 = !DILocation(line: 50, column: 65, scope: !633)
!640 = !DILocation(line: 52, column: 18, scope: !633)
!641 = !DILocation(line: 52, column: 22, scope: !633)
!642 = !DILocation(line: 52, column: 27, scope: !633)
!643 = !DILocation(line: 52, column: 40, scope: !633)
!644 = !DILocation(line: 52, column: 45, scope: !633)
!645 = !DILocation(line: 52, column: 33, scope: !633)
!646 = !DILocation(line: 52, column: 3, scope: !647)
!647 = !DILexicalBlockFile(scope: !633, file: !141, discriminator: 1)
!648 = !DILocation(line: 53, column: 18, scope: !633)
!649 = !DILocation(line: 53, column: 3, scope: !633)
!650 = !DILocation(line: 54, column: 1, scope: !633)
!651 = distinct !DISubprogram(name: "w_archives", scope: !141, file: !141, line: 145, type: !211, isLocal: false, isDefinition: true, scopeLine: 148, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !203)
!652 = !DILocalVariable(name: "vb", arg: 1, scope: !651, file: !141, line: 145, type: !213)
!653 = !DILocation(line: 145, column: 27, scope: !651)
!654 = !DILocalVariable(name: "pkg", arg: 2, scope: !651, file: !141, line: 146, type: !220)
!655 = !DILocation(line: 146, column: 34, scope: !651)
!656 = !DILocalVariable(name: "pkgbin", arg: 3, scope: !651, file: !141, line: 146, type: !354)
!657 = !DILocation(line: 146, column: 60, scope: !651)
!658 = !DILocalVariable(name: "flags", arg: 4, scope: !651, file: !141, line: 147, type: !73)
!659 = !DILocation(line: 147, column: 29, scope: !651)
!660 = !DILocalVariable(name: "fip", arg: 5, scope: !651, file: !141, line: 147, type: !356)
!661 = !DILocation(line: 147, column: 60, scope: !651)
!662 = !DILocalVariable(name: "archive", scope: !651, file: !141, line: 149, type: !315)
!663 = !DILocation(line: 149, column: 26, scope: !651)
!664 = !DILocation(line: 151, column: 7, scope: !665)
!665 = distinct !DILexicalBlock(scope: !651, file: !141, line: 151, column: 7)
!666 = !DILocation(line: 151, column: 18, scope: !665)
!667 = !DILocation(line: 151, column: 23, scope: !665)
!668 = !DILocation(line: 151, column: 14, scope: !665)
!669 = !DILocation(line: 151, column: 7, scope: !651)
!670 = !DILocation(line: 152, column: 5, scope: !665)
!671 = !DILocation(line: 153, column: 13, scope: !651)
!672 = !DILocation(line: 153, column: 18, scope: !651)
!673 = !DILocation(line: 153, column: 11, scope: !651)
!674 = !DILocation(line: 154, column: 8, scope: !675)
!675 = distinct !DILexicalBlock(scope: !651, file: !141, line: 154, column: 7)
!676 = !DILocation(line: 154, column: 16, scope: !675)
!677 = !DILocation(line: 154, column: 51, scope: !678)
!678 = !DILexicalBlockFile(scope: !675, file: !141, discriminator: 1)
!679 = !DILocation(line: 154, column: 39, scope: !678)
!680 = !DILocation(line: 154, column: 63, scope: !678)
!681 = !DILocation(line: 154, column: 68, scope: !678)
!682 = !DILocation(line: 154, column: 60, scope: !678)
!683 = !DILocation(line: 154, column: 22, scope: !678)
!684 = !DILocation(line: 154, column: 21, scope: !678)
!685 = !DILocation(line: 154, column: 20, scope: !678)
!686 = !DILocation(line: 154, column: 7, scope: !678)
!687 = !DILocation(line: 155, column: 5, scope: !675)
!688 = !DILocation(line: 157, column: 7, scope: !689)
!689 = distinct !DILexicalBlock(scope: !651, file: !141, line: 157, column: 7)
!690 = !DILocation(line: 157, column: 12, scope: !689)
!691 = !DILocation(line: 157, column: 7, scope: !651)
!692 = !DILocation(line: 158, column: 20, scope: !693)
!693 = distinct !DILexicalBlock(scope: !689, file: !141, line: 157, column: 29)
!694 = !DILocation(line: 158, column: 24, scope: !693)
!695 = !DILocation(line: 158, column: 29, scope: !693)
!696 = !DILocation(line: 158, column: 42, scope: !693)
!697 = !DILocation(line: 158, column: 47, scope: !693)
!698 = !DILocation(line: 158, column: 35, scope: !693)
!699 = !DILocation(line: 158, column: 5, scope: !700)
!700 = !DILexicalBlockFile(scope: !693, file: !141, discriminator: 1)
!701 = !DILocation(line: 159, column: 21, scope: !693)
!702 = !DILocation(line: 159, column: 5, scope: !693)
!703 = !DILocation(line: 160, column: 3, scope: !693)
!704 = !DILocation(line: 162, column: 3, scope: !651)
!705 = !DILocation(line: 162, column: 10, scope: !706)
!706 = !DILexicalBlockFile(scope: !651, file: !141, discriminator: 1)
!707 = !DILocation(line: 162, column: 3, scope: !706)
!708 = !DILocation(line: 163, column: 21, scope: !709)
!709 = distinct !DILexicalBlock(scope: !651, file: !141, line: 162, column: 19)
!710 = !DILocation(line: 163, column: 5, scope: !709)
!711 = !DILocation(line: 164, column: 20, scope: !709)
!712 = !DILocation(line: 164, column: 55, scope: !709)
!713 = !DILocation(line: 164, column: 43, scope: !709)
!714 = !DILocation(line: 164, column: 67, scope: !709)
!715 = !DILocation(line: 164, column: 72, scope: !709)
!716 = !DILocation(line: 164, column: 64, scope: !709)
!717 = !DILocation(line: 164, column: 26, scope: !709)
!718 = !DILocation(line: 164, column: 25, scope: !709)
!719 = !DILocation(line: 164, column: 122, scope: !709)
!720 = !DILocation(line: 164, column: 110, scope: !709)
!721 = !DILocation(line: 164, column: 134, scope: !709)
!722 = !DILocation(line: 164, column: 139, scope: !709)
!723 = !DILocation(line: 164, column: 131, scope: !709)
!724 = !DILocation(line: 164, column: 93, scope: !709)
!725 = !DILocation(line: 164, column: 92, scope: !709)
!726 = !DILocation(line: 164, column: 84, scope: !709)
!727 = !DILocation(line: 164, column: 5, scope: !728)
!728 = !DILexicalBlockFile(scope: !709, file: !141, discriminator: 1)
!729 = !DILocation(line: 165, column: 15, scope: !709)
!730 = !DILocation(line: 165, column: 24, scope: !709)
!731 = !DILocation(line: 165, column: 13, scope: !709)
!732 = !DILocation(line: 162, column: 3, scope: !733)
!733 = !DILexicalBlockFile(scope: !651, file: !141, discriminator: 2)
!734 = distinct !{!734, !704}
!735 = !DILocation(line: 168, column: 7, scope: !736)
!736 = distinct !DILexicalBlock(scope: !651, file: !141, line: 168, column: 7)
!737 = !DILocation(line: 168, column: 12, scope: !736)
!738 = !DILocation(line: 168, column: 7, scope: !651)
!739 = !DILocation(line: 169, column: 21, scope: !736)
!740 = !DILocation(line: 169, column: 5, scope: !736)
!741 = !DILocation(line: 170, column: 1, scope: !651)
!742 = distinct !DISubprogram(name: "w_booleandefno", scope: !141, file: !141, line: 173, type: !211, isLocal: false, isDefinition: true, scopeLine: 176, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !203)
!743 = !DILocalVariable(name: "vb", arg: 1, scope: !742, file: !141, line: 173, type: !213)
!744 = !DILocation(line: 173, column: 31, scope: !742)
!745 = !DILocalVariable(name: "pkg", arg: 2, scope: !742, file: !141, line: 174, type: !220)
!746 = !DILocation(line: 174, column: 38, scope: !742)
!747 = !DILocalVariable(name: "pkgbin", arg: 3, scope: !742, file: !141, line: 174, type: !354)
!748 = !DILocation(line: 174, column: 64, scope: !742)
!749 = !DILocalVariable(name: "flags", arg: 4, scope: !742, file: !141, line: 175, type: !73)
!750 = !DILocation(line: 175, column: 33, scope: !742)
!751 = !DILocalVariable(name: "fip", arg: 5, scope: !742, file: !141, line: 175, type: !356)
!752 = !DILocation(line: 175, column: 64, scope: !742)
!753 = !DILocalVariable(name: "value", scope: !742, file: !141, line: 177, type: !135)
!754 = !DILocation(line: 177, column: 7, scope: !742)
!755 = !DILocation(line: 177, column: 30, scope: !742)
!756 = !DILocation(line: 177, column: 18, scope: !742)
!757 = !DILocation(line: 177, column: 41, scope: !742)
!758 = !DILocation(line: 177, column: 46, scope: !742)
!759 = !DILocation(line: 177, column: 38, scope: !742)
!760 = !DILocation(line: 177, column: 17, scope: !742)
!761 = !DILocation(line: 177, column: 16, scope: !742)
!762 = !DILocation(line: 179, column: 8, scope: !763)
!763 = distinct !DILexicalBlock(scope: !742, file: !141, line: 179, column: 7)
!764 = !DILocation(line: 179, column: 14, scope: !763)
!765 = !DILocation(line: 179, column: 32, scope: !763)
!766 = !DILocation(line: 179, column: 36, scope: !767)
!767 = !DILexicalBlockFile(scope: !763, file: !141, discriminator: 1)
!768 = !DILocation(line: 179, column: 7, scope: !767)
!769 = !DILocation(line: 180, column: 5, scope: !763)
!770 = !DILocation(line: 182, column: 7, scope: !771)
!771 = distinct !DILexicalBlock(scope: !742, file: !141, line: 182, column: 7)
!772 = !DILocation(line: 182, column: 13, scope: !771)
!773 = !DILocation(line: 182, column: 7, scope: !742)
!774 = !DILocation(line: 183, column: 26, scope: !771)
!775 = !DILocation(line: 183, column: 30, scope: !771)
!776 = !DILocation(line: 183, column: 5, scope: !771)
!777 = !DILocation(line: 185, column: 18, scope: !742)
!778 = !DILocation(line: 185, column: 22, scope: !742)
!779 = !DILocation(line: 185, column: 51, scope: !742)
!780 = !DILocation(line: 185, column: 44, scope: !742)
!781 = !DILocation(line: 185, column: 3, scope: !782)
!782 = !DILexicalBlockFile(scope: !742, file: !141, discriminator: 1)
!783 = !DILocation(line: 187, column: 7, scope: !784)
!784 = distinct !DILexicalBlock(scope: !742, file: !141, line: 187, column: 7)
!785 = !DILocation(line: 187, column: 13, scope: !784)
!786 = !DILocation(line: 187, column: 7, scope: !742)
!787 = !DILocation(line: 188, column: 21, scope: !784)
!788 = !DILocation(line: 188, column: 5, scope: !784)
!789 = !DILocation(line: 189, column: 1, scope: !742)
!790 = distinct !DISubprogram(name: "w_multiarch", scope: !141, file: !141, line: 192, type: !211, isLocal: false, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !203)
!791 = !DILocalVariable(name: "vb", arg: 1, scope: !790, file: !141, line: 192, type: !213)
!792 = !DILocation(line: 192, column: 28, scope: !790)
!793 = !DILocalVariable(name: "pkg", arg: 2, scope: !790, file: !141, line: 193, type: !220)
!794 = !DILocation(line: 193, column: 35, scope: !790)
!795 = !DILocalVariable(name: "pkgbin", arg: 3, scope: !790, file: !141, line: 193, type: !354)
!796 = !DILocation(line: 193, column: 61, scope: !790)
!797 = !DILocalVariable(name: "flags", arg: 4, scope: !790, file: !141, line: 194, type: !73)
!798 = !DILocation(line: 194, column: 30, scope: !790)
!799 = !DILocalVariable(name: "fip", arg: 5, scope: !790, file: !141, line: 194, type: !356)
!800 = !DILocation(line: 194, column: 61, scope: !790)
!801 = !DILocalVariable(name: "value", scope: !790, file: !141, line: 196, type: !137)
!802 = !DILocation(line: 196, column: 7, scope: !790)
!803 = !DILocation(line: 196, column: 37, scope: !790)
!804 = !DILocation(line: 196, column: 25, scope: !790)
!805 = !DILocation(line: 196, column: 48, scope: !790)
!806 = !DILocation(line: 196, column: 53, scope: !790)
!807 = !DILocation(line: 196, column: 45, scope: !790)
!808 = !DILocation(line: 196, column: 17, scope: !790)
!809 = !DILocation(line: 196, column: 16, scope: !790)
!810 = !DILocation(line: 198, column: 8, scope: !811)
!811 = distinct !DILexicalBlock(scope: !790, file: !141, line: 198, column: 7)
!812 = !DILocation(line: 198, column: 14, scope: !811)
!813 = !DILocation(line: 198, column: 32, scope: !811)
!814 = !DILocation(line: 198, column: 36, scope: !815)
!815 = !DILexicalBlockFile(scope: !811, file: !141, discriminator: 1)
!816 = !DILocation(line: 198, column: 7, scope: !815)
!817 = !DILocation(line: 199, column: 5, scope: !811)
!818 = !DILocation(line: 201, column: 7, scope: !819)
!819 = distinct !DILexicalBlock(scope: !790, file: !141, line: 201, column: 7)
!820 = !DILocation(line: 201, column: 13, scope: !819)
!821 = !DILocation(line: 201, column: 7, scope: !790)
!822 = !DILocation(line: 202, column: 26, scope: !819)
!823 = !DILocation(line: 202, column: 30, scope: !819)
!824 = !DILocation(line: 202, column: 5, scope: !819)
!825 = !DILocation(line: 204, column: 18, scope: !790)
!826 = !DILocation(line: 204, column: 37, scope: !790)
!827 = !DILocation(line: 204, column: 22, scope: !790)
!828 = !DILocation(line: 204, column: 44, scope: !790)
!829 = !DILocation(line: 204, column: 72, scope: !790)
!830 = !DILocation(line: 204, column: 57, scope: !790)
!831 = !DILocation(line: 204, column: 79, scope: !790)
!832 = !DILocation(line: 204, column: 50, scope: !790)
!833 = !DILocation(line: 204, column: 3, scope: !834)
!834 = !DILexicalBlockFile(scope: !790, file: !141, discriminator: 1)
!835 = !DILocation(line: 206, column: 7, scope: !836)
!836 = distinct !DILexicalBlock(scope: !790, file: !141, line: 206, column: 7)
!837 = !DILocation(line: 206, column: 13, scope: !836)
!838 = !DILocation(line: 206, column: 7, scope: !790)
!839 = !DILocation(line: 207, column: 21, scope: !836)
!840 = !DILocation(line: 207, column: 5, scope: !836)
!841 = !DILocation(line: 208, column: 1, scope: !790)
!842 = distinct !DISubprogram(name: "w_architecture", scope: !141, file: !141, line: 211, type: !211, isLocal: false, isDefinition: true, scopeLine: 214, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !203)
!843 = !DILocalVariable(name: "vb", arg: 1, scope: !842, file: !141, line: 211, type: !213)
!844 = !DILocation(line: 211, column: 31, scope: !842)
!845 = !DILocalVariable(name: "pkg", arg: 2, scope: !842, file: !141, line: 212, type: !220)
!846 = !DILocation(line: 212, column: 38, scope: !842)
!847 = !DILocalVariable(name: "pkgbin", arg: 3, scope: !842, file: !141, line: 212, type: !354)
!848 = !DILocation(line: 212, column: 64, scope: !842)
!849 = !DILocalVariable(name: "flags", arg: 4, scope: !842, file: !141, line: 213, type: !73)
!850 = !DILocation(line: 213, column: 33, scope: !842)
!851 = !DILocalVariable(name: "fip", arg: 5, scope: !842, file: !141, line: 213, type: !356)
!852 = !DILocation(line: 213, column: 64, scope: !842)
!853 = !DILocation(line: 215, column: 8, scope: !854)
!854 = distinct !DILexicalBlock(scope: !842, file: !141, line: 215, column: 7)
!855 = !DILocation(line: 215, column: 16, scope: !854)
!856 = !DILocation(line: 215, column: 7, scope: !842)
!857 = !DILocation(line: 216, column: 5, scope: !854)
!858 = !DILocation(line: 217, column: 7, scope: !859)
!859 = distinct !DILexicalBlock(scope: !842, file: !141, line: 217, column: 7)
!860 = !DILocation(line: 217, column: 15, scope: !859)
!861 = !DILocation(line: 217, column: 21, scope: !859)
!862 = !DILocation(line: 217, column: 26, scope: !859)
!863 = !DILocation(line: 217, column: 7, scope: !842)
!864 = !DILocation(line: 218, column: 5, scope: !859)
!865 = !DILocation(line: 219, column: 7, scope: !866)
!866 = distinct !DILexicalBlock(scope: !842, file: !141, line: 219, column: 7)
!867 = !DILocation(line: 219, column: 15, scope: !866)
!868 = !DILocation(line: 219, column: 21, scope: !866)
!869 = !DILocation(line: 219, column: 26, scope: !866)
!870 = !DILocation(line: 219, column: 7, scope: !842)
!871 = !DILocation(line: 220, column: 5, scope: !866)
!872 = !DILocation(line: 222, column: 7, scope: !873)
!873 = distinct !DILexicalBlock(scope: !842, file: !141, line: 222, column: 7)
!874 = !DILocation(line: 222, column: 13, scope: !873)
!875 = !DILocation(line: 222, column: 7, scope: !842)
!876 = !DILocation(line: 223, column: 26, scope: !873)
!877 = !DILocation(line: 223, column: 30, scope: !873)
!878 = !DILocation(line: 223, column: 5, scope: !873)
!879 = !DILocation(line: 224, column: 18, scope: !842)
!880 = !DILocation(line: 224, column: 22, scope: !842)
!881 = !DILocation(line: 224, column: 30, scope: !842)
!882 = !DILocation(line: 224, column: 36, scope: !842)
!883 = !DILocation(line: 224, column: 49, scope: !842)
!884 = !DILocation(line: 224, column: 57, scope: !842)
!885 = !DILocation(line: 224, column: 63, scope: !842)
!886 = !DILocation(line: 224, column: 42, scope: !842)
!887 = !DILocation(line: 224, column: 3, scope: !888)
!888 = !DILexicalBlockFile(scope: !842, file: !141, discriminator: 1)
!889 = !DILocation(line: 225, column: 7, scope: !890)
!890 = distinct !DILexicalBlock(scope: !842, file: !141, line: 225, column: 7)
!891 = !DILocation(line: 225, column: 13, scope: !890)
!892 = !DILocation(line: 225, column: 7, scope: !842)
!893 = !DILocation(line: 226, column: 21, scope: !890)
!894 = !DILocation(line: 226, column: 5, scope: !890)
!895 = !DILocation(line: 227, column: 1, scope: !842)
!896 = distinct !DISubprogram(name: "w_priority", scope: !141, file: !141, line: 230, type: !211, isLocal: false, isDefinition: true, scopeLine: 233, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !203)
!897 = !DILocalVariable(name: "vb", arg: 1, scope: !896, file: !141, line: 230, type: !213)
!898 = !DILocation(line: 230, column: 27, scope: !896)
!899 = !DILocalVariable(name: "pkg", arg: 2, scope: !896, file: !141, line: 231, type: !220)
!900 = !DILocation(line: 231, column: 34, scope: !896)
!901 = !DILocalVariable(name: "pkgbin", arg: 3, scope: !896, file: !141, line: 231, type: !354)
!902 = !DILocation(line: 231, column: 60, scope: !896)
!903 = !DILocalVariable(name: "flags", arg: 4, scope: !896, file: !141, line: 232, type: !73)
!904 = !DILocation(line: 232, column: 29, scope: !896)
!905 = !DILocalVariable(name: "fip", arg: 5, scope: !896, file: !141, line: 232, type: !356)
!906 = !DILocation(line: 232, column: 60, scope: !896)
!907 = !DILocation(line: 234, column: 7, scope: !908)
!908 = distinct !DILexicalBlock(scope: !896, file: !141, line: 234, column: 7)
!909 = !DILocation(line: 234, column: 12, scope: !908)
!910 = !DILocation(line: 234, column: 21, scope: !908)
!911 = !DILocation(line: 234, column: 7, scope: !896)
!912 = !DILocation(line: 235, column: 5, scope: !908)
!913 = !DILocation(line: 237, column: 7, scope: !914)
!914 = distinct !DILexicalBlock(scope: !896, file: !141, line: 237, column: 7)
!915 = !DILocation(line: 237, column: 12, scope: !914)
!916 = !DILocation(line: 237, column: 21, scope: !914)
!917 = !DILocation(line: 237, column: 7, scope: !896)
!918 = !DILocation(line: 238, column: 78, scope: !914)
!919 = !DILocation(line: 238, column: 83, scope: !914)
!920 = !DILocation(line: 238, column: 60, scope: !914)
!921 = !DILocation(line: 238, column: 105, scope: !914)
!922 = !DILocation(line: 238, column: 110, scope: !914)
!923 = !DILocation(line: 238, column: 5, scope: !924)
!924 = !DILexicalBlockFile(scope: !914, file: !141, discriminator: 1)
!925 = !DILocation(line: 238, column: 5, scope: !914)
!926 = !DILocation(line: 241, column: 7, scope: !927)
!927 = distinct !DILexicalBlock(scope: !896, file: !141, line: 241, column: 7)
!928 = !DILocation(line: 241, column: 12, scope: !927)
!929 = !DILocation(line: 241, column: 7, scope: !896)
!930 = !DILocation(line: 242, column: 20, scope: !927)
!931 = !DILocation(line: 242, column: 5, scope: !927)
!932 = !DILocation(line: 243, column: 18, scope: !896)
!933 = !DILocation(line: 243, column: 40, scope: !896)
!934 = !DILocation(line: 243, column: 22, scope: !896)
!935 = !DILocation(line: 243, column: 71, scope: !896)
!936 = !DILocation(line: 243, column: 53, scope: !937)
!937 = !DILexicalBlockFile(scope: !896, file: !141, discriminator: 1)
!938 = !DILocation(line: 243, column: 46, scope: !939)
!939 = !DILexicalBlockFile(scope: !896, file: !141, discriminator: 2)
!940 = !DILocation(line: 243, column: 3, scope: !941)
!941 = !DILexicalBlockFile(scope: !896, file: !141, discriminator: 3)
!942 = !DILocation(line: 244, column: 7, scope: !943)
!943 = distinct !DILexicalBlock(scope: !896, file: !141, line: 244, column: 7)
!944 = !DILocation(line: 244, column: 12, scope: !943)
!945 = !DILocation(line: 244, column: 7, scope: !896)
!946 = !DILocation(line: 245, column: 21, scope: !943)
!947 = !DILocation(line: 245, column: 5, scope: !943)
!948 = !DILocation(line: 246, column: 1, scope: !896)
!949 = distinct !DISubprogram(name: "w_status", scope: !141, file: !141, line: 249, type: !211, isLocal: false, isDefinition: true, scopeLine: 252, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !203)
!950 = !DILocalVariable(name: "vb", arg: 1, scope: !949, file: !141, line: 249, type: !213)
!951 = !DILocation(line: 249, column: 25, scope: !949)
!952 = !DILocalVariable(name: "pkg", arg: 2, scope: !949, file: !141, line: 250, type: !220)
!953 = !DILocation(line: 250, column: 32, scope: !949)
!954 = !DILocalVariable(name: "pkgbin", arg: 3, scope: !949, file: !141, line: 250, type: !354)
!955 = !DILocation(line: 250, column: 58, scope: !949)
!956 = !DILocalVariable(name: "flags", arg: 4, scope: !949, file: !141, line: 251, type: !73)
!957 = !DILocation(line: 251, column: 27, scope: !949)
!958 = !DILocalVariable(name: "fip", arg: 5, scope: !949, file: !141, line: 251, type: !356)
!959 = !DILocation(line: 251, column: 58, scope: !949)
!960 = !DILocation(line: 253, column: 7, scope: !961)
!961 = distinct !DILexicalBlock(scope: !949, file: !141, line: 253, column: 7)
!962 = !DILocation(line: 253, column: 18, scope: !961)
!963 = !DILocation(line: 253, column: 23, scope: !961)
!964 = !DILocation(line: 253, column: 14, scope: !961)
!965 = !DILocation(line: 253, column: 7, scope: !949)
!966 = !DILocation(line: 254, column: 5, scope: !961)
!967 = !DILocation(line: 256, column: 7, scope: !968)
!968 = distinct !DILexicalBlock(scope: !949, file: !141, line: 256, column: 7)
!969 = !DILocation(line: 256, column: 12, scope: !968)
!970 = !DILocation(line: 256, column: 17, scope: !968)
!971 = !DILocation(line: 256, column: 7, scope: !949)
!972 = !DILocation(line: 257, column: 75, scope: !968)
!973 = !DILocation(line: 257, column: 80, scope: !968)
!974 = !DILocation(line: 257, column: 57, scope: !968)
!975 = !DILocation(line: 257, column: 102, scope: !968)
!976 = !DILocation(line: 257, column: 107, scope: !968)
!977 = !DILocation(line: 257, column: 5, scope: !978)
!978 = !DILexicalBlockFile(scope: !968, file: !141, discriminator: 1)
!979 = !DILocation(line: 257, column: 5, scope: !968)
!980 = !DILocation(line: 259, column: 7, scope: !981)
!981 = distinct !DILexicalBlock(scope: !949, file: !141, line: 259, column: 7)
!982 = !DILocation(line: 259, column: 12, scope: !981)
!983 = !DILocation(line: 259, column: 18, scope: !981)
!984 = !DILocation(line: 259, column: 7, scope: !949)
!985 = !DILocation(line: 260, column: 76, scope: !981)
!986 = !DILocation(line: 260, column: 81, scope: !981)
!987 = !DILocation(line: 260, column: 58, scope: !981)
!988 = !DILocation(line: 260, column: 103, scope: !981)
!989 = !DILocation(line: 260, column: 108, scope: !981)
!990 = !DILocation(line: 260, column: 5, scope: !991)
!991 = !DILexicalBlockFile(scope: !981, file: !141, discriminator: 1)
!992 = !DILocation(line: 260, column: 5, scope: !981)
!993 = !DILocation(line: 263, column: 11, scope: !949)
!994 = !DILocation(line: 263, column: 16, scope: !949)
!995 = !DILocation(line: 263, column: 3, scope: !949)
!996 = !DILocation(line: 266, column: 9, scope: !997)
!997 = distinct !DILexicalBlock(scope: !998, file: !141, line: 266, column: 9)
!998 = distinct !DILexicalBlock(scope: !949, file: !141, line: 263, column: 24)
!999 = !DILocation(line: 266, column: 14, scope: !997)
!1000 = !DILocation(line: 266, column: 28, scope: !997)
!1001 = !DILocation(line: 266, column: 31, scope: !1002)
!1002 = !DILexicalBlockFile(scope: !997, file: !141, discriminator: 1)
!1003 = !DILocation(line: 266, column: 36, scope: !1002)
!1004 = !DILocation(line: 266, column: 43, scope: !1002)
!1005 = !DILocation(line: 266, column: 9, scope: !1002)
!1006 = !DILocation(line: 267, column: 96, scope: !997)
!1007 = !DILocation(line: 267, column: 101, scope: !997)
!1008 = !DILocation(line: 267, column: 78, scope: !997)
!1009 = !DILocation(line: 267, column: 139, scope: !997)
!1010 = !DILocation(line: 267, column: 123, scope: !1002)
!1011 = !DILocation(line: 267, column: 7, scope: !1012)
!1012 = !DILexicalBlockFile(scope: !997, file: !141, discriminator: 2)
!1013 = !DILocation(line: 267, column: 7, scope: !997)
!1014 = !DILocation(line: 269, column: 5, scope: !998)
!1015 = !DILocation(line: 273, column: 9, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !998, file: !141, line: 273, column: 9)
!1017 = !DILocation(line: 273, column: 14, scope: !1016)
!1018 = !DILocation(line: 273, column: 9, scope: !998)
!1019 = !DILocation(line: 274, column: 85, scope: !1016)
!1020 = !DILocation(line: 274, column: 90, scope: !1016)
!1021 = !DILocation(line: 274, column: 67, scope: !1016)
!1022 = !DILocation(line: 274, column: 128, scope: !1016)
!1023 = !DILocation(line: 274, column: 112, scope: !1024)
!1024 = !DILexicalBlockFile(scope: !1016, file: !141, discriminator: 1)
!1025 = !DILocation(line: 274, column: 7, scope: !1026)
!1026 = !DILexicalBlockFile(scope: !1016, file: !141, discriminator: 2)
!1027 = !DILocation(line: 274, column: 7, scope: !1016)
!1028 = !DILocation(line: 276, column: 5, scope: !998)
!1029 = !DILocation(line: 278, column: 9, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !998, file: !141, line: 278, column: 9)
!1031 = !DILocation(line: 278, column: 14, scope: !1030)
!1032 = !DILocation(line: 278, column: 21, scope: !1030)
!1033 = !DILocation(line: 278, column: 26, scope: !1030)
!1034 = !DILocation(line: 278, column: 9, scope: !998)
!1035 = !DILocation(line: 279, column: 88, scope: !1030)
!1036 = !DILocation(line: 279, column: 93, scope: !1030)
!1037 = !DILocation(line: 279, column: 70, scope: !1030)
!1038 = !DILocation(line: 279, column: 131, scope: !1030)
!1039 = !DILocation(line: 279, column: 115, scope: !1040)
!1040 = !DILexicalBlockFile(scope: !1030, file: !141, discriminator: 1)
!1041 = !DILocation(line: 279, column: 7, scope: !1042)
!1042 = !DILexicalBlockFile(scope: !1030, file: !141, discriminator: 2)
!1043 = !DILocation(line: 279, column: 7, scope: !1030)
!1044 = !DILocation(line: 281, column: 5, scope: !998)
!1045 = !DILocation(line: 283, column: 9, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !998, file: !141, line: 283, column: 9)
!1047 = !DILocation(line: 283, column: 14, scope: !1046)
!1048 = !DILocation(line: 283, column: 28, scope: !1046)
!1049 = !DILocation(line: 283, column: 35, scope: !1046)
!1050 = !DILocation(line: 283, column: 38, scope: !1051)
!1051 = !DILexicalBlockFile(scope: !1046, file: !141, discriminator: 1)
!1052 = !DILocation(line: 283, column: 43, scope: !1051)
!1053 = !DILocation(line: 283, column: 50, scope: !1051)
!1054 = !DILocation(line: 283, column: 9, scope: !1051)
!1055 = !DILocation(line: 284, column: 99, scope: !1046)
!1056 = !DILocation(line: 284, column: 104, scope: !1046)
!1057 = !DILocation(line: 284, column: 81, scope: !1046)
!1058 = !DILocation(line: 284, column: 142, scope: !1046)
!1059 = !DILocation(line: 284, column: 126, scope: !1051)
!1060 = !DILocation(line: 284, column: 7, scope: !1061)
!1061 = !DILexicalBlockFile(scope: !1046, file: !141, discriminator: 2)
!1062 = !DILocation(line: 284, column: 7, scope: !1046)
!1063 = !DILocation(line: 286, column: 5, scope: !998)
!1064 = !DILocation(line: 288, column: 9, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !998, file: !141, line: 288, column: 9)
!1066 = !DILocation(line: 288, column: 14, scope: !1065)
!1067 = !DILocation(line: 288, column: 28, scope: !1065)
!1068 = !DILocation(line: 288, column: 31, scope: !1069)
!1069 = !DILexicalBlockFile(scope: !1065, file: !141, discriminator: 1)
!1070 = !DILocation(line: 288, column: 36, scope: !1069)
!1071 = !DILocation(line: 288, column: 43, scope: !1069)
!1072 = !DILocation(line: 288, column: 9, scope: !1069)
!1073 = !DILocation(line: 289, column: 96, scope: !1065)
!1074 = !DILocation(line: 289, column: 101, scope: !1065)
!1075 = !DILocation(line: 289, column: 78, scope: !1065)
!1076 = !DILocation(line: 289, column: 139, scope: !1065)
!1077 = !DILocation(line: 289, column: 123, scope: !1069)
!1078 = !DILocation(line: 289, column: 7, scope: !1079)
!1079 = !DILexicalBlockFile(scope: !1065, file: !141, discriminator: 2)
!1080 = !DILocation(line: 289, column: 7, scope: !1065)
!1081 = !DILocation(line: 291, column: 5, scope: !998)
!1082 = !DILocation(line: 293, column: 74, scope: !998)
!1083 = !DILocation(line: 293, column: 79, scope: !998)
!1084 = !DILocation(line: 293, column: 5, scope: !998)
!1085 = !DILocation(line: 296, column: 7, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !949, file: !141, line: 296, column: 7)
!1087 = !DILocation(line: 296, column: 12, scope: !1086)
!1088 = !DILocation(line: 296, column: 7, scope: !949)
!1089 = !DILocation(line: 297, column: 20, scope: !1086)
!1090 = !DILocation(line: 297, column: 5, scope: !1086)
!1091 = !DILocation(line: 298, column: 18, scope: !949)
!1092 = !DILocation(line: 298, column: 36, scope: !949)
!1093 = !DILocation(line: 298, column: 22, scope: !949)
!1094 = !DILocation(line: 298, column: 63, scope: !949)
!1095 = !DILocation(line: 298, column: 49, scope: !1096)
!1096 = !DILexicalBlockFile(scope: !949, file: !141, discriminator: 1)
!1097 = !DILocation(line: 298, column: 42, scope: !1098)
!1098 = !DILexicalBlockFile(scope: !949, file: !141, discriminator: 2)
!1099 = !DILocation(line: 298, column: 3, scope: !1100)
!1100 = !DILexicalBlockFile(scope: !949, file: !141, discriminator: 3)
!1101 = !DILocation(line: 299, column: 19, scope: !949)
!1102 = !DILocation(line: 299, column: 3, scope: !949)
!1103 = !DILocation(line: 300, column: 18, scope: !949)
!1104 = !DILocation(line: 300, column: 37, scope: !949)
!1105 = !DILocation(line: 300, column: 22, scope: !949)
!1106 = !DILocation(line: 300, column: 65, scope: !949)
!1107 = !DILocation(line: 300, column: 50, scope: !1096)
!1108 = !DILocation(line: 300, column: 43, scope: !1098)
!1109 = !DILocation(line: 300, column: 3, scope: !1100)
!1110 = !DILocation(line: 301, column: 19, scope: !949)
!1111 = !DILocation(line: 301, column: 3, scope: !949)
!1112 = !DILocation(line: 302, column: 18, scope: !949)
!1113 = !DILocation(line: 302, column: 38, scope: !949)
!1114 = !DILocation(line: 302, column: 22, scope: !949)
!1115 = !DILocation(line: 302, column: 67, scope: !949)
!1116 = !DILocation(line: 302, column: 51, scope: !1096)
!1117 = !DILocation(line: 302, column: 44, scope: !1098)
!1118 = !DILocation(line: 302, column: 3, scope: !1100)
!1119 = !DILocation(line: 303, column: 7, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !949, file: !141, line: 303, column: 7)
!1121 = !DILocation(line: 303, column: 12, scope: !1120)
!1122 = !DILocation(line: 303, column: 7, scope: !949)
!1123 = !DILocation(line: 304, column: 21, scope: !1120)
!1124 = !DILocation(line: 304, column: 5, scope: !1120)
!1125 = !DILocation(line: 305, column: 1, scope: !949)
!1126 = distinct !DISubprogram(name: "varbufdependency", scope: !141, file: !141, line: 307, type: !1127, isLocal: false, isDefinition: true, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !203)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{null, !213, !239}
!1129 = !DILocalVariable(name: "vb", arg: 1, scope: !1126, file: !141, line: 307, type: !213)
!1130 = !DILocation(line: 307, column: 38, scope: !1126)
!1131 = !DILocalVariable(name: "dep", arg: 2, scope: !1126, file: !141, line: 307, type: !239)
!1132 = !DILocation(line: 307, column: 61, scope: !1126)
!1133 = !DILocalVariable(name: "dop", scope: !1126, file: !141, line: 308, type: !235)
!1134 = !DILocation(line: 308, column: 20, scope: !1126)
!1135 = !DILocalVariable(name: "possdel", scope: !1126, file: !141, line: 309, type: !128)
!1136 = !DILocation(line: 309, column: 15, scope: !1126)
!1137 = !DILocation(line: 311, column: 10, scope: !1126)
!1138 = !DILocation(line: 312, column: 13, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1126, file: !141, line: 312, column: 3)
!1140 = !DILocation(line: 312, column: 18, scope: !1139)
!1141 = !DILocation(line: 312, column: 11, scope: !1139)
!1142 = !DILocation(line: 312, column: 8, scope: !1139)
!1143 = !DILocation(line: 312, column: 24, scope: !1144)
!1144 = !DILexicalBlockFile(scope: !1145, file: !141, discriminator: 1)
!1145 = distinct !DILexicalBlock(scope: !1139, file: !141, line: 312, column: 3)
!1146 = !DILocation(line: 312, column: 3, scope: !1144)
!1147 = !DILocation(line: 313, column: 9, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1149, file: !141, line: 313, column: 9)
!1149 = distinct !DILexicalBlock(scope: !1145, file: !141, line: 312, column: 45)
!1150 = !DILocation(line: 313, column: 14, scope: !1148)
!1151 = !DILocation(line: 313, column: 20, scope: !1148)
!1152 = !DILocation(line: 313, column: 17, scope: !1148)
!1153 = !DILocation(line: 313, column: 9, scope: !1149)
!1154 = !DILocation(line: 314, column: 7, scope: !1148)
!1155 = !DILocation(line: 316, column: 20, scope: !1149)
!1156 = !DILocation(line: 316, column: 24, scope: !1149)
!1157 = !DILocation(line: 316, column: 40, scope: !1149)
!1158 = !DILocation(line: 316, column: 33, scope: !1149)
!1159 = !DILocation(line: 316, column: 5, scope: !1160)
!1160 = !DILexicalBlockFile(scope: !1149, file: !141, discriminator: 1)
!1161 = !DILocation(line: 317, column: 13, scope: !1149)
!1162 = !DILocation(line: 318, column: 20, scope: !1149)
!1163 = !DILocation(line: 318, column: 24, scope: !1149)
!1164 = !DILocation(line: 318, column: 29, scope: !1149)
!1165 = !DILocation(line: 318, column: 33, scope: !1149)
!1166 = !DILocation(line: 318, column: 46, scope: !1149)
!1167 = !DILocation(line: 318, column: 51, scope: !1149)
!1168 = !DILocation(line: 318, column: 55, scope: !1149)
!1169 = !DILocation(line: 318, column: 39, scope: !1149)
!1170 = !DILocation(line: 318, column: 5, scope: !1160)
!1171 = !DILocation(line: 319, column: 10, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1149, file: !141, line: 319, column: 9)
!1173 = !DILocation(line: 319, column: 15, scope: !1172)
!1174 = !DILocation(line: 319, column: 9, scope: !1149)
!1175 = !DILocation(line: 320, column: 27, scope: !1172)
!1176 = !DILocation(line: 320, column: 31, scope: !1172)
!1177 = !DILocation(line: 320, column: 36, scope: !1172)
!1178 = !DILocation(line: 320, column: 7, scope: !1172)
!1179 = !DILocation(line: 321, column: 9, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1149, file: !141, line: 321, column: 9)
!1181 = !DILocation(line: 321, column: 14, scope: !1180)
!1182 = !DILocation(line: 321, column: 21, scope: !1180)
!1183 = !DILocation(line: 321, column: 9, scope: !1149)
!1184 = !DILocation(line: 322, column: 22, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1180, file: !141, line: 321, column: 44)
!1186 = !DILocation(line: 322, column: 7, scope: !1185)
!1187 = !DILocation(line: 323, column: 15, scope: !1185)
!1188 = !DILocation(line: 323, column: 20, scope: !1185)
!1189 = !DILocation(line: 323, column: 7, scope: !1185)
!1190 = !DILocation(line: 325, column: 25, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1185, file: !141, line: 323, column: 28)
!1192 = !DILocation(line: 325, column: 9, scope: !1191)
!1193 = !DILocation(line: 326, column: 9, scope: !1191)
!1194 = !DILocation(line: 328, column: 24, scope: !1191)
!1195 = !DILocation(line: 328, column: 9, scope: !1191)
!1196 = !DILocation(line: 329, column: 9, scope: !1191)
!1197 = !DILocation(line: 331, column: 24, scope: !1191)
!1198 = !DILocation(line: 331, column: 9, scope: !1191)
!1199 = !DILocation(line: 332, column: 9, scope: !1191)
!1200 = !DILocation(line: 334, column: 24, scope: !1191)
!1201 = !DILocation(line: 334, column: 9, scope: !1191)
!1202 = !DILocation(line: 335, column: 9, scope: !1191)
!1203 = !DILocation(line: 337, column: 24, scope: !1191)
!1204 = !DILocation(line: 337, column: 9, scope: !1191)
!1205 = !DILocation(line: 338, column: 9, scope: !1191)
!1206 = !DILocation(line: 340, column: 75, scope: !1191)
!1207 = !DILocation(line: 340, column: 80, scope: !1191)
!1208 = !DILocation(line: 340, column: 9, scope: !1191)
!1209 = !DILocation(line: 342, column: 23, scope: !1185)
!1210 = !DILocation(line: 342, column: 7, scope: !1185)
!1211 = !DILocation(line: 343, column: 21, scope: !1185)
!1212 = !DILocation(line: 343, column: 25, scope: !1185)
!1213 = !DILocation(line: 343, column: 30, scope: !1185)
!1214 = !DILocation(line: 343, column: 7, scope: !1185)
!1215 = !DILocation(line: 344, column: 23, scope: !1185)
!1216 = !DILocation(line: 344, column: 7, scope: !1185)
!1217 = !DILocation(line: 345, column: 5, scope: !1185)
!1218 = !DILocation(line: 346, column: 3, scope: !1149)
!1219 = !DILocation(line: 312, column: 34, scope: !1220)
!1220 = !DILexicalBlockFile(scope: !1145, file: !141, discriminator: 2)
!1221 = !DILocation(line: 312, column: 39, scope: !1220)
!1222 = !DILocation(line: 312, column: 32, scope: !1220)
!1223 = !DILocation(line: 312, column: 3, scope: !1220)
!1224 = distinct !{!1224, !1225}
!1225 = !DILocation(line: 312, column: 3, scope: !1126)
!1226 = !DILocation(line: 347, column: 1, scope: !1126)
!1227 = distinct !DISubprogram(name: "w_dependency", scope: !141, file: !141, line: 350, type: !211, isLocal: false, isDefinition: true, scopeLine: 353, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !203)
!1228 = !DILocalVariable(name: "vb", arg: 1, scope: !1227, file: !141, line: 350, type: !213)
!1229 = !DILocation(line: 350, column: 29, scope: !1227)
!1230 = !DILocalVariable(name: "pkg", arg: 2, scope: !1227, file: !141, line: 351, type: !220)
!1231 = !DILocation(line: 351, column: 36, scope: !1227)
!1232 = !DILocalVariable(name: "pkgbin", arg: 3, scope: !1227, file: !141, line: 351, type: !354)
!1233 = !DILocation(line: 351, column: 62, scope: !1227)
!1234 = !DILocalVariable(name: "flags", arg: 4, scope: !1227, file: !141, line: 352, type: !73)
!1235 = !DILocation(line: 352, column: 31, scope: !1227)
!1236 = !DILocalVariable(name: "fip", arg: 5, scope: !1227, file: !141, line: 352, type: !356)
!1237 = !DILocation(line: 352, column: 62, scope: !1227)
!1238 = !DILocalVariable(name: "dyp", scope: !1227, file: !141, line: 354, type: !239)
!1239 = !DILocation(line: 354, column: 22, scope: !1227)
!1240 = !DILocalVariable(name: "dep_found", scope: !1227, file: !141, line: 355, type: !135)
!1241 = !DILocation(line: 355, column: 7, scope: !1227)
!1242 = !DILocation(line: 357, column: 14, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1227, file: !141, line: 357, column: 3)
!1244 = !DILocation(line: 357, column: 22, scope: !1243)
!1245 = !DILocation(line: 357, column: 12, scope: !1243)
!1246 = !DILocation(line: 357, column: 8, scope: !1243)
!1247 = !DILocation(line: 357, column: 31, scope: !1248)
!1248 = !DILexicalBlockFile(scope: !1249, file: !141, discriminator: 1)
!1249 = distinct !DILexicalBlock(scope: !1243, file: !141, line: 357, column: 3)
!1250 = !DILocation(line: 357, column: 3, scope: !1248)
!1251 = !DILocation(line: 358, column: 9, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1253, file: !141, line: 358, column: 9)
!1253 = distinct !DILexicalBlock(scope: !1249, file: !141, line: 357, column: 53)
!1254 = !DILocation(line: 358, column: 14, scope: !1252)
!1255 = !DILocation(line: 358, column: 22, scope: !1252)
!1256 = !DILocation(line: 358, column: 27, scope: !1252)
!1257 = !DILocation(line: 358, column: 19, scope: !1252)
!1258 = !DILocation(line: 358, column: 9, scope: !1253)
!1259 = !DILocation(line: 358, column: 36, scope: !1260)
!1260 = !DILexicalBlockFile(scope: !1252, file: !141, discriminator: 1)
!1261 = !DILocation(line: 360, column: 9, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1253, file: !141, line: 360, column: 9)
!1263 = !DILocation(line: 360, column: 14, scope: !1262)
!1264 = !DILocation(line: 360, column: 20, scope: !1262)
!1265 = !DILocation(line: 360, column: 17, scope: !1262)
!1266 = !DILocation(line: 360, column: 9, scope: !1253)
!1267 = !DILocation(line: 361, column: 86, scope: !1262)
!1268 = !DILocation(line: 361, column: 91, scope: !1262)
!1269 = !DILocation(line: 361, column: 68, scope: !1262)
!1270 = !DILocation(line: 361, column: 7, scope: !1271)
!1271 = !DILexicalBlockFile(scope: !1262, file: !141, discriminator: 1)
!1272 = !DILocation(line: 361, column: 7, scope: !1262)
!1273 = !DILocation(line: 364, column: 9, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1253, file: !141, line: 364, column: 9)
!1275 = !DILocation(line: 364, column: 9, scope: !1253)
!1276 = !DILocation(line: 365, column: 22, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1274, file: !141, line: 364, column: 20)
!1278 = !DILocation(line: 365, column: 7, scope: !1277)
!1279 = !DILocation(line: 366, column: 5, scope: !1277)
!1280 = !DILocation(line: 367, column: 11, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1282, file: !141, line: 367, column: 11)
!1282 = distinct !DILexicalBlock(scope: !1274, file: !141, line: 366, column: 12)
!1283 = !DILocation(line: 367, column: 17, scope: !1281)
!1284 = !DILocation(line: 367, column: 11, scope: !1282)
!1285 = !DILocation(line: 368, column: 30, scope: !1281)
!1286 = !DILocation(line: 368, column: 34, scope: !1281)
!1287 = !DILocation(line: 368, column: 9, scope: !1281)
!1288 = !DILocation(line: 369, column: 17, scope: !1282)
!1289 = !DILocation(line: 371, column: 22, scope: !1253)
!1290 = !DILocation(line: 371, column: 25, scope: !1253)
!1291 = !DILocation(line: 371, column: 5, scope: !1253)
!1292 = !DILocation(line: 372, column: 3, scope: !1253)
!1293 = !DILocation(line: 357, column: 42, scope: !1294)
!1294 = !DILexicalBlockFile(scope: !1249, file: !141, discriminator: 2)
!1295 = !DILocation(line: 357, column: 47, scope: !1294)
!1296 = !DILocation(line: 357, column: 40, scope: !1294)
!1297 = !DILocation(line: 357, column: 3, scope: !1294)
!1298 = distinct !{!1298, !1299}
!1299 = !DILocation(line: 357, column: 3, scope: !1227)
!1300 = !DILocation(line: 373, column: 8, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1227, file: !141, line: 373, column: 7)
!1302 = !DILocation(line: 373, column: 14, scope: !1301)
!1303 = !DILocation(line: 373, column: 32, scope: !1301)
!1304 = !DILocation(line: 373, column: 35, scope: !1305)
!1305 = !DILexicalBlockFile(scope: !1301, file: !141, discriminator: 1)
!1306 = !DILocation(line: 373, column: 7, scope: !1305)
!1307 = !DILocation(line: 374, column: 21, scope: !1301)
!1308 = !DILocation(line: 374, column: 5, scope: !1301)
!1309 = !DILocation(line: 375, column: 1, scope: !1227)
!1310 = distinct !DISubprogram(name: "w_conffiles", scope: !141, file: !141, line: 378, type: !211, isLocal: false, isDefinition: true, scopeLine: 381, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !203)
!1311 = !DILocalVariable(name: "vb", arg: 1, scope: !1310, file: !141, line: 378, type: !213)
!1312 = !DILocation(line: 378, column: 28, scope: !1310)
!1313 = !DILocalVariable(name: "pkg", arg: 2, scope: !1310, file: !141, line: 379, type: !220)
!1314 = !DILocation(line: 379, column: 35, scope: !1310)
!1315 = !DILocalVariable(name: "pkgbin", arg: 3, scope: !1310, file: !141, line: 379, type: !354)
!1316 = !DILocation(line: 379, column: 61, scope: !1310)
!1317 = !DILocalVariable(name: "flags", arg: 4, scope: !1310, file: !141, line: 380, type: !73)
!1318 = !DILocation(line: 380, column: 30, scope: !1310)
!1319 = !DILocalVariable(name: "fip", arg: 5, scope: !1310, file: !141, line: 380, type: !356)
!1320 = !DILocation(line: 380, column: 61, scope: !1310)
!1321 = !DILocalVariable(name: "i", scope: !1310, file: !141, line: 382, type: !296)
!1322 = !DILocation(line: 382, column: 20, scope: !1310)
!1323 = !DILocation(line: 384, column: 8, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1310, file: !141, line: 384, column: 7)
!1325 = !DILocation(line: 384, column: 16, scope: !1324)
!1326 = !DILocation(line: 384, column: 26, scope: !1324)
!1327 = !DILocation(line: 384, column: 29, scope: !1328)
!1328 = !DILexicalBlockFile(scope: !1324, file: !141, discriminator: 1)
!1329 = !DILocation(line: 384, column: 40, scope: !1328)
!1330 = !DILocation(line: 384, column: 45, scope: !1328)
!1331 = !DILocation(line: 384, column: 36, scope: !1328)
!1332 = !DILocation(line: 384, column: 7, scope: !1328)
!1333 = !DILocation(line: 385, column: 5, scope: !1324)
!1334 = !DILocation(line: 386, column: 7, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1310, file: !141, line: 386, column: 7)
!1336 = !DILocation(line: 386, column: 12, scope: !1335)
!1337 = !DILocation(line: 386, column: 7, scope: !1310)
!1338 = !DILocation(line: 387, column: 20, scope: !1335)
!1339 = !DILocation(line: 387, column: 5, scope: !1335)
!1340 = !DILocation(line: 388, column: 12, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1310, file: !141, line: 388, column: 3)
!1342 = !DILocation(line: 388, column: 20, scope: !1341)
!1343 = !DILocation(line: 388, column: 10, scope: !1341)
!1344 = !DILocation(line: 388, column: 8, scope: !1341)
!1345 = !DILocation(line: 388, column: 31, scope: !1346)
!1346 = !DILexicalBlockFile(scope: !1347, file: !141, discriminator: 1)
!1347 = distinct !DILexicalBlock(scope: !1341, file: !141, line: 388, column: 3)
!1348 = !DILocation(line: 388, column: 3, scope: !1346)
!1349 = !DILocation(line: 389, column: 9, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1351, file: !141, line: 389, column: 9)
!1351 = distinct !DILexicalBlock(scope: !1347, file: !141, line: 388, column: 47)
!1352 = !DILocation(line: 389, column: 14, scope: !1350)
!1353 = !DILocation(line: 389, column: 22, scope: !1350)
!1354 = !DILocation(line: 389, column: 11, scope: !1350)
!1355 = !DILocation(line: 389, column: 9, scope: !1351)
!1356 = !DILocation(line: 390, column: 23, scope: !1350)
!1357 = !DILocation(line: 390, column: 7, scope: !1350)
!1358 = !DILocation(line: 391, column: 21, scope: !1351)
!1359 = !DILocation(line: 391, column: 5, scope: !1351)
!1360 = !DILocation(line: 392, column: 20, scope: !1351)
!1361 = !DILocation(line: 392, column: 24, scope: !1351)
!1362 = !DILocation(line: 392, column: 27, scope: !1351)
!1363 = !DILocation(line: 392, column: 40, scope: !1351)
!1364 = !DILocation(line: 392, column: 43, scope: !1351)
!1365 = !DILocation(line: 392, column: 33, scope: !1351)
!1366 = !DILocation(line: 392, column: 5, scope: !1367)
!1367 = !DILexicalBlockFile(scope: !1351, file: !141, discriminator: 1)
!1368 = !DILocation(line: 393, column: 21, scope: !1351)
!1369 = !DILocation(line: 393, column: 5, scope: !1351)
!1370 = !DILocation(line: 394, column: 20, scope: !1351)
!1371 = !DILocation(line: 394, column: 24, scope: !1351)
!1372 = !DILocation(line: 394, column: 27, scope: !1351)
!1373 = !DILocation(line: 394, column: 40, scope: !1351)
!1374 = !DILocation(line: 394, column: 43, scope: !1351)
!1375 = !DILocation(line: 394, column: 33, scope: !1351)
!1376 = !DILocation(line: 394, column: 5, scope: !1367)
!1377 = !DILocation(line: 395, column: 9, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1351, file: !141, line: 395, column: 9)
!1379 = !DILocation(line: 395, column: 12, scope: !1378)
!1380 = !DILocation(line: 395, column: 9, scope: !1351)
!1381 = !DILocation(line: 396, column: 22, scope: !1378)
!1382 = !DILocation(line: 396, column: 7, scope: !1378)
!1383 = !DILocation(line: 397, column: 3, scope: !1351)
!1384 = !DILocation(line: 388, column: 38, scope: !1385)
!1385 = !DILexicalBlockFile(scope: !1347, file: !141, discriminator: 2)
!1386 = !DILocation(line: 388, column: 41, scope: !1385)
!1387 = !DILocation(line: 388, column: 36, scope: !1385)
!1388 = !DILocation(line: 388, column: 3, scope: !1385)
!1389 = distinct !{!1389, !1390}
!1390 = !DILocation(line: 388, column: 3, scope: !1310)
!1391 = !DILocation(line: 398, column: 7, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1310, file: !141, line: 398, column: 7)
!1393 = !DILocation(line: 398, column: 12, scope: !1392)
!1394 = !DILocation(line: 398, column: 7, scope: !1310)
!1395 = !DILocation(line: 399, column: 21, scope: !1392)
!1396 = !DILocation(line: 399, column: 5, scope: !1392)
!1397 = !DILocation(line: 400, column: 1, scope: !1310)
!1398 = distinct !DISubprogram(name: "w_trigpend", scope: !141, file: !141, line: 403, type: !211, isLocal: false, isDefinition: true, scopeLine: 406, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !203)
!1399 = !DILocalVariable(name: "vb", arg: 1, scope: !1398, file: !141, line: 403, type: !213)
!1400 = !DILocation(line: 403, column: 27, scope: !1398)
!1401 = !DILocalVariable(name: "pkg", arg: 2, scope: !1398, file: !141, line: 404, type: !220)
!1402 = !DILocation(line: 404, column: 34, scope: !1398)
!1403 = !DILocalVariable(name: "pkgbin", arg: 3, scope: !1398, file: !141, line: 404, type: !354)
!1404 = !DILocation(line: 404, column: 60, scope: !1398)
!1405 = !DILocalVariable(name: "flags", arg: 4, scope: !1398, file: !141, line: 405, type: !73)
!1406 = !DILocation(line: 405, column: 29, scope: !1398)
!1407 = !DILocalVariable(name: "fip", arg: 5, scope: !1398, file: !141, line: 405, type: !356)
!1408 = !DILocation(line: 405, column: 60, scope: !1398)
!1409 = !DILocalVariable(name: "tp", scope: !1398, file: !141, line: 407, type: !341)
!1410 = !DILocation(line: 407, column: 20, scope: !1398)
!1411 = !DILocation(line: 409, column: 7, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1398, file: !141, line: 409, column: 7)
!1413 = !DILocation(line: 409, column: 18, scope: !1412)
!1414 = !DILocation(line: 409, column: 23, scope: !1412)
!1415 = !DILocation(line: 409, column: 14, scope: !1412)
!1416 = !DILocation(line: 409, column: 33, scope: !1412)
!1417 = !DILocation(line: 409, column: 37, scope: !1418)
!1418 = !DILexicalBlockFile(scope: !1412, file: !141, discriminator: 1)
!1419 = !DILocation(line: 409, column: 42, scope: !1418)
!1420 = !DILocation(line: 409, column: 7, scope: !1418)
!1421 = !DILocation(line: 410, column: 5, scope: !1412)
!1422 = !DILocation(line: 412, column: 7, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1398, file: !141, line: 412, column: 7)
!1424 = !DILocation(line: 412, column: 12, scope: !1423)
!1425 = !DILocation(line: 412, column: 19, scope: !1423)
!1426 = !DILocation(line: 412, column: 46, scope: !1423)
!1427 = !DILocation(line: 413, column: 7, scope: !1423)
!1428 = !DILocation(line: 413, column: 12, scope: !1423)
!1429 = !DILocation(line: 413, column: 19, scope: !1423)
!1430 = !DILocation(line: 412, column: 7, scope: !1431)
!1431 = !DILexicalBlockFile(scope: !1398, file: !141, discriminator: 1)
!1432 = !DILocation(line: 414, column: 95, scope: !1423)
!1433 = !DILocation(line: 414, column: 100, scope: !1423)
!1434 = !DILocation(line: 414, column: 77, scope: !1423)
!1435 = !DILocation(line: 414, column: 138, scope: !1423)
!1436 = !DILocation(line: 414, column: 122, scope: !1437)
!1437 = !DILexicalBlockFile(scope: !1423, file: !141, discriminator: 1)
!1438 = !DILocation(line: 414, column: 5, scope: !1439)
!1439 = !DILexicalBlockFile(scope: !1423, file: !141, discriminator: 2)
!1440 = !DILocation(line: 414, column: 5, scope: !1423)
!1441 = !DILocation(line: 417, column: 7, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1398, file: !141, line: 417, column: 7)
!1443 = !DILocation(line: 417, column: 13, scope: !1442)
!1444 = !DILocation(line: 417, column: 7, scope: !1398)
!1445 = !DILocation(line: 418, column: 20, scope: !1442)
!1446 = !DILocation(line: 418, column: 5, scope: !1442)
!1447 = !DILocation(line: 419, column: 13, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1398, file: !141, line: 419, column: 3)
!1449 = !DILocation(line: 419, column: 18, scope: !1448)
!1450 = !DILocation(line: 419, column: 11, scope: !1448)
!1451 = !DILocation(line: 419, column: 8, scope: !1448)
!1452 = !DILocation(line: 419, column: 33, scope: !1453)
!1453 = !DILexicalBlockFile(scope: !1454, file: !141, discriminator: 1)
!1454 = distinct !DILexicalBlock(scope: !1448, file: !141, line: 419, column: 3)
!1455 = !DILocation(line: 419, column: 3, scope: !1453)
!1456 = !DILocation(line: 420, column: 21, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1454, file: !141, line: 419, column: 52)
!1458 = !DILocation(line: 420, column: 5, scope: !1457)
!1459 = !DILocation(line: 421, column: 20, scope: !1457)
!1460 = !DILocation(line: 421, column: 24, scope: !1457)
!1461 = !DILocation(line: 421, column: 28, scope: !1457)
!1462 = !DILocation(line: 421, column: 41, scope: !1457)
!1463 = !DILocation(line: 421, column: 45, scope: !1457)
!1464 = !DILocation(line: 421, column: 34, scope: !1457)
!1465 = !DILocation(line: 421, column: 5, scope: !1466)
!1466 = !DILexicalBlockFile(scope: !1457, file: !141, discriminator: 1)
!1467 = !DILocation(line: 422, column: 3, scope: !1457)
!1468 = !DILocation(line: 419, column: 42, scope: !1469)
!1469 = !DILexicalBlockFile(scope: !1454, file: !141, discriminator: 2)
!1470 = !DILocation(line: 419, column: 46, scope: !1469)
!1471 = !DILocation(line: 419, column: 40, scope: !1469)
!1472 = !DILocation(line: 419, column: 3, scope: !1469)
!1473 = distinct !{!1473, !1474}
!1474 = !DILocation(line: 419, column: 3, scope: !1398)
!1475 = !DILocation(line: 423, column: 7, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1398, file: !141, line: 423, column: 7)
!1477 = !DILocation(line: 423, column: 13, scope: !1476)
!1478 = !DILocation(line: 423, column: 7, scope: !1398)
!1479 = !DILocation(line: 424, column: 21, scope: !1476)
!1480 = !DILocation(line: 424, column: 5, scope: !1476)
!1481 = !DILocation(line: 425, column: 1, scope: !1398)
!1482 = distinct !DISubprogram(name: "w_trigaw", scope: !141, file: !141, line: 428, type: !211, isLocal: false, isDefinition: true, scopeLine: 431, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !203)
!1483 = !DILocalVariable(name: "vb", arg: 1, scope: !1482, file: !141, line: 428, type: !213)
!1484 = !DILocation(line: 428, column: 25, scope: !1482)
!1485 = !DILocalVariable(name: "pkg", arg: 2, scope: !1482, file: !141, line: 429, type: !220)
!1486 = !DILocation(line: 429, column: 32, scope: !1482)
!1487 = !DILocalVariable(name: "pkgbin", arg: 3, scope: !1482, file: !141, line: 429, type: !354)
!1488 = !DILocation(line: 429, column: 58, scope: !1482)
!1489 = !DILocalVariable(name: "flags", arg: 4, scope: !1482, file: !141, line: 430, type: !73)
!1490 = !DILocation(line: 430, column: 27, scope: !1482)
!1491 = !DILocalVariable(name: "fip", arg: 5, scope: !1482, file: !141, line: 430, type: !356)
!1492 = !DILocation(line: 430, column: 58, scope: !1482)
!1493 = !DILocalVariable(name: "ta", scope: !1482, file: !141, line: 432, type: !327)
!1494 = !DILocation(line: 432, column: 18, scope: !1482)
!1495 = !DILocation(line: 434, column: 7, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1482, file: !141, line: 434, column: 7)
!1497 = !DILocation(line: 434, column: 18, scope: !1496)
!1498 = !DILocation(line: 434, column: 23, scope: !1496)
!1499 = !DILocation(line: 434, column: 14, scope: !1496)
!1500 = !DILocation(line: 434, column: 33, scope: !1496)
!1501 = !DILocation(line: 434, column: 37, scope: !1502)
!1502 = !DILexicalBlockFile(scope: !1496, file: !141, discriminator: 1)
!1503 = !DILocation(line: 434, column: 42, scope: !1502)
!1504 = !DILocation(line: 434, column: 49, scope: !1502)
!1505 = !DILocation(line: 434, column: 7, scope: !1502)
!1506 = !DILocation(line: 435, column: 5, scope: !1496)
!1507 = !DILocation(line: 437, column: 7, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1482, file: !141, line: 437, column: 7)
!1509 = !DILocation(line: 437, column: 12, scope: !1508)
!1510 = !DILocation(line: 437, column: 19, scope: !1508)
!1511 = !DILocation(line: 437, column: 43, scope: !1508)
!1512 = !DILocation(line: 438, column: 7, scope: !1508)
!1513 = !DILocation(line: 438, column: 12, scope: !1508)
!1514 = !DILocation(line: 438, column: 19, scope: !1508)
!1515 = !DILocation(line: 437, column: 7, scope: !1516)
!1516 = !DILexicalBlockFile(scope: !1482, file: !141, discriminator: 1)
!1517 = !DILocation(line: 439, column: 83, scope: !1508)
!1518 = !DILocation(line: 439, column: 88, scope: !1508)
!1519 = !DILocation(line: 439, column: 65, scope: !1508)
!1520 = !DILocation(line: 439, column: 126, scope: !1508)
!1521 = !DILocation(line: 439, column: 110, scope: !1522)
!1522 = !DILexicalBlockFile(scope: !1508, file: !141, discriminator: 1)
!1523 = !DILocation(line: 439, column: 5, scope: !1524)
!1524 = !DILexicalBlockFile(scope: !1508, file: !141, discriminator: 2)
!1525 = !DILocation(line: 439, column: 5, scope: !1508)
!1526 = !DILocation(line: 442, column: 7, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1482, file: !141, line: 442, column: 7)
!1528 = !DILocation(line: 442, column: 13, scope: !1527)
!1529 = !DILocation(line: 442, column: 7, scope: !1482)
!1530 = !DILocation(line: 443, column: 20, scope: !1527)
!1531 = !DILocation(line: 443, column: 5, scope: !1527)
!1532 = !DILocation(line: 444, column: 13, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1482, file: !141, line: 444, column: 3)
!1534 = !DILocation(line: 444, column: 18, scope: !1533)
!1535 = !DILocation(line: 444, column: 25, scope: !1533)
!1536 = !DILocation(line: 444, column: 11, scope: !1533)
!1537 = !DILocation(line: 444, column: 8, scope: !1533)
!1538 = !DILocation(line: 444, column: 31, scope: !1539)
!1539 = !DILexicalBlockFile(scope: !1540, file: !141, discriminator: 1)
!1540 = distinct !DILexicalBlock(scope: !1533, file: !141, line: 444, column: 3)
!1541 = !DILocation(line: 444, column: 3, scope: !1539)
!1542 = !DILocation(line: 445, column: 21, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1540, file: !141, line: 444, column: 57)
!1544 = !DILocation(line: 445, column: 5, scope: !1543)
!1545 = !DILocation(line: 446, column: 28, scope: !1543)
!1546 = !DILocation(line: 446, column: 32, scope: !1543)
!1547 = !DILocation(line: 446, column: 36, scope: !1543)
!1548 = !DILocation(line: 446, column: 43, scope: !1543)
!1549 = !DILocation(line: 446, column: 47, scope: !1543)
!1550 = !DILocation(line: 446, column: 53, scope: !1543)
!1551 = !DILocation(line: 446, column: 5, scope: !1543)
!1552 = !DILocation(line: 447, column: 3, scope: !1543)
!1553 = !DILocation(line: 444, column: 40, scope: !1554)
!1554 = !DILexicalBlockFile(scope: !1540, file: !141, discriminator: 2)
!1555 = !DILocation(line: 444, column: 44, scope: !1554)
!1556 = !DILocation(line: 444, column: 51, scope: !1554)
!1557 = !DILocation(line: 444, column: 38, scope: !1554)
!1558 = !DILocation(line: 444, column: 3, scope: !1554)
!1559 = distinct !{!1559, !1560}
!1560 = !DILocation(line: 444, column: 3, scope: !1482)
!1561 = !DILocation(line: 448, column: 7, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1482, file: !141, line: 448, column: 7)
!1563 = !DILocation(line: 448, column: 13, scope: !1562)
!1564 = !DILocation(line: 448, column: 7, scope: !1482)
!1565 = !DILocation(line: 449, column: 21, scope: !1562)
!1566 = !DILocation(line: 449, column: 5, scope: !1562)
!1567 = !DILocation(line: 450, column: 1, scope: !1482)
!1568 = distinct !DISubprogram(name: "varbuf_add_arbfield", scope: !141, file: !141, line: 453, type: !1569, isLocal: false, isDefinition: true, scopeLine: 455, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !203)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{null, !213, !1571, !73}
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64, align: 64)
!1572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !305)
!1573 = !DILocalVariable(name: "vb", arg: 1, scope: !1568, file: !141, line: 453, type: !213)
!1574 = !DILocation(line: 453, column: 36, scope: !1568)
!1575 = !DILocalVariable(name: "arbfield", arg: 2, scope: !1568, file: !141, line: 453, type: !1571)
!1576 = !DILocation(line: 453, column: 69, scope: !1568)
!1577 = !DILocalVariable(name: "flags", arg: 3, scope: !1568, file: !141, line: 454, type: !73)
!1578 = !DILocation(line: 454, column: 38, scope: !1568)
!1579 = !DILocation(line: 456, column: 7, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1568, file: !141, line: 456, column: 7)
!1581 = !DILocation(line: 456, column: 13, scope: !1580)
!1582 = !DILocation(line: 456, column: 7, scope: !1568)
!1583 = !DILocation(line: 457, column: 20, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1580, file: !141, line: 456, column: 31)
!1585 = !DILocation(line: 457, column: 24, scope: !1584)
!1586 = !DILocation(line: 457, column: 34, scope: !1584)
!1587 = !DILocation(line: 457, column: 47, scope: !1584)
!1588 = !DILocation(line: 457, column: 57, scope: !1584)
!1589 = !DILocation(line: 457, column: 40, scope: !1584)
!1590 = !DILocation(line: 457, column: 5, scope: !1591)
!1591 = !DILexicalBlockFile(scope: !1584, file: !141, discriminator: 1)
!1592 = !DILocation(line: 458, column: 20, scope: !1584)
!1593 = !DILocation(line: 458, column: 5, scope: !1584)
!1594 = !DILocation(line: 459, column: 3, scope: !1584)
!1595 = !DILocation(line: 460, column: 18, scope: !1568)
!1596 = !DILocation(line: 460, column: 22, scope: !1568)
!1597 = !DILocation(line: 460, column: 32, scope: !1568)
!1598 = !DILocation(line: 460, column: 46, scope: !1568)
!1599 = !DILocation(line: 460, column: 56, scope: !1568)
!1600 = !DILocation(line: 460, column: 39, scope: !1568)
!1601 = !DILocation(line: 460, column: 3, scope: !1602)
!1602 = !DILexicalBlockFile(scope: !1568, file: !141, discriminator: 1)
!1603 = !DILocation(line: 461, column: 7, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1568, file: !141, line: 461, column: 7)
!1605 = !DILocation(line: 461, column: 13, scope: !1604)
!1606 = !DILocation(line: 461, column: 7, scope: !1568)
!1607 = !DILocation(line: 462, column: 21, scope: !1604)
!1608 = !DILocation(line: 462, column: 5, scope: !1604)
!1609 = !DILocation(line: 463, column: 1, scope: !1568)
!1610 = distinct !DISubprogram(name: "varbufrecord", scope: !141, file: !141, line: 466, type: !1611, isLocal: false, isDefinition: true, scopeLine: 468, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !203)
!1611 = !DISubroutineType(types: !1612)
!1612 = !{null, !213, !220, !354}
!1613 = !DILocalVariable(name: "vb", arg: 1, scope: !1610, file: !141, line: 466, type: !213)
!1614 = !DILocation(line: 466, column: 29, scope: !1610)
!1615 = !DILocalVariable(name: "pkg", arg: 2, scope: !1610, file: !141, line: 467, type: !220)
!1616 = !DILocation(line: 467, column: 36, scope: !1610)
!1617 = !DILocalVariable(name: "pkgbin", arg: 3, scope: !1610, file: !141, line: 467, type: !354)
!1618 = !DILocation(line: 467, column: 62, scope: !1610)
!1619 = !DILocalVariable(name: "fip", scope: !1610, file: !141, line: 469, type: !356)
!1620 = !DILocation(line: 469, column: 27, scope: !1610)
!1621 = !DILocalVariable(name: "afp", scope: !1610, file: !141, line: 470, type: !1571)
!1622 = !DILocation(line: 470, column: 32, scope: !1610)
!1623 = !DILocation(line: 472, column: 11, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1610, file: !141, line: 472, column: 3)
!1625 = !DILocation(line: 472, column: 8, scope: !1624)
!1626 = !DILocation(line: 472, column: 25, scope: !1627)
!1627 = !DILexicalBlockFile(scope: !1628, file: !141, discriminator: 1)
!1628 = distinct !DILexicalBlock(scope: !1624, file: !141, line: 472, column: 3)
!1629 = !DILocation(line: 472, column: 30, scope: !1627)
!1630 = !DILocation(line: 472, column: 3, scope: !1627)
!1631 = !DILocation(line: 473, column: 5, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1628, file: !141, line: 472, column: 43)
!1633 = !DILocation(line: 473, column: 10, scope: !1632)
!1634 = !DILocation(line: 473, column: 16, scope: !1632)
!1635 = !DILocation(line: 473, column: 20, scope: !1632)
!1636 = !DILocation(line: 473, column: 25, scope: !1632)
!1637 = !DILocation(line: 473, column: 49, scope: !1632)
!1638 = !DILocation(line: 474, column: 3, scope: !1632)
!1639 = !DILocation(line: 472, column: 39, scope: !1640)
!1640 = !DILexicalBlockFile(scope: !1628, file: !141, discriminator: 2)
!1641 = !DILocation(line: 472, column: 3, scope: !1640)
!1642 = distinct !{!1642, !1643}
!1643 = !DILocation(line: 472, column: 3, scope: !1610)
!1644 = !DILocation(line: 475, column: 14, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1610, file: !141, line: 475, column: 3)
!1646 = !DILocation(line: 475, column: 22, scope: !1645)
!1647 = !DILocation(line: 475, column: 12, scope: !1645)
!1648 = !DILocation(line: 475, column: 8, scope: !1645)
!1649 = !DILocation(line: 475, column: 28, scope: !1650)
!1650 = !DILexicalBlockFile(scope: !1651, file: !141, discriminator: 1)
!1651 = distinct !DILexicalBlock(scope: !1645, file: !141, line: 475, column: 3)
!1652 = !DILocation(line: 475, column: 3, scope: !1650)
!1653 = !DILocation(line: 476, column: 25, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1651, file: !141, line: 475, column: 50)
!1655 = !DILocation(line: 476, column: 29, scope: !1654)
!1656 = !DILocation(line: 476, column: 5, scope: !1654)
!1657 = !DILocation(line: 477, column: 3, scope: !1654)
!1658 = !DILocation(line: 475, column: 39, scope: !1659)
!1659 = !DILexicalBlockFile(scope: !1651, file: !141, discriminator: 2)
!1660 = !DILocation(line: 475, column: 44, scope: !1659)
!1661 = !DILocation(line: 475, column: 37, scope: !1659)
!1662 = !DILocation(line: 475, column: 3, scope: !1659)
!1663 = distinct !{!1663, !1664}
!1664 = !DILocation(line: 475, column: 3, scope: !1610)
!1665 = !DILocation(line: 478, column: 1, scope: !1610)
!1666 = distinct !DISubprogram(name: "writerecord", scope: !141, file: !141, line: 481, type: !1667, isLocal: false, isDefinition: true, scopeLine: 483, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !203)
!1667 = !DISubroutineType(types: !1668)
!1668 = !{null, !144, !128, !220, !354}
!1669 = !DILocalVariable(name: "file", arg: 1, scope: !1666, file: !141, line: 481, type: !144)
!1670 = !DILocation(line: 481, column: 19, scope: !1666)
!1671 = !DILocalVariable(name: "filename", arg: 2, scope: !1666, file: !141, line: 481, type: !128)
!1672 = !DILocation(line: 481, column: 37, scope: !1666)
!1673 = !DILocalVariable(name: "pkg", arg: 3, scope: !1666, file: !141, line: 482, type: !220)
!1674 = !DILocation(line: 482, column: 35, scope: !1666)
!1675 = !DILocalVariable(name: "pkgbin", arg: 4, scope: !1666, file: !141, line: 482, type: !354)
!1676 = !DILocation(line: 482, column: 61, scope: !1666)
!1677 = !DILocalVariable(name: "vb", scope: !1666, file: !141, line: 484, type: !214)
!1678 = !DILocation(line: 484, column: 17, scope: !1666)
!1679 = !DILocation(line: 486, column: 21, scope: !1666)
!1680 = !DILocation(line: 486, column: 26, scope: !1666)
!1681 = !DILocation(line: 486, column: 3, scope: !1666)
!1682 = !DILocation(line: 487, column: 3, scope: !1666)
!1683 = !DILocation(line: 489, column: 16, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1666, file: !141, line: 489, column: 7)
!1685 = !DILocation(line: 489, column: 21, scope: !1684)
!1686 = !DILocation(line: 489, column: 7, scope: !1684)
!1687 = !DILocation(line: 489, column: 27, scope: !1684)
!1688 = !DILocation(line: 489, column: 7, scope: !1666)
!1689 = !DILocation(line: 490, column: 12, scope: !1684)
!1690 = !DILocation(line: 491, column: 31, scope: !1684)
!1691 = !DILocation(line: 491, column: 36, scope: !1684)
!1692 = !DILocation(line: 491, column: 13, scope: !1684)
!1693 = !DILocation(line: 491, column: 60, scope: !1684)
!1694 = !DILocation(line: 490, column: 5, scope: !1695)
!1695 = !DILexicalBlockFile(scope: !1684, file: !141, discriminator: 1)
!1696 = !DILocation(line: 490, column: 5, scope: !1684)
!1697 = !DILocation(line: 493, column: 3, scope: !1666)
!1698 = !DILocation(line: 494, column: 1, scope: !1666)
!1699 = !DILocalVariable(name: "fp", arg: 1, scope: !140, file: !141, line: 497, type: !144)
!1700 = !DILocation(line: 497, column: 23, scope: !140)
!1701 = !DILocalVariable(name: "filename", arg: 2, scope: !140, file: !141, line: 497, type: !128)
!1702 = !DILocation(line: 497, column: 39, scope: !140)
!1703 = !DILocalVariable(name: "flags", arg: 3, scope: !140, file: !141, line: 497, type: !117)
!1704 = !DILocation(line: 497, column: 68, scope: !140)
!1705 = !DILocalVariable(name: "array", scope: !140, file: !141, line: 501, type: !1706)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_array", file: !1707, line: 38, size: 128, align: 64, elements: !1708)
!1707 = !DIFile(filename: "../../lib/dpkg/pkg-array.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!1708 = !{!1709, !1710}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "n_pkgs", scope: !1706, file: !1707, line: 39, baseType: !137, size: 32, align: 32)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "pkgs", scope: !1706, file: !1707, line: 40, baseType: !1711, size: 64, align: 64, offset: 64)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64, align: 64)
!1712 = !DILocation(line: 501, column: 20, scope: !140)
!1713 = !DILocalVariable(name: "pkg", scope: !140, file: !141, line: 502, type: !243)
!1714 = !DILocation(line: 502, column: 19, scope: !140)
!1715 = !DILocalVariable(name: "pkgbin", scope: !140, file: !141, line: 503, type: !367)
!1716 = !DILocation(line: 503, column: 18, scope: !140)
!1717 = !DILocalVariable(name: "which", scope: !140, file: !141, line: 504, type: !128)
!1718 = !DILocation(line: 504, column: 15, scope: !140)
!1719 = !DILocalVariable(name: "vb", scope: !140, file: !141, line: 505, type: !214)
!1720 = !DILocation(line: 505, column: 17, scope: !140)
!1721 = !DILocalVariable(name: "i", scope: !140, file: !141, line: 506, type: !137)
!1722 = !DILocation(line: 506, column: 7, scope: !140)
!1723 = !DILocation(line: 508, column: 12, scope: !140)
!1724 = !DILocation(line: 508, column: 18, scope: !140)
!1725 = !DILocation(line: 508, column: 11, scope: !140)
!1726 = !DILocation(line: 508, column: 9, scope: !140)
!1727 = !DILocation(line: 510, column: 15, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !140, file: !141, line: 510, column: 7)
!1729 = !DILocation(line: 510, column: 7, scope: !1728)
!1730 = !DILocation(line: 510, column: 7, scope: !140)
!1731 = !DILocation(line: 511, column: 12, scope: !1728)
!1732 = !DILocation(line: 511, column: 62, scope: !1728)
!1733 = !DILocation(line: 511, column: 5, scope: !1734)
!1734 = !DILexicalBlockFile(scope: !1728, file: !141, discriminator: 1)
!1735 = !DILocation(line: 511, column: 5, scope: !1728)
!1736 = !DILocation(line: 513, column: 3, scope: !140)
!1737 = !DILocation(line: 514, column: 3, scope: !140)
!1738 = !DILocation(line: 516, column: 10, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !140, file: !141, line: 516, column: 3)
!1740 = !DILocation(line: 516, column: 8, scope: !1739)
!1741 = !DILocation(line: 516, column: 15, scope: !1742)
!1742 = !DILexicalBlockFile(scope: !1743, file: !141, discriminator: 1)
!1743 = distinct !DILexicalBlock(scope: !1739, file: !141, line: 516, column: 3)
!1744 = !DILocation(line: 516, column: 25, scope: !1742)
!1745 = !DILocation(line: 516, column: 17, scope: !1742)
!1746 = !DILocation(line: 516, column: 3, scope: !1742)
!1747 = !DILocation(line: 517, column: 22, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1743, file: !141, line: 516, column: 38)
!1749 = !DILocation(line: 517, column: 11, scope: !1748)
!1750 = !DILocation(line: 517, column: 17, scope: !1748)
!1751 = !DILocation(line: 517, column: 9, scope: !1748)
!1752 = !DILocation(line: 518, column: 15, scope: !1748)
!1753 = !DILocation(line: 518, column: 21, scope: !1748)
!1754 = !DILocation(line: 518, column: 14, scope: !1748)
!1755 = !DILocation(line: 518, column: 46, scope: !1756)
!1756 = !DILexicalBlockFile(scope: !1748, file: !141, discriminator: 1)
!1757 = !DILocation(line: 518, column: 51, scope: !1756)
!1758 = !DILocation(line: 518, column: 14, scope: !1756)
!1759 = !DILocation(line: 518, column: 64, scope: !1760)
!1760 = !DILexicalBlockFile(scope: !1748, file: !141, discriminator: 2)
!1761 = !DILocation(line: 518, column: 69, scope: !1760)
!1762 = !DILocation(line: 518, column: 14, scope: !1760)
!1763 = !DILocation(line: 518, column: 14, scope: !1764)
!1764 = !DILexicalBlockFile(scope: !1748, file: !141, discriminator: 3)
!1765 = !DILocation(line: 518, column: 12, scope: !1764)
!1766 = !DILocation(line: 521, column: 29, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1748, file: !141, line: 521, column: 9)
!1768 = !DILocation(line: 521, column: 34, scope: !1767)
!1769 = !DILocation(line: 521, column: 10, scope: !1767)
!1770 = !DILocation(line: 521, column: 9, scope: !1748)
!1771 = !DILocation(line: 522, column: 7, scope: !1767)
!1772 = !DILocation(line: 524, column: 23, scope: !1748)
!1773 = !DILocation(line: 524, column: 28, scope: !1748)
!1774 = !DILocation(line: 524, column: 5, scope: !1748)
!1775 = !DILocation(line: 525, column: 5, scope: !1748)
!1776 = !DILocation(line: 526, column: 5, scope: !1748)
!1777 = !DILocation(line: 527, column: 18, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1748, file: !141, line: 527, column: 9)
!1779 = !DILocation(line: 527, column: 23, scope: !1778)
!1780 = !DILocation(line: 527, column: 9, scope: !1778)
!1781 = !DILocation(line: 527, column: 27, scope: !1778)
!1782 = !DILocation(line: 527, column: 9, scope: !1748)
!1783 = !DILocation(line: 528, column: 14, scope: !1778)
!1784 = !DILocation(line: 529, column: 15, scope: !1778)
!1785 = !DILocation(line: 529, column: 34, scope: !1778)
!1786 = !DILocation(line: 529, column: 39, scope: !1778)
!1787 = !DILocation(line: 529, column: 22, scope: !1778)
!1788 = !DILocation(line: 529, column: 63, scope: !1778)
!1789 = !DILocation(line: 528, column: 7, scope: !1790)
!1790 = !DILexicalBlockFile(scope: !1778, file: !141, discriminator: 1)
!1791 = !DILocation(line: 528, column: 7, scope: !1778)
!1792 = !DILocation(line: 530, column: 5, scope: !1748)
!1793 = !DILocation(line: 531, column: 3, scope: !1748)
!1794 = !DILocation(line: 516, column: 34, scope: !1795)
!1795 = !DILexicalBlockFile(scope: !1743, file: !141, discriminator: 2)
!1796 = !DILocation(line: 516, column: 3, scope: !1795)
!1797 = distinct !{!1797, !1798}
!1798 = !DILocation(line: 516, column: 3, scope: !140)
!1799 = !DILocation(line: 533, column: 3, scope: !140)
!1800 = !DILocation(line: 534, column: 3, scope: !140)
!1801 = !DILocation(line: 535, column: 1, scope: !140)
!1802 = distinct !DISubprogram(name: "writedb", scope: !141, file: !141, line: 538, type: !1803, isLocal: false, isDefinition: true, scopeLine: 539, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !203)
!1803 = !DISubroutineType(types: !1804)
!1804 = !{null, !128, !117}
!1805 = !DILocalVariable(name: "filename", arg: 1, scope: !1802, file: !141, line: 538, type: !128)
!1806 = !DILocation(line: 538, column: 21, scope: !1802)
!1807 = !DILocalVariable(name: "flags", arg: 2, scope: !1802, file: !141, line: 538, type: !117)
!1808 = !DILocation(line: 538, column: 50, scope: !1802)
!1809 = !DILocalVariable(name: "file", scope: !1802, file: !141, line: 540, type: !1810)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64, align: 64)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atomic_file", file: !122, line: 40, size: 256, align: 64, elements: !1812)
!1812 = !{!1813, !1814, !1815, !1816}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1811, file: !122, line: 41, baseType: !121, size: 32, align: 32)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1811, file: !122, line: 42, baseType: !152, size: 64, align: 64, offset: 64)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "name_new", scope: !1811, file: !122, line: 43, baseType: !152, size: 64, align: 64, offset: 128)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !1811, file: !122, line: 44, baseType: !144, size: 64, align: 64, offset: 192)
!1817 = !DILocation(line: 540, column: 23, scope: !1802)
!1818 = !DILocation(line: 542, column: 26, scope: !1802)
!1819 = !DILocation(line: 542, column: 10, scope: !1802)
!1820 = !DILocation(line: 542, column: 8, scope: !1802)
!1821 = !DILocation(line: 543, column: 20, scope: !1802)
!1822 = !DILocation(line: 543, column: 3, scope: !1802)
!1823 = !DILocation(line: 545, column: 19, scope: !1802)
!1824 = !DILocation(line: 545, column: 25, scope: !1802)
!1825 = !DILocation(line: 545, column: 29, scope: !1802)
!1826 = !DILocation(line: 545, column: 39, scope: !1802)
!1827 = !DILocation(line: 545, column: 3, scope: !1802)
!1828 = !DILocation(line: 547, column: 7, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1802, file: !141, line: 547, column: 7)
!1830 = !DILocation(line: 547, column: 13, scope: !1829)
!1831 = !DILocation(line: 547, column: 7, scope: !1802)
!1832 = !DILocation(line: 548, column: 22, scope: !1829)
!1833 = !DILocation(line: 548, column: 5, scope: !1829)
!1834 = !DILocation(line: 550, column: 21, scope: !1802)
!1835 = !DILocation(line: 550, column: 3, scope: !1802)
!1836 = !DILocation(line: 551, column: 22, scope: !1802)
!1837 = !DILocation(line: 551, column: 3, scope: !1802)
!1838 = !DILocation(line: 552, column: 20, scope: !1802)
!1839 = !DILocation(line: 552, column: 3, scope: !1802)
!1840 = !DILocation(line: 554, column: 7, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1802, file: !141, line: 554, column: 7)
!1842 = !DILocation(line: 554, column: 13, scope: !1841)
!1843 = !DILocation(line: 554, column: 7, scope: !1802)
!1844 = !DILocation(line: 555, column: 26, scope: !1841)
!1845 = !DILocation(line: 555, column: 5, scope: !1841)
!1846 = !DILocation(line: 556, column: 1, scope: !1802)
