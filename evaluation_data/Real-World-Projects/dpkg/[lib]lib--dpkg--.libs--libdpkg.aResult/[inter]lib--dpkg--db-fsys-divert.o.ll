; ModuleID = './[inter]lib--dpkg--db-fsys-divert.o.i'
source_filename = "./[inter]lib--dpkg--db-fsys-divert.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.fsys_diversion = type { %struct.fsys_namenode*, %struct.fsys_namenode*, %struct.pkgset*, %struct.fsys_diversion* }
%struct.fsys_namenode = type { %struct.fsys_namenode*, i8*, %struct.pkg_list*, %struct.fsys_diversion*, %struct.file_stat*, %struct.trigfileint*, i32, i8*, i8*, %struct.file_ondisk_id* }
%struct.pkg_list = type opaque
%struct.file_stat = type { i32, i32, i32, i8*, i8* }
%struct.trigfileint = type opaque
%struct.file_ondisk_id = type { i64, i64 }
%struct.pkgset = type { %struct.pkgset*, i8*, %struct.pkginfo, %struct.anon.1, i32 }
%struct.pkginfo = type { %struct.pkgset*, %struct.pkginfo*, i32, i32, i32, i32, i8*, i8*, %struct.dpkg_version, %struct.pkgbin, %struct.pkgbin, %struct.perpackagestate*, %struct.archivedetails*, %struct.anon, %struct.trigaw*, %struct.trigpend*, %struct.fsys_namenode_list*, i64, i8, i8 }
%struct.dpkg_version = type { i32, i8*, i8* }
%struct.pkgbin = type { %struct.dependency*, i8, i32, %struct.dpkg_arch*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.dpkg_version, %struct.conffile*, %struct.arbitraryfield* }
%struct.dependency = type { %struct.pkginfo*, %struct.dependency*, %struct.deppossi*, i32 }
%struct.deppossi = type { %struct.dependency*, %struct.pkgset*, %struct.deppossi*, %struct.deppossi*, %struct.deppossi*, %struct.dpkg_arch*, %struct.dpkg_version, i32, i8, i8 }
%struct.dpkg_arch = type { %struct.dpkg_arch*, i8*, i32 }
%struct.conffile = type { %struct.conffile*, i8*, i8*, i8 }
%struct.arbitraryfield = type { %struct.arbitraryfield*, i8*, i8* }
%struct.perpackagestate = type opaque
%struct.archivedetails = type { %struct.archivedetails*, i8*, i8*, i8*, i8* }
%struct.anon = type { %struct.trigaw*, %struct.trigaw* }
%struct.trigaw = type { %struct.pkginfo*, %struct.pkginfo*, %struct.trigaw*, %struct.anon.0 }
%struct.anon.0 = type { %struct.trigaw*, %struct.trigaw* }
%struct.trigpend = type { %struct.trigpend*, i8* }
%struct.fsys_namenode_list = type { %struct.fsys_namenode_list*, %struct.fsys_namenode* }
%struct.anon.1 = type { %struct.deppossi*, %struct.deppossi* }

@ensure_diversions.sb_prev = internal global %struct.stat zeroinitializer, align 8
@ensure_diversions.file_prev = internal global %struct._IO_FILE* null, align 8
@diversionsname = internal global i8* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"diversions\00", align 1
@onerr_abort = external global i32, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"dpkg\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"failed to open diversions file\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"failed to fstat diversions file\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"%s: same, skipping\00", align 1
@__func__.ensure_diversions = private unnamed_addr constant [18 x i8] c"ensure_diversions\00", align 1
@diversions = internal global %struct.fsys_diversion* null, align 8
@.str.6 = private unnamed_addr constant [20 x i8] c"%s: none, resetting\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"%s: new, (re)loading\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"conflicting diversions involving '%.250s' or '%.250s'\00", align 1

; Function Attrs: nounwind uwtable
define void @ensure_diversions() #0 !dbg !106 {
  %1 = alloca %struct.stat, align 8
  %2 = alloca [1024 x i8], align 16
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca %struct.fsys_diversion*, align 8
  %5 = alloca %struct.fsys_diversion*, align 8
  %6 = alloca %struct.fsys_diversion*, align 8
  call void @llvm.dbg.declare(metadata %struct.stat* %1, metadata !396, metadata !397), !dbg !398
  call void @llvm.dbg.declare(metadata [1024 x i8]* %2, metadata !399, metadata !397), !dbg !403
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !404, metadata !397), !dbg !405
  call void @llvm.dbg.declare(metadata %struct.fsys_diversion** %4, metadata !406, metadata !397), !dbg !407
  call void @llvm.dbg.declare(metadata %struct.fsys_diversion** %5, metadata !408, metadata !397), !dbg !409
  call void @llvm.dbg.declare(metadata %struct.fsys_diversion** %6, metadata !410, metadata !397), !dbg !411
  %7 = load i8*, i8** @diversionsname, align 8, !dbg !412
  %8 = icmp eq i8* %7, null, !dbg !414
  br i1 %8, label %9, label %11, !dbg !415

; <label>:9:                                      ; preds = %0
  %10 = call i8* @dpkg_db_get_path(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0)), !dbg !416
  store i8* %10, i8** @diversionsname, align 8, !dbg !417
  br label %11, !dbg !418

; <label>:11:                                     ; preds = %9, %0
  %12 = load volatile i32, i32* @onerr_abort, align 4, !dbg !419
  %13 = add nsw i32 %12, 1, !dbg !419
  store volatile i32 %13, i32* @onerr_abort, align 4, !dbg !419
  %14 = load i8*, i8** @diversionsname, align 8, !dbg !420
  %15 = call %struct._IO_FILE* @fopen(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)), !dbg !421
  store %struct._IO_FILE* %15, %struct._IO_FILE** %3, align 8, !dbg !422
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !423
  %17 = icmp ne %struct._IO_FILE* %16, null, !dbg !423
  br i1 %17, label %25, label %18, !dbg !425

; <label>:18:                                     ; preds = %11
  %19 = call i32* @__errno_location() #1, !dbg !426
  %20 = load i32, i32* %19, align 4, !dbg !429
  %21 = icmp ne i32 %20, 2, !dbg !430
  br i1 %21, label %22, label %24, !dbg !431

; <label>:22:                                     ; preds = %18
  %23 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0)) #8, !dbg !432
  call void (i8*, ...) @ohshite(i8* %23) #9, !dbg !433
  unreachable, !dbg !435

; <label>:24:                                     ; preds = %18
  br label %55, !dbg !436

; <label>:25:                                     ; preds = %11
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !437
  %27 = call i32 @fileno(%struct._IO_FILE* %26) #8, !dbg !439
  %28 = load i8*, i8** @diversionsname, align 8, !dbg !440
  call void @setcloexec(i32 %27, i8* %28), !dbg !441
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !443
  %30 = call i32 @fileno(%struct._IO_FILE* %29) #8, !dbg !445
  %31 = call i32 @fstat(i32 %30, %struct.stat* %1) #8, !dbg !446
  %32 = icmp ne i32 %31, 0, !dbg !448
  br i1 %32, label %33, label %35, !dbg !449

; <label>:33:                                     ; preds = %25
  %34 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0)) #8, !dbg !450
  call void (i8*, ...) @ohshite(i8* %34) #9, !dbg !451
  unreachable, !dbg !452

; <label>:35:                                     ; preds = %25
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @ensure_diversions.file_prev, align 8, !dbg !453
  %37 = icmp ne %struct._IO_FILE* %36, null, !dbg !453
  br i1 %37, label %38, label %53, !dbg !455

; <label>:38:                                     ; preds = %35
  %39 = load i64, i64* getelementptr inbounds (%struct.stat, %struct.stat* @ensure_diversions.sb_prev, i32 0, i32 0), align 8, !dbg !456
  %40 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 0, !dbg !457
  %41 = load i64, i64* %40, align 8, !dbg !457
  %42 = icmp eq i64 %39, %41, !dbg !458
  br i1 %42, label %43, label %53, !dbg !459

; <label>:43:                                     ; preds = %38
  %44 = load i64, i64* getelementptr inbounds (%struct.stat, %struct.stat* @ensure_diversions.sb_prev, i32 0, i32 1), align 8, !dbg !460
  %45 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 1, !dbg !461
  %46 = load i64, i64* %45, align 8, !dbg !461
  %47 = icmp eq i64 %44, %46, !dbg !462
  br i1 %47, label %48, label %53, !dbg !463

