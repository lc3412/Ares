; ModuleID = './[inter]lib--dpkg--triglib.o.i'
source_filename = "./[inter]lib--dpkg--triglib.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon.3 = type { %struct.trigfileint*, %struct.trigfileint* }
%struct.trigfileint = type { %struct.pkginfo*, %struct.pkgbin*, %struct.fsys_namenode*, i32, %struct.trigfileint*, %struct.anon.1 }
%struct.pkginfo = type { %struct.pkgset*, %struct.pkginfo*, i32, i32, i32, i32, i8*, i8*, %struct.dpkg_version, %struct.pkgbin, %struct.pkgbin, %struct.perpackagestate*, %struct.archivedetails*, %struct.anon, %struct.trigaw*, %struct.trigpend*, %struct.fsys_namenode_list*, i64, i8, i8 }
%struct.pkgset = type { %struct.pkgset*, i8*, %struct.pkginfo, %struct.anon.2, i32 }
%struct.anon.2 = type { %struct.deppossi*, %struct.deppossi* }
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
%struct.file_ondisk_id = type { i64, i64 }
%struct.anon.1 = type { %struct.trigfileint*, %struct.trigfileint* }
%struct.trig_hooks = type { void (%struct.pkginfo*)*, void (i32)*, %struct.fsys_namenode* (i8*, i1)*, %struct.trigfileint** (%struct.fsys_namenode*)*, i8* (%struct.fsys_namenode*)* }
%struct.trigkindinfo = type { void ()*, void (%struct.pkginfo*)*, void ()*, void (i8*, %struct.pkginfo*, %struct.pkgbin*, i32, i32)* }
%struct.trigdefmeths = type { void (i8*)*, void (i8*)*, void ()* }
%struct.varbuf = type { i64, i64, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.atomic_file = type { i32, i8*, i8*, %struct._IO_FILE* }
%struct.dpkg_error = type { i32, i32, i8* }

@.str = private unnamed_addr constant [10 x i8] c"triglib.c\00", align 1
@__func__.trig_clear_awaiters = private unnamed_addr constant [20 x i8] c"trig_clear_awaiters\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"package %s has pending triggers\00", align 1
@filetriggers_edited = internal global i32 -1, align 4
@filetriggers = internal global %struct.anon.3 zeroinitializer, align 8
@triggersdir = internal global i8* null, align 8
@triggersfilefile = internal global i8* null, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"dpkg\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"unable to read file triggers file '%.250s'\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"syntax error in file triggers file '%.250s'\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"/noawait\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"/await\00", align 1
@.str.8 = private unnamed_addr constant [100 x i8] c"file triggers record mentions illegal package name '%.250s' (for interest in file '%.250s'): %.250s\00", align 1
@trigh = internal global %struct.trig_hooks { void (%struct.pkginfo*)* null, void (i32)* null, %struct.fsys_namenode* (i8*, i1)* @th_nn_find, %struct.trigfileint** (%struct.fsys_namenode*)* @th_nn_interested, i8* (%struct.fsys_namenode*)* @th_nn_name }, align 8
@dtki = internal global %struct.trigkindinfo* null, align 8
@.str.9 = private unnamed_addr constant [41 x i8] c"unable to open triggers ci file '%.250s'\00", align 1
@.str.10 = private unnamed_addr constant [51 x i8] c"triggers ci file contains unknown directive syntax\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"interest\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"interest-await\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"interest-noawait\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"activate\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"activate-await\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"activate-noawait\00", align 1
@.str.17 = private unnamed_addr constant [53 x i8] c"triggers ci file contains unknown directive '%.250s'\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"triggers\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"File\00", align 1
@tdm_incorp = internal constant %struct.trigdefmeths { void (i8*)* @tdm_incorp_trig_begin, void (i8*)* @tdm_incorp_package, void ()* @tdm_incorp_trig_end }, align 8
@.str.20 = private unnamed_addr constant [51 x i8] c"unable to create triggers state directory '%.250s'\00", align 1
@.str.21 = private unnamed_addr constant [61 x i8] c"unable to set ownership of triggers state directory '%.250s'\00", align 1
@__func__.trig_incorporate = private unnamed_addr constant [17 x i8] c"trig_incorporate\00", align 1
@.str.22 = private unnamed_addr constant [47 x i8] c"unknown trigdef_update_start return value '%d'\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"cannot remove '%.250s'\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"%s %s%s\0A\00", align 1
@.str.25 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__func__.trk_file_interest_change = private unnamed_addr constant [25 x i8] c"trk_file_interest_change\00", align 1
@.str.26 = private unnamed_addr constant [56 x i8] c"lost filename node '%s' for package %s triggered to add\00", align 1
@.str.27 = private unnamed_addr constant [75 x i8] c"duplicate file trigger interest for filename '%.250s' and package '%.250s'\00", align 1
@__func__.trig_cicb_interest_change = private unnamed_addr constant [26 x i8] c"trig_cicb_interest_change\00", align 1
@.str.28 = private unnamed_addr constant [45 x i8] c"trigger control file for package %s not read\00", align 1
@tki_file = internal constant %struct.trigkindinfo { void ()* @trk_file_activate_start, void (%struct.pkginfo*)* @trk_file_activate_awaiter, void ()* @trk_file_activate_done, void (i8*, %struct.pkginfo*, %struct.pkgbin*, i32, i32)* @trk_file_interest_change }, align 8
@tki_explicit = internal constant %struct.trigkindinfo { void ()* @trk_explicit_activate_start, void (%struct.pkginfo*)* @trk_explicit_activate_awaiter, void ()* @trk_explicit_activate_done, void (i8*, %struct.pkginfo*, %struct.pkgbin*, i32, i32)* @trk_explicit_interest_change }, align 8
@tki_unknown = internal constant %struct.trigkindinfo { void ()* @trk_unknown_activate_start, void (%struct.pkginfo*)* @trk_unknown_activate_awaiter, void ()* @trk_unknown_activate_done, void (i8*, %struct.pkginfo*, %struct.pkgbin*, i32, i32)* @trk_unknown_interest_change }, align 8
@trig_activating_name = internal global i8* null, align 8
@trk_file_trig = internal global i8* null, align 8
@trk_explicit_trig = internal global i8* null, align 8
@trk_explicit_fn = internal global %struct.varbuf zeroinitializer, align 8
@trk_explicit_f = internal global %struct._IO_FILE* null, align 8
@.str.29 = private unnamed_addr constant [51 x i8] c"failed to open trigger interest list file '%.250s'\00", align 1
@.str.30 = private unnamed_addr constant [48 x i8] c"failed to rewind trigger interest file '%.250s'\00", align 1
@.str.31 = private unnamed_addr constant [83 x i8] c"trigger interest file '%.250s' syntax error; illegal package name '%.250s': %.250s\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"%s%s\0A\00", align 1
@.str.34 = private unnamed_addr constant [95 x i8] c"invalid or unknown syntax in trigger name '%.250s' (in trigger interests for package '%.250s')\00", align 1
@.str.35 = private unnamed_addr constant [91 x i8] c"triggers ci file '%.250s' contains illegal trigger syntax in trigger name '%.250s': %.250s\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"-\00", align 1

; Function Attrs: nounwind uwtable
define void @trig_clear_awaiters(%struct.pkginfo*) #0 !dbg !491 {
  %2 = alloca %struct.pkginfo*, align 8
  %3 = alloca %struct.trigaw*, align 8
  %4 = alloca %struct.pkginfo*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %2, metadata !493, metadata !494), !dbg !495
  call void @llvm.dbg.declare(metadata %struct.trigaw** %3, metadata !496, metadata !494), !dbg !497
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %4, metadata !498, metadata !494), !dbg !499
  %5 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !500
  %6 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %5, i32 0, i32 15, !dbg !502
  %7 = load %struct.trigpend*, %struct.trigpend** %6, align 8, !dbg !502
  %8 = icmp ne %struct.trigpend* %7, null, !dbg !500
  br i1 %8, label %9, label %12, !dbg !503

; <label>:9:                                      ; preds = %1
  %10 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !504
  %11 = call i8* @pkg_name(%struct.pkginfo* %10, i32 3), !dbg !505
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 108, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.trig_clear_awaiters, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0), i8* %11) #10, !dbg !506
  unreachable, !dbg !508

; <label>:12:                                     ; preds = %1
  %13 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !509
  %14 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %13, i32 0, i32 14, !dbg !510
  %15 = load %struct.trigaw*, %struct.trigaw** %14, align 8, !dbg !510
  store %struct.trigaw* %15, %struct.trigaw** %3, align 8, !dbg !511
  %16 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !512
  %17 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %16, i32 0, i32 14, !dbg !513
  store %struct.trigaw* null, %struct.trigaw** %17, align 8, !dbg !514
  br label %18, !dbg !515

; <label>:18:                                     ; preds = %103, %12
  %19 = load %struct.trigaw*, %struct.trigaw** %3, align 8, !dbg !516
  %20 = icmp ne %struct.trigaw* %19, null, !dbg !520
  br i1 %20, label %21, label %107, !dbg !520

; <label>:21:                                     ; preds = %18
  %22 = load %struct.trigaw*, %struct.trigaw** %3, align 8, !dbg !521
  %23 = getelementptr inbounds %struct.trigaw, %struct.trigaw* %22, i32 0, i32 0, !dbg !523
  %24 = load %struct.pkginfo*, %struct.pkginfo** %23, align 8, !dbg !523
  store %struct.pkginfo* %24, %struct.pkginfo** %4, align 8, !dbg !524
  %25 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !525
  %26 = icmp ne %struct.pkginfo* %25, null, !dbg !525
  br i1 %26, label %28, label %27, !dbg !527

; <label>:27:                                     ; preds = %21
  br label %103, !dbg !528

; <label>:28:                                     ; preds = %21
  br label %29, !dbg !529, !llvm.loop !530

; <label>:29:                                     ; preds = %28
  %30 = load %struct.trigaw*, %struct.trigaw** %3, align 8, !dbg !531
  %31 = getelementptr inbounds %struct.trigaw, %struct.trigaw* %30, i32 0, i32 3, !dbg !535
  %32 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %31, i32 0, i32 1, !dbg !536
  %33 = load %struct.trigaw*, %struct.trigaw** %32, align 8, !dbg !536
  %34 = icmp ne %struct.trigaw* %33, null, !dbg !537
  br i1 %34, label %35, label %46, !dbg !537

; <label>:35:                                     ; preds = %29
  %36 = load %struct.trigaw*, %struct.trigaw** %3, align 8, !dbg !538
  %37 = getelementptr inbounds %struct.trigaw, %struct.trigaw* %36, i32 0, i32 3, !dbg !540
  %38 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %37, i32 0, i32 0, !dbg !541
  %39 = load %struct.trigaw*, %struct.trigaw** %38, align 8, !dbg !541
  %40 = load %struct.trigaw*, %struct.trigaw** %3, align 8, !dbg !542
  %41 = getelementptr inbounds %struct.trigaw, %struct.trigaw* %40, i32 0, i32 3, !dbg !543
  %42 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %41, i32 0, i32 1, !dbg !544
  %43 = load %struct.trigaw*, %struct.trigaw** %42, align 8, !dbg !544
  %44 = getelementptr inbounds %struct.trigaw, %struct.trigaw* %43, i32 0, i32 3, !dbg !545
  %45 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %44, i32 0, i32 0, !dbg !546
  store %struct.trigaw* %39, %struct.trigaw** %45, align 8, !dbg !547
  br label %54, !dbg !548

; <label>:46:                                     ; preds = %29
  %47 = load %struct.trigaw*, %struct.trigaw** %3, align 8, !dbg !549
  %48 = getelementptr inbounds %struct.trigaw, %struct.trigaw* %47, i32 0, i32 3, !dbg !551
  %49 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %48, i32 0, i32 0, !dbg !552
  %50 = load %struct.trigaw*, %struct.trigaw** %49, align 8, !dbg !552
  %51 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !553
  %52 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %51, i32 0, i32 13, !dbg !554
  %53 = getelementptr inbounds %struct.anon, %struct.anon* %52, i32 0, i32 0, !dbg !555
  store %struct.trigaw* %50, %struct.trigaw** %53, align 8, !dbg !556
  br label %54

; <label>:54:                                     ; preds = %46, %35
  %55 = load %struct.trigaw*, %struct.trigaw** %3, align 8, !dbg !557
  %56 = getelementptr inbounds %struct.trigaw, %struct.trigaw* %55, i32 0, i32 3, !dbg !560
  %57 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %56, i32 0, i32 0, !dbg !561
  %58 = load %struct.trigaw*, %struct.trigaw** %57, align 8, !dbg !561
  %59 = icmp ne %struct.trigaw* %58, null, !dbg !562
  br i1 %59, label %60, label %71, !dbg !562

; <label>:60:                                     ; preds = %54
  %61 = load %struct.trigaw*, %struct.trigaw** %3, align 8, !dbg !563
  %62 = getelementptr inbounds %struct.trigaw, %struct.trigaw* %61, i32 0, i32 3, !dbg !565
  %63 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %62, i32 0, i32 1, !dbg !566
  %64 = load %struct.trigaw*, %struct.trigaw** %63, align 8, !dbg !566
  %65 = load %struct.trigaw*, %struct.trigaw** %3, align 8, !dbg !567
  %66 = getelementptr inbounds %struct.trigaw, %struct.trigaw* %65, i32 0, i32 3, !dbg !568
  %67 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %66, i32 0, i32 0, !dbg !569
  %68 = load %struct.trigaw*, %struct.trigaw** %67, align 8, !dbg !569
  %69 = getelementptr inbounds %struct.trigaw, %struct.trigaw* %68, i32 0, i32 3, !dbg !570
  %70 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %69, i32 0, i32 1, !dbg !571
  store %struct.trigaw* %64, %struct.trigaw** %70, align 8, !dbg !572
  br label %79, !dbg !573

; <label>:71:                                     ; preds = %54
  %72 = load %struct.trigaw*, %struct.trigaw** %3, align 8, !dbg !574
  %73 = getelementptr inbounds %struct.trigaw, %struct.trigaw* %72, i32 0, i32 3, !dbg !576
  %74 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %73, i32 0, i32 1, !dbg !577
  %75 = load %struct.trigaw*, %struct.trigaw** %74, align 8, !dbg !577
  %76 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !578
  %77 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %76, i32 0, i32 13, !dbg !579
  %78 = getelementptr inbounds %struct.anon, %struct.anon* %77, i32 0, i32 1, !dbg !580
  store %struct.trigaw* %75, %struct.trigaw** %78, align 8, !dbg !581
  br label %79

; <label>:79:                                     ; preds = %71, %60
  br label %80, !dbg !582

; <label>:80:                                     ; preds = %79
  %81 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !584
  %82 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %81, i32 0, i32 13, !dbg !586
  %83 = getelementptr inbounds %struct.anon, %struct.anon* %82, i32 0, i32 0, !dbg !587
  %84 = load %struct.trigaw*, %struct.trigaw** %83, align 8, !dbg !587
  %85 = icmp ne %struct.trigaw* %84, null, !dbg !584
  br i1 %85, label %102, label %86, !dbg !588

; <label>:86:                                     ; preds = %80
  %87 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !589
  %88 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %87, i32 0, i32 4, !dbg !591
  %89 = load i32, i32* %88, align 8, !dbg !591
  %90 = icmp eq i32 %89, 5, !dbg !592
  br i1 %90, label %91, label %102, !dbg !593

; <label>:91:                                     ; preds = %86
  %92 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !594
  %93 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %92, i32 0, i32 15, !dbg !597
  %94 = load %struct.trigpend*, %struct.trigpend** %93, align 8, !dbg !597
  %95 = icmp ne %struct.trigpend* %94, null, !dbg !594
  br i1 %95, label %96, label %98, !dbg !598

; <label>:96:                                     ; preds = %91
  %97 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !599
  call void @pkg_set_status(%struct.pkginfo* %97, i32 6), !dbg !600
  br label %100, !dbg !600

; <label>:98:                                     ; preds = %91
  %99 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !601
  call void @pkg_set_status(%struct.pkginfo* %99, i32 7), !dbg !602
  br label %100

; <label>:100:                                    ; preds = %98, %96
  %101 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !603
  call void @modstatdb_note(%struct.pkginfo* %101), !dbg !604
  br label %102, !dbg !605

; <label>:102:                                    ; preds = %100, %86, %80
  br label %103, !dbg !606

; <label>:103:                                    ; preds = %102, %27
  %104 = load %struct.trigaw*, %struct.trigaw** %3, align 8, !dbg !607
  %105 = getelementptr inbounds %struct.trigaw, %struct.trigaw* %104, i32 0, i32 2, !dbg !609
  %106 = load %struct.trigaw*, %struct.trigaw** %105, align 8, !dbg !609
  store %struct.trigaw* %106, %struct.trigaw** %3, align 8, !dbg !610
  br label %18, !dbg !611, !llvm.loop !612

; <label>:107:                                    ; preds = %18
  ret void, !dbg !613
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noreturn
declare void @do_internerr(i8*, i32, i8*, i8*, ...) #2

declare i8* @pkg_name(%struct.pkginfo*, i32) #3

declare void @pkg_set_status(%struct.pkginfo*, i32) #3

declare void @modstatdb_note(%struct.pkginfo*) #3

; Function Attrs: nounwind uwtable
define void @trig_fixup_awaiters(i32) #0 !dbg !614 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !615, metadata !494), !dbg !616
  %3 = load i32, i32* %2, align 4, !dbg !617
  %4 = icmp ult i32 %3, 3, !dbg !619
  br i1 %4, label %5, label %6, !dbg !620

; <label>:5:                                      ; preds = %1
  br label %7, !dbg !621

; <label>:6:                                      ; preds = %1
  call void @trig_awaited_pend_foreach(void (%struct.pkginfo*)* @trig_clear_awaiters), !dbg !622
  call void @trig_awaited_pend_free(), !dbg !623
  br label %7, !dbg !624

; <label>:7:                                      ; preds = %6, %5
  ret void, !dbg !625
}

declare void @trig_awaited_pend_foreach(void (%struct.pkginfo*)*) #3

declare void @trig_awaited_pend_free() #3

; Function Attrs: nounwind uwtable
define void @trig_file_interests_save() #0 !dbg !627 {
  %1 = load i32, i32* @filetriggers_edited, align 4, !dbg !628
  %2 = icmp sle i32 %1, 0, !dbg !630
  br i1 %2, label %3, label %4, !dbg !631

; <label>:3:                                      ; preds = %0
  br label %11, !dbg !632

; <label>:4:                                      ; preds = %0
  %5 = load %struct.trigfileint*, %struct.trigfileint** getelementptr inbounds (%struct.anon.3, %struct.anon.3* @filetriggers, i32 0, i32 0), align 8, !dbg !633
  %6 = icmp ne %struct.trigfileint* %5, null, !dbg !635
  br i1 %6, label %8, label %7, !dbg !636

; <label>:7:                                      ; preds = %4
  call void @trig_file_interests_remove(), !dbg !637
  br label %9, !dbg !637

; <label>:8:                                      ; preds = %4
  call void @trig_file_interests_update(), !dbg !638
  br label %9

; <label>:9:                                      ; preds = %8, %7
  %10 = load i8*, i8** @triggersdir, align 8, !dbg !639
  call void @dir_sync_path(i8* %10), !dbg !640
  store i32 0, i32* @filetriggers_edited, align 4, !dbg !641
  br label %11, !dbg !642

; <label>:11:                                     ; preds = %9, %3
  ret void, !dbg !643
}

; Function Attrs: nounwind uwtable
define internal void @trig_file_interests_remove() #0 !dbg !645 {
  %1 = load i8*, i8** @triggersfilefile, align 8, !dbg !646
  %2 = call i32 @unlink(i8* %1) #11, !dbg !648
  %3 = icmp ne i32 %2, 0, !dbg !648
  br i1 %3, label %4, label %11, !dbg !649

; <label>:4:                                      ; preds = %0
  %5 = call i32* @__errno_location() #1, !dbg !650
  %6 = load i32, i32* %5, align 4, !dbg !652
  %7 = icmp ne i32 %6, 2, !dbg !653
  br i1 %7, label %8, label %11, !dbg !654

; <label>:8:                                      ; preds = %4
  %9 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i32 0, i32 0)) #11, !dbg !655
  %10 = load i8*, i8** @triggersfilefile, align 8, !dbg !656
  call void (i8*, ...) @ohshite(i8* %9, i8* %10) #10, !dbg !657
  unreachable, !dbg !658

; <label>:11:                                     ; preds = %4, %0
  ret void, !dbg !659
}

; Function Attrs: nounwind uwtable
define internal void @trig_file_interests_update() #0 !dbg !660 {
  %1 = alloca %struct.trigfileint*, align 8
  %2 = alloca %struct.atomic_file*, align 8
  call void @llvm.dbg.declare(metadata %struct.trigfileint** %1, metadata !661, metadata !494), !dbg !662
  call void @llvm.dbg.declare(metadata %struct.atomic_file** %2, metadata !663, metadata !494), !dbg !671
  %3 = load i8*, i8** @triggersfilefile, align 8, !dbg !672
  %4 = call %struct.atomic_file* @atomic_file_new(i8* %3, i32 0), !dbg !673
  store %struct.atomic_file* %4, %struct.atomic_file** %2, align 8, !dbg !674
  %5 = load %struct.atomic_file*, %struct.atomic_file** %2, align 8, !dbg !675
  call void @atomic_file_open(%struct.atomic_file* %5), !dbg !676
  %6 = load %struct.trigfileint*, %struct.trigfileint** getelementptr inbounds (%struct.anon.3, %struct.anon.3* @filetriggers, i32 0, i32 0), align 8, !dbg !677
  store %struct.trigfileint* %6, %struct.trigfileint** %1, align 8, !dbg !679
  br label %7, !dbg !680

; <label>:7:                                      ; preds = %32, %0
  %8 = load %struct.trigfileint*, %struct.trigfileint** %1, align 8, !dbg !681
  %9 = icmp ne %struct.trigfileint* %8, null, !dbg !684
  br i1 %9, label %10, label %37, !dbg !684

; <label>:10:                                     ; preds = %7
  %11 = load %struct.atomic_file*, %struct.atomic_file** %2, align 8, !dbg !685
  %12 = getelementptr inbounds %struct.atomic_file, %struct.atomic_file* %11, i32 0, i32 3, !dbg !686
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8, !dbg !686
  %14 = load i8* (%struct.fsys_namenode*)*, i8* (%struct.fsys_namenode*)** getelementptr inbounds (%struct.trig_hooks, %struct.trig_hooks* @trigh, i32 0, i32 4), align 8, !dbg !687
  %15 = load %struct.trigfileint*, %struct.trigfileint** %1, align 8, !dbg !688
  %16 = getelementptr inbounds %struct.trigfileint, %struct.trigfileint* %15, i32 0, i32 2, !dbg !689
  %17 = load %struct.fsys_namenode*, %struct.fsys_namenode** %16, align 8, !dbg !689
  %18 = call i8* %14(%struct.fsys_namenode* %17), !dbg !690
  %19 = load %struct.trigfileint*, %struct.trigfileint** %1, align 8, !dbg !691
  %20 = getelementptr inbounds %struct.trigfileint, %struct.trigfileint* %19, i32 0, i32 0, !dbg !692
  %21 = load %struct.pkginfo*, %struct.pkginfo** %20, align 8, !dbg !692
  %22 = load %struct.trigfileint*, %struct.trigfileint** %1, align 8, !dbg !693
  %23 = getelementptr inbounds %struct.trigfileint, %struct.trigfileint* %22, i32 0, i32 1, !dbg !694
  %24 = load %struct.pkgbin*, %struct.pkgbin** %23, align 8, !dbg !694
  %25 = call i8* @pkgbin_name(%struct.pkginfo* %21, %struct.pkgbin* %24, i32 1), !dbg !695
  %26 = load %struct.trigfileint*, %struct.trigfileint** %1, align 8, !dbg !696
  %27 = getelementptr inbounds %struct.trigfileint, %struct.trigfileint* %26, i32 0, i32 3, !dbg !697
  %28 = load i32, i32* %27, align 8, !dbg !697
  %29 = icmp eq i32 %28, 1, !dbg !698
  %30 = select i1 %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.25, i32 0, i32 0), !dbg !699
  %31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i8* %18, i8* %25, i8* %30), !dbg !700
  br label %32, !dbg !701

; <label>:32:                                     ; preds = %10
  %33 = load %struct.trigfileint*, %struct.trigfileint** %1, align 8, !dbg !702
  %34 = getelementptr inbounds %struct.trigfileint, %struct.trigfileint* %33, i32 0, i32 5, !dbg !704
  %35 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %34, i32 0, i32 0, !dbg !705
  %36 = load %struct.trigfileint*, %struct.trigfileint** %35, align 8, !dbg !705
  store %struct.trigfileint* %36, %struct.trigfileint** %1, align 8, !dbg !706
  br label %7, !dbg !707, !llvm.loop !708

; <label>:37:                                     ; preds = %7
  %38 = load %struct.atomic_file*, %struct.atomic_file** %2, align 8, !dbg !710
  call void @atomic_file_sync(%struct.atomic_file* %38), !dbg !711
  %39 = load %struct.atomic_file*, %struct.atomic_file** %2, align 8, !dbg !712
  call void @atomic_file_close(%struct.atomic_file* %39), !dbg !713
  %40 = load %struct.atomic_file*, %struct.atomic_file** %2, align 8, !dbg !714
  call void @atomic_file_commit(%struct.atomic_file* %40), !dbg !715
  %41 = load %struct.atomic_file*, %struct.atomic_file** %2, align 8, !dbg !716
  call void @atomic_file_free(%struct.atomic_file* %41), !dbg !717
  ret void, !dbg !718
}

declare void @dir_sync_path(i8*) #3

; Function Attrs: nounwind uwtable
define void @trig_file_interests_ensure() #0 !dbg !719 {
  %1 = alloca %struct._IO_FILE*, align 8
  %2 = alloca [1024 x i8], align 16
  %3 = alloca i8*, align 8
  %4 = alloca %struct.pkginfo*, align 8
  %5 = alloca %struct.pkgbin*, align 8
  %6 = alloca %struct.dpkg_error, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %1, metadata !720, metadata !494), !dbg !721
  call void @llvm.dbg.declare(metadata [1024 x i8]* %2, metadata !722, metadata !494), !dbg !726
  call void @llvm.dbg.declare(metadata i8** %3, metadata !727, metadata !494), !dbg !728
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %4, metadata !729, metadata !494), !dbg !730
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %5, metadata !731, metadata !494), !dbg !732
  %9 = load i32, i32* @filetriggers_edited, align 4, !dbg !733
  %10 = icmp sge i32 %9, 0, !dbg !735
  br i1 %10, label %11, label %12, !dbg !736

; <label>:11:                                     ; preds = %0
  br label %88, !dbg !737

; <label>:12:                                     ; preds = %0
  %13 = load i8*, i8** @triggersfilefile, align 8, !dbg !738
  %14 = call %struct._IO_FILE* @fopen(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)), !dbg !739
  store %struct._IO_FILE* %14, %struct._IO_FILE** %1, align 8, !dbg !740
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8, !dbg !741
  %16 = icmp ne %struct._IO_FILE* %15, null, !dbg !741
  br i1 %16, label %25, label %17, !dbg !743

; <label>:17:                                     ; preds = %12
  %18 = call i32* @__errno_location() #1, !dbg !744
  %19 = load i32, i32* %18, align 4, !dbg !747
  %20 = icmp eq i32 %19, 2, !dbg !748
  br i1 %20, label %21, label %22, !dbg !749

; <label>:21:                                     ; preds = %17
  br label %87, !dbg !750

; <label>:22:                                     ; preds = %17
  %23 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i32 0, i32 0)) #11, !dbg !751
  %24 = load i8*, i8** @triggersfilefile, align 8, !dbg !752
  call void (i8*, ...) @ohshite(i8* %23, i8* %24) #10, !dbg !753
  unreachable, !dbg !755

; <label>:25:                                     ; preds = %12
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8, !dbg !756
  call void (void (i32, i8**)*, i32, i32, ...) @push_cleanup(void (i32, i8**)* @cu_closestream, i32 -1, i32 1, %struct._IO_FILE* %26), !dbg !757
  br label %27, !dbg !758

; <label>:27:                                     ; preds = %79, %25
  %28 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i32 0, i32 0, !dbg !759
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8, !dbg !761
  %30 = load i8*, i8** @triggersfilefile, align 8, !dbg !762
  %31 = call i32 @fgets_checked(i8* %28, i64 1024, %struct._IO_FILE* %29, i8* %30), !dbg !763
  %32 = icmp sge i32 %31, 0, !dbg !764
  br i1 %32, label %33, label %86, !dbg !765

; <label>:33:                                     ; preds = %27
  call void @llvm.dbg.declare(metadata %struct.dpkg_error* %6, metadata !766, metadata !494), !dbg !773
  call void @llvm.dbg.declare(metadata i8** %7, metadata !774, metadata !494), !dbg !775
  call void @llvm.dbg.declare(metadata i32* %8, metadata !776, metadata !494), !dbg !777
  store i32 0, i32* %8, align 4, !dbg !777
  %34 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i32 0, i32 0, !dbg !778
  %35 = call i8* @strchr(i8* %34, i32 32) #12, !dbg !779
  store i8* %35, i8** %3, align 8, !dbg !780
  %36 = load i8*, i8** %3, align 8, !dbg !781
  %37 = icmp ne i8* %36, null, !dbg !781
  br i1 %37, label %38, label %43, !dbg !783

; <label>:38:                                     ; preds = %33
  %39 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0, !dbg !784
  %40 = load i8, i8* %39, align 16, !dbg !784
  %41 = sext i8 %40 to i32, !dbg !784
  %42 = icmp ne i32 %41, 47, !dbg !786
  br i1 %42, label %43, label %46, !dbg !787

; <label>:43:                                     ; preds = %38, %33
  %44 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i32 0, i32 0)) #11, !dbg !788
  %45 = load i8*, i8** @triggersfilefile, align 8, !dbg !789
  call void (i8*, ...) @ohshit(i8* %44, i8* %45) #10, !dbg !790
  unreachable, !dbg !791

; <label>:46:                                     ; preds = %38
  %47 = load i8*, i8** %3, align 8, !dbg !792
  %48 = getelementptr inbounds i8, i8* %47, i32 1, !dbg !792
  store i8* %48, i8** %3, align 8, !dbg !792
  store i8 0, i8* %47, align 1, !dbg !793
  %49 = load i8*, i8** %3, align 8, !dbg !794
  %50 = call i8* @strchr(i8* %49, i32 47) #12, !dbg !795
  store i8* %50, i8** %7, align 8, !dbg !796
  %51 = load i8*, i8** %7, align 8, !dbg !797
  %52 = icmp ne i8* %51, null, !dbg !797
  br i1 %52, label %53, label %59, !dbg !799

; <label>:53:                                     ; preds = %46
  %54 = load i8*, i8** %7, align 8, !dbg !800
  %55 = call i32 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* %54) #12, !dbg !802
  %56 = icmp eq i32 %55, 0, !dbg !803
  br i1 %56, label %57, label %59, !dbg !804

; <label>:57:                                     ; preds = %53
  store i32 1, i32* %8, align 4, !dbg !805
  %58 = load i8*, i8** %7, align 8, !dbg !807
  store i8 0, i8* %58, align 1, !dbg !808
  br label %59, !dbg !809

; <label>:59:                                     ; preds = %57, %53, %46
  %60 = load i8*, i8** %7, align 8, !dbg !810
  %61 = icmp ne i8* %60, null, !dbg !810
  br i1 %61, label %62, label %68, !dbg !812

; <label>:62:                                     ; preds = %59
  %63 = load i8*, i8** %7, align 8, !dbg !813
  %64 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* %63) #12, !dbg !815
  %65 = icmp eq i32 %64, 0, !dbg !816
  br i1 %65, label %66, label %68, !dbg !817

; <label>:66:                                     ; preds = %62
  store i32 0, i32* %8, align 4, !dbg !818
  %67 = load i8*, i8** %7, align 8, !dbg !820
  store i8 0, i8* %67, align 1, !dbg !821
  br label %68, !dbg !822

; <label>:68:                                     ; preds = %66, %62, %59
  %69 = load i8*, i8** %3, align 8, !dbg !823
  %70 = call %struct.pkginfo* @pkg_spec_parse_pkg(i8* %69, %struct.dpkg_error* %6), !dbg !824
  store %struct.pkginfo* %70, %struct.pkginfo** %4, align 8, !dbg !825
  %71 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !826
  %72 = icmp eq %struct.pkginfo* %71, null, !dbg !828
  br i1 %72, label %73, label %79, !dbg !829

; <label>:73:                                     ; preds = %68
  %74 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.8, i32 0, i32 0)) #11, !dbg !830
  %75 = load i8*, i8** %3, align 8, !dbg !831
  %76 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i32 0, i32 0, !dbg !832
  %77 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %6, i32 0, i32 2, !dbg !833
  %78 = load i8*, i8** %77, align 8, !dbg !833
  call void (i8*, ...) @ohshit(i8* %74, i8* %75, i8* %76, i8* %78) #10, !dbg !834
  unreachable, !dbg !836

; <label>:79:                                     ; preds = %68
  %80 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !837
  %81 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %80, i32 0, i32 9, !dbg !838
  store %struct.pkgbin* %81, %struct.pkgbin** %5, align 8, !dbg !839
  %82 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i32 0, i32 0, !dbg !840
  %83 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !841
  %84 = load %struct.pkgbin*, %struct.pkgbin** %5, align 8, !dbg !842
  %85 = load i32, i32* %8, align 4, !dbg !843
  call void @trk_file_interest_change(i8* %82, %struct.pkginfo* %83, %struct.pkgbin* %84, i32 2, i32 %85), !dbg !844
  br label %27, !dbg !845, !llvm.loop !847

; <label>:86:                                     ; preds = %27
  call void @pop_cleanup(i32 1), !dbg !848
  br label %87, !dbg !848

; <label>:87:                                     ; preds = %86, %21
  store i32 0, i32* @filetriggers_edited, align 4, !dbg !849
  br label %88, !dbg !850

; <label>:88:                                     ; preds = %87, %11
  ret void, !dbg !851
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

; Function Attrs: noreturn
declare void @ohshite(i8*, ...) #2

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #5

declare void @push_cleanup(void (i32, i8**)*, i32, i32, ...) #3

declare void @cu_closestream(i32, i8**) #3

declare i32 @fgets_checked(i8*, i64, %struct._IO_FILE*, i8*) #3

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #6

; Function Attrs: noreturn
declare void @ohshit(i8*, ...) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #6

declare %struct.pkginfo* @pkg_spec_parse_pkg(i8*, %struct.dpkg_error*) #3

; Function Attrs: nounwind uwtable
define internal void @trk_file_interest_change(i8*, %struct.pkginfo*, %struct.pkgbin*, i32, i32) #0 !dbg !852 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.pkginfo*, align 8
  %8 = alloca %struct.pkgbin*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.fsys_namenode*, align 8
  %12 = alloca %struct.trigfileint**, align 8
  %13 = alloca %struct.trigfileint*, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !853, metadata !494), !dbg !854
  store %struct.pkginfo* %1, %struct.pkginfo** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %7, metadata !855, metadata !494), !dbg !856
  store %struct.pkgbin* %2, %struct.pkgbin** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %8, metadata !857, metadata !494), !dbg !858
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !859, metadata !494), !dbg !860
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !861, metadata !494), !dbg !862
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %11, metadata !863, metadata !494), !dbg !864
  call void @llvm.dbg.declare(metadata %struct.trigfileint*** %12, metadata !865, metadata !494), !dbg !866
  call void @llvm.dbg.declare(metadata %struct.trigfileint** %13, metadata !867, metadata !494), !dbg !868
  %14 = load %struct.fsys_namenode* (i8*, i1)*, %struct.fsys_namenode* (i8*, i1)** getelementptr inbounds (%struct.trig_hooks, %struct.trig_hooks* @trigh, i32 0, i32 2), align 8, !dbg !869
  %15 = load i8*, i8** %6, align 8, !dbg !870
  %16 = load i32, i32* %9, align 4, !dbg !871
  %17 = icmp sle i32 %16, 0, !dbg !872
  %18 = call %struct.fsys_namenode* %14(i8* %15, i1 zeroext %17), !dbg !873
  store %struct.fsys_namenode* %18, %struct.fsys_namenode** %11, align 8, !dbg !874
  %19 = load %struct.fsys_namenode*, %struct.fsys_namenode** %11, align 8, !dbg !875
  %20 = icmp ne %struct.fsys_namenode* %19, null, !dbg !875
  br i1 %20, label %30, label %21, !dbg !877

; <label>:21:                                     ; preds = %5
  %22 = load i32, i32* %9, align 4, !dbg !878
  %23 = icmp sge i32 %22, 0, !dbg !881
  br i1 %23, label %24, label %29, !dbg !882

