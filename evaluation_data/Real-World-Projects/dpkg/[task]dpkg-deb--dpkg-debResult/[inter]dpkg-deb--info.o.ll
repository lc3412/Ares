; ModuleID = './[inter]dpkg-deb--info.o.i'
source_filename = "./[inter]dpkg-deb--info.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cmdinfo = type { i8*, i8, i32, i32*, i8**, void (%struct.cmdinfo*, i8*)*, i32, i8*, i32 (i8**)* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
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
%struct.fsys_namenode_list = type opaque
%struct.parsedb_state = type { i32, i32, %struct.dpkg_error, %struct.pkginfo*, %struct.pkgbin*, i8*, i8*, i8*, i8*, i32, i32 }
%struct.dpkg_error = type { i32, i32, i8* }
%struct.varbuf = type { i64, i64, i8* }
%struct.pkg_format_node = type opaque
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@showformat = external global i8*, align 8
@.str = private unnamed_addr constant [25 x i8] c"error in show format: %s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"control\00", align 1
@do_field.controlonly = internal constant [2 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* null], align 16
@.str.3 = private unnamed_addr constant [32 x i8] c"--%s takes exactly one argument\00", align 1
@cipaction = external global %struct.cmdinfo*, align 8
@.str.4 = private unnamed_addr constant [36 x i8] c"--%s needs a .deb filename argument\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"dpkg-deb\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"unable to create temporary directory\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"cannot extract control file '%s' from '%s': %s\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"'%.255s' contains no control component '%.255s'\00", align 1
@.str.9 = private unnamed_addr constant [64 x i8] c"open component '%.255s' (in %.255s) failed in an unexpected way\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"%d requested control component is missing\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"%d requested control components are missing\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"cannot scan directory '%.255s'\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"cannot stat '%.255s' (in '%.255s')\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"cannot open '%.255s' (in '%.255s')\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"failed to read '%.255s' (in '%.255s')\00", align 1
@.str.17 = private unnamed_addr constant [47 x i8] c" %7jd bytes, %5d lines   %c  %-20.127s %.127s\0A\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"     not a plain file          %.255s\0A\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"no 'control' file in control archive!\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.20 = private unnamed_addr constant [18 x i8] c"<standard output>\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@fieldinfos = external constant [0 x %struct.fieldinfo], align 8
@.str.23 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @do_showinfo(i8**) #0 !dbg !150 {
  %2 = alloca i8**, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dpkg_error, align 8
  %7 = alloca %struct.pkginfo*, align 8
  %8 = alloca %struct.pkg_format_node*, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !151, metadata !152), !dbg !153
  call void @llvm.dbg.declare(metadata i8** %3, metadata !154, metadata !152), !dbg !155
  call void @llvm.dbg.declare(metadata i8** %4, metadata !156, metadata !152), !dbg !157
  call void @llvm.dbg.declare(metadata i8** %5, metadata !158, metadata !152), !dbg !160
  call void @llvm.dbg.declare(metadata %struct.dpkg_error* %6, metadata !161, metadata !152), !dbg !167
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %7, metadata !168, metadata !152), !dbg !304
  call void @llvm.dbg.declare(metadata %struct.pkg_format_node** %8, metadata !305, metadata !152), !dbg !309
  %9 = load i8*, i8** @showformat, align 8, !dbg !310
  %10 = call %struct.pkg_format_node* @pkg_format_parse(i8* %9, %struct.dpkg_error* %6), !dbg !311
  store %struct.pkg_format_node* %10, %struct.pkg_format_node** %8, align 8, !dbg !312
  %11 = load %struct.pkg_format_node*, %struct.pkg_format_node** %8, align 8, !dbg !313
  %12 = icmp ne %struct.pkg_format_node* %11, null, !dbg !313
  br i1 %12, label %17, label %13, !dbg !315

; <label>:13:                                     ; preds = %1
  %14 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0)) #9, !dbg !316
  %15 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %6, i32 0, i32 2, !dbg !317
  %16 = load i8*, i8** %15, align 8, !dbg !317
  call void (i8*, ...) @ohshit(i8* %14, i8* %16) #10, !dbg !318
  unreachable, !dbg !320

; <label>:17:                                     ; preds = %1
  call void @info_prepare(i8*** %2, i8** %3, i8** %4, i32 1), !dbg !321
  %18 = load i8*, i8** %4, align 8, !dbg !322
  %19 = call i8* (i8*, ...) @str_fmt(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0)), !dbg !323
  store i8* %19, i8** %5, align 8, !dbg !324
  %20 = load i8*, i8** %5, align 8, !dbg !325
  %21 = call i32 @parsedb(i8* %20, i32 23, %struct.pkginfo** %7), !dbg !326
  %22 = load %struct.pkg_format_node*, %struct.pkg_format_node** %8, align 8, !dbg !327
  %23 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !328
  %24 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !329
  %25 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %24, i32 0, i32 10, !dbg !330
  call void @pkg_format_show(%struct.pkg_format_node* %22, %struct.pkginfo* %23, %struct.pkgbin* %25), !dbg !331
  %26 = load %struct.pkg_format_node*, %struct.pkg_format_node** %8, align 8, !dbg !332
  call void @pkg_format_free(%struct.pkg_format_node* %26), !dbg !333
  %27 = load i8*, i8** %5, align 8, !dbg !334
  call void @free(i8* %27) #9, !dbg !335
  ret i32 0, !dbg !336
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare %struct.pkg_format_node* @pkg_format_parse(i8*, %struct.dpkg_error*) #2

; Function Attrs: noreturn
declare void @ohshit(i8*, ...) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

; Function Attrs: nounwind uwtable
define internal void @info_prepare(i8***, i8**, i8**, i32) #0 !dbg !337 {
  %5 = alloca i8***, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8*** %0, i8**** %5, align 8
  call void @llvm.dbg.declare(metadata i8**** %5, metadata !342, metadata !152), !dbg !343
  store i8** %1, i8*** %6, align 8
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !344, metadata !152), !dbg !345
  store i8** %2, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !346, metadata !152), !dbg !347
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !348, metadata !152), !dbg !349
  call void @llvm.dbg.declare(metadata i8** %9, metadata !350, metadata !152), !dbg !351
  %10 = load i8***, i8**** %5, align 8, !dbg !352
  %11 = load i8**, i8*** %10, align 8, !dbg !353
  %12 = getelementptr inbounds i8*, i8** %11, i32 1, !dbg !353
  store i8** %12, i8*** %10, align 8, !dbg !353
  %13 = load i8*, i8** %11, align 8, !dbg !354
  %14 = load i8**, i8*** %6, align 8, !dbg !355
  store i8* %13, i8** %14, align 8, !dbg !356
  %15 = load i8**, i8*** %6, align 8, !dbg !357
  %16 = load i8*, i8** %15, align 8, !dbg !359
  %17 = icmp ne i8* %16, null, !dbg !359
  br i1 %17, label %23, label %18, !dbg !360

; <label>:18:                                     ; preds = %4
  %19 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i32 0, i32 0)) #9, !dbg !361
  %20 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !363
  %21 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %20, i32 0, i32 0, !dbg !364
  %22 = load i8*, i8** %21, align 8, !dbg !364
  call void (i8*, ...) @badusage(i8* %19, i8* %22) #10, !dbg !365
  unreachable, !dbg !367

; <label>:23:                                     ; preds = %4
  %24 = call i8* @path_make_temp_template(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0)), !dbg !368
  %25 = call i8* @mkdtemp(i8* %24) #9, !dbg !369
  store i8* %25, i8** %9, align 8, !dbg !371
  %26 = load i8*, i8** %9, align 8, !dbg !372
  %27 = icmp ne i8* %26, null, !dbg !372
  br i1 %27, label %30, label %28, !dbg !374

; <label>:28:                                     ; preds = %23
  %29 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i32 0, i32 0)) #9, !dbg !375
  call void (i8*, ...) @ohshite(i8* %29) #10, !dbg !376
  unreachable, !dbg !378

; <label>:30:                                     ; preds = %23
  %31 = load i8*, i8** %9, align 8, !dbg !379
  %32 = load i8**, i8*** %7, align 8, !dbg !380
  store i8* %31, i8** %32, align 8, !dbg !381
  %33 = load i8*, i8** %9, align 8, !dbg !382
  call void (void (i32, i8**)*, i32, i32, ...) @push_cleanup(void (i32, i8**)* @cu_info_prepare, i32 -1, i32 1, i8* %33), !dbg !383
  %34 = load i8**, i8*** %6, align 8, !dbg !384
  %35 = load i8*, i8** %34, align 8, !dbg !385
  %36 = load i8*, i8** %9, align 8, !dbg !386
  %37 = load i32, i32* %8, align 4, !dbg !387
  call void @extracthalf(i8* %35, i8* %36, i32 10, i32 %37), !dbg !388
  ret void, !dbg !389
}

declare i8* @str_fmt(i8*, ...) #2

declare i32 @parsedb(i8*, i32, %struct.pkginfo**) #2

declare void @pkg_format_show(%struct.pkg_format_node*, %struct.pkginfo*, %struct.pkgbin*) #2

declare void @pkg_format_free(%struct.pkg_format_node*) #2

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: nounwind uwtable
define i32 @do_info(i8**) #0 !dbg !390 {
  %2 = alloca i8**, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !391, metadata !152), !dbg !392
  call void @llvm.dbg.declare(metadata i8** %3, metadata !393, metadata !152), !dbg !394
  call void @llvm.dbg.declare(metadata i8** %4, metadata !395, metadata !152), !dbg !396
  %5 = load i8**, i8*** %2, align 8, !dbg !397
  %6 = load i8*, i8** %5, align 8, !dbg !399
  %7 = icmp ne i8* %6, null, !dbg !399
  br i1 %7, label %8, label %17, !dbg !400

; <label>:8:                                      ; preds = %1
  %9 = load i8**, i8*** %2, align 8, !dbg !401
  %10 = getelementptr inbounds i8*, i8** %9, i64 1, !dbg !401
  %11 = load i8*, i8** %10, align 8, !dbg !401
  %12 = icmp ne i8* %11, null, !dbg !401
  br i1 %12, label %13, label %17, !dbg !403

; <label>:13:                                     ; preds = %8
  call void @info_prepare(i8*** %2, i8** %3, i8** %4, i32 1), !dbg !404
  %14 = load i8*, i8** %3, align 8, !dbg !406
  %15 = load i8*, i8** %4, align 8, !dbg !407
  %16 = load i8**, i8*** %2, align 8, !dbg !408
  call void @info_spew(i8* %14, i8* %15, i8** %16), !dbg !409
  br label %20, !dbg !410

; <label>:17:                                     ; preds = %8, %1
  call void @info_prepare(i8*** %2, i8** %3, i8** %4, i32 2), !dbg !411
  %18 = load i8*, i8** %3, align 8, !dbg !413
  %19 = load i8*, i8** %4, align 8, !dbg !414
  call void @info_list(i8* %18, i8* %19), !dbg !415
  br label %20

; <label>:20:                                     ; preds = %17, %13
  ret i32 0, !dbg !416
}

; Function Attrs: nounwind uwtable
define internal void @info_spew(i8*, i8*, i8**) #0 !dbg !417 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.dpkg_error, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.varbuf, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !420, metadata !152), !dbg !421
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !422, metadata !152), !dbg !423
  store i8** %2, i8*** %6, align 8
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !424, metadata !152), !dbg !425
  call void @llvm.dbg.declare(metadata %struct.dpkg_error* %7, metadata !426, metadata !152), !dbg !427
  call void @llvm.dbg.declare(metadata i8** %8, metadata !428, metadata !152), !dbg !429
  call void @llvm.dbg.declare(metadata %struct.varbuf* %9, metadata !430, metadata !152), !dbg !440
  %12 = bitcast %struct.varbuf* %9 to i8*, !dbg !440
  call void @llvm.memset.p0i8.i64(i8* %12, i8 0, i64 24, i32 8, i1 false), !dbg !440
  call void @llvm.dbg.declare(metadata i32* %10, metadata !441, metadata !152), !dbg !442
  call void @llvm.dbg.declare(metadata i32* %11, metadata !443, metadata !152), !dbg !444
  store i32 0, i32* %11, align 4, !dbg !444
  br label %13, !dbg !445

; <label>:13:                                     ; preds = %56, %3
  %14 = load i8**, i8*** %6, align 8, !dbg !446
  %15 = getelementptr inbounds i8*, i8** %14, i32 1, !dbg !446
  store i8** %15, i8*** %6, align 8, !dbg !446
  %16 = load i8*, i8** %14, align 8, !dbg !448
  store i8* %16, i8** %8, align 8, !dbg !449
  %17 = icmp ne i8* %16, null, !dbg !450
  br i1 %17, label %18, label %57, !dbg !451

; <label>:18:                                     ; preds = %13
  call void @varbuf_reset(%struct.varbuf* %9), !dbg !452
  %19 = load i8*, i8** %5, align 8, !dbg !454
  %20 = load i8*, i8** %8, align 8, !dbg !455
  %21 = call i32 (%struct.varbuf*, i8*, ...) @varbuf_printf(%struct.varbuf* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* %19, i8* %20), !dbg !456
  %22 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %9, i32 0, i32 2, !dbg !457
  %23 = load i8*, i8** %22, align 8, !dbg !457
  %24 = call i32 (i8*, i32, ...) @open(i8* %23, i32 0), !dbg !458
  store i32 %24, i32* %10, align 4, !dbg !459
  %25 = load i32, i32* %10, align 4, !dbg !460
  %26 = icmp sge i32 %25, 0, !dbg !462
  br i1 %26, label %27, label %41, !dbg !463

; <label>:27:                                     ; preds = %18
  %28 = load i32, i32* %10, align 4, !dbg !464
  %29 = call i64 @buffer_copy_IntInt(i32 %28, i32 0, i8* null, i32 4, i32 1, i32 2, i64 -1, %struct.dpkg_error* %7), !dbg !467
  %30 = icmp slt i64 %29, 0, !dbg !468
  br i1 %30, label %31, label %38, !dbg !469

; <label>:31:                                     ; preds = %27
  %32 = call i8* @gettext(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i32 0, i32 0)) #9, !dbg !470
  %33 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %9, i32 0, i32 2, !dbg !471
  %34 = load i8*, i8** %33, align 8, !dbg !471
  %35 = load i8*, i8** %4, align 8, !dbg !472
  %36 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %7, i32 0, i32 2, !dbg !473
  %37 = load i8*, i8** %36, align 8, !dbg !473
  call void (i8*, ...) @ohshit(i8* %32, i8* %34, i8* %35, i8* %37) #10, !dbg !474
  unreachable, !dbg !476

; <label>:38:                                     ; preds = %27
  %39 = load i32, i32* %10, align 4, !dbg !477
  %40 = call i32 @close(i32 %39), !dbg !478
  br label %56, !dbg !479

; <label>:41:                                     ; preds = %18
  %42 = call i32* @__errno_location() #1, !dbg !480
  %43 = load i32, i32* %42, align 4, !dbg !483
  %44 = icmp eq i32 %43, 2, !dbg !484
  br i1 %44, label %45, label %51, !dbg !485

; <label>:45:                                     ; preds = %41
  %46 = call i8* @gettext(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i32 0, i32 0)) #9, !dbg !486
  %47 = load i8*, i8** %4, align 8, !dbg !488
  %48 = load i8*, i8** %8, align 8, !dbg !489
  call void (i8*, ...) @notice(i8* %46, i8* %47, i8* %48), !dbg !490
  %49 = load i32, i32* %11, align 4, !dbg !492
  %50 = add nsw i32 %49, 1, !dbg !492
  store i32 %50, i32* %11, align 4, !dbg !492
  br label %55, !dbg !493

; <label>:51:                                     ; preds = %41
  %52 = call i8* @gettext(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.9, i32 0, i32 0)) #9, !dbg !494
  %53 = load i8*, i8** %8, align 8, !dbg !496
  %54 = load i8*, i8** %5, align 8, !dbg !497
  call void (i8*, ...) @ohshite(i8* %52, i8* %53, i8* %54) #10, !dbg !498
  unreachable, !dbg !500

; <label>:55:                                     ; preds = %45
  br label %56

; <label>:56:                                     ; preds = %55, %38
  br label %13, !dbg !501, !llvm.loop !503

; <label>:57:                                     ; preds = %13
  call void @varbuf_destroy(%struct.varbuf* %9), !dbg !504
  %58 = load i32, i32* %11, align 4, !dbg !505
  %59 = icmp sgt i32 %58, 0, !dbg !507
  br i1 %59, label %60, label %65, !dbg !508

; <label>:60:                                     ; preds = %57
  %61 = load i32, i32* %11, align 4, !dbg !509
  %62 = sext i32 %61 to i64, !dbg !509
  %63 = call i8* @ngettext(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i32 0, i32 0), i64 %62) #9, !dbg !510
  %64 = load i32, i32* %11, align 4, !dbg !511
  call void (i8*, ...) @ohshit(i8* %63, i32 %64) #10, !dbg !512
  unreachable, !dbg !514

