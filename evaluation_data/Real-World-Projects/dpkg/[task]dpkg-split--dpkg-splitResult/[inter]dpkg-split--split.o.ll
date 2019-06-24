; ModuleID = './[inter]dpkg-split--split.o.i'
source_filename = "./[inter]dpkg-split--split.o.i"
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
%struct.fsys_namenode_list = type opaque
%struct.dpkg_error = type { i32, i32, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.varbuf = type { i64, i64, i8* }
%struct.dpkg_ar = type { i8*, i32, i64, i64, i32 }
%struct.parsedb_state = type { i32, i32, %struct.dpkg_error, %struct.pkginfo*, %struct.pkgbin*, i8*, i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"--split needs a source filename argument\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"--split takes at most a source filename and destination prefix\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c".deb\00", align 1
@opt_maxpartsize = external global i64, align 8
@opt_msdos = external global i32, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"unable to open source file '%.250s'\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"unable to fstat source file\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"source file '%.250s' not a plain file\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"cannot compute MD5 hash for file '%s': %s\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"SOURCE_DATE_EPOCH\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"Splitting package %s into %d part: \00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"Splitting package %s into %d parts: \00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"%dof%d\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"%s/%.*s%.8s.deb\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"%s.%dof%d.deb\00", align 1
@.str.13 = private unnamed_addr constant [132 x i8] c"header is too long, making part too long; the package name or version\0Anumbers must be extraordinarily long, or something; giving up\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"%s\0A%s\0A%s\0A%s\0A%jd\0A%jd\0A%d/%d\0A%s\0A\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"2.1\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"debian-split\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"data.%d\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"done\0A\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"dpkg-deb\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"--info\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"control\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"unable to execute %s (%s)\00", align 1
@.str.24 = private unnamed_addr constant [31 x i8] c"package field value extraction\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"<dpkg-deb --info pipe>\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"unable to parse timestamp '%.255s'\00", align 1

; Function Attrs: nounwind uwtable
define i32 @do_split(i8**) #0 !dbg !137 {
  %2 = alloca i8**, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !148, metadata !149), !dbg !150
  call void @llvm.dbg.declare(metadata i8** %3, metadata !151, metadata !149), !dbg !152
  call void @llvm.dbg.declare(metadata i8** %4, metadata !153, metadata !149), !dbg !154
  %6 = load i8**, i8*** %2, align 8, !dbg !155
  %7 = getelementptr inbounds i8*, i8** %6, i32 1, !dbg !155
  store i8** %7, i8*** %2, align 8, !dbg !155
  %8 = load i8*, i8** %6, align 8, !dbg !156
  store i8* %8, i8** %3, align 8, !dbg !157
  %9 = load i8*, i8** %3, align 8, !dbg !158
  %10 = icmp ne i8* %9, null, !dbg !158
  br i1 %10, label %13, label %11, !dbg !160

; <label>:11:                                     ; preds = %1
  %12 = call i8* @gettext(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i32 0, i32 0)) #9, !dbg !161
  call void (i8*, ...) @badusage(i8* %12) #10, !dbg !162
  unreachable, !dbg !164

; <label>:13:                                     ; preds = %1
  %14 = load i8**, i8*** %2, align 8, !dbg !165
  %15 = getelementptr inbounds i8*, i8** %14, i32 1, !dbg !165
  store i8** %15, i8*** %2, align 8, !dbg !165
  %16 = load i8*, i8** %14, align 8, !dbg !166
  store i8* %16, i8** %4, align 8, !dbg !167
  %17 = load i8*, i8** %4, align 8, !dbg !168
  %18 = icmp ne i8* %17, null, !dbg !168
  br i1 %18, label %19, label %25, !dbg !170

; <label>:19:                                     ; preds = %13
  %20 = load i8**, i8*** %2, align 8, !dbg !171
  %21 = load i8*, i8** %20, align 8, !dbg !173
  %22 = icmp ne i8* %21, null, !dbg !173
  br i1 %22, label %23, label %25, !dbg !174

; <label>:23:                                     ; preds = %19
  %24 = call i8* @gettext(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i32 0, i32 0)) #9, !dbg !175
  call void (i8*, ...) @badusage(i8* %24) #10, !dbg !176
  unreachable, !dbg !177

; <label>:25:                                     ; preds = %19, %13
  %26 = load i8*, i8** %4, align 8, !dbg !178
  %27 = icmp ne i8* %26, null, !dbg !178
  br i1 %27, label %40, label %28, !dbg !180

; <label>:28:                                     ; preds = %25
  call void @llvm.dbg.declare(metadata i64* %5, metadata !181, metadata !149), !dbg !186
  %29 = load i8*, i8** %3, align 8, !dbg !187
  %30 = call i64 @strlen(i8* %29) #11, !dbg !188
  store i64 %30, i64* %5, align 8, !dbg !186
  %31 = load i8*, i8** %3, align 8, !dbg !189
  %32 = call zeroext i1 @str_match_end(i8* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0)), !dbg !191
  br i1 %32, label %33, label %36, !dbg !192

; <label>:33:                                     ; preds = %28
  %34 = load i64, i64* %5, align 8, !dbg !193
  %35 = sub i64 %34, 4, !dbg !193
  store i64 %35, i64* %5, align 8, !dbg !193
  br label %36, !dbg !194

; <label>:36:                                     ; preds = %33, %28
  %37 = load i8*, i8** %3, align 8, !dbg !195
  %38 = load i64, i64* %5, align 8, !dbg !196
  %39 = call i8* @nfstrnsave(i8* %37, i64 %38), !dbg !197
  store i8* %39, i8** %4, align 8, !dbg !198
  br label %40, !dbg !199

; <label>:40:                                     ; preds = %36, %25
  %41 = load i8*, i8** %3, align 8, !dbg !200
  %42 = load i8*, i8** %4, align 8, !dbg !201
  %43 = load i64, i64* @opt_maxpartsize, align 8, !dbg !202
  %44 = load i32, i32* @opt_msdos, align 4, !dbg !203
  %45 = icmp ne i32 %44, 0, !dbg !203
  %46 = call i32 @mksplit(i8* %41, i8* %42, i64 %43, i1 zeroext %45), !dbg !204
  ret i32 0, !dbg !205
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noreturn
declare void @badusage(i8*, ...) #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare zeroext i1 @str_match_end(i8*, i8*) #5

declare i8* @nfstrnsave(i8*, i64) #5

; Function Attrs: nounwind uwtable
define internal i32 @mksplit(i8*, i8*, i64, i1 zeroext) #0 !dbg !206 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca %struct.pkginfo*, align 8
  %10 = alloca %struct.dpkg_error, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.stat, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca [33 x i8], align 16
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca %struct.varbuf, align 8
  %25 = alloca %struct.varbuf, align 8
  %26 = alloca %struct.varbuf, align 8
  %27 = alloca i8*, align 8
  %28 = alloca %struct.dpkg_ar*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !214, metadata !149), !dbg !215
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !216, metadata !149), !dbg !217
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !218, metadata !149), !dbg !219
  %31 = zext i1 %3 to i8
  store i8 %31, i8* %8, align 1
  call void @llvm.dbg.declare(metadata i8* %8, metadata !220, metadata !149), !dbg !221
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %9, metadata !222, metadata !149), !dbg !353
  call void @llvm.dbg.declare(metadata %struct.dpkg_error* %10, metadata !354, metadata !149), !dbg !361
  call void @llvm.dbg.declare(metadata i32* %11, metadata !362, metadata !149), !dbg !363
  call void @llvm.dbg.declare(metadata %struct.stat* %12, metadata !364, metadata !149), !dbg !401
  call void @llvm.dbg.declare(metadata i64* %13, metadata !402, metadata !149), !dbg !404
  call void @llvm.dbg.declare(metadata i8** %14, metadata !405, metadata !149), !dbg !406
  call void @llvm.dbg.declare(metadata i8** %15, metadata !407, metadata !149), !dbg !408
  call void @llvm.dbg.declare(metadata [33 x i8]* %16, metadata !409, metadata !149), !dbg !413
  call void @llvm.dbg.declare(metadata i32* %17, metadata !414, metadata !149), !dbg !415
  call void @llvm.dbg.declare(metadata i32* %18, metadata !416, metadata !149), !dbg !417
  call void @llvm.dbg.declare(metadata i64* %19, metadata !418, metadata !149), !dbg !419
  call void @llvm.dbg.declare(metadata i64* %20, metadata !420, metadata !149), !dbg !421
  call void @llvm.dbg.declare(metadata i64* %21, metadata !422, metadata !149), !dbg !423
  call void @llvm.dbg.declare(metadata i8** %22, metadata !424, metadata !149), !dbg !425
  store i8* null, i8** %22, align 8, !dbg !425
  call void @llvm.dbg.declare(metadata i8** %23, metadata !426, metadata !149), !dbg !427
  store i8* null, i8** %23, align 8, !dbg !427
  call void @llvm.dbg.declare(metadata %struct.varbuf* %24, metadata !428, metadata !149), !dbg !435
  %32 = bitcast %struct.varbuf* %24 to i8*, !dbg !435
  call void @llvm.memset.p0i8.i64(i8* %32, i8 0, i64 24, i32 8, i1 false), !dbg !435
  call void @llvm.dbg.declare(metadata %struct.varbuf* %25, metadata !436, metadata !149), !dbg !437
  %33 = bitcast %struct.varbuf* %25 to i8*, !dbg !437
  call void @llvm.memset.p0i8.i64(i8* %33, i8 0, i64 24, i32 8, i1 false), !dbg !437
  call void @llvm.dbg.declare(metadata %struct.varbuf* %26, metadata !438, metadata !149), !dbg !439
  %34 = bitcast %struct.varbuf* %26 to i8*, !dbg !439
  call void @llvm.memset.p0i8.i64(i8* %34, i8 0, i64 24, i32 8, i1 false), !dbg !439
  %35 = load i8*, i8** %5, align 8, !dbg !440
  %36 = call i32 (i8*, i32, ...) @open(i8* %35, i32 0), !dbg !441
  store i32 %36, i32* %11, align 4, !dbg !442
  %37 = load i32, i32* %11, align 4, !dbg !443
  %38 = icmp slt i32 %37, 0, !dbg !445
  br i1 %38, label %39, label %42, !dbg !446

; <label>:39:                                     ; preds = %4
  %40 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0)) #9, !dbg !447
  %41 = load i8*, i8** %5, align 8, !dbg !448
  call void (i8*, ...) @ohshite(i8* %40, i8* %41) #10, !dbg !449
  unreachable, !dbg !451

; <label>:42:                                     ; preds = %4
  %43 = load i32, i32* %11, align 4, !dbg !452
  %44 = call i32 @fstat(i32 %43, %struct.stat* %12) #9, !dbg !454
  %45 = icmp ne i32 %44, 0, !dbg !454
  br i1 %45, label %46, label %48, !dbg !455

; <label>:46:                                     ; preds = %42
  %47 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0)) #9, !dbg !456
  call void (i8*, ...) @ohshite(i8* %47) #10, !dbg !457
  unreachable, !dbg !459

; <label>:48:                                     ; preds = %42
  %49 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 3, !dbg !460
  %50 = load i32, i32* %49, align 8, !dbg !460
  %51 = and i32 %50, 61440, !dbg !460
  %52 = icmp eq i32 %51, 32768, !dbg !462
  br i1 %52, label %56, label %53, !dbg !463

; <label>:53:                                     ; preds = %48
  %54 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i32 0, i32 0)) #9, !dbg !464
  %55 = load i8*, i8** %5, align 8, !dbg !465
  call void (i8*, ...) @ohshit(i8* %54, i8* %55) #10, !dbg !466
  unreachable, !dbg !468

; <label>:56:                                     ; preds = %48
  %57 = load i32, i32* %11, align 4, !dbg !469
  %58 = getelementptr inbounds [33 x i8], [33 x i8]* %16, i32 0, i32 0, !dbg !471
  %59 = call i64 @buffer_copy_IntPtr(i32 %57, i32 0, i8* %58, i32 5, i8* null, i32 3, i64 -1, %struct.dpkg_error* %10), !dbg !472
  %60 = icmp slt i64 %59, 0, !dbg !473
  br i1 %60, label %61, label %66, !dbg !474

; <label>:61:                                     ; preds = %56
  %62 = call i8* @gettext(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i32 0, i32 0)) #9, !dbg !475
  %63 = load i8*, i8** %5, align 8, !dbg !476
  %64 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %10, i32 0, i32 2, !dbg !477
  %65 = load i8*, i8** %64, align 8, !dbg !477
  call void (i8*, ...) @ohshit(i8* %62, i8* %63, i8* %65) #10, !dbg !478
  unreachable, !dbg !480