; <label>:24:                                     ; preds = %21
  %25 = load i8*, i8** %6, align 8, !dbg !883
  %26 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !884
  %27 = load %struct.pkgbin*, %struct.pkgbin** %8, align 8, !dbg !885
  %28 = call i8* @pkgbin_name(%struct.pkginfo* %26, %struct.pkgbin* %27, i32 3), !dbg !886
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 407, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.trk_file_interest_change, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.26, i32 0, i32 0), i8* %25, i8* %28) #10, !dbg !887
  unreachable, !dbg !889

; <label>:29:                                     ; preds = %21
  br label %166, !dbg !890

; <label>:30:                                     ; preds = %5
  %31 = load %struct.trigfileint** (%struct.fsys_namenode*)*, %struct.trigfileint** (%struct.fsys_namenode*)** getelementptr inbounds (%struct.trig_hooks, %struct.trig_hooks* @trigh, i32 0, i32 3), align 8, !dbg !891
  %32 = load %struct.fsys_namenode*, %struct.fsys_namenode** %11, align 8, !dbg !893
  %33 = call %struct.trigfileint** %31(%struct.fsys_namenode* %32), !dbg !894
  store %struct.trigfileint** %33, %struct.trigfileint*** %12, align 8, !dbg !895
  br label %34, !dbg !896

; <label>:34:                                     ; preds = %46, %30
  %35 = load %struct.trigfileint**, %struct.trigfileint*** %12, align 8, !dbg !897
  %36 = load %struct.trigfileint*, %struct.trigfileint** %35, align 8, !dbg !899
  store %struct.trigfileint* %36, %struct.trigfileint** %13, align 8, !dbg !900
  %37 = icmp ne %struct.trigfileint* %36, null, !dbg !901
  br i1 %37, label %38, label %49, !dbg !901

; <label>:38:                                     ; preds = %34
  %39 = load %struct.trigfileint*, %struct.trigfileint** %13, align 8, !dbg !903
  %40 = getelementptr inbounds %struct.trigfileint, %struct.trigfileint* %39, i32 0, i32 0, !dbg !905
  %41 = load %struct.pkginfo*, %struct.pkginfo** %40, align 8, !dbg !905
  %42 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !906
  %43 = icmp eq %struct.pkginfo* %41, %42, !dbg !907
  br i1 %43, label %44, label %45, !dbg !908

; <label>:44:                                     ; preds = %38
  br label %98, !dbg !909

; <label>:45:                                     ; preds = %38
  br label %46, !dbg !910

; <label>:46:                                     ; preds = %45
  %47 = load %struct.trigfileint*, %struct.trigfileint** %13, align 8, !dbg !912
  %48 = getelementptr inbounds %struct.trigfileint, %struct.trigfileint* %47, i32 0, i32 4, !dbg !913
  store %struct.trigfileint** %48, %struct.trigfileint*** %12, align 8, !dbg !914
  br label %34, !dbg !915, !llvm.loop !917

; <label>:49:                                     ; preds = %34
  %50 = load i32, i32* %9, align 4, !dbg !919
  %51 = icmp slt i32 %50, 0, !dbg !921
  br i1 %51, label %52, label %53, !dbg !922

; <label>:52:                                     ; preds = %49
  br label %166, !dbg !923

; <label>:53:                                     ; preds = %49
  %54 = call i8* @nfmalloc(i64 56), !dbg !924
  %55 = bitcast i8* %54 to %struct.trigfileint*, !dbg !924
  store %struct.trigfileint* %55, %struct.trigfileint** %13, align 8, !dbg !925
  %56 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !926
  %57 = load %struct.trigfileint*, %struct.trigfileint** %13, align 8, !dbg !927
  %58 = getelementptr inbounds %struct.trigfileint, %struct.trigfileint* %57, i32 0, i32 0, !dbg !928
  store %struct.pkginfo* %56, %struct.pkginfo** %58, align 8, !dbg !929
  %59 = load %struct.pkgbin*, %struct.pkgbin** %8, align 8, !dbg !930
  %60 = load %struct.trigfileint*, %struct.trigfileint** %13, align 8, !dbg !931
  %61 = getelementptr inbounds %struct.trigfileint, %struct.trigfileint* %60, i32 0, i32 1, !dbg !932
  store %struct.pkgbin* %59, %struct.pkgbin** %61, align 8, !dbg !933
  %62 = load %struct.fsys_namenode*, %struct.fsys_namenode** %11, align 8, !dbg !934
  %63 = load %struct.trigfileint*, %struct.trigfileint** %13, align 8, !dbg !935
  %64 = getelementptr inbounds %struct.trigfileint, %struct.trigfileint* %63, i32 0, i32 2, !dbg !936
  store %struct.fsys_namenode* %62, %struct.fsys_namenode** %64, align 8, !dbg !937
  %65 = load i32, i32* %10, align 4, !dbg !938
  %66 = load %struct.trigfileint*, %struct.trigfileint** %13, align 8, !dbg !939
  %67 = getelementptr inbounds %struct.trigfileint, %struct.trigfileint* %66, i32 0, i32 3, !dbg !940
  store i32 %65, i32* %67, align 8, !dbg !941
  %68 = load %struct.trigfileint** (%struct.fsys_namenode*)*, %struct.trigfileint** (%struct.fsys_namenode*)** getelementptr inbounds (%struct.trig_hooks, %struct.trig_hooks* @trigh, i32 0, i32 3), align 8, !dbg !942
  %69 = load %struct.fsys_namenode*, %struct.fsys_namenode** %11, align 8, !dbg !943
  %70 = call %struct.trigfileint** %68(%struct.fsys_namenode* %69), !dbg !944
  %71 = load %struct.trigfileint*, %struct.trigfileint** %70, align 8, !dbg !945
  %72 = load %struct.trigfileint*, %struct.trigfileint** %13, align 8, !dbg !946
  %73 = getelementptr inbounds %struct.trigfileint, %struct.trigfileint* %72, i32 0, i32 4, !dbg !947
  store %struct.trigfileint* %71, %struct.trigfileint** %73, align 8, !dbg !948
  %74 = load %struct.trigfileint*, %struct.trigfileint** %13, align 8, !dbg !949
  %75 = load %struct.trigfileint** (%struct.fsys_namenode*)*, %struct.trigfileint** (%struct.fsys_namenode*)** getelementptr inbounds (%struct.trig_hooks, %struct.trig_hooks* @trigh, i32 0, i32 3), align 8, !dbg !950
  %76 = load %struct.fsys_namenode*, %struct.fsys_namenode** %11, align 8, !dbg !951
  %77 = call %struct.trigfileint** %75(%struct.fsys_namenode* %76), !dbg !952
  store %struct.trigfileint* %74, %struct.trigfileint** %77, align 8, !dbg !953
  br label %78, !dbg !954, !llvm.loop !955

; <label>:78:                                     ; preds = %53
  %79 = load %struct.trigfileint*, %struct.trigfileint** %13, align 8, !dbg !956
  %80 = getelementptr inbounds %struct.trigfileint, %struct.trigfileint* %79, i32 0, i32 5, !dbg !959
  %81 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %80, i32 0, i32 0, !dbg !960
  store %struct.trigfileint* null, %struct.trigfileint** %81, align 8, !dbg !961
  %82 = load %struct.trigfileint*, %struct.trigfileint** getelementptr inbounds (%struct.anon.3, %struct.anon.3* @filetriggers, i32 0, i32 1), align 8, !dbg !962
  %83 = load %struct.trigfileint*, %struct.trigfileint** %13, align 8, !dbg !963
  %84 = getelementptr inbounds %struct.trigfileint, %struct.trigfileint* %83, i32 0, i32 5, !dbg !964
  %85 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %84, i32 0, i32 1, !dbg !965
  store %struct.trigfileint* %82, %struct.trigfileint** %85, align 8, !dbg !966
  %86 = load %struct.trigfileint*, %struct.trigfileint** getelementptr inbounds (%struct.anon.3, %struct.anon.3* @filetriggers, i32 0, i32 1), align 8, !dbg !967
  %87 = icmp ne %struct.trigfileint* %86, null, !dbg !968
  br i1 %87, label %88, label %93, !dbg !968

; <label>:88:                                     ; preds = %78
  %89 = load %struct.trigfileint*, %struct.trigfileint** %13, align 8, !dbg !969
  %90 = load %struct.trigfileint*, %struct.trigfileint** getelementptr inbounds (%struct.anon.3, %struct.anon.3* @filetriggers, i32 0, i32 1), align 8, !dbg !972
  %91 = getelementptr inbounds %struct.trigfileint, %struct.trigfileint* %90, i32 0, i32 5, !dbg !973
  %92 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %91, i32 0, i32 0, !dbg !974
  store %struct.trigfileint* %89, %struct.trigfileint** %92, align 8, !dbg !975
  br label %95, !dbg !976

; <label>:93:                                     ; preds = %78
  %94 = load %struct.trigfileint*, %struct.trigfileint** %13, align 8, !dbg !977
  store %struct.trigfileint* %94, %struct.trigfileint** getelementptr inbounds (%struct.anon.3, %struct.anon.3* @filetriggers, i32 0, i32 0), align 8, !dbg !979
  br label %95

; <label>:95:                                     ; preds = %93, %88
  %96 = load %struct.trigfileint*, %struct.trigfileint** %13, align 8, !dbg !980
  store %struct.trigfileint* %96, %struct.trigfileint** getelementptr inbounds (%struct.anon.3, %struct.anon.3* @filetriggers, i32 0, i32 1), align 8, !dbg !982
  br label %97, !dbg !983

; <label>:97:                                     ; preds = %95
  br label %165, !dbg !984

; <label>:98:                                     ; preds = %44
  %99 = load i32, i32* %10, align 4, !dbg !985
  %100 = load %struct.trigfileint*, %struct.trigfileint** %13, align 8, !dbg !986
  %101 = getelementptr inbounds %struct.trigfileint, %struct.trigfileint* %100, i32 0, i32 3, !dbg !987
  store i32 %99, i32* %101, align 8, !dbg !988
  %102 = load i32, i32* %9, align 4, !dbg !989
  %103 = icmp sgt i32 %102, 1, !dbg !991
  br i1 %103, label %104, label %110, !dbg !992

; <label>:104:                                    ; preds = %98
  %105 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.27, i32 0, i32 0)) #11, !dbg !993
  %106 = load i8*, i8** %6, align 8, !dbg !994
  %107 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !995
  %108 = load %struct.pkgbin*, %struct.pkgbin** %8, align 8, !dbg !996
  %109 = call i8* @pkgbin_name(%struct.pkginfo* %107, %struct.pkgbin* %108, i32 1), !dbg !997
  call void (i8*, ...) @ohshit(i8* %105, i8* %106, i8* %109) #10, !dbg !998
  unreachable, !dbg !1000

; <label>:110:                                    ; preds = %98
  %111 = load i32, i32* %9, align 4, !dbg !1001
  %112 = icmp sgt i32 %111, 0, !dbg !1003
  br i1 %112, label %113, label %114, !dbg !1004

; <label>:113:                                    ; preds = %110
  br label %166, !dbg !1005

; <label>:114:                                    ; preds = %110
  %115 = load %struct.trigfileint*, %struct.trigfileint** %13, align 8, !dbg !1006
  %116 = getelementptr inbounds %struct.trigfileint, %struct.trigfileint* %115, i32 0, i32 4, !dbg !1007
  %117 = load %struct.trigfileint*, %struct.trigfileint** %116, align 8, !dbg !1007
  %118 = load %struct.trigfileint**, %struct.trigfileint*** %12, align 8, !dbg !1008
  store %struct.trigfileint* %117, %struct.trigfileint** %118, align 8, !dbg !1009
  br label %119, !dbg !1010, !llvm.loop !1011

; <label>:119:                                    ; preds = %114
  %120 = load %struct.trigfileint*, %struct.trigfileint** %13, align 8, !dbg !1012
  %121 = getelementptr inbounds %struct.trigfileint, %struct.trigfileint* %120, i32 0, i32 5, !dbg !1016
  %122 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %121, i32 0, i32 1, !dbg !1017
  %123 = load %struct.trigfileint*, %struct.trigfileint** %122, align 8, !dbg !1017
  %124 = icmp ne %struct.trigfileint* %123, null, !dbg !1018
  br i1 %124, label %125, label %136, !dbg !1018

; <label>:125:                                    ; preds = %119
  %126 = load %struct.trigfileint*, %struct.trigfileint** %13, align 8, !dbg !1019
  %127 = getelementptr inbounds %struct.trigfileint, %struct.trigfileint* %126, i32 0, i32 5, !dbg !1021
  %128 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %127, i32 0, i32 0, !dbg !1022
  %129 = load %struct.trigfileint*, %struct.trigfileint** %128, align 8, !dbg !1022
  %130 = load %struct.trigfileint*, %struct.trigfileint** %13, align 8, !dbg !1023
  %131 = getelementptr inbounds %struct.trigfileint, %struct.trigfileint* %130, i32 0, i32 5, !dbg !1024
  %132 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %131, i32 0, i32 1, !dbg !1025
  %133 = load %struct.trigfileint*, %struct.trigfileint** %132, align 8, !dbg !1025
  %134 = getelementptr inbounds %struct.trigfileint, %struct.trigfileint* %133, i32 0, i32 5, !dbg !1026
  %135 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %134, i32 0, i32 0, !dbg !1027
  store %struct.trigfileint* %129, %struct.trigfileint** %135, align 8, !dbg !1028
  br label %141, !dbg !1029

; <label>:136:                                    ; preds = %119
  %137 = load %struct.trigfileint*, %struct.trigfileint** %13, align 8, !dbg !1030
  %138 = getelementptr inbounds %struct.trigfileint, %struct.trigfileint* %137, i32 0, i32 5, !dbg !1032
  %139 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %138, i32 0, i32 0, !dbg !1033
  %140 = load %struct.trigfileint*, %struct.trigfileint** %139, align 8, !dbg !1033
  store %struct.trigfileint* %140, %struct.trigfileint** getelementptr inbounds (%struct.anon.3, %struct.anon.3* @filetriggers, i32 0, i32 0), align 8, !dbg !1034
  br label %141

; <label>:141:                                    ; preds = %136, %125
  %142 = load %struct.trigfileint*, %struct.trigfileint** %13, align 8, !dbg !1035
  %143 = getelementptr inbounds %struct.trigfileint, %struct.trigfileint* %142, i32 0, i32 5, !dbg !1038
  %144 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %143, i32 0, i32 0, !dbg !1039
  %145 = load %struct.trigfileint*, %struct.trigfileint** %144, align 8, !dbg !1039
  %146 = icmp ne %struct.trigfileint* %145, null, !dbg !1040
  br i1 %146, label %147, label %158, !dbg !1040

; <label>:147:                                    ; preds = %141
  %148 = load %struct.trigfileint*, %struct.trigfileint** %13, align 8, !dbg !1041
  %149 = getelementptr inbounds %struct.trigfileint, %struct.trigfileint* %148, i32 0, i32 5, !dbg !1043
  %150 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %149, i32 0, i32 1, !dbg !1044
  %151 = load %struct.trigfileint*, %struct.trigfileint** %150, align 8, !dbg !1044
  %152 = load %struct.trigfileint*, %struct.trigfileint** %13, align 8, !dbg !1045
  %153 = getelementptr inbounds %struct.trigfileint, %struct.trigfileint* %152, i32 0, i32 5, !dbg !1046
  %154 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %153, i32 0, i32 0, !dbg !1047
  %155 = load %struct.trigfileint*, %struct.trigfileint** %154, align 8, !dbg !1047
  %156 = getelementptr inbounds %struct.trigfileint, %struct.trigfileint* %155, i32 0, i32 5, !dbg !1048
  %157 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %156, i32 0, i32 1, !dbg !1049
  store %struct.trigfileint* %151, %struct.trigfileint** %157, align 8, !dbg !1050
  br label %163, !dbg !1051

; <label>:158:                                    ; preds = %141
  %159 = load %struct.trigfileint*, %struct.trigfileint** %13, align 8, !dbg !1052
  %160 = getelementptr inbounds %struct.trigfileint, %struct.trigfileint* %159, i32 0, i32 5, !dbg !1054
  %161 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %160, i32 0, i32 1, !dbg !1055
  %162 = load %struct.trigfileint*, %struct.trigfileint** %161, align 8, !dbg !1055
  store %struct.trigfileint* %162, %struct.trigfileint** getelementptr inbounds (%struct.anon.3, %struct.anon.3* @filetriggers, i32 0, i32 1), align 8, !dbg !1056
  br label %163

; <label>:163:                                    ; preds = %158, %147
  br label %164, !dbg !1057

; <label>:164:                                    ; preds = %163
  br label %165, !dbg !1059

; <label>:165:                                    ; preds = %164, %97
  store i32 1, i32* @filetriggers_edited, align 4, !dbg !1061
  br label %166, !dbg !1062

; <label>:166:                                    ; preds = %165, %113, %52, %29
  ret void, !dbg !1063
}

declare void @pop_cleanup(i32) #3

; Function Attrs: nounwind uwtable
define void @trig_file_activate_byname(i8*, %struct.pkginfo*) #0 !dbg !1065 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.pkginfo*, align 8
  %5 = alloca %struct.fsys_namenode*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1068, metadata !494), !dbg !1069
  store %struct.pkginfo* %1, %struct.pkginfo** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %4, metadata !1070, metadata !494), !dbg !1071
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %5, metadata !1072, metadata !494), !dbg !1073
  %6 = load %struct.fsys_namenode* (i8*, i1)*, %struct.fsys_namenode* (i8*, i1)** getelementptr inbounds (%struct.trig_hooks, %struct.trig_hooks* @trigh, i32 0, i32 2), align 8, !dbg !1074
  %7 = load i8*, i8** %3, align 8, !dbg !1075
  %8 = call %struct.fsys_namenode* %6(i8* %7, i1 zeroext true), !dbg !1076
  store %struct.fsys_namenode* %8, %struct.fsys_namenode** %5, align 8, !dbg !1073
  %9 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !1077
  %10 = icmp ne %struct.fsys_namenode* %9, null, !dbg !1077
  br i1 %10, label %11, label %14, !dbg !1079

; <label>:11:                                     ; preds = %2
  %12 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !1080
  %13 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !1081
  call void @trig_file_activate(%struct.fsys_namenode* %12, %struct.pkginfo* %13), !dbg !1082
  br label %14, !dbg !1082

; <label>:14:                                     ; preds = %11, %2
  ret void, !dbg !1083
}

; Function Attrs: nounwind uwtable
define void @trig_file_activate(%struct.fsys_namenode*, %struct.pkginfo*) #0 !dbg !1084 {
  %3 = alloca %struct.fsys_namenode*, align 8
  %4 = alloca %struct.pkginfo*, align 8
  %5 = alloca %struct.trigfileint*, align 8
  store %struct.fsys_namenode* %0, %struct.fsys_namenode** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %3, metadata !1087, metadata !494), !dbg !1088
  store %struct.pkginfo* %1, %struct.pkginfo** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %4, metadata !1089, metadata !494), !dbg !1090
  call void @llvm.dbg.declare(metadata %struct.trigfileint** %5, metadata !1091, metadata !494), !dbg !1092
  %6 = load %struct.trigfileint** (%struct.fsys_namenode*)*, %struct.trigfileint** (%struct.fsys_namenode*)** getelementptr inbounds (%struct.trig_hooks, %struct.trig_hooks* @trigh, i32 0, i32 3), align 8, !dbg !1093
  %7 = load %struct.fsys_namenode*, %struct.fsys_namenode** %3, align 8, !dbg !1095
  %8 = call %struct.trigfileint** %6(%struct.fsys_namenode* %7), !dbg !1096
  %9 = load %struct.trigfileint*, %struct.trigfileint** %8, align 8, !dbg !1097
  store %struct.trigfileint* %9, %struct.trigfileint** %5, align 8, !dbg !1098
  br label %10, !dbg !1099

; <label>:10:                                     ; preds = %29, %2
  %11 = load %struct.trigfileint*, %struct.trigfileint** %5, align 8, !dbg !1100
  %12 = icmp ne %struct.trigfileint* %11, null, !dbg !1103
  br i1 %12, label %13, label %33, !dbg !1103

; <label>:13:                                     ; preds = %10
  %14 = load %struct.trigfileint*, %struct.trigfileint** %5, align 8, !dbg !1104
  %15 = getelementptr inbounds %struct.trigfileint, %struct.trigfileint* %14, i32 0, i32 0, !dbg !1105
  %16 = load %struct.pkginfo*, %struct.pkginfo** %15, align 8, !dbg !1105
  %17 = load %struct.trigfileint*, %struct.trigfileint** %5, align 8, !dbg !1106
  %18 = getelementptr inbounds %struct.trigfileint, %struct.trigfileint* %17, i32 0, i32 3, !dbg !1107
  %19 = load i32, i32* %18, align 8, !dbg !1107
  %20 = icmp eq i32 %19, 1, !dbg !1108
  br i1 %20, label %21, label %22, !dbg !1109

; <label>:21:                                     ; preds = %13
  br label %24, !dbg !1110

; <label>:22:                                     ; preds = %13
  %23 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !1111
  br label %24, !dbg !1112

; <label>:24:                                     ; preds = %22, %21
  %25 = phi %struct.pkginfo* [ null, %21 ], [ %23, %22 ], !dbg !1114
  %26 = load i8* (%struct.fsys_namenode*)*, i8* (%struct.fsys_namenode*)** getelementptr inbounds (%struct.trig_hooks, %struct.trig_hooks* @trigh, i32 0, i32 4), align 8, !dbg !1116
  %27 = load %struct.fsys_namenode*, %struct.fsys_namenode** %3, align 8, !dbg !1117
  %28 = call i8* %26(%struct.fsys_namenode* %27), !dbg !1118
  call void @trig_record_activation(%struct.pkginfo* %16, %struct.pkginfo* %25, i8* %28), !dbg !1119
  br label %29, !dbg !1119

; <label>:29:                                     ; preds = %24
  %30 = load %struct.trigfileint*, %struct.trigfileint** %5, align 8, !dbg !1120
  %31 = getelementptr inbounds %struct.trigfileint, %struct.trigfileint* %30, i32 0, i32 4, !dbg !1121
  %32 = load %struct.trigfileint*, %struct.trigfileint** %31, align 8, !dbg !1121
  store %struct.trigfileint* %32, %struct.trigfileint** %5, align 8, !dbg !1122
  br label %10, !dbg !1123, !llvm.loop !1124

; <label>:33:                                     ; preds = %10
  ret void, !dbg !1126
}

; Function Attrs: nounwind uwtable
define internal void @trig_record_activation(%struct.pkginfo*, %struct.pkginfo*, i8*) #0 !dbg !1127 {
  %4 = alloca %struct.pkginfo*, align 8
  %5 = alloca %struct.pkginfo*, align 8
  %6 = alloca i8*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %4, metadata !1130, metadata !494), !dbg !1131
  store %struct.pkginfo* %1, %struct.pkginfo** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %5, metadata !1132, metadata !494), !dbg !1133
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1134, metadata !494), !dbg !1135
  %7 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !1136
  %8 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %7, i32 0, i32 4, !dbg !1138
  %9 = load i32, i32* %8, align 8, !dbg !1138
  %10 = icmp ult i32 %9, 5, !dbg !1139
  br i1 %10, label %11, label %12, !dbg !1140

; <label>:11:                                     ; preds = %3
  br label %46, !dbg !1141

; <label>:12:                                     ; preds = %3
  %13 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !1142
  %14 = load i8*, i8** %6, align 8, !dbg !1144
  %15 = call zeroext i1 @trig_note_pend(%struct.pkginfo* %13, i8* %14), !dbg !1145
  br i1 %15, label %16, label %18, !dbg !1146

; <label>:16:                                     ; preds = %12
  %17 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !1147
  call void @modstatdb_note_ifwrite(%struct.pkginfo* %17), !dbg !1148
  br label %18, !dbg !1148

; <label>:18:                                     ; preds = %16, %12
  %19 = load void (%struct.pkginfo*)*, void (%struct.pkginfo*)** getelementptr inbounds (%struct.trig_hooks, %struct.trig_hooks* @trigh, i32 0, i32 0), align 8, !dbg !1149
  %20 = icmp ne void (%struct.pkginfo*)* %19, null, !dbg !1151
  br i1 %20, label %21, label %24, !dbg !1152

; <label>:21:                                     ; preds = %18
  %22 = load void (%struct.pkginfo*)*, void (%struct.pkginfo*)** getelementptr inbounds (%struct.trig_hooks, %struct.trig_hooks* @trigh, i32 0, i32 0), align 8, !dbg !1153
  %23 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !1154
  call void %22(%struct.pkginfo* %23), !dbg !1155
  br label %24, !dbg !1155

; <label>:24:                                     ; preds = %21, %18
  %25 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1156
  %26 = icmp ne %struct.pkginfo* %25, null, !dbg !1156
  br i1 %26, label %27, label %46, !dbg !1158

; <label>:27:                                     ; preds = %24
  %28 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !1159
  %29 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %28, i32 0, i32 4, !dbg !1161
  %30 = load i32, i32* %29, align 8, !dbg !1161
  %31 = icmp ugt i32 %30, 1, !dbg !1162
  br i1 %31, label %32, label %46, !dbg !1163

; <label>:32:                                     ; preds = %27
  %33 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !1164
  %34 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1166
  %35 = call zeroext i1 @trig_note_aw(%struct.pkginfo* %33, %struct.pkginfo* %34), !dbg !1167
  br i1 %35, label %36, label %45, !dbg !1168

; <label>:36:                                     ; preds = %32
  %37 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1169
  %38 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %37, i32 0, i32 4, !dbg !1172
  %39 = load i32, i32* %38, align 8, !dbg !1172
  %40 = icmp ugt i32 %39, 5, !dbg !1173
  br i1 %40, label %41, label %43, !dbg !1174

; <label>:41:                                     ; preds = %36
  %42 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1175
  call void @pkg_set_status(%struct.pkginfo* %42, i32 5), !dbg !1176
  br label %43, !dbg !1176

; <label>:43:                                     ; preds = %41, %36
  %44 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1177
  call void @modstatdb_note_ifwrite(%struct.pkginfo* %44), !dbg !1178
  br label %45, !dbg !1179

; <label>:45:                                     ; preds = %43, %32
  br label %46, !dbg !1180

; <label>:46:                                     ; preds = %11, %45, %27, %24
  ret void, !dbg !1182
}

; Function Attrs: nounwind uwtable
define void @trig_path_activate(%struct.fsys_namenode*, %struct.pkginfo*) #0 !dbg !1183 {
  %3 = alloca %struct.fsys_namenode*, align 8
  %4 = alloca %struct.pkginfo*, align 8
  store %struct.fsys_namenode* %0, %struct.fsys_namenode** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %3, metadata !1184, metadata !494), !dbg !1185
  store %struct.pkginfo* %1, %struct.pkginfo** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %4, metadata !1186, metadata !494), !dbg !1187
  %5 = load %struct.fsys_namenode*, %struct.fsys_namenode** %3, align 8, !dbg !1188
  %6 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !1189
  call void @trig_file_activate(%struct.fsys_namenode* %5, %struct.pkginfo* %6), !dbg !1190
  %7 = load i8* (%struct.fsys_namenode*)*, i8* (%struct.fsys_namenode*)** getelementptr inbounds (%struct.trig_hooks, %struct.trig_hooks* @trigh, i32 0, i32 4), align 8, !dbg !1191
  %8 = load %struct.fsys_namenode*, %struct.fsys_namenode** %3, align 8, !dbg !1192
  %9 = call i8* %7(%struct.fsys_namenode* %8), !dbg !1193
  %10 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !1194
  call void @trig_file_activate_parents(i8* %9, %struct.pkginfo* %10), !dbg !1195
  ret void, !dbg !1197
}

; Function Attrs: nounwind uwtable
define internal void @trig_file_activate_parents(i8*, %struct.pkginfo*) #0 !dbg !1198 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.pkginfo*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1199, metadata !494), !dbg !1200
  store %struct.pkginfo* %1, %struct.pkginfo** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %4, metadata !1201, metadata !494), !dbg !1202
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1203, metadata !494), !dbg !1204
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1205, metadata !494), !dbg !1206
  %7 = load i8*, i8** %3, align 8, !dbg !1207
  %8 = call i8* @m_strdup(i8* %7), !dbg !1208
  store i8* %8, i8** %5, align 8, !dbg !1209
  br label %9, !dbg !1210

; <label>:9:                                      ; preds = %13, %2
  %10 = load i8*, i8** %5, align 8, !dbg !1211
  %11 = call i8* @strrchr(i8* %10, i32 47) #12, !dbg !1213
  store i8* %11, i8** %6, align 8, !dbg !1214
  %12 = icmp ne i8* %11, null, !dbg !1215
  br i1 %12, label %13, label %17, !dbg !1215

; <label>:13:                                     ; preds = %9
  %14 = load i8*, i8** %6, align 8, !dbg !1216
  store i8 0, i8* %14, align 1, !dbg !1218
  %15 = load i8*, i8** %5, align 8, !dbg !1219
  %16 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !1220
  call void @trig_file_activate_byname(i8* %15, %struct.pkginfo* %16), !dbg !1221
  br label %9, !dbg !1222, !llvm.loop !1224

; <label>:17:                                     ; preds = %9
  %18 = load i8*, i8** %5, align 8, !dbg !1225
  call void @free(i8* %18) #11, !dbg !1226
  ret void, !dbg !1227
}

; Function Attrs: nounwind uwtable
define void @trig_cicb_interest_delete(i8*, %struct.pkginfo*, %struct.pkgbin*, i32) #0 !dbg !1228 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pkginfo*, align 8
  %7 = alloca %struct.pkgbin*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1231, metadata !494), !dbg !1232
  store %struct.pkginfo* %1, %struct.pkginfo** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %6, metadata !1233, metadata !494), !dbg !1234
  store %struct.pkgbin* %2, %struct.pkgbin** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %7, metadata !1235, metadata !494), !dbg !1236
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1237, metadata !494), !dbg !1238
  %9 = load i8*, i8** %5, align 8, !dbg !1239
  %10 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !1240
  %11 = load %struct.pkgbin*, %struct.pkgbin** %7, align 8, !dbg !1241
  %12 = load i32, i32* %8, align 4, !dbg !1242
  call void @trig_cicb_interest_change(i8* %9, %struct.pkginfo* %10, %struct.pkgbin* %11, i32 -1, i32 %12), !dbg !1243
  ret void, !dbg !1244
}

; Function Attrs: nounwind uwtable
define internal void @trig_cicb_interest_change(i8*, %struct.pkginfo*, %struct.pkgbin*, i32, i32) #0 !dbg !1245 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.pkginfo*, align 8
  %8 = alloca %struct.pkgbin*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.trigkindinfo*, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1246, metadata !494), !dbg !1247
  store %struct.pkginfo* %1, %struct.pkginfo** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %7, metadata !1248, metadata !494), !dbg !1249
  store %struct.pkgbin* %2, %struct.pkgbin** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %8, metadata !1250, metadata !494), !dbg !1251
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1252, metadata !494), !dbg !1253
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1254, metadata !494), !dbg !1255
  call void @llvm.dbg.declare(metadata %struct.trigkindinfo** %11, metadata !1256, metadata !494), !dbg !1257
  %12 = load i8*, i8** %6, align 8, !dbg !1258
  %13 = call %struct.trigkindinfo* @trig_classify_byname(i8* %12), !dbg !1259
  store %struct.trigkindinfo* %13, %struct.trigkindinfo** %11, align 8, !dbg !1257
  %14 = load i32, i32* @filetriggers_edited, align 4, !dbg !1260
  %15 = icmp slt i32 %14, 0, !dbg !1262
  br i1 %15, label %16, label %20, !dbg !1263

; <label>:16:                                     ; preds = %5
  %17 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1264
  %18 = load %struct.pkgbin*, %struct.pkgbin** %8, align 8, !dbg !1265
  %19 = call i8* @pkgbin_name(%struct.pkginfo* %17, %struct.pkgbin* %18, i32 3), !dbg !1266
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 636, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.trig_cicb_interest_change, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.28, i32 0, i32 0), i8* %19) #10, !dbg !1267
  unreachable, !dbg !1269

; <label>:20:                                     ; preds = %5
  %21 = load %struct.trigkindinfo*, %struct.trigkindinfo** %11, align 8, !dbg !1270
  %22 = getelementptr inbounds %struct.trigkindinfo, %struct.trigkindinfo* %21, i32 0, i32 3, !dbg !1271
  %23 = load void (i8*, %struct.pkginfo*, %struct.pkgbin*, i32, i32)*, void (i8*, %struct.pkginfo*, %struct.pkgbin*, i32, i32)** %22, align 8, !dbg !1271
  %24 = load i8*, i8** %6, align 8, !dbg !1272
  %25 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1273
  %26 = load %struct.pkgbin*, %struct.pkgbin** %8, align 8, !dbg !1274
  %27 = load i32, i32* %9, align 4, !dbg !1275
  %28 = load i32, i32* %10, align 4, !dbg !1276
  call void %23(i8* %24, %struct.pkginfo* %25, %struct.pkgbin* %26, i32 %27, i32 %28), !dbg !1270
  ret void, !dbg !1277
}

; Function Attrs: nounwind uwtable
define void @trig_cicb_interest_add(i8*, %struct.pkginfo*, %struct.pkgbin*, i32) #0 !dbg !1278 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pkginfo*, align 8
  %7 = alloca %struct.pkgbin*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1279, metadata !494), !dbg !1280
  store %struct.pkginfo* %1, %struct.pkginfo** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %6, metadata !1281, metadata !494), !dbg !1282
  store %struct.pkgbin* %2, %struct.pkgbin** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %7, metadata !1283, metadata !494), !dbg !1284
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1285, metadata !494), !dbg !1286
  %9 = load i8*, i8** %5, align 8, !dbg !1287
  %10 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !1288
  %11 = load %struct.pkgbin*, %struct.pkgbin** %7, align 8, !dbg !1289
  %12 = load i32, i32* %8, align 4, !dbg !1290
  call void @trig_cicb_interest_change(i8* %9, %struct.pkginfo* %10, %struct.pkgbin* %11, i32 1, i32 %12), !dbg !1291
  ret void, !dbg !1292
}

; Function Attrs: nounwind uwtable
define void @trig_cicb_statuschange_activate(i8*, %struct.pkginfo*, %struct.pkgbin*, i32) #0 !dbg !1293 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pkginfo*, align 8
  %7 = alloca %struct.pkgbin*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pkginfo*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1294, metadata !494), !dbg !1295
  store %struct.pkginfo* %1, %struct.pkginfo** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %6, metadata !1296, metadata !494), !dbg !1297
  store %struct.pkgbin* %2, %struct.pkgbin** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %7, metadata !1298, metadata !494), !dbg !1299
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1300, metadata !494), !dbg !1301
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %9, metadata !1302, metadata !494), !dbg !1303
  %10 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !1304
  store %struct.pkginfo* %10, %struct.pkginfo** %9, align 8, !dbg !1303
  %11 = load i8*, i8** %5, align 8, !dbg !1305
  call void @trig_activate_start(i8* %11), !dbg !1306
  %12 = load %struct.trigkindinfo*, %struct.trigkindinfo** @dtki, align 8, !dbg !1307
  %13 = getelementptr inbounds %struct.trigkindinfo, %struct.trigkindinfo* %12, i32 0, i32 1, !dbg !1308
  %14 = load void (%struct.pkginfo*)*, void (%struct.pkginfo*)** %13, align 8, !dbg !1308
  %15 = load i32, i32* %8, align 4, !dbg !1309
  %16 = icmp eq i32 %15, 1, !dbg !1310
  br i1 %16, label %17, label %18, !dbg !1311

; <label>:17:                                     ; preds = %4
  br label %20, !dbg !1312

; <label>:18:                                     ; preds = %4
  %19 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !1314
  br label %20, !dbg !1316

; <label>:20:                                     ; preds = %18, %17
  %21 = phi %struct.pkginfo* [ null, %17 ], [ %19, %18 ], !dbg !1317
  call void %14(%struct.pkginfo* %21), !dbg !1319
  %22 = load %struct.trigkindinfo*, %struct.trigkindinfo** @dtki, align 8, !dbg !1320
  %23 = getelementptr inbounds %struct.trigkindinfo, %struct.trigkindinfo* %22, i32 0, i32 2, !dbg !1321
  %24 = load void ()*, void ()** %23, align 8, !dbg !1321
  call void %24(), !dbg !1320
  ret void, !dbg !1322
}

