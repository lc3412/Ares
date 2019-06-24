; ModuleID = './[inter]lib--dpkg--dbmodify.o.i'
source_filename = "./[inter]lib--dpkg--dbmodify.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.fni = type { i8*, i8** }
%struct.varbuf = type { i64, i64, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
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
%struct.pkg_list = type opaque
%struct.fsys_diversion = type { %struct.fsys_namenode*, %struct.fsys_namenode*, %struct.pkgset*, %struct.fsys_diversion* }
%struct.file_stat = type { i32, i32, i32, i8*, i8* }
%struct.trigfileint = type { %struct.pkginfo*, %struct.pkgbin*, %struct.fsys_namenode*, i32, %struct.trigfileint*, %struct.anon.1 }
%struct.anon.1 = type { %struct.trigfileint*, %struct.trigfileint* }
%struct.file_ondisk_id = type { i64, i64 }
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }

@db_initialized = internal global i8 0, align 1
@fnis = internal constant [7 x %struct.fni] [%struct.fni { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8** @lockfile }, %struct.fni { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), i8** @frontendlockfile }, %struct.fni { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), i8** @statusfile }, %struct.fni { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8** @availablefile }, %struct.fni { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i8** @updatesdir }, %struct.fni { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), i8** @importanttmpfile }, %struct.fni zeroinitializer], align 16
@updatesdir = internal global i8* null, align 8
@updatefnbuf = internal global i8* null, align 8
@updatefnrest = internal global i8* null, align 8
@dblockfd = internal global i32 -1, align 4
@lockfile = internal global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"dpkg\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"unable to check lock file for dpkg database directory %s\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"DPKG_FRONTEND_LOCKED\00", align 1
@frontendlockfile = internal global i8* null, align 8
@frontendlockfd = internal global i32 -1, align 4
@.str.3 = private unnamed_addr constant [58 x i8] c"unable to open/create dpkg frontend lock for directory %s\00", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"unable to open/create dpkg database lock file for directory %s\00", align 1
@.str.5 = private unnamed_addr constant [66 x i8] c"you do not have permission to lock the dpkg database directory %s\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"dpkg frontend lock\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"dpkg database lock\00", align 1
@cflags = internal global i32 0, align 4
@.str.8 = private unnamed_addr constant [49 x i8] c"requested operation requires superuser privilege\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"unable to access the dpkg database directory %s\00", align 1
@.str.10 = private unnamed_addr constant [61 x i8] c"required read/write access to the dpkg database directory %s\00", align 1
@cstatus = internal global i32 -1, align 4
@.str.11 = private unnamed_addr constant [11 x i8] c"dbmodify.c\00", align 1
@__func__.modstatdb_open = private unnamed_addr constant [15 x i8] c"modstatdb_open\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"unknown modstatdb_rw '%d'\00", align 1
@availablefile = internal global i8* null, align 8
@uvb = internal global %struct.varbuf zeroinitializer, align 8
@__func__.modstatdb_checkpoint = private unnamed_addr constant [21 x i8] c"modstatdb_checkpoint\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"modstatdb status '%d' is not writable\00", align 1
@statusfile = internal global i8* null, align 8
@nextupdate = internal global i32 0, align 4
@.str.14 = private unnamed_addr constant [5 x i8] c"%04d\00", align 1
@.str.15 = private unnamed_addr constant [48 x i8] c"modstatdb update entry name '%s' longer than %d\00", align 1
@.str.16 = private unnamed_addr constant [43 x i8] c"failed to remove my own update file %.255s\00", align 1
@importanttmp = internal global %struct._IO_FILE* null, align 8
@importanttmpfile = internal global i8* null, align 8
@onerr_abort = external global i32, align 4
@.str.17 = private unnamed_addr constant [16 x i8] c"status %s %s %s\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"status: %s: %s\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"lock\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"lock-frontend\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"available\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"updates/\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"updates/tmp.i\00", align 1
@updateslength = internal global i32 0, align 4
@.str.25 = private unnamed_addr constant [39 x i8] c"cannot scan updates directory '%.255s'\00", align 1
@.str.26 = private unnamed_addr constant [49 x i8] c"failed to remove incorporated update file %.255s\00", align 1
@.str.27 = private unnamed_addr constant [84 x i8] c"updates directory contains file '%.250s' whose name is too long (length=%d, max=%d)\00", align 1
@.str.28 = private unnamed_addr constant [78 x i8] c"updates directory contains files with different length names (both %d and %d)\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.30 = private unnamed_addr constant [26 x i8] c"unable to create '%.255s'\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"#padding\0A\00", align 1
@.str.32 = private unnamed_addr constant [35 x i8] c"unable to fill %.250s with padding\00", align 1
@.str.33 = private unnamed_addr constant [37 x i8] c"unable to flush %.250s after padding\00", align 1
@.str.34 = private unnamed_addr constant [48 x i8] c"unable to seek to start of %.250s after padding\00", align 1
@__func__.modstatdb_note_core = private unnamed_addr constant [20 x i8] c"modstatdb_note_core\00", align 1
@.str.35 = private unnamed_addr constant [43 x i8] c"unable to write updated status of '%.250s'\00", align 1
@.str.36 = private unnamed_addr constant [43 x i8] c"unable to flush updated status of '%.250s'\00", align 1
@.str.37 = private unnamed_addr constant [50 x i8] c"unable to truncate for updated status of '%.250s'\00", align 1
@.str.38 = private unnamed_addr constant [43 x i8] c"unable to fsync updated status of '%.250s'\00", align 1
@.str.39 = private unnamed_addr constant [43 x i8] c"unable to close updated status of '%.250s'\00", align 1
@.str.40 = private unnamed_addr constant [45 x i8] c"unable to install updated status of '%.250s'\00", align 1

; Function Attrs: nounwind uwtable
define void @modstatdb_init() #0 !dbg !260 {
  %1 = alloca %struct.fni*, align 8
  call void @llvm.dbg.declare(metadata %struct.fni** %1, metadata !264, metadata !266), !dbg !267
  %2 = load i8, i8* @db_initialized, align 1, !dbg !268
  %3 = trunc i8 %2 to i1, !dbg !268
  br i1 %3, label %4, label %5, !dbg !270

; <label>:4:                                      ; preds = %0
  br label %39, !dbg !271

; <label>:5:                                      ; preds = %0
  store %struct.fni* getelementptr inbounds ([7 x %struct.fni], [7 x %struct.fni]* @fnis, i32 0, i32 0), %struct.fni** %1, align 8, !dbg !272
  br label %6, !dbg !274

; <label>:6:                                      ; preds = %23, %5
  %7 = load %struct.fni*, %struct.fni** %1, align 8, !dbg !275
  %8 = getelementptr inbounds %struct.fni, %struct.fni* %7, i32 0, i32 0, !dbg !278
  %9 = load i8*, i8** %8, align 8, !dbg !278
  %10 = icmp ne i8* %9, null, !dbg !279
  br i1 %10, label %11, label %26, !dbg !279

; <label>:11:                                     ; preds = %6
  %12 = load %struct.fni*, %struct.fni** %1, align 8, !dbg !280
  %13 = getelementptr inbounds %struct.fni, %struct.fni* %12, i32 0, i32 1, !dbg !282
  %14 = load i8**, i8*** %13, align 8, !dbg !282
  %15 = load i8*, i8** %14, align 8, !dbg !283
  call void @free(i8* %15) #8, !dbg !284
  %16 = load %struct.fni*, %struct.fni** %1, align 8, !dbg !285
  %17 = getelementptr inbounds %struct.fni, %struct.fni* %16, i32 0, i32 0, !dbg !286
  %18 = load i8*, i8** %17, align 8, !dbg !286
  %19 = call i8* @dpkg_db_get_path(i8* %18), !dbg !287
  %20 = load %struct.fni*, %struct.fni** %1, align 8, !dbg !288
  %21 = getelementptr inbounds %struct.fni, %struct.fni* %20, i32 0, i32 1, !dbg !289
  %22 = load i8**, i8*** %21, align 8, !dbg !289
  store i8* %19, i8** %22, align 8, !dbg !290
  br label %23, !dbg !291

; <label>:23:                                     ; preds = %11
  %24 = load %struct.fni*, %struct.fni** %1, align 8, !dbg !292
  %25 = getelementptr inbounds %struct.fni, %struct.fni* %24, i32 1, !dbg !292
  store %struct.fni* %25, %struct.fni** %1, align 8, !dbg !292
  br label %6, !dbg !294, !llvm.loop !295

; <label>:26:                                     ; preds = %6
  %27 = load i8*, i8** @updatesdir, align 8, !dbg !297
  %28 = call i64 @strlen(i8* %27) #9, !dbg !298
  %29 = add i64 %28, 10, !dbg !299
  %30 = add i64 %29, 5, !dbg !300
  %31 = call i8* @m_malloc(i64 %30), !dbg !301
  store i8* %31, i8** @updatefnbuf, align 8, !dbg !303
  %32 = load i8*, i8** @updatefnbuf, align 8, !dbg !304
  %33 = load i8*, i8** @updatesdir, align 8, !dbg !305
  %34 = call i8* @strcpy(i8* %32, i8* %33) #8, !dbg !306
  %35 = load i8*, i8** @updatefnbuf, align 8, !dbg !307
  %36 = load i8*, i8** @updatefnbuf, align 8, !dbg !308
  %37 = call i64 @strlen(i8* %36) #9, !dbg !309
  %38 = getelementptr inbounds i8, i8* %35, i64 %37, !dbg !310
  store i8* %38, i8** @updatefnrest, align 8, !dbg !311
  store i8 1, i8* @db_initialized, align 1, !dbg !312
  br label %39, !dbg !313

; <label>:39:                                     ; preds = %26, %4
  ret void, !dbg !314
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

declare i8* @dpkg_db_get_path(i8*) #3

declare i8* @m_malloc(i64) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @modstatdb_done() #0 !dbg !315 {
  %1 = alloca %struct.fni*, align 8
  call void @llvm.dbg.declare(metadata %struct.fni** %1, metadata !316, metadata !266), !dbg !317
  %2 = load i8, i8* @db_initialized, align 1, !dbg !318
  %3 = trunc i8 %2 to i1, !dbg !318
  br i1 %3, label %5, label %4, !dbg !320

; <label>:4:                                      ; preds = %0
  br label %24, !dbg !321

; <label>:5:                                      ; preds = %0
  store %struct.fni* getelementptr inbounds ([7 x %struct.fni], [7 x %struct.fni]* @fnis, i32 0, i32 0), %struct.fni** %1, align 8, !dbg !322
  br label %6, !dbg !324

; <label>:6:                                      ; preds = %19, %5
  %7 = load %struct.fni*, %struct.fni** %1, align 8, !dbg !325
  %8 = getelementptr inbounds %struct.fni, %struct.fni* %7, i32 0, i32 0, !dbg !328
  %9 = load i8*, i8** %8, align 8, !dbg !328
  %10 = icmp ne i8* %9, null, !dbg !329
  br i1 %10, label %11, label %22, !dbg !329

; <label>:11:                                     ; preds = %6
  %12 = load %struct.fni*, %struct.fni** %1, align 8, !dbg !330
  %13 = getelementptr inbounds %struct.fni, %struct.fni* %12, i32 0, i32 1, !dbg !332
  %14 = load i8**, i8*** %13, align 8, !dbg !332
  %15 = load i8*, i8** %14, align 8, !dbg !333
  call void @free(i8* %15) #8, !dbg !334
  %16 = load %struct.fni*, %struct.fni** %1, align 8, !dbg !335
  %17 = getelementptr inbounds %struct.fni, %struct.fni* %16, i32 0, i32 1, !dbg !336
  %18 = load i8**, i8*** %17, align 8, !dbg !336
  store i8* null, i8** %18, align 8, !dbg !337
  br label %19, !dbg !338

; <label>:19:                                     ; preds = %11
  %20 = load %struct.fni*, %struct.fni** %1, align 8, !dbg !339
  %21 = getelementptr inbounds %struct.fni, %struct.fni* %20, i32 1, !dbg !339
  store %struct.fni* %21, %struct.fni** %1, align 8, !dbg !339
  br label %6, !dbg !341, !llvm.loop !342

; <label>:22:                                     ; preds = %6
  %23 = load i8*, i8** @updatefnbuf, align 8, !dbg !344
  call void @free(i8* %23) #8, !dbg !345
  store i8 0, i8* @db_initialized, align 1, !dbg !346
  br label %24, !dbg !347

; <label>:24:                                     ; preds = %22, %4
  ret void, !dbg !348
}

; Function Attrs: nounwind uwtable
define zeroext i1 @modstatdb_is_locked() #0 !dbg !350 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i32* %1, metadata !353, metadata !266), !dbg !354
  call void @llvm.dbg.declare(metadata i8* %2, metadata !355, metadata !266), !dbg !356
  %3 = load i32, i32* @dblockfd, align 4, !dbg !357
  %4 = icmp eq i32 %3, -1, !dbg !359
  br i1 %4, label %5, label %14, !dbg !360

; <label>:5:                                      ; preds = %0
  %6 = load i8*, i8** @lockfile, align 8, !dbg !361
  %7 = call i32 (i8*, i32, ...) @open(i8* %6, i32 0), !dbg !363
  store i32 %7, i32* %1, align 4, !dbg !364
  %8 = load i32, i32* %1, align 4, !dbg !365
  %9 = icmp eq i32 %8, -1, !dbg !367
  br i1 %9, label %10, label %13, !dbg !368

; <label>:10:                                     ; preds = %5
  %11 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i32 0, i32 0)) #8, !dbg !369
  %12 = call i8* @dpkg_db_get_dir(), !dbg !370
  call void (i8*, ...) @ohshite(i8* %11, i8* %12) #10, !dbg !371
  unreachable, !dbg !373

; <label>:13:                                     ; preds = %5
  br label %16, !dbg !374

; <label>:14:                                     ; preds = %0
  %15 = load i32, i32* @dblockfd, align 4, !dbg !375
  store i32 %15, i32* %1, align 4, !dbg !377
  br label %16

; <label>:16:                                     ; preds = %14, %13
  %17 = load i32, i32* %1, align 4, !dbg !378
  %18 = load i8*, i8** @lockfile, align 8, !dbg !379
  %19 = call zeroext i1 @file_is_locked(i32 %17, i8* %18), !dbg !380
  %20 = zext i1 %19 to i8, !dbg !381
  store i8 %20, i8* %2, align 1, !dbg !381
  %21 = load i32, i32* @dblockfd, align 4, !dbg !382
  %22 = icmp eq i32 %21, -1, !dbg !384
  br i1 %22, label %23, label %26, !dbg !385

; <label>:23:                                     ; preds = %16
  %24 = load i32, i32* %1, align 4, !dbg !386
  %25 = call i32 @close(i32 %24), !dbg !387
  br label %26, !dbg !387

; <label>:26:                                     ; preds = %23, %16
  %27 = load i8, i8* %2, align 1, !dbg !388
  %28 = trunc i8 %27 to i1, !dbg !388
  ret i1 %28, !dbg !389
}

declare i32 @open(i8*, i32, ...) #3

; Function Attrs: noreturn
declare void @ohshite(i8*, ...) #5

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #2

declare i8* @dpkg_db_get_dir() #3

declare zeroext i1 @file_is_locked(i32, i8*) #3

declare i32 @close(i32) #3

; Function Attrs: nounwind uwtable
define zeroext i1 @modstatdb_can_lock() #0 !dbg !390 {
  %1 = alloca i1, align 1
  %2 = load i32, i32* @dblockfd, align 4, !dbg !391
  %3 = icmp sge i32 %2, 0, !dbg !393
  br i1 %3, label %4, label %5, !dbg !394

; <label>:4:                                      ; preds = %0
  store i1 true, i1* %1, align 1, !dbg !395
  br label %45, !dbg !395

; <label>:5:                                      ; preds = %0
  %6 = call i8* @getenv(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0)) #8, !dbg !396
  %7 = icmp eq i8* %6, null, !dbg !398
  br i1 %7, label %8, label %26, !dbg !399

; <label>:8:                                      ; preds = %5
  %9 = load i8*, i8** @frontendlockfile, align 8, !dbg !400
  %10 = call i32 (i8*, i32, ...) @open(i8* %9, i32 578, i32 432), !dbg !402
  store i32 %10, i32* @frontendlockfd, align 4, !dbg !403
  %11 = load i32, i32* @frontendlockfd, align 4, !dbg !404
  %12 = icmp eq i32 %11, -1, !dbg !406
  br i1 %12, label %13, label %25, !dbg !407

; <label>:13:                                     ; preds = %8
  %14 = call i32* @__errno_location() #1, !dbg !408
  %15 = load i32, i32* %14, align 4, !dbg !411
  %16 = icmp eq i32 %15, 13, !dbg !412
  br i1 %16, label %21, label %17, !dbg !413

; <label>:17:                                     ; preds = %13
  %18 = call i32* @__errno_location() #1, !dbg !414
  %19 = load i32, i32* %18, align 4, !dbg !416
  %20 = icmp eq i32 %19, 1, !dbg !417
  br i1 %20, label %21, label %22, !dbg !418

; <label>:21:                                     ; preds = %17, %13
  store i1 false, i1* %1, align 1, !dbg !419
  br label %45, !dbg !419

; <label>:22:                                     ; preds = %17
  %23 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i32 0, i32 0)) #8, !dbg !420
  %24 = call i8* @dpkg_db_get_dir(), !dbg !421
  call void (i8*, ...) @ohshite(i8* %23, i8* %24) #10, !dbg !422
  unreachable, !dbg !423

; <label>:25:                                     ; preds = %8
  br label %27, !dbg !424

; <label>:26:                                     ; preds = %5
  store i32 -1, i32* @frontendlockfd, align 4, !dbg !425
  br label %27

; <label>:27:                                     ; preds = %26, %25
  %28 = load i8*, i8** @lockfile, align 8, !dbg !427
  %29 = call i32 (i8*, i32, ...) @open(i8* %28, i32 578, i32 432), !dbg !428
  store i32 %29, i32* @dblockfd, align 4, !dbg !429
  %30 = load i32, i32* @dblockfd, align 4, !dbg !430
  %31 = icmp eq i32 %30, -1, !dbg !432
  br i1 %31, label %32, label %44, !dbg !433

; <label>:32:                                     ; preds = %27
  %33 = call i32* @__errno_location() #1, !dbg !434
  %34 = load i32, i32* %33, align 4, !dbg !437
  %35 = icmp eq i32 %34, 13, !dbg !438
  br i1 %35, label %40, label %36, !dbg !439

; <label>:36:                                     ; preds = %32
  %37 = call i32* @__errno_location() #1, !dbg !440
  %38 = load i32, i32* %37, align 4, !dbg !442
  %39 = icmp eq i32 %38, 1, !dbg !443
  br i1 %39, label %40, label %41, !dbg !444

; <label>:40:                                     ; preds = %36, %32
  store i1 false, i1* %1, align 1, !dbg !445
  br label %45, !dbg !445

; <label>:41:                                     ; preds = %36
  %42 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i32 0, i32 0)) #8, !dbg !446
  %43 = call i8* @dpkg_db_get_dir(), !dbg !447
  call void (i8*, ...) @ohshite(i8* %42, i8* %43) #10, !dbg !448
  unreachable, !dbg !449

; <label>:44:                                     ; preds = %27
  store i1 true, i1* %1, align 1, !dbg !450
  br label %45, !dbg !450

; <label>:45:                                     ; preds = %44, %40, %21, %4
  %46 = load i1, i1* %1, align 1, !dbg !451
  ret i1 %46, !dbg !451
}

; Function Attrs: nounwind
declare i8* @getenv(i8*) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

; Function Attrs: nounwind uwtable
define void @modstatdb_lock() #0 !dbg !452 {
  %1 = call zeroext i1 @modstatdb_can_lock(), !dbg !453
  br i1 %1, label %5, label %2, !dbg !455

; <label>:2:                                      ; preds = %0
  %3 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i32 0, i32 0)) #8, !dbg !456
  %4 = call i8* @dpkg_db_get_dir(), !dbg !457
  call void (i8*, ...) @ohshit(i8* %3, i8* %4) #10, !dbg !458
  unreachable, !dbg !460

; <label>:5:                                      ; preds = %0
  %6 = load i32, i32* @frontendlockfd, align 4, !dbg !461
  %7 = icmp ne i32 %6, -1, !dbg !463
  br i1 %7, label %8, label %11, !dbg !464

; <label>:8:                                      ; preds = %5
  %9 = load i8*, i8** @frontendlockfile, align 8, !dbg !465
  %10 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0)) #8, !dbg !466
  call void @file_lock(i32* @frontendlockfd, i32 0, i8* %9, i8* %10), !dbg !467
  br label %11, !dbg !467

; <label>:11:                                     ; preds = %8, %5
  %12 = load i8*, i8** @lockfile, align 8, !dbg !468
  %13 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0)) #8, !dbg !469
  call void @file_lock(i32* @dblockfd, i32 0, i8* %12, i8* %13), !dbg !470
  ret void, !dbg !471
}

