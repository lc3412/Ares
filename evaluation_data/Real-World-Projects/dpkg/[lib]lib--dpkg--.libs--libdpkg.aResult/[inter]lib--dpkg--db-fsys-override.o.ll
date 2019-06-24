; ModuleID = './[inter]lib--dpkg--db-fsys-override.o.i'
source_filename = "./[inter]lib--dpkg--db-fsys-override.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.group = type { i8*, i8*, i32, i8** }
%struct.file_stat = type { i32, i32, i32, i8*, i8* }
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
%struct.trigfileint = type opaque
%struct.file_ondisk_id = type { i64, i64 }
%struct.fsys_hash_iter = type opaque

@.str = private unnamed_addr constant [5 x i8] c"dpkg\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"invalid statoverride uid %s\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"invalid statoverride gid %s\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"invalid statoverride mode %s\00", align 1
@ensure_statoverrides.sb_prev = internal global %struct.stat zeroinitializer, align 8
@ensure_statoverrides.file_prev = internal global %struct._IO_FILE* null, align 8
@statoverridename = internal global i8* null, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"statoverride\00", align 1
@onerr_abort = external global i32, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"failed to open statoverride file\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"failed to fstat statoverride file\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"%s: same, skipping\00", align 1
@__func__.ensure_statoverrides = private unnamed_addr constant [21 x i8] c"ensure_statoverrides\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"%s: none, resetting\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"%s: new, (re)loading\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"reading statoverride file '%.250s'\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"statoverride file is missing final newline\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"statoverride file contains empty line\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"syntax error in statoverride file\00", align 1
@.str.15 = private unnamed_addr constant [192 x i8] c"unknown system user '%s' in statoverride file; the system user got removed\0Abefore the override, which is most probably a packaging bug, to recover you\0Acan remove the override manually with %s\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"dpkg-statoverride\00", align 1
@.str.17 = private unnamed_addr constant [44 x i8] c"unexpected end of line in statoverride file\00", align 1
@.str.18 = private unnamed_addr constant [194 x i8] c"unknown system group '%s' in statoverride file; the system group got removed\0Abefore the override, which is most probably a packaging bug, to recover you\0Acan remove the override manually with %s\00", align 1
@.str.19 = private unnamed_addr constant [49 x i8] c"multiple statoverrides present for file '%.250s'\00", align 1

; Function Attrs: nounwind uwtable
define i32 @statdb_parse_uid(i8*) #0 !dbg !224 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.passwd*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !229, metadata !230), !dbg !231
  call void @llvm.dbg.declare(metadata i8** %3, metadata !232, metadata !230), !dbg !233
  call void @llvm.dbg.declare(metadata i32* %4, metadata !234, metadata !230), !dbg !235
  %7 = load i8*, i8** %2, align 8, !dbg !236
  %8 = getelementptr inbounds i8, i8* %7, i64 0, !dbg !236
  %9 = load i8, i8* %8, align 1, !dbg !236
  %10 = sext i8 %9 to i32, !dbg !236
  %11 = icmp eq i32 %10, 35, !dbg !238
  br i1 %11, label %12, label %39, !dbg !239

; <label>:12:                                     ; preds = %1
  call void @llvm.dbg.declare(metadata i64* %5, metadata !240, metadata !230), !dbg !242
  %13 = call i32* @__errno_location() #1, !dbg !243
  store i32 0, i32* %13, align 4, !dbg !244
  %14 = load i8*, i8** %2, align 8, !dbg !245
  %15 = getelementptr inbounds i8, i8* %14, i64 1, !dbg !246
  %16 = call i64 @strtol(i8* %15, i8** %3, i32 10) #8, !dbg !247
  store i64 %16, i64* %5, align 8, !dbg !248
  %17 = load i8*, i8** %2, align 8, !dbg !249
  %18 = getelementptr inbounds i8, i8* %17, i64 1, !dbg !251
  %19 = load i8*, i8** %3, align 8, !dbg !252
  %20 = icmp eq i8* %18, %19, !dbg !253
  br i1 %20, label %33, label %21, !dbg !254

; <label>:21:                                     ; preds = %12
  %22 = load i8*, i8** %3, align 8, !dbg !255
  %23 = load i8, i8* %22, align 1, !dbg !257
  %24 = sext i8 %23 to i32, !dbg !257
  %25 = icmp ne i32 %24, 0, !dbg !257
  br i1 %25, label %33, label %26, !dbg !258

; <label>:26:                                     ; preds = %21
  %27 = load i64, i64* %5, align 8, !dbg !259
  %28 = icmp slt i64 %27, 0, !dbg !261
  br i1 %28, label %33, label %29, !dbg !262

; <label>:29:                                     ; preds = %26
  %30 = call i32* @__errno_location() #1, !dbg !263
  %31 = load i32, i32* %30, align 4, !dbg !265
  %32 = icmp ne i32 %31, 0, !dbg !266
  br i1 %32, label %33, label %36, !dbg !267

; <label>:33:                                     ; preds = %29, %26, %21, %12
  %34 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0)) #8, !dbg !268
  %35 = load i8*, i8** %2, align 8, !dbg !269
  call void (i8*, ...) @ohshit(i8* %34, i8* %35) #9, !dbg !270
  unreachable, !dbg !271

; <label>:36:                                     ; preds = %29
  %37 = load i64, i64* %5, align 8, !dbg !272
  %38 = trunc i64 %37 to i32, !dbg !273
  store i32 %38, i32* %4, align 4, !dbg !274
  br label %50, !dbg !275

; <label>:39:                                     ; preds = %1
  call void @llvm.dbg.declare(metadata %struct.passwd** %6, metadata !276, metadata !230), !dbg !289
  %40 = load i8*, i8** %2, align 8, !dbg !290
  %41 = call %struct.passwd* @getpwnam(i8* %40), !dbg !291
  store %struct.passwd* %41, %struct.passwd** %6, align 8, !dbg !289
  %42 = load %struct.passwd*, %struct.passwd** %6, align 8, !dbg !292
  %43 = icmp eq %struct.passwd* %42, null, !dbg !294
  br i1 %43, label %44, label %45, !dbg !295

; <label>:44:                                     ; preds = %39
  store i32 -1, i32* %4, align 4, !dbg !296
  br label %49, !dbg !297

; <label>:45:                                     ; preds = %39
  %46 = load %struct.passwd*, %struct.passwd** %6, align 8, !dbg !298
  %47 = getelementptr inbounds %struct.passwd, %struct.passwd* %46, i32 0, i32 2, !dbg !299
  %48 = load i32, i32* %47, align 8, !dbg !299
  store i32 %48, i32* %4, align 4, !dbg !300
  br label %49

; <label>:49:                                     ; preds = %45, %44
  br label %50

; <label>:50:                                     ; preds = %49, %36
  %51 = load i32, i32* %4, align 4, !dbg !301
  ret i32 %51, !dbg !302
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #2

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #3

; Function Attrs: noreturn
declare void @ohshit(i8*, ...) #4

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #3

declare %struct.passwd* @getpwnam(i8*) #5

; Function Attrs: nounwind uwtable
define i32 @statdb_parse_gid(i8*) #0 !dbg !303 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.group*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !306, metadata !230), !dbg !307
  call void @llvm.dbg.declare(metadata i8** %3, metadata !308, metadata !230), !dbg !309
  call void @llvm.dbg.declare(metadata i32* %4, metadata !310, metadata !230), !dbg !311
  %7 = load i8*, i8** %2, align 8, !dbg !312
  %8 = getelementptr inbounds i8, i8* %7, i64 0, !dbg !312
  %9 = load i8, i8* %8, align 1, !dbg !312
  %10 = sext i8 %9 to i32, !dbg !312
  %11 = icmp eq i32 %10, 35, !dbg !314
  br i1 %11, label %12, label %39, !dbg !315

; <label>:12:                                     ; preds = %1
  call void @llvm.dbg.declare(metadata i64* %5, metadata !316, metadata !230), !dbg !318
  %13 = call i32* @__errno_location() #1, !dbg !319
  store i32 0, i32* %13, align 4, !dbg !320
  %14 = load i8*, i8** %2, align 8, !dbg !321
  %15 = getelementptr inbounds i8, i8* %14, i64 1, !dbg !322
  %16 = call i64 @strtol(i8* %15, i8** %3, i32 10) #8, !dbg !323
  store i64 %16, i64* %5, align 8, !dbg !324
  %17 = load i8*, i8** %2, align 8, !dbg !325
  %18 = getelementptr inbounds i8, i8* %17, i64 1, !dbg !327
  %19 = load i8*, i8** %3, align 8, !dbg !328
  %20 = icmp eq i8* %18, %19, !dbg !329
  br i1 %20, label %33, label %21, !dbg !330

; <label>:21:                                     ; preds = %12
  %22 = load i8*, i8** %3, align 8, !dbg !331
  %23 = load i8, i8* %22, align 1, !dbg !333
  %24 = sext i8 %23 to i32, !dbg !333
  %25 = icmp ne i32 %24, 0, !dbg !333
  br i1 %25, label %33, label %26, !dbg !334

; <label>:26:                                     ; preds = %21
  %27 = load i64, i64* %5, align 8, !dbg !335
  %28 = icmp slt i64 %27, 0, !dbg !337
  br i1 %28, label %33, label %29, !dbg !338

; <label>:29:                                     ; preds = %26
  %30 = call i32* @__errno_location() #1, !dbg !339
  %31 = load i32, i32* %30, align 4, !dbg !341
  %32 = icmp ne i32 %31, 0, !dbg !342
  br i1 %32, label %33, label %36, !dbg !343

; <label>:33:                                     ; preds = %29, %26, %21, %12
  %34 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0)) #8, !dbg !344
  %35 = load i8*, i8** %2, align 8, !dbg !345
  call void (i8*, ...) @ohshit(i8* %34, i8* %35) #9, !dbg !346
  unreachable, !dbg !347

; <label>:36:                                     ; preds = %29
  %37 = load i64, i64* %5, align 8, !dbg !348
  %38 = trunc i64 %37 to i32, !dbg !349
  store i32 %38, i32* %4, align 4, !dbg !350
  br label %50, !dbg !351

; <label>:39:                                     ; preds = %1
  call void @llvm.dbg.declare(metadata %struct.group** %6, metadata !352, metadata !230), !dbg !363
  %40 = load i8*, i8** %2, align 8, !dbg !364
  %41 = call %struct.group* @getgrnam(i8* %40), !dbg !365
  store %struct.group* %41, %struct.group** %6, align 8, !dbg !363
  %42 = load %struct.group*, %struct.group** %6, align 8, !dbg !366
  %43 = icmp eq %struct.group* %42, null, !dbg !368
  br i1 %43, label %44, label %45, !dbg !369

; <label>:44:                                     ; preds = %39
  store i32 -1, i32* %4, align 4, !dbg !370
  br label %49, !dbg !371

; <label>:45:                                     ; preds = %39
  %46 = load %struct.group*, %struct.group** %6, align 8, !dbg !372
  %47 = getelementptr inbounds %struct.group, %struct.group* %46, i32 0, i32 2, !dbg !373
  %48 = load i32, i32* %47, align 8, !dbg !373
  store i32 %48, i32* %4, align 4, !dbg !374
  br label %49

; <label>:49:                                     ; preds = %45, %44
  br label %50

; <label>:50:                                     ; preds = %49, %36
  %51 = load i32, i32* %4, align 4, !dbg !375
  ret i32 %51, !dbg !376
}

declare %struct.group* @getgrnam(i8*) #5

; Function Attrs: nounwind uwtable
define i32 @statdb_parse_mode(i8*) #0 !dbg !377 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !380, metadata !230), !dbg !381
  call void @llvm.dbg.declare(metadata i8** %3, metadata !382, metadata !230), !dbg !383
  call void @llvm.dbg.declare(metadata i64* %4, metadata !384, metadata !230), !dbg !385
  %5 = load i8*, i8** %2, align 8, !dbg !386
  %6 = call i64 @strtol(i8* %5, i8** %3, i32 8) #8, !dbg !387
  store i64 %6, i64* %4, align 8, !dbg !388
  %7 = load i8*, i8** %2, align 8, !dbg !389
  %8 = load i8*, i8** %3, align 8, !dbg !391
  %9 = icmp eq i8* %7, %8, !dbg !392
  br i1 %9, label %21, label %10, !dbg !393

; <label>:10:                                     ; preds = %1
  %11 = load i8*, i8** %3, align 8, !dbg !394
  %12 = load i8, i8* %11, align 1, !dbg !396
  %13 = sext i8 %12 to i32, !dbg !396
  %14 = icmp ne i32 %13, 0, !dbg !396
  br i1 %14, label %21, label %15, !dbg !397

; <label>:15:                                     ; preds = %10
  %16 = load i64, i64* %4, align 8, !dbg !398
  %17 = icmp slt i64 %16, 0, !dbg !400
  br i1 %17, label %21, label %18, !dbg !401

; <label>:18:                                     ; preds = %15
  %19 = load i64, i64* %4, align 8, !dbg !402
  %20 = icmp sgt i64 %19, 4095, !dbg !404
  br i1 %20, label %21, label %24, !dbg !405

; <label>:21:                                     ; preds = %18, %15, %10, %1
  %22 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0)) #8, !dbg !406
  %23 = load i8*, i8** %2, align 8, !dbg !407
  call void (i8*, ...) @ohshit(i8* %22, i8* %23) #9, !dbg !408
  unreachable, !dbg !409

