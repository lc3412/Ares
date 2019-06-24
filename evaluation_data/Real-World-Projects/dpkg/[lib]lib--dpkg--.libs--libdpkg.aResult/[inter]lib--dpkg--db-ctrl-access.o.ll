; ModuleID = './[inter]lib--dpkg--db-ctrl-access.o.i'
source_filename = "./[inter]lib--dpkg--db-ctrl-access.o.i"
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
%struct.fsys_namenode_list = type { %struct.fsys_namenode_list*, %struct.fsys_namenode* }
%struct.fsys_namenode = type { %struct.fsys_namenode*, i8*, %struct.pkg_list*, %struct.fsys_diversion*, %struct.file_stat*, %struct.trigfileint*, i32, i8*, i8*, %struct.file_ondisk_id* }
%struct.pkg_list = type opaque
%struct.fsys_diversion = type { %struct.fsys_namenode*, %struct.fsys_namenode*, %struct.pkgset*, %struct.fsys_diversion* }
%struct.file_stat = type { i32, i32, i32, i8*, i8* }
%struct.trigfileint = type opaque
%struct.file_ondisk_id = type { i64, i64 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.__dirstream = type opaque
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.varbuf_state = type { i64 }
%struct.varbuf = type { i64, i64, i8* }

@.str = private unnamed_addr constant [5 x i8] c"dpkg\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"unable to check existence of '%.250s'\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"cannot read info directory\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"infodb foreach info file '%s'\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"infodb foreach file this pkg\00", align 1

; Function Attrs: nounwind uwtable
define zeroext i1 @pkg_infodb_has_file(%struct.pkginfo*, %struct.pkgbin*, i8*) #0 !dbg !129 {
  %4 = alloca i1, align 1
  %5 = alloca %struct.pkginfo*, align 8
  %6 = alloca %struct.pkgbin*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.stat, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %5, metadata !327, metadata !328), !dbg !329
  store %struct.pkgbin* %1, %struct.pkgbin** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %6, metadata !330, metadata !328), !dbg !331
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !332, metadata !328), !dbg !333
  call void @llvm.dbg.declare(metadata i8** %8, metadata !334, metadata !328), !dbg !335
  call void @llvm.dbg.declare(metadata %struct.stat* %9, metadata !336, metadata !328), !dbg !368
  %10 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !369
  %11 = load %struct.pkgbin*, %struct.pkgbin** %6, align 8, !dbg !370
  %12 = load i8*, i8** %7, align 8, !dbg !371
  %13 = call i8* @pkg_infodb_get_file(%struct.pkginfo* %10, %struct.pkgbin* %11, i8* %12), !dbg !372
  store i8* %13, i8** %8, align 8, !dbg !373
  %14 = load i8*, i8** %8, align 8, !dbg !374
  %15 = call i32 @lstat(i8* %14, %struct.stat* %9) #8, !dbg !376
  %16 = icmp eq i32 %15, 0, !dbg !377
  br i1 %16, label %17, label %18, !dbg !378

; <label>:17:                                     ; preds = %3
  store i1 true, i1* %4, align 1, !dbg !379
  br label %26, !dbg !379

; <label>:18:                                     ; preds = %3
  %19 = call i32* @__errno_location() #1, !dbg !380
  %20 = load i32, i32* %19, align 4, !dbg !382
  %21 = icmp eq i32 %20, 2, !dbg !383
  br i1 %21, label %22, label %23, !dbg !384

; <label>:22:                                     ; preds = %18
  store i1 false, i1* %4, align 1, !dbg !385
  br label %26, !dbg !385

; <label>:23:                                     ; preds = %18
  %24 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i32 0, i32 0)) #8, !dbg !386
  %25 = load i8*, i8** %8, align 8, !dbg !387
  call void (i8*, ...) @ohshite(i8* %24, i8* %25) #9, !dbg !388
  unreachable, !dbg !390

; <label>:26:                                     ; preds = %22, %17
  %27 = load i1, i1* %4, align 1, !dbg !391
  ret i1 %27, !dbg !391
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i8* @pkg_infodb_get_file(%struct.pkginfo*, %struct.pkgbin*, i8*) #2

; Function Attrs: nounwind
declare i32 @lstat(i8*, %struct.stat*) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

; Function Attrs: noreturn
declare void @ohshite(i8*, ...) #5

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define void @pkg_infodb_foreach(%struct.pkginfo*, %struct.pkgbin*, void (i8*, i8*)*) #0 !dbg !392 {
  %4 = alloca %struct.pkginfo*, align 8
  %5 = alloca %struct.pkgbin*, align 8
  %6 = alloca void (i8*, i8*)*, align 8
  %7 = alloca %struct.__dirstream*, align 8
  %8 = alloca %struct.dirent*, align 8
  %9 = alloca %struct.varbuf_state, align 8
  %10 = alloca %struct.varbuf, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %4, metadata !399, metadata !328), !dbg !400
  store %struct.pkgbin* %1, %struct.pkgbin** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %5, metadata !401, metadata !328), !dbg !402
  store void (i8*, i8*)* %2, void (i8*, i8*)** %6, align 8
  call void @llvm.dbg.declare(metadata void (i8*, i8*)** %6, metadata !403, metadata !328), !dbg !404
  call void @llvm.dbg.declare(metadata %struct.__dirstream** %7, metadata !405, metadata !328), !dbg !410
  call void @llvm.dbg.declare(metadata %struct.dirent** %8, metadata !411, metadata !328), !dbg !426
  call void @llvm.dbg.declare(metadata %struct.varbuf_state* %9, metadata !427, metadata !328), !dbg !432
  call void @llvm.dbg.declare(metadata %struct.varbuf* %10, metadata !433, metadata !328), !dbg !439
  %16 = bitcast %struct.varbuf* %10 to i8*, !dbg !439
  call void @llvm.memset.p0i8.i64(i8* %16, i8 0, i64 24, i32 8, i1 false), !dbg !439
  call void @llvm.dbg.declare(metadata i8** %11, metadata !440, metadata !328), !dbg !441
  call void @llvm.dbg.declare(metadata i32* %12, metadata !442, metadata !328), !dbg !443
  %17 = call i32 @pkg_infodb_get_format(), !dbg !444
  store i32 %17, i32* %12, align 4, !dbg !445
  %18 = load %struct.pkgbin*, %struct.pkgbin** %5, align 8, !dbg !446
  %19 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %18, i32 0, i32 2, !dbg !448
  %20 = load i32, i32* %19, align 4, !dbg !448
  %21 = icmp eq i32 %20, 1, !dbg !449
  br i1 %21, label %22, label %29, !dbg !450

