; ModuleID = './[inter]lib--dpkg--pkg-hash.o.i'
source_filename = "./[inter]lib--dpkg--pkg-hash.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct.fsys_namenode_list = type opaque
%struct.anon.1 = type { %struct.deppossi*, %struct.deppossi* }
%struct.pkg_hash_iter = type { %struct.pkginfo*, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@bins = internal global [65521 x %struct.pkgset*] zeroinitializer, align 16
@nset = internal global i32 0, align 4
@npkg = internal global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"pkg-hash.c\00", align 1
@__func__.pkg_hash_get_singleton = private unnamed_addr constant [23 x i8] c"pkg_hash_get_singleton\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"pkgset '%s' should have one installed instance\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"dpkg\00", align 1
@.str.3 = private unnamed_addr constant [66 x i8] c"ambiguous package name '%s' with more than one installed instance\00", align 1
@__func__.pkg_hash_get_pkg = private unnamed_addr constant [17 x i8] c"pkg_hash_get_pkg\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"arch argument is NULL\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"arch argument is none\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"pkg-hash: bin %5d has %7d\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"pkg-hash: size %7d occurs %5d times\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"pkg-hash: bins empty %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"pkg-hash: bins used %d (collided %d)\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"<hash report>\00", align 1

; Function Attrs: nounwind uwtable
define %struct.pkgset* @pkg_hash_find_set(i8*) #0 !dbg !238 {
  %2 = alloca %struct.pkgset*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.pkgset**, align 8
  %5 = alloca %struct.pkgset*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !242, metadata !243), !dbg !244
  call void @llvm.dbg.declare(metadata %struct.pkgset*** %4, metadata !245, metadata !243), !dbg !247
  call void @llvm.dbg.declare(metadata %struct.pkgset** %5, metadata !248, metadata !243), !dbg !249
  call void @llvm.dbg.declare(metadata i8** %6, metadata !250, metadata !243), !dbg !252
  %8 = load i8*, i8** %3, align 8, !dbg !253
  %9 = call i8* @m_strdup(i8* %8), !dbg !254
  store i8* %9, i8** %6, align 8, !dbg !252
  call void @llvm.dbg.declare(metadata i8** %7, metadata !255, metadata !243), !dbg !256
  %10 = load i8*, i8** %6, align 8, !dbg !257
  store i8* %10, i8** %7, align 8, !dbg !258
  br label %11, !dbg !259

; <label>:11:                                     ; preds = %15, %1
  %12 = load i8*, i8** %7, align 8, !dbg !260
  %13 = load i8, i8* %12, align 1, !dbg !262
  %14 = icmp ne i8 %13, 0, !dbg !263
  br i1 %14, label %15, label %24, !dbg !263

; <label>:15:                                     ; preds = %11
  %16 = load i8*, i8** %7, align 8, !dbg !264
  %17 = load i8, i8* %16, align 1, !dbg !266
  %18 = sext i8 %17 to i32, !dbg !266
  %19 = call i32 @c_tolower(i32 %18), !dbg !267
  %20 = trunc i32 %19 to i8, !dbg !267
  %21 = load i8*, i8** %7, align 8, !dbg !268
  store i8 %20, i8* %21, align 1, !dbg !269
  %22 = load i8*, i8** %7, align 8, !dbg !270
  %23 = getelementptr inbounds i8, i8* %22, i32 1, !dbg !270
  store i8* %23, i8** %7, align 8, !dbg !270
  br label %11, !dbg !271, !llvm.loop !273

; <label>:24:                                     ; preds = %11
  %25 = load i8*, i8** %6, align 8, !dbg !274
  %26 = call i32 @str_fnv_hash(i8* %25), !dbg !275
  %27 = urem i32 %26, 65521, !dbg !276
  %28 = zext i32 %27 to i64, !dbg !277
  %29 = getelementptr inbounds %struct.pkgset*, %struct.pkgset** getelementptr inbounds ([65521 x %struct.pkgset*], [65521 x %struct.pkgset*]* @bins, i32 0, i32 0), i64 %28, !dbg !277
  store %struct.pkgset** %29, %struct.pkgset*** %4, align 8, !dbg !278
  br label %30, !dbg !279

; <label>:30:                                     ; preds = %44, %24
  %31 = load %struct.pkgset**, %struct.pkgset*** %4, align 8, !dbg !280
  %32 = load %struct.pkgset*, %struct.pkgset** %31, align 8, !dbg !281
  %33 = icmp ne %struct.pkgset* %32, null, !dbg !281
  br i1 %33, label %34, label %42, !dbg !282

; <label>:34:                                     ; preds = %30
  %35 = load %struct.pkgset**, %struct.pkgset*** %4, align 8, !dbg !283
  %36 = load %struct.pkgset*, %struct.pkgset** %35, align 8, !dbg !284
  %37 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %36, i32 0, i32 1, !dbg !285
  %38 = load i8*, i8** %37, align 8, !dbg !285
  %39 = load i8*, i8** %6, align 8, !dbg !286
  %40 = call i32 @strcasecmp(i8* %38, i8* %39) #7, !dbg !287
  %41 = icmp ne i32 %40, 0, !dbg !288
  br label %42

; <label>:42:                                     ; preds = %34, %30
  %43 = phi i1 [ false, %30 ], [ %41, %34 ]
  br i1 %43, label %44, label %48, !dbg !289

; <label>:44:                                     ; preds = %42
  %45 = load %struct.pkgset**, %struct.pkgset*** %4, align 8, !dbg !291
  %46 = load %struct.pkgset*, %struct.pkgset** %45, align 8, !dbg !292
  %47 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %46, i32 0, i32 0, !dbg !293
  store %struct.pkgset** %47, %struct.pkgset*** %4, align 8, !dbg !294
  br label %30, !dbg !295, !llvm.loop !297

; <label>:48:                                     ; preds = %42
  %49 = load %struct.pkgset**, %struct.pkgset*** %4, align 8, !dbg !298
  %50 = load %struct.pkgset*, %struct.pkgset** %49, align 8, !dbg !300
  %51 = icmp ne %struct.pkgset* %50, null, !dbg !300
  br i1 %51, label %52, label %56, !dbg !301

; <label>:52:                                     ; preds = %48
  %53 = load i8*, i8** %6, align 8, !dbg !302
  call void @free(i8* %53) #8, !dbg !304
  %54 = load %struct.pkgset**, %struct.pkgset*** %4, align 8, !dbg !305
  %55 = load %struct.pkgset*, %struct.pkgset** %54, align 8, !dbg !306
  store %struct.pkgset* %55, %struct.pkgset** %2, align 8, !dbg !307
  br label %74, !dbg !307

; <label>:56:                                     ; preds = %48
  %57 = call i8* @nfmalloc(i64 424), !dbg !308
  %58 = bitcast i8* %57 to %struct.pkgset*, !dbg !308
  store %struct.pkgset* %58, %struct.pkgset** %5, align 8, !dbg !309
  %59 = load %struct.pkgset*, %struct.pkgset** %5, align 8, !dbg !310
  call void @pkgset_blank(%struct.pkgset* %59), !dbg !311
  %60 = load i8*, i8** %6, align 8, !dbg !312
  %61 = call i8* @nfstrsave(i8* %60), !dbg !313
  %62 = load %struct.pkgset*, %struct.pkgset** %5, align 8, !dbg !314
  %63 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %62, i32 0, i32 1, !dbg !315
  store i8* %61, i8** %63, align 8, !dbg !316
  %64 = load %struct.pkgset*, %struct.pkgset** %5, align 8, !dbg !317
  %65 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %64, i32 0, i32 0, !dbg !318
  store %struct.pkgset* null, %struct.pkgset** %65, align 8, !dbg !319
  %66 = load %struct.pkgset*, %struct.pkgset** %5, align 8, !dbg !320
  %67 = load %struct.pkgset**, %struct.pkgset*** %4, align 8, !dbg !321
  store %struct.pkgset* %66, %struct.pkgset** %67, align 8, !dbg !322
  %68 = load i32, i32* @nset, align 4, !dbg !323
  %69 = add nsw i32 %68, 1, !dbg !323
  store i32 %69, i32* @nset, align 4, !dbg !323
  %70 = load i32, i32* @npkg, align 4, !dbg !324
  %71 = add nsw i32 %70, 1, !dbg !324
  store i32 %71, i32* @npkg, align 4, !dbg !324
  %72 = load i8*, i8** %6, align 8, !dbg !325
  call void @free(i8* %72) #8, !dbg !326
  %73 = load %struct.pkgset*, %struct.pkgset** %5, align 8, !dbg !327
  store %struct.pkgset* %73, %struct.pkgset** %2, align 8, !dbg !328
  br label %74, !dbg !328

; <label>:74:                                     ; preds = %56, %52
  %75 = load %struct.pkgset*, %struct.pkgset** %2, align 8, !dbg !329
  ret %struct.pkgset* %75, !dbg !329
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i8* @m_strdup(i8*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @c_tolower(i32) #3 !dbg !330 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !333, metadata !243), !dbg !334
  %3 = load i32, i32* %2, align 4, !dbg !335
  %4 = call zeroext i1 @c_isupper(i32 %3), !dbg !336
  br i1 %4, label %5, label %11, !dbg !336

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !337
  %7 = trunc i32 %6 to i8, !dbg !339
  %8 = zext i8 %7 to i32, !dbg !339
  %9 = and i32 %8, -33, !dbg !340
  %10 = or i32 %9, 32, !dbg !341
  br label %13, !dbg !342

; <label>:11:                                     ; preds = %1
  %12 = load i32, i32* %2, align 4, !dbg !343
  br label %13, !dbg !345

; <label>:13:                                     ; preds = %11, %5
  %14 = phi i32 [ %10, %5 ], [ %12, %11 ], !dbg !346
  ret i32 %14, !dbg !348
}

declare i32 @str_fnv_hash(i8*) #2

; Function Attrs: nounwind readonly
declare i32 @strcasecmp(i8*, i8*) #4

; Function Attrs: nounwind
declare void @free(i8*) #5

declare i8* @nfmalloc(i64) #2

declare void @pkgset_blank(%struct.pkgset*) #2

declare i8* @nfstrsave(i8*) #2

; Function Attrs: nounwind uwtable
define %struct.pkginfo* @pkg_hash_get_singleton(%struct.pkgset*) #0 !dbg !349 {
  %2 = alloca %struct.pkginfo*, align 8
  %3 = alloca %struct.pkgset*, align 8
  %4 = alloca %struct.pkginfo*, align 8
  %5 = alloca %struct.dpkg_arch*, align 8
  store %struct.pkgset* %0, %struct.pkgset** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgset** %3, metadata !352, metadata !243), !dbg !353
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %4, metadata !354, metadata !243), !dbg !355
  %6 = load %struct.pkgset*, %struct.pkgset** %3, align 8, !dbg !356
  %7 = call i32 @pkgset_installed_instances(%struct.pkgset* %6), !dbg !357
  switch i32 %7, label %60 [
    i32 0, label %8
    i32 1, label %38
  ], !dbg !358

; <label>:8:                                      ; preds = %1
  %9 = load %struct.pkgset*, %struct.pkgset** %3, align 8, !dbg !359
  %10 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %9, i32 0, i32 2, !dbg !362
  store %struct.pkginfo* %10, %struct.pkginfo** %4, align 8, !dbg !363
  br label %11, !dbg !364

; <label>:11:                                     ; preds = %31, %8
  %12 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !365
  %13 = icmp ne %struct.pkginfo* %12, null, !dbg !368
  br i1 %13, label %14, label %35, !dbg !368

; <label>:14:                                     ; preds = %11
  call void @llvm.dbg.declare(metadata %struct.dpkg_arch** %5, metadata !369, metadata !243), !dbg !371
  %15 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !372
  %16 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %15, i32 0, i32 10, !dbg !373
  %17 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %16, i32 0, i32 3, !dbg !374
  %18 = load %struct.dpkg_arch*, %struct.dpkg_arch** %17, align 8, !dbg !374
  store %struct.dpkg_arch* %18, %struct.dpkg_arch** %5, align 8, !dbg !371
  %19 = load %struct.dpkg_arch*, %struct.dpkg_arch** %5, align 8, !dbg !375
  %20 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %19, i32 0, i32 2, !dbg !377
  %21 = load i32, i32* %20, align 8, !dbg !377
  %22 = icmp eq i32 %21, 5, !dbg !378
  br i1 %22, label %28, label %23, !dbg !379

; <label>:23:                                     ; preds = %14
  %24 = load %struct.dpkg_arch*, %struct.dpkg_arch** %5, align 8, !dbg !380
  %25 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %24, i32 0, i32 2, !dbg !382
  %26 = load i32, i32* %25, align 8, !dbg !382
  %27 = icmp eq i32 %26, 4, !dbg !383
  br i1 %27, label %28, label %30, !dbg !384

; <label>:28:                                     ; preds = %23, %14
  %29 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !385
  store %struct.pkginfo* %29, %struct.pkginfo** %2, align 8, !dbg !386
  br label %61, !dbg !386

; <label>:30:                                     ; preds = %23
  br label %31, !dbg !387

; <label>:31:                                     ; preds = %30
  %32 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !388
  %33 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %32, i32 0, i32 1, !dbg !390
  %34 = load %struct.pkginfo*, %struct.pkginfo** %33, align 8, !dbg !390
  store %struct.pkginfo* %34, %struct.pkginfo** %4, align 8, !dbg !391
  br label %11, !dbg !392, !llvm.loop !393

; <label>:35:                                     ; preds = %11
  %36 = load %struct.pkgset*, %struct.pkgset** %3, align 8, !dbg !395
  %37 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %36, i32 0, i32 2, !dbg !396
  store %struct.pkginfo* %37, %struct.pkginfo** %2, align 8, !dbg !397
  br label %61, !dbg !397

; <label>:38:                                     ; preds = %1
  %39 = load %struct.pkgset*, %struct.pkgset** %3, align 8, !dbg !398
  %40 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %39, i32 0, i32 2, !dbg !400
  store %struct.pkginfo* %40, %struct.pkginfo** %4, align 8, !dbg !401
  br label %41, !dbg !402

; <label>:41:                                     ; preds = %52, %38
  %42 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !403
  %43 = icmp ne %struct.pkginfo* %42, null, !dbg !406
  br i1 %43, label %44, label %56, !dbg !406

; <label>:44:                                     ; preds = %41
  %45 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !407
  %46 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %45, i32 0, i32 4, !dbg !410
  %47 = load i32, i32* %46, align 8, !dbg !410
  %48 = icmp ugt i32 %47, 0, !dbg !411
  br i1 %48, label %49, label %51, !dbg !412

; <label>:49:                                     ; preds = %44
  %50 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !413
  store %struct.pkginfo* %50, %struct.pkginfo** %2, align 8, !dbg !414
  br label %61, !dbg !414

; <label>:51:                                     ; preds = %44
  br label %52, !dbg !415

; <label>:52:                                     ; preds = %51
  %53 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !416
  %54 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %53, i32 0, i32 1, !dbg !418
  %55 = load %struct.pkginfo*, %struct.pkginfo** %54, align 8, !dbg !418
  store %struct.pkginfo* %55, %struct.pkginfo** %4, align 8, !dbg !419
  br label %41, !dbg !420, !llvm.loop !421

; <label>:56:                                     ; preds = %41
  %57 = load %struct.pkgset*, %struct.pkgset** %3, align 8, !dbg !423
  %58 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %57, i32 0, i32 1, !dbg !424
  %59 = load i8*, i8** %58, align 8, !dbg !424
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 132, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.pkg_hash_get_singleton, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i32 0, i32 0), i8* %59) #9, !dbg !425
  unreachable, !dbg !425

; <label>:60:                                     ; preds = %1
  store %struct.pkginfo* null, %struct.pkginfo** %2, align 8, !dbg !426
  br label %61, !dbg !426

; <label>:61:                                     ; preds = %60, %49, %35, %28
  %62 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !427
  ret %struct.pkginfo* %62, !dbg !427
}

declare i32 @pkgset_installed_instances(%struct.pkgset*) #2

; Function Attrs: noreturn
declare void @do_internerr(i8*, i32, i8*, i8*, ...) #6

