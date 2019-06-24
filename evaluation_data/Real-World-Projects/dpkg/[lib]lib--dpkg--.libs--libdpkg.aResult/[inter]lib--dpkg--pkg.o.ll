; ModuleID = './[inter]lib--dpkg--pkg.o.i'
source_filename = "./[inter]lib--dpkg--pkg.o.i"
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

@.str = private unnamed_addr constant [6 x i8] c"pkg.c\00", align 1
@__func__.pkg_set_status = private unnamed_addr constant [15 x i8] c"pkg_set_status\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"pkgset %s went into negative installed instances %d\00", align 1

; Function Attrs: nounwind uwtable
define void @pkg_set_status(%struct.pkginfo*, i32) #0 !dbg !78 {
  %3 = alloca %struct.pkginfo*, align 8
  %4 = alloca i32, align 4
  store %struct.pkginfo* %0, %struct.pkginfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %3, metadata !223, metadata !224), !dbg !225
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !226, metadata !224), !dbg !227
  %5 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !228
  %6 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %5, i32 0, i32 4, !dbg !230
  %7 = load i32, i32* %6, align 8, !dbg !230
  %8 = load i32, i32* %4, align 4, !dbg !231
  %9 = icmp eq i32 %7, %8, !dbg !232
  br i1 %9, label %10, label %11, !dbg !233

; <label>:10:                                     ; preds = %2
  br label %59, !dbg !234

; <label>:11:                                     ; preds = %2
  %12 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !235
  %13 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %12, i32 0, i32 4, !dbg !237
  %14 = load i32, i32* %13, align 8, !dbg !237
  %15 = icmp eq i32 %14, 0, !dbg !238
  br i1 %15, label %16, label %23, !dbg !239

; <label>:16:                                     ; preds = %11
  %17 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !240
  %18 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %17, i32 0, i32 0, !dbg !241
  %19 = load %struct.pkgset*, %struct.pkgset** %18, align 8, !dbg !241
  %20 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %19, i32 0, i32 4, !dbg !242
  %21 = load i32, i32* %20, align 8, !dbg !243
  %22 = add nsw i32 %21, 1, !dbg !243
  store i32 %22, i32* %20, align 8, !dbg !243
  br label %34, !dbg !240

; <label>:23:                                     ; preds = %11
  %24 = load i32, i32* %4, align 4, !dbg !244
  %25 = icmp eq i32 %24, 0, !dbg !246
  br i1 %25, label %26, label %33, !dbg !247

; <label>:26:                                     ; preds = %23
  %27 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !248
  %28 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %27, i32 0, i32 0, !dbg !249
  %29 = load %struct.pkgset*, %struct.pkgset** %28, align 8, !dbg !249
  %30 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %29, i32 0, i32 4, !dbg !250
  %31 = load i32, i32* %30, align 8, !dbg !251
  %32 = add nsw i32 %31, -1, !dbg !251
  store i32 %32, i32* %30, align 8, !dbg !251
  br label %33, !dbg !248

; <label>:33:                                     ; preds = %26, %23
  br label %34

; <label>:34:                                     ; preds = %33, %16
  br label %35

; <label>:35:                                     ; preds = %34
  %36 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !252
  %37 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %36, i32 0, i32 0, !dbg !254
  %38 = load %struct.pkgset*, %struct.pkgset** %37, align 8, !dbg !254
  %39 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %38, i32 0, i32 4, !dbg !255
  %40 = load i32, i32* %39, align 8, !dbg !255
  %41 = icmp slt i32 %40, 0, !dbg !256
  br i1 %41, label %42, label %53, !dbg !257

; <label>:42:                                     ; preds = %35
  %43 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !258
  %44 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %43, i32 0, i32 0, !dbg !259
  %45 = load %struct.pkgset*, %struct.pkgset** %44, align 8, !dbg !259
  %46 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %45, i32 0, i32 1, !dbg !260
  %47 = load i8*, i8** %46, align 8, !dbg !260
  %48 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !261
  %49 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %48, i32 0, i32 0, !dbg !262
  %50 = load %struct.pkgset*, %struct.pkgset** %49, align 8, !dbg !262
  %51 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %50, i32 0, i32 4, !dbg !263
  %52 = load i32, i32* %51, align 8, !dbg !263
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 47, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.pkg_set_status, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i32 0, i32 0), i8* %47, i32 %52) #5, !dbg !264
  unreachable, !dbg !264

; <label>:53:                                     ; preds = %35
  %54 = load i32, i32* %4, align 4, !dbg !265
  %55 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !266
  %56 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %55, i32 0, i32 4, !dbg !267
  store i32 %54, i32* %56, align 8, !dbg !268
  %57 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !269
  %58 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %57, i32 0, i32 19, !dbg !270
  store i8 1, i8* %58, align 1, !dbg !271
  br label %59, !dbg !272

; <label>:59:                                     ; preds = %53, %10
  ret void, !dbg !273
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noreturn
declare void @do_internerr(i8*, i32, i8*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @pkg_set_eflags(%struct.pkginfo*, i32) #0 !dbg !275 {
  %3 = alloca %struct.pkginfo*, align 8
  %4 = alloca i32, align 4
  store %struct.pkginfo* %0, %struct.pkginfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %3, metadata !278, metadata !224), !dbg !279
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !280, metadata !224), !dbg !281
  %5 = load i32, i32* %4, align 4, !dbg !282
  %6 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !283
  %7 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %6, i32 0, i32 3, !dbg !284
  %8 = load i32, i32* %7, align 4, !dbg !285
  %9 = or i32 %8, %5, !dbg !285
  store i32 %9, i32* %7, align 4, !dbg !285
  ret void, !dbg !286
}

; Function Attrs: nounwind uwtable
define void @pkg_clear_eflags(%struct.pkginfo*, i32) #0 !dbg !287 {
  %3 = alloca %struct.pkginfo*, align 8
  %4 = alloca i32, align 4
  store %struct.pkginfo* %0, %struct.pkginfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %3, metadata !288, metadata !224), !dbg !289
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !290, metadata !224), !dbg !291
  %5 = load i32, i32* %4, align 4, !dbg !292
  %6 = xor i32 %5, -1, !dbg !293
  %7 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !294
  %8 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %7, i32 0, i32 3, !dbg !295
  %9 = load i32, i32* %8, align 4, !dbg !296
  %10 = and i32 %9, %6, !dbg !296
  store i32 %10, i32* %8, align 4, !dbg !296
  ret void, !dbg !297
}

; Function Attrs: nounwind uwtable
define void @pkg_reset_eflags(%struct.pkginfo*) #0 !dbg !298 {
  %2 = alloca %struct.pkginfo*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %2, metadata !301, metadata !224), !dbg !302
  %3 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !303
  %4 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %3, i32 0, i32 3, !dbg !304
  store i32 0, i32* %4, align 4, !dbg !305
  ret void, !dbg !306
}

; Function Attrs: nounwind uwtable
define void @pkg_copy_eflags(%struct.pkginfo*, %struct.pkginfo*) #0 !dbg !307 {
  %3 = alloca %struct.pkginfo*, align 8
  %4 = alloca %struct.pkginfo*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %3, metadata !310, metadata !224), !dbg !311
  store %struct.pkginfo* %1, %struct.pkginfo** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %4, metadata !312, metadata !224), !dbg !313
  %5 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !314
  %6 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %5, i32 0, i32 3, !dbg !315
  %7 = load i32, i32* %6, align 4, !dbg !315
  %8 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !316
  %9 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %8, i32 0, i32 3, !dbg !317
  store i32 %7, i32* %9, align 4, !dbg !318
  ret void, !dbg !319
}

; Function Attrs: nounwind uwtable
define void @pkg_set_want(%struct.pkginfo*, i32) #0 !dbg !320 {
  %3 = alloca %struct.pkginfo*, align 8
  %4 = alloca i32, align 4
  store %struct.pkginfo* %0, %struct.pkginfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %3, metadata !323, metadata !224), !dbg !324
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !325, metadata !224), !dbg !326
  %5 = load i32, i32* %4, align 4, !dbg !327
  %6 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !328
  %7 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %6, i32 0, i32 2, !dbg !329
  store i32 %5, i32* %7, align 8, !dbg !330
  ret void, !dbg !331
}