; <label>:24:                                     ; preds = %18
  %25 = load i64, i64* %4, align 8, !dbg !410
  %26 = trunc i64 %25 to i32, !dbg !411
  ret i32 %26, !dbg !412
}

; Function Attrs: nounwind uwtable
define void @ensure_statoverrides(i32) #0 !dbg !120 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stat, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.file_stat*, align 8
  %11 = alloca %struct.fsys_namenode*, align 8
  %12 = alloca %struct.fsys_hash_iter*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !413, metadata !230), !dbg !414
  call void @llvm.dbg.declare(metadata %struct.stat* %3, metadata !415, metadata !230), !dbg !416
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %4, metadata !417, metadata !230), !dbg !418
  call void @llvm.dbg.declare(metadata i8** %5, metadata !419, metadata !230), !dbg !420
  call void @llvm.dbg.declare(metadata i8** %6, metadata !421, metadata !230), !dbg !422
  call void @llvm.dbg.declare(metadata i8** %7, metadata !423, metadata !230), !dbg !424
  call void @llvm.dbg.declare(metadata i8** %8, metadata !425, metadata !230), !dbg !426
  call void @llvm.dbg.declare(metadata i8** %9, metadata !427, metadata !230), !dbg !428
  call void @llvm.dbg.declare(metadata %struct.file_stat** %10, metadata !429, metadata !230), !dbg !439
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %11, metadata !440, metadata !230), !dbg !606
  call void @llvm.dbg.declare(metadata %struct.fsys_hash_iter** %12, metadata !607, metadata !230), !dbg !610
  %13 = load i8*, i8** @statoverridename, align 8, !dbg !611
  %14 = icmp eq i8* %13, null, !dbg !613
  br i1 %14, label %15, label %17, !dbg !614

; <label>:15:                                     ; preds = %1
  %16 = call i8* @dpkg_db_get_path(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0)), !dbg !615
  store i8* %16, i8** @statoverridename, align 8, !dbg !616
  br label %17, !dbg !617

; <label>:17:                                     ; preds = %15, %1
  %18 = load volatile i32, i32* @onerr_abort, align 4, !dbg !618
  %19 = add nsw i32 %18, 1, !dbg !618
  store volatile i32 %19, i32* @onerr_abort, align 4, !dbg !618
  %20 = load i8*, i8** @statoverridename, align 8, !dbg !619
  %21 = call %struct._IO_FILE* @fopen(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)), !dbg !620
  store %struct._IO_FILE* %21, %struct._IO_FILE** %4, align 8, !dbg !621
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !622
  %23 = icmp ne %struct._IO_FILE* %22, null, !dbg !622
  br i1 %23, label %31, label %24, !dbg !624

; <label>:24:                                     ; preds = %17
  %25 = call i32* @__errno_location() #1, !dbg !625
  %26 = load i32, i32* %25, align 4, !dbg !628
  %27 = icmp ne i32 %26, 2, !dbg !629
  br i1 %27, label %28, label %30, !dbg !630

; <label>:28:                                     ; preds = %24
  %29 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0)) #8, !dbg !631
  call void (i8*, ...) @ohshite(i8* %29) #9, !dbg !632
  unreachable, !dbg !634

; <label>:30:                                     ; preds = %24
  br label %61, !dbg !635

; <label>:31:                                     ; preds = %17
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !636
  %33 = call i32 @fileno(%struct._IO_FILE* %32) #8, !dbg !638
  %34 = load i8*, i8** @statoverridename, align 8, !dbg !639
  call void @setcloexec(i32 %33, i8* %34), !dbg !640
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !642
  %36 = call i32 @fileno(%struct._IO_FILE* %35) #8, !dbg !644
  %37 = call i32 @fstat(i32 %36, %struct.stat* %3) #8, !dbg !645
  %38 = icmp ne i32 %37, 0, !dbg !647
  br i1 %38, label %39, label %41, !dbg !648

; <label>:39:                                     ; preds = %31
  %40 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i32 0, i32 0)) #8, !dbg !649
  call void (i8*, ...) @ohshite(i8* %40) #9, !dbg !650
  unreachable, !dbg !651

; <label>:41:                                     ; preds = %31
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @ensure_statoverrides.file_prev, align 8, !dbg !652
  %43 = icmp ne %struct._IO_FILE* %42, null, !dbg !652
  br i1 %43, label %44, label %59, !dbg !654

; <label>:44:                                     ; preds = %41
  %45 = load i64, i64* getelementptr inbounds (%struct.stat, %struct.stat* @ensure_statoverrides.sb_prev, i32 0, i32 0), align 8, !dbg !655
  %46 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0, !dbg !656
  %47 = load i64, i64* %46, align 8, !dbg !656
  %48 = icmp eq i64 %45, %47, !dbg !657
  br i1 %48, label %49, label %59, !dbg !658

; <label>:49:                                     ; preds = %44
  %50 = load i64, i64* getelementptr inbounds (%struct.stat, %struct.stat* @ensure_statoverrides.sb_prev, i32 0, i32 1), align 8, !dbg !659
  %51 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 1, !dbg !660
  %52 = load i64, i64* %51, align 8, !dbg !660
  %53 = icmp eq i64 %50, %52, !dbg !661
  br i1 %53, label %54, label %59, !dbg !662

; <label>:54:                                     ; preds = %49
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !663
  %56 = call i32 @fclose(%struct._IO_FILE* %55), !dbg !665
  %57 = load volatile i32, i32* @onerr_abort, align 4, !dbg !666
  %58 = add nsw i32 %57, -1, !dbg !666
  store volatile i32 %58, i32* @onerr_abort, align 4, !dbg !666
  call void (i32, i8*, ...) @debug(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ensure_statoverrides, i32 0, i32 0)), !dbg !667
  br label %282, !dbg !668

; <label>:59:                                     ; preds = %49, %44, %41
  %60 = bitcast %struct.stat* %3 to i8*, !dbg !669
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.stat* @ensure_statoverrides.sb_prev to i8*), i8* %60, i64 144, i32 8, i1 false), !dbg !669
  br label %61

; <label>:61:                                     ; preds = %59, %30
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @ensure_statoverrides.file_prev, align 8, !dbg !670
  %63 = icmp ne %struct._IO_FILE* %62, null, !dbg !670
  br i1 %63, label %64, label %67, !dbg !672

; <label>:64:                                     ; preds = %61
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @ensure_statoverrides.file_prev, align 8, !dbg !673
  %66 = call i32 @fclose(%struct._IO_FILE* %65), !dbg !674
  br label %67, !dbg !674

; <label>:67:                                     ; preds = %64, %61
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !675
  store %struct._IO_FILE* %68, %struct._IO_FILE** @ensure_statoverrides.file_prev, align 8, !dbg !676
  %69 = call %struct.fsys_hash_iter* @fsys_hash_iter_new(), !dbg !677
  store %struct.fsys_hash_iter* %69, %struct.fsys_hash_iter** %12, align 8, !dbg !678
  br label %70, !dbg !679

; <label>:70:                                     ; preds = %74, %67
  %71 = load %struct.fsys_hash_iter*, %struct.fsys_hash_iter** %12, align 8, !dbg !680
  %72 = call %struct.fsys_namenode* @fsys_hash_iter_next(%struct.fsys_hash_iter* %71), !dbg !682
  store %struct.fsys_namenode* %72, %struct.fsys_namenode** %11, align 8, !dbg !683
  %73 = icmp ne %struct.fsys_namenode* %72, null, !dbg !684
  br i1 %73, label %74, label %77, !dbg !684

; <label>:74:                                     ; preds = %70
  %75 = load %struct.fsys_namenode*, %struct.fsys_namenode** %11, align 8, !dbg !685
  %76 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %75, i32 0, i32 4, !dbg !686
  store %struct.file_stat* null, %struct.file_stat** %76, align 8, !dbg !687
  br label %70, !dbg !688, !llvm.loop !690

; <label>:77:                                     ; preds = %70
  %78 = load %struct.fsys_hash_iter*, %struct.fsys_hash_iter** %12, align 8, !dbg !691
  call void @fsys_hash_iter_free(%struct.fsys_hash_iter* %78), !dbg !692
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !693
  %80 = icmp ne %struct._IO_FILE* %79, null, !dbg !693
  br i1 %80, label %84, label %81, !dbg !695

; <label>:81:                                     ; preds = %77
  %82 = load volatile i32, i32* @onerr_abort, align 4, !dbg !696
  %83 = add nsw i32 %82, -1, !dbg !696
  store volatile i32 %83, i32* @onerr_abort, align 4, !dbg !696
  call void (i32, i8*, ...) @debug(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ensure_statoverrides, i32 0, i32 0)), !dbg !698
  br label %282, !dbg !699

; <label>:84:                                     ; preds = %77
  call void (i32, i8*, ...) @debug(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ensure_statoverrides, i32 0, i32 0)), !dbg !700
  %85 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 8, !dbg !701
  %86 = load i64, i64* %85, align 8, !dbg !701
  %87 = icmp ne i64 %86, 0, !dbg !703
  br i1 %87, label %91, label %88, !dbg !704

; <label>:88:                                     ; preds = %84
  %89 = load volatile i32, i32* @onerr_abort, align 4, !dbg !705
  %90 = add nsw i32 %89, -1, !dbg !705
  store volatile i32 %90, i32* @onerr_abort, align 4, !dbg !705
  br label %282, !dbg !707

; <label>:91:                                     ; preds = %84
  %92 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 8, !dbg !708
  %93 = load i64, i64* %92, align 8, !dbg !708
  %94 = call i8* @m_malloc(i64 %93), !dbg !709
  store i8* %94, i8** %5, align 8, !dbg !710
  %95 = load i8*, i8** %5, align 8, !dbg !711
  %96 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 8, !dbg !712
  %97 = load i64, i64* %96, align 8, !dbg !712
  %98 = getelementptr inbounds i8, i8* %95, i64 %97, !dbg !713
  store i8* %98, i8** %6, align 8, !dbg !714
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !715
  %100 = call i32 @fileno(%struct._IO_FILE* %99) #8, !dbg !717
  %101 = load i8*, i8** %5, align 8, !dbg !718
  %102 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 8, !dbg !719
  %103 = load i64, i64* %102, align 8, !dbg !719
  %104 = call i64 @fd_read(i32 %100, i8* %101, i64 %103), !dbg !720
  %105 = icmp slt i64 %104, 0, !dbg !722
  br i1 %105, label %106, label %109, !dbg !723

; <label>:106:                                    ; preds = %91
  %107 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i32 0, i32 0)) #8, !dbg !724
  %108 = load i8*, i8** @statoverridename, align 8, !dbg !725
  call void (i8*, ...) @ohshite(i8* %107, i8* %108) #9, !dbg !726
  unreachable, !dbg !727

; <label>:109:                                    ; preds = %91
  %110 = load i8*, i8** %5, align 8, !dbg !728
  store i8* %110, i8** %7, align 8, !dbg !729
  br label %111, !dbg !730

; <label>:111:                                    ; preds = %273, %109
  %112 = load i8*, i8** %7, align 8, !dbg !731
  %113 = load i8*, i8** %6, align 8, !dbg !732
  %114 = icmp ult i8* %112, %113, !dbg !733
  br i1 %114, label %115, label %278, !dbg !734

; <label>:115:                                    ; preds = %111
  %116 = call i8* @nfmalloc(i64 32), !dbg !735
  %117 = bitcast i8* %116 to %struct.file_stat*, !dbg !735
  store %struct.file_stat* %117, %struct.file_stat** %10, align 8, !dbg !737
  %118 = load i8*, i8** %7, align 8, !dbg !738
  %119 = load i8*, i8** %6, align 8, !dbg !739
  %120 = load i8*, i8** %7, align 8, !dbg !740
  %121 = ptrtoint i8* %119 to i64, !dbg !741
  %122 = ptrtoint i8* %120 to i64, !dbg !741
  %123 = sub i64 %121, %122, !dbg !741
  %124 = call i8* @memchr(i8* %118, i32 10, i64 %123) #10, !dbg !742
  store i8* %124, i8** %9, align 8, !dbg !743
  %125 = load i8*, i8** %9, align 8, !dbg !744
  %126 = icmp eq i8* %125, null, !dbg !746
  br i1 %126, label %127, label %129, !dbg !747

; <label>:127:                                    ; preds = %115
  %128 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i32 0, i32 0)) #8, !dbg !748
  call void (i8*, ...) @ohshit(i8* %128) #9, !dbg !749
  unreachable, !dbg !751

; <label>:129:                                    ; preds = %115
  %130 = load i8*, i8** %9, align 8, !dbg !752
  %131 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !753
  store i8* %131, i8** %8, align 8, !dbg !754
  %132 = load i8*, i8** %9, align 8, !dbg !755
  %133 = load i8*, i8** %7, align 8, !dbg !757
  %134 = icmp eq i8* %132, %133, !dbg !758
  br i1 %134, label %135, label %137, !dbg !759

; <label>:135:                                    ; preds = %129
  %136 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i32 0, i32 0)) #8, !dbg !760
  call void (i8*, ...) @ohshit(i8* %136) #9, !dbg !761
  unreachable, !dbg !763

; <label>:137:                                    ; preds = %129
  %138 = load i8*, i8** %9, align 8, !dbg !764
  store i8 0, i8* %138, align 1, !dbg !765
  %139 = load i8*, i8** %7, align 8, !dbg !766
  %140 = load i8*, i8** %8, align 8, !dbg !767
  %141 = load i8*, i8** %7, align 8, !dbg !768
  %142 = ptrtoint i8* %140 to i64, !dbg !769
  %143 = ptrtoint i8* %141 to i64, !dbg !769
  %144 = sub i64 %142, %143, !dbg !769
  %145 = call i8* @memchr(i8* %139, i32 32, i64 %144) #10, !dbg !770
  store i8* %145, i8** %9, align 8, !dbg !771
  %146 = load i8*, i8** %9, align 8, !dbg !772
  %147 = icmp eq i8* %146, null, !dbg !774
  br i1 %147, label %148, label %150, !dbg !775