; Function Attrs: nounwind uwtable
define %struct.pkginfo* @pkg_hash_find_singleton(i8*) #0 !dbg !428 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pkgset*, align 8
  %4 = alloca %struct.pkginfo*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !431, metadata !243), !dbg !432
  call void @llvm.dbg.declare(metadata %struct.pkgset** %3, metadata !433, metadata !243), !dbg !434
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %4, metadata !435, metadata !243), !dbg !436
  %5 = load i8*, i8** %2, align 8, !dbg !437
  %6 = call %struct.pkgset* @pkg_hash_find_set(i8* %5), !dbg !438
  store %struct.pkgset* %6, %struct.pkgset** %3, align 8, !dbg !439
  %7 = load %struct.pkgset*, %struct.pkgset** %3, align 8, !dbg !440
  %8 = call %struct.pkginfo* @pkg_hash_get_singleton(%struct.pkgset* %7), !dbg !441
  store %struct.pkginfo* %8, %struct.pkginfo** %4, align 8, !dbg !442
  %9 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !443
  %10 = icmp eq %struct.pkginfo* %9, null, !dbg !445
  br i1 %10, label %11, label %16, !dbg !446

; <label>:11:                                     ; preds = %1
  %12 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i32 0, i32 0)) #8, !dbg !447
  %13 = load %struct.pkgset*, %struct.pkgset** %3, align 8, !dbg !448
  %14 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %13, i32 0, i32 1, !dbg !449
  %15 = load i8*, i8** %14, align 8, !dbg !449
  call void (i8*, ...) @ohshit(i8* %12, i8* %15) #9, !dbg !450
  unreachable, !dbg !452

; <label>:16:                                     ; preds = %1
  %17 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !453
  ret %struct.pkginfo* %17, !dbg !454
}

; Function Attrs: noreturn
declare void @ohshit(i8*, ...) #6

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #5

; Function Attrs: nounwind uwtable
define %struct.pkginfo* @pkg_hash_get_pkg(%struct.pkgset*, %struct.dpkg_arch*) #0 !dbg !455 {
  %3 = alloca %struct.pkginfo*, align 8
  %4 = alloca %struct.pkgset*, align 8
  %5 = alloca %struct.dpkg_arch*, align 8
  %6 = alloca %struct.pkginfo*, align 8
  %7 = alloca %struct.pkginfo**, align 8
  store %struct.pkgset* %0, %struct.pkgset** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgset** %4, metadata !458, metadata !243), !dbg !459
  store %struct.dpkg_arch* %1, %struct.dpkg_arch** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.dpkg_arch** %5, metadata !460, metadata !243), !dbg !461
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %6, metadata !462, metadata !243), !dbg !463
  call void @llvm.dbg.declare(metadata %struct.pkginfo*** %7, metadata !464, metadata !243), !dbg !466
  %8 = load %struct.dpkg_arch*, %struct.dpkg_arch** %5, align 8, !dbg !467
  %9 = icmp eq %struct.dpkg_arch* %8, null, !dbg !469
  br i1 %9, label %10, label %11, !dbg !470

; <label>:10:                                     ; preds = %2
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 179, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.pkg_hash_get_pkg, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0)) #9, !dbg !471
  unreachable, !dbg !471

; <label>:11:                                     ; preds = %2
  %12 = load %struct.dpkg_arch*, %struct.dpkg_arch** %5, align 8, !dbg !472
  %13 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %12, i32 0, i32 2, !dbg !474
  %14 = load i32, i32* %13, align 8, !dbg !474
  %15 = icmp eq i32 %14, 0, !dbg !475
  br i1 %15, label %16, label %17, !dbg !476

; <label>:16:                                     ; preds = %11
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 181, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.pkg_hash_get_pkg, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0)) #9, !dbg !477
  unreachable, !dbg !477

; <label>:17:                                     ; preds = %11
  %18 = load %struct.pkgset*, %struct.pkgset** %4, align 8, !dbg !478
  %19 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %18, i32 0, i32 2, !dbg !479
  store %struct.pkginfo* %19, %struct.pkginfo** %6, align 8, !dbg !480
  %20 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !481
  %21 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %20, i32 0, i32 9, !dbg !483
  %22 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %21, i32 0, i32 3, !dbg !484
  %23 = load %struct.dpkg_arch*, %struct.dpkg_arch** %22, align 8, !dbg !484
  %24 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %23, i32 0, i32 2, !dbg !485
  %25 = load i32, i32* %24, align 8, !dbg !485
  %26 = icmp eq i32 %25, 0, !dbg !486
  br i1 %26, label %27, label %42, !dbg !487

; <label>:27:                                     ; preds = %17
  %28 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !488
  %29 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %28, i32 0, i32 1, !dbg !490
  %30 = load %struct.pkginfo*, %struct.pkginfo** %29, align 8, !dbg !490
  %31 = icmp eq %struct.pkginfo* %30, null, !dbg !491
  br i1 %31, label %32, label %42, !dbg !492

; <label>:32:                                     ; preds = %27
  %33 = load %struct.dpkg_arch*, %struct.dpkg_arch** %5, align 8, !dbg !493
  %34 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !495
  %35 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %34, i32 0, i32 9, !dbg !496
  %36 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %35, i32 0, i32 3, !dbg !497
  store %struct.dpkg_arch* %33, %struct.dpkg_arch** %36, align 8, !dbg !498
  %37 = load %struct.dpkg_arch*, %struct.dpkg_arch** %5, align 8, !dbg !499
  %38 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !500
  %39 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %38, i32 0, i32 10, !dbg !501
  %40 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %39, i32 0, i32 3, !dbg !502
  store %struct.dpkg_arch* %37, %struct.dpkg_arch** %40, align 8, !dbg !503
  %41 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !504
  store %struct.pkginfo* %41, %struct.pkginfo** %3, align 8, !dbg !505
  br label %85, !dbg !505

; <label>:42:                                     ; preds = %27, %17
  store %struct.pkginfo** %6, %struct.pkginfo*** %7, align 8, !dbg !506
  br label %43, !dbg !508

; <label>:43:                                     ; preds = %59, %42
  %44 = load %struct.pkginfo**, %struct.pkginfo*** %7, align 8, !dbg !509
  %45 = load %struct.pkginfo*, %struct.pkginfo** %44, align 8, !dbg !512
  %46 = icmp ne %struct.pkginfo* %45, null, !dbg !513
  br i1 %46, label %47, label %63, !dbg !513

; <label>:47:                                     ; preds = %43
  %48 = load %struct.pkginfo**, %struct.pkginfo*** %7, align 8, !dbg !514
  %49 = load %struct.pkginfo*, %struct.pkginfo** %48, align 8, !dbg !517
  %50 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %49, i32 0, i32 9, !dbg !518
  %51 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %50, i32 0, i32 3, !dbg !519
  %52 = load %struct.dpkg_arch*, %struct.dpkg_arch** %51, align 8, !dbg !519
  %53 = load %struct.dpkg_arch*, %struct.dpkg_arch** %5, align 8, !dbg !520
  %54 = icmp eq %struct.dpkg_arch* %52, %53, !dbg !521
  br i1 %54, label %55, label %58, !dbg !522

; <label>:55:                                     ; preds = %47
  %56 = load %struct.pkginfo**, %struct.pkginfo*** %7, align 8, !dbg !523
  %57 = load %struct.pkginfo*, %struct.pkginfo** %56, align 8, !dbg !524
  store %struct.pkginfo* %57, %struct.pkginfo** %3, align 8, !dbg !525
  br label %85, !dbg !525

; <label>:58:                                     ; preds = %47
  br label %59, !dbg !526

; <label>:59:                                     ; preds = %58
  %60 = load %struct.pkginfo**, %struct.pkginfo*** %7, align 8, !dbg !527
  %61 = load %struct.pkginfo*, %struct.pkginfo** %60, align 8, !dbg !529
  %62 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %61, i32 0, i32 1, !dbg !530
  store %struct.pkginfo** %62, %struct.pkginfo*** %7, align 8, !dbg !531
  br label %43, !dbg !532, !llvm.loop !533

; <label>:63:                                     ; preds = %43
  %64 = call i8* @nfmalloc(i64 384), !dbg !535
  %65 = bitcast i8* %64 to %struct.pkginfo*, !dbg !535
  store %struct.pkginfo* %65, %struct.pkginfo** %6, align 8, !dbg !536
  %66 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !537
  call void @pkg_blank(%struct.pkginfo* %66), !dbg !538
  %67 = load %struct.pkgset*, %struct.pkgset** %4, align 8, !dbg !539
  %68 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !540
  %69 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %68, i32 0, i32 0, !dbg !541
  store %struct.pkgset* %67, %struct.pkgset** %69, align 8, !dbg !542
  %70 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !543
  %71 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %70, i32 0, i32 1, !dbg !544
  store %struct.pkginfo* null, %struct.pkginfo** %71, align 8, !dbg !545
  %72 = load %struct.dpkg_arch*, %struct.dpkg_arch** %5, align 8, !dbg !546
  %73 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !547
  %74 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %73, i32 0, i32 9, !dbg !548
  %75 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %74, i32 0, i32 3, !dbg !549
  store %struct.dpkg_arch* %72, %struct.dpkg_arch** %75, align 8, !dbg !550
  %76 = load %struct.dpkg_arch*, %struct.dpkg_arch** %5, align 8, !dbg !551
  %77 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !552
  %78 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %77, i32 0, i32 10, !dbg !553
  %79 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %78, i32 0, i32 3, !dbg !554
  store %struct.dpkg_arch* %76, %struct.dpkg_arch** %79, align 8, !dbg !555
  %80 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !556
  %81 = load %struct.pkginfo**, %struct.pkginfo*** %7, align 8, !dbg !557
  store %struct.pkginfo* %80, %struct.pkginfo** %81, align 8, !dbg !558
  %82 = load i32, i32* @npkg, align 4, !dbg !559
  %83 = add nsw i32 %82, 1, !dbg !559
  store i32 %83, i32* @npkg, align 4, !dbg !559
  %84 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !560
  store %struct.pkginfo* %84, %struct.pkginfo** %3, align 8, !dbg !561
  br label %85, !dbg !561

; <label>:85:                                     ; preds = %63, %55, %32
  %86 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !562
  ret %struct.pkginfo* %86, !dbg !562
}

declare void @pkg_blank(%struct.pkginfo*) #2

; Function Attrs: nounwind uwtable
define %struct.pkginfo* @pkg_hash_find_pkg(i8*, %struct.dpkg_arch*) #0 !dbg !563 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dpkg_arch*, align 8
  %5 = alloca %struct.pkgset*, align 8
  %6 = alloca %struct.pkginfo*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !566, metadata !243), !dbg !567
  store %struct.dpkg_arch* %1, %struct.dpkg_arch** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.dpkg_arch** %4, metadata !568, metadata !243), !dbg !569
  call void @llvm.dbg.declare(metadata %struct.pkgset** %5, metadata !570, metadata !243), !dbg !571
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %6, metadata !572, metadata !243), !dbg !573
  %7 = load i8*, i8** %3, align 8, !dbg !574
  %8 = call %struct.pkgset* @pkg_hash_find_set(i8* %7), !dbg !575
  store %struct.pkgset* %8, %struct.pkgset** %5, align 8, !dbg !576
  %9 = load %struct.pkgset*, %struct.pkgset** %5, align 8, !dbg !577
  %10 = load %struct.dpkg_arch*, %struct.dpkg_arch** %4, align 8, !dbg !578
  %11 = call %struct.pkginfo* @pkg_hash_get_pkg(%struct.pkgset* %9, %struct.dpkg_arch* %10), !dbg !579
  store %struct.pkginfo* %11, %struct.pkginfo** %6, align 8, !dbg !580
  %12 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !581
  ret %struct.pkginfo* %12, !dbg !582
}

; Function Attrs: nounwind uwtable
define i32 @pkg_hash_count_set() #0 !dbg !583 {
  %1 = load i32, i32* @nset, align 4, !dbg !586
  ret i32 %1, !dbg !587
}

; Function Attrs: nounwind uwtable
define i32 @pkg_hash_count_pkg() #0 !dbg !588 {
  %1 = load i32, i32* @npkg, align 4, !dbg !589
  ret i32 %1, !dbg !590
}

; Function Attrs: nounwind uwtable
define %struct.pkg_hash_iter* @pkg_hash_iter_new() #0 !dbg !591 {
  %1 = alloca %struct.pkg_hash_iter*, align 8
  call void @llvm.dbg.declare(metadata %struct.pkg_hash_iter** %1, metadata !599, metadata !243), !dbg !600
  %2 = call i8* @m_malloc(i64 16), !dbg !601
  %3 = bitcast i8* %2 to %struct.pkg_hash_iter*, !dbg !601
  store %struct.pkg_hash_iter* %3, %struct.pkg_hash_iter** %1, align 8, !dbg !602
  %4 = load %struct.pkg_hash_iter*, %struct.pkg_hash_iter** %1, align 8, !dbg !603
  %5 = getelementptr inbounds %struct.pkg_hash_iter, %struct.pkg_hash_iter* %4, i32 0, i32 0, !dbg !604
  store %struct.pkginfo* null, %struct.pkginfo** %5, align 8, !dbg !605
  %6 = load %struct.pkg_hash_iter*, %struct.pkg_hash_iter** %1, align 8, !dbg !606
  %7 = getelementptr inbounds %struct.pkg_hash_iter, %struct.pkg_hash_iter* %6, i32 0, i32 1, !dbg !607
  store i32 0, i32* %7, align 8, !dbg !608
  %8 = load %struct.pkg_hash_iter*, %struct.pkg_hash_iter** %1, align 8, !dbg !609
  ret %struct.pkg_hash_iter* %8, !dbg !610
}

declare i8* @m_malloc(i64) #2

; Function Attrs: nounwind uwtable
define %struct.pkgset* @pkg_hash_iter_next_set(%struct.pkg_hash_iter*) #0 !dbg !611 {
  %2 = alloca %struct.pkgset*, align 8
  %3 = alloca %struct.pkg_hash_iter*, align 8
  %4 = alloca %struct.pkgset*, align 8
  store %struct.pkg_hash_iter* %0, %struct.pkg_hash_iter** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.pkg_hash_iter** %3, metadata !614, metadata !243), !dbg !615
  call void @llvm.dbg.declare(metadata %struct.pkgset** %4, metadata !616, metadata !243), !dbg !617
  br label %5, !dbg !618

; <label>:5:                                      ; preds = %35, %1
  %6 = load %struct.pkg_hash_iter*, %struct.pkg_hash_iter** %3, align 8, !dbg !619
  %7 = getelementptr inbounds %struct.pkg_hash_iter, %struct.pkg_hash_iter* %6, i32 0, i32 0, !dbg !621
  %8 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !621
  %9 = icmp ne %struct.pkginfo* %8, null, !dbg !622
  %10 = xor i1 %9, true, !dbg !622
  br i1 %10, label %11, label %40, !dbg !623

; <label>:11:                                     ; preds = %5
  %12 = load %struct.pkg_hash_iter*, %struct.pkg_hash_iter** %3, align 8, !dbg !624
  %13 = getelementptr inbounds %struct.pkg_hash_iter, %struct.pkg_hash_iter* %12, i32 0, i32 1, !dbg !627
  %14 = load i32, i32* %13, align 8, !dbg !627
  %15 = icmp sge i32 %14, 65521, !dbg !628
  br i1 %15, label %16, label %17, !dbg !629

; <label>:16:                                     ; preds = %11
  store %struct.pkgset* null, %struct.pkgset** %2, align 8, !dbg !630
  br label %62, !dbg !630

; <label>:17:                                     ; preds = %11
  %18 = load %struct.pkg_hash_iter*, %struct.pkg_hash_iter** %3, align 8, !dbg !631
  %19 = getelementptr inbounds %struct.pkg_hash_iter, %struct.pkg_hash_iter* %18, i32 0, i32 1, !dbg !633
  %20 = load i32, i32* %19, align 8, !dbg !633
  %21 = sext i32 %20 to i64, !dbg !634
  %22 = getelementptr inbounds [65521 x %struct.pkgset*], [65521 x %struct.pkgset*]* @bins, i64 0, i64 %21, !dbg !634
  %23 = load %struct.pkgset*, %struct.pkgset** %22, align 8, !dbg !634
  %24 = icmp ne %struct.pkgset* %23, null, !dbg !634
  br i1 %24, label %25, label %35, !dbg !635

