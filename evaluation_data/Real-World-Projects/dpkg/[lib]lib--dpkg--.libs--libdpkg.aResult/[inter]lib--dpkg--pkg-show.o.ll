; ModuleID = './[inter]lib--dpkg--pkg-show.o.i'
source_filename = "./[inter]lib--dpkg--pkg-show.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.namevalue = type { i8*, i32, i32 }
%struct.varbuf = type { i64, i64, i8* }
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

@.str = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"dpkg\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"(no description available)\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"uihrp\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"ncHUFWti\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c" R\00", align 1
@wantinfos = external constant [0 x %struct.namevalue], align 8
@eflaginfos = external constant [0 x %struct.namevalue], align 8
@statusinfos = external constant [0 x %struct.namevalue], align 8
@priorityinfos = external constant [0 x %struct.namevalue], align 8
@.str.7 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"version '%s' has bad syntax: %s\00", align 1

; Function Attrs: nounwind uwtable
define void @varbuf_add_pkgbin_name(%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32) #0 !dbg !238 {
  %5 = alloca %struct.varbuf*, align 8
  %6 = alloca %struct.pkginfo*, align 8
  %7 = alloca %struct.pkgbin*, align 8
  %8 = alloca i32, align 4
  store %struct.varbuf* %0, %struct.varbuf** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %5, metadata !256, metadata !257), !dbg !258
  store %struct.pkginfo* %1, %struct.pkginfo** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %6, metadata !259, metadata !257), !dbg !260
  store %struct.pkgbin* %2, %struct.pkgbin** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %7, metadata !261, metadata !257), !dbg !262
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !263, metadata !257), !dbg !264
  %9 = load %struct.varbuf*, %struct.varbuf** %5, align 8, !dbg !265
  %10 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !266
  %11 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %10, i32 0, i32 0, !dbg !267
  %12 = load %struct.pkgset*, %struct.pkgset** %11, align 8, !dbg !267
  %13 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %12, i32 0, i32 1, !dbg !268
  %14 = load i8*, i8** %13, align 8, !dbg !268
  %15 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !269
  %16 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %15, i32 0, i32 0, !dbg !270
  %17 = load %struct.pkgset*, %struct.pkgset** %16, align 8, !dbg !270
  %18 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %17, i32 0, i32 1, !dbg !271
  %19 = load i8*, i8** %18, align 8, !dbg !271
  %20 = call i64 @strlen(i8* %19) #7, !dbg !272
  call void @varbuf_add_buf(%struct.varbuf* %9, i8* %14, i64 %20), !dbg !273
  %21 = load %struct.pkgbin*, %struct.pkgbin** %7, align 8, !dbg !275
  %22 = load i32, i32* %8, align 4, !dbg !277
  %23 = call zeroext i1 @pkgbin_name_needs_arch(%struct.pkgbin* %21, i32 %22), !dbg !278
  br i1 %23, label %24, label %29, !dbg !279

; <label>:24:                                     ; preds = %4
  %25 = load %struct.varbuf*, %struct.varbuf** %5, align 8, !dbg !280
  %26 = load %struct.pkgbin*, %struct.pkgbin** %7, align 8, !dbg !281
  %27 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %26, i32 0, i32 3, !dbg !282
  %28 = load %struct.dpkg_arch*, %struct.dpkg_arch** %27, align 8, !dbg !282
  call void @varbuf_add_archqual(%struct.varbuf* %25, %struct.dpkg_arch* %28), !dbg !283
  br label %29, !dbg !283

; <label>:29:                                     ; preds = %24, %4
  %30 = load %struct.varbuf*, %struct.varbuf** %5, align 8, !dbg !284
  call void @varbuf_end_str(%struct.varbuf* %30), !dbg !285
  ret void, !dbg !286
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @varbuf_add_buf(%struct.varbuf*, i8*, i64) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind uwtable
define internal zeroext i1 @pkgbin_name_needs_arch(%struct.pkgbin*, i32) #0 !dbg !287 {
  %3 = alloca i1, align 1
  %4 = alloca %struct.pkgbin*, align 8
  %5 = alloca i32, align 4
  store %struct.pkgbin* %0, %struct.pkgbin** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %4, metadata !290, metadata !257), !dbg !291
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !292, metadata !257), !dbg !293
  %6 = load %struct.pkgbin*, %struct.pkgbin** %4, align 8, !dbg !294
  %7 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %6, i32 0, i32 3, !dbg !296
  %8 = load %struct.dpkg_arch*, %struct.dpkg_arch** %7, align 8, !dbg !296
  %9 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %8, i32 0, i32 2, !dbg !297
  %10 = load i32, i32* %9, align 8, !dbg !297
  %11 = icmp eq i32 %10, 0, !dbg !298
  br i1 %11, label %19, label %12, !dbg !299

; <label>:12:                                     ; preds = %2
  %13 = load %struct.pkgbin*, %struct.pkgbin** %4, align 8, !dbg !300
  %14 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %13, i32 0, i32 3, !dbg !301
  %15 = load %struct.dpkg_arch*, %struct.dpkg_arch** %14, align 8, !dbg !301
  %16 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %15, i32 0, i32 2, !dbg !302
  %17 = load i32, i32* %16, align 8, !dbg !302
  %18 = icmp eq i32 %17, 1, !dbg !303
  br i1 %18, label %19, label %20, !dbg !304

; <label>:19:                                     ; preds = %12, %2
  store i1 false, i1* %3, align 1, !dbg !306
  br label %48, !dbg !306

; <label>:20:                                     ; preds = %12
  %21 = load i32, i32* %5, align 4, !dbg !307
  switch i32 %21, label %47 [
    i32 0, label %22
    i32 1, label %23
    i32 2, label %30
    i32 3, label %46
  ], !dbg !308

; <label>:22:                                     ; preds = %20
  br label %47, !dbg !309

; <label>:23:                                     ; preds = %20
  %24 = load %struct.pkgbin*, %struct.pkgbin** %4, align 8, !dbg !311
  %25 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %24, i32 0, i32 2, !dbg !313
  %26 = load i32, i32* %25, align 4, !dbg !313
  %27 = icmp eq i32 %26, 1, !dbg !314
  br i1 %27, label %28, label %29, !dbg !315

; <label>:28:                                     ; preds = %23
  store i1 true, i1* %3, align 1, !dbg !316
  br label %48, !dbg !316

; <label>:29:                                     ; preds = %23
  br label %30, !dbg !317

; <label>:30:                                     ; preds = %20, %29
  %31 = load %struct.pkgbin*, %struct.pkgbin** %4, align 8, !dbg !319
  %32 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %31, i32 0, i32 3, !dbg !321
  %33 = load %struct.dpkg_arch*, %struct.dpkg_arch** %32, align 8, !dbg !321
  %34 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %33, i32 0, i32 2, !dbg !322
  %35 = load i32, i32* %34, align 8, !dbg !322
  %36 = icmp eq i32 %35, 5, !dbg !323
  br i1 %36, label %44, label %37, !dbg !324

; <label>:37:                                     ; preds = %30
  %38 = load %struct.pkgbin*, %struct.pkgbin** %4, align 8, !dbg !325
  %39 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %38, i32 0, i32 3, !dbg !326
  %40 = load %struct.dpkg_arch*, %struct.dpkg_arch** %39, align 8, !dbg !326
  %41 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %40, i32 0, i32 2, !dbg !327
  %42 = load i32, i32* %41, align 8, !dbg !327
  %43 = icmp eq i32 %42, 4, !dbg !328
  br i1 %43, label %44, label %45, !dbg !329

; <label>:44:                                     ; preds = %37, %30
  br label %47, !dbg !331

; <label>:45:                                     ; preds = %37
  br label %46, !dbg !332

; <label>:46:                                     ; preds = %20, %45
  store i1 true, i1* %3, align 1, !dbg !334
  br label %48, !dbg !334

; <label>:47:                                     ; preds = %20, %44, %22
  store i1 false, i1* %3, align 1, !dbg !335
  br label %48, !dbg !335

; <label>:48:                                     ; preds = %47, %46, %28, %19
  %49 = load i1, i1* %3, align 1, !dbg !336
  ret i1 %49, !dbg !336
}

declare void @varbuf_add_archqual(%struct.varbuf*, %struct.dpkg_arch*) #2

declare void @varbuf_end_str(%struct.varbuf*) #2

; Function Attrs: nounwind uwtable
define i8* @pkgbin_name_archqual(%struct.pkginfo*, %struct.pkgbin*) #0 !dbg !337 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.pkginfo*, align 8
  %5 = alloca %struct.pkgbin*, align 8
  %6 = alloca i8*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %4, metadata !340, metadata !257), !dbg !341
  store %struct.pkgbin* %1, %struct.pkgbin** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %5, metadata !342, metadata !257), !dbg !343
  call void @llvm.dbg.declare(metadata i8** %6, metadata !344, metadata !257), !dbg !345
  %7 = load %struct.pkgbin*, %struct.pkgbin** %5, align 8, !dbg !346
  %8 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %7, i32 0, i32 3, !dbg !348
  %9 = load %struct.dpkg_arch*, %struct.dpkg_arch** %8, align 8, !dbg !348
  %10 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %9, i32 0, i32 2, !dbg !349
  %11 = load i32, i32* %10, align 8, !dbg !349
  %12 = icmp eq i32 %11, 0, !dbg !350
  br i1 %12, label %20, label %13, !dbg !351

; <label>:13:                                     ; preds = %2
  %14 = load %struct.pkgbin*, %struct.pkgbin** %5, align 8, !dbg !352
  %15 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %14, i32 0, i32 3, !dbg !353
  %16 = load %struct.dpkg_arch*, %struct.dpkg_arch** %15, align 8, !dbg !353
  %17 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %16, i32 0, i32 2, !dbg !354
  %18 = load i32, i32* %17, align 8, !dbg !354
  %19 = icmp eq i32 %18, 1, !dbg !355
  br i1 %19, label %20, label %26, !dbg !356

; <label>:20:                                     ; preds = %13, %2
  %21 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !358
  %22 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %21, i32 0, i32 0, !dbg !359
  %23 = load %struct.pkgset*, %struct.pkgset** %22, align 8, !dbg !359
  %24 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %23, i32 0, i32 1, !dbg !360
  %25 = load i8*, i8** %24, align 8, !dbg !360
  store i8* %25, i8** %3, align 8, !dbg !361
  br label %56, !dbg !361

