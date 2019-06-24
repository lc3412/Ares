; ModuleID = './[inter]lib--dpkg--fsys-hash.o.i'
source_filename = "./[inter]lib--dpkg--fsys-hash.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.fsys_namenode = type { %struct.fsys_namenode*, i8*, %struct.pkg_list*, %struct.fsys_diversion*, %struct.file_stat*, %struct.trigfileint*, i32, i8*, i8*, %struct.file_ondisk_id* }
%struct.pkg_list = type opaque
%struct.fsys_diversion = type { %struct.fsys_namenode*, %struct.fsys_namenode*, %struct.pkgset*, %struct.fsys_diversion* }
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
%struct.fsys_namenode_list = type { %struct.fsys_namenode_list*, %struct.fsys_namenode* }
%struct.anon.1 = type { %struct.deppossi*, %struct.deppossi* }
%struct.file_stat = type { i32, i32, i32, i8*, i8* }
%struct.trigfileint = type opaque
%struct.file_ondisk_id = type { i64, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.fsys_hash_iter = type { %struct.fsys_namenode*, i32 }

@bins = internal global [262139 x %struct.fsys_namenode*] zeroinitializer, align 16
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@nfiles = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"fsys-hash.c\00", align 1
@__func__.fsys_hash_find_node = private unnamed_addr constant [20 x i8] c"fsys_hash_find_node\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"filename node '%s' does not start with '/'\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"fsys-hash: bin %5d has %7d\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"fsys-hash: size %7d occurs %5d times\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"fsys-hash: bins empty %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"fsys-hash: bins used %d (collided %d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"<hash report>\00", align 1

; Function Attrs: nounwind uwtable
define void @fsys_hash_init() #0 !dbg !293 {
  %1 = alloca %struct.fsys_namenode*, align 8
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %1, metadata !297, metadata !298), !dbg !299
  call void @llvm.dbg.declare(metadata i32* %2, metadata !300, metadata !298), !dbg !301
  store i32 0, i32* %2, align 4, !dbg !302
  br label %3, !dbg !304

; <label>:3:                                      ; preds = %28, %0
  %4 = load i32, i32* %2, align 4, !dbg !305
  %5 = icmp slt i32 %4, 262139, !dbg !308
  br i1 %5, label %6, label %31, !dbg !309

; <label>:6:                                      ; preds = %3
  %7 = load i32, i32* %2, align 4, !dbg !310
  %8 = sext i32 %7 to i64, !dbg !313
  %9 = getelementptr inbounds [262139 x %struct.fsys_namenode*], [262139 x %struct.fsys_namenode*]* @bins, i64 0, i64 %8, !dbg !313
  %10 = load %struct.fsys_namenode*, %struct.fsys_namenode** %9, align 8, !dbg !313
  store %struct.fsys_namenode* %10, %struct.fsys_namenode** %1, align 8, !dbg !314
  br label %11, !dbg !315

; <label>:11:                                     ; preds = %23, %6
  %12 = load %struct.fsys_namenode*, %struct.fsys_namenode** %1, align 8, !dbg !316
  %13 = icmp ne %struct.fsys_namenode* %12, null, !dbg !319
  br i1 %13, label %14, label %27, !dbg !319

; <label>:14:                                     ; preds = %11
  %15 = load %struct.fsys_namenode*, %struct.fsys_namenode** %1, align 8, !dbg !320
  %16 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %15, i32 0, i32 6, !dbg !322
  store i32 0, i32* %16, align 8, !dbg !323
  %17 = load %struct.fsys_namenode*, %struct.fsys_namenode** %1, align 8, !dbg !324
  %18 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %17, i32 0, i32 7, !dbg !325
  store i8* null, i8** %18, align 8, !dbg !326
  %19 = load %struct.fsys_namenode*, %struct.fsys_namenode** %1, align 8, !dbg !327
  %20 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %19, i32 0, i32 8, !dbg !328
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8** %20, align 8, !dbg !329
  %21 = load %struct.fsys_namenode*, %struct.fsys_namenode** %1, align 8, !dbg !330
  %22 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %21, i32 0, i32 9, !dbg !331
  store %struct.file_ondisk_id* null, %struct.file_ondisk_id** %22, align 8, !dbg !332
  br label %23, !dbg !333

; <label>:23:                                     ; preds = %14
  %24 = load %struct.fsys_namenode*, %struct.fsys_namenode** %1, align 8, !dbg !334
  %25 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %24, i32 0, i32 0, !dbg !336
  %26 = load %struct.fsys_namenode*, %struct.fsys_namenode** %25, align 8, !dbg !336
  store %struct.fsys_namenode* %26, %struct.fsys_namenode** %1, align 8, !dbg !337
  br label %11, !dbg !338, !llvm.loop !339

; <label>:27:                                     ; preds = %11
  br label %28, !dbg !341

; <label>:28:                                     ; preds = %27
  %29 = load i32, i32* %2, align 4, !dbg !342
  %30 = add nsw i32 %29, 1, !dbg !342
  store i32 %30, i32* %2, align 4, !dbg !342
  br label %3, !dbg !344, !llvm.loop !345

; <label>:31:                                     ; preds = %3
  ret void, !dbg !347
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define void @fsys_hash_reset() #0 !dbg !348 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !349, metadata !298), !dbg !350
  store i32 0, i32* %1, align 4, !dbg !351
  br label %2, !dbg !353

; <label>:2:                                      ; preds = %9, %0
  %3 = load i32, i32* %1, align 4, !dbg !354
  %4 = icmp slt i32 %3, 262139, !dbg !357
  br i1 %4, label %5, label %12, !dbg !358

; <label>:5:                                      ; preds = %2
  %6 = load i32, i32* %1, align 4, !dbg !359
  %7 = sext i32 %6 to i64, !dbg !360
  %8 = getelementptr inbounds [262139 x %struct.fsys_namenode*], [262139 x %struct.fsys_namenode*]* @bins, i64 0, i64 %7, !dbg !360
  store %struct.fsys_namenode* null, %struct.fsys_namenode** %8, align 8, !dbg !361
  br label %9, !dbg !360

; <label>:9:                                      ; preds = %5
  %10 = load i32, i32* %1, align 4, !dbg !362
  %11 = add nsw i32 %10, 1, !dbg !362
  store i32 %11, i32* %1, align 4, !dbg !362
  br label %2, !dbg !364, !llvm.loop !365

; <label>:12:                                     ; preds = %2
  store i32 0, i32* @nfiles, align 4, !dbg !367
  ret void, !dbg !368
}

; Function Attrs: nounwind uwtable
define i32 @fsys_hash_entries() #0 !dbg !369 {
  %1 = load i32, i32* @nfiles, align 4, !dbg !372
  ret i32 %1, !dbg !373
}

; Function Attrs: nounwind uwtable
define %struct.fsys_namenode* @fsys_hash_find_node(i8*, i32) #0 !dbg !374 {
  %3 = alloca %struct.fsys_namenode*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fsys_namenode**, align 8
  %7 = alloca %struct.fsys_namenode*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !377, metadata !298), !dbg !378
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !379, metadata !298), !dbg !380
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode*** %6, metadata !381, metadata !298), !dbg !383
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %7, metadata !384, metadata !298), !dbg !385
  call void @llvm.dbg.declare(metadata i8** %8, metadata !386, metadata !298), !dbg !387
  %10 = load i8*, i8** %4, align 8, !dbg !388
  store i8* %10, i8** %8, align 8, !dbg !387
  %11 = load i8*, i8** %4, align 8, !dbg !389
  %12 = call i8* @path_skip_slash_dotslash(i8* %11), !dbg !390
  store i8* %12, i8** %4, align 8, !dbg !391
  %13 = load i8*, i8** %4, align 8, !dbg !392
  %14 = call i32 @str_fnv_hash(i8* %13), !dbg !393
  %15 = urem i32 %14, 262139, !dbg !394
  %16 = zext i32 %15 to i64, !dbg !395
  %17 = getelementptr inbounds %struct.fsys_namenode*, %struct.fsys_namenode** getelementptr inbounds ([262139 x %struct.fsys_namenode*], [262139 x %struct.fsys_namenode*]* @bins, i32 0, i32 0), i64 %16, !dbg !395
  store %struct.fsys_namenode** %17, %struct.fsys_namenode*** %6, align 8, !dbg !396
  br label %18, !dbg !397

; <label>:18:                                     ; preds = %46, %2
  %19 = load %struct.fsys_namenode**, %struct.fsys_namenode*** %6, align 8, !dbg !398
  %20 = load %struct.fsys_namenode*, %struct.fsys_namenode** %19, align 8, !dbg !400
  %21 = icmp ne %struct.fsys_namenode* %20, null, !dbg !401
  br i1 %21, label %22, label %50, !dbg !401

; <label>:22:                                     ; preds = %18
  %23 = load %struct.fsys_namenode**, %struct.fsys_namenode*** %6, align 8, !dbg !402
  %24 = load %struct.fsys_namenode*, %struct.fsys_namenode** %23, align 8, !dbg !405
  %25 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %24, i32 0, i32 1, !dbg !406
  %26 = load i8*, i8** %25, align 8, !dbg !406
  %27 = getelementptr inbounds i8, i8* %26, i64 0, !dbg !407
  %28 = load i8, i8* %27, align 1, !dbg !407
  %29 = sext i8 %28 to i32, !dbg !407
  %30 = icmp ne i32 %29, 47, !dbg !408
  br i1 %30, label %31, label %36, !dbg !409

; <label>:31:                                     ; preds = %22
  %32 = load %struct.fsys_namenode**, %struct.fsys_namenode*** %6, align 8, !dbg !410
  %33 = load %struct.fsys_namenode*, %struct.fsys_namenode** %32, align 8, !dbg !411
  %34 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %33, i32 0, i32 1, !dbg !412
  %35 = load i8*, i8** %34, align 8, !dbg !412
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 93, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.fsys_hash_find_node, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i32 0, i32 0), i8* %35) #6, !dbg !413
  unreachable, !dbg !413

; <label>:36:                                     ; preds = %22
  %37 = load %struct.fsys_namenode**, %struct.fsys_namenode*** %6, align 8, !dbg !414
  %38 = load %struct.fsys_namenode*, %struct.fsys_namenode** %37, align 8, !dbg !416
  %39 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %38, i32 0, i32 1, !dbg !417
  %40 = load i8*, i8** %39, align 8, !dbg !417
  %41 = getelementptr inbounds i8, i8* %40, i64 1, !dbg !418
  %42 = load i8*, i8** %4, align 8, !dbg !419
  %43 = call i32 @strcmp(i8* %41, i8* %42) #7, !dbg !420
  %44 = icmp eq i32 %43, 0, !dbg !421
  br i1 %44, label %45, label %46, !dbg !422

; <label>:45:                                     ; preds = %36
  br label %50, !dbg !423

; <label>:46:                                     ; preds = %36
  %47 = load %struct.fsys_namenode**, %struct.fsys_namenode*** %6, align 8, !dbg !424
  %48 = load %struct.fsys_namenode*, %struct.fsys_namenode** %47, align 8, !dbg !425
  %49 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %48, i32 0, i32 0, !dbg !426
  store %struct.fsys_namenode** %49, %struct.fsys_namenode*** %6, align 8, !dbg !427
  br label %18, !dbg !428, !llvm.loop !430