; <label>:25:                                     ; preds = %17
  %26 = load %struct.pkg_hash_iter*, %struct.pkg_hash_iter** %3, align 8, !dbg !636
  %27 = getelementptr inbounds %struct.pkg_hash_iter, %struct.pkg_hash_iter* %26, i32 0, i32 1, !dbg !637
  %28 = load i32, i32* %27, align 8, !dbg !637
  %29 = sext i32 %28 to i64, !dbg !638
  %30 = getelementptr inbounds [65521 x %struct.pkgset*], [65521 x %struct.pkgset*]* @bins, i64 0, i64 %29, !dbg !638
  %31 = load %struct.pkgset*, %struct.pkgset** %30, align 8, !dbg !638
  %32 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %31, i32 0, i32 2, !dbg !639
  %33 = load %struct.pkg_hash_iter*, %struct.pkg_hash_iter** %3, align 8, !dbg !640
  %34 = getelementptr inbounds %struct.pkg_hash_iter, %struct.pkg_hash_iter* %33, i32 0, i32 0, !dbg !641
  store %struct.pkginfo* %32, %struct.pkginfo** %34, align 8, !dbg !642
  br label %35, !dbg !640

; <label>:35:                                     ; preds = %25, %17
  %36 = load %struct.pkg_hash_iter*, %struct.pkg_hash_iter** %3, align 8, !dbg !643
  %37 = getelementptr inbounds %struct.pkg_hash_iter, %struct.pkg_hash_iter* %36, i32 0, i32 1, !dbg !644
  %38 = load i32, i32* %37, align 8, !dbg !645
  %39 = add nsw i32 %38, 1, !dbg !645
  store i32 %39, i32* %37, align 8, !dbg !645
  br label %5, !dbg !646, !llvm.loop !648

; <label>:40:                                     ; preds = %5
  %41 = load %struct.pkg_hash_iter*, %struct.pkg_hash_iter** %3, align 8, !dbg !649
  %42 = getelementptr inbounds %struct.pkg_hash_iter, %struct.pkg_hash_iter* %41, i32 0, i32 0, !dbg !650
  %43 = load %struct.pkginfo*, %struct.pkginfo** %42, align 8, !dbg !650
  %44 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %43, i32 0, i32 0, !dbg !651
  %45 = load %struct.pkgset*, %struct.pkgset** %44, align 8, !dbg !651
  store %struct.pkgset* %45, %struct.pkgset** %4, align 8, !dbg !652
  %46 = load %struct.pkgset*, %struct.pkgset** %4, align 8, !dbg !653
  %47 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %46, i32 0, i32 0, !dbg !655
  %48 = load %struct.pkgset*, %struct.pkgset** %47, align 8, !dbg !655
  %49 = icmp ne %struct.pkgset* %48, null, !dbg !653
  br i1 %49, label %50, label %57, !dbg !656

; <label>:50:                                     ; preds = %40
  %51 = load %struct.pkgset*, %struct.pkgset** %4, align 8, !dbg !657
  %52 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %51, i32 0, i32 0, !dbg !658
  %53 = load %struct.pkgset*, %struct.pkgset** %52, align 8, !dbg !658
  %54 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %53, i32 0, i32 2, !dbg !659
  %55 = load %struct.pkg_hash_iter*, %struct.pkg_hash_iter** %3, align 8, !dbg !660
  %56 = getelementptr inbounds %struct.pkg_hash_iter, %struct.pkg_hash_iter* %55, i32 0, i32 0, !dbg !661
  store %struct.pkginfo* %54, %struct.pkginfo** %56, align 8, !dbg !662
  br label %60, !dbg !660

; <label>:57:                                     ; preds = %40
  %58 = load %struct.pkg_hash_iter*, %struct.pkg_hash_iter** %3, align 8, !dbg !663
  %59 = getelementptr inbounds %struct.pkg_hash_iter, %struct.pkg_hash_iter* %58, i32 0, i32 0, !dbg !664
  store %struct.pkginfo* null, %struct.pkginfo** %59, align 8, !dbg !665
  br label %60

; <label>:60:                                     ; preds = %57, %50
  %61 = load %struct.pkgset*, %struct.pkgset** %4, align 8, !dbg !666
  store %struct.pkgset* %61, %struct.pkgset** %2, align 8, !dbg !667
  br label %62, !dbg !667

; <label>:62:                                     ; preds = %60, %16
  %63 = load %struct.pkgset*, %struct.pkgset** %2, align 8, !dbg !668
  ret %struct.pkgset* %63, !dbg !668
}

; Function Attrs: nounwind uwtable
define %struct.pkginfo* @pkg_hash_iter_next_pkg(%struct.pkg_hash_iter*) #0 !dbg !669 {
  %2 = alloca %struct.pkginfo*, align 8
  %3 = alloca %struct.pkg_hash_iter*, align 8
  %4 = alloca %struct.pkginfo*, align 8
  store %struct.pkg_hash_iter* %0, %struct.pkg_hash_iter** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.pkg_hash_iter** %3, metadata !672, metadata !243), !dbg !673
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %4, metadata !674, metadata !243), !dbg !675
  br label %5, !dbg !676

; <label>:5:                                      ; preds = %35, %1
  %6 = load %struct.pkg_hash_iter*, %struct.pkg_hash_iter** %3, align 8, !dbg !677
  %7 = getelementptr inbounds %struct.pkg_hash_iter, %struct.pkg_hash_iter* %6, i32 0, i32 0, !dbg !679
  %8 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !679
  %9 = icmp ne %struct.pkginfo* %8, null, !dbg !680
  %10 = xor i1 %9, true, !dbg !680
  br i1 %10, label %11, label %40, !dbg !681

; <label>:11:                                     ; preds = %5
  %12 = load %struct.pkg_hash_iter*, %struct.pkg_hash_iter** %3, align 8, !dbg !682
  %13 = getelementptr inbounds %struct.pkg_hash_iter, %struct.pkg_hash_iter* %12, i32 0, i32 1, !dbg !685
  %14 = load i32, i32* %13, align 8, !dbg !685
  %15 = icmp sge i32 %14, 65521, !dbg !686
  br i1 %15, label %16, label %17, !dbg !687

; <label>:16:                                     ; preds = %11
  store %struct.pkginfo* null, %struct.pkginfo** %2, align 8, !dbg !688
  br label %76, !dbg !688

; <label>:17:                                     ; preds = %11
  %18 = load %struct.pkg_hash_iter*, %struct.pkg_hash_iter** %3, align 8, !dbg !689
  %19 = getelementptr inbounds %struct.pkg_hash_iter, %struct.pkg_hash_iter* %18, i32 0, i32 1, !dbg !691
  %20 = load i32, i32* %19, align 8, !dbg !691
  %21 = sext i32 %20 to i64, !dbg !692
  %22 = getelementptr inbounds [65521 x %struct.pkgset*], [65521 x %struct.pkgset*]* @bins, i64 0, i64 %21, !dbg !692
  %23 = load %struct.pkgset*, %struct.pkgset** %22, align 8, !dbg !692
  %24 = icmp ne %struct.pkgset* %23, null, !dbg !692
  br i1 %24, label %25, label %35, !dbg !693

; <label>:25:                                     ; preds = %17
  %26 = load %struct.pkg_hash_iter*, %struct.pkg_hash_iter** %3, align 8, !dbg !694
  %27 = getelementptr inbounds %struct.pkg_hash_iter, %struct.pkg_hash_iter* %26, i32 0, i32 1, !dbg !695
  %28 = load i32, i32* %27, align 8, !dbg !695
  %29 = sext i32 %28 to i64, !dbg !696
  %30 = getelementptr inbounds [65521 x %struct.pkgset*], [65521 x %struct.pkgset*]* @bins, i64 0, i64 %29, !dbg !696
  %31 = load %struct.pkgset*, %struct.pkgset** %30, align 8, !dbg !696
  %32 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %31, i32 0, i32 2, !dbg !697
  %33 = load %struct.pkg_hash_iter*, %struct.pkg_hash_iter** %3, align 8, !dbg !698
  %34 = getelementptr inbounds %struct.pkg_hash_iter, %struct.pkg_hash_iter* %33, i32 0, i32 0, !dbg !699
  store %struct.pkginfo* %32, %struct.pkginfo** %34, align 8, !dbg !700
  br label %35, !dbg !698

; <label>:35:                                     ; preds = %25, %17
  %36 = load %struct.pkg_hash_iter*, %struct.pkg_hash_iter** %3, align 8, !dbg !701
  %37 = getelementptr inbounds %struct.pkg_hash_iter, %struct.pkg_hash_iter* %36, i32 0, i32 1, !dbg !702
  %38 = load i32, i32* %37, align 8, !dbg !703
  %39 = add nsw i32 %38, 1, !dbg !703
  store i32 %39, i32* %37, align 8, !dbg !703
  br label %5, !dbg !704, !llvm.loop !706

; <label>:40:                                     ; preds = %5
  %41 = load %struct.pkg_hash_iter*, %struct.pkg_hash_iter** %3, align 8, !dbg !707
  %42 = getelementptr inbounds %struct.pkg_hash_iter, %struct.pkg_hash_iter* %41, i32 0, i32 0, !dbg !708
  %43 = load %struct.pkginfo*, %struct.pkginfo** %42, align 8, !dbg !708
  store %struct.pkginfo* %43, %struct.pkginfo** %4, align 8, !dbg !709
  %44 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !710
  %45 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %44, i32 0, i32 1, !dbg !712
  %46 = load %struct.pkginfo*, %struct.pkginfo** %45, align 8, !dbg !712
  %47 = icmp ne %struct.pkginfo* %46, null, !dbg !710
  br i1 %47, label %48, label %54, !dbg !713

; <label>:48:                                     ; preds = %40
  %49 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !714
  %50 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %49, i32 0, i32 1, !dbg !715
  %51 = load %struct.pkginfo*, %struct.pkginfo** %50, align 8, !dbg !715
  %52 = load %struct.pkg_hash_iter*, %struct.pkg_hash_iter** %3, align 8, !dbg !716
  %53 = getelementptr inbounds %struct.pkg_hash_iter, %struct.pkg_hash_iter* %52, i32 0, i32 0, !dbg !717
  store %struct.pkginfo* %51, %struct.pkginfo** %53, align 8, !dbg !718
  br label %74, !dbg !716

; <label>:54:                                     ; preds = %40
  %55 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !719
  %56 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %55, i32 0, i32 0, !dbg !721
  %57 = load %struct.pkgset*, %struct.pkgset** %56, align 8, !dbg !721
  %58 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %57, i32 0, i32 0, !dbg !722
  %59 = load %struct.pkgset*, %struct.pkgset** %58, align 8, !dbg !722
  %60 = icmp ne %struct.pkgset* %59, null, !dbg !719
  br i1 %60, label %61, label %70, !dbg !723

; <label>:61:                                     ; preds = %54
  %62 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !724
  %63 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %62, i32 0, i32 0, !dbg !725
  %64 = load %struct.pkgset*, %struct.pkgset** %63, align 8, !dbg !725
  %65 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %64, i32 0, i32 0, !dbg !726
  %66 = load %struct.pkgset*, %struct.pkgset** %65, align 8, !dbg !726
  %67 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %66, i32 0, i32 2, !dbg !727
  %68 = load %struct.pkg_hash_iter*, %struct.pkg_hash_iter** %3, align 8, !dbg !728
  %69 = getelementptr inbounds %struct.pkg_hash_iter, %struct.pkg_hash_iter* %68, i32 0, i32 0, !dbg !729
  store %struct.pkginfo* %67, %struct.pkginfo** %69, align 8, !dbg !730
  br label %73, !dbg !728

; <label>:70:                                     ; preds = %54
  %71 = load %struct.pkg_hash_iter*, %struct.pkg_hash_iter** %3, align 8, !dbg !731
  %72 = getelementptr inbounds %struct.pkg_hash_iter, %struct.pkg_hash_iter* %71, i32 0, i32 0, !dbg !732
  store %struct.pkginfo* null, %struct.pkginfo** %72, align 8, !dbg !733
  br label %73

; <label>:73:                                     ; preds = %70, %61
  br label %74

; <label>:74:                                     ; preds = %73, %48
  %75 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !734
  store %struct.pkginfo* %75, %struct.pkginfo** %2, align 8, !dbg !735
  br label %76, !dbg !735

; <label>:76:                                     ; preds = %74, %16
  %77 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !736
  ret %struct.pkginfo* %77, !dbg !736
}

; Function Attrs: nounwind uwtable
define void @pkg_hash_iter_free(%struct.pkg_hash_iter*) #0 !dbg !737 {
  %2 = alloca %struct.pkg_hash_iter*, align 8
  store %struct.pkg_hash_iter* %0, %struct.pkg_hash_iter** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.pkg_hash_iter** %2, metadata !740, metadata !243), !dbg !741
  %3 = load %struct.pkg_hash_iter*, %struct.pkg_hash_iter** %2, align 8, !dbg !742
  %4 = bitcast %struct.pkg_hash_iter* %3 to i8*, !dbg !742
  call void @free(i8* %4) #8, !dbg !743
  ret void, !dbg !744
}

; Function Attrs: nounwind uwtable
define void @pkg_hash_reset() #0 !dbg !745 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !748, metadata !243), !dbg !749
  call void @dpkg_arch_reset_list(), !dbg !750
  call void @nffreeall(), !dbg !751
  store i32 0, i32* @nset, align 4, !dbg !752
  store i32 0, i32* @npkg, align 4, !dbg !753
  store i32 0, i32* %1, align 4, !dbg !754
  br label %2, !dbg !756

; <label>:2:                                      ; preds = %9, %0
  %3 = load i32, i32* %1, align 4, !dbg !757
  %4 = icmp slt i32 %3, 65521, !dbg !760
  br i1 %4, label %5, label %12, !dbg !761

; <label>:5:                                      ; preds = %2
  %6 = load i32, i32* %1, align 4, !dbg !762
  %7 = sext i32 %6 to i64, !dbg !764
  %8 = getelementptr inbounds [65521 x %struct.pkgset*], [65521 x %struct.pkgset*]* @bins, i64 0, i64 %7, !dbg !764
  store %struct.pkgset* null, %struct.pkgset** %8, align 8, !dbg !765
  br label %9, !dbg !764

; <label>:9:                                      ; preds = %5
  %10 = load i32, i32* %1, align 4, !dbg !766
  %11 = add nsw i32 %10, 1, !dbg !766
  store i32 %11, i32* %1, align 4, !dbg !766
  br label %2, !dbg !768, !llvm.loop !769

; <label>:12:                                     ; preds = %2
  ret void, !dbg !771
}

declare void @dpkg_arch_reset_list() #2

declare void @nffreeall() #2

; Function Attrs: nounwind uwtable
define void @pkg_hash_report(%struct._IO_FILE*) #0 !dbg !772 {
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pkgset*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !831, metadata !243), !dbg !832
  call void @llvm.dbg.declare(metadata i32* %3, metadata !833, metadata !243), !dbg !834
  call void @llvm.dbg.declare(metadata i32* %4, metadata !835, metadata !243), !dbg !836
  call void @llvm.dbg.declare(metadata %struct.pkgset** %5, metadata !837, metadata !243), !dbg !838
  call void @llvm.dbg.declare(metadata i32** %6, metadata !839, metadata !243), !dbg !841
  call void @llvm.dbg.declare(metadata i32* %7, metadata !842, metadata !243), !dbg !843
  store i32 0, i32* %7, align 4, !dbg !843
  call void @llvm.dbg.declare(metadata i32* %8, metadata !844, metadata !243), !dbg !845
  store i32 0, i32* %8, align 4, !dbg !845
  call void @llvm.dbg.declare(metadata i32* %9, metadata !846, metadata !243), !dbg !847
  store i32 0, i32* %9, align 4, !dbg !847
  %10 = load i32, i32* @nset, align 4, !dbg !848
  %11 = sext i32 %10 to i64, !dbg !848
  %12 = mul i64 4, %11, !dbg !849
  %13 = add i64 %12, 1, !dbg !850
  %14 = call i8* @m_malloc(i64 %13), !dbg !851
  %15 = bitcast i8* %14 to i32*, !dbg !851
  store i32* %15, i32** %6, align 8, !dbg !852
  store i32 0, i32* %3, align 4, !dbg !853
  br label %16, !dbg !855