; <label>:65:                                     ; preds = %57
  ret void, !dbg !515
}

; Function Attrs: nounwind uwtable
define internal void @info_list(i8*, i8*) #0 !dbg !516 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [4097 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.varbuf, align 8
  %10 = alloca %struct.dirent**, align 8
  %11 = alloca %struct.dirent*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct._IO_FILE*, align 8
  %15 = alloca %struct.stat, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !519, metadata !152), !dbg !520
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !521, metadata !152), !dbg !522
  call void @llvm.dbg.declare(metadata [4097 x i8]* %5, metadata !523, metadata !152), !dbg !527
  call void @llvm.dbg.declare(metadata i8** %6, metadata !528, metadata !152), !dbg !529
  call void @llvm.dbg.declare(metadata i32* %7, metadata !530, metadata !152), !dbg !531
  call void @llvm.dbg.declare(metadata i32* %8, metadata !532, metadata !152), !dbg !533
  call void @llvm.dbg.declare(metadata %struct.varbuf* %9, metadata !534, metadata !152), !dbg !535
  %17 = bitcast %struct.varbuf* %9 to i8*, !dbg !535
  call void @llvm.memset.p0i8.i64(i8* %17, i8 0, i64 24, i32 8, i1 false), !dbg !535
  call void @llvm.dbg.declare(metadata %struct.dirent*** %10, metadata !536, metadata !152), !dbg !553
  call void @llvm.dbg.declare(metadata %struct.dirent** %11, metadata !554, metadata !152), !dbg !555
  call void @llvm.dbg.declare(metadata i32* %12, metadata !556, metadata !152), !dbg !557
  call void @llvm.dbg.declare(metadata i32* %13, metadata !558, metadata !152), !dbg !559
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %14, metadata !560, metadata !152), !dbg !613
  call void @llvm.dbg.declare(metadata %struct.stat* %15, metadata !614, metadata !152), !dbg !650
  call void @llvm.dbg.declare(metadata i32* %16, metadata !651, metadata !152), !dbg !652
  %18 = load i8*, i8** %4, align 8, !dbg !653
  %19 = call i32 @scandir(i8* %18, %struct.dirent*** %10, i32 (%struct.dirent*)* @ilist_select, i32 (%struct.dirent**, %struct.dirent**)* @alphasort), !dbg !654
  store i32 %19, i32* %12, align 4, !dbg !655
  %20 = load i32, i32* %12, align 4, !dbg !656
  %21 = icmp eq i32 %20, -1, !dbg !658
  br i1 %21, label %22, label %25, !dbg !659

; <label>:22:                                     ; preds = %2
  %23 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i32 0, i32 0)) #9, !dbg !660
  %24 = load i8*, i8** %4, align 8, !dbg !661
  call void (i8*, ...) @ohshite(i8* %23, i8* %24) #10, !dbg !662
  unreachable, !dbg !664

; <label>:25:                                     ; preds = %2
  store i32 0, i32* %13, align 4, !dbg !665
  br label %26, !dbg !667

; <label>:26:                                     ; preds = %166, %25
  %27 = load i32, i32* %13, align 4, !dbg !668
  %28 = load i32, i32* %12, align 4, !dbg !671
  %29 = icmp slt i32 %27, %28, !dbg !672
  br i1 %29, label %30, label %169, !dbg !673

; <label>:30:                                     ; preds = %26
  %31 = load i32, i32* %13, align 4, !dbg !674
  %32 = sext i32 %31 to i64, !dbg !676
  %33 = load %struct.dirent**, %struct.dirent*** %10, align 8, !dbg !676
  %34 = getelementptr inbounds %struct.dirent*, %struct.dirent** %33, i64 %32, !dbg !676
  %35 = load %struct.dirent*, %struct.dirent** %34, align 8, !dbg !676
  store %struct.dirent* %35, %struct.dirent** %11, align 8, !dbg !677
  call void @varbuf_reset(%struct.varbuf* %9), !dbg !678
  %36 = load i8*, i8** %4, align 8, !dbg !679
  %37 = load %struct.dirent*, %struct.dirent** %11, align 8, !dbg !680
  %38 = getelementptr inbounds %struct.dirent, %struct.dirent* %37, i32 0, i32 4, !dbg !681
  %39 = getelementptr inbounds [256 x i8], [256 x i8]* %38, i32 0, i32 0, !dbg !680
  %40 = call i32 (%struct.varbuf*, i8*, ...) @varbuf_printf(%struct.varbuf* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* %36, i8* %39), !dbg !682
  %41 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %9, i32 0, i32 2, !dbg !683
  %42 = load i8*, i8** %41, align 8, !dbg !683
  %43 = call i32 @stat(i8* %42, %struct.stat* %15) #9, !dbg !685
  %44 = icmp ne i32 %43, 0, !dbg !685
  br i1 %44, label %45, label %51, !dbg !686

; <label>:45:                                     ; preds = %30
  %46 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0)) #9, !dbg !687
  %47 = load %struct.dirent*, %struct.dirent** %11, align 8, !dbg !688
  %48 = getelementptr inbounds %struct.dirent, %struct.dirent* %47, i32 0, i32 4, !dbg !689
  %49 = getelementptr inbounds [256 x i8], [256 x i8]* %48, i32 0, i32 0, !dbg !688
  %50 = load i8*, i8** %4, align 8, !dbg !690
  call void (i8*, ...) @ohshite(i8* %46, i8* %49, i8* %50) #10, !dbg !691
  unreachable, !dbg !693

; <label>:51:                                     ; preds = %30
  %52 = getelementptr inbounds %struct.stat, %struct.stat* %15, i32 0, i32 3, !dbg !694
  %53 = load i32, i32* %52, align 8, !dbg !694
  %54 = and i32 %53, 61440, !dbg !696
  %55 = icmp eq i32 %54, 32768, !dbg !697
  br i1 %55, label %56, label %157, !dbg !698

; <label>:56:                                     ; preds = %51
  %57 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %9, i32 0, i32 2, !dbg !699
  %58 = load i8*, i8** %57, align 8, !dbg !699
  %59 = call %struct._IO_FILE* @fopen(i8* %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)), !dbg !701
  store %struct._IO_FILE* %59, %struct._IO_FILE** %14, align 8, !dbg !702
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8, !dbg !703
  %61 = icmp ne %struct._IO_FILE* %60, null, !dbg !703
  br i1 %61, label %68, label %62, !dbg !705

; <label>:62:                                     ; preds = %56
  %63 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i32 0, i32 0)) #9, !dbg !706
  %64 = load %struct.dirent*, %struct.dirent** %11, align 8, !dbg !707
  %65 = getelementptr inbounds %struct.dirent, %struct.dirent* %64, i32 0, i32 4, !dbg !708
  %66 = getelementptr inbounds [256 x i8], [256 x i8]* %65, i32 0, i32 0, !dbg !707
  %67 = load i8*, i8** %4, align 8, !dbg !709
  call void (i8*, ...) @ohshite(i8* %63, i8* %66, i8* %67) #10, !dbg !710
  unreachable, !dbg !712

; <label>:68:                                     ; preds = %56
  store i32 0, i32* %8, align 4, !dbg !713
  %69 = getelementptr inbounds [4097 x i8], [4097 x i8]* %5, i64 0, i64 0, !dbg !714
  store i8 0, i8* %69, align 16, !dbg !715
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8, !dbg !716
  %71 = call i32 @_IO_getc(%struct._IO_FILE* %70), !dbg !716
  %72 = icmp eq i32 %71, 35, !dbg !718
  br i1 %72, label %73, label %118, !dbg !719

; <label>:73:                                     ; preds = %68
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8, !dbg !720
  %75 = call i32 @_IO_getc(%struct._IO_FILE* %74), !dbg !720
  %76 = icmp eq i32 %75, 33, !dbg !723
  br i1 %76, label %77, label %117, !dbg !724

; <label>:77:                                     ; preds = %73
  br label %78, !dbg !725

; <label>:78:                                     ; preds = %82, %77
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8, !dbg !727
  %80 = call i32 @_IO_getc(%struct._IO_FILE* %79), !dbg !727
  store i32 %80, i32* %16, align 4, !dbg !729
  %81 = icmp eq i32 %80, 32, !dbg !730
  br i1 %81, label %82, label %83, !dbg !731

; <label>:82:                                     ; preds = %78
  br label %78, !dbg !732, !llvm.loop !734

; <label>:83:                                     ; preds = %78
  %84 = getelementptr inbounds [4097 x i8], [4097 x i8]* %5, i32 0, i32 0, !dbg !735
  store i8* %84, i8** %6, align 8, !dbg !736
  %85 = load i8*, i8** %6, align 8, !dbg !737
  %86 = getelementptr inbounds i8, i8* %85, i32 1, !dbg !737
  store i8* %86, i8** %6, align 8, !dbg !737
  store i8 35, i8* %85, align 1, !dbg !738
  %87 = load i8*, i8** %6, align 8, !dbg !739
  %88 = getelementptr inbounds i8, i8* %87, i32 1, !dbg !739
  store i8* %88, i8** %6, align 8, !dbg !739
  store i8 33, i8* %87, align 1, !dbg !740
  store i32 2, i32* %7, align 4, !dbg !741
  br label %89, !dbg !742

; <label>:89:                                     ; preds = %100, %83
  %90 = load i32, i32* %7, align 4, !dbg !743
  %91 = icmp slt i32 %90, 4096, !dbg !744
  br i1 %91, label %92, label %98, !dbg !745

; <label>:92:                                     ; preds = %89
  %93 = load i32, i32* %16, align 4, !dbg !746
  %94 = call zeroext i1 @c_isspace(i32 %93), !dbg !747
  br i1 %94, label %98, label %95, !dbg !748

; <label>:95:                                     ; preds = %92
  %96 = load i32, i32* %16, align 4, !dbg !749
  %97 = icmp ne i32 %96, -1, !dbg !751
  br label %98

; <label>:98:                                     ; preds = %95, %92, %89
  %99 = phi i1 [ false, %92 ], [ false, %89 ], [ %97, %95 ]
  br i1 %99, label %100, label %109, !dbg !752

; <label>:100:                                    ; preds = %98
  %101 = load i32, i32* %16, align 4, !dbg !754
  %102 = trunc i32 %101 to i8, !dbg !754
  %103 = load i8*, i8** %6, align 8, !dbg !756
  %104 = getelementptr inbounds i8, i8* %103, i32 1, !dbg !756
  store i8* %104, i8** %6, align 8, !dbg !756
  store i8 %102, i8* %103, align 1, !dbg !757
  %105 = load i32, i32* %7, align 4, !dbg !758
  %106 = add nsw i32 %105, 1, !dbg !758
  store i32 %106, i32* %7, align 4, !dbg !758
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8, !dbg !759
  %108 = call i32 @_IO_getc(%struct._IO_FILE* %107), !dbg !759
  store i32 %108, i32* %16, align 4, !dbg !760
  br label %89, !dbg !761, !llvm.loop !763

; <label>:109:                                    ; preds = %98
  %110 = load i8*, i8** %6, align 8, !dbg !764
  store i8 0, i8* %110, align 1, !dbg !765
  %111 = load i32, i32* %16, align 4, !dbg !766
  %112 = icmp eq i32 %111, 10, !dbg !768
  br i1 %112, label %113, label %116, !dbg !769

; <label>:113:                                    ; preds = %109
  %114 = load i32, i32* %8, align 4, !dbg !770
  %115 = add nsw i32 %114, 1, !dbg !770
  store i32 %115, i32* %8, align 4, !dbg !770
  br label %116, !dbg !772

; <label>:116:                                    ; preds = %113, %109
  br label %117, !dbg !773

; <label>:117:                                    ; preds = %116, %73
  br label %118, !dbg !774

; <label>:118:                                    ; preds = %117, %68
  br label %119, !dbg !775

; <label>:119:                                    ; preds = %129, %118
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8, !dbg !776
  %121 = call i32 @_IO_getc(%struct._IO_FILE* %120), !dbg !776
  store i32 %121, i32* %16, align 4, !dbg !778
  %122 = icmp ne i32 %121, -1, !dbg !779
  br i1 %122, label %123, label %130, !dbg !780

; <label>:123:                                    ; preds = %119
  %124 = load i32, i32* %16, align 4, !dbg !781
  %125 = icmp eq i32 %124, 10, !dbg !785
  br i1 %125, label %126, label %129, !dbg !781

; <label>:126:                                    ; preds = %123
  %127 = load i32, i32* %8, align 4, !dbg !786
  %128 = add nsw i32 %127, 1, !dbg !786
  store i32 %128, i32* %8, align 4, !dbg !786
  br label %129, !dbg !788

; <label>:129:                                    ; preds = %126, %123
  br label %119, !dbg !789, !llvm.loop !791

; <label>:130:                                    ; preds = %119
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8, !dbg !792
  %132 = call i32 @ferror(%struct._IO_FILE* %131) #9, !dbg !794
  %133 = icmp ne i32 %132, 0, !dbg !794
  br i1 %133, label %134, label %140, !dbg !795

; <label>:134:                                    ; preds = %130
  %135 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i32 0, i32 0)) #9, !dbg !796
  %136 = load %struct.dirent*, %struct.dirent** %11, align 8, !dbg !797
  %137 = getelementptr inbounds %struct.dirent, %struct.dirent* %136, i32 0, i32 4, !dbg !798
  %138 = getelementptr inbounds [256 x i8], [256 x i8]* %137, i32 0, i32 0, !dbg !797
  %139 = load i8*, i8** %4, align 8, !dbg !799
  call void (i8*, ...) @ohshite(i8* %135, i8* %138, i8* %139) #10, !dbg !800
  unreachable, !dbg !802

; <label>:140:                                    ; preds = %130
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8, !dbg !803
  %142 = call i32 @fclose(%struct._IO_FILE* %141), !dbg !804
  %143 = call i8* @gettext(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.17, i32 0, i32 0)) #9, !dbg !805
  %144 = getelementptr inbounds %struct.stat, %struct.stat* %15, i32 0, i32 8, !dbg !806
  %145 = load i64, i64* %144, align 8, !dbg !806
  %146 = load i32, i32* %8, align 4, !dbg !807
  %147 = getelementptr inbounds %struct.stat, %struct.stat* %15, i32 0, i32 3, !dbg !808
  %148 = load i32, i32* %147, align 8, !dbg !808
  %149 = and i32 64, %148, !dbg !809
  %150 = icmp ne i32 %149, 0, !dbg !810
  %151 = select i1 %150, i32 42, i32 32, !dbg !810
  %152 = load %struct.dirent*, %struct.dirent** %11, align 8, !dbg !811
  %153 = getelementptr inbounds %struct.dirent, %struct.dirent* %152, i32 0, i32 4, !dbg !812
  %154 = getelementptr inbounds [256 x i8], [256 x i8]* %153, i32 0, i32 0, !dbg !811
  %155 = getelementptr inbounds [4097 x i8], [4097 x i8]* %5, i32 0, i32 0, !dbg !813
  %156 = call i32 (i8*, ...) @printf(i8* %143, i64 %145, i32 %146, i32 %151, i8* %154, i8* %155), !dbg !814
  br label %163, !dbg !815

; <label>:157:                                    ; preds = %51
  %158 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18, i32 0, i32 0)) #9, !dbg !816
  %159 = load %struct.dirent*, %struct.dirent** %11, align 8, !dbg !818
  %160 = getelementptr inbounds %struct.dirent, %struct.dirent* %159, i32 0, i32 4, !dbg !819
  %161 = getelementptr inbounds [256 x i8], [256 x i8]* %160, i32 0, i32 0, !dbg !818
  %162 = call i32 (i8*, ...) @printf(i8* %158, i8* %161), !dbg !820
  br label %163

; <label>:163:                                    ; preds = %157, %140
  %164 = load %struct.dirent*, %struct.dirent** %11, align 8, !dbg !822
  %165 = bitcast %struct.dirent* %164 to i8*, !dbg !822
  call void @free(i8* %165) #9, !dbg !823
  br label %166, !dbg !824

; <label>:166:                                    ; preds = %163
  %167 = load i32, i32* %13, align 4, !dbg !825
  %168 = add nsw i32 %167, 1, !dbg !825
  store i32 %168, i32* %13, align 4, !dbg !825
  br label %26, !dbg !827, !llvm.loop !828

; <label>:169:                                    ; preds = %26
  %170 = load %struct.dirent**, %struct.dirent*** %10, align 8, !dbg !830
  %171 = bitcast %struct.dirent** %170 to i8*, !dbg !830
  call void @free(i8* %171) #9, !dbg !831
  call void @varbuf_reset(%struct.varbuf* %9), !dbg !832
  %172 = load i8*, i8** %4, align 8, !dbg !833
  %173 = call i32 (%struct.varbuf*, i8*, ...) @varbuf_printf(%struct.varbuf* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* %172, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0)), !dbg !834
  %174 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %9, i32 0, i32 2, !dbg !835
  %175 = load i8*, i8** %174, align 8, !dbg !835
  %176 = call %struct._IO_FILE* @fopen(i8* %175, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)), !dbg !836
  store %struct._IO_FILE* %176, %struct._IO_FILE** %14, align 8, !dbg !837
  %177 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8, !dbg !838
  %178 = icmp ne %struct._IO_FILE* %177, null, !dbg !838
  br i1 %178, label %188, label %179, !dbg !840