; <label>:48:                                     ; preds = %43
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !464
  %50 = call i32 @fclose(%struct._IO_FILE* %49), !dbg !466
  %51 = load volatile i32, i32* @onerr_abort, align 4, !dbg !467
  %52 = add nsw i32 %51, -1, !dbg !467
  store volatile i32 %52, i32* @onerr_abort, align 4, !dbg !467
  call void (i32, i8*, ...) @debug(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.ensure_diversions, i32 0, i32 0)), !dbg !468
  br label %181, !dbg !469

; <label>:53:                                     ; preds = %43, %38, %35
  %54 = bitcast %struct.stat* %1 to i8*, !dbg !470
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.stat* @ensure_diversions.sb_prev to i8*), i8* %54, i64 144, i32 8, i1 false), !dbg !470
  br label %55

; <label>:55:                                     ; preds = %53, %24
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @ensure_diversions.file_prev, align 8, !dbg !471
  %57 = icmp ne %struct._IO_FILE* %56, null, !dbg !471
  br i1 %57, label %58, label %61, !dbg !473

; <label>:58:                                     ; preds = %55
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @ensure_diversions.file_prev, align 8, !dbg !474
  %60 = call i32 @fclose(%struct._IO_FILE* %59), !dbg !475
  br label %61, !dbg !475

; <label>:61:                                     ; preds = %58, %55
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !476
  store %struct._IO_FILE* %62, %struct._IO_FILE** @ensure_diversions.file_prev, align 8, !dbg !477
  %63 = load %struct.fsys_diversion*, %struct.fsys_diversion** @diversions, align 8, !dbg !478
  store %struct.fsys_diversion* %63, %struct.fsys_diversion** %4, align 8, !dbg !480
  br label %64, !dbg !481

; <label>:64:                                     ; preds = %80, %61
  %65 = load %struct.fsys_diversion*, %struct.fsys_diversion** %4, align 8, !dbg !482
  %66 = icmp ne %struct.fsys_diversion* %65, null, !dbg !485
  br i1 %66, label %67, label %84, !dbg !485

; <label>:67:                                     ; preds = %64
  %68 = load %struct.fsys_diversion*, %struct.fsys_diversion** %4, align 8, !dbg !486
  %69 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %68, i32 0, i32 0, !dbg !488
  %70 = load %struct.fsys_namenode*, %struct.fsys_namenode** %69, align 8, !dbg !488
  %71 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %70, i32 0, i32 3, !dbg !489
  %72 = load %struct.fsys_diversion*, %struct.fsys_diversion** %71, align 8, !dbg !489
  %73 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %72, i32 0, i32 1, !dbg !490
  %74 = load %struct.fsys_namenode*, %struct.fsys_namenode** %73, align 8, !dbg !490
  %75 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %74, i32 0, i32 3, !dbg !491
  store %struct.fsys_diversion* null, %struct.fsys_diversion** %75, align 8, !dbg !492
  %76 = load %struct.fsys_diversion*, %struct.fsys_diversion** %4, align 8, !dbg !493
  %77 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %76, i32 0, i32 0, !dbg !494
  %78 = load %struct.fsys_namenode*, %struct.fsys_namenode** %77, align 8, !dbg !494
  %79 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %78, i32 0, i32 3, !dbg !495
  store %struct.fsys_diversion* null, %struct.fsys_diversion** %79, align 8, !dbg !496
  br label %80, !dbg !497

; <label>:80:                                     ; preds = %67
  %81 = load %struct.fsys_diversion*, %struct.fsys_diversion** %4, align 8, !dbg !498
  %82 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %81, i32 0, i32 3, !dbg !500
  %83 = load %struct.fsys_diversion*, %struct.fsys_diversion** %82, align 8, !dbg !500
  store %struct.fsys_diversion* %83, %struct.fsys_diversion** %4, align 8, !dbg !501
  br label %64, !dbg !502, !llvm.loop !503

; <label>:84:                                     ; preds = %64
  store %struct.fsys_diversion* null, %struct.fsys_diversion** @diversions, align 8, !dbg !505
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !506
  %86 = icmp ne %struct._IO_FILE* %85, null, !dbg !506
  br i1 %86, label %90, label %87, !dbg !508

; <label>:87:                                     ; preds = %84
  %88 = load volatile i32, i32* @onerr_abort, align 4, !dbg !509
  %89 = add nsw i32 %88, -1, !dbg !509
  store volatile i32 %89, i32* @onerr_abort, align 4, !dbg !509
  call void (i32, i8*, ...) @debug(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.ensure_diversions, i32 0, i32 0)), !dbg !511
  br label %181, !dbg !512

; <label>:90:                                     ; preds = %84
  call void (i32, i8*, ...) @debug(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.ensure_diversions, i32 0, i32 0)), !dbg !513
  br label %91, !dbg !514

; <label>:91:                                     ; preds = %163, %90
  %92 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i32 0, i32 0, !dbg !515
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !517
  %94 = load i8*, i8** @diversionsname, align 8, !dbg !518
  %95 = call i32 @fgets_checked(i8* %92, i64 1024, %struct._IO_FILE* %93, i8* %94), !dbg !519
  %96 = icmp sge i32 %95, 0, !dbg !520
  br i1 %96, label %97, label %178, !dbg !521

; <label>:97:                                     ; preds = %91
  %98 = call i8* @nfmalloc(i64 32), !dbg !522
  %99 = bitcast i8* %98 to %struct.fsys_diversion*, !dbg !522
  store %struct.fsys_diversion* %99, %struct.fsys_diversion** %5, align 8, !dbg !524
  %100 = call i8* @nfmalloc(i64 32), !dbg !525
  %101 = bitcast i8* %100 to %struct.fsys_diversion*, !dbg !525
  store %struct.fsys_diversion* %101, %struct.fsys_diversion** %6, align 8, !dbg !526
  %102 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i32 0, i32 0, !dbg !527
  %103 = call %struct.fsys_namenode* @fsys_hash_find_node(i8* %102, i32 0), !dbg !528
  %104 = load %struct.fsys_diversion*, %struct.fsys_diversion** %6, align 8, !dbg !529
  %105 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %104, i32 0, i32 1, !dbg !530
  store %struct.fsys_namenode* %103, %struct.fsys_namenode** %105, align 8, !dbg !531
  %106 = load %struct.fsys_diversion*, %struct.fsys_diversion** %6, align 8, !dbg !532
  %107 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %106, i32 0, i32 0, !dbg !533
  store %struct.fsys_namenode* null, %struct.fsys_namenode** %107, align 8, !dbg !534
  %108 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i32 0, i32 0, !dbg !535
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !536
  %110 = load i8*, i8** @diversionsname, align 8, !dbg !537
  %111 = call i32 @fgets_must(i8* %108, i64 1024, %struct._IO_FILE* %109, i8* %110), !dbg !538
  %112 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i32 0, i32 0, !dbg !539
  %113 = call %struct.fsys_namenode* @fsys_hash_find_node(i8* %112, i32 0), !dbg !540
  %114 = load %struct.fsys_diversion*, %struct.fsys_diversion** %5, align 8, !dbg !541
  %115 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %114, i32 0, i32 0, !dbg !542
  store %struct.fsys_namenode* %113, %struct.fsys_namenode** %115, align 8, !dbg !543
  %116 = load %struct.fsys_diversion*, %struct.fsys_diversion** %5, align 8, !dbg !544
  %117 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %116, i32 0, i32 1, !dbg !545
  store %struct.fsys_namenode* null, %struct.fsys_namenode** %117, align 8, !dbg !546
  %118 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i32 0, i32 0, !dbg !547
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !548
  %120 = load i8*, i8** @diversionsname, align 8, !dbg !549
  %121 = call i32 @fgets_must(i8* %118, i64 1024, %struct._IO_FILE* %119, i8* %120), !dbg !550
  %122 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i32 0, i32 0, !dbg !551
  %123 = call i32 @strcmp(i8* %122, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0)) #10, !dbg !552
  %124 = icmp ne i32 %123, 0, !dbg !552
  br i1 %124, label %125, label %128, !dbg !552

; <label>:125:                                    ; preds = %97
  %126 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i32 0, i32 0, !dbg !553
  %127 = call %struct.pkgset* @pkg_hash_find_set(i8* %126), !dbg !554
  br label %129, !dbg !555

; <label>:128:                                    ; preds = %97
  br label %129, !dbg !557