; <label>:148:                                    ; preds = %137
  %149 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i32 0, i32 0)) #8, !dbg !776
  call void (i8*, ...) @ohshit(i8* %149) #9, !dbg !777
  unreachable, !dbg !779

; <label>:150:                                    ; preds = %137
  %151 = load i8*, i8** %9, align 8, !dbg !780
  store i8 0, i8* %151, align 1, !dbg !781
  %152 = load i8*, i8** %7, align 8, !dbg !782
  %153 = call i32 @statdb_parse_uid(i8* %152), !dbg !783
  %154 = load %struct.file_stat*, %struct.file_stat** %10, align 8, !dbg !784
  %155 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %154, i32 0, i32 0, !dbg !785
  store i32 %153, i32* %155, align 8, !dbg !786
  %156 = load %struct.file_stat*, %struct.file_stat** %10, align 8, !dbg !787
  %157 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %156, i32 0, i32 0, !dbg !789
  %158 = load i32, i32* %157, align 8, !dbg !789
  %159 = icmp eq i32 %158, -1, !dbg !790
  br i1 %159, label %160, label %165, !dbg !791

; <label>:160:                                    ; preds = %150
  %161 = load i8*, i8** %7, align 8, !dbg !792
  %162 = call i8* @nfstrsave(i8* %161), !dbg !793
  %163 = load %struct.file_stat*, %struct.file_stat** %10, align 8, !dbg !794
  %164 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %163, i32 0, i32 3, !dbg !795
  store i8* %162, i8** %164, align 8, !dbg !796
  br label %168, !dbg !794

; <label>:165:                                    ; preds = %150
  %166 = load %struct.file_stat*, %struct.file_stat** %10, align 8, !dbg !797
  %167 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %166, i32 0, i32 3, !dbg !798
  store i8* null, i8** %167, align 8, !dbg !799
  br label %168

; <label>:168:                                    ; preds = %165, %160
  %169 = load %struct.file_stat*, %struct.file_stat** %10, align 8, !dbg !800
  %170 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %169, i32 0, i32 0, !dbg !802
  %171 = load i32, i32* %170, align 8, !dbg !802
  %172 = icmp eq i32 %171, -1, !dbg !803
  br i1 %172, label %173, label %180, !dbg !804

; <label>:173:                                    ; preds = %168
  %174 = load i32, i32* %2, align 4, !dbg !805
  %175 = and i32 %174, 1, !dbg !807
  %176 = icmp ne i32 %175, 0, !dbg !807
  br i1 %176, label %180, label %177, !dbg !808

; <label>:177:                                    ; preds = %173
  %178 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([192 x i8], [192 x i8]* @.str.15, i32 0, i32 0)) #8, !dbg !809
  %179 = load i8*, i8** %7, align 8, !dbg !810
  call void (i8*, ...) @ohshit(i8* %178, i8* %179, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0)) #9, !dbg !811
  unreachable, !dbg !812

; <label>:180:                                    ; preds = %173, %168
  %181 = load i8*, i8** %9, align 8, !dbg !813
  %182 = getelementptr inbounds i8, i8* %181, i64 1, !dbg !814
  store i8* %182, i8** %7, align 8, !dbg !815
  %183 = load i8*, i8** %7, align 8, !dbg !816
  %184 = load i8*, i8** %6, align 8, !dbg !818
  %185 = icmp uge i8* %183, %184, !dbg !819
  br i1 %185, label %186, label %188, !dbg !820

; <label>:186:                                    ; preds = %180
  %187 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.17, i32 0, i32 0)) #8, !dbg !821
  call void (i8*, ...) @ohshit(i8* %187) #9, !dbg !822
  unreachable, !dbg !824

; <label>:188:                                    ; preds = %180
  %189 = load i8*, i8** %7, align 8, !dbg !825
  %190 = load i8*, i8** %8, align 8, !dbg !826
  %191 = load i8*, i8** %7, align 8, !dbg !827
  %192 = ptrtoint i8* %190 to i64, !dbg !828
  %193 = ptrtoint i8* %191 to i64, !dbg !828
  %194 = sub i64 %192, %193, !dbg !828
  %195 = call i8* @memchr(i8* %189, i32 32, i64 %194) #10, !dbg !829
  store i8* %195, i8** %9, align 8, !dbg !830
  %196 = load i8*, i8** %9, align 8, !dbg !831
  %197 = icmp eq i8* %196, null, !dbg !833
  br i1 %197, label %198, label %200, !dbg !834

; <label>:198:                                    ; preds = %188
  %199 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i32 0, i32 0)) #8, !dbg !835
  call void (i8*, ...) @ohshit(i8* %199) #9, !dbg !836
  unreachable, !dbg !838

; <label>:200:                                    ; preds = %188
  %201 = load i8*, i8** %9, align 8, !dbg !839
  store i8 0, i8* %201, align 1, !dbg !840
  %202 = load i8*, i8** %7, align 8, !dbg !841
  %203 = call i32 @statdb_parse_gid(i8* %202), !dbg !842
  %204 = load %struct.file_stat*, %struct.file_stat** %10, align 8, !dbg !843
  %205 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %204, i32 0, i32 1, !dbg !844
  store i32 %203, i32* %205, align 4, !dbg !845
  %206 = load %struct.file_stat*, %struct.file_stat** %10, align 8, !dbg !846
  %207 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %206, i32 0, i32 1, !dbg !848
  %208 = load i32, i32* %207, align 4, !dbg !848
  %209 = icmp eq i32 %208, -1, !dbg !849
  br i1 %209, label %210, label %215, !dbg !850

; <label>:210:                                    ; preds = %200
  %211 = load i8*, i8** %7, align 8, !dbg !851
  %212 = call i8* @nfstrsave(i8* %211), !dbg !852
  %213 = load %struct.file_stat*, %struct.file_stat** %10, align 8, !dbg !853
  %214 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %213, i32 0, i32 4, !dbg !854
  store i8* %212, i8** %214, align 8, !dbg !855
  br label %218, !dbg !853

; <label>:215:                                    ; preds = %200
  %216 = load %struct.file_stat*, %struct.file_stat** %10, align 8, !dbg !856
  %217 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %216, i32 0, i32 4, !dbg !857
  store i8* null, i8** %217, align 8, !dbg !858
  br label %218

; <label>:218:                                    ; preds = %215, %210
  %219 = load %struct.file_stat*, %struct.file_stat** %10, align 8, !dbg !859
  %220 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %219, i32 0, i32 1, !dbg !861
  %221 = load i32, i32* %220, align 4, !dbg !861
  %222 = icmp eq i32 %221, -1, !dbg !862
  br i1 %222, label %223, label %230, !dbg !863

; <label>:223:                                    ; preds = %218
  %224 = load i32, i32* %2, align 4, !dbg !864
  %225 = and i32 %224, 1, !dbg !866
  %226 = icmp ne i32 %225, 0, !dbg !866
  br i1 %226, label %230, label %227, !dbg !867

; <label>:227:                                    ; preds = %223
  %228 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([194 x i8], [194 x i8]* @.str.18, i32 0, i32 0)) #8, !dbg !868
  %229 = load i8*, i8** %7, align 8, !dbg !869
  call void (i8*, ...) @ohshit(i8* %228, i8* %229, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0)) #9, !dbg !870
  unreachable, !dbg !871

; <label>:230:                                    ; preds = %223, %218
  %231 = load i8*, i8** %9, align 8, !dbg !872
  %232 = getelementptr inbounds i8, i8* %231, i64 1, !dbg !873
  store i8* %232, i8** %7, align 8, !dbg !874
  %233 = load i8*, i8** %7, align 8, !dbg !875
  %234 = load i8*, i8** %6, align 8, !dbg !877
  %235 = icmp uge i8* %233, %234, !dbg !878
  br i1 %235, label %236, label %238, !dbg !879

; <label>:236:                                    ; preds = %230
  %237 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.17, i32 0, i32 0)) #8, !dbg !880
  call void (i8*, ...) @ohshit(i8* %237) #9, !dbg !881
  unreachable, !dbg !883

; <label>:238:                                    ; preds = %230
  %239 = load i8*, i8** %7, align 8, !dbg !884
  %240 = load i8*, i8** %8, align 8, !dbg !885
  %241 = load i8*, i8** %7, align 8, !dbg !886
  %242 = ptrtoint i8* %240 to i64, !dbg !887
  %243 = ptrtoint i8* %241 to i64, !dbg !887
  %244 = sub i64 %242, %243, !dbg !887
  %245 = call i8* @memchr(i8* %239, i32 32, i64 %244) #10, !dbg !888
  store i8* %245, i8** %9, align 8, !dbg !889
  %246 = load i8*, i8** %9, align 8, !dbg !890
  %247 = icmp eq i8* %246, null, !dbg !892
  br i1 %247, label %248, label %250, !dbg !893

; <label>:248:                                    ; preds = %238
  %249 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i32 0, i32 0)) #8, !dbg !894
  call void (i8*, ...) @ohshit(i8* %249) #9, !dbg !895
  unreachable, !dbg !897

; <label>:250:                                    ; preds = %238
  %251 = load i8*, i8** %9, align 8, !dbg !898
  store i8 0, i8* %251, align 1, !dbg !899
  %252 = load i8*, i8** %7, align 8, !dbg !900
  %253 = call i32 @statdb_parse_mode(i8* %252), !dbg !901
  %254 = load %struct.file_stat*, %struct.file_stat** %10, align 8, !dbg !902
  %255 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %254, i32 0, i32 2, !dbg !903
  store i32 %253, i32* %255, align 8, !dbg !904
  %256 = load i8*, i8** %9, align 8, !dbg !905
  %257 = getelementptr inbounds i8, i8* %256, i64 1, !dbg !906
  store i8* %257, i8** %7, align 8, !dbg !907
  %258 = load i8*, i8** %7, align 8, !dbg !908
  %259 = load i8*, i8** %6, align 8, !dbg !910
  %260 = icmp uge i8* %258, %259, !dbg !911
  br i1 %260, label %261, label %263, !dbg !912

; <label>:261:                                    ; preds = %250
  %262 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.17, i32 0, i32 0)) #8, !dbg !913
  call void (i8*, ...) @ohshit(i8* %262) #9, !dbg !914
  unreachable, !dbg !916

; <label>:263:                                    ; preds = %250
  %264 = load i8*, i8** %7, align 8, !dbg !917
  %265 = call %struct.fsys_namenode* @fsys_hash_find_node(i8* %264, i32 0), !dbg !918
  store %struct.fsys_namenode* %265, %struct.fsys_namenode** %11, align 8, !dbg !919
  %266 = load %struct.fsys_namenode*, %struct.fsys_namenode** %11, align 8, !dbg !920
  %267 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %266, i32 0, i32 4, !dbg !922
  %268 = load %struct.file_stat*, %struct.file_stat** %267, align 8, !dbg !922
  %269 = icmp ne %struct.file_stat* %268, null, !dbg !920
  br i1 %269, label %270, label %273, !dbg !923

; <label>:270:                                    ; preds = %263
  %271 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.19, i32 0, i32 0)) #8, !dbg !924
  %272 = load i8*, i8** %7, align 8, !dbg !925
  call void (i8*, ...) @ohshit(i8* %271, i8* %272) #9, !dbg !926
  unreachable, !dbg !928

; <label>:273:                                    ; preds = %263
  %274 = load %struct.file_stat*, %struct.file_stat** %10, align 8, !dbg !929
  %275 = load %struct.fsys_namenode*, %struct.fsys_namenode** %11, align 8, !dbg !930
  %276 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %275, i32 0, i32 4, !dbg !931
  store %struct.file_stat* %274, %struct.file_stat** %276, align 8, !dbg !932
  %277 = load i8*, i8** %8, align 8, !dbg !933
  store i8* %277, i8** %7, align 8, !dbg !934
  br label %111, !dbg !935, !llvm.loop !936

; <label>:278:                                    ; preds = %111
  %279 = load i8*, i8** %5, align 8, !dbg !937
  call void @free(i8* %279) #8, !dbg !938
  %280 = load volatile i32, i32* @onerr_abort, align 4, !dbg !939
  %281 = add nsw i32 %280, -1, !dbg !939
  store volatile i32 %281, i32* @onerr_abort, align 4, !dbg !939
  br label %282, !dbg !940

; <label>:282:                                    ; preds = %278, %88, %81, %54
  ret void, !dbg !941
}

declare i8* @dpkg_db_get_path(i8*) #5

declare %struct._IO_FILE* @fopen(i8*, i8*) #5

; Function Attrs: noreturn
declare void @ohshite(i8*, ...) #4

declare void @setcloexec(i32, i8*) #5

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #3

; Function Attrs: nounwind
declare i32 @fstat(i32, %struct.stat*) #3

declare i32 @fclose(%struct._IO_FILE*) #5

declare void @debug(i32, i8*, ...) #5

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #6

declare %struct.fsys_hash_iter* @fsys_hash_iter_new() #5

declare %struct.fsys_namenode* @fsys_hash_iter_next(%struct.fsys_hash_iter*) #5

declare void @fsys_hash_iter_free(%struct.fsys_hash_iter*) #5

