; ModuleID = './[inter]lib--dpkg--db-fsys-files.o.i'
source_filename = "./[inter]lib--dpkg--db-fsys-files.o.i"
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
%struct.varbuf = type { i64, i64, i8* }
%struct.dpkg_error = type { i32, i32, i8* }
%struct.pkg_array = type { i32, %struct.pkginfo** }
%struct.progress = type { i8*, i32, i32, i32, i8 }
%struct.statfs = type { i64, i64, i64, i64, i64, i64, i64, %struct.__fsid_t, i64, i64, i64, [4 x i64] }
%struct.__fsid_t = type { [2 x i32] }
%struct.anon.2 = type { %struct.fiemap, %struct.fiemap_extent }
%struct.fiemap = type { i64, i64, i32, i32, i32, i32, [0 x %struct.fiemap_extent] }
%struct.fiemap_extent = type { i64, i64, i64, [2 x i64], i32, [3 x i32] }
%struct.atomic_file = type { i32, i8*, i8*, %struct._IO_FILE* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@allpackagesdone = internal global i8 0, align 1
@.str = private unnamed_addr constant [5 x i8] c"list\00", align 1
@onerr_abort = external global i32, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"dpkg\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"loading files list file for package '%s'\00", align 1
@.str.3 = private unnamed_addr constant [96 x i8] c"files list file for package '%.250s' missing; assuming package has no files currently installed\00", align 1
@.str.4 = private unnamed_addr constant [62 x i8] c"files list file for package '%.250s' is missing final newline\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"files list file for package '%.250s' contains empty filename\00", align 1
@saidread = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"(Reading database ... \00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"%d file or directory currently installed.)\0A\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"%d files and directories currently installed.)\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @note_must_reread_files_inpackage(%struct.pkginfo*) #0 !dbg !312 {
  %2 = alloca %struct.pkginfo*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %2, metadata !316, metadata !317), !dbg !318
  store i8 0, i8* @allpackagesdone, align 1, !dbg !319
  %3 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !320
  %4 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %3, i32 0, i32 18, !dbg !321
  store i8 0, i8* %4, align 8, !dbg !322
  ret void, !dbg !323
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define void @ensure_packagefiles_available(%struct.pkginfo*) #0 !dbg !324 {
  %2 = alloca %struct.pkginfo*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.fsys_namenode_list**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.varbuf, align 8
  %10 = alloca %struct.dpkg_error, align 8
  %11 = alloca %struct.fsys_namenode*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %2, metadata !325, metadata !317), !dbg !326
  call void @llvm.dbg.declare(metadata i8** %3, metadata !327, metadata !317), !dbg !328
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode_list*** %4, metadata !329, metadata !317), !dbg !331
  call void @llvm.dbg.declare(metadata i8** %5, metadata !332, metadata !317), !dbg !333
  call void @llvm.dbg.declare(metadata i8** %6, metadata !334, metadata !317), !dbg !335
  call void @llvm.dbg.declare(metadata i8** %7, metadata !336, metadata !317), !dbg !337
  call void @llvm.dbg.declare(metadata i8** %8, metadata !338, metadata !317), !dbg !339
  call void @llvm.dbg.declare(metadata %struct.varbuf* %9, metadata !340, metadata !317), !dbg !349
  %12 = bitcast %struct.varbuf* %9 to i8*, !dbg !349
  call void @llvm.memset.p0i8.i64(i8* %12, i8 0, i64 24, i32 8, i1 false), !dbg !349
  call void @llvm.dbg.declare(metadata %struct.dpkg_error* %10, metadata !350, metadata !317), !dbg !356
  %13 = bitcast %struct.dpkg_error* %10 to i8*, !dbg !356
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 16, i32 8, i1 false), !dbg !356
  %14 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !357
  %15 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %14, i32 0, i32 18, !dbg !359
  %16 = load i8, i8* %15, align 8, !dbg !359
  %17 = trunc i8 %16 to i1, !dbg !359
  br i1 %17, label %18, label %19, !dbg !360

; <label>:18:                                     ; preds = %1
  br label %136, !dbg !361

; <label>:19:                                     ; preds = %1
  %20 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !362
  call void @pkg_files_blank(%struct.pkginfo* %20), !dbg !363
  %21 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !364
  %22 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %21, i32 0, i32 4, !dbg !366
  %23 = load i32, i32* %22, align 8, !dbg !366
  %24 = icmp eq i32 %23, 0, !dbg !367
  br i1 %24, label %25, label %28, !dbg !368

; <label>:25:                                     ; preds = %19
  %26 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !369
  %27 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %26, i32 0, i32 18, !dbg !371
  store i8 1, i8* %27, align 8, !dbg !372
  br label %136, !dbg !373

; <label>:28:                                     ; preds = %19
  %29 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !374
  %30 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !375
  %31 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %30, i32 0, i32 9, !dbg !376
  %32 = call i8* @pkg_infodb_get_file(%struct.pkginfo* %29, %struct.pkgbin* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)), !dbg !377
  store i8* %32, i8** %3, align 8, !dbg !378
  %33 = load volatile i32, i32* @onerr_abort, align 4, !dbg !379
  %34 = add nsw i32 %33, 1, !dbg !379
  store volatile i32 %34, i32* @onerr_abort, align 4, !dbg !379
  %35 = load i8*, i8** %3, align 8, !dbg !380
  %36 = call i32 @file_slurp(i8* %35, %struct.varbuf* %9, %struct.dpkg_error* %10), !dbg !382
  %37 = icmp slt i32 %36, 0, !dbg !383
  br i1 %37, label %38, label %66, !dbg !384

; <label>:38:                                     ; preds = %28
  %39 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %10, i32 0, i32 1, !dbg !385
  %40 = load i32, i32* %39, align 4, !dbg !385
  %41 = icmp ne i32 %40, 2, !dbg !388
  br i1 %41, label %42, label %46, !dbg !389

; <label>:42:                                     ; preds = %38
  %43 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i32 0, i32 0)) #7, !dbg !390
  %44 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !391
  %45 = call i8* @pkg_name(%struct.pkginfo* %44, i32 1), !dbg !392
  call void (%struct.dpkg_error*, i8*, ...) @dpkg_error_print(%struct.dpkg_error* %10, i8* %43, i8* %45), !dbg !393
  br label %46, !dbg !395

; <label>:46:                                     ; preds = %42, %38
  %47 = load volatile i32, i32* @onerr_abort, align 4, !dbg !396
  %48 = add nsw i32 %47, -1, !dbg !396
  store volatile i32 %48, i32* @onerr_abort, align 4, !dbg !396
  %49 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !397
  %50 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %49, i32 0, i32 4, !dbg !399
  %51 = load i32, i32* %50, align 8, !dbg !399
  %52 = icmp ne i32 %51, 1, !dbg !400
  br i1 %52, label %53, label %61, !dbg !401

; <label>:53:                                     ; preds = %46
  %54 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !402
  %55 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %54, i32 0, i32 8, !dbg !403
  %56 = call zeroext i1 @dpkg_version_is_informative(%struct.dpkg_version* %55), !dbg !404
  br i1 %56, label %57, label %61, !dbg !405

; <label>:57:                                     ; preds = %53
  %58 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.3, i32 0, i32 0)) #7, !dbg !407
  %59 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !409
  %60 = call i8* @pkg_name(%struct.pkginfo* %59, i32 1), !dbg !410
  call void (i8*, ...) @warning(i8* %58, i8* %60), !dbg !411
  br label %61, !dbg !413

; <label>:61:                                     ; preds = %57, %53, %46
  %62 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !414
  %63 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %62, i32 0, i32 16, !dbg !415
  store %struct.fsys_namenode_list* null, %struct.fsys_namenode_list** %63, align 8, !dbg !416
  %64 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !417
  %65 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %64, i32 0, i32 18, !dbg !418
  store i8 1, i8* %65, align 8, !dbg !419
  br label %136, !dbg !420

; <label>:66:                                     ; preds = %28
  %67 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %9, i32 0, i32 0, !dbg !421
  %68 = load i64, i64* %67, align 8, !dbg !421
  %69 = icmp ne i64 %68, 0, !dbg !423
  br i1 %69, label %70, label %131, !dbg !424

; <label>:70:                                     ; preds = %66
  %71 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %9, i32 0, i32 2, !dbg !425
  %72 = load i8*, i8** %71, align 8, !dbg !425
  %73 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %9, i32 0, i32 0, !dbg !427
  %74 = load i64, i64* %73, align 8, !dbg !427
  %75 = getelementptr inbounds i8, i8* %72, i64 %74, !dbg !428
  store i8* %75, i8** %5, align 8, !dbg !429
  %76 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !430
  %77 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %76, i32 0, i32 16, !dbg !431
  store %struct.fsys_namenode_list** %77, %struct.fsys_namenode_list*** %4, align 8, !dbg !432
  %78 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %9, i32 0, i32 2, !dbg !433
  %79 = load i8*, i8** %78, align 8, !dbg !433
  store i8* %79, i8** %6, align 8, !dbg !434
  br label %80, !dbg !435

; <label>:80:                                     ; preds = %121, %70
  %81 = load i8*, i8** %6, align 8, !dbg !436
  %82 = load i8*, i8** %5, align 8, !dbg !438
  %83 = icmp ult i8* %81, %82, !dbg !439
  br i1 %83, label %84, label %130, !dbg !440

; <label>:84:                                     ; preds = %80
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %11, metadata !441, metadata !317), !dbg !443
  %85 = load i8*, i8** %6, align 8, !dbg !444
  %86 = load i8*, i8** %5, align 8, !dbg !445
  %87 = load i8*, i8** %6, align 8, !dbg !446
  %88 = ptrtoint i8* %86 to i64, !dbg !447
  %89 = ptrtoint i8* %87 to i64, !dbg !447
  %90 = sub i64 %88, %89, !dbg !447
  %91 = call i8* @memchr(i8* %85, i32 10, i64 %90) #8, !dbg !448
  store i8* %91, i8** %8, align 8, !dbg !449
  %92 = load i8*, i8** %8, align 8, !dbg !450
  %93 = icmp eq i8* %92, null, !dbg !452
  br i1 %93, label %94, label %98, !dbg !453

; <label>:94:                                     ; preds = %84
  %95 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i32 0, i32 0)) #7, !dbg !454
  %96 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !455
  %97 = call i8* @pkg_name(%struct.pkginfo* %96, i32 1), !dbg !456
  call void (i8*, ...) @ohshit(i8* %95, i8* %97) #9, !dbg !457
  unreachable, !dbg !459

; <label>:98:                                     ; preds = %84
  %99 = load i8*, i8** %8, align 8, !dbg !460
  %100 = getelementptr inbounds i8, i8* %99, i64 1, !dbg !461
  store i8* %100, i8** %7, align 8, !dbg !462
  %101 = load i8*, i8** %8, align 8, !dbg !463
  %102 = load i8*, i8** %6, align 8, !dbg !465
  %103 = icmp ugt i8* %101, %102, !dbg !466
  br i1 %103, label %104, label %113, !dbg !467

; <label>:104:                                    ; preds = %98
  %105 = load i8*, i8** %8, align 8, !dbg !468
  %106 = getelementptr inbounds i8, i8* %105, i64 -1, !dbg !468
  %107 = load i8, i8* %106, align 1, !dbg !468
  %108 = sext i8 %107 to i32, !dbg !468
  %109 = icmp eq i32 %108, 47, !dbg !470
  br i1 %109, label %110, label %113, !dbg !471

; <label>:110:                                    ; preds = %104
  %111 = load i8*, i8** %8, align 8, !dbg !472
  %112 = getelementptr inbounds i8, i8* %111, i32 -1, !dbg !472
  store i8* %112, i8** %8, align 8, !dbg !472
  br label %113, !dbg !474

; <label>:113:                                    ; preds = %110, %104, %98
  %114 = load i8*, i8** %8, align 8, !dbg !475
  %115 = load i8*, i8** %6, align 8, !dbg !477
  %116 = icmp eq i8* %114, %115, !dbg !478
  br i1 %116, label %117, label %121, !dbg !479

; <label>:117:                                    ; preds = %113
  %118 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i32 0, i32 0)) #7, !dbg !480
  %119 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !481
  %120 = call i8* @pkg_name(%struct.pkginfo* %119, i32 1), !dbg !482
  call void (i8*, ...) @ohshit(i8* %118, i8* %120) #9, !dbg !483
  unreachable, !dbg !485

