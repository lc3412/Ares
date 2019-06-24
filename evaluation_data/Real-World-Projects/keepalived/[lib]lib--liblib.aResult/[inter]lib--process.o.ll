; ModuleID = './[inter]lib--process.o.i'
source_filename = "./[inter]lib--process.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rlimit = type { i64, i64 }
%struct.sched_param = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"child process: cannot raise priority\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"child process cannot set realtime rlimit\00", align 1
@realtime_priority_set = internal global i8 0, align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"child process: cannot reset realtime scheduling\00", align 1
@rlimit_rt_set = internal global i8 0, align 1
@orig_rlimit_rt = internal global %struct.rlimit zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [43 x i8] c"child process cannot reset realtime rlimit\00", align 1
@priority_set = internal global i8 0, align 1
@process_locked_in_memory = internal global i8 0, align 1
@rlimit_nofile_set = common global i8 0, align 1
@nofile = internal global %struct.rlimit zeroinitializer, align 8
@rlimit_core_set = common global i8 0, align 1
@core = internal global %struct.rlimit zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"Unknown rlimit resource %d\00", align 1
@orig_priority = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"Unable to set process priority to %d - %s\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Unable to lock process in memory - %s\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Unable to reset process priority - %m\00", align 1

; Function Attrs: nounwind uwtable
define void @set_process_priorities(i32, i32, i32, i32) #0 !dbg !276 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sched_param, align 4
  %10 = alloca %struct.rlimit, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !280, metadata !281), !dbg !282
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !283, metadata !281), !dbg !284
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !285, metadata !281), !dbg !286
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !287, metadata !281), !dbg !288
  %11 = load i32, i32* %5, align 4, !dbg !289
  %12 = icmp ne i32 %11, 0, !dbg !289
  br i1 %12, label %13, label %37, !dbg !291

; <label>:13:                                     ; preds = %4
  call void @llvm.dbg.declare(metadata %struct.sched_param* %9, metadata !292, metadata !281), !dbg !298
  %14 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %9, i32 0, i32 0, !dbg !299
  %15 = load i32, i32* %5, align 4, !dbg !300
  store i32 %15, i32* %14, align 4, !dbg !299
  %16 = call i32 @getpid() #6, !dbg !301
  %17 = call i32 @sched_setscheduler(i32 %16, i32 1073741826, %struct.sched_param* %9) #6, !dbg !303
  %18 = icmp ne i32 %17, 0, !dbg !305
  br i1 %18, label %19, label %20, !dbg !306

; <label>:19:                                     ; preds = %13
  call void (i32, i8*, ...) @log_message(i32 4, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0)), !dbg !307
  br label %36, !dbg !307

; <label>:20:                                     ; preds = %13
  %21 = load i32, i32* %6, align 4, !dbg !308
  %22 = icmp ne i32 %21, 0, !dbg !308
  br i1 %22, label %23, label %35, !dbg !310

; <label>:23:                                     ; preds = %20
  call void @llvm.dbg.declare(metadata %struct.rlimit* %10, metadata !311, metadata !281), !dbg !313
  call void @set_sigxcpu_handler(), !dbg !314
  %24 = load i32, i32* %6, align 4, !dbg !315
  %25 = sdiv i32 %24, 2, !dbg !316
  %26 = sext i32 %25 to i64, !dbg !315
  %27 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %10, i32 0, i32 0, !dbg !317
  store i64 %26, i64* %27, align 8, !dbg !318
  %28 = load i32, i32* %6, align 4, !dbg !319
  %29 = sext i32 %28 to i64, !dbg !319
  %30 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %10, i32 0, i32 1, !dbg !320
  store i64 %29, i64* %30, align 8, !dbg !321
  %31 = call i32 @setrlimit(i32 15, %struct.rlimit* %10) #6, !dbg !322
  %32 = icmp ne i32 %31, 0, !dbg !322
  br i1 %32, label %33, label %34, !dbg !324

; <label>:33:                                     ; preds = %23
  call void (i32, i8*, ...) @log_message(i32 4, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i32 0, i32 0)), !dbg !325
  br label %34, !dbg !325

; <label>:34:                                     ; preds = %33, %23
  br label %35, !dbg !326

; <label>:35:                                     ; preds = %34, %20
  br label %36

; <label>:36:                                     ; preds = %35, %19
  br label %43, !dbg !327

; <label>:37:                                     ; preds = %4
  %38 = load i32, i32* %7, align 4, !dbg !328
  %39 = icmp ne i32 %38, 0, !dbg !328
  br i1 %39, label %40, label %42, !dbg !330

; <label>:40:                                     ; preds = %37
  %41 = load i32, i32* %7, align 4, !dbg !331
  call void @set_process_priority(i32 %41), !dbg !332
  br label %42, !dbg !332

; <label>:42:                                     ; preds = %40, %37
  br label %43

; <label>:43:                                     ; preds = %42, %36
  %44 = load i32, i32* %8, align 4, !dbg !333
  %45 = icmp ne i32 %44, 0, !dbg !333
  br i1 %45, label %46, label %49, !dbg !335

; <label>:46:                                     ; preds = %43
  %47 = load i32, i32* %8, align 4, !dbg !336
  %48 = sext i32 %47 to i64, !dbg !336
  call void @set_process_dont_swap(i64 %48), !dbg !337
  br label %49, !dbg !337

; <label>:49:                                     ; preds = %46, %43
  ret void, !dbg !338
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i32 @sched_setscheduler(i32, i32, %struct.sched_param*) #2

; Function Attrs: nounwind
declare i32 @getpid() #2

declare void @log_message(i32, i8*, ...) #3

declare void @set_sigxcpu_handler() #3

; Function Attrs: nounwind
declare i32 @setrlimit(i32, %struct.rlimit*) #2

; Function Attrs: nounwind uwtable
define internal void @set_process_priority(i32) #0 !dbg !339 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !342, metadata !281), !dbg !343
  %3 = call i32 @getpriority(i32 0, i32 0) #6, !dbg !344
  store i32 %3, i32* @orig_priority, align 4, !dbg !345
  %4 = call i32* @__errno_location() #1, !dbg !346
  store i32 0, i32* %4, align 4, !dbg !347
  %5 = load i32, i32* %2, align 4, !dbg !348
  %6 = call i32 @setpriority(i32 0, i32 0, i32 %5) #6, !dbg !350
  %7 = icmp eq i32 %6, -1, !dbg !351
  br i1 %7, label %8, label %17, !dbg !352

; <label>:8:                                      ; preds = %1
  %9 = call i32* @__errno_location() #1, !dbg !353
  %10 = load i32, i32* %9, align 4, !dbg !355
  %11 = icmp ne i32 %10, 0, !dbg !356
  br i1 %11, label %12, label %17, !dbg !357

; <label>:12:                                     ; preds = %8
  %13 = load i32, i32* %2, align 4, !dbg !358
  %14 = call i32* @__errno_location() #1, !dbg !360
  %15 = load i32, i32* %14, align 4, !dbg !361
  %16 = call i8* @strerror(i32 %15) #6, !dbg !362
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i32 0, i32 0), i32 %13, i8* %16), !dbg !364
  br label %18, !dbg !366

; <label>:17:                                     ; preds = %8, %1
  store i8 1, i8* @priority_set, align 1, !dbg !367
  br label %18, !dbg !368

; <label>:18:                                     ; preds = %17, %12
  ret void, !dbg !369
}

