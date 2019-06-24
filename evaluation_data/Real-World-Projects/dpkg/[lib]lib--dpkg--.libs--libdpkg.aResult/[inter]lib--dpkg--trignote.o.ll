; ModuleID = './[inter]lib--dpkg--trignote.o.i'
source_filename = "./[inter]lib--dpkg--trignote.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pkg_list = type { %struct.pkg_list*, %struct.pkginfo* }
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
%struct.fsys_diversion = type { %struct.fsys_namenode*, %struct.fsys_namenode*, %struct.pkgset*, %struct.fsys_diversion* }
%struct.file_stat = type { i32, i32, i32, i8*, i8* }
%struct.trigfileint = type { %struct.pkginfo*, %struct.pkgbin*, %struct.fsys_namenode*, i32, %struct.trigfileint*, %struct.anon.1 }
%struct.anon.1 = type { %struct.trigfileint*, %struct.trigfileint* }
%struct.file_ondisk_id = type { i64, i64 }

@trig_awaited_pend_head = internal global %struct.pkg_list* null, align 8

; Function Attrs: nounwind uwtable
define zeroext i1 @trig_note_pend_core(%struct.pkginfo*, i8*) #0 !dbg !306 {
  %3 = alloca i1, align 1
  %4 = alloca %struct.pkginfo*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.trigpend*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %4, metadata !310, metadata !311), !dbg !312
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !313, metadata !311), !dbg !314
  call void @llvm.dbg.declare(metadata %struct.trigpend** %6, metadata !315, metadata !311), !dbg !316
  %7 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !317
  %8 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %7, i32 0, i32 15, !dbg !319
  %9 = load %struct.trigpend*, %struct.trigpend** %8, align 8, !dbg !319
  store %struct.trigpend* %9, %struct.trigpend** %6, align 8, !dbg !320
  br label %10, !dbg !321

; <label>:10:                                     ; preds = %22, %2
  %11 = load %struct.trigpend*, %struct.trigpend** %6, align 8, !dbg !322
  %12 = icmp ne %struct.trigpend* %11, null, !dbg !325
  br i1 %12, label %13, label %26, !dbg !325

; <label>:13:                                     ; preds = %10
  %14 = load %struct.trigpend*, %struct.trigpend** %6, align 8, !dbg !326
  %15 = getelementptr inbounds %struct.trigpend, %struct.trigpend* %14, i32 0, i32 1, !dbg !328
  %16 = load i8*, i8** %15, align 8, !dbg !328
  %17 = load i8*, i8** %5, align 8, !dbg !329
  %18 = call i32 @strcmp(i8* %16, i8* %17) #4, !dbg !330
  %19 = icmp eq i32 %18, 0, !dbg !331
  br i1 %19, label %20, label %21, !dbg !332

; <label>:20:                                     ; preds = %13
  store i1 false, i1* %3, align 1, !dbg !333
  br label %40, !dbg !333

; <label>:21:                                     ; preds = %13
  br label %22, !dbg !334

; <label>:22:                                     ; preds = %21
  %23 = load %struct.trigpend*, %struct.trigpend** %6, align 8, !dbg !336
  %24 = getelementptr inbounds %struct.trigpend, %struct.trigpend* %23, i32 0, i32 0, !dbg !338
  %25 = load %struct.trigpend*, %struct.trigpend** %24, align 8, !dbg !338
  store %struct.trigpend* %25, %struct.trigpend** %6, align 8, !dbg !339
  br label %10, !dbg !340, !llvm.loop !341

; <label>:26:                                     ; preds = %10
  %27 = call i8* @nfmalloc(i64 16), !dbg !343
  %28 = bitcast i8* %27 to %struct.trigpend*, !dbg !343
  store %struct.trigpend* %28, %struct.trigpend** %6, align 8, !dbg !344
  %29 = load i8*, i8** %5, align 8, !dbg !345
  %30 = load %struct.trigpend*, %struct.trigpend** %6, align 8, !dbg !346
  %31 = getelementptr inbounds %struct.trigpend, %struct.trigpend* %30, i32 0, i32 1, !dbg !347
  store i8* %29, i8** %31, align 8, !dbg !348
  %32 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !349
  %33 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %32, i32 0, i32 15, !dbg !350
  %34 = load %struct.trigpend*, %struct.trigpend** %33, align 8, !dbg !350
  %35 = load %struct.trigpend*, %struct.trigpend** %6, align 8, !dbg !351
  %36 = getelementptr inbounds %struct.trigpend, %struct.trigpend* %35, i32 0, i32 0, !dbg !352
  store %struct.trigpend* %34, %struct.trigpend** %36, align 8, !dbg !353
  %37 = load %struct.trigpend*, %struct.trigpend** %6, align 8, !dbg !354
  %38 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !355
  %39 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %38, i32 0, i32 15, !dbg !356
  store %struct.trigpend* %37, %struct.trigpend** %39, align 8, !dbg !357
  store i1 true, i1* %3, align 1, !dbg !358
  br label %40, !dbg !358

; <label>:40:                                     ; preds = %26, %20
  %41 = load i1, i1* %3, align 1, !dbg !359
  ret i1 %41, !dbg !359
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare i8* @nfmalloc(i64) #3

; Function Attrs: nounwind uwtable
define zeroext i1 @trig_note_pend(%struct.pkginfo*, i8*) #0 !dbg !360 {
  %3 = alloca i1, align 1
  %4 = alloca %struct.pkginfo*, align 8
  %5 = alloca i8*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %4, metadata !361, metadata !311), !dbg !362
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !363, metadata !311), !dbg !364
  %6 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !365
  %7 = load i8*, i8** %5, align 8, !dbg !367
  %8 = call zeroext i1 @trig_note_pend_core(%struct.pkginfo* %6, i8* %7), !dbg !368
  br i1 %8, label %10, label %9, !dbg !369

; <label>:9:                                      ; preds = %2
  store i1 false, i1* %3, align 1, !dbg !370
  br label %21, !dbg !370

; <label>:10:                                     ; preds = %2
  %11 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !371
  %12 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %11, i32 0, i32 13, !dbg !373
  %13 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 0, !dbg !374
  %14 = load %struct.trigaw*, %struct.trigaw** %13, align 8, !dbg !374
  %15 = icmp ne %struct.trigaw* %14, null, !dbg !371
  br i1 %15, label %16, label %18, !dbg !375

; <label>:16:                                     ; preds = %10
  %17 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !376
  call void @pkg_set_status(%struct.pkginfo* %17, i32 5), !dbg !377
  br label %20, !dbg !377

; <label>:18:                                     ; preds = %10
  %19 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !378
  call void @pkg_set_status(%struct.pkginfo* %19, i32 6), !dbg !379
  br label %20

; <label>:20:                                     ; preds = %18, %16
  store i1 true, i1* %3, align 1, !dbg !380
  br label %21, !dbg !380

; <label>:21:                                     ; preds = %20, %9
  %22 = load i1, i1* %3, align 1, !dbg !381
  ret i1 %22, !dbg !381
}

