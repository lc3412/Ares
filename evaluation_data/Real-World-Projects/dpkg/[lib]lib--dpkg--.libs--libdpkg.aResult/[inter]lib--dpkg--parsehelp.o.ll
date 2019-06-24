; ModuleID = './[inter]lib--dpkg--parsehelp.o.i'
source_filename = "./[inter]lib--dpkg--parsehelp.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.varbuf = type { i64, i64, i8* }
%struct.parsedb_state = type { i32, i32, %struct.dpkg_error, %struct.pkginfo*, %struct.pkgbin*, i8*, i8*, i8*, i8*, i32, i32 }
%struct.dpkg_error = type { i32, i32, i8* }
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
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.fieldinfo = type { i8*, i64, void (%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*)*, void (%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*)*, i64 }

@.str = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@pkg_name_is_illegal.alsoallowed = internal constant [5 x i8] c"-+._\00", align 1
@pkg_name_is_illegal.buf = internal global [150 x i8] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [5 x i8] c"dpkg\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"may not be empty string\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"must start with an alphanumeric character\00", align 1
@.str.4 = private unnamed_addr constant [70 x i8] c"character '%c' not allowed (only letters, digits and characters '%s')\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%u:\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"parsehelp.c\00", align 1
@__func__.varbufversion = private unnamed_addr constant [14 x i8] c"varbufversion\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"unknown versiondisplayepochwhen '%d'\00", align 1
@versiondescribe.bufs = internal global [10 x %struct.varbuf] zeroinitializer, align 16
@versiondescribe.bufnum = internal global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"version\04<none>\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"<none>\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"version string is empty\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"version string has embedded spaces\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"epoch in version is empty\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"epoch in version is not number\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"epoch in version is negative\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"epoch in version is too big\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"nothing after colon in version number\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"revision number is empty\00", align 1
@.str.18 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"version number is empty\00", align 1
@.str.20 = private unnamed_addr constant [41 x i8] c"version number does not start with digit\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c".-+~:\00", align 1
@.str.22 = private unnamed_addr constant [36 x i8] c"invalid character in version number\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c".+~\00", align 1
@.str.24 = private unnamed_addr constant [37 x i8] c"invalid character in revision number\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"missing '%s' field\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"empty value for '%s' field\00", align 1
@parse_ensure_have_field.empty = internal constant [1 x i8] zeroinitializer, align 1
@parse_error_msg.msg = internal global [1024 x i8] zeroinitializer, align 16
@.str.27 = private unnamed_addr constant [61 x i8] c"parsing file '%.255s' near line %d package '%.255s':\0A %.255s\00", align 1
@.str.28 = private unnamed_addr constant [44 x i8] c"parsing file '%.255s' near line %d:\0A %.255s\00", align 1

; Function Attrs: noreturn nounwind uwtable
define void @parse_error(%struct.parsedb_state*, i8*, ...) #0 !dbg !342 {
  %3 = alloca %struct.parsedb_state*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.parsedb_state* %0, %struct.parsedb_state** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.parsedb_state** %3, metadata !345, metadata !346), !dbg !347
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !348, metadata !346), !dbg !349
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !350, metadata !346), !dbg !363
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !364
  %7 = bitcast %struct.__va_list_tag* %6 to i8*, !dbg !364
  call void @llvm.va_start(i8* %7), !dbg !364
  %8 = load %struct.parsedb_state*, %struct.parsedb_state** %3, align 8, !dbg !365
  %9 = load i8*, i8** %4, align 8, !dbg !366
  %10 = call i8* @parse_error_msg(%struct.parsedb_state* %8, i8* %9), !dbg !367
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !368
  call void @ohshitv(i8* %10, %struct.__va_list_tag* %11) #10, !dbg !369
  unreachable, !dbg !371
                                                  ; No predecessors!
  ret void, !dbg !372
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

; Function Attrs: noreturn
declare void @ohshitv(i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind uwtable
define internal i8* @parse_error_msg(%struct.parsedb_state*, i8*) #4 !dbg !333 {
  %3 = alloca %struct.parsedb_state*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [256 x i8], align 16
  %6 = alloca [256 x i8], align 16
  store %struct.parsedb_state* %0, %struct.parsedb_state** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.parsedb_state** %3, metadata !373, metadata !346), !dbg !374
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !375, metadata !346), !dbg !376
  call void @llvm.dbg.declare(metadata [256 x i8]* %5, metadata !377, metadata !346), !dbg !381
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i32 0, i32 0, !dbg !382
  %8 = load %struct.parsedb_state*, %struct.parsedb_state** %3, align 8, !dbg !383
  %9 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %8, i32 0, i32 8, !dbg !384
  %10 = load i8*, i8** %9, align 8, !dbg !384
  %11 = call i8* @str_escape_fmt(i8* %7, i8* %10, i64 256), !dbg !385
  %12 = load %struct.parsedb_state*, %struct.parsedb_state** %3, align 8, !dbg !386
  %13 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %12, i32 0, i32 3, !dbg !388
  %14 = load %struct.pkginfo*, %struct.pkginfo** %13, align 8, !dbg !388
  %15 = icmp ne %struct.pkginfo* %14, null, !dbg !386
  br i1 %15, label %16, label %43, !dbg !389

; <label>:16:                                     ; preds = %2
  %17 = load %struct.parsedb_state*, %struct.parsedb_state** %3, align 8, !dbg !390
  %18 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %17, i32 0, i32 3, !dbg !392
  %19 = load %struct.pkginfo*, %struct.pkginfo** %18, align 8, !dbg !392
  %20 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %19, i32 0, i32 0, !dbg !393
  %21 = load %struct.pkgset*, %struct.pkgset** %20, align 8, !dbg !393
  %22 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %21, i32 0, i32 1, !dbg !394
  %23 = load i8*, i8** %22, align 8, !dbg !394
  %24 = icmp ne i8* %23, null, !dbg !390
  br i1 %24, label %25, label %43, !dbg !395

; <label>:25:                                     ; preds = %16
  call void @llvm.dbg.declare(metadata [256 x i8]* %6, metadata !396, metadata !346), !dbg !398
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0, !dbg !399
  %27 = load %struct.parsedb_state*, %struct.parsedb_state** %3, align 8, !dbg !400
  %28 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %27, i32 0, i32 3, !dbg !401
  %29 = load %struct.pkginfo*, %struct.pkginfo** %28, align 8, !dbg !401
  %30 = load %struct.parsedb_state*, %struct.parsedb_state** %3, align 8, !dbg !402
  %31 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %30, i32 0, i32 4, !dbg !403
  %32 = load %struct.pkgbin*, %struct.pkgbin** %31, align 8, !dbg !403
  %33 = call i8* @pkgbin_name(%struct.pkginfo* %29, %struct.pkgbin* %32, i32 1), !dbg !404
  %34 = call i8* @str_escape_fmt(i8* %26, i8* %33, i64 256), !dbg !405
  %35 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.27, i32 0, i32 0)) #2, !dbg !407
  %36 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i32 0, i32 0, !dbg !408
  %37 = load %struct.parsedb_state*, %struct.parsedb_state** %3, align 8, !dbg !409
  %38 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %37, i32 0, i32 10, !dbg !410
  %39 = load i32, i32* %38, align 4, !dbg !410
  %40 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0, !dbg !411
  %41 = load i8*, i8** %4, align 8, !dbg !412
  %42 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @parse_error_msg.msg, i32 0, i32 0), i8* %35, i8* %36, i32 %39, i8* %40, i8* %41) #2, !dbg !413
  br label %51, !dbg !414

; <label>:43:                                     ; preds = %16, %2
  %44 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.28, i32 0, i32 0)) #2, !dbg !415
  %45 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i32 0, i32 0, !dbg !416
  %46 = load %struct.parsedb_state*, %struct.parsedb_state** %3, align 8, !dbg !417
  %47 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %46, i32 0, i32 10, !dbg !418
  %48 = load i32, i32* %47, align 4, !dbg !418
  %49 = load i8*, i8** %4, align 8, !dbg !419
  %50 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @parse_error_msg.msg, i32 0, i32 0), i8* %44, i8* %45, i32 %48, i8* %49) #2, !dbg !420
  br label %51

; <label>:51:                                     ; preds = %43, %25
  ret i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @parse_error_msg.msg, i32 0, i32 0), !dbg !421
}

; Function Attrs: nounwind uwtable
define void @parse_warn(%struct.parsedb_state*, i8*, ...) #4 !dbg !422 {
  %3 = alloca %struct.parsedb_state*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.parsedb_state* %0, %struct.parsedb_state** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.parsedb_state** %3, metadata !423, metadata !346), !dbg !424
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !425, metadata !346), !dbg !426
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !427, metadata !346), !dbg !428
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !429
  %7 = bitcast %struct.__va_list_tag* %6 to i8*, !dbg !429
  call void @llvm.va_start(i8* %7), !dbg !429
  %8 = load %struct.parsedb_state*, %struct.parsedb_state** %3, align 8, !dbg !430
  %9 = load i8*, i8** %4, align 8, !dbg !431
  %10 = call i8* @parse_error_msg(%struct.parsedb_state* %8, i8* %9), !dbg !432
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !433
  call void @warningv(i8* %10, %struct.__va_list_tag* %11), !dbg !434
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !436
  %13 = bitcast %struct.__va_list_tag* %12 to i8*, !dbg !436
  call void @llvm.va_end(i8* %13), !dbg !436
  ret void, !dbg !437
}

declare void @warningv(i8*, %struct.__va_list_tag*) #5

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

; Function Attrs: nounwind uwtable
define void @parse_problem(%struct.parsedb_state*, i8*, ...) #4 !dbg !438 {
  %3 = alloca %struct.parsedb_state*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  %6 = alloca i8*, align 8
  store %struct.parsedb_state* %0, %struct.parsedb_state** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.parsedb_state** %3, metadata !439, metadata !346), !dbg !440
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !441, metadata !346), !dbg !442
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !443, metadata !346), !dbg !444
  call void @llvm.dbg.declare(metadata i8** %6, metadata !445, metadata !346), !dbg !446
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !447
  %8 = bitcast %struct.__va_list_tag* %7 to i8*, !dbg !447
  call void @llvm.va_start(i8* %8), !dbg !447
  %9 = load %struct.parsedb_state*, %struct.parsedb_state** %3, align 8, !dbg !448
  %10 = load i8*, i8** %4, align 8, !dbg !449
  %11 = call i8* @parse_error_msg(%struct.parsedb_state* %9, i8* %10), !dbg !450
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !451
  %13 = call i32 @m_vasprintf(i8** %6, i8* %11, %struct.__va_list_tag* %12), !dbg !452
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !454
  %15 = bitcast %struct.__va_list_tag* %14 to i8*, !dbg !454
  call void @llvm.va_end(i8* %15), !dbg !454
  %16 = load %struct.parsedb_state*, %struct.parsedb_state** %3, align 8, !dbg !455
  %17 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %16, i32 0, i32 2, !dbg !457
  %18 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %17, i32 0, i32 0, !dbg !458
  %19 = load i32, i32* %18, align 8, !dbg !458
  %20 = icmp eq i32 %19, 1, !dbg !459
  br i1 %20, label %21, label %27, !dbg !460

; <label>:21:                                     ; preds = %2
  %22 = load i8*, i8** %6, align 8, !dbg !461
  %23 = load %struct.parsedb_state*, %struct.parsedb_state** %3, align 8, !dbg !462
  %24 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %23, i32 0, i32 2, !dbg !463
  %25 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %24, i32 0, i32 2, !dbg !464
  %26 = load i8*, i8** %25, align 8, !dbg !464
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* %22, i8* %26), !dbg !465
  br label %33, !dbg !465

; <label>:27:                                     ; preds = %2
  %28 = load i8*, i8** %6, align 8, !dbg !466
  %29 = load %struct.parsedb_state*, %struct.parsedb_state** %3, align 8, !dbg !467
  %30 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %29, i32 0, i32 2, !dbg !468
  %31 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %30, i32 0, i32 2, !dbg !469
  %32 = load i8*, i8** %31, align 8, !dbg !469
  call void (i8*, ...) @ohshit(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* %28, i8* %32) #10, !dbg !470
  unreachable, !dbg !470

; <label>:33:                                     ; preds = %21
  %34 = load i8*, i8** %6, align 8, !dbg !471
  call void @free(i8* %34) #2, !dbg !472
  ret void, !dbg !473
}

declare i32 @m_vasprintf(i8**, i8*, %struct.__va_list_tag*) #5

declare void @warning(i8*, ...) #5

; Function Attrs: noreturn
declare void @ohshit(i8*, ...) #3

; Function Attrs: nounwind
declare void @free(i8*) #6

; Function Attrs: nounwind uwtable
define %struct.fieldinfo* @find_field_info(%struct.fieldinfo*, i8*) #4 !dbg !474 {
  %3 = alloca %struct.fieldinfo*, align 8
  %4 = alloca %struct.fieldinfo*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.fieldinfo*, align 8
  store %struct.fieldinfo* %0, %struct.fieldinfo** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.fieldinfo** %4, metadata !499, metadata !346), !dbg !500
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !501, metadata !346), !dbg !502
  call void @llvm.dbg.declare(metadata %struct.fieldinfo** %6, metadata !503, metadata !346), !dbg !504
  %7 = load %struct.fieldinfo*, %struct.fieldinfo** %4, align 8, !dbg !505
  store %struct.fieldinfo* %7, %struct.fieldinfo** %6, align 8, !dbg !507
  br label %8, !dbg !508

; <label>:8:                                      ; preds = %23, %2
  %9 = load %struct.fieldinfo*, %struct.fieldinfo** %6, align 8, !dbg !509
  %10 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %9, i32 0, i32 0, !dbg !512
  %11 = load i8*, i8** %10, align 8, !dbg !512
  %12 = icmp ne i8* %11, null, !dbg !513
  br i1 %12, label %13, label %26, !dbg !513

; <label>:13:                                     ; preds = %8
  %14 = load %struct.fieldinfo*, %struct.fieldinfo** %6, align 8, !dbg !514
  %15 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %14, i32 0, i32 0, !dbg !516
  %16 = load i8*, i8** %15, align 8, !dbg !516
  %17 = load i8*, i8** %5, align 8, !dbg !517
  %18 = call i32 @strcasecmp(i8* %16, i8* %17) #11, !dbg !518
  %19 = icmp eq i32 %18, 0, !dbg !519
  br i1 %19, label %20, label %22, !dbg !520

; <label>:20:                                     ; preds = %13
  %21 = load %struct.fieldinfo*, %struct.fieldinfo** %6, align 8, !dbg !521
  store %struct.fieldinfo* %21, %struct.fieldinfo** %3, align 8, !dbg !522
  br label %27, !dbg !522

; <label>:22:                                     ; preds = %13
  br label %23, !dbg !523

; <label>:23:                                     ; preds = %22
  %24 = load %struct.fieldinfo*, %struct.fieldinfo** %6, align 8, !dbg !525
  %25 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %24, i32 1, !dbg !525
  store %struct.fieldinfo* %25, %struct.fieldinfo** %6, align 8, !dbg !525
  br label %8, !dbg !527, !llvm.loop !528

; <label>:26:                                     ; preds = %8
  store %struct.fieldinfo* null, %struct.fieldinfo** %3, align 8, !dbg !530
  br label %27, !dbg !530

; <label>:27:                                     ; preds = %26, %20
  %28 = load %struct.fieldinfo*, %struct.fieldinfo** %3, align 8, !dbg !531
  ret %struct.fieldinfo* %28, !dbg !531
}

; Function Attrs: nounwind readonly
declare i32 @strcasecmp(i8*, i8*) #7

; Function Attrs: nounwind uwtable
define %struct.arbitraryfield* @find_arbfield_info(%struct.arbitraryfield*, i8*) #4 !dbg !532 {
  %3 = alloca %struct.arbitraryfield*, align 8
  %4 = alloca %struct.arbitraryfield*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.arbitraryfield*, align 8
  store %struct.arbitraryfield* %0, %struct.arbitraryfield** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.arbitraryfield** %4, metadata !537, metadata !346), !dbg !538
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !539, metadata !346), !dbg !540
  call void @llvm.dbg.declare(metadata %struct.arbitraryfield** %6, metadata !541, metadata !346), !dbg !542
  %7 = load %struct.arbitraryfield*, %struct.arbitraryfield** %4, align 8, !dbg !543
  store %struct.arbitraryfield* %7, %struct.arbitraryfield** %6, align 8, !dbg !545
  br label %8, !dbg !546

; <label>:8:                                      ; preds = %21, %2
  %9 = load %struct.arbitraryfield*, %struct.arbitraryfield** %6, align 8, !dbg !547
  %10 = icmp ne %struct.arbitraryfield* %9, null, !dbg !550
  br i1 %10, label %11, label %25, !dbg !550

; <label>:11:                                     ; preds = %8
  %12 = load %struct.arbitraryfield*, %struct.arbitraryfield** %6, align 8, !dbg !551
  %13 = getelementptr inbounds %struct.arbitraryfield, %struct.arbitraryfield* %12, i32 0, i32 1, !dbg !553
  %14 = load i8*, i8** %13, align 8, !dbg !553
  %15 = load i8*, i8** %5, align 8, !dbg !554
  %16 = call i32 @strcasecmp(i8* %14, i8* %15) #11, !dbg !555
  %17 = icmp eq i32 %16, 0, !dbg !556
  br i1 %17, label %18, label %20, !dbg !557

; <label>:18:                                     ; preds = %11
  %19 = load %struct.arbitraryfield*, %struct.arbitraryfield** %6, align 8, !dbg !558
  store %struct.arbitraryfield* %19, %struct.arbitraryfield** %3, align 8, !dbg !559
  br label %26, !dbg !559

; <label>:20:                                     ; preds = %11
  br label %21, !dbg !560

; <label>:21:                                     ; preds = %20
  %22 = load %struct.arbitraryfield*, %struct.arbitraryfield** %6, align 8, !dbg !562
  %23 = getelementptr inbounds %struct.arbitraryfield, %struct.arbitraryfield* %22, i32 0, i32 0, !dbg !564
  %24 = load %struct.arbitraryfield*, %struct.arbitraryfield** %23, align 8, !dbg !564
  store %struct.arbitraryfield* %24, %struct.arbitraryfield** %6, align 8, !dbg !565
  br label %8, !dbg !566, !llvm.loop !567

; <label>:25:                                     ; preds = %8
  store %struct.arbitraryfield* null, %struct.arbitraryfield** %3, align 8, !dbg !569
  br label %26, !dbg !569

; <label>:26:                                     ; preds = %25, %18
  %27 = load %struct.arbitraryfield*, %struct.arbitraryfield** %3, align 8, !dbg !570
  ret %struct.arbitraryfield* %27, !dbg !570
}

; Function Attrs: nounwind uwtable
define i8* @pkg_name_is_illegal(i8*) #4 !dbg !132 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !571, metadata !346), !dbg !572
  call void @llvm.dbg.declare(metadata i32* %4, metadata !573, metadata !346), !dbg !574
  %5 = load i8*, i8** %3, align 8, !dbg !575
  %6 = load i8, i8* %5, align 1, !dbg !577
  %7 = icmp ne i8 %6, 0, !dbg !577
  br i1 %7, label %10, label %8, !dbg !578

; <label>:8:                                      ; preds = %1
  %9 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0)) #2, !dbg !579
  store i8* %9, i8** %2, align 8, !dbg !581
  br label %41, !dbg !581