; Function Attrs: nounwind uwtable
define internal void @trig_activate_start(i8*) #0 !dbg !1323 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1324, metadata !494), !dbg !1325
  %3 = load i8*, i8** %2, align 8, !dbg !1326
  %4 = call %struct.trigkindinfo* @trig_classify_byname(i8* %3), !dbg !1327
  store %struct.trigkindinfo* %4, %struct.trigkindinfo** @dtki, align 8, !dbg !1328
  %5 = load i8*, i8** %2, align 8, !dbg !1329
  %6 = call i8* @nfstrsave(i8* %5), !dbg !1330
  store i8* %6, i8** @trig_activating_name, align 8, !dbg !1331
  %7 = load %struct.trigkindinfo*, %struct.trigkindinfo** @dtki, align 8, !dbg !1332
  %8 = getelementptr inbounds %struct.trigkindinfo, %struct.trigkindinfo* %7, i32 0, i32 0, !dbg !1333
  %9 = load void ()*, void ()** %8, align 8, !dbg !1333
  call void %9(), !dbg !1332
  ret void, !dbg !1334
}

; Function Attrs: nounwind uwtable
define void @trig_parse_ci(i8*, void (i8*, %struct.pkginfo*, %struct.pkgbin*, i32)*, void (i8*, %struct.pkginfo*, %struct.pkgbin*, i32)*, %struct.pkginfo*, %struct.pkgbin*) #0 !dbg !1335 {
  %6 = alloca i8*, align 8
  %7 = alloca void (i8*, %struct.pkginfo*, %struct.pkgbin*, i32)*, align 8
  %8 = alloca void (i8*, %struct.pkginfo*, %struct.pkgbin*, i32)*, align 8
  %9 = alloca %struct.pkginfo*, align 8
  %10 = alloca %struct.pkgbin*, align 8
  %11 = alloca %struct._IO_FILE*, align 8
  %12 = alloca [256 x i8], align 16
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1340, metadata !494), !dbg !1341
  store void (i8*, %struct.pkginfo*, %struct.pkgbin*, i32)* %1, void (i8*, %struct.pkginfo*, %struct.pkgbin*, i32)** %7, align 8
  call void @llvm.dbg.declare(metadata void (i8*, %struct.pkginfo*, %struct.pkgbin*, i32)** %7, metadata !1342, metadata !494), !dbg !1343
  store void (i8*, %struct.pkginfo*, %struct.pkgbin*, i32)* %2, void (i8*, %struct.pkginfo*, %struct.pkgbin*, i32)** %8, align 8
  call void @llvm.dbg.declare(metadata void (i8*, %struct.pkginfo*, %struct.pkgbin*, i32)** %8, metadata !1344, metadata !494), !dbg !1345
  store %struct.pkginfo* %3, %struct.pkginfo** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %9, metadata !1346, metadata !494), !dbg !1347
  store %struct.pkgbin* %4, %struct.pkgbin** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %10, metadata !1348, metadata !494), !dbg !1349
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %11, metadata !1350, metadata !494), !dbg !1351
  call void @llvm.dbg.declare(metadata [256 x i8]* %12, metadata !1352, metadata !494), !dbg !1356
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1357, metadata !494), !dbg !1358
  call void @llvm.dbg.declare(metadata i8** %14, metadata !1359, metadata !494), !dbg !1360
  call void @llvm.dbg.declare(metadata i8** %15, metadata !1361, metadata !494), !dbg !1362
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1363, metadata !494), !dbg !1364
  %17 = load i8*, i8** %6, align 8, !dbg !1365
  %18 = call %struct._IO_FILE* @fopen(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)), !dbg !1366
  store %struct._IO_FILE* %18, %struct._IO_FILE** %11, align 8, !dbg !1367
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8, !dbg !1368
  %20 = icmp ne %struct._IO_FILE* %19, null, !dbg !1368
  br i1 %20, label %29, label %21, !dbg !1370

; <label>:21:                                     ; preds = %5
  %22 = call i32* @__errno_location() #1, !dbg !1371
  %23 = load i32, i32* %22, align 4, !dbg !1374
  %24 = icmp eq i32 %23, 2, !dbg !1375
  br i1 %24, label %25, label %26, !dbg !1376

; <label>:25:                                     ; preds = %21
  br label %177, !dbg !1377

; <label>:26:                                     ; preds = %21
  %27 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i32 0, i32 0)) #11, !dbg !1378
  %28 = load i8*, i8** %6, align 8, !dbg !1379
  call void (i8*, ...) @ohshite(i8* %27, i8* %28) #10, !dbg !1380
  unreachable, !dbg !1382

; <label>:29:                                     ; preds = %5
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8, !dbg !1383
  call void (void (i32, i8**)*, i32, i32, ...) @push_cleanup(void (i32, i8**)* @cu_closestream, i32 -1, i32 1, %struct._IO_FILE* %30), !dbg !1384
  br label %31, !dbg !1385

; <label>:31:                                     ; preds = %175, %79, %53, %29
  %32 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i32 0, i32 0, !dbg !1386
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8, !dbg !1388
  %34 = load i8*, i8** %6, align 8, !dbg !1389
  %35 = call i32 @fgets_checked(i8* %32, i64 256, %struct._IO_FILE* %33, i8* %34), !dbg !1390
  store i32 %35, i32* %16, align 4, !dbg !1391
  %36 = icmp sge i32 %35, 0, !dbg !1392
  br i1 %36, label %37, label %176, !dbg !1393

; <label>:37:                                     ; preds = %31
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i32 0, i32 0, !dbg !1394
  store i8* %38, i8** %13, align 8, !dbg !1397
  br label %39, !dbg !1398

; <label>:39:                                     ; preds = %45, %37
  %40 = load i8*, i8** %13, align 8, !dbg !1399
  %41 = load i8, i8* %40, align 1, !dbg !1402
  %42 = sext i8 %41 to i32, !dbg !1402
  %43 = call zeroext i1 @c_iswhite(i32 %42), !dbg !1403
  br i1 %43, label %44, label %48, !dbg !1404

; <label>:44:                                     ; preds = %39
  br label %45, !dbg !1405

; <label>:45:                                     ; preds = %44
  %46 = load i8*, i8** %13, align 8, !dbg !1407
  %47 = getelementptr inbounds i8, i8* %46, i32 1, !dbg !1407
  store i8* %47, i8** %13, align 8, !dbg !1407
  br label %39, !dbg !1409, !llvm.loop !1410

; <label>:48:                                     ; preds = %39
  %49 = load i8*, i8** %13, align 8, !dbg !1412
  %50 = load i8, i8* %49, align 1, !dbg !1414
  %51 = sext i8 %50 to i32, !dbg !1414
  %52 = icmp eq i32 %51, 35, !dbg !1415
  br i1 %52, label %53, label %54, !dbg !1416

; <label>:53:                                     ; preds = %48
  br label %31, !dbg !1417, !llvm.loop !1418

; <label>:54:                                     ; preds = %48
  %55 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i32 0, i32 0, !dbg !1419
  %56 = load i32, i32* %16, align 4, !dbg !1421
  %57 = sext i32 %56 to i64, !dbg !1422
  %58 = getelementptr inbounds i8, i8* %55, i64 %57, !dbg !1422
  store i8* %58, i8** %15, align 8, !dbg !1423
  br label %59, !dbg !1424

; <label>:59:                                     ; preds = %72, %54
  %60 = load i8*, i8** %15, align 8, !dbg !1425
  %61 = load i8*, i8** %13, align 8, !dbg !1428
  %62 = icmp ugt i8* %60, %61, !dbg !1429
  br i1 %62, label %63, label %69, !dbg !1430

; <label>:63:                                     ; preds = %59
  %64 = load i8*, i8** %15, align 8, !dbg !1431
  %65 = getelementptr inbounds i8, i8* %64, i64 -1, !dbg !1431
  %66 = load i8, i8* %65, align 1, !dbg !1431
  %67 = sext i8 %66 to i32, !dbg !1431
  %68 = call zeroext i1 @c_iswhite(i32 %67), !dbg !1433
  br label %69

; <label>:69:                                     ; preds = %63, %59
  %70 = phi i1 [ false, %59 ], [ %68, %63 ]
  br i1 %70, label %71, label %75, !dbg !1434

; <label>:71:                                     ; preds = %69
  br label %72, !dbg !1436

; <label>:72:                                     ; preds = %71
  %73 = load i8*, i8** %15, align 8, !dbg !1438
  %74 = getelementptr inbounds i8, i8* %73, i32 -1, !dbg !1438
  store i8* %74, i8** %15, align 8, !dbg !1438
  br label %59, !dbg !1440, !llvm.loop !1441

; <label>:75:                                     ; preds = %69
  %76 = load i8*, i8** %15, align 8, !dbg !1443
  %77 = load i8*, i8** %13, align 8, !dbg !1445
  %78 = icmp eq i8* %76, %77, !dbg !1446
  br i1 %78, label %79, label %80, !dbg !1447

; <label>:79:                                     ; preds = %75
  br label %31, !dbg !1448, !llvm.loop !1418

; <label>:80:                                     ; preds = %75
  %81 = load i8*, i8** %15, align 8, !dbg !1449
  store i8 0, i8* %81, align 1, !dbg !1450
  %82 = load i8*, i8** %13, align 8, !dbg !1451
  store i8* %82, i8** %14, align 8, !dbg !1453
  br label %83, !dbg !1454

; <label>:83:                                     ; preds = %97, %80
  %84 = load i8*, i8** %14, align 8, !dbg !1455
  %85 = load i8, i8* %84, align 1, !dbg !1458
  %86 = sext i8 %85 to i32, !dbg !1458
  %87 = icmp ne i32 %86, 0, !dbg !1458
  br i1 %87, label %88, label %94, !dbg !1459

; <label>:88:                                     ; preds = %83
  %89 = load i8*, i8** %14, align 8, !dbg !1460
  %90 = load i8, i8* %89, align 1, !dbg !1462
  %91 = sext i8 %90 to i32, !dbg !1462
  %92 = call zeroext i1 @c_iswhite(i32 %91), !dbg !1463
  %93 = xor i1 %92, true, !dbg !1464
  br label %94

; <label>:94:                                     ; preds = %88, %83
  %95 = phi i1 [ false, %83 ], [ %93, %88 ]
  br i1 %95, label %96, label %100, !dbg !1465

; <label>:96:                                     ; preds = %94
  br label %97, !dbg !1467

; <label>:97:                                     ; preds = %96
  %98 = load i8*, i8** %14, align 8, !dbg !1469
  %99 = getelementptr inbounds i8, i8* %98, i32 1, !dbg !1469
  store i8* %99, i8** %14, align 8, !dbg !1469
  br label %83, !dbg !1471, !llvm.loop !1472

; <label>:100:                                    ; preds = %94
  %101 = load i8*, i8** %14, align 8, !dbg !1474
  %102 = load i8, i8* %101, align 1, !dbg !1476
  %103 = icmp ne i8 %102, 0, !dbg !1476
  br i1 %103, label %106, label %104, !dbg !1477

; <label>:104:                                    ; preds = %100
  %105 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i32 0, i32 0)) #11, !dbg !1478
  call void (i8*, ...) @ohshit(i8* %105) #10, !dbg !1479
  unreachable, !dbg !1481

; <label>:106:                                    ; preds = %100
  %107 = load i8*, i8** %14, align 8, !dbg !1482
  %108 = getelementptr inbounds i8, i8* %107, i32 1, !dbg !1482
  store i8* %108, i8** %14, align 8, !dbg !1482
  store i8 0, i8* %107, align 1, !dbg !1483
  br label %109, !dbg !1484

; <label>:109:                                    ; preds = %114, %106
  %110 = load i8*, i8** %14, align 8, !dbg !1485
  %111 = load i8, i8* %110, align 1, !dbg !1487
  %112 = sext i8 %111 to i32, !dbg !1487
  %113 = call zeroext i1 @c_iswhite(i32 %112), !dbg !1488
  br i1 %113, label %114, label %117, !dbg !1489

; <label>:114:                                    ; preds = %109
  %115 = load i8*, i8** %14, align 8, !dbg !1490
  %116 = getelementptr inbounds i8, i8* %115, i32 1, !dbg !1490
  store i8* %116, i8** %14, align 8, !dbg !1490
  br label %109, !dbg !1491, !llvm.loop !1493

; <label>:117:                                    ; preds = %109
  %118 = load i8*, i8** %13, align 8, !dbg !1494
  %119 = call i32 @strcmp(i8* %118, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0)) #12, !dbg !1496
  %120 = icmp eq i32 %119, 0, !dbg !1497
  br i1 %120, label %125, label %121, !dbg !1498

; <label>:121:                                    ; preds = %117
  %122 = load i8*, i8** %13, align 8, !dbg !1499
  %123 = call i32 @strcmp(i8* %122, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0)) #12, !dbg !1500
  %124 = icmp eq i32 %123, 0, !dbg !1501
  br i1 %124, label %125, label %132, !dbg !1502

; <label>:125:                                    ; preds = %121, %117
  %126 = load i8*, i8** %6, align 8, !dbg !1503
  %127 = load i8*, i8** %13, align 8, !dbg !1505
  %128 = load void (i8*, %struct.pkginfo*, %struct.pkgbin*, i32)*, void (i8*, %struct.pkginfo*, %struct.pkgbin*, i32)** %7, align 8, !dbg !1506
  %129 = load i8*, i8** %14, align 8, !dbg !1507
  %130 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !1508
  %131 = load %struct.pkgbin*, %struct.pkgbin** %10, align 8, !dbg !1509
  call void @parse_ci_call(i8* %126, i8* %127, void (i8*, %struct.pkginfo*, %struct.pkgbin*, i32)* %128, i8* %129, %struct.pkginfo* %130, %struct.pkgbin* %131, i32 0), !dbg !1510
  br label %175, !dbg !1511

; <label>:132:                                    ; preds = %121
  %133 = load i8*, i8** %13, align 8, !dbg !1512
  %134 = call i32 @strcmp(i8* %133, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0)) #12, !dbg !1515
  %135 = icmp eq i32 %134, 0, !dbg !1516
  br i1 %135, label %136, label %143, !dbg !1515

; <label>:136:                                    ; preds = %132
  %137 = load i8*, i8** %6, align 8, !dbg !1517
  %138 = load i8*, i8** %13, align 8, !dbg !1519
  %139 = load void (i8*, %struct.pkginfo*, %struct.pkgbin*, i32)*, void (i8*, %struct.pkginfo*, %struct.pkgbin*, i32)** %7, align 8, !dbg !1520
  %140 = load i8*, i8** %14, align 8, !dbg !1521
  %141 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !1522
  %142 = load %struct.pkgbin*, %struct.pkgbin** %10, align 8, !dbg !1523
  call void @parse_ci_call(i8* %137, i8* %138, void (i8*, %struct.pkginfo*, %struct.pkgbin*, i32)* %139, i8* %140, %struct.pkginfo* %141, %struct.pkgbin* %142, i32 1), !dbg !1524
  br label %174, !dbg !1525

; <label>:143:                                    ; preds = %132
  %144 = load i8*, i8** %13, align 8, !dbg !1526
  %145 = call i32 @strcmp(i8* %144, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0)) #12, !dbg !1529
  %146 = icmp eq i32 %145, 0, !dbg !1530
  br i1 %146, label %151, label %147, !dbg !1531

; <label>:147:                                    ; preds = %143
  %148 = load i8*, i8** %13, align 8, !dbg !1532
  %149 = call i32 @strcmp(i8* %148, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0)) #12, !dbg !1533
  %150 = icmp eq i32 %149, 0, !dbg !1534
  br i1 %150, label %151, label %158, !dbg !1535

; <label>:151:                                    ; preds = %147, %143
  %152 = load i8*, i8** %6, align 8, !dbg !1537
  %153 = load i8*, i8** %13, align 8, !dbg !1539
  %154 = load void (i8*, %struct.pkginfo*, %struct.pkgbin*, i32)*, void (i8*, %struct.pkginfo*, %struct.pkgbin*, i32)** %8, align 8, !dbg !1540
  %155 = load i8*, i8** %14, align 8, !dbg !1541
  %156 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !1542
  %157 = load %struct.pkgbin*, %struct.pkgbin** %10, align 8, !dbg !1543
  call void @parse_ci_call(i8* %152, i8* %153, void (i8*, %struct.pkginfo*, %struct.pkgbin*, i32)* %154, i8* %155, %struct.pkginfo* %156, %struct.pkgbin* %157, i32 0), !dbg !1544
  br label %173, !dbg !1545

; <label>:158:                                    ; preds = %147
  %159 = load i8*, i8** %13, align 8, !dbg !1546
  %160 = call i32 @strcmp(i8* %159, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0)) #12, !dbg !1549
  %161 = icmp eq i32 %160, 0, !dbg !1550
  br i1 %161, label %162, label %169, !dbg !1549

; <label>:162:                                    ; preds = %158
  %163 = load i8*, i8** %6, align 8, !dbg !1551
  %164 = load i8*, i8** %13, align 8, !dbg !1553
  %165 = load void (i8*, %struct.pkginfo*, %struct.pkgbin*, i32)*, void (i8*, %struct.pkginfo*, %struct.pkgbin*, i32)** %8, align 8, !dbg !1554
  %166 = load i8*, i8** %14, align 8, !dbg !1555
  %167 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !1556
  %168 = load %struct.pkgbin*, %struct.pkgbin** %10, align 8, !dbg !1557
  call void @parse_ci_call(i8* %163, i8* %164, void (i8*, %struct.pkginfo*, %struct.pkgbin*, i32)* %165, i8* %166, %struct.pkginfo* %167, %struct.pkgbin* %168, i32 1), !dbg !1558
  br label %172, !dbg !1559

; <label>:169:                                    ; preds = %158
  %170 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.17, i32 0, i32 0)) #11, !dbg !1560
  %171 = load i8*, i8** %13, align 8, !dbg !1562
  call void (i8*, ...) @ohshit(i8* %170, i8* %171) #10, !dbg !1563
  unreachable, !dbg !1565

; <label>:172:                                    ; preds = %162
  br label %173

; <label>:173:                                    ; preds = %172, %151
  br label %174

; <label>:174:                                    ; preds = %173, %136
  br label %175

; <label>:175:                                    ; preds = %174, %125
  br label %31, !dbg !1566, !llvm.loop !1418

; <label>:176:                                    ; preds = %31
  call void @pop_cleanup(i32 1), !dbg !1568
  br label %177, !dbg !1569

; <label>:177:                                    ; preds = %176, %25
  ret void, !dbg !1570
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @c_iswhite(i32) #7 !dbg !1571 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1574, metadata !494), !dbg !1575
  %3 = load i32, i32* %2, align 4, !dbg !1576
  %4 = call zeroext i1 @c_isbits(i32 %3, i32 2), !dbg !1577
  ret i1 %4, !dbg !1578
}

; Function Attrs: nounwind uwtable
define internal void @parse_ci_call(i8*, i8*, void (i8*, %struct.pkginfo*, %struct.pkgbin*, i32)*, i8*, %struct.pkginfo*, %struct.pkgbin*, i32) #0 !dbg !1579 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca void (i8*, %struct.pkginfo*, %struct.pkgbin*, i32)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.pkginfo*, align 8
  %13 = alloca %struct.pkgbin*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1582, metadata !494), !dbg !1583
  store i8* %1, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1584, metadata !494), !dbg !1585
  store void (i8*, %struct.pkginfo*, %struct.pkgbin*, i32)* %2, void (i8*, %struct.pkginfo*, %struct.pkgbin*, i32)** %10, align 8
  call void @llvm.dbg.declare(metadata void (i8*, %struct.pkginfo*, %struct.pkgbin*, i32)** %10, metadata !1586, metadata !494), !dbg !1587
  store i8* %3, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1588, metadata !494), !dbg !1589
  store %struct.pkginfo* %4, %struct.pkginfo** %12, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %12, metadata !1590, metadata !494), !dbg !1591
  store %struct.pkgbin* %5, %struct.pkgbin** %13, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %13, metadata !1592, metadata !494), !dbg !1593
  store i32 %6, i32* %14, align 4
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1594, metadata !494), !dbg !1595
  call void @llvm.dbg.declare(metadata i8** %15, metadata !1596, metadata !494), !dbg !1597
  %16 = load i8*, i8** %11, align 8, !dbg !1598
  %17 = call i8* @trig_name_is_illegal(i8* %16), !dbg !1599
  store i8* %17, i8** %15, align 8, !dbg !1600
  %18 = load i8*, i8** %15, align 8, !dbg !1601
  %19 = icmp ne i8* %18, null, !dbg !1601
  br i1 %19, label %20, label %25, !dbg !1603

; <label>:20:                                     ; preds = %7
  %21 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.35, i32 0, i32 0)) #11, !dbg !1604
  %22 = load i8*, i8** %8, align 8, !dbg !1605
  %23 = load i8*, i8** %11, align 8, !dbg !1606
  %24 = load i8*, i8** %15, align 8, !dbg !1607
  call void (i8*, ...) @ohshit(i8* %21, i8* %22, i8* %23, i8* %24) #10, !dbg !1608
  unreachable, !dbg !1610

; <label>:25:                                     ; preds = %7
  %26 = load void (i8*, %struct.pkginfo*, %struct.pkgbin*, i32)*, void (i8*, %struct.pkginfo*, %struct.pkgbin*, i32)** %10, align 8, !dbg !1611
  %27 = icmp ne void (i8*, %struct.pkginfo*, %struct.pkgbin*, i32)* %26, null, !dbg !1611
  br i1 %27, label %28, label %34, !dbg !1613

; <label>:28:                                     ; preds = %25
  %29 = load void (i8*, %struct.pkginfo*, %struct.pkgbin*, i32)*, void (i8*, %struct.pkginfo*, %struct.pkgbin*, i32)** %10, align 8, !dbg !1614
  %30 = load i8*, i8** %11, align 8, !dbg !1615
  %31 = load %struct.pkginfo*, %struct.pkginfo** %12, align 8, !dbg !1616
  %32 = load %struct.pkgbin*, %struct.pkgbin** %13, align 8, !dbg !1617
  %33 = load i32, i32* %14, align 4, !dbg !1618
  call void %29(i8* %30, %struct.pkginfo* %31, %struct.pkgbin* %32, i32 %33), !dbg !1614
  br label %34, !dbg !1614

; <label>:34:                                     ; preds = %28, %25
  ret void, !dbg !1619
}

; Function Attrs: nounwind uwtable
define void @trig_incorporate(i32) #0 !dbg !1620 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1621, metadata !494), !dbg !1622
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1623, metadata !494), !dbg !1624
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1625, metadata !494), !dbg !1626
  %5 = load i8*, i8** @triggersdir, align 8, !dbg !1627
  call void @free(i8* %5) #11, !dbg !1628
  %6 = call i8* @dpkg_db_get_path(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0)), !dbg !1629
  store i8* %6, i8** @triggersdir, align 8, !dbg !1630
  %7 = load i8*, i8** @triggersfilefile, align 8, !dbg !1631
  call void @free(i8* %7) #11, !dbg !1632
  %8 = load i8*, i8** @triggersdir, align 8, !dbg !1633
  %9 = call i8* @trig_get_filename(i8* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0)), !dbg !1634
  store i8* %9, i8** @triggersfilefile, align 8, !dbg !1635
  call void @trigdef_set_methods(%struct.trigdefmeths* @tdm_incorp), !dbg !1636
  call void @trig_file_interests_ensure(), !dbg !1637
  store i32 1, i32* %4, align 4, !dbg !1638
  %10 = load i32, i32* %2, align 4, !dbg !1639
  %11 = icmp uge i32 %10, 3, !dbg !1641
  br i1 %11, label %12, label %21, !dbg !1642

; <label>:12:                                     ; preds = %1
  %13 = load i32, i32* %4, align 4, !dbg !1643
  %14 = or i32 %13, 2, !dbg !1643
  store i32 %14, i32* %4, align 4, !dbg !1643
  %15 = load void (i32)*, void (i32)** getelementptr inbounds (%struct.trig_hooks, %struct.trig_hooks* @trigh, i32 0, i32 1), align 8, !dbg !1645
  %16 = icmp ne void (i32)* %15, null, !dbg !1647
  br i1 %16, label %17, label %20, !dbg !1648

; <label>:17:                                     ; preds = %12
  %18 = load i32, i32* %4, align 4, !dbg !1649
  %19 = or i32 %18, 16, !dbg !1649
  store i32 %19, i32* %4, align 4, !dbg !1649
  br label %20, !dbg !1650

; <label>:20:                                     ; preds = %17, %12
  br label %21, !dbg !1651

; <label>:21:                                     ; preds = %20, %1
  %22 = load i32, i32* %4, align 4, !dbg !1652
  %23 = call i32 @trigdef_update_start(i32 %22), !dbg !1653
  store i32 %23, i32* %3, align 4, !dbg !1654
  %24 = load i32, i32* %3, align 4, !dbg !1655
  %25 = icmp eq i32 %24, -1, !dbg !1657
  br i1 %25, label %26, label %52, !dbg !1658

; <label>:26:                                     ; preds = %21
  %27 = load i32, i32* %2, align 4, !dbg !1659
  %28 = icmp uge i32 %27, 3, !dbg !1661
  br i1 %28, label %29, label %52, !dbg !1662

; <label>:29:                                     ; preds = %26
  %30 = load i8*, i8** @triggersdir, align 8, !dbg !1663
  %31 = call i32 @mkdir(i8* %30, i32 493) #11, !dbg !1666
  %32 = icmp ne i32 %31, 0, !dbg !1666
  br i1 %32, label %33, label %41, !dbg !1667

; <label>:33:                                     ; preds = %29
  %34 = call i32* @__errno_location() #1, !dbg !1668
  %35 = load i32, i32* %34, align 4, !dbg !1671
  %36 = icmp ne i32 %35, 17, !dbg !1672
  br i1 %36, label %37, label %40, !dbg !1673

; <label>:37:                                     ; preds = %33
  %38 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.20, i32 0, i32 0)) #11, !dbg !1674
  %39 = load i8*, i8** @triggersdir, align 8, !dbg !1675
  call void (i8*, ...) @ohshite(i8* %38, i8* %39) #10, !dbg !1676
  unreachable, !dbg !1678

; <label>:40:                                     ; preds = %33
  br label %49, !dbg !1679

; <label>:41:                                     ; preds = %29
  %42 = load i8*, i8** @triggersdir, align 8, !dbg !1680
  %43 = call i32 @chown(i8* %42, i32 0, i32 0) #11, !dbg !1683
  %44 = icmp ne i32 %43, 0, !dbg !1683
  br i1 %44, label %45, label %48, !dbg !1683

; <label>:45:                                     ; preds = %41
  %46 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.21, i32 0, i32 0)) #11, !dbg !1684
  %47 = load i8*, i8** @triggersdir, align 8, !dbg !1686
  call void (i8*, ...) @ohshite(i8* %46, i8* %47) #10, !dbg !1687
  unreachable, !dbg !1689

; <label>:48:                                     ; preds = %41
  br label %49

; <label>:49:                                     ; preds = %48, %40
  %50 = load i32, i32* %4, align 4, !dbg !1690
  %51 = call i32 @trigdef_update_start(i32 %50), !dbg !1691
  store i32 %51, i32* %3, align 4, !dbg !1692
  br label %52, !dbg !1693

; <label>:52:                                     ; preds = %49, %26, %21
  %53 = load i32, i32* %3, align 4, !dbg !1694
  switch i32 %53, label %65 [
    i32 -2, label %54
    i32 -1, label %55
    i32 -3, label %55
    i32 1, label %60
    i32 2, label %63
  ], !dbg !1695

; <label>:54:                                     ; preds = %52
  br label %68, !dbg !1696

; <label>:55:                                     ; preds = %52, %52
  %56 = load void (i32)*, void (i32)** getelementptr inbounds (%struct.trig_hooks, %struct.trig_hooks* @trigh, i32 0, i32 1), align 8, !dbg !1698
  %57 = icmp ne void (i32)* %56, null, !dbg !1700
  br i1 %57, label %59, label %58, !dbg !1701

; <label>:58:                                     ; preds = %55
  br label %68, !dbg !1702

; <label>:59:                                     ; preds = %55
  br label %60, !dbg !1703

; <label>:60:                                     ; preds = %52, %59
  %61 = load void (i32)*, void (i32)** getelementptr inbounds (%struct.trig_hooks, %struct.trig_hooks* @trigh, i32 0, i32 1), align 8, !dbg !1705
  %62 = load i32, i32* %2, align 4, !dbg !1706
  call void %61(i32 %62), !dbg !1707
  br label %67, !dbg !1708

; <label>:63:                                     ; preds = %52
  %64 = call i32 @trigdef_parse(), !dbg !1709
  br label %67, !dbg !1710

; <label>:65:                                     ; preds = %52
  %66 = load i32, i32* %3, align 4, !dbg !1711
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 815, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.trig_incorporate, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.22, i32 0, i32 0), i32 %66) #10, !dbg !1712
  unreachable, !dbg !1712

; <label>:67:                                     ; preds = %63, %60
  call void @trigdef_process_done(), !dbg !1713
  br label %68, !dbg !1714

; <label>:68:                                     ; preds = %67, %58, %54
  ret void, !dbg !1715
}

; Function Attrs: nounwind
declare void @free(i8*) #5

declare i8* @dpkg_db_get_path(i8*) #3

; Function Attrs: nounwind uwtable
define internal i8* @trig_get_filename(i8*, i8*) #0 !dbg !1717 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1720, metadata !494), !dbg !1721
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1722, metadata !494), !dbg !1723
  %5 = load i8*, i8** %3, align 8, !dbg !1724
  %6 = load i8*, i8** %4, align 8, !dbg !1725
  %7 = call i8* (i8*, ...) @str_fmt(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i8* %5, i8* %6), !dbg !1726
  ret i8* %7, !dbg !1727
}

declare void @trigdef_set_methods(%struct.trigdefmeths*) #3

declare i32 @trigdef_update_start(i32) #3

; Function Attrs: nounwind
declare i32 @mkdir(i8*, i32) #5

; Function Attrs: nounwind
declare i32 @chown(i8*, i32, i32) #5

declare i32 @trigdef_parse() #3

declare void @trigdef_process_done() #3

; Function Attrs: nounwind uwtable
define void @trig_override_hooks(%struct.trig_hooks*) #0 !dbg !1728 {
  %2 = alloca %struct.trig_hooks*, align 8
  store %struct.trig_hooks* %0, %struct.trig_hooks** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.trig_hooks** %2, metadata !1733, metadata !494), !dbg !1734
  %3 = load %struct.trig_hooks*, %struct.trig_hooks** %2, align 8, !dbg !1735
  %4 = bitcast %struct.trig_hooks* %3 to i8*, !dbg !1736
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.trig_hooks* @trigh to i8*), i8* %4, i64 40, i32 8, i1 false), !dbg !1736
  ret void, !dbg !1737
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #8

; Function Attrs: nounwind
declare i32 @unlink(i8*) #5

declare %struct.atomic_file* @atomic_file_new(i8*, i32) #3

declare void @atomic_file_open(%struct.atomic_file*) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

declare i8* @pkgbin_name(%struct.pkginfo*, %struct.pkgbin*, i32) #3

declare void @atomic_file_sync(%struct.atomic_file*) #3

declare void @atomic_file_close(%struct.atomic_file*) #3

declare void @atomic_file_commit(%struct.atomic_file*) #3

declare void @atomic_file_free(%struct.atomic_file*) #3

declare i8* @nfmalloc(i64) #3

declare zeroext i1 @trig_note_pend(%struct.pkginfo*, i8*) #3

declare void @modstatdb_note_ifwrite(%struct.pkginfo*) #3

declare zeroext i1 @trig_note_aw(%struct.pkginfo*, %struct.pkginfo*) #3

declare i8* @m_strdup(i8*) #3

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #6

; Function Attrs: nounwind uwtable
define internal %struct.trigkindinfo* @trig_classify_byname(i8*) #0 !dbg !1738 {
  %2 = alloca %struct.trigkindinfo*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1741, metadata !494), !dbg !1742
  %5 = load i8*, i8** %3, align 8, !dbg !1743
  %6 = getelementptr inbounds i8, i8* %5, i64 0, !dbg !1743
  %7 = load i8, i8* %6, align 1, !dbg !1743
  %8 = sext i8 %7 to i32, !dbg !1743
  %9 = icmp eq i32 %8, 47, !dbg !1745
  br i1 %9, label %10, label %33, !dbg !1746

; <label>:10:                                     ; preds = %1
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1747, metadata !494), !dbg !1749
  %11 = load i8*, i8** %3, align 8, !dbg !1750
  store i8* %11, i8** %4, align 8, !dbg !1751
  br label %12, !dbg !1752

; <label>:12:                                     ; preds = %28, %10
  %13 = load i8*, i8** %4, align 8, !dbg !1753
  %14 = icmp ne i8* %13, null, !dbg !1755
  br i1 %14, label %15, label %32, !dbg !1755

; <label>:15:                                     ; preds = %12
  %16 = load i8*, i8** %4, align 8, !dbg !1756
  %17 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !1756
  %18 = load i8, i8* %17, align 1, !dbg !1756
  %19 = sext i8 %18 to i32, !dbg !1756
  %20 = icmp eq i32 %19, 0, !dbg !1759
  br i1 %20, label %27, label %21, !dbg !1760

; <label>:21:                                     ; preds = %15
  %22 = load i8*, i8** %4, align 8, !dbg !1761
  %23 = getelementptr inbounds i8, i8* %22, i64 1, !dbg !1761
  %24 = load i8, i8* %23, align 1, !dbg !1761
  %25 = sext i8 %24 to i32, !dbg !1761
  %26 = icmp eq i32 %25, 47, !dbg !1763
  br i1 %26, label %27, label %28, !dbg !1764

; <label>:27:                                     ; preds = %21, %15
  br label %43, !dbg !1765

; <label>:28:                                     ; preds = %21
  %29 = load i8*, i8** %4, align 8, !dbg !1766
  %30 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !1767
  %31 = call i8* @strchr(i8* %30, i32 47) #12, !dbg !1768
  store i8* %31, i8** %4, align 8, !dbg !1769
  br label %12, !dbg !1770, !llvm.loop !1772

; <label>:32:                                     ; preds = %12
  store %struct.trigkindinfo* @tki_file, %struct.trigkindinfo** %2, align 8, !dbg !1773
  br label %44, !dbg !1773

; <label>:33:                                     ; preds = %1
  %34 = load i8*, i8** %3, align 8, !dbg !1774
  %35 = call i8* @pkg_name_is_illegal(i8* %34), !dbg !1776
  %36 = icmp ne i8* %35, null, !dbg !1776
  br i1 %36, label %42, label %37, !dbg !1777

; <label>:37:                                     ; preds = %33
  %38 = load i8*, i8** %3, align 8, !dbg !1778
  %39 = call i8* @strchr(i8* %38, i32 95) #12, !dbg !1780
  %40 = icmp ne i8* %39, null, !dbg !1780
  br i1 %40, label %42, label %41, !dbg !1781

; <label>:41:                                     ; preds = %37
  store %struct.trigkindinfo* @tki_explicit, %struct.trigkindinfo** %2, align 8, !dbg !1782
  br label %44, !dbg !1782

; <label>:42:                                     ; preds = %37, %33
  br label %43, !dbg !1783

; <label>:43:                                     ; preds = %42, %27
  store %struct.trigkindinfo* @tki_unknown, %struct.trigkindinfo** %2, align 8, !dbg !1785
  br label %44, !dbg !1785

; <label>:44:                                     ; preds = %43, %41, %32
  %45 = load %struct.trigkindinfo*, %struct.trigkindinfo** %2, align 8, !dbg !1786
  ret %struct.trigkindinfo* %45, !dbg !1786
}

declare i8* @pkg_name_is_illegal(i8*) #3

; Function Attrs: nounwind uwtable
define internal void @trk_file_activate_start() #0 !dbg !1787 {
  %1 = load i8*, i8** @trig_activating_name, align 8, !dbg !1788
  store i8* %1, i8** @trk_file_trig, align 8, !dbg !1789
  ret void, !dbg !1790
}

; Function Attrs: nounwind uwtable
define internal void @trk_file_activate_awaiter(%struct.pkginfo*) #0 !dbg !1791 {
  %2 = alloca %struct.pkginfo*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %2, metadata !1792, metadata !494), !dbg !1793
  %3 = load i8*, i8** @trk_file_trig, align 8, !dbg !1794
  %4 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1795
  call void @trig_path_activate_byname(i8* %3, %struct.pkginfo* %4), !dbg !1796
  ret void, !dbg !1797
}

; Function Attrs: nounwind uwtable
define internal void @trk_file_activate_done() #0 !dbg !1798 {
  ret void, !dbg !1799
}