; <label>:22:                                     ; preds = %3
  %23 = load i32, i32* %12, align 4, !dbg !451
  %24 = icmp eq i32 %23, 1, !dbg !452
  br i1 %24, label %25, label %29, !dbg !453

; <label>:25:                                     ; preds = %22
  %26 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !455
  %27 = load %struct.pkgbin*, %struct.pkgbin** %5, align 8, !dbg !456
  %28 = call i8* @pkgbin_name(%struct.pkginfo* %26, %struct.pkgbin* %27, i32 3), !dbg !457
  store i8* %28, i8** %11, align 8, !dbg !458
  br label %33, !dbg !459

; <label>:29:                                     ; preds = %22, %3
  %30 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !460
  %31 = load %struct.pkgbin*, %struct.pkgbin** %5, align 8, !dbg !461
  %32 = call i8* @pkgbin_name(%struct.pkginfo* %30, %struct.pkgbin* %31, i32 0), !dbg !462
  store i8* %32, i8** %11, align 8, !dbg !463
  br label %33

; <label>:33:                                     ; preds = %29, %25
  %34 = call i8* @pkg_infodb_get_dir(), !dbg !464
  %35 = call i8* @pkg_infodb_get_dir(), !dbg !465
  %36 = call i64 @strlen(i8* %35) #10, !dbg !466
  call void @varbuf_add_buf(%struct.varbuf* %10, i8* %34, i64 %36), !dbg !468
  call void @varbuf_add_char(%struct.varbuf* %10, i32 47), !dbg !470
  call void @varbuf_end_str(%struct.varbuf* %10), !dbg !471
  call void @varbuf_snapshot(%struct.varbuf* %10, %struct.varbuf_state* %9), !dbg !472
  %37 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %10, i32 0, i32 2, !dbg !473
  %38 = load i8*, i8** %37, align 8, !dbg !473
  %39 = call %struct.__dirstream* @opendir(i8* %38), !dbg !474
  store %struct.__dirstream* %39, %struct.__dirstream** %7, align 8, !dbg !475
  %40 = load %struct.__dirstream*, %struct.__dirstream** %7, align 8, !dbg !476
  %41 = icmp ne %struct.__dirstream* %40, null, !dbg !476
  br i1 %41, label %44, label %42, !dbg !478

; <label>:42:                                     ; preds = %33
  %43 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0)) #8, !dbg !479
  call void (i8*, ...) @ohshite(i8* %43) #9, !dbg !480
  unreachable, !dbg !482

; <label>:44:                                     ; preds = %33
  %45 = load %struct.__dirstream*, %struct.__dirstream** %7, align 8, !dbg !483
  %46 = bitcast %struct.__dirstream* %45 to i8*, !dbg !484
  call void (void (i32, i8**)*, i32, i32, ...) @push_cleanup(void (i32, i8**)* @cu_closedir, i32 -1, i32 1, i8* %46), !dbg !485
  br label %47, !dbg !486

; <label>:47:                                     ; preds = %96, %95, %69, %61, %44
  %48 = load %struct.__dirstream*, %struct.__dirstream** %7, align 8, !dbg !487
  %49 = call %struct.dirent* @readdir(%struct.__dirstream* %48), !dbg !488
  store %struct.dirent* %49, %struct.dirent** %8, align 8, !dbg !489
  %50 = icmp ne %struct.dirent* %49, null, !dbg !490
  br i1 %50, label %51, label %111, !dbg !491

; <label>:51:                                     ; preds = %47
  call void @llvm.dbg.declare(metadata i8** %13, metadata !492, metadata !328), !dbg !494
  call void @llvm.dbg.declare(metadata i8** %14, metadata !495, metadata !328), !dbg !496
  call void @llvm.dbg.declare(metadata i8** %15, metadata !497, metadata !328), !dbg !498
  %52 = load %struct.dirent*, %struct.dirent** %8, align 8, !dbg !499
  %53 = getelementptr inbounds %struct.dirent, %struct.dirent* %52, i32 0, i32 4, !dbg !500
  %54 = getelementptr inbounds [256 x i8], [256 x i8]* %53, i32 0, i32 0, !dbg !499
  call void (i32, i8*, ...) @debug(i32 512, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0), i8* %54), !dbg !501
  %55 = load %struct.dirent*, %struct.dirent** %8, align 8, !dbg !502
  %56 = getelementptr inbounds %struct.dirent, %struct.dirent* %55, i32 0, i32 4, !dbg !504
  %57 = getelementptr inbounds [256 x i8], [256 x i8]* %56, i64 0, i64 0, !dbg !502
  %58 = load i8, i8* %57, align 1, !dbg !502
  %59 = sext i8 %58 to i32, !dbg !502
  %60 = icmp eq i32 %59, 46, !dbg !505
  br i1 %60, label %61, label %62, !dbg !506

; <label>:61:                                     ; preds = %51
  br label %47, !dbg !507, !llvm.loop !508

; <label>:62:                                     ; preds = %51
  %63 = load %struct.dirent*, %struct.dirent** %8, align 8, !dbg !509
  %64 = getelementptr inbounds %struct.dirent, %struct.dirent* %63, i32 0, i32 4, !dbg !510
  %65 = getelementptr inbounds [256 x i8], [256 x i8]* %64, i32 0, i32 0, !dbg !509
  %66 = call i8* @strrchr(i8* %65, i32 46) #10, !dbg !511
  store i8* %66, i8** %15, align 8, !dbg !512
  %67 = load i8*, i8** %15, align 8, !dbg !513
  %68 = icmp eq i8* %67, null, !dbg !515
  br i1 %68, label %69, label %70, !dbg !516

; <label>:69:                                     ; preds = %62
  br label %47, !dbg !517, !llvm.loop !508

; <label>:70:                                     ; preds = %62
  %71 = load i8*, i8** %11, align 8, !dbg !518
  %72 = call i64 @strlen(i8* %71) #10, !dbg !520
  %73 = load i8*, i8** %15, align 8, !dbg !521
  %74 = load %struct.dirent*, %struct.dirent** %8, align 8, !dbg !522
  %75 = getelementptr inbounds %struct.dirent, %struct.dirent* %74, i32 0, i32 4, !dbg !523
  %76 = getelementptr inbounds [256 x i8], [256 x i8]* %75, i32 0, i32 0, !dbg !522
  %77 = ptrtoint i8* %73 to i64, !dbg !524
  %78 = ptrtoint i8* %76 to i64, !dbg !524
  %79 = sub i64 %77, %78, !dbg !524
  %80 = icmp ne i64 %72, %79, !dbg !525
  br i1 %80, label %95, label %81, !dbg !526