; <label>:50:                                     ; preds = %45, %18
  %51 = load %struct.fsys_namenode**, %struct.fsys_namenode*** %6, align 8, !dbg !431
  %52 = load %struct.fsys_namenode*, %struct.fsys_namenode** %51, align 8, !dbg !433
  %53 = icmp ne %struct.fsys_namenode* %52, null, !dbg !433
  br i1 %53, label %54, label %57, !dbg !434

; <label>:54:                                     ; preds = %50
  %55 = load %struct.fsys_namenode**, %struct.fsys_namenode*** %6, align 8, !dbg !435
  %56 = load %struct.fsys_namenode*, %struct.fsys_namenode** %55, align 8, !dbg !436
  store %struct.fsys_namenode* %56, %struct.fsys_namenode** %3, align 8, !dbg !437
  br label %121, !dbg !437

; <label>:57:                                     ; preds = %50
  %58 = load i32, i32* %5, align 4, !dbg !438
  %59 = and i32 %58, 2, !dbg !440
  %60 = icmp ne i32 %59, 0, !dbg !440
  br i1 %60, label %61, label %62, !dbg !441

; <label>:61:                                     ; preds = %57
  store %struct.fsys_namenode* null, %struct.fsys_namenode** %3, align 8, !dbg !442
  br label %121, !dbg !442

; <label>:62:                                     ; preds = %57
  %63 = call i8* @nfmalloc(i64 80), !dbg !443
  %64 = bitcast i8* %63 to %struct.fsys_namenode*, !dbg !443
  store %struct.fsys_namenode* %64, %struct.fsys_namenode** %7, align 8, !dbg !444
  %65 = load %struct.fsys_namenode*, %struct.fsys_namenode** %7, align 8, !dbg !445
  %66 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %65, i32 0, i32 2, !dbg !446
  store %struct.pkg_list* null, %struct.pkg_list** %66, align 8, !dbg !447
  %67 = load i32, i32* %5, align 4, !dbg !448
  %68 = and i32 %67, 1, !dbg !450
  %69 = icmp ne i32 %68, 0, !dbg !450
  br i1 %69, label %70, label %85, !dbg !451

; <label>:70:                                     ; preds = %62
  %71 = load i8*, i8** %4, align 8, !dbg !452
  %72 = load i8*, i8** %8, align 8, !dbg !454
  %73 = icmp ugt i8* %71, %72, !dbg !455
  br i1 %73, label %74, label %85, !dbg !456

; <label>:74:                                     ; preds = %70
  %75 = load i8*, i8** %4, align 8, !dbg !457
  %76 = getelementptr inbounds i8, i8* %75, i64 -1, !dbg !457
  %77 = load i8, i8* %76, align 1, !dbg !457
  %78 = sext i8 %77 to i32, !dbg !457
  %79 = icmp eq i32 %78, 47, !dbg !459
  br i1 %79, label %80, label %85, !dbg !460

; <label>:80:                                     ; preds = %74
  %81 = load i8*, i8** %4, align 8, !dbg !461
  %82 = getelementptr inbounds i8, i8* %81, i64 -1, !dbg !463
  %83 = load %struct.fsys_namenode*, %struct.fsys_namenode** %7, align 8, !dbg !464
  %84 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %83, i32 0, i32 1, !dbg !465
  store i8* %82, i8** %84, align 8, !dbg !466
  br label %99, !dbg !467

; <label>:85:                                     ; preds = %74, %70, %62
  call void @llvm.dbg.declare(metadata i8** %9, metadata !468, metadata !298), !dbg !470
  %86 = load i8*, i8** %4, align 8, !dbg !471
  %87 = call i64 @strlen(i8* %86) #7, !dbg !472
  %88 = add i64 %87, 2, !dbg !473
  %89 = call i8* @nfmalloc(i64 %88), !dbg !474
  store i8* %89, i8** %9, align 8, !dbg !470
  %90 = load i8*, i8** %9, align 8, !dbg !476
  %91 = getelementptr inbounds i8, i8* %90, i64 0, !dbg !476
  store i8 47, i8* %91, align 1, !dbg !477
  %92 = load i8*, i8** %9, align 8, !dbg !478
  %93 = getelementptr inbounds i8, i8* %92, i64 1, !dbg !479
  %94 = load i8*, i8** %4, align 8, !dbg !480
  %95 = call i8* @strcpy(i8* %93, i8* %94) #8, !dbg !481
  %96 = load i8*, i8** %9, align 8, !dbg !482
  %97 = load %struct.fsys_namenode*, %struct.fsys_namenode** %7, align 8, !dbg !483
  %98 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %97, i32 0, i32 1, !dbg !484
  store i8* %96, i8** %98, align 8, !dbg !485
  br label %99

; <label>:99:                                     ; preds = %85, %80
  %100 = load %struct.fsys_namenode*, %struct.fsys_namenode** %7, align 8, !dbg !486
  %101 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %100, i32 0, i32 6, !dbg !487
  store i32 0, i32* %101, align 8, !dbg !488
  %102 = load %struct.fsys_namenode*, %struct.fsys_namenode** %7, align 8, !dbg !489
  %103 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %102, i32 0, i32 0, !dbg !490
  store %struct.fsys_namenode* null, %struct.fsys_namenode** %103, align 8, !dbg !491
  %104 = load %struct.fsys_namenode*, %struct.fsys_namenode** %7, align 8, !dbg !492
  %105 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %104, i32 0, i32 3, !dbg !493
  store %struct.fsys_diversion* null, %struct.fsys_diversion** %105, align 8, !dbg !494
  %106 = load %struct.fsys_namenode*, %struct.fsys_namenode** %7, align 8, !dbg !495
  %107 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %106, i32 0, i32 4, !dbg !496
  store %struct.file_stat* null, %struct.file_stat** %107, align 8, !dbg !497
  %108 = load %struct.fsys_namenode*, %struct.fsys_namenode** %7, align 8, !dbg !498
  %109 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %108, i32 0, i32 7, !dbg !499
  store i8* null, i8** %109, align 8, !dbg !500
  %110 = load %struct.fsys_namenode*, %struct.fsys_namenode** %7, align 8, !dbg !501
  %111 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %110, i32 0, i32 8, !dbg !502
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8** %111, align 8, !dbg !503
  %112 = load %struct.fsys_namenode*, %struct.fsys_namenode** %7, align 8, !dbg !504
  %113 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %112, i32 0, i32 9, !dbg !505
  store %struct.file_ondisk_id* null, %struct.file_ondisk_id** %113, align 8, !dbg !506
  %114 = load %struct.fsys_namenode*, %struct.fsys_namenode** %7, align 8, !dbg !507
  %115 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %114, i32 0, i32 5, !dbg !508
  store %struct.trigfileint* null, %struct.trigfileint** %115, align 8, !dbg !509
  %116 = load %struct.fsys_namenode*, %struct.fsys_namenode** %7, align 8, !dbg !510
  %117 = load %struct.fsys_namenode**, %struct.fsys_namenode*** %6, align 8, !dbg !511
  store %struct.fsys_namenode* %116, %struct.fsys_namenode** %117, align 8, !dbg !512
  %118 = load i32, i32* @nfiles, align 4, !dbg !513
  %119 = add nsw i32 %118, 1, !dbg !513
  store i32 %119, i32* @nfiles, align 4, !dbg !513
  %120 = load %struct.fsys_namenode*, %struct.fsys_namenode** %7, align 8, !dbg !514
  store %struct.fsys_namenode* %120, %struct.fsys_namenode** %3, align 8, !dbg !515
  br label %121, !dbg !515

; <label>:121:                                    ; preds = %99, %61, %54
  %122 = load %struct.fsys_namenode*, %struct.fsys_namenode** %3, align 8, !dbg !516
  ret %struct.fsys_namenode* %122, !dbg !516
}

declare i8* @path_skip_slash_dotslash(i8*) #2

declare i32 @str_fnv_hash(i8*) #2

; Function Attrs: noreturn
declare void @do_internerr(i8*, i32, i8*, i8*, ...) #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare i8* @nfmalloc(i64) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #5

; Function Attrs: nounwind uwtable
define void @fsys_hash_report(%struct._IO_FILE*) #0 !dbg !517 {
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca %struct.fsys_namenode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !576, metadata !298), !dbg !577
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %3, metadata !578, metadata !298), !dbg !579
  call void @llvm.dbg.declare(metadata i32* %4, metadata !580, metadata !298), !dbg !581
  call void @llvm.dbg.declare(metadata i32* %5, metadata !582, metadata !298), !dbg !583
  call void @llvm.dbg.declare(metadata i32** %6, metadata !584, metadata !298), !dbg !586
  call void @llvm.dbg.declare(metadata i32* %7, metadata !587, metadata !298), !dbg !588
  store i32 0, i32* %7, align 4, !dbg !588
  call void @llvm.dbg.declare(metadata i32* %8, metadata !589, metadata !298), !dbg !590
  store i32 0, i32* %8, align 4, !dbg !590
  call void @llvm.dbg.declare(metadata i32* %9, metadata !591, metadata !298), !dbg !592
  store i32 0, i32* %9, align 4, !dbg !592
  %10 = load i32, i32* @nfiles, align 4, !dbg !593
  %11 = sext i32 %10 to i64, !dbg !593
  %12 = mul i64 4, %11, !dbg !594
  %13 = add i64 %12, 1, !dbg !595
  %14 = call i8* @m_malloc(i64 %13), !dbg !596
  %15 = bitcast i8* %14 to i32*, !dbg !596
  store i32* %15, i32** %6, align 8, !dbg !597
  store i32 0, i32* %4, align 4, !dbg !598
  br label %16, !dbg !600

; <label>:16:                                     ; preds = %25, %1
  %17 = load i32, i32* %4, align 4, !dbg !601
  %18 = load i32, i32* @nfiles, align 4, !dbg !604
  %19 = icmp sle i32 %17, %18, !dbg !605
  br i1 %19, label %20, label %28, !dbg !606

; <label>:20:                                     ; preds = %16
  %21 = load i32, i32* %4, align 4, !dbg !607
  %22 = sext i32 %21 to i64, !dbg !608
  %23 = load i32*, i32** %6, align 8, !dbg !608
  %24 = getelementptr inbounds i32, i32* %23, i64 %22, !dbg !608
  store i32 0, i32* %24, align 4, !dbg !609
  br label %25, !dbg !608

; <label>:25:                                     ; preds = %20
  %26 = load i32, i32* %4, align 4, !dbg !610
  %27 = add nsw i32 %26, 1, !dbg !610
  store i32 %27, i32* %4, align 4, !dbg !610
  br label %16, !dbg !612, !llvm.loop !613

; <label>:28:                                     ; preds = %16
  store i32 0, i32* %4, align 4, !dbg !615
  br label %29, !dbg !617

; <label>:29:                                     ; preds = %76, %28
  %30 = load i32, i32* %4, align 4, !dbg !618
  %31 = icmp slt i32 %30, 262139, !dbg !621
  br i1 %31, label %32, label %79, !dbg !622

