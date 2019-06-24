; ModuleID = './[inter]lib--dpkg--db-ctrl-format.o.i'
source_filename = "./[inter]lib--dpkg--db-ctrl-format.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.varbuf = type { i64, i64, i8* }
%struct.atomic_file = type { i32, i8*, i8*, %struct._IO_FILE* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
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

@db_format = internal global i32 -1, align 4
@db_upgrading = internal global i8 0, align 1
@db_infodir = internal global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"info\00", align 1
@pkg_infodb_get_file.vb = internal global %struct.varbuf zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"info/format\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"dpkg\00", align 1
@.str.3 = private unnamed_addr constant [72 x i8] c"info database format (%d) is bogus or too new; try getting a newer dpkg\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"error trying to open %.250s\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"corrupt info database format file '%s'\00", align 1

; Function Attrs: nounwind uwtable
define i32 @pkg_infodb_get_format() #0 !dbg !253 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @db_format, align 4, !dbg !256
  %3 = icmp sgt i32 %2, -1, !dbg !258
  br i1 %3, label %4, label %6, !dbg !259

; <label>:4:                                      ; preds = %0
  %5 = load i32, i32* @db_format, align 4, !dbg !260
  store i32 %5, i32* %1, align 4, !dbg !261
  br label %8, !dbg !261

; <label>:6:                                      ; preds = %0
  %7 = call i32 @pkg_infodb_read_format(), !dbg !262
  store i32 %7, i32* %1, align 4, !dbg !263
  br label %8, !dbg !263

; <label>:8:                                      ; preds = %6, %4
  %9 = load i32, i32* %1, align 4, !dbg !264
  ret i32 %9, !dbg !264
}

; Function Attrs: nounwind uwtable
define internal i32 @pkg_infodb_read_format() #0 !dbg !265 {
  %1 = alloca %struct.atomic_file*, align 8
  %2 = alloca %struct.stat, align 8
  %3 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_file** %1, metadata !266, metadata !327), !dbg !328
  call void @llvm.dbg.declare(metadata %struct.stat* %2, metadata !329, metadata !327), !dbg !366
  call void @llvm.dbg.declare(metadata i8** %3, metadata !367, metadata !327), !dbg !368
  %4 = call i8* @dpkg_db_get_path(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0)), !dbg !369
  store i8* %4, i8** %3, align 8, !dbg !370
  %5 = load i8*, i8** %3, align 8, !dbg !371
  %6 = call %struct.atomic_file* @atomic_file_new(i8* %5, i32 0), !dbg !372
  store %struct.atomic_file* %6, %struct.atomic_file** %1, align 8, !dbg !373
  %7 = load %struct.atomic_file*, %struct.atomic_file** %1, align 8, !dbg !374
  %8 = getelementptr inbounds %struct.atomic_file, %struct.atomic_file* %7, i32 0, i32 1, !dbg !375
  %9 = load i8*, i8** %8, align 8, !dbg !375
  %10 = call i32 @pkg_infodb_parse_format(i8* %9), !dbg !376
  store i32 %10, i32* @db_format, align 4, !dbg !377
  %11 = load %struct.atomic_file*, %struct.atomic_file** %1, align 8, !dbg !378
  %12 = getelementptr inbounds %struct.atomic_file, %struct.atomic_file* %11, i32 0, i32 2, !dbg !380
  %13 = load i8*, i8** %12, align 8, !dbg !380
  %14 = call i32 @stat(i8* %13, %struct.stat* %2) #7, !dbg !381
  %15 = icmp eq i32 %14, 0, !dbg !382
  br i1 %15, label %16, label %19, !dbg !383

; <label>:16:                                     ; preds = %0
  %17 = load i32, i32* @db_format, align 4, !dbg !384
  %18 = add nsw i32 %17, 1, !dbg !384
  store i32 %18, i32* @db_format, align 4, !dbg !384
  store i8 1, i8* @db_upgrading, align 1, !dbg !386
  br label %19, !dbg !387

; <label>:19:                                     ; preds = %16, %0
  %20 = load %struct.atomic_file*, %struct.atomic_file** %1, align 8, !dbg !388
  call void @atomic_file_free(%struct.atomic_file* %20), !dbg !389
  %21 = load i8*, i8** %3, align 8, !dbg !390
  call void @free(i8* %21) #7, !dbg !391
  %22 = load i32, i32* @db_format, align 4, !dbg !392
  %23 = icmp slt i32 %22, 0, !dbg !394
  br i1 %23, label %27, label %24, !dbg !395

; <label>:24:                                     ; preds = %19
  %25 = load i32, i32* @db_format, align 4, !dbg !396
  %26 = icmp sge i32 %25, 2, !dbg !398
  br i1 %26, label %27, label %30, !dbg !399

; <label>:27:                                     ; preds = %24, %19
  %28 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.3, i32 0, i32 0)) #7, !dbg !400
  %29 = load i32, i32* @db_format, align 4, !dbg !401
  call void (i8*, ...) @ohshit(i8* %28, i32 %29) #8, !dbg !402
  unreachable, !dbg !403

; <label>:30:                                     ; preds = %24
  %31 = load i32, i32* @db_format, align 4, !dbg !404
  ret i32 %31, !dbg !405
}

; Function Attrs: nounwind uwtable
define void @pkg_infodb_set_format(i32) #0 !dbg !406 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !409, metadata !327), !dbg !410
  %3 = load i32, i32* %2, align 4, !dbg !411
  store i32 %3, i32* @db_format, align 4, !dbg !412
  ret void, !dbg !413
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define zeroext i1 @pkg_infodb_is_upgrading() #0 !dbg !414 {
  %1 = load i32, i32* @db_format, align 4, !dbg !417
  %2 = icmp slt i32 %1, 0, !dbg !419
  br i1 %2, label %3, label %5, !dbg !420

; <label>:3:                                      ; preds = %0
  %4 = call i32 @pkg_infodb_read_format(), !dbg !421
  br label %5, !dbg !421

; <label>:5:                                      ; preds = %3, %0
  %6 = load i8, i8* @db_upgrading, align 1, !dbg !422
  %7 = trunc i8 %6 to i1, !dbg !422
  ret i1 %7, !dbg !423
}

; Function Attrs: nounwind uwtable
define i8* @pkg_infodb_get_dir() #0 !dbg !424 {
  %1 = load i8*, i8** @db_infodir, align 8, !dbg !427
  %2 = icmp eq i8* %1, null, !dbg !429
  br i1 %2, label %3, label %5, !dbg !430

; <label>:3:                                      ; preds = %0
  %4 = call i8* @dpkg_db_get_path(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)), !dbg !431
  store i8* %4, i8** @db_infodir, align 8, !dbg !432
  br label %5, !dbg !433