declare void @pkg_set_status(%struct.pkginfo*, i32) #3

; Function Attrs: nounwind uwtable
define zeroext i1 @trig_note_aw(%struct.pkginfo*, %struct.pkginfo*) #0 !dbg !382 {
  %3 = alloca i1, align 1
  %4 = alloca %struct.pkginfo*, align 8
  %5 = alloca %struct.pkginfo*, align 8
  %6 = alloca %struct.trigaw*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %4, metadata !385, metadata !311), !dbg !386
  store %struct.pkginfo* %1, %struct.pkginfo** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %5, metadata !387, metadata !311), !dbg !388
  call void @llvm.dbg.declare(metadata %struct.trigaw** %6, metadata !389, metadata !311), !dbg !390
  %7 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !391
  %8 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %7, i32 0, i32 13, !dbg !393
  %9 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 0, !dbg !394
  %10 = load %struct.trigaw*, %struct.trigaw** %9, align 8, !dbg !394
  store %struct.trigaw* %10, %struct.trigaw** %6, align 8, !dbg !395
  br label %11, !dbg !396

; <label>:11:                                     ; preds = %22, %2
  %12 = load %struct.trigaw*, %struct.trigaw** %6, align 8, !dbg !397
  %13 = icmp ne %struct.trigaw* %12, null, !dbg !400
  br i1 %13, label %14, label %27, !dbg !400

; <label>:14:                                     ; preds = %11
  %15 = load %struct.trigaw*, %struct.trigaw** %6, align 8, !dbg !401
  %16 = getelementptr inbounds %struct.trigaw, %struct.trigaw* %15, i32 0, i32 1, !dbg !403
  %17 = load %struct.pkginfo*, %struct.pkginfo** %16, align 8, !dbg !403
  %18 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !404
  %19 = icmp eq %struct.pkginfo* %17, %18, !dbg !405
  br i1 %19, label %20, label %21, !dbg !406

; <label>:20:                                     ; preds = %14
  store i1 false, i1* %3, align 1, !dbg !407
  br label %79, !dbg !407

; <label>:21:                                     ; preds = %14
  br label %22, !dbg !408

; <label>:22:                                     ; preds = %21
  %23 = load %struct.trigaw*, %struct.trigaw** %6, align 8, !dbg !410
  %24 = getelementptr inbounds %struct.trigaw, %struct.trigaw* %23, i32 0, i32 3, !dbg !412
  %25 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %24, i32 0, i32 0, !dbg !413
  %26 = load %struct.trigaw*, %struct.trigaw** %25, align 8, !dbg !413
  store %struct.trigaw* %26, %struct.trigaw** %6, align 8, !dbg !414
  br label %11, !dbg !415, !llvm.loop !416

; <label>:27:                                     ; preds = %11
  %28 = call i8* @nfmalloc(i64 40), !dbg !418
  %29 = bitcast i8* %28 to %struct.trigaw*, !dbg !418
  store %struct.trigaw* %29, %struct.trigaw** %6, align 8, !dbg !419
  %30 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !420
  %31 = load %struct.trigaw*, %struct.trigaw** %6, align 8, !dbg !421
  %32 = getelementptr inbounds %struct.trigaw, %struct.trigaw* %31, i32 0, i32 0, !dbg !422
  store %struct.pkginfo* %30, %struct.pkginfo** %32, align 8, !dbg !423
  %33 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !424
  %34 = load %struct.trigaw*, %struct.trigaw** %6, align 8, !dbg !425
  %35 = getelementptr inbounds %struct.trigaw, %struct.trigaw* %34, i32 0, i32 1, !dbg !426
  store %struct.pkginfo* %33, %struct.pkginfo** %35, align 8, !dbg !427
  %36 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !428
  %37 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %36, i32 0, i32 14, !dbg !429
  %38 = load %struct.trigaw*, %struct.trigaw** %37, align 8, !dbg !429
  %39 = load %struct.trigaw*, %struct.trigaw** %6, align 8, !dbg !430
  %40 = getelementptr inbounds %struct.trigaw, %struct.trigaw* %39, i32 0, i32 2, !dbg !431
  store %struct.trigaw* %38, %struct.trigaw** %40, align 8, !dbg !432
  %41 = load %struct.trigaw*, %struct.trigaw** %6, align 8, !dbg !433
  %42 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !434
  %43 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %42, i32 0, i32 14, !dbg !435
  store %struct.trigaw* %41, %struct.trigaw** %43, align 8, !dbg !436
  br label %44, !dbg !437, !llvm.loop !438

; <label>:44:                                     ; preds = %27
  %45 = load %struct.trigaw*, %struct.trigaw** %6, align 8, !dbg !439
  %46 = getelementptr inbounds %struct.trigaw, %struct.trigaw* %45, i32 0, i32 3, !dbg !442
  %47 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %46, i32 0, i32 0, !dbg !443
  store %struct.trigaw* null, %struct.trigaw** %47, align 8, !dbg !444
  %48 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !445
  %49 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %48, i32 0, i32 13, !dbg !446
  %50 = getelementptr inbounds %struct.anon, %struct.anon* %49, i32 0, i32 1, !dbg !447
  %51 = load %struct.trigaw*, %struct.trigaw** %50, align 8, !dbg !447
  %52 = load %struct.trigaw*, %struct.trigaw** %6, align 8, !dbg !448
  %53 = getelementptr inbounds %struct.trigaw, %struct.trigaw* %52, i32 0, i32 3, !dbg !449
  %54 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %53, i32 0, i32 1, !dbg !450
  store %struct.trigaw* %51, %struct.trigaw** %54, align 8, !dbg !451
  %55 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !452
  %56 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %55, i32 0, i32 13, !dbg !453
  %57 = getelementptr inbounds %struct.anon, %struct.anon* %56, i32 0, i32 1, !dbg !454
  %58 = load %struct.trigaw*, %struct.trigaw** %57, align 8, !dbg !454
  %59 = icmp ne %struct.trigaw* %58, null, !dbg !455
  br i1 %59, label %60, label %68, !dbg !455

; <label>:60:                                     ; preds = %44
  %61 = load %struct.trigaw*, %struct.trigaw** %6, align 8, !dbg !456
  %62 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !459
  %63 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %62, i32 0, i32 13, !dbg !460
  %64 = getelementptr inbounds %struct.anon, %struct.anon* %63, i32 0, i32 1, !dbg !461
  %65 = load %struct.trigaw*, %struct.trigaw** %64, align 8, !dbg !461
  %66 = getelementptr inbounds %struct.trigaw, %struct.trigaw* %65, i32 0, i32 3, !dbg !462
  %67 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %66, i32 0, i32 0, !dbg !463
  store %struct.trigaw* %61, %struct.trigaw** %67, align 8, !dbg !464
  br label %73, !dbg !465