; Function Attrs: nounwind uwtable
define void @pkgbin_blank(%struct.pkgbin*) #0 !dbg !332 {
  %2 = alloca %struct.pkgbin*, align 8
  store %struct.pkgbin* %0, %struct.pkgbin** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %2, metadata !336, metadata !224), !dbg !337
  %3 = load %struct.pkgbin*, %struct.pkgbin** %2, align 8, !dbg !338
  %4 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %3, i32 0, i32 1, !dbg !339
  store i8 0, i8* %4, align 8, !dbg !340
  %5 = load %struct.pkgbin*, %struct.pkgbin** %2, align 8, !dbg !341
  %6 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %5, i32 0, i32 0, !dbg !342
  store %struct.dependency* null, %struct.dependency** %6, align 8, !dbg !343
  %7 = load %struct.pkgbin*, %struct.pkgbin** %2, align 8, !dbg !344
  %8 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %7, i32 0, i32 4, !dbg !345
  store i8* null, i8** %8, align 8, !dbg !346
  %9 = load %struct.pkgbin*, %struct.pkgbin** %2, align 8, !dbg !347
  %10 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %9, i32 0, i32 5, !dbg !348
  store i8* null, i8** %10, align 8, !dbg !349
  %11 = load %struct.pkgbin*, %struct.pkgbin** %2, align 8, !dbg !350
  %12 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %11, i32 0, i32 6, !dbg !351
  store i8* null, i8** %12, align 8, !dbg !352
  %13 = load %struct.pkgbin*, %struct.pkgbin** %2, align 8, !dbg !353
  %14 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %13, i32 0, i32 7, !dbg !354
  store i8* null, i8** %14, align 8, !dbg !355
  %15 = load %struct.pkgbin*, %struct.pkgbin** %2, align 8, !dbg !356
  %16 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %15, i32 0, i32 8, !dbg !357
  store i8* null, i8** %16, align 8, !dbg !358
  %17 = load %struct.pkgbin*, %struct.pkgbin** %2, align 8, !dbg !359
  %18 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %17, i32 0, i32 10, !dbg !360
  store i8* null, i8** %18, align 8, !dbg !361
  %19 = load %struct.pkgbin*, %struct.pkgbin** %2, align 8, !dbg !362
  %20 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %19, i32 0, i32 9, !dbg !363
  store i8* null, i8** %20, align 8, !dbg !364
  %21 = load %struct.pkgbin*, %struct.pkgbin** %2, align 8, !dbg !365
  %22 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %21, i32 0, i32 11, !dbg !366
  call void @dpkg_version_blank(%struct.dpkg_version* %22), !dbg !367
  %23 = load %struct.pkgbin*, %struct.pkgbin** %2, align 8, !dbg !368
  %24 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %23, i32 0, i32 12, !dbg !369
  store %struct.conffile* null, %struct.conffile** %24, align 8, !dbg !370
  %25 = load %struct.pkgbin*, %struct.pkgbin** %2, align 8, !dbg !371
  %26 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %25, i32 0, i32 13, !dbg !372
  store %struct.arbitraryfield* null, %struct.arbitraryfield** %26, align 8, !dbg !373
  ret void, !dbg !374
}

declare void @dpkg_version_blank(%struct.dpkg_version*) #3

; Function Attrs: nounwind uwtable
define void @pkg_blank(%struct.pkginfo*) #0 !dbg !375 {
  %2 = alloca %struct.pkginfo*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %2, metadata !376, metadata !224), !dbg !377
  %3 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !378
  %4 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %3, i32 0, i32 4, !dbg !379
  store i32 0, i32* %4, align 8, !dbg !380
  %5 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !381
  %6 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %5, i32 0, i32 19, !dbg !382
  store i8 0, i8* %6, align 1, !dbg !383
  %7 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !384
  %8 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %7, i32 0, i32 3, !dbg !385
  store i32 0, i32* %8, align 4, !dbg !386
  %9 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !387
  %10 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %9, i32 0, i32 2, !dbg !388
  store i32 0, i32* %10, align 8, !dbg !389
  %11 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !390
  %12 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %11, i32 0, i32 5, !dbg !391
  store i32 6, i32* %12, align 4, !dbg !392
  %13 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !393
  %14 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %13, i32 0, i32 6, !dbg !394
  store i8* null, i8** %14, align 8, !dbg !395
  %15 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !396
  %16 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %15, i32 0, i32 7, !dbg !397
  store i8* null, i8** %16, align 8, !dbg !398
  %17 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !399
  %18 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %17, i32 0, i32 8, !dbg !400
  call void @dpkg_version_blank(%struct.dpkg_version* %18), !dbg !401
  %19 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !402
  %20 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %19, i32 0, i32 18, !dbg !403
  store i8 0, i8* %20, align 8, !dbg !404
  %21 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !405
  %22 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %21, i32 0, i32 17, !dbg !406
  store i64 0, i64* %22, align 8, !dbg !407
  %23 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !408
  %24 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %23, i32 0, i32 16, !dbg !409
  store %struct.fsys_namenode_list* null, %struct.fsys_namenode_list** %24, align 8, !dbg !410
  %25 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !411
  %26 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %25, i32 0, i32 12, !dbg !412
  store %struct.archivedetails* null, %struct.archivedetails** %26, align 8, !dbg !413
  %27 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !414
  %28 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %27, i32 0, i32 11, !dbg !415
  store %struct.perpackagestate* null, %struct.perpackagestate** %28, align 8, !dbg !416
  %29 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !417
  %30 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %29, i32 0, i32 13, !dbg !418
  %31 = getelementptr inbounds %struct.anon, %struct.anon* %30, i32 0, i32 0, !dbg !419
  store %struct.trigaw* null, %struct.trigaw** %31, align 8, !dbg !420
  %32 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !421
  %33 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %32, i32 0, i32 13, !dbg !422
  %34 = getelementptr inbounds %struct.anon, %struct.anon* %33, i32 0, i32 1, !dbg !423
  store %struct.trigaw* null, %struct.trigaw** %34, align 8, !dbg !424
  %35 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !425
  %36 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %35, i32 0, i32 14, !dbg !426
  store %struct.trigaw* null, %struct.trigaw** %36, align 8, !dbg !427
  %37 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !428
  %38 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %37, i32 0, i32 15, !dbg !429
  store %struct.trigpend* null, %struct.trigpend** %38, align 8, !dbg !430
  %39 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !431
  %40 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %39, i32 0, i32 9, !dbg !432
  call void @pkgbin_blank(%struct.pkgbin* %40), !dbg !433
  %41 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !434
  %42 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %41, i32 0, i32 10, !dbg !435
  call void @pkgbin_blank(%struct.pkgbin* %42), !dbg !436
  %43 = call %struct.dpkg_arch* @dpkg_arch_get(i32 0), !dbg !437
  %44 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !438
  %45 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %44, i32 0, i32 9, !dbg !439
  %46 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %45, i32 0, i32 3, !dbg !440
  store %struct.dpkg_arch* %43, %struct.dpkg_arch** %46, align 8, !dbg !441
  %47 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !442
  %48 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %47, i32 0, i32 9, !dbg !443
  %49 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %48, i32 0, i32 2, !dbg !444
  store i32 0, i32* %49, align 4, !dbg !445
  %50 = call %struct.dpkg_arch* @dpkg_arch_get(i32 0), !dbg !446
  %51 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !447
  %52 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %51, i32 0, i32 10, !dbg !448
  %53 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %52, i32 0, i32 3, !dbg !449
  store %struct.dpkg_arch* %50, %struct.dpkg_arch** %53, align 8, !dbg !450
  %54 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !451
  %55 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %54, i32 0, i32 10, !dbg !452
  %56 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %55, i32 0, i32 2, !dbg !453
  store i32 0, i32* %56, align 4, !dbg !454
  ret void, !dbg !455
}

declare %struct.dpkg_arch* @dpkg_arch_get(i32) #3