; <label>:10:                                     ; preds = %1
  %11 = load i8*, i8** %3, align 8, !dbg !582
  %12 = load i8, i8* %11, align 1, !dbg !584
  %13 = sext i8 %12 to i32, !dbg !584
  %14 = call zeroext i1 @c_isalnum(i32 %13), !dbg !585
  br i1 %14, label %17, label %15, !dbg !586

; <label>:15:                                     ; preds = %10
  %16 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i32 0, i32 0)) #2, !dbg !587
  store i8* %16, i8** %2, align 8, !dbg !588
  br label %41, !dbg !588

; <label>:17:                                     ; preds = %10
  br label %18, !dbg !589

; <label>:18:                                     ; preds = %32, %17
  %19 = load i8*, i8** %3, align 8, !dbg !590
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !590
  store i8* %20, i8** %3, align 8, !dbg !590
  %21 = load i8, i8* %19, align 1, !dbg !592
  %22 = sext i8 %21 to i32, !dbg !592
  store i32 %22, i32* %4, align 4, !dbg !593
  %23 = icmp ne i32 %22, 0, !dbg !594
  br i1 %23, label %24, label %33, !dbg !595

; <label>:24:                                     ; preds = %18
  %25 = load i32, i32* %4, align 4, !dbg !596
  %26 = call zeroext i1 @c_isalnum(i32 %25), !dbg !598
  br i1 %26, label %32, label %27, !dbg !599

; <label>:27:                                     ; preds = %24
  %28 = load i32, i32* %4, align 4, !dbg !600
  %29 = call i8* @strchr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @pkg_name_is_illegal.alsoallowed, i32 0, i32 0), i32 %28) #11, !dbg !602
  %30 = icmp ne i8* %29, null, !dbg !602
  br i1 %30, label %32, label %31, !dbg !603

; <label>:31:                                     ; preds = %27
  br label %33, !dbg !604

; <label>:32:                                     ; preds = %27, %24
  br label %18, !dbg !605, !llvm.loop !607

; <label>:33:                                     ; preds = %31, %18
  %34 = load i32, i32* %4, align 4, !dbg !608
  %35 = icmp ne i32 %34, 0, !dbg !608
  br i1 %35, label %37, label %36, !dbg !610

; <label>:36:                                     ; preds = %33
  store i8* null, i8** %2, align 8, !dbg !611
  br label %41, !dbg !611

; <label>:37:                                     ; preds = %33
  %38 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.4, i32 0, i32 0)) #2, !dbg !613
  %39 = load i32, i32* %4, align 4, !dbg !614
  %40 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([150 x i8], [150 x i8]* @pkg_name_is_illegal.buf, i32 0, i32 0), i64 150, i8* %38, i32 %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @pkg_name_is_illegal.alsoallowed, i32 0, i32 0)) #2, !dbg !615
  store i8* getelementptr inbounds ([150 x i8], [150 x i8]* @pkg_name_is_illegal.buf, i32 0, i32 0), i8** %2, align 8, !dbg !616
  br label %41, !dbg !616

; <label>:41:                                     ; preds = %37, %36, %15, %8
  %42 = load i8*, i8** %2, align 8, !dbg !617
  ret i8* %42, !dbg !617
}

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #6

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @c_isalnum(i32) #8 !dbg !618 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !621, metadata !346), !dbg !622
  %3 = load i32, i32* %2, align 4, !dbg !623
  %4 = call zeroext i1 @c_isbits(i32 %3, i32 56), !dbg !624
  ret i1 %4, !dbg !625
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #7

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #6

; Function Attrs: nounwind uwtable
define void @varbufversion(%struct.varbuf*, %struct.dpkg_version*, i32) #4 !dbg !626 {
  %4 = alloca %struct.varbuf*, align 8
  %5 = alloca %struct.dpkg_version*, align 8
  %6 = alloca i32, align 4
  store %struct.varbuf* %0, %struct.varbuf** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %4, metadata !629, metadata !346), !dbg !630
  store %struct.dpkg_version* %1, %struct.dpkg_version** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.dpkg_version** %5, metadata !631, metadata !346), !dbg !632
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !633, metadata !346), !dbg !634
  %7 = load i32, i32* %6, align 4, !dbg !635
  switch i32 %7, label %44 [
    i32 0, label %8
    i32 1, label %9
    i32 2, label %38
  ], !dbg !636

; <label>:8:                                      ; preds = %3
  br label %46, !dbg !637

; <label>:9:                                      ; preds = %3
  %10 = load %struct.dpkg_version*, %struct.dpkg_version** %5, align 8, !dbg !639
  %11 = getelementptr inbounds %struct.dpkg_version, %struct.dpkg_version* %10, i32 0, i32 0, !dbg !641
  %12 = load i32, i32* %11, align 8, !dbg !641
  %13 = icmp ne i32 %12, 0, !dbg !639
  br i1 %13, label %37, label %14, !dbg !642

; <label>:14:                                     ; preds = %9
  %15 = load %struct.dpkg_version*, %struct.dpkg_version** %5, align 8, !dbg !643
  %16 = getelementptr inbounds %struct.dpkg_version, %struct.dpkg_version* %15, i32 0, i32 1, !dbg !644
  %17 = load i8*, i8** %16, align 8, !dbg !644
  %18 = icmp ne i8* %17, null, !dbg !643
  br i1 %18, label %19, label %25, !dbg !645

; <label>:19:                                     ; preds = %14
  %20 = load %struct.dpkg_version*, %struct.dpkg_version** %5, align 8, !dbg !646
  %21 = getelementptr inbounds %struct.dpkg_version, %struct.dpkg_version* %20, i32 0, i32 1, !dbg !648
  %22 = load i8*, i8** %21, align 8, !dbg !648
  %23 = call i8* @strchr(i8* %22, i32 58) #11, !dbg !649
  %24 = icmp ne i8* %23, null, !dbg !649
  br i1 %24, label %37, label %25, !dbg !650

; <label>:25:                                     ; preds = %19, %14
  %26 = load %struct.dpkg_version*, %struct.dpkg_version** %5, align 8, !dbg !651
  %27 = getelementptr inbounds %struct.dpkg_version, %struct.dpkg_version* %26, i32 0, i32 2, !dbg !652
  %28 = load i8*, i8** %27, align 8, !dbg !652
  %29 = icmp ne i8* %28, null, !dbg !651
  br i1 %29, label %30, label %36, !dbg !653

; <label>:30:                                     ; preds = %25
  %31 = load %struct.dpkg_version*, %struct.dpkg_version** %5, align 8, !dbg !654
  %32 = getelementptr inbounds %struct.dpkg_version, %struct.dpkg_version* %31, i32 0, i32 2, !dbg !655
  %33 = load i8*, i8** %32, align 8, !dbg !655
  %34 = call i8* @strchr(i8* %33, i32 58) #11, !dbg !656
  %35 = icmp ne i8* %34, null, !dbg !656
  br i1 %35, label %37, label %36, !dbg !657

; <label>:36:                                     ; preds = %30, %25
  br label %46, !dbg !659

; <label>:37:                                     ; preds = %30, %19, %9
  br label %38, !dbg !661

; <label>:38:                                     ; preds = %3, %37
  %39 = load %struct.varbuf*, %struct.varbuf** %4, align 8, !dbg !663
  %40 = load %struct.dpkg_version*, %struct.dpkg_version** %5, align 8, !dbg !664
  %41 = getelementptr inbounds %struct.dpkg_version, %struct.dpkg_version* %40, i32 0, i32 0, !dbg !665
  %42 = load i32, i32* %41, align 8, !dbg !665
  %43 = call i32 (%struct.varbuf*, i8*, ...) @varbuf_printf(%struct.varbuf* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 %42), !dbg !666
  br label %46, !dbg !667

; <label>:44:                                     ; preds = %3
  %45 = load i32, i32* %6, align 4, !dbg !668
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i32 161, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.varbufversion, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i32 0, i32 0), i32 %45) #10, !dbg !669
  unreachable, !dbg !669

; <label>:46:                                     ; preds = %38, %36, %8
  %47 = load %struct.dpkg_version*, %struct.dpkg_version** %5, align 8, !dbg !670
  %48 = getelementptr inbounds %struct.dpkg_version, %struct.dpkg_version* %47, i32 0, i32 1, !dbg !672
  %49 = load i8*, i8** %48, align 8, !dbg !672
  %50 = icmp ne i8* %49, null, !dbg !670
  br i1 %50, label %51, label %60, !dbg !673

; <label>:51:                                     ; preds = %46
  %52 = load %struct.varbuf*, %struct.varbuf** %4, align 8, !dbg !674
  %53 = load %struct.dpkg_version*, %struct.dpkg_version** %5, align 8, !dbg !675
  %54 = getelementptr inbounds %struct.dpkg_version, %struct.dpkg_version* %53, i32 0, i32 1, !dbg !676
  %55 = load i8*, i8** %54, align 8, !dbg !676
  %56 = load %struct.dpkg_version*, %struct.dpkg_version** %5, align 8, !dbg !677
  %57 = getelementptr inbounds %struct.dpkg_version, %struct.dpkg_version* %56, i32 0, i32 1, !dbg !678
  %58 = load i8*, i8** %57, align 8, !dbg !678
  %59 = call i64 @strlen(i8* %58) #11, !dbg !679
  call void @varbuf_add_buf(%struct.varbuf* %52, i8* %55, i64 %59), !dbg !680
  br label %60, !dbg !682

; <label>:60:                                     ; preds = %51, %46
  %61 = load %struct.dpkg_version*, %struct.dpkg_version** %5, align 8, !dbg !683
  %62 = getelementptr inbounds %struct.dpkg_version, %struct.dpkg_version* %61, i32 0, i32 2, !dbg !685
  %63 = load i8*, i8** %62, align 8, !dbg !685
  %64 = call zeroext i1 @str_is_set(i8* %63), !dbg !686
  br i1 %64, label %65, label %75, !dbg !687

; <label>:65:                                     ; preds = %60
  %66 = load %struct.varbuf*, %struct.varbuf** %4, align 8, !dbg !688
  call void @varbuf_add_char(%struct.varbuf* %66, i32 45), !dbg !690
  %67 = load %struct.varbuf*, %struct.varbuf** %4, align 8, !dbg !691
  %68 = load %struct.dpkg_version*, %struct.dpkg_version** %5, align 8, !dbg !692
  %69 = getelementptr inbounds %struct.dpkg_version, %struct.dpkg_version* %68, i32 0, i32 2, !dbg !693
  %70 = load i8*, i8** %69, align 8, !dbg !693
  %71 = load %struct.dpkg_version*, %struct.dpkg_version** %5, align 8, !dbg !694
  %72 = getelementptr inbounds %struct.dpkg_version, %struct.dpkg_version* %71, i32 0, i32 2, !dbg !695
  %73 = load i8*, i8** %72, align 8, !dbg !695
  %74 = call i64 @strlen(i8* %73) #11, !dbg !696
  call void @varbuf_add_buf(%struct.varbuf* %67, i8* %70, i64 %74), !dbg !697
  br label %75, !dbg !699

; <label>:75:                                     ; preds = %65, %60
  ret void, !dbg !700
}

declare i32 @varbuf_printf(%struct.varbuf*, i8*, ...) #5

; Function Attrs: noreturn
declare void @do_internerr(i8*, i32, i8*, i8*, ...) #3

declare void @varbuf_add_buf(%struct.varbuf*, i8*, i64) #5

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #7

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @str_is_set(i8*) #8 !dbg !701 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !705, metadata !346), !dbg !706
  %3 = load i8*, i8** %2, align 8, !dbg !707
  %4 = icmp ne i8* %3, null, !dbg !708
  br i1 %4, label %5, label %11, !dbg !709

; <label>:5:                                      ; preds = %1
  %6 = load i8*, i8** %2, align 8, !dbg !710
  %7 = getelementptr inbounds i8, i8* %6, i64 0, !dbg !710
  %8 = load i8, i8* %7, align 1, !dbg !710
  %9 = sext i8 %8 to i32, !dbg !710
  %10 = icmp ne i32 %9, 0, !dbg !712
  br label %11

; <label>:11:                                     ; preds = %5, %1
  %12 = phi i1 [ false, %1 ], [ %10, %5 ]
  ret i1 %12, !dbg !713
}

declare void @varbuf_add_char(%struct.varbuf*, i32) #5

; Function Attrs: nounwind uwtable
define i8* @versiondescribe(%struct.dpkg_version*, i32) #4 !dbg !148 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dpkg_version*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.varbuf*, align 8
  store %struct.dpkg_version* %0, %struct.dpkg_version** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.dpkg_version** %4, metadata !715, metadata !346), !dbg !716
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !717, metadata !346), !dbg !718
  call void @llvm.dbg.declare(metadata %struct.varbuf** %6, metadata !719, metadata !346), !dbg !720
  %7 = load %struct.dpkg_version*, %struct.dpkg_version** %4, align 8, !dbg !721
  %8 = call zeroext i1 @dpkg_version_is_informative(%struct.dpkg_version* %7), !dbg !723
  br i1 %8, label %11, label %9, !dbg !724

; <label>:9:                                      ; preds = %2
  %10 = call i8* @pgettext_aux(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i32 5), !dbg !725
  store i8* %10, i8** %3, align 8, !dbg !726
  br label %29, !dbg !726

; <label>:11:                                     ; preds = %2
  %12 = load i32, i32* @versiondescribe.bufnum, align 4, !dbg !727
  %13 = sext i32 %12 to i64, !dbg !728
  %14 = getelementptr inbounds [10 x %struct.varbuf], [10 x %struct.varbuf]* @versiondescribe.bufs, i64 0, i64 %13, !dbg !728
  store %struct.varbuf* %14, %struct.varbuf** %6, align 8, !dbg !729
  %15 = load i32, i32* @versiondescribe.bufnum, align 4, !dbg !730
  %16 = add nsw i32 %15, 1, !dbg !730
  store i32 %16, i32* @versiondescribe.bufnum, align 4, !dbg !730
  %17 = load i32, i32* @versiondescribe.bufnum, align 4, !dbg !731
  %18 = icmp eq i32 %17, 10, !dbg !733
  br i1 %18, label %19, label %20, !dbg !734

; <label>:19:                                     ; preds = %11
  store i32 0, i32* @versiondescribe.bufnum, align 4, !dbg !735
  br label %20, !dbg !737

; <label>:20:                                     ; preds = %19, %11
  %21 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !738
  call void @varbuf_reset(%struct.varbuf* %21), !dbg !739
  %22 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !740
  %23 = load %struct.dpkg_version*, %struct.dpkg_version** %4, align 8, !dbg !741
  %24 = load i32, i32* %5, align 4, !dbg !742
  call void @varbufversion(%struct.varbuf* %22, %struct.dpkg_version* %23, i32 %24), !dbg !743
  %25 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !744
  call void @varbuf_end_str(%struct.varbuf* %25), !dbg !745
  %26 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !746
  %27 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %26, i32 0, i32 2, !dbg !747
  %28 = load i8*, i8** %27, align 8, !dbg !747
  store i8* %28, i8** %3, align 8, !dbg !748
  br label %29, !dbg !748

; <label>:29:                                     ; preds = %20, %9
  %30 = load i8*, i8** %3, align 8, !dbg !749
  ret i8* %30, !dbg !749
}

declare zeroext i1 @dpkg_version_is_informative(%struct.dpkg_version*) #5

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @pgettext_aux(i8*, i8*, i8*, i32) #8 !dbg !750 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !754, metadata !346), !dbg !755
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !756, metadata !346), !dbg !757
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !758, metadata !346), !dbg !759
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !760, metadata !346), !dbg !761
  call void @llvm.dbg.declare(metadata i8** %10, metadata !762, metadata !346), !dbg !763
  %11 = load i8*, i8** %6, align 8, !dbg !764
  %12 = load i8*, i8** %7, align 8, !dbg !765
  %13 = load i32, i32* %9, align 4, !dbg !766
  %14 = call i8* @dcgettext(i8* %11, i8* %12, i32 %13) #2, !dbg !767
  store i8* %14, i8** %10, align 8, !dbg !763
  %15 = load i8*, i8** %10, align 8, !dbg !768
  %16 = load i8*, i8** %7, align 8, !dbg !770
  %17 = icmp eq i8* %15, %16, !dbg !771
  br i1 %17, label %18, label %20, !dbg !772

; <label>:18:                                     ; preds = %4
  %19 = load i8*, i8** %8, align 8, !dbg !773
  store i8* %19, i8** %5, align 8, !dbg !774
  br label %22, !dbg !774

; <label>:20:                                     ; preds = %4
  %21 = load i8*, i8** %10, align 8, !dbg !775
  store i8* %21, i8** %5, align 8, !dbg !776
  br label %22, !dbg !776

; <label>:22:                                     ; preds = %20, %18
  %23 = load i8*, i8** %5, align 8, !dbg !777
  ret i8* %23, !dbg !777
}

declare void @varbuf_reset(%struct.varbuf*) #5

declare void @varbuf_end_str(%struct.varbuf*) #5

; Function Attrs: nounwind uwtable
define i32 @parseversion(%struct.dpkg_version*, i8*, %struct.dpkg_error*) #4 !dbg !778 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dpkg_version*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dpkg_error*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.dpkg_version* %0, %struct.dpkg_version** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.dpkg_version** %5, metadata !783, metadata !346), !dbg !784
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !785, metadata !346), !dbg !786
  store %struct.dpkg_error* %2, %struct.dpkg_error** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.dpkg_error** %7, metadata !787, metadata !346), !dbg !788
  call void @llvm.dbg.declare(metadata i8** %8, metadata !789, metadata !346), !dbg !790
  call void @llvm.dbg.declare(metadata i8** %9, metadata !791, metadata !346), !dbg !792
  call void @llvm.dbg.declare(metadata i8** %10, metadata !793, metadata !346), !dbg !794
  call void @llvm.dbg.declare(metadata i8** %11, metadata !795, metadata !346), !dbg !796
  call void @llvm.dbg.declare(metadata i8** %12, metadata !797, metadata !346), !dbg !798
  br label %14, !dbg !799

; <label>:14:                                     ; preds = %26, %3
  %15 = load i8*, i8** %6, align 8, !dbg !800
  %16 = load i8, i8* %15, align 1, !dbg !802
  %17 = sext i8 %16 to i32, !dbg !802
  %18 = icmp ne i32 %17, 0, !dbg !802
  br i1 %18, label %19, label %24, !dbg !803

; <label>:19:                                     ; preds = %14
  %20 = load i8*, i8** %6, align 8, !dbg !804
  %21 = load i8, i8* %20, align 1, !dbg !806
  %22 = sext i8 %21 to i32, !dbg !806
  %23 = call zeroext i1 @c_isblank(i32 %22), !dbg !807
  br label %24

; <label>:24:                                     ; preds = %19, %14
  %25 = phi i1 [ false, %14 ], [ %23, %19 ]
  br i1 %25, label %26, label %29, !dbg !808

; <label>:26:                                     ; preds = %24
  %27 = load i8*, i8** %6, align 8, !dbg !810
  %28 = getelementptr inbounds i8, i8* %27, i32 1, !dbg !810
  store i8* %28, i8** %6, align 8, !dbg !810
  br label %14, !dbg !811, !llvm.loop !813

; <label>:29:                                     ; preds = %24
  %30 = load i8*, i8** %6, align 8, !dbg !814
  %31 = load i8, i8* %30, align 1, !dbg !816
  %32 = icmp ne i8 %31, 0, !dbg !816
  br i1 %32, label %37, label %33, !dbg !817

