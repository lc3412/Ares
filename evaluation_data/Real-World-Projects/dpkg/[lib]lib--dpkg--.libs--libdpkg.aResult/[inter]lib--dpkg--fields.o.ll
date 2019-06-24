; ModuleID = './[inter]lib--dpkg--fields.o.i'
source_filename = "./[inter]lib--dpkg--fields.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.namevalue = type { i8*, i32, i32 }
%struct.varbuf = type { i64, i64, i8* }
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
%struct.trigfileint = type { %struct.pkginfo*, %struct.pkgbin*, %struct.fsys_namenode*, i32, %struct.trigfileint*, %struct.anon.1 }
%struct.anon.1 = type { %struct.trigfileint*, %struct.trigfileint* }
%struct.file_ondisk_id = type { i64, i64 }
%struct.parsedb_state = type { i32, i32, %struct.dpkg_error, %struct.pkginfo*, %struct.pkgbin*, i8*, i8*, i8*, i8*, i32, i32 }
%struct.dpkg_error = type { i32, i32, i8* }
%struct.fieldinfo = type { i8*, i64, {}*, void (%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*)*, i64 }

@.str = private unnamed_addr constant [5 x i8] c"dpkg\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"invalid package name in '%s' field: %s\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"empty archive details '%s' field\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"archive details '%s' field not allowed in status file\00", align 1
@.str.4 = private unnamed_addr constant [67 x i8] c"too many values in archive details '%s' field (compared to others)\00", align 1
@.str.5 = private unnamed_addr constant [66 x i8] c"too few values in archive details '%s' field (compared to others)\00", align 1
@booleaninfos = external constant [0 x %struct.namevalue], align 8
@.str.6 = private unnamed_addr constant [32 x i8] c"boolean (yes/no) '%s' field: %s\00", align 1
@multiarchinfos = external constant [0 x %struct.namevalue], align 8
@.str.7 = private unnamed_addr constant [51 x i8] c"quadstate (foreign/allowed/same/no) '%s' field: %s\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"'%s' is not a valid architecture name in '%s' field: %s\00", align 1
@priorityinfos = external constant [0 x %struct.namevalue], align 8
@.str.9 = private unnamed_addr constant [23 x i8] c"word in '%s' field: %s\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"value for '%s' field not allowed in this context\00", align 1
@wantinfos = external constant [0 x %struct.namevalue], align 8
@.str.11 = private unnamed_addr constant [36 x i8] c"first (want) word in '%s' field: %s\00", align 1
@eflaginfos = external constant [0 x %struct.namevalue], align 8
@.str.12 = private unnamed_addr constant [38 x i8] c"second (error) word in '%s' field: %s\00", align 1
@statusinfos = external constant [0 x %struct.namevalue], align 8
@.str.13 = private unnamed_addr constant [38 x i8] c"third (status) word in '%s' field: %s\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"'%s' field value '%.250s'\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"obsolete '%s' field used\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1
@f_conffiles.obsolete_str = internal constant [9 x i8] c"obsolete\00", align 1
@.str.17 = private unnamed_addr constant [59 x i8] c"value for '%s' field has line starting with non-space '%c'\00", align 1
@.str.18 = private unnamed_addr constant [59 x i8] c"root or empty directory listed as a conffile in '%s' field\00", align 1
@f_dependency.depname = internal global %struct.varbuf zeroinitializer, align 8
@f_dependency.version = internal global %struct.varbuf zeroinitializer, align 8
@.str.19 = private unnamed_addr constant [73 x i8] c"'%s' field, missing package name, or garbage where package name expected\00", align 1
@.str.20 = private unnamed_addr constant [46 x i8] c"'%s' field, invalid package name '%.255s': %s\00", align 1
@f_dependency.arch = internal global %struct.varbuf zeroinitializer, align 8
@.str.21 = private unnamed_addr constant [83 x i8] c"'%s' field, missing architecture name, or garbage where architecture name expected\00", align 1
@.str.22 = private unnamed_addr constant [74 x i8] c"'%s' field, reference to '%.255s': invalid architecture name '%.255s': %s\00", align 1
@.str.23 = private unnamed_addr constant [66 x i8] c"'%s' field, reference to '%.255s':\0A bad version relationship %c%c\00", align 1
@.str.24 = private unnamed_addr constant [82 x i8] c"'%s' field, reference to '%.255s':\0A '%c' is obsolete, use '%c=' or '%c%c' instead\00", align 1
@.str.25 = private unnamed_addr constant [102 x i8] c"'%s' field, reference to '%.255s':\0A implicit exact match on version number, suggest using '=' instead\00", align 1
@.str.26 = private unnamed_addr constant [47 x i8] c"only exact versions may be used for '%s' field\00", align 1
@.str.27 = private unnamed_addr constant [103 x i8] c"'%s' field, reference to '%.255s':\0A version value starts with non-alphanumeric, suggest adding a space\00", align 1
@.str.28 = private unnamed_addr constant [57 x i8] c"'%s' field, reference to '%.255s': version contains '%c'\00", align 1
@.str.29 = private unnamed_addr constant [56 x i8] c"'%s' field, reference to '%.255s': version unterminated\00", align 1
@.str.30 = private unnamed_addr constant [48 x i8] c"'%s' field, reference to '%.255s': version '%s'\00", align 1
@.str.31 = private unnamed_addr constant [61 x i8] c"'%s' field, syntax error after reference to package '%.255s'\00", align 1
@.str.32 = private unnamed_addr constant [45 x i8] c"alternatives ('|') not allowed in '%s' field\00", align 1
@.str.33 = private unnamed_addr constant [42 x i8] c"illegal pending trigger name '%.255s': %s\00", align 1
@.str.34 = private unnamed_addr constant [35 x i8] c"duplicate pending trigger '%.255s'\00", align 1
@.str.35 = private unnamed_addr constant [53 x i8] c"illegal package name in awaited trigger '%.255s': %s\00", align 1
@.str.36 = private unnamed_addr constant [43 x i8] c"duplicate awaited trigger package '%.255s'\00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c"is missing a value\00", align 1
@.str.38 = private unnamed_addr constant [26 x i8] c"has invalid value '%.50s'\00", align 1
@.str.39 = private unnamed_addr constant [18 x i8] c"has trailing junk\00", align 1
@.str.40 = private unnamed_addr constant [47 x i8] c"value for '%s' field has malformed line '%.*s'\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"Conffiles\00", align 1
@scan_word.word = internal global %struct.varbuf zeroinitializer, align 8

; Function Attrs: nounwind uwtable
define void @f_name(%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*) #0 !dbg !422 {
  %6 = alloca %struct.pkginfo*, align 8
  %7 = alloca %struct.pkgbin*, align 8
  %8 = alloca %struct.parsedb_state*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.fieldinfo*, align 8
  %11 = alloca i8*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %6, metadata !423, metadata !424), !dbg !425
  store %struct.pkgbin* %1, %struct.pkgbin** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %7, metadata !426, metadata !424), !dbg !427
  store %struct.parsedb_state* %2, %struct.parsedb_state** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.parsedb_state** %8, metadata !428, metadata !424), !dbg !429
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !430, metadata !424), !dbg !431
  store %struct.fieldinfo* %4, %struct.fieldinfo** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.fieldinfo** %10, metadata !432, metadata !424), !dbg !433
  call void @llvm.dbg.declare(metadata i8** %11, metadata !434, metadata !424), !dbg !435
  %12 = load i8*, i8** %9, align 8, !dbg !436
  %13 = call i8* @pkg_name_is_illegal(i8* %12), !dbg !437
  store i8* %13, i8** %11, align 8, !dbg !438
  %14 = load i8*, i8** %11, align 8, !dbg !439
  %15 = icmp ne i8* %14, null, !dbg !441
  br i1 %15, label %16, label %23, !dbg !442

; <label>:16:                                     ; preds = %5
  %17 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !443
  %18 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i32 0, i32 0)) #8, !dbg !444
  %19 = load %struct.fieldinfo*, %struct.fieldinfo** %10, align 8, !dbg !445
  %20 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %19, i32 0, i32 0, !dbg !446
  %21 = load i8*, i8** %20, align 8, !dbg !446
  %22 = load i8*, i8** %11, align 8, !dbg !447
  call void (%struct.parsedb_state*, i8*, ...) @parse_error(%struct.parsedb_state* %17, i8* %18, i8* %21, i8* %22) #9, !dbg !448
  unreachable, !dbg !450

; <label>:23:                                     ; preds = %5
  %24 = load i8*, i8** %9, align 8, !dbg !451
  %25 = call %struct.pkgset* @pkg_hash_find_set(i8* %24), !dbg !452
  %26 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %25, i32 0, i32 1, !dbg !453
  %27 = load i8*, i8** %26, align 8, !dbg !453
  %28 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !454
  %29 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %28, i32 0, i32 0, !dbg !455
  %30 = load %struct.pkgset*, %struct.pkgset** %29, align 8, !dbg !455
  %31 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %30, i32 0, i32 1, !dbg !456
  store i8* %27, i8** %31, align 8, !dbg !457
  ret void, !dbg !458
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i8* @pkg_name_is_illegal(i8*) #2

; Function Attrs: noreturn
declare void @parse_error(%struct.parsedb_state*, i8*, ...) #3

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #4

declare %struct.pkgset* @pkg_hash_find_set(i8*) #2

; Function Attrs: nounwind uwtable
define void @f_archives(%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*) #0 !dbg !459 {
  %6 = alloca %struct.pkginfo*, align 8
  %7 = alloca %struct.pkgbin*, align 8
  %8 = alloca %struct.parsedb_state*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.fieldinfo*, align 8
  %11 = alloca %struct.archivedetails*, align 8
  %12 = alloca %struct.archivedetails**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.pkginfo* %0, %struct.pkginfo** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %6, metadata !460, metadata !424), !dbg !461
  store %struct.pkgbin* %1, %struct.pkgbin** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %7, metadata !462, metadata !424), !dbg !463
  store %struct.parsedb_state* %2, %struct.parsedb_state** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.parsedb_state** %8, metadata !464, metadata !424), !dbg !465
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !466, metadata !424), !dbg !467
  store %struct.fieldinfo* %4, %struct.fieldinfo** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.fieldinfo** %10, metadata !468, metadata !424), !dbg !469
  call void @llvm.dbg.declare(metadata %struct.archivedetails** %11, metadata !470, metadata !424), !dbg !471
  call void @llvm.dbg.declare(metadata %struct.archivedetails*** %12, metadata !472, metadata !424), !dbg !474
  call void @llvm.dbg.declare(metadata i8** %13, metadata !475, metadata !424), !dbg !476
  call void @llvm.dbg.declare(metadata i8** %14, metadata !477, metadata !424), !dbg !478
  call void @llvm.dbg.declare(metadata i32* %15, metadata !479, metadata !424), !dbg !480
  %16 = load i8*, i8** %9, align 8, !dbg !481
  %17 = load i8, i8* %16, align 1, !dbg !483
  %18 = icmp ne i8 %17, 0, !dbg !483
  br i1 %18, label %25, label %19, !dbg !484

; <label>:19:                                     ; preds = %5
  %20 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !485
  %21 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0)) #8, !dbg !486
  %22 = load %struct.fieldinfo*, %struct.fieldinfo** %10, align 8, !dbg !487
  %23 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %22, i32 0, i32 0, !dbg !488
  %24 = load i8*, i8** %23, align 8, !dbg !488
  call void (%struct.parsedb_state*, i8*, ...) @parse_error(%struct.parsedb_state* %20, i8* %21, i8* %24) #9, !dbg !489
  unreachable, !dbg !491

; <label>:25:                                     ; preds = %5
  %26 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !492
  %27 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %26, i32 0, i32 1, !dbg !494
  %28 = load i32, i32* %27, align 4, !dbg !494
  %29 = and i32 %28, 2, !dbg !495
  %30 = icmp ne i32 %29, 0, !dbg !495
  br i1 %30, label %37, label %31, !dbg !496

; <label>:31:                                     ; preds = %25
  %32 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !497
  %33 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i32 0, i32 0)) #8, !dbg !498
  %34 = load %struct.fieldinfo*, %struct.fieldinfo** %10, align 8, !dbg !499
  %35 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %34, i32 0, i32 0, !dbg !500
  %36 = load i8*, i8** %35, align 8, !dbg !500
  call void (%struct.parsedb_state*, i8*, ...) @parse_error(%struct.parsedb_state* %32, i8* %33, i8* %36) #9, !dbg !501
  unreachable, !dbg !501

; <label>:37:                                     ; preds = %25
  %38 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !502
  %39 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %38, i32 0, i32 12, !dbg !503
  %40 = load %struct.archivedetails*, %struct.archivedetails** %39, align 8, !dbg !503
  %41 = icmp ne %struct.archivedetails* %40, null, !dbg !504
  %42 = xor i1 %41, true, !dbg !504
  %43 = zext i1 %42 to i32, !dbg !504
  store i32 %43, i32* %15, align 4, !dbg !505
  %44 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !506
  %45 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %44, i32 0, i32 12, !dbg !507
  store %struct.archivedetails** %45, %struct.archivedetails*** %12, align 8, !dbg !508
  %46 = load i8*, i8** %9, align 8, !dbg !509
  %47 = call i8* @nfstrsave(i8* %46), !dbg !510
  store i8* %47, i8** %13, align 8, !dbg !511
  br label %48, !dbg !512

; <label>:48:                                     ; preds = %132, %37
  %49 = load i8*, i8** %13, align 8, !dbg !513
  %50 = load i8, i8* %49, align 1, !dbg !515
  %51 = icmp ne i8 %50, 0, !dbg !516
  br i1 %51, label %52, label %134, !dbg !516

; <label>:52:                                     ; preds = %48
  %53 = load i8*, i8** %13, align 8, !dbg !517
  store i8* %53, i8** %14, align 8, !dbg !519
  br label %54, !dbg !520

; <label>:54:                                     ; preds = %67, %52
  %55 = load i8*, i8** %14, align 8, !dbg !521
  %56 = load i8, i8* %55, align 1, !dbg !523
  %57 = sext i8 %56 to i32, !dbg !523
  %58 = icmp ne i32 %57, 0, !dbg !523
  br i1 %58, label %59, label %65, !dbg !524

; <label>:59:                                     ; preds = %54
  %60 = load i8*, i8** %14, align 8, !dbg !525
  %61 = load i8, i8* %60, align 1, !dbg !527
  %62 = sext i8 %61 to i32, !dbg !527
  %63 = call zeroext i1 @c_isspace(i32 %62), !dbg !528
  %64 = xor i1 %63, true, !dbg !529
  br label %65

; <label>:65:                                     ; preds = %59, %54
  %66 = phi i1 [ false, %54 ], [ %64, %59 ]
  br i1 %66, label %67, label %70, !dbg !530

; <label>:67:                                     ; preds = %65
  %68 = load i8*, i8** %14, align 8, !dbg !532
  %69 = getelementptr inbounds i8, i8* %68, i32 1, !dbg !532
  store i8* %69, i8** %14, align 8, !dbg !532
  br label %54, !dbg !533, !llvm.loop !535

; <label>:70:                                     ; preds = %65
  %71 = load i8*, i8** %14, align 8, !dbg !536
  %72 = load i8, i8* %71, align 1, !dbg !538
  %73 = icmp ne i8 %72, 0, !dbg !538
  br i1 %73, label %74, label %77, !dbg !539

; <label>:74:                                     ; preds = %70
  %75 = load i8*, i8** %14, align 8, !dbg !540
  %76 = getelementptr inbounds i8, i8* %75, i32 1, !dbg !540
  store i8* %76, i8** %14, align 8, !dbg !540
  store i8 0, i8* %75, align 1, !dbg !541
  br label %77, !dbg !542

; <label>:77:                                     ; preds = %74, %70
  %78 = load %struct.archivedetails**, %struct.archivedetails*** %12, align 8, !dbg !543
  %79 = load %struct.archivedetails*, %struct.archivedetails** %78, align 8, !dbg !544
  store %struct.archivedetails* %79, %struct.archivedetails** %11, align 8, !dbg !545
  %80 = load %struct.archivedetails*, %struct.archivedetails** %11, align 8, !dbg !546
  %81 = icmp ne %struct.archivedetails* %80, null, !dbg !546
  br i1 %81, label %106, label %82, !dbg !548

; <label>:82:                                     ; preds = %77
  %83 = load i32, i32* %15, align 4, !dbg !549
  %84 = icmp ne i32 %83, 0, !dbg !549
  br i1 %84, label %91, label %85, !dbg !552

; <label>:85:                                     ; preds = %82
  %86 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !553
  %87 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i32 0, i32 0)) #8, !dbg !554
  %88 = load %struct.fieldinfo*, %struct.fieldinfo** %10, align 8, !dbg !555
  %89 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %88, i32 0, i32 0, !dbg !556
  %90 = load i8*, i8** %89, align 8, !dbg !556
  call void (%struct.parsedb_state*, i8*, ...) @parse_error(%struct.parsedb_state* %86, i8* %87, i8* %90) #9, !dbg !557
  unreachable, !dbg !557

; <label>:91:                                     ; preds = %82
  %92 = call i8* @nfmalloc(i64 40), !dbg !558
  %93 = bitcast i8* %92 to %struct.archivedetails*, !dbg !558
  store %struct.archivedetails* %93, %struct.archivedetails** %11, align 8, !dbg !559
  %94 = load %struct.archivedetails*, %struct.archivedetails** %11, align 8, !dbg !560
  %95 = getelementptr inbounds %struct.archivedetails, %struct.archivedetails* %94, i32 0, i32 0, !dbg !561
  store %struct.archivedetails* null, %struct.archivedetails** %95, align 8, !dbg !562
  %96 = load %struct.archivedetails*, %struct.archivedetails** %11, align 8, !dbg !563
  %97 = getelementptr inbounds %struct.archivedetails, %struct.archivedetails* %96, i32 0, i32 4, !dbg !564
  store i8* null, i8** %97, align 8, !dbg !565
  %98 = load %struct.archivedetails*, %struct.archivedetails** %11, align 8, !dbg !566
  %99 = getelementptr inbounds %struct.archivedetails, %struct.archivedetails* %98, i32 0, i32 3, !dbg !567
  store i8* null, i8** %99, align 8, !dbg !568
  %100 = load %struct.archivedetails*, %struct.archivedetails** %11, align 8, !dbg !569
  %101 = getelementptr inbounds %struct.archivedetails, %struct.archivedetails* %100, i32 0, i32 2, !dbg !570
  store i8* null, i8** %101, align 8, !dbg !571
  %102 = load %struct.archivedetails*, %struct.archivedetails** %11, align 8, !dbg !572
  %103 = getelementptr inbounds %struct.archivedetails, %struct.archivedetails* %102, i32 0, i32 1, !dbg !573
  store i8* null, i8** %103, align 8, !dbg !574
  %104 = load %struct.archivedetails*, %struct.archivedetails** %11, align 8, !dbg !575
  %105 = load %struct.archivedetails**, %struct.archivedetails*** %12, align 8, !dbg !576
  store %struct.archivedetails* %104, %struct.archivedetails** %105, align 8, !dbg !577
  br label %106, !dbg !578

; <label>:106:                                    ; preds = %91, %77
  %107 = load i8*, i8** %13, align 8, !dbg !579
  %108 = load %struct.archivedetails*, %struct.archivedetails** %11, align 8, !dbg !580
  %109 = ptrtoint %struct.archivedetails* %108 to i64, !dbg !581
  %110 = load %struct.fieldinfo*, %struct.fieldinfo** %10, align 8, !dbg !582
  %111 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %110, i32 0, i32 4, !dbg !583
  %112 = load i64, i64* %111, align 8, !dbg !583
  %113 = add i64 %109, %112, !dbg !584
  %114 = inttoptr i64 %113 to i8**, !dbg !585
  store i8* %107, i8** %114, align 8, !dbg !586
  %115 = load %struct.archivedetails*, %struct.archivedetails** %11, align 8, !dbg !587
  %116 = getelementptr inbounds %struct.archivedetails, %struct.archivedetails* %115, i32 0, i32 0, !dbg !588
  store %struct.archivedetails** %116, %struct.archivedetails*** %12, align 8, !dbg !589
  br label %117, !dbg !590

; <label>:117:                                    ; preds = %129, %106
  %118 = load i8*, i8** %14, align 8, !dbg !591
  %119 = load i8, i8* %118, align 1, !dbg !592
  %120 = sext i8 %119 to i32, !dbg !592
  %121 = icmp ne i32 %120, 0, !dbg !592
  br i1 %121, label %122, label %127, !dbg !593

; <label>:122:                                    ; preds = %117
  %123 = load i8*, i8** %14, align 8, !dbg !594
  %124 = load i8, i8* %123, align 1, !dbg !595
  %125 = sext i8 %124 to i32, !dbg !595
  %126 = call zeroext i1 @c_isspace(i32 %125), !dbg !596
  br label %127

; <label>:127:                                    ; preds = %122, %117
  %128 = phi i1 [ false, %117 ], [ %126, %122 ]
  br i1 %128, label %129, label %132, !dbg !597

; <label>:129:                                    ; preds = %127
  %130 = load i8*, i8** %14, align 8, !dbg !598
  %131 = getelementptr inbounds i8, i8* %130, i32 1, !dbg !598
  store i8* %131, i8** %14, align 8, !dbg !598
  br label %117, !dbg !599, !llvm.loop !600

; <label>:132:                                    ; preds = %127
  %133 = load i8*, i8** %14, align 8, !dbg !601
  store i8* %133, i8** %13, align 8, !dbg !602
  br label %48, !dbg !603, !llvm.loop !605

; <label>:134:                                    ; preds = %48
  %135 = load %struct.archivedetails**, %struct.archivedetails*** %12, align 8, !dbg !606
  %136 = load %struct.archivedetails*, %struct.archivedetails** %135, align 8, !dbg !608
  %137 = icmp ne %struct.archivedetails* %136, null, !dbg !608
  br i1 %137, label %138, label %144, !dbg !609

; <label>:138:                                    ; preds = %134
  %139 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !610
  %140 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i32 0, i32 0)) #8, !dbg !611
  %141 = load %struct.fieldinfo*, %struct.fieldinfo** %10, align 8, !dbg !612
  %142 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %141, i32 0, i32 0, !dbg !613
  %143 = load i8*, i8** %142, align 8, !dbg !613
  call void (%struct.parsedb_state*, i8*, ...) @parse_error(%struct.parsedb_state* %139, i8* %140, i8* %143) #9, !dbg !614
  unreachable, !dbg !614

; <label>:144:                                    ; preds = %134
  ret void, !dbg !615
}

declare i8* @nfstrsave(i8*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @c_isspace(i32) #5 !dbg !616 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !619, metadata !424), !dbg !620
  %3 = load i32, i32* %2, align 4, !dbg !621
  %4 = call zeroext i1 @c_isbits(i32 %3, i32 4), !dbg !622
  ret i1 %4, !dbg !623
}

declare i8* @nfmalloc(i64) #2

; Function Attrs: nounwind uwtable
define void @f_charfield(%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*) #0 !dbg !624 {
  %6 = alloca %struct.pkginfo*, align 8
  %7 = alloca %struct.pkgbin*, align 8
  %8 = alloca %struct.parsedb_state*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.fieldinfo*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %6, metadata !625, metadata !424), !dbg !626
  store %struct.pkgbin* %1, %struct.pkgbin** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %7, metadata !627, metadata !424), !dbg !628
  store %struct.parsedb_state* %2, %struct.parsedb_state** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.parsedb_state** %8, metadata !629, metadata !424), !dbg !630
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !631, metadata !424), !dbg !632
  store %struct.fieldinfo* %4, %struct.fieldinfo** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.fieldinfo** %10, metadata !633, metadata !424), !dbg !634
  %11 = load i8*, i8** %9, align 8, !dbg !635
  %12 = load i8, i8* %11, align 1, !dbg !637
  %13 = icmp ne i8 %12, 0, !dbg !637
  br i1 %13, label %14, label %24, !dbg !638

; <label>:14:                                     ; preds = %5
  %15 = load i8*, i8** %9, align 8, !dbg !639
  %16 = call i8* @nfstrsave(i8* %15), !dbg !640
  %17 = load %struct.pkgbin*, %struct.pkgbin** %7, align 8, !dbg !641
  %18 = ptrtoint %struct.pkgbin* %17 to i64, !dbg !642
  %19 = load %struct.fieldinfo*, %struct.fieldinfo** %10, align 8, !dbg !643
  %20 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %19, i32 0, i32 4, !dbg !644
  %21 = load i64, i64* %20, align 8, !dbg !644
  %22 = add i64 %18, %21, !dbg !645
  %23 = inttoptr i64 %22 to i8**, !dbg !646
  store i8* %16, i8** %23, align 8, !dbg !647
  br label %24, !dbg !648

; <label>:24:                                     ; preds = %14, %5
  ret void, !dbg !649
}

; Function Attrs: nounwind uwtable
define void @f_boolean(%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*) #0 !dbg !650 {
  %6 = alloca %struct.pkginfo*, align 8
  %7 = alloca %struct.pkgbin*, align 8
  %8 = alloca %struct.parsedb_state*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.fieldinfo*, align 8
  %11 = alloca i8, align 1
  store %struct.pkginfo* %0, %struct.pkginfo** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %6, metadata !651, metadata !424), !dbg !652
  store %struct.pkgbin* %1, %struct.pkgbin** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %7, metadata !653, metadata !424), !dbg !654
  store %struct.parsedb_state* %2, %struct.parsedb_state** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.parsedb_state** %8, metadata !655, metadata !424), !dbg !656
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !657, metadata !424), !dbg !658
  store %struct.fieldinfo* %4, %struct.fieldinfo** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.fieldinfo** %10, metadata !659, metadata !424), !dbg !660
  call void @llvm.dbg.declare(metadata i8* %11, metadata !661, metadata !424), !dbg !662
  %12 = load i8*, i8** %9, align 8, !dbg !663
  %13 = load i8, i8* %12, align 1, !dbg !665
  %14 = icmp ne i8 %13, 0, !dbg !665
  br i1 %14, label %16, label %15, !dbg !666

; <label>:15:                                     ; preds = %5
  br label %45, !dbg !667

; <label>:16:                                     ; preds = %5
  %17 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !668
  %18 = call i32 @parse_nv(%struct.parsedb_state* %17, i32 0, i8** %9, %struct.namevalue* getelementptr inbounds ([0 x %struct.namevalue], [0 x %struct.namevalue]* @booleaninfos, i32 0, i32 0)), !dbg !669
  %19 = icmp ne i32 %18, 0, !dbg !669
  %20 = zext i1 %19 to i8, !dbg !670
  store i8 %20, i8* %11, align 1, !dbg !670
  %21 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !671
  %22 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %21, i32 0, i32 2, !dbg !673
  %23 = call zeroext i1 @dpkg_has_error(%struct.dpkg_error* %22), !dbg !674
  br i1 %23, label %24, label %34, !dbg !675

; <label>:24:                                     ; preds = %16
  %25 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !676
  %26 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i32 0, i32 0)) #8, !dbg !677
  %27 = load %struct.fieldinfo*, %struct.fieldinfo** %10, align 8, !dbg !678
  %28 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %27, i32 0, i32 0, !dbg !679
  %29 = load i8*, i8** %28, align 8, !dbg !679
  %30 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !680
  %31 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %30, i32 0, i32 2, !dbg !681
  %32 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %31, i32 0, i32 2, !dbg !682
  %33 = load i8*, i8** %32, align 8, !dbg !682
  call void (%struct.parsedb_state*, i8*, ...) @parse_error(%struct.parsedb_state* %25, i8* %26, i8* %29, i8* %33) #9, !dbg !683
  unreachable, !dbg !685

; <label>:34:                                     ; preds = %16
  %35 = load i8, i8* %11, align 1, !dbg !686
  %36 = trunc i8 %35 to i1, !dbg !686
  %37 = load %struct.pkgbin*, %struct.pkgbin** %7, align 8, !dbg !687
  %38 = ptrtoint %struct.pkgbin* %37 to i64, !dbg !688
  %39 = load %struct.fieldinfo*, %struct.fieldinfo** %10, align 8, !dbg !689
  %40 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %39, i32 0, i32 4, !dbg !690
  %41 = load i64, i64* %40, align 8, !dbg !690
  %42 = add i64 %38, %41, !dbg !691
  %43 = inttoptr i64 %42 to i8*, !dbg !688
  %44 = zext i1 %36 to i8, !dbg !692
  store i8 %44, i8* %43, align 1, !dbg !692
  br label %45, !dbg !693

; <label>:45:                                     ; preds = %34, %15
  ret void, !dbg !694
}

; Function Attrs: nounwind uwtable
define internal i32 @parse_nv(%struct.parsedb_state*, i32, i8**, %struct.namevalue*) #0 !dbg !696 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.parsedb_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca %struct.namevalue*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.namevalue*, align 8
  %13 = alloca i32, align 4
  store %struct.parsedb_state* %0, %struct.parsedb_state** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.parsedb_state** %6, metadata !707, metadata !424), !dbg !708
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !709, metadata !424), !dbg !710
  store i8** %2, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !711, metadata !424), !dbg !712
  store %struct.namevalue* %3, %struct.namevalue** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.namevalue** %9, metadata !713, metadata !424), !dbg !714
  call void @llvm.dbg.declare(metadata i8** %10, metadata !715, metadata !424), !dbg !716
  %14 = load i8**, i8*** %8, align 8, !dbg !717
  %15 = load i8*, i8** %14, align 8, !dbg !718
  store i8* %15, i8** %10, align 8, !dbg !716
  call void @llvm.dbg.declare(metadata i8** %11, metadata !719, metadata !424), !dbg !720
  call void @llvm.dbg.declare(metadata %struct.namevalue** %12, metadata !721, metadata !424), !dbg !722
  call void @llvm.dbg.declare(metadata i32* %13, metadata !723, metadata !424), !dbg !724
  %16 = load %struct.parsedb_state*, %struct.parsedb_state** %6, align 8, !dbg !725
  %17 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %16, i32 0, i32 2, !dbg !726
  call void @dpkg_error_destroy(%struct.dpkg_error* %17), !dbg !727
  %18 = load i8*, i8** %10, align 8, !dbg !728
  %19 = getelementptr inbounds i8, i8* %18, i64 0, !dbg !728
  %20 = load i8, i8* %19, align 1, !dbg !728
  %21 = sext i8 %20 to i32, !dbg !728
  %22 = icmp eq i32 %21, 0, !dbg !730
  br i1 %22, label %23, label %28, !dbg !731

; <label>:23:                                     ; preds = %4
  %24 = load %struct.parsedb_state*, %struct.parsedb_state** %6, align 8, !dbg !732
  %25 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %24, i32 0, i32 2, !dbg !733
  %26 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.37, i32 0, i32 0)) #8, !dbg !734
  %27 = call i32 (%struct.dpkg_error*, i8*, ...) @dpkg_put_error(%struct.dpkg_error* %25, i8* %26), !dbg !735
  store i32 %27, i32* %5, align 4, !dbg !737
  br label %81, !dbg !737

; <label>:28:                                     ; preds = %4
  %29 = load %struct.namevalue*, %struct.namevalue** %9, align 8, !dbg !738
  %30 = load i8*, i8** %10, align 8, !dbg !739
  %31 = call %struct.namevalue* @namevalue_find_by_name(%struct.namevalue* %29, i8* %30), !dbg !740
  store %struct.namevalue* %31, %struct.namevalue** %12, align 8, !dbg !741
  %32 = load %struct.namevalue*, %struct.namevalue** %12, align 8, !dbg !742
  %33 = icmp eq %struct.namevalue* %32, null, !dbg !744
  br i1 %33, label %34, label %45, !dbg !745

; <label>:34:                                     ; preds = %28
  %35 = load i32, i32* %7, align 4, !dbg !746
  %36 = and i32 %35, 2, !dbg !749
  %37 = icmp ne i32 %36, 0, !dbg !749
  br i1 %37, label %44, label %38, !dbg !750

; <label>:38:                                     ; preds = %34
  %39 = load %struct.parsedb_state*, %struct.parsedb_state** %6, align 8, !dbg !751
  %40 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %39, i32 0, i32 2, !dbg !752
  %41 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.38, i32 0, i32 0)) #8, !dbg !753
  %42 = load i8*, i8** %10, align 8, !dbg !754
  %43 = call i32 (%struct.dpkg_error*, i8*, ...) @dpkg_put_error(%struct.dpkg_error* %40, i8* %41, i8* %42), !dbg !755
  store i32 %43, i32* %5, align 4, !dbg !757
  br label %81, !dbg !757

; <label>:44:                                     ; preds = %34
  store i8* null, i8** %11, align 8, !dbg !758
  store i32 -1, i32* %13, align 4, !dbg !759
  br label %65, !dbg !760

; <label>:45:                                     ; preds = %28
  %46 = load i8*, i8** %10, align 8, !dbg !761
  %47 = load %struct.namevalue*, %struct.namevalue** %12, align 8, !dbg !763
  %48 = getelementptr inbounds %struct.namevalue, %struct.namevalue* %47, i32 0, i32 2, !dbg !764
  %49 = load i32, i32* %48, align 4, !dbg !764
  %50 = sext i32 %49 to i64, !dbg !765
  %51 = getelementptr inbounds i8, i8* %46, i64 %50, !dbg !765
  store i8* %51, i8** %11, align 8, !dbg !766
  br label %52, !dbg !767

; <label>:52:                                     ; preds = %58, %45
  %53 = load i8*, i8** %11, align 8, !dbg !768
  %54 = getelementptr inbounds i8, i8* %53, i64 0, !dbg !768
  %55 = load i8, i8* %54, align 1, !dbg !768
  %56 = sext i8 %55 to i32, !dbg !768
  %57 = call zeroext i1 @c_isspace(i32 %56), !dbg !770
  br i1 %57, label %58, label %61, !dbg !771

; <label>:58:                                     ; preds = %52
  %59 = load i8*, i8** %11, align 8, !dbg !772
  %60 = getelementptr inbounds i8, i8* %59, i32 1, !dbg !772
  store i8* %60, i8** %11, align 8, !dbg !772
  br label %52, !dbg !773, !llvm.loop !775

; <label>:61:                                     ; preds = %52
  %62 = load %struct.namevalue*, %struct.namevalue** %12, align 8, !dbg !776
  %63 = getelementptr inbounds %struct.namevalue, %struct.namevalue* %62, i32 0, i32 1, !dbg !777
  %64 = load i32, i32* %63, align 8, !dbg !777
  store i32 %64, i32* %13, align 4, !dbg !778
  br label %65

; <label>:65:                                     ; preds = %61, %44
  %66 = load i32, i32* %7, align 4, !dbg !779
  %67 = and i32 %66, 1, !dbg !781
  %68 = icmp ne i32 %67, 0, !dbg !781
  br i1 %68, label %77, label %69, !dbg !782

; <label>:69:                                     ; preds = %65
  %70 = load i8*, i8** %11, align 8, !dbg !783
  %71 = call zeroext i1 @str_is_set(i8* %70), !dbg !785
  br i1 %71, label %72, label %77, !dbg !786

; <label>:72:                                     ; preds = %69
  %73 = load %struct.parsedb_state*, %struct.parsedb_state** %6, align 8, !dbg !787
  %74 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %73, i32 0, i32 2, !dbg !788
  %75 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.39, i32 0, i32 0)) #8, !dbg !789
  %76 = call i32 (%struct.dpkg_error*, i8*, ...) @dpkg_put_error(%struct.dpkg_error* %74, i8* %75), !dbg !790
  store i32 %76, i32* %5, align 4, !dbg !791
  br label %81, !dbg !791

; <label>:77:                                     ; preds = %69, %65
  %78 = load i8*, i8** %11, align 8, !dbg !792
  %79 = load i8**, i8*** %8, align 8, !dbg !793
  store i8* %78, i8** %79, align 8, !dbg !794
  %80 = load i32, i32* %13, align 4, !dbg !795
  store i32 %80, i32* %5, align 4, !dbg !796
  br label %81, !dbg !796

; <label>:81:                                     ; preds = %77, %72, %38, %23
  %82 = load i32, i32* %5, align 4, !dbg !797
  ret i32 %82, !dbg !797
}

declare zeroext i1 @dpkg_has_error(%struct.dpkg_error*) #2

; Function Attrs: nounwind uwtable
define void @f_multiarch(%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*) #0 !dbg !798 {
  %6 = alloca %struct.pkginfo*, align 8
  %7 = alloca %struct.pkgbin*, align 8
  %8 = alloca %struct.parsedb_state*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.fieldinfo*, align 8
  %11 = alloca i32, align 4
  store %struct.pkginfo* %0, %struct.pkginfo** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %6, metadata !799, metadata !424), !dbg !800
  store %struct.pkgbin* %1, %struct.pkgbin** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %7, metadata !801, metadata !424), !dbg !802
  store %struct.parsedb_state* %2, %struct.parsedb_state** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.parsedb_state** %8, metadata !803, metadata !424), !dbg !804
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !805, metadata !424), !dbg !806
  store %struct.fieldinfo* %4, %struct.fieldinfo** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.fieldinfo** %10, metadata !807, metadata !424), !dbg !808
  call void @llvm.dbg.declare(metadata i32* %11, metadata !809, metadata !424), !dbg !810
  %12 = load i8*, i8** %9, align 8, !dbg !811
  %13 = load i8, i8* %12, align 1, !dbg !813
  %14 = icmp ne i8 %13, 0, !dbg !813
  br i1 %14, label %16, label %15, !dbg !814

; <label>:15:                                     ; preds = %5
  br label %41, !dbg !815

; <label>:16:                                     ; preds = %5
  %17 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !816
  %18 = call i32 @parse_nv(%struct.parsedb_state* %17, i32 0, i8** %9, %struct.namevalue* getelementptr inbounds ([0 x %struct.namevalue], [0 x %struct.namevalue]* @multiarchinfos, i32 0, i32 0)), !dbg !817
  store i32 %18, i32* %11, align 4, !dbg !818
  %19 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !819
  %20 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %19, i32 0, i32 2, !dbg !821
  %21 = call zeroext i1 @dpkg_has_error(%struct.dpkg_error* %20), !dbg !822
  br i1 %21, label %22, label %32, !dbg !823

; <label>:22:                                     ; preds = %16
  %23 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !824
  %24 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i32 0, i32 0)) #8, !dbg !825
  %25 = load %struct.fieldinfo*, %struct.fieldinfo** %10, align 8, !dbg !826
  %26 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %25, i32 0, i32 0, !dbg !827
  %27 = load i8*, i8** %26, align 8, !dbg !827
  %28 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !828
  %29 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %28, i32 0, i32 2, !dbg !829
  %30 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %29, i32 0, i32 2, !dbg !830
  %31 = load i8*, i8** %30, align 8, !dbg !830
  call void (%struct.parsedb_state*, i8*, ...) @parse_error(%struct.parsedb_state* %23, i8* %24, i8* %27, i8* %31) #9, !dbg !831
  unreachable, !dbg !833

; <label>:32:                                     ; preds = %16
  %33 = load i32, i32* %11, align 4, !dbg !834
  %34 = load %struct.pkgbin*, %struct.pkgbin** %7, align 8, !dbg !835
  %35 = ptrtoint %struct.pkgbin* %34 to i64, !dbg !836
  %36 = load %struct.fieldinfo*, %struct.fieldinfo** %10, align 8, !dbg !837
  %37 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %36, i32 0, i32 4, !dbg !838
  %38 = load i64, i64* %37, align 8, !dbg !838
  %39 = add i64 %35, %38, !dbg !839
  %40 = inttoptr i64 %39 to i32*, !dbg !840
  store i32 %33, i32* %40, align 4, !dbg !841
  br label %41, !dbg !842

; <label>:41:                                     ; preds = %32, %15
  ret void, !dbg !843
}

; Function Attrs: nounwind uwtable
define void @f_architecture(%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*) #0 !dbg !845 {
  %6 = alloca %struct.pkginfo*, align 8
  %7 = alloca %struct.pkgbin*, align 8
  %8 = alloca %struct.parsedb_state*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.fieldinfo*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %6, metadata !846, metadata !424), !dbg !847
  store %struct.pkgbin* %1, %struct.pkgbin** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %7, metadata !848, metadata !424), !dbg !849
  store %struct.parsedb_state* %2, %struct.parsedb_state** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.parsedb_state** %8, metadata !850, metadata !424), !dbg !851
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !852, metadata !424), !dbg !853
  store %struct.fieldinfo* %4, %struct.fieldinfo** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.fieldinfo** %10, metadata !854, metadata !424), !dbg !855
  %11 = load i8*, i8** %9, align 8, !dbg !856
  %12 = call %struct.dpkg_arch* @dpkg_arch_find(i8* %11), !dbg !857
  %13 = load %struct.pkgbin*, %struct.pkgbin** %7, align 8, !dbg !858
  %14 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %13, i32 0, i32 3, !dbg !859
  store %struct.dpkg_arch* %12, %struct.dpkg_arch** %14, align 8, !dbg !860
  %15 = load %struct.pkgbin*, %struct.pkgbin** %7, align 8, !dbg !861
  %16 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %15, i32 0, i32 3, !dbg !863
  %17 = load %struct.dpkg_arch*, %struct.dpkg_arch** %16, align 8, !dbg !863
  %18 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %17, i32 0, i32 2, !dbg !864
  %19 = load i32, i32* %18, align 8, !dbg !864
  %20 = icmp eq i32 %19, 2, !dbg !865
  br i1 %20, label %21, label %30, !dbg !866

; <label>:21:                                     ; preds = %5
  %22 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !867
  %23 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i32 0, i32 0)) #8, !dbg !868
  %24 = load i8*, i8** %9, align 8, !dbg !869
  %25 = load %struct.fieldinfo*, %struct.fieldinfo** %10, align 8, !dbg !870
  %26 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %25, i32 0, i32 0, !dbg !871
  %27 = load i8*, i8** %26, align 8, !dbg !871
  %28 = load i8*, i8** %9, align 8, !dbg !872
  %29 = call i8* @dpkg_arch_name_is_illegal(i8* %28), !dbg !873
  call void (%struct.parsedb_state*, i8*, ...) @parse_warn(%struct.parsedb_state* %22, i8* %23, i8* %24, i8* %27, i8* %29), !dbg !874
  br label %30, !dbg !876

; <label>:30:                                     ; preds = %21, %5
  ret void, !dbg !877
}

declare %struct.dpkg_arch* @dpkg_arch_find(i8*) #2

declare void @parse_warn(%struct.parsedb_state*, i8*, ...) #2

declare i8* @dpkg_arch_name_is_illegal(i8*) #2

; Function Attrs: nounwind uwtable
define void @f_section(%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*) #0 !dbg !878 {
  %6 = alloca %struct.pkginfo*, align 8
  %7 = alloca %struct.pkgbin*, align 8
  %8 = alloca %struct.parsedb_state*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.fieldinfo*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %6, metadata !879, metadata !424), !dbg !880
  store %struct.pkgbin* %1, %struct.pkgbin** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %7, metadata !881, metadata !424), !dbg !882
  store %struct.parsedb_state* %2, %struct.parsedb_state** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.parsedb_state** %8, metadata !883, metadata !424), !dbg !884
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !885, metadata !424), !dbg !886
  store %struct.fieldinfo* %4, %struct.fieldinfo** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.fieldinfo** %10, metadata !887, metadata !424), !dbg !888
  %11 = load i8*, i8** %9, align 8, !dbg !889
  %12 = load i8, i8* %11, align 1, !dbg !891
  %13 = icmp ne i8 %12, 0, !dbg !891
  br i1 %13, label %15, label %14, !dbg !892

; <label>:14:                                     ; preds = %5
  br label %20, !dbg !893

; <label>:15:                                     ; preds = %5
  %16 = load i8*, i8** %9, align 8, !dbg !895
  %17 = call i8* @nfstrsave(i8* %16), !dbg !896
  %18 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !897
  %19 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %18, i32 0, i32 7, !dbg !898
  store i8* %17, i8** %19, align 8, !dbg !899
  br label %20, !dbg !900

; <label>:20:                                     ; preds = %15, %14
  ret void, !dbg !901
}

; Function Attrs: nounwind uwtable
define void @f_priority(%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*) #0 !dbg !903 {
  %6 = alloca %struct.pkginfo*, align 8
  %7 = alloca %struct.pkgbin*, align 8
  %8 = alloca %struct.parsedb_state*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.fieldinfo*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.pkginfo* %0, %struct.pkginfo** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %6, metadata !904, metadata !424), !dbg !905
  store %struct.pkgbin* %1, %struct.pkgbin** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %7, metadata !906, metadata !424), !dbg !907
  store %struct.parsedb_state* %2, %struct.parsedb_state** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.parsedb_state** %8, metadata !908, metadata !424), !dbg !909
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !910, metadata !424), !dbg !911
  store %struct.fieldinfo* %4, %struct.fieldinfo** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.fieldinfo** %10, metadata !912, metadata !424), !dbg !913
  call void @llvm.dbg.declare(metadata i8** %11, metadata !914, metadata !424), !dbg !915
  %13 = load i8*, i8** %9, align 8, !dbg !916
  store i8* %13, i8** %11, align 8, !dbg !915
  call void @llvm.dbg.declare(metadata i32* %12, metadata !917, metadata !424), !dbg !918
  %14 = load i8*, i8** %9, align 8, !dbg !919
  %15 = load i8, i8* %14, align 1, !dbg !921
  %16 = icmp ne i8 %15, 0, !dbg !921
  br i1 %16, label %18, label %17, !dbg !922

; <label>:17:                                     ; preds = %5
  br label %48, !dbg !923

; <label>:18:                                     ; preds = %5
  %19 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !925
  %20 = call i32 @parse_nv(%struct.parsedb_state* %19, i32 2, i8** %11, %struct.namevalue* getelementptr inbounds ([0 x %struct.namevalue], [0 x %struct.namevalue]* @priorityinfos, i32 0, i32 0)), !dbg !926
  store i32 %20, i32* %12, align 4, !dbg !927
  %21 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !928
  %22 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %21, i32 0, i32 2, !dbg !930
  %23 = call zeroext i1 @dpkg_has_error(%struct.dpkg_error* %22), !dbg !931
  br i1 %23, label %24, label %34, !dbg !932

; <label>:24:                                     ; preds = %18
  %25 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !933
  %26 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0)) #8, !dbg !934
  %27 = load %struct.fieldinfo*, %struct.fieldinfo** %10, align 8, !dbg !935
  %28 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %27, i32 0, i32 0, !dbg !936
  %29 = load i8*, i8** %28, align 8, !dbg !936
  %30 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !937
  %31 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %30, i32 0, i32 2, !dbg !938
  %32 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %31, i32 0, i32 2, !dbg !939
  %33 = load i8*, i8** %32, align 8, !dbg !939
  call void (%struct.parsedb_state*, i8*, ...) @parse_error(%struct.parsedb_state* %25, i8* %26, i8* %29, i8* %33) #9, !dbg !940
  unreachable, !dbg !942

; <label>:34:                                     ; preds = %18
  %35 = load i8*, i8** %11, align 8, !dbg !943
  %36 = icmp eq i8* %35, null, !dbg !945
  br i1 %36, label %37, label %44, !dbg !946

; <label>:37:                                     ; preds = %34
  %38 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !947
  %39 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %38, i32 0, i32 5, !dbg !949
  store i32 5, i32* %39, align 4, !dbg !950
  %40 = load i8*, i8** %9, align 8, !dbg !951
  %41 = call i8* @nfstrsave(i8* %40), !dbg !952
  %42 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !953
  %43 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %42, i32 0, i32 6, !dbg !954
  store i8* %41, i8** %43, align 8, !dbg !955
  br label %48, !dbg !956

; <label>:44:                                     ; preds = %34
  %45 = load i32, i32* %12, align 4, !dbg !957
  %46 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !959
  %47 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %46, i32 0, i32 5, !dbg !960
  store i32 %45, i32* %47, align 4, !dbg !961
  br label %48

; <label>:48:                                     ; preds = %17, %44, %37
  ret void, !dbg !962
}

; Function Attrs: nounwind uwtable
define void @f_status(%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*) #0 !dbg !963 {
  %6 = alloca %struct.pkginfo*, align 8
  %7 = alloca %struct.pkgbin*, align 8
  %8 = alloca %struct.parsedb_state*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.fieldinfo*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %6, metadata !964, metadata !424), !dbg !965
  store %struct.pkgbin* %1, %struct.pkgbin** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %7, metadata !966, metadata !424), !dbg !967
  store %struct.parsedb_state* %2, %struct.parsedb_state** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.parsedb_state** %8, metadata !968, metadata !424), !dbg !969
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !970, metadata !424), !dbg !971
  store %struct.fieldinfo* %4, %struct.fieldinfo** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.fieldinfo** %10, metadata !972, metadata !424), !dbg !973
  %11 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !974
  %12 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %11, i32 0, i32 1, !dbg !976
  %13 = load i32, i32* %12, align 4, !dbg !976
  %14 = and i32 %13, 4, !dbg !977
  %15 = icmp ne i32 %14, 0, !dbg !977
  br i1 %15, label %16, label %22, !dbg !978

; <label>:16:                                     ; preds = %5
  %17 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !979
  %18 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i32 0, i32 0)) #8, !dbg !980
  %19 = load %struct.fieldinfo*, %struct.fieldinfo** %10, align 8, !dbg !981
  %20 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %19, i32 0, i32 0, !dbg !982
  %21 = load i8*, i8** %20, align 8, !dbg !982
  call void (%struct.parsedb_state*, i8*, ...) @parse_error(%struct.parsedb_state* %17, i8* %18, i8* %21) #9, !dbg !983
  unreachable, !dbg !983

; <label>:22:                                     ; preds = %5
  %23 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !984
  %24 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %23, i32 0, i32 1, !dbg !986
  %25 = load i32, i32* %24, align 4, !dbg !986
  %26 = and i32 %25, 2, !dbg !987
  %27 = icmp ne i32 %26, 0, !dbg !987
  br i1 %27, label %28, label %29, !dbg !988

; <label>:28:                                     ; preds = %22
  br label %83, !dbg !989

; <label>:29:                                     ; preds = %22
  %30 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !990
  %31 = call i32 @parse_nv(%struct.parsedb_state* %30, i32 1, i8** %9, %struct.namevalue* getelementptr inbounds ([0 x %struct.namevalue], [0 x %struct.namevalue]* @wantinfos, i32 0, i32 0)), !dbg !991
  %32 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !992
  %33 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %32, i32 0, i32 2, !dbg !993
  store i32 %31, i32* %33, align 8, !dbg !994
  %34 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !995
  %35 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %34, i32 0, i32 2, !dbg !997
  %36 = call zeroext i1 @dpkg_has_error(%struct.dpkg_error* %35), !dbg !998
  br i1 %36, label %37, label %47, !dbg !999

; <label>:37:                                     ; preds = %29
  %38 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !1000
  %39 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i32 0, i32 0)) #8, !dbg !1001
  %40 = load %struct.fieldinfo*, %struct.fieldinfo** %10, align 8, !dbg !1002
  %41 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %40, i32 0, i32 0, !dbg !1003
  %42 = load i8*, i8** %41, align 8, !dbg !1003
  %43 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !1004
  %44 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %43, i32 0, i32 2, !dbg !1005
  %45 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %44, i32 0, i32 2, !dbg !1006
  %46 = load i8*, i8** %45, align 8, !dbg !1006
  call void (%struct.parsedb_state*, i8*, ...) @parse_error(%struct.parsedb_state* %38, i8* %39, i8* %42, i8* %46) #9, !dbg !1007
  unreachable, !dbg !1009

; <label>:47:                                     ; preds = %29
  %48 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !1010
  %49 = call i32 @parse_nv(%struct.parsedb_state* %48, i32 1, i8** %9, %struct.namevalue* getelementptr inbounds ([0 x %struct.namevalue], [0 x %struct.namevalue]* @eflaginfos, i32 0, i32 0)), !dbg !1011
  %50 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !1012
  %51 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %50, i32 0, i32 3, !dbg !1013
  store i32 %49, i32* %51, align 4, !dbg !1014
  %52 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !1015
  %53 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %52, i32 0, i32 2, !dbg !1017
  %54 = call zeroext i1 @dpkg_has_error(%struct.dpkg_error* %53), !dbg !1018
  br i1 %54, label %55, label %65, !dbg !1019

; <label>:55:                                     ; preds = %47
  %56 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !1020
  %57 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i32 0, i32 0)) #8, !dbg !1021
  %58 = load %struct.fieldinfo*, %struct.fieldinfo** %10, align 8, !dbg !1022
  %59 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %58, i32 0, i32 0, !dbg !1023
  %60 = load i8*, i8** %59, align 8, !dbg !1023
  %61 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !1024
  %62 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %61, i32 0, i32 2, !dbg !1025
  %63 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %62, i32 0, i32 2, !dbg !1026
  %64 = load i8*, i8** %63, align 8, !dbg !1026
  call void (%struct.parsedb_state*, i8*, ...) @parse_error(%struct.parsedb_state* %56, i8* %57, i8* %60, i8* %64) #9, !dbg !1027
  unreachable, !dbg !1029

; <label>:65:                                     ; preds = %47
  %66 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !1030
  %67 = call i32 @parse_nv(%struct.parsedb_state* %66, i32 0, i8** %9, %struct.namevalue* getelementptr inbounds ([0 x %struct.namevalue], [0 x %struct.namevalue]* @statusinfos, i32 0, i32 0)), !dbg !1031
  %68 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !1032
  %69 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %68, i32 0, i32 4, !dbg !1033
  store i32 %67, i32* %69, align 8, !dbg !1034
  %70 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !1035
  %71 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %70, i32 0, i32 2, !dbg !1037
  %72 = call zeroext i1 @dpkg_has_error(%struct.dpkg_error* %71), !dbg !1038
  br i1 %72, label %73, label %83, !dbg !1039

; <label>:73:                                     ; preds = %65
  %74 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !1040
  %75 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i32 0, i32 0)) #8, !dbg !1041
  %76 = load %struct.fieldinfo*, %struct.fieldinfo** %10, align 8, !dbg !1042
  %77 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %76, i32 0, i32 0, !dbg !1043
  %78 = load i8*, i8** %77, align 8, !dbg !1043
  %79 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !1044
  %80 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %79, i32 0, i32 2, !dbg !1045
  %81 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %80, i32 0, i32 2, !dbg !1046
  %82 = load i8*, i8** %81, align 8, !dbg !1046
  call void (%struct.parsedb_state*, i8*, ...) @parse_error(%struct.parsedb_state* %74, i8* %75, i8* %78, i8* %82) #9, !dbg !1047
  unreachable, !dbg !1049

; <label>:83:                                     ; preds = %28, %65
  ret void, !dbg !1050
}

; Function Attrs: nounwind uwtable
define void @f_version(%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*) #0 !dbg !1051 {
  %6 = alloca %struct.pkginfo*, align 8
  %7 = alloca %struct.pkgbin*, align 8
  %8 = alloca %struct.parsedb_state*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.fieldinfo*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %6, metadata !1052, metadata !424), !dbg !1053
  store %struct.pkgbin* %1, %struct.pkgbin** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %7, metadata !1054, metadata !424), !dbg !1055
  store %struct.parsedb_state* %2, %struct.parsedb_state** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.parsedb_state** %8, metadata !1056, metadata !424), !dbg !1057
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1058, metadata !424), !dbg !1059
  store %struct.fieldinfo* %4, %struct.fieldinfo** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.fieldinfo** %10, metadata !1060, metadata !424), !dbg !1061
  %11 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !1062
  %12 = load %struct.pkgbin*, %struct.pkgbin** %7, align 8, !dbg !1064
  %13 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %12, i32 0, i32 11, !dbg !1065
  %14 = load i8*, i8** %9, align 8, !dbg !1066
  %15 = call i32 @parse_db_version(%struct.parsedb_state* %11, %struct.dpkg_version* %13, i8* %14), !dbg !1067
  %16 = icmp slt i32 %15, 0, !dbg !1068
  br i1 %16, label %17, label %24, !dbg !1069

; <label>:17:                                     ; preds = %5
  %18 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !1070
  %19 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i32 0, i32 0)) #8, !dbg !1071
  %20 = load %struct.fieldinfo*, %struct.fieldinfo** %10, align 8, !dbg !1072
  %21 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %20, i32 0, i32 0, !dbg !1073
  %22 = load i8*, i8** %21, align 8, !dbg !1073
  %23 = load i8*, i8** %9, align 8, !dbg !1074
  call void (%struct.parsedb_state*, i8*, ...) @parse_problem(%struct.parsedb_state* %18, i8* %19, i8* %22, i8* %23), !dbg !1075
  br label %24, !dbg !1077

; <label>:24:                                     ; preds = %17, %5
  ret void, !dbg !1078
}

declare i32 @parse_db_version(%struct.parsedb_state*, %struct.dpkg_version*, i8*) #2

declare void @parse_problem(%struct.parsedb_state*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @f_revision(%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*) #0 !dbg !1079 {
  %6 = alloca %struct.pkginfo*, align 8
  %7 = alloca %struct.pkgbin*, align 8
  %8 = alloca %struct.parsedb_state*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.fieldinfo*, align 8
  %11 = alloca i8*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %6, metadata !1080, metadata !424), !dbg !1081
  store %struct.pkgbin* %1, %struct.pkgbin** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %7, metadata !1082, metadata !424), !dbg !1083
  store %struct.parsedb_state* %2, %struct.parsedb_state** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.parsedb_state** %8, metadata !1084, metadata !424), !dbg !1085
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1086, metadata !424), !dbg !1087
  store %struct.fieldinfo* %4, %struct.fieldinfo** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.fieldinfo** %10, metadata !1088, metadata !424), !dbg !1089
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1090, metadata !424), !dbg !1091
  %12 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !1092
  %13 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i32 0, i32 0)) #8, !dbg !1093
  %14 = load %struct.fieldinfo*, %struct.fieldinfo** %10, align 8, !dbg !1094
  %15 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %14, i32 0, i32 0, !dbg !1095
  %16 = load i8*, i8** %15, align 8, !dbg !1095
  call void (%struct.parsedb_state*, i8*, ...) @parse_warn(%struct.parsedb_state* %12, i8* %13, i8* %16), !dbg !1096
  %17 = load i8*, i8** %9, align 8, !dbg !1098
  %18 = load i8, i8* %17, align 1, !dbg !1100
  %19 = icmp ne i8 %18, 0, !dbg !1100
  br i1 %19, label %21, label %20, !dbg !1101

; <label>:20:                                     ; preds = %5
  br label %61, !dbg !1102

; <label>:21:                                     ; preds = %5
  %22 = load %struct.pkgbin*, %struct.pkgbin** %7, align 8, !dbg !1104
  %23 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %22, i32 0, i32 11, !dbg !1106
  %24 = getelementptr inbounds %struct.dpkg_version, %struct.dpkg_version* %23, i32 0, i32 2, !dbg !1107
  %25 = load i8*, i8** %24, align 8, !dbg !1107
  %26 = call zeroext i1 @str_is_set(i8* %25), !dbg !1108
  br i1 %26, label %27, label %55, !dbg !1109

; <label>:27:                                     ; preds = %21
  %28 = load %struct.pkgbin*, %struct.pkgbin** %7, align 8, !dbg !1110
  %29 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %28, i32 0, i32 11, !dbg !1112
  %30 = getelementptr inbounds %struct.dpkg_version, %struct.dpkg_version* %29, i32 0, i32 1, !dbg !1113
  %31 = load i8*, i8** %30, align 8, !dbg !1113
  %32 = call i64 @strlen(i8* %31) #10, !dbg !1114
  %33 = load %struct.pkgbin*, %struct.pkgbin** %7, align 8, !dbg !1115
  %34 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %33, i32 0, i32 11, !dbg !1116
  %35 = getelementptr inbounds %struct.dpkg_version, %struct.dpkg_version* %34, i32 0, i32 2, !dbg !1117
  %36 = load i8*, i8** %35, align 8, !dbg !1117
  %37 = call i64 @strlen(i8* %36) #10, !dbg !1118
  %38 = add i64 %32, %37, !dbg !1119
  %39 = add i64 %38, 2, !dbg !1120
  %40 = call i8* @nfmalloc(i64 %39), !dbg !1121
  store i8* %40, i8** %11, align 8, !dbg !1123
  %41 = load i8*, i8** %11, align 8, !dbg !1124
  %42 = load %struct.pkgbin*, %struct.pkgbin** %7, align 8, !dbg !1125
  %43 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %42, i32 0, i32 11, !dbg !1126
  %44 = getelementptr inbounds %struct.dpkg_version, %struct.dpkg_version* %43, i32 0, i32 1, !dbg !1127
  %45 = load i8*, i8** %44, align 8, !dbg !1127
  %46 = load %struct.pkgbin*, %struct.pkgbin** %7, align 8, !dbg !1128
  %47 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %46, i32 0, i32 11, !dbg !1129
  %48 = getelementptr inbounds %struct.dpkg_version, %struct.dpkg_version* %47, i32 0, i32 2, !dbg !1130
  %49 = load i8*, i8** %48, align 8, !dbg !1130
  %50 = call i32 (i8*, i8*, ...) @sprintf(i8* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* %45, i8* %49) #8, !dbg !1131
  %51 = load i8*, i8** %11, align 8, !dbg !1132
  %52 = load %struct.pkgbin*, %struct.pkgbin** %7, align 8, !dbg !1133
  %53 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %52, i32 0, i32 11, !dbg !1134
  %54 = getelementptr inbounds %struct.dpkg_version, %struct.dpkg_version* %53, i32 0, i32 1, !dbg !1135
  store i8* %51, i8** %54, align 8, !dbg !1136
  br label %55, !dbg !1137

; <label>:55:                                     ; preds = %27, %21
  %56 = load i8*, i8** %9, align 8, !dbg !1138
  %57 = call i8* @nfstrsave(i8* %56), !dbg !1139
  %58 = load %struct.pkgbin*, %struct.pkgbin** %7, align 8, !dbg !1140
  %59 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %58, i32 0, i32 11, !dbg !1141
  %60 = getelementptr inbounds %struct.dpkg_version, %struct.dpkg_version* %59, i32 0, i32 2, !dbg !1142
  store i8* %57, i8** %60, align 8, !dbg !1143
  br label %61, !dbg !1144

; <label>:61:                                     ; preds = %55, %20
  ret void, !dbg !1145
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @str_is_set(i8*) #5 !dbg !1146 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1150, metadata !424), !dbg !1151
  %3 = load i8*, i8** %2, align 8, !dbg !1152
  %4 = icmp ne i8* %3, null, !dbg !1153
  br i1 %4, label %5, label %11, !dbg !1154

; <label>:5:                                      ; preds = %1
  %6 = load i8*, i8** %2, align 8, !dbg !1155
  %7 = getelementptr inbounds i8, i8* %6, i64 0, !dbg !1155
  %8 = load i8, i8* %7, align 1, !dbg !1155
  %9 = sext i8 %8 to i32, !dbg !1155
  %10 = icmp ne i32 %9, 0, !dbg !1157
  br label %11

; <label>:11:                                     ; preds = %5, %1
  %12 = phi i1 [ false, %1 ], [ %10, %5 ]
  ret i1 %12, !dbg !1158
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #6

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #4

; Function Attrs: nounwind uwtable
define void @f_configversion(%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*) #0 !dbg !1160 {
  %6 = alloca %struct.pkginfo*, align 8
  %7 = alloca %struct.pkgbin*, align 8
  %8 = alloca %struct.parsedb_state*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.fieldinfo*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %6, metadata !1161, metadata !424), !dbg !1162
  store %struct.pkgbin* %1, %struct.pkgbin** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %7, metadata !1163, metadata !424), !dbg !1164
  store %struct.parsedb_state* %2, %struct.parsedb_state** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.parsedb_state** %8, metadata !1165, metadata !424), !dbg !1166
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1167, metadata !424), !dbg !1168
  store %struct.fieldinfo* %4, %struct.fieldinfo** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.fieldinfo** %10, metadata !1169, metadata !424), !dbg !1170
  %11 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !1171
  %12 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %11, i32 0, i32 1, !dbg !1173
  %13 = load i32, i32* %12, align 4, !dbg !1173
  %14 = and i32 %13, 4, !dbg !1174
  %15 = icmp ne i32 %14, 0, !dbg !1174
  br i1 %15, label %16, label %22, !dbg !1175

; <label>:16:                                     ; preds = %5
  %17 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !1176
  %18 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i32 0, i32 0)) #8, !dbg !1177
  %19 = load %struct.fieldinfo*, %struct.fieldinfo** %10, align 8, !dbg !1178
  %20 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %19, i32 0, i32 0, !dbg !1179
  %21 = load i8*, i8** %20, align 8, !dbg !1179
  call void (%struct.parsedb_state*, i8*, ...) @parse_error(%struct.parsedb_state* %17, i8* %18, i8* %21) #9, !dbg !1180
  unreachable, !dbg !1180

; <label>:22:                                     ; preds = %5
  %23 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !1181
  %24 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %23, i32 0, i32 1, !dbg !1183
  %25 = load i32, i32* %24, align 4, !dbg !1183
  %26 = and i32 %25, 2, !dbg !1184
  %27 = icmp ne i32 %26, 0, !dbg !1184
  br i1 %27, label %28, label %29, !dbg !1185

; <label>:28:                                     ; preds = %22
  br label %43, !dbg !1186

; <label>:29:                                     ; preds = %22
  %30 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !1187
  %31 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !1189
  %32 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %31, i32 0, i32 8, !dbg !1190
  %33 = load i8*, i8** %9, align 8, !dbg !1191
  %34 = call i32 @parse_db_version(%struct.parsedb_state* %30, %struct.dpkg_version* %32, i8* %33), !dbg !1192
  %35 = icmp slt i32 %34, 0, !dbg !1193
  br i1 %35, label %36, label %43, !dbg !1194

; <label>:36:                                     ; preds = %29
  %37 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !1195
  %38 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i32 0, i32 0)) #8, !dbg !1196
  %39 = load %struct.fieldinfo*, %struct.fieldinfo** %10, align 8, !dbg !1197
  %40 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %39, i32 0, i32 0, !dbg !1198
  %41 = load i8*, i8** %40, align 8, !dbg !1198
  %42 = load i8*, i8** %9, align 8, !dbg !1199
  call void (%struct.parsedb_state*, i8*, ...) @parse_problem(%struct.parsedb_state* %37, i8* %38, i8* %41, i8* %42), !dbg !1200
  br label %43, !dbg !1202

; <label>:43:                                     ; preds = %28, %36, %29
  ret void, !dbg !1203
}

; Function Attrs: nounwind uwtable
define void @f_conffiles(%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*) #0 !dbg !158 {
  %6 = alloca %struct.pkginfo*, align 8
  %7 = alloca %struct.pkgbin*, align 8
  %8 = alloca %struct.parsedb_state*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.fieldinfo*, align 8
  %11 = alloca %struct.conffile**, align 8
  %12 = alloca %struct.conffile*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8, align 1
  %20 = alloca i8*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %6, metadata !1204, metadata !424), !dbg !1205
  store %struct.pkgbin* %1, %struct.pkgbin** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %7, metadata !1206, metadata !424), !dbg !1207
  store %struct.parsedb_state* %2, %struct.parsedb_state** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.parsedb_state** %8, metadata !1208, metadata !424), !dbg !1209
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1210, metadata !424), !dbg !1211
  store %struct.fieldinfo* %4, %struct.fieldinfo** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.fieldinfo** %10, metadata !1212, metadata !424), !dbg !1213
  call void @llvm.dbg.declare(metadata %struct.conffile*** %11, metadata !1214, metadata !424), !dbg !1216
  call void @llvm.dbg.declare(metadata %struct.conffile** %12, metadata !1217, metadata !424), !dbg !1218
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1219, metadata !424), !dbg !1220
  call void @llvm.dbg.declare(metadata i8** %14, metadata !1221, metadata !424), !dbg !1222
  call void @llvm.dbg.declare(metadata i8** %15, metadata !1223, metadata !424), !dbg !1224
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1225, metadata !424), !dbg !1226
  call void @llvm.dbg.declare(metadata i32* %17, metadata !1227, metadata !424), !dbg !1228
  call void @llvm.dbg.declare(metadata i32* %18, metadata !1229, metadata !424), !dbg !1230
  call void @llvm.dbg.declare(metadata i8* %19, metadata !1231, metadata !424), !dbg !1232
  call void @llvm.dbg.declare(metadata i8** %20, metadata !1233, metadata !424), !dbg !1234
  %21 = load %struct.pkgbin*, %struct.pkgbin** %7, align 8, !dbg !1235
  %22 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %21, i32 0, i32 12, !dbg !1236
  store %struct.conffile** %22, %struct.conffile*** %11, align 8, !dbg !1237
  br label %23, !dbg !1238

; <label>:23:                                     ; preds = %104, %34, %5
  %24 = load i8*, i8** %9, align 8, !dbg !1239
  %25 = load i8, i8* %24, align 1, !dbg !1241
  %26 = icmp ne i8 %25, 0, !dbg !1242
  br i1 %26, label %27, label %151, !dbg !1242

; <label>:27:                                     ; preds = %23
  %28 = load i8*, i8** %9, align 8, !dbg !1243
  %29 = getelementptr inbounds i8, i8* %28, i32 1, !dbg !1243
  store i8* %29, i8** %9, align 8, !dbg !1243
  %30 = load i8, i8* %28, align 1, !dbg !1245
  %31 = sext i8 %30 to i32, !dbg !1245
  store i32 %31, i32* %16, align 4, !dbg !1246
  %32 = load i32, i32* %16, align 4, !dbg !1247
  %33 = icmp eq i32 %32, 10, !dbg !1249
  br i1 %33, label %34, label %35, !dbg !1250

; <label>:34:                                     ; preds = %27
  br label %23, !dbg !1251, !llvm.loop !1253

; <label>:35:                                     ; preds = %27
  %36 = load i32, i32* %16, align 4, !dbg !1254
  %37 = icmp ne i32 %36, 32, !dbg !1256
  br i1 %37, label %38, label %45, !dbg !1257

; <label>:38:                                     ; preds = %35
  %39 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !1258
  %40 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.17, i32 0, i32 0)) #8, !dbg !1259
  %41 = load %struct.fieldinfo*, %struct.fieldinfo** %10, align 8, !dbg !1260
  %42 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %41, i32 0, i32 0, !dbg !1261
  %43 = load i8*, i8** %42, align 8, !dbg !1261
  %44 = load i32, i32* %16, align 4, !dbg !1262
  call void (%struct.parsedb_state*, i8*, ...) @parse_error(%struct.parsedb_state* %39, i8* %40, i8* %43, i32 %44) #9, !dbg !1263
  unreachable, !dbg !1263

; <label>:45:                                     ; preds = %35
  %46 = load i8*, i8** %9, align 8, !dbg !1264
  store i8* %46, i8** %13, align 8, !dbg !1266
  br label %47, !dbg !1267

; <label>:47:                                     ; preds = %58, %45
  %48 = load i8*, i8** %13, align 8, !dbg !1268
  %49 = load i8, i8* %48, align 1, !dbg !1271
  %50 = sext i8 %49 to i32, !dbg !1271
  store i32 %50, i32* %16, align 4, !dbg !1272
  %51 = icmp ne i32 %50, 0, !dbg !1273
  br i1 %51, label %52, label %55, !dbg !1274

; <label>:52:                                     ; preds = %47
  %53 = load i32, i32* %16, align 4, !dbg !1275
  %54 = icmp ne i32 %53, 10, !dbg !1277
  br label %55

; <label>:55:                                     ; preds = %52, %47
  %56 = phi i1 [ false, %47 ], [ %54, %52 ]
  br i1 %56, label %57, label %61, !dbg !1278

; <label>:57:                                     ; preds = %55
  br label %58, !dbg !1280

; <label>:58:                                     ; preds = %57
  %59 = load i8*, i8** %13, align 8, !dbg !1282
  %60 = getelementptr inbounds i8, i8* %59, i32 1, !dbg !1282
  store i8* %60, i8** %13, align 8, !dbg !1282
  br label %47, !dbg !1284, !llvm.loop !1285

; <label>:61:                                     ; preds = %55
  %62 = load i8*, i8** %9, align 8, !dbg !1287
  %63 = load i8*, i8** %13, align 8, !dbg !1288
  %64 = load i8*, i8** %13, align 8, !dbg !1289
  %65 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !1290
  call void @conffvalue_lastword(i8* %62, i8* %63, i8* %64, i8** %15, i32* %18, i8** %14, %struct.parsedb_state* %65), !dbg !1291
  %66 = load i32, i32* %18, align 4, !dbg !1292
  %67 = sext i32 %66 to i64, !dbg !1292
  %68 = icmp eq i64 %67, 8, !dbg !1293
  br i1 %68, label %69, label %75, !dbg !1294

; <label>:69:                                     ; preds = %61
  %70 = load i8*, i8** %15, align 8, !dbg !1295
  %71 = load i32, i32* %18, align 4, !dbg !1296
  %72 = sext i32 %71 to i64, !dbg !1296
  %73 = call i32 @memcmp(i8* %70, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @f_conffiles.obsolete_str, i32 0, i32 0), i64 %72) #10, !dbg !1297
  %74 = icmp eq i32 %73, 0, !dbg !1298
  br label %75

; <label>:75:                                     ; preds = %69, %61
  %76 = phi i1 [ false, %61 ], [ %74, %69 ]
  %77 = zext i1 %76 to i8, !dbg !1299
  store i8 %77, i8* %19, align 1, !dbg !1299
  %78 = load i8, i8* %19, align 1, !dbg !1301
  %79 = trunc i8 %78 to i1, !dbg !1301
  br i1 %79, label %80, label %85, !dbg !1303

; <label>:80:                                     ; preds = %75
  %81 = load i8*, i8** %9, align 8, !dbg !1304
  %82 = load i8*, i8** %14, align 8, !dbg !1305
  %83 = load i8*, i8** %13, align 8, !dbg !1306
  %84 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !1307
  call void @conffvalue_lastword(i8* %81, i8* %82, i8* %83, i8** %15, i32* %18, i8** %14, %struct.parsedb_state* %84), !dbg !1308
  br label %85, !dbg !1308

; <label>:85:                                     ; preds = %80, %75
  %86 = call i8* @nfmalloc(i64 32), !dbg !1309
  %87 = bitcast i8* %86 to %struct.conffile*, !dbg !1309
  store %struct.conffile* %87, %struct.conffile** %12, align 8, !dbg !1310
  %88 = load i8*, i8** %9, align 8, !dbg !1311
  %89 = call i8* @path_skip_slash_dotslash(i8* %88), !dbg !1312
  store i8* %89, i8** %9, align 8, !dbg !1313
  %90 = load i8*, i8** %14, align 8, !dbg !1314
  %91 = load i8*, i8** %9, align 8, !dbg !1315
  %92 = ptrtoint i8* %90 to i64, !dbg !1316
  %93 = ptrtoint i8* %91 to i64, !dbg !1316
  %94 = sub i64 %92, %93, !dbg !1316
  %95 = trunc i64 %94 to i32, !dbg !1317
  store i32 %95, i32* %17, align 4, !dbg !1318
  %96 = load i32, i32* %17, align 4, !dbg !1319
  %97 = icmp sle i32 %96, 0, !dbg !1321
  br i1 %97, label %98, label %104, !dbg !1322

; <label>:98:                                     ; preds = %85
  %99 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !1323
  %100 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.18, i32 0, i32 0)) #8, !dbg !1324
  %101 = load %struct.fieldinfo*, %struct.fieldinfo** %10, align 8, !dbg !1325
  %102 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %101, i32 0, i32 0, !dbg !1326
  %103 = load i8*, i8** %102, align 8, !dbg !1326
  call void (%struct.parsedb_state*, i8*, ...) @parse_error(%struct.parsedb_state* %99, i8* %100, i8* %103) #9, !dbg !1327
  unreachable, !dbg !1327

; <label>:104:                                    ; preds = %85
  %105 = load i32, i32* %17, align 4, !dbg !1328
  %106 = add nsw i32 %105, 2, !dbg !1329
  %107 = sext i32 %106 to i64, !dbg !1328
  %108 = call i8* @nfmalloc(i64 %107), !dbg !1330
  store i8* %108, i8** %20, align 8, !dbg !1331
  %109 = load i8*, i8** %20, align 8, !dbg !1332
  %110 = getelementptr inbounds i8, i8* %109, i64 0, !dbg !1332
  store i8 47, i8* %110, align 1, !dbg !1333
  %111 = load i8*, i8** %20, align 8, !dbg !1334
  %112 = getelementptr inbounds i8, i8* %111, i64 1, !dbg !1335
  %113 = load i8*, i8** %9, align 8, !dbg !1336
  %114 = load i32, i32* %17, align 4, !dbg !1337
  %115 = sext i32 %114 to i64, !dbg !1337
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %112, i8* %113, i64 %115, i32 1, i1 false), !dbg !1338
  %116 = load i32, i32* %17, align 4, !dbg !1339
  %117 = add nsw i32 %116, 1, !dbg !1340
  %118 = sext i32 %117 to i64, !dbg !1341
  %119 = load i8*, i8** %20, align 8, !dbg !1341
  %120 = getelementptr inbounds i8, i8* %119, i64 %118, !dbg !1341
  store i8 0, i8* %120, align 1, !dbg !1342
  %121 = load i8*, i8** %20, align 8, !dbg !1343
  %122 = load %struct.conffile*, %struct.conffile** %12, align 8, !dbg !1344
  %123 = getelementptr inbounds %struct.conffile, %struct.conffile* %122, i32 0, i32 1, !dbg !1345
  store i8* %121, i8** %123, align 8, !dbg !1346
  %124 = load i32, i32* %18, align 4, !dbg !1347
  %125 = add nsw i32 %124, 1, !dbg !1348
  %126 = sext i32 %125 to i64, !dbg !1347
  %127 = call i8* @nfmalloc(i64 %126), !dbg !1349
  store i8* %127, i8** %20, align 8, !dbg !1350
  %128 = load i8*, i8** %20, align 8, !dbg !1351
  %129 = load i8*, i8** %15, align 8, !dbg !1352
  %130 = load i32, i32* %18, align 4, !dbg !1353
  %131 = sext i32 %130 to i64, !dbg !1353
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %128, i8* %129, i64 %131, i32 1, i1 false), !dbg !1354
  %132 = load i32, i32* %18, align 4, !dbg !1355
  %133 = sext i32 %132 to i64, !dbg !1356
  %134 = load i8*, i8** %20, align 8, !dbg !1356
  %135 = getelementptr inbounds i8, i8* %134, i64 %133, !dbg !1356
  store i8 0, i8* %135, align 1, !dbg !1357
  %136 = load i8*, i8** %20, align 8, !dbg !1358
  %137 = load %struct.conffile*, %struct.conffile** %12, align 8, !dbg !1359
  %138 = getelementptr inbounds %struct.conffile, %struct.conffile* %137, i32 0, i32 2, !dbg !1360
  store i8* %136, i8** %138, align 8, !dbg !1361
  %139 = load i8, i8* %19, align 1, !dbg !1362
  %140 = trunc i8 %139 to i1, !dbg !1362
  %141 = load %struct.conffile*, %struct.conffile** %12, align 8, !dbg !1363
  %142 = getelementptr inbounds %struct.conffile, %struct.conffile* %141, i32 0, i32 3, !dbg !1364
  %143 = zext i1 %140 to i8, !dbg !1365
  store i8 %143, i8* %142, align 8, !dbg !1365
  %144 = load %struct.conffile*, %struct.conffile** %12, align 8, !dbg !1366
  %145 = getelementptr inbounds %struct.conffile, %struct.conffile* %144, i32 0, i32 0, !dbg !1367
  store %struct.conffile* null, %struct.conffile** %145, align 8, !dbg !1368
  %146 = load %struct.conffile*, %struct.conffile** %12, align 8, !dbg !1369
  %147 = load %struct.conffile**, %struct.conffile*** %11, align 8, !dbg !1370
  store %struct.conffile* %146, %struct.conffile** %147, align 8, !dbg !1371
  %148 = load %struct.conffile*, %struct.conffile** %12, align 8, !dbg !1372
  %149 = getelementptr inbounds %struct.conffile, %struct.conffile* %148, i32 0, i32 0, !dbg !1373
  store %struct.conffile** %149, %struct.conffile*** %11, align 8, !dbg !1374
  %150 = load i8*, i8** %13, align 8, !dbg !1375
  store i8* %150, i8** %9, align 8, !dbg !1376
  br label %23, !dbg !1377, !llvm.loop !1253

; <label>:151:                                    ; preds = %23
  ret void, !dbg !1379
}

; Function Attrs: nounwind uwtable
define internal void @conffvalue_lastword(i8*, i8*, i8*, i8**, i32*, i8**, %struct.parsedb_state*) #0 !dbg !1380 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca %struct.parsedb_state*, align 8
  %15 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1383, metadata !424), !dbg !1384
  store i8* %1, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1385, metadata !424), !dbg !1386
  store i8* %2, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1387, metadata !424), !dbg !1388
  store i8** %3, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !1389, metadata !424), !dbg !1390
  store i32* %4, i32** %12, align 8
  call void @llvm.dbg.declare(metadata i32** %12, metadata !1391, metadata !424), !dbg !1392
  store i8** %5, i8*** %13, align 8
  call void @llvm.dbg.declare(metadata i8*** %13, metadata !1393, metadata !424), !dbg !1394
  store %struct.parsedb_state* %6, %struct.parsedb_state** %14, align 8
  call void @llvm.dbg.declare(metadata %struct.parsedb_state** %14, metadata !1395, metadata !424), !dbg !1396
  call void @llvm.dbg.declare(metadata i8** %15, metadata !1397, metadata !424), !dbg !1398
  %16 = load i8*, i8** %9, align 8, !dbg !1399
  %17 = load i8*, i8** %8, align 8, !dbg !1401
  %18 = getelementptr inbounds i8, i8* %17, i64 1, !dbg !1402
  %19 = icmp ule i8* %16, %18, !dbg !1403
  br i1 %19, label %20, label %21, !dbg !1404

; <label>:20:                                     ; preds = %7
  br label %58, !dbg !1405

; <label>:21:                                     ; preds = %7
  %22 = load i8*, i8** %9, align 8, !dbg !1407
  %23 = getelementptr inbounds i8, i8* %22, i64 -1, !dbg !1409
  store i8* %23, i8** %15, align 8, !dbg !1410
  br label %24, !dbg !1411

; <label>:24:                                     ; preds = %30, %21
  %25 = load i8*, i8** %15, align 8, !dbg !1412
  %26 = load i8, i8* %25, align 1, !dbg !1415
  %27 = sext i8 %26 to i32, !dbg !1415
  %28 = icmp ne i32 %27, 32, !dbg !1416
  br i1 %28, label %29, label %33, !dbg !1417

; <label>:29:                                     ; preds = %24
  br label %30, !dbg !1418

; <label>:30:                                     ; preds = %29
  %31 = load i8*, i8** %15, align 8, !dbg !1420
  %32 = getelementptr inbounds i8, i8* %31, i32 -1, !dbg !1420
  store i8* %32, i8** %15, align 8, !dbg !1420
  br label %24, !dbg !1422, !llvm.loop !1423

; <label>:33:                                     ; preds = %24
  %34 = load i8*, i8** %15, align 8, !dbg !1425
  %35 = load i8*, i8** %8, align 8, !dbg !1427
  %36 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !1428
  %37 = icmp ule i8* %34, %36, !dbg !1429
  br i1 %37, label %43, label %38, !dbg !1430

; <label>:38:                                     ; preds = %33
  %39 = load i8*, i8** %15, align 8, !dbg !1431
  %40 = load i8*, i8** %10, align 8, !dbg !1433
  %41 = getelementptr inbounds i8, i8* %40, i64 -1, !dbg !1434
  %42 = icmp uge i8* %39, %41, !dbg !1435
  br i1 %42, label %43, label %44, !dbg !1436

; <label>:43:                                     ; preds = %38, %33
  br label %58, !dbg !1437

; <label>:44:                                     ; preds = %38
  %45 = load i8*, i8** %15, align 8, !dbg !1439
  %46 = load i8**, i8*** %13, align 8, !dbg !1440
  store i8* %45, i8** %46, align 8, !dbg !1441
  %47 = load i8*, i8** %15, align 8, !dbg !1442
  %48 = getelementptr inbounds i8, i8* %47, i64 1, !dbg !1443
  %49 = load i8**, i8*** %11, align 8, !dbg !1444
  store i8* %48, i8** %49, align 8, !dbg !1445
  %50 = load i8*, i8** %9, align 8, !dbg !1446
  %51 = load i8**, i8*** %11, align 8, !dbg !1447
  %52 = load i8*, i8** %51, align 8, !dbg !1448
  %53 = ptrtoint i8* %50 to i64, !dbg !1449
  %54 = ptrtoint i8* %52 to i64, !dbg !1449
  %55 = sub i64 %53, %54, !dbg !1449
  %56 = trunc i64 %55 to i32, !dbg !1450
  %57 = load i32*, i32** %12, align 8, !dbg !1451
  store i32 %56, i32* %57, align 4, !dbg !1452
  ret void, !dbg !1453

; <label>:58:                                     ; preds = %43, %20
  %59 = load %struct.parsedb_state*, %struct.parsedb_state** %14, align 8, !dbg !1454
  %60 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.40, i32 0, i32 0)) #8, !dbg !1455
  %61 = load i8*, i8** %10, align 8, !dbg !1456
  %62 = load i8*, i8** %8, align 8, !dbg !1457
  %63 = ptrtoint i8* %61 to i64, !dbg !1458
  %64 = ptrtoint i8* %62 to i64, !dbg !1458
  %65 = sub i64 %63, %64, !dbg !1458
  %66 = icmp slt i64 %65, 250, !dbg !1459
  br i1 %66, label %67, label %73, !dbg !1460

; <label>:67:                                     ; preds = %58
  %68 = load i8*, i8** %10, align 8, !dbg !1461
  %69 = load i8*, i8** %8, align 8, !dbg !1463
  %70 = ptrtoint i8* %68 to i64, !dbg !1464
  %71 = ptrtoint i8* %69 to i64, !dbg !1464
  %72 = sub i64 %70, %71, !dbg !1464
  br label %74, !dbg !1465

; <label>:73:                                     ; preds = %58
  br label %74, !dbg !1466

; <label>:74:                                     ; preds = %73, %67
  %75 = phi i64 [ %72, %67 ], [ 250, %73 ], !dbg !1468
  %76 = trunc i64 %75 to i32, !dbg !1470
  %77 = load i8*, i8** %8, align 8, !dbg !1471
  call void (%struct.parsedb_state*, i8*, ...) @parse_error(%struct.parsedb_state* %59, i8* %60, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0), i32 %76, i8* %77) #9, !dbg !1472
  unreachable, !dbg !1472
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #6

declare i8* @path_skip_slash_dotslash(i8*) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind uwtable
define void @f_dependency(%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*) #0 !dbg !412 {
  %6 = alloca %struct.pkginfo*, align 8
  %7 = alloca %struct.pkgbin*, align 8
  %8 = alloca %struct.parsedb_state*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.fieldinfo*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.dependency*, align 8
  %20 = alloca %struct.dependency**, align 8
  %21 = alloca %struct.deppossi*, align 8
  %22 = alloca %struct.deppossi**, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  store %struct.pkginfo* %0, %struct.pkginfo** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %6, metadata !1473, metadata !424), !dbg !1474
  store %struct.pkgbin* %1, %struct.pkgbin** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %7, metadata !1475, metadata !424), !dbg !1476
  store %struct.parsedb_state* %2, %struct.parsedb_state** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.parsedb_state** %8, metadata !1477, metadata !424), !dbg !1478
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1479, metadata !424), !dbg !1480
  store %struct.fieldinfo* %4, %struct.fieldinfo** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.fieldinfo** %10, metadata !1481, metadata !424), !dbg !1482
  call void @llvm.dbg.declare(metadata i8* %11, metadata !1483, metadata !424), !dbg !1484
  call void @llvm.dbg.declare(metadata i8* %12, metadata !1485, metadata !424), !dbg !1486
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1487, metadata !424), !dbg !1488
  call void @llvm.dbg.declare(metadata i8** %14, metadata !1489, metadata !424), !dbg !1490
  call void @llvm.dbg.declare(metadata i8** %15, metadata !1491, metadata !424), !dbg !1492
  call void @llvm.dbg.declare(metadata i8** %16, metadata !1493, metadata !424), !dbg !1494
  call void @llvm.dbg.declare(metadata i32* %17, metadata !1495, metadata !424), !dbg !1496
  call void @llvm.dbg.declare(metadata i32* %18, metadata !1497, metadata !424), !dbg !1498
  call void @llvm.dbg.declare(metadata %struct.dependency** %19, metadata !1499, metadata !424), !dbg !1500
  call void @llvm.dbg.declare(metadata %struct.dependency*** %20, metadata !1501, metadata !424), !dbg !1503
  call void @llvm.dbg.declare(metadata %struct.deppossi** %21, metadata !1504, metadata !424), !dbg !1505
  call void @llvm.dbg.declare(metadata %struct.deppossi*** %22, metadata !1506, metadata !424), !dbg !1508
  %25 = load i8*, i8** %9, align 8, !dbg !1509
  %26 = load i8, i8* %25, align 1, !dbg !1511
  %27 = icmp ne i8 %26, 0, !dbg !1511
  br i1 %27, label %29, label %28, !dbg !1512

; <label>:28:                                     ; preds = %5
  br label %627, !dbg !1513

; <label>:29:                                     ; preds = %5
  %30 = load i8*, i8** %9, align 8, !dbg !1514
  store i8* %30, i8** %13, align 8, !dbg !1515
  %31 = load %struct.pkgbin*, %struct.pkgbin** %7, align 8, !dbg !1516
  %32 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %31, i32 0, i32 0, !dbg !1517
  store %struct.dependency** %32, %struct.dependency*** %20, align 8, !dbg !1518
  br label %33, !dbg !1519

; <label>:33:                                     ; preds = %37, %29
  %34 = load %struct.dependency**, %struct.dependency*** %20, align 8, !dbg !1520
  %35 = load %struct.dependency*, %struct.dependency** %34, align 8, !dbg !1522
  %36 = icmp ne %struct.dependency* %35, null, !dbg !1523
  br i1 %36, label %37, label %41, !dbg !1523

; <label>:37:                                     ; preds = %33
  %38 = load %struct.dependency**, %struct.dependency*** %20, align 8, !dbg !1524
  %39 = load %struct.dependency*, %struct.dependency** %38, align 8, !dbg !1525
  %40 = getelementptr inbounds %struct.dependency, %struct.dependency* %39, i32 0, i32 1, !dbg !1526
  store %struct.dependency** %40, %struct.dependency*** %20, align 8, !dbg !1527
  br label %33, !dbg !1528, !llvm.loop !1530

; <label>:41:                                     ; preds = %33
  br label %42, !dbg !1531

; <label>:42:                                     ; preds = %626, %41
  %43 = call i8* @nfmalloc(i64 32), !dbg !1532
  %44 = bitcast i8* %43 to %struct.dependency*, !dbg !1532
  store %struct.dependency* %44, %struct.dependency** %19, align 8, !dbg !1536
  %45 = load %struct.dependency*, %struct.dependency** %19, align 8, !dbg !1537
  %46 = getelementptr inbounds %struct.dependency, %struct.dependency* %45, i32 0, i32 0, !dbg !1538
  store %struct.pkginfo* null, %struct.pkginfo** %46, align 8, !dbg !1539
  %47 = load %struct.dependency*, %struct.dependency** %19, align 8, !dbg !1540
  %48 = getelementptr inbounds %struct.dependency, %struct.dependency* %47, i32 0, i32 1, !dbg !1541
  store %struct.dependency* null, %struct.dependency** %48, align 8, !dbg !1542
  %49 = load %struct.dependency*, %struct.dependency** %19, align 8, !dbg !1543
  %50 = load %struct.dependency**, %struct.dependency*** %20, align 8, !dbg !1544
  store %struct.dependency* %49, %struct.dependency** %50, align 8, !dbg !1545
  %51 = load %struct.dependency*, %struct.dependency** %19, align 8, !dbg !1546
  %52 = getelementptr inbounds %struct.dependency, %struct.dependency* %51, i32 0, i32 1, !dbg !1547
  store %struct.dependency** %52, %struct.dependency*** %20, align 8, !dbg !1548
  %53 = load %struct.dependency*, %struct.dependency** %19, align 8, !dbg !1549
  %54 = getelementptr inbounds %struct.dependency, %struct.dependency* %53, i32 0, i32 2, !dbg !1550
  store %struct.deppossi* null, %struct.deppossi** %54, align 8, !dbg !1551
  %55 = load %struct.dependency*, %struct.dependency** %19, align 8, !dbg !1552
  %56 = getelementptr inbounds %struct.dependency, %struct.dependency* %55, i32 0, i32 2, !dbg !1553
  store %struct.deppossi** %56, %struct.deppossi*** %22, align 8, !dbg !1554
  %57 = load %struct.fieldinfo*, %struct.fieldinfo** %10, align 8, !dbg !1555
  %58 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %57, i32 0, i32 4, !dbg !1556
  %59 = load i64, i64* %58, align 8, !dbg !1556
  %60 = trunc i64 %59 to i32, !dbg !1555
  %61 = load %struct.dependency*, %struct.dependency** %19, align 8, !dbg !1557
  %62 = getelementptr inbounds %struct.dependency, %struct.dependency* %61, i32 0, i32 3, !dbg !1558
  store i32 %60, i32* %62, align 8, !dbg !1559
  br label %63, !dbg !1560

; <label>:63:                                     ; preds = %609, %42
  %64 = load i8*, i8** %13, align 8, !dbg !1561
  store i8* %64, i8** %15, align 8, !dbg !1565
  br label %65, !dbg !1566

; <label>:65:                                     ; preds = %97, %63
  %66 = load i8*, i8** %13, align 8, !dbg !1567
  %67 = load i8, i8* %66, align 1, !dbg !1569
  %68 = sext i8 %67 to i32, !dbg !1569
  %69 = icmp ne i32 %68, 0, !dbg !1569
  br i1 %69, label %70, label %95, !dbg !1570

; <label>:70:                                     ; preds = %65
  %71 = load i8*, i8** %13, align 8, !dbg !1571
  %72 = load i8, i8* %71, align 1, !dbg !1573
  %73 = sext i8 %72 to i32, !dbg !1573
  %74 = call zeroext i1 @c_isspace(i32 %73), !dbg !1574
  br i1 %74, label %95, label %75, !dbg !1575

; <label>:75:                                     ; preds = %70
  %76 = load i8*, i8** %13, align 8, !dbg !1576
  %77 = load i8, i8* %76, align 1, !dbg !1578
  %78 = sext i8 %77 to i32, !dbg !1578
  %79 = icmp ne i32 %78, 58, !dbg !1579
  br i1 %79, label %80, label %95, !dbg !1580

; <label>:80:                                     ; preds = %75
  %81 = load i8*, i8** %13, align 8, !dbg !1581
  %82 = load i8, i8* %81, align 1, !dbg !1583
  %83 = sext i8 %82 to i32, !dbg !1583
  %84 = icmp ne i32 %83, 40, !dbg !1584
  br i1 %84, label %85, label %95, !dbg !1585

; <label>:85:                                     ; preds = %80
  %86 = load i8*, i8** %13, align 8, !dbg !1586
  %87 = load i8, i8* %86, align 1, !dbg !1588
  %88 = sext i8 %87 to i32, !dbg !1588
  %89 = icmp ne i32 %88, 44, !dbg !1589
  br i1 %89, label %90, label %95, !dbg !1590

; <label>:90:                                     ; preds = %85
  %91 = load i8*, i8** %13, align 8, !dbg !1591
  %92 = load i8, i8* %91, align 1, !dbg !1592
  %93 = sext i8 %92 to i32, !dbg !1592
  %94 = icmp ne i32 %93, 124, !dbg !1593
  br label %95

; <label>:95:                                     ; preds = %90, %85, %80, %75, %70, %65
  %96 = phi i1 [ false, %85 ], [ false, %80 ], [ false, %75 ], [ false, %70 ], [ false, %65 ], [ %94, %90 ]
  br i1 %96, label %97, label %100, !dbg !1594

; <label>:97:                                     ; preds = %95
  %98 = load i8*, i8** %13, align 8, !dbg !1596
  %99 = getelementptr inbounds i8, i8* %98, i32 1, !dbg !1596
  store i8* %99, i8** %13, align 8, !dbg !1596
  br label %65, !dbg !1597, !llvm.loop !1599

; <label>:100:                                    ; preds = %95
  %101 = load i8*, i8** %13, align 8, !dbg !1600
  %102 = load i8*, i8** %15, align 8, !dbg !1601
  %103 = ptrtoint i8* %101 to i64, !dbg !1602
  %104 = ptrtoint i8* %102 to i64, !dbg !1602
  %105 = sub i64 %103, %104, !dbg !1602
  %106 = trunc i64 %105 to i32, !dbg !1600
  store i32 %106, i32* %17, align 4, !dbg !1603
  %107 = load i32, i32* %17, align 4, !dbg !1604
  %108 = icmp eq i32 %107, 0, !dbg !1606
  br i1 %108, label %109, label %115, !dbg !1607

; <label>:109:                                    ; preds = %100
  %110 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !1608
  %111 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.19, i32 0, i32 0)) #8, !dbg !1609
  %112 = load %struct.fieldinfo*, %struct.fieldinfo** %10, align 8, !dbg !1610
  %113 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %112, i32 0, i32 0, !dbg !1611
  %114 = load i8*, i8** %113, align 8, !dbg !1611
  call void (%struct.parsedb_state*, i8*, ...) @parse_error(%struct.parsedb_state* %110, i8* %111, i8* %114) #9, !dbg !1612
  unreachable, !dbg !1612

; <label>:115:                                    ; preds = %100
  call void @varbuf_reset(%struct.varbuf* @f_dependency.depname), !dbg !1613
  %116 = load i8*, i8** %15, align 8, !dbg !1614
  %117 = load i32, i32* %17, align 4, !dbg !1615
  %118 = sext i32 %117 to i64, !dbg !1615
  call void @varbuf_add_buf(%struct.varbuf* @f_dependency.depname, i8* %116, i64 %118), !dbg !1616
  call void @varbuf_end_str(%struct.varbuf* @f_dependency.depname), !dbg !1617
  %119 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @f_dependency.depname, i32 0, i32 2), align 8, !dbg !1618
  %120 = call i8* @pkg_name_is_illegal(i8* %119), !dbg !1619
  store i8* %120, i8** %14, align 8, !dbg !1620
  %121 = load i8*, i8** %14, align 8, !dbg !1621
  %122 = icmp ne i8* %121, null, !dbg !1621
  br i1 %122, label %123, label %131, !dbg !1623

; <label>:123:                                    ; preds = %115
  %124 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !1624
  %125 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.20, i32 0, i32 0)) #8, !dbg !1625
  %126 = load %struct.fieldinfo*, %struct.fieldinfo** %10, align 8, !dbg !1626
  %127 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %126, i32 0, i32 0, !dbg !1627
  %128 = load i8*, i8** %127, align 8, !dbg !1627
  %129 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @f_dependency.depname, i32 0, i32 2), align 8, !dbg !1628
  %130 = load i8*, i8** %14, align 8, !dbg !1629
  call void (%struct.parsedb_state*, i8*, ...) @parse_error(%struct.parsedb_state* %124, i8* %125, i8* %128, i8* %129, i8* %130) #9, !dbg !1630
  unreachable, !dbg !1630

; <label>:131:                                    ; preds = %115
  %132 = call i8* @nfmalloc(i64 80), !dbg !1631
  %133 = bitcast i8* %132 to %struct.deppossi*, !dbg !1631
  store %struct.deppossi* %133, %struct.deppossi** %21, align 8, !dbg !1632
  %134 = load %struct.dependency*, %struct.dependency** %19, align 8, !dbg !1633
  %135 = load %struct.deppossi*, %struct.deppossi** %21, align 8, !dbg !1634
  %136 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %135, i32 0, i32 0, !dbg !1635
  store %struct.dependency* %134, %struct.dependency** %136, align 8, !dbg !1636
  %137 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @f_dependency.depname, i32 0, i32 2), align 8, !dbg !1637
  %138 = call %struct.pkgset* @pkg_hash_find_set(i8* %137), !dbg !1638
  %139 = load %struct.deppossi*, %struct.deppossi** %21, align 8, !dbg !1639
  %140 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %139, i32 0, i32 1, !dbg !1640
  store %struct.pkgset* %138, %struct.pkgset** %140, align 8, !dbg !1641
  %141 = load %struct.deppossi*, %struct.deppossi** %21, align 8, !dbg !1642
  %142 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %141, i32 0, i32 2, !dbg !1643
  store %struct.deppossi* null, %struct.deppossi** %142, align 8, !dbg !1644
  %143 = load %struct.deppossi*, %struct.deppossi** %21, align 8, !dbg !1645
  %144 = load %struct.deppossi**, %struct.deppossi*** %22, align 8, !dbg !1646
  store %struct.deppossi* %143, %struct.deppossi** %144, align 8, !dbg !1647
  %145 = load %struct.deppossi*, %struct.deppossi** %21, align 8, !dbg !1648
  %146 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %145, i32 0, i32 2, !dbg !1649
  store %struct.deppossi** %146, %struct.deppossi*** %22, align 8, !dbg !1650
  %147 = load %struct.deppossi*, %struct.deppossi** %21, align 8, !dbg !1651
  %148 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %147, i32 0, i32 3, !dbg !1652
  store %struct.deppossi* null, %struct.deppossi** %148, align 8, !dbg !1653
  %149 = load %struct.deppossi*, %struct.deppossi** %21, align 8, !dbg !1654
  %150 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %149, i32 0, i32 4, !dbg !1655
  store %struct.deppossi* null, %struct.deppossi** %150, align 8, !dbg !1656
  %151 = load %struct.deppossi*, %struct.deppossi** %21, align 8, !dbg !1657
  %152 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %151, i32 0, i32 9, !dbg !1658
  store i8 0, i8* %152, align 1, !dbg !1659
  %153 = load i8*, i8** %13, align 8, !dbg !1660
  %154 = load i8, i8* %153, align 1, !dbg !1662
  %155 = sext i8 %154 to i32, !dbg !1662
  %156 = icmp eq i32 %155, 58, !dbg !1663
  br i1 %156, label %157, label %237, !dbg !1664

; <label>:157:                                    ; preds = %131
  call void @llvm.dbg.declare(metadata i8** %23, metadata !1665, metadata !424), !dbg !1667
  call void @llvm.dbg.declare(metadata i32* %24, metadata !1668, metadata !424), !dbg !1669
  %158 = load i8*, i8** %13, align 8, !dbg !1670
  %159 = getelementptr inbounds i8, i8* %158, i32 1, !dbg !1670
  store i8* %159, i8** %13, align 8, !dbg !1670
  store i8* %159, i8** %23, align 8, !dbg !1671
  br label %160, !dbg !1672

; <label>:160:                                    ; preds = %187, %157
  %161 = load i8*, i8** %13, align 8, !dbg !1673
  %162 = load i8, i8* %161, align 1, !dbg !1675
  %163 = sext i8 %162 to i32, !dbg !1675
  %164 = icmp ne i32 %163, 0, !dbg !1675
  br i1 %164, label %165, label %185, !dbg !1676

; <label>:165:                                    ; preds = %160
  %166 = load i8*, i8** %13, align 8, !dbg !1677
  %167 = load i8, i8* %166, align 1, !dbg !1679
  %168 = sext i8 %167 to i32, !dbg !1679
  %169 = call zeroext i1 @c_isspace(i32 %168), !dbg !1680
  br i1 %169, label %185, label %170, !dbg !1681

; <label>:170:                                    ; preds = %165
  %171 = load i8*, i8** %13, align 8, !dbg !1682
  %172 = load i8, i8* %171, align 1, !dbg !1684
  %173 = sext i8 %172 to i32, !dbg !1684
  %174 = icmp ne i32 %173, 40, !dbg !1685
  br i1 %174, label %175, label %185, !dbg !1686

; <label>:175:                                    ; preds = %170
  %176 = load i8*, i8** %13, align 8, !dbg !1687
  %177 = load i8, i8* %176, align 1, !dbg !1689
  %178 = sext i8 %177 to i32, !dbg !1689
  %179 = icmp ne i32 %178, 44, !dbg !1690
  br i1 %179, label %180, label %185, !dbg !1691

; <label>:180:                                    ; preds = %175
  %181 = load i8*, i8** %13, align 8, !dbg !1692
  %182 = load i8, i8* %181, align 1, !dbg !1694
  %183 = sext i8 %182 to i32, !dbg !1694
  %184 = icmp ne i32 %183, 124, !dbg !1695
  br label %185

; <label>:185:                                    ; preds = %180, %175, %170, %165, %160
  %186 = phi i1 [ false, %175 ], [ false, %170 ], [ false, %165 ], [ false, %160 ], [ %184, %180 ]
  br i1 %186, label %187, label %190, !dbg !1696

; <label>:187:                                    ; preds = %185
  %188 = load i8*, i8** %13, align 8, !dbg !1698
  %189 = getelementptr inbounds i8, i8* %188, i32 1, !dbg !1698
  store i8* %189, i8** %13, align 8, !dbg !1698
  br label %160, !dbg !1699, !llvm.loop !1701

; <label>:190:                                    ; preds = %185
  %191 = load i8*, i8** %13, align 8, !dbg !1702
  %192 = load i8*, i8** %23, align 8, !dbg !1703
  %193 = ptrtoint i8* %191 to i64, !dbg !1704
  %194 = ptrtoint i8* %192 to i64, !dbg !1704
  %195 = sub i64 %193, %194, !dbg !1704
  %196 = trunc i64 %195 to i32, !dbg !1702
  store i32 %196, i32* %24, align 4, !dbg !1705
  %197 = load i32, i32* %24, align 4, !dbg !1706
  %198 = icmp eq i32 %197, 0, !dbg !1708
  br i1 %198, label %199, label %205, !dbg !1709

; <label>:199:                                    ; preds = %190
  %200 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !1710
  %201 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.21, i32 0, i32 0)) #8, !dbg !1711
  %202 = load %struct.fieldinfo*, %struct.fieldinfo** %10, align 8, !dbg !1712
  %203 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %202, i32 0, i32 0, !dbg !1713
  %204 = load i8*, i8** %203, align 8, !dbg !1713
  call void (%struct.parsedb_state*, i8*, ...) @parse_error(%struct.parsedb_state* %200, i8* %201, i8* %204) #9, !dbg !1714
  unreachable, !dbg !1716

; <label>:205:                                    ; preds = %190
  call void @varbuf_reset(%struct.varbuf* @f_dependency.arch), !dbg !1717
  %206 = load i8*, i8** %23, align 8, !dbg !1718
  %207 = load i32, i32* %24, align 4, !dbg !1719
  %208 = sext i32 %207 to i64, !dbg !1719
  call void @varbuf_add_buf(%struct.varbuf* @f_dependency.arch, i8* %206, i64 %208), !dbg !1720
  call void @varbuf_end_str(%struct.varbuf* @f_dependency.arch), !dbg !1721
  %209 = load %struct.deppossi*, %struct.deppossi** %21, align 8, !dbg !1722
  %210 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %209, i32 0, i32 8, !dbg !1723
  store i8 0, i8* %210, align 4, !dbg !1724
  %211 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @f_dependency.arch, i32 0, i32 2), align 8, !dbg !1725
  %212 = call %struct.dpkg_arch* @dpkg_arch_find(i8* %211), !dbg !1726
  %213 = load %struct.deppossi*, %struct.deppossi** %21, align 8, !dbg !1727
  %214 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %213, i32 0, i32 5, !dbg !1728
  store %struct.dpkg_arch* %212, %struct.dpkg_arch** %214, align 8, !dbg !1729
  %215 = load %struct.deppossi*, %struct.deppossi** %21, align 8, !dbg !1730
  %216 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %215, i32 0, i32 5, !dbg !1732
  %217 = load %struct.dpkg_arch*, %struct.dpkg_arch** %216, align 8, !dbg !1732
  %218 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %217, i32 0, i32 2, !dbg !1733
  %219 = load i32, i32* %218, align 8, !dbg !1733
  %220 = icmp eq i32 %219, 2, !dbg !1734
  br i1 %220, label %221, label %224, !dbg !1735

; <label>:221:                                    ; preds = %205
  %222 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @f_dependency.arch, i32 0, i32 2), align 8, !dbg !1736
  %223 = call i8* @dpkg_arch_name_is_illegal(i8* %222), !dbg !1737
  store i8* %223, i8** %14, align 8, !dbg !1738
  br label %224, !dbg !1739

; <label>:224:                                    ; preds = %221, %205
  %225 = load i8*, i8** %14, align 8, !dbg !1740
  %226 = icmp ne i8* %225, null, !dbg !1740
  br i1 %226, label %227, label %236, !dbg !1742

; <label>:227:                                    ; preds = %224
  %228 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !1743
  %229 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.22, i32 0, i32 0)) #8, !dbg !1744
  %230 = load %struct.fieldinfo*, %struct.fieldinfo** %10, align 8, !dbg !1745
  %231 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %230, i32 0, i32 0, !dbg !1746
  %232 = load i8*, i8** %231, align 8, !dbg !1746
  %233 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @f_dependency.depname, i32 0, i32 2), align 8, !dbg !1747
  %234 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @f_dependency.arch, i32 0, i32 2), align 8, !dbg !1748
  %235 = load i8*, i8** %14, align 8, !dbg !1749
  call void (%struct.parsedb_state*, i8*, ...) @parse_error(%struct.parsedb_state* %228, i8* %229, i8* %232, i8* %233, i8* %234, i8* %235) #9, !dbg !1750
  unreachable, !dbg !1752

; <label>:236:                                    ; preds = %224
  br label %264, !dbg !1753

; <label>:237:                                    ; preds = %131
  %238 = load %struct.fieldinfo*, %struct.fieldinfo** %10, align 8, !dbg !1754
  %239 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %238, i32 0, i32 4, !dbg !1757
  %240 = load i64, i64* %239, align 8, !dbg !1757
  %241 = icmp eq i64 %240, 5, !dbg !1758
  br i1 %241, label %252, label %242, !dbg !1759

; <label>:242:                                    ; preds = %237
  %243 = load %struct.fieldinfo*, %struct.fieldinfo** %10, align 8, !dbg !1760
  %244 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %243, i32 0, i32 4, !dbg !1762
  %245 = load i64, i64* %244, align 8, !dbg !1762
  %246 = icmp eq i64 %245, 4, !dbg !1763
  br i1 %246, label %252, label %247, !dbg !1764

; <label>:247:                                    ; preds = %242
  %248 = load %struct.fieldinfo*, %struct.fieldinfo** %10, align 8, !dbg !1765
  %249 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %248, i32 0, i32 4, !dbg !1766
  %250 = load i64, i64* %249, align 8, !dbg !1766
  %251 = icmp eq i64 %250, 7, !dbg !1767
  br i1 %251, label %252, label %258, !dbg !1768

; <label>:252:                                    ; preds = %247, %242, %237
  %253 = load %struct.deppossi*, %struct.deppossi** %21, align 8, !dbg !1770
  %254 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %253, i32 0, i32 8, !dbg !1772
  store i8 1, i8* %254, align 4, !dbg !1773
  %255 = call %struct.dpkg_arch* @dpkg_arch_get(i32 3), !dbg !1774
  %256 = load %struct.deppossi*, %struct.deppossi** %21, align 8, !dbg !1775
  %257 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %256, i32 0, i32 5, !dbg !1776
  store %struct.dpkg_arch* %255, %struct.dpkg_arch** %257, align 8, !dbg !1777
  br label %263, !dbg !1778

; <label>:258:                                    ; preds = %247
  %259 = load %struct.deppossi*, %struct.deppossi** %21, align 8, !dbg !1779
  %260 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %259, i32 0, i32 8, !dbg !1781
  store i8 1, i8* %260, align 4, !dbg !1782
  %261 = load %struct.deppossi*, %struct.deppossi** %21, align 8, !dbg !1783
  %262 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %261, i32 0, i32 5, !dbg !1784
  store %struct.dpkg_arch* null, %struct.dpkg_arch** %262, align 8, !dbg !1785
  br label %263

; <label>:263:                                    ; preds = %258, %252
  br label %264

; <label>:264:                                    ; preds = %263, %236
  br label %265, !dbg !1786

; <label>:265:                                    ; preds = %270, %264
  %266 = load i8*, i8** %13, align 8, !dbg !1787
  %267 = load i8, i8* %266, align 1, !dbg !1788
  %268 = sext i8 %267 to i32, !dbg !1788
  %269 = call zeroext i1 @c_isspace(i32 %268), !dbg !1789
  br i1 %269, label %270, label %273, !dbg !1790

; <label>:270:                                    ; preds = %265
  %271 = load i8*, i8** %13, align 8, !dbg !1791
  %272 = getelementptr inbounds i8, i8* %271, i32 1, !dbg !1791
  store i8* %272, i8** %13, align 8, !dbg !1791
  br label %265, !dbg !1792, !llvm.loop !1793

; <label>:273:                                    ; preds = %265
  %274 = load i8*, i8** %13, align 8, !dbg !1794
  %275 = load i8, i8* %274, align 1, !dbg !1796
  %276 = sext i8 %275 to i32, !dbg !1796
  %277 = icmp eq i32 %276, 40, !dbg !1797
  br i1 %277, label %278, label %541, !dbg !1798

; <label>:278:                                    ; preds = %273
  %279 = load i8*, i8** %13, align 8, !dbg !1799
  %280 = getelementptr inbounds i8, i8* %279, i32 1, !dbg !1799
  store i8* %280, i8** %13, align 8, !dbg !1799
  br label %281, !dbg !1801

; <label>:281:                                    ; preds = %286, %278
  %282 = load i8*, i8** %13, align 8, !dbg !1802
  %283 = load i8, i8* %282, align 1, !dbg !1804
  %284 = sext i8 %283 to i32, !dbg !1804
  %285 = call zeroext i1 @c_isspace(i32 %284), !dbg !1805
  br i1 %285, label %286, label %289, !dbg !1806

; <label>:286:                                    ; preds = %281
  %287 = load i8*, i8** %13, align 8, !dbg !1807
  %288 = getelementptr inbounds i8, i8* %287, i32 1, !dbg !1807
  store i8* %288, i8** %13, align 8, !dbg !1807
  br label %281, !dbg !1808, !llvm.loop !1810

; <label>:289:                                    ; preds = %281
  %290 = load i8*, i8** %13, align 8, !dbg !1811
  %291 = load i8, i8* %290, align 1, !dbg !1812
  store i8 %291, i8* %11, align 1, !dbg !1813
  %292 = load i8, i8* %11, align 1, !dbg !1814
  %293 = sext i8 %292 to i32, !dbg !1814
  %294 = icmp eq i32 %293, 60, !dbg !1816
  br i1 %294, label %299, label %295, !dbg !1817

; <label>:295:                                    ; preds = %289
  %296 = load i8, i8* %11, align 1, !dbg !1818
  %297 = sext i8 %296 to i32, !dbg !1818
  %298 = icmp eq i32 %297, 62, !dbg !1820
  br i1 %298, label %299, label %369, !dbg !1821

; <label>:299:                                    ; preds = %295, %289
  %300 = load i8*, i8** %13, align 8, !dbg !1822
  %301 = getelementptr inbounds i8, i8* %300, i32 1, !dbg !1822
  store i8* %301, i8** %13, align 8, !dbg !1822
  %302 = load i8, i8* %301, align 1, !dbg !1824
  store i8 %302, i8* %12, align 1, !dbg !1825
  %303 = load i8, i8* %11, align 1, !dbg !1826
  %304 = sext i8 %303 to i32, !dbg !1826
  %305 = icmp eq i32 %304, 60, !dbg !1827
  %306 = select i1 %305, i32 2, i32 4, !dbg !1828
  %307 = load %struct.deppossi*, %struct.deppossi** %21, align 8, !dbg !1829
  %308 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %307, i32 0, i32 7, !dbg !1830
  store i32 %306, i32* %308, align 8, !dbg !1831
  %309 = load i8, i8* %12, align 1, !dbg !1832
  %310 = sext i8 %309 to i32, !dbg !1832
  %311 = icmp eq i32 %310, 61, !dbg !1834
  br i1 %311, label %312, label %319, !dbg !1835

; <label>:312:                                    ; preds = %299
  %313 = load %struct.deppossi*, %struct.deppossi** %21, align 8, !dbg !1836
  %314 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %313, i32 0, i32 7, !dbg !1838
  %315 = load i32, i32* %314, align 8, !dbg !1839
  %316 = or i32 %315, 1, !dbg !1839
  store i32 %316, i32* %314, align 8, !dbg !1839
  %317 = load i8*, i8** %13, align 8, !dbg !1840
  %318 = getelementptr inbounds i8, i8* %317, i32 1, !dbg !1840
  store i8* %318, i8** %13, align 8, !dbg !1840
  br label %368, !dbg !1841

; <label>:319:                                    ; preds = %299
  %320 = load i8, i8* %12, align 1, !dbg !1842
  %321 = sext i8 %320 to i32, !dbg !1842
  %322 = load i8, i8* %11, align 1, !dbg !1845
  %323 = sext i8 %322 to i32, !dbg !1845
  %324 = icmp eq i32 %321, %323, !dbg !1846
  br i1 %324, label %325, label %328, !dbg !1842

; <label>:325:                                    ; preds = %319
  %326 = load i8*, i8** %13, align 8, !dbg !1847
  %327 = getelementptr inbounds i8, i8* %326, i32 1, !dbg !1847
  store i8* %327, i8** %13, align 8, !dbg !1847
  br label %367, !dbg !1849

; <label>:328:                                    ; preds = %319
  %329 = load i8, i8* %12, align 1, !dbg !1850
  %330 = sext i8 %329 to i32, !dbg !1850
  %331 = icmp eq i32 %330, 60, !dbg !1853
  br i1 %331, label %336, label %332, !dbg !1854

; <label>:332:                                    ; preds = %328
  %333 = load i8, i8* %12, align 1, !dbg !1855
  %334 = sext i8 %333 to i32, !dbg !1855
  %335 = icmp eq i32 %334, 62, !dbg !1857
  br i1 %335, label %336, label %347, !dbg !1858

; <label>:336:                                    ; preds = %332, %328
  %337 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !1859
  %338 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.23, i32 0, i32 0)) #8, !dbg !1861
  %339 = load %struct.fieldinfo*, %struct.fieldinfo** %10, align 8, !dbg !1862
  %340 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %339, i32 0, i32 0, !dbg !1863
  %341 = load i8*, i8** %340, align 8, !dbg !1863
  %342 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @f_dependency.depname, i32 0, i32 2), align 8, !dbg !1864
  %343 = load i8, i8* %11, align 1, !dbg !1865
  %344 = sext i8 %343 to i32, !dbg !1865
  %345 = load i8, i8* %12, align 1, !dbg !1866
  %346 = sext i8 %345 to i32, !dbg !1866
  call void (%struct.parsedb_state*, i8*, ...) @parse_error(%struct.parsedb_state* %337, i8* %338, i8* %341, i8* %342, i32 %344, i32 %346) #9, !dbg !1867
  unreachable, !dbg !1867

; <label>:347:                                    ; preds = %332
  %348 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !1868
  %349 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.24, i32 0, i32 0)) #8, !dbg !1870
  %350 = load %struct.fieldinfo*, %struct.fieldinfo** %10, align 8, !dbg !1871
  %351 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %350, i32 0, i32 0, !dbg !1872
  %352 = load i8*, i8** %351, align 8, !dbg !1872
  %353 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @f_dependency.depname, i32 0, i32 2), align 8, !dbg !1873
  %354 = load i8, i8* %11, align 1, !dbg !1874
  %355 = sext i8 %354 to i32, !dbg !1874
  %356 = load i8, i8* %11, align 1, !dbg !1875
  %357 = sext i8 %356 to i32, !dbg !1875
  %358 = load i8, i8* %11, align 1, !dbg !1876
  %359 = sext i8 %358 to i32, !dbg !1876
  %360 = load i8, i8* %11, align 1, !dbg !1877
  %361 = sext i8 %360 to i32, !dbg !1877
  call void (%struct.parsedb_state*, i8*, ...) @parse_warn(%struct.parsedb_state* %348, i8* %349, i8* %352, i8* %353, i32 %355, i32 %357, i32 %359, i32 %361), !dbg !1878
  %362 = load %struct.deppossi*, %struct.deppossi** %21, align 8, !dbg !1879
  %363 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %362, i32 0, i32 7, !dbg !1880
  %364 = load i32, i32* %363, align 8, !dbg !1881
  %365 = or i32 %364, 1, !dbg !1881
  store i32 %365, i32* %363, align 8, !dbg !1881
  br label %366

; <label>:366:                                    ; preds = %347
  br label %367

; <label>:367:                                    ; preds = %366, %325
  br label %368

; <label>:368:                                    ; preds = %367, %312
  br label %388, !dbg !1882

; <label>:369:                                    ; preds = %295
  %370 = load i8, i8* %11, align 1, !dbg !1883
  %371 = sext i8 %370 to i32, !dbg !1883
  %372 = icmp eq i32 %371, 61, !dbg !1886
  br i1 %372, label %373, label %378, !dbg !1883

; <label>:373:                                    ; preds = %369
  %374 = load %struct.deppossi*, %struct.deppossi** %21, align 8, !dbg !1887
  %375 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %374, i32 0, i32 7, !dbg !1889
  store i32 1, i32* %375, align 8, !dbg !1890
  %376 = load i8*, i8** %13, align 8, !dbg !1891
  %377 = getelementptr inbounds i8, i8* %376, i32 1, !dbg !1891
  store i8* %377, i8** %13, align 8, !dbg !1891
  br label %387, !dbg !1892

; <label>:378:                                    ; preds = %369
  %379 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !1893
  %380 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.25, i32 0, i32 0)) #8, !dbg !1895
  %381 = load %struct.fieldinfo*, %struct.fieldinfo** %10, align 8, !dbg !1896
  %382 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %381, i32 0, i32 0, !dbg !1897
  %383 = load i8*, i8** %382, align 8, !dbg !1897
  %384 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @f_dependency.depname, i32 0, i32 2), align 8, !dbg !1898
  call void (%struct.parsedb_state*, i8*, ...) @parse_warn(%struct.parsedb_state* %379, i8* %380, i8* %383, i8* %384), !dbg !1899
  %385 = load %struct.deppossi*, %struct.deppossi** %21, align 8, !dbg !1900
  %386 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %385, i32 0, i32 7, !dbg !1901
  store i32 1, i32* %386, align 8, !dbg !1902
  br label %387

; <label>:387:                                    ; preds = %378, %373
  br label %388

; <label>:388:                                    ; preds = %387, %368
  %389 = load %struct.deppossi*, %struct.deppossi** %21, align 8, !dbg !1903
  %390 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %389, i32 0, i32 7, !dbg !1905
  %391 = load i32, i32* %390, align 8, !dbg !1905
  %392 = icmp ne i32 %391, 1, !dbg !1906
  br i1 %392, label %393, label %404, !dbg !1907

; <label>:393:                                    ; preds = %388
  %394 = load %struct.fieldinfo*, %struct.fieldinfo** %10, align 8, !dbg !1908
  %395 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %394, i32 0, i32 4, !dbg !1910
  %396 = load i64, i64* %395, align 8, !dbg !1910
  %397 = icmp eq i64 %396, 6, !dbg !1911
  br i1 %397, label %398, label %404, !dbg !1912

; <label>:398:                                    ; preds = %393
  %399 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !1913
  %400 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.26, i32 0, i32 0)) #8, !dbg !1914
  %401 = load %struct.fieldinfo*, %struct.fieldinfo** %10, align 8, !dbg !1915
  %402 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %401, i32 0, i32 0, !dbg !1916
  %403 = load i8*, i8** %402, align 8, !dbg !1916
  call void (%struct.parsedb_state*, i8*, ...) @parse_warn(%struct.parsedb_state* %399, i8* %400, i8* %403), !dbg !1917
  br label %404, !dbg !1917

; <label>:404:                                    ; preds = %398, %393, %388
  %405 = load i8*, i8** %13, align 8, !dbg !1918
  %406 = load i8, i8* %405, align 1, !dbg !1920
  %407 = sext i8 %406 to i32, !dbg !1920
  %408 = call zeroext i1 @c_isspace(i32 %407), !dbg !1921
  br i1 %408, label %421, label %409, !dbg !1922

; <label>:409:                                    ; preds = %404
  %410 = load i8*, i8** %13, align 8, !dbg !1923
  %411 = load i8, i8* %410, align 1, !dbg !1925
  %412 = sext i8 %411 to i32, !dbg !1925
  %413 = call zeroext i1 @c_isalnum(i32 %412), !dbg !1926
  br i1 %413, label %421, label %414, !dbg !1927

; <label>:414:                                    ; preds = %409
  %415 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !1928
  %416 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.27, i32 0, i32 0)) #8, !dbg !1930
  %417 = load %struct.fieldinfo*, %struct.fieldinfo** %10, align 8, !dbg !1931
  %418 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %417, i32 0, i32 0, !dbg !1932
  %419 = load i8*, i8** %418, align 8, !dbg !1932
  %420 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @f_dependency.depname, i32 0, i32 2), align 8, !dbg !1933
  call void (%struct.parsedb_state*, i8*, ...) @parse_warn(%struct.parsedb_state* %415, i8* %416, i8* %419, i8* %420), !dbg !1934
  br label %421, !dbg !1935

; <label>:421:                                    ; preds = %414, %409, %404
  br label %422, !dbg !1936

; <label>:422:                                    ; preds = %427, %421
  %423 = load i8*, i8** %13, align 8, !dbg !1937
  %424 = load i8, i8* %423, align 1, !dbg !1938
  %425 = sext i8 %424 to i32, !dbg !1938
  %426 = call zeroext i1 @c_isspace(i32 %425), !dbg !1939
  br i1 %426, label %427, label %430, !dbg !1940

; <label>:427:                                    ; preds = %422
  %428 = load i8*, i8** %13, align 8, !dbg !1941
  %429 = getelementptr inbounds i8, i8* %428, i32 1, !dbg !1941
  store i8* %429, i8** %13, align 8, !dbg !1941
  br label %422, !dbg !1942, !llvm.loop !1943

; <label>:430:                                    ; preds = %422
  %431 = load i8*, i8** %13, align 8, !dbg !1944
  store i8* %431, i8** %16, align 8, !dbg !1945
  br label %432, !dbg !1946

; <label>:432:                                    ; preds = %455, %430
  %433 = load i8*, i8** %13, align 8, !dbg !1947
  %434 = load i8, i8* %433, align 1, !dbg !1948
  %435 = sext i8 %434 to i32, !dbg !1948
  %436 = icmp ne i32 %435, 0, !dbg !1948
  br i1 %436, label %437, label %447, !dbg !1949

; <label>:437:                                    ; preds = %432
  %438 = load i8*, i8** %13, align 8, !dbg !1950
  %439 = load i8, i8* %438, align 1, !dbg !1951
  %440 = sext i8 %439 to i32, !dbg !1951
  %441 = icmp ne i32 %440, 41, !dbg !1952
  br i1 %441, label %442, label %447, !dbg !1953

; <label>:442:                                    ; preds = %437
  %443 = load i8*, i8** %13, align 8, !dbg !1954
  %444 = load i8, i8* %443, align 1, !dbg !1956
  %445 = sext i8 %444 to i32, !dbg !1956
  %446 = icmp ne i32 %445, 40, !dbg !1957
  br label %447

; <label>:447:                                    ; preds = %442, %437, %432
  %448 = phi i1 [ false, %437 ], [ false, %432 ], [ %446, %442 ]
  br i1 %448, label %449, label %458, !dbg !1958

; <label>:449:                                    ; preds = %447
  %450 = load i8*, i8** %13, align 8, !dbg !1960
  %451 = load i8, i8* %450, align 1, !dbg !1963
  %452 = sext i8 %451 to i32, !dbg !1963
  %453 = call zeroext i1 @c_isspace(i32 %452), !dbg !1964
  br i1 %453, label %454, label %455, !dbg !1965

; <label>:454:                                    ; preds = %449
  br label %458, !dbg !1966

; <label>:455:                                    ; preds = %449
  %456 = load i8*, i8** %13, align 8, !dbg !1967
  %457 = getelementptr inbounds i8, i8* %456, i32 1, !dbg !1967
  store i8* %457, i8** %13, align 8, !dbg !1967
  br label %432, !dbg !1968, !llvm.loop !1970

; <label>:458:                                    ; preds = %454, %447
  %459 = load i8*, i8** %13, align 8, !dbg !1971
  %460 = load i8*, i8** %16, align 8, !dbg !1972
  %461 = ptrtoint i8* %459 to i64, !dbg !1973
  %462 = ptrtoint i8* %460 to i64, !dbg !1973
  %463 = sub i64 %461, %462, !dbg !1973
  %464 = trunc i64 %463 to i32, !dbg !1971
  store i32 %464, i32* %18, align 4, !dbg !1974
  br label %465, !dbg !1975

; <label>:465:                                    ; preds = %470, %458
  %466 = load i8*, i8** %13, align 8, !dbg !1976
  %467 = load i8, i8* %466, align 1, !dbg !1977
  %468 = sext i8 %467 to i32, !dbg !1977
  %469 = call zeroext i1 @c_isspace(i32 %468), !dbg !1978
  br i1 %469, label %470, label %473, !dbg !1979

; <label>:470:                                    ; preds = %465
  %471 = load i8*, i8** %13, align 8, !dbg !1980
  %472 = getelementptr inbounds i8, i8* %471, i32 1, !dbg !1980
  store i8* %472, i8** %13, align 8, !dbg !1980
  br label %465, !dbg !1981, !llvm.loop !1982

; <label>:473:                                    ; preds = %465
  %474 = load i8*, i8** %13, align 8, !dbg !1983
  %475 = load i8, i8* %474, align 1, !dbg !1985
  %476 = sext i8 %475 to i32, !dbg !1985
  %477 = icmp eq i32 %476, 40, !dbg !1986
  br i1 %477, label %478, label %485, !dbg !1987

; <label>:478:                                    ; preds = %473
  %479 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !1988
  %480 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.28, i32 0, i32 0)) #8, !dbg !1989
  %481 = load %struct.fieldinfo*, %struct.fieldinfo** %10, align 8, !dbg !1990
  %482 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %481, i32 0, i32 0, !dbg !1991
  %483 = load i8*, i8** %482, align 8, !dbg !1991
  %484 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @f_dependency.depname, i32 0, i32 2), align 8, !dbg !1992
  call void (%struct.parsedb_state*, i8*, ...) @parse_error(%struct.parsedb_state* %479, i8* %480, i8* %483, i8* %484, i32 41) #9, !dbg !1993
  unreachable, !dbg !1993

; <label>:485:                                    ; preds = %473
  %486 = load i8*, i8** %13, align 8, !dbg !1994
  %487 = load i8, i8* %486, align 1, !dbg !1996
  %488 = sext i8 %487 to i32, !dbg !1996
  %489 = icmp ne i32 %488, 41, !dbg !1997
  br i1 %489, label %490, label %497, !dbg !1998

; <label>:490:                                    ; preds = %485
  %491 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !1999
  %492 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.28, i32 0, i32 0)) #8, !dbg !2000
  %493 = load %struct.fieldinfo*, %struct.fieldinfo** %10, align 8, !dbg !2001
  %494 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %493, i32 0, i32 0, !dbg !2002
  %495 = load i8*, i8** %494, align 8, !dbg !2002
  %496 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @f_dependency.depname, i32 0, i32 2), align 8, !dbg !2003
  call void (%struct.parsedb_state*, i8*, ...) @parse_error(%struct.parsedb_state* %491, i8* %492, i8* %495, i8* %496, i32 32) #9, !dbg !2004
  unreachable, !dbg !2004

; <label>:497:                                    ; preds = %485
  %498 = load i8*, i8** %13, align 8, !dbg !2005
  %499 = load i8, i8* %498, align 1, !dbg !2007
  %500 = sext i8 %499 to i32, !dbg !2007
  %501 = icmp eq i32 %500, 0, !dbg !2008
  br i1 %501, label %502, label %509, !dbg !2009

; <label>:502:                                    ; preds = %497
  %503 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !2010
  %504 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.29, i32 0, i32 0)) #8, !dbg !2011
  %505 = load %struct.fieldinfo*, %struct.fieldinfo** %10, align 8, !dbg !2012
  %506 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %505, i32 0, i32 0, !dbg !2013
  %507 = load i8*, i8** %506, align 8, !dbg !2013
  %508 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @f_dependency.depname, i32 0, i32 2), align 8, !dbg !2014
  call void (%struct.parsedb_state*, i8*, ...) @parse_error(%struct.parsedb_state* %503, i8* %504, i8* %507, i8* %508) #9, !dbg !2015
  unreachable, !dbg !2015

; <label>:509:                                    ; preds = %497
  br label %510

; <label>:510:                                    ; preds = %509
  br label %511

; <label>:511:                                    ; preds = %510
  call void @varbuf_reset(%struct.varbuf* @f_dependency.version), !dbg !2016
  %512 = load i8*, i8** %16, align 8, !dbg !2017
  %513 = load i32, i32* %18, align 4, !dbg !2018
  %514 = sext i32 %513 to i64, !dbg !2018
  call void @varbuf_add_buf(%struct.varbuf* @f_dependency.version, i8* %512, i64 %514), !dbg !2019
  call void @varbuf_end_str(%struct.varbuf* @f_dependency.version), !dbg !2020
  %515 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !2021
  %516 = load %struct.deppossi*, %struct.deppossi** %21, align 8, !dbg !2023
  %517 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %516, i32 0, i32 6, !dbg !2024
  %518 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @f_dependency.version, i32 0, i32 2), align 8, !dbg !2025
  %519 = call i32 @parse_db_version(%struct.parsedb_state* %515, %struct.dpkg_version* %517, i8* %518), !dbg !2026
  %520 = icmp slt i32 %519, 0, !dbg !2027
  br i1 %520, label %521, label %529, !dbg !2028

; <label>:521:                                    ; preds = %511
  %522 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !2029
  %523 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.30, i32 0, i32 0)) #8, !dbg !2030
  %524 = load %struct.fieldinfo*, %struct.fieldinfo** %10, align 8, !dbg !2031
  %525 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %524, i32 0, i32 0, !dbg !2032
  %526 = load i8*, i8** %525, align 8, !dbg !2032
  %527 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @f_dependency.depname, i32 0, i32 2), align 8, !dbg !2033
  %528 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @f_dependency.version, i32 0, i32 2), align 8, !dbg !2034
  call void (%struct.parsedb_state*, i8*, ...) @parse_problem(%struct.parsedb_state* %522, i8* %523, i8* %526, i8* %527, i8* %528), !dbg !2035
  br label %529, !dbg !2035

; <label>:529:                                    ; preds = %521, %511
  %530 = load i8*, i8** %13, align 8, !dbg !2036
  %531 = getelementptr inbounds i8, i8* %530, i32 1, !dbg !2036
  store i8* %531, i8** %13, align 8, !dbg !2036
  br label %532, !dbg !2037

; <label>:532:                                    ; preds = %537, %529
  %533 = load i8*, i8** %13, align 8, !dbg !2038
  %534 = load i8, i8* %533, align 1, !dbg !2039
  %535 = sext i8 %534 to i32, !dbg !2039
  %536 = call zeroext i1 @c_isspace(i32 %535), !dbg !2040
  br i1 %536, label %537, label %540, !dbg !2041

; <label>:537:                                    ; preds = %532
  %538 = load i8*, i8** %13, align 8, !dbg !2042
  %539 = getelementptr inbounds i8, i8* %538, i32 1, !dbg !2042
  store i8* %539, i8** %13, align 8, !dbg !2042
  br label %532, !dbg !2043, !llvm.loop !2044

; <label>:540:                                    ; preds = %532
  br label %546, !dbg !2045

; <label>:541:                                    ; preds = %273
  %542 = load %struct.deppossi*, %struct.deppossi** %21, align 8, !dbg !2046
  %543 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %542, i32 0, i32 7, !dbg !2048
  store i32 0, i32* %543, align 8, !dbg !2049
  %544 = load %struct.deppossi*, %struct.deppossi** %21, align 8, !dbg !2050
  %545 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %544, i32 0, i32 6, !dbg !2051
  call void @dpkg_version_blank(%struct.dpkg_version* %545), !dbg !2052
  br label %546

; <label>:546:                                    ; preds = %541, %540
  %547 = load i8*, i8** %13, align 8, !dbg !2053
  %548 = load i8, i8* %547, align 1, !dbg !2055
  %549 = icmp ne i8 %548, 0, !dbg !2055
  br i1 %549, label %550, label %555, !dbg !2056

; <label>:550:                                    ; preds = %546
  %551 = load i8*, i8** %13, align 8, !dbg !2057
  %552 = load i8, i8* %551, align 1, !dbg !2059
  %553 = sext i8 %552 to i32, !dbg !2059
  %554 = icmp eq i32 %553, 44, !dbg !2060
  br i1 %554, label %555, label %556, !dbg !2061

; <label>:555:                                    ; preds = %550, %546
  br label %610, !dbg !2062

; <label>:556:                                    ; preds = %550
  %557 = load i8*, i8** %13, align 8, !dbg !2064
  %558 = load i8, i8* %557, align 1, !dbg !2066
  %559 = sext i8 %558 to i32, !dbg !2066
  %560 = icmp ne i32 %559, 124, !dbg !2067
  br i1 %560, label %561, label %572, !dbg !2068

; <label>:561:                                    ; preds = %556
  %562 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !2069
  %563 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.31, i32 0, i32 0)) #8, !dbg !2070
  %564 = load %struct.fieldinfo*, %struct.fieldinfo** %10, align 8, !dbg !2071
  %565 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %564, i32 0, i32 0, !dbg !2072
  %566 = load i8*, i8** %565, align 8, !dbg !2072
  %567 = load %struct.deppossi*, %struct.deppossi** %21, align 8, !dbg !2073
  %568 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %567, i32 0, i32 1, !dbg !2074
  %569 = load %struct.pkgset*, %struct.pkgset** %568, align 8, !dbg !2074
  %570 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %569, i32 0, i32 1, !dbg !2075
  %571 = load i8*, i8** %570, align 8, !dbg !2075
  call void (%struct.parsedb_state*, i8*, ...) @parse_error(%struct.parsedb_state* %562, i8* %563, i8* %566, i8* %571) #9, !dbg !2076
  unreachable, !dbg !2076

; <label>:572:                                    ; preds = %556
  %573 = load %struct.fieldinfo*, %struct.fieldinfo** %10, align 8, !dbg !2077
  %574 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %573, i32 0, i32 4, !dbg !2079
  %575 = load i64, i64* %574, align 8, !dbg !2079
  %576 = icmp eq i64 %575, 5, !dbg !2080
  br i1 %576, label %592, label %577, !dbg !2081

; <label>:577:                                    ; preds = %572
  %578 = load %struct.fieldinfo*, %struct.fieldinfo** %10, align 8, !dbg !2082
  %579 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %578, i32 0, i32 4, !dbg !2083
  %580 = load i64, i64* %579, align 8, !dbg !2083
  %581 = icmp eq i64 %580, 4, !dbg !2084
  br i1 %581, label %592, label %582, !dbg !2085

; <label>:582:                                    ; preds = %577
  %583 = load %struct.fieldinfo*, %struct.fieldinfo** %10, align 8, !dbg !2086
  %584 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %583, i32 0, i32 4, !dbg !2087
  %585 = load i64, i64* %584, align 8, !dbg !2087
  %586 = icmp eq i64 %585, 6, !dbg !2088
  br i1 %586, label %592, label %587, !dbg !2089

; <label>:587:                                    ; preds = %582
  %588 = load %struct.fieldinfo*, %struct.fieldinfo** %10, align 8, !dbg !2090
  %589 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %588, i32 0, i32 4, !dbg !2091
  %590 = load i64, i64* %589, align 8, !dbg !2091
  %591 = icmp eq i64 %590, 7, !dbg !2092
  br i1 %591, label %592, label %598, !dbg !2093

; <label>:592:                                    ; preds = %587, %582, %577, %572
  %593 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !2094
  %594 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.32, i32 0, i32 0)) #8, !dbg !2095
  %595 = load %struct.fieldinfo*, %struct.fieldinfo** %10, align 8, !dbg !2096
  %596 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %595, i32 0, i32 0, !dbg !2097
  %597 = load i8*, i8** %596, align 8, !dbg !2097
  call void (%struct.parsedb_state*, i8*, ...) @parse_error(%struct.parsedb_state* %593, i8* %594, i8* %597) #9, !dbg !2098
  unreachable, !dbg !2100

; <label>:598:                                    ; preds = %587
  %599 = load i8*, i8** %13, align 8, !dbg !2101
  %600 = getelementptr inbounds i8, i8* %599, i32 1, !dbg !2101
  store i8* %600, i8** %13, align 8, !dbg !2101
  br label %601, !dbg !2102

; <label>:601:                                    ; preds = %606, %598
  %602 = load i8*, i8** %13, align 8, !dbg !2103
  %603 = load i8, i8* %602, align 1, !dbg !2104
  %604 = sext i8 %603 to i32, !dbg !2104
  %605 = call zeroext i1 @c_isspace(i32 %604), !dbg !2105
  br i1 %605, label %606, label %609, !dbg !2106

; <label>:606:                                    ; preds = %601
  %607 = load i8*, i8** %13, align 8, !dbg !2107
  %608 = getelementptr inbounds i8, i8* %607, i32 1, !dbg !2107
  store i8* %608, i8** %13, align 8, !dbg !2107
  br label %601, !dbg !2108, !llvm.loop !2109

; <label>:609:                                    ; preds = %601
  br label %63, !dbg !2110, !llvm.loop !2112

; <label>:610:                                    ; preds = %555
  %611 = load i8*, i8** %13, align 8, !dbg !2113
  %612 = load i8, i8* %611, align 1, !dbg !2115
  %613 = icmp ne i8 %612, 0, !dbg !2115
  br i1 %613, label %615, label %614, !dbg !2116

; <label>:614:                                    ; preds = %610
  br label %627, !dbg !2117

; <label>:615:                                    ; preds = %610
  %616 = load i8*, i8** %13, align 8, !dbg !2119
  %617 = getelementptr inbounds i8, i8* %616, i32 1, !dbg !2119
  store i8* %617, i8** %13, align 8, !dbg !2119
  br label %618, !dbg !2120

; <label>:618:                                    ; preds = %623, %615
  %619 = load i8*, i8** %13, align 8, !dbg !2121
  %620 = load i8, i8* %619, align 1, !dbg !2123
  %621 = sext i8 %620 to i32, !dbg !2123
  %622 = call zeroext i1 @c_isspace(i32 %621), !dbg !2124
  br i1 %622, label %623, label %626, !dbg !2125

; <label>:623:                                    ; preds = %618
  %624 = load i8*, i8** %13, align 8, !dbg !2126
  %625 = getelementptr inbounds i8, i8* %624, i32 1, !dbg !2126
  store i8* %625, i8** %13, align 8, !dbg !2126
  br label %618, !dbg !2127, !llvm.loop !2129

; <label>:626:                                    ; preds = %618
  br label %42, !dbg !2130, !llvm.loop !2132

; <label>:627:                                    ; preds = %28, %614
  ret void, !dbg !2133
}

declare void @varbuf_reset(%struct.varbuf*) #2

declare void @varbuf_add_buf(%struct.varbuf*, i8*, i64) #2

declare void @varbuf_end_str(%struct.varbuf*) #2

declare %struct.dpkg_arch* @dpkg_arch_get(i32) #2

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @c_isalnum(i32) #5 !dbg !2134 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2135, metadata !424), !dbg !2136
  %3 = load i32, i32* %2, align 4, !dbg !2137
  %4 = call zeroext i1 @c_isbits(i32 %3, i32 56), !dbg !2138
  ret i1 %4, !dbg !2139
}

declare void @dpkg_version_blank(%struct.dpkg_version*) #2

; Function Attrs: nounwind uwtable
define void @f_trigpend(%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*) #0 !dbg !2140 {
  %6 = alloca %struct.pkginfo*, align 8
  %7 = alloca %struct.pkgbin*, align 8
  %8 = alloca %struct.parsedb_state*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.fieldinfo*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %6, metadata !2141, metadata !424), !dbg !2142
  store %struct.pkgbin* %1, %struct.pkgbin** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %7, metadata !2143, metadata !424), !dbg !2144
  store %struct.parsedb_state* %2, %struct.parsedb_state** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.parsedb_state** %8, metadata !2145, metadata !424), !dbg !2146
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2147, metadata !424), !dbg !2148
  store %struct.fieldinfo* %4, %struct.fieldinfo** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.fieldinfo** %10, metadata !2149, metadata !424), !dbg !2150
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2151, metadata !424), !dbg !2152
  call void @llvm.dbg.declare(metadata i8** %12, metadata !2153, metadata !424), !dbg !2154
  %13 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !2155
  %14 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %13, i32 0, i32 1, !dbg !2157
  %15 = load i32, i32* %14, align 4, !dbg !2157
  %16 = and i32 %15, 4, !dbg !2158
  %17 = icmp ne i32 %16, 0, !dbg !2158
  br i1 %17, label %18, label %24, !dbg !2159

; <label>:18:                                     ; preds = %5
  %19 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !2160
  %20 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i32 0, i32 0)) #8, !dbg !2161
  %21 = load %struct.fieldinfo*, %struct.fieldinfo** %10, align 8, !dbg !2162
  %22 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %21, i32 0, i32 0, !dbg !2163
  %23 = load i8*, i8** %22, align 8, !dbg !2163
  call void (%struct.parsedb_state*, i8*, ...) @parse_error(%struct.parsedb_state* %19, i8* %20, i8* %23) #9, !dbg !2164
  unreachable, !dbg !2164

; <label>:24:                                     ; preds = %5
  br label %25, !dbg !2165

; <label>:25:                                     ; preds = %47, %24
  %26 = call i8* @scan_word(i8** %9), !dbg !2166
  store i8* %26, i8** %11, align 8, !dbg !2168
  %27 = icmp ne i8* %26, null, !dbg !2169
  br i1 %27, label %28, label %48, !dbg !2169

; <label>:28:                                     ; preds = %25
  %29 = load i8*, i8** %11, align 8, !dbg !2170
  %30 = call i8* @trig_name_is_illegal(i8* %29), !dbg !2172
  store i8* %30, i8** %12, align 8, !dbg !2173
  %31 = load i8*, i8** %12, align 8, !dbg !2174
  %32 = icmp ne i8* %31, null, !dbg !2174
  br i1 %32, label %33, label %38, !dbg !2176

; <label>:33:                                     ; preds = %28
  %34 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !2177
  %35 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.33, i32 0, i32 0)) #8, !dbg !2178
  %36 = load i8*, i8** %11, align 8, !dbg !2179
  %37 = load i8*, i8** %12, align 8, !dbg !2180
  call void (%struct.parsedb_state*, i8*, ...) @parse_error(%struct.parsedb_state* %34, i8* %35, i8* %36, i8* %37) #9, !dbg !2181
  unreachable, !dbg !2181

; <label>:38:                                     ; preds = %28
  %39 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !2182
  %40 = load i8*, i8** %11, align 8, !dbg !2184
  %41 = call i8* @nfstrsave(i8* %40), !dbg !2185
  %42 = call zeroext i1 @trig_note_pend_core(%struct.pkginfo* %39, i8* %41), !dbg !2186
  br i1 %42, label %47, label %43, !dbg !2188

; <label>:43:                                     ; preds = %38
  %44 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !2189
  %45 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.34, i32 0, i32 0)) #8, !dbg !2190
  %46 = load i8*, i8** %11, align 8, !dbg !2191
  call void (%struct.parsedb_state*, i8*, ...) @parse_error(%struct.parsedb_state* %44, i8* %45, i8* %46) #9, !dbg !2192
  unreachable, !dbg !2192

; <label>:47:                                     ; preds = %38
  br label %25, !dbg !2193, !llvm.loop !2195

; <label>:48:                                     ; preds = %25
  ret void, !dbg !2196
}

; Function Attrs: nounwind uwtable
define internal i8* @scan_word(i8**) #0 !dbg !416 {
  %2 = alloca i8*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !2197, metadata !424), !dbg !2198
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2199, metadata !424), !dbg !2200
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2201, metadata !424), !dbg !2202
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2203, metadata !424), !dbg !2204
  %7 = load i8**, i8*** %3, align 8, !dbg !2205
  %8 = load i8*, i8** %7, align 8, !dbg !2206
  store i8* %8, i8** %4, align 8, !dbg !2207
  br label %9, !dbg !2208

; <label>:9:                                      ; preds = %21, %1
  %10 = load i8*, i8** %4, align 8, !dbg !2209
  %11 = load i8, i8* %10, align 1, !dbg !2214
  %12 = icmp ne i8 %11, 0, !dbg !2214
  br i1 %12, label %16, label %13, !dbg !2215

; <label>:13:                                     ; preds = %9
  %14 = load i8*, i8** %4, align 8, !dbg !2216
  %15 = load i8**, i8*** %3, align 8, !dbg !2218
  store i8* %14, i8** %15, align 8, !dbg !2219
  store i8* null, i8** %2, align 8, !dbg !2220
  br label %52, !dbg !2220

; <label>:16:                                     ; preds = %9
  %17 = load i8*, i8** %4, align 8, !dbg !2221
  %18 = load i8, i8* %17, align 1, !dbg !2223
  %19 = sext i8 %18 to i32, !dbg !2223
  %20 = call zeroext i1 @c_iswhite(i32 %19), !dbg !2224
  br i1 %20, label %21, label %24, !dbg !2225

; <label>:21:                                     ; preds = %16
  %22 = load i8*, i8** %4, align 8, !dbg !2226
  %23 = getelementptr inbounds i8, i8* %22, i32 1, !dbg !2226
  store i8* %23, i8** %4, align 8, !dbg !2226
  br label %9, !dbg !2228, !llvm.loop !2229

; <label>:24:                                     ; preds = %16
  %25 = load i8*, i8** %4, align 8, !dbg !2230
  store i8* %25, i8** %5, align 8, !dbg !2231
  br label %26, !dbg !2232

; <label>:26:                                     ; preds = %24
  br label %27, !dbg !2233

; <label>:27:                                     ; preds = %37, %26
  %28 = load i8*, i8** %4, align 8, !dbg !2234
  %29 = load i8, i8* %28, align 1, !dbg !2239
  %30 = sext i8 %29 to i32, !dbg !2239
  %31 = icmp ne i32 %30, 0, !dbg !2239
  br i1 %31, label %32, label %40, !dbg !2240

; <label>:32:                                     ; preds = %27
  %33 = load i8*, i8** %4, align 8, !dbg !2241
  %34 = load i8, i8* %33, align 1, !dbg !2243
  %35 = sext i8 %34 to i32, !dbg !2243
  %36 = call zeroext i1 @c_iswhite(i32 %35), !dbg !2244
  br i1 %36, label %40, label %37, !dbg !2245

; <label>:37:                                     ; preds = %32
  %38 = load i8*, i8** %4, align 8, !dbg !2246
  %39 = getelementptr inbounds i8, i8* %38, i32 1, !dbg !2246
  store i8* %39, i8** %4, align 8, !dbg !2246
  br label %27, !dbg !2248, !llvm.loop !2249

; <label>:40:                                     ; preds = %32, %27
  %41 = load i8*, i8** %4, align 8, !dbg !2250
  store i8* %41, i8** %6, align 8, !dbg !2251
  br label %42, !dbg !2252

; <label>:42:                                     ; preds = %40
  call void @varbuf_reset(%struct.varbuf* @scan_word.word), !dbg !2253
  %43 = load i8*, i8** %5, align 8, !dbg !2254
  %44 = load i8*, i8** %6, align 8, !dbg !2255
  %45 = load i8*, i8** %5, align 8, !dbg !2256
  %46 = ptrtoint i8* %44 to i64, !dbg !2257
  %47 = ptrtoint i8* %45 to i64, !dbg !2257
  %48 = sub i64 %46, %47, !dbg !2257
  call void @varbuf_add_buf(%struct.varbuf* @scan_word.word, i8* %43, i64 %48), !dbg !2258
  call void @varbuf_end_str(%struct.varbuf* @scan_word.word), !dbg !2259
  %49 = load i8*, i8** %4, align 8, !dbg !2260
  %50 = load i8**, i8*** %3, align 8, !dbg !2261
  store i8* %49, i8** %50, align 8, !dbg !2262
  %51 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @scan_word.word, i32 0, i32 2), align 8, !dbg !2263
  store i8* %51, i8** %2, align 8, !dbg !2264
  br label %52, !dbg !2264

; <label>:52:                                     ; preds = %42, %13
  %53 = load i8*, i8** %2, align 8, !dbg !2265
  ret i8* %53, !dbg !2265
}

declare i8* @trig_name_is_illegal(i8*) #2

declare zeroext i1 @trig_note_pend_core(%struct.pkginfo*, i8*) #2

; Function Attrs: nounwind uwtable
define void @f_trigaw(%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*) #0 !dbg !2266 {
  %6 = alloca %struct.pkginfo*, align 8
  %7 = alloca %struct.pkgbin*, align 8
  %8 = alloca %struct.parsedb_state*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.fieldinfo*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.pkginfo*, align 8
  %13 = alloca %struct.dpkg_error, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %6, metadata !2267, metadata !424), !dbg !2268
  store %struct.pkgbin* %1, %struct.pkgbin** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %7, metadata !2269, metadata !424), !dbg !2270
  store %struct.parsedb_state* %2, %struct.parsedb_state** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.parsedb_state** %8, metadata !2271, metadata !424), !dbg !2272
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2273, metadata !424), !dbg !2274
  store %struct.fieldinfo* %4, %struct.fieldinfo** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.fieldinfo** %10, metadata !2275, metadata !424), !dbg !2276
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2277, metadata !424), !dbg !2278
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %12, metadata !2279, metadata !424), !dbg !2280
  %14 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !2281
  %15 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %14, i32 0, i32 1, !dbg !2283
  %16 = load i32, i32* %15, align 4, !dbg !2283
  %17 = and i32 %16, 4, !dbg !2284
  %18 = icmp ne i32 %17, 0, !dbg !2284
  br i1 %18, label %19, label %25, !dbg !2285

; <label>:19:                                     ; preds = %5
  %20 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !2286
  %21 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i32 0, i32 0)) #8, !dbg !2287
  %22 = load %struct.fieldinfo*, %struct.fieldinfo** %10, align 8, !dbg !2288
  %23 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %22, i32 0, i32 0, !dbg !2289
  %24 = load i8*, i8** %23, align 8, !dbg !2289
  call void (%struct.parsedb_state*, i8*, ...) @parse_error(%struct.parsedb_state* %20, i8* %21, i8* %24) #9, !dbg !2290
  unreachable, !dbg !2290

; <label>:25:                                     ; preds = %5
  br label %26, !dbg !2291

; <label>:26:                                     ; preds = %48, %25
  %27 = call i8* @scan_word(i8** %9), !dbg !2292
  store i8* %27, i8** %11, align 8, !dbg !2294
  %28 = icmp ne i8* %27, null, !dbg !2295
  br i1 %28, label %29, label %50, !dbg !2295

; <label>:29:                                     ; preds = %26
  call void @llvm.dbg.declare(metadata %struct.dpkg_error* %13, metadata !2296, metadata !424), !dbg !2298
  %30 = load i8*, i8** %11, align 8, !dbg !2299
  %31 = call %struct.pkginfo* @pkg_spec_parse_pkg(i8* %30, %struct.dpkg_error* %13), !dbg !2300
  store %struct.pkginfo* %31, %struct.pkginfo** %12, align 8, !dbg !2301
  %32 = load %struct.pkginfo*, %struct.pkginfo** %12, align 8, !dbg !2302
  %33 = icmp eq %struct.pkginfo* %32, null, !dbg !2304
  br i1 %33, label %34, label %40, !dbg !2305

; <label>:34:                                     ; preds = %29
  %35 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !2306
  %36 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.35, i32 0, i32 0)) #8, !dbg !2307
  %37 = load i8*, i8** %11, align 8, !dbg !2308
  %38 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %13, i32 0, i32 2, !dbg !2309
  %39 = load i8*, i8** %38, align 8, !dbg !2309
  call void (%struct.parsedb_state*, i8*, ...) @parse_error(%struct.parsedb_state* %35, i8* %36, i8* %37, i8* %39) #9, !dbg !2310
  unreachable, !dbg !2310

; <label>:40:                                     ; preds = %29
  %41 = load %struct.pkginfo*, %struct.pkginfo** %12, align 8, !dbg !2311
  %42 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !2313
  %43 = call zeroext i1 @trig_note_aw(%struct.pkginfo* %41, %struct.pkginfo* %42), !dbg !2314
  br i1 %43, label %48, label %44, !dbg !2315

; <label>:44:                                     ; preds = %40
  %45 = load %struct.parsedb_state*, %struct.parsedb_state** %8, align 8, !dbg !2316
  %46 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.36, i32 0, i32 0)) #8, !dbg !2317
  %47 = load i8*, i8** %11, align 8, !dbg !2318
  call void (%struct.parsedb_state*, i8*, ...) @parse_error(%struct.parsedb_state* %45, i8* %46, i8* %47) #9, !dbg !2319
  unreachable, !dbg !2319

; <label>:48:                                     ; preds = %40
  %49 = load %struct.pkginfo*, %struct.pkginfo** %12, align 8, !dbg !2320
  call void @trig_awaited_pend_enqueue(%struct.pkginfo* %49), !dbg !2321
  br label %26, !dbg !2322, !llvm.loop !2324

; <label>:50:                                     ; preds = %26
  ret void, !dbg !2325
}

declare %struct.pkginfo* @pkg_spec_parse_pkg(i8*, %struct.dpkg_error*) #2

declare zeroext i1 @trig_note_aw(%struct.pkginfo*, %struct.pkginfo*) #2

declare void @trig_awaited_pend_enqueue(%struct.pkginfo*) #2

declare zeroext i1 @c_isbits(i32, i32) #2

declare void @dpkg_error_destroy(%struct.dpkg_error*) #2

declare i32 @dpkg_put_error(%struct.dpkg_error*, i8*, ...) #2

declare %struct.namevalue* @namevalue_find_by_name(%struct.namevalue*, i8*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @c_iswhite(i32) #5 !dbg !2326 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2327, metadata !424), !dbg !2328
  %3 = load i32, i32* %2, align 4, !dbg !2329
  %4 = call zeroext i1 @c_isbits(i32 %3, i32 2), !dbg !2330
  ret i1 %4, !dbg !2331
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind }
attributes #8 = { nounwind }
attributes #9 = { noreturn }
attributes #10 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!419, !420}
!llvm.ident = !{!421}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !141, globals: !156)
!1 = !DIFile(filename: "[inter]lib--dpkg--fields.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{!3, !15, !26, !35, !43, !47, !57, !67, !73, !78, !91, !98, !115, !121, !124, !130}
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
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "parsedbtype", file: !92, line: 41, size: 32, align: 32, elements: !93)
!92 = !DIFile(filename: "../../lib/dpkg/parsedump.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!93 = !{!94, !95, !96, !97}
!94 = !DIEnumerator(name: "pdb_file_update", value: 0)
!95 = !DIEnumerator(name: "pdb_file_status", value: 1)
!96 = !DIEnumerator(name: "pdb_file_control", value: 2)
!97 = !DIEnumerator(name: "pdb_file_available", value: 3)
!98 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "parsedbflags", file: !4, line: 328, size: 32, align: 32, elements: !99)
!99 = !{!100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114}
!100 = !DIEnumerator(name: "pdb_single_stanza", value: 1)
!101 = !DIEnumerator(name: "pdb_recordavailable", value: 2)
!102 = !DIEnumerator(name: "pdb_rejectstatus", value: 4)
!103 = !DIEnumerator(name: "pdb_weakclassification", value: 8)
!104 = !DIEnumerator(name: "pdb_ignore_archives", value: 16)
!105 = !DIEnumerator(name: "pdb_ignoreolder", value: 32)
!106 = !DIEnumerator(name: "pdb_lax_version_parser", value: 64)
!107 = !DIEnumerator(name: "pdb_lax_stanza_parser", value: 512)
!108 = !DIEnumerator(name: "pdb_lax_parser", value: 576)
!109 = !DIEnumerator(name: "pdb_close_fd", value: 128)
!110 = !DIEnumerator(name: "pdb_dash_is_stdin", value: 256)
!111 = !DIEnumerator(name: "pdb_parse_status", value: 584)
!112 = !DIEnumerator(name: "pdb_parse_update", value: 585)
!113 = !DIEnumerator(name: "pdb_parse_available", value: 582)
!114 = !DIEnumerator(name: "pdb_parse_binary", value: 7)
!115 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_msg_type", file: !116, line: 36, size: 32, align: 32, elements: !117)
!116 = !DIFile(filename: "../../lib/dpkg/error.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!117 = !{!118, !119, !120}
!118 = !DIEnumerator(name: "DPKG_MSG_NONE", value: 0)
!119 = !DIEnumerator(name: "DPKG_MSG_WARN", value: 1)
!120 = !DIEnumerator(name: "DPKG_MSG_ERROR", value: 2)
!121 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fwriteflags", file: !92, line: 112, size: 32, align: 32, elements: !122)
!122 = !{!123}
!123 = !DIEnumerator(name: "fw_printheader", value: 1)
!124 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "parse_nv_flags", file: !125, line: 46, size: 32, align: 32, elements: !126)
!125 = !DIFile(filename: "fields.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!126 = !{!127, !128, !129}
!127 = !DIEnumerator(name: "PARSE_NV_LAST", value: 0)
!128 = !DIEnumerator(name: "PARSE_NV_NEXT", value: 1)
!129 = !DIEnumerator(name: "PARSE_NV_FALLBACK", value: 2)
!130 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "c_ctype_bit", file: !131, line: 32, size: 32, align: 32, elements: !132)
!131 = !DIFile(filename: "../../lib/dpkg/c-ctype.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!132 = !{!133, !134, !135, !136, !137, !138, !139, !140}
!133 = !DIEnumerator(name: "C_CTYPE_BLANK", value: 1)
!134 = !DIEnumerator(name: "C_CTYPE_WHITE", value: 2)
!135 = !DIEnumerator(name: "C_CTYPE_SPACE", value: 4)
!136 = !DIEnumerator(name: "C_CTYPE_UPPER", value: 8)
!137 = !DIEnumerator(name: "C_CTYPE_LOWER", value: 16)
!138 = !DIEnumerator(name: "C_CTYPE_DIGIT", value: 32)
!139 = !DIEnumerator(name: "C_CTYPE_ALPHA", value: 24)
!140 = !DIEnumerator(name: "C_CTYPE_ALNUM", value: 56)
!141 = !{!142, !143, !147, !150, !152, !154, !155}
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64, align: 64)
!145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !146)
!146 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !148, line: 122, baseType: !149)
!148 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!149 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64, align: 64)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64, align: 64)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64, align: 64)
!153 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64, align: 64)
!155 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!156 = !{!157, !411, !413, !414, !415}
!157 = distinct !DIGlobalVariable(name: "obsolete_str", scope: !158, file: !125, line: 348, type: !408, isLocal: true, isDefinition: true, variable: [9 x i8]* @f_conffiles.obsolete_str)
!158 = distinct !DISubprogram(name: "f_conffiles", scope: !125, file: !125, line: 344, type: !159, isLocal: false, isDefinition: true, scopeLine: 347, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !407)
!159 = !DISubroutineType(types: !160)
!160 = !{null, !161, !331, !360, !144, !379}
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64, align: 64)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkginfo", file: !4, line: 195, size: 3072, align: 64, elements: !163)
!163 = !{!164, !211, !212, !213, !214, !215, !216, !217, !218, !219, !249, !250, !253, !262, !278, !279, !285, !353, !358, !359}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !162, file: !4, line: 196, baseType: !165, size: 64, align: 64)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64, align: 64)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgset", file: !4, line: 242, size: 3392, align: 64, elements: !167)
!167 = !{!168, !169, !170, !171, !210}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !166, file: !4, line: 243, baseType: !165, size: 64, align: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !166, file: !4, line: 244, baseType: !144, size: 64, align: 64, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !166, file: !4, line: 245, baseType: !162, size: 3072, align: 64, offset: 128)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "depended", scope: !166, file: !4, line: 249, baseType: !172, size: 128, align: 64, offset: 3200)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !166, file: !4, line: 246, size: 128, align: 64, elements: !173)
!173 = !{!174, !209}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !172, file: !4, line: 247, baseType: !175, size: 64, align: 64)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64, align: 64)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "deppossi", file: !4, line: 63, size: 640, align: 64, elements: !177)
!177 = !{!178, !186, !187, !188, !189, !190, !199, !206, !207, !208}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !176, file: !4, line: 64, baseType: !179, size: 64, align: 64)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64, align: 64)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dependency", file: !4, line: 56, size: 256, align: 64, elements: !181)
!181 = !{!182, !183, !184, !185}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !180, file: !4, line: 57, baseType: !161, size: 64, align: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !180, file: !4, line: 58, baseType: !179, size: 64, align: 64, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !180, file: !4, line: 59, baseType: !175, size: 64, align: 64, offset: 128)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !180, file: !4, line: 60, baseType: !3, size: 32, align: 32, offset: 192)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "ed", scope: !176, file: !4, line: 65, baseType: !165, size: 64, align: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !176, file: !4, line: 66, baseType: !175, size: 64, align: 64, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "rev_next", scope: !176, file: !4, line: 66, baseType: !175, size: 64, align: 64, offset: 192)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "rev_prev", scope: !176, file: !4, line: 66, baseType: !175, size: 64, align: 64, offset: 256)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !176, file: !4, line: 67, baseType: !191, size: 64, align: 64, offset: 320)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64, align: 64)
!192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !193)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_arch", file: !16, line: 48, size: 192, align: 64, elements: !194)
!194 = !{!195, !197, !198}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !193, file: !16, line: 49, baseType: !196, size: 64, align: 64)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64, align: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !193, file: !16, line: 50, baseType: !144, size: 64, align: 64, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !193, file: !16, line: 51, baseType: !15, size: 32, align: 32, offset: 128)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !176, file: !4, line: 68, baseType: !200, size: 192, align: 64, offset: 384)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_version", file: !27, line: 42, size: 192, align: 64, elements: !201)
!201 = !{!202, !204, !205}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !200, file: !27, line: 44, baseType: !203, size: 32, align: 32)
!203 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !200, file: !27, line: 46, baseType: !144, size: 64, align: 64, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !200, file: !27, line: 48, baseType: !144, size: 64, align: 64, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "verrel", scope: !176, file: !4, line: 69, baseType: !26, size: 32, align: 32, offset: 576)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "arch_is_implicit", scope: !176, file: !4, line: 70, baseType: !153, size: 8, align: 8, offset: 608)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "cyclebreak", scope: !176, file: !4, line: 71, baseType: !153, size: 8, align: 8, offset: 616)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !172, file: !4, line: 248, baseType: !175, size: 64, align: 64, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "installed_instances", scope: !166, file: !4, line: 250, baseType: !155, size: 32, align: 32, offset: 3328)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "arch_next", scope: !162, file: !4, line: 197, baseType: !161, size: 64, align: 64, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "want", scope: !162, file: !4, line: 199, baseType: !35, size: 32, align: 32, offset: 128)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "eflag", scope: !162, file: !4, line: 201, baseType: !43, size: 32, align: 32, offset: 160)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !162, file: !4, line: 202, baseType: !47, size: 32, align: 32, offset: 192)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !162, file: !4, line: 203, baseType: !57, size: 32, align: 32, offset: 224)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "otherpriority", scope: !162, file: !4, line: 204, baseType: !144, size: 64, align: 64, offset: 256)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "section", scope: !162, file: !4, line: 205, baseType: !144, size: 64, align: 64, offset: 320)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "configversion", scope: !162, file: !4, line: 206, baseType: !200, size: 192, align: 64, offset: 384)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !162, file: !4, line: 207, baseType: !220, size: 960, align: 64, offset: 576)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgbin", file: !4, line: 107, size: 960, align: 64, elements: !221)
!221 = !{!222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !242}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "depends", scope: !220, file: !4, line: 108, baseType: !179, size: 64, align: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "essential", scope: !220, file: !4, line: 110, baseType: !153, size: 8, align: 8, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "multiarch", scope: !220, file: !4, line: 111, baseType: !67, size: 32, align: 32, offset: 96)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !220, file: !4, line: 112, baseType: !191, size: 64, align: 64, offset: 128)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "pkgname_archqual", scope: !220, file: !4, line: 115, baseType: !144, size: 64, align: 64, offset: 192)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !220, file: !4, line: 116, baseType: !144, size: 64, align: 64, offset: 256)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "maintainer", scope: !220, file: !4, line: 117, baseType: !144, size: 64, align: 64, offset: 320)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !220, file: !4, line: 118, baseType: !144, size: 64, align: 64, offset: 384)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "installedsize", scope: !220, file: !4, line: 119, baseType: !144, size: 64, align: 64, offset: 448)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !220, file: !4, line: 120, baseType: !144, size: 64, align: 64, offset: 512)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "bugs", scope: !220, file: !4, line: 121, baseType: !144, size: 64, align: 64, offset: 576)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !220, file: !4, line: 122, baseType: !200, size: 192, align: 64, offset: 640)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "conffiles", scope: !220, file: !4, line: 123, baseType: !235, size: 64, align: 64, offset: 832)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64, align: 64)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conffile", file: !4, line: 80, size: 256, align: 64, elements: !237)
!237 = !{!238, !239, !240, !241}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !236, file: !4, line: 81, baseType: !235, size: 64, align: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !236, file: !4, line: 82, baseType: !144, size: 64, align: 64, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !236, file: !4, line: 83, baseType: !144, size: 64, align: 64, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "obsolete", scope: !236, file: !4, line: 84, baseType: !153, size: 8, align: 8, offset: 192)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "arbs", scope: !220, file: !4, line: 124, baseType: !243, size: 64, align: 64, offset: 896)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64, align: 64)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arbitraryfield", file: !4, line: 74, size: 192, align: 64, elements: !245)
!245 = !{!246, !247, !248}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !244, file: !4, line: 75, baseType: !243, size: 64, align: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !244, file: !4, line: 76, baseType: !144, size: 64, align: 64, offset: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !244, file: !4, line: 77, baseType: !144, size: 64, align: 64, offset: 128)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !162, file: !4, line: 208, baseType: !220, size: 960, align: 64, offset: 1536)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "clientdata", scope: !162, file: !4, line: 209, baseType: !251, size: 64, align: 64, offset: 2496)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64, align: 64)
!252 = !DICompositeType(tag: DW_TAG_structure_type, name: "perpackagestate", file: !4, line: 151, flags: DIFlagFwdDecl)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "archives", scope: !162, file: !4, line: 211, baseType: !254, size: 64, align: 64, offset: 2560)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64, align: 64)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archivedetails", file: !4, line: 87, size: 320, align: 64, elements: !256)
!256 = !{!257, !258, !259, !260, !261}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !255, file: !4, line: 88, baseType: !254, size: 64, align: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !255, file: !4, line: 89, baseType: !144, size: 64, align: 64, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "msdosname", scope: !255, file: !4, line: 90, baseType: !144, size: 64, align: 64, offset: 128)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !255, file: !4, line: 91, baseType: !144, size: 64, align: 64, offset: 192)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "md5sum", scope: !255, file: !4, line: 92, baseType: !144, size: 64, align: 64, offset: 256)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "trigaw", scope: !162, file: !4, line: 216, baseType: !263, size: 128, align: 64, offset: 2624)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !162, file: !4, line: 213, size: 128, align: 64, elements: !264)
!264 = !{!265, !277}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !263, file: !4, line: 215, baseType: !266, size: 64, align: 64)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64, align: 64)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigaw", file: !4, line: 142, size: 320, align: 64, elements: !268)
!268 = !{!269, !270, !271, !272}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "aw", scope: !267, file: !4, line: 143, baseType: !161, size: 64, align: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "pend", scope: !267, file: !4, line: 143, baseType: !161, size: 64, align: 64, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "samepend_next", scope: !267, file: !4, line: 144, baseType: !266, size: 64, align: 64, offset: 128)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "sameaw", scope: !267, file: !4, line: 147, baseType: !273, size: 128, align: 64, offset: 192)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !267, file: !4, line: 145, size: 128, align: 64, elements: !274)
!274 = !{!275, !276}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !273, file: !4, line: 146, baseType: !266, size: 64, align: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !273, file: !4, line: 146, baseType: !266, size: 64, align: 64, offset: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !263, file: !4, line: 215, baseType: !266, size: 64, align: 64, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "othertrigaw_head", scope: !162, file: !4, line: 219, baseType: !266, size: 64, align: 64, offset: 2752)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "trigpend_head", scope: !162, file: !4, line: 220, baseType: !280, size: 64, align: 64, offset: 2816)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64, align: 64)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigpend", file: !4, line: 134, size: 128, align: 64, elements: !282)
!282 = !{!283, !284}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !281, file: !4, line: 135, baseType: !280, size: 64, align: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !281, file: !4, line: 136, baseType: !144, size: 64, align: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !162, file: !4, line: 231, baseType: !286, size: 64, align: 64, offset: 2880)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64, align: 64)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode_list", file: !79, line: 122, size: 128, align: 64, elements: !288)
!288 = !{!289, !290}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !287, file: !79, line: 123, baseType: !286, size: 64, align: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "namenode", scope: !287, file: !79, line: 124, baseType: !291, size: 64, align: 64, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64, align: 64)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode", file: !79, line: 90, size: 640, align: 64, elements: !293)
!293 = !{!294, !295, !296, !299, !307, !325, !340, !341, !342, !343}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !292, file: !79, line: 91, baseType: !291, size: 64, align: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !292, file: !79, line: 92, baseType: !144, size: 64, align: 64, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "packages", scope: !292, file: !79, line: 93, baseType: !297, size: 64, align: 64, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64, align: 64)
!298 = !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_list", file: !79, line: 93, flags: DIFlagFwdDecl)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "divert", scope: !292, file: !79, line: 94, baseType: !300, size: 64, align: 64, offset: 192)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64, align: 64)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_diversion", file: !79, line: 151, size: 256, align: 64, elements: !302)
!302 = !{!303, !304, !305, !306}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "useinstead", scope: !301, file: !79, line: 152, baseType: !291, size: 64, align: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "camefrom", scope: !301, file: !79, line: 153, baseType: !291, size: 64, align: 64, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "pkgset", scope: !301, file: !79, line: 154, baseType: !165, size: 64, align: 64, offset: 128)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !301, file: !79, line: 157, baseType: !300, size: 64, align: 64, offset: 192)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "statoverride", scope: !292, file: !79, line: 101, baseType: !308, size: 64, align: 64, offset: 256)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64, align: 64)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_stat", file: !310, line: 40, size: 256, align: 64, elements: !311)
!310 = !DIFile(filename: "../../lib/dpkg/file.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!311 = !{!312, !317, !320, !323, !324}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !309, file: !310, line: 41, baseType: !313, size: 32, align: 32)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !314, line: 80, baseType: !315)
!314 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !316, line: 125, baseType: !203)
!316 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!317 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !309, file: !310, line: 42, baseType: !318, size: 32, align: 32, offset: 32)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !314, line: 65, baseType: !319)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !316, line: 126, baseType: !203)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !309, file: !310, line: 43, baseType: !321, size: 32, align: 32, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !314, line: 70, baseType: !322)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !316, line: 129, baseType: !203)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "uname", scope: !309, file: !310, line: 47, baseType: !151, size: 64, align: 64, offset: 128)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !309, file: !310, line: 48, baseType: !151, size: 64, align: 64, offset: 192)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "trig_interested", scope: !292, file: !79, line: 103, baseType: !326, size: 64, align: 64, offset: 320)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64, align: 64)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigfileint", file: !74, line: 54, size: 448, align: 64, elements: !328)
!328 = !{!329, !330, !332, !333, !334, !335}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !327, file: !74, line: 55, baseType: !161, size: 64, align: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "pkgbin", scope: !327, file: !74, line: 56, baseType: !331, size: 64, align: 64, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64, align: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "fnn", scope: !327, file: !74, line: 57, baseType: !291, size: 64, align: 64, offset: 128)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !327, file: !74, line: 58, baseType: !73, size: 32, align: 32, offset: 192)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "samefile_next", scope: !327, file: !74, line: 59, baseType: !326, size: 64, align: 64, offset: 256)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "inoverall", scope: !327, file: !74, line: 62, baseType: !336, size: 128, align: 64, offset: 320)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !327, file: !74, line: 60, size: 128, align: 64, elements: !337)
!337 = !{!338, !339}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !336, file: !74, line: 61, baseType: !326, size: 64, align: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !336, file: !74, line: 61, baseType: !326, size: 64, align: 64, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !292, file: !79, line: 111, baseType: !78, size: 32, align: 32, offset: 384)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "oldhash", scope: !292, file: !79, line: 114, baseType: !144, size: 64, align: 64, offset: 448)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "newhash", scope: !292, file: !79, line: 117, baseType: !144, size: 64, align: 64, offset: 512)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "file_ondisk_id", scope: !292, file: !79, line: 119, baseType: !344, size: 64, align: 64, offset: 576)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64, align: 64)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ondisk_id", file: !79, line: 85, size: 128, align: 64, elements: !346)
!346 = !{!347, !350}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "id_dev", scope: !345, file: !79, line: 86, baseType: !348, size: 64, align: 64)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !314, line: 60, baseType: !349)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !316, line: 124, baseType: !149)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "id_ino", scope: !345, file: !79, line: 87, baseType: !351, size: 64, align: 64, offset: 64)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !314, line: 48, baseType: !352)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !316, line: 127, baseType: !149)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_phys_offs", scope: !162, file: !4, line: 232, baseType: !354, size: 64, align: 64, offset: 2944)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !355, line: 90, baseType: !356)
!355 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !316, line: 131, baseType: !357)
!357 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_valid", scope: !162, file: !4, line: 233, baseType: !153, size: 8, align: 8, offset: 3008)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "status_dirty", scope: !162, file: !4, line: 236, baseType: !153, size: 8, align: 8, offset: 3016)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64, align: 64)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "parsedb_state", file: !92, line: 48, size: 640, align: 64, elements: !362)
!362 = !{!363, !364, !365, !371, !372, !373, !374, !375, !376, !377, !378}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !361, file: !92, line: 49, baseType: !91, size: 32, align: 32)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !361, file: !92, line: 50, baseType: !98, size: 32, align: 32, offset: 32)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !361, file: !92, line: 51, baseType: !366, size: 128, align: 64, offset: 64)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_error", file: !116, line: 42, size: 128, align: 64, elements: !367)
!367 = !{!368, !369, !370}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !366, file: !116, line: 43, baseType: !115, size: 32, align: 32)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "syserrno", scope: !366, file: !116, line: 45, baseType: !155, size: 32, align: 32, offset: 32)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !366, file: !116, line: 46, baseType: !151, size: 64, align: 64, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !361, file: !92, line: 52, baseType: !161, size: 64, align: 64, offset: 192)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "pkgbin", scope: !361, file: !92, line: 53, baseType: !331, size: 64, align: 64, offset: 256)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !361, file: !92, line: 54, baseType: !151, size: 64, align: 64, offset: 320)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "dataptr", scope: !361, file: !92, line: 55, baseType: !151, size: 64, align: 64, offset: 384)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "endptr", scope: !361, file: !92, line: 56, baseType: !151, size: 64, align: 64, offset: 448)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !361, file: !92, line: 57, baseType: !144, size: 64, align: 64, offset: 512)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !361, file: !92, line: 58, baseType: !155, size: 32, align: 32, offset: 576)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "lno", scope: !361, file: !92, line: 59, baseType: !155, size: 32, align: 32, offset: 608)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64, align: 64)
!380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !381)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fieldinfo", file: !92, line: 133, size: 320, align: 64, elements: !382)
!382 = !{!383, !384, !387, !390, !406}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !381, file: !92, line: 134, baseType: !144, size: 64, align: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "namelen", scope: !381, file: !92, line: 135, baseType: !385, size: 64, align: 64, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !386, line: 216, baseType: !149)
!386 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!387 = !DIDerivedType(tag: DW_TAG_member, name: "rcall", scope: !381, file: !92, line: 136, baseType: !388, size: 64, align: 64, offset: 128)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64, align: 64)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "freadfunction", file: !92, line: 97, baseType: !159)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "wcall", scope: !381, file: !92, line: 137, baseType: !391, size: 64, align: 64, offset: 192)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64, align: 64)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "fwritefunction", file: !92, line: 117, baseType: !393)
!393 = !DISubroutineType(types: !394)
!394 = !{null, !395, !402, !404, !121, !379}
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64, align: 64)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varbuf", file: !397, line: 55, size: 192, align: 64, elements: !398)
!397 = !DIFile(filename: "../../lib/dpkg/varbuf.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!398 = !{!399, !400, !401}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !396, file: !397, line: 56, baseType: !385, size: 64, align: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !396, file: !397, line: 56, baseType: !385, size: 64, align: 64, offset: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !396, file: !397, line: 57, baseType: !151, size: 64, align: 64, offset: 128)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64, align: 64)
!403 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !162)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64, align: 64)
!405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !220)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !381, file: !92, line: 138, baseType: !385, size: 64, align: 64, offset: 256)
!407 = !{}
!408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 72, align: 8, elements: !409)
!409 = !{!410}
!410 = !DISubrange(count: 9)
!411 = distinct !DIGlobalVariable(name: "depname", scope: !412, file: !125, line: 406, type: !396, isLocal: true, isDefinition: true, variable: %struct.varbuf* @f_dependency.depname)
!412 = distinct !DISubprogram(name: "f_dependency", scope: !125, file: !125, line: 398, type: !159, isLocal: false, isDefinition: true, scopeLine: 401, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !407)
!413 = distinct !DIGlobalVariable(name: "version", scope: !412, file: !125, line: 406, type: !396, isLocal: true, isDefinition: true, variable: %struct.varbuf* @f_dependency.version)
!414 = distinct !DIGlobalVariable(name: "arch", scope: !412, file: !125, line: 470, type: !396, isLocal: true, isDefinition: true, variable: %struct.varbuf* @f_dependency.arch)
!415 = distinct !DIGlobalVariable(name: "word", scope: !416, file: !125, line: 627, type: !396, isLocal: true, isDefinition: true, variable: %struct.varbuf* @scan_word.word)
!416 = distinct !DISubprogram(name: "scan_word", scope: !125, file: !125, line: 625, type: !417, isLocal: true, isDefinition: true, scopeLine: 626, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !407)
!417 = !DISubroutineType(types: !418)
!418 = !{!144, !143}
!419 = !{i32 2, !"Dwarf Version", i32 4}
!420 = !{i32 2, !"Debug Info Version", i32 3}
!421 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!422 = distinct !DISubprogram(name: "f_name", scope: !125, file: !125, line: 100, type: !159, isLocal: false, isDefinition: true, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !407)
!423 = !DILocalVariable(name: "pkg", arg: 1, scope: !422, file: !125, line: 100, type: !161)
!424 = !DIExpression()
!425 = !DILocation(line: 100, column: 24, scope: !422)
!426 = !DILocalVariable(name: "pkgbin", arg: 2, scope: !422, file: !125, line: 100, type: !331)
!427 = !DILocation(line: 100, column: 44, scope: !422)
!428 = !DILocalVariable(name: "ps", arg: 3, scope: !422, file: !125, line: 101, type: !360)
!429 = !DILocation(line: 101, column: 30, scope: !422)
!430 = !DILocalVariable(name: "value", arg: 4, scope: !422, file: !125, line: 102, type: !144)
!431 = !DILocation(line: 102, column: 20, scope: !422)
!432 = !DILocalVariable(name: "fip", arg: 5, scope: !422, file: !125, line: 102, type: !379)
!433 = !DILocation(line: 102, column: 51, scope: !422)
!434 = !DILocalVariable(name: "e", scope: !422, file: !125, line: 104, type: !144)
!435 = !DILocation(line: 104, column: 15, scope: !422)
!436 = !DILocation(line: 106, column: 27, scope: !422)
!437 = !DILocation(line: 106, column: 7, scope: !422)
!438 = !DILocation(line: 106, column: 5, scope: !422)
!439 = !DILocation(line: 107, column: 7, scope: !440)
!440 = distinct !DILexicalBlock(scope: !422, file: !125, line: 107, column: 7)
!441 = !DILocation(line: 107, column: 9, scope: !440)
!442 = !DILocation(line: 107, column: 7, scope: !422)
!443 = !DILocation(line: 108, column: 17, scope: !440)
!444 = !DILocation(line: 108, column: 20, scope: !440)
!445 = !DILocation(line: 108, column: 65, scope: !440)
!446 = !DILocation(line: 108, column: 70, scope: !440)
!447 = !DILocation(line: 108, column: 76, scope: !440)
!448 = !DILocation(line: 108, column: 5, scope: !449)
!449 = !DILexicalBlockFile(scope: !440, file: !125, discriminator: 1)
!450 = !DILocation(line: 108, column: 5, scope: !440)
!451 = !DILocation(line: 110, column: 38, scope: !422)
!452 = !DILocation(line: 110, column: 20, scope: !422)
!453 = !DILocation(line: 110, column: 46, scope: !422)
!454 = !DILocation(line: 110, column: 3, scope: !422)
!455 = !DILocation(line: 110, column: 8, scope: !422)
!456 = !DILocation(line: 110, column: 13, scope: !422)
!457 = !DILocation(line: 110, column: 18, scope: !422)
!458 = !DILocation(line: 111, column: 1, scope: !422)
!459 = distinct !DISubprogram(name: "f_archives", scope: !125, file: !125, line: 114, type: !159, isLocal: false, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !407)
!460 = !DILocalVariable(name: "pkg", arg: 1, scope: !459, file: !125, line: 114, type: !161)
!461 = !DILocation(line: 114, column: 28, scope: !459)
!462 = !DILocalVariable(name: "pkgbin", arg: 2, scope: !459, file: !125, line: 114, type: !331)
!463 = !DILocation(line: 114, column: 48, scope: !459)
!464 = !DILocalVariable(name: "ps", arg: 3, scope: !459, file: !125, line: 115, type: !360)
!465 = !DILocation(line: 115, column: 34, scope: !459)
!466 = !DILocalVariable(name: "value", arg: 4, scope: !459, file: !125, line: 116, type: !144)
!467 = !DILocation(line: 116, column: 24, scope: !459)
!468 = !DILocalVariable(name: "fip", arg: 5, scope: !459, file: !125, line: 116, type: !379)
!469 = !DILocation(line: 116, column: 55, scope: !459)
!470 = !DILocalVariable(name: "fdp", scope: !459, file: !125, line: 118, type: !254)
!471 = !DILocation(line: 118, column: 26, scope: !459)
!472 = !DILocalVariable(name: "fdpp", scope: !459, file: !125, line: 118, type: !473)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!474 = !DILocation(line: 118, column: 33, scope: !459)
!475 = !DILocalVariable(name: "cpos", scope: !459, file: !125, line: 119, type: !151)
!476 = !DILocation(line: 119, column: 9, scope: !459)
!477 = !DILocalVariable(name: "space", scope: !459, file: !125, line: 119, type: !151)
!478 = !DILocation(line: 119, column: 16, scope: !459)
!479 = !DILocalVariable(name: "allowextend", scope: !459, file: !125, line: 120, type: !155)
!480 = !DILocation(line: 120, column: 7, scope: !459)
!481 = !DILocation(line: 122, column: 9, scope: !482)
!482 = distinct !DILexicalBlock(scope: !459, file: !125, line: 122, column: 7)
!483 = !DILocation(line: 122, column: 8, scope: !482)
!484 = !DILocation(line: 122, column: 7, scope: !459)
!485 = !DILocation(line: 123, column: 17, scope: !482)
!486 = !DILocation(line: 123, column: 20, scope: !482)
!487 = !DILocation(line: 123, column: 59, scope: !482)
!488 = !DILocation(line: 123, column: 64, scope: !482)
!489 = !DILocation(line: 123, column: 5, scope: !490)
!490 = !DILexicalBlockFile(scope: !482, file: !125, discriminator: 1)
!491 = !DILocation(line: 123, column: 5, scope: !482)
!492 = !DILocation(line: 124, column: 9, scope: !493)
!493 = distinct !DILexicalBlock(scope: !459, file: !125, line: 124, column: 7)
!494 = !DILocation(line: 124, column: 13, scope: !493)
!495 = !DILocation(line: 124, column: 19, scope: !493)
!496 = !DILocation(line: 124, column: 7, scope: !459)
!497 = !DILocation(line: 125, column: 17, scope: !493)
!498 = !DILocation(line: 126, column: 16, scope: !493)
!499 = !DILocation(line: 127, column: 16, scope: !493)
!500 = !DILocation(line: 127, column: 21, scope: !493)
!501 = !DILocation(line: 125, column: 5, scope: !493)
!502 = !DILocation(line: 128, column: 18, scope: !459)
!503 = !DILocation(line: 128, column: 23, scope: !459)
!504 = !DILocation(line: 128, column: 17, scope: !459)
!505 = !DILocation(line: 128, column: 15, scope: !459)
!506 = !DILocation(line: 129, column: 11, scope: !459)
!507 = !DILocation(line: 129, column: 16, scope: !459)
!508 = !DILocation(line: 129, column: 8, scope: !459)
!509 = !DILocation(line: 130, column: 19, scope: !459)
!510 = !DILocation(line: 130, column: 9, scope: !459)
!511 = !DILocation(line: 130, column: 7, scope: !459)
!512 = !DILocation(line: 131, column: 3, scope: !459)
!513 = !DILocation(line: 131, column: 11, scope: !514)
!514 = !DILexicalBlockFile(scope: !459, file: !125, discriminator: 1)
!515 = !DILocation(line: 131, column: 10, scope: !514)
!516 = !DILocation(line: 131, column: 3, scope: !514)
!517 = !DILocation(line: 132, column: 13, scope: !518)
!518 = distinct !DILexicalBlock(scope: !459, file: !125, line: 131, column: 17)
!519 = !DILocation(line: 132, column: 11, scope: !518)
!520 = !DILocation(line: 133, column: 5, scope: !518)
!521 = !DILocation(line: 133, column: 13, scope: !522)
!522 = !DILexicalBlockFile(scope: !518, file: !125, discriminator: 1)
!523 = !DILocation(line: 133, column: 12, scope: !522)
!524 = !DILocation(line: 133, column: 19, scope: !522)
!525 = !DILocation(line: 133, column: 34, scope: !526)
!526 = !DILexicalBlockFile(scope: !518, file: !125, discriminator: 2)
!527 = !DILocation(line: 133, column: 33, scope: !526)
!528 = !DILocation(line: 133, column: 23, scope: !526)
!529 = !DILocation(line: 133, column: 22, scope: !526)
!530 = !DILocation(line: 133, column: 5, scope: !531)
!531 = !DILexicalBlockFile(scope: !518, file: !125, discriminator: 3)
!532 = !DILocation(line: 134, column: 12, scope: !518)
!533 = !DILocation(line: 133, column: 5, scope: !534)
!534 = !DILexicalBlockFile(scope: !518, file: !125, discriminator: 4)
!535 = distinct !{!535, !520}
!536 = !DILocation(line: 135, column: 10, scope: !537)
!537 = distinct !DILexicalBlock(scope: !518, file: !125, line: 135, column: 9)
!538 = !DILocation(line: 135, column: 9, scope: !537)
!539 = !DILocation(line: 135, column: 9, scope: !518)
!540 = !DILocation(line: 136, column: 13, scope: !537)
!541 = !DILocation(line: 136, column: 16, scope: !537)
!542 = !DILocation(line: 136, column: 7, scope: !537)
!543 = !DILocation(line: 137, column: 11, scope: !518)
!544 = !DILocation(line: 137, column: 10, scope: !518)
!545 = !DILocation(line: 137, column: 8, scope: !518)
!546 = !DILocation(line: 138, column: 10, scope: !547)
!547 = distinct !DILexicalBlock(scope: !518, file: !125, line: 138, column: 9)
!548 = !DILocation(line: 138, column: 9, scope: !518)
!549 = !DILocation(line: 139, column: 12, scope: !550)
!550 = distinct !DILexicalBlock(scope: !551, file: !125, line: 139, column: 11)
!551 = distinct !DILexicalBlock(scope: !547, file: !125, line: 138, column: 15)
!552 = !DILocation(line: 139, column: 11, scope: !551)
!553 = !DILocation(line: 140, column: 21, scope: !550)
!554 = !DILocation(line: 141, column: 20, scope: !550)
!555 = !DILocation(line: 142, column: 47, scope: !550)
!556 = !DILocation(line: 142, column: 52, scope: !550)
!557 = !DILocation(line: 140, column: 9, scope: !550)
!558 = !DILocation(line: 143, column: 13, scope: !551)
!559 = !DILocation(line: 143, column: 11, scope: !551)
!560 = !DILocation(line: 144, column: 7, scope: !551)
!561 = !DILocation(line: 144, column: 12, scope: !551)
!562 = !DILocation(line: 144, column: 16, scope: !551)
!563 = !DILocation(line: 145, column: 45, scope: !551)
!564 = !DILocation(line: 145, column: 50, scope: !551)
!565 = !DILocation(line: 145, column: 56, scope: !551)
!566 = !DILocation(line: 145, column: 34, scope: !551)
!567 = !DILocation(line: 145, column: 39, scope: !551)
!568 = !DILocation(line: 145, column: 43, scope: !551)
!569 = !DILocation(line: 145, column: 18, scope: !551)
!570 = !DILocation(line: 145, column: 23, scope: !551)
!571 = !DILocation(line: 145, column: 32, scope: !551)
!572 = !DILocation(line: 145, column: 7, scope: !551)
!573 = !DILocation(line: 145, column: 12, scope: !551)
!574 = !DILocation(line: 145, column: 16, scope: !551)
!575 = !DILocation(line: 146, column: 14, scope: !551)
!576 = !DILocation(line: 146, column: 8, scope: !551)
!577 = !DILocation(line: 146, column: 12, scope: !551)
!578 = !DILocation(line: 147, column: 5, scope: !551)
!579 = !DILocation(line: 148, column: 62, scope: !518)
!580 = !DILocation(line: 148, column: 36, scope: !518)
!581 = !DILocation(line: 148, column: 24, scope: !518)
!582 = !DILocation(line: 148, column: 44, scope: !518)
!583 = !DILocation(line: 148, column: 49, scope: !518)
!584 = !DILocation(line: 148, column: 41, scope: !518)
!585 = !DILocation(line: 148, column: 7, scope: !518)
!586 = !DILocation(line: 148, column: 60, scope: !518)
!587 = !DILocation(line: 149, column: 12, scope: !518)
!588 = !DILocation(line: 149, column: 17, scope: !518)
!589 = !DILocation(line: 149, column: 9, scope: !518)
!590 = !DILocation(line: 150, column: 5, scope: !518)
!591 = !DILocation(line: 150, column: 13, scope: !522)
!592 = !DILocation(line: 150, column: 12, scope: !522)
!593 = !DILocation(line: 150, column: 19, scope: !522)
!594 = !DILocation(line: 150, column: 33, scope: !526)
!595 = !DILocation(line: 150, column: 32, scope: !526)
!596 = !DILocation(line: 150, column: 22, scope: !526)
!597 = !DILocation(line: 150, column: 5, scope: !531)
!598 = !DILocation(line: 151, column: 12, scope: !518)
!599 = !DILocation(line: 150, column: 5, scope: !534)
!600 = distinct !{!600, !590}
!601 = !DILocation(line: 152, column: 11, scope: !518)
!602 = !DILocation(line: 152, column: 9, scope: !518)
!603 = !DILocation(line: 131, column: 3, scope: !604)
!604 = !DILexicalBlockFile(scope: !459, file: !125, discriminator: 2)
!605 = distinct !{!605, !512}
!606 = !DILocation(line: 154, column: 8, scope: !607)
!607 = distinct !DILexicalBlock(scope: !459, file: !125, line: 154, column: 7)
!608 = !DILocation(line: 154, column: 7, scope: !607)
!609 = !DILocation(line: 154, column: 7, scope: !459)
!610 = !DILocation(line: 155, column: 17, scope: !607)
!611 = !DILocation(line: 156, column: 16, scope: !607)
!612 = !DILocation(line: 157, column: 43, scope: !607)
!613 = !DILocation(line: 157, column: 48, scope: !607)
!614 = !DILocation(line: 155, column: 5, scope: !607)
!615 = !DILocation(line: 158, column: 1, scope: !459)
!616 = distinct !DISubprogram(name: "c_isspace", scope: !131, file: !131, line: 69, type: !617, isLocal: true, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !407)
!617 = !DISubroutineType(types: !618)
!618 = !{!153, !155}
!619 = !DILocalVariable(name: "c", arg: 1, scope: !616, file: !131, line: 69, type: !155)
!620 = !DILocation(line: 69, column: 15, scope: !616)
!621 = !DILocation(line: 71, column: 18, scope: !616)
!622 = !DILocation(line: 71, column: 9, scope: !616)
!623 = !DILocation(line: 71, column: 2, scope: !616)
!624 = distinct !DISubprogram(name: "f_charfield", scope: !125, file: !125, line: 161, type: !159, isLocal: false, isDefinition: true, scopeLine: 164, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !407)
!625 = !DILocalVariable(name: "pkg", arg: 1, scope: !624, file: !125, line: 161, type: !161)
!626 = !DILocation(line: 161, column: 29, scope: !624)
!627 = !DILocalVariable(name: "pkgbin", arg: 2, scope: !624, file: !125, line: 161, type: !331)
!628 = !DILocation(line: 161, column: 49, scope: !624)
!629 = !DILocalVariable(name: "ps", arg: 3, scope: !624, file: !125, line: 162, type: !360)
!630 = !DILocation(line: 162, column: 35, scope: !624)
!631 = !DILocalVariable(name: "value", arg: 4, scope: !624, file: !125, line: 163, type: !144)
!632 = !DILocation(line: 163, column: 25, scope: !624)
!633 = !DILocalVariable(name: "fip", arg: 5, scope: !624, file: !125, line: 163, type: !379)
!634 = !DILocation(line: 163, column: 56, scope: !624)
!635 = !DILocation(line: 165, column: 8, scope: !636)
!636 = distinct !DILexicalBlock(scope: !624, file: !125, line: 165, column: 7)
!637 = !DILocation(line: 165, column: 7, scope: !636)
!638 = !DILocation(line: 165, column: 7, scope: !624)
!639 = !DILocation(line: 166, column: 69, scope: !636)
!640 = !DILocation(line: 166, column: 59, scope: !636)
!641 = !DILocation(line: 166, column: 30, scope: !636)
!642 = !DILocation(line: 166, column: 18, scope: !636)
!643 = !DILocation(line: 166, column: 41, scope: !636)
!644 = !DILocation(line: 166, column: 46, scope: !636)
!645 = !DILocation(line: 166, column: 38, scope: !636)
!646 = !DILocation(line: 166, column: 7, scope: !636)
!647 = !DILocation(line: 166, column: 57, scope: !636)
!648 = !DILocation(line: 166, column: 5, scope: !636)
!649 = !DILocation(line: 167, column: 1, scope: !624)
!650 = distinct !DISubprogram(name: "f_boolean", scope: !125, file: !125, line: 170, type: !159, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !407)
!651 = !DILocalVariable(name: "pkg", arg: 1, scope: !650, file: !125, line: 170, type: !161)
!652 = !DILocation(line: 170, column: 27, scope: !650)
!653 = !DILocalVariable(name: "pkgbin", arg: 2, scope: !650, file: !125, line: 170, type: !331)
!654 = !DILocation(line: 170, column: 47, scope: !650)
!655 = !DILocalVariable(name: "ps", arg: 3, scope: !650, file: !125, line: 171, type: !360)
!656 = !DILocation(line: 171, column: 33, scope: !650)
!657 = !DILocalVariable(name: "value", arg: 4, scope: !650, file: !125, line: 172, type: !144)
!658 = !DILocation(line: 172, column: 23, scope: !650)
!659 = !DILocalVariable(name: "fip", arg: 5, scope: !650, file: !125, line: 172, type: !379)
!660 = !DILocation(line: 172, column: 54, scope: !650)
!661 = !DILocalVariable(name: "boolean", scope: !650, file: !125, line: 174, type: !153)
!662 = !DILocation(line: 174, column: 7, scope: !650)
!663 = !DILocation(line: 176, column: 9, scope: !664)
!664 = distinct !DILexicalBlock(scope: !650, file: !125, line: 176, column: 7)
!665 = !DILocation(line: 176, column: 8, scope: !664)
!666 = !DILocation(line: 176, column: 7, scope: !650)
!667 = !DILocation(line: 177, column: 5, scope: !664)
!668 = !DILocation(line: 179, column: 22, scope: !650)
!669 = !DILocation(line: 179, column: 13, scope: !650)
!670 = !DILocation(line: 179, column: 11, scope: !650)
!671 = !DILocation(line: 180, column: 23, scope: !672)
!672 = distinct !DILexicalBlock(scope: !650, file: !125, line: 180, column: 7)
!673 = !DILocation(line: 180, column: 27, scope: !672)
!674 = !DILocation(line: 180, column: 7, scope: !672)
!675 = !DILocation(line: 180, column: 7, scope: !650)
!676 = !DILocation(line: 181, column: 17, scope: !672)
!677 = !DILocation(line: 181, column: 20, scope: !672)
!678 = !DILocation(line: 182, column: 17, scope: !672)
!679 = !DILocation(line: 182, column: 22, scope: !672)
!680 = !DILocation(line: 182, column: 28, scope: !672)
!681 = !DILocation(line: 182, column: 32, scope: !672)
!682 = !DILocation(line: 182, column: 36, scope: !672)
!683 = !DILocation(line: 181, column: 5, scope: !684)
!684 = !DILexicalBlockFile(scope: !672, file: !125, discriminator: 1)
!685 = !DILocation(line: 181, column: 5, scope: !672)
!686 = !DILocation(line: 184, column: 46, scope: !650)
!687 = !DILocation(line: 184, column: 17, scope: !650)
!688 = !DILocation(line: 184, column: 5, scope: !650)
!689 = !DILocation(line: 184, column: 28, scope: !650)
!690 = !DILocation(line: 184, column: 33, scope: !650)
!691 = !DILocation(line: 184, column: 25, scope: !650)
!692 = !DILocation(line: 184, column: 44, scope: !650)
!693 = !DILocation(line: 185, column: 1, scope: !650)
!694 = !DILocation(line: 185, column: 1, scope: !695)
!695 = !DILexicalBlockFile(scope: !650, file: !125, discriminator: 1)
!696 = distinct !DISubprogram(name: "parse_nv", scope: !125, file: !125, line: 64, type: !697, isLocal: true, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !407)
!697 = !DISubroutineType(types: !698)
!698 = !{!155, !360, !124, !143, !699}
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64, align: 64)
!700 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !701)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "namevalue", file: !702, line: 35, size: 128, align: 64, elements: !703)
!702 = !DIFile(filename: "../../lib/dpkg/namevalue.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!703 = !{!704, !705, !706}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !701, file: !702, line: 36, baseType: !144, size: 64, align: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !701, file: !702, line: 37, baseType: !155, size: 32, align: 32, offset: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !701, file: !702, line: 38, baseType: !155, size: 32, align: 32, offset: 96)
!707 = !DILocalVariable(name: "ps", arg: 1, scope: !696, file: !125, line: 64, type: !360)
!708 = !DILocation(line: 64, column: 32, scope: !696)
!709 = !DILocalVariable(name: "flags", arg: 2, scope: !696, file: !125, line: 64, type: !124)
!710 = !DILocation(line: 64, column: 56, scope: !696)
!711 = !DILocalVariable(name: "strp", arg: 3, scope: !696, file: !125, line: 65, type: !143)
!712 = !DILocation(line: 65, column: 23, scope: !696)
!713 = !DILocalVariable(name: "nv_head", arg: 4, scope: !696, file: !125, line: 65, type: !699)
!714 = !DILocation(line: 65, column: 53, scope: !696)
!715 = !DILocalVariable(name: "str_start", scope: !696, file: !125, line: 67, type: !144)
!716 = !DILocation(line: 67, column: 15, scope: !696)
!717 = !DILocation(line: 67, column: 28, scope: !696)
!718 = !DILocation(line: 67, column: 27, scope: !696)
!719 = !DILocalVariable(name: "str_end", scope: !696, file: !125, line: 67, type: !144)
!720 = !DILocation(line: 67, column: 35, scope: !696)
!721 = !DILocalVariable(name: "nv", scope: !696, file: !125, line: 68, type: !699)
!722 = !DILocation(line: 68, column: 27, scope: !696)
!723 = !DILocalVariable(name: "value", scope: !696, file: !125, line: 69, type: !155)
!724 = !DILocation(line: 69, column: 7, scope: !696)
!725 = !DILocation(line: 71, column: 23, scope: !696)
!726 = !DILocation(line: 71, column: 27, scope: !696)
!727 = !DILocation(line: 71, column: 3, scope: !696)
!728 = !DILocation(line: 73, column: 7, scope: !729)
!729 = distinct !DILexicalBlock(scope: !696, file: !125, line: 73, column: 7)
!730 = !DILocation(line: 73, column: 20, scope: !729)
!731 = !DILocation(line: 73, column: 7, scope: !696)
!732 = !DILocation(line: 74, column: 28, scope: !729)
!733 = !DILocation(line: 74, column: 32, scope: !729)
!734 = !DILocation(line: 74, column: 36, scope: !729)
!735 = !DILocation(line: 74, column: 12, scope: !736)
!736 = !DILexicalBlockFile(scope: !729, file: !125, discriminator: 1)
!737 = !DILocation(line: 74, column: 5, scope: !729)
!738 = !DILocation(line: 76, column: 31, scope: !696)
!739 = !DILocation(line: 76, column: 40, scope: !696)
!740 = !DILocation(line: 76, column: 8, scope: !696)
!741 = !DILocation(line: 76, column: 6, scope: !696)
!742 = !DILocation(line: 77, column: 7, scope: !743)
!743 = distinct !DILexicalBlock(scope: !696, file: !125, line: 77, column: 7)
!744 = !DILocation(line: 77, column: 10, scope: !743)
!745 = !DILocation(line: 77, column: 7, scope: !696)
!746 = !DILocation(line: 79, column: 11, scope: !747)
!747 = distinct !DILexicalBlock(scope: !748, file: !125, line: 79, column: 9)
!748 = distinct !DILexicalBlock(scope: !743, file: !125, line: 77, column: 18)
!749 = !DILocation(line: 79, column: 17, scope: !747)
!750 = !DILocation(line: 79, column: 9, scope: !748)
!751 = !DILocation(line: 80, column: 30, scope: !747)
!752 = !DILocation(line: 80, column: 34, scope: !747)
!753 = !DILocation(line: 80, column: 38, scope: !747)
!754 = !DILocation(line: 80, column: 70, scope: !747)
!755 = !DILocation(line: 80, column: 14, scope: !756)
!756 = !DILexicalBlockFile(scope: !747, file: !125, discriminator: 1)
!757 = !DILocation(line: 80, column: 7, scope: !747)
!758 = !DILocation(line: 82, column: 13, scope: !748)
!759 = !DILocation(line: 83, column: 11, scope: !748)
!760 = !DILocation(line: 84, column: 3, scope: !748)
!761 = !DILocation(line: 85, column: 15, scope: !762)
!762 = distinct !DILexicalBlock(scope: !743, file: !125, line: 84, column: 10)
!763 = !DILocation(line: 85, column: 27, scope: !762)
!764 = !DILocation(line: 85, column: 31, scope: !762)
!765 = !DILocation(line: 85, column: 25, scope: !762)
!766 = !DILocation(line: 85, column: 13, scope: !762)
!767 = !DILocation(line: 86, column: 5, scope: !762)
!768 = !DILocation(line: 86, column: 22, scope: !769)
!769 = !DILexicalBlockFile(scope: !762, file: !125, discriminator: 1)
!770 = !DILocation(line: 86, column: 12, scope: !769)
!771 = !DILocation(line: 86, column: 5, scope: !769)
!772 = !DILocation(line: 87, column: 14, scope: !762)
!773 = !DILocation(line: 86, column: 5, scope: !774)
!774 = !DILexicalBlockFile(scope: !762, file: !125, discriminator: 2)
!775 = distinct !{!775, !767}
!776 = !DILocation(line: 88, column: 13, scope: !762)
!777 = !DILocation(line: 88, column: 17, scope: !762)
!778 = !DILocation(line: 88, column: 11, scope: !762)
!779 = !DILocation(line: 91, column: 9, scope: !780)
!780 = distinct !DILexicalBlock(scope: !696, file: !125, line: 91, column: 7)
!781 = !DILocation(line: 91, column: 15, scope: !780)
!782 = !DILocation(line: 91, column: 32, scope: !780)
!783 = !DILocation(line: 91, column: 46, scope: !784)
!784 = !DILexicalBlockFile(scope: !780, file: !125, discriminator: 1)
!785 = !DILocation(line: 91, column: 35, scope: !784)
!786 = !DILocation(line: 91, column: 7, scope: !784)
!787 = !DILocation(line: 92, column: 28, scope: !780)
!788 = !DILocation(line: 92, column: 32, scope: !780)
!789 = !DILocation(line: 92, column: 36, scope: !780)
!790 = !DILocation(line: 92, column: 12, scope: !784)
!791 = !DILocation(line: 92, column: 5, scope: !780)
!792 = !DILocation(line: 94, column: 11, scope: !696)
!793 = !DILocation(line: 94, column: 4, scope: !696)
!794 = !DILocation(line: 94, column: 9, scope: !696)
!795 = !DILocation(line: 96, column: 10, scope: !696)
!796 = !DILocation(line: 96, column: 3, scope: !696)
!797 = !DILocation(line: 97, column: 1, scope: !696)
!798 = distinct !DISubprogram(name: "f_multiarch", scope: !125, file: !125, line: 188, type: !159, isLocal: false, isDefinition: true, scopeLine: 191, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !407)
!799 = !DILocalVariable(name: "pkg", arg: 1, scope: !798, file: !125, line: 188, type: !161)
!800 = !DILocation(line: 188, column: 29, scope: !798)
!801 = !DILocalVariable(name: "pkgbin", arg: 2, scope: !798, file: !125, line: 188, type: !331)
!802 = !DILocation(line: 188, column: 49, scope: !798)
!803 = !DILocalVariable(name: "ps", arg: 3, scope: !798, file: !125, line: 189, type: !360)
!804 = !DILocation(line: 189, column: 35, scope: !798)
!805 = !DILocalVariable(name: "value", arg: 4, scope: !798, file: !125, line: 190, type: !144)
!806 = !DILocation(line: 190, column: 25, scope: !798)
!807 = !DILocalVariable(name: "fip", arg: 5, scope: !798, file: !125, line: 190, type: !379)
!808 = !DILocation(line: 190, column: 56, scope: !798)
!809 = !DILocalVariable(name: "multiarch", scope: !798, file: !125, line: 192, type: !155)
!810 = !DILocation(line: 192, column: 7, scope: !798)
!811 = !DILocation(line: 194, column: 9, scope: !812)
!812 = distinct !DILexicalBlock(scope: !798, file: !125, line: 194, column: 7)
!813 = !DILocation(line: 194, column: 8, scope: !812)
!814 = !DILocation(line: 194, column: 7, scope: !798)
!815 = !DILocation(line: 195, column: 5, scope: !812)
!816 = !DILocation(line: 197, column: 24, scope: !798)
!817 = !DILocation(line: 197, column: 15, scope: !798)
!818 = !DILocation(line: 197, column: 13, scope: !798)
!819 = !DILocation(line: 198, column: 23, scope: !820)
!820 = distinct !DILexicalBlock(scope: !798, file: !125, line: 198, column: 7)
!821 = !DILocation(line: 198, column: 27, scope: !820)
!822 = !DILocation(line: 198, column: 7, scope: !820)
!823 = !DILocation(line: 198, column: 7, scope: !798)
!824 = !DILocation(line: 199, column: 17, scope: !820)
!825 = !DILocation(line: 199, column: 20, scope: !820)
!826 = !DILocation(line: 200, column: 17, scope: !820)
!827 = !DILocation(line: 200, column: 22, scope: !820)
!828 = !DILocation(line: 200, column: 28, scope: !820)
!829 = !DILocation(line: 200, column: 32, scope: !820)
!830 = !DILocation(line: 200, column: 36, scope: !820)
!831 = !DILocation(line: 199, column: 5, scope: !832)
!832 = !DILexicalBlockFile(scope: !820, file: !125, discriminator: 1)
!833 = !DILocation(line: 199, column: 5, scope: !820)
!834 = !DILocation(line: 201, column: 54, scope: !798)
!835 = !DILocation(line: 201, column: 25, scope: !798)
!836 = !DILocation(line: 201, column: 13, scope: !798)
!837 = !DILocation(line: 201, column: 36, scope: !798)
!838 = !DILocation(line: 201, column: 41, scope: !798)
!839 = !DILocation(line: 201, column: 33, scope: !798)
!840 = !DILocation(line: 201, column: 5, scope: !798)
!841 = !DILocation(line: 201, column: 52, scope: !798)
!842 = !DILocation(line: 202, column: 1, scope: !798)
!843 = !DILocation(line: 202, column: 1, scope: !844)
!844 = !DILexicalBlockFile(scope: !798, file: !125, discriminator: 1)
!845 = distinct !DISubprogram(name: "f_architecture", scope: !125, file: !125, line: 205, type: !159, isLocal: false, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !407)
!846 = !DILocalVariable(name: "pkg", arg: 1, scope: !845, file: !125, line: 205, type: !161)
!847 = !DILocation(line: 205, column: 32, scope: !845)
!848 = !DILocalVariable(name: "pkgbin", arg: 2, scope: !845, file: !125, line: 205, type: !331)
!849 = !DILocation(line: 205, column: 52, scope: !845)
!850 = !DILocalVariable(name: "ps", arg: 3, scope: !845, file: !125, line: 206, type: !360)
!851 = !DILocation(line: 206, column: 38, scope: !845)
!852 = !DILocalVariable(name: "value", arg: 4, scope: !845, file: !125, line: 207, type: !144)
!853 = !DILocation(line: 207, column: 28, scope: !845)
!854 = !DILocalVariable(name: "fip", arg: 5, scope: !845, file: !125, line: 207, type: !379)
!855 = !DILocation(line: 207, column: 59, scope: !845)
!856 = !DILocation(line: 209, column: 33, scope: !845)
!857 = !DILocation(line: 209, column: 18, scope: !845)
!858 = !DILocation(line: 209, column: 3, scope: !845)
!859 = !DILocation(line: 209, column: 11, scope: !845)
!860 = !DILocation(line: 209, column: 16, scope: !845)
!861 = !DILocation(line: 210, column: 7, scope: !862)
!862 = distinct !DILexicalBlock(scope: !845, file: !125, line: 210, column: 7)
!863 = !DILocation(line: 210, column: 15, scope: !862)
!864 = !DILocation(line: 210, column: 21, scope: !862)
!865 = !DILocation(line: 210, column: 26, scope: !862)
!866 = !DILocation(line: 210, column: 7, scope: !845)
!867 = !DILocation(line: 211, column: 16, scope: !862)
!868 = !DILocation(line: 211, column: 19, scope: !862)
!869 = !DILocation(line: 212, column: 16, scope: !862)
!870 = !DILocation(line: 212, column: 23, scope: !862)
!871 = !DILocation(line: 212, column: 28, scope: !862)
!872 = !DILocation(line: 212, column: 60, scope: !862)
!873 = !DILocation(line: 212, column: 34, scope: !862)
!874 = !DILocation(line: 211, column: 5, scope: !875)
!875 = !DILexicalBlockFile(scope: !862, file: !125, discriminator: 1)
!876 = !DILocation(line: 211, column: 5, scope: !862)
!877 = !DILocation(line: 213, column: 1, scope: !845)
!878 = distinct !DISubprogram(name: "f_section", scope: !125, file: !125, line: 216, type: !159, isLocal: false, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !407)
!879 = !DILocalVariable(name: "pkg", arg: 1, scope: !878, file: !125, line: 216, type: !161)
!880 = !DILocation(line: 216, column: 27, scope: !878)
!881 = !DILocalVariable(name: "pkgbin", arg: 2, scope: !878, file: !125, line: 216, type: !331)
!882 = !DILocation(line: 216, column: 47, scope: !878)
!883 = !DILocalVariable(name: "ps", arg: 3, scope: !878, file: !125, line: 217, type: !360)
!884 = !DILocation(line: 217, column: 33, scope: !878)
!885 = !DILocalVariable(name: "value", arg: 4, scope: !878, file: !125, line: 218, type: !144)
!886 = !DILocation(line: 218, column: 23, scope: !878)
!887 = !DILocalVariable(name: "fip", arg: 5, scope: !878, file: !125, line: 218, type: !379)
!888 = !DILocation(line: 218, column: 54, scope: !878)
!889 = !DILocation(line: 220, column: 9, scope: !890)
!890 = distinct !DILexicalBlock(scope: !878, file: !125, line: 220, column: 7)
!891 = !DILocation(line: 220, column: 8, scope: !890)
!892 = !DILocation(line: 220, column: 7, scope: !878)
!893 = !DILocation(line: 220, column: 16, scope: !894)
!894 = !DILexicalBlockFile(scope: !890, file: !125, discriminator: 1)
!895 = !DILocation(line: 221, column: 28, scope: !878)
!896 = !DILocation(line: 221, column: 18, scope: !878)
!897 = !DILocation(line: 221, column: 3, scope: !878)
!898 = !DILocation(line: 221, column: 8, scope: !878)
!899 = !DILocation(line: 221, column: 16, scope: !878)
!900 = !DILocation(line: 222, column: 1, scope: !878)
!901 = !DILocation(line: 222, column: 1, scope: !902)
!902 = !DILexicalBlockFile(scope: !878, file: !125, discriminator: 1)
!903 = distinct !DISubprogram(name: "f_priority", scope: !125, file: !125, line: 225, type: !159, isLocal: false, isDefinition: true, scopeLine: 228, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !407)
!904 = !DILocalVariable(name: "pkg", arg: 1, scope: !903, file: !125, line: 225, type: !161)
!905 = !DILocation(line: 225, column: 28, scope: !903)
!906 = !DILocalVariable(name: "pkgbin", arg: 2, scope: !903, file: !125, line: 225, type: !331)
!907 = !DILocation(line: 225, column: 48, scope: !903)
!908 = !DILocalVariable(name: "ps", arg: 3, scope: !903, file: !125, line: 226, type: !360)
!909 = !DILocation(line: 226, column: 34, scope: !903)
!910 = !DILocalVariable(name: "value", arg: 4, scope: !903, file: !125, line: 227, type: !144)
!911 = !DILocation(line: 227, column: 24, scope: !903)
!912 = !DILocalVariable(name: "fip", arg: 5, scope: !903, file: !125, line: 227, type: !379)
!913 = !DILocation(line: 227, column: 55, scope: !903)
!914 = !DILocalVariable(name: "str", scope: !903, file: !125, line: 229, type: !144)
!915 = !DILocation(line: 229, column: 15, scope: !903)
!916 = !DILocation(line: 229, column: 21, scope: !903)
!917 = !DILocalVariable(name: "priority", scope: !903, file: !125, line: 230, type: !155)
!918 = !DILocation(line: 230, column: 7, scope: !903)
!919 = !DILocation(line: 232, column: 9, scope: !920)
!920 = distinct !DILexicalBlock(scope: !903, file: !125, line: 232, column: 7)
!921 = !DILocation(line: 232, column: 8, scope: !920)
!922 = !DILocation(line: 232, column: 7, scope: !903)
!923 = !DILocation(line: 232, column: 16, scope: !924)
!924 = !DILexicalBlockFile(scope: !920, file: !125, discriminator: 1)
!925 = !DILocation(line: 234, column: 23, scope: !903)
!926 = !DILocation(line: 234, column: 14, scope: !903)
!927 = !DILocation(line: 234, column: 12, scope: !903)
!928 = !DILocation(line: 236, column: 23, scope: !929)
!929 = distinct !DILexicalBlock(scope: !903, file: !125, line: 236, column: 7)
!930 = !DILocation(line: 236, column: 27, scope: !929)
!931 = !DILocation(line: 236, column: 7, scope: !929)
!932 = !DILocation(line: 236, column: 7, scope: !903)
!933 = !DILocation(line: 237, column: 17, scope: !929)
!934 = !DILocation(line: 237, column: 20, scope: !929)
!935 = !DILocation(line: 237, column: 49, scope: !929)
!936 = !DILocation(line: 237, column: 54, scope: !929)
!937 = !DILocation(line: 237, column: 60, scope: !929)
!938 = !DILocation(line: 237, column: 64, scope: !929)
!939 = !DILocation(line: 237, column: 68, scope: !929)
!940 = !DILocation(line: 237, column: 5, scope: !941)
!941 = !DILexicalBlockFile(scope: !929, file: !125, discriminator: 1)
!942 = !DILocation(line: 237, column: 5, scope: !929)
!943 = !DILocation(line: 239, column: 7, scope: !944)
!944 = distinct !DILexicalBlock(scope: !903, file: !125, line: 239, column: 7)
!945 = !DILocation(line: 239, column: 11, scope: !944)
!946 = !DILocation(line: 239, column: 7, scope: !903)
!947 = !DILocation(line: 240, column: 5, scope: !948)
!948 = distinct !DILexicalBlock(scope: !944, file: !125, line: 239, column: 19)
!949 = !DILocation(line: 240, column: 10, scope: !948)
!950 = !DILocation(line: 240, column: 19, scope: !948)
!951 = !DILocation(line: 241, column: 36, scope: !948)
!952 = !DILocation(line: 241, column: 26, scope: !948)
!953 = !DILocation(line: 241, column: 5, scope: !948)
!954 = !DILocation(line: 241, column: 10, scope: !948)
!955 = !DILocation(line: 241, column: 24, scope: !948)
!956 = !DILocation(line: 242, column: 3, scope: !948)
!957 = !DILocation(line: 243, column: 21, scope: !958)
!958 = distinct !DILexicalBlock(scope: !944, file: !125, line: 242, column: 10)
!959 = !DILocation(line: 243, column: 5, scope: !958)
!960 = !DILocation(line: 243, column: 10, scope: !958)
!961 = !DILocation(line: 243, column: 19, scope: !958)
!962 = !DILocation(line: 245, column: 1, scope: !903)
!963 = distinct !DISubprogram(name: "f_status", scope: !125, file: !125, line: 248, type: !159, isLocal: false, isDefinition: true, scopeLine: 251, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !407)
!964 = !DILocalVariable(name: "pkg", arg: 1, scope: !963, file: !125, line: 248, type: !161)
!965 = !DILocation(line: 248, column: 26, scope: !963)
!966 = !DILocalVariable(name: "pkgbin", arg: 2, scope: !963, file: !125, line: 248, type: !331)
!967 = !DILocation(line: 248, column: 46, scope: !963)
!968 = !DILocalVariable(name: "ps", arg: 3, scope: !963, file: !125, line: 249, type: !360)
!969 = !DILocation(line: 249, column: 32, scope: !963)
!970 = !DILocalVariable(name: "value", arg: 4, scope: !963, file: !125, line: 250, type: !144)
!971 = !DILocation(line: 250, column: 22, scope: !963)
!972 = !DILocalVariable(name: "fip", arg: 5, scope: !963, file: !125, line: 250, type: !379)
!973 = !DILocation(line: 250, column: 53, scope: !963)
!974 = !DILocation(line: 252, column: 7, scope: !975)
!975 = distinct !DILexicalBlock(scope: !963, file: !125, line: 252, column: 7)
!976 = !DILocation(line: 252, column: 11, scope: !975)
!977 = !DILocation(line: 252, column: 17, scope: !975)
!978 = !DILocation(line: 252, column: 7, scope: !963)
!979 = !DILocation(line: 253, column: 17, scope: !975)
!980 = !DILocation(line: 254, column: 16, scope: !975)
!981 = !DILocation(line: 255, column: 17, scope: !975)
!982 = !DILocation(line: 255, column: 22, scope: !975)
!983 = !DILocation(line: 253, column: 5, scope: !975)
!984 = !DILocation(line: 256, column: 7, scope: !985)
!985 = distinct !DILexicalBlock(scope: !963, file: !125, line: 256, column: 7)
!986 = !DILocation(line: 256, column: 11, scope: !985)
!987 = !DILocation(line: 256, column: 17, scope: !985)
!988 = !DILocation(line: 256, column: 7, scope: !963)
!989 = !DILocation(line: 257, column: 5, scope: !985)
!990 = !DILocation(line: 259, column: 24, scope: !963)
!991 = !DILocation(line: 259, column: 15, scope: !963)
!992 = !DILocation(line: 259, column: 3, scope: !963)
!993 = !DILocation(line: 259, column: 8, scope: !963)
!994 = !DILocation(line: 259, column: 13, scope: !963)
!995 = !DILocation(line: 260, column: 23, scope: !996)
!996 = distinct !DILexicalBlock(scope: !963, file: !125, line: 260, column: 7)
!997 = !DILocation(line: 260, column: 27, scope: !996)
!998 = !DILocation(line: 260, column: 7, scope: !996)
!999 = !DILocation(line: 260, column: 7, scope: !963)
!1000 = !DILocation(line: 261, column: 17, scope: !996)
!1001 = !DILocation(line: 261, column: 20, scope: !996)
!1002 = !DILocation(line: 262, column: 17, scope: !996)
!1003 = !DILocation(line: 262, column: 22, scope: !996)
!1004 = !DILocation(line: 262, column: 28, scope: !996)
!1005 = !DILocation(line: 262, column: 32, scope: !996)
!1006 = !DILocation(line: 262, column: 36, scope: !996)
!1007 = !DILocation(line: 261, column: 5, scope: !1008)
!1008 = !DILexicalBlockFile(scope: !996, file: !125, discriminator: 1)
!1009 = !DILocation(line: 261, column: 5, scope: !996)
!1010 = !DILocation(line: 263, column: 25, scope: !963)
!1011 = !DILocation(line: 263, column: 16, scope: !963)
!1012 = !DILocation(line: 263, column: 3, scope: !963)
!1013 = !DILocation(line: 263, column: 8, scope: !963)
!1014 = !DILocation(line: 263, column: 14, scope: !963)
!1015 = !DILocation(line: 264, column: 23, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !963, file: !125, line: 264, column: 7)
!1017 = !DILocation(line: 264, column: 27, scope: !1016)
!1018 = !DILocation(line: 264, column: 7, scope: !1016)
!1019 = !DILocation(line: 264, column: 7, scope: !963)
!1020 = !DILocation(line: 265, column: 17, scope: !1016)
!1021 = !DILocation(line: 265, column: 20, scope: !1016)
!1022 = !DILocation(line: 266, column: 17, scope: !1016)
!1023 = !DILocation(line: 266, column: 22, scope: !1016)
!1024 = !DILocation(line: 266, column: 28, scope: !1016)
!1025 = !DILocation(line: 266, column: 32, scope: !1016)
!1026 = !DILocation(line: 266, column: 36, scope: !1016)
!1027 = !DILocation(line: 265, column: 5, scope: !1028)
!1028 = !DILexicalBlockFile(scope: !1016, file: !125, discriminator: 1)
!1029 = !DILocation(line: 265, column: 5, scope: !1016)
!1030 = !DILocation(line: 267, column: 26, scope: !963)
!1031 = !DILocation(line: 267, column: 17, scope: !963)
!1032 = !DILocation(line: 267, column: 3, scope: !963)
!1033 = !DILocation(line: 267, column: 8, scope: !963)
!1034 = !DILocation(line: 267, column: 15, scope: !963)
!1035 = !DILocation(line: 268, column: 23, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !963, file: !125, line: 268, column: 7)
!1037 = !DILocation(line: 268, column: 27, scope: !1036)
!1038 = !DILocation(line: 268, column: 7, scope: !1036)
!1039 = !DILocation(line: 268, column: 7, scope: !963)
!1040 = !DILocation(line: 269, column: 17, scope: !1036)
!1041 = !DILocation(line: 269, column: 20, scope: !1036)
!1042 = !DILocation(line: 270, column: 17, scope: !1036)
!1043 = !DILocation(line: 270, column: 22, scope: !1036)
!1044 = !DILocation(line: 270, column: 28, scope: !1036)
!1045 = !DILocation(line: 270, column: 32, scope: !1036)
!1046 = !DILocation(line: 270, column: 36, scope: !1036)
!1047 = !DILocation(line: 269, column: 5, scope: !1048)
!1048 = !DILexicalBlockFile(scope: !1036, file: !125, discriminator: 1)
!1049 = !DILocation(line: 269, column: 5, scope: !1036)
!1050 = !DILocation(line: 271, column: 1, scope: !963)
!1051 = distinct !DISubprogram(name: "f_version", scope: !125, file: !125, line: 274, type: !159, isLocal: false, isDefinition: true, scopeLine: 277, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !407)
!1052 = !DILocalVariable(name: "pkg", arg: 1, scope: !1051, file: !125, line: 274, type: !161)
!1053 = !DILocation(line: 274, column: 27, scope: !1051)
!1054 = !DILocalVariable(name: "pkgbin", arg: 2, scope: !1051, file: !125, line: 274, type: !331)
!1055 = !DILocation(line: 274, column: 47, scope: !1051)
!1056 = !DILocalVariable(name: "ps", arg: 3, scope: !1051, file: !125, line: 275, type: !360)
!1057 = !DILocation(line: 275, column: 33, scope: !1051)
!1058 = !DILocalVariable(name: "value", arg: 4, scope: !1051, file: !125, line: 276, type: !144)
!1059 = !DILocation(line: 276, column: 23, scope: !1051)
!1060 = !DILocalVariable(name: "fip", arg: 5, scope: !1051, file: !125, line: 276, type: !379)
!1061 = !DILocation(line: 276, column: 54, scope: !1051)
!1062 = !DILocation(line: 278, column: 24, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1051, file: !125, line: 278, column: 7)
!1064 = !DILocation(line: 278, column: 29, scope: !1063)
!1065 = !DILocation(line: 278, column: 37, scope: !1063)
!1066 = !DILocation(line: 278, column: 46, scope: !1063)
!1067 = !DILocation(line: 278, column: 7, scope: !1063)
!1068 = !DILocation(line: 278, column: 53, scope: !1063)
!1069 = !DILocation(line: 278, column: 7, scope: !1051)
!1070 = !DILocation(line: 279, column: 19, scope: !1063)
!1071 = !DILocation(line: 279, column: 22, scope: !1063)
!1072 = !DILocation(line: 279, column: 54, scope: !1063)
!1073 = !DILocation(line: 279, column: 59, scope: !1063)
!1074 = !DILocation(line: 279, column: 65, scope: !1063)
!1075 = !DILocation(line: 279, column: 5, scope: !1076)
!1076 = !DILexicalBlockFile(scope: !1063, file: !125, discriminator: 1)
!1077 = !DILocation(line: 279, column: 5, scope: !1063)
!1078 = !DILocation(line: 280, column: 1, scope: !1051)
!1079 = distinct !DISubprogram(name: "f_revision", scope: !125, file: !125, line: 283, type: !159, isLocal: false, isDefinition: true, scopeLine: 286, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !407)
!1080 = !DILocalVariable(name: "pkg", arg: 1, scope: !1079, file: !125, line: 283, type: !161)
!1081 = !DILocation(line: 283, column: 28, scope: !1079)
!1082 = !DILocalVariable(name: "pkgbin", arg: 2, scope: !1079, file: !125, line: 283, type: !331)
!1083 = !DILocation(line: 283, column: 48, scope: !1079)
!1084 = !DILocalVariable(name: "ps", arg: 3, scope: !1079, file: !125, line: 284, type: !360)
!1085 = !DILocation(line: 284, column: 34, scope: !1079)
!1086 = !DILocalVariable(name: "value", arg: 4, scope: !1079, file: !125, line: 285, type: !144)
!1087 = !DILocation(line: 285, column: 24, scope: !1079)
!1088 = !DILocalVariable(name: "fip", arg: 5, scope: !1079, file: !125, line: 285, type: !379)
!1089 = !DILocation(line: 285, column: 55, scope: !1079)
!1090 = !DILocalVariable(name: "newversion", scope: !1079, file: !125, line: 287, type: !151)
!1091 = !DILocation(line: 287, column: 9, scope: !1079)
!1092 = !DILocation(line: 289, column: 14, scope: !1079)
!1093 = !DILocation(line: 289, column: 17, scope: !1079)
!1094 = !DILocation(line: 289, column: 48, scope: !1079)
!1095 = !DILocation(line: 289, column: 53, scope: !1079)
!1096 = !DILocation(line: 289, column: 3, scope: !1097)
!1097 = !DILexicalBlockFile(scope: !1079, file: !125, discriminator: 1)
!1098 = !DILocation(line: 290, column: 9, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1079, file: !125, line: 290, column: 7)
!1100 = !DILocation(line: 290, column: 8, scope: !1099)
!1101 = !DILocation(line: 290, column: 7, scope: !1079)
!1102 = !DILocation(line: 290, column: 16, scope: !1103)
!1103 = !DILexicalBlockFile(scope: !1099, file: !125, discriminator: 1)
!1104 = !DILocation(line: 291, column: 18, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1079, file: !125, line: 291, column: 7)
!1106 = !DILocation(line: 291, column: 26, scope: !1105)
!1107 = !DILocation(line: 291, column: 34, scope: !1105)
!1108 = !DILocation(line: 291, column: 7, scope: !1105)
!1109 = !DILocation(line: 291, column: 7, scope: !1079)
!1110 = !DILocation(line: 292, column: 34, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1105, file: !125, line: 291, column: 45)
!1112 = !DILocation(line: 292, column: 42, scope: !1111)
!1113 = !DILocation(line: 292, column: 50, scope: !1111)
!1114 = !DILocation(line: 292, column: 27, scope: !1111)
!1115 = !DILocation(line: 293, column: 34, scope: !1111)
!1116 = !DILocation(line: 293, column: 42, scope: !1111)
!1117 = !DILocation(line: 293, column: 50, scope: !1111)
!1118 = !DILocation(line: 293, column: 27, scope: !1111)
!1119 = !DILocation(line: 292, column: 59, scope: !1111)
!1120 = !DILocation(line: 293, column: 60, scope: !1111)
!1121 = !DILocation(line: 292, column: 18, scope: !1122)
!1122 = !DILexicalBlockFile(scope: !1111, file: !125, discriminator: 1)
!1123 = !DILocation(line: 292, column: 16, scope: !1111)
!1124 = !DILocation(line: 294, column: 13, scope: !1111)
!1125 = !DILocation(line: 294, column: 34, scope: !1111)
!1126 = !DILocation(line: 294, column: 42, scope: !1111)
!1127 = !DILocation(line: 294, column: 50, scope: !1111)
!1128 = !DILocation(line: 295, column: 34, scope: !1111)
!1129 = !DILocation(line: 295, column: 42, scope: !1111)
!1130 = !DILocation(line: 295, column: 50, scope: !1111)
!1131 = !DILocation(line: 294, column: 5, scope: !1111)
!1132 = !DILocation(line: 296, column: 31, scope: !1111)
!1133 = !DILocation(line: 296, column: 5, scope: !1111)
!1134 = !DILocation(line: 296, column: 13, scope: !1111)
!1135 = !DILocation(line: 296, column: 21, scope: !1111)
!1136 = !DILocation(line: 296, column: 29, scope: !1111)
!1137 = !DILocation(line: 297, column: 3, scope: !1111)
!1138 = !DILocation(line: 298, column: 40, scope: !1079)
!1139 = !DILocation(line: 298, column: 30, scope: !1079)
!1140 = !DILocation(line: 298, column: 3, scope: !1079)
!1141 = !DILocation(line: 298, column: 11, scope: !1079)
!1142 = !DILocation(line: 298, column: 19, scope: !1079)
!1143 = !DILocation(line: 298, column: 28, scope: !1079)
!1144 = !DILocation(line: 299, column: 1, scope: !1079)
!1145 = !DILocation(line: 299, column: 1, scope: !1097)
!1146 = distinct !DISubprogram(name: "str_is_set", scope: !1147, file: !1147, line: 50, type: !1148, isLocal: true, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !407)
!1147 = !DIFile(filename: "../../lib/dpkg/string.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!153, !144}
!1150 = !DILocalVariable(name: "str", arg: 1, scope: !1146, file: !1147, line: 50, type: !144)
!1151 = !DILocation(line: 50, column: 24, scope: !1146)
!1152 = !DILocation(line: 52, column: 9, scope: !1146)
!1153 = !DILocation(line: 52, column: 13, scope: !1146)
!1154 = !DILocation(line: 52, column: 20, scope: !1146)
!1155 = !DILocation(line: 52, column: 23, scope: !1156)
!1156 = !DILexicalBlockFile(scope: !1146, file: !1147, discriminator: 1)
!1157 = !DILocation(line: 52, column: 30, scope: !1156)
!1158 = !DILocation(line: 52, column: 2, scope: !1159)
!1159 = !DILexicalBlockFile(scope: !1146, file: !1147, discriminator: 2)
!1160 = distinct !DISubprogram(name: "f_configversion", scope: !125, file: !125, line: 302, type: !159, isLocal: false, isDefinition: true, scopeLine: 305, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !407)
!1161 = !DILocalVariable(name: "pkg", arg: 1, scope: !1160, file: !125, line: 302, type: !161)
!1162 = !DILocation(line: 302, column: 33, scope: !1160)
!1163 = !DILocalVariable(name: "pkgbin", arg: 2, scope: !1160, file: !125, line: 302, type: !331)
!1164 = !DILocation(line: 302, column: 53, scope: !1160)
!1165 = !DILocalVariable(name: "ps", arg: 3, scope: !1160, file: !125, line: 303, type: !360)
!1166 = !DILocation(line: 303, column: 39, scope: !1160)
!1167 = !DILocalVariable(name: "value", arg: 4, scope: !1160, file: !125, line: 304, type: !144)
!1168 = !DILocation(line: 304, column: 29, scope: !1160)
!1169 = !DILocalVariable(name: "fip", arg: 5, scope: !1160, file: !125, line: 304, type: !379)
!1170 = !DILocation(line: 304, column: 60, scope: !1160)
!1171 = !DILocation(line: 306, column: 7, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1160, file: !125, line: 306, column: 7)
!1173 = !DILocation(line: 306, column: 11, scope: !1172)
!1174 = !DILocation(line: 306, column: 17, scope: !1172)
!1175 = !DILocation(line: 306, column: 7, scope: !1160)
!1176 = !DILocation(line: 307, column: 17, scope: !1172)
!1177 = !DILocation(line: 308, column: 16, scope: !1172)
!1178 = !DILocation(line: 309, column: 17, scope: !1172)
!1179 = !DILocation(line: 309, column: 22, scope: !1172)
!1180 = !DILocation(line: 307, column: 5, scope: !1172)
!1181 = !DILocation(line: 310, column: 7, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1160, file: !125, line: 310, column: 7)
!1183 = !DILocation(line: 310, column: 11, scope: !1182)
!1184 = !DILocation(line: 310, column: 17, scope: !1182)
!1185 = !DILocation(line: 310, column: 7, scope: !1160)
!1186 = !DILocation(line: 311, column: 5, scope: !1182)
!1187 = !DILocation(line: 313, column: 24, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1160, file: !125, line: 313, column: 7)
!1189 = !DILocation(line: 313, column: 29, scope: !1188)
!1190 = !DILocation(line: 313, column: 34, scope: !1188)
!1191 = !DILocation(line: 313, column: 49, scope: !1188)
!1192 = !DILocation(line: 313, column: 7, scope: !1188)
!1193 = !DILocation(line: 313, column: 56, scope: !1188)
!1194 = !DILocation(line: 313, column: 7, scope: !1160)
!1195 = !DILocation(line: 314, column: 19, scope: !1188)
!1196 = !DILocation(line: 314, column: 22, scope: !1188)
!1197 = !DILocation(line: 314, column: 54, scope: !1188)
!1198 = !DILocation(line: 314, column: 59, scope: !1188)
!1199 = !DILocation(line: 314, column: 65, scope: !1188)
!1200 = !DILocation(line: 314, column: 5, scope: !1201)
!1201 = !DILexicalBlockFile(scope: !1188, file: !125, discriminator: 1)
!1202 = !DILocation(line: 314, column: 5, scope: !1188)
!1203 = !DILocation(line: 315, column: 1, scope: !1160)
!1204 = !DILocalVariable(name: "pkg", arg: 1, scope: !158, file: !125, line: 344, type: !161)
!1205 = !DILocation(line: 344, column: 29, scope: !158)
!1206 = !DILocalVariable(name: "pkgbin", arg: 2, scope: !158, file: !125, line: 344, type: !331)
!1207 = !DILocation(line: 344, column: 49, scope: !158)
!1208 = !DILocalVariable(name: "ps", arg: 3, scope: !158, file: !125, line: 345, type: !360)
!1209 = !DILocation(line: 345, column: 35, scope: !158)
!1210 = !DILocalVariable(name: "value", arg: 4, scope: !158, file: !125, line: 346, type: !144)
!1211 = !DILocation(line: 346, column: 25, scope: !158)
!1212 = !DILocalVariable(name: "fip", arg: 5, scope: !158, file: !125, line: 346, type: !379)
!1213 = !DILocation(line: 346, column: 56, scope: !158)
!1214 = !DILocalVariable(name: "lastp", scope: !158, file: !125, line: 349, type: !1215)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64, align: 64)
!1216 = !DILocation(line: 349, column: 21, scope: !158)
!1217 = !DILocalVariable(name: "newlink", scope: !158, file: !125, line: 349, type: !235)
!1218 = !DILocation(line: 349, column: 29, scope: !158)
!1219 = !DILocalVariable(name: "endent", scope: !158, file: !125, line: 350, type: !144)
!1220 = !DILocation(line: 350, column: 15, scope: !158)
!1221 = !DILocalVariable(name: "endfn", scope: !158, file: !125, line: 350, type: !144)
!1222 = !DILocation(line: 350, column: 24, scope: !158)
!1223 = !DILocalVariable(name: "hashstart", scope: !158, file: !125, line: 350, type: !144)
!1224 = !DILocation(line: 350, column: 32, scope: !158)
!1225 = !DILocalVariable(name: "c", scope: !158, file: !125, line: 351, type: !155)
!1226 = !DILocation(line: 351, column: 7, scope: !158)
!1227 = !DILocalVariable(name: "namelen", scope: !158, file: !125, line: 351, type: !155)
!1228 = !DILocation(line: 351, column: 10, scope: !158)
!1229 = !DILocalVariable(name: "hashlen", scope: !158, file: !125, line: 351, type: !155)
!1230 = !DILocation(line: 351, column: 19, scope: !158)
!1231 = !DILocalVariable(name: "obsolete", scope: !158, file: !125, line: 352, type: !153)
!1232 = !DILocation(line: 352, column: 7, scope: !158)
!1233 = !DILocalVariable(name: "newptr", scope: !158, file: !125, line: 353, type: !151)
!1234 = !DILocation(line: 353, column: 9, scope: !158)
!1235 = !DILocation(line: 355, column: 12, scope: !158)
!1236 = !DILocation(line: 355, column: 20, scope: !158)
!1237 = !DILocation(line: 355, column: 9, scope: !158)
!1238 = !DILocation(line: 356, column: 3, scope: !158)
!1239 = !DILocation(line: 356, column: 11, scope: !1240)
!1240 = !DILexicalBlockFile(scope: !158, file: !125, discriminator: 1)
!1241 = !DILocation(line: 356, column: 10, scope: !1240)
!1242 = !DILocation(line: 356, column: 3, scope: !1240)
!1243 = !DILocation(line: 357, column: 14, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !158, file: !125, line: 356, column: 18)
!1245 = !DILocation(line: 357, column: 8, scope: !1244)
!1246 = !DILocation(line: 357, column: 6, scope: !1244)
!1247 = !DILocation(line: 358, column: 9, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1244, file: !125, line: 358, column: 9)
!1249 = !DILocation(line: 358, column: 11, scope: !1248)
!1250 = !DILocation(line: 358, column: 9, scope: !1244)
!1251 = !DILocation(line: 358, column: 20, scope: !1252)
!1252 = !DILexicalBlockFile(scope: !1248, file: !125, discriminator: 1)
!1253 = distinct !{!1253, !1238}
!1254 = !DILocation(line: 359, column: 9, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1244, file: !125, line: 359, column: 9)
!1256 = !DILocation(line: 359, column: 11, scope: !1255)
!1257 = !DILocation(line: 359, column: 9, scope: !1244)
!1258 = !DILocation(line: 360, column: 19, scope: !1255)
!1259 = !DILocation(line: 361, column: 18, scope: !1255)
!1260 = !DILocation(line: 362, column: 19, scope: !1255)
!1261 = !DILocation(line: 362, column: 24, scope: !1255)
!1262 = !DILocation(line: 362, column: 30, scope: !1255)
!1263 = !DILocation(line: 360, column: 7, scope: !1255)
!1264 = !DILocation(line: 363, column: 19, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1244, file: !125, line: 363, column: 5)
!1266 = !DILocation(line: 363, column: 17, scope: !1265)
!1267 = !DILocation(line: 363, column: 10, scope: !1265)
!1268 = !DILocation(line: 363, column: 32, scope: !1269)
!1269 = !DILexicalBlockFile(scope: !1270, file: !125, discriminator: 1)
!1270 = distinct !DILexicalBlock(scope: !1265, file: !125, line: 363, column: 5)
!1271 = !DILocation(line: 363, column: 31, scope: !1269)
!1272 = !DILocation(line: 363, column: 29, scope: !1269)
!1273 = !DILocation(line: 363, column: 40, scope: !1269)
!1274 = !DILocation(line: 363, column: 48, scope: !1269)
!1275 = !DILocation(line: 363, column: 51, scope: !1276)
!1276 = !DILexicalBlockFile(scope: !1270, file: !125, discriminator: 2)
!1277 = !DILocation(line: 363, column: 53, scope: !1276)
!1278 = !DILocation(line: 363, column: 5, scope: !1279)
!1279 = !DILexicalBlockFile(scope: !1265, file: !125, discriminator: 3)
!1280 = !DILocation(line: 363, column: 5, scope: !1281)
!1281 = !DILexicalBlockFile(scope: !1265, file: !125, discriminator: 4)
!1282 = !DILocation(line: 363, column: 68, scope: !1283)
!1283 = !DILexicalBlockFile(scope: !1270, file: !125, discriminator: 5)
!1284 = !DILocation(line: 363, column: 5, scope: !1283)
!1285 = distinct !{!1285, !1286}
!1286 = !DILocation(line: 363, column: 5, scope: !1244)
!1287 = !DILocation(line: 364, column: 25, scope: !1244)
!1288 = !DILocation(line: 364, column: 32, scope: !1244)
!1289 = !DILocation(line: 364, column: 40, scope: !1244)
!1290 = !DILocation(line: 366, column: 25, scope: !1244)
!1291 = !DILocation(line: 364, column: 5, scope: !1244)
!1292 = !DILocation(line: 367, column: 16, scope: !1244)
!1293 = !DILocation(line: 367, column: 24, scope: !1244)
!1294 = !DILocation(line: 367, column: 50, scope: !1244)
!1295 = !DILocation(line: 368, column: 23, scope: !1244)
!1296 = !DILocation(line: 368, column: 48, scope: !1244)
!1297 = !DILocation(line: 368, column: 16, scope: !1244)
!1298 = !DILocation(line: 368, column: 57, scope: !1244)
!1299 = !DILocation(line: 367, column: 13, scope: !1300)
!1300 = !DILexicalBlockFile(scope: !1244, file: !125, discriminator: 1)
!1301 = !DILocation(line: 369, column: 9, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1244, file: !125, line: 369, column: 9)
!1303 = !DILocation(line: 369, column: 9, scope: !1244)
!1304 = !DILocation(line: 370, column: 27, scope: !1302)
!1305 = !DILocation(line: 370, column: 34, scope: !1302)
!1306 = !DILocation(line: 370, column: 41, scope: !1302)
!1307 = !DILocation(line: 372, column: 6, scope: !1302)
!1308 = !DILocation(line: 370, column: 7, scope: !1302)
!1309 = !DILocation(line: 373, column: 15, scope: !1244)
!1310 = !DILocation(line: 373, column: 13, scope: !1244)
!1311 = !DILocation(line: 374, column: 38, scope: !1244)
!1312 = !DILocation(line: 374, column: 13, scope: !1244)
!1313 = !DILocation(line: 374, column: 11, scope: !1244)
!1314 = !DILocation(line: 375, column: 20, scope: !1244)
!1315 = !DILocation(line: 375, column: 26, scope: !1244)
!1316 = !DILocation(line: 375, column: 25, scope: !1244)
!1317 = !DILocation(line: 375, column: 14, scope: !1244)
!1318 = !DILocation(line: 375, column: 12, scope: !1244)
!1319 = !DILocation(line: 376, column: 9, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1244, file: !125, line: 376, column: 9)
!1321 = !DILocation(line: 376, column: 17, scope: !1320)
!1322 = !DILocation(line: 376, column: 9, scope: !1244)
!1323 = !DILocation(line: 377, column: 19, scope: !1320)
!1324 = !DILocation(line: 378, column: 18, scope: !1320)
!1325 = !DILocation(line: 379, column: 19, scope: !1320)
!1326 = !DILocation(line: 379, column: 24, scope: !1320)
!1327 = !DILocation(line: 377, column: 7, scope: !1320)
!1328 = !DILocation(line: 380, column: 23, scope: !1244)
!1329 = !DILocation(line: 380, column: 30, scope: !1244)
!1330 = !DILocation(line: 380, column: 14, scope: !1244)
!1331 = !DILocation(line: 380, column: 12, scope: !1244)
!1332 = !DILocation(line: 381, column: 5, scope: !1244)
!1333 = !DILocation(line: 381, column: 14, scope: !1244)
!1334 = !DILocation(line: 382, column: 12, scope: !1244)
!1335 = !DILocation(line: 382, column: 18, scope: !1244)
!1336 = !DILocation(line: 382, column: 21, scope: !1244)
!1337 = !DILocation(line: 382, column: 27, scope: !1244)
!1338 = !DILocation(line: 382, column: 5, scope: !1244)
!1339 = !DILocation(line: 383, column: 12, scope: !1244)
!1340 = !DILocation(line: 383, column: 19, scope: !1244)
!1341 = !DILocation(line: 383, column: 5, scope: !1244)
!1342 = !DILocation(line: 383, column: 23, scope: !1244)
!1343 = !DILocation(line: 384, column: 20, scope: !1244)
!1344 = !DILocation(line: 384, column: 5, scope: !1244)
!1345 = !DILocation(line: 384, column: 14, scope: !1244)
!1346 = !DILocation(line: 384, column: 18, scope: !1244)
!1347 = !DILocation(line: 385, column: 22, scope: !1244)
!1348 = !DILocation(line: 385, column: 29, scope: !1244)
!1349 = !DILocation(line: 385, column: 13, scope: !1244)
!1350 = !DILocation(line: 385, column: 11, scope: !1244)
!1351 = !DILocation(line: 386, column: 12, scope: !1244)
!1352 = !DILocation(line: 386, column: 20, scope: !1244)
!1353 = !DILocation(line: 386, column: 31, scope: !1244)
!1354 = !DILocation(line: 386, column: 5, scope: !1244)
!1355 = !DILocation(line: 387, column: 12, scope: !1244)
!1356 = !DILocation(line: 387, column: 5, scope: !1244)
!1357 = !DILocation(line: 387, column: 21, scope: !1244)
!1358 = !DILocation(line: 388, column: 20, scope: !1244)
!1359 = !DILocation(line: 388, column: 5, scope: !1244)
!1360 = !DILocation(line: 388, column: 14, scope: !1244)
!1361 = !DILocation(line: 388, column: 18, scope: !1244)
!1362 = !DILocation(line: 389, column: 24, scope: !1244)
!1363 = !DILocation(line: 389, column: 5, scope: !1244)
!1364 = !DILocation(line: 389, column: 14, scope: !1244)
!1365 = !DILocation(line: 389, column: 22, scope: !1244)
!1366 = !DILocation(line: 390, column: 5, scope: !1244)
!1367 = !DILocation(line: 390, column: 14, scope: !1244)
!1368 = !DILocation(line: 390, column: 19, scope: !1244)
!1369 = !DILocation(line: 391, column: 13, scope: !1244)
!1370 = !DILocation(line: 391, column: 6, scope: !1244)
!1371 = !DILocation(line: 391, column: 11, scope: !1244)
!1372 = !DILocation(line: 392, column: 13, scope: !1244)
!1373 = !DILocation(line: 392, column: 22, scope: !1244)
!1374 = !DILocation(line: 392, column: 10, scope: !1244)
!1375 = !DILocation(line: 393, column: 12, scope: !1244)
!1376 = !DILocation(line: 393, column: 10, scope: !1244)
!1377 = !DILocation(line: 356, column: 3, scope: !1378)
!1378 = !DILexicalBlockFile(scope: !158, file: !125, discriminator: 2)
!1379 = !DILocation(line: 395, column: 1, scope: !158)
!1380 = distinct !DISubprogram(name: "conffvalue_lastword", scope: !125, file: !125, line: 320, type: !1381, isLocal: true, isDefinition: true, scopeLine: 325, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !407)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{null, !144, !144, !144, !143, !154, !143, !360}
!1383 = !DILocalVariable(name: "value", arg: 1, scope: !1380, file: !125, line: 320, type: !144)
!1384 = !DILocation(line: 320, column: 45, scope: !1380)
!1385 = !DILocalVariable(name: "from", arg: 2, scope: !1380, file: !125, line: 320, type: !144)
!1386 = !DILocation(line: 320, column: 64, scope: !1380)
!1387 = !DILocalVariable(name: "endent", arg: 3, scope: !1380, file: !125, line: 321, type: !144)
!1388 = !DILocation(line: 321, column: 45, scope: !1380)
!1389 = !DILocalVariable(name: "word_start_r", arg: 4, scope: !1380, file: !125, line: 322, type: !143)
!1390 = !DILocation(line: 322, column: 46, scope: !1380)
!1391 = !DILocalVariable(name: "word_len_r", arg: 5, scope: !1380, file: !125, line: 322, type: !154)
!1392 = !DILocation(line: 322, column: 65, scope: !1380)
!1393 = !DILocalVariable(name: "new_from_r", arg: 6, scope: !1380, file: !125, line: 323, type: !143)
!1394 = !DILocation(line: 323, column: 46, scope: !1380)
!1395 = !DILocalVariable(name: "ps", arg: 7, scope: !1380, file: !125, line: 324, type: !360)
!1396 = !DILocation(line: 324, column: 55, scope: !1380)
!1397 = !DILocalVariable(name: "lastspc", scope: !1380, file: !125, line: 326, type: !144)
!1398 = !DILocation(line: 326, column: 15, scope: !1380)
!1399 = !DILocation(line: 328, column: 7, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1380, file: !125, line: 328, column: 7)
!1401 = !DILocation(line: 328, column: 15, scope: !1400)
!1402 = !DILocation(line: 328, column: 20, scope: !1400)
!1403 = !DILocation(line: 328, column: 12, scope: !1400)
!1404 = !DILocation(line: 328, column: 7, scope: !1380)
!1405 = !DILocation(line: 328, column: 24, scope: !1406)
!1406 = !DILexicalBlockFile(scope: !1400, file: !125, discriminator: 1)
!1407 = !DILocation(line: 329, column: 17, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1380, file: !125, line: 329, column: 3)
!1409 = !DILocation(line: 329, column: 21, scope: !1408)
!1410 = !DILocation(line: 329, column: 15, scope: !1408)
!1411 = !DILocation(line: 329, column: 8, scope: !1408)
!1412 = !DILocation(line: 329, column: 26, scope: !1413)
!1413 = !DILexicalBlockFile(scope: !1414, file: !125, discriminator: 1)
!1414 = distinct !DILexicalBlock(scope: !1408, file: !125, line: 329, column: 3)
!1415 = !DILocation(line: 329, column: 25, scope: !1413)
!1416 = !DILocation(line: 329, column: 34, scope: !1413)
!1417 = !DILocation(line: 329, column: 3, scope: !1413)
!1418 = !DILocation(line: 329, column: 3, scope: !1419)
!1419 = !DILexicalBlockFile(scope: !1408, file: !125, discriminator: 2)
!1420 = !DILocation(line: 329, column: 49, scope: !1421)
!1421 = !DILexicalBlockFile(scope: !1414, file: !125, discriminator: 3)
!1422 = !DILocation(line: 329, column: 3, scope: !1421)
!1423 = distinct !{!1423, !1424}
!1424 = !DILocation(line: 329, column: 3, scope: !1380)
!1425 = !DILocation(line: 330, column: 7, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1380, file: !125, line: 330, column: 7)
!1427 = !DILocation(line: 330, column: 18, scope: !1426)
!1428 = !DILocation(line: 330, column: 23, scope: !1426)
!1429 = !DILocation(line: 330, column: 15, scope: !1426)
!1430 = !DILocation(line: 330, column: 26, scope: !1426)
!1431 = !DILocation(line: 330, column: 29, scope: !1432)
!1432 = !DILexicalBlockFile(scope: !1426, file: !125, discriminator: 1)
!1433 = !DILocation(line: 330, column: 40, scope: !1432)
!1434 = !DILocation(line: 330, column: 46, scope: !1432)
!1435 = !DILocation(line: 330, column: 37, scope: !1432)
!1436 = !DILocation(line: 330, column: 7, scope: !1432)
!1437 = !DILocation(line: 330, column: 50, scope: !1438)
!1438 = !DILexicalBlockFile(scope: !1426, file: !125, discriminator: 2)
!1439 = !DILocation(line: 332, column: 16, scope: !1380)
!1440 = !DILocation(line: 332, column: 4, scope: !1380)
!1441 = !DILocation(line: 332, column: 14, scope: !1380)
!1442 = !DILocation(line: 333, column: 18, scope: !1380)
!1443 = !DILocation(line: 333, column: 26, scope: !1380)
!1444 = !DILocation(line: 333, column: 4, scope: !1380)
!1445 = !DILocation(line: 333, column: 16, scope: !1380)
!1446 = !DILocation(line: 334, column: 22, scope: !1380)
!1447 = !DILocation(line: 334, column: 30, scope: !1380)
!1448 = !DILocation(line: 334, column: 29, scope: !1380)
!1449 = !DILocation(line: 334, column: 27, scope: !1380)
!1450 = !DILocation(line: 334, column: 16, scope: !1380)
!1451 = !DILocation(line: 334, column: 4, scope: !1380)
!1452 = !DILocation(line: 334, column: 14, scope: !1380)
!1453 = !DILocation(line: 335, column: 3, scope: !1380)
!1454 = !DILocation(line: 338, column: 15, scope: !1380)
!1455 = !DILocation(line: 339, column: 14, scope: !1380)
!1456 = !DILocation(line: 340, column: 35, scope: !1380)
!1457 = !DILocation(line: 340, column: 44, scope: !1380)
!1458 = !DILocation(line: 340, column: 42, scope: !1380)
!1459 = !DILocation(line: 340, column: 51, scope: !1380)
!1460 = !DILocation(line: 340, column: 34, scope: !1380)
!1461 = !DILocation(line: 340, column: 62, scope: !1462)
!1462 = !DILexicalBlockFile(scope: !1380, file: !125, discriminator: 1)
!1463 = !DILocation(line: 340, column: 71, scope: !1462)
!1464 = !DILocation(line: 340, column: 69, scope: !1462)
!1465 = !DILocation(line: 340, column: 34, scope: !1462)
!1466 = !DILocation(line: 340, column: 34, scope: !1467)
!1467 = !DILexicalBlockFile(scope: !1380, file: !125, discriminator: 2)
!1468 = !DILocation(line: 340, column: 34, scope: !1469)
!1469 = !DILexicalBlockFile(scope: !1380, file: !125, discriminator: 3)
!1470 = !DILocation(line: 340, column: 28, scope: !1469)
!1471 = !DILocation(line: 340, column: 88, scope: !1469)
!1472 = !DILocation(line: 338, column: 3, scope: !1462)
!1473 = !DILocalVariable(name: "pkg", arg: 1, scope: !412, file: !125, line: 398, type: !161)
!1474 = !DILocation(line: 398, column: 30, scope: !412)
!1475 = !DILocalVariable(name: "pkgbin", arg: 2, scope: !412, file: !125, line: 398, type: !331)
!1476 = !DILocation(line: 398, column: 50, scope: !412)
!1477 = !DILocalVariable(name: "ps", arg: 3, scope: !412, file: !125, line: 399, type: !360)
!1478 = !DILocation(line: 399, column: 36, scope: !412)
!1479 = !DILocalVariable(name: "value", arg: 4, scope: !412, file: !125, line: 400, type: !144)
!1480 = !DILocation(line: 400, column: 26, scope: !412)
!1481 = !DILocalVariable(name: "fip", arg: 5, scope: !412, file: !125, line: 400, type: !379)
!1482 = !DILocation(line: 400, column: 57, scope: !412)
!1483 = !DILocalVariable(name: "c1", scope: !412, file: !125, line: 402, type: !146)
!1484 = !DILocation(line: 402, column: 8, scope: !412)
!1485 = !DILocalVariable(name: "c2", scope: !412, file: !125, line: 402, type: !146)
!1486 = !DILocation(line: 402, column: 12, scope: !412)
!1487 = !DILocalVariable(name: "p", scope: !412, file: !125, line: 403, type: !144)
!1488 = !DILocation(line: 403, column: 15, scope: !412)
!1489 = !DILocalVariable(name: "emsg", scope: !412, file: !125, line: 403, type: !144)
!1490 = !DILocation(line: 403, column: 19, scope: !412)
!1491 = !DILocalVariable(name: "depnamestart", scope: !412, file: !125, line: 404, type: !144)
!1492 = !DILocation(line: 404, column: 15, scope: !412)
!1493 = !DILocalVariable(name: "versionstart", scope: !412, file: !125, line: 404, type: !144)
!1494 = !DILocation(line: 404, column: 30, scope: !412)
!1495 = !DILocalVariable(name: "depnamelength", scope: !412, file: !125, line: 405, type: !155)
!1496 = !DILocation(line: 405, column: 7, scope: !412)
!1497 = !DILocalVariable(name: "versionlength", scope: !412, file: !125, line: 405, type: !155)
!1498 = !DILocation(line: 405, column: 22, scope: !412)
!1499 = !DILocalVariable(name: "dyp", scope: !412, file: !125, line: 408, type: !179)
!1500 = !DILocation(line: 408, column: 22, scope: !412)
!1501 = !DILocalVariable(name: "ldypp", scope: !412, file: !125, line: 408, type: !1502)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64, align: 64)
!1503 = !DILocation(line: 408, column: 29, scope: !412)
!1504 = !DILocalVariable(name: "dop", scope: !412, file: !125, line: 409, type: !175)
!1505 = !DILocation(line: 409, column: 20, scope: !412)
!1506 = !DILocalVariable(name: "ldopp", scope: !412, file: !125, line: 409, type: !1507)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64, align: 64)
!1508 = !DILocation(line: 409, column: 27, scope: !412)
!1509 = !DILocation(line: 412, column: 9, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !412, file: !125, line: 412, column: 7)
!1511 = !DILocation(line: 412, column: 8, scope: !1510)
!1512 = !DILocation(line: 412, column: 7, scope: !412)
!1513 = !DILocation(line: 413, column: 5, scope: !1510)
!1514 = !DILocation(line: 414, column: 6, scope: !412)
!1515 = !DILocation(line: 414, column: 4, scope: !412)
!1516 = !DILocation(line: 416, column: 12, scope: !412)
!1517 = !DILocation(line: 416, column: 20, scope: !412)
!1518 = !DILocation(line: 416, column: 9, scope: !412)
!1519 = !DILocation(line: 417, column: 3, scope: !412)
!1520 = !DILocation(line: 417, column: 11, scope: !1521)
!1521 = !DILexicalBlockFile(scope: !412, file: !125, discriminator: 1)
!1522 = !DILocation(line: 417, column: 10, scope: !1521)
!1523 = !DILocation(line: 417, column: 3, scope: !1521)
!1524 = !DILocation(line: 418, column: 16, scope: !412)
!1525 = !DILocation(line: 418, column: 15, scope: !412)
!1526 = !DILocation(line: 418, column: 24, scope: !412)
!1527 = !DILocation(line: 418, column: 11, scope: !412)
!1528 = !DILocation(line: 417, column: 3, scope: !1529)
!1529 = !DILexicalBlockFile(scope: !412, file: !125, discriminator: 2)
!1530 = distinct !{!1530, !1519}
!1531 = !DILocation(line: 421, column: 3, scope: !412)
!1532 = !DILocation(line: 422, column: 11, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1534, file: !125, line: 421, column: 12)
!1534 = distinct !DILexicalBlock(scope: !1535, file: !125, line: 421, column: 3)
!1535 = distinct !DILexicalBlock(scope: !412, file: !125, line: 421, column: 3)
!1536 = !DILocation(line: 422, column: 9, scope: !1533)
!1537 = !DILocation(line: 425, column: 5, scope: !1533)
!1538 = !DILocation(line: 425, column: 10, scope: !1533)
!1539 = !DILocation(line: 425, column: 13, scope: !1533)
!1540 = !DILocation(line: 426, column: 5, scope: !1533)
!1541 = !DILocation(line: 426, column: 10, scope: !1533)
!1542 = !DILocation(line: 426, column: 14, scope: !1533)
!1543 = !DILocation(line: 426, column: 29, scope: !1533)
!1544 = !DILocation(line: 426, column: 22, scope: !1533)
!1545 = !DILocation(line: 426, column: 27, scope: !1533)
!1546 = !DILocation(line: 426, column: 42, scope: !1533)
!1547 = !DILocation(line: 426, column: 47, scope: !1533)
!1548 = !DILocation(line: 426, column: 39, scope: !1533)
!1549 = !DILocation(line: 427, column: 5, scope: !1533)
!1550 = !DILocation(line: 427, column: 10, scope: !1533)
!1551 = !DILocation(line: 427, column: 14, scope: !1533)
!1552 = !DILocation(line: 427, column: 29, scope: !1533)
!1553 = !DILocation(line: 427, column: 34, scope: !1533)
!1554 = !DILocation(line: 427, column: 26, scope: !1533)
!1555 = !DILocation(line: 428, column: 16, scope: !1533)
!1556 = !DILocation(line: 428, column: 21, scope: !1533)
!1557 = !DILocation(line: 428, column: 5, scope: !1533)
!1558 = !DILocation(line: 428, column: 10, scope: !1533)
!1559 = !DILocation(line: 428, column: 14, scope: !1533)
!1560 = !DILocation(line: 431, column: 5, scope: !1533)
!1561 = !DILocation(line: 432, column: 21, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1563, file: !125, line: 431, column: 14)
!1563 = distinct !DILexicalBlock(scope: !1564, file: !125, line: 431, column: 5)
!1564 = distinct !DILexicalBlock(scope: !1533, file: !125, line: 431, column: 5)
!1565 = !DILocation(line: 432, column: 19, scope: !1562)
!1566 = !DILocation(line: 434, column: 7, scope: !1562)
!1567 = !DILocation(line: 434, column: 15, scope: !1568)
!1568 = !DILexicalBlockFile(scope: !1562, file: !125, discriminator: 1)
!1569 = !DILocation(line: 434, column: 14, scope: !1568)
!1570 = !DILocation(line: 434, column: 17, scope: !1568)
!1571 = !DILocation(line: 434, column: 32, scope: !1572)
!1572 = !DILexicalBlockFile(scope: !1562, file: !125, discriminator: 2)
!1573 = !DILocation(line: 434, column: 31, scope: !1572)
!1574 = !DILocation(line: 434, column: 21, scope: !1572)
!1575 = !DILocation(line: 434, column: 35, scope: !1572)
!1576 = !DILocation(line: 434, column: 39, scope: !1577)
!1577 = !DILexicalBlockFile(scope: !1562, file: !125, discriminator: 3)
!1578 = !DILocation(line: 434, column: 38, scope: !1577)
!1579 = !DILocation(line: 434, column: 41, scope: !1577)
!1580 = !DILocation(line: 434, column: 48, scope: !1577)
!1581 = !DILocation(line: 434, column: 52, scope: !1582)
!1582 = !DILexicalBlockFile(scope: !1562, file: !125, discriminator: 4)
!1583 = !DILocation(line: 434, column: 51, scope: !1582)
!1584 = !DILocation(line: 434, column: 54, scope: !1582)
!1585 = !DILocation(line: 434, column: 61, scope: !1582)
!1586 = !DILocation(line: 434, column: 65, scope: !1587)
!1587 = !DILexicalBlockFile(scope: !1562, file: !125, discriminator: 5)
!1588 = !DILocation(line: 434, column: 64, scope: !1587)
!1589 = !DILocation(line: 434, column: 67, scope: !1587)
!1590 = !DILocation(line: 434, column: 74, scope: !1587)
!1591 = !DILocation(line: 435, column: 15, scope: !1562)
!1592 = !DILocation(line: 435, column: 14, scope: !1562)
!1593 = !DILocation(line: 435, column: 17, scope: !1562)
!1594 = !DILocation(line: 434, column: 7, scope: !1595)
!1595 = !DILexicalBlockFile(scope: !1562, file: !125, discriminator: 6)
!1596 = !DILocation(line: 436, column: 10, scope: !1562)
!1597 = !DILocation(line: 434, column: 7, scope: !1598)
!1598 = !DILexicalBlockFile(scope: !1562, file: !125, discriminator: 7)
!1599 = distinct !{!1599, !1566}
!1600 = !DILocation(line: 437, column: 22, scope: !1562)
!1601 = !DILocation(line: 437, column: 26, scope: !1562)
!1602 = !DILocation(line: 437, column: 24, scope: !1562)
!1603 = !DILocation(line: 437, column: 20, scope: !1562)
!1604 = !DILocation(line: 438, column: 11, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1562, file: !125, line: 438, column: 11)
!1606 = !DILocation(line: 438, column: 25, scope: !1605)
!1607 = !DILocation(line: 438, column: 11, scope: !1562)
!1608 = !DILocation(line: 439, column: 21, scope: !1605)
!1609 = !DILocation(line: 440, column: 20, scope: !1605)
!1610 = !DILocation(line: 441, column: 48, scope: !1605)
!1611 = !DILocation(line: 441, column: 53, scope: !1605)
!1612 = !DILocation(line: 439, column: 9, scope: !1605)
!1613 = !DILocation(line: 443, column: 7, scope: !1562)
!1614 = !DILocation(line: 444, column: 32, scope: !1562)
!1615 = !DILocation(line: 444, column: 46, scope: !1562)
!1616 = !DILocation(line: 444, column: 7, scope: !1562)
!1617 = !DILocation(line: 445, column: 7, scope: !1562)
!1618 = !DILocation(line: 447, column: 42, scope: !1562)
!1619 = !DILocation(line: 447, column: 14, scope: !1562)
!1620 = !DILocation(line: 447, column: 12, scope: !1562)
!1621 = !DILocation(line: 448, column: 11, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1562, file: !125, line: 448, column: 11)
!1623 = !DILocation(line: 448, column: 11, scope: !1562)
!1624 = !DILocation(line: 449, column: 21, scope: !1622)
!1625 = !DILocation(line: 450, column: 20, scope: !1622)
!1626 = !DILocation(line: 451, column: 21, scope: !1622)
!1627 = !DILocation(line: 451, column: 26, scope: !1622)
!1628 = !DILocation(line: 451, column: 40, scope: !1622)
!1629 = !DILocation(line: 451, column: 45, scope: !1622)
!1630 = !DILocation(line: 449, column: 9, scope: !1622)
!1631 = !DILocation(line: 452, column: 13, scope: !1562)
!1632 = !DILocation(line: 452, column: 11, scope: !1562)
!1633 = !DILocation(line: 453, column: 16, scope: !1562)
!1634 = !DILocation(line: 453, column: 7, scope: !1562)
!1635 = !DILocation(line: 453, column: 12, scope: !1562)
!1636 = !DILocation(line: 453, column: 14, scope: !1562)
!1637 = !DILocation(line: 454, column: 43, scope: !1562)
!1638 = !DILocation(line: 454, column: 17, scope: !1562)
!1639 = !DILocation(line: 454, column: 7, scope: !1562)
!1640 = !DILocation(line: 454, column: 12, scope: !1562)
!1641 = !DILocation(line: 454, column: 15, scope: !1562)
!1642 = !DILocation(line: 455, column: 7, scope: !1562)
!1643 = !DILocation(line: 455, column: 12, scope: !1562)
!1644 = !DILocation(line: 455, column: 16, scope: !1562)
!1645 = !DILocation(line: 455, column: 31, scope: !1562)
!1646 = !DILocation(line: 455, column: 24, scope: !1562)
!1647 = !DILocation(line: 455, column: 29, scope: !1562)
!1648 = !DILocation(line: 455, column: 44, scope: !1562)
!1649 = !DILocation(line: 455, column: 49, scope: !1562)
!1650 = !DILocation(line: 455, column: 41, scope: !1562)
!1651 = !DILocation(line: 463, column: 7, scope: !1562)
!1652 = !DILocation(line: 463, column: 12, scope: !1562)
!1653 = !DILocation(line: 463, column: 21, scope: !1562)
!1654 = !DILocation(line: 464, column: 7, scope: !1562)
!1655 = !DILocation(line: 464, column: 12, scope: !1562)
!1656 = !DILocation(line: 464, column: 21, scope: !1562)
!1657 = !DILocation(line: 466, column: 7, scope: !1562)
!1658 = !DILocation(line: 466, column: 12, scope: !1562)
!1659 = !DILocation(line: 466, column: 23, scope: !1562)
!1660 = !DILocation(line: 469, column: 12, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1562, file: !125, line: 469, column: 11)
!1662 = !DILocation(line: 469, column: 11, scope: !1661)
!1663 = !DILocation(line: 469, column: 14, scope: !1661)
!1664 = !DILocation(line: 469, column: 11, scope: !1562)
!1665 = !DILocalVariable(name: "archstart", scope: !1666, file: !125, line: 471, type: !144)
!1666 = distinct !DILexicalBlock(scope: !1661, file: !125, line: 469, column: 22)
!1667 = !DILocation(line: 471, column: 21, scope: !1666)
!1668 = !DILocalVariable(name: "archlength", scope: !1666, file: !125, line: 472, type: !155)
!1669 = !DILocation(line: 472, column: 13, scope: !1666)
!1670 = !DILocation(line: 474, column: 21, scope: !1666)
!1671 = !DILocation(line: 474, column: 19, scope: !1666)
!1672 = !DILocation(line: 475, column: 9, scope: !1666)
!1673 = !DILocation(line: 475, column: 17, scope: !1674)
!1674 = !DILexicalBlockFile(scope: !1666, file: !125, discriminator: 1)
!1675 = !DILocation(line: 475, column: 16, scope: !1674)
!1676 = !DILocation(line: 475, column: 19, scope: !1674)
!1677 = !DILocation(line: 475, column: 34, scope: !1678)
!1678 = !DILexicalBlockFile(scope: !1666, file: !125, discriminator: 2)
!1679 = !DILocation(line: 475, column: 33, scope: !1678)
!1680 = !DILocation(line: 475, column: 23, scope: !1678)
!1681 = !DILocation(line: 475, column: 37, scope: !1678)
!1682 = !DILocation(line: 475, column: 41, scope: !1683)
!1683 = !DILexicalBlockFile(scope: !1666, file: !125, discriminator: 3)
!1684 = !DILocation(line: 475, column: 40, scope: !1683)
!1685 = !DILocation(line: 475, column: 43, scope: !1683)
!1686 = !DILocation(line: 475, column: 50, scope: !1683)
!1687 = !DILocation(line: 475, column: 54, scope: !1688)
!1688 = !DILexicalBlockFile(scope: !1666, file: !125, discriminator: 4)
!1689 = !DILocation(line: 475, column: 53, scope: !1688)
!1690 = !DILocation(line: 475, column: 56, scope: !1688)
!1691 = !DILocation(line: 475, column: 63, scope: !1688)
!1692 = !DILocation(line: 475, column: 67, scope: !1693)
!1693 = !DILexicalBlockFile(scope: !1666, file: !125, discriminator: 5)
!1694 = !DILocation(line: 475, column: 66, scope: !1693)
!1695 = !DILocation(line: 475, column: 69, scope: !1693)
!1696 = !DILocation(line: 475, column: 9, scope: !1697)
!1697 = !DILexicalBlockFile(scope: !1666, file: !125, discriminator: 6)
!1698 = !DILocation(line: 476, column: 12, scope: !1666)
!1699 = !DILocation(line: 475, column: 9, scope: !1700)
!1700 = !DILexicalBlockFile(scope: !1666, file: !125, discriminator: 7)
!1701 = distinct !{!1701, !1672}
!1702 = !DILocation(line: 477, column: 22, scope: !1666)
!1703 = !DILocation(line: 477, column: 26, scope: !1666)
!1704 = !DILocation(line: 477, column: 24, scope: !1666)
!1705 = !DILocation(line: 477, column: 20, scope: !1666)
!1706 = !DILocation(line: 478, column: 13, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1666, file: !125, line: 478, column: 13)
!1708 = !DILocation(line: 478, column: 24, scope: !1707)
!1709 = !DILocation(line: 478, column: 13, scope: !1666)
!1710 = !DILocation(line: 479, column: 23, scope: !1707)
!1711 = !DILocation(line: 479, column: 26, scope: !1707)
!1712 = !DILocation(line: 480, column: 65, scope: !1707)
!1713 = !DILocation(line: 480, column: 70, scope: !1707)
!1714 = !DILocation(line: 479, column: 11, scope: !1715)
!1715 = !DILexicalBlockFile(scope: !1707, file: !125, discriminator: 1)
!1716 = !DILocation(line: 479, column: 11, scope: !1707)
!1717 = !DILocation(line: 482, column: 9, scope: !1666)
!1718 = !DILocation(line: 483, column: 31, scope: !1666)
!1719 = !DILocation(line: 483, column: 42, scope: !1666)
!1720 = !DILocation(line: 483, column: 9, scope: !1666)
!1721 = !DILocation(line: 484, column: 9, scope: !1666)
!1722 = !DILocation(line: 486, column: 9, scope: !1666)
!1723 = !DILocation(line: 486, column: 14, scope: !1666)
!1724 = !DILocation(line: 486, column: 31, scope: !1666)
!1725 = !DILocation(line: 487, column: 41, scope: !1666)
!1726 = !DILocation(line: 487, column: 21, scope: !1666)
!1727 = !DILocation(line: 487, column: 9, scope: !1666)
!1728 = !DILocation(line: 487, column: 14, scope: !1666)
!1729 = !DILocation(line: 487, column: 19, scope: !1666)
!1730 = !DILocation(line: 489, column: 13, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1666, file: !125, line: 489, column: 13)
!1732 = !DILocation(line: 489, column: 18, scope: !1731)
!1733 = !DILocation(line: 489, column: 24, scope: !1731)
!1734 = !DILocation(line: 489, column: 29, scope: !1731)
!1735 = !DILocation(line: 489, column: 13, scope: !1666)
!1736 = !DILocation(line: 490, column: 49, scope: !1731)
!1737 = !DILocation(line: 490, column: 18, scope: !1731)
!1738 = !DILocation(line: 490, column: 16, scope: !1731)
!1739 = !DILocation(line: 490, column: 11, scope: !1731)
!1740 = !DILocation(line: 491, column: 13, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1666, file: !125, line: 491, column: 13)
!1742 = !DILocation(line: 491, column: 13, scope: !1666)
!1743 = !DILocation(line: 492, column: 23, scope: !1741)
!1744 = !DILocation(line: 492, column: 26, scope: !1741)
!1745 = !DILocation(line: 494, column: 23, scope: !1741)
!1746 = !DILocation(line: 494, column: 28, scope: !1741)
!1747 = !DILocation(line: 494, column: 42, scope: !1741)
!1748 = !DILocation(line: 494, column: 52, scope: !1741)
!1749 = !DILocation(line: 494, column: 57, scope: !1741)
!1750 = !DILocation(line: 492, column: 11, scope: !1751)
!1751 = !DILexicalBlockFile(scope: !1741, file: !125, discriminator: 1)
!1752 = !DILocation(line: 492, column: 11, scope: !1741)
!1753 = !DILocation(line: 495, column: 7, scope: !1666)
!1754 = !DILocation(line: 495, column: 18, scope: !1755)
!1755 = !DILexicalBlockFile(scope: !1756, file: !125, discriminator: 1)
!1756 = distinct !DILexicalBlock(scope: !1661, file: !125, line: 495, column: 18)
!1757 = !DILocation(line: 495, column: 23, scope: !1755)
!1758 = !DILocation(line: 495, column: 31, scope: !1755)
!1759 = !DILocation(line: 495, column: 48, scope: !1755)
!1760 = !DILocation(line: 495, column: 51, scope: !1761)
!1761 = !DILexicalBlockFile(scope: !1756, file: !125, discriminator: 2)
!1762 = !DILocation(line: 495, column: 56, scope: !1761)
!1763 = !DILocation(line: 495, column: 64, scope: !1761)
!1764 = !DILocation(line: 495, column: 78, scope: !1761)
!1765 = !DILocation(line: 496, column: 18, scope: !1756)
!1766 = !DILocation(line: 496, column: 23, scope: !1756)
!1767 = !DILocation(line: 496, column: 31, scope: !1756)
!1768 = !DILocation(line: 495, column: 18, scope: !1769)
!1769 = !DILexicalBlockFile(scope: !1661, file: !125, discriminator: 3)
!1770 = !DILocation(line: 498, column: 9, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1756, file: !125, line: 496, column: 48)
!1772 = !DILocation(line: 498, column: 14, scope: !1771)
!1773 = !DILocation(line: 498, column: 31, scope: !1771)
!1774 = !DILocation(line: 499, column: 21, scope: !1771)
!1775 = !DILocation(line: 499, column: 9, scope: !1771)
!1776 = !DILocation(line: 499, column: 14, scope: !1771)
!1777 = !DILocation(line: 499, column: 19, scope: !1771)
!1778 = !DILocation(line: 500, column: 7, scope: !1771)
!1779 = !DILocation(line: 504, column: 9, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1756, file: !125, line: 500, column: 14)
!1781 = !DILocation(line: 504, column: 14, scope: !1780)
!1782 = !DILocation(line: 504, column: 31, scope: !1780)
!1783 = !DILocation(line: 505, column: 9, scope: !1780)
!1784 = !DILocation(line: 505, column: 14, scope: !1780)
!1785 = !DILocation(line: 505, column: 19, scope: !1780)
!1786 = !DILocation(line: 509, column: 7, scope: !1562)
!1787 = !DILocation(line: 509, column: 25, scope: !1568)
!1788 = !DILocation(line: 509, column: 24, scope: !1568)
!1789 = !DILocation(line: 509, column: 14, scope: !1568)
!1790 = !DILocation(line: 509, column: 7, scope: !1568)
!1791 = !DILocation(line: 510, column: 10, scope: !1562)
!1792 = !DILocation(line: 509, column: 7, scope: !1572)
!1793 = distinct !{!1793, !1786}
!1794 = !DILocation(line: 513, column: 12, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1562, file: !125, line: 513, column: 11)
!1796 = !DILocation(line: 513, column: 11, scope: !1795)
!1797 = !DILocation(line: 513, column: 14, scope: !1795)
!1798 = !DILocation(line: 513, column: 11, scope: !1562)
!1799 = !DILocation(line: 514, column: 10, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1795, file: !125, line: 513, column: 22)
!1801 = !DILocation(line: 515, column: 9, scope: !1800)
!1802 = !DILocation(line: 515, column: 27, scope: !1803)
!1803 = !DILexicalBlockFile(scope: !1800, file: !125, discriminator: 1)
!1804 = !DILocation(line: 515, column: 26, scope: !1803)
!1805 = !DILocation(line: 515, column: 16, scope: !1803)
!1806 = !DILocation(line: 515, column: 9, scope: !1803)
!1807 = !DILocation(line: 516, column: 12, scope: !1800)
!1808 = !DILocation(line: 515, column: 9, scope: !1809)
!1809 = !DILexicalBlockFile(scope: !1800, file: !125, discriminator: 2)
!1810 = distinct !{!1810, !1801}
!1811 = !DILocation(line: 517, column: 14, scope: !1800)
!1812 = !DILocation(line: 517, column: 13, scope: !1800)
!1813 = !DILocation(line: 517, column: 11, scope: !1800)
!1814 = !DILocation(line: 518, column: 13, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1800, file: !125, line: 518, column: 13)
!1816 = !DILocation(line: 518, column: 16, scope: !1815)
!1817 = !DILocation(line: 518, column: 23, scope: !1815)
!1818 = !DILocation(line: 518, column: 26, scope: !1819)
!1819 = !DILexicalBlockFile(scope: !1815, file: !125, discriminator: 1)
!1820 = !DILocation(line: 518, column: 29, scope: !1819)
!1821 = !DILocation(line: 518, column: 13, scope: !1819)
!1822 = !DILocation(line: 519, column: 16, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1815, file: !125, line: 518, column: 37)
!1824 = !DILocation(line: 519, column: 15, scope: !1823)
!1825 = !DILocation(line: 519, column: 13, scope: !1823)
!1826 = !DILocation(line: 520, column: 26, scope: !1823)
!1827 = !DILocation(line: 520, column: 29, scope: !1823)
!1828 = !DILocation(line: 520, column: 25, scope: !1823)
!1829 = !DILocation(line: 520, column: 11, scope: !1823)
!1830 = !DILocation(line: 520, column: 16, scope: !1823)
!1831 = !DILocation(line: 520, column: 23, scope: !1823)
!1832 = !DILocation(line: 521, column: 15, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1823, file: !125, line: 521, column: 15)
!1834 = !DILocation(line: 521, column: 18, scope: !1833)
!1835 = !DILocation(line: 521, column: 15, scope: !1823)
!1836 = !DILocation(line: 522, column: 13, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1833, file: !125, line: 521, column: 26)
!1838 = !DILocation(line: 522, column: 18, scope: !1837)
!1839 = !DILocation(line: 522, column: 25, scope: !1837)
!1840 = !DILocation(line: 523, column: 14, scope: !1837)
!1841 = !DILocation(line: 524, column: 11, scope: !1837)
!1842 = !DILocation(line: 524, column: 22, scope: !1843)
!1843 = !DILexicalBlockFile(scope: !1844, file: !125, discriminator: 1)
!1844 = distinct !DILexicalBlock(scope: !1833, file: !125, line: 524, column: 22)
!1845 = !DILocation(line: 524, column: 28, scope: !1843)
!1846 = !DILocation(line: 524, column: 25, scope: !1843)
!1847 = !DILocation(line: 526, column: 14, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1844, file: !125, line: 524, column: 32)
!1849 = !DILocation(line: 527, column: 11, scope: !1848)
!1850 = !DILocation(line: 527, column: 22, scope: !1851)
!1851 = !DILexicalBlockFile(scope: !1852, file: !125, discriminator: 1)
!1852 = distinct !DILexicalBlock(scope: !1844, file: !125, line: 527, column: 22)
!1853 = !DILocation(line: 527, column: 25, scope: !1851)
!1854 = !DILocation(line: 527, column: 32, scope: !1851)
!1855 = !DILocation(line: 527, column: 35, scope: !1856)
!1856 = !DILexicalBlockFile(scope: !1852, file: !125, discriminator: 2)
!1857 = !DILocation(line: 527, column: 38, scope: !1856)
!1858 = !DILocation(line: 527, column: 22, scope: !1856)
!1859 = !DILocation(line: 528, column: 25, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1852, file: !125, line: 527, column: 46)
!1861 = !DILocation(line: 529, column: 24, scope: !1860)
!1862 = !DILocation(line: 531, column: 25, scope: !1860)
!1863 = !DILocation(line: 531, column: 30, scope: !1860)
!1864 = !DILocation(line: 531, column: 44, scope: !1860)
!1865 = !DILocation(line: 531, column: 49, scope: !1860)
!1866 = !DILocation(line: 531, column: 53, scope: !1860)
!1867 = !DILocation(line: 528, column: 13, scope: !1860)
!1868 = !DILocation(line: 534, column: 24, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1852, file: !125, line: 533, column: 18)
!1870 = !DILocation(line: 535, column: 23, scope: !1869)
!1871 = !DILocation(line: 537, column: 24, scope: !1869)
!1872 = !DILocation(line: 537, column: 29, scope: !1869)
!1873 = !DILocation(line: 537, column: 43, scope: !1869)
!1874 = !DILocation(line: 537, column: 48, scope: !1869)
!1875 = !DILocation(line: 537, column: 52, scope: !1869)
!1876 = !DILocation(line: 537, column: 56, scope: !1869)
!1877 = !DILocation(line: 537, column: 60, scope: !1869)
!1878 = !DILocation(line: 534, column: 13, scope: !1869)
!1879 = !DILocation(line: 538, column: 13, scope: !1869)
!1880 = !DILocation(line: 538, column: 18, scope: !1869)
!1881 = !DILocation(line: 538, column: 25, scope: !1869)
!1882 = !DILocation(line: 540, column: 9, scope: !1823)
!1883 = !DILocation(line: 540, column: 20, scope: !1884)
!1884 = !DILexicalBlockFile(scope: !1885, file: !125, discriminator: 1)
!1885 = distinct !DILexicalBlock(scope: !1815, file: !125, line: 540, column: 20)
!1886 = !DILocation(line: 540, column: 23, scope: !1884)
!1887 = !DILocation(line: 541, column: 11, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1885, file: !125, line: 540, column: 31)
!1889 = !DILocation(line: 541, column: 16, scope: !1888)
!1890 = !DILocation(line: 541, column: 23, scope: !1888)
!1891 = !DILocation(line: 542, column: 12, scope: !1888)
!1892 = !DILocation(line: 543, column: 9, scope: !1888)
!1893 = !DILocation(line: 544, column: 22, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1885, file: !125, line: 543, column: 16)
!1895 = !DILocation(line: 545, column: 21, scope: !1894)
!1896 = !DILocation(line: 548, column: 22, scope: !1894)
!1897 = !DILocation(line: 548, column: 27, scope: !1894)
!1898 = !DILocation(line: 548, column: 41, scope: !1894)
!1899 = !DILocation(line: 544, column: 11, scope: !1894)
!1900 = !DILocation(line: 549, column: 11, scope: !1894)
!1901 = !DILocation(line: 549, column: 16, scope: !1894)
!1902 = !DILocation(line: 549, column: 23, scope: !1894)
!1903 = !DILocation(line: 551, column: 14, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1800, file: !125, line: 551, column: 13)
!1905 = !DILocation(line: 551, column: 19, scope: !1904)
!1906 = !DILocation(line: 551, column: 26, scope: !1904)
!1907 = !DILocation(line: 551, column: 47, scope: !1904)
!1908 = !DILocation(line: 551, column: 51, scope: !1909)
!1909 = !DILexicalBlockFile(scope: !1904, file: !125, discriminator: 1)
!1910 = !DILocation(line: 551, column: 56, scope: !1909)
!1911 = !DILocation(line: 551, column: 64, scope: !1909)
!1912 = !DILocation(line: 551, column: 13, scope: !1909)
!1913 = !DILocation(line: 552, column: 22, scope: !1904)
!1914 = !DILocation(line: 553, column: 21, scope: !1904)
!1915 = !DILocation(line: 554, column: 22, scope: !1904)
!1916 = !DILocation(line: 554, column: 27, scope: !1904)
!1917 = !DILocation(line: 552, column: 11, scope: !1904)
!1918 = !DILocation(line: 556, column: 25, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1800, file: !125, line: 556, column: 13)
!1920 = !DILocation(line: 556, column: 24, scope: !1919)
!1921 = !DILocation(line: 556, column: 14, scope: !1919)
!1922 = !DILocation(line: 556, column: 28, scope: !1919)
!1923 = !DILocation(line: 556, column: 43, scope: !1924)
!1924 = !DILexicalBlockFile(scope: !1919, file: !125, discriminator: 1)
!1925 = !DILocation(line: 556, column: 42, scope: !1924)
!1926 = !DILocation(line: 556, column: 32, scope: !1924)
!1927 = !DILocation(line: 556, column: 13, scope: !1924)
!1928 = !DILocation(line: 557, column: 22, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1919, file: !125, line: 556, column: 47)
!1930 = !DILocation(line: 558, column: 21, scope: !1929)
!1931 = !DILocation(line: 561, column: 22, scope: !1929)
!1932 = !DILocation(line: 561, column: 27, scope: !1929)
!1933 = !DILocation(line: 561, column: 41, scope: !1929)
!1934 = !DILocation(line: 557, column: 11, scope: !1929)
!1935 = !DILocation(line: 562, column: 9, scope: !1929)
!1936 = !DILocation(line: 564, column: 9, scope: !1800)
!1937 = !DILocation(line: 564, column: 27, scope: !1803)
!1938 = !DILocation(line: 564, column: 26, scope: !1803)
!1939 = !DILocation(line: 564, column: 16, scope: !1803)
!1940 = !DILocation(line: 564, column: 9, scope: !1803)
!1941 = !DILocation(line: 565, column: 12, scope: !1800)
!1942 = !DILocation(line: 564, column: 9, scope: !1809)
!1943 = distinct !{!1943, !1936}
!1944 = !DILocation(line: 567, column: 16, scope: !1800)
!1945 = !DILocation(line: 567, column: 14, scope: !1800)
!1946 = !DILocation(line: 568, column: 9, scope: !1800)
!1947 = !DILocation(line: 568, column: 17, scope: !1803)
!1948 = !DILocation(line: 568, column: 16, scope: !1803)
!1949 = !DILocation(line: 568, column: 19, scope: !1803)
!1950 = !DILocation(line: 568, column: 23, scope: !1809)
!1951 = !DILocation(line: 568, column: 22, scope: !1809)
!1952 = !DILocation(line: 568, column: 25, scope: !1809)
!1953 = !DILocation(line: 568, column: 32, scope: !1809)
!1954 = !DILocation(line: 568, column: 36, scope: !1955)
!1955 = !DILexicalBlockFile(scope: !1800, file: !125, discriminator: 3)
!1956 = !DILocation(line: 568, column: 35, scope: !1955)
!1957 = !DILocation(line: 568, column: 38, scope: !1955)
!1958 = !DILocation(line: 568, column: 9, scope: !1959)
!1959 = !DILexicalBlockFile(scope: !1800, file: !125, discriminator: 4)
!1960 = !DILocation(line: 569, column: 26, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1962, file: !125, line: 569, column: 15)
!1962 = distinct !DILexicalBlock(scope: !1800, file: !125, line: 568, column: 46)
!1963 = !DILocation(line: 569, column: 25, scope: !1961)
!1964 = !DILocation(line: 569, column: 15, scope: !1961)
!1965 = !DILocation(line: 569, column: 15, scope: !1962)
!1966 = !DILocation(line: 570, column: 13, scope: !1961)
!1967 = !DILocation(line: 571, column: 12, scope: !1962)
!1968 = !DILocation(line: 568, column: 9, scope: !1969)
!1969 = !DILexicalBlockFile(scope: !1800, file: !125, discriminator: 5)
!1970 = distinct !{!1970, !1946}
!1971 = !DILocation(line: 573, column: 17, scope: !1800)
!1972 = !DILocation(line: 573, column: 21, scope: !1800)
!1973 = !DILocation(line: 573, column: 19, scope: !1800)
!1974 = !DILocation(line: 573, column: 15, scope: !1800)
!1975 = !DILocation(line: 574, column: 9, scope: !1800)
!1976 = !DILocation(line: 574, column: 27, scope: !1803)
!1977 = !DILocation(line: 574, column: 26, scope: !1803)
!1978 = !DILocation(line: 574, column: 16, scope: !1803)
!1979 = !DILocation(line: 574, column: 9, scope: !1803)
!1980 = !DILocation(line: 575, column: 12, scope: !1800)
!1981 = !DILocation(line: 574, column: 9, scope: !1809)
!1982 = distinct !{!1982, !1975}
!1983 = !DILocation(line: 576, column: 14, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1800, file: !125, line: 576, column: 13)
!1985 = !DILocation(line: 576, column: 13, scope: !1984)
!1986 = !DILocation(line: 576, column: 16, scope: !1984)
!1987 = !DILocation(line: 576, column: 13, scope: !1800)
!1988 = !DILocation(line: 577, column: 23, scope: !1984)
!1989 = !DILocation(line: 578, column: 22, scope: !1984)
!1990 = !DILocation(line: 579, column: 50, scope: !1984)
!1991 = !DILocation(line: 579, column: 55, scope: !1984)
!1992 = !DILocation(line: 579, column: 69, scope: !1984)
!1993 = !DILocation(line: 577, column: 11, scope: !1984)
!1994 = !DILocation(line: 580, column: 19, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1984, file: !125, line: 580, column: 18)
!1996 = !DILocation(line: 580, column: 18, scope: !1995)
!1997 = !DILocation(line: 580, column: 21, scope: !1995)
!1998 = !DILocation(line: 580, column: 18, scope: !1984)
!1999 = !DILocation(line: 581, column: 23, scope: !1995)
!2000 = !DILocation(line: 582, column: 22, scope: !1995)
!2001 = !DILocation(line: 583, column: 50, scope: !1995)
!2002 = !DILocation(line: 583, column: 55, scope: !1995)
!2003 = !DILocation(line: 583, column: 69, scope: !1995)
!2004 = !DILocation(line: 581, column: 11, scope: !1995)
!2005 = !DILocation(line: 584, column: 19, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !1995, file: !125, line: 584, column: 18)
!2007 = !DILocation(line: 584, column: 18, scope: !2006)
!2008 = !DILocation(line: 584, column: 21, scope: !2006)
!2009 = !DILocation(line: 584, column: 18, scope: !1995)
!2010 = !DILocation(line: 585, column: 23, scope: !2006)
!2011 = !DILocation(line: 586, column: 22, scope: !2006)
!2012 = !DILocation(line: 587, column: 49, scope: !2006)
!2013 = !DILocation(line: 587, column: 54, scope: !2006)
!2014 = !DILocation(line: 587, column: 68, scope: !2006)
!2015 = !DILocation(line: 585, column: 11, scope: !2006)
!2016 = !DILocation(line: 588, column: 9, scope: !1800)
!2017 = !DILocation(line: 589, column: 34, scope: !1800)
!2018 = !DILocation(line: 589, column: 48, scope: !1800)
!2019 = !DILocation(line: 589, column: 9, scope: !1800)
!2020 = !DILocation(line: 590, column: 9, scope: !1800)
!2021 = !DILocation(line: 591, column: 30, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !1800, file: !125, line: 591, column: 13)
!2023 = !DILocation(line: 591, column: 35, scope: !2022)
!2024 = !DILocation(line: 591, column: 40, scope: !2022)
!2025 = !DILocation(line: 591, column: 57, scope: !2022)
!2026 = !DILocation(line: 591, column: 13, scope: !2022)
!2027 = !DILocation(line: 591, column: 62, scope: !2022)
!2028 = !DILocation(line: 591, column: 13, scope: !1800)
!2029 = !DILocation(line: 592, column: 25, scope: !2022)
!2030 = !DILocation(line: 593, column: 24, scope: !2022)
!2031 = !DILocation(line: 594, column: 25, scope: !2022)
!2032 = !DILocation(line: 594, column: 30, scope: !2022)
!2033 = !DILocation(line: 594, column: 44, scope: !2022)
!2034 = !DILocation(line: 594, column: 57, scope: !2022)
!2035 = !DILocation(line: 592, column: 11, scope: !2022)
!2036 = !DILocation(line: 595, column: 10, scope: !1800)
!2037 = !DILocation(line: 596, column: 9, scope: !1800)
!2038 = !DILocation(line: 596, column: 27, scope: !1803)
!2039 = !DILocation(line: 596, column: 26, scope: !1803)
!2040 = !DILocation(line: 596, column: 16, scope: !1803)
!2041 = !DILocation(line: 596, column: 9, scope: !1803)
!2042 = !DILocation(line: 597, column: 12, scope: !1800)
!2043 = !DILocation(line: 596, column: 9, scope: !1809)
!2044 = distinct !{!2044, !2037}
!2045 = !DILocation(line: 598, column: 7, scope: !1800)
!2046 = !DILocation(line: 599, column: 9, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !1795, file: !125, line: 598, column: 14)
!2048 = !DILocation(line: 599, column: 14, scope: !2047)
!2049 = !DILocation(line: 599, column: 21, scope: !2047)
!2050 = !DILocation(line: 600, column: 29, scope: !2047)
!2051 = !DILocation(line: 600, column: 34, scope: !2047)
!2052 = !DILocation(line: 600, column: 9, scope: !2047)
!2053 = !DILocation(line: 602, column: 13, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !1562, file: !125, line: 602, column: 11)
!2055 = !DILocation(line: 602, column: 12, scope: !2054)
!2056 = !DILocation(line: 602, column: 15, scope: !2054)
!2057 = !DILocation(line: 602, column: 19, scope: !2058)
!2058 = !DILexicalBlockFile(scope: !2054, file: !125, discriminator: 1)
!2059 = !DILocation(line: 602, column: 18, scope: !2058)
!2060 = !DILocation(line: 602, column: 21, scope: !2058)
!2061 = !DILocation(line: 602, column: 11, scope: !2058)
!2062 = !DILocation(line: 602, column: 29, scope: !2063)
!2063 = !DILexicalBlockFile(scope: !2054, file: !125, discriminator: 2)
!2064 = !DILocation(line: 603, column: 12, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !1562, file: !125, line: 603, column: 11)
!2066 = !DILocation(line: 603, column: 11, scope: !2065)
!2067 = !DILocation(line: 603, column: 14, scope: !2065)
!2068 = !DILocation(line: 603, column: 11, scope: !1562)
!2069 = !DILocation(line: 604, column: 21, scope: !2065)
!2070 = !DILocation(line: 605, column: 20, scope: !2065)
!2071 = !DILocation(line: 606, column: 21, scope: !2065)
!2072 = !DILocation(line: 606, column: 26, scope: !2065)
!2073 = !DILocation(line: 606, column: 32, scope: !2065)
!2074 = !DILocation(line: 606, column: 37, scope: !2065)
!2075 = !DILocation(line: 606, column: 41, scope: !2065)
!2076 = !DILocation(line: 604, column: 9, scope: !2065)
!2077 = !DILocation(line: 607, column: 11, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !1562, file: !125, line: 607, column: 11)
!2079 = !DILocation(line: 607, column: 16, scope: !2078)
!2080 = !DILocation(line: 607, column: 24, scope: !2078)
!2081 = !DILocation(line: 607, column: 41, scope: !2078)
!2082 = !DILocation(line: 608, column: 11, scope: !2078)
!2083 = !DILocation(line: 608, column: 16, scope: !2078)
!2084 = !DILocation(line: 608, column: 24, scope: !2078)
!2085 = !DILocation(line: 608, column: 38, scope: !2078)
!2086 = !DILocation(line: 609, column: 11, scope: !2078)
!2087 = !DILocation(line: 609, column: 16, scope: !2078)
!2088 = !DILocation(line: 609, column: 24, scope: !2078)
!2089 = !DILocation(line: 609, column: 40, scope: !2078)
!2090 = !DILocation(line: 610, column: 11, scope: !2078)
!2091 = !DILocation(line: 610, column: 16, scope: !2078)
!2092 = !DILocation(line: 610, column: 24, scope: !2078)
!2093 = !DILocation(line: 607, column: 11, scope: !1568)
!2094 = !DILocation(line: 611, column: 21, scope: !2078)
!2095 = !DILocation(line: 611, column: 24, scope: !2078)
!2096 = !DILocation(line: 612, column: 21, scope: !2078)
!2097 = !DILocation(line: 612, column: 26, scope: !2078)
!2098 = !DILocation(line: 611, column: 9, scope: !2099)
!2099 = !DILexicalBlockFile(scope: !2078, file: !125, discriminator: 1)
!2100 = !DILocation(line: 611, column: 9, scope: !2078)
!2101 = !DILocation(line: 613, column: 8, scope: !1562)
!2102 = !DILocation(line: 614, column: 7, scope: !1562)
!2103 = !DILocation(line: 614, column: 25, scope: !1568)
!2104 = !DILocation(line: 614, column: 24, scope: !1568)
!2105 = !DILocation(line: 614, column: 14, scope: !1568)
!2106 = !DILocation(line: 614, column: 7, scope: !1568)
!2107 = !DILocation(line: 615, column: 10, scope: !1562)
!2108 = !DILocation(line: 614, column: 7, scope: !1572)
!2109 = distinct !{!2109, !2102}
!2110 = !DILocation(line: 431, column: 5, scope: !2111)
!2111 = !DILexicalBlockFile(scope: !1563, file: !125, discriminator: 1)
!2112 = distinct !{!2112, !1560}
!2113 = !DILocation(line: 617, column: 11, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !1533, file: !125, line: 617, column: 9)
!2115 = !DILocation(line: 617, column: 10, scope: !2114)
!2116 = !DILocation(line: 617, column: 9, scope: !1533)
!2117 = !DILocation(line: 617, column: 14, scope: !2118)
!2118 = !DILexicalBlockFile(scope: !2114, file: !125, discriminator: 1)
!2119 = !DILocation(line: 618, column: 6, scope: !1533)
!2120 = !DILocation(line: 619, column: 5, scope: !1533)
!2121 = !DILocation(line: 619, column: 23, scope: !2122)
!2122 = !DILexicalBlockFile(scope: !1533, file: !125, discriminator: 1)
!2123 = !DILocation(line: 619, column: 22, scope: !2122)
!2124 = !DILocation(line: 619, column: 12, scope: !2122)
!2125 = !DILocation(line: 619, column: 5, scope: !2122)
!2126 = !DILocation(line: 620, column: 8, scope: !1533)
!2127 = !DILocation(line: 619, column: 5, scope: !2128)
!2128 = !DILexicalBlockFile(scope: !1533, file: !125, discriminator: 2)
!2129 = distinct !{!2129, !2120}
!2130 = !DILocation(line: 421, column: 3, scope: !2131)
!2131 = !DILexicalBlockFile(scope: !1534, file: !125, discriminator: 1)
!2132 = distinct !{!2132, !1531}
!2133 = !DILocation(line: 622, column: 1, scope: !412)
!2134 = distinct !DISubprogram(name: "c_isalnum", scope: !131, file: !131, line: 114, type: !617, isLocal: true, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !407)
!2135 = !DILocalVariable(name: "c", arg: 1, scope: !2134, file: !131, line: 114, type: !155)
!2136 = !DILocation(line: 114, column: 15, scope: !2134)
!2137 = !DILocation(line: 116, column: 18, scope: !2134)
!2138 = !DILocation(line: 116, column: 9, scope: !2134)
!2139 = !DILocation(line: 116, column: 2, scope: !2134)
!2140 = distinct !DISubprogram(name: "f_trigpend", scope: !125, file: !125, line: 662, type: !159, isLocal: false, isDefinition: true, scopeLine: 665, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !407)
!2141 = !DILocalVariable(name: "pend", arg: 1, scope: !2140, file: !125, line: 662, type: !161)
!2142 = !DILocation(line: 662, column: 28, scope: !2140)
!2143 = !DILocalVariable(name: "pkgbin", arg: 2, scope: !2140, file: !125, line: 662, type: !331)
!2144 = !DILocation(line: 662, column: 49, scope: !2140)
!2145 = !DILocalVariable(name: "ps", arg: 3, scope: !2140, file: !125, line: 663, type: !360)
!2146 = !DILocation(line: 663, column: 34, scope: !2140)
!2147 = !DILocalVariable(name: "value", arg: 4, scope: !2140, file: !125, line: 664, type: !144)
!2148 = !DILocation(line: 664, column: 24, scope: !2140)
!2149 = !DILocalVariable(name: "fip", arg: 5, scope: !2140, file: !125, line: 664, type: !379)
!2150 = !DILocation(line: 664, column: 55, scope: !2140)
!2151 = !DILocalVariable(name: "word", scope: !2140, file: !125, line: 666, type: !144)
!2152 = !DILocation(line: 666, column: 15, scope: !2140)
!2153 = !DILocalVariable(name: "emsg", scope: !2140, file: !125, line: 666, type: !144)
!2154 = !DILocation(line: 666, column: 22, scope: !2140)
!2155 = !DILocation(line: 668, column: 7, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2140, file: !125, line: 668, column: 7)
!2157 = !DILocation(line: 668, column: 11, scope: !2156)
!2158 = !DILocation(line: 668, column: 17, scope: !2156)
!2159 = !DILocation(line: 668, column: 7, scope: !2140)
!2160 = !DILocation(line: 669, column: 17, scope: !2156)
!2161 = !DILocation(line: 670, column: 16, scope: !2156)
!2162 = !DILocation(line: 671, column: 17, scope: !2156)
!2163 = !DILocation(line: 671, column: 22, scope: !2156)
!2164 = !DILocation(line: 669, column: 5, scope: !2156)
!2165 = !DILocation(line: 673, column: 3, scope: !2140)
!2166 = !DILocation(line: 673, column: 18, scope: !2167)
!2167 = !DILexicalBlockFile(scope: !2140, file: !125, discriminator: 1)
!2168 = !DILocation(line: 673, column: 16, scope: !2167)
!2169 = !DILocation(line: 673, column: 3, scope: !2167)
!2170 = !DILocation(line: 674, column: 33, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2140, file: !125, line: 673, column: 38)
!2172 = !DILocation(line: 674, column: 12, scope: !2171)
!2173 = !DILocation(line: 674, column: 10, scope: !2171)
!2174 = !DILocation(line: 675, column: 9, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2171, file: !125, line: 675, column: 9)
!2176 = !DILocation(line: 675, column: 9, scope: !2171)
!2177 = !DILocation(line: 676, column: 19, scope: !2175)
!2178 = !DILocation(line: 677, column: 18, scope: !2175)
!2179 = !DILocation(line: 677, column: 66, scope: !2175)
!2180 = !DILocation(line: 677, column: 72, scope: !2175)
!2181 = !DILocation(line: 676, column: 7, scope: !2175)
!2182 = !DILocation(line: 679, column: 30, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2171, file: !125, line: 679, column: 9)
!2184 = !DILocation(line: 679, column: 46, scope: !2183)
!2185 = !DILocation(line: 679, column: 36, scope: !2183)
!2186 = !DILocation(line: 679, column: 10, scope: !2187)
!2187 = !DILexicalBlockFile(scope: !2183, file: !125, discriminator: 1)
!2188 = !DILocation(line: 679, column: 9, scope: !2171)
!2189 = !DILocation(line: 680, column: 19, scope: !2183)
!2190 = !DILocation(line: 681, column: 18, scope: !2183)
!2191 = !DILocation(line: 681, column: 59, scope: !2183)
!2192 = !DILocation(line: 680, column: 7, scope: !2183)
!2193 = !DILocation(line: 673, column: 3, scope: !2194)
!2194 = !DILexicalBlockFile(scope: !2140, file: !125, discriminator: 2)
!2195 = distinct !{!2195, !2165}
!2196 = !DILocation(line: 683, column: 1, scope: !2140)
!2197 = !DILocalVariable(name: "valp", arg: 1, scope: !416, file: !125, line: 625, type: !143)
!2198 = !DILocation(line: 625, column: 24, scope: !416)
!2199 = !DILocalVariable(name: "p", scope: !416, file: !125, line: 628, type: !144)
!2200 = !DILocation(line: 628, column: 15, scope: !416)
!2201 = !DILocalVariable(name: "start", scope: !416, file: !125, line: 628, type: !144)
!2202 = !DILocation(line: 628, column: 19, scope: !416)
!2203 = !DILocalVariable(name: "end", scope: !416, file: !125, line: 628, type: !144)
!2204 = !DILocation(line: 628, column: 27, scope: !416)
!2205 = !DILocation(line: 630, column: 8, scope: !416)
!2206 = !DILocation(line: 630, column: 7, scope: !416)
!2207 = !DILocation(line: 630, column: 5, scope: !416)
!2208 = !DILocation(line: 631, column: 3, scope: !416)
!2209 = !DILocation(line: 632, column: 11, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2211, file: !125, line: 632, column: 9)
!2211 = distinct !DILexicalBlock(scope: !2212, file: !125, line: 631, column: 12)
!2212 = distinct !DILexicalBlock(scope: !2213, file: !125, line: 631, column: 3)
!2213 = distinct !DILexicalBlock(scope: !416, file: !125, line: 631, column: 3)
!2214 = !DILocation(line: 632, column: 10, scope: !2210)
!2215 = !DILocation(line: 632, column: 9, scope: !2211)
!2216 = !DILocation(line: 633, column: 15, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2210, file: !125, line: 632, column: 14)
!2218 = !DILocation(line: 633, column: 8, scope: !2217)
!2219 = !DILocation(line: 633, column: 13, scope: !2217)
!2220 = !DILocation(line: 634, column: 7, scope: !2217)
!2221 = !DILocation(line: 636, column: 20, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2211, file: !125, line: 636, column: 9)
!2223 = !DILocation(line: 636, column: 19, scope: !2222)
!2224 = !DILocation(line: 636, column: 9, scope: !2222)
!2225 = !DILocation(line: 636, column: 9, scope: !2211)
!2226 = !DILocation(line: 637, column: 8, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2222, file: !125, line: 636, column: 24)
!2228 = !DILocation(line: 638, column: 7, scope: !2227)
!2229 = distinct !{!2229, !2208}
!2230 = !DILocation(line: 640, column: 13, scope: !2211)
!2231 = !DILocation(line: 640, column: 11, scope: !2211)
!2232 = !DILocation(line: 641, column: 5, scope: !2211)
!2233 = !DILocation(line: 643, column: 3, scope: !416)
!2234 = !DILocation(line: 644, column: 10, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2236, file: !125, line: 644, column: 9)
!2236 = distinct !DILexicalBlock(scope: !2237, file: !125, line: 643, column: 12)
!2237 = distinct !DILexicalBlock(scope: !2238, file: !125, line: 643, column: 3)
!2238 = distinct !DILexicalBlock(scope: !416, file: !125, line: 643, column: 3)
!2239 = !DILocation(line: 644, column: 9, scope: !2235)
!2240 = !DILocation(line: 644, column: 12, scope: !2235)
!2241 = !DILocation(line: 644, column: 27, scope: !2242)
!2242 = !DILexicalBlockFile(scope: !2235, file: !125, discriminator: 1)
!2243 = !DILocation(line: 644, column: 26, scope: !2242)
!2244 = !DILocation(line: 644, column: 16, scope: !2242)
!2245 = !DILocation(line: 644, column: 9, scope: !2242)
!2246 = !DILocation(line: 645, column: 8, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2235, file: !125, line: 644, column: 31)
!2248 = !DILocation(line: 646, column: 7, scope: !2247)
!2249 = distinct !{!2249, !2233}
!2250 = !DILocation(line: 648, column: 11, scope: !2236)
!2251 = !DILocation(line: 648, column: 9, scope: !2236)
!2252 = !DILocation(line: 649, column: 5, scope: !2236)
!2253 = !DILocation(line: 652, column: 3, scope: !416)
!2254 = !DILocation(line: 653, column: 25, scope: !416)
!2255 = !DILocation(line: 653, column: 32, scope: !416)
!2256 = !DILocation(line: 653, column: 38, scope: !416)
!2257 = !DILocation(line: 653, column: 36, scope: !416)
!2258 = !DILocation(line: 653, column: 3, scope: !416)
!2259 = !DILocation(line: 654, column: 3, scope: !416)
!2260 = !DILocation(line: 656, column: 11, scope: !416)
!2261 = !DILocation(line: 656, column: 4, scope: !416)
!2262 = !DILocation(line: 656, column: 9, scope: !416)
!2263 = !DILocation(line: 658, column: 15, scope: !416)
!2264 = !DILocation(line: 658, column: 3, scope: !416)
!2265 = !DILocation(line: 659, column: 1, scope: !416)
!2266 = distinct !DISubprogram(name: "f_trigaw", scope: !125, file: !125, line: 686, type: !159, isLocal: false, isDefinition: true, scopeLine: 689, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !407)
!2267 = !DILocalVariable(name: "aw", arg: 1, scope: !2266, file: !125, line: 686, type: !161)
!2268 = !DILocation(line: 686, column: 26, scope: !2266)
!2269 = !DILocalVariable(name: "pkgbin", arg: 2, scope: !2266, file: !125, line: 686, type: !331)
!2270 = !DILocation(line: 686, column: 45, scope: !2266)
!2271 = !DILocalVariable(name: "ps", arg: 3, scope: !2266, file: !125, line: 687, type: !360)
!2272 = !DILocation(line: 687, column: 32, scope: !2266)
!2273 = !DILocalVariable(name: "value", arg: 4, scope: !2266, file: !125, line: 688, type: !144)
!2274 = !DILocation(line: 688, column: 22, scope: !2266)
!2275 = !DILocalVariable(name: "fip", arg: 5, scope: !2266, file: !125, line: 688, type: !379)
!2276 = !DILocation(line: 688, column: 53, scope: !2266)
!2277 = !DILocalVariable(name: "word", scope: !2266, file: !125, line: 690, type: !144)
!2278 = !DILocation(line: 690, column: 15, scope: !2266)
!2279 = !DILocalVariable(name: "pend", scope: !2266, file: !125, line: 691, type: !161)
!2280 = !DILocation(line: 691, column: 19, scope: !2266)
!2281 = !DILocation(line: 693, column: 7, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2266, file: !125, line: 693, column: 7)
!2283 = !DILocation(line: 693, column: 11, scope: !2282)
!2284 = !DILocation(line: 693, column: 17, scope: !2282)
!2285 = !DILocation(line: 693, column: 7, scope: !2266)
!2286 = !DILocation(line: 694, column: 17, scope: !2282)
!2287 = !DILocation(line: 695, column: 16, scope: !2282)
!2288 = !DILocation(line: 696, column: 17, scope: !2282)
!2289 = !DILocation(line: 696, column: 22, scope: !2282)
!2290 = !DILocation(line: 694, column: 5, scope: !2282)
!2291 = !DILocation(line: 698, column: 3, scope: !2266)
!2292 = !DILocation(line: 698, column: 18, scope: !2293)
!2293 = !DILexicalBlockFile(scope: !2266, file: !125, discriminator: 1)
!2294 = !DILocation(line: 698, column: 16, scope: !2293)
!2295 = !DILocation(line: 698, column: 3, scope: !2293)
!2296 = !DILocalVariable(name: "err", scope: !2297, file: !125, line: 699, type: !366)
!2297 = distinct !DILexicalBlock(scope: !2266, file: !125, line: 698, column: 38)
!2298 = !DILocation(line: 699, column: 23, scope: !2297)
!2299 = !DILocation(line: 701, column: 31, scope: !2297)
!2300 = !DILocation(line: 701, column: 12, scope: !2297)
!2301 = !DILocation(line: 701, column: 10, scope: !2297)
!2302 = !DILocation(line: 702, column: 9, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2297, file: !125, line: 702, column: 9)
!2304 = !DILocation(line: 702, column: 14, scope: !2303)
!2305 = !DILocation(line: 702, column: 9, scope: !2297)
!2306 = !DILocation(line: 703, column: 19, scope: !2303)
!2307 = !DILocation(line: 704, column: 18, scope: !2303)
!2308 = !DILocation(line: 705, column: 19, scope: !2303)
!2309 = !DILocation(line: 705, column: 29, scope: !2303)
!2310 = !DILocation(line: 703, column: 7, scope: !2303)
!2311 = !DILocation(line: 707, column: 23, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2297, file: !125, line: 707, column: 9)
!2313 = !DILocation(line: 707, column: 29, scope: !2312)
!2314 = !DILocation(line: 707, column: 10, scope: !2312)
!2315 = !DILocation(line: 707, column: 9, scope: !2297)
!2316 = !DILocation(line: 708, column: 19, scope: !2312)
!2317 = !DILocation(line: 709, column: 18, scope: !2312)
!2318 = !DILocation(line: 709, column: 67, scope: !2312)
!2319 = !DILocation(line: 708, column: 7, scope: !2312)
!2320 = !DILocation(line: 711, column: 31, scope: !2297)
!2321 = !DILocation(line: 711, column: 5, scope: !2297)
!2322 = !DILocation(line: 698, column: 3, scope: !2323)
!2323 = !DILexicalBlockFile(scope: !2266, file: !125, discriminator: 2)
!2324 = distinct !{!2324, !2291}
!2325 = !DILocation(line: 713, column: 1, scope: !2266)
!2326 = distinct !DISubprogram(name: "c_iswhite", scope: !131, file: !131, line: 60, type: !617, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !407)
!2327 = !DILocalVariable(name: "c", arg: 1, scope: !2326, file: !131, line: 60, type: !155)
!2328 = !DILocation(line: 60, column: 15, scope: !2326)
!2329 = !DILocation(line: 62, column: 18, scope: !2326)
!2330 = !DILocation(line: 62, column: 9, scope: !2326)
!2331 = !DILocation(line: 62, column: 2, scope: !2326)