; Function Attrs: noreturn
declare void @ohshit(i8*, ...) #5

declare void @file_lock(i32*, i32, i8*, i8*) #3

; Function Attrs: nounwind uwtable
define void @modstatdb_unlock() #0 !dbg !472 {
  call void @pop_cleanup(i32 1), !dbg !473
  %1 = load i32, i32* @frontendlockfd, align 4, !dbg !474
  %2 = icmp ne i32 %1, -1, !dbg !476
  br i1 %2, label %3, label %4, !dbg !477

; <label>:3:                                      ; preds = %0
  call void @pop_cleanup(i32 1), !dbg !478
  br label %4, !dbg !478

; <label>:4:                                      ; preds = %3, %0
  store i32 -1, i32* @dblockfd, align 4, !dbg !479
  store i32 -1, i32* @frontendlockfd, align 4, !dbg !480
  ret void, !dbg !481
}

declare void @pop_cleanup(i32) #3

; Function Attrs: nounwind uwtable
define i32 @modstatdb_open(i32) #0 !dbg !482 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !485, metadata !266), !dbg !486
  call void @modstatdb_init(), !dbg !487
  %3 = load i32, i32* %2, align 4, !dbg !488
  %4 = and i32 %3, 65280, !dbg !489
  store i32 %4, i32* @cflags, align 4, !dbg !490
  %5 = load i32, i32* %2, align 4, !dbg !491
  %6 = and i32 %5, -65281, !dbg !491
  store i32 %6, i32* %2, align 4, !dbg !491
  %7 = load i32, i32* %2, align 4, !dbg !492
  switch i32 %7, label %42 [
    i32 4, label %8
    i32 1, label %8
    i32 3, label %17
    i32 2, label %17
    i32 0, label %41
  ], !dbg !493

; <label>:8:                                      ; preds = %1, %1
  %9 = call i32 @getuid() #8, !dbg !494
  %10 = icmp ne i32 %9, 0, !dbg !494
  br i1 %10, label %14, label %11, !dbg !497

; <label>:11:                                     ; preds = %8
  %12 = call i32 @geteuid() #8, !dbg !498
  %13 = icmp ne i32 %12, 0, !dbg !498
  br i1 %13, label %14, label %16, !dbg !500

; <label>:14:                                     ; preds = %11, %8
  %15 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i32 0, i32 0)) #8, !dbg !501
  call void (i8*, ...) @ohshit(i8* %15) #10, !dbg !502
  unreachable, !dbg !503

; <label>:16:                                     ; preds = %11
  br label %17, !dbg !504

; <label>:17:                                     ; preds = %1, %1, %16
  %18 = call i8* @dpkg_db_get_dir(), !dbg !506
  %19 = call i32 @access(i8* %18, i32 2) #8, !dbg !508
  %20 = icmp ne i32 %19, 0, !dbg !510
  br i1 %20, label %21, label %36, !dbg !511

; <label>:21:                                     ; preds = %17
  %22 = call i32* @__errno_location() #1, !dbg !512
  %23 = load i32, i32* %22, align 4, !dbg !515
  %24 = icmp ne i32 %23, 13, !dbg !516
  br i1 %24, label %25, label %28, !dbg !517

; <label>:25:                                     ; preds = %21
  %26 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i32 0, i32 0)) #8, !dbg !518
  %27 = call i8* @dpkg_db_get_dir(), !dbg !519
  call void (i8*, ...) @ohshite(i8* %26, i8* %27) #10, !dbg !520
  unreachable, !dbg !522

; <label>:28:                                     ; preds = %21
  %29 = load i32, i32* %2, align 4, !dbg !523
  %30 = icmp eq i32 %29, 3, !dbg !525
  br i1 %30, label %31, label %34, !dbg !526

; <label>:31:                                     ; preds = %28
  %32 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.10, i32 0, i32 0)) #8, !dbg !527
  %33 = call i8* @dpkg_db_get_dir(), !dbg !528
  call void (i8*, ...) @ohshit(i8* %32, i8* %33) #10, !dbg !529
  unreachable, !dbg !531

; <label>:34:                                     ; preds = %28
  br label %35

; <label>:35:                                     ; preds = %34
  store i32 0, i32* @cstatus, align 4, !dbg !532
  br label %40, !dbg !533

; <label>:36:                                     ; preds = %17
  call void @modstatdb_lock(), !dbg !534
  %37 = load i32, i32* %2, align 4, !dbg !536
  %38 = icmp eq i32 %37, 1, !dbg !537
  %39 = select i1 %38, i32 1, i32 3, !dbg !536
  store i32 %39, i32* @cstatus, align 4, !dbg !538
  br label %40

; <label>:40:                                     ; preds = %36, %35
  br label %44, !dbg !539

; <label>:41:                                     ; preds = %1
  store i32 0, i32* @cstatus, align 4, !dbg !540
  br label %44, !dbg !541

; <label>:42:                                     ; preds = %1
  %43 = load i32, i32* %2, align 4, !dbg !542
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i32 306, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.modstatdb_open, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i32 0, i32 0), i32 %43) #10, !dbg !543
  unreachable, !dbg !543

; <label>:44:                                     ; preds = %41, %40
  call void @dpkg_arch_load_list(), !dbg !544
  %45 = load i32, i32* @cstatus, align 4, !dbg !545
  %46 = icmp ne i32 %45, 1, !dbg !547
  br i1 %46, label %47, label %54, !dbg !548

; <label>:47:                                     ; preds = %44
  call void @cleanupdates(), !dbg !549
  %48 = load i32, i32* @cflags, align 4, !dbg !551
  %49 = icmp uge i32 %48, 256, !dbg !553
  br i1 %49, label %50, label %53, !dbg !554

; <label>:50:                                     ; preds = %47
  %51 = load i8*, i8** @availablefile, align 8, !dbg !555
  %52 = call i32 @parsedb(i8* %51, i32 582, %struct.pkginfo** null), !dbg !556
  br label %53, !dbg !556

; <label>:53:                                     ; preds = %50, %47
  br label %54, !dbg !557

; <label>:54:                                     ; preds = %53, %44
  %55 = load i32, i32* @cstatus, align 4, !dbg !558
  %56 = icmp uge i32 %55, 3, !dbg !560
  br i1 %56, label %57, label %58, !dbg !561

; <label>:57:                                     ; preds = %54
  call void @createimptmp(), !dbg !562
  call void @varbuf_init(%struct.varbuf* @uvb, i64 10240), !dbg !564
  br label %58, !dbg !565

; <label>:58:                                     ; preds = %57, %54
  %59 = load i32, i32* @cstatus, align 4, !dbg !566
  call void @trig_fixup_awaiters(i32 %59), !dbg !567
  %60 = load i32, i32* @cstatus, align 4, !dbg !568
  call void @trig_incorporate(i32 %60), !dbg !569
  %61 = load i32, i32* @cstatus, align 4, !dbg !570
  ret i32 %61, !dbg !571
}

; Function Attrs: nounwind
declare i32 @getuid() #2

; Function Attrs: nounwind
declare i32 @geteuid() #2

; Function Attrs: nounwind
declare i32 @access(i8*, i32) #2

; Function Attrs: noreturn
declare void @do_internerr(i8*, i32, i8*, i8*, ...) #5

declare void @dpkg_arch_load_list() #3

; Function Attrs: nounwind uwtable
define internal void @cleanupdates() #0 !dbg !572 {
  %1 = alloca %struct.dirent**, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.dirent*** %1, metadata !573, metadata !266), !dbg !589
  call void @llvm.dbg.declare(metadata i32* %2, metadata !590, metadata !266), !dbg !591
  call void @llvm.dbg.declare(metadata i32* %3, metadata !592, metadata !266), !dbg !593
  %4 = load i8*, i8** @statusfile, align 8, !dbg !594
  %5 = call i32 @parsedb(i8* %4, i32 584, %struct.pkginfo** null), !dbg !595
  %6 = load i8*, i8** @updatefnrest, align 8, !dbg !596
  store i8 0, i8* %6, align 1, !dbg !597
  store i32 -1, i32* @updateslength, align 4, !dbg !598
  %7 = load i8*, i8** @updatefnbuf, align 8, !dbg !599
  %8 = call i32 @scandir(i8* %7, %struct.dirent*** %1, i32 (%struct.dirent*)* @ulist_select, i32 (%struct.dirent**, %struct.dirent**)* @alphasort), !dbg !600
  store i32 %8, i32* %2, align 4, !dbg !601
  %9 = load i32, i32* %2, align 4, !dbg !602
  %10 = icmp eq i32 %9, -1, !dbg !604
  br i1 %10, label %11, label %14, !dbg !605

; <label>:11:                                     ; preds = %0
  %12 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.25, i32 0, i32 0)) #8, !dbg !606
  %13 = load i8*, i8** @updatefnbuf, align 8, !dbg !607
  call void (i8*, ...) @ohshite(i8* %12, i8* %13) #10, !dbg !608
  unreachable, !dbg !610

; <label>:14:                                     ; preds = %0
  %15 = load i32, i32* %2, align 4, !dbg !611
  %16 = icmp ne i32 %15, 0, !dbg !611
  br i1 %16, label %17, label %84, !dbg !613

; <label>:17:                                     ; preds = %14
  store i32 0, i32* %3, align 4, !dbg !614
  br label %18, !dbg !617

; <label>:18:                                     ; preds = %34, %17
  %19 = load i32, i32* %3, align 4, !dbg !618
  %20 = load i32, i32* %2, align 4, !dbg !621
  %21 = icmp slt i32 %19, %20, !dbg !622
  br i1 %21, label %22, label %37, !dbg !623

; <label>:22:                                     ; preds = %18
  %23 = load i8*, i8** @updatefnrest, align 8, !dbg !624
  %24 = load i32, i32* %3, align 4, !dbg !626
  %25 = sext i32 %24 to i64, !dbg !627
  %26 = load %struct.dirent**, %struct.dirent*** %1, align 8, !dbg !627
  %27 = getelementptr inbounds %struct.dirent*, %struct.dirent** %26, i64 %25, !dbg !627
  %28 = load %struct.dirent*, %struct.dirent** %27, align 8, !dbg !627
  %29 = getelementptr inbounds %struct.dirent, %struct.dirent* %28, i32 0, i32 4, !dbg !628
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* %29, i32 0, i32 0, !dbg !627
  %31 = call i8* @strcpy(i8* %23, i8* %30) #8, !dbg !629
  %32 = load i8*, i8** @updatefnbuf, align 8, !dbg !630
  %33 = call i32 @parsedb(i8* %32, i32 585, %struct.pkginfo** null), !dbg !631
  br label %34, !dbg !632

; <label>:34:                                     ; preds = %22
  %35 = load i32, i32* %3, align 4, !dbg !633
  %36 = add nsw i32 %35, 1, !dbg !633
  store i32 %36, i32* %3, align 4, !dbg !633
  br label %18, !dbg !635, !llvm.loop !636

; <label>:37:                                     ; preds = %18
  %38 = load i32, i32* @cstatus, align 4, !dbg !638
  %39 = icmp uge i32 %38, 3, !dbg !640
  br i1 %39, label %40, label %68, !dbg !641

; <label>:40:                                     ; preds = %37
  %41 = load i8*, i8** @statusfile, align 8, !dbg !642
  call void @writedb(i8* %41, i32 2), !dbg !644
  store i32 0, i32* %3, align 4, !dbg !645
  br label %42, !dbg !647

; <label>:42:                                     ; preds = %63, %40
  %43 = load i32, i32* %3, align 4, !dbg !648
  %44 = load i32, i32* %2, align 4, !dbg !651
  %45 = icmp slt i32 %43, %44, !dbg !652
  br i1 %45, label %46, label %66, !dbg !653

; <label>:46:                                     ; preds = %42
  %47 = load i8*, i8** @updatefnrest, align 8, !dbg !654
  %48 = load i32, i32* %3, align 4, !dbg !656
  %49 = sext i32 %48 to i64, !dbg !657
  %50 = load %struct.dirent**, %struct.dirent*** %1, align 8, !dbg !657
  %51 = getelementptr inbounds %struct.dirent*, %struct.dirent** %50, i64 %49, !dbg !657
  %52 = load %struct.dirent*, %struct.dirent** %51, align 8, !dbg !657
  %53 = getelementptr inbounds %struct.dirent, %struct.dirent* %52, i32 0, i32 4, !dbg !658
  %54 = getelementptr inbounds [256 x i8], [256 x i8]* %53, i32 0, i32 0, !dbg !657
  %55 = call i8* @strcpy(i8* %47, i8* %54) #8, !dbg !659
  %56 = load i8*, i8** @updatefnbuf, align 8, !dbg !660
  %57 = call i32 @unlink(i8* %56) #8, !dbg !662
  %58 = icmp ne i32 %57, 0, !dbg !662
  br i1 %58, label %59, label %62, !dbg !663

; <label>:59:                                     ; preds = %46
  %60 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.26, i32 0, i32 0)) #8, !dbg !664
  %61 = load i8*, i8** @updatefnbuf, align 8, !dbg !665
  call void (i8*, ...) @ohshite(i8* %60, i8* %61) #10, !dbg !666
  unreachable, !dbg !668

; <label>:62:                                     ; preds = %46
  br label %63, !dbg !669

; <label>:63:                                     ; preds = %62
  %64 = load i32, i32* %3, align 4, !dbg !670
  %65 = add nsw i32 %64, 1, !dbg !670
  store i32 %65, i32* %3, align 4, !dbg !670
  br label %42, !dbg !672, !llvm.loop !673

; <label>:66:                                     ; preds = %42
  %67 = load i8*, i8** @updatesdir, align 8, !dbg !675
  call void @dir_sync_path(i8* %67), !dbg !676
  br label %68, !dbg !677

; <label>:68:                                     ; preds = %66, %37
  store i32 0, i32* %3, align 4, !dbg !678
  br label %69, !dbg !680

; <label>:69:                                     ; preds = %80, %68
  %70 = load i32, i32* %3, align 4, !dbg !681
  %71 = load i32, i32* %2, align 4, !dbg !684
  %72 = icmp slt i32 %70, %71, !dbg !685
  br i1 %72, label %73, label %83, !dbg !686

; <label>:73:                                     ; preds = %69
  %74 = load i32, i32* %3, align 4, !dbg !687
  %75 = sext i32 %74 to i64, !dbg !688
  %76 = load %struct.dirent**, %struct.dirent*** %1, align 8, !dbg !688
  %77 = getelementptr inbounds %struct.dirent*, %struct.dirent** %76, i64 %75, !dbg !688
  %78 = load %struct.dirent*, %struct.dirent** %77, align 8, !dbg !688
  %79 = bitcast %struct.dirent* %78 to i8*, !dbg !688
  call void @free(i8* %79) #8, !dbg !689
  br label %80, !dbg !689

; <label>:80:                                     ; preds = %73
  %81 = load i32, i32* %3, align 4, !dbg !690
  %82 = add nsw i32 %81, 1, !dbg !690
  store i32 %82, i32* %3, align 4, !dbg !690
  br label %69, !dbg !692, !llvm.loop !693

; <label>:83:                                     ; preds = %69
  br label %84, !dbg !695

; <label>:84:                                     ; preds = %83, %14
  %85 = load %struct.dirent**, %struct.dirent*** %1, align 8, !dbg !696
  %86 = bitcast %struct.dirent** %85 to i8*, !dbg !696
  call void @free(i8* %86) #8, !dbg !697
  store i32 0, i32* @nextupdate, align 4, !dbg !698
  ret void, !dbg !699
}

declare i32 @parsedb(i8*, i32, %struct.pkginfo**) #3

; Function Attrs: nounwind uwtable
define internal void @createimptmp() #0 !dbg !700 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !701, metadata !266), !dbg !702
  %2 = load volatile i32, i32* @onerr_abort, align 4, !dbg !703
  %3 = add nsw i32 %2, 1, !dbg !703
  store volatile i32 %3, i32* @onerr_abort, align 4, !dbg !703
  %4 = load i8*, i8** @importanttmpfile, align 8, !dbg !704
  %5 = call %struct._IO_FILE* @fopen(i8* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0)), !dbg !705
  store %struct._IO_FILE* %5, %struct._IO_FILE** @importanttmp, align 8, !dbg !706
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @importanttmp, align 8, !dbg !707
  %7 = icmp ne %struct._IO_FILE* %6, null, !dbg !707
  br i1 %7, label %11, label %8, !dbg !709

; <label>:8:                                      ; preds = %0
  %9 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.30, i32 0, i32 0)) #8, !dbg !710
  %10 = load i8*, i8** @importanttmpfile, align 8, !dbg !711
  call void (i8*, ...) @ohshite(i8* %9, i8* %10) #10, !dbg !712
  unreachable, !dbg !714

; <label>:11:                                     ; preds = %0
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @importanttmp, align 8, !dbg !715
  %13 = call i32 @fileno(%struct._IO_FILE* %12) #8, !dbg !716
  %14 = load i8*, i8** @importanttmpfile, align 8, !dbg !717
  call void @setcloexec(i32 %13, i8* %14), !dbg !718
  store i32 0, i32* %1, align 4, !dbg !720
  br label %15, !dbg !722

; <label>:15:                                     ; preds = %21, %11
  %16 = load i32, i32* %1, align 4, !dbg !723
  %17 = icmp slt i32 %16, 512, !dbg !726
  br i1 %17, label %18, label %24, !dbg !727

; <label>:18:                                     ; preds = %15
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @importanttmp, align 8, !dbg !728
  %20 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), %struct._IO_FILE* %19), !dbg !730
  br label %21, !dbg !730

; <label>:21:                                     ; preds = %18
  %22 = load i32, i32* %1, align 4, !dbg !731
  %23 = add nsw i32 %22, 1, !dbg !731
  store i32 %23, i32* %1, align 4, !dbg !731
  br label %15, !dbg !733, !llvm.loop !734

; <label>:24:                                     ; preds = %15
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @importanttmp, align 8, !dbg !736
  %26 = call i32 @ferror(%struct._IO_FILE* %25) #8, !dbg !738
  %27 = icmp ne i32 %26, 0, !dbg !738
  br i1 %27, label %28, label %31, !dbg !739

; <label>:28:                                     ; preds = %24
  %29 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.32, i32 0, i32 0)) #8, !dbg !740
  %30 = load i8*, i8** @importanttmpfile, align 8, !dbg !741
  call void (i8*, ...) @ohshite(i8* %29, i8* %30) #10, !dbg !742
  unreachable, !dbg !744

; <label>:31:                                     ; preds = %24
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @importanttmp, align 8, !dbg !745
  %33 = call i32 @fflush(%struct._IO_FILE* %32), !dbg !747
  %34 = icmp ne i32 %33, 0, !dbg !747
  br i1 %34, label %35, label %38, !dbg !748

; <label>:35:                                     ; preds = %31
  %36 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.33, i32 0, i32 0)) #8, !dbg !749
  %37 = load i8*, i8** @importanttmpfile, align 8, !dbg !750
  call void (i8*, ...) @ohshite(i8* %36, i8* %37) #10, !dbg !751
  unreachable, !dbg !753

; <label>:38:                                     ; preds = %31
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @importanttmp, align 8, !dbg !754
  %40 = call i32 @fseek(%struct._IO_FILE* %39, i64 0, i32 0), !dbg !756
  %41 = icmp ne i32 %40, 0, !dbg !756
  br i1 %41, label %42, label %45, !dbg !757

; <label>:42:                                     ; preds = %38
  %43 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.34, i32 0, i32 0)) #8, !dbg !758
  %44 = load i8*, i8** @importanttmpfile, align 8, !dbg !759
  call void (i8*, ...) @ohshite(i8* %43, i8* %44) #10, !dbg !760
  unreachable, !dbg !762

; <label>:45:                                     ; preds = %38
  %46 = load volatile i32, i32* @onerr_abort, align 4, !dbg !763
  %47 = add nsw i32 %46, -1, !dbg !763
  store volatile i32 %47, i32* @onerr_abort, align 4, !dbg !763
  ret void, !dbg !764
}

declare void @varbuf_init(%struct.varbuf*, i64) #3

declare void @trig_fixup_awaiters(i32) #3

declare void @trig_incorporate(i32) #3

; Function Attrs: nounwind uwtable
define i32 @modstatdb_get_status() #0 !dbg !765 {
  %1 = load i32, i32* @cstatus, align 4, !dbg !768
  ret i32 %1, !dbg !769
}

; Function Attrs: nounwind uwtable
define void @modstatdb_checkpoint() #0 !dbg !770 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !771, metadata !266), !dbg !772
  %2 = load i32, i32* @cstatus, align 4, !dbg !773
  %3 = icmp ult i32 %2, 3, !dbg !775
  br i1 %3, label %4, label %6, !dbg !776