; <label>:68:                                     ; preds = %44
  %69 = load %struct.trigaw*, %struct.trigaw** %6, align 8, !dbg !466
  %70 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !468
  %71 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %70, i32 0, i32 13, !dbg !469
  %72 = getelementptr inbounds %struct.anon, %struct.anon* %71, i32 0, i32 0, !dbg !470
  store %struct.trigaw* %69, %struct.trigaw** %72, align 8, !dbg !471
  br label %73

; <label>:73:                                     ; preds = %68, %60
  %74 = load %struct.trigaw*, %struct.trigaw** %6, align 8, !dbg !472
  %75 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !474
  %76 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %75, i32 0, i32 13, !dbg !475
  %77 = getelementptr inbounds %struct.anon, %struct.anon* %76, i32 0, i32 1, !dbg !476
  store %struct.trigaw* %74, %struct.trigaw** %77, align 8, !dbg !477
  br label %78, !dbg !478

; <label>:78:                                     ; preds = %73
  store i1 true, i1* %3, align 1, !dbg !479
  br label %79, !dbg !479

; <label>:79:                                     ; preds = %78, %20
  %80 = load i1, i1* %3, align 1, !dbg !480
  ret i1 %80, !dbg !480
}

; Function Attrs: nounwind uwtable
define void @trig_awaited_pend_enqueue(%struct.pkginfo*) #0 !dbg !481 {
  %2 = alloca %struct.pkginfo*, align 8
  %3 = alloca %struct.pkg_list*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %2, metadata !484, metadata !311), !dbg !485
  call void @llvm.dbg.declare(metadata %struct.pkg_list** %3, metadata !486, metadata !311), !dbg !487
  %4 = load %struct.pkg_list*, %struct.pkg_list** @trig_awaited_pend_head, align 8, !dbg !488
  store %struct.pkg_list* %4, %struct.pkg_list** %3, align 8, !dbg !490
  br label %5, !dbg !491

; <label>:5:                                      ; preds = %16, %1
  %6 = load %struct.pkg_list*, %struct.pkg_list** %3, align 8, !dbg !492
  %7 = icmp ne %struct.pkg_list* %6, null, !dbg !495
  br i1 %7, label %8, label %20, !dbg !495

; <label>:8:                                      ; preds = %5
  %9 = load %struct.pkg_list*, %struct.pkg_list** %3, align 8, !dbg !496
  %10 = getelementptr inbounds %struct.pkg_list, %struct.pkg_list* %9, i32 0, i32 1, !dbg !498
  %11 = load %struct.pkginfo*, %struct.pkginfo** %10, align 8, !dbg !498
  %12 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !499
  %13 = icmp eq %struct.pkginfo* %11, %12, !dbg !500
  br i1 %13, label %14, label %15, !dbg !501

; <label>:14:                                     ; preds = %8
  br label %22, !dbg !502

; <label>:15:                                     ; preds = %8
  br label %16, !dbg !503

; <label>:16:                                     ; preds = %15
  %17 = load %struct.pkg_list*, %struct.pkg_list** %3, align 8, !dbg !505
  %18 = getelementptr inbounds %struct.pkg_list, %struct.pkg_list* %17, i32 0, i32 0, !dbg !507
  %19 = load %struct.pkg_list*, %struct.pkg_list** %18, align 8, !dbg !507
  store %struct.pkg_list* %19, %struct.pkg_list** %3, align 8, !dbg !508
  br label %5, !dbg !509, !llvm.loop !510

; <label>:20:                                     ; preds = %5
  %21 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !512
  call void @pkg_list_prepend(%struct.pkg_list** @trig_awaited_pend_head, %struct.pkginfo* %21), !dbg !513
  br label %22, !dbg !514

; <label>:22:                                     ; preds = %20, %14
  ret void, !dbg !515
}

declare void @pkg_list_prepend(%struct.pkg_list**, %struct.pkginfo*) #3

; Function Attrs: nounwind uwtable
define void @trig_awaited_pend_foreach(void (%struct.pkginfo*)*) #0 !dbg !517 {
  %2 = alloca void (%struct.pkginfo*)*, align 8
  %3 = alloca %struct.pkg_list*, align 8
  store void (%struct.pkginfo*)* %0, void (%struct.pkginfo*)** %2, align 8
  call void @llvm.dbg.declare(metadata void (%struct.pkginfo*)** %2, metadata !522, metadata !311), !dbg !523
  call void @llvm.dbg.declare(metadata %struct.pkg_list** %3, metadata !524, metadata !311), !dbg !525
  %4 = load %struct.pkg_list*, %struct.pkg_list** @trig_awaited_pend_head, align 8, !dbg !526
  store %struct.pkg_list* %4, %struct.pkg_list** %3, align 8, !dbg !528
  br label %5, !dbg !529

; <label>:5:                                      ; preds = %21, %1
  %6 = load %struct.pkg_list*, %struct.pkg_list** %3, align 8, !dbg !530
  %7 = icmp ne %struct.pkg_list* %6, null, !dbg !533
  br i1 %7, label %8, label %25, !dbg !533

; <label>:8:                                      ; preds = %5
  %9 = load %struct.pkg_list*, %struct.pkg_list** %3, align 8, !dbg !534
  %10 = getelementptr inbounds %struct.pkg_list, %struct.pkg_list* %9, i32 0, i32 1, !dbg !536
  %11 = load %struct.pkginfo*, %struct.pkginfo** %10, align 8, !dbg !536
  %12 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %11, i32 0, i32 15, !dbg !537
  %13 = load %struct.trigpend*, %struct.trigpend** %12, align 8, !dbg !537
  %14 = icmp ne %struct.trigpend* %13, null, !dbg !534
  br i1 %14, label %20, label %15, !dbg !538

; <label>:15:                                     ; preds = %8
  %16 = load void (%struct.pkginfo*)*, void (%struct.pkginfo*)** %2, align 8, !dbg !539
  %17 = load %struct.pkg_list*, %struct.pkg_list** %3, align 8, !dbg !540
  %18 = getelementptr inbounds %struct.pkg_list, %struct.pkg_list* %17, i32 0, i32 1, !dbg !541
  %19 = load %struct.pkginfo*, %struct.pkginfo** %18, align 8, !dbg !541
  call void %16(%struct.pkginfo* %19), !dbg !539
  br label %20, !dbg !539

; <label>:20:                                     ; preds = %15, %8
  br label %21, !dbg !542

; <label>:21:                                     ; preds = %20
  %22 = load %struct.pkg_list*, %struct.pkg_list** %3, align 8, !dbg !544
  %23 = getelementptr inbounds %struct.pkg_list, %struct.pkg_list* %22, i32 0, i32 0, !dbg !546
  %24 = load %struct.pkg_list*, %struct.pkg_list** %23, align 8, !dbg !546
  store %struct.pkg_list* %24, %struct.pkg_list** %3, align 8, !dbg !547
  br label %5, !dbg !548, !llvm.loop !549

; <label>:25:                                     ; preds = %5
  ret void, !dbg !551
}