; Function Attrs: nounwind uwtable
define internal void @set_process_dont_swap(i64) #0 !dbg !371 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !374, metadata !281), !dbg !375
  call void @llvm.dbg.declare(metadata i64* %3, metadata !376, metadata !281), !dbg !377
  %6 = call i64 @sysconf(i32 30) #6, !dbg !378
  store i64 %6, i64* %3, align 8, !dbg !377
  %7 = load i64, i64* %2, align 8, !dbg !379
  %8 = call i8* @llvm.stacksave(), !dbg !380
  store i8* %8, i8** %4, align 8, !dbg !380
  %9 = alloca i8, i64 %7, align 16, !dbg !380
  call void @llvm.dbg.declare(metadata i8* %9, metadata !381, metadata !386), !dbg !387
  call void @llvm.dbg.declare(metadata i64* %5, metadata !388, metadata !281), !dbg !389
  %10 = getelementptr inbounds i8, i8* %9, i64 0, !dbg !390
  store i8 23, i8* %10, align 16, !dbg !391
  store i64 0, i64* %5, align 8, !dbg !392
  br label %11, !dbg !394

; <label>:11:                                     ; preds = %20, %1
  %12 = load i64, i64* %5, align 8, !dbg !395
  %13 = load i64, i64* %2, align 8, !dbg !398
  %14 = icmp ult i64 %12, %13, !dbg !399
  br i1 %14, label %15, label %24, !dbg !400

; <label>:15:                                     ; preds = %11
  %16 = getelementptr inbounds i8, i8* %9, i64 0, !dbg !401
  %17 = load i8, i8* %16, align 16, !dbg !401
  %18 = load i64, i64* %5, align 8, !dbg !402
  %19 = getelementptr inbounds i8, i8* %9, i64 %18, !dbg !403
  store i8 %17, i8* %19, align 1, !dbg !404
  br label %20, !dbg !403

; <label>:20:                                     ; preds = %15
  %21 = load i64, i64* %3, align 8, !dbg !405
  %22 = load i64, i64* %5, align 8, !dbg !407
  %23 = add i64 %22, %21, !dbg !407
  store i64 %23, i64* %5, align 8, !dbg !407
  br label %11, !dbg !408, !llvm.loop !409

; <label>:24:                                     ; preds = %11
  %25 = call i32 @mlockall(i32 2) #6, !dbg !411
  %26 = icmp eq i32 %25, -1, !dbg !413
  br i1 %26, label %27, label %31, !dbg !414

; <label>:27:                                     ; preds = %24
  %28 = call i32* @__errno_location() #1, !dbg !415
  %29 = load i32, i32* %28, align 4, !dbg !416
  %30 = call i8* @strerror(i32 %29) #6, !dbg !417
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i32 0, i32 0), i8* %30), !dbg !419
  br label %32, !dbg !421

; <label>:31:                                     ; preds = %24
  store i8 1, i8* @process_locked_in_memory, align 1, !dbg !422
  br label %32

; <label>:32:                                     ; preds = %31, %27
  %33 = load i8*, i8** %4, align 8, !dbg !423
  call void @llvm.stackrestore(i8* %33), !dbg !423
  ret void, !dbg !423
}

; Function Attrs: nounwind uwtable
define void @reset_process_priorities() #0 !dbg !424 {
  %1 = alloca %struct.sched_param, align 4
  %2 = load i8, i8* @realtime_priority_set, align 1, !dbg !427
  %3 = trunc i8 %2 to i1, !dbg !427
  br i1 %3, label %4, label %21, !dbg !429

; <label>:4:                                      ; preds = %0
  call void @llvm.dbg.declare(metadata %struct.sched_param* %1, metadata !430, metadata !281), !dbg !432
  %5 = bitcast %struct.sched_param* %1 to i8*, !dbg !432
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 4, i32 4, i1 false), !dbg !432
  %6 = call i32 @getpid() #6, !dbg !433
  %7 = call i32 @sched_setscheduler(i32 %6, i32 0, %struct.sched_param* %1) #6, !dbg !435
  %8 = icmp ne i32 %7, 0, !dbg !437
  br i1 %8, label %9, label %10, !dbg !438

; <label>:9:                                      ; preds = %4
  call void (i32, i8*, ...) @log_message(i32 4, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i32 0, i32 0)), !dbg !439
  br label %20, !dbg !439

; <label>:10:                                     ; preds = %4
  store i8 0, i8* @realtime_priority_set, align 1, !dbg !440
  %11 = load i8, i8* @rlimit_rt_set, align 1, !dbg !442
  %12 = trunc i8 %11 to i1, !dbg !442
  br i1 %12, label %13, label %19, !dbg !444

; <label>:13:                                     ; preds = %10
  %14 = call i32 @setrlimit(i32 15, %struct.rlimit* @orig_rlimit_rt) #6, !dbg !445
  %15 = icmp ne i32 %14, 0, !dbg !445
  br i1 %15, label %16, label %17, !dbg !448

; <label>:16:                                     ; preds = %13
  call void (i32, i8*, ...) @log_message(i32 4, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i32 0, i32 0)), !dbg !449
  br label %18, !dbg !449

; <label>:17:                                     ; preds = %13
  store i8 0, i8* @rlimit_rt_set, align 1, !dbg !450
  br label %18

; <label>:18:                                     ; preds = %17, %16
  br label %19, !dbg !451

; <label>:19:                                     ; preds = %18, %10
  br label %20

; <label>:20:                                     ; preds = %19, %9
  br label %21, !dbg !452

; <label>:21:                                     ; preds = %20, %0
  %22 = load i8, i8* @priority_set, align 1, !dbg !453
  %23 = trunc i8 %22 to i1, !dbg !453
  br i1 %23, label %24, label %25, !dbg !455

; <label>:24:                                     ; preds = %21
  call void @reset_process_priority(), !dbg !456
  br label %25, !dbg !456

; <label>:25:                                     ; preds = %24, %21
  %26 = load i8, i8* @process_locked_in_memory, align 1, !dbg !457
  %27 = trunc i8 %26 to i1, !dbg !457
  br i1 %27, label %28, label %30, !dbg !459

; <label>:28:                                     ; preds = %25
  %29 = call i32 @munlockall() #6, !dbg !460
  store i8 0, i8* @process_locked_in_memory, align 1, !dbg !462
  br label %30, !dbg !463

; <label>:30:                                     ; preds = %28, %25
  %31 = load i8, i8* @rlimit_nofile_set, align 1, !dbg !464
  %32 = trunc i8 %31 to i1, !dbg !464
  br i1 %32, label %33, label %35, !dbg !466

; <label>:33:                                     ; preds = %30
  %34 = call i32 @setrlimit(i32 7, %struct.rlimit* @nofile) #6, !dbg !467
  store i8 0, i8* @rlimit_nofile_set, align 1, !dbg !469
  br label %35, !dbg !470

; <label>:35:                                     ; preds = %33, %30
  %36 = load i8, i8* @rlimit_core_set, align 1, !dbg !471
  %37 = trunc i8 %36 to i1, !dbg !471
  br i1 %37, label %38, label %40, !dbg !473

; <label>:38:                                     ; preds = %35
  %39 = call i32 @setrlimit(i32 4, %struct.rlimit* @core) #6, !dbg !474
  store i8 0, i8* @rlimit_core_set, align 1, !dbg !476
  br label %40, !dbg !477

; <label>:40:                                     ; preds = %38, %35
  ret void, !dbg !478
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define internal void @reset_process_priority() #0 !dbg !479 {
  %1 = call i32* @__errno_location() #1, !dbg !480
  store i32 0, i32* %1, align 4, !dbg !481
  %2 = load i32, i32* @orig_priority, align 4, !dbg !482
  %3 = call i32 @setpriority(i32 0, i32 0, i32 %2) #6, !dbg !484
  %4 = icmp eq i32 %3, -1, !dbg !485
  br i1 %4, label %5, label %10, !dbg !486

; <label>:5:                                      ; preds = %0
  %6 = call i32* @__errno_location() #1, !dbg !487
  %7 = load i32, i32* %6, align 4, !dbg !489
  %8 = icmp ne i32 %7, 0, !dbg !490
  br i1 %8, label %9, label %10, !dbg !491