; Function Attrs: nounwind uwtable
define void @pkgset_blank(%struct.pkgset*) #0 !dbg !456 {
  %2 = alloca %struct.pkgset*, align 8
  store %struct.pkgset* %0, %struct.pkgset** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgset** %2, metadata !459, metadata !224), !dbg !460
  %3 = load %struct.pkgset*, %struct.pkgset** %2, align 8, !dbg !461
  %4 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %3, i32 0, i32 1, !dbg !462
  store i8* null, i8** %4, align 8, !dbg !463
  %5 = load %struct.pkgset*, %struct.pkgset** %2, align 8, !dbg !464
  %6 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %5, i32 0, i32 3, !dbg !465
  %7 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %6, i32 0, i32 0, !dbg !466
  store %struct.deppossi* null, %struct.deppossi** %7, align 8, !dbg !467
  %8 = load %struct.pkgset*, %struct.pkgset** %2, align 8, !dbg !468
  %9 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %8, i32 0, i32 3, !dbg !469
  %10 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %9, i32 0, i32 1, !dbg !470
  store %struct.deppossi* null, %struct.deppossi** %10, align 8, !dbg !471
  %11 = load %struct.pkgset*, %struct.pkgset** %2, align 8, !dbg !472
  %12 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %11, i32 0, i32 2, !dbg !473
  call void @pkg_blank(%struct.pkginfo* %12), !dbg !474
  %13 = load %struct.pkgset*, %struct.pkgset** %2, align 8, !dbg !475
  %14 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %13, i32 0, i32 4, !dbg !476
  store i32 0, i32* %14, align 8, !dbg !477
  %15 = load %struct.pkgset*, %struct.pkgset** %2, align 8, !dbg !478
  %16 = load %struct.pkgset*, %struct.pkgset** %2, align 8, !dbg !479
  %17 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %16, i32 0, i32 2, !dbg !480
  %18 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %17, i32 0, i32 0, !dbg !481
  store %struct.pkgset* %15, %struct.pkgset** %18, align 8, !dbg !482
  %19 = load %struct.pkgset*, %struct.pkgset** %2, align 8, !dbg !483
  %20 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %19, i32 0, i32 2, !dbg !484
  %21 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %20, i32 0, i32 1, !dbg !485
  store %struct.pkginfo* null, %struct.pkginfo** %21, align 8, !dbg !486
  ret void, !dbg !487
}

; Function Attrs: nounwind uwtable
define void @pkgset_link_pkg(%struct.pkgset*, %struct.pkginfo*) #0 !dbg !488 {
  %3 = alloca %struct.pkgset*, align 8
  %4 = alloca %struct.pkginfo*, align 8
  store %struct.pkgset* %0, %struct.pkgset** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgset** %3, metadata !491, metadata !224), !dbg !492
  store %struct.pkginfo* %1, %struct.pkginfo** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %4, metadata !493, metadata !224), !dbg !494
  %5 = load %struct.pkgset*, %struct.pkgset** %3, align 8, !dbg !495
  %6 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !496
  %7 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %6, i32 0, i32 0, !dbg !497
  store %struct.pkgset* %5, %struct.pkgset** %7, align 8, !dbg !498
  %8 = load %struct.pkgset*, %struct.pkgset** %3, align 8, !dbg !499
  %9 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %8, i32 0, i32 2, !dbg !500
  %10 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %9, i32 0, i32 1, !dbg !501
  %11 = load %struct.pkginfo*, %struct.pkginfo** %10, align 8, !dbg !501
  %12 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !502
  %13 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %12, i32 0, i32 1, !dbg !503
  store %struct.pkginfo* %11, %struct.pkginfo** %13, align 8, !dbg !504
  %14 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !505
  %15 = load %struct.pkgset*, %struct.pkgset** %3, align 8, !dbg !506
  %16 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %15, i32 0, i32 2, !dbg !507
  %17 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %16, i32 0, i32 1, !dbg !508
  store %struct.pkginfo* %14, %struct.pkginfo** %17, align 8, !dbg !509
  ret void, !dbg !510
}

; Function Attrs: nounwind uwtable
define i32 @pkgset_installed_instances(%struct.pkgset*) #0 !dbg !511 {
  %2 = alloca %struct.pkgset*, align 8
  store %struct.pkgset* %0, %struct.pkgset** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgset** %2, metadata !514, metadata !224), !dbg !515
  %3 = load %struct.pkgset*, %struct.pkgset** %2, align 8, !dbg !516
  %4 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %3, i32 0, i32 4, !dbg !517
  %5 = load i32, i32* %4, align 8, !dbg !517
  ret i32 %5, !dbg !518
}

; Function Attrs: nounwind uwtable
define zeroext i1 @pkg_is_informative(%struct.pkginfo*, %struct.pkgbin*) #0 !dbg !519 {
  %3 = alloca i1, align 1
  %4 = alloca %struct.pkginfo*, align 8
  %5 = alloca %struct.pkgbin*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %4, metadata !522, metadata !224), !dbg !523
  store %struct.pkgbin* %1, %struct.pkgbin** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %5, metadata !524, metadata !224), !dbg !525
  %6 = load %struct.pkgbin*, %struct.pkgbin** %5, align 8, !dbg !526
  %7 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !528
  %8 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %7, i32 0, i32 9, !dbg !529
  %9 = icmp eq %struct.pkgbin* %6, %8, !dbg !530
  br i1 %9, label %10, label %30, !dbg !531

; <label>:10:                                     ; preds = %2
  %11 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !532
  %12 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %11, i32 0, i32 2, !dbg !533
  %13 = load i32, i32* %12, align 8, !dbg !533
  %14 = icmp ne i32 %13, 0, !dbg !534
  br i1 %14, label %29, label %15, !dbg !535

; <label>:15:                                     ; preds = %10
  %16 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !536
  %17 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %16, i32 0, i32 3, !dbg !537
  %18 = load i32, i32* %17, align 4, !dbg !537
  %19 = icmp ne i32 %18, 0, !dbg !538
  br i1 %19, label %29, label %20, !dbg !539

; <label>:20:                                     ; preds = %15
  %21 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !540
  %22 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %21, i32 0, i32 4, !dbg !541
  %23 = load i32, i32* %22, align 8, !dbg !541
  %24 = icmp ne i32 %23, 0, !dbg !542
  br i1 %24, label %29, label %25, !dbg !543

; <label>:25:                                     ; preds = %20
  %26 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !544
  %27 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %26, i32 0, i32 8, !dbg !545
  %28 = call zeroext i1 @dpkg_version_is_informative(%struct.dpkg_version* %27), !dbg !546
  br i1 %28, label %29, label %30, !dbg !547

; <label>:29:                                     ; preds = %25, %20, %15, %10
  store i1 true, i1* %3, align 1, !dbg !549
  br label %81, !dbg !549

; <label>:30:                                     ; preds = %25, %2
  %31 = load %struct.pkgbin*, %struct.pkgbin** %5, align 8, !dbg !550
  %32 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %31, i32 0, i32 0, !dbg !552
  %33 = load %struct.dependency*, %struct.dependency** %32, align 8, !dbg !552
  %34 = icmp ne %struct.dependency* %33, null, !dbg !550
  br i1 %34, label %79, label %35, !dbg !553

; <label>:35:                                     ; preds = %30
  %36 = load %struct.pkgbin*, %struct.pkgbin** %5, align 8, !dbg !554
  %37 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %36, i32 0, i32 5, !dbg !555
  %38 = load i8*, i8** %37, align 8, !dbg !555
  %39 = call zeroext i1 @str_is_set(i8* %38), !dbg !556
  br i1 %39, label %79, label %40, !dbg !557

; <label>:40:                                     ; preds = %35
  %41 = load %struct.pkgbin*, %struct.pkgbin** %5, align 8, !dbg !558
  %42 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %41, i32 0, i32 6, !dbg !559
  %43 = load i8*, i8** %42, align 8, !dbg !559
  %44 = call zeroext i1 @str_is_set(i8* %43), !dbg !560
  br i1 %44, label %79, label %45, !dbg !561

; <label>:45:                                     ; preds = %40
  %46 = load %struct.pkgbin*, %struct.pkgbin** %5, align 8, !dbg !562
  %47 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %46, i32 0, i32 9, !dbg !563
  %48 = load i8*, i8** %47, align 8, !dbg !563
  %49 = call zeroext i1 @str_is_set(i8* %48), !dbg !564
  br i1 %49, label %79, label %50, !dbg !565

; <label>:50:                                     ; preds = %45
  %51 = load %struct.pkgbin*, %struct.pkgbin** %5, align 8, !dbg !566
  %52 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %51, i32 0, i32 10, !dbg !567
  %53 = load i8*, i8** %52, align 8, !dbg !567
  %54 = call zeroext i1 @str_is_set(i8* %53), !dbg !568
  br i1 %54, label %79, label %55, !dbg !569

