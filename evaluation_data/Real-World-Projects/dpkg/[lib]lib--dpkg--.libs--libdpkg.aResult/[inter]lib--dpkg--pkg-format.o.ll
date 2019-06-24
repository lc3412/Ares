; ModuleID = './[inter]lib--dpkg--pkg-format.o.i'
source_filename = "./[inter]lib--dpkg--pkg-format.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.fieldinfo = type { i8*, i64, void (%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*)*, void (%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*)*, i64 }
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
%struct.parsedb_state = type { i32, i32, %struct.dpkg_error, %struct.pkginfo*, %struct.pkgbin*, i8*, i8*, i8*, i8*, i32, i32 }
%struct.dpkg_error = type { i32, i32, i8* }
%struct.varbuf = type { i64, i64, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.pkg_format_node = type { %struct.pkg_format_node*, i32, i64, i32, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [5 x i8] c"dpkg\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"missing closing brace\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"may not be empty string\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%%%s%zus\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@fieldinfos = external constant [0 x %struct.fieldinfo], align 8
@virtinfos = internal constant [13 x %struct.fieldinfo] [%struct.fieldinfo { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), i64 14, void (%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*)* null, void (%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*)* @virt_package, i64 0 }, %struct.fieldinfo { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i64 15, void (%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*)* null, void (%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*)* @virt_synopsis, i64 0 }, %struct.fieldinfo { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i64 14, void (%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*)* null, void (%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*)* @virt_synopsis, i64 0 }, %struct.fieldinfo { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0), i64 16, void (%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*)* null, void (%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*)* @virt_status_abbrev, i64 0 }, %struct.fieldinfo { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0), i64 14, void (%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*)* null, void (%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*)* @virt_status_want, i64 0 }, %struct.fieldinfo { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i64 16, void (%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*)* null, void (%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*)* @virt_status_status, i64 0 }, %struct.fieldinfo { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0), i64 15, void (%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*)* null, void (%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*)* @virt_status_eflag, i64 0 }, %struct.fieldinfo { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i64 13, void (%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*)* null, void (%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*)* @virt_fsys_files, i64 0 }, %struct.fieldinfo { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0), i64 21, void (%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*)* null, void (%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*)* @virt_fsys_last_modified, i64 0 }, %struct.fieldinfo { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0), i64 14, void (%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*)* null, void (%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*)* @virt_source_package, i64 0 }, %struct.fieldinfo { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), i64 14, void (%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*)* null, void (%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*)* @virt_source_version, i64 0 }, %struct.fieldinfo { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i32 0, i32 0), i64 23, void (%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*)* null, void (%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*)* @virt_source_upstream_version, i64 0 }, %struct.fieldinfo zeroinitializer], align 16
@stdout = external global %struct._IO_FILE*, align 8
@.str.7 = private unnamed_addr constant [38 x i8] c"invalid character '%c' in field width\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"field width is out of range\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"binary:Package\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"binary:Synopsis\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"binary:Summary\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"db:Status-Abbrev\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"db:Status-Want\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"db:Status-Status\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"db:Status-Eflag\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"db-fsys:Files\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"db-fsys:Last-Modified\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"source:Package\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"source:Version\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"source:Upstream-Version\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.22 = private unnamed_addr constant [56 x i8] c"cannot get package %s filesystem last modification time\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: nounwind uwtable
define void @pkg_format_free(%struct.pkg_format_node*) #0 !dbg !384 {
  %2 = alloca %struct.pkg_format_node*, align 8
  %3 = alloca %struct.pkg_format_node*, align 8
  store %struct.pkg_format_node* %0, %struct.pkg_format_node** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.pkg_format_node** %2, metadata !396, metadata !397), !dbg !398
  call void @llvm.dbg.declare(metadata %struct.pkg_format_node** %3, metadata !399, metadata !397), !dbg !400
  br label %4, !dbg !401

; <label>:4:                                      ; preds = %7, %1
  %5 = load %struct.pkg_format_node*, %struct.pkg_format_node** %2, align 8, !dbg !402
  %6 = icmp ne %struct.pkg_format_node* %5, null, !dbg !404
  br i1 %6, label %7, label %17, !dbg !404

; <label>:7:                                      ; preds = %4
  %8 = load %struct.pkg_format_node*, %struct.pkg_format_node** %2, align 8, !dbg !405
  store %struct.pkg_format_node* %8, %struct.pkg_format_node** %3, align 8, !dbg !407
  %9 = load %struct.pkg_format_node*, %struct.pkg_format_node** %3, align 8, !dbg !408
  %10 = getelementptr inbounds %struct.pkg_format_node, %struct.pkg_format_node* %9, i32 0, i32 0, !dbg !409
  %11 = load %struct.pkg_format_node*, %struct.pkg_format_node** %10, align 8, !dbg !409
  store %struct.pkg_format_node* %11, %struct.pkg_format_node** %2, align 8, !dbg !410
  %12 = load %struct.pkg_format_node*, %struct.pkg_format_node** %3, align 8, !dbg !411
  %13 = getelementptr inbounds %struct.pkg_format_node, %struct.pkg_format_node* %12, i32 0, i32 4, !dbg !412
  %14 = load i8*, i8** %13, align 8, !dbg !412
  call void @free(i8* %14) #8, !dbg !413
  %15 = load %struct.pkg_format_node*, %struct.pkg_format_node** %3, align 8, !dbg !414
  %16 = bitcast %struct.pkg_format_node* %15 to i8*, !dbg !414
  call void @free(i8* %16) #8, !dbg !415
  br label %4, !dbg !416, !llvm.loop !418

; <label>:17:                                     ; preds = %4
  ret void, !dbg !419
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define %struct.pkg_format_node* @pkg_format_parse(i8*, %struct.dpkg_error*) #0 !dbg !420 {
  %3 = alloca %struct.pkg_format_node*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dpkg_error*, align 8
  %6 = alloca %struct.pkg_format_node*, align 8
  %7 = alloca %struct.pkg_format_node*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !424, metadata !397), !dbg !425
  store %struct.dpkg_error* %1, %struct.dpkg_error** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.dpkg_error** %5, metadata !426, metadata !397), !dbg !427
  call void @llvm.dbg.declare(metadata %struct.pkg_format_node** %6, metadata !428, metadata !397), !dbg !429
  call void @llvm.dbg.declare(metadata %struct.pkg_format_node** %7, metadata !430, metadata !397), !dbg !431
  call void @llvm.dbg.declare(metadata i8** %8, metadata !432, metadata !397), !dbg !433
  store %struct.pkg_format_node* null, %struct.pkg_format_node** %7, align 8, !dbg !434
  store %struct.pkg_format_node* null, %struct.pkg_format_node** %6, align 8, !dbg !435
  br label %9, !dbg !436

; <label>:9:                                      ; preds = %89, %2
  %10 = load i8*, i8** %4, align 8, !dbg !437
  %11 = load i8, i8* %10, align 1, !dbg !439
  %12 = icmp ne i8 %11, 0, !dbg !440
  br i1 %12, label %13, label %90, !dbg !440

; <label>:13:                                     ; preds = %9
  %14 = load %struct.pkg_format_node*, %struct.pkg_format_node** %7, align 8, !dbg !441
  %15 = icmp ne %struct.pkg_format_node* %14, null, !dbg !441
  br i1 %15, label %16, label %20, !dbg !444

; <label>:16:                                     ; preds = %13
  %17 = call %struct.pkg_format_node* @pkg_format_node_new(), !dbg !445
  %18 = load %struct.pkg_format_node*, %struct.pkg_format_node** %7, align 8, !dbg !446
  %19 = getelementptr inbounds %struct.pkg_format_node, %struct.pkg_format_node* %18, i32 0, i32 0, !dbg !447
  store %struct.pkg_format_node* %17, %struct.pkg_format_node** %19, align 8, !dbg !448
  store %struct.pkg_format_node* %17, %struct.pkg_format_node** %7, align 8, !dbg !449
  br label %22, !dbg !450

; <label>:20:                                     ; preds = %13
  %21 = call %struct.pkg_format_node* @pkg_format_node_new(), !dbg !451
  store %struct.pkg_format_node* %21, %struct.pkg_format_node** %7, align 8, !dbg !452
  store %struct.pkg_format_node* %21, %struct.pkg_format_node** %6, align 8, !dbg !453
  br label %22

; <label>:22:                                     ; preds = %20, %16
  %23 = load i8*, i8** %4, align 8, !dbg !454
  %24 = getelementptr inbounds i8, i8* %23, i64 0, !dbg !454
  %25 = load i8, i8* %24, align 1, !dbg !454
  %26 = sext i8 %25 to i32, !dbg !454
  %27 = icmp eq i32 %26, 36, !dbg !456
  br i1 %27, label %28, label %57, !dbg !457

; <label>:28:                                     ; preds = %22
  %29 = load i8*, i8** %4, align 8, !dbg !458
  %30 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !458
  %31 = load i8, i8* %30, align 1, !dbg !458
  %32 = sext i8 %31 to i32, !dbg !458
  %33 = icmp eq i32 %32, 123, !dbg !460
  br i1 %33, label %34, label %57, !dbg !461

; <label>:34:                                     ; preds = %28
  %35 = load i8*, i8** %4, align 8, !dbg !462
  %36 = call i8* @strchr(i8* %35, i32 125) #9, !dbg !464
  store i8* %36, i8** %8, align 8, !dbg !465
  %37 = load i8*, i8** %8, align 8, !dbg !466
  %38 = icmp ne i8* %37, null, !dbg !466
  br i1 %38, label %44, label %39, !dbg !468

; <label>:39:                                     ; preds = %34
  %40 = load %struct.dpkg_error*, %struct.dpkg_error** %5, align 8, !dbg !469
  %41 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0)) #8, !dbg !471
  %42 = call i32 (%struct.dpkg_error*, i8*, ...) @dpkg_put_error(%struct.dpkg_error* %40, i8* %41), !dbg !472
  %43 = load %struct.pkg_format_node*, %struct.pkg_format_node** %6, align 8, !dbg !474
  call void @pkg_format_free(%struct.pkg_format_node* %43), !dbg !475
  store %struct.pkg_format_node* null, %struct.pkg_format_node** %3, align 8, !dbg !476
  br label %99, !dbg !476

; <label>:44:                                     ; preds = %34
  %45 = load %struct.pkg_format_node*, %struct.pkg_format_node** %7, align 8, !dbg !477
  %46 = load i8*, i8** %4, align 8, !dbg !479
  %47 = getelementptr inbounds i8, i8* %46, i64 2, !dbg !480
  %48 = load i8*, i8** %8, align 8, !dbg !481
  %49 = getelementptr inbounds i8, i8* %48, i64 -1, !dbg !482
  %50 = load %struct.dpkg_error*, %struct.dpkg_error** %5, align 8, !dbg !483
  %51 = call zeroext i1 @parsefield(%struct.pkg_format_node* %45, i8* %47, i8* %49, %struct.dpkg_error* %50), !dbg !484
  br i1 %51, label %54, label %52, !dbg !485

; <label>:52:                                     ; preds = %44
  %53 = load %struct.pkg_format_node*, %struct.pkg_format_node** %6, align 8, !dbg !486
  call void @pkg_format_free(%struct.pkg_format_node* %53), !dbg !488
  store %struct.pkg_format_node* null, %struct.pkg_format_node** %3, align 8, !dbg !489
  br label %99, !dbg !489

; <label>:54:                                     ; preds = %44
  %55 = load i8*, i8** %8, align 8, !dbg !490
  %56 = getelementptr inbounds i8, i8* %55, i64 1, !dbg !491
  store i8* %56, i8** %4, align 8, !dbg !492
  br label %89, !dbg !493

; <label>:57:                                     ; preds = %28, %22
  %58 = load i8*, i8** %4, align 8, !dbg !494
  store i8* %58, i8** %8, align 8, !dbg !496
  br label %59, !dbg !497, !llvm.loop !498

; <label>:59:                                     ; preds = %76, %57
  %60 = load i8*, i8** %8, align 8, !dbg !499
  %61 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !499
  store i8* %61, i8** %8, align 8, !dbg !499
  %62 = load i8*, i8** %8, align 8, !dbg !501
  %63 = call i8* @strchrnul(i8* %62, i32 36) #9, !dbg !502
  store i8* %63, i8** %8, align 8, !dbg !503
  br label %64, !dbg !504

; <label>:64:                                     ; preds = %59
  %65 = load i8*, i8** %8, align 8, !dbg !505
  %66 = getelementptr inbounds i8, i8* %65, i64 0, !dbg !505
  %67 = load i8, i8* %66, align 1, !dbg !505
  %68 = sext i8 %67 to i32, !dbg !505
  %69 = icmp ne i32 %68, 0, !dbg !505
  br i1 %69, label %70, label %76, !dbg !507

; <label>:70:                                     ; preds = %64
  %71 = load i8*, i8** %8, align 8, !dbg !508
  %72 = getelementptr inbounds i8, i8* %71, i64 1, !dbg !508
  %73 = load i8, i8* %72, align 1, !dbg !508
  %74 = sext i8 %73 to i32, !dbg !508
  %75 = icmp ne i32 %74, 123, !dbg !510
  br label %76

; <label>:76:                                     ; preds = %70, %64
  %77 = phi i1 [ false, %64 ], [ %75, %70 ]
  br i1 %77, label %59, label %78, !dbg !511, !llvm.loop !498

; <label>:78:                                     ; preds = %76
  %79 = load %struct.pkg_format_node*, %struct.pkg_format_node** %7, align 8, !dbg !513
  %80 = load i8*, i8** %4, align 8, !dbg !515
  %81 = load i8*, i8** %8, align 8, !dbg !516
  %82 = getelementptr inbounds i8, i8* %81, i64 -1, !dbg !517
  %83 = load %struct.dpkg_error*, %struct.dpkg_error** %5, align 8, !dbg !518
  %84 = call zeroext i1 @parsestring(%struct.pkg_format_node* %79, i8* %80, i8* %82, %struct.dpkg_error* %83), !dbg !519
  br i1 %84, label %87, label %85, !dbg !520

; <label>:85:                                     ; preds = %78
  %86 = load %struct.pkg_format_node*, %struct.pkg_format_node** %6, align 8, !dbg !521
  call void @pkg_format_free(%struct.pkg_format_node* %86), !dbg !523
  store %struct.pkg_format_node* null, %struct.pkg_format_node** %3, align 8, !dbg !524
  br label %99, !dbg !524

; <label>:87:                                     ; preds = %78
  %88 = load i8*, i8** %8, align 8, !dbg !525
  store i8* %88, i8** %4, align 8, !dbg !526
  br label %89

; <label>:89:                                     ; preds = %87, %54
  br label %9, !dbg !527, !llvm.loop !529

; <label>:90:                                     ; preds = %9
  %91 = load %struct.pkg_format_node*, %struct.pkg_format_node** %6, align 8, !dbg !530
  %92 = icmp ne %struct.pkg_format_node* %91, null, !dbg !530
  br i1 %92, label %97, label %93, !dbg !532

; <label>:93:                                     ; preds = %90
  %94 = load %struct.dpkg_error*, %struct.dpkg_error** %5, align 8, !dbg !533
  %95 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0)) #8, !dbg !534
  %96 = call i32 (%struct.dpkg_error*, i8*, ...) @dpkg_put_error(%struct.dpkg_error* %94, i8* %95), !dbg !535
  br label %97, !dbg !537

; <label>:97:                                     ; preds = %93, %90
  %98 = load %struct.pkg_format_node*, %struct.pkg_format_node** %6, align 8, !dbg !538
  store %struct.pkg_format_node* %98, %struct.pkg_format_node** %3, align 8, !dbg !539
  br label %99, !dbg !539

; <label>:99:                                     ; preds = %97, %85, %52, %39
  %100 = load %struct.pkg_format_node*, %struct.pkg_format_node** %3, align 8, !dbg !540
  ret %struct.pkg_format_node* %100, !dbg !540
}

; Function Attrs: nounwind uwtable
define internal %struct.pkg_format_node* @pkg_format_node_new() #0 !dbg !541 {
  %1 = alloca %struct.pkg_format_node*, align 8
  call void @llvm.dbg.declare(metadata %struct.pkg_format_node** %1, metadata !544, metadata !397), !dbg !545
  %2 = call i8* @m_malloc(i64 40), !dbg !546
  %3 = bitcast i8* %2 to %struct.pkg_format_node*, !dbg !546
  store %struct.pkg_format_node* %3, %struct.pkg_format_node** %1, align 8, !dbg !547
  %4 = load %struct.pkg_format_node*, %struct.pkg_format_node** %1, align 8, !dbg !548
  %5 = getelementptr inbounds %struct.pkg_format_node, %struct.pkg_format_node* %4, i32 0, i32 1, !dbg !549
  store i32 0, i32* %5, align 8, !dbg !550
  %6 = load %struct.pkg_format_node*, %struct.pkg_format_node** %1, align 8, !dbg !551
  %7 = getelementptr inbounds %struct.pkg_format_node, %struct.pkg_format_node* %6, i32 0, i32 0, !dbg !552
  store %struct.pkg_format_node* null, %struct.pkg_format_node** %7, align 8, !dbg !553
  %8 = load %struct.pkg_format_node*, %struct.pkg_format_node** %1, align 8, !dbg !554
  %9 = getelementptr inbounds %struct.pkg_format_node, %struct.pkg_format_node* %8, i32 0, i32 4, !dbg !555
  store i8* null, i8** %9, align 8, !dbg !556
  %10 = load %struct.pkg_format_node*, %struct.pkg_format_node** %1, align 8, !dbg !557
  %11 = getelementptr inbounds %struct.pkg_format_node, %struct.pkg_format_node* %10, i32 0, i32 2, !dbg !558
  store i64 0, i64* %11, align 8, !dbg !559
  %12 = load %struct.pkg_format_node*, %struct.pkg_format_node** %1, align 8, !dbg !560
  %13 = getelementptr inbounds %struct.pkg_format_node, %struct.pkg_format_node* %12, i32 0, i32 3, !dbg !561
  store i32 0, i32* %13, align 8, !dbg !562
  %14 = load %struct.pkg_format_node*, %struct.pkg_format_node** %1, align 8, !dbg !563
  ret %struct.pkg_format_node* %14, !dbg !564
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

declare i32 @dpkg_put_error(%struct.dpkg_error*, i8*, ...) #4

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal zeroext i1 @parsefield(%struct.pkg_format_node*, i8*, i8*, %struct.dpkg_error*) #0 !dbg !565 {
  %5 = alloca i1, align 1
  %6 = alloca %struct.pkg_format_node*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.dpkg_error*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.pkg_format_node* %0, %struct.pkg_format_node** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.pkg_format_node** %6, metadata !568, metadata !397), !dbg !569
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !570, metadata !397), !dbg !571
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !572, metadata !397), !dbg !573
  store %struct.dpkg_error* %3, %struct.dpkg_error** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.dpkg_error** %9, metadata !574, metadata !397), !dbg !575
  call void @llvm.dbg.declare(metadata i32* %10, metadata !576, metadata !397), !dbg !577
  call void @llvm.dbg.declare(metadata i8** %11, metadata !578, metadata !397), !dbg !579
  %14 = load i8*, i8** %8, align 8, !dbg !580
  %15 = load i8*, i8** %7, align 8, !dbg !581
  %16 = ptrtoint i8* %14 to i64, !dbg !582
  %17 = ptrtoint i8* %15 to i64, !dbg !582
  %18 = sub i64 %16, %17, !dbg !582
  %19 = add nsw i64 %18, 1, !dbg !583
  %20 = trunc i64 %19 to i32, !dbg !580
  store i32 %20, i32* %10, align 4, !dbg !584
  %21 = load i8*, i8** %7, align 8, !dbg !585
  %22 = load i32, i32* %10, align 4, !dbg !586
  %23 = sext i32 %22 to i64, !dbg !586
  %24 = call i8* @memchr(i8* %21, i32 59, i64 %23) #9, !dbg !587
  store i8* %24, i8** %11, align 8, !dbg !588
  %25 = load i8*, i8** %11, align 8, !dbg !589
  %26 = icmp ne i8* %25, null, !dbg !589
  br i1 %26, label %27, label %79, !dbg !591

; <label>:27:                                     ; preds = %4
  call void @llvm.dbg.declare(metadata i8** %12, metadata !592, metadata !397), !dbg !594
  call void @llvm.dbg.declare(metadata i64* %13, metadata !595, metadata !397), !dbg !596
  %28 = call i32* @__errno_location() #1, !dbg !597
  store i32 0, i32* %28, align 4, !dbg !598
  %29 = load i8*, i8** %11, align 8, !dbg !599
  %30 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !600
  %31 = call i64 @strtol(i8* %30, i8** %12, i32 0) #8, !dbg !601
  store i64 %31, i64* %13, align 8, !dbg !602
  %32 = load i8*, i8** %12, align 8, !dbg !603
  %33 = getelementptr inbounds i8, i8* %32, i64 0, !dbg !603
  %34 = load i8, i8* %33, align 1, !dbg !603
  %35 = sext i8 %34 to i32, !dbg !603
  %36 = icmp ne i32 %35, 125, !dbg !605
  br i1 %36, label %37, label %44, !dbg !606

