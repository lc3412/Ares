; ModuleID = './[inter]src--cleanup.o.i'
source_filename = "./[inter]src--cleanup.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.varbuf = type { i64, i64, i8* }
%struct.cmdinfo = type { i8*, i8, i32, i32*, i8**, void (%struct.cmdinfo*, i8*)*, i32, i8*, i32 (i8**)* }
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
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@cleanup_pkg_failed = global i32 0, align 4
@cleanup_conflictor_failed = global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"cu_installnew '%s' flags=%o\00", align 1
@fnametmpvb = external global %struct.varbuf, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"cu_installnew restoring nonatomic\00", align 1
@fnamevb = external global %struct.varbuf, align 8
@.str.2 = private unnamed_addr constant [92 x i8] c"unable to remove newly-installed version of '%.250s' to allow reinstallation of backup copy\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"cu_installnew restoring atomic\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"unable to restore backup version of '%.250s'\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"unable to remove backup copy of '%.250s'\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"cu_installnew removing new file\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"unable to remove newly-installed version of '%.250s'\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"cu_installnew not restoring\00", align 1
@fnamenewvb = external global %struct.varbuf, align 8
@.str.9 = private unnamed_addr constant [53 x i8] c"unable to remove newly-extracted version of '%.250s'\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"abort-upgrade\00", align 1
@cipaction = external global %struct.cmdinfo*, align 8
@.str.11 = private unnamed_addr constant [18 x i8] c"abort-deconfigure\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"in-favour\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"removing\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"abort-remove\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"postrm\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"post-removal\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"abort-install\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"preinst\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"pre-installation\00", align 1

; Function Attrs: nounwind uwtable
define void @cu_installnew(i32, i8**) #0 !dbg !385 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.fsys_namenode*, align 8
  %6 = alloca %struct.stat, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !390, metadata !391), !dbg !392
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !393, metadata !391), !dbg !394
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %5, metadata !395, metadata !391), !dbg !396
  %7 = load i8**, i8*** %4, align 8, !dbg !397
  %8 = getelementptr inbounds i8*, i8** %7, i64 0, !dbg !397
  %9 = load i8*, i8** %8, align 8, !dbg !397
  %10 = bitcast i8* %9 to %struct.fsys_namenode*, !dbg !397
  store %struct.fsys_namenode* %10, %struct.fsys_namenode** %5, align 8, !dbg !396
  call void @llvm.dbg.declare(metadata %struct.stat* %6, metadata !398, metadata !391), !dbg !430
  %11 = load i32, i32* @cleanup_pkg_failed, align 4, !dbg !431
  %12 = add nsw i32 %11, 1, !dbg !431
  store i32 %12, i32* @cleanup_pkg_failed, align 4, !dbg !431
  %13 = load i32, i32* @cleanup_conflictor_failed, align 4, !dbg !432
  %14 = add nsw i32 %13, 1, !dbg !432
  store i32 %14, i32* @cleanup_conflictor_failed, align 4, !dbg !432
  %15 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !433
  %16 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %15, i32 0, i32 1, !dbg !434
  %17 = load i8*, i8** %16, align 8, !dbg !434
  %18 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !435
  %19 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %18, i32 0, i32 6, !dbg !436
  %20 = load i32, i32* %19, align 8, !dbg !436
  call void (i32, i8*, ...) @debug(i32 8, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i8* %17, i32 %20), !dbg !437
  %21 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !438
  %22 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %21, i32 0, i32 1, !dbg !439
  %23 = load i8*, i8** %22, align 8, !dbg !439
  call void @setupfnamevbs(i8* %23), !dbg !440
  %24 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !441
  %25 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %24, i32 0, i32 6, !dbg !443
  %26 = load i32, i32* %25, align 8, !dbg !443
  %27 = and i32 %26, 1, !dbg !444
  %28 = icmp ne i32 %27, 0, !dbg !444
  br i1 %28, label %83, label %29, !dbg !445

; <label>:29:                                     ; preds = %2
  %30 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fnametmpvb, i32 0, i32 2), align 8, !dbg !446
  %31 = call i32 @lstat(i8* %30, %struct.stat* %6) #6, !dbg !448
  %32 = icmp ne i32 %31, 0, !dbg !448
  br i1 %32, label %83, label %33, !dbg !449

; <label>:33:                                     ; preds = %29
  %34 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !450
  %35 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %34, i32 0, i32 6, !dbg !453
  %36 = load i32, i32* %35, align 8, !dbg !453
  %37 = and i32 %36, 32, !dbg !454
  %38 = icmp ne i32 %37, 0, !dbg !454
  br i1 %38, label %39, label %57, !dbg !455

; <label>:39:                                     ; preds = %33
  call void (i32, i8*, ...) @debug(i32 64, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0)), !dbg !456
  %40 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fnamevb, i32 0, i32 2), align 8, !dbg !458
  %41 = call i32 @secure_remove(i8* %40), !dbg !460
  %42 = icmp ne i32 %41, 0, !dbg !460
  br i1 %42, label %43, label %56, !dbg !461

; <label>:43:                                     ; preds = %39
  %44 = call i32* @__errno_location() #1, !dbg !462
  %45 = load i32, i32* %44, align 4, !dbg !464
  %46 = icmp ne i32 %45, 2, !dbg !465
  br i1 %46, label %47, label %56, !dbg !466

; <label>:47:                                     ; preds = %43
  %48 = call i32* @__errno_location() #1, !dbg !467
  %49 = load i32, i32* %48, align 4, !dbg !469
  %50 = icmp ne i32 %49, 20, !dbg !470
  br i1 %50, label %51, label %56, !dbg !471

; <label>:51:                                     ; preds = %47
  %52 = call i8* @gettext(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.2, i32 0, i32 0)) #6, !dbg !472
  %53 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !473
  %54 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %53, i32 0, i32 1, !dbg !474
  %55 = load i8*, i8** %54, align 8, !dbg !474
  call void (i8*, ...) @ohshite(i8* %52, i8* %55) #7, !dbg !475
  unreachable, !dbg !476

; <label>:56:                                     ; preds = %47, %43, %39
  br label %58, !dbg !477

; <label>:57:                                     ; preds = %33
  call void (i32, i8*, ...) @debug(i32 64, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0)), !dbg !478
  br label %58

; <label>:58:                                     ; preds = %57, %56
  %59 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fnametmpvb, i32 0, i32 2), align 8, !dbg !480
  %60 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fnamevb, i32 0, i32 2), align 8, !dbg !482
  %61 = call i32 @rename(i8* %59, i8* %60) #6, !dbg !483
  %62 = icmp ne i32 %61, 0, !dbg !483
  br i1 %62, label %63, label %68, !dbg !484

; <label>:63:                                     ; preds = %58
  %64 = call i8* @gettext(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i32 0, i32 0)) #6, !dbg !485
  %65 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !486
  %66 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %65, i32 0, i32 1, !dbg !487
  %67 = load i8*, i8** %66, align 8, !dbg !487
  call void (i8*, ...) @ohshite(i8* %64, i8* %67) #7, !dbg !488
  unreachable, !dbg !490

; <label>:68:                                     ; preds = %58
  %69 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fnametmpvb, i32 0, i32 2), align 8, !dbg !491
  %70 = call i32 @unlink(i8* %69) #6, !dbg !493
  %71 = icmp ne i32 %70, 0, !dbg !493
  br i1 %71, label %72, label %81, !dbg !494

; <label>:72:                                     ; preds = %68
  %73 = call i32* @__errno_location() #1, !dbg !495
  %74 = load i32, i32* %73, align 4, !dbg !497
  %75 = icmp ne i32 %74, 2, !dbg !498
  br i1 %75, label %76, label %81, !dbg !499

; <label>:76:                                     ; preds = %72
  %77 = call i8* @gettext(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i32 0, i32 0)) #6, !dbg !500
  %78 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !501
  %79 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %78, i32 0, i32 1, !dbg !502
  %80 = load i8*, i8** %79, align 8, !dbg !502
  call void (i8*, ...) @ohshite(i8* %77, i8* %80) #7, !dbg !503
  unreachable, !dbg !504

; <label>:81:                                     ; preds = %72, %68
  br label %82

; <label>:82:                                     ; preds = %81
  br label %109, !dbg !505

; <label>:83:                                     ; preds = %29, %2
  %84 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !506
  %85 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %84, i32 0, i32 6, !dbg !509
  %86 = load i32, i32* %85, align 8, !dbg !509
  %87 = and i32 %86, 64, !dbg !510
  %88 = icmp ne i32 %87, 0, !dbg !510
  br i1 %88, label %89, label %107, !dbg !506

; <label>:89:                                     ; preds = %83
  call void (i32, i8*, ...) @debug(i32 64, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i32 0, i32 0)), !dbg !511
  %90 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fnamevb, i32 0, i32 2), align 8, !dbg !513
  %91 = call i32 @secure_remove(i8* %90), !dbg !515
  %92 = icmp ne i32 %91, 0, !dbg !515
  br i1 %92, label %93, label %106, !dbg !516

; <label>:93:                                     ; preds = %89
  %94 = call i32* @__errno_location() #1, !dbg !517
  %95 = load i32, i32* %94, align 4, !dbg !519
  %96 = icmp ne i32 %95, 2, !dbg !520
  br i1 %96, label %97, label %106, !dbg !521

; <label>:97:                                     ; preds = %93
  %98 = call i32* @__errno_location() #1, !dbg !522
  %99 = load i32, i32* %98, align 4, !dbg !524
  %100 = icmp ne i32 %99, 20, !dbg !525
  br i1 %100, label %101, label %106, !dbg !526

; <label>:101:                                    ; preds = %97
  %102 = call i8* @gettext(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i32 0, i32 0)) #6, !dbg !527
  %103 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !528
  %104 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %103, i32 0, i32 1, !dbg !529
  %105 = load i8*, i8** %104, align 8, !dbg !529
  call void (i8*, ...) @ohshite(i8* %102, i8* %105) #7, !dbg !530
  unreachable, !dbg !531

; <label>:106:                                    ; preds = %97, %93, %89
  br label %108, !dbg !532

; <label>:107:                                    ; preds = %83
  call void (i32, i8*, ...) @debug(i32 64, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0)), !dbg !533
  br label %108

; <label>:108:                                    ; preds = %107, %106
  br label %109

; <label>:109:                                    ; preds = %108, %82
  %110 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fnamenewvb, i32 0, i32 2), align 8, !dbg !535
  %111 = call i32 @secure_remove(i8* %110), !dbg !537
  %112 = icmp ne i32 %111, 0, !dbg !537
  br i1 %112, label %113, label %126, !dbg !538

; <label>:113:                                    ; preds = %109
  %114 = call i32* @__errno_location() #1, !dbg !539
  %115 = load i32, i32* %114, align 4, !dbg !541
  %116 = icmp ne i32 %115, 2, !dbg !542
  br i1 %116, label %117, label %126, !dbg !543

; <label>:117:                                    ; preds = %113
  %118 = call i32* @__errno_location() #1, !dbg !544
  %119 = load i32, i32* %118, align 4, !dbg !546
  %120 = icmp ne i32 %119, 20, !dbg !547
  br i1 %120, label %121, label %126, !dbg !548

; <label>:121:                                    ; preds = %117
  %122 = call i8* @gettext(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.9, i32 0, i32 0)) #6, !dbg !549
  %123 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !550
  %124 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %123, i32 0, i32 1, !dbg !551
  %125 = load i8*, i8** %124, align 8, !dbg !551
  call void (i8*, ...) @ohshite(i8* %122, i8* %125) #7, !dbg !552
  unreachable, !dbg !553

; <label>:126:                                    ; preds = %117, %113, %109
  %127 = load i32, i32* @cleanup_pkg_failed, align 4, !dbg !554
  %128 = add nsw i32 %127, -1, !dbg !554
  store i32 %128, i32* @cleanup_pkg_failed, align 4, !dbg !554
  %129 = load i32, i32* @cleanup_conflictor_failed, align 4, !dbg !555
  %130 = add nsw i32 %129, -1, !dbg !555
  store i32 %130, i32* @cleanup_conflictor_failed, align 4, !dbg !555
  ret void, !dbg !556
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @debug(i32, i8*, ...) #2