; Function Attrs: nounwind uwtable
define void @trig_awaited_pend_free() #0 !dbg !552 {
  %1 = load %struct.pkg_list*, %struct.pkg_list** @trig_awaited_pend_head, align 8, !dbg !555
  call void @pkg_list_free(%struct.pkg_list* %1), !dbg !556
  store %struct.pkg_list* null, %struct.pkg_list** @trig_awaited_pend_head, align 8, !dbg !557
  ret void, !dbg !558
}

declare void @pkg_list_free(%struct.pkg_list*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!303, !304}
!llvm.ident = !{!305}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !91)
!1 = !DIFile(filename: "[inter]lib--dpkg--trignote.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{!3, !15, !26, !35, !43, !47, !57, !67, !73, !78}
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
!91 = !{!92}
!92 = distinct !DIGlobalVariable(name: "trig_awaited_pend_head", scope: !0, file: !93, line: 104, type: !94, isLocal: true, isDefinition: true, variable: %struct.pkg_list** @trig_awaited_pend_head)
!93 = !DIFile(filename: "trignote.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_list", file: !96, line: 34, size: 128, align: 64, elements: !97)
!96 = !DIFile(filename: "../../lib/dpkg/pkg-list.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!97 = !{!98, !99}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !95, file: !96, line: 35, baseType: !94, size: 64, align: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !95, file: !96, line: 36, baseType: !100, size: 64, align: 64, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64, align: 64)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkginfo", file: !4, line: 195, size: 3072, align: 64, elements: !102)
!102 = !{!103, !155, !156, !157, !158, !159, !160, !161, !162, !163, !193, !194, !197, !206, !222, !223, !229, !297, !301, !302}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !101, file: !4, line: 196, baseType: !104, size: 64, align: 64)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgset", file: !4, line: 242, size: 3392, align: 64, elements: !106)
!106 = !{!107, !108, !112, !113, !153}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !105, file: !4, line: 243, baseType: !104, size: 64, align: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !105, file: !4, line: 244, baseType: !109, size: 64, align: 64, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, align: 64)
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!111 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !105, file: !4, line: 245, baseType: !101, size: 3072, align: 64, offset: 128)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "depended", scope: !105, file: !4, line: 249, baseType: !114, size: 128, align: 64, offset: 3200)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !105, file: !4, line: 246, size: 128, align: 64, elements: !115)
!115 = !{!116, !152}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !114, file: !4, line: 247, baseType: !117, size: 64, align: 64)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64, align: 64)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "deppossi", file: !4, line: 63, size: 640, align: 64, elements: !119)
!119 = !{!120, !128, !129, !130, !131, !132, !141, !148, !149, !151}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !118, file: !4, line: 64, baseType: !121, size: 64, align: 64)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64, align: 64)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dependency", file: !4, line: 56, size: 256, align: 64, elements: !123)
!123 = !{!124, !125, !126, !127}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !122, file: !4, line: 57, baseType: !100, size: 64, align: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !122, file: !4, line: 58, baseType: !121, size: 64, align: 64, offset: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !122, file: !4, line: 59, baseType: !117, size: 64, align: 64, offset: 128)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !122, file: !4, line: 60, baseType: !3, size: 32, align: 32, offset: 192)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "ed", scope: !118, file: !4, line: 65, baseType: !104, size: 64, align: 64, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !118, file: !4, line: 66, baseType: !117, size: 64, align: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "rev_next", scope: !118, file: !4, line: 66, baseType: !117, size: 64, align: 64, offset: 192)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "rev_prev", scope: !118, file: !4, line: 66, baseType: !117, size: 64, align: 64, offset: 256)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !118, file: !4, line: 67, baseType: !133, size: 64, align: 64, offset: 320)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64, align: 64)
!134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !135)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_arch", file: !16, line: 48, size: 192, align: 64, elements: !136)
!136 = !{!137, !139, !140}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !135, file: !16, line: 49, baseType: !138, size: 64, align: 64)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !135, file: !16, line: 50, baseType: !109, size: 64, align: 64, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !135, file: !16, line: 51, baseType: !15, size: 32, align: 32, offset: 128)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !118, file: !4, line: 68, baseType: !142, size: 192, align: 64, offset: 384)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_version", file: !27, line: 42, size: 192, align: 64, elements: !143)
!143 = !{!144, !146, !147}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !142, file: !27, line: 44, baseType: !145, size: 32, align: 32)
!145 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !142, file: !27, line: 46, baseType: !109, size: 64, align: 64, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !142, file: !27, line: 48, baseType: !109, size: 64, align: 64, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "verrel", scope: !118, file: !4, line: 69, baseType: !26, size: 32, align: 32, offset: 576)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "arch_is_implicit", scope: !118, file: !4, line: 70, baseType: !150, size: 8, align: 8, offset: 608)
!150 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "cyclebreak", scope: !118, file: !4, line: 71, baseType: !150, size: 8, align: 8, offset: 616)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !114, file: !4, line: 248, baseType: !117, size: 64, align: 64, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "installed_instances", scope: !105, file: !4, line: 250, baseType: !154, size: 32, align: 32, offset: 3328)
!154 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "arch_next", scope: !101, file: !4, line: 197, baseType: !100, size: 64, align: 64, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "want", scope: !101, file: !4, line: 199, baseType: !35, size: 32, align: 32, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "eflag", scope: !101, file: !4, line: 201, baseType: !43, size: 32, align: 32, offset: 160)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !101, file: !4, line: 202, baseType: !47, size: 32, align: 32, offset: 192)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !101, file: !4, line: 203, baseType: !57, size: 32, align: 32, offset: 224)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "otherpriority", scope: !101, file: !4, line: 204, baseType: !109, size: 64, align: 64, offset: 256)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "section", scope: !101, file: !4, line: 205, baseType: !109, size: 64, align: 64, offset: 320)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "configversion", scope: !101, file: !4, line: 206, baseType: !142, size: 192, align: 64, offset: 384)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !101, file: !4, line: 207, baseType: !164, size: 960, align: 64, offset: 576)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgbin", file: !4, line: 107, size: 960, align: 64, elements: !165)
!165 = !{!166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !186}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "depends", scope: !164, file: !4, line: 108, baseType: !121, size: 64, align: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "essential", scope: !164, file: !4, line: 110, baseType: !150, size: 8, align: 8, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "multiarch", scope: !164, file: !4, line: 111, baseType: !67, size: 32, align: 32, offset: 96)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !164, file: !4, line: 112, baseType: !133, size: 64, align: 64, offset: 128)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "pkgname_archqual", scope: !164, file: !4, line: 115, baseType: !109, size: 64, align: 64, offset: 192)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !164, file: !4, line: 116, baseType: !109, size: 64, align: 64, offset: 256)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "maintainer", scope: !164, file: !4, line: 117, baseType: !109, size: 64, align: 64, offset: 320)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !164, file: !4, line: 118, baseType: !109, size: 64, align: 64, offset: 384)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "installedsize", scope: !164, file: !4, line: 119, baseType: !109, size: 64, align: 64, offset: 448)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !164, file: !4, line: 120, baseType: !109, size: 64, align: 64, offset: 512)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "bugs", scope: !164, file: !4, line: 121, baseType: !109, size: 64, align: 64, offset: 576)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !164, file: !4, line: 122, baseType: !142, size: 192, align: 64, offset: 640)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "conffiles", scope: !164, file: !4, line: 123, baseType: !179, size: 64, align: 64, offset: 832)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64, align: 64)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conffile", file: !4, line: 80, size: 256, align: 64, elements: !181)
!181 = !{!182, !183, !184, !185}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !180, file: !4, line: 81, baseType: !179, size: 64, align: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !180, file: !4, line: 82, baseType: !109, size: 64, align: 64, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !180, file: !4, line: 83, baseType: !109, size: 64, align: 64, offset: 128)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "obsolete", scope: !180, file: !4, line: 84, baseType: !150, size: 8, align: 8, offset: 192)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "arbs", scope: !164, file: !4, line: 124, baseType: !187, size: 64, align: 64, offset: 896)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64, align: 64)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arbitraryfield", file: !4, line: 74, size: 192, align: 64, elements: !189)
!189 = !{!190, !191, !192}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !188, file: !4, line: 75, baseType: !187, size: 64, align: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !188, file: !4, line: 76, baseType: !109, size: 64, align: 64, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !188, file: !4, line: 77, baseType: !109, size: 64, align: 64, offset: 128)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !101, file: !4, line: 208, baseType: !164, size: 960, align: 64, offset: 1536)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "clientdata", scope: !101, file: !4, line: 209, baseType: !195, size: 64, align: 64, offset: 2496)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64, align: 64)
!196 = !DICompositeType(tag: DW_TAG_structure_type, name: "perpackagestate", file: !4, line: 151, flags: DIFlagFwdDecl)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "archives", scope: !101, file: !4, line: 211, baseType: !198, size: 64, align: 64, offset: 2560)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64, align: 64)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archivedetails", file: !4, line: 87, size: 320, align: 64, elements: !200)
!200 = !{!201, !202, !203, !204, !205}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !199, file: !4, line: 88, baseType: !198, size: 64, align: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !199, file: !4, line: 89, baseType: !109, size: 64, align: 64, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "msdosname", scope: !199, file: !4, line: 90, baseType: !109, size: 64, align: 64, offset: 128)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !199, file: !4, line: 91, baseType: !109, size: 64, align: 64, offset: 192)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "md5sum", scope: !199, file: !4, line: 92, baseType: !109, size: 64, align: 64, offset: 256)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "trigaw", scope: !101, file: !4, line: 216, baseType: !207, size: 128, align: 64, offset: 2624)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !101, file: !4, line: 213, size: 128, align: 64, elements: !208)
!208 = !{!209, !221}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !207, file: !4, line: 215, baseType: !210, size: 64, align: 64)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigaw", file: !4, line: 142, size: 320, align: 64, elements: !212)
!212 = !{!213, !214, !215, !216}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "aw", scope: !211, file: !4, line: 143, baseType: !100, size: 64, align: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "pend", scope: !211, file: !4, line: 143, baseType: !100, size: 64, align: 64, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "samepend_next", scope: !211, file: !4, line: 144, baseType: !210, size: 64, align: 64, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "sameaw", scope: !211, file: !4, line: 147, baseType: !217, size: 128, align: 64, offset: 192)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !211, file: !4, line: 145, size: 128, align: 64, elements: !218)
!218 = !{!219, !220}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !217, file: !4, line: 146, baseType: !210, size: 64, align: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !217, file: !4, line: 146, baseType: !210, size: 64, align: 64, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !207, file: !4, line: 215, baseType: !210, size: 64, align: 64, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "othertrigaw_head", scope: !101, file: !4, line: 219, baseType: !210, size: 64, align: 64, offset: 2752)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "trigpend_head", scope: !101, file: !4, line: 220, baseType: !224, size: 64, align: 64, offset: 2816)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64, align: 64)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigpend", file: !4, line: 134, size: 128, align: 64, elements: !226)
!226 = !{!227, !228}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !225, file: !4, line: 135, baseType: !224, size: 64, align: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !225, file: !4, line: 136, baseType: !109, size: 64, align: 64, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !101, file: !4, line: 231, baseType: !230, size: 64, align: 64, offset: 2880)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64, align: 64)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode_list", file: !79, line: 122, size: 128, align: 64, elements: !232)
!232 = !{!233, !234}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !231, file: !79, line: 123, baseType: !230, size: 64, align: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "namenode", scope: !231, file: !79, line: 124, baseType: !235, size: 64, align: 64, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64, align: 64)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode", file: !79, line: 90, size: 640, align: 64, elements: !237)
!237 = !{!238, !239, !240, !241, !249, !268, !283, !284, !285, !286}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !236, file: !79, line: 91, baseType: !235, size: 64, align: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !236, file: !79, line: 92, baseType: !109, size: 64, align: 64, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "packages", scope: !236, file: !79, line: 93, baseType: !94, size: 64, align: 64, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "divert", scope: !236, file: !79, line: 94, baseType: !242, size: 64, align: 64, offset: 192)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64, align: 64)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_diversion", file: !79, line: 151, size: 256, align: 64, elements: !244)
!244 = !{!245, !246, !247, !248}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "useinstead", scope: !243, file: !79, line: 152, baseType: !235, size: 64, align: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "camefrom", scope: !243, file: !79, line: 153, baseType: !235, size: 64, align: 64, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "pkgset", scope: !243, file: !79, line: 154, baseType: !104, size: 64, align: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !243, file: !79, line: 157, baseType: !242, size: 64, align: 64, offset: 192)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "statoverride", scope: !236, file: !79, line: 101, baseType: !250, size: 64, align: 64, offset: 256)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64, align: 64)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_stat", file: !252, line: 40, size: 256, align: 64, elements: !253)
!252 = !DIFile(filename: "../../lib/dpkg/file.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!253 = !{!254, !259, !262, !265, !267}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !251, file: !252, line: 41, baseType: !255, size: 32, align: 32)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !256, line: 80, baseType: !257)
!256 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !258, line: 125, baseType: !145)
!258 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!259 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !251, file: !252, line: 42, baseType: !260, size: 32, align: 32, offset: 32)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !256, line: 65, baseType: !261)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !258, line: 126, baseType: !145)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !251, file: !252, line: 43, baseType: !263, size: 32, align: 32, offset: 64)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !256, line: 70, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !258, line: 129, baseType: !145)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "uname", scope: !251, file: !252, line: 47, baseType: !266, size: 64, align: 64, offset: 128)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64, align: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !251, file: !252, line: 48, baseType: !266, size: 64, align: 64, offset: 192)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "trig_interested", scope: !236, file: !79, line: 103, baseType: !269, size: 64, align: 64, offset: 320)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64, align: 64)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigfileint", file: !74, line: 54, size: 448, align: 64, elements: !271)
!271 = !{!272, !273, !275, !276, !277, !278}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !270, file: !74, line: 55, baseType: !100, size: 64, align: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "pkgbin", scope: !270, file: !74, line: 56, baseType: !274, size: 64, align: 64, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64, align: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "fnn", scope: !270, file: !74, line: 57, baseType: !235, size: 64, align: 64, offset: 128)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !270, file: !74, line: 58, baseType: !73, size: 32, align: 32, offset: 192)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "samefile_next", scope: !270, file: !74, line: 59, baseType: !269, size: 64, align: 64, offset: 256)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "inoverall", scope: !270, file: !74, line: 62, baseType: !279, size: 128, align: 64, offset: 320)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !270, file: !74, line: 60, size: 128, align: 64, elements: !280)
!280 = !{!281, !282}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !279, file: !74, line: 61, baseType: !269, size: 64, align: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !279, file: !74, line: 61, baseType: !269, size: 64, align: 64, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !236, file: !79, line: 111, baseType: !78, size: 32, align: 32, offset: 384)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "oldhash", scope: !236, file: !79, line: 114, baseType: !109, size: 64, align: 64, offset: 448)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "newhash", scope: !236, file: !79, line: 117, baseType: !109, size: 64, align: 64, offset: 512)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "file_ondisk_id", scope: !236, file: !79, line: 119, baseType: !287, size: 64, align: 64, offset: 576)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64, align: 64)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ondisk_id", file: !79, line: 85, size: 128, align: 64, elements: !289)
!289 = !{!290, !294}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "id_dev", scope: !288, file: !79, line: 86, baseType: !291, size: 64, align: 64)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !256, line: 60, baseType: !292)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !258, line: 124, baseType: !293)
!293 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "id_ino", scope: !288, file: !79, line: 87, baseType: !295, size: 64, align: 64, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !256, line: 48, baseType: !296)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !258, line: 127, baseType: !293)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_phys_offs", scope: !101, file: !4, line: 232, baseType: !298, size: 64, align: 64, offset: 2944)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !256, line: 86, baseType: !299)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !258, line: 131, baseType: !300)
!300 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_valid", scope: !101, file: !4, line: 233, baseType: !150, size: 8, align: 8, offset: 3008)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "status_dirty", scope: !101, file: !4, line: 236, baseType: !150, size: 8, align: 8, offset: 3016)
!303 = !{i32 2, !"Dwarf Version", i32 4}
!304 = !{i32 2, !"Debug Info Version", i32 3}
!305 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!306 = distinct !DISubprogram(name: "trig_note_pend_core", scope: !93, file: !93, line: 41, type: !307, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !309)
!307 = !DISubroutineType(types: !308)
!308 = !{!150, !100, !109}
!309 = !{}
!310 = !DILocalVariable(name: "pend", arg: 1, scope: !306, file: !93, line: 41, type: !100)
!311 = !DIExpression()
!312 = !DILocation(line: 41, column: 37, scope: !306)
!313 = !DILocalVariable(name: "trig", arg: 2, scope: !306, file: !93, line: 41, type: !109)
!314 = !DILocation(line: 41, column: 55, scope: !306)
!315 = !DILocalVariable(name: "tp", scope: !306, file: !93, line: 43, type: !224)
!316 = !DILocation(line: 43, column: 19, scope: !306)
!317 = !DILocation(line: 45, column: 12, scope: !318)
!318 = distinct !DILexicalBlock(scope: !306, file: !93, line: 45, column: 2)
!319 = !DILocation(line: 45, column: 18, scope: !318)
!320 = !DILocation(line: 45, column: 10, scope: !318)
!321 = !DILocation(line: 45, column: 7, scope: !318)
!322 = !DILocation(line: 45, column: 33, scope: !323)
!323 = !DILexicalBlockFile(scope: !324, file: !93, discriminator: 1)
!324 = distinct !DILexicalBlock(scope: !318, file: !93, line: 45, column: 2)
!325 = !DILocation(line: 45, column: 2, scope: !323)
!326 = !DILocation(line: 46, column: 14, scope: !327)
!327 = distinct !DILexicalBlock(scope: !324, file: !93, line: 46, column: 7)
!328 = !DILocation(line: 46, column: 18, scope: !327)
!329 = !DILocation(line: 46, column: 24, scope: !327)
!330 = !DILocation(line: 46, column: 7, scope: !327)
!331 = !DILocation(line: 46, column: 30, scope: !327)
!332 = !DILocation(line: 46, column: 7, scope: !324)
!333 = !DILocation(line: 47, column: 4, scope: !327)
!334 = !DILocation(line: 46, column: 33, scope: !335)
!335 = !DILexicalBlockFile(scope: !327, file: !93, discriminator: 1)
!336 = !DILocation(line: 45, column: 42, scope: !337)
!337 = !DILexicalBlockFile(scope: !324, file: !93, discriminator: 2)
!338 = !DILocation(line: 45, column: 46, scope: !337)
!339 = !DILocation(line: 45, column: 40, scope: !337)
!340 = !DILocation(line: 45, column: 2, scope: !337)
!341 = distinct !{!341, !342}
!342 = !DILocation(line: 45, column: 2, scope: !306)
!343 = !DILocation(line: 49, column: 7, scope: !306)
!344 = !DILocation(line: 49, column: 5, scope: !306)
!345 = !DILocation(line: 50, column: 13, scope: !306)
!346 = !DILocation(line: 50, column: 2, scope: !306)
!347 = !DILocation(line: 50, column: 6, scope: !306)
!348 = !DILocation(line: 50, column: 11, scope: !306)
!349 = !DILocation(line: 51, column: 13, scope: !306)
!350 = !DILocation(line: 51, column: 19, scope: !306)
!351 = !DILocation(line: 51, column: 2, scope: !306)
!352 = !DILocation(line: 51, column: 6, scope: !306)
!353 = !DILocation(line: 51, column: 11, scope: !306)
!354 = !DILocation(line: 52, column: 24, scope: !306)
!355 = !DILocation(line: 52, column: 2, scope: !306)
!356 = !DILocation(line: 52, column: 8, scope: !306)
!357 = !DILocation(line: 52, column: 22, scope: !306)
!358 = !DILocation(line: 54, column: 2, scope: !306)
!359 = !DILocation(line: 55, column: 1, scope: !306)
!360 = distinct !DISubprogram(name: "trig_note_pend", scope: !93, file: !93, line: 64, type: !307, isLocal: false, isDefinition: true, scopeLine: 65, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !309)
!361 = !DILocalVariable(name: "pend", arg: 1, scope: !360, file: !93, line: 64, type: !100)
!362 = !DILocation(line: 64, column: 32, scope: !360)
!363 = !DILocalVariable(name: "trig", arg: 2, scope: !360, file: !93, line: 64, type: !109)
!364 = !DILocation(line: 64, column: 50, scope: !360)
!365 = !DILocation(line: 66, column: 27, scope: !366)
!366 = distinct !DILexicalBlock(scope: !360, file: !93, line: 66, column: 6)
!367 = !DILocation(line: 66, column: 33, scope: !366)
!368 = !DILocation(line: 66, column: 7, scope: !366)
!369 = !DILocation(line: 66, column: 6, scope: !360)
!370 = !DILocation(line: 67, column: 3, scope: !366)
!371 = !DILocation(line: 69, column: 6, scope: !372)
!372 = distinct !DILexicalBlock(scope: !360, file: !93, line: 69, column: 6)
!373 = !DILocation(line: 69, column: 12, scope: !372)
!374 = !DILocation(line: 69, column: 19, scope: !372)
!375 = !DILocation(line: 69, column: 6, scope: !360)
!376 = !DILocation(line: 70, column: 18, scope: !372)
!377 = !DILocation(line: 70, column: 3, scope: !372)
!378 = !DILocation(line: 72, column: 18, scope: !372)
!379 = !DILocation(line: 72, column: 3, scope: !372)
!380 = !DILocation(line: 74, column: 2, scope: !360)
!381 = !DILocation(line: 75, column: 1, scope: !360)
!382 = distinct !DISubprogram(name: "trig_note_aw", scope: !93, file: !93, line: 85, type: !383, isLocal: false, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !309)
!383 = !DISubroutineType(types: !384)
!384 = !{!150, !100, !100}
!385 = !DILocalVariable(name: "pend", arg: 1, scope: !382, file: !93, line: 85, type: !100)
!386 = !DILocation(line: 85, column: 30, scope: !382)
!387 = !DILocalVariable(name: "aw", arg: 2, scope: !382, file: !93, line: 85, type: !100)
!388 = !DILocation(line: 85, column: 52, scope: !382)
!389 = !DILocalVariable(name: "ta", scope: !382, file: !93, line: 87, type: !210)
!390 = !DILocation(line: 87, column: 17, scope: !382)
!391 = !DILocation(line: 90, column: 12, scope: !392)
!392 = distinct !DILexicalBlock(scope: !382, file: !93, line: 90, column: 2)
!393 = !DILocation(line: 90, column: 16, scope: !392)
!394 = !DILocation(line: 90, column: 23, scope: !392)
!395 = !DILocation(line: 90, column: 10, scope: !392)
!396 = !DILocation(line: 90, column: 7, scope: !392)
!397 = !DILocation(line: 90, column: 29, scope: !398)
!398 = !DILexicalBlockFile(scope: !399, file: !93, discriminator: 1)
!399 = distinct !DILexicalBlock(scope: !392, file: !93, line: 90, column: 2)
!400 = !DILocation(line: 90, column: 2, scope: !398)
!401 = !DILocation(line: 91, column: 7, scope: !402)
!402 = distinct !DILexicalBlock(scope: !399, file: !93, line: 91, column: 7)
!403 = !DILocation(line: 91, column: 11, scope: !402)
!404 = !DILocation(line: 91, column: 19, scope: !402)
!405 = !DILocation(line: 91, column: 16, scope: !402)
!406 = !DILocation(line: 91, column: 7, scope: !399)
!407 = !DILocation(line: 92, column: 4, scope: !402)
!408 = !DILocation(line: 91, column: 19, scope: !409)
!409 = !DILexicalBlockFile(scope: !402, file: !93, discriminator: 1)
!410 = !DILocation(line: 90, column: 38, scope: !411)
!411 = !DILexicalBlockFile(scope: !399, file: !93, discriminator: 2)
!412 = !DILocation(line: 90, column: 42, scope: !411)
!413 = !DILocation(line: 90, column: 49, scope: !411)
!414 = !DILocation(line: 90, column: 36, scope: !411)
!415 = !DILocation(line: 90, column: 2, scope: !411)
!416 = distinct !{!416, !417}
!417 = !DILocation(line: 90, column: 2, scope: !382)
!418 = !DILocation(line: 94, column: 7, scope: !382)
!419 = !DILocation(line: 94, column: 5, scope: !382)
!420 = !DILocation(line: 95, column: 11, scope: !382)
!421 = !DILocation(line: 95, column: 2, scope: !382)
!422 = !DILocation(line: 95, column: 6, scope: !382)
!423 = !DILocation(line: 95, column: 9, scope: !382)
!424 = !DILocation(line: 96, column: 13, scope: !382)
!425 = !DILocation(line: 96, column: 2, scope: !382)
!426 = !DILocation(line: 96, column: 6, scope: !382)
!427 = !DILocation(line: 96, column: 11, scope: !382)
!428 = !DILocation(line: 97, column: 22, scope: !382)
!429 = !DILocation(line: 97, column: 28, scope: !382)
!430 = !DILocation(line: 97, column: 2, scope: !382)
!431 = !DILocation(line: 97, column: 6, scope: !382)
!432 = !DILocation(line: 97, column: 20, scope: !382)
!433 = !DILocation(line: 98, column: 27, scope: !382)
!434 = !DILocation(line: 98, column: 2, scope: !382)
!435 = !DILocation(line: 98, column: 8, scope: !382)
!436 = !DILocation(line: 98, column: 25, scope: !382)
!437 = !DILocation(line: 99, column: 2, scope: !382)
!438 = distinct !{!438, !437}
!439 = !DILocation(line: 99, column: 8, scope: !440)
!440 = !DILexicalBlockFile(scope: !441, file: !93, discriminator: 1)
!441 = distinct !DILexicalBlock(scope: !382, file: !93, line: 99, column: 5)
!442 = !DILocation(line: 99, column: 13, scope: !440)
!443 = !DILocation(line: 99, column: 20, scope: !440)
!444 = !DILocation(line: 99, column: 25, scope: !440)
!445 = !DILocation(line: 99, column: 24, scope: !440)
!446 = !DILocation(line: 99, column: 28, scope: !440)
!447 = !DILocation(line: 99, column: 36, scope: !440)
!448 = !DILocation(line: 99, column: 4, scope: !440)
!449 = !DILocation(line: 99, column: 9, scope: !440)
!450 = !DILocation(line: 99, column: 16, scope: !440)
!451 = !DILocation(line: 99, column: 21, scope: !440)
!452 = !DILocation(line: 99, column: 47, scope: !440)
!453 = !DILocation(line: 99, column: 51, scope: !440)
!454 = !DILocation(line: 99, column: 59, scope: !440)
!455 = !DILocation(line: 99, column: 46, scope: !440)
!456 = !DILocation(line: 99, column: 99, scope: !457)
!457 = !DILexicalBlockFile(scope: !458, file: !93, discriminator: 2)
!458 = distinct !DILexicalBlock(scope: !441, file: !93, line: 99, column: 46)
!459 = !DILocation(line: 99, column: 66, scope: !457)
!460 = !DILocation(line: 99, column: 70, scope: !457)
!461 = !DILocation(line: 99, column: 78, scope: !457)
!462 = !DILocation(line: 99, column: 84, scope: !457)
!463 = !DILocation(line: 99, column: 91, scope: !457)
!464 = !DILocation(line: 99, column: 96, scope: !457)
!465 = !DILocation(line: 99, column: 65, scope: !457)
!466 = !DILocation(line: 99, column: 130, scope: !467)
!467 = !DILexicalBlockFile(scope: !458, file: !93, discriminator: 3)
!468 = !DILocation(line: 99, column: 110, scope: !467)
!469 = !DILocation(line: 99, column: 114, scope: !467)
!470 = !DILocation(line: 99, column: 122, scope: !467)
!471 = !DILocation(line: 99, column: 127, scope: !467)
!472 = !DILocation(line: 99, column: 156, scope: !473)
!473 = !DILexicalBlockFile(scope: !441, file: !93, discriminator: 4)
!474 = !DILocation(line: 99, column: 136, scope: !473)
!475 = !DILocation(line: 99, column: 140, scope: !473)
!476 = !DILocation(line: 99, column: 148, scope: !473)
!477 = !DILocation(line: 99, column: 153, scope: !473)
!478 = !DILocation(line: 99, column: 161, scope: !473)
!479 = !DILocation(line: 101, column: 2, scope: !382)
!480 = !DILocation(line: 102, column: 1, scope: !382)
!481 = distinct !DISubprogram(name: "trig_awaited_pend_enqueue", scope: !93, file: !93, line: 107, type: !482, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !309)
!482 = !DISubroutineType(types: !483)
!483 = !{null, !100}
!484 = !DILocalVariable(name: "pend", arg: 1, scope: !481, file: !93, line: 107, type: !100)
!485 = !DILocation(line: 107, column: 43, scope: !481)
!486 = !DILocalVariable(name: "tp", scope: !481, file: !93, line: 109, type: !94)
!487 = !DILocation(line: 109, column: 19, scope: !481)
!488 = !DILocation(line: 111, column: 12, scope: !489)
!489 = distinct !DILexicalBlock(scope: !481, file: !93, line: 111, column: 2)
!490 = !DILocation(line: 111, column: 10, scope: !489)
!491 = !DILocation(line: 111, column: 7, scope: !489)
!492 = !DILocation(line: 111, column: 36, scope: !493)
!493 = !DILexicalBlockFile(scope: !494, file: !93, discriminator: 1)
!494 = distinct !DILexicalBlock(scope: !489, file: !93, line: 111, column: 2)
!495 = !DILocation(line: 111, column: 2, scope: !493)
!496 = !DILocation(line: 112, column: 7, scope: !497)
!497 = distinct !DILexicalBlock(scope: !494, file: !93, line: 112, column: 7)
!498 = !DILocation(line: 112, column: 11, scope: !497)
!499 = !DILocation(line: 112, column: 18, scope: !497)
!500 = !DILocation(line: 112, column: 15, scope: !497)
!501 = !DILocation(line: 112, column: 7, scope: !494)
!502 = !DILocation(line: 113, column: 4, scope: !497)
!503 = !DILocation(line: 112, column: 18, scope: !504)
!504 = !DILexicalBlockFile(scope: !497, file: !93, discriminator: 1)
!505 = !DILocation(line: 111, column: 45, scope: !506)
!506 = !DILexicalBlockFile(scope: !494, file: !93, discriminator: 2)
!507 = !DILocation(line: 111, column: 49, scope: !506)
!508 = !DILocation(line: 111, column: 43, scope: !506)
!509 = !DILocation(line: 111, column: 2, scope: !506)
!510 = distinct !{!510, !511}
!511 = !DILocation(line: 111, column: 2, scope: !481)
!512 = !DILocation(line: 115, column: 44, scope: !481)
!513 = !DILocation(line: 115, column: 2, scope: !481)
!514 = !DILocation(line: 116, column: 1, scope: !481)
!515 = !DILocation(line: 116, column: 1, scope: !516)
!516 = !DILexicalBlockFile(scope: !481, file: !93, discriminator: 1)
!517 = distinct !DISubprogram(name: "trig_awaited_pend_foreach", scope: !93, file: !93, line: 119, type: !518, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !309)
!518 = !DISubroutineType(types: !519)
!519 = !{null, !520}
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64, align: 64)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "trig_awaited_pend_foreach_func", file: !74, line: 100, baseType: !482)
!522 = !DILocalVariable(name: "func", arg: 1, scope: !517, file: !93, line: 119, type: !520)
!523 = !DILocation(line: 119, column: 59, scope: !517)
!524 = !DILocalVariable(name: "tp", scope: !517, file: !93, line: 121, type: !94)
!525 = !DILocation(line: 121, column: 19, scope: !517)
!526 = !DILocation(line: 123, column: 12, scope: !527)
!527 = distinct !DILexicalBlock(scope: !517, file: !93, line: 123, column: 2)
!528 = !DILocation(line: 123, column: 10, scope: !527)
!529 = !DILocation(line: 123, column: 7, scope: !527)
!530 = !DILocation(line: 123, column: 36, scope: !531)
!531 = !DILexicalBlockFile(scope: !532, file: !93, discriminator: 1)
!532 = distinct !DILexicalBlock(scope: !527, file: !93, line: 123, column: 2)
!533 = !DILocation(line: 123, column: 2, scope: !531)
!534 = !DILocation(line: 124, column: 8, scope: !535)
!535 = distinct !DILexicalBlock(scope: !532, file: !93, line: 124, column: 7)
!536 = !DILocation(line: 124, column: 12, scope: !535)
!537 = !DILocation(line: 124, column: 17, scope: !535)
!538 = !DILocation(line: 124, column: 7, scope: !532)
!539 = !DILocation(line: 125, column: 4, scope: !535)
!540 = !DILocation(line: 125, column: 9, scope: !535)
!541 = !DILocation(line: 125, column: 13, scope: !535)
!542 = !DILocation(line: 124, column: 17, scope: !543)
!543 = !DILexicalBlockFile(scope: !535, file: !93, discriminator: 1)
!544 = !DILocation(line: 123, column: 45, scope: !545)
!545 = !DILexicalBlockFile(scope: !532, file: !93, discriminator: 2)
!546 = !DILocation(line: 123, column: 49, scope: !545)
!547 = !DILocation(line: 123, column: 43, scope: !545)
!548 = !DILocation(line: 123, column: 2, scope: !545)
!549 = distinct !{!549, !550}
!550 = !DILocation(line: 123, column: 2, scope: !517)
!551 = !DILocation(line: 126, column: 1, scope: !517)
!552 = distinct !DISubprogram(name: "trig_awaited_pend_free", scope: !93, file: !93, line: 129, type: !553, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !309)
!553 = !DISubroutineType(types: !554)
!554 = !{null}
!555 = !DILocation(line: 131, column: 16, scope: !552)
!556 = !DILocation(line: 131, column: 2, scope: !552)
!557 = !DILocation(line: 132, column: 25, scope: !552)
!558 = !DILocation(line: 133, column: 1, scope: !552)