; <label>:4:                                      ; preds = %0
  %5 = load i32, i32* @cstatus, align 4, !dbg !777
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i32 338, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.modstatdb_checkpoint, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i32 0, i32 0), i32 %5) #10, !dbg !778
  unreachable, !dbg !778

; <label>:6:                                      ; preds = %0
  %7 = load i8*, i8** @statusfile, align 8, !dbg !779
  call void @writedb(i8* %7, i32 2), !dbg !780
  store i32 0, i32* %1, align 4, !dbg !781
  br label %8, !dbg !783

; <label>:8:                                      ; preds = %29, %6
  %9 = load i32, i32* %1, align 4, !dbg !784
  %10 = load i32, i32* @nextupdate, align 4, !dbg !787
  %11 = icmp slt i32 %9, %10, !dbg !788
  br i1 %11, label %12, label %32, !dbg !789

; <label>:12:                                     ; preds = %8
  %13 = load i8*, i8** @updatefnrest, align 8, !dbg !790
  %14 = load i32, i32* %1, align 4, !dbg !792
  %15 = call i32 (i8*, i8*, ...) @sprintf(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32 %14) #8, !dbg !793
  %16 = load i8*, i8** @updatefnrest, align 8, !dbg !794
  %17 = call i64 @strlen(i8* %16) #9, !dbg !796
  %18 = icmp ugt i64 %17, 10, !dbg !797
  br i1 %18, label %19, label %21, !dbg !798

; <label>:19:                                     ; preds = %12
  %20 = load i8*, i8** @updatefnrest, align 8, !dbg !799
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i32 348, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.modstatdb_checkpoint, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.15, i32 0, i32 0), i8* %20, i32 10) #10, !dbg !800
  unreachable, !dbg !800

; <label>:21:                                     ; preds = %12
  %22 = load i8*, i8** @updatefnbuf, align 8, !dbg !801
  %23 = call i32 @unlink(i8* %22) #8, !dbg !803
  %24 = icmp ne i32 %23, 0, !dbg !803
  br i1 %24, label %25, label %28, !dbg !804

; <label>:25:                                     ; preds = %21
  %26 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.16, i32 0, i32 0)) #8, !dbg !805
  %27 = load i8*, i8** @updatefnbuf, align 8, !dbg !806
  call void (i8*, ...) @ohshite(i8* %26, i8* %27) #10, !dbg !807
  unreachable, !dbg !809

; <label>:28:                                     ; preds = %21
  br label %29, !dbg !810

; <label>:29:                                     ; preds = %28
  %30 = load i32, i32* %1, align 4, !dbg !811
  %31 = add nsw i32 %30, 1, !dbg !811
  store i32 %31, i32* %1, align 4, !dbg !811
  br label %8, !dbg !813, !llvm.loop !814

; <label>:32:                                     ; preds = %8
  %33 = load i8*, i8** @updatesdir, align 8, !dbg !816
  call void @dir_sync_path(i8* %33), !dbg !817
  store i32 0, i32* @nextupdate, align 4, !dbg !818
  ret void, !dbg !819
}

declare void @writedb(i8*, i32) #3

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: nounwind
declare i32 @unlink(i8*) #2

declare void @dir_sync_path(i8*) #3

; Function Attrs: nounwind uwtable
define void @modstatdb_shutdown() #0 !dbg !820 {
  %1 = load i32, i32* @cflags, align 4, !dbg !821
  %2 = icmp uge i32 %1, 512, !dbg !823
  br i1 %2, label %3, label %5, !dbg !824

; <label>:3:                                      ; preds = %0
  %4 = load i8*, i8** @availablefile, align 8, !dbg !825
  call void @writedb(i8* %4, i32 1), !dbg !826
  br label %5, !dbg !826

; <label>:5:                                      ; preds = %3, %0
  %6 = load i32, i32* @cstatus, align 4, !dbg !827
  switch i32 %6, label %13 [
    i32 3, label %7
    i32 1, label %12
  ], !dbg !828

; <label>:7:                                      ; preds = %5
  call void @modstatdb_checkpoint(), !dbg !829
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @importanttmp, align 8, !dbg !831
  %9 = call i32 @fclose(%struct._IO_FILE* %8), !dbg !832
  %10 = load i8*, i8** @importanttmpfile, align 8, !dbg !833
  %11 = call i32 @unlink(i8* %10) #8, !dbg !834
  call void @varbuf_destroy(%struct.varbuf* @uvb), !dbg !835
  br label %12, !dbg !835

; <label>:12:                                     ; preds = %5, %7
  call void @modstatdb_unlock(), !dbg !836
  br label %13, !dbg !836

; <label>:13:                                     ; preds = %5, %12
  br label %14, !dbg !837

; <label>:14:                                     ; preds = %13
  call void @pkg_hash_reset(), !dbg !838
  call void @modstatdb_done(), !dbg !839
  ret void, !dbg !840
}

declare i32 @fclose(%struct._IO_FILE*) #3

declare void @varbuf_destroy(%struct.varbuf*) #3

declare void @pkg_hash_reset() #3

; Function Attrs: nounwind uwtable
define void @modstatdb_note(%struct.pkginfo*) #0 !dbg !841 {
  %2 = alloca %struct.pkginfo*, align 8
  %3 = alloca %struct.trigaw*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %2, metadata !1037, metadata !266), !dbg !1038
  call void @llvm.dbg.declare(metadata %struct.trigaw** %3, metadata !1039, metadata !266), !dbg !1040
  %4 = load volatile i32, i32* @onerr_abort, align 4, !dbg !1041
  %5 = add nsw i32 %4, 1, !dbg !1041
  store volatile i32 %5, i32* @onerr_abort, align 4, !dbg !1041
  %6 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1042
  %7 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %6, i32 0, i32 4, !dbg !1044
  %8 = load i32, i32* %7, align 8, !dbg !1044
  %9 = icmp ne i32 %8, 6, !dbg !1045
  br i1 %9, label %10, label %18, !dbg !1046

; <label>:10:                                     ; preds = %1
  %11 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1047
  %12 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %11, i32 0, i32 4, !dbg !1048
  %13 = load i32, i32* %12, align 8, !dbg !1048
  %14 = icmp ne i32 %13, 5, !dbg !1049
  br i1 %14, label %15, label %18, !dbg !1050

; <label>:15:                                     ; preds = %10
  %16 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1052
  %17 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %16, i32 0, i32 15, !dbg !1053
  store %struct.trigpend* null, %struct.trigpend** %17, align 8, !dbg !1054
  br label %18, !dbg !1052

; <label>:18:                                     ; preds = %15, %10, %1
  %19 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1055
  %20 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %19, i32 0, i32 4, !dbg !1057
  %21 = load i32, i32* %20, align 8, !dbg !1057
  %22 = icmp ule i32 %21, 1, !dbg !1058
  br i1 %22, label %23, label %46, !dbg !1059

; <label>:23:                                     ; preds = %18
  %24 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1060
  %25 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %24, i32 0, i32 13, !dbg !1063
  %26 = getelementptr inbounds %struct.anon, %struct.anon* %25, i32 0, i32 0, !dbg !1064
  %27 = load %struct.trigaw*, %struct.trigaw** %26, align 8, !dbg !1064
  store %struct.trigaw* %27, %struct.trigaw** %3, align 8, !dbg !1065
  br label %28, !dbg !1066

; <label>:28:                                     ; preds = %34, %23
  %29 = load %struct.trigaw*, %struct.trigaw** %3, align 8, !dbg !1067
  %30 = icmp ne %struct.trigaw* %29, null, !dbg !1070
  br i1 %30, label %31, label %39, !dbg !1070

; <label>:31:                                     ; preds = %28
  %32 = load %struct.trigaw*, %struct.trigaw** %3, align 8, !dbg !1071
  %33 = getelementptr inbounds %struct.trigaw, %struct.trigaw* %32, i32 0, i32 0, !dbg !1072
  store %struct.pkginfo* null, %struct.pkginfo** %33, align 8, !dbg !1073
  br label %34, !dbg !1071

; <label>:34:                                     ; preds = %31
  %35 = load %struct.trigaw*, %struct.trigaw** %3, align 8, !dbg !1074
  %36 = getelementptr inbounds %struct.trigaw, %struct.trigaw* %35, i32 0, i32 3, !dbg !1076
  %37 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %36, i32 0, i32 0, !dbg !1077
  %38 = load %struct.trigaw*, %struct.trigaw** %37, align 8, !dbg !1077
  store %struct.trigaw* %38, %struct.trigaw** %3, align 8, !dbg !1078
  br label %28, !dbg !1079, !llvm.loop !1080

; <label>:39:                                     ; preds = %28
  %40 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1082
  %41 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %40, i32 0, i32 13, !dbg !1083
  %42 = getelementptr inbounds %struct.anon, %struct.anon* %41, i32 0, i32 1, !dbg !1084
  store %struct.trigaw* null, %struct.trigaw** %42, align 8, !dbg !1085
  %43 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1086
  %44 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %43, i32 0, i32 13, !dbg !1087
  %45 = getelementptr inbounds %struct.anon, %struct.anon* %44, i32 0, i32 0, !dbg !1088
  store %struct.trigaw* null, %struct.trigaw** %45, align 8, !dbg !1089
  br label %46, !dbg !1090

; <label>:46:                                     ; preds = %39, %18
  %47 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1091
  %48 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %47, i32 0, i32 19, !dbg !1093
  %49 = load i8, i8* %48, align 1, !dbg !1093
  %50 = trunc i8 %49 to i1, !dbg !1093
  br i1 %50, label %51, label %66, !dbg !1094

; <label>:51:                                     ; preds = %46
  %52 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1095
  %53 = call i8* @pkg_status_name(%struct.pkginfo* %52), !dbg !1097
  %54 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1098
  %55 = call i8* @pkg_name(%struct.pkginfo* %54, i32 3), !dbg !1099
  %56 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1100
  %57 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %56, i32 0, i32 9, !dbg !1101
  %58 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %57, i32 0, i32 11, !dbg !1102
  %59 = call i8* @versiondescribe(%struct.dpkg_version* %58, i32 1), !dbg !1103
  call void (i8*, ...) @log_message(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0), i8* %53, i8* %55, i8* %59), !dbg !1104
  %60 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1106
  %61 = call i8* @pkg_name(%struct.pkginfo* %60, i32 1), !dbg !1107
  %62 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1108
  %63 = call i8* @pkg_status_name(%struct.pkginfo* %62), !dbg !1109
  call void (i8*, ...) @statusfd_send(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0), i8* %61, i8* %63), !dbg !1110
  %64 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1111
  %65 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %64, i32 0, i32 19, !dbg !1112
  store i8 0, i8* %65, align 1, !dbg !1113
  br label %66, !dbg !1114

; <label>:66:                                     ; preds = %51, %46
  %67 = load i32, i32* @cstatus, align 4, !dbg !1115
  %68 = icmp uge i32 %67, 3, !dbg !1117
  br i1 %68, label %69, label %71, !dbg !1118

; <label>:69:                                     ; preds = %66
  %70 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1119
  call void @modstatdb_note_core(%struct.pkginfo* %70), !dbg !1120
  br label %71, !dbg !1120

; <label>:71:                                     ; preds = %69, %66
  %72 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1121
  %73 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %72, i32 0, i32 15, !dbg !1123
  %74 = load %struct.trigpend*, %struct.trigpend** %73, align 8, !dbg !1123
  %75 = icmp ne %struct.trigpend* %74, null, !dbg !1121
  br i1 %75, label %83, label %76, !dbg !1124

; <label>:76:                                     ; preds = %71
  %77 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1125
  %78 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %77, i32 0, i32 14, !dbg !1127
  %79 = load %struct.trigaw*, %struct.trigaw** %78, align 8, !dbg !1127
  %80 = icmp ne %struct.trigaw* %79, null, !dbg !1125
  br i1 %80, label %81, label %83, !dbg !1128

; <label>:81:                                     ; preds = %76
  %82 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1129
  call void @trig_clear_awaiters(%struct.pkginfo* %82), !dbg !1131
  br label %83, !dbg !1132

; <label>:83:                                     ; preds = %81, %76, %71
  %84 = load volatile i32, i32* @onerr_abort, align 4, !dbg !1133
  %85 = add nsw i32 %84, -1, !dbg !1133
  store volatile i32 %85, i32* @onerr_abort, align 4, !dbg !1133
  ret void, !dbg !1134
}

declare void @log_message(i8*, ...) #3

declare i8* @pkg_status_name(%struct.pkginfo*) #3

declare i8* @pkg_name(%struct.pkginfo*, i32) #3

declare i8* @versiondescribe(%struct.dpkg_version*, i32) #3

declare void @statusfd_send(i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal void @modstatdb_note_core(%struct.pkginfo*) #0 !dbg !1135 {
  %2 = alloca %struct.pkginfo*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %2, metadata !1136, metadata !266), !dbg !1137
  %3 = load i32, i32* @cstatus, align 4, !dbg !1138
  %4 = icmp ult i32 %3, 3, !dbg !1140
  br i1 %4, label %5, label %7, !dbg !1141

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* @cstatus, align 4, !dbg !1142
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i32 386, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.modstatdb_note_core, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i32 0, i32 0), i32 %6) #10, !dbg !1143
  unreachable, !dbg !1143

; <label>:7:                                      ; preds = %1
  call void @varbuf_reset(%struct.varbuf* @uvb), !dbg !1144
  %8 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1145
  %9 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1146
  %10 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %9, i32 0, i32 9, !dbg !1147
  call void @varbufrecord(%struct.varbuf* @uvb, %struct.pkginfo* %8, %struct.pkgbin* %10), !dbg !1148
  %11 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @uvb, i32 0, i32 2), align 8, !dbg !1149
  %12 = load i64, i64* getelementptr inbounds (%struct.varbuf, %struct.varbuf* @uvb, i32 0, i32 0), align 8, !dbg !1151
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @importanttmp, align 8, !dbg !1152
  %14 = call i64 @fwrite(i8* %11, i64 1, i64 %12, %struct._IO_FILE* %13), !dbg !1153
  %15 = load i64, i64* getelementptr inbounds (%struct.varbuf, %struct.varbuf* @uvb, i32 0, i32 0), align 8, !dbg !1154
  %16 = icmp ne i64 %14, %15, !dbg !1155
  br i1 %16, label %17, label %21, !dbg !1156

; <label>:17:                                     ; preds = %7
  %18 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.35, i32 0, i32 0)) #8, !dbg !1157
  %19 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1158
  %20 = call i8* @pkg_name(%struct.pkginfo* %19, i32 1), !dbg !1159
  call void (i8*, ...) @ohshite(i8* %18, i8* %20) #10, !dbg !1160
  unreachable, !dbg !1162

; <label>:21:                                     ; preds = %7
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @importanttmp, align 8, !dbg !1163
  %23 = call i32 @fflush(%struct._IO_FILE* %22), !dbg !1165
  %24 = icmp ne i32 %23, 0, !dbg !1165
  br i1 %24, label %25, label %29, !dbg !1166

; <label>:25:                                     ; preds = %21
  %26 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.36, i32 0, i32 0)) #8, !dbg !1167
  %27 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1168
  %28 = call i8* @pkg_name(%struct.pkginfo* %27, i32 1), !dbg !1169
  call void (i8*, ...) @ohshite(i8* %26, i8* %28) #10, !dbg !1170
  unreachable, !dbg !1172

; <label>:29:                                     ; preds = %21
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @importanttmp, align 8, !dbg !1173
  %31 = call i32 @fileno(%struct._IO_FILE* %30) #8, !dbg !1175
  %32 = load i64, i64* getelementptr inbounds (%struct.varbuf, %struct.varbuf* @uvb, i32 0, i32 0), align 8, !dbg !1176
  %33 = call i32 @ftruncate(i32 %31, i64 %32) #8, !dbg !1177
  %34 = icmp ne i32 %33, 0, !dbg !1179
  br i1 %34, label %35, label %39, !dbg !1180

; <label>:35:                                     ; preds = %29
  %36 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.37, i32 0, i32 0)) #8, !dbg !1181
  %37 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1182
  %38 = call i8* @pkg_name(%struct.pkginfo* %37, i32 1), !dbg !1183
  call void (i8*, ...) @ohshite(i8* %36, i8* %38) #10, !dbg !1184
  unreachable, !dbg !1185

; <label>:39:                                     ; preds = %29
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @importanttmp, align 8, !dbg !1186
  %41 = call i32 @fileno(%struct._IO_FILE* %40) #8, !dbg !1188
  %42 = call i32 @fsync(i32 %41), !dbg !1189
  %43 = icmp ne i32 %42, 0, !dbg !1191
  br i1 %43, label %44, label %48, !dbg !1192

; <label>:44:                                     ; preds = %39
  %45 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.38, i32 0, i32 0)) #8, !dbg !1193
  %46 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1194
  %47 = call i8* @pkg_name(%struct.pkginfo* %46, i32 1), !dbg !1195
  call void (i8*, ...) @ohshite(i8* %45, i8* %47) #10, !dbg !1196
  unreachable, !dbg !1197

; <label>:48:                                     ; preds = %39
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @importanttmp, align 8, !dbg !1198
  %50 = call i32 @fclose(%struct._IO_FILE* %49), !dbg !1200
  %51 = icmp ne i32 %50, 0, !dbg !1200
  br i1 %51, label %52, label %56, !dbg !1201

; <label>:52:                                     ; preds = %48
  %53 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.39, i32 0, i32 0)) #8, !dbg !1202
  %54 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1203
  %55 = call i8* @pkg_name(%struct.pkginfo* %54, i32 1), !dbg !1204
  call void (i8*, ...) @ohshite(i8* %53, i8* %55) #10, !dbg !1205
  unreachable, !dbg !1207

; <label>:56:                                     ; preds = %48
  %57 = load i8*, i8** @updatefnrest, align 8, !dbg !1208
  %58 = load i32, i32* @nextupdate, align 4, !dbg !1209
  %59 = call i32 (i8*, i8*, ...) @sprintf(i8* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32 %58) #8, !dbg !1210
  %60 = load i8*, i8** @importanttmpfile, align 8, !dbg !1211
  %61 = load i8*, i8** @updatefnbuf, align 8, !dbg !1213
  %62 = call i32 @rename(i8* %60, i8* %61) #8, !dbg !1214
  %63 = icmp ne i32 %62, 0, !dbg !1214
  br i1 %63, label %64, label %68, !dbg !1215

; <label>:64:                                     ; preds = %56
  %65 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.40, i32 0, i32 0)) #8, !dbg !1216
  %66 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1217
  %67 = call i8* @pkg_name(%struct.pkginfo* %66, i32 1), !dbg !1218
  call void (i8*, ...) @ohshite(i8* %65, i8* %67) #10, !dbg !1219
  unreachable, !dbg !1221

; <label>:68:                                     ; preds = %56
  %69 = load i8*, i8** @updatesdir, align 8, !dbg !1222
  call void @dir_sync_path(i8* %69), !dbg !1223
  %70 = load i8*, i8** @updatefnrest, align 8, !dbg !1224
  %71 = call i64 @strlen(i8* %70) #9, !dbg !1226
  %72 = icmp ugt i64 %71, 10, !dbg !1227
  br i1 %72, label %73, label %75, !dbg !1228

; <label>:73:                                     ; preds = %68
  %74 = load i8*, i8** @updatefnrest, align 8, !dbg !1229
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i32 416, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.modstatdb_note_core, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.15, i32 0, i32 0), i8* %74, i32 10) #10, !dbg !1230
  unreachable, !dbg !1230

; <label>:75:                                     ; preds = %68
  %76 = load i32, i32* @nextupdate, align 4, !dbg !1231
  %77 = add nsw i32 %76, 1, !dbg !1231
  store i32 %77, i32* @nextupdate, align 4, !dbg !1231
  %78 = load i32, i32* @nextupdate, align 4, !dbg !1232
  %79 = icmp sgt i32 %78, 250, !dbg !1234
  br i1 %79, label %80, label %81, !dbg !1235

; <label>:80:                                     ; preds = %75
  call void @modstatdb_checkpoint(), !dbg !1236
  store i32 0, i32* @nextupdate, align 4, !dbg !1238
  br label %81, !dbg !1239

; <label>:81:                                     ; preds = %80, %75
  call void @createimptmp(), !dbg !1240
  ret void, !dbg !1241
}

declare void @trig_clear_awaiters(%struct.pkginfo*) #3

; Function Attrs: nounwind uwtable
define void @modstatdb_note_ifwrite(%struct.pkginfo*) #0 !dbg !1242 {
  %2 = alloca %struct.pkginfo*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %2, metadata !1243, metadata !266), !dbg !1244
  %3 = load i32, i32* @cstatus, align 4, !dbg !1245
  %4 = icmp uge i32 %3, 3, !dbg !1247
  br i1 %4, label %5, label %7, !dbg !1248

; <label>:5:                                      ; preds = %1
  %6 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !1249
  call void @modstatdb_note(%struct.pkginfo* %6), !dbg !1250
  br label %7, !dbg !1250