; <label>:37:                                     ; preds = %27
  %38 = load %struct.dpkg_error*, %struct.dpkg_error** %9, align 8, !dbg !607
  %39 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i32 0, i32 0)) #8, !dbg !609
  %40 = load i8*, i8** %12, align 8, !dbg !610
  %41 = load i8, i8* %40, align 1, !dbg !611
  %42 = sext i8 %41 to i32, !dbg !611
  %43 = call i32 (%struct.dpkg_error*, i8*, ...) @dpkg_put_error(%struct.dpkg_error* %38, i8* %39, i32 %42), !dbg !612
  store i1 false, i1* %5, align 1, !dbg !613
  br label %100, !dbg !613

; <label>:44:                                     ; preds = %27
  %45 = load i64, i64* %13, align 8, !dbg !614
  %46 = icmp slt i64 %45, -2147483648, !dbg !616
  br i1 %46, label %54, label %47, !dbg !617

; <label>:47:                                     ; preds = %44
  %48 = load i64, i64* %13, align 8, !dbg !618
  %49 = icmp sgt i64 %48, 2147483647, !dbg !620
  br i1 %49, label %54, label %50, !dbg !621

; <label>:50:                                     ; preds = %47
  %51 = call i32* @__errno_location() #1, !dbg !622
  %52 = load i32, i32* %51, align 4, !dbg !624
  %53 = icmp eq i32 %52, 34, !dbg !625
  br i1 %53, label %54, label %58, !dbg !626

; <label>:54:                                     ; preds = %50, %47, %44
  %55 = load %struct.dpkg_error*, %struct.dpkg_error** %9, align 8, !dbg !627
  %56 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0)) #8, !dbg !629
  %57 = call i32 (%struct.dpkg_error*, i8*, ...) @dpkg_put_error(%struct.dpkg_error* %55, i8* %56), !dbg !630
  store i1 false, i1* %5, align 1, !dbg !632
  br label %100, !dbg !632

; <label>:58:                                     ; preds = %50
  %59 = load i64, i64* %13, align 8, !dbg !633
  %60 = icmp slt i64 %59, 0, !dbg !635
  br i1 %60, label %61, label %68, !dbg !636

; <label>:61:                                     ; preds = %58
  %62 = load %struct.pkg_format_node*, %struct.pkg_format_node** %6, align 8, !dbg !637
  %63 = getelementptr inbounds %struct.pkg_format_node, %struct.pkg_format_node* %62, i32 0, i32 3, !dbg !639
  store i32 1, i32* %63, align 8, !dbg !640
  %64 = load i64, i64* %13, align 8, !dbg !641
  %65 = sub nsw i64 0, %64, !dbg !642
  %66 = load %struct.pkg_format_node*, %struct.pkg_format_node** %6, align 8, !dbg !643
  %67 = getelementptr inbounds %struct.pkg_format_node, %struct.pkg_format_node* %66, i32 0, i32 2, !dbg !644
  store i64 %65, i64* %67, align 8, !dbg !645
  br label %72, !dbg !646

; <label>:68:                                     ; preds = %58
  %69 = load i64, i64* %13, align 8, !dbg !647
  %70 = load %struct.pkg_format_node*, %struct.pkg_format_node** %6, align 8, !dbg !648
  %71 = getelementptr inbounds %struct.pkg_format_node, %struct.pkg_format_node* %70, i32 0, i32 2, !dbg !649
  store i64 %69, i64* %71, align 8, !dbg !650
  br label %72

; <label>:72:                                     ; preds = %68, %61
  %73 = load i8*, i8** %11, align 8, !dbg !651
  %74 = load i8*, i8** %7, align 8, !dbg !652
  %75 = ptrtoint i8* %73 to i64, !dbg !653
  %76 = ptrtoint i8* %74 to i64, !dbg !653
  %77 = sub i64 %75, %76, !dbg !653
  %78 = trunc i64 %77 to i32, !dbg !651
  store i32 %78, i32* %10, align 4, !dbg !654
  br label %79, !dbg !655

; <label>:79:                                     ; preds = %72, %4
  %80 = load %struct.pkg_format_node*, %struct.pkg_format_node** %6, align 8, !dbg !656
  %81 = getelementptr inbounds %struct.pkg_format_node, %struct.pkg_format_node* %80, i32 0, i32 1, !dbg !657
  store i32 2, i32* %81, align 8, !dbg !658
  %82 = load i32, i32* %10, align 4, !dbg !659
  %83 = add nsw i32 %82, 1, !dbg !660
  %84 = sext i32 %83 to i64, !dbg !659
  %85 = call i8* @m_malloc(i64 %84), !dbg !661
  %86 = load %struct.pkg_format_node*, %struct.pkg_format_node** %6, align 8, !dbg !662
  %87 = getelementptr inbounds %struct.pkg_format_node, %struct.pkg_format_node* %86, i32 0, i32 4, !dbg !663
  store i8* %85, i8** %87, align 8, !dbg !664
  %88 = load %struct.pkg_format_node*, %struct.pkg_format_node** %6, align 8, !dbg !665
  %89 = getelementptr inbounds %struct.pkg_format_node, %struct.pkg_format_node* %88, i32 0, i32 4, !dbg !666
  %90 = load i8*, i8** %89, align 8, !dbg !666
  %91 = load i8*, i8** %7, align 8, !dbg !667
  %92 = load i32, i32* %10, align 4, !dbg !668
  %93 = sext i32 %92 to i64, !dbg !668
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %90, i8* %91, i64 %93, i32 1, i1 false), !dbg !669
  %94 = load i32, i32* %10, align 4, !dbg !670
  %95 = sext i32 %94 to i64, !dbg !671
  %96 = load %struct.pkg_format_node*, %struct.pkg_format_node** %6, align 8, !dbg !671
  %97 = getelementptr inbounds %struct.pkg_format_node, %struct.pkg_format_node* %96, i32 0, i32 4, !dbg !672
  %98 = load i8*, i8** %97, align 8, !dbg !672
  %99 = getelementptr inbounds i8, i8* %98, i64 %95, !dbg !671
  store i8 0, i8* %99, align 1, !dbg !673
  store i1 true, i1* %5, align 1, !dbg !674
  br label %100, !dbg !674

; <label>:100:                                    ; preds = %79, %54, %37
  %101 = load i1, i1* %5, align 1, !dbg !675
  ret i1 %101, !dbg !675
}

; Function Attrs: nounwind readonly
declare i8* @strchrnul(i8*, i32) #3

; Function Attrs: nounwind uwtable
define internal zeroext i1 @parsestring(%struct.pkg_format_node*, i8*, i8*, %struct.dpkg_error*) #0 !dbg !676 {
  %5 = alloca %struct.pkg_format_node*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dpkg_error*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.pkg_format_node* %0, %struct.pkg_format_node** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.pkg_format_node** %5, metadata !677, metadata !397), !dbg !678
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !679, metadata !397), !dbg !680
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !681, metadata !397), !dbg !682
  store %struct.dpkg_error* %3, %struct.dpkg_error** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.dpkg_error** %8, metadata !683, metadata !397), !dbg !684
  call void @llvm.dbg.declare(metadata i32* %9, metadata !685, metadata !397), !dbg !686
  call void @llvm.dbg.declare(metadata i8** %10, metadata !687, metadata !397), !dbg !688
  %11 = load i8*, i8** %7, align 8, !dbg !689
  %12 = load i8*, i8** %6, align 8, !dbg !690
  %13 = ptrtoint i8* %11 to i64, !dbg !691
  %14 = ptrtoint i8* %12 to i64, !dbg !691
  %15 = sub i64 %13, %14, !dbg !691
  %16 = add nsw i64 %15, 1, !dbg !692
  %17 = trunc i64 %16 to i32, !dbg !689
  store i32 %17, i32* %9, align 4, !dbg !693
  %18 = load %struct.pkg_format_node*, %struct.pkg_format_node** %5, align 8, !dbg !694
  %19 = getelementptr inbounds %struct.pkg_format_node, %struct.pkg_format_node* %18, i32 0, i32 1, !dbg !695
  store i32 1, i32* %19, align 8, !dbg !696
  %20 = load i32, i32* %9, align 4, !dbg !697
  %21 = add nsw i32 %20, 1, !dbg !698
  %22 = sext i32 %21 to i64, !dbg !697
  %23 = call i8* @m_malloc(i64 %22), !dbg !699
  store i8* %23, i8** %10, align 8, !dbg !700
  %24 = load %struct.pkg_format_node*, %struct.pkg_format_node** %5, align 8, !dbg !701
  %25 = getelementptr inbounds %struct.pkg_format_node, %struct.pkg_format_node* %24, i32 0, i32 4, !dbg !702
  store i8* %23, i8** %25, align 8, !dbg !703
  br label %26, !dbg !704

; <label>:26:                                     ; preds = %57, %4
  %27 = load i8*, i8** %6, align 8, !dbg !705
  %28 = load i8*, i8** %7, align 8, !dbg !707
  %29 = icmp ule i8* %27, %28, !dbg !708
  br i1 %29, label %30, label %62, !dbg !709

; <label>:30:                                     ; preds = %26
  %31 = load i8*, i8** %6, align 8, !dbg !710
  %32 = load i8, i8* %31, align 1, !dbg !713
  %33 = sext i8 %32 to i32, !dbg !713
  %34 = icmp eq i32 %33, 92, !dbg !714
  br i1 %34, label %35, label %53, !dbg !715

; <label>:35:                                     ; preds = %30
  %36 = load i8*, i8** %6, align 8, !dbg !716
  %37 = getelementptr inbounds i8, i8* %36, i32 1, !dbg !716
  store i8* %37, i8** %6, align 8, !dbg !716
  %38 = load i8*, i8** %6, align 8, !dbg !718
  %39 = load i8, i8* %38, align 1, !dbg !719
  %40 = sext i8 %39 to i32, !dbg !719
  switch i32 %40, label %48 [
    i32 110, label %41
    i32 116, label %43
    i32 114, label %45
    i32 92, label %47
  ], !dbg !720

; <label>:41:                                     ; preds = %35
  %42 = load i8*, i8** %10, align 8, !dbg !721
  store i8 10, i8* %42, align 1, !dbg !723
  br label %52, !dbg !724

; <label>:43:                                     ; preds = %35
  %44 = load i8*, i8** %10, align 8, !dbg !725
  store i8 9, i8* %44, align 1, !dbg !726
  br label %52, !dbg !727

; <label>:45:                                     ; preds = %35
  %46 = load i8*, i8** %10, align 8, !dbg !728
  store i8 13, i8* %46, align 1, !dbg !729
  br label %52, !dbg !730

; <label>:47:                                     ; preds = %35
  br label %48, !dbg !731

; <label>:48:                                     ; preds = %35, %47
  %49 = load i8*, i8** %6, align 8, !dbg !733
  %50 = load i8, i8* %49, align 1, !dbg !734
  %51 = load i8*, i8** %10, align 8, !dbg !735
  store i8 %50, i8* %51, align 1, !dbg !736
  br label %52, !dbg !737

; <label>:52:                                     ; preds = %48, %45, %43, %41
  br label %57, !dbg !738

; <label>:53:                                     ; preds = %30
  %54 = load i8*, i8** %6, align 8, !dbg !739
  %55 = load i8, i8* %54, align 1, !dbg !740
  %56 = load i8*, i8** %10, align 8, !dbg !741
  store i8 %55, i8* %56, align 1, !dbg !742
  br label %57

; <label>:57:                                     ; preds = %53, %52
  %58 = load i8*, i8** %10, align 8, !dbg !743
  %59 = getelementptr inbounds i8, i8* %58, i32 1, !dbg !743
  store i8* %59, i8** %10, align 8, !dbg !743
  %60 = load i8*, i8** %6, align 8, !dbg !744
  %61 = getelementptr inbounds i8, i8* %60, i32 1, !dbg !744
  store i8* %61, i8** %6, align 8, !dbg !744
  br label %26, !dbg !745, !llvm.loop !747

; <label>:62:                                     ; preds = %26
  %63 = load i8*, i8** %10, align 8, !dbg !748
  store i8 0, i8* %63, align 1, !dbg !749
  ret i1 true, !dbg !750
}

; Function Attrs: nounwind uwtable
define void @pkg_format_show(%struct.pkg_format_node*, %struct.pkginfo*, %struct.pkgbin*) #0 !dbg !751 {
  %4 = alloca %struct.pkg_format_node*, align 8
  %5 = alloca %struct.pkginfo*, align 8
  %6 = alloca %struct.pkgbin*, align 8
  %7 = alloca %struct.pkg_format_node*, align 8
  %8 = alloca %struct.varbuf, align 8
  %9 = alloca %struct.varbuf, align 8
  %10 = alloca %struct.varbuf, align 8
  %11 = alloca i8, align 1
  %12 = alloca [16 x i8], align 16
  %13 = alloca %struct.fieldinfo*, align 8
  %14 = alloca %struct.arbitraryfield*, align 8
  %15 = alloca i64, align 8
  store %struct.pkg_format_node* %0, %struct.pkg_format_node** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.pkg_format_node** %4, metadata !756, metadata !397), !dbg !757
  store %struct.pkginfo* %1, %struct.pkginfo** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %5, metadata !758, metadata !397), !dbg !759
  store %struct.pkgbin* %2, %struct.pkgbin** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %6, metadata !760, metadata !397), !dbg !761
  call void @llvm.dbg.declare(metadata %struct.pkg_format_node** %7, metadata !762, metadata !397), !dbg !763
  call void @llvm.dbg.declare(metadata %struct.varbuf* %8, metadata !764, metadata !397), !dbg !765
  %16 = bitcast %struct.varbuf* %8 to i8*, !dbg !765
  call void @llvm.memset.p0i8.i64(i8* %16, i8 0, i64 24, i32 8, i1 false), !dbg !765
  call void @llvm.dbg.declare(metadata %struct.varbuf* %9, metadata !766, metadata !397), !dbg !767
  %17 = bitcast %struct.varbuf* %9 to i8*, !dbg !767
  call void @llvm.memset.p0i8.i64(i8* %17, i8 0, i64 24, i32 8, i1 false), !dbg !768
  call void @llvm.dbg.declare(metadata %struct.varbuf* %10, metadata !770, metadata !397), !dbg !771
  %18 = bitcast %struct.varbuf* %10 to i8*, !dbg !771
  call void @llvm.memset.p0i8.i64(i8* %18, i8 0, i64 24, i32 8, i1 false), !dbg !772
  %19 = load %struct.pkg_format_node*, %struct.pkg_format_node** %4, align 8, !dbg !774
  store %struct.pkg_format_node* %19, %struct.pkg_format_node** %7, align 8, !dbg !776
  br label %20, !dbg !777

; <label>:20:                                     ; preds = %128, %3
  %21 = load %struct.pkg_format_node*, %struct.pkg_format_node** %7, align 8, !dbg !778
  %22 = icmp ne %struct.pkg_format_node* %21, null, !dbg !781
  br i1 %22, label %23, label %132, !dbg !781

; <label>:23:                                     ; preds = %20
  call void @llvm.dbg.declare(metadata i8* %11, metadata !782, metadata !397), !dbg !784
  call void @llvm.dbg.declare(metadata [16 x i8]* %12, metadata !785, metadata !397), !dbg !789
  store i8 0, i8* %11, align 1, !dbg !790
  %24 = load %struct.pkg_format_node*, %struct.pkg_format_node** %7, align 8, !dbg !791
  %25 = getelementptr inbounds %struct.pkg_format_node, %struct.pkg_format_node* %24, i32 0, i32 2, !dbg !793
  %26 = load i64, i64* %25, align 8, !dbg !793
  %27 = icmp ugt i64 %26, 0, !dbg !794
  br i1 %27, label %28, label %39, !dbg !795

; <label>:28:                                     ; preds = %23
  %29 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i32 0, i32 0, !dbg !796
  %30 = load %struct.pkg_format_node*, %struct.pkg_format_node** %7, align 8, !dbg !797
  %31 = getelementptr inbounds %struct.pkg_format_node, %struct.pkg_format_node* %30, i32 0, i32 3, !dbg !798
  %32 = load i32, i32* %31, align 8, !dbg !798
  %33 = icmp ne i32 %32, 0, !dbg !799
  %34 = select i1 %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0), !dbg !799
  %35 = load %struct.pkg_format_node*, %struct.pkg_format_node** %7, align 8, !dbg !800
  %36 = getelementptr inbounds %struct.pkg_format_node, %struct.pkg_format_node* %35, i32 0, i32 2, !dbg !801
  %37 = load i64, i64* %36, align 8, !dbg !801
  %38 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %29, i64 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* %34, i64 %37) #8, !dbg !802
  br label %42, !dbg !802

; <label>:39:                                     ; preds = %23
  %40 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i32 0, i32 0, !dbg !803
  %41 = call i8* @strcpy(i8* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0)) #8, !dbg !804
  br label %42

; <label>:42:                                     ; preds = %39, %28
  %43 = load %struct.pkg_format_node*, %struct.pkg_format_node** %7, align 8, !dbg !805
  %44 = getelementptr inbounds %struct.pkg_format_node, %struct.pkg_format_node* %43, i32 0, i32 1, !dbg !807
  %45 = load i32, i32* %44, align 8, !dbg !807
  %46 = icmp eq i32 %45, 1, !dbg !808
  br i1 %46, label %47, label %53, !dbg !809

; <label>:47:                                     ; preds = %42
  %48 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i32 0, i32 0, !dbg !810
  %49 = load %struct.pkg_format_node*, %struct.pkg_format_node** %7, align 8, !dbg !812
  %50 = getelementptr inbounds %struct.pkg_format_node, %struct.pkg_format_node* %49, i32 0, i32 4, !dbg !813
  %51 = load i8*, i8** %50, align 8, !dbg !813
  %52 = call i32 (%struct.varbuf*, i8*, ...) @varbuf_printf(%struct.varbuf* %9, i8* %48, i8* %51), !dbg !814
  store i8 1, i8* %11, align 1, !dbg !815
  br label %103, !dbg !816

; <label>:53:                                     ; preds = %42
  %54 = load %struct.pkg_format_node*, %struct.pkg_format_node** %7, align 8, !dbg !817
  %55 = getelementptr inbounds %struct.pkg_format_node, %struct.pkg_format_node* %54, i32 0, i32 1, !dbg !820
  %56 = load i32, i32* %55, align 8, !dbg !820
  %57 = icmp eq i32 %56, 2, !dbg !821
  br i1 %57, label %58, label %102, !dbg !817

; <label>:58:                                     ; preds = %53
  call void @llvm.dbg.declare(metadata %struct.fieldinfo** %13, metadata !822, metadata !397), !dbg !824
  %59 = load %struct.pkg_format_node*, %struct.pkg_format_node** %7, align 8, !dbg !825
  %60 = getelementptr inbounds %struct.pkg_format_node, %struct.pkg_format_node* %59, i32 0, i32 4, !dbg !826
  %61 = load i8*, i8** %60, align 8, !dbg !826
  %62 = call %struct.fieldinfo* @find_field_info(%struct.fieldinfo* getelementptr inbounds ([0 x %struct.fieldinfo], [0 x %struct.fieldinfo]* @fieldinfos, i32 0, i32 0), i8* %61), !dbg !827
  store %struct.fieldinfo* %62, %struct.fieldinfo** %13, align 8, !dbg !828
  %63 = load %struct.fieldinfo*, %struct.fieldinfo** %13, align 8, !dbg !829
  %64 = icmp eq %struct.fieldinfo* %63, null, !dbg !831
  br i1 %64, label %65, label %70, !dbg !832

; <label>:65:                                     ; preds = %58
  %66 = load %struct.pkg_format_node*, %struct.pkg_format_node** %7, align 8, !dbg !833
  %67 = getelementptr inbounds %struct.pkg_format_node, %struct.pkg_format_node* %66, i32 0, i32 4, !dbg !834
  %68 = load i8*, i8** %67, align 8, !dbg !834
  %69 = call %struct.fieldinfo* @find_field_info(%struct.fieldinfo* getelementptr inbounds ([13 x %struct.fieldinfo], [13 x %struct.fieldinfo]* @virtinfos, i32 0, i32 0), i8* %68), !dbg !835
  store %struct.fieldinfo* %69, %struct.fieldinfo** %13, align 8, !dbg !836
  br label %70, !dbg !837

; <label>:70:                                     ; preds = %65, %58
  %71 = load %struct.fieldinfo*, %struct.fieldinfo** %13, align 8, !dbg !838
  %72 = icmp ne %struct.fieldinfo* %71, null, !dbg !838
  br i1 %72, label %73, label %84, !dbg !840

; <label>:73:                                     ; preds = %70
  %74 = load %struct.fieldinfo*, %struct.fieldinfo** %13, align 8, !dbg !841
  %75 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %74, i32 0, i32 3, !dbg !843
  %76 = load void (%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*)*, void (%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*)** %75, align 8, !dbg !843
  %77 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !844
  %78 = load %struct.pkgbin*, %struct.pkgbin** %6, align 8, !dbg !845
  %79 = load %struct.fieldinfo*, %struct.fieldinfo** %13, align 8, !dbg !846
  call void %76(%struct.varbuf* %10, %struct.pkginfo* %77, %struct.pkgbin* %78, i32 0, %struct.fieldinfo* %79), !dbg !841
  call void @varbuf_end_str(%struct.varbuf* %10), !dbg !847
  %80 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i32 0, i32 0, !dbg !848
  %81 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %10, i32 0, i32 2, !dbg !849
  %82 = load i8*, i8** %81, align 8, !dbg !849
  %83 = call i32 (%struct.varbuf*, i8*, ...) @varbuf_printf(%struct.varbuf* %9, i8* %80, i8* %82), !dbg !850
  call void @varbuf_reset(%struct.varbuf* %10), !dbg !851
  store i8 1, i8* %11, align 1, !dbg !852
  br label %101, !dbg !853