; <label>:129:                                    ; preds = %128, %125
  %130 = phi %struct.pkgset* [ %127, %125 ], [ null, %128 ], !dbg !559
  %131 = load %struct.fsys_diversion*, %struct.fsys_diversion** %5, align 8, !dbg !561
  %132 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %131, i32 0, i32 2, !dbg !562
  store %struct.pkgset* %130, %struct.pkgset** %132, align 8, !dbg !563
  %133 = load %struct.fsys_diversion*, %struct.fsys_diversion** %5, align 8, !dbg !564
  %134 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %133, i32 0, i32 2, !dbg !565
  %135 = load %struct.pkgset*, %struct.pkgset** %134, align 8, !dbg !565
  %136 = load %struct.fsys_diversion*, %struct.fsys_diversion** %6, align 8, !dbg !566
  %137 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %136, i32 0, i32 2, !dbg !567
  store %struct.pkgset* %135, %struct.pkgset** %137, align 8, !dbg !568
  %138 = load %struct.fsys_diversion*, %struct.fsys_diversion** %6, align 8, !dbg !569
  %139 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %138, i32 0, i32 1, !dbg !571
  %140 = load %struct.fsys_namenode*, %struct.fsys_namenode** %139, align 8, !dbg !571
  %141 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %140, i32 0, i32 3, !dbg !572
  %142 = load %struct.fsys_diversion*, %struct.fsys_diversion** %141, align 8, !dbg !572
  %143 = icmp ne %struct.fsys_diversion* %142, null, !dbg !569
  br i1 %143, label %151, label %144, !dbg !573

; <label>:144:                                    ; preds = %129
  %145 = load %struct.fsys_diversion*, %struct.fsys_diversion** %5, align 8, !dbg !574
  %146 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %145, i32 0, i32 0, !dbg !575
  %147 = load %struct.fsys_namenode*, %struct.fsys_namenode** %146, align 8, !dbg !575
  %148 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %147, i32 0, i32 3, !dbg !576
  %149 = load %struct.fsys_diversion*, %struct.fsys_diversion** %148, align 8, !dbg !576
  %150 = icmp ne %struct.fsys_diversion* %149, null, !dbg !574
  br i1 %150, label %151, label %163, !dbg !577

; <label>:151:                                    ; preds = %144, %129
  %152 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i32 0, i32 0)) #8, !dbg !578
  %153 = load %struct.fsys_diversion*, %struct.fsys_diversion** %6, align 8, !dbg !579
  %154 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %153, i32 0, i32 1, !dbg !580
  %155 = load %struct.fsys_namenode*, %struct.fsys_namenode** %154, align 8, !dbg !580
  %156 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %155, i32 0, i32 1, !dbg !581
  %157 = load i8*, i8** %156, align 8, !dbg !581
  %158 = load %struct.fsys_diversion*, %struct.fsys_diversion** %5, align 8, !dbg !582
  %159 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %158, i32 0, i32 0, !dbg !583
  %160 = load %struct.fsys_namenode*, %struct.fsys_namenode** %159, align 8, !dbg !583
  %161 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %160, i32 0, i32 1, !dbg !584
  %162 = load i8*, i8** %161, align 8, !dbg !584
  call void (i8*, ...) @ohshit(i8* %152, i8* %157, i8* %162) #9, !dbg !585
  unreachable, !dbg !587

; <label>:163:                                    ; preds = %144
  %164 = load %struct.fsys_diversion*, %struct.fsys_diversion** %5, align 8, !dbg !588
  %165 = load %struct.fsys_diversion*, %struct.fsys_diversion** %6, align 8, !dbg !589
  %166 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %165, i32 0, i32 1, !dbg !590
  %167 = load %struct.fsys_namenode*, %struct.fsys_namenode** %166, align 8, !dbg !590
  %168 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %167, i32 0, i32 3, !dbg !591
  store %struct.fsys_diversion* %164, %struct.fsys_diversion** %168, align 8, !dbg !592
  %169 = load %struct.fsys_diversion*, %struct.fsys_diversion** %6, align 8, !dbg !593
  %170 = load %struct.fsys_diversion*, %struct.fsys_diversion** %5, align 8, !dbg !594
  %171 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %170, i32 0, i32 0, !dbg !595
  %172 = load %struct.fsys_namenode*, %struct.fsys_namenode** %171, align 8, !dbg !595
  %173 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %172, i32 0, i32 3, !dbg !596
  store %struct.fsys_diversion* %169, %struct.fsys_diversion** %173, align 8, !dbg !597
  %174 = load %struct.fsys_diversion*, %struct.fsys_diversion** @diversions, align 8, !dbg !598
  %175 = load %struct.fsys_diversion*, %struct.fsys_diversion** %5, align 8, !dbg !599
  %176 = getelementptr inbounds %struct.fsys_diversion, %struct.fsys_diversion* %175, i32 0, i32 3, !dbg !600
  store %struct.fsys_diversion* %174, %struct.fsys_diversion** %176, align 8, !dbg !601
  %177 = load %struct.fsys_diversion*, %struct.fsys_diversion** %5, align 8, !dbg !602
  store %struct.fsys_diversion* %177, %struct.fsys_diversion** @diversions, align 8, !dbg !603
  br label %91, !dbg !604, !llvm.loop !606

; <label>:178:                                    ; preds = %91
  %179 = load volatile i32, i32* @onerr_abort, align 4, !dbg !607
  %180 = add nsw i32 %179, -1, !dbg !607
  store volatile i32 %180, i32* @onerr_abort, align 4, !dbg !607
  br label %181, !dbg !608

; <label>:181:                                    ; preds = %178, %87, %48
  ret void, !dbg !609
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i8* @dpkg_db_get_path(i8*) #2

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

; Function Attrs: noreturn
declare void @ohshite(i8*, ...) #4

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #5

declare void @setcloexec(i32, i8*) #2

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #5

; Function Attrs: nounwind
declare i32 @fstat(i32, %struct.stat*) #5

declare i32 @fclose(%struct._IO_FILE*) #2