; <label>:179:                                    ; preds = %169
  %180 = call i32* @__errno_location() #1, !dbg !841
  %181 = load i32, i32* %180, align 4, !dbg !844
  %182 = icmp ne i32 %181, 2, !dbg !845
  br i1 %182, label %183, label %186, !dbg !846

; <label>:183:                                    ; preds = %179
  %184 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i32 0, i32 0)) #9, !dbg !847
  %185 = load i8*, i8** %4, align 8, !dbg !848
  call void (i8*, ...) @ohshite(i8* %184, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* %185) #10, !dbg !849
  unreachable, !dbg !851

; <label>:186:                                    ; preds = %179
  %187 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.19, i32 0, i32 0)) #9, !dbg !852
  call void (i8*, ...) @warning(i8* %187), !dbg !853
  br label %222, !dbg !855

; <label>:188:                                    ; preds = %169
  store i32 1, i32* %8, align 4, !dbg !856
  br label %189, !dbg !858

; <label>:189:                                    ; preds = %199, %188
  %190 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8, !dbg !859
  %191 = call i32 @_IO_getc(%struct._IO_FILE* %190), !dbg !859
  store i32 %191, i32* %16, align 4, !dbg !861
  %192 = icmp ne i32 %191, -1, !dbg !862
  br i1 %192, label %193, label %206, !dbg !863

; <label>:193:                                    ; preds = %189
  %194 = load i32, i32* %8, align 4, !dbg !864
  %195 = icmp ne i32 %194, 0, !dbg !864
  br i1 %195, label %196, label %199, !dbg !867

; <label>:196:                                    ; preds = %193
  %197 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !868
  %198 = call i32 @_IO_putc(i32 32, %struct._IO_FILE* %197), !dbg !869
  br label %199, !dbg !869

; <label>:199:                                    ; preds = %196, %193
  %200 = load i32, i32* %16, align 4, !dbg !870
  %201 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !871
  %202 = call i32 @_IO_putc(i32 %200, %struct._IO_FILE* %201), !dbg !870
  %203 = load i32, i32* %16, align 4, !dbg !872
  %204 = icmp eq i32 %203, 10, !dbg !873
  %205 = zext i1 %204 to i32, !dbg !873
  store i32 %205, i32* %8, align 4, !dbg !874
  br label %189, !dbg !875, !llvm.loop !877

; <label>:206:                                    ; preds = %189
  %207 = load i32, i32* %8, align 4, !dbg !878
  %208 = icmp ne i32 %207, 0, !dbg !878
  br i1 %208, label %212, label %209, !dbg !880

; <label>:209:                                    ; preds = %206
  %210 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !881
  %211 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %210), !dbg !882
  br label %212, !dbg !882

; <label>:212:                                    ; preds = %209, %206
  %213 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8, !dbg !883
  %214 = call i32 @ferror(%struct._IO_FILE* %213) #9, !dbg !885
  %215 = icmp ne i32 %214, 0, !dbg !885
  br i1 %215, label %216, label %219, !dbg !886

; <label>:216:                                    ; preds = %212
  %217 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i32 0, i32 0)) #9, !dbg !887
  %218 = load i8*, i8** %4, align 8, !dbg !888
  call void (i8*, ...) @ohshite(i8* %217, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* %218) #10, !dbg !889
  unreachable, !dbg !891

; <label>:219:                                    ; preds = %212
  %220 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8, !dbg !892
  %221 = call i32 @fclose(%struct._IO_FILE* %220), !dbg !893
  br label %222

; <label>:222:                                    ; preds = %219, %186
  %223 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !894
  %224 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0)) #9, !dbg !895
  call void @m_output(%struct._IO_FILE* %223, i8* %224), !dbg !896
  call void @varbuf_destroy(%struct.varbuf* %9), !dbg !898
  ret void, !dbg !899
}

; Function Attrs: nounwind uwtable
define i32 @do_field(i8**) #0 !dbg !133 {
  %2 = alloca i8**, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !900, metadata !152), !dbg !901
  call void @llvm.dbg.declare(metadata i8** %3, metadata !902, metadata !152), !dbg !903
  call void @llvm.dbg.declare(metadata i8** %4, metadata !904, metadata !152), !dbg !905
  call void @info_prepare(i8*** %2, i8** %3, i8** %4, i32 1), !dbg !906
  %5 = load i8**, i8*** %2, align 8, !dbg !907
  %6 = load i8*, i8** %5, align 8, !dbg !909
  %7 = icmp ne i8* %6, null, !dbg !909
  br i1 %7, label %8, label %17, !dbg !910

; <label>:8:                                      ; preds = %1
  %9 = load i8*, i8** %3, align 8, !dbg !911
  %10 = load i8*, i8** %4, align 8, !dbg !913
  %11 = load i8**, i8*** %2, align 8, !dbg !914
  %12 = load i8**, i8*** %2, align 8, !dbg !915
  %13 = getelementptr inbounds i8*, i8** %12, i64 1, !dbg !915
  %14 = load i8*, i8** %13, align 8, !dbg !915
  %15 = icmp ne i8* %14, null, !dbg !916
  %16 = select i1 %15, i32 1, i32 0, !dbg !915
  call void @info_field(i8* %9, i8* %10, i8** %11, i32 %16), !dbg !917
  br label %20, !dbg !918

; <label>:17:                                     ; preds = %1
  %18 = load i8*, i8** %3, align 8, !dbg !919
  %19 = load i8*, i8** %4, align 8, !dbg !921
  call void @info_spew(i8* %18, i8* %19, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @do_field.controlonly, i32 0, i32 0)), !dbg !922
  br label %20

; <label>:20:                                     ; preds = %17, %8
  ret i32 0, !dbg !923
}

; Function Attrs: nounwind uwtable
define internal void @info_field(i8*, i8*, i8**, i32) #0 !dbg !924 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.varbuf, align 8
  %11 = alloca %struct.pkginfo*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.fieldinfo*, align 8
  %14 = alloca %struct.arbitraryfield*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !927, metadata !152), !dbg !928
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !929, metadata !152), !dbg !930
  store i8** %2, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !931, metadata !152), !dbg !932
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !933, metadata !152), !dbg !934
  call void @llvm.dbg.declare(metadata i8** %9, metadata !935, metadata !152), !dbg !936
  call void @llvm.dbg.declare(metadata %struct.varbuf* %10, metadata !937, metadata !152), !dbg !938
  %15 = bitcast %struct.varbuf* %10 to i8*, !dbg !938
  call void @llvm.memset.p0i8.i64(i8* %15, i8 0, i64 24, i32 8, i1 false), !dbg !938
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %11, metadata !939, metadata !152), !dbg !940
  call void @llvm.dbg.declare(metadata i32* %12, metadata !941, metadata !152), !dbg !942
  %16 = load i8*, i8** %6, align 8, !dbg !943
  %17 = call i8* (i8*, ...) @str_fmt(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0)), !dbg !944
  store i8* %17, i8** %9, align 8, !dbg !945
  %18 = load i8*, i8** %9, align 8, !dbg !946
  %19 = call i32 @parsedb(i8* %18, i32 23, %struct.pkginfo** %11), !dbg !947
  %20 = load i8*, i8** %9, align 8, !dbg !948
  call void @free(i8* %20) #9, !dbg !949
  store i32 0, i32* %12, align 4, !dbg !950
  br label %21, !dbg !952

; <label>:21:                                     ; preds = %76, %4
  %22 = load i32, i32* %12, align 4, !dbg !953
  %23 = sext i32 %22 to i64, !dbg !956
  %24 = load i8**, i8*** %7, align 8, !dbg !956
  %25 = getelementptr inbounds i8*, i8** %24, i64 %23, !dbg !956
  %26 = load i8*, i8** %25, align 8, !dbg !956
  %27 = icmp ne i8* %26, null, !dbg !957
  br i1 %27, label %28, label %79, !dbg !957

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.declare(metadata %struct.fieldinfo** %13, metadata !958, metadata !152), !dbg !997
  call void @llvm.dbg.declare(metadata %struct.arbitraryfield** %14, metadata !998, metadata !152), !dbg !1001
  call void @varbuf_reset(%struct.varbuf* %10), !dbg !1002
  %29 = load i32, i32* %12, align 4, !dbg !1003
  %30 = sext i32 %29 to i64, !dbg !1004
  %31 = load i8**, i8*** %7, align 8, !dbg !1004
  %32 = getelementptr inbounds i8*, i8** %31, i64 %30, !dbg !1004
  %33 = load i8*, i8** %32, align 8, !dbg !1004
  %34 = call %struct.fieldinfo* @find_field_info(%struct.fieldinfo* getelementptr inbounds ([0 x %struct.fieldinfo], [0 x %struct.fieldinfo]* @fieldinfos, i32 0, i32 0), i8* %33), !dbg !1005
  store %struct.fieldinfo* %34, %struct.fieldinfo** %13, align 8, !dbg !1006
  %35 = load %struct.fieldinfo*, %struct.fieldinfo** %13, align 8, !dbg !1007
  %36 = icmp ne %struct.fieldinfo* %35, null, !dbg !1007
  br i1 %36, label %37, label %46, !dbg !1009

; <label>:37:                                     ; preds = %28
  %38 = load %struct.fieldinfo*, %struct.fieldinfo** %13, align 8, !dbg !1010
  %39 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %38, i32 0, i32 3, !dbg !1012
  %40 = load void (%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*)*, void (%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*)** %39, align 8, !dbg !1012
  %41 = load %struct.pkginfo*, %struct.pkginfo** %11, align 8, !dbg !1013
  %42 = load %struct.pkginfo*, %struct.pkginfo** %11, align 8, !dbg !1014
  %43 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %42, i32 0, i32 10, !dbg !1015
  %44 = load i32, i32* %8, align 4, !dbg !1016
  %45 = load %struct.fieldinfo*, %struct.fieldinfo** %13, align 8, !dbg !1017
  call void %40(%struct.varbuf* %10, %struct.pkginfo* %41, %struct.pkgbin* %43, i32 %44, %struct.fieldinfo* %45), !dbg !1010
  br label %63, !dbg !1018

; <label>:46:                                     ; preds = %28
  %47 = load %struct.pkginfo*, %struct.pkginfo** %11, align 8, !dbg !1019
  %48 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %47, i32 0, i32 10, !dbg !1021
  %49 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %48, i32 0, i32 13, !dbg !1022
  %50 = load %struct.arbitraryfield*, %struct.arbitraryfield** %49, align 8, !dbg !1022
  %51 = load i32, i32* %12, align 4, !dbg !1023
  %52 = sext i32 %51 to i64, !dbg !1024
  %53 = load i8**, i8*** %7, align 8, !dbg !1024
  %54 = getelementptr inbounds i8*, i8** %53, i64 %52, !dbg !1024
  %55 = load i8*, i8** %54, align 8, !dbg !1024
  %56 = call %struct.arbitraryfield* @find_arbfield_info(%struct.arbitraryfield* %50, i8* %55), !dbg !1025
  store %struct.arbitraryfield* %56, %struct.arbitraryfield** %14, align 8, !dbg !1026
  %57 = load %struct.arbitraryfield*, %struct.arbitraryfield** %14, align 8, !dbg !1027
  %58 = icmp ne %struct.arbitraryfield* %57, null, !dbg !1027
  br i1 %58, label %59, label %62, !dbg !1029

; <label>:59:                                     ; preds = %46
  %60 = load %struct.arbitraryfield*, %struct.arbitraryfield** %14, align 8, !dbg !1030
  %61 = load i32, i32* %8, align 4, !dbg !1031
  call void @varbuf_add_arbfield(%struct.varbuf* %10, %struct.arbitraryfield* %60, i32 %61), !dbg !1032
  br label %62, !dbg !1032

; <label>:62:                                     ; preds = %59, %46
  br label %63

; <label>:63:                                     ; preds = %62, %37
  call void @varbuf_end_str(%struct.varbuf* %10), !dbg !1033
  %64 = load i32, i32* %8, align 4, !dbg !1034
  %65 = and i32 %64, 1, !dbg !1036
  %66 = icmp ne i32 %65, 0, !dbg !1036
  br i1 %66, label %67, label %71, !dbg !1037

; <label>:67:                                     ; preds = %63
  %68 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %10, i32 0, i32 2, !dbg !1038
  %69 = load i8*, i8** %68, align 8, !dbg !1038
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i8* %69), !dbg !1039
  br label %75, !dbg !1039

; <label>:71:                                     ; preds = %63
  %72 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %10, i32 0, i32 2, !dbg !1040
  %73 = load i8*, i8** %72, align 8, !dbg !1040
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i8* %73), !dbg !1041
  br label %75

; <label>:75:                                     ; preds = %71, %67
  br label %76, !dbg !1042

; <label>:76:                                     ; preds = %75
  %77 = load i32, i32* %12, align 4, !dbg !1043
  %78 = add nsw i32 %77, 1, !dbg !1043
  store i32 %78, i32* %12, align 4, !dbg !1043
  br label %21, !dbg !1045, !llvm.loop !1046

; <label>:79:                                     ; preds = %21
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1048
  %81 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0)) #9, !dbg !1049
  call void @m_output(%struct._IO_FILE* %80, i8* %81), !dbg !1050
  call void @varbuf_destroy(%struct.varbuf* %10), !dbg !1052
  ret void, !dbg !1053
}

; Function Attrs: nounwind uwtable
define i32 @do_contents(i8**) #0 !dbg !1054 {
  %2 = alloca i8**, align 8
  %3 = alloca i8*, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !1055, metadata !152), !dbg !1056
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1057, metadata !152), !dbg !1058
  %4 = load i8**, i8*** %2, align 8, !dbg !1059
  %5 = getelementptr inbounds i8*, i8** %4, i32 1, !dbg !1059
  store i8** %5, i8*** %2, align 8, !dbg !1059
  %6 = load i8*, i8** %4, align 8, !dbg !1060
  store i8* %6, i8** %3, align 8, !dbg !1058
  %7 = load i8*, i8** %3, align 8, !dbg !1061
  %8 = icmp eq i8* %7, null, !dbg !1063
  br i1 %8, label %13, label %9, !dbg !1064

; <label>:9:                                      ; preds = %1
  %10 = load i8**, i8*** %2, align 8, !dbg !1065
  %11 = load i8*, i8** %10, align 8, !dbg !1067
  %12 = icmp ne i8* %11, null, !dbg !1067
  br i1 %12, label %13, label %18, !dbg !1068

; <label>:13:                                     ; preds = %9, %1
  %14 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0)) #9, !dbg !1069
  %15 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !1070
  %16 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %15, i32 0, i32 0, !dbg !1071
  %17 = load i8*, i8** %16, align 8, !dbg !1071
  call void (i8*, ...) @badusage(i8* %14, i8* %17) #10, !dbg !1072
  unreachable, !dbg !1073

; <label>:18:                                     ; preds = %9
  %19 = load i8*, i8** %3, align 8, !dbg !1074
  call void @extracthalf(i8* %19, i8* null, i32 1, i32 0), !dbg !1075
  ret i32 0, !dbg !1076
}

; Function Attrs: noreturn
declare void @badusage(i8*, ...) #3

declare void @extracthalf(i8*, i8*, i32, i32) #2

; Function Attrs: nounwind
declare i8* @mkdtemp(i8*) #4

declare i8* @path_make_temp_template(i8*) #2

; Function Attrs: noreturn
declare void @ohshite(i8*, ...) #3

declare void @push_cleanup(void (i32, i8**)*, i32, i32, ...) #2

; Function Attrs: nounwind uwtable
define internal void @cu_info_prepare(i32, i8**) #0 !dbg !1077 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1081, metadata !152), !dbg !1082
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !1083, metadata !152), !dbg !1084
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1085, metadata !152), !dbg !1086
  %6 = load i8**, i8*** %4, align 8, !dbg !1087
  %7 = getelementptr inbounds i8*, i8** %6, i64 0, !dbg !1087
  %8 = load i8*, i8** %7, align 8, !dbg !1087
  store i8* %8, i8** %5, align 8, !dbg !1088
  %9 = load i8*, i8** %5, align 8, !dbg !1089
  call void @path_remove_tree(i8* %9), !dbg !1090
  %10 = load i8*, i8** %5, align 8, !dbg !1091
  call void @free(i8* %10) #9, !dbg !1092
  ret void, !dbg !1093
}

declare void @path_remove_tree(i8*) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #5

declare void @varbuf_reset(%struct.varbuf*) #2

declare i32 @varbuf_printf(%struct.varbuf*, i8*, ...) #2

declare i32 @open(i8*, i32, ...) #2