; Function Attrs: nounwind uwtable
define internal void @trig_path_activate_byname(i8*, %struct.pkginfo*) #0 !dbg !1800 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.pkginfo*, align 8
  %5 = alloca %struct.fsys_namenode*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1801, metadata !494), !dbg !1802
  store %struct.pkginfo* %1, %struct.pkginfo** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %4, metadata !1803, metadata !494), !dbg !1804
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %5, metadata !1805, metadata !494), !dbg !1806
  %6 = load %struct.fsys_namenode* (i8*, i1)*, %struct.fsys_namenode* (i8*, i1)** getelementptr inbounds (%struct.trig_hooks, %struct.trig_hooks* @trigh, i32 0, i32 2), align 8, !dbg !1807
  %7 = load i8*, i8** %3, align 8, !dbg !1808
  %8 = call %struct.fsys_namenode* %6(i8* %7, i1 zeroext true), !dbg !1809
  store %struct.fsys_namenode* %8, %struct.fsys_namenode** %5, align 8, !dbg !1806
  %9 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !1810
  %10 = icmp ne %struct.fsys_namenode* %9, null, !dbg !1810
  br i1 %10, label %11, label %14, !dbg !1812

; <label>:11:                                     ; preds = %2
  %12 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !1813
  %13 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !1814
  call void @trig_file_activate(%struct.fsys_namenode* %12, %struct.pkginfo* %13), !dbg !1815
  br label %14, !dbg !1815

; <label>:14:                                     ; preds = %11, %2
  %15 = load i8*, i8** %3, align 8, !dbg !1816
  %16 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !1817
  call void @trig_file_activate_parents(i8* %15, %struct.pkginfo* %16), !dbg !1818
  ret void, !dbg !1819
}

; Function Attrs: nounwind uwtable
define internal void @trk_explicit_activate_start() #0 !dbg !1820 {
  %1 = load i8*, i8** @trig_activating_name, align 8, !dbg !1821
  call void @trk_explicit_start(i8* %1), !dbg !1822
  %2 = load i8*, i8** @trig_activating_name, align 8, !dbg !1823
  store i8* %2, i8** @trk_explicit_trig, align 8, !dbg !1824
  ret void, !dbg !1825
}

; Function Attrs: nounwind uwtable
define internal void @trk_explicit_activate_awaiter(%struct.pkginfo*) #0 !dbg !1826 {
  %2 = alloca %struct.pkginfo*, align 8
  %3 = alloca [1024 x i8], align 16
  %4 = alloca %struct.pkginfo*, align 8
  %5 = alloca %struct.dpkg_error, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  store %struct.pkginfo* %0, %struct.pkginfo** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %2, metadata !1827, metadata !494), !dbg !1828
  call void @llvm.dbg.declare(metadata [1024 x i8]* %3, metadata !1829, metadata !494), !dbg !1830
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %4, metadata !1831, metadata !494), !dbg !1832
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @trk_explicit_f, align 8, !dbg !1833
  %9 = icmp ne %struct._IO_FILE* %8, null, !dbg !1833
  br i1 %9, label %11, label %10, !dbg !1835

; <label>:10:                                     ; preds = %1
  br label %64, !dbg !1836

; <label>:11:                                     ; preds = %1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @trk_explicit_f, align 8, !dbg !1837
  %13 = call i32 @fseek(%struct._IO_FILE* %12, i64 0, i32 0), !dbg !1839
  %14 = icmp ne i32 %13, 0, !dbg !1839
  br i1 %14, label %15, label %18, !dbg !1840

; <label>:15:                                     ; preds = %11
  %16 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.30, i32 0, i32 0)) #11, !dbg !1841
  %17 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @trk_explicit_fn, i32 0, i32 2), align 8, !dbg !1842
  call void (i8*, ...) @ohshite(i8* %16, i8* %17) #10, !dbg !1843
  unreachable, !dbg !1845

; <label>:18:                                     ; preds = %11
  br label %19, !dbg !1846

; <label>:19:                                     ; preds = %61, %18
  %20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i32 0, i32 0, !dbg !1847
  %21 = call i32 @trk_explicit_fgets(i8* %20, i64 1024), !dbg !1849
  %22 = icmp sge i32 %21, 0, !dbg !1850
  br i1 %22, label %23, label %64, !dbg !1851

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.declare(metadata %struct.dpkg_error* %5, metadata !1852, metadata !494), !dbg !1854
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1855, metadata !494), !dbg !1856
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1857, metadata !494), !dbg !1858
  store i8 0, i8* %7, align 1, !dbg !1858
  %24 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i32 0, i32 0, !dbg !1859
  %25 = call i8* @strchr(i8* %24, i32 47) #12, !dbg !1860
  store i8* %25, i8** %6, align 8, !dbg !1861
  %26 = load i8*, i8** %6, align 8, !dbg !1862
  %27 = icmp ne i8* %26, null, !dbg !1862
  br i1 %27, label %28, label %34, !dbg !1864

; <label>:28:                                     ; preds = %23
  %29 = load i8*, i8** %6, align 8, !dbg !1865
  %30 = call i32 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* %29) #12, !dbg !1867
  %31 = icmp eq i32 %30, 0, !dbg !1868
  br i1 %31, label %32, label %34, !dbg !1869

; <label>:32:                                     ; preds = %28
  store i8 1, i8* %7, align 1, !dbg !1870
  %33 = load i8*, i8** %6, align 8, !dbg !1872
  store i8 0, i8* %33, align 1, !dbg !1873
  br label %34, !dbg !1874

; <label>:34:                                     ; preds = %32, %28, %23
  %35 = load i8*, i8** %6, align 8, !dbg !1875
  %36 = icmp ne i8* %35, null, !dbg !1875
  br i1 %36, label %37, label %43, !dbg !1877

; <label>:37:                                     ; preds = %34
  %38 = load i8*, i8** %6, align 8, !dbg !1878
  %39 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* %38) #12, !dbg !1880
  %40 = icmp eq i32 %39, 0, !dbg !1881
  br i1 %40, label %41, label %43, !dbg !1882

; <label>:41:                                     ; preds = %37
  store i8 0, i8* %7, align 1, !dbg !1883
  %42 = load i8*, i8** %6, align 8, !dbg !1885
  store i8 0, i8* %42, align 1, !dbg !1886
  br label %43, !dbg !1887

; <label>:43:                                     ; preds = %41, %37, %34
  %44 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i32 0, i32 0, !dbg !1888
  %45 = call %struct.pkginfo* @pkg_spec_parse_pkg(i8* %44, %struct.dpkg_error* %5), !dbg !1889
  store %struct.pkginfo* %45, %struct.pkginfo** %4, align 8, !dbg !1890
  %46 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !1891
  %47 = icmp eq %struct.pkginfo* %46, null, !dbg !1893
  br i1 %47, label %48, label %54, !dbg !1894

; <label>:48:                                     ; preds = %43
  %49 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.31, i32 0, i32 0)) #11, !dbg !1895
  %50 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @trk_explicit_fn, i32 0, i32 2), align 8, !dbg !1896
  %51 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i32 0, i32 0, !dbg !1897
  %52 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %5, i32 0, i32 2, !dbg !1898
  %53 = load i8*, i8** %52, align 8, !dbg !1898
  call void (i8*, ...) @ohshit(i8* %49, i8* %50, i8* %51, i8* %53) #10, !dbg !1899
  unreachable, !dbg !1901

; <label>:54:                                     ; preds = %43
  %55 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !1902
  %56 = load i8, i8* %7, align 1, !dbg !1903
  %57 = trunc i8 %56 to i1, !dbg !1903
  br i1 %57, label %58, label %59, !dbg !1903

; <label>:58:                                     ; preds = %54
  br label %61, !dbg !1904

; <label>:59:                                     ; preds = %54
  %60 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1906
  br label %61, !dbg !1908

; <label>:61:                                     ; preds = %59, %58
  %62 = phi %struct.pkginfo* [ null, %58 ], [ %60, %59 ], !dbg !1909
  %63 = load i8*, i8** @trk_explicit_trig, align 8, !dbg !1911
  call void @trig_record_activation(%struct.pkginfo* %55, %struct.pkginfo* %62, i8* %63), !dbg !1912
  br label %19, !dbg !1913, !llvm.loop !1915

; <label>:64:                                     ; preds = %10, %19
  ret void, !dbg !1916
}

; Function Attrs: nounwind uwtable
define internal void @trk_explicit_activate_done() #0 !dbg !1917 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @trk_explicit_f, align 8, !dbg !1918
  %2 = icmp ne %struct._IO_FILE* %1, null, !dbg !1918
  br i1 %2, label %3, label %6, !dbg !1920

; <label>:3:                                      ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @trk_explicit_f, align 8, !dbg !1921
  %5 = call i32 @fclose(%struct._IO_FILE* %4), !dbg !1923
  store %struct._IO_FILE* null, %struct._IO_FILE** @trk_explicit_f, align 8, !dbg !1924
  br label %6, !dbg !1925

; <label>:6:                                      ; preds = %3, %0
  ret void, !dbg !1926
}

; Function Attrs: nounwind uwtable
define internal void @trk_explicit_interest_change(i8*, %struct.pkginfo*, %struct.pkgbin*, i32, i32) #0 !dbg !1927 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.pkginfo*, align 8
  %8 = alloca %struct.pkgbin*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [1024 x i8], align 16
  %12 = alloca %struct.atomic_file*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1928, metadata !494), !dbg !1929
  store %struct.pkginfo* %1, %struct.pkginfo** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %7, metadata !1930, metadata !494), !dbg !1931
  store %struct.pkgbin* %2, %struct.pkgbin** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %8, metadata !1932, metadata !494), !dbg !1933
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1934, metadata !494), !dbg !1935
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1936, metadata !494), !dbg !1937
  call void @llvm.dbg.declare(metadata [1024 x i8]* %11, metadata !1938, metadata !494), !dbg !1939
  call void @llvm.dbg.declare(metadata %struct.atomic_file** %12, metadata !1940, metadata !494), !dbg !1941
  call void @llvm.dbg.declare(metadata i8* %13, metadata !1942, metadata !494), !dbg !1943
  store i8 1, i8* %13, align 1, !dbg !1943
  %16 = load i8*, i8** %6, align 8, !dbg !1944
  call void @trk_explicit_start(i8* %16), !dbg !1945
  %17 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @trk_explicit_fn, i32 0, i32 2), align 8, !dbg !1946
  %18 = call %struct.atomic_file* @atomic_file_new(i8* %17, i32 0), !dbg !1947
  store %struct.atomic_file* %18, %struct.atomic_file** %12, align 8, !dbg !1948
  %19 = load %struct.atomic_file*, %struct.atomic_file** %12, align 8, !dbg !1949
  call void @atomic_file_open(%struct.atomic_file* %19), !dbg !1950
  br label %20, !dbg !1951

; <label>:20:                                     ; preds = %56, %55, %5
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @trk_explicit_f, align 8, !dbg !1952
  %22 = icmp ne %struct._IO_FILE* %21, null, !dbg !1952
  br i1 %22, label %23, label %27, !dbg !1954

; <label>:23:                                     ; preds = %20
  %24 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i32 0, i32 0, !dbg !1955
  %25 = call i32 @trk_explicit_fgets(i8* %24, i64 1024), !dbg !1957
  %26 = icmp sge i32 %25, 0, !dbg !1958
  br label %27

; <label>:27:                                     ; preds = %23, %20
  %28 = phi i1 [ false, %20 ], [ %26, %23 ]
  br i1 %28, label %29, label %62, !dbg !1959

; <label>:29:                                     ; preds = %27
  call void @llvm.dbg.declare(metadata i8** %14, metadata !1961, metadata !494), !dbg !1963
  %30 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1964
  %31 = load %struct.pkgbin*, %struct.pkgbin** %8, align 8, !dbg !1965
  %32 = call i8* @pkgbin_name(%struct.pkginfo* %30, %struct.pkgbin* %31, i32 1), !dbg !1966
  store i8* %32, i8** %14, align 8, !dbg !1963
  call void @llvm.dbg.declare(metadata i64* %15, metadata !1967, metadata !494), !dbg !1968
  %33 = load i8*, i8** %14, align 8, !dbg !1969
  %34 = call i64 @strlen(i8* %33) #12, !dbg !1970
  store i64 %34, i64* %15, align 8, !dbg !1968
  %35 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i32 0, i32 0, !dbg !1971
  %36 = load i8*, i8** %14, align 8, !dbg !1973
  %37 = load i64, i64* %15, align 8, !dbg !1974
  %38 = call i32 @strncmp(i8* %35, i8* %36, i64 %37) #12, !dbg !1975
  %39 = icmp eq i32 %38, 0, !dbg !1976
  br i1 %39, label %40, label %56, !dbg !1977

; <label>:40:                                     ; preds = %29
  %41 = load i64, i64* %15, align 8, !dbg !1978
  %42 = icmp ult i64 %41, 1024, !dbg !1980
  br i1 %42, label %43, label %56, !dbg !1981

; <label>:43:                                     ; preds = %40
  %44 = load i64, i64* %15, align 8, !dbg !1982
  %45 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 %44, !dbg !1983
  %46 = load i8, i8* %45, align 1, !dbg !1983
  %47 = sext i8 %46 to i32, !dbg !1983
  %48 = icmp eq i32 %47, 0, !dbg !1984
  br i1 %48, label %55, label %49, !dbg !1985

; <label>:49:                                     ; preds = %43
  %50 = load i64, i64* %15, align 8, !dbg !1986
  %51 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 %50, !dbg !1987
  %52 = load i8, i8* %51, align 1, !dbg !1987
  %53 = sext i8 %52 to i32, !dbg !1987
  %54 = icmp eq i32 %53, 47, !dbg !1988
  br i1 %54, label %55, label %56, !dbg !1989

; <label>:55:                                     ; preds = %49, %43
  br label %20, !dbg !1991, !llvm.loop !1992

; <label>:56:                                     ; preds = %49, %40, %29
  %57 = load %struct.atomic_file*, %struct.atomic_file** %12, align 8, !dbg !1993
  %58 = getelementptr inbounds %struct.atomic_file, %struct.atomic_file* %57, i32 0, i32 3, !dbg !1994
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %58, align 8, !dbg !1994
  %60 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i32 0, i32 0, !dbg !1995
  %61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0), i8* %60), !dbg !1996
  store i8 0, i8* %13, align 1, !dbg !1997
  br label %20, !dbg !1998, !llvm.loop !1992

; <label>:62:                                     ; preds = %27
  %63 = load i32, i32* %9, align 4, !dbg !2000
  %64 = icmp sgt i32 %63, 0, !dbg !2002
  br i1 %64, label %65, label %76, !dbg !2003

; <label>:65:                                     ; preds = %62
  %66 = load %struct.atomic_file*, %struct.atomic_file** %12, align 8, !dbg !2004
  %67 = getelementptr inbounds %struct.atomic_file, %struct.atomic_file* %66, i32 0, i32 3, !dbg !2006
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** %67, align 8, !dbg !2006
  %69 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !2007
  %70 = load %struct.pkgbin*, %struct.pkgbin** %8, align 8, !dbg !2008
  %71 = call i8* @pkgbin_name(%struct.pkginfo* %69, %struct.pkgbin* %70, i32 1), !dbg !2009
  %72 = load i32, i32* %10, align 4, !dbg !2010
  %73 = icmp eq i32 %72, 1, !dbg !2011
  %74 = select i1 %73, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.25, i32 0, i32 0), !dbg !2012
  %75 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i8* %71, i8* %74), !dbg !2013
  store i8 0, i8* %13, align 1, !dbg !2014
  br label %76, !dbg !2015

; <label>:76:                                     ; preds = %65, %62
  %77 = load i8, i8* %13, align 1, !dbg !2016
  %78 = trunc i8 %77 to i1, !dbg !2016
  br i1 %78, label %81, label %79, !dbg !2018

; <label>:79:                                     ; preds = %76
  %80 = load %struct.atomic_file*, %struct.atomic_file** %12, align 8, !dbg !2019
  call void @atomic_file_sync(%struct.atomic_file* %80), !dbg !2020
  br label %81, !dbg !2020

; <label>:81:                                     ; preds = %79, %76
  %82 = load %struct.atomic_file*, %struct.atomic_file** %12, align 8, !dbg !2021
  call void @atomic_file_close(%struct.atomic_file* %82), !dbg !2022
  %83 = load i8, i8* %13, align 1, !dbg !2023
  %84 = trunc i8 %83 to i1, !dbg !2023
  br i1 %84, label %85, label %87, !dbg !2025

; <label>:85:                                     ; preds = %81
  %86 = load %struct.atomic_file*, %struct.atomic_file** %12, align 8, !dbg !2026
  call void @atomic_file_remove(%struct.atomic_file* %86), !dbg !2027
  br label %89, !dbg !2027

; <label>:87:                                     ; preds = %81
  %88 = load %struct.atomic_file*, %struct.atomic_file** %12, align 8, !dbg !2028
  call void @atomic_file_commit(%struct.atomic_file* %88), !dbg !2029
  br label %89

; <label>:89:                                     ; preds = %87, %85
  %90 = load %struct.atomic_file*, %struct.atomic_file** %12, align 8, !dbg !2030
  call void @atomic_file_free(%struct.atomic_file* %90), !dbg !2031
  %91 = load i8*, i8** @triggersdir, align 8, !dbg !2032
  call void @dir_sync_path(i8* %91), !dbg !2033
  ret void, !dbg !2034
}

; Function Attrs: nounwind uwtable
define internal void @trk_explicit_start(i8*) #0 !dbg !2035 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2036, metadata !494), !dbg !2037
  call void @trk_explicit_activate_done(), !dbg !2038
  call void @varbuf_reset(%struct.varbuf* @trk_explicit_fn), !dbg !2039
  %3 = load i8*, i8** @triggersdir, align 8, !dbg !2040
  %4 = load i8*, i8** @triggersdir, align 8, !dbg !2041
  %5 = call i64 @strlen(i8* %4) #12, !dbg !2042
  call void @varbuf_add_buf(%struct.varbuf* @trk_explicit_fn, i8* %3, i64 %5), !dbg !2043
  call void @varbuf_add_char(%struct.varbuf* @trk_explicit_fn, i32 47), !dbg !2045
  %6 = load i8*, i8** %2, align 8, !dbg !2046
  %7 = load i8*, i8** %2, align 8, !dbg !2047
  %8 = call i64 @strlen(i8* %7) #12, !dbg !2048
  call void @varbuf_add_buf(%struct.varbuf* @trk_explicit_fn, i8* %6, i64 %8), !dbg !2049
  call void @varbuf_end_str(%struct.varbuf* @trk_explicit_fn), !dbg !2050
  %9 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @trk_explicit_fn, i32 0, i32 2), align 8, !dbg !2051
  %10 = call %struct._IO_FILE* @fopen(i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)), !dbg !2052
  store %struct._IO_FILE* %10, %struct._IO_FILE** @trk_explicit_f, align 8, !dbg !2053
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @trk_explicit_f, align 8, !dbg !2054
  %12 = icmp ne %struct._IO_FILE* %11, null, !dbg !2054
  br i1 %12, label %21, label %13, !dbg !2056

; <label>:13:                                     ; preds = %1
  %14 = call i32* @__errno_location() #1, !dbg !2057
  %15 = load i32, i32* %14, align 4, !dbg !2060
  %16 = icmp ne i32 %15, 2, !dbg !2061
  br i1 %16, label %17, label %20, !dbg !2062

; <label>:17:                                     ; preds = %13
  %18 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.29, i32 0, i32 0)) #11, !dbg !2063
  %19 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @trk_explicit_fn, i32 0, i32 2), align 8, !dbg !2064
  call void (i8*, ...) @ohshite(i8* %18, i8* %19) #10, !dbg !2065
  unreachable, !dbg !2067

; <label>:20:                                     ; preds = %13
  br label %21, !dbg !2068

; <label>:21:                                     ; preds = %20, %1
  ret void, !dbg !2069
}

declare void @varbuf_reset(%struct.varbuf*) #3

declare void @varbuf_add_buf(%struct.varbuf*, i8*, i64) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #6

declare void @varbuf_add_char(%struct.varbuf*, i32) #3

declare void @varbuf_end_str(%struct.varbuf*) #3

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #3

; Function Attrs: nounwind uwtable
define internal i32 @trk_explicit_fgets(i8*, i64) #0 !dbg !2070 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2073, metadata !494), !dbg !2074
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2075, metadata !494), !dbg !2076
  %5 = load i8*, i8** %3, align 8, !dbg !2077
  %6 = load i64, i64* %4, align 8, !dbg !2078
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @trk_explicit_f, align 8, !dbg !2079
  %8 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @trk_explicit_fn, i32 0, i32 2), align 8, !dbg !2080
  %9 = call i32 @fgets_checked(i8* %5, i64 %6, %struct._IO_FILE* %7, i8* %8), !dbg !2081
  ret i32 %9, !dbg !2082
}

declare i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #6

declare void @atomic_file_remove(%struct.atomic_file*) #3

; Function Attrs: nounwind uwtable
define internal void @trk_unknown_activate_start() #0 !dbg !2083 {
  ret void, !dbg !2084
}

; Function Attrs: nounwind uwtable
define internal void @trk_unknown_activate_awaiter(%struct.pkginfo*) #0 !dbg !2085 {
  %2 = alloca %struct.pkginfo*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %2, metadata !2086, metadata !494), !dbg !2087
  ret void, !dbg !2088
}

; Function Attrs: nounwind uwtable
define internal void @trk_unknown_activate_done() #0 !dbg !2089 {
  ret void, !dbg !2090
}

; Function Attrs: noreturn nounwind uwtable
define internal void @trk_unknown_interest_change(i8*, %struct.pkginfo*, %struct.pkgbin*, i32, i32) #9 !dbg !2091 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.pkginfo*, align 8
  %8 = alloca %struct.pkgbin*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2092, metadata !494), !dbg !2093
  store %struct.pkginfo* %1, %struct.pkginfo** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %7, metadata !2094, metadata !494), !dbg !2095
  store %struct.pkgbin* %2, %struct.pkgbin** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %8, metadata !2096, metadata !494), !dbg !2097
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2098, metadata !494), !dbg !2099
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2100, metadata !494), !dbg !2101
  %11 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.34, i32 0, i32 0)) #11, !dbg !2102
  %12 = load i8*, i8** %6, align 8, !dbg !2103
  %13 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !2104
  %14 = load %struct.pkgbin*, %struct.pkgbin** %8, align 8, !dbg !2105
  %15 = call i8* @pkgbin_name(%struct.pkginfo* %13, %struct.pkgbin* %14, i32 1), !dbg !2106
  call void (i8*, ...) @ohshit(i8* %11, i8* %12, i8* %15) #10, !dbg !2107
  unreachable, !dbg !2109
                                                  ; No predecessors!
  ret void, !dbg !2110
}

declare i8* @nfstrsave(i8*) #3

declare zeroext i1 @c_isbits(i32, i32) #3

declare i8* @trig_name_is_illegal(i8*) #3

declare i8* @str_fmt(i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal void @tdm_incorp_trig_begin(i8*) #0 !dbg !2111 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2112, metadata !494), !dbg !2113
  %3 = load i8*, i8** %2, align 8, !dbg !2114
  call void @trig_activate_start(i8* %3), !dbg !2115
  ret void, !dbg !2116
}

; Function Attrs: nounwind uwtable
define internal void @tdm_incorp_package(i8*) #0 !dbg !2117 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pkginfo*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2118, metadata !494), !dbg !2119
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %3, metadata !2120, metadata !494), !dbg !2121
  %4 = load i8*, i8** %2, align 8, !dbg !2122
  %5 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0)) #12, !dbg !2124
  %6 = icmp eq i32 %5, 0, !dbg !2125
  br i1 %6, label %7, label %8, !dbg !2126

; <label>:7:                                      ; preds = %1
  store %struct.pkginfo* null, %struct.pkginfo** %3, align 8, !dbg !2127
  br label %11, !dbg !2128

; <label>:8:                                      ; preds = %1
  %9 = load i8*, i8** %2, align 8, !dbg !2129
  %10 = call %struct.pkginfo* @pkg_spec_parse_pkg(i8* %9, %struct.dpkg_error* null), !dbg !2130
  store %struct.pkginfo* %10, %struct.pkginfo** %3, align 8, !dbg !2131
  br label %11

; <label>:11:                                     ; preds = %8, %7
  %12 = load %struct.trigkindinfo*, %struct.trigkindinfo** @dtki, align 8, !dbg !2132
  %13 = getelementptr inbounds %struct.trigkindinfo, %struct.trigkindinfo* %12, i32 0, i32 1, !dbg !2133
  %14 = load void (%struct.pkginfo*)*, void (%struct.pkginfo*)** %13, align 8, !dbg !2133
  %15 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !2134
  call void %14(%struct.pkginfo* %15), !dbg !2132
  ret void, !dbg !2135
}

; Function Attrs: nounwind uwtable
define internal void @tdm_incorp_trig_end() #0 !dbg !2136 {
  %1 = load %struct.trigkindinfo*, %struct.trigkindinfo** @dtki, align 8, !dbg !2137
  %2 = getelementptr inbounds %struct.trigkindinfo, %struct.trigkindinfo* %1, i32 0, i32 2, !dbg !2138
  %3 = load void ()*, void ()** %2, align 8, !dbg !2138
  call void %3(), !dbg !2137
  ret void, !dbg !2139
}

; Function Attrs: nounwind uwtable
define internal %struct.fsys_namenode* @th_nn_find(i8*, i1 zeroext) #0 !dbg !2140 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2141, metadata !494), !dbg !2142
  %5 = zext i1 %1 to i8
  store i8 %5, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !2143, metadata !494), !dbg !2144
  %6 = load i8*, i8** %3, align 8, !dbg !2145
  %7 = load i8, i8* %4, align 1, !dbg !2146
  %8 = trunc i8 %7 to i1, !dbg !2146
  %9 = select i1 %8, i32 2, i32 0, !dbg !2146
  %10 = call %struct.fsys_namenode* @fsys_hash_find_node(i8* %6, i32 %9), !dbg !2147
  ret %struct.fsys_namenode* %10, !dbg !2148
}

; Function Attrs: nounwind uwtable
define internal %struct.trigfileint** @th_nn_interested(%struct.fsys_namenode*) #0 !dbg !2149 {
  %2 = alloca %struct.fsys_namenode*, align 8
  store %struct.fsys_namenode* %0, %struct.fsys_namenode** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %2, metadata !2150, metadata !494), !dbg !2151
  %3 = load %struct.fsys_namenode*, %struct.fsys_namenode** %2, align 8, !dbg !2152
  %4 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %3, i32 0, i32 5, !dbg !2153
  ret %struct.trigfileint** %4, !dbg !2154
}

; Function Attrs: nounwind uwtable
define internal i8* @th_nn_name(%struct.fsys_namenode*) #0 !dbg !2155 {
  %2 = alloca %struct.fsys_namenode*, align 8
  store %struct.fsys_namenode* %0, %struct.fsys_namenode** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %2, metadata !2156, metadata !494), !dbg !2157
  %3 = load %struct.fsys_namenode*, %struct.fsys_namenode** %2, align 8, !dbg !2158
  %4 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %3, i32 0, i32 1, !dbg !2159
  %5 = load i8*, i8** %4, align 8, !dbg !2159
  ret i8* %5, !dbg !2160
}