; <label>:84:                                     ; preds = %70
  call void @llvm.dbg.declare(metadata %struct.arbitraryfield** %14, metadata !854, metadata !397), !dbg !858
  %85 = load %struct.pkgbin*, %struct.pkgbin** %6, align 8, !dbg !859
  %86 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %85, i32 0, i32 13, !dbg !860
  %87 = load %struct.arbitraryfield*, %struct.arbitraryfield** %86, align 8, !dbg !860
  %88 = load %struct.pkg_format_node*, %struct.pkg_format_node** %7, align 8, !dbg !861
  %89 = getelementptr inbounds %struct.pkg_format_node, %struct.pkg_format_node* %88, i32 0, i32 4, !dbg !862
  %90 = load i8*, i8** %89, align 8, !dbg !862
  %91 = call %struct.arbitraryfield* @find_arbfield_info(%struct.arbitraryfield* %87, i8* %90), !dbg !863
  store %struct.arbitraryfield* %91, %struct.arbitraryfield** %14, align 8, !dbg !864
  %92 = load %struct.arbitraryfield*, %struct.arbitraryfield** %14, align 8, !dbg !865
  %93 = icmp ne %struct.arbitraryfield* %92, null, !dbg !865
  br i1 %93, label %94, label %100, !dbg !867

; <label>:94:                                     ; preds = %84
  %95 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i32 0, i32 0, !dbg !868
  %96 = load %struct.arbitraryfield*, %struct.arbitraryfield** %14, align 8, !dbg !870
  %97 = getelementptr inbounds %struct.arbitraryfield, %struct.arbitraryfield* %96, i32 0, i32 2, !dbg !871
  %98 = load i8*, i8** %97, align 8, !dbg !871
  %99 = call i32 (%struct.varbuf*, i8*, ...) @varbuf_printf(%struct.varbuf* %9, i8* %95, i8* %98), !dbg !872
  store i8 1, i8* %11, align 1, !dbg !873
  br label %100, !dbg !874

; <label>:100:                                    ; preds = %94, %84
  br label %101

; <label>:101:                                    ; preds = %100, %73
  br label %102, !dbg !875

; <label>:102:                                    ; preds = %101, %53
  br label %103

; <label>:103:                                    ; preds = %102, %47
  %104 = load i8, i8* %11, align 1, !dbg !876
  %105 = trunc i8 %104 to i1, !dbg !876
  br i1 %105, label %106, label %127, !dbg !878

; <label>:106:                                    ; preds = %103
  call void @llvm.dbg.declare(metadata i64* %15, metadata !879, metadata !397), !dbg !881
  %107 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %9, i32 0, i32 0, !dbg !882
  %108 = load i64, i64* %107, align 8, !dbg !882
  store i64 %108, i64* %15, align 8, !dbg !881
  %109 = load %struct.pkg_format_node*, %struct.pkg_format_node** %7, align 8, !dbg !883
  %110 = getelementptr inbounds %struct.pkg_format_node, %struct.pkg_format_node* %109, i32 0, i32 2, !dbg !885
  %111 = load i64, i64* %110, align 8, !dbg !885
  %112 = icmp ugt i64 %111, 0, !dbg !886
  br i1 %112, label %113, label %123, !dbg !887

; <label>:113:                                    ; preds = %106
  %114 = load i64, i64* %15, align 8, !dbg !888
  %115 = load %struct.pkg_format_node*, %struct.pkg_format_node** %7, align 8, !dbg !890
  %116 = getelementptr inbounds %struct.pkg_format_node, %struct.pkg_format_node* %115, i32 0, i32 2, !dbg !891
  %117 = load i64, i64* %116, align 8, !dbg !891
  %118 = icmp ugt i64 %114, %117, !dbg !892
  br i1 %118, label %119, label %123, !dbg !893

; <label>:119:                                    ; preds = %113
  %120 = load %struct.pkg_format_node*, %struct.pkg_format_node** %7, align 8, !dbg !894
  %121 = getelementptr inbounds %struct.pkg_format_node, %struct.pkg_format_node* %120, i32 0, i32 2, !dbg !895
  %122 = load i64, i64* %121, align 8, !dbg !895
  store i64 %122, i64* %15, align 8, !dbg !896
  br label %123, !dbg !897

; <label>:123:                                    ; preds = %119, %113, %106
  %124 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %9, i32 0, i32 2, !dbg !898
  %125 = load i8*, i8** %124, align 8, !dbg !898
  %126 = load i64, i64* %15, align 8, !dbg !899
  call void @varbuf_add_buf(%struct.varbuf* %8, i8* %125, i64 %126), !dbg !900
  br label %127, !dbg !901

; <label>:127:                                    ; preds = %123, %103
  call void @varbuf_reset(%struct.varbuf* %9), !dbg !902
  br label %128, !dbg !903

; <label>:128:                                    ; preds = %127
  %129 = load %struct.pkg_format_node*, %struct.pkg_format_node** %7, align 8, !dbg !904
  %130 = getelementptr inbounds %struct.pkg_format_node, %struct.pkg_format_node* %129, i32 0, i32 0, !dbg !906
  %131 = load %struct.pkg_format_node*, %struct.pkg_format_node** %130, align 8, !dbg !906
  store %struct.pkg_format_node* %131, %struct.pkg_format_node** %7, align 8, !dbg !907
  br label %20, !dbg !908, !llvm.loop !909

; <label>:132:                                    ; preds = %20
  %133 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %8, i32 0, i32 2, !dbg !911
  %134 = load i8*, i8** %133, align 8, !dbg !911
  %135 = icmp ne i8* %134, null, !dbg !913
  br i1 %135, label %136, label %141, !dbg !914

; <label>:136:                                    ; preds = %132
  call void @varbuf_end_str(%struct.varbuf* %8), !dbg !915
  %137 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %8, i32 0, i32 2, !dbg !917
  %138 = load i8*, i8** %137, align 8, !dbg !917
  %139 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !918
  %140 = call i32 @fputs(i8* %138, %struct._IO_FILE* %139), !dbg !919
  br label %141, !dbg !920

; <label>:141:                                    ; preds = %136, %132
  call void @varbuf_destroy(%struct.varbuf* %10), !dbg !921
  call void @varbuf_destroy(%struct.varbuf* %9), !dbg !922
  call void @varbuf_destroy(%struct.varbuf* %8), !dbg !923
  ret void, !dbg !924
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #5

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

declare i32 @varbuf_printf(%struct.varbuf*, i8*, ...) #4

declare %struct.fieldinfo* @find_field_info(%struct.fieldinfo*, i8*) #4

declare void @varbuf_end_str(%struct.varbuf*) #4

declare void @varbuf_reset(%struct.varbuf*) #4

declare %struct.arbitraryfield* @find_arbfield_info(%struct.arbitraryfield*, i8*) #4

declare void @varbuf_add_buf(%struct.varbuf*, i8*, i64) #4

declare i32 @fputs(i8*, %struct._IO_FILE*) #4

declare void @varbuf_destroy(%struct.varbuf*) #4

declare i8* @m_malloc(i64) #4

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind uwtable
define internal void @virt_package(%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*) #0 !dbg !925 {
  %6 = alloca %struct.varbuf*, align 8
  %7 = alloca %struct.pkginfo*, align 8
  %8 = alloca %struct.pkgbin*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fieldinfo*, align 8
  store %struct.varbuf* %0, %struct.varbuf** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %6, metadata !926, metadata !397), !dbg !927
  store %struct.pkginfo* %1, %struct.pkginfo** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %7, metadata !928, metadata !397), !dbg !929
  store %struct.pkgbin* %2, %struct.pkgbin** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %8, metadata !930, metadata !397), !dbg !931
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !932, metadata !397), !dbg !933
  store %struct.fieldinfo* %4, %struct.fieldinfo** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.fieldinfo** %10, metadata !934, metadata !397), !dbg !935
  %11 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !936
  %12 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !937
  %13 = load %struct.pkgbin*, %struct.pkgbin** %8, align 8, !dbg !938
  call void @varbuf_add_pkgbin_name(%struct.varbuf* %11, %struct.pkginfo* %12, %struct.pkgbin* %13, i32 1), !dbg !939
  ret void, !dbg !940
}

; Function Attrs: nounwind uwtable
define internal void @virt_synopsis(%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*) #0 !dbg !941 {
  %6 = alloca %struct.varbuf*, align 8
  %7 = alloca %struct.pkginfo*, align 8
  %8 = alloca %struct.pkgbin*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fieldinfo*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.varbuf* %0, %struct.varbuf** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %6, metadata !942, metadata !397), !dbg !943
  store %struct.pkginfo* %1, %struct.pkginfo** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %7, metadata !944, metadata !397), !dbg !945
  store %struct.pkgbin* %2, %struct.pkgbin** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %8, metadata !946, metadata !397), !dbg !947
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !948, metadata !397), !dbg !949
  store %struct.fieldinfo* %4, %struct.fieldinfo** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.fieldinfo** %10, metadata !950, metadata !397), !dbg !951
  call void @llvm.dbg.declare(metadata i8** %11, metadata !952, metadata !397), !dbg !953
  call void @llvm.dbg.declare(metadata i32* %12, metadata !954, metadata !397), !dbg !955
  %13 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !956
  %14 = load %struct.pkgbin*, %struct.pkgbin** %8, align 8, !dbg !957
  %15 = call i8* @pkgbin_synopsis(%struct.pkginfo* %13, %struct.pkgbin* %14, i32* %12), !dbg !958
  store i8* %15, i8** %11, align 8, !dbg !959
  %16 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !960
  %17 = load i8*, i8** %11, align 8, !dbg !961
  %18 = load i32, i32* %12, align 4, !dbg !962
  %19 = sext i32 %18 to i64, !dbg !962
  call void @varbuf_add_buf(%struct.varbuf* %16, i8* %17, i64 %19), !dbg !963
  ret void, !dbg !964
}

; Function Attrs: nounwind uwtable
define internal void @virt_status_abbrev(%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*) #0 !dbg !965 {
  %6 = alloca %struct.varbuf*, align 8
  %7 = alloca %struct.pkginfo*, align 8
  %8 = alloca %struct.pkgbin*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fieldinfo*, align 8
  store %struct.varbuf* %0, %struct.varbuf** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %6, metadata !966, metadata !397), !dbg !967
  store %struct.pkginfo* %1, %struct.pkginfo** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %7, metadata !968, metadata !397), !dbg !969
  store %struct.pkgbin* %2, %struct.pkgbin** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %8, metadata !970, metadata !397), !dbg !971
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !972, metadata !397), !dbg !973
  store %struct.fieldinfo* %4, %struct.fieldinfo** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.fieldinfo** %10, metadata !974, metadata !397), !dbg !975
  %11 = load %struct.pkgbin*, %struct.pkgbin** %8, align 8, !dbg !976
  %12 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !978
  %13 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %12, i32 0, i32 9, !dbg !979
  %14 = icmp ne %struct.pkgbin* %11, %13, !dbg !980
  br i1 %14, label %15, label %16, !dbg !981

; <label>:15:                                     ; preds = %5
  br label %26, !dbg !982

; <label>:16:                                     ; preds = %5
  %17 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !983
  %18 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !984
  %19 = call i32 @pkg_abbrev_want(%struct.pkginfo* %18), !dbg !985
  call void @varbuf_add_char(%struct.varbuf* %17, i32 %19), !dbg !986
  %20 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !988
  %21 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !989
  %22 = call i32 @pkg_abbrev_status(%struct.pkginfo* %21), !dbg !990
  call void @varbuf_add_char(%struct.varbuf* %20, i32 %22), !dbg !991
  %23 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !992
  %24 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !993
  %25 = call i32 @pkg_abbrev_eflag(%struct.pkginfo* %24), !dbg !994
  call void @varbuf_add_char(%struct.varbuf* %23, i32 %25), !dbg !995
  br label %26, !dbg !996

; <label>:26:                                     ; preds = %16, %15
  ret void, !dbg !997
}

; Function Attrs: nounwind uwtable
define internal void @virt_status_want(%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*) #0 !dbg !998 {
  %6 = alloca %struct.varbuf*, align 8
  %7 = alloca %struct.pkginfo*, align 8
  %8 = alloca %struct.pkgbin*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fieldinfo*, align 8
  store %struct.varbuf* %0, %struct.varbuf** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %6, metadata !999, metadata !397), !dbg !1000
  store %struct.pkginfo* %1, %struct.pkginfo** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %7, metadata !1001, metadata !397), !dbg !1002
  store %struct.pkgbin* %2, %struct.pkgbin** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %8, metadata !1003, metadata !397), !dbg !1004
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1005, metadata !397), !dbg !1006
  store %struct.fieldinfo* %4, %struct.fieldinfo** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.fieldinfo** %10, metadata !1007, metadata !397), !dbg !1008
  %11 = load %struct.pkgbin*, %struct.pkgbin** %8, align 8, !dbg !1009
  %12 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1011
  %13 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %12, i32 0, i32 9, !dbg !1012
  %14 = icmp ne %struct.pkgbin* %11, %13, !dbg !1013
  br i1 %14, label %15, label %16, !dbg !1014

; <label>:15:                                     ; preds = %5
  br label %23, !dbg !1015

; <label>:16:                                     ; preds = %5
  %17 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1016
  %18 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1017
  %19 = call i8* @pkg_want_name(%struct.pkginfo* %18), !dbg !1018
  %20 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1019
  %21 = call i8* @pkg_want_name(%struct.pkginfo* %20), !dbg !1020
  %22 = call i64 @strlen(i8* %21) #9, !dbg !1022
  call void @varbuf_add_buf(%struct.varbuf* %17, i8* %19, i64 %22), !dbg !1024
  br label %23, !dbg !1026

; <label>:23:                                     ; preds = %16, %15
  ret void, !dbg !1027
}

; Function Attrs: nounwind uwtable
define internal void @virt_status_status(%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*) #0 !dbg !1028 {
  %6 = alloca %struct.varbuf*, align 8
  %7 = alloca %struct.pkginfo*, align 8
  %8 = alloca %struct.pkgbin*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fieldinfo*, align 8
  store %struct.varbuf* %0, %struct.varbuf** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %6, metadata !1029, metadata !397), !dbg !1030
  store %struct.pkginfo* %1, %struct.pkginfo** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %7, metadata !1031, metadata !397), !dbg !1032
  store %struct.pkgbin* %2, %struct.pkgbin** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %8, metadata !1033, metadata !397), !dbg !1034
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1035, metadata !397), !dbg !1036
  store %struct.fieldinfo* %4, %struct.fieldinfo** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.fieldinfo** %10, metadata !1037, metadata !397), !dbg !1038
  %11 = load %struct.pkgbin*, %struct.pkgbin** %8, align 8, !dbg !1039
  %12 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1041
  %13 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %12, i32 0, i32 9, !dbg !1042
  %14 = icmp ne %struct.pkgbin* %11, %13, !dbg !1043
  br i1 %14, label %15, label %16, !dbg !1044

; <label>:15:                                     ; preds = %5
  br label %23, !dbg !1045

; <label>:16:                                     ; preds = %5
  %17 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1046
  %18 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1047
  %19 = call i8* @pkg_status_name(%struct.pkginfo* %18), !dbg !1048
  %20 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1049
  %21 = call i8* @pkg_status_name(%struct.pkginfo* %20), !dbg !1050
  %22 = call i64 @strlen(i8* %21) #9, !dbg !1052
  call void @varbuf_add_buf(%struct.varbuf* %17, i8* %19, i64 %22), !dbg !1054
  br label %23, !dbg !1056

; <label>:23:                                     ; preds = %16, %15
  ret void, !dbg !1057
}

; Function Attrs: nounwind uwtable
define internal void @virt_status_eflag(%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*) #0 !dbg !1058 {
  %6 = alloca %struct.varbuf*, align 8
  %7 = alloca %struct.pkginfo*, align 8
  %8 = alloca %struct.pkgbin*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fieldinfo*, align 8
  store %struct.varbuf* %0, %struct.varbuf** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %6, metadata !1059, metadata !397), !dbg !1060
  store %struct.pkginfo* %1, %struct.pkginfo** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %7, metadata !1061, metadata !397), !dbg !1062
  store %struct.pkgbin* %2, %struct.pkgbin** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %8, metadata !1063, metadata !397), !dbg !1064
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1065, metadata !397), !dbg !1066
  store %struct.fieldinfo* %4, %struct.fieldinfo** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.fieldinfo** %10, metadata !1067, metadata !397), !dbg !1068
  %11 = load %struct.pkgbin*, %struct.pkgbin** %8, align 8, !dbg !1069
  %12 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1071
  %13 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %12, i32 0, i32 9, !dbg !1072
  %14 = icmp ne %struct.pkgbin* %11, %13, !dbg !1073
  br i1 %14, label %15, label %16, !dbg !1074

; <label>:15:                                     ; preds = %5
  br label %23, !dbg !1075

; <label>:16:                                     ; preds = %5
  %17 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1076
  %18 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1077
  %19 = call i8* @pkg_eflag_name(%struct.pkginfo* %18), !dbg !1078
  %20 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1079
  %21 = call i8* @pkg_eflag_name(%struct.pkginfo* %20), !dbg !1080
  %22 = call i64 @strlen(i8* %21) #9, !dbg !1082
  call void @varbuf_add_buf(%struct.varbuf* %17, i8* %19, i64 %22), !dbg !1084
  br label %23, !dbg !1086

; <label>:23:                                     ; preds = %16, %15
  ret void, !dbg !1087
}

; Function Attrs: nounwind uwtable
define internal void @virt_fsys_files(%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*) #0 !dbg !1088 {
  %6 = alloca %struct.varbuf*, align 8
  %7 = alloca %struct.pkginfo*, align 8
  %8 = alloca %struct.pkgbin*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fieldinfo*, align 8
  %11 = alloca %struct.fsys_namenode_list*, align 8
  store %struct.varbuf* %0, %struct.varbuf** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %6, metadata !1089, metadata !397), !dbg !1090
  store %struct.pkginfo* %1, %struct.pkginfo** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %7, metadata !1091, metadata !397), !dbg !1092
  store %struct.pkgbin* %2, %struct.pkgbin** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %8, metadata !1093, metadata !397), !dbg !1094
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1095, metadata !397), !dbg !1096
  store %struct.fieldinfo* %4, %struct.fieldinfo** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.fieldinfo** %10, metadata !1097, metadata !397), !dbg !1098
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode_list** %11, metadata !1099, metadata !397), !dbg !1100
  %12 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1101
  call void @ensure_packagefiles_available(%struct.pkginfo* %12), !dbg !1102
  %13 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1103
  %14 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %13, i32 0, i32 18, !dbg !1105
  %15 = load i8, i8* %14, align 8, !dbg !1105
  %16 = trunc i8 %15 to i1, !dbg !1105
  br i1 %16, label %18, label %17, !dbg !1106

; <label>:17:                                     ; preds = %5
  br label %44, !dbg !1107

; <label>:18:                                     ; preds = %5
  %19 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1108
  %20 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %19, i32 0, i32 16, !dbg !1110
  %21 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %20, align 8, !dbg !1110
  store %struct.fsys_namenode_list* %21, %struct.fsys_namenode_list** %11, align 8, !dbg !1111
  br label %22, !dbg !1112

; <label>:22:                                     ; preds = %40, %18
  %23 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %11, align 8, !dbg !1113
  %24 = icmp ne %struct.fsys_namenode_list* %23, null, !dbg !1116
  br i1 %24, label %25, label %44, !dbg !1116

; <label>:25:                                     ; preds = %22
  %26 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1117
  call void @varbuf_add_char(%struct.varbuf* %26, i32 32), !dbg !1119
  %27 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1120
  %28 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %11, align 8, !dbg !1121
  %29 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %28, i32 0, i32 1, !dbg !1122
  %30 = load %struct.fsys_namenode*, %struct.fsys_namenode** %29, align 8, !dbg !1122
  %31 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %30, i32 0, i32 1, !dbg !1123
  %32 = load i8*, i8** %31, align 8, !dbg !1123
  %33 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %11, align 8, !dbg !1124
  %34 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %33, i32 0, i32 1, !dbg !1125
  %35 = load %struct.fsys_namenode*, %struct.fsys_namenode** %34, align 8, !dbg !1125
  %36 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %35, i32 0, i32 1, !dbg !1126
  %37 = load i8*, i8** %36, align 8, !dbg !1126
  %38 = call i64 @strlen(i8* %37) #9, !dbg !1127
  call void @varbuf_add_buf(%struct.varbuf* %27, i8* %32, i64 %38), !dbg !1128
  %39 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1130
  call void @varbuf_add_char(%struct.varbuf* %39, i32 10), !dbg !1131
  br label %40, !dbg !1132

; <label>:40:                                     ; preds = %25
  %41 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %11, align 8, !dbg !1133
  %42 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %41, i32 0, i32 0, !dbg !1135
  %43 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %42, align 8, !dbg !1135
  store %struct.fsys_namenode_list* %43, %struct.fsys_namenode_list** %11, align 8, !dbg !1136
  br label %22, !dbg !1137, !llvm.loop !1138

; <label>:44:                                     ; preds = %17, %22
  ret void, !dbg !1140
}