; <label>:121:                                    ; preds = %113
  %122 = load i8*, i8** %8, align 8, !dbg !486
  store i8 0, i8* %122, align 1, !dbg !487
  %123 = load i8*, i8** %6, align 8, !dbg !488
  %124 = call %struct.fsys_namenode* @fsys_hash_find_node(i8* %123, i32 0), !dbg !489
  store %struct.fsys_namenode* %124, %struct.fsys_namenode** %11, align 8, !dbg !490
  %125 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !491
  %126 = load %struct.fsys_namenode*, %struct.fsys_namenode** %11, align 8, !dbg !492
  %127 = load %struct.fsys_namenode_list**, %struct.fsys_namenode_list*** %4, align 8, !dbg !493
  %128 = call %struct.fsys_namenode_list** @pkg_files_add_file(%struct.pkginfo* %125, %struct.fsys_namenode* %126, %struct.fsys_namenode_list** %127), !dbg !494
  store %struct.fsys_namenode_list** %128, %struct.fsys_namenode_list*** %4, align 8, !dbg !495
  %129 = load i8*, i8** %7, align 8, !dbg !496
  store i8* %129, i8** %6, align 8, !dbg !497
  br label %80, !dbg !498, !llvm.loop !500

; <label>:130:                                    ; preds = %80
  br label %131, !dbg !501

; <label>:131:                                    ; preds = %130, %66
  call void @varbuf_destroy(%struct.varbuf* %9), !dbg !502
  %132 = load volatile i32, i32* @onerr_abort, align 4, !dbg !503
  %133 = add nsw i32 %132, -1, !dbg !503
  store volatile i32 %133, i32* @onerr_abort, align 4, !dbg !503
  %134 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !504
  %135 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %134, i32 0, i32 18, !dbg !505
  store i8 1, i8* %135, align 8, !dbg !506
  br label %136, !dbg !507

; <label>:136:                                    ; preds = %131, %61, %25, %18
  ret void, !dbg !508
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

declare void @pkg_files_blank(%struct.pkginfo*) #3

declare i8* @pkg_infodb_get_file(%struct.pkginfo*, %struct.pkgbin*, i8*) #3

declare i32 @file_slurp(i8*, %struct.varbuf*, %struct.dpkg_error*) #3

declare void @dpkg_error_print(%struct.dpkg_error*, i8*, ...) #3

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #4

declare i8* @pkg_name(%struct.pkginfo*, i32) #3

declare zeroext i1 @dpkg_version_is_informative(%struct.dpkg_version*) #3

declare void @warning(i8*, ...) #3

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) #5

; Function Attrs: noreturn
declare void @ohshit(i8*, ...) #6

declare %struct.fsys_namenode* @fsys_hash_find_node(i8*, i32) #3

declare %struct.fsys_namenode_list** @pkg_files_add_file(%struct.pkginfo*, %struct.fsys_namenode*, %struct.fsys_namenode_list**) #3

declare void @varbuf_destroy(%struct.varbuf*) #3

; Function Attrs: nounwind uwtable
define void @ensure_allinstfiles_available() #0 !dbg !510 {
  %1 = alloca %struct.pkg_array, align 8
  %2 = alloca %struct.pkginfo*, align 8
  %3 = alloca %struct.progress, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.pkg_array* %1, metadata !513, metadata !317), !dbg !520
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %2, metadata !521, metadata !317), !dbg !522
  call void @llvm.dbg.declare(metadata %struct.progress* %3, metadata !523, metadata !317), !dbg !532
  call void @llvm.dbg.declare(metadata i32* %4, metadata !533, metadata !317), !dbg !534
  %6 = load i8, i8* @allpackagesdone, align 1, !dbg !535
  %7 = trunc i8 %6 to i1, !dbg !535
  br i1 %7, label %8, label %9, !dbg !537

; <label>:8:                                      ; preds = %0
  br label %46, !dbg !538

; <label>:9:                                      ; preds = %0
  %10 = load i32, i32* @saidread, align 4, !dbg !540
  %11 = icmp ult i32 %10, 2, !dbg !542
  br i1 %11, label %12, label %16, !dbg !543

; <label>:12:                                     ; preds = %9
  call void @llvm.dbg.declare(metadata i32* %5, metadata !544, metadata !317), !dbg !546
  %13 = call i32 @pkg_hash_count_pkg(), !dbg !547
  store i32 %13, i32* %5, align 4, !dbg !546
  store i32 1, i32* @saidread, align 4, !dbg !548
  %14 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0)) #7, !dbg !549
  %15 = load i32, i32* %5, align 4, !dbg !550
  call void @progress_init(%struct.progress* %3, i8* %14, i32 %15), !dbg !551
  br label %16, !dbg !553

; <label>:16:                                     ; preds = %12, %9
  call void @pkg_array_init_from_hash(%struct.pkg_array* %1), !dbg !554
  call void @pkg_files_optimize_load(%struct.pkg_array* %1), !dbg !555
  store i32 0, i32* %4, align 4, !dbg !556
  br label %17, !dbg !558

; <label>:17:                                     ; preds = %34, %16
  %18 = load i32, i32* %4, align 4, !dbg !559
  %19 = getelementptr inbounds %struct.pkg_array, %struct.pkg_array* %1, i32 0, i32 0, !dbg !562
  %20 = load i32, i32* %19, align 8, !dbg !562
  %21 = icmp slt i32 %18, %20, !dbg !563
  br i1 %21, label %22, label %37, !dbg !564

; <label>:22:                                     ; preds = %17
  %23 = load i32, i32* %4, align 4, !dbg !565
  %24 = sext i32 %23 to i64, !dbg !567
  %25 = getelementptr inbounds %struct.pkg_array, %struct.pkg_array* %1, i32 0, i32 1, !dbg !568
  %26 = load %struct.pkginfo**, %struct.pkginfo*** %25, align 8, !dbg !568
  %27 = getelementptr inbounds %struct.pkginfo*, %struct.pkginfo** %26, i64 %24, !dbg !567
  %28 = load %struct.pkginfo*, %struct.pkginfo** %27, align 8, !dbg !567
  store %struct.pkginfo* %28, %struct.pkginfo** %2, align 8, !dbg !569
  %29 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !570
  call void @ensure_packagefiles_available(%struct.pkginfo* %29), !dbg !571
  %30 = load i32, i32* @saidread, align 4, !dbg !572
  %31 = icmp eq i32 %30, 1, !dbg !574
  br i1 %31, label %32, label %33, !dbg !575

; <label>:32:                                     ; preds = %22
  call void @progress_step(%struct.progress* %3), !dbg !576
  br label %33, !dbg !576

; <label>:33:                                     ; preds = %32, %22
  br label %34, !dbg !577

; <label>:34:                                     ; preds = %33
  %35 = load i32, i32* %4, align 4, !dbg !578
  %36 = add nsw i32 %35, 1, !dbg !578
  store i32 %36, i32* %4, align 4, !dbg !578
  br label %17, !dbg !580, !llvm.loop !581

; <label>:37:                                     ; preds = %17
  call void @pkg_array_destroy(%struct.pkg_array* %1), !dbg !583
  store i8 1, i8* @allpackagesdone, align 1, !dbg !584
  %38 = load i32, i32* @saidread, align 4, !dbg !585
  %39 = icmp eq i32 %38, 1, !dbg !587
  br i1 %39, label %40, label %46, !dbg !588

; <label>:40:                                     ; preds = %37
  call void @progress_done(%struct.progress* %3), !dbg !589
  %41 = call i32 @fsys_hash_entries(), !dbg !591
  %42 = sext i32 %41 to i64, !dbg !591
  %43 = call i8* @dngettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i32 0, i32 0), i64 %42) #7, !dbg !592
  %44 = call i32 @fsys_hash_entries(), !dbg !594
  %45 = call i32 (i8*, ...) @printf(i8* %43, i32 %44), !dbg !595
  store i32 2, i32* @saidread, align 4, !dbg !597
  br label %46, !dbg !598

; <label>:46:                                     ; preds = %8, %40, %37
  ret void, !dbg !599
}

declare i32 @pkg_hash_count_pkg() #3

declare void @progress_init(%struct.progress*, i8*, i32) #3

declare void @pkg_array_init_from_hash(%struct.pkg_array*) #3

; Function Attrs: nounwind uwtable
define internal void @pkg_files_optimize_load(%struct.pkg_array*) #0 !dbg !600 {
  %2 = alloca %struct.pkg_array*, align 8
  %3 = alloca %struct.statfs, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pkginfo*, align 8
  %6 = alloca %struct.anon.2, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.pkg_array* %0, %struct.pkg_array** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.pkg_array** %2, metadata !604, metadata !317), !dbg !605
  call void @llvm.dbg.declare(metadata %struct.statfs* %3, metadata !606, metadata !317), !dbg !635
  call void @llvm.dbg.declare(metadata i32* %4, metadata !636, metadata !317), !dbg !637
  %9 = call i8* @pkg_infodb_get_dir(), !dbg !638
  %10 = call i32 @statfs(i8* %9, %struct.statfs* %3) #7, !dbg !640
  %11 = icmp slt i32 %10, 0, !dbg !642
  br i1 %11, label %12, label %13, !dbg !643

; <label>:12:                                     ; preds = %1
  br label %82, !dbg !644

; <label>:13:                                     ; preds = %1
  store i32 0, i32* %4, align 4, !dbg !645
  br label %14, !dbg !647

; <label>:14:                                     ; preds = %77, %13
  %15 = load i32, i32* %4, align 4, !dbg !648
  %16 = load %struct.pkg_array*, %struct.pkg_array** %2, align 8, !dbg !651
  %17 = getelementptr inbounds %struct.pkg_array, %struct.pkg_array* %16, i32 0, i32 0, !dbg !652
  %18 = load i32, i32* %17, align 8, !dbg !652
  %19 = icmp slt i32 %15, %18, !dbg !653
  br i1 %19, label %20, label %80, !dbg !654

; <label>:20:                                     ; preds = %14
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %5, metadata !655, metadata !317), !dbg !657
  %21 = load i32, i32* %4, align 4, !dbg !658
  %22 = sext i32 %21 to i64, !dbg !659
  %23 = load %struct.pkg_array*, %struct.pkg_array** %2, align 8, !dbg !659
  %24 = getelementptr inbounds %struct.pkg_array, %struct.pkg_array* %23, i32 0, i32 1, !dbg !660
  %25 = load %struct.pkginfo**, %struct.pkginfo*** %24, align 8, !dbg !660
  %26 = getelementptr inbounds %struct.pkginfo*, %struct.pkginfo** %25, i64 %22, !dbg !659
  %27 = load %struct.pkginfo*, %struct.pkginfo** %26, align 8, !dbg !659
  store %struct.pkginfo* %27, %struct.pkginfo** %5, align 8, !dbg !657
  call void @llvm.dbg.declare(metadata %struct.anon.2* %6, metadata !661, metadata !317), !dbg !695
  call void @llvm.dbg.declare(metadata i8** %7, metadata !696, metadata !317), !dbg !697
  call void @llvm.dbg.declare(metadata i32* %8, metadata !698, metadata !317), !dbg !699
  %28 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !700
  %29 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %28, i32 0, i32 4, !dbg !702
  %30 = load i32, i32* %29, align 8, !dbg !702
  %31 = icmp eq i32 %30, 0, !dbg !703
  br i1 %31, label %37, label %32, !dbg !704

; <label>:32:                                     ; preds = %20
  %33 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !705
  %34 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %33, i32 0, i32 17, !dbg !706
  %35 = load i64, i64* %34, align 8, !dbg !706
  %36 = icmp ne i64 %35, 0, !dbg !707
  br i1 %36, label %37, label %38, !dbg !708

; <label>:37:                                     ; preds = %32, %20
  br label %77, !dbg !710

; <label>:38:                                     ; preds = %32
  %39 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !711
  %40 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %39, i32 0, i32 17, !dbg !712
  store i64 -1, i64* %40, align 8, !dbg !713
  %41 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !714
  %42 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !715
  %43 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %42, i32 0, i32 9, !dbg !716
  %44 = call i8* @pkg_infodb_get_file(%struct.pkginfo* %41, %struct.pkgbin* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)), !dbg !717
  store i8* %44, i8** %7, align 8, !dbg !718
  %45 = load i8*, i8** %7, align 8, !dbg !719
  %46 = call i32 (i8*, i32, ...) @open(i8* %45, i32 0), !dbg !720
  store i32 %46, i32* %8, align 4, !dbg !721
  %47 = load i32, i32* %8, align 4, !dbg !722
  %48 = icmp slt i32 %47, 0, !dbg !724
  br i1 %48, label %49, label %50, !dbg !725

; <label>:49:                                     ; preds = %38
  br label %77, !dbg !726