declare void @setupfnamevbs(i8*) #2

; Function Attrs: nounwind
declare i32 @lstat(i8*, %struct.stat*) #3

declare i32 @secure_remove(i8*) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

; Function Attrs: noreturn
declare void @ohshite(i8*, ...) #5

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

; Function Attrs: nounwind
declare i32 @rename(i8*, i8*) #3

; Function Attrs: nounwind
declare i32 @unlink(i8*) #3

; Function Attrs: nounwind uwtable
define void @cu_prermupgrade(i32, i8**) #0 !dbg !557 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.pkginfo*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !558, metadata !391), !dbg !559
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !560, metadata !391), !dbg !561
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %5, metadata !562, metadata !391), !dbg !563
  %6 = load i8**, i8*** %4, align 8, !dbg !564
  %7 = getelementptr inbounds i8*, i8** %6, i64 0, !dbg !564
  %8 = load i8*, i8** %7, align 8, !dbg !564
  %9 = bitcast i8* %8 to %struct.pkginfo*, !dbg !565
  store %struct.pkginfo* %9, %struct.pkginfo** %5, align 8, !dbg !563
  %10 = load i32, i32* @cleanup_pkg_failed, align 4, !dbg !566
  %11 = add nsw i32 %10, 1, !dbg !566
  store i32 %11, i32* @cleanup_pkg_failed, align 4, !dbg !566
  %12 = icmp ne i32 %10, 0, !dbg !566
  br i1 %12, label %13, label %14, !dbg !568

; <label>:13:                                     ; preds = %2
  br label %25, !dbg !569

; <label>:14:                                     ; preds = %2
  %15 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !571
  %16 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !572
  %17 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %16, i32 0, i32 10, !dbg !573
  %18 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %17, i32 0, i32 11, !dbg !574
  %19 = call i8* @versiondescribe(%struct.dpkg_version* %18, i32 1), !dbg !575
  %20 = call i32 (%struct.pkginfo*, ...) @maintscript_postinst(%struct.pkginfo* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i8* %19, i8* null), !dbg !576
  %21 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !577
  call void @pkg_clear_eflags(%struct.pkginfo* %21, i32 1), !dbg !578
  %22 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !579
  call void @post_postinst_tasks(%struct.pkginfo* %22, i32 7), !dbg !580
  %23 = load i32, i32* @cleanup_pkg_failed, align 4, !dbg !581
  %24 = add nsw i32 %23, -1, !dbg !581
  store i32 %24, i32* @cleanup_pkg_failed, align 4, !dbg !581
  br label %25, !dbg !582

; <label>:25:                                     ; preds = %14, %13
  ret void, !dbg !583
}

declare i32 @maintscript_postinst(%struct.pkginfo*, ...) #2

declare i8* @versiondescribe(%struct.dpkg_version*, i32) #2

declare void @pkg_clear_eflags(%struct.pkginfo*, i32) #2

declare void @post_postinst_tasks(%struct.pkginfo*, i32) #2

; Function Attrs: nounwind uwtable
define void @ok_prermdeconfigure(i32, i8**) #0 !dbg !585 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.pkginfo*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !586, metadata !391), !dbg !587
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !588, metadata !391), !dbg !589
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %5, metadata !590, metadata !391), !dbg !591
  %6 = load i8**, i8*** %4, align 8, !dbg !592
  %7 = getelementptr inbounds i8*, i8** %6, i64 0, !dbg !592
  %8 = load i8*, i8** %7, align 8, !dbg !592
  %9 = bitcast i8* %8 to %struct.pkginfo*, !dbg !593
  store %struct.pkginfo* %9, %struct.pkginfo** %5, align 8, !dbg !591
  %10 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !594
  %11 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %10, i32 0, i32 6, !dbg !596
  %12 = load i32, i32* %11, align 8, !dbg !596
  %13 = icmp eq i32 %12, 3, !dbg !597
  br i1 %13, label %14, label %16, !dbg !598

; <label>:14:                                     ; preds = %2
  %15 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !599
  call void @enqueue_package(%struct.pkginfo* %15), !dbg !600
  br label %16, !dbg !600

; <label>:16:                                     ; preds = %14, %2
  ret void, !dbg !601
}

declare void @enqueue_package(%struct.pkginfo*) #2

; Function Attrs: nounwind uwtable
define void @cu_prermdeconfigure(i32, i8**) #0 !dbg !602 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.pkginfo*, align 8
  %6 = alloca %struct.pkginfo*, align 8
  %7 = alloca %struct.pkginfo*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !603, metadata !391), !dbg !604
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !605, metadata !391), !dbg !606
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %5, metadata !607, metadata !391), !dbg !608
  %8 = load i8**, i8*** %4, align 8, !dbg !609
  %9 = getelementptr inbounds i8*, i8** %8, i64 0, !dbg !609
  %10 = load i8*, i8** %9, align 8, !dbg !609
  %11 = bitcast i8* %10 to %struct.pkginfo*, !dbg !610
  store %struct.pkginfo* %11, %struct.pkginfo** %5, align 8, !dbg !608
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %6, metadata !611, metadata !391), !dbg !612
  %12 = load i8**, i8*** %4, align 8, !dbg !613
  %13 = getelementptr inbounds i8*, i8** %12, i64 1, !dbg !613
  %14 = load i8*, i8** %13, align 8, !dbg !613
  %15 = bitcast i8* %14 to %struct.pkginfo*, !dbg !614
  store %struct.pkginfo* %15, %struct.pkginfo** %6, align 8, !dbg !612
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %7, metadata !615, metadata !391), !dbg !616
  %16 = load i8**, i8*** %4, align 8, !dbg !617
  %17 = getelementptr inbounds i8*, i8** %16, i64 2, !dbg !617
  %18 = load i8*, i8** %17, align 8, !dbg !617
  %19 = bitcast i8* %18 to %struct.pkginfo*, !dbg !618
  store %struct.pkginfo* %19, %struct.pkginfo** %7, align 8, !dbg !616
  %20 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !619
  %21 = icmp ne %struct.pkginfo* %20, null, !dbg !619
  br i1 %21, label %22, label %39, !dbg !621

; <label>:22:                                     ; preds = %2
  %23 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !622
  %24 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !624
  %25 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !625
  %26 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %25, i32 0, i32 10, !dbg !626
  %27 = call i8* @pkgbin_name(%struct.pkginfo* %24, %struct.pkgbin* %26, i32 1), !dbg !627
  %28 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !628
  %29 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %28, i32 0, i32 10, !dbg !629
  %30 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %29, i32 0, i32 11, !dbg !630
  %31 = call i8* @versiondescribe(%struct.dpkg_version* %30, i32 1), !dbg !631
  %32 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !632
  %33 = call i8* @pkg_name(%struct.pkginfo* %32, i32 1), !dbg !633
  %34 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !634
  %35 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %34, i32 0, i32 9, !dbg !635
  %36 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %35, i32 0, i32 11, !dbg !636
  %37 = call i8* @versiondescribe(%struct.dpkg_version* %36, i32 1), !dbg !637
  %38 = call i32 (%struct.pkginfo*, ...) @maintscript_postinst(%struct.pkginfo* %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* %27, i8* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i8* %33, i8* %37, i8* null), !dbg !638
  br label %50, !dbg !639

; <label>:39:                                     ; preds = %2
  %40 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !640
  %41 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !642
  %42 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !643
  %43 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %42, i32 0, i32 10, !dbg !644
  %44 = call i8* @pkgbin_name(%struct.pkginfo* %41, %struct.pkgbin* %43, i32 1), !dbg !645
  %45 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !646
  %46 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %45, i32 0, i32 10, !dbg !647
  %47 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %46, i32 0, i32 11, !dbg !648
  %48 = call i8* @versiondescribe(%struct.dpkg_version* %47, i32 1), !dbg !649
  %49 = call i32 (%struct.pkginfo*, ...) @maintscript_postinst(%struct.pkginfo* %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* %44, i8* %48, i8* null), !dbg !650
  br label %50

; <label>:50:                                     ; preds = %39, %22
  %51 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !651
  call void @post_postinst_tasks(%struct.pkginfo* %51, i32 7), !dbg !652
  ret void, !dbg !653
}

declare i8* @pkgbin_name(%struct.pkginfo*, %struct.pkgbin*, i32) #2

declare i8* @pkg_name(%struct.pkginfo*, i32) #2

; Function Attrs: nounwind uwtable
define void @cu_prerminfavour(i32, i8**) #0 !dbg !654 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.pkginfo*, align 8
  %6 = alloca %struct.pkginfo*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !655, metadata !391), !dbg !656
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !657, metadata !391), !dbg !658
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %5, metadata !659, metadata !391), !dbg !660
  %7 = load i8**, i8*** %4, align 8, !dbg !661
  %8 = getelementptr inbounds i8*, i8** %7, i64 0, !dbg !661
  %9 = load i8*, i8** %8, align 8, !dbg !661
  %10 = bitcast i8* %9 to %struct.pkginfo*, !dbg !662
  store %struct.pkginfo* %10, %struct.pkginfo** %5, align 8, !dbg !660
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %6, metadata !663, metadata !391), !dbg !664
  %11 = load i8**, i8*** %4, align 8, !dbg !665
  %12 = getelementptr inbounds i8*, i8** %11, i64 1, !dbg !665
  %13 = load i8*, i8** %12, align 8, !dbg !665
  %14 = bitcast i8* %13 to %struct.pkginfo*, !dbg !666
  store %struct.pkginfo* %14, %struct.pkginfo** %6, align 8, !dbg !664
  %15 = load i32, i32* @cleanup_conflictor_failed, align 4, !dbg !667
  %16 = add nsw i32 %15, 1, !dbg !667
  store i32 %16, i32* @cleanup_conflictor_failed, align 4, !dbg !667
  %17 = icmp ne i32 %15, 0, !dbg !667
  br i1 %17, label %18, label %19, !dbg !669

; <label>:18:                                     ; preds = %2
  br label %34, !dbg !670

; <label>:19:                                     ; preds = %2
  %20 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !672
  %21 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !673
  %22 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !674
  %23 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %22, i32 0, i32 10, !dbg !675
  %24 = call i8* @pkgbin_name(%struct.pkginfo* %21, %struct.pkgbin* %23, i32 1), !dbg !676
  %25 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !677
  %26 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %25, i32 0, i32 10, !dbg !678
  %27 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %26, i32 0, i32 11, !dbg !679
  %28 = call i8* @versiondescribe(%struct.dpkg_version* %27, i32 1), !dbg !680
  %29 = call i32 (%struct.pkginfo*, ...) @maintscript_postinst(%struct.pkginfo* %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* %24, i8* %28, i8* null), !dbg !681
  %30 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !682
  call void @pkg_clear_eflags(%struct.pkginfo* %30, i32 1), !dbg !683
  %31 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !684
  call void @post_postinst_tasks(%struct.pkginfo* %31, i32 7), !dbg !685
  %32 = load i32, i32* @cleanup_conflictor_failed, align 4, !dbg !686
  %33 = add nsw i32 %32, -1, !dbg !686
  store i32 %33, i32* @cleanup_conflictor_failed, align 4, !dbg !686
  br label %34, !dbg !687

; <label>:34:                                     ; preds = %19, %18
  ret void, !dbg !688
}