; <label>:5:                                      ; preds = %3, %0
  %6 = load i8*, i8** @db_infodir, align 8, !dbg !434
  ret i8* %6, !dbg !435
}

declare i8* @dpkg_db_get_path(i8*) #2

; Function Attrs: nounwind uwtable
define i8* @pkg_infodb_get_file(%struct.pkginfo*, %struct.pkgbin*, i8*) #0 !dbg !88 {
  %4 = alloca %struct.pkginfo*, align 8
  %5 = alloca %struct.pkgbin*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.pkginfo* %0, %struct.pkginfo** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %4, metadata !436, metadata !327), !dbg !437
  store %struct.pkgbin* %1, %struct.pkgbin** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %5, metadata !438, metadata !327), !dbg !439
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !440, metadata !327), !dbg !441
  call void @llvm.dbg.declare(metadata i32* %7, metadata !442, metadata !327), !dbg !443
  %8 = call i32 @pkg_infodb_get_format(), !dbg !444
  store i32 %8, i32* %7, align 4, !dbg !445
  call void @varbuf_reset(%struct.varbuf* @pkg_infodb_get_file.vb), !dbg !446
  %9 = call i8* @pkg_infodb_get_dir(), !dbg !447
  %10 = call i8* @pkg_infodb_get_dir(), !dbg !448
  %11 = call i64 @strlen(i8* %10) #9, !dbg !450
  call void @varbuf_add_buf(%struct.varbuf* @pkg_infodb_get_file.vb, i8* %9, i64 %11), !dbg !452
  call void @varbuf_add_char(%struct.varbuf* @pkg_infodb_get_file.vb, i32 47), !dbg !454
  %12 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !455
  %13 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %12, i32 0, i32 0, !dbg !456
  %14 = load %struct.pkgset*, %struct.pkgset** %13, align 8, !dbg !456
  %15 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %14, i32 0, i32 1, !dbg !457
  %16 = load i8*, i8** %15, align 8, !dbg !457
  %17 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !458
  %18 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %17, i32 0, i32 0, !dbg !459
  %19 = load %struct.pkgset*, %struct.pkgset** %18, align 8, !dbg !459
  %20 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %19, i32 0, i32 1, !dbg !460
  %21 = load i8*, i8** %20, align 8, !dbg !460
  %22 = call i64 @strlen(i8* %21) #9, !dbg !461
  call void @varbuf_add_buf(%struct.varbuf* @pkg_infodb_get_file.vb, i8* %16, i64 %22), !dbg !462
  %23 = load %struct.pkgbin*, %struct.pkgbin** %5, align 8, !dbg !463
  %24 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %23, i32 0, i32 2, !dbg !465
  %25 = load i32, i32* %24, align 4, !dbg !465
  %26 = icmp eq i32 %25, 1, !dbg !466
  br i1 %26, label %27, label %34, !dbg !467

; <label>:27:                                     ; preds = %3
  %28 = load i32, i32* %7, align 4, !dbg !468
  %29 = icmp eq i32 %28, 1, !dbg !469
  br i1 %29, label %30, label %34, !dbg !470

; <label>:30:                                     ; preds = %27
  %31 = load %struct.pkgbin*, %struct.pkgbin** %5, align 8, !dbg !471
  %32 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %31, i32 0, i32 3, !dbg !472
  %33 = load %struct.dpkg_arch*, %struct.dpkg_arch** %32, align 8, !dbg !472
  call void @varbuf_add_archqual(%struct.varbuf* @pkg_infodb_get_file.vb, %struct.dpkg_arch* %33), !dbg !473
  br label %34, !dbg !473

; <label>:34:                                     ; preds = %30, %27, %3
  call void @varbuf_add_char(%struct.varbuf* @pkg_infodb_get_file.vb, i32 46), !dbg !474
  %35 = load i8*, i8** %6, align 8, !dbg !475
  %36 = load i8*, i8** %6, align 8, !dbg !476
  %37 = call i64 @strlen(i8* %36) #9, !dbg !477
  call void @varbuf_add_buf(%struct.varbuf* @pkg_infodb_get_file.vb, i8* %35, i64 %37), !dbg !478
  call void @varbuf_end_str(%struct.varbuf* @pkg_infodb_get_file.vb), !dbg !479
  %38 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @pkg_infodb_get_file.vb, i32 0, i32 2), align 8, !dbg !480
  ret i8* %38, !dbg !481
}

declare void @varbuf_reset(%struct.varbuf*) #2

declare void @varbuf_add_buf(%struct.varbuf*, i8*, i64) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare void @varbuf_add_char(%struct.varbuf*, i32) #2

declare void @varbuf_add_archqual(%struct.varbuf*, %struct.dpkg_arch*) #2

declare void @varbuf_end_str(%struct.varbuf*) #2

; Function Attrs: nounwind uwtable
define i8* @pkg_infodb_reset_dir() #0 !dbg !482 {
  %1 = load i8*, i8** @db_infodir, align 8, !dbg !483
  call void @free(i8* %1) #7, !dbg !484
  store i8* null, i8** @db_infodir, align 8, !dbg !485
  %2 = call i8* @pkg_infodb_get_dir(), !dbg !486
  ret i8* %2, !dbg !487
}

; Function Attrs: nounwind
declare void @free(i8*) #4

declare %struct.atomic_file* @atomic_file_new(i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @pkg_infodb_parse_format(i8*) #0 !dbg !488 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !491, metadata !327), !dbg !492
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %4, metadata !493, metadata !327), !dbg !494
  call void @llvm.dbg.declare(metadata i32* %5, metadata !495, metadata !327), !dbg !496
  %6 = load i8*, i8** %3, align 8, !dbg !497
  %7 = call %struct._IO_FILE* @fopen(i8* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)), !dbg !498
  store %struct._IO_FILE* %7, %struct._IO_FILE** %4, align 8, !dbg !499
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !500
  %9 = icmp eq %struct._IO_FILE* %8, null, !dbg !502
  br i1 %9, label %10, label %18, !dbg !503

; <label>:10:                                     ; preds = %1
  %11 = call i32* @__errno_location() #1, !dbg !504
  %12 = load i32, i32* %11, align 4, !dbg !507
  %13 = icmp eq i32 %12, 2, !dbg !508
  br i1 %13, label %14, label %15, !dbg !509

; <label>:14:                                     ; preds = %10
  store i32 0, i32* %2, align 4, !dbg !510
  br label %29, !dbg !510

; <label>:15:                                     ; preds = %10
  %16 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0)) #7, !dbg !511
  %17 = load i8*, i8** %3, align 8, !dbg !512
  call void (i8*, ...) @ohshite(i8* %16, i8* %17) #8, !dbg !513
  unreachable, !dbg !515

; <label>:18:                                     ; preds = %1
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !516
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i32* %5), !dbg !518
  %21 = icmp ne i32 %20, 1, !dbg !519
  br i1 %21, label %22, label %25, !dbg !520