; <label>:7:                                      ; preds = %5, %1
  ret void, !dbg !1251
}

declare i32 @scandir(i8*, %struct.dirent***, i32 (%struct.dirent*)*, i32 (%struct.dirent**, %struct.dirent**)*) #3

; Function Attrs: nounwind uwtable
define internal i32 @ulist_select(%struct.dirent*) #0 !dbg !1252 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dirent*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.dirent* %0, %struct.dirent** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.dirent** %3, metadata !1257, metadata !266), !dbg !1258
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1259, metadata !266), !dbg !1260
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1261, metadata !266), !dbg !1262
  %6 = load %struct.dirent*, %struct.dirent** %3, align 8, !dbg !1263
  %7 = getelementptr inbounds %struct.dirent, %struct.dirent* %6, i32 0, i32 4, !dbg !1265
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i32 0, i32 0, !dbg !1263
  store i8* %8, i8** %4, align 8, !dbg !1266
  store i32 0, i32* %5, align 4, !dbg !1267
  br label %9, !dbg !1268

; <label>:9:                                      ; preds = %20, %1
  %10 = load i8*, i8** %4, align 8, !dbg !1269
  %11 = load i8, i8* %10, align 1, !dbg !1272
  %12 = icmp ne i8 %11, 0, !dbg !1273
  br i1 %12, label %13, label %25, !dbg !1273

; <label>:13:                                     ; preds = %9
  %14 = load i8*, i8** %4, align 8, !dbg !1274
  %15 = load i8, i8* %14, align 1, !dbg !1276
  %16 = sext i8 %15 to i32, !dbg !1276
  %17 = call zeroext i1 @c_isdigit(i32 %16), !dbg !1277
  br i1 %17, label %19, label %18, !dbg !1278

; <label>:18:                                     ; preds = %13
  store i32 0, i32* %2, align 4, !dbg !1279
  br label %49, !dbg !1279

; <label>:19:                                     ; preds = %13
  br label %20, !dbg !1280

; <label>:20:                                     ; preds = %19
  %21 = load i8*, i8** %4, align 8, !dbg !1282
  %22 = getelementptr inbounds i8, i8* %21, i32 1, !dbg !1282
  store i8* %22, i8** %4, align 8, !dbg !1282
  %23 = load i32, i32* %5, align 4, !dbg !1284
  %24 = add nsw i32 %23, 1, !dbg !1284
  store i32 %24, i32* %5, align 4, !dbg !1284
  br label %9, !dbg !1285, !llvm.loop !1286

; <label>:25:                                     ; preds = %9
  %26 = load i32, i32* %5, align 4, !dbg !1288
  %27 = icmp sgt i32 %26, 10, !dbg !1290
  br i1 %27, label %28, label %34, !dbg !1291

; <label>:28:                                     ; preds = %25
  %29 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.27, i32 0, i32 0)) #8, !dbg !1292
  %30 = load %struct.dirent*, %struct.dirent** %3, align 8, !dbg !1293
  %31 = getelementptr inbounds %struct.dirent, %struct.dirent* %30, i32 0, i32 4, !dbg !1294
  %32 = getelementptr inbounds [256 x i8], [256 x i8]* %31, i32 0, i32 0, !dbg !1293
  %33 = load i32, i32* %5, align 4, !dbg !1295
  call void (i8*, ...) @ohshit(i8* %29, i8* %32, i32 %33, i32 10) #10, !dbg !1296
  unreachable, !dbg !1298

; <label>:34:                                     ; preds = %25
  %35 = load i32, i32* @updateslength, align 4, !dbg !1299
  %36 = icmp eq i32 %35, -1, !dbg !1301
  br i1 %36, label %37, label %39, !dbg !1302

; <label>:37:                                     ; preds = %34
  %38 = load i32, i32* %5, align 4, !dbg !1303
  store i32 %38, i32* @updateslength, align 4, !dbg !1305
  br label %48, !dbg !1306

; <label>:39:                                     ; preds = %34
  %40 = load i32, i32* %5, align 4, !dbg !1307
  %41 = load i32, i32* @updateslength, align 4, !dbg !1309
  %42 = icmp ne i32 %40, %41, !dbg !1310
  br i1 %42, label %43, label %47, !dbg !1311

; <label>:43:                                     ; preds = %39
  %44 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.28, i32 0, i32 0)) #8, !dbg !1312
  %45 = load i32, i32* %5, align 4, !dbg !1313
  %46 = load i32, i32* @updateslength, align 4, !dbg !1314
  call void (i8*, ...) @ohshit(i8* %44, i32 %45, i32 %46) #10, !dbg !1315
  unreachable, !dbg !1317

; <label>:47:                                     ; preds = %39
  br label %48

; <label>:48:                                     ; preds = %47, %37
  store i32 1, i32* %2, align 4, !dbg !1318
  br label %49, !dbg !1318

; <label>:49:                                     ; preds = %48, %18
  %50 = load i32, i32* %2, align 4, !dbg !1319
  ret i32 %50, !dbg !1319
}

; Function Attrs: nounwind readonly
declare i32 @alphasort(%struct.dirent**, %struct.dirent**) #4

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @c_isdigit(i32) #7 !dbg !1320 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1323, metadata !266), !dbg !1324
  %3 = load i32, i32* %2, align 4, !dbg !1325
  %4 = call zeroext i1 @c_isbits(i32 %3, i32 32), !dbg !1326
  ret i1 %4, !dbg !1327
}

declare zeroext i1 @c_isbits(i32, i32) #3

declare %struct._IO_FILE* @fopen(i8*, i8*) #3

declare void @setcloexec(i32, i8*) #3

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #2

declare i32 @fputs(i8*, %struct._IO_FILE*) #3

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #2

declare i32 @fflush(%struct._IO_FILE*) #3

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #3

declare void @varbuf_reset(%struct.varbuf*) #3

declare void @varbufrecord(%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*) #3

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #3

; Function Attrs: nounwind
declare i32 @ftruncate(i32, i64) #2

declare i32 @fsync(i32) #3