; <label>:16:                                     ; preds = %25, %1
  %17 = load i32, i32* %3, align 4, !dbg !856
  %18 = load i32, i32* @nset, align 4, !dbg !859
  %19 = icmp sle i32 %17, %18, !dbg !860
  br i1 %19, label %20, label %28, !dbg !861

; <label>:20:                                     ; preds = %16
  %21 = load i32, i32* %3, align 4, !dbg !862
  %22 = sext i32 %21 to i64, !dbg !863
  %23 = load i32*, i32** %6, align 8, !dbg !863
  %24 = getelementptr inbounds i32, i32* %23, i64 %22, !dbg !863
  store i32 0, i32* %24, align 4, !dbg !864
  br label %25, !dbg !863

; <label>:25:                                     ; preds = %20
  %26 = load i32, i32* %3, align 4, !dbg !865
  %27 = add nsw i32 %26, 1, !dbg !865
  store i32 %27, i32* %3, align 4, !dbg !865
  br label %16, !dbg !867, !llvm.loop !868

; <label>:28:                                     ; preds = %16
  store i32 0, i32* %3, align 4, !dbg !870
  br label %29, !dbg !872

; <label>:29:                                     ; preds = %76, %28
  %30 = load i32, i32* %3, align 4, !dbg !873
  %31 = icmp slt i32 %30, 65521, !dbg !876
  br i1 %31, label %32, label %79, !dbg !877

; <label>:32:                                     ; preds = %29
  store i32 0, i32* %4, align 4, !dbg !878
  %33 = load i32, i32* %3, align 4, !dbg !881
  %34 = sext i32 %33 to i64, !dbg !882
  %35 = getelementptr inbounds [65521 x %struct.pkgset*], [65521 x %struct.pkgset*]* @bins, i64 0, i64 %34, !dbg !882
  %36 = load %struct.pkgset*, %struct.pkgset** %35, align 8, !dbg !882
  store %struct.pkgset* %36, %struct.pkgset** %5, align 8, !dbg !883
  br label %37, !dbg !884

; <label>:37:                                     ; preds = %41, %32
  %38 = load %struct.pkgset*, %struct.pkgset** %5, align 8, !dbg !885
  %39 = icmp ne %struct.pkgset* %38, null, !dbg !888
  br i1 %39, label %40, label %47, !dbg !888

; <label>:40:                                     ; preds = %37
  br label %41, !dbg !889

; <label>:41:                                     ; preds = %40
  %42 = load i32, i32* %4, align 4, !dbg !891
  %43 = add nsw i32 %42, 1, !dbg !891
  store i32 %43, i32* %4, align 4, !dbg !891
  %44 = load %struct.pkgset*, %struct.pkgset** %5, align 8, !dbg !893
  %45 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %44, i32 0, i32 0, !dbg !894
  %46 = load %struct.pkgset*, %struct.pkgset** %45, align 8, !dbg !894
  store %struct.pkgset* %46, %struct.pkgset** %5, align 8, !dbg !895
  br label %37, !dbg !896, !llvm.loop !897

; <label>:47:                                     ; preds = %37
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !899
  %49 = load i32, i32* %3, align 4, !dbg !900
  %50 = load i32, i32* %4, align 4, !dbg !901
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0), i32 %49, i32 %50), !dbg !902
  %52 = load i32, i32* %4, align 4, !dbg !903
  %53 = icmp eq i32 %52, 0, !dbg !905
  br i1 %53, label %54, label %57, !dbg !906

; <label>:54:                                     ; preds = %47
  %55 = load i32, i32* %7, align 4, !dbg !907
  %56 = add nsw i32 %55, 1, !dbg !907
  store i32 %56, i32* %7, align 4, !dbg !907
  br label %69, !dbg !908

; <label>:57:                                     ; preds = %47
  %58 = load i32, i32* %4, align 4, !dbg !909
  %59 = icmp eq i32 %58, 1, !dbg !911
  br i1 %59, label %60, label %63, !dbg !912

; <label>:60:                                     ; preds = %57
  %61 = load i32, i32* %8, align 4, !dbg !913
  %62 = add nsw i32 %61, 1, !dbg !913
  store i32 %62, i32* %8, align 4, !dbg !913
  br label %68, !dbg !914

; <label>:63:                                     ; preds = %57
  %64 = load i32, i32* %8, align 4, !dbg !915
  %65 = add nsw i32 %64, 1, !dbg !915
  store i32 %65, i32* %8, align 4, !dbg !915
  %66 = load i32, i32* %9, align 4, !dbg !917
  %67 = add nsw i32 %66, 1, !dbg !917
  store i32 %67, i32* %9, align 4, !dbg !917
  br label %68

; <label>:68:                                     ; preds = %63, %60
  br label %69

; <label>:69:                                     ; preds = %68, %54
  %70 = load i32, i32* %4, align 4, !dbg !918
  %71 = sext i32 %70 to i64, !dbg !919
  %72 = load i32*, i32** %6, align 8, !dbg !919
  %73 = getelementptr inbounds i32, i32* %72, i64 %71, !dbg !919
  %74 = load i32, i32* %73, align 4, !dbg !920
  %75 = add nsw i32 %74, 1, !dbg !920
  store i32 %75, i32* %73, align 4, !dbg !920
  br label %76, !dbg !921

; <label>:76:                                     ; preds = %69
  %77 = load i32, i32* %3, align 4, !dbg !922
  %78 = add nsw i32 %77, 1, !dbg !922
  store i32 %78, i32* %3, align 4, !dbg !922
  br label %29, !dbg !924, !llvm.loop !925

; <label>:79:                                     ; preds = %29
  %80 = load i32, i32* @nset, align 4, !dbg !927
  store i32 %80, i32* %3, align 4, !dbg !929
  br label %81, !dbg !930

; <label>:81:                                     ; preds = %94, %79
  %82 = load i32, i32* %3, align 4, !dbg !931
  %83 = icmp sgt i32 %82, 0, !dbg !934
  br i1 %83, label %84, label %91, !dbg !935

; <label>:84:                                     ; preds = %81
  %85 = load i32, i32* %3, align 4, !dbg !936
  %86 = sext i32 %85 to i64, !dbg !938
  %87 = load i32*, i32** %6, align 8, !dbg !938
  %88 = getelementptr inbounds i32, i32* %87, i64 %86, !dbg !938
  %89 = load i32, i32* %88, align 4, !dbg !938
  %90 = icmp eq i32 %89, 0, !dbg !939
  br label %91

; <label>:91:                                     ; preds = %84, %81
  %92 = phi i1 [ false, %81 ], [ %90, %84 ]
  br i1 %92, label %93, label %97, !dbg !940

; <label>:93:                                     ; preds = %91
  br label %94, !dbg !942

; <label>:94:                                     ; preds = %93
  %95 = load i32, i32* %3, align 4, !dbg !944
  %96 = add nsw i32 %95, -1, !dbg !944
  store i32 %96, i32* %3, align 4, !dbg !944
  br label %81, !dbg !946, !llvm.loop !947

; <label>:97:                                     ; preds = %91
  br label %98, !dbg !949

; <label>:98:                                     ; preds = %101, %97
  %99 = load i32, i32* %3, align 4, !dbg !950
  %100 = icmp sge i32 %99, 0, !dbg !952
  br i1 %100, label %101, label %112, !dbg !953

; <label>:101:                                    ; preds = %98
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !954
  %103 = load i32, i32* %3, align 4, !dbg !956
  %104 = load i32, i32* %3, align 4, !dbg !957
  %105 = sext i32 %104 to i64, !dbg !958
  %106 = load i32*, i32** %6, align 8, !dbg !958
  %107 = getelementptr inbounds i32, i32* %106, i64 %105, !dbg !958
  %108 = load i32, i32* %107, align 4, !dbg !958
  %109 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %102, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i32 0, i32 0), i32 %103, i32 %108), !dbg !959
  %110 = load i32, i32* %3, align 4, !dbg !960
  %111 = add nsw i32 %110, -1, !dbg !960
  store i32 %111, i32* %3, align 4, !dbg !960
  br label %98, !dbg !961, !llvm.loop !963

; <label>:112:                                    ; preds = %98
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !964
  %114 = load i32, i32* %7, align 4, !dbg !965
  %115 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %113, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0), i32 %114), !dbg !966
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !967
  %117 = load i32, i32* %8, align 4, !dbg !968
  %118 = load i32, i32* %9, align 4, !dbg !969
  %119 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %116, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i32 0, i32 0), i32 %117, i32 %118), !dbg !970
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !971
  call void @m_output(%struct._IO_FILE* %120, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0)), !dbg !972
  %121 = load i32*, i32** %6, align 8, !dbg !973
  %122 = bitcast i32* %121 to i8*, !dbg !973
  call void @free(i8* %122) #8, !dbg !974
  ret void, !dbg !975
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare void @m_output(%struct._IO_FILE*, i8*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @c_isupper(i32) #3 !dbg !976 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !979, metadata !243), !dbg !980
  %3 = load i32, i32* %2, align 4, !dbg !981
  %4 = call zeroext i1 @c_isbits(i32 %3, i32 8), !dbg !982
  ret i1 %4, !dbg !983
}