; <label>:26:                                     ; preds = %13
  %27 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !362
  %28 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %27, i32 0, i32 0, !dbg !363
  %29 = load %struct.pkgset*, %struct.pkgset** %28, align 8, !dbg !363
  %30 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %29, i32 0, i32 1, !dbg !364
  %31 = load i8*, i8** %30, align 8, !dbg !364
  %32 = call i64 @strlen(i8* %31) #7, !dbg !365
  %33 = add i64 %32, 1, !dbg !366
  %34 = load %struct.pkgbin*, %struct.pkgbin** %5, align 8, !dbg !367
  %35 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %34, i32 0, i32 3, !dbg !368
  %36 = load %struct.dpkg_arch*, %struct.dpkg_arch** %35, align 8, !dbg !368
  %37 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %36, i32 0, i32 1, !dbg !369
  %38 = load i8*, i8** %37, align 8, !dbg !369
  %39 = call i64 @strlen(i8* %38) #7, !dbg !370
  %40 = add i64 %33, %39, !dbg !371
  %41 = add i64 %40, 1, !dbg !372
  %42 = call i8* @nfmalloc(i64 %41), !dbg !373
  store i8* %42, i8** %6, align 8, !dbg !374
  %43 = load i8*, i8** %6, align 8, !dbg !375
  %44 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !376
  %45 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %44, i32 0, i32 0, !dbg !377
  %46 = load %struct.pkgset*, %struct.pkgset** %45, align 8, !dbg !377
  %47 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %46, i32 0, i32 1, !dbg !378
  %48 = load i8*, i8** %47, align 8, !dbg !378
  %49 = load %struct.pkgbin*, %struct.pkgbin** %5, align 8, !dbg !379
  %50 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %49, i32 0, i32 3, !dbg !380
  %51 = load %struct.dpkg_arch*, %struct.dpkg_arch** %50, align 8, !dbg !380
  %52 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %51, i32 0, i32 1, !dbg !381
  %53 = load i8*, i8** %52, align 8, !dbg !381
  %54 = call i8* (i8*, ...) @str_concat(i8* %43, i8* %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* %53, i8* null), !dbg !382
  %55 = load i8*, i8** %6, align 8, !dbg !383
  store i8* %55, i8** %3, align 8, !dbg !384
  br label %56, !dbg !384

; <label>:56:                                     ; preds = %26, %20
  %57 = load i8*, i8** %3, align 8, !dbg !385
  ret i8* %57, !dbg !385
}

declare i8* @nfmalloc(i64) #2

declare i8* @str_concat(i8*, ...) #2

; Function Attrs: nounwind uwtable
define i8* @pkgbin_name_const(%struct.pkginfo*, %struct.pkgbin*, i32) #0 !dbg !386 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pkginfo*, align 8
  %6 = alloca %struct.pkgbin*, align 8
  %7 = alloca i32, align 4
  store %struct.pkginfo* %0, %struct.pkginfo** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %5, metadata !389, metadata !257), !dbg !390
  store %struct.pkgbin* %1, %struct.pkgbin** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %6, metadata !391, metadata !257), !dbg !392
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !393, metadata !257), !dbg !394
  %8 = load %struct.pkgbin*, %struct.pkgbin** %6, align 8, !dbg !395
  %9 = load i32, i32* %7, align 4, !dbg !397
  %10 = call zeroext i1 @pkgbin_name_needs_arch(%struct.pkgbin* %8, i32 %9), !dbg !398
  br i1 %10, label %17, label %11, !dbg !399

; <label>:11:                                     ; preds = %3
  %12 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !400
  %13 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %12, i32 0, i32 0, !dbg !401
  %14 = load %struct.pkgset*, %struct.pkgset** %13, align 8, !dbg !401
  %15 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %14, i32 0, i32 1, !dbg !402
  %16 = load i8*, i8** %15, align 8, !dbg !402
  store i8* %16, i8** %4, align 8, !dbg !403
  br label %30, !dbg !403

; <label>:17:                                     ; preds = %3
  %18 = load %struct.pkgbin*, %struct.pkgbin** %6, align 8, !dbg !404
  %19 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %18, i32 0, i32 4, !dbg !406
  %20 = load i8*, i8** %19, align 8, !dbg !406
  %21 = icmp eq i8* %20, null, !dbg !407
  br i1 %21, label %22, label %26, !dbg !408

; <label>:22:                                     ; preds = %17
  %23 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !409
  %24 = load %struct.pkgbin*, %struct.pkgbin** %6, align 8, !dbg !410
  %25 = call i8* @pkgbin_name_archqual(%struct.pkginfo* %23, %struct.pkgbin* %24), !dbg !411
  store i8* %25, i8** %4, align 8, !dbg !412
  br label %30, !dbg !412

; <label>:26:                                     ; preds = %17
  %27 = load %struct.pkgbin*, %struct.pkgbin** %6, align 8, !dbg !413
  %28 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %27, i32 0, i32 4, !dbg !414
  %29 = load i8*, i8** %28, align 8, !dbg !414
  store i8* %29, i8** %4, align 8, !dbg !415
  br label %30, !dbg !415

; <label>:30:                                     ; preds = %26, %22, %11
  %31 = load i8*, i8** %4, align 8, !dbg !416
  ret i8* %31, !dbg !416
}

; Function Attrs: nounwind uwtable
define i8* @pkg_name_const(%struct.pkginfo*, i32) #0 !dbg !417 {
  %3 = alloca %struct.pkginfo*, align 8
  %4 = alloca i32, align 4
  store %struct.pkginfo* %0, %struct.pkginfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %3, metadata !420, metadata !257), !dbg !421
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !422, metadata !257), !dbg !423
  %5 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !424
  %6 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !425
  %7 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %6, i32 0, i32 9, !dbg !426
  %8 = load i32, i32* %4, align 4, !dbg !427
  %9 = call i8* @pkgbin_name_const(%struct.pkginfo* %5, %struct.pkgbin* %7, i32 %8), !dbg !428
  ret i8* %9, !dbg !429
}

; Function Attrs: nounwind uwtable
define i8* @pkgbin_name(%struct.pkginfo*, %struct.pkgbin*, i32) #0 !dbg !430 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pkginfo*, align 8
  %6 = alloca %struct.pkgbin*, align 8
  %7 = alloca i32, align 4
  store %struct.pkginfo* %0, %struct.pkginfo** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %5, metadata !434, metadata !257), !dbg !435
  store %struct.pkgbin* %1, %struct.pkgbin** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %6, metadata !436, metadata !257), !dbg !437
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !438, metadata !257), !dbg !439
  %8 = load %struct.pkgbin*, %struct.pkgbin** %6, align 8, !dbg !440
  %9 = load i32, i32* %7, align 4, !dbg !442
  %10 = call zeroext i1 @pkgbin_name_needs_arch(%struct.pkgbin* %8, i32 %9), !dbg !443
  br i1 %10, label %17, label %11, !dbg !444

; <label>:11:                                     ; preds = %3
  %12 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !445
  %13 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %12, i32 0, i32 0, !dbg !446
  %14 = load %struct.pkgset*, %struct.pkgset** %13, align 8, !dbg !446
  %15 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %14, i32 0, i32 1, !dbg !447
  %16 = load i8*, i8** %15, align 8, !dbg !447
  store i8* %16, i8** %4, align 8, !dbg !448
  br label %32, !dbg !448

; <label>:17:                                     ; preds = %3
  %18 = load %struct.pkgbin*, %struct.pkgbin** %6, align 8, !dbg !449
  %19 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %18, i32 0, i32 4, !dbg !451
  %20 = load i8*, i8** %19, align 8, !dbg !451
  %21 = icmp eq i8* %20, null, !dbg !452
  br i1 %21, label %22, label %28, !dbg !453

; <label>:22:                                     ; preds = %17
  %23 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !454
  %24 = load %struct.pkgbin*, %struct.pkgbin** %6, align 8, !dbg !455
  %25 = call i8* @pkgbin_name_archqual(%struct.pkginfo* %23, %struct.pkgbin* %24), !dbg !456
  %26 = load %struct.pkgbin*, %struct.pkgbin** %6, align 8, !dbg !457
  %27 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %26, i32 0, i32 4, !dbg !458
  store i8* %25, i8** %27, align 8, !dbg !459
  br label %28, !dbg !457

; <label>:28:                                     ; preds = %22, %17
  %29 = load %struct.pkgbin*, %struct.pkgbin** %6, align 8, !dbg !460
  %30 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %29, i32 0, i32 4, !dbg !461
  %31 = load i8*, i8** %30, align 8, !dbg !461
  store i8* %31, i8** %4, align 8, !dbg !462
  br label %32, !dbg !462

; <label>:32:                                     ; preds = %28, %11
  %33 = load i8*, i8** %4, align 8, !dbg !463
  ret i8* %33, !dbg !463
}

; Function Attrs: nounwind uwtable
define i8* @pkg_name(%struct.pkginfo*, i32) #0 !dbg !464 {
  %3 = alloca %struct.pkginfo*, align 8
  %4 = alloca i32, align 4
  store %struct.pkginfo* %0, %struct.pkginfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %3, metadata !467, metadata !257), !dbg !468
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !469, metadata !257), !dbg !470
  %5 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !471
  %6 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !472
  %7 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %6, i32 0, i32 9, !dbg !473
  %8 = load i32, i32* %4, align 4, !dbg !474
  %9 = call i8* @pkgbin_name(%struct.pkginfo* %5, %struct.pkgbin* %7, i32 %8), !dbg !475
  ret i8* %9, !dbg !476
}

; Function Attrs: nounwind uwtable
define i8* @pkgbin_synopsis(%struct.pkginfo*, %struct.pkgbin*, i32*) #0 !dbg !477 {
  %4 = alloca %struct.pkginfo*, align 8
  %5 = alloca %struct.pkgbin*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %4, metadata !481, metadata !257), !dbg !482
  store %struct.pkgbin* %1, %struct.pkgbin** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %5, metadata !483, metadata !257), !dbg !484
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !485, metadata !257), !dbg !486
  call void @llvm.dbg.declare(metadata i8** %7, metadata !487, metadata !257), !dbg !488
  %8 = load %struct.pkgbin*, %struct.pkgbin** %5, align 8, !dbg !489
  %9 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %8, i32 0, i32 5, !dbg !490
  %10 = load i8*, i8** %9, align 8, !dbg !490
  store i8* %10, i8** %7, align 8, !dbg !491
  %11 = load i8*, i8** %7, align 8, !dbg !492
  %12 = icmp ne i8* %11, null, !dbg !492
  br i1 %12, label %15, label %13, !dbg !494

; <label>:13:                                     ; preds = %3
  %14 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0)) #8, !dbg !495
  store i8* %14, i8** %7, align 8, !dbg !496
  br label %15, !dbg !497

; <label>:15:                                     ; preds = %13, %3
  %16 = load i8*, i8** %7, align 8, !dbg !498
  %17 = call i64 @strcspn(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0)) #7, !dbg !499
  %18 = trunc i64 %17 to i32, !dbg !499
  %19 = load i32*, i32** %6, align 8, !dbg !500
  store i32 %18, i32* %19, align 4, !dbg !501
  %20 = load i8*, i8** %7, align 8, !dbg !502
  ret i8* %20, !dbg !503
}

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #4

; Function Attrs: nounwind readonly
declare i64 @strcspn(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define i32 @pkg_abbrev_want(%struct.pkginfo*) #0 !dbg !504 {
  %2 = alloca %struct.pkginfo*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %2, metadata !507, metadata !257), !dbg !508
  %3 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !509
  %4 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %3, i32 0, i32 2, !dbg !510
  %5 = load i32, i32* %4, align 8, !dbg !510
  %6 = zext i32 %5 to i64, !dbg !511
  %7 = getelementptr inbounds [6 x i8], [6 x i8]* @.str.4, i64 0, i64 %6, !dbg !511
  %8 = load i8, i8* %7, align 1, !dbg !511
  %9 = sext i8 %8 to i32, !dbg !511
  ret i32 %9, !dbg !512
}

