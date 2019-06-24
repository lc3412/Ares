; ModuleID = './line8-local.o.i'
source_filename = "./line8-local.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.qitem = type { %struct.anon, i8*, i8*, i8*, i8*, i8*, %struct._IO_FILE*, %struct._IO_FILE*, i32 }
%struct.anon = type { %struct.qitem*, %struct.qitem** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.sigaction = type { %union.anon, %struct.__sigset_t, i32, void ()* }
%union.anon = type { void (i32)* }
%struct.__sigset_t = type { [16 x i64] }
%union.anon.9 = type { i32 }
%union.anon.10 = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"/var/mail\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"local delivery deferred: %m\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"local delivery deferred: can not create `%s'\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"local delivery deferred: can not lock `%s'\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"local delivery deferred: can not open `%s': %m\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"MAILER-DAEMON\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"local delivery deferred: can not seek: %m\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"%sFrom %s\09%s\00", align 1
@.str.11 = private unnamed_addr constant [50 x i8] c"local delivery deferred: can not write header: %m\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"local delivery failed: corrupted queue file\00", align 1
@errmsg = external global [200 x i8], align 16
@.str.13 = private unnamed_addr constant [21 x i8] c"corrupted queue file\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"From \00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"local delivery failed: write error: %m\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"error recovering mbox `%s': %m\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"/usr/local/lib/dma-mbox-create\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"dma-mbox-create\00", align 1
@.str.20 = private unnamed_addr constant [50 x i8] c"cannot execute /usr/local/lib/dma-mbox-create: %m\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"hung child while creating mbox `%s': %m\00", align 1
@.str.22 = private unnamed_addr constant [47 x i8] c"child disappeared while creating mbox `%s': %m\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"error creating mbox `%s'\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"error creating mbox\00", align 1

; Function Attrs: nounwind uwtable
define i32 @deliver_local(%struct.qitem*) #0 !dbg !235 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qitem*, align 8
  %4 = alloca [4097 x i8], align 16
  %5 = alloca [1000 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.qitem* %0, %struct.qitem** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.qitem** %3, metadata !318, metadata !319), !dbg !320
  call void @llvm.dbg.declare(metadata [4097 x i8]* %4, metadata !321, metadata !319), !dbg !325
  call void @llvm.dbg.declare(metadata [1000 x i8]* %5, metadata !326, metadata !319), !dbg !330
  call void @llvm.dbg.declare(metadata i8** %6, metadata !331, metadata !319), !dbg !332
  call void @llvm.dbg.declare(metadata i8** %7, metadata !333, metadata !319), !dbg !334
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8** %7, align 8, !dbg !334
  call void @llvm.dbg.declare(metadata i64* %8, metadata !335, metadata !319), !dbg !336
  call void @llvm.dbg.declare(metadata i32* %9, metadata !337, metadata !319), !dbg !338
  store i32 0, i32* %9, align 4, !dbg !338
  call void @llvm.dbg.declare(metadata i32* %10, metadata !339, metadata !319), !dbg !340
  call void @llvm.dbg.declare(metadata i32* %11, metadata !341, metadata !319), !dbg !342
  call void @llvm.dbg.declare(metadata i32* %12, metadata !343, metadata !319), !dbg !344
  store i32 0, i32* %12, align 4, !dbg !344
  call void @llvm.dbg.declare(metadata i64* %13, metadata !345, metadata !319), !dbg !348
  call void @llvm.dbg.declare(metadata i64* %14, metadata !349, metadata !319), !dbg !353
  %17 = call i64 @time(i64* null) #8, !dbg !354
  store i64 %17, i64* %14, align 8, !dbg !353
  %18 = getelementptr inbounds [4097 x i8], [4097 x i8]* %4, i32 0, i32 0, !dbg !355
  %19 = load %struct.qitem*, %struct.qitem** %3, align 8, !dbg !356
  %20 = getelementptr inbounds %struct.qitem, %struct.qitem* %19, i32 0, i32 2, !dbg !357
  %21 = load i8*, i8** %20, align 8, !dbg !357
  %22 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %18, i64 4097, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* %21) #8, !dbg !358
  store i32 %22, i32* %11, align 4, !dbg !359
  %23 = load i32, i32* %11, align 4, !dbg !360
  %24 = icmp slt i32 %23, 0, !dbg !362
  br i1 %24, label %29, label %25, !dbg !363

; <label>:25:                                     ; preds = %1
  %26 = load i32, i32* %11, align 4, !dbg !364
  %27 = sext i32 %26 to i64, !dbg !366
  %28 = icmp uge i64 %27, 4097, !dbg !367
  br i1 %28, label %29, label %30, !dbg !368

; <label>:29:                                     ; preds = %25, %1
  call void (i32, i8*, ...) @syslog(i32 5, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0)), !dbg !369
  store i32 1, i32* %2, align 4, !dbg !371
  br label %181, !dbg !371

; <label>:30:                                     ; preds = %25
  br label %31, !dbg !372

; <label>:31:                                     ; preds = %53, %30
  %32 = call i32 @do_timeout(i32 100, i32 0), !dbg !374
  %33 = getelementptr inbounds [4097 x i8], [4097 x i8]* %4, i32 0, i32 0, !dbg !375
  %34 = call i32 (i8*, i32, ...) @open_locked(i8* %33, i32 1025), !dbg !376
  store i32 %34, i32* %10, align 4, !dbg !377
  %35 = load i32, i32* %10, align 4, !dbg !378
  %36 = icmp slt i32 %35, 0, !dbg !380
  br i1 %36, label %37, label %61, !dbg !381

; <label>:37:                                     ; preds = %31
  call void @llvm.dbg.declare(metadata i32* %15, metadata !382, metadata !319), !dbg !384
  %38 = call i32* @__errno_location() #1, !dbg !385
  %39 = load i32, i32* %38, align 4, !dbg !386
  store i32 %39, i32* %15, align 4, !dbg !384
  %40 = call i32 @do_timeout(i32 0, i32 0), !dbg !387
  %41 = load i32, i32* %15, align 4, !dbg !388
  switch i32 %41, label %58 [
    i32 13, label %42
    i32 2, label %42
    i32 4, label %56
  ], !dbg !389

; <label>:42:                                     ; preds = %37, %37
  %43 = load i32, i32* %9, align 4, !dbg !390
  %44 = icmp sgt i32 %43, 0, !dbg !393
  br i1 %44, label %51, label %45, !dbg !394

; <label>:45:                                     ; preds = %42
  %46 = load %struct.qitem*, %struct.qitem** %3, align 8, !dbg !395
  %47 = getelementptr inbounds %struct.qitem, %struct.qitem* %46, i32 0, i32 2, !dbg !397
  %48 = load i8*, i8** %47, align 8, !dbg !397
  %49 = call i32 @create_mbox(i8* %48), !dbg !398
  %50 = icmp ne i32 %49, 0, !dbg !399
  br i1 %50, label %51, label %53, !dbg !400

; <label>:51:                                     ; preds = %45, %42
  %52 = getelementptr inbounds [4097 x i8], [4097 x i8]* %4, i32 0, i32 0, !dbg !401
  call void (i32, i8*, ...) @syslog(i32 3, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i32 0, i32 0), i8* %52), !dbg !403
  store i32 1, i32* %2, align 4, !dbg !404
  br label %181, !dbg !404

; <label>:53:                                     ; preds = %45
  %54 = load i32, i32* %9, align 4, !dbg !405
  %55 = add nsw i32 %54, 1, !dbg !405
  store i32 %55, i32* %9, align 4, !dbg !405
  br label %31, !dbg !406

; <label>:56:                                     ; preds = %37
  %57 = getelementptr inbounds [4097 x i8], [4097 x i8]* %4, i32 0, i32 0, !dbg !407
  call void (i32, i8*, ...) @syslog(i32 5, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i32 0), i8* %57), !dbg !408
  br label %60, !dbg !409

; <label>:58:                                     ; preds = %37
  %59 = getelementptr inbounds [4097 x i8], [4097 x i8]* %4, i32 0, i32 0, !dbg !410
  call void (i32, i8*, ...) @syslog(i32 5, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i32 0, i32 0), i8* %59), !dbg !411
  br label %60, !dbg !412

; <label>:60:                                     ; preds = %58, %56
  store i32 1, i32* %2, align 4, !dbg !413
  br label %181, !dbg !413

; <label>:61:                                     ; preds = %31
  %62 = call i32 @do_timeout(i32 0, i32 0), !dbg !414
  %63 = load i32, i32* %10, align 4, !dbg !415
  %64 = call i64 @lseek(i32 %63, i64 0, i32 2) #8, !dbg !416
  store i64 %64, i64* %13, align 8, !dbg !417
  %65 = load i64, i64* %13, align 8, !dbg !418
  %66 = icmp eq i64 %65, 0, !dbg !420
  br i1 %66, label %67, label %68, !dbg !421

; <label>:67:                                     ; preds = %61
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i32 0, i32 0), i8** %7, align 8, !dbg !422
  br label %68, !dbg !423

; <label>:68:                                     ; preds = %67, %61
  %69 = load %struct.qitem*, %struct.qitem** %3, align 8, !dbg !424
  %70 = getelementptr inbounds %struct.qitem, %struct.qitem* %69, i32 0, i32 1, !dbg !425
  %71 = load i8*, i8** %70, align 8, !dbg !425
  store i8* %71, i8** %6, align 8, !dbg !426
  %72 = load i8*, i8** %6, align 8, !dbg !427
  %73 = call i32 @strcmp(i8* %72, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i32 0, i32 0)) #9, !dbg !429
  %74 = icmp eq i32 %73, 0, !dbg !430
  br i1 %74, label %75, label %76, !dbg !431

; <label>:75:                                     ; preds = %68
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i8** %6, align 8, !dbg !432
  br label %76, !dbg !433

; <label>:76:                                     ; preds = %75, %68
  %77 = load %struct.qitem*, %struct.qitem** %3, align 8, !dbg !434
  %78 = getelementptr inbounds %struct.qitem, %struct.qitem* %77, i32 0, i32 7, !dbg !436
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %78, align 8, !dbg !436
  %80 = call i32 @fseek(%struct._IO_FILE* %79, i64 0, i32 0), !dbg !437
  %81 = icmp ne i32 %80, 0, !dbg !438
  br i1 %81, label %82, label %83, !dbg !439

; <label>:82:                                     ; preds = %76
  call void (i32, i8*, ...) @syslog(i32 5, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i32 0, i32 0)), !dbg !440
  br label %177, !dbg !442

; <label>:83:                                     ; preds = %76
  %84 = getelementptr inbounds [1000 x i8], [1000 x i8]* %5, i32 0, i32 0, !dbg !443
  %85 = load i8*, i8** %7, align 8, !dbg !444
  %86 = load i8*, i8** %6, align 8, !dbg !445
  %87 = call i8* @ctime(i64* %14) #8, !dbg !446
  %88 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %84, i64 1000, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8* %85, i8* %86, i8* %87) #8, !dbg !447
  store i32 %88, i32* %11, align 4, !dbg !449
  %89 = load i32, i32* %11, align 4, !dbg !450
  %90 = icmp slt i32 %89, 0, !dbg !452
  br i1 %90, label %95, label %91, !dbg !453

; <label>:91:                                     ; preds = %83
  %92 = load i32, i32* %11, align 4, !dbg !454
  %93 = sext i32 %92 to i64, !dbg !456
  %94 = icmp uge i64 %93, 1000, !dbg !457
  br i1 %94, label %95, label %96, !dbg !458

; <label>:95:                                     ; preds = %91, %83
  call void (i32, i8*, ...) @syslog(i32 5, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.11, i32 0, i32 0)), !dbg !459
  br label %177, !dbg !461

; <label>:96:                                     ; preds = %91
  %97 = load i32, i32* %10, align 4, !dbg !462
  %98 = getelementptr inbounds [1000 x i8], [1000 x i8]* %5, i32 0, i32 0, !dbg !464
  %99 = load i32, i32* %11, align 4, !dbg !465
  %100 = sext i32 %99 to i64, !dbg !465
  %101 = call i64 @write(i32 %97, i8* %98, i64 %100), !dbg !466
  %102 = load i32, i32* %11, align 4, !dbg !467
  %103 = sext i32 %102 to i64, !dbg !467
  %104 = icmp ne i64 %101, %103, !dbg !468
  br i1 %104, label %105, label %106, !dbg !469

; <label>:105:                                    ; preds = %96
  br label %168, !dbg !470

; <label>:106:                                    ; preds = %96
  br label %107, !dbg !471

; <label>:107:                                    ; preds = %164, %106
  %108 = load %struct.qitem*, %struct.qitem** %3, align 8, !dbg !472
  %109 = getelementptr inbounds %struct.qitem, %struct.qitem* %108, i32 0, i32 7, !dbg !473
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** %109, align 8, !dbg !473
  %111 = call i32 @feof(%struct._IO_FILE* %110) #8, !dbg !474
  %112 = icmp ne i32 %111, 0, !dbg !475
  %113 = xor i1 %112, true, !dbg !475
  br i1 %113, label %114, label %165, !dbg !476

; <label>:114:                                    ; preds = %107
  %115 = getelementptr inbounds [1000 x i8], [1000 x i8]* %5, i32 0, i32 0, !dbg !477
  %116 = load %struct.qitem*, %struct.qitem** %3, align 8, !dbg !480
  %117 = getelementptr inbounds %struct.qitem, %struct.qitem* %116, i32 0, i32 7, !dbg !481
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** %117, align 8, !dbg !481
  %119 = call i8* @fgets(i8* %115, i32 1000, %struct._IO_FILE* %118), !dbg !482
  %120 = icmp eq i8* %119, null, !dbg !483
  br i1 %120, label %121, label %122, !dbg !484

; <label>:121:                                    ; preds = %114
  br label %165, !dbg !485

; <label>:122:                                    ; preds = %114
  %123 = getelementptr inbounds [1000 x i8], [1000 x i8]* %5, i32 0, i32 0, !dbg !486
  %124 = call i64 @strlen(i8* %123) #9, !dbg !487
  store i64 %124, i64* %8, align 8, !dbg !488
  %125 = load i64, i64* %8, align 8, !dbg !489
  %126 = icmp eq i64 %125, 0, !dbg !491
  br i1 %126, label %134, label %127, !dbg !492

; <label>:127:                                    ; preds = %122
  %128 = load i64, i64* %8, align 8, !dbg !493
  %129 = sub i64 %128, 1, !dbg !495
  %130 = getelementptr inbounds [1000 x i8], [1000 x i8]* %5, i64 0, i64 %129, !dbg !496
  %131 = load i8, i8* %130, align 1, !dbg !496
  %132 = sext i8 %131 to i32, !dbg !496
  %133 = icmp ne i32 %132, 10, !dbg !497
  br i1 %133, label %134, label %136, !dbg !498

; <label>:134:                                    ; preds = %127, %122
  call void (i32, i8*, ...) @syslog(i32 2, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i32 0, i32 0)), !dbg !499
  %135 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @errmsg, i32 0, i32 0), i64 200, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i32 0, i32 0)) #8, !dbg !501
  store i32 -1, i32* %11, align 4, !dbg !502
  br label %169, !dbg !503

; <label>:136:                                    ; preds = %127
  %137 = getelementptr inbounds [1000 x i8], [1000 x i8]* %5, i32 0, i32 0, !dbg !504
  %138 = call i64 @strspn(i8* %137, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)) #9, !dbg !506
  %139 = getelementptr inbounds [1000 x i8], [1000 x i8]* %5, i64 0, i64 %138, !dbg !507
  %140 = call i32 @strncmp(i8* %139, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i64 5) #9, !dbg !508
  %141 = icmp eq i32 %140, 0, !dbg !510
  br i1 %141, label %142, label %149, !dbg !511

; <label>:142:                                    ; preds = %136
  call void @llvm.dbg.declare(metadata i8** %16, metadata !512, metadata !319), !dbg !514
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i8** %16, align 8, !dbg !514
  %143 = load i32, i32* %10, align 4, !dbg !515
  %144 = load i8*, i8** %16, align 8, !dbg !517
  %145 = call i64 @write(i32 %143, i8* %144, i64 1), !dbg !518
  %146 = icmp ne i64 %145, 1, !dbg !519
  br i1 %146, label %147, label %148, !dbg !520

; <label>:147:                                    ; preds = %142
  br label %168, !dbg !521

; <label>:148:                                    ; preds = %142
  store i32 0, i32* %12, align 4, !dbg !522
  br label %156, !dbg !523

; <label>:149:                                    ; preds = %136
  %150 = getelementptr inbounds [1000 x i8], [1000 x i8]* %5, i32 0, i32 0, !dbg !524
  %151 = call i32 @strcmp(i8* %150, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)) #9, !dbg !527
  %152 = icmp eq i32 %151, 0, !dbg !528
  br i1 %152, label %153, label %154, !dbg !527

; <label>:153:                                    ; preds = %149
  store i32 1, i32* %12, align 4, !dbg !529
  br label %155, !dbg !531

; <label>:154:                                    ; preds = %149
  store i32 0, i32* %12, align 4, !dbg !532
  br label %155

; <label>:155:                                    ; preds = %154, %153
  br label %156

; <label>:156:                                    ; preds = %155, %148
  %157 = load i32, i32* %10, align 4, !dbg !534
  %158 = getelementptr inbounds [1000 x i8], [1000 x i8]* %5, i32 0, i32 0, !dbg !536
  %159 = load i64, i64* %8, align 8, !dbg !537
  %160 = call i64 @write(i32 %157, i8* %158, i64 %159), !dbg !538
  %161 = load i64, i64* %8, align 8, !dbg !539
  %162 = icmp ne i64 %160, %161, !dbg !540
  br i1 %162, label %163, label %164, !dbg !541

; <label>:163:                                    ; preds = %156
  br label %168, !dbg !542

; <label>:164:                                    ; preds = %156
  br label %107, !dbg !543, !llvm.loop !545

; <label>:165:                                    ; preds = %121, %107
  %166 = load i32, i32* %10, align 4, !dbg !546
  %167 = call i32 @close(i32 %166), !dbg !547
  store i32 0, i32* %2, align 4, !dbg !548
  br label %181, !dbg !548

; <label>:168:                                    ; preds = %163, %147, %105
  call void (i32, i8*, ...) @syslog(i32 3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i32 0, i32 0)), !dbg !549
  store i32 1, i32* %11, align 4, !dbg !550
  br label %169, !dbg !551

; <label>:169:                                    ; preds = %168, %134
  %170 = load i32, i32* %10, align 4, !dbg !552
  %171 = load i64, i64* %13, align 8, !dbg !554
  %172 = call i32 @ftruncate(i32 %170, i64 %171) #8, !dbg !555
  %173 = icmp ne i32 %172, 0, !dbg !556
  br i1 %173, label %174, label %176, !dbg !557

; <label>:174:                                    ; preds = %169
  %175 = getelementptr inbounds [4097 x i8], [4097 x i8]* %4, i32 0, i32 0, !dbg !558
  call void (i32, i8*, ...) @syslog(i32 4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i32 0, i32 0), i8* %175), !dbg !559
  br label %176, !dbg !559

; <label>:176:                                    ; preds = %174, %169
  br label %177, !dbg !560

; <label>:177:                                    ; preds = %176, %95, %82
  %178 = load i32, i32* %10, align 4, !dbg !562
  %179 = call i32 @close(i32 %178), !dbg !563
  %180 = load i32, i32* %11, align 4, !dbg !564
  store i32 %180, i32* %2, align 4, !dbg !565
  br label %181, !dbg !565

; <label>:181:                                    ; preds = %177, %165, %60, %51, %29
  %182 = load i32, i32* %2, align 4, !dbg !566
  ret i32 %182, !dbg !566
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i64 @time(i64*) #2

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #2

declare void @syslog(i32, i8*, ...) #3

declare i32 @do_timeout(i32, i32) #3

declare i32 @open_locked(i8*, i32, ...) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

; Function Attrs: nounwind uwtable
define internal i32 @create_mbox(i8*) #0 !dbg !567 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sigaction, align 8
  %4 = alloca %struct.sigaction, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %union.anon.9, align 4
  %13 = alloca %union.anon.10, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !570, metadata !319), !dbg !571
  call void @llvm.dbg.declare(metadata %struct.sigaction* %3, metadata !572, metadata !319), !dbg !670
  call void @llvm.dbg.declare(metadata %struct.sigaction* %4, metadata !671, metadata !319), !dbg !672
  call void @llvm.dbg.declare(metadata i32* %5, metadata !673, metadata !319), !dbg !675
  call void @llvm.dbg.declare(metadata i32* %6, metadata !676, metadata !319), !dbg !677
  call void @llvm.dbg.declare(metadata i32* %7, metadata !678, metadata !319), !dbg !679
  call void @llvm.dbg.declare(metadata i32* %8, metadata !680, metadata !319), !dbg !681
  call void @llvm.dbg.declare(metadata i64* %9, metadata !682, metadata !319), !dbg !683
  call void @llvm.dbg.declare(metadata i32* %10, metadata !684, metadata !319), !dbg !685
  call void @llvm.dbg.declare(metadata i32* %11, metadata !686, metadata !319), !dbg !687
  store i32 -1, i32* %11, align 4, !dbg !687
  %14 = bitcast %struct.sigaction* %3 to i8*, !dbg !688
  call void @llvm.memset.p0i8.i64(i8* %14, i8 0, i64 152, i32 8, i1 false), !dbg !688
  %15 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 0, !dbg !689
  %16 = bitcast %union.anon* %15 to void (i32)**, !dbg !690
  store void (i32)* null, void (i32)** %16, align 8, !dbg !691
  %17 = call i32 @sigaction(i32 17, %struct.sigaction* %3, %struct.sigaction* %4) #8, !dbg !692
  %18 = call i32 @do_timeout(i32 100, i32 0), !dbg !693
  %19 = call i32 @fork() #8, !dbg !694
  store i32 %19, i32* %5, align 4, !dbg !695
  %20 = load i32, i32* %5, align 4, !dbg !696
  switch i32 %20, label %41 [
    i32 0, label %21
    i32 -1, label %77
  ], !dbg !697

; <label>:21:                                     ; preds = %1
  %22 = call i64 @sysconf(i32 4) #8, !dbg !698
  store i64 %22, i64* %9, align 8, !dbg !700
  %23 = load i64, i64* %9, align 8, !dbg !701
  %24 = icmp eq i64 %23, -1, !dbg !703
  br i1 %24, label %25, label %26, !dbg !704

; <label>:25:                                     ; preds = %21
  store i64 1024, i64* %9, align 8, !dbg !705
  br label %26, !dbg !706

; <label>:26:                                     ; preds = %25, %21
  store i32 3, i32* %8, align 4, !dbg !707
  br label %27, !dbg !709

; <label>:27:                                     ; preds = %35, %26
  %28 = load i32, i32* %8, align 4, !dbg !710
  %29 = sext i32 %28 to i64, !dbg !710
  %30 = load i64, i64* %9, align 8, !dbg !713
  %31 = icmp sle i64 %29, %30, !dbg !714
  br i1 %31, label %32, label %38, !dbg !715

; <label>:32:                                     ; preds = %27
  %33 = load i32, i32* %8, align 4, !dbg !716
  %34 = call i32 @close(i32 %33), !dbg !717
  br label %35, !dbg !717

; <label>:35:                                     ; preds = %32
  %36 = load i32, i32* %8, align 4, !dbg !718
  %37 = add nsw i32 %36, 1, !dbg !718
  store i32 %37, i32* %8, align 4, !dbg !718
  br label %27, !dbg !720, !llvm.loop !721

; <label>:38:                                     ; preds = %27
  %39 = load i8*, i8** %2, align 8, !dbg !723
  %40 = call i32 (i8*, i8*, ...) @execl(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0), i8* %39, i8* null) #8, !dbg !724
  call void (i32, i8*, ...) @syslog(i32 3, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.20, i32 0, i32 0)), !dbg !725
  call void @exit(i32 1) #10, !dbg !726
  unreachable, !dbg !726

; <label>:41:                                     ; preds = %1
  %42 = load i32, i32* %5, align 4, !dbg !727
  %43 = call i32 @waitpid(i32 %42, i32* %7, i32 0), !dbg !728
  store i32 %43, i32* %6, align 4, !dbg !729
  %44 = call i32* @__errno_location() #1, !dbg !730
  %45 = load i32, i32* %44, align 4, !dbg !731
  store i32 %45, i32* %10, align 4, !dbg !732
  %46 = call i32 @do_timeout(i32 0, i32 0), !dbg !733
  %47 = load i32, i32* %6, align 4, !dbg !734
  %48 = icmp eq i32 %47, -1, !dbg !736
  br i1 %48, label %49, label %54, !dbg !737

; <label>:49:                                     ; preds = %41
  %50 = load i32, i32* %10, align 4, !dbg !738
  %51 = icmp eq i32 %50, 4, !dbg !740
  br i1 %51, label %52, label %54, !dbg !741

; <label>:52:                                     ; preds = %49
  %53 = load i8*, i8** %2, align 8, !dbg !742
  call void (i32, i8*, ...) @syslog(i32 3, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i32 0, i32 0), i8* %53), !dbg !744
  br label %78, !dbg !745

; <label>:54:                                     ; preds = %49, %41
  %55 = load i32, i32* %6, align 4, !dbg !746
  %56 = icmp eq i32 %55, -1, !dbg !748
  br i1 %56, label %57, label %59, !dbg !749

; <label>:57:                                     ; preds = %54
  %58 = load i8*, i8** %2, align 8, !dbg !750
  call void (i32, i8*, ...) @syslog(i32 3, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.22, i32 0, i32 0), i8* %58), !dbg !752
  br label %78, !dbg !753

; <label>:59:                                     ; preds = %54
  %60 = bitcast %union.anon.9* %12 to i32*, !dbg !754
  %61 = load i32, i32* %7, align 4, !dbg !756
  store i32 %61, i32* %60, align 4, !dbg !754
  %62 = bitcast %union.anon.9* %12 to i32*, !dbg !757
  %63 = load i32, i32* %62, align 4, !dbg !757
  %64 = and i32 %63, 127, !dbg !758
  %65 = icmp eq i32 %64, 0, !dbg !754
  br i1 %65, label %66, label %74, !dbg !759

; <label>:66:                                     ; preds = %59
  %67 = bitcast %union.anon.10* %13 to i32*, !dbg !760
  %68 = load i32, i32* %7, align 4, !dbg !762
  store i32 %68, i32* %67, align 4, !dbg !760
  %69 = bitcast %union.anon.10* %13 to i32*, !dbg !763
  %70 = load i32, i32* %69, align 4, !dbg !763
  %71 = and i32 %70, 65280, !dbg !764
  %72 = ashr i32 %71, 8, !dbg !765
  %73 = icmp ne i32 %72, 0, !dbg !760
  br i1 %73, label %74, label %76, !dbg !766

; <label>:74:                                     ; preds = %66, %59
  %75 = load i8*, i8** %2, align 8, !dbg !767
  call void (i32, i8*, ...) @syslog(i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.23, i32 0, i32 0), i8* %75), !dbg !769
  br label %78, !dbg !770

; <label>:76:                                     ; preds = %66
  store i32 0, i32* %11, align 4, !dbg !771
  br label %78, !dbg !772

; <label>:77:                                     ; preds = %1
  call void (i32, i8*, ...) @syslog(i32 3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0)), !dbg !773
  br label %78, !dbg !774

; <label>:78:                                     ; preds = %77, %76, %74, %57, %52
  %79 = call i32 @sigaction(i32 17, %struct.sigaction* %4, %struct.sigaction* null) #8, !dbg !775
  %80 = load i32, i32* %11, align 4, !dbg !776
  ret i32 %80, !dbg !777
}

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #3

; Function Attrs: nounwind
declare i8* @ctime(i64*) #2

declare i64 @write(i32, i8*, i64) #3

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #2

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #5

; Function Attrs: nounwind readonly
declare i64 @strspn(i8*, i8*) #5

declare i32 @close(i32) #3

; Function Attrs: nounwind
declare i32 @ftruncate(i32, i64) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #6

; Function Attrs: nounwind
declare i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) #2

; Function Attrs: nounwind
declare i32 @fork() #2

; Function Attrs: nounwind
declare i64 @sysconf(i32) #2

; Function Attrs: nounwind
declare i32 @execl(i8*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #7

declare i32 @waitpid(i32, i32*, i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!232, !233}
!llvm.ident = !{!234}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !221)
!1 = !DIFile(filename: "line8-local.o.i", directory: "/home/lichi/Desktop/dma/task1")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 71, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/confname.h", directory: "/home/lichi/Desktop/dma/task1")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220}
!6 = !DIEnumerator(name: "_SC_ARG_MAX", value: 0)
!7 = !DIEnumerator(name: "_SC_CHILD_MAX", value: 1)
!8 = !DIEnumerator(name: "_SC_CLK_TCK", value: 2)
!9 = !DIEnumerator(name: "_SC_NGROUPS_MAX", value: 3)
!10 = !DIEnumerator(name: "_SC_OPEN_MAX", value: 4)
!11 = !DIEnumerator(name: "_SC_STREAM_MAX", value: 5)
!12 = !DIEnumerator(name: "_SC_TZNAME_MAX", value: 6)
!13 = !DIEnumerator(name: "_SC_JOB_CONTROL", value: 7)
!14 = !DIEnumerator(name: "_SC_SAVED_IDS", value: 8)
!15 = !DIEnumerator(name: "_SC_REALTIME_SIGNALS", value: 9)
!16 = !DIEnumerator(name: "_SC_PRIORITY_SCHEDULING", value: 10)
!17 = !DIEnumerator(name: "_SC_TIMERS", value: 11)
!18 = !DIEnumerator(name: "_SC_ASYNCHRONOUS_IO", value: 12)
!19 = !DIEnumerator(name: "_SC_PRIORITIZED_IO", value: 13)
!20 = !DIEnumerator(name: "_SC_SYNCHRONIZED_IO", value: 14)
!21 = !DIEnumerator(name: "_SC_FSYNC", value: 15)
!22 = !DIEnumerator(name: "_SC_MAPPED_FILES", value: 16)
!23 = !DIEnumerator(name: "_SC_MEMLOCK", value: 17)
!24 = !DIEnumerator(name: "_SC_MEMLOCK_RANGE", value: 18)
!25 = !DIEnumerator(name: "_SC_MEMORY_PROTECTION", value: 19)
!26 = !DIEnumerator(name: "_SC_MESSAGE_PASSING", value: 20)
!27 = !DIEnumerator(name: "_SC_SEMAPHORES", value: 21)
!28 = !DIEnumerator(name: "_SC_SHARED_MEMORY_OBJECTS", value: 22)
!29 = !DIEnumerator(name: "_SC_AIO_LISTIO_MAX", value: 23)
!30 = !DIEnumerator(name: "_SC_AIO_MAX", value: 24)
!31 = !DIEnumerator(name: "_SC_AIO_PRIO_DELTA_MAX", value: 25)
!32 = !DIEnumerator(name: "_SC_DELAYTIMER_MAX", value: 26)
!33 = !DIEnumerator(name: "_SC_MQ_OPEN_MAX", value: 27)
!34 = !DIEnumerator(name: "_SC_MQ_PRIO_MAX", value: 28)
!35 = !DIEnumerator(name: "_SC_VERSION", value: 29)
!36 = !DIEnumerator(name: "_SC_PAGESIZE", value: 30)
!37 = !DIEnumerator(name: "_SC_RTSIG_MAX", value: 31)
!38 = !DIEnumerator(name: "_SC_SEM_NSEMS_MAX", value: 32)
!39 = !DIEnumerator(name: "_SC_SEM_VALUE_MAX", value: 33)
!40 = !DIEnumerator(name: "_SC_SIGQUEUE_MAX", value: 34)
!41 = !DIEnumerator(name: "_SC_TIMER_MAX", value: 35)
!42 = !DIEnumerator(name: "_SC_BC_BASE_MAX", value: 36)
!43 = !DIEnumerator(name: "_SC_BC_DIM_MAX", value: 37)
!44 = !DIEnumerator(name: "_SC_BC_SCALE_MAX", value: 38)
!45 = !DIEnumerator(name: "_SC_BC_STRING_MAX", value: 39)
!46 = !DIEnumerator(name: "_SC_COLL_WEIGHTS_MAX", value: 40)
!47 = !DIEnumerator(name: "_SC_EQUIV_CLASS_MAX", value: 41)
!48 = !DIEnumerator(name: "_SC_EXPR_NEST_MAX", value: 42)
!49 = !DIEnumerator(name: "_SC_LINE_MAX", value: 43)
!50 = !DIEnumerator(name: "_SC_RE_DUP_MAX", value: 44)
!51 = !DIEnumerator(name: "_SC_CHARCLASS_NAME_MAX", value: 45)
!52 = !DIEnumerator(name: "_SC_2_VERSION", value: 46)
!53 = !DIEnumerator(name: "_SC_2_C_BIND", value: 47)
!54 = !DIEnumerator(name: "_SC_2_C_DEV", value: 48)
!55 = !DIEnumerator(name: "_SC_2_FORT_DEV", value: 49)
!56 = !DIEnumerator(name: "_SC_2_FORT_RUN", value: 50)
!57 = !DIEnumerator(name: "_SC_2_SW_DEV", value: 51)
!58 = !DIEnumerator(name: "_SC_2_LOCALEDEF", value: 52)
!59 = !DIEnumerator(name: "_SC_PII", value: 53)
!60 = !DIEnumerator(name: "_SC_PII_XTI", value: 54)
!61 = !DIEnumerator(name: "_SC_PII_SOCKET", value: 55)
!62 = !DIEnumerator(name: "_SC_PII_INTERNET", value: 56)
!63 = !DIEnumerator(name: "_SC_PII_OSI", value: 57)
!64 = !DIEnumerator(name: "_SC_POLL", value: 58)
!65 = !DIEnumerator(name: "_SC_SELECT", value: 59)
!66 = !DIEnumerator(name: "_SC_UIO_MAXIOV", value: 60)
!67 = !DIEnumerator(name: "_SC_IOV_MAX", value: 60)
!68 = !DIEnumerator(name: "_SC_PII_INTERNET_STREAM", value: 61)
!69 = !DIEnumerator(name: "_SC_PII_INTERNET_DGRAM", value: 62)
!70 = !DIEnumerator(name: "_SC_PII_OSI_COTS", value: 63)
!71 = !DIEnumerator(name: "_SC_PII_OSI_CLTS", value: 64)
!72 = !DIEnumerator(name: "_SC_PII_OSI_M", value: 65)
!73 = !DIEnumerator(name: "_SC_T_IOV_MAX", value: 66)
!74 = !DIEnumerator(name: "_SC_THREADS", value: 67)
!75 = !DIEnumerator(name: "_SC_THREAD_SAFE_FUNCTIONS", value: 68)
!76 = !DIEnumerator(name: "_SC_GETGR_R_SIZE_MAX", value: 69)
!77 = !DIEnumerator(name: "_SC_GETPW_R_SIZE_MAX", value: 70)
!78 = !DIEnumerator(name: "_SC_LOGIN_NAME_MAX", value: 71)
!79 = !DIEnumerator(name: "_SC_TTY_NAME_MAX", value: 72)
!80 = !DIEnumerator(name: "_SC_THREAD_DESTRUCTOR_ITERATIONS", value: 73)
!81 = !DIEnumerator(name: "_SC_THREAD_KEYS_MAX", value: 74)
!82 = !DIEnumerator(name: "_SC_THREAD_STACK_MIN", value: 75)
!83 = !DIEnumerator(name: "_SC_THREAD_THREADS_MAX", value: 76)
!84 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKADDR", value: 77)
!85 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKSIZE", value: 78)
!86 = !DIEnumerator(name: "_SC_THREAD_PRIORITY_SCHEDULING", value: 79)
!87 = !DIEnumerator(name: "_SC_THREAD_PRIO_INHERIT", value: 80)
!88 = !DIEnumerator(name: "_SC_THREAD_PRIO_PROTECT", value: 81)
!89 = !DIEnumerator(name: "_SC_THREAD_PROCESS_SHARED", value: 82)
!90 = !DIEnumerator(name: "_SC_NPROCESSORS_CONF", value: 83)
!91 = !DIEnumerator(name: "_SC_NPROCESSORS_ONLN", value: 84)
!92 = !DIEnumerator(name: "_SC_PHYS_PAGES", value: 85)
!93 = !DIEnumerator(name: "_SC_AVPHYS_PAGES", value: 86)
!94 = !DIEnumerator(name: "_SC_ATEXIT_MAX", value: 87)
!95 = !DIEnumerator(name: "_SC_PASS_MAX", value: 88)
!96 = !DIEnumerator(name: "_SC_XOPEN_VERSION", value: 89)
!97 = !DIEnumerator(name: "_SC_XOPEN_XCU_VERSION", value: 90)
!98 = !DIEnumerator(name: "_SC_XOPEN_UNIX", value: 91)
!99 = !DIEnumerator(name: "_SC_XOPEN_CRYPT", value: 92)
!100 = !DIEnumerator(name: "_SC_XOPEN_ENH_I18N", value: 93)
!101 = !DIEnumerator(name: "_SC_XOPEN_SHM", value: 94)
!102 = !DIEnumerator(name: "_SC_2_CHAR_TERM", value: 95)
!103 = !DIEnumerator(name: "_SC_2_C_VERSION", value: 96)
!104 = !DIEnumerator(name: "_SC_2_UPE", value: 97)
!105 = !DIEnumerator(name: "_SC_XOPEN_XPG2", value: 98)
!106 = !DIEnumerator(name: "_SC_XOPEN_XPG3", value: 99)
!107 = !DIEnumerator(name: "_SC_XOPEN_XPG4", value: 100)
!108 = !DIEnumerator(name: "_SC_CHAR_BIT", value: 101)
!109 = !DIEnumerator(name: "_SC_CHAR_MAX", value: 102)
!110 = !DIEnumerator(name: "_SC_CHAR_MIN", value: 103)
!111 = !DIEnumerator(name: "_SC_INT_MAX", value: 104)
!112 = !DIEnumerator(name: "_SC_INT_MIN", value: 105)
!113 = !DIEnumerator(name: "_SC_LONG_BIT", value: 106)
!114 = !DIEnumerator(name: "_SC_WORD_BIT", value: 107)
!115 = !DIEnumerator(name: "_SC_MB_LEN_MAX", value: 108)
!116 = !DIEnumerator(name: "_SC_NZERO", value: 109)
!117 = !DIEnumerator(name: "_SC_SSIZE_MAX", value: 110)
!118 = !DIEnumerator(name: "_SC_SCHAR_MAX", value: 111)
!119 = !DIEnumerator(name: "_SC_SCHAR_MIN", value: 112)
!120 = !DIEnumerator(name: "_SC_SHRT_MAX", value: 113)
!121 = !DIEnumerator(name: "_SC_SHRT_MIN", value: 114)
!122 = !DIEnumerator(name: "_SC_UCHAR_MAX", value: 115)
!123 = !DIEnumerator(name: "_SC_UINT_MAX", value: 116)
!124 = !DIEnumerator(name: "_SC_ULONG_MAX", value: 117)
!125 = !DIEnumerator(name: "_SC_USHRT_MAX", value: 118)
!126 = !DIEnumerator(name: "_SC_NL_ARGMAX", value: 119)
!127 = !DIEnumerator(name: "_SC_NL_LANGMAX", value: 120)
!128 = !DIEnumerator(name: "_SC_NL_MSGMAX", value: 121)
!129 = !DIEnumerator(name: "_SC_NL_NMAX", value: 122)
!130 = !DIEnumerator(name: "_SC_NL_SETMAX", value: 123)
!131 = !DIEnumerator(name: "_SC_NL_TEXTMAX", value: 124)
!132 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFF32", value: 125)
!133 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFFBIG", value: 126)
!134 = !DIEnumerator(name: "_SC_XBS5_LP64_OFF64", value: 127)
!135 = !DIEnumerator(name: "_SC_XBS5_LPBIG_OFFBIG", value: 128)
!136 = !DIEnumerator(name: "_SC_XOPEN_LEGACY", value: 129)
!137 = !DIEnumerator(name: "_SC_XOPEN_REALTIME", value: 130)
!138 = !DIEnumerator(name: "_SC_XOPEN_REALTIME_THREADS", value: 131)
!139 = !DIEnumerator(name: "_SC_ADVISORY_INFO", value: 132)
!140 = !DIEnumerator(name: "_SC_BARRIERS", value: 133)
!141 = !DIEnumerator(name: "_SC_BASE", value: 134)
!142 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT", value: 135)
!143 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT_R", value: 136)
!144 = !DIEnumerator(name: "_SC_CLOCK_SELECTION", value: 137)
!145 = !DIEnumerator(name: "_SC_CPUTIME", value: 138)
!146 = !DIEnumerator(name: "_SC_THREAD_CPUTIME", value: 139)
!147 = !DIEnumerator(name: "_SC_DEVICE_IO", value: 140)
!148 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC", value: 141)
!149 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC_R", value: 142)
!150 = !DIEnumerator(name: "_SC_FD_MGMT", value: 143)
!151 = !DIEnumerator(name: "_SC_FIFO", value: 144)
!152 = !DIEnumerator(name: "_SC_PIPE", value: 145)
!153 = !DIEnumerator(name: "_SC_FILE_ATTRIBUTES", value: 146)
!154 = !DIEnumerator(name: "_SC_FILE_LOCKING", value: 147)
!155 = !DIEnumerator(name: "_SC_FILE_SYSTEM", value: 148)
!156 = !DIEnumerator(name: "_SC_MONOTONIC_CLOCK", value: 149)
!157 = !DIEnumerator(name: "_SC_MULTI_PROCESS", value: 150)
!158 = !DIEnumerator(name: "_SC_SINGLE_PROCESS", value: 151)
!159 = !DIEnumerator(name: "_SC_NETWORKING", value: 152)
!160 = !DIEnumerator(name: "_SC_READER_WRITER_LOCKS", value: 153)
!161 = !DIEnumerator(name: "_SC_SPIN_LOCKS", value: 154)
!162 = !DIEnumerator(name: "_SC_REGEXP", value: 155)
!163 = !DIEnumerator(name: "_SC_REGEX_VERSION", value: 156)
!164 = !DIEnumerator(name: "_SC_SHELL", value: 157)
!165 = !DIEnumerator(name: "_SC_SIGNALS", value: 158)
!166 = !DIEnumerator(name: "_SC_SPAWN", value: 159)
!167 = !DIEnumerator(name: "_SC_SPORADIC_SERVER", value: 160)
!168 = !DIEnumerator(name: "_SC_THREAD_SPORADIC_SERVER", value: 161)
!169 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE", value: 162)
!170 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE_R", value: 163)
!171 = !DIEnumerator(name: "_SC_TIMEOUTS", value: 164)
!172 = !DIEnumerator(name: "_SC_TYPED_MEMORY_OBJECTS", value: 165)
!173 = !DIEnumerator(name: "_SC_USER_GROUPS", value: 166)
!174 = !DIEnumerator(name: "_SC_USER_GROUPS_R", value: 167)
!175 = !DIEnumerator(name: "_SC_2_PBS", value: 168)
!176 = !DIEnumerator(name: "_SC_2_PBS_ACCOUNTING", value: 169)
!177 = !DIEnumerator(name: "_SC_2_PBS_LOCATE", value: 170)
!178 = !DIEnumerator(name: "_SC_2_PBS_MESSAGE", value: 171)
!179 = !DIEnumerator(name: "_SC_2_PBS_TRACK", value: 172)
!180 = !DIEnumerator(name: "_SC_SYMLOOP_MAX", value: 173)
!181 = !DIEnumerator(name: "_SC_STREAMS", value: 174)
!182 = !DIEnumerator(name: "_SC_2_PBS_CHECKPOINT", value: 175)
!183 = !DIEnumerator(name: "_SC_V6_ILP32_OFF32", value: 176)
!184 = !DIEnumerator(name: "_SC_V6_ILP32_OFFBIG", value: 177)
!185 = !DIEnumerator(name: "_SC_V6_LP64_OFF64", value: 178)
!186 = !DIEnumerator(name: "_SC_V6_LPBIG_OFFBIG", value: 179)
!187 = !DIEnumerator(name: "_SC_HOST_NAME_MAX", value: 180)
!188 = !DIEnumerator(name: "_SC_TRACE", value: 181)
!189 = !DIEnumerator(name: "_SC_TRACE_EVENT_FILTER", value: 182)
!190 = !DIEnumerator(name: "_SC_TRACE_INHERIT", value: 183)
!191 = !DIEnumerator(name: "_SC_TRACE_LOG", value: 184)
!192 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_SIZE", value: 185)
!193 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_ASSOC", value: 186)
!194 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_LINESIZE", value: 187)
!195 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_SIZE", value: 188)
!196 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_ASSOC", value: 189)
!197 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_LINESIZE", value: 190)
!198 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_SIZE", value: 191)
!199 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_ASSOC", value: 192)
!200 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_LINESIZE", value: 193)
!201 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_SIZE", value: 194)
!202 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_ASSOC", value: 195)
!203 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_LINESIZE", value: 196)
!204 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_SIZE", value: 197)
!205 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_ASSOC", value: 198)
!206 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_LINESIZE", value: 199)
!207 = !DIEnumerator(name: "_SC_IPV6", value: 235)
!208 = !DIEnumerator(name: "_SC_RAW_SOCKETS", value: 236)
!209 = !DIEnumerator(name: "_SC_V7_ILP32_OFF32", value: 237)
!210 = !DIEnumerator(name: "_SC_V7_ILP32_OFFBIG", value: 238)
!211 = !DIEnumerator(name: "_SC_V7_LP64_OFF64", value: 239)
!212 = !DIEnumerator(name: "_SC_V7_LPBIG_OFFBIG", value: 240)
!213 = !DIEnumerator(name: "_SC_SS_REPL_MAX", value: 241)
!214 = !DIEnumerator(name: "_SC_TRACE_EVENT_NAME_MAX", value: 242)
!215 = !DIEnumerator(name: "_SC_TRACE_NAME_MAX", value: 243)
!216 = !DIEnumerator(name: "_SC_TRACE_SYS_MAX", value: 244)
!217 = !DIEnumerator(name: "_SC_TRACE_USER_EVENT_MAX", value: 245)
!218 = !DIEnumerator(name: "_SC_XOPEN_STREAMS", value: 246)
!219 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_INHERIT", value: 247)
!220 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_PROTECT", value: 248)
!221 = !{!222, !225, !226}
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !223, line: 216, baseType: !224)
!223 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dma/task1")
!224 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !227, line: 85, baseType: !228)
!227 = !DIFile(filename: "/usr/include/signal.h", directory: "/home/lichi/Desktop/dma/task1")
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64, align: 64)
!229 = !DISubroutineType(types: !230)
!230 = !{null, !231}
!231 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!232 = !{i32 2, !"Dwarf Version", i32 4}
!233 = !{i32 2, !"Debug Info Version", i32 3}
!234 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!235 = distinct !DISubprogram(name: "deliver_local", scope: !236, file: !236, line: 125, type: !237, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !317)
!236 = !DIFile(filename: "local.c", directory: "/home/lichi/Desktop/dma/task1")
!237 = !DISubroutineType(types: !238)
!238 = !{!231, !239}
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64, align: 64)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qitem", file: !241, line: 105, size: 640, align: 64, elements: !242)
!241 = !DIFile(filename: "dma.h", directory: "/home/lichi/Desktop/dma/task1")
!242 = !{!243, !249, !253, !255, !256, !257, !258, !315, !316}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !240, file: !241, line: 106, baseType: !244, size: 128, align: 64)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !240, file: !241, line: 106, size: 128, align: 64, elements: !245)
!245 = !{!246, !247}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "le_next", scope: !244, file: !241, line: 106, baseType: !239, size: 64, align: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "le_prev", scope: !244, file: !241, line: 106, baseType: !248, size: 64, align: 64, offset: 64)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64, align: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "sender", scope: !240, file: !241, line: 107, baseType: !250, size: 64, align: 64, offset: 128)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64, align: 64)
!251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !252)
!252 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !240, file: !241, line: 108, baseType: !254, size: 64, align: 64, offset: 192)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64, align: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "queuefn", scope: !240, file: !241, line: 109, baseType: !254, size: 64, align: 64, offset: 256)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "mailfn", scope: !240, file: !241, line: 110, baseType: !254, size: 64, align: 64, offset: 320)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "queueid", scope: !240, file: !241, line: 111, baseType: !254, size: 64, align: 64, offset: 384)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "queuef", scope: !240, file: !241, line: 112, baseType: !259, size: 64, align: 64, offset: 448)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64, align: 64)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !261, line: 48, baseType: !262)
!261 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/dma/task1")
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !263, line: 241, size: 1728, align: 64, elements: !264)
!263 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/dma/task1")
!264 = !{!265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !285, !286, !287, !288, !292, !294, !296, !300, !303, !305, !306, !307, !308, !309, !310, !311}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !262, file: !263, line: 242, baseType: !231, size: 32, align: 32)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !262, file: !263, line: 247, baseType: !254, size: 64, align: 64, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !262, file: !263, line: 248, baseType: !254, size: 64, align: 64, offset: 128)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !262, file: !263, line: 249, baseType: !254, size: 64, align: 64, offset: 192)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !262, file: !263, line: 250, baseType: !254, size: 64, align: 64, offset: 256)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !262, file: !263, line: 251, baseType: !254, size: 64, align: 64, offset: 320)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !262, file: !263, line: 252, baseType: !254, size: 64, align: 64, offset: 384)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !262, file: !263, line: 253, baseType: !254, size: 64, align: 64, offset: 448)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !262, file: !263, line: 254, baseType: !254, size: 64, align: 64, offset: 512)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !262, file: !263, line: 256, baseType: !254, size: 64, align: 64, offset: 576)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !262, file: !263, line: 257, baseType: !254, size: 64, align: 64, offset: 640)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !262, file: !263, line: 258, baseType: !254, size: 64, align: 64, offset: 704)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !262, file: !263, line: 260, baseType: !278, size: 64, align: 64, offset: 768)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64, align: 64)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !263, line: 156, size: 192, align: 64, elements: !280)
!280 = !{!281, !282, !284}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !279, file: !263, line: 157, baseType: !278, size: 64, align: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !279, file: !263, line: 158, baseType: !283, size: 64, align: 64, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64, align: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !279, file: !263, line: 162, baseType: !231, size: 32, align: 32, offset: 128)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !262, file: !263, line: 262, baseType: !283, size: 64, align: 64, offset: 832)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !262, file: !263, line: 264, baseType: !231, size: 32, align: 32, offset: 896)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !262, file: !263, line: 268, baseType: !231, size: 32, align: 32, offset: 928)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !262, file: !263, line: 270, baseType: !289, size: 64, align: 64, offset: 960)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !290, line: 131, baseType: !291)
!290 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dma/task1")
!291 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !262, file: !263, line: 274, baseType: !293, size: 16, align: 16, offset: 1024)
!293 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !262, file: !263, line: 275, baseType: !295, size: 8, align: 8, offset: 1040)
!295 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !262, file: !263, line: 276, baseType: !297, size: 8, align: 8, offset: 1048)
!297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, size: 8, align: 8, elements: !298)
!298 = !{!299}
!299 = !DISubrange(count: 1)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !262, file: !263, line: 280, baseType: !301, size: 64, align: 64, offset: 1088)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64, align: 64)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !263, line: 150, baseType: null)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !262, file: !263, line: 289, baseType: !304, size: 64, align: 64, offset: 1152)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !290, line: 132, baseType: !291)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !262, file: !263, line: 297, baseType: !225, size: 64, align: 64, offset: 1216)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !262, file: !263, line: 298, baseType: !225, size: 64, align: 64, offset: 1280)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !262, file: !263, line: 299, baseType: !225, size: 64, align: 64, offset: 1344)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !262, file: !263, line: 300, baseType: !225, size: 64, align: 64, offset: 1408)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !262, file: !263, line: 302, baseType: !222, size: 64, align: 64, offset: 1472)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !262, file: !263, line: 303, baseType: !231, size: 32, align: 32, offset: 1536)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !262, file: !263, line: 305, baseType: !312, size: 160, align: 8, offset: 1568)
!312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, size: 160, align: 8, elements: !313)
!313 = !{!314}
!314 = !DISubrange(count: 20)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "mailf", scope: !240, file: !241, line: 113, baseType: !259, size: 64, align: 64, offset: 512)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "remote", scope: !240, file: !241, line: 114, baseType: !231, size: 32, align: 32, offset: 576)
!317 = !{}
!318 = !DILocalVariable(name: "it", arg: 1, scope: !235, file: !236, line: 125, type: !239)
!319 = !DIExpression()
!320 = !DILocation(line: 125, column: 29, scope: !235)
!321 = !DILocalVariable(name: "fn", scope: !235, file: !236, line: 127, type: !322)
!322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, size: 32776, align: 8, elements: !323)
!323 = !{!324}
!324 = !DISubrange(count: 4097)
!325 = !DILocation(line: 127, column: 7, scope: !235)
!326 = !DILocalVariable(name: "line", scope: !235, file: !236, line: 128, type: !327)
!327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, size: 8000, align: 8, elements: !328)
!328 = !{!329}
!329 = !DISubrange(count: 1000)
!330 = !DILocation(line: 128, column: 7, scope: !235)
!331 = !DILocalVariable(name: "sender", scope: !235, file: !236, line: 129, type: !250)
!332 = !DILocation(line: 129, column: 14, scope: !235)
!333 = !DILocalVariable(name: "newline", scope: !235, file: !236, line: 130, type: !250)
!334 = !DILocation(line: 130, column: 14, scope: !235)
!335 = !DILocalVariable(name: "linelen", scope: !235, file: !236, line: 131, type: !222)
!336 = !DILocation(line: 131, column: 9, scope: !235)
!337 = !DILocalVariable(name: "tries", scope: !235, file: !236, line: 132, type: !231)
!338 = !DILocation(line: 132, column: 6, scope: !235)
!339 = !DILocalVariable(name: "mbox", scope: !235, file: !236, line: 133, type: !231)
!340 = !DILocation(line: 133, column: 6, scope: !235)
!341 = !DILocalVariable(name: "error", scope: !235, file: !236, line: 134, type: !231)
!342 = !DILocation(line: 134, column: 6, scope: !235)
!343 = !DILocalVariable(name: "hadnl", scope: !235, file: !236, line: 135, type: !231)
!344 = !DILocation(line: 135, column: 6, scope: !235)
!345 = !DILocalVariable(name: "mboxlen", scope: !235, file: !236, line: 136, type: !346)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !347, line: 86, baseType: !289)
!347 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/dma/task1")
!348 = !DILocation(line: 136, column: 8, scope: !235)
!349 = !DILocalVariable(name: "now", scope: !235, file: !236, line: 137, type: !350)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !351, line: 75, baseType: !352)
!351 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/dma/task1")
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !290, line: 139, baseType: !291)
!353 = !DILocation(line: 137, column: 9, scope: !235)
!354 = !DILocation(line: 137, column: 15, scope: !235)
!355 = !DILocation(line: 139, column: 19, scope: !235)
!356 = !DILocation(line: 139, column: 58, scope: !235)
!357 = !DILocation(line: 139, column: 62, scope: !235)
!358 = !DILocation(line: 139, column: 10, scope: !235)
!359 = !DILocation(line: 139, column: 8, scope: !235)
!360 = !DILocation(line: 140, column: 6, scope: !361)
!361 = distinct !DILexicalBlock(scope: !235, file: !236, line: 140, column: 6)
!362 = !DILocation(line: 140, column: 12, scope: !361)
!363 = !DILocation(line: 140, column: 16, scope: !361)
!364 = !DILocation(line: 140, column: 27, scope: !365)
!365 = !DILexicalBlockFile(scope: !361, file: !236, discriminator: 1)
!366 = !DILocation(line: 140, column: 19, scope: !365)
!367 = !DILocation(line: 140, column: 33, scope: !365)
!368 = !DILocation(line: 140, column: 6, scope: !365)
!369 = !DILocation(line: 141, column: 3, scope: !370)
!370 = distinct !DILexicalBlock(scope: !361, file: !236, line: 140, column: 48)
!371 = !DILocation(line: 142, column: 3, scope: !370)
!372 = !DILocation(line: 140, column: 45, scope: !373)
!373 = !DILexicalBlockFile(scope: !361, file: !236, discriminator: 2)
!374 = !DILocation(line: 147, column: 2, scope: !235)
!375 = !DILocation(line: 150, column: 21, scope: !235)
!376 = !DILocation(line: 150, column: 9, scope: !235)
!377 = !DILocation(line: 150, column: 7, scope: !235)
!378 = !DILocation(line: 151, column: 6, scope: !379)
!379 = distinct !DILexicalBlock(scope: !235, file: !236, line: 151, column: 6)
!380 = !DILocation(line: 151, column: 11, scope: !379)
!381 = !DILocation(line: 151, column: 6, scope: !235)
!382 = !DILocalVariable(name: "e", scope: !383, file: !236, line: 152, type: !231)
!383 = distinct !DILexicalBlock(scope: !379, file: !236, line: 151, column: 16)
!384 = !DILocation(line: 152, column: 7, scope: !383)
!385 = !DILocation(line: 152, column: 12, scope: !383)
!386 = !DILocation(line: 152, column: 11, scope: !383)
!387 = !DILocation(line: 154, column: 3, scope: !383)
!388 = !DILocation(line: 156, column: 11, scope: !383)
!389 = !DILocation(line: 156, column: 3, scope: !383)
!390 = !DILocation(line: 163, column: 8, scope: !391)
!391 = distinct !DILexicalBlock(scope: !392, file: !236, line: 163, column: 8)
!392 = distinct !DILexicalBlock(scope: !383, file: !236, line: 156, column: 14)
!393 = !DILocation(line: 163, column: 14, scope: !391)
!394 = !DILocation(line: 163, column: 18, scope: !391)
!395 = !DILocation(line: 163, column: 33, scope: !396)
!396 = !DILexicalBlockFile(scope: !391, file: !236, discriminator: 1)
!397 = !DILocation(line: 163, column: 37, scope: !396)
!398 = !DILocation(line: 163, column: 21, scope: !396)
!399 = !DILocation(line: 163, column: 43, scope: !396)
!400 = !DILocation(line: 163, column: 8, scope: !396)
!401 = !DILocation(line: 164, column: 68, scope: !402)
!402 = distinct !DILexicalBlock(scope: !391, file: !236, line: 163, column: 49)
!403 = !DILocation(line: 164, column: 5, scope: !402)
!404 = !DILocation(line: 165, column: 5, scope: !402)
!405 = !DILocation(line: 167, column: 4, scope: !392)
!406 = !DILocation(line: 168, column: 4, scope: !392)
!407 = !DILocation(line: 171, column: 68, scope: !392)
!408 = !DILocation(line: 171, column: 4, scope: !392)
!409 = !DILocation(line: 172, column: 4, scope: !392)
!410 = !DILocation(line: 175, column: 72, scope: !392)
!411 = !DILocation(line: 175, column: 4, scope: !392)
!412 = !DILocation(line: 176, column: 4, scope: !392)
!413 = !DILocation(line: 178, column: 3, scope: !383)
!414 = !DILocation(line: 180, column: 2, scope: !235)
!415 = !DILocation(line: 182, column: 18, scope: !235)
!416 = !DILocation(line: 182, column: 12, scope: !235)
!417 = !DILocation(line: 182, column: 10, scope: !235)
!418 = !DILocation(line: 185, column: 6, scope: !419)
!419 = distinct !DILexicalBlock(scope: !235, file: !236, line: 185, column: 6)
!420 = !DILocation(line: 185, column: 14, scope: !419)
!421 = !DILocation(line: 185, column: 6, scope: !235)
!422 = !DILocation(line: 186, column: 11, scope: !419)
!423 = !DILocation(line: 186, column: 3, scope: !419)
!424 = !DILocation(line: 189, column: 11, scope: !235)
!425 = !DILocation(line: 189, column: 15, scope: !235)
!426 = !DILocation(line: 189, column: 9, scope: !235)
!427 = !DILocation(line: 190, column: 13, scope: !428)
!428 = distinct !DILexicalBlock(scope: !235, file: !236, line: 190, column: 6)
!429 = !DILocation(line: 190, column: 6, scope: !428)
!430 = !DILocation(line: 190, column: 25, scope: !428)
!431 = !DILocation(line: 190, column: 6, scope: !235)
!432 = !DILocation(line: 191, column: 10, scope: !428)
!433 = !DILocation(line: 191, column: 3, scope: !428)
!434 = !DILocation(line: 193, column: 12, scope: !435)
!435 = distinct !DILexicalBlock(scope: !235, file: !236, line: 193, column: 6)
!436 = !DILocation(line: 193, column: 16, scope: !435)
!437 = !DILocation(line: 193, column: 6, scope: !435)
!438 = !DILocation(line: 193, column: 35, scope: !435)
!439 = !DILocation(line: 193, column: 6, scope: !235)
!440 = !DILocation(line: 194, column: 3, scope: !441)
!441 = distinct !DILexicalBlock(scope: !435, file: !236, line: 193, column: 41)
!442 = !DILocation(line: 195, column: 3, scope: !441)
!443 = !DILocation(line: 198, column: 19, scope: !235)
!444 = !DILocation(line: 198, column: 56, scope: !235)
!445 = !DILocation(line: 198, column: 65, scope: !235)
!446 = !DILocation(line: 198, column: 73, scope: !235)
!447 = !DILocation(line: 198, column: 10, scope: !448)
!448 = !DILexicalBlockFile(scope: !235, file: !236, discriminator: 1)
!449 = !DILocation(line: 198, column: 8, scope: !235)
!450 = !DILocation(line: 199, column: 6, scope: !451)
!451 = distinct !DILexicalBlock(scope: !235, file: !236, line: 199, column: 6)
!452 = !DILocation(line: 199, column: 12, scope: !451)
!453 = !DILocation(line: 199, column: 16, scope: !451)
!454 = !DILocation(line: 199, column: 27, scope: !455)
!455 = !DILexicalBlockFile(scope: !451, file: !236, discriminator: 1)
!456 = !DILocation(line: 199, column: 19, scope: !455)
!457 = !DILocation(line: 199, column: 33, scope: !455)
!458 = !DILocation(line: 199, column: 6, scope: !455)
!459 = !DILocation(line: 200, column: 3, scope: !460)
!460 = distinct !DILexicalBlock(scope: !451, file: !236, line: 199, column: 50)
!461 = !DILocation(line: 201, column: 3, scope: !460)
!462 = !DILocation(line: 203, column: 12, scope: !463)
!463 = distinct !DILexicalBlock(scope: !235, file: !236, line: 203, column: 6)
!464 = !DILocation(line: 203, column: 18, scope: !463)
!465 = !DILocation(line: 203, column: 24, scope: !463)
!466 = !DILocation(line: 203, column: 6, scope: !463)
!467 = !DILocation(line: 203, column: 34, scope: !463)
!468 = !DILocation(line: 203, column: 31, scope: !463)
!469 = !DILocation(line: 203, column: 6, scope: !235)
!470 = !DILocation(line: 204, column: 3, scope: !463)
!471 = !DILocation(line: 206, column: 2, scope: !235)
!472 = !DILocation(line: 206, column: 15, scope: !448)
!473 = !DILocation(line: 206, column: 19, scope: !448)
!474 = !DILocation(line: 206, column: 10, scope: !448)
!475 = !DILocation(line: 206, column: 9, scope: !448)
!476 = !DILocation(line: 206, column: 2, scope: !448)
!477 = !DILocation(line: 207, column: 13, scope: !478)
!478 = distinct !DILexicalBlock(scope: !479, file: !236, line: 207, column: 7)
!479 = distinct !DILexicalBlock(scope: !235, file: !236, line: 206, column: 27)
!480 = !DILocation(line: 207, column: 33, scope: !478)
!481 = !DILocation(line: 207, column: 37, scope: !478)
!482 = !DILocation(line: 207, column: 7, scope: !478)
!483 = !DILocation(line: 207, column: 44, scope: !478)
!484 = !DILocation(line: 207, column: 7, scope: !479)
!485 = !DILocation(line: 208, column: 4, scope: !478)
!486 = !DILocation(line: 209, column: 20, scope: !479)
!487 = !DILocation(line: 209, column: 13, scope: !479)
!488 = !DILocation(line: 209, column: 11, scope: !479)
!489 = !DILocation(line: 210, column: 7, scope: !490)
!490 = distinct !DILexicalBlock(scope: !479, file: !236, line: 210, column: 7)
!491 = !DILocation(line: 210, column: 15, scope: !490)
!492 = !DILocation(line: 210, column: 20, scope: !490)
!493 = !DILocation(line: 210, column: 28, scope: !494)
!494 = !DILexicalBlockFile(scope: !490, file: !236, discriminator: 1)
!495 = !DILocation(line: 210, column: 36, scope: !494)
!496 = !DILocation(line: 210, column: 23, scope: !494)
!497 = !DILocation(line: 210, column: 41, scope: !494)
!498 = !DILocation(line: 210, column: 7, scope: !494)
!499 = !DILocation(line: 211, column: 4, scope: !500)
!500 = distinct !DILexicalBlock(scope: !490, file: !236, line: 210, column: 50)
!501 = !DILocation(line: 212, column: 4, scope: !500)
!502 = !DILocation(line: 213, column: 10, scope: !500)
!503 = !DILocation(line: 214, column: 4, scope: !500)
!504 = !DILocation(line: 227, column: 28, scope: !505)
!505 = distinct !DILexicalBlock(scope: !479, file: !236, line: 226, column: 7)
!506 = !DILocation(line: 227, column: 21, scope: !505)
!507 = !DILocation(line: 227, column: 16, scope: !505)
!508 = !DILocation(line: 227, column: 7, scope: !509)
!509 = !DILexicalBlockFile(scope: !505, file: !236, discriminator: 1)
!510 = !DILocation(line: 227, column: 53, scope: !505)
!511 = !DILocation(line: 226, column: 7, scope: !479)
!512 = !DILocalVariable(name: "gt", scope: !513, file: !236, line: 228, type: !250)
!513 = distinct !DILexicalBlock(scope: !505, file: !236, line: 227, column: 59)
!514 = !DILocation(line: 228, column: 16, scope: !513)
!515 = !DILocation(line: 230, column: 14, scope: !516)
!516 = distinct !DILexicalBlock(scope: !513, file: !236, line: 230, column: 8)
!517 = !DILocation(line: 230, column: 20, scope: !516)
!518 = !DILocation(line: 230, column: 8, scope: !516)
!519 = !DILocation(line: 230, column: 27, scope: !516)
!520 = !DILocation(line: 230, column: 8, scope: !513)
!521 = !DILocation(line: 231, column: 5, scope: !516)
!522 = !DILocation(line: 232, column: 10, scope: !513)
!523 = !DILocation(line: 233, column: 3, scope: !513)
!524 = !DILocation(line: 233, column: 21, scope: !525)
!525 = !DILexicalBlockFile(scope: !526, file: !236, discriminator: 1)
!526 = distinct !DILexicalBlock(scope: !505, file: !236, line: 233, column: 14)
!527 = !DILocation(line: 233, column: 14, scope: !525)
!528 = !DILocation(line: 233, column: 33, scope: !525)
!529 = !DILocation(line: 234, column: 10, scope: !530)
!530 = distinct !DILexicalBlock(scope: !526, file: !236, line: 233, column: 39)
!531 = !DILocation(line: 235, column: 3, scope: !530)
!532 = !DILocation(line: 236, column: 10, scope: !533)
!533 = distinct !DILexicalBlock(scope: !526, file: !236, line: 235, column: 10)
!534 = !DILocation(line: 238, column: 21, scope: !535)
!535 = distinct !DILexicalBlock(scope: !479, file: !236, line: 238, column: 7)
!536 = !DILocation(line: 238, column: 27, scope: !535)
!537 = !DILocation(line: 238, column: 33, scope: !535)
!538 = !DILocation(line: 238, column: 15, scope: !535)
!539 = !DILocation(line: 238, column: 45, scope: !535)
!540 = !DILocation(line: 238, column: 42, scope: !535)
!541 = !DILocation(line: 238, column: 7, scope: !479)
!542 = !DILocation(line: 239, column: 4, scope: !535)
!543 = !DILocation(line: 206, column: 2, scope: !544)
!544 = !DILexicalBlockFile(scope: !235, file: !236, discriminator: 2)
!545 = distinct !{!545, !471}
!546 = !DILocation(line: 241, column: 8, scope: !235)
!547 = !DILocation(line: 241, column: 2, scope: !235)
!548 = !DILocation(line: 242, column: 2, scope: !235)
!549 = !DILocation(line: 245, column: 2, scope: !235)
!550 = !DILocation(line: 246, column: 8, scope: !235)
!551 = !DILocation(line: 246, column: 2, scope: !235)
!552 = !DILocation(line: 248, column: 16, scope: !553)
!553 = distinct !DILexicalBlock(scope: !235, file: !236, line: 248, column: 6)
!554 = !DILocation(line: 248, column: 22, scope: !553)
!555 = !DILocation(line: 248, column: 6, scope: !553)
!556 = !DILocation(line: 248, column: 31, scope: !553)
!557 = !DILocation(line: 248, column: 6, scope: !235)
!558 = !DILocation(line: 249, column: 56, scope: !553)
!559 = !DILocation(line: 249, column: 3, scope: !553)
!560 = !DILocation(line: 248, column: 34, scope: !561)
!561 = !DILexicalBlockFile(scope: !553, file: !236, discriminator: 1)
!562 = !DILocation(line: 251, column: 8, scope: !235)
!563 = !DILocation(line: 251, column: 2, scope: !235)
!564 = !DILocation(line: 252, column: 10, scope: !235)
!565 = !DILocation(line: 252, column: 2, scope: !235)
!566 = !DILocation(line: 253, column: 1, scope: !235)
!567 = distinct !DISubprogram(name: "create_mbox", scope: !236, file: !236, line: 52, type: !568, isLocal: true, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !317)
!568 = !DISubroutineType(types: !569)
!569 = !{!231, !250}
!570 = !DILocalVariable(name: "name", arg: 1, scope: !567, file: !236, line: 52, type: !250)
!571 = !DILocation(line: 52, column: 25, scope: !567)
!572 = !DILocalVariable(name: "sa", scope: !567, file: !236, line: 54, type: !573)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !574, line: 24, size: 1216, align: 64, elements: !575)
!574 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sigaction.h", directory: "/home/lichi/Desktop/dma/task1")
!575 = !{!576, !656, !665, !666}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "__sigaction_handler", scope: !573, file: !574, line: 35, baseType: !577, size: 64, align: 64)
!577 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !573, file: !574, line: 28, size: 64, align: 64, elements: !578)
!578 = !{!579, !580}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !577, file: !574, line: 31, baseType: !226, size: 64, align: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "sa_sigaction", scope: !577, file: !574, line: 33, baseType: !581, size: 64, align: 64)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64, align: 64)
!582 = !DISubroutineType(types: !583)
!583 = !{null, !231, !584, !225}
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64, align: 64)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !586, line: 133, baseType: !587)
!586 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/siginfo.h", directory: "/home/lichi/Desktop/dma/task1")
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !586, line: 62, size: 1024, align: 64, elements: !588)
!588 = !{!589, !590, !591, !592}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !587, file: !586, line: 64, baseType: !231, size: 32, align: 32)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !587, file: !586, line: 65, baseType: !231, size: 32, align: 32, offset: 32)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !587, file: !586, line: 67, baseType: !231, size: 32, align: 32, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !587, file: !586, line: 132, baseType: !593, size: 896, align: 64, offset: 128)
!593 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !587, file: !586, line: 69, size: 896, align: 64, elements: !594)
!594 = !{!595, !599, !607, !618, !624, !634, !645, !650}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "_pad", scope: !593, file: !586, line: 71, baseType: !596, size: 896, align: 32)
!596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, size: 896, align: 32, elements: !597)
!597 = !{!598}
!598 = !DISubrange(count: 28)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !593, file: !586, line: 78, baseType: !600, size: 64, align: 32)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !593, file: !586, line: 74, size: 64, align: 32, elements: !601)
!601 = !{!602, !604}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !600, file: !586, line: 76, baseType: !603, size: 32, align: 32)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !290, line: 133, baseType: !231)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !600, file: !586, line: 77, baseType: !605, size: 32, align: 32, offset: 32)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !290, line: 125, baseType: !606)
!606 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !593, file: !586, line: 86, baseType: !608, size: 128, align: 64)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !593, file: !586, line: 81, size: 128, align: 64, elements: !609)
!609 = !{!610, !611, !612}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "si_tid", scope: !608, file: !586, line: 83, baseType: !231, size: 32, align: 32)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "si_overrun", scope: !608, file: !586, line: 84, baseType: !231, size: 32, align: 32, offset: 32)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !608, file: !586, line: 85, baseType: !613, size: 64, align: 64, offset: 64)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !586, line: 36, baseType: !614)
!614 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !586, line: 32, size: 64, align: 64, elements: !615)
!615 = !{!616, !617}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !614, file: !586, line: 34, baseType: !231, size: 32, align: 32)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !614, file: !586, line: 35, baseType: !225, size: 64, align: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !593, file: !586, line: 94, baseType: !619, size: 128, align: 64)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !593, file: !586, line: 89, size: 128, align: 64, elements: !620)
!620 = !{!621, !622, !623}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !619, file: !586, line: 91, baseType: !603, size: 32, align: 32)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !619, file: !586, line: 92, baseType: !605, size: 32, align: 32, offset: 32)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !619, file: !586, line: 93, baseType: !613, size: 64, align: 64, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !593, file: !586, line: 104, baseType: !625, size: 256, align: 64)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !593, file: !586, line: 97, size: 256, align: 64, elements: !626)
!626 = !{!627, !628, !629, !630, !633}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !625, file: !586, line: 99, baseType: !603, size: 32, align: 32)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !625, file: !586, line: 100, baseType: !605, size: 32, align: 32, offset: 32)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "si_status", scope: !625, file: !586, line: 101, baseType: !231, size: 32, align: 32, offset: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "si_utime", scope: !625, file: !586, line: 102, baseType: !631, size: 64, align: 64, offset: 128)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigchld_clock_t", file: !586, line: 58, baseType: !632)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !290, line: 135, baseType: !291)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "si_stime", scope: !625, file: !586, line: 103, baseType: !631, size: 64, align: 64, offset: 192)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !593, file: !586, line: 116, baseType: !635, size: 256, align: 64)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !593, file: !586, line: 107, size: 256, align: 64, elements: !636)
!636 = !{!637, !638, !640}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr", scope: !635, file: !586, line: 109, baseType: !225, size: 64, align: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr_lsb", scope: !635, file: !586, line: 110, baseType: !639, size: 16, align: 16, offset: 64)
!639 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr_bnd", scope: !635, file: !586, line: 115, baseType: !641, size: 128, align: 64, offset: 128)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !635, file: !586, line: 111, size: 128, align: 64, elements: !642)
!642 = !{!643, !644}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !641, file: !586, line: 113, baseType: !225, size: 64, align: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !641, file: !586, line: 114, baseType: !225, size: 64, align: 64, offset: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !593, file: !586, line: 123, baseType: !646, size: 128, align: 64)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !593, file: !586, line: 119, size: 128, align: 64, elements: !647)
!647 = !{!648, !649}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "si_band", scope: !646, file: !586, line: 121, baseType: !291, size: 64, align: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "si_fd", scope: !646, file: !586, line: 122, baseType: !231, size: 32, align: 32, offset: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !593, file: !586, line: 131, baseType: !651, size: 128, align: 64)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !593, file: !586, line: 126, size: 128, align: 64, elements: !652)
!652 = !{!653, !654, !655}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !651, file: !586, line: 128, baseType: !225, size: 64, align: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !651, file: !586, line: 129, baseType: !231, size: 32, align: 32, offset: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !651, file: !586, line: 130, baseType: !606, size: 32, align: 32, offset: 96)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !573, file: !574, line: 43, baseType: !657, size: 1024, align: 64, offset: 64)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !658, line: 30, baseType: !659)
!658 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sigset.h", directory: "/home/lichi/Desktop/dma/task1")
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !658, line: 27, size: 1024, align: 64, elements: !660)
!660 = !{!661}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !659, file: !658, line: 29, baseType: !662, size: 1024, align: 64)
!662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 1024, align: 64, elements: !663)
!663 = !{!664}
!664 = !DISubrange(count: 16)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !573, file: !574, line: 46, baseType: !231, size: 32, align: 32, offset: 1088)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !573, file: !574, line: 49, baseType: !667, size: 64, align: 64, offset: 1152)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64, align: 64)
!668 = !DISubroutineType(types: !669)
!669 = !{null}
!670 = !DILocation(line: 54, column: 19, scope: !567)
!671 = !DILocalVariable(name: "osa", scope: !567, file: !236, line: 54, type: !573)
!672 = !DILocation(line: 54, column: 23, scope: !567)
!673 = !DILocalVariable(name: "child", scope: !567, file: !236, line: 55, type: !674)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !347, line: 98, baseType: !603)
!675 = !DILocation(line: 55, column: 8, scope: !567)
!676 = !DILocalVariable(name: "waitchild", scope: !567, file: !236, line: 55, type: !674)
!677 = !DILocation(line: 55, column: 15, scope: !567)
!678 = !DILocalVariable(name: "status", scope: !567, file: !236, line: 56, type: !231)
!679 = !DILocation(line: 56, column: 6, scope: !567)
!680 = !DILocalVariable(name: "i", scope: !567, file: !236, line: 57, type: !231)
!681 = !DILocation(line: 57, column: 6, scope: !567)
!682 = !DILocalVariable(name: "maxfd", scope: !567, file: !236, line: 58, type: !291)
!683 = !DILocation(line: 58, column: 7, scope: !567)
!684 = !DILocalVariable(name: "e", scope: !567, file: !236, line: 59, type: !231)
!685 = !DILocation(line: 59, column: 6, scope: !567)
!686 = !DILocalVariable(name: "r", scope: !567, file: !236, line: 60, type: !231)
!687 = !DILocation(line: 60, column: 6, scope: !567)
!688 = !DILocation(line: 65, column: 2, scope: !567)
!689 = !DILocation(line: 66, column: 4, scope: !567)
!690 = !DILocation(line: 66, column: 24, scope: !567)
!691 = !DILocation(line: 66, column: 15, scope: !567)
!692 = !DILocation(line: 67, column: 2, scope: !567)
!693 = !DILocation(line: 69, column: 2, scope: !567)
!694 = !DILocation(line: 71, column: 10, scope: !567)
!695 = !DILocation(line: 71, column: 8, scope: !567)
!696 = !DILocation(line: 72, column: 10, scope: !567)
!697 = !DILocation(line: 72, column: 2, scope: !567)
!698 = !DILocation(line: 75, column: 11, scope: !699)
!699 = distinct !DILexicalBlock(scope: !567, file: !236, line: 72, column: 17)
!700 = !DILocation(line: 75, column: 9, scope: !699)
!701 = !DILocation(line: 76, column: 7, scope: !702)
!702 = distinct !DILexicalBlock(scope: !699, file: !236, line: 76, column: 7)
!703 = !DILocation(line: 76, column: 13, scope: !702)
!704 = !DILocation(line: 76, column: 7, scope: !699)
!705 = !DILocation(line: 77, column: 10, scope: !702)
!706 = !DILocation(line: 77, column: 4, scope: !702)
!707 = !DILocation(line: 79, column: 10, scope: !708)
!708 = distinct !DILexicalBlock(scope: !699, file: !236, line: 79, column: 3)
!709 = !DILocation(line: 79, column: 8, scope: !708)
!710 = !DILocation(line: 79, column: 15, scope: !711)
!711 = !DILexicalBlockFile(scope: !712, file: !236, discriminator: 1)
!712 = distinct !DILexicalBlock(scope: !708, file: !236, line: 79, column: 3)
!713 = !DILocation(line: 79, column: 20, scope: !711)
!714 = !DILocation(line: 79, column: 17, scope: !711)
!715 = !DILocation(line: 79, column: 3, scope: !711)
!716 = !DILocation(line: 80, column: 10, scope: !712)
!717 = !DILocation(line: 80, column: 4, scope: !712)
!718 = !DILocation(line: 79, column: 27, scope: !719)
!719 = !DILexicalBlockFile(scope: !712, file: !236, discriminator: 2)
!720 = !DILocation(line: 79, column: 3, scope: !719)
!721 = distinct !{!721, !722}
!722 = !DILocation(line: 79, column: 3, scope: !699)
!723 = !DILocation(line: 82, column: 65, scope: !699)
!724 = !DILocation(line: 82, column: 3, scope: !699)
!725 = !DILocation(line: 83, column: 3, scope: !699)
!726 = !DILocation(line: 84, column: 3, scope: !699)
!727 = !DILocation(line: 88, column: 23, scope: !699)
!728 = !DILocation(line: 88, column: 15, scope: !699)
!729 = !DILocation(line: 88, column: 13, scope: !699)
!730 = !DILocation(line: 90, column: 8, scope: !699)
!731 = !DILocation(line: 90, column: 7, scope: !699)
!732 = !DILocation(line: 90, column: 5, scope: !699)
!733 = !DILocation(line: 92, column: 3, scope: !699)
!734 = !DILocation(line: 94, column: 7, scope: !735)
!735 = distinct !DILexicalBlock(scope: !699, file: !236, line: 94, column: 7)
!736 = !DILocation(line: 94, column: 17, scope: !735)
!737 = !DILocation(line: 94, column: 23, scope: !735)
!738 = !DILocation(line: 94, column: 26, scope: !739)
!739 = !DILexicalBlockFile(scope: !735, file: !236, discriminator: 1)
!740 = !DILocation(line: 94, column: 28, scope: !739)
!741 = !DILocation(line: 94, column: 7, scope: !739)
!742 = !DILocation(line: 95, column: 62, scope: !743)
!743 = distinct !DILexicalBlock(scope: !735, file: !236, line: 94, column: 37)
!744 = !DILocation(line: 95, column: 4, scope: !743)
!745 = !DILocation(line: 96, column: 4, scope: !743)
!746 = !DILocation(line: 99, column: 7, scope: !747)
!747 = distinct !DILexicalBlock(scope: !699, file: !236, line: 99, column: 7)
!748 = !DILocation(line: 99, column: 17, scope: !747)
!749 = !DILocation(line: 99, column: 7, scope: !699)
!750 = !DILocation(line: 100, column: 69, scope: !751)
!751 = distinct !DILexicalBlock(scope: !747, file: !236, line: 99, column: 24)
!752 = !DILocation(line: 100, column: 4, scope: !751)
!753 = !DILocation(line: 101, column: 4, scope: !751)
!754 = !DILocation(line: 104, column: 27, scope: !755)
!755 = distinct !DILexicalBlock(scope: !699, file: !236, line: 104, column: 7)
!756 = !DILocation(line: 104, column: 7, scope: !755)
!757 = !DILocation(line: 104, column: 12, scope: !755)
!758 = !DILocation(line: 104, column: 19, scope: !755)
!759 = !DILocation(line: 104, column: 25, scope: !755)
!760 = !DILocation(line: 104, column: 48, scope: !761)
!761 = !DILexicalBlockFile(scope: !755, file: !236, discriminator: 1)
!762 = !DILocation(line: 104, column: 28, scope: !761)
!763 = !DILocation(line: 104, column: 33, scope: !761)
!764 = !DILocation(line: 104, column: 40, scope: !761)
!765 = !DILocation(line: 104, column: 50, scope: !761)
!766 = !DILocation(line: 104, column: 7, scope: !761)
!767 = !DILocation(line: 105, column: 47, scope: !768)
!768 = distinct !DILexicalBlock(scope: !755, file: !236, line: 104, column: 54)
!769 = !DILocation(line: 105, column: 4, scope: !768)
!770 = !DILocation(line: 106, column: 4, scope: !768)
!771 = !DILocation(line: 110, column: 5, scope: !699)
!772 = !DILocation(line: 111, column: 3, scope: !699)
!773 = !DILocation(line: 115, column: 3, scope: !699)
!774 = !DILocation(line: 116, column: 3, scope: !699)
!775 = !DILocation(line: 119, column: 2, scope: !567)
!776 = !DILocation(line: 121, column: 10, scope: !567)
!777 = !DILocation(line: 121, column: 2, scope: !567)