declare i8* @m_malloc(i64) #5

declare i64 @fd_read(i32, i8*, i64) #5

declare i8* @nfmalloc(i64) #5

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) #7

declare i8* @nfstrsave(i8*) #5

declare %struct.fsys_namenode* @fsys_hash_find_node(i8*, i32) #5

; Function Attrs: nounwind
declare void @free(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { noreturn }
attributes #10 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!221, !222}
!llvm.ident = !{!223}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !107, globals: !118)
!1 = !DIFile(filename: "[inter]lib--dpkg--db-fsys-override.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{!3, !8, !17, !21, !31, !41, !52, !61, !72, !78, !91}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "statdb_parse_flags", file: !4, line: 52, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../lib/dpkg/db-fsys.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!5 = !{!6, !7}
!6 = !DIEnumerator(name: "STATDB_PARSE_NORMAL", value: 0)
!7 = !DIEnumerator(name: "STATDB_PARSE_LAX", value: 1)
!8 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgwant", file: !9, line: 153, size: 32, align: 32, elements: !10)
!9 = !DIFile(filename: "../../lib/dpkg/dpkg-db.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!10 = !{!11, !12, !13, !14, !15, !16}
!11 = !DIEnumerator(name: "PKG_WANT_UNKNOWN", value: 0)
!12 = !DIEnumerator(name: "PKG_WANT_INSTALL", value: 1)
!13 = !DIEnumerator(name: "PKG_WANT_HOLD", value: 2)
!14 = !DIEnumerator(name: "PKG_WANT_DEINSTALL", value: 3)
!15 = !DIEnumerator(name: "PKG_WANT_PURGE", value: 4)
!16 = !DIEnumerator(name: "PKG_WANT_SENTINEL", value: 5)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgeflag", file: !9, line: 163, size: 32, align: 32, elements: !18)
!18 = !{!19, !20}
!19 = !DIEnumerator(name: "PKG_EFLAG_OK", value: 0)
!20 = !DIEnumerator(name: "PKG_EFLAG_REINSTREQ", value: 1)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgstatus", file: !9, line: 168, size: 32, align: 32, elements: !22)
!22 = !{!23, !24, !25, !26, !27, !28, !29, !30}
!23 = !DIEnumerator(name: "PKG_STAT_NOTINSTALLED", value: 0)
!24 = !DIEnumerator(name: "PKG_STAT_CONFIGFILES", value: 1)
!25 = !DIEnumerator(name: "PKG_STAT_HALFINSTALLED", value: 2)
!26 = !DIEnumerator(name: "PKG_STAT_UNPACKED", value: 3)
!27 = !DIEnumerator(name: "PKG_STAT_HALFCONFIGURED", value: 4)
!28 = !DIEnumerator(name: "PKG_STAT_TRIGGERSAWAITED", value: 5)
!29 = !DIEnumerator(name: "PKG_STAT_TRIGGERSPENDING", value: 6)
!30 = !DIEnumerator(name: "PKG_STAT_INSTALLED", value: 7)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgpriority", file: !9, line: 179, size: 32, align: 32, elements: !32)
!32 = !{!33, !34, !35, !36, !37, !38, !39, !40}
!33 = !DIEnumerator(name: "PKG_PRIO_REQUIRED", value: 0)
!34 = !DIEnumerator(name: "PKG_PRIO_IMPORTANT", value: 1)
!35 = !DIEnumerator(name: "PKG_PRIO_STANDARD", value: 2)
!36 = !DIEnumerator(name: "PKG_PRIO_OPTIONAL", value: 3)
!37 = !DIEnumerator(name: "PKG_PRIO_EXTRA", value: 4)
!38 = !DIEnumerator(name: "PKG_PRIO_OTHER", value: 5)
!39 = !DIEnumerator(name: "PKG_PRIO_UNKNOWN", value: 6)
!40 = !DIEnumerator(name: "PKG_PRIO_UNSET", value: -1)
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_arch_type", file: !42, line: 37, size: 32, align: 32, elements: !43)
!42 = !DIFile(filename: "../../lib/dpkg/arch.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!43 = !{!44, !45, !46, !47, !48, !49, !50, !51}
!44 = !DIEnumerator(name: "DPKG_ARCH_NONE", value: 0)
!45 = !DIEnumerator(name: "DPKG_ARCH_EMPTY", value: 1)
!46 = !DIEnumerator(name: "DPKG_ARCH_ILLEGAL", value: 2)
!47 = !DIEnumerator(name: "DPKG_ARCH_WILDCARD", value: 3)
!48 = !DIEnumerator(name: "DPKG_ARCH_ALL", value: 4)
!49 = !DIEnumerator(name: "DPKG_ARCH_NATIVE", value: 5)
!50 = !DIEnumerator(name: "DPKG_ARCH_FOREIGN", value: 6)
!51 = !DIEnumerator(name: "DPKG_ARCH_UNKNOWN", value: 7)
!52 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_relation", file: !53, line: 61, size: 32, align: 32, elements: !54)
!53 = !DIFile(filename: "../../lib/dpkg/version.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!54 = !{!55, !56, !57, !58, !59, !60}
!55 = !DIEnumerator(name: "DPKG_RELATION_NONE", value: 0)
!56 = !DIEnumerator(name: "DPKG_RELATION_EQ", value: 1)
!57 = !DIEnumerator(name: "DPKG_RELATION_LT", value: 2)
!58 = !DIEnumerator(name: "DPKG_RELATION_LE", value: 3)
!59 = !DIEnumerator(name: "DPKG_RELATION_GT", value: 4)
!60 = !DIEnumerator(name: "DPKG_RELATION_GE", value: 5)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "deptype", file: !9, line: 44, size: 32, align: 32, elements: !62)
!62 = !{!63, !64, !65, !66, !67, !68, !69, !70, !71}
!63 = !DIEnumerator(name: "dep_suggests", value: 0)
!64 = !DIEnumerator(name: "dep_recommends", value: 1)
!65 = !DIEnumerator(name: "dep_depends", value: 2)
!66 = !DIEnumerator(name: "dep_predepends", value: 3)
!67 = !DIEnumerator(name: "dep_breaks", value: 4)
!68 = !DIEnumerator(name: "dep_conflicts", value: 5)
!69 = !DIEnumerator(name: "dep_provides", value: 6)
!70 = !DIEnumerator(name: "dep_replaces", value: 7)
!71 = !DIEnumerator(name: "dep_enhances", value: 8)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgmultiarch", file: !9, line: 95, size: 32, align: 32, elements: !73)
!73 = !{!74, !75, !76, !77}
!74 = !DIEnumerator(name: "PKG_MULTIARCH_NO", value: 0)
!75 = !DIEnumerator(name: "PKG_MULTIARCH_SAME", value: 1)
!76 = !DIEnumerator(name: "PKG_MULTIARCH_ALLOWED", value: 2)
!77 = !DIEnumerator(name: "PKG_MULTIARCH_FOREIGN", value: 3)
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
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "debugflags", file: !92, line: 41, size: 32, align: 32, elements: !93)
!92 = !DIFile(filename: "../../lib/dpkg/debug.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!93 = !{!94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106}
!94 = !DIEnumerator(name: "dbg_general", value: 1)
!95 = !DIEnumerator(name: "dbg_scripts", value: 2)
!96 = !DIEnumerator(name: "dbg_eachfile", value: 8)
!97 = !DIEnumerator(name: "dbg_eachfiledetail", value: 64)
!98 = !DIEnumerator(name: "dbg_conff", value: 16)
!99 = !DIEnumerator(name: "dbg_conffdetail", value: 128)
!100 = !DIEnumerator(name: "dbg_depcon", value: 32)
!101 = !DIEnumerator(name: "dbg_depcondetail", value: 256)
!102 = !DIEnumerator(name: "dbg_veryverbose", value: 512)
!103 = !DIEnumerator(name: "dbg_stupidlyverbose", value: 1024)
!104 = !DIEnumerator(name: "dbg_triggers", value: 4096)
!105 = !DIEnumerator(name: "dbg_triggersdetail", value: 8192)
!106 = !DIEnumerator(name: "dbg_triggersstupid", value: 16384)
!107 = !{!108, !113, !114, !116}
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !109, line: 80, baseType: !110)
!109 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !111, line: 125, baseType: !112)
!111 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!112 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !109, line: 65, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !111, line: 126, baseType: !112)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !109, line: 70, baseType: !117)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !111, line: 129, baseType: !112)
!118 = !{!119, !162, !220}
!119 = distinct !DIGlobalVariable(name: "sb_prev", scope: !120, file: !121, line: 114, type: !125, isLocal: true, isDefinition: true, variable: %struct.stat* @ensure_statoverrides.sb_prev)
!120 = distinct !DISubprogram(name: "ensure_statoverrides", scope: !121, file: !121, line: 112, type: !122, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !124)
!121 = !DIFile(filename: "db-fsys-override.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!122 = !DISubroutineType(types: !123)
!123 = !{null, !3}
!124 = !{}
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !126, line: 46, size: 1152, align: 64, elements: !127)
!126 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!127 = !{!128, !131, !133, !135, !136, !137, !138, !140, !141, !144, !146, !148, !156, !157, !158}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !125, file: !126, line: 48, baseType: !129, size: 64, align: 64)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !111, line: 124, baseType: !130)
!130 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !125, file: !126, line: 53, baseType: !132, size: 64, align: 64, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !111, line: 127, baseType: !130)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !125, file: !126, line: 61, baseType: !134, size: 64, align: 64, offset: 128)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !111, line: 130, baseType: !130)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !125, file: !126, line: 62, baseType: !117, size: 32, align: 32, offset: 192)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !125, file: !126, line: 64, baseType: !110, size: 32, align: 32, offset: 224)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !125, file: !126, line: 65, baseType: !115, size: 32, align: 32, offset: 256)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !125, file: !126, line: 67, baseType: !139, size: 32, align: 32, offset: 288)
!139 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !125, file: !126, line: 69, baseType: !129, size: 64, align: 64, offset: 320)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !125, file: !126, line: 74, baseType: !142, size: 64, align: 64, offset: 384)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !111, line: 131, baseType: !143)
!143 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !125, file: !126, line: 78, baseType: !145, size: 64, align: 64, offset: 448)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !111, line: 153, baseType: !143)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !125, file: !126, line: 80, baseType: !147, size: 64, align: 64, offset: 512)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !111, line: 158, baseType: !143)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !125, file: !126, line: 91, baseType: !149, size: 128, align: 64, offset: 576)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !150, line: 120, size: 128, align: 64, elements: !151)
!150 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!151 = !{!152, !154}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !149, file: !150, line: 122, baseType: !153, size: 64, align: 64)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !111, line: 139, baseType: !143)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !149, file: !150, line: 123, baseType: !155, size: 64, align: 64, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !111, line: 175, baseType: !143)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !125, file: !126, line: 92, baseType: !149, size: 128, align: 64, offset: 704)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !125, file: !126, line: 93, baseType: !149, size: 128, align: 64, offset: 832)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !125, file: !126, line: 106, baseType: !159, size: 192, align: 64, offset: 960)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 192, align: 64, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 3)
!162 = distinct !DIGlobalVariable(name: "file_prev", scope: !120, file: !121, line: 116, type: !163, isLocal: true, isDefinition: true, variable: %struct._IO_FILE** @ensure_statoverrides.file_prev)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64, align: 64)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !165, line: 48, baseType: !166)
!165 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !167, line: 241, size: 1728, align: 64, elements: !168)
!167 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!168 = !{!169, !170, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !191, !192, !193, !194, !195, !197, !199, !203, !206, !208, !209, !210, !211, !212, !215, !216}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !166, file: !167, line: 242, baseType: !139, size: 32, align: 32)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !166, file: !167, line: 247, baseType: !171, size: 64, align: 64, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64, align: 64)
!172 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !166, file: !167, line: 248, baseType: !171, size: 64, align: 64, offset: 128)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !166, file: !167, line: 249, baseType: !171, size: 64, align: 64, offset: 192)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !166, file: !167, line: 250, baseType: !171, size: 64, align: 64, offset: 256)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !166, file: !167, line: 251, baseType: !171, size: 64, align: 64, offset: 320)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !166, file: !167, line: 252, baseType: !171, size: 64, align: 64, offset: 384)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !166, file: !167, line: 253, baseType: !171, size: 64, align: 64, offset: 448)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !166, file: !167, line: 254, baseType: !171, size: 64, align: 64, offset: 512)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !166, file: !167, line: 256, baseType: !171, size: 64, align: 64, offset: 576)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !166, file: !167, line: 257, baseType: !171, size: 64, align: 64, offset: 640)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !166, file: !167, line: 258, baseType: !171, size: 64, align: 64, offset: 704)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !166, file: !167, line: 260, baseType: !184, size: 64, align: 64, offset: 768)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64, align: 64)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !167, line: 156, size: 192, align: 64, elements: !186)
!186 = !{!187, !188, !190}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !185, file: !167, line: 157, baseType: !184, size: 64, align: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !185, file: !167, line: 158, baseType: !189, size: 64, align: 64, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64, align: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !185, file: !167, line: 162, baseType: !139, size: 32, align: 32, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !166, file: !167, line: 262, baseType: !189, size: 64, align: 64, offset: 832)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !166, file: !167, line: 264, baseType: !139, size: 32, align: 32, offset: 896)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !166, file: !167, line: 268, baseType: !139, size: 32, align: 32, offset: 928)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !166, file: !167, line: 270, baseType: !142, size: 64, align: 64, offset: 960)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !166, file: !167, line: 274, baseType: !196, size: 16, align: 16, offset: 1024)
!196 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !166, file: !167, line: 275, baseType: !198, size: 8, align: 8, offset: 1040)
!198 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !166, file: !167, line: 276, baseType: !200, size: 8, align: 8, offset: 1048)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 8, align: 8, elements: !201)
!201 = !{!202}
!202 = !DISubrange(count: 1)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !166, file: !167, line: 280, baseType: !204, size: 64, align: 64, offset: 1088)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64, align: 64)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !167, line: 150, baseType: null)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !166, file: !167, line: 289, baseType: !207, size: 64, align: 64, offset: 1152)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !111, line: 132, baseType: !143)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !166, file: !167, line: 297, baseType: !113, size: 64, align: 64, offset: 1216)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !166, file: !167, line: 298, baseType: !113, size: 64, align: 64, offset: 1280)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !166, file: !167, line: 299, baseType: !113, size: 64, align: 64, offset: 1344)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !166, file: !167, line: 300, baseType: !113, size: 64, align: 64, offset: 1408)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !166, file: !167, line: 302, baseType: !213, size: 64, align: 64, offset: 1472)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !214, line: 216, baseType: !130)
!214 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !166, file: !167, line: 303, baseType: !139, size: 32, align: 32, offset: 1536)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !166, file: !167, line: 305, baseType: !217, size: 160, align: 8, offset: 1568)
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 160, align: 8, elements: !218)
!218 = !{!219}
!219 = !DISubrange(count: 20)
!220 = distinct !DIGlobalVariable(name: "statoverridename", scope: !0, file: !121, line: 44, type: !171, isLocal: true, isDefinition: true, variable: i8** @statoverridename)
!221 = !{i32 2, !"Dwarf Version", i32 4}
!222 = !{i32 2, !"Debug Info Version", i32 3}
!223 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!224 = distinct !DISubprogram(name: "statdb_parse_uid", scope: !121, file: !121, line: 47, type: !225, isLocal: false, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !124)
!225 = !DISubroutineType(types: !226)
!226 = !{!108, !227}
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64, align: 64)
!228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !172)
!229 = !DILocalVariable(name: "str", arg: 1, scope: !224, file: !121, line: 47, type: !227)
!230 = !DIExpression()
!231 = !DILocation(line: 47, column: 30, scope: !224)
!232 = !DILocalVariable(name: "endptr", scope: !224, file: !121, line: 49, type: !171)
!233 = !DILocation(line: 49, column: 8, scope: !224)
!234 = !DILocalVariable(name: "uid", scope: !224, file: !121, line: 50, type: !108)
!235 = !DILocation(line: 50, column: 8, scope: !224)
!236 = !DILocation(line: 52, column: 6, scope: !237)
!237 = distinct !DILexicalBlock(scope: !224, file: !121, line: 52, column: 6)
!238 = !DILocation(line: 52, column: 13, scope: !237)
!239 = !DILocation(line: 52, column: 6, scope: !224)
!240 = !DILocalVariable(name: "value", scope: !241, file: !121, line: 53, type: !143)
!241 = distinct !DILexicalBlock(scope: !237, file: !121, line: 52, column: 21)
!242 = !DILocation(line: 53, column: 12, scope: !241)
!243 = !DILocation(line: 55, column: 4, scope: !241)
!244 = !DILocation(line: 55, column: 8, scope: !241)
!245 = !DILocation(line: 56, column: 18, scope: !241)
!246 = !DILocation(line: 56, column: 22, scope: !241)
!247 = !DILocation(line: 56, column: 11, scope: !241)
!248 = !DILocation(line: 56, column: 9, scope: !241)
!249 = !DILocation(line: 57, column: 7, scope: !250)
!250 = distinct !DILexicalBlock(scope: !241, file: !121, line: 57, column: 7)
!251 = !DILocation(line: 57, column: 11, scope: !250)
!252 = !DILocation(line: 57, column: 18, scope: !250)
!253 = !DILocation(line: 57, column: 15, scope: !250)
!254 = !DILocation(line: 57, column: 25, scope: !250)
!255 = !DILocation(line: 57, column: 29, scope: !256)
!256 = !DILexicalBlockFile(scope: !250, file: !121, discriminator: 1)
!257 = !DILocation(line: 57, column: 28, scope: !256)
!258 = !DILocation(line: 57, column: 36, scope: !256)
!259 = !DILocation(line: 57, column: 39, scope: !260)
!260 = !DILexicalBlockFile(scope: !250, file: !121, discriminator: 2)
!261 = !DILocation(line: 57, column: 45, scope: !260)
!262 = !DILocation(line: 57, column: 49, scope: !260)
!263 = !DILocation(line: 57, column: 53, scope: !264)
!264 = !DILexicalBlockFile(scope: !250, file: !121, discriminator: 3)
!265 = !DILocation(line: 57, column: 52, scope: !264)
!266 = !DILocation(line: 57, column: 57, scope: !264)
!267 = !DILocation(line: 57, column: 7, scope: !264)
!268 = !DILocation(line: 58, column: 10, scope: !250)
!269 = !DILocation(line: 58, column: 44, scope: !250)
!270 = !DILocation(line: 58, column: 4, scope: !256)
!271 = !DILocation(line: 58, column: 4, scope: !250)
!272 = !DILocation(line: 59, column: 16, scope: !241)
!273 = !DILocation(line: 59, column: 9, scope: !241)
!274 = !DILocation(line: 59, column: 7, scope: !241)
!275 = !DILocation(line: 60, column: 2, scope: !241)
!276 = !DILocalVariable(name: "pw", scope: !277, file: !121, line: 61, type: !278)
!277 = distinct !DILexicalBlock(scope: !237, file: !121, line: 60, column: 9)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64, align: 64)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !280, line: 49, size: 384, align: 64, elements: !281)
!280 = !DIFile(filename: "/usr/include/pwd.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!281 = !{!282, !283, !284, !285, !286, !287, !288}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !279, file: !280, line: 51, baseType: !171, size: 64, align: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !279, file: !280, line: 52, baseType: !171, size: 64, align: 64, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !279, file: !280, line: 53, baseType: !110, size: 32, align: 32, offset: 128)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !279, file: !280, line: 54, baseType: !115, size: 32, align: 32, offset: 160)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !279, file: !280, line: 55, baseType: !171, size: 64, align: 64, offset: 192)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !279, file: !280, line: 56, baseType: !171, size: 64, align: 64, offset: 256)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !279, file: !280, line: 57, baseType: !171, size: 64, align: 64, offset: 320)
!289 = !DILocation(line: 61, column: 18, scope: !277)
!290 = !DILocation(line: 61, column: 32, scope: !277)
!291 = !DILocation(line: 61, column: 23, scope: !277)
!292 = !DILocation(line: 63, column: 7, scope: !293)
!293 = distinct !DILexicalBlock(scope: !277, file: !121, line: 63, column: 7)
!294 = !DILocation(line: 63, column: 10, scope: !293)
!295 = !DILocation(line: 63, column: 7, scope: !277)
!296 = !DILocation(line: 64, column: 8, scope: !293)
!297 = !DILocation(line: 64, column: 4, scope: !293)
!298 = !DILocation(line: 66, column: 10, scope: !293)
!299 = !DILocation(line: 66, column: 14, scope: !293)
!300 = !DILocation(line: 66, column: 8, scope: !293)
!301 = !DILocation(line: 69, column: 9, scope: !224)
!302 = !DILocation(line: 69, column: 2, scope: !224)
!303 = distinct !DISubprogram(name: "statdb_parse_gid", scope: !121, file: !121, line: 73, type: !304, isLocal: false, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !124)
!304 = !DISubroutineType(types: !305)
!305 = !{!114, !227}
!306 = !DILocalVariable(name: "str", arg: 1, scope: !303, file: !121, line: 73, type: !227)
!307 = !DILocation(line: 73, column: 30, scope: !303)
!308 = !DILocalVariable(name: "endptr", scope: !303, file: !121, line: 75, type: !171)
!309 = !DILocation(line: 75, column: 8, scope: !303)
!310 = !DILocalVariable(name: "gid", scope: !303, file: !121, line: 76, type: !114)
!311 = !DILocation(line: 76, column: 8, scope: !303)
!312 = !DILocation(line: 78, column: 6, scope: !313)
!313 = distinct !DILexicalBlock(scope: !303, file: !121, line: 78, column: 6)
!314 = !DILocation(line: 78, column: 13, scope: !313)
!315 = !DILocation(line: 78, column: 6, scope: !303)
!316 = !DILocalVariable(name: "value", scope: !317, file: !121, line: 79, type: !143)
!317 = distinct !DILexicalBlock(scope: !313, file: !121, line: 78, column: 21)
!318 = !DILocation(line: 79, column: 12, scope: !317)
!319 = !DILocation(line: 81, column: 4, scope: !317)
!320 = !DILocation(line: 81, column: 8, scope: !317)
!321 = !DILocation(line: 82, column: 18, scope: !317)
!322 = !DILocation(line: 82, column: 22, scope: !317)
!323 = !DILocation(line: 82, column: 11, scope: !317)
!324 = !DILocation(line: 82, column: 9, scope: !317)
!325 = !DILocation(line: 83, column: 7, scope: !326)
!326 = distinct !DILexicalBlock(scope: !317, file: !121, line: 83, column: 7)
!327 = !DILocation(line: 83, column: 11, scope: !326)
!328 = !DILocation(line: 83, column: 18, scope: !326)
!329 = !DILocation(line: 83, column: 15, scope: !326)
!330 = !DILocation(line: 83, column: 25, scope: !326)
!331 = !DILocation(line: 83, column: 29, scope: !332)
!332 = !DILexicalBlockFile(scope: !326, file: !121, discriminator: 1)
!333 = !DILocation(line: 83, column: 28, scope: !332)
!334 = !DILocation(line: 83, column: 36, scope: !332)
!335 = !DILocation(line: 83, column: 39, scope: !336)
!336 = !DILexicalBlockFile(scope: !326, file: !121, discriminator: 2)
!337 = !DILocation(line: 83, column: 45, scope: !336)
!338 = !DILocation(line: 83, column: 49, scope: !336)
!339 = !DILocation(line: 83, column: 53, scope: !340)
!340 = !DILexicalBlockFile(scope: !326, file: !121, discriminator: 3)
!341 = !DILocation(line: 83, column: 52, scope: !340)
!342 = !DILocation(line: 83, column: 57, scope: !340)
!343 = !DILocation(line: 83, column: 7, scope: !340)
!344 = !DILocation(line: 84, column: 10, scope: !326)
!345 = !DILocation(line: 84, column: 44, scope: !326)
!346 = !DILocation(line: 84, column: 4, scope: !332)
!347 = !DILocation(line: 84, column: 4, scope: !326)
!348 = !DILocation(line: 85, column: 16, scope: !317)
!349 = !DILocation(line: 85, column: 9, scope: !317)
!350 = !DILocation(line: 85, column: 7, scope: !317)
!351 = !DILocation(line: 86, column: 2, scope: !317)
!352 = !DILocalVariable(name: "gr", scope: !353, file: !121, line: 87, type: !354)
!353 = distinct !DILexicalBlock(scope: !313, file: !121, line: 86, column: 9)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64, align: 64)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !356, line: 42, size: 256, align: 64, elements: !357)
!356 = !DIFile(filename: "/usr/include/grp.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!357 = !{!358, !359, !360, !361}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !355, file: !356, line: 44, baseType: !171, size: 64, align: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !355, file: !356, line: 45, baseType: !171, size: 64, align: 64, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !355, file: !356, line: 46, baseType: !115, size: 32, align: 32, offset: 128)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !355, file: !356, line: 47, baseType: !362, size: 64, align: 64, offset: 192)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64, align: 64)
!363 = !DILocation(line: 87, column: 17, scope: !353)
!364 = !DILocation(line: 87, column: 31, scope: !353)
!365 = !DILocation(line: 87, column: 22, scope: !353)
!366 = !DILocation(line: 89, column: 7, scope: !367)
!367 = distinct !DILexicalBlock(scope: !353, file: !121, line: 89, column: 7)
!368 = !DILocation(line: 89, column: 10, scope: !367)
!369 = !DILocation(line: 89, column: 7, scope: !353)
!370 = !DILocation(line: 90, column: 8, scope: !367)
!371 = !DILocation(line: 90, column: 4, scope: !367)
!372 = !DILocation(line: 92, column: 10, scope: !367)
!373 = !DILocation(line: 92, column: 14, scope: !367)
!374 = !DILocation(line: 92, column: 8, scope: !367)
!375 = !DILocation(line: 95, column: 9, scope: !303)
!376 = !DILocation(line: 95, column: 2, scope: !303)
!377 = distinct !DISubprogram(name: "statdb_parse_mode", scope: !121, file: !121, line: 99, type: !378, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !124)
!378 = !DISubroutineType(types: !379)
!379 = !{!116, !227}
!380 = !DILocalVariable(name: "str", arg: 1, scope: !377, file: !121, line: 99, type: !227)
!381 = !DILocation(line: 99, column: 31, scope: !377)
!382 = !DILocalVariable(name: "endptr", scope: !377, file: !121, line: 101, type: !171)
!383 = !DILocation(line: 101, column: 8, scope: !377)
!384 = !DILocalVariable(name: "mode", scope: !377, file: !121, line: 102, type: !143)
!385 = !DILocation(line: 102, column: 11, scope: !377)
!386 = !DILocation(line: 104, column: 16, scope: !377)
!387 = !DILocation(line: 104, column: 9, scope: !377)
!388 = !DILocation(line: 104, column: 7, scope: !377)
!389 = !DILocation(line: 105, column: 6, scope: !390)
!390 = distinct !DILexicalBlock(scope: !377, file: !121, line: 105, column: 6)
!391 = !DILocation(line: 105, column: 13, scope: !390)
!392 = !DILocation(line: 105, column: 10, scope: !390)
!393 = !DILocation(line: 105, column: 20, scope: !390)
!394 = !DILocation(line: 105, column: 24, scope: !395)
!395 = !DILexicalBlockFile(scope: !390, file: !121, discriminator: 1)
!396 = !DILocation(line: 105, column: 23, scope: !395)
!397 = !DILocation(line: 105, column: 31, scope: !395)
!398 = !DILocation(line: 105, column: 34, scope: !399)
!399 = !DILexicalBlockFile(scope: !390, file: !121, discriminator: 2)
!400 = !DILocation(line: 105, column: 39, scope: !399)
!401 = !DILocation(line: 105, column: 43, scope: !399)
!402 = !DILocation(line: 105, column: 46, scope: !403)
!403 = !DILexicalBlockFile(scope: !390, file: !121, discriminator: 3)
!404 = !DILocation(line: 105, column: 51, scope: !403)
!405 = !DILocation(line: 105, column: 6, scope: !403)
!406 = !DILocation(line: 106, column: 9, scope: !390)
!407 = !DILocation(line: 106, column: 44, scope: !390)
!408 = !DILocation(line: 106, column: 3, scope: !395)
!409 = !DILocation(line: 106, column: 3, scope: !390)
!410 = !DILocation(line: 108, column: 17, scope: !377)
!411 = !DILocation(line: 108, column: 9, scope: !377)
!412 = !DILocation(line: 108, column: 2, scope: !377)
!413 = !DILocalVariable(name: "flags", arg: 1, scope: !120, file: !121, line: 112, type: !3)
!414 = !DILocation(line: 112, column: 46, scope: !120)
!415 = !DILocalVariable(name: "sb_next", scope: !120, file: !121, line: 115, type: !125)
!416 = !DILocation(line: 115, column: 14, scope: !120)
!417 = !DILocalVariable(name: "file", scope: !120, file: !121, line: 117, type: !163)
!418 = !DILocation(line: 117, column: 8, scope: !120)
!419 = !DILocalVariable(name: "loaded_list", scope: !120, file: !121, line: 118, type: !171)
!420 = !DILocation(line: 118, column: 8, scope: !120)
!421 = !DILocalVariable(name: "loaded_list_end", scope: !120, file: !121, line: 118, type: !171)
!422 = !DILocation(line: 118, column: 22, scope: !120)
!423 = !DILocalVariable(name: "thisline", scope: !120, file: !121, line: 118, type: !171)
!424 = !DILocation(line: 118, column: 40, scope: !120)
!425 = !DILocalVariable(name: "nextline", scope: !120, file: !121, line: 118, type: !171)
!426 = !DILocation(line: 118, column: 51, scope: !120)
!427 = !DILocalVariable(name: "ptr", scope: !120, file: !121, line: 118, type: !171)
!428 = !DILocation(line: 118, column: 62, scope: !120)
!429 = !DILocalVariable(name: "fso", scope: !120, file: !121, line: 119, type: !430)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64, align: 64)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_stat", file: !432, line: 40, size: 256, align: 64, elements: !433)
!432 = !DIFile(filename: "../../lib/dpkg/file.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!433 = !{!434, !435, !436, !437, !438}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !431, file: !432, line: 41, baseType: !108, size: 32, align: 32)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !431, file: !432, line: 42, baseType: !114, size: 32, align: 32, offset: 32)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !431, file: !432, line: 43, baseType: !116, size: 32, align: 32, offset: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "uname", scope: !431, file: !432, line: 47, baseType: !171, size: 64, align: 64, offset: 128)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !431, file: !432, line: 48, baseType: !171, size: 64, align: 64, offset: 192)
!439 = !DILocation(line: 119, column: 20, scope: !120)
!440 = !DILocalVariable(name: "fnn", scope: !120, file: !121, line: 120, type: !441)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64, align: 64)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode", file: !79, line: 90, size: 640, align: 64, elements: !443)
!443 = !{!444, !445, !446, !449, !591, !592, !595, !596, !597, !598}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !442, file: !79, line: 91, baseType: !441, size: 64, align: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !442, file: !79, line: 92, baseType: !227, size: 64, align: 64, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "packages", scope: !442, file: !79, line: 93, baseType: !447, size: 64, align: 64, offset: 128)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64, align: 64)
!448 = !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_list", file: !79, line: 93, flags: DIFlagFwdDecl)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "divert", scope: !442, file: !79, line: 94, baseType: !450, size: 64, align: 64, offset: 192)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64, align: 64)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_diversion", file: !79, line: 151, size: 256, align: 64, elements: !452)
!452 = !{!453, !454, !455, !590}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "useinstead", scope: !451, file: !79, line: 152, baseType: !441, size: 64, align: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "camefrom", scope: !451, file: !79, line: 153, baseType: !441, size: 64, align: 64, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "pkgset", scope: !451, file: !79, line: 154, baseType: !456, size: 64, align: 64, offset: 128)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64, align: 64)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgset", file: !9, line: 242, size: 3392, align: 64, elements: !458)
!458 = !{!459, !460, !461, !584, !589}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !457, file: !9, line: 243, baseType: !456, size: 64, align: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !457, file: !9, line: 244, baseType: !227, size: 64, align: 64, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !457, file: !9, line: 245, baseType: !462, size: 3072, align: 64, offset: 128)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkginfo", file: !9, line: 195, size: 3072, align: 64, elements: !463)
!463 = !{!464, !465, !467, !468, !469, !470, !471, !472, !473, !479, !538, !539, !542, !551, !567, !568, !574, !580, !582, !583}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !462, file: !9, line: 196, baseType: !456, size: 64, align: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "arch_next", scope: !462, file: !9, line: 197, baseType: !466, size: 64, align: 64, offset: 64)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64, align: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "want", scope: !462, file: !9, line: 199, baseType: !8, size: 32, align: 32, offset: 128)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "eflag", scope: !462, file: !9, line: 201, baseType: !17, size: 32, align: 32, offset: 160)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !462, file: !9, line: 202, baseType: !21, size: 32, align: 32, offset: 192)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !462, file: !9, line: 203, baseType: !31, size: 32, align: 32, offset: 224)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "otherpriority", scope: !462, file: !9, line: 204, baseType: !227, size: 64, align: 64, offset: 256)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "section", scope: !462, file: !9, line: 205, baseType: !227, size: 64, align: 64, offset: 320)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "configversion", scope: !462, file: !9, line: 206, baseType: !474, size: 192, align: 64, offset: 384)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_version", file: !53, line: 42, size: 192, align: 64, elements: !475)
!475 = !{!476, !477, !478}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !474, file: !53, line: 44, baseType: !112, size: 32, align: 32)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !474, file: !53, line: 46, baseType: !227, size: 64, align: 64, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !474, file: !53, line: 48, baseType: !227, size: 64, align: 64, offset: 128)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !462, file: !9, line: 207, baseType: !480, size: 960, align: 64, offset: 576)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgbin", file: !9, line: 107, size: 960, align: 64, elements: !481)
!481 = !{!482, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !531}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "depends", scope: !480, file: !9, line: 108, baseType: !483, size: 64, align: 64)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64, align: 64)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dependency", file: !9, line: 56, size: 256, align: 64, elements: !485)
!485 = !{!486, !487, !488, !511}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !484, file: !9, line: 57, baseType: !466, size: 64, align: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !484, file: !9, line: 58, baseType: !483, size: 64, align: 64, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !484, file: !9, line: 59, baseType: !489, size: 64, align: 64, offset: 128)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64, align: 64)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "deppossi", file: !9, line: 63, size: 640, align: 64, elements: !491)
!491 = !{!492, !493, !494, !495, !496, !497, !506, !507, !508, !510}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !490, file: !9, line: 64, baseType: !483, size: 64, align: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "ed", scope: !490, file: !9, line: 65, baseType: !456, size: 64, align: 64, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !490, file: !9, line: 66, baseType: !489, size: 64, align: 64, offset: 128)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "rev_next", scope: !490, file: !9, line: 66, baseType: !489, size: 64, align: 64, offset: 192)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "rev_prev", scope: !490, file: !9, line: 66, baseType: !489, size: 64, align: 64, offset: 256)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !490, file: !9, line: 67, baseType: !498, size: 64, align: 64, offset: 320)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64, align: 64)
!499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !500)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_arch", file: !42, line: 48, size: 192, align: 64, elements: !501)
!501 = !{!502, !504, !505}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !500, file: !42, line: 49, baseType: !503, size: 64, align: 64)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64, align: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !500, file: !42, line: 50, baseType: !227, size: 64, align: 64, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !500, file: !42, line: 51, baseType: !41, size: 32, align: 32, offset: 128)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !490, file: !9, line: 68, baseType: !474, size: 192, align: 64, offset: 384)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "verrel", scope: !490, file: !9, line: 69, baseType: !52, size: 32, align: 32, offset: 576)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "arch_is_implicit", scope: !490, file: !9, line: 70, baseType: !509, size: 8, align: 8, offset: 608)
!509 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "cyclebreak", scope: !490, file: !9, line: 71, baseType: !509, size: 8, align: 8, offset: 616)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !484, file: !9, line: 60, baseType: !61, size: 32, align: 32, offset: 192)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "essential", scope: !480, file: !9, line: 110, baseType: !509, size: 8, align: 8, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "multiarch", scope: !480, file: !9, line: 111, baseType: !72, size: 32, align: 32, offset: 96)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !480, file: !9, line: 112, baseType: !498, size: 64, align: 64, offset: 128)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "pkgname_archqual", scope: !480, file: !9, line: 115, baseType: !227, size: 64, align: 64, offset: 192)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !480, file: !9, line: 116, baseType: !227, size: 64, align: 64, offset: 256)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "maintainer", scope: !480, file: !9, line: 117, baseType: !227, size: 64, align: 64, offset: 320)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !480, file: !9, line: 118, baseType: !227, size: 64, align: 64, offset: 384)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "installedsize", scope: !480, file: !9, line: 119, baseType: !227, size: 64, align: 64, offset: 448)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !480, file: !9, line: 120, baseType: !227, size: 64, align: 64, offset: 512)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "bugs", scope: !480, file: !9, line: 121, baseType: !227, size: 64, align: 64, offset: 576)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !480, file: !9, line: 122, baseType: !474, size: 192, align: 64, offset: 640)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "conffiles", scope: !480, file: !9, line: 123, baseType: !524, size: 64, align: 64, offset: 832)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64, align: 64)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conffile", file: !9, line: 80, size: 256, align: 64, elements: !526)
!526 = !{!527, !528, !529, !530}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !525, file: !9, line: 81, baseType: !524, size: 64, align: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !525, file: !9, line: 82, baseType: !227, size: 64, align: 64, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !525, file: !9, line: 83, baseType: !227, size: 64, align: 64, offset: 128)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "obsolete", scope: !525, file: !9, line: 84, baseType: !509, size: 8, align: 8, offset: 192)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "arbs", scope: !480, file: !9, line: 124, baseType: !532, size: 64, align: 64, offset: 896)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64, align: 64)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arbitraryfield", file: !9, line: 74, size: 192, align: 64, elements: !534)
!534 = !{!535, !536, !537}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !533, file: !9, line: 75, baseType: !532, size: 64, align: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !533, file: !9, line: 76, baseType: !227, size: 64, align: 64, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !533, file: !9, line: 77, baseType: !227, size: 64, align: 64, offset: 128)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !462, file: !9, line: 208, baseType: !480, size: 960, align: 64, offset: 1536)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "clientdata", scope: !462, file: !9, line: 209, baseType: !540, size: 64, align: 64, offset: 2496)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64, align: 64)
!541 = !DICompositeType(tag: DW_TAG_structure_type, name: "perpackagestate", file: !9, line: 151, flags: DIFlagFwdDecl)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "archives", scope: !462, file: !9, line: 211, baseType: !543, size: 64, align: 64, offset: 2560)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64, align: 64)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archivedetails", file: !9, line: 87, size: 320, align: 64, elements: !545)
!545 = !{!546, !547, !548, !549, !550}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !544, file: !9, line: 88, baseType: !543, size: 64, align: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !544, file: !9, line: 89, baseType: !227, size: 64, align: 64, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "msdosname", scope: !544, file: !9, line: 90, baseType: !227, size: 64, align: 64, offset: 128)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !544, file: !9, line: 91, baseType: !227, size: 64, align: 64, offset: 192)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "md5sum", scope: !544, file: !9, line: 92, baseType: !227, size: 64, align: 64, offset: 256)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "trigaw", scope: !462, file: !9, line: 216, baseType: !552, size: 128, align: 64, offset: 2624)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !462, file: !9, line: 213, size: 128, align: 64, elements: !553)
!553 = !{!554, !566}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !552, file: !9, line: 215, baseType: !555, size: 64, align: 64)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64, align: 64)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigaw", file: !9, line: 142, size: 320, align: 64, elements: !557)
!557 = !{!558, !559, !560, !561}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "aw", scope: !556, file: !9, line: 143, baseType: !466, size: 64, align: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "pend", scope: !556, file: !9, line: 143, baseType: !466, size: 64, align: 64, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "samepend_next", scope: !556, file: !9, line: 144, baseType: !555, size: 64, align: 64, offset: 128)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "sameaw", scope: !556, file: !9, line: 147, baseType: !562, size: 128, align: 64, offset: 192)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !556, file: !9, line: 145, size: 128, align: 64, elements: !563)
!563 = !{!564, !565}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !562, file: !9, line: 146, baseType: !555, size: 64, align: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !562, file: !9, line: 146, baseType: !555, size: 64, align: 64, offset: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !552, file: !9, line: 215, baseType: !555, size: 64, align: 64, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "othertrigaw_head", scope: !462, file: !9, line: 219, baseType: !555, size: 64, align: 64, offset: 2752)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "trigpend_head", scope: !462, file: !9, line: 220, baseType: !569, size: 64, align: 64, offset: 2816)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64, align: 64)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigpend", file: !9, line: 134, size: 128, align: 64, elements: !571)
!571 = !{!572, !573}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !570, file: !9, line: 135, baseType: !569, size: 64, align: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !570, file: !9, line: 136, baseType: !227, size: 64, align: 64, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !462, file: !9, line: 231, baseType: !575, size: 64, align: 64, offset: 2880)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64, align: 64)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode_list", file: !79, line: 122, size: 128, align: 64, elements: !577)
!577 = !{!578, !579}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !576, file: !79, line: 123, baseType: !575, size: 64, align: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "namenode", scope: !576, file: !79, line: 124, baseType: !441, size: 64, align: 64, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_phys_offs", scope: !462, file: !9, line: 232, baseType: !581, size: 64, align: 64, offset: 2944)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !109, line: 86, baseType: !142)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_valid", scope: !462, file: !9, line: 233, baseType: !509, size: 8, align: 8, offset: 3008)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "status_dirty", scope: !462, file: !9, line: 236, baseType: !509, size: 8, align: 8, offset: 3016)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "depended", scope: !457, file: !9, line: 249, baseType: !585, size: 128, align: 64, offset: 3200)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !457, file: !9, line: 246, size: 128, align: 64, elements: !586)
!586 = !{!587, !588}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !585, file: !9, line: 247, baseType: !489, size: 64, align: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !585, file: !9, line: 248, baseType: !489, size: 64, align: 64, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "installed_instances", scope: !457, file: !9, line: 250, baseType: !139, size: 32, align: 32, offset: 3328)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !451, file: !79, line: 157, baseType: !450, size: 64, align: 64, offset: 192)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "statoverride", scope: !442, file: !79, line: 101, baseType: !430, size: 64, align: 64, offset: 256)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "trig_interested", scope: !442, file: !79, line: 103, baseType: !593, size: 64, align: 64, offset: 320)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64, align: 64)
!594 = !DICompositeType(tag: DW_TAG_structure_type, name: "trigfileint", file: !79, line: 103, flags: DIFlagFwdDecl)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !442, file: !79, line: 111, baseType: !78, size: 32, align: 32, offset: 384)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "oldhash", scope: !442, file: !79, line: 114, baseType: !227, size: 64, align: 64, offset: 448)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "newhash", scope: !442, file: !79, line: 117, baseType: !227, size: 64, align: 64, offset: 512)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "file_ondisk_id", scope: !442, file: !79, line: 119, baseType: !599, size: 64, align: 64, offset: 576)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64, align: 64)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ondisk_id", file: !79, line: 85, size: 128, align: 64, elements: !601)
!601 = !{!602, !604}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "id_dev", scope: !600, file: !79, line: 86, baseType: !603, size: 64, align: 64)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !109, line: 60, baseType: !129)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "id_ino", scope: !600, file: !79, line: 87, baseType: !605, size: 64, align: 64, offset: 64)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !109, line: 48, baseType: !132)
!606 = !DILocation(line: 120, column: 24, scope: !120)
!607 = !DILocalVariable(name: "iter", scope: !120, file: !121, line: 121, type: !608)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64, align: 64)
!609 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_hash_iter", file: !79, line: 177, flags: DIFlagFwdDecl)
!610 = !DILocation(line: 121, column: 25, scope: !120)
!611 = !DILocation(line: 123, column: 6, scope: !612)
!612 = distinct !DILexicalBlock(scope: !120, file: !121, line: 123, column: 6)
!613 = !DILocation(line: 123, column: 23, scope: !612)
!614 = !DILocation(line: 123, column: 6, scope: !120)
!615 = !DILocation(line: 124, column: 22, scope: !612)
!616 = !DILocation(line: 124, column: 20, scope: !612)
!617 = !DILocation(line: 124, column: 3, scope: !612)
!618 = !DILocation(line: 126, column: 13, scope: !120)
!619 = !DILocation(line: 128, column: 15, scope: !120)
!620 = !DILocation(line: 128, column: 9, scope: !120)
!621 = !DILocation(line: 128, column: 7, scope: !120)
!622 = !DILocation(line: 129, column: 7, scope: !623)
!623 = distinct !DILexicalBlock(scope: !120, file: !121, line: 129, column: 6)
!624 = !DILocation(line: 129, column: 6, scope: !120)
!625 = !DILocation(line: 130, column: 8, scope: !626)
!626 = distinct !DILexicalBlock(scope: !627, file: !121, line: 130, column: 6)
!627 = distinct !DILexicalBlock(scope: !623, file: !121, line: 129, column: 13)
!628 = !DILocation(line: 130, column: 7, scope: !626)
!629 = !DILocation(line: 130, column: 12, scope: !626)
!630 = !DILocation(line: 130, column: 6, scope: !627)
!631 = !DILocation(line: 131, column: 11, scope: !626)
!632 = !DILocation(line: 131, column: 4, scope: !633)
!633 = !DILexicalBlockFile(scope: !626, file: !121, discriminator: 1)
!634 = !DILocation(line: 131, column: 4, scope: !626)
!635 = !DILocation(line: 132, column: 2, scope: !627)
!636 = !DILocation(line: 133, column: 21, scope: !637)
!637 = distinct !DILexicalBlock(scope: !623, file: !121, line: 132, column: 9)
!638 = !DILocation(line: 133, column: 14, scope: !637)
!639 = !DILocation(line: 133, column: 28, scope: !637)
!640 = !DILocation(line: 133, column: 3, scope: !641)
!641 = !DILexicalBlockFile(scope: !637, file: !121, discriminator: 1)
!642 = !DILocation(line: 135, column: 20, scope: !643)
!643 = distinct !DILexicalBlock(scope: !637, file: !121, line: 135, column: 7)
!644 = !DILocation(line: 135, column: 13, scope: !643)
!645 = !DILocation(line: 135, column: 7, scope: !646)
!646 = !DILexicalBlockFile(scope: !643, file: !121, discriminator: 1)
!647 = !DILocation(line: 135, column: 7, scope: !643)
!648 = !DILocation(line: 135, column: 7, scope: !637)
!649 = !DILocation(line: 136, column: 11, scope: !643)
!650 = !DILocation(line: 136, column: 4, scope: !646)
!651 = !DILocation(line: 136, column: 4, scope: !643)
!652 = !DILocation(line: 145, column: 7, scope: !653)
!653 = distinct !DILexicalBlock(scope: !637, file: !121, line: 145, column: 7)
!654 = !DILocation(line: 145, column: 17, scope: !653)
!655 = !DILocation(line: 146, column: 15, scope: !653)
!656 = !DILocation(line: 146, column: 33, scope: !653)
!657 = !DILocation(line: 146, column: 22, scope: !653)
!658 = !DILocation(line: 146, column: 40, scope: !653)
!659 = !DILocation(line: 147, column: 15, scope: !653)
!660 = !DILocation(line: 147, column: 33, scope: !653)
!661 = !DILocation(line: 147, column: 22, scope: !653)
!662 = !DILocation(line: 145, column: 7, scope: !641)
!663 = !DILocation(line: 148, column: 11, scope: !664)
!664 = distinct !DILexicalBlock(scope: !653, file: !121, line: 147, column: 41)
!665 = !DILocation(line: 148, column: 4, scope: !664)
!666 = !DILocation(line: 149, column: 15, scope: !664)
!667 = !DILocation(line: 150, column: 4, scope: !664)
!668 = !DILocation(line: 151, column: 4, scope: !664)
!669 = !DILocation(line: 153, column: 13, scope: !637)
!670 = !DILocation(line: 155, column: 6, scope: !671)
!671 = distinct !DILexicalBlock(scope: !120, file: !121, line: 155, column: 6)
!672 = !DILocation(line: 155, column: 6, scope: !120)
!673 = !DILocation(line: 156, column: 10, scope: !671)
!674 = !DILocation(line: 156, column: 3, scope: !671)
!675 = !DILocation(line: 157, column: 14, scope: !120)
!676 = !DILocation(line: 157, column: 12, scope: !120)
!677 = !DILocation(line: 160, column: 9, scope: !120)
!678 = !DILocation(line: 160, column: 7, scope: !120)
!679 = !DILocation(line: 161, column: 2, scope: !120)
!680 = !DILocation(line: 161, column: 36, scope: !681)
!681 = !DILexicalBlockFile(scope: !120, file: !121, discriminator: 1)
!682 = !DILocation(line: 161, column: 16, scope: !681)
!683 = !DILocation(line: 161, column: 14, scope: !681)
!684 = !DILocation(line: 161, column: 2, scope: !681)
!685 = !DILocation(line: 162, column: 3, scope: !120)
!686 = !DILocation(line: 162, column: 8, scope: !120)
!687 = !DILocation(line: 162, column: 21, scope: !120)
!688 = !DILocation(line: 161, column: 2, scope: !689)
!689 = !DILexicalBlockFile(scope: !120, file: !121, discriminator: 2)
!690 = distinct !{!690, !679}
!691 = !DILocation(line: 163, column: 22, scope: !120)
!692 = !DILocation(line: 163, column: 2, scope: !120)
!693 = !DILocation(line: 165, column: 7, scope: !694)
!694 = distinct !DILexicalBlock(scope: !120, file: !121, line: 165, column: 6)
!695 = !DILocation(line: 165, column: 6, scope: !120)
!696 = !DILocation(line: 166, column: 14, scope: !697)
!697 = distinct !DILexicalBlock(scope: !694, file: !121, line: 165, column: 13)
!698 = !DILocation(line: 167, column: 3, scope: !697)
!699 = !DILocation(line: 168, column: 3, scope: !697)
!700 = !DILocation(line: 170, column: 2, scope: !120)
!701 = !DILocation(line: 174, column: 15, scope: !702)
!702 = distinct !DILexicalBlock(scope: !120, file: !121, line: 174, column: 6)
!703 = !DILocation(line: 174, column: 7, scope: !702)
!704 = !DILocation(line: 174, column: 6, scope: !120)
!705 = !DILocation(line: 175, column: 14, scope: !706)
!706 = distinct !DILexicalBlock(scope: !702, file: !121, line: 174, column: 24)
!707 = !DILocation(line: 176, column: 3, scope: !706)
!708 = !DILocation(line: 179, column: 33, scope: !120)
!709 = !DILocation(line: 179, column: 16, scope: !120)
!710 = !DILocation(line: 179, column: 14, scope: !120)
!711 = !DILocation(line: 180, column: 20, scope: !120)
!712 = !DILocation(line: 180, column: 42, scope: !120)
!713 = !DILocation(line: 180, column: 32, scope: !120)
!714 = !DILocation(line: 180, column: 18, scope: !120)
!715 = !DILocation(line: 182, column: 21, scope: !716)
!716 = distinct !DILexicalBlock(scope: !120, file: !121, line: 182, column: 6)
!717 = !DILocation(line: 182, column: 14, scope: !716)
!718 = !DILocation(line: 182, column: 28, scope: !716)
!719 = !DILocation(line: 182, column: 49, scope: !716)
!720 = !DILocation(line: 182, column: 6, scope: !721)
!721 = !DILexicalBlockFile(scope: !716, file: !121, discriminator: 1)
!722 = !DILocation(line: 182, column: 58, scope: !716)
!723 = !DILocation(line: 182, column: 6, scope: !120)
!724 = !DILocation(line: 183, column: 10, scope: !716)
!725 = !DILocation(line: 183, column: 51, scope: !716)
!726 = !DILocation(line: 183, column: 3, scope: !721)
!727 = !DILocation(line: 183, column: 3, scope: !716)
!728 = !DILocation(line: 185, column: 13, scope: !120)
!729 = !DILocation(line: 185, column: 11, scope: !120)
!730 = !DILocation(line: 186, column: 2, scope: !120)
!731 = !DILocation(line: 186, column: 9, scope: !681)
!732 = !DILocation(line: 186, column: 20, scope: !681)
!733 = !DILocation(line: 186, column: 18, scope: !681)
!734 = !DILocation(line: 186, column: 2, scope: !681)
!735 = !DILocation(line: 187, column: 9, scope: !736)
!736 = distinct !DILexicalBlock(scope: !120, file: !121, line: 186, column: 37)
!737 = !DILocation(line: 187, column: 7, scope: !736)
!738 = !DILocation(line: 189, column: 16, scope: !736)
!739 = !DILocation(line: 189, column: 32, scope: !736)
!740 = !DILocation(line: 189, column: 50, scope: !736)
!741 = !DILocation(line: 189, column: 48, scope: !736)
!742 = !DILocation(line: 189, column: 9, scope: !736)
!743 = !DILocation(line: 189, column: 7, scope: !736)
!744 = !DILocation(line: 190, column: 7, scope: !745)
!745 = distinct !DILexicalBlock(scope: !736, file: !121, line: 190, column: 7)
!746 = !DILocation(line: 190, column: 11, scope: !745)
!747 = !DILocation(line: 190, column: 7, scope: !736)
!748 = !DILocation(line: 191, column: 10, scope: !745)
!749 = !DILocation(line: 191, column: 4, scope: !750)
!750 = !DILexicalBlockFile(scope: !745, file: !121, discriminator: 1)
!751 = !DILocation(line: 191, column: 4, scope: !745)
!752 = !DILocation(line: 193, column: 14, scope: !736)
!753 = !DILocation(line: 193, column: 18, scope: !736)
!754 = !DILocation(line: 193, column: 12, scope: !736)
!755 = !DILocation(line: 194, column: 7, scope: !756)
!756 = distinct !DILexicalBlock(scope: !736, file: !121, line: 194, column: 7)
!757 = !DILocation(line: 194, column: 14, scope: !756)
!758 = !DILocation(line: 194, column: 11, scope: !756)
!759 = !DILocation(line: 194, column: 7, scope: !736)
!760 = !DILocation(line: 195, column: 10, scope: !756)
!761 = !DILocation(line: 195, column: 4, scope: !762)
!762 = !DILexicalBlockFile(scope: !756, file: !121, discriminator: 1)
!763 = !DILocation(line: 195, column: 4, scope: !756)
!764 = !DILocation(line: 196, column: 4, scope: !736)
!765 = !DILocation(line: 196, column: 8, scope: !736)
!766 = !DILocation(line: 199, column: 16, scope: !736)
!767 = !DILocation(line: 199, column: 31, scope: !736)
!768 = !DILocation(line: 199, column: 42, scope: !736)
!769 = !DILocation(line: 199, column: 40, scope: !736)
!770 = !DILocation(line: 199, column: 9, scope: !736)
!771 = !DILocation(line: 199, column: 7, scope: !736)
!772 = !DILocation(line: 200, column: 7, scope: !773)
!773 = distinct !DILexicalBlock(scope: !736, file: !121, line: 200, column: 7)
!774 = !DILocation(line: 200, column: 11, scope: !773)
!775 = !DILocation(line: 200, column: 7, scope: !736)
!776 = !DILocation(line: 201, column: 10, scope: !773)
!777 = !DILocation(line: 201, column: 4, scope: !778)
!778 = !DILexicalBlockFile(scope: !773, file: !121, discriminator: 1)
!779 = !DILocation(line: 201, column: 4, scope: !773)
!780 = !DILocation(line: 202, column: 4, scope: !736)
!781 = !DILocation(line: 202, column: 8, scope: !736)
!782 = !DILocation(line: 204, column: 31, scope: !736)
!783 = !DILocation(line: 204, column: 14, scope: !736)
!784 = !DILocation(line: 204, column: 3, scope: !736)
!785 = !DILocation(line: 204, column: 8, scope: !736)
!786 = !DILocation(line: 204, column: 12, scope: !736)
!787 = !DILocation(line: 205, column: 7, scope: !788)
!788 = distinct !DILexicalBlock(scope: !736, file: !121, line: 205, column: 7)
!789 = !DILocation(line: 205, column: 12, scope: !788)
!790 = !DILocation(line: 205, column: 16, scope: !788)
!791 = !DILocation(line: 205, column: 7, scope: !736)
!792 = !DILocation(line: 206, column: 27, scope: !788)
!793 = !DILocation(line: 206, column: 17, scope: !788)
!794 = !DILocation(line: 206, column: 4, scope: !788)
!795 = !DILocation(line: 206, column: 9, scope: !788)
!796 = !DILocation(line: 206, column: 15, scope: !788)
!797 = !DILocation(line: 208, column: 4, scope: !788)
!798 = !DILocation(line: 208, column: 9, scope: !788)
!799 = !DILocation(line: 208, column: 15, scope: !788)
!800 = !DILocation(line: 210, column: 7, scope: !801)
!801 = distinct !DILexicalBlock(scope: !736, file: !121, line: 210, column: 7)
!802 = !DILocation(line: 210, column: 12, scope: !801)
!803 = !DILocation(line: 210, column: 16, scope: !801)
!804 = !DILocation(line: 210, column: 29, scope: !801)
!805 = !DILocation(line: 210, column: 34, scope: !806)
!806 = !DILexicalBlockFile(scope: !801, file: !121, discriminator: 1)
!807 = !DILocation(line: 210, column: 40, scope: !806)
!808 = !DILocation(line: 210, column: 7, scope: !806)
!809 = !DILocation(line: 211, column: 10, scope: !801)
!810 = !DILocation(line: 213, column: 57, scope: !801)
!811 = !DILocation(line: 211, column: 4, scope: !806)
!812 = !DILocation(line: 211, column: 4, scope: !801)
!813 = !DILocation(line: 216, column: 14, scope: !736)
!814 = !DILocation(line: 216, column: 18, scope: !736)
!815 = !DILocation(line: 216, column: 12, scope: !736)
!816 = !DILocation(line: 217, column: 7, scope: !817)
!817 = distinct !DILexicalBlock(scope: !736, file: !121, line: 217, column: 7)
!818 = !DILocation(line: 217, column: 19, scope: !817)
!819 = !DILocation(line: 217, column: 16, scope: !817)
!820 = !DILocation(line: 217, column: 7, scope: !736)
!821 = !DILocation(line: 218, column: 10, scope: !817)
!822 = !DILocation(line: 218, column: 4, scope: !823)
!823 = !DILexicalBlockFile(scope: !817, file: !121, discriminator: 1)
!824 = !DILocation(line: 218, column: 4, scope: !817)
!825 = !DILocation(line: 221, column: 16, scope: !736)
!826 = !DILocation(line: 221, column: 31, scope: !736)
!827 = !DILocation(line: 221, column: 42, scope: !736)
!828 = !DILocation(line: 221, column: 40, scope: !736)
!829 = !DILocation(line: 221, column: 9, scope: !736)
!830 = !DILocation(line: 221, column: 7, scope: !736)
!831 = !DILocation(line: 222, column: 7, scope: !832)
!832 = distinct !DILexicalBlock(scope: !736, file: !121, line: 222, column: 7)
!833 = !DILocation(line: 222, column: 11, scope: !832)
!834 = !DILocation(line: 222, column: 7, scope: !736)
!835 = !DILocation(line: 223, column: 10, scope: !832)
!836 = !DILocation(line: 223, column: 4, scope: !837)
!837 = !DILexicalBlockFile(scope: !832, file: !121, discriminator: 1)
!838 = !DILocation(line: 223, column: 4, scope: !832)
!839 = !DILocation(line: 224, column: 4, scope: !736)
!840 = !DILocation(line: 224, column: 8, scope: !736)
!841 = !DILocation(line: 226, column: 31, scope: !736)
!842 = !DILocation(line: 226, column: 14, scope: !736)
!843 = !DILocation(line: 226, column: 3, scope: !736)
!844 = !DILocation(line: 226, column: 8, scope: !736)
!845 = !DILocation(line: 226, column: 12, scope: !736)
!846 = !DILocation(line: 227, column: 7, scope: !847)
!847 = distinct !DILexicalBlock(scope: !736, file: !121, line: 227, column: 7)
!848 = !DILocation(line: 227, column: 12, scope: !847)
!849 = !DILocation(line: 227, column: 16, scope: !847)
!850 = !DILocation(line: 227, column: 7, scope: !736)
!851 = !DILocation(line: 228, column: 27, scope: !847)
!852 = !DILocation(line: 228, column: 17, scope: !847)
!853 = !DILocation(line: 228, column: 4, scope: !847)
!854 = !DILocation(line: 228, column: 9, scope: !847)
!855 = !DILocation(line: 228, column: 15, scope: !847)
!856 = !DILocation(line: 230, column: 4, scope: !847)
!857 = !DILocation(line: 230, column: 9, scope: !847)
!858 = !DILocation(line: 230, column: 15, scope: !847)
!859 = !DILocation(line: 232, column: 7, scope: !860)
!860 = distinct !DILexicalBlock(scope: !736, file: !121, line: 232, column: 7)
!861 = !DILocation(line: 232, column: 12, scope: !860)
!862 = !DILocation(line: 232, column: 16, scope: !860)
!863 = !DILocation(line: 232, column: 29, scope: !860)
!864 = !DILocation(line: 232, column: 34, scope: !865)
!865 = !DILexicalBlockFile(scope: !860, file: !121, discriminator: 1)
!866 = !DILocation(line: 232, column: 40, scope: !865)
!867 = !DILocation(line: 232, column: 7, scope: !865)
!868 = !DILocation(line: 233, column: 10, scope: !860)
!869 = !DILocation(line: 235, column: 57, scope: !860)
!870 = !DILocation(line: 233, column: 4, scope: !865)
!871 = !DILocation(line: 233, column: 4, scope: !860)
!872 = !DILocation(line: 238, column: 14, scope: !736)
!873 = !DILocation(line: 238, column: 18, scope: !736)
!874 = !DILocation(line: 238, column: 12, scope: !736)
!875 = !DILocation(line: 239, column: 7, scope: !876)
!876 = distinct !DILexicalBlock(scope: !736, file: !121, line: 239, column: 7)
!877 = !DILocation(line: 239, column: 19, scope: !876)
!878 = !DILocation(line: 239, column: 16, scope: !876)
!879 = !DILocation(line: 239, column: 7, scope: !736)
!880 = !DILocation(line: 240, column: 10, scope: !876)
!881 = !DILocation(line: 240, column: 4, scope: !882)
!882 = !DILexicalBlockFile(scope: !876, file: !121, discriminator: 1)
!883 = !DILocation(line: 240, column: 4, scope: !876)
!884 = !DILocation(line: 243, column: 16, scope: !736)
!885 = !DILocation(line: 243, column: 31, scope: !736)
!886 = !DILocation(line: 243, column: 42, scope: !736)
!887 = !DILocation(line: 243, column: 40, scope: !736)
!888 = !DILocation(line: 243, column: 9, scope: !736)
!889 = !DILocation(line: 243, column: 7, scope: !736)
!890 = !DILocation(line: 244, column: 7, scope: !891)
!891 = distinct !DILexicalBlock(scope: !736, file: !121, line: 244, column: 7)
!892 = !DILocation(line: 244, column: 11, scope: !891)
!893 = !DILocation(line: 244, column: 7, scope: !736)
!894 = !DILocation(line: 245, column: 10, scope: !891)
!895 = !DILocation(line: 245, column: 4, scope: !896)
!896 = !DILexicalBlockFile(scope: !891, file: !121, discriminator: 1)
!897 = !DILocation(line: 245, column: 4, scope: !891)
!898 = !DILocation(line: 246, column: 4, scope: !736)
!899 = !DILocation(line: 246, column: 8, scope: !736)
!900 = !DILocation(line: 248, column: 33, scope: !736)
!901 = !DILocation(line: 248, column: 15, scope: !736)
!902 = !DILocation(line: 248, column: 3, scope: !736)
!903 = !DILocation(line: 248, column: 8, scope: !736)
!904 = !DILocation(line: 248, column: 13, scope: !736)
!905 = !DILocation(line: 251, column: 14, scope: !736)
!906 = !DILocation(line: 251, column: 18, scope: !736)
!907 = !DILocation(line: 251, column: 12, scope: !736)
!908 = !DILocation(line: 252, column: 7, scope: !909)
!909 = distinct !DILexicalBlock(scope: !736, file: !121, line: 252, column: 7)
!910 = !DILocation(line: 252, column: 19, scope: !909)
!911 = !DILocation(line: 252, column: 16, scope: !909)
!912 = !DILocation(line: 252, column: 7, scope: !736)
!913 = !DILocation(line: 253, column: 10, scope: !909)
!914 = !DILocation(line: 253, column: 4, scope: !915)
!915 = !DILexicalBlockFile(scope: !909, file: !121, discriminator: 1)
!916 = !DILocation(line: 253, column: 4, scope: !909)
!917 = !DILocation(line: 255, column: 29, scope: !736)
!918 = !DILocation(line: 255, column: 9, scope: !736)
!919 = !DILocation(line: 255, column: 7, scope: !736)
!920 = !DILocation(line: 256, column: 7, scope: !921)
!921 = distinct !DILexicalBlock(scope: !736, file: !121, line: 256, column: 7)
!922 = !DILocation(line: 256, column: 12, scope: !921)
!923 = !DILocation(line: 256, column: 7, scope: !736)
!924 = !DILocation(line: 257, column: 10, scope: !921)
!925 = !DILocation(line: 258, column: 11, scope: !921)
!926 = !DILocation(line: 257, column: 4, scope: !927)
!927 = !DILexicalBlockFile(scope: !921, file: !121, discriminator: 1)
!928 = !DILocation(line: 257, column: 4, scope: !921)
!929 = !DILocation(line: 259, column: 23, scope: !736)
!930 = !DILocation(line: 259, column: 3, scope: !736)
!931 = !DILocation(line: 259, column: 8, scope: !736)
!932 = !DILocation(line: 259, column: 21, scope: !736)
!933 = !DILocation(line: 262, column: 14, scope: !736)
!934 = !DILocation(line: 262, column: 12, scope: !736)
!935 = !DILocation(line: 186, column: 2, scope: !689)
!936 = distinct !{!936, !730}
!937 = !DILocation(line: 265, column: 7, scope: !120)
!938 = !DILocation(line: 265, column: 2, scope: !120)
!939 = !DILocation(line: 267, column: 13, scope: !120)
!940 = !DILocation(line: 268, column: 1, scope: !120)
!941 = !DILocation(line: 268, column: 1, scope: !681)