; <label>:32:                                     ; preds = %29
  store i32 0, i32* %5, align 4, !dbg !623
  %33 = load i32, i32* %4, align 4, !dbg !626
  %34 = sext i32 %33 to i64, !dbg !627
  %35 = getelementptr inbounds [262139 x %struct.fsys_namenode*], [262139 x %struct.fsys_namenode*]* @bins, i64 0, i64 %34, !dbg !627
  %36 = load %struct.fsys_namenode*, %struct.fsys_namenode** %35, align 8, !dbg !627
  store %struct.fsys_namenode* %36, %struct.fsys_namenode** %3, align 8, !dbg !628
  br label %37, !dbg !629

; <label>:37:                                     ; preds = %41, %32
  %38 = load %struct.fsys_namenode*, %struct.fsys_namenode** %3, align 8, !dbg !630
  %39 = icmp ne %struct.fsys_namenode* %38, null, !dbg !633
  br i1 %39, label %40, label %47, !dbg !633

; <label>:40:                                     ; preds = %37
  br label %41, !dbg !634

; <label>:41:                                     ; preds = %40
  %42 = load i32, i32* %5, align 4, !dbg !636
  %43 = add nsw i32 %42, 1, !dbg !636
  store i32 %43, i32* %5, align 4, !dbg !636
  %44 = load %struct.fsys_namenode*, %struct.fsys_namenode** %3, align 8, !dbg !638
  %45 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %44, i32 0, i32 0, !dbg !639
  %46 = load %struct.fsys_namenode*, %struct.fsys_namenode** %45, align 8, !dbg !639
  store %struct.fsys_namenode* %46, %struct.fsys_namenode** %3, align 8, !dbg !640
  br label %37, !dbg !641, !llvm.loop !642

; <label>:47:                                     ; preds = %37
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !644
  %49 = load i32, i32* %4, align 4, !dbg !645
  %50 = load i32, i32* %5, align 4, !dbg !646
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0), i32 %49, i32 %50), !dbg !647
  %52 = load i32, i32* %5, align 4, !dbg !648
  %53 = icmp eq i32 %52, 0, !dbg !650
  br i1 %53, label %54, label %57, !dbg !651

; <label>:54:                                     ; preds = %47
  %55 = load i32, i32* %7, align 4, !dbg !652
  %56 = add nsw i32 %55, 1, !dbg !652
  store i32 %56, i32* %7, align 4, !dbg !652
  br label %69, !dbg !653

; <label>:57:                                     ; preds = %47
  %58 = load i32, i32* %5, align 4, !dbg !654
  %59 = icmp eq i32 %58, 1, !dbg !656
  br i1 %59, label %60, label %63, !dbg !657

; <label>:60:                                     ; preds = %57
  %61 = load i32, i32* %8, align 4, !dbg !658
  %62 = add nsw i32 %61, 1, !dbg !658
  store i32 %62, i32* %8, align 4, !dbg !658
  br label %68, !dbg !659

; <label>:63:                                     ; preds = %57
  %64 = load i32, i32* %8, align 4, !dbg !660
  %65 = add nsw i32 %64, 1, !dbg !660
  store i32 %65, i32* %8, align 4, !dbg !660
  %66 = load i32, i32* %9, align 4, !dbg !662
  %67 = add nsw i32 %66, 1, !dbg !662
  store i32 %67, i32* %9, align 4, !dbg !662
  br label %68

; <label>:68:                                     ; preds = %63, %60
  br label %69

; <label>:69:                                     ; preds = %68, %54
  %70 = load i32, i32* %5, align 4, !dbg !663
  %71 = sext i32 %70 to i64, !dbg !664
  %72 = load i32*, i32** %6, align 8, !dbg !664
  %73 = getelementptr inbounds i32, i32* %72, i64 %71, !dbg !664
  %74 = load i32, i32* %73, align 4, !dbg !665
  %75 = add nsw i32 %74, 1, !dbg !665
  store i32 %75, i32* %73, align 4, !dbg !665
  br label %76, !dbg !666

; <label>:76:                                     ; preds = %69
  %77 = load i32, i32* %4, align 4, !dbg !667
  %78 = add nsw i32 %77, 1, !dbg !667
  store i32 %78, i32* %4, align 4, !dbg !667
  br label %29, !dbg !669, !llvm.loop !670

; <label>:79:                                     ; preds = %29
  %80 = load i32, i32* @nfiles, align 4, !dbg !672
  store i32 %80, i32* %4, align 4, !dbg !674
  br label %81, !dbg !675

; <label>:81:                                     ; preds = %94, %79
  %82 = load i32, i32* %4, align 4, !dbg !676
  %83 = icmp sgt i32 %82, 0, !dbg !679
  br i1 %83, label %84, label %91, !dbg !680

; <label>:84:                                     ; preds = %81
  %85 = load i32, i32* %4, align 4, !dbg !681
  %86 = sext i32 %85 to i64, !dbg !683
  %87 = load i32*, i32** %6, align 8, !dbg !683
  %88 = getelementptr inbounds i32, i32* %87, i64 %86, !dbg !683
  %89 = load i32, i32* %88, align 4, !dbg !683
  %90 = icmp eq i32 %89, 0, !dbg !684
  br label %91

; <label>:91:                                     ; preds = %84, %81
  %92 = phi i1 [ false, %81 ], [ %90, %84 ]
  br i1 %92, label %93, label %97, !dbg !685

; <label>:93:                                     ; preds = %91
  br label %94, !dbg !687

; <label>:94:                                     ; preds = %93
  %95 = load i32, i32* %4, align 4, !dbg !689
  %96 = add nsw i32 %95, -1, !dbg !689
  store i32 %96, i32* %4, align 4, !dbg !689
  br label %81, !dbg !691, !llvm.loop !692

; <label>:97:                                     ; preds = %91
  br label %98, !dbg !694

; <label>:98:                                     ; preds = %101, %97
  %99 = load i32, i32* %4, align 4, !dbg !695
  %100 = icmp sge i32 %99, 0, !dbg !697
  br i1 %100, label %101, label %112, !dbg !698

; <label>:101:                                    ; preds = %98
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !699
  %103 = load i32, i32* %4, align 4, !dbg !701
  %104 = load i32, i32* %4, align 4, !dbg !702
  %105 = sext i32 %104 to i64, !dbg !703
  %106 = load i32*, i32** %6, align 8, !dbg !703
  %107 = getelementptr inbounds i32, i32* %106, i64 %105, !dbg !703
  %108 = load i32, i32* %107, align 4, !dbg !703
  %109 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %102, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i32 0, i32 0), i32 %103, i32 %108), !dbg !704
  %110 = load i32, i32* %4, align 4, !dbg !705
  %111 = add nsw i32 %110, -1, !dbg !705
  store i32 %111, i32* %4, align 4, !dbg !705
  br label %98, !dbg !706, !llvm.loop !708

; <label>:112:                                    ; preds = %98
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !709
  %114 = load i32, i32* %7, align 4, !dbg !710
  %115 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %113, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0), i32 %114), !dbg !711
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !712
  %117 = load i32, i32* %8, align 4, !dbg !713
  %118 = load i32, i32* %9, align 4, !dbg !714
  %119 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %116, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i32 0, i32 0), i32 %117, i32 %118), !dbg !715
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !716
  call void @m_output(%struct._IO_FILE* %120, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0)), !dbg !717
  %121 = load i32*, i32** %6, align 8, !dbg !718
  %122 = bitcast i32* %121 to i8*, !dbg !718
  call void @free(i8* %122) #8, !dbg !719
  ret void, !dbg !720
}

declare i8* @m_malloc(i64) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare void @m_output(%struct._IO_FILE*, i8*) #2

; Function Attrs: nounwind
declare void @free(i8*) #5

; Function Attrs: nounwind uwtable
define %struct.fsys_hash_iter* @fsys_hash_iter_new() #0 !dbg !721 {
  %1 = alloca %struct.fsys_hash_iter*, align 8
  call void @llvm.dbg.declare(metadata %struct.fsys_hash_iter** %1, metadata !729, metadata !298), !dbg !730
  %2 = call i8* @m_malloc(i64 16), !dbg !731
  %3 = bitcast i8* %2 to %struct.fsys_hash_iter*, !dbg !731
  store %struct.fsys_hash_iter* %3, %struct.fsys_hash_iter** %1, align 8, !dbg !732
  %4 = load %struct.fsys_hash_iter*, %struct.fsys_hash_iter** %1, align 8, !dbg !733
  %5 = getelementptr inbounds %struct.fsys_hash_iter, %struct.fsys_hash_iter* %4, i32 0, i32 0, !dbg !734
  store %struct.fsys_namenode* null, %struct.fsys_namenode** %5, align 8, !dbg !735
  %6 = load %struct.fsys_hash_iter*, %struct.fsys_hash_iter** %1, align 8, !dbg !736
  %7 = getelementptr inbounds %struct.fsys_hash_iter, %struct.fsys_hash_iter* %6, i32 0, i32 1, !dbg !737
  store i32 0, i32* %7, align 8, !dbg !738
  %8 = load %struct.fsys_hash_iter*, %struct.fsys_hash_iter** %1, align 8, !dbg !739
  ret %struct.fsys_hash_iter* %8, !dbg !740
}

; Function Attrs: nounwind uwtable
define %struct.fsys_namenode* @fsys_hash_iter_next(%struct.fsys_hash_iter*) #0 !dbg !741 {
  %2 = alloca %struct.fsys_namenode*, align 8
  %3 = alloca %struct.fsys_hash_iter*, align 8
  %4 = alloca %struct.fsys_namenode*, align 8
  store %struct.fsys_hash_iter* %0, %struct.fsys_hash_iter** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.fsys_hash_iter** %3, metadata !744, metadata !298), !dbg !745
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %4, metadata !746, metadata !298), !dbg !747
  store %struct.fsys_namenode* null, %struct.fsys_namenode** %4, align 8, !dbg !747
  br label %5, !dbg !748

; <label>:5:                                      ; preds = %17, %1
  %6 = load %struct.fsys_hash_iter*, %struct.fsys_hash_iter** %3, align 8, !dbg !749
  %7 = getelementptr inbounds %struct.fsys_hash_iter, %struct.fsys_hash_iter* %6, i32 0, i32 0, !dbg !751
  %8 = load %struct.fsys_namenode*, %struct.fsys_namenode** %7, align 8, !dbg !751
  %9 = icmp ne %struct.fsys_namenode* %8, null, !dbg !752
  %10 = xor i1 %9, true, !dbg !752
  br i1 %10, label %11, label %27, !dbg !753

; <label>:11:                                     ; preds = %5
  %12 = load %struct.fsys_hash_iter*, %struct.fsys_hash_iter** %3, align 8, !dbg !754
  %13 = getelementptr inbounds %struct.fsys_hash_iter, %struct.fsys_hash_iter* %12, i32 0, i32 1, !dbg !757
  %14 = load i32, i32* %13, align 8, !dbg !757
  %15 = icmp sge i32 %14, 262139, !dbg !758
  br i1 %15, label %16, label %17, !dbg !759