; <label>:66:                                     ; preds = %56
  %67 = load i32, i32* %11, align 4, !dbg !481
  %68 = call i64 @lseek(i32 %67, i64 0, i32 0) #9, !dbg !482
  %69 = load i8*, i8** %5, align 8, !dbg !483
  %70 = call %struct.pkginfo* @deb_parse_control(i8* %69), !dbg !484
  store %struct.pkginfo* %70, %struct.pkginfo** %9, align 8, !dbg !485
  %71 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !486
  %72 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %71, i32 0, i32 10, !dbg !487
  %73 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %72, i32 0, i32 11, !dbg !488
  %74 = call i8* @versiondescribe(%struct.dpkg_version* %73, i32 1), !dbg !489
  store i8* %74, i8** %15, align 8, !dbg !490
  %75 = call i8* @getenv(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0)) #9, !dbg !491
  store i8* %75, i8** %14, align 8, !dbg !492
  %76 = load i8*, i8** %14, align 8, !dbg !493
  %77 = icmp ne i8* %76, null, !dbg !493
  br i1 %77, label %78, label %81, !dbg !495

; <label>:78:                                     ; preds = %66
  %79 = load i8*, i8** %14, align 8, !dbg !496
  %80 = call i64 @parse_timestamp(i8* %79), !dbg !497
  store i64 %80, i64* %13, align 8, !dbg !498
  br label %83, !dbg !499

; <label>:81:                                     ; preds = %66
  %82 = call i64 @time(i64* null) #9, !dbg !500
  store i64 %82, i64* %13, align 8, !dbg !501
  br label %83

; <label>:83:                                     ; preds = %81, %78
  %84 = load i64, i64* %7, align 8, !dbg !502
  %85 = sub nsw i64 %84, 1024, !dbg !503
  store i64 %85, i64* %19, align 8, !dbg !504
  %86 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 8, !dbg !505
  %87 = load i64, i64* %86, align 8, !dbg !505
  %88 = load i64, i64* %19, align 8, !dbg !506
  %89 = srem i64 %87, %88, !dbg !507
  store i64 %89, i64* %21, align 8, !dbg !508
  %90 = load i64, i64* %21, align 8, !dbg !509
  %91 = icmp eq i64 %90, 0, !dbg !511
  br i1 %91, label %92, label %94, !dbg !512

; <label>:92:                                     ; preds = %83
  %93 = load i64, i64* %19, align 8, !dbg !513
  store i64 %93, i64* %21, align 8, !dbg !514
  br label %94, !dbg !515

; <label>:94:                                     ; preds = %92, %83
  %95 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 8, !dbg !516
  %96 = load i64, i64* %95, align 8, !dbg !516
  %97 = load i64, i64* %19, align 8, !dbg !517
  %98 = add nsw i64 %96, %97, !dbg !518
  %99 = sub nsw i64 %98, 1, !dbg !519
  %100 = load i64, i64* %19, align 8, !dbg !520
  %101 = sdiv i64 %99, %100, !dbg !521
  %102 = trunc i64 %101 to i32, !dbg !522
  store i32 %102, i32* %17, align 4, !dbg !523
  %103 = load i32, i32* %17, align 4, !dbg !524
  %104 = sext i32 %103 to i64, !dbg !524
  %105 = call i8* @ngettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0), i64 %104) #9, !dbg !525
  %106 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !526
  %107 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %106, i32 0, i32 0, !dbg !527
  %108 = load %struct.pkgset*, %struct.pkgset** %107, align 8, !dbg !527
  %109 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %108, i32 0, i32 1, !dbg !528
  %110 = load i8*, i8** %109, align 8, !dbg !528
  %111 = load i32, i32* %17, align 4, !dbg !529
  %112 = call i32 (i8*, ...) @printf(i8* %105, i8* %110, i32 %111), !dbg !530
  %113 = load i8, i8* %8, align 1, !dbg !532
  %114 = trunc i8 %113 to i1, !dbg !532
  br i1 %114, label %115, label %127, !dbg !534

; <label>:115:                                    ; preds = %94
  call void @llvm.dbg.declare(metadata i8** %27, metadata !535, metadata !149), !dbg !537
  %116 = load i8*, i8** %6, align 8, !dbg !538
  %117 = call i8* @m_strdup(i8* %116), !dbg !539
  store i8* %117, i8** %27, align 8, !dbg !540
  %118 = load i8*, i8** %27, align 8, !dbg !541
  %119 = call i8* @dirname(i8* %118) #9, !dbg !542
  %120 = call i8* @m_strdup(i8* %119), !dbg !543
  store i8* %120, i8** %22, align 8, !dbg !545
  %121 = load i8*, i8** %27, align 8, !dbg !546
  call void @free(i8* %121) #9, !dbg !547
  %122 = load i8*, i8** %6, align 8, !dbg !548
  %123 = call i8* @path_basename(i8* %122), !dbg !549
  %124 = call i8* @m_strdup(i8* %123), !dbg !550
  store i8* %124, i8** %23, align 8, !dbg !551
  %125 = load i8*, i8** %23, align 8, !dbg !552
  %126 = call i8* @clean_msdos_filename(i8* %125), !dbg !553
  store i8* %126, i8** %6, align 8, !dbg !554
  br label %127, !dbg !555

; <label>:127:                                    ; preds = %115, %94
  store i32 1, i32* %18, align 4, !dbg !556
  br label %128, !dbg !558

; <label>:128:                                    ; preds = %217, %127
  %129 = load i32, i32* %18, align 4, !dbg !559
  %130 = load i32, i32* %17, align 4, !dbg !562
  %131 = icmp sle i32 %129, %130, !dbg !563
  br i1 %131, label %132, label %220, !dbg !564

; <label>:132:                                    ; preds = %128
  call void @llvm.dbg.declare(metadata %struct.dpkg_ar** %28, metadata !565, metadata !149), !dbg !577
  call void @varbuf_reset(%struct.varbuf* %24), !dbg !578
  %133 = load i8, i8* %8, align 1, !dbg !579
  %134 = trunc i8 %133 to i1, !dbg !579
  br i1 %134, label %135, label %157, !dbg !581

; <label>:135:                                    ; preds = %132
  call void @llvm.dbg.declare(metadata i8** %29, metadata !582, metadata !149), !dbg !584
  call void @llvm.dbg.declare(metadata i32* %30, metadata !585, metadata !149), !dbg !586
  %136 = load i32, i32* %18, align 4, !dbg !587
  %137 = load i32, i32* %17, align 4, !dbg !588
  %138 = call i8* (i8*, ...) @str_fmt(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 %136, i32 %137), !dbg !589
  store i8* %138, i8** %29, align 8, !dbg !590
  %139 = load i8*, i8** %29, align 8, !dbg !591
  %140 = call i64 @strlen(i8* %139) #11, !dbg !592
  %141 = sub i64 8, %140, !dbg !593
  %142 = icmp ugt i64 %141, 0, !dbg !594
  br i1 %142, label %143, label %147, !dbg !595

; <label>:143:                                    ; preds = %135
  %144 = load i8*, i8** %29, align 8, !dbg !596
  %145 = call i64 @strlen(i8* %144) #11, !dbg !598
  %146 = sub i64 8, %145, !dbg !599
  br label %148, !dbg !600

; <label>:147:                                    ; preds = %135
  br label %148, !dbg !601

; <label>:148:                                    ; preds = %147, %143
  %149 = phi i64 [ %146, %143 ], [ 0, %147 ], !dbg !603
  %150 = trunc i64 %149 to i32, !dbg !605
  store i32 %150, i32* %30, align 4, !dbg !606
  %151 = load i8*, i8** %22, align 8, !dbg !607
  %152 = load i32, i32* %30, align 4, !dbg !608
  %153 = load i8*, i8** %6, align 8, !dbg !609
  %154 = load i8*, i8** %29, align 8, !dbg !610
  %155 = call i32 (%struct.varbuf*, i8*, ...) @varbuf_printf(%struct.varbuf* %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i8* %151, i32 %152, i8* %153, i8* %154), !dbg !611
  %156 = load i8*, i8** %29, align 8, !dbg !612
  call void @free(i8* %156) #9, !dbg !613
  br label %162, !dbg !614

; <label>:157:                                    ; preds = %132
  %158 = load i8*, i8** %6, align 8, !dbg !615
  %159 = load i32, i32* %18, align 4, !dbg !617
  %160 = load i32, i32* %17, align 4, !dbg !618
  %161 = call i32 (%struct.varbuf*, i8*, ...) @varbuf_printf(%struct.varbuf* %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i8* %158, i32 %159, i32 %160), !dbg !619
  br label %162

; <label>:162:                                    ; preds = %157, %148
  %163 = load i32, i32* %18, align 4, !dbg !620
  %164 = load i32, i32* %17, align 4, !dbg !622
  %165 = icmp eq i32 %163, %164, !dbg !623
  br i1 %165, label %166, label %168, !dbg !624

; <label>:166:                                    ; preds = %162
  %167 = load i64, i64* %21, align 8, !dbg !625
  store i64 %167, i64* %20, align 8, !dbg !626
  br label %170, !dbg !627

; <label>:168:                                    ; preds = %162
  %169 = load i64, i64* %19, align 8, !dbg !628
  store i64 %169, i64* %20, align 8, !dbg !629
  br label %170

; <label>:170:                                    ; preds = %168, %166
  %171 = load i64, i64* %20, align 8, !dbg !630
  %172 = load i64, i64* %7, align 8, !dbg !632
  %173 = icmp sgt i64 %171, %172, !dbg !633
  br i1 %173, label %174, label %176, !dbg !634

; <label>:174:                                    ; preds = %170
  %175 = call i8* @gettext(i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.13, i32 0, i32 0)) #9, !dbg !635
  call void (i8*, ...) @ohshit(i8* %175) #10, !dbg !637
  unreachable, !dbg !639

; <label>:176:                                    ; preds = %170
  %177 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %24, i32 0, i32 2, !dbg !640
  %178 = load i8*, i8** %177, align 8, !dbg !640
  %179 = call %struct.dpkg_ar* @dpkg_ar_create(i8* %178, i32 420), !dbg !641
  store %struct.dpkg_ar* %179, %struct.dpkg_ar** %28, align 8, !dbg !642
  %180 = load %struct.dpkg_ar*, %struct.dpkg_ar** %28, align 8, !dbg !643
  %181 = load i64, i64* %13, align 8, !dbg !644
  call void @dpkg_ar_set_mtime(%struct.dpkg_ar* %180, i64 %181), !dbg !645
  %182 = load %struct.dpkg_ar*, %struct.dpkg_ar** %28, align 8, !dbg !646
  call void @dpkg_ar_put_magic(%struct.dpkg_ar* %182), !dbg !647
  %183 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !648
  %184 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %183, i32 0, i32 0, !dbg !649
  %185 = load %struct.pkgset*, %struct.pkgset** %184, align 8, !dbg !649
  %186 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %185, i32 0, i32 1, !dbg !650
  %187 = load i8*, i8** %186, align 8, !dbg !650
  %188 = load i8*, i8** %15, align 8, !dbg !651
  %189 = getelementptr inbounds [33 x i8], [33 x i8]* %16, i32 0, i32 0, !dbg !652
  %190 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 8, !dbg !653
  %191 = load i64, i64* %190, align 8, !dbg !653
  %192 = load i64, i64* %19, align 8, !dbg !654
  %193 = load i32, i32* %18, align 4, !dbg !655
  %194 = load i32, i32* %17, align 4, !dbg !656
  %195 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !657
  %196 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %195, i32 0, i32 10, !dbg !658
  %197 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %196, i32 0, i32 3, !dbg !659
  %198 = load %struct.dpkg_arch*, %struct.dpkg_arch** %197, align 8, !dbg !659
  %199 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %198, i32 0, i32 1, !dbg !660
  %200 = load i8*, i8** %199, align 8, !dbg !660
  %201 = call i32 (%struct.varbuf*, i8*, ...) @varbuf_printf(%struct.varbuf* %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* %187, i8* %188, i8* %189, i64 %191, i64 %192, i32 %193, i32 %194, i8* %200), !dbg !661
  %202 = load %struct.dpkg_ar*, %struct.dpkg_ar** %28, align 8, !dbg !662
  %203 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %25, i32 0, i32 2, !dbg !663
  %204 = load i8*, i8** %203, align 8, !dbg !663
  %205 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %25, i32 0, i32 0, !dbg !664
  %206 = load i64, i64* %205, align 8, !dbg !664
  call void @dpkg_ar_member_put_mem(%struct.dpkg_ar* %202, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i8* %204, i64 %206), !dbg !665
  call void @varbuf_reset(%struct.varbuf* %25), !dbg !666
  %207 = load i32, i32* %18, align 4, !dbg !667
  %208 = call i32 (%struct.varbuf*, i8*, ...) @varbuf_printf(%struct.varbuf* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i32 %207), !dbg !668
  %209 = load %struct.dpkg_ar*, %struct.dpkg_ar** %28, align 8, !dbg !669
  %210 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %26, i32 0, i32 2, !dbg !670
  %211 = load i8*, i8** %210, align 8, !dbg !670
  %212 = load i32, i32* %11, align 4, !dbg !671
  %213 = load i64, i64* %20, align 8, !dbg !672
  call void @dpkg_ar_member_put_file(%struct.dpkg_ar* %209, i8* %211, i32 %212, i64 %213), !dbg !673
  call void @varbuf_reset(%struct.varbuf* %26), !dbg !674
  %214 = load %struct.dpkg_ar*, %struct.dpkg_ar** %28, align 8, !dbg !675
  call void @dpkg_ar_close(%struct.dpkg_ar* %214), !dbg !676
  %215 = load i32, i32* %18, align 4, !dbg !677
  %216 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i32 %215), !dbg !678
  br label %217, !dbg !679