; <label>:9:                                      ; preds = %5
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i32 0, i32 0)), !dbg !492
  br label %11, !dbg !494

; <label>:10:                                     ; preds = %5, %0
  store i8 0, i8* @priority_set, align 1, !dbg !495
  br label %11, !dbg !496

; <label>:11:                                     ; preds = %10, %9
  ret void, !dbg !497
}

; Function Attrs: nounwind
declare i32 @munlockall() #2

; Function Attrs: nounwind uwtable
define void @set_child_rlimit(i32, %struct.rlimit*) #0 !dbg !499 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rlimit*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !503, metadata !281), !dbg !504
  store %struct.rlimit* %1, %struct.rlimit** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.rlimit** %4, metadata !505, metadata !281), !dbg !506
  %5 = load i32, i32* %3, align 4, !dbg !507
  %6 = icmp eq i32 %5, 7, !dbg !509
  br i1 %6, label %7, label %10, !dbg !510

; <label>:7:                                      ; preds = %2
  %8 = load %struct.rlimit*, %struct.rlimit** %4, align 8, !dbg !511
  %9 = bitcast %struct.rlimit* %8 to i8*, !dbg !513
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.rlimit* @nofile to i8*), i8* %9, i64 16, i32 8, i1 false), !dbg !513
  store i8 1, i8* @rlimit_nofile_set, align 1, !dbg !514
  br label %19, !dbg !515

; <label>:10:                                     ; preds = %2
  %11 = load i32, i32* %3, align 4, !dbg !516
  %12 = icmp eq i32 %11, 4, !dbg !518
  br i1 %12, label %13, label %16, !dbg !519

; <label>:13:                                     ; preds = %10
  %14 = load %struct.rlimit*, %struct.rlimit** %4, align 8, !dbg !520
  %15 = bitcast %struct.rlimit* %14 to i8*, !dbg !522
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.rlimit* @core to i8*), i8* %15, i64 16, i32 8, i1 false), !dbg !522
  store i8 1, i8* @rlimit_core_set, align 1, !dbg !523
  br label %18, !dbg !524

; <label>:16:                                     ; preds = %10
  %17 = load i32, i32* %3, align 4, !dbg !525
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0), i32 %17), !dbg !526
  br label %18

; <label>:18:                                     ; preds = %16, %13
  br label %19

; <label>:19:                                     ; preds = %18, %7
  ret void, !dbg !527
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define i32 @local_fork() #0 !dbg !528 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !534, metadata !281), !dbg !535
  %2 = call i32 @fork() #6, !dbg !536
  store i32 %2, i32* %1, align 4, !dbg !537
  %3 = load i32, i32* %1, align 4, !dbg !538
  %4 = icmp sgt i32 %3, 0, !dbg !540
  br i1 %4, label %5, label %6, !dbg !541

; <label>:5:                                      ; preds = %0
  call void @reset_process_priorities(), !dbg !542
  br label %6, !dbg !542

; <label>:6:                                      ; preds = %5, %0
  %7 = load i32, i32* %1, align 4, !dbg !543
  ret i32 %7, !dbg !544
}

; Function Attrs: nounwind
declare i32 @fork() #2

; Function Attrs: nounwind
declare i32 @getpriority(i32, i32) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

; Function Attrs: nounwind
declare i32 @setpriority(i32, i32, i32) #2

; Function Attrs: nounwind
declare i8* @strerror(i32) #2

; Function Attrs: nounwind
declare i64 @sysconf(i32) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #6