; Function Attrs: nounwind uwtable
define internal void @virt_fsys_last_modified(%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*) #0 !dbg !1141 {
  %6 = alloca %struct.varbuf*, align 8
  %7 = alloca %struct.pkginfo*, align 8
  %8 = alloca %struct.pkgbin*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fieldinfo*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.stat, align 8
  store %struct.varbuf* %0, %struct.varbuf** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %6, metadata !1142, metadata !397), !dbg !1143
  store %struct.pkginfo* %1, %struct.pkginfo** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %7, metadata !1144, metadata !397), !dbg !1145
  store %struct.pkgbin* %2, %struct.pkgbin** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %8, metadata !1146, metadata !397), !dbg !1147
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1148, metadata !397), !dbg !1149
  store %struct.fieldinfo* %4, %struct.fieldinfo** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.fieldinfo** %10, metadata !1150, metadata !397), !dbg !1151
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1152, metadata !397), !dbg !1153
  call void @llvm.dbg.declare(metadata %struct.stat* %12, metadata !1154, metadata !397), !dbg !1186
  %13 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1187
  %14 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %13, i32 0, i32 4, !dbg !1189
  %15 = load i32, i32* %14, align 8, !dbg !1189
  %16 = icmp eq i32 %15, 0, !dbg !1190
  br i1 %16, label %17, label %18, !dbg !1191

; <label>:17:                                     ; preds = %5
  br label %41, !dbg !1192

; <label>:18:                                     ; preds = %5
  %19 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1193
  %20 = load %struct.pkgbin*, %struct.pkgbin** %8, align 8, !dbg !1194
  %21 = call i8* @pkg_infodb_get_file(%struct.pkginfo* %19, %struct.pkgbin* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0)), !dbg !1195
  store i8* %21, i8** %11, align 8, !dbg !1196
  %22 = load i8*, i8** %11, align 8, !dbg !1197
  %23 = call i32 @stat(i8* %22, %struct.stat* %12) #8, !dbg !1199
  %24 = icmp slt i32 %23, 0, !dbg !1200
  br i1 %24, label %25, label %35, !dbg !1201

; <label>:25:                                     ; preds = %18
  %26 = call i32* @__errno_location() #1, !dbg !1202
  %27 = load i32, i32* %26, align 4, !dbg !1205
  %28 = icmp eq i32 %27, 2, !dbg !1206
  br i1 %28, label %29, label %30, !dbg !1207

; <label>:29:                                     ; preds = %25
  br label %41, !dbg !1208

; <label>:30:                                     ; preds = %25
  %31 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.22, i32 0, i32 0)) #8, !dbg !1209
  %32 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1210
  %33 = load %struct.pkgbin*, %struct.pkgbin** %8, align 8, !dbg !1211
  %34 = call i8* @pkgbin_name_const(%struct.pkginfo* %32, %struct.pkgbin* %33, i32 1), !dbg !1212
  call void (i8*, ...) @ohshite(i8* %31, i8* %34) #10, !dbg !1213
  unreachable, !dbg !1215

; <label>:35:                                     ; preds = %18
  %36 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1216
  %37 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 12, !dbg !1217
  %38 = getelementptr inbounds %struct.timespec, %struct.timespec* %37, i32 0, i32 0, !dbg !1218
  %39 = load i64, i64* %38, align 8, !dbg !1218
  %40 = call i32 (%struct.varbuf*, i8*, ...) @varbuf_printf(%struct.varbuf* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), i64 %39), !dbg !1219
  br label %41, !dbg !1220

; <label>:41:                                     ; preds = %35, %29, %17
  ret void, !dbg !1221
}

; Function Attrs: nounwind uwtable
define internal void @virt_source_package(%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*) #0 !dbg !1223 {
  %6 = alloca %struct.varbuf*, align 8
  %7 = alloca %struct.pkginfo*, align 8
  %8 = alloca %struct.pkgbin*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fieldinfo*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.varbuf* %0, %struct.varbuf** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %6, metadata !1224, metadata !397), !dbg !1225
  store %struct.pkginfo* %1, %struct.pkginfo** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %7, metadata !1226, metadata !397), !dbg !1227
  store %struct.pkgbin* %2, %struct.pkgbin** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %8, metadata !1228, metadata !397), !dbg !1229
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1230, metadata !397), !dbg !1231
  store %struct.fieldinfo* %4, %struct.fieldinfo** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.fieldinfo** %10, metadata !1232, metadata !397), !dbg !1233
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1234, metadata !397), !dbg !1235
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1236, metadata !397), !dbg !1237
  %13 = load %struct.pkgbin*, %struct.pkgbin** %8, align 8, !dbg !1238
  %14 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %13, i32 0, i32 7, !dbg !1239
  %15 = load i8*, i8** %14, align 8, !dbg !1239
  store i8* %15, i8** %11, align 8, !dbg !1240
  %16 = load i8*, i8** %11, align 8, !dbg !1241
  %17 = icmp eq i8* %16, null, !dbg !1243
  br i1 %17, label %18, label %24, !dbg !1244

; <label>:18:                                     ; preds = %5
  %19 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1245
  %20 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %19, i32 0, i32 0, !dbg !1246
  %21 = load %struct.pkgset*, %struct.pkgset** %20, align 8, !dbg !1246
  %22 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %21, i32 0, i32 1, !dbg !1247
  %23 = load i8*, i8** %22, align 8, !dbg !1247
  store i8* %23, i8** %11, align 8, !dbg !1248
  br label %24, !dbg !1249

; <label>:24:                                     ; preds = %18, %5
  %25 = load i8*, i8** %11, align 8, !dbg !1250
  %26 = call i64 @strcspn(i8* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0)) #9, !dbg !1251
  store i64 %26, i64* %12, align 8, !dbg !1252
  %27 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1253
  %28 = load i8*, i8** %11, align 8, !dbg !1254
  %29 = load i64, i64* %12, align 8, !dbg !1255
  call void @varbuf_add_buf(%struct.varbuf* %27, i8* %28, i64 %29), !dbg !1256
  ret void, !dbg !1257
}

; Function Attrs: nounwind uwtable
define internal void @virt_source_version(%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*) #0 !dbg !1258 {
  %6 = alloca %struct.varbuf*, align 8
  %7 = alloca %struct.pkginfo*, align 8
  %8 = alloca %struct.pkgbin*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fieldinfo*, align 8
  store %struct.varbuf* %0, %struct.varbuf** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %6, metadata !1259, metadata !397), !dbg !1260
  store %struct.pkginfo* %1, %struct.pkginfo** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %7, metadata !1261, metadata !397), !dbg !1262
  store %struct.pkgbin* %2, %struct.pkgbin** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %8, metadata !1263, metadata !397), !dbg !1264
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1265, metadata !397), !dbg !1266
  store %struct.fieldinfo* %4, %struct.fieldinfo** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.fieldinfo** %10, metadata !1267, metadata !397), !dbg !1268
  %11 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1269
  %12 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1270
  %13 = load %struct.pkgbin*, %struct.pkgbin** %8, align 8, !dbg !1271
  call void @varbuf_add_source_version(%struct.varbuf* %11, %struct.pkginfo* %12, %struct.pkgbin* %13), !dbg !1272
  ret void, !dbg !1273
}

; Function Attrs: nounwind uwtable
define internal void @virt_source_upstream_version(%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*) #0 !dbg !1274 {
  %6 = alloca %struct.varbuf*, align 8
  %7 = alloca %struct.pkginfo*, align 8
  %8 = alloca %struct.pkgbin*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fieldinfo*, align 8
  %11 = alloca %struct.dpkg_version, align 8
  store %struct.varbuf* %0, %struct.varbuf** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %6, metadata !1275, metadata !397), !dbg !1276
  store %struct.pkginfo* %1, %struct.pkginfo** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %7, metadata !1277, metadata !397), !dbg !1278
  store %struct.pkgbin* %2, %struct.pkgbin** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %8, metadata !1279, metadata !397), !dbg !1280
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1281, metadata !397), !dbg !1282
  store %struct.fieldinfo* %4, %struct.fieldinfo** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.fieldinfo** %10, metadata !1283, metadata !397), !dbg !1284
  call void @llvm.dbg.declare(metadata %struct.dpkg_version* %11, metadata !1285, metadata !397), !dbg !1286
  %12 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1287
  %13 = load %struct.pkgbin*, %struct.pkgbin** %8, align 8, !dbg !1288
  call void @pkg_source_version(%struct.dpkg_version* %11, %struct.pkginfo* %12, %struct.pkgbin* %13), !dbg !1289
  %14 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1290
  %15 = getelementptr inbounds %struct.dpkg_version, %struct.dpkg_version* %11, i32 0, i32 1, !dbg !1291
  %16 = load i8*, i8** %15, align 8, !dbg !1291
  %17 = getelementptr inbounds %struct.dpkg_version, %struct.dpkg_version* %11, i32 0, i32 1, !dbg !1292
  %18 = load i8*, i8** %17, align 8, !dbg !1292
  %19 = call i64 @strlen(i8* %18) #9, !dbg !1293
  call void @varbuf_add_buf(%struct.varbuf* %14, i8* %16, i64 %19), !dbg !1294
  %20 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !1296
  call void @varbuf_end_str(%struct.varbuf* %20), !dbg !1297
  ret void, !dbg !1298
}

declare void @varbuf_add_pkgbin_name(%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32) #4

declare i8* @pkgbin_synopsis(%struct.pkginfo*, %struct.pkgbin*, i32*) #4

declare void @varbuf_add_char(%struct.varbuf*, i32) #4

declare i32 @pkg_abbrev_want(%struct.pkginfo*) #4

declare i32 @pkg_abbrev_status(%struct.pkginfo*) #4

declare i32 @pkg_abbrev_eflag(%struct.pkginfo*) #4

declare i8* @pkg_want_name(%struct.pkginfo*) #4

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i8* @pkg_status_name(%struct.pkginfo*) #4

declare i8* @pkg_eflag_name(%struct.pkginfo*) #4

declare void @ensure_packagefiles_available(%struct.pkginfo*) #4

declare i8* @pkg_infodb_get_file(%struct.pkginfo*, %struct.pkgbin*, i8*) #4

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #2

; Function Attrs: noreturn
declare void @ohshite(i8*, ...) #7

declare i8* @pkgbin_name_const(%struct.pkginfo*, %struct.pkgbin*, i32) #4

; Function Attrs: nounwind readonly
declare i64 @strcspn(i8*, i8*) #3

declare void @varbuf_add_source_version(%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*) #4