; <label>:81:                                     ; preds = %70
  %82 = load %struct.dirent*, %struct.dirent** %8, align 8, !dbg !527
  %83 = getelementptr inbounds %struct.dirent, %struct.dirent* %82, i32 0, i32 4, !dbg !528
  %84 = getelementptr inbounds [256 x i8], [256 x i8]* %83, i32 0, i32 0, !dbg !527
  %85 = load i8*, i8** %11, align 8, !dbg !529
  %86 = load i8*, i8** %15, align 8, !dbg !530
  %87 = load %struct.dirent*, %struct.dirent** %8, align 8, !dbg !531
  %88 = getelementptr inbounds %struct.dirent, %struct.dirent* %87, i32 0, i32 4, !dbg !532
  %89 = getelementptr inbounds [256 x i8], [256 x i8]* %88, i32 0, i32 0, !dbg !531
  %90 = ptrtoint i8* %86 to i64, !dbg !533
  %91 = ptrtoint i8* %89 to i64, !dbg !533
  %92 = sub i64 %90, %91, !dbg !533
  %93 = call i32 @strncmp(i8* %84, i8* %85, i64 %92) #10, !dbg !534
  %94 = icmp ne i32 %93, 0, !dbg !534
  br i1 %94, label %95, label %96, !dbg !535

; <label>:95:                                     ; preds = %81, %70
  br label %47, !dbg !537, !llvm.loop !508

; <label>:96:                                     ; preds = %81
  call void (i32, i8*, ...) @debug(i32 1024, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0)), !dbg !538
  %97 = load i8*, i8** %15, align 8, !dbg !539
  %98 = getelementptr inbounds i8, i8* %97, i64 1, !dbg !540
  store i8* %98, i8** %14, align 8, !dbg !541
  call void @varbuf_rollback(%struct.varbuf* %10, %struct.varbuf_state* %9), !dbg !542
  %99 = load %struct.dirent*, %struct.dirent** %8, align 8, !dbg !543
  %100 = getelementptr inbounds %struct.dirent, %struct.dirent* %99, i32 0, i32 4, !dbg !544
  %101 = getelementptr inbounds [256 x i8], [256 x i8]* %100, i32 0, i32 0, !dbg !543
  %102 = load %struct.dirent*, %struct.dirent** %8, align 8, !dbg !545
  %103 = getelementptr inbounds %struct.dirent, %struct.dirent* %102, i32 0, i32 4, !dbg !546
  %104 = getelementptr inbounds [256 x i8], [256 x i8]* %103, i32 0, i32 0, !dbg !545
  %105 = call i64 @strlen(i8* %104) #10, !dbg !547
  call void @varbuf_add_buf(%struct.varbuf* %10, i8* %101, i64 %105), !dbg !548
  call void @varbuf_end_str(%struct.varbuf* %10), !dbg !549
  %106 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %10, i32 0, i32 2, !dbg !550
  %107 = load i8*, i8** %106, align 8, !dbg !550
  store i8* %107, i8** %13, align 8, !dbg !551
  %108 = load void (i8*, i8*)*, void (i8*, i8*)** %6, align 8, !dbg !552
  %109 = load i8*, i8** %13, align 8, !dbg !553
  %110 = load i8*, i8** %14, align 8, !dbg !554
  call void %108(i8* %109, i8* %110), !dbg !552
  br label %47, !dbg !555, !llvm.loop !508

; <label>:111:                                    ; preds = %47
  call void @pop_cleanup(i32 1), !dbg !556
  call void @varbuf_destroy(%struct.varbuf* %10), !dbg !557
  ret void, !dbg !558
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #6

declare i32 @pkg_infodb_get_format() #2

declare i8* @pkgbin_name(%struct.pkginfo*, %struct.pkgbin*, i32) #2

declare void @varbuf_add_buf(%struct.varbuf*, i8*, i64) #2

declare i8* @pkg_infodb_get_dir() #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #7

declare void @varbuf_add_char(%struct.varbuf*, i32) #2

declare void @varbuf_end_str(%struct.varbuf*) #2

declare void @varbuf_snapshot(%struct.varbuf*, %struct.varbuf_state*) #2

declare %struct.__dirstream* @opendir(i8*) #2

declare void @push_cleanup(void (i32, i8**)*, i32, i32, ...) #2

declare void @cu_closedir(i32, i8**) #2

declare %struct.dirent* @readdir(%struct.__dirstream*) #2

declare void @debug(i32, i8*, ...) #2

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #7

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #7

declare void @varbuf_rollback(%struct.varbuf*, %struct.varbuf_state*) #2

declare void @pop_cleanup(i32) #2