; Function Attrs: nounwind uwtable
define void @cu_preinstverynew(i32, i8**) #0 !dbg !690 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.pkginfo*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !691, metadata !391), !dbg !692
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !693, metadata !391), !dbg !694
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %5, metadata !695, metadata !391), !dbg !696
  %8 = load i8**, i8*** %4, align 8, !dbg !697
  %9 = getelementptr inbounds i8*, i8** %8, i64 0, !dbg !697
  %10 = load i8*, i8** %9, align 8, !dbg !697
  %11 = bitcast i8* %10 to %struct.pkginfo*, !dbg !698
  store %struct.pkginfo* %11, %struct.pkginfo** %5, align 8, !dbg !696
  call void @llvm.dbg.declare(metadata i8** %6, metadata !699, metadata !391), !dbg !700
  %12 = load i8**, i8*** %4, align 8, !dbg !701
  %13 = getelementptr inbounds i8*, i8** %12, i64 1, !dbg !701
  %14 = load i8*, i8** %13, align 8, !dbg !701
  store i8* %14, i8** %6, align 8, !dbg !700
  call void @llvm.dbg.declare(metadata i8** %7, metadata !702, metadata !391), !dbg !703
  %15 = load i8**, i8*** %4, align 8, !dbg !704
  %16 = getelementptr inbounds i8*, i8** %15, i64 2, !dbg !704
  %17 = load i8*, i8** %16, align 8, !dbg !704
  store i8* %17, i8** %7, align 8, !dbg !703
  %18 = load i32, i32* @cleanup_pkg_failed, align 4, !dbg !705
  %19 = add nsw i32 %18, 1, !dbg !705
  store i32 %19, i32* @cleanup_pkg_failed, align 4, !dbg !705
  %20 = icmp ne i32 %18, 0, !dbg !705
  br i1 %20, label %21, label %22, !dbg !707

; <label>:21:                                     ; preds = %2
  br label %34, !dbg !708

; <label>:22:                                     ; preds = %2
  %23 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !710
  %24 = load i8*, i8** %6, align 8, !dbg !711
  %25 = load i8*, i8** %7, align 8, !dbg !712
  %26 = call i32 (%struct.pkginfo*, i8*, i8*, i8*, i8*, ...) @maintscript_new(%struct.pkginfo* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i8* %24, i8* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i8* null), !dbg !713
  %27 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !714
  call void @pkg_set_status(%struct.pkginfo* %27, i32 0), !dbg !715
  %28 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !716
  call void @pkg_clear_eflags(%struct.pkginfo* %28, i32 1), !dbg !717
  %29 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !718
  %30 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %29, i32 0, i32 9, !dbg !719
  call void @pkgbin_blank(%struct.pkgbin* %30), !dbg !720
  %31 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !721
  call void @modstatdb_note(%struct.pkginfo* %31), !dbg !722
  %32 = load i32, i32* @cleanup_pkg_failed, align 4, !dbg !723
  %33 = add nsw i32 %32, -1, !dbg !723
  store i32 %33, i32* @cleanup_pkg_failed, align 4, !dbg !723
  br label %34, !dbg !724

; <label>:34:                                     ; preds = %22, %21
  ret void, !dbg !725
}

declare i32 @maintscript_new(%struct.pkginfo*, i8*, i8*, i8*, i8*, ...) #2

declare void @pkg_set_status(%struct.pkginfo*, i32) #2

declare void @pkgbin_blank(%struct.pkgbin*) #2

declare void @modstatdb_note(%struct.pkginfo*) #2

; Function Attrs: nounwind uwtable
define void @cu_preinstnew(i32, i8**) #0 !dbg !727 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.pkginfo*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !728, metadata !391), !dbg !729
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !730, metadata !391), !dbg !731
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %5, metadata !732, metadata !391), !dbg !733
  %8 = load i8**, i8*** %4, align 8, !dbg !734
  %9 = getelementptr inbounds i8*, i8** %8, i64 0, !dbg !734
  %10 = load i8*, i8** %9, align 8, !dbg !734
  %11 = bitcast i8* %10 to %struct.pkginfo*, !dbg !735
  store %struct.pkginfo* %11, %struct.pkginfo** %5, align 8, !dbg !733
  call void @llvm.dbg.declare(metadata i8** %6, metadata !736, metadata !391), !dbg !737
  %12 = load i8**, i8*** %4, align 8, !dbg !738
  %13 = getelementptr inbounds i8*, i8** %12, i64 1, !dbg !738
  %14 = load i8*, i8** %13, align 8, !dbg !738
  store i8* %14, i8** %6, align 8, !dbg !737
  call void @llvm.dbg.declare(metadata i8** %7, metadata !739, metadata !391), !dbg !740
  %15 = load i8**, i8*** %4, align 8, !dbg !741
  %16 = getelementptr inbounds i8*, i8** %15, i64 2, !dbg !741
  %17 = load i8*, i8** %16, align 8, !dbg !741
  store i8* %17, i8** %7, align 8, !dbg !740
  %18 = load i32, i32* @cleanup_pkg_failed, align 4, !dbg !742
  %19 = add nsw i32 %18, 1, !dbg !742
  store i32 %19, i32* @cleanup_pkg_failed, align 4, !dbg !742
  %20 = icmp ne i32 %18, 0, !dbg !742
  br i1 %20, label %21, label %22, !dbg !744

; <label>:21:                                     ; preds = %2
  br label %40, !dbg !745

; <label>:22:                                     ; preds = %2
  %23 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !747
  %24 = load i8*, i8** %6, align 8, !dbg !748
  %25 = load i8*, i8** %7, align 8, !dbg !749
  %26 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !750
  %27 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %26, i32 0, i32 9, !dbg !751
  %28 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %27, i32 0, i32 11, !dbg !752
  %29 = call i8* @versiondescribe(%struct.dpkg_version* %28, i32 1), !dbg !753
  %30 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !754
  %31 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %30, i32 0, i32 10, !dbg !755
  %32 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %31, i32 0, i32 11, !dbg !756
  %33 = call i8* @versiondescribe(%struct.dpkg_version* %32, i32 1), !dbg !757
  %34 = call i32 (%struct.pkginfo*, i8*, i8*, i8*, i8*, ...) @maintscript_new(%struct.pkginfo* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i8* %24, i8* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i8* %29, i8* %33, i8* null), !dbg !758
  %35 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !759
  call void @pkg_set_status(%struct.pkginfo* %35, i32 1), !dbg !760
  %36 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !761
  call void @pkg_clear_eflags(%struct.pkginfo* %36, i32 1), !dbg !762
  %37 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !763
  call void @modstatdb_note(%struct.pkginfo* %37), !dbg !764
  %38 = load i32, i32* @cleanup_pkg_failed, align 4, !dbg !765
  %39 = add nsw i32 %38, -1, !dbg !765
  store i32 %39, i32* @cleanup_pkg_failed, align 4, !dbg !765
  br label %40, !dbg !766

; <label>:40:                                     ; preds = %22, %21
  ret void, !dbg !767
}

; Function Attrs: nounwind uwtable
define void @cu_preinstupgrade(i32, i8**) #0 !dbg !769 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.pkginfo*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !770, metadata !391), !dbg !771
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !772, metadata !391), !dbg !773
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %5, metadata !774, metadata !391), !dbg !775
  %9 = load i8**, i8*** %4, align 8, !dbg !776
  %10 = getelementptr inbounds i8*, i8** %9, i64 0, !dbg !776
  %11 = load i8*, i8** %10, align 8, !dbg !776
  %12 = bitcast i8* %11 to %struct.pkginfo*, !dbg !777
  store %struct.pkginfo* %12, %struct.pkginfo** %5, align 8, !dbg !775
  call void @llvm.dbg.declare(metadata i8** %6, metadata !778, metadata !391), !dbg !779
  %13 = load i8**, i8*** %4, align 8, !dbg !780
  %14 = getelementptr inbounds i8*, i8** %13, i64 1, !dbg !780
  %15 = load i8*, i8** %14, align 8, !dbg !780
  store i8* %15, i8** %6, align 8, !dbg !779
  call void @llvm.dbg.declare(metadata i8** %7, metadata !781, metadata !391), !dbg !782
  %16 = load i8**, i8*** %4, align 8, !dbg !783
  %17 = getelementptr inbounds i8*, i8** %16, i64 2, !dbg !783
  %18 = load i8*, i8** %17, align 8, !dbg !783
  store i8* %18, i8** %7, align 8, !dbg !782
  call void @llvm.dbg.declare(metadata i32** %8, metadata !784, metadata !391), !dbg !785
  %19 = load i8**, i8*** %4, align 8, !dbg !786
  %20 = getelementptr inbounds i8*, i8** %19, i64 3, !dbg !786
  %21 = load i8*, i8** %20, align 8, !dbg !786
  %22 = bitcast i8* %21 to i32*, !dbg !787
  store i32* %22, i32** %8, align 8, !dbg !785
  %23 = load i32, i32* @cleanup_pkg_failed, align 4, !dbg !788
  %24 = add nsw i32 %23, 1, !dbg !788
  store i32 %24, i32* @cleanup_pkg_failed, align 4, !dbg !788
  %25 = icmp ne i32 %23, 0, !dbg !788
  br i1 %25, label %26, label %27, !dbg !790

; <label>:26:                                     ; preds = %2
  br label %47, !dbg !791

; <label>:27:                                     ; preds = %2
  %28 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !793
  %29 = load i8*, i8** %6, align 8, !dbg !794
  %30 = load i8*, i8** %7, align 8, !dbg !795
  %31 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !796
  %32 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %31, i32 0, i32 9, !dbg !797
  %33 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %32, i32 0, i32 11, !dbg !798
  %34 = call i8* @versiondescribe(%struct.dpkg_version* %33, i32 1), !dbg !799
  %35 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !800
  %36 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %35, i32 0, i32 10, !dbg !801
  %37 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %36, i32 0, i32 11, !dbg !802
  %38 = call i8* @versiondescribe(%struct.dpkg_version* %37, i32 1), !dbg !803
  %39 = call i32 (%struct.pkginfo*, i8*, i8*, i8*, i8*, ...) @maintscript_new(%struct.pkginfo* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i8* %29, i8* %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i8* %34, i8* %38, i8* null), !dbg !804
  %40 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !805
  %41 = load i32*, i32** %8, align 8, !dbg !806
  %42 = load i32, i32* %41, align 4, !dbg !807
  call void @pkg_set_status(%struct.pkginfo* %40, i32 %42), !dbg !808
  %43 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !809
  call void @pkg_clear_eflags(%struct.pkginfo* %43, i32 1), !dbg !810
  %44 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !811
  call void @modstatdb_note(%struct.pkginfo* %44), !dbg !812
  %45 = load i32, i32* @cleanup_pkg_failed, align 4, !dbg !813
  %46 = add nsw i32 %45, -1, !dbg !813
  store i32 %46, i32* @cleanup_pkg_failed, align 4, !dbg !813
  br label %47, !dbg !814

; <label>:47:                                     ; preds = %27, %26
  ret void, !dbg !815
}

; Function Attrs: nounwind uwtable
define void @cu_postrmupgrade(i32, i8**) #0 !dbg !817 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.pkginfo*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !818, metadata !391), !dbg !819
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !820, metadata !391), !dbg !821
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %5, metadata !822, metadata !391), !dbg !823
  %6 = load i8**, i8*** %4, align 8, !dbg !824
  %7 = getelementptr inbounds i8*, i8** %6, i64 0, !dbg !824
  %8 = load i8*, i8** %7, align 8, !dbg !824
  %9 = bitcast i8* %8 to %struct.pkginfo*, !dbg !825
  store %struct.pkginfo* %9, %struct.pkginfo** %5, align 8, !dbg !823
  %10 = load i32, i32* @cleanup_pkg_failed, align 4, !dbg !826
  %11 = add nsw i32 %10, 1, !dbg !826
  store i32 %11, i32* @cleanup_pkg_failed, align 4, !dbg !826
  %12 = icmp ne i32 %10, 0, !dbg !826
  br i1 %12, label %13, label %14, !dbg !828

; <label>:13:                                     ; preds = %2
  br label %23, !dbg !829