declare void @pkg_source_version(%struct.dpkg_version*, %struct.pkginfo*, %struct.pkgbin*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!381, !382}
!llvm.ident = !{!383}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !131, globals: !328)
!1 = !DIFile(filename: "[inter]lib--dpkg--pkg-format.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{!3, !9, !15, !27, !38, !47, !55, !59, !69, !79, !85, !98, !105, !122, !125}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkg_format_type", file: !4, line: 45, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "pkg-format.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "PKG_FORMAT_INVALID", value: 0)
!7 = !DIEnumerator(name: "PKG_FORMAT_STRING", value: 1)
!8 = !DIEnumerator(name: "PKG_FORMAT_FIELD", value: 2)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_msg_type", file: !10, line: 36, size: 32, align: 32, elements: !11)
!10 = !DIFile(filename: "../../lib/dpkg/error.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!11 = !{!12, !13, !14}
!12 = !DIEnumerator(name: "DPKG_MSG_NONE", value: 0)
!13 = !DIEnumerator(name: "DPKG_MSG_WARN", value: 1)
!14 = !DIEnumerator(name: "DPKG_MSG_ERROR", value: 2)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "deptype", file: !16, line: 44, size: 32, align: 32, elements: !17)
!16 = !DIFile(filename: "../../lib/dpkg/dpkg-db.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!17 = !{!18, !19, !20, !21, !22, !23, !24, !25, !26}
!18 = !DIEnumerator(name: "dep_suggests", value: 0)
!19 = !DIEnumerator(name: "dep_recommends", value: 1)
!20 = !DIEnumerator(name: "dep_depends", value: 2)
!21 = !DIEnumerator(name: "dep_predepends", value: 3)
!22 = !DIEnumerator(name: "dep_breaks", value: 4)
!23 = !DIEnumerator(name: "dep_conflicts", value: 5)
!24 = !DIEnumerator(name: "dep_provides", value: 6)
!25 = !DIEnumerator(name: "dep_replaces", value: 7)
!26 = !DIEnumerator(name: "dep_enhances", value: 8)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_arch_type", file: !28, line: 37, size: 32, align: 32, elements: !29)
!28 = !DIFile(filename: "../../lib/dpkg/arch.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!29 = !{!30, !31, !32, !33, !34, !35, !36, !37}
!30 = !DIEnumerator(name: "DPKG_ARCH_NONE", value: 0)
!31 = !DIEnumerator(name: "DPKG_ARCH_EMPTY", value: 1)
!32 = !DIEnumerator(name: "DPKG_ARCH_ILLEGAL", value: 2)
!33 = !DIEnumerator(name: "DPKG_ARCH_WILDCARD", value: 3)
!34 = !DIEnumerator(name: "DPKG_ARCH_ALL", value: 4)
!35 = !DIEnumerator(name: "DPKG_ARCH_NATIVE", value: 5)
!36 = !DIEnumerator(name: "DPKG_ARCH_FOREIGN", value: 6)
!37 = !DIEnumerator(name: "DPKG_ARCH_UNKNOWN", value: 7)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_relation", file: !39, line: 61, size: 32, align: 32, elements: !40)
!39 = !DIFile(filename: "../../lib/dpkg/version.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!40 = !{!41, !42, !43, !44, !45, !46}
!41 = !DIEnumerator(name: "DPKG_RELATION_NONE", value: 0)
!42 = !DIEnumerator(name: "DPKG_RELATION_EQ", value: 1)
!43 = !DIEnumerator(name: "DPKG_RELATION_LT", value: 2)
!44 = !DIEnumerator(name: "DPKG_RELATION_LE", value: 3)
!45 = !DIEnumerator(name: "DPKG_RELATION_GT", value: 4)
!46 = !DIEnumerator(name: "DPKG_RELATION_GE", value: 5)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgwant", file: !16, line: 153, size: 32, align: 32, elements: !48)
!48 = !{!49, !50, !51, !52, !53, !54}
!49 = !DIEnumerator(name: "PKG_WANT_UNKNOWN", value: 0)
!50 = !DIEnumerator(name: "PKG_WANT_INSTALL", value: 1)
!51 = !DIEnumerator(name: "PKG_WANT_HOLD", value: 2)
!52 = !DIEnumerator(name: "PKG_WANT_DEINSTALL", value: 3)
!53 = !DIEnumerator(name: "PKG_WANT_PURGE", value: 4)
!54 = !DIEnumerator(name: "PKG_WANT_SENTINEL", value: 5)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgeflag", file: !16, line: 163, size: 32, align: 32, elements: !56)
!56 = !{!57, !58}
!57 = !DIEnumerator(name: "PKG_EFLAG_OK", value: 0)
!58 = !DIEnumerator(name: "PKG_EFLAG_REINSTREQ", value: 1)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgstatus", file: !16, line: 168, size: 32, align: 32, elements: !60)
!60 = !{!61, !62, !63, !64, !65, !66, !67, !68}
!61 = !DIEnumerator(name: "PKG_STAT_NOTINSTALLED", value: 0)
!62 = !DIEnumerator(name: "PKG_STAT_CONFIGFILES", value: 1)
!63 = !DIEnumerator(name: "PKG_STAT_HALFINSTALLED", value: 2)
!64 = !DIEnumerator(name: "PKG_STAT_UNPACKED", value: 3)
!65 = !DIEnumerator(name: "PKG_STAT_HALFCONFIGURED", value: 4)
!66 = !DIEnumerator(name: "PKG_STAT_TRIGGERSAWAITED", value: 5)
!67 = !DIEnumerator(name: "PKG_STAT_TRIGGERSPENDING", value: 6)
!68 = !DIEnumerator(name: "PKG_STAT_INSTALLED", value: 7)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgpriority", file: !16, line: 179, size: 32, align: 32, elements: !70)
!70 = !{!71, !72, !73, !74, !75, !76, !77, !78}
!71 = !DIEnumerator(name: "PKG_PRIO_REQUIRED", value: 0)
!72 = !DIEnumerator(name: "PKG_PRIO_IMPORTANT", value: 1)
!73 = !DIEnumerator(name: "PKG_PRIO_STANDARD", value: 2)
!74 = !DIEnumerator(name: "PKG_PRIO_OPTIONAL", value: 3)
!75 = !DIEnumerator(name: "PKG_PRIO_EXTRA", value: 4)
!76 = !DIEnumerator(name: "PKG_PRIO_OTHER", value: 5)
!77 = !DIEnumerator(name: "PKG_PRIO_UNKNOWN", value: 6)
!78 = !DIEnumerator(name: "PKG_PRIO_UNSET", value: -1)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgmultiarch", file: !16, line: 95, size: 32, align: 32, elements: !80)
!80 = !{!81, !82, !83, !84}
!81 = !DIEnumerator(name: "PKG_MULTIARCH_NO", value: 0)
!82 = !DIEnumerator(name: "PKG_MULTIARCH_SAME", value: 1)
!83 = !DIEnumerator(name: "PKG_MULTIARCH_ALLOWED", value: 2)
!84 = !DIEnumerator(name: "PKG_MULTIARCH_FOREIGN", value: 3)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fsys_namenode_flags", file: !86, line: 61, size: 32, align: 32, elements: !87)
!86 = !DIFile(filename: "../../lib/dpkg/fsys.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!87 = !{!88, !89, !90, !91, !92, !93, !94, !95, !96, !97}
!88 = !DIEnumerator(name: "FNNF_NEW_CONFF", value: 1)
!89 = !DIEnumerator(name: "FNNF_NEW_INARCHIVE", value: 2)
!90 = !DIEnumerator(name: "FNNF_OLD_CONFF", value: 4)
!91 = !DIEnumerator(name: "FNNF_OBS_CONFF", value: 8)
!92 = !DIEnumerator(name: "FNNF_ELIDE_OTHER_LISTS", value: 16)
!93 = !DIEnumerator(name: "FNNF_NO_ATOMIC_OVERWRITE", value: 32)
!94 = !DIEnumerator(name: "FNNF_PLACED_ON_DISK", value: 64)
!95 = !DIEnumerator(name: "FNNF_DEFERRED_FSYNC", value: 128)
!96 = !DIEnumerator(name: "FNNF_DEFERRED_RENAME", value: 256)
!97 = !DIEnumerator(name: "FNNF_FILTERED", value: 512)
!98 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "parsedbtype", file: !99, line: 41, size: 32, align: 32, elements: !100)
!99 = !DIFile(filename: "../../lib/dpkg/parsedump.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!100 = !{!101, !102, !103, !104}
!101 = !DIEnumerator(name: "pdb_file_update", value: 0)
!102 = !DIEnumerator(name: "pdb_file_status", value: 1)
!103 = !DIEnumerator(name: "pdb_file_control", value: 2)
!104 = !DIEnumerator(name: "pdb_file_available", value: 3)
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "parsedbflags", file: !16, line: 328, size: 32, align: 32, elements: !106)
!106 = !{!107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121}
!107 = !DIEnumerator(name: "pdb_single_stanza", value: 1)
!108 = !DIEnumerator(name: "pdb_recordavailable", value: 2)
!109 = !DIEnumerator(name: "pdb_rejectstatus", value: 4)
!110 = !DIEnumerator(name: "pdb_weakclassification", value: 8)
!111 = !DIEnumerator(name: "pdb_ignore_archives", value: 16)
!112 = !DIEnumerator(name: "pdb_ignoreolder", value: 32)
!113 = !DIEnumerator(name: "pdb_lax_version_parser", value: 64)
!114 = !DIEnumerator(name: "pdb_lax_stanza_parser", value: 512)
!115 = !DIEnumerator(name: "pdb_lax_parser", value: 576)
!116 = !DIEnumerator(name: "pdb_close_fd", value: 128)
!117 = !DIEnumerator(name: "pdb_dash_is_stdin", value: 256)
!118 = !DIEnumerator(name: "pdb_parse_status", value: 584)
!119 = !DIEnumerator(name: "pdb_parse_update", value: 585)
!120 = !DIEnumerator(name: "pdb_parse_available", value: 582)
!121 = !DIEnumerator(name: "pdb_parse_binary", value: 7)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fwriteflags", file: !99, line: 112, size: 32, align: 32, elements: !123)
!123 = !{!124}
!124 = !DIEnumerator(name: "fw_printheader", value: 1)
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkg_name_arch_when", file: !16, line: 396, size: 32, align: 32, elements: !126)
!126 = !{!127, !128, !129, !130}
!127 = !DIEnumerator(name: "pnaw_never", value: 0)
!128 = !DIEnumerator(name: "pnaw_nonambig", value: 1)
!129 = !DIEnumerator(name: "pnaw_foreign", value: 2)
!130 = !DIEnumerator(name: "pnaw_always", value: 3)
!131 = !{!132, !133, !136}
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !134, line: 216, baseType: !135)
!134 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!135 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64, align: 64)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkginfo", file: !16, line: 195, size: 3072, align: 64, elements: !138)
!138 = !{!139, !191, !192, !193, !194, !195, !196, !197, !198, !199, !229, !230, !233, !242, !258, !259, !265, !322, !326, !327}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !137, file: !16, line: 196, baseType: !140, size: 64, align: 64)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgset", file: !16, line: 242, size: 3392, align: 64, elements: !142)
!142 = !{!143, !144, !148, !149, !189}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !141, file: !16, line: 243, baseType: !140, size: 64, align: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !141, file: !16, line: 244, baseType: !145, size: 64, align: 64, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64, align: 64)
!146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!147 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !141, file: !16, line: 245, baseType: !137, size: 3072, align: 64, offset: 128)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "depended", scope: !141, file: !16, line: 249, baseType: !150, size: 128, align: 64, offset: 3200)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !141, file: !16, line: 246, size: 128, align: 64, elements: !151)
!151 = !{!152, !188}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !150, file: !16, line: 247, baseType: !153, size: 64, align: 64)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64, align: 64)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "deppossi", file: !16, line: 63, size: 640, align: 64, elements: !155)
!155 = !{!156, !164, !165, !166, !167, !168, !177, !184, !185, !187}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !154, file: !16, line: 64, baseType: !157, size: 64, align: 64)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64, align: 64)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dependency", file: !16, line: 56, size: 256, align: 64, elements: !159)
!159 = !{!160, !161, !162, !163}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !158, file: !16, line: 57, baseType: !136, size: 64, align: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !158, file: !16, line: 58, baseType: !157, size: 64, align: 64, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !158, file: !16, line: 59, baseType: !153, size: 64, align: 64, offset: 128)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !158, file: !16, line: 60, baseType: !15, size: 32, align: 32, offset: 192)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "ed", scope: !154, file: !16, line: 65, baseType: !140, size: 64, align: 64, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !154, file: !16, line: 66, baseType: !153, size: 64, align: 64, offset: 128)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "rev_next", scope: !154, file: !16, line: 66, baseType: !153, size: 64, align: 64, offset: 192)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "rev_prev", scope: !154, file: !16, line: 66, baseType: !153, size: 64, align: 64, offset: 256)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !154, file: !16, line: 67, baseType: !169, size: 64, align: 64, offset: 320)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64, align: 64)
!170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !171)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_arch", file: !28, line: 48, size: 192, align: 64, elements: !172)
!172 = !{!173, !175, !176}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !171, file: !28, line: 49, baseType: !174, size: 64, align: 64)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64, align: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !171, file: !28, line: 50, baseType: !145, size: 64, align: 64, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !171, file: !28, line: 51, baseType: !27, size: 32, align: 32, offset: 128)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !154, file: !16, line: 68, baseType: !178, size: 192, align: 64, offset: 384)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_version", file: !39, line: 42, size: 192, align: 64, elements: !179)
!179 = !{!180, !182, !183}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !178, file: !39, line: 44, baseType: !181, size: 32, align: 32)
!181 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !178, file: !39, line: 46, baseType: !145, size: 64, align: 64, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !178, file: !39, line: 48, baseType: !145, size: 64, align: 64, offset: 128)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "verrel", scope: !154, file: !16, line: 69, baseType: !38, size: 32, align: 32, offset: 576)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "arch_is_implicit", scope: !154, file: !16, line: 70, baseType: !186, size: 8, align: 8, offset: 608)
!186 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "cyclebreak", scope: !154, file: !16, line: 71, baseType: !186, size: 8, align: 8, offset: 616)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !150, file: !16, line: 248, baseType: !153, size: 64, align: 64, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "installed_instances", scope: !141, file: !16, line: 250, baseType: !190, size: 32, align: 32, offset: 3328)
!190 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "arch_next", scope: !137, file: !16, line: 197, baseType: !136, size: 64, align: 64, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "want", scope: !137, file: !16, line: 199, baseType: !47, size: 32, align: 32, offset: 128)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "eflag", scope: !137, file: !16, line: 201, baseType: !55, size: 32, align: 32, offset: 160)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !137, file: !16, line: 202, baseType: !59, size: 32, align: 32, offset: 192)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !137, file: !16, line: 203, baseType: !69, size: 32, align: 32, offset: 224)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "otherpriority", scope: !137, file: !16, line: 204, baseType: !145, size: 64, align: 64, offset: 256)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "section", scope: !137, file: !16, line: 205, baseType: !145, size: 64, align: 64, offset: 320)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "configversion", scope: !137, file: !16, line: 206, baseType: !178, size: 192, align: 64, offset: 384)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !137, file: !16, line: 207, baseType: !200, size: 960, align: 64, offset: 576)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgbin", file: !16, line: 107, size: 960, align: 64, elements: !201)
!201 = !{!202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !222}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "depends", scope: !200, file: !16, line: 108, baseType: !157, size: 64, align: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "essential", scope: !200, file: !16, line: 110, baseType: !186, size: 8, align: 8, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "multiarch", scope: !200, file: !16, line: 111, baseType: !79, size: 32, align: 32, offset: 96)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !200, file: !16, line: 112, baseType: !169, size: 64, align: 64, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "pkgname_archqual", scope: !200, file: !16, line: 115, baseType: !145, size: 64, align: 64, offset: 192)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !200, file: !16, line: 116, baseType: !145, size: 64, align: 64, offset: 256)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "maintainer", scope: !200, file: !16, line: 117, baseType: !145, size: 64, align: 64, offset: 320)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !200, file: !16, line: 118, baseType: !145, size: 64, align: 64, offset: 384)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "installedsize", scope: !200, file: !16, line: 119, baseType: !145, size: 64, align: 64, offset: 448)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !200, file: !16, line: 120, baseType: !145, size: 64, align: 64, offset: 512)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "bugs", scope: !200, file: !16, line: 121, baseType: !145, size: 64, align: 64, offset: 576)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !200, file: !16, line: 122, baseType: !178, size: 192, align: 64, offset: 640)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "conffiles", scope: !200, file: !16, line: 123, baseType: !215, size: 64, align: 64, offset: 832)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64, align: 64)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conffile", file: !16, line: 80, size: 256, align: 64, elements: !217)
!217 = !{!218, !219, !220, !221}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !216, file: !16, line: 81, baseType: !215, size: 64, align: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !216, file: !16, line: 82, baseType: !145, size: 64, align: 64, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !216, file: !16, line: 83, baseType: !145, size: 64, align: 64, offset: 128)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "obsolete", scope: !216, file: !16, line: 84, baseType: !186, size: 8, align: 8, offset: 192)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "arbs", scope: !200, file: !16, line: 124, baseType: !223, size: 64, align: 64, offset: 896)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64, align: 64)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arbitraryfield", file: !16, line: 74, size: 192, align: 64, elements: !225)
!225 = !{!226, !227, !228}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !224, file: !16, line: 75, baseType: !223, size: 64, align: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !224, file: !16, line: 76, baseType: !145, size: 64, align: 64, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !224, file: !16, line: 77, baseType: !145, size: 64, align: 64, offset: 128)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !137, file: !16, line: 208, baseType: !200, size: 960, align: 64, offset: 1536)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "clientdata", scope: !137, file: !16, line: 209, baseType: !231, size: 64, align: 64, offset: 2496)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64, align: 64)
!232 = !DICompositeType(tag: DW_TAG_structure_type, name: "perpackagestate", file: !16, line: 151, flags: DIFlagFwdDecl)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "archives", scope: !137, file: !16, line: 211, baseType: !234, size: 64, align: 64, offset: 2560)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64, align: 64)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archivedetails", file: !16, line: 87, size: 320, align: 64, elements: !236)
!236 = !{!237, !238, !239, !240, !241}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !235, file: !16, line: 88, baseType: !234, size: 64, align: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !235, file: !16, line: 89, baseType: !145, size: 64, align: 64, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "msdosname", scope: !235, file: !16, line: 90, baseType: !145, size: 64, align: 64, offset: 128)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !235, file: !16, line: 91, baseType: !145, size: 64, align: 64, offset: 192)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "md5sum", scope: !235, file: !16, line: 92, baseType: !145, size: 64, align: 64, offset: 256)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "trigaw", scope: !137, file: !16, line: 216, baseType: !243, size: 128, align: 64, offset: 2624)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !137, file: !16, line: 213, size: 128, align: 64, elements: !244)
!244 = !{!245, !257}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !243, file: !16, line: 215, baseType: !246, size: 64, align: 64)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64, align: 64)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigaw", file: !16, line: 142, size: 320, align: 64, elements: !248)
!248 = !{!249, !250, !251, !252}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "aw", scope: !247, file: !16, line: 143, baseType: !136, size: 64, align: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "pend", scope: !247, file: !16, line: 143, baseType: !136, size: 64, align: 64, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "samepend_next", scope: !247, file: !16, line: 144, baseType: !246, size: 64, align: 64, offset: 128)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "sameaw", scope: !247, file: !16, line: 147, baseType: !253, size: 128, align: 64, offset: 192)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !247, file: !16, line: 145, size: 128, align: 64, elements: !254)
!254 = !{!255, !256}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !253, file: !16, line: 146, baseType: !246, size: 64, align: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !253, file: !16, line: 146, baseType: !246, size: 64, align: 64, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !243, file: !16, line: 215, baseType: !246, size: 64, align: 64, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "othertrigaw_head", scope: !137, file: !16, line: 219, baseType: !246, size: 64, align: 64, offset: 2752)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "trigpend_head", scope: !137, file: !16, line: 220, baseType: !260, size: 64, align: 64, offset: 2816)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64, align: 64)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigpend", file: !16, line: 134, size: 128, align: 64, elements: !262)
!262 = !{!263, !264}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !261, file: !16, line: 135, baseType: !260, size: 64, align: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !261, file: !16, line: 136, baseType: !145, size: 64, align: 64, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !137, file: !16, line: 231, baseType: !266, size: 64, align: 64, offset: 2880)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64, align: 64)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode_list", file: !86, line: 122, size: 128, align: 64, elements: !268)
!268 = !{!269, !270}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !267, file: !86, line: 123, baseType: !266, size: 64, align: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "namenode", scope: !267, file: !86, line: 124, baseType: !271, size: 64, align: 64, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64, align: 64)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode", file: !86, line: 90, size: 640, align: 64, elements: !273)
!273 = !{!274, !275, !276, !279, !287, !306, !309, !310, !311, !312}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !272, file: !86, line: 91, baseType: !271, size: 64, align: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !272, file: !86, line: 92, baseType: !145, size: 64, align: 64, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "packages", scope: !272, file: !86, line: 93, baseType: !277, size: 64, align: 64, offset: 128)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64, align: 64)
!278 = !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_list", file: !86, line: 93, flags: DIFlagFwdDecl)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "divert", scope: !272, file: !86, line: 94, baseType: !280, size: 64, align: 64, offset: 192)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64, align: 64)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_diversion", file: !86, line: 151, size: 256, align: 64, elements: !282)
!282 = !{!283, !284, !285, !286}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "useinstead", scope: !281, file: !86, line: 152, baseType: !271, size: 64, align: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "camefrom", scope: !281, file: !86, line: 153, baseType: !271, size: 64, align: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "pkgset", scope: !281, file: !86, line: 154, baseType: !140, size: 64, align: 64, offset: 128)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !281, file: !86, line: 157, baseType: !280, size: 64, align: 64, offset: 192)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "statoverride", scope: !272, file: !86, line: 101, baseType: !288, size: 64, align: 64, offset: 256)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64, align: 64)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_stat", file: !290, line: 40, size: 256, align: 64, elements: !291)
!290 = !DIFile(filename: "../../lib/dpkg/file.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!291 = !{!292, !297, !300, !303, !305}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !289, file: !290, line: 41, baseType: !293, size: 32, align: 32)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !294, line: 80, baseType: !295)
!294 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !296, line: 125, baseType: !181)
!296 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!297 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !289, file: !290, line: 42, baseType: !298, size: 32, align: 32, offset: 32)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !294, line: 65, baseType: !299)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !296, line: 126, baseType: !181)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !289, file: !290, line: 43, baseType: !301, size: 32, align: 32, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !294, line: 70, baseType: !302)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !296, line: 129, baseType: !181)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "uname", scope: !289, file: !290, line: 47, baseType: !304, size: 64, align: 64, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64, align: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !289, file: !290, line: 48, baseType: !304, size: 64, align: 64, offset: 192)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "trig_interested", scope: !272, file: !86, line: 103, baseType: !307, size: 64, align: 64, offset: 320)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64, align: 64)
!308 = !DICompositeType(tag: DW_TAG_structure_type, name: "trigfileint", file: !86, line: 103, flags: DIFlagFwdDecl)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !272, file: !86, line: 111, baseType: !85, size: 32, align: 32, offset: 384)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "oldhash", scope: !272, file: !86, line: 114, baseType: !145, size: 64, align: 64, offset: 448)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "newhash", scope: !272, file: !86, line: 117, baseType: !145, size: 64, align: 64, offset: 512)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "file_ondisk_id", scope: !272, file: !86, line: 119, baseType: !313, size: 64, align: 64, offset: 576)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64, align: 64)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ondisk_id", file: !86, line: 85, size: 128, align: 64, elements: !315)
!315 = !{!316, !319}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "id_dev", scope: !314, file: !86, line: 86, baseType: !317, size: 64, align: 64)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !294, line: 60, baseType: !318)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !296, line: 124, baseType: !135)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "id_ino", scope: !314, file: !86, line: 87, baseType: !320, size: 64, align: 64, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !294, line: 48, baseType: !321)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !296, line: 127, baseType: !135)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_phys_offs", scope: !137, file: !16, line: 232, baseType: !323, size: 64, align: 64, offset: 2944)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !294, line: 86, baseType: !324)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !296, line: 131, baseType: !325)
!325 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_valid", scope: !137, file: !16, line: 233, baseType: !186, size: 8, align: 8, offset: 3008)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "status_dirty", scope: !137, file: !16, line: 236, baseType: !186, size: 8, align: 8, offset: 3016)
!328 = !{!329}
!329 = distinct !DIGlobalVariable(name: "virtinfos", scope: !0, file: !4, line: 375, type: !330, isLocal: true, isDefinition: true, variable: [13 x %struct.fieldinfo]* @virtinfos)
!330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 4160, align: 64, elements: !379)
!331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !332)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fieldinfo", file: !99, line: 133, size: 320, align: 64, elements: !333)
!333 = !{!334, !335, !336, !362, !378}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !332, file: !99, line: 134, baseType: !145, size: 64, align: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "namelen", scope: !332, file: !99, line: 135, baseType: !133, size: 64, align: 64, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "rcall", scope: !332, file: !99, line: 136, baseType: !337, size: 64, align: 64, offset: 128)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64, align: 64)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "freadfunction", file: !99, line: 97, baseType: !339)
!339 = !DISubroutineType(types: !340)
!340 = !{null, !136, !341, !342, !145, !361}
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64, align: 64)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64, align: 64)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "parsedb_state", file: !99, line: 48, size: 640, align: 64, elements: !344)
!344 = !{!345, !346, !347, !353, !354, !355, !356, !357, !358, !359, !360}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !343, file: !99, line: 49, baseType: !98, size: 32, align: 32)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !343, file: !99, line: 50, baseType: !105, size: 32, align: 32, offset: 32)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !343, file: !99, line: 51, baseType: !348, size: 128, align: 64, offset: 64)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_error", file: !10, line: 42, size: 128, align: 64, elements: !349)
!349 = !{!350, !351, !352}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !348, file: !10, line: 43, baseType: !9, size: 32, align: 32)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "syserrno", scope: !348, file: !10, line: 45, baseType: !190, size: 32, align: 32, offset: 32)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !348, file: !10, line: 46, baseType: !304, size: 64, align: 64, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !343, file: !99, line: 52, baseType: !136, size: 64, align: 64, offset: 192)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "pkgbin", scope: !343, file: !99, line: 53, baseType: !341, size: 64, align: 64, offset: 256)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !343, file: !99, line: 54, baseType: !304, size: 64, align: 64, offset: 320)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "dataptr", scope: !343, file: !99, line: 55, baseType: !304, size: 64, align: 64, offset: 384)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "endptr", scope: !343, file: !99, line: 56, baseType: !304, size: 64, align: 64, offset: 448)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !343, file: !99, line: 57, baseType: !145, size: 64, align: 64, offset: 512)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !343, file: !99, line: 58, baseType: !190, size: 32, align: 32, offset: 576)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "lno", scope: !343, file: !99, line: 59, baseType: !190, size: 32, align: 32, offset: 608)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64, align: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "wcall", scope: !332, file: !99, line: 137, baseType: !363, size: 64, align: 64, offset: 192)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64, align: 64)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "fwritefunction", file: !99, line: 117, baseType: !365)
!365 = !DISubroutineType(types: !366)
!366 = !{null, !367, !374, !376, !122, !361}
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64, align: 64)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varbuf", file: !369, line: 55, size: 192, align: 64, elements: !370)
!369 = !DIFile(filename: "../../lib/dpkg/varbuf.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!370 = !{!371, !372, !373}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !368, file: !369, line: 56, baseType: !133, size: 64, align: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !368, file: !369, line: 56, baseType: !133, size: 64, align: 64, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !368, file: !369, line: 57, baseType: !304, size: 64, align: 64, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64, align: 64)
!375 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64, align: 64)
!377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !200)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !332, file: !99, line: 138, baseType: !133, size: 64, align: 64, offset: 256)
!379 = !{!380}
!380 = !DISubrange(count: 13)
!381 = !{i32 2, !"Dwarf Version", i32 4}
!382 = !{i32 2, !"Debug Info Version", i32 3}
!383 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!384 = distinct !DISubprogram(name: "pkg_format_free", scope: !4, file: !4, line: 159, type: !385, isLocal: false, isDefinition: true, scopeLine: 160, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!385 = !DISubroutineType(types: !386)
!386 = !{null, !387}
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64, align: 64)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_format_node", file: !4, line: 51, size: 320, align: 64, elements: !389)
!389 = !{!390, !391, !392, !393, !394}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !388, file: !4, line: 52, baseType: !387, size: 64, align: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !388, file: !4, line: 53, baseType: !3, size: 32, align: 32, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !388, file: !4, line: 54, baseType: !133, size: 64, align: 64, offset: 128)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !388, file: !4, line: 55, baseType: !190, size: 32, align: 32, offset: 192)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !388, file: !4, line: 56, baseType: !304, size: 64, align: 64, offset: 256)
!395 = !{}
!396 = !DILocalVariable(name: "head", arg: 1, scope: !384, file: !4, line: 159, type: !387)
!397 = !DIExpression()
!398 = !DILocation(line: 159, column: 41, scope: !384)
!399 = !DILocalVariable(name: "node", scope: !384, file: !4, line: 161, type: !387)
!400 = !DILocation(line: 161, column: 26, scope: !384)
!401 = !DILocation(line: 163, column: 2, scope: !384)
!402 = !DILocation(line: 163, column: 9, scope: !403)
!403 = !DILexicalBlockFile(scope: !384, file: !4, discriminator: 1)
!404 = !DILocation(line: 163, column: 2, scope: !403)
!405 = !DILocation(line: 164, column: 10, scope: !406)
!406 = distinct !DILexicalBlock(scope: !384, file: !4, line: 163, column: 15)
!407 = !DILocation(line: 164, column: 8, scope: !406)
!408 = !DILocation(line: 165, column: 10, scope: !406)
!409 = !DILocation(line: 165, column: 16, scope: !406)
!410 = !DILocation(line: 165, column: 8, scope: !406)
!411 = !DILocation(line: 167, column: 8, scope: !406)
!412 = !DILocation(line: 167, column: 14, scope: !406)
!413 = !DILocation(line: 167, column: 3, scope: !406)
!414 = !DILocation(line: 168, column: 8, scope: !406)
!415 = !DILocation(line: 168, column: 3, scope: !406)
!416 = !DILocation(line: 163, column: 2, scope: !417)
!417 = !DILexicalBlockFile(scope: !384, file: !4, discriminator: 2)
!418 = distinct !{!418, !401}
!419 = !DILocation(line: 170, column: 1, scope: !384)
!420 = distinct !DISubprogram(name: "pkg_format_parse", scope: !4, file: !4, line: 173, type: !421, isLocal: false, isDefinition: true, scopeLine: 174, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!421 = !DISubroutineType(types: !422)
!422 = !{!387, !145, !423}
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64, align: 64)
!424 = !DILocalVariable(name: "fmt", arg: 1, scope: !420, file: !4, line: 173, type: !145)
!425 = !DILocation(line: 173, column: 30, scope: !420)
!426 = !DILocalVariable(name: "err", arg: 2, scope: !420, file: !4, line: 173, type: !423)
!427 = !DILocation(line: 173, column: 54, scope: !420)
!428 = !DILocalVariable(name: "head", scope: !420, file: !4, line: 175, type: !387)
!429 = !DILocation(line: 175, column: 26, scope: !420)
!430 = !DILocalVariable(name: "node", scope: !420, file: !4, line: 175, type: !387)
!431 = !DILocation(line: 175, column: 33, scope: !420)
!432 = !DILocalVariable(name: "fmtend", scope: !420, file: !4, line: 176, type: !145)
!433 = !DILocation(line: 176, column: 14, scope: !420)
!434 = !DILocation(line: 178, column: 14, scope: !420)
!435 = !DILocation(line: 178, column: 7, scope: !420)
!436 = !DILocation(line: 180, column: 2, scope: !420)
!437 = !DILocation(line: 180, column: 10, scope: !438)
!438 = !DILexicalBlockFile(scope: !420, file: !4, discriminator: 1)
!439 = !DILocation(line: 180, column: 9, scope: !438)
!440 = !DILocation(line: 180, column: 2, scope: !438)
!441 = !DILocation(line: 181, column: 7, scope: !442)
!442 = distinct !DILexicalBlock(scope: !443, file: !4, line: 181, column: 7)
!443 = distinct !DILexicalBlock(scope: !420, file: !4, line: 180, column: 15)
!444 = !DILocation(line: 181, column: 7, scope: !443)
!445 = !DILocation(line: 182, column: 24, scope: !442)
!446 = !DILocation(line: 182, column: 11, scope: !442)
!447 = !DILocation(line: 182, column: 17, scope: !442)
!448 = !DILocation(line: 182, column: 22, scope: !442)
!449 = !DILocation(line: 182, column: 9, scope: !442)
!450 = !DILocation(line: 182, column: 4, scope: !442)
!451 = !DILocation(line: 184, column: 18, scope: !442)
!452 = !DILocation(line: 184, column: 16, scope: !442)
!453 = !DILocation(line: 184, column: 9, scope: !442)
!454 = !DILocation(line: 186, column: 7, scope: !455)
!455 = distinct !DILexicalBlock(scope: !443, file: !4, line: 186, column: 7)
!456 = !DILocation(line: 186, column: 14, scope: !455)
!457 = !DILocation(line: 186, column: 21, scope: !455)
!458 = !DILocation(line: 186, column: 24, scope: !459)
!459 = !DILexicalBlockFile(scope: !455, file: !4, discriminator: 1)
!460 = !DILocation(line: 186, column: 31, scope: !459)
!461 = !DILocation(line: 186, column: 7, scope: !459)
!462 = !DILocation(line: 187, column: 20, scope: !463)
!463 = distinct !DILexicalBlock(scope: !455, file: !4, line: 186, column: 39)
!464 = !DILocation(line: 187, column: 13, scope: !463)
!465 = !DILocation(line: 187, column: 11, scope: !463)
!466 = !DILocation(line: 188, column: 9, scope: !467)
!467 = distinct !DILexicalBlock(scope: !463, file: !4, line: 188, column: 8)
!468 = !DILocation(line: 188, column: 8, scope: !463)
!469 = !DILocation(line: 189, column: 20, scope: !470)
!470 = distinct !DILexicalBlock(scope: !467, file: !4, line: 188, column: 17)
!471 = !DILocation(line: 189, column: 24, scope: !470)
!472 = !DILocation(line: 189, column: 5, scope: !473)
!473 = !DILexicalBlockFile(scope: !470, file: !4, discriminator: 1)
!474 = !DILocation(line: 190, column: 21, scope: !470)
!475 = !DILocation(line: 190, column: 5, scope: !470)
!476 = !DILocation(line: 191, column: 5, scope: !470)
!477 = !DILocation(line: 194, column: 20, scope: !478)
!478 = distinct !DILexicalBlock(scope: !463, file: !4, line: 194, column: 8)
!479 = !DILocation(line: 194, column: 26, scope: !478)
!480 = !DILocation(line: 194, column: 30, scope: !478)
!481 = !DILocation(line: 194, column: 35, scope: !478)
!482 = !DILocation(line: 194, column: 42, scope: !478)
!483 = !DILocation(line: 194, column: 47, scope: !478)
!484 = !DILocation(line: 194, column: 9, scope: !478)
!485 = !DILocation(line: 194, column: 8, scope: !463)
!486 = !DILocation(line: 195, column: 21, scope: !487)
!487 = distinct !DILexicalBlock(scope: !478, file: !4, line: 194, column: 53)
!488 = !DILocation(line: 195, column: 5, scope: !487)
!489 = !DILocation(line: 196, column: 5, scope: !487)
!490 = !DILocation(line: 198, column: 10, scope: !463)
!491 = !DILocation(line: 198, column: 17, scope: !463)
!492 = !DILocation(line: 198, column: 8, scope: !463)
!493 = !DILocation(line: 199, column: 3, scope: !463)
!494 = !DILocation(line: 200, column: 13, scope: !495)
!495 = distinct !DILexicalBlock(scope: !455, file: !4, line: 199, column: 10)
!496 = !DILocation(line: 200, column: 11, scope: !495)
!497 = !DILocation(line: 201, column: 4, scope: !495)
!498 = distinct !{!498, !497}
!499 = !DILocation(line: 202, column: 12, scope: !500)
!500 = distinct !DILexicalBlock(scope: !495, file: !4, line: 201, column: 7)
!501 = !DILocation(line: 203, column: 24, scope: !500)
!502 = !DILocation(line: 203, column: 14, scope: !500)
!503 = !DILocation(line: 203, column: 12, scope: !500)
!504 = !DILocation(line: 204, column: 4, scope: !500)
!505 = !DILocation(line: 204, column: 13, scope: !506)
!506 = !DILexicalBlockFile(scope: !495, file: !4, discriminator: 1)
!507 = !DILocation(line: 204, column: 23, scope: !506)
!508 = !DILocation(line: 204, column: 26, scope: !509)
!509 = !DILexicalBlockFile(scope: !495, file: !4, discriminator: 2)
!510 = !DILocation(line: 204, column: 36, scope: !509)
!511 = !DILocation(line: 204, column: 4, scope: !512)
!512 = !DILexicalBlockFile(scope: !500, file: !4, discriminator: 3)
!513 = !DILocation(line: 206, column: 21, scope: !514)
!514 = distinct !DILexicalBlock(scope: !495, file: !4, line: 206, column: 8)
!515 = !DILocation(line: 206, column: 27, scope: !514)
!516 = !DILocation(line: 206, column: 32, scope: !514)
!517 = !DILocation(line: 206, column: 39, scope: !514)
!518 = !DILocation(line: 206, column: 44, scope: !514)
!519 = !DILocation(line: 206, column: 9, scope: !514)
!520 = !DILocation(line: 206, column: 8, scope: !495)
!521 = !DILocation(line: 207, column: 21, scope: !522)
!522 = distinct !DILexicalBlock(scope: !514, file: !4, line: 206, column: 50)
!523 = !DILocation(line: 207, column: 5, scope: !522)
!524 = !DILocation(line: 208, column: 5, scope: !522)
!525 = !DILocation(line: 210, column: 10, scope: !495)
!526 = !DILocation(line: 210, column: 8, scope: !495)
!527 = !DILocation(line: 180, column: 2, scope: !528)
!528 = !DILexicalBlockFile(scope: !420, file: !4, discriminator: 2)
!529 = distinct !{!529, !436}
!530 = !DILocation(line: 214, column: 7, scope: !531)
!531 = distinct !DILexicalBlock(scope: !420, file: !4, line: 214, column: 6)
!532 = !DILocation(line: 214, column: 6, scope: !420)
!533 = !DILocation(line: 215, column: 18, scope: !531)
!534 = !DILocation(line: 215, column: 22, scope: !531)
!535 = !DILocation(line: 215, column: 3, scope: !536)
!536 = !DILexicalBlockFile(scope: !531, file: !4, discriminator: 1)
!537 = !DILocation(line: 215, column: 3, scope: !531)
!538 = !DILocation(line: 217, column: 9, scope: !420)
!539 = !DILocation(line: 217, column: 2, scope: !420)
!540 = !DILocation(line: 218, column: 1, scope: !420)
!541 = distinct !DISubprogram(name: "pkg_format_node_new", scope: !4, file: !4, line: 61, type: !542, isLocal: true, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!542 = !DISubroutineType(types: !543)
!543 = !{!387}
!544 = !DILocalVariable(name: "buf", scope: !541, file: !4, line: 63, type: !387)
!545 = !DILocation(line: 63, column: 26, scope: !541)
!546 = !DILocation(line: 65, column: 8, scope: !541)
!547 = !DILocation(line: 65, column: 6, scope: !541)
!548 = !DILocation(line: 66, column: 2, scope: !541)
!549 = !DILocation(line: 66, column: 7, scope: !541)
!550 = !DILocation(line: 66, column: 12, scope: !541)
!551 = !DILocation(line: 67, column: 2, scope: !541)
!552 = !DILocation(line: 67, column: 7, scope: !541)
!553 = !DILocation(line: 67, column: 12, scope: !541)
!554 = !DILocation(line: 68, column: 2, scope: !541)
!555 = !DILocation(line: 68, column: 7, scope: !541)
!556 = !DILocation(line: 68, column: 12, scope: !541)
!557 = !DILocation(line: 69, column: 2, scope: !541)
!558 = !DILocation(line: 69, column: 7, scope: !541)
!559 = !DILocation(line: 69, column: 13, scope: !541)
!560 = !DILocation(line: 70, column: 2, scope: !541)
!561 = !DILocation(line: 70, column: 7, scope: !541)
!562 = !DILocation(line: 70, column: 11, scope: !541)
!563 = !DILocation(line: 72, column: 9, scope: !541)
!564 = !DILocation(line: 72, column: 2, scope: !541)
!565 = distinct !DISubprogram(name: "parsefield", scope: !4, file: !4, line: 76, type: !566, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!566 = !DISubroutineType(types: !567)
!567 = !{!186, !387, !145, !145, !423}
!568 = !DILocalVariable(name: "node", arg: 1, scope: !565, file: !4, line: 76, type: !387)
!569 = !DILocation(line: 76, column: 36, scope: !565)
!570 = !DILocalVariable(name: "fmt", arg: 2, scope: !565, file: !4, line: 76, type: !145)
!571 = !DILocation(line: 76, column: 54, scope: !565)
!572 = !DILocalVariable(name: "fmtend", arg: 3, scope: !565, file: !4, line: 76, type: !145)
!573 = !DILocation(line: 76, column: 71, scope: !565)
!574 = !DILocalVariable(name: "err", arg: 4, scope: !565, file: !4, line: 77, type: !423)
!575 = !DILocation(line: 77, column: 31, scope: !565)
!576 = !DILocalVariable(name: "len", scope: !565, file: !4, line: 79, type: !190)
!577 = !DILocation(line: 79, column: 6, scope: !565)
!578 = !DILocalVariable(name: "ws", scope: !565, file: !4, line: 80, type: !145)
!579 = !DILocation(line: 80, column: 14, scope: !565)
!580 = !DILocation(line: 82, column: 8, scope: !565)
!581 = !DILocation(line: 82, column: 17, scope: !565)
!582 = !DILocation(line: 82, column: 15, scope: !565)
!583 = !DILocation(line: 82, column: 21, scope: !565)
!584 = !DILocation(line: 82, column: 6, scope: !565)
!585 = !DILocation(line: 84, column: 14, scope: !565)
!586 = !DILocation(line: 84, column: 24, scope: !565)
!587 = !DILocation(line: 84, column: 7, scope: !565)
!588 = !DILocation(line: 84, column: 5, scope: !565)
!589 = !DILocation(line: 85, column: 6, scope: !590)
!590 = distinct !DILexicalBlock(scope: !565, file: !4, line: 85, column: 6)
!591 = !DILocation(line: 85, column: 6, scope: !565)
!592 = !DILocalVariable(name: "endptr", scope: !593, file: !4, line: 86, type: !304)
!593 = distinct !DILexicalBlock(scope: !590, file: !4, line: 85, column: 10)
!594 = !DILocation(line: 86, column: 9, scope: !593)
!595 = !DILocalVariable(name: "w", scope: !593, file: !4, line: 87, type: !325)
!596 = !DILocation(line: 87, column: 8, scope: !593)
!597 = !DILocation(line: 89, column: 4, scope: !593)
!598 = !DILocation(line: 89, column: 8, scope: !593)
!599 = !DILocation(line: 90, column: 14, scope: !593)
!600 = !DILocation(line: 90, column: 17, scope: !593)
!601 = !DILocation(line: 90, column: 7, scope: !593)
!602 = !DILocation(line: 90, column: 5, scope: !593)
!603 = !DILocation(line: 91, column: 7, scope: !604)
!604 = distinct !DILexicalBlock(scope: !593, file: !4, line: 91, column: 7)
!605 = !DILocation(line: 91, column: 17, scope: !604)
!606 = !DILocation(line: 91, column: 7, scope: !593)
!607 = !DILocation(line: 92, column: 19, scope: !608)
!608 = distinct !DILexicalBlock(scope: !604, file: !4, line: 91, column: 25)
!609 = !DILocation(line: 93, column: 18, scope: !608)
!610 = !DILocation(line: 94, column: 20, scope: !608)
!611 = !DILocation(line: 94, column: 19, scope: !608)
!612 = !DILocation(line: 92, column: 4, scope: !608)
!613 = !DILocation(line: 95, column: 4, scope: !608)
!614 = !DILocation(line: 97, column: 7, scope: !615)
!615 = distinct !DILexicalBlock(scope: !593, file: !4, line: 97, column: 7)
!616 = !DILocation(line: 97, column: 9, scope: !615)
!617 = !DILocation(line: 97, column: 18, scope: !615)
!618 = !DILocation(line: 97, column: 21, scope: !619)
!619 = !DILexicalBlockFile(scope: !615, file: !4, discriminator: 1)
!620 = !DILocation(line: 97, column: 23, scope: !619)
!621 = !DILocation(line: 97, column: 36, scope: !619)
!622 = !DILocation(line: 97, column: 38, scope: !623)
!623 = !DILexicalBlockFile(scope: !615, file: !4, discriminator: 2)
!624 = !DILocation(line: 97, column: 37, scope: !623)
!625 = !DILocation(line: 97, column: 42, scope: !623)
!626 = !DILocation(line: 97, column: 7, scope: !623)
!627 = !DILocation(line: 98, column: 19, scope: !628)
!628 = distinct !DILexicalBlock(scope: !615, file: !4, line: 97, column: 53)
!629 = !DILocation(line: 98, column: 23, scope: !628)
!630 = !DILocation(line: 98, column: 4, scope: !631)
!631 = !DILexicalBlockFile(scope: !628, file: !4, discriminator: 1)
!632 = !DILocation(line: 99, column: 4, scope: !628)
!633 = !DILocation(line: 102, column: 7, scope: !634)
!634 = distinct !DILexicalBlock(scope: !593, file: !4, line: 102, column: 7)
!635 = !DILocation(line: 102, column: 9, scope: !634)
!636 = !DILocation(line: 102, column: 7, scope: !593)
!637 = !DILocation(line: 103, column: 4, scope: !638)
!638 = distinct !DILexicalBlock(scope: !634, file: !4, line: 102, column: 14)
!639 = !DILocation(line: 103, column: 10, scope: !638)
!640 = !DILocation(line: 103, column: 14, scope: !638)
!641 = !DILocation(line: 104, column: 27, scope: !638)
!642 = !DILocation(line: 104, column: 26, scope: !638)
!643 = !DILocation(line: 104, column: 4, scope: !638)
!644 = !DILocation(line: 104, column: 10, scope: !638)
!645 = !DILocation(line: 104, column: 16, scope: !638)
!646 = !DILocation(line: 105, column: 3, scope: !638)
!647 = !DILocation(line: 106, column: 26, scope: !634)
!648 = !DILocation(line: 106, column: 4, scope: !634)
!649 = !DILocation(line: 106, column: 10, scope: !634)
!650 = !DILocation(line: 106, column: 16, scope: !634)
!651 = !DILocation(line: 108, column: 9, scope: !593)
!652 = !DILocation(line: 108, column: 14, scope: !593)
!653 = !DILocation(line: 108, column: 12, scope: !593)
!654 = !DILocation(line: 108, column: 7, scope: !593)
!655 = !DILocation(line: 109, column: 2, scope: !593)
!656 = !DILocation(line: 111, column: 2, scope: !565)
!657 = !DILocation(line: 111, column: 8, scope: !565)
!658 = !DILocation(line: 111, column: 13, scope: !565)
!659 = !DILocation(line: 112, column: 24, scope: !565)
!660 = !DILocation(line: 112, column: 28, scope: !565)
!661 = !DILocation(line: 112, column: 15, scope: !565)
!662 = !DILocation(line: 112, column: 2, scope: !565)
!663 = !DILocation(line: 112, column: 8, scope: !565)
!664 = !DILocation(line: 112, column: 13, scope: !565)
!665 = !DILocation(line: 113, column: 9, scope: !565)
!666 = !DILocation(line: 113, column: 15, scope: !565)
!667 = !DILocation(line: 113, column: 21, scope: !565)
!668 = !DILocation(line: 113, column: 26, scope: !565)
!669 = !DILocation(line: 113, column: 2, scope: !565)
!670 = !DILocation(line: 114, column: 13, scope: !565)
!671 = !DILocation(line: 114, column: 2, scope: !565)
!672 = !DILocation(line: 114, column: 8, scope: !565)
!673 = !DILocation(line: 114, column: 18, scope: !565)
!674 = !DILocation(line: 116, column: 2, scope: !565)
!675 = !DILocation(line: 117, column: 1, scope: !565)
!676 = distinct !DISubprogram(name: "parsestring", scope: !4, file: !4, line: 120, type: !566, isLocal: true, isDefinition: true, scopeLine: 122, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!677 = !DILocalVariable(name: "node", arg: 1, scope: !676, file: !4, line: 120, type: !387)
!678 = !DILocation(line: 120, column: 37, scope: !676)
!679 = !DILocalVariable(name: "fmt", arg: 2, scope: !676, file: !4, line: 120, type: !145)
!680 = !DILocation(line: 120, column: 55, scope: !676)
!681 = !DILocalVariable(name: "fmtend", arg: 3, scope: !676, file: !4, line: 120, type: !145)
!682 = !DILocation(line: 120, column: 72, scope: !676)
!683 = !DILocalVariable(name: "err", arg: 4, scope: !676, file: !4, line: 121, type: !423)
!684 = !DILocation(line: 121, column: 32, scope: !676)
!685 = !DILocalVariable(name: "len", scope: !676, file: !4, line: 123, type: !190)
!686 = !DILocation(line: 123, column: 6, scope: !676)
!687 = !DILocalVariable(name: "write", scope: !676, file: !4, line: 124, type: !304)
!688 = !DILocation(line: 124, column: 8, scope: !676)
!689 = !DILocation(line: 126, column: 8, scope: !676)
!690 = !DILocation(line: 126, column: 17, scope: !676)
!691 = !DILocation(line: 126, column: 15, scope: !676)
!692 = !DILocation(line: 126, column: 21, scope: !676)
!693 = !DILocation(line: 126, column: 6, scope: !676)
!694 = !DILocation(line: 128, column: 2, scope: !676)
!695 = !DILocation(line: 128, column: 8, scope: !676)
!696 = !DILocation(line: 128, column: 13, scope: !676)
!697 = !DILocation(line: 129, column: 32, scope: !676)
!698 = !DILocation(line: 129, column: 36, scope: !676)
!699 = !DILocation(line: 129, column: 23, scope: !676)
!700 = !DILocation(line: 129, column: 21, scope: !676)
!701 = !DILocation(line: 129, column: 2, scope: !676)
!702 = !DILocation(line: 129, column: 8, scope: !676)
!703 = !DILocation(line: 129, column: 13, scope: !676)
!704 = !DILocation(line: 130, column: 2, scope: !676)
!705 = !DILocation(line: 130, column: 9, scope: !706)
!706 = !DILexicalBlockFile(scope: !676, file: !4, discriminator: 1)
!707 = !DILocation(line: 130, column: 16, scope: !706)
!708 = !DILocation(line: 130, column: 13, scope: !706)
!709 = !DILocation(line: 130, column: 2, scope: !706)
!710 = !DILocation(line: 131, column: 8, scope: !711)
!711 = distinct !DILexicalBlock(scope: !712, file: !4, line: 131, column: 7)
!712 = distinct !DILexicalBlock(scope: !676, file: !4, line: 130, column: 24)
!713 = !DILocation(line: 131, column: 7, scope: !711)
!714 = !DILocation(line: 131, column: 12, scope: !711)
!715 = !DILocation(line: 131, column: 7, scope: !712)
!716 = !DILocation(line: 132, column: 7, scope: !717)
!717 = distinct !DILexicalBlock(scope: !711, file: !4, line: 131, column: 21)
!718 = !DILocation(line: 133, column: 13, scope: !717)
!719 = !DILocation(line: 133, column: 12, scope: !717)
!720 = !DILocation(line: 133, column: 4, scope: !717)
!721 = !DILocation(line: 135, column: 6, scope: !722)
!722 = distinct !DILexicalBlock(scope: !717, file: !4, line: 133, column: 18)
!723 = !DILocation(line: 135, column: 12, scope: !722)
!724 = !DILocation(line: 136, column: 5, scope: !722)
!725 = !DILocation(line: 138, column: 6, scope: !722)
!726 = !DILocation(line: 138, column: 12, scope: !722)
!727 = !DILocation(line: 139, column: 5, scope: !722)
!728 = !DILocation(line: 141, column: 6, scope: !722)
!729 = !DILocation(line: 141, column: 12, scope: !722)
!730 = !DILocation(line: 142, column: 5, scope: !722)
!731 = !DILocation(line: 142, column: 5, scope: !732)
!732 = !DILexicalBlockFile(scope: !722, file: !4, discriminator: 1)
!733 = !DILocation(line: 145, column: 15, scope: !722)
!734 = !DILocation(line: 145, column: 14, scope: !722)
!735 = !DILocation(line: 145, column: 6, scope: !722)
!736 = !DILocation(line: 145, column: 12, scope: !722)
!737 = !DILocation(line: 146, column: 5, scope: !722)
!738 = !DILocation(line: 148, column: 3, scope: !717)
!739 = !DILocation(line: 149, column: 14, scope: !711)
!740 = !DILocation(line: 149, column: 13, scope: !711)
!741 = !DILocation(line: 149, column: 5, scope: !711)
!742 = !DILocation(line: 149, column: 11, scope: !711)
!743 = !DILocation(line: 150, column: 8, scope: !712)
!744 = !DILocation(line: 151, column: 6, scope: !712)
!745 = !DILocation(line: 130, column: 2, scope: !746)
!746 = !DILexicalBlockFile(scope: !676, file: !4, discriminator: 2)
!747 = distinct !{!747, !704}
!748 = !DILocation(line: 153, column: 3, scope: !676)
!749 = !DILocation(line: 153, column: 9, scope: !676)
!750 = !DILocation(line: 155, column: 2, scope: !676)
!751 = distinct !DISubprogram(name: "pkg_format_show", scope: !4, file: !4, line: 392, type: !752, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!752 = !DISubroutineType(types: !753)
!753 = !{null, !754, !136, !341}
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64, align: 64)
!755 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !388)
!756 = !DILocalVariable(name: "head", arg: 1, scope: !751, file: !4, line: 392, type: !754)
!757 = !DILocation(line: 392, column: 47, scope: !751)
!758 = !DILocalVariable(name: "pkg", arg: 2, scope: !751, file: !4, line: 393, type: !136)
!759 = !DILocation(line: 393, column: 33, scope: !751)
!760 = !DILocalVariable(name: "pkgbin", arg: 3, scope: !751, file: !4, line: 393, type: !341)
!761 = !DILocation(line: 393, column: 53, scope: !751)
!762 = !DILocalVariable(name: "node", scope: !751, file: !4, line: 395, type: !754)
!763 = !DILocation(line: 395, column: 32, scope: !751)
!764 = !DILocalVariable(name: "vb", scope: !751, file: !4, line: 396, type: !368)
!765 = !DILocation(line: 396, column: 16, scope: !751)
!766 = !DILocalVariable(name: "fb", scope: !751, file: !4, line: 396, type: !368)
!767 = !DILocation(line: 396, column: 23, scope: !751)
!768 = !DILocation(line: 396, column: 23, scope: !769)
!769 = !DILexicalBlockFile(scope: !751, file: !4, discriminator: 1)
!770 = !DILocalVariable(name: "wb", scope: !751, file: !4, line: 396, type: !368)
!771 = !DILocation(line: 396, column: 41, scope: !751)
!772 = !DILocation(line: 396, column: 41, scope: !773)
!773 = !DILexicalBlockFile(scope: !751, file: !4, discriminator: 2)
!774 = !DILocation(line: 398, column: 14, scope: !775)
!775 = distinct !DILexicalBlock(scope: !751, file: !4, line: 398, column: 2)
!776 = !DILocation(line: 398, column: 12, scope: !775)
!777 = !DILocation(line: 398, column: 7, scope: !775)
!778 = !DILocation(line: 398, column: 20, scope: !779)
!779 = !DILexicalBlockFile(scope: !780, file: !4, discriminator: 1)
!780 = distinct !DILexicalBlock(scope: !775, file: !4, line: 398, column: 2)
!781 = !DILocation(line: 398, column: 2, scope: !779)
!782 = !DILocalVariable(name: "ok", scope: !783, file: !4, line: 399, type: !186)
!783 = distinct !DILexicalBlock(scope: !780, file: !4, line: 398, column: 45)
!784 = !DILocation(line: 399, column: 7, scope: !783)
!785 = !DILocalVariable(name: "fmt", scope: !783, file: !4, line: 400, type: !786)
!786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 128, align: 8, elements: !787)
!787 = !{!788}
!788 = !DISubrange(count: 16)
!789 = !DILocation(line: 400, column: 8, scope: !783)
!790 = !DILocation(line: 402, column: 6, scope: !783)
!791 = !DILocation(line: 404, column: 7, scope: !792)
!792 = distinct !DILexicalBlock(scope: !783, file: !4, line: 404, column: 7)
!793 = !DILocation(line: 404, column: 13, scope: !792)
!794 = !DILocation(line: 404, column: 19, scope: !792)
!795 = !DILocation(line: 404, column: 7, scope: !783)
!796 = !DILocation(line: 405, column: 13, scope: !792)
!797 = !DILocation(line: 406, column: 15, scope: !792)
!798 = !DILocation(line: 406, column: 21, scope: !792)
!799 = !DILocation(line: 406, column: 14, scope: !792)
!800 = !DILocation(line: 406, column: 39, scope: !792)
!801 = !DILocation(line: 406, column: 45, scope: !792)
!802 = !DILocation(line: 405, column: 4, scope: !792)
!803 = !DILocation(line: 408, column: 11, scope: !792)
!804 = !DILocation(line: 408, column: 4, scope: !792)
!805 = !DILocation(line: 410, column: 7, scope: !806)
!806 = distinct !DILexicalBlock(scope: !783, file: !4, line: 410, column: 7)
!807 = !DILocation(line: 410, column: 13, scope: !806)
!808 = !DILocation(line: 410, column: 18, scope: !806)
!809 = !DILocation(line: 410, column: 7, scope: !783)
!810 = !DILocation(line: 411, column: 23, scope: !811)
!811 = distinct !DILexicalBlock(scope: !806, file: !4, line: 410, column: 40)
!812 = !DILocation(line: 411, column: 28, scope: !811)
!813 = !DILocation(line: 411, column: 34, scope: !811)
!814 = !DILocation(line: 411, column: 4, scope: !811)
!815 = !DILocation(line: 412, column: 7, scope: !811)
!816 = !DILocation(line: 413, column: 3, scope: !811)
!817 = !DILocation(line: 413, column: 14, scope: !818)
!818 = !DILexicalBlockFile(scope: !819, file: !4, discriminator: 1)
!819 = distinct !DILexicalBlock(scope: !806, file: !4, line: 413, column: 14)
!820 = !DILocation(line: 413, column: 20, scope: !818)
!821 = !DILocation(line: 413, column: 25, scope: !818)
!822 = !DILocalVariable(name: "fip", scope: !823, file: !4, line: 414, type: !361)
!823 = distinct !DILexicalBlock(scope: !819, file: !4, line: 413, column: 46)
!824 = !DILocation(line: 414, column: 28, scope: !823)
!825 = !DILocation(line: 416, column: 38, scope: !823)
!826 = !DILocation(line: 416, column: 44, scope: !823)
!827 = !DILocation(line: 416, column: 10, scope: !823)
!828 = !DILocation(line: 416, column: 8, scope: !823)
!829 = !DILocation(line: 417, column: 8, scope: !830)
!830 = distinct !DILexicalBlock(scope: !823, file: !4, line: 417, column: 8)
!831 = !DILocation(line: 417, column: 12, scope: !830)
!832 = !DILocation(line: 417, column: 8, scope: !823)
!833 = !DILocation(line: 418, column: 38, scope: !830)
!834 = !DILocation(line: 418, column: 44, scope: !830)
!835 = !DILocation(line: 418, column: 11, scope: !830)
!836 = !DILocation(line: 418, column: 9, scope: !830)
!837 = !DILocation(line: 418, column: 5, scope: !830)
!838 = !DILocation(line: 420, column: 8, scope: !839)
!839 = distinct !DILexicalBlock(scope: !823, file: !4, line: 420, column: 8)
!840 = !DILocation(line: 420, column: 8, scope: !823)
!841 = !DILocation(line: 421, column: 5, scope: !842)
!842 = distinct !DILexicalBlock(scope: !839, file: !4, line: 420, column: 13)
!843 = !DILocation(line: 421, column: 10, scope: !842)
!844 = !DILocation(line: 421, column: 21, scope: !842)
!845 = !DILocation(line: 421, column: 26, scope: !842)
!846 = !DILocation(line: 421, column: 37, scope: !842)
!847 = !DILocation(line: 423, column: 5, scope: !842)
!848 = !DILocation(line: 424, column: 24, scope: !842)
!849 = !DILocation(line: 424, column: 32, scope: !842)
!850 = !DILocation(line: 424, column: 5, scope: !842)
!851 = !DILocation(line: 425, column: 5, scope: !842)
!852 = !DILocation(line: 426, column: 8, scope: !842)
!853 = !DILocation(line: 427, column: 4, scope: !842)
!854 = !DILocalVariable(name: "afp", scope: !855, file: !4, line: 428, type: !856)
!855 = distinct !DILexicalBlock(scope: !839, file: !4, line: 427, column: 11)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64, align: 64)
!857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !224)
!858 = !DILocation(line: 428, column: 34, scope: !855)
!859 = !DILocation(line: 430, column: 30, scope: !855)
!860 = !DILocation(line: 430, column: 38, scope: !855)
!861 = !DILocation(line: 430, column: 44, scope: !855)
!862 = !DILocation(line: 430, column: 50, scope: !855)
!863 = !DILocation(line: 430, column: 11, scope: !855)
!864 = !DILocation(line: 430, column: 9, scope: !855)
!865 = !DILocation(line: 431, column: 9, scope: !866)
!866 = distinct !DILexicalBlock(scope: !855, file: !4, line: 431, column: 9)
!867 = !DILocation(line: 431, column: 9, scope: !855)
!868 = !DILocation(line: 432, column: 25, scope: !869)
!869 = distinct !DILexicalBlock(scope: !866, file: !4, line: 431, column: 14)
!870 = !DILocation(line: 432, column: 30, scope: !869)
!871 = !DILocation(line: 432, column: 35, scope: !869)
!872 = !DILocation(line: 432, column: 6, scope: !869)
!873 = !DILocation(line: 433, column: 9, scope: !869)
!874 = !DILocation(line: 434, column: 5, scope: !869)
!875 = !DILocation(line: 436, column: 3, scope: !823)
!876 = !DILocation(line: 438, column: 7, scope: !877)
!877 = distinct !DILexicalBlock(scope: !783, file: !4, line: 438, column: 7)
!878 = !DILocation(line: 438, column: 7, scope: !783)
!879 = !DILocalVariable(name: "len", scope: !880, file: !4, line: 439, type: !133)
!880 = distinct !DILexicalBlock(scope: !877, file: !4, line: 438, column: 11)
!881 = !DILocation(line: 439, column: 11, scope: !880)
!882 = !DILocation(line: 439, column: 20, scope: !880)
!883 = !DILocation(line: 440, column: 9, scope: !884)
!884 = distinct !DILexicalBlock(scope: !880, file: !4, line: 440, column: 8)
!885 = !DILocation(line: 440, column: 15, scope: !884)
!886 = !DILocation(line: 440, column: 21, scope: !884)
!887 = !DILocation(line: 440, column: 26, scope: !884)
!888 = !DILocation(line: 440, column: 30, scope: !889)
!889 = !DILexicalBlockFile(scope: !884, file: !4, discriminator: 1)
!890 = !DILocation(line: 440, column: 36, scope: !889)
!891 = !DILocation(line: 440, column: 42, scope: !889)
!892 = !DILocation(line: 440, column: 34, scope: !889)
!893 = !DILocation(line: 440, column: 8, scope: !889)
!894 = !DILocation(line: 441, column: 11, scope: !884)
!895 = !DILocation(line: 441, column: 17, scope: !884)
!896 = !DILocation(line: 441, column: 9, scope: !884)
!897 = !DILocation(line: 441, column: 5, scope: !884)
!898 = !DILocation(line: 442, column: 27, scope: !880)
!899 = !DILocation(line: 442, column: 32, scope: !880)
!900 = !DILocation(line: 442, column: 4, scope: !880)
!901 = !DILocation(line: 443, column: 3, scope: !880)
!902 = !DILocation(line: 445, column: 3, scope: !783)
!903 = !DILocation(line: 446, column: 2, scope: !783)
!904 = !DILocation(line: 398, column: 33, scope: !905)
!905 = !DILexicalBlockFile(scope: !780, file: !4, discriminator: 2)
!906 = !DILocation(line: 398, column: 39, scope: !905)
!907 = !DILocation(line: 398, column: 31, scope: !905)
!908 = !DILocation(line: 398, column: 2, scope: !905)
!909 = distinct !{!909, !910}
!910 = !DILocation(line: 398, column: 2, scope: !751)
!911 = !DILocation(line: 448, column: 9, scope: !912)
!912 = distinct !DILexicalBlock(scope: !751, file: !4, line: 448, column: 6)
!913 = !DILocation(line: 448, column: 6, scope: !912)
!914 = !DILocation(line: 448, column: 6, scope: !751)
!915 = !DILocation(line: 449, column: 3, scope: !916)
!916 = distinct !DILexicalBlock(scope: !912, file: !4, line: 448, column: 14)
!917 = !DILocation(line: 450, column: 12, scope: !916)
!918 = !DILocation(line: 450, column: 16, scope: !916)
!919 = !DILocation(line: 450, column: 3, scope: !916)
!920 = !DILocation(line: 451, column: 2, scope: !916)
!921 = !DILocation(line: 453, column: 2, scope: !751)
!922 = !DILocation(line: 454, column: 2, scope: !751)
!923 = !DILocation(line: 455, column: 2, scope: !751)
!924 = !DILocation(line: 456, column: 1, scope: !751)
!925 = distinct !DISubprogram(name: "virt_package", scope: !4, file: !4, line: 221, type: !365, isLocal: true, isDefinition: true, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!926 = !DILocalVariable(name: "vb", arg: 1, scope: !925, file: !4, line: 221, type: !367)
!927 = !DILocation(line: 221, column: 29, scope: !925)
!928 = !DILocalVariable(name: "pkg", arg: 2, scope: !925, file: !4, line: 222, type: !374)
!929 = !DILocation(line: 222, column: 36, scope: !925)
!930 = !DILocalVariable(name: "pkgbin", arg: 3, scope: !925, file: !4, line: 222, type: !376)
!931 = !DILocation(line: 222, column: 62, scope: !925)
!932 = !DILocalVariable(name: "flags", arg: 4, scope: !925, file: !4, line: 223, type: !122)
!933 = !DILocation(line: 223, column: 31, scope: !925)
!934 = !DILocalVariable(name: "fip", arg: 5, scope: !925, file: !4, line: 223, type: !361)
!935 = !DILocation(line: 223, column: 62, scope: !925)
!936 = !DILocation(line: 225, column: 25, scope: !925)
!937 = !DILocation(line: 225, column: 29, scope: !925)
!938 = !DILocation(line: 225, column: 34, scope: !925)
!939 = !DILocation(line: 225, column: 2, scope: !925)
!940 = !DILocation(line: 226, column: 1, scope: !925)
!941 = distinct !DISubprogram(name: "virt_synopsis", scope: !4, file: !4, line: 275, type: !365, isLocal: true, isDefinition: true, scopeLine: 278, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!942 = !DILocalVariable(name: "vb", arg: 1, scope: !941, file: !4, line: 275, type: !367)
!943 = !DILocation(line: 275, column: 30, scope: !941)
!944 = !DILocalVariable(name: "pkg", arg: 2, scope: !941, file: !4, line: 276, type: !374)
!945 = !DILocation(line: 276, column: 37, scope: !941)
!946 = !DILocalVariable(name: "pkgbin", arg: 3, scope: !941, file: !4, line: 276, type: !376)
!947 = !DILocation(line: 276, column: 63, scope: !941)
!948 = !DILocalVariable(name: "flags", arg: 4, scope: !941, file: !4, line: 277, type: !122)
!949 = !DILocation(line: 277, column: 32, scope: !941)
!950 = !DILocalVariable(name: "fip", arg: 5, scope: !941, file: !4, line: 277, type: !361)
!951 = !DILocation(line: 277, column: 63, scope: !941)
!952 = !DILocalVariable(name: "desc", scope: !941, file: !4, line: 279, type: !145)
!953 = !DILocation(line: 279, column: 14, scope: !941)
!954 = !DILocalVariable(name: "len", scope: !941, file: !4, line: 280, type: !190)
!955 = !DILocation(line: 280, column: 6, scope: !941)
!956 = !DILocation(line: 282, column: 25, scope: !941)
!957 = !DILocation(line: 282, column: 30, scope: !941)
!958 = !DILocation(line: 282, column: 9, scope: !941)
!959 = !DILocation(line: 282, column: 7, scope: !941)
!960 = !DILocation(line: 284, column: 17, scope: !941)
!961 = !DILocation(line: 284, column: 21, scope: !941)
!962 = !DILocation(line: 284, column: 27, scope: !941)
!963 = !DILocation(line: 284, column: 2, scope: !941)
!964 = !DILocation(line: 285, column: 1, scope: !941)
!965 = distinct !DISubprogram(name: "virt_status_abbrev", scope: !4, file: !4, line: 229, type: !365, isLocal: true, isDefinition: true, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!966 = !DILocalVariable(name: "vb", arg: 1, scope: !965, file: !4, line: 229, type: !367)
!967 = !DILocation(line: 229, column: 35, scope: !965)
!968 = !DILocalVariable(name: "pkg", arg: 2, scope: !965, file: !4, line: 230, type: !374)
!969 = !DILocation(line: 230, column: 42, scope: !965)
!970 = !DILocalVariable(name: "pkgbin", arg: 3, scope: !965, file: !4, line: 230, type: !376)
!971 = !DILocation(line: 230, column: 68, scope: !965)
!972 = !DILocalVariable(name: "flags", arg: 4, scope: !965, file: !4, line: 231, type: !122)
!973 = !DILocation(line: 231, column: 37, scope: !965)
!974 = !DILocalVariable(name: "fip", arg: 5, scope: !965, file: !4, line: 231, type: !361)
!975 = !DILocation(line: 231, column: 68, scope: !965)
!976 = !DILocation(line: 233, column: 6, scope: !977)
!977 = distinct !DILexicalBlock(scope: !965, file: !4, line: 233, column: 6)
!978 = !DILocation(line: 233, column: 17, scope: !977)
!979 = !DILocation(line: 233, column: 22, scope: !977)
!980 = !DILocation(line: 233, column: 13, scope: !977)
!981 = !DILocation(line: 233, column: 6, scope: !965)
!982 = !DILocation(line: 234, column: 3, scope: !977)
!983 = !DILocation(line: 236, column: 18, scope: !965)
!984 = !DILocation(line: 236, column: 38, scope: !965)
!985 = !DILocation(line: 236, column: 22, scope: !965)
!986 = !DILocation(line: 236, column: 2, scope: !987)
!987 = !DILexicalBlockFile(scope: !965, file: !4, discriminator: 1)
!988 = !DILocation(line: 237, column: 18, scope: !965)
!989 = !DILocation(line: 237, column: 40, scope: !965)
!990 = !DILocation(line: 237, column: 22, scope: !965)
!991 = !DILocation(line: 237, column: 2, scope: !987)
!992 = !DILocation(line: 238, column: 18, scope: !965)
!993 = !DILocation(line: 238, column: 39, scope: !965)
!994 = !DILocation(line: 238, column: 22, scope: !965)
!995 = !DILocation(line: 238, column: 2, scope: !987)
!996 = !DILocation(line: 239, column: 1, scope: !965)
!997 = !DILocation(line: 239, column: 1, scope: !987)
!998 = distinct !DISubprogram(name: "virt_status_want", scope: !4, file: !4, line: 242, type: !365, isLocal: true, isDefinition: true, scopeLine: 245, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!999 = !DILocalVariable(name: "vb", arg: 1, scope: !998, file: !4, line: 242, type: !367)
!1000 = !DILocation(line: 242, column: 33, scope: !998)
!1001 = !DILocalVariable(name: "pkg", arg: 2, scope: !998, file: !4, line: 243, type: !374)
!1002 = !DILocation(line: 243, column: 40, scope: !998)
!1003 = !DILocalVariable(name: "pkgbin", arg: 3, scope: !998, file: !4, line: 243, type: !376)
!1004 = !DILocation(line: 243, column: 66, scope: !998)
!1005 = !DILocalVariable(name: "flags", arg: 4, scope: !998, file: !4, line: 244, type: !122)
!1006 = !DILocation(line: 244, column: 35, scope: !998)
!1007 = !DILocalVariable(name: "fip", arg: 5, scope: !998, file: !4, line: 244, type: !361)
!1008 = !DILocation(line: 244, column: 66, scope: !998)
!1009 = !DILocation(line: 246, column: 6, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !998, file: !4, line: 246, column: 6)
!1011 = !DILocation(line: 246, column: 17, scope: !1010)
!1012 = !DILocation(line: 246, column: 22, scope: !1010)
!1013 = !DILocation(line: 246, column: 13, scope: !1010)
!1014 = !DILocation(line: 246, column: 6, scope: !998)
!1015 = !DILocation(line: 247, column: 3, scope: !1010)
!1016 = !DILocation(line: 249, column: 17, scope: !998)
!1017 = !DILocation(line: 249, column: 35, scope: !998)
!1018 = !DILocation(line: 249, column: 21, scope: !998)
!1019 = !DILocation(line: 249, column: 62, scope: !998)
!1020 = !DILocation(line: 249, column: 48, scope: !1021)
!1021 = !DILexicalBlockFile(scope: !998, file: !4, discriminator: 1)
!1022 = !DILocation(line: 249, column: 41, scope: !1023)
!1023 = !DILexicalBlockFile(scope: !998, file: !4, discriminator: 2)
!1024 = !DILocation(line: 249, column: 2, scope: !1025)
!1025 = !DILexicalBlockFile(scope: !998, file: !4, discriminator: 3)
!1026 = !DILocation(line: 250, column: 1, scope: !998)
!1027 = !DILocation(line: 250, column: 1, scope: !1021)
!1028 = distinct !DISubprogram(name: "virt_status_status", scope: !4, file: !4, line: 253, type: !365, isLocal: true, isDefinition: true, scopeLine: 256, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!1029 = !DILocalVariable(name: "vb", arg: 1, scope: !1028, file: !4, line: 253, type: !367)
!1030 = !DILocation(line: 253, column: 35, scope: !1028)
!1031 = !DILocalVariable(name: "pkg", arg: 2, scope: !1028, file: !4, line: 254, type: !374)
!1032 = !DILocation(line: 254, column: 42, scope: !1028)
!1033 = !DILocalVariable(name: "pkgbin", arg: 3, scope: !1028, file: !4, line: 254, type: !376)
!1034 = !DILocation(line: 254, column: 68, scope: !1028)
!1035 = !DILocalVariable(name: "flags", arg: 4, scope: !1028, file: !4, line: 255, type: !122)
!1036 = !DILocation(line: 255, column: 37, scope: !1028)
!1037 = !DILocalVariable(name: "fip", arg: 5, scope: !1028, file: !4, line: 255, type: !361)
!1038 = !DILocation(line: 255, column: 68, scope: !1028)
!1039 = !DILocation(line: 257, column: 6, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1028, file: !4, line: 257, column: 6)
!1041 = !DILocation(line: 257, column: 17, scope: !1040)
!1042 = !DILocation(line: 257, column: 22, scope: !1040)
!1043 = !DILocation(line: 257, column: 13, scope: !1040)
!1044 = !DILocation(line: 257, column: 6, scope: !1028)
!1045 = !DILocation(line: 258, column: 3, scope: !1040)
!1046 = !DILocation(line: 260, column: 17, scope: !1028)
!1047 = !DILocation(line: 260, column: 37, scope: !1028)
!1048 = !DILocation(line: 260, column: 21, scope: !1028)
!1049 = !DILocation(line: 260, column: 66, scope: !1028)
!1050 = !DILocation(line: 260, column: 50, scope: !1051)
!1051 = !DILexicalBlockFile(scope: !1028, file: !4, discriminator: 1)
!1052 = !DILocation(line: 260, column: 43, scope: !1053)
!1053 = !DILexicalBlockFile(scope: !1028, file: !4, discriminator: 2)
!1054 = !DILocation(line: 260, column: 2, scope: !1055)
!1055 = !DILexicalBlockFile(scope: !1028, file: !4, discriminator: 3)
!1056 = !DILocation(line: 261, column: 1, scope: !1028)
!1057 = !DILocation(line: 261, column: 1, scope: !1051)
!1058 = distinct !DISubprogram(name: "virt_status_eflag", scope: !4, file: !4, line: 264, type: !365, isLocal: true, isDefinition: true, scopeLine: 267, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!1059 = !DILocalVariable(name: "vb", arg: 1, scope: !1058, file: !4, line: 264, type: !367)
!1060 = !DILocation(line: 264, column: 34, scope: !1058)
!1061 = !DILocalVariable(name: "pkg", arg: 2, scope: !1058, file: !4, line: 265, type: !374)
!1062 = !DILocation(line: 265, column: 41, scope: !1058)
!1063 = !DILocalVariable(name: "pkgbin", arg: 3, scope: !1058, file: !4, line: 265, type: !376)
!1064 = !DILocation(line: 265, column: 67, scope: !1058)
!1065 = !DILocalVariable(name: "flags", arg: 4, scope: !1058, file: !4, line: 266, type: !122)
!1066 = !DILocation(line: 266, column: 36, scope: !1058)
!1067 = !DILocalVariable(name: "fip", arg: 5, scope: !1058, file: !4, line: 266, type: !361)
!1068 = !DILocation(line: 266, column: 67, scope: !1058)
!1069 = !DILocation(line: 268, column: 6, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1058, file: !4, line: 268, column: 6)
!1071 = !DILocation(line: 268, column: 17, scope: !1070)
!1072 = !DILocation(line: 268, column: 22, scope: !1070)
!1073 = !DILocation(line: 268, column: 13, scope: !1070)
!1074 = !DILocation(line: 268, column: 6, scope: !1058)
!1075 = !DILocation(line: 269, column: 3, scope: !1070)
!1076 = !DILocation(line: 271, column: 17, scope: !1058)
!1077 = !DILocation(line: 271, column: 36, scope: !1058)
!1078 = !DILocation(line: 271, column: 21, scope: !1058)
!1079 = !DILocation(line: 271, column: 64, scope: !1058)
!1080 = !DILocation(line: 271, column: 49, scope: !1081)
!1081 = !DILexicalBlockFile(scope: !1058, file: !4, discriminator: 1)
!1082 = !DILocation(line: 271, column: 42, scope: !1083)
!1083 = !DILexicalBlockFile(scope: !1058, file: !4, discriminator: 2)
!1084 = !DILocation(line: 271, column: 2, scope: !1085)
!1085 = !DILexicalBlockFile(scope: !1058, file: !4, discriminator: 3)
!1086 = !DILocation(line: 272, column: 1, scope: !1058)
!1087 = !DILocation(line: 272, column: 1, scope: !1081)
!1088 = distinct !DISubprogram(name: "virt_fsys_files", scope: !4, file: !4, line: 312, type: !365, isLocal: true, isDefinition: true, scopeLine: 315, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!1089 = !DILocalVariable(name: "vb", arg: 1, scope: !1088, file: !4, line: 312, type: !367)
!1090 = !DILocation(line: 312, column: 32, scope: !1088)
!1091 = !DILocalVariable(name: "pkg", arg: 2, scope: !1088, file: !4, line: 313, type: !374)
!1092 = !DILocation(line: 313, column: 39, scope: !1088)
!1093 = !DILocalVariable(name: "pkgbin", arg: 3, scope: !1088, file: !4, line: 313, type: !376)
!1094 = !DILocation(line: 313, column: 65, scope: !1088)
!1095 = !DILocalVariable(name: "flags", arg: 4, scope: !1088, file: !4, line: 314, type: !122)
!1096 = !DILocation(line: 314, column: 34, scope: !1088)
!1097 = !DILocalVariable(name: "fip", arg: 5, scope: !1088, file: !4, line: 314, type: !361)
!1098 = !DILocation(line: 314, column: 65, scope: !1088)
!1099 = !DILocalVariable(name: "node", scope: !1088, file: !4, line: 316, type: !266)
!1100 = !DILocation(line: 316, column: 29, scope: !1088)
!1101 = !DILocation(line: 325, column: 50, scope: !1088)
!1102 = !DILocation(line: 325, column: 2, scope: !1088)
!1103 = !DILocation(line: 327, column: 7, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1088, file: !4, line: 327, column: 6)
!1105 = !DILocation(line: 327, column: 12, scope: !1104)
!1106 = !DILocation(line: 327, column: 6, scope: !1088)
!1107 = !DILocation(line: 328, column: 3, scope: !1104)
!1108 = !DILocation(line: 330, column: 14, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1088, file: !4, line: 330, column: 2)
!1110 = !DILocation(line: 330, column: 19, scope: !1109)
!1111 = !DILocation(line: 330, column: 12, scope: !1109)
!1112 = !DILocation(line: 330, column: 7, scope: !1109)
!1113 = !DILocation(line: 330, column: 26, scope: !1114)
!1114 = !DILexicalBlockFile(scope: !1115, file: !4, discriminator: 1)
!1115 = distinct !DILexicalBlock(scope: !1109, file: !4, line: 330, column: 2)
!1116 = !DILocation(line: 330, column: 2, scope: !1114)
!1117 = !DILocation(line: 331, column: 19, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1115, file: !4, line: 330, column: 51)
!1119 = !DILocation(line: 331, column: 3, scope: !1118)
!1120 = !DILocation(line: 332, column: 18, scope: !1118)
!1121 = !DILocation(line: 332, column: 22, scope: !1118)
!1122 = !DILocation(line: 332, column: 28, scope: !1118)
!1123 = !DILocation(line: 332, column: 38, scope: !1118)
!1124 = !DILocation(line: 332, column: 51, scope: !1118)
!1125 = !DILocation(line: 332, column: 57, scope: !1118)
!1126 = !DILocation(line: 332, column: 67, scope: !1118)
!1127 = !DILocation(line: 332, column: 44, scope: !1118)
!1128 = !DILocation(line: 332, column: 3, scope: !1129)
!1129 = !DILexicalBlockFile(scope: !1118, file: !4, discriminator: 1)
!1130 = !DILocation(line: 333, column: 19, scope: !1118)
!1131 = !DILocation(line: 333, column: 3, scope: !1118)
!1132 = !DILocation(line: 334, column: 2, scope: !1118)
!1133 = !DILocation(line: 330, column: 39, scope: !1134)
!1134 = !DILexicalBlockFile(scope: !1115, file: !4, discriminator: 2)
!1135 = !DILocation(line: 330, column: 45, scope: !1134)
!1136 = !DILocation(line: 330, column: 37, scope: !1134)
!1137 = !DILocation(line: 330, column: 2, scope: !1134)
!1138 = distinct !{!1138, !1139}
!1139 = !DILocation(line: 330, column: 2, scope: !1088)
!1140 = !DILocation(line: 335, column: 1, scope: !1088)
!1141 = distinct !DISubprogram(name: "virt_fsys_last_modified", scope: !4, file: !4, line: 288, type: !365, isLocal: true, isDefinition: true, scopeLine: 291, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!1142 = !DILocalVariable(name: "vb", arg: 1, scope: !1141, file: !4, line: 288, type: !367)
!1143 = !DILocation(line: 288, column: 40, scope: !1141)
!1144 = !DILocalVariable(name: "pkg", arg: 2, scope: !1141, file: !4, line: 289, type: !374)
!1145 = !DILocation(line: 289, column: 47, scope: !1141)
!1146 = !DILocalVariable(name: "pkgbin", arg: 3, scope: !1141, file: !4, line: 289, type: !376)
!1147 = !DILocation(line: 289, column: 73, scope: !1141)
!1148 = !DILocalVariable(name: "flags", arg: 4, scope: !1141, file: !4, line: 290, type: !122)
!1149 = !DILocation(line: 290, column: 42, scope: !1141)
!1150 = !DILocalVariable(name: "fip", arg: 5, scope: !1141, file: !4, line: 290, type: !361)
!1151 = !DILocation(line: 290, column: 73, scope: !1141)
!1152 = !DILocalVariable(name: "listfile", scope: !1141, file: !4, line: 292, type: !145)
!1153 = !DILocation(line: 292, column: 14, scope: !1141)
!1154 = !DILocalVariable(name: "st", scope: !1141, file: !4, line: 293, type: !1155)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1156, line: 46, size: 1152, align: 64, elements: !1157)
!1156 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!1157 = !{!1158, !1159, !1160, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1170, !1172, !1180, !1181, !1182}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1155, file: !1156, line: 48, baseType: !318, size: 64, align: 64)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1155, file: !1156, line: 53, baseType: !321, size: 64, align: 64, offset: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1155, file: !1156, line: 61, baseType: !1161, size: 64, align: 64, offset: 128)
!1161 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !296, line: 130, baseType: !135)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1155, file: !1156, line: 62, baseType: !302, size: 32, align: 32, offset: 192)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1155, file: !1156, line: 64, baseType: !295, size: 32, align: 32, offset: 224)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1155, file: !1156, line: 65, baseType: !299, size: 32, align: 32, offset: 256)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1155, file: !1156, line: 67, baseType: !190, size: 32, align: 32, offset: 288)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1155, file: !1156, line: 69, baseType: !318, size: 64, align: 64, offset: 320)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1155, file: !1156, line: 74, baseType: !324, size: 64, align: 64, offset: 384)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1155, file: !1156, line: 78, baseType: !1169, size: 64, align: 64, offset: 448)
!1169 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !296, line: 153, baseType: !325)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1155, file: !1156, line: 80, baseType: !1171, size: 64, align: 64, offset: 512)
!1171 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !296, line: 158, baseType: !325)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1155, file: !1156, line: 91, baseType: !1173, size: 128, align: 64, offset: 576)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1174, line: 120, size: 128, align: 64, elements: !1175)
!1174 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!1175 = !{!1176, !1178}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1173, file: !1174, line: 122, baseType: !1177, size: 64, align: 64)
!1177 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !296, line: 139, baseType: !325)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1173, file: !1174, line: 123, baseType: !1179, size: 64, align: 64, offset: 64)
!1179 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !296, line: 175, baseType: !325)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1155, file: !1156, line: 92, baseType: !1173, size: 128, align: 64, offset: 704)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1155, file: !1156, line: 93, baseType: !1173, size: 128, align: 64, offset: 832)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1155, file: !1156, line: 106, baseType: !1183, size: 192, align: 64, offset: 960)
!1183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1179, size: 192, align: 64, elements: !1184)
!1184 = !{!1185}
!1185 = !DISubrange(count: 3)
!1186 = !DILocation(line: 293, column: 14, scope: !1141)
!1187 = !DILocation(line: 295, column: 6, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1141, file: !4, line: 295, column: 6)
!1189 = !DILocation(line: 295, column: 11, scope: !1188)
!1190 = !DILocation(line: 295, column: 18, scope: !1188)
!1191 = !DILocation(line: 295, column: 6, scope: !1141)
!1192 = !DILocation(line: 296, column: 3, scope: !1188)
!1193 = !DILocation(line: 298, column: 33, scope: !1141)
!1194 = !DILocation(line: 298, column: 38, scope: !1141)
!1195 = !DILocation(line: 298, column: 13, scope: !1141)
!1196 = !DILocation(line: 298, column: 11, scope: !1141)
!1197 = !DILocation(line: 300, column: 11, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1141, file: !4, line: 300, column: 6)
!1199 = !DILocation(line: 300, column: 6, scope: !1198)
!1200 = !DILocation(line: 300, column: 26, scope: !1198)
!1201 = !DILocation(line: 300, column: 6, scope: !1141)
!1202 = !DILocation(line: 301, column: 8, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1204, file: !4, line: 301, column: 6)
!1204 = distinct !DILexicalBlock(scope: !1198, file: !4, line: 300, column: 31)
!1205 = !DILocation(line: 301, column: 7, scope: !1203)
!1206 = !DILocation(line: 301, column: 12, scope: !1203)
!1207 = !DILocation(line: 301, column: 6, scope: !1204)
!1208 = !DILocation(line: 302, column: 4, scope: !1203)
!1209 = !DILocation(line: 304, column: 10, scope: !1204)
!1210 = !DILocation(line: 305, column: 29, scope: !1204)
!1211 = !DILocation(line: 305, column: 34, scope: !1204)
!1212 = !DILocation(line: 305, column: 11, scope: !1204)
!1213 = !DILocation(line: 304, column: 3, scope: !1214)
!1214 = !DILexicalBlockFile(scope: !1204, file: !4, discriminator: 1)
!1215 = !DILocation(line: 304, column: 3, scope: !1204)
!1216 = !DILocation(line: 308, column: 16, scope: !1141)
!1217 = !DILocation(line: 308, column: 29, scope: !1141)
!1218 = !DILocation(line: 308, column: 37, scope: !1141)
!1219 = !DILocation(line: 308, column: 2, scope: !1141)
!1220 = !DILocation(line: 309, column: 1, scope: !1141)
!1221 = !DILocation(line: 309, column: 1, scope: !1222)
!1222 = !DILexicalBlockFile(scope: !1141, file: !4, discriminator: 1)
!1223 = distinct !DISubprogram(name: "virt_source_package", scope: !4, file: !4, line: 338, type: !365, isLocal: true, isDefinition: true, scopeLine: 341, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!1224 = !DILocalVariable(name: "vb", arg: 1, scope: !1223, file: !4, line: 338, type: !367)
!1225 = !DILocation(line: 338, column: 36, scope: !1223)
!1226 = !DILocalVariable(name: "pkg", arg: 2, scope: !1223, file: !4, line: 339, type: !374)
!1227 = !DILocation(line: 339, column: 43, scope: !1223)
!1228 = !DILocalVariable(name: "pkgbin", arg: 3, scope: !1223, file: !4, line: 339, type: !376)
!1229 = !DILocation(line: 339, column: 69, scope: !1223)
!1230 = !DILocalVariable(name: "flags", arg: 4, scope: !1223, file: !4, line: 340, type: !122)
!1231 = !DILocation(line: 340, column: 38, scope: !1223)
!1232 = !DILocalVariable(name: "fip", arg: 5, scope: !1223, file: !4, line: 340, type: !361)
!1233 = !DILocation(line: 340, column: 69, scope: !1223)
!1234 = !DILocalVariable(name: "name", scope: !1223, file: !4, line: 342, type: !145)
!1235 = !DILocation(line: 342, column: 14, scope: !1223)
!1236 = !DILocalVariable(name: "len", scope: !1223, file: !4, line: 343, type: !133)
!1237 = !DILocation(line: 343, column: 9, scope: !1223)
!1238 = !DILocation(line: 345, column: 9, scope: !1223)
!1239 = !DILocation(line: 345, column: 17, scope: !1223)
!1240 = !DILocation(line: 345, column: 7, scope: !1223)
!1241 = !DILocation(line: 346, column: 6, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1223, file: !4, line: 346, column: 6)
!1243 = !DILocation(line: 346, column: 11, scope: !1242)
!1244 = !DILocation(line: 346, column: 6, scope: !1223)
!1245 = !DILocation(line: 347, column: 10, scope: !1242)
!1246 = !DILocation(line: 347, column: 15, scope: !1242)
!1247 = !DILocation(line: 347, column: 20, scope: !1242)
!1248 = !DILocation(line: 347, column: 8, scope: !1242)
!1249 = !DILocation(line: 347, column: 3, scope: !1242)
!1250 = !DILocation(line: 349, column: 16, scope: !1223)
!1251 = !DILocation(line: 349, column: 8, scope: !1223)
!1252 = !DILocation(line: 349, column: 6, scope: !1223)
!1253 = !DILocation(line: 351, column: 17, scope: !1223)
!1254 = !DILocation(line: 351, column: 21, scope: !1223)
!1255 = !DILocation(line: 351, column: 27, scope: !1223)
!1256 = !DILocation(line: 351, column: 2, scope: !1223)
!1257 = !DILocation(line: 352, column: 1, scope: !1223)
!1258 = distinct !DISubprogram(name: "virt_source_version", scope: !4, file: !4, line: 355, type: !365, isLocal: true, isDefinition: true, scopeLine: 358, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!1259 = !DILocalVariable(name: "vb", arg: 1, scope: !1258, file: !4, line: 355, type: !367)
!1260 = !DILocation(line: 355, column: 36, scope: !1258)
!1261 = !DILocalVariable(name: "pkg", arg: 2, scope: !1258, file: !4, line: 356, type: !374)
!1262 = !DILocation(line: 356, column: 43, scope: !1258)
!1263 = !DILocalVariable(name: "pkgbin", arg: 3, scope: !1258, file: !4, line: 356, type: !376)
!1264 = !DILocation(line: 356, column: 69, scope: !1258)
!1265 = !DILocalVariable(name: "flags", arg: 4, scope: !1258, file: !4, line: 357, type: !122)
!1266 = !DILocation(line: 357, column: 38, scope: !1258)
!1267 = !DILocalVariable(name: "fip", arg: 5, scope: !1258, file: !4, line: 357, type: !361)
!1268 = !DILocation(line: 357, column: 69, scope: !1258)
!1269 = !DILocation(line: 359, column: 28, scope: !1258)
!1270 = !DILocation(line: 359, column: 32, scope: !1258)
!1271 = !DILocation(line: 359, column: 37, scope: !1258)
!1272 = !DILocation(line: 359, column: 2, scope: !1258)
!1273 = !DILocation(line: 360, column: 1, scope: !1258)
!1274 = distinct !DISubprogram(name: "virt_source_upstream_version", scope: !4, file: !4, line: 363, type: !365, isLocal: true, isDefinition: true, scopeLine: 366, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!1275 = !DILocalVariable(name: "vb", arg: 1, scope: !1274, file: !4, line: 363, type: !367)
!1276 = !DILocation(line: 363, column: 45, scope: !1274)
!1277 = !DILocalVariable(name: "pkg", arg: 2, scope: !1274, file: !4, line: 364, type: !374)
!1278 = !DILocation(line: 364, column: 52, scope: !1274)
!1279 = !DILocalVariable(name: "pkgbin", arg: 3, scope: !1274, file: !4, line: 364, type: !376)
!1280 = !DILocation(line: 364, column: 78, scope: !1274)
!1281 = !DILocalVariable(name: "flags", arg: 4, scope: !1274, file: !4, line: 365, type: !122)
!1282 = !DILocation(line: 365, column: 47, scope: !1274)
!1283 = !DILocalVariable(name: "fip", arg: 5, scope: !1274, file: !4, line: 365, type: !361)
!1284 = !DILocation(line: 365, column: 78, scope: !1274)
!1285 = !DILocalVariable(name: "version", scope: !1274, file: !4, line: 367, type: !178)
!1286 = !DILocation(line: 367, column: 22, scope: !1274)
!1287 = !DILocation(line: 369, column: 31, scope: !1274)
!1288 = !DILocation(line: 369, column: 36, scope: !1274)
!1289 = !DILocation(line: 369, column: 2, scope: !1274)
!1290 = !DILocation(line: 371, column: 17, scope: !1274)
!1291 = !DILocation(line: 371, column: 29, scope: !1274)
!1292 = !DILocation(line: 371, column: 53, scope: !1274)
!1293 = !DILocation(line: 371, column: 38, scope: !1274)
!1294 = !DILocation(line: 371, column: 2, scope: !1295)
!1295 = !DILexicalBlockFile(scope: !1274, file: !4, discriminator: 1)
!1296 = !DILocation(line: 372, column: 17, scope: !1274)
!1297 = !DILocation(line: 372, column: 2, scope: !1274)
!1298 = !DILocation(line: 373, column: 1, scope: !1274)