; <label>:33:                                     ; preds = %29
  %34 = load %struct.dpkg_error*, %struct.dpkg_error** %7, align 8, !dbg !818
  %35 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i32 0, i32 0)) #2, !dbg !819
  %36 = call i32 (%struct.dpkg_error*, i8*, ...) @dpkg_put_error(%struct.dpkg_error* %34, i8* %35), !dbg !820
  store i32 %36, i32* %4, align 4, !dbg !822
  br label %265, !dbg !822

; <label>:37:                                     ; preds = %29
  %38 = load i8*, i8** %6, align 8, !dbg !823
  store i8* %38, i8** %11, align 8, !dbg !824
  br label %39, !dbg !825

; <label>:39:                                     ; preds = %52, %37
  %40 = load i8*, i8** %11, align 8, !dbg !826
  %41 = load i8, i8* %40, align 1, !dbg !827
  %42 = sext i8 %41 to i32, !dbg !827
  %43 = icmp ne i32 %42, 0, !dbg !827
  br i1 %43, label %44, label %50, !dbg !828

; <label>:44:                                     ; preds = %39
  %45 = load i8*, i8** %11, align 8, !dbg !829
  %46 = load i8, i8* %45, align 1, !dbg !830
  %47 = sext i8 %46 to i32, !dbg !830
  %48 = call zeroext i1 @c_isblank(i32 %47), !dbg !831
  %49 = xor i1 %48, true, !dbg !832
  br label %50

; <label>:50:                                     ; preds = %44, %39
  %51 = phi i1 [ false, %39 ], [ %49, %44 ]
  br i1 %51, label %52, label %55, !dbg !833

; <label>:52:                                     ; preds = %50
  %53 = load i8*, i8** %11, align 8, !dbg !834
  %54 = getelementptr inbounds i8, i8* %53, i32 1, !dbg !834
  store i8* %54, i8** %11, align 8, !dbg !834
  br label %39, !dbg !835, !llvm.loop !836

; <label>:55:                                     ; preds = %50
  %56 = load i8*, i8** %11, align 8, !dbg !837
  store i8* %56, i8** %12, align 8, !dbg !838
  br label %57, !dbg !839

; <label>:57:                                     ; preds = %69, %55
  %58 = load i8*, i8** %12, align 8, !dbg !840
  %59 = load i8, i8* %58, align 1, !dbg !841
  %60 = sext i8 %59 to i32, !dbg !841
  %61 = icmp ne i32 %60, 0, !dbg !841
  br i1 %61, label %62, label %67, !dbg !842

; <label>:62:                                     ; preds = %57
  %63 = load i8*, i8** %12, align 8, !dbg !843
  %64 = load i8, i8* %63, align 1, !dbg !844
  %65 = sext i8 %64 to i32, !dbg !844
  %66 = call zeroext i1 @c_isblank(i32 %65), !dbg !845
  br label %67

; <label>:67:                                     ; preds = %62, %57
  %68 = phi i1 [ false, %57 ], [ %66, %62 ]
  br i1 %68, label %69, label %72, !dbg !846

; <label>:69:                                     ; preds = %67
  %70 = load i8*, i8** %12, align 8, !dbg !847
  %71 = getelementptr inbounds i8, i8* %70, i32 1, !dbg !847
  store i8* %71, i8** %12, align 8, !dbg !847
  br label %57, !dbg !848, !llvm.loop !849

; <label>:72:                                     ; preds = %67
  %73 = load i8*, i8** %12, align 8, !dbg !850
  %74 = load i8, i8* %73, align 1, !dbg !852
  %75 = icmp ne i8 %74, 0, !dbg !852
  br i1 %75, label %76, label %80, !dbg !853

; <label>:76:                                     ; preds = %72
  %77 = load %struct.dpkg_error*, %struct.dpkg_error** %7, align 8, !dbg !854
  %78 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i32 0, i32 0)) #2, !dbg !855
  %79 = call i32 (%struct.dpkg_error*, i8*, ...) @dpkg_put_error(%struct.dpkg_error* %77, i8* %78), !dbg !856
  store i32 %79, i32* %4, align 4, !dbg !858
  br label %265, !dbg !858

; <label>:80:                                     ; preds = %72
  %81 = load i8*, i8** %6, align 8, !dbg !859
  %82 = call i8* @strchr(i8* %81, i32 58) #11, !dbg !860
  store i8* %82, i8** %9, align 8, !dbg !861
  %83 = load i8*, i8** %9, align 8, !dbg !862
  %84 = icmp ne i8* %83, null, !dbg !862
  br i1 %84, label %85, label %137, !dbg !864

; <label>:85:                                     ; preds = %80
  call void @llvm.dbg.declare(metadata i64* %13, metadata !865, metadata !346), !dbg !867
  %86 = call i32* @__errno_location() #1, !dbg !868
  store i32 0, i32* %86, align 4, !dbg !869
  %87 = load i8*, i8** %6, align 8, !dbg !870
  %88 = call i64 @strtol(i8* %87, i8** %10, i32 10) #2, !dbg !871
  store i64 %88, i64* %13, align 8, !dbg !872
  %89 = load i8*, i8** %6, align 8, !dbg !873
  %90 = load i8*, i8** %10, align 8, !dbg !875
  %91 = icmp eq i8* %89, %90, !dbg !876
  br i1 %91, label %92, label %96, !dbg !877

; <label>:92:                                     ; preds = %85
  %93 = load %struct.dpkg_error*, %struct.dpkg_error** %7, align 8, !dbg !878
  %94 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i32 0, i32 0)) #2, !dbg !879
  %95 = call i32 (%struct.dpkg_error*, i8*, ...) @dpkg_put_error(%struct.dpkg_error* %93, i8* %94), !dbg !880
  store i32 %95, i32* %4, align 4, !dbg !882
  br label %265, !dbg !882

; <label>:96:                                     ; preds = %85
  %97 = load i8*, i8** %9, align 8, !dbg !883
  %98 = load i8*, i8** %10, align 8, !dbg !885
  %99 = icmp ne i8* %97, %98, !dbg !886
  br i1 %99, label %100, label %104, !dbg !887

; <label>:100:                                    ; preds = %96
  %101 = load %struct.dpkg_error*, %struct.dpkg_error** %7, align 8, !dbg !888
  %102 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0)) #2, !dbg !889
  %103 = call i32 (%struct.dpkg_error*, i8*, ...) @dpkg_put_error(%struct.dpkg_error* %101, i8* %102), !dbg !890
  store i32 %103, i32* %4, align 4, !dbg !892
  br label %265, !dbg !892

; <label>:104:                                    ; preds = %96
  %105 = load i64, i64* %13, align 8, !dbg !893
  %106 = icmp slt i64 %105, 0, !dbg !895
  br i1 %106, label %107, label %111, !dbg !896

; <label>:107:                                    ; preds = %104
  %108 = load %struct.dpkg_error*, %struct.dpkg_error** %7, align 8, !dbg !897
  %109 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0)) #2, !dbg !898
  %110 = call i32 (%struct.dpkg_error*, i8*, ...) @dpkg_put_error(%struct.dpkg_error* %108, i8* %109), !dbg !899
  store i32 %110, i32* %4, align 4, !dbg !901
  br label %265, !dbg !901

; <label>:111:                                    ; preds = %104
  %112 = load i64, i64* %13, align 8, !dbg !902
  %113 = icmp sgt i64 %112, 2147483647, !dbg !904
  br i1 %113, label %118, label %114, !dbg !905

; <label>:114:                                    ; preds = %111
  %115 = call i32* @__errno_location() #1, !dbg !906
  %116 = load i32, i32* %115, align 4, !dbg !908
  %117 = icmp eq i32 %116, 34, !dbg !909
  br i1 %117, label %118, label %122, !dbg !910

; <label>:118:                                    ; preds = %114, %111
  %119 = load %struct.dpkg_error*, %struct.dpkg_error** %7, align 8, !dbg !911
  %120 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i32 0, i32 0)) #2, !dbg !912
  %121 = call i32 (%struct.dpkg_error*, i8*, ...) @dpkg_put_error(%struct.dpkg_error* %119, i8* %120), !dbg !913
  store i32 %121, i32* %4, align 4, !dbg !914
  br label %265, !dbg !914

; <label>:122:                                    ; preds = %114
  %123 = load i8*, i8** %9, align 8, !dbg !915
  %124 = getelementptr inbounds i8, i8* %123, i32 1, !dbg !915
  store i8* %124, i8** %9, align 8, !dbg !915
  %125 = load i8, i8* %124, align 1, !dbg !917
  %126 = icmp ne i8 %125, 0, !dbg !917
  br i1 %126, label %131, label %127, !dbg !918

; <label>:127:                                    ; preds = %122
  %128 = load %struct.dpkg_error*, %struct.dpkg_error** %7, align 8, !dbg !919
  %129 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i32 0, i32 0)) #2, !dbg !920
  %130 = call i32 (%struct.dpkg_error*, i8*, ...) @dpkg_put_error(%struct.dpkg_error* %128, i8* %129), !dbg !921
  store i32 %130, i32* %4, align 4, !dbg !923
  br label %265, !dbg !923

; <label>:131:                                    ; preds = %122
  %132 = load i8*, i8** %9, align 8, !dbg !924
  store i8* %132, i8** %6, align 8, !dbg !925
  %133 = load i64, i64* %13, align 8, !dbg !926
  %134 = trunc i64 %133 to i32, !dbg !926
  %135 = load %struct.dpkg_version*, %struct.dpkg_version** %5, align 8, !dbg !927
  %136 = getelementptr inbounds %struct.dpkg_version, %struct.dpkg_version* %135, i32 0, i32 0, !dbg !928
  store i32 %134, i32* %136, align 8, !dbg !929
  br label %140, !dbg !930

; <label>:137:                                    ; preds = %80
  %138 = load %struct.dpkg_version*, %struct.dpkg_version** %5, align 8, !dbg !931
  %139 = getelementptr inbounds %struct.dpkg_version, %struct.dpkg_version* %138, i32 0, i32 0, !dbg !933
  store i32 0, i32* %139, align 8, !dbg !934
  br label %140

; <label>:140:                                    ; preds = %137, %131
  %141 = load i8*, i8** %6, align 8, !dbg !935
  %142 = load i8*, i8** %11, align 8, !dbg !936
  %143 = load i8*, i8** %6, align 8, !dbg !937
  %144 = ptrtoint i8* %142 to i64, !dbg !938
  %145 = ptrtoint i8* %143 to i64, !dbg !938
  %146 = sub i64 %144, %145, !dbg !938
  %147 = call i8* @nfstrnsave(i8* %141, i64 %146), !dbg !939
  %148 = load %struct.dpkg_version*, %struct.dpkg_version** %5, align 8, !dbg !940
  %149 = getelementptr inbounds %struct.dpkg_version, %struct.dpkg_version* %148, i32 0, i32 1, !dbg !941
  store i8* %147, i8** %149, align 8, !dbg !942
  %150 = load %struct.dpkg_version*, %struct.dpkg_version** %5, align 8, !dbg !943
  %151 = getelementptr inbounds %struct.dpkg_version, %struct.dpkg_version* %150, i32 0, i32 1, !dbg !944
  %152 = load i8*, i8** %151, align 8, !dbg !944
  %153 = call i8* @strrchr(i8* %152, i32 45) #11, !dbg !945
  store i8* %153, i8** %8, align 8, !dbg !946
  %154 = load i8*, i8** %8, align 8, !dbg !947
  %155 = icmp ne i8* %154, null, !dbg !947
  br i1 %155, label %156, label %168, !dbg !949

; <label>:156:                                    ; preds = %140
  %157 = load i8*, i8** %8, align 8, !dbg !950
  %158 = getelementptr inbounds i8, i8* %157, i32 1, !dbg !950
  store i8* %158, i8** %8, align 8, !dbg !950
  store i8 0, i8* %157, align 1, !dbg !952
  %159 = load i8*, i8** %8, align 8, !dbg !953
  %160 = load i8, i8* %159, align 1, !dbg !955
  %161 = sext i8 %160 to i32, !dbg !955
  %162 = icmp eq i32 %161, 0, !dbg !956
  br i1 %162, label %163, label %167, !dbg !957

; <label>:163:                                    ; preds = %156
  %164 = load %struct.dpkg_error*, %struct.dpkg_error** %7, align 8, !dbg !958
  %165 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i32 0, i32 0)) #2, !dbg !959
  %166 = call i32 (%struct.dpkg_error*, i8*, ...) @dpkg_put_error(%struct.dpkg_error* %164, i8* %165), !dbg !960
  store i32 %166, i32* %4, align 4, !dbg !962
  br label %265, !dbg !962

; <label>:167:                                    ; preds = %156
  br label %168, !dbg !963

; <label>:168:                                    ; preds = %167, %140
  %169 = load i8*, i8** %8, align 8, !dbg !964
  %170 = icmp ne i8* %169, null, !dbg !964
  br i1 %170, label %171, label %173, !dbg !964

; <label>:171:                                    ; preds = %168
  %172 = load i8*, i8** %8, align 8, !dbg !965
  br label %174, !dbg !966

; <label>:173:                                    ; preds = %168
  br label %174, !dbg !967

; <label>:174:                                    ; preds = %173, %171
  %175 = phi i8* [ %172, %171 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.18, i32 0, i32 0), %173 ], !dbg !968
  %176 = load %struct.dpkg_version*, %struct.dpkg_version** %5, align 8, !dbg !969
  %177 = getelementptr inbounds %struct.dpkg_version, %struct.dpkg_version* %176, i32 0, i32 2, !dbg !970
  store i8* %175, i8** %177, align 8, !dbg !971
  %178 = load %struct.dpkg_version*, %struct.dpkg_version** %5, align 8, !dbg !972
  %179 = getelementptr inbounds %struct.dpkg_version, %struct.dpkg_version* %178, i32 0, i32 1, !dbg !973
  %180 = load i8*, i8** %179, align 8, !dbg !973
  store i8* %180, i8** %12, align 8, !dbg !974
  %181 = load i8*, i8** %12, align 8, !dbg !975
  %182 = load i8, i8* %181, align 1, !dbg !977
  %183 = icmp ne i8 %182, 0, !dbg !977
  br i1 %183, label %188, label %184, !dbg !978

; <label>:184:                                    ; preds = %174
  %185 = load %struct.dpkg_error*, %struct.dpkg_error** %7, align 8, !dbg !979
  %186 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i32 0, i32 0)) #2, !dbg !980
  %187 = call i32 (%struct.dpkg_error*, i8*, ...) @dpkg_put_error(%struct.dpkg_error* %185, i8* %186), !dbg !981
  store i32 %187, i32* %4, align 4, !dbg !983
  br label %265, !dbg !983

; <label>:188:                                    ; preds = %174
  %189 = load i8*, i8** %12, align 8, !dbg !984
  %190 = load i8, i8* %189, align 1, !dbg !986
  %191 = sext i8 %190 to i32, !dbg !986
  %192 = icmp ne i32 %191, 0, !dbg !986
  br i1 %192, label %193, label %203, !dbg !987

; <label>:193:                                    ; preds = %188
  %194 = load i8*, i8** %12, align 8, !dbg !988
  %195 = getelementptr inbounds i8, i8* %194, i32 1, !dbg !988
  store i8* %195, i8** %12, align 8, !dbg !988
  %196 = load i8, i8* %194, align 1, !dbg !990
  %197 = sext i8 %196 to i32, !dbg !990
  %198 = call zeroext i1 @c_isdigit(i32 %197), !dbg !991
  br i1 %198, label %203, label %199, !dbg !992

; <label>:199:                                    ; preds = %193
  %200 = load %struct.dpkg_error*, %struct.dpkg_error** %7, align 8, !dbg !993
  %201 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.20, i32 0, i32 0)) #2, !dbg !994
  %202 = call i32 (%struct.dpkg_error*, i8*, ...) @dpkg_put_warn(%struct.dpkg_error* %200, i8* %201), !dbg !995
  store i32 %202, i32* %4, align 4, !dbg !996
  br label %265, !dbg !996

; <label>:203:                                    ; preds = %193, %188
  br label %204, !dbg !997

; <label>:204:                                    ; preds = %229, %203
  %205 = load i8*, i8** %12, align 8, !dbg !998
  %206 = load i8, i8* %205, align 1, !dbg !1002
  %207 = icmp ne i8 %206, 0, !dbg !1003
  br i1 %207, label %208, label %232, !dbg !1003

; <label>:208:                                    ; preds = %204
  %209 = load i8*, i8** %12, align 8, !dbg !1004
  %210 = load i8, i8* %209, align 1, !dbg !1007
  %211 = sext i8 %210 to i32, !dbg !1007
  %212 = call zeroext i1 @c_isdigit(i32 %211), !dbg !1008
  br i1 %212, label %228, label %213, !dbg !1009

; <label>:213:                                    ; preds = %208
  %214 = load i8*, i8** %12, align 8, !dbg !1010
  %215 = load i8, i8* %214, align 1, !dbg !1012
  %216 = sext i8 %215 to i32, !dbg !1012
  %217 = call zeroext i1 @c_isalpha(i32 %216), !dbg !1013
  br i1 %217, label %228, label %218, !dbg !1014

; <label>:218:                                    ; preds = %213
  %219 = load i8*, i8** %12, align 8, !dbg !1015
  %220 = load i8, i8* %219, align 1, !dbg !1017
  %221 = sext i8 %220 to i32, !dbg !1017
  %222 = call i8* @strchr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 %221) #11, !dbg !1018
  %223 = icmp eq i8* %222, null, !dbg !1019
  br i1 %223, label %224, label %228, !dbg !1020

; <label>:224:                                    ; preds = %218
  %225 = load %struct.dpkg_error*, %struct.dpkg_error** %7, align 8, !dbg !1021
  %226 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.22, i32 0, i32 0)) #2, !dbg !1022
  %227 = call i32 (%struct.dpkg_error*, i8*, ...) @dpkg_put_warn(%struct.dpkg_error* %225, i8* %226), !dbg !1023
  store i32 %227, i32* %4, align 4, !dbg !1024
  br label %265, !dbg !1024

; <label>:228:                                    ; preds = %218, %213, %208
  br label %229, !dbg !1025

; <label>:229:                                    ; preds = %228
  %230 = load i8*, i8** %12, align 8, !dbg !1026
  %231 = getelementptr inbounds i8, i8* %230, i32 1, !dbg !1026
  store i8* %231, i8** %12, align 8, !dbg !1026
  br label %204, !dbg !1028, !llvm.loop !1029

; <label>:232:                                    ; preds = %204
  %233 = load %struct.dpkg_version*, %struct.dpkg_version** %5, align 8, !dbg !1030
  %234 = getelementptr inbounds %struct.dpkg_version, %struct.dpkg_version* %233, i32 0, i32 2, !dbg !1032
  %235 = load i8*, i8** %234, align 8, !dbg !1032
  store i8* %235, i8** %12, align 8, !dbg !1033
  br label %236, !dbg !1034

; <label>:236:                                    ; preds = %261, %232
  %237 = load i8*, i8** %12, align 8, !dbg !1035
  %238 = load i8, i8* %237, align 1, !dbg !1038
  %239 = icmp ne i8 %238, 0, !dbg !1039
  br i1 %239, label %240, label %264, !dbg !1039

; <label>:240:                                    ; preds = %236
  %241 = load i8*, i8** %12, align 8, !dbg !1040
  %242 = load i8, i8* %241, align 1, !dbg !1043
  %243 = sext i8 %242 to i32, !dbg !1043
  %244 = call zeroext i1 @c_isdigit(i32 %243), !dbg !1044
  br i1 %244, label %260, label %245, !dbg !1045