; <label>:14:                                     ; preds = %2
  %15 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !831
  %16 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !832
  %17 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %16, i32 0, i32 10, !dbg !833
  %18 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %17, i32 0, i32 11, !dbg !834
  %19 = call i8* @versiondescribe(%struct.dpkg_version* %18, i32 1), !dbg !835
  %20 = call i32 (%struct.pkginfo*, i8*, i8*, ...) @maintscript_installed(%struct.pkginfo* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i8* %19, i8* null), !dbg !836
  %21 = load i32, i32* @cleanup_pkg_failed, align 4, !dbg !837
  %22 = add nsw i32 %21, -1, !dbg !837
  store i32 %22, i32* @cleanup_pkg_failed, align 4, !dbg !837
  br label %23, !dbg !838

; <label>:23:                                     ; preds = %14, %13
  ret void, !dbg !839
}

declare i32 @maintscript_installed(%struct.pkginfo*, i8*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @cu_prermremove(i32, i8**) #0 !dbg !841 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.pkginfo*, align 8
  %6 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !842, metadata !391), !dbg !843
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !844, metadata !391), !dbg !845
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %5, metadata !846, metadata !391), !dbg !847
  %7 = load i8**, i8*** %4, align 8, !dbg !848
  %8 = getelementptr inbounds i8*, i8** %7, i64 0, !dbg !848
  %9 = load i8*, i8** %8, align 8, !dbg !848
  %10 = bitcast i8* %9 to %struct.pkginfo*, !dbg !849
  store %struct.pkginfo* %10, %struct.pkginfo** %5, align 8, !dbg !847
  call void @llvm.dbg.declare(metadata i32** %6, metadata !850, metadata !391), !dbg !851
  %11 = load i8**, i8*** %4, align 8, !dbg !852
  %12 = getelementptr inbounds i8*, i8** %11, i64 1, !dbg !852
  %13 = load i8*, i8** %12, align 8, !dbg !852
  %14 = bitcast i8* %13 to i32*, !dbg !853
  store i32* %14, i32** %6, align 8, !dbg !851
  %15 = load i32, i32* @cleanup_pkg_failed, align 4, !dbg !854
  %16 = add nsw i32 %15, 1, !dbg !854
  store i32 %16, i32* @cleanup_pkg_failed, align 4, !dbg !854
  %17 = icmp ne i32 %15, 0, !dbg !854
  br i1 %17, label %18, label %19, !dbg !856

; <label>:18:                                     ; preds = %2
  br label %28, !dbg !857

; <label>:19:                                     ; preds = %2
  %20 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !859
  %21 = call i32 (%struct.pkginfo*, ...) @maintscript_postinst(%struct.pkginfo* %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i8* null), !dbg !860
  %22 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !861
  call void @pkg_clear_eflags(%struct.pkginfo* %22, i32 1), !dbg !862
  %23 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !863
  %24 = load i32*, i32** %6, align 8, !dbg !864
  %25 = load i32, i32* %24, align 4, !dbg !865
  call void @post_postinst_tasks(%struct.pkginfo* %23, i32 %25), !dbg !866
  %26 = load i32, i32* @cleanup_pkg_failed, align 4, !dbg !867
  %27 = add nsw i32 %26, -1, !dbg !867
  store i32 %27, i32* @cleanup_pkg_failed, align 4, !dbg !867
  br label %28, !dbg !868