; <label>:217:                                    ; preds = %176
  %218 = load i32, i32* %18, align 4, !dbg !680
  %219 = add nsw i32 %218, 1, !dbg !680
  store i32 %219, i32* %18, align 4, !dbg !680
  br label %128, !dbg !682, !llvm.loop !683

; <label>:220:                                    ; preds = %128
  call void @varbuf_destroy(%struct.varbuf* %24), !dbg !685
  call void @varbuf_destroy(%struct.varbuf* %26), !dbg !686
  call void @varbuf_destroy(%struct.varbuf* %25), !dbg !687
  %221 = load i8*, i8** %22, align 8, !dbg !688
  call void @free(i8* %221) #9, !dbg !689
  %222 = load i8*, i8** %23, align 8, !dbg !690
  call void @free(i8* %222) #9, !dbg !691
  %223 = load i32, i32* %11, align 4, !dbg !692
  %224 = call i32 @close(i32 %223), !dbg !693
  %225 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0)) #9, !dbg !694
  %226 = call i32 (i8*, ...) @printf(i8* %225), !dbg !695
  ret i32 0, !dbg !696
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #6

declare i32 @open(i8*, i32, ...) #5

; Function Attrs: noreturn
declare void @ohshite(i8*, ...) #2

; Function Attrs: nounwind
declare i32 @fstat(i32, %struct.stat*) #3

; Function Attrs: noreturn
declare void @ohshit(i8*, ...) #2

declare i64 @buffer_copy_IntPtr(i32, i32, i8*, i32, i8*, i32, i64, %struct.dpkg_error*) #5

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) #3

; Function Attrs: nounwind uwtable
define internal %struct.pkginfo* @deb_parse_control(i8*) #0 !dbg !697 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.parsedb_state*, align 8
  %4 = alloca %struct.pkginfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !700, metadata !149), !dbg !701
  call void @llvm.dbg.declare(metadata %struct.parsedb_state** %3, metadata !702, metadata !149), !dbg !718
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %4, metadata !719, metadata !149), !dbg !720
  call void @llvm.dbg.declare(metadata i32* %5, metadata !721, metadata !149), !dbg !724
  call void @llvm.dbg.declare(metadata [2 x i32]* %6, metadata !725, metadata !149), !dbg !729
  %7 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i32 0, i32 0, !dbg !730
  call void @m_pipe(i32* %7), !dbg !731
  %8 = call i32 @subproc_fork(), !dbg !732
  store i32 %8, i32* %5, align 4, !dbg !733
  %9 = load i32, i32* %5, align 4, !dbg !734
  %10 = icmp eq i32 %9, 0, !dbg !736
  br i1 %10, label %11, label %24, !dbg !737

; <label>:11:                                     ; preds = %1
  %12 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1, !dbg !738
  %13 = load i32, i32* %12, align 4, !dbg !738
  call void @m_dup2(i32 %13, i32 1), !dbg !740
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0, !dbg !741
  %15 = load i32, i32* %14, align 4, !dbg !741
  %16 = call i32 @close(i32 %15), !dbg !742
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1, !dbg !743
  %18 = load i32, i32* %17, align 4, !dbg !743
  %19 = call i32 @close(i32 %18), !dbg !744
  %20 = load i8*, i8** %2, align 8, !dbg !745
  %21 = call i32 (i8*, i8*, ...) @execlp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), i8* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i8* null) #9, !dbg !746
  %22 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.23, i32 0, i32 0)) #9, !dbg !747
  %23 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.24, i32 0, i32 0)) #9, !dbg !748
  call void (i8*, ...) @ohshite(i8* %22, i8* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0)) #10, !dbg !749
  unreachable, !dbg !751

; <label>:24:                                     ; preds = %1
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1, !dbg !752
  %26 = load i32, i32* %25, align 4, !dbg !752
  %27 = call i32 @close(i32 %26), !dbg !753
  %28 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i32 0, i32 0)) #9, !dbg !754
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0, !dbg !755
  %30 = load i32, i32* %29, align 4, !dbg !755
  %31 = call %struct.parsedb_state* @parsedb_new(i8* %28, i32 %30, i32 7), !dbg !756
  store %struct.parsedb_state* %31, %struct.parsedb_state** %3, align 8, !dbg !758
  %32 = load %struct.parsedb_state*, %struct.parsedb_state** %3, align 8, !dbg !759
  call void @parsedb_load(%struct.parsedb_state* %32), !dbg !760
  %33 = load %struct.parsedb_state*, %struct.parsedb_state** %3, align 8, !dbg !761
  %34 = call i32 @parsedb_parse(%struct.parsedb_state* %33, %struct.pkginfo** %4), !dbg !762
  %35 = load %struct.parsedb_state*, %struct.parsedb_state** %3, align 8, !dbg !763
  call void @parsedb_close(%struct.parsedb_state* %35), !dbg !764
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0, !dbg !765
  %37 = load i32, i32* %36, align 4, !dbg !765
  %38 = call i32 @close(i32 %37), !dbg !766
  %39 = load i32, i32* %5, align 4, !dbg !767
  %40 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.24, i32 0, i32 0)) #9, !dbg !768
  %41 = call i32 @subproc_reap(i32 %39, i8* %40, i32 2), !dbg !769
  %42 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !770
  ret %struct.pkginfo* %42, !dbg !771
}

declare i8* @versiondescribe(%struct.dpkg_version*, i32) #5

; Function Attrs: nounwind
declare i8* @getenv(i8*) #3

; Function Attrs: nounwind uwtable
define internal i64 @parse_timestamp(i8*) #0 !dbg !772 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !775, metadata !149), !dbg !776
  call void @llvm.dbg.declare(metadata i64* %3, metadata !777, metadata !149), !dbg !778
  call void @llvm.dbg.declare(metadata i8** %4, metadata !779, metadata !149), !dbg !780
  %5 = call i32* @__errno_location() #1, !dbg !781
  store i32 0, i32* %5, align 4, !dbg !782
  %6 = load i8*, i8** %2, align 8, !dbg !783
  %7 = call i64 @strtol(i8* %6, i8** %4, i32 10) #9, !dbg !784
  store i64 %7, i64* %3, align 8, !dbg !785
  %8 = load i8*, i8** %2, align 8, !dbg !786
  %9 = load i8*, i8** %4, align 8, !dbg !788
  %10 = icmp eq i8* %8, %9, !dbg !789
  br i1 %10, label %20, label %11, !dbg !790

; <label>:11:                                     ; preds = %1
  %12 = load i8*, i8** %4, align 8, !dbg !791
  %13 = load i8, i8* %12, align 1, !dbg !793
  %14 = sext i8 %13 to i32, !dbg !793
  %15 = icmp ne i32 %14, 0, !dbg !793
  br i1 %15, label %20, label %16, !dbg !794

; <label>:16:                                     ; preds = %11
  %17 = call i32* @__errno_location() #1, !dbg !795
  %18 = load i32, i32* %17, align 4, !dbg !797
  %19 = icmp ne i32 %18, 0, !dbg !798
  br i1 %19, label %20, label %23, !dbg !799

; <label>:20:                                     ; preds = %16, %11, %1
  %21 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.26, i32 0, i32 0)) #9, !dbg !800
  %22 = load i8*, i8** %2, align 8, !dbg !801
  call void (i8*, ...) @ohshite(i8* %21, i8* %22) #10, !dbg !802
  unreachable, !dbg !803

; <label>:23:                                     ; preds = %16
  %24 = load i64, i64* %3, align 8, !dbg !804
  ret i64 %24, !dbg !805
}

; Function Attrs: nounwind
declare i64 @time(i64*) #3

declare i32 @printf(i8*, ...) #5

; Function Attrs: nounwind
declare i8* @ngettext(i8*, i8*, i64) #3

declare i8* @m_strdup(i8*) #5

; Function Attrs: nounwind
declare i8* @dirname(i8*) #3

; Function Attrs: nounwind
declare void @free(i8*) #3

declare i8* @path_basename(i8*) #5

; Function Attrs: nounwind uwtable
define internal i8* @clean_msdos_filename(i8*) #0 !dbg !806 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !809, metadata !149), !dbg !810
  call void @llvm.dbg.declare(metadata i8** %3, metadata !811, metadata !149), !dbg !812
  call void @llvm.dbg.declare(metadata i8** %4, metadata !813, metadata !149), !dbg !814
  %5 = load i8*, i8** %2, align 8, !dbg !815
  store i8* %5, i8** %3, align 8, !dbg !817
  store i8* %5, i8** %4, align 8, !dbg !818
  br label %6, !dbg !819

; <label>:6:                                      ; preds = %49, %1
  %7 = load i8*, i8** %4, align 8, !dbg !820
  %8 = load i8, i8* %7, align 1, !dbg !823
  %9 = icmp ne i8 %8, 0, !dbg !824
  br i1 %9, label %10, label %54, !dbg !824

; <label>:10:                                     ; preds = %6
  %11 = load i8*, i8** %4, align 8, !dbg !825
  %12 = load i8, i8* %11, align 1, !dbg !828
  %13 = sext i8 %12 to i32, !dbg !828
  %14 = icmp eq i32 %13, 43, !dbg !829
  br i1 %14, label %15, label %17, !dbg !830

; <label>:15:                                     ; preds = %10
  %16 = load i8*, i8** %3, align 8, !dbg !831
  store i8 120, i8* %16, align 1, !dbg !832
  br label %48, !dbg !833

; <label>:17:                                     ; preds = %10
  %18 = load i8*, i8** %4, align 8, !dbg !834
  %19 = load i8, i8* %18, align 1, !dbg !836
  %20 = sext i8 %19 to i32, !dbg !836
  %21 = call zeroext i1 @c_isupper(i32 %20), !dbg !837
  br i1 %21, label %22, label %29, !dbg !838

; <label>:22:                                     ; preds = %17
  %23 = load i8*, i8** %4, align 8, !dbg !839
  %24 = load i8, i8* %23, align 1, !dbg !840
  %25 = sext i8 %24 to i32, !dbg !840
  %26 = call i32 @c_tolower(i32 %25), !dbg !841
  %27 = trunc i32 %26 to i8, !dbg !841
  %28 = load i8*, i8** %3, align 8, !dbg !842
  store i8 %27, i8* %28, align 1, !dbg !843
  br label %47, !dbg !844

; <label>:29:                                     ; preds = %17
  %30 = load i8*, i8** %4, align 8, !dbg !845
  %31 = load i8, i8* %30, align 1, !dbg !847
  %32 = sext i8 %31 to i32, !dbg !847
  %33 = call zeroext i1 @c_islower(i32 %32), !dbg !848
  br i1 %33, label %39, label %34, !dbg !849

; <label>:34:                                     ; preds = %29
  %35 = load i8*, i8** %4, align 8, !dbg !850
  %36 = load i8, i8* %35, align 1, !dbg !852
  %37 = sext i8 %36 to i32, !dbg !852
  %38 = call zeroext i1 @c_isdigit(i32 %37), !dbg !853
  br i1 %38, label %39, label %43, !dbg !854

; <label>:39:                                     ; preds = %34, %29
  %40 = load i8*, i8** %4, align 8, !dbg !855
  %41 = load i8, i8* %40, align 1, !dbg !856
  %42 = load i8*, i8** %3, align 8, !dbg !857
  store i8 %41, i8* %42, align 1, !dbg !858
  br label %46, !dbg !859

; <label>:43:                                     ; preds = %34
  %44 = load i8*, i8** %4, align 8, !dbg !860
  %45 = getelementptr inbounds i8, i8* %44, i32 1, !dbg !860
  store i8* %45, i8** %4, align 8, !dbg !860
  br label %46

; <label>:46:                                     ; preds = %43, %39
  br label %47

; <label>:47:                                     ; preds = %46, %22
  br label %48

; <label>:48:                                     ; preds = %47, %15
  br label %49, !dbg !861

; <label>:49:                                     ; preds = %48
  %50 = load i8*, i8** %3, align 8, !dbg !862
  %51 = getelementptr inbounds i8, i8* %50, i32 1, !dbg !862
  store i8* %51, i8** %3, align 8, !dbg !862
  %52 = load i8*, i8** %4, align 8, !dbg !864
  %53 = getelementptr inbounds i8, i8* %52, i32 1, !dbg !864
  store i8* %53, i8** %4, align 8, !dbg !864
  br label %6, !dbg !865, !llvm.loop !866