declare i64 @buffer_copy_IntInt(i32, i32, i8*, i32, i32, i32, i64, %struct.dpkg_error*) #2

declare i32 @close(i32) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

declare void @notice(i8*, ...) #2

declare void @varbuf_destroy(%struct.varbuf*) #2

; Function Attrs: nounwind
declare i8* @ngettext(i8*, i8*, i64) #4

declare i32 @scandir(i8*, %struct.dirent***, i32 (%struct.dirent*)*, i32 (%struct.dirent**, %struct.dirent**)*) #2

; Function Attrs: nounwind uwtable
define internal i32 @ilist_select(%struct.dirent*) #0 !dbg !1094 {
  %2 = alloca %struct.dirent*, align 8
  store %struct.dirent* %0, %struct.dirent** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.dirent** %2, metadata !1099, metadata !152), !dbg !1100
  %3 = load %struct.dirent*, %struct.dirent** %2, align 8, !dbg !1101
  %4 = getelementptr inbounds %struct.dirent, %struct.dirent* %3, i32 0, i32 4, !dbg !1102
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i32 0, i32 0, !dbg !1101
  %6 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0)) #11, !dbg !1103
  %7 = icmp ne i32 %6, 0, !dbg !1103
  br i1 %7, label %8, label %14, !dbg !1104

; <label>:8:                                      ; preds = %1
  %9 = load %struct.dirent*, %struct.dirent** %2, align 8, !dbg !1105
  %10 = getelementptr inbounds %struct.dirent, %struct.dirent* %9, i32 0, i32 4, !dbg !1107
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i32 0, i32 0, !dbg !1105
  %12 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0)) #11, !dbg !1108
  %13 = icmp ne i32 %12, 0, !dbg !1109
  br label %14

; <label>:14:                                     ; preds = %8, %1
  %15 = phi i1 [ false, %1 ], [ %13, %8 ]
  %16 = zext i1 %15 to i32, !dbg !1110
  ret i32 %16, !dbg !1112
}

; Function Attrs: nounwind readonly
declare i32 @alphasort(%struct.dirent**, %struct.dirent**) #7

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #4

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i32 @_IO_getc(%struct._IO_FILE*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @c_isspace(i32) #8 !dbg !1113 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1116, metadata !152), !dbg !1117
  %3 = load i32, i32* %2, align 4, !dbg !1118
  %4 = call zeroext i1 @c_isbits(i32 %3, i32 4), !dbg !1119
  ret i1 %4, !dbg !1120
}

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #4

declare i32 @fclose(%struct._IO_FILE*) #2

declare i32 @printf(i8*, ...) #2

declare void @warning(i8*, ...) #2

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #2