declare void @debug(i32, i8*, ...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #6

declare i32 @fgets_checked(i8*, i64, %struct._IO_FILE*, i8*) #2

declare i8* @nfmalloc(i64) #2

declare %struct.fsys_namenode* @fsys_hash_find_node(i8*, i32) #2

declare i32 @fgets_must(i8*, i64, %struct._IO_FILE*, i8*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #7

declare %struct.pkgset* @pkg_hash_find_set(i8*) #2

; Function Attrs: noreturn
declare void @ohshit(i8*, ...) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { noreturn }
attributes #10 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!393, !394}
!llvm.ident = !{!395}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !102, globals: !104)
!1 = !DIFile(filename: "[inter]lib--dpkg--db-fsys-divert.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{!3, !16, !25, !29, !39, !49, !60, !69, !80, !86}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fsys_namenode_flags", file: !4, line: 61, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../lib/dpkg/fsys.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !DIEnumerator(name: "FNNF_NEW_CONFF", value: 1)
!7 = !DIEnumerator(name: "FNNF_NEW_INARCHIVE", value: 2)
!8 = !DIEnumerator(name: "FNNF_OLD_CONFF", value: 4)
!9 = !DIEnumerator(name: "FNNF_OBS_CONFF", value: 8)
!10 = !DIEnumerator(name: "FNNF_ELIDE_OTHER_LISTS", value: 16)
!11 = !DIEnumerator(name: "FNNF_NO_ATOMIC_OVERWRITE", value: 32)
!12 = !DIEnumerator(name: "FNNF_PLACED_ON_DISK", value: 64)
!13 = !DIEnumerator(name: "FNNF_DEFERRED_FSYNC", value: 128)
!14 = !DIEnumerator(name: "FNNF_DEFERRED_RENAME", value: 256)
!15 = !DIEnumerator(name: "FNNF_FILTERED", value: 512)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgwant", file: !17, line: 153, size: 32, align: 32, elements: !18)
!17 = !DIFile(filename: "../../lib/dpkg/dpkg-db.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!18 = !{!19, !20, !21, !22, !23, !24}
!19 = !DIEnumerator(name: "PKG_WANT_UNKNOWN", value: 0)
!20 = !DIEnumerator(name: "PKG_WANT_INSTALL", value: 1)
!21 = !DIEnumerator(name: "PKG_WANT_HOLD", value: 2)
!22 = !DIEnumerator(name: "PKG_WANT_DEINSTALL", value: 3)
!23 = !DIEnumerator(name: "PKG_WANT_PURGE", value: 4)
!24 = !DIEnumerator(name: "PKG_WANT_SENTINEL", value: 5)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgeflag", file: !17, line: 163, size: 32, align: 32, elements: !26)
!26 = !{!27, !28}
!27 = !DIEnumerator(name: "PKG_EFLAG_OK", value: 0)
!28 = !DIEnumerator(name: "PKG_EFLAG_REINSTREQ", value: 1)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgstatus", file: !17, line: 168, size: 32, align: 32, elements: !30)
!30 = !{!31, !32, !33, !34, !35, !36, !37, !38}
!31 = !DIEnumerator(name: "PKG_STAT_NOTINSTALLED", value: 0)
!32 = !DIEnumerator(name: "PKG_STAT_CONFIGFILES", value: 1)
!33 = !DIEnumerator(name: "PKG_STAT_HALFINSTALLED", value: 2)
!34 = !DIEnumerator(name: "PKG_STAT_UNPACKED", value: 3)
!35 = !DIEnumerator(name: "PKG_STAT_HALFCONFIGURED", value: 4)
!36 = !DIEnumerator(name: "PKG_STAT_TRIGGERSAWAITED", value: 5)
!37 = !DIEnumerator(name: "PKG_STAT_TRIGGERSPENDING", value: 6)
!38 = !DIEnumerator(name: "PKG_STAT_INSTALLED", value: 7)
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgpriority", file: !17, line: 179, size: 32, align: 32, elements: !40)
!40 = !{!41, !42, !43, !44, !45, !46, !47, !48}
!41 = !DIEnumerator(name: "PKG_PRIO_REQUIRED", value: 0)
!42 = !DIEnumerator(name: "PKG_PRIO_IMPORTANT", value: 1)
!43 = !DIEnumerator(name: "PKG_PRIO_STANDARD", value: 2)
!44 = !DIEnumerator(name: "PKG_PRIO_OPTIONAL", value: 3)
!45 = !DIEnumerator(name: "PKG_PRIO_EXTRA", value: 4)
!46 = !DIEnumerator(name: "PKG_PRIO_OTHER", value: 5)
!47 = !DIEnumerator(name: "PKG_PRIO_UNKNOWN", value: 6)
!48 = !DIEnumerator(name: "PKG_PRIO_UNSET", value: -1)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_arch_type", file: !50, line: 37, size: 32, align: 32, elements: !51)
!50 = !DIFile(filename: "../../lib/dpkg/arch.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!51 = !{!52, !53, !54, !55, !56, !57, !58, !59}
!52 = !DIEnumerator(name: "DPKG_ARCH_NONE", value: 0)
!53 = !DIEnumerator(name: "DPKG_ARCH_EMPTY", value: 1)
!54 = !DIEnumerator(name: "DPKG_ARCH_ILLEGAL", value: 2)
!55 = !DIEnumerator(name: "DPKG_ARCH_WILDCARD", value: 3)
!56 = !DIEnumerator(name: "DPKG_ARCH_ALL", value: 4)
!57 = !DIEnumerator(name: "DPKG_ARCH_NATIVE", value: 5)
!58 = !DIEnumerator(name: "DPKG_ARCH_FOREIGN", value: 6)
!59 = !DIEnumerator(name: "DPKG_ARCH_UNKNOWN", value: 7)
!60 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_relation", file: !61, line: 61, size: 32, align: 32, elements: !62)
!61 = !DIFile(filename: "../../lib/dpkg/version.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!62 = !{!63, !64, !65, !66, !67, !68}
!63 = !DIEnumerator(name: "DPKG_RELATION_NONE", value: 0)
!64 = !DIEnumerator(name: "DPKG_RELATION_EQ", value: 1)
!65 = !DIEnumerator(name: "DPKG_RELATION_LT", value: 2)
!66 = !DIEnumerator(name: "DPKG_RELATION_LE", value: 3)
!67 = !DIEnumerator(name: "DPKG_RELATION_GT", value: 4)
!68 = !DIEnumerator(name: "DPKG_RELATION_GE", value: 5)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "deptype", file: !17, line: 44, size: 32, align: 32, elements: !70)
!70 = !{!71, !72, !73, !74, !75, !76, !77, !78, !79}
!71 = !DIEnumerator(name: "dep_suggests", value: 0)
!72 = !DIEnumerator(name: "dep_recommends", value: 1)
!73 = !DIEnumerator(name: "dep_depends", value: 2)
!74 = !DIEnumerator(name: "dep_predepends", value: 3)
!75 = !DIEnumerator(name: "dep_breaks", value: 4)
!76 = !DIEnumerator(name: "dep_conflicts", value: 5)
!77 = !DIEnumerator(name: "dep_provides", value: 6)
!78 = !DIEnumerator(name: "dep_replaces", value: 7)
!79 = !DIEnumerator(name: "dep_enhances", value: 8)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgmultiarch", file: !17, line: 95, size: 32, align: 32, elements: !81)
!81 = !{!82, !83, !84, !85}
!82 = !DIEnumerator(name: "PKG_MULTIARCH_NO", value: 0)
!83 = !DIEnumerator(name: "PKG_MULTIARCH_SAME", value: 1)
!84 = !DIEnumerator(name: "PKG_MULTIARCH_ALLOWED", value: 2)
!85 = !DIEnumerator(name: "PKG_MULTIARCH_FOREIGN", value: 3)
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "debugflags", file: !87, line: 41, size: 32, align: 32, elements: !88)
!87 = !DIFile(filename: "../../lib/dpkg/debug.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!88 = !{!89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101}
!89 = !DIEnumerator(name: "dbg_general", value: 1)
!90 = !DIEnumerator(name: "dbg_scripts", value: 2)
!91 = !DIEnumerator(name: "dbg_eachfile", value: 8)
!92 = !DIEnumerator(name: "dbg_eachfiledetail", value: 64)
!93 = !DIEnumerator(name: "dbg_conff", value: 16)
!94 = !DIEnumerator(name: "dbg_conffdetail", value: 128)
!95 = !DIEnumerator(name: "dbg_depcon", value: 32)
!96 = !DIEnumerator(name: "dbg_depcondetail", value: 256)
!97 = !DIEnumerator(name: "dbg_veryverbose", value: 512)
!98 = !DIEnumerator(name: "dbg_stupidlyverbose", value: 1024)
!99 = !DIEnumerator(name: "dbg_triggers", value: 4096)
!100 = !DIEnumerator(name: "dbg_triggersdetail", value: 8192)
!101 = !DIEnumerator(name: "dbg_triggersstupid", value: 16384)
!102 = !{!103}
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!104 = !{!105, !153, !211, !212}
!105 = distinct !DIGlobalVariable(name: "sb_prev", scope: !106, file: !107, line: 48, type: !111, isLocal: true, isDefinition: true, variable: %struct.stat* @ensure_diversions.sb_prev)
!106 = distinct !DISubprogram(name: "ensure_diversions", scope: !107, file: !107, line: 46, type: !108, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !110)
!107 = !DIFile(filename: "db-fsys-divert.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!108 = !DISubroutineType(types: !109)
!109 = !{null}
!110 = !{}
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !112, line: 46, size: 1152, align: 64, elements: !113)
!112 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!113 = !{!114, !118, !120, !122, !125, !127, !129, !131, !132, !135, !137, !139, !147, !148, !149}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !111, file: !112, line: 48, baseType: !115, size: 64, align: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !116, line: 124, baseType: !117)
!116 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!117 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !111, file: !112, line: 53, baseType: !119, size: 64, align: 64, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !116, line: 127, baseType: !117)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !111, file: !112, line: 61, baseType: !121, size: 64, align: 64, offset: 128)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !116, line: 130, baseType: !117)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !111, file: !112, line: 62, baseType: !123, size: 32, align: 32, offset: 192)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !116, line: 129, baseType: !124)
!124 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !111, file: !112, line: 64, baseType: !126, size: 32, align: 32, offset: 224)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !116, line: 125, baseType: !124)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !111, file: !112, line: 65, baseType: !128, size: 32, align: 32, offset: 256)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !116, line: 126, baseType: !124)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !111, file: !112, line: 67, baseType: !130, size: 32, align: 32, offset: 288)
!130 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !111, file: !112, line: 69, baseType: !115, size: 64, align: 64, offset: 320)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !111, file: !112, line: 74, baseType: !133, size: 64, align: 64, offset: 384)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !116, line: 131, baseType: !134)
!134 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !111, file: !112, line: 78, baseType: !136, size: 64, align: 64, offset: 448)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !116, line: 153, baseType: !134)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !111, file: !112, line: 80, baseType: !138, size: 64, align: 64, offset: 512)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !116, line: 158, baseType: !134)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !111, file: !112, line: 91, baseType: !140, size: 128, align: 64, offset: 576)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !141, line: 120, size: 128, align: 64, elements: !142)
!141 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!142 = !{!143, !145}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !140, file: !141, line: 122, baseType: !144, size: 64, align: 64)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !116, line: 139, baseType: !134)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !140, file: !141, line: 123, baseType: !146, size: 64, align: 64, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !116, line: 175, baseType: !134)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !111, file: !112, line: 92, baseType: !140, size: 128, align: 64, offset: 704)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !111, file: !112, line: 93, baseType: !140, size: 128, align: 64, offset: 832)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !111, file: !112, line: 106, baseType: !150, size: 192, align: 64, offset: 960)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 192, align: 64, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 3)
!153 = distinct !DIGlobalVariable(name: "file_prev", scope: !106, file: !107, line: 51, type: !154, isLocal: true, isDefinition: true, variable: %struct._IO_FILE** @ensure_diversions.file_prev)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64, align: 64)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !156, line: 48, baseType: !157)
!156 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !158, line: 241, size: 1728, align: 64, elements: !159)
!158 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!159 = !{!160, !161, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !182, !183, !184, !185, !186, !188, !190, !194, !197, !199, !200, !201, !202, !203, !206, !207}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !157, file: !158, line: 242, baseType: !130, size: 32, align: 32)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !157, file: !158, line: 247, baseType: !162, size: 64, align: 64, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64, align: 64)
!163 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !157, file: !158, line: 248, baseType: !162, size: 64, align: 64, offset: 128)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !157, file: !158, line: 249, baseType: !162, size: 64, align: 64, offset: 192)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !157, file: !158, line: 250, baseType: !162, size: 64, align: 64, offset: 256)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !157, file: !158, line: 251, baseType: !162, size: 64, align: 64, offset: 320)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !157, file: !158, line: 252, baseType: !162, size: 64, align: 64, offset: 384)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !157, file: !158, line: 253, baseType: !162, size: 64, align: 64, offset: 448)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !157, file: !158, line: 254, baseType: !162, size: 64, align: 64, offset: 512)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !157, file: !158, line: 256, baseType: !162, size: 64, align: 64, offset: 576)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !157, file: !158, line: 257, baseType: !162, size: 64, align: 64, offset: 640)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !157, file: !158, line: 258, baseType: !162, size: 64, align: 64, offset: 704)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !157, file: !158, line: 260, baseType: !175, size: 64, align: 64, offset: 768)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64, align: 64)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !158, line: 156, size: 192, align: 64, elements: !177)
!177 = !{!178, !179, !181}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !176, file: !158, line: 157, baseType: !175, size: 64, align: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !176, file: !158, line: 158, baseType: !180, size: 64, align: 64, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64, align: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !176, file: !158, line: 162, baseType: !130, size: 32, align: 32, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !157, file: !158, line: 262, baseType: !180, size: 64, align: 64, offset: 832)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !157, file: !158, line: 264, baseType: !130, size: 32, align: 32, offset: 896)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !157, file: !158, line: 268, baseType: !130, size: 32, align: 32, offset: 928)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !157, file: !158, line: 270, baseType: !133, size: 64, align: 64, offset: 960)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !157, file: !158, line: 274, baseType: !187, size: 16, align: 16, offset: 1024)
!187 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !157, file: !158, line: 275, baseType: !189, size: 8, align: 8, offset: 1040)
!189 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !157, file: !158, line: 276, baseType: !191, size: 8, align: 8, offset: 1048)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 8, align: 8, elements: !192)
!192 = !{!193}
!193 = !DISubrange(count: 1)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !157, file: !158, line: 280, baseType: !195, size: 64, align: 64, offset: 1088)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64, align: 64)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !158, line: 150, baseType: null)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !157, file: !158, line: 289, baseType: !198, size: 64, align: 64, offset: 1152)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !116, line: 132, baseType: !134)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !157, file: !158, line: 297, baseType: !103, size: 64, align: 64, offset: 1216)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !157, file: !158, line: 298, baseType: !103, size: 64, align: 64, offset: 1280)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !157, file: !158, line: 299, baseType: !103, size: 64, align: 64, offset: 1344)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !157, file: !158, line: 300, baseType: !103, size: 64, align: 64, offset: 1408)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !157, file: !158, line: 302, baseType: !204, size: 64, align: 64, offset: 1472)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !205, line: 216, baseType: !117)
!205 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !157, file: !158, line: 303, baseType: !130, size: 32, align: 32, offset: 1536)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !157, file: !158, line: 305, baseType: !208, size: 160, align: 8, offset: 1568)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 160, align: 8, elements: !209)
!209 = !{!210}
!210 = !DISubrange(count: 20)
!211 = distinct !DIGlobalVariable(name: "diversionsname", scope: !0, file: !107, line: 43, type: !162, isLocal: true, isDefinition: true, variable: i8** @diversionsname)
!212 = distinct !DIGlobalVariable(name: "diversions", scope: !0, file: !107, line: 42, type: !213, isLocal: true, isDefinition: true, variable: %struct.fsys_diversion** @diversions)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64, align: 64)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_diversion", file: !4, line: 151, size: 256, align: 64, elements: !215)
!215 = !{!216, !256, !257, !392}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "useinstead", scope: !214, file: !4, line: 152, baseType: !217, size: 64, align: 64)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64, align: 64)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode", file: !4, line: 90, size: 640, align: 64, elements: !219)
!219 = !{!220, !221, !224, !227, !228, !242, !245, !246, !247, !248}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !218, file: !4, line: 91, baseType: !217, size: 64, align: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !218, file: !4, line: 92, baseType: !222, size: 64, align: 64, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64, align: 64)
!223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "packages", scope: !218, file: !4, line: 93, baseType: !225, size: 64, align: 64, offset: 128)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64, align: 64)
!226 = !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_list", file: !4, line: 93, flags: DIFlagFwdDecl)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "divert", scope: !218, file: !4, line: 94, baseType: !213, size: 64, align: 64, offset: 192)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "statoverride", scope: !218, file: !4, line: 101, baseType: !229, size: 64, align: 64, offset: 256)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64, align: 64)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_stat", file: !231, line: 40, size: 256, align: 64, elements: !232)
!231 = !DIFile(filename: "../../lib/dpkg/file.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!232 = !{!233, !236, !238, !240, !241}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !230, file: !231, line: 41, baseType: !234, size: 32, align: 32)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !235, line: 80, baseType: !126)
!235 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!236 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !230, file: !231, line: 42, baseType: !237, size: 32, align: 32, offset: 32)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !235, line: 65, baseType: !128)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !230, file: !231, line: 43, baseType: !239, size: 32, align: 32, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !235, line: 70, baseType: !123)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "uname", scope: !230, file: !231, line: 47, baseType: !162, size: 64, align: 64, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !230, file: !231, line: 48, baseType: !162, size: 64, align: 64, offset: 192)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "trig_interested", scope: !218, file: !4, line: 103, baseType: !243, size: 64, align: 64, offset: 320)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64, align: 64)
!244 = !DICompositeType(tag: DW_TAG_structure_type, name: "trigfileint", file: !4, line: 103, flags: DIFlagFwdDecl)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !218, file: !4, line: 111, baseType: !3, size: 32, align: 32, offset: 384)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "oldhash", scope: !218, file: !4, line: 114, baseType: !222, size: 64, align: 64, offset: 448)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "newhash", scope: !218, file: !4, line: 117, baseType: !222, size: 64, align: 64, offset: 512)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "file_ondisk_id", scope: !218, file: !4, line: 119, baseType: !249, size: 64, align: 64, offset: 576)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64, align: 64)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ondisk_id", file: !4, line: 85, size: 128, align: 64, elements: !251)
!251 = !{!252, !254}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "id_dev", scope: !250, file: !4, line: 86, baseType: !253, size: 64, align: 64)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !235, line: 60, baseType: !115)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "id_ino", scope: !250, file: !4, line: 87, baseType: !255, size: 64, align: 64, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !235, line: 48, baseType: !119)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "camefrom", scope: !214, file: !4, line: 153, baseType: !217, size: 64, align: 64, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "pkgset", scope: !214, file: !4, line: 154, baseType: !258, size: 64, align: 64, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64, align: 64)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgset", file: !17, line: 242, size: 3392, align: 64, elements: !260)
!260 = !{!261, !262, !263, !386, !391}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !259, file: !17, line: 243, baseType: !258, size: 64, align: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !259, file: !17, line: 244, baseType: !222, size: 64, align: 64, offset: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !259, file: !17, line: 245, baseType: !264, size: 3072, align: 64, offset: 128)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkginfo", file: !17, line: 195, size: 3072, align: 64, elements: !265)
!265 = !{!266, !267, !269, !270, !271, !272, !273, !274, !275, !281, !340, !341, !344, !353, !369, !370, !376, !382, !384, !385}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !264, file: !17, line: 196, baseType: !258, size: 64, align: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "arch_next", scope: !264, file: !17, line: 197, baseType: !268, size: 64, align: 64, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64, align: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "want", scope: !264, file: !17, line: 199, baseType: !16, size: 32, align: 32, offset: 128)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "eflag", scope: !264, file: !17, line: 201, baseType: !25, size: 32, align: 32, offset: 160)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !264, file: !17, line: 202, baseType: !29, size: 32, align: 32, offset: 192)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !264, file: !17, line: 203, baseType: !39, size: 32, align: 32, offset: 224)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "otherpriority", scope: !264, file: !17, line: 204, baseType: !222, size: 64, align: 64, offset: 256)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "section", scope: !264, file: !17, line: 205, baseType: !222, size: 64, align: 64, offset: 320)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "configversion", scope: !264, file: !17, line: 206, baseType: !276, size: 192, align: 64, offset: 384)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_version", file: !61, line: 42, size: 192, align: 64, elements: !277)
!277 = !{!278, !279, !280}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !276, file: !61, line: 44, baseType: !124, size: 32, align: 32)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !276, file: !61, line: 46, baseType: !222, size: 64, align: 64, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !276, file: !61, line: 48, baseType: !222, size: 64, align: 64, offset: 128)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !264, file: !17, line: 207, baseType: !282, size: 960, align: 64, offset: 576)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgbin", file: !17, line: 107, size: 960, align: 64, elements: !283)
!283 = !{!284, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !333}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "depends", scope: !282, file: !17, line: 108, baseType: !285, size: 64, align: 64)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64, align: 64)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dependency", file: !17, line: 56, size: 256, align: 64, elements: !287)
!287 = !{!288, !289, !290, !313}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !286, file: !17, line: 57, baseType: !268, size: 64, align: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !286, file: !17, line: 58, baseType: !285, size: 64, align: 64, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !286, file: !17, line: 59, baseType: !291, size: 64, align: 64, offset: 128)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64, align: 64)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "deppossi", file: !17, line: 63, size: 640, align: 64, elements: !293)
!293 = !{!294, !295, !296, !297, !298, !299, !308, !309, !310, !312}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !292, file: !17, line: 64, baseType: !285, size: 64, align: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "ed", scope: !292, file: !17, line: 65, baseType: !258, size: 64, align: 64, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !292, file: !17, line: 66, baseType: !291, size: 64, align: 64, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "rev_next", scope: !292, file: !17, line: 66, baseType: !291, size: 64, align: 64, offset: 192)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "rev_prev", scope: !292, file: !17, line: 66, baseType: !291, size: 64, align: 64, offset: 256)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !292, file: !17, line: 67, baseType: !300, size: 64, align: 64, offset: 320)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64, align: 64)
!301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !302)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_arch", file: !50, line: 48, size: 192, align: 64, elements: !303)
!303 = !{!304, !306, !307}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !302, file: !50, line: 49, baseType: !305, size: 64, align: 64)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64, align: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !302, file: !50, line: 50, baseType: !222, size: 64, align: 64, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !302, file: !50, line: 51, baseType: !49, size: 32, align: 32, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !292, file: !17, line: 68, baseType: !276, size: 192, align: 64, offset: 384)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "verrel", scope: !292, file: !17, line: 69, baseType: !60, size: 32, align: 32, offset: 576)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "arch_is_implicit", scope: !292, file: !17, line: 70, baseType: !311, size: 8, align: 8, offset: 608)
!311 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "cyclebreak", scope: !292, file: !17, line: 71, baseType: !311, size: 8, align: 8, offset: 616)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !286, file: !17, line: 60, baseType: !69, size: 32, align: 32, offset: 192)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "essential", scope: !282, file: !17, line: 110, baseType: !311, size: 8, align: 8, offset: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "multiarch", scope: !282, file: !17, line: 111, baseType: !80, size: 32, align: 32, offset: 96)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !282, file: !17, line: 112, baseType: !300, size: 64, align: 64, offset: 128)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "pkgname_archqual", scope: !282, file: !17, line: 115, baseType: !222, size: 64, align: 64, offset: 192)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !282, file: !17, line: 116, baseType: !222, size: 64, align: 64, offset: 256)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "maintainer", scope: !282, file: !17, line: 117, baseType: !222, size: 64, align: 64, offset: 320)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !282, file: !17, line: 118, baseType: !222, size: 64, align: 64, offset: 384)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "installedsize", scope: !282, file: !17, line: 119, baseType: !222, size: 64, align: 64, offset: 448)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !282, file: !17, line: 120, baseType: !222, size: 64, align: 64, offset: 512)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "bugs", scope: !282, file: !17, line: 121, baseType: !222, size: 64, align: 64, offset: 576)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !282, file: !17, line: 122, baseType: !276, size: 192, align: 64, offset: 640)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "conffiles", scope: !282, file: !17, line: 123, baseType: !326, size: 64, align: 64, offset: 832)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64, align: 64)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conffile", file: !17, line: 80, size: 256, align: 64, elements: !328)
!328 = !{!329, !330, !331, !332}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !327, file: !17, line: 81, baseType: !326, size: 64, align: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !327, file: !17, line: 82, baseType: !222, size: 64, align: 64, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !327, file: !17, line: 83, baseType: !222, size: 64, align: 64, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "obsolete", scope: !327, file: !17, line: 84, baseType: !311, size: 8, align: 8, offset: 192)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "arbs", scope: !282, file: !17, line: 124, baseType: !334, size: 64, align: 64, offset: 896)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64, align: 64)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arbitraryfield", file: !17, line: 74, size: 192, align: 64, elements: !336)
!336 = !{!337, !338, !339}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !335, file: !17, line: 75, baseType: !334, size: 64, align: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !335, file: !17, line: 76, baseType: !222, size: 64, align: 64, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !335, file: !17, line: 77, baseType: !222, size: 64, align: 64, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !264, file: !17, line: 208, baseType: !282, size: 960, align: 64, offset: 1536)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "clientdata", scope: !264, file: !17, line: 209, baseType: !342, size: 64, align: 64, offset: 2496)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64, align: 64)
!343 = !DICompositeType(tag: DW_TAG_structure_type, name: "perpackagestate", file: !17, line: 151, flags: DIFlagFwdDecl)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "archives", scope: !264, file: !17, line: 211, baseType: !345, size: 64, align: 64, offset: 2560)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64, align: 64)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archivedetails", file: !17, line: 87, size: 320, align: 64, elements: !347)
!347 = !{!348, !349, !350, !351, !352}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !346, file: !17, line: 88, baseType: !345, size: 64, align: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !346, file: !17, line: 89, baseType: !222, size: 64, align: 64, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "msdosname", scope: !346, file: !17, line: 90, baseType: !222, size: 64, align: 64, offset: 128)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !346, file: !17, line: 91, baseType: !222, size: 64, align: 64, offset: 192)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "md5sum", scope: !346, file: !17, line: 92, baseType: !222, size: 64, align: 64, offset: 256)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "trigaw", scope: !264, file: !17, line: 216, baseType: !354, size: 128, align: 64, offset: 2624)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !264, file: !17, line: 213, size: 128, align: 64, elements: !355)
!355 = !{!356, !368}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !354, file: !17, line: 215, baseType: !357, size: 64, align: 64)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64, align: 64)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigaw", file: !17, line: 142, size: 320, align: 64, elements: !359)
!359 = !{!360, !361, !362, !363}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "aw", scope: !358, file: !17, line: 143, baseType: !268, size: 64, align: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "pend", scope: !358, file: !17, line: 143, baseType: !268, size: 64, align: 64, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "samepend_next", scope: !358, file: !17, line: 144, baseType: !357, size: 64, align: 64, offset: 128)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "sameaw", scope: !358, file: !17, line: 147, baseType: !364, size: 128, align: 64, offset: 192)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !358, file: !17, line: 145, size: 128, align: 64, elements: !365)
!365 = !{!366, !367}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !364, file: !17, line: 146, baseType: !357, size: 64, align: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !364, file: !17, line: 146, baseType: !357, size: 64, align: 64, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !354, file: !17, line: 215, baseType: !357, size: 64, align: 64, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "othertrigaw_head", scope: !264, file: !17, line: 219, baseType: !357, size: 64, align: 64, offset: 2752)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "trigpend_head", scope: !264, file: !17, line: 220, baseType: !371, size: 64, align: 64, offset: 2816)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64, align: 64)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigpend", file: !17, line: 134, size: 128, align: 64, elements: !373)
!373 = !{!374, !375}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !372, file: !17, line: 135, baseType: !371, size: 64, align: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !372, file: !17, line: 136, baseType: !222, size: 64, align: 64, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !264, file: !17, line: 231, baseType: !377, size: 64, align: 64, offset: 2880)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64, align: 64)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode_list", file: !4, line: 122, size: 128, align: 64, elements: !379)
!379 = !{!380, !381}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !378, file: !4, line: 123, baseType: !377, size: 64, align: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "namenode", scope: !378, file: !4, line: 124, baseType: !217, size: 64, align: 64, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_phys_offs", scope: !264, file: !17, line: 232, baseType: !383, size: 64, align: 64, offset: 2944)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !235, line: 86, baseType: !133)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_valid", scope: !264, file: !17, line: 233, baseType: !311, size: 8, align: 8, offset: 3008)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "status_dirty", scope: !264, file: !17, line: 236, baseType: !311, size: 8, align: 8, offset: 3016)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "depended", scope: !259, file: !17, line: 249, baseType: !387, size: 128, align: 64, offset: 3200)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !259, file: !17, line: 246, size: 128, align: 64, elements: !388)
!388 = !{!389, !390}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !387, file: !17, line: 247, baseType: !291, size: 64, align: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !387, file: !17, line: 248, baseType: !291, size: 64, align: 64, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "installed_instances", scope: !259, file: !17, line: 250, baseType: !130, size: 32, align: 32, offset: 3328)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !214, file: !4, line: 157, baseType: !213, size: 64, align: 64, offset: 192)
!393 = !{i32 2, !"Dwarf Version", i32 4}
!394 = !{i32 2, !"Debug Info Version", i32 3}
!395 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!396 = !DILocalVariable(name: "sb_next", scope: !106, file: !107, line: 49, type: !111)
!397 = !DIExpression()
!398 = !DILocation(line: 49, column: 14, scope: !106)
!399 = !DILocalVariable(name: "linebuf", scope: !106, file: !107, line: 50, type: !400)
!400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 8192, align: 8, elements: !401)
!401 = !{!402}
!402 = !DISubrange(count: 1024)
!403 = !DILocation(line: 50, column: 7, scope: !106)
!404 = !DILocalVariable(name: "file", scope: !106, file: !107, line: 52, type: !154)
!405 = !DILocation(line: 52, column: 8, scope: !106)
!406 = !DILocalVariable(name: "ov", scope: !106, file: !107, line: 53, type: !213)
!407 = !DILocation(line: 53, column: 25, scope: !106)
!408 = !DILocalVariable(name: "oicontest", scope: !106, file: !107, line: 53, type: !213)
!409 = !DILocation(line: 53, column: 30, scope: !106)
!410 = !DILocalVariable(name: "oialtname", scope: !106, file: !107, line: 53, type: !213)
!411 = !DILocation(line: 53, column: 42, scope: !106)
!412 = !DILocation(line: 55, column: 6, scope: !413)
!413 = distinct !DILexicalBlock(scope: !106, file: !107, line: 55, column: 6)
!414 = !DILocation(line: 55, column: 21, scope: !413)
!415 = !DILocation(line: 55, column: 6, scope: !106)
!416 = !DILocation(line: 56, column: 20, scope: !413)
!417 = !DILocation(line: 56, column: 18, scope: !413)
!418 = !DILocation(line: 56, column: 3, scope: !413)
!419 = !DILocation(line: 58, column: 13, scope: !106)
!420 = !DILocation(line: 60, column: 15, scope: !106)
!421 = !DILocation(line: 60, column: 9, scope: !106)
!422 = !DILocation(line: 60, column: 7, scope: !106)
!423 = !DILocation(line: 61, column: 7, scope: !424)
!424 = distinct !DILexicalBlock(scope: !106, file: !107, line: 61, column: 6)
!425 = !DILocation(line: 61, column: 6, scope: !106)
!426 = !DILocation(line: 62, column: 8, scope: !427)
!427 = distinct !DILexicalBlock(scope: !428, file: !107, line: 62, column: 6)
!428 = distinct !DILexicalBlock(scope: !424, file: !107, line: 61, column: 13)
!429 = !DILocation(line: 62, column: 7, scope: !427)
!430 = !DILocation(line: 62, column: 12, scope: !427)
!431 = !DILocation(line: 62, column: 6, scope: !428)
!432 = !DILocation(line: 63, column: 11, scope: !427)
!433 = !DILocation(line: 63, column: 4, scope: !434)
!434 = !DILexicalBlockFile(scope: !427, file: !107, discriminator: 1)
!435 = !DILocation(line: 63, column: 4, scope: !427)
!436 = !DILocation(line: 64, column: 2, scope: !428)
!437 = !DILocation(line: 65, column: 21, scope: !438)
!438 = distinct !DILexicalBlock(scope: !424, file: !107, line: 64, column: 9)
!439 = !DILocation(line: 65, column: 14, scope: !438)
!440 = !DILocation(line: 65, column: 28, scope: !438)
!441 = !DILocation(line: 65, column: 3, scope: !442)
!442 = !DILexicalBlockFile(scope: !438, file: !107, discriminator: 1)
!443 = !DILocation(line: 67, column: 20, scope: !444)
!444 = distinct !DILexicalBlock(scope: !438, file: !107, line: 67, column: 7)
!445 = !DILocation(line: 67, column: 13, scope: !444)
!446 = !DILocation(line: 67, column: 7, scope: !447)
!447 = !DILexicalBlockFile(scope: !444, file: !107, discriminator: 1)
!448 = !DILocation(line: 67, column: 7, scope: !444)
!449 = !DILocation(line: 67, column: 7, scope: !438)
!450 = !DILocation(line: 68, column: 11, scope: !444)
!451 = !DILocation(line: 68, column: 4, scope: !447)
!452 = !DILocation(line: 68, column: 4, scope: !444)
!453 = !DILocation(line: 77, column: 7, scope: !454)
!454 = distinct !DILexicalBlock(scope: !438, file: !107, line: 77, column: 7)
!455 = !DILocation(line: 77, column: 17, scope: !454)
!456 = !DILocation(line: 78, column: 15, scope: !454)
!457 = !DILocation(line: 78, column: 33, scope: !454)
!458 = !DILocation(line: 78, column: 22, scope: !454)
!459 = !DILocation(line: 78, column: 40, scope: !454)
!460 = !DILocation(line: 79, column: 15, scope: !454)
!461 = !DILocation(line: 79, column: 33, scope: !454)
!462 = !DILocation(line: 79, column: 22, scope: !454)
!463 = !DILocation(line: 77, column: 7, scope: !442)
!464 = !DILocation(line: 80, column: 11, scope: !465)
!465 = distinct !DILexicalBlock(scope: !454, file: !107, line: 79, column: 41)
!466 = !DILocation(line: 80, column: 4, scope: !465)
!467 = !DILocation(line: 81, column: 15, scope: !465)
!468 = !DILocation(line: 82, column: 4, scope: !465)
!469 = !DILocation(line: 83, column: 4, scope: !465)
!470 = !DILocation(line: 85, column: 13, scope: !438)
!471 = !DILocation(line: 87, column: 6, scope: !472)
!472 = distinct !DILexicalBlock(scope: !106, file: !107, line: 87, column: 6)
!473 = !DILocation(line: 87, column: 6, scope: !106)
!474 = !DILocation(line: 88, column: 10, scope: !472)
!475 = !DILocation(line: 88, column: 3, scope: !472)
!476 = !DILocation(line: 89, column: 14, scope: !106)
!477 = !DILocation(line: 89, column: 12, scope: !106)
!478 = !DILocation(line: 91, column: 12, scope: !479)
!479 = distinct !DILexicalBlock(scope: !106, file: !107, line: 91, column: 2)
!480 = !DILocation(line: 91, column: 10, scope: !479)
!481 = !DILocation(line: 91, column: 7, scope: !479)
!482 = !DILocation(line: 91, column: 24, scope: !483)
!483 = !DILexicalBlockFile(scope: !484, file: !107, discriminator: 1)
!484 = distinct !DILexicalBlock(scope: !479, file: !107, line: 91, column: 2)
!485 = !DILocation(line: 91, column: 2, scope: !483)
!486 = !DILocation(line: 92, column: 3, scope: !487)
!487 = distinct !DILexicalBlock(scope: !484, file: !107, line: 91, column: 43)
!488 = !DILocation(line: 92, column: 7, scope: !487)
!489 = !DILocation(line: 92, column: 19, scope: !487)
!490 = !DILocation(line: 92, column: 27, scope: !487)
!491 = !DILocation(line: 92, column: 37, scope: !487)
!492 = !DILocation(line: 92, column: 44, scope: !487)
!493 = !DILocation(line: 93, column: 3, scope: !487)
!494 = !DILocation(line: 93, column: 7, scope: !487)
!495 = !DILocation(line: 93, column: 19, scope: !487)
!496 = !DILocation(line: 93, column: 26, scope: !487)
!497 = !DILocation(line: 94, column: 2, scope: !487)
!498 = !DILocation(line: 91, column: 33, scope: !499)
!499 = !DILexicalBlockFile(scope: !484, file: !107, discriminator: 2)
!500 = !DILocation(line: 91, column: 37, scope: !499)
!501 = !DILocation(line: 91, column: 31, scope: !499)
!502 = !DILocation(line: 91, column: 2, scope: !499)
!503 = distinct !{!503, !504}
!504 = !DILocation(line: 91, column: 2, scope: !106)
!505 = !DILocation(line: 95, column: 13, scope: !106)
!506 = !DILocation(line: 96, column: 7, scope: !507)
!507 = distinct !DILexicalBlock(scope: !106, file: !107, line: 96, column: 6)
!508 = !DILocation(line: 96, column: 6, scope: !106)
!509 = !DILocation(line: 97, column: 14, scope: !510)
!510 = distinct !DILexicalBlock(scope: !507, file: !107, line: 96, column: 13)
!511 = !DILocation(line: 98, column: 3, scope: !510)
!512 = !DILocation(line: 99, column: 3, scope: !510)
!513 = !DILocation(line: 101, column: 2, scope: !106)
!514 = !DILocation(line: 103, column: 2, scope: !106)
!515 = !DILocation(line: 103, column: 23, scope: !516)
!516 = !DILexicalBlockFile(scope: !106, file: !107, discriminator: 1)
!517 = !DILocation(line: 103, column: 49, scope: !516)
!518 = !DILocation(line: 103, column: 55, scope: !516)
!519 = !DILocation(line: 103, column: 9, scope: !516)
!520 = !DILocation(line: 103, column: 71, scope: !516)
!521 = !DILocation(line: 103, column: 2, scope: !516)
!522 = !DILocation(line: 104, column: 15, scope: !523)
!523 = distinct !DILexicalBlock(scope: !106, file: !107, line: 103, column: 77)
!524 = !DILocation(line: 104, column: 13, scope: !523)
!525 = !DILocation(line: 105, column: 15, scope: !523)
!526 = !DILocation(line: 105, column: 13, scope: !523)
!527 = !DILocation(line: 107, column: 45, scope: !523)
!528 = !DILocation(line: 107, column: 25, scope: !523)
!529 = !DILocation(line: 107, column: 3, scope: !523)
!530 = !DILocation(line: 107, column: 14, scope: !523)
!531 = !DILocation(line: 107, column: 23, scope: !523)
!532 = !DILocation(line: 108, column: 3, scope: !523)
!533 = !DILocation(line: 108, column: 14, scope: !523)
!534 = !DILocation(line: 108, column: 25, scope: !523)
!535 = !DILocation(line: 110, column: 14, scope: !523)
!536 = !DILocation(line: 110, column: 40, scope: !523)
!537 = !DILocation(line: 110, column: 46, scope: !523)
!538 = !DILocation(line: 110, column: 3, scope: !523)
!539 = !DILocation(line: 111, column: 47, scope: !523)
!540 = !DILocation(line: 111, column: 27, scope: !523)
!541 = !DILocation(line: 111, column: 3, scope: !523)
!542 = !DILocation(line: 111, column: 14, scope: !523)
!543 = !DILocation(line: 111, column: 25, scope: !523)
!544 = !DILocation(line: 112, column: 3, scope: !523)
!545 = !DILocation(line: 112, column: 14, scope: !523)
!546 = !DILocation(line: 112, column: 23, scope: !523)
!547 = !DILocation(line: 114, column: 14, scope: !523)
!548 = !DILocation(line: 114, column: 40, scope: !523)
!549 = !DILocation(line: 114, column: 46, scope: !523)
!550 = !DILocation(line: 114, column: 3, scope: !523)
!551 = !DILocation(line: 115, column: 30, scope: !523)
!552 = !DILocation(line: 115, column: 23, scope: !523)
!553 = !DILocation(line: 116, column: 41, scope: !523)
!554 = !DILocation(line: 116, column: 23, scope: !523)
!555 = !DILocation(line: 115, column: 23, scope: !556)
!556 = !DILexicalBlockFile(scope: !523, file: !107, discriminator: 1)
!557 = !DILocation(line: 115, column: 23, scope: !558)
!558 = !DILexicalBlockFile(scope: !523, file: !107, discriminator: 2)
!559 = !DILocation(line: 115, column: 23, scope: !560)
!560 = !DILexicalBlockFile(scope: !523, file: !107, discriminator: 3)
!561 = !DILocation(line: 115, column: 3, scope: !560)
!562 = !DILocation(line: 115, column: 14, scope: !560)
!563 = !DILocation(line: 115, column: 21, scope: !560)
!564 = !DILocation(line: 117, column: 23, scope: !523)
!565 = !DILocation(line: 117, column: 34, scope: !523)
!566 = !DILocation(line: 117, column: 3, scope: !523)
!567 = !DILocation(line: 117, column: 14, scope: !523)
!568 = !DILocation(line: 117, column: 21, scope: !523)
!569 = !DILocation(line: 119, column: 7, scope: !570)
!570 = distinct !DILexicalBlock(scope: !523, file: !107, line: 119, column: 7)
!571 = !DILocation(line: 119, column: 18, scope: !570)
!572 = !DILocation(line: 119, column: 28, scope: !570)
!573 = !DILocation(line: 119, column: 35, scope: !570)
!574 = !DILocation(line: 120, column: 7, scope: !570)
!575 = !DILocation(line: 120, column: 18, scope: !570)
!576 = !DILocation(line: 120, column: 30, scope: !570)
!577 = !DILocation(line: 119, column: 7, scope: !556)
!578 = !DILocation(line: 121, column: 10, scope: !570)
!579 = !DILocation(line: 122, column: 11, scope: !570)
!580 = !DILocation(line: 122, column: 22, scope: !570)
!581 = !DILocation(line: 122, column: 32, scope: !570)
!582 = !DILocation(line: 122, column: 38, scope: !570)
!583 = !DILocation(line: 122, column: 49, scope: !570)
!584 = !DILocation(line: 122, column: 61, scope: !570)
!585 = !DILocation(line: 121, column: 4, scope: !586)
!586 = !DILexicalBlockFile(scope: !570, file: !107, discriminator: 1)
!587 = !DILocation(line: 121, column: 4, scope: !570)
!588 = !DILocation(line: 124, column: 33, scope: !523)
!589 = !DILocation(line: 124, column: 3, scope: !523)
!590 = !DILocation(line: 124, column: 14, scope: !523)
!591 = !DILocation(line: 124, column: 24, scope: !523)
!592 = !DILocation(line: 124, column: 31, scope: !523)
!593 = !DILocation(line: 125, column: 35, scope: !523)
!594 = !DILocation(line: 125, column: 3, scope: !523)
!595 = !DILocation(line: 125, column: 14, scope: !523)
!596 = !DILocation(line: 125, column: 26, scope: !523)
!597 = !DILocation(line: 125, column: 33, scope: !523)
!598 = !DILocation(line: 127, column: 21, scope: !523)
!599 = !DILocation(line: 127, column: 3, scope: !523)
!600 = !DILocation(line: 127, column: 14, scope: !523)
!601 = !DILocation(line: 127, column: 19, scope: !523)
!602 = !DILocation(line: 128, column: 16, scope: !523)
!603 = !DILocation(line: 128, column: 14, scope: !523)
!604 = !DILocation(line: 103, column: 2, scope: !605)
!605 = !DILexicalBlockFile(scope: !106, file: !107, discriminator: 2)
!606 = distinct !{!606, !514}
!607 = !DILocation(line: 131, column: 13, scope: !106)
!608 = !DILocation(line: 132, column: 1, scope: !106)
!609 = !DILocation(line: 132, column: 1, scope: !516)