; <label>:245:                                    ; preds = %240
  %246 = load i8*, i8** %12, align 8, !dbg !1046
  %247 = load i8, i8* %246, align 1, !dbg !1048
  %248 = sext i8 %247 to i32, !dbg !1048
  %249 = call zeroext i1 @c_isalpha(i32 %248), !dbg !1049
  br i1 %249, label %260, label %250, !dbg !1050

; <label>:250:                                    ; preds = %245
  %251 = load i8*, i8** %12, align 8, !dbg !1051
  %252 = load i8, i8* %251, align 1, !dbg !1053
  %253 = sext i8 %252 to i32, !dbg !1053
  %254 = call i8* @strchr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), i32 %253) #11, !dbg !1054
  %255 = icmp eq i8* %254, null, !dbg !1055
  br i1 %255, label %256, label %260, !dbg !1056

; <label>:256:                                    ; preds = %250
  %257 = load %struct.dpkg_error*, %struct.dpkg_error** %7, align 8, !dbg !1057
  %258 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.24, i32 0, i32 0)) #2, !dbg !1058
  %259 = call i32 (%struct.dpkg_error*, i8*, ...) @dpkg_put_warn(%struct.dpkg_error* %257, i8* %258), !dbg !1059
  store i32 %259, i32* %4, align 4, !dbg !1060
  br label %265, !dbg !1060

; <label>:260:                                    ; preds = %250, %245, %240
  br label %261, !dbg !1061

; <label>:261:                                    ; preds = %260
  %262 = load i8*, i8** %12, align 8, !dbg !1062
  %263 = getelementptr inbounds i8, i8* %262, i32 1, !dbg !1062
  store i8* %263, i8** %12, align 8, !dbg !1062
  br label %236, !dbg !1064, !llvm.loop !1065

; <label>:264:                                    ; preds = %236
  store i32 0, i32* %4, align 4, !dbg !1067
  br label %265, !dbg !1067

; <label>:265:                                    ; preds = %264, %256, %224, %199, %184, %163, %127, %118, %107, %100, %92, %76, %33
  %266 = load i32, i32* %4, align 4, !dbg !1068
  ret i32 %266, !dbg !1068
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @c_isblank(i32) #8 !dbg !1069 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1070, metadata !346), !dbg !1071
  %3 = load i32, i32* %2, align 4, !dbg !1072
  %4 = call zeroext i1 @c_isbits(i32 %3, i32 1), !dbg !1073
  ret i1 %4, !dbg !1074
}

declare i32 @dpkg_put_error(%struct.dpkg_error*, i8*, ...) #5

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #9

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #6

declare i8* @nfstrnsave(i8*, i64) #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #7

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @c_isdigit(i32) #8 !dbg !1075 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1076, metadata !346), !dbg !1077
  %3 = load i32, i32* %2, align 4, !dbg !1078
  %4 = call zeroext i1 @c_isbits(i32 %3, i32 32), !dbg !1079
  ret i1 %4, !dbg !1080
}

declare i32 @dpkg_put_warn(%struct.dpkg_error*, i8*, ...) #5

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @c_isalpha(i32) #8 !dbg !1081 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1082, metadata !346), !dbg !1083
  %3 = load i32, i32* %2, align 4, !dbg !1084
  %4 = call zeroext i1 @c_isbits(i32 %3, i32 24), !dbg !1085
  ret i1 %4, !dbg !1086
}

; Function Attrs: nounwind uwtable
define i32 @parse_db_version(%struct.parsedb_state*, %struct.dpkg_version*, i8*) #4 !dbg !1087 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.parsedb_state*, align 8
  %6 = alloca %struct.dpkg_version*, align 8
  %7 = alloca i8*, align 8
  store %struct.parsedb_state* %0, %struct.parsedb_state** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.parsedb_state** %5, metadata !1090, metadata !346), !dbg !1091
  store %struct.dpkg_version* %1, %struct.dpkg_version** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.dpkg_version** %6, metadata !1092, metadata !346), !dbg !1093
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1094, metadata !346), !dbg !1095
  %8 = load %struct.parsedb_state*, %struct.parsedb_state** %5, align 8, !dbg !1096
  %9 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %8, i32 0, i32 2, !dbg !1097
  call void @dpkg_error_destroy(%struct.dpkg_error* %9), !dbg !1098
  %10 = load %struct.dpkg_version*, %struct.dpkg_version** %6, align 8, !dbg !1099
  %11 = load i8*, i8** %7, align 8, !dbg !1101
  %12 = load %struct.parsedb_state*, %struct.parsedb_state** %5, align 8, !dbg !1102
  %13 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %12, i32 0, i32 2, !dbg !1103
  %14 = call i32 @parseversion(%struct.dpkg_version* %10, i8* %11, %struct.dpkg_error* %13), !dbg !1104
  %15 = icmp eq i32 %14, 0, !dbg !1105
  br i1 %15, label %16, label %17, !dbg !1106

; <label>:16:                                     ; preds = %3
  store i32 0, i32* %4, align 4, !dbg !1107
  br label %28, !dbg !1107

; <label>:17:                                     ; preds = %3
  %18 = load %struct.parsedb_state*, %struct.parsedb_state** %5, align 8, !dbg !1108
  %19 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %18, i32 0, i32 1, !dbg !1110
  %20 = load i32, i32* %19, align 4, !dbg !1110
  %21 = and i32 %20, 64, !dbg !1111
  %22 = icmp ne i32 %21, 0, !dbg !1111
  br i1 %22, label %27, label %23, !dbg !1112

; <label>:23:                                     ; preds = %17
  %24 = load %struct.parsedb_state*, %struct.parsedb_state** %5, align 8, !dbg !1113
  %25 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %24, i32 0, i32 2, !dbg !1114
  %26 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %25, i32 0, i32 0, !dbg !1115
  store i32 2, i32* %26, align 8, !dbg !1116
  br label %27, !dbg !1113

; <label>:27:                                     ; preds = %23, %17
  store i32 -1, i32* %4, align 4, !dbg !1117
  br label %28, !dbg !1117

; <label>:28:                                     ; preds = %27, %16
  %29 = load i32, i32* %4, align 4, !dbg !1118
  ret i32 %29, !dbg !1118
}

declare void @dpkg_error_destroy(%struct.dpkg_error*) #5

; Function Attrs: nounwind uwtable
define void @parse_must_have_field(%struct.parsedb_state*, i8*, i8*) #4 !dbg !1119 {
  %4 = alloca %struct.parsedb_state*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.parsedb_state* %0, %struct.parsedb_state** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.parsedb_state** %4, metadata !1122, metadata !346), !dbg !1123
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1124, metadata !346), !dbg !1125
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1126, metadata !346), !dbg !1127
  %7 = load i8*, i8** %5, align 8, !dbg !1128
  %8 = icmp ne i8* %7, null, !dbg !1128
  br i1 %8, label %13, label %9, !dbg !1130

; <label>:9:                                      ; preds = %3
  %10 = load %struct.parsedb_state*, %struct.parsedb_state** %4, align 8, !dbg !1131
  %11 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i32 0, i32 0)) #2, !dbg !1132
  %12 = load i8*, i8** %6, align 8, !dbg !1133
  call void (%struct.parsedb_state*, i8*, ...) @parse_error(%struct.parsedb_state* %10, i8* %11, i8* %12) #10, !dbg !1134
  unreachable, !dbg !1136

; <label>:13:                                     ; preds = %3
  %14 = load i8*, i8** %5, align 8, !dbg !1137
  %15 = load i8, i8* %14, align 1, !dbg !1139
  %16 = icmp ne i8 %15, 0, !dbg !1139
  br i1 %16, label %21, label %17, !dbg !1140

; <label>:17:                                     ; preds = %13
  %18 = load %struct.parsedb_state*, %struct.parsedb_state** %4, align 8, !dbg !1141
  %19 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i32 0, i32 0)) #2, !dbg !1142
  %20 = load i8*, i8** %6, align 8, !dbg !1143
  call void (%struct.parsedb_state*, i8*, ...) @parse_error(%struct.parsedb_state* %18, i8* %19, i8* %20) #10, !dbg !1144
  unreachable, !dbg !1146

; <label>:21:                                     ; preds = %13
  br label %22

; <label>:22:                                     ; preds = %21
  ret void, !dbg !1147
}

; Function Attrs: nounwind uwtable
define void @parse_ensure_have_field(%struct.parsedb_state*, i8**, i8*) #4 !dbg !175 {
  %4 = alloca %struct.parsedb_state*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  store %struct.parsedb_state* %0, %struct.parsedb_state** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.parsedb_state** %4, metadata !1148, metadata !346), !dbg !1149
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !1150, metadata !346), !dbg !1151
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1152, metadata !346), !dbg !1153
  %7 = load i8**, i8*** %5, align 8, !dbg !1154
  %8 = load i8*, i8** %7, align 8, !dbg !1156
  %9 = icmp ne i8* %8, null, !dbg !1156
  br i1 %9, label %15, label %10, !dbg !1157

; <label>:10:                                     ; preds = %3
  %11 = load %struct.parsedb_state*, %struct.parsedb_state** %4, align 8, !dbg !1158
  %12 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i32 0, i32 0)) #2, !dbg !1160
  %13 = load i8*, i8** %6, align 8, !dbg !1161
  call void (%struct.parsedb_state*, i8*, ...) @parse_warn(%struct.parsedb_state* %11, i8* %12, i8* %13), !dbg !1162
  %14 = load i8**, i8*** %5, align 8, !dbg !1164
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @parse_ensure_have_field.empty, i32 0, i32 0), i8** %14, align 8, !dbg !1165
  br label %25, !dbg !1166

; <label>:15:                                     ; preds = %3
  %16 = load i8**, i8*** %5, align 8, !dbg !1167
  %17 = load i8*, i8** %16, align 8, !dbg !1170
  %18 = load i8, i8* %17, align 1, !dbg !1171
  %19 = icmp ne i8 %18, 0, !dbg !1171
  br i1 %19, label %24, label %20, !dbg !1172

; <label>:20:                                     ; preds = %15
  %21 = load %struct.parsedb_state*, %struct.parsedb_state** %4, align 8, !dbg !1173
  %22 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i32 0, i32 0)) #2, !dbg !1175
  %23 = load i8*, i8** %6, align 8, !dbg !1176
  call void (%struct.parsedb_state*, i8*, ...) @parse_warn(%struct.parsedb_state* %21, i8* %22, i8* %23), !dbg !1177
  br label %24, !dbg !1179

; <label>:24:                                     ; preds = %20, %15
  br label %25

; <label>:25:                                     ; preds = %24, %10
  ret void, !dbg !1180
}

declare i8* @str_escape_fmt(i8*, i8*, i64) #5

declare i8* @pkgbin_name(%struct.pkginfo*, %struct.pkgbin*, i32) #5

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #6

declare zeroext i1 @c_isbits(i32, i32) #5

; Function Attrs: nounwind
declare i8* @dcgettext(i8*, i8*, i32) #6