; <label>:55:                                     ; preds = %50
  %56 = load %struct.pkgbin*, %struct.pkgbin** %5, align 8, !dbg !570
  %57 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %56, i32 0, i32 8, !dbg !571
  %58 = load i8*, i8** %57, align 8, !dbg !571
  %59 = call zeroext i1 @str_is_set(i8* %58), !dbg !572
  br i1 %59, label %79, label %60, !dbg !573

; <label>:60:                                     ; preds = %55
  %61 = load %struct.pkgbin*, %struct.pkgbin** %5, align 8, !dbg !574
  %62 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %61, i32 0, i32 7, !dbg !575
  %63 = load i8*, i8** %62, align 8, !dbg !575
  %64 = call zeroext i1 @str_is_set(i8* %63), !dbg !576
  br i1 %64, label %79, label %65, !dbg !577

; <label>:65:                                     ; preds = %60
  %66 = load %struct.pkgbin*, %struct.pkgbin** %5, align 8, !dbg !578
  %67 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %66, i32 0, i32 11, !dbg !579
  %68 = call zeroext i1 @dpkg_version_is_informative(%struct.dpkg_version* %67), !dbg !580
  br i1 %68, label %79, label %69, !dbg !581

; <label>:69:                                     ; preds = %65
  %70 = load %struct.pkgbin*, %struct.pkgbin** %5, align 8, !dbg !582
  %71 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %70, i32 0, i32 12, !dbg !583
  %72 = load %struct.conffile*, %struct.conffile** %71, align 8, !dbg !583
  %73 = icmp ne %struct.conffile* %72, null, !dbg !582
  br i1 %73, label %79, label %74, !dbg !584

; <label>:74:                                     ; preds = %69
  %75 = load %struct.pkgbin*, %struct.pkgbin** %5, align 8, !dbg !585
  %76 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %75, i32 0, i32 13, !dbg !586
  %77 = load %struct.arbitraryfield*, %struct.arbitraryfield** %76, align 8, !dbg !586
  %78 = icmp ne %struct.arbitraryfield* %77, null, !dbg !585
  br i1 %78, label %79, label %80, !dbg !587

; <label>:79:                                     ; preds = %74, %69, %65, %60, %55, %50, %45, %40, %35, %30
  store i1 true, i1* %3, align 1, !dbg !588
  br label %81, !dbg !588

; <label>:80:                                     ; preds = %74
  store i1 false, i1* %3, align 1, !dbg !589
  br label %81, !dbg !589

; <label>:81:                                     ; preds = %80, %79, %29
  %82 = load i1, i1* %3, align 1, !dbg !590
  ret i1 %82, !dbg !590
}

declare zeroext i1 @dpkg_version_is_informative(%struct.dpkg_version*) #3

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @str_is_set(i8*) #4 !dbg !591 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !595, metadata !224), !dbg !596
  %3 = load i8*, i8** %2, align 8, !dbg !597
  %4 = icmp ne i8* %3, null, !dbg !598
  br i1 %4, label %5, label %11, !dbg !599

; <label>:5:                                      ; preds = %1
  %6 = load i8*, i8** %2, align 8, !dbg !600
  %7 = getelementptr inbounds i8, i8* %6, i64 0, !dbg !600
  %8 = load i8, i8* %7, align 1, !dbg !600
  %9 = sext i8 %8 to i32, !dbg !600
  %10 = icmp ne i32 %9, 0, !dbg !602
  br label %11