; <label>:28:                                     ; preds = %19, %18
  ret void, !dbg !869
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!382, !383}
!llvm.ident = !{!384}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !171, globals: !378)
!1 = !DIFile(filename: "[inter]src--cleanup.o.i", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!2 = !{!3, !15, !26, !35, !43, !47, !57, !67, !73, !81, !86, !99, !115, !120, !165}
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
!115 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "versiondisplayepochwhen", file: !4, line: 388, size: 32, align: 32, elements: !116)
!116 = !{!117, !118, !119}
!117 = !DIEnumerator(name: "vdew_never", value: 0)
!118 = !DIEnumerator(name: "vdew_nonambig", value: 1)
!119 = !DIEnumerator(name: "vdew_always", value: 2)
!120 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "action", file: !74, line: 68, size: 32, align: 32, elements: !121)
!121 = !{!122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164}
!122 = !DIEnumerator(name: "act_unset", value: 0)
!123 = !DIEnumerator(name: "act_unpack", value: 1)
!124 = !DIEnumerator(name: "act_configure", value: 2)
!125 = !DIEnumerator(name: "act_install", value: 3)
!126 = !DIEnumerator(name: "act_triggers", value: 4)
!127 = !DIEnumerator(name: "act_remove", value: 5)
!128 = !DIEnumerator(name: "act_purge", value: 6)
!129 = !DIEnumerator(name: "act_verify", value: 7)
!130 = !DIEnumerator(name: "act_commandfd", value: 8)
!131 = !DIEnumerator(name: "act_status", value: 9)
!132 = !DIEnumerator(name: "act_listpackages", value: 10)
!133 = !DIEnumerator(name: "act_listfiles", value: 11)
!134 = !DIEnumerator(name: "act_searchfiles", value: 12)
!135 = !DIEnumerator(name: "act_controlpath", value: 13)
!136 = !DIEnumerator(name: "act_controllist", value: 14)
!137 = !DIEnumerator(name: "act_controlshow", value: 15)
!138 = !DIEnumerator(name: "act_cmpversions", value: 16)
!139 = !DIEnumerator(name: "act_arch_add", value: 17)
!140 = !DIEnumerator(name: "act_arch_remove", value: 18)
!141 = !DIEnumerator(name: "act_printarch", value: 19)
!142 = !DIEnumerator(name: "act_printforeignarches", value: 20)
!143 = !DIEnumerator(name: "act_assertpredep", value: 21)
!144 = !DIEnumerator(name: "act_assertepoch", value: 22)
!145 = !DIEnumerator(name: "act_assertlongfilenames", value: 23)
!146 = !DIEnumerator(name: "act_assertmulticonrep", value: 24)
!147 = !DIEnumerator(name: "act_assertmultiarch", value: 25)
!148 = !DIEnumerator(name: "act_assertverprovides", value: 26)
!149 = !DIEnumerator(name: "act_validate_pkgname", value: 27)
!150 = !DIEnumerator(name: "act_validate_trigname", value: 28)
!151 = !DIEnumerator(name: "act_validate_archname", value: 29)
!152 = !DIEnumerator(name: "act_validate_version", value: 30)
!153 = !DIEnumerator(name: "act_audit", value: 31)
!154 = !DIEnumerator(name: "act_unpackchk", value: 32)
!155 = !DIEnumerator(name: "act_predeppackage", value: 33)
!156 = !DIEnumerator(name: "act_getselections", value: 34)
!157 = !DIEnumerator(name: "act_setselections", value: 35)
!158 = !DIEnumerator(name: "act_clearselections", value: 36)
!159 = !DIEnumerator(name: "act_avail", value: 37)
!160 = !DIEnumerator(name: "act_printavail", value: 38)
!161 = !DIEnumerator(name: "act_avclear", value: 39)
!162 = !DIEnumerator(name: "act_avreplace", value: 40)
!163 = !DIEnumerator(name: "act_avmerge", value: 41)
!164 = !DIEnumerator(name: "act_forgetold", value: 42)
!165 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkg_name_arch_when", file: !4, line: 396, size: 32, align: 32, elements: !166)
!166 = !{!167, !168, !169, !170}
!167 = !DIEnumerator(name: "pnaw_never", value: 0)
!168 = !DIEnumerator(name: "pnaw_nonambig", value: 1)
!169 = !DIEnumerator(name: "pnaw_foreign", value: 2)
!170 = !DIEnumerator(name: "pnaw_always", value: 3)
!171 = !{!172, !376, !351, !377}
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64, align: 64)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkginfo", file: !4, line: 195, size: 3072, align: 64, elements: !174)
!174 = !{!175, !227, !228, !229, !230, !231, !232, !233, !234, !235, !265, !266, !282, !291, !307, !308, !314, !370, !374, !375}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !173, file: !4, line: 196, baseType: !176, size: 64, align: 64)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64, align: 64)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgset", file: !4, line: 242, size: 3392, align: 64, elements: !178)
!178 = !{!179, !180, !184, !185, !225}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !177, file: !4, line: 243, baseType: !176, size: 64, align: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !177, file: !4, line: 244, baseType: !181, size: 64, align: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64, align: 64)
!182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !183)
!183 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !177, file: !4, line: 245, baseType: !173, size: 3072, align: 64, offset: 128)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "depended", scope: !177, file: !4, line: 249, baseType: !186, size: 128, align: 64, offset: 3200)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !177, file: !4, line: 246, size: 128, align: 64, elements: !187)
!187 = !{!188, !224}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !186, file: !4, line: 247, baseType: !189, size: 64, align: 64)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64, align: 64)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "deppossi", file: !4, line: 63, size: 640, align: 64, elements: !191)
!191 = !{!192, !200, !201, !202, !203, !204, !213, !220, !221, !223}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !190, file: !4, line: 64, baseType: !193, size: 64, align: 64)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64, align: 64)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dependency", file: !4, line: 56, size: 256, align: 64, elements: !195)
!195 = !{!196, !197, !198, !199}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !194, file: !4, line: 57, baseType: !172, size: 64, align: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !194, file: !4, line: 58, baseType: !193, size: 64, align: 64, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !194, file: !4, line: 59, baseType: !189, size: 64, align: 64, offset: 128)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !194, file: !4, line: 60, baseType: !3, size: 32, align: 32, offset: 192)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "ed", scope: !190, file: !4, line: 65, baseType: !176, size: 64, align: 64, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !190, file: !4, line: 66, baseType: !189, size: 64, align: 64, offset: 128)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "rev_next", scope: !190, file: !4, line: 66, baseType: !189, size: 64, align: 64, offset: 192)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "rev_prev", scope: !190, file: !4, line: 66, baseType: !189, size: 64, align: 64, offset: 256)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !190, file: !4, line: 67, baseType: !205, size: 64, align: 64, offset: 320)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64, align: 64)
!206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !207)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_arch", file: !16, line: 48, size: 192, align: 64, elements: !208)
!208 = !{!209, !211, !212}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !207, file: !16, line: 49, baseType: !210, size: 64, align: 64)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64, align: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !207, file: !16, line: 50, baseType: !181, size: 64, align: 64, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !207, file: !16, line: 51, baseType: !15, size: 32, align: 32, offset: 128)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !190, file: !4, line: 68, baseType: !214, size: 192, align: 64, offset: 384)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_version", file: !27, line: 42, size: 192, align: 64, elements: !215)
!215 = !{!216, !218, !219}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !214, file: !27, line: 44, baseType: !217, size: 32, align: 32)
!217 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !214, file: !27, line: 46, baseType: !181, size: 64, align: 64, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !214, file: !27, line: 48, baseType: !181, size: 64, align: 64, offset: 128)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "verrel", scope: !190, file: !4, line: 69, baseType: !26, size: 32, align: 32, offset: 576)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "arch_is_implicit", scope: !190, file: !4, line: 70, baseType: !222, size: 8, align: 8, offset: 608)
!222 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "cyclebreak", scope: !190, file: !4, line: 71, baseType: !222, size: 8, align: 8, offset: 616)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !186, file: !4, line: 248, baseType: !189, size: 64, align: 64, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "installed_instances", scope: !177, file: !4, line: 250, baseType: !226, size: 32, align: 32, offset: 3328)
!226 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "arch_next", scope: !173, file: !4, line: 197, baseType: !172, size: 64, align: 64, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "want", scope: !173, file: !4, line: 199, baseType: !35, size: 32, align: 32, offset: 128)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "eflag", scope: !173, file: !4, line: 201, baseType: !43, size: 32, align: 32, offset: 160)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !173, file: !4, line: 202, baseType: !47, size: 32, align: 32, offset: 192)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !173, file: !4, line: 203, baseType: !57, size: 32, align: 32, offset: 224)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "otherpriority", scope: !173, file: !4, line: 204, baseType: !181, size: 64, align: 64, offset: 256)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "section", scope: !173, file: !4, line: 205, baseType: !181, size: 64, align: 64, offset: 320)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "configversion", scope: !173, file: !4, line: 206, baseType: !214, size: 192, align: 64, offset: 384)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !173, file: !4, line: 207, baseType: !236, size: 960, align: 64, offset: 576)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgbin", file: !4, line: 107, size: 960, align: 64, elements: !237)
!237 = !{!238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !258}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "depends", scope: !236, file: !4, line: 108, baseType: !193, size: 64, align: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "essential", scope: !236, file: !4, line: 110, baseType: !222, size: 8, align: 8, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "multiarch", scope: !236, file: !4, line: 111, baseType: !67, size: 32, align: 32, offset: 96)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !236, file: !4, line: 112, baseType: !205, size: 64, align: 64, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "pkgname_archqual", scope: !236, file: !4, line: 115, baseType: !181, size: 64, align: 64, offset: 192)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !236, file: !4, line: 116, baseType: !181, size: 64, align: 64, offset: 256)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "maintainer", scope: !236, file: !4, line: 117, baseType: !181, size: 64, align: 64, offset: 320)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !236, file: !4, line: 118, baseType: !181, size: 64, align: 64, offset: 384)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "installedsize", scope: !236, file: !4, line: 119, baseType: !181, size: 64, align: 64, offset: 448)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !236, file: !4, line: 120, baseType: !181, size: 64, align: 64, offset: 512)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "bugs", scope: !236, file: !4, line: 121, baseType: !181, size: 64, align: 64, offset: 576)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !236, file: !4, line: 122, baseType: !214, size: 192, align: 64, offset: 640)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "conffiles", scope: !236, file: !4, line: 123, baseType: !251, size: 64, align: 64, offset: 832)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64, align: 64)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conffile", file: !4, line: 80, size: 256, align: 64, elements: !253)
!253 = !{!254, !255, !256, !257}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !252, file: !4, line: 81, baseType: !251, size: 64, align: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !252, file: !4, line: 82, baseType: !181, size: 64, align: 64, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !252, file: !4, line: 83, baseType: !181, size: 64, align: 64, offset: 128)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "obsolete", scope: !252, file: !4, line: 84, baseType: !222, size: 8, align: 8, offset: 192)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "arbs", scope: !236, file: !4, line: 124, baseType: !259, size: 64, align: 64, offset: 896)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64, align: 64)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arbitraryfield", file: !4, line: 74, size: 192, align: 64, elements: !261)
!261 = !{!262, !263, !264}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !260, file: !4, line: 75, baseType: !259, size: 64, align: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !260, file: !4, line: 76, baseType: !181, size: 64, align: 64, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !260, file: !4, line: 77, baseType: !181, size: 64, align: 64, offset: 128)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !173, file: !4, line: 208, baseType: !236, size: 960, align: 64, offset: 1536)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "clientdata", scope: !173, file: !4, line: 209, baseType: !267, size: 64, align: 64, offset: 2496)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64, align: 64)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perpackagestate", file: !74, line: 53, size: 256, align: 64, elements: !269)
!269 = !{!270, !271, !272, !273, !274, !275}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "istobe", scope: !268, file: !74, line: 54, baseType: !73, size: 32, align: 32)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !268, file: !74, line: 57, baseType: !81, size: 32, align: 32, offset: 32)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !268, file: !74, line: 59, baseType: !222, size: 8, align: 8, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "replacingfilesandsaid", scope: !268, file: !74, line: 61, baseType: !226, size: 32, align: 32, offset: 96)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "cmdline_seen", scope: !268, file: !74, line: 62, baseType: !226, size: 32, align: 32, offset: 128)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "trigprocdeferred", scope: !268, file: !74, line: 65, baseType: !276, size: 64, align: 64, offset: 192)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64, align: 64)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_list", file: !278, line: 34, size: 128, align: 64, elements: !279)
!278 = !DIFile(filename: "../lib/dpkg/pkg-list.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!279 = !{!280, !281}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !277, file: !278, line: 35, baseType: !276, size: 64, align: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !277, file: !278, line: 36, baseType: !172, size: 64, align: 64, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "archives", scope: !173, file: !4, line: 211, baseType: !283, size: 64, align: 64, offset: 2560)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64, align: 64)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archivedetails", file: !4, line: 87, size: 320, align: 64, elements: !285)
!285 = !{!286, !287, !288, !289, !290}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !284, file: !4, line: 88, baseType: !283, size: 64, align: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !284, file: !4, line: 89, baseType: !181, size: 64, align: 64, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "msdosname", scope: !284, file: !4, line: 90, baseType: !181, size: 64, align: 64, offset: 128)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !284, file: !4, line: 91, baseType: !181, size: 64, align: 64, offset: 192)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "md5sum", scope: !284, file: !4, line: 92, baseType: !181, size: 64, align: 64, offset: 256)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "trigaw", scope: !173, file: !4, line: 216, baseType: !292, size: 128, align: 64, offset: 2624)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !173, file: !4, line: 213, size: 128, align: 64, elements: !293)
!293 = !{!294, !306}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !292, file: !4, line: 215, baseType: !295, size: 64, align: 64)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64, align: 64)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigaw", file: !4, line: 142, size: 320, align: 64, elements: !297)
!297 = !{!298, !299, !300, !301}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "aw", scope: !296, file: !4, line: 143, baseType: !172, size: 64, align: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "pend", scope: !296, file: !4, line: 143, baseType: !172, size: 64, align: 64, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "samepend_next", scope: !296, file: !4, line: 144, baseType: !295, size: 64, align: 64, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "sameaw", scope: !296, file: !4, line: 147, baseType: !302, size: 128, align: 64, offset: 192)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !296, file: !4, line: 145, size: 128, align: 64, elements: !303)
!303 = !{!304, !305}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !302, file: !4, line: 146, baseType: !295, size: 64, align: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !302, file: !4, line: 146, baseType: !295, size: 64, align: 64, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !292, file: !4, line: 215, baseType: !295, size: 64, align: 64, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "othertrigaw_head", scope: !173, file: !4, line: 219, baseType: !295, size: 64, align: 64, offset: 2752)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "trigpend_head", scope: !173, file: !4, line: 220, baseType: !309, size: 64, align: 64, offset: 2816)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64, align: 64)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigpend", file: !4, line: 134, size: 128, align: 64, elements: !311)
!311 = !{!312, !313}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !310, file: !4, line: 135, baseType: !309, size: 64, align: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !310, file: !4, line: 136, baseType: !181, size: 64, align: 64, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !173, file: !4, line: 231, baseType: !315, size: 64, align: 64, offset: 2880)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64, align: 64)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode_list", file: !87, line: 122, size: 128, align: 64, elements: !317)
!317 = !{!318, !319}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !316, file: !87, line: 123, baseType: !315, size: 64, align: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "namenode", scope: !316, file: !87, line: 124, baseType: !320, size: 64, align: 64, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64, align: 64)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode", file: !87, line: 90, size: 640, align: 64, elements: !322)
!322 = !{!323, !324, !325, !326, !334, !353, !356, !357, !358, !359}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !321, file: !87, line: 91, baseType: !320, size: 64, align: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !321, file: !87, line: 92, baseType: !181, size: 64, align: 64, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "packages", scope: !321, file: !87, line: 93, baseType: !276, size: 64, align: 64, offset: 128)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "divert", scope: !321, file: !87, line: 94, baseType: !327, size: 64, align: 64, offset: 192)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64, align: 64)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_diversion", file: !87, line: 151, size: 256, align: 64, elements: !329)
!329 = !{!330, !331, !332, !333}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "useinstead", scope: !328, file: !87, line: 152, baseType: !320, size: 64, align: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "camefrom", scope: !328, file: !87, line: 153, baseType: !320, size: 64, align: 64, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "pkgset", scope: !328, file: !87, line: 154, baseType: !176, size: 64, align: 64, offset: 128)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !328, file: !87, line: 157, baseType: !327, size: 64, align: 64, offset: 192)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "statoverride", scope: !321, file: !87, line: 101, baseType: !335, size: 64, align: 64, offset: 256)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64, align: 64)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_stat", file: !337, line: 40, size: 256, align: 64, elements: !338)
!337 = !DIFile(filename: "../lib/dpkg/file.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!338 = !{!339, !344, !347, !350, !352}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !336, file: !337, line: 41, baseType: !340, size: 32, align: 32)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !341, line: 80, baseType: !342)
!341 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !343, line: 125, baseType: !217)
!343 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!344 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !336, file: !337, line: 42, baseType: !345, size: 32, align: 32, offset: 32)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !341, line: 65, baseType: !346)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !343, line: 126, baseType: !217)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !336, file: !337, line: 43, baseType: !348, size: 32, align: 32, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !341, line: 70, baseType: !349)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !343, line: 129, baseType: !217)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "uname", scope: !336, file: !337, line: 47, baseType: !351, size: 64, align: 64, offset: 128)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64, align: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !336, file: !337, line: 48, baseType: !351, size: 64, align: 64, offset: 192)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "trig_interested", scope: !321, file: !87, line: 103, baseType: !354, size: 64, align: 64, offset: 320)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64, align: 64)
!355 = !DICompositeType(tag: DW_TAG_structure_type, name: "trigfileint", file: !87, line: 103, flags: DIFlagFwdDecl)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !321, file: !87, line: 111, baseType: !86, size: 32, align: 32, offset: 384)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "oldhash", scope: !321, file: !87, line: 114, baseType: !181, size: 64, align: 64, offset: 448)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "newhash", scope: !321, file: !87, line: 117, baseType: !181, size: 64, align: 64, offset: 512)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "file_ondisk_id", scope: !321, file: !87, line: 119, baseType: !360, size: 64, align: 64, offset: 576)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64, align: 64)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ondisk_id", file: !87, line: 85, size: 128, align: 64, elements: !362)
!362 = !{!363, !367}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "id_dev", scope: !361, file: !87, line: 86, baseType: !364, size: 64, align: 64)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !341, line: 60, baseType: !365)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !343, line: 124, baseType: !366)
!366 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "id_ino", scope: !361, file: !87, line: 87, baseType: !368, size: 64, align: 64, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !341, line: 48, baseType: !369)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !343, line: 127, baseType: !366)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_phys_offs", scope: !173, file: !4, line: 232, baseType: !371, size: 64, align: 64, offset: 2944)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !341, line: 86, baseType: !372)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !343, line: 131, baseType: !373)
!373 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_valid", scope: !173, file: !4, line: 233, baseType: !222, size: 8, align: 8, offset: 3008)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "status_dirty", scope: !173, file: !4, line: 236, baseType: !222, size: 8, align: 8, offset: 3016)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!378 = !{!379, !381}
!379 = distinct !DIGlobalVariable(name: "cleanup_pkg_failed", scope: !0, file: !380, line: 48, type: !226, isLocal: false, isDefinition: true, variable: i32* @cleanup_pkg_failed)
!380 = !DIFile(filename: "cleanup.c", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!381 = distinct !DIGlobalVariable(name: "cleanup_conflictor_failed", scope: !0, file: !380, line: 48, type: !226, isLocal: false, isDefinition: true, variable: i32* @cleanup_conflictor_failed)
!382 = !{i32 2, !"Dwarf Version", i32 4}
!383 = !{i32 2, !"Debug Info Version", i32 3}
!384 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!385 = distinct !DISubprogram(name: "cu_installnew", scope: !380, file: !380, line: 68, type: !386, isLocal: false, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !389)
!386 = !DISubroutineType(types: !387)
!387 = !{null, !226, !388}
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64, align: 64)
!389 = !{}
!390 = !DILocalVariable(name: "argc", arg: 1, scope: !385, file: !380, line: 68, type: !226)
!391 = !DIExpression()
!392 = !DILocation(line: 68, column: 24, scope: !385)
!393 = !DILocalVariable(name: "argv", arg: 2, scope: !385, file: !380, line: 68, type: !388)
!394 = !DILocation(line: 68, column: 37, scope: !385)
!395 = !DILocalVariable(name: "namenode", scope: !385, file: !380, line: 69, type: !320)
!396 = !DILocation(line: 69, column: 25, scope: !385)
!397 = !DILocation(line: 69, column: 36, scope: !385)
!398 = !DILocalVariable(name: "stab", scope: !385, file: !380, line: 70, type: !399)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !400, line: 46, size: 1152, align: 64, elements: !401)
!400 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!401 = !{!402, !403, !404, !406, !407, !408, !409, !410, !411, !412, !414, !416, !424, !425, !426}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !399, file: !400, line: 48, baseType: !365, size: 64, align: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !399, file: !400, line: 53, baseType: !369, size: 64, align: 64, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !399, file: !400, line: 61, baseType: !405, size: 64, align: 64, offset: 128)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !343, line: 130, baseType: !366)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !399, file: !400, line: 62, baseType: !349, size: 32, align: 32, offset: 192)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !399, file: !400, line: 64, baseType: !342, size: 32, align: 32, offset: 224)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !399, file: !400, line: 65, baseType: !346, size: 32, align: 32, offset: 256)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !399, file: !400, line: 67, baseType: !226, size: 32, align: 32, offset: 288)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !399, file: !400, line: 69, baseType: !365, size: 64, align: 64, offset: 320)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !399, file: !400, line: 74, baseType: !372, size: 64, align: 64, offset: 384)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !399, file: !400, line: 78, baseType: !413, size: 64, align: 64, offset: 448)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !343, line: 153, baseType: !373)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !399, file: !400, line: 80, baseType: !415, size: 64, align: 64, offset: 512)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !343, line: 158, baseType: !373)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !399, file: !400, line: 91, baseType: !417, size: 128, align: 64, offset: 576)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !418, line: 120, size: 128, align: 64, elements: !419)
!418 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!419 = !{!420, !422}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !417, file: !418, line: 122, baseType: !421, size: 64, align: 64)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !343, line: 139, baseType: !373)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !417, file: !418, line: 123, baseType: !423, size: 64, align: 64, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !343, line: 175, baseType: !373)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !399, file: !400, line: 92, baseType: !417, size: 128, align: 64, offset: 704)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !399, file: !400, line: 93, baseType: !417, size: 128, align: 64, offset: 832)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !399, file: !400, line: 106, baseType: !427, size: 192, align: 64, offset: 960)
!427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, size: 192, align: 64, elements: !428)
!428 = !{!429}
!429 = !DISubrange(count: 3)
!430 = !DILocation(line: 70, column: 15, scope: !385)
!431 = !DILocation(line: 72, column: 21, scope: !385)
!432 = !DILocation(line: 72, column: 50, scope: !385)
!433 = !DILocation(line: 75, column: 9, scope: !385)
!434 = !DILocation(line: 75, column: 19, scope: !385)
!435 = !DILocation(line: 75, column: 25, scope: !385)
!436 = !DILocation(line: 75, column: 35, scope: !385)
!437 = !DILocation(line: 74, column: 3, scope: !385)
!438 = !DILocation(line: 77, column: 17, scope: !385)
!439 = !DILocation(line: 77, column: 27, scope: !385)
!440 = !DILocation(line: 77, column: 3, scope: !385)
!441 = !DILocation(line: 79, column: 9, scope: !442)
!442 = distinct !DILexicalBlock(scope: !385, file: !380, line: 79, column: 7)
!443 = !DILocation(line: 79, column: 19, scope: !442)
!444 = !DILocation(line: 79, column: 25, scope: !442)
!445 = !DILocation(line: 79, column: 43, scope: !442)
!446 = !DILocation(line: 79, column: 64, scope: !447)
!447 = !DILexicalBlockFile(scope: !442, file: !380, discriminator: 1)
!448 = !DILocation(line: 79, column: 47, scope: !447)
!449 = !DILocation(line: 79, column: 7, scope: !447)
!450 = !DILocation(line: 82, column: 9, scope: !451)
!451 = distinct !DILexicalBlock(scope: !452, file: !380, line: 82, column: 9)
!452 = distinct !DILexicalBlock(scope: !442, file: !380, line: 79, column: 76)
!453 = !DILocation(line: 82, column: 19, scope: !451)
!454 = !DILocation(line: 82, column: 25, scope: !451)
!455 = !DILocation(line: 82, column: 9, scope: !452)
!456 = !DILocation(line: 85, column: 7, scope: !457)
!457 = distinct !DILexicalBlock(scope: !451, file: !380, line: 82, column: 53)
!458 = !DILocation(line: 86, column: 33, scope: !459)
!459 = distinct !DILexicalBlock(scope: !457, file: !380, line: 86, column: 11)
!460 = !DILocation(line: 86, column: 11, scope: !459)
!461 = !DILocation(line: 86, column: 38, scope: !459)
!462 = !DILocation(line: 86, column: 42, scope: !463)
!463 = !DILexicalBlockFile(scope: !459, file: !380, discriminator: 1)
!464 = !DILocation(line: 86, column: 41, scope: !463)
!465 = !DILocation(line: 86, column: 46, scope: !463)
!466 = !DILocation(line: 86, column: 56, scope: !463)
!467 = !DILocation(line: 86, column: 61, scope: !468)
!468 = !DILexicalBlockFile(scope: !459, file: !380, discriminator: 2)
!469 = !DILocation(line: 86, column: 60, scope: !468)
!470 = !DILocation(line: 86, column: 65, scope: !468)
!471 = !DILocation(line: 86, column: 11, scope: !468)
!472 = !DILocation(line: 87, column: 17, scope: !459)
!473 = !DILocation(line: 88, column: 51, scope: !459)
!474 = !DILocation(line: 88, column: 61, scope: !459)
!475 = !DILocation(line: 87, column: 9, scope: !463)
!476 = !DILocation(line: 87, column: 9, scope: !459)
!477 = !DILocation(line: 89, column: 5, scope: !457)
!478 = !DILocation(line: 90, column: 7, scope: !479)
!479 = distinct !DILexicalBlock(scope: !451, file: !380, line: 89, column: 12)
!480 = !DILocation(line: 93, column: 27, scope: !481)
!481 = distinct !DILexicalBlock(scope: !452, file: !380, line: 93, column: 9)
!482 = !DILocation(line: 93, column: 39, scope: !481)
!483 = !DILocation(line: 93, column: 9, scope: !481)
!484 = !DILocation(line: 93, column: 9, scope: !452)
!485 = !DILocation(line: 94, column: 15, scope: !481)
!486 = !DILocation(line: 94, column: 72, scope: !481)
!487 = !DILocation(line: 94, column: 82, scope: !481)
!488 = !DILocation(line: 94, column: 7, scope: !489)
!489 = !DILexicalBlockFile(scope: !481, file: !380, discriminator: 1)
!490 = !DILocation(line: 94, column: 7, scope: !481)
!491 = !DILocation(line: 97, column: 32, scope: !492)
!492 = distinct !DILexicalBlock(scope: !481, file: !380, line: 97, column: 14)
!493 = !DILocation(line: 97, column: 14, scope: !492)
!494 = !DILocation(line: 97, column: 37, scope: !492)
!495 = !DILocation(line: 97, column: 41, scope: !496)
!496 = !DILexicalBlockFile(scope: !492, file: !380, discriminator: 1)
!497 = !DILocation(line: 97, column: 40, scope: !496)
!498 = !DILocation(line: 97, column: 45, scope: !496)
!499 = !DILocation(line: 97, column: 14, scope: !496)
!500 = !DILocation(line: 98, column: 15, scope: !492)
!501 = !DILocation(line: 98, column: 68, scope: !492)
!502 = !DILocation(line: 98, column: 78, scope: !492)
!503 = !DILocation(line: 98, column: 7, scope: !496)
!504 = !DILocation(line: 98, column: 7, scope: !492)
!505 = !DILocation(line: 99, column: 3, scope: !452)
!506 = !DILocation(line: 99, column: 14, scope: !507)
!507 = !DILexicalBlockFile(scope: !508, file: !380, discriminator: 1)
!508 = distinct !DILexicalBlock(scope: !442, file: !380, line: 99, column: 14)
!509 = !DILocation(line: 99, column: 24, scope: !507)
!510 = !DILocation(line: 99, column: 30, scope: !507)
!511 = !DILocation(line: 100, column: 5, scope: !512)
!512 = distinct !DILexicalBlock(scope: !508, file: !380, line: 99, column: 53)
!513 = !DILocation(line: 101, column: 31, scope: !514)
!514 = distinct !DILexicalBlock(scope: !512, file: !380, line: 101, column: 9)
!515 = !DILocation(line: 101, column: 9, scope: !514)
!516 = !DILocation(line: 101, column: 36, scope: !514)
!517 = !DILocation(line: 101, column: 40, scope: !518)
!518 = !DILexicalBlockFile(scope: !514, file: !380, discriminator: 1)
!519 = !DILocation(line: 101, column: 39, scope: !518)
!520 = !DILocation(line: 101, column: 44, scope: !518)
!521 = !DILocation(line: 101, column: 54, scope: !518)
!522 = !DILocation(line: 101, column: 59, scope: !523)
!523 = !DILexicalBlockFile(scope: !514, file: !380, discriminator: 2)
!524 = !DILocation(line: 101, column: 58, scope: !523)
!525 = !DILocation(line: 101, column: 63, scope: !523)
!526 = !DILocation(line: 101, column: 9, scope: !523)
!527 = !DILocation(line: 102, column: 15, scope: !514)
!528 = !DILocation(line: 103, column: 8, scope: !514)
!529 = !DILocation(line: 103, column: 18, scope: !514)
!530 = !DILocation(line: 102, column: 7, scope: !518)
!531 = !DILocation(line: 102, column: 7, scope: !514)
!532 = !DILocation(line: 104, column: 3, scope: !512)
!533 = !DILocation(line: 105, column: 5, scope: !534)
!534 = distinct !DILexicalBlock(scope: !508, file: !380, line: 104, column: 10)
!535 = !DILocation(line: 108, column: 32, scope: !536)
!536 = distinct !DILexicalBlock(scope: !385, file: !380, line: 108, column: 7)
!537 = !DILocation(line: 108, column: 7, scope: !536)
!538 = !DILocation(line: 108, column: 37, scope: !536)
!539 = !DILocation(line: 108, column: 41, scope: !540)
!540 = !DILexicalBlockFile(scope: !536, file: !380, discriminator: 1)
!541 = !DILocation(line: 108, column: 40, scope: !540)
!542 = !DILocation(line: 108, column: 45, scope: !540)
!543 = !DILocation(line: 108, column: 55, scope: !540)
!544 = !DILocation(line: 108, column: 60, scope: !545)
!545 = !DILexicalBlockFile(scope: !536, file: !380, discriminator: 2)
!546 = !DILocation(line: 108, column: 59, scope: !545)
!547 = !DILocation(line: 108, column: 64, scope: !545)
!548 = !DILocation(line: 108, column: 7, scope: !545)
!549 = !DILocation(line: 109, column: 13, scope: !536)
!550 = !DILocation(line: 110, column: 13, scope: !536)
!551 = !DILocation(line: 110, column: 23, scope: !536)
!552 = !DILocation(line: 109, column: 5, scope: !540)
!553 = !DILocation(line: 109, column: 5, scope: !536)
!554 = !DILocation(line: 112, column: 21, scope: !385)
!555 = !DILocation(line: 112, column: 50, scope: !385)
!556 = !DILocation(line: 113, column: 1, scope: !385)
!557 = distinct !DISubprogram(name: "cu_prermupgrade", scope: !380, file: !380, line: 115, type: !386, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !389)
!558 = !DILocalVariable(name: "argc", arg: 1, scope: !557, file: !380, line: 115, type: !226)
!559 = !DILocation(line: 115, column: 26, scope: !557)
!560 = !DILocalVariable(name: "argv", arg: 2, scope: !557, file: !380, line: 115, type: !388)
!561 = !DILocation(line: 115, column: 39, scope: !557)
!562 = !DILocalVariable(name: "pkg", scope: !557, file: !380, line: 116, type: !172)
!563 = !DILocation(line: 116, column: 19, scope: !557)
!564 = !DILocation(line: 116, column: 41, scope: !557)
!565 = !DILocation(line: 116, column: 24, scope: !557)
!566 = !DILocation(line: 118, column: 25, scope: !567)
!567 = distinct !DILexicalBlock(scope: !557, file: !380, line: 118, column: 7)
!568 = !DILocation(line: 118, column: 7, scope: !557)
!569 = !DILocation(line: 118, column: 29, scope: !570)
!570 = !DILexicalBlockFile(scope: !567, file: !380, discriminator: 1)
!571 = !DILocation(line: 119, column: 24, scope: !557)
!572 = !DILocation(line: 120, column: 41, scope: !557)
!573 = !DILocation(line: 120, column: 46, scope: !557)
!574 = !DILocation(line: 120, column: 56, scope: !557)
!575 = !DILocation(line: 120, column: 24, scope: !557)
!576 = !DILocation(line: 119, column: 3, scope: !557)
!577 = !DILocation(line: 122, column: 20, scope: !557)
!578 = !DILocation(line: 122, column: 3, scope: !557)
!579 = !DILocation(line: 123, column: 23, scope: !557)
!580 = !DILocation(line: 123, column: 3, scope: !557)
!581 = !DILocation(line: 124, column: 21, scope: !557)
!582 = !DILocation(line: 125, column: 1, scope: !557)
!583 = !DILocation(line: 125, column: 1, scope: !584)
!584 = !DILexicalBlockFile(scope: !557, file: !380, discriminator: 1)
!585 = distinct !DISubprogram(name: "ok_prermdeconfigure", scope: !380, file: !380, line: 131, type: !386, isLocal: false, isDefinition: true, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !389)
!586 = !DILocalVariable(name: "argc", arg: 1, scope: !585, file: !380, line: 131, type: !226)
!587 = !DILocation(line: 131, column: 30, scope: !585)
!588 = !DILocalVariable(name: "argv", arg: 2, scope: !585, file: !380, line: 131, type: !388)
!589 = !DILocation(line: 131, column: 43, scope: !585)
!590 = !DILocalVariable(name: "deconf", scope: !585, file: !380, line: 132, type: !172)
!591 = !DILocation(line: 132, column: 19, scope: !585)
!592 = !DILocation(line: 132, column: 44, scope: !585)
!593 = !DILocation(line: 132, column: 27, scope: !585)
!594 = !DILocation(line: 134, column: 7, scope: !595)
!595 = distinct !DILexicalBlock(scope: !585, file: !380, line: 134, column: 7)
!596 = !DILocation(line: 134, column: 18, scope: !595)
!597 = !DILocation(line: 134, column: 26, scope: !595)
!598 = !DILocation(line: 134, column: 7, scope: !585)
!599 = !DILocation(line: 135, column: 21, scope: !595)
!600 = !DILocation(line: 135, column: 5, scope: !595)
!601 = !DILocation(line: 136, column: 1, scope: !585)
!602 = distinct !DISubprogram(name: "cu_prermdeconfigure", scope: !380, file: !380, line: 141, type: !386, isLocal: false, isDefinition: true, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !389)
!603 = !DILocalVariable(name: "argc", arg: 1, scope: !602, file: !380, line: 141, type: !226)
!604 = !DILocation(line: 141, column: 30, scope: !602)
!605 = !DILocalVariable(name: "argv", arg: 2, scope: !602, file: !380, line: 141, type: !388)
!606 = !DILocation(line: 141, column: 43, scope: !602)
!607 = !DILocalVariable(name: "deconf", scope: !602, file: !380, line: 142, type: !172)
!608 = !DILocation(line: 142, column: 19, scope: !602)
!609 = !DILocation(line: 142, column: 44, scope: !602)
!610 = !DILocation(line: 142, column: 27, scope: !602)
!611 = !DILocalVariable(name: "conflictor", scope: !602, file: !380, line: 143, type: !172)
!612 = !DILocation(line: 143, column: 19, scope: !602)
!613 = !DILocation(line: 143, column: 50, scope: !602)
!614 = !DILocation(line: 143, column: 32, scope: !602)
!615 = !DILocalVariable(name: "infavour", scope: !602, file: !380, line: 144, type: !172)
!616 = !DILocation(line: 144, column: 19, scope: !602)
!617 = !DILocation(line: 144, column: 46, scope: !602)
!618 = !DILocation(line: 144, column: 29, scope: !602)
!619 = !DILocation(line: 146, column: 7, scope: !620)
!620 = distinct !DILexicalBlock(scope: !602, file: !380, line: 146, column: 7)
!621 = !DILocation(line: 146, column: 7, scope: !602)
!622 = !DILocation(line: 147, column: 26, scope: !623)
!623 = distinct !DILexicalBlock(scope: !620, file: !380, line: 146, column: 19)
!624 = !DILocation(line: 149, column: 38, scope: !623)
!625 = !DILocation(line: 149, column: 49, scope: !623)
!626 = !DILocation(line: 149, column: 59, scope: !623)
!627 = !DILocation(line: 149, column: 26, scope: !623)
!628 = !DILocation(line: 151, column: 43, scope: !623)
!629 = !DILocation(line: 151, column: 53, scope: !623)
!630 = !DILocation(line: 151, column: 63, scope: !623)
!631 = !DILocation(line: 151, column: 26, scope: !623)
!632 = !DILocation(line: 154, column: 35, scope: !623)
!633 = !DILocation(line: 154, column: 26, scope: !623)
!634 = !DILocation(line: 155, column: 43, scope: !623)
!635 = !DILocation(line: 155, column: 55, scope: !623)
!636 = !DILocation(line: 155, column: 65, scope: !623)
!637 = !DILocation(line: 155, column: 26, scope: !623)
!638 = !DILocation(line: 147, column: 5, scope: !623)
!639 = !DILocation(line: 158, column: 3, scope: !623)
!640 = !DILocation(line: 159, column: 26, scope: !641)
!641 = distinct !DILexicalBlock(scope: !620, file: !380, line: 158, column: 10)
!642 = !DILocation(line: 161, column: 38, scope: !641)
!643 = !DILocation(line: 161, column: 49, scope: !641)
!644 = !DILocation(line: 161, column: 59, scope: !641)
!645 = !DILocation(line: 161, column: 26, scope: !641)
!646 = !DILocation(line: 163, column: 43, scope: !641)
!647 = !DILocation(line: 163, column: 53, scope: !641)
!648 = !DILocation(line: 163, column: 63, scope: !641)
!649 = !DILocation(line: 163, column: 26, scope: !641)
!650 = !DILocation(line: 159, column: 5, scope: !641)
!651 = !DILocation(line: 168, column: 23, scope: !602)
!652 = !DILocation(line: 168, column: 3, scope: !602)
!653 = !DILocation(line: 169, column: 1, scope: !602)
!654 = distinct !DISubprogram(name: "cu_prerminfavour", scope: !380, file: !380, line: 171, type: !386, isLocal: false, isDefinition: true, scopeLine: 171, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !389)
!655 = !DILocalVariable(name: "argc", arg: 1, scope: !654, file: !380, line: 171, type: !226)
!656 = !DILocation(line: 171, column: 27, scope: !654)
!657 = !DILocalVariable(name: "argv", arg: 2, scope: !654, file: !380, line: 171, type: !388)
!658 = !DILocation(line: 171, column: 40, scope: !654)
!659 = !DILocalVariable(name: "conflictor", scope: !654, file: !380, line: 172, type: !172)
!660 = !DILocation(line: 172, column: 19, scope: !654)
!661 = !DILocation(line: 172, column: 48, scope: !654)
!662 = !DILocation(line: 172, column: 31, scope: !654)
!663 = !DILocalVariable(name: "infavour", scope: !654, file: !380, line: 173, type: !172)
!664 = !DILocation(line: 173, column: 19, scope: !654)
!665 = !DILocation(line: 173, column: 46, scope: !654)
!666 = !DILocation(line: 173, column: 29, scope: !654)
!667 = !DILocation(line: 175, column: 32, scope: !668)
!668 = distinct !DILexicalBlock(scope: !654, file: !380, line: 175, column: 7)
!669 = !DILocation(line: 175, column: 7, scope: !654)
!670 = !DILocation(line: 175, column: 36, scope: !671)
!671 = !DILexicalBlockFile(scope: !668, file: !380, discriminator: 1)
!672 = !DILocation(line: 176, column: 24, scope: !654)
!673 = !DILocation(line: 178, column: 36, scope: !654)
!674 = !DILocation(line: 178, column: 47, scope: !654)
!675 = !DILocation(line: 178, column: 57, scope: !654)
!676 = !DILocation(line: 178, column: 24, scope: !654)
!677 = !DILocation(line: 180, column: 41, scope: !654)
!678 = !DILocation(line: 180, column: 51, scope: !654)
!679 = !DILocation(line: 180, column: 61, scope: !654)
!680 = !DILocation(line: 180, column: 24, scope: !654)
!681 = !DILocation(line: 176, column: 3, scope: !654)
!682 = !DILocation(line: 183, column: 20, scope: !654)
!683 = !DILocation(line: 183, column: 3, scope: !654)
!684 = !DILocation(line: 184, column: 23, scope: !654)
!685 = !DILocation(line: 184, column: 3, scope: !654)
!686 = !DILocation(line: 185, column: 28, scope: !654)
!687 = !DILocation(line: 186, column: 1, scope: !654)
!688 = !DILocation(line: 186, column: 1, scope: !689)
!689 = !DILexicalBlockFile(scope: !654, file: !380, discriminator: 1)
!690 = distinct !DISubprogram(name: "cu_preinstverynew", scope: !380, file: !380, line: 188, type: !386, isLocal: false, isDefinition: true, scopeLine: 188, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !389)
!691 = !DILocalVariable(name: "argc", arg: 1, scope: !690, file: !380, line: 188, type: !226)
!692 = !DILocation(line: 188, column: 28, scope: !690)
!693 = !DILocalVariable(name: "argv", arg: 2, scope: !690, file: !380, line: 188, type: !388)
!694 = !DILocation(line: 188, column: 41, scope: !690)
!695 = !DILocalVariable(name: "pkg", scope: !690, file: !380, line: 189, type: !172)
!696 = !DILocation(line: 189, column: 19, scope: !690)
!697 = !DILocation(line: 189, column: 41, scope: !690)
!698 = !DILocation(line: 189, column: 24, scope: !690)
!699 = !DILocalVariable(name: "cidir", scope: !690, file: !380, line: 190, type: !351)
!700 = !DILocation(line: 190, column: 9, scope: !690)
!701 = !DILocation(line: 190, column: 23, scope: !690)
!702 = !DILocalVariable(name: "cidirrest", scope: !690, file: !380, line: 191, type: !351)
!703 = !DILocation(line: 191, column: 9, scope: !690)
!704 = !DILocation(line: 191, column: 27, scope: !690)
!705 = !DILocation(line: 193, column: 25, scope: !706)
!706 = distinct !DILexicalBlock(scope: !690, file: !380, line: 193, column: 7)
!707 = !DILocation(line: 193, column: 7, scope: !690)
!708 = !DILocation(line: 193, column: 29, scope: !709)
!709 = !DILexicalBlockFile(scope: !706, file: !380, discriminator: 1)
!710 = !DILocation(line: 194, column: 19, scope: !690)
!711 = !DILocation(line: 194, column: 50, scope: !690)
!712 = !DILocation(line: 194, column: 57, scope: !690)
!713 = !DILocation(line: 194, column: 3, scope: !690)
!714 = !DILocation(line: 196, column: 18, scope: !690)
!715 = !DILocation(line: 196, column: 3, scope: !690)
!716 = !DILocation(line: 197, column: 20, scope: !690)
!717 = !DILocation(line: 197, column: 3, scope: !690)
!718 = !DILocation(line: 198, column: 17, scope: !690)
!719 = !DILocation(line: 198, column: 22, scope: !690)
!720 = !DILocation(line: 198, column: 3, scope: !690)
!721 = !DILocation(line: 199, column: 18, scope: !690)
!722 = !DILocation(line: 199, column: 3, scope: !690)
!723 = !DILocation(line: 200, column: 21, scope: !690)
!724 = !DILocation(line: 201, column: 1, scope: !690)
!725 = !DILocation(line: 201, column: 1, scope: !726)
!726 = !DILexicalBlockFile(scope: !690, file: !380, discriminator: 1)
!727 = distinct !DISubprogram(name: "cu_preinstnew", scope: !380, file: !380, line: 203, type: !386, isLocal: false, isDefinition: true, scopeLine: 203, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !389)
!728 = !DILocalVariable(name: "argc", arg: 1, scope: !727, file: !380, line: 203, type: !226)
!729 = !DILocation(line: 203, column: 24, scope: !727)
!730 = !DILocalVariable(name: "argv", arg: 2, scope: !727, file: !380, line: 203, type: !388)
!731 = !DILocation(line: 203, column: 37, scope: !727)
!732 = !DILocalVariable(name: "pkg", scope: !727, file: !380, line: 204, type: !172)
!733 = !DILocation(line: 204, column: 19, scope: !727)
!734 = !DILocation(line: 204, column: 41, scope: !727)
!735 = !DILocation(line: 204, column: 24, scope: !727)
!736 = !DILocalVariable(name: "cidir", scope: !727, file: !380, line: 205, type: !351)
!737 = !DILocation(line: 205, column: 9, scope: !727)
!738 = !DILocation(line: 205, column: 23, scope: !727)
!739 = !DILocalVariable(name: "cidirrest", scope: !727, file: !380, line: 206, type: !351)
!740 = !DILocation(line: 206, column: 9, scope: !727)
!741 = !DILocation(line: 206, column: 27, scope: !727)
!742 = !DILocation(line: 208, column: 25, scope: !743)
!743 = distinct !DILexicalBlock(scope: !727, file: !380, line: 208, column: 7)
!744 = !DILocation(line: 208, column: 7, scope: !727)
!745 = !DILocation(line: 208, column: 29, scope: !746)
!746 = !DILexicalBlockFile(scope: !743, file: !380, discriminator: 1)
!747 = !DILocation(line: 209, column: 19, scope: !727)
!748 = !DILocation(line: 209, column: 50, scope: !727)
!749 = !DILocation(line: 209, column: 57, scope: !727)
!750 = !DILocation(line: 211, column: 36, scope: !727)
!751 = !DILocation(line: 211, column: 41, scope: !727)
!752 = !DILocation(line: 211, column: 51, scope: !727)
!753 = !DILocation(line: 211, column: 19, scope: !727)
!754 = !DILocation(line: 212, column: 36, scope: !727)
!755 = !DILocation(line: 212, column: 41, scope: !727)
!756 = !DILocation(line: 212, column: 51, scope: !727)
!757 = !DILocation(line: 212, column: 19, scope: !727)
!758 = !DILocation(line: 209, column: 3, scope: !727)
!759 = !DILocation(line: 214, column: 18, scope: !727)
!760 = !DILocation(line: 214, column: 3, scope: !727)
!761 = !DILocation(line: 215, column: 20, scope: !727)
!762 = !DILocation(line: 215, column: 3, scope: !727)
!763 = !DILocation(line: 216, column: 18, scope: !727)
!764 = !DILocation(line: 216, column: 3, scope: !727)
!765 = !DILocation(line: 217, column: 21, scope: !727)
!766 = !DILocation(line: 218, column: 1, scope: !727)
!767 = !DILocation(line: 218, column: 1, scope: !768)
!768 = !DILexicalBlockFile(scope: !727, file: !380, discriminator: 1)
!769 = distinct !DISubprogram(name: "cu_preinstupgrade", scope: !380, file: !380, line: 220, type: !386, isLocal: false, isDefinition: true, scopeLine: 220, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !389)
!770 = !DILocalVariable(name: "argc", arg: 1, scope: !769, file: !380, line: 220, type: !226)
!771 = !DILocation(line: 220, column: 28, scope: !769)
!772 = !DILocalVariable(name: "argv", arg: 2, scope: !769, file: !380, line: 220, type: !388)
!773 = !DILocation(line: 220, column: 41, scope: !769)
!774 = !DILocalVariable(name: "pkg", scope: !769, file: !380, line: 221, type: !172)
!775 = !DILocation(line: 221, column: 19, scope: !769)
!776 = !DILocation(line: 221, column: 41, scope: !769)
!777 = !DILocation(line: 221, column: 24, scope: !769)
!778 = !DILocalVariable(name: "cidir", scope: !769, file: !380, line: 222, type: !351)
!779 = !DILocation(line: 222, column: 9, scope: !769)
!780 = !DILocation(line: 222, column: 23, scope: !769)
!781 = !DILocalVariable(name: "cidirrest", scope: !769, file: !380, line: 223, type: !351)
!782 = !DILocation(line: 223, column: 9, scope: !769)
!783 = !DILocation(line: 223, column: 27, scope: !769)
!784 = !DILocalVariable(name: "oldstatusp", scope: !769, file: !380, line: 224, type: !377)
!785 = !DILocation(line: 224, column: 19, scope: !769)
!786 = !DILocation(line: 224, column: 48, scope: !769)
!787 = !DILocation(line: 224, column: 31, scope: !769)
!788 = !DILocation(line: 226, column: 25, scope: !789)
!789 = distinct !DILexicalBlock(scope: !769, file: !380, line: 226, column: 7)
!790 = !DILocation(line: 226, column: 7, scope: !769)
!791 = !DILocation(line: 226, column: 29, scope: !792)
!792 = !DILexicalBlockFile(scope: !789, file: !380, discriminator: 1)
!793 = !DILocation(line: 227, column: 19, scope: !769)
!794 = !DILocation(line: 227, column: 50, scope: !769)
!795 = !DILocation(line: 227, column: 57, scope: !769)
!796 = !DILocation(line: 229, column: 36, scope: !769)
!797 = !DILocation(line: 229, column: 41, scope: !769)
!798 = !DILocation(line: 229, column: 51, scope: !769)
!799 = !DILocation(line: 229, column: 19, scope: !769)
!800 = !DILocation(line: 230, column: 36, scope: !769)
!801 = !DILocation(line: 230, column: 41, scope: !769)
!802 = !DILocation(line: 230, column: 51, scope: !769)
!803 = !DILocation(line: 230, column: 19, scope: !769)
!804 = !DILocation(line: 227, column: 3, scope: !769)
!805 = !DILocation(line: 232, column: 18, scope: !769)
!806 = !DILocation(line: 232, column: 24, scope: !769)
!807 = !DILocation(line: 232, column: 23, scope: !769)
!808 = !DILocation(line: 232, column: 3, scope: !769)
!809 = !DILocation(line: 233, column: 20, scope: !769)
!810 = !DILocation(line: 233, column: 3, scope: !769)
!811 = !DILocation(line: 234, column: 18, scope: !769)
!812 = !DILocation(line: 234, column: 3, scope: !769)
!813 = !DILocation(line: 235, column: 21, scope: !769)
!814 = !DILocation(line: 236, column: 1, scope: !769)
!815 = !DILocation(line: 236, column: 1, scope: !816)
!816 = !DILexicalBlockFile(scope: !769, file: !380, discriminator: 1)
!817 = distinct !DISubprogram(name: "cu_postrmupgrade", scope: !380, file: !380, line: 238, type: !386, isLocal: false, isDefinition: true, scopeLine: 238, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !389)
!818 = !DILocalVariable(name: "argc", arg: 1, scope: !817, file: !380, line: 238, type: !226)
!819 = !DILocation(line: 238, column: 27, scope: !817)
!820 = !DILocalVariable(name: "argv", arg: 2, scope: !817, file: !380, line: 238, type: !388)
!821 = !DILocation(line: 238, column: 40, scope: !817)
!822 = !DILocalVariable(name: "pkg", scope: !817, file: !380, line: 239, type: !172)
!823 = !DILocation(line: 239, column: 19, scope: !817)
!824 = !DILocation(line: 239, column: 41, scope: !817)
!825 = !DILocation(line: 239, column: 24, scope: !817)
!826 = !DILocation(line: 241, column: 25, scope: !827)
!827 = distinct !DILexicalBlock(scope: !817, file: !380, line: 241, column: 7)
!828 = !DILocation(line: 241, column: 7, scope: !817)
!829 = !DILocation(line: 241, column: 29, scope: !830)
!830 = !DILexicalBlockFile(scope: !827, file: !380, discriminator: 1)
!831 = !DILocation(line: 242, column: 25, scope: !817)
!832 = !DILocation(line: 244, column: 42, scope: !817)
!833 = !DILocation(line: 244, column: 47, scope: !817)
!834 = !DILocation(line: 244, column: 57, scope: !817)
!835 = !DILocation(line: 244, column: 25, scope: !817)
!836 = !DILocation(line: 242, column: 3, scope: !817)
!837 = !DILocation(line: 246, column: 21, scope: !817)
!838 = !DILocation(line: 247, column: 1, scope: !817)
!839 = !DILocation(line: 247, column: 1, scope: !840)
!840 = !DILexicalBlockFile(scope: !817, file: !380, discriminator: 1)
!841 = distinct !DISubprogram(name: "cu_prermremove", scope: !380, file: !380, line: 249, type: !386, isLocal: false, isDefinition: true, scopeLine: 249, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !389)
!842 = !DILocalVariable(name: "argc", arg: 1, scope: !841, file: !380, line: 249, type: !226)
!843 = !DILocation(line: 249, column: 25, scope: !841)
!844 = !DILocalVariable(name: "argv", arg: 2, scope: !841, file: !380, line: 249, type: !388)
!845 = !DILocation(line: 249, column: 38, scope: !841)
!846 = !DILocalVariable(name: "pkg", scope: !841, file: !380, line: 250, type: !172)
!847 = !DILocation(line: 250, column: 19, scope: !841)
!848 = !DILocation(line: 250, column: 41, scope: !841)
!849 = !DILocation(line: 250, column: 24, scope: !841)
!850 = !DILocalVariable(name: "oldpkgstatus", scope: !841, file: !380, line: 251, type: !377)
!851 = !DILocation(line: 251, column: 19, scope: !841)
!852 = !DILocation(line: 251, column: 50, scope: !841)
!853 = !DILocation(line: 251, column: 33, scope: !841)
!854 = !DILocation(line: 253, column: 25, scope: !855)
!855 = distinct !DILexicalBlock(scope: !841, file: !380, line: 253, column: 7)
!856 = !DILocation(line: 253, column: 7, scope: !841)
!857 = !DILocation(line: 253, column: 29, scope: !858)
!858 = !DILexicalBlockFile(scope: !855, file: !380, discriminator: 1)
!859 = !DILocation(line: 254, column: 24, scope: !841)
!860 = !DILocation(line: 254, column: 3, scope: !841)
!861 = !DILocation(line: 255, column: 20, scope: !841)
!862 = !DILocation(line: 255, column: 3, scope: !841)
!863 = !DILocation(line: 256, column: 23, scope: !841)
!864 = !DILocation(line: 256, column: 29, scope: !841)
!865 = !DILocation(line: 256, column: 28, scope: !841)
!866 = !DILocation(line: 256, column: 3, scope: !841)
!867 = !DILocation(line: 257, column: 21, scope: !841)
!868 = !DILocation(line: 258, column: 1, scope: !841)
!869 = !DILocation(line: 258, column: 1, scope: !870)
!870 = !DILexicalBlockFile(scope: !841, file: !380, discriminator: 1)