; Function Attrs: nounwind uwtable
define i32 @pkg_abbrev_status(%struct.pkginfo*) #0 !dbg !513 {
  %2 = alloca %struct.pkginfo*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %2, metadata !514, metadata !257), !dbg !515
  %3 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !516
  %4 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %3, i32 0, i32 4, !dbg !517
  %5 = load i32, i32* %4, align 8, !dbg !517
  %6 = zext i32 %5 to i64, !dbg !518
  %7 = getelementptr inbounds [9 x i8], [9 x i8]* @.str.5, i64 0, i64 %6, !dbg !518
  %8 = load i8, i8* %7, align 1, !dbg !518
  %9 = sext i8 %8 to i32, !dbg !518
  ret i32 %9, !dbg !519
}

; Function Attrs: nounwind uwtable
define i32 @pkg_abbrev_eflag(%struct.pkginfo*) #0 !dbg !520 {
  %2 = alloca %struct.pkginfo*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %2, metadata !521, metadata !257), !dbg !522
  %3 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !523
  %4 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %3, i32 0, i32 3, !dbg !524
  %5 = load i32, i32* %4, align 4, !dbg !524
  %6 = zext i32 %5 to i64, !dbg !525
  %7 = getelementptr inbounds [3 x i8], [3 x i8]* @.str.6, i64 0, i64 %6, !dbg !525
  %8 = load i8, i8* %7, align 1, !dbg !525
  %9 = sext i8 %8 to i32, !dbg !525
  ret i32 %9, !dbg !526
}

; Function Attrs: nounwind uwtable
define i8* @pkg_want_name(%struct.pkginfo*) #0 !dbg !527 {
  %2 = alloca %struct.pkginfo*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %2, metadata !530, metadata !257), !dbg !531
  %3 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !532
  %4 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %3, i32 0, i32 2, !dbg !533
  %5 = load i32, i32* %4, align 8, !dbg !533
  %6 = zext i32 %5 to i64, !dbg !534
  %7 = getelementptr inbounds [0 x %struct.namevalue], [0 x %struct.namevalue]* @wantinfos, i64 0, i64 %6, !dbg !534
  %8 = getelementptr inbounds %struct.namevalue, %struct.namevalue* %7, i32 0, i32 0, !dbg !535
  %9 = load i8*, i8** %8, align 8, !dbg !535
  ret i8* %9, !dbg !536
}

; Function Attrs: nounwind uwtable
define i8* @pkg_eflag_name(%struct.pkginfo*) #0 !dbg !537 {
  %2 = alloca %struct.pkginfo*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %2, metadata !538, metadata !257), !dbg !539
  %3 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !540
  %4 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %3, i32 0, i32 3, !dbg !541
  %5 = load i32, i32* %4, align 4, !dbg !541
  %6 = zext i32 %5 to i64, !dbg !542
  %7 = getelementptr inbounds [0 x %struct.namevalue], [0 x %struct.namevalue]* @eflaginfos, i64 0, i64 %6, !dbg !542
  %8 = getelementptr inbounds %struct.namevalue, %struct.namevalue* %7, i32 0, i32 0, !dbg !543
  %9 = load i8*, i8** %8, align 8, !dbg !543
  ret i8* %9, !dbg !544
}

; Function Attrs: nounwind uwtable
define i8* @pkg_status_name(%struct.pkginfo*) #0 !dbg !545 {
  %2 = alloca %struct.pkginfo*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %2, metadata !546, metadata !257), !dbg !547
  %3 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !548
  %4 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %3, i32 0, i32 4, !dbg !549
  %5 = load i32, i32* %4, align 8, !dbg !549
  %6 = zext i32 %5 to i64, !dbg !550
  %7 = getelementptr inbounds [0 x %struct.namevalue], [0 x %struct.namevalue]* @statusinfos, i64 0, i64 %6, !dbg !550
  %8 = getelementptr inbounds %struct.namevalue, %struct.namevalue* %7, i32 0, i32 0, !dbg !551
  %9 = load i8*, i8** %8, align 8, !dbg !551
  ret i8* %9, !dbg !552
}

; Function Attrs: nounwind uwtable
define i8* @pkg_priority_name(%struct.pkginfo*) #0 !dbg !553 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pkginfo*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %3, metadata !554, metadata !257), !dbg !555
  %4 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !556
  %5 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %4, i32 0, i32 5, !dbg !558
  %6 = load i32, i32* %5, align 4, !dbg !558
  %7 = icmp eq i32 %6, 5, !dbg !559
  br i1 %7, label %8, label %12, !dbg !560

; <label>:8:                                      ; preds = %1
  %9 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !561
  %10 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %9, i32 0, i32 6, !dbg !562
  %11 = load i8*, i8** %10, align 8, !dbg !562
  store i8* %11, i8** %2, align 8, !dbg !563
  br label %20, !dbg !563

; <label>:12:                                     ; preds = %1
  %13 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !564
  %14 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %13, i32 0, i32 5, !dbg !565
  %15 = load i32, i32* %14, align 4, !dbg !565
  %16 = sext i32 %15 to i64, !dbg !566
  %17 = getelementptr inbounds [0 x %struct.namevalue], [0 x %struct.namevalue]* @priorityinfos, i64 0, i64 %16, !dbg !566
  %18 = getelementptr inbounds %struct.namevalue, %struct.namevalue* %17, i32 0, i32 0, !dbg !567
  %19 = load i8*, i8** %18, align 8, !dbg !567
  store i8* %19, i8** %2, align 8, !dbg !568
  br label %20, !dbg !568

; <label>:20:                                     ; preds = %12, %8
  %21 = load i8*, i8** %2, align 8, !dbg !569
  ret i8* %21, !dbg !569
}

; Function Attrs: nounwind uwtable
define i32 @pkg_sorter_by_nonambig_name_arch(i8*, i8*) #0 !dbg !570 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pkginfo*, align 8
  %7 = alloca %struct.pkginfo*, align 8
  %8 = alloca %struct.pkgbin*, align 8
  %9 = alloca %struct.pkgbin*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !575, metadata !257), !dbg !576
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !577, metadata !257), !dbg !578
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %6, metadata !579, metadata !257), !dbg !580
  %11 = load i8*, i8** %4, align 8, !dbg !581
  %12 = bitcast i8* %11 to %struct.pkginfo**, !dbg !582
  %13 = load %struct.pkginfo*, %struct.pkginfo** %12, align 8, !dbg !583
  store %struct.pkginfo* %13, %struct.pkginfo** %6, align 8, !dbg !580
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %7, metadata !584, metadata !257), !dbg !585
  %14 = load i8*, i8** %5, align 8, !dbg !586
  %15 = bitcast i8* %14 to %struct.pkginfo**, !dbg !587
  %16 = load %struct.pkginfo*, %struct.pkginfo** %15, align 8, !dbg !588
  store %struct.pkginfo* %16, %struct.pkginfo** %7, align 8, !dbg !585
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %8, metadata !589, metadata !257), !dbg !590
  %17 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !591
  %18 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %17, i32 0, i32 9, !dbg !592
  store %struct.pkgbin* %18, %struct.pkgbin** %8, align 8, !dbg !590
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %9, metadata !593, metadata !257), !dbg !594
  %19 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !595
  %20 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %19, i32 0, i32 9, !dbg !596
  store %struct.pkgbin* %20, %struct.pkgbin** %9, align 8, !dbg !594
  call void @llvm.dbg.declare(metadata i32* %10, metadata !597, metadata !257), !dbg !598
  %21 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !599
  %22 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %21, i32 0, i32 0, !dbg !600
  %23 = load %struct.pkgset*, %struct.pkgset** %22, align 8, !dbg !600
  %24 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %23, i32 0, i32 1, !dbg !601
  %25 = load i8*, i8** %24, align 8, !dbg !601
  %26 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !602
  %27 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %26, i32 0, i32 0, !dbg !603
  %28 = load %struct.pkgset*, %struct.pkgset** %27, align 8, !dbg !603
  %29 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %28, i32 0, i32 1, !dbg !604
  %30 = load i8*, i8** %29, align 8, !dbg !604
  %31 = call i32 @strcmp(i8* %25, i8* %30) #7, !dbg !605
  store i32 %31, i32* %10, align 4, !dbg !606
  %32 = load i32, i32* %10, align 4, !dbg !607
  %33 = icmp ne i32 %32, 0, !dbg !607
  br i1 %33, label %34, label %36, !dbg !609

; <label>:34:                                     ; preds = %2
  %35 = load i32, i32* %10, align 4, !dbg !610
  store i32 %35, i32* %3, align 4, !dbg !611
  br label %65, !dbg !611

; <label>:36:                                     ; preds = %2
  %37 = load %struct.pkgbin*, %struct.pkgbin** %8, align 8, !dbg !612
  %38 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %37, i32 0, i32 3, !dbg !614
  %39 = load %struct.dpkg_arch*, %struct.dpkg_arch** %38, align 8, !dbg !614
  %40 = load %struct.pkgbin*, %struct.pkgbin** %9, align 8, !dbg !615
  %41 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %40, i32 0, i32 3, !dbg !616
  %42 = load %struct.dpkg_arch*, %struct.dpkg_arch** %41, align 8, !dbg !616
  %43 = icmp eq %struct.dpkg_arch* %39, %42, !dbg !617
  br i1 %43, label %44, label %45, !dbg !618

; <label>:44:                                     ; preds = %36
  store i32 0, i32* %3, align 4, !dbg !619
  br label %65, !dbg !619

; <label>:45:                                     ; preds = %36
  %46 = load %struct.pkgbin*, %struct.pkgbin** %8, align 8, !dbg !620
  %47 = call zeroext i1 @pkgbin_name_needs_arch(%struct.pkgbin* %46, i32 1), !dbg !622
  br i1 %47, label %48, label %64, !dbg !623

; <label>:48:                                     ; preds = %45
  %49 = load %struct.pkgbin*, %struct.pkgbin** %9, align 8, !dbg !624
  %50 = call zeroext i1 @pkgbin_name_needs_arch(%struct.pkgbin* %49, i32 1), !dbg !627
  br i1 %50, label %51, label %63, !dbg !628

; <label>:51:                                     ; preds = %48
  %52 = load %struct.pkgbin*, %struct.pkgbin** %8, align 8, !dbg !629
  %53 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %52, i32 0, i32 3, !dbg !630
  %54 = load %struct.dpkg_arch*, %struct.dpkg_arch** %53, align 8, !dbg !630
  %55 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %54, i32 0, i32 1, !dbg !631
  %56 = load i8*, i8** %55, align 8, !dbg !631
  %57 = load %struct.pkgbin*, %struct.pkgbin** %9, align 8, !dbg !632
  %58 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %57, i32 0, i32 3, !dbg !633
  %59 = load %struct.dpkg_arch*, %struct.dpkg_arch** %58, align 8, !dbg !633
  %60 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %59, i32 0, i32 1, !dbg !634
  %61 = load i8*, i8** %60, align 8, !dbg !634
  %62 = call i32 @strcmp(i8* %56, i8* %61) #7, !dbg !635
  store i32 %62, i32* %3, align 4, !dbg !636
  br label %65, !dbg !636