; <label>:16:                                     ; preds = %11
  store %struct.fsys_namenode* null, %struct.fsys_namenode** %2, align 8, !dbg !760
  br label %37, !dbg !760

; <label>:17:                                     ; preds = %11
  %18 = load %struct.fsys_hash_iter*, %struct.fsys_hash_iter** %3, align 8, !dbg !761
  %19 = getelementptr inbounds %struct.fsys_hash_iter, %struct.fsys_hash_iter* %18, i32 0, i32 1, !dbg !762
  %20 = load i32, i32* %19, align 8, !dbg !763
  %21 = add nsw i32 %20, 1, !dbg !763
  store i32 %21, i32* %19, align 8, !dbg !763
  %22 = sext i32 %20 to i64, !dbg !764
  %23 = getelementptr inbounds [262139 x %struct.fsys_namenode*], [262139 x %struct.fsys_namenode*]* @bins, i64 0, i64 %22, !dbg !764
  %24 = load %struct.fsys_namenode*, %struct.fsys_namenode** %23, align 8, !dbg !764
  %25 = load %struct.fsys_hash_iter*, %struct.fsys_hash_iter** %3, align 8, !dbg !765
  %26 = getelementptr inbounds %struct.fsys_hash_iter, %struct.fsys_hash_iter* %25, i32 0, i32 0, !dbg !766
  store %struct.fsys_namenode* %24, %struct.fsys_namenode** %26, align 8, !dbg !767
  br label %5, !dbg !768, !llvm.loop !770

; <label>:27:                                     ; preds = %5
  %28 = load %struct.fsys_hash_iter*, %struct.fsys_hash_iter** %3, align 8, !dbg !771
  %29 = getelementptr inbounds %struct.fsys_hash_iter, %struct.fsys_hash_iter* %28, i32 0, i32 0, !dbg !772
  %30 = load %struct.fsys_namenode*, %struct.fsys_namenode** %29, align 8, !dbg !772
  store %struct.fsys_namenode* %30, %struct.fsys_namenode** %4, align 8, !dbg !773
  %31 = load %struct.fsys_namenode*, %struct.fsys_namenode** %4, align 8, !dbg !774
  %32 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %31, i32 0, i32 0, !dbg !775
  %33 = load %struct.fsys_namenode*, %struct.fsys_namenode** %32, align 8, !dbg !775
  %34 = load %struct.fsys_hash_iter*, %struct.fsys_hash_iter** %3, align 8, !dbg !776
  %35 = getelementptr inbounds %struct.fsys_hash_iter, %struct.fsys_hash_iter* %34, i32 0, i32 0, !dbg !777
  store %struct.fsys_namenode* %33, %struct.fsys_namenode** %35, align 8, !dbg !778
  %36 = load %struct.fsys_namenode*, %struct.fsys_namenode** %4, align 8, !dbg !779
  store %struct.fsys_namenode* %36, %struct.fsys_namenode** %2, align 8, !dbg !780
  br label %37, !dbg !780

; <label>:37:                                     ; preds = %27, %16
  %38 = load %struct.fsys_namenode*, %struct.fsys_namenode** %2, align 8, !dbg !781
  ret %struct.fsys_namenode* %38, !dbg !781
}