; <label>:50:                                     ; preds = %38
  %51 = bitcast %struct.anon.2* %6 to i8*, !dbg !727
  call void @llvm.memset.p0i8.i64(i8* %51, i8 0, i64 88, i32 8, i1 false), !dbg !727
  %52 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6, i32 0, i32 0, !dbg !728
  %53 = getelementptr inbounds %struct.fiemap, %struct.fiemap* %52, i32 0, i32 0, !dbg !729
  store i64 0, i64* %53, align 8, !dbg !730
  %54 = getelementptr inbounds %struct.statfs, %struct.statfs* %3, i32 0, i32 1, !dbg !731
  %55 = load i64, i64* %54, align 8, !dbg !731
  %56 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6, i32 0, i32 0, !dbg !732
  %57 = getelementptr inbounds %struct.fiemap, %struct.fiemap* %56, i32 0, i32 1, !dbg !733
  store i64 %55, i64* %57, align 8, !dbg !734
  %58 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6, i32 0, i32 0, !dbg !735
  %59 = getelementptr inbounds %struct.fiemap, %struct.fiemap* %58, i32 0, i32 2, !dbg !736
  store i32 0, i32* %59, align 8, !dbg !737
  %60 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6, i32 0, i32 0, !dbg !738
  %61 = getelementptr inbounds %struct.fiemap, %struct.fiemap* %60, i32 0, i32 4, !dbg !739
  store i32 1, i32* %61, align 8, !dbg !740
  %62 = load i32, i32* %8, align 4, !dbg !741
  %63 = ptrtoint %struct.anon.2* %6 to i64, !dbg !743
  %64 = call i32 (i32, i64, ...) @ioctl(i32 %62, i64 3223348747, i64 %63) #7, !dbg !744
  %65 = icmp eq i32 %64, 0, !dbg !745
  br i1 %65, label %66, label %74, !dbg !746

; <label>:66:                                     ; preds = %50
  %67 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6, i32 0, i32 0, !dbg !747
  %68 = getelementptr inbounds %struct.fiemap, %struct.fiemap* %67, i32 0, i32 6, !dbg !748
  %69 = getelementptr inbounds [0 x %struct.fiemap_extent], [0 x %struct.fiemap_extent]* %68, i64 0, i64 0, !dbg !749
  %70 = getelementptr inbounds %struct.fiemap_extent, %struct.fiemap_extent* %69, i32 0, i32 1, !dbg !750
  %71 = load i64, i64* %70, align 8, !dbg !750
  %72 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !751
  %73 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %72, i32 0, i32 17, !dbg !752
  store i64 %71, i64* %73, align 8, !dbg !753
  br label %74, !dbg !751

; <label>:74:                                     ; preds = %66, %50
  %75 = load i32, i32* %8, align 4, !dbg !754
  %76 = call i32 @close(i32 %75), !dbg !755
  br label %77, !dbg !756

; <label>:77:                                     ; preds = %74, %49, %37
  %78 = load i32, i32* %4, align 4, !dbg !757
  %79 = add nsw i32 %78, 1, !dbg !757
  store i32 %79, i32* %4, align 4, !dbg !757
  br label %14, !dbg !759, !llvm.loop !760

; <label>:80:                                     ; preds = %14
  %81 = load %struct.pkg_array*, %struct.pkg_array** %2, align 8, !dbg !762
  call void @pkg_array_sort(%struct.pkg_array* %81, i32 (i8*, i8*)* @pkg_sorter_by_files_list_phys_offs), !dbg !763
  br label %82, !dbg !764

; <label>:82:                                     ; preds = %80, %12
  ret void, !dbg !765
}

declare void @progress_step(%struct.progress*) #3

declare void @pkg_array_destroy(%struct.pkg_array*) #3

declare void @progress_done(%struct.progress*) #3

declare i32 @printf(i8*, ...) #3

; Function Attrs: nounwind
declare i8* @dngettext(i8*, i8*, i8*, i64) #4

declare i32 @fsys_hash_entries() #3

; Function Attrs: nounwind uwtable
define void @ensure_allinstfiles_available_quiet() #0 !dbg !767 {
  store i32 2, i32* @saidread, align 4, !dbg !768
  call void @ensure_allinstfiles_available(), !dbg !769
  ret void, !dbg !770
}

; Function Attrs: nounwind uwtable
define void @write_filelist_except(%struct.pkginfo*, %struct.pkgbin*, %struct.fsys_namenode_list*, i32) #0 !dbg !771 {
  %5 = alloca %struct.pkginfo*, align 8
  %6 = alloca %struct.pkgbin*, align 8
  %7 = alloca %struct.fsys_namenode_list*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.atomic_file*, align 8
  %10 = alloca %struct.fsys_namenode_list*, align 8
  %11 = alloca i8*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %5, metadata !775, metadata !317), !dbg !776
  store %struct.pkgbin* %1, %struct.pkgbin** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %6, metadata !777, metadata !317), !dbg !778
  store %struct.fsys_namenode_list* %2, %struct.fsys_namenode_list** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode_list** %7, metadata !779, metadata !317), !dbg !780
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !781, metadata !317), !dbg !782
  call void @llvm.dbg.declare(metadata %struct.atomic_file** %9, metadata !783, metadata !317), !dbg !844
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode_list** %10, metadata !845, metadata !317), !dbg !846
  call void @llvm.dbg.declare(metadata i8** %11, metadata !847, metadata !317), !dbg !848
  %12 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !849
  %13 = load %struct.pkgbin*, %struct.pkgbin** %6, align 8, !dbg !850
  %14 = call i8* @pkg_infodb_get_file(%struct.pkginfo* %12, %struct.pkgbin* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)), !dbg !851
  store i8* %14, i8** %11, align 8, !dbg !852
  %15 = load i8*, i8** %11, align 8, !dbg !853
  %16 = call %struct.atomic_file* @atomic_file_new(i8* %15, i32 0), !dbg !854
  store %struct.atomic_file* %16, %struct.atomic_file** %9, align 8, !dbg !855
  %17 = load %struct.atomic_file*, %struct.atomic_file** %9, align 8, !dbg !856
  call void @atomic_file_open(%struct.atomic_file* %17), !dbg !857
  %18 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %7, align 8, !dbg !858
  store %struct.fsys_namenode_list* %18, %struct.fsys_namenode_list** %10, align 8, !dbg !860
  br label %19, !dbg !861

; <label>:19:                                     ; preds = %49, %4
  %20 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %10, align 8, !dbg !862
  %21 = icmp ne %struct.fsys_namenode_list* %20, null, !dbg !865
  br i1 %21, label %22, label %53, !dbg !865

; <label>:22:                                     ; preds = %19
  %23 = load i32, i32* %8, align 4, !dbg !866
  %24 = icmp ne i32 %23, 0, !dbg !866
  br i1 %24, label %25, label %34, !dbg !869

; <label>:25:                                     ; preds = %22
  %26 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %10, align 8, !dbg !870
  %27 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %26, i32 0, i32 1, !dbg !872
  %28 = load %struct.fsys_namenode*, %struct.fsys_namenode** %27, align 8, !dbg !872
  %29 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %28, i32 0, i32 6, !dbg !873
  %30 = load i32, i32* %29, align 8, !dbg !873
  %31 = load i32, i32* %8, align 4, !dbg !874
  %32 = and i32 %30, %31, !dbg !875
  %33 = icmp ne i32 %32, 0, !dbg !875
  br i1 %33, label %48, label %34, !dbg !876

; <label>:34:                                     ; preds = %25, %22
  %35 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %10, align 8, !dbg !877
  %36 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %35, i32 0, i32 1, !dbg !879
  %37 = load %struct.fsys_namenode*, %struct.fsys_namenode** %36, align 8, !dbg !879
  %38 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %37, i32 0, i32 1, !dbg !880
  %39 = load i8*, i8** %38, align 8, !dbg !880
  %40 = load %struct.atomic_file*, %struct.atomic_file** %9, align 8, !dbg !881
  %41 = getelementptr inbounds %struct.atomic_file, %struct.atomic_file* %40, i32 0, i32 3, !dbg !882
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %41, align 8, !dbg !882
  %43 = call i32 @fputs(i8* %39, %struct._IO_FILE* %42), !dbg !883
  %44 = load %struct.atomic_file*, %struct.atomic_file** %9, align 8, !dbg !884
  %45 = getelementptr inbounds %struct.atomic_file, %struct.atomic_file* %44, i32 0, i32 3, !dbg !885
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %45, align 8, !dbg !885
  %47 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %46), !dbg !884
  br label %48, !dbg !886

; <label>:48:                                     ; preds = %34, %25
  br label %49, !dbg !887

; <label>:49:                                     ; preds = %48
  %50 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %10, align 8, !dbg !888
  %51 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %50, i32 0, i32 0, !dbg !890
  %52 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %51, align 8, !dbg !890
  store %struct.fsys_namenode_list* %52, %struct.fsys_namenode_list** %10, align 8, !dbg !891
  br label %19, !dbg !892, !llvm.loop !893

; <label>:53:                                     ; preds = %19
  %54 = load %struct.atomic_file*, %struct.atomic_file** %9, align 8, !dbg !895
  call void @atomic_file_sync(%struct.atomic_file* %54), !dbg !896
  %55 = load %struct.atomic_file*, %struct.atomic_file** %9, align 8, !dbg !897
  call void @atomic_file_close(%struct.atomic_file* %55), !dbg !898
  %56 = load %struct.atomic_file*, %struct.atomic_file** %9, align 8, !dbg !899
  call void @atomic_file_commit(%struct.atomic_file* %56), !dbg !900
  %57 = load %struct.atomic_file*, %struct.atomic_file** %9, align 8, !dbg !901
  call void @atomic_file_free(%struct.atomic_file* %57), !dbg !902
  %58 = call i8* @pkg_infodb_get_dir(), !dbg !903
  call void @dir_sync_path(i8* %58), !dbg !904
  %59 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !906
  call void @note_must_reread_files_inpackage(%struct.pkginfo* %59), !dbg !907
  ret void, !dbg !908
}

declare %struct.atomic_file* @atomic_file_new(i8*, i32) #3

declare void @atomic_file_open(%struct.atomic_file*) #3

declare i32 @fputs(i8*, %struct._IO_FILE*) #3

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #3

declare void @atomic_file_sync(%struct.atomic_file*) #3

declare void @atomic_file_close(%struct.atomic_file*) #3

declare void @atomic_file_commit(%struct.atomic_file*) #3

declare void @atomic_file_free(%struct.atomic_file*) #3

declare void @dir_sync_path(i8*) #3

declare i8* @pkg_infodb_get_dir() #3

; Function Attrs: nounwind
declare i32 @statfs(i8*, %struct.statfs*) #4

declare i32 @open(i8*, i32, ...) #3

; Function Attrs: nounwind
declare i32 @ioctl(i32, i64, ...) #4

declare i32 @close(i32) #3

declare void @pkg_array_sort(%struct.pkg_array*, i32 (i8*, i8*)*) #3

; Function Attrs: nounwind uwtable
define internal i32 @pkg_sorter_by_files_list_phys_offs(i8*, i8*) #0 !dbg !909 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pkginfo*, align 8
  %7 = alloca %struct.pkginfo*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !914, metadata !317), !dbg !915
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !916, metadata !317), !dbg !917
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %6, metadata !918, metadata !317), !dbg !919
  %8 = load i8*, i8** %4, align 8, !dbg !920
  %9 = bitcast i8* %8 to %struct.pkginfo**, !dbg !921
  %10 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !922
  store %struct.pkginfo* %10, %struct.pkginfo** %6, align 8, !dbg !919
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %7, metadata !923, metadata !317), !dbg !924
  %11 = load i8*, i8** %5, align 8, !dbg !925
  %12 = bitcast i8* %11 to %struct.pkginfo**, !dbg !926
  %13 = load %struct.pkginfo*, %struct.pkginfo** %12, align 8, !dbg !927
  store %struct.pkginfo* %13, %struct.pkginfo** %7, align 8, !dbg !924
  %14 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !928
  %15 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %14, i32 0, i32 17, !dbg !930
  %16 = load i64, i64* %15, align 8, !dbg !930
  %17 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !931
  %18 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %17, i32 0, i32 17, !dbg !932
  %19 = load i64, i64* %18, align 8, !dbg !932
  %20 = icmp slt i64 %16, %19, !dbg !933
  br i1 %20, label %21, label %22, !dbg !934

; <label>:21:                                     ; preds = %2
  store i32 -1, i32* %3, align 4, !dbg !935
  br label %32, !dbg !935

; <label>:22:                                     ; preds = %2
  %23 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !936
  %24 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %23, i32 0, i32 17, !dbg !938
  %25 = load i64, i64* %24, align 8, !dbg !938
  %26 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !939
  %27 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %26, i32 0, i32 17, !dbg !940
  %28 = load i64, i64* %27, align 8, !dbg !940
  %29 = icmp sgt i64 %25, %28, !dbg !941
  br i1 %29, label %30, label %31, !dbg !942