; <label>:63:                                     ; preds = %48
  store i32 1, i32* %3, align 4, !dbg !637
  br label %65, !dbg !637

; <label>:64:                                     ; preds = %45
  store i32 -1, i32* %3, align 4, !dbg !638
  br label %65, !dbg !638

; <label>:65:                                     ; preds = %64, %63, %51, %44, %34
  %66 = load i32, i32* %3, align 4, !dbg !640
  ret i32 %66, !dbg !640
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define void @varbuf_add_source_version(%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*) #0 !dbg !641 {
  %4 = alloca %struct.varbuf*, align 8
  %5 = alloca %struct.pkginfo*, align 8
  %6 = alloca %struct.pkgbin*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.varbuf* %0, %struct.varbuf** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %4, metadata !644, metadata !257), !dbg !645
  store %struct.pkginfo* %1, %struct.pkginfo** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %5, metadata !646, metadata !257), !dbg !647
  store %struct.pkgbin* %2, %struct.pkgbin** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %6, metadata !648, metadata !257), !dbg !649
  call void @llvm.dbg.declare(metadata i8** %7, metadata !650, metadata !257), !dbg !651
  call void @llvm.dbg.declare(metadata i64* %8, metadata !652, metadata !257), !dbg !653
  %9 = load %struct.pkgbin*, %struct.pkgbin** %6, align 8, !dbg !654
  %10 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %9, i32 0, i32 7, !dbg !656
  %11 = load i8*, i8** %10, align 8, !dbg !656
  %12 = icmp ne i8* %11, null, !dbg !654
  br i1 %12, label %13, label %18, !dbg !657

; <label>:13:                                     ; preds = %3
  %14 = load %struct.pkgbin*, %struct.pkgbin** %6, align 8, !dbg !658
  %15 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %14, i32 0, i32 7, !dbg !659
  %16 = load i8*, i8** %15, align 8, !dbg !659
  %17 = call i8* @strchr(i8* %16, i32 40) #7, !dbg !660
  store i8* %17, i8** %7, align 8, !dbg !661
  br label %19, !dbg !662

; <label>:18:                                     ; preds = %3
  store i8* null, i8** %7, align 8, !dbg !663
  br label %19

; <label>:19:                                     ; preds = %18, %13
  %20 = load i8*, i8** %7, align 8, !dbg !664
  %21 = icmp eq i8* %20, null, !dbg !666
  br i1 %21, label %22, label %26, !dbg !667

; <label>:22:                                     ; preds = %19
  %23 = load %struct.varbuf*, %struct.varbuf** %4, align 8, !dbg !668
  %24 = load %struct.pkgbin*, %struct.pkgbin** %6, align 8, !dbg !670
  %25 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %24, i32 0, i32 11, !dbg !671
  call void @varbufversion(%struct.varbuf* %23, %struct.dpkg_version* %25, i32 1), !dbg !672
  br label %34, !dbg !673

; <label>:26:                                     ; preds = %19
  %27 = load i8*, i8** %7, align 8, !dbg !674
  %28 = getelementptr inbounds i8, i8* %27, i32 1, !dbg !674
  store i8* %28, i8** %7, align 8, !dbg !674
  %29 = load i8*, i8** %7, align 8, !dbg !676
  %30 = call i64 @strcspn(i8* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)) #7, !dbg !677
  store i64 %30, i64* %8, align 8, !dbg !678
  %31 = load %struct.varbuf*, %struct.varbuf** %4, align 8, !dbg !679
  %32 = load i8*, i8** %7, align 8, !dbg !680
  %33 = load i64, i64* %8, align 8, !dbg !681
  call void @varbuf_add_buf(%struct.varbuf* %31, i8* %32, i64 %33), !dbg !682
  br label %34

; <label>:34:                                     ; preds = %26, %22
  ret void, !dbg !683
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

declare void @varbufversion(%struct.varbuf*, %struct.dpkg_version*, i32) #2

; Function Attrs: nounwind uwtable
define void @pkg_source_version(%struct.dpkg_version*, %struct.pkginfo*, %struct.pkgbin*) #0 !dbg !684 {
  %4 = alloca %struct.dpkg_version*, align 8
  %5 = alloca %struct.pkginfo*, align 8
  %6 = alloca %struct.pkgbin*, align 8
  %7 = alloca %struct.dpkg_error, align 8
  %8 = alloca %struct.varbuf, align 8
  store %struct.dpkg_version* %0, %struct.dpkg_version** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.dpkg_version** %4, metadata !688, metadata !257), !dbg !689
  store %struct.pkginfo* %1, %struct.pkginfo** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %5, metadata !690, metadata !257), !dbg !691
  store %struct.pkgbin* %2, %struct.pkgbin** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %6, metadata !692, metadata !257), !dbg !693
  call void @llvm.dbg.declare(metadata %struct.dpkg_error* %7, metadata !694, metadata !257), !dbg !700
  call void @llvm.dbg.declare(metadata %struct.varbuf* %8, metadata !701, metadata !257), !dbg !702
  %9 = bitcast %struct.varbuf* %8 to i8*, !dbg !702
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 24, i32 8, i1 false), !dbg !702
  %10 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !703
  %11 = load %struct.pkgbin*, %struct.pkgbin** %6, align 8, !dbg !704
  call void @varbuf_add_source_version(%struct.varbuf* %8, %struct.pkginfo* %10, %struct.pkgbin* %11), !dbg !705
  call void @varbuf_end_str(%struct.varbuf* %8), !dbg !706
  %12 = load %struct.dpkg_version*, %struct.dpkg_version** %4, align 8, !dbg !707
  %13 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %8, i32 0, i32 2, !dbg !709
  %14 = load i8*, i8** %13, align 8, !dbg !709
  %15 = call i32 @parseversion(%struct.dpkg_version* %12, i8* %14, %struct.dpkg_error* %7), !dbg !710
  %16 = icmp slt i32 %15, 0, !dbg !711
  br i1 %16, label %17, label %23, !dbg !712

; <label>:17:                                     ; preds = %3
  %18 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i32 0, i32 0)) #8, !dbg !713
  %19 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %8, i32 0, i32 2, !dbg !714
  %20 = load i8*, i8** %19, align 8, !dbg !714
  %21 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %7, i32 0, i32 2, !dbg !715
  %22 = load i8*, i8** %21, align 8, !dbg !715
  call void (i8*, ...) @ohshit(i8* %18, i8* %20, i8* %22) #9, !dbg !716
  unreachable, !dbg !718

; <label>:23:                                     ; preds = %3
  ret void, !dbg !719
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #5

declare i32 @parseversion(%struct.dpkg_version*, i8*, %struct.dpkg_error*) #2