; <label>:22:                                     ; preds = %18
  %23 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i32 0, i32 0)) #7, !dbg !521
  %24 = load i8*, i8** %3, align 8, !dbg !522
  call void (i8*, ...) @ohshit(i8* %23, i8* %24) #8, !dbg !523
  unreachable, !dbg !525

; <label>:25:                                     ; preds = %18
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !526
  %27 = call i32 @fclose(%struct._IO_FILE* %26), !dbg !527
  %28 = load i32, i32* %5, align 4, !dbg !528
  store i32 %28, i32* %2, align 4, !dbg !529
  br label %29, !dbg !529

; <label>:29:                                     ; preds = %25, %14
  %30 = load i32, i32* %2, align 4, !dbg !530
  ret i32 %30, !dbg !530
}

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #4

declare void @atomic_file_free(%struct.atomic_file*) #2

; Function Attrs: noreturn
declare void @ohshit(i8*, ...) #5

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #4

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

; Function Attrs: noreturn
declare void @ohshite(i8*, ...) #5

declare i32 @fscanf(%struct._IO_FILE*, i8*, ...) #2

declare i32 @fclose(%struct._IO_FILE*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { noreturn }
attributes #9 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!250, !251}
!llvm.ident = !{!252}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !84, globals: !86)
!1 = !DIFile(filename: "[inter]lib--dpkg--db-ctrl-format.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{!3, !10, !22, !33, !42, !50, !54, !64, !74, !80}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkg_infodb_format", file: !4, line: 28, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../lib/dpkg/db-ctrl.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!5 = !{!6, !7, !8, !9}
!6 = !DIEnumerator(name: "PKG_INFODB_FORMAT_UNKNOWN", value: -1)
!7 = !DIEnumerator(name: "PKG_INFODB_FORMAT_LEGACY", value: 0)
!8 = !DIEnumerator(name: "PKG_INFODB_FORMAT_MULTIARCH", value: 1)
!9 = !DIEnumerator(name: "PKG_INFODB_FORMAT_LAST", value: 2)
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "deptype", file: !11, line: 44, size: 32, align: 32, elements: !12)
!11 = !DIFile(filename: "../../lib/dpkg/dpkg-db.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21}
!13 = !DIEnumerator(name: "dep_suggests", value: 0)
!14 = !DIEnumerator(name: "dep_recommends", value: 1)
!15 = !DIEnumerator(name: "dep_depends", value: 2)
!16 = !DIEnumerator(name: "dep_predepends", value: 3)
!17 = !DIEnumerator(name: "dep_breaks", value: 4)
!18 = !DIEnumerator(name: "dep_conflicts", value: 5)
!19 = !DIEnumerator(name: "dep_provides", value: 6)
!20 = !DIEnumerator(name: "dep_replaces", value: 7)
!21 = !DIEnumerator(name: "dep_enhances", value: 8)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_arch_type", file: !23, line: 37, size: 32, align: 32, elements: !24)
!23 = !DIFile(filename: "../../lib/dpkg/arch.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!24 = !{!25, !26, !27, !28, !29, !30, !31, !32}
!25 = !DIEnumerator(name: "DPKG_ARCH_NONE", value: 0)
!26 = !DIEnumerator(name: "DPKG_ARCH_EMPTY", value: 1)
!27 = !DIEnumerator(name: "DPKG_ARCH_ILLEGAL", value: 2)
!28 = !DIEnumerator(name: "DPKG_ARCH_WILDCARD", value: 3)
!29 = !DIEnumerator(name: "DPKG_ARCH_ALL", value: 4)
!30 = !DIEnumerator(name: "DPKG_ARCH_NATIVE", value: 5)
!31 = !DIEnumerator(name: "DPKG_ARCH_FOREIGN", value: 6)
!32 = !DIEnumerator(name: "DPKG_ARCH_UNKNOWN", value: 7)
!33 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_relation", file: !34, line: 61, size: 32, align: 32, elements: !35)
!34 = !DIFile(filename: "../../lib/dpkg/version.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!35 = !{!36, !37, !38, !39, !40, !41}
!36 = !DIEnumerator(name: "DPKG_RELATION_NONE", value: 0)
!37 = !DIEnumerator(name: "DPKG_RELATION_EQ", value: 1)
!38 = !DIEnumerator(name: "DPKG_RELATION_LT", value: 2)
!39 = !DIEnumerator(name: "DPKG_RELATION_LE", value: 3)
!40 = !DIEnumerator(name: "DPKG_RELATION_GT", value: 4)
!41 = !DIEnumerator(name: "DPKG_RELATION_GE", value: 5)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgwant", file: !11, line: 153, size: 32, align: 32, elements: !43)
!43 = !{!44, !45, !46, !47, !48, !49}
!44 = !DIEnumerator(name: "PKG_WANT_UNKNOWN", value: 0)
!45 = !DIEnumerator(name: "PKG_WANT_INSTALL", value: 1)
!46 = !DIEnumerator(name: "PKG_WANT_HOLD", value: 2)
!47 = !DIEnumerator(name: "PKG_WANT_DEINSTALL", value: 3)
!48 = !DIEnumerator(name: "PKG_WANT_PURGE", value: 4)
!49 = !DIEnumerator(name: "PKG_WANT_SENTINEL", value: 5)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgeflag", file: !11, line: 163, size: 32, align: 32, elements: !51)
!51 = !{!52, !53}
!52 = !DIEnumerator(name: "PKG_EFLAG_OK", value: 0)
!53 = !DIEnumerator(name: "PKG_EFLAG_REINSTREQ", value: 1)
!54 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgstatus", file: !11, line: 168, size: 32, align: 32, elements: !55)
!55 = !{!56, !57, !58, !59, !60, !61, !62, !63}
!56 = !DIEnumerator(name: "PKG_STAT_NOTINSTALLED", value: 0)
!57 = !DIEnumerator(name: "PKG_STAT_CONFIGFILES", value: 1)
!58 = !DIEnumerator(name: "PKG_STAT_HALFINSTALLED", value: 2)
!59 = !DIEnumerator(name: "PKG_STAT_UNPACKED", value: 3)
!60 = !DIEnumerator(name: "PKG_STAT_HALFCONFIGURED", value: 4)
!61 = !DIEnumerator(name: "PKG_STAT_TRIGGERSAWAITED", value: 5)
!62 = !DIEnumerator(name: "PKG_STAT_TRIGGERSPENDING", value: 6)
!63 = !DIEnumerator(name: "PKG_STAT_INSTALLED", value: 7)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgpriority", file: !11, line: 179, size: 32, align: 32, elements: !65)
!65 = !{!66, !67, !68, !69, !70, !71, !72, !73}
!66 = !DIEnumerator(name: "PKG_PRIO_REQUIRED", value: 0)
!67 = !DIEnumerator(name: "PKG_PRIO_IMPORTANT", value: 1)
!68 = !DIEnumerator(name: "PKG_PRIO_STANDARD", value: 2)
!69 = !DIEnumerator(name: "PKG_PRIO_OPTIONAL", value: 3)
!70 = !DIEnumerator(name: "PKG_PRIO_EXTRA", value: 4)
!71 = !DIEnumerator(name: "PKG_PRIO_OTHER", value: 5)
!72 = !DIEnumerator(name: "PKG_PRIO_UNKNOWN", value: 6)
!73 = !DIEnumerator(name: "PKG_PRIO_UNSET", value: -1)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgmultiarch", file: !11, line: 95, size: 32, align: 32, elements: !75)
!75 = !{!76, !77, !78, !79}
!76 = !DIEnumerator(name: "PKG_MULTIARCH_NO", value: 0)
!77 = !DIEnumerator(name: "PKG_MULTIARCH_SAME", value: 1)
!78 = !DIEnumerator(name: "PKG_MULTIARCH_ALLOWED", value: 2)
!79 = !DIEnumerator(name: "PKG_MULTIARCH_FOREIGN", value: 3)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "atomic_file_flags", file: !81, line: 36, size: 32, align: 32, elements: !82)
!81 = !DIFile(filename: "../../lib/dpkg/atomic-file.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!82 = !{!83}
!83 = !DIEnumerator(name: "ATOMIC_FILE_BACKUP", value: 1)
!84 = !{!85}
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!86 = !{!87, !247, !248, !249}
!87 = distinct !DIGlobalVariable(name: "vb", scope: !88, file: !89, line: 131, type: !237, isLocal: true, isDefinition: true, variable: %struct.varbuf* @pkg_infodb_get_file.vb)
!88 = distinct !DISubprogram(name: "pkg_infodb_get_file", scope: !89, file: !89, line: 128, type: !90, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !236)
!89 = !DIFile(filename: "db-ctrl-format.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!90 = !DISubroutineType(types: !91)
!91 = !{!92, !95, !234, !92}
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64, align: 64)
!93 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!94 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64, align: 64)
!96 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkginfo", file: !11, line: 195, size: 3072, align: 64, elements: !98)
!98 = !{!99, !149, !150, !151, !152, !153, !154, !155, !156, !157, !187, !188, !191, !200, !216, !217, !223, !226, !232, !233}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !97, file: !11, line: 196, baseType: !100, size: 64, align: 64)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64, align: 64)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgset", file: !11, line: 242, size: 3392, align: 64, elements: !102)
!102 = !{!103, !104, !105, !106, !147}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !101, file: !11, line: 243, baseType: !100, size: 64, align: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !101, file: !11, line: 244, baseType: !92, size: 64, align: 64, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !101, file: !11, line: 245, baseType: !97, size: 3072, align: 64, offset: 128)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "depended", scope: !101, file: !11, line: 249, baseType: !107, size: 128, align: 64, offset: 3200)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !101, file: !11, line: 246, size: 128, align: 64, elements: !108)
!108 = !{!109, !146}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !107, file: !11, line: 247, baseType: !110, size: 64, align: 64)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64, align: 64)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "deppossi", file: !11, line: 63, size: 640, align: 64, elements: !112)
!112 = !{!113, !122, !123, !124, !125, !126, !135, !142, !143, !145}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !111, file: !11, line: 64, baseType: !114, size: 64, align: 64)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64, align: 64)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dependency", file: !11, line: 56, size: 256, align: 64, elements: !116)
!116 = !{!117, !119, !120, !121}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !115, file: !11, line: 57, baseType: !118, size: 64, align: 64)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64, align: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !115, file: !11, line: 58, baseType: !114, size: 64, align: 64, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !115, file: !11, line: 59, baseType: !110, size: 64, align: 64, offset: 128)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !115, file: !11, line: 60, baseType: !10, size: 32, align: 32, offset: 192)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "ed", scope: !111, file: !11, line: 65, baseType: !100, size: 64, align: 64, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !111, file: !11, line: 66, baseType: !110, size: 64, align: 64, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "rev_next", scope: !111, file: !11, line: 66, baseType: !110, size: 64, align: 64, offset: 192)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "rev_prev", scope: !111, file: !11, line: 66, baseType: !110, size: 64, align: 64, offset: 256)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !111, file: !11, line: 67, baseType: !127, size: 64, align: 64, offset: 320)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64, align: 64)
!128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_arch", file: !23, line: 48, size: 192, align: 64, elements: !130)
!130 = !{!131, !133, !134}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !129, file: !23, line: 49, baseType: !132, size: 64, align: 64)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64, align: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !129, file: !23, line: 50, baseType: !92, size: 64, align: 64, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !129, file: !23, line: 51, baseType: !22, size: 32, align: 32, offset: 128)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !111, file: !11, line: 68, baseType: !136, size: 192, align: 64, offset: 384)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_version", file: !34, line: 42, size: 192, align: 64, elements: !137)
!137 = !{!138, !140, !141}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !136, file: !34, line: 44, baseType: !139, size: 32, align: 32)
!139 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !136, file: !34, line: 46, baseType: !92, size: 64, align: 64, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !136, file: !34, line: 48, baseType: !92, size: 64, align: 64, offset: 128)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "verrel", scope: !111, file: !11, line: 69, baseType: !33, size: 32, align: 32, offset: 576)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "arch_is_implicit", scope: !111, file: !11, line: 70, baseType: !144, size: 8, align: 8, offset: 608)
!144 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "cyclebreak", scope: !111, file: !11, line: 71, baseType: !144, size: 8, align: 8, offset: 616)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !107, file: !11, line: 248, baseType: !110, size: 64, align: 64, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "installed_instances", scope: !101, file: !11, line: 250, baseType: !148, size: 32, align: 32, offset: 3328)
!148 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "arch_next", scope: !97, file: !11, line: 197, baseType: !118, size: 64, align: 64, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "want", scope: !97, file: !11, line: 199, baseType: !42, size: 32, align: 32, offset: 128)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "eflag", scope: !97, file: !11, line: 201, baseType: !50, size: 32, align: 32, offset: 160)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !97, file: !11, line: 202, baseType: !54, size: 32, align: 32, offset: 192)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !97, file: !11, line: 203, baseType: !64, size: 32, align: 32, offset: 224)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "otherpriority", scope: !97, file: !11, line: 204, baseType: !92, size: 64, align: 64, offset: 256)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "section", scope: !97, file: !11, line: 205, baseType: !92, size: 64, align: 64, offset: 320)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "configversion", scope: !97, file: !11, line: 206, baseType: !136, size: 192, align: 64, offset: 384)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !97, file: !11, line: 207, baseType: !158, size: 960, align: 64, offset: 576)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgbin", file: !11, line: 107, size: 960, align: 64, elements: !159)
!159 = !{!160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !180}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "depends", scope: !158, file: !11, line: 108, baseType: !114, size: 64, align: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "essential", scope: !158, file: !11, line: 110, baseType: !144, size: 8, align: 8, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "multiarch", scope: !158, file: !11, line: 111, baseType: !74, size: 32, align: 32, offset: 96)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !158, file: !11, line: 112, baseType: !127, size: 64, align: 64, offset: 128)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "pkgname_archqual", scope: !158, file: !11, line: 115, baseType: !92, size: 64, align: 64, offset: 192)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !158, file: !11, line: 116, baseType: !92, size: 64, align: 64, offset: 256)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "maintainer", scope: !158, file: !11, line: 117, baseType: !92, size: 64, align: 64, offset: 320)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !158, file: !11, line: 118, baseType: !92, size: 64, align: 64, offset: 384)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "installedsize", scope: !158, file: !11, line: 119, baseType: !92, size: 64, align: 64, offset: 448)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !158, file: !11, line: 120, baseType: !92, size: 64, align: 64, offset: 512)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "bugs", scope: !158, file: !11, line: 121, baseType: !92, size: 64, align: 64, offset: 576)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !158, file: !11, line: 122, baseType: !136, size: 192, align: 64, offset: 640)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "conffiles", scope: !158, file: !11, line: 123, baseType: !173, size: 64, align: 64, offset: 832)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64, align: 64)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conffile", file: !11, line: 80, size: 256, align: 64, elements: !175)
!175 = !{!176, !177, !178, !179}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !174, file: !11, line: 81, baseType: !173, size: 64, align: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !174, file: !11, line: 82, baseType: !92, size: 64, align: 64, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !174, file: !11, line: 83, baseType: !92, size: 64, align: 64, offset: 128)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "obsolete", scope: !174, file: !11, line: 84, baseType: !144, size: 8, align: 8, offset: 192)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "arbs", scope: !158, file: !11, line: 124, baseType: !181, size: 64, align: 64, offset: 896)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64, align: 64)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arbitraryfield", file: !11, line: 74, size: 192, align: 64, elements: !183)
!183 = !{!184, !185, !186}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !182, file: !11, line: 75, baseType: !181, size: 64, align: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !182, file: !11, line: 76, baseType: !92, size: 64, align: 64, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !182, file: !11, line: 77, baseType: !92, size: 64, align: 64, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !97, file: !11, line: 208, baseType: !158, size: 960, align: 64, offset: 1536)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "clientdata", scope: !97, file: !11, line: 209, baseType: !189, size: 64, align: 64, offset: 2496)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64, align: 64)
!190 = !DICompositeType(tag: DW_TAG_structure_type, name: "perpackagestate", file: !11, line: 151, flags: DIFlagFwdDecl)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "archives", scope: !97, file: !11, line: 211, baseType: !192, size: 64, align: 64, offset: 2560)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64, align: 64)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archivedetails", file: !11, line: 87, size: 320, align: 64, elements: !194)
!194 = !{!195, !196, !197, !198, !199}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !193, file: !11, line: 88, baseType: !192, size: 64, align: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !193, file: !11, line: 89, baseType: !92, size: 64, align: 64, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "msdosname", scope: !193, file: !11, line: 90, baseType: !92, size: 64, align: 64, offset: 128)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !193, file: !11, line: 91, baseType: !92, size: 64, align: 64, offset: 192)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "md5sum", scope: !193, file: !11, line: 92, baseType: !92, size: 64, align: 64, offset: 256)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "trigaw", scope: !97, file: !11, line: 216, baseType: !201, size: 128, align: 64, offset: 2624)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !97, file: !11, line: 213, size: 128, align: 64, elements: !202)
!202 = !{!203, !215}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !201, file: !11, line: 215, baseType: !204, size: 64, align: 64)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64, align: 64)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigaw", file: !11, line: 142, size: 320, align: 64, elements: !206)
!206 = !{!207, !208, !209, !210}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "aw", scope: !205, file: !11, line: 143, baseType: !118, size: 64, align: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "pend", scope: !205, file: !11, line: 143, baseType: !118, size: 64, align: 64, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "samepend_next", scope: !205, file: !11, line: 144, baseType: !204, size: 64, align: 64, offset: 128)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "sameaw", scope: !205, file: !11, line: 147, baseType: !211, size: 128, align: 64, offset: 192)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !205, file: !11, line: 145, size: 128, align: 64, elements: !212)
!212 = !{!213, !214}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !211, file: !11, line: 146, baseType: !204, size: 64, align: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !211, file: !11, line: 146, baseType: !204, size: 64, align: 64, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !201, file: !11, line: 215, baseType: !204, size: 64, align: 64, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "othertrigaw_head", scope: !97, file: !11, line: 219, baseType: !204, size: 64, align: 64, offset: 2752)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "trigpend_head", scope: !97, file: !11, line: 220, baseType: !218, size: 64, align: 64, offset: 2816)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64, align: 64)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigpend", file: !11, line: 134, size: 128, align: 64, elements: !220)
!220 = !{!221, !222}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !219, file: !11, line: 135, baseType: !218, size: 64, align: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !219, file: !11, line: 136, baseType: !92, size: 64, align: 64, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !97, file: !11, line: 231, baseType: !224, size: 64, align: 64, offset: 2880)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64, align: 64)
!225 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode_list", file: !11, line: 231, flags: DIFlagFwdDecl)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_phys_offs", scope: !97, file: !11, line: 232, baseType: !227, size: 64, align: 64, offset: 2944)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !228, line: 86, baseType: !229)
!228 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !230, line: 131, baseType: !231)
!230 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!231 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_valid", scope: !97, file: !11, line: 233, baseType: !144, size: 8, align: 8, offset: 3008)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "status_dirty", scope: !97, file: !11, line: 236, baseType: !144, size: 8, align: 8, offset: 3016)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64, align: 64)
!235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !158)
!236 = !{}
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varbuf", file: !238, line: 55, size: 192, align: 64, elements: !239)
!238 = !DIFile(filename: "../../lib/dpkg/varbuf.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!239 = !{!240, !244, !245}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !237, file: !238, line: 56, baseType: !241, size: 64, align: 64)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !242, line: 216, baseType: !243)
!242 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!243 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !237, file: !238, line: 56, baseType: !241, size: 64, align: 64, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !237, file: !238, line: 57, baseType: !246, size: 64, align: 64, offset: 128)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, align: 64)
!247 = distinct !DIGlobalVariable(name: "db_upgrading", scope: !0, file: !89, line: 38, type: !144, isLocal: true, isDefinition: true, variable: i8* @db_upgrading)
!248 = distinct !DIGlobalVariable(name: "db_infodir", scope: !0, file: !89, line: 39, type: !246, isLocal: true, isDefinition: true, variable: i8** @db_infodir)
!249 = distinct !DIGlobalVariable(name: "db_format", scope: !0, file: !89, line: 37, type: !3, isLocal: true, isDefinition: true, variable: i32* @db_format)
!250 = !{i32 2, !"Dwarf Version", i32 4}
!251 = !{i32 2, !"Debug Info Version", i32 3}
!252 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!253 = distinct !DISubprogram(name: "pkg_infodb_get_format", scope: !89, file: !89, line: 95, type: !254, isLocal: false, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !236)
!254 = !DISubroutineType(types: !255)
!255 = !{!3}
!256 = !DILocation(line: 97, column: 6, scope: !257)
!257 = distinct !DILexicalBlock(scope: !253, file: !89, line: 97, column: 6)
!258 = !DILocation(line: 97, column: 16, scope: !257)
!259 = !DILocation(line: 97, column: 6, scope: !253)
!260 = !DILocation(line: 98, column: 10, scope: !257)
!261 = !DILocation(line: 98, column: 3, scope: !257)
!262 = !DILocation(line: 100, column: 10, scope: !257)
!263 = !DILocation(line: 100, column: 3, scope: !257)
!264 = !DILocation(line: 101, column: 1, scope: !253)
!265 = distinct !DISubprogram(name: "pkg_infodb_read_format", scope: !89, file: !89, line: 64, type: !254, isLocal: true, isDefinition: true, scopeLine: 65, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !236)
!266 = !DILocalVariable(name: "file", scope: !265, file: !89, line: 66, type: !267)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64, align: 64)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atomic_file", file: !81, line: 40, size: 256, align: 64, elements: !269)
!269 = !{!270, !271, !272, !273}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !268, file: !81, line: 41, baseType: !80, size: 32, align: 32)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !268, file: !81, line: 42, baseType: !246, size: 64, align: 64, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "name_new", scope: !268, file: !81, line: 43, baseType: !246, size: 64, align: 64, offset: 128)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !268, file: !81, line: 44, baseType: !274, size: 64, align: 64, offset: 192)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64, align: 64)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !276, line: 48, baseType: !277)
!276 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !278, line: 241, size: 1728, align: 64, elements: !279)
!278 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!279 = !{!280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !300, !301, !302, !303, !304, !306, !308, !312, !315, !317, !318, !319, !320, !321, !322, !323}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !277, file: !278, line: 242, baseType: !148, size: 32, align: 32)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !277, file: !278, line: 247, baseType: !246, size: 64, align: 64, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !277, file: !278, line: 248, baseType: !246, size: 64, align: 64, offset: 128)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !277, file: !278, line: 249, baseType: !246, size: 64, align: 64, offset: 192)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !277, file: !278, line: 250, baseType: !246, size: 64, align: 64, offset: 256)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !277, file: !278, line: 251, baseType: !246, size: 64, align: 64, offset: 320)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !277, file: !278, line: 252, baseType: !246, size: 64, align: 64, offset: 384)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !277, file: !278, line: 253, baseType: !246, size: 64, align: 64, offset: 448)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !277, file: !278, line: 254, baseType: !246, size: 64, align: 64, offset: 512)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !277, file: !278, line: 256, baseType: !246, size: 64, align: 64, offset: 576)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !277, file: !278, line: 257, baseType: !246, size: 64, align: 64, offset: 640)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !277, file: !278, line: 258, baseType: !246, size: 64, align: 64, offset: 704)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !277, file: !278, line: 260, baseType: !293, size: 64, align: 64, offset: 768)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64, align: 64)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !278, line: 156, size: 192, align: 64, elements: !295)
!295 = !{!296, !297, !299}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !294, file: !278, line: 157, baseType: !293, size: 64, align: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !294, file: !278, line: 158, baseType: !298, size: 64, align: 64, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64, align: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !294, file: !278, line: 162, baseType: !148, size: 32, align: 32, offset: 128)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !277, file: !278, line: 262, baseType: !298, size: 64, align: 64, offset: 832)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !277, file: !278, line: 264, baseType: !148, size: 32, align: 32, offset: 896)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !277, file: !278, line: 268, baseType: !148, size: 32, align: 32, offset: 928)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !277, file: !278, line: 270, baseType: !229, size: 64, align: 64, offset: 960)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !277, file: !278, line: 274, baseType: !305, size: 16, align: 16, offset: 1024)
!305 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !277, file: !278, line: 275, baseType: !307, size: 8, align: 8, offset: 1040)
!307 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !277, file: !278, line: 276, baseType: !309, size: 8, align: 8, offset: 1048)
!309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 8, align: 8, elements: !310)
!310 = !{!311}
!311 = !DISubrange(count: 1)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !277, file: !278, line: 280, baseType: !313, size: 64, align: 64, offset: 1088)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64, align: 64)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !278, line: 150, baseType: null)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !277, file: !278, line: 289, baseType: !316, size: 64, align: 64, offset: 1152)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !230, line: 132, baseType: !231)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !277, file: !278, line: 297, baseType: !85, size: 64, align: 64, offset: 1216)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !277, file: !278, line: 298, baseType: !85, size: 64, align: 64, offset: 1280)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !277, file: !278, line: 299, baseType: !85, size: 64, align: 64, offset: 1344)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !277, file: !278, line: 300, baseType: !85, size: 64, align: 64, offset: 1408)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !277, file: !278, line: 302, baseType: !241, size: 64, align: 64, offset: 1472)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !277, file: !278, line: 303, baseType: !148, size: 32, align: 32, offset: 1536)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !277, file: !278, line: 305, baseType: !324, size: 160, align: 8, offset: 1568)
!324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 160, align: 8, elements: !325)
!325 = !{!326}
!326 = !DISubrange(count: 20)
!327 = !DIExpression()
!328 = !DILocation(line: 66, column: 22, scope: !265)
!329 = !DILocalVariable(name: "st", scope: !265, file: !89, line: 67, type: !330)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !331, line: 46, size: 1152, align: 64, elements: !332)
!331 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!332 = !{!333, !335, !337, !339, !341, !343, !345, !346, !347, !348, !350, !352, !360, !361, !362}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !330, file: !331, line: 48, baseType: !334, size: 64, align: 64)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !230, line: 124, baseType: !243)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !330, file: !331, line: 53, baseType: !336, size: 64, align: 64, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !230, line: 127, baseType: !243)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !330, file: !331, line: 61, baseType: !338, size: 64, align: 64, offset: 128)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !230, line: 130, baseType: !243)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !330, file: !331, line: 62, baseType: !340, size: 32, align: 32, offset: 192)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !230, line: 129, baseType: !139)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !330, file: !331, line: 64, baseType: !342, size: 32, align: 32, offset: 224)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !230, line: 125, baseType: !139)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !330, file: !331, line: 65, baseType: !344, size: 32, align: 32, offset: 256)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !230, line: 126, baseType: !139)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !330, file: !331, line: 67, baseType: !148, size: 32, align: 32, offset: 288)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !330, file: !331, line: 69, baseType: !334, size: 64, align: 64, offset: 320)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !330, file: !331, line: 74, baseType: !229, size: 64, align: 64, offset: 384)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !330, file: !331, line: 78, baseType: !349, size: 64, align: 64, offset: 448)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !230, line: 153, baseType: !231)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !330, file: !331, line: 80, baseType: !351, size: 64, align: 64, offset: 512)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !230, line: 158, baseType: !231)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !330, file: !331, line: 91, baseType: !353, size: 128, align: 64, offset: 576)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !354, line: 120, size: 128, align: 64, elements: !355)
!354 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!355 = !{!356, !358}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !353, file: !354, line: 122, baseType: !357, size: 64, align: 64)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !230, line: 139, baseType: !231)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !353, file: !354, line: 123, baseType: !359, size: 64, align: 64, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !230, line: 175, baseType: !231)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !330, file: !331, line: 92, baseType: !353, size: 128, align: 64, offset: 704)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !330, file: !331, line: 93, baseType: !353, size: 128, align: 64, offset: 832)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !330, file: !331, line: 106, baseType: !363, size: 192, align: 64, offset: 960)
!363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !359, size: 192, align: 64, elements: !364)
!364 = !{!365}
!365 = !DISubrange(count: 3)
!366 = !DILocation(line: 67, column: 14, scope: !265)
!367 = !DILocalVariable(name: "filename", scope: !265, file: !89, line: 68, type: !246)
!368 = !DILocation(line: 68, column: 8, scope: !265)
!369 = !DILocation(line: 70, column: 13, scope: !265)
!370 = !DILocation(line: 70, column: 11, scope: !265)
!371 = !DILocation(line: 71, column: 25, scope: !265)
!372 = !DILocation(line: 71, column: 9, scope: !265)
!373 = !DILocation(line: 71, column: 7, scope: !265)
!374 = !DILocation(line: 73, column: 38, scope: !265)
!375 = !DILocation(line: 73, column: 44, scope: !265)
!376 = !DILocation(line: 73, column: 14, scope: !265)
!377 = !DILocation(line: 73, column: 12, scope: !265)
!378 = !DILocation(line: 79, column: 11, scope: !379)
!379 = distinct !DILexicalBlock(scope: !265, file: !89, line: 79, column: 6)
!380 = !DILocation(line: 79, column: 17, scope: !379)
!381 = !DILocation(line: 79, column: 6, scope: !379)
!382 = !DILocation(line: 79, column: 32, scope: !379)
!383 = !DILocation(line: 79, column: 6, scope: !265)
!384 = !DILocation(line: 80, column: 12, scope: !385)
!385 = distinct !DILexicalBlock(scope: !379, file: !89, line: 79, column: 38)
!386 = !DILocation(line: 81, column: 16, scope: !385)
!387 = !DILocation(line: 82, column: 2, scope: !385)
!388 = !DILocation(line: 84, column: 19, scope: !265)
!389 = !DILocation(line: 84, column: 2, scope: !265)
!390 = !DILocation(line: 85, column: 7, scope: !265)
!391 = !DILocation(line: 85, column: 2, scope: !265)
!392 = !DILocation(line: 87, column: 6, scope: !393)
!393 = distinct !DILexicalBlock(scope: !265, file: !89, line: 87, column: 6)
!394 = !DILocation(line: 87, column: 16, scope: !393)
!395 = !DILocation(line: 87, column: 20, scope: !393)
!396 = !DILocation(line: 87, column: 23, scope: !397)
!397 = !DILexicalBlockFile(scope: !393, file: !89, discriminator: 1)
!398 = !DILocation(line: 87, column: 33, scope: !397)
!399 = !DILocation(line: 87, column: 6, scope: !397)
!400 = !DILocation(line: 88, column: 9, scope: !393)
!401 = !DILocation(line: 89, column: 40, scope: !393)
!402 = !DILocation(line: 88, column: 3, scope: !397)
!403 = !DILocation(line: 88, column: 3, scope: !393)
!404 = !DILocation(line: 91, column: 9, scope: !265)
!405 = !DILocation(line: 91, column: 2, scope: !265)
!406 = distinct !DISubprogram(name: "pkg_infodb_set_format", scope: !89, file: !89, line: 104, type: !407, isLocal: false, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !236)
!407 = !DISubroutineType(types: !408)
!408 = !{null, !3}
!409 = !DILocalVariable(name: "version", arg: 1, scope: !406, file: !89, line: 104, type: !3)
!410 = !DILocation(line: 104, column: 46, scope: !406)
!411 = !DILocation(line: 106, column: 14, scope: !406)
!412 = !DILocation(line: 106, column: 12, scope: !406)
!413 = !DILocation(line: 107, column: 1, scope: !406)
!414 = distinct !DISubprogram(name: "pkg_infodb_is_upgrading", scope: !89, file: !89, line: 110, type: !415, isLocal: false, isDefinition: true, scopeLine: 111, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !236)
!415 = !DISubroutineType(types: !416)
!416 = !{!144}
!417 = !DILocation(line: 112, column: 6, scope: !418)
!418 = distinct !DILexicalBlock(scope: !414, file: !89, line: 112, column: 6)
!419 = !DILocation(line: 112, column: 16, scope: !418)
!420 = !DILocation(line: 112, column: 6, scope: !414)
!421 = !DILocation(line: 113, column: 3, scope: !418)
!422 = !DILocation(line: 115, column: 9, scope: !414)
!423 = !DILocation(line: 115, column: 2, scope: !414)
!424 = distinct !DISubprogram(name: "pkg_infodb_get_dir", scope: !89, file: !89, line: 119, type: !425, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !236)
!425 = !DISubroutineType(types: !426)
!426 = !{!92}
!427 = !DILocation(line: 121, column: 6, scope: !428)
!428 = distinct !DILexicalBlock(scope: !424, file: !89, line: 121, column: 6)
!429 = !DILocation(line: 121, column: 17, scope: !428)
!430 = !DILocation(line: 121, column: 6, scope: !424)
!431 = !DILocation(line: 122, column: 16, scope: !428)
!432 = !DILocation(line: 122, column: 14, scope: !428)
!433 = !DILocation(line: 122, column: 3, scope: !428)
!434 = !DILocation(line: 124, column: 9, scope: !424)
!435 = !DILocation(line: 124, column: 2, scope: !424)
!436 = !DILocalVariable(name: "pkg", arg: 1, scope: !88, file: !89, line: 128, type: !95)
!437 = !DILocation(line: 128, column: 43, scope: !88)
!438 = !DILocalVariable(name: "pkgbin", arg: 2, scope: !88, file: !89, line: 128, type: !234)
!439 = !DILocation(line: 128, column: 69, scope: !88)
!440 = !DILocalVariable(name: "filetype", arg: 3, scope: !88, file: !89, line: 129, type: !92)
!441 = !DILocation(line: 129, column: 33, scope: !88)
!442 = !DILocalVariable(name: "format", scope: !88, file: !89, line: 132, type: !3)
!443 = !DILocation(line: 132, column: 25, scope: !88)
!444 = !DILocation(line: 135, column: 11, scope: !88)
!445 = !DILocation(line: 135, column: 9, scope: !88)
!446 = !DILocation(line: 137, column: 2, scope: !88)
!447 = !DILocation(line: 138, column: 22, scope: !88)
!448 = !DILocation(line: 138, column: 51, scope: !449)
!449 = !DILexicalBlockFile(scope: !88, file: !89, discriminator: 1)
!450 = !DILocation(line: 138, column: 44, scope: !451)
!451 = !DILexicalBlockFile(scope: !88, file: !89, discriminator: 2)
!452 = !DILocation(line: 138, column: 2, scope: !453)
!453 = !DILexicalBlockFile(scope: !88, file: !89, discriminator: 3)
!454 = !DILocation(line: 139, column: 2, scope: !88)
!455 = !DILocation(line: 140, column: 22, scope: !88)
!456 = !DILocation(line: 140, column: 27, scope: !88)
!457 = !DILocation(line: 140, column: 32, scope: !88)
!458 = !DILocation(line: 140, column: 45, scope: !88)
!459 = !DILocation(line: 140, column: 50, scope: !88)
!460 = !DILocation(line: 140, column: 55, scope: !88)
!461 = !DILocation(line: 140, column: 38, scope: !88)
!462 = !DILocation(line: 140, column: 2, scope: !449)
!463 = !DILocation(line: 141, column: 6, scope: !464)
!464 = distinct !DILexicalBlock(scope: !88, file: !89, line: 141, column: 6)
!465 = !DILocation(line: 141, column: 14, scope: !464)
!466 = !DILocation(line: 141, column: 24, scope: !464)
!467 = !DILocation(line: 141, column: 46, scope: !464)
!468 = !DILocation(line: 142, column: 6, scope: !464)
!469 = !DILocation(line: 142, column: 13, scope: !464)
!470 = !DILocation(line: 141, column: 6, scope: !449)
!471 = !DILocation(line: 143, column: 28, scope: !464)
!472 = !DILocation(line: 143, column: 36, scope: !464)
!473 = !DILocation(line: 143, column: 3, scope: !464)
!474 = !DILocation(line: 144, column: 2, scope: !88)
!475 = !DILocation(line: 145, column: 22, scope: !88)
!476 = !DILocation(line: 145, column: 39, scope: !88)
!477 = !DILocation(line: 145, column: 32, scope: !88)
!478 = !DILocation(line: 145, column: 2, scope: !449)
!479 = !DILocation(line: 146, column: 2, scope: !88)
!480 = !DILocation(line: 148, column: 12, scope: !88)
!481 = !DILocation(line: 148, column: 2, scope: !88)
!482 = distinct !DISubprogram(name: "pkg_infodb_reset_dir", scope: !89, file: !89, line: 152, type: !425, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !236)
!483 = !DILocation(line: 154, column: 7, scope: !482)
!484 = !DILocation(line: 154, column: 2, scope: !482)
!485 = !DILocation(line: 155, column: 13, scope: !482)
!486 = !DILocation(line: 157, column: 9, scope: !482)
!487 = !DILocation(line: 157, column: 2, scope: !482)
!488 = distinct !DISubprogram(name: "pkg_infodb_parse_format", scope: !89, file: !89, line: 42, type: !489, isLocal: true, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !236)
!489 = !DISubroutineType(types: !490)
!490 = !{!3, !92}
!491 = !DILocalVariable(name: "file", arg: 1, scope: !488, file: !89, line: 42, type: !92)
!492 = !DILocation(line: 42, column: 37, scope: !488)
!493 = !DILocalVariable(name: "fp", scope: !488, file: !89, line: 44, type: !274)
!494 = !DILocation(line: 44, column: 8, scope: !488)
!495 = !DILocalVariable(name: "format", scope: !488, file: !89, line: 45, type: !139)
!496 = !DILocation(line: 45, column: 15, scope: !488)
!497 = !DILocation(line: 47, column: 13, scope: !488)
!498 = !DILocation(line: 47, column: 7, scope: !488)
!499 = !DILocation(line: 47, column: 5, scope: !488)
!500 = !DILocation(line: 48, column: 6, scope: !501)
!501 = distinct !DILexicalBlock(scope: !488, file: !89, line: 48, column: 6)
!502 = !DILocation(line: 48, column: 9, scope: !501)
!503 = !DILocation(line: 48, column: 6, scope: !488)
!504 = !DILocation(line: 50, column: 8, scope: !505)
!505 = distinct !DILexicalBlock(scope: !506, file: !89, line: 50, column: 6)
!506 = distinct !DILexicalBlock(scope: !501, file: !89, line: 48, column: 17)
!507 = !DILocation(line: 50, column: 7, scope: !505)
!508 = !DILocation(line: 50, column: 12, scope: !505)
!509 = !DILocation(line: 50, column: 6, scope: !506)
!510 = !DILocation(line: 51, column: 4, scope: !505)
!511 = !DILocation(line: 52, column: 10, scope: !506)
!512 = !DILocation(line: 52, column: 44, scope: !506)
!513 = !DILocation(line: 52, column: 3, scope: !514)
!514 = !DILexicalBlockFile(scope: !506, file: !89, discriminator: 1)
!515 = !DILocation(line: 52, column: 3, scope: !506)
!516 = !DILocation(line: 55, column: 13, scope: !517)
!517 = distinct !DILexicalBlock(scope: !488, file: !89, line: 55, column: 6)
!518 = !DILocation(line: 55, column: 6, scope: !517)
!519 = !DILocation(line: 55, column: 32, scope: !517)
!520 = !DILocation(line: 55, column: 6, scope: !488)
!521 = !DILocation(line: 56, column: 9, scope: !517)
!522 = !DILocation(line: 56, column: 54, scope: !517)
!523 = !DILocation(line: 56, column: 3, scope: !524)
!524 = !DILexicalBlockFile(scope: !517, file: !89, discriminator: 1)
!525 = !DILocation(line: 56, column: 3, scope: !517)
!526 = !DILocation(line: 58, column: 9, scope: !488)
!527 = !DILocation(line: 58, column: 2, scope: !488)
!528 = !DILocation(line: 60, column: 9, scope: !488)
!529 = !DILocation(line: 60, column: 2, scope: !488)
!530 = !DILocation(line: 61, column: 1, scope: !488)