; <label>:30:                                     ; preds = %22
  store i32 1, i32* %3, align 4, !dbg !943
  br label %32, !dbg !943

; <label>:31:                                     ; preds = %22
  store i32 0, i32* %3, align 4, !dbg !944
  br label %32, !dbg !944

; <label>:32:                                     ; preds = %31, %30, %21
  %33 = load i32, i32* %3, align 4, !dbg !945
  ret i32 %33, !dbg !945
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { argmemonly nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!309, !310}
!llvm.ident = !{!311}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !108, globals: !306)
!1 = !DIFile(filename: "[inter]lib--dpkg--db-fsys-files.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{!3, !15, !26, !35, !43, !47, !57, !67, !73, !86, !92, !98, !104}
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
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_msg_type", file: !87, line: 36, size: 32, align: 32, elements: !88)
!87 = !DIFile(filename: "../../lib/dpkg/error.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!88 = !{!89, !90, !91}
!89 = !DIEnumerator(name: "DPKG_MSG_NONE", value: 0)
!90 = !DIEnumerator(name: "DPKG_MSG_WARN", value: 1)
!91 = !DIEnumerator(name: "DPKG_MSG_ERROR", value: 2)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkg_name_arch_when", file: !4, line: 396, size: 32, align: 32, elements: !93)
!93 = !{!94, !95, !96, !97}
!94 = !DIEnumerator(name: "pnaw_never", value: 0)
!95 = !DIEnumerator(name: "pnaw_nonambig", value: 1)
!96 = !DIEnumerator(name: "pnaw_foreign", value: 2)
!97 = !DIEnumerator(name: "pnaw_always", value: 3)
!98 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkg_filesdb_load_status", file: !99, line: 65, size: 32, align: 32, elements: !100)
!99 = !DIFile(filename: "db-fsys-files.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!100 = !{!101, !102, !103}
!101 = !DIEnumerator(name: "PKG_FILESDB_LOAD_NONE", value: 0)
!102 = !DIEnumerator(name: "PKG_FILESDB_LOAD_INPROGRESS", value: 1)
!103 = !DIEnumerator(name: "PKG_FILESDB_LOAD_DONE", value: 2)
!104 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "atomic_file_flags", file: !105, line: 36, size: 32, align: 32, elements: !106)
!105 = !DIFile(filename: "../../lib/dpkg/atomic-file.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!106 = !{!107}
!107 = !DIEnumerator(name: "ATOMIC_FILE_BACKUP", value: 1)
!108 = !{!109, !110, !111}
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!110 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64, align: 64)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64, align: 64)
!113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !114)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkginfo", file: !4, line: 195, size: 3072, align: 64, elements: !115)
!115 = !{!116, !169, !170, !171, !172, !173, !174, !175, !176, !177, !207, !208, !211, !220, !236, !237, !243, !300, !304, !305}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !114, file: !4, line: 196, baseType: !117, size: 64, align: 64)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64, align: 64)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgset", file: !4, line: 242, size: 3392, align: 64, elements: !119)
!119 = !{!120, !121, !125, !126, !167}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !118, file: !4, line: 243, baseType: !117, size: 64, align: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !118, file: !4, line: 244, baseType: !122, size: 64, align: 64, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64, align: 64)
!123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !124)
!124 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !118, file: !4, line: 245, baseType: !114, size: 3072, align: 64, offset: 128)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "depended", scope: !118, file: !4, line: 249, baseType: !127, size: 128, align: 64, offset: 3200)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !118, file: !4, line: 246, size: 128, align: 64, elements: !128)
!128 = !{!129, !166}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !127, file: !4, line: 247, baseType: !130, size: 64, align: 64)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64, align: 64)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "deppossi", file: !4, line: 63, size: 640, align: 64, elements: !132)
!132 = !{!133, !142, !143, !144, !145, !146, !155, !162, !163, !165}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !131, file: !4, line: 64, baseType: !134, size: 64, align: 64)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dependency", file: !4, line: 56, size: 256, align: 64, elements: !136)
!136 = !{!137, !139, !140, !141}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !135, file: !4, line: 57, baseType: !138, size: 64, align: 64)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64, align: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !135, file: !4, line: 58, baseType: !134, size: 64, align: 64, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !135, file: !4, line: 59, baseType: !130, size: 64, align: 64, offset: 128)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !135, file: !4, line: 60, baseType: !3, size: 32, align: 32, offset: 192)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "ed", scope: !131, file: !4, line: 65, baseType: !117, size: 64, align: 64, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !131, file: !4, line: 66, baseType: !130, size: 64, align: 64, offset: 128)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "rev_next", scope: !131, file: !4, line: 66, baseType: !130, size: 64, align: 64, offset: 192)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "rev_prev", scope: !131, file: !4, line: 66, baseType: !130, size: 64, align: 64, offset: 256)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !131, file: !4, line: 67, baseType: !147, size: 64, align: 64, offset: 320)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64, align: 64)
!148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_arch", file: !16, line: 48, size: 192, align: 64, elements: !150)
!150 = !{!151, !153, !154}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !149, file: !16, line: 49, baseType: !152, size: 64, align: 64)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64, align: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !149, file: !16, line: 50, baseType: !122, size: 64, align: 64, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !149, file: !16, line: 51, baseType: !15, size: 32, align: 32, offset: 128)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !131, file: !4, line: 68, baseType: !156, size: 192, align: 64, offset: 384)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_version", file: !27, line: 42, size: 192, align: 64, elements: !157)
!157 = !{!158, !160, !161}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !156, file: !27, line: 44, baseType: !159, size: 32, align: 32)
!159 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !156, file: !27, line: 46, baseType: !122, size: 64, align: 64, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !156, file: !27, line: 48, baseType: !122, size: 64, align: 64, offset: 128)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "verrel", scope: !131, file: !4, line: 69, baseType: !26, size: 32, align: 32, offset: 576)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "arch_is_implicit", scope: !131, file: !4, line: 70, baseType: !164, size: 8, align: 8, offset: 608)
!164 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "cyclebreak", scope: !131, file: !4, line: 71, baseType: !164, size: 8, align: 8, offset: 616)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !127, file: !4, line: 248, baseType: !130, size: 64, align: 64, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "installed_instances", scope: !118, file: !4, line: 250, baseType: !168, size: 32, align: 32, offset: 3328)
!168 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "arch_next", scope: !114, file: !4, line: 197, baseType: !138, size: 64, align: 64, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "want", scope: !114, file: !4, line: 199, baseType: !35, size: 32, align: 32, offset: 128)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "eflag", scope: !114, file: !4, line: 201, baseType: !43, size: 32, align: 32, offset: 160)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !114, file: !4, line: 202, baseType: !47, size: 32, align: 32, offset: 192)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !114, file: !4, line: 203, baseType: !57, size: 32, align: 32, offset: 224)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "otherpriority", scope: !114, file: !4, line: 204, baseType: !122, size: 64, align: 64, offset: 256)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "section", scope: !114, file: !4, line: 205, baseType: !122, size: 64, align: 64, offset: 320)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "configversion", scope: !114, file: !4, line: 206, baseType: !156, size: 192, align: 64, offset: 384)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !114, file: !4, line: 207, baseType: !178, size: 960, align: 64, offset: 576)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgbin", file: !4, line: 107, size: 960, align: 64, elements: !179)
!179 = !{!180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !200}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "depends", scope: !178, file: !4, line: 108, baseType: !134, size: 64, align: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "essential", scope: !178, file: !4, line: 110, baseType: !164, size: 8, align: 8, offset: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "multiarch", scope: !178, file: !4, line: 111, baseType: !67, size: 32, align: 32, offset: 96)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !178, file: !4, line: 112, baseType: !147, size: 64, align: 64, offset: 128)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "pkgname_archqual", scope: !178, file: !4, line: 115, baseType: !122, size: 64, align: 64, offset: 192)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !178, file: !4, line: 116, baseType: !122, size: 64, align: 64, offset: 256)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "maintainer", scope: !178, file: !4, line: 117, baseType: !122, size: 64, align: 64, offset: 320)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !178, file: !4, line: 118, baseType: !122, size: 64, align: 64, offset: 384)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "installedsize", scope: !178, file: !4, line: 119, baseType: !122, size: 64, align: 64, offset: 448)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !178, file: !4, line: 120, baseType: !122, size: 64, align: 64, offset: 512)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "bugs", scope: !178, file: !4, line: 121, baseType: !122, size: 64, align: 64, offset: 576)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !178, file: !4, line: 122, baseType: !156, size: 192, align: 64, offset: 640)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "conffiles", scope: !178, file: !4, line: 123, baseType: !193, size: 64, align: 64, offset: 832)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64, align: 64)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conffile", file: !4, line: 80, size: 256, align: 64, elements: !195)
!195 = !{!196, !197, !198, !199}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !194, file: !4, line: 81, baseType: !193, size: 64, align: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !194, file: !4, line: 82, baseType: !122, size: 64, align: 64, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !194, file: !4, line: 83, baseType: !122, size: 64, align: 64, offset: 128)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "obsolete", scope: !194, file: !4, line: 84, baseType: !164, size: 8, align: 8, offset: 192)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "arbs", scope: !178, file: !4, line: 124, baseType: !201, size: 64, align: 64, offset: 896)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64, align: 64)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arbitraryfield", file: !4, line: 74, size: 192, align: 64, elements: !203)
!203 = !{!204, !205, !206}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !202, file: !4, line: 75, baseType: !201, size: 64, align: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !202, file: !4, line: 76, baseType: !122, size: 64, align: 64, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !202, file: !4, line: 77, baseType: !122, size: 64, align: 64, offset: 128)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !114, file: !4, line: 208, baseType: !178, size: 960, align: 64, offset: 1536)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "clientdata", scope: !114, file: !4, line: 209, baseType: !209, size: 64, align: 64, offset: 2496)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64, align: 64)
!210 = !DICompositeType(tag: DW_TAG_structure_type, name: "perpackagestate", file: !4, line: 151, flags: DIFlagFwdDecl)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "archives", scope: !114, file: !4, line: 211, baseType: !212, size: 64, align: 64, offset: 2560)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64, align: 64)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archivedetails", file: !4, line: 87, size: 320, align: 64, elements: !214)
!214 = !{!215, !216, !217, !218, !219}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !213, file: !4, line: 88, baseType: !212, size: 64, align: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !213, file: !4, line: 89, baseType: !122, size: 64, align: 64, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "msdosname", scope: !213, file: !4, line: 90, baseType: !122, size: 64, align: 64, offset: 128)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !213, file: !4, line: 91, baseType: !122, size: 64, align: 64, offset: 192)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "md5sum", scope: !213, file: !4, line: 92, baseType: !122, size: 64, align: 64, offset: 256)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "trigaw", scope: !114, file: !4, line: 216, baseType: !221, size: 128, align: 64, offset: 2624)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !114, file: !4, line: 213, size: 128, align: 64, elements: !222)
!222 = !{!223, !235}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !221, file: !4, line: 215, baseType: !224, size: 64, align: 64)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64, align: 64)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigaw", file: !4, line: 142, size: 320, align: 64, elements: !226)
!226 = !{!227, !228, !229, !230}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "aw", scope: !225, file: !4, line: 143, baseType: !138, size: 64, align: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "pend", scope: !225, file: !4, line: 143, baseType: !138, size: 64, align: 64, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "samepend_next", scope: !225, file: !4, line: 144, baseType: !224, size: 64, align: 64, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "sameaw", scope: !225, file: !4, line: 147, baseType: !231, size: 128, align: 64, offset: 192)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !225, file: !4, line: 145, size: 128, align: 64, elements: !232)
!232 = !{!233, !234}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !231, file: !4, line: 146, baseType: !224, size: 64, align: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !231, file: !4, line: 146, baseType: !224, size: 64, align: 64, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !221, file: !4, line: 215, baseType: !224, size: 64, align: 64, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "othertrigaw_head", scope: !114, file: !4, line: 219, baseType: !224, size: 64, align: 64, offset: 2752)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "trigpend_head", scope: !114, file: !4, line: 220, baseType: !238, size: 64, align: 64, offset: 2816)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64, align: 64)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigpend", file: !4, line: 134, size: 128, align: 64, elements: !240)
!240 = !{!241, !242}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !239, file: !4, line: 135, baseType: !238, size: 64, align: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !239, file: !4, line: 136, baseType: !122, size: 64, align: 64, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !114, file: !4, line: 231, baseType: !244, size: 64, align: 64, offset: 2880)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64, align: 64)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode_list", file: !74, line: 122, size: 128, align: 64, elements: !246)
!246 = !{!247, !248}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !245, file: !74, line: 123, baseType: !244, size: 64, align: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "namenode", scope: !245, file: !74, line: 124, baseType: !249, size: 64, align: 64, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64, align: 64)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode", file: !74, line: 90, size: 640, align: 64, elements: !251)
!251 = !{!252, !253, !254, !257, !265, !284, !287, !288, !289, !290}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !250, file: !74, line: 91, baseType: !249, size: 64, align: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !250, file: !74, line: 92, baseType: !122, size: 64, align: 64, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "packages", scope: !250, file: !74, line: 93, baseType: !255, size: 64, align: 64, offset: 128)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64, align: 64)
!256 = !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_list", file: !74, line: 93, flags: DIFlagFwdDecl)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "divert", scope: !250, file: !74, line: 94, baseType: !258, size: 64, align: 64, offset: 192)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64, align: 64)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_diversion", file: !74, line: 151, size: 256, align: 64, elements: !260)
!260 = !{!261, !262, !263, !264}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "useinstead", scope: !259, file: !74, line: 152, baseType: !249, size: 64, align: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "camefrom", scope: !259, file: !74, line: 153, baseType: !249, size: 64, align: 64, offset: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "pkgset", scope: !259, file: !74, line: 154, baseType: !117, size: 64, align: 64, offset: 128)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !259, file: !74, line: 157, baseType: !258, size: 64, align: 64, offset: 192)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "statoverride", scope: !250, file: !74, line: 101, baseType: !266, size: 64, align: 64, offset: 256)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64, align: 64)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_stat", file: !268, line: 40, size: 256, align: 64, elements: !269)
!268 = !DIFile(filename: "../../lib/dpkg/file.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!269 = !{!270, !275, !278, !281, !283}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !267, file: !268, line: 41, baseType: !271, size: 32, align: 32)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !272, line: 80, baseType: !273)
!272 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !274, line: 125, baseType: !159)
!274 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!275 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !267, file: !268, line: 42, baseType: !276, size: 32, align: 32, offset: 32)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !272, line: 65, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !274, line: 126, baseType: !159)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !267, file: !268, line: 43, baseType: !279, size: 32, align: 32, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !272, line: 70, baseType: !280)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !274, line: 129, baseType: !159)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "uname", scope: !267, file: !268, line: 47, baseType: !282, size: 64, align: 64, offset: 128)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64, align: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !267, file: !268, line: 48, baseType: !282, size: 64, align: 64, offset: 192)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "trig_interested", scope: !250, file: !74, line: 103, baseType: !285, size: 64, align: 64, offset: 320)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64, align: 64)
!286 = !DICompositeType(tag: DW_TAG_structure_type, name: "trigfileint", file: !74, line: 103, flags: DIFlagFwdDecl)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !250, file: !74, line: 111, baseType: !73, size: 32, align: 32, offset: 384)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "oldhash", scope: !250, file: !74, line: 114, baseType: !122, size: 64, align: 64, offset: 448)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "newhash", scope: !250, file: !74, line: 117, baseType: !122, size: 64, align: 64, offset: 512)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "file_ondisk_id", scope: !250, file: !74, line: 119, baseType: !291, size: 64, align: 64, offset: 576)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64, align: 64)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ondisk_id", file: !74, line: 85, size: 128, align: 64, elements: !293)
!293 = !{!294, !297}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "id_dev", scope: !292, file: !74, line: 86, baseType: !295, size: 64, align: 64)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !272, line: 60, baseType: !296)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !274, line: 124, baseType: !110)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "id_ino", scope: !292, file: !74, line: 87, baseType: !298, size: 64, align: 64, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !272, line: 48, baseType: !299)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !274, line: 127, baseType: !110)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_phys_offs", scope: !114, file: !4, line: 232, baseType: !301, size: 64, align: 64, offset: 2944)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !272, line: 86, baseType: !302)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !274, line: 131, baseType: !303)
!303 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_valid", scope: !114, file: !4, line: 233, baseType: !164, size: 8, align: 8, offset: 3008)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "status_dirty", scope: !114, file: !4, line: 236, baseType: !164, size: 8, align: 8, offset: 3016)
!306 = !{!307, !308}
!307 = distinct !DIGlobalVariable(name: "allpackagesdone", scope: !0, file: !99, line: 58, type: !164, isLocal: true, isDefinition: true, variable: i8* @allpackagesdone)
!308 = distinct !DIGlobalVariable(name: "saidread", scope: !0, file: !99, line: 71, type: !98, isLocal: true, isDefinition: true, variable: i32* @saidread)
!309 = !{i32 2, !"Dwarf Version", i32 4}
!310 = !{i32 2, !"Debug Info Version", i32 3}
!311 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!312 = distinct !DISubprogram(name: "note_must_reread_files_inpackage", scope: !99, file: !99, line: 60, type: !313, isLocal: false, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !315)
!313 = !DISubroutineType(types: !314)
!314 = !{null, !138}
!315 = !{}
!316 = !DILocalVariable(name: "pkg", arg: 1, scope: !312, file: !99, line: 60, type: !138)
!317 = !DIExpression()
!318 = !DILocation(line: 60, column: 55, scope: !312)
!319 = !DILocation(line: 61, column: 19, scope: !312)
!320 = !DILocation(line: 62, column: 3, scope: !312)
!321 = !DILocation(line: 62, column: 8, scope: !312)
!322 = !DILocation(line: 62, column: 25, scope: !312)
!323 = !DILocation(line: 63, column: 1, scope: !312)
!324 = distinct !DISubprogram(name: "ensure_packagefiles_available", scope: !99, file: !99, line: 78, type: !313, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !315)
!325 = !DILocalVariable(name: "pkg", arg: 1, scope: !324, file: !99, line: 78, type: !138)
!326 = !DILocation(line: 78, column: 47, scope: !324)
!327 = !DILocalVariable(name: "filelistfile", scope: !324, file: !99, line: 80, type: !122)
!328 = !DILocation(line: 80, column: 15, scope: !324)
!329 = !DILocalVariable(name: "lendp", scope: !324, file: !99, line: 81, type: !330)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64, align: 64)
!331 = !DILocation(line: 81, column: 31, scope: !324)
!332 = !DILocalVariable(name: "loaded_list_end", scope: !324, file: !99, line: 82, type: !282)
!333 = !DILocation(line: 82, column: 9, scope: !324)
!334 = !DILocalVariable(name: "thisline", scope: !324, file: !99, line: 82, type: !282)
!335 = !DILocation(line: 82, column: 27, scope: !324)
!336 = !DILocalVariable(name: "nextline", scope: !324, file: !99, line: 82, type: !282)
!337 = !DILocation(line: 82, column: 38, scope: !324)
!338 = !DILocalVariable(name: "ptr", scope: !324, file: !99, line: 82, type: !282)
!339 = !DILocation(line: 82, column: 49, scope: !324)
!340 = !DILocalVariable(name: "buf", scope: !324, file: !99, line: 83, type: !341)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varbuf", file: !342, line: 55, size: 192, align: 64, elements: !343)
!342 = !DIFile(filename: "../../lib/dpkg/varbuf.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!343 = !{!344, !347, !348}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !341, file: !342, line: 56, baseType: !345, size: 64, align: 64)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !346, line: 216, baseType: !110)
!346 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!347 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !341, file: !342, line: 56, baseType: !345, size: 64, align: 64, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !341, file: !342, line: 57, baseType: !282, size: 64, align: 64, offset: 128)
!349 = !DILocation(line: 83, column: 17, scope: !324)
!350 = !DILocalVariable(name: "err", scope: !324, file: !99, line: 84, type: !351)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_error", file: !87, line: 42, size: 128, align: 64, elements: !352)
!352 = !{!353, !354, !355}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !351, file: !87, line: 43, baseType: !86, size: 32, align: 32)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "syserrno", scope: !351, file: !87, line: 45, baseType: !168, size: 32, align: 32, offset: 32)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !351, file: !87, line: 46, baseType: !282, size: 64, align: 64, offset: 64)
!356 = !DILocation(line: 84, column: 21, scope: !324)
!357 = !DILocation(line: 86, column: 7, scope: !358)
!358 = distinct !DILexicalBlock(scope: !324, file: !99, line: 86, column: 7)
!359 = !DILocation(line: 86, column: 12, scope: !358)
!360 = !DILocation(line: 86, column: 7, scope: !324)
!361 = !DILocation(line: 87, column: 5, scope: !358)
!362 = !DILocation(line: 90, column: 19, scope: !324)
!363 = !DILocation(line: 90, column: 3, scope: !324)
!364 = !DILocation(line: 93, column: 7, scope: !365)
!365 = distinct !DILexicalBlock(scope: !324, file: !99, line: 93, column: 7)
!366 = !DILocation(line: 93, column: 12, scope: !365)
!367 = !DILocation(line: 93, column: 19, scope: !365)
!368 = !DILocation(line: 93, column: 7, scope: !324)
!369 = !DILocation(line: 94, column: 5, scope: !370)
!370 = distinct !DILexicalBlock(scope: !365, file: !99, line: 93, column: 45)
!371 = !DILocation(line: 94, column: 10, scope: !370)
!372 = !DILocation(line: 94, column: 27, scope: !370)
!373 = !DILocation(line: 95, column: 5, scope: !370)
!374 = !DILocation(line: 98, column: 38, scope: !324)
!375 = !DILocation(line: 98, column: 44, scope: !324)
!376 = !DILocation(line: 98, column: 49, scope: !324)
!377 = !DILocation(line: 98, column: 18, scope: !324)
!378 = !DILocation(line: 98, column: 16, scope: !324)
!379 = !DILocation(line: 100, column: 14, scope: !324)
!380 = !DILocation(line: 102, column: 18, scope: !381)
!381 = distinct !DILexicalBlock(scope: !324, file: !99, line: 102, column: 7)
!382 = !DILocation(line: 102, column: 7, scope: !381)
!383 = !DILocation(line: 102, column: 44, scope: !381)
!384 = !DILocation(line: 102, column: 7, scope: !324)
!385 = !DILocation(line: 103, column: 13, scope: !386)
!386 = distinct !DILexicalBlock(scope: !387, file: !99, line: 103, column: 9)
!387 = distinct !DILexicalBlock(scope: !381, file: !99, line: 102, column: 49)
!388 = !DILocation(line: 103, column: 22, scope: !386)
!389 = !DILocation(line: 103, column: 9, scope: !387)
!390 = !DILocation(line: 104, column: 29, scope: !386)
!391 = !DILocation(line: 105, column: 33, scope: !386)
!392 = !DILocation(line: 105, column: 24, scope: !386)
!393 = !DILocation(line: 104, column: 7, scope: !394)
!394 = !DILexicalBlockFile(scope: !386, file: !99, discriminator: 1)
!395 = !DILocation(line: 104, column: 7, scope: !386)
!396 = !DILocation(line: 107, column: 16, scope: !387)
!397 = !DILocation(line: 108, column: 9, scope: !398)
!398 = distinct !DILexicalBlock(scope: !387, file: !99, line: 108, column: 9)
!399 = !DILocation(line: 108, column: 14, scope: !398)
!400 = !DILocation(line: 108, column: 21, scope: !398)
!401 = !DILocation(line: 108, column: 45, scope: !398)
!402 = !DILocation(line: 109, column: 38, scope: !398)
!403 = !DILocation(line: 109, column: 43, scope: !398)
!404 = !DILocation(line: 109, column: 9, scope: !398)
!405 = !DILocation(line: 108, column: 9, scope: !406)
!406 = !DILexicalBlockFile(scope: !387, file: !99, discriminator: 1)
!407 = !DILocation(line: 110, column: 14, scope: !408)
!408 = distinct !DILexicalBlock(scope: !398, file: !99, line: 109, column: 59)
!409 = !DILocation(line: 112, column: 24, scope: !408)
!410 = !DILocation(line: 112, column: 15, scope: !408)
!411 = !DILocation(line: 110, column: 7, scope: !412)
!412 = !DILexicalBlockFile(scope: !408, file: !99, discriminator: 1)
!413 = !DILocation(line: 113, column: 5, scope: !408)
!414 = !DILocation(line: 114, column: 5, scope: !387)
!415 = !DILocation(line: 114, column: 10, scope: !387)
!416 = !DILocation(line: 114, column: 16, scope: !387)
!417 = !DILocation(line: 115, column: 5, scope: !387)
!418 = !DILocation(line: 115, column: 10, scope: !387)
!419 = !DILocation(line: 115, column: 27, scope: !387)
!420 = !DILocation(line: 116, column: 5, scope: !387)
!421 = !DILocation(line: 119, column: 11, scope: !422)
!422 = distinct !DILexicalBlock(scope: !324, file: !99, line: 119, column: 7)
!423 = !DILocation(line: 119, column: 7, scope: !422)
!424 = !DILocation(line: 119, column: 7, scope: !324)
!425 = !DILocation(line: 120, column: 27, scope: !426)
!426 = distinct !DILexicalBlock(scope: !422, file: !99, line: 119, column: 17)
!427 = !DILocation(line: 120, column: 37, scope: !426)
!428 = !DILocation(line: 120, column: 31, scope: !426)
!429 = !DILocation(line: 120, column: 21, scope: !426)
!430 = !DILocation(line: 122, column: 14, scope: !426)
!431 = !DILocation(line: 122, column: 19, scope: !426)
!432 = !DILocation(line: 122, column: 11, scope: !426)
!433 = !DILocation(line: 123, column: 20, scope: !426)
!434 = !DILocation(line: 123, column: 14, scope: !426)
!435 = !DILocation(line: 124, column: 5, scope: !426)
!436 = !DILocation(line: 124, column: 12, scope: !437)
!437 = !DILexicalBlockFile(scope: !426, file: !99, discriminator: 1)
!438 = !DILocation(line: 124, column: 23, scope: !437)
!439 = !DILocation(line: 124, column: 21, scope: !437)
!440 = !DILocation(line: 124, column: 5, scope: !437)
!441 = !DILocalVariable(name: "namenode", scope: !442, file: !99, line: 125, type: !249)
!442 = distinct !DILexicalBlock(scope: !426, file: !99, line: 124, column: 40)
!443 = !DILocation(line: 125, column: 29, scope: !442)
!444 = !DILocation(line: 127, column: 20, scope: !442)
!445 = !DILocation(line: 127, column: 36, scope: !442)
!446 = !DILocation(line: 127, column: 54, scope: !442)
!447 = !DILocation(line: 127, column: 52, scope: !442)
!448 = !DILocation(line: 127, column: 13, scope: !442)
!449 = !DILocation(line: 127, column: 11, scope: !442)
!450 = !DILocation(line: 128, column: 11, scope: !451)
!451 = distinct !DILexicalBlock(scope: !442, file: !99, line: 128, column: 11)
!452 = !DILocation(line: 128, column: 15, scope: !451)
!453 = !DILocation(line: 128, column: 11, scope: !442)
!454 = !DILocation(line: 129, column: 15, scope: !451)
!455 = !DILocation(line: 130, column: 25, scope: !451)
!456 = !DILocation(line: 130, column: 16, scope: !451)
!457 = !DILocation(line: 129, column: 9, scope: !458)
!458 = !DILexicalBlockFile(scope: !451, file: !99, discriminator: 1)
!459 = !DILocation(line: 129, column: 9, scope: !451)
!460 = !DILocation(line: 132, column: 18, scope: !442)
!461 = !DILocation(line: 132, column: 22, scope: !442)
!462 = !DILocation(line: 132, column: 16, scope: !442)
!463 = !DILocation(line: 134, column: 11, scope: !464)
!464 = distinct !DILexicalBlock(scope: !442, file: !99, line: 134, column: 11)
!465 = !DILocation(line: 134, column: 17, scope: !464)
!466 = !DILocation(line: 134, column: 15, scope: !464)
!467 = !DILocation(line: 134, column: 26, scope: !464)
!468 = !DILocation(line: 134, column: 29, scope: !469)
!469 = !DILexicalBlockFile(scope: !464, file: !99, discriminator: 1)
!470 = !DILocation(line: 134, column: 37, scope: !469)
!471 = !DILocation(line: 134, column: 11, scope: !469)
!472 = !DILocation(line: 134, column: 48, scope: !473)
!473 = !DILexicalBlockFile(scope: !464, file: !99, discriminator: 2)
!474 = !DILocation(line: 134, column: 45, scope: !473)
!475 = !DILocation(line: 136, column: 11, scope: !476)
!476 = distinct !DILexicalBlock(scope: !442, file: !99, line: 136, column: 11)
!477 = !DILocation(line: 136, column: 18, scope: !476)
!478 = !DILocation(line: 136, column: 15, scope: !476)
!479 = !DILocation(line: 136, column: 11, scope: !442)
!480 = !DILocation(line: 137, column: 15, scope: !476)
!481 = !DILocation(line: 138, column: 25, scope: !476)
!482 = !DILocation(line: 138, column: 16, scope: !476)
!483 = !DILocation(line: 137, column: 9, scope: !484)
!484 = !DILexicalBlockFile(scope: !476, file: !99, discriminator: 1)
!485 = !DILocation(line: 137, column: 9, scope: !476)
!486 = !DILocation(line: 139, column: 8, scope: !442)
!487 = !DILocation(line: 139, column: 12, scope: !442)
!488 = !DILocation(line: 141, column: 38, scope: !442)
!489 = !DILocation(line: 141, column: 18, scope: !442)
!490 = !DILocation(line: 141, column: 16, scope: !442)
!491 = !DILocation(line: 142, column: 34, scope: !442)
!492 = !DILocation(line: 142, column: 39, scope: !442)
!493 = !DILocation(line: 142, column: 49, scope: !442)
!494 = !DILocation(line: 142, column: 15, scope: !442)
!495 = !DILocation(line: 142, column: 13, scope: !442)
!496 = !DILocation(line: 143, column: 18, scope: !442)
!497 = !DILocation(line: 143, column: 16, scope: !442)
!498 = !DILocation(line: 124, column: 5, scope: !499)
!499 = !DILexicalBlockFile(scope: !426, file: !99, discriminator: 2)
!500 = distinct !{!500, !435}
!501 = !DILocation(line: 145, column: 3, scope: !426)
!502 = !DILocation(line: 147, column: 3, scope: !324)
!503 = !DILocation(line: 149, column: 14, scope: !324)
!504 = !DILocation(line: 151, column: 3, scope: !324)
!505 = !DILocation(line: 151, column: 8, scope: !324)
!506 = !DILocation(line: 151, column: 25, scope: !324)
!507 = !DILocation(line: 152, column: 1, scope: !324)
!508 = !DILocation(line: 152, column: 1, scope: !509)
!509 = !DILexicalBlockFile(scope: !324, file: !99, discriminator: 1)
!510 = distinct !DISubprogram(name: "ensure_allinstfiles_available", scope: !99, file: !99, line: 247, type: !511, isLocal: false, isDefinition: true, scopeLine: 247, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !315)
!511 = !DISubroutineType(types: !512)
!512 = !{null}
!513 = !DILocalVariable(name: "array", scope: !510, file: !99, line: 248, type: !514)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_array", file: !515, line: 38, size: 128, align: 64, elements: !516)
!515 = !DIFile(filename: "../../lib/dpkg/pkg-array.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!516 = !{!517, !518}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "n_pkgs", scope: !514, file: !515, line: 39, baseType: !168, size: 32, align: 32)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "pkgs", scope: !514, file: !515, line: 40, baseType: !519, size: 64, align: 64, offset: 64)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64, align: 64)
!520 = !DILocation(line: 248, column: 20, scope: !510)
!521 = !DILocalVariable(name: "pkg", scope: !510, file: !99, line: 249, type: !138)
!522 = !DILocation(line: 249, column: 19, scope: !510)
!523 = !DILocalVariable(name: "progress", scope: !510, file: !99, line: 250, type: !524)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "progress", file: !525, line: 36, size: 192, align: 64, elements: !526)
!525 = !DIFile(filename: "../../lib/dpkg/progress.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!526 = !{!527, !528, !529, !530, !531}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !524, file: !525, line: 37, baseType: !122, size: 64, align: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !524, file: !525, line: 39, baseType: !168, size: 32, align: 32, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !524, file: !525, line: 40, baseType: !168, size: 32, align: 32, offset: 96)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "last_percent", scope: !524, file: !525, line: 41, baseType: !168, size: 32, align: 32, offset: 128)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "on_tty", scope: !524, file: !525, line: 43, baseType: !164, size: 8, align: 8, offset: 160)
!532 = !DILocation(line: 250, column: 19, scope: !510)
!533 = !DILocalVariable(name: "i", scope: !510, file: !99, line: 251, type: !168)
!534 = !DILocation(line: 251, column: 7, scope: !510)
!535 = !DILocation(line: 253, column: 7, scope: !536)
!536 = distinct !DILexicalBlock(scope: !510, file: !99, line: 253, column: 7)
!537 = !DILocation(line: 253, column: 7, scope: !510)
!538 = !DILocation(line: 253, column: 24, scope: !539)
!539 = !DILexicalBlockFile(scope: !536, file: !99, discriminator: 1)
!540 = !DILocation(line: 254, column: 7, scope: !541)
!541 = distinct !DILexicalBlock(scope: !510, file: !99, line: 254, column: 7)
!542 = !DILocation(line: 254, column: 16, scope: !541)
!543 = !DILocation(line: 254, column: 7, scope: !510)
!544 = !DILocalVariable(name: "max", scope: !545, file: !99, line: 255, type: !168)
!545 = distinct !DILexicalBlock(scope: !541, file: !99, line: 254, column: 41)
!546 = !DILocation(line: 255, column: 9, scope: !545)
!547 = !DILocation(line: 255, column: 15, scope: !545)
!548 = !DILocation(line: 257, column: 14, scope: !545)
!549 = !DILocation(line: 258, column: 29, scope: !545)
!550 = !DILocation(line: 258, column: 58, scope: !545)
!551 = !DILocation(line: 258, column: 5, scope: !552)
!552 = !DILexicalBlockFile(scope: !545, file: !99, discriminator: 1)
!553 = !DILocation(line: 259, column: 3, scope: !545)
!554 = !DILocation(line: 261, column: 3, scope: !510)
!555 = !DILocation(line: 263, column: 3, scope: !510)
!556 = !DILocation(line: 265, column: 10, scope: !557)
!557 = distinct !DILexicalBlock(scope: !510, file: !99, line: 265, column: 3)
!558 = !DILocation(line: 265, column: 8, scope: !557)
!559 = !DILocation(line: 265, column: 15, scope: !560)
!560 = !DILexicalBlockFile(scope: !561, file: !99, discriminator: 1)
!561 = distinct !DILexicalBlock(scope: !557, file: !99, line: 265, column: 3)
!562 = !DILocation(line: 265, column: 25, scope: !560)
!563 = !DILocation(line: 265, column: 17, scope: !560)
!564 = !DILocation(line: 265, column: 3, scope: !560)
!565 = !DILocation(line: 266, column: 22, scope: !566)
!566 = distinct !DILexicalBlock(scope: !561, file: !99, line: 265, column: 38)
!567 = !DILocation(line: 266, column: 11, scope: !566)
!568 = !DILocation(line: 266, column: 17, scope: !566)
!569 = !DILocation(line: 266, column: 9, scope: !566)
!570 = !DILocation(line: 267, column: 35, scope: !566)
!571 = !DILocation(line: 267, column: 5, scope: !566)
!572 = !DILocation(line: 269, column: 9, scope: !573)
!573 = distinct !DILexicalBlock(scope: !566, file: !99, line: 269, column: 9)
!574 = !DILocation(line: 269, column: 18, scope: !573)
!575 = !DILocation(line: 269, column: 9, scope: !566)
!576 = !DILocation(line: 270, column: 7, scope: !573)
!577 = !DILocation(line: 271, column: 3, scope: !566)
!578 = !DILocation(line: 265, column: 34, scope: !579)
!579 = !DILexicalBlockFile(scope: !561, file: !99, discriminator: 2)
!580 = !DILocation(line: 265, column: 3, scope: !579)
!581 = distinct !{!581, !582}
!582 = !DILocation(line: 265, column: 3, scope: !510)
!583 = !DILocation(line: 273, column: 3, scope: !510)
!584 = !DILocation(line: 275, column: 19, scope: !510)
!585 = !DILocation(line: 277, column: 7, scope: !586)
!586 = distinct !DILexicalBlock(scope: !510, file: !99, line: 277, column: 7)
!587 = !DILocation(line: 277, column: 16, scope: !586)
!588 = !DILocation(line: 277, column: 7, scope: !510)
!589 = !DILocation(line: 278, column: 5, scope: !590)
!590 = distinct !DILexicalBlock(scope: !586, file: !99, line: 277, column: 48)
!591 = !DILocation(line: 279, column: 11, scope: !590)
!592 = !DILocation(line: 279, column: 11, scope: !593)
!593 = !DILexicalBlockFile(scope: !590, file: !99, discriminator: 1)
!594 = !DILocation(line: 282, column: 12, scope: !590)
!595 = !DILocation(line: 279, column: 5, scope: !596)
!596 = !DILexicalBlockFile(scope: !590, file: !99, discriminator: 2)
!597 = !DILocation(line: 283, column: 14, scope: !590)
!598 = !DILocation(line: 284, column: 3, scope: !590)
!599 = !DILocation(line: 285, column: 1, scope: !510)
!600 = distinct !DISubprogram(name: "pkg_files_optimize_load", scope: !99, file: !99, line: 172, type: !601, isLocal: true, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !315)
!601 = !DISubroutineType(types: !602)
!602 = !{null, !603}
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64, align: 64)
!604 = !DILocalVariable(name: "array", arg: 1, scope: !600, file: !99, line: 172, type: !603)
!605 = !DILocation(line: 172, column: 43, scope: !600)
!606 = !DILocalVariable(name: "fs", scope: !600, file: !99, line: 174, type: !607)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "statfs", file: !608, line: 24, size: 960, align: 64, elements: !609)
!608 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/statfs.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!609 = !{!610, !612, !613, !615, !616, !617, !619, !620, !628, !629, !630, !631}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "f_type", scope: !607, file: !608, line: 26, baseType: !611, size: 64, align: 64)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fsword_t", file: !274, line: 170, baseType: !303)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "f_bsize", scope: !607, file: !608, line: 27, baseType: !611, size: 64, align: 64, offset: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "f_blocks", scope: !607, file: !608, line: 29, baseType: !614, size: 64, align: 64, offset: 128)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fsblkcnt_t", file: !274, line: 162, baseType: !110)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "f_bfree", scope: !607, file: !608, line: 30, baseType: !614, size: 64, align: 64, offset: 192)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "f_bavail", scope: !607, file: !608, line: 31, baseType: !614, size: 64, align: 64, offset: 256)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "f_files", scope: !607, file: !608, line: 32, baseType: !618, size: 64, align: 64, offset: 320)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fsfilcnt_t", file: !274, line: 166, baseType: !110)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "f_ffree", scope: !607, file: !608, line: 33, baseType: !618, size: 64, align: 64, offset: 384)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "f_fsid", scope: !607, file: !608, line: 41, baseType: !621, size: 64, align: 32, offset: 448)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fsid_t", file: !274, line: 134, baseType: !622)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !274, line: 134, size: 64, align: 32, elements: !623)
!623 = !{!624}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !622, file: !274, line: 134, baseType: !625, size: 64, align: 32)
!625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 64, align: 32, elements: !626)
!626 = !{!627}
!627 = !DISubrange(count: 2)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "f_namelen", scope: !607, file: !608, line: 42, baseType: !611, size: 64, align: 64, offset: 512)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "f_frsize", scope: !607, file: !608, line: 43, baseType: !611, size: 64, align: 64, offset: 576)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !607, file: !608, line: 44, baseType: !611, size: 64, align: 64, offset: 640)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "f_spare", scope: !607, file: !608, line: 45, baseType: !632, size: 256, align: 64, offset: 704)
!632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !611, size: 256, align: 64, elements: !633)
!633 = !{!634}
!634 = !DISubrange(count: 4)
!635 = !DILocation(line: 174, column: 17, scope: !600)
!636 = !DILocalVariable(name: "i", scope: !600, file: !99, line: 175, type: !168)
!637 = !DILocation(line: 175, column: 7, scope: !600)
!638 = !DILocation(line: 178, column: 14, scope: !639)
!639 = distinct !DILexicalBlock(scope: !600, file: !99, line: 178, column: 7)
!640 = !DILocation(line: 178, column: 7, scope: !641)
!641 = !DILexicalBlockFile(scope: !639, file: !99, discriminator: 1)
!642 = !DILocation(line: 178, column: 41, scope: !639)
!643 = !DILocation(line: 178, column: 7, scope: !600)
!644 = !DILocation(line: 179, column: 5, scope: !639)
!645 = !DILocation(line: 183, column: 10, scope: !646)
!646 = distinct !DILexicalBlock(scope: !600, file: !99, line: 183, column: 3)
!647 = !DILocation(line: 183, column: 8, scope: !646)
!648 = !DILocation(line: 183, column: 15, scope: !649)
!649 = !DILexicalBlockFile(scope: !650, file: !99, discriminator: 1)
!650 = distinct !DILexicalBlock(scope: !646, file: !99, line: 183, column: 3)
!651 = !DILocation(line: 183, column: 19, scope: !649)
!652 = !DILocation(line: 183, column: 26, scope: !649)
!653 = !DILocation(line: 183, column: 17, scope: !649)
!654 = !DILocation(line: 183, column: 3, scope: !649)
!655 = !DILocalVariable(name: "pkg", scope: !656, file: !99, line: 184, type: !138)
!656 = distinct !DILexicalBlock(scope: !650, file: !99, line: 183, column: 39)
!657 = !DILocation(line: 184, column: 21, scope: !656)
!658 = !DILocation(line: 184, column: 39, scope: !656)
!659 = !DILocation(line: 184, column: 27, scope: !656)
!660 = !DILocation(line: 184, column: 34, scope: !656)
!661 = !DILocalVariable(name: "fm", scope: !656, file: !99, line: 188, type: !662)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !600, file: !99, line: 185, size: 704, align: 64, elements: !663)
!663 = !{!664, !694}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !662, file: !99, line: 186, baseType: !665, size: 256, align: 64)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap", file: !666, line: 27, size: 256, align: 64, elements: !667)
!666 = !DIFile(filename: "/usr/include/linux/fiemap.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!667 = !{!668, !672, !673, !675, !676, !677, !678}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "fm_start", scope: !665, file: !666, line: 28, baseType: !669, size: 64, align: 64)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !670, line: 30, baseType: !671)
!670 = !DIFile(filename: "/usr/include/asm-generic/int-ll64.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!671 = !DIBasicType(name: "long long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "fm_length", scope: !665, file: !666, line: 30, baseType: !669, size: 64, align: 64, offset: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "fm_flags", scope: !665, file: !666, line: 32, baseType: !674, size: 32, align: 32, offset: 128)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !670, line: 26, baseType: !159)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "fm_mapped_extents", scope: !665, file: !666, line: 33, baseType: !674, size: 32, align: 32, offset: 160)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "fm_extent_count", scope: !665, file: !666, line: 34, baseType: !674, size: 32, align: 32, offset: 192)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "fm_reserved", scope: !665, file: !666, line: 35, baseType: !674, size: 32, align: 32, offset: 224)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "fm_extents", scope: !665, file: !666, line: 36, baseType: !679, align: 64, offset: 256)
!679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !680, align: 64, elements: !692)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent", file: !666, line: 16, size: 448, align: 64, elements: !681)
!681 = !{!682, !683, !684, !685, !687, !688}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "fe_logical", scope: !680, file: !666, line: 17, baseType: !669, size: 64, align: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "fe_physical", scope: !680, file: !666, line: 19, baseType: !669, size: 64, align: 64, offset: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "fe_length", scope: !680, file: !666, line: 21, baseType: !669, size: 64, align: 64, offset: 128)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "fe_reserved64", scope: !680, file: !666, line: 22, baseType: !686, size: 128, align: 64, offset: 192)
!686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !669, size: 128, align: 64, elements: !626)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "fe_flags", scope: !680, file: !666, line: 23, baseType: !674, size: 32, align: 32, offset: 320)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "fe_reserved", scope: !680, file: !666, line: 24, baseType: !689, size: 96, align: 32, offset: 352)
!689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !674, size: 96, align: 32, elements: !690)
!690 = !{!691}
!691 = !DISubrange(count: 3)
!692 = !{!693}
!693 = !DISubrange(count: 0)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !662, file: !99, line: 187, baseType: !680, size: 448, align: 64, offset: 256)
!695 = !DILocation(line: 188, column: 7, scope: !656)
!696 = !DILocalVariable(name: "listfile", scope: !656, file: !99, line: 189, type: !122)
!697 = !DILocation(line: 189, column: 17, scope: !656)
!698 = !DILocalVariable(name: "fd", scope: !656, file: !99, line: 190, type: !168)
!699 = !DILocation(line: 190, column: 9, scope: !656)
!700 = !DILocation(line: 192, column: 9, scope: !701)
!701 = distinct !DILexicalBlock(scope: !656, file: !99, line: 192, column: 9)
!702 = !DILocation(line: 192, column: 14, scope: !701)
!703 = !DILocation(line: 192, column: 21, scope: !701)
!704 = !DILocation(line: 192, column: 46, scope: !701)
!705 = !DILocation(line: 193, column: 9, scope: !701)
!706 = !DILocation(line: 193, column: 14, scope: !701)
!707 = !DILocation(line: 193, column: 35, scope: !701)
!708 = !DILocation(line: 192, column: 9, scope: !709)
!709 = !DILexicalBlockFile(scope: !656, file: !99, discriminator: 1)
!710 = !DILocation(line: 194, column: 7, scope: !701)
!711 = !DILocation(line: 196, column: 5, scope: !656)
!712 = !DILocation(line: 196, column: 10, scope: !656)
!713 = !DILocation(line: 196, column: 31, scope: !656)
!714 = !DILocation(line: 198, column: 36, scope: !656)
!715 = !DILocation(line: 198, column: 42, scope: !656)
!716 = !DILocation(line: 198, column: 47, scope: !656)
!717 = !DILocation(line: 198, column: 16, scope: !656)
!718 = !DILocation(line: 198, column: 14, scope: !656)
!719 = !DILocation(line: 200, column: 15, scope: !656)
!720 = !DILocation(line: 200, column: 10, scope: !656)
!721 = !DILocation(line: 200, column: 8, scope: !656)
!722 = !DILocation(line: 201, column: 9, scope: !723)
!723 = distinct !DILexicalBlock(scope: !656, file: !99, line: 201, column: 9)
!724 = !DILocation(line: 201, column: 12, scope: !723)
!725 = !DILocation(line: 201, column: 9, scope: !656)
!726 = !DILocation(line: 202, column: 7, scope: !723)
!727 = !DILocation(line: 204, column: 5, scope: !656)
!728 = !DILocation(line: 205, column: 8, scope: !656)
!729 = !DILocation(line: 205, column: 15, scope: !656)
!730 = !DILocation(line: 205, column: 24, scope: !656)
!731 = !DILocation(line: 206, column: 30, scope: !656)
!732 = !DILocation(line: 206, column: 8, scope: !656)
!733 = !DILocation(line: 206, column: 15, scope: !656)
!734 = !DILocation(line: 206, column: 25, scope: !656)
!735 = !DILocation(line: 207, column: 8, scope: !656)
!736 = !DILocation(line: 207, column: 15, scope: !656)
!737 = !DILocation(line: 207, column: 24, scope: !656)
!738 = !DILocation(line: 208, column: 8, scope: !656)
!739 = !DILocation(line: 208, column: 15, scope: !656)
!740 = !DILocation(line: 208, column: 31, scope: !656)
!741 = !DILocation(line: 210, column: 15, scope: !742)
!742 = distinct !DILexicalBlock(scope: !656, file: !99, line: 210, column: 9)
!743 = !DILocation(line: 210, column: 33, scope: !742)
!744 = !DILocation(line: 210, column: 9, scope: !742)
!745 = !DILocation(line: 210, column: 53, scope: !742)
!746 = !DILocation(line: 210, column: 9, scope: !656)
!747 = !DILocation(line: 211, column: 38, scope: !742)
!748 = !DILocation(line: 211, column: 45, scope: !742)
!749 = !DILocation(line: 211, column: 35, scope: !742)
!750 = !DILocation(line: 211, column: 59, scope: !742)
!751 = !DILocation(line: 211, column: 7, scope: !742)
!752 = !DILocation(line: 211, column: 12, scope: !742)
!753 = !DILocation(line: 211, column: 33, scope: !742)
!754 = !DILocation(line: 213, column: 11, scope: !656)
!755 = !DILocation(line: 213, column: 5, scope: !656)
!756 = !DILocation(line: 214, column: 3, scope: !656)
!757 = !DILocation(line: 183, column: 35, scope: !758)
!758 = !DILexicalBlockFile(scope: !650, file: !99, discriminator: 2)
!759 = !DILocation(line: 183, column: 3, scope: !758)
!760 = distinct !{!760, !761}
!761 = !DILocation(line: 183, column: 3, scope: !600)
!762 = !DILocation(line: 216, column: 18, scope: !600)
!763 = !DILocation(line: 216, column: 3, scope: !600)
!764 = !DILocation(line: 217, column: 1, scope: !600)
!765 = !DILocation(line: 217, column: 1, scope: !766)
!766 = !DILexicalBlockFile(scope: !600, file: !99, discriminator: 1)
!767 = distinct !DISubprogram(name: "ensure_allinstfiles_available_quiet", scope: !99, file: !99, line: 287, type: !511, isLocal: false, isDefinition: true, scopeLine: 287, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !315)
!768 = !DILocation(line: 288, column: 12, scope: !767)
!769 = !DILocation(line: 289, column: 3, scope: !767)
!770 = !DILocation(line: 290, column: 1, scope: !767)
!771 = distinct !DISubprogram(name: "write_filelist_except", scope: !99, file: !99, line: 297, type: !772, isLocal: false, isDefinition: true, scopeLine: 299, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !315)
!772 = !DISubroutineType(types: !773)
!773 = !{null, !138, !774, !244, !73}
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64, align: 64)
!775 = !DILocalVariable(name: "pkg", arg: 1, scope: !771, file: !99, line: 297, type: !138)
!776 = !DILocation(line: 297, column: 39, scope: !771)
!777 = !DILocalVariable(name: "pkgbin", arg: 2, scope: !771, file: !99, line: 297, type: !774)
!778 = !DILocation(line: 297, column: 59, scope: !771)
!779 = !DILocalVariable(name: "list", arg: 3, scope: !771, file: !99, line: 298, type: !244)
!780 = !DILocation(line: 298, column: 50, scope: !771)
!781 = !DILocalVariable(name: "mask", arg: 4, scope: !771, file: !99, line: 298, type: !73)
!782 = !DILocation(line: 298, column: 81, scope: !771)
!783 = !DILocalVariable(name: "file", scope: !771, file: !99, line: 300, type: !784)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64, align: 64)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atomic_file", file: !105, line: 40, size: 256, align: 64, elements: !786)
!786 = !{!787, !788, !789, !790}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !785, file: !105, line: 41, baseType: !104, size: 32, align: 32)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !785, file: !105, line: 42, baseType: !282, size: 64, align: 64, offset: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "name_new", scope: !785, file: !105, line: 43, baseType: !282, size: 64, align: 64, offset: 128)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !785, file: !105, line: 44, baseType: !791, size: 64, align: 64, offset: 192)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64, align: 64)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !793, line: 48, baseType: !794)
!793 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !795, line: 241, size: 1728, align: 64, elements: !796)
!795 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!796 = !{!797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !817, !818, !819, !820, !821, !823, !825, !829, !832, !834, !835, !836, !837, !838, !839, !840}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !794, file: !795, line: 242, baseType: !168, size: 32, align: 32)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !794, file: !795, line: 247, baseType: !282, size: 64, align: 64, offset: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !794, file: !795, line: 248, baseType: !282, size: 64, align: 64, offset: 128)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !794, file: !795, line: 249, baseType: !282, size: 64, align: 64, offset: 192)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !794, file: !795, line: 250, baseType: !282, size: 64, align: 64, offset: 256)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !794, file: !795, line: 251, baseType: !282, size: 64, align: 64, offset: 320)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !794, file: !795, line: 252, baseType: !282, size: 64, align: 64, offset: 384)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !794, file: !795, line: 253, baseType: !282, size: 64, align: 64, offset: 448)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !794, file: !795, line: 254, baseType: !282, size: 64, align: 64, offset: 512)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !794, file: !795, line: 256, baseType: !282, size: 64, align: 64, offset: 576)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !794, file: !795, line: 257, baseType: !282, size: 64, align: 64, offset: 640)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !794, file: !795, line: 258, baseType: !282, size: 64, align: 64, offset: 704)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !794, file: !795, line: 260, baseType: !810, size: 64, align: 64, offset: 768)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64, align: 64)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !795, line: 156, size: 192, align: 64, elements: !812)
!812 = !{!813, !814, !816}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !811, file: !795, line: 157, baseType: !810, size: 64, align: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !811, file: !795, line: 158, baseType: !815, size: 64, align: 64, offset: 64)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64, align: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !811, file: !795, line: 162, baseType: !168, size: 32, align: 32, offset: 128)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !794, file: !795, line: 262, baseType: !815, size: 64, align: 64, offset: 832)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !794, file: !795, line: 264, baseType: !168, size: 32, align: 32, offset: 896)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !794, file: !795, line: 268, baseType: !168, size: 32, align: 32, offset: 928)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !794, file: !795, line: 270, baseType: !302, size: 64, align: 64, offset: 960)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !794, file: !795, line: 274, baseType: !822, size: 16, align: 16, offset: 1024)
!822 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !794, file: !795, line: 275, baseType: !824, size: 8, align: 8, offset: 1040)
!824 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !794, file: !795, line: 276, baseType: !826, size: 8, align: 8, offset: 1048)
!826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 8, align: 8, elements: !827)
!827 = !{!828}
!828 = !DISubrange(count: 1)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !794, file: !795, line: 280, baseType: !830, size: 64, align: 64, offset: 1088)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64, align: 64)
!831 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !795, line: 150, baseType: null)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !794, file: !795, line: 289, baseType: !833, size: 64, align: 64, offset: 1152)
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !274, line: 132, baseType: !303)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !794, file: !795, line: 297, baseType: !109, size: 64, align: 64, offset: 1216)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !794, file: !795, line: 298, baseType: !109, size: 64, align: 64, offset: 1280)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !794, file: !795, line: 299, baseType: !109, size: 64, align: 64, offset: 1344)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !794, file: !795, line: 300, baseType: !109, size: 64, align: 64, offset: 1408)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !794, file: !795, line: 302, baseType: !345, size: 64, align: 64, offset: 1472)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !794, file: !795, line: 303, baseType: !168, size: 32, align: 32, offset: 1536)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !794, file: !795, line: 305, baseType: !841, size: 160, align: 8, offset: 1568)
!841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 160, align: 8, elements: !842)
!842 = !{!843}
!843 = !DISubrange(count: 20)
!844 = !DILocation(line: 300, column: 23, scope: !771)
!845 = !DILocalVariable(name: "node", scope: !771, file: !99, line: 301, type: !244)
!846 = !DILocation(line: 301, column: 30, scope: !771)
!847 = !DILocalVariable(name: "listfile", scope: !771, file: !99, line: 302, type: !122)
!848 = !DILocation(line: 302, column: 15, scope: !771)
!849 = !DILocation(line: 304, column: 34, scope: !771)
!850 = !DILocation(line: 304, column: 39, scope: !771)
!851 = !DILocation(line: 304, column: 14, scope: !771)
!852 = !DILocation(line: 304, column: 12, scope: !771)
!853 = !DILocation(line: 306, column: 26, scope: !771)
!854 = !DILocation(line: 306, column: 10, scope: !771)
!855 = !DILocation(line: 306, column: 8, scope: !771)
!856 = !DILocation(line: 307, column: 20, scope: !771)
!857 = !DILocation(line: 307, column: 3, scope: !771)
!858 = !DILocation(line: 309, column: 15, scope: !859)
!859 = distinct !DILexicalBlock(scope: !771, file: !99, line: 309, column: 3)
!860 = !DILocation(line: 309, column: 13, scope: !859)
!861 = !DILocation(line: 309, column: 8, scope: !859)
!862 = !DILocation(line: 309, column: 21, scope: !863)
!863 = !DILexicalBlockFile(scope: !864, file: !99, discriminator: 1)
!864 = distinct !DILexicalBlock(scope: !859, file: !99, line: 309, column: 3)
!865 = !DILocation(line: 309, column: 3, scope: !863)
!866 = !DILocation(line: 310, column: 11, scope: !867)
!867 = distinct !DILexicalBlock(scope: !868, file: !99, line: 310, column: 9)
!868 = distinct !DILexicalBlock(scope: !864, file: !99, line: 309, column: 46)
!869 = !DILocation(line: 310, column: 16, scope: !867)
!870 = !DILocation(line: 310, column: 20, scope: !871)
!871 = !DILexicalBlockFile(scope: !867, file: !99, discriminator: 1)
!872 = !DILocation(line: 310, column: 26, scope: !871)
!873 = !DILocation(line: 310, column: 36, scope: !871)
!874 = !DILocation(line: 310, column: 44, scope: !871)
!875 = !DILocation(line: 310, column: 42, scope: !871)
!876 = !DILocation(line: 310, column: 9, scope: !871)
!877 = !DILocation(line: 311, column: 13, scope: !878)
!878 = distinct !DILexicalBlock(scope: !867, file: !99, line: 310, column: 52)
!879 = !DILocation(line: 311, column: 19, scope: !878)
!880 = !DILocation(line: 311, column: 29, scope: !878)
!881 = !DILocation(line: 311, column: 35, scope: !878)
!882 = !DILocation(line: 311, column: 41, scope: !878)
!883 = !DILocation(line: 311, column: 7, scope: !878)
!884 = !DILocation(line: 312, column: 6, scope: !878)
!885 = !DILocation(line: 312, column: 12, scope: !878)
!886 = !DILocation(line: 313, column: 5, scope: !878)
!887 = !DILocation(line: 314, column: 3, scope: !868)
!888 = !DILocation(line: 309, column: 34, scope: !889)
!889 = !DILexicalBlockFile(scope: !864, file: !99, discriminator: 2)
!890 = !DILocation(line: 309, column: 40, scope: !889)
!891 = !DILocation(line: 309, column: 32, scope: !889)
!892 = !DILocation(line: 309, column: 3, scope: !889)
!893 = distinct !{!893, !894}
!894 = !DILocation(line: 309, column: 3, scope: !771)
!895 = !DILocation(line: 316, column: 20, scope: !771)
!896 = !DILocation(line: 316, column: 3, scope: !771)
!897 = !DILocation(line: 317, column: 21, scope: !771)
!898 = !DILocation(line: 317, column: 3, scope: !771)
!899 = !DILocation(line: 318, column: 22, scope: !771)
!900 = !DILocation(line: 318, column: 3, scope: !771)
!901 = !DILocation(line: 319, column: 20, scope: !771)
!902 = !DILocation(line: 319, column: 3, scope: !771)
!903 = !DILocation(line: 321, column: 17, scope: !771)
!904 = !DILocation(line: 321, column: 3, scope: !905)
!905 = !DILexicalBlockFile(scope: !771, file: !99, discriminator: 1)
!906 = !DILocation(line: 323, column: 36, scope: !771)
!907 = !DILocation(line: 323, column: 3, scope: !771)
!908 = !DILocation(line: 324, column: 1, scope: !771)
!909 = distinct !DISubprogram(name: "pkg_sorter_by_files_list_phys_offs", scope: !99, file: !99, line: 156, type: !910, isLocal: true, isDefinition: true, scopeLine: 157, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !315)
!910 = !DISubroutineType(types: !911)
!911 = !{!168, !912, !912}
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64, align: 64)
!913 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!914 = !DILocalVariable(name: "a", arg: 1, scope: !909, file: !99, line: 156, type: !912)
!915 = !DILocation(line: 156, column: 48, scope: !909)
!916 = !DILocalVariable(name: "b", arg: 2, scope: !909, file: !99, line: 156, type: !912)
!917 = !DILocation(line: 156, column: 63, scope: !909)
!918 = !DILocalVariable(name: "pa", scope: !909, file: !99, line: 158, type: !112)
!919 = !DILocation(line: 158, column: 25, scope: !909)
!920 = !DILocation(line: 158, column: 56, scope: !909)
!921 = !DILocation(line: 158, column: 31, scope: !909)
!922 = !DILocation(line: 158, column: 30, scope: !909)
!923 = !DILocalVariable(name: "pb", scope: !909, file: !99, line: 159, type: !112)
!924 = !DILocation(line: 159, column: 25, scope: !909)
!925 = !DILocation(line: 159, column: 56, scope: !909)
!926 = !DILocation(line: 159, column: 31, scope: !909)
!927 = !DILocation(line: 159, column: 30, scope: !909)
!928 = !DILocation(line: 163, column: 7, scope: !929)
!929 = distinct !DILexicalBlock(scope: !909, file: !99, line: 163, column: 7)
!930 = !DILocation(line: 163, column: 11, scope: !929)
!931 = !DILocation(line: 163, column: 34, scope: !929)
!932 = !DILocation(line: 163, column: 38, scope: !929)
!933 = !DILocation(line: 163, column: 32, scope: !929)
!934 = !DILocation(line: 163, column: 7, scope: !909)
!935 = !DILocation(line: 164, column: 5, scope: !929)
!936 = !DILocation(line: 165, column: 12, scope: !937)
!937 = distinct !DILexicalBlock(scope: !929, file: !99, line: 165, column: 12)
!938 = !DILocation(line: 165, column: 16, scope: !937)
!939 = !DILocation(line: 165, column: 39, scope: !937)
!940 = !DILocation(line: 165, column: 43, scope: !937)
!941 = !DILocation(line: 165, column: 37, scope: !937)
!942 = !DILocation(line: 165, column: 12, scope: !929)
!943 = !DILocation(line: 166, column: 5, scope: !937)
!944 = !DILocation(line: 168, column: 5, scope: !937)
!945 = !DILocation(line: 169, column: 1, scope: !909)