declare void @varbuf_destroy(%struct.varbuf*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { noreturn }
attributes #10 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!126, !127}
!llvm.ident = !{!128}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !121)
!1 = !DIFile(filename: "[inter]lib--dpkg--db-ctrl-access.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{!3, !15, !26, !35, !43, !47, !57, !67, !73, !86, !93, !99, !115}
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
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fsys_namenode_flags", file: !74, line: 61, size: 32, align: 32, elements: !75)
!74 = !DIFile(filename: "../../lib/dpkg/fsys.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
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
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkg_infodb_format", file: !87, line: 28, size: 32, align: 32, elements: !88)
!87 = !DIFile(filename: "../../lib/dpkg/db-ctrl.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!88 = !{!89, !90, !91, !92}
!89 = !DIEnumerator(name: "PKG_INFODB_FORMAT_UNKNOWN", value: -1)
!90 = !DIEnumerator(name: "PKG_INFODB_FORMAT_LEGACY", value: 0)
!91 = !DIEnumerator(name: "PKG_INFODB_FORMAT_MULTIARCH", value: 1)
!92 = !DIEnumerator(name: "PKG_INFODB_FORMAT_LAST", value: 2)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkg_name_arch_when", file: !4, line: 396, size: 32, align: 32, elements: !94)
!94 = !{!95, !96, !97, !98}
!95 = !DIEnumerator(name: "pnaw_never", value: 0)
!96 = !DIEnumerator(name: "pnaw_nonambig", value: 1)
!97 = !DIEnumerator(name: "pnaw_foreign", value: 2)
!98 = !DIEnumerator(name: "pnaw_always", value: 3)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "debugflags", file: !100, line: 41, size: 32, align: 32, elements: !101)
!100 = !DIFile(filename: "../../lib/dpkg/debug.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
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
!115 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !116, line: 41, size: 32, align: 32, elements: !117)
!116 = !DIFile(filename: "../../lib/dpkg/ehandle.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!117 = !{!118, !119, !120}
!118 = !DIEnumerator(name: "ehflag_normaltidy", value: 1)
!119 = !DIEnumerator(name: "ehflag_bombout", value: 2)
!120 = !DIEnumerator(name: "ehflag_recursiveerror", value: 4)
!121 = !{!122, !123}
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !124, line: 216, baseType: !125)
!124 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!125 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!126 = !{i32 2, !"Dwarf Version", i32 4}
!127 = !{i32 2, !"Debug Info Version", i32 3}
!128 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!129 = distinct !DISubprogram(name: "pkg_infodb_has_file", scope: !130, file: !130, line: 40, type: !131, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !326)
!130 = !DIFile(filename: "db-ctrl-access.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!131 = !DISubroutineType(types: !132)
!132 = !{!133, !134, !325, !143}
!133 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkginfo", file: !4, line: 195, size: 3072, align: 64, elements: !136)
!136 = !{!137, !188, !189, !190, !191, !192, !193, !194, !195, !196, !226, !227, !230, !239, !255, !256, !262, !319, !323, !324}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !135, file: !4, line: 196, baseType: !138, size: 64, align: 64)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64, align: 64)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgset", file: !4, line: 242, size: 3392, align: 64, elements: !140)
!140 = !{!141, !142, !146, !147, !186}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !139, file: !4, line: 243, baseType: !138, size: 64, align: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !139, file: !4, line: 244, baseType: !143, size: 64, align: 64, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !145)
!145 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !139, file: !4, line: 245, baseType: !135, size: 3072, align: 64, offset: 128)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "depended", scope: !139, file: !4, line: 249, baseType: !148, size: 128, align: 64, offset: 3200)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !139, file: !4, line: 246, size: 128, align: 64, elements: !149)
!149 = !{!150, !185}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !148, file: !4, line: 247, baseType: !151, size: 64, align: 64)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64, align: 64)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "deppossi", file: !4, line: 63, size: 640, align: 64, elements: !153)
!153 = !{!154, !162, !163, !164, !165, !166, !175, !182, !183, !184}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !152, file: !4, line: 64, baseType: !155, size: 64, align: 64)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64, align: 64)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dependency", file: !4, line: 56, size: 256, align: 64, elements: !157)
!157 = !{!158, !159, !160, !161}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !156, file: !4, line: 57, baseType: !134, size: 64, align: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !156, file: !4, line: 58, baseType: !155, size: 64, align: 64, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !156, file: !4, line: 59, baseType: !151, size: 64, align: 64, offset: 128)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !156, file: !4, line: 60, baseType: !3, size: 32, align: 32, offset: 192)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "ed", scope: !152, file: !4, line: 65, baseType: !138, size: 64, align: 64, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !152, file: !4, line: 66, baseType: !151, size: 64, align: 64, offset: 128)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "rev_next", scope: !152, file: !4, line: 66, baseType: !151, size: 64, align: 64, offset: 192)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "rev_prev", scope: !152, file: !4, line: 66, baseType: !151, size: 64, align: 64, offset: 256)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !152, file: !4, line: 67, baseType: !167, size: 64, align: 64, offset: 320)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64, align: 64)
!168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !169)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_arch", file: !16, line: 48, size: 192, align: 64, elements: !170)
!170 = !{!171, !173, !174}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !169, file: !16, line: 49, baseType: !172, size: 64, align: 64)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64, align: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !169, file: !16, line: 50, baseType: !143, size: 64, align: 64, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !169, file: !16, line: 51, baseType: !15, size: 32, align: 32, offset: 128)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !152, file: !4, line: 68, baseType: !176, size: 192, align: 64, offset: 384)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_version", file: !27, line: 42, size: 192, align: 64, elements: !177)
!177 = !{!178, !180, !181}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !176, file: !27, line: 44, baseType: !179, size: 32, align: 32)
!179 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !176, file: !27, line: 46, baseType: !143, size: 64, align: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !176, file: !27, line: 48, baseType: !143, size: 64, align: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "verrel", scope: !152, file: !4, line: 69, baseType: !26, size: 32, align: 32, offset: 576)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "arch_is_implicit", scope: !152, file: !4, line: 70, baseType: !133, size: 8, align: 8, offset: 608)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "cyclebreak", scope: !152, file: !4, line: 71, baseType: !133, size: 8, align: 8, offset: 616)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !148, file: !4, line: 248, baseType: !151, size: 64, align: 64, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "installed_instances", scope: !139, file: !4, line: 250, baseType: !187, size: 32, align: 32, offset: 3328)
!187 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "arch_next", scope: !135, file: !4, line: 197, baseType: !134, size: 64, align: 64, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "want", scope: !135, file: !4, line: 199, baseType: !35, size: 32, align: 32, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "eflag", scope: !135, file: !4, line: 201, baseType: !43, size: 32, align: 32, offset: 160)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !135, file: !4, line: 202, baseType: !47, size: 32, align: 32, offset: 192)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !135, file: !4, line: 203, baseType: !57, size: 32, align: 32, offset: 224)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "otherpriority", scope: !135, file: !4, line: 204, baseType: !143, size: 64, align: 64, offset: 256)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "section", scope: !135, file: !4, line: 205, baseType: !143, size: 64, align: 64, offset: 320)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "configversion", scope: !135, file: !4, line: 206, baseType: !176, size: 192, align: 64, offset: 384)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !135, file: !4, line: 207, baseType: !197, size: 960, align: 64, offset: 576)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgbin", file: !4, line: 107, size: 960, align: 64, elements: !198)
!198 = !{!199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !219}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "depends", scope: !197, file: !4, line: 108, baseType: !155, size: 64, align: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "essential", scope: !197, file: !4, line: 110, baseType: !133, size: 8, align: 8, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "multiarch", scope: !197, file: !4, line: 111, baseType: !67, size: 32, align: 32, offset: 96)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !197, file: !4, line: 112, baseType: !167, size: 64, align: 64, offset: 128)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "pkgname_archqual", scope: !197, file: !4, line: 115, baseType: !143, size: 64, align: 64, offset: 192)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !197, file: !4, line: 116, baseType: !143, size: 64, align: 64, offset: 256)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "maintainer", scope: !197, file: !4, line: 117, baseType: !143, size: 64, align: 64, offset: 320)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !197, file: !4, line: 118, baseType: !143, size: 64, align: 64, offset: 384)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "installedsize", scope: !197, file: !4, line: 119, baseType: !143, size: 64, align: 64, offset: 448)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !197, file: !4, line: 120, baseType: !143, size: 64, align: 64, offset: 512)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "bugs", scope: !197, file: !4, line: 121, baseType: !143, size: 64, align: 64, offset: 576)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !197, file: !4, line: 122, baseType: !176, size: 192, align: 64, offset: 640)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "conffiles", scope: !197, file: !4, line: 123, baseType: !212, size: 64, align: 64, offset: 832)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64, align: 64)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conffile", file: !4, line: 80, size: 256, align: 64, elements: !214)
!214 = !{!215, !216, !217, !218}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !213, file: !4, line: 81, baseType: !212, size: 64, align: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !213, file: !4, line: 82, baseType: !143, size: 64, align: 64, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !213, file: !4, line: 83, baseType: !143, size: 64, align: 64, offset: 128)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "obsolete", scope: !213, file: !4, line: 84, baseType: !133, size: 8, align: 8, offset: 192)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "arbs", scope: !197, file: !4, line: 124, baseType: !220, size: 64, align: 64, offset: 896)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64, align: 64)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arbitraryfield", file: !4, line: 74, size: 192, align: 64, elements: !222)
!222 = !{!223, !224, !225}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !221, file: !4, line: 75, baseType: !220, size: 64, align: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !221, file: !4, line: 76, baseType: !143, size: 64, align: 64, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !221, file: !4, line: 77, baseType: !143, size: 64, align: 64, offset: 128)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !135, file: !4, line: 208, baseType: !197, size: 960, align: 64, offset: 1536)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "clientdata", scope: !135, file: !4, line: 209, baseType: !228, size: 64, align: 64, offset: 2496)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64, align: 64)
!229 = !DICompositeType(tag: DW_TAG_structure_type, name: "perpackagestate", file: !4, line: 151, flags: DIFlagFwdDecl)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "archives", scope: !135, file: !4, line: 211, baseType: !231, size: 64, align: 64, offset: 2560)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64, align: 64)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archivedetails", file: !4, line: 87, size: 320, align: 64, elements: !233)
!233 = !{!234, !235, !236, !237, !238}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !232, file: !4, line: 88, baseType: !231, size: 64, align: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !232, file: !4, line: 89, baseType: !143, size: 64, align: 64, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "msdosname", scope: !232, file: !4, line: 90, baseType: !143, size: 64, align: 64, offset: 128)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !232, file: !4, line: 91, baseType: !143, size: 64, align: 64, offset: 192)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "md5sum", scope: !232, file: !4, line: 92, baseType: !143, size: 64, align: 64, offset: 256)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "trigaw", scope: !135, file: !4, line: 216, baseType: !240, size: 128, align: 64, offset: 2624)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !135, file: !4, line: 213, size: 128, align: 64, elements: !241)
!241 = !{!242, !254}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !240, file: !4, line: 215, baseType: !243, size: 64, align: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64, align: 64)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigaw", file: !4, line: 142, size: 320, align: 64, elements: !245)
!245 = !{!246, !247, !248, !249}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "aw", scope: !244, file: !4, line: 143, baseType: !134, size: 64, align: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "pend", scope: !244, file: !4, line: 143, baseType: !134, size: 64, align: 64, offset: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "samepend_next", scope: !244, file: !4, line: 144, baseType: !243, size: 64, align: 64, offset: 128)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "sameaw", scope: !244, file: !4, line: 147, baseType: !250, size: 128, align: 64, offset: 192)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !244, file: !4, line: 145, size: 128, align: 64, elements: !251)
!251 = !{!252, !253}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !250, file: !4, line: 146, baseType: !243, size: 64, align: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !250, file: !4, line: 146, baseType: !243, size: 64, align: 64, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !240, file: !4, line: 215, baseType: !243, size: 64, align: 64, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "othertrigaw_head", scope: !135, file: !4, line: 219, baseType: !243, size: 64, align: 64, offset: 2752)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "trigpend_head", scope: !135, file: !4, line: 220, baseType: !257, size: 64, align: 64, offset: 2816)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64, align: 64)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigpend", file: !4, line: 134, size: 128, align: 64, elements: !259)
!259 = !{!260, !261}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !258, file: !4, line: 135, baseType: !257, size: 64, align: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !258, file: !4, line: 136, baseType: !143, size: 64, align: 64, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !135, file: !4, line: 231, baseType: !263, size: 64, align: 64, offset: 2880)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64, align: 64)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode_list", file: !74, line: 122, size: 128, align: 64, elements: !265)
!265 = !{!266, !267}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !264, file: !74, line: 123, baseType: !263, size: 64, align: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "namenode", scope: !264, file: !74, line: 124, baseType: !268, size: 64, align: 64, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64, align: 64)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode", file: !74, line: 90, size: 640, align: 64, elements: !270)
!270 = !{!271, !272, !273, !276, !284, !303, !306, !307, !308, !309}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !269, file: !74, line: 91, baseType: !268, size: 64, align: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !269, file: !74, line: 92, baseType: !143, size: 64, align: 64, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "packages", scope: !269, file: !74, line: 93, baseType: !274, size: 64, align: 64, offset: 128)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64, align: 64)
!275 = !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_list", file: !74, line: 93, flags: DIFlagFwdDecl)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "divert", scope: !269, file: !74, line: 94, baseType: !277, size: 64, align: 64, offset: 192)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64, align: 64)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_diversion", file: !74, line: 151, size: 256, align: 64, elements: !279)
!279 = !{!280, !281, !282, !283}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "useinstead", scope: !278, file: !74, line: 152, baseType: !268, size: 64, align: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "camefrom", scope: !278, file: !74, line: 153, baseType: !268, size: 64, align: 64, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "pkgset", scope: !278, file: !74, line: 154, baseType: !138, size: 64, align: 64, offset: 128)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !278, file: !74, line: 157, baseType: !277, size: 64, align: 64, offset: 192)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "statoverride", scope: !269, file: !74, line: 101, baseType: !285, size: 64, align: 64, offset: 256)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64, align: 64)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_stat", file: !287, line: 40, size: 256, align: 64, elements: !288)
!287 = !DIFile(filename: "../../lib/dpkg/file.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!288 = !{!289, !294, !297, !300, !302}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !286, file: !287, line: 41, baseType: !290, size: 32, align: 32)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !291, line: 80, baseType: !292)
!291 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !293, line: 125, baseType: !179)
!293 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!294 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !286, file: !287, line: 42, baseType: !295, size: 32, align: 32, offset: 32)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !291, line: 65, baseType: !296)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !293, line: 126, baseType: !179)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !286, file: !287, line: 43, baseType: !298, size: 32, align: 32, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !291, line: 70, baseType: !299)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !293, line: 129, baseType: !179)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "uname", scope: !286, file: !287, line: 47, baseType: !301, size: 64, align: 64, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64, align: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !286, file: !287, line: 48, baseType: !301, size: 64, align: 64, offset: 192)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "trig_interested", scope: !269, file: !74, line: 103, baseType: !304, size: 64, align: 64, offset: 320)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64, align: 64)
!305 = !DICompositeType(tag: DW_TAG_structure_type, name: "trigfileint", file: !74, line: 103, flags: DIFlagFwdDecl)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !269, file: !74, line: 111, baseType: !73, size: 32, align: 32, offset: 384)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "oldhash", scope: !269, file: !74, line: 114, baseType: !143, size: 64, align: 64, offset: 448)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "newhash", scope: !269, file: !74, line: 117, baseType: !143, size: 64, align: 64, offset: 512)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "file_ondisk_id", scope: !269, file: !74, line: 119, baseType: !310, size: 64, align: 64, offset: 576)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64, align: 64)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ondisk_id", file: !74, line: 85, size: 128, align: 64, elements: !312)
!312 = !{!313, !316}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "id_dev", scope: !311, file: !74, line: 86, baseType: !314, size: 64, align: 64)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !291, line: 60, baseType: !315)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !293, line: 124, baseType: !125)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "id_ino", scope: !311, file: !74, line: 87, baseType: !317, size: 64, align: 64, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !291, line: 48, baseType: !318)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !293, line: 127, baseType: !125)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_phys_offs", scope: !135, file: !4, line: 232, baseType: !320, size: 64, align: 64, offset: 2944)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !291, line: 86, baseType: !321)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !293, line: 131, baseType: !322)
!322 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_valid", scope: !135, file: !4, line: 233, baseType: !133, size: 8, align: 8, offset: 3008)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "status_dirty", scope: !135, file: !4, line: 236, baseType: !133, size: 8, align: 8, offset: 3016)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64, align: 64)
!326 = !{}
!327 = !DILocalVariable(name: "pkg", arg: 1, scope: !129, file: !130, line: 40, type: !134)
!328 = !DIExpression()
!329 = !DILocation(line: 40, column: 37, scope: !129)
!330 = !DILocalVariable(name: "pkgbin", arg: 2, scope: !129, file: !130, line: 40, type: !325)
!331 = !DILocation(line: 40, column: 57, scope: !129)
!332 = !DILocalVariable(name: "name", arg: 3, scope: !129, file: !130, line: 41, type: !143)
!333 = !DILocation(line: 41, column: 33, scope: !129)
!334 = !DILocalVariable(name: "filename", scope: !129, file: !130, line: 43, type: !143)
!335 = !DILocation(line: 43, column: 14, scope: !129)
!336 = !DILocalVariable(name: "stab", scope: !129, file: !130, line: 44, type: !337)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !338, line: 46, size: 1152, align: 64, elements: !339)
!338 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!339 = !{!340, !341, !342, !344, !345, !346, !347, !348, !349, !350, !352, !354, !362, !363, !364}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !337, file: !338, line: 48, baseType: !315, size: 64, align: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !337, file: !338, line: 53, baseType: !318, size: 64, align: 64, offset: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !337, file: !338, line: 61, baseType: !343, size: 64, align: 64, offset: 128)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !293, line: 130, baseType: !125)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !337, file: !338, line: 62, baseType: !299, size: 32, align: 32, offset: 192)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !337, file: !338, line: 64, baseType: !292, size: 32, align: 32, offset: 224)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !337, file: !338, line: 65, baseType: !296, size: 32, align: 32, offset: 256)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !337, file: !338, line: 67, baseType: !187, size: 32, align: 32, offset: 288)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !337, file: !338, line: 69, baseType: !315, size: 64, align: 64, offset: 320)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !337, file: !338, line: 74, baseType: !321, size: 64, align: 64, offset: 384)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !337, file: !338, line: 78, baseType: !351, size: 64, align: 64, offset: 448)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !293, line: 153, baseType: !322)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !337, file: !338, line: 80, baseType: !353, size: 64, align: 64, offset: 512)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !293, line: 158, baseType: !322)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !337, file: !338, line: 91, baseType: !355, size: 128, align: 64, offset: 576)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !356, line: 120, size: 128, align: 64, elements: !357)
!356 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!357 = !{!358, !360}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !355, file: !356, line: 122, baseType: !359, size: 64, align: 64)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !293, line: 139, baseType: !322)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !355, file: !356, line: 123, baseType: !361, size: 64, align: 64, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !293, line: 175, baseType: !322)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !337, file: !338, line: 92, baseType: !355, size: 128, align: 64, offset: 704)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !337, file: !338, line: 93, baseType: !355, size: 128, align: 64, offset: 832)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !337, file: !338, line: 106, baseType: !365, size: 192, align: 64, offset: 960)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, size: 192, align: 64, elements: !366)
!366 = !{!367}
!367 = !DISubrange(count: 3)
!368 = !DILocation(line: 44, column: 14, scope: !129)
!369 = !DILocation(line: 46, column: 33, scope: !129)
!370 = !DILocation(line: 46, column: 38, scope: !129)
!371 = !DILocation(line: 46, column: 46, scope: !129)
!372 = !DILocation(line: 46, column: 13, scope: !129)
!373 = !DILocation(line: 46, column: 11, scope: !129)
!374 = !DILocation(line: 47, column: 12, scope: !375)
!375 = distinct !DILexicalBlock(scope: !129, file: !130, line: 47, column: 6)
!376 = !DILocation(line: 47, column: 6, scope: !375)
!377 = !DILocation(line: 47, column: 29, scope: !375)
!378 = !DILocation(line: 47, column: 6, scope: !129)
!379 = !DILocation(line: 48, column: 3, scope: !375)
!380 = !DILocation(line: 49, column: 12, scope: !381)
!381 = distinct !DILexicalBlock(scope: !375, file: !130, line: 49, column: 10)
!382 = !DILocation(line: 49, column: 11, scope: !381)
!383 = !DILocation(line: 49, column: 16, scope: !381)
!384 = !DILocation(line: 49, column: 10, scope: !375)
!385 = !DILocation(line: 50, column: 3, scope: !381)
!386 = !DILocation(line: 52, column: 10, scope: !381)
!387 = !DILocation(line: 52, column: 54, scope: !381)
!388 = !DILocation(line: 52, column: 3, scope: !389)
!389 = !DILexicalBlockFile(scope: !381, file: !130, discriminator: 1)
!390 = !DILocation(line: 52, column: 3, scope: !381)
!391 = !DILocation(line: 53, column: 1, scope: !129)
!392 = distinct !DISubprogram(name: "pkg_infodb_foreach", scope: !130, file: !130, line: 56, type: !393, isLocal: false, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !326)
!393 = !DISubroutineType(types: !394)
!394 = !{null, !134, !325, !395}
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64, align: 64)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "pkg_infodb_file_func", file: !87, line: 47, baseType: !397)
!397 = !DISubroutineType(types: !398)
!398 = !{null, !143, !143}
!399 = !DILocalVariable(name: "pkg", arg: 1, scope: !392, file: !130, line: 56, type: !134)
!400 = !DILocation(line: 56, column: 36, scope: !392)
!401 = !DILocalVariable(name: "pkgbin", arg: 2, scope: !392, file: !130, line: 56, type: !325)
!402 = !DILocation(line: 56, column: 56, scope: !392)
!403 = !DILocalVariable(name: "func", arg: 3, scope: !392, file: !130, line: 57, type: !395)
!404 = !DILocation(line: 57, column: 42, scope: !392)
!405 = !DILocalVariable(name: "db_dir", scope: !392, file: !130, line: 59, type: !406)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64, align: 64)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !408, line: 127, baseType: !409)
!408 = !DIFile(filename: "/usr/include/dirent.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!409 = !DICompositeType(tag: DW_TAG_structure_type, name: "__dirstream", file: !408, line: 127, flags: DIFlagFwdDecl)
!410 = !DILocation(line: 59, column: 7, scope: !392)
!411 = !DILocalVariable(name: "db_de", scope: !392, file: !130, line: 60, type: !412)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64, align: 64)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dirent", file: !414, line: 22, size: 2240, align: 64, elements: !415)
!414 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/dirent.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!415 = !{!416, !417, !418, !420, !422}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino", scope: !413, file: !414, line: 25, baseType: !318, size: 64, align: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "d_off", scope: !413, file: !414, line: 26, baseType: !321, size: 64, align: 64, offset: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "d_reclen", scope: !413, file: !414, line: 31, baseType: !419, size: 16, align: 16, offset: 128)
!419 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "d_type", scope: !413, file: !414, line: 32, baseType: !421, size: 8, align: 8, offset: 144)
!421 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !413, file: !414, line: 33, baseType: !423, size: 2048, align: 8, offset: 152)
!423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 2048, align: 8, elements: !424)
!424 = !{!425}
!425 = !DISubrange(count: 256)
!426 = !DILocation(line: 60, column: 17, scope: !392)
!427 = !DILocalVariable(name: "db_path_state", scope: !392, file: !130, line: 61, type: !428)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varbuf_state", file: !429, line: 96, size: 64, align: 64, elements: !430)
!429 = !DIFile(filename: "../../lib/dpkg/varbuf.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!430 = !{!431}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !428, file: !429, line: 97, baseType: !123, size: 64, align: 64)
!432 = !DILocation(line: 61, column: 22, scope: !392)
!433 = !DILocalVariable(name: "db_path", scope: !392, file: !130, line: 62, type: !434)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varbuf", file: !429, line: 55, size: 192, align: 64, elements: !435)
!435 = !{!436, !437, !438}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !434, file: !429, line: 56, baseType: !123, size: 64, align: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !434, file: !429, line: 56, baseType: !123, size: 64, align: 64, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !434, file: !429, line: 57, baseType: !301, size: 64, align: 64, offset: 128)
!439 = !DILocation(line: 62, column: 16, scope: !392)
!440 = !DILocalVariable(name: "pkgname", scope: !392, file: !130, line: 63, type: !143)
!441 = !DILocation(line: 63, column: 14, scope: !392)
!442 = !DILocalVariable(name: "db_format", scope: !392, file: !130, line: 64, type: !86)
!443 = !DILocation(line: 64, column: 25, scope: !392)
!444 = !DILocation(line: 67, column: 14, scope: !392)
!445 = !DILocation(line: 67, column: 12, scope: !392)
!446 = !DILocation(line: 69, column: 6, scope: !447)
!447 = distinct !DILexicalBlock(scope: !392, file: !130, line: 69, column: 6)
!448 = !DILocation(line: 69, column: 14, scope: !447)
!449 = !DILocation(line: 69, column: 24, scope: !447)
!450 = !DILocation(line: 69, column: 46, scope: !447)
!451 = !DILocation(line: 70, column: 6, scope: !447)
!452 = !DILocation(line: 70, column: 16, scope: !447)
!453 = !DILocation(line: 69, column: 6, scope: !454)
!454 = !DILexicalBlockFile(scope: !392, file: !130, discriminator: 1)
!455 = !DILocation(line: 71, column: 25, scope: !447)
!456 = !DILocation(line: 71, column: 30, scope: !447)
!457 = !DILocation(line: 71, column: 13, scope: !447)
!458 = !DILocation(line: 71, column: 11, scope: !447)
!459 = !DILocation(line: 71, column: 3, scope: !447)
!460 = !DILocation(line: 73, column: 25, scope: !447)
!461 = !DILocation(line: 73, column: 30, scope: !447)
!462 = !DILocation(line: 73, column: 13, scope: !447)
!463 = !DILocation(line: 73, column: 11, scope: !447)
!464 = !DILocation(line: 75, column: 27, scope: !392)
!465 = !DILocation(line: 75, column: 56, scope: !454)
!466 = !DILocation(line: 75, column: 49, scope: !467)
!467 = !DILexicalBlockFile(scope: !392, file: !130, discriminator: 2)
!468 = !DILocation(line: 75, column: 2, scope: !469)
!469 = !DILexicalBlockFile(scope: !392, file: !130, discriminator: 3)
!470 = !DILocation(line: 76, column: 2, scope: !392)
!471 = !DILocation(line: 77, column: 2, scope: !392)
!472 = !DILocation(line: 78, column: 2, scope: !392)
!473 = !DILocation(line: 80, column: 27, scope: !392)
!474 = !DILocation(line: 80, column: 11, scope: !392)
!475 = !DILocation(line: 80, column: 9, scope: !392)
!476 = !DILocation(line: 81, column: 7, scope: !477)
!477 = distinct !DILexicalBlock(scope: !392, file: !130, line: 81, column: 6)
!478 = !DILocation(line: 81, column: 6, scope: !392)
!479 = !DILocation(line: 82, column: 10, scope: !477)
!480 = !DILocation(line: 82, column: 3, scope: !481)
!481 = !DILexicalBlockFile(scope: !477, file: !130, discriminator: 1)
!482 = !DILocation(line: 82, column: 3, scope: !477)
!483 = !DILocation(line: 84, column: 43, scope: !392)
!484 = !DILocation(line: 84, column: 35, scope: !392)
!485 = !DILocation(line: 84, column: 2, scope: !392)
!486 = !DILocation(line: 85, column: 2, scope: !392)
!487 = !DILocation(line: 85, column: 26, scope: !454)
!488 = !DILocation(line: 85, column: 18, scope: !454)
!489 = !DILocation(line: 85, column: 16, scope: !454)
!490 = !DILocation(line: 85, column: 35, scope: !454)
!491 = !DILocation(line: 85, column: 2, scope: !454)
!492 = !DILocalVariable(name: "filename", scope: !493, file: !130, line: 86, type: !143)
!493 = distinct !DILexicalBlock(scope: !392, file: !130, line: 85, column: 43)
!494 = !DILocation(line: 86, column: 15, scope: !493)
!495 = !DILocalVariable(name: "filetype", scope: !493, file: !130, line: 86, type: !143)
!496 = !DILocation(line: 86, column: 26, scope: !493)
!497 = !DILocalVariable(name: "dot", scope: !493, file: !130, line: 86, type: !143)
!498 = !DILocation(line: 86, column: 37, scope: !493)
!499 = !DILocation(line: 89, column: 9, scope: !493)
!500 = !DILocation(line: 89, column: 16, scope: !493)
!501 = !DILocation(line: 88, column: 3, scope: !493)
!502 = !DILocation(line: 92, column: 7, scope: !503)
!503 = distinct !DILexicalBlock(scope: !493, file: !130, line: 92, column: 7)
!504 = !DILocation(line: 92, column: 14, scope: !503)
!505 = !DILocation(line: 92, column: 24, scope: !503)
!506 = !DILocation(line: 92, column: 7, scope: !493)
!507 = !DILocation(line: 93, column: 4, scope: !503)
!508 = distinct !{!508, !486}
!509 = !DILocation(line: 96, column: 17, scope: !493)
!510 = !DILocation(line: 96, column: 24, scope: !493)
!511 = !DILocation(line: 96, column: 9, scope: !493)
!512 = !DILocation(line: 96, column: 7, scope: !493)
!513 = !DILocation(line: 97, column: 7, scope: !514)
!514 = distinct !DILexicalBlock(scope: !493, file: !130, line: 97, column: 7)
!515 = !DILocation(line: 97, column: 11, scope: !514)
!516 = !DILocation(line: 97, column: 7, scope: !493)
!517 = !DILocation(line: 98, column: 4, scope: !514)
!518 = !DILocation(line: 101, column: 14, scope: !519)
!519 = distinct !DILexicalBlock(scope: !493, file: !130, line: 101, column: 7)
!520 = !DILocation(line: 101, column: 7, scope: !519)
!521 = !DILocation(line: 101, column: 35, scope: !519)
!522 = !DILocation(line: 101, column: 41, scope: !519)
!523 = !DILocation(line: 101, column: 48, scope: !519)
!524 = !DILocation(line: 101, column: 39, scope: !519)
!525 = !DILocation(line: 101, column: 23, scope: !519)
!526 = !DILocation(line: 101, column: 56, scope: !519)
!527 = !DILocation(line: 102, column: 15, scope: !519)
!528 = !DILocation(line: 102, column: 22, scope: !519)
!529 = !DILocation(line: 102, column: 30, scope: !519)
!530 = !DILocation(line: 102, column: 39, scope: !519)
!531 = !DILocation(line: 102, column: 45, scope: !519)
!532 = !DILocation(line: 102, column: 52, scope: !519)
!533 = !DILocation(line: 102, column: 43, scope: !519)
!534 = !DILocation(line: 102, column: 7, scope: !519)
!535 = !DILocation(line: 101, column: 7, scope: !536)
!536 = !DILexicalBlockFile(scope: !493, file: !130, discriminator: 1)
!537 = !DILocation(line: 103, column: 4, scope: !519)
!538 = !DILocation(line: 105, column: 3, scope: !493)
!539 = !DILocation(line: 108, column: 14, scope: !493)
!540 = !DILocation(line: 108, column: 18, scope: !493)
!541 = !DILocation(line: 108, column: 12, scope: !493)
!542 = !DILocation(line: 110, column: 3, scope: !493)
!543 = !DILocation(line: 111, column: 28, scope: !493)
!544 = !DILocation(line: 111, column: 35, scope: !493)
!545 = !DILocation(line: 111, column: 50, scope: !493)
!546 = !DILocation(line: 111, column: 57, scope: !493)
!547 = !DILocation(line: 111, column: 43, scope: !493)
!548 = !DILocation(line: 111, column: 3, scope: !536)
!549 = !DILocation(line: 112, column: 3, scope: !493)
!550 = !DILocation(line: 113, column: 22, scope: !493)
!551 = !DILocation(line: 113, column: 12, scope: !493)
!552 = !DILocation(line: 115, column: 3, scope: !493)
!553 = !DILocation(line: 115, column: 8, scope: !493)
!554 = !DILocation(line: 115, column: 18, scope: !493)
!555 = !DILocation(line: 85, column: 2, scope: !467)
!556 = !DILocation(line: 117, column: 2, scope: !392)
!557 = !DILocation(line: 119, column: 2, scope: !392)
!558 = !DILocation(line: 120, column: 1, scope: !392)