; Function Attrs: nounwind
declare i32 @mlockall(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #6

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!273, !274}
!llvm.ident = !{!275}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !248, globals: !252)
!1 = !DIFile(filename: "[inter]lib--process.o.i", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!2 = !{!3, !25, !30}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__rlimit_resource", file: !4, line: 31, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/resource.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24}
!6 = !DIEnumerator(name: "RLIMIT_CPU", value: 0)
!7 = !DIEnumerator(name: "RLIMIT_FSIZE", value: 1)
!8 = !DIEnumerator(name: "RLIMIT_DATA", value: 2)
!9 = !DIEnumerator(name: "RLIMIT_STACK", value: 3)
!10 = !DIEnumerator(name: "RLIMIT_CORE", value: 4)
!11 = !DIEnumerator(name: "__RLIMIT_RSS", value: 5)
!12 = !DIEnumerator(name: "RLIMIT_NOFILE", value: 7)
!13 = !DIEnumerator(name: "__RLIMIT_OFILE", value: 7)
!14 = !DIEnumerator(name: "RLIMIT_AS", value: 9)
!15 = !DIEnumerator(name: "__RLIMIT_NPROC", value: 6)
!16 = !DIEnumerator(name: "__RLIMIT_MEMLOCK", value: 8)
!17 = !DIEnumerator(name: "__RLIMIT_LOCKS", value: 10)
!18 = !DIEnumerator(name: "__RLIMIT_SIGPENDING", value: 11)
!19 = !DIEnumerator(name: "__RLIMIT_MSGQUEUE", value: 12)
!20 = !DIEnumerator(name: "__RLIMIT_NICE", value: 13)
!21 = !DIEnumerator(name: "__RLIMIT_RTPRIO", value: 14)
!22 = !DIEnumerator(name: "__RLIMIT_RTTIME", value: 15)
!23 = !DIEnumerator(name: "__RLIMIT_NLIMITS", value: 16)
!24 = !DIEnumerator(name: "__RLIM_NLIMITS", value: 16)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__priority_which", file: !4, line: 292, size: 32, align: 32, elements: !26)
!26 = !{!27, !28, !29}
!27 = !DIEnumerator(name: "PRIO_PROCESS", value: 0)
!28 = !DIEnumerator(name: "PRIO_PGRP", value: 1)
!29 = !DIEnumerator(name: "PRIO_USER", value: 2)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !31, line: 71, size: 32, align: 32, elements: !32)
!31 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/confname.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!32 = !{!33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247}
!33 = !DIEnumerator(name: "_SC_ARG_MAX", value: 0)
!34 = !DIEnumerator(name: "_SC_CHILD_MAX", value: 1)
!35 = !DIEnumerator(name: "_SC_CLK_TCK", value: 2)
!36 = !DIEnumerator(name: "_SC_NGROUPS_MAX", value: 3)
!37 = !DIEnumerator(name: "_SC_OPEN_MAX", value: 4)
!38 = !DIEnumerator(name: "_SC_STREAM_MAX", value: 5)
!39 = !DIEnumerator(name: "_SC_TZNAME_MAX", value: 6)
!40 = !DIEnumerator(name: "_SC_JOB_CONTROL", value: 7)
!41 = !DIEnumerator(name: "_SC_SAVED_IDS", value: 8)
!42 = !DIEnumerator(name: "_SC_REALTIME_SIGNALS", value: 9)
!43 = !DIEnumerator(name: "_SC_PRIORITY_SCHEDULING", value: 10)
!44 = !DIEnumerator(name: "_SC_TIMERS", value: 11)
!45 = !DIEnumerator(name: "_SC_ASYNCHRONOUS_IO", value: 12)
!46 = !DIEnumerator(name: "_SC_PRIORITIZED_IO", value: 13)
!47 = !DIEnumerator(name: "_SC_SYNCHRONIZED_IO", value: 14)
!48 = !DIEnumerator(name: "_SC_FSYNC", value: 15)
!49 = !DIEnumerator(name: "_SC_MAPPED_FILES", value: 16)
!50 = !DIEnumerator(name: "_SC_MEMLOCK", value: 17)
!51 = !DIEnumerator(name: "_SC_MEMLOCK_RANGE", value: 18)
!52 = !DIEnumerator(name: "_SC_MEMORY_PROTECTION", value: 19)
!53 = !DIEnumerator(name: "_SC_MESSAGE_PASSING", value: 20)
!54 = !DIEnumerator(name: "_SC_SEMAPHORES", value: 21)
!55 = !DIEnumerator(name: "_SC_SHARED_MEMORY_OBJECTS", value: 22)
!56 = !DIEnumerator(name: "_SC_AIO_LISTIO_MAX", value: 23)
!57 = !DIEnumerator(name: "_SC_AIO_MAX", value: 24)
!58 = !DIEnumerator(name: "_SC_AIO_PRIO_DELTA_MAX", value: 25)
!59 = !DIEnumerator(name: "_SC_DELAYTIMER_MAX", value: 26)
!60 = !DIEnumerator(name: "_SC_MQ_OPEN_MAX", value: 27)
!61 = !DIEnumerator(name: "_SC_MQ_PRIO_MAX", value: 28)
!62 = !DIEnumerator(name: "_SC_VERSION", value: 29)
!63 = !DIEnumerator(name: "_SC_PAGESIZE", value: 30)
!64 = !DIEnumerator(name: "_SC_RTSIG_MAX", value: 31)
!65 = !DIEnumerator(name: "_SC_SEM_NSEMS_MAX", value: 32)
!66 = !DIEnumerator(name: "_SC_SEM_VALUE_MAX", value: 33)
!67 = !DIEnumerator(name: "_SC_SIGQUEUE_MAX", value: 34)
!68 = !DIEnumerator(name: "_SC_TIMER_MAX", value: 35)
!69 = !DIEnumerator(name: "_SC_BC_BASE_MAX", value: 36)
!70 = !DIEnumerator(name: "_SC_BC_DIM_MAX", value: 37)
!71 = !DIEnumerator(name: "_SC_BC_SCALE_MAX", value: 38)
!72 = !DIEnumerator(name: "_SC_BC_STRING_MAX", value: 39)
!73 = !DIEnumerator(name: "_SC_COLL_WEIGHTS_MAX", value: 40)
!74 = !DIEnumerator(name: "_SC_EQUIV_CLASS_MAX", value: 41)
!75 = !DIEnumerator(name: "_SC_EXPR_NEST_MAX", value: 42)
!76 = !DIEnumerator(name: "_SC_LINE_MAX", value: 43)
!77 = !DIEnumerator(name: "_SC_RE_DUP_MAX", value: 44)
!78 = !DIEnumerator(name: "_SC_CHARCLASS_NAME_MAX", value: 45)
!79 = !DIEnumerator(name: "_SC_2_VERSION", value: 46)
!80 = !DIEnumerator(name: "_SC_2_C_BIND", value: 47)
!81 = !DIEnumerator(name: "_SC_2_C_DEV", value: 48)
!82 = !DIEnumerator(name: "_SC_2_FORT_DEV", value: 49)
!83 = !DIEnumerator(name: "_SC_2_FORT_RUN", value: 50)
!84 = !DIEnumerator(name: "_SC_2_SW_DEV", value: 51)
!85 = !DIEnumerator(name: "_SC_2_LOCALEDEF", value: 52)
!86 = !DIEnumerator(name: "_SC_PII", value: 53)
!87 = !DIEnumerator(name: "_SC_PII_XTI", value: 54)
!88 = !DIEnumerator(name: "_SC_PII_SOCKET", value: 55)
!89 = !DIEnumerator(name: "_SC_PII_INTERNET", value: 56)
!90 = !DIEnumerator(name: "_SC_PII_OSI", value: 57)
!91 = !DIEnumerator(name: "_SC_POLL", value: 58)
!92 = !DIEnumerator(name: "_SC_SELECT", value: 59)
!93 = !DIEnumerator(name: "_SC_UIO_MAXIOV", value: 60)
!94 = !DIEnumerator(name: "_SC_IOV_MAX", value: 60)
!95 = !DIEnumerator(name: "_SC_PII_INTERNET_STREAM", value: 61)
!96 = !DIEnumerator(name: "_SC_PII_INTERNET_DGRAM", value: 62)
!97 = !DIEnumerator(name: "_SC_PII_OSI_COTS", value: 63)
!98 = !DIEnumerator(name: "_SC_PII_OSI_CLTS", value: 64)
!99 = !DIEnumerator(name: "_SC_PII_OSI_M", value: 65)
!100 = !DIEnumerator(name: "_SC_T_IOV_MAX", value: 66)
!101 = !DIEnumerator(name: "_SC_THREADS", value: 67)
!102 = !DIEnumerator(name: "_SC_THREAD_SAFE_FUNCTIONS", value: 68)
!103 = !DIEnumerator(name: "_SC_GETGR_R_SIZE_MAX", value: 69)
!104 = !DIEnumerator(name: "_SC_GETPW_R_SIZE_MAX", value: 70)
!105 = !DIEnumerator(name: "_SC_LOGIN_NAME_MAX", value: 71)
!106 = !DIEnumerator(name: "_SC_TTY_NAME_MAX", value: 72)
!107 = !DIEnumerator(name: "_SC_THREAD_DESTRUCTOR_ITERATIONS", value: 73)
!108 = !DIEnumerator(name: "_SC_THREAD_KEYS_MAX", value: 74)
!109 = !DIEnumerator(name: "_SC_THREAD_STACK_MIN", value: 75)
!110 = !DIEnumerator(name: "_SC_THREAD_THREADS_MAX", value: 76)
!111 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKADDR", value: 77)
!112 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKSIZE", value: 78)
!113 = !DIEnumerator(name: "_SC_THREAD_PRIORITY_SCHEDULING", value: 79)
!114 = !DIEnumerator(name: "_SC_THREAD_PRIO_INHERIT", value: 80)
!115 = !DIEnumerator(name: "_SC_THREAD_PRIO_PROTECT", value: 81)
!116 = !DIEnumerator(name: "_SC_THREAD_PROCESS_SHARED", value: 82)
!117 = !DIEnumerator(name: "_SC_NPROCESSORS_CONF", value: 83)
!118 = !DIEnumerator(name: "_SC_NPROCESSORS_ONLN", value: 84)
!119 = !DIEnumerator(name: "_SC_PHYS_PAGES", value: 85)
!120 = !DIEnumerator(name: "_SC_AVPHYS_PAGES", value: 86)
!121 = !DIEnumerator(name: "_SC_ATEXIT_MAX", value: 87)
!122 = !DIEnumerator(name: "_SC_PASS_MAX", value: 88)
!123 = !DIEnumerator(name: "_SC_XOPEN_VERSION", value: 89)
!124 = !DIEnumerator(name: "_SC_XOPEN_XCU_VERSION", value: 90)
!125 = !DIEnumerator(name: "_SC_XOPEN_UNIX", value: 91)
!126 = !DIEnumerator(name: "_SC_XOPEN_CRYPT", value: 92)
!127 = !DIEnumerator(name: "_SC_XOPEN_ENH_I18N", value: 93)
!128 = !DIEnumerator(name: "_SC_XOPEN_SHM", value: 94)
!129 = !DIEnumerator(name: "_SC_2_CHAR_TERM", value: 95)
!130 = !DIEnumerator(name: "_SC_2_C_VERSION", value: 96)
!131 = !DIEnumerator(name: "_SC_2_UPE", value: 97)
!132 = !DIEnumerator(name: "_SC_XOPEN_XPG2", value: 98)
!133 = !DIEnumerator(name: "_SC_XOPEN_XPG3", value: 99)
!134 = !DIEnumerator(name: "_SC_XOPEN_XPG4", value: 100)
!135 = !DIEnumerator(name: "_SC_CHAR_BIT", value: 101)
!136 = !DIEnumerator(name: "_SC_CHAR_MAX", value: 102)
!137 = !DIEnumerator(name: "_SC_CHAR_MIN", value: 103)
!138 = !DIEnumerator(name: "_SC_INT_MAX", value: 104)
!139 = !DIEnumerator(name: "_SC_INT_MIN", value: 105)
!140 = !DIEnumerator(name: "_SC_LONG_BIT", value: 106)
!141 = !DIEnumerator(name: "_SC_WORD_BIT", value: 107)
!142 = !DIEnumerator(name: "_SC_MB_LEN_MAX", value: 108)
!143 = !DIEnumerator(name: "_SC_NZERO", value: 109)
!144 = !DIEnumerator(name: "_SC_SSIZE_MAX", value: 110)
!145 = !DIEnumerator(name: "_SC_SCHAR_MAX", value: 111)
!146 = !DIEnumerator(name: "_SC_SCHAR_MIN", value: 112)
!147 = !DIEnumerator(name: "_SC_SHRT_MAX", value: 113)
!148 = !DIEnumerator(name: "_SC_SHRT_MIN", value: 114)
!149 = !DIEnumerator(name: "_SC_UCHAR_MAX", value: 115)
!150 = !DIEnumerator(name: "_SC_UINT_MAX", value: 116)
!151 = !DIEnumerator(name: "_SC_ULONG_MAX", value: 117)
!152 = !DIEnumerator(name: "_SC_USHRT_MAX", value: 118)
!153 = !DIEnumerator(name: "_SC_NL_ARGMAX", value: 119)
!154 = !DIEnumerator(name: "_SC_NL_LANGMAX", value: 120)
!155 = !DIEnumerator(name: "_SC_NL_MSGMAX", value: 121)
!156 = !DIEnumerator(name: "_SC_NL_NMAX", value: 122)
!157 = !DIEnumerator(name: "_SC_NL_SETMAX", value: 123)
!158 = !DIEnumerator(name: "_SC_NL_TEXTMAX", value: 124)
!159 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFF32", value: 125)
!160 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFFBIG", value: 126)
!161 = !DIEnumerator(name: "_SC_XBS5_LP64_OFF64", value: 127)
!162 = !DIEnumerator(name: "_SC_XBS5_LPBIG_OFFBIG", value: 128)
!163 = !DIEnumerator(name: "_SC_XOPEN_LEGACY", value: 129)
!164 = !DIEnumerator(name: "_SC_XOPEN_REALTIME", value: 130)
!165 = !DIEnumerator(name: "_SC_XOPEN_REALTIME_THREADS", value: 131)
!166 = !DIEnumerator(name: "_SC_ADVISORY_INFO", value: 132)
!167 = !DIEnumerator(name: "_SC_BARRIERS", value: 133)
!168 = !DIEnumerator(name: "_SC_BASE", value: 134)
!169 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT", value: 135)
!170 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT_R", value: 136)
!171 = !DIEnumerator(name: "_SC_CLOCK_SELECTION", value: 137)
!172 = !DIEnumerator(name: "_SC_CPUTIME", value: 138)
!173 = !DIEnumerator(name: "_SC_THREAD_CPUTIME", value: 139)
!174 = !DIEnumerator(name: "_SC_DEVICE_IO", value: 140)
!175 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC", value: 141)
!176 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC_R", value: 142)
!177 = !DIEnumerator(name: "_SC_FD_MGMT", value: 143)
!178 = !DIEnumerator(name: "_SC_FIFO", value: 144)
!179 = !DIEnumerator(name: "_SC_PIPE", value: 145)
!180 = !DIEnumerator(name: "_SC_FILE_ATTRIBUTES", value: 146)
!181 = !DIEnumerator(name: "_SC_FILE_LOCKING", value: 147)
!182 = !DIEnumerator(name: "_SC_FILE_SYSTEM", value: 148)
!183 = !DIEnumerator(name: "_SC_MONOTONIC_CLOCK", value: 149)
!184 = !DIEnumerator(name: "_SC_MULTI_PROCESS", value: 150)
!185 = !DIEnumerator(name: "_SC_SINGLE_PROCESS", value: 151)
!186 = !DIEnumerator(name: "_SC_NETWORKING", value: 152)
!187 = !DIEnumerator(name: "_SC_READER_WRITER_LOCKS", value: 153)
!188 = !DIEnumerator(name: "_SC_SPIN_LOCKS", value: 154)
!189 = !DIEnumerator(name: "_SC_REGEXP", value: 155)
!190 = !DIEnumerator(name: "_SC_REGEX_VERSION", value: 156)
!191 = !DIEnumerator(name: "_SC_SHELL", value: 157)
!192 = !DIEnumerator(name: "_SC_SIGNALS", value: 158)
!193 = !DIEnumerator(name: "_SC_SPAWN", value: 159)
!194 = !DIEnumerator(name: "_SC_SPORADIC_SERVER", value: 160)
!195 = !DIEnumerator(name: "_SC_THREAD_SPORADIC_SERVER", value: 161)
!196 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE", value: 162)
!197 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE_R", value: 163)
!198 = !DIEnumerator(name: "_SC_TIMEOUTS", value: 164)
!199 = !DIEnumerator(name: "_SC_TYPED_MEMORY_OBJECTS", value: 165)
!200 = !DIEnumerator(name: "_SC_USER_GROUPS", value: 166)
!201 = !DIEnumerator(name: "_SC_USER_GROUPS_R", value: 167)
!202 = !DIEnumerator(name: "_SC_2_PBS", value: 168)
!203 = !DIEnumerator(name: "_SC_2_PBS_ACCOUNTING", value: 169)
!204 = !DIEnumerator(name: "_SC_2_PBS_LOCATE", value: 170)
!205 = !DIEnumerator(name: "_SC_2_PBS_MESSAGE", value: 171)
!206 = !DIEnumerator(name: "_SC_2_PBS_TRACK", value: 172)
!207 = !DIEnumerator(name: "_SC_SYMLOOP_MAX", value: 173)
!208 = !DIEnumerator(name: "_SC_STREAMS", value: 174)
!209 = !DIEnumerator(name: "_SC_2_PBS_CHECKPOINT", value: 175)
!210 = !DIEnumerator(name: "_SC_V6_ILP32_OFF32", value: 176)
!211 = !DIEnumerator(name: "_SC_V6_ILP32_OFFBIG", value: 177)
!212 = !DIEnumerator(name: "_SC_V6_LP64_OFF64", value: 178)
!213 = !DIEnumerator(name: "_SC_V6_LPBIG_OFFBIG", value: 179)
!214 = !DIEnumerator(name: "_SC_HOST_NAME_MAX", value: 180)
!215 = !DIEnumerator(name: "_SC_TRACE", value: 181)
!216 = !DIEnumerator(name: "_SC_TRACE_EVENT_FILTER", value: 182)
!217 = !DIEnumerator(name: "_SC_TRACE_INHERIT", value: 183)
!218 = !DIEnumerator(name: "_SC_TRACE_LOG", value: 184)
!219 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_SIZE", value: 185)
!220 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_ASSOC", value: 186)
!221 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_LINESIZE", value: 187)
!222 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_SIZE", value: 188)
!223 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_ASSOC", value: 189)
!224 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_LINESIZE", value: 190)
!225 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_SIZE", value: 191)
!226 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_ASSOC", value: 192)
!227 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_LINESIZE", value: 193)
!228 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_SIZE", value: 194)
!229 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_ASSOC", value: 195)
!230 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_LINESIZE", value: 196)
!231 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_SIZE", value: 197)
!232 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_ASSOC", value: 198)
!233 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_LINESIZE", value: 199)
!234 = !DIEnumerator(name: "_SC_IPV6", value: 235)
!235 = !DIEnumerator(name: "_SC_RAW_SOCKETS", value: 236)
!236 = !DIEnumerator(name: "_SC_V7_ILP32_OFF32", value: 237)
!237 = !DIEnumerator(name: "_SC_V7_ILP32_OFFBIG", value: 238)
!238 = !DIEnumerator(name: "_SC_V7_LP64_OFF64", value: 239)
!239 = !DIEnumerator(name: "_SC_V7_LPBIG_OFFBIG", value: 240)
!240 = !DIEnumerator(name: "_SC_SS_REPL_MAX", value: 241)
!241 = !DIEnumerator(name: "_SC_TRACE_EVENT_NAME_MAX", value: 242)
!242 = !DIEnumerator(name: "_SC_TRACE_NAME_MAX", value: 243)
!243 = !DIEnumerator(name: "_SC_TRACE_SYS_MAX", value: 244)
!244 = !DIEnumerator(name: "_SC_TRACE_USER_EVENT_MAX", value: 245)
!245 = !DIEnumerator(name: "_SC_XOPEN_STREAMS", value: 246)
!246 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_INHERIT", value: 247)
!247 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_PROTECT", value: 248)
!248 = !{!249}
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !250, line: 216, baseType: !251)
!250 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!251 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!252 = !{!253, !256, !257, !265, !266, !267, !268, !269, !270, !271}
!253 = distinct !DIGlobalVariable(name: "realtime_priority_set", scope: !0, file: !254, line: 42, type: !255, isLocal: true, isDefinition: true, variable: i8* @realtime_priority_set)
!254 = !DIFile(filename: "process.c", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!255 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!256 = distinct !DIGlobalVariable(name: "rlimit_rt_set", scope: !0, file: !254, line: 45, type: !255, isLocal: true, isDefinition: true, variable: i8* @rlimit_rt_set)
!257 = distinct !DIGlobalVariable(name: "orig_rlimit_rt", scope: !0, file: !254, line: 46, type: !258, isLocal: true, isDefinition: true, variable: %struct.rlimit* @orig_rlimit_rt)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !4, line: 139, size: 128, align: 64, elements: !259)
!259 = !{!260, !264}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !258, file: !4, line: 142, baseType: !261, size: 64, align: 64)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "rlim_t", file: !4, line: 131, baseType: !262)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "__rlim_t", file: !263, line: 136, baseType: !251)
!263 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!264 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !258, file: !4, line: 144, baseType: !261, size: 64, align: 64, offset: 64)
!265 = distinct !DIGlobalVariable(name: "priority_set", scope: !0, file: !254, line: 50, type: !255, isLocal: true, isDefinition: true, variable: i8* @priority_set)
!266 = distinct !DIGlobalVariable(name: "process_locked_in_memory", scope: !0, file: !254, line: 52, type: !255, isLocal: true, isDefinition: true, variable: i8* @process_locked_in_memory)
!267 = distinct !DIGlobalVariable(name: "nofile", scope: !0, file: !254, line: 55, type: !258, isLocal: true, isDefinition: true, variable: %struct.rlimit* @nofile)
!268 = distinct !DIGlobalVariable(name: "rlimit_nofile_set", scope: !0, file: !254, line: 56, type: !255, isLocal: false, isDefinition: true, variable: i8* @rlimit_nofile_set)
!269 = distinct !DIGlobalVariable(name: "core", scope: !0, file: !254, line: 57, type: !258, isLocal: true, isDefinition: true, variable: %struct.rlimit* @core)
!270 = distinct !DIGlobalVariable(name: "rlimit_core_set", scope: !0, file: !254, line: 58, type: !255, isLocal: false, isDefinition: true, variable: i8* @rlimit_core_set)
!271 = distinct !DIGlobalVariable(name: "orig_priority", scope: !0, file: !254, line: 51, type: !272, isLocal: true, isDefinition: true, variable: i32* @orig_priority)
!272 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!273 = !{i32 2, !"Dwarf Version", i32 4}
!274 = !{i32 2, !"Debug Info Version", i32 3}
!275 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!276 = distinct !DISubprogram(name: "set_process_priorities", scope: !254, file: !254, line: 105, type: !277, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !279)
!277 = !DISubroutineType(types: !278)
!278 = !{null, !272, !272, !272, !272}
!279 = !{}
!280 = !DILocalVariable(name: "realtime_priority", arg: 1, scope: !276, file: !254, line: 107, type: !272)
!281 = !DIExpression()
!282 = !DILocation(line: 107, column: 14, scope: !276)
!283 = !DILocalVariable(name: "rlimit_rt", arg: 2, scope: !276, file: !254, line: 109, type: !272)
!284 = !DILocation(line: 109, column: 14, scope: !276)
!285 = !DILocalVariable(name: "process_priority", arg: 3, scope: !276, file: !254, line: 112, type: !272)
!286 = !DILocation(line: 112, column: 14, scope: !276)
!287 = !DILocalVariable(name: "no_swap_stack_size", arg: 4, scope: !276, file: !254, line: 112, type: !272)
!288 = !DILocation(line: 112, column: 36, scope: !276)
!289 = !DILocation(line: 115, column: 6, scope: !290)
!290 = distinct !DILexicalBlock(scope: !276, file: !254, line: 115, column: 6)
!291 = !DILocation(line: 115, column: 6, scope: !276)
!292 = !DILocalVariable(name: "sp", scope: !293, file: !254, line: 117, type: !294)
!293 = distinct !DILexicalBlock(scope: !290, file: !254, line: 115, column: 25)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_param", file: !295, line: 72, size: 32, align: 32, elements: !296)
!295 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sched.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!296 = !{!297}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "__sched_priority", scope: !294, file: !295, line: 74, baseType: !272, size: 32, align: 32)
!298 = !DILocation(line: 117, column: 22, scope: !293)
!299 = !DILocation(line: 117, column: 27, scope: !293)
!300 = !DILocation(line: 118, column: 21, scope: !293)
!301 = !DILocation(line: 121, column: 26, scope: !302)
!302 = distinct !DILexicalBlock(scope: !293, file: !254, line: 121, column: 7)
!303 = !DILocation(line: 121, column: 7, scope: !304)
!304 = !DILexicalBlockFile(scope: !302, file: !254, discriminator: 1)
!305 = !DILocation(line: 121, column: 7, scope: !302)
!306 = !DILocation(line: 121, column: 7, scope: !293)
!307 = !DILocation(line: 122, column: 4, scope: !302)
!308 = !DILocation(line: 124, column: 12, scope: !309)
!309 = distinct !DILexicalBlock(scope: !302, file: !254, line: 124, column: 12)
!310 = !DILocation(line: 124, column: 12, scope: !302)
!311 = !DILocalVariable(name: "rlim", scope: !312, file: !254, line: 126, type: !258)
!312 = distinct !DILexicalBlock(scope: !309, file: !254, line: 125, column: 3)
!313 = !DILocation(line: 126, column: 18, scope: !312)
!314 = !DILocation(line: 128, column: 4, scope: !312)
!315 = !DILocation(line: 130, column: 20, scope: !312)
!316 = !DILocation(line: 130, column: 30, scope: !312)
!317 = !DILocation(line: 130, column: 9, scope: !312)
!318 = !DILocation(line: 130, column: 18, scope: !312)
!319 = !DILocation(line: 131, column: 20, scope: !312)
!320 = !DILocation(line: 131, column: 9, scope: !312)
!321 = !DILocation(line: 131, column: 18, scope: !312)
!322 = !DILocation(line: 132, column: 8, scope: !323)
!323 = distinct !DILexicalBlock(scope: !312, file: !254, line: 132, column: 8)
!324 = !DILocation(line: 132, column: 8, scope: !312)
!325 = !DILocation(line: 133, column: 5, scope: !323)
!326 = !DILocation(line: 134, column: 3, scope: !312)
!327 = !DILocation(line: 136, column: 2, scope: !293)
!328 = !DILocation(line: 139, column: 11, scope: !329)
!329 = distinct !DILexicalBlock(scope: !290, file: !254, line: 139, column: 11)
!330 = !DILocation(line: 139, column: 11, scope: !290)
!331 = !DILocation(line: 140, column: 24, scope: !329)
!332 = !DILocation(line: 140, column: 3, scope: !329)
!333 = !DILocation(line: 143, column: 6, scope: !334)
!334 = distinct !DILexicalBlock(scope: !276, file: !254, line: 143, column: 6)
!335 = !DILocation(line: 143, column: 6, scope: !276)
!336 = !DILocation(line: 144, column: 25, scope: !334)
!337 = !DILocation(line: 144, column: 3, scope: !334)
!338 = !DILocation(line: 145, column: 1, scope: !276)
!339 = distinct !DISubprogram(name: "set_process_priority", scope: !254, file: !254, line: 79, type: !340, isLocal: true, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !279)
!340 = !DISubroutineType(types: !341)
!341 = !{null, !272}
!342 = !DILocalVariable(name: "priority", arg: 1, scope: !339, file: !254, line: 79, type: !272)
!343 = !DILocation(line: 79, column: 26, scope: !339)
!344 = !DILocation(line: 81, column: 18, scope: !339)
!345 = !DILocation(line: 81, column: 16, scope: !339)
!346 = !DILocation(line: 83, column: 3, scope: !339)
!347 = !DILocation(line: 83, column: 7, scope: !339)
!348 = !DILocation(line: 84, column: 34, scope: !349)
!349 = distinct !DILexicalBlock(scope: !339, file: !254, line: 84, column: 6)
!350 = !DILocation(line: 84, column: 6, scope: !349)
!351 = !DILocation(line: 84, column: 44, scope: !349)
!352 = !DILocation(line: 84, column: 50, scope: !349)
!353 = !DILocation(line: 84, column: 55, scope: !354)
!354 = !DILexicalBlockFile(scope: !349, file: !254, discriminator: 1)
!355 = !DILocation(line: 84, column: 54, scope: !354)
!356 = !DILocation(line: 84, column: 53, scope: !354)
!357 = !DILocation(line: 84, column: 6, scope: !354)
!358 = !DILocation(line: 85, column: 69, scope: !359)
!359 = distinct !DILexicalBlock(scope: !349, file: !254, line: 84, column: 60)
!360 = !DILocation(line: 85, column: 90, scope: !359)
!361 = !DILocation(line: 85, column: 89, scope: !359)
!362 = !DILocation(line: 85, column: 79, scope: !363)
!363 = !DILexicalBlockFile(scope: !359, file: !254, discriminator: 1)
!364 = !DILocation(line: 85, column: 3, scope: !365)
!365 = !DILexicalBlockFile(scope: !359, file: !254, discriminator: 2)
!366 = !DILocation(line: 86, column: 3, scope: !359)
!367 = !DILocation(line: 89, column: 15, scope: !339)
!368 = !DILocation(line: 90, column: 1, scope: !339)
!369 = !DILocation(line: 90, column: 1, scope: !370)
!370 = !DILexicalBlockFile(scope: !339, file: !254, discriminator: 1)
!371 = distinct !DISubprogram(name: "set_process_dont_swap", scope: !254, file: !254, line: 61, type: !372, isLocal: true, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !279)
!372 = !DISubroutineType(types: !373)
!373 = !{null, !249}
!374 = !DILocalVariable(name: "stack_reserve", arg: 1, scope: !371, file: !254, line: 61, type: !249)
!375 = !DILocation(line: 61, column: 30, scope: !371)
!376 = !DILocalVariable(name: "pagesize", scope: !371, file: !254, line: 64, type: !249)
!377 = !DILocation(line: 64, column: 9, scope: !371)
!378 = !DILocation(line: 64, column: 28, scope: !371)
!379 = !DILocation(line: 65, column: 13, scope: !371)
!380 = !DILocation(line: 65, column: 2, scope: !371)
!381 = !DILocalVariable(name: "stack", scope: !371, file: !254, line: 65, type: !382)
!382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !383, align: 8, elements: !384)
!383 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!384 = !{!385}
!385 = !DISubrange(count: -1)
!386 = !DIExpression(DW_OP_deref)
!387 = !DILocation(line: 65, column: 7, scope: !371)
!388 = !DILocalVariable(name: "i", scope: !371, file: !254, line: 66, type: !249)
!389 = !DILocation(line: 66, column: 9, scope: !371)
!390 = !DILocation(line: 68, column: 2, scope: !371)
!391 = !DILocation(line: 68, column: 11, scope: !371)
!392 = !DILocation(line: 69, column: 9, scope: !393)
!393 = distinct !DILexicalBlock(scope: !371, file: !254, line: 69, column: 2)
!394 = !DILocation(line: 69, column: 7, scope: !393)
!395 = !DILocation(line: 69, column: 14, scope: !396)
!396 = !DILexicalBlockFile(scope: !397, file: !254, discriminator: 1)
!397 = distinct !DILexicalBlock(scope: !393, file: !254, line: 69, column: 2)
!398 = !DILocation(line: 69, column: 18, scope: !396)
!399 = !DILocation(line: 69, column: 16, scope: !396)
!400 = !DILocation(line: 69, column: 2, scope: !396)
!401 = !DILocation(line: 70, column: 14, scope: !397)
!402 = !DILocation(line: 70, column: 9, scope: !397)
!403 = !DILocation(line: 70, column: 3, scope: !397)
!404 = !DILocation(line: 70, column: 12, scope: !397)
!405 = !DILocation(line: 69, column: 38, scope: !406)
!406 = !DILexicalBlockFile(scope: !397, file: !254, discriminator: 2)
!407 = !DILocation(line: 69, column: 35, scope: !406)
!408 = !DILocation(line: 69, column: 2, scope: !406)
!409 = distinct !{!409, !410}
!410 = !DILocation(line: 69, column: 2, scope: !371)
!411 = !DILocation(line: 72, column: 6, scope: !412)
!412 = distinct !DILexicalBlock(scope: !371, file: !254, line: 72, column: 6)
!413 = !DILocation(line: 72, column: 26, scope: !412)
!414 = !DILocation(line: 72, column: 6, scope: !371)
!415 = !DILocation(line: 73, column: 76, scope: !412)
!416 = !DILocation(line: 73, column: 75, scope: !412)
!417 = !DILocation(line: 73, column: 65, scope: !418)
!418 = !DILexicalBlockFile(scope: !412, file: !254, discriminator: 1)
!419 = !DILocation(line: 73, column: 3, scope: !420)
!420 = !DILexicalBlockFile(scope: !412, file: !254, discriminator: 2)
!421 = !DILocation(line: 73, column: 3, scope: !412)
!422 = !DILocation(line: 75, column: 28, scope: !412)
!423 = !DILocation(line: 76, column: 1, scope: !371)
!424 = distinct !DISubprogram(name: "reset_process_priorities", scope: !254, file: !254, line: 148, type: !425, isLocal: false, isDefinition: true, scopeLine: 149, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !279)
!425 = !DISubroutineType(types: !426)
!426 = !{null}
!427 = !DILocation(line: 151, column: 6, scope: !428)
!428 = distinct !DILexicalBlock(scope: !424, file: !254, line: 151, column: 6)
!429 = !DILocation(line: 151, column: 6, scope: !424)
!430 = !DILocalVariable(name: "sp", scope: !431, file: !254, line: 153, type: !294)
!431 = distinct !DILexicalBlock(scope: !428, file: !254, line: 151, column: 29)
!432 = !DILocation(line: 153, column: 22, scope: !431)
!433 = !DILocation(line: 157, column: 26, scope: !434)
!434 = distinct !DILexicalBlock(scope: !431, file: !254, line: 157, column: 7)
!435 = !DILocation(line: 157, column: 7, scope: !436)
!436 = !DILexicalBlockFile(scope: !434, file: !254, discriminator: 1)
!437 = !DILocation(line: 157, column: 7, scope: !434)
!438 = !DILocation(line: 157, column: 7, scope: !431)
!439 = !DILocation(line: 158, column: 4, scope: !434)
!440 = !DILocation(line: 160, column: 26, scope: !441)
!441 = distinct !DILexicalBlock(scope: !434, file: !254, line: 159, column: 8)
!442 = !DILocation(line: 162, column: 8, scope: !443)
!443 = distinct !DILexicalBlock(scope: !441, file: !254, line: 162, column: 8)
!444 = !DILocation(line: 162, column: 8, scope: !441)
!445 = !DILocation(line: 164, column: 9, scope: !446)
!446 = distinct !DILexicalBlock(scope: !447, file: !254, line: 164, column: 9)
!447 = distinct !DILexicalBlock(scope: !443, file: !254, line: 163, column: 4)
!448 = !DILocation(line: 164, column: 9, scope: !447)
!449 = !DILocation(line: 165, column: 6, scope: !446)
!450 = !DILocation(line: 167, column: 20, scope: !446)
!451 = !DILocation(line: 169, column: 4, scope: !447)
!452 = !DILocation(line: 172, column: 2, scope: !431)
!453 = !DILocation(line: 174, column: 6, scope: !454)
!454 = distinct !DILexicalBlock(scope: !424, file: !254, line: 174, column: 6)
!455 = !DILocation(line: 174, column: 6, scope: !424)
!456 = !DILocation(line: 175, column: 3, scope: !454)
!457 = !DILocation(line: 177, column: 6, scope: !458)
!458 = distinct !DILexicalBlock(scope: !424, file: !254, line: 177, column: 6)
!459 = !DILocation(line: 177, column: 6, scope: !424)
!460 = !DILocation(line: 178, column: 3, scope: !461)
!461 = distinct !DILexicalBlock(scope: !458, file: !254, line: 177, column: 32)
!462 = !DILocation(line: 179, column: 28, scope: !461)
!463 = !DILocation(line: 180, column: 2, scope: !461)
!464 = !DILocation(line: 182, column: 6, scope: !465)
!465 = distinct !DILexicalBlock(scope: !424, file: !254, line: 182, column: 6)
!466 = !DILocation(line: 182, column: 6, scope: !424)
!467 = !DILocation(line: 183, column: 3, scope: !468)
!468 = distinct !DILexicalBlock(scope: !465, file: !254, line: 182, column: 25)
!469 = !DILocation(line: 184, column: 21, scope: !468)
!470 = !DILocation(line: 185, column: 2, scope: !468)
!471 = !DILocation(line: 186, column: 6, scope: !472)
!472 = distinct !DILexicalBlock(scope: !424, file: !254, line: 186, column: 6)
!473 = !DILocation(line: 186, column: 6, scope: !424)
!474 = !DILocation(line: 187, column: 3, scope: !475)
!475 = distinct !DILexicalBlock(scope: !472, file: !254, line: 186, column: 23)
!476 = !DILocation(line: 188, column: 19, scope: !475)
!477 = !DILocation(line: 189, column: 2, scope: !475)
!478 = !DILocation(line: 190, column: 1, scope: !424)
!479 = distinct !DISubprogram(name: "reset_process_priority", scope: !254, file: !254, line: 93, type: !425, isLocal: true, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !279)
!480 = !DILocation(line: 95, column: 3, scope: !479)
!481 = !DILocation(line: 95, column: 7, scope: !479)
!482 = !DILocation(line: 96, column: 34, scope: !483)
!483 = distinct !DILexicalBlock(scope: !479, file: !254, line: 96, column: 6)
!484 = !DILocation(line: 96, column: 6, scope: !483)
!485 = !DILocation(line: 96, column: 49, scope: !483)
!486 = !DILocation(line: 96, column: 55, scope: !483)
!487 = !DILocation(line: 96, column: 60, scope: !488)
!488 = !DILexicalBlockFile(scope: !483, file: !254, discriminator: 1)
!489 = !DILocation(line: 96, column: 59, scope: !488)
!490 = !DILocation(line: 96, column: 58, scope: !488)
!491 = !DILocation(line: 96, column: 6, scope: !488)
!492 = !DILocation(line: 97, column: 3, scope: !493)
!493 = distinct !DILexicalBlock(scope: !483, file: !254, line: 96, column: 65)
!494 = !DILocation(line: 98, column: 3, scope: !493)
!495 = !DILocation(line: 101, column: 15, scope: !479)
!496 = !DILocation(line: 102, column: 1, scope: !479)
!497 = !DILocation(line: 102, column: 1, scope: !498)
!498 = !DILexicalBlockFile(scope: !479, file: !254, discriminator: 1)
!499 = distinct !DISubprogram(name: "set_child_rlimit", scope: !254, file: !254, line: 193, type: !500, isLocal: false, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !279)
!500 = !DISubroutineType(types: !501)
!501 = !{null, !272, !502}
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64, align: 64)
!503 = !DILocalVariable(name: "resource", arg: 1, scope: !499, file: !254, line: 193, type: !272)
!504 = !DILocation(line: 193, column: 22, scope: !499)
!505 = !DILocalVariable(name: "rlim", arg: 2, scope: !499, file: !254, line: 193, type: !502)
!506 = !DILocation(line: 193, column: 47, scope: !499)
!507 = !DILocation(line: 195, column: 6, scope: !508)
!508 = distinct !DILexicalBlock(scope: !499, file: !254, line: 195, column: 6)
!509 = !DILocation(line: 195, column: 15, scope: !508)
!510 = !DILocation(line: 195, column: 6, scope: !499)
!511 = !DILocation(line: 196, column: 13, scope: !512)
!512 = distinct !DILexicalBlock(scope: !508, file: !254, line: 195, column: 32)
!513 = !DILocation(line: 196, column: 12, scope: !512)
!514 = !DILocation(line: 197, column: 21, scope: !512)
!515 = !DILocation(line: 198, column: 2, scope: !512)
!516 = !DILocation(line: 199, column: 11, scope: !517)
!517 = distinct !DILexicalBlock(scope: !508, file: !254, line: 199, column: 11)
!518 = !DILocation(line: 199, column: 20, scope: !517)
!519 = !DILocation(line: 199, column: 11, scope: !508)
!520 = !DILocation(line: 200, column: 11, scope: !521)
!521 = distinct !DILexicalBlock(scope: !517, file: !254, line: 199, column: 35)
!522 = !DILocation(line: 200, column: 10, scope: !521)
!523 = !DILocation(line: 201, column: 19, scope: !521)
!524 = !DILocation(line: 202, column: 2, scope: !521)
!525 = !DILocation(line: 204, column: 54, scope: !517)
!526 = !DILocation(line: 204, column: 3, scope: !517)
!527 = !DILocation(line: 205, column: 1, scope: !499)
!528 = distinct !DISubprogram(name: "local_fork", scope: !254, file: !254, line: 208, type: !529, isLocal: false, isDefinition: true, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !279)
!529 = !DISubroutineType(types: !530)
!530 = !{!531}
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !532, line: 263, baseType: !533)
!532 = !DIFile(filename: "/usr/include/unistd.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !263, line: 133, baseType: !272)
!534 = !DILocalVariable(name: "pid", scope: !528, file: !254, line: 210, type: !531)
!535 = !DILocation(line: 210, column: 8, scope: !528)
!536 = !DILocation(line: 212, column: 8, scope: !528)
!537 = !DILocation(line: 212, column: 6, scope: !528)
!538 = !DILocation(line: 215, column: 6, scope: !539)
!539 = distinct !DILexicalBlock(scope: !528, file: !254, line: 215, column: 6)
!540 = !DILocation(line: 215, column: 10, scope: !539)
!541 = !DILocation(line: 215, column: 6, scope: !528)
!542 = !DILocation(line: 216, column: 3, scope: !539)
!543 = !DILocation(line: 218, column: 9, scope: !528)
!544 = !DILocation(line: 218, column: 2, scope: !528)