; Function Attrs: noreturn
declare void @ohshit(i8*, ...) #6

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!235, !236}
!llvm.ident = !{!237}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !90)
!1 = !DIFile(filename: "[inter]lib--dpkg--pkg-show.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{!3, !15, !26, !35, !43, !47, !57, !67, !73, !79, !84}
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
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkg_name_arch_when", file: !4, line: 396, size: 32, align: 32, elements: !74)
!74 = !{!75, !76, !77, !78}
!75 = !DIEnumerator(name: "pnaw_never", value: 0)
!76 = !DIEnumerator(name: "pnaw_nonambig", value: 1)
!77 = !DIEnumerator(name: "pnaw_foreign", value: 2)
!78 = !DIEnumerator(name: "pnaw_always", value: 3)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "versiondisplayepochwhen", file: !4, line: 388, size: 32, align: 32, elements: !80)
!80 = !{!81, !82, !83}
!81 = !DIEnumerator(name: "vdew_never", value: 0)
!82 = !DIEnumerator(name: "vdew_nonambig", value: 1)
!83 = !DIEnumerator(name: "vdew_always", value: 2)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_msg_type", file: !85, line: 36, size: 32, align: 32, elements: !86)
!85 = !DIFile(filename: "../../lib/dpkg/error.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!86 = !{!87, !88, !89}
!87 = !DIEnumerator(name: "DPKG_MSG_NONE", value: 0)
!88 = !DIEnumerator(name: "DPKG_MSG_WARN", value: 1)
!89 = !DIEnumerator(name: "DPKG_MSG_ERROR", value: 2)
!90 = !{!91, !92}
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64, align: 64)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, align: 64)
!94 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkginfo", file: !4, line: 195, size: 3072, align: 64, elements: !96)
!96 = !{!97, !150, !151, !152, !153, !154, !155, !156, !157, !158, !188, !189, !192, !201, !217, !218, !224, !227, !233, !234}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !95, file: !4, line: 196, baseType: !98, size: 64, align: 64)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64, align: 64)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgset", file: !4, line: 242, size: 3392, align: 64, elements: !100)
!100 = !{!101, !102, !106, !107, !148}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !99, file: !4, line: 243, baseType: !98, size: 64, align: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !99, file: !4, line: 244, baseType: !103, size: 64, align: 64, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64, align: 64)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!105 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !99, file: !4, line: 245, baseType: !95, size: 3072, align: 64, offset: 128)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "depended", scope: !99, file: !4, line: 249, baseType: !108, size: 128, align: 64, offset: 3200)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !99, file: !4, line: 246, size: 128, align: 64, elements: !109)
!109 = !{!110, !147}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !108, file: !4, line: 247, baseType: !111, size: 64, align: 64)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64, align: 64)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "deppossi", file: !4, line: 63, size: 640, align: 64, elements: !113)
!113 = !{!114, !123, !124, !125, !126, !127, !136, !143, !144, !146}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !112, file: !4, line: 64, baseType: !115, size: 64, align: 64)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dependency", file: !4, line: 56, size: 256, align: 64, elements: !117)
!117 = !{!118, !120, !121, !122}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !116, file: !4, line: 57, baseType: !119, size: 64, align: 64)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !116, file: !4, line: 58, baseType: !115, size: 64, align: 64, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !116, file: !4, line: 59, baseType: !111, size: 64, align: 64, offset: 128)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !116, file: !4, line: 60, baseType: !3, size: 32, align: 32, offset: 192)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "ed", scope: !112, file: !4, line: 65, baseType: !98, size: 64, align: 64, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !112, file: !4, line: 66, baseType: !111, size: 64, align: 64, offset: 128)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "rev_next", scope: !112, file: !4, line: 66, baseType: !111, size: 64, align: 64, offset: 192)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "rev_prev", scope: !112, file: !4, line: 66, baseType: !111, size: 64, align: 64, offset: 256)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !112, file: !4, line: 67, baseType: !128, size: 64, align: 64, offset: 320)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64, align: 64)
!129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_arch", file: !16, line: 48, size: 192, align: 64, elements: !131)
!131 = !{!132, !134, !135}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !130, file: !16, line: 49, baseType: !133, size: 64, align: 64)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64, align: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !130, file: !16, line: 50, baseType: !103, size: 64, align: 64, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !130, file: !16, line: 51, baseType: !15, size: 32, align: 32, offset: 128)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !112, file: !4, line: 68, baseType: !137, size: 192, align: 64, offset: 384)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_version", file: !27, line: 42, size: 192, align: 64, elements: !138)
!138 = !{!139, !141, !142}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !137, file: !27, line: 44, baseType: !140, size: 32, align: 32)
!140 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !137, file: !27, line: 46, baseType: !103, size: 64, align: 64, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !137, file: !27, line: 48, baseType: !103, size: 64, align: 64, offset: 128)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "verrel", scope: !112, file: !4, line: 69, baseType: !26, size: 32, align: 32, offset: 576)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "arch_is_implicit", scope: !112, file: !4, line: 70, baseType: !145, size: 8, align: 8, offset: 608)
!145 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "cyclebreak", scope: !112, file: !4, line: 71, baseType: !145, size: 8, align: 8, offset: 616)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !108, file: !4, line: 248, baseType: !111, size: 64, align: 64, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "installed_instances", scope: !99, file: !4, line: 250, baseType: !149, size: 32, align: 32, offset: 3328)
!149 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "arch_next", scope: !95, file: !4, line: 197, baseType: !119, size: 64, align: 64, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "want", scope: !95, file: !4, line: 199, baseType: !35, size: 32, align: 32, offset: 128)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "eflag", scope: !95, file: !4, line: 201, baseType: !43, size: 32, align: 32, offset: 160)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !95, file: !4, line: 202, baseType: !47, size: 32, align: 32, offset: 192)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !95, file: !4, line: 203, baseType: !57, size: 32, align: 32, offset: 224)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "otherpriority", scope: !95, file: !4, line: 204, baseType: !103, size: 64, align: 64, offset: 256)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "section", scope: !95, file: !4, line: 205, baseType: !103, size: 64, align: 64, offset: 320)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "configversion", scope: !95, file: !4, line: 206, baseType: !137, size: 192, align: 64, offset: 384)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !95, file: !4, line: 207, baseType: !159, size: 960, align: 64, offset: 576)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgbin", file: !4, line: 107, size: 960, align: 64, elements: !160)
!160 = !{!161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !181}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "depends", scope: !159, file: !4, line: 108, baseType: !115, size: 64, align: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "essential", scope: !159, file: !4, line: 110, baseType: !145, size: 8, align: 8, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "multiarch", scope: !159, file: !4, line: 111, baseType: !67, size: 32, align: 32, offset: 96)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !159, file: !4, line: 112, baseType: !128, size: 64, align: 64, offset: 128)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "pkgname_archqual", scope: !159, file: !4, line: 115, baseType: !103, size: 64, align: 64, offset: 192)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !159, file: !4, line: 116, baseType: !103, size: 64, align: 64, offset: 256)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "maintainer", scope: !159, file: !4, line: 117, baseType: !103, size: 64, align: 64, offset: 320)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !159, file: !4, line: 118, baseType: !103, size: 64, align: 64, offset: 384)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "installedsize", scope: !159, file: !4, line: 119, baseType: !103, size: 64, align: 64, offset: 448)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !159, file: !4, line: 120, baseType: !103, size: 64, align: 64, offset: 512)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "bugs", scope: !159, file: !4, line: 121, baseType: !103, size: 64, align: 64, offset: 576)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !159, file: !4, line: 122, baseType: !137, size: 192, align: 64, offset: 640)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "conffiles", scope: !159, file: !4, line: 123, baseType: !174, size: 64, align: 64, offset: 832)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64, align: 64)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conffile", file: !4, line: 80, size: 256, align: 64, elements: !176)
!176 = !{!177, !178, !179, !180}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !175, file: !4, line: 81, baseType: !174, size: 64, align: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !175, file: !4, line: 82, baseType: !103, size: 64, align: 64, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !175, file: !4, line: 83, baseType: !103, size: 64, align: 64, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "obsolete", scope: !175, file: !4, line: 84, baseType: !145, size: 8, align: 8, offset: 192)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "arbs", scope: !159, file: !4, line: 124, baseType: !182, size: 64, align: 64, offset: 896)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64, align: 64)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arbitraryfield", file: !4, line: 74, size: 192, align: 64, elements: !184)
!184 = !{!185, !186, !187}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !183, file: !4, line: 75, baseType: !182, size: 64, align: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !183, file: !4, line: 76, baseType: !103, size: 64, align: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !183, file: !4, line: 77, baseType: !103, size: 64, align: 64, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !95, file: !4, line: 208, baseType: !159, size: 960, align: 64, offset: 1536)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "clientdata", scope: !95, file: !4, line: 209, baseType: !190, size: 64, align: 64, offset: 2496)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64, align: 64)
!191 = !DICompositeType(tag: DW_TAG_structure_type, name: "perpackagestate", file: !4, line: 151, flags: DIFlagFwdDecl)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "archives", scope: !95, file: !4, line: 211, baseType: !193, size: 64, align: 64, offset: 2560)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64, align: 64)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archivedetails", file: !4, line: 87, size: 320, align: 64, elements: !195)
!195 = !{!196, !197, !198, !199, !200}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !194, file: !4, line: 88, baseType: !193, size: 64, align: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !194, file: !4, line: 89, baseType: !103, size: 64, align: 64, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "msdosname", scope: !194, file: !4, line: 90, baseType: !103, size: 64, align: 64, offset: 128)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !194, file: !4, line: 91, baseType: !103, size: 64, align: 64, offset: 192)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "md5sum", scope: !194, file: !4, line: 92, baseType: !103, size: 64, align: 64, offset: 256)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "trigaw", scope: !95, file: !4, line: 216, baseType: !202, size: 128, align: 64, offset: 2624)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !95, file: !4, line: 213, size: 128, align: 64, elements: !203)
!203 = !{!204, !216}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !202, file: !4, line: 215, baseType: !205, size: 64, align: 64)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64, align: 64)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigaw", file: !4, line: 142, size: 320, align: 64, elements: !207)
!207 = !{!208, !209, !210, !211}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "aw", scope: !206, file: !4, line: 143, baseType: !119, size: 64, align: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "pend", scope: !206, file: !4, line: 143, baseType: !119, size: 64, align: 64, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "samepend_next", scope: !206, file: !4, line: 144, baseType: !205, size: 64, align: 64, offset: 128)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "sameaw", scope: !206, file: !4, line: 147, baseType: !212, size: 128, align: 64, offset: 192)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !206, file: !4, line: 145, size: 128, align: 64, elements: !213)
!213 = !{!214, !215}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !212, file: !4, line: 146, baseType: !205, size: 64, align: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !212, file: !4, line: 146, baseType: !205, size: 64, align: 64, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !202, file: !4, line: 215, baseType: !205, size: 64, align: 64, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "othertrigaw_head", scope: !95, file: !4, line: 219, baseType: !205, size: 64, align: 64, offset: 2752)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "trigpend_head", scope: !95, file: !4, line: 220, baseType: !219, size: 64, align: 64, offset: 2816)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64, align: 64)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigpend", file: !4, line: 134, size: 128, align: 64, elements: !221)
!221 = !{!222, !223}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !220, file: !4, line: 135, baseType: !219, size: 64, align: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !220, file: !4, line: 136, baseType: !103, size: 64, align: 64, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !95, file: !4, line: 231, baseType: !225, size: 64, align: 64, offset: 2880)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64, align: 64)
!226 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode_list", file: !4, line: 231, flags: DIFlagFwdDecl)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_phys_offs", scope: !95, file: !4, line: 232, baseType: !228, size: 64, align: 64, offset: 2944)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !229, line: 86, baseType: !230)
!229 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !231, line: 131, baseType: !232)
!231 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!232 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_valid", scope: !95, file: !4, line: 233, baseType: !145, size: 8, align: 8, offset: 3008)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "status_dirty", scope: !95, file: !4, line: 236, baseType: !145, size: 8, align: 8, offset: 3016)
!235 = !{i32 2, !"Dwarf Version", i32 4}
!236 = !{i32 2, !"Debug Info Version", i32 3}
!237 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!238 = distinct !DISubprogram(name: "varbuf_add_pkgbin_name", scope: !239, file: !239, line: 72, type: !240, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !255)
!239 = !DIFile(filename: "pkg-show.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!240 = !DISubroutineType(types: !241)
!241 = !{null, !242, !93, !253, !73}
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64, align: 64)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varbuf", file: !244, line: 55, size: 192, align: 64, elements: !245)
!244 = !DIFile(filename: "../../lib/dpkg/varbuf.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!245 = !{!246, !250, !251}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !243, file: !244, line: 56, baseType: !247, size: 64, align: 64)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !248, line: 216, baseType: !249)
!248 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!249 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !243, file: !244, line: 56, baseType: !247, size: 64, align: 64, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !243, file: !244, line: 57, baseType: !252, size: 64, align: 64, offset: 128)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !159)
!255 = !{}
!256 = !DILocalVariable(name: "vb", arg: 1, scope: !238, file: !239, line: 72, type: !242)
!257 = !DIExpression()
!258 = !DILocation(line: 72, column: 39, scope: !238)
!259 = !DILocalVariable(name: "pkg", arg: 2, scope: !238, file: !239, line: 73, type: !93)
!260 = !DILocation(line: 73, column: 46, scope: !238)
!261 = !DILocalVariable(name: "pkgbin", arg: 3, scope: !238, file: !239, line: 73, type: !253)
!262 = !DILocation(line: 73, column: 72, scope: !238)
!263 = !DILocalVariable(name: "pnaw", arg: 4, scope: !238, file: !239, line: 74, type: !73)
!264 = !DILocation(line: 74, column: 48, scope: !238)
!265 = !DILocation(line: 76, column: 17, scope: !238)
!266 = !DILocation(line: 76, column: 21, scope: !238)
!267 = !DILocation(line: 76, column: 26, scope: !238)
!268 = !DILocation(line: 76, column: 31, scope: !238)
!269 = !DILocation(line: 76, column: 44, scope: !238)
!270 = !DILocation(line: 76, column: 49, scope: !238)
!271 = !DILocation(line: 76, column: 54, scope: !238)
!272 = !DILocation(line: 76, column: 37, scope: !238)
!273 = !DILocation(line: 76, column: 2, scope: !274)
!274 = !DILexicalBlockFile(scope: !238, file: !239, discriminator: 1)
!275 = !DILocation(line: 77, column: 29, scope: !276)
!276 = distinct !DILexicalBlock(scope: !238, file: !239, line: 77, column: 6)
!277 = !DILocation(line: 77, column: 37, scope: !276)
!278 = !DILocation(line: 77, column: 6, scope: !276)
!279 = !DILocation(line: 77, column: 6, scope: !238)
!280 = !DILocation(line: 78, column: 23, scope: !276)
!281 = !DILocation(line: 78, column: 27, scope: !276)
!282 = !DILocation(line: 78, column: 35, scope: !276)
!283 = !DILocation(line: 78, column: 3, scope: !276)
!284 = !DILocation(line: 79, column: 17, scope: !238)
!285 = !DILocation(line: 79, column: 2, scope: !238)
!286 = !DILocation(line: 80, column: 1, scope: !238)
!287 = distinct !DISubprogram(name: "pkgbin_name_needs_arch", scope: !239, file: !239, line: 34, type: !288, isLocal: true, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !255)
!288 = !DISubroutineType(types: !289)
!289 = !{!145, !253, !73}
!290 = !DILocalVariable(name: "pkgbin", arg: 1, scope: !287, file: !239, line: 34, type: !253)
!291 = !DILocation(line: 34, column: 45, scope: !287)
!292 = !DILocalVariable(name: "pnaw", arg: 2, scope: !287, file: !239, line: 35, type: !73)
!293 = !DILocation(line: 35, column: 48, scope: !287)
!294 = !DILocation(line: 37, column: 6, scope: !295)
!295 = distinct !DILexicalBlock(scope: !287, file: !239, line: 37, column: 6)
!296 = !DILocation(line: 37, column: 14, scope: !295)
!297 = !DILocation(line: 37, column: 20, scope: !295)
!298 = !DILocation(line: 37, column: 25, scope: !295)
!299 = !DILocation(line: 37, column: 43, scope: !295)
!300 = !DILocation(line: 38, column: 6, scope: !295)
!301 = !DILocation(line: 38, column: 14, scope: !295)
!302 = !DILocation(line: 38, column: 20, scope: !295)
!303 = !DILocation(line: 38, column: 25, scope: !295)
!304 = !DILocation(line: 37, column: 6, scope: !305)
!305 = !DILexicalBlockFile(scope: !287, file: !239, discriminator: 1)
!306 = !DILocation(line: 39, column: 3, scope: !295)
!307 = !DILocation(line: 41, column: 10, scope: !287)
!308 = !DILocation(line: 41, column: 2, scope: !287)
!309 = !DILocation(line: 43, column: 3, scope: !310)
!310 = distinct !DILexicalBlock(scope: !287, file: !239, line: 41, column: 16)
!311 = !DILocation(line: 45, column: 7, scope: !312)
!312 = distinct !DILexicalBlock(scope: !310, file: !239, line: 45, column: 7)
!313 = !DILocation(line: 45, column: 15, scope: !312)
!314 = !DILocation(line: 45, column: 25, scope: !312)
!315 = !DILocation(line: 45, column: 7, scope: !310)
!316 = !DILocation(line: 46, column: 4, scope: !312)
!317 = !DILocation(line: 45, column: 28, scope: !318)
!318 = !DILexicalBlockFile(scope: !312, file: !239, discriminator: 1)
!319 = !DILocation(line: 49, column: 7, scope: !320)
!320 = distinct !DILexicalBlock(scope: !310, file: !239, line: 49, column: 7)
!321 = !DILocation(line: 49, column: 15, scope: !320)
!322 = !DILocation(line: 49, column: 21, scope: !320)
!323 = !DILocation(line: 49, column: 26, scope: !320)
!324 = !DILocation(line: 49, column: 46, scope: !320)
!325 = !DILocation(line: 50, column: 7, scope: !320)
!326 = !DILocation(line: 50, column: 15, scope: !320)
!327 = !DILocation(line: 50, column: 21, scope: !320)
!328 = !DILocation(line: 50, column: 26, scope: !320)
!329 = !DILocation(line: 49, column: 7, scope: !330)
!330 = !DILexicalBlockFile(scope: !310, file: !239, discriminator: 1)
!331 = !DILocation(line: 51, column: 4, scope: !320)
!332 = !DILocation(line: 50, column: 29, scope: !333)
!333 = !DILexicalBlockFile(scope: !320, file: !239, discriminator: 1)
!334 = !DILocation(line: 54, column: 3, scope: !310)
!335 = !DILocation(line: 57, column: 2, scope: !287)
!336 = !DILocation(line: 58, column: 1, scope: !287)
!337 = distinct !DISubprogram(name: "pkgbin_name_archqual", scope: !239, file: !239, line: 83, type: !338, isLocal: false, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !255)
!338 = !DISubroutineType(types: !339)
!339 = !{!103, !93, !253}
!340 = !DILocalVariable(name: "pkg", arg: 1, scope: !337, file: !239, line: 83, type: !93)
!341 = !DILocation(line: 83, column: 44, scope: !337)
!342 = !DILocalVariable(name: "pkgbin", arg: 2, scope: !337, file: !239, line: 83, type: !253)
!343 = !DILocation(line: 83, column: 70, scope: !337)
!344 = !DILocalVariable(name: "pkgname", scope: !337, file: !239, line: 85, type: !252)
!345 = !DILocation(line: 85, column: 8, scope: !337)
!346 = !DILocation(line: 87, column: 6, scope: !347)
!347 = distinct !DILexicalBlock(scope: !337, file: !239, line: 87, column: 6)
!348 = !DILocation(line: 87, column: 14, scope: !347)
!349 = !DILocation(line: 87, column: 20, scope: !347)
!350 = !DILocation(line: 87, column: 25, scope: !347)
!351 = !DILocation(line: 87, column: 43, scope: !347)
!352 = !DILocation(line: 88, column: 6, scope: !347)
!353 = !DILocation(line: 88, column: 14, scope: !347)
!354 = !DILocation(line: 88, column: 20, scope: !347)
!355 = !DILocation(line: 88, column: 25, scope: !347)
!356 = !DILocation(line: 87, column: 6, scope: !357)
!357 = !DILexicalBlockFile(scope: !337, file: !239, discriminator: 1)
!358 = !DILocation(line: 89, column: 10, scope: !347)
!359 = !DILocation(line: 89, column: 15, scope: !347)
!360 = !DILocation(line: 89, column: 20, scope: !347)
!361 = !DILocation(line: 89, column: 3, scope: !347)
!362 = !DILocation(line: 91, column: 28, scope: !337)
!363 = !DILocation(line: 91, column: 33, scope: !337)
!364 = !DILocation(line: 91, column: 38, scope: !337)
!365 = !DILocation(line: 91, column: 21, scope: !337)
!366 = !DILocation(line: 91, column: 44, scope: !337)
!367 = !DILocation(line: 92, column: 28, scope: !337)
!368 = !DILocation(line: 92, column: 36, scope: !337)
!369 = !DILocation(line: 92, column: 42, scope: !337)
!370 = !DILocation(line: 92, column: 21, scope: !337)
!371 = !DILocation(line: 91, column: 48, scope: !337)
!372 = !DILocation(line: 92, column: 48, scope: !337)
!373 = !DILocation(line: 91, column: 12, scope: !357)
!374 = !DILocation(line: 91, column: 10, scope: !337)
!375 = !DILocation(line: 93, column: 13, scope: !337)
!376 = !DILocation(line: 93, column: 22, scope: !337)
!377 = !DILocation(line: 93, column: 27, scope: !337)
!378 = !DILocation(line: 93, column: 32, scope: !337)
!379 = !DILocation(line: 94, column: 22, scope: !337)
!380 = !DILocation(line: 94, column: 30, scope: !337)
!381 = !DILocation(line: 94, column: 36, scope: !337)
!382 = !DILocation(line: 93, column: 2, scope: !337)
!383 = !DILocation(line: 96, column: 9, scope: !337)
!384 = !DILocation(line: 96, column: 2, scope: !337)
!385 = !DILocation(line: 97, column: 1, scope: !337)
!386 = distinct !DISubprogram(name: "pkgbin_name_const", scope: !239, file: !239, line: 120, type: !387, isLocal: false, isDefinition: true, scopeLine: 122, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !255)
!387 = !DISubroutineType(types: !388)
!388 = !{!103, !93, !253, !73}
!389 = !DILocalVariable(name: "pkg", arg: 1, scope: !386, file: !239, line: 120, type: !93)
!390 = !DILocation(line: 120, column: 41, scope: !386)
!391 = !DILocalVariable(name: "pkgbin", arg: 2, scope: !386, file: !239, line: 120, type: !253)
!392 = !DILocation(line: 120, column: 67, scope: !386)
!393 = !DILocalVariable(name: "pnaw", arg: 3, scope: !386, file: !239, line: 121, type: !73)
!394 = !DILocation(line: 121, column: 37, scope: !386)
!395 = !DILocation(line: 123, column: 30, scope: !396)
!396 = distinct !DILexicalBlock(scope: !386, file: !239, line: 123, column: 6)
!397 = !DILocation(line: 123, column: 38, scope: !396)
!398 = !DILocation(line: 123, column: 7, scope: !396)
!399 = !DILocation(line: 123, column: 6, scope: !386)
!400 = !DILocation(line: 124, column: 10, scope: !396)
!401 = !DILocation(line: 124, column: 15, scope: !396)
!402 = !DILocation(line: 124, column: 20, scope: !396)
!403 = !DILocation(line: 124, column: 3, scope: !396)
!404 = !DILocation(line: 129, column: 6, scope: !405)
!405 = distinct !DILexicalBlock(scope: !386, file: !239, line: 129, column: 6)
!406 = !DILocation(line: 129, column: 14, scope: !405)
!407 = !DILocation(line: 129, column: 31, scope: !405)
!408 = !DILocation(line: 129, column: 6, scope: !386)
!409 = !DILocation(line: 130, column: 31, scope: !405)
!410 = !DILocation(line: 130, column: 36, scope: !405)
!411 = !DILocation(line: 130, column: 10, scope: !405)
!412 = !DILocation(line: 130, column: 3, scope: !405)
!413 = !DILocation(line: 132, column: 9, scope: !386)
!414 = !DILocation(line: 132, column: 17, scope: !386)
!415 = !DILocation(line: 132, column: 2, scope: !386)
!416 = !DILocation(line: 133, column: 1, scope: !386)
!417 = distinct !DISubprogram(name: "pkg_name_const", scope: !239, file: !239, line: 146, type: !418, isLocal: false, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !255)
!418 = !DISubroutineType(types: !419)
!419 = !{!103, !93, !73}
!420 = !DILocalVariable(name: "pkg", arg: 1, scope: !417, file: !239, line: 146, type: !93)
!421 = !DILocation(line: 146, column: 38, scope: !417)
!422 = !DILocalVariable(name: "pnaw", arg: 2, scope: !417, file: !239, line: 146, type: !73)
!423 = !DILocation(line: 146, column: 67, scope: !417)
!424 = !DILocation(line: 148, column: 27, scope: !417)
!425 = !DILocation(line: 148, column: 33, scope: !417)
!426 = !DILocation(line: 148, column: 38, scope: !417)
!427 = !DILocation(line: 148, column: 49, scope: !417)
!428 = !DILocation(line: 148, column: 9, scope: !417)
!429 = !DILocation(line: 148, column: 2, scope: !417)
!430 = distinct !DISubprogram(name: "pkgbin_name", scope: !239, file: !239, line: 168, type: !431, isLocal: false, isDefinition: true, scopeLine: 170, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !255)
!431 = !DISubroutineType(types: !432)
!432 = !{!103, !119, !433, !73}
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64, align: 64)
!434 = !DILocalVariable(name: "pkg", arg: 1, scope: !430, file: !239, line: 168, type: !119)
!435 = !DILocation(line: 168, column: 29, scope: !430)
!436 = !DILocalVariable(name: "pkgbin", arg: 2, scope: !430, file: !239, line: 168, type: !433)
!437 = !DILocation(line: 168, column: 49, scope: !430)
!438 = !DILocalVariable(name: "pnaw", arg: 3, scope: !430, file: !239, line: 169, type: !73)
!439 = !DILocation(line: 169, column: 37, scope: !430)
!440 = !DILocation(line: 171, column: 30, scope: !441)
!441 = distinct !DILexicalBlock(scope: !430, file: !239, line: 171, column: 6)
!442 = !DILocation(line: 171, column: 38, scope: !441)
!443 = !DILocation(line: 171, column: 7, scope: !441)
!444 = !DILocation(line: 171, column: 6, scope: !430)
!445 = !DILocation(line: 172, column: 10, scope: !441)
!446 = !DILocation(line: 172, column: 15, scope: !441)
!447 = !DILocation(line: 172, column: 20, scope: !441)
!448 = !DILocation(line: 172, column: 3, scope: !441)
!449 = !DILocation(line: 175, column: 6, scope: !450)
!450 = distinct !DILexicalBlock(scope: !430, file: !239, line: 175, column: 6)
!451 = !DILocation(line: 175, column: 14, scope: !450)
!452 = !DILocation(line: 175, column: 31, scope: !450)
!453 = !DILocation(line: 175, column: 6, scope: !430)
!454 = !DILocation(line: 176, column: 51, scope: !450)
!455 = !DILocation(line: 176, column: 56, scope: !450)
!456 = !DILocation(line: 176, column: 30, scope: !450)
!457 = !DILocation(line: 176, column: 3, scope: !450)
!458 = !DILocation(line: 176, column: 11, scope: !450)
!459 = !DILocation(line: 176, column: 28, scope: !450)
!460 = !DILocation(line: 178, column: 9, scope: !430)
!461 = !DILocation(line: 178, column: 17, scope: !430)
!462 = !DILocation(line: 178, column: 2, scope: !430)
!463 = !DILocation(line: 179, column: 1, scope: !430)
!464 = distinct !DISubprogram(name: "pkg_name", scope: !239, file: !239, line: 192, type: !465, isLocal: false, isDefinition: true, scopeLine: 193, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !255)
!465 = !DISubroutineType(types: !466)
!466 = !{!103, !119, !73}
!467 = !DILocalVariable(name: "pkg", arg: 1, scope: !464, file: !239, line: 192, type: !119)
!468 = !DILocation(line: 192, column: 26, scope: !464)
!469 = !DILocalVariable(name: "pnaw", arg: 2, scope: !464, file: !239, line: 192, type: !73)
!470 = !DILocation(line: 192, column: 55, scope: !464)
!471 = !DILocation(line: 194, column: 21, scope: !464)
!472 = !DILocation(line: 194, column: 27, scope: !464)
!473 = !DILocation(line: 194, column: 32, scope: !464)
!474 = !DILocation(line: 194, column: 43, scope: !464)
!475 = !DILocation(line: 194, column: 9, scope: !464)
!476 = !DILocation(line: 194, column: 2, scope: !464)
!477 = distinct !DISubprogram(name: "pkgbin_synopsis", scope: !239, file: !239, line: 213, type: !478, isLocal: false, isDefinition: true, scopeLine: 214, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !255)
!478 = !DISubroutineType(types: !479)
!479 = !{!103, !93, !253, !480}
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64, align: 64)
!481 = !DILocalVariable(name: "pkg", arg: 1, scope: !477, file: !239, line: 213, type: !93)
!482 = !DILocation(line: 213, column: 39, scope: !477)
!483 = !DILocalVariable(name: "pkgbin", arg: 2, scope: !477, file: !239, line: 213, type: !253)
!484 = !DILocation(line: 213, column: 65, scope: !477)
!485 = !DILocalVariable(name: "len", arg: 3, scope: !477, file: !239, line: 213, type: !480)
!486 = !DILocation(line: 213, column: 78, scope: !477)
!487 = !DILocalVariable(name: "pdesc", scope: !477, file: !239, line: 215, type: !103)
!488 = !DILocation(line: 215, column: 14, scope: !477)
!489 = !DILocation(line: 217, column: 10, scope: !477)
!490 = !DILocation(line: 217, column: 18, scope: !477)
!491 = !DILocation(line: 217, column: 8, scope: !477)
!492 = !DILocation(line: 218, column: 7, scope: !493)
!493 = distinct !DILexicalBlock(scope: !477, file: !239, line: 218, column: 6)
!494 = !DILocation(line: 218, column: 6, scope: !477)
!495 = !DILocation(line: 219, column: 10, scope: !493)
!496 = !DILocation(line: 219, column: 9, scope: !493)
!497 = !DILocation(line: 219, column: 3, scope: !493)
!498 = !DILocation(line: 221, column: 17, scope: !477)
!499 = !DILocation(line: 221, column: 9, scope: !477)
!500 = !DILocation(line: 221, column: 3, scope: !477)
!501 = !DILocation(line: 221, column: 7, scope: !477)
!502 = !DILocation(line: 223, column: 9, scope: !477)
!503 = !DILocation(line: 223, column: 2, scope: !477)
!504 = distinct !DISubprogram(name: "pkg_abbrev_want", scope: !239, file: !239, line: 234, type: !505, isLocal: false, isDefinition: true, scopeLine: 235, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !255)
!505 = !DISubroutineType(types: !506)
!506 = !{!149, !93}
!507 = !DILocalVariable(name: "pkg", arg: 1, scope: !504, file: !239, line: 234, type: !93)
!508 = !DILocation(line: 234, column: 39, scope: !504)
!509 = !DILocation(line: 236, column: 17, scope: !504)
!510 = !DILocation(line: 236, column: 22, scope: !504)
!511 = !DILocation(line: 236, column: 9, scope: !504)
!512 = !DILocation(line: 236, column: 2, scope: !504)
!513 = distinct !DISubprogram(name: "pkg_abbrev_status", scope: !239, file: !239, line: 247, type: !505, isLocal: false, isDefinition: true, scopeLine: 248, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !255)
!514 = !DILocalVariable(name: "pkg", arg: 1, scope: !513, file: !239, line: 247, type: !93)
!515 = !DILocation(line: 247, column: 41, scope: !513)
!516 = !DILocation(line: 249, column: 20, scope: !513)
!517 = !DILocation(line: 249, column: 25, scope: !513)
!518 = !DILocation(line: 249, column: 9, scope: !513)
!519 = !DILocation(line: 249, column: 2, scope: !513)
!520 = distinct !DISubprogram(name: "pkg_abbrev_eflag", scope: !239, file: !239, line: 260, type: !505, isLocal: false, isDefinition: true, scopeLine: 261, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !255)
!521 = !DILocalVariable(name: "pkg", arg: 1, scope: !520, file: !239, line: 260, type: !93)
!522 = !DILocation(line: 260, column: 40, scope: !520)
!523 = !DILocation(line: 262, column: 14, scope: !520)
!524 = !DILocation(line: 262, column: 19, scope: !520)
!525 = !DILocation(line: 262, column: 9, scope: !520)
!526 = !DILocation(line: 262, column: 2, scope: !520)
!527 = distinct !DISubprogram(name: "pkg_want_name", scope: !239, file: !239, line: 273, type: !528, isLocal: false, isDefinition: true, scopeLine: 274, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !255)
!528 = !DISubroutineType(types: !529)
!529 = !{!103, !93}
!530 = !DILocalVariable(name: "pkg", arg: 1, scope: !527, file: !239, line: 273, type: !93)
!531 = !DILocation(line: 273, column: 37, scope: !527)
!532 = !DILocation(line: 275, column: 19, scope: !527)
!533 = !DILocation(line: 275, column: 24, scope: !527)
!534 = !DILocation(line: 275, column: 9, scope: !527)
!535 = !DILocation(line: 275, column: 30, scope: !527)
!536 = !DILocation(line: 275, column: 2, scope: !527)
!537 = distinct !DISubprogram(name: "pkg_eflag_name", scope: !239, file: !239, line: 286, type: !528, isLocal: false, isDefinition: true, scopeLine: 287, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !255)
!538 = !DILocalVariable(name: "pkg", arg: 1, scope: !537, file: !239, line: 286, type: !93)
!539 = !DILocation(line: 286, column: 38, scope: !537)
!540 = !DILocation(line: 288, column: 20, scope: !537)
!541 = !DILocation(line: 288, column: 25, scope: !537)
!542 = !DILocation(line: 288, column: 9, scope: !537)
!543 = !DILocation(line: 288, column: 32, scope: !537)
!544 = !DILocation(line: 288, column: 2, scope: !537)
!545 = distinct !DISubprogram(name: "pkg_status_name", scope: !239, file: !239, line: 299, type: !528, isLocal: false, isDefinition: true, scopeLine: 300, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !255)
!546 = !DILocalVariable(name: "pkg", arg: 1, scope: !545, file: !239, line: 299, type: !93)
!547 = !DILocation(line: 299, column: 39, scope: !545)
!548 = !DILocation(line: 301, column: 21, scope: !545)
!549 = !DILocation(line: 301, column: 26, scope: !545)
!550 = !DILocation(line: 301, column: 9, scope: !545)
!551 = !DILocation(line: 301, column: 34, scope: !545)
!552 = !DILocation(line: 301, column: 2, scope: !545)
!553 = distinct !DISubprogram(name: "pkg_priority_name", scope: !239, file: !239, line: 312, type: !528, isLocal: false, isDefinition: true, scopeLine: 313, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !255)
!554 = !DILocalVariable(name: "pkg", arg: 1, scope: !553, file: !239, line: 312, type: !93)
!555 = !DILocation(line: 312, column: 41, scope: !553)
!556 = !DILocation(line: 314, column: 6, scope: !557)
!557 = distinct !DILexicalBlock(scope: !553, file: !239, line: 314, column: 6)
!558 = !DILocation(line: 314, column: 11, scope: !557)
!559 = !DILocation(line: 314, column: 20, scope: !557)
!560 = !DILocation(line: 314, column: 6, scope: !553)
!561 = !DILocation(line: 315, column: 10, scope: !557)
!562 = !DILocation(line: 315, column: 15, scope: !557)
!563 = !DILocation(line: 315, column: 3, scope: !557)
!564 = !DILocation(line: 317, column: 24, scope: !557)
!565 = !DILocation(line: 317, column: 29, scope: !557)
!566 = !DILocation(line: 317, column: 10, scope: !557)
!567 = !DILocation(line: 317, column: 39, scope: !557)
!568 = !DILocation(line: 317, column: 3, scope: !557)
!569 = !DILocation(line: 318, column: 1, scope: !553)
!570 = distinct !DISubprogram(name: "pkg_sorter_by_nonambig_name_arch", scope: !239, file: !239, line: 332, type: !571, isLocal: false, isDefinition: true, scopeLine: 333, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !255)
!571 = !DISubroutineType(types: !572)
!572 = !{!149, !573, !573}
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64, align: 64)
!574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!575 = !DILocalVariable(name: "a", arg: 1, scope: !570, file: !239, line: 332, type: !573)
!576 = !DILocation(line: 332, column: 46, scope: !570)
!577 = !DILocalVariable(name: "b", arg: 2, scope: !570, file: !239, line: 332, type: !573)
!578 = !DILocation(line: 332, column: 61, scope: !570)
!579 = !DILocalVariable(name: "pa", scope: !570, file: !239, line: 334, type: !93)
!580 = !DILocation(line: 334, column: 24, scope: !570)
!581 = !DILocation(line: 334, column: 55, scope: !570)
!582 = !DILocation(line: 334, column: 30, scope: !570)
!583 = !DILocation(line: 334, column: 29, scope: !570)
!584 = !DILocalVariable(name: "pb", scope: !570, file: !239, line: 335, type: !93)
!585 = !DILocation(line: 335, column: 24, scope: !570)
!586 = !DILocation(line: 335, column: 55, scope: !570)
!587 = !DILocation(line: 335, column: 30, scope: !570)
!588 = !DILocation(line: 335, column: 29, scope: !570)
!589 = !DILocalVariable(name: "pbina", scope: !570, file: !239, line: 336, type: !253)
!590 = !DILocation(line: 336, column: 23, scope: !570)
!591 = !DILocation(line: 336, column: 32, scope: !570)
!592 = !DILocation(line: 336, column: 36, scope: !570)
!593 = !DILocalVariable(name: "pbinb", scope: !570, file: !239, line: 337, type: !253)
!594 = !DILocation(line: 337, column: 23, scope: !570)
!595 = !DILocation(line: 337, column: 32, scope: !570)
!596 = !DILocation(line: 337, column: 36, scope: !570)
!597 = !DILocalVariable(name: "res", scope: !570, file: !239, line: 338, type: !149)
!598 = !DILocation(line: 338, column: 6, scope: !570)
!599 = !DILocation(line: 340, column: 15, scope: !570)
!600 = !DILocation(line: 340, column: 19, scope: !570)
!601 = !DILocation(line: 340, column: 24, scope: !570)
!602 = !DILocation(line: 340, column: 30, scope: !570)
!603 = !DILocation(line: 340, column: 34, scope: !570)
!604 = !DILocation(line: 340, column: 39, scope: !570)
!605 = !DILocation(line: 340, column: 8, scope: !570)
!606 = !DILocation(line: 340, column: 6, scope: !570)
!607 = !DILocation(line: 341, column: 6, scope: !608)
!608 = distinct !DILexicalBlock(scope: !570, file: !239, line: 341, column: 6)
!609 = !DILocation(line: 341, column: 6, scope: !570)
!610 = !DILocation(line: 342, column: 10, scope: !608)
!611 = !DILocation(line: 342, column: 3, scope: !608)
!612 = !DILocation(line: 344, column: 6, scope: !613)
!613 = distinct !DILexicalBlock(scope: !570, file: !239, line: 344, column: 6)
!614 = !DILocation(line: 344, column: 13, scope: !613)
!615 = !DILocation(line: 344, column: 21, scope: !613)
!616 = !DILocation(line: 344, column: 28, scope: !613)
!617 = !DILocation(line: 344, column: 18, scope: !613)
!618 = !DILocation(line: 344, column: 6, scope: !570)
!619 = !DILocation(line: 345, column: 3, scope: !613)
!620 = !DILocation(line: 347, column: 29, scope: !621)
!621 = distinct !DILexicalBlock(scope: !570, file: !239, line: 347, column: 6)
!622 = !DILocation(line: 347, column: 6, scope: !621)
!623 = !DILocation(line: 347, column: 6, scope: !570)
!624 = !DILocation(line: 348, column: 30, scope: !625)
!625 = distinct !DILexicalBlock(scope: !626, file: !239, line: 348, column: 7)
!626 = distinct !DILexicalBlock(scope: !621, file: !239, line: 347, column: 52)
!627 = !DILocation(line: 348, column: 7, scope: !625)
!628 = !DILocation(line: 348, column: 7, scope: !626)
!629 = !DILocation(line: 349, column: 18, scope: !625)
!630 = !DILocation(line: 349, column: 25, scope: !625)
!631 = !DILocation(line: 349, column: 31, scope: !625)
!632 = !DILocation(line: 349, column: 37, scope: !625)
!633 = !DILocation(line: 349, column: 44, scope: !625)
!634 = !DILocation(line: 349, column: 50, scope: !625)
!635 = !DILocation(line: 349, column: 11, scope: !625)
!636 = !DILocation(line: 349, column: 4, scope: !625)
!637 = !DILocation(line: 351, column: 4, scope: !625)
!638 = !DILocation(line: 353, column: 3, scope: !639)
!639 = distinct !DILexicalBlock(scope: !621, file: !239, line: 352, column: 9)
!640 = !DILocation(line: 355, column: 1, scope: !570)
!641 = distinct !DISubprogram(name: "varbuf_add_source_version", scope: !239, file: !239, line: 369, type: !642, isLocal: false, isDefinition: true, scopeLine: 371, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !255)
!642 = !DISubroutineType(types: !643)
!643 = !{null, !242, !93, !253}
!644 = !DILocalVariable(name: "vb", arg: 1, scope: !641, file: !239, line: 369, type: !242)
!645 = !DILocation(line: 369, column: 42, scope: !641)
!646 = !DILocalVariable(name: "pkg", arg: 2, scope: !641, file: !239, line: 370, type: !93)
!647 = !DILocation(line: 370, column: 49, scope: !641)
!648 = !DILocalVariable(name: "pkgbin", arg: 3, scope: !641, file: !239, line: 370, type: !253)
!649 = !DILocation(line: 370, column: 75, scope: !641)
!650 = !DILocalVariable(name: "version", scope: !641, file: !239, line: 372, type: !103)
!651 = !DILocation(line: 372, column: 14, scope: !641)
!652 = !DILocalVariable(name: "len", scope: !641, file: !239, line: 373, type: !247)
!653 = !DILocation(line: 373, column: 9, scope: !641)
!654 = !DILocation(line: 375, column: 6, scope: !655)
!655 = distinct !DILexicalBlock(scope: !641, file: !239, line: 375, column: 6)
!656 = !DILocation(line: 375, column: 14, scope: !655)
!657 = !DILocation(line: 375, column: 6, scope: !641)
!658 = !DILocation(line: 376, column: 20, scope: !655)
!659 = !DILocation(line: 376, column: 28, scope: !655)
!660 = !DILocation(line: 376, column: 13, scope: !655)
!661 = !DILocation(line: 376, column: 11, scope: !655)
!662 = !DILocation(line: 376, column: 3, scope: !655)
!663 = !DILocation(line: 378, column: 11, scope: !655)
!664 = !DILocation(line: 380, column: 6, scope: !665)
!665 = distinct !DILexicalBlock(scope: !641, file: !239, line: 380, column: 6)
!666 = !DILocation(line: 380, column: 14, scope: !665)
!667 = !DILocation(line: 380, column: 6, scope: !641)
!668 = !DILocation(line: 381, column: 17, scope: !669)
!669 = distinct !DILexicalBlock(scope: !665, file: !239, line: 380, column: 22)
!670 = !DILocation(line: 381, column: 22, scope: !669)
!671 = !DILocation(line: 381, column: 30, scope: !669)
!672 = !DILocation(line: 381, column: 3, scope: !669)
!673 = !DILocation(line: 382, column: 2, scope: !669)
!674 = !DILocation(line: 383, column: 10, scope: !675)
!675 = distinct !DILexicalBlock(scope: !665, file: !239, line: 382, column: 9)
!676 = !DILocation(line: 385, column: 17, scope: !675)
!677 = !DILocation(line: 385, column: 9, scope: !675)
!678 = !DILocation(line: 385, column: 7, scope: !675)
!679 = !DILocation(line: 387, column: 18, scope: !675)
!680 = !DILocation(line: 387, column: 22, scope: !675)
!681 = !DILocation(line: 387, column: 31, scope: !675)
!682 = !DILocation(line: 387, column: 3, scope: !675)
!683 = !DILocation(line: 389, column: 1, scope: !641)
!684 = distinct !DISubprogram(name: "pkg_source_version", scope: !239, file: !239, line: 392, type: !685, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !255)
!685 = !DISubroutineType(types: !686)
!686 = !{null, !687, !93, !253}
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64, align: 64)
!688 = !DILocalVariable(name: "version", arg: 1, scope: !684, file: !239, line: 392, type: !687)
!689 = !DILocation(line: 392, column: 41, scope: !684)
!690 = !DILocalVariable(name: "pkg", arg: 2, scope: !684, file: !239, line: 393, type: !93)
!691 = !DILocation(line: 393, column: 42, scope: !684)
!692 = !DILocalVariable(name: "pkgbin", arg: 3, scope: !684, file: !239, line: 393, type: !253)
!693 = !DILocation(line: 393, column: 68, scope: !684)
!694 = !DILocalVariable(name: "err", scope: !684, file: !239, line: 395, type: !695)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_error", file: !85, line: 42, size: 128, align: 64, elements: !696)
!696 = !{!697, !698, !699}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !695, file: !85, line: 43, baseType: !84, size: 32, align: 32)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "syserrno", scope: !695, file: !85, line: 45, baseType: !149, size: 32, align: 32, offset: 32)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !695, file: !85, line: 46, baseType: !252, size: 64, align: 64, offset: 64)
!700 = !DILocation(line: 395, column: 20, scope: !684)
!701 = !DILocalVariable(name: "vb", scope: !684, file: !239, line: 396, type: !243)
!702 = !DILocation(line: 396, column: 16, scope: !684)
!703 = !DILocation(line: 398, column: 33, scope: !684)
!704 = !DILocation(line: 398, column: 38, scope: !684)
!705 = !DILocation(line: 398, column: 2, scope: !684)
!706 = !DILocation(line: 399, column: 2, scope: !684)
!707 = !DILocation(line: 401, column: 19, scope: !708)
!708 = distinct !DILexicalBlock(scope: !684, file: !239, line: 401, column: 6)
!709 = !DILocation(line: 401, column: 31, scope: !708)
!710 = !DILocation(line: 401, column: 6, scope: !708)
!711 = !DILocation(line: 401, column: 42, scope: !708)
!712 = !DILocation(line: 401, column: 6, scope: !684)
!713 = !DILocation(line: 402, column: 9, scope: !708)
!714 = !DILocation(line: 402, column: 50, scope: !708)
!715 = !DILocation(line: 402, column: 59, scope: !708)
!716 = !DILocation(line: 402, column: 3, scope: !717)
!717 = !DILexicalBlockFile(scope: !708, file: !239, discriminator: 1)
!718 = !DILocation(line: 402, column: 3, scope: !708)
!719 = !DILocation(line: 403, column: 1, scope: !684)