; <label>:54:                                     ; preds = %6
  %55 = load i8*, i8** %2, align 8, !dbg !868
  ret i8* %55, !dbg !869
}

declare void @varbuf_reset(%struct.varbuf*) #5

declare i8* @str_fmt(i8*, ...) #5

declare i32 @varbuf_printf(%struct.varbuf*, i8*, ...) #5

declare %struct.dpkg_ar* @dpkg_ar_create(i8*, i32) #5

declare void @dpkg_ar_set_mtime(%struct.dpkg_ar*, i64) #5

declare void @dpkg_ar_put_magic(%struct.dpkg_ar*) #5

declare void @dpkg_ar_member_put_mem(%struct.dpkg_ar*, i8*, i8*, i64) #5

declare void @dpkg_ar_member_put_file(%struct.dpkg_ar*, i8*, i32, i64) #5

declare void @dpkg_ar_close(%struct.dpkg_ar*) #5

declare void @varbuf_destroy(%struct.varbuf*) #5

declare i32 @close(i32) #5

declare void @m_pipe(i32*) #5

declare i32 @subproc_fork() #5

declare void @m_dup2(i32, i32) #5

; Function Attrs: nounwind
declare i32 @execlp(i8*, i8*, ...) #3

declare %struct.parsedb_state* @parsedb_new(i8*, i32, i32) #5

declare void @parsedb_load(%struct.parsedb_state*) #5

declare i32 @parsedb_parse(%struct.parsedb_state*, %struct.pkginfo**) #5

declare void @parsedb_close(%struct.parsedb_state*) #5

declare i32 @subproc_reap(i32, i8*, i32) #5

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #7

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #3

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @c_isupper(i32) #8 !dbg !870 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !873, metadata !149), !dbg !874
  %3 = load i32, i32* %2, align 4, !dbg !875
  %4 = call zeroext i1 @c_isbits(i32 %3, i32 8), !dbg !876
  ret i1 %4, !dbg !877
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @c_tolower(i32) #8 !dbg !878 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !881, metadata !149), !dbg !882
  %3 = load i32, i32* %2, align 4, !dbg !883
  %4 = call zeroext i1 @c_isupper(i32 %3), !dbg !884
  br i1 %4, label %5, label %11, !dbg !884

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !885
  %7 = trunc i32 %6 to i8, !dbg !887
  %8 = zext i8 %7 to i32, !dbg !887
  %9 = and i32 %8, -33, !dbg !888
  %10 = or i32 %9, 32, !dbg !889
  br label %13, !dbg !890

; <label>:11:                                     ; preds = %1
  %12 = load i32, i32* %2, align 4, !dbg !891
  br label %13, !dbg !893

; <label>:13:                                     ; preds = %11, %5
  %14 = phi i32 [ %10, %5 ], [ %12, %11 ], !dbg !894
  ret i32 %14, !dbg !896
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @c_islower(i32) #8 !dbg !897 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !898, metadata !149), !dbg !899
  %3 = load i32, i32* %2, align 4, !dbg !900
  %4 = call zeroext i1 @c_isbits(i32 %3, i32 16), !dbg !901
  ret i1 %4, !dbg !902
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @c_isdigit(i32) #8 !dbg !903 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !904, metadata !149), !dbg !905
  %3 = load i32, i32* %2, align 4, !dbg !906
  %4 = call zeroext i1 @c_isbits(i32 %3, i32 32), !dbg !907
  ret i1 %4, !dbg !908
}