declare zeroext i1 @c_isbits(i32, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!235, !236}
!llvm.ident = !{!237}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !84, globals: !87)
!1 = !DIFile(filename: "[inter]lib--dpkg--pkg-hash.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{!3, !12, !16, !26, !36, !47, !56, !67, !73}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgwant", file: !4, line: 153, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../lib/dpkg/dpkg-db.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!5 = !{!6, !7, !8, !9, !10, !11}
!6 = !DIEnumerator(name: "PKG_WANT_UNKNOWN", value: 0)
!7 = !DIEnumerator(name: "PKG_WANT_INSTALL", value: 1)
!8 = !DIEnumerator(name: "PKG_WANT_HOLD", value: 2)
!9 = !DIEnumerator(name: "PKG_WANT_DEINSTALL", value: 3)
!10 = !DIEnumerator(name: "PKG_WANT_PURGE", value: 4)
!11 = !DIEnumerator(name: "PKG_WANT_SENTINEL", value: 5)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgeflag", file: !4, line: 163, size: 32, align: 32, elements: !13)
!13 = !{!14, !15}
!14 = !DIEnumerator(name: "PKG_EFLAG_OK", value: 0)
!15 = !DIEnumerator(name: "PKG_EFLAG_REINSTREQ", value: 1)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgstatus", file: !4, line: 168, size: 32, align: 32, elements: !17)
!17 = !{!18, !19, !20, !21, !22, !23, !24, !25}
!18 = !DIEnumerator(name: "PKG_STAT_NOTINSTALLED", value: 0)
!19 = !DIEnumerator(name: "PKG_STAT_CONFIGFILES", value: 1)
!20 = !DIEnumerator(name: "PKG_STAT_HALFINSTALLED", value: 2)
!21 = !DIEnumerator(name: "PKG_STAT_UNPACKED", value: 3)
!22 = !DIEnumerator(name: "PKG_STAT_HALFCONFIGURED", value: 4)
!23 = !DIEnumerator(name: "PKG_STAT_TRIGGERSAWAITED", value: 5)
!24 = !DIEnumerator(name: "PKG_STAT_TRIGGERSPENDING", value: 6)
!25 = !DIEnumerator(name: "PKG_STAT_INSTALLED", value: 7)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgpriority", file: !4, line: 179, size: 32, align: 32, elements: !27)
!27 = !{!28, !29, !30, !31, !32, !33, !34, !35}
!28 = !DIEnumerator(name: "PKG_PRIO_REQUIRED", value: 0)
!29 = !DIEnumerator(name: "PKG_PRIO_IMPORTANT", value: 1)
!30 = !DIEnumerator(name: "PKG_PRIO_STANDARD", value: 2)
!31 = !DIEnumerator(name: "PKG_PRIO_OPTIONAL", value: 3)
!32 = !DIEnumerator(name: "PKG_PRIO_EXTRA", value: 4)
!33 = !DIEnumerator(name: "PKG_PRIO_OTHER", value: 5)
!34 = !DIEnumerator(name: "PKG_PRIO_UNKNOWN", value: 6)
!35 = !DIEnumerator(name: "PKG_PRIO_UNSET", value: -1)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_arch_type", file: !37, line: 37, size: 32, align: 32, elements: !38)
!37 = !DIFile(filename: "../../lib/dpkg/arch.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!38 = !{!39, !40, !41, !42, !43, !44, !45, !46}
!39 = !DIEnumerator(name: "DPKG_ARCH_NONE", value: 0)
!40 = !DIEnumerator(name: "DPKG_ARCH_EMPTY", value: 1)
!41 = !DIEnumerator(name: "DPKG_ARCH_ILLEGAL", value: 2)
!42 = !DIEnumerator(name: "DPKG_ARCH_WILDCARD", value: 3)
!43 = !DIEnumerator(name: "DPKG_ARCH_ALL", value: 4)
!44 = !DIEnumerator(name: "DPKG_ARCH_NATIVE", value: 5)
!45 = !DIEnumerator(name: "DPKG_ARCH_FOREIGN", value: 6)
!46 = !DIEnumerator(name: "DPKG_ARCH_UNKNOWN", value: 7)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_relation", file: !48, line: 61, size: 32, align: 32, elements: !49)
!48 = !DIFile(filename: "../../lib/dpkg/version.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!49 = !{!50, !51, !52, !53, !54, !55}
!50 = !DIEnumerator(name: "DPKG_RELATION_NONE", value: 0)
!51 = !DIEnumerator(name: "DPKG_RELATION_EQ", value: 1)
!52 = !DIEnumerator(name: "DPKG_RELATION_LT", value: 2)
!53 = !DIEnumerator(name: "DPKG_RELATION_LE", value: 3)
!54 = !DIEnumerator(name: "DPKG_RELATION_GT", value: 4)
!55 = !DIEnumerator(name: "DPKG_RELATION_GE", value: 5)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "deptype", file: !4, line: 44, size: 32, align: 32, elements: !57)
!57 = !{!58, !59, !60, !61, !62, !63, !64, !65, !66}
!58 = !DIEnumerator(name: "dep_suggests", value: 0)
!59 = !DIEnumerator(name: "dep_recommends", value: 1)
!60 = !DIEnumerator(name: "dep_depends", value: 2)
!61 = !DIEnumerator(name: "dep_predepends", value: 3)
!62 = !DIEnumerator(name: "dep_breaks", value: 4)
!63 = !DIEnumerator(name: "dep_conflicts", value: 5)
!64 = !DIEnumerator(name: "dep_provides", value: 6)
!65 = !DIEnumerator(name: "dep_replaces", value: 7)
!66 = !DIEnumerator(name: "dep_enhances", value: 8)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgmultiarch", file: !4, line: 95, size: 32, align: 32, elements: !68)
!68 = !{!69, !70, !71, !72}
!69 = !DIEnumerator(name: "PKG_MULTIARCH_NO", value: 0)
!70 = !DIEnumerator(name: "PKG_MULTIARCH_SAME", value: 1)
!71 = !DIEnumerator(name: "PKG_MULTIARCH_ALLOWED", value: 2)
!72 = !DIEnumerator(name: "PKG_MULTIARCH_FOREIGN", value: 3)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "c_ctype_bit", file: !74, line: 32, size: 32, align: 32, elements: !75)
!74 = !DIFile(filename: "../../lib/dpkg/c-ctype.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!75 = !{!76, !77, !78, !79, !80, !81, !82, !83}
!76 = !DIEnumerator(name: "C_CTYPE_BLANK", value: 1)
!77 = !DIEnumerator(name: "C_CTYPE_WHITE", value: 2)
!78 = !DIEnumerator(name: "C_CTYPE_SPACE", value: 4)
!79 = !DIEnumerator(name: "C_CTYPE_UPPER", value: 8)
!80 = !DIEnumerator(name: "C_CTYPE_LOWER", value: 16)
!81 = !DIEnumerator(name: "C_CTYPE_DIGIT", value: 32)
!82 = !DIEnumerator(name: "C_CTYPE_ALPHA", value: 24)
!83 = !DIEnumerator(name: "C_CTYPE_ALNUM", value: 56)
!84 = !{!85, !86}
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!86 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!87 = !{!88, !233, !234}
!88 = distinct !DIGlobalVariable(name: "bins", scope: !0, file: !89, line: 48, type: !90, isLocal: true, isDefinition: true, variable: [65521 x %struct.pkgset*]* @bins)
!89 = !DIFile(filename: "pkg-hash.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 4193344, align: 64, elements: !231)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64, align: 64)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgset", file: !4, line: 242, size: 3392, align: 64, elements: !93)
!93 = !{!94, !95, !99, !224, !229}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !92, file: !4, line: 243, baseType: !91, size: 64, align: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !92, file: !4, line: 244, baseType: !96, size: 64, align: 64, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64, align: 64)
!97 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!98 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !92, file: !4, line: 245, baseType: !100, size: 3072, align: 64, offset: 128)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkginfo", file: !4, line: 195, size: 3072, align: 64, elements: !101)
!101 = !{!102, !103, !105, !106, !107, !108, !109, !110, !111, !118, !177, !178, !181, !190, !206, !207, !213, !216, !222, !223}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !100, file: !4, line: 196, baseType: !91, size: 64, align: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "arch_next", scope: !100, file: !4, line: 197, baseType: !104, size: 64, align: 64, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64, align: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "want", scope: !100, file: !4, line: 199, baseType: !3, size: 32, align: 32, offset: 128)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "eflag", scope: !100, file: !4, line: 201, baseType: !12, size: 32, align: 32, offset: 160)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !100, file: !4, line: 202, baseType: !16, size: 32, align: 32, offset: 192)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !100, file: !4, line: 203, baseType: !26, size: 32, align: 32, offset: 224)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "otherpriority", scope: !100, file: !4, line: 204, baseType: !96, size: 64, align: 64, offset: 256)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "section", scope: !100, file: !4, line: 205, baseType: !96, size: 64, align: 64, offset: 320)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "configversion", scope: !100, file: !4, line: 206, baseType: !112, size: 192, align: 64, offset: 384)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_version", file: !48, line: 42, size: 192, align: 64, elements: !113)
!113 = !{!114, !116, !117}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !112, file: !48, line: 44, baseType: !115, size: 32, align: 32)
!115 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !112, file: !48, line: 46, baseType: !96, size: 64, align: 64, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !112, file: !48, line: 48, baseType: !96, size: 64, align: 64, offset: 128)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !100, file: !4, line: 207, baseType: !119, size: 960, align: 64, offset: 576)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgbin", file: !4, line: 107, size: 960, align: 64, elements: !120)
!120 = !{!121, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !170}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "depends", scope: !119, file: !4, line: 108, baseType: !122, size: 64, align: 64)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64, align: 64)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dependency", file: !4, line: 56, size: 256, align: 64, elements: !124)
!124 = !{!125, !126, !127, !150}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !123, file: !4, line: 57, baseType: !104, size: 64, align: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !123, file: !4, line: 58, baseType: !122, size: 64, align: 64, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !123, file: !4, line: 59, baseType: !128, size: 64, align: 64, offset: 128)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64, align: 64)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "deppossi", file: !4, line: 63, size: 640, align: 64, elements: !130)
!130 = !{!131, !132, !133, !134, !135, !136, !145, !146, !147, !149}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !129, file: !4, line: 64, baseType: !122, size: 64, align: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "ed", scope: !129, file: !4, line: 65, baseType: !91, size: 64, align: 64, offset: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !129, file: !4, line: 66, baseType: !128, size: 64, align: 64, offset: 128)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "rev_next", scope: !129, file: !4, line: 66, baseType: !128, size: 64, align: 64, offset: 192)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "rev_prev", scope: !129, file: !4, line: 66, baseType: !128, size: 64, align: 64, offset: 256)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !129, file: !4, line: 67, baseType: !137, size: 64, align: 64, offset: 320)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64, align: 64)
!138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_arch", file: !37, line: 48, size: 192, align: 64, elements: !140)
!140 = !{!141, !143, !144}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !139, file: !37, line: 49, baseType: !142, size: 64, align: 64)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64, align: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !139, file: !37, line: 50, baseType: !96, size: 64, align: 64, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !139, file: !37, line: 51, baseType: !36, size: 32, align: 32, offset: 128)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !129, file: !4, line: 68, baseType: !112, size: 192, align: 64, offset: 384)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "verrel", scope: !129, file: !4, line: 69, baseType: !47, size: 32, align: 32, offset: 576)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "arch_is_implicit", scope: !129, file: !4, line: 70, baseType: !148, size: 8, align: 8, offset: 608)
!148 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "cyclebreak", scope: !129, file: !4, line: 71, baseType: !148, size: 8, align: 8, offset: 616)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !123, file: !4, line: 60, baseType: !56, size: 32, align: 32, offset: 192)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "essential", scope: !119, file: !4, line: 110, baseType: !148, size: 8, align: 8, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "multiarch", scope: !119, file: !4, line: 111, baseType: !67, size: 32, align: 32, offset: 96)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !119, file: !4, line: 112, baseType: !137, size: 64, align: 64, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "pkgname_archqual", scope: !119, file: !4, line: 115, baseType: !96, size: 64, align: 64, offset: 192)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !119, file: !4, line: 116, baseType: !96, size: 64, align: 64, offset: 256)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "maintainer", scope: !119, file: !4, line: 117, baseType: !96, size: 64, align: 64, offset: 320)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !119, file: !4, line: 118, baseType: !96, size: 64, align: 64, offset: 384)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "installedsize", scope: !119, file: !4, line: 119, baseType: !96, size: 64, align: 64, offset: 448)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !119, file: !4, line: 120, baseType: !96, size: 64, align: 64, offset: 512)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "bugs", scope: !119, file: !4, line: 121, baseType: !96, size: 64, align: 64, offset: 576)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !119, file: !4, line: 122, baseType: !112, size: 192, align: 64, offset: 640)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "conffiles", scope: !119, file: !4, line: 123, baseType: !163, size: 64, align: 64, offset: 832)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64, align: 64)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conffile", file: !4, line: 80, size: 256, align: 64, elements: !165)
!165 = !{!166, !167, !168, !169}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !164, file: !4, line: 81, baseType: !163, size: 64, align: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !164, file: !4, line: 82, baseType: !96, size: 64, align: 64, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !164, file: !4, line: 83, baseType: !96, size: 64, align: 64, offset: 128)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "obsolete", scope: !164, file: !4, line: 84, baseType: !148, size: 8, align: 8, offset: 192)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "arbs", scope: !119, file: !4, line: 124, baseType: !171, size: 64, align: 64, offset: 896)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64, align: 64)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arbitraryfield", file: !4, line: 74, size: 192, align: 64, elements: !173)
!173 = !{!174, !175, !176}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !172, file: !4, line: 75, baseType: !171, size: 64, align: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !172, file: !4, line: 76, baseType: !96, size: 64, align: 64, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !172, file: !4, line: 77, baseType: !96, size: 64, align: 64, offset: 128)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !100, file: !4, line: 208, baseType: !119, size: 960, align: 64, offset: 1536)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "clientdata", scope: !100, file: !4, line: 209, baseType: !179, size: 64, align: 64, offset: 2496)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64, align: 64)
!180 = !DICompositeType(tag: DW_TAG_structure_type, name: "perpackagestate", file: !4, line: 151, flags: DIFlagFwdDecl)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "archives", scope: !100, file: !4, line: 211, baseType: !182, size: 64, align: 64, offset: 2560)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64, align: 64)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archivedetails", file: !4, line: 87, size: 320, align: 64, elements: !184)
!184 = !{!185, !186, !187, !188, !189}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !183, file: !4, line: 88, baseType: !182, size: 64, align: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !183, file: !4, line: 89, baseType: !96, size: 64, align: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "msdosname", scope: !183, file: !4, line: 90, baseType: !96, size: 64, align: 64, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !183, file: !4, line: 91, baseType: !96, size: 64, align: 64, offset: 192)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "md5sum", scope: !183, file: !4, line: 92, baseType: !96, size: 64, align: 64, offset: 256)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "trigaw", scope: !100, file: !4, line: 216, baseType: !191, size: 128, align: 64, offset: 2624)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !100, file: !4, line: 213, size: 128, align: 64, elements: !192)
!192 = !{!193, !205}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !191, file: !4, line: 215, baseType: !194, size: 64, align: 64)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64, align: 64)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigaw", file: !4, line: 142, size: 320, align: 64, elements: !196)
!196 = !{!197, !198, !199, !200}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "aw", scope: !195, file: !4, line: 143, baseType: !104, size: 64, align: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "pend", scope: !195, file: !4, line: 143, baseType: !104, size: 64, align: 64, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "samepend_next", scope: !195, file: !4, line: 144, baseType: !194, size: 64, align: 64, offset: 128)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "sameaw", scope: !195, file: !4, line: 147, baseType: !201, size: 128, align: 64, offset: 192)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !195, file: !4, line: 145, size: 128, align: 64, elements: !202)
!202 = !{!203, !204}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !201, file: !4, line: 146, baseType: !194, size: 64, align: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !201, file: !4, line: 146, baseType: !194, size: 64, align: 64, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !191, file: !4, line: 215, baseType: !194, size: 64, align: 64, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "othertrigaw_head", scope: !100, file: !4, line: 219, baseType: !194, size: 64, align: 64, offset: 2752)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "trigpend_head", scope: !100, file: !4, line: 220, baseType: !208, size: 64, align: 64, offset: 2816)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64, align: 64)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigpend", file: !4, line: 134, size: 128, align: 64, elements: !210)
!210 = !{!211, !212}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !209, file: !4, line: 135, baseType: !208, size: 64, align: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !209, file: !4, line: 136, baseType: !96, size: 64, align: 64, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !100, file: !4, line: 231, baseType: !214, size: 64, align: 64, offset: 2880)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64, align: 64)
!215 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode_list", file: !4, line: 231, flags: DIFlagFwdDecl)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_phys_offs", scope: !100, file: !4, line: 232, baseType: !217, size: 64, align: 64, offset: 2944)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !218, line: 86, baseType: !219)
!218 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !220, line: 131, baseType: !221)
!220 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!221 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_valid", scope: !100, file: !4, line: 233, baseType: !148, size: 8, align: 8, offset: 3008)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "status_dirty", scope: !100, file: !4, line: 236, baseType: !148, size: 8, align: 8, offset: 3016)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "depended", scope: !92, file: !4, line: 249, baseType: !225, size: 128, align: 64, offset: 3200)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !92, file: !4, line: 246, size: 128, align: 64, elements: !226)
!226 = !{!227, !228}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !225, file: !4, line: 247, baseType: !128, size: 64, align: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !225, file: !4, line: 248, baseType: !128, size: 64, align: 64, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "installed_instances", scope: !92, file: !4, line: 250, baseType: !230, size: 32, align: 32, offset: 3328)
!230 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!231 = !{!232}
!232 = !DISubrange(count: 65521)
!233 = distinct !DIGlobalVariable(name: "npkg", scope: !0, file: !89, line: 49, type: !230, isLocal: true, isDefinition: true, variable: i32* @npkg)
!234 = distinct !DIGlobalVariable(name: "nset", scope: !0, file: !89, line: 49, type: !230, isLocal: true, isDefinition: true, variable: i32* @nset)
!235 = !{i32 2, !"Dwarf Version", i32 4}
!236 = !{i32 2, !"Debug Info Version", i32 3}
!237 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!238 = distinct !DISubprogram(name: "pkg_hash_find_set", scope: !89, file: !89, line: 68, type: !239, isLocal: false, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !241)
!239 = !DISubroutineType(types: !240)
!240 = !{!91, !96}
!241 = !{}
!242 = !DILocalVariable(name: "inname", arg: 1, scope: !238, file: !89, line: 68, type: !96)
!243 = !DIExpression()
!244 = !DILocation(line: 68, column: 31, scope: !238)
!245 = !DILocalVariable(name: "setp", scope: !238, file: !89, line: 70, type: !246)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64, align: 64)
!247 = !DILocation(line: 70, column: 19, scope: !238)
!248 = !DILocalVariable(name: "new_set", scope: !238, file: !89, line: 70, type: !91)
!249 = !DILocation(line: 70, column: 26, scope: !238)
!250 = !DILocalVariable(name: "name", scope: !238, file: !89, line: 71, type: !251)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64, align: 64)
!252 = !DILocation(line: 71, column: 9, scope: !238)
!253 = !DILocation(line: 71, column: 25, scope: !238)
!254 = !DILocation(line: 71, column: 16, scope: !238)
!255 = !DILocalVariable(name: "p", scope: !238, file: !89, line: 71, type: !251)
!256 = !DILocation(line: 71, column: 35, scope: !238)
!257 = !DILocation(line: 73, column: 6, scope: !238)
!258 = !DILocation(line: 73, column: 4, scope: !238)
!259 = !DILocation(line: 74, column: 3, scope: !238)
!260 = !DILocation(line: 74, column: 11, scope: !261)
!261 = !DILexicalBlockFile(scope: !238, file: !89, discriminator: 1)
!262 = !DILocation(line: 74, column: 10, scope: !261)
!263 = !DILocation(line: 74, column: 3, scope: !261)
!264 = !DILocation(line: 75, column: 21, scope: !265)
!265 = distinct !DILexicalBlock(scope: !238, file: !89, line: 74, column: 14)
!266 = !DILocation(line: 75, column: 20, scope: !265)
!267 = !DILocation(line: 75, column: 10, scope: !265)
!268 = !DILocation(line: 75, column: 6, scope: !265)
!269 = !DILocation(line: 75, column: 8, scope: !265)
!270 = !DILocation(line: 76, column: 6, scope: !265)
!271 = !DILocation(line: 74, column: 3, scope: !272)
!272 = !DILexicalBlockFile(scope: !238, file: !89, discriminator: 2)
!273 = distinct !{!273, !259}
!274 = !DILocation(line: 79, column: 31, scope: !238)
!275 = !DILocation(line: 79, column: 18, scope: !238)
!276 = !DILocation(line: 79, column: 37, scope: !238)
!277 = !DILocation(line: 79, column: 15, scope: !238)
!278 = !DILocation(line: 79, column: 8, scope: !238)
!279 = !DILocation(line: 80, column: 3, scope: !238)
!280 = !DILocation(line: 80, column: 11, scope: !261)
!281 = !DILocation(line: 80, column: 10, scope: !261)
!282 = !DILocation(line: 80, column: 16, scope: !261)
!283 = !DILocation(line: 80, column: 32, scope: !272)
!284 = !DILocation(line: 80, column: 31, scope: !272)
!285 = !DILocation(line: 80, column: 39, scope: !272)
!286 = !DILocation(line: 80, column: 45, scope: !272)
!287 = !DILocation(line: 80, column: 19, scope: !272)
!288 = !DILocation(line: 80, column: 16, scope: !272)
!289 = !DILocation(line: 80, column: 3, scope: !290)
!290 = !DILexicalBlockFile(scope: !238, file: !89, discriminator: 3)
!291 = !DILocation(line: 81, column: 15, scope: !238)
!292 = !DILocation(line: 81, column: 14, scope: !238)
!293 = !DILocation(line: 81, column: 22, scope: !238)
!294 = !DILocation(line: 81, column: 10, scope: !238)
!295 = !DILocation(line: 80, column: 3, scope: !296)
!296 = !DILexicalBlockFile(scope: !238, file: !89, discriminator: 4)
!297 = distinct !{!297, !279}
!298 = !DILocation(line: 82, column: 8, scope: !299)
!299 = distinct !DILexicalBlock(scope: !238, file: !89, line: 82, column: 7)
!300 = !DILocation(line: 82, column: 7, scope: !299)
!301 = !DILocation(line: 82, column: 7, scope: !238)
!302 = !DILocation(line: 83, column: 10, scope: !303)
!303 = distinct !DILexicalBlock(scope: !299, file: !89, line: 82, column: 14)
!304 = !DILocation(line: 83, column: 5, scope: !303)
!305 = !DILocation(line: 84, column: 13, scope: !303)
!306 = !DILocation(line: 84, column: 12, scope: !303)
!307 = !DILocation(line: 84, column: 5, scope: !303)
!308 = !DILocation(line: 87, column: 13, scope: !238)
!309 = !DILocation(line: 87, column: 11, scope: !238)
!310 = !DILocation(line: 88, column: 16, scope: !238)
!311 = !DILocation(line: 88, column: 3, scope: !238)
!312 = !DILocation(line: 89, column: 29, scope: !238)
!313 = !DILocation(line: 89, column: 19, scope: !238)
!314 = !DILocation(line: 89, column: 3, scope: !238)
!315 = !DILocation(line: 89, column: 12, scope: !238)
!316 = !DILocation(line: 89, column: 17, scope: !238)
!317 = !DILocation(line: 90, column: 3, scope: !238)
!318 = !DILocation(line: 90, column: 12, scope: !238)
!319 = !DILocation(line: 90, column: 17, scope: !238)
!320 = !DILocation(line: 91, column: 11, scope: !238)
!321 = !DILocation(line: 91, column: 4, scope: !238)
!322 = !DILocation(line: 91, column: 9, scope: !238)
!323 = !DILocation(line: 92, column: 7, scope: !238)
!324 = !DILocation(line: 93, column: 7, scope: !238)
!325 = !DILocation(line: 95, column: 8, scope: !238)
!326 = !DILocation(line: 95, column: 3, scope: !238)
!327 = !DILocation(line: 97, column: 10, scope: !238)
!328 = !DILocation(line: 97, column: 3, scope: !238)
!329 = !DILocation(line: 98, column: 1, scope: !238)
!330 = distinct !DISubprogram(name: "c_tolower", scope: !74, file: !74, line: 123, type: !331, isLocal: true, isDefinition: true, scopeLine: 124, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !241)
!331 = !DISubroutineType(types: !332)
!332 = !{!230, !230}
!333 = !DILocalVariable(name: "c", arg: 1, scope: !330, file: !74, line: 123, type: !230)
!334 = !DILocation(line: 123, column: 15, scope: !330)
!335 = !DILocation(line: 125, column: 20, scope: !330)
!336 = !DILocation(line: 125, column: 10, scope: !330)
!337 = !DILocation(line: 125, column: 41, scope: !338)
!338 = !DILexicalBlockFile(scope: !330, file: !74, discriminator: 1)
!339 = !DILocation(line: 125, column: 26, scope: !338)
!340 = !DILocation(line: 125, column: 43, scope: !338)
!341 = !DILocation(line: 125, column: 52, scope: !338)
!342 = !DILocation(line: 125, column: 10, scope: !338)
!343 = !DILocation(line: 125, column: 61, scope: !344)
!344 = !DILexicalBlockFile(scope: !330, file: !74, discriminator: 2)
!345 = !DILocation(line: 125, column: 10, scope: !344)
!346 = !DILocation(line: 125, column: 10, scope: !347)
!347 = !DILexicalBlockFile(scope: !330, file: !74, discriminator: 3)
!348 = !DILocation(line: 125, column: 2, scope: !347)
!349 = distinct !DISubprogram(name: "pkg_hash_get_singleton", scope: !89, file: !89, line: 112, type: !350, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !241)
!350 = !DISubroutineType(types: !351)
!351 = !{!104, !91}
!352 = !DILocalVariable(name: "set", arg: 1, scope: !349, file: !89, line: 112, type: !91)
!353 = !DILocation(line: 112, column: 39, scope: !349)
!354 = !DILocalVariable(name: "pkg", scope: !349, file: !89, line: 114, type: !104)
!355 = !DILocation(line: 114, column: 19, scope: !349)
!356 = !DILocation(line: 116, column: 38, scope: !349)
!357 = !DILocation(line: 116, column: 11, scope: !349)
!358 = !DILocation(line: 116, column: 3, scope: !349)
!359 = !DILocation(line: 119, column: 17, scope: !360)
!360 = distinct !DILexicalBlock(scope: !361, file: !89, line: 119, column: 5)
!361 = distinct !DILexicalBlock(scope: !349, file: !89, line: 116, column: 44)
!362 = !DILocation(line: 119, column: 22, scope: !360)
!363 = !DILocation(line: 119, column: 14, scope: !360)
!364 = !DILocation(line: 119, column: 10, scope: !360)
!365 = !DILocation(line: 119, column: 27, scope: !366)
!366 = !DILexicalBlockFile(scope: !367, file: !89, discriminator: 1)
!367 = distinct !DILexicalBlock(scope: !360, file: !89, line: 119, column: 5)
!368 = !DILocation(line: 119, column: 5, scope: !366)
!369 = !DILocalVariable(name: "arch", scope: !370, file: !89, line: 120, type: !137)
!370 = distinct !DILexicalBlock(scope: !367, file: !89, line: 119, column: 54)
!371 = !DILocation(line: 120, column: 31, scope: !370)
!372 = !DILocation(line: 120, column: 38, scope: !370)
!373 = !DILocation(line: 120, column: 43, scope: !370)
!374 = !DILocation(line: 120, column: 53, scope: !370)
!375 = !DILocation(line: 122, column: 11, scope: !376)
!376 = distinct !DILexicalBlock(scope: !370, file: !89, line: 122, column: 11)
!377 = !DILocation(line: 122, column: 17, scope: !376)
!378 = !DILocation(line: 122, column: 22, scope: !376)
!379 = !DILocation(line: 122, column: 42, scope: !376)
!380 = !DILocation(line: 122, column: 45, scope: !381)
!381 = !DILexicalBlockFile(scope: !376, file: !89, discriminator: 1)
!382 = !DILocation(line: 122, column: 51, scope: !381)
!383 = !DILocation(line: 122, column: 56, scope: !381)
!384 = !DILocation(line: 122, column: 11, scope: !381)
!385 = !DILocation(line: 123, column: 16, scope: !376)
!386 = !DILocation(line: 123, column: 9, scope: !376)
!387 = !DILocation(line: 124, column: 5, scope: !370)
!388 = !DILocation(line: 119, column: 38, scope: !389)
!389 = !DILexicalBlockFile(scope: !367, file: !89, discriminator: 2)
!390 = !DILocation(line: 119, column: 43, scope: !389)
!391 = !DILocation(line: 119, column: 36, scope: !389)
!392 = !DILocation(line: 119, column: 5, scope: !389)
!393 = distinct !{!393, !394}
!394 = !DILocation(line: 119, column: 5, scope: !361)
!395 = !DILocation(line: 126, column: 13, scope: !361)
!396 = !DILocation(line: 126, column: 18, scope: !361)
!397 = !DILocation(line: 126, column: 5, scope: !361)
!398 = !DILocation(line: 128, column: 17, scope: !399)
!399 = distinct !DILexicalBlock(scope: !361, file: !89, line: 128, column: 5)
!400 = !DILocation(line: 128, column: 22, scope: !399)
!401 = !DILocation(line: 128, column: 14, scope: !399)
!402 = !DILocation(line: 128, column: 10, scope: !399)
!403 = !DILocation(line: 128, column: 27, scope: !404)
!404 = !DILexicalBlockFile(scope: !405, file: !89, discriminator: 1)
!405 = distinct !DILexicalBlock(scope: !399, file: !89, line: 128, column: 5)
!406 = !DILocation(line: 128, column: 5, scope: !404)
!407 = !DILocation(line: 129, column: 11, scope: !408)
!408 = distinct !DILexicalBlock(scope: !409, file: !89, line: 129, column: 11)
!409 = distinct !DILexicalBlock(scope: !405, file: !89, line: 128, column: 54)
!410 = !DILocation(line: 129, column: 16, scope: !408)
!411 = !DILocation(line: 129, column: 23, scope: !408)
!412 = !DILocation(line: 129, column: 11, scope: !409)
!413 = !DILocation(line: 130, column: 16, scope: !408)
!414 = !DILocation(line: 130, column: 9, scope: !408)
!415 = !DILocation(line: 131, column: 5, scope: !409)
!416 = !DILocation(line: 128, column: 38, scope: !417)
!417 = !DILexicalBlockFile(scope: !405, file: !89, discriminator: 2)
!418 = !DILocation(line: 128, column: 43, scope: !417)
!419 = !DILocation(line: 128, column: 36, scope: !417)
!420 = !DILocation(line: 128, column: 5, scope: !417)
!421 = distinct !{!421, !422}
!422 = !DILocation(line: 128, column: 5, scope: !361)
!423 = !DILocation(line: 132, column: 97, scope: !361)
!424 = !DILocation(line: 132, column: 102, scope: !361)
!425 = !DILocation(line: 132, column: 5, scope: !361)
!426 = !DILocation(line: 134, column: 5, scope: !361)
!427 = !DILocation(line: 136, column: 1, scope: !349)
!428 = distinct !DISubprogram(name: "pkg_hash_find_singleton", scope: !89, file: !89, line: 146, type: !429, isLocal: false, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !241)
!429 = !DISubroutineType(types: !430)
!430 = !{!104, !96}
!431 = !DILocalVariable(name: "name", arg: 1, scope: !428, file: !89, line: 146, type: !96)
!432 = !DILocation(line: 146, column: 37, scope: !428)
!433 = !DILocalVariable(name: "set", scope: !428, file: !89, line: 148, type: !91)
!434 = !DILocation(line: 148, column: 18, scope: !428)
!435 = !DILocalVariable(name: "pkg", scope: !428, file: !89, line: 149, type: !104)
!436 = !DILocation(line: 149, column: 19, scope: !428)
!437 = !DILocation(line: 151, column: 27, scope: !428)
!438 = !DILocation(line: 151, column: 9, scope: !428)
!439 = !DILocation(line: 151, column: 7, scope: !428)
!440 = !DILocation(line: 152, column: 32, scope: !428)
!441 = !DILocation(line: 152, column: 9, scope: !428)
!442 = !DILocation(line: 152, column: 7, scope: !428)
!443 = !DILocation(line: 153, column: 7, scope: !444)
!444 = distinct !DILexicalBlock(scope: !428, file: !89, line: 153, column: 7)
!445 = !DILocation(line: 153, column: 11, scope: !444)
!446 = !DILocation(line: 153, column: 7, scope: !428)
!447 = !DILocation(line: 154, column: 11, scope: !444)
!448 = !DILocation(line: 155, column: 45, scope: !444)
!449 = !DILocation(line: 155, column: 50, scope: !444)
!450 = !DILocation(line: 154, column: 5, scope: !451)
!451 = !DILexicalBlockFile(scope: !444, file: !89, discriminator: 1)
!452 = !DILocation(line: 154, column: 5, scope: !444)
!453 = !DILocation(line: 157, column: 10, scope: !428)
!454 = !DILocation(line: 157, column: 3, scope: !428)
!455 = distinct !DISubprogram(name: "pkg_hash_get_pkg", scope: !89, file: !89, line: 174, type: !456, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !241)
!456 = !DISubroutineType(types: !457)
!457 = !{!104, !91, !137}
!458 = !DILocalVariable(name: "set", arg: 1, scope: !455, file: !89, line: 174, type: !91)
!459 = !DILocation(line: 174, column: 33, scope: !455)
!460 = !DILocalVariable(name: "arch", arg: 2, scope: !455, file: !89, line: 174, type: !137)
!461 = !DILocation(line: 174, column: 62, scope: !455)
!462 = !DILocalVariable(name: "pkg", scope: !455, file: !89, line: 176, type: !104)
!463 = !DILocation(line: 176, column: 19, scope: !455)
!464 = !DILocalVariable(name: "pkgp", scope: !455, file: !89, line: 176, type: !465)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64, align: 64)
!466 = !DILocation(line: 176, column: 26, scope: !455)
!467 = !DILocation(line: 178, column: 7, scope: !468)
!468 = distinct !DILexicalBlock(scope: !455, file: !89, line: 178, column: 7)
!469 = !DILocation(line: 178, column: 12, scope: !468)
!470 = !DILocation(line: 178, column: 7, scope: !455)
!471 = !DILocation(line: 179, column: 5, scope: !468)
!472 = !DILocation(line: 180, column: 7, scope: !473)
!473 = distinct !DILexicalBlock(scope: !455, file: !89, line: 180, column: 7)
!474 = !DILocation(line: 180, column: 13, scope: !473)
!475 = !DILocation(line: 180, column: 18, scope: !473)
!476 = !DILocation(line: 180, column: 7, scope: !455)
!477 = !DILocation(line: 181, column: 5, scope: !473)
!478 = !DILocation(line: 183, column: 10, scope: !455)
!479 = !DILocation(line: 183, column: 15, scope: !455)
!480 = !DILocation(line: 183, column: 7, scope: !455)
!481 = !DILocation(line: 186, column: 7, scope: !482)
!482 = distinct !DILexicalBlock(scope: !455, file: !89, line: 186, column: 7)
!483 = !DILocation(line: 186, column: 12, scope: !482)
!484 = !DILocation(line: 186, column: 22, scope: !482)
!485 = !DILocation(line: 186, column: 28, scope: !482)
!486 = !DILocation(line: 186, column: 33, scope: !482)
!487 = !DILocation(line: 186, column: 51, scope: !482)
!488 = !DILocation(line: 186, column: 54, scope: !489)
!489 = !DILexicalBlockFile(scope: !482, file: !89, discriminator: 1)
!490 = !DILocation(line: 186, column: 59, scope: !489)
!491 = !DILocation(line: 186, column: 69, scope: !489)
!492 = !DILocation(line: 186, column: 7, scope: !489)
!493 = !DILocation(line: 189, column: 27, scope: !494)
!494 = distinct !DILexicalBlock(scope: !482, file: !89, line: 186, column: 77)
!495 = !DILocation(line: 189, column: 5, scope: !494)
!496 = !DILocation(line: 189, column: 10, scope: !494)
!497 = !DILocation(line: 189, column: 20, scope: !494)
!498 = !DILocation(line: 189, column: 25, scope: !494)
!499 = !DILocation(line: 190, column: 27, scope: !494)
!500 = !DILocation(line: 190, column: 5, scope: !494)
!501 = !DILocation(line: 190, column: 10, scope: !494)
!502 = !DILocation(line: 190, column: 20, scope: !494)
!503 = !DILocation(line: 190, column: 25, scope: !494)
!504 = !DILocation(line: 191, column: 12, scope: !494)
!505 = !DILocation(line: 191, column: 5, scope: !494)
!506 = !DILocation(line: 197, column: 13, scope: !507)
!507 = distinct !DILexicalBlock(scope: !455, file: !89, line: 197, column: 3)
!508 = !DILocation(line: 197, column: 8, scope: !507)
!509 = !DILocation(line: 197, column: 22, scope: !510)
!510 = !DILexicalBlockFile(scope: !511, file: !89, discriminator: 1)
!511 = distinct !DILexicalBlock(scope: !507, file: !89, line: 197, column: 3)
!512 = !DILocation(line: 197, column: 21, scope: !510)
!513 = !DILocation(line: 197, column: 3, scope: !510)
!514 = !DILocation(line: 198, column: 11, scope: !515)
!515 = distinct !DILexicalBlock(scope: !516, file: !89, line: 198, column: 9)
!516 = distinct !DILexicalBlock(scope: !511, file: !89, line: 197, column: 56)
!517 = !DILocation(line: 198, column: 10, scope: !515)
!518 = !DILocation(line: 198, column: 18, scope: !515)
!519 = !DILocation(line: 198, column: 28, scope: !515)
!520 = !DILocation(line: 198, column: 36, scope: !515)
!521 = !DILocation(line: 198, column: 33, scope: !515)
!522 = !DILocation(line: 198, column: 9, scope: !516)
!523 = !DILocation(line: 199, column: 15, scope: !515)
!524 = !DILocation(line: 199, column: 14, scope: !515)
!525 = !DILocation(line: 199, column: 7, scope: !515)
!526 = !DILocation(line: 200, column: 3, scope: !516)
!527 = !DILocation(line: 197, column: 38, scope: !528)
!528 = !DILexicalBlockFile(scope: !511, file: !89, discriminator: 2)
!529 = !DILocation(line: 197, column: 37, scope: !528)
!530 = !DILocation(line: 197, column: 45, scope: !528)
!531 = !DILocation(line: 197, column: 33, scope: !528)
!532 = !DILocation(line: 197, column: 3, scope: !528)
!533 = distinct !{!533, !534}
!534 = !DILocation(line: 197, column: 3, scope: !455)
!535 = !DILocation(line: 203, column: 9, scope: !455)
!536 = !DILocation(line: 203, column: 7, scope: !455)
!537 = !DILocation(line: 204, column: 13, scope: !455)
!538 = !DILocation(line: 204, column: 3, scope: !455)
!539 = !DILocation(line: 205, column: 14, scope: !455)
!540 = !DILocation(line: 205, column: 3, scope: !455)
!541 = !DILocation(line: 205, column: 8, scope: !455)
!542 = !DILocation(line: 205, column: 12, scope: !455)
!543 = !DILocation(line: 206, column: 3, scope: !455)
!544 = !DILocation(line: 206, column: 8, scope: !455)
!545 = !DILocation(line: 206, column: 18, scope: !455)
!546 = !DILocation(line: 209, column: 25, scope: !455)
!547 = !DILocation(line: 209, column: 3, scope: !455)
!548 = !DILocation(line: 209, column: 8, scope: !455)
!549 = !DILocation(line: 209, column: 18, scope: !455)
!550 = !DILocation(line: 209, column: 23, scope: !455)
!551 = !DILocation(line: 210, column: 25, scope: !455)
!552 = !DILocation(line: 210, column: 3, scope: !455)
!553 = !DILocation(line: 210, column: 8, scope: !455)
!554 = !DILocation(line: 210, column: 18, scope: !455)
!555 = !DILocation(line: 210, column: 23, scope: !455)
!556 = !DILocation(line: 211, column: 11, scope: !455)
!557 = !DILocation(line: 211, column: 4, scope: !455)
!558 = !DILocation(line: 211, column: 9, scope: !455)
!559 = !DILocation(line: 212, column: 7, scope: !455)
!560 = !DILocation(line: 214, column: 10, scope: !455)
!561 = !DILocation(line: 214, column: 3, scope: !455)
!562 = !DILocation(line: 215, column: 1, scope: !455)
!563 = distinct !DISubprogram(name: "pkg_hash_find_pkg", scope: !89, file: !89, line: 226, type: !564, isLocal: false, isDefinition: true, scopeLine: 227, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !241)
!564 = !DISubroutineType(types: !565)
!565 = !{!104, !96, !137}
!566 = !DILocalVariable(name: "name", arg: 1, scope: !563, file: !89, line: 226, type: !96)
!567 = !DILocation(line: 226, column: 31, scope: !563)
!568 = !DILocalVariable(name: "arch", arg: 2, scope: !563, file: !89, line: 226, type: !137)
!569 = !DILocation(line: 226, column: 61, scope: !563)
!570 = !DILocalVariable(name: "set", scope: !563, file: !89, line: 228, type: !91)
!571 = !DILocation(line: 228, column: 18, scope: !563)
!572 = !DILocalVariable(name: "pkg", scope: !563, file: !89, line: 229, type: !104)
!573 = !DILocation(line: 229, column: 19, scope: !563)
!574 = !DILocation(line: 231, column: 27, scope: !563)
!575 = !DILocation(line: 231, column: 9, scope: !563)
!576 = !DILocation(line: 231, column: 7, scope: !563)
!577 = !DILocation(line: 232, column: 26, scope: !563)
!578 = !DILocation(line: 232, column: 31, scope: !563)
!579 = !DILocation(line: 232, column: 9, scope: !563)
!580 = !DILocation(line: 232, column: 7, scope: !563)
!581 = !DILocation(line: 234, column: 10, scope: !563)
!582 = !DILocation(line: 234, column: 3, scope: !563)
!583 = distinct !DISubprogram(name: "pkg_hash_count_set", scope: !89, file: !89, line: 243, type: !584, isLocal: false, isDefinition: true, scopeLine: 244, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !241)
!584 = !DISubroutineType(types: !585)
!585 = !{!230}
!586 = !DILocation(line: 245, column: 10, scope: !583)
!587 = !DILocation(line: 245, column: 3, scope: !583)
!588 = distinct !DISubprogram(name: "pkg_hash_count_pkg", scope: !89, file: !89, line: 254, type: !584, isLocal: false, isDefinition: true, scopeLine: 255, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !241)
!589 = !DILocation(line: 256, column: 10, scope: !588)
!590 = !DILocation(line: 256, column: 3, scope: !588)
!591 = distinct !DISubprogram(name: "pkg_hash_iter_new", scope: !89, file: !89, line: 272, type: !592, isLocal: false, isDefinition: true, scopeLine: 273, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !241)
!592 = !DISubroutineType(types: !593)
!593 = !{!594}
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64, align: 64)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_hash_iter", file: !89, line: 259, size: 128, align: 64, elements: !596)
!596 = !{!597, !598}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !595, file: !89, line: 260, baseType: !104, size: 64, align: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "nbinn", scope: !595, file: !89, line: 261, baseType: !230, size: 32, align: 32, offset: 64)
!599 = !DILocalVariable(name: "iter", scope: !591, file: !89, line: 274, type: !594)
!600 = !DILocation(line: 274, column: 25, scope: !591)
!601 = !DILocation(line: 276, column: 10, scope: !591)
!602 = !DILocation(line: 276, column: 8, scope: !591)
!603 = !DILocation(line: 277, column: 3, scope: !591)
!604 = !DILocation(line: 277, column: 9, scope: !591)
!605 = !DILocation(line: 277, column: 13, scope: !591)
!606 = !DILocation(line: 278, column: 3, scope: !591)
!607 = !DILocation(line: 278, column: 9, scope: !591)
!608 = !DILocation(line: 278, column: 15, scope: !591)
!609 = !DILocation(line: 280, column: 10, scope: !591)
!610 = !DILocation(line: 280, column: 3, scope: !591)
!611 = distinct !DISubprogram(name: "pkg_hash_iter_next_set", scope: !89, file: !89, line: 293, type: !612, isLocal: false, isDefinition: true, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !241)
!612 = !DISubroutineType(types: !613)
!613 = !{!91, !594}
!614 = !DILocalVariable(name: "iter", arg: 1, scope: !611, file: !89, line: 293, type: !594)
!615 = !DILocation(line: 293, column: 46, scope: !611)
!616 = !DILocalVariable(name: "set", scope: !611, file: !89, line: 295, type: !91)
!617 = !DILocation(line: 295, column: 18, scope: !611)
!618 = !DILocation(line: 297, column: 3, scope: !611)
!619 = !DILocation(line: 297, column: 11, scope: !620)
!620 = !DILexicalBlockFile(scope: !611, file: !89, discriminator: 1)
!621 = !DILocation(line: 297, column: 17, scope: !620)
!622 = !DILocation(line: 297, column: 10, scope: !620)
!623 = !DILocation(line: 297, column: 3, scope: !620)
!624 = !DILocation(line: 298, column: 9, scope: !625)
!625 = distinct !DILexicalBlock(scope: !626, file: !89, line: 298, column: 9)
!626 = distinct !DILexicalBlock(scope: !611, file: !89, line: 297, column: 22)
!627 = !DILocation(line: 298, column: 15, scope: !625)
!628 = !DILocation(line: 298, column: 21, scope: !625)
!629 = !DILocation(line: 298, column: 9, scope: !626)
!630 = !DILocation(line: 299, column: 7, scope: !625)
!631 = !DILocation(line: 300, column: 14, scope: !632)
!632 = distinct !DILexicalBlock(scope: !626, file: !89, line: 300, column: 9)
!633 = !DILocation(line: 300, column: 20, scope: !632)
!634 = !DILocation(line: 300, column: 9, scope: !632)
!635 = !DILocation(line: 300, column: 9, scope: !626)
!636 = !DILocation(line: 301, column: 25, scope: !632)
!637 = !DILocation(line: 301, column: 31, scope: !632)
!638 = !DILocation(line: 301, column: 20, scope: !632)
!639 = !DILocation(line: 301, column: 39, scope: !632)
!640 = !DILocation(line: 301, column: 7, scope: !632)
!641 = !DILocation(line: 301, column: 13, scope: !632)
!642 = !DILocation(line: 301, column: 17, scope: !632)
!643 = !DILocation(line: 302, column: 5, scope: !626)
!644 = !DILocation(line: 302, column: 11, scope: !626)
!645 = !DILocation(line: 302, column: 16, scope: !626)
!646 = !DILocation(line: 297, column: 3, scope: !647)
!647 = !DILexicalBlockFile(scope: !611, file: !89, discriminator: 2)
!648 = distinct !{!648, !618}
!649 = !DILocation(line: 305, column: 9, scope: !611)
!650 = !DILocation(line: 305, column: 15, scope: !611)
!651 = !DILocation(line: 305, column: 20, scope: !611)
!652 = !DILocation(line: 305, column: 7, scope: !611)
!653 = !DILocation(line: 306, column: 7, scope: !654)
!654 = distinct !DILexicalBlock(scope: !611, file: !89, line: 306, column: 7)
!655 = !DILocation(line: 306, column: 12, scope: !654)
!656 = !DILocation(line: 306, column: 7, scope: !611)
!657 = !DILocation(line: 307, column: 18, scope: !654)
!658 = !DILocation(line: 307, column: 23, scope: !654)
!659 = !DILocation(line: 307, column: 29, scope: !654)
!660 = !DILocation(line: 307, column: 5, scope: !654)
!661 = !DILocation(line: 307, column: 11, scope: !654)
!662 = !DILocation(line: 307, column: 15, scope: !654)
!663 = !DILocation(line: 309, column: 5, scope: !654)
!664 = !DILocation(line: 309, column: 11, scope: !654)
!665 = !DILocation(line: 309, column: 15, scope: !654)
!666 = !DILocation(line: 311, column: 10, scope: !611)
!667 = !DILocation(line: 311, column: 3, scope: !611)
!668 = !DILocation(line: 312, column: 1, scope: !611)
!669 = distinct !DISubprogram(name: "pkg_hash_iter_next_pkg", scope: !89, file: !89, line: 328, type: !670, isLocal: false, isDefinition: true, scopeLine: 329, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !241)
!670 = !DISubroutineType(types: !671)
!671 = !{!104, !594}
!672 = !DILocalVariable(name: "iter", arg: 1, scope: !669, file: !89, line: 328, type: !594)
!673 = !DILocation(line: 328, column: 46, scope: !669)
!674 = !DILocalVariable(name: "pkg", scope: !669, file: !89, line: 330, type: !104)
!675 = !DILocation(line: 330, column: 19, scope: !669)
!676 = !DILocation(line: 332, column: 3, scope: !669)
!677 = !DILocation(line: 332, column: 11, scope: !678)
!678 = !DILexicalBlockFile(scope: !669, file: !89, discriminator: 1)
!679 = !DILocation(line: 332, column: 17, scope: !678)
!680 = !DILocation(line: 332, column: 10, scope: !678)
!681 = !DILocation(line: 332, column: 3, scope: !678)
!682 = !DILocation(line: 333, column: 9, scope: !683)
!683 = distinct !DILexicalBlock(scope: !684, file: !89, line: 333, column: 9)
!684 = distinct !DILexicalBlock(scope: !669, file: !89, line: 332, column: 22)
!685 = !DILocation(line: 333, column: 15, scope: !683)
!686 = !DILocation(line: 333, column: 21, scope: !683)
!687 = !DILocation(line: 333, column: 9, scope: !684)
!688 = !DILocation(line: 334, column: 7, scope: !683)
!689 = !DILocation(line: 335, column: 14, scope: !690)
!690 = distinct !DILexicalBlock(scope: !684, file: !89, line: 335, column: 9)
!691 = !DILocation(line: 335, column: 20, scope: !690)
!692 = !DILocation(line: 335, column: 9, scope: !690)
!693 = !DILocation(line: 335, column: 9, scope: !684)
!694 = !DILocation(line: 336, column: 25, scope: !690)
!695 = !DILocation(line: 336, column: 31, scope: !690)
!696 = !DILocation(line: 336, column: 20, scope: !690)
!697 = !DILocation(line: 336, column: 39, scope: !690)
!698 = !DILocation(line: 336, column: 7, scope: !690)
!699 = !DILocation(line: 336, column: 13, scope: !690)
!700 = !DILocation(line: 336, column: 17, scope: !690)
!701 = !DILocation(line: 337, column: 5, scope: !684)
!702 = !DILocation(line: 337, column: 11, scope: !684)
!703 = !DILocation(line: 337, column: 16, scope: !684)
!704 = !DILocation(line: 332, column: 3, scope: !705)
!705 = !DILexicalBlockFile(scope: !669, file: !89, discriminator: 2)
!706 = distinct !{!706, !676}
!707 = !DILocation(line: 340, column: 9, scope: !669)
!708 = !DILocation(line: 340, column: 15, scope: !669)
!709 = !DILocation(line: 340, column: 7, scope: !669)
!710 = !DILocation(line: 341, column: 7, scope: !711)
!711 = distinct !DILexicalBlock(scope: !669, file: !89, line: 341, column: 7)
!712 = !DILocation(line: 341, column: 12, scope: !711)
!713 = !DILocation(line: 341, column: 7, scope: !669)
!714 = !DILocation(line: 342, column: 17, scope: !711)
!715 = !DILocation(line: 342, column: 22, scope: !711)
!716 = !DILocation(line: 342, column: 5, scope: !711)
!717 = !DILocation(line: 342, column: 11, scope: !711)
!718 = !DILocation(line: 342, column: 15, scope: !711)
!719 = !DILocation(line: 343, column: 12, scope: !720)
!720 = distinct !DILexicalBlock(scope: !711, file: !89, line: 343, column: 12)
!721 = !DILocation(line: 343, column: 17, scope: !720)
!722 = !DILocation(line: 343, column: 22, scope: !720)
!723 = !DILocation(line: 343, column: 12, scope: !711)
!724 = !DILocation(line: 344, column: 18, scope: !720)
!725 = !DILocation(line: 344, column: 23, scope: !720)
!726 = !DILocation(line: 344, column: 28, scope: !720)
!727 = !DILocation(line: 344, column: 34, scope: !720)
!728 = !DILocation(line: 344, column: 5, scope: !720)
!729 = !DILocation(line: 344, column: 11, scope: !720)
!730 = !DILocation(line: 344, column: 15, scope: !720)
!731 = !DILocation(line: 346, column: 5, scope: !720)
!732 = !DILocation(line: 346, column: 11, scope: !720)
!733 = !DILocation(line: 346, column: 15, scope: !720)
!734 = !DILocation(line: 348, column: 10, scope: !669)
!735 = !DILocation(line: 348, column: 3, scope: !669)
!736 = !DILocation(line: 349, column: 1, scope: !669)
!737 = distinct !DISubprogram(name: "pkg_hash_iter_free", scope: !89, file: !89, line: 357, type: !738, isLocal: false, isDefinition: true, scopeLine: 358, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !241)
!738 = !DISubroutineType(types: !739)
!739 = !{null, !594}
!740 = !DILocalVariable(name: "iter", arg: 1, scope: !737, file: !89, line: 357, type: !594)
!741 = !DILocation(line: 357, column: 42, scope: !737)
!742 = !DILocation(line: 359, column: 8, scope: !737)
!743 = !DILocation(line: 359, column: 3, scope: !737)
!744 = !DILocation(line: 360, column: 1, scope: !737)
!745 = distinct !DISubprogram(name: "pkg_hash_reset", scope: !89, file: !89, line: 363, type: !746, isLocal: false, isDefinition: true, scopeLine: 364, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !241)
!746 = !DISubroutineType(types: !747)
!747 = !{null}
!748 = !DILocalVariable(name: "i", scope: !745, file: !89, line: 365, type: !230)
!749 = !DILocation(line: 365, column: 7, scope: !745)
!750 = !DILocation(line: 367, column: 3, scope: !745)
!751 = !DILocation(line: 368, column: 3, scope: !745)
!752 = !DILocation(line: 369, column: 8, scope: !745)
!753 = !DILocation(line: 370, column: 8, scope: !745)
!754 = !DILocation(line: 371, column: 9, scope: !755)
!755 = distinct !DILexicalBlock(scope: !745, file: !89, line: 371, column: 3)
!756 = !DILocation(line: 371, column: 8, scope: !755)
!757 = !DILocation(line: 371, column: 13, scope: !758)
!758 = !DILexicalBlockFile(scope: !759, file: !89, discriminator: 1)
!759 = distinct !DILexicalBlock(scope: !755, file: !89, line: 371, column: 3)
!760 = !DILocation(line: 371, column: 14, scope: !758)
!761 = !DILocation(line: 371, column: 3, scope: !758)
!762 = !DILocation(line: 371, column: 32, scope: !763)
!763 = !DILexicalBlockFile(scope: !759, file: !89, discriminator: 2)
!764 = !DILocation(line: 371, column: 27, scope: !763)
!765 = !DILocation(line: 371, column: 34, scope: !763)
!766 = !DILocation(line: 371, column: 23, scope: !767)
!767 = !DILexicalBlockFile(scope: !759, file: !89, discriminator: 3)
!768 = !DILocation(line: 371, column: 3, scope: !767)
!769 = distinct !{!769, !770}
!770 = !DILocation(line: 371, column: 3, scope: !745)
!771 = !DILocation(line: 372, column: 1, scope: !745)
!772 = distinct !DISubprogram(name: "pkg_hash_report", scope: !89, file: !89, line: 375, type: !773, isLocal: false, isDefinition: true, scopeLine: 376, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !241)
!773 = !DISubroutineType(types: !774)
!774 = !{null, !775}
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64, align: 64)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !777, line: 48, baseType: !778)
!777 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !779, line: 241, size: 1728, align: 64, elements: !780)
!779 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!780 = !{!781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !801, !802, !803, !804, !805, !807, !809, !813, !816, !818, !819, !820, !821, !822, !826, !827}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !778, file: !779, line: 242, baseType: !230, size: 32, align: 32)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !778, file: !779, line: 247, baseType: !251, size: 64, align: 64, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !778, file: !779, line: 248, baseType: !251, size: 64, align: 64, offset: 128)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !778, file: !779, line: 249, baseType: !251, size: 64, align: 64, offset: 192)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !778, file: !779, line: 250, baseType: !251, size: 64, align: 64, offset: 256)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !778, file: !779, line: 251, baseType: !251, size: 64, align: 64, offset: 320)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !778, file: !779, line: 252, baseType: !251, size: 64, align: 64, offset: 384)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !778, file: !779, line: 253, baseType: !251, size: 64, align: 64, offset: 448)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !778, file: !779, line: 254, baseType: !251, size: 64, align: 64, offset: 512)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !778, file: !779, line: 256, baseType: !251, size: 64, align: 64, offset: 576)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !778, file: !779, line: 257, baseType: !251, size: 64, align: 64, offset: 640)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !778, file: !779, line: 258, baseType: !251, size: 64, align: 64, offset: 704)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !778, file: !779, line: 260, baseType: !794, size: 64, align: 64, offset: 768)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64, align: 64)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !779, line: 156, size: 192, align: 64, elements: !796)
!796 = !{!797, !798, !800}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !795, file: !779, line: 157, baseType: !794, size: 64, align: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !795, file: !779, line: 158, baseType: !799, size: 64, align: 64, offset: 64)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64, align: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !795, file: !779, line: 162, baseType: !230, size: 32, align: 32, offset: 128)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !778, file: !779, line: 262, baseType: !799, size: 64, align: 64, offset: 832)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !778, file: !779, line: 264, baseType: !230, size: 32, align: 32, offset: 896)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !778, file: !779, line: 268, baseType: !230, size: 32, align: 32, offset: 928)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !778, file: !779, line: 270, baseType: !219, size: 64, align: 64, offset: 960)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !778, file: !779, line: 274, baseType: !806, size: 16, align: 16, offset: 1024)
!806 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !778, file: !779, line: 275, baseType: !808, size: 8, align: 8, offset: 1040)
!808 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !778, file: !779, line: 276, baseType: !810, size: 8, align: 8, offset: 1048)
!810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 8, align: 8, elements: !811)
!811 = !{!812}
!812 = !DISubrange(count: 1)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !778, file: !779, line: 280, baseType: !814, size: 64, align: 64, offset: 1088)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64, align: 64)
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !779, line: 150, baseType: null)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !778, file: !779, line: 289, baseType: !817, size: 64, align: 64, offset: 1152)
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !220, line: 132, baseType: !221)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !778, file: !779, line: 297, baseType: !85, size: 64, align: 64, offset: 1216)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !778, file: !779, line: 298, baseType: !85, size: 64, align: 64, offset: 1280)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !778, file: !779, line: 299, baseType: !85, size: 64, align: 64, offset: 1344)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !778, file: !779, line: 300, baseType: !85, size: 64, align: 64, offset: 1408)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !778, file: !779, line: 302, baseType: !823, size: 64, align: 64, offset: 1472)
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !824, line: 216, baseType: !825)
!824 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!825 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !778, file: !779, line: 303, baseType: !230, size: 32, align: 32, offset: 1536)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !778, file: !779, line: 305, baseType: !828, size: 160, align: 8, offset: 1568)
!828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 160, align: 8, elements: !829)
!829 = !{!830}
!830 = !DISubrange(count: 20)
!831 = !DILocalVariable(name: "file", arg: 1, scope: !772, file: !89, line: 375, type: !775)
!832 = !DILocation(line: 375, column: 23, scope: !772)
!833 = !DILocalVariable(name: "i", scope: !772, file: !89, line: 377, type: !230)
!834 = !DILocation(line: 377, column: 7, scope: !772)
!835 = !DILocalVariable(name: "c", scope: !772, file: !89, line: 377, type: !230)
!836 = !DILocation(line: 377, column: 10, scope: !772)
!837 = !DILocalVariable(name: "pkg", scope: !772, file: !89, line: 378, type: !91)
!838 = !DILocation(line: 378, column: 18, scope: !772)
!839 = !DILocalVariable(name: "freq", scope: !772, file: !89, line: 379, type: !840)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64, align: 64)
!841 = !DILocation(line: 379, column: 8, scope: !772)
!842 = !DILocalVariable(name: "empty", scope: !772, file: !89, line: 380, type: !230)
!843 = !DILocation(line: 380, column: 7, scope: !772)
!844 = !DILocalVariable(name: "used", scope: !772, file: !89, line: 380, type: !230)
!845 = !DILocation(line: 380, column: 18, scope: !772)
!846 = !DILocalVariable(name: "collided", scope: !772, file: !89, line: 380, type: !230)
!847 = !DILocation(line: 380, column: 28, scope: !772)
!848 = !DILocation(line: 382, column: 33, scope: !772)
!849 = !DILocation(line: 382, column: 31, scope: !772)
!850 = !DILocation(line: 382, column: 38, scope: !772)
!851 = !DILocation(line: 382, column: 10, scope: !772)
!852 = !DILocation(line: 382, column: 8, scope: !772)
!853 = !DILocation(line: 383, column: 10, scope: !854)
!854 = distinct !DILexicalBlock(scope: !772, file: !89, line: 383, column: 3)
!855 = !DILocation(line: 383, column: 8, scope: !854)
!856 = !DILocation(line: 383, column: 15, scope: !857)
!857 = !DILexicalBlockFile(scope: !858, file: !89, discriminator: 1)
!858 = distinct !DILexicalBlock(scope: !854, file: !89, line: 383, column: 3)
!859 = !DILocation(line: 383, column: 20, scope: !857)
!860 = !DILocation(line: 383, column: 17, scope: !857)
!861 = !DILocation(line: 383, column: 3, scope: !857)
!862 = !DILocation(line: 384, column: 10, scope: !858)
!863 = !DILocation(line: 384, column: 5, scope: !858)
!864 = !DILocation(line: 384, column: 13, scope: !858)
!865 = !DILocation(line: 383, column: 27, scope: !866)
!866 = !DILexicalBlockFile(scope: !858, file: !89, discriminator: 2)
!867 = !DILocation(line: 383, column: 3, scope: !866)
!868 = distinct !{!868, !869}
!869 = !DILocation(line: 383, column: 3, scope: !772)
!870 = !DILocation(line: 385, column: 9, scope: !871)
!871 = distinct !DILexicalBlock(scope: !772, file: !89, line: 385, column: 3)
!872 = !DILocation(line: 385, column: 8, scope: !871)
!873 = !DILocation(line: 385, column: 13, scope: !874)
!874 = !DILexicalBlockFile(scope: !875, file: !89, discriminator: 1)
!875 = distinct !DILexicalBlock(scope: !871, file: !89, line: 385, column: 3)
!876 = !DILocation(line: 385, column: 14, scope: !874)
!877 = !DILocation(line: 385, column: 3, scope: !874)
!878 = !DILocation(line: 386, column: 11, scope: !879)
!879 = distinct !DILexicalBlock(scope: !880, file: !89, line: 386, column: 5)
!880 = distinct !DILexicalBlock(scope: !875, file: !89, line: 385, column: 27)
!881 = !DILocation(line: 386, column: 25, scope: !879)
!882 = !DILocation(line: 386, column: 20, scope: !879)
!883 = !DILocation(line: 386, column: 18, scope: !879)
!884 = !DILocation(line: 386, column: 10, scope: !879)
!885 = !DILocation(line: 386, column: 29, scope: !886)
!886 = !DILexicalBlockFile(scope: !887, file: !89, discriminator: 1)
!887 = distinct !DILexicalBlock(scope: !879, file: !89, line: 386, column: 5)
!888 = !DILocation(line: 386, column: 5, scope: !886)
!889 = !DILocation(line: 386, column: 5, scope: !890)
!890 = !DILexicalBlockFile(scope: !879, file: !89, discriminator: 2)
!891 = !DILocation(line: 386, column: 35, scope: !892)
!892 = !DILexicalBlockFile(scope: !887, file: !89, discriminator: 3)
!893 = !DILocation(line: 386, column: 44, scope: !892)
!894 = !DILocation(line: 386, column: 49, scope: !892)
!895 = !DILocation(line: 386, column: 42, scope: !892)
!896 = !DILocation(line: 386, column: 5, scope: !892)
!897 = distinct !{!897, !898}
!898 = !DILocation(line: 386, column: 5, scope: !880)
!899 = !DILocation(line: 387, column: 13, scope: !880)
!900 = !DILocation(line: 387, column: 50, scope: !880)
!901 = !DILocation(line: 387, column: 53, scope: !880)
!902 = !DILocation(line: 387, column: 5, scope: !880)
!903 = !DILocation(line: 388, column: 9, scope: !904)
!904 = distinct !DILexicalBlock(scope: !880, file: !89, line: 388, column: 9)
!905 = !DILocation(line: 388, column: 11, scope: !904)
!906 = !DILocation(line: 388, column: 9, scope: !880)
!907 = !DILocation(line: 389, column: 12, scope: !904)
!908 = !DILocation(line: 389, column: 7, scope: !904)
!909 = !DILocation(line: 390, column: 14, scope: !910)
!910 = distinct !DILexicalBlock(scope: !904, file: !89, line: 390, column: 14)
!911 = !DILocation(line: 390, column: 16, scope: !910)
!912 = !DILocation(line: 390, column: 14, scope: !904)
!913 = !DILocation(line: 391, column: 11, scope: !910)
!914 = !DILocation(line: 391, column: 7, scope: !910)
!915 = !DILocation(line: 393, column: 11, scope: !916)
!916 = distinct !DILexicalBlock(scope: !910, file: !89, line: 392, column: 10)
!917 = !DILocation(line: 394, column: 15, scope: !916)
!918 = !DILocation(line: 396, column: 10, scope: !880)
!919 = !DILocation(line: 396, column: 5, scope: !880)
!920 = !DILocation(line: 396, column: 12, scope: !880)
!921 = !DILocation(line: 397, column: 3, scope: !880)
!922 = !DILocation(line: 385, column: 23, scope: !923)
!923 = !DILexicalBlockFile(scope: !875, file: !89, discriminator: 2)
!924 = !DILocation(line: 385, column: 3, scope: !923)
!925 = distinct !{!925, !926}
!926 = !DILocation(line: 385, column: 3, scope: !772)
!927 = !DILocation(line: 398, column: 12, scope: !928)
!928 = distinct !DILexicalBlock(scope: !772, file: !89, line: 398, column: 3)
!929 = !DILocation(line: 398, column: 10, scope: !928)
!930 = !DILocation(line: 398, column: 8, scope: !928)
!931 = !DILocation(line: 398, column: 18, scope: !932)
!932 = !DILexicalBlockFile(scope: !933, file: !89, discriminator: 1)
!933 = distinct !DILexicalBlock(scope: !928, file: !89, line: 398, column: 3)
!934 = !DILocation(line: 398, column: 20, scope: !932)
!935 = !DILocation(line: 398, column: 24, scope: !932)
!936 = !DILocation(line: 398, column: 32, scope: !937)
!937 = !DILexicalBlockFile(scope: !933, file: !89, discriminator: 2)
!938 = !DILocation(line: 398, column: 27, scope: !937)
!939 = !DILocation(line: 398, column: 35, scope: !937)
!940 = !DILocation(line: 398, column: 3, scope: !941)
!941 = !DILexicalBlockFile(scope: !928, file: !89, discriminator: 3)
!942 = !DILocation(line: 398, column: 3, scope: !943)
!943 = !DILexicalBlockFile(scope: !928, file: !89, discriminator: 4)
!944 = !DILocation(line: 398, column: 42, scope: !945)
!945 = !DILexicalBlockFile(scope: !933, file: !89, discriminator: 5)
!946 = !DILocation(line: 398, column: 3, scope: !945)
!947 = distinct !{!947, !948}
!948 = !DILocation(line: 398, column: 3, scope: !772)
!949 = !DILocation(line: 399, column: 3, scope: !772)
!950 = !DILocation(line: 399, column: 10, scope: !951)
!951 = !DILexicalBlockFile(scope: !772, file: !89, discriminator: 1)
!952 = !DILocation(line: 399, column: 12, scope: !951)
!953 = !DILocation(line: 399, column: 3, scope: !951)
!954 = !DILocation(line: 400, column: 13, scope: !955)
!955 = distinct !DILexicalBlock(scope: !772, file: !89, line: 399, column: 18)
!956 = !DILocation(line: 400, column: 60, scope: !955)
!957 = !DILocation(line: 400, column: 68, scope: !955)
!958 = !DILocation(line: 400, column: 63, scope: !955)
!959 = !DILocation(line: 400, column: 5, scope: !955)
!960 = !DILocation(line: 401, column: 6, scope: !955)
!961 = !DILocation(line: 399, column: 3, scope: !962)
!962 = !DILexicalBlockFile(scope: !772, file: !89, discriminator: 2)
!963 = distinct !{!963, !949}
!964 = !DILocation(line: 403, column: 11, scope: !772)
!965 = !DILocation(line: 403, column: 46, scope: !772)
!966 = !DILocation(line: 403, column: 3, scope: !772)
!967 = !DILocation(line: 404, column: 11, scope: !772)
!968 = !DILocation(line: 404, column: 59, scope: !772)
!969 = !DILocation(line: 404, column: 65, scope: !772)
!970 = !DILocation(line: 404, column: 3, scope: !772)
!971 = !DILocation(line: 406, column: 12, scope: !772)
!972 = !DILocation(line: 406, column: 3, scope: !772)
!973 = !DILocation(line: 408, column: 8, scope: !772)
!974 = !DILocation(line: 408, column: 3, scope: !772)
!975 = !DILocation(line: 409, column: 1, scope: !772)
!976 = distinct !DISubprogram(name: "c_isupper", scope: !74, file: !74, line: 87, type: !977, isLocal: true, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !241)
!977 = !DISubroutineType(types: !978)
!978 = !{!148, !230}
!979 = !DILocalVariable(name: "c", arg: 1, scope: !976, file: !74, line: 87, type: !230)
!980 = !DILocation(line: 87, column: 15, scope: !976)
!981 = !DILocation(line: 89, column: 18, scope: !976)
!982 = !DILocation(line: 89, column: 9, scope: !976)
!983 = !DILocation(line: 89, column: 2, scope: !976)