declare %struct.fsys_namenode* @fsys_hash_find_node(i8*, i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { argmemonly nounwind }
attributes #9 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!488, !489}
!llvm.ident = !{!490}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !153, globals: !155)
!1 = !DIFile(filename: "[inter]lib--dpkg--triglib.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{!3, !15, !26, !35, !43, !47, !57, !67, !73, !78, !91, !97, !107, !113, !119, !127, !134, !138, !149}
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
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "trig_options", file: !74, line: 49, size: 32, align: 32, elements: !75)
!74 = !DIFile(filename: "../../lib/dpkg/triglib.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!75 = !{!76, !77}
!76 = !DIEnumerator(name: "TRIG_AWAIT", value: 0)
!77 = !DIEnumerator(name: "TRIG_NOAWAIT", value: 1)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fsys_namenode_flags", file: !79, line: 61, size: 32, align: 32, elements: !80)
!79 = !DIFile(filename: "../../lib/dpkg/fsys.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!80 = !{!81, !82, !83, !84, !85, !86, !87, !88, !89, !90}
!81 = !DIEnumerator(name: "FNNF_NEW_CONFF", value: 1)
!82 = !DIEnumerator(name: "FNNF_NEW_INARCHIVE", value: 2)
!83 = !DIEnumerator(name: "FNNF_OLD_CONFF", value: 4)
!84 = !DIEnumerator(name: "FNNF_OBS_CONFF", value: 8)
!85 = !DIEnumerator(name: "FNNF_ELIDE_OTHER_LISTS", value: 16)
!86 = !DIEnumerator(name: "FNNF_NO_ATOMIC_OVERWRITE", value: 32)
!87 = !DIEnumerator(name: "FNNF_PLACED_ON_DISK", value: 64)
!88 = !DIEnumerator(name: "FNNF_DEFERRED_FSYNC", value: 128)
!89 = !DIEnumerator(name: "FNNF_DEFERRED_RENAME", value: 256)
!90 = !DIEnumerator(name: "FNNF_FILTERED", value: 512)
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkg_name_arch_when", file: !4, line: 396, size: 32, align: 32, elements: !92)
!92 = !{!93, !94, !95, !96}
!93 = !DIEnumerator(name: "pnaw_never", value: 0)
!94 = !DIEnumerator(name: "pnaw_nonambig", value: 1)
!95 = !DIEnumerator(name: "pnaw_foreign", value: 2)
!96 = !DIEnumerator(name: "pnaw_always", value: 3)
!97 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "modstatdb_rw", file: !4, line: 263, size: 32, align: 32, elements: !98)
!98 = !{!99, !100, !101, !102, !103, !104, !105, !106}
!99 = !DIEnumerator(name: "msdbrw_readonly", value: 0)
!100 = !DIEnumerator(name: "msdbrw_needsuperuserlockonly", value: 1)
!101 = !DIEnumerator(name: "msdbrw_writeifposs", value: 2)
!102 = !DIEnumerator(name: "msdbrw_write", value: 3)
!103 = !DIEnumerator(name: "msdbrw_needsuperuser", value: 4)
!104 = !DIEnumerator(name: "msdbrw_available_readonly", value: 256)
!105 = !DIEnumerator(name: "msdbrw_available_write", value: 512)
!106 = !DIEnumerator(name: "msdbrw_available_mask", value: 65280)
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_msg_type", file: !108, line: 36, size: 32, align: 32, elements: !109)
!108 = !DIFile(filename: "../../lib/dpkg/error.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!109 = !{!110, !111, !112}
!110 = !DIEnumerator(name: "DPKG_MSG_NONE", value: 0)
!111 = !DIEnumerator(name: "DPKG_MSG_WARN", value: 1)
!112 = !DIEnumerator(name: "DPKG_MSG_ERROR", value: 2)
!113 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !114, line: 41, size: 32, align: 32, elements: !115)
!114 = !DIFile(filename: "../../lib/dpkg/ehandle.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!115 = !{!116, !117, !118}
!116 = !DIEnumerator(name: "ehflag_normaltidy", value: 1)
!117 = !DIEnumerator(name: "ehflag_bombout", value: 2)
!118 = !DIEnumerator(name: "ehflag_recursiveerror", value: 4)
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "trigdef_update_status", file: !120, line: 45, size: 32, align: 32, elements: !121)
!120 = !DIFile(filename: "../../lib/dpkg/trigdeferred.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!121 = !{!122, !123, !124, !125, !126}
!122 = !DIEnumerator(name: "TDUS_ERROR_NO_DIR", value: -1)
!123 = !DIEnumerator(name: "TDUS_ERROR_EMPTY_DEFERRED", value: -2)
!124 = !DIEnumerator(name: "TDUS_ERROR_NO_DEFERRED", value: -3)
!125 = !DIEnumerator(name: "TDUS_NO_DEFERRED", value: 1)
!126 = !DIEnumerator(name: "TDUS_OK", value: 2)
!127 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "trigdef_update_flags", file: !120, line: 36, size: 32, align: 32, elements: !128)
!128 = !{!129, !130, !131, !132, !133}
!129 = !DIEnumerator(name: "TDUF_NO_LOCK_OK", value: 1)
!130 = !DIEnumerator(name: "TDUF_WRITE", value: 2)
!131 = !DIEnumerator(name: "TDUF_NO_LOCK", value: 3)
!132 = !DIEnumerator(name: "TDUF_WRITE_IF_EMPTY", value: 8)
!133 = !DIEnumerator(name: "TDUF_WRITE_IF_ENOENT", value: 16)
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "atomic_file_flags", file: !135, line: 36, size: 32, align: 32, elements: !136)
!135 = !DIFile(filename: "../../lib/dpkg/atomic-file.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!136 = !{!137}
!137 = !DIEnumerator(name: "ATOMIC_FILE_BACKUP", value: 1)
!138 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "c_ctype_bit", file: !139, line: 32, size: 32, align: 32, elements: !140)
!139 = !DIFile(filename: "../../lib/dpkg/c-ctype.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!140 = !{!141, !142, !143, !144, !145, !146, !147, !148}
!141 = !DIEnumerator(name: "C_CTYPE_BLANK", value: 1)
!142 = !DIEnumerator(name: "C_CTYPE_WHITE", value: 2)
!143 = !DIEnumerator(name: "C_CTYPE_SPACE", value: 4)
!144 = !DIEnumerator(name: "C_CTYPE_UPPER", value: 8)
!145 = !DIEnumerator(name: "C_CTYPE_LOWER", value: 16)
!146 = !DIEnumerator(name: "C_CTYPE_DIGIT", value: 32)
!147 = !DIEnumerator(name: "C_CTYPE_ALPHA", value: 24)
!148 = !DIEnumerator(name: "C_CTYPE_ALNUM", value: 56)
!149 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fsys_hash_find_flags", file: !79, line: 54, size: 32, align: 32, elements: !150)
!150 = !{!151, !152}
!151 = !DIEnumerator(name: "FHFF_NOCOPY", value: 1)
!152 = !DIEnumerator(name: "FHFF_NONE", value: 2)
!153 = !{!154}
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!155 = !{!156, !160, !161, !382, !387, !388, !389, !390, !391, !392, !401, !455, !456, !457, !467}
!156 = distinct !DIGlobalVariable(name: "triggersdir", scope: !0, file: !157, line: 46, type: !158, isLocal: true, isDefinition: true, variable: i8** @triggersdir)
!157 = !DIFile(filename: "triglib.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64, align: 64)
!159 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!160 = distinct !DIGlobalVariable(name: "triggersfilefile", scope: !0, file: !157, line: 46, type: !158, isLocal: true, isDefinition: true, variable: i8** @triggersfilefile)
!161 = distinct !DIGlobalVariable(name: "dtki", scope: !0, file: !157, line: 161, type: !162, isLocal: true, isDefinition: true, variable: %struct.trigkindinfo** @dtki)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64, align: 64)
!163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !164)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigkindinfo", file: !157, line: 148, size: 256, align: 64, elements: !165)
!165 = !{!166, !170, !377, !378}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "activate_start", scope: !164, file: !157, line: 150, baseType: !167, size: 64, align: 64)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64, align: 64)
!168 = !DISubroutineType(types: !169)
!169 = !{null}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "activate_awaiter", scope: !164, file: !157, line: 153, baseType: !171, size: 64, align: 64, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64, align: 64)
!172 = !DISubroutineType(types: !173)
!173 = !{null, !174}
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64, align: 64)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkginfo", file: !4, line: 195, size: 3072, align: 64, elements: !176)
!176 = !{!177, !228, !229, !230, !231, !232, !233, !234, !235, !236, !266, !267, !270, !279, !295, !296, !302, !371, !375, !376}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !175, file: !4, line: 196, baseType: !178, size: 64, align: 64)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64, align: 64)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgset", file: !4, line: 242, size: 3392, align: 64, elements: !180)
!180 = !{!181, !182, !185, !186, !226}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !179, file: !4, line: 243, baseType: !178, size: 64, align: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !179, file: !4, line: 244, baseType: !183, size: 64, align: 64, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !159)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !179, file: !4, line: 245, baseType: !175, size: 3072, align: 64, offset: 128)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "depended", scope: !179, file: !4, line: 249, baseType: !187, size: 128, align: 64, offset: 3200)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !179, file: !4, line: 246, size: 128, align: 64, elements: !188)
!188 = !{!189, !225}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !187, file: !4, line: 247, baseType: !190, size: 64, align: 64)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64, align: 64)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "deppossi", file: !4, line: 63, size: 640, align: 64, elements: !192)
!192 = !{!193, !201, !202, !203, !204, !205, !214, !221, !222, !224}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !191, file: !4, line: 64, baseType: !194, size: 64, align: 64)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64, align: 64)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dependency", file: !4, line: 56, size: 256, align: 64, elements: !196)
!196 = !{!197, !198, !199, !200}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !195, file: !4, line: 57, baseType: !174, size: 64, align: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !195, file: !4, line: 58, baseType: !194, size: 64, align: 64, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !195, file: !4, line: 59, baseType: !190, size: 64, align: 64, offset: 128)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !195, file: !4, line: 60, baseType: !3, size: 32, align: 32, offset: 192)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "ed", scope: !191, file: !4, line: 65, baseType: !178, size: 64, align: 64, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !191, file: !4, line: 66, baseType: !190, size: 64, align: 64, offset: 128)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "rev_next", scope: !191, file: !4, line: 66, baseType: !190, size: 64, align: 64, offset: 192)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "rev_prev", scope: !191, file: !4, line: 66, baseType: !190, size: 64, align: 64, offset: 256)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !191, file: !4, line: 67, baseType: !206, size: 64, align: 64, offset: 320)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64, align: 64)
!207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !208)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_arch", file: !16, line: 48, size: 192, align: 64, elements: !209)
!209 = !{!210, !212, !213}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !208, file: !16, line: 49, baseType: !211, size: 64, align: 64)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64, align: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !208, file: !16, line: 50, baseType: !183, size: 64, align: 64, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !208, file: !16, line: 51, baseType: !15, size: 32, align: 32, offset: 128)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !191, file: !4, line: 68, baseType: !215, size: 192, align: 64, offset: 384)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_version", file: !27, line: 42, size: 192, align: 64, elements: !216)
!216 = !{!217, !219, !220}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !215, file: !27, line: 44, baseType: !218, size: 32, align: 32)
!218 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !215, file: !27, line: 46, baseType: !183, size: 64, align: 64, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !215, file: !27, line: 48, baseType: !183, size: 64, align: 64, offset: 128)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "verrel", scope: !191, file: !4, line: 69, baseType: !26, size: 32, align: 32, offset: 576)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "arch_is_implicit", scope: !191, file: !4, line: 70, baseType: !223, size: 8, align: 8, offset: 608)
!223 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "cyclebreak", scope: !191, file: !4, line: 71, baseType: !223, size: 8, align: 8, offset: 616)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !187, file: !4, line: 248, baseType: !190, size: 64, align: 64, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "installed_instances", scope: !179, file: !4, line: 250, baseType: !227, size: 32, align: 32, offset: 3328)
!227 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "arch_next", scope: !175, file: !4, line: 197, baseType: !174, size: 64, align: 64, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "want", scope: !175, file: !4, line: 199, baseType: !35, size: 32, align: 32, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "eflag", scope: !175, file: !4, line: 201, baseType: !43, size: 32, align: 32, offset: 160)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !175, file: !4, line: 202, baseType: !47, size: 32, align: 32, offset: 192)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !175, file: !4, line: 203, baseType: !57, size: 32, align: 32, offset: 224)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "otherpriority", scope: !175, file: !4, line: 204, baseType: !183, size: 64, align: 64, offset: 256)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "section", scope: !175, file: !4, line: 205, baseType: !183, size: 64, align: 64, offset: 320)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "configversion", scope: !175, file: !4, line: 206, baseType: !215, size: 192, align: 64, offset: 384)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !175, file: !4, line: 207, baseType: !237, size: 960, align: 64, offset: 576)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgbin", file: !4, line: 107, size: 960, align: 64, elements: !238)
!238 = !{!239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !259}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "depends", scope: !237, file: !4, line: 108, baseType: !194, size: 64, align: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "essential", scope: !237, file: !4, line: 110, baseType: !223, size: 8, align: 8, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "multiarch", scope: !237, file: !4, line: 111, baseType: !67, size: 32, align: 32, offset: 96)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !237, file: !4, line: 112, baseType: !206, size: 64, align: 64, offset: 128)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "pkgname_archqual", scope: !237, file: !4, line: 115, baseType: !183, size: 64, align: 64, offset: 192)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !237, file: !4, line: 116, baseType: !183, size: 64, align: 64, offset: 256)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "maintainer", scope: !237, file: !4, line: 117, baseType: !183, size: 64, align: 64, offset: 320)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !237, file: !4, line: 118, baseType: !183, size: 64, align: 64, offset: 384)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "installedsize", scope: !237, file: !4, line: 119, baseType: !183, size: 64, align: 64, offset: 448)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !237, file: !4, line: 120, baseType: !183, size: 64, align: 64, offset: 512)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "bugs", scope: !237, file: !4, line: 121, baseType: !183, size: 64, align: 64, offset: 576)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !237, file: !4, line: 122, baseType: !215, size: 192, align: 64, offset: 640)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "conffiles", scope: !237, file: !4, line: 123, baseType: !252, size: 64, align: 64, offset: 832)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64, align: 64)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conffile", file: !4, line: 80, size: 256, align: 64, elements: !254)
!254 = !{!255, !256, !257, !258}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !253, file: !4, line: 81, baseType: !252, size: 64, align: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !253, file: !4, line: 82, baseType: !183, size: 64, align: 64, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !253, file: !4, line: 83, baseType: !183, size: 64, align: 64, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "obsolete", scope: !253, file: !4, line: 84, baseType: !223, size: 8, align: 8, offset: 192)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "arbs", scope: !237, file: !4, line: 124, baseType: !260, size: 64, align: 64, offset: 896)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64, align: 64)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arbitraryfield", file: !4, line: 74, size: 192, align: 64, elements: !262)
!262 = !{!263, !264, !265}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !261, file: !4, line: 75, baseType: !260, size: 64, align: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !261, file: !4, line: 76, baseType: !183, size: 64, align: 64, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !261, file: !4, line: 77, baseType: !183, size: 64, align: 64, offset: 128)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !175, file: !4, line: 208, baseType: !237, size: 960, align: 64, offset: 1536)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "clientdata", scope: !175, file: !4, line: 209, baseType: !268, size: 64, align: 64, offset: 2496)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64, align: 64)
!269 = !DICompositeType(tag: DW_TAG_structure_type, name: "perpackagestate", file: !4, line: 151, flags: DIFlagFwdDecl)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "archives", scope: !175, file: !4, line: 211, baseType: !271, size: 64, align: 64, offset: 2560)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64, align: 64)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archivedetails", file: !4, line: 87, size: 320, align: 64, elements: !273)
!273 = !{!274, !275, !276, !277, !278}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !272, file: !4, line: 88, baseType: !271, size: 64, align: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !272, file: !4, line: 89, baseType: !183, size: 64, align: 64, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "msdosname", scope: !272, file: !4, line: 90, baseType: !183, size: 64, align: 64, offset: 128)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !272, file: !4, line: 91, baseType: !183, size: 64, align: 64, offset: 192)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "md5sum", scope: !272, file: !4, line: 92, baseType: !183, size: 64, align: 64, offset: 256)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "trigaw", scope: !175, file: !4, line: 216, baseType: !280, size: 128, align: 64, offset: 2624)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !175, file: !4, line: 213, size: 128, align: 64, elements: !281)
!281 = !{!282, !294}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !280, file: !4, line: 215, baseType: !283, size: 64, align: 64)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64, align: 64)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigaw", file: !4, line: 142, size: 320, align: 64, elements: !285)
!285 = !{!286, !287, !288, !289}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "aw", scope: !284, file: !4, line: 143, baseType: !174, size: 64, align: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "pend", scope: !284, file: !4, line: 143, baseType: !174, size: 64, align: 64, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "samepend_next", scope: !284, file: !4, line: 144, baseType: !283, size: 64, align: 64, offset: 128)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "sameaw", scope: !284, file: !4, line: 147, baseType: !290, size: 128, align: 64, offset: 192)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !284, file: !4, line: 145, size: 128, align: 64, elements: !291)
!291 = !{!292, !293}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !290, file: !4, line: 146, baseType: !283, size: 64, align: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !290, file: !4, line: 146, baseType: !283, size: 64, align: 64, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !280, file: !4, line: 215, baseType: !283, size: 64, align: 64, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "othertrigaw_head", scope: !175, file: !4, line: 219, baseType: !283, size: 64, align: 64, offset: 2752)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "trigpend_head", scope: !175, file: !4, line: 220, baseType: !297, size: 64, align: 64, offset: 2816)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64, align: 64)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigpend", file: !4, line: 134, size: 128, align: 64, elements: !299)
!299 = !{!300, !301}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !298, file: !4, line: 135, baseType: !297, size: 64, align: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !298, file: !4, line: 136, baseType: !183, size: 64, align: 64, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !175, file: !4, line: 231, baseType: !303, size: 64, align: 64, offset: 2880)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64, align: 64)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode_list", file: !79, line: 122, size: 128, align: 64, elements: !305)
!305 = !{!306, !307}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !304, file: !79, line: 123, baseType: !303, size: 64, align: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "namenode", scope: !304, file: !79, line: 124, baseType: !308, size: 64, align: 64, offset: 64)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64, align: 64)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode", file: !79, line: 90, size: 640, align: 64, elements: !310)
!310 = !{!311, !312, !313, !316, !324, !342, !357, !358, !359, !360}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !309, file: !79, line: 91, baseType: !308, size: 64, align: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !309, file: !79, line: 92, baseType: !183, size: 64, align: 64, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "packages", scope: !309, file: !79, line: 93, baseType: !314, size: 64, align: 64, offset: 128)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64, align: 64)
!315 = !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_list", file: !79, line: 93, flags: DIFlagFwdDecl)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "divert", scope: !309, file: !79, line: 94, baseType: !317, size: 64, align: 64, offset: 192)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64, align: 64)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_diversion", file: !79, line: 151, size: 256, align: 64, elements: !319)
!319 = !{!320, !321, !322, !323}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "useinstead", scope: !318, file: !79, line: 152, baseType: !308, size: 64, align: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "camefrom", scope: !318, file: !79, line: 153, baseType: !308, size: 64, align: 64, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "pkgset", scope: !318, file: !79, line: 154, baseType: !178, size: 64, align: 64, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !318, file: !79, line: 157, baseType: !317, size: 64, align: 64, offset: 192)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "statoverride", scope: !309, file: !79, line: 101, baseType: !325, size: 64, align: 64, offset: 256)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64, align: 64)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_stat", file: !327, line: 40, size: 256, align: 64, elements: !328)
!327 = !DIFile(filename: "../../lib/dpkg/file.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!328 = !{!329, !334, !337, !340, !341}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !326, file: !327, line: 41, baseType: !330, size: 32, align: 32)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !331, line: 80, baseType: !332)
!331 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !333, line: 125, baseType: !218)
!333 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!334 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !326, file: !327, line: 42, baseType: !335, size: 32, align: 32, offset: 32)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !331, line: 65, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !333, line: 126, baseType: !218)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !326, file: !327, line: 43, baseType: !338, size: 32, align: 32, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !331, line: 70, baseType: !339)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !333, line: 129, baseType: !218)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "uname", scope: !326, file: !327, line: 47, baseType: !158, size: 64, align: 64, offset: 128)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !326, file: !327, line: 48, baseType: !158, size: 64, align: 64, offset: 192)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "trig_interested", scope: !309, file: !79, line: 103, baseType: !343, size: 64, align: 64, offset: 320)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64, align: 64)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigfileint", file: !74, line: 54, size: 448, align: 64, elements: !345)
!345 = !{!346, !347, !349, !350, !351, !352}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !344, file: !74, line: 55, baseType: !174, size: 64, align: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "pkgbin", scope: !344, file: !74, line: 56, baseType: !348, size: 64, align: 64, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64, align: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "fnn", scope: !344, file: !74, line: 57, baseType: !308, size: 64, align: 64, offset: 128)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !344, file: !74, line: 58, baseType: !73, size: 32, align: 32, offset: 192)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "samefile_next", scope: !344, file: !74, line: 59, baseType: !343, size: 64, align: 64, offset: 256)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "inoverall", scope: !344, file: !74, line: 62, baseType: !353, size: 128, align: 64, offset: 320)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !344, file: !74, line: 60, size: 128, align: 64, elements: !354)
!354 = !{!355, !356}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !353, file: !74, line: 61, baseType: !343, size: 64, align: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !353, file: !74, line: 61, baseType: !343, size: 64, align: 64, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !309, file: !79, line: 111, baseType: !78, size: 32, align: 32, offset: 384)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "oldhash", scope: !309, file: !79, line: 114, baseType: !183, size: 64, align: 64, offset: 448)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "newhash", scope: !309, file: !79, line: 117, baseType: !183, size: 64, align: 64, offset: 512)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "file_ondisk_id", scope: !309, file: !79, line: 119, baseType: !361, size: 64, align: 64, offset: 576)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64, align: 64)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ondisk_id", file: !79, line: 85, size: 128, align: 64, elements: !363)
!363 = !{!364, !368}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "id_dev", scope: !362, file: !79, line: 86, baseType: !365, size: 64, align: 64)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !331, line: 60, baseType: !366)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !333, line: 124, baseType: !367)
!367 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "id_ino", scope: !362, file: !79, line: 87, baseType: !369, size: 64, align: 64, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !331, line: 48, baseType: !370)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !333, line: 127, baseType: !367)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_phys_offs", scope: !175, file: !4, line: 232, baseType: !372, size: 64, align: 64, offset: 2944)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !331, line: 86, baseType: !373)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !333, line: 131, baseType: !374)
!374 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_valid", scope: !175, file: !4, line: 233, baseType: !223, size: 8, align: 8, offset: 3008)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "status_dirty", scope: !175, file: !4, line: 236, baseType: !223, size: 8, align: 8, offset: 3016)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "activate_done", scope: !164, file: !157, line: 154, baseType: !167, size: 64, align: 64, offset: 128)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "interest_change", scope: !164, file: !157, line: 155, baseType: !379, size: 64, align: 64, offset: 192)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64, align: 64)
!380 = !DISubroutineType(types: !381)
!381 = !{null, !183, !174, !348, !227, !73}
!382 = distinct !DIGlobalVariable(name: "filetriggers", scope: !0, file: !157, line: 379, type: !383, isLocal: true, isDefinition: true, variable: %struct.anon.3* @filetriggers)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !157, line: 377, size: 128, align: 64, elements: !384)
!384 = !{!385, !386}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !383, file: !157, line: 378, baseType: !343, size: 64, align: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !383, file: !157, line: 378, baseType: !343, size: 64, align: 64, offset: 64)
!387 = distinct !DIGlobalVariable(name: "filetriggers_edited", scope: !0, file: !157, line: 387, type: !227, isLocal: true, isDefinition: true, variable: i32* @filetriggers_edited)
!388 = distinct !DIGlobalVariable(name: "tki_file", scope: !0, file: !157, line: 618, type: !163, isLocal: true, isDefinition: true, variable: %struct.trigkindinfo* @tki_file)
!389 = distinct !DIGlobalVariable(name: "trig_activating_name", scope: !0, file: !157, line: 164, type: !158, isLocal: true, isDefinition: true, variable: i8** @trig_activating_name)
!390 = distinct !DIGlobalVariable(name: "trk_file_trig", scope: !0, file: !157, line: 599, type: !183, isLocal: true, isDefinition: true, variable: i8** @trk_file_trig)
!391 = distinct !DIGlobalVariable(name: "tki_explicit", scope: !0, file: !157, line: 368, type: !163, isLocal: true, isDefinition: true, variable: %struct.trigkindinfo* @tki_explicit)
!392 = distinct !DIGlobalVariable(name: "trk_explicit_fn", scope: !0, file: !157, line: 241, type: !393, isLocal: true, isDefinition: true, variable: %struct.varbuf* @trk_explicit_fn)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varbuf", file: !394, line: 55, size: 192, align: 64, elements: !395)
!394 = !DIFile(filename: "../../lib/dpkg/varbuf.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!395 = !{!396, !399, !400}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !393, file: !394, line: 56, baseType: !397, size: 64, align: 64)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !398, line: 216, baseType: !367)
!398 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!399 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !393, file: !394, line: 56, baseType: !397, size: 64, align: 64, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !393, file: !394, line: 57, baseType: !158, size: 64, align: 64, offset: 128)
!401 = distinct !DIGlobalVariable(name: "trk_explicit_f", scope: !0, file: !157, line: 240, type: !402, isLocal: true, isDefinition: true, variable: %struct._IO_FILE** @trk_explicit_f)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64, align: 64)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !404, line: 48, baseType: !405)
!404 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !406, line: 241, size: 1728, align: 64, elements: !407)
!406 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!407 = !{!408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !428, !429, !430, !431, !432, !434, !436, !440, !443, !445, !446, !447, !448, !449, !450, !451}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !405, file: !406, line: 242, baseType: !227, size: 32, align: 32)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !405, file: !406, line: 247, baseType: !158, size: 64, align: 64, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !405, file: !406, line: 248, baseType: !158, size: 64, align: 64, offset: 128)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !405, file: !406, line: 249, baseType: !158, size: 64, align: 64, offset: 192)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !405, file: !406, line: 250, baseType: !158, size: 64, align: 64, offset: 256)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !405, file: !406, line: 251, baseType: !158, size: 64, align: 64, offset: 320)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !405, file: !406, line: 252, baseType: !158, size: 64, align: 64, offset: 384)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !405, file: !406, line: 253, baseType: !158, size: 64, align: 64, offset: 448)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !405, file: !406, line: 254, baseType: !158, size: 64, align: 64, offset: 512)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !405, file: !406, line: 256, baseType: !158, size: 64, align: 64, offset: 576)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !405, file: !406, line: 257, baseType: !158, size: 64, align: 64, offset: 640)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !405, file: !406, line: 258, baseType: !158, size: 64, align: 64, offset: 704)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !405, file: !406, line: 260, baseType: !421, size: 64, align: 64, offset: 768)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64, align: 64)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !406, line: 156, size: 192, align: 64, elements: !423)
!423 = !{!424, !425, !427}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !422, file: !406, line: 157, baseType: !421, size: 64, align: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !422, file: !406, line: 158, baseType: !426, size: 64, align: 64, offset: 64)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64, align: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !422, file: !406, line: 162, baseType: !227, size: 32, align: 32, offset: 128)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !405, file: !406, line: 262, baseType: !426, size: 64, align: 64, offset: 832)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !405, file: !406, line: 264, baseType: !227, size: 32, align: 32, offset: 896)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !405, file: !406, line: 268, baseType: !227, size: 32, align: 32, offset: 928)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !405, file: !406, line: 270, baseType: !373, size: 64, align: 64, offset: 960)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !405, file: !406, line: 274, baseType: !433, size: 16, align: 16, offset: 1024)
!433 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !405, file: !406, line: 275, baseType: !435, size: 8, align: 8, offset: 1040)
!435 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !405, file: !406, line: 276, baseType: !437, size: 8, align: 8, offset: 1048)
!437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 8, align: 8, elements: !438)
!438 = !{!439}
!439 = !DISubrange(count: 1)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !405, file: !406, line: 280, baseType: !441, size: 64, align: 64, offset: 1088)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64, align: 64)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !406, line: 150, baseType: null)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !405, file: !406, line: 289, baseType: !444, size: 64, align: 64, offset: 1152)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !333, line: 132, baseType: !374)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !405, file: !406, line: 297, baseType: !154, size: 64, align: 64, offset: 1216)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !405, file: !406, line: 298, baseType: !154, size: 64, align: 64, offset: 1280)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !405, file: !406, line: 299, baseType: !154, size: 64, align: 64, offset: 1344)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !405, file: !406, line: 300, baseType: !154, size: 64, align: 64, offset: 1408)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !405, file: !406, line: 302, baseType: !397, size: 64, align: 64, offset: 1472)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !405, file: !406, line: 303, baseType: !227, size: 32, align: 32, offset: 1536)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !405, file: !406, line: 305, baseType: !452, size: 160, align: 8, offset: 1568)
!452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 160, align: 8, elements: !453)
!453 = !{!454}
!454 = !DISubrange(count: 20)
!455 = distinct !DIGlobalVariable(name: "trk_explicit_trig", scope: !0, file: !157, line: 242, type: !158, isLocal: true, isDefinition: true, variable: i8** @trk_explicit_trig)
!456 = distinct !DIGlobalVariable(name: "tki_unknown", scope: !0, file: !157, line: 231, type: !163, isLocal: true, isDefinition: true, variable: %struct.trigkindinfo* @tki_unknown)
!457 = distinct !DIGlobalVariable(name: "tdm_incorp", scope: !0, file: !157, line: 759, type: !458, isLocal: true, isDefinition: true, variable: %struct.trigdefmeths* @tdm_incorp)
!458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !459)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigdefmeths", file: !120, line: 53, size: 192, align: 64, elements: !460)
!460 = !{!461, !465, !466}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "trig_begin", scope: !459, file: !120, line: 54, baseType: !462, size: 64, align: 64)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64, align: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{null, !183}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !459, file: !120, line: 55, baseType: !462, size: 64, align: 64, offset: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "trig_end", scope: !459, file: !120, line: 56, baseType: !167, size: 64, align: 64, offset: 128)
!467 = distinct !DIGlobalVariable(name: "trigh", scope: !0, file: !157, line: 826, type: !468, isLocal: true, isDefinition: true, variable: %struct.trig_hooks* @trigh)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trig_hooks", file: !74, line: 70, size: 320, align: 64, elements: !469)
!469 = !{!470, !471, !475, !479, !484}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "enqueue_deferred", scope: !468, file: !74, line: 71, baseType: !171, size: 64, align: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "transitional_activate", scope: !468, file: !74, line: 72, baseType: !472, size: 64, align: 64, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64, align: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{null, !97}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "namenode_find", scope: !468, file: !74, line: 74, baseType: !476, size: 64, align: 64, offset: 128)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64, align: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{!308, !183, !223}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "namenode_interested", scope: !468, file: !74, line: 75, baseType: !480, size: 64, align: 64, offset: 192)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64, align: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{!483, !308}
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64, align: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "namenode_name", scope: !468, file: !74, line: 78, baseType: !485, size: 64, align: 64, offset: 256)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64, align: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{!183, !308}
!488 = !{i32 2, !"Dwarf Version", i32 4}
!489 = !{i32 2, !"Debug Info Version", i32 3}
!490 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!491 = distinct !DISubprogram(name: "trig_clear_awaiters", scope: !157, file: !157, line: 101, type: !172, isLocal: false, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !492)
!492 = !{}
!493 = !DILocalVariable(name: "notpend", arg: 1, scope: !491, file: !157, line: 101, type: !174)
!494 = !DIExpression()
!495 = !DILocation(line: 101, column: 37, scope: !491)
!496 = !DILocalVariable(name: "ta", scope: !491, file: !157, line: 103, type: !283)
!497 = !DILocation(line: 103, column: 17, scope: !491)
!498 = !DILocalVariable(name: "aw", scope: !491, file: !157, line: 104, type: !174)
!499 = !DILocation(line: 104, column: 18, scope: !491)
!500 = !DILocation(line: 106, column: 6, scope: !501)
!501 = distinct !DILexicalBlock(scope: !491, file: !157, line: 106, column: 6)
!502 = !DILocation(line: 106, column: 15, scope: !501)
!503 = !DILocation(line: 106, column: 6, scope: !491)
!504 = !DILocation(line: 107, column: 59, scope: !501)
!505 = !DILocation(line: 107, column: 50, scope: !501)
!506 = !DILocation(line: 107, column: 3, scope: !507)
!507 = !DILexicalBlockFile(scope: !501, file: !157, discriminator: 1)
!508 = !DILocation(line: 107, column: 3, scope: !501)
!509 = !DILocation(line: 110, column: 7, scope: !491)
!510 = !DILocation(line: 110, column: 16, scope: !491)
!511 = !DILocation(line: 110, column: 5, scope: !491)
!512 = !DILocation(line: 111, column: 2, scope: !491)
!513 = !DILocation(line: 111, column: 11, scope: !491)
!514 = !DILocation(line: 111, column: 28, scope: !491)
!515 = !DILocation(line: 112, column: 2, scope: !491)
!516 = !DILocation(line: 112, column: 9, scope: !517)
!517 = !DILexicalBlockFile(scope: !518, file: !157, discriminator: 1)
!518 = distinct !DILexicalBlock(scope: !519, file: !157, line: 112, column: 2)
!519 = distinct !DILexicalBlock(scope: !491, file: !157, line: 112, column: 2)
!520 = !DILocation(line: 112, column: 2, scope: !517)
!521 = !DILocation(line: 113, column: 8, scope: !522)
!522 = distinct !DILexicalBlock(scope: !518, file: !157, line: 112, column: 37)
!523 = !DILocation(line: 113, column: 12, scope: !522)
!524 = !DILocation(line: 113, column: 6, scope: !522)
!525 = !DILocation(line: 114, column: 8, scope: !526)
!526 = distinct !DILexicalBlock(scope: !522, file: !157, line: 114, column: 7)
!527 = !DILocation(line: 114, column: 7, scope: !522)
!528 = !DILocation(line: 115, column: 4, scope: !526)
!529 = !DILocation(line: 116, column: 3, scope: !522)
!530 = distinct !{!530, !529}
!531 = !DILocation(line: 116, column: 13, scope: !532)
!532 = !DILexicalBlockFile(scope: !533, file: !157, discriminator: 1)
!533 = distinct !DILexicalBlock(scope: !534, file: !157, line: 116, column: 12)
!534 = distinct !DILexicalBlock(scope: !522, file: !157, line: 116, column: 6)
!535 = !DILocation(line: 116, column: 18, scope: !532)
!536 = !DILocation(line: 116, column: 25, scope: !532)
!537 = !DILocation(line: 116, column: 12, scope: !532)
!538 = !DILocation(line: 116, column: 65, scope: !539)
!539 = !DILexicalBlockFile(scope: !533, file: !157, discriminator: 2)
!540 = !DILocation(line: 116, column: 70, scope: !539)
!541 = !DILocation(line: 116, column: 77, scope: !539)
!542 = !DILocation(line: 116, column: 32, scope: !539)
!543 = !DILocation(line: 116, column: 37, scope: !539)
!544 = !DILocation(line: 116, column: 44, scope: !539)
!545 = !DILocation(line: 116, column: 50, scope: !539)
!546 = !DILocation(line: 116, column: 57, scope: !539)
!547 = !DILocation(line: 116, column: 62, scope: !539)
!548 = !DILocation(line: 116, column: 31, scope: !539)
!549 = !DILocation(line: 116, column: 109, scope: !550)
!550 = !DILexicalBlockFile(scope: !533, file: !157, discriminator: 3)
!551 = !DILocation(line: 116, column: 114, scope: !550)
!552 = !DILocation(line: 116, column: 121, scope: !550)
!553 = !DILocation(line: 116, column: 89, scope: !550)
!554 = !DILocation(line: 116, column: 93, scope: !550)
!555 = !DILocation(line: 116, column: 101, scope: !550)
!556 = !DILocation(line: 116, column: 106, scope: !550)
!557 = !DILocation(line: 116, column: 132, scope: !558)
!558 = !DILexicalBlockFile(scope: !559, file: !157, discriminator: 4)
!559 = distinct !DILexicalBlock(scope: !534, file: !157, line: 116, column: 131)
!560 = !DILocation(line: 116, column: 137, scope: !558)
!561 = !DILocation(line: 116, column: 144, scope: !558)
!562 = !DILocation(line: 116, column: 131, scope: !558)
!563 = !DILocation(line: 116, column: 184, scope: !564)
!564 = !DILexicalBlockFile(scope: !559, file: !157, discriminator: 5)
!565 = !DILocation(line: 116, column: 189, scope: !564)
!566 = !DILocation(line: 116, column: 196, scope: !564)
!567 = !DILocation(line: 116, column: 151, scope: !564)
!568 = !DILocation(line: 116, column: 156, scope: !564)
!569 = !DILocation(line: 116, column: 163, scope: !564)
!570 = !DILocation(line: 116, column: 169, scope: !564)
!571 = !DILocation(line: 116, column: 176, scope: !564)
!572 = !DILocation(line: 116, column: 181, scope: !564)
!573 = !DILocation(line: 116, column: 150, scope: !564)
!574 = !DILocation(line: 116, column: 228, scope: !575)
!575 = !DILexicalBlockFile(scope: !559, file: !157, discriminator: 6)
!576 = !DILocation(line: 116, column: 233, scope: !575)
!577 = !DILocation(line: 116, column: 240, scope: !575)
!578 = !DILocation(line: 116, column: 208, scope: !575)
!579 = !DILocation(line: 116, column: 212, scope: !575)
!580 = !DILocation(line: 116, column: 220, scope: !575)
!581 = !DILocation(line: 116, column: 225, scope: !575)
!582 = !DILocation(line: 116, column: 246, scope: !583)
!583 = !DILexicalBlockFile(scope: !534, file: !157, discriminator: 7)
!584 = !DILocation(line: 117, column: 8, scope: !585)
!585 = distinct !DILexicalBlock(scope: !522, file: !157, line: 117, column: 7)
!586 = !DILocation(line: 117, column: 12, scope: !585)
!587 = !DILocation(line: 117, column: 19, scope: !585)
!588 = !DILocation(line: 117, column: 24, scope: !585)
!589 = !DILocation(line: 117, column: 27, scope: !590)
!590 = !DILexicalBlockFile(scope: !585, file: !157, discriminator: 1)
!591 = !DILocation(line: 117, column: 31, scope: !590)
!592 = !DILocation(line: 117, column: 38, scope: !590)
!593 = !DILocation(line: 117, column: 7, scope: !590)
!594 = !DILocation(line: 118, column: 8, scope: !595)
!595 = distinct !DILexicalBlock(scope: !596, file: !157, line: 118, column: 8)
!596 = distinct !DILexicalBlock(scope: !585, file: !157, line: 117, column: 67)
!597 = !DILocation(line: 118, column: 12, scope: !595)
!598 = !DILocation(line: 118, column: 8, scope: !596)
!599 = !DILocation(line: 119, column: 20, scope: !595)
!600 = !DILocation(line: 119, column: 5, scope: !595)
!601 = !DILocation(line: 121, column: 20, scope: !595)
!602 = !DILocation(line: 121, column: 5, scope: !595)
!603 = !DILocation(line: 122, column: 19, scope: !596)
!604 = !DILocation(line: 122, column: 4, scope: !596)
!605 = !DILocation(line: 123, column: 3, scope: !596)
!606 = !DILocation(line: 124, column: 2, scope: !522)
!607 = !DILocation(line: 112, column: 18, scope: !608)
!608 = !DILexicalBlockFile(scope: !518, file: !157, discriminator: 2)
!609 = !DILocation(line: 112, column: 22, scope: !608)
!610 = !DILocation(line: 112, column: 16, scope: !608)
!611 = !DILocation(line: 112, column: 2, scope: !608)
!612 = distinct !{!612, !515}
!613 = !DILocation(line: 125, column: 1, scope: !491)
!614 = distinct !DISubprogram(name: "trig_fixup_awaiters", scope: !157, file: !157, line: 137, type: !473, isLocal: false, isDefinition: true, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !492)
!615 = !DILocalVariable(name: "cstatus", arg: 1, scope: !614, file: !157, line: 137, type: !97)
!616 = !DILocation(line: 137, column: 39, scope: !614)
!617 = !DILocation(line: 139, column: 6, scope: !618)
!618 = distinct !DILexicalBlock(scope: !614, file: !157, line: 139, column: 6)
!619 = !DILocation(line: 139, column: 14, scope: !618)
!620 = !DILocation(line: 139, column: 6, scope: !614)
!621 = !DILocation(line: 140, column: 3, scope: !618)
!622 = !DILocation(line: 142, column: 2, scope: !614)
!623 = !DILocation(line: 143, column: 2, scope: !614)
!624 = !DILocation(line: 144, column: 1, scope: !614)
!625 = !DILocation(line: 144, column: 1, scope: !626)
!626 = !DILexicalBlockFile(scope: !614, file: !157, discriminator: 1)
!627 = distinct !DISubprogram(name: "trig_file_interests_save", scope: !157, file: !157, line: 476, type: !168, isLocal: false, isDefinition: true, scopeLine: 477, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !492)
!628 = !DILocation(line: 478, column: 6, scope: !629)
!629 = distinct !DILexicalBlock(scope: !627, file: !157, line: 478, column: 6)
!630 = !DILocation(line: 478, column: 26, scope: !629)
!631 = !DILocation(line: 478, column: 6, scope: !627)
!632 = !DILocation(line: 479, column: 3, scope: !629)
!633 = !DILocation(line: 481, column: 20, scope: !634)
!634 = distinct !DILexicalBlock(scope: !627, file: !157, line: 481, column: 6)
!635 = !DILocation(line: 481, column: 7, scope: !634)
!636 = !DILocation(line: 481, column: 6, scope: !627)
!637 = !DILocation(line: 482, column: 3, scope: !634)
!638 = !DILocation(line: 484, column: 3, scope: !634)
!639 = !DILocation(line: 486, column: 16, scope: !627)
!640 = !DILocation(line: 486, column: 2, scope: !627)
!641 = !DILocation(line: 488, column: 22, scope: !627)
!642 = !DILocation(line: 489, column: 1, scope: !627)
!643 = !DILocation(line: 489, column: 1, scope: !644)
!644 = !DILexicalBlockFile(scope: !627, file: !157, discriminator: 1)
!645 = distinct !DISubprogram(name: "trig_file_interests_remove", scope: !157, file: !157, line: 449, type: !168, isLocal: true, isDefinition: true, scopeLine: 450, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !492)
!646 = !DILocation(line: 451, column: 13, scope: !647)
!647 = distinct !DILexicalBlock(scope: !645, file: !157, line: 451, column: 6)
!648 = !DILocation(line: 451, column: 6, scope: !647)
!649 = !DILocation(line: 451, column: 31, scope: !647)
!650 = !DILocation(line: 451, column: 35, scope: !651)
!651 = !DILexicalBlockFile(scope: !647, file: !157, discriminator: 1)
!652 = !DILocation(line: 451, column: 34, scope: !651)
!653 = !DILocation(line: 451, column: 39, scope: !651)
!654 = !DILocation(line: 451, column: 6, scope: !651)
!655 = !DILocation(line: 452, column: 10, scope: !647)
!656 = !DILocation(line: 452, column: 39, scope: !647)
!657 = !DILocation(line: 452, column: 3, scope: !651)
!658 = !DILocation(line: 452, column: 3, scope: !647)
!659 = !DILocation(line: 453, column: 1, scope: !645)
!660 = distinct !DISubprogram(name: "trig_file_interests_update", scope: !157, file: !157, line: 456, type: !168, isLocal: true, isDefinition: true, scopeLine: 457, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !492)
!661 = !DILocalVariable(name: "tfi", scope: !660, file: !157, line: 458, type: !343)
!662 = !DILocation(line: 458, column: 22, scope: !660)
!663 = !DILocalVariable(name: "file", scope: !660, file: !157, line: 459, type: !664)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64, align: 64)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atomic_file", file: !135, line: 40, size: 256, align: 64, elements: !666)
!666 = !{!667, !668, !669, !670}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !665, file: !135, line: 41, baseType: !134, size: 32, align: 32)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !665, file: !135, line: 42, baseType: !158, size: 64, align: 64, offset: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "name_new", scope: !665, file: !135, line: 43, baseType: !158, size: 64, align: 64, offset: 128)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !665, file: !135, line: 44, baseType: !402, size: 64, align: 64, offset: 192)
!671 = !DILocation(line: 459, column: 22, scope: !660)
!672 = !DILocation(line: 461, column: 25, scope: !660)
!673 = !DILocation(line: 461, column: 9, scope: !660)
!674 = !DILocation(line: 461, column: 7, scope: !660)
!675 = !DILocation(line: 462, column: 19, scope: !660)
!676 = !DILocation(line: 462, column: 2, scope: !660)
!677 = !DILocation(line: 464, column: 26, scope: !678)
!678 = distinct !DILexicalBlock(scope: !660, file: !157, line: 464, column: 2)
!679 = !DILocation(line: 464, column: 11, scope: !678)
!680 = !DILocation(line: 464, column: 7, scope: !678)
!681 = !DILocation(line: 464, column: 32, scope: !682)
!682 = !DILexicalBlockFile(scope: !683, file: !157, discriminator: 1)
!683 = distinct !DILexicalBlock(scope: !678, file: !157, line: 464, column: 2)
!684 = !DILocation(line: 464, column: 2, scope: !682)
!685 = !DILocation(line: 465, column: 11, scope: !683)
!686 = !DILocation(line: 465, column: 17, scope: !683)
!687 = !DILocation(line: 465, column: 40, scope: !683)
!688 = !DILocation(line: 465, column: 54, scope: !683)
!689 = !DILocation(line: 465, column: 59, scope: !683)
!690 = !DILocation(line: 465, column: 34, scope: !683)
!691 = !DILocation(line: 466, column: 23, scope: !683)
!692 = !DILocation(line: 466, column: 28, scope: !683)
!693 = !DILocation(line: 466, column: 33, scope: !683)
!694 = !DILocation(line: 466, column: 38, scope: !683)
!695 = !DILocation(line: 466, column: 11, scope: !683)
!696 = !DILocation(line: 467, column: 12, scope: !683)
!697 = !DILocation(line: 467, column: 17, scope: !683)
!698 = !DILocation(line: 467, column: 25, scope: !683)
!699 = !DILocation(line: 467, column: 11, scope: !683)
!700 = !DILocation(line: 465, column: 3, scope: !682)
!701 = !DILocation(line: 465, column: 3, scope: !683)
!702 = !DILocation(line: 464, column: 43, scope: !703)
!703 = !DILexicalBlockFile(scope: !683, file: !157, discriminator: 2)
!704 = !DILocation(line: 464, column: 48, scope: !703)
!705 = !DILocation(line: 464, column: 58, scope: !703)
!706 = !DILocation(line: 464, column: 41, scope: !703)
!707 = !DILocation(line: 464, column: 2, scope: !703)
!708 = distinct !{!708, !709}
!709 = !DILocation(line: 464, column: 2, scope: !660)
!710 = !DILocation(line: 469, column: 19, scope: !660)
!711 = !DILocation(line: 469, column: 2, scope: !660)
!712 = !DILocation(line: 470, column: 20, scope: !660)
!713 = !DILocation(line: 470, column: 2, scope: !660)
!714 = !DILocation(line: 471, column: 21, scope: !660)
!715 = !DILocation(line: 471, column: 2, scope: !660)
!716 = !DILocation(line: 472, column: 19, scope: !660)
!717 = !DILocation(line: 472, column: 2, scope: !660)
!718 = !DILocation(line: 473, column: 1, scope: !660)
!719 = distinct !DISubprogram(name: "trig_file_interests_ensure", scope: !157, file: !157, line: 492, type: !168, isLocal: false, isDefinition: true, scopeLine: 493, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !492)
!720 = !DILocalVariable(name: "f", scope: !719, file: !157, line: 494, type: !402)
!721 = !DILocation(line: 494, column: 8, scope: !719)
!722 = !DILocalVariable(name: "linebuf", scope: !719, file: !157, line: 495, type: !723)
!723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 8192, align: 8, elements: !724)
!724 = !{!725}
!725 = !DISubrange(count: 1024)
!726 = !DILocation(line: 495, column: 7, scope: !719)
!727 = !DILocalVariable(name: "space", scope: !719, file: !157, line: 495, type: !158)
!728 = !DILocation(line: 495, column: 23, scope: !719)
!729 = !DILocalVariable(name: "pkg", scope: !719, file: !157, line: 496, type: !174)
!730 = !DILocation(line: 496, column: 18, scope: !719)
!731 = !DILocalVariable(name: "pkgbin", scope: !719, file: !157, line: 497, type: !348)
!732 = !DILocation(line: 497, column: 17, scope: !719)
!733 = !DILocation(line: 499, column: 6, scope: !734)
!734 = distinct !DILexicalBlock(scope: !719, file: !157, line: 499, column: 6)
!735 = !DILocation(line: 499, column: 26, scope: !734)
!736 = !DILocation(line: 499, column: 6, scope: !719)
!737 = !DILocation(line: 500, column: 3, scope: !734)
!738 = !DILocation(line: 502, column: 12, scope: !719)
!739 = !DILocation(line: 502, column: 6, scope: !719)
!740 = !DILocation(line: 502, column: 4, scope: !719)
!741 = !DILocation(line: 503, column: 7, scope: !742)
!742 = distinct !DILexicalBlock(scope: !719, file: !157, line: 503, column: 6)
!743 = !DILocation(line: 503, column: 6, scope: !719)
!744 = !DILocation(line: 504, column: 8, scope: !745)
!745 = distinct !DILexicalBlock(scope: !746, file: !157, line: 504, column: 6)
!746 = distinct !DILexicalBlock(scope: !742, file: !157, line: 503, column: 10)
!747 = !DILocation(line: 504, column: 7, scope: !745)
!748 = !DILocation(line: 504, column: 12, scope: !745)
!749 = !DILocation(line: 504, column: 6, scope: !746)
!750 = !DILocation(line: 505, column: 4, scope: !745)
!751 = !DILocation(line: 506, column: 10, scope: !746)
!752 = !DILocation(line: 507, column: 11, scope: !746)
!753 = !DILocation(line: 506, column: 3, scope: !754)
!754 = !DILexicalBlockFile(scope: !746, file: !157, discriminator: 1)
!755 = !DILocation(line: 506, column: 3, scope: !746)
!756 = !DILocation(line: 510, column: 38, scope: !719)
!757 = !DILocation(line: 510, column: 2, scope: !719)
!758 = !DILocation(line: 511, column: 2, scope: !719)
!759 = !DILocation(line: 511, column: 23, scope: !760)
!760 = !DILexicalBlockFile(scope: !719, file: !157, discriminator: 1)
!761 = !DILocation(line: 511, column: 49, scope: !760)
!762 = !DILocation(line: 511, column: 52, scope: !760)
!763 = !DILocation(line: 511, column: 9, scope: !760)
!764 = !DILocation(line: 511, column: 70, scope: !760)
!765 = !DILocation(line: 511, column: 2, scope: !760)
!766 = !DILocalVariable(name: "err", scope: !767, file: !157, line: 512, type: !768)
!767 = distinct !DILexicalBlock(scope: !719, file: !157, line: 511, column: 76)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_error", file: !108, line: 42, size: 128, align: 64, elements: !769)
!769 = !{!770, !771, !772}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !768, file: !108, line: 43, baseType: !107, size: 32, align: 32)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "syserrno", scope: !768, file: !108, line: 45, baseType: !227, size: 32, align: 32, offset: 32)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !768, file: !108, line: 46, baseType: !158, size: 64, align: 64, offset: 64)
!773 = !DILocation(line: 512, column: 21, scope: !767)
!774 = !DILocalVariable(name: "slash", scope: !767, file: !157, line: 513, type: !158)
!775 = !DILocation(line: 513, column: 9, scope: !767)
!776 = !DILocalVariable(name: "trig_opts", scope: !767, file: !157, line: 514, type: !73)
!777 = !DILocation(line: 514, column: 21, scope: !767)
!778 = !DILocation(line: 515, column: 18, scope: !767)
!779 = !DILocation(line: 515, column: 11, scope: !767)
!780 = !DILocation(line: 515, column: 9, scope: !767)
!781 = !DILocation(line: 516, column: 8, scope: !782)
!782 = distinct !DILexicalBlock(scope: !767, file: !157, line: 516, column: 7)
!783 = !DILocation(line: 516, column: 14, scope: !782)
!784 = !DILocation(line: 516, column: 17, scope: !785)
!785 = !DILexicalBlockFile(scope: !782, file: !157, discriminator: 1)
!786 = !DILocation(line: 516, column: 28, scope: !785)
!787 = !DILocation(line: 516, column: 7, scope: !785)
!788 = !DILocation(line: 517, column: 10, scope: !782)
!789 = !DILocation(line: 518, column: 11, scope: !782)
!790 = !DILocation(line: 517, column: 4, scope: !785)
!791 = !DILocation(line: 517, column: 4, scope: !782)
!792 = !DILocation(line: 519, column: 9, scope: !767)
!793 = !DILocation(line: 519, column: 12, scope: !767)
!794 = !DILocation(line: 521, column: 18, scope: !767)
!795 = !DILocation(line: 521, column: 11, scope: !767)
!796 = !DILocation(line: 521, column: 9, scope: !767)
!797 = !DILocation(line: 522, column: 7, scope: !798)
!798 = distinct !DILexicalBlock(scope: !767, file: !157, line: 522, column: 7)
!799 = !DILocation(line: 522, column: 13, scope: !798)
!800 = !DILocation(line: 522, column: 35, scope: !801)
!801 = !DILexicalBlockFile(scope: !798, file: !157, discriminator: 1)
!802 = !DILocation(line: 522, column: 16, scope: !801)
!803 = !DILocation(line: 522, column: 42, scope: !801)
!804 = !DILocation(line: 522, column: 7, scope: !801)
!805 = !DILocation(line: 523, column: 14, scope: !806)
!806 = distinct !DILexicalBlock(scope: !798, file: !157, line: 522, column: 48)
!807 = !DILocation(line: 524, column: 5, scope: !806)
!808 = !DILocation(line: 524, column: 11, scope: !806)
!809 = !DILocation(line: 525, column: 3, scope: !806)
!810 = !DILocation(line: 526, column: 7, scope: !811)
!811 = distinct !DILexicalBlock(scope: !767, file: !157, line: 526, column: 7)
!812 = !DILocation(line: 526, column: 13, scope: !811)
!813 = !DILocation(line: 526, column: 33, scope: !814)
!814 = !DILexicalBlockFile(scope: !811, file: !157, discriminator: 1)
!815 = !DILocation(line: 526, column: 16, scope: !814)
!816 = !DILocation(line: 526, column: 40, scope: !814)
!817 = !DILocation(line: 526, column: 7, scope: !814)
!818 = !DILocation(line: 527, column: 14, scope: !819)
!819 = distinct !DILexicalBlock(scope: !811, file: !157, line: 526, column: 46)
!820 = !DILocation(line: 528, column: 5, scope: !819)
!821 = !DILocation(line: 528, column: 11, scope: !819)
!822 = !DILocation(line: 529, column: 3, scope: !819)
!823 = !DILocation(line: 531, column: 28, scope: !767)
!824 = !DILocation(line: 531, column: 9, scope: !767)
!825 = !DILocation(line: 531, column: 7, scope: !767)
!826 = !DILocation(line: 532, column: 7, scope: !827)
!827 = distinct !DILexicalBlock(scope: !767, file: !157, line: 532, column: 7)
!828 = !DILocation(line: 532, column: 11, scope: !827)
!829 = !DILocation(line: 532, column: 7, scope: !767)
!830 = !DILocation(line: 533, column: 10, scope: !827)
!831 = !DILocation(line: 535, column: 34, scope: !827)
!832 = !DILocation(line: 535, column: 41, scope: !827)
!833 = !DILocation(line: 535, column: 54, scope: !827)
!834 = !DILocation(line: 533, column: 4, scope: !835)
!835 = !DILexicalBlockFile(scope: !827, file: !157, discriminator: 1)
!836 = !DILocation(line: 533, column: 4, scope: !827)
!837 = !DILocation(line: 536, column: 13, scope: !767)
!838 = !DILocation(line: 536, column: 18, scope: !767)
!839 = !DILocation(line: 536, column: 10, scope: !767)
!840 = !DILocation(line: 538, column: 28, scope: !767)
!841 = !DILocation(line: 538, column: 37, scope: !767)
!842 = !DILocation(line: 538, column: 42, scope: !767)
!843 = !DILocation(line: 538, column: 54, scope: !767)
!844 = !DILocation(line: 538, column: 3, scope: !767)
!845 = !DILocation(line: 511, column: 2, scope: !846)
!846 = !DILexicalBlockFile(scope: !719, file: !157, discriminator: 2)
!847 = distinct !{!847, !758}
!848 = !DILocation(line: 540, column: 2, scope: !719)
!849 = !DILocation(line: 542, column: 22, scope: !719)
!850 = !DILocation(line: 543, column: 1, scope: !719)
!851 = !DILocation(line: 543, column: 1, scope: !760)
!852 = distinct !DISubprogram(name: "trk_file_interest_change", scope: !157, file: !157, line: 395, type: !380, isLocal: true, isDefinition: true, scopeLine: 398, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !492)
!853 = !DILocalVariable(name: "trig", arg: 1, scope: !852, file: !157, line: 395, type: !183)
!854 = !DILocation(line: 395, column: 38, scope: !852)
!855 = !DILocalVariable(name: "pkg", arg: 2, scope: !852, file: !157, line: 395, type: !174)
!856 = !DILocation(line: 395, column: 60, scope: !852)
!857 = !DILocalVariable(name: "pkgbin", arg: 3, scope: !852, file: !157, line: 396, type: !348)
!858 = !DILocation(line: 396, column: 41, scope: !852)
!859 = !DILocalVariable(name: "signum", arg: 4, scope: !852, file: !157, line: 396, type: !227)
!860 = !DILocation(line: 396, column: 53, scope: !852)
!861 = !DILocalVariable(name: "opts", arg: 5, scope: !852, file: !157, line: 397, type: !73)
!862 = !DILocation(line: 397, column: 44, scope: !852)
!863 = !DILocalVariable(name: "fnn", scope: !852, file: !157, line: 399, type: !308)
!864 = !DILocation(line: 399, column: 24, scope: !852)
!865 = !DILocalVariable(name: "search", scope: !852, file: !157, line: 400, type: !483)
!866 = !DILocation(line: 400, column: 23, scope: !852)
!867 = !DILocalVariable(name: "tfi", scope: !852, file: !157, line: 400, type: !343)
!868 = !DILocation(line: 400, column: 32, scope: !852)
!869 = !DILocation(line: 402, column: 14, scope: !852)
!870 = !DILocation(line: 402, column: 28, scope: !852)
!871 = !DILocation(line: 402, column: 34, scope: !852)
!872 = !DILocation(line: 402, column: 41, scope: !852)
!873 = !DILocation(line: 402, column: 8, scope: !852)
!874 = !DILocation(line: 402, column: 6, scope: !852)
!875 = !DILocation(line: 403, column: 7, scope: !876)
!876 = distinct !DILexicalBlock(scope: !852, file: !157, line: 403, column: 6)
!877 = !DILocation(line: 403, column: 6, scope: !852)
!878 = !DILocation(line: 404, column: 7, scope: !879)
!879 = distinct !DILexicalBlock(scope: !880, file: !157, line: 404, column: 7)
!880 = distinct !DILexicalBlock(scope: !876, file: !157, line: 403, column: 12)
!881 = !DILocation(line: 404, column: 14, scope: !879)
!882 = !DILocation(line: 404, column: 7, scope: !880)
!883 = !DILocation(line: 405, column: 78, scope: !879)
!884 = !DILocation(line: 405, column: 96, scope: !879)
!885 = !DILocation(line: 405, column: 101, scope: !879)
!886 = !DILocation(line: 405, column: 84, scope: !879)
!887 = !DILocation(line: 405, column: 4, scope: !888)
!888 = !DILexicalBlockFile(scope: !879, file: !157, discriminator: 1)
!889 = !DILocation(line: 405, column: 4, scope: !879)
!890 = !DILocation(line: 408, column: 3, scope: !880)
!891 = !DILocation(line: 411, column: 22, scope: !892)
!892 = distinct !DILexicalBlock(scope: !852, file: !157, line: 411, column: 2)
!893 = !DILocation(line: 411, column: 42, scope: !892)
!894 = !DILocation(line: 411, column: 16, scope: !892)
!895 = !DILocation(line: 411, column: 14, scope: !892)
!896 = !DILocation(line: 411, column: 7, scope: !892)
!897 = !DILocation(line: 412, column: 15, scope: !898)
!898 = distinct !DILexicalBlock(scope: !892, file: !157, line: 411, column: 2)
!899 = !DILocation(line: 412, column: 14, scope: !898)
!900 = !DILocation(line: 412, column: 12, scope: !898)
!901 = !DILocation(line: 411, column: 2, scope: !902)
!902 = !DILexicalBlockFile(scope: !892, file: !157, discriminator: 1)
!903 = !DILocation(line: 414, column: 7, scope: !904)
!904 = distinct !DILexicalBlock(scope: !898, file: !157, line: 414, column: 7)
!905 = !DILocation(line: 414, column: 12, scope: !904)
!906 = !DILocation(line: 414, column: 19, scope: !904)
!907 = !DILocation(line: 414, column: 16, scope: !904)
!908 = !DILocation(line: 414, column: 7, scope: !898)
!909 = !DILocation(line: 415, column: 4, scope: !904)
!910 = !DILocation(line: 414, column: 19, scope: !911)
!911 = !DILexicalBlockFile(scope: !904, file: !157, discriminator: 1)
!912 = !DILocation(line: 413, column: 17, scope: !898)
!913 = !DILocation(line: 413, column: 22, scope: !898)
!914 = !DILocation(line: 413, column: 14, scope: !898)
!915 = !DILocation(line: 411, column: 2, scope: !916)
!916 = !DILexicalBlockFile(scope: !898, file: !157, discriminator: 2)
!917 = distinct !{!917, !918}
!918 = !DILocation(line: 411, column: 2, scope: !852)
!919 = !DILocation(line: 418, column: 6, scope: !920)
!920 = distinct !DILexicalBlock(scope: !852, file: !157, line: 418, column: 6)
!921 = !DILocation(line: 418, column: 13, scope: !920)
!922 = !DILocation(line: 418, column: 6, scope: !852)
!923 = !DILocation(line: 419, column: 3, scope: !920)
!924 = !DILocation(line: 421, column: 8, scope: !852)
!925 = !DILocation(line: 421, column: 6, scope: !852)
!926 = !DILocation(line: 422, column: 13, scope: !852)
!927 = !DILocation(line: 422, column: 2, scope: !852)
!928 = !DILocation(line: 422, column: 7, scope: !852)
!929 = !DILocation(line: 422, column: 11, scope: !852)
!930 = !DILocation(line: 423, column: 16, scope: !852)
!931 = !DILocation(line: 423, column: 2, scope: !852)
!932 = !DILocation(line: 423, column: 7, scope: !852)
!933 = !DILocation(line: 423, column: 14, scope: !852)
!934 = !DILocation(line: 424, column: 13, scope: !852)
!935 = !DILocation(line: 424, column: 2, scope: !852)
!936 = !DILocation(line: 424, column: 7, scope: !852)
!937 = !DILocation(line: 424, column: 11, scope: !852)
!938 = !DILocation(line: 425, column: 17, scope: !852)
!939 = !DILocation(line: 425, column: 2, scope: !852)
!940 = !DILocation(line: 425, column: 7, scope: !852)
!941 = !DILocation(line: 425, column: 15, scope: !852)
!942 = !DILocation(line: 426, column: 30, scope: !852)
!943 = !DILocation(line: 426, column: 50, scope: !852)
!944 = !DILocation(line: 426, column: 24, scope: !852)
!945 = !DILocation(line: 426, column: 23, scope: !852)
!946 = !DILocation(line: 426, column: 2, scope: !852)
!947 = !DILocation(line: 426, column: 7, scope: !852)
!948 = !DILocation(line: 426, column: 21, scope: !852)
!949 = !DILocation(line: 427, column: 36, scope: !852)
!950 = !DILocation(line: 427, column: 9, scope: !852)
!951 = !DILocation(line: 427, column: 29, scope: !852)
!952 = !DILocation(line: 427, column: 3, scope: !852)
!953 = !DILocation(line: 427, column: 34, scope: !852)
!954 = !DILocation(line: 429, column: 2, scope: !852)
!955 = distinct !{!955, !954}
!956 = !DILocation(line: 429, column: 8, scope: !957)
!957 = !DILexicalBlockFile(scope: !958, file: !157, discriminator: 1)
!958 = distinct !DILexicalBlock(scope: !852, file: !157, line: 429, column: 5)
!959 = !DILocation(line: 429, column: 14, scope: !957)
!960 = !DILocation(line: 429, column: 24, scope: !957)
!961 = !DILocation(line: 429, column: 29, scope: !957)
!962 = !DILocation(line: 429, column: 42, scope: !957)
!963 = !DILocation(line: 429, column: 4, scope: !957)
!964 = !DILocation(line: 429, column: 10, scope: !957)
!965 = !DILocation(line: 429, column: 20, scope: !957)
!966 = !DILocation(line: 429, column: 25, scope: !957)
!967 = !DILocation(line: 429, column: 67, scope: !957)
!968 = !DILocation(line: 429, column: 52, scope: !957)
!969 = !DILocation(line: 429, column: 112, scope: !970)
!970 = !DILexicalBlockFile(scope: !971, file: !157, discriminator: 2)
!971 = distinct !DILexicalBlock(scope: !958, file: !157, line: 429, column: 52)
!972 = !DILocation(line: 429, column: 88, scope: !970)
!973 = !DILocation(line: 429, column: 94, scope: !970)
!974 = !DILocation(line: 429, column: 104, scope: !970)
!975 = !DILocation(line: 429, column: 109, scope: !970)
!976 = !DILocation(line: 429, column: 73, scope: !970)
!977 = !DILocation(line: 429, column: 146, scope: !978)
!978 = !DILexicalBlockFile(scope: !971, file: !157, discriminator: 3)
!979 = !DILocation(line: 429, column: 143, scope: !978)
!980 = !DILocation(line: 429, column: 175, scope: !981)
!981 = !DILexicalBlockFile(scope: !958, file: !157, discriminator: 4)
!982 = !DILocation(line: 429, column: 172, scope: !981)
!983 = !DILocation(line: 429, column: 181, scope: !981)
!984 = !DILocation(line: 430, column: 2, scope: !852)
!985 = !DILocation(line: 433, column: 17, scope: !852)
!986 = !DILocation(line: 433, column: 2, scope: !852)
!987 = !DILocation(line: 433, column: 7, scope: !852)
!988 = !DILocation(line: 433, column: 15, scope: !852)
!989 = !DILocation(line: 434, column: 6, scope: !990)
!990 = distinct !DILexicalBlock(scope: !852, file: !157, line: 434, column: 6)
!991 = !DILocation(line: 434, column: 13, scope: !990)
!992 = !DILocation(line: 434, column: 6, scope: !852)
!993 = !DILocation(line: 435, column: 9, scope: !990)
!994 = !DILocation(line: 436, column: 36, scope: !990)
!995 = !DILocation(line: 437, column: 22, scope: !990)
!996 = !DILocation(line: 437, column: 27, scope: !990)
!997 = !DILocation(line: 437, column: 10, scope: !990)
!998 = !DILocation(line: 435, column: 3, scope: !999)
!999 = !DILexicalBlockFile(scope: !990, file: !157, discriminator: 1)
!1000 = !DILocation(line: 435, column: 3, scope: !990)
!1001 = !DILocation(line: 438, column: 6, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !852, file: !157, line: 438, column: 6)
!1003 = !DILocation(line: 438, column: 13, scope: !1002)
!1004 = !DILocation(line: 438, column: 6, scope: !852)
!1005 = !DILocation(line: 439, column: 3, scope: !1002)
!1006 = !DILocation(line: 442, column: 12, scope: !852)
!1007 = !DILocation(line: 442, column: 17, scope: !852)
!1008 = !DILocation(line: 442, column: 3, scope: !852)
!1009 = !DILocation(line: 442, column: 10, scope: !852)
!1010 = !DILocation(line: 443, column: 2, scope: !852)
!1011 = distinct !{!1011, !1010}
!1012 = !DILocation(line: 443, column: 12, scope: !1013)
!1013 = !DILexicalBlockFile(scope: !1014, file: !157, discriminator: 1)
!1014 = distinct !DILexicalBlock(scope: !1015, file: !157, line: 443, column: 11)
!1015 = distinct !DILexicalBlock(scope: !852, file: !157, line: 443, column: 5)
!1016 = !DILocation(line: 443, column: 18, scope: !1013)
!1017 = !DILocation(line: 443, column: 28, scope: !1013)
!1018 = !DILocation(line: 443, column: 11, scope: !1013)
!1019 = !DILocation(line: 443, column: 75, scope: !1020)
!1020 = !DILexicalBlockFile(scope: !1014, file: !157, discriminator: 2)
!1021 = !DILocation(line: 443, column: 81, scope: !1020)
!1022 = !DILocation(line: 443, column: 91, scope: !1020)
!1023 = !DILocation(line: 443, column: 35, scope: !1020)
!1024 = !DILocation(line: 443, column: 41, scope: !1020)
!1025 = !DILocation(line: 443, column: 51, scope: !1020)
!1026 = !DILocation(line: 443, column: 57, scope: !1020)
!1027 = !DILocation(line: 443, column: 67, scope: !1020)
!1028 = !DILocation(line: 443, column: 72, scope: !1020)
!1029 = !DILocation(line: 443, column: 34, scope: !1020)
!1030 = !DILocation(line: 443, column: 125, scope: !1031)
!1031 = !DILexicalBlockFile(scope: !1014, file: !157, discriminator: 3)
!1032 = !DILocation(line: 443, column: 131, scope: !1031)
!1033 = !DILocation(line: 443, column: 141, scope: !1031)
!1034 = !DILocation(line: 443, column: 122, scope: !1031)
!1035 = !DILocation(line: 443, column: 152, scope: !1036)
!1036 = !DILexicalBlockFile(scope: !1037, file: !157, discriminator: 4)
!1037 = distinct !DILexicalBlock(scope: !1015, file: !157, line: 443, column: 151)
!1038 = !DILocation(line: 443, column: 158, scope: !1036)
!1039 = !DILocation(line: 443, column: 168, scope: !1036)
!1040 = !DILocation(line: 443, column: 151, scope: !1036)
!1041 = !DILocation(line: 443, column: 215, scope: !1042)
!1042 = !DILexicalBlockFile(scope: !1037, file: !157, discriminator: 5)
!1043 = !DILocation(line: 443, column: 221, scope: !1042)
!1044 = !DILocation(line: 443, column: 231, scope: !1042)
!1045 = !DILocation(line: 443, column: 175, scope: !1042)
!1046 = !DILocation(line: 443, column: 181, scope: !1042)
!1047 = !DILocation(line: 443, column: 191, scope: !1042)
!1048 = !DILocation(line: 443, column: 197, scope: !1042)
!1049 = !DILocation(line: 443, column: 207, scope: !1042)
!1050 = !DILocation(line: 443, column: 212, scope: !1042)
!1051 = !DILocation(line: 443, column: 174, scope: !1042)
!1052 = !DILocation(line: 443, column: 265, scope: !1053)
!1053 = !DILexicalBlockFile(scope: !1037, file: !157, discriminator: 6)
!1054 = !DILocation(line: 443, column: 271, scope: !1053)
!1055 = !DILocation(line: 443, column: 281, scope: !1053)
!1056 = !DILocation(line: 443, column: 262, scope: !1053)
!1057 = !DILocation(line: 443, column: 287, scope: !1058)
!1058 = !DILexicalBlockFile(scope: !1015, file: !157, discriminator: 7)
!1059 = !DILocation(line: 443, column: 287, scope: !1060)
!1060 = !DILexicalBlockFile(scope: !1015, file: !157, discriminator: 8)
!1061 = !DILocation(line: 445, column: 22, scope: !852)
!1062 = !DILocation(line: 446, column: 1, scope: !852)
!1063 = !DILocation(line: 446, column: 1, scope: !1064)
!1064 = !DILexicalBlockFile(scope: !852, file: !157, discriminator: 1)
!1065 = distinct !DISubprogram(name: "trig_file_activate_byname", scope: !157, file: !157, line: 546, type: !1066, isLocal: false, isDefinition: true, scopeLine: 547, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !492)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{null, !183, !174}
!1068 = !DILocalVariable(name: "trig", arg: 1, scope: !1065, file: !157, line: 546, type: !183)
!1069 = !DILocation(line: 546, column: 39, scope: !1065)
!1070 = !DILocalVariable(name: "aw", arg: 2, scope: !1065, file: !157, line: 546, type: !174)
!1071 = !DILocation(line: 546, column: 61, scope: !1065)
!1072 = !DILocalVariable(name: "fnn", scope: !1065, file: !157, line: 548, type: !308)
!1073 = !DILocation(line: 548, column: 24, scope: !1065)
!1074 = !DILocation(line: 548, column: 36, scope: !1065)
!1075 = !DILocation(line: 548, column: 50, scope: !1065)
!1076 = !DILocation(line: 548, column: 30, scope: !1065)
!1077 = !DILocation(line: 550, column: 6, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1065, file: !157, line: 550, column: 6)
!1079 = !DILocation(line: 550, column: 6, scope: !1065)
!1080 = !DILocation(line: 551, column: 22, scope: !1078)
!1081 = !DILocation(line: 551, column: 27, scope: !1078)
!1082 = !DILocation(line: 551, column: 3, scope: !1078)
!1083 = !DILocation(line: 552, column: 1, scope: !1065)
!1084 = distinct !DISubprogram(name: "trig_file_activate", scope: !157, file: !157, line: 555, type: !1085, isLocal: false, isDefinition: true, scopeLine: 556, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !492)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{null, !308, !174}
!1087 = !DILocalVariable(name: "trig", arg: 1, scope: !1084, file: !157, line: 555, type: !308)
!1088 = !DILocation(line: 555, column: 42, scope: !1084)
!1089 = !DILocalVariable(name: "aw", arg: 2, scope: !1084, file: !157, line: 555, type: !174)
!1090 = !DILocation(line: 555, column: 64, scope: !1084)
!1091 = !DILocalVariable(name: "tfi", scope: !1084, file: !157, line: 557, type: !343)
!1092 = !DILocation(line: 557, column: 22, scope: !1084)
!1093 = !DILocation(line: 559, column: 20, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1084, file: !157, line: 559, column: 2)
!1095 = !DILocation(line: 559, column: 40, scope: !1094)
!1096 = !DILocation(line: 559, column: 14, scope: !1094)
!1097 = !DILocation(line: 559, column: 13, scope: !1094)
!1098 = !DILocation(line: 559, column: 11, scope: !1094)
!1099 = !DILocation(line: 559, column: 7, scope: !1094)
!1100 = !DILocation(line: 559, column: 47, scope: !1101)
!1101 = !DILexicalBlockFile(scope: !1102, file: !157, discriminator: 1)
!1102 = distinct !DILexicalBlock(scope: !1094, file: !157, line: 559, column: 2)
!1103 = !DILocation(line: 559, column: 2, scope: !1101)
!1104 = !DILocation(line: 561, column: 26, scope: !1102)
!1105 = !DILocation(line: 561, column: 31, scope: !1102)
!1106 = !DILocation(line: 561, column: 37, scope: !1102)
!1107 = !DILocation(line: 561, column: 42, scope: !1102)
!1108 = !DILocation(line: 561, column: 50, scope: !1102)
!1109 = !DILocation(line: 561, column: 36, scope: !1102)
!1110 = !DILocation(line: 561, column: 36, scope: !1101)
!1111 = !DILocation(line: 562, column: 32, scope: !1102)
!1112 = !DILocation(line: 561, column: 36, scope: !1113)
!1113 = !DILexicalBlockFile(scope: !1102, file: !157, discriminator: 2)
!1114 = !DILocation(line: 561, column: 36, scope: !1115)
!1115 = !DILexicalBlockFile(scope: !1102, file: !157, discriminator: 3)
!1116 = !DILocation(line: 562, column: 42, scope: !1101)
!1117 = !DILocation(line: 562, column: 56, scope: !1101)
!1118 = !DILocation(line: 562, column: 36, scope: !1101)
!1119 = !DILocation(line: 561, column: 3, scope: !1115)
!1120 = !DILocation(line: 560, column: 13, scope: !1102)
!1121 = !DILocation(line: 560, column: 18, scope: !1102)
!1122 = !DILocation(line: 560, column: 11, scope: !1102)
!1123 = !DILocation(line: 559, column: 2, scope: !1113)
!1124 = distinct !{!1124, !1125}
!1125 = !DILocation(line: 559, column: 2, scope: !1084)
!1126 = !DILocation(line: 563, column: 1, scope: !1084)
!1127 = distinct !DISubprogram(name: "trig_record_activation", scope: !157, file: !157, line: 81, type: !1128, isLocal: true, isDefinition: true, scopeLine: 82, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !492)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{null, !174, !174, !183}
!1130 = !DILocalVariable(name: "pend", arg: 1, scope: !1127, file: !157, line: 81, type: !174)
!1131 = !DILocation(line: 81, column: 40, scope: !1127)
!1132 = !DILocalVariable(name: "aw", arg: 2, scope: !1127, file: !157, line: 81, type: !174)
!1133 = !DILocation(line: 81, column: 62, scope: !1127)
!1134 = !DILocalVariable(name: "trig", arg: 3, scope: !1127, file: !157, line: 81, type: !183)
!1135 = !DILocation(line: 81, column: 78, scope: !1127)
!1136 = !DILocation(line: 83, column: 6, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1127, file: !157, line: 83, column: 6)
!1138 = !DILocation(line: 83, column: 12, scope: !1137)
!1139 = !DILocation(line: 83, column: 19, scope: !1137)
!1140 = !DILocation(line: 83, column: 6, scope: !1127)
!1141 = !DILocation(line: 84, column: 3, scope: !1137)
!1142 = !DILocation(line: 86, column: 21, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1127, file: !157, line: 86, column: 6)
!1144 = !DILocation(line: 86, column: 27, scope: !1143)
!1145 = !DILocation(line: 86, column: 6, scope: !1143)
!1146 = !DILocation(line: 86, column: 6, scope: !1127)
!1147 = !DILocation(line: 87, column: 26, scope: !1143)
!1148 = !DILocation(line: 87, column: 3, scope: !1143)
!1149 = !DILocation(line: 89, column: 12, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1127, file: !157, line: 89, column: 6)
!1151 = !DILocation(line: 89, column: 6, scope: !1150)
!1152 = !DILocation(line: 89, column: 6, scope: !1127)
!1153 = !DILocation(line: 90, column: 9, scope: !1150)
!1154 = !DILocation(line: 90, column: 26, scope: !1150)
!1155 = !DILocation(line: 90, column: 3, scope: !1150)
!1156 = !DILocation(line: 92, column: 6, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1127, file: !157, line: 92, column: 6)
!1158 = !DILocation(line: 92, column: 9, scope: !1157)
!1159 = !DILocation(line: 92, column: 12, scope: !1160)
!1160 = !DILexicalBlockFile(scope: !1157, file: !157, discriminator: 1)
!1161 = !DILocation(line: 92, column: 18, scope: !1160)
!1162 = !DILocation(line: 92, column: 25, scope: !1160)
!1163 = !DILocation(line: 92, column: 6, scope: !1160)
!1164 = !DILocation(line: 93, column: 20, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1157, file: !157, line: 93, column: 7)
!1166 = !DILocation(line: 93, column: 26, scope: !1165)
!1167 = !DILocation(line: 93, column: 7, scope: !1165)
!1168 = !DILocation(line: 93, column: 7, scope: !1157)
!1169 = !DILocation(line: 94, column: 8, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1171, file: !157, line: 94, column: 8)
!1171 = distinct !DILexicalBlock(scope: !1165, file: !157, line: 93, column: 31)
!1172 = !DILocation(line: 94, column: 12, scope: !1170)
!1173 = !DILocation(line: 94, column: 19, scope: !1170)
!1174 = !DILocation(line: 94, column: 8, scope: !1171)
!1175 = !DILocation(line: 95, column: 20, scope: !1170)
!1176 = !DILocation(line: 95, column: 5, scope: !1170)
!1177 = !DILocation(line: 96, column: 27, scope: !1171)
!1178 = !DILocation(line: 96, column: 4, scope: !1171)
!1179 = !DILocation(line: 97, column: 3, scope: !1171)
!1180 = !DILocation(line: 93, column: 28, scope: !1181)
!1181 = !DILexicalBlockFile(scope: !1165, file: !157, discriminator: 1)
!1182 = !DILocation(line: 98, column: 1, scope: !1127)
!1183 = distinct !DISubprogram(name: "trig_path_activate", scope: !157, file: !157, line: 582, type: !1085, isLocal: false, isDefinition: true, scopeLine: 583, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !492)
!1184 = !DILocalVariable(name: "trig", arg: 1, scope: !1183, file: !157, line: 582, type: !308)
!1185 = !DILocation(line: 582, column: 42, scope: !1183)
!1186 = !DILocalVariable(name: "aw", arg: 2, scope: !1183, file: !157, line: 582, type: !174)
!1187 = !DILocation(line: 582, column: 64, scope: !1183)
!1188 = !DILocation(line: 584, column: 21, scope: !1183)
!1189 = !DILocation(line: 584, column: 27, scope: !1183)
!1190 = !DILocation(line: 584, column: 2, scope: !1183)
!1191 = !DILocation(line: 585, column: 35, scope: !1183)
!1192 = !DILocation(line: 585, column: 49, scope: !1183)
!1193 = !DILocation(line: 585, column: 29, scope: !1183)
!1194 = !DILocation(line: 585, column: 56, scope: !1183)
!1195 = !DILocation(line: 585, column: 2, scope: !1196)
!1196 = !DILexicalBlockFile(scope: !1183, file: !157, discriminator: 1)
!1197 = !DILocation(line: 586, column: 1, scope: !1183)
!1198 = distinct !DISubprogram(name: "trig_file_activate_parents", scope: !157, file: !157, line: 566, type: !1066, isLocal: true, isDefinition: true, scopeLine: 567, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !492)
!1199 = !DILocalVariable(name: "trig", arg: 1, scope: !1198, file: !157, line: 566, type: !183)
!1200 = !DILocation(line: 566, column: 40, scope: !1198)
!1201 = !DILocalVariable(name: "aw", arg: 2, scope: !1198, file: !157, line: 566, type: !174)
!1202 = !DILocation(line: 566, column: 62, scope: !1198)
!1203 = !DILocalVariable(name: "path", scope: !1198, file: !157, line: 568, type: !158)
!1204 = !DILocation(line: 568, column: 8, scope: !1198)
!1205 = !DILocalVariable(name: "slash", scope: !1198, file: !157, line: 568, type: !158)
!1206 = !DILocation(line: 568, column: 15, scope: !1198)
!1207 = !DILocation(line: 571, column: 18, scope: !1198)
!1208 = !DILocation(line: 571, column: 9, scope: !1198)
!1209 = !DILocation(line: 571, column: 7, scope: !1198)
!1210 = !DILocation(line: 573, column: 2, scope: !1198)
!1211 = !DILocation(line: 573, column: 26, scope: !1212)
!1212 = !DILexicalBlockFile(scope: !1198, file: !157, discriminator: 1)
!1213 = !DILocation(line: 573, column: 18, scope: !1212)
!1214 = !DILocation(line: 573, column: 16, scope: !1212)
!1215 = !DILocation(line: 573, column: 2, scope: !1212)
!1216 = !DILocation(line: 574, column: 4, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1198, file: !157, line: 573, column: 39)
!1218 = !DILocation(line: 574, column: 10, scope: !1217)
!1219 = !DILocation(line: 575, column: 29, scope: !1217)
!1220 = !DILocation(line: 575, column: 35, scope: !1217)
!1221 = !DILocation(line: 575, column: 3, scope: !1217)
!1222 = !DILocation(line: 573, column: 2, scope: !1223)
!1223 = !DILexicalBlockFile(scope: !1198, file: !157, discriminator: 2)
!1224 = distinct !{!1224, !1210}
!1225 = !DILocation(line: 578, column: 7, scope: !1198)
!1226 = !DILocation(line: 578, column: 2, scope: !1198)
!1227 = !DILocation(line: 579, column: 1, scope: !1198)
!1228 = distinct !DISubprogram(name: "trig_cicb_interest_delete", scope: !157, file: !157, line: 642, type: !1229, isLocal: false, isDefinition: true, scopeLine: 644, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !492)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{null, !183, !174, !348, !73}
!1231 = !DILocalVariable(name: "trig", arg: 1, scope: !1228, file: !157, line: 642, type: !183)
!1232 = !DILocation(line: 642, column: 39, scope: !1228)
!1233 = !DILocalVariable(name: "pkg", arg: 2, scope: !1228, file: !157, line: 642, type: !174)
!1234 = !DILocation(line: 642, column: 61, scope: !1228)
!1235 = !DILocalVariable(name: "pkgbin", arg: 3, scope: !1228, file: !157, line: 643, type: !348)
!1236 = !DILocation(line: 643, column: 42, scope: !1228)
!1237 = !DILocalVariable(name: "opts", arg: 4, scope: !1228, file: !157, line: 643, type: !73)
!1238 = !DILocation(line: 643, column: 68, scope: !1228)
!1239 = !DILocation(line: 645, column: 28, scope: !1228)
!1240 = !DILocation(line: 645, column: 34, scope: !1228)
!1241 = !DILocation(line: 645, column: 39, scope: !1228)
!1242 = !DILocation(line: 645, column: 51, scope: !1228)
!1243 = !DILocation(line: 645, column: 2, scope: !1228)
!1244 = !DILocation(line: 646, column: 1, scope: !1228)
!1245 = distinct !DISubprogram(name: "trig_cicb_interest_change", scope: !157, file: !157, line: 628, type: !380, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !492)
!1246 = !DILocalVariable(name: "trig", arg: 1, scope: !1245, file: !157, line: 628, type: !183)
!1247 = !DILocation(line: 628, column: 39, scope: !1245)
!1248 = !DILocalVariable(name: "pkg", arg: 2, scope: !1245, file: !157, line: 628, type: !174)
!1249 = !DILocation(line: 628, column: 61, scope: !1245)
!1250 = !DILocalVariable(name: "pkgbin", arg: 3, scope: !1245, file: !157, line: 629, type: !348)
!1251 = !DILocation(line: 629, column: 42, scope: !1245)
!1252 = !DILocalVariable(name: "signum", arg: 4, scope: !1245, file: !157, line: 629, type: !227)
!1253 = !DILocation(line: 629, column: 54, scope: !1245)
!1254 = !DILocalVariable(name: "opts", arg: 5, scope: !1245, file: !157, line: 630, type: !73)
!1255 = !DILocation(line: 630, column: 45, scope: !1245)
!1256 = !DILocalVariable(name: "tki", scope: !1245, file: !157, line: 632, type: !162)
!1257 = !DILocation(line: 632, column: 29, scope: !1245)
!1258 = !DILocation(line: 632, column: 56, scope: !1245)
!1259 = !DILocation(line: 632, column: 35, scope: !1245)
!1260 = !DILocation(line: 634, column: 6, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1245, file: !157, line: 634, column: 6)
!1262 = !DILocation(line: 634, column: 26, scope: !1261)
!1263 = !DILocation(line: 634, column: 6, scope: !1245)
!1264 = !DILocation(line: 635, column: 75, scope: !1261)
!1265 = !DILocation(line: 635, column: 80, scope: !1261)
!1266 = !DILocation(line: 635, column: 63, scope: !1261)
!1267 = !DILocation(line: 635, column: 3, scope: !1268)
!1268 = !DILexicalBlockFile(scope: !1261, file: !157, discriminator: 1)
!1269 = !DILocation(line: 635, column: 3, scope: !1261)
!1270 = !DILocation(line: 638, column: 2, scope: !1245)
!1271 = !DILocation(line: 638, column: 7, scope: !1245)
!1272 = !DILocation(line: 638, column: 23, scope: !1245)
!1273 = !DILocation(line: 638, column: 29, scope: !1245)
!1274 = !DILocation(line: 638, column: 34, scope: !1245)
!1275 = !DILocation(line: 638, column: 42, scope: !1245)
!1276 = !DILocation(line: 638, column: 50, scope: !1245)
!1277 = !DILocation(line: 639, column: 1, scope: !1245)
!1278 = distinct !DISubprogram(name: "trig_cicb_interest_add", scope: !157, file: !157, line: 649, type: !1229, isLocal: false, isDefinition: true, scopeLine: 651, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !492)
!1279 = !DILocalVariable(name: "trig", arg: 1, scope: !1278, file: !157, line: 649, type: !183)
!1280 = !DILocation(line: 649, column: 36, scope: !1278)
!1281 = !DILocalVariable(name: "pkg", arg: 2, scope: !1278, file: !157, line: 649, type: !174)
!1282 = !DILocation(line: 649, column: 58, scope: !1278)
!1283 = !DILocalVariable(name: "pkgbin", arg: 3, scope: !1278, file: !157, line: 650, type: !348)
!1284 = !DILocation(line: 650, column: 39, scope: !1278)
!1285 = !DILocalVariable(name: "opts", arg: 4, scope: !1278, file: !157, line: 650, type: !73)
!1286 = !DILocation(line: 650, column: 65, scope: !1278)
!1287 = !DILocation(line: 652, column: 28, scope: !1278)
!1288 = !DILocation(line: 652, column: 34, scope: !1278)
!1289 = !DILocation(line: 652, column: 39, scope: !1278)
!1290 = !DILocation(line: 652, column: 51, scope: !1278)
!1291 = !DILocation(line: 652, column: 2, scope: !1278)
!1292 = !DILocation(line: 653, column: 1, scope: !1278)
!1293 = distinct !DISubprogram(name: "trig_cicb_statuschange_activate", scope: !157, file: !157, line: 656, type: !1229, isLocal: false, isDefinition: true, scopeLine: 658, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !492)
!1294 = !DILocalVariable(name: "trig", arg: 1, scope: !1293, file: !157, line: 656, type: !183)
!1295 = !DILocation(line: 656, column: 45, scope: !1293)
!1296 = !DILocalVariable(name: "pkg", arg: 2, scope: !1293, file: !157, line: 656, type: !174)
!1297 = !DILocation(line: 656, column: 67, scope: !1293)
!1298 = !DILocalVariable(name: "pkgbin", arg: 3, scope: !1293, file: !157, line: 657, type: !348)
!1299 = !DILocation(line: 657, column: 48, scope: !1293)
!1300 = !DILocalVariable(name: "opts", arg: 4, scope: !1293, file: !157, line: 657, type: !73)
!1301 = !DILocation(line: 657, column: 74, scope: !1293)
!1302 = !DILocalVariable(name: "aw", scope: !1293, file: !157, line: 659, type: !174)
!1303 = !DILocation(line: 659, column: 18, scope: !1293)
!1304 = !DILocation(line: 659, column: 23, scope: !1293)
!1305 = !DILocation(line: 661, column: 22, scope: !1293)
!1306 = !DILocation(line: 661, column: 2, scope: !1293)
!1307 = !DILocation(line: 662, column: 2, scope: !1293)
!1308 = !DILocation(line: 662, column: 8, scope: !1293)
!1309 = !DILocation(line: 662, column: 26, scope: !1293)
!1310 = !DILocation(line: 662, column: 31, scope: !1293)
!1311 = !DILocation(line: 662, column: 25, scope: !1293)
!1312 = !DILocation(line: 662, column: 25, scope: !1313)
!1313 = !DILexicalBlockFile(scope: !1293, file: !157, discriminator: 1)
!1314 = !DILocation(line: 662, column: 56, scope: !1315)
!1315 = !DILexicalBlockFile(scope: !1293, file: !157, discriminator: 2)
!1316 = !DILocation(line: 662, column: 25, scope: !1315)
!1317 = !DILocation(line: 662, column: 25, scope: !1318)
!1318 = !DILexicalBlockFile(scope: !1293, file: !157, discriminator: 3)
!1319 = !DILocation(line: 662, column: 2, scope: !1318)
!1320 = !DILocation(line: 663, column: 2, scope: !1293)
!1321 = !DILocation(line: 663, column: 8, scope: !1293)
!1322 = !DILocation(line: 664, column: 1, scope: !1293)
!1323 = distinct !DISubprogram(name: "trig_activate_start", scope: !157, file: !157, line: 197, type: !463, isLocal: true, isDefinition: true, scopeLine: 198, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !492)
!1324 = !DILocalVariable(name: "name", arg: 1, scope: !1323, file: !157, line: 197, type: !183)
!1325 = !DILocation(line: 197, column: 33, scope: !1323)
!1326 = !DILocation(line: 199, column: 30, scope: !1323)
!1327 = !DILocation(line: 199, column: 9, scope: !1323)
!1328 = !DILocation(line: 199, column: 7, scope: !1323)
!1329 = !DILocation(line: 200, column: 35, scope: !1323)
!1330 = !DILocation(line: 200, column: 25, scope: !1323)
!1331 = !DILocation(line: 200, column: 23, scope: !1323)
!1332 = !DILocation(line: 201, column: 2, scope: !1323)
!1333 = !DILocation(line: 201, column: 8, scope: !1323)
!1334 = !DILocation(line: 202, column: 1, scope: !1323)
!1335 = distinct !DISubprogram(name: "trig_parse_ci", scope: !157, file: !157, line: 683, type: !1336, isLocal: false, isDefinition: true, scopeLine: 686, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !492)
!1336 = !DISubroutineType(types: !1337)
!1337 = !{null, !183, !1338, !1338, !174, !348}
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64, align: 64)
!1339 = !DIDerivedType(tag: DW_TAG_typedef, name: "trig_parse_cicb", file: !74, line: 111, baseType: !1229)
!1340 = !DILocalVariable(name: "file", arg: 1, scope: !1335, file: !157, line: 683, type: !183)
!1341 = !DILocation(line: 683, column: 27, scope: !1335)
!1342 = !DILocalVariable(name: "interest", arg: 2, scope: !1335, file: !157, line: 683, type: !1338)
!1343 = !DILocation(line: 683, column: 50, scope: !1335)
!1344 = !DILocalVariable(name: "activate", arg: 3, scope: !1335, file: !157, line: 684, type: !1338)
!1345 = !DILocation(line: 684, column: 32, scope: !1335)
!1346 = !DILocalVariable(name: "pkg", arg: 4, scope: !1335, file: !157, line: 684, type: !174)
!1347 = !DILocation(line: 684, column: 58, scope: !1335)
!1348 = !DILocalVariable(name: "pkgbin", arg: 5, scope: !1335, file: !157, line: 685, type: !348)
!1349 = !DILocation(line: 685, column: 30, scope: !1335)
!1350 = !DILocalVariable(name: "f", scope: !1335, file: !157, line: 687, type: !402)
!1351 = !DILocation(line: 687, column: 8, scope: !1335)
!1352 = !DILocalVariable(name: "linebuf", scope: !1335, file: !157, line: 688, type: !1353)
!1353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 2048, align: 8, elements: !1354)
!1354 = !{!1355}
!1355 = !DISubrange(count: 256)
!1356 = !DILocation(line: 688, column: 7, scope: !1335)
!1357 = !DILocalVariable(name: "cmd", scope: !1335, file: !157, line: 688, type: !158)
!1358 = !DILocation(line: 688, column: 22, scope: !1335)
!1359 = !DILocalVariable(name: "spc", scope: !1335, file: !157, line: 688, type: !158)
!1360 = !DILocation(line: 688, column: 28, scope: !1335)
!1361 = !DILocalVariable(name: "eol", scope: !1335, file: !157, line: 688, type: !158)
!1362 = !DILocation(line: 688, column: 34, scope: !1335)
!1363 = !DILocalVariable(name: "l", scope: !1335, file: !157, line: 689, type: !227)
!1364 = !DILocation(line: 689, column: 6, scope: !1335)
!1365 = !DILocation(line: 691, column: 12, scope: !1335)
!1366 = !DILocation(line: 691, column: 6, scope: !1335)
!1367 = !DILocation(line: 691, column: 4, scope: !1335)
!1368 = !DILocation(line: 692, column: 7, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1335, file: !157, line: 692, column: 6)
!1370 = !DILocation(line: 692, column: 6, scope: !1335)
!1371 = !DILocation(line: 693, column: 8, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1373, file: !157, line: 693, column: 6)
!1373 = distinct !DILexicalBlock(scope: !1369, file: !157, line: 692, column: 10)
!1374 = !DILocation(line: 693, column: 7, scope: !1372)
!1375 = !DILocation(line: 693, column: 12, scope: !1372)
!1376 = !DILocation(line: 693, column: 6, scope: !1373)
!1377 = !DILocation(line: 694, column: 4, scope: !1372)
!1378 = !DILocation(line: 695, column: 10, scope: !1373)
!1379 = !DILocation(line: 695, column: 57, scope: !1373)
!1380 = !DILocation(line: 695, column: 3, scope: !1381)
!1381 = !DILexicalBlockFile(scope: !1373, file: !157, discriminator: 1)
!1382 = !DILocation(line: 695, column: 3, scope: !1373)
!1383 = !DILocation(line: 697, column: 38, scope: !1335)
!1384 = !DILocation(line: 697, column: 2, scope: !1335)
!1385 = !DILocation(line: 699, column: 2, scope: !1335)
!1386 = !DILocation(line: 699, column: 28, scope: !1387)
!1387 = !DILexicalBlockFile(scope: !1335, file: !157, discriminator: 1)
!1388 = !DILocation(line: 699, column: 54, scope: !1387)
!1389 = !DILocation(line: 699, column: 57, scope: !1387)
!1390 = !DILocation(line: 699, column: 14, scope: !1387)
!1391 = !DILocation(line: 699, column: 12, scope: !1387)
!1392 = !DILocation(line: 699, column: 64, scope: !1387)
!1393 = !DILocation(line: 699, column: 2, scope: !1387)
!1394 = !DILocation(line: 700, column: 14, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1396, file: !157, line: 700, column: 3)
!1396 = distinct !DILexicalBlock(scope: !1335, file: !157, line: 699, column: 70)
!1397 = !DILocation(line: 700, column: 12, scope: !1395)
!1398 = !DILocation(line: 700, column: 8, scope: !1395)
!1399 = !DILocation(line: 700, column: 34, scope: !1400)
!1400 = !DILexicalBlockFile(scope: !1401, file: !157, discriminator: 1)
!1401 = distinct !DILexicalBlock(scope: !1395, file: !157, line: 700, column: 3)
!1402 = !DILocation(line: 700, column: 33, scope: !1400)
!1403 = !DILocation(line: 700, column: 23, scope: !1400)
!1404 = !DILocation(line: 700, column: 3, scope: !1400)
!1405 = !DILocation(line: 700, column: 3, scope: !1406)
!1406 = !DILexicalBlockFile(scope: !1395, file: !157, discriminator: 2)
!1407 = !DILocation(line: 700, column: 43, scope: !1408)
!1408 = !DILexicalBlockFile(scope: !1401, file: !157, discriminator: 3)
!1409 = !DILocation(line: 700, column: 3, scope: !1408)
!1410 = distinct !{!1410, !1411}
!1411 = !DILocation(line: 700, column: 3, scope: !1396)
!1412 = !DILocation(line: 701, column: 8, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1396, file: !157, line: 701, column: 7)
!1414 = !DILocation(line: 701, column: 7, scope: !1413)
!1415 = !DILocation(line: 701, column: 12, scope: !1413)
!1416 = !DILocation(line: 701, column: 7, scope: !1396)
!1417 = !DILocation(line: 702, column: 4, scope: !1413)
!1418 = distinct !{!1418, !1385}
!1419 = !DILocation(line: 703, column: 14, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1396, file: !157, line: 703, column: 3)
!1421 = !DILocation(line: 703, column: 24, scope: !1420)
!1422 = !DILocation(line: 703, column: 22, scope: !1420)
!1423 = !DILocation(line: 703, column: 12, scope: !1420)
!1424 = !DILocation(line: 703, column: 8, scope: !1420)
!1425 = !DILocation(line: 703, column: 27, scope: !1426)
!1426 = !DILexicalBlockFile(scope: !1427, file: !157, discriminator: 1)
!1427 = distinct !DILexicalBlock(scope: !1420, file: !157, line: 703, column: 3)
!1428 = !DILocation(line: 703, column: 33, scope: !1426)
!1429 = !DILocation(line: 703, column: 31, scope: !1426)
!1430 = !DILocation(line: 703, column: 37, scope: !1426)
!1431 = !DILocation(line: 703, column: 50, scope: !1432)
!1432 = !DILexicalBlockFile(scope: !1427, file: !157, discriminator: 2)
!1433 = !DILocation(line: 703, column: 40, scope: !1432)
!1434 = !DILocation(line: 703, column: 3, scope: !1435)
!1435 = !DILexicalBlockFile(scope: !1420, file: !157, discriminator: 3)
!1436 = !DILocation(line: 703, column: 3, scope: !1437)
!1437 = !DILexicalBlockFile(scope: !1420, file: !157, discriminator: 4)
!1438 = !DILocation(line: 703, column: 63, scope: !1439)
!1439 = !DILexicalBlockFile(scope: !1427, file: !157, discriminator: 5)
!1440 = !DILocation(line: 703, column: 3, scope: !1439)
!1441 = distinct !{!1441, !1442}
!1442 = !DILocation(line: 703, column: 3, scope: !1396)
!1443 = !DILocation(line: 704, column: 7, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1396, file: !157, line: 704, column: 7)
!1445 = !DILocation(line: 704, column: 14, scope: !1444)
!1446 = !DILocation(line: 704, column: 11, scope: !1444)
!1447 = !DILocation(line: 704, column: 7, scope: !1396)
!1448 = !DILocation(line: 705, column: 4, scope: !1444)
!1449 = !DILocation(line: 706, column: 4, scope: !1396)
!1450 = !DILocation(line: 706, column: 8, scope: !1396)
!1451 = !DILocation(line: 708, column: 14, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1396, file: !157, line: 708, column: 3)
!1453 = !DILocation(line: 708, column: 12, scope: !1452)
!1454 = !DILocation(line: 708, column: 8, scope: !1452)
!1455 = !DILocation(line: 708, column: 20, scope: !1456)
!1456 = !DILexicalBlockFile(scope: !1457, file: !157, discriminator: 1)
!1457 = distinct !DILexicalBlock(scope: !1452, file: !157, line: 708, column: 3)
!1458 = !DILocation(line: 708, column: 19, scope: !1456)
!1459 = !DILocation(line: 708, column: 24, scope: !1456)
!1460 = !DILocation(line: 708, column: 39, scope: !1461)
!1461 = !DILexicalBlockFile(scope: !1457, file: !157, discriminator: 2)
!1462 = !DILocation(line: 708, column: 38, scope: !1461)
!1463 = !DILocation(line: 708, column: 28, scope: !1461)
!1464 = !DILocation(line: 708, column: 27, scope: !1461)
!1465 = !DILocation(line: 708, column: 3, scope: !1466)
!1466 = !DILexicalBlockFile(scope: !1452, file: !157, discriminator: 3)
!1467 = !DILocation(line: 708, column: 3, scope: !1468)
!1468 = !DILexicalBlockFile(scope: !1452, file: !157, discriminator: 4)
!1469 = !DILocation(line: 708, column: 48, scope: !1470)
!1470 = !DILexicalBlockFile(scope: !1457, file: !157, discriminator: 5)
!1471 = !DILocation(line: 708, column: 3, scope: !1470)
!1472 = distinct !{!1472, !1473}
!1473 = !DILocation(line: 708, column: 3, scope: !1396)
!1474 = !DILocation(line: 709, column: 9, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1396, file: !157, line: 709, column: 7)
!1476 = !DILocation(line: 709, column: 8, scope: !1475)
!1477 = !DILocation(line: 709, column: 7, scope: !1396)
!1478 = !DILocation(line: 710, column: 10, scope: !1475)
!1479 = !DILocation(line: 710, column: 4, scope: !1480)
!1480 = !DILexicalBlockFile(scope: !1475, file: !157, discriminator: 1)
!1481 = !DILocation(line: 710, column: 4, scope: !1475)
!1482 = !DILocation(line: 711, column: 7, scope: !1396)
!1483 = !DILocation(line: 711, column: 10, scope: !1396)
!1484 = !DILocation(line: 712, column: 3, scope: !1396)
!1485 = !DILocation(line: 712, column: 21, scope: !1486)
!1486 = !DILexicalBlockFile(scope: !1396, file: !157, discriminator: 1)
!1487 = !DILocation(line: 712, column: 20, scope: !1486)
!1488 = !DILocation(line: 712, column: 10, scope: !1486)
!1489 = !DILocation(line: 712, column: 3, scope: !1486)
!1490 = !DILocation(line: 713, column: 7, scope: !1396)
!1491 = !DILocation(line: 712, column: 3, scope: !1492)
!1492 = !DILexicalBlockFile(scope: !1396, file: !157, discriminator: 2)
!1493 = distinct !{!1493, !1484}
!1494 = !DILocation(line: 714, column: 14, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1396, file: !157, line: 714, column: 7)
!1496 = !DILocation(line: 714, column: 7, scope: !1495)
!1497 = !DILocation(line: 714, column: 31, scope: !1495)
!1498 = !DILocation(line: 714, column: 36, scope: !1495)
!1499 = !DILocation(line: 715, column: 14, scope: !1495)
!1500 = !DILocation(line: 715, column: 7, scope: !1495)
!1501 = !DILocation(line: 715, column: 37, scope: !1495)
!1502 = !DILocation(line: 714, column: 7, scope: !1486)
!1503 = !DILocation(line: 716, column: 18, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1495, file: !157, line: 715, column: 43)
!1505 = !DILocation(line: 716, column: 24, scope: !1504)
!1506 = !DILocation(line: 716, column: 29, scope: !1504)
!1507 = !DILocation(line: 716, column: 39, scope: !1504)
!1508 = !DILocation(line: 716, column: 44, scope: !1504)
!1509 = !DILocation(line: 716, column: 49, scope: !1504)
!1510 = !DILocation(line: 716, column: 4, scope: !1504)
!1511 = !DILocation(line: 717, column: 3, scope: !1504)
!1512 = !DILocation(line: 717, column: 21, scope: !1513)
!1513 = !DILexicalBlockFile(scope: !1514, file: !157, discriminator: 1)
!1514 = distinct !DILexicalBlock(scope: !1495, file: !157, line: 717, column: 14)
!1515 = !DILocation(line: 717, column: 14, scope: !1513)
!1516 = !DILocation(line: 717, column: 46, scope: !1513)
!1517 = !DILocation(line: 718, column: 18, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1514, file: !157, line: 717, column: 52)
!1519 = !DILocation(line: 718, column: 24, scope: !1518)
!1520 = !DILocation(line: 718, column: 29, scope: !1518)
!1521 = !DILocation(line: 718, column: 39, scope: !1518)
!1522 = !DILocation(line: 718, column: 44, scope: !1518)
!1523 = !DILocation(line: 718, column: 49, scope: !1518)
!1524 = !DILocation(line: 718, column: 4, scope: !1518)
!1525 = !DILocation(line: 719, column: 3, scope: !1518)
!1526 = !DILocation(line: 719, column: 21, scope: !1527)
!1527 = !DILexicalBlockFile(scope: !1528, file: !157, discriminator: 1)
!1528 = distinct !DILexicalBlock(scope: !1514, file: !157, line: 719, column: 14)
!1529 = !DILocation(line: 719, column: 14, scope: !1527)
!1530 = !DILocation(line: 719, column: 38, scope: !1527)
!1531 = !DILocation(line: 719, column: 43, scope: !1527)
!1532 = !DILocation(line: 720, column: 21, scope: !1528)
!1533 = !DILocation(line: 720, column: 14, scope: !1528)
!1534 = !DILocation(line: 720, column: 44, scope: !1528)
!1535 = !DILocation(line: 719, column: 14, scope: !1536)
!1536 = !DILexicalBlockFile(scope: !1514, file: !157, discriminator: 2)
!1537 = !DILocation(line: 721, column: 18, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1528, file: !157, line: 720, column: 50)
!1539 = !DILocation(line: 721, column: 24, scope: !1538)
!1540 = !DILocation(line: 721, column: 29, scope: !1538)
!1541 = !DILocation(line: 721, column: 39, scope: !1538)
!1542 = !DILocation(line: 721, column: 44, scope: !1538)
!1543 = !DILocation(line: 721, column: 49, scope: !1538)
!1544 = !DILocation(line: 721, column: 4, scope: !1538)
!1545 = !DILocation(line: 722, column: 3, scope: !1538)
!1546 = !DILocation(line: 722, column: 21, scope: !1547)
!1547 = !DILexicalBlockFile(scope: !1548, file: !157, discriminator: 1)
!1548 = distinct !DILexicalBlock(scope: !1528, file: !157, line: 722, column: 14)
!1549 = !DILocation(line: 722, column: 14, scope: !1547)
!1550 = !DILocation(line: 722, column: 46, scope: !1547)
!1551 = !DILocation(line: 723, column: 18, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1548, file: !157, line: 722, column: 52)
!1553 = !DILocation(line: 723, column: 24, scope: !1552)
!1554 = !DILocation(line: 723, column: 29, scope: !1552)
!1555 = !DILocation(line: 723, column: 39, scope: !1552)
!1556 = !DILocation(line: 723, column: 44, scope: !1552)
!1557 = !DILocation(line: 723, column: 49, scope: !1552)
!1558 = !DILocation(line: 723, column: 4, scope: !1552)
!1559 = !DILocation(line: 724, column: 3, scope: !1552)
!1560 = !DILocation(line: 725, column: 10, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1548, file: !157, line: 724, column: 10)
!1562 = !DILocation(line: 726, column: 11, scope: !1561)
!1563 = !DILocation(line: 725, column: 4, scope: !1564)
!1564 = !DILexicalBlockFile(scope: !1561, file: !157, discriminator: 1)
!1565 = !DILocation(line: 725, column: 4, scope: !1561)
!1566 = !DILocation(line: 699, column: 2, scope: !1567)
!1567 = !DILexicalBlockFile(scope: !1335, file: !157, discriminator: 2)
!1568 = !DILocation(line: 729, column: 2, scope: !1335)
!1569 = !DILocation(line: 730, column: 1, scope: !1335)
!1570 = !DILocation(line: 730, column: 1, scope: !1387)
!1571 = distinct !DISubprogram(name: "c_iswhite", scope: !139, file: !139, line: 60, type: !1572, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !492)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{!223, !227}
!1574 = !DILocalVariable(name: "c", arg: 1, scope: !1571, file: !139, line: 60, type: !227)
!1575 = !DILocation(line: 60, column: 15, scope: !1571)
!1576 = !DILocation(line: 62, column: 18, scope: !1571)
!1577 = !DILocation(line: 62, column: 9, scope: !1571)
!1578 = !DILocation(line: 62, column: 2, scope: !1571)
!1579 = distinct !DISubprogram(name: "parse_ci_call", scope: !157, file: !157, line: 667, type: !1580, isLocal: true, isDefinition: true, scopeLine: 670, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !492)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{null, !183, !183, !1338, !183, !174, !348, !73}
!1582 = !DILocalVariable(name: "file", arg: 1, scope: !1579, file: !157, line: 667, type: !183)
!1583 = !DILocation(line: 667, column: 27, scope: !1579)
!1584 = !DILocalVariable(name: "cmd", arg: 2, scope: !1579, file: !157, line: 667, type: !183)
!1585 = !DILocation(line: 667, column: 45, scope: !1579)
!1586 = !DILocalVariable(name: "cb", arg: 3, scope: !1579, file: !157, line: 667, type: !1338)
!1587 = !DILocation(line: 667, column: 67, scope: !1579)
!1588 = !DILocalVariable(name: "trig", arg: 4, scope: !1579, file: !157, line: 668, type: !183)
!1589 = !DILocation(line: 668, column: 27, scope: !1579)
!1590 = !DILocalVariable(name: "pkg", arg: 5, scope: !1579, file: !157, line: 668, type: !174)
!1591 = !DILocation(line: 668, column: 49, scope: !1579)
!1592 = !DILocalVariable(name: "pkgbin", arg: 6, scope: !1579, file: !157, line: 668, type: !348)
!1593 = !DILocation(line: 668, column: 69, scope: !1579)
!1594 = !DILocalVariable(name: "opts", arg: 7, scope: !1579, file: !157, line: 669, type: !73)
!1595 = !DILocation(line: 669, column: 33, scope: !1579)
!1596 = !DILocalVariable(name: "emsg", scope: !1579, file: !157, line: 671, type: !183)
!1597 = !DILocation(line: 671, column: 14, scope: !1579)
!1598 = !DILocation(line: 673, column: 30, scope: !1579)
!1599 = !DILocation(line: 673, column: 9, scope: !1579)
!1600 = !DILocation(line: 673, column: 7, scope: !1579)
!1601 = !DILocation(line: 674, column: 6, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1579, file: !157, line: 674, column: 6)
!1603 = !DILocation(line: 674, column: 6, scope: !1579)
!1604 = !DILocation(line: 675, column: 9, scope: !1602)
!1605 = !DILocation(line: 677, column: 10, scope: !1602)
!1606 = !DILocation(line: 677, column: 16, scope: !1602)
!1607 = !DILocation(line: 677, column: 22, scope: !1602)
!1608 = !DILocation(line: 675, column: 3, scope: !1609)
!1609 = !DILexicalBlockFile(scope: !1602, file: !157, discriminator: 1)
!1610 = !DILocation(line: 675, column: 3, scope: !1602)
!1611 = !DILocation(line: 678, column: 6, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1579, file: !157, line: 678, column: 6)
!1613 = !DILocation(line: 678, column: 6, scope: !1579)
!1614 = !DILocation(line: 679, column: 3, scope: !1612)
!1615 = !DILocation(line: 679, column: 6, scope: !1612)
!1616 = !DILocation(line: 679, column: 12, scope: !1612)
!1617 = !DILocation(line: 679, column: 17, scope: !1612)
!1618 = !DILocation(line: 679, column: 25, scope: !1612)
!1619 = !DILocation(line: 680, column: 1, scope: !1579)
!1620 = distinct !DISubprogram(name: "trig_incorporate", scope: !157, file: !157, line: 766, type: !473, isLocal: false, isDefinition: true, scopeLine: 767, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !492)
!1621 = !DILocalVariable(name: "cstatus", arg: 1, scope: !1620, file: !157, line: 766, type: !97)
!1622 = !DILocation(line: 766, column: 36, scope: !1620)
!1623 = !DILocalVariable(name: "ur", scope: !1620, file: !157, line: 768, type: !119)
!1624 = !DILocation(line: 768, column: 29, scope: !1620)
!1625 = !DILocalVariable(name: "tduf", scope: !1620, file: !157, line: 769, type: !127)
!1626 = !DILocation(line: 769, column: 28, scope: !1620)
!1627 = !DILocation(line: 771, column: 7, scope: !1620)
!1628 = !DILocation(line: 771, column: 2, scope: !1620)
!1629 = !DILocation(line: 772, column: 16, scope: !1620)
!1630 = !DILocation(line: 772, column: 14, scope: !1620)
!1631 = !DILocation(line: 774, column: 7, scope: !1620)
!1632 = !DILocation(line: 774, column: 2, scope: !1620)
!1633 = !DILocation(line: 775, column: 39, scope: !1620)
!1634 = !DILocation(line: 775, column: 21, scope: !1620)
!1635 = !DILocation(line: 775, column: 19, scope: !1620)
!1636 = !DILocation(line: 777, column: 2, scope: !1620)
!1637 = !DILocation(line: 778, column: 2, scope: !1620)
!1638 = !DILocation(line: 780, column: 7, scope: !1620)
!1639 = !DILocation(line: 781, column: 6, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1620, file: !157, line: 781, column: 6)
!1641 = !DILocation(line: 781, column: 14, scope: !1640)
!1642 = !DILocation(line: 781, column: 6, scope: !1620)
!1643 = !DILocation(line: 782, column: 8, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1640, file: !157, line: 781, column: 31)
!1645 = !DILocation(line: 783, column: 13, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1644, file: !157, line: 783, column: 7)
!1647 = !DILocation(line: 783, column: 7, scope: !1646)
!1648 = !DILocation(line: 783, column: 7, scope: !1644)
!1649 = !DILocation(line: 784, column: 9, scope: !1646)
!1650 = !DILocation(line: 784, column: 4, scope: !1646)
!1651 = !DILocation(line: 785, column: 2, scope: !1644)
!1652 = !DILocation(line: 787, column: 28, scope: !1620)
!1653 = !DILocation(line: 787, column: 7, scope: !1620)
!1654 = !DILocation(line: 787, column: 5, scope: !1620)
!1655 = !DILocation(line: 788, column: 6, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1620, file: !157, line: 788, column: 6)
!1657 = !DILocation(line: 788, column: 9, scope: !1656)
!1658 = !DILocation(line: 788, column: 30, scope: !1656)
!1659 = !DILocation(line: 788, column: 33, scope: !1660)
!1660 = !DILexicalBlockFile(scope: !1656, file: !157, discriminator: 1)
!1661 = !DILocation(line: 788, column: 41, scope: !1660)
!1662 = !DILocation(line: 788, column: 6, scope: !1660)
!1663 = !DILocation(line: 789, column: 13, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1665, file: !157, line: 789, column: 7)
!1665 = distinct !DILexicalBlock(scope: !1656, file: !157, line: 788, column: 58)
!1666 = !DILocation(line: 789, column: 7, scope: !1664)
!1667 = !DILocation(line: 789, column: 7, scope: !1665)
!1668 = !DILocation(line: 790, column: 9, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1670, file: !157, line: 790, column: 7)
!1670 = distinct !DILexicalBlock(scope: !1664, file: !157, line: 789, column: 33)
!1671 = !DILocation(line: 790, column: 8, scope: !1669)
!1672 = !DILocation(line: 790, column: 13, scope: !1669)
!1673 = !DILocation(line: 790, column: 7, scope: !1670)
!1674 = !DILocation(line: 791, column: 12, scope: !1669)
!1675 = !DILocation(line: 792, column: 38, scope: !1669)
!1676 = !DILocation(line: 791, column: 5, scope: !1677)
!1677 = !DILexicalBlockFile(scope: !1669, file: !157, discriminator: 1)
!1678 = !DILocation(line: 791, column: 5, scope: !1669)
!1679 = !DILocation(line: 793, column: 3, scope: !1670)
!1680 = !DILocation(line: 793, column: 20, scope: !1681)
!1681 = !DILexicalBlockFile(scope: !1682, file: !157, discriminator: 1)
!1682 = distinct !DILexicalBlock(scope: !1664, file: !157, line: 793, column: 14)
!1683 = !DILocation(line: 793, column: 14, scope: !1681)
!1684 = !DILocation(line: 794, column: 11, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1682, file: !157, line: 793, column: 40)
!1686 = !DILocation(line: 795, column: 37, scope: !1685)
!1687 = !DILocation(line: 794, column: 4, scope: !1688)
!1688 = !DILexicalBlockFile(scope: !1685, file: !157, discriminator: 1)
!1689 = !DILocation(line: 794, column: 4, scope: !1685)
!1690 = !DILocation(line: 797, column: 29, scope: !1665)
!1691 = !DILocation(line: 797, column: 8, scope: !1665)
!1692 = !DILocation(line: 797, column: 6, scope: !1665)
!1693 = !DILocation(line: 798, column: 2, scope: !1665)
!1694 = !DILocation(line: 799, column: 10, scope: !1620)
!1695 = !DILocation(line: 799, column: 2, scope: !1620)
!1696 = !DILocation(line: 801, column: 3, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1620, file: !157, line: 799, column: 14)
!1698 = !DILocation(line: 804, column: 14, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1697, file: !157, line: 804, column: 7)
!1700 = !DILocation(line: 804, column: 8, scope: !1699)
!1701 = !DILocation(line: 804, column: 7, scope: !1697)
!1702 = !DILocation(line: 805, column: 4, scope: !1699)
!1703 = !DILocation(line: 804, column: 14, scope: !1704)
!1704 = !DILexicalBlockFile(scope: !1699, file: !157, discriminator: 1)
!1705 = !DILocation(line: 808, column: 9, scope: !1697)
!1706 = !DILocation(line: 808, column: 31, scope: !1697)
!1707 = !DILocation(line: 808, column: 3, scope: !1697)
!1708 = !DILocation(line: 809, column: 3, scope: !1697)
!1709 = !DILocation(line: 812, column: 3, scope: !1697)
!1710 = !DILocation(line: 813, column: 3, scope: !1697)
!1711 = !DILocation(line: 815, column: 94, scope: !1697)
!1712 = !DILocation(line: 815, column: 3, scope: !1697)
!1713 = !DILocation(line: 819, column: 2, scope: !1620)
!1714 = !DILocation(line: 820, column: 1, scope: !1620)
!1715 = !DILocation(line: 820, column: 1, scope: !1716)
!1716 = !DILexicalBlockFile(scope: !1620, file: !157, discriminator: 1)
!1717 = distinct !DISubprogram(name: "trig_get_filename", scope: !157, file: !157, line: 49, type: !1718, isLocal: true, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !492)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{!158, !183, !183}
!1720 = !DILocalVariable(name: "dir", arg: 1, scope: !1717, file: !157, line: 49, type: !183)
!1721 = !DILocation(line: 49, column: 31, scope: !1717)
!1722 = !DILocalVariable(name: "filename", arg: 2, scope: !1717, file: !157, line: 49, type: !183)
!1723 = !DILocation(line: 49, column: 48, scope: !1717)
!1724 = !DILocation(line: 51, column: 26, scope: !1717)
!1725 = !DILocation(line: 51, column: 31, scope: !1717)
!1726 = !DILocation(line: 51, column: 9, scope: !1717)
!1727 = !DILocation(line: 51, column: 2, scope: !1717)
!1728 = distinct !DISubprogram(name: "trig_override_hooks", scope: !157, file: !157, line: 835, type: !1729, isLocal: false, isDefinition: true, scopeLine: 836, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !492)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{null, !1731}
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64, align: 64)
!1732 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !468)
!1733 = !DILocalVariable(name: "hooks", arg: 1, scope: !1728, file: !157, line: 835, type: !1731)
!1734 = !DILocation(line: 835, column: 46, scope: !1728)
!1735 = !DILocation(line: 837, column: 11, scope: !1728)
!1736 = !DILocation(line: 837, column: 10, scope: !1728)
!1737 = !DILocation(line: 838, column: 1, scope: !1728)
!1738 = distinct !DISubprogram(name: "trig_classify_byname", scope: !157, file: !157, line: 167, type: !1739, isLocal: true, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !492)
!1739 = !DISubroutineType(types: !1740)
!1740 = !{!162, !183}
!1741 = !DILocalVariable(name: "name", arg: 1, scope: !1738, file: !157, line: 167, type: !183)
!1742 = !DILocation(line: 167, column: 34, scope: !1738)
!1743 = !DILocation(line: 169, column: 6, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1738, file: !157, line: 169, column: 6)
!1745 = !DILocation(line: 169, column: 14, scope: !1744)
!1746 = !DILocation(line: 169, column: 6, scope: !1738)
!1747 = !DILocalVariable(name: "slash", scope: !1748, file: !157, line: 170, type: !183)
!1748 = distinct !DILexicalBlock(scope: !1744, file: !157, line: 169, column: 22)
!1749 = !DILocation(line: 170, column: 15, scope: !1748)
!1750 = !DILocation(line: 172, column: 11, scope: !1748)
!1751 = !DILocation(line: 172, column: 9, scope: !1748)
!1752 = !DILocation(line: 173, column: 3, scope: !1748)
!1753 = !DILocation(line: 173, column: 10, scope: !1754)
!1754 = !DILexicalBlockFile(scope: !1748, file: !157, discriminator: 1)
!1755 = !DILocation(line: 173, column: 3, scope: !1754)
!1756 = !DILocation(line: 174, column: 8, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1758, file: !157, line: 174, column: 8)
!1758 = distinct !DILexicalBlock(scope: !1748, file: !157, line: 173, column: 17)
!1759 = !DILocation(line: 174, column: 17, scope: !1757)
!1760 = !DILocation(line: 174, column: 25, scope: !1757)
!1761 = !DILocation(line: 174, column: 28, scope: !1762)
!1762 = !DILexicalBlockFile(scope: !1757, file: !157, discriminator: 1)
!1763 = !DILocation(line: 174, column: 37, scope: !1762)
!1764 = !DILocation(line: 174, column: 8, scope: !1762)
!1765 = !DILocation(line: 175, column: 5, scope: !1757)
!1766 = !DILocation(line: 177, column: 19, scope: !1758)
!1767 = !DILocation(line: 177, column: 25, scope: !1758)
!1768 = !DILocation(line: 177, column: 12, scope: !1758)
!1769 = !DILocation(line: 177, column: 10, scope: !1758)
!1770 = !DILocation(line: 173, column: 3, scope: !1771)
!1771 = !DILexicalBlockFile(scope: !1748, file: !157, discriminator: 2)
!1772 = distinct !{!1772, !1752}
!1773 = !DILocation(line: 179, column: 3, scope: !1748)
!1774 = !DILocation(line: 182, column: 27, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1738, file: !157, line: 182, column: 6)
!1776 = !DILocation(line: 182, column: 7, scope: !1775)
!1777 = !DILocation(line: 182, column: 33, scope: !1775)
!1778 = !DILocation(line: 182, column: 44, scope: !1779)
!1779 = !DILexicalBlockFile(scope: !1775, file: !157, discriminator: 1)
!1780 = !DILocation(line: 182, column: 37, scope: !1779)
!1781 = !DILocation(line: 182, column: 6, scope: !1779)
!1782 = !DILocation(line: 183, column: 3, scope: !1775)
!1783 = !DILocation(line: 182, column: 53, scope: !1784)
!1784 = !DILexicalBlockFile(scope: !1775, file: !157, discriminator: 2)
!1785 = !DILocation(line: 186, column: 2, scope: !1738)
!1786 = !DILocation(line: 187, column: 1, scope: !1738)
!1787 = distinct !DISubprogram(name: "trk_file_activate_start", scope: !157, file: !157, line: 602, type: !168, isLocal: true, isDefinition: true, scopeLine: 603, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !492)
!1788 = !DILocation(line: 604, column: 18, scope: !1787)
!1789 = !DILocation(line: 604, column: 16, scope: !1787)
!1790 = !DILocation(line: 605, column: 1, scope: !1787)
!1791 = distinct !DISubprogram(name: "trk_file_activate_awaiter", scope: !157, file: !157, line: 608, type: !172, isLocal: true, isDefinition: true, scopeLine: 609, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !492)
!1792 = !DILocalVariable(name: "aw", arg: 1, scope: !1791, file: !157, line: 608, type: !174)
!1793 = !DILocation(line: 608, column: 43, scope: !1791)
!1794 = !DILocation(line: 610, column: 28, scope: !1791)
!1795 = !DILocation(line: 610, column: 43, scope: !1791)
!1796 = !DILocation(line: 610, column: 2, scope: !1791)
!1797 = !DILocation(line: 611, column: 1, scope: !1791)
!1798 = distinct !DISubprogram(name: "trk_file_activate_done", scope: !157, file: !157, line: 614, type: !168, isLocal: true, isDefinition: true, scopeLine: 615, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !492)
!1799 = !DILocation(line: 616, column: 1, scope: !1798)
!1800 = distinct !DISubprogram(name: "trig_path_activate_byname", scope: !157, file: !157, line: 589, type: !1066, isLocal: true, isDefinition: true, scopeLine: 590, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !492)
!1801 = !DILocalVariable(name: "trig", arg: 1, scope: !1800, file: !157, line: 589, type: !183)
!1802 = !DILocation(line: 589, column: 39, scope: !1800)
!1803 = !DILocalVariable(name: "aw", arg: 2, scope: !1800, file: !157, line: 589, type: !174)
!1804 = !DILocation(line: 589, column: 61, scope: !1800)
!1805 = !DILocalVariable(name: "fnn", scope: !1800, file: !157, line: 591, type: !308)
!1806 = !DILocation(line: 591, column: 24, scope: !1800)
!1807 = !DILocation(line: 591, column: 36, scope: !1800)
!1808 = !DILocation(line: 591, column: 50, scope: !1800)
!1809 = !DILocation(line: 591, column: 30, scope: !1800)
!1810 = !DILocation(line: 593, column: 6, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1800, file: !157, line: 593, column: 6)
!1812 = !DILocation(line: 593, column: 6, scope: !1800)
!1813 = !DILocation(line: 594, column: 22, scope: !1811)
!1814 = !DILocation(line: 594, column: 27, scope: !1811)
!1815 = !DILocation(line: 594, column: 3, scope: !1811)
!1816 = !DILocation(line: 596, column: 29, scope: !1800)
!1817 = !DILocation(line: 596, column: 35, scope: !1800)
!1818 = !DILocation(line: 596, column: 2, scope: !1800)
!1819 = !DILocation(line: 597, column: 1, scope: !1800)
!1820 = distinct !DISubprogram(name: "trk_explicit_activate_start", scope: !157, file: !157, line: 279, type: !168, isLocal: true, isDefinition: true, scopeLine: 280, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !492)
!1821 = !DILocation(line: 281, column: 21, scope: !1820)
!1822 = !DILocation(line: 281, column: 2, scope: !1820)
!1823 = !DILocation(line: 282, column: 22, scope: !1820)
!1824 = !DILocation(line: 282, column: 20, scope: !1820)
!1825 = !DILocation(line: 283, column: 1, scope: !1820)
!1826 = distinct !DISubprogram(name: "trk_explicit_activate_awaiter", scope: !157, file: !157, line: 286, type: !172, isLocal: true, isDefinition: true, scopeLine: 287, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !492)
!1827 = !DILocalVariable(name: "aw", arg: 1, scope: !1826, file: !157, line: 286, type: !174)
!1828 = !DILocation(line: 286, column: 47, scope: !1826)
!1829 = !DILocalVariable(name: "buf", scope: !1826, file: !157, line: 288, type: !723)
!1830 = !DILocation(line: 288, column: 7, scope: !1826)
!1831 = !DILocalVariable(name: "pend", scope: !1826, file: !157, line: 289, type: !174)
!1832 = !DILocation(line: 289, column: 18, scope: !1826)
!1833 = !DILocation(line: 291, column: 7, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1826, file: !157, line: 291, column: 6)
!1835 = !DILocation(line: 291, column: 6, scope: !1826)
!1836 = !DILocation(line: 292, column: 3, scope: !1834)
!1837 = !DILocation(line: 294, column: 12, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1826, file: !157, line: 294, column: 6)
!1839 = !DILocation(line: 294, column: 6, scope: !1838)
!1840 = !DILocation(line: 294, column: 6, scope: !1826)
!1841 = !DILocation(line: 295, column: 10, scope: !1838)
!1842 = !DILocation(line: 296, column: 27, scope: !1838)
!1843 = !DILocation(line: 295, column: 3, scope: !1844)
!1844 = !DILexicalBlockFile(scope: !1838, file: !157, discriminator: 1)
!1845 = !DILocation(line: 295, column: 3, scope: !1838)
!1846 = !DILocation(line: 298, column: 2, scope: !1826)
!1847 = !DILocation(line: 298, column: 28, scope: !1848)
!1848 = !DILexicalBlockFile(scope: !1826, file: !157, discriminator: 1)
!1849 = !DILocation(line: 298, column: 9, scope: !1848)
!1850 = !DILocation(line: 298, column: 46, scope: !1848)
!1851 = !DILocation(line: 298, column: 2, scope: !1848)
!1852 = !DILocalVariable(name: "err", scope: !1853, file: !157, line: 299, type: !768)
!1853 = distinct !DILexicalBlock(scope: !1826, file: !157, line: 298, column: 52)
!1854 = !DILocation(line: 299, column: 21, scope: !1853)
!1855 = !DILocalVariable(name: "slash", scope: !1853, file: !157, line: 300, type: !158)
!1856 = !DILocation(line: 300, column: 9, scope: !1853)
!1857 = !DILocalVariable(name: "noawait", scope: !1853, file: !157, line: 301, type: !223)
!1858 = !DILocation(line: 301, column: 7, scope: !1853)
!1859 = !DILocation(line: 302, column: 18, scope: !1853)
!1860 = !DILocation(line: 302, column: 11, scope: !1853)
!1861 = !DILocation(line: 302, column: 9, scope: !1853)
!1862 = !DILocation(line: 303, column: 7, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1853, file: !157, line: 303, column: 7)
!1864 = !DILocation(line: 303, column: 13, scope: !1863)
!1865 = !DILocation(line: 303, column: 35, scope: !1866)
!1866 = !DILexicalBlockFile(scope: !1863, file: !157, discriminator: 1)
!1867 = !DILocation(line: 303, column: 16, scope: !1866)
!1868 = !DILocation(line: 303, column: 42, scope: !1866)
!1869 = !DILocation(line: 303, column: 7, scope: !1866)
!1870 = !DILocation(line: 304, column: 12, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1863, file: !157, line: 303, column: 48)
!1872 = !DILocation(line: 305, column: 5, scope: !1871)
!1873 = !DILocation(line: 305, column: 11, scope: !1871)
!1874 = !DILocation(line: 306, column: 3, scope: !1871)
!1875 = !DILocation(line: 307, column: 7, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1853, file: !157, line: 307, column: 7)
!1877 = !DILocation(line: 307, column: 13, scope: !1876)
!1878 = !DILocation(line: 307, column: 33, scope: !1879)
!1879 = !DILexicalBlockFile(scope: !1876, file: !157, discriminator: 1)
!1880 = !DILocation(line: 307, column: 16, scope: !1879)
!1881 = !DILocation(line: 307, column: 40, scope: !1879)
!1882 = !DILocation(line: 307, column: 7, scope: !1879)
!1883 = !DILocation(line: 308, column: 12, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1876, file: !157, line: 307, column: 46)
!1885 = !DILocation(line: 309, column: 5, scope: !1884)
!1886 = !DILocation(line: 309, column: 11, scope: !1884)
!1887 = !DILocation(line: 310, column: 3, scope: !1884)
!1888 = !DILocation(line: 312, column: 29, scope: !1853)
!1889 = !DILocation(line: 312, column: 10, scope: !1853)
!1890 = !DILocation(line: 312, column: 8, scope: !1853)
!1891 = !DILocation(line: 313, column: 7, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1853, file: !157, line: 313, column: 7)
!1893 = !DILocation(line: 313, column: 12, scope: !1892)
!1894 = !DILocation(line: 313, column: 7, scope: !1853)
!1895 = !DILocation(line: 314, column: 10, scope: !1892)
!1896 = !DILocation(line: 316, column: 27, scope: !1892)
!1897 = !DILocation(line: 316, column: 32, scope: !1892)
!1898 = !DILocation(line: 316, column: 41, scope: !1892)
!1899 = !DILocation(line: 314, column: 4, scope: !1900)
!1900 = !DILexicalBlockFile(scope: !1892, file: !157, discriminator: 1)
!1901 = !DILocation(line: 314, column: 4, scope: !1892)
!1902 = !DILocation(line: 318, column: 26, scope: !1853)
!1903 = !DILocation(line: 318, column: 32, scope: !1853)
!1904 = !DILocation(line: 318, column: 32, scope: !1905)
!1905 = !DILexicalBlockFile(scope: !1853, file: !157, discriminator: 1)
!1906 = !DILocation(line: 318, column: 48, scope: !1907)
!1907 = !DILexicalBlockFile(scope: !1853, file: !157, discriminator: 2)
!1908 = !DILocation(line: 318, column: 32, scope: !1907)
!1909 = !DILocation(line: 318, column: 32, scope: !1910)
!1910 = !DILexicalBlockFile(scope: !1853, file: !157, discriminator: 3)
!1911 = !DILocation(line: 319, column: 26, scope: !1853)
!1912 = !DILocation(line: 318, column: 3, scope: !1910)
!1913 = !DILocation(line: 298, column: 2, scope: !1914)
!1914 = !DILexicalBlockFile(scope: !1826, file: !157, discriminator: 2)
!1915 = distinct !{!1915, !1846}
!1916 = !DILocation(line: 321, column: 1, scope: !1826)
!1917 = distinct !DISubprogram(name: "trk_explicit_activate_done", scope: !157, file: !157, line: 245, type: !168, isLocal: true, isDefinition: true, scopeLine: 246, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !492)
!1918 = !DILocation(line: 247, column: 6, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1917, file: !157, line: 247, column: 6)
!1920 = !DILocation(line: 247, column: 6, scope: !1917)
!1921 = !DILocation(line: 248, column: 10, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1919, file: !157, line: 247, column: 22)
!1923 = !DILocation(line: 248, column: 3, scope: !1922)
!1924 = !DILocation(line: 249, column: 18, scope: !1922)
!1925 = !DILocation(line: 250, column: 2, scope: !1922)
!1926 = !DILocation(line: 251, column: 1, scope: !1917)
!1927 = distinct !DISubprogram(name: "trk_explicit_interest_change", scope: !157, file: !157, line: 324, type: !380, isLocal: true, isDefinition: true, scopeLine: 327, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !492)
!1928 = !DILocalVariable(name: "trig", arg: 1, scope: !1927, file: !157, line: 324, type: !183)
!1929 = !DILocation(line: 324, column: 42, scope: !1927)
!1930 = !DILocalVariable(name: "pkg", arg: 2, scope: !1927, file: !157, line: 324, type: !174)
!1931 = !DILocation(line: 324, column: 64, scope: !1927)
!1932 = !DILocalVariable(name: "pkgbin", arg: 3, scope: !1927, file: !157, line: 325, type: !348)
!1933 = !DILocation(line: 325, column: 45, scope: !1927)
!1934 = !DILocalVariable(name: "signum", arg: 4, scope: !1927, file: !157, line: 325, type: !227)
!1935 = !DILocation(line: 325, column: 57, scope: !1927)
!1936 = !DILocalVariable(name: "opts", arg: 5, scope: !1927, file: !157, line: 326, type: !73)
!1937 = !DILocation(line: 326, column: 48, scope: !1927)
!1938 = !DILocalVariable(name: "buf", scope: !1927, file: !157, line: 328, type: !723)
!1939 = !DILocation(line: 328, column: 7, scope: !1927)
!1940 = !DILocalVariable(name: "file", scope: !1927, file: !157, line: 329, type: !664)
!1941 = !DILocation(line: 329, column: 22, scope: !1927)
!1942 = !DILocalVariable(name: "empty", scope: !1927, file: !157, line: 330, type: !223)
!1943 = !DILocation(line: 330, column: 6, scope: !1927)
!1944 = !DILocation(line: 332, column: 21, scope: !1927)
!1945 = !DILocation(line: 332, column: 2, scope: !1927)
!1946 = !DILocation(line: 333, column: 41, scope: !1927)
!1947 = !DILocation(line: 333, column: 9, scope: !1927)
!1948 = !DILocation(line: 333, column: 7, scope: !1927)
!1949 = !DILocation(line: 334, column: 19, scope: !1927)
!1950 = !DILocation(line: 334, column: 2, scope: !1927)
!1951 = !DILocation(line: 336, column: 2, scope: !1927)
!1952 = !DILocation(line: 336, column: 9, scope: !1953)
!1953 = !DILexicalBlockFile(scope: !1927, file: !157, discriminator: 1)
!1954 = !DILocation(line: 336, column: 24, scope: !1953)
!1955 = !DILocation(line: 336, column: 46, scope: !1956)
!1956 = !DILexicalBlockFile(scope: !1927, file: !157, discriminator: 2)
!1957 = !DILocation(line: 336, column: 27, scope: !1956)
!1958 = !DILocation(line: 336, column: 64, scope: !1956)
!1959 = !DILocation(line: 336, column: 2, scope: !1960)
!1960 = !DILexicalBlockFile(scope: !1927, file: !157, discriminator: 3)
!1961 = !DILocalVariable(name: "pkgname", scope: !1962, file: !157, line: 337, type: !183)
!1962 = distinct !DILexicalBlock(scope: !1927, file: !157, line: 336, column: 70)
!1963 = !DILocation(line: 337, column: 15, scope: !1962)
!1964 = !DILocation(line: 337, column: 37, scope: !1962)
!1965 = !DILocation(line: 337, column: 42, scope: !1962)
!1966 = !DILocation(line: 337, column: 25, scope: !1962)
!1967 = !DILocalVariable(name: "len", scope: !1962, file: !157, line: 338, type: !397)
!1968 = !DILocation(line: 338, column: 10, scope: !1962)
!1969 = !DILocation(line: 338, column: 23, scope: !1962)
!1970 = !DILocation(line: 338, column: 16, scope: !1962)
!1971 = !DILocation(line: 340, column: 15, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1962, file: !157, line: 340, column: 7)
!1973 = !DILocation(line: 340, column: 20, scope: !1972)
!1974 = !DILocation(line: 340, column: 29, scope: !1972)
!1975 = !DILocation(line: 340, column: 7, scope: !1972)
!1976 = !DILocation(line: 340, column: 34, scope: !1972)
!1977 = !DILocation(line: 340, column: 39, scope: !1972)
!1978 = !DILocation(line: 340, column: 42, scope: !1979)
!1979 = !DILexicalBlockFile(scope: !1972, file: !157, discriminator: 1)
!1980 = !DILocation(line: 340, column: 46, scope: !1979)
!1981 = !DILocation(line: 340, column: 60, scope: !1979)
!1982 = !DILocation(line: 341, column: 12, scope: !1972)
!1983 = !DILocation(line: 341, column: 8, scope: !1972)
!1984 = !DILocation(line: 341, column: 17, scope: !1972)
!1985 = !DILocation(line: 341, column: 25, scope: !1972)
!1986 = !DILocation(line: 341, column: 32, scope: !1979)
!1987 = !DILocation(line: 341, column: 28, scope: !1979)
!1988 = !DILocation(line: 341, column: 37, scope: !1979)
!1989 = !DILocation(line: 340, column: 7, scope: !1990)
!1990 = !DILexicalBlockFile(scope: !1962, file: !157, discriminator: 2)
!1991 = !DILocation(line: 342, column: 4, scope: !1972)
!1992 = distinct !{!1992, !1951}
!1993 = !DILocation(line: 343, column: 11, scope: !1962)
!1994 = !DILocation(line: 343, column: 17, scope: !1962)
!1995 = !DILocation(line: 343, column: 29, scope: !1962)
!1996 = !DILocation(line: 343, column: 3, scope: !1962)
!1997 = !DILocation(line: 344, column: 9, scope: !1962)
!1998 = !DILocation(line: 336, column: 2, scope: !1999)
!1999 = !DILexicalBlockFile(scope: !1927, file: !157, discriminator: 4)
!2000 = !DILocation(line: 346, column: 6, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1927, file: !157, line: 346, column: 6)
!2002 = !DILocation(line: 346, column: 13, scope: !2001)
!2003 = !DILocation(line: 346, column: 6, scope: !1927)
!2004 = !DILocation(line: 347, column: 11, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !2001, file: !157, line: 346, column: 18)
!2006 = !DILocation(line: 347, column: 17, scope: !2005)
!2007 = !DILocation(line: 348, column: 23, scope: !2005)
!2008 = !DILocation(line: 348, column: 28, scope: !2005)
!2009 = !DILocation(line: 348, column: 11, scope: !2005)
!2010 = !DILocation(line: 349, column: 12, scope: !2005)
!2011 = !DILocation(line: 349, column: 17, scope: !2005)
!2012 = !DILocation(line: 349, column: 11, scope: !2005)
!2013 = !DILocation(line: 347, column: 3, scope: !2005)
!2014 = !DILocation(line: 350, column: 9, scope: !2005)
!2015 = !DILocation(line: 351, column: 2, scope: !2005)
!2016 = !DILocation(line: 353, column: 7, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !1927, file: !157, line: 353, column: 6)
!2018 = !DILocation(line: 353, column: 6, scope: !1927)
!2019 = !DILocation(line: 354, column: 20, scope: !2017)
!2020 = !DILocation(line: 354, column: 3, scope: !2017)
!2021 = !DILocation(line: 356, column: 20, scope: !1927)
!2022 = !DILocation(line: 356, column: 2, scope: !1927)
!2023 = !DILocation(line: 358, column: 6, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !1927, file: !157, line: 358, column: 6)
!2025 = !DILocation(line: 358, column: 6, scope: !1927)
!2026 = !DILocation(line: 359, column: 22, scope: !2024)
!2027 = !DILocation(line: 359, column: 3, scope: !2024)
!2028 = !DILocation(line: 361, column: 22, scope: !2024)
!2029 = !DILocation(line: 361, column: 3, scope: !2024)
!2030 = !DILocation(line: 363, column: 19, scope: !1927)
!2031 = !DILocation(line: 363, column: 2, scope: !1927)
!2032 = !DILocation(line: 365, column: 16, scope: !1927)
!2033 = !DILocation(line: 365, column: 2, scope: !1927)
!2034 = !DILocation(line: 366, column: 1, scope: !1927)
!2035 = distinct !DISubprogram(name: "trk_explicit_start", scope: !157, file: !157, line: 254, type: !463, isLocal: true, isDefinition: true, scopeLine: 255, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !492)
!2036 = !DILocalVariable(name: "trig", arg: 1, scope: !2035, file: !157, line: 254, type: !183)
!2037 = !DILocation(line: 254, column: 32, scope: !2035)
!2038 = !DILocation(line: 256, column: 2, scope: !2035)
!2039 = !DILocation(line: 258, column: 2, scope: !2035)
!2040 = !DILocation(line: 259, column: 35, scope: !2035)
!2041 = !DILocation(line: 259, column: 55, scope: !2035)
!2042 = !DILocation(line: 259, column: 48, scope: !2035)
!2043 = !DILocation(line: 259, column: 2, scope: !2044)
!2044 = !DILexicalBlockFile(scope: !2035, file: !157, discriminator: 1)
!2045 = !DILocation(line: 260, column: 2, scope: !2035)
!2046 = !DILocation(line: 261, column: 35, scope: !2035)
!2047 = !DILocation(line: 261, column: 48, scope: !2035)
!2048 = !DILocation(line: 261, column: 41, scope: !2035)
!2049 = !DILocation(line: 261, column: 2, scope: !2044)
!2050 = !DILocation(line: 262, column: 2, scope: !2035)
!2051 = !DILocation(line: 264, column: 41, scope: !2035)
!2052 = !DILocation(line: 264, column: 19, scope: !2035)
!2053 = !DILocation(line: 264, column: 17, scope: !2035)
!2054 = !DILocation(line: 265, column: 7, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2035, file: !157, line: 265, column: 6)
!2056 = !DILocation(line: 265, column: 6, scope: !2035)
!2057 = !DILocation(line: 266, column: 8, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2059, file: !157, line: 266, column: 6)
!2059 = distinct !DILexicalBlock(scope: !2055, file: !157, line: 265, column: 23)
!2060 = !DILocation(line: 266, column: 7, scope: !2058)
!2061 = !DILocation(line: 266, column: 12, scope: !2058)
!2062 = !DILocation(line: 266, column: 6, scope: !2059)
!2063 = !DILocation(line: 267, column: 11, scope: !2058)
!2064 = !DILocation(line: 268, column: 28, scope: !2058)
!2065 = !DILocation(line: 267, column: 4, scope: !2066)
!2066 = !DILexicalBlockFile(scope: !2058, file: !157, discriminator: 1)
!2067 = !DILocation(line: 267, column: 4, scope: !2058)
!2068 = !DILocation(line: 269, column: 2, scope: !2059)
!2069 = !DILocation(line: 270, column: 1, scope: !2035)
!2070 = distinct !DISubprogram(name: "trk_explicit_fgets", scope: !157, file: !157, line: 273, type: !2071, isLocal: true, isDefinition: true, scopeLine: 274, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !492)
!2071 = !DISubroutineType(types: !2072)
!2072 = !{!227, !158, !397}
!2073 = !DILocalVariable(name: "buf", arg: 1, scope: !2070, file: !157, line: 273, type: !158)
!2074 = !DILocation(line: 273, column: 26, scope: !2070)
!2075 = !DILocalVariable(name: "sz", arg: 2, scope: !2070, file: !157, line: 273, type: !397)
!2076 = !DILocation(line: 273, column: 38, scope: !2070)
!2077 = !DILocation(line: 275, column: 23, scope: !2070)
!2078 = !DILocation(line: 275, column: 28, scope: !2070)
!2079 = !DILocation(line: 275, column: 32, scope: !2070)
!2080 = !DILocation(line: 275, column: 64, scope: !2070)
!2081 = !DILocation(line: 275, column: 9, scope: !2070)
!2082 = !DILocation(line: 275, column: 2, scope: !2070)
!2083 = distinct !DISubprogram(name: "trk_unknown_activate_start", scope: !157, file: !157, line: 207, type: !168, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !492)
!2084 = !DILocation(line: 209, column: 1, scope: !2083)
!2085 = distinct !DISubprogram(name: "trk_unknown_activate_awaiter", scope: !157, file: !157, line: 212, type: !172, isLocal: true, isDefinition: true, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !492)
!2086 = !DILocalVariable(name: "aw", arg: 1, scope: !2085, file: !157, line: 212, type: !174)
!2087 = !DILocation(line: 212, column: 46, scope: !2085)
!2088 = !DILocation(line: 214, column: 1, scope: !2085)
!2089 = distinct !DISubprogram(name: "trk_unknown_activate_done", scope: !157, file: !157, line: 217, type: !168, isLocal: true, isDefinition: true, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !492)
!2090 = !DILocation(line: 219, column: 1, scope: !2089)
!2091 = distinct !DISubprogram(name: "trk_unknown_interest_change", scope: !157, file: !157, line: 222, type: !380, isLocal: true, isDefinition: true, scopeLine: 225, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !492)
!2092 = !DILocalVariable(name: "trig", arg: 1, scope: !2091, file: !157, line: 222, type: !183)
!2093 = !DILocation(line: 222, column: 41, scope: !2091)
!2094 = !DILocalVariable(name: "pkg", arg: 2, scope: !2091, file: !157, line: 222, type: !174)
!2095 = !DILocation(line: 222, column: 63, scope: !2091)
!2096 = !DILocalVariable(name: "pkgbin", arg: 3, scope: !2091, file: !157, line: 223, type: !348)
!2097 = !DILocation(line: 223, column: 44, scope: !2091)
!2098 = !DILocalVariable(name: "signum", arg: 4, scope: !2091, file: !157, line: 223, type: !227)
!2099 = !DILocation(line: 223, column: 56, scope: !2091)
!2100 = !DILocalVariable(name: "opts", arg: 5, scope: !2091, file: !157, line: 224, type: !73)
!2101 = !DILocation(line: 224, column: 47, scope: !2091)
!2102 = !DILocation(line: 226, column: 8, scope: !2091)
!2103 = !DILocation(line: 228, column: 9, scope: !2091)
!2104 = !DILocation(line: 228, column: 27, scope: !2091)
!2105 = !DILocation(line: 228, column: 32, scope: !2091)
!2106 = !DILocation(line: 228, column: 15, scope: !2091)
!2107 = !DILocation(line: 226, column: 2, scope: !2108)
!2108 = !DILexicalBlockFile(scope: !2091, file: !157, discriminator: 1)
!2109 = !DILocation(line: 226, column: 2, scope: !2091)
!2110 = !DILocation(line: 229, column: 1, scope: !2091)
!2111 = distinct !DISubprogram(name: "tdm_incorp_trig_begin", scope: !157, file: !157, line: 735, type: !463, isLocal: true, isDefinition: true, scopeLine: 736, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !492)
!2112 = !DILocalVariable(name: "trig", arg: 1, scope: !2111, file: !157, line: 735, type: !183)
!2113 = !DILocation(line: 735, column: 35, scope: !2111)
!2114 = !DILocation(line: 737, column: 22, scope: !2111)
!2115 = !DILocation(line: 737, column: 2, scope: !2111)
!2116 = !DILocation(line: 738, column: 1, scope: !2111)
!2117 = distinct !DISubprogram(name: "tdm_incorp_package", scope: !157, file: !157, line: 741, type: !463, isLocal: true, isDefinition: true, scopeLine: 742, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !492)
!2118 = !DILocalVariable(name: "awname", arg: 1, scope: !2117, file: !157, line: 741, type: !183)
!2119 = !DILocation(line: 741, column: 32, scope: !2117)
!2120 = !DILocalVariable(name: "aw", scope: !2117, file: !157, line: 743, type: !174)
!2121 = !DILocation(line: 743, column: 18, scope: !2117)
!2122 = !DILocation(line: 745, column: 13, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2117, file: !157, line: 745, column: 6)
!2124 = !DILocation(line: 745, column: 6, scope: !2123)
!2125 = !DILocation(line: 745, column: 26, scope: !2123)
!2126 = !DILocation(line: 745, column: 6, scope: !2117)
!2127 = !DILocation(line: 746, column: 6, scope: !2123)
!2128 = !DILocation(line: 746, column: 3, scope: !2123)
!2129 = !DILocation(line: 748, column: 27, scope: !2123)
!2130 = !DILocation(line: 748, column: 8, scope: !2123)
!2131 = !DILocation(line: 748, column: 6, scope: !2123)
!2132 = !DILocation(line: 750, column: 2, scope: !2117)
!2133 = !DILocation(line: 750, column: 8, scope: !2117)
!2134 = !DILocation(line: 750, column: 25, scope: !2117)
!2135 = !DILocation(line: 751, column: 1, scope: !2117)
!2136 = distinct !DISubprogram(name: "tdm_incorp_trig_end", scope: !157, file: !157, line: 754, type: !168, isLocal: true, isDefinition: true, scopeLine: 755, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !492)
!2137 = !DILocation(line: 756, column: 2, scope: !2136)
!2138 = !DILocation(line: 756, column: 8, scope: !2136)
!2139 = !DILocation(line: 757, column: 1, scope: !2136)
!2140 = distinct !DISubprogram(name: "th_nn_find", scope: !157, file: !157, line: 824, type: !477, isLocal: true, isDefinition: true, scopeLine: 824, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !492)
!2141 = !DILocalVariable(name: "name", arg: 1, scope: !2140, file: !157, line: 824, type: !183)
!2142 = !DILocation(line: 824, column: 53, scope: !2140)
!2143 = !DILocalVariable(name: "nonew", arg: 2, scope: !2140, file: !157, line: 824, type: !223)
!2144 = !DILocation(line: 824, column: 1, scope: !2140)
!2145 = !DILocation(line: 824, column: 37, scope: !2140)
!2146 = !DILocation(line: 824, column: 43, scope: !2140)
!2147 = !DILocation(line: 824, column: 17, scope: !2140)
!2148 = !DILocation(line: 824, column: 10, scope: !2140)
!2149 = distinct !DISubprogram(name: "th_nn_interested", scope: !157, file: !157, line: 824, type: !481, isLocal: true, isDefinition: true, scopeLine: 824, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !492)
!2150 = !DILocalVariable(name: "fnn", arg: 1, scope: !2149, file: !157, line: 824, type: !308)
!2151 = !DILocation(line: 824, column: 136, scope: !2149)
!2152 = !DILocation(line: 824, column: 151, scope: !2149)
!2153 = !DILocation(line: 824, column: 156, scope: !2149)
!2154 = !DILocation(line: 824, column: 143, scope: !2149)
!2155 = distinct !DISubprogram(name: "th_nn_name", scope: !157, file: !157, line: 824, type: !486, isLocal: true, isDefinition: true, scopeLine: 824, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !492)
!2156 = !DILocalVariable(name: "fnn", arg: 1, scope: !2155, file: !157, line: 824, type: !308)
!2157 = !DILocation(line: 824, column: 227, scope: !2155)
!2158 = !DILocation(line: 824, column: 241, scope: !2155)
!2159 = !DILocation(line: 824, column: 246, scope: !2155)
!2160 = !DILocation(line: 824, column: 234, scope: !2155)