attributes #0 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn }
attributes #11 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!339, !340}
!llvm.ident = !{!341}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !128, globals: !130)
!1 = !DIFile(filename: "[inter]lib--dpkg--parsehelp.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{!3, !10, !28, !34, !45, !56, !65, !73, !77, !87, !97, !103, !106, !111, !117}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "parsedbtype", file: !4, line: 41, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../lib/dpkg/parsedump.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!5 = !{!6, !7, !8, !9}
!6 = !DIEnumerator(name: "pdb_file_update", value: 0)
!7 = !DIEnumerator(name: "pdb_file_status", value: 1)
!8 = !DIEnumerator(name: "pdb_file_control", value: 2)
!9 = !DIEnumerator(name: "pdb_file_available", value: 3)
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "parsedbflags", file: !11, line: 328, size: 32, align: 32, elements: !12)
!11 = !DIFile(filename: "../../lib/dpkg/dpkg-db.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27}
!13 = !DIEnumerator(name: "pdb_single_stanza", value: 1)
!14 = !DIEnumerator(name: "pdb_recordavailable", value: 2)
!15 = !DIEnumerator(name: "pdb_rejectstatus", value: 4)
!16 = !DIEnumerator(name: "pdb_weakclassification", value: 8)
!17 = !DIEnumerator(name: "pdb_ignore_archives", value: 16)
!18 = !DIEnumerator(name: "pdb_ignoreolder", value: 32)
!19 = !DIEnumerator(name: "pdb_lax_version_parser", value: 64)
!20 = !DIEnumerator(name: "pdb_lax_stanza_parser", value: 512)
!21 = !DIEnumerator(name: "pdb_lax_parser", value: 576)
!22 = !DIEnumerator(name: "pdb_close_fd", value: 128)
!23 = !DIEnumerator(name: "pdb_dash_is_stdin", value: 256)
!24 = !DIEnumerator(name: "pdb_parse_status", value: 584)
!25 = !DIEnumerator(name: "pdb_parse_update", value: 585)
!26 = !DIEnumerator(name: "pdb_parse_available", value: 582)
!27 = !DIEnumerator(name: "pdb_parse_binary", value: 7)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_msg_type", file: !29, line: 36, size: 32, align: 32, elements: !30)
!29 = !DIFile(filename: "../../lib/dpkg/error.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!30 = !{!31, !32, !33}
!31 = !DIEnumerator(name: "DPKG_MSG_NONE", value: 0)
!32 = !DIEnumerator(name: "DPKG_MSG_WARN", value: 1)
!33 = !DIEnumerator(name: "DPKG_MSG_ERROR", value: 2)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "deptype", file: !11, line: 44, size: 32, align: 32, elements: !35)
!35 = !{!36, !37, !38, !39, !40, !41, !42, !43, !44}
!36 = !DIEnumerator(name: "dep_suggests", value: 0)
!37 = !DIEnumerator(name: "dep_recommends", value: 1)
!38 = !DIEnumerator(name: "dep_depends", value: 2)
!39 = !DIEnumerator(name: "dep_predepends", value: 3)
!40 = !DIEnumerator(name: "dep_breaks", value: 4)
!41 = !DIEnumerator(name: "dep_conflicts", value: 5)
!42 = !DIEnumerator(name: "dep_provides", value: 6)
!43 = !DIEnumerator(name: "dep_replaces", value: 7)
!44 = !DIEnumerator(name: "dep_enhances", value: 8)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_arch_type", file: !46, line: 37, size: 32, align: 32, elements: !47)
!46 = !DIFile(filename: "../../lib/dpkg/arch.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!47 = !{!48, !49, !50, !51, !52, !53, !54, !55}
!48 = !DIEnumerator(name: "DPKG_ARCH_NONE", value: 0)
!49 = !DIEnumerator(name: "DPKG_ARCH_EMPTY", value: 1)
!50 = !DIEnumerator(name: "DPKG_ARCH_ILLEGAL", value: 2)
!51 = !DIEnumerator(name: "DPKG_ARCH_WILDCARD", value: 3)
!52 = !DIEnumerator(name: "DPKG_ARCH_ALL", value: 4)
!53 = !DIEnumerator(name: "DPKG_ARCH_NATIVE", value: 5)
!54 = !DIEnumerator(name: "DPKG_ARCH_FOREIGN", value: 6)
!55 = !DIEnumerator(name: "DPKG_ARCH_UNKNOWN", value: 7)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_relation", file: !57, line: 61, size: 32, align: 32, elements: !58)
!57 = !DIFile(filename: "../../lib/dpkg/version.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!58 = !{!59, !60, !61, !62, !63, !64}
!59 = !DIEnumerator(name: "DPKG_RELATION_NONE", value: 0)
!60 = !DIEnumerator(name: "DPKG_RELATION_EQ", value: 1)
!61 = !DIEnumerator(name: "DPKG_RELATION_LT", value: 2)
!62 = !DIEnumerator(name: "DPKG_RELATION_LE", value: 3)
!63 = !DIEnumerator(name: "DPKG_RELATION_GT", value: 4)
!64 = !DIEnumerator(name: "DPKG_RELATION_GE", value: 5)
!65 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgwant", file: !11, line: 153, size: 32, align: 32, elements: !66)
!66 = !{!67, !68, !69, !70, !71, !72}
!67 = !DIEnumerator(name: "PKG_WANT_UNKNOWN", value: 0)
!68 = !DIEnumerator(name: "PKG_WANT_INSTALL", value: 1)
!69 = !DIEnumerator(name: "PKG_WANT_HOLD", value: 2)
!70 = !DIEnumerator(name: "PKG_WANT_DEINSTALL", value: 3)
!71 = !DIEnumerator(name: "PKG_WANT_PURGE", value: 4)
!72 = !DIEnumerator(name: "PKG_WANT_SENTINEL", value: 5)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgeflag", file: !11, line: 163, size: 32, align: 32, elements: !74)
!74 = !{!75, !76}
!75 = !DIEnumerator(name: "PKG_EFLAG_OK", value: 0)
!76 = !DIEnumerator(name: "PKG_EFLAG_REINSTREQ", value: 1)
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgstatus", file: !11, line: 168, size: 32, align: 32, elements: !78)
!78 = !{!79, !80, !81, !82, !83, !84, !85, !86}
!79 = !DIEnumerator(name: "PKG_STAT_NOTINSTALLED", value: 0)
!80 = !DIEnumerator(name: "PKG_STAT_CONFIGFILES", value: 1)
!81 = !DIEnumerator(name: "PKG_STAT_HALFINSTALLED", value: 2)
!82 = !DIEnumerator(name: "PKG_STAT_UNPACKED", value: 3)
!83 = !DIEnumerator(name: "PKG_STAT_HALFCONFIGURED", value: 4)
!84 = !DIEnumerator(name: "PKG_STAT_TRIGGERSAWAITED", value: 5)
!85 = !DIEnumerator(name: "PKG_STAT_TRIGGERSPENDING", value: 6)
!86 = !DIEnumerator(name: "PKG_STAT_INSTALLED", value: 7)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgpriority", file: !11, line: 179, size: 32, align: 32, elements: !88)
!88 = !{!89, !90, !91, !92, !93, !94, !95, !96}
!89 = !DIEnumerator(name: "PKG_PRIO_REQUIRED", value: 0)
!90 = !DIEnumerator(name: "PKG_PRIO_IMPORTANT", value: 1)
!91 = !DIEnumerator(name: "PKG_PRIO_STANDARD", value: 2)
!92 = !DIEnumerator(name: "PKG_PRIO_OPTIONAL", value: 3)
!93 = !DIEnumerator(name: "PKG_PRIO_EXTRA", value: 4)
!94 = !DIEnumerator(name: "PKG_PRIO_OTHER", value: 5)
!95 = !DIEnumerator(name: "PKG_PRIO_UNKNOWN", value: 6)
!96 = !DIEnumerator(name: "PKG_PRIO_UNSET", value: -1)
!97 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgmultiarch", file: !11, line: 95, size: 32, align: 32, elements: !98)
!98 = !{!99, !100, !101, !102}
!99 = !DIEnumerator(name: "PKG_MULTIARCH_NO", value: 0)
!100 = !DIEnumerator(name: "PKG_MULTIARCH_SAME", value: 1)
!101 = !DIEnumerator(name: "PKG_MULTIARCH_ALLOWED", value: 2)
!102 = !DIEnumerator(name: "PKG_MULTIARCH_FOREIGN", value: 3)
!103 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fwriteflags", file: !4, line: 112, size: 32, align: 32, elements: !104)
!104 = !{!105}
!105 = !DIEnumerator(name: "fw_printheader", value: 1)
!106 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "versiondisplayepochwhen", file: !11, line: 388, size: 32, align: 32, elements: !107)
!107 = !{!108, !109, !110}
!108 = !DIEnumerator(name: "vdew_never", value: 0)
!109 = !DIEnumerator(name: "vdew_nonambig", value: 1)
!110 = !DIEnumerator(name: "vdew_always", value: 2)
!111 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkg_name_arch_when", file: !11, line: 396, size: 32, align: 32, elements: !112)
!112 = !{!113, !114, !115, !116}
!113 = !DIEnumerator(name: "pnaw_never", value: 0)
!114 = !DIEnumerator(name: "pnaw_nonambig", value: 1)
!115 = !DIEnumerator(name: "pnaw_foreign", value: 2)
!116 = !DIEnumerator(name: "pnaw_always", value: 3)
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "c_ctype_bit", file: !118, line: 32, size: 32, align: 32, elements: !119)
!118 = !DIFile(filename: "../../lib/dpkg/c-ctype.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!119 = !{!120, !121, !122, !123, !124, !125, !126, !127}
!120 = !DIEnumerator(name: "C_CTYPE_BLANK", value: 1)
!121 = !DIEnumerator(name: "C_CTYPE_WHITE", value: 2)
!122 = !DIEnumerator(name: "C_CTYPE_SPACE", value: 4)
!123 = !DIEnumerator(name: "C_CTYPE_UPPER", value: 8)
!124 = !DIEnumerator(name: "C_CTYPE_LOWER", value: 16)
!125 = !DIEnumerator(name: "C_CTYPE_DIGIT", value: 32)
!126 = !DIEnumerator(name: "C_CTYPE_ALPHA", value: 24)
!127 = !DIEnumerator(name: "C_CTYPE_ALNUM", value: 56)
!128 = !{!129}
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!130 = !{!131, !143, !147, !172, !174, !332}
!131 = distinct !DIGlobalVariable(name: "alsoallowed", scope: !132, file: !133, line: 126, type: !140, isLocal: true, isDefinition: true, variable: [5 x i8]* @pkg_name_is_illegal.alsoallowed)
!132 = distinct !DISubprogram(name: "pkg_name_is_illegal", scope: !133, file: !133, line: 123, type: !134, isLocal: false, isDefinition: true, scopeLine: 124, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !139)
!133 = !DIFile(filename: "parsehelp.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!134 = !DISubroutineType(types: !135)
!135 = !{!136, !136}
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64, align: 64)
!137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!138 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!139 = !{}
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 40, align: 8, elements: !141)
!141 = !{!142}
!142 = !DISubrange(count: 5)
!143 = distinct !DIGlobalVariable(name: "buf", scope: !132, file: !133, line: 127, type: !144, isLocal: true, isDefinition: true, variable: [150 x i8]* @pkg_name_is_illegal.buf)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 1200, align: 8, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 150)
!147 = distinct !DIGlobalVariable(name: "bufs", scope: !148, file: !133, line: 175, type: !159, isLocal: true, isDefinition: true, variable: [10 x %struct.varbuf]* @versiondescribe.bufs)
!148 = distinct !DISubprogram(name: "versiondescribe", scope: !133, file: !133, line: 171, type: !149, isLocal: false, isDefinition: true, scopeLine: 174, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !139)
!149 = !DISubroutineType(types: !150)
!150 = !{!136, !151, !106}
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64, align: 64)
!152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_version", file: !57, line: 42, size: 192, align: 64, elements: !154)
!154 = !{!155, !157, !158}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !153, file: !57, line: 44, baseType: !156, size: 32, align: 32)
!156 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !153, file: !57, line: 46, baseType: !136, size: 64, align: 64, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !153, file: !57, line: 48, baseType: !136, size: 64, align: 64, offset: 128)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 1920, align: 64, elements: !170)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varbuf", file: !161, line: 55, size: 192, align: 64, elements: !162)
!161 = !DIFile(filename: "../../lib/dpkg/varbuf.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!162 = !{!163, !167, !168}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !160, file: !161, line: 56, baseType: !164, size: 64, align: 64)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !165, line: 216, baseType: !166)
!165 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!166 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !160, file: !161, line: 56, baseType: !164, size: 64, align: 64, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !160, file: !161, line: 57, baseType: !169, size: 64, align: 64, offset: 128)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64, align: 64)
!170 = !{!171}
!171 = !DISubrange(count: 10)
!172 = distinct !DIGlobalVariable(name: "bufnum", scope: !148, file: !133, line: 176, type: !173, isLocal: true, isDefinition: true, variable: i32* @versiondescribe.bufnum)
!173 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!174 = distinct !DIGlobalVariable(name: "empty", scope: !175, file: !133, line: 321, type: !329, isLocal: true, isDefinition: true, variable: [1 x i8]* @parse_ensure_have_field.empty)
!175 = distinct !DISubprogram(name: "parse_ensure_have_field", scope: !133, file: !133, line: 318, type: !176, isLocal: false, isDefinition: true, scopeLine: 320, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !139)
!176 = !DISubroutineType(types: !177)
!177 = !{null, !178, !328, !136}
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64, align: 64)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "parsedb_state", file: !4, line: 48, size: 640, align: 64, elements: !180)
!180 = !{!181, !182, !183, !189, !320, !322, !323, !324, !325, !326, !327}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !179, file: !4, line: 49, baseType: !3, size: 32, align: 32)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !179, file: !4, line: 50, baseType: !10, size: 32, align: 32, offset: 32)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !179, file: !4, line: 51, baseType: !184, size: 128, align: 64, offset: 64)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_error", file: !29, line: 42, size: 128, align: 64, elements: !185)
!185 = !{!186, !187, !188}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !184, file: !29, line: 43, baseType: !28, size: 32, align: 32)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "syserrno", scope: !184, file: !29, line: 45, baseType: !173, size: 32, align: 32, offset: 32)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !184, file: !29, line: 46, baseType: !169, size: 64, align: 64, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !179, file: !4, line: 52, baseType: !190, size: 64, align: 64, offset: 192)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64, align: 64)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkginfo", file: !11, line: 195, size: 3072, align: 64, elements: !192)
!192 = !{!193, !235, !236, !237, !238, !239, !240, !241, !242, !243, !273, !274, !277, !286, !302, !303, !309, !312, !318, !319}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !191, file: !11, line: 196, baseType: !194, size: 64, align: 64)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64, align: 64)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgset", file: !11, line: 242, size: 3392, align: 64, elements: !196)
!196 = !{!197, !198, !199, !200, !234}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !195, file: !11, line: 243, baseType: !194, size: 64, align: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !195, file: !11, line: 244, baseType: !136, size: 64, align: 64, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !195, file: !11, line: 245, baseType: !191, size: 3072, align: 64, offset: 128)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "depended", scope: !195, file: !11, line: 249, baseType: !201, size: 128, align: 64, offset: 3200)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !195, file: !11, line: 246, size: 128, align: 64, elements: !202)
!202 = !{!203, !233}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !201, file: !11, line: 247, baseType: !204, size: 64, align: 64)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64, align: 64)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "deppossi", file: !11, line: 63, size: 640, align: 64, elements: !206)
!206 = !{!207, !215, !216, !217, !218, !219, !228, !229, !230, !232}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !205, file: !11, line: 64, baseType: !208, size: 64, align: 64)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64, align: 64)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dependency", file: !11, line: 56, size: 256, align: 64, elements: !210)
!210 = !{!211, !212, !213, !214}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !209, file: !11, line: 57, baseType: !190, size: 64, align: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !209, file: !11, line: 58, baseType: !208, size: 64, align: 64, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !209, file: !11, line: 59, baseType: !204, size: 64, align: 64, offset: 128)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !209, file: !11, line: 60, baseType: !34, size: 32, align: 32, offset: 192)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "ed", scope: !205, file: !11, line: 65, baseType: !194, size: 64, align: 64, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !205, file: !11, line: 66, baseType: !204, size: 64, align: 64, offset: 128)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "rev_next", scope: !205, file: !11, line: 66, baseType: !204, size: 64, align: 64, offset: 192)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "rev_prev", scope: !205, file: !11, line: 66, baseType: !204, size: 64, align: 64, offset: 256)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !205, file: !11, line: 67, baseType: !220, size: 64, align: 64, offset: 320)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64, align: 64)
!221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !222)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_arch", file: !46, line: 48, size: 192, align: 64, elements: !223)
!223 = !{!224, !226, !227}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !222, file: !46, line: 49, baseType: !225, size: 64, align: 64)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64, align: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !222, file: !46, line: 50, baseType: !136, size: 64, align: 64, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !222, file: !46, line: 51, baseType: !45, size: 32, align: 32, offset: 128)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !205, file: !11, line: 68, baseType: !153, size: 192, align: 64, offset: 384)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "verrel", scope: !205, file: !11, line: 69, baseType: !56, size: 32, align: 32, offset: 576)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "arch_is_implicit", scope: !205, file: !11, line: 70, baseType: !231, size: 8, align: 8, offset: 608)
!231 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "cyclebreak", scope: !205, file: !11, line: 71, baseType: !231, size: 8, align: 8, offset: 616)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !201, file: !11, line: 248, baseType: !204, size: 64, align: 64, offset: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "installed_instances", scope: !195, file: !11, line: 250, baseType: !173, size: 32, align: 32, offset: 3328)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "arch_next", scope: !191, file: !11, line: 197, baseType: !190, size: 64, align: 64, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "want", scope: !191, file: !11, line: 199, baseType: !65, size: 32, align: 32, offset: 128)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "eflag", scope: !191, file: !11, line: 201, baseType: !73, size: 32, align: 32, offset: 160)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !191, file: !11, line: 202, baseType: !77, size: 32, align: 32, offset: 192)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !191, file: !11, line: 203, baseType: !87, size: 32, align: 32, offset: 224)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "otherpriority", scope: !191, file: !11, line: 204, baseType: !136, size: 64, align: 64, offset: 256)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "section", scope: !191, file: !11, line: 205, baseType: !136, size: 64, align: 64, offset: 320)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "configversion", scope: !191, file: !11, line: 206, baseType: !153, size: 192, align: 64, offset: 384)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !191, file: !11, line: 207, baseType: !244, size: 960, align: 64, offset: 576)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgbin", file: !11, line: 107, size: 960, align: 64, elements: !245)
!245 = !{!246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !266}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "depends", scope: !244, file: !11, line: 108, baseType: !208, size: 64, align: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "essential", scope: !244, file: !11, line: 110, baseType: !231, size: 8, align: 8, offset: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "multiarch", scope: !244, file: !11, line: 111, baseType: !97, size: 32, align: 32, offset: 96)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !244, file: !11, line: 112, baseType: !220, size: 64, align: 64, offset: 128)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "pkgname_archqual", scope: !244, file: !11, line: 115, baseType: !136, size: 64, align: 64, offset: 192)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !244, file: !11, line: 116, baseType: !136, size: 64, align: 64, offset: 256)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "maintainer", scope: !244, file: !11, line: 117, baseType: !136, size: 64, align: 64, offset: 320)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !244, file: !11, line: 118, baseType: !136, size: 64, align: 64, offset: 384)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "installedsize", scope: !244, file: !11, line: 119, baseType: !136, size: 64, align: 64, offset: 448)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !244, file: !11, line: 120, baseType: !136, size: 64, align: 64, offset: 512)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "bugs", scope: !244, file: !11, line: 121, baseType: !136, size: 64, align: 64, offset: 576)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !244, file: !11, line: 122, baseType: !153, size: 192, align: 64, offset: 640)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "conffiles", scope: !244, file: !11, line: 123, baseType: !259, size: 64, align: 64, offset: 832)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64, align: 64)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conffile", file: !11, line: 80, size: 256, align: 64, elements: !261)
!261 = !{!262, !263, !264, !265}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !260, file: !11, line: 81, baseType: !259, size: 64, align: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !260, file: !11, line: 82, baseType: !136, size: 64, align: 64, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !260, file: !11, line: 83, baseType: !136, size: 64, align: 64, offset: 128)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "obsolete", scope: !260, file: !11, line: 84, baseType: !231, size: 8, align: 8, offset: 192)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "arbs", scope: !244, file: !11, line: 124, baseType: !267, size: 64, align: 64, offset: 896)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64, align: 64)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arbitraryfield", file: !11, line: 74, size: 192, align: 64, elements: !269)
!269 = !{!270, !271, !272}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !268, file: !11, line: 75, baseType: !267, size: 64, align: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !268, file: !11, line: 76, baseType: !136, size: 64, align: 64, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !268, file: !11, line: 77, baseType: !136, size: 64, align: 64, offset: 128)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !191, file: !11, line: 208, baseType: !244, size: 960, align: 64, offset: 1536)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "clientdata", scope: !191, file: !11, line: 209, baseType: !275, size: 64, align: 64, offset: 2496)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64, align: 64)
!276 = !DICompositeType(tag: DW_TAG_structure_type, name: "perpackagestate", file: !11, line: 151, flags: DIFlagFwdDecl)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "archives", scope: !191, file: !11, line: 211, baseType: !278, size: 64, align: 64, offset: 2560)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64, align: 64)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archivedetails", file: !11, line: 87, size: 320, align: 64, elements: !280)
!280 = !{!281, !282, !283, !284, !285}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !279, file: !11, line: 88, baseType: !278, size: 64, align: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !279, file: !11, line: 89, baseType: !136, size: 64, align: 64, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "msdosname", scope: !279, file: !11, line: 90, baseType: !136, size: 64, align: 64, offset: 128)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !279, file: !11, line: 91, baseType: !136, size: 64, align: 64, offset: 192)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "md5sum", scope: !279, file: !11, line: 92, baseType: !136, size: 64, align: 64, offset: 256)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "trigaw", scope: !191, file: !11, line: 216, baseType: !287, size: 128, align: 64, offset: 2624)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !191, file: !11, line: 213, size: 128, align: 64, elements: !288)
!288 = !{!289, !301}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !287, file: !11, line: 215, baseType: !290, size: 64, align: 64)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64, align: 64)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigaw", file: !11, line: 142, size: 320, align: 64, elements: !292)
!292 = !{!293, !294, !295, !296}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "aw", scope: !291, file: !11, line: 143, baseType: !190, size: 64, align: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "pend", scope: !291, file: !11, line: 143, baseType: !190, size: 64, align: 64, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "samepend_next", scope: !291, file: !11, line: 144, baseType: !290, size: 64, align: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "sameaw", scope: !291, file: !11, line: 147, baseType: !297, size: 128, align: 64, offset: 192)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !291, file: !11, line: 145, size: 128, align: 64, elements: !298)
!298 = !{!299, !300}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !297, file: !11, line: 146, baseType: !290, size: 64, align: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !297, file: !11, line: 146, baseType: !290, size: 64, align: 64, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !287, file: !11, line: 215, baseType: !290, size: 64, align: 64, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "othertrigaw_head", scope: !191, file: !11, line: 219, baseType: !290, size: 64, align: 64, offset: 2752)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "trigpend_head", scope: !191, file: !11, line: 220, baseType: !304, size: 64, align: 64, offset: 2816)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64, align: 64)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigpend", file: !11, line: 134, size: 128, align: 64, elements: !306)
!306 = !{!307, !308}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !305, file: !11, line: 135, baseType: !304, size: 64, align: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !305, file: !11, line: 136, baseType: !136, size: 64, align: 64, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !191, file: !11, line: 231, baseType: !310, size: 64, align: 64, offset: 2880)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64, align: 64)
!311 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode_list", file: !11, line: 231, flags: DIFlagFwdDecl)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_phys_offs", scope: !191, file: !11, line: 232, baseType: !313, size: 64, align: 64, offset: 2944)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !314, line: 86, baseType: !315)
!314 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !316, line: 131, baseType: !317)
!316 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!317 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_valid", scope: !191, file: !11, line: 233, baseType: !231, size: 8, align: 8, offset: 3008)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "status_dirty", scope: !191, file: !11, line: 236, baseType: !231, size: 8, align: 8, offset: 3016)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "pkgbin", scope: !179, file: !4, line: 53, baseType: !321, size: 64, align: 64, offset: 256)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64, align: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !179, file: !4, line: 54, baseType: !169, size: 64, align: 64, offset: 320)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "dataptr", scope: !179, file: !4, line: 55, baseType: !169, size: 64, align: 64, offset: 384)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "endptr", scope: !179, file: !4, line: 56, baseType: !169, size: 64, align: 64, offset: 448)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !179, file: !4, line: 57, baseType: !136, size: 64, align: 64, offset: 512)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !179, file: !4, line: 58, baseType: !173, size: 32, align: 32, offset: 576)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "lno", scope: !179, file: !4, line: 59, baseType: !173, size: 32, align: 32, offset: 608)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64, align: 64)
!329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 8, align: 8, elements: !330)
!330 = !{!331}
!331 = !DISubrange(count: 1)
!332 = distinct !DIGlobalVariable(name: "msg", scope: !333, file: !133, line: 42, type: !336, isLocal: true, isDefinition: true, variable: [1024 x i8]* @parse_error_msg.msg)
!333 = distinct !DISubprogram(name: "parse_error_msg", scope: !133, file: !133, line: 40, type: !334, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !139)
!334 = !DISubroutineType(types: !335)
!335 = !{!136, !178, !136}
!336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 8192, align: 8, elements: !337)
!337 = !{!338}
!338 = !DISubrange(count: 1024)
!339 = !{i32 2, !"Dwarf Version", i32 4}
!340 = !{i32 2, !"Debug Info Version", i32 3}
!341 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!342 = distinct !DISubprogram(name: "parse_error", scope: !133, file: !133, line: 62, type: !343, isLocal: false, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !139)
!343 = !DISubroutineType(types: !344)
!344 = !{null, !178, !136, null}
!345 = !DILocalVariable(name: "ps", arg: 1, scope: !342, file: !133, line: 62, type: !178)
!346 = !DIExpression()
!347 = !DILocation(line: 62, column: 35, scope: !342)
!348 = !DILocalVariable(name: "fmt", arg: 2, scope: !342, file: !133, line: 62, type: !136)
!349 = !DILocation(line: 62, column: 51, scope: !342)
!350 = !DILocalVariable(name: "args", scope: !342, file: !133, line: 64, type: !351)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !352, line: 79, baseType: !353)
!352 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !354, line: 40, baseType: !355)
!354 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 64, baseType: !356)
!356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !357, size: 192, align: 64, elements: !330)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 64, size: 192, align: 64, elements: !358)
!358 = !{!359, !360, !361, !362}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !357, file: !1, line: 64, baseType: !156, size: 32, align: 32)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !357, file: !1, line: 64, baseType: !156, size: 32, align: 32, offset: 32)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !357, file: !1, line: 64, baseType: !129, size: 64, align: 64, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !357, file: !1, line: 64, baseType: !129, size: 64, align: 64, offset: 128)
!363 = !DILocation(line: 64, column: 11, scope: !342)
!364 = !DILocation(line: 66, column: 2, scope: !342)
!365 = !DILocation(line: 67, column: 27, scope: !342)
!366 = !DILocation(line: 67, column: 31, scope: !342)
!367 = !DILocation(line: 67, column: 11, scope: !342)
!368 = !DILocation(line: 67, column: 37, scope: !342)
!369 = !DILocation(line: 67, column: 3, scope: !370)
!370 = !DILexicalBlockFile(scope: !342, file: !133, discriminator: 1)
!371 = !DILocation(line: 67, column: 3, scope: !342)
!372 = !DILocation(line: 68, column: 1, scope: !342)
!373 = !DILocalVariable(name: "ps", arg: 1, scope: !333, file: !133, line: 40, type: !178)
!374 = !DILocation(line: 40, column: 39, scope: !333)
!375 = !DILocalVariable(name: "fmt", arg: 2, scope: !333, file: !133, line: 40, type: !136)
!376 = !DILocation(line: 40, column: 55, scope: !333)
!377 = !DILocalVariable(name: "filename", scope: !333, file: !133, line: 43, type: !378)
!378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 2048, align: 8, elements: !379)
!379 = !{!380}
!380 = !DISubrange(count: 256)
!381 = !DILocation(line: 43, column: 8, scope: !333)
!382 = !DILocation(line: 45, column: 18, scope: !333)
!383 = !DILocation(line: 45, column: 28, scope: !333)
!384 = !DILocation(line: 45, column: 32, scope: !333)
!385 = !DILocation(line: 45, column: 3, scope: !333)
!386 = !DILocation(line: 47, column: 7, scope: !387)
!387 = distinct !DILexicalBlock(scope: !333, file: !133, line: 47, column: 7)
!388 = !DILocation(line: 47, column: 11, scope: !387)
!389 = !DILocation(line: 47, column: 15, scope: !387)
!390 = !DILocation(line: 47, column: 18, scope: !391)
!391 = !DILexicalBlockFile(scope: !387, file: !133, discriminator: 1)
!392 = !DILocation(line: 47, column: 22, scope: !391)
!393 = !DILocation(line: 47, column: 27, scope: !391)
!394 = !DILocation(line: 47, column: 32, scope: !391)
!395 = !DILocation(line: 47, column: 7, scope: !391)
!396 = !DILocalVariable(name: "pkgname", scope: !397, file: !133, line: 48, type: !378)
!397 = distinct !DILexicalBlock(scope: !387, file: !133, line: 47, column: 38)
!398 = !DILocation(line: 48, column: 10, scope: !397)
!399 = !DILocation(line: 50, column: 20, scope: !397)
!400 = !DILocation(line: 50, column: 41, scope: !397)
!401 = !DILocation(line: 50, column: 45, scope: !397)
!402 = !DILocation(line: 50, column: 50, scope: !397)
!403 = !DILocation(line: 50, column: 54, scope: !397)
!404 = !DILocation(line: 50, column: 29, scope: !397)
!405 = !DILocation(line: 50, column: 5, scope: !406)
!406 = !DILexicalBlockFile(scope: !397, file: !133, discriminator: 1)
!407 = !DILocation(line: 52, column: 17, scope: !397)
!408 = !DILocation(line: 53, column: 31, scope: !397)
!409 = !DILocation(line: 53, column: 41, scope: !397)
!410 = !DILocation(line: 53, column: 45, scope: !397)
!411 = !DILocation(line: 53, column: 50, scope: !397)
!412 = !DILocation(line: 53, column: 59, scope: !397)
!413 = !DILocation(line: 52, column: 5, scope: !406)
!414 = !DILocation(line: 54, column: 3, scope: !397)
!415 = !DILocation(line: 55, column: 17, scope: !387)
!416 = !DILocation(line: 56, column: 31, scope: !387)
!417 = !DILocation(line: 56, column: 41, scope: !387)
!418 = !DILocation(line: 56, column: 45, scope: !387)
!419 = !DILocation(line: 56, column: 50, scope: !387)
!420 = !DILocation(line: 55, column: 5, scope: !391)
!421 = !DILocation(line: 58, column: 3, scope: !333)
!422 = distinct !DISubprogram(name: "parse_warn", scope: !133, file: !133, line: 71, type: !343, isLocal: false, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !139)
!423 = !DILocalVariable(name: "ps", arg: 1, scope: !422, file: !133, line: 71, type: !178)
!424 = !DILocation(line: 71, column: 34, scope: !422)
!425 = !DILocalVariable(name: "fmt", arg: 2, scope: !422, file: !133, line: 71, type: !136)
!426 = !DILocation(line: 71, column: 50, scope: !422)
!427 = !DILocalVariable(name: "args", scope: !422, file: !133, line: 73, type: !351)
!428 = !DILocation(line: 73, column: 11, scope: !422)
!429 = !DILocation(line: 75, column: 2, scope: !422)
!430 = !DILocation(line: 76, column: 28, scope: !422)
!431 = !DILocation(line: 76, column: 32, scope: !422)
!432 = !DILocation(line: 76, column: 12, scope: !422)
!433 = !DILocation(line: 76, column: 38, scope: !422)
!434 = !DILocation(line: 76, column: 3, scope: !435)
!435 = !DILexicalBlockFile(scope: !422, file: !133, discriminator: 1)
!436 = !DILocation(line: 77, column: 2, scope: !422)
!437 = !DILocation(line: 78, column: 1, scope: !422)
!438 = distinct !DISubprogram(name: "parse_problem", scope: !133, file: !133, line: 81, type: !343, isLocal: false, isDefinition: true, scopeLine: 82, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !139)
!439 = !DILocalVariable(name: "ps", arg: 1, scope: !438, file: !133, line: 81, type: !178)
!440 = !DILocation(line: 81, column: 37, scope: !438)
!441 = !DILocalVariable(name: "fmt", arg: 2, scope: !438, file: !133, line: 81, type: !136)
!442 = !DILocation(line: 81, column: 53, scope: !438)
!443 = !DILocalVariable(name: "args", scope: !438, file: !133, line: 83, type: !351)
!444 = !DILocation(line: 83, column: 11, scope: !438)
!445 = !DILocalVariable(name: "str", scope: !438, file: !133, line: 84, type: !169)
!446 = !DILocation(line: 84, column: 9, scope: !438)
!447 = !DILocation(line: 86, column: 2, scope: !438)
!448 = !DILocation(line: 87, column: 37, scope: !438)
!449 = !DILocation(line: 87, column: 41, scope: !438)
!450 = !DILocation(line: 87, column: 21, scope: !438)
!451 = !DILocation(line: 87, column: 47, scope: !438)
!452 = !DILocation(line: 87, column: 3, scope: !453)
!453 = !DILexicalBlockFile(scope: !438, file: !133, discriminator: 1)
!454 = !DILocation(line: 88, column: 2, scope: !438)
!455 = !DILocation(line: 90, column: 7, scope: !456)
!456 = distinct !DILexicalBlock(scope: !438, file: !133, line: 90, column: 7)
!457 = !DILocation(line: 90, column: 11, scope: !456)
!458 = !DILocation(line: 90, column: 15, scope: !456)
!459 = !DILocation(line: 90, column: 20, scope: !456)
!460 = !DILocation(line: 90, column: 7, scope: !438)
!461 = !DILocation(line: 91, column: 23, scope: !456)
!462 = !DILocation(line: 91, column: 28, scope: !456)
!463 = !DILocation(line: 91, column: 32, scope: !456)
!464 = !DILocation(line: 91, column: 36, scope: !456)
!465 = !DILocation(line: 91, column: 5, scope: !456)
!466 = !DILocation(line: 93, column: 22, scope: !456)
!467 = !DILocation(line: 93, column: 27, scope: !456)
!468 = !DILocation(line: 93, column: 31, scope: !456)
!469 = !DILocation(line: 93, column: 35, scope: !456)
!470 = !DILocation(line: 93, column: 5, scope: !456)
!471 = !DILocation(line: 95, column: 8, scope: !438)
!472 = !DILocation(line: 95, column: 3, scope: !438)
!473 = !DILocation(line: 96, column: 1, scope: !438)
!474 = distinct !DISubprogram(name: "find_field_info", scope: !133, file: !133, line: 99, type: !475, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !139)
!475 = !DISubroutineType(types: !476)
!476 = !{!477, !477, !136}
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64, align: 64)
!478 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !479)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fieldinfo", file: !4, line: 133, size: 320, align: 64, elements: !480)
!480 = !{!481, !482, !483, !488, !498}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !479, file: !4, line: 134, baseType: !136, size: 64, align: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "namelen", scope: !479, file: !4, line: 135, baseType: !164, size: 64, align: 64, offset: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "rcall", scope: !479, file: !4, line: 136, baseType: !484, size: 64, align: 64, offset: 128)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64, align: 64)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "freadfunction", file: !4, line: 97, baseType: !486)
!486 = !DISubroutineType(types: !487)
!487 = !{null, !190, !321, !178, !136, !477}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "wcall", scope: !479, file: !4, line: 137, baseType: !489, size: 64, align: 64, offset: 192)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64, align: 64)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "fwritefunction", file: !4, line: 117, baseType: !491)
!491 = !DISubroutineType(types: !492)
!492 = !{null, !493, !494, !496, !103, !477}
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64, align: 64)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64, align: 64)
!495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !191)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64, align: 64)
!497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !244)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !479, file: !4, line: 138, baseType: !164, size: 64, align: 64, offset: 256)
!499 = !DILocalVariable(name: "fields", arg: 1, scope: !474, file: !133, line: 99, type: !477)
!500 = !DILocation(line: 99, column: 41, scope: !474)
!501 = !DILocalVariable(name: "fieldname", arg: 2, scope: !474, file: !133, line: 99, type: !136)
!502 = !DILocation(line: 99, column: 61, scope: !474)
!503 = !DILocalVariable(name: "field", scope: !474, file: !133, line: 101, type: !477)
!504 = !DILocation(line: 101, column: 27, scope: !474)
!505 = !DILocation(line: 103, column: 16, scope: !506)
!506 = distinct !DILexicalBlock(scope: !474, file: !133, line: 103, column: 3)
!507 = !DILocation(line: 103, column: 14, scope: !506)
!508 = !DILocation(line: 103, column: 8, scope: !506)
!509 = !DILocation(line: 103, column: 24, scope: !510)
!510 = !DILexicalBlockFile(scope: !511, file: !133, discriminator: 1)
!511 = distinct !DILexicalBlock(scope: !506, file: !133, line: 103, column: 3)
!512 = !DILocation(line: 103, column: 31, scope: !510)
!513 = !DILocation(line: 103, column: 3, scope: !510)
!514 = !DILocation(line: 104, column: 20, scope: !515)
!515 = distinct !DILexicalBlock(scope: !511, file: !133, line: 104, column: 9)
!516 = !DILocation(line: 104, column: 27, scope: !515)
!517 = !DILocation(line: 104, column: 33, scope: !515)
!518 = !DILocation(line: 104, column: 9, scope: !515)
!519 = !DILocation(line: 104, column: 44, scope: !515)
!520 = !DILocation(line: 104, column: 9, scope: !511)
!521 = !DILocation(line: 105, column: 14, scope: !515)
!522 = !DILocation(line: 105, column: 7, scope: !515)
!523 = !DILocation(line: 104, column: 47, scope: !524)
!524 = !DILexicalBlockFile(scope: !515, file: !133, discriminator: 1)
!525 = !DILocation(line: 103, column: 42, scope: !526)
!526 = !DILexicalBlockFile(scope: !511, file: !133, discriminator: 2)
!527 = !DILocation(line: 103, column: 3, scope: !526)
!528 = distinct !{!528, !529}
!529 = !DILocation(line: 103, column: 3, scope: !474)
!530 = !DILocation(line: 107, column: 3, scope: !474)
!531 = !DILocation(line: 108, column: 1, scope: !474)
!532 = distinct !DISubprogram(name: "find_arbfield_info", scope: !133, file: !133, line: 111, type: !533, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !139)
!533 = !DISubroutineType(types: !534)
!534 = !{!535, !535, !136}
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64, align: 64)
!536 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !268)
!537 = !DILocalVariable(name: "arbs", arg: 1, scope: !532, file: !133, line: 111, type: !535)
!538 = !DILocation(line: 111, column: 49, scope: !532)
!539 = !DILocalVariable(name: "fieldname", arg: 2, scope: !532, file: !133, line: 111, type: !136)
!540 = !DILocation(line: 111, column: 67, scope: !532)
!541 = !DILocalVariable(name: "arbfield", scope: !532, file: !133, line: 113, type: !535)
!542 = !DILocation(line: 113, column: 32, scope: !532)
!543 = !DILocation(line: 115, column: 19, scope: !544)
!544 = distinct !DILexicalBlock(scope: !532, file: !133, line: 115, column: 3)
!545 = !DILocation(line: 115, column: 17, scope: !544)
!546 = !DILocation(line: 115, column: 8, scope: !544)
!547 = !DILocation(line: 115, column: 25, scope: !548)
!548 = !DILexicalBlockFile(scope: !549, file: !133, discriminator: 1)
!549 = distinct !DILexicalBlock(scope: !544, file: !133, line: 115, column: 3)
!550 = !DILocation(line: 115, column: 3, scope: !548)
!551 = !DILocation(line: 116, column: 20, scope: !552)
!552 = distinct !DILexicalBlock(scope: !549, file: !133, line: 116, column: 9)
!553 = !DILocation(line: 116, column: 30, scope: !552)
!554 = !DILocation(line: 116, column: 36, scope: !552)
!555 = !DILocation(line: 116, column: 9, scope: !552)
!556 = !DILocation(line: 116, column: 47, scope: !552)
!557 = !DILocation(line: 116, column: 9, scope: !549)
!558 = !DILocation(line: 117, column: 14, scope: !552)
!559 = !DILocation(line: 117, column: 7, scope: !552)
!560 = !DILocation(line: 116, column: 50, scope: !561)
!561 = !DILexicalBlockFile(scope: !552, file: !133, discriminator: 1)
!562 = !DILocation(line: 115, column: 46, scope: !563)
!563 = !DILexicalBlockFile(scope: !549, file: !133, discriminator: 2)
!564 = !DILocation(line: 115, column: 56, scope: !563)
!565 = !DILocation(line: 115, column: 44, scope: !563)
!566 = !DILocation(line: 115, column: 3, scope: !563)
!567 = distinct !{!567, !568}
!568 = !DILocation(line: 115, column: 3, scope: !532)
!569 = !DILocation(line: 119, column: 3, scope: !532)
!570 = !DILocation(line: 120, column: 1, scope: !532)
!571 = !DILocalVariable(name: "p", arg: 1, scope: !132, file: !133, line: 123, type: !136)
!572 = !DILocation(line: 123, column: 33, scope: !132)
!573 = !DILocalVariable(name: "c", scope: !132, file: !133, line: 128, type: !173)
!574 = !DILocation(line: 128, column: 7, scope: !132)
!575 = !DILocation(line: 130, column: 9, scope: !576)
!576 = distinct !DILexicalBlock(scope: !132, file: !133, line: 130, column: 7)
!577 = !DILocation(line: 130, column: 8, scope: !576)
!578 = !DILocation(line: 130, column: 7, scope: !132)
!579 = !DILocation(line: 130, column: 18, scope: !580)
!580 = !DILexicalBlockFile(scope: !576, file: !133, discriminator: 1)
!581 = !DILocation(line: 130, column: 12, scope: !580)
!582 = !DILocation(line: 131, column: 19, scope: !583)
!583 = distinct !DILexicalBlock(scope: !132, file: !133, line: 131, column: 7)
!584 = !DILocation(line: 131, column: 18, scope: !583)
!585 = !DILocation(line: 131, column: 8, scope: !583)
!586 = !DILocation(line: 131, column: 7, scope: !132)
!587 = !DILocation(line: 132, column: 11, scope: !583)
!588 = !DILocation(line: 132, column: 5, scope: !583)
!589 = !DILocation(line: 133, column: 3, scope: !132)
!590 = !DILocation(line: 133, column: 17, scope: !591)
!591 = !DILexicalBlockFile(scope: !132, file: !133, discriminator: 1)
!592 = !DILocation(line: 133, column: 15, scope: !591)
!593 = !DILocation(line: 133, column: 13, scope: !591)
!594 = !DILocation(line: 133, column: 21, scope: !591)
!595 = !DILocation(line: 133, column: 3, scope: !591)
!596 = !DILocation(line: 134, column: 20, scope: !597)
!597 = distinct !DILexicalBlock(scope: !132, file: !133, line: 134, column: 9)
!598 = !DILocation(line: 134, column: 10, scope: !597)
!599 = !DILocation(line: 134, column: 23, scope: !597)
!600 = !DILocation(line: 134, column: 47, scope: !601)
!601 = !DILexicalBlockFile(scope: !597, file: !133, discriminator: 1)
!602 = !DILocation(line: 134, column: 27, scope: !601)
!603 = !DILocation(line: 134, column: 9, scope: !601)
!604 = !DILocation(line: 135, column: 7, scope: !597)
!605 = !DILocation(line: 133, column: 3, scope: !606)
!606 = !DILexicalBlockFile(scope: !132, file: !133, discriminator: 2)
!607 = distinct !{!607, !589}
!608 = !DILocation(line: 136, column: 8, scope: !609)
!609 = distinct !DILexicalBlock(scope: !132, file: !133, line: 136, column: 7)
!610 = !DILocation(line: 136, column: 7, scope: !132)
!611 = !DILocation(line: 136, column: 11, scope: !612)
!612 = !DILexicalBlockFile(scope: !609, file: !133, discriminator: 1)
!613 = !DILocation(line: 138, column: 29, scope: !132)
!614 = !DILocation(line: 140, column: 5, scope: !132)
!615 = !DILocation(line: 138, column: 3, scope: !591)
!616 = !DILocation(line: 141, column: 3, scope: !132)
!617 = !DILocation(line: 142, column: 1, scope: !132)
!618 = distinct !DISubprogram(name: "c_isalnum", scope: !118, file: !118, line: 114, type: !619, isLocal: true, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !139)
!619 = !DISubroutineType(types: !620)
!620 = !{!231, !173}
!621 = !DILocalVariable(name: "c", arg: 1, scope: !618, file: !118, line: 114, type: !173)
!622 = !DILocation(line: 114, column: 15, scope: !618)
!623 = !DILocation(line: 116, column: 18, scope: !618)
!624 = !DILocation(line: 116, column: 9, scope: !618)
!625 = !DILocation(line: 116, column: 2, scope: !618)
!626 = distinct !DISubprogram(name: "varbufversion", scope: !133, file: !133, line: 144, type: !627, isLocal: false, isDefinition: true, scopeLine: 148, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !139)
!627 = !DISubroutineType(types: !628)
!628 = !{null, !493, !151, !106}
!629 = !DILocalVariable(name: "vb", arg: 1, scope: !626, file: !133, line: 145, type: !493)
!630 = !DILocation(line: 145, column: 17, scope: !626)
!631 = !DILocalVariable(name: "version", arg: 2, scope: !626, file: !133, line: 146, type: !151)
!632 = !DILocation(line: 146, column: 29, scope: !626)
!633 = !DILocalVariable(name: "vdew", arg: 3, scope: !626, file: !133, line: 147, type: !106)
!634 = !DILocation(line: 147, column: 31, scope: !626)
!635 = !DILocation(line: 149, column: 11, scope: !626)
!636 = !DILocation(line: 149, column: 3, scope: !626)
!637 = !DILocation(line: 151, column: 5, scope: !638)
!638 = distinct !DILexicalBlock(scope: !626, file: !133, line: 149, column: 17)
!639 = !DILocation(line: 153, column: 10, scope: !640)
!640 = distinct !DILexicalBlock(scope: !638, file: !133, line: 153, column: 9)
!641 = !DILocation(line: 153, column: 19, scope: !640)
!642 = !DILocation(line: 153, column: 25, scope: !640)
!643 = !DILocation(line: 154, column: 11, scope: !640)
!644 = !DILocation(line: 154, column: 20, scope: !640)
!645 = !DILocation(line: 154, column: 28, scope: !640)
!646 = !DILocation(line: 154, column: 39, scope: !647)
!647 = !DILexicalBlockFile(scope: !640, file: !133, discriminator: 1)
!648 = !DILocation(line: 154, column: 48, scope: !647)
!649 = !DILocation(line: 154, column: 32, scope: !647)
!650 = !DILocation(line: 154, column: 62, scope: !647)
!651 = !DILocation(line: 155, column: 11, scope: !640)
!652 = !DILocation(line: 155, column: 20, scope: !640)
!653 = !DILocation(line: 155, column: 29, scope: !640)
!654 = !DILocation(line: 155, column: 40, scope: !647)
!655 = !DILocation(line: 155, column: 49, scope: !647)
!656 = !DILocation(line: 155, column: 33, scope: !647)
!657 = !DILocation(line: 153, column: 9, scope: !658)
!658 = !DILexicalBlockFile(scope: !638, file: !133, discriminator: 1)
!659 = !DILocation(line: 155, column: 65, scope: !660)
!660 = !DILexicalBlockFile(scope: !640, file: !133, discriminator: 2)
!661 = !DILocation(line: 155, column: 62, scope: !662)
!662 = !DILexicalBlockFile(scope: !640, file: !133, discriminator: 3)
!663 = !DILocation(line: 158, column: 19, scope: !638)
!664 = !DILocation(line: 158, column: 30, scope: !638)
!665 = !DILocation(line: 158, column: 39, scope: !638)
!666 = !DILocation(line: 158, column: 5, scope: !638)
!667 = !DILocation(line: 159, column: 5, scope: !638)
!668 = !DILocation(line: 161, column: 88, scope: !638)
!669 = !DILocation(line: 161, column: 5, scope: !638)
!670 = !DILocation(line: 163, column: 7, scope: !671)
!671 = distinct !DILexicalBlock(scope: !626, file: !133, line: 163, column: 7)
!672 = !DILocation(line: 163, column: 16, scope: !671)
!673 = !DILocation(line: 163, column: 7, scope: !626)
!674 = !DILocation(line: 164, column: 20, scope: !671)
!675 = !DILocation(line: 164, column: 24, scope: !671)
!676 = !DILocation(line: 164, column: 33, scope: !671)
!677 = !DILocation(line: 164, column: 49, scope: !671)
!678 = !DILocation(line: 164, column: 58, scope: !671)
!679 = !DILocation(line: 164, column: 42, scope: !671)
!680 = !DILocation(line: 164, column: 5, scope: !681)
!681 = !DILexicalBlockFile(scope: !671, file: !133, discriminator: 1)
!682 = !DILocation(line: 164, column: 5, scope: !671)
!683 = !DILocation(line: 165, column: 18, scope: !684)
!684 = distinct !DILexicalBlock(scope: !626, file: !133, line: 165, column: 7)
!685 = !DILocation(line: 165, column: 27, scope: !684)
!686 = !DILocation(line: 165, column: 7, scope: !684)
!687 = !DILocation(line: 165, column: 7, scope: !626)
!688 = !DILocation(line: 166, column: 21, scope: !689)
!689 = distinct !DILexicalBlock(scope: !684, file: !133, line: 165, column: 38)
!690 = !DILocation(line: 166, column: 5, scope: !689)
!691 = !DILocation(line: 167, column: 20, scope: !689)
!692 = !DILocation(line: 167, column: 24, scope: !689)
!693 = !DILocation(line: 167, column: 33, scope: !689)
!694 = !DILocation(line: 167, column: 50, scope: !689)
!695 = !DILocation(line: 167, column: 59, scope: !689)
!696 = !DILocation(line: 167, column: 43, scope: !689)
!697 = !DILocation(line: 167, column: 5, scope: !698)
!698 = !DILexicalBlockFile(scope: !689, file: !133, discriminator: 1)
!699 = !DILocation(line: 168, column: 3, scope: !689)
!700 = !DILocation(line: 169, column: 1, scope: !626)
!701 = distinct !DISubprogram(name: "str_is_set", scope: !702, file: !702, line: 50, type: !703, isLocal: true, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !139)
!702 = !DIFile(filename: "../../lib/dpkg/string.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!703 = !DISubroutineType(types: !704)
!704 = !{!231, !136}
!705 = !DILocalVariable(name: "str", arg: 1, scope: !701, file: !702, line: 50, type: !136)
!706 = !DILocation(line: 50, column: 24, scope: !701)
!707 = !DILocation(line: 52, column: 9, scope: !701)
!708 = !DILocation(line: 52, column: 13, scope: !701)
!709 = !DILocation(line: 52, column: 20, scope: !701)
!710 = !DILocation(line: 52, column: 23, scope: !711)
!711 = !DILexicalBlockFile(scope: !701, file: !702, discriminator: 1)
!712 = !DILocation(line: 52, column: 30, scope: !711)
!713 = !DILocation(line: 52, column: 2, scope: !714)
!714 = !DILexicalBlockFile(scope: !701, file: !702, discriminator: 2)
!715 = !DILocalVariable(name: "version", arg: 1, scope: !148, file: !133, line: 172, type: !151)
!716 = !DILocation(line: 172, column: 29, scope: !148)
!717 = !DILocalVariable(name: "vdew", arg: 2, scope: !148, file: !133, line: 173, type: !106)
!718 = !DILocation(line: 173, column: 31, scope: !148)
!719 = !DILocalVariable(name: "vb", scope: !148, file: !133, line: 178, type: !493)
!720 = !DILocation(line: 178, column: 18, scope: !148)
!721 = !DILocation(line: 180, column: 36, scope: !722)
!722 = distinct !DILexicalBlock(scope: !148, file: !133, line: 180, column: 7)
!723 = !DILocation(line: 180, column: 8, scope: !722)
!724 = !DILocation(line: 180, column: 7, scope: !148)
!725 = !DILocation(line: 181, column: 11, scope: !722)
!726 = !DILocation(line: 181, column: 5, scope: !722)
!727 = !DILocation(line: 183, column: 13, scope: !148)
!728 = !DILocation(line: 183, column: 8, scope: !148)
!729 = !DILocation(line: 183, column: 5, scope: !148)
!730 = !DILocation(line: 183, column: 28, scope: !148)
!731 = !DILocation(line: 183, column: 36, scope: !732)
!732 = distinct !DILexicalBlock(scope: !148, file: !133, line: 183, column: 36)
!733 = !DILocation(line: 183, column: 43, scope: !732)
!734 = !DILocation(line: 183, column: 36, scope: !148)
!735 = !DILocation(line: 183, column: 56, scope: !736)
!736 = !DILexicalBlockFile(scope: !732, file: !133, discriminator: 1)
!737 = !DILocation(line: 183, column: 50, scope: !736)
!738 = !DILocation(line: 184, column: 16, scope: !148)
!739 = !DILocation(line: 184, column: 3, scope: !148)
!740 = !DILocation(line: 185, column: 17, scope: !148)
!741 = !DILocation(line: 185, column: 20, scope: !148)
!742 = !DILocation(line: 185, column: 28, scope: !148)
!743 = !DILocation(line: 185, column: 3, scope: !148)
!744 = !DILocation(line: 186, column: 18, scope: !148)
!745 = !DILocation(line: 186, column: 3, scope: !148)
!746 = !DILocation(line: 188, column: 10, scope: !148)
!747 = !DILocation(line: 188, column: 14, scope: !148)
!748 = !DILocation(line: 188, column: 3, scope: !148)
!749 = !DILocation(line: 189, column: 1, scope: !148)
!750 = distinct !DISubprogram(name: "pgettext_aux", scope: !751, file: !751, line: 136, type: !752, isLocal: true, isDefinition: true, scopeLine: 139, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !139)
!751 = !DIFile(filename: "../../lib/compat/gettext.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!752 = !DISubroutineType(types: !753)
!753 = !{!136, !136, !136, !136, !173}
!754 = !DILocalVariable(name: "domain", arg: 1, scope: !750, file: !751, line: 136, type: !136)
!755 = !DILocation(line: 136, column: 27, scope: !750)
!756 = !DILocalVariable(name: "msg_ctxt_id", arg: 2, scope: !750, file: !751, line: 137, type: !136)
!757 = !DILocation(line: 137, column: 20, scope: !750)
!758 = !DILocalVariable(name: "msgid", arg: 3, scope: !750, file: !751, line: 137, type: !136)
!759 = !DILocation(line: 137, column: 45, scope: !750)
!760 = !DILocalVariable(name: "category", arg: 4, scope: !750, file: !751, line: 138, type: !173)
!761 = !DILocation(line: 138, column: 12, scope: !750)
!762 = !DILocalVariable(name: "translation", scope: !750, file: !751, line: 140, type: !136)
!763 = !DILocation(line: 140, column: 15, scope: !750)
!764 = !DILocation(line: 140, column: 40, scope: !750)
!765 = !DILocation(line: 140, column: 48, scope: !750)
!766 = !DILocation(line: 140, column: 61, scope: !750)
!767 = !DILocation(line: 140, column: 29, scope: !750)
!768 = !DILocation(line: 141, column: 7, scope: !769)
!769 = distinct !DILexicalBlock(scope: !750, file: !751, line: 141, column: 7)
!770 = !DILocation(line: 141, column: 22, scope: !769)
!771 = !DILocation(line: 141, column: 19, scope: !769)
!772 = !DILocation(line: 141, column: 7, scope: !750)
!773 = !DILocation(line: 142, column: 12, scope: !769)
!774 = !DILocation(line: 142, column: 5, scope: !769)
!775 = !DILocation(line: 144, column: 12, scope: !769)
!776 = !DILocation(line: 144, column: 5, scope: !769)
!777 = !DILocation(line: 145, column: 1, scope: !750)
!778 = distinct !DISubprogram(name: "parseversion", scope: !133, file: !133, line: 204, type: !779, isLocal: false, isDefinition: true, scopeLine: 206, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !139)
!779 = !DISubroutineType(types: !780)
!780 = !{!173, !781, !136, !782}
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64, align: 64)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!783 = !DILocalVariable(name: "rversion", arg: 1, scope: !778, file: !133, line: 204, type: !781)
!784 = !DILocation(line: 204, column: 35, scope: !778)
!785 = !DILocalVariable(name: "string", arg: 2, scope: !778, file: !133, line: 204, type: !136)
!786 = !DILocation(line: 204, column: 57, scope: !778)
!787 = !DILocalVariable(name: "err", arg: 3, scope: !778, file: !133, line: 205, type: !782)
!788 = !DILocation(line: 205, column: 33, scope: !778)
!789 = !DILocalVariable(name: "hyphen", scope: !778, file: !133, line: 207, type: !169)
!790 = !DILocation(line: 207, column: 9, scope: !778)
!791 = !DILocalVariable(name: "colon", scope: !778, file: !133, line: 207, type: !169)
!792 = !DILocation(line: 207, column: 18, scope: !778)
!793 = !DILocalVariable(name: "eepochcolon", scope: !778, file: !133, line: 207, type: !169)
!794 = !DILocation(line: 207, column: 26, scope: !778)
!795 = !DILocalVariable(name: "end", scope: !778, file: !133, line: 208, type: !136)
!796 = !DILocation(line: 208, column: 15, scope: !778)
!797 = !DILocalVariable(name: "ptr", scope: !778, file: !133, line: 208, type: !136)
!798 = !DILocation(line: 208, column: 21, scope: !778)
!799 = !DILocation(line: 211, column: 3, scope: !778)
!800 = !DILocation(line: 211, column: 11, scope: !801)
!801 = !DILexicalBlockFile(scope: !778, file: !133, discriminator: 1)
!802 = !DILocation(line: 211, column: 10, scope: !801)
!803 = !DILocation(line: 211, column: 18, scope: !801)
!804 = !DILocation(line: 211, column: 32, scope: !805)
!805 = !DILexicalBlockFile(scope: !778, file: !133, discriminator: 2)
!806 = !DILocation(line: 211, column: 31, scope: !805)
!807 = !DILocation(line: 211, column: 21, scope: !805)
!808 = !DILocation(line: 211, column: 3, scope: !809)
!809 = !DILexicalBlockFile(scope: !778, file: !133, discriminator: 3)
!810 = !DILocation(line: 212, column: 11, scope: !778)
!811 = !DILocation(line: 211, column: 3, scope: !812)
!812 = !DILexicalBlockFile(scope: !778, file: !133, discriminator: 4)
!813 = distinct !{!813, !799}
!814 = !DILocation(line: 214, column: 9, scope: !815)
!815 = distinct !DILexicalBlock(scope: !778, file: !133, line: 214, column: 7)
!816 = !DILocation(line: 214, column: 8, scope: !815)
!817 = !DILocation(line: 214, column: 7, scope: !778)
!818 = !DILocation(line: 215, column: 27, scope: !815)
!819 = !DILocation(line: 215, column: 31, scope: !815)
!820 = !DILocation(line: 215, column: 12, scope: !821)
!821 = !DILexicalBlockFile(scope: !815, file: !133, discriminator: 1)
!822 = !DILocation(line: 215, column: 5, scope: !815)
!823 = !DILocation(line: 218, column: 9, scope: !778)
!824 = !DILocation(line: 218, column: 7, scope: !778)
!825 = !DILocation(line: 220, column: 3, scope: !778)
!826 = !DILocation(line: 220, column: 11, scope: !801)
!827 = !DILocation(line: 220, column: 10, scope: !801)
!828 = !DILocation(line: 220, column: 15, scope: !801)
!829 = !DILocation(line: 220, column: 30, scope: !805)
!830 = !DILocation(line: 220, column: 29, scope: !805)
!831 = !DILocation(line: 220, column: 19, scope: !805)
!832 = !DILocation(line: 220, column: 18, scope: !805)
!833 = !DILocation(line: 220, column: 3, scope: !809)
!834 = !DILocation(line: 221, column: 8, scope: !778)
!835 = !DILocation(line: 220, column: 3, scope: !812)
!836 = distinct !{!836, !825}
!837 = !DILocation(line: 223, column: 9, scope: !778)
!838 = !DILocation(line: 223, column: 7, scope: !778)
!839 = !DILocation(line: 224, column: 3, scope: !778)
!840 = !DILocation(line: 224, column: 11, scope: !801)
!841 = !DILocation(line: 224, column: 10, scope: !801)
!842 = !DILocation(line: 224, column: 15, scope: !801)
!843 = !DILocation(line: 224, column: 29, scope: !805)
!844 = !DILocation(line: 224, column: 28, scope: !805)
!845 = !DILocation(line: 224, column: 18, scope: !805)
!846 = !DILocation(line: 224, column: 3, scope: !809)
!847 = !DILocation(line: 225, column: 8, scope: !778)
!848 = !DILocation(line: 224, column: 3, scope: !812)
!849 = distinct !{!849, !839}
!850 = !DILocation(line: 226, column: 8, scope: !851)
!851 = distinct !DILexicalBlock(scope: !778, file: !133, line: 226, column: 7)
!852 = !DILocation(line: 226, column: 7, scope: !851)
!853 = !DILocation(line: 226, column: 7, scope: !778)
!854 = !DILocation(line: 227, column: 27, scope: !851)
!855 = !DILocation(line: 227, column: 31, scope: !851)
!856 = !DILocation(line: 227, column: 12, scope: !857)
!857 = !DILexicalBlockFile(scope: !851, file: !133, discriminator: 1)
!858 = !DILocation(line: 227, column: 5, scope: !851)
!859 = !DILocation(line: 229, column: 17, scope: !778)
!860 = !DILocation(line: 229, column: 10, scope: !778)
!861 = !DILocation(line: 229, column: 8, scope: !778)
!862 = !DILocation(line: 230, column: 7, scope: !863)
!863 = distinct !DILexicalBlock(scope: !778, file: !133, line: 230, column: 7)
!864 = !DILocation(line: 230, column: 7, scope: !778)
!865 = !DILocalVariable(name: "epoch", scope: !866, file: !133, line: 231, type: !317)
!866 = distinct !DILexicalBlock(scope: !863, file: !133, line: 230, column: 14)
!867 = !DILocation(line: 231, column: 10, scope: !866)
!868 = !DILocation(line: 233, column: 6, scope: !866)
!869 = !DILocation(line: 233, column: 10, scope: !866)
!870 = !DILocation(line: 234, column: 20, scope: !866)
!871 = !DILocation(line: 234, column: 13, scope: !866)
!872 = !DILocation(line: 234, column: 11, scope: !866)
!873 = !DILocation(line: 235, column: 9, scope: !874)
!874 = distinct !DILexicalBlock(scope: !866, file: !133, line: 235, column: 9)
!875 = !DILocation(line: 235, column: 19, scope: !874)
!876 = !DILocation(line: 235, column: 16, scope: !874)
!877 = !DILocation(line: 235, column: 9, scope: !866)
!878 = !DILocation(line: 236, column: 29, scope: !874)
!879 = !DILocation(line: 236, column: 33, scope: !874)
!880 = !DILocation(line: 236, column: 14, scope: !881)
!881 = !DILexicalBlockFile(scope: !874, file: !133, discriminator: 1)
!882 = !DILocation(line: 236, column: 7, scope: !874)
!883 = !DILocation(line: 237, column: 9, scope: !884)
!884 = distinct !DILexicalBlock(scope: !866, file: !133, line: 237, column: 9)
!885 = !DILocation(line: 237, column: 18, scope: !884)
!886 = !DILocation(line: 237, column: 15, scope: !884)
!887 = !DILocation(line: 237, column: 9, scope: !866)
!888 = !DILocation(line: 238, column: 29, scope: !884)
!889 = !DILocation(line: 238, column: 33, scope: !884)
!890 = !DILocation(line: 238, column: 14, scope: !891)
!891 = !DILexicalBlockFile(scope: !884, file: !133, discriminator: 1)
!892 = !DILocation(line: 238, column: 7, scope: !884)
!893 = !DILocation(line: 239, column: 9, scope: !894)
!894 = distinct !DILexicalBlock(scope: !866, file: !133, line: 239, column: 9)
!895 = !DILocation(line: 239, column: 15, scope: !894)
!896 = !DILocation(line: 239, column: 9, scope: !866)
!897 = !DILocation(line: 240, column: 29, scope: !894)
!898 = !DILocation(line: 240, column: 33, scope: !894)
!899 = !DILocation(line: 240, column: 14, scope: !900)
!900 = !DILexicalBlockFile(scope: !894, file: !133, discriminator: 1)
!901 = !DILocation(line: 240, column: 7, scope: !894)
!902 = !DILocation(line: 241, column: 9, scope: !903)
!903 = distinct !DILexicalBlock(scope: !866, file: !133, line: 241, column: 9)
!904 = !DILocation(line: 241, column: 15, scope: !903)
!905 = !DILocation(line: 241, column: 28, scope: !903)
!906 = !DILocation(line: 241, column: 29, scope: !907)
!907 = !DILexicalBlockFile(scope: !903, file: !133, discriminator: 1)
!908 = !DILocation(line: 241, column: 28, scope: !907)
!909 = !DILocation(line: 241, column: 33, scope: !907)
!910 = !DILocation(line: 241, column: 9, scope: !907)
!911 = !DILocation(line: 242, column: 29, scope: !903)
!912 = !DILocation(line: 242, column: 33, scope: !903)
!913 = !DILocation(line: 242, column: 14, scope: !907)
!914 = !DILocation(line: 242, column: 7, scope: !903)
!915 = !DILocation(line: 243, column: 11, scope: !916)
!916 = distinct !DILexicalBlock(scope: !866, file: !133, line: 243, column: 9)
!917 = !DILocation(line: 243, column: 10, scope: !916)
!918 = !DILocation(line: 243, column: 9, scope: !866)
!919 = !DILocation(line: 244, column: 29, scope: !916)
!920 = !DILocation(line: 244, column: 33, scope: !916)
!921 = !DILocation(line: 244, column: 14, scope: !922)
!922 = !DILexicalBlockFile(scope: !916, file: !133, discriminator: 1)
!923 = !DILocation(line: 244, column: 7, scope: !916)
!924 = !DILocation(line: 245, column: 13, scope: !866)
!925 = !DILocation(line: 245, column: 11, scope: !866)
!926 = !DILocation(line: 246, column: 22, scope: !866)
!927 = !DILocation(line: 246, column: 5, scope: !866)
!928 = !DILocation(line: 246, column: 15, scope: !866)
!929 = !DILocation(line: 246, column: 20, scope: !866)
!930 = !DILocation(line: 247, column: 3, scope: !866)
!931 = !DILocation(line: 248, column: 5, scope: !932)
!932 = distinct !DILexicalBlock(scope: !863, file: !133, line: 247, column: 10)
!933 = !DILocation(line: 248, column: 15, scope: !932)
!934 = !DILocation(line: 248, column: 20, scope: !932)
!935 = !DILocation(line: 250, column: 33, scope: !778)
!936 = !DILocation(line: 250, column: 40, scope: !778)
!937 = !DILocation(line: 250, column: 44, scope: !778)
!938 = !DILocation(line: 250, column: 43, scope: !778)
!939 = !DILocation(line: 250, column: 22, scope: !778)
!940 = !DILocation(line: 250, column: 3, scope: !778)
!941 = !DILocation(line: 250, column: 13, scope: !778)
!942 = !DILocation(line: 250, column: 20, scope: !778)
!943 = !DILocation(line: 251, column: 19, scope: !778)
!944 = !DILocation(line: 251, column: 29, scope: !778)
!945 = !DILocation(line: 251, column: 11, scope: !778)
!946 = !DILocation(line: 251, column: 9, scope: !778)
!947 = !DILocation(line: 252, column: 7, scope: !948)
!948 = distinct !DILexicalBlock(scope: !778, file: !133, line: 252, column: 7)
!949 = !DILocation(line: 252, column: 7, scope: !778)
!950 = !DILocation(line: 253, column: 12, scope: !951)
!951 = distinct !DILexicalBlock(scope: !948, file: !133, line: 252, column: 15)
!952 = !DILocation(line: 253, column: 15, scope: !951)
!953 = !DILocation(line: 255, column: 10, scope: !954)
!954 = distinct !DILexicalBlock(scope: !951, file: !133, line: 255, column: 9)
!955 = !DILocation(line: 255, column: 9, scope: !954)
!956 = !DILocation(line: 255, column: 17, scope: !954)
!957 = !DILocation(line: 255, column: 9, scope: !951)
!958 = !DILocation(line: 256, column: 29, scope: !954)
!959 = !DILocation(line: 256, column: 33, scope: !954)
!960 = !DILocation(line: 256, column: 14, scope: !961)
!961 = !DILexicalBlockFile(scope: !954, file: !133, discriminator: 1)
!962 = !DILocation(line: 256, column: 7, scope: !954)
!963 = !DILocation(line: 257, column: 3, scope: !951)
!964 = !DILocation(line: 258, column: 23, scope: !778)
!965 = !DILocation(line: 258, column: 32, scope: !801)
!966 = !DILocation(line: 258, column: 23, scope: !801)
!967 = !DILocation(line: 258, column: 23, scope: !805)
!968 = !DILocation(line: 258, column: 23, scope: !809)
!969 = !DILocation(line: 258, column: 3, scope: !809)
!970 = !DILocation(line: 258, column: 13, scope: !809)
!971 = !DILocation(line: 258, column: 21, scope: !809)
!972 = !DILocation(line: 261, column: 9, scope: !778)
!973 = !DILocation(line: 261, column: 19, scope: !778)
!974 = !DILocation(line: 261, column: 7, scope: !778)
!975 = !DILocation(line: 262, column: 9, scope: !976)
!976 = distinct !DILexicalBlock(scope: !778, file: !133, line: 262, column: 7)
!977 = !DILocation(line: 262, column: 8, scope: !976)
!978 = !DILocation(line: 262, column: 7, scope: !778)
!979 = !DILocation(line: 263, column: 27, scope: !976)
!980 = !DILocation(line: 263, column: 31, scope: !976)
!981 = !DILocation(line: 263, column: 12, scope: !982)
!982 = !DILexicalBlockFile(scope: !976, file: !133, discriminator: 1)
!983 = !DILocation(line: 263, column: 5, scope: !976)
!984 = !DILocation(line: 264, column: 8, scope: !985)
!985 = distinct !DILexicalBlock(scope: !778, file: !133, line: 264, column: 7)
!986 = !DILocation(line: 264, column: 7, scope: !985)
!987 = !DILocation(line: 264, column: 12, scope: !985)
!988 = !DILocation(line: 264, column: 30, scope: !989)
!989 = !DILexicalBlockFile(scope: !985, file: !133, discriminator: 1)
!990 = !DILocation(line: 264, column: 26, scope: !989)
!991 = !DILocation(line: 264, column: 16, scope: !989)
!992 = !DILocation(line: 264, column: 7, scope: !989)
!993 = !DILocation(line: 265, column: 26, scope: !985)
!994 = !DILocation(line: 265, column: 30, scope: !985)
!995 = !DILocation(line: 265, column: 12, scope: !989)
!996 = !DILocation(line: 265, column: 5, scope: !985)
!997 = !DILocation(line: 266, column: 3, scope: !778)
!998 = !DILocation(line: 266, column: 11, scope: !999)
!999 = !DILexicalBlockFile(scope: !1000, file: !133, discriminator: 1)
!1000 = distinct !DILexicalBlock(scope: !1001, file: !133, line: 266, column: 3)
!1001 = distinct !DILexicalBlock(scope: !778, file: !133, line: 266, column: 3)
!1002 = !DILocation(line: 266, column: 10, scope: !999)
!1003 = !DILocation(line: 266, column: 3, scope: !999)
!1004 = !DILocation(line: 267, column: 21, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1006, file: !133, line: 267, column: 9)
!1006 = distinct !DILexicalBlock(scope: !1000, file: !133, line: 266, column: 23)
!1007 = !DILocation(line: 267, column: 20, scope: !1005)
!1008 = !DILocation(line: 267, column: 10, scope: !1005)
!1009 = !DILocation(line: 267, column: 26, scope: !1005)
!1010 = !DILocation(line: 267, column: 41, scope: !1011)
!1011 = !DILexicalBlockFile(scope: !1005, file: !133, discriminator: 1)
!1012 = !DILocation(line: 267, column: 40, scope: !1011)
!1013 = !DILocation(line: 267, column: 30, scope: !1011)
!1014 = !DILocation(line: 267, column: 46, scope: !1011)
!1015 = !DILocation(line: 267, column: 66, scope: !1016)
!1016 = !DILexicalBlockFile(scope: !1005, file: !133, discriminator: 2)
!1017 = !DILocation(line: 267, column: 65, scope: !1016)
!1018 = !DILocation(line: 267, column: 49, scope: !1016)
!1019 = !DILocation(line: 267, column: 71, scope: !1016)
!1020 = !DILocation(line: 267, column: 9, scope: !1016)
!1021 = !DILocation(line: 268, column: 28, scope: !1005)
!1022 = !DILocation(line: 268, column: 32, scope: !1005)
!1023 = !DILocation(line: 268, column: 14, scope: !1011)
!1024 = !DILocation(line: 268, column: 7, scope: !1005)
!1025 = !DILocation(line: 269, column: 3, scope: !1006)
!1026 = !DILocation(line: 266, column: 19, scope: !1027)
!1027 = !DILexicalBlockFile(scope: !1000, file: !133, discriminator: 2)
!1028 = !DILocation(line: 266, column: 3, scope: !1027)
!1029 = distinct !{!1029, !997}
!1030 = !DILocation(line: 270, column: 14, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !778, file: !133, line: 270, column: 3)
!1032 = !DILocation(line: 270, column: 24, scope: !1031)
!1033 = !DILocation(line: 270, column: 12, scope: !1031)
!1034 = !DILocation(line: 270, column: 8, scope: !1031)
!1035 = !DILocation(line: 270, column: 35, scope: !1036)
!1036 = !DILexicalBlockFile(scope: !1037, file: !133, discriminator: 1)
!1037 = distinct !DILexicalBlock(scope: !1031, file: !133, line: 270, column: 3)
!1038 = !DILocation(line: 270, column: 34, scope: !1036)
!1039 = !DILocation(line: 270, column: 3, scope: !1036)
!1040 = !DILocation(line: 271, column: 21, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1042, file: !133, line: 271, column: 9)
!1042 = distinct !DILexicalBlock(scope: !1037, file: !133, line: 270, column: 47)
!1043 = !DILocation(line: 271, column: 20, scope: !1041)
!1044 = !DILocation(line: 271, column: 10, scope: !1041)
!1045 = !DILocation(line: 271, column: 26, scope: !1041)
!1046 = !DILocation(line: 271, column: 41, scope: !1047)
!1047 = !DILexicalBlockFile(scope: !1041, file: !133, discriminator: 1)
!1048 = !DILocation(line: 271, column: 40, scope: !1047)
!1049 = !DILocation(line: 271, column: 30, scope: !1047)
!1050 = !DILocation(line: 271, column: 46, scope: !1047)
!1051 = !DILocation(line: 271, column: 64, scope: !1052)
!1052 = !DILexicalBlockFile(scope: !1041, file: !133, discriminator: 2)
!1053 = !DILocation(line: 271, column: 63, scope: !1052)
!1054 = !DILocation(line: 271, column: 49, scope: !1052)
!1055 = !DILocation(line: 271, column: 69, scope: !1052)
!1056 = !DILocation(line: 271, column: 9, scope: !1052)
!1057 = !DILocation(line: 272, column: 28, scope: !1041)
!1058 = !DILocation(line: 272, column: 32, scope: !1041)
!1059 = !DILocation(line: 272, column: 14, scope: !1047)
!1060 = !DILocation(line: 272, column: 7, scope: !1041)
!1061 = !DILocation(line: 273, column: 3, scope: !1042)
!1062 = !DILocation(line: 270, column: 43, scope: !1063)
!1063 = !DILexicalBlockFile(scope: !1037, file: !133, discriminator: 2)
!1064 = !DILocation(line: 270, column: 3, scope: !1063)
!1065 = distinct !{!1065, !1066}
!1066 = !DILocation(line: 270, column: 3, scope: !778)
!1067 = !DILocation(line: 275, column: 3, scope: !778)
!1068 = !DILocation(line: 276, column: 1, scope: !778)
!1069 = distinct !DISubprogram(name: "c_isblank", scope: !118, file: !118, line: 51, type: !619, isLocal: true, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !139)
!1070 = !DILocalVariable(name: "c", arg: 1, scope: !1069, file: !118, line: 51, type: !173)
!1071 = !DILocation(line: 51, column: 15, scope: !1069)
!1072 = !DILocation(line: 53, column: 18, scope: !1069)
!1073 = !DILocation(line: 53, column: 9, scope: !1069)
!1074 = !DILocation(line: 53, column: 2, scope: !1069)
!1075 = distinct !DISubprogram(name: "c_isdigit", scope: !118, file: !118, line: 78, type: !619, isLocal: true, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !139)
!1076 = !DILocalVariable(name: "c", arg: 1, scope: !1075, file: !118, line: 78, type: !173)
!1077 = !DILocation(line: 78, column: 15, scope: !1075)
!1078 = !DILocation(line: 80, column: 18, scope: !1075)
!1079 = !DILocation(line: 80, column: 9, scope: !1075)
!1080 = !DILocation(line: 80, column: 2, scope: !1075)
!1081 = distinct !DISubprogram(name: "c_isalpha", scope: !118, file: !118, line: 105, type: !619, isLocal: true, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !139)
!1082 = !DILocalVariable(name: "c", arg: 1, scope: !1081, file: !118, line: 105, type: !173)
!1083 = !DILocation(line: 105, column: 15, scope: !1081)
!1084 = !DILocation(line: 107, column: 18, scope: !1081)
!1085 = !DILocation(line: 107, column: 9, scope: !1081)
!1086 = !DILocation(line: 107, column: 2, scope: !1081)
!1087 = distinct !DISubprogram(name: "parse_db_version", scope: !133, file: !133, line: 292, type: !1088, isLocal: false, isDefinition: true, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !139)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!173, !178, !781, !136}
!1090 = !DILocalVariable(name: "ps", arg: 1, scope: !1087, file: !133, line: 292, type: !178)
!1091 = !DILocation(line: 292, column: 40, scope: !1087)
!1092 = !DILocalVariable(name: "version", arg: 2, scope: !1087, file: !133, line: 292, type: !781)
!1093 = !DILocation(line: 292, column: 65, scope: !1087)
!1094 = !DILocalVariable(name: "value", arg: 3, scope: !1087, file: !133, line: 293, type: !136)
!1095 = !DILocation(line: 293, column: 30, scope: !1087)
!1096 = !DILocation(line: 295, column: 23, scope: !1087)
!1097 = !DILocation(line: 295, column: 27, scope: !1087)
!1098 = !DILocation(line: 295, column: 3, scope: !1087)
!1099 = !DILocation(line: 297, column: 20, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1087, file: !133, line: 297, column: 7)
!1101 = !DILocation(line: 297, column: 29, scope: !1100)
!1102 = !DILocation(line: 297, column: 37, scope: !1100)
!1103 = !DILocation(line: 297, column: 41, scope: !1100)
!1104 = !DILocation(line: 297, column: 7, scope: !1100)
!1105 = !DILocation(line: 297, column: 46, scope: !1100)
!1106 = !DILocation(line: 297, column: 7, scope: !1087)
!1107 = !DILocation(line: 298, column: 5, scope: !1100)
!1108 = !DILocation(line: 301, column: 9, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1087, file: !133, line: 301, column: 7)
!1110 = !DILocation(line: 301, column: 13, scope: !1109)
!1111 = !DILocation(line: 301, column: 19, scope: !1109)
!1112 = !DILocation(line: 301, column: 7, scope: !1087)
!1113 = !DILocation(line: 302, column: 5, scope: !1109)
!1114 = !DILocation(line: 302, column: 9, scope: !1109)
!1115 = !DILocation(line: 302, column: 13, scope: !1109)
!1116 = !DILocation(line: 302, column: 18, scope: !1109)
!1117 = !DILocation(line: 304, column: 3, scope: !1087)
!1118 = !DILocation(line: 305, column: 1, scope: !1087)
!1119 = distinct !DISubprogram(name: "parse_must_have_field", scope: !133, file: !133, line: 308, type: !1120, isLocal: false, isDefinition: true, scopeLine: 310, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !139)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{null, !178, !136, !136}
!1122 = !DILocalVariable(name: "ps", arg: 1, scope: !1119, file: !133, line: 308, type: !178)
!1123 = !DILocation(line: 308, column: 45, scope: !1119)
!1124 = !DILocalVariable(name: "value", arg: 2, scope: !1119, file: !133, line: 309, type: !136)
!1125 = !DILocation(line: 309, column: 35, scope: !1119)
!1126 = !DILocalVariable(name: "what", arg: 3, scope: !1119, file: !133, line: 309, type: !136)
!1127 = !DILocation(line: 309, column: 54, scope: !1119)
!1128 = !DILocation(line: 311, column: 8, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1119, file: !133, line: 311, column: 7)
!1130 = !DILocation(line: 311, column: 7, scope: !1119)
!1131 = !DILocation(line: 312, column: 17, scope: !1129)
!1132 = !DILocation(line: 312, column: 20, scope: !1129)
!1133 = !DILocation(line: 312, column: 45, scope: !1129)
!1134 = !DILocation(line: 312, column: 5, scope: !1135)
!1135 = !DILexicalBlockFile(scope: !1129, file: !133, discriminator: 1)
!1136 = !DILocation(line: 312, column: 5, scope: !1129)
!1137 = !DILocation(line: 313, column: 14, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1129, file: !133, line: 313, column: 12)
!1139 = !DILocation(line: 313, column: 13, scope: !1138)
!1140 = !DILocation(line: 313, column: 12, scope: !1129)
!1141 = !DILocation(line: 314, column: 17, scope: !1138)
!1142 = !DILocation(line: 314, column: 20, scope: !1138)
!1143 = !DILocation(line: 314, column: 53, scope: !1138)
!1144 = !DILocation(line: 314, column: 5, scope: !1145)
!1145 = !DILexicalBlockFile(scope: !1138, file: !133, discriminator: 1)
!1146 = !DILocation(line: 314, column: 5, scope: !1138)
!1147 = !DILocation(line: 315, column: 1, scope: !1119)
!1148 = !DILocalVariable(name: "ps", arg: 1, scope: !175, file: !133, line: 318, type: !178)
!1149 = !DILocation(line: 318, column: 47, scope: !175)
!1150 = !DILocalVariable(name: "value", arg: 2, scope: !175, file: !133, line: 319, type: !328)
!1151 = !DILocation(line: 319, column: 38, scope: !175)
!1152 = !DILocalVariable(name: "what", arg: 3, scope: !175, file: !133, line: 319, type: !136)
!1153 = !DILocation(line: 319, column: 57, scope: !175)
!1154 = !DILocation(line: 323, column: 9, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !175, file: !133, line: 323, column: 7)
!1156 = !DILocation(line: 323, column: 8, scope: !1155)
!1157 = !DILocation(line: 323, column: 7, scope: !175)
!1158 = !DILocation(line: 324, column: 16, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1155, file: !133, line: 323, column: 16)
!1160 = !DILocation(line: 324, column: 19, scope: !1159)
!1161 = !DILocation(line: 324, column: 44, scope: !1159)
!1162 = !DILocation(line: 324, column: 5, scope: !1163)
!1163 = !DILexicalBlockFile(scope: !1159, file: !133, discriminator: 1)
!1164 = !DILocation(line: 325, column: 6, scope: !1159)
!1165 = !DILocation(line: 325, column: 12, scope: !1159)
!1166 = !DILocation(line: 326, column: 3, scope: !1159)
!1167 = !DILocation(line: 326, column: 17, scope: !1168)
!1168 = !DILexicalBlockFile(scope: !1169, file: !133, discriminator: 1)
!1169 = distinct !DILexicalBlock(scope: !1155, file: !133, line: 326, column: 14)
!1170 = !DILocation(line: 326, column: 16, scope: !1168)
!1171 = !DILocation(line: 326, column: 15, scope: !1168)
!1172 = !DILocation(line: 326, column: 14, scope: !1168)
!1173 = !DILocation(line: 327, column: 16, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1169, file: !133, line: 326, column: 24)
!1175 = !DILocation(line: 327, column: 19, scope: !1174)
!1176 = !DILocation(line: 327, column: 52, scope: !1174)
!1177 = !DILocation(line: 327, column: 5, scope: !1178)
!1178 = !DILexicalBlockFile(scope: !1174, file: !133, discriminator: 1)
!1179 = !DILocation(line: 328, column: 3, scope: !1174)
!1180 = !DILocation(line: 329, column: 1, scope: !175)