; Function Attrs: nounwind
declare i32 @rename(i8*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!257, !258}
!llvm.ident = !{!259}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !155, globals: !157)
!1 = !DIFile(filename: "[inter]lib--dpkg--dbmodify.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{!3, !8, !14, !25, !42, !46, !57, !68, !77, !85, !89, !99, !109, !115, !120, !133, !139, !144}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "file_lock_flags", file: !4, line: 56, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../lib/dpkg/file.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!5 = !{!6, !7}
!6 = !DIEnumerator(name: "FILE_LOCK_NOWAIT", value: 0)
!7 = !DIEnumerator(name: "FILE_LOCK_WAIT", value: 1)
!8 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !9, line: 41, size: 32, align: 32, elements: !10)
!9 = !DIFile(filename: "../../lib/dpkg/ehandle.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!10 = !{!11, !12, !13}
!11 = !DIEnumerator(name: "ehflag_normaltidy", value: 1)
!12 = !DIEnumerator(name: "ehflag_bombout", value: 2)
!13 = !DIEnumerator(name: "ehflag_recursiveerror", value: 4)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "modstatdb_rw", file: !15, line: 263, size: 32, align: 32, elements: !16)
!15 = !DIFile(filename: "../../lib/dpkg/dpkg-db.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24}
!17 = !DIEnumerator(name: "msdbrw_readonly", value: 0)
!18 = !DIEnumerator(name: "msdbrw_needsuperuserlockonly", value: 1)
!19 = !DIEnumerator(name: "msdbrw_writeifposs", value: 2)
!20 = !DIEnumerator(name: "msdbrw_write", value: 3)
!21 = !DIEnumerator(name: "msdbrw_needsuperuser", value: 4)
!22 = !DIEnumerator(name: "msdbrw_available_readonly", value: 256)
!23 = !DIEnumerator(name: "msdbrw_available_write", value: 512)
!24 = !DIEnumerator(name: "msdbrw_available_mask", value: 65280)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "parsedbflags", file: !15, line: 328, size: 32, align: 32, elements: !26)
!26 = !{!27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41}
!27 = !DIEnumerator(name: "pdb_single_stanza", value: 1)
!28 = !DIEnumerator(name: "pdb_recordavailable", value: 2)
!29 = !DIEnumerator(name: "pdb_rejectstatus", value: 4)
!30 = !DIEnumerator(name: "pdb_weakclassification", value: 8)
!31 = !DIEnumerator(name: "pdb_ignore_archives", value: 16)
!32 = !DIEnumerator(name: "pdb_ignoreolder", value: 32)
!33 = !DIEnumerator(name: "pdb_lax_version_parser", value: 64)
!34 = !DIEnumerator(name: "pdb_lax_stanza_parser", value: 512)
!35 = !DIEnumerator(name: "pdb_lax_parser", value: 576)
!36 = !DIEnumerator(name: "pdb_close_fd", value: 128)
!37 = !DIEnumerator(name: "pdb_dash_is_stdin", value: 256)
!38 = !DIEnumerator(name: "pdb_parse_status", value: 584)
!39 = !DIEnumerator(name: "pdb_parse_update", value: 585)
!40 = !DIEnumerator(name: "pdb_parse_available", value: 582)
!41 = !DIEnumerator(name: "pdb_parse_binary", value: 7)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writedb_flags", file: !15, line: 445, size: 32, align: 32, elements: !43)
!43 = !{!44, !45}
!44 = !DIEnumerator(name: "wdb_dump_available", value: 1)
!45 = !DIEnumerator(name: "wdb_must_sync", value: 2)
!46 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "deptype", file: !15, line: 44, size: 32, align: 32, elements: !47)
!47 = !{!48, !49, !50, !51, !52, !53, !54, !55, !56}
!48 = !DIEnumerator(name: "dep_suggests", value: 0)
!49 = !DIEnumerator(name: "dep_recommends", value: 1)
!50 = !DIEnumerator(name: "dep_depends", value: 2)
!51 = !DIEnumerator(name: "dep_predepends", value: 3)
!52 = !DIEnumerator(name: "dep_breaks", value: 4)
!53 = !DIEnumerator(name: "dep_conflicts", value: 5)
!54 = !DIEnumerator(name: "dep_provides", value: 6)
!55 = !DIEnumerator(name: "dep_replaces", value: 7)
!56 = !DIEnumerator(name: "dep_enhances", value: 8)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_arch_type", file: !58, line: 37, size: 32, align: 32, elements: !59)
!58 = !DIFile(filename: "../../lib/dpkg/arch.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!59 = !{!60, !61, !62, !63, !64, !65, !66, !67}
!60 = !DIEnumerator(name: "DPKG_ARCH_NONE", value: 0)
!61 = !DIEnumerator(name: "DPKG_ARCH_EMPTY", value: 1)
!62 = !DIEnumerator(name: "DPKG_ARCH_ILLEGAL", value: 2)
!63 = !DIEnumerator(name: "DPKG_ARCH_WILDCARD", value: 3)
!64 = !DIEnumerator(name: "DPKG_ARCH_ALL", value: 4)
!65 = !DIEnumerator(name: "DPKG_ARCH_NATIVE", value: 5)
!66 = !DIEnumerator(name: "DPKG_ARCH_FOREIGN", value: 6)
!67 = !DIEnumerator(name: "DPKG_ARCH_UNKNOWN", value: 7)
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_relation", file: !69, line: 61, size: 32, align: 32, elements: !70)
!69 = !DIFile(filename: "../../lib/dpkg/version.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!70 = !{!71, !72, !73, !74, !75, !76}
!71 = !DIEnumerator(name: "DPKG_RELATION_NONE", value: 0)
!72 = !DIEnumerator(name: "DPKG_RELATION_EQ", value: 1)
!73 = !DIEnumerator(name: "DPKG_RELATION_LT", value: 2)
!74 = !DIEnumerator(name: "DPKG_RELATION_LE", value: 3)
!75 = !DIEnumerator(name: "DPKG_RELATION_GT", value: 4)
!76 = !DIEnumerator(name: "DPKG_RELATION_GE", value: 5)
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgwant", file: !15, line: 153, size: 32, align: 32, elements: !78)
!78 = !{!79, !80, !81, !82, !83, !84}
!79 = !DIEnumerator(name: "PKG_WANT_UNKNOWN", value: 0)
!80 = !DIEnumerator(name: "PKG_WANT_INSTALL", value: 1)
!81 = !DIEnumerator(name: "PKG_WANT_HOLD", value: 2)
!82 = !DIEnumerator(name: "PKG_WANT_DEINSTALL", value: 3)
!83 = !DIEnumerator(name: "PKG_WANT_PURGE", value: 4)
!84 = !DIEnumerator(name: "PKG_WANT_SENTINEL", value: 5)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgeflag", file: !15, line: 163, size: 32, align: 32, elements: !86)
!86 = !{!87, !88}
!87 = !DIEnumerator(name: "PKG_EFLAG_OK", value: 0)
!88 = !DIEnumerator(name: "PKG_EFLAG_REINSTREQ", value: 1)
!89 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgstatus", file: !15, line: 168, size: 32, align: 32, elements: !90)
!90 = !{!91, !92, !93, !94, !95, !96, !97, !98}
!91 = !DIEnumerator(name: "PKG_STAT_NOTINSTALLED", value: 0)
!92 = !DIEnumerator(name: "PKG_STAT_CONFIGFILES", value: 1)
!93 = !DIEnumerator(name: "PKG_STAT_HALFINSTALLED", value: 2)
!94 = !DIEnumerator(name: "PKG_STAT_UNPACKED", value: 3)
!95 = !DIEnumerator(name: "PKG_STAT_HALFCONFIGURED", value: 4)
!96 = !DIEnumerator(name: "PKG_STAT_TRIGGERSAWAITED", value: 5)
!97 = !DIEnumerator(name: "PKG_STAT_TRIGGERSPENDING", value: 6)
!98 = !DIEnumerator(name: "PKG_STAT_INSTALLED", value: 7)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgpriority", file: !15, line: 179, size: 32, align: 32, elements: !100)
!100 = !{!101, !102, !103, !104, !105, !106, !107, !108}
!101 = !DIEnumerator(name: "PKG_PRIO_REQUIRED", value: 0)
!102 = !DIEnumerator(name: "PKG_PRIO_IMPORTANT", value: 1)
!103 = !DIEnumerator(name: "PKG_PRIO_STANDARD", value: 2)
!104 = !DIEnumerator(name: "PKG_PRIO_OPTIONAL", value: 3)
!105 = !DIEnumerator(name: "PKG_PRIO_EXTRA", value: 4)
!106 = !DIEnumerator(name: "PKG_PRIO_OTHER", value: 5)
!107 = !DIEnumerator(name: "PKG_PRIO_UNKNOWN", value: 6)
!108 = !DIEnumerator(name: "PKG_PRIO_UNSET", value: -1)
!109 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgmultiarch", file: !15, line: 95, size: 32, align: 32, elements: !110)
!110 = !{!111, !112, !113, !114}
!111 = !DIEnumerator(name: "PKG_MULTIARCH_NO", value: 0)
!112 = !DIEnumerator(name: "PKG_MULTIARCH_SAME", value: 1)
!113 = !DIEnumerator(name: "PKG_MULTIARCH_ALLOWED", value: 2)
!114 = !DIEnumerator(name: "PKG_MULTIARCH_FOREIGN", value: 3)
!115 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "trig_options", file: !116, line: 49, size: 32, align: 32, elements: !117)
!116 = !DIFile(filename: "../../lib/dpkg/triglib.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!117 = !{!118, !119}
!118 = !DIEnumerator(name: "TRIG_AWAIT", value: 0)
!119 = !DIEnumerator(name: "TRIG_NOAWAIT", value: 1)
!120 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fsys_namenode_flags", file: !121, line: 61, size: 32, align: 32, elements: !122)
!121 = !DIFile(filename: "../../lib/dpkg/fsys.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!122 = !{!123, !124, !125, !126, !127, !128, !129, !130, !131, !132}
!123 = !DIEnumerator(name: "FNNF_NEW_CONFF", value: 1)
!124 = !DIEnumerator(name: "FNNF_NEW_INARCHIVE", value: 2)
!125 = !DIEnumerator(name: "FNNF_OLD_CONFF", value: 4)
!126 = !DIEnumerator(name: "FNNF_OBS_CONFF", value: 8)
!127 = !DIEnumerator(name: "FNNF_ELIDE_OTHER_LISTS", value: 16)
!128 = !DIEnumerator(name: "FNNF_NO_ATOMIC_OVERWRITE", value: 32)
!129 = !DIEnumerator(name: "FNNF_PLACED_ON_DISK", value: 64)
!130 = !DIEnumerator(name: "FNNF_DEFERRED_FSYNC", value: 128)
!131 = !DIEnumerator(name: "FNNF_DEFERRED_RENAME", value: 256)
!132 = !DIEnumerator(name: "FNNF_FILTERED", value: 512)
!133 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkg_name_arch_when", file: !15, line: 396, size: 32, align: 32, elements: !134)
!134 = !{!135, !136, !137, !138}
!135 = !DIEnumerator(name: "pnaw_never", value: 0)
!136 = !DIEnumerator(name: "pnaw_nonambig", value: 1)
!137 = !DIEnumerator(name: "pnaw_foreign", value: 2)
!138 = !DIEnumerator(name: "pnaw_always", value: 3)
!139 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "versiondisplayepochwhen", file: !15, line: 388, size: 32, align: 32, elements: !140)
!140 = !{!141, !142, !143}
!141 = !DIEnumerator(name: "vdew_never", value: 0)
!142 = !DIEnumerator(name: "vdew_nonambig", value: 1)
!143 = !DIEnumerator(name: "vdew_always", value: 2)
!144 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "c_ctype_bit", file: !145, line: 32, size: 32, align: 32, elements: !146)
!145 = !DIFile(filename: "../../lib/dpkg/c-ctype.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!146 = !{!147, !148, !149, !150, !151, !152, !153, !154}
!147 = !DIEnumerator(name: "C_CTYPE_BLANK", value: 1)
!148 = !DIEnumerator(name: "C_CTYPE_WHITE", value: 2)
!149 = !DIEnumerator(name: "C_CTYPE_SPACE", value: 4)
!150 = !DIEnumerator(name: "C_CTYPE_UPPER", value: 8)
!151 = !DIEnumerator(name: "C_CTYPE_LOWER", value: 16)
!152 = !DIEnumerator(name: "C_CTYPE_DIGIT", value: 32)
!153 = !DIEnumerator(name: "C_CTYPE_ALPHA", value: 24)
!154 = !DIEnumerator(name: "C_CTYPE_ALNUM", value: 56)
!155 = !{!156}
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!157 = !{!158, !161, !164, !165, !166, !167, !228, !229, !230, !231, !232, !239, !251, !252, !253, !254, !255, !256}
!158 = distinct !DIGlobalVariable(name: "db_initialized", scope: !0, file: !159, line: 49, type: !160, isLocal: true, isDefinition: true, variable: i8* @db_initialized)
!159 = !DIFile(filename: "dbmodify.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!160 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!161 = distinct !DIGlobalVariable(name: "lockfile", scope: !0, file: !159, line: 52, type: !162, isLocal: true, isDefinition: true, variable: i8** @lockfile)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64, align: 64)
!163 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!164 = distinct !DIGlobalVariable(name: "frontendlockfile", scope: !0, file: !159, line: 53, type: !162, isLocal: true, isDefinition: true, variable: i8** @frontendlockfile)
!165 = distinct !DIGlobalVariable(name: "statusfile", scope: !0, file: !159, line: 54, type: !162, isLocal: true, isDefinition: true, variable: i8** @statusfile)
!166 = distinct !DIGlobalVariable(name: "availablefile", scope: !0, file: !159, line: 54, type: !162, isLocal: true, isDefinition: true, variable: i8** @availablefile)
!167 = distinct !DIGlobalVariable(name: "importanttmp", scope: !0, file: !159, line: 56, type: !168, isLocal: true, isDefinition: true, variable: %struct._IO_FILE** @importanttmp)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64, align: 64)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !170, line: 48, baseType: !171)
!170 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !172, line: 241, size: 1728, align: 64, elements: !173)
!172 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!173 = !{!174, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !195, !196, !197, !198, !202, !204, !206, !210, !213, !215, !216, !217, !218, !219, !223, !224}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !171, file: !172, line: 242, baseType: !175, size: 32, align: 32)
!175 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !171, file: !172, line: 247, baseType: !162, size: 64, align: 64, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !171, file: !172, line: 248, baseType: !162, size: 64, align: 64, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !171, file: !172, line: 249, baseType: !162, size: 64, align: 64, offset: 192)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !171, file: !172, line: 250, baseType: !162, size: 64, align: 64, offset: 256)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !171, file: !172, line: 251, baseType: !162, size: 64, align: 64, offset: 320)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !171, file: !172, line: 252, baseType: !162, size: 64, align: 64, offset: 384)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !171, file: !172, line: 253, baseType: !162, size: 64, align: 64, offset: 448)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !171, file: !172, line: 254, baseType: !162, size: 64, align: 64, offset: 512)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !171, file: !172, line: 256, baseType: !162, size: 64, align: 64, offset: 576)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !171, file: !172, line: 257, baseType: !162, size: 64, align: 64, offset: 640)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !171, file: !172, line: 258, baseType: !162, size: 64, align: 64, offset: 704)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !171, file: !172, line: 260, baseType: !188, size: 64, align: 64, offset: 768)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64, align: 64)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !172, line: 156, size: 192, align: 64, elements: !190)
!190 = !{!191, !192, !194}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !189, file: !172, line: 157, baseType: !188, size: 64, align: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !189, file: !172, line: 158, baseType: !193, size: 64, align: 64, offset: 64)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64, align: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !189, file: !172, line: 162, baseType: !175, size: 32, align: 32, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !171, file: !172, line: 262, baseType: !193, size: 64, align: 64, offset: 832)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !171, file: !172, line: 264, baseType: !175, size: 32, align: 32, offset: 896)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !171, file: !172, line: 268, baseType: !175, size: 32, align: 32, offset: 928)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !171, file: !172, line: 270, baseType: !199, size: 64, align: 64, offset: 960)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !200, line: 131, baseType: !201)
!200 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!201 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !171, file: !172, line: 274, baseType: !203, size: 16, align: 16, offset: 1024)
!203 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !171, file: !172, line: 275, baseType: !205, size: 8, align: 8, offset: 1040)
!205 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !171, file: !172, line: 276, baseType: !207, size: 8, align: 8, offset: 1048)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 8, align: 8, elements: !208)
!208 = !{!209}
!209 = !DISubrange(count: 1)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !171, file: !172, line: 280, baseType: !211, size: 64, align: 64, offset: 1088)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64, align: 64)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !172, line: 150, baseType: null)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !171, file: !172, line: 289, baseType: !214, size: 64, align: 64, offset: 1152)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !200, line: 132, baseType: !201)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !171, file: !172, line: 297, baseType: !156, size: 64, align: 64, offset: 1216)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !171, file: !172, line: 298, baseType: !156, size: 64, align: 64, offset: 1280)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !171, file: !172, line: 299, baseType: !156, size: 64, align: 64, offset: 1344)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !171, file: !172, line: 300, baseType: !156, size: 64, align: 64, offset: 1408)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !171, file: !172, line: 302, baseType: !220, size: 64, align: 64, offset: 1472)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !221, line: 216, baseType: !222)
!221 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!222 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !171, file: !172, line: 303, baseType: !175, size: 32, align: 32, offset: 1536)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !171, file: !172, line: 305, baseType: !225, size: 160, align: 8, offset: 1568)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 160, align: 8, elements: !226)
!226 = !{!227}
!227 = !DISubrange(count: 20)
!228 = distinct !DIGlobalVariable(name: "nextupdate", scope: !0, file: !159, line: 57, type: !175, isLocal: true, isDefinition: true, variable: i32* @nextupdate)
!229 = distinct !DIGlobalVariable(name: "updatesdir", scope: !0, file: !159, line: 58, type: !162, isLocal: true, isDefinition: true, variable: i8** @updatesdir)
!230 = distinct !DIGlobalVariable(name: "updatefnbuf", scope: !0, file: !159, line: 60, type: !162, isLocal: true, isDefinition: true, variable: i8** @updatefnbuf)
!231 = distinct !DIGlobalVariable(name: "updatefnrest", scope: !0, file: !159, line: 60, type: !162, isLocal: true, isDefinition: true, variable: i8** @updatefnrest)
!232 = distinct !DIGlobalVariable(name: "uvb", scope: !0, file: !159, line: 61, type: !233, isLocal: true, isDefinition: true, variable: %struct.varbuf* @uvb)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varbuf", file: !234, line: 55, size: 192, align: 64, elements: !235)
!234 = !DIFile(filename: "../../lib/dpkg/varbuf.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!235 = !{!236, !237, !238}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !233, file: !234, line: 56, baseType: !220, size: 64, align: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !233, file: !234, line: 56, baseType: !220, size: 64, align: 64, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !233, file: !234, line: 57, baseType: !162, size: 64, align: 64, offset: 128)
!239 = distinct !DIGlobalVariable(name: "fnis", scope: !0, file: !159, line: 141, type: !240, isLocal: true, isDefinition: true, variable: [7 x %struct.fni]* @fnis)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 896, align: 64, elements: !249)
!241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !242)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fni", file: !159, line: 138, size: 128, align: 64, elements: !243)
!243 = !{!244, !247}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "suffix", scope: !242, file: !159, line: 139, baseType: !245, size: 64, align: 64)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64, align: 64)
!246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !242, file: !159, line: 140, baseType: !248, size: 64, align: 64, offset: 64)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64, align: 64)
!249 = !{!250}
!250 = !DISubrange(count: 7)
!251 = distinct !DIGlobalVariable(name: "dblockfd", scope: !0, file: !159, line: 188, type: !175, isLocal: true, isDefinition: true, variable: i32* @dblockfd)
!252 = distinct !DIGlobalVariable(name: "frontendlockfd", scope: !0, file: !159, line: 189, type: !175, isLocal: true, isDefinition: true, variable: i32* @frontendlockfd)
!253 = distinct !DIGlobalVariable(name: "cflags", scope: !0, file: !159, line: 51, type: !14, isLocal: true, isDefinition: true, variable: i32* @cflags)
!254 = distinct !DIGlobalVariable(name: "cstatus", scope: !0, file: !159, line: 51, type: !14, isLocal: true, isDefinition: true, variable: i32* @cstatus)
!255 = distinct !DIGlobalVariable(name: "updateslength", scope: !0, file: !159, line: 59, type: !175, isLocal: true, isDefinition: true, variable: i32* @updateslength)
!256 = distinct !DIGlobalVariable(name: "importanttmpfile", scope: !0, file: !159, line: 55, type: !162, isLocal: true, isDefinition: true, variable: i8** @importanttmpfile)
!257 = !{i32 2, !"Dwarf Version", i32 4}
!258 = !{i32 2, !"Debug Info Version", i32 3}
!259 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!260 = distinct !DISubprogram(name: "modstatdb_init", scope: !159, file: !159, line: 152, type: !261, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !263)
!261 = !DISubroutineType(types: !262)
!262 = !{null}
!263 = !{}
!264 = !DILocalVariable(name: "fnip", scope: !260, file: !159, line: 154, type: !265)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64, align: 64)
!266 = !DIExpression()
!267 = !DILocation(line: 154, column: 21, scope: !260)
!268 = !DILocation(line: 156, column: 7, scope: !269)
!269 = distinct !DILexicalBlock(scope: !260, file: !159, line: 156, column: 7)
!270 = !DILocation(line: 156, column: 7, scope: !260)
!271 = !DILocation(line: 157, column: 5, scope: !269)
!272 = !DILocation(line: 159, column: 13, scope: !273)
!273 = distinct !DILexicalBlock(scope: !260, file: !159, line: 159, column: 3)
!274 = !DILocation(line: 159, column: 8, scope: !273)
!275 = !DILocation(line: 159, column: 21, scope: !276)
!276 = !DILexicalBlockFile(scope: !277, file: !159, discriminator: 1)
!277 = distinct !DILexicalBlock(scope: !273, file: !159, line: 159, column: 3)
!278 = !DILocation(line: 159, column: 27, scope: !276)
!279 = !DILocation(line: 159, column: 3, scope: !276)
!280 = !DILocation(line: 160, column: 11, scope: !281)
!281 = distinct !DILexicalBlock(scope: !277, file: !159, line: 159, column: 43)
!282 = !DILocation(line: 160, column: 17, scope: !281)
!283 = !DILocation(line: 160, column: 10, scope: !281)
!284 = !DILocation(line: 160, column: 5, scope: !281)
!285 = !DILocation(line: 161, column: 37, scope: !281)
!286 = !DILocation(line: 161, column: 43, scope: !281)
!287 = !DILocation(line: 161, column: 20, scope: !281)
!288 = !DILocation(line: 161, column: 6, scope: !281)
!289 = !DILocation(line: 161, column: 12, scope: !281)
!290 = !DILocation(line: 161, column: 18, scope: !281)
!291 = !DILocation(line: 162, column: 3, scope: !281)
!292 = !DILocation(line: 159, column: 39, scope: !293)
!293 = !DILexicalBlockFile(scope: !277, file: !159, discriminator: 2)
!294 = !DILocation(line: 159, column: 3, scope: !293)
!295 = distinct !{!295, !296}
!296 = !DILocation(line: 159, column: 3, scope: !260)
!297 = !DILocation(line: 164, column: 33, scope: !260)
!298 = !DILocation(line: 164, column: 26, scope: !260)
!299 = !DILocation(line: 164, column: 45, scope: !260)
!300 = !DILocation(line: 164, column: 50, scope: !260)
!301 = !DILocation(line: 164, column: 17, scope: !302)
!302 = !DILexicalBlockFile(scope: !260, file: !159, discriminator: 1)
!303 = !DILocation(line: 164, column: 15, scope: !260)
!304 = !DILocation(line: 165, column: 10, scope: !260)
!305 = !DILocation(line: 165, column: 23, scope: !260)
!306 = !DILocation(line: 165, column: 3, scope: !260)
!307 = !DILocation(line: 166, column: 18, scope: !260)
!308 = !DILocation(line: 166, column: 39, scope: !260)
!309 = !DILocation(line: 166, column: 32, scope: !260)
!310 = !DILocation(line: 166, column: 30, scope: !260)
!311 = !DILocation(line: 166, column: 16, scope: !260)
!312 = !DILocation(line: 168, column: 18, scope: !260)
!313 = !DILocation(line: 169, column: 1, scope: !260)
!314 = !DILocation(line: 169, column: 1, scope: !302)
!315 = distinct !DISubprogram(name: "modstatdb_done", scope: !159, file: !159, line: 172, type: !261, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !263)
!316 = !DILocalVariable(name: "fnip", scope: !315, file: !159, line: 174, type: !265)
!317 = !DILocation(line: 174, column: 21, scope: !315)
!318 = !DILocation(line: 176, column: 8, scope: !319)
!319 = distinct !DILexicalBlock(scope: !315, file: !159, line: 176, column: 7)
!320 = !DILocation(line: 176, column: 7, scope: !315)
!321 = !DILocation(line: 177, column: 5, scope: !319)
!322 = !DILocation(line: 179, column: 13, scope: !323)
!323 = distinct !DILexicalBlock(scope: !315, file: !159, line: 179, column: 3)
!324 = !DILocation(line: 179, column: 8, scope: !323)
!325 = !DILocation(line: 179, column: 21, scope: !326)
!326 = !DILexicalBlockFile(scope: !327, file: !159, discriminator: 1)
!327 = distinct !DILexicalBlock(scope: !323, file: !159, line: 179, column: 3)
!328 = !DILocation(line: 179, column: 27, scope: !326)
!329 = !DILocation(line: 179, column: 3, scope: !326)
!330 = !DILocation(line: 180, column: 11, scope: !331)
!331 = distinct !DILexicalBlock(scope: !327, file: !159, line: 179, column: 43)
!332 = !DILocation(line: 180, column: 17, scope: !331)
!333 = !DILocation(line: 180, column: 10, scope: !331)
!334 = !DILocation(line: 180, column: 5, scope: !331)
!335 = !DILocation(line: 181, column: 6, scope: !331)
!336 = !DILocation(line: 181, column: 12, scope: !331)
!337 = !DILocation(line: 181, column: 18, scope: !331)
!338 = !DILocation(line: 182, column: 3, scope: !331)
!339 = !DILocation(line: 179, column: 39, scope: !340)
!340 = !DILexicalBlockFile(scope: !327, file: !159, discriminator: 2)
!341 = !DILocation(line: 179, column: 3, scope: !340)
!342 = distinct !{!342, !343}
!343 = !DILocation(line: 179, column: 3, scope: !315)
!344 = !DILocation(line: 183, column: 8, scope: !315)
!345 = !DILocation(line: 183, column: 3, scope: !315)
!346 = !DILocation(line: 185, column: 18, scope: !315)
!347 = !DILocation(line: 186, column: 1, scope: !315)
!348 = !DILocation(line: 186, column: 1, scope: !349)
!349 = !DILexicalBlockFile(scope: !315, file: !159, discriminator: 1)
!350 = distinct !DISubprogram(name: "modstatdb_is_locked", scope: !159, file: !159, line: 192, type: !351, isLocal: false, isDefinition: true, scopeLine: 193, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !263)
!351 = !DISubroutineType(types: !352)
!352 = !{!160}
!353 = !DILocalVariable(name: "lockfd", scope: !350, file: !159, line: 194, type: !175)
!354 = !DILocation(line: 194, column: 7, scope: !350)
!355 = !DILocalVariable(name: "locked", scope: !350, file: !159, line: 195, type: !160)
!356 = !DILocation(line: 195, column: 7, scope: !350)
!357 = !DILocation(line: 197, column: 7, scope: !358)
!358 = distinct !DILexicalBlock(scope: !350, file: !159, line: 197, column: 7)
!359 = !DILocation(line: 197, column: 16, scope: !358)
!360 = !DILocation(line: 197, column: 7, scope: !350)
!361 = !DILocation(line: 198, column: 19, scope: !362)
!362 = distinct !DILexicalBlock(scope: !358, file: !159, line: 197, column: 23)
!363 = !DILocation(line: 198, column: 14, scope: !362)
!364 = !DILocation(line: 198, column: 12, scope: !362)
!365 = !DILocation(line: 199, column: 9, scope: !366)
!366 = distinct !DILexicalBlock(scope: !362, file: !159, line: 199, column: 9)
!367 = !DILocation(line: 199, column: 16, scope: !366)
!368 = !DILocation(line: 199, column: 9, scope: !362)
!369 = !DILocation(line: 200, column: 14, scope: !366)
!370 = !DILocation(line: 201, column: 15, scope: !366)
!371 = !DILocation(line: 200, column: 7, scope: !372)
!372 = !DILexicalBlockFile(scope: !366, file: !159, discriminator: 1)
!373 = !DILocation(line: 200, column: 7, scope: !366)
!374 = !DILocation(line: 202, column: 3, scope: !362)
!375 = !DILocation(line: 203, column: 14, scope: !376)
!376 = distinct !DILexicalBlock(scope: !358, file: !159, line: 202, column: 10)
!377 = !DILocation(line: 203, column: 12, scope: !376)
!378 = !DILocation(line: 206, column: 27, scope: !350)
!379 = !DILocation(line: 206, column: 35, scope: !350)
!380 = !DILocation(line: 206, column: 12, scope: !350)
!381 = !DILocation(line: 206, column: 10, scope: !350)
!382 = !DILocation(line: 210, column: 7, scope: !383)
!383 = distinct !DILexicalBlock(scope: !350, file: !159, line: 210, column: 7)
!384 = !DILocation(line: 210, column: 16, scope: !383)
!385 = !DILocation(line: 210, column: 7, scope: !350)
!386 = !DILocation(line: 211, column: 11, scope: !383)
!387 = !DILocation(line: 211, column: 5, scope: !383)
!388 = !DILocation(line: 213, column: 10, scope: !350)
!389 = !DILocation(line: 213, column: 3, scope: !350)
!390 = distinct !DISubprogram(name: "modstatdb_can_lock", scope: !159, file: !159, line: 217, type: !351, isLocal: false, isDefinition: true, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !263)
!391 = !DILocation(line: 219, column: 7, scope: !392)
!392 = distinct !DILexicalBlock(scope: !390, file: !159, line: 219, column: 7)
!393 = !DILocation(line: 219, column: 16, scope: !392)
!394 = !DILocation(line: 219, column: 7, scope: !390)
!395 = !DILocation(line: 220, column: 5, scope: !392)
!396 = !DILocation(line: 222, column: 7, scope: !397)
!397 = distinct !DILexicalBlock(scope: !390, file: !159, line: 222, column: 7)
!398 = !DILocation(line: 222, column: 38, scope: !397)
!399 = !DILocation(line: 222, column: 7, scope: !390)
!400 = !DILocation(line: 223, column: 27, scope: !401)
!401 = distinct !DILexicalBlock(scope: !397, file: !159, line: 222, column: 46)
!402 = !DILocation(line: 223, column: 22, scope: !401)
!403 = !DILocation(line: 223, column: 20, scope: !401)
!404 = !DILocation(line: 224, column: 9, scope: !405)
!405 = distinct !DILexicalBlock(scope: !401, file: !159, line: 224, column: 9)
!406 = !DILocation(line: 224, column: 24, scope: !405)
!407 = !DILocation(line: 224, column: 9, scope: !401)
!408 = !DILocation(line: 225, column: 12, scope: !409)
!409 = distinct !DILexicalBlock(scope: !410, file: !159, line: 225, column: 10)
!410 = distinct !DILexicalBlock(scope: !405, file: !159, line: 224, column: 31)
!411 = !DILocation(line: 225, column: 11, scope: !409)
!412 = !DILocation(line: 225, column: 16, scope: !409)
!413 = !DILocation(line: 225, column: 26, scope: !409)
!414 = !DILocation(line: 225, column: 31, scope: !415)
!415 = !DILexicalBlockFile(scope: !409, file: !159, discriminator: 1)
!416 = !DILocation(line: 225, column: 30, scope: !415)
!417 = !DILocation(line: 225, column: 35, scope: !415)
!418 = !DILocation(line: 225, column: 10, scope: !415)
!419 = !DILocation(line: 226, column: 9, scope: !409)
!420 = !DILocation(line: 228, column: 16, scope: !409)
!421 = !DILocation(line: 229, column: 17, scope: !409)
!422 = !DILocation(line: 228, column: 9, scope: !415)
!423 = !DILocation(line: 228, column: 9, scope: !409)
!424 = !DILocation(line: 231, column: 3, scope: !401)
!425 = !DILocation(line: 232, column: 20, scope: !426)
!426 = distinct !DILexicalBlock(scope: !397, file: !159, line: 231, column: 10)
!427 = !DILocation(line: 235, column: 19, scope: !390)
!428 = !DILocation(line: 235, column: 14, scope: !390)
!429 = !DILocation(line: 235, column: 12, scope: !390)
!430 = !DILocation(line: 236, column: 7, scope: !431)
!431 = distinct !DILexicalBlock(scope: !390, file: !159, line: 236, column: 7)
!432 = !DILocation(line: 236, column: 16, scope: !431)
!433 = !DILocation(line: 236, column: 7, scope: !390)
!434 = !DILocation(line: 237, column: 10, scope: !435)
!435 = distinct !DILexicalBlock(scope: !436, file: !159, line: 237, column: 8)
!436 = distinct !DILexicalBlock(scope: !431, file: !159, line: 236, column: 23)
!437 = !DILocation(line: 237, column: 9, scope: !435)
!438 = !DILocation(line: 237, column: 14, scope: !435)
!439 = !DILocation(line: 237, column: 24, scope: !435)
!440 = !DILocation(line: 237, column: 29, scope: !441)
!441 = !DILexicalBlockFile(scope: !435, file: !159, discriminator: 1)
!442 = !DILocation(line: 237, column: 28, scope: !441)
!443 = !DILocation(line: 237, column: 33, scope: !441)
!444 = !DILocation(line: 237, column: 8, scope: !441)
!445 = !DILocation(line: 238, column: 7, scope: !435)
!446 = !DILocation(line: 240, column: 14, scope: !435)
!447 = !DILocation(line: 241, column: 15, scope: !435)
!448 = !DILocation(line: 240, column: 7, scope: !441)
!449 = !DILocation(line: 240, column: 7, scope: !435)
!450 = !DILocation(line: 244, column: 3, scope: !390)
!451 = !DILocation(line: 245, column: 1, scope: !390)
!452 = distinct !DISubprogram(name: "modstatdb_lock", scope: !159, file: !159, line: 248, type: !261, isLocal: false, isDefinition: true, scopeLine: 249, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !263)
!453 = !DILocation(line: 250, column: 8, scope: !454)
!454 = distinct !DILexicalBlock(scope: !452, file: !159, line: 250, column: 7)
!455 = !DILocation(line: 250, column: 7, scope: !452)
!456 = !DILocation(line: 251, column: 11, scope: !454)
!457 = !DILocation(line: 252, column: 12, scope: !454)
!458 = !DILocation(line: 251, column: 5, scope: !459)
!459 = !DILexicalBlockFile(scope: !454, file: !159, discriminator: 1)
!460 = !DILocation(line: 251, column: 5, scope: !454)
!461 = !DILocation(line: 254, column: 7, scope: !462)
!462 = distinct !DILexicalBlock(scope: !452, file: !159, line: 254, column: 7)
!463 = !DILocation(line: 254, column: 22, scope: !462)
!464 = !DILocation(line: 254, column: 7, scope: !452)
!465 = !DILocation(line: 255, column: 50, scope: !462)
!466 = !DILocation(line: 256, column: 14, scope: !462)
!467 = !DILocation(line: 255, column: 5, scope: !462)
!468 = !DILocation(line: 257, column: 42, scope: !452)
!469 = !DILocation(line: 258, column: 12, scope: !452)
!470 = !DILocation(line: 257, column: 3, scope: !452)
!471 = !DILocation(line: 259, column: 1, scope: !452)
!472 = distinct !DISubprogram(name: "modstatdb_unlock", scope: !159, file: !159, line: 262, type: !261, isLocal: false, isDefinition: true, scopeLine: 263, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !263)
!473 = !DILocation(line: 265, column: 3, scope: !472)
!474 = !DILocation(line: 266, column: 7, scope: !475)
!475 = distinct !DILexicalBlock(scope: !472, file: !159, line: 266, column: 7)
!476 = !DILocation(line: 266, column: 22, scope: !475)
!477 = !DILocation(line: 266, column: 7, scope: !472)
!478 = !DILocation(line: 267, column: 5, scope: !475)
!479 = !DILocation(line: 269, column: 12, scope: !472)
!480 = !DILocation(line: 270, column: 18, scope: !472)
!481 = !DILocation(line: 271, column: 1, scope: !472)
!482 = distinct !DISubprogram(name: "modstatdb_open", scope: !159, file: !159, line: 274, type: !483, isLocal: false, isDefinition: true, scopeLine: 275, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !263)
!483 = !DISubroutineType(types: !484)
!484 = !{!14, !14}
!485 = !DILocalVariable(name: "readwritereq", arg: 1, scope: !482, file: !159, line: 274, type: !14)
!486 = !DILocation(line: 274, column: 34, scope: !482)
!487 = !DILocation(line: 276, column: 3, scope: !482)
!488 = !DILocation(line: 278, column: 12, scope: !482)
!489 = !DILocation(line: 278, column: 25, scope: !482)
!490 = !DILocation(line: 278, column: 10, scope: !482)
!491 = !DILocation(line: 279, column: 16, scope: !482)
!492 = !DILocation(line: 281, column: 11, scope: !482)
!493 = !DILocation(line: 281, column: 3, scope: !482)
!494 = !DILocation(line: 284, column: 9, scope: !495)
!495 = distinct !DILexicalBlock(scope: !496, file: !159, line: 284, column: 9)
!496 = distinct !DILexicalBlock(scope: !482, file: !159, line: 281, column: 25)
!497 = !DILocation(line: 284, column: 18, scope: !495)
!498 = !DILocation(line: 284, column: 21, scope: !499)
!499 = !DILexicalBlockFile(scope: !495, file: !159, discriminator: 1)
!500 = !DILocation(line: 284, column: 9, scope: !499)
!501 = !DILocation(line: 285, column: 13, scope: !495)
!502 = !DILocation(line: 285, column: 7, scope: !499)
!503 = !DILocation(line: 285, column: 7, scope: !495)
!504 = !DILocation(line: 284, column: 29, scope: !505)
!505 = !DILexicalBlockFile(scope: !495, file: !159, discriminator: 2)
!506 = !DILocation(line: 288, column: 16, scope: !507)
!507 = distinct !DILexicalBlock(scope: !496, file: !159, line: 288, column: 9)
!508 = !DILocation(line: 288, column: 9, scope: !509)
!509 = !DILexicalBlockFile(scope: !507, file: !159, discriminator: 1)
!510 = !DILocation(line: 288, column: 9, scope: !507)
!511 = !DILocation(line: 288, column: 9, scope: !496)
!512 = !DILocation(line: 289, column: 12, scope: !513)
!513 = distinct !DILexicalBlock(scope: !514, file: !159, line: 289, column: 10)
!514 = distinct !DILexicalBlock(scope: !507, file: !159, line: 288, column: 41)
!515 = !DILocation(line: 289, column: 11, scope: !513)
!516 = !DILocation(line: 289, column: 16, scope: !513)
!517 = !DILocation(line: 289, column: 10, scope: !514)
!518 = !DILocation(line: 290, column: 16, scope: !513)
!519 = !DILocation(line: 291, column: 17, scope: !513)
!520 = !DILocation(line: 290, column: 9, scope: !521)
!521 = !DILexicalBlockFile(scope: !513, file: !159, discriminator: 1)
!522 = !DILocation(line: 290, column: 9, scope: !513)
!523 = !DILocation(line: 292, column: 16, scope: !524)
!524 = distinct !DILexicalBlock(scope: !513, file: !159, line: 292, column: 16)
!525 = !DILocation(line: 292, column: 29, scope: !524)
!526 = !DILocation(line: 292, column: 16, scope: !513)
!527 = !DILocation(line: 293, column: 15, scope: !524)
!528 = !DILocation(line: 294, column: 16, scope: !524)
!529 = !DILocation(line: 293, column: 9, scope: !530)
!530 = !DILexicalBlockFile(scope: !524, file: !159, discriminator: 1)
!531 = !DILocation(line: 293, column: 9, scope: !524)
!532 = !DILocation(line: 295, column: 14, scope: !514)
!533 = !DILocation(line: 296, column: 5, scope: !514)
!534 = !DILocation(line: 297, column: 7, scope: !535)
!535 = distinct !DILexicalBlock(scope: !507, file: !159, line: 296, column: 12)
!536 = !DILocation(line: 298, column: 17, scope: !535)
!537 = !DILocation(line: 298, column: 30, scope: !535)
!538 = !DILocation(line: 298, column: 14, scope: !535)
!539 = !DILocation(line: 302, column: 5, scope: !496)
!540 = !DILocation(line: 304, column: 12, scope: !496)
!541 = !DILocation(line: 304, column: 31, scope: !496)
!542 = !DILocation(line: 306, column: 76, scope: !496)
!543 = !DILocation(line: 306, column: 5, scope: !496)
!544 = !DILocation(line: 309, column: 3, scope: !482)
!545 = !DILocation(line: 311, column: 7, scope: !546)
!546 = distinct !DILexicalBlock(scope: !482, file: !159, line: 311, column: 7)
!547 = !DILocation(line: 311, column: 15, scope: !546)
!548 = !DILocation(line: 311, column: 7, scope: !482)
!549 = !DILocation(line: 312, column: 5, scope: !550)
!550 = distinct !DILexicalBlock(scope: !546, file: !159, line: 311, column: 48)
!551 = !DILocation(line: 313, column: 9, scope: !552)
!552 = distinct !DILexicalBlock(scope: !550, file: !159, line: 313, column: 9)
!553 = !DILocation(line: 313, column: 16, scope: !552)
!554 = !DILocation(line: 313, column: 9, scope: !550)
!555 = !DILocation(line: 314, column: 15, scope: !552)
!556 = !DILocation(line: 314, column: 7, scope: !552)
!557 = !DILocation(line: 315, column: 3, scope: !550)
!558 = !DILocation(line: 317, column: 7, scope: !559)
!559 = distinct !DILexicalBlock(scope: !482, file: !159, line: 317, column: 7)
!560 = !DILocation(line: 317, column: 15, scope: !559)
!561 = !DILocation(line: 317, column: 7, scope: !482)
!562 = !DILocation(line: 318, column: 5, scope: !563)
!563 = distinct !DILexicalBlock(scope: !559, file: !159, line: 317, column: 32)
!564 = !DILocation(line: 319, column: 5, scope: !563)
!565 = !DILocation(line: 320, column: 3, scope: !563)
!566 = !DILocation(line: 322, column: 23, scope: !482)
!567 = !DILocation(line: 322, column: 3, scope: !482)
!568 = !DILocation(line: 323, column: 20, scope: !482)
!569 = !DILocation(line: 323, column: 3, scope: !482)
!570 = !DILocation(line: 325, column: 10, scope: !482)
!571 = !DILocation(line: 325, column: 3, scope: !482)
!572 = distinct !DISubprogram(name: "cleanupdates", scope: !159, file: !159, line: 79, type: !261, isLocal: true, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !263)
!573 = !DILocalVariable(name: "cdlist", scope: !572, file: !159, line: 80, type: !574)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64, align: 64)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64, align: 64)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dirent", file: !577, line: 22, size: 2240, align: 64, elements: !578)
!577 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/dirent.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!578 = !{!579, !581, !582, !583, !585}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino", scope: !576, file: !577, line: 25, baseType: !580, size: 64, align: 64)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !200, line: 127, baseType: !222)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "d_off", scope: !576, file: !577, line: 26, baseType: !199, size: 64, align: 64, offset: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "d_reclen", scope: !576, file: !577, line: 31, baseType: !203, size: 16, align: 16, offset: 128)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "d_type", scope: !576, file: !577, line: 32, baseType: !584, size: 8, align: 8, offset: 144)
!584 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !576, file: !577, line: 33, baseType: !586, size: 2048, align: 8, offset: 152)
!586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 2048, align: 8, elements: !587)
!587 = !{!588}
!588 = !DISubrange(count: 256)
!589 = !DILocation(line: 80, column: 19, scope: !572)
!590 = !DILocalVariable(name: "cdn", scope: !572, file: !159, line: 81, type: !175)
!591 = !DILocation(line: 81, column: 7, scope: !572)
!592 = !DILocalVariable(name: "i", scope: !572, file: !159, line: 81, type: !175)
!593 = !DILocation(line: 81, column: 12, scope: !572)
!594 = !DILocation(line: 83, column: 11, scope: !572)
!595 = !DILocation(line: 83, column: 3, scope: !572)
!596 = !DILocation(line: 85, column: 4, scope: !572)
!597 = !DILocation(line: 85, column: 17, scope: !572)
!598 = !DILocation(line: 86, column: 16, scope: !572)
!599 = !DILocation(line: 87, column: 16, scope: !572)
!600 = !DILocation(line: 87, column: 8, scope: !572)
!601 = !DILocation(line: 87, column: 6, scope: !572)
!602 = !DILocation(line: 88, column: 7, scope: !603)
!603 = distinct !DILexicalBlock(scope: !572, file: !159, line: 88, column: 7)
!604 = !DILocation(line: 88, column: 11, scope: !603)
!605 = !DILocation(line: 88, column: 7, scope: !572)
!606 = !DILocation(line: 89, column: 12, scope: !603)
!607 = !DILocation(line: 89, column: 57, scope: !603)
!608 = !DILocation(line: 89, column: 5, scope: !609)
!609 = !DILexicalBlockFile(scope: !603, file: !159, discriminator: 1)
!610 = !DILocation(line: 89, column: 5, scope: !603)
!611 = !DILocation(line: 91, column: 7, scope: !612)
!612 = distinct !DILexicalBlock(scope: !572, file: !159, line: 91, column: 7)
!613 = !DILocation(line: 91, column: 7, scope: !572)
!614 = !DILocation(line: 92, column: 11, scope: !615)
!615 = distinct !DILexicalBlock(scope: !616, file: !159, line: 92, column: 5)
!616 = distinct !DILexicalBlock(scope: !612, file: !159, line: 91, column: 12)
!617 = !DILocation(line: 92, column: 10, scope: !615)
!618 = !DILocation(line: 92, column: 15, scope: !619)
!619 = !DILexicalBlockFile(scope: !620, file: !159, discriminator: 1)
!620 = distinct !DILexicalBlock(scope: !615, file: !159, line: 92, column: 5)
!621 = !DILocation(line: 92, column: 17, scope: !619)
!622 = !DILocation(line: 92, column: 16, scope: !619)
!623 = !DILocation(line: 92, column: 5, scope: !619)
!624 = !DILocation(line: 93, column: 14, scope: !625)
!625 = distinct !DILexicalBlock(scope: !620, file: !159, line: 92, column: 27)
!626 = !DILocation(line: 93, column: 35, scope: !625)
!627 = !DILocation(line: 93, column: 28, scope: !625)
!628 = !DILocation(line: 93, column: 39, scope: !625)
!629 = !DILocation(line: 93, column: 7, scope: !625)
!630 = !DILocation(line: 94, column: 15, scope: !625)
!631 = !DILocation(line: 94, column: 7, scope: !625)
!632 = !DILocation(line: 95, column: 5, scope: !625)
!633 = !DILocation(line: 92, column: 23, scope: !634)
!634 = !DILexicalBlockFile(scope: !620, file: !159, discriminator: 2)
!635 = !DILocation(line: 92, column: 5, scope: !634)
!636 = distinct !{!636, !637}
!637 = !DILocation(line: 92, column: 5, scope: !616)
!638 = !DILocation(line: 97, column: 9, scope: !639)
!639 = distinct !DILexicalBlock(scope: !616, file: !159, line: 97, column: 9)
!640 = !DILocation(line: 97, column: 17, scope: !639)
!641 = !DILocation(line: 97, column: 9, scope: !616)
!642 = !DILocation(line: 98, column: 15, scope: !643)
!643 = distinct !DILexicalBlock(scope: !639, file: !159, line: 97, column: 34)
!644 = !DILocation(line: 98, column: 7, scope: !643)
!645 = !DILocation(line: 100, column: 13, scope: !646)
!646 = distinct !DILexicalBlock(scope: !643, file: !159, line: 100, column: 7)
!647 = !DILocation(line: 100, column: 12, scope: !646)
!648 = !DILocation(line: 100, column: 17, scope: !649)
!649 = !DILexicalBlockFile(scope: !650, file: !159, discriminator: 1)
!650 = distinct !DILexicalBlock(scope: !646, file: !159, line: 100, column: 7)
!651 = !DILocation(line: 100, column: 19, scope: !649)
!652 = !DILocation(line: 100, column: 18, scope: !649)
!653 = !DILocation(line: 100, column: 7, scope: !649)
!654 = !DILocation(line: 101, column: 16, scope: !655)
!655 = distinct !DILexicalBlock(scope: !650, file: !159, line: 100, column: 29)
!656 = !DILocation(line: 101, column: 37, scope: !655)
!657 = !DILocation(line: 101, column: 30, scope: !655)
!658 = !DILocation(line: 101, column: 41, scope: !655)
!659 = !DILocation(line: 101, column: 9, scope: !655)
!660 = !DILocation(line: 102, column: 20, scope: !661)
!661 = distinct !DILexicalBlock(scope: !655, file: !159, line: 102, column: 13)
!662 = !DILocation(line: 102, column: 13, scope: !661)
!663 = !DILocation(line: 102, column: 13, scope: !655)
!664 = !DILocation(line: 103, column: 18, scope: !661)
!665 = !DILocation(line: 103, column: 72, scope: !661)
!666 = !DILocation(line: 103, column: 11, scope: !667)
!667 = !DILexicalBlockFile(scope: !661, file: !159, discriminator: 1)
!668 = !DILocation(line: 103, column: 11, scope: !661)
!669 = !DILocation(line: 104, column: 7, scope: !655)
!670 = !DILocation(line: 100, column: 25, scope: !671)
!671 = !DILexicalBlockFile(scope: !650, file: !159, discriminator: 2)
!672 = !DILocation(line: 100, column: 7, scope: !671)
!673 = distinct !{!673, !674}
!674 = !DILocation(line: 100, column: 7, scope: !643)
!675 = !DILocation(line: 106, column: 21, scope: !643)
!676 = !DILocation(line: 106, column: 7, scope: !643)
!677 = !DILocation(line: 107, column: 5, scope: !643)
!678 = !DILocation(line: 109, column: 12, scope: !679)
!679 = distinct !DILexicalBlock(scope: !616, file: !159, line: 109, column: 5)
!680 = !DILocation(line: 109, column: 10, scope: !679)
!681 = !DILocation(line: 109, column: 17, scope: !682)
!682 = !DILexicalBlockFile(scope: !683, file: !159, discriminator: 1)
!683 = distinct !DILexicalBlock(scope: !679, file: !159, line: 109, column: 5)
!684 = !DILocation(line: 109, column: 21, scope: !682)
!685 = !DILocation(line: 109, column: 19, scope: !682)
!686 = !DILocation(line: 109, column: 5, scope: !682)
!687 = !DILocation(line: 110, column: 19, scope: !683)
!688 = !DILocation(line: 110, column: 12, scope: !683)
!689 = !DILocation(line: 110, column: 7, scope: !683)
!690 = !DILocation(line: 109, column: 27, scope: !691)
!691 = !DILexicalBlockFile(scope: !683, file: !159, discriminator: 2)
!692 = !DILocation(line: 109, column: 5, scope: !691)
!693 = distinct !{!693, !694}
!694 = !DILocation(line: 109, column: 5, scope: !616)
!695 = !DILocation(line: 111, column: 3, scope: !616)
!696 = !DILocation(line: 112, column: 8, scope: !572)
!697 = !DILocation(line: 112, column: 3, scope: !572)
!698 = !DILocation(line: 114, column: 13, scope: !572)
!699 = !DILocation(line: 115, column: 1, scope: !572)
!700 = distinct !DISubprogram(name: "createimptmp", scope: !159, file: !159, line: 117, type: !261, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !263)
!701 = !DILocalVariable(name: "i", scope: !700, file: !159, line: 118, type: !175)
!702 = !DILocation(line: 118, column: 7, scope: !700)
!703 = !DILocation(line: 120, column: 14, scope: !700)
!704 = !DILocation(line: 122, column: 23, scope: !700)
!705 = !DILocation(line: 122, column: 17, scope: !700)
!706 = !DILocation(line: 122, column: 15, scope: !700)
!707 = !DILocation(line: 123, column: 8, scope: !708)
!708 = distinct !DILexicalBlock(scope: !700, file: !159, line: 123, column: 7)
!709 = !DILocation(line: 123, column: 7, scope: !700)
!710 = !DILocation(line: 124, column: 12, scope: !708)
!711 = !DILocation(line: 124, column: 44, scope: !708)
!712 = !DILocation(line: 124, column: 5, scope: !713)
!713 = !DILexicalBlockFile(scope: !708, file: !159, discriminator: 1)
!714 = !DILocation(line: 124, column: 5, scope: !708)
!715 = !DILocation(line: 125, column: 21, scope: !700)
!716 = !DILocation(line: 125, column: 14, scope: !700)
!717 = !DILocation(line: 125, column: 35, scope: !700)
!718 = !DILocation(line: 125, column: 3, scope: !719)
!719 = !DILexicalBlockFile(scope: !700, file: !159, discriminator: 1)
!720 = !DILocation(line: 126, column: 9, scope: !721)
!721 = distinct !DILexicalBlock(scope: !700, file: !159, line: 126, column: 3)
!722 = !DILocation(line: 126, column: 8, scope: !721)
!723 = !DILocation(line: 126, column: 13, scope: !724)
!724 = !DILexicalBlockFile(scope: !725, file: !159, discriminator: 1)
!725 = distinct !DILexicalBlock(scope: !721, file: !159, line: 126, column: 3)
!726 = !DILocation(line: 126, column: 14, scope: !724)
!727 = !DILocation(line: 126, column: 3, scope: !724)
!728 = !DILocation(line: 126, column: 44, scope: !729)
!729 = !DILexicalBlockFile(scope: !725, file: !159, discriminator: 2)
!730 = !DILocation(line: 126, column: 25, scope: !729)
!731 = !DILocation(line: 126, column: 21, scope: !732)
!732 = !DILexicalBlockFile(scope: !725, file: !159, discriminator: 3)
!733 = !DILocation(line: 126, column: 3, scope: !732)
!734 = distinct !{!734, !735}
!735 = !DILocation(line: 126, column: 3, scope: !700)
!736 = !DILocation(line: 127, column: 14, scope: !737)
!737 = distinct !DILexicalBlock(scope: !700, file: !159, line: 127, column: 7)
!738 = !DILocation(line: 127, column: 7, scope: !737)
!739 = !DILocation(line: 127, column: 7, scope: !700)
!740 = !DILocation(line: 128, column: 12, scope: !737)
!741 = !DILocation(line: 128, column: 52, scope: !737)
!742 = !DILocation(line: 128, column: 5, scope: !743)
!743 = !DILexicalBlockFile(scope: !737, file: !159, discriminator: 1)
!744 = !DILocation(line: 128, column: 5, scope: !737)
!745 = !DILocation(line: 129, column: 14, scope: !746)
!746 = distinct !DILexicalBlock(scope: !700, file: !159, line: 129, column: 7)
!747 = !DILocation(line: 129, column: 7, scope: !746)
!748 = !DILocation(line: 129, column: 7, scope: !700)
!749 = !DILocation(line: 130, column: 12, scope: !746)
!750 = !DILocation(line: 130, column: 55, scope: !746)
!751 = !DILocation(line: 130, column: 5, scope: !752)
!752 = !DILexicalBlockFile(scope: !746, file: !159, discriminator: 1)
!753 = !DILocation(line: 130, column: 5, scope: !746)
!754 = !DILocation(line: 131, column: 13, scope: !755)
!755 = distinct !DILexicalBlock(scope: !700, file: !159, line: 131, column: 7)
!756 = !DILocation(line: 131, column: 7, scope: !755)
!757 = !DILocation(line: 131, column: 7, scope: !700)
!758 = !DILocation(line: 132, column: 12, scope: !755)
!759 = !DILocation(line: 133, column: 6, scope: !755)
!760 = !DILocation(line: 132, column: 5, scope: !761)
!761 = !DILexicalBlockFile(scope: !755, file: !159, discriminator: 1)
!762 = !DILocation(line: 132, column: 5, scope: !755)
!763 = !DILocation(line: 135, column: 14, scope: !700)
!764 = !DILocation(line: 136, column: 1, scope: !700)
!765 = distinct !DISubprogram(name: "modstatdb_get_status", scope: !159, file: !159, line: 329, type: !766, isLocal: false, isDefinition: true, scopeLine: 330, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !263)
!766 = !DISubroutineType(types: !767)
!767 = !{!14}
!768 = !DILocation(line: 331, column: 10, scope: !765)
!769 = !DILocation(line: 331, column: 3, scope: !765)
!770 = distinct !DISubprogram(name: "modstatdb_checkpoint", scope: !159, file: !159, line: 334, type: !261, isLocal: false, isDefinition: true, scopeLine: 334, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !263)
!771 = !DILocalVariable(name: "i", scope: !770, file: !159, line: 335, type: !175)
!772 = !DILocation(line: 335, column: 7, scope: !770)
!773 = !DILocation(line: 337, column: 7, scope: !774)
!774 = distinct !DILexicalBlock(scope: !770, file: !159, line: 337, column: 7)
!775 = !DILocation(line: 337, column: 15, scope: !774)
!776 = !DILocation(line: 337, column: 7, scope: !770)
!777 = !DILocation(line: 338, column: 88, scope: !774)
!778 = !DILocation(line: 338, column: 5, scope: !774)
!779 = !DILocation(line: 340, column: 11, scope: !770)
!780 = !DILocation(line: 340, column: 3, scope: !770)
!781 = !DILocation(line: 342, column: 9, scope: !782)
!782 = distinct !DILexicalBlock(scope: !770, file: !159, line: 342, column: 3)
!783 = !DILocation(line: 342, column: 8, scope: !782)
!784 = !DILocation(line: 342, column: 13, scope: !785)
!785 = !DILexicalBlockFile(scope: !786, file: !159, discriminator: 1)
!786 = distinct !DILexicalBlock(scope: !782, file: !159, line: 342, column: 3)
!787 = !DILocation(line: 342, column: 15, scope: !785)
!788 = !DILocation(line: 342, column: 14, scope: !785)
!789 = !DILocation(line: 342, column: 3, scope: !785)
!790 = !DILocation(line: 343, column: 13, scope: !791)
!791 = distinct !DILexicalBlock(scope: !786, file: !159, line: 342, column: 32)
!792 = !DILocation(line: 343, column: 35, scope: !791)
!793 = !DILocation(line: 343, column: 5, scope: !791)
!794 = !DILocation(line: 346, column: 16, scope: !795)
!795 = distinct !DILexicalBlock(scope: !791, file: !159, line: 346, column: 9)
!796 = !DILocation(line: 346, column: 9, scope: !795)
!797 = !DILocation(line: 346, column: 30, scope: !795)
!798 = !DILocation(line: 346, column: 9, scope: !791)
!799 = !DILocation(line: 347, column: 70, scope: !795)
!800 = !DILocation(line: 347, column: 7, scope: !795)
!801 = !DILocation(line: 350, column: 16, scope: !802)
!802 = distinct !DILexicalBlock(scope: !791, file: !159, line: 350, column: 9)
!803 = !DILocation(line: 350, column: 9, scope: !802)
!804 = !DILocation(line: 350, column: 9, scope: !791)
!805 = !DILocation(line: 351, column: 14, scope: !802)
!806 = !DILocation(line: 351, column: 62, scope: !802)
!807 = !DILocation(line: 351, column: 7, scope: !808)
!808 = !DILexicalBlockFile(scope: !802, file: !159, discriminator: 1)
!809 = !DILocation(line: 351, column: 7, scope: !802)
!810 = !DILocation(line: 352, column: 3, scope: !791)
!811 = !DILocation(line: 342, column: 28, scope: !812)
!812 = !DILexicalBlockFile(scope: !786, file: !159, discriminator: 2)
!813 = !DILocation(line: 342, column: 3, scope: !812)
!814 = distinct !{!814, !815}
!815 = !DILocation(line: 342, column: 3, scope: !770)
!816 = !DILocation(line: 354, column: 17, scope: !770)
!817 = !DILocation(line: 354, column: 3, scope: !770)
!818 = !DILocation(line: 356, column: 13, scope: !770)
!819 = !DILocation(line: 357, column: 1, scope: !770)
!820 = distinct !DISubprogram(name: "modstatdb_shutdown", scope: !159, file: !159, line: 359, type: !261, isLocal: false, isDefinition: true, scopeLine: 359, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !263)
!821 = !DILocation(line: 360, column: 7, scope: !822)
!822 = distinct !DILexicalBlock(scope: !820, file: !159, line: 360, column: 7)
!823 = !DILocation(line: 360, column: 14, scope: !822)
!824 = !DILocation(line: 360, column: 7, scope: !820)
!825 = !DILocation(line: 361, column: 13, scope: !822)
!826 = !DILocation(line: 361, column: 5, scope: !822)
!827 = !DILocation(line: 363, column: 11, scope: !820)
!828 = !DILocation(line: 363, column: 3, scope: !820)
!829 = !DILocation(line: 365, column: 5, scope: !830)
!830 = distinct !DILexicalBlock(scope: !820, file: !159, line: 363, column: 20)
!831 = !DILocation(line: 367, column: 12, scope: !830)
!832 = !DILocation(line: 367, column: 5, scope: !830)
!833 = !DILocation(line: 368, column: 18, scope: !830)
!834 = !DILocation(line: 368, column: 11, scope: !830)
!835 = !DILocation(line: 369, column: 5, scope: !830)
!836 = !DILocation(line: 372, column: 5, scope: !830)
!837 = !DILocation(line: 374, column: 5, scope: !830)
!838 = !DILocation(line: 377, column: 3, scope: !820)
!839 = !DILocation(line: 379, column: 3, scope: !820)
!840 = !DILocation(line: 380, column: 1, scope: !820)
!841 = distinct !DISubprogram(name: "modstatdb_note", scope: !159, file: !159, line: 435, type: !842, isLocal: false, isDefinition: true, scopeLine: 435, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !263)
!842 = !DISubroutineType(types: !843)
!843 = !{null, !844}
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64, align: 64)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkginfo", file: !15, line: 195, size: 3072, align: 64, elements: !846)
!846 = !{!847, !894, !895, !896, !897, !898, !899, !900, !901, !902, !932, !933, !936, !945, !961, !962, !968, !1033, !1035, !1036}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !845, file: !15, line: 196, baseType: !848, size: 64, align: 64)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64, align: 64)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgset", file: !15, line: 242, size: 3392, align: 64, elements: !850)
!850 = !{!851, !852, !853, !854, !893}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !849, file: !15, line: 243, baseType: !848, size: 64, align: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !849, file: !15, line: 244, baseType: !245, size: 64, align: 64, offset: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !849, file: !15, line: 245, baseType: !845, size: 3072, align: 64, offset: 128)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "depended", scope: !849, file: !15, line: 249, baseType: !855, size: 128, align: 64, offset: 3200)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !849, file: !15, line: 246, size: 128, align: 64, elements: !856)
!856 = !{!857, !892}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !855, file: !15, line: 247, baseType: !858, size: 64, align: 64)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64, align: 64)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "deppossi", file: !15, line: 63, size: 640, align: 64, elements: !860)
!860 = !{!861, !869, !870, !871, !872, !873, !882, !889, !890, !891}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !859, file: !15, line: 64, baseType: !862, size: 64, align: 64)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64, align: 64)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dependency", file: !15, line: 56, size: 256, align: 64, elements: !864)
!864 = !{!865, !866, !867, !868}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !863, file: !15, line: 57, baseType: !844, size: 64, align: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !863, file: !15, line: 58, baseType: !862, size: 64, align: 64, offset: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !863, file: !15, line: 59, baseType: !858, size: 64, align: 64, offset: 128)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !863, file: !15, line: 60, baseType: !46, size: 32, align: 32, offset: 192)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "ed", scope: !859, file: !15, line: 65, baseType: !848, size: 64, align: 64, offset: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !859, file: !15, line: 66, baseType: !858, size: 64, align: 64, offset: 128)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "rev_next", scope: !859, file: !15, line: 66, baseType: !858, size: 64, align: 64, offset: 192)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "rev_prev", scope: !859, file: !15, line: 66, baseType: !858, size: 64, align: 64, offset: 256)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !859, file: !15, line: 67, baseType: !874, size: 64, align: 64, offset: 320)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64, align: 64)
!875 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !876)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_arch", file: !58, line: 48, size: 192, align: 64, elements: !877)
!877 = !{!878, !880, !881}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !876, file: !58, line: 49, baseType: !879, size: 64, align: 64)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64, align: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !876, file: !58, line: 50, baseType: !245, size: 64, align: 64, offset: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !876, file: !58, line: 51, baseType: !57, size: 32, align: 32, offset: 128)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !859, file: !15, line: 68, baseType: !883, size: 192, align: 64, offset: 384)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_version", file: !69, line: 42, size: 192, align: 64, elements: !884)
!884 = !{!885, !887, !888}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !883, file: !69, line: 44, baseType: !886, size: 32, align: 32)
!886 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !883, file: !69, line: 46, baseType: !245, size: 64, align: 64, offset: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !883, file: !69, line: 48, baseType: !245, size: 64, align: 64, offset: 128)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "verrel", scope: !859, file: !15, line: 69, baseType: !68, size: 32, align: 32, offset: 576)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "arch_is_implicit", scope: !859, file: !15, line: 70, baseType: !160, size: 8, align: 8, offset: 608)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "cyclebreak", scope: !859, file: !15, line: 71, baseType: !160, size: 8, align: 8, offset: 616)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !855, file: !15, line: 248, baseType: !858, size: 64, align: 64, offset: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "installed_instances", scope: !849, file: !15, line: 250, baseType: !175, size: 32, align: 32, offset: 3328)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "arch_next", scope: !845, file: !15, line: 197, baseType: !844, size: 64, align: 64, offset: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "want", scope: !845, file: !15, line: 199, baseType: !77, size: 32, align: 32, offset: 128)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "eflag", scope: !845, file: !15, line: 201, baseType: !85, size: 32, align: 32, offset: 160)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !845, file: !15, line: 202, baseType: !89, size: 32, align: 32, offset: 192)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !845, file: !15, line: 203, baseType: !99, size: 32, align: 32, offset: 224)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "otherpriority", scope: !845, file: !15, line: 204, baseType: !245, size: 64, align: 64, offset: 256)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "section", scope: !845, file: !15, line: 205, baseType: !245, size: 64, align: 64, offset: 320)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "configversion", scope: !845, file: !15, line: 206, baseType: !883, size: 192, align: 64, offset: 384)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !845, file: !15, line: 207, baseType: !903, size: 960, align: 64, offset: 576)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgbin", file: !15, line: 107, size: 960, align: 64, elements: !904)
!904 = !{!905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !925}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "depends", scope: !903, file: !15, line: 108, baseType: !862, size: 64, align: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "essential", scope: !903, file: !15, line: 110, baseType: !160, size: 8, align: 8, offset: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "multiarch", scope: !903, file: !15, line: 111, baseType: !109, size: 32, align: 32, offset: 96)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !903, file: !15, line: 112, baseType: !874, size: 64, align: 64, offset: 128)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "pkgname_archqual", scope: !903, file: !15, line: 115, baseType: !245, size: 64, align: 64, offset: 192)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !903, file: !15, line: 116, baseType: !245, size: 64, align: 64, offset: 256)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "maintainer", scope: !903, file: !15, line: 117, baseType: !245, size: 64, align: 64, offset: 320)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !903, file: !15, line: 118, baseType: !245, size: 64, align: 64, offset: 384)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "installedsize", scope: !903, file: !15, line: 119, baseType: !245, size: 64, align: 64, offset: 448)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !903, file: !15, line: 120, baseType: !245, size: 64, align: 64, offset: 512)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "bugs", scope: !903, file: !15, line: 121, baseType: !245, size: 64, align: 64, offset: 576)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !903, file: !15, line: 122, baseType: !883, size: 192, align: 64, offset: 640)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "conffiles", scope: !903, file: !15, line: 123, baseType: !918, size: 64, align: 64, offset: 832)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64, align: 64)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conffile", file: !15, line: 80, size: 256, align: 64, elements: !920)
!920 = !{!921, !922, !923, !924}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !919, file: !15, line: 81, baseType: !918, size: 64, align: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !919, file: !15, line: 82, baseType: !245, size: 64, align: 64, offset: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !919, file: !15, line: 83, baseType: !245, size: 64, align: 64, offset: 128)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "obsolete", scope: !919, file: !15, line: 84, baseType: !160, size: 8, align: 8, offset: 192)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "arbs", scope: !903, file: !15, line: 124, baseType: !926, size: 64, align: 64, offset: 896)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64, align: 64)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arbitraryfield", file: !15, line: 74, size: 192, align: 64, elements: !928)
!928 = !{!929, !930, !931}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !927, file: !15, line: 75, baseType: !926, size: 64, align: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !927, file: !15, line: 76, baseType: !245, size: 64, align: 64, offset: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !927, file: !15, line: 77, baseType: !245, size: 64, align: 64, offset: 128)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !845, file: !15, line: 208, baseType: !903, size: 960, align: 64, offset: 1536)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "clientdata", scope: !845, file: !15, line: 209, baseType: !934, size: 64, align: 64, offset: 2496)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64, align: 64)
!935 = !DICompositeType(tag: DW_TAG_structure_type, name: "perpackagestate", file: !15, line: 151, flags: DIFlagFwdDecl)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "archives", scope: !845, file: !15, line: 211, baseType: !937, size: 64, align: 64, offset: 2560)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64, align: 64)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archivedetails", file: !15, line: 87, size: 320, align: 64, elements: !939)
!939 = !{!940, !941, !942, !943, !944}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !938, file: !15, line: 88, baseType: !937, size: 64, align: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !938, file: !15, line: 89, baseType: !245, size: 64, align: 64, offset: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "msdosname", scope: !938, file: !15, line: 90, baseType: !245, size: 64, align: 64, offset: 128)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !938, file: !15, line: 91, baseType: !245, size: 64, align: 64, offset: 192)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "md5sum", scope: !938, file: !15, line: 92, baseType: !245, size: 64, align: 64, offset: 256)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "trigaw", scope: !845, file: !15, line: 216, baseType: !946, size: 128, align: 64, offset: 2624)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !845, file: !15, line: 213, size: 128, align: 64, elements: !947)
!947 = !{!948, !960}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !946, file: !15, line: 215, baseType: !949, size: 64, align: 64)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64, align: 64)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigaw", file: !15, line: 142, size: 320, align: 64, elements: !951)
!951 = !{!952, !953, !954, !955}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "aw", scope: !950, file: !15, line: 143, baseType: !844, size: 64, align: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "pend", scope: !950, file: !15, line: 143, baseType: !844, size: 64, align: 64, offset: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "samepend_next", scope: !950, file: !15, line: 144, baseType: !949, size: 64, align: 64, offset: 128)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "sameaw", scope: !950, file: !15, line: 147, baseType: !956, size: 128, align: 64, offset: 192)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !950, file: !15, line: 145, size: 128, align: 64, elements: !957)
!957 = !{!958, !959}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !956, file: !15, line: 146, baseType: !949, size: 64, align: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !956, file: !15, line: 146, baseType: !949, size: 64, align: 64, offset: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !946, file: !15, line: 215, baseType: !949, size: 64, align: 64, offset: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "othertrigaw_head", scope: !845, file: !15, line: 219, baseType: !949, size: 64, align: 64, offset: 2752)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "trigpend_head", scope: !845, file: !15, line: 220, baseType: !963, size: 64, align: 64, offset: 2816)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64, align: 64)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigpend", file: !15, line: 134, size: 128, align: 64, elements: !965)
!965 = !{!966, !967}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !964, file: !15, line: 135, baseType: !963, size: 64, align: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !964, file: !15, line: 136, baseType: !245, size: 64, align: 64, offset: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !845, file: !15, line: 231, baseType: !969, size: 64, align: 64, offset: 2880)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64, align: 64)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode_list", file: !121, line: 122, size: 128, align: 64, elements: !971)
!971 = !{!972, !973}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !970, file: !121, line: 123, baseType: !969, size: 64, align: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "namenode", scope: !970, file: !121, line: 124, baseType: !974, size: 64, align: 64, offset: 64)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64, align: 64)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode", file: !121, line: 90, size: 640, align: 64, elements: !976)
!976 = !{!977, !978, !979, !982, !990, !1006, !1021, !1022, !1023, !1024}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !975, file: !121, line: 91, baseType: !974, size: 64, align: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !975, file: !121, line: 92, baseType: !245, size: 64, align: 64, offset: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "packages", scope: !975, file: !121, line: 93, baseType: !980, size: 64, align: 64, offset: 128)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64, align: 64)
!981 = !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_list", file: !121, line: 93, flags: DIFlagFwdDecl)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "divert", scope: !975, file: !121, line: 94, baseType: !983, size: 64, align: 64, offset: 192)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64, align: 64)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_diversion", file: !121, line: 151, size: 256, align: 64, elements: !985)
!985 = !{!986, !987, !988, !989}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "useinstead", scope: !984, file: !121, line: 152, baseType: !974, size: 64, align: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "camefrom", scope: !984, file: !121, line: 153, baseType: !974, size: 64, align: 64, offset: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "pkgset", scope: !984, file: !121, line: 154, baseType: !848, size: 64, align: 64, offset: 128)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !984, file: !121, line: 157, baseType: !983, size: 64, align: 64, offset: 192)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "statoverride", scope: !975, file: !121, line: 101, baseType: !991, size: 64, align: 64, offset: 256)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64, align: 64)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_stat", file: !4, line: 40, size: 256, align: 64, elements: !993)
!993 = !{!994, !998, !1001, !1004, !1005}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !992, file: !4, line: 41, baseType: !995, size: 32, align: 32)
!995 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !996, line: 81, baseType: !997)
!996 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!997 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !200, line: 125, baseType: !886)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !992, file: !4, line: 42, baseType: !999, size: 32, align: 32, offset: 32)
!999 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !996, line: 48, baseType: !1000)
!1000 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !200, line: 126, baseType: !886)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !992, file: !4, line: 43, baseType: !1002, size: 32, align: 32, offset: 64)
!1002 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !996, line: 62, baseType: !1003)
!1003 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !200, line: 129, baseType: !886)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "uname", scope: !992, file: !4, line: 47, baseType: !162, size: 64, align: 64, offset: 128)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !992, file: !4, line: 48, baseType: !162, size: 64, align: 64, offset: 192)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "trig_interested", scope: !975, file: !121, line: 103, baseType: !1007, size: 64, align: 64, offset: 320)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64, align: 64)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigfileint", file: !116, line: 54, size: 448, align: 64, elements: !1009)
!1009 = !{!1010, !1011, !1013, !1014, !1015, !1016}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !1008, file: !116, line: 55, baseType: !844, size: 64, align: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "pkgbin", scope: !1008, file: !116, line: 56, baseType: !1012, size: 64, align: 64, offset: 64)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64, align: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "fnn", scope: !1008, file: !116, line: 57, baseType: !974, size: 64, align: 64, offset: 128)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !1008, file: !116, line: 58, baseType: !115, size: 32, align: 32, offset: 192)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "samefile_next", scope: !1008, file: !116, line: 59, baseType: !1007, size: 64, align: 64, offset: 256)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "inoverall", scope: !1008, file: !116, line: 62, baseType: !1017, size: 128, align: 64, offset: 320)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1008, file: !116, line: 60, size: 128, align: 64, elements: !1018)
!1018 = !{!1019, !1020}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1017, file: !116, line: 61, baseType: !1007, size: 64, align: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1017, file: !116, line: 61, baseType: !1007, size: 64, align: 64, offset: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !975, file: !121, line: 111, baseType: !120, size: 32, align: 32, offset: 384)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "oldhash", scope: !975, file: !121, line: 114, baseType: !245, size: 64, align: 64, offset: 448)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "newhash", scope: !975, file: !121, line: 117, baseType: !245, size: 64, align: 64, offset: 512)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "file_ondisk_id", scope: !975, file: !121, line: 119, baseType: !1025, size: 64, align: 64, offset: 576)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64, align: 64)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ondisk_id", file: !121, line: 85, size: 128, align: 64, elements: !1027)
!1027 = !{!1028, !1031}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "id_dev", scope: !1026, file: !121, line: 86, baseType: !1029, size: 64, align: 64)
!1029 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !996, line: 43, baseType: !1030)
!1030 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !200, line: 124, baseType: !222)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "id_ino", scope: !1026, file: !121, line: 87, baseType: !1032, size: 64, align: 64, offset: 64)
!1032 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !996, line: 54, baseType: !580)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_phys_offs", scope: !845, file: !15, line: 232, baseType: !1034, size: 64, align: 64, offset: 2944)
!1034 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !996, line: 73, baseType: !199)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_valid", scope: !845, file: !15, line: 233, baseType: !160, size: 8, align: 8, offset: 3008)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "status_dirty", scope: !845, file: !15, line: 236, baseType: !160, size: 8, align: 8, offset: 3016)
!1037 = !DILocalVariable(name: "pkg", arg: 1, scope: !841, file: !159, line: 435, type: !844)
!1038 = !DILocation(line: 435, column: 37, scope: !841)
!1039 = !DILocalVariable(name: "ta", scope: !841, file: !159, line: 436, type: !949)
!1040 = !DILocation(line: 436, column: 18, scope: !841)
!1041 = !DILocation(line: 438, column: 14, scope: !841)
!1042 = !DILocation(line: 442, column: 7, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !841, file: !159, line: 442, column: 7)
!1044 = !DILocation(line: 442, column: 12, scope: !1043)
!1045 = !DILocation(line: 442, column: 19, scope: !1043)
!1046 = !DILocation(line: 442, column: 47, scope: !1043)
!1047 = !DILocation(line: 443, column: 7, scope: !1043)
!1048 = !DILocation(line: 443, column: 12, scope: !1043)
!1049 = !DILocation(line: 443, column: 19, scope: !1043)
!1050 = !DILocation(line: 442, column: 7, scope: !1051)
!1051 = !DILexicalBlockFile(scope: !841, file: !159, discriminator: 1)
!1052 = !DILocation(line: 444, column: 5, scope: !1043)
!1053 = !DILocation(line: 444, column: 10, scope: !1043)
!1054 = !DILocation(line: 444, column: 24, scope: !1043)
!1055 = !DILocation(line: 446, column: 7, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !841, file: !159, line: 446, column: 7)
!1057 = !DILocation(line: 446, column: 12, scope: !1056)
!1058 = !DILocation(line: 446, column: 19, scope: !1056)
!1059 = !DILocation(line: 446, column: 7, scope: !841)
!1060 = !DILocation(line: 447, column: 15, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1062, file: !159, line: 447, column: 5)
!1062 = distinct !DILexicalBlock(scope: !1056, file: !159, line: 446, column: 44)
!1063 = !DILocation(line: 447, column: 20, scope: !1061)
!1064 = !DILocation(line: 447, column: 27, scope: !1061)
!1065 = !DILocation(line: 447, column: 13, scope: !1061)
!1066 = !DILocation(line: 447, column: 10, scope: !1061)
!1067 = !DILocation(line: 447, column: 33, scope: !1068)
!1068 = !DILexicalBlockFile(scope: !1069, file: !159, discriminator: 1)
!1069 = distinct !DILexicalBlock(scope: !1061, file: !159, line: 447, column: 5)
!1070 = !DILocation(line: 447, column: 5, scope: !1068)
!1071 = !DILocation(line: 448, column: 7, scope: !1069)
!1072 = !DILocation(line: 448, column: 11, scope: !1069)
!1073 = !DILocation(line: 448, column: 14, scope: !1069)
!1074 = !DILocation(line: 447, column: 42, scope: !1075)
!1075 = !DILexicalBlockFile(scope: !1069, file: !159, discriminator: 2)
!1076 = !DILocation(line: 447, column: 46, scope: !1075)
!1077 = !DILocation(line: 447, column: 53, scope: !1075)
!1078 = !DILocation(line: 447, column: 40, scope: !1075)
!1079 = !DILocation(line: 447, column: 5, scope: !1075)
!1080 = distinct !{!1080, !1081}
!1081 = !DILocation(line: 447, column: 5, scope: !1062)
!1082 = !DILocation(line: 449, column: 24, scope: !1062)
!1083 = !DILocation(line: 449, column: 29, scope: !1062)
!1084 = !DILocation(line: 449, column: 36, scope: !1062)
!1085 = !DILocation(line: 449, column: 41, scope: !1062)
!1086 = !DILocation(line: 449, column: 5, scope: !1062)
!1087 = !DILocation(line: 449, column: 10, scope: !1062)
!1088 = !DILocation(line: 449, column: 17, scope: !1062)
!1089 = !DILocation(line: 449, column: 22, scope: !1062)
!1090 = !DILocation(line: 450, column: 3, scope: !1062)
!1091 = !DILocation(line: 452, column: 7, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !841, file: !159, line: 452, column: 7)
!1093 = !DILocation(line: 452, column: 12, scope: !1092)
!1094 = !DILocation(line: 452, column: 7, scope: !841)
!1095 = !DILocation(line: 453, column: 52, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1092, file: !159, line: 452, column: 26)
!1097 = !DILocation(line: 453, column: 36, scope: !1096)
!1098 = !DILocation(line: 454, column: 26, scope: !1096)
!1099 = !DILocation(line: 454, column: 17, scope: !1096)
!1100 = !DILocation(line: 455, column: 34, scope: !1096)
!1101 = !DILocation(line: 455, column: 39, scope: !1096)
!1102 = !DILocation(line: 455, column: 49, scope: !1096)
!1103 = !DILocation(line: 455, column: 17, scope: !1096)
!1104 = !DILocation(line: 453, column: 5, scope: !1105)
!1105 = !DILexicalBlockFile(scope: !1096, file: !159, discriminator: 1)
!1106 = !DILocation(line: 456, column: 46, scope: !1096)
!1107 = !DILocation(line: 456, column: 37, scope: !1096)
!1108 = !DILocation(line: 457, column: 35, scope: !1096)
!1109 = !DILocation(line: 457, column: 19, scope: !1096)
!1110 = !DILocation(line: 456, column: 5, scope: !1105)
!1111 = !DILocation(line: 459, column: 5, scope: !1096)
!1112 = !DILocation(line: 459, column: 10, scope: !1096)
!1113 = !DILocation(line: 459, column: 23, scope: !1096)
!1114 = !DILocation(line: 460, column: 3, scope: !1096)
!1115 = !DILocation(line: 462, column: 7, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !841, file: !159, line: 462, column: 7)
!1117 = !DILocation(line: 462, column: 15, scope: !1116)
!1118 = !DILocation(line: 462, column: 7, scope: !841)
!1119 = !DILocation(line: 463, column: 25, scope: !1116)
!1120 = !DILocation(line: 463, column: 5, scope: !1116)
!1121 = !DILocation(line: 465, column: 8, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !841, file: !159, line: 465, column: 7)
!1123 = !DILocation(line: 465, column: 13, scope: !1122)
!1124 = !DILocation(line: 465, column: 27, scope: !1122)
!1125 = !DILocation(line: 465, column: 30, scope: !1126)
!1126 = !DILexicalBlockFile(scope: !1122, file: !159, discriminator: 1)
!1127 = !DILocation(line: 465, column: 35, scope: !1126)
!1128 = !DILocation(line: 465, column: 7, scope: !1126)
!1129 = !DILocation(line: 472, column: 25, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1122, file: !159, line: 465, column: 53)
!1131 = !DILocation(line: 472, column: 5, scope: !1130)
!1132 = !DILocation(line: 473, column: 3, scope: !1130)
!1133 = !DILocation(line: 475, column: 14, scope: !841)
!1134 = !DILocation(line: 476, column: 1, scope: !841)
!1135 = distinct !DISubprogram(name: "modstatdb_note_core", scope: !159, file: !159, line: 383, type: !842, isLocal: true, isDefinition: true, scopeLine: 384, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !263)
!1136 = !DILocalVariable(name: "pkg", arg: 1, scope: !1135, file: !159, line: 383, type: !844)
!1137 = !DILocation(line: 383, column: 37, scope: !1135)
!1138 = !DILocation(line: 385, column: 7, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1135, file: !159, line: 385, column: 7)
!1140 = !DILocation(line: 385, column: 15, scope: !1139)
!1141 = !DILocation(line: 385, column: 7, scope: !1135)
!1142 = !DILocation(line: 386, column: 88, scope: !1139)
!1143 = !DILocation(line: 386, column: 5, scope: !1139)
!1144 = !DILocation(line: 388, column: 3, scope: !1135)
!1145 = !DILocation(line: 389, column: 22, scope: !1135)
!1146 = !DILocation(line: 389, column: 28, scope: !1135)
!1147 = !DILocation(line: 389, column: 33, scope: !1135)
!1148 = !DILocation(line: 389, column: 3, scope: !1135)
!1149 = !DILocation(line: 391, column: 18, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1135, file: !159, line: 391, column: 7)
!1151 = !DILocation(line: 391, column: 30, scope: !1150)
!1152 = !DILocation(line: 391, column: 36, scope: !1150)
!1153 = !DILocation(line: 391, column: 7, scope: !1150)
!1154 = !DILocation(line: 391, column: 57, scope: !1150)
!1155 = !DILocation(line: 391, column: 50, scope: !1150)
!1156 = !DILocation(line: 391, column: 7, scope: !1135)
!1157 = !DILocation(line: 392, column: 12, scope: !1150)
!1158 = !DILocation(line: 393, column: 22, scope: !1150)
!1159 = !DILocation(line: 393, column: 13, scope: !1150)
!1160 = !DILocation(line: 392, column: 5, scope: !1161)
!1161 = !DILexicalBlockFile(scope: !1150, file: !159, discriminator: 1)
!1162 = !DILocation(line: 392, column: 5, scope: !1150)
!1163 = !DILocation(line: 394, column: 14, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1135, file: !159, line: 394, column: 7)
!1165 = !DILocation(line: 394, column: 7, scope: !1164)
!1166 = !DILocation(line: 394, column: 7, scope: !1135)
!1167 = !DILocation(line: 395, column: 12, scope: !1164)
!1168 = !DILocation(line: 396, column: 22, scope: !1164)
!1169 = !DILocation(line: 396, column: 13, scope: !1164)
!1170 = !DILocation(line: 395, column: 5, scope: !1171)
!1171 = !DILexicalBlockFile(scope: !1164, file: !159, discriminator: 1)
!1172 = !DILocation(line: 395, column: 5, scope: !1164)
!1173 = !DILocation(line: 397, column: 24, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1135, file: !159, line: 397, column: 7)
!1175 = !DILocation(line: 397, column: 17, scope: !1174)
!1176 = !DILocation(line: 397, column: 43, scope: !1174)
!1177 = !DILocation(line: 397, column: 7, scope: !1178)
!1178 = !DILexicalBlockFile(scope: !1174, file: !159, discriminator: 1)
!1179 = !DILocation(line: 397, column: 7, scope: !1174)
!1180 = !DILocation(line: 397, column: 7, scope: !1135)
!1181 = !DILocation(line: 398, column: 12, scope: !1174)
!1182 = !DILocation(line: 399, column: 22, scope: !1174)
!1183 = !DILocation(line: 399, column: 13, scope: !1174)
!1184 = !DILocation(line: 398, column: 5, scope: !1178)
!1185 = !DILocation(line: 398, column: 5, scope: !1174)
!1186 = !DILocation(line: 400, column: 20, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1135, file: !159, line: 400, column: 7)
!1188 = !DILocation(line: 400, column: 13, scope: !1187)
!1189 = !DILocation(line: 400, column: 7, scope: !1190)
!1190 = !DILexicalBlockFile(scope: !1187, file: !159, discriminator: 1)
!1191 = !DILocation(line: 400, column: 7, scope: !1187)
!1192 = !DILocation(line: 400, column: 7, scope: !1135)
!1193 = !DILocation(line: 401, column: 12, scope: !1187)
!1194 = !DILocation(line: 402, column: 22, scope: !1187)
!1195 = !DILocation(line: 402, column: 13, scope: !1187)
!1196 = !DILocation(line: 401, column: 5, scope: !1190)
!1197 = !DILocation(line: 401, column: 5, scope: !1187)
!1198 = !DILocation(line: 403, column: 14, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1135, file: !159, line: 403, column: 7)
!1200 = !DILocation(line: 403, column: 7, scope: !1199)
!1201 = !DILocation(line: 403, column: 7, scope: !1135)
!1202 = !DILocation(line: 404, column: 12, scope: !1199)
!1203 = !DILocation(line: 405, column: 22, scope: !1199)
!1204 = !DILocation(line: 405, column: 13, scope: !1199)
!1205 = !DILocation(line: 404, column: 5, scope: !1206)
!1206 = !DILexicalBlockFile(scope: !1199, file: !159, discriminator: 1)
!1207 = !DILocation(line: 404, column: 5, scope: !1199)
!1208 = !DILocation(line: 406, column: 11, scope: !1135)
!1209 = !DILocation(line: 406, column: 33, scope: !1135)
!1210 = !DILocation(line: 406, column: 3, scope: !1135)
!1211 = !DILocation(line: 407, column: 14, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1135, file: !159, line: 407, column: 7)
!1213 = !DILocation(line: 407, column: 32, scope: !1212)
!1214 = !DILocation(line: 407, column: 7, scope: !1212)
!1215 = !DILocation(line: 407, column: 7, scope: !1135)
!1216 = !DILocation(line: 408, column: 12, scope: !1212)
!1217 = !DILocation(line: 409, column: 22, scope: !1212)
!1218 = !DILocation(line: 409, column: 13, scope: !1212)
!1219 = !DILocation(line: 408, column: 5, scope: !1220)
!1220 = !DILexicalBlockFile(scope: !1212, file: !159, discriminator: 1)
!1221 = !DILocation(line: 408, column: 5, scope: !1212)
!1222 = !DILocation(line: 411, column: 17, scope: !1135)
!1223 = !DILocation(line: 411, column: 3, scope: !1135)
!1224 = !DILocation(line: 414, column: 14, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1135, file: !159, line: 414, column: 7)
!1226 = !DILocation(line: 414, column: 7, scope: !1225)
!1227 = !DILocation(line: 414, column: 28, scope: !1225)
!1228 = !DILocation(line: 414, column: 7, scope: !1135)
!1229 = !DILocation(line: 415, column: 68, scope: !1225)
!1230 = !DILocation(line: 415, column: 5, scope: !1225)
!1231 = !DILocation(line: 418, column: 13, scope: !1135)
!1232 = !DILocation(line: 420, column: 7, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1135, file: !159, line: 420, column: 7)
!1234 = !DILocation(line: 420, column: 18, scope: !1233)
!1235 = !DILocation(line: 420, column: 7, scope: !1135)
!1236 = !DILocation(line: 421, column: 5, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1233, file: !159, line: 420, column: 25)
!1238 = !DILocation(line: 422, column: 16, scope: !1237)
!1239 = !DILocation(line: 423, column: 3, scope: !1237)
!1240 = !DILocation(line: 425, column: 3, scope: !1135)
!1241 = !DILocation(line: 426, column: 1, scope: !1135)
!1242 = distinct !DISubprogram(name: "modstatdb_note_ifwrite", scope: !159, file: !159, line: 479, type: !842, isLocal: false, isDefinition: true, scopeLine: 480, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !263)
!1243 = !DILocalVariable(name: "pkg", arg: 1, scope: !1242, file: !159, line: 479, type: !844)
!1244 = !DILocation(line: 479, column: 40, scope: !1242)
!1245 = !DILocation(line: 481, column: 7, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1242, file: !159, line: 481, column: 7)
!1247 = !DILocation(line: 481, column: 15, scope: !1246)
!1248 = !DILocation(line: 481, column: 7, scope: !1242)
!1249 = !DILocation(line: 482, column: 20, scope: !1246)
!1250 = !DILocation(line: 482, column: 5, scope: !1246)
!1251 = !DILocation(line: 483, column: 1, scope: !1242)
!1252 = distinct !DISubprogram(name: "ulist_select", scope: !159, file: !159, line: 63, type: !1253, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !263)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!175, !1255}
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64, align: 64)
!1256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !576)
!1257 = !DILocalVariable(name: "de", arg: 1, scope: !1252, file: !159, line: 63, type: !1255)
!1258 = !DILocation(line: 63, column: 46, scope: !1252)
!1259 = !DILocalVariable(name: "p", scope: !1252, file: !159, line: 64, type: !245)
!1260 = !DILocation(line: 64, column: 15, scope: !1252)
!1261 = !DILocalVariable(name: "l", scope: !1252, file: !159, line: 65, type: !175)
!1262 = !DILocation(line: 65, column: 7, scope: !1252)
!1263 = !DILocation(line: 66, column: 11, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1252, file: !159, line: 66, column: 3)
!1265 = !DILocation(line: 66, column: 15, scope: !1264)
!1266 = !DILocation(line: 66, column: 9, scope: !1264)
!1267 = !DILocation(line: 66, column: 24, scope: !1264)
!1268 = !DILocation(line: 66, column: 8, scope: !1264)
!1269 = !DILocation(line: 66, column: 29, scope: !1270)
!1270 = !DILexicalBlockFile(scope: !1271, file: !159, discriminator: 1)
!1271 = distinct !DILexicalBlock(scope: !1264, file: !159, line: 66, column: 3)
!1272 = !DILocation(line: 66, column: 28, scope: !1270)
!1273 = !DILocation(line: 66, column: 3, scope: !1270)
!1274 = !DILocation(line: 67, column: 21, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1271, file: !159, line: 67, column: 9)
!1276 = !DILocation(line: 67, column: 20, scope: !1275)
!1277 = !DILocation(line: 67, column: 10, scope: !1275)
!1278 = !DILocation(line: 67, column: 9, scope: !1271)
!1279 = !DILocation(line: 68, column: 7, scope: !1275)
!1280 = !DILocation(line: 67, column: 22, scope: !1281)
!1281 = !DILexicalBlockFile(scope: !1275, file: !159, discriminator: 1)
!1282 = !DILocation(line: 66, column: 33, scope: !1283)
!1283 = !DILexicalBlockFile(scope: !1271, file: !159, discriminator: 2)
!1284 = !DILocation(line: 66, column: 38, scope: !1283)
!1285 = !DILocation(line: 66, column: 3, scope: !1283)
!1286 = distinct !{!1286, !1287}
!1287 = !DILocation(line: 66, column: 3, scope: !1252)
!1288 = !DILocation(line: 69, column: 7, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1252, file: !159, line: 69, column: 7)
!1290 = !DILocation(line: 69, column: 9, scope: !1289)
!1291 = !DILocation(line: 69, column: 7, scope: !1252)
!1292 = !DILocation(line: 70, column: 11, scope: !1289)
!1293 = !DILocation(line: 71, column: 35, scope: !1289)
!1294 = !DILocation(line: 71, column: 39, scope: !1289)
!1295 = !DILocation(line: 71, column: 47, scope: !1289)
!1296 = !DILocation(line: 70, column: 5, scope: !1297)
!1297 = !DILexicalBlockFile(scope: !1289, file: !159, discriminator: 1)
!1298 = !DILocation(line: 70, column: 5, scope: !1289)
!1299 = !DILocation(line: 72, column: 7, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1252, file: !159, line: 72, column: 7)
!1301 = !DILocation(line: 72, column: 21, scope: !1300)
!1302 = !DILocation(line: 72, column: 7, scope: !1252)
!1303 = !DILocation(line: 72, column: 43, scope: !1304)
!1304 = !DILexicalBlockFile(scope: !1300, file: !159, discriminator: 1)
!1305 = !DILocation(line: 72, column: 41, scope: !1304)
!1306 = !DILocation(line: 72, column: 28, scope: !1304)
!1307 = !DILocation(line: 73, column: 12, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1300, file: !159, line: 73, column: 12)
!1309 = !DILocation(line: 73, column: 17, scope: !1308)
!1310 = !DILocation(line: 73, column: 14, scope: !1308)
!1311 = !DILocation(line: 73, column: 12, scope: !1300)
!1312 = !DILocation(line: 74, column: 11, scope: !1308)
!1313 = !DILocation(line: 75, column: 32, scope: !1308)
!1314 = !DILocation(line: 75, column: 35, scope: !1308)
!1315 = !DILocation(line: 74, column: 5, scope: !1316)
!1316 = !DILexicalBlockFile(scope: !1308, file: !159, discriminator: 1)
!1317 = !DILocation(line: 74, column: 5, scope: !1308)
!1318 = !DILocation(line: 76, column: 3, scope: !1252)
!1319 = !DILocation(line: 77, column: 1, scope: !1252)
!1320 = distinct !DISubprogram(name: "c_isdigit", scope: !145, file: !145, line: 78, type: !1321, isLocal: true, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !263)
!1321 = !DISubroutineType(types: !1322)
!1322 = !{!160, !175}
!1323 = !DILocalVariable(name: "c", arg: 1, scope: !1320, file: !145, line: 78, type: !175)
!1324 = !DILocation(line: 78, column: 15, scope: !1320)
!1325 = !DILocation(line: 80, column: 18, scope: !1320)
!1326 = !DILocation(line: 80, column: 9, scope: !1320)
!1327 = !DILocation(line: 80, column: 2, scope: !1320)