declare void @m_output(%struct._IO_FILE*, i8*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #7

declare zeroext i1 @c_isbits(i32, i32) #2

declare %struct.fieldinfo* @find_field_info(%struct.fieldinfo*, i8*) #2

declare %struct.arbitraryfield* @find_arbfield_info(%struct.arbitraryfield*, i8*) #2

declare void @varbuf_add_arbfield(%struct.varbuf*, %struct.arbitraryfield*, i32) #2

declare void @varbuf_end_str(%struct.varbuf*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind }
attributes #10 = { noreturn }
attributes #11 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!147, !148}
!llvm.ident = !{!149}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !126, globals: !131)
!1 = !DIFile(filename: "[inter]dpkg-deb--info.o.i", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-deb--dpkg-deb")
!2 = !{!3, !9, !21, !32, !41, !49, !53, !63, !73, !79, !96, !100, !109, !120}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_msg_type", file: !4, line: 36, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../lib/dpkg/error.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-deb--dpkg-deb")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "DPKG_MSG_NONE", value: 0)
!7 = !DIEnumerator(name: "DPKG_MSG_WARN", value: 1)
!8 = !DIEnumerator(name: "DPKG_MSG_ERROR", value: 2)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "deptype", file: !10, line: 44, size: 32, align: 32, elements: !11)
!10 = !DIFile(filename: "../lib/dpkg/dpkg-db.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-deb--dpkg-deb")
!11 = !{!12, !13, !14, !15, !16, !17, !18, !19, !20}
!12 = !DIEnumerator(name: "dep_suggests", value: 0)
!13 = !DIEnumerator(name: "dep_recommends", value: 1)
!14 = !DIEnumerator(name: "dep_depends", value: 2)
!15 = !DIEnumerator(name: "dep_predepends", value: 3)
!16 = !DIEnumerator(name: "dep_breaks", value: 4)
!17 = !DIEnumerator(name: "dep_conflicts", value: 5)
!18 = !DIEnumerator(name: "dep_provides", value: 6)
!19 = !DIEnumerator(name: "dep_replaces", value: 7)
!20 = !DIEnumerator(name: "dep_enhances", value: 8)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_arch_type", file: !22, line: 37, size: 32, align: 32, elements: !23)
!22 = !DIFile(filename: "../lib/dpkg/arch.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-deb--dpkg-deb")
!23 = !{!24, !25, !26, !27, !28, !29, !30, !31}
!24 = !DIEnumerator(name: "DPKG_ARCH_NONE", value: 0)
!25 = !DIEnumerator(name: "DPKG_ARCH_EMPTY", value: 1)
!26 = !DIEnumerator(name: "DPKG_ARCH_ILLEGAL", value: 2)
!27 = !DIEnumerator(name: "DPKG_ARCH_WILDCARD", value: 3)
!28 = !DIEnumerator(name: "DPKG_ARCH_ALL", value: 4)
!29 = !DIEnumerator(name: "DPKG_ARCH_NATIVE", value: 5)
!30 = !DIEnumerator(name: "DPKG_ARCH_FOREIGN", value: 6)
!31 = !DIEnumerator(name: "DPKG_ARCH_UNKNOWN", value: 7)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_relation", file: !33, line: 61, size: 32, align: 32, elements: !34)
!33 = !DIFile(filename: "../lib/dpkg/version.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-deb--dpkg-deb")
!34 = !{!35, !36, !37, !38, !39, !40}
!35 = !DIEnumerator(name: "DPKG_RELATION_NONE", value: 0)
!36 = !DIEnumerator(name: "DPKG_RELATION_EQ", value: 1)
!37 = !DIEnumerator(name: "DPKG_RELATION_LT", value: 2)
!38 = !DIEnumerator(name: "DPKG_RELATION_LE", value: 3)
!39 = !DIEnumerator(name: "DPKG_RELATION_GT", value: 4)
!40 = !DIEnumerator(name: "DPKG_RELATION_GE", value: 5)
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgwant", file: !10, line: 153, size: 32, align: 32, elements: !42)
!42 = !{!43, !44, !45, !46, !47, !48}
!43 = !DIEnumerator(name: "PKG_WANT_UNKNOWN", value: 0)
!44 = !DIEnumerator(name: "PKG_WANT_INSTALL", value: 1)
!45 = !DIEnumerator(name: "PKG_WANT_HOLD", value: 2)
!46 = !DIEnumerator(name: "PKG_WANT_DEINSTALL", value: 3)
!47 = !DIEnumerator(name: "PKG_WANT_PURGE", value: 4)
!48 = !DIEnumerator(name: "PKG_WANT_SENTINEL", value: 5)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgeflag", file: !10, line: 163, size: 32, align: 32, elements: !50)
!50 = !{!51, !52}
!51 = !DIEnumerator(name: "PKG_EFLAG_OK", value: 0)
!52 = !DIEnumerator(name: "PKG_EFLAG_REINSTREQ", value: 1)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgstatus", file: !10, line: 168, size: 32, align: 32, elements: !54)
!54 = !{!55, !56, !57, !58, !59, !60, !61, !62}
!55 = !DIEnumerator(name: "PKG_STAT_NOTINSTALLED", value: 0)
!56 = !DIEnumerator(name: "PKG_STAT_CONFIGFILES", value: 1)
!57 = !DIEnumerator(name: "PKG_STAT_HALFINSTALLED", value: 2)
!58 = !DIEnumerator(name: "PKG_STAT_UNPACKED", value: 3)
!59 = !DIEnumerator(name: "PKG_STAT_HALFCONFIGURED", value: 4)
!60 = !DIEnumerator(name: "PKG_STAT_TRIGGERSAWAITED", value: 5)
!61 = !DIEnumerator(name: "PKG_STAT_TRIGGERSPENDING", value: 6)
!62 = !DIEnumerator(name: "PKG_STAT_INSTALLED", value: 7)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgpriority", file: !10, line: 179, size: 32, align: 32, elements: !64)
!64 = !{!65, !66, !67, !68, !69, !70, !71, !72}
!65 = !DIEnumerator(name: "PKG_PRIO_REQUIRED", value: 0)
!66 = !DIEnumerator(name: "PKG_PRIO_IMPORTANT", value: 1)
!67 = !DIEnumerator(name: "PKG_PRIO_STANDARD", value: 2)
!68 = !DIEnumerator(name: "PKG_PRIO_OPTIONAL", value: 3)
!69 = !DIEnumerator(name: "PKG_PRIO_EXTRA", value: 4)
!70 = !DIEnumerator(name: "PKG_PRIO_OTHER", value: 5)
!71 = !DIEnumerator(name: "PKG_PRIO_UNKNOWN", value: 6)
!72 = !DIEnumerator(name: "PKG_PRIO_UNSET", value: -1)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgmultiarch", file: !10, line: 95, size: 32, align: 32, elements: !74)
!74 = !{!75, !76, !77, !78}
!75 = !DIEnumerator(name: "PKG_MULTIARCH_NO", value: 0)
!76 = !DIEnumerator(name: "PKG_MULTIARCH_SAME", value: 1)
!77 = !DIEnumerator(name: "PKG_MULTIARCH_ALLOWED", value: 2)
!78 = !DIEnumerator(name: "PKG_MULTIARCH_FOREIGN", value: 3)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "parsedbflags", file: !10, line: 328, size: 32, align: 32, elements: !80)
!80 = !{!81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95}
!81 = !DIEnumerator(name: "pdb_single_stanza", value: 1)
!82 = !DIEnumerator(name: "pdb_recordavailable", value: 2)
!83 = !DIEnumerator(name: "pdb_rejectstatus", value: 4)
!84 = !DIEnumerator(name: "pdb_weakclassification", value: 8)
!85 = !DIEnumerator(name: "pdb_ignore_archives", value: 16)
!86 = !DIEnumerator(name: "pdb_ignoreolder", value: 32)
!87 = !DIEnumerator(name: "pdb_lax_version_parser", value: 64)
!88 = !DIEnumerator(name: "pdb_lax_stanza_parser", value: 512)
!89 = !DIEnumerator(name: "pdb_lax_parser", value: 576)
!90 = !DIEnumerator(name: "pdb_close_fd", value: 128)
!91 = !DIEnumerator(name: "pdb_dash_is_stdin", value: 256)
!92 = !DIEnumerator(name: "pdb_parse_status", value: 584)
!93 = !DIEnumerator(name: "pdb_parse_update", value: 585)
!94 = !DIEnumerator(name: "pdb_parse_available", value: 582)
!95 = !DIEnumerator(name: "pdb_parse_binary", value: 7)
!96 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fwriteflags", file: !97, line: 112, size: 32, align: 32, elements: !98)
!97 = !DIFile(filename: "../lib/dpkg/parsedump.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-deb--dpkg-deb")
!98 = !{!99}
!99 = !DIEnumerator(name: "fw_printheader", value: 1)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_tar_options", file: !101, line: 46, size: 32, align: 32, elements: !102)
!101 = !DIFile(filename: "dpkg-deb.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-deb--dpkg-deb")
!102 = !{!103, !104, !105, !106, !107, !108}
!103 = !DIEnumerator(name: "DPKG_TAR_PASSTHROUGH", value: 0)
!104 = !DIEnumerator(name: "DPKG_TAR_LIST", value: 1)
!105 = !DIEnumerator(name: "DPKG_TAR_EXTRACT", value: 2)
!106 = !DIEnumerator(name: "DPKG_TAR_PERMS", value: 4)
!107 = !DIEnumerator(name: "DPKG_TAR_NOMTIME", value: 8)
!108 = !DIEnumerator(name: "DPKG_TAR_CREATE_DIR", value: 16)
!109 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "c_ctype_bit", file: !110, line: 32, size: 32, align: 32, elements: !111)
!110 = !DIFile(filename: "../lib/dpkg/c-ctype.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-deb--dpkg-deb")
!111 = !{!112, !113, !114, !115, !116, !117, !118, !119}
!112 = !DIEnumerator(name: "C_CTYPE_BLANK", value: 1)
!113 = !DIEnumerator(name: "C_CTYPE_WHITE", value: 2)
!114 = !DIEnumerator(name: "C_CTYPE_SPACE", value: 4)
!115 = !DIEnumerator(name: "C_CTYPE_UPPER", value: 8)
!116 = !DIEnumerator(name: "C_CTYPE_LOWER", value: 16)
!117 = !DIEnumerator(name: "C_CTYPE_DIGIT", value: 32)
!118 = !DIEnumerator(name: "C_CTYPE_ALPHA", value: 24)
!119 = !DIEnumerator(name: "C_CTYPE_ALNUM", value: 56)
!120 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "parsedbtype", file: !97, line: 41, size: 32, align: 32, elements: !121)
!121 = !{!122, !123, !124, !125}
!122 = !DIEnumerator(name: "pdb_file_update", value: 0)
!123 = !DIEnumerator(name: "pdb_file_status", value: 1)
!124 = !DIEnumerator(name: "pdb_file_control", value: 2)
!125 = !DIEnumerator(name: "pdb_file_available", value: 3)
!126 = !{!127, !128}
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !129, line: 134, baseType: !130)
!129 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-deb--dpkg-deb")
!130 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!131 = !{!132}
!132 = distinct !DIGlobalVariable(name: "controlonly", scope: !133, file: !134, line: 288, type: !144, isLocal: true, isDefinition: true, variable: [2 x i8*]* @do_field.controlonly)
!133 = distinct !DISubprogram(name: "do_field", scope: !134, file: !134, line: 280, type: !135, isLocal: false, isDefinition: true, scopeLine: 281, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !143)
!134 = !DIFile(filename: "info.c", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-deb--dpkg-deb")
!135 = !DISubroutineType(types: !136)
!136 = !{!137, !138}
!137 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64, align: 64)
!139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !142)
!142 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!143 = !{}
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 128, align: 64, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 2)
!147 = !{i32 2, !"Dwarf Version", i32 4}
!148 = !{i32 2, !"Debug Info Version", i32 3}
!149 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!150 = distinct !DISubprogram(name: "do_showinfo", scope: !134, file: !134, line: 240, type: !135, isLocal: false, isDefinition: true, scopeLine: 241, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !143)
!151 = !DILocalVariable(name: "argv", arg: 1, scope: !150, file: !134, line: 240, type: !138)
!152 = !DIExpression()
!153 = !DILocation(line: 240, column: 32, scope: !150)
!154 = !DILocalVariable(name: "debar", scope: !150, file: !134, line: 242, type: !140)
!155 = !DILocation(line: 242, column: 15, scope: !150)
!156 = !DILocalVariable(name: "dir", scope: !150, file: !134, line: 242, type: !140)
!157 = !DILocation(line: 242, column: 23, scope: !150)
!158 = !DILocalVariable(name: "controlfile", scope: !150, file: !134, line: 243, type: !159)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64, align: 64)
!160 = !DILocation(line: 243, column: 9, scope: !150)
!161 = !DILocalVariable(name: "err", scope: !150, file: !134, line: 244, type: !162)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_error", file: !4, line: 42, size: 128, align: 64, elements: !163)
!163 = !{!164, !165, !166}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !162, file: !4, line: 43, baseType: !3, size: 32, align: 32)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "syserrno", scope: !162, file: !4, line: 45, baseType: !137, size: 32, align: 32, offset: 32)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !162, file: !4, line: 46, baseType: !159, size: 64, align: 64, offset: 64)
!167 = !DILocation(line: 244, column: 21, scope: !150)
!168 = !DILocalVariable(name: "pkg", scope: !150, file: !134, line: 245, type: !169)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64, align: 64)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkginfo", file: !10, line: 195, size: 3072, align: 64, elements: !171)
!171 = !{!172, !220, !221, !222, !223, !224, !225, !226, !227, !228, !258, !259, !262, !271, !287, !288, !294, !297, !302, !303}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !170, file: !10, line: 196, baseType: !173, size: 64, align: 64)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64, align: 64)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgset", file: !10, line: 242, size: 3392, align: 64, elements: !175)
!175 = !{!176, !177, !178, !179, !219}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !174, file: !10, line: 243, baseType: !173, size: 64, align: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !174, file: !10, line: 244, baseType: !140, size: 64, align: 64, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !174, file: !10, line: 245, baseType: !170, size: 3072, align: 64, offset: 128)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "depended", scope: !174, file: !10, line: 249, baseType: !180, size: 128, align: 64, offset: 3200)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !174, file: !10, line: 246, size: 128, align: 64, elements: !181)
!181 = !{!182, !218}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !180, file: !10, line: 247, baseType: !183, size: 64, align: 64)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "deppossi", file: !10, line: 63, size: 640, align: 64, elements: !185)
!185 = !{!186, !194, !195, !196, !197, !198, !207, !214, !215, !217}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !184, file: !10, line: 64, baseType: !187, size: 64, align: 64)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64, align: 64)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dependency", file: !10, line: 56, size: 256, align: 64, elements: !189)
!189 = !{!190, !191, !192, !193}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !188, file: !10, line: 57, baseType: !169, size: 64, align: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !188, file: !10, line: 58, baseType: !187, size: 64, align: 64, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !188, file: !10, line: 59, baseType: !183, size: 64, align: 64, offset: 128)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !188, file: !10, line: 60, baseType: !9, size: 32, align: 32, offset: 192)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "ed", scope: !184, file: !10, line: 65, baseType: !173, size: 64, align: 64, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !184, file: !10, line: 66, baseType: !183, size: 64, align: 64, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "rev_next", scope: !184, file: !10, line: 66, baseType: !183, size: 64, align: 64, offset: 192)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "rev_prev", scope: !184, file: !10, line: 66, baseType: !183, size: 64, align: 64, offset: 256)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !184, file: !10, line: 67, baseType: !199, size: 64, align: 64, offset: 320)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64, align: 64)
!200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !201)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_arch", file: !22, line: 48, size: 192, align: 64, elements: !202)
!202 = !{!203, !205, !206}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !201, file: !22, line: 49, baseType: !204, size: 64, align: 64)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64, align: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !201, file: !22, line: 50, baseType: !140, size: 64, align: 64, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !201, file: !22, line: 51, baseType: !21, size: 32, align: 32, offset: 128)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !184, file: !10, line: 68, baseType: !208, size: 192, align: 64, offset: 384)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_version", file: !33, line: 42, size: 192, align: 64, elements: !209)
!209 = !{!210, !212, !213}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !208, file: !33, line: 44, baseType: !211, size: 32, align: 32)
!211 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !208, file: !33, line: 46, baseType: !140, size: 64, align: 64, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !208, file: !33, line: 48, baseType: !140, size: 64, align: 64, offset: 128)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "verrel", scope: !184, file: !10, line: 69, baseType: !32, size: 32, align: 32, offset: 576)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "arch_is_implicit", scope: !184, file: !10, line: 70, baseType: !216, size: 8, align: 8, offset: 608)
!216 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "cyclebreak", scope: !184, file: !10, line: 71, baseType: !216, size: 8, align: 8, offset: 616)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !180, file: !10, line: 248, baseType: !183, size: 64, align: 64, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "installed_instances", scope: !174, file: !10, line: 250, baseType: !137, size: 32, align: 32, offset: 3328)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "arch_next", scope: !170, file: !10, line: 197, baseType: !169, size: 64, align: 64, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "want", scope: !170, file: !10, line: 199, baseType: !41, size: 32, align: 32, offset: 128)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "eflag", scope: !170, file: !10, line: 201, baseType: !49, size: 32, align: 32, offset: 160)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !170, file: !10, line: 202, baseType: !53, size: 32, align: 32, offset: 192)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !170, file: !10, line: 203, baseType: !63, size: 32, align: 32, offset: 224)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "otherpriority", scope: !170, file: !10, line: 204, baseType: !140, size: 64, align: 64, offset: 256)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "section", scope: !170, file: !10, line: 205, baseType: !140, size: 64, align: 64, offset: 320)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "configversion", scope: !170, file: !10, line: 206, baseType: !208, size: 192, align: 64, offset: 384)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !170, file: !10, line: 207, baseType: !229, size: 960, align: 64, offset: 576)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgbin", file: !10, line: 107, size: 960, align: 64, elements: !230)
!230 = !{!231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !251}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "depends", scope: !229, file: !10, line: 108, baseType: !187, size: 64, align: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "essential", scope: !229, file: !10, line: 110, baseType: !216, size: 8, align: 8, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "multiarch", scope: !229, file: !10, line: 111, baseType: !73, size: 32, align: 32, offset: 96)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !229, file: !10, line: 112, baseType: !199, size: 64, align: 64, offset: 128)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "pkgname_archqual", scope: !229, file: !10, line: 115, baseType: !140, size: 64, align: 64, offset: 192)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !229, file: !10, line: 116, baseType: !140, size: 64, align: 64, offset: 256)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "maintainer", scope: !229, file: !10, line: 117, baseType: !140, size: 64, align: 64, offset: 320)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !229, file: !10, line: 118, baseType: !140, size: 64, align: 64, offset: 384)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "installedsize", scope: !229, file: !10, line: 119, baseType: !140, size: 64, align: 64, offset: 448)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !229, file: !10, line: 120, baseType: !140, size: 64, align: 64, offset: 512)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "bugs", scope: !229, file: !10, line: 121, baseType: !140, size: 64, align: 64, offset: 576)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !229, file: !10, line: 122, baseType: !208, size: 192, align: 64, offset: 640)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "conffiles", scope: !229, file: !10, line: 123, baseType: !244, size: 64, align: 64, offset: 832)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64, align: 64)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conffile", file: !10, line: 80, size: 256, align: 64, elements: !246)
!246 = !{!247, !248, !249, !250}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !245, file: !10, line: 81, baseType: !244, size: 64, align: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !245, file: !10, line: 82, baseType: !140, size: 64, align: 64, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !245, file: !10, line: 83, baseType: !140, size: 64, align: 64, offset: 128)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "obsolete", scope: !245, file: !10, line: 84, baseType: !216, size: 8, align: 8, offset: 192)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "arbs", scope: !229, file: !10, line: 124, baseType: !252, size: 64, align: 64, offset: 896)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64, align: 64)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arbitraryfield", file: !10, line: 74, size: 192, align: 64, elements: !254)
!254 = !{!255, !256, !257}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !253, file: !10, line: 75, baseType: !252, size: 64, align: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !253, file: !10, line: 76, baseType: !140, size: 64, align: 64, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !253, file: !10, line: 77, baseType: !140, size: 64, align: 64, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !170, file: !10, line: 208, baseType: !229, size: 960, align: 64, offset: 1536)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "clientdata", scope: !170, file: !10, line: 209, baseType: !260, size: 64, align: 64, offset: 2496)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64, align: 64)
!261 = !DICompositeType(tag: DW_TAG_structure_type, name: "perpackagestate", file: !10, line: 151, flags: DIFlagFwdDecl)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "archives", scope: !170, file: !10, line: 211, baseType: !263, size: 64, align: 64, offset: 2560)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64, align: 64)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archivedetails", file: !10, line: 87, size: 320, align: 64, elements: !265)
!265 = !{!266, !267, !268, !269, !270}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !264, file: !10, line: 88, baseType: !263, size: 64, align: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !264, file: !10, line: 89, baseType: !140, size: 64, align: 64, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "msdosname", scope: !264, file: !10, line: 90, baseType: !140, size: 64, align: 64, offset: 128)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !264, file: !10, line: 91, baseType: !140, size: 64, align: 64, offset: 192)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "md5sum", scope: !264, file: !10, line: 92, baseType: !140, size: 64, align: 64, offset: 256)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "trigaw", scope: !170, file: !10, line: 216, baseType: !272, size: 128, align: 64, offset: 2624)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !170, file: !10, line: 213, size: 128, align: 64, elements: !273)
!273 = !{!274, !286}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !272, file: !10, line: 215, baseType: !275, size: 64, align: 64)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64, align: 64)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigaw", file: !10, line: 142, size: 320, align: 64, elements: !277)
!277 = !{!278, !279, !280, !281}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "aw", scope: !276, file: !10, line: 143, baseType: !169, size: 64, align: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "pend", scope: !276, file: !10, line: 143, baseType: !169, size: 64, align: 64, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "samepend_next", scope: !276, file: !10, line: 144, baseType: !275, size: 64, align: 64, offset: 128)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "sameaw", scope: !276, file: !10, line: 147, baseType: !282, size: 128, align: 64, offset: 192)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !276, file: !10, line: 145, size: 128, align: 64, elements: !283)
!283 = !{!284, !285}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !282, file: !10, line: 146, baseType: !275, size: 64, align: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !282, file: !10, line: 146, baseType: !275, size: 64, align: 64, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !272, file: !10, line: 215, baseType: !275, size: 64, align: 64, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "othertrigaw_head", scope: !170, file: !10, line: 219, baseType: !275, size: 64, align: 64, offset: 2752)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "trigpend_head", scope: !170, file: !10, line: 220, baseType: !289, size: 64, align: 64, offset: 2816)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64, align: 64)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigpend", file: !10, line: 134, size: 128, align: 64, elements: !291)
!291 = !{!292, !293}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !290, file: !10, line: 135, baseType: !289, size: 64, align: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !290, file: !10, line: 136, baseType: !140, size: 64, align: 64, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !170, file: !10, line: 231, baseType: !295, size: 64, align: 64, offset: 2880)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64, align: 64)
!296 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode_list", file: !10, line: 231, flags: DIFlagFwdDecl)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_phys_offs", scope: !170, file: !10, line: 232, baseType: !298, size: 64, align: 64, offset: 2944)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !299, line: 86, baseType: !300)
!299 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-deb--dpkg-deb")
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !301, line: 131, baseType: !130)
!301 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-deb--dpkg-deb")
!302 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_valid", scope: !170, file: !10, line: 233, baseType: !216, size: 8, align: 8, offset: 3008)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "status_dirty", scope: !170, file: !10, line: 236, baseType: !216, size: 8, align: 8, offset: 3016)
!304 = !DILocation(line: 245, column: 19, scope: !150)
!305 = !DILocalVariable(name: "fmt", scope: !150, file: !134, line: 246, type: !306)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64, align: 64)
!307 = !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_format_node", file: !308, line: 36, flags: DIFlagFwdDecl)
!308 = !DIFile(filename: "../lib/dpkg/pkg-format.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-deb--dpkg-deb")
!309 = !DILocation(line: 246, column: 27, scope: !150)
!310 = !DILocation(line: 248, column: 26, scope: !150)
!311 = !DILocation(line: 248, column: 9, scope: !150)
!312 = !DILocation(line: 248, column: 7, scope: !150)
!313 = !DILocation(line: 249, column: 8, scope: !314)
!314 = distinct !DILexicalBlock(scope: !150, file: !134, line: 249, column: 7)
!315 = !DILocation(line: 249, column: 7, scope: !150)
!316 = !DILocation(line: 250, column: 12, scope: !314)
!317 = !DILocation(line: 250, column: 53, scope: !314)
!318 = !DILocation(line: 250, column: 5, scope: !319)
!319 = !DILexicalBlockFile(scope: !314, file: !134, discriminator: 1)
!320 = !DILocation(line: 250, column: 5, scope: !314)
!321 = !DILocation(line: 252, column: 3, scope: !150)
!322 = !DILocation(line: 254, column: 34, scope: !150)
!323 = !DILocation(line: 254, column: 17, scope: !150)
!324 = !DILocation(line: 254, column: 15, scope: !150)
!325 = !DILocation(line: 255, column: 11, scope: !150)
!326 = !DILocation(line: 255, column: 3, scope: !150)
!327 = !DILocation(line: 256, column: 19, scope: !150)
!328 = !DILocation(line: 256, column: 24, scope: !150)
!329 = !DILocation(line: 256, column: 30, scope: !150)
!330 = !DILocation(line: 256, column: 35, scope: !150)
!331 = !DILocation(line: 256, column: 3, scope: !150)
!332 = !DILocation(line: 257, column: 19, scope: !150)
!333 = !DILocation(line: 257, column: 3, scope: !150)
!334 = !DILocation(line: 258, column: 8, scope: !150)
!335 = !DILocation(line: 258, column: 3, scope: !150)
!336 = !DILocation(line: 260, column: 3, scope: !150)
!337 = distinct !DISubprogram(name: "info_prepare", scope: !134, file: !134, line: 60, type: !338, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !143)
!338 = !DISubroutineType(types: !339)
!339 = !{null, !340, !341, !341, !137}
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64, align: 64)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64, align: 64)
!342 = !DILocalVariable(name: "argvp", arg: 1, scope: !337, file: !134, line: 60, type: !340)
!343 = !DILocation(line: 60, column: 46, scope: !337)
!344 = !DILocalVariable(name: "debarp", arg: 2, scope: !337, file: !134, line: 61, type: !341)
!345 = !DILocation(line: 61, column: 39, scope: !337)
!346 = !DILocalVariable(name: "dirp", arg: 3, scope: !337, file: !134, line: 62, type: !341)
!347 = !DILocation(line: 62, column: 39, scope: !337)
!348 = !DILocalVariable(name: "admininfo", arg: 4, scope: !337, file: !134, line: 63, type: !137)
!349 = !DILocation(line: 63, column: 30, scope: !337)
!350 = !DILocalVariable(name: "dbuf", scope: !337, file: !134, line: 64, type: !159)
!351 = !DILocation(line: 64, column: 9, scope: !337)
!352 = !DILocation(line: 66, column: 15, scope: !337)
!353 = !DILocation(line: 66, column: 21, scope: !337)
!354 = !DILocation(line: 66, column: 12, scope: !337)
!355 = !DILocation(line: 66, column: 4, scope: !337)
!356 = !DILocation(line: 66, column: 10, scope: !337)
!357 = !DILocation(line: 67, column: 9, scope: !358)
!358 = distinct !DILexicalBlock(scope: !337, file: !134, line: 67, column: 7)
!359 = !DILocation(line: 67, column: 8, scope: !358)
!360 = !DILocation(line: 67, column: 7, scope: !337)
!361 = !DILocation(line: 67, column: 26, scope: !362)
!362 = !DILexicalBlockFile(scope: !358, file: !134, discriminator: 1)
!363 = !DILocation(line: 67, column: 73, scope: !362)
!364 = !DILocation(line: 67, column: 84, scope: !362)
!365 = !DILocation(line: 67, column: 17, scope: !366)
!366 = !DILexicalBlockFile(scope: !362, file: !134, discriminator: 2)
!367 = !DILocation(line: 67, column: 17, scope: !362)
!368 = !DILocation(line: 69, column: 18, scope: !337)
!369 = !DILocation(line: 69, column: 10, scope: !370)
!370 = !DILexicalBlockFile(scope: !337, file: !134, discriminator: 1)
!371 = !DILocation(line: 69, column: 8, scope: !337)
!372 = !DILocation(line: 70, column: 8, scope: !373)
!373 = distinct !DILexicalBlock(scope: !337, file: !134, line: 70, column: 7)
!374 = !DILocation(line: 70, column: 7, scope: !337)
!375 = !DILocation(line: 71, column: 13, scope: !373)
!376 = !DILocation(line: 71, column: 5, scope: !377)
!377 = !DILexicalBlockFile(scope: !373, file: !134, discriminator: 1)
!378 = !DILocation(line: 71, column: 5, scope: !373)
!379 = !DILocation(line: 72, column: 11, scope: !337)
!380 = !DILocation(line: 72, column: 4, scope: !337)
!381 = !DILocation(line: 72, column: 9, scope: !337)
!382 = !DILocation(line: 74, column: 48, scope: !337)
!383 = !DILocation(line: 74, column: 3, scope: !337)
!384 = !DILocation(line: 75, column: 16, scope: !337)
!385 = !DILocation(line: 75, column: 15, scope: !337)
!386 = !DILocation(line: 75, column: 24, scope: !337)
!387 = !DILocation(line: 75, column: 67, scope: !337)
!388 = !DILocation(line: 75, column: 3, scope: !337)
!389 = !DILocation(line: 76, column: 1, scope: !337)
!390 = distinct !DISubprogram(name: "do_info", scope: !134, file: !134, line: 264, type: !135, isLocal: false, isDefinition: true, scopeLine: 265, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !143)
!391 = !DILocalVariable(name: "argv", arg: 1, scope: !390, file: !134, line: 264, type: !138)
!392 = !DILocation(line: 264, column: 28, scope: !390)
!393 = !DILocalVariable(name: "debar", scope: !390, file: !134, line: 266, type: !140)
!394 = !DILocation(line: 266, column: 15, scope: !390)
!395 = !DILocalVariable(name: "dir", scope: !390, file: !134, line: 266, type: !140)
!396 = !DILocation(line: 266, column: 23, scope: !390)
!397 = !DILocation(line: 268, column: 8, scope: !398)
!398 = distinct !DILexicalBlock(scope: !390, file: !134, line: 268, column: 7)
!399 = !DILocation(line: 268, column: 7, scope: !398)
!400 = !DILocation(line: 268, column: 13, scope: !398)
!401 = !DILocation(line: 268, column: 16, scope: !402)
!402 = !DILexicalBlockFile(scope: !398, file: !134, discriminator: 1)
!403 = !DILocation(line: 268, column: 7, scope: !402)
!404 = !DILocation(line: 269, column: 5, scope: !405)
!405 = distinct !DILexicalBlock(scope: !398, file: !134, line: 268, column: 25)
!406 = !DILocation(line: 270, column: 15, scope: !405)
!407 = !DILocation(line: 270, column: 22, scope: !405)
!408 = !DILocation(line: 270, column: 27, scope: !405)
!409 = !DILocation(line: 270, column: 5, scope: !405)
!410 = !DILocation(line: 271, column: 3, scope: !405)
!411 = !DILocation(line: 272, column: 5, scope: !412)
!412 = distinct !DILexicalBlock(scope: !398, file: !134, line: 271, column: 10)
!413 = !DILocation(line: 273, column: 15, scope: !412)
!414 = !DILocation(line: 273, column: 22, scope: !412)
!415 = !DILocation(line: 273, column: 5, scope: !412)
!416 = !DILocation(line: 276, column: 3, scope: !390)
!417 = distinct !DISubprogram(name: "info_spew", scope: !134, file: !134, line: 83, type: !418, isLocal: true, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !143)
!418 = !DISubroutineType(types: !419)
!419 = !{null, !140, !140, !138}
!420 = !DILocalVariable(name: "debar", arg: 1, scope: !417, file: !134, line: 83, type: !140)
!421 = !DILocation(line: 83, column: 23, scope: !417)
!422 = !DILocalVariable(name: "dir", arg: 2, scope: !417, file: !134, line: 83, type: !140)
!423 = !DILocation(line: 83, column: 42, scope: !417)
!424 = !DILocalVariable(name: "argv", arg: 3, scope: !417, file: !134, line: 83, type: !138)
!425 = !DILocation(line: 83, column: 66, scope: !417)
!426 = !DILocalVariable(name: "err", scope: !417, file: !134, line: 85, type: !162)
!427 = !DILocation(line: 85, column: 21, scope: !417)
!428 = !DILocalVariable(name: "component", scope: !417, file: !134, line: 86, type: !140)
!429 = !DILocation(line: 86, column: 15, scope: !417)
!430 = !DILocalVariable(name: "controlfile", scope: !417, file: !134, line: 87, type: !431)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varbuf", file: !432, line: 55, size: 192, align: 64, elements: !433)
!432 = !DIFile(filename: "../lib/dpkg/varbuf.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-deb--dpkg-deb")
!433 = !{!434, !438, !439}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !431, file: !432, line: 56, baseType: !435, size: 64, align: 64)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !436, line: 216, baseType: !437)
!436 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-deb--dpkg-deb")
!437 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !431, file: !432, line: 56, baseType: !435, size: 64, align: 64, offset: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !431, file: !432, line: 57, baseType: !159, size: 64, align: 64, offset: 128)
!440 = !DILocation(line: 87, column: 17, scope: !417)
!441 = !DILocalVariable(name: "fd", scope: !417, file: !134, line: 88, type: !137)
!442 = !DILocation(line: 88, column: 7, scope: !417)
!443 = !DILocalVariable(name: "re", scope: !417, file: !134, line: 89, type: !137)
!444 = !DILocation(line: 89, column: 7, scope: !417)
!445 = !DILocation(line: 91, column: 3, scope: !417)
!446 = !DILocation(line: 91, column: 28, scope: !447)
!447 = !DILexicalBlockFile(scope: !417, file: !134, discriminator: 1)
!448 = !DILocation(line: 91, column: 23, scope: !447)
!449 = !DILocation(line: 91, column: 21, scope: !447)
!450 = !DILocation(line: 91, column: 32, scope: !447)
!451 = !DILocation(line: 91, column: 3, scope: !447)
!452 = !DILocation(line: 92, column: 5, scope: !453)
!453 = distinct !DILexicalBlock(scope: !417, file: !134, line: 91, column: 40)
!454 = !DILocation(line: 93, column: 42, scope: !453)
!455 = !DILocation(line: 93, column: 47, scope: !453)
!456 = !DILocation(line: 93, column: 5, scope: !453)
!457 = !DILocation(line: 95, column: 27, scope: !453)
!458 = !DILocation(line: 95, column: 10, scope: !453)
!459 = !DILocation(line: 95, column: 8, scope: !453)
!460 = !DILocation(line: 96, column: 9, scope: !461)
!461 = distinct !DILexicalBlock(scope: !453, file: !134, line: 96, column: 9)
!462 = !DILocation(line: 96, column: 12, scope: !461)
!463 = !DILocation(line: 96, column: 9, scope: !453)
!464 = !DILocation(line: 97, column: 30, scope: !465)
!465 = distinct !DILexicalBlock(scope: !466, file: !134, line: 97, column: 11)
!466 = distinct !DILexicalBlock(scope: !461, file: !134, line: 96, column: 18)
!467 = !DILocation(line: 97, column: 11, scope: !465)
!468 = !DILocation(line: 97, column: 31, scope: !465)
!469 = !DILocation(line: 97, column: 11, scope: !466)
!470 = !DILocation(line: 98, column: 16, scope: !465)
!471 = !DILocation(line: 99, column: 28, scope: !465)
!472 = !DILocation(line: 99, column: 33, scope: !465)
!473 = !DILocation(line: 99, column: 44, scope: !465)
!474 = !DILocation(line: 98, column: 9, scope: !475)
!475 = !DILexicalBlockFile(scope: !465, file: !134, discriminator: 1)
!476 = !DILocation(line: 98, column: 9, scope: !465)
!477 = !DILocation(line: 100, column: 13, scope: !466)
!478 = !DILocation(line: 100, column: 7, scope: !466)
!479 = !DILocation(line: 101, column: 5, scope: !466)
!480 = !DILocation(line: 101, column: 17, scope: !481)
!481 = !DILexicalBlockFile(scope: !482, file: !134, discriminator: 1)
!482 = distinct !DILexicalBlock(scope: !461, file: !134, line: 101, column: 15)
!483 = !DILocation(line: 101, column: 16, scope: !481)
!484 = !DILocation(line: 101, column: 21, scope: !481)
!485 = !DILocation(line: 101, column: 15, scope: !481)
!486 = !DILocation(line: 102, column: 14, scope: !487)
!487 = distinct !DILexicalBlock(scope: !482, file: !134, line: 101, column: 32)
!488 = !DILocation(line: 103, column: 14, scope: !487)
!489 = !DILocation(line: 103, column: 21, scope: !487)
!490 = !DILocation(line: 102, column: 7, scope: !491)
!491 = !DILexicalBlockFile(scope: !487, file: !134, discriminator: 1)
!492 = !DILocation(line: 104, column: 9, scope: !487)
!493 = !DILocation(line: 105, column: 5, scope: !487)
!494 = !DILocation(line: 106, column: 15, scope: !495)
!495 = distinct !DILexicalBlock(scope: !482, file: !134, line: 105, column: 12)
!496 = !DILocation(line: 107, column: 15, scope: !495)
!497 = !DILocation(line: 107, column: 26, scope: !495)
!498 = !DILocation(line: 106, column: 7, scope: !499)
!499 = !DILexicalBlockFile(scope: !495, file: !134, discriminator: 1)
!500 = !DILocation(line: 106, column: 7, scope: !495)
!501 = !DILocation(line: 91, column: 3, scope: !502)
!502 = !DILexicalBlockFile(scope: !417, file: !134, discriminator: 2)
!503 = distinct !{!503, !445}
!504 = !DILocation(line: 110, column: 3, scope: !417)
!505 = !DILocation(line: 112, column: 7, scope: !506)
!506 = distinct !DILexicalBlock(scope: !417, file: !134, line: 112, column: 7)
!507 = !DILocation(line: 112, column: 10, scope: !506)
!508 = !DILocation(line: 112, column: 7, scope: !417)
!509 = !DILocation(line: 113, column: 113, scope: !506)
!510 = !DILocation(line: 113, column: 12, scope: !506)
!511 = !DILocation(line: 114, column: 67, scope: !506)
!512 = !DILocation(line: 113, column: 5, scope: !513)
!513 = !DILexicalBlockFile(scope: !506, file: !134, discriminator: 1)
!514 = !DILocation(line: 113, column: 5, scope: !506)
!515 = !DILocation(line: 115, column: 1, scope: !417)
!516 = distinct !DISubprogram(name: "info_list", scope: !134, file: !134, line: 118, type: !517, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !143)
!517 = !DISubroutineType(types: !518)
!518 = !{null, !140, !140}
!519 = !DILocalVariable(name: "debar", arg: 1, scope: !516, file: !134, line: 118, type: !140)
!520 = !DILocation(line: 118, column: 23, scope: !516)
!521 = !DILocalVariable(name: "dir", arg: 2, scope: !516, file: !134, line: 118, type: !140)
!522 = !DILocation(line: 118, column: 42, scope: !516)
!523 = !DILocalVariable(name: "interpreter", scope: !516, file: !134, line: 120, type: !524)
!524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 32776, align: 8, elements: !525)
!525 = !{!526}
!526 = !DISubrange(count: 4097)
!527 = !DILocation(line: 120, column: 8, scope: !516)
!528 = !DILocalVariable(name: "p", scope: !516, file: !134, line: 120, type: !159)
!529 = !DILocation(line: 120, column: 40, scope: !516)
!530 = !DILocalVariable(name: "il", scope: !516, file: !134, line: 121, type: !137)
!531 = !DILocation(line: 121, column: 7, scope: !516)
!532 = !DILocalVariable(name: "lines", scope: !516, file: !134, line: 121, type: !137)
!533 = !DILocation(line: 121, column: 11, scope: !516)
!534 = !DILocalVariable(name: "controlfile", scope: !516, file: !134, line: 122, type: !431)
!535 = !DILocation(line: 122, column: 17, scope: !516)
!536 = !DILocalVariable(name: "cdlist", scope: !516, file: !134, line: 123, type: !537)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64, align: 64)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64, align: 64)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dirent", file: !540, line: 22, size: 2240, align: 64, elements: !541)
!540 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/dirent.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-deb--dpkg-deb")
!541 = !{!542, !544, !545, !547, !549}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino", scope: !539, file: !540, line: 25, baseType: !543, size: 64, align: 64)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !301, line: 127, baseType: !437)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "d_off", scope: !539, file: !540, line: 26, baseType: !300, size: 64, align: 64, offset: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "d_reclen", scope: !539, file: !540, line: 31, baseType: !546, size: 16, align: 16, offset: 128)
!546 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "d_type", scope: !539, file: !540, line: 32, baseType: !548, size: 8, align: 8, offset: 144)
!548 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !539, file: !540, line: 33, baseType: !550, size: 2048, align: 8, offset: 152)
!550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 2048, align: 8, elements: !551)
!551 = !{!552}
!552 = !DISubrange(count: 256)
!553 = !DILocation(line: 123, column: 19, scope: !516)
!554 = !DILocalVariable(name: "cdep", scope: !516, file: !134, line: 123, type: !538)
!555 = !DILocation(line: 123, column: 28, scope: !516)
!556 = !DILocalVariable(name: "cdn", scope: !516, file: !134, line: 124, type: !137)
!557 = !DILocation(line: 124, column: 7, scope: !516)
!558 = !DILocalVariable(name: "n", scope: !516, file: !134, line: 124, type: !137)
!559 = !DILocation(line: 124, column: 12, scope: !516)
!560 = !DILocalVariable(name: "cc", scope: !516, file: !134, line: 125, type: !561)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64, align: 64)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !563, line: 48, baseType: !564)
!563 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-deb--dpkg-deb")
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !565, line: 241, size: 1728, align: 64, elements: !566)
!565 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-deb--dpkg-deb")
!566 = !{!567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !587, !588, !589, !590, !591, !592, !594, !598, !601, !603, !604, !605, !606, !607, !608, !609}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !564, file: !565, line: 242, baseType: !137, size: 32, align: 32)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !564, file: !565, line: 247, baseType: !159, size: 64, align: 64, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !564, file: !565, line: 248, baseType: !159, size: 64, align: 64, offset: 128)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !564, file: !565, line: 249, baseType: !159, size: 64, align: 64, offset: 192)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !564, file: !565, line: 250, baseType: !159, size: 64, align: 64, offset: 256)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !564, file: !565, line: 251, baseType: !159, size: 64, align: 64, offset: 320)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !564, file: !565, line: 252, baseType: !159, size: 64, align: 64, offset: 384)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !564, file: !565, line: 253, baseType: !159, size: 64, align: 64, offset: 448)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !564, file: !565, line: 254, baseType: !159, size: 64, align: 64, offset: 512)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !564, file: !565, line: 256, baseType: !159, size: 64, align: 64, offset: 576)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !564, file: !565, line: 257, baseType: !159, size: 64, align: 64, offset: 640)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !564, file: !565, line: 258, baseType: !159, size: 64, align: 64, offset: 704)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !564, file: !565, line: 260, baseType: !580, size: 64, align: 64, offset: 768)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64, align: 64)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !565, line: 156, size: 192, align: 64, elements: !582)
!582 = !{!583, !584, !586}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !581, file: !565, line: 157, baseType: !580, size: 64, align: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !581, file: !565, line: 158, baseType: !585, size: 64, align: 64, offset: 64)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64, align: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !581, file: !565, line: 162, baseType: !137, size: 32, align: 32, offset: 128)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !564, file: !565, line: 262, baseType: !585, size: 64, align: 64, offset: 832)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !564, file: !565, line: 264, baseType: !137, size: 32, align: 32, offset: 896)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !564, file: !565, line: 268, baseType: !137, size: 32, align: 32, offset: 928)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !564, file: !565, line: 270, baseType: !300, size: 64, align: 64, offset: 960)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !564, file: !565, line: 274, baseType: !546, size: 16, align: 16, offset: 1024)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !564, file: !565, line: 275, baseType: !593, size: 8, align: 8, offset: 1040)
!593 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !564, file: !565, line: 276, baseType: !595, size: 8, align: 8, offset: 1048)
!595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 8, align: 8, elements: !596)
!596 = !{!597}
!597 = !DISubrange(count: 1)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !564, file: !565, line: 280, baseType: !599, size: 64, align: 64, offset: 1088)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64, align: 64)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !565, line: 150, baseType: null)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !564, file: !565, line: 289, baseType: !602, size: 64, align: 64, offset: 1152)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !301, line: 132, baseType: !130)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !564, file: !565, line: 297, baseType: !127, size: 64, align: 64, offset: 1216)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !564, file: !565, line: 298, baseType: !127, size: 64, align: 64, offset: 1280)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !564, file: !565, line: 299, baseType: !127, size: 64, align: 64, offset: 1344)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !564, file: !565, line: 300, baseType: !127, size: 64, align: 64, offset: 1408)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !564, file: !565, line: 302, baseType: !435, size: 64, align: 64, offset: 1472)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !564, file: !565, line: 303, baseType: !137, size: 32, align: 32, offset: 1536)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !564, file: !565, line: 305, baseType: !610, size: 160, align: 8, offset: 1568)
!610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 160, align: 8, elements: !611)
!611 = !{!612}
!612 = !DISubrange(count: 20)
!613 = !DILocation(line: 125, column: 9, scope: !516)
!614 = !DILocalVariable(name: "stab", scope: !516, file: !134, line: 126, type: !615)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !616, line: 46, size: 1152, align: 64, elements: !617)
!616 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-deb--dpkg-deb")
!617 = !{!618, !620, !621, !623, !625, !627, !629, !630, !631, !632, !634, !636, !644, !645, !646}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !615, file: !616, line: 48, baseType: !619, size: 64, align: 64)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !301, line: 124, baseType: !437)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !615, file: !616, line: 53, baseType: !543, size: 64, align: 64, offset: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !615, file: !616, line: 61, baseType: !622, size: 64, align: 64, offset: 128)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !301, line: 130, baseType: !437)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !615, file: !616, line: 62, baseType: !624, size: 32, align: 32, offset: 192)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !301, line: 129, baseType: !211)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !615, file: !616, line: 64, baseType: !626, size: 32, align: 32, offset: 224)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !301, line: 125, baseType: !211)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !615, file: !616, line: 65, baseType: !628, size: 32, align: 32, offset: 256)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !301, line: 126, baseType: !211)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !615, file: !616, line: 67, baseType: !137, size: 32, align: 32, offset: 288)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !615, file: !616, line: 69, baseType: !619, size: 64, align: 64, offset: 320)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !615, file: !616, line: 74, baseType: !300, size: 64, align: 64, offset: 384)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !615, file: !616, line: 78, baseType: !633, size: 64, align: 64, offset: 448)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !301, line: 153, baseType: !130)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !615, file: !616, line: 80, baseType: !635, size: 64, align: 64, offset: 512)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !301, line: 158, baseType: !130)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !615, file: !616, line: 91, baseType: !637, size: 128, align: 64, offset: 576)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !638, line: 120, size: 128, align: 64, elements: !639)
!638 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-deb--dpkg-deb")
!639 = !{!640, !642}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !637, file: !638, line: 122, baseType: !641, size: 64, align: 64)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !301, line: 139, baseType: !130)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !637, file: !638, line: 123, baseType: !643, size: 64, align: 64, offset: 64)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !301, line: 175, baseType: !130)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !615, file: !616, line: 92, baseType: !637, size: 128, align: 64, offset: 704)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !615, file: !616, line: 93, baseType: !637, size: 128, align: 64, offset: 832)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !615, file: !616, line: 106, baseType: !647, size: 192, align: 64, offset: 960)
!647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !643, size: 192, align: 64, elements: !648)
!648 = !{!649}
!649 = !DISubrange(count: 3)
!650 = !DILocation(line: 126, column: 15, scope: !516)
!651 = !DILocalVariable(name: "c", scope: !516, file: !134, line: 127, type: !137)
!652 = !DILocation(line: 127, column: 7, scope: !516)
!653 = !DILocation(line: 129, column: 17, scope: !516)
!654 = !DILocation(line: 129, column: 9, scope: !516)
!655 = !DILocation(line: 129, column: 7, scope: !516)
!656 = !DILocation(line: 130, column: 7, scope: !657)
!657 = distinct !DILexicalBlock(scope: !516, file: !134, line: 130, column: 7)
!658 = !DILocation(line: 130, column: 11, scope: !657)
!659 = !DILocation(line: 130, column: 7, scope: !516)
!660 = !DILocation(line: 131, column: 13, scope: !657)
!661 = !DILocation(line: 131, column: 56, scope: !657)
!662 = !DILocation(line: 131, column: 5, scope: !663)
!663 = !DILexicalBlockFile(scope: !657, file: !134, discriminator: 1)
!664 = !DILocation(line: 131, column: 5, scope: !657)
!665 = !DILocation(line: 133, column: 10, scope: !666)
!666 = distinct !DILexicalBlock(scope: !516, file: !134, line: 133, column: 3)
!667 = !DILocation(line: 133, column: 8, scope: !666)
!668 = !DILocation(line: 133, column: 15, scope: !669)
!669 = !DILexicalBlockFile(scope: !670, file: !134, discriminator: 1)
!670 = distinct !DILexicalBlock(scope: !666, file: !134, line: 133, column: 3)
!671 = !DILocation(line: 133, column: 19, scope: !669)
!672 = !DILocation(line: 133, column: 17, scope: !669)
!673 = !DILocation(line: 133, column: 3, scope: !669)
!674 = !DILocation(line: 134, column: 19, scope: !675)
!675 = distinct !DILexicalBlock(scope: !670, file: !134, line: 133, column: 29)
!676 = !DILocation(line: 134, column: 12, scope: !675)
!677 = !DILocation(line: 134, column: 10, scope: !675)
!678 = !DILocation(line: 136, column: 5, scope: !675)
!679 = !DILocation(line: 137, column: 42, scope: !675)
!680 = !DILocation(line: 137, column: 47, scope: !675)
!681 = !DILocation(line: 137, column: 53, scope: !675)
!682 = !DILocation(line: 137, column: 5, scope: !675)
!683 = !DILocation(line: 139, column: 26, scope: !684)
!684 = distinct !DILexicalBlock(scope: !675, file: !134, line: 139, column: 9)
!685 = !DILocation(line: 139, column: 9, scope: !684)
!686 = !DILocation(line: 139, column: 9, scope: !675)
!687 = !DILocation(line: 140, column: 15, scope: !684)
!688 = !DILocation(line: 140, column: 62, scope: !684)
!689 = !DILocation(line: 140, column: 68, scope: !684)
!690 = !DILocation(line: 140, column: 76, scope: !684)
!691 = !DILocation(line: 140, column: 7, scope: !692)
!692 = !DILexicalBlockFile(scope: !684, file: !134, discriminator: 1)
!693 = !DILocation(line: 140, column: 7, scope: !684)
!694 = !DILocation(line: 141, column: 13, scope: !695)
!695 = distinct !DILexicalBlock(scope: !675, file: !134, line: 141, column: 8)
!696 = !DILocation(line: 141, column: 11, scope: !695)
!697 = !DILocation(line: 141, column: 22, scope: !695)
!698 = !DILocation(line: 141, column: 8, scope: !675)
!699 = !DILocation(line: 142, column: 30, scope: !700)
!700 = distinct !DILexicalBlock(scope: !695, file: !134, line: 141, column: 31)
!701 = !DILocation(line: 142, column: 12, scope: !700)
!702 = !DILocation(line: 142, column: 10, scope: !700)
!703 = !DILocation(line: 143, column: 12, scope: !704)
!704 = distinct !DILexicalBlock(scope: !700, file: !134, line: 143, column: 11)
!705 = !DILocation(line: 143, column: 11, scope: !700)
!706 = !DILocation(line: 144, column: 17, scope: !704)
!707 = !DILocation(line: 144, column: 64, scope: !704)
!708 = !DILocation(line: 144, column: 70, scope: !704)
!709 = !DILocation(line: 144, column: 78, scope: !704)
!710 = !DILocation(line: 144, column: 9, scope: !711)
!711 = !DILexicalBlockFile(scope: !704, file: !134, discriminator: 1)
!712 = !DILocation(line: 144, column: 9, scope: !704)
!713 = !DILocation(line: 145, column: 13, scope: !700)
!714 = !DILocation(line: 146, column: 7, scope: !700)
!715 = !DILocation(line: 146, column: 22, scope: !700)
!716 = !DILocation(line: 147, column: 10, scope: !717)
!717 = distinct !DILexicalBlock(scope: !700, file: !134, line: 147, column: 10)
!718 = !DILocation(line: 147, column: 19, scope: !717)
!719 = !DILocation(line: 147, column: 10, scope: !700)
!720 = !DILocation(line: 148, column: 12, scope: !721)
!721 = distinct !DILexicalBlock(scope: !722, file: !134, line: 148, column: 12)
!722 = distinct !DILexicalBlock(scope: !717, file: !134, line: 147, column: 27)
!723 = !DILocation(line: 148, column: 21, scope: !721)
!724 = !DILocation(line: 148, column: 12, scope: !722)
!725 = !DILocation(line: 149, column: 11, scope: !726)
!726 = distinct !DILexicalBlock(scope: !721, file: !134, line: 148, column: 29)
!727 = !DILocation(line: 149, column: 21, scope: !728)
!728 = !DILexicalBlockFile(scope: !726, file: !134, discriminator: 1)
!729 = !DILocation(line: 149, column: 20, scope: !728)
!730 = !DILocation(line: 149, column: 30, scope: !728)
!731 = !DILocation(line: 149, column: 11, scope: !728)
!732 = !DILocation(line: 149, column: 11, scope: !733)
!733 = !DILexicalBlockFile(scope: !726, file: !134, discriminator: 2)
!734 = distinct !{!734, !725}
!735 = !DILocation(line: 150, column: 13, scope: !726)
!736 = !DILocation(line: 150, column: 12, scope: !726)
!737 = !DILocation(line: 150, column: 28, scope: !726)
!738 = !DILocation(line: 150, column: 30, scope: !726)
!739 = !DILocation(line: 150, column: 38, scope: !726)
!740 = !DILocation(line: 150, column: 40, scope: !726)
!741 = !DILocation(line: 150, column: 48, scope: !726)
!742 = !DILocation(line: 151, column: 11, scope: !726)
!743 = !DILocation(line: 151, column: 18, scope: !728)
!744 = !DILocation(line: 151, column: 21, scope: !728)
!745 = !DILocation(line: 151, column: 38, scope: !728)
!746 = !DILocation(line: 151, column: 52, scope: !733)
!747 = !DILocation(line: 151, column: 42, scope: !733)
!748 = !DILocation(line: 151, column: 55, scope: !733)
!749 = !DILocation(line: 151, column: 58, scope: !750)
!750 = !DILexicalBlockFile(scope: !726, file: !134, discriminator: 3)
!751 = !DILocation(line: 151, column: 60, scope: !750)
!752 = !DILocation(line: 151, column: 11, scope: !753)
!753 = !DILexicalBlockFile(scope: !726, file: !134, discriminator: 4)
!754 = !DILocation(line: 152, column: 19, scope: !755)
!755 = distinct !DILexicalBlock(scope: !726, file: !134, line: 151, column: 68)
!756 = !DILocation(line: 152, column: 15, scope: !755)
!757 = !DILocation(line: 152, column: 17, scope: !755)
!758 = !DILocation(line: 152, column: 24, scope: !755)
!759 = !DILocation(line: 152, column: 30, scope: !755)
!760 = !DILocation(line: 152, column: 29, scope: !755)
!761 = !DILocation(line: 151, column: 11, scope: !762)
!762 = !DILexicalBlockFile(scope: !726, file: !134, discriminator: 5)
!763 = distinct !{!763, !742}
!764 = !DILocation(line: 154, column: 12, scope: !726)
!765 = !DILocation(line: 154, column: 14, scope: !726)
!766 = !DILocation(line: 155, column: 15, scope: !767)
!767 = distinct !DILexicalBlock(scope: !726, file: !134, line: 155, column: 15)
!768 = !DILocation(line: 155, column: 16, scope: !767)
!769 = !DILocation(line: 155, column: 15, scope: !726)
!770 = !DILocation(line: 155, column: 29, scope: !771)
!771 = !DILexicalBlockFile(scope: !767, file: !134, discriminator: 1)
!772 = !DILocation(line: 155, column: 24, scope: !771)
!773 = !DILocation(line: 156, column: 9, scope: !726)
!774 = !DILocation(line: 157, column: 7, scope: !722)
!775 = !DILocation(line: 158, column: 7, scope: !700)
!776 = !DILocation(line: 158, column: 17, scope: !777)
!777 = !DILexicalBlockFile(scope: !700, file: !134, discriminator: 1)
!778 = !DILocation(line: 158, column: 16, scope: !777)
!779 = !DILocation(line: 158, column: 26, scope: !777)
!780 = !DILocation(line: 158, column: 7, scope: !777)
!781 = !DILocation(line: 158, column: 40, scope: !782)
!782 = !DILexicalBlockFile(scope: !783, file: !134, discriminator: 2)
!783 = distinct !DILexicalBlock(scope: !784, file: !134, line: 158, column: 40)
!784 = distinct !DILexicalBlock(scope: !700, file: !134, line: 158, column: 34)
!785 = !DILocation(line: 158, column: 42, scope: !782)
!786 = !DILocation(line: 158, column: 56, scope: !787)
!787 = !DILexicalBlockFile(scope: !783, file: !134, discriminator: 3)
!788 = !DILocation(line: 158, column: 51, scope: !787)
!789 = !DILocation(line: 158, column: 7, scope: !790)
!790 = !DILexicalBlockFile(scope: !700, file: !134, discriminator: 4)
!791 = distinct !{!791, !775}
!792 = !DILocation(line: 159, column: 18, scope: !793)
!793 = distinct !DILexicalBlock(scope: !700, file: !134, line: 159, column: 11)
!794 = !DILocation(line: 159, column: 11, scope: !793)
!795 = !DILocation(line: 159, column: 11, scope: !700)
!796 = !DILocation(line: 160, column: 17, scope: !793)
!797 = !DILocation(line: 160, column: 67, scope: !793)
!798 = !DILocation(line: 160, column: 73, scope: !793)
!799 = !DILocation(line: 160, column: 81, scope: !793)
!800 = !DILocation(line: 160, column: 9, scope: !801)
!801 = !DILexicalBlockFile(scope: !793, file: !134, discriminator: 1)
!802 = !DILocation(line: 160, column: 9, scope: !793)
!803 = !DILocation(line: 161, column: 14, scope: !700)
!804 = !DILocation(line: 161, column: 7, scope: !700)
!805 = !DILocation(line: 162, column: 14, scope: !700)
!806 = !DILocation(line: 163, column: 29, scope: !700)
!807 = !DILocation(line: 163, column: 38, scope: !700)
!808 = !DILocation(line: 164, column: 29, scope: !700)
!809 = !DILocation(line: 164, column: 22, scope: !700)
!810 = !DILocation(line: 164, column: 14, scope: !700)
!811 = !DILocation(line: 165, column: 14, scope: !700)
!812 = !DILocation(line: 165, column: 20, scope: !700)
!813 = !DILocation(line: 165, column: 28, scope: !700)
!814 = !DILocation(line: 162, column: 7, scope: !777)
!815 = !DILocation(line: 166, column: 5, scope: !700)
!816 = !DILocation(line: 167, column: 14, scope: !817)
!817 = distinct !DILexicalBlock(scope: !695, file: !134, line: 166, column: 12)
!818 = !DILocation(line: 167, column: 66, scope: !817)
!819 = !DILocation(line: 167, column: 72, scope: !817)
!820 = !DILocation(line: 167, column: 7, scope: !821)
!821 = !DILexicalBlockFile(scope: !817, file: !134, discriminator: 1)
!822 = !DILocation(line: 169, column: 10, scope: !675)
!823 = !DILocation(line: 169, column: 5, scope: !675)
!824 = !DILocation(line: 170, column: 3, scope: !675)
!825 = !DILocation(line: 133, column: 25, scope: !826)
!826 = !DILexicalBlockFile(scope: !670, file: !134, discriminator: 2)
!827 = !DILocation(line: 133, column: 3, scope: !826)
!828 = distinct !{!828, !829}
!829 = !DILocation(line: 133, column: 3, scope: !516)
!830 = !DILocation(line: 171, column: 8, scope: !516)
!831 = !DILocation(line: 171, column: 3, scope: !516)
!832 = !DILocation(line: 173, column: 3, scope: !516)
!833 = !DILocation(line: 174, column: 40, scope: !516)
!834 = !DILocation(line: 174, column: 3, scope: !516)
!835 = !DILocation(line: 175, column: 26, scope: !516)
!836 = !DILocation(line: 175, column: 8, scope: !516)
!837 = !DILocation(line: 175, column: 6, scope: !516)
!838 = !DILocation(line: 176, column: 8, scope: !839)
!839 = distinct !DILexicalBlock(scope: !516, file: !134, line: 176, column: 7)
!840 = !DILocation(line: 176, column: 7, scope: !516)
!841 = !DILocation(line: 177, column: 10, scope: !842)
!842 = distinct !DILexicalBlock(scope: !843, file: !134, line: 177, column: 8)
!843 = distinct !DILexicalBlock(scope: !839, file: !134, line: 176, column: 12)
!844 = !DILocation(line: 177, column: 9, scope: !842)
!845 = !DILocation(line: 177, column: 14, scope: !842)
!846 = !DILocation(line: 177, column: 8, scope: !843)
!847 = !DILocation(line: 178, column: 15, scope: !842)
!848 = !DILocation(line: 178, column: 76, scope: !842)
!849 = !DILocation(line: 178, column: 7, scope: !850)
!850 = !DILexicalBlockFile(scope: !842, file: !134, discriminator: 1)
!851 = !DILocation(line: 178, column: 7, scope: !842)
!852 = !DILocation(line: 179, column: 13, scope: !843)
!853 = !DILocation(line: 179, column: 5, scope: !854)
!854 = !DILexicalBlockFile(scope: !843, file: !134, discriminator: 1)
!855 = !DILocation(line: 180, column: 3, scope: !843)
!856 = !DILocation(line: 181, column: 10, scope: !857)
!857 = distinct !DILexicalBlock(scope: !839, file: !134, line: 180, column: 10)
!858 = !DILocation(line: 182, column: 5, scope: !857)
!859 = !DILocation(line: 182, column: 15, scope: !860)
!860 = !DILexicalBlockFile(scope: !857, file: !134, discriminator: 1)
!861 = !DILocation(line: 182, column: 14, scope: !860)
!862 = !DILocation(line: 182, column: 24, scope: !860)
!863 = !DILocation(line: 182, column: 5, scope: !860)
!864 = !DILocation(line: 183, column: 11, scope: !865)
!865 = distinct !DILexicalBlock(scope: !866, file: !134, line: 183, column: 11)
!866 = distinct !DILexicalBlock(scope: !857, file: !134, line: 182, column: 32)
!867 = !DILocation(line: 183, column: 11, scope: !866)
!868 = !DILocation(line: 184, column: 10, scope: !865)
!869 = !DILocation(line: 184, column: 8, scope: !865)
!870 = !DILocation(line: 185, column: 6, scope: !866)
!871 = !DILocation(line: 185, column: 8, scope: !866)
!872 = !DILocation(line: 186, column: 14, scope: !866)
!873 = !DILocation(line: 186, column: 15, scope: !866)
!874 = !DILocation(line: 186, column: 12, scope: !866)
!875 = !DILocation(line: 182, column: 5, scope: !876)
!876 = !DILexicalBlockFile(scope: !857, file: !134, discriminator: 2)
!877 = distinct !{!877, !858}
!878 = !DILocation(line: 188, column: 10, scope: !879)
!879 = distinct !DILexicalBlock(scope: !857, file: !134, line: 188, column: 9)
!880 = !DILocation(line: 188, column: 9, scope: !857)
!881 = !DILocation(line: 189, column: 8, scope: !879)
!882 = !DILocation(line: 189, column: 6, scope: !879)
!883 = !DILocation(line: 191, column: 16, scope: !884)
!884 = distinct !DILexicalBlock(scope: !857, file: !134, line: 191, column: 9)
!885 = !DILocation(line: 191, column: 9, scope: !884)
!886 = !DILocation(line: 191, column: 9, scope: !857)
!887 = !DILocation(line: 192, column: 15, scope: !884)
!888 = !DILocation(line: 192, column: 76, scope: !884)
!889 = !DILocation(line: 192, column: 7, scope: !890)
!890 = !DILexicalBlockFile(scope: !884, file: !134, discriminator: 1)
!891 = !DILocation(line: 192, column: 7, scope: !884)
!892 = !DILocation(line: 193, column: 12, scope: !857)
!893 = !DILocation(line: 193, column: 5, scope: !857)
!894 = !DILocation(line: 196, column: 11, scope: !516)
!895 = !DILocation(line: 196, column: 19, scope: !516)
!896 = !DILocation(line: 196, column: 3, scope: !897)
!897 = !DILexicalBlockFile(scope: !516, file: !134, discriminator: 1)
!898 = !DILocation(line: 197, column: 3, scope: !516)
!899 = !DILocation(line: 198, column: 1, scope: !516)
!900 = !DILocalVariable(name: "argv", arg: 1, scope: !133, file: !134, line: 280, type: !138)
!901 = !DILocation(line: 280, column: 29, scope: !133)
!902 = !DILocalVariable(name: "debar", scope: !133, file: !134, line: 282, type: !140)
!903 = !DILocation(line: 282, column: 15, scope: !133)
!904 = !DILocalVariable(name: "dir", scope: !133, file: !134, line: 282, type: !140)
!905 = !DILocation(line: 282, column: 23, scope: !133)
!906 = !DILocation(line: 284, column: 3, scope: !133)
!907 = !DILocation(line: 285, column: 8, scope: !908)
!908 = distinct !DILexicalBlock(scope: !133, file: !134, line: 285, column: 7)
!909 = !DILocation(line: 285, column: 7, scope: !908)
!910 = !DILocation(line: 285, column: 7, scope: !133)
!911 = !DILocation(line: 286, column: 16, scope: !912)
!912 = distinct !DILexicalBlock(scope: !908, file: !134, line: 285, column: 14)
!913 = !DILocation(line: 286, column: 23, scope: !912)
!914 = !DILocation(line: 286, column: 28, scope: !912)
!915 = !DILocation(line: 286, column: 34, scope: !912)
!916 = !DILocation(line: 286, column: 42, scope: !912)
!917 = !DILocation(line: 286, column: 5, scope: !912)
!918 = !DILocation(line: 287, column: 3, scope: !912)
!919 = !DILocation(line: 289, column: 15, scope: !920)
!920 = distinct !DILexicalBlock(scope: !908, file: !134, line: 287, column: 10)
!921 = !DILocation(line: 289, column: 22, scope: !920)
!922 = !DILocation(line: 289, column: 5, scope: !920)
!923 = !DILocation(line: 292, column: 3, scope: !133)
!924 = distinct !DISubprogram(name: "info_field", scope: !134, file: !134, line: 201, type: !925, isLocal: true, isDefinition: true, scopeLine: 203, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !143)
!925 = !DISubroutineType(types: !926)
!926 = !{null, !140, !140, !138, !96}
!927 = !DILocalVariable(name: "debar", arg: 1, scope: !924, file: !134, line: 201, type: !140)
!928 = !DILocation(line: 201, column: 24, scope: !924)
!929 = !DILocalVariable(name: "dir", arg: 2, scope: !924, file: !134, line: 201, type: !140)
!930 = !DILocation(line: 201, column: 43, scope: !924)
!931 = !DILocalVariable(name: "fields", arg: 3, scope: !924, file: !134, line: 201, type: !138)
!932 = !DILocation(line: 201, column: 67, scope: !924)
!933 = !DILocalVariable(name: "fieldflags", arg: 4, scope: !924, file: !134, line: 202, type: !96)
!934 = !DILocation(line: 202, column: 29, scope: !924)
!935 = !DILocalVariable(name: "controlfile", scope: !924, file: !134, line: 204, type: !159)
!936 = !DILocation(line: 204, column: 9, scope: !924)
!937 = !DILocalVariable(name: "str", scope: !924, file: !134, line: 205, type: !431)
!938 = !DILocation(line: 205, column: 17, scope: !924)
!939 = !DILocalVariable(name: "pkg", scope: !924, file: !134, line: 206, type: !169)
!940 = !DILocation(line: 206, column: 19, scope: !924)
!941 = !DILocalVariable(name: "i", scope: !924, file: !134, line: 207, type: !137)
!942 = !DILocation(line: 207, column: 7, scope: !924)
!943 = !DILocation(line: 209, column: 34, scope: !924)
!944 = !DILocation(line: 209, column: 17, scope: !924)
!945 = !DILocation(line: 209, column: 15, scope: !924)
!946 = !DILocation(line: 210, column: 11, scope: !924)
!947 = !DILocation(line: 210, column: 3, scope: !924)
!948 = !DILocation(line: 211, column: 8, scope: !924)
!949 = !DILocation(line: 211, column: 3, scope: !924)
!950 = !DILocation(line: 213, column: 10, scope: !951)
!951 = distinct !DILexicalBlock(scope: !924, file: !134, line: 213, column: 3)
!952 = !DILocation(line: 213, column: 8, scope: !951)
!953 = !DILocation(line: 213, column: 22, scope: !954)
!954 = !DILexicalBlockFile(scope: !955, file: !134, discriminator: 1)
!955 = distinct !DILexicalBlock(scope: !951, file: !134, line: 213, column: 3)
!956 = !DILocation(line: 213, column: 15, scope: !954)
!957 = !DILocation(line: 213, column: 3, scope: !954)
!958 = !DILocalVariable(name: "field", scope: !959, file: !134, line: 214, type: !960)
!959 = distinct !DILexicalBlock(scope: !955, file: !134, line: 213, column: 31)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64, align: 64)
!961 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !962)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fieldinfo", file: !97, line: 133, size: 320, align: 64, elements: !963)
!963 = !{!964, !965, !966, !986, !996}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !962, file: !97, line: 134, baseType: !140, size: 64, align: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "namelen", scope: !962, file: !97, line: 135, baseType: !435, size: 64, align: 64, offset: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "rcall", scope: !962, file: !97, line: 136, baseType: !967, size: 64, align: 64, offset: 128)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64, align: 64)
!968 = !DIDerivedType(tag: DW_TAG_typedef, name: "freadfunction", file: !97, line: 97, baseType: !969)
!969 = !DISubroutineType(types: !970)
!970 = !{null, !169, !971, !972, !140, !960}
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64, align: 64)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64, align: 64)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "parsedb_state", file: !97, line: 48, size: 640, align: 64, elements: !974)
!974 = !{!975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !973, file: !97, line: 49, baseType: !120, size: 32, align: 32)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !973, file: !97, line: 50, baseType: !79, size: 32, align: 32, offset: 32)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !973, file: !97, line: 51, baseType: !162, size: 128, align: 64, offset: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !973, file: !97, line: 52, baseType: !169, size: 64, align: 64, offset: 192)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "pkgbin", scope: !973, file: !97, line: 53, baseType: !971, size: 64, align: 64, offset: 256)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !973, file: !97, line: 54, baseType: !159, size: 64, align: 64, offset: 320)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "dataptr", scope: !973, file: !97, line: 55, baseType: !159, size: 64, align: 64, offset: 384)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "endptr", scope: !973, file: !97, line: 56, baseType: !159, size: 64, align: 64, offset: 448)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !973, file: !97, line: 57, baseType: !140, size: 64, align: 64, offset: 512)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !973, file: !97, line: 58, baseType: !137, size: 32, align: 32, offset: 576)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "lno", scope: !973, file: !97, line: 59, baseType: !137, size: 32, align: 32, offset: 608)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "wcall", scope: !962, file: !97, line: 137, baseType: !987, size: 64, align: 64, offset: 192)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64, align: 64)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "fwritefunction", file: !97, line: 117, baseType: !989)
!989 = !DISubroutineType(types: !990)
!990 = !{null, !991, !992, !994, !96, !960}
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64, align: 64)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64, align: 64)
!993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !170)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64, align: 64)
!995 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !229)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !962, file: !97, line: 138, baseType: !435, size: 64, align: 64, offset: 256)
!997 = !DILocation(line: 214, column: 29, scope: !959)
!998 = !DILocalVariable(name: "arbfield", scope: !959, file: !134, line: 215, type: !999)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64, align: 64)
!1000 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !253)
!1001 = !DILocation(line: 215, column: 34, scope: !959)
!1002 = !DILocation(line: 217, column: 5, scope: !959)
!1003 = !DILocation(line: 218, column: 48, scope: !959)
!1004 = !DILocation(line: 218, column: 41, scope: !959)
!1005 = !DILocation(line: 218, column: 13, scope: !959)
!1006 = !DILocation(line: 218, column: 11, scope: !959)
!1007 = !DILocation(line: 219, column: 9, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !959, file: !134, line: 219, column: 9)
!1009 = !DILocation(line: 219, column: 9, scope: !959)
!1010 = !DILocation(line: 220, column: 7, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1008, file: !134, line: 219, column: 16)
!1012 = !DILocation(line: 220, column: 14, scope: !1011)
!1013 = !DILocation(line: 220, column: 26, scope: !1011)
!1014 = !DILocation(line: 220, column: 32, scope: !1011)
!1015 = !DILocation(line: 220, column: 37, scope: !1011)
!1016 = !DILocation(line: 220, column: 48, scope: !1011)
!1017 = !DILocation(line: 220, column: 60, scope: !1011)
!1018 = !DILocation(line: 221, column: 5, scope: !1011)
!1019 = !DILocation(line: 222, column: 37, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1008, file: !134, line: 221, column: 12)
!1021 = !DILocation(line: 222, column: 42, scope: !1020)
!1022 = !DILocation(line: 222, column: 52, scope: !1020)
!1023 = !DILocation(line: 222, column: 65, scope: !1020)
!1024 = !DILocation(line: 222, column: 58, scope: !1020)
!1025 = !DILocation(line: 222, column: 18, scope: !1020)
!1026 = !DILocation(line: 222, column: 16, scope: !1020)
!1027 = !DILocation(line: 223, column: 11, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1020, file: !134, line: 223, column: 11)
!1029 = !DILocation(line: 223, column: 11, scope: !1020)
!1030 = !DILocation(line: 224, column: 35, scope: !1028)
!1031 = !DILocation(line: 224, column: 45, scope: !1028)
!1032 = !DILocation(line: 224, column: 9, scope: !1028)
!1033 = !DILocation(line: 226, column: 5, scope: !959)
!1034 = !DILocation(line: 228, column: 9, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !959, file: !134, line: 228, column: 9)
!1036 = !DILocation(line: 228, column: 20, scope: !1035)
!1037 = !DILocation(line: 228, column: 9, scope: !959)
!1038 = !DILocation(line: 229, column: 24, scope: !1035)
!1039 = !DILocation(line: 229, column: 7, scope: !1035)
!1040 = !DILocation(line: 231, column: 26, scope: !1035)
!1041 = !DILocation(line: 231, column: 7, scope: !1035)
!1042 = !DILocation(line: 232, column: 3, scope: !959)
!1043 = !DILocation(line: 213, column: 27, scope: !1044)
!1044 = !DILexicalBlockFile(scope: !955, file: !134, discriminator: 2)
!1045 = !DILocation(line: 213, column: 3, scope: !1044)
!1046 = distinct !{!1046, !1047}
!1047 = !DILocation(line: 213, column: 3, scope: !924)
!1048 = !DILocation(line: 234, column: 11, scope: !924)
!1049 = !DILocation(line: 234, column: 19, scope: !924)
!1050 = !DILocation(line: 234, column: 3, scope: !1051)
!1051 = !DILexicalBlockFile(scope: !924, file: !134, discriminator: 1)
!1052 = !DILocation(line: 236, column: 3, scope: !924)
!1053 = !DILocation(line: 237, column: 1, scope: !924)
!1054 = distinct !DISubprogram(name: "do_contents", scope: !134, file: !134, line: 296, type: !135, isLocal: false, isDefinition: true, scopeLine: 297, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !143)
!1055 = !DILocalVariable(name: "argv", arg: 1, scope: !1054, file: !134, line: 296, type: !138)
!1056 = !DILocation(line: 296, column: 32, scope: !1054)
!1057 = !DILocalVariable(name: "debar", scope: !1054, file: !134, line: 298, type: !140)
!1058 = !DILocation(line: 298, column: 15, scope: !1054)
!1059 = !DILocation(line: 298, column: 28, scope: !1054)
!1060 = !DILocation(line: 298, column: 23, scope: !1054)
!1061 = !DILocation(line: 300, column: 7, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1054, file: !134, line: 300, column: 7)
!1063 = !DILocation(line: 300, column: 13, scope: !1062)
!1064 = !DILocation(line: 300, column: 20, scope: !1062)
!1065 = !DILocation(line: 300, column: 24, scope: !1066)
!1066 = !DILexicalBlockFile(scope: !1062, file: !134, discriminator: 1)
!1067 = !DILocation(line: 300, column: 23, scope: !1066)
!1068 = !DILocation(line: 300, column: 7, scope: !1066)
!1069 = !DILocation(line: 301, column: 14, scope: !1062)
!1070 = !DILocation(line: 301, column: 58, scope: !1062)
!1071 = !DILocation(line: 301, column: 69, scope: !1062)
!1072 = !DILocation(line: 301, column: 5, scope: !1066)
!1073 = !DILocation(line: 301, column: 5, scope: !1062)
!1074 = !DILocation(line: 302, column: 15, scope: !1054)
!1075 = !DILocation(line: 302, column: 3, scope: !1054)
!1076 = !DILocation(line: 304, column: 3, scope: !1054)
!1077 = distinct !DISubprogram(name: "cu_info_prepare", scope: !134, file: !134, line: 52, type: !1078, isLocal: true, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !143)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{null, !137, !1080}
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64, align: 64)
!1081 = !DILocalVariable(name: "argc", arg: 1, scope: !1077, file: !134, line: 52, type: !137)
!1082 = !DILocation(line: 52, column: 33, scope: !1077)
!1083 = !DILocalVariable(name: "argv", arg: 2, scope: !1077, file: !134, line: 52, type: !1080)
!1084 = !DILocation(line: 52, column: 46, scope: !1077)
!1085 = !DILocalVariable(name: "dir", scope: !1077, file: !134, line: 53, type: !159)
!1086 = !DILocation(line: 53, column: 9, scope: !1077)
!1087 = !DILocation(line: 55, column: 9, scope: !1077)
!1088 = !DILocation(line: 55, column: 7, scope: !1077)
!1089 = !DILocation(line: 56, column: 20, scope: !1077)
!1090 = !DILocation(line: 56, column: 3, scope: !1077)
!1091 = !DILocation(line: 57, column: 8, scope: !1077)
!1092 = !DILocation(line: 57, column: 3, scope: !1077)
!1093 = !DILocation(line: 58, column: 1, scope: !1077)
!1094 = distinct !DISubprogram(name: "ilist_select", scope: !134, file: !134, line: 78, type: !1095, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !143)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!137, !1097}
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64, align: 64)
!1098 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !539)
!1099 = !DILocalVariable(name: "de", arg: 1, scope: !1094, file: !134, line: 78, type: !1097)
!1100 = !DILocation(line: 78, column: 46, scope: !1094)
!1101 = !DILocation(line: 79, column: 17, scope: !1094)
!1102 = !DILocation(line: 79, column: 21, scope: !1094)
!1103 = !DILocation(line: 79, column: 10, scope: !1094)
!1104 = !DILocation(line: 79, column: 33, scope: !1094)
!1105 = !DILocation(line: 79, column: 43, scope: !1106)
!1106 = !DILexicalBlockFile(scope: !1094, file: !134, discriminator: 1)
!1107 = !DILocation(line: 79, column: 47, scope: !1106)
!1108 = !DILocation(line: 79, column: 36, scope: !1106)
!1109 = !DILocation(line: 79, column: 33, scope: !1106)
!1110 = !DILocation(line: 79, column: 33, scope: !1111)
!1111 = !DILexicalBlockFile(scope: !1094, file: !134, discriminator: 2)
!1112 = !DILocation(line: 79, column: 3, scope: !1111)
!1113 = distinct !DISubprogram(name: "c_isspace", scope: !110, file: !110, line: 69, type: !1114, isLocal: true, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !143)
!1114 = !DISubroutineType(types: !1115)
!1115 = !{!216, !137}
!1116 = !DILocalVariable(name: "c", arg: 1, scope: !1113, file: !110, line: 69, type: !137)
!1117 = !DILocation(line: 69, column: 15, scope: !1113)
!1118 = !DILocation(line: 71, column: 18, scope: !1113)
!1119 = !DILocation(line: 71, column: 9, scope: !1113)
!1120 = !DILocation(line: 71, column: 2, scope: !1113)