; Function Attrs: nounwind uwtable
define void @fsys_hash_iter_free(%struct.fsys_hash_iter*) #0 !dbg !782 {
  %2 = alloca %struct.fsys_hash_iter*, align 8
  store %struct.fsys_hash_iter* %0, %struct.fsys_hash_iter** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.fsys_hash_iter** %2, metadata !785, metadata !298), !dbg !786
  %3 = load %struct.fsys_hash_iter*, %struct.fsys_hash_iter** %2, align 8, !dbg !787
  %4 = bitcast %struct.fsys_hash_iter* %3 to i8*, !dbg !787
  call void @free(i8* %4) #8, !dbg !788
  ret void, !dbg !789
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!290, !291}
!llvm.ident = !{!292}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !90)
!1 = !DIFile(filename: "[inter]lib--dpkg--fsys-hash.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{!3, !12, !16, !26, !36, !47, !56, !67, !73, !86}
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
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fsys_namenode_flags", file: !74, line: 61, size: 32, align: 32, elements: !75)
!74 = !DIFile(filename: "fsys.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!75 = !{!76, !77, !78, !79, !80, !81, !82, !83, !84, !85}
!76 = !DIEnumerator(name: "FNNF_NEW_CONFF", value: 1)
!77 = !DIEnumerator(name: "FNNF_NEW_INARCHIVE", value: 2)
!78 = !DIEnumerator(name: "FNNF_OLD_CONFF", value: 4)
!79 = !DIEnumerator(name: "FNNF_OBS_CONFF", value: 8)
!80 = !DIEnumerator(name: "FNNF_ELIDE_OTHER_LISTS", value: 16)
!81 = !DIEnumerator(name: "FNNF_NO_ATOMIC_OVERWRITE", value: 32)
!82 = !DIEnumerator(name: "FNNF_PLACED_ON_DISK", value: 64)
!83 = !DIEnumerator(name: "FNNF_DEFERRED_FSYNC", value: 128)
!84 = !DIEnumerator(name: "FNNF_DEFERRED_RENAME", value: 256)
!85 = !DIEnumerator(name: "FNNF_FILTERED", value: 512)
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fsys_hash_find_flags", file: !74, line: 54, size: 32, align: 32, elements: !87)
!87 = !{!88, !89}
!88 = !DIEnumerator(name: "FHFF_NOCOPY", value: 1)
!89 = !DIEnumerator(name: "FHFF_NONE", value: 2)
!90 = !{!91, !289}
!91 = distinct !DIGlobalVariable(name: "bins", scope: !0, file: !92, line: 40, type: !93, isLocal: true, isDefinition: true, variable: [262139 x %struct.fsys_namenode*]* @bins)
!92 = !DIFile(filename: "fsys-hash.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 16776896, align: 64, elements: !287)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode", file: !74, line: 90, size: 640, align: 64, elements: !96)
!96 = !{!97, !98, !102, !105, !253, !270, !273, !274, !275, !276}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !95, file: !74, line: 91, baseType: !94, size: 64, align: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !95, file: !74, line: 92, baseType: !99, size: 64, align: 64, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64, align: 64)
!100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!101 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "packages", scope: !95, file: !74, line: 93, baseType: !103, size: 64, align: 64, offset: 128)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64, align: 64)
!104 = !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_list", file: !74, line: 93, flags: DIFlagFwdDecl)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "divert", scope: !95, file: !74, line: 94, baseType: !106, size: 64, align: 64, offset: 192)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64, align: 64)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_diversion", file: !74, line: 151, size: 256, align: 64, elements: !108)
!108 = !{!109, !110, !111, !252}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "useinstead", scope: !107, file: !74, line: 152, baseType: !94, size: 64, align: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "camefrom", scope: !107, file: !74, line: 153, baseType: !94, size: 64, align: 64, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "pkgset", scope: !107, file: !74, line: 154, baseType: !112, size: 64, align: 64, offset: 128)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64, align: 64)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgset", file: !4, line: 242, size: 3392, align: 64, elements: !114)
!114 = !{!115, !116, !117, !245, !250}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !113, file: !4, line: 243, baseType: !112, size: 64, align: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !113, file: !4, line: 244, baseType: !99, size: 64, align: 64, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !113, file: !4, line: 245, baseType: !118, size: 3072, align: 64, offset: 128)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkginfo", file: !4, line: 195, size: 3072, align: 64, elements: !119)
!119 = !{!120, !121, !123, !124, !125, !126, !127, !128, !129, !136, !195, !196, !199, !208, !224, !225, !231, !237, !243, !244}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !118, file: !4, line: 196, baseType: !112, size: 64, align: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "arch_next", scope: !118, file: !4, line: 197, baseType: !122, size: 64, align: 64, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64, align: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "want", scope: !118, file: !4, line: 199, baseType: !3, size: 32, align: 32, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "eflag", scope: !118, file: !4, line: 201, baseType: !12, size: 32, align: 32, offset: 160)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !118, file: !4, line: 202, baseType: !16, size: 32, align: 32, offset: 192)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !118, file: !4, line: 203, baseType: !26, size: 32, align: 32, offset: 224)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "otherpriority", scope: !118, file: !4, line: 204, baseType: !99, size: 64, align: 64, offset: 256)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "section", scope: !118, file: !4, line: 205, baseType: !99, size: 64, align: 64, offset: 320)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "configversion", scope: !118, file: !4, line: 206, baseType: !130, size: 192, align: 64, offset: 384)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_version", file: !48, line: 42, size: 192, align: 64, elements: !131)
!131 = !{!132, !134, !135}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !130, file: !48, line: 44, baseType: !133, size: 32, align: 32)
!133 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !130, file: !48, line: 46, baseType: !99, size: 64, align: 64, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !130, file: !48, line: 48, baseType: !99, size: 64, align: 64, offset: 128)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !118, file: !4, line: 207, baseType: !137, size: 960, align: 64, offset: 576)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgbin", file: !4, line: 107, size: 960, align: 64, elements: !138)
!138 = !{!139, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !188}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "depends", scope: !137, file: !4, line: 108, baseType: !140, size: 64, align: 64)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dependency", file: !4, line: 56, size: 256, align: 64, elements: !142)
!142 = !{!143, !144, !145, !168}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !141, file: !4, line: 57, baseType: !122, size: 64, align: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !141, file: !4, line: 58, baseType: !140, size: 64, align: 64, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !141, file: !4, line: 59, baseType: !146, size: 64, align: 64, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64, align: 64)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "deppossi", file: !4, line: 63, size: 640, align: 64, elements: !148)
!148 = !{!149, !150, !151, !152, !153, !154, !163, !164, !165, !167}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !147, file: !4, line: 64, baseType: !140, size: 64, align: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "ed", scope: !147, file: !4, line: 65, baseType: !112, size: 64, align: 64, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !147, file: !4, line: 66, baseType: !146, size: 64, align: 64, offset: 128)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "rev_next", scope: !147, file: !4, line: 66, baseType: !146, size: 64, align: 64, offset: 192)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "rev_prev", scope: !147, file: !4, line: 66, baseType: !146, size: 64, align: 64, offset: 256)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !147, file: !4, line: 67, baseType: !155, size: 64, align: 64, offset: 320)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64, align: 64)
!156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !157)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_arch", file: !37, line: 48, size: 192, align: 64, elements: !158)
!158 = !{!159, !161, !162}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !157, file: !37, line: 49, baseType: !160, size: 64, align: 64)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64, align: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !157, file: !37, line: 50, baseType: !99, size: 64, align: 64, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !157, file: !37, line: 51, baseType: !36, size: 32, align: 32, offset: 128)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !147, file: !4, line: 68, baseType: !130, size: 192, align: 64, offset: 384)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "verrel", scope: !147, file: !4, line: 69, baseType: !47, size: 32, align: 32, offset: 576)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "arch_is_implicit", scope: !147, file: !4, line: 70, baseType: !166, size: 8, align: 8, offset: 608)
!166 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "cyclebreak", scope: !147, file: !4, line: 71, baseType: !166, size: 8, align: 8, offset: 616)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !141, file: !4, line: 60, baseType: !56, size: 32, align: 32, offset: 192)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "essential", scope: !137, file: !4, line: 110, baseType: !166, size: 8, align: 8, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "multiarch", scope: !137, file: !4, line: 111, baseType: !67, size: 32, align: 32, offset: 96)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !137, file: !4, line: 112, baseType: !155, size: 64, align: 64, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "pkgname_archqual", scope: !137, file: !4, line: 115, baseType: !99, size: 64, align: 64, offset: 192)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !137, file: !4, line: 116, baseType: !99, size: 64, align: 64, offset: 256)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "maintainer", scope: !137, file: !4, line: 117, baseType: !99, size: 64, align: 64, offset: 320)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !137, file: !4, line: 118, baseType: !99, size: 64, align: 64, offset: 384)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "installedsize", scope: !137, file: !4, line: 119, baseType: !99, size: 64, align: 64, offset: 448)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !137, file: !4, line: 120, baseType: !99, size: 64, align: 64, offset: 512)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "bugs", scope: !137, file: !4, line: 121, baseType: !99, size: 64, align: 64, offset: 576)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !137, file: !4, line: 122, baseType: !130, size: 192, align: 64, offset: 640)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "conffiles", scope: !137, file: !4, line: 123, baseType: !181, size: 64, align: 64, offset: 832)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64, align: 64)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conffile", file: !4, line: 80, size: 256, align: 64, elements: !183)
!183 = !{!184, !185, !186, !187}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !182, file: !4, line: 81, baseType: !181, size: 64, align: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !182, file: !4, line: 82, baseType: !99, size: 64, align: 64, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !182, file: !4, line: 83, baseType: !99, size: 64, align: 64, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "obsolete", scope: !182, file: !4, line: 84, baseType: !166, size: 8, align: 8, offset: 192)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "arbs", scope: !137, file: !4, line: 124, baseType: !189, size: 64, align: 64, offset: 896)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64, align: 64)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arbitraryfield", file: !4, line: 74, size: 192, align: 64, elements: !191)
!191 = !{!192, !193, !194}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !190, file: !4, line: 75, baseType: !189, size: 64, align: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !190, file: !4, line: 76, baseType: !99, size: 64, align: 64, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !190, file: !4, line: 77, baseType: !99, size: 64, align: 64, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !118, file: !4, line: 208, baseType: !137, size: 960, align: 64, offset: 1536)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "clientdata", scope: !118, file: !4, line: 209, baseType: !197, size: 64, align: 64, offset: 2496)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64, align: 64)
!198 = !DICompositeType(tag: DW_TAG_structure_type, name: "perpackagestate", file: !4, line: 151, flags: DIFlagFwdDecl)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "archives", scope: !118, file: !4, line: 211, baseType: !200, size: 64, align: 64, offset: 2560)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64, align: 64)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archivedetails", file: !4, line: 87, size: 320, align: 64, elements: !202)
!202 = !{!203, !204, !205, !206, !207}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !201, file: !4, line: 88, baseType: !200, size: 64, align: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !201, file: !4, line: 89, baseType: !99, size: 64, align: 64, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "msdosname", scope: !201, file: !4, line: 90, baseType: !99, size: 64, align: 64, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !201, file: !4, line: 91, baseType: !99, size: 64, align: 64, offset: 192)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "md5sum", scope: !201, file: !4, line: 92, baseType: !99, size: 64, align: 64, offset: 256)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "trigaw", scope: !118, file: !4, line: 216, baseType: !209, size: 128, align: 64, offset: 2624)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !118, file: !4, line: 213, size: 128, align: 64, elements: !210)
!210 = !{!211, !223}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !209, file: !4, line: 215, baseType: !212, size: 64, align: 64)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64, align: 64)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigaw", file: !4, line: 142, size: 320, align: 64, elements: !214)
!214 = !{!215, !216, !217, !218}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "aw", scope: !213, file: !4, line: 143, baseType: !122, size: 64, align: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "pend", scope: !213, file: !4, line: 143, baseType: !122, size: 64, align: 64, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "samepend_next", scope: !213, file: !4, line: 144, baseType: !212, size: 64, align: 64, offset: 128)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "sameaw", scope: !213, file: !4, line: 147, baseType: !219, size: 128, align: 64, offset: 192)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !213, file: !4, line: 145, size: 128, align: 64, elements: !220)
!220 = !{!221, !222}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !219, file: !4, line: 146, baseType: !212, size: 64, align: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !219, file: !4, line: 146, baseType: !212, size: 64, align: 64, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !209, file: !4, line: 215, baseType: !212, size: 64, align: 64, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "othertrigaw_head", scope: !118, file: !4, line: 219, baseType: !212, size: 64, align: 64, offset: 2752)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "trigpend_head", scope: !118, file: !4, line: 220, baseType: !226, size: 64, align: 64, offset: 2816)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, align: 64)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigpend", file: !4, line: 134, size: 128, align: 64, elements: !228)
!228 = !{!229, !230}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !227, file: !4, line: 135, baseType: !226, size: 64, align: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !227, file: !4, line: 136, baseType: !99, size: 64, align: 64, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !118, file: !4, line: 231, baseType: !232, size: 64, align: 64, offset: 2880)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode_list", file: !74, line: 122, size: 128, align: 64, elements: !234)
!234 = !{!235, !236}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !233, file: !74, line: 123, baseType: !232, size: 64, align: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "namenode", scope: !233, file: !74, line: 124, baseType: !94, size: 64, align: 64, offset: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_phys_offs", scope: !118, file: !4, line: 232, baseType: !238, size: 64, align: 64, offset: 2944)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !239, line: 86, baseType: !240)
!239 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !241, line: 131, baseType: !242)
!241 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!242 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_valid", scope: !118, file: !4, line: 233, baseType: !166, size: 8, align: 8, offset: 3008)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "status_dirty", scope: !118, file: !4, line: 236, baseType: !166, size: 8, align: 8, offset: 3016)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "depended", scope: !113, file: !4, line: 249, baseType: !246, size: 128, align: 64, offset: 3200)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !113, file: !4, line: 246, size: 128, align: 64, elements: !247)
!247 = !{!248, !249}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !246, file: !4, line: 247, baseType: !146, size: 64, align: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !246, file: !4, line: 248, baseType: !146, size: 64, align: 64, offset: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "installed_instances", scope: !113, file: !4, line: 250, baseType: !251, size: 32, align: 32, offset: 3328)
!251 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !107, file: !74, line: 157, baseType: !106, size: 64, align: 64, offset: 192)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "statoverride", scope: !95, file: !74, line: 101, baseType: !254, size: 64, align: 64, offset: 256)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64, align: 64)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_stat", file: !256, line: 40, size: 256, align: 64, elements: !257)
!256 = !DIFile(filename: "../../lib/dpkg/file.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!257 = !{!258, !261, !264, !267, !269}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !255, file: !256, line: 41, baseType: !259, size: 32, align: 32)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !239, line: 80, baseType: !260)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !241, line: 125, baseType: !133)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !255, file: !256, line: 42, baseType: !262, size: 32, align: 32, offset: 32)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !239, line: 65, baseType: !263)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !241, line: 126, baseType: !133)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !255, file: !256, line: 43, baseType: !265, size: 32, align: 32, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !239, line: 70, baseType: !266)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !241, line: 129, baseType: !133)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "uname", scope: !255, file: !256, line: 47, baseType: !268, size: 64, align: 64, offset: 128)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64, align: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !255, file: !256, line: 48, baseType: !268, size: 64, align: 64, offset: 192)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "trig_interested", scope: !95, file: !74, line: 103, baseType: !271, size: 64, align: 64, offset: 320)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64, align: 64)
!272 = !DICompositeType(tag: DW_TAG_structure_type, name: "trigfileint", file: !74, line: 103, flags: DIFlagFwdDecl)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !95, file: !74, line: 111, baseType: !73, size: 32, align: 32, offset: 384)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "oldhash", scope: !95, file: !74, line: 114, baseType: !99, size: 64, align: 64, offset: 448)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "newhash", scope: !95, file: !74, line: 117, baseType: !99, size: 64, align: 64, offset: 512)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "file_ondisk_id", scope: !95, file: !74, line: 119, baseType: !277, size: 64, align: 64, offset: 576)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64, align: 64)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ondisk_id", file: !74, line: 85, size: 128, align: 64, elements: !279)
!279 = !{!280, !284}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "id_dev", scope: !278, file: !74, line: 86, baseType: !281, size: 64, align: 64)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !239, line: 60, baseType: !282)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !241, line: 124, baseType: !283)
!283 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "id_ino", scope: !278, file: !74, line: 87, baseType: !285, size: 64, align: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !239, line: 48, baseType: !286)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !241, line: 127, baseType: !283)
!287 = !{!288}
!288 = !DISubrange(count: 262139)
!289 = distinct !DIGlobalVariable(name: "nfiles", scope: !0, file: !92, line: 41, type: !251, isLocal: true, isDefinition: true, variable: i32* @nfiles)
!290 = !{i32 2, !"Dwarf Version", i32 4}
!291 = !{i32 2, !"Debug Info Version", i32 3}
!292 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!293 = distinct !DISubprogram(name: "fsys_hash_init", scope: !92, file: !92, line: 44, type: !294, isLocal: false, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!294 = !DISubroutineType(types: !295)
!295 = !{null}
!296 = !{}
!297 = !DILocalVariable(name: "fnn", scope: !293, file: !92, line: 46, type: !94)
!298 = !DIExpression()
!299 = !DILocation(line: 46, column: 24, scope: !293)
!300 = !DILocalVariable(name: "i", scope: !293, file: !92, line: 47, type: !251)
!301 = !DILocation(line: 47, column: 6, scope: !293)
!302 = !DILocation(line: 49, column: 9, scope: !303)
!303 = distinct !DILexicalBlock(scope: !293, file: !92, line: 49, column: 2)
!304 = !DILocation(line: 49, column: 7, scope: !303)
!305 = !DILocation(line: 49, column: 14, scope: !306)
!306 = !DILexicalBlockFile(scope: !307, file: !92, discriminator: 1)
!307 = distinct !DILexicalBlock(scope: !303, file: !92, line: 49, column: 2)
!308 = !DILocation(line: 49, column: 16, scope: !306)
!309 = !DILocation(line: 49, column: 2, scope: !306)
!310 = !DILocation(line: 50, column: 19, scope: !311)
!311 = distinct !DILexicalBlock(scope: !312, file: !92, line: 50, column: 3)
!312 = distinct !DILexicalBlock(scope: !307, file: !92, line: 49, column: 31)
!313 = !DILocation(line: 50, column: 14, scope: !311)
!314 = !DILocation(line: 50, column: 12, scope: !311)
!315 = !DILocation(line: 50, column: 8, scope: !311)
!316 = !DILocation(line: 50, column: 23, scope: !317)
!317 = !DILexicalBlockFile(scope: !318, file: !92, discriminator: 1)
!318 = distinct !DILexicalBlock(scope: !311, file: !92, line: 50, column: 3)
!319 = !DILocation(line: 50, column: 3, scope: !317)
!320 = !DILocation(line: 51, column: 4, scope: !321)
!321 = distinct !DILexicalBlock(scope: !318, file: !92, line: 50, column: 45)
!322 = !DILocation(line: 51, column: 9, scope: !321)
!323 = !DILocation(line: 51, column: 15, scope: !321)
!324 = !DILocation(line: 52, column: 4, scope: !321)
!325 = !DILocation(line: 52, column: 9, scope: !321)
!326 = !DILocation(line: 52, column: 17, scope: !321)
!327 = !DILocation(line: 53, column: 4, scope: !321)
!328 = !DILocation(line: 53, column: 9, scope: !321)
!329 = !DILocation(line: 53, column: 17, scope: !321)
!330 = !DILocation(line: 54, column: 4, scope: !321)
!331 = !DILocation(line: 54, column: 9, scope: !321)
!332 = !DILocation(line: 54, column: 24, scope: !321)
!333 = !DILocation(line: 55, column: 3, scope: !321)
!334 = !DILocation(line: 50, column: 34, scope: !335)
!335 = !DILexicalBlockFile(scope: !318, file: !92, discriminator: 2)
!336 = !DILocation(line: 50, column: 39, scope: !335)
!337 = !DILocation(line: 50, column: 32, scope: !335)
!338 = !DILocation(line: 50, column: 3, scope: !335)
!339 = distinct !{!339, !340}
!340 = !DILocation(line: 50, column: 3, scope: !312)
!341 = !DILocation(line: 56, column: 2, scope: !312)
!342 = !DILocation(line: 49, column: 27, scope: !343)
!343 = !DILexicalBlockFile(scope: !307, file: !92, discriminator: 2)
!344 = !DILocation(line: 49, column: 2, scope: !343)
!345 = distinct !{!345, !346}
!346 = !DILocation(line: 49, column: 2, scope: !293)
!347 = !DILocation(line: 57, column: 1, scope: !293)
!348 = distinct !DISubprogram(name: "fsys_hash_reset", scope: !92, file: !92, line: 60, type: !294, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!349 = !DILocalVariable(name: "i", scope: !348, file: !92, line: 62, type: !251)
!350 = !DILocation(line: 62, column: 6, scope: !348)
!351 = !DILocation(line: 64, column: 9, scope: !352)
!352 = distinct !DILexicalBlock(scope: !348, file: !92, line: 64, column: 2)
!353 = !DILocation(line: 64, column: 7, scope: !352)
!354 = !DILocation(line: 64, column: 14, scope: !355)
!355 = !DILexicalBlockFile(scope: !356, file: !92, discriminator: 1)
!356 = distinct !DILexicalBlock(scope: !352, file: !92, line: 64, column: 2)
!357 = !DILocation(line: 64, column: 16, scope: !355)
!358 = !DILocation(line: 64, column: 2, scope: !355)
!359 = !DILocation(line: 65, column: 8, scope: !356)
!360 = !DILocation(line: 65, column: 3, scope: !356)
!361 = !DILocation(line: 65, column: 11, scope: !356)
!362 = !DILocation(line: 64, column: 27, scope: !363)
!363 = !DILexicalBlockFile(scope: !356, file: !92, discriminator: 2)
!364 = !DILocation(line: 64, column: 2, scope: !363)
!365 = distinct !{!365, !366}
!366 = !DILocation(line: 64, column: 2, scope: !348)
!367 = !DILocation(line: 67, column: 9, scope: !348)
!368 = !DILocation(line: 68, column: 1, scope: !348)
!369 = distinct !DISubprogram(name: "fsys_hash_entries", scope: !92, file: !92, line: 71, type: !370, isLocal: false, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!370 = !DISubroutineType(types: !371)
!371 = !{!251}
!372 = !DILocation(line: 73, column: 9, scope: !369)
!373 = !DILocation(line: 73, column: 2, scope: !369)
!374 = distinct !DISubprogram(name: "fsys_hash_find_node", scope: !92, file: !92, line: 77, type: !375, isLocal: false, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!375 = !DISubroutineType(types: !376)
!376 = !{!94, !99, !86}
!377 = !DILocalVariable(name: "name", arg: 1, scope: !374, file: !92, line: 77, type: !99)
!378 = !DILocation(line: 77, column: 33, scope: !374)
!379 = !DILocalVariable(name: "flags", arg: 2, scope: !374, file: !92, line: 77, type: !86)
!380 = !DILocation(line: 77, column: 65, scope: !374)
!381 = !DILocalVariable(name: "pointerp", scope: !374, file: !92, line: 79, type: !382)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, align: 64)
!383 = !DILocation(line: 79, column: 25, scope: !374)
!384 = !DILocalVariable(name: "newnode", scope: !374, file: !92, line: 79, type: !94)
!385 = !DILocation(line: 79, column: 36, scope: !374)
!386 = !DILocalVariable(name: "orig_name", scope: !374, file: !92, line: 80, type: !99)
!387 = !DILocation(line: 80, column: 14, scope: !374)
!388 = !DILocation(line: 80, column: 26, scope: !374)
!389 = !DILocation(line: 84, column: 34, scope: !374)
!390 = !DILocation(line: 84, column: 9, scope: !374)
!391 = !DILocation(line: 84, column: 7, scope: !374)
!392 = !DILocation(line: 86, column: 34, scope: !374)
!393 = !DILocation(line: 86, column: 21, scope: !374)
!394 = !DILocation(line: 86, column: 40, scope: !374)
!395 = !DILocation(line: 86, column: 18, scope: !374)
!396 = !DILocation(line: 86, column: 11, scope: !374)
!397 = !DILocation(line: 87, column: 2, scope: !374)
!398 = !DILocation(line: 87, column: 10, scope: !399)
!399 = !DILexicalBlockFile(scope: !374, file: !92, discriminator: 1)
!400 = !DILocation(line: 87, column: 9, scope: !399)
!401 = !DILocation(line: 87, column: 2, scope: !399)
!402 = !DILocation(line: 91, column: 9, scope: !403)
!403 = distinct !DILexicalBlock(scope: !404, file: !92, line: 91, column: 7)
!404 = distinct !DILexicalBlock(scope: !374, file: !92, line: 87, column: 20)
!405 = !DILocation(line: 91, column: 8, scope: !403)
!406 = !DILocation(line: 91, column: 20, scope: !403)
!407 = !DILocation(line: 91, column: 7, scope: !403)
!408 = !DILocation(line: 91, column: 28, scope: !403)
!409 = !DILocation(line: 91, column: 7, scope: !404)
!410 = !DILocation(line: 92, column: 64, scope: !403)
!411 = !DILocation(line: 92, column: 63, scope: !403)
!412 = !DILocation(line: 92, column: 75, scope: !403)
!413 = !DILocation(line: 92, column: 4, scope: !403)
!414 = !DILocation(line: 95, column: 16, scope: !415)
!415 = distinct !DILexicalBlock(scope: !404, file: !92, line: 95, column: 7)
!416 = !DILocation(line: 95, column: 15, scope: !415)
!417 = !DILocation(line: 95, column: 27, scope: !415)
!418 = !DILocation(line: 95, column: 32, scope: !415)
!419 = !DILocation(line: 95, column: 37, scope: !415)
!420 = !DILocation(line: 95, column: 7, scope: !415)
!421 = !DILocation(line: 95, column: 43, scope: !415)
!422 = !DILocation(line: 95, column: 7, scope: !404)
!423 = !DILocation(line: 96, column: 4, scope: !415)
!424 = !DILocation(line: 97, column: 17, scope: !404)
!425 = !DILocation(line: 97, column: 16, scope: !404)
!426 = !DILocation(line: 97, column: 28, scope: !404)
!427 = !DILocation(line: 97, column: 12, scope: !404)
!428 = !DILocation(line: 87, column: 2, scope: !429)
!429 = !DILexicalBlockFile(scope: !374, file: !92, discriminator: 2)
!430 = distinct !{!430, !397}
!431 = !DILocation(line: 99, column: 7, scope: !432)
!432 = distinct !DILexicalBlock(scope: !374, file: !92, line: 99, column: 6)
!433 = !DILocation(line: 99, column: 6, scope: !432)
!434 = !DILocation(line: 99, column: 6, scope: !374)
!435 = !DILocation(line: 100, column: 11, scope: !432)
!436 = !DILocation(line: 100, column: 10, scope: !432)
!437 = !DILocation(line: 100, column: 3, scope: !432)
!438 = !DILocation(line: 102, column: 6, scope: !439)
!439 = distinct !DILexicalBlock(scope: !374, file: !92, line: 102, column: 6)
!440 = !DILocation(line: 102, column: 12, scope: !439)
!441 = !DILocation(line: 102, column: 6, scope: !374)
!442 = !DILocation(line: 103, column: 3, scope: !439)
!443 = !DILocation(line: 105, column: 12, scope: !374)
!444 = !DILocation(line: 105, column: 10, scope: !374)
!445 = !DILocation(line: 106, column: 2, scope: !374)
!446 = !DILocation(line: 106, column: 11, scope: !374)
!447 = !DILocation(line: 106, column: 20, scope: !374)
!448 = !DILocation(line: 107, column: 7, scope: !449)
!449 = distinct !DILexicalBlock(scope: !374, file: !92, line: 107, column: 6)
!450 = !DILocation(line: 107, column: 13, scope: !449)
!451 = !DILocation(line: 107, column: 28, scope: !449)
!452 = !DILocation(line: 107, column: 31, scope: !453)
!453 = !DILexicalBlockFile(scope: !449, file: !92, discriminator: 1)
!454 = !DILocation(line: 107, column: 38, scope: !453)
!455 = !DILocation(line: 107, column: 36, scope: !453)
!456 = !DILocation(line: 107, column: 48, scope: !453)
!457 = !DILocation(line: 107, column: 51, scope: !458)
!458 = !DILexicalBlockFile(scope: !449, file: !92, discriminator: 2)
!459 = !DILocation(line: 107, column: 60, scope: !458)
!460 = !DILocation(line: 107, column: 6, scope: !458)
!461 = !DILocation(line: 108, column: 19, scope: !462)
!462 = distinct !DILexicalBlock(scope: !449, file: !92, line: 107, column: 68)
!463 = !DILocation(line: 108, column: 24, scope: !462)
!464 = !DILocation(line: 108, column: 3, scope: !462)
!465 = !DILocation(line: 108, column: 12, scope: !462)
!466 = !DILocation(line: 108, column: 17, scope: !462)
!467 = !DILocation(line: 109, column: 2, scope: !462)
!468 = !DILocalVariable(name: "newname", scope: !469, file: !92, line: 110, type: !268)
!469 = distinct !DILexicalBlock(scope: !449, file: !92, line: 109, column: 9)
!470 = !DILocation(line: 110, column: 9, scope: !469)
!471 = !DILocation(line: 110, column: 35, scope: !469)
!472 = !DILocation(line: 110, column: 28, scope: !469)
!473 = !DILocation(line: 110, column: 41, scope: !469)
!474 = !DILocation(line: 110, column: 19, scope: !475)
!475 = !DILexicalBlockFile(scope: !469, file: !92, discriminator: 1)
!476 = !DILocation(line: 112, column: 3, scope: !469)
!477 = !DILocation(line: 112, column: 14, scope: !469)
!478 = !DILocation(line: 113, column: 10, scope: !469)
!479 = !DILocation(line: 113, column: 18, scope: !469)
!480 = !DILocation(line: 113, column: 23, scope: !469)
!481 = !DILocation(line: 113, column: 3, scope: !469)
!482 = !DILocation(line: 114, column: 19, scope: !469)
!483 = !DILocation(line: 114, column: 3, scope: !469)
!484 = !DILocation(line: 114, column: 12, scope: !469)
!485 = !DILocation(line: 114, column: 17, scope: !469)
!486 = !DILocation(line: 116, column: 2, scope: !374)
!487 = !DILocation(line: 116, column: 11, scope: !374)
!488 = !DILocation(line: 116, column: 17, scope: !374)
!489 = !DILocation(line: 117, column: 2, scope: !374)
!490 = !DILocation(line: 117, column: 11, scope: !374)
!491 = !DILocation(line: 117, column: 16, scope: !374)
!492 = !DILocation(line: 118, column: 2, scope: !374)
!493 = !DILocation(line: 118, column: 11, scope: !374)
!494 = !DILocation(line: 118, column: 18, scope: !374)
!495 = !DILocation(line: 119, column: 2, scope: !374)
!496 = !DILocation(line: 119, column: 11, scope: !374)
!497 = !DILocation(line: 119, column: 24, scope: !374)
!498 = !DILocation(line: 120, column: 2, scope: !374)
!499 = !DILocation(line: 120, column: 11, scope: !374)
!500 = !DILocation(line: 120, column: 19, scope: !374)
!501 = !DILocation(line: 121, column: 2, scope: !374)
!502 = !DILocation(line: 121, column: 11, scope: !374)
!503 = !DILocation(line: 121, column: 19, scope: !374)
!504 = !DILocation(line: 122, column: 2, scope: !374)
!505 = !DILocation(line: 122, column: 11, scope: !374)
!506 = !DILocation(line: 122, column: 26, scope: !374)
!507 = !DILocation(line: 123, column: 2, scope: !374)
!508 = !DILocation(line: 123, column: 11, scope: !374)
!509 = !DILocation(line: 123, column: 27, scope: !374)
!510 = !DILocation(line: 124, column: 14, scope: !374)
!511 = !DILocation(line: 124, column: 3, scope: !374)
!512 = !DILocation(line: 124, column: 12, scope: !374)
!513 = !DILocation(line: 125, column: 8, scope: !374)
!514 = !DILocation(line: 127, column: 9, scope: !374)
!515 = !DILocation(line: 127, column: 2, scope: !374)
!516 = !DILocation(line: 128, column: 1, scope: !374)
!517 = distinct !DISubprogram(name: "fsys_hash_report", scope: !92, file: !92, line: 131, type: !518, isLocal: false, isDefinition: true, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!518 = !DISubroutineType(types: !519)
!519 = !{null, !520}
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64, align: 64)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !522, line: 48, baseType: !523)
!522 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !524, line: 241, size: 1728, align: 64, elements: !525)
!524 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!525 = !{!526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !546, !547, !548, !549, !550, !552, !554, !558, !561, !563, !565, !566, !567, !568, !571, !572}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !523, file: !524, line: 242, baseType: !251, size: 32, align: 32)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !523, file: !524, line: 247, baseType: !268, size: 64, align: 64, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !523, file: !524, line: 248, baseType: !268, size: 64, align: 64, offset: 128)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !523, file: !524, line: 249, baseType: !268, size: 64, align: 64, offset: 192)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !523, file: !524, line: 250, baseType: !268, size: 64, align: 64, offset: 256)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !523, file: !524, line: 251, baseType: !268, size: 64, align: 64, offset: 320)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !523, file: !524, line: 252, baseType: !268, size: 64, align: 64, offset: 384)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !523, file: !524, line: 253, baseType: !268, size: 64, align: 64, offset: 448)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !523, file: !524, line: 254, baseType: !268, size: 64, align: 64, offset: 512)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !523, file: !524, line: 256, baseType: !268, size: 64, align: 64, offset: 576)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !523, file: !524, line: 257, baseType: !268, size: 64, align: 64, offset: 640)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !523, file: !524, line: 258, baseType: !268, size: 64, align: 64, offset: 704)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !523, file: !524, line: 260, baseType: !539, size: 64, align: 64, offset: 768)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64, align: 64)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !524, line: 156, size: 192, align: 64, elements: !541)
!541 = !{!542, !543, !545}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !540, file: !524, line: 157, baseType: !539, size: 64, align: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !540, file: !524, line: 158, baseType: !544, size: 64, align: 64, offset: 64)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64, align: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !540, file: !524, line: 162, baseType: !251, size: 32, align: 32, offset: 128)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !523, file: !524, line: 262, baseType: !544, size: 64, align: 64, offset: 832)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !523, file: !524, line: 264, baseType: !251, size: 32, align: 32, offset: 896)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !523, file: !524, line: 268, baseType: !251, size: 32, align: 32, offset: 928)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !523, file: !524, line: 270, baseType: !240, size: 64, align: 64, offset: 960)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !523, file: !524, line: 274, baseType: !551, size: 16, align: 16, offset: 1024)
!551 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !523, file: !524, line: 275, baseType: !553, size: 8, align: 8, offset: 1040)
!553 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !523, file: !524, line: 276, baseType: !555, size: 8, align: 8, offset: 1048)
!555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 8, align: 8, elements: !556)
!556 = !{!557}
!557 = !DISubrange(count: 1)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !523, file: !524, line: 280, baseType: !559, size: 64, align: 64, offset: 1088)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64, align: 64)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !524, line: 150, baseType: null)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !523, file: !524, line: 289, baseType: !562, size: 64, align: 64, offset: 1152)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !241, line: 132, baseType: !242)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !523, file: !524, line: 297, baseType: !564, size: 64, align: 64, offset: 1216)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !523, file: !524, line: 298, baseType: !564, size: 64, align: 64, offset: 1280)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !523, file: !524, line: 299, baseType: !564, size: 64, align: 64, offset: 1344)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !523, file: !524, line: 300, baseType: !564, size: 64, align: 64, offset: 1408)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !523, file: !524, line: 302, baseType: !569, size: 64, align: 64, offset: 1472)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !570, line: 216, baseType: !283)
!570 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!571 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !523, file: !524, line: 303, baseType: !251, size: 32, align: 32, offset: 1536)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !523, file: !524, line: 305, baseType: !573, size: 160, align: 8, offset: 1568)
!573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 160, align: 8, elements: !574)
!574 = !{!575}
!575 = !DISubrange(count: 20)
!576 = !DILocalVariable(name: "file", arg: 1, scope: !517, file: !92, line: 131, type: !520)
!577 = !DILocation(line: 131, column: 24, scope: !517)
!578 = !DILocalVariable(name: "node", scope: !517, file: !92, line: 133, type: !94)
!579 = !DILocation(line: 133, column: 24, scope: !517)
!580 = !DILocalVariable(name: "i", scope: !517, file: !92, line: 134, type: !251)
!581 = !DILocation(line: 134, column: 6, scope: !517)
!582 = !DILocalVariable(name: "c", scope: !517, file: !92, line: 134, type: !251)
!583 = !DILocation(line: 134, column: 9, scope: !517)
!584 = !DILocalVariable(name: "freq", scope: !517, file: !92, line: 135, type: !585)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64, align: 64)
!586 = !DILocation(line: 135, column: 7, scope: !517)
!587 = !DILocalVariable(name: "empty", scope: !517, file: !92, line: 136, type: !251)
!588 = !DILocation(line: 136, column: 6, scope: !517)
!589 = !DILocalVariable(name: "used", scope: !517, file: !92, line: 136, type: !251)
!590 = !DILocation(line: 136, column: 17, scope: !517)
!591 = !DILocalVariable(name: "collided", scope: !517, file: !92, line: 136, type: !251)
!592 = !DILocation(line: 136, column: 27, scope: !517)
!593 = !DILocation(line: 138, column: 36, scope: !517)
!594 = !DILocation(line: 138, column: 34, scope: !517)
!595 = !DILocation(line: 138, column: 43, scope: !517)
!596 = !DILocation(line: 138, column: 9, scope: !517)
!597 = !DILocation(line: 138, column: 7, scope: !517)
!598 = !DILocation(line: 139, column: 9, scope: !599)
!599 = distinct !DILexicalBlock(scope: !517, file: !92, line: 139, column: 2)
!600 = !DILocation(line: 139, column: 7, scope: !599)
!601 = !DILocation(line: 139, column: 14, scope: !602)
!602 = !DILexicalBlockFile(scope: !603, file: !92, discriminator: 1)
!603 = distinct !DILexicalBlock(scope: !599, file: !92, line: 139, column: 2)
!604 = !DILocation(line: 139, column: 19, scope: !602)
!605 = !DILocation(line: 139, column: 16, scope: !602)
!606 = !DILocation(line: 139, column: 2, scope: !602)
!607 = !DILocation(line: 140, column: 8, scope: !603)
!608 = !DILocation(line: 140, column: 3, scope: !603)
!609 = !DILocation(line: 140, column: 11, scope: !603)
!610 = !DILocation(line: 139, column: 28, scope: !611)
!611 = !DILexicalBlockFile(scope: !603, file: !92, discriminator: 2)
!612 = !DILocation(line: 139, column: 2, scope: !611)
!613 = distinct !{!613, !614}
!614 = !DILocation(line: 139, column: 2, scope: !517)
!615 = !DILocation(line: 141, column: 9, scope: !616)
!616 = distinct !DILexicalBlock(scope: !517, file: !92, line: 141, column: 2)
!617 = !DILocation(line: 141, column: 7, scope: !616)
!618 = !DILocation(line: 141, column: 14, scope: !619)
!619 = !DILexicalBlockFile(scope: !620, file: !92, discriminator: 1)
!620 = distinct !DILexicalBlock(scope: !616, file: !92, line: 141, column: 2)
!621 = !DILocation(line: 141, column: 16, scope: !619)
!622 = !DILocation(line: 141, column: 2, scope: !619)
!623 = !DILocation(line: 142, column: 10, scope: !624)
!624 = distinct !DILexicalBlock(scope: !625, file: !92, line: 142, column: 3)
!625 = distinct !DILexicalBlock(scope: !620, file: !92, line: 141, column: 31)
!626 = !DILocation(line: 142, column: 27, scope: !624)
!627 = !DILocation(line: 142, column: 22, scope: !624)
!628 = !DILocation(line: 142, column: 20, scope: !624)
!629 = !DILocation(line: 142, column: 8, scope: !624)
!630 = !DILocation(line: 142, column: 31, scope: !631)
!631 = !DILexicalBlockFile(scope: !632, file: !92, discriminator: 1)
!632 = distinct !DILexicalBlock(scope: !624, file: !92, line: 142, column: 3)
!633 = !DILocation(line: 142, column: 3, scope: !631)
!634 = !DILocation(line: 142, column: 3, scope: !635)
!635 = !DILexicalBlockFile(scope: !624, file: !92, discriminator: 2)
!636 = !DILocation(line: 142, column: 38, scope: !637)
!637 = !DILexicalBlockFile(scope: !632, file: !92, discriminator: 3)
!638 = !DILocation(line: 142, column: 49, scope: !637)
!639 = !DILocation(line: 142, column: 55, scope: !637)
!640 = !DILocation(line: 142, column: 47, scope: !637)
!641 = !DILocation(line: 142, column: 3, scope: !637)
!642 = distinct !{!642, !643}
!643 = !DILocation(line: 142, column: 3, scope: !625)
!644 = !DILocation(line: 143, column: 11, scope: !625)
!645 = !DILocation(line: 143, column: 49, scope: !625)
!646 = !DILocation(line: 143, column: 52, scope: !625)
!647 = !DILocation(line: 143, column: 3, scope: !625)
!648 = !DILocation(line: 144, column: 7, scope: !649)
!649 = distinct !DILexicalBlock(scope: !625, file: !92, line: 144, column: 7)
!650 = !DILocation(line: 144, column: 9, scope: !649)
!651 = !DILocation(line: 144, column: 7, scope: !625)
!652 = !DILocation(line: 145, column: 9, scope: !649)
!653 = !DILocation(line: 145, column: 4, scope: !649)
!654 = !DILocation(line: 146, column: 12, scope: !655)
!655 = distinct !DILexicalBlock(scope: !649, file: !92, line: 146, column: 12)
!656 = !DILocation(line: 146, column: 14, scope: !655)
!657 = !DILocation(line: 146, column: 12, scope: !649)
!658 = !DILocation(line: 147, column: 8, scope: !655)
!659 = !DILocation(line: 147, column: 4, scope: !655)
!660 = !DILocation(line: 149, column: 8, scope: !661)
!661 = distinct !DILexicalBlock(scope: !655, file: !92, line: 148, column: 8)
!662 = !DILocation(line: 150, column: 12, scope: !661)
!663 = !DILocation(line: 152, column: 8, scope: !625)
!664 = !DILocation(line: 152, column: 3, scope: !625)
!665 = !DILocation(line: 152, column: 10, scope: !625)
!666 = !DILocation(line: 153, column: 2, scope: !625)
!667 = !DILocation(line: 141, column: 27, scope: !668)
!668 = !DILexicalBlockFile(scope: !620, file: !92, discriminator: 2)
!669 = !DILocation(line: 141, column: 2, scope: !668)
!670 = distinct !{!670, !671}
!671 = !DILocation(line: 141, column: 2, scope: !517)
!672 = !DILocation(line: 154, column: 11, scope: !673)
!673 = distinct !DILexicalBlock(scope: !517, file: !92, line: 154, column: 2)
!674 = !DILocation(line: 154, column: 9, scope: !673)
!675 = !DILocation(line: 154, column: 7, scope: !673)
!676 = !DILocation(line: 154, column: 19, scope: !677)
!677 = !DILexicalBlockFile(scope: !678, file: !92, discriminator: 1)
!678 = distinct !DILexicalBlock(scope: !673, file: !92, line: 154, column: 2)
!679 = !DILocation(line: 154, column: 21, scope: !677)
!680 = !DILocation(line: 154, column: 25, scope: !677)
!681 = !DILocation(line: 154, column: 33, scope: !682)
!682 = !DILexicalBlockFile(scope: !678, file: !92, discriminator: 2)
!683 = !DILocation(line: 154, column: 28, scope: !682)
!684 = !DILocation(line: 154, column: 36, scope: !682)
!685 = !DILocation(line: 154, column: 2, scope: !686)
!686 = !DILexicalBlockFile(scope: !673, file: !92, discriminator: 3)
!687 = !DILocation(line: 154, column: 2, scope: !688)
!688 = !DILexicalBlockFile(scope: !673, file: !92, discriminator: 4)
!689 = !DILocation(line: 154, column: 43, scope: !690)
!690 = !DILexicalBlockFile(scope: !678, file: !92, discriminator: 5)
!691 = !DILocation(line: 154, column: 2, scope: !690)
!692 = distinct !{!692, !693}
!693 = !DILocation(line: 154, column: 2, scope: !517)
!694 = !DILocation(line: 155, column: 2, scope: !517)
!695 = !DILocation(line: 155, column: 9, scope: !696)
!696 = !DILexicalBlockFile(scope: !517, file: !92, discriminator: 1)
!697 = !DILocation(line: 155, column: 11, scope: !696)
!698 = !DILocation(line: 155, column: 2, scope: !696)
!699 = !DILocation(line: 156, column: 11, scope: !700)
!700 = distinct !DILexicalBlock(scope: !517, file: !92, line: 155, column: 17)
!701 = !DILocation(line: 157, column: 11, scope: !700)
!702 = !DILocation(line: 157, column: 19, scope: !700)
!703 = !DILocation(line: 157, column: 14, scope: !700)
!704 = !DILocation(line: 156, column: 3, scope: !700)
!705 = !DILocation(line: 158, column: 4, scope: !700)
!706 = !DILocation(line: 155, column: 2, scope: !707)
!707 = !DILexicalBlockFile(scope: !517, file: !92, discriminator: 2)
!708 = distinct !{!708, !694}
!709 = !DILocation(line: 160, column: 10, scope: !517)
!710 = !DILocation(line: 160, column: 46, scope: !517)
!711 = !DILocation(line: 160, column: 2, scope: !517)
!712 = !DILocation(line: 161, column: 10, scope: !517)
!713 = !DILocation(line: 161, column: 59, scope: !517)
!714 = !DILocation(line: 162, column: 10, scope: !517)
!715 = !DILocation(line: 161, column: 2, scope: !517)
!716 = !DILocation(line: 164, column: 11, scope: !517)
!717 = !DILocation(line: 164, column: 2, scope: !517)
!718 = !DILocation(line: 166, column: 7, scope: !517)
!719 = !DILocation(line: 166, column: 2, scope: !517)
!720 = !DILocation(line: 167, column: 1, scope: !517)
!721 = distinct !DISubprogram(name: "fsys_hash_iter_new", scope: !92, file: !92, line: 179, type: !722, isLocal: false, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!722 = !DISubroutineType(types: !723)
!723 = !{!724}
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64, align: 64)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_hash_iter", file: !92, line: 173, size: 128, align: 64, elements: !726)
!726 = !{!727, !728}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "namenode", scope: !725, file: !92, line: 174, baseType: !94, size: 64, align: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "nbinn", scope: !725, file: !92, line: 175, baseType: !251, size: 32, align: 32, offset: 64)
!729 = !DILocalVariable(name: "iter", scope: !721, file: !92, line: 181, type: !724)
!730 = !DILocation(line: 181, column: 25, scope: !721)
!731 = !DILocation(line: 183, column: 9, scope: !721)
!732 = !DILocation(line: 183, column: 7, scope: !721)
!733 = !DILocation(line: 184, column: 2, scope: !721)
!734 = !DILocation(line: 184, column: 8, scope: !721)
!735 = !DILocation(line: 184, column: 17, scope: !721)
!736 = !DILocation(line: 185, column: 2, scope: !721)
!737 = !DILocation(line: 185, column: 8, scope: !721)
!738 = !DILocation(line: 185, column: 14, scope: !721)
!739 = !DILocation(line: 187, column: 9, scope: !721)
!740 = !DILocation(line: 187, column: 2, scope: !721)
!741 = distinct !DISubprogram(name: "fsys_hash_iter_next", scope: !92, file: !92, line: 191, type: !742, isLocal: false, isDefinition: true, scopeLine: 192, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!742 = !DISubroutineType(types: !743)
!743 = !{!94, !724}
!744 = !DILocalVariable(name: "iter", arg: 1, scope: !741, file: !92, line: 191, type: !724)
!745 = !DILocation(line: 191, column: 44, scope: !741)
!746 = !DILocalVariable(name: "fnn", scope: !741, file: !92, line: 193, type: !94)
!747 = !DILocation(line: 193, column: 24, scope: !741)
!748 = !DILocation(line: 195, column: 2, scope: !741)
!749 = !DILocation(line: 195, column: 10, scope: !750)
!750 = !DILexicalBlockFile(scope: !741, file: !92, discriminator: 1)
!751 = !DILocation(line: 195, column: 16, scope: !750)
!752 = !DILocation(line: 195, column: 9, scope: !750)
!753 = !DILocation(line: 195, column: 2, scope: !750)
!754 = !DILocation(line: 196, column: 7, scope: !755)
!755 = distinct !DILexicalBlock(scope: !756, file: !92, line: 196, column: 7)
!756 = distinct !DILexicalBlock(scope: !741, file: !92, line: 195, column: 26)
!757 = !DILocation(line: 196, column: 13, scope: !755)
!758 = !DILocation(line: 196, column: 19, scope: !755)
!759 = !DILocation(line: 196, column: 7, scope: !756)
!760 = !DILocation(line: 197, column: 4, scope: !755)
!761 = !DILocation(line: 198, column: 25, scope: !756)
!762 = !DILocation(line: 198, column: 31, scope: !756)
!763 = !DILocation(line: 198, column: 36, scope: !756)
!764 = !DILocation(line: 198, column: 20, scope: !756)
!765 = !DILocation(line: 198, column: 3, scope: !756)
!766 = !DILocation(line: 198, column: 9, scope: !756)
!767 = !DILocation(line: 198, column: 18, scope: !756)
!768 = !DILocation(line: 195, column: 2, scope: !769)
!769 = !DILexicalBlockFile(scope: !741, file: !92, discriminator: 2)
!770 = distinct !{!770, !748}
!771 = !DILocation(line: 200, column: 8, scope: !741)
!772 = !DILocation(line: 200, column: 14, scope: !741)
!773 = !DILocation(line: 200, column: 6, scope: !741)
!774 = !DILocation(line: 201, column: 19, scope: !741)
!775 = !DILocation(line: 201, column: 24, scope: !741)
!776 = !DILocation(line: 201, column: 2, scope: !741)
!777 = !DILocation(line: 201, column: 8, scope: !741)
!778 = !DILocation(line: 201, column: 17, scope: !741)
!779 = !DILocation(line: 203, column: 9, scope: !741)
!780 = !DILocation(line: 203, column: 2, scope: !741)
!781 = !DILocation(line: 204, column: 1, scope: !741)
!782 = distinct !DISubprogram(name: "fsys_hash_iter_free", scope: !92, file: !92, line: 207, type: !783, isLocal: false, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!783 = !DISubroutineType(types: !784)
!784 = !{null, !724}
!785 = !DILocalVariable(name: "iter", arg: 1, scope: !782, file: !92, line: 207, type: !724)
!786 = !DILocation(line: 207, column: 44, scope: !782)
!787 = !DILocation(line: 209, column: 7, scope: !782)
!788 = !DILocation(line: 209, column: 2, scope: !782)
!789 = !DILocation(line: 210, column: 1, scope: !782)