; <label>:11:                                     ; preds = %5, %1
  %12 = phi i1 [ false, %1 ], [ %10, %5 ]
  ret i1 %12, !dbg !603
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!75, !76}
!llvm.ident = !{!77}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !73)
!1 = !DIFile(filename: "[inter]lib--dpkg--pkg.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{!3, !15, !26, !35, !43, !47, !57, !67}
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
!73 = !{!74}
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!75 = !{i32 2, !"Dwarf Version", i32 4}
!76 = !{i32 2, !"Debug Info Version", i32 3}
!77 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!78 = distinct !DISubprogram(name: "pkg_set_status", scope: !79, file: !79, line: 36, type: !80, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !222)
!79 = !DIFile(filename: "pkg.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!80 = !DISubroutineType(types: !81)
!81 = !{null, !82, !47}
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64, align: 64)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkginfo", file: !4, line: 195, size: 3072, align: 64, elements: !84)
!84 = !{!85, !137, !138, !139, !140, !141, !142, !143, !144, !145, !175, !176, !179, !188, !204, !205, !211, !214, !220, !221}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !83, file: !4, line: 196, baseType: !86, size: 64, align: 64)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64, align: 64)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgset", file: !4, line: 242, size: 3392, align: 64, elements: !88)
!88 = !{!89, !90, !94, !95, !135}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !87, file: !4, line: 243, baseType: !86, size: 64, align: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !87, file: !4, line: 244, baseType: !91, size: 64, align: 64, offset: 64)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64, align: 64)
!92 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!93 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !87, file: !4, line: 245, baseType: !83, size: 3072, align: 64, offset: 128)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "depended", scope: !87, file: !4, line: 249, baseType: !96, size: 128, align: 64, offset: 3200)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !87, file: !4, line: 246, size: 128, align: 64, elements: !97)
!97 = !{!98, !134}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !96, file: !4, line: 247, baseType: !99, size: 64, align: 64)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64, align: 64)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "deppossi", file: !4, line: 63, size: 640, align: 64, elements: !101)
!101 = !{!102, !110, !111, !112, !113, !114, !123, !130, !131, !133}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !100, file: !4, line: 64, baseType: !103, size: 64, align: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64, align: 64)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dependency", file: !4, line: 56, size: 256, align: 64, elements: !105)
!105 = !{!106, !107, !108, !109}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !104, file: !4, line: 57, baseType: !82, size: 64, align: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !104, file: !4, line: 58, baseType: !103, size: 64, align: 64, offset: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !104, file: !4, line: 59, baseType: !99, size: 64, align: 64, offset: 128)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !104, file: !4, line: 60, baseType: !3, size: 32, align: 32, offset: 192)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "ed", scope: !100, file: !4, line: 65, baseType: !86, size: 64, align: 64, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !100, file: !4, line: 66, baseType: !99, size: 64, align: 64, offset: 128)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "rev_next", scope: !100, file: !4, line: 66, baseType: !99, size: 64, align: 64, offset: 192)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "rev_prev", scope: !100, file: !4, line: 66, baseType: !99, size: 64, align: 64, offset: 256)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !100, file: !4, line: 67, baseType: !115, size: 64, align: 64, offset: 320)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_arch", file: !16, line: 48, size: 192, align: 64, elements: !118)
!118 = !{!119, !121, !122}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !117, file: !16, line: 49, baseType: !120, size: 64, align: 64)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64, align: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !117, file: !16, line: 50, baseType: !91, size: 64, align: 64, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !117, file: !16, line: 51, baseType: !15, size: 32, align: 32, offset: 128)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !100, file: !4, line: 68, baseType: !124, size: 192, align: 64, offset: 384)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_version", file: !27, line: 42, size: 192, align: 64, elements: !125)
!125 = !{!126, !128, !129}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !124, file: !27, line: 44, baseType: !127, size: 32, align: 32)
!127 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !124, file: !27, line: 46, baseType: !91, size: 64, align: 64, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !124, file: !27, line: 48, baseType: !91, size: 64, align: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "verrel", scope: !100, file: !4, line: 69, baseType: !26, size: 32, align: 32, offset: 576)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "arch_is_implicit", scope: !100, file: !4, line: 70, baseType: !132, size: 8, align: 8, offset: 608)
!132 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "cyclebreak", scope: !100, file: !4, line: 71, baseType: !132, size: 8, align: 8, offset: 616)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !96, file: !4, line: 248, baseType: !99, size: 64, align: 64, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "installed_instances", scope: !87, file: !4, line: 250, baseType: !136, size: 32, align: 32, offset: 3328)
!136 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "arch_next", scope: !83, file: !4, line: 197, baseType: !82, size: 64, align: 64, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "want", scope: !83, file: !4, line: 199, baseType: !35, size: 32, align: 32, offset: 128)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "eflag", scope: !83, file: !4, line: 201, baseType: !43, size: 32, align: 32, offset: 160)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !83, file: !4, line: 202, baseType: !47, size: 32, align: 32, offset: 192)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !83, file: !4, line: 203, baseType: !57, size: 32, align: 32, offset: 224)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "otherpriority", scope: !83, file: !4, line: 204, baseType: !91, size: 64, align: 64, offset: 256)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "section", scope: !83, file: !4, line: 205, baseType: !91, size: 64, align: 64, offset: 320)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "configversion", scope: !83, file: !4, line: 206, baseType: !124, size: 192, align: 64, offset: 384)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !83, file: !4, line: 207, baseType: !146, size: 960, align: 64, offset: 576)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgbin", file: !4, line: 107, size: 960, align: 64, elements: !147)
!147 = !{!148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !168}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "depends", scope: !146, file: !4, line: 108, baseType: !103, size: 64, align: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "essential", scope: !146, file: !4, line: 110, baseType: !132, size: 8, align: 8, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "multiarch", scope: !146, file: !4, line: 111, baseType: !67, size: 32, align: 32, offset: 96)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !146, file: !4, line: 112, baseType: !115, size: 64, align: 64, offset: 128)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "pkgname_archqual", scope: !146, file: !4, line: 115, baseType: !91, size: 64, align: 64, offset: 192)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !146, file: !4, line: 116, baseType: !91, size: 64, align: 64, offset: 256)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "maintainer", scope: !146, file: !4, line: 117, baseType: !91, size: 64, align: 64, offset: 320)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !146, file: !4, line: 118, baseType: !91, size: 64, align: 64, offset: 384)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "installedsize", scope: !146, file: !4, line: 119, baseType: !91, size: 64, align: 64, offset: 448)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !146, file: !4, line: 120, baseType: !91, size: 64, align: 64, offset: 512)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "bugs", scope: !146, file: !4, line: 121, baseType: !91, size: 64, align: 64, offset: 576)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !146, file: !4, line: 122, baseType: !124, size: 192, align: 64, offset: 640)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "conffiles", scope: !146, file: !4, line: 123, baseType: !161, size: 64, align: 64, offset: 832)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64, align: 64)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conffile", file: !4, line: 80, size: 256, align: 64, elements: !163)
!163 = !{!164, !165, !166, !167}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !162, file: !4, line: 81, baseType: !161, size: 64, align: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !162, file: !4, line: 82, baseType: !91, size: 64, align: 64, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !162, file: !4, line: 83, baseType: !91, size: 64, align: 64, offset: 128)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "obsolete", scope: !162, file: !4, line: 84, baseType: !132, size: 8, align: 8, offset: 192)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "arbs", scope: !146, file: !4, line: 124, baseType: !169, size: 64, align: 64, offset: 896)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64, align: 64)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arbitraryfield", file: !4, line: 74, size: 192, align: 64, elements: !171)
!171 = !{!172, !173, !174}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !170, file: !4, line: 75, baseType: !169, size: 64, align: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !170, file: !4, line: 76, baseType: !91, size: 64, align: 64, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !170, file: !4, line: 77, baseType: !91, size: 64, align: 64, offset: 128)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !83, file: !4, line: 208, baseType: !146, size: 960, align: 64, offset: 1536)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "clientdata", scope: !83, file: !4, line: 209, baseType: !177, size: 64, align: 64, offset: 2496)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64, align: 64)
!178 = !DICompositeType(tag: DW_TAG_structure_type, name: "perpackagestate", file: !4, line: 151, flags: DIFlagFwdDecl)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "archives", scope: !83, file: !4, line: 211, baseType: !180, size: 64, align: 64, offset: 2560)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64, align: 64)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archivedetails", file: !4, line: 87, size: 320, align: 64, elements: !182)
!182 = !{!183, !184, !185, !186, !187}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !181, file: !4, line: 88, baseType: !180, size: 64, align: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !181, file: !4, line: 89, baseType: !91, size: 64, align: 64, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "msdosname", scope: !181, file: !4, line: 90, baseType: !91, size: 64, align: 64, offset: 128)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !181, file: !4, line: 91, baseType: !91, size: 64, align: 64, offset: 192)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "md5sum", scope: !181, file: !4, line: 92, baseType: !91, size: 64, align: 64, offset: 256)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "trigaw", scope: !83, file: !4, line: 216, baseType: !189, size: 128, align: 64, offset: 2624)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !83, file: !4, line: 213, size: 128, align: 64, elements: !190)
!190 = !{!191, !203}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !189, file: !4, line: 215, baseType: !192, size: 64, align: 64)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64, align: 64)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigaw", file: !4, line: 142, size: 320, align: 64, elements: !194)
!194 = !{!195, !196, !197, !198}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "aw", scope: !193, file: !4, line: 143, baseType: !82, size: 64, align: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "pend", scope: !193, file: !4, line: 143, baseType: !82, size: 64, align: 64, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "samepend_next", scope: !193, file: !4, line: 144, baseType: !192, size: 64, align: 64, offset: 128)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "sameaw", scope: !193, file: !4, line: 147, baseType: !199, size: 128, align: 64, offset: 192)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !193, file: !4, line: 145, size: 128, align: 64, elements: !200)
!200 = !{!201, !202}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !199, file: !4, line: 146, baseType: !192, size: 64, align: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !199, file: !4, line: 146, baseType: !192, size: 64, align: 64, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !189, file: !4, line: 215, baseType: !192, size: 64, align: 64, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "othertrigaw_head", scope: !83, file: !4, line: 219, baseType: !192, size: 64, align: 64, offset: 2752)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "trigpend_head", scope: !83, file: !4, line: 220, baseType: !206, size: 64, align: 64, offset: 2816)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64, align: 64)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigpend", file: !4, line: 134, size: 128, align: 64, elements: !208)
!208 = !{!209, !210}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !207, file: !4, line: 135, baseType: !206, size: 64, align: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !207, file: !4, line: 136, baseType: !91, size: 64, align: 64, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !83, file: !4, line: 231, baseType: !212, size: 64, align: 64, offset: 2880)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64, align: 64)
!213 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode_list", file: !4, line: 231, flags: DIFlagFwdDecl)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_phys_offs", scope: !83, file: !4, line: 232, baseType: !215, size: 64, align: 64, offset: 2944)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !216, line: 86, baseType: !217)
!216 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !218, line: 131, baseType: !219)
!218 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!219 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_valid", scope: !83, file: !4, line: 233, baseType: !132, size: 8, align: 8, offset: 3008)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "status_dirty", scope: !83, file: !4, line: 236, baseType: !132, size: 8, align: 8, offset: 3016)
!222 = !{}
!223 = !DILocalVariable(name: "pkg", arg: 1, scope: !78, file: !79, line: 36, type: !82)
!224 = !DIExpression()
!225 = !DILocation(line: 36, column: 32, scope: !78)
!226 = !DILocalVariable(name: "status", arg: 2, scope: !78, file: !79, line: 36, type: !47)
!227 = !DILocation(line: 36, column: 52, scope: !78)
!228 = !DILocation(line: 38, column: 6, scope: !229)
!229 = distinct !DILexicalBlock(scope: !78, file: !79, line: 38, column: 6)
!230 = !DILocation(line: 38, column: 11, scope: !229)
!231 = !DILocation(line: 38, column: 21, scope: !229)
!232 = !DILocation(line: 38, column: 18, scope: !229)
!233 = !DILocation(line: 38, column: 6, scope: !78)
!234 = !DILocation(line: 39, column: 3, scope: !229)
!235 = !DILocation(line: 40, column: 11, scope: !236)
!236 = distinct !DILexicalBlock(scope: !229, file: !79, line: 40, column: 11)
!237 = !DILocation(line: 40, column: 16, scope: !236)
!238 = !DILocation(line: 40, column: 23, scope: !236)
!239 = !DILocation(line: 40, column: 11, scope: !229)
!240 = !DILocation(line: 41, column: 3, scope: !236)
!241 = !DILocation(line: 41, column: 8, scope: !236)
!242 = !DILocation(line: 41, column: 13, scope: !236)
!243 = !DILocation(line: 41, column: 32, scope: !236)
!244 = !DILocation(line: 42, column: 11, scope: !245)
!245 = distinct !DILexicalBlock(scope: !236, file: !79, line: 42, column: 11)
!246 = !DILocation(line: 42, column: 18, scope: !245)
!247 = !DILocation(line: 42, column: 11, scope: !236)
!248 = !DILocation(line: 43, column: 3, scope: !245)
!249 = !DILocation(line: 43, column: 8, scope: !245)
!250 = !DILocation(line: 43, column: 13, scope: !245)
!251 = !DILocation(line: 43, column: 32, scope: !245)
!252 = !DILocation(line: 45, column: 6, scope: !253)
!253 = distinct !DILexicalBlock(scope: !78, file: !79, line: 45, column: 6)
!254 = !DILocation(line: 45, column: 11, scope: !253)
!255 = !DILocation(line: 45, column: 16, scope: !253)
!256 = !DILocation(line: 45, column: 36, scope: !253)
!257 = !DILocation(line: 45, column: 6, scope: !78)
!258 = !DILocation(line: 46, column: 70, scope: !253)
!259 = !DILocation(line: 46, column: 75, scope: !253)
!260 = !DILocation(line: 46, column: 80, scope: !253)
!261 = !DILocation(line: 46, column: 86, scope: !253)
!262 = !DILocation(line: 46, column: 91, scope: !253)
!263 = !DILocation(line: 46, column: 96, scope: !253)
!264 = !DILocation(line: 46, column: 3, scope: !253)
!265 = !DILocation(line: 49, column: 16, scope: !78)
!266 = !DILocation(line: 49, column: 2, scope: !78)
!267 = !DILocation(line: 49, column: 7, scope: !78)
!268 = !DILocation(line: 49, column: 14, scope: !78)
!269 = !DILocation(line: 50, column: 2, scope: !78)
!270 = !DILocation(line: 50, column: 7, scope: !78)
!271 = !DILocation(line: 50, column: 20, scope: !78)
!272 = !DILocation(line: 51, column: 1, scope: !78)
!273 = !DILocation(line: 51, column: 1, scope: !274)
!274 = !DILexicalBlockFile(scope: !78, file: !79, discriminator: 1)
!275 = distinct !DISubprogram(name: "pkg_set_eflags", scope: !79, file: !79, line: 57, type: !276, isLocal: false, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !222)
!276 = !DISubroutineType(types: !277)
!277 = !{null, !82, !43}
!278 = !DILocalVariable(name: "pkg", arg: 1, scope: !275, file: !79, line: 57, type: !82)
!279 = !DILocation(line: 57, column: 32, scope: !275)
!280 = !DILocalVariable(name: "eflag", arg: 2, scope: !275, file: !79, line: 57, type: !43)
!281 = !DILocation(line: 57, column: 51, scope: !275)
!282 = !DILocation(line: 59, column: 16, scope: !275)
!283 = !DILocation(line: 59, column: 2, scope: !275)
!284 = !DILocation(line: 59, column: 7, scope: !275)
!285 = !DILocation(line: 59, column: 13, scope: !275)
!286 = !DILocation(line: 60, column: 1, scope: !275)
!287 = distinct !DISubprogram(name: "pkg_clear_eflags", scope: !79, file: !79, line: 66, type: !276, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !222)
!288 = !DILocalVariable(name: "pkg", arg: 1, scope: !287, file: !79, line: 66, type: !82)
!289 = !DILocation(line: 66, column: 34, scope: !287)
!290 = !DILocalVariable(name: "eflag", arg: 2, scope: !287, file: !79, line: 66, type: !43)
!291 = !DILocation(line: 66, column: 53, scope: !287)
!292 = !DILocation(line: 68, column: 17, scope: !287)
!293 = !DILocation(line: 68, column: 16, scope: !287)
!294 = !DILocation(line: 68, column: 2, scope: !287)
!295 = !DILocation(line: 68, column: 7, scope: !287)
!296 = !DILocation(line: 68, column: 13, scope: !287)
!297 = !DILocation(line: 69, column: 1, scope: !287)
!298 = distinct !DISubprogram(name: "pkg_reset_eflags", scope: !79, file: !79, line: 75, type: !299, isLocal: false, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !222)
!299 = !DISubroutineType(types: !300)
!300 = !{null, !82}
!301 = !DILocalVariable(name: "pkg", arg: 1, scope: !298, file: !79, line: 75, type: !82)
!302 = !DILocation(line: 75, column: 34, scope: !298)
!303 = !DILocation(line: 77, column: 2, scope: !298)
!304 = !DILocation(line: 77, column: 7, scope: !298)
!305 = !DILocation(line: 77, column: 13, scope: !298)
!306 = !DILocation(line: 78, column: 1, scope: !298)
!307 = distinct !DISubprogram(name: "pkg_copy_eflags", scope: !79, file: !79, line: 84, type: !308, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !222)
!308 = !DISubroutineType(types: !309)
!309 = !{null, !82, !82}
!310 = !DILocalVariable(name: "pkg_dst", arg: 1, scope: !307, file: !79, line: 84, type: !82)
!311 = !DILocation(line: 84, column: 33, scope: !307)
!312 = !DILocalVariable(name: "pkg_src", arg: 2, scope: !307, file: !79, line: 84, type: !82)
!313 = !DILocation(line: 84, column: 58, scope: !307)
!314 = !DILocation(line: 86, column: 19, scope: !307)
!315 = !DILocation(line: 86, column: 28, scope: !307)
!316 = !DILocation(line: 86, column: 2, scope: !307)
!317 = !DILocation(line: 86, column: 11, scope: !307)
!318 = !DILocation(line: 86, column: 17, scope: !307)
!319 = !DILocation(line: 87, column: 1, scope: !307)
!320 = distinct !DISubprogram(name: "pkg_set_want", scope: !79, file: !79, line: 93, type: !321, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !222)
!321 = !DISubroutineType(types: !322)
!322 = !{null, !82, !35}
!323 = !DILocalVariable(name: "pkg", arg: 1, scope: !320, file: !79, line: 93, type: !82)
!324 = !DILocation(line: 93, column: 30, scope: !320)
!325 = !DILocalVariable(name: "want", arg: 2, scope: !320, file: !79, line: 93, type: !35)
!326 = !DILocation(line: 93, column: 48, scope: !320)
!327 = !DILocation(line: 95, column: 14, scope: !320)
!328 = !DILocation(line: 95, column: 2, scope: !320)
!329 = !DILocation(line: 95, column: 7, scope: !320)
!330 = !DILocation(line: 95, column: 12, scope: !320)
!331 = !DILocation(line: 96, column: 1, scope: !320)
!332 = distinct !DISubprogram(name: "pkgbin_blank", scope: !79, file: !79, line: 99, type: !333, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !222)
!333 = !DISubroutineType(types: !334)
!334 = !{null, !335}
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64, align: 64)
!336 = !DILocalVariable(name: "pkgbin", arg: 1, scope: !332, file: !79, line: 99, type: !335)
!337 = !DILocation(line: 99, column: 29, scope: !332)
!338 = !DILocation(line: 101, column: 2, scope: !332)
!339 = !DILocation(line: 101, column: 10, scope: !332)
!340 = !DILocation(line: 101, column: 20, scope: !332)
!341 = !DILocation(line: 102, column: 2, scope: !332)
!342 = !DILocation(line: 102, column: 10, scope: !332)
!343 = !DILocation(line: 102, column: 18, scope: !332)
!344 = !DILocation(line: 103, column: 2, scope: !332)
!345 = !DILocation(line: 103, column: 10, scope: !332)
!346 = !DILocation(line: 103, column: 27, scope: !332)
!347 = !DILocation(line: 104, column: 2, scope: !332)
!348 = !DILocation(line: 104, column: 10, scope: !332)
!349 = !DILocation(line: 104, column: 22, scope: !332)
!350 = !DILocation(line: 105, column: 2, scope: !332)
!351 = !DILocation(line: 105, column: 10, scope: !332)
!352 = !DILocation(line: 105, column: 21, scope: !332)
!353 = !DILocation(line: 106, column: 2, scope: !332)
!354 = !DILocation(line: 106, column: 10, scope: !332)
!355 = !DILocation(line: 106, column: 17, scope: !332)
!356 = !DILocation(line: 107, column: 2, scope: !332)
!357 = !DILocation(line: 107, column: 10, scope: !332)
!358 = !DILocation(line: 107, column: 24, scope: !332)
!359 = !DILocation(line: 108, column: 2, scope: !332)
!360 = !DILocation(line: 108, column: 10, scope: !332)
!361 = !DILocation(line: 108, column: 15, scope: !332)
!362 = !DILocation(line: 109, column: 2, scope: !332)
!363 = !DILocation(line: 109, column: 10, scope: !332)
!364 = !DILocation(line: 109, column: 17, scope: !332)
!365 = !DILocation(line: 110, column: 22, scope: !332)
!366 = !DILocation(line: 110, column: 30, scope: !332)
!367 = !DILocation(line: 110, column: 2, scope: !332)
!368 = !DILocation(line: 111, column: 2, scope: !332)
!369 = !DILocation(line: 111, column: 10, scope: !332)
!370 = !DILocation(line: 111, column: 20, scope: !332)
!371 = !DILocation(line: 112, column: 2, scope: !332)
!372 = !DILocation(line: 112, column: 10, scope: !332)
!373 = !DILocation(line: 112, column: 15, scope: !332)
!374 = !DILocation(line: 113, column: 1, scope: !332)
!375 = distinct !DISubprogram(name: "pkg_blank", scope: !79, file: !79, line: 116, type: !299, isLocal: false, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !222)
!376 = !DILocalVariable(name: "pkg", arg: 1, scope: !375, file: !79, line: 116, type: !82)
!377 = !DILocation(line: 116, column: 27, scope: !375)
!378 = !DILocation(line: 118, column: 2, scope: !375)
!379 = !DILocation(line: 118, column: 7, scope: !375)
!380 = !DILocation(line: 118, column: 14, scope: !375)
!381 = !DILocation(line: 119, column: 2, scope: !375)
!382 = !DILocation(line: 119, column: 7, scope: !375)
!383 = !DILocation(line: 119, column: 20, scope: !375)
!384 = !DILocation(line: 120, column: 2, scope: !375)
!385 = !DILocation(line: 120, column: 7, scope: !375)
!386 = !DILocation(line: 120, column: 13, scope: !375)
!387 = !DILocation(line: 121, column: 2, scope: !375)
!388 = !DILocation(line: 121, column: 7, scope: !375)
!389 = !DILocation(line: 121, column: 12, scope: !375)
!390 = !DILocation(line: 122, column: 2, scope: !375)
!391 = !DILocation(line: 122, column: 7, scope: !375)
!392 = !DILocation(line: 122, column: 16, scope: !375)
!393 = !DILocation(line: 123, column: 2, scope: !375)
!394 = !DILocation(line: 123, column: 7, scope: !375)
!395 = !DILocation(line: 123, column: 21, scope: !375)
!396 = !DILocation(line: 124, column: 2, scope: !375)
!397 = !DILocation(line: 124, column: 7, scope: !375)
!398 = !DILocation(line: 124, column: 15, scope: !375)
!399 = !DILocation(line: 125, column: 22, scope: !375)
!400 = !DILocation(line: 125, column: 27, scope: !375)
!401 = !DILocation(line: 125, column: 2, scope: !375)
!402 = !DILocation(line: 126, column: 2, scope: !375)
!403 = !DILocation(line: 126, column: 7, scope: !375)
!404 = !DILocation(line: 126, column: 24, scope: !375)
!405 = !DILocation(line: 127, column: 2, scope: !375)
!406 = !DILocation(line: 127, column: 7, scope: !375)
!407 = !DILocation(line: 127, column: 28, scope: !375)
!408 = !DILocation(line: 128, column: 2, scope: !375)
!409 = !DILocation(line: 128, column: 7, scope: !375)
!410 = !DILocation(line: 128, column: 13, scope: !375)
!411 = !DILocation(line: 129, column: 2, scope: !375)
!412 = !DILocation(line: 129, column: 7, scope: !375)
!413 = !DILocation(line: 129, column: 16, scope: !375)
!414 = !DILocation(line: 130, column: 2, scope: !375)
!415 = !DILocation(line: 130, column: 7, scope: !375)
!416 = !DILocation(line: 130, column: 18, scope: !375)
!417 = !DILocation(line: 131, column: 2, scope: !375)
!418 = !DILocation(line: 131, column: 7, scope: !375)
!419 = !DILocation(line: 131, column: 14, scope: !375)
!420 = !DILocation(line: 131, column: 19, scope: !375)
!421 = !DILocation(line: 132, column: 2, scope: !375)
!422 = !DILocation(line: 132, column: 7, scope: !375)
!423 = !DILocation(line: 132, column: 14, scope: !375)
!424 = !DILocation(line: 132, column: 19, scope: !375)
!425 = !DILocation(line: 133, column: 2, scope: !375)
!426 = !DILocation(line: 133, column: 7, scope: !375)
!427 = !DILocation(line: 133, column: 24, scope: !375)
!428 = !DILocation(line: 134, column: 2, scope: !375)
!429 = !DILocation(line: 134, column: 7, scope: !375)
!430 = !DILocation(line: 134, column: 21, scope: !375)
!431 = !DILocation(line: 135, column: 16, scope: !375)
!432 = !DILocation(line: 135, column: 21, scope: !375)
!433 = !DILocation(line: 135, column: 2, scope: !375)
!434 = !DILocation(line: 136, column: 16, scope: !375)
!435 = !DILocation(line: 136, column: 21, scope: !375)
!436 = !DILocation(line: 136, column: 2, scope: !375)
!437 = !DILocation(line: 141, column: 24, scope: !375)
!438 = !DILocation(line: 141, column: 2, scope: !375)
!439 = !DILocation(line: 141, column: 7, scope: !375)
!440 = !DILocation(line: 141, column: 17, scope: !375)
!441 = !DILocation(line: 141, column: 22, scope: !375)
!442 = !DILocation(line: 142, column: 2, scope: !375)
!443 = !DILocation(line: 142, column: 7, scope: !375)
!444 = !DILocation(line: 142, column: 17, scope: !375)
!445 = !DILocation(line: 142, column: 27, scope: !375)
!446 = !DILocation(line: 143, column: 24, scope: !375)
!447 = !DILocation(line: 143, column: 2, scope: !375)
!448 = !DILocation(line: 143, column: 7, scope: !375)
!449 = !DILocation(line: 143, column: 17, scope: !375)
!450 = !DILocation(line: 143, column: 22, scope: !375)
!451 = !DILocation(line: 144, column: 2, scope: !375)
!452 = !DILocation(line: 144, column: 7, scope: !375)
!453 = !DILocation(line: 144, column: 17, scope: !375)
!454 = !DILocation(line: 144, column: 27, scope: !375)
!455 = !DILocation(line: 145, column: 1, scope: !375)
!456 = distinct !DISubprogram(name: "pkgset_blank", scope: !79, file: !79, line: 148, type: !457, isLocal: false, isDefinition: true, scopeLine: 149, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !222)
!457 = !DISubroutineType(types: !458)
!458 = !{null, !86}
!459 = !DILocalVariable(name: "set", arg: 1, scope: !456, file: !79, line: 148, type: !86)
!460 = !DILocation(line: 148, column: 29, scope: !456)
!461 = !DILocation(line: 150, column: 2, scope: !456)
!462 = !DILocation(line: 150, column: 7, scope: !456)
!463 = !DILocation(line: 150, column: 12, scope: !456)
!464 = !DILocation(line: 151, column: 2, scope: !456)
!465 = !DILocation(line: 151, column: 7, scope: !456)
!466 = !DILocation(line: 151, column: 16, scope: !456)
!467 = !DILocation(line: 151, column: 26, scope: !456)
!468 = !DILocation(line: 152, column: 2, scope: !456)
!469 = !DILocation(line: 152, column: 7, scope: !456)
!470 = !DILocation(line: 152, column: 16, scope: !456)
!471 = !DILocation(line: 152, column: 26, scope: !456)
!472 = !DILocation(line: 153, column: 13, scope: !456)
!473 = !DILocation(line: 153, column: 18, scope: !456)
!474 = !DILocation(line: 153, column: 2, scope: !456)
!475 = !DILocation(line: 154, column: 2, scope: !456)
!476 = !DILocation(line: 154, column: 7, scope: !456)
!477 = !DILocation(line: 154, column: 27, scope: !456)
!478 = !DILocation(line: 155, column: 17, scope: !456)
!479 = !DILocation(line: 155, column: 2, scope: !456)
!480 = !DILocation(line: 155, column: 7, scope: !456)
!481 = !DILocation(line: 155, column: 11, scope: !456)
!482 = !DILocation(line: 155, column: 15, scope: !456)
!483 = !DILocation(line: 156, column: 2, scope: !456)
!484 = !DILocation(line: 156, column: 7, scope: !456)
!485 = !DILocation(line: 156, column: 11, scope: !456)
!486 = !DILocation(line: 156, column: 21, scope: !456)
!487 = !DILocation(line: 157, column: 1, scope: !456)
!488 = distinct !DISubprogram(name: "pkgset_link_pkg", scope: !79, file: !79, line: 166, type: !489, isLocal: false, isDefinition: true, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !222)
!489 = !DISubroutineType(types: !490)
!490 = !{null, !86, !82}
!491 = !DILocalVariable(name: "set", arg: 1, scope: !488, file: !79, line: 166, type: !86)
!492 = !DILocation(line: 166, column: 32, scope: !488)
!493 = !DILocalVariable(name: "pkg", arg: 2, scope: !488, file: !79, line: 166, type: !82)
!494 = !DILocation(line: 166, column: 53, scope: !488)
!495 = !DILocation(line: 168, column: 13, scope: !488)
!496 = !DILocation(line: 168, column: 2, scope: !488)
!497 = !DILocation(line: 168, column: 7, scope: !488)
!498 = !DILocation(line: 168, column: 11, scope: !488)
!499 = !DILocation(line: 169, column: 19, scope: !488)
!500 = !DILocation(line: 169, column: 24, scope: !488)
!501 = !DILocation(line: 169, column: 28, scope: !488)
!502 = !DILocation(line: 169, column: 2, scope: !488)
!503 = !DILocation(line: 169, column: 7, scope: !488)
!504 = !DILocation(line: 169, column: 17, scope: !488)
!505 = !DILocation(line: 170, column: 23, scope: !488)
!506 = !DILocation(line: 170, column: 2, scope: !488)
!507 = !DILocation(line: 170, column: 7, scope: !488)
!508 = !DILocation(line: 170, column: 11, scope: !488)
!509 = !DILocation(line: 170, column: 21, scope: !488)
!510 = !DILocation(line: 171, column: 1, scope: !488)
!511 = distinct !DISubprogram(name: "pkgset_installed_instances", scope: !79, file: !79, line: 181, type: !512, isLocal: false, isDefinition: true, scopeLine: 182, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !222)
!512 = !DISubroutineType(types: !513)
!513 = !{!136, !86}
!514 = !DILocalVariable(name: "set", arg: 1, scope: !511, file: !79, line: 181, type: !86)
!515 = !DILocation(line: 181, column: 43, scope: !511)
!516 = !DILocation(line: 183, column: 9, scope: !511)
!517 = !DILocation(line: 183, column: 14, scope: !511)
!518 = !DILocation(line: 183, column: 2, scope: !511)
!519 = distinct !DISubprogram(name: "pkg_is_informative", scope: !79, file: !79, line: 193, type: !520, isLocal: false, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !222)
!520 = !DISubroutineType(types: !521)
!521 = !{!132, !82, !335}
!522 = !DILocalVariable(name: "pkg", arg: 1, scope: !519, file: !79, line: 193, type: !82)
!523 = !DILocation(line: 193, column: 36, scope: !519)
!524 = !DILocalVariable(name: "pkgbin", arg: 2, scope: !519, file: !79, line: 193, type: !335)
!525 = !DILocation(line: 193, column: 56, scope: !519)
!526 = !DILocation(line: 196, column: 6, scope: !527)
!527 = distinct !DILexicalBlock(scope: !519, file: !79, line: 196, column: 6)
!528 = !DILocation(line: 196, column: 17, scope: !527)
!529 = !DILocation(line: 196, column: 22, scope: !527)
!530 = !DILocation(line: 196, column: 13, scope: !527)
!531 = !DILocation(line: 196, column: 32, scope: !527)
!532 = !DILocation(line: 197, column: 7, scope: !527)
!533 = !DILocation(line: 197, column: 12, scope: !527)
!534 = !DILocation(line: 197, column: 17, scope: !527)
!535 = !DILocation(line: 197, column: 37, scope: !527)
!536 = !DILocation(line: 198, column: 7, scope: !527)
!537 = !DILocation(line: 198, column: 12, scope: !527)
!538 = !DILocation(line: 198, column: 18, scope: !527)
!539 = !DILocation(line: 198, column: 34, scope: !527)
!540 = !DILocation(line: 199, column: 7, scope: !527)
!541 = !DILocation(line: 199, column: 12, scope: !527)
!542 = !DILocation(line: 199, column: 19, scope: !527)
!543 = !DILocation(line: 199, column: 44, scope: !527)
!544 = !DILocation(line: 200, column: 36, scope: !527)
!545 = !DILocation(line: 200, column: 41, scope: !527)
!546 = !DILocation(line: 200, column: 7, scope: !527)
!547 = !DILocation(line: 196, column: 6, scope: !548)
!548 = !DILexicalBlockFile(scope: !519, file: !79, discriminator: 1)
!549 = !DILocation(line: 201, column: 3, scope: !527)
!550 = !DILocation(line: 203, column: 6, scope: !551)
!551 = distinct !DILexicalBlock(scope: !519, file: !79, line: 203, column: 6)
!552 = !DILocation(line: 203, column: 14, scope: !551)
!553 = !DILocation(line: 203, column: 22, scope: !551)
!554 = !DILocation(line: 204, column: 17, scope: !551)
!555 = !DILocation(line: 204, column: 25, scope: !551)
!556 = !DILocation(line: 204, column: 6, scope: !551)
!557 = !DILocation(line: 204, column: 38, scope: !551)
!558 = !DILocation(line: 205, column: 17, scope: !551)
!559 = !DILocation(line: 205, column: 25, scope: !551)
!560 = !DILocation(line: 205, column: 6, scope: !551)
!561 = !DILocation(line: 205, column: 37, scope: !551)
!562 = !DILocation(line: 206, column: 17, scope: !551)
!563 = !DILocation(line: 206, column: 25, scope: !551)
!564 = !DILocation(line: 206, column: 6, scope: !551)
!565 = !DILocation(line: 206, column: 33, scope: !551)
!566 = !DILocation(line: 207, column: 17, scope: !551)
!567 = !DILocation(line: 207, column: 25, scope: !551)
!568 = !DILocation(line: 207, column: 6, scope: !551)
!569 = !DILocation(line: 207, column: 31, scope: !551)
!570 = !DILocation(line: 208, column: 17, scope: !551)
!571 = !DILocation(line: 208, column: 25, scope: !551)
!572 = !DILocation(line: 208, column: 6, scope: !551)
!573 = !DILocation(line: 208, column: 40, scope: !551)
!574 = !DILocation(line: 209, column: 17, scope: !551)
!575 = !DILocation(line: 209, column: 25, scope: !551)
!576 = !DILocation(line: 209, column: 6, scope: !551)
!577 = !DILocation(line: 209, column: 33, scope: !551)
!578 = !DILocation(line: 210, column: 35, scope: !551)
!579 = !DILocation(line: 210, column: 43, scope: !551)
!580 = !DILocation(line: 210, column: 6, scope: !551)
!581 = !DILocation(line: 210, column: 52, scope: !551)
!582 = !DILocation(line: 211, column: 6, scope: !551)
!583 = !DILocation(line: 211, column: 14, scope: !551)
!584 = !DILocation(line: 211, column: 24, scope: !551)
!585 = !DILocation(line: 212, column: 6, scope: !551)
!586 = !DILocation(line: 212, column: 14, scope: !551)
!587 = !DILocation(line: 203, column: 6, scope: !548)
!588 = !DILocation(line: 213, column: 3, scope: !551)
!589 = !DILocation(line: 215, column: 2, scope: !519)
!590 = !DILocation(line: 216, column: 1, scope: !519)
!591 = distinct !DISubprogram(name: "str_is_set", scope: !592, file: !592, line: 50, type: !593, isLocal: true, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !222)
!592 = !DIFile(filename: "../../lib/dpkg/string.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!593 = !DISubroutineType(types: !594)
!594 = !{!132, !91}
!595 = !DILocalVariable(name: "str", arg: 1, scope: !591, file: !592, line: 50, type: !91)
!596 = !DILocation(line: 50, column: 24, scope: !591)
!597 = !DILocation(line: 52, column: 9, scope: !591)
!598 = !DILocation(line: 52, column: 13, scope: !591)
!599 = !DILocation(line: 52, column: 20, scope: !591)
!600 = !DILocation(line: 52, column: 23, scope: !601)
!601 = !DILexicalBlockFile(scope: !591, file: !592, discriminator: 1)
!602 = !DILocation(line: 52, column: 30, scope: !601)
!603 = !DILocation(line: 52, column: 2, scope: !604)
!604 = !DILexicalBlockFile(scope: !591, file: !592, discriminator: 2)