declare zeroext i1 @c_isbits(i32, i32) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind }
attributes #10 = { noreturn }
attributes #11 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!134, !135}
!llvm.ident = !{!136}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !128)
!1 = !DIFile(filename: "[inter]dpkg-split--split.o.i", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-split--dpkg-split")
!2 = !{!3, !15, !26, !35, !43, !47, !57, !67, !73, !79, !84, !91, !108, !117}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "deptype", file: !4, line: 44, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../lib/dpkg/dpkg-db.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-split--dpkg-split")
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
!16 = !DIFile(filename: "../lib/dpkg/arch.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-split--dpkg-split")
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
!27 = !DIFile(filename: "../lib/dpkg/version.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-split--dpkg-split")
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
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_msg_type", file: !74, line: 36, size: 32, align: 32, elements: !75)
!74 = !DIFile(filename: "../lib/dpkg/error.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-split--dpkg-split")
!75 = !{!76, !77, !78}
!76 = !DIEnumerator(name: "DPKG_MSG_NONE", value: 0)
!77 = !DIEnumerator(name: "DPKG_MSG_WARN", value: 1)
!78 = !DIEnumerator(name: "DPKG_MSG_ERROR", value: 2)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "versiondisplayepochwhen", file: !4, line: 388, size: 32, align: 32, elements: !80)
!80 = !{!81, !82, !83}
!81 = !DIEnumerator(name: "vdew_never", value: 0)
!82 = !DIEnumerator(name: "vdew_nonambig", value: 1)
!83 = !DIEnumerator(name: "vdew_always", value: 2)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "parsedbtype", file: !85, line: 41, size: 32, align: 32, elements: !86)
!85 = !DIFile(filename: "../lib/dpkg/parsedump.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-split--dpkg-split")
!86 = !{!87, !88, !89, !90}
!87 = !DIEnumerator(name: "pdb_file_update", value: 0)
!88 = !DIEnumerator(name: "pdb_file_status", value: 1)
!89 = !DIEnumerator(name: "pdb_file_control", value: 2)
!90 = !DIEnumerator(name: "pdb_file_available", value: 3)
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "parsedbflags", file: !4, line: 328, size: 32, align: 32, elements: !92)
!92 = !{!93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107}
!93 = !DIEnumerator(name: "pdb_single_stanza", value: 1)
!94 = !DIEnumerator(name: "pdb_recordavailable", value: 2)
!95 = !DIEnumerator(name: "pdb_rejectstatus", value: 4)
!96 = !DIEnumerator(name: "pdb_weakclassification", value: 8)
!97 = !DIEnumerator(name: "pdb_ignore_archives", value: 16)
!98 = !DIEnumerator(name: "pdb_ignoreolder", value: 32)
!99 = !DIEnumerator(name: "pdb_lax_version_parser", value: 64)
!100 = !DIEnumerator(name: "pdb_lax_stanza_parser", value: 512)
!101 = !DIEnumerator(name: "pdb_lax_parser", value: 576)
!102 = !DIEnumerator(name: "pdb_close_fd", value: 128)
!103 = !DIEnumerator(name: "pdb_dash_is_stdin", value: 256)
!104 = !DIEnumerator(name: "pdb_parse_status", value: 584)
!105 = !DIEnumerator(name: "pdb_parse_update", value: 585)
!106 = !DIEnumerator(name: "pdb_parse_available", value: 582)
!107 = !DIEnumerator(name: "pdb_parse_binary", value: 7)
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "subproc_flags", file: !109, line: 36, size: 32, align: 32, elements: !110)
!109 = !DIFile(filename: "../lib/dpkg/subproc.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-split--dpkg-split")
!110 = !{!111, !112, !113, !114, !115, !116}
!111 = !DIEnumerator(name: "SUBPROC_NORMAL", value: 0)
!112 = !DIEnumerator(name: "SUBPROC_WARN", value: 1)
!113 = !DIEnumerator(name: "SUBPROC_NOPIPE", value: 2)
!114 = !DIEnumerator(name: "SUBPROC_NOCHECK", value: 4)
!115 = !DIEnumerator(name: "SUBPROC_RETERROR", value: 8)
!116 = !DIEnumerator(name: "SUBPROC_RETSIGNO", value: 8)
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "c_ctype_bit", file: !118, line: 32, size: 32, align: 32, elements: !119)
!118 = !DIFile(filename: "../lib/dpkg/c-ctype.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-split--dpkg-split")
!119 = !{!120, !121, !122, !123, !124, !125, !126, !127}
!120 = !DIEnumerator(name: "C_CTYPE_BLANK", value: 1)
!121 = !DIEnumerator(name: "C_CTYPE_WHITE", value: 2)
!122 = !DIEnumerator(name: "C_CTYPE_SPACE", value: 4)
!123 = !DIEnumerator(name: "C_CTYPE_UPPER", value: 8)
!124 = !DIEnumerator(name: "C_CTYPE_LOWER", value: 16)
!125 = !DIEnumerator(name: "C_CTYPE_DIGIT", value: 32)
!126 = !DIEnumerator(name: "C_CTYPE_ALPHA", value: 24)
!127 = !DIEnumerator(name: "C_CTYPE_ALNUM", value: 56)
!128 = !{!129, !130, !133}
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !131, line: 134, baseType: !132)
!131 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-split--dpkg-split")
!132 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!133 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!134 = !{i32 2, !"Dwarf Version", i32 4}
!135 = !{i32 2, !"Debug Info Version", i32 3}
!136 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!137 = distinct !DISubprogram(name: "do_split", scope: !138, file: !138, line: 264, type: !139, isLocal: false, isDefinition: true, scopeLine: 265, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !147)
!138 = !DIFile(filename: "split.c", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-split--dpkg-split")
!139 = !DISubroutineType(types: !140)
!140 = !{!141, !142}
!141 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64, align: 64)
!143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !144)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64, align: 64)
!145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !146)
!146 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!147 = !{}
!148 = !DILocalVariable(name: "argv", arg: 1, scope: !137, file: !138, line: 264, type: !142)
!149 = !DIExpression()
!150 = !DILocation(line: 264, column: 29, scope: !137)
!151 = !DILocalVariable(name: "sourcefile", scope: !137, file: !138, line: 266, type: !144)
!152 = !DILocation(line: 266, column: 14, scope: !137)
!153 = !DILocalVariable(name: "prefix", scope: !137, file: !138, line: 266, type: !144)
!154 = !DILocation(line: 266, column: 27, scope: !137)
!155 = !DILocation(line: 268, column: 20, scope: !137)
!156 = !DILocation(line: 268, column: 15, scope: !137)
!157 = !DILocation(line: 268, column: 13, scope: !137)
!158 = !DILocation(line: 269, column: 7, scope: !159)
!159 = distinct !DILexicalBlock(scope: !137, file: !138, line: 269, column: 6)
!160 = !DILocation(line: 269, column: 6, scope: !137)
!161 = !DILocation(line: 270, column: 12, scope: !159)
!162 = !DILocation(line: 270, column: 3, scope: !163)
!163 = !DILexicalBlockFile(scope: !159, file: !138, discriminator: 1)
!164 = !DILocation(line: 270, column: 3, scope: !159)
!165 = !DILocation(line: 271, column: 16, scope: !137)
!166 = !DILocation(line: 271, column: 11, scope: !137)
!167 = !DILocation(line: 271, column: 9, scope: !137)
!168 = !DILocation(line: 272, column: 6, scope: !169)
!169 = distinct !DILexicalBlock(scope: !137, file: !138, line: 272, column: 6)
!170 = !DILocation(line: 272, column: 13, scope: !169)
!171 = !DILocation(line: 272, column: 17, scope: !172)
!172 = !DILexicalBlockFile(scope: !169, file: !138, discriminator: 1)
!173 = !DILocation(line: 272, column: 16, scope: !172)
!174 = !DILocation(line: 272, column: 6, scope: !172)
!175 = !DILocation(line: 273, column: 12, scope: !169)
!176 = !DILocation(line: 273, column: 3, scope: !172)
!177 = !DILocation(line: 273, column: 3, scope: !169)
!178 = !DILocation(line: 274, column: 7, scope: !179)
!179 = distinct !DILexicalBlock(scope: !137, file: !138, line: 274, column: 6)
!180 = !DILocation(line: 274, column: 6, scope: !137)
!181 = !DILocalVariable(name: "sourcefile_len", scope: !182, file: !138, line: 275, type: !183)
!182 = distinct !DILexicalBlock(scope: !179, file: !138, line: 274, column: 15)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !184, line: 216, baseType: !185)
!184 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-split--dpkg-split")
!185 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!186 = !DILocation(line: 275, column: 10, scope: !182)
!187 = !DILocation(line: 275, column: 34, scope: !182)
!188 = !DILocation(line: 275, column: 27, scope: !182)
!189 = !DILocation(line: 277, column: 21, scope: !190)
!190 = distinct !DILexicalBlock(scope: !182, file: !138, line: 277, column: 7)
!191 = !DILocation(line: 277, column: 7, scope: !190)
!192 = !DILocation(line: 277, column: 7, scope: !182)
!193 = !DILocation(line: 278, column: 19, scope: !190)
!194 = !DILocation(line: 278, column: 4, scope: !190)
!195 = !DILocation(line: 280, column: 23, scope: !182)
!196 = !DILocation(line: 280, column: 35, scope: !182)
!197 = !DILocation(line: 280, column: 12, scope: !182)
!198 = !DILocation(line: 280, column: 10, scope: !182)
!199 = !DILocation(line: 281, column: 2, scope: !182)
!200 = !DILocation(line: 283, column: 10, scope: !137)
!201 = !DILocation(line: 283, column: 22, scope: !137)
!202 = !DILocation(line: 283, column: 30, scope: !137)
!203 = !DILocation(line: 283, column: 47, scope: !137)
!204 = !DILocation(line: 283, column: 2, scope: !137)
!205 = !DILocation(line: 285, column: 2, scope: !137)
!206 = distinct !DISubprogram(name: "mksplit", scope: !138, file: !138, line: 128, type: !207, isLocal: true, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !147)
!207 = !DISubroutineType(types: !208)
!208 = !{!141, !144, !144, !209, !213}
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !210, line: 86, baseType: !211)
!210 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-split--dpkg-split")
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !212, line: 131, baseType: !132)
!212 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-split--dpkg-split")
!213 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!214 = !DILocalVariable(name: "file_src", arg: 1, scope: !206, file: !138, line: 128, type: !144)
!215 = !DILocation(line: 128, column: 21, scope: !206)
!216 = !DILocalVariable(name: "prefix", arg: 2, scope: !206, file: !138, line: 128, type: !144)
!217 = !DILocation(line: 128, column: 43, scope: !206)
!218 = !DILocalVariable(name: "maxpartsize", arg: 3, scope: !206, file: !138, line: 128, type: !209)
!219 = !DILocation(line: 128, column: 57, scope: !206)
!220 = !DILocalVariable(name: "msdos", arg: 4, scope: !206, file: !138, line: 129, type: !213)
!221 = !DILocation(line: 129, column: 13, scope: !206)
!222 = !DILocalVariable(name: "pkg", scope: !206, file: !138, line: 131, type: !223)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64, align: 64)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkginfo", file: !4, line: 195, size: 3072, align: 64, elements: !225)
!225 = !{!226, !273, !274, !275, !276, !277, !278, !279, !280, !281, !311, !312, !315, !324, !340, !341, !347, !350, !351, !352}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !224, file: !4, line: 196, baseType: !227, size: 64, align: 64)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64, align: 64)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgset", file: !4, line: 242, size: 3392, align: 64, elements: !229)
!229 = !{!230, !231, !232, !233, !272}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !228, file: !4, line: 243, baseType: !227, size: 64, align: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !228, file: !4, line: 244, baseType: !144, size: 64, align: 64, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !228, file: !4, line: 245, baseType: !224, size: 3072, align: 64, offset: 128)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "depended", scope: !228, file: !4, line: 249, baseType: !234, size: 128, align: 64, offset: 3200)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !228, file: !4, line: 246, size: 128, align: 64, elements: !235)
!235 = !{!236, !271}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !234, file: !4, line: 247, baseType: !237, size: 64, align: 64)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64, align: 64)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "deppossi", file: !4, line: 63, size: 640, align: 64, elements: !239)
!239 = !{!240, !248, !249, !250, !251, !252, !261, !268, !269, !270}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !238, file: !4, line: 64, baseType: !241, size: 64, align: 64)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64, align: 64)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dependency", file: !4, line: 56, size: 256, align: 64, elements: !243)
!243 = !{!244, !245, !246, !247}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !242, file: !4, line: 57, baseType: !223, size: 64, align: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !242, file: !4, line: 58, baseType: !241, size: 64, align: 64, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !242, file: !4, line: 59, baseType: !237, size: 64, align: 64, offset: 128)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !242, file: !4, line: 60, baseType: !3, size: 32, align: 32, offset: 192)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "ed", scope: !238, file: !4, line: 65, baseType: !227, size: 64, align: 64, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !238, file: !4, line: 66, baseType: !237, size: 64, align: 64, offset: 128)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "rev_next", scope: !238, file: !4, line: 66, baseType: !237, size: 64, align: 64, offset: 192)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "rev_prev", scope: !238, file: !4, line: 66, baseType: !237, size: 64, align: 64, offset: 256)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !238, file: !4, line: 67, baseType: !253, size: 64, align: 64, offset: 320)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !255)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_arch", file: !16, line: 48, size: 192, align: 64, elements: !256)
!256 = !{!257, !259, !260}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !255, file: !16, line: 49, baseType: !258, size: 64, align: 64)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64, align: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !255, file: !16, line: 50, baseType: !144, size: 64, align: 64, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !255, file: !16, line: 51, baseType: !15, size: 32, align: 32, offset: 128)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !238, file: !4, line: 68, baseType: !262, size: 192, align: 64, offset: 384)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_version", file: !27, line: 42, size: 192, align: 64, elements: !263)
!263 = !{!264, !266, !267}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !262, file: !27, line: 44, baseType: !265, size: 32, align: 32)
!265 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !262, file: !27, line: 46, baseType: !144, size: 64, align: 64, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !262, file: !27, line: 48, baseType: !144, size: 64, align: 64, offset: 128)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "verrel", scope: !238, file: !4, line: 69, baseType: !26, size: 32, align: 32, offset: 576)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "arch_is_implicit", scope: !238, file: !4, line: 70, baseType: !213, size: 8, align: 8, offset: 608)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "cyclebreak", scope: !238, file: !4, line: 71, baseType: !213, size: 8, align: 8, offset: 616)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !234, file: !4, line: 248, baseType: !237, size: 64, align: 64, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "installed_instances", scope: !228, file: !4, line: 250, baseType: !141, size: 32, align: 32, offset: 3328)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "arch_next", scope: !224, file: !4, line: 197, baseType: !223, size: 64, align: 64, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "want", scope: !224, file: !4, line: 199, baseType: !35, size: 32, align: 32, offset: 128)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "eflag", scope: !224, file: !4, line: 201, baseType: !43, size: 32, align: 32, offset: 160)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !224, file: !4, line: 202, baseType: !47, size: 32, align: 32, offset: 192)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !224, file: !4, line: 203, baseType: !57, size: 32, align: 32, offset: 224)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "otherpriority", scope: !224, file: !4, line: 204, baseType: !144, size: 64, align: 64, offset: 256)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "section", scope: !224, file: !4, line: 205, baseType: !144, size: 64, align: 64, offset: 320)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "configversion", scope: !224, file: !4, line: 206, baseType: !262, size: 192, align: 64, offset: 384)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !224, file: !4, line: 207, baseType: !282, size: 960, align: 64, offset: 576)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgbin", file: !4, line: 107, size: 960, align: 64, elements: !283)
!283 = !{!284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !304}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "depends", scope: !282, file: !4, line: 108, baseType: !241, size: 64, align: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "essential", scope: !282, file: !4, line: 110, baseType: !213, size: 8, align: 8, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "multiarch", scope: !282, file: !4, line: 111, baseType: !67, size: 32, align: 32, offset: 96)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !282, file: !4, line: 112, baseType: !253, size: 64, align: 64, offset: 128)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "pkgname_archqual", scope: !282, file: !4, line: 115, baseType: !144, size: 64, align: 64, offset: 192)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !282, file: !4, line: 116, baseType: !144, size: 64, align: 64, offset: 256)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "maintainer", scope: !282, file: !4, line: 117, baseType: !144, size: 64, align: 64, offset: 320)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !282, file: !4, line: 118, baseType: !144, size: 64, align: 64, offset: 384)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "installedsize", scope: !282, file: !4, line: 119, baseType: !144, size: 64, align: 64, offset: 448)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !282, file: !4, line: 120, baseType: !144, size: 64, align: 64, offset: 512)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "bugs", scope: !282, file: !4, line: 121, baseType: !144, size: 64, align: 64, offset: 576)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !282, file: !4, line: 122, baseType: !262, size: 192, align: 64, offset: 640)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "conffiles", scope: !282, file: !4, line: 123, baseType: !297, size: 64, align: 64, offset: 832)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64, align: 64)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conffile", file: !4, line: 80, size: 256, align: 64, elements: !299)
!299 = !{!300, !301, !302, !303}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !298, file: !4, line: 81, baseType: !297, size: 64, align: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !298, file: !4, line: 82, baseType: !144, size: 64, align: 64, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !298, file: !4, line: 83, baseType: !144, size: 64, align: 64, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "obsolete", scope: !298, file: !4, line: 84, baseType: !213, size: 8, align: 8, offset: 192)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "arbs", scope: !282, file: !4, line: 124, baseType: !305, size: 64, align: 64, offset: 896)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64, align: 64)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arbitraryfield", file: !4, line: 74, size: 192, align: 64, elements: !307)
!307 = !{!308, !309, !310}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !306, file: !4, line: 75, baseType: !305, size: 64, align: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !306, file: !4, line: 76, baseType: !144, size: 64, align: 64, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !306, file: !4, line: 77, baseType: !144, size: 64, align: 64, offset: 128)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !224, file: !4, line: 208, baseType: !282, size: 960, align: 64, offset: 1536)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "clientdata", scope: !224, file: !4, line: 209, baseType: !313, size: 64, align: 64, offset: 2496)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64, align: 64)
!314 = !DICompositeType(tag: DW_TAG_structure_type, name: "perpackagestate", file: !4, line: 151, flags: DIFlagFwdDecl)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "archives", scope: !224, file: !4, line: 211, baseType: !316, size: 64, align: 64, offset: 2560)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64, align: 64)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archivedetails", file: !4, line: 87, size: 320, align: 64, elements: !318)
!318 = !{!319, !320, !321, !322, !323}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !317, file: !4, line: 88, baseType: !316, size: 64, align: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !317, file: !4, line: 89, baseType: !144, size: 64, align: 64, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "msdosname", scope: !317, file: !4, line: 90, baseType: !144, size: 64, align: 64, offset: 128)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !317, file: !4, line: 91, baseType: !144, size: 64, align: 64, offset: 192)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "md5sum", scope: !317, file: !4, line: 92, baseType: !144, size: 64, align: 64, offset: 256)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "trigaw", scope: !224, file: !4, line: 216, baseType: !325, size: 128, align: 64, offset: 2624)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !224, file: !4, line: 213, size: 128, align: 64, elements: !326)
!326 = !{!327, !339}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !325, file: !4, line: 215, baseType: !328, size: 64, align: 64)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64, align: 64)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigaw", file: !4, line: 142, size: 320, align: 64, elements: !330)
!330 = !{!331, !332, !333, !334}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "aw", scope: !329, file: !4, line: 143, baseType: !223, size: 64, align: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "pend", scope: !329, file: !4, line: 143, baseType: !223, size: 64, align: 64, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "samepend_next", scope: !329, file: !4, line: 144, baseType: !328, size: 64, align: 64, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "sameaw", scope: !329, file: !4, line: 147, baseType: !335, size: 128, align: 64, offset: 192)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !329, file: !4, line: 145, size: 128, align: 64, elements: !336)
!336 = !{!337, !338}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !335, file: !4, line: 146, baseType: !328, size: 64, align: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !335, file: !4, line: 146, baseType: !328, size: 64, align: 64, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !325, file: !4, line: 215, baseType: !328, size: 64, align: 64, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "othertrigaw_head", scope: !224, file: !4, line: 219, baseType: !328, size: 64, align: 64, offset: 2752)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "trigpend_head", scope: !224, file: !4, line: 220, baseType: !342, size: 64, align: 64, offset: 2816)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64, align: 64)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigpend", file: !4, line: 134, size: 128, align: 64, elements: !344)
!344 = !{!345, !346}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !343, file: !4, line: 135, baseType: !342, size: 64, align: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !343, file: !4, line: 136, baseType: !144, size: 64, align: 64, offset: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !224, file: !4, line: 231, baseType: !348, size: 64, align: 64, offset: 2880)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64, align: 64)
!349 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode_list", file: !4, line: 231, flags: DIFlagFwdDecl)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_phys_offs", scope: !224, file: !4, line: 232, baseType: !209, size: 64, align: 64, offset: 2944)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_valid", scope: !224, file: !4, line: 233, baseType: !213, size: 8, align: 8, offset: 3008)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "status_dirty", scope: !224, file: !4, line: 236, baseType: !213, size: 8, align: 8, offset: 3016)
!353 = !DILocation(line: 131, column: 18, scope: !206)
!354 = !DILocalVariable(name: "err", scope: !206, file: !138, line: 132, type: !355)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_error", file: !74, line: 42, size: 128, align: 64, elements: !356)
!356 = !{!357, !358, !359}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !355, file: !74, line: 43, baseType: !73, size: 32, align: 32)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "syserrno", scope: !355, file: !74, line: 45, baseType: !141, size: 32, align: 32, offset: 32)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !355, file: !74, line: 46, baseType: !360, size: 64, align: 64, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64, align: 64)
!361 = !DILocation(line: 132, column: 20, scope: !206)
!362 = !DILocalVariable(name: "fd_src", scope: !206, file: !138, line: 133, type: !141)
!363 = !DILocation(line: 133, column: 6, scope: !206)
!364 = !DILocalVariable(name: "st", scope: !206, file: !138, line: 134, type: !365)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !366, line: 46, size: 1152, align: 64, elements: !367)
!366 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-split--dpkg-split")
!367 = !{!368, !370, !372, !374, !376, !378, !380, !381, !382, !383, !385, !387, !395, !396, !397}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !365, file: !366, line: 48, baseType: !369, size: 64, align: 64)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !212, line: 124, baseType: !185)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !365, file: !366, line: 53, baseType: !371, size: 64, align: 64, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !212, line: 127, baseType: !185)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !365, file: !366, line: 61, baseType: !373, size: 64, align: 64, offset: 128)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !212, line: 130, baseType: !185)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !365, file: !366, line: 62, baseType: !375, size: 32, align: 32, offset: 192)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !212, line: 129, baseType: !265)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !365, file: !366, line: 64, baseType: !377, size: 32, align: 32, offset: 224)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !212, line: 125, baseType: !265)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !365, file: !366, line: 65, baseType: !379, size: 32, align: 32, offset: 256)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !212, line: 126, baseType: !265)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !365, file: !366, line: 67, baseType: !141, size: 32, align: 32, offset: 288)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !365, file: !366, line: 69, baseType: !369, size: 64, align: 64, offset: 320)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !365, file: !366, line: 74, baseType: !211, size: 64, align: 64, offset: 384)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !365, file: !366, line: 78, baseType: !384, size: 64, align: 64, offset: 448)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !212, line: 153, baseType: !132)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !365, file: !366, line: 80, baseType: !386, size: 64, align: 64, offset: 512)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !212, line: 158, baseType: !132)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !365, file: !366, line: 91, baseType: !388, size: 128, align: 64, offset: 576)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !389, line: 120, size: 128, align: 64, elements: !390)
!389 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-split--dpkg-split")
!390 = !{!391, !393}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !388, file: !389, line: 122, baseType: !392, size: 64, align: 64)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !212, line: 139, baseType: !132)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !388, file: !389, line: 123, baseType: !394, size: 64, align: 64, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !212, line: 175, baseType: !132)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !365, file: !366, line: 92, baseType: !388, size: 128, align: 64, offset: 704)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !365, file: !366, line: 93, baseType: !388, size: 128, align: 64, offset: 832)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !365, file: !366, line: 106, baseType: !398, size: 192, align: 64, offset: 960)
!398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !394, size: 192, align: 64, elements: !399)
!399 = !{!400}
!400 = !DISubrange(count: 3)
!401 = !DILocation(line: 134, column: 14, scope: !206)
!402 = !DILocalVariable(name: "timestamp", scope: !206, file: !138, line: 135, type: !403)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !389, line: 75, baseType: !392)
!404 = !DILocation(line: 135, column: 9, scope: !206)
!405 = !DILocalVariable(name: "timestamp_str", scope: !206, file: !138, line: 136, type: !144)
!406 = !DILocation(line: 136, column: 14, scope: !206)
!407 = !DILocalVariable(name: "version", scope: !206, file: !138, line: 137, type: !144)
!408 = !DILocation(line: 137, column: 14, scope: !206)
!409 = !DILocalVariable(name: "hash", scope: !206, file: !138, line: 138, type: !410)
!410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 264, align: 8, elements: !411)
!411 = !{!412}
!412 = !DISubrange(count: 33)
!413 = !DILocation(line: 138, column: 7, scope: !206)
!414 = !DILocalVariable(name: "nparts", scope: !206, file: !138, line: 139, type: !141)
!415 = !DILocation(line: 139, column: 6, scope: !206)
!416 = !DILocalVariable(name: "curpart", scope: !206, file: !138, line: 139, type: !141)
!417 = !DILocation(line: 139, column: 14, scope: !206)
!418 = !DILocalVariable(name: "partsize", scope: !206, file: !138, line: 140, type: !209)
!419 = !DILocation(line: 140, column: 8, scope: !206)
!420 = !DILocalVariable(name: "cur_partsize", scope: !206, file: !138, line: 141, type: !209)
!421 = !DILocation(line: 141, column: 8, scope: !206)
!422 = !DILocalVariable(name: "last_partsize", scope: !206, file: !138, line: 141, type: !209)
!423 = !DILocation(line: 141, column: 22, scope: !206)
!424 = !DILocalVariable(name: "prefixdir", scope: !206, file: !138, line: 142, type: !360)
!425 = !DILocation(line: 142, column: 8, scope: !206)
!426 = !DILocalVariable(name: "msdos_prefix", scope: !206, file: !138, line: 142, type: !360)
!427 = !DILocation(line: 142, column: 26, scope: !206)
!428 = !DILocalVariable(name: "file_dst", scope: !206, file: !138, line: 143, type: !429)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varbuf", file: !430, line: 55, size: 192, align: 64, elements: !431)
!430 = !DIFile(filename: "../lib/dpkg/varbuf.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-split--dpkg-split")
!431 = !{!432, !433, !434}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !429, file: !430, line: 56, baseType: !183, size: 64, align: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !429, file: !430, line: 56, baseType: !183, size: 64, align: 64, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !429, file: !430, line: 57, baseType: !360, size: 64, align: 64, offset: 128)
!435 = !DILocation(line: 143, column: 16, scope: !206)
!436 = !DILocalVariable(name: "partmagic", scope: !206, file: !138, line: 144, type: !429)
!437 = !DILocation(line: 144, column: 16, scope: !206)
!438 = !DILocalVariable(name: "partname", scope: !206, file: !138, line: 145, type: !429)
!439 = !DILocation(line: 145, column: 16, scope: !206)
!440 = !DILocation(line: 147, column: 16, scope: !206)
!441 = !DILocation(line: 147, column: 11, scope: !206)
!442 = !DILocation(line: 147, column: 9, scope: !206)
!443 = !DILocation(line: 148, column: 6, scope: !444)
!444 = distinct !DILexicalBlock(scope: !206, file: !138, line: 148, column: 6)
!445 = !DILocation(line: 148, column: 13, scope: !444)
!446 = !DILocation(line: 148, column: 6, scope: !206)
!447 = !DILocation(line: 149, column: 11, scope: !444)
!448 = !DILocation(line: 149, column: 59, scope: !444)
!449 = !DILocation(line: 149, column: 3, scope: !450)
!450 = !DILexicalBlockFile(scope: !444, file: !138, discriminator: 1)
!451 = !DILocation(line: 149, column: 3, scope: !444)
!452 = !DILocation(line: 150, column: 12, scope: !453)
!453 = distinct !DILexicalBlock(scope: !206, file: !138, line: 150, column: 6)
!454 = !DILocation(line: 150, column: 6, scope: !453)
!455 = !DILocation(line: 150, column: 6, scope: !206)
!456 = !DILocation(line: 151, column: 11, scope: !453)
!457 = !DILocation(line: 151, column: 3, scope: !458)
!458 = !DILexicalBlockFile(scope: !453, file: !138, discriminator: 1)
!459 = !DILocation(line: 151, column: 3, scope: !453)
!460 = !DILocation(line: 152, column: 9, scope: !461)
!461 = distinct !DILexicalBlock(scope: !206, file: !138, line: 152, column: 6)
!462 = !DILocation(line: 152, column: 20, scope: !461)
!463 = !DILocation(line: 152, column: 6, scope: !206)
!464 = !DILocation(line: 153, column: 10, scope: !461)
!465 = !DILocation(line: 153, column: 60, scope: !461)
!466 = !DILocation(line: 153, column: 3, scope: !467)
!467 = !DILexicalBlockFile(scope: !461, file: !138, discriminator: 1)
!468 = !DILocation(line: 153, column: 3, scope: !461)
!469 = !DILocation(line: 155, column: 25, scope: !470)
!470 = distinct !DILexicalBlock(scope: !206, file: !138, line: 155, column: 6)
!471 = !DILocation(line: 155, column: 36, scope: !470)
!472 = !DILocation(line: 155, column: 6, scope: !470)
!473 = !DILocation(line: 155, column: 20, scope: !470)
!474 = !DILocation(line: 155, column: 6, scope: !206)
!475 = !DILocation(line: 156, column: 10, scope: !470)
!476 = !DILocation(line: 157, column: 10, scope: !470)
!477 = !DILocation(line: 157, column: 24, scope: !470)
!478 = !DILocation(line: 156, column: 3, scope: !479)
!479 = !DILexicalBlockFile(scope: !470, file: !138, discriminator: 1)
!480 = !DILocation(line: 156, column: 3, scope: !470)
!481 = !DILocation(line: 158, column: 8, scope: !206)
!482 = !DILocation(line: 158, column: 2, scope: !206)
!483 = !DILocation(line: 160, column: 26, scope: !206)
!484 = !DILocation(line: 160, column: 8, scope: !206)
!485 = !DILocation(line: 160, column: 6, scope: !206)
!486 = !DILocation(line: 161, column: 29, scope: !206)
!487 = !DILocation(line: 161, column: 34, scope: !206)
!488 = !DILocation(line: 161, column: 44, scope: !206)
!489 = !DILocation(line: 161, column: 12, scope: !206)
!490 = !DILocation(line: 161, column: 10, scope: !206)
!491 = !DILocation(line: 163, column: 18, scope: !206)
!492 = !DILocation(line: 163, column: 16, scope: !206)
!493 = !DILocation(line: 164, column: 6, scope: !494)
!494 = distinct !DILexicalBlock(scope: !206, file: !138, line: 164, column: 6)
!495 = !DILocation(line: 164, column: 6, scope: !206)
!496 = !DILocation(line: 165, column: 31, scope: !494)
!497 = !DILocation(line: 165, column: 15, scope: !494)
!498 = !DILocation(line: 165, column: 13, scope: !494)
!499 = !DILocation(line: 165, column: 3, scope: !494)
!500 = !DILocation(line: 167, column: 15, scope: !494)
!501 = !DILocation(line: 167, column: 13, scope: !494)
!502 = !DILocation(line: 169, column: 13, scope: !206)
!503 = !DILocation(line: 169, column: 25, scope: !206)
!504 = !DILocation(line: 169, column: 11, scope: !206)
!505 = !DILocation(line: 170, column: 21, scope: !206)
!506 = !DILocation(line: 170, column: 31, scope: !206)
!507 = !DILocation(line: 170, column: 29, scope: !206)
!508 = !DILocation(line: 170, column: 16, scope: !206)
!509 = !DILocation(line: 171, column: 6, scope: !510)
!510 = distinct !DILexicalBlock(scope: !206, file: !138, line: 171, column: 6)
!511 = !DILocation(line: 171, column: 20, scope: !510)
!512 = !DILocation(line: 171, column: 6, scope: !206)
!513 = !DILocation(line: 172, column: 19, scope: !510)
!514 = !DILocation(line: 172, column: 17, scope: !510)
!515 = !DILocation(line: 172, column: 3, scope: !510)
!516 = !DILocation(line: 173, column: 15, scope: !206)
!517 = !DILocation(line: 173, column: 25, scope: !206)
!518 = !DILocation(line: 173, column: 23, scope: !206)
!519 = !DILocation(line: 173, column: 34, scope: !206)
!520 = !DILocation(line: 173, column: 41, scope: !206)
!521 = !DILocation(line: 173, column: 39, scope: !206)
!522 = !DILocation(line: 173, column: 11, scope: !206)
!523 = !DILocation(line: 173, column: 9, scope: !206)
!524 = !DILocation(line: 175, column: 97, scope: !206)
!525 = !DILocation(line: 175, column: 9, scope: !206)
!526 = !DILocation(line: 177, column: 9, scope: !206)
!527 = !DILocation(line: 177, column: 14, scope: !206)
!528 = !DILocation(line: 177, column: 19, scope: !206)
!529 = !DILocation(line: 177, column: 25, scope: !206)
!530 = !DILocation(line: 175, column: 2, scope: !531)
!531 = !DILexicalBlockFile(scope: !206, file: !138, discriminator: 1)
!532 = !DILocation(line: 179, column: 6, scope: !533)
!533 = distinct !DILexicalBlock(scope: !206, file: !138, line: 179, column: 6)
!534 = !DILocation(line: 179, column: 6, scope: !206)
!535 = !DILocalVariable(name: "t", scope: !536, file: !138, line: 180, type: !360)
!536 = distinct !DILexicalBlock(scope: !533, file: !138, line: 179, column: 13)
!537 = !DILocation(line: 180, column: 9, scope: !536)
!538 = !DILocation(line: 182, column: 16, scope: !536)
!539 = !DILocation(line: 182, column: 7, scope: !536)
!540 = !DILocation(line: 182, column: 5, scope: !536)
!541 = !DILocation(line: 183, column: 32, scope: !536)
!542 = !DILocation(line: 183, column: 24, scope: !536)
!543 = !DILocation(line: 183, column: 15, scope: !544)
!544 = !DILexicalBlockFile(scope: !536, file: !138, discriminator: 1)
!545 = !DILocation(line: 183, column: 13, scope: !536)
!546 = !DILocation(line: 184, column: 8, scope: !536)
!547 = !DILocation(line: 184, column: 3, scope: !536)
!548 = !DILocation(line: 186, column: 41, scope: !536)
!549 = !DILocation(line: 186, column: 27, scope: !536)
!550 = !DILocation(line: 186, column: 18, scope: !544)
!551 = !DILocation(line: 186, column: 16, scope: !536)
!552 = !DILocation(line: 187, column: 33, scope: !536)
!553 = !DILocation(line: 187, column: 12, scope: !536)
!554 = !DILocation(line: 187, column: 10, scope: !536)
!555 = !DILocation(line: 188, column: 2, scope: !536)
!556 = !DILocation(line: 190, column: 15, scope: !557)
!557 = distinct !DILexicalBlock(scope: !206, file: !138, line: 190, column: 2)
!558 = !DILocation(line: 190, column: 7, scope: !557)
!559 = !DILocation(line: 190, column: 20, scope: !560)
!560 = !DILexicalBlockFile(scope: !561, file: !138, discriminator: 1)
!561 = distinct !DILexicalBlock(scope: !557, file: !138, line: 190, column: 2)
!562 = !DILocation(line: 190, column: 31, scope: !560)
!563 = !DILocation(line: 190, column: 28, scope: !560)
!564 = !DILocation(line: 190, column: 2, scope: !560)
!565 = !DILocalVariable(name: "ar", scope: !566, file: !138, line: 191, type: !567)
!566 = distinct !DILexicalBlock(scope: !561, file: !138, line: 190, column: 50)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64, align: 64)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_ar", file: !569, line: 57, size: 320, align: 64, elements: !570)
!569 = !DIFile(filename: "../lib/dpkg/ar.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-split--dpkg-split")
!570 = !{!571, !572, !574, !575, !576}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !568, file: !569, line: 58, baseType: !144, size: 64, align: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !568, file: !569, line: 59, baseType: !573, size: 32, align: 32, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !210, line: 70, baseType: !375)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !568, file: !569, line: 60, baseType: !403, size: 64, align: 64, offset: 128)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !568, file: !569, line: 61, baseType: !209, size: 64, align: 64, offset: 192)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !568, file: !569, line: 62, baseType: !141, size: 32, align: 32, offset: 256)
!577 = !DILocation(line: 191, column: 19, scope: !566)
!578 = !DILocation(line: 193, column: 3, scope: !566)
!579 = !DILocation(line: 195, column: 7, scope: !580)
!580 = distinct !DILexicalBlock(scope: !566, file: !138, line: 195, column: 7)
!581 = !DILocation(line: 195, column: 7, scope: !566)
!582 = !DILocalVariable(name: "refname", scope: !583, file: !138, line: 196, type: !360)
!583 = distinct !DILexicalBlock(scope: !580, file: !138, line: 195, column: 14)
!584 = !DILocation(line: 196, column: 10, scope: !583)
!585 = !DILocalVariable(name: "prefix_max", scope: !583, file: !138, line: 197, type: !141)
!586 = !DILocation(line: 197, column: 8, scope: !583)
!587 = !DILocation(line: 199, column: 32, scope: !583)
!588 = !DILocation(line: 199, column: 41, scope: !583)
!589 = !DILocation(line: 199, column: 14, scope: !583)
!590 = !DILocation(line: 199, column: 12, scope: !583)
!591 = !DILocation(line: 200, column: 30, scope: !583)
!592 = !DILocation(line: 200, column: 23, scope: !583)
!593 = !DILocation(line: 200, column: 21, scope: !583)
!594 = !DILocation(line: 200, column: 40, scope: !583)
!595 = !DILocation(line: 200, column: 18, scope: !583)
!596 = !DILocation(line: 200, column: 60, scope: !597)
!597 = !DILexicalBlockFile(scope: !583, file: !138, discriminator: 1)
!598 = !DILocation(line: 200, column: 53, scope: !597)
!599 = !DILocation(line: 200, column: 51, scope: !597)
!600 = !DILocation(line: 200, column: 18, scope: !597)
!601 = !DILocation(line: 200, column: 18, scope: !602)
!602 = !DILexicalBlockFile(scope: !583, file: !138, discriminator: 2)
!603 = !DILocation(line: 200, column: 18, scope: !604)
!604 = !DILexicalBlockFile(scope: !583, file: !138, discriminator: 3)
!605 = !DILocation(line: 200, column: 17, scope: !604)
!606 = !DILocation(line: 200, column: 15, scope: !604)
!607 = !DILocation(line: 202, column: 18, scope: !583)
!608 = !DILocation(line: 202, column: 29, scope: !583)
!609 = !DILocation(line: 202, column: 41, scope: !583)
!610 = !DILocation(line: 202, column: 49, scope: !583)
!611 = !DILocation(line: 201, column: 4, scope: !583)
!612 = !DILocation(line: 203, column: 9, scope: !583)
!613 = !DILocation(line: 203, column: 4, scope: !583)
!614 = !DILocation(line: 204, column: 3, scope: !583)
!615 = !DILocation(line: 206, column: 18, scope: !616)
!616 = distinct !DILexicalBlock(scope: !580, file: !138, line: 204, column: 10)
!617 = !DILocation(line: 206, column: 26, scope: !616)
!618 = !DILocation(line: 206, column: 35, scope: !616)
!619 = !DILocation(line: 205, column: 4, scope: !616)
!620 = !DILocation(line: 209, column: 7, scope: !621)
!621 = distinct !DILexicalBlock(scope: !566, file: !138, line: 209, column: 7)
!622 = !DILocation(line: 209, column: 18, scope: !621)
!623 = !DILocation(line: 209, column: 15, scope: !621)
!624 = !DILocation(line: 209, column: 7, scope: !566)
!625 = !DILocation(line: 210, column: 19, scope: !621)
!626 = !DILocation(line: 210, column: 17, scope: !621)
!627 = !DILocation(line: 210, column: 4, scope: !621)
!628 = !DILocation(line: 212, column: 19, scope: !621)
!629 = !DILocation(line: 212, column: 17, scope: !621)
!630 = !DILocation(line: 214, column: 7, scope: !631)
!631 = distinct !DILexicalBlock(scope: !566, file: !138, line: 214, column: 7)
!632 = !DILocation(line: 214, column: 22, scope: !631)
!633 = !DILocation(line: 214, column: 20, scope: !631)
!634 = !DILocation(line: 214, column: 7, scope: !566)
!635 = !DILocation(line: 215, column: 11, scope: !636)
!636 = distinct !DILexicalBlock(scope: !631, file: !138, line: 214, column: 35)
!637 = !DILocation(line: 215, column: 4, scope: !638)
!638 = !DILexicalBlockFile(scope: !636, file: !138, discriminator: 1)
!639 = !DILocation(line: 215, column: 4, scope: !636)
!640 = !DILocation(line: 222, column: 32, scope: !566)
!641 = !DILocation(line: 222, column: 8, scope: !566)
!642 = !DILocation(line: 222, column: 6, scope: !566)
!643 = !DILocation(line: 223, column: 21, scope: !566)
!644 = !DILocation(line: 223, column: 25, scope: !566)
!645 = !DILocation(line: 223, column: 3, scope: !566)
!646 = !DILocation(line: 226, column: 21, scope: !566)
!647 = !DILocation(line: 226, column: 3, scope: !566)
!648 = !DILocation(line: 231, column: 24, scope: !566)
!649 = !DILocation(line: 231, column: 29, scope: !566)
!650 = !DILocation(line: 231, column: 34, scope: !566)
!651 = !DILocation(line: 231, column: 40, scope: !566)
!652 = !DILocation(line: 231, column: 49, scope: !566)
!653 = !DILocation(line: 232, column: 30, scope: !566)
!654 = !DILocation(line: 232, column: 49, scope: !566)
!655 = !DILocation(line: 233, column: 17, scope: !566)
!656 = !DILocation(line: 233, column: 26, scope: !566)
!657 = !DILocation(line: 233, column: 34, scope: !566)
!658 = !DILocation(line: 233, column: 39, scope: !566)
!659 = !DILocation(line: 233, column: 49, scope: !566)
!660 = !DILocation(line: 233, column: 55, scope: !566)
!661 = !DILocation(line: 229, column: 3, scope: !566)
!662 = !DILocation(line: 234, column: 26, scope: !566)
!663 = !DILocation(line: 235, column: 36, scope: !566)
!664 = !DILocation(line: 235, column: 51, scope: !566)
!665 = !DILocation(line: 234, column: 3, scope: !566)
!666 = !DILocation(line: 236, column: 3, scope: !566)
!667 = !DILocation(line: 239, column: 39, scope: !566)
!668 = !DILocation(line: 239, column: 3, scope: !566)
!669 = !DILocation(line: 240, column: 27, scope: !566)
!670 = !DILocation(line: 240, column: 40, scope: !566)
!671 = !DILocation(line: 241, column: 27, scope: !566)
!672 = !DILocation(line: 241, column: 35, scope: !566)
!673 = !DILocation(line: 240, column: 3, scope: !566)
!674 = !DILocation(line: 242, column: 3, scope: !566)
!675 = !DILocation(line: 244, column: 17, scope: !566)
!676 = !DILocation(line: 244, column: 3, scope: !566)
!677 = !DILocation(line: 246, column: 17, scope: !566)
!678 = !DILocation(line: 246, column: 3, scope: !566)
!679 = !DILocation(line: 247, column: 2, scope: !566)
!680 = !DILocation(line: 190, column: 46, scope: !681)
!681 = !DILexicalBlockFile(scope: !561, file: !138, discriminator: 2)
!682 = !DILocation(line: 190, column: 2, scope: !681)
!683 = distinct !{!683, !684}
!684 = !DILocation(line: 190, column: 2, scope: !206)
!685 = !DILocation(line: 249, column: 2, scope: !206)
!686 = !DILocation(line: 250, column: 2, scope: !206)
!687 = !DILocation(line: 251, column: 2, scope: !206)
!688 = !DILocation(line: 253, column: 7, scope: !206)
!689 = !DILocation(line: 253, column: 2, scope: !206)
!690 = !DILocation(line: 254, column: 7, scope: !206)
!691 = !DILocation(line: 254, column: 2, scope: !206)
!692 = !DILocation(line: 256, column: 8, scope: !206)
!693 = !DILocation(line: 256, column: 2, scope: !206)
!694 = !DILocation(line: 258, column: 9, scope: !206)
!695 = !DILocation(line: 258, column: 2, scope: !531)
!696 = !DILocation(line: 260, column: 2, scope: !206)
!697 = distinct !DISubprogram(name: "deb_parse_control", scope: !138, file: !138, line: 58, type: !698, isLocal: true, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !147)
!698 = !DISubroutineType(types: !699)
!699 = !{!223, !144}
!700 = !DILocalVariable(name: "filename", arg: 1, scope: !697, file: !138, line: 58, type: !144)
!701 = !DILocation(line: 58, column: 31, scope: !697)
!702 = !DILocalVariable(name: "ps", scope: !697, file: !138, line: 60, type: !703)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64, align: 64)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "parsedb_state", file: !85, line: 48, size: 640, align: 64, elements: !705)
!705 = !{!706, !707, !708, !709, !710, !712, !713, !714, !715, !716, !717}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !704, file: !85, line: 49, baseType: !84, size: 32, align: 32)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !704, file: !85, line: 50, baseType: !91, size: 32, align: 32, offset: 32)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !704, file: !85, line: 51, baseType: !355, size: 128, align: 64, offset: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !704, file: !85, line: 52, baseType: !223, size: 64, align: 64, offset: 192)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "pkgbin", scope: !704, file: !85, line: 53, baseType: !711, size: 64, align: 64, offset: 256)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64, align: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !704, file: !85, line: 54, baseType: !360, size: 64, align: 64, offset: 320)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "dataptr", scope: !704, file: !85, line: 55, baseType: !360, size: 64, align: 64, offset: 384)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "endptr", scope: !704, file: !85, line: 56, baseType: !360, size: 64, align: 64, offset: 448)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !704, file: !85, line: 57, baseType: !144, size: 64, align: 64, offset: 512)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !704, file: !85, line: 58, baseType: !141, size: 32, align: 32, offset: 576)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "lno", scope: !704, file: !85, line: 59, baseType: !141, size: 32, align: 32, offset: 608)
!718 = !DILocation(line: 60, column: 24, scope: !697)
!719 = !DILocalVariable(name: "pkg", scope: !697, file: !138, line: 61, type: !223)
!720 = !DILocation(line: 61, column: 18, scope: !697)
!721 = !DILocalVariable(name: "pid", scope: !697, file: !138, line: 62, type: !722)
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !210, line: 98, baseType: !723)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !212, line: 133, baseType: !141)
!724 = !DILocation(line: 62, column: 8, scope: !697)
!725 = !DILocalVariable(name: "p", scope: !697, file: !138, line: 63, type: !726)
!726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 64, align: 32, elements: !727)
!727 = !{!728}
!728 = !DISubrange(count: 2)
!729 = !DILocation(line: 63, column: 6, scope: !697)
!730 = !DILocation(line: 65, column: 9, scope: !697)
!731 = !DILocation(line: 65, column: 2, scope: !697)
!732 = !DILocation(line: 67, column: 8, scope: !697)
!733 = !DILocation(line: 67, column: 6, scope: !697)
!734 = !DILocation(line: 68, column: 6, scope: !735)
!735 = distinct !DILexicalBlock(scope: !697, file: !138, line: 68, column: 6)
!736 = !DILocation(line: 68, column: 10, scope: !735)
!737 = !DILocation(line: 68, column: 6, scope: !697)
!738 = !DILocation(line: 70, column: 10, scope: !739)
!739 = distinct !DILexicalBlock(scope: !735, file: !138, line: 68, column: 16)
!740 = !DILocation(line: 70, column: 3, scope: !739)
!741 = !DILocation(line: 71, column: 9, scope: !739)
!742 = !DILocation(line: 71, column: 3, scope: !739)
!743 = !DILocation(line: 72, column: 9, scope: !739)
!744 = !DILocation(line: 72, column: 3, scope: !739)
!745 = !DILocation(line: 74, column: 44, scope: !739)
!746 = !DILocation(line: 74, column: 3, scope: !739)
!747 = !DILocation(line: 75, column: 11, scope: !739)
!748 = !DILocation(line: 76, column: 11, scope: !739)
!749 = !DILocation(line: 75, column: 3, scope: !750)
!750 = !DILexicalBlockFile(scope: !739, file: !138, discriminator: 1)
!751 = !DILocation(line: 75, column: 3, scope: !739)
!752 = !DILocation(line: 78, column: 8, scope: !697)
!753 = !DILocation(line: 78, column: 2, scope: !697)
!754 = !DILocation(line: 81, column: 19, scope: !697)
!755 = !DILocation(line: 81, column: 54, scope: !697)
!756 = !DILocation(line: 81, column: 7, scope: !757)
!757 = !DILexicalBlockFile(scope: !697, file: !138, discriminator: 1)
!758 = !DILocation(line: 81, column: 5, scope: !697)
!759 = !DILocation(line: 82, column: 15, scope: !697)
!760 = !DILocation(line: 82, column: 2, scope: !697)
!761 = !DILocation(line: 83, column: 16, scope: !697)
!762 = !DILocation(line: 83, column: 2, scope: !697)
!763 = !DILocation(line: 84, column: 16, scope: !697)
!764 = !DILocation(line: 84, column: 2, scope: !697)
!765 = !DILocation(line: 86, column: 8, scope: !697)
!766 = !DILocation(line: 86, column: 2, scope: !697)
!767 = !DILocation(line: 88, column: 15, scope: !697)
!768 = !DILocation(line: 88, column: 20, scope: !697)
!769 = !DILocation(line: 88, column: 2, scope: !757)
!770 = !DILocation(line: 90, column: 9, scope: !697)
!771 = !DILocation(line: 90, column: 2, scope: !697)
!772 = distinct !DISubprogram(name: "parse_timestamp", scope: !138, file: !138, line: 94, type: !773, isLocal: true, isDefinition: true, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !147)
!773 = !DISubroutineType(types: !774)
!774 = !{!403, !144}
!775 = !DILocalVariable(name: "value", arg: 1, scope: !772, file: !138, line: 94, type: !144)
!776 = !DILocation(line: 94, column: 29, scope: !772)
!777 = !DILocalVariable(name: "timestamp", scope: !772, file: !138, line: 96, type: !403)
!778 = !DILocation(line: 96, column: 9, scope: !772)
!779 = !DILocalVariable(name: "end", scope: !772, file: !138, line: 97, type: !360)
!780 = !DILocation(line: 97, column: 8, scope: !772)
!781 = !DILocation(line: 99, column: 3, scope: !772)
!782 = !DILocation(line: 99, column: 7, scope: !772)
!783 = !DILocation(line: 100, column: 21, scope: !772)
!784 = !DILocation(line: 100, column: 14, scope: !772)
!785 = !DILocation(line: 100, column: 12, scope: !772)
!786 = !DILocation(line: 101, column: 6, scope: !787)
!787 = distinct !DILexicalBlock(scope: !772, file: !138, line: 101, column: 6)
!788 = !DILocation(line: 101, column: 15, scope: !787)
!789 = !DILocation(line: 101, column: 12, scope: !787)
!790 = !DILocation(line: 101, column: 19, scope: !787)
!791 = !DILocation(line: 101, column: 23, scope: !792)
!792 = !DILexicalBlockFile(scope: !787, file: !138, discriminator: 1)
!793 = !DILocation(line: 101, column: 22, scope: !792)
!794 = !DILocation(line: 101, column: 27, scope: !792)
!795 = !DILocation(line: 101, column: 31, scope: !796)
!796 = !DILexicalBlockFile(scope: !787, file: !138, discriminator: 2)
!797 = !DILocation(line: 101, column: 30, scope: !796)
!798 = !DILocation(line: 101, column: 35, scope: !796)
!799 = !DILocation(line: 101, column: 6, scope: !796)
!800 = !DILocation(line: 102, column: 11, scope: !787)
!801 = !DILocation(line: 102, column: 58, scope: !787)
!802 = !DILocation(line: 102, column: 3, scope: !792)
!803 = !DILocation(line: 102, column: 3, scope: !787)
!804 = !DILocation(line: 104, column: 9, scope: !772)
!805 = !DILocation(line: 104, column: 2, scope: !772)
!806 = distinct !DISubprogram(name: "clean_msdos_filename", scope: !138, file: !138, line: 109, type: !807, isLocal: true, isDefinition: true, scopeLine: 110, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !147)
!807 = !DISubroutineType(types: !808)
!808 = !{!360, !360}
!809 = !DILocalVariable(name: "filename", arg: 1, scope: !806, file: !138, line: 109, type: !360)
!810 = !DILocation(line: 109, column: 28, scope: !806)
!811 = !DILocalVariable(name: "d", scope: !806, file: !138, line: 111, type: !360)
!812 = !DILocation(line: 111, column: 8, scope: !806)
!813 = !DILocalVariable(name: "s", scope: !806, file: !138, line: 111, type: !360)
!814 = !DILocation(line: 111, column: 12, scope: !806)
!815 = !DILocation(line: 113, column: 15, scope: !816)
!816 = distinct !DILexicalBlock(scope: !806, file: !138, line: 113, column: 2)
!817 = !DILocation(line: 113, column: 13, scope: !816)
!818 = !DILocation(line: 113, column: 9, scope: !816)
!819 = !DILocation(line: 113, column: 7, scope: !816)
!820 = !DILocation(line: 113, column: 26, scope: !821)
!821 = !DILexicalBlockFile(scope: !822, file: !138, discriminator: 1)
!822 = distinct !DILexicalBlock(scope: !816, file: !138, line: 113, column: 2)
!823 = !DILocation(line: 113, column: 25, scope: !821)
!824 = !DILocation(line: 113, column: 2, scope: !821)
!825 = !DILocation(line: 114, column: 8, scope: !826)
!826 = distinct !DILexicalBlock(scope: !827, file: !138, line: 114, column: 7)
!827 = distinct !DILexicalBlock(scope: !822, file: !138, line: 113, column: 39)
!828 = !DILocation(line: 114, column: 7, scope: !826)
!829 = !DILocation(line: 114, column: 10, scope: !826)
!830 = !DILocation(line: 114, column: 7, scope: !827)
!831 = !DILocation(line: 115, column: 5, scope: !826)
!832 = !DILocation(line: 115, column: 7, scope: !826)
!833 = !DILocation(line: 115, column: 4, scope: !826)
!834 = !DILocation(line: 116, column: 23, scope: !835)
!835 = distinct !DILexicalBlock(scope: !826, file: !138, line: 116, column: 12)
!836 = !DILocation(line: 116, column: 22, scope: !835)
!837 = !DILocation(line: 116, column: 12, scope: !835)
!838 = !DILocation(line: 116, column: 12, scope: !826)
!839 = !DILocation(line: 117, column: 20, scope: !835)
!840 = !DILocation(line: 117, column: 19, scope: !835)
!841 = !DILocation(line: 117, column: 9, scope: !835)
!842 = !DILocation(line: 117, column: 5, scope: !835)
!843 = !DILocation(line: 117, column: 7, scope: !835)
!844 = !DILocation(line: 117, column: 4, scope: !835)
!845 = !DILocation(line: 118, column: 23, scope: !846)
!846 = distinct !DILexicalBlock(scope: !835, file: !138, line: 118, column: 12)
!847 = !DILocation(line: 118, column: 22, scope: !846)
!848 = !DILocation(line: 118, column: 12, scope: !846)
!849 = !DILocation(line: 118, column: 26, scope: !846)
!850 = !DILocation(line: 118, column: 40, scope: !851)
!851 = !DILexicalBlockFile(scope: !846, file: !138, discriminator: 1)
!852 = !DILocation(line: 118, column: 39, scope: !851)
!853 = !DILocation(line: 118, column: 29, scope: !851)
!854 = !DILocation(line: 118, column: 12, scope: !851)
!855 = !DILocation(line: 119, column: 10, scope: !846)
!856 = !DILocation(line: 119, column: 9, scope: !846)
!857 = !DILocation(line: 119, column: 5, scope: !846)
!858 = !DILocation(line: 119, column: 7, scope: !846)
!859 = !DILocation(line: 119, column: 4, scope: !846)
!860 = !DILocation(line: 121, column: 5, scope: !846)
!861 = !DILocation(line: 122, column: 2, scope: !827)
!862 = !DILocation(line: 113, column: 30, scope: !863)
!863 = !DILexicalBlockFile(scope: !822, file: !138, discriminator: 2)
!864 = !DILocation(line: 113, column: 35, scope: !863)
!865 = !DILocation(line: 113, column: 2, scope: !863)
!866 = distinct !{!866, !867}
!867 = !DILocation(line: 113, column: 2, scope: !806)
!868 = !DILocation(line: 124, column: 9, scope: !806)
!869 = !DILocation(line: 124, column: 2, scope: !806)
!870 = distinct !DISubprogram(name: "c_isupper", scope: !118, file: !118, line: 87, type: !871, isLocal: true, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !147)
!871 = !DISubroutineType(types: !872)
!872 = !{!213, !141}
!873 = !DILocalVariable(name: "c", arg: 1, scope: !870, file: !118, line: 87, type: !141)
!874 = !DILocation(line: 87, column: 15, scope: !870)
!875 = !DILocation(line: 89, column: 18, scope: !870)
!876 = !DILocation(line: 89, column: 9, scope: !870)
!877 = !DILocation(line: 89, column: 2, scope: !870)
!878 = distinct !DISubprogram(name: "c_tolower", scope: !118, file: !118, line: 123, type: !879, isLocal: true, isDefinition: true, scopeLine: 124, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !147)
!879 = !DISubroutineType(types: !880)
!880 = !{!141, !141}
!881 = !DILocalVariable(name: "c", arg: 1, scope: !878, file: !118, line: 123, type: !141)
!882 = !DILocation(line: 123, column: 15, scope: !878)
!883 = !DILocation(line: 125, column: 20, scope: !878)
!884 = !DILocation(line: 125, column: 10, scope: !878)
!885 = !DILocation(line: 125, column: 41, scope: !886)
!886 = !DILexicalBlockFile(scope: !878, file: !118, discriminator: 1)
!887 = !DILocation(line: 125, column: 26, scope: !886)
!888 = !DILocation(line: 125, column: 43, scope: !886)
!889 = !DILocation(line: 125, column: 52, scope: !886)
!890 = !DILocation(line: 125, column: 10, scope: !886)
!891 = !DILocation(line: 125, column: 61, scope: !892)
!892 = !DILexicalBlockFile(scope: !878, file: !118, discriminator: 2)
!893 = !DILocation(line: 125, column: 10, scope: !892)
!894 = !DILocation(line: 125, column: 10, scope: !895)
!895 = !DILexicalBlockFile(scope: !878, file: !118, discriminator: 3)
!896 = !DILocation(line: 125, column: 2, scope: !895)
!897 = distinct !DISubprogram(name: "c_islower", scope: !118, file: !118, line: 96, type: !871, isLocal: true, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !147)
!898 = !DILocalVariable(name: "c", arg: 1, scope: !897, file: !118, line: 96, type: !141)
!899 = !DILocation(line: 96, column: 15, scope: !897)
!900 = !DILocation(line: 98, column: 18, scope: !897)
!901 = !DILocation(line: 98, column: 9, scope: !897)
!902 = !DILocation(line: 98, column: 2, scope: !897)
!903 = distinct !DISubprogram(name: "c_isdigit", scope: !118, file: !118, line: 78, type: !871, isLocal: true, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !147)
!904 = !DILocalVariable(name: "c", arg: 1, scope: !903, file: !118, line: 78, type: !141)
!905 = !DILocation(line: 78, column: 15, scope: !903)
!906 = !DILocation(line: 80, column: 18, scope: !903)
!907 = !DILocation(line: 80, column: 9, scope: !903)
!908 = !DILocation(line: 80, column: 2, scope: !903)
