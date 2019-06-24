; ModuleID = './[inter]lib--signals.o.i'
source_filename = "./[inter]lib--signals.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__sigset_t = type { [16 x i64] }
%struct._thread = type { i64, i32, %struct._thread_master*, i32 (%struct._thread*)*, i8*, %struct.timeval, %union.anon.8, %struct._thread_event*, %union.anon.10 }
%struct._thread_master = type { %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.list_head, %struct.list_head, %struct.list_head, %struct._list*, %struct.rb_root, %struct.epoll_event*, %struct._thread_event*, i32, i32, i32, i32, %struct._thread*, i64, i64, i8 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct._list = type { %struct._element*, %struct._element*, i32, void (i8*)*, void (%struct._IO_FILE*, i8*)* }
%struct._element = type { %struct._element*, %struct._element*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.rb_root = type { %struct.rb_node* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.epoll_event = type opaque
%struct.timeval = type { i64, i64 }
%union.anon.8 = type { %struct.anon.9 }
%struct.anon.9 = type { i32, i32 }
%struct._thread_event = type { %struct._thread*, %struct._thread*, i64, i32, %struct.rb_node }
%union.anon.10 = type { %struct.rb_node }
%struct.sigaction = type { %union.anon, %struct.__sigset_t, i32, void ()* }
%union.anon = type { void (i32)* }
%struct.signalfd_siginfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, [48 x i8] }

@.str = private unnamed_addr constant [5 x i8] c"STOP\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"RELOAD\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"DATA\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"STATS\00", align 1
@dfl_sig = internal global %struct.__sigset_t zeroinitializer, align 8
@signal_fd_set = internal global %struct.__sigset_t zeroinitializer, align 8
@signal_fd = internal global i32 -1, align 4
@.str.4 = private unnamed_addr constant [55 x i8] c"BUG - signal_fd update failed - %d (%s), please report\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"sigaction failed for signalfd\00", align 1
@signal_handler_func = internal global [24 x void (i8*, i32)*] zeroinitializer, align 16
@signal_v = internal global [24 x i8*] zeroinitializer, align 16
@parent_sig = internal global %struct.__sigset_t zeroinitializer, align 8
@signal_thread = internal global %struct._thread* null, align 8
@prog_type = external global i32, align 4
@master = external global %struct._thread_master*, align 8
@.str.6 = private unnamed_addr constant [53 x i8] c"BUG - signal_fd init failed - %d (%s), please report\00", align 1
@.str.7 = private unnamed_addr constant [80 x i8] c"%s process has used too much CPU time, %s_rlimit_rtime may need to be increased\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"VRRP\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"Checker\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"vrrp\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"checker\00", align 1

; Function Attrs: nounwind uwtable
define i32 @get_signum(i8*) #0 !dbg !252 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !258, metadata !259), !dbg !260
  %4 = load i8*, i8** %3, align 8, !dbg !261
  %5 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)) #8, !dbg !263
  %6 = icmp ne i32 %5, 0, !dbg !263
  br i1 %6, label %8, label %7, !dbg !264

; <label>:7:                                      ; preds = %1
  store i32 15, i32* %2, align 4, !dbg !265
  br label %27, !dbg !265

; <label>:8:                                      ; preds = %1
  %9 = load i8*, i8** %3, align 8, !dbg !266
  %10 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0)) #8, !dbg !268
  %11 = icmp ne i32 %10, 0, !dbg !268
  br i1 %11, label %13, label %12, !dbg !269

; <label>:12:                                     ; preds = %8
  store i32 1, i32* %2, align 4, !dbg !270
  br label %27, !dbg !270

; <label>:13:                                     ; preds = %8
  %14 = load i8*, i8** %3, align 8, !dbg !271
  %15 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0)) #8, !dbg !273
  %16 = icmp ne i32 %15, 0, !dbg !273
  br i1 %16, label %18, label %17, !dbg !274

; <label>:17:                                     ; preds = %13
  store i32 10, i32* %2, align 4, !dbg !275
  br label %27, !dbg !275

; <label>:18:                                     ; preds = %13
  %19 = load i8*, i8** %3, align 8, !dbg !276
  %20 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)) #8, !dbg !278
  %21 = icmp ne i32 %20, 0, !dbg !278
  br i1 %21, label %23, label %22, !dbg !279

; <label>:22:                                     ; preds = %18
  store i32 12, i32* %2, align 4, !dbg !280
  br label %27, !dbg !280

; <label>:23:                                     ; preds = %18
  br label %24

; <label>:24:                                     ; preds = %23
  br label %25

; <label>:25:                                     ; preds = %24
  br label %26

; <label>:26:                                     ; preds = %25
  store i32 -1, i32* %2, align 4, !dbg !281
  br label %27, !dbg !281

; <label>:27:                                     ; preds = %26, %22, %17, %12, %7
  %28 = load i32, i32* %2, align 4, !dbg !282
  ret i32 %28, !dbg !282
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @signal_set(i32, void (i8*, i32)*, i8*) #0 !dbg !283 {
  %4 = alloca i32, align 4
  %5 = alloca void (i8*, i32)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.__sigset_t, align 8
  %9 = alloca %struct.sigaction, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !286, metadata !259), !dbg !287
  store void (i8*, i32)* %1, void (i8*, i32)** %5, align 8
  call void @llvm.dbg.declare(metadata void (i8*, i32)** %5, metadata !288, metadata !259), !dbg !289
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !290, metadata !259), !dbg !291
  call void @llvm.dbg.declare(metadata i32* %7, metadata !292, metadata !259), !dbg !293
  call void @llvm.dbg.declare(metadata %struct.__sigset_t* %8, metadata !294, metadata !259), !dbg !295
  call void @llvm.dbg.declare(metadata %struct.sigaction* %9, metadata !296, metadata !259), !dbg !384
  %10 = load void (i8*, i32)*, void (i8*, i32)** %5, align 8, !dbg !385
  %11 = icmp eq void (i8*, i32)* %10, null, !dbg !387
  br i1 %11, label %12, label %15, !dbg !388

; <label>:12:                                     ; preds = %3
  %13 = load i32, i32* %4, align 4, !dbg !389
  %14 = call i32 @sigaddset(%struct.__sigset_t* @dfl_sig, i32 %13) #9, !dbg !390
  br label %18, !dbg !390

; <label>:15:                                     ; preds = %3
  %16 = load i32, i32* %4, align 4, !dbg !391
  %17 = call i32 @sigdelset(%struct.__sigset_t* @dfl_sig, i32 %16) #9, !dbg !392
  br label %18

; <label>:18:                                     ; preds = %15, %12
  %19 = load void (i8*, i32)*, void (i8*, i32)** %5, align 8, !dbg !393
  %20 = icmp eq void (i8*, i32)* %19, inttoptr (i64 1 to void (i8*, i32)*), !dbg !395
  br i1 %20, label %24, label %21, !dbg !396

; <label>:21:                                     ; preds = %18
  %22 = load void (i8*, i32)*, void (i8*, i32)** %5, align 8, !dbg !397
  %23 = icmp eq void (i8*, i32)* %22, null, !dbg !399
  br i1 %23, label %24, label %25, !dbg !400

; <label>:24:                                     ; preds = %21, %18
  store void (i8*, i32)* null, void (i8*, i32)** %5, align 8, !dbg !401
  store i8* null, i8** %6, align 8, !dbg !403
  br label %25, !dbg !404

; <label>:25:                                     ; preds = %24, %21
  %26 = call i32 @sigemptyset(%struct.__sigset_t* %8) #9, !dbg !405
  %27 = load i32, i32* %4, align 4, !dbg !406
  %28 = call i32 @sigaddset(%struct.__sigset_t* %8, i32 %27) #9, !dbg !407
  %29 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %9, i32 0, i32 1, !dbg !408
  %30 = call i32 @sigemptyset(%struct.__sigset_t* %29) #9, !dbg !409
  %31 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %9, i32 0, i32 2, !dbg !410
  store i32 0, i32* %31, align 8, !dbg !411
  %32 = load void (i8*, i32)*, void (i8*, i32)** %5, align 8, !dbg !412
  %33 = icmp ne void (i8*, i32)* %32, null, !dbg !412
  br i1 %33, label %39, label %34, !dbg !414

; <label>:34:                                     ; preds = %25
  %35 = load i32, i32* %4, align 4, !dbg !415
  %36 = call i32 @sigdelset(%struct.__sigset_t* @signal_fd_set, i32 %35) #9, !dbg !417
  %37 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %9, i32 0, i32 0, !dbg !418
  %38 = bitcast %union.anon* %37 to void (i32)**, !dbg !419
  store void (i32)* inttoptr (i64 1 to void (i32)*), void (i32)** %38, align 8, !dbg !420
  br label %45, !dbg !421

; <label>:39:                                     ; preds = %25
  %40 = load i32, i32* %4, align 4, !dbg !422
  %41 = call i32 @sigaddset(%struct.__sigset_t* @signal_fd_set, i32 %40) #9, !dbg !424
  %42 = call i32 @sigmask_func(i32 0, %struct.__sigset_t* %8, %struct.__sigset_t* null), !dbg !425
  %43 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %9, i32 0, i32 0, !dbg !426
  %44 = bitcast %union.anon* %43 to void (i32)**, !dbg !427
  store void (i32)* null, void (i32)** %44, align 8, !dbg !428
  br label %45

; <label>:45:                                     ; preds = %39, %34
  %46 = load void (i8*, i32)*, void (i8*, i32)** %5, align 8, !dbg !429
  %47 = icmp ne void (i8*, i32)* %46, null, !dbg !429
  br i1 %47, label %51, label %48, !dbg !431

; <label>:48:                                     ; preds = %45
  %49 = load i32, i32* @signal_fd, align 4, !dbg !432
  %50 = icmp ne i32 %49, -1, !dbg !434
  br i1 %50, label %51, label %63, !dbg !435

; <label>:51:                                     ; preds = %48, %45
  %52 = load i32, i32* @signal_fd, align 4, !dbg !436
  %53 = call i32 @signalfd(i32 %52, %struct.__sigset_t* @signal_fd_set, i32 0) #9, !dbg !438
  store i32 %53, i32* %7, align 4, !dbg !439
  %54 = load i32, i32* %7, align 4, !dbg !440
  %55 = icmp eq i32 %54, -1, !dbg !442
  br i1 %55, label %56, label %62, !dbg !443

; <label>:56:                                     ; preds = %51
  %57 = call i32* @__errno_location() #1, !dbg !444
  %58 = load i32, i32* %57, align 4, !dbg !445
  %59 = call i32* @__errno_location() #1, !dbg !446
  %60 = load i32, i32* %59, align 4, !dbg !448
  %61 = call i8* @strerror(i32 %60) #9, !dbg !449
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i32 0, i32 0), i32 %58, i8* %61), !dbg !451
  br label %62, !dbg !453

; <label>:62:                                     ; preds = %56, %51
  br label %63, !dbg !454

; <label>:63:                                     ; preds = %62, %48
  %64 = load i32, i32* %4, align 4, !dbg !455
  %65 = call i32 @sigaction(i32 %64, %struct.sigaction* %9, %struct.sigaction* null) #9, !dbg !457
  %66 = icmp ne i32 %65, 0, !dbg !457
  br i1 %66, label %67, label %68, !dbg !458

; <label>:67:                                     ; preds = %63
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i32 0, i32 0)), !dbg !459
  br label %68, !dbg !459

; <label>:68:                                     ; preds = %67, %63
  %69 = load void (i8*, i32)*, void (i8*, i32)** %5, align 8, !dbg !460
  %70 = icmp ne void (i8*, i32)* %69, null, !dbg !460
  br i1 %70, label %73, label %71, !dbg !462

; <label>:71:                                     ; preds = %68
  %72 = call i32 @sigmask_func(i32 1, %struct.__sigset_t* %8, %struct.__sigset_t* null), !dbg !463
  br label %73, !dbg !463

; <label>:73:                                     ; preds = %71, %68
  %74 = load void (i8*, i32)*, void (i8*, i32)** %5, align 8, !dbg !464
  %75 = load i32, i32* %4, align 4, !dbg !465
  %76 = sub nsw i32 %75, 1, !dbg !466
  %77 = sext i32 %76 to i64, !dbg !467
  %78 = getelementptr inbounds [24 x void (i8*, i32)*], [24 x void (i8*, i32)*]* @signal_handler_func, i64 0, i64 %77, !dbg !467
  store void (i8*, i32)* %74, void (i8*, i32)** %78, align 8, !dbg !468
  %79 = load i8*, i8** %6, align 8, !dbg !469
  %80 = load i32, i32* %4, align 4, !dbg !470
  %81 = sub nsw i32 %80, 1, !dbg !471
  %82 = sext i32 %81 to i64, !dbg !472
  %83 = getelementptr inbounds [24 x i8*], [24 x i8*]* @signal_v, i64 0, i64 %82, !dbg !472
  store i8* %79, i8** %83, align 8, !dbg !473
  ret void, !dbg !474
}

; Function Attrs: nounwind
declare i32 @sigaddset(%struct.__sigset_t*, i32) #3

; Function Attrs: nounwind
declare i32 @sigdelset(%struct.__sigset_t*, i32) #3

; Function Attrs: nounwind
declare i32 @sigemptyset(%struct.__sigset_t*) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @sigmask_func(i32, %struct.__sigset_t*, %struct.__sigset_t*) #4 !dbg !475 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.__sigset_t*, align 8
  %6 = alloca %struct.__sigset_t*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !482, metadata !259), !dbg !483
  store %struct.__sigset_t* %1, %struct.__sigset_t** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.__sigset_t** %5, metadata !484, metadata !259), !dbg !485
  store %struct.__sigset_t* %2, %struct.__sigset_t** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.__sigset_t** %6, metadata !486, metadata !259), !dbg !487
  %7 = load i32, i32* %4, align 4, !dbg !488
  %8 = load %struct.__sigset_t*, %struct.__sigset_t** %5, align 8, !dbg !489
  %9 = load %struct.__sigset_t*, %struct.__sigset_t** %6, align 8, !dbg !490
  %10 = call i32 @sigprocmask(i32 %7, %struct.__sigset_t* %8, %struct.__sigset_t* %9) #9, !dbg !491
  ret i32 %10, !dbg !492
}

; Function Attrs: nounwind
declare i32 @signalfd(i32, %struct.__sigset_t*, i32) #3

declare void @log_message(i32, i8*, ...) #5

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

; Function Attrs: nounwind
declare i8* @strerror(i32) #3

; Function Attrs: nounwind
declare i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) #3

; Function Attrs: nounwind uwtable
define void @signal_ignore(i32) #0 !dbg !493 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !494, metadata !259), !dbg !495
  %3 = load i32, i32* %2, align 4, !dbg !496
  call void @signal_set(i32 %3, void (i8*, i32)* inttoptr (i64 1 to void (i8*, i32)*), i8* null), !dbg !497
  %4 = load i32, i32* %2, align 4, !dbg !498
  %5 = call i32 @sigdelset(%struct.__sigset_t* @parent_sig, i32 %4) #9, !dbg !499
  ret void, !dbg !500
}

; Function Attrs: nounwind uwtable
define i32 @signal_rfd() #0 !dbg !501 {
  %1 = load i32, i32* @signal_fd, align 4, !dbg !504
  ret i32 %1, !dbg !505
}

; Function Attrs: nounwind uwtable
define void @add_signal_read_thread(%struct._thread_master*) #0 !dbg !506 {
  %2 = alloca %struct._thread_master*, align 8
  store %struct._thread_master* %0, %struct._thread_master** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._thread_master** %2, metadata !511, metadata !259), !dbg !512
  %3 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !513
  %4 = call i32 @signal_rfd(), !dbg !514
  %5 = call %struct._thread* @thread_add_read(%struct._thread_master* %3, i32 (%struct._thread*)* @signal_run_callback, i8* null, i32 %4, i64 -1), !dbg !515
  store %struct._thread* %5, %struct._thread** @signal_thread, align 8, !dbg !517
  ret void, !dbg !518
}

declare %struct._thread* @thread_add_read(%struct._thread_master*, i32 (%struct._thread*)*, i8*, i32, i64) #5

; Function Attrs: nounwind uwtable
define internal i32 @signal_run_callback(%struct._thread*) #0 !dbg !519 {
  %2 = alloca %struct._thread*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.signalfd_siginfo, align 8
  store %struct._thread* %0, %struct._thread** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %2, metadata !522, metadata !259), !dbg !523
  call void @llvm.dbg.declare(metadata i32* %3, metadata !524, metadata !259), !dbg !525
  call void @llvm.dbg.declare(metadata %struct.signalfd_siginfo* %4, metadata !526, metadata !259), !dbg !556
  br label %5, !dbg !557

; <label>:5:                                      ; preds = %37, %1
  %6 = load i32, i32* @signal_fd, align 4, !dbg !558
  %7 = bitcast %struct.signalfd_siginfo* %4 to i8*, !dbg !560
  %8 = call i64 @read(i32 %6, i8* %7, i64 128), !dbg !561
  %9 = icmp eq i64 %8, 128, !dbg !562
  br i1 %9, label %10, label %38, !dbg !563

; <label>:10:                                     ; preds = %5
  %11 = getelementptr inbounds %struct.signalfd_siginfo, %struct.signalfd_siginfo* %4, i32 0, i32 0, !dbg !564
  %12 = load i32, i32* %11, align 8, !dbg !564
  store i32 %12, i32* %3, align 4, !dbg !566
  %13 = load i32, i32* %3, align 4, !dbg !567
  %14 = icmp sge i32 %13, 1, !dbg !569
  br i1 %14, label %15, label %37, !dbg !570

; <label>:15:                                     ; preds = %10
  %16 = load i32, i32* %3, align 4, !dbg !571
  %17 = icmp sle i32 %16, 24, !dbg !573
  br i1 %17, label %18, label %37, !dbg !574

; <label>:18:                                     ; preds = %15
  %19 = load i32, i32* %3, align 4, !dbg !575
  %20 = sub nsw i32 %19, 1, !dbg !577
  %21 = sext i32 %20 to i64, !dbg !578
  %22 = getelementptr inbounds [24 x void (i8*, i32)*], [24 x void (i8*, i32)*]* @signal_handler_func, i64 0, i64 %21, !dbg !578
  %23 = load void (i8*, i32)*, void (i8*, i32)** %22, align 8, !dbg !578
  %24 = icmp ne void (i8*, i32)* %23, null, !dbg !578
  br i1 %24, label %25, label %37, !dbg !579

; <label>:25:                                     ; preds = %18
  %26 = load i32, i32* %3, align 4, !dbg !580
  %27 = sub nsw i32 %26, 1, !dbg !581
  %28 = sext i32 %27 to i64, !dbg !582
  %29 = getelementptr inbounds [24 x void (i8*, i32)*], [24 x void (i8*, i32)*]* @signal_handler_func, i64 0, i64 %28, !dbg !582
  %30 = load void (i8*, i32)*, void (i8*, i32)** %29, align 8, !dbg !582
  %31 = load i32, i32* %3, align 4, !dbg !583
  %32 = sub nsw i32 %31, 1, !dbg !584
  %33 = sext i32 %32 to i64, !dbg !585
  %34 = getelementptr inbounds [24 x i8*], [24 x i8*]* @signal_v, i64 0, i64 %33, !dbg !585
  %35 = load i8*, i8** %34, align 8, !dbg !585
  %36 = load i32, i32* %3, align 4, !dbg !586
  call void %30(i8* %35, i32 %36), !dbg !582
  br label %37, !dbg !582

; <label>:37:                                     ; preds = %25, %18, %15, %10
  br label %5, !dbg !587, !llvm.loop !589

; <label>:38:                                     ; preds = %5
  %39 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !590
  %40 = call i32 @signal_rfd(), !dbg !591
  %41 = call %struct._thread* @thread_add_read(%struct._thread_master* %39, i32 (%struct._thread*)* @signal_run_callback, i8* null, i32 %40, i64 -1), !dbg !592
  store %struct._thread* %41, %struct._thread** @signal_thread, align 8, !dbg !593
  ret i32 0, !dbg !594
}

; Function Attrs: nounwind uwtable
define void @cancel_signal_read_thread() #0 !dbg !595 {
  %1 = load %struct._thread*, %struct._thread** @signal_thread, align 8, !dbg !596
  %2 = icmp ne %struct._thread* %1, null, !dbg !596
  br i1 %2, label %3, label %5, !dbg !598

; <label>:3:                                      ; preds = %0
  %4 = load %struct._thread*, %struct._thread** @signal_thread, align 8, !dbg !599
  call void @thread_cancel(%struct._thread* %4), !dbg !601
  store %struct._thread* null, %struct._thread** @signal_thread, align 8, !dbg !602
  br label %5, !dbg !603

; <label>:5:                                      ; preds = %3, %0
  ret void, !dbg !604
}

declare void @thread_cancel(%struct._thread*) #5

; Function Attrs: nounwind uwtable
define void @signal_handler_init() #0 !dbg !605 {
  %1 = load i32, i32* @prog_type, align 4, !dbg !606
  %2 = icmp eq i32 %1, 0, !dbg !608
  br i1 %2, label %3, label %4, !dbg !609

; <label>:3:                                      ; preds = %0
  call void @signal_handler_parent_init(), !dbg !610
  br label %5, !dbg !610

; <label>:4:                                      ; preds = %0
  call void @signal_handler_child_init(), !dbg !611
  br label %5

; <label>:5:                                      ; preds = %4, %3
  %6 = call i32 @sigemptyset(%struct.__sigset_t* @parent_sig) #9, !dbg !612
  call void @open_signal_fd(), !dbg !613
  call void @clear_signal_handler_addresses(), !dbg !614
  ret void, !dbg !615
}

; Function Attrs: nounwind uwtable
define internal void @signal_handler_parent_init() #0 !dbg !616 {
  %1 = alloca %struct.__sigset_t, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.sigaction, align 8
  call void @llvm.dbg.declare(metadata %struct.__sigset_t* %1, metadata !617, metadata !259), !dbg !618
  call void @llvm.dbg.declare(metadata i32* %2, metadata !619, metadata !259), !dbg !620
  call void @llvm.dbg.declare(metadata %struct.sigaction* %3, metadata !621, metadata !259), !dbg !622
  %4 = call i32 @sigemptyset(%struct.__sigset_t* %1) #9, !dbg !623
  %5 = call i32 @sigaddset(%struct.__sigset_t* %1, i32 4) #9, !dbg !624
  %6 = call i32 @sigaddset(%struct.__sigset_t* %1, i32 8) #9, !dbg !625
  %7 = call i32 @sigaddset(%struct.__sigset_t* %1, i32 11) #9, !dbg !626
  %8 = call i32 @sigaddset(%struct.__sigset_t* %1, i32 7) #9, !dbg !627
  %9 = call i32 @sigaddset(%struct.__sigset_t* %1, i32 9) #9, !dbg !628
  %10 = call i32 @sigaddset(%struct.__sigset_t* %1, i32 19) #9, !dbg !629
  %11 = bitcast %struct.__sigset_t* %1 to i8*, !dbg !630
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.__sigset_t* @dfl_sig to i8*), i8* %11, i64 128, i32 8, i1 false), !dbg !630
  %12 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 0, !dbg !631
  %13 = bitcast %union.anon* %12 to void (i32)**, !dbg !632
  store void (i32)* inttoptr (i64 1 to void (i32)*), void (i32)** %13, align 8, !dbg !633
  %14 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 1, !dbg !634
  %15 = call i32 @sigemptyset(%struct.__sigset_t* %14) #9, !dbg !635
  %16 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 2, !dbg !636
  store i32 0, i32* %16, align 8, !dbg !637
  store i32 1, i32* %2, align 4, !dbg !638
  br label %17, !dbg !640

; <label>:17:                                     ; preds = %29, %0
  %18 = load i32, i32* %2, align 4, !dbg !641
  %19 = call i32 @__libc_current_sigrtmax() #9, !dbg !644
  %20 = icmp sle i32 %18, %19, !dbg !645
  br i1 %20, label %21, label %32, !dbg !646

; <label>:21:                                     ; preds = %17
  %22 = load i32, i32* %2, align 4, !dbg !647
  %23 = call i32 @sigismember(%struct.__sigset_t* %1, i32 %22) #9, !dbg !650
  %24 = icmp ne i32 %23, 0, !dbg !650
  br i1 %24, label %28, label %25, !dbg !651

; <label>:25:                                     ; preds = %21
  %26 = load i32, i32* %2, align 4, !dbg !652
  %27 = call i32 @sigaction(i32 %26, %struct.sigaction* %3, %struct.sigaction* null) #9, !dbg !653
  br label %28, !dbg !653

; <label>:28:                                     ; preds = %25, %21
  br label %29, !dbg !654

; <label>:29:                                     ; preds = %28
  %30 = load i32, i32* %2, align 4, !dbg !655
  %31 = add nsw i32 %30, 1, !dbg !655
  store i32 %31, i32* %2, align 4, !dbg !655
  br label %17, !dbg !657, !llvm.loop !658

; <label>:32:                                     ; preds = %17
  %33 = call i32 @sigemptyset(%struct.__sigset_t* %1) #9, !dbg !660
  %34 = call i32 @sigmask_func(i32 2, %struct.__sigset_t* %1, %struct.__sigset_t* null), !dbg !661
  ret void, !dbg !662
}

; Function Attrs: nounwind uwtable
define internal void @signal_handler_child_init() #0 !dbg !663 {
  %1 = alloca %struct.sigaction, align 8
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.sigaction* %1, metadata !664, metadata !259), !dbg !665
  call void @llvm.dbg.declare(metadata i32* %2, metadata !666, metadata !259), !dbg !667
  %3 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 0, !dbg !668
  %4 = bitcast %union.anon* %3 to void (i32)**, !dbg !669
  store void (i32)* inttoptr (i64 1 to void (i32)*), void (i32)** %4, align 8, !dbg !670
  %5 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 1, !dbg !671
  %6 = call i32 @sigemptyset(%struct.__sigset_t* %5) #9, !dbg !672
  %7 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 2, !dbg !673
  store i32 0, i32* %7, align 8, !dbg !674
  store i32 1, i32* %2, align 4, !dbg !675
  br label %8, !dbg !677

; <label>:8:                                      ; preds = %20, %0
  %9 = load i32, i32* %2, align 4, !dbg !678
  %10 = call i32 @__libc_current_sigrtmax() #9, !dbg !681
  %11 = icmp sle i32 %9, %10, !dbg !682
  br i1 %11, label %12, label %23, !dbg !683

; <label>:12:                                     ; preds = %8
  %13 = load i32, i32* %2, align 4, !dbg !684
  %14 = call i32 @sigismember(%struct.__sigset_t* @parent_sig, i32 %13) #9, !dbg !687
  %15 = icmp ne i32 %14, 0, !dbg !687
  br i1 %15, label %16, label %19, !dbg !688

; <label>:16:                                     ; preds = %12
  %17 = load i32, i32* %2, align 4, !dbg !689
  %18 = call i32 @sigaction(i32 %17, %struct.sigaction* %1, %struct.sigaction* null) #9, !dbg !690
  br label %19, !dbg !690

; <label>:19:                                     ; preds = %16, %12
  br label %20, !dbg !691

; <label>:20:                                     ; preds = %19
  %21 = load i32, i32* %2, align 4, !dbg !692
  %22 = add nsw i32 %21, 1, !dbg !692
  store i32 %22, i32* %2, align 4, !dbg !692
  br label %8, !dbg !694, !llvm.loop !695

; <label>:23:                                     ; preds = %8
  ret void, !dbg !697
}

; Function Attrs: nounwind uwtable
define internal void @open_signal_fd() #0 !dbg !698 {
  %1 = call i32 @sigemptyset(%struct.__sigset_t* @signal_fd_set) #9, !dbg !699
  %2 = load i32, i32* @signal_fd, align 4, !dbg !700
  %3 = call i32 @signalfd(i32 %2, %struct.__sigset_t* @signal_fd_set, i32 526336) #9, !dbg !701
  store i32 %3, i32* @signal_fd, align 4, !dbg !702
  %4 = load i32, i32* @signal_fd, align 4, !dbg !703
  %5 = icmp eq i32 %4, -1, !dbg !705
  br i1 %5, label %6, label %12, !dbg !706

; <label>:6:                                      ; preds = %0
  %7 = call i32* @__errno_location() #1, !dbg !707
  %8 = load i32, i32* %7, align 4, !dbg !708
  %9 = call i32* @__errno_location() #1, !dbg !709
  %10 = load i32, i32* %9, align 4, !dbg !711
  %11 = call i8* @strerror(i32 %10) #9, !dbg !712
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i32 0, i32 0), i32 %8, i8* %11), !dbg !714
  br label %12, !dbg !716

; <label>:12:                                     ; preds = %6, %0
  ret void, !dbg !717
}

; Function Attrs: nounwind uwtable
define internal void @clear_signal_handler_addresses() #0 !dbg !718 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !719, metadata !259), !dbg !720
  store i32 0, i32* %1, align 4, !dbg !721
  br label %2, !dbg !723

; <label>:2:                                      ; preds = %9, %0
  %3 = load i32, i32* %1, align 4, !dbg !724
  %4 = icmp slt i32 %3, 24, !dbg !727
  br i1 %4, label %5, label %12, !dbg !728

; <label>:5:                                      ; preds = %2
  %6 = load i32, i32* %1, align 4, !dbg !729
  %7 = sext i32 %6 to i64, !dbg !730
  %8 = getelementptr inbounds [24 x void (i8*, i32)*], [24 x void (i8*, i32)*]* @signal_handler_func, i64 0, i64 %7, !dbg !730
  store void (i8*, i32)* null, void (i8*, i32)** %8, align 8, !dbg !731
  br label %9, !dbg !730

; <label>:9:                                      ; preds = %5
  %10 = load i32, i32* %1, align 4, !dbg !732
  %11 = add nsw i32 %10, 1, !dbg !732
  store i32 %11, i32* %1, align 4, !dbg !732
  br label %2, !dbg !734, !llvm.loop !735

; <label>:12:                                     ; preds = %2
  ret void, !dbg !737
}

; Function Attrs: nounwind uwtable
define void @signal_handler_destroy() #0 !dbg !738 {
  %1 = load %struct._thread*, %struct._thread** @signal_thread, align 8, !dbg !739
  %2 = icmp ne %struct._thread* %1, null, !dbg !739
  br i1 %2, label %3, label %5, !dbg !741

; <label>:3:                                      ; preds = %0
  %4 = load %struct._thread*, %struct._thread** @signal_thread, align 8, !dbg !742
  call void @thread_cancel(%struct._thread* %4), !dbg !744
  store %struct._thread* null, %struct._thread** @signal_thread, align 8, !dbg !745
  br label %5, !dbg !746

; <label>:5:                                      ; preds = %3, %0
  %6 = load i32, i32* @signal_fd, align 4, !dbg !747
  %7 = icmp ne i32 %6, -1, !dbg !749
  br i1 %7, label %8, label %11, !dbg !750

; <label>:8:                                      ; preds = %5
  %9 = load i32, i32* @signal_fd, align 4, !dbg !751
  %10 = call i32 @close(i32 %9), !dbg !753
  store i32 -1, i32* @signal_fd, align 4, !dbg !754
  br label %11, !dbg !755

; <label>:11:                                     ; preds = %8, %5
  %12 = call i32 @sigemptyset(%struct.__sigset_t* @signal_fd_set) #9, !dbg !756
  call void @signal_handlers_clear(i8* inttoptr (i64 1 to i8*)), !dbg !757
  ret void, !dbg !758
}

declare i32 @close(i32) #5

; Function Attrs: nounwind uwtable
define internal void @signal_handlers_clear(i8*) #0 !dbg !759 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !760, metadata !259), !dbg !761
  %3 = load i8*, i8** %2, align 8, !dbg !762
  %4 = bitcast i8* %3 to void (i8*, i32)*, !dbg !762
  call void @signal_set(i32 1, void (i8*, i32)* %4, i8* null), !dbg !763
  %5 = load i8*, i8** %2, align 8, !dbg !764
  %6 = bitcast i8* %5 to void (i8*, i32)*, !dbg !764
  call void @signal_set(i32 2, void (i8*, i32)* %6, i8* null), !dbg !765
  %7 = load i8*, i8** %2, align 8, !dbg !766
  %8 = bitcast i8* %7 to void (i8*, i32)*, !dbg !766
  call void @signal_set(i32 15, void (i8*, i32)* %8, i8* null), !dbg !767
  %9 = load i8*, i8** %2, align 8, !dbg !768
  %10 = bitcast i8* %9 to void (i8*, i32)*, !dbg !768
  call void @signal_set(i32 17, void (i8*, i32)* %10, i8* null), !dbg !769
  %11 = load i8*, i8** %2, align 8, !dbg !770
  %12 = bitcast i8* %11 to void (i8*, i32)*, !dbg !770
  call void @signal_set(i32 10, void (i8*, i32)* %12, i8* null), !dbg !771
  %13 = load i8*, i8** %2, align 8, !dbg !772
  %14 = bitcast i8* %13 to void (i8*, i32)*, !dbg !772
  call void @signal_set(i32 12, void (i8*, i32)* %14, i8* null), !dbg !773
  %15 = load i8*, i8** %2, align 8, !dbg !774
  %16 = bitcast i8* %15 to void (i8*, i32)*, !dbg !774
  call void @signal_set(i32 24, void (i8*, i32)* %16, i8* null), !dbg !775
  ret void, !dbg !776
}

; Function Attrs: nounwind uwtable
define void @signal_handler_script() #0 !dbg !777 {
  %1 = alloca %struct.sigaction, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.__sigset_t, align 8
  call void @llvm.dbg.declare(metadata %struct.sigaction* %1, metadata !778, metadata !259), !dbg !779
  call void @llvm.dbg.declare(metadata i32* %2, metadata !780, metadata !259), !dbg !781
  call void @llvm.dbg.declare(metadata %struct.__sigset_t* %3, metadata !782, metadata !259), !dbg !783
  %4 = load i32, i32* @signal_fd, align 4, !dbg !784
  %5 = icmp ne i32 %4, -1, !dbg !786
  br i1 %5, label %6, label %9, !dbg !787

; <label>:6:                                      ; preds = %0
  %7 = load i32, i32* @signal_fd, align 4, !dbg !788
  %8 = call i32 @close(i32 %7), !dbg !790
  store i32 -1, i32* @signal_fd, align 4, !dbg !791
  br label %9, !dbg !792

; <label>:9:                                      ; preds = %6, %0
  %10 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 0, !dbg !793
  %11 = bitcast %union.anon* %10 to void (i32)**, !dbg !794
  store void (i32)* null, void (i32)** %11, align 8, !dbg !795
  %12 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 2, !dbg !796
  store i32 0, i32* %12, align 8, !dbg !797
  %13 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 1, !dbg !798
  %14 = call i32 @sigemptyset(%struct.__sigset_t* %13) #9, !dbg !799
  store i32 1, i32* %2, align 4, !dbg !800
  br label %15, !dbg !802

; <label>:15:                                     ; preds = %27, %9
  %16 = load i32, i32* %2, align 4, !dbg !803
  %17 = call i32 @__libc_current_sigrtmax() #9, !dbg !806
  %18 = icmp sle i32 %16, %17, !dbg !807
  br i1 %18, label %19, label %30, !dbg !808

; <label>:19:                                     ; preds = %15
  %20 = load i32, i32* %2, align 4, !dbg !809
  %21 = call i32 @sigismember(%struct.__sigset_t* @dfl_sig, i32 %20) #9, !dbg !812
  %22 = icmp ne i32 %21, 0, !dbg !812
  br i1 %22, label %26, label %23, !dbg !813

; <label>:23:                                     ; preds = %19
  %24 = load i32, i32* %2, align 4, !dbg !814
  %25 = call i32 @sigaction(i32 %24, %struct.sigaction* %1, %struct.sigaction* null) #9, !dbg !815
  br label %26, !dbg !815

; <label>:26:                                     ; preds = %23, %19
  br label %27, !dbg !816

; <label>:27:                                     ; preds = %26
  %28 = load i32, i32* %2, align 4, !dbg !817
  %29 = add nsw i32 %28, 1, !dbg !817
  store i32 %29, i32* %2, align 4, !dbg !817
  br label %15, !dbg !819, !llvm.loop !820

; <label>:30:                                     ; preds = %15
  %31 = call i32 @sigemptyset(%struct.__sigset_t* %3) #9, !dbg !822
  %32 = call i32 @sigmask_func(i32 2, %struct.__sigset_t* %3, %struct.__sigset_t* null), !dbg !823
  ret void, !dbg !824
}

; Function Attrs: nounwind
declare i32 @__libc_current_sigrtmax() #3

; Function Attrs: nounwind
declare i32 @sigismember(%struct.__sigset_t*, i32) #3

; Function Attrs: nounwind uwtable
define void @set_sigxcpu_handler() #0 !dbg !825 {
  call void @signal_set(i32 24, void (i8*, i32)* @log_sigxcpu, i8* null), !dbg !826
  ret void, !dbg !827
}

; Function Attrs: nounwind uwtable
define internal void @log_sigxcpu(i8*, i32) #0 !dbg !828 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !829, metadata !259), !dbg !830
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !831, metadata !259), !dbg !832
  %5 = load i32, i32* @prog_type, align 4, !dbg !833
  %6 = icmp eq i32 %5, 1, !dbg !834
  br i1 %6, label %7, label %8, !dbg !833

; <label>:7:                                      ; preds = %2
  br label %12, !dbg !835

; <label>:8:                                      ; preds = %2
  %9 = load i32, i32* @prog_type, align 4, !dbg !837
  %10 = icmp eq i32 %9, 2, !dbg !838
  %11 = select i1 %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), !dbg !837
  br label %12, !dbg !839

; <label>:12:                                     ; preds = %8, %7
  %13 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), %7 ], [ %11, %8 ], !dbg !841
  %14 = load i32, i32* @prog_type, align 4, !dbg !843
  %15 = icmp eq i32 %14, 1, !dbg !844
  br i1 %15, label %16, label %17, !dbg !843

; <label>:16:                                     ; preds = %12
  br label %21, !dbg !845

; <label>:17:                                     ; preds = %12
  %18 = load i32, i32* @prog_type, align 4, !dbg !846
  %19 = icmp eq i32 %18, 2, !dbg !847
  %20 = select i1 %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), !dbg !846
  br label %21, !dbg !848

; <label>:21:                                     ; preds = %17, %16
  %22 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), %16 ], [ %20, %17 ], !dbg !849
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.7, i32 0, i32 0), i8* %13, i8* %22), !dbg !850
  ret void, !dbg !851
}

; Function Attrs: nounwind uwtable
define void @signal_fd_close(i32) #0 !dbg !852 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !853, metadata !259), !dbg !854
  %3 = load i32, i32* @signal_fd, align 4, !dbg !855
  %4 = load i32, i32* %2, align 4, !dbg !857
  %5 = icmp sge i32 %3, %4, !dbg !858
  br i1 %5, label %6, label %9, !dbg !859

; <label>:6:                                      ; preds = %1
  %7 = load i32, i32* @signal_fd, align 4, !dbg !860
  %8 = call i32 @close(i32 %7), !dbg !862
  store i32 -1, i32* @signal_fd, align 4, !dbg !863
  br label %9, !dbg !864

; <label>:9:                                      ; preds = %6, %1
  ret void, !dbg !865
}

; Function Attrs: nounwind
declare i32 @sigprocmask(i32, %struct.__sigset_t*, %struct.__sigset_t*) #3

declare i64 @read(i32, i8*, i64) #5

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!249, !250}
!llvm.ident = !{!251}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !34, globals: !42)
!1 = !DIFile(filename: "[inter]lib--signals.o.i", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!2 = !{!3, !24, !29}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 41, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "scheduler.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23}
!6 = !DIEnumerator(name: "THREAD_READ", value: 0)
!7 = !DIEnumerator(name: "THREAD_WRITE", value: 1)
!8 = !DIEnumerator(name: "THREAD_TIMER", value: 2)
!9 = !DIEnumerator(name: "THREAD_TIMER_SHUTDOWN", value: 3)
!10 = !DIEnumerator(name: "THREAD_EVENT", value: 4)
!11 = !DIEnumerator(name: "THREAD_CHILD", value: 5)
!12 = !DIEnumerator(name: "THREAD_READY", value: 6)
!13 = !DIEnumerator(name: "THREAD_UNUSED", value: 7)
!14 = !DIEnumerator(name: "THREAD_WRITE_TIMEOUT", value: 8)
!15 = !DIEnumerator(name: "THREAD_READ_TIMEOUT", value: 9)
!16 = !DIEnumerator(name: "THREAD_CHILD_TIMEOUT", value: 10)
!17 = !DIEnumerator(name: "THREAD_TERMINATE_START", value: 11)
!18 = !DIEnumerator(name: "THREAD_TERMINATE", value: 12)
!19 = !DIEnumerator(name: "THREAD_READY_FD", value: 13)
!20 = !DIEnumerator(name: "THREAD_READ_ERROR", value: 14)
!21 = !DIEnumerator(name: "THREAD_WRITE_ERROR", value: 15)
!22 = !DIEnumerator(name: "THREAD_IF_UP", value: 16)
!23 = !DIEnumerator(name: "THREAD_IF_DOWN", value: 17)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 152, size: 32, align: 32, elements: !25)
!25 = !{!26, !27, !28}
!26 = !DIEnumerator(name: "PROG_TYPE_PARENT", value: 0)
!27 = !DIEnumerator(name: "PROG_TYPE_VRRP", value: 1)
!28 = !DIEnumerator(name: "PROG_TYPE_CHECKER", value: 2)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !30, line: 23, size: 32, align: 32, elements: !31)
!30 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/signalfd.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!31 = !{!32, !33}
!32 = !DIEnumerator(name: "SFD_CLOEXEC", value: 524288)
!33 = !DIEnumerator(name: "SFD_NONBLOCK", value: 2048)
!34 = !{!35, !36}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !37, line: 85, baseType: !38)
!37 = !DIFile(filename: "/usr/include/signal.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!39 = !DISubroutineType(types: !40)
!40 = !{null, !41}
!41 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!42 = !{!43, !51, !53, !65, !66, !67, !248}
!43 = distinct !DIGlobalVariable(name: "signal_handler_func", scope: !0, file: !44, line: 79, type: !45, isLocal: true, isDefinition: true, variable: [24 x void (i8*, i32)*]* @signal_handler_func)
!44 = !DIFile(filename: "signals.c", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 1536, align: 64, elements: !49)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = !DISubroutineType(types: !48)
!48 = !{null, !35, !41}
!49 = !{!50}
!50 = !DISubrange(count: 24)
!51 = distinct !DIGlobalVariable(name: "signal_v", scope: !0, file: !44, line: 80, type: !52, isLocal: true, isDefinition: true, variable: [24 x i8*]* @signal_v)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 1536, align: 64, elements: !49)
!53 = distinct !DIGlobalVariable(name: "signal_fd_set", scope: !0, file: !44, line: 85, type: !54, isLocal: true, isDefinition: true, variable: %struct.__sigset_t* @signal_fd_set)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !55, line: 37, baseType: !56)
!55 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/select.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !57, line: 30, baseType: !58)
!57 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sigset.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !57, line: 27, size: 1024, align: 64, elements: !59)
!59 = !{!60}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !58, file: !57, line: 29, baseType: !61, size: 1024, align: 64)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 1024, align: 64, elements: !63)
!62 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!63 = !{!64}
!64 = !DISubrange(count: 16)
!65 = distinct !DIGlobalVariable(name: "dfl_sig", scope: !0, file: !44, line: 91, type: !54, isLocal: true, isDefinition: true, variable: %struct.__sigset_t* @dfl_sig)
!66 = distinct !DIGlobalVariable(name: "parent_sig", scope: !0, file: !44, line: 94, type: !54, isLocal: true, isDefinition: true, variable: %struct.__sigset_t* @parent_sig)
!67 = distinct !DIGlobalVariable(name: "signal_thread", scope: !0, file: !44, line: 97, type: !68, isLocal: true, isDefinition: true, variable: %struct._thread** @signal_thread)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_t", file: !4, line: 99, baseType: !70)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread", file: !4, line: 78, size: 768, align: 64, elements: !71)
!71 = !{!72, !73, !75, !212, !217, !218, !228, !241, !243}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !70, file: !4, line: 79, baseType: !62, size: 64, align: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !70, file: !4, line: 80, baseType: !74, size: 32, align: 32, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_type_t", file: !4, line: 63, baseType: !3)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !70, file: !4, line: 81, baseType: !76, size: 64, align: 64, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64, align: 64)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_master", file: !4, line: 112, size: 1280, align: 64, elements: !78)
!78 = !{!79, !91, !92, !93, !94, !102, !103, !104, !188, !189, !192, !203, !204, !205, !206, !207, !208, !209, !210}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !77, file: !4, line: 113, baseType: !80, size: 64, align: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "rb_root_t", file: !81, line: 109, baseType: !82)
!81 = !DIFile(filename: "rbtree.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !81, line: 106, size: 64, align: 64, elements: !83)
!83 = !{!84}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !82, file: !81, line: 108, baseType: !85, size: 64, align: 64)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !81, line: 97, size: 192, align: 64, elements: !87)
!87 = !{!88, !89, !90}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "rb_parent_color", scope: !86, file: !81, line: 99, baseType: !62, size: 64, align: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !86, file: !81, line: 102, baseType: !85, size: 64, align: 64, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !86, file: !81, line: 103, baseType: !85, size: 64, align: 64, offset: 128)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !77, file: !4, line: 114, baseType: !80, size: 64, align: 64, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !77, file: !4, line: 115, baseType: !80, size: 64, align: 64, offset: 128)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !77, file: !4, line: 116, baseType: !80, size: 64, align: 64, offset: 192)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !77, file: !4, line: 117, baseType: !95, size: 128, align: 64, offset: 256)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "list_head_t", file: !96, line: 62, baseType: !97)
!96 = !DIFile(filename: "list_head.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !96, line: 60, size: 128, align: 64, elements: !98)
!98 = !{!99, !101}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !97, file: !96, line: 61, baseType: !100, size: 64, align: 64)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64, align: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !97, file: !96, line: 61, baseType: !100, size: 64, align: 64, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !77, file: !4, line: 121, baseType: !95, size: 128, align: 64, offset: 384)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "unuse", scope: !77, file: !4, line: 122, baseType: !95, size: 128, align: 64, offset: 512)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "child_pid_index", scope: !77, file: !4, line: 124, baseType: !105, size: 64, align: 64, offset: 640)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !106, line: 31, baseType: !107)
!106 = !DIFile(filename: "list.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64, align: 64)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_list", file: !106, line: 39, size: 320, align: 64, elements: !109)
!109 = !{!110, !117, !118, !120, !124}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !108, file: !106, line: 40, baseType: !111, size: 64, align: 64)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64, align: 64)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_element", file: !106, line: 33, size: 192, align: 64, elements: !113)
!113 = !{!114, !115, !116}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !112, file: !106, line: 34, baseType: !111, size: 64, align: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !112, file: !106, line: 35, baseType: !111, size: 64, align: 64, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !112, file: !106, line: 36, baseType: !35, size: 64, align: 64, offset: 128)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !108, file: !106, line: 41, baseType: !111, size: 64, align: 64, offset: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !108, file: !106, line: 42, baseType: !119, size: 32, align: 32, offset: 128)
!119 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !108, file: !106, line: 43, baseType: !121, size: 64, align: 64, offset: 192)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64, align: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{null, !35}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "dump", scope: !108, file: !106, line: 44, baseType: !125, size: 64, align: 64, offset: 256)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{null, !128, !35}
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64, align: 64)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !130, line: 48, baseType: !131)
!130 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !132, line: 241, size: 1728, align: 64, elements: !133)
!132 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!133 = !{!134, !135, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !156, !157, !158, !159, !163, !165, !167, !171, !174, !176, !177, !178, !179, !180, !183, !184}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !131, file: !132, line: 242, baseType: !41, size: 32, align: 32)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !131, file: !132, line: 247, baseType: !136, size: 64, align: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64, align: 64)
!137 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !131, file: !132, line: 248, baseType: !136, size: 64, align: 64, offset: 128)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !131, file: !132, line: 249, baseType: !136, size: 64, align: 64, offset: 192)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !131, file: !132, line: 250, baseType: !136, size: 64, align: 64, offset: 256)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !131, file: !132, line: 251, baseType: !136, size: 64, align: 64, offset: 320)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !131, file: !132, line: 252, baseType: !136, size: 64, align: 64, offset: 384)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !131, file: !132, line: 253, baseType: !136, size: 64, align: 64, offset: 448)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !131, file: !132, line: 254, baseType: !136, size: 64, align: 64, offset: 512)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !131, file: !132, line: 256, baseType: !136, size: 64, align: 64, offset: 576)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !131, file: !132, line: 257, baseType: !136, size: 64, align: 64, offset: 640)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !131, file: !132, line: 258, baseType: !136, size: 64, align: 64, offset: 704)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !131, file: !132, line: 260, baseType: !149, size: 64, align: 64, offset: 768)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64, align: 64)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !132, line: 156, size: 192, align: 64, elements: !151)
!151 = !{!152, !153, !155}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !150, file: !132, line: 157, baseType: !149, size: 64, align: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !150, file: !132, line: 158, baseType: !154, size: 64, align: 64, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64, align: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !150, file: !132, line: 162, baseType: !41, size: 32, align: 32, offset: 128)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !131, file: !132, line: 262, baseType: !154, size: 64, align: 64, offset: 832)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !131, file: !132, line: 264, baseType: !41, size: 32, align: 32, offset: 896)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !131, file: !132, line: 268, baseType: !41, size: 32, align: 32, offset: 928)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !131, file: !132, line: 270, baseType: !160, size: 64, align: 64, offset: 960)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !161, line: 131, baseType: !162)
!161 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!162 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !131, file: !132, line: 274, baseType: !164, size: 16, align: 16, offset: 1024)
!164 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !131, file: !132, line: 275, baseType: !166, size: 8, align: 8, offset: 1040)
!166 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !131, file: !132, line: 276, baseType: !168, size: 8, align: 8, offset: 1048)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 8, align: 8, elements: !169)
!169 = !{!170}
!170 = !DISubrange(count: 1)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !131, file: !132, line: 280, baseType: !172, size: 64, align: 64, offset: 1088)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64, align: 64)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !132, line: 150, baseType: null)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !131, file: !132, line: 289, baseType: !175, size: 64, align: 64, offset: 1152)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !161, line: 132, baseType: !162)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !131, file: !132, line: 297, baseType: !35, size: 64, align: 64, offset: 1216)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !131, file: !132, line: 298, baseType: !35, size: 64, align: 64, offset: 1280)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !131, file: !132, line: 299, baseType: !35, size: 64, align: 64, offset: 1344)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !131, file: !132, line: 300, baseType: !35, size: 64, align: 64, offset: 1408)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !131, file: !132, line: 302, baseType: !181, size: 64, align: 64, offset: 1472)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !182, line: 216, baseType: !62)
!182 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !131, file: !132, line: 303, baseType: !41, size: 32, align: 32, offset: 1536)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !131, file: !132, line: 305, baseType: !185, size: 160, align: 8, offset: 1568)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 160, align: 8, elements: !186)
!186 = !{!187}
!187 = !DISubrange(count: 20)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "io_events", scope: !77, file: !4, line: 127, baseType: !80, size: 64, align: 64, offset: 704)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_events", scope: !77, file: !4, line: 128, baseType: !190, size: 64, align: 64, offset: 768)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64, align: 64)
!191 = !DICompositeType(tag: DW_TAG_structure_type, name: "epoll_event", file: !4, line: 128, flags: DIFlagFwdDecl)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "current_event", scope: !77, file: !4, line: 129, baseType: !193, size: 64, align: 64, offset: 832)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64, align: 64)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_event_t", file: !4, line: 109, baseType: !195)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_event", file: !4, line: 102, size: 448, align: 64, elements: !196)
!196 = !{!197, !198, !199, !200, !201}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !195, file: !4, line: 103, baseType: !68, size: 64, align: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !195, file: !4, line: 104, baseType: !68, size: 64, align: 64, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !195, file: !4, line: 105, baseType: !62, size: 64, align: 64, offset: 128)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !195, file: !4, line: 106, baseType: !41, size: 32, align: 32, offset: 192)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !195, file: !4, line: 108, baseType: !202, size: 192, align: 64, offset: 256)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "rb_node_t", file: !81, line: 104, baseType: !86)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_size", scope: !77, file: !4, line: 130, baseType: !119, size: 32, align: 32, offset: 896)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_count", scope: !77, file: !4, line: 131, baseType: !119, size: 32, align: 32, offset: 928)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_fd", scope: !77, file: !4, line: 132, baseType: !41, size: 32, align: 32, offset: 960)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "timer_fd", scope: !77, file: !4, line: 135, baseType: !41, size: 32, align: 32, offset: 992)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "timer_thread", scope: !77, file: !4, line: 136, baseType: !68, size: 64, align: 64, offset: 1024)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !77, file: !4, line: 146, baseType: !62, size: 64, align: 64, offset: 1088)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !77, file: !4, line: 147, baseType: !62, size: 64, align: 64, offset: 1152)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_timer_running", scope: !77, file: !4, line: 148, baseType: !211, size: 8, align: 8, offset: 1216)
!211 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !70, file: !4, line: 82, baseType: !213, size: 64, align: 64, offset: 192)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64, align: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{!41, !216}
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !70, file: !4, line: 83, baseType: !35, size: 64, align: 64, offset: 256)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "sands", scope: !70, file: !4, line: 84, baseType: !219, size: 128, align: 64, offset: 320)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "timeval_t", file: !220, line: 31, baseType: !221)
!220 = !DIFile(filename: "timer.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !222, line: 30, size: 128, align: 64, elements: !223)
!222 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!223 = !{!224, !226}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !221, file: !222, line: 32, baseType: !225, size: 64, align: 64)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !161, line: 139, baseType: !162)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !221, file: !222, line: 33, baseType: !227, size: 64, align: 64, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !161, line: 141, baseType: !162)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !70, file: !4, line: 92, baseType: !229, size: 64, align: 32, offset: 448)
!229 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !70, file: !4, line: 85, size: 64, align: 32, elements: !230)
!230 = !{!231, !232, !233}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !229, file: !4, line: 86, baseType: !41, size: 32, align: 32)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !229, file: !4, line: 87, baseType: !41, size: 32, align: 32)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !229, file: !4, line: 91, baseType: !234, size: 64, align: 32)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !229, file: !4, line: 88, size: 64, align: 32, elements: !235)
!235 = !{!236, !240}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !234, file: !4, line: 89, baseType: !237, size: 32, align: 32)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !238, line: 98, baseType: !239)
!238 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !161, line: 133, baseType: !41)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !234, file: !4, line: 90, baseType: !41, size: 32, align: 32, offset: 32)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !70, file: !4, line: 93, baseType: !242, size: 64, align: 64, offset: 512)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64, align: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, scope: !70, file: !4, line: 95, baseType: !244, size: 192, align: 64, offset: 576)
!244 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !70, file: !4, line: 95, size: 192, align: 64, elements: !245)
!245 = !{!246, !247}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !244, file: !4, line: 96, baseType: !202, size: 192, align: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !244, file: !4, line: 97, baseType: !95, size: 128, align: 64)
!248 = distinct !DIGlobalVariable(name: "signal_fd", scope: !0, file: !44, line: 84, type: !41, isLocal: true, isDefinition: true, variable: i32* @signal_fd)
!249 = !{i32 2, !"Dwarf Version", i32 4}
!250 = !{i32 2, !"Debug Info Version", i32 3}
!251 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!252 = distinct !DISubprogram(name: "get_signum", scope: !44, file: !44, line: 100, type: !253, isLocal: false, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !257)
!253 = !DISubroutineType(types: !254)
!254 = !{!41, !255}
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64, align: 64)
!256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!257 = !{}
!258 = !DILocalVariable(name: "sigfunc", arg: 1, scope: !252, file: !44, line: 100, type: !255)
!259 = !DIExpression()
!260 = !DILocation(line: 100, column: 24, scope: !252)
!261 = !DILocation(line: 102, column: 14, scope: !262)
!262 = distinct !DILexicalBlock(scope: !252, file: !44, line: 102, column: 6)
!263 = !DILocation(line: 102, column: 7, scope: !262)
!264 = !DILocation(line: 102, column: 6, scope: !252)
!265 = !DILocation(line: 103, column: 3, scope: !262)
!266 = !DILocation(line: 104, column: 19, scope: !267)
!267 = distinct !DILexicalBlock(scope: !262, file: !44, line: 104, column: 11)
!268 = !DILocation(line: 104, column: 12, scope: !267)
!269 = !DILocation(line: 104, column: 11, scope: !262)
!270 = !DILocation(line: 105, column: 3, scope: !267)
!271 = !DILocation(line: 106, column: 19, scope: !272)
!272 = distinct !DILexicalBlock(scope: !267, file: !44, line: 106, column: 11)
!273 = !DILocation(line: 106, column: 12, scope: !272)
!274 = !DILocation(line: 106, column: 11, scope: !267)
!275 = !DILocation(line: 107, column: 3, scope: !272)
!276 = !DILocation(line: 108, column: 19, scope: !277)
!277 = distinct !DILexicalBlock(scope: !272, file: !44, line: 108, column: 11)
!278 = !DILocation(line: 108, column: 12, scope: !277)
!279 = !DILocation(line: 108, column: 11, scope: !272)
!280 = !DILocation(line: 109, column: 3, scope: !277)
!281 = !DILocation(line: 116, column: 2, scope: !252)
!282 = !DILocation(line: 117, column: 1, scope: !252)
!283 = distinct !DISubprogram(name: "signal_set", scope: !44, file: !44, line: 199, type: !284, isLocal: false, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !257)
!284 = !DISubroutineType(types: !285)
!285 = !{null, !41, !46, !35}
!286 = !DILocalVariable(name: "signo", arg: 1, scope: !283, file: !44, line: 199, type: !41)
!287 = !DILocation(line: 199, column: 16, scope: !283)
!288 = !DILocalVariable(name: "func", arg: 2, scope: !283, file: !44, line: 199, type: !46)
!289 = !DILocation(line: 199, column: 30, scope: !283)
!290 = !DILocalVariable(name: "v", arg: 3, scope: !283, file: !44, line: 199, type: !35)
!291 = !DILocation(line: 199, column: 57, scope: !283)
!292 = !DILocalVariable(name: "ret", scope: !283, file: !44, line: 201, type: !41)
!293 = !DILocation(line: 201, column: 6, scope: !283)
!294 = !DILocalVariable(name: "sset", scope: !283, file: !44, line: 202, type: !54)
!295 = !DILocation(line: 202, column: 11, scope: !283)
!296 = !DILocalVariable(name: "sig", scope: !283, file: !44, line: 203, type: !297)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !298, line: 24, size: 1216, align: 64, elements: !299)
!298 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sigaction.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!299 = !{!300, !378, !379, !380}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "__sigaction_handler", scope: !297, file: !298, line: 35, baseType: !301, size: 64, align: 64)
!301 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !297, file: !298, line: 28, size: 64, align: 64, elements: !302)
!302 = !{!303, !304}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !301, file: !298, line: 31, baseType: !36, size: 64, align: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "sa_sigaction", scope: !301, file: !298, line: 33, baseType: !305, size: 64, align: 64)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64, align: 64)
!306 = !DISubroutineType(types: !307)
!307 = !{null, !41, !308, !35}
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64, align: 64)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !310, line: 133, baseType: !311)
!310 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/siginfo.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !310, line: 62, size: 1024, align: 64, elements: !312)
!312 = !{!313, !314, !315, !316}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !311, file: !310, line: 64, baseType: !41, size: 32, align: 32)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !311, file: !310, line: 65, baseType: !41, size: 32, align: 32, offset: 32)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !311, file: !310, line: 67, baseType: !41, size: 32, align: 32, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !311, file: !310, line: 132, baseType: !317, size: 896, align: 64, offset: 128)
!317 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !311, file: !310, line: 69, size: 896, align: 64, elements: !318)
!318 = !{!319, !323, !329, !340, !346, !356, !367, !372}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "_pad", scope: !317, file: !310, line: 71, baseType: !320, size: 896, align: 32)
!320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 896, align: 32, elements: !321)
!321 = !{!322}
!322 = !DISubrange(count: 28)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !317, file: !310, line: 78, baseType: !324, size: 64, align: 32)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !317, file: !310, line: 74, size: 64, align: 32, elements: !325)
!325 = !{!326, !327}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !324, file: !310, line: 76, baseType: !239, size: 32, align: 32)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !324, file: !310, line: 77, baseType: !328, size: 32, align: 32, offset: 32)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !161, line: 125, baseType: !119)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !317, file: !310, line: 86, baseType: !330, size: 128, align: 64)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !317, file: !310, line: 81, size: 128, align: 64, elements: !331)
!331 = !{!332, !333, !334}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "si_tid", scope: !330, file: !310, line: 83, baseType: !41, size: 32, align: 32)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "si_overrun", scope: !330, file: !310, line: 84, baseType: !41, size: 32, align: 32, offset: 32)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !330, file: !310, line: 85, baseType: !335, size: 64, align: 64, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !310, line: 36, baseType: !336)
!336 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !310, line: 32, size: 64, align: 64, elements: !337)
!337 = !{!338, !339}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !336, file: !310, line: 34, baseType: !41, size: 32, align: 32)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !336, file: !310, line: 35, baseType: !35, size: 64, align: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !317, file: !310, line: 94, baseType: !341, size: 128, align: 64)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !317, file: !310, line: 89, size: 128, align: 64, elements: !342)
!342 = !{!343, !344, !345}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !341, file: !310, line: 91, baseType: !239, size: 32, align: 32)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !341, file: !310, line: 92, baseType: !328, size: 32, align: 32, offset: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !341, file: !310, line: 93, baseType: !335, size: 64, align: 64, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !317, file: !310, line: 104, baseType: !347, size: 256, align: 64)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !317, file: !310, line: 97, size: 256, align: 64, elements: !348)
!348 = !{!349, !350, !351, !352, !355}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !347, file: !310, line: 99, baseType: !239, size: 32, align: 32)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !347, file: !310, line: 100, baseType: !328, size: 32, align: 32, offset: 32)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "si_status", scope: !347, file: !310, line: 101, baseType: !41, size: 32, align: 32, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "si_utime", scope: !347, file: !310, line: 102, baseType: !353, size: 64, align: 64, offset: 128)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigchld_clock_t", file: !310, line: 58, baseType: !354)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !161, line: 135, baseType: !162)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "si_stime", scope: !347, file: !310, line: 103, baseType: !353, size: 64, align: 64, offset: 192)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !317, file: !310, line: 116, baseType: !357, size: 256, align: 64)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !317, file: !310, line: 107, size: 256, align: 64, elements: !358)
!358 = !{!359, !360, !362}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr", scope: !357, file: !310, line: 109, baseType: !35, size: 64, align: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr_lsb", scope: !357, file: !310, line: 110, baseType: !361, size: 16, align: 16, offset: 64)
!361 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr_bnd", scope: !357, file: !310, line: 115, baseType: !363, size: 128, align: 64, offset: 128)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !357, file: !310, line: 111, size: 128, align: 64, elements: !364)
!364 = !{!365, !366}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !363, file: !310, line: 113, baseType: !35, size: 64, align: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !363, file: !310, line: 114, baseType: !35, size: 64, align: 64, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !317, file: !310, line: 123, baseType: !368, size: 128, align: 64)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !317, file: !310, line: 119, size: 128, align: 64, elements: !369)
!369 = !{!370, !371}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "si_band", scope: !368, file: !310, line: 121, baseType: !162, size: 64, align: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "si_fd", scope: !368, file: !310, line: 122, baseType: !41, size: 32, align: 32, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !317, file: !310, line: 131, baseType: !373, size: 128, align: 64)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !317, file: !310, line: 126, size: 128, align: 64, elements: !374)
!374 = !{!375, !376, !377}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !373, file: !310, line: 128, baseType: !35, size: 64, align: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !373, file: !310, line: 129, baseType: !41, size: 32, align: 32, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !373, file: !310, line: 130, baseType: !119, size: 32, align: 32, offset: 96)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !297, file: !298, line: 43, baseType: !56, size: 1024, align: 64, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !297, file: !298, line: 46, baseType: !41, size: 32, align: 32, offset: 1088)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !297, file: !298, line: 49, baseType: !381, size: 64, align: 64, offset: 1152)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64, align: 64)
!382 = !DISubroutineType(types: !383)
!383 = !{null}
!384 = !DILocation(line: 203, column: 19, scope: !283)
!385 = !DILocation(line: 221, column: 6, scope: !386)
!386 = distinct !DILexicalBlock(scope: !283, file: !44, line: 221, column: 6)
!387 = !DILocation(line: 221, column: 11, scope: !386)
!388 = !DILocation(line: 221, column: 6, scope: !283)
!389 = !DILocation(line: 222, column: 23, scope: !386)
!390 = !DILocation(line: 222, column: 3, scope: !386)
!391 = !DILocation(line: 224, column: 23, scope: !386)
!392 = !DILocation(line: 224, column: 3, scope: !386)
!393 = !DILocation(line: 226, column: 6, scope: !394)
!394 = distinct !DILexicalBlock(scope: !283, file: !44, line: 226, column: 6)
!395 = !DILocation(line: 226, column: 11, scope: !394)
!396 = !DILocation(line: 226, column: 28, scope: !394)
!397 = !DILocation(line: 226, column: 31, scope: !398)
!398 = !DILexicalBlockFile(scope: !394, file: !44, discriminator: 1)
!399 = !DILocation(line: 226, column: 36, scope: !398)
!400 = !DILocation(line: 226, column: 6, scope: !398)
!401 = !DILocation(line: 229, column: 8, scope: !402)
!402 = distinct !DILexicalBlock(scope: !394, file: !44, line: 226, column: 55)
!403 = !DILocation(line: 230, column: 5, scope: !402)
!404 = !DILocation(line: 231, column: 2, scope: !402)
!405 = !DILocation(line: 234, column: 2, scope: !283)
!406 = !DILocation(line: 235, column: 19, scope: !283)
!407 = !DILocation(line: 235, column: 2, scope: !283)
!408 = !DILocation(line: 237, column: 19, scope: !283)
!409 = !DILocation(line: 237, column: 2, scope: !283)
!410 = !DILocation(line: 238, column: 6, scope: !283)
!411 = !DILocation(line: 238, column: 15, scope: !283)
!412 = !DILocation(line: 240, column: 7, scope: !413)
!413 = distinct !DILexicalBlock(scope: !283, file: !44, line: 240, column: 6)
!414 = !DILocation(line: 240, column: 6, scope: !283)
!415 = !DILocation(line: 241, column: 29, scope: !416)
!416 = distinct !DILexicalBlock(scope: !413, file: !44, line: 240, column: 13)
!417 = !DILocation(line: 241, column: 3, scope: !416)
!418 = !DILocation(line: 242, column: 6, scope: !416)
!419 = !DILocation(line: 242, column: 26, scope: !416)
!420 = !DILocation(line: 242, column: 17, scope: !416)
!421 = !DILocation(line: 243, column: 2, scope: !416)
!422 = !DILocation(line: 245, column: 29, scope: !423)
!423 = distinct !DILexicalBlock(scope: !413, file: !44, line: 244, column: 7)
!424 = !DILocation(line: 245, column: 3, scope: !423)
!425 = !DILocation(line: 246, column: 3, scope: !423)
!426 = !DILocation(line: 247, column: 6, scope: !423)
!427 = !DILocation(line: 247, column: 26, scope: !423)
!428 = !DILocation(line: 247, column: 17, scope: !423)
!429 = !DILocation(line: 251, column: 6, scope: !430)
!430 = distinct !DILexicalBlock(scope: !283, file: !44, line: 251, column: 6)
!431 = !DILocation(line: 251, column: 11, scope: !430)
!432 = !DILocation(line: 251, column: 14, scope: !433)
!433 = !DILexicalBlockFile(scope: !430, file: !44, discriminator: 1)
!434 = !DILocation(line: 251, column: 24, scope: !433)
!435 = !DILocation(line: 251, column: 6, scope: !433)
!436 = !DILocation(line: 252, column: 18, scope: !437)
!437 = distinct !DILexicalBlock(scope: !430, file: !44, line: 251, column: 31)
!438 = !DILocation(line: 252, column: 9, scope: !437)
!439 = !DILocation(line: 252, column: 7, scope: !437)
!440 = !DILocation(line: 253, column: 7, scope: !441)
!441 = distinct !DILexicalBlock(scope: !437, file: !44, line: 253, column: 7)
!442 = !DILocation(line: 253, column: 11, scope: !441)
!443 = !DILocation(line: 253, column: 7, scope: !437)
!444 = !DILocation(line: 254, column: 85, scope: !441)
!445 = !DILocation(line: 254, column: 84, scope: !441)
!446 = !DILocation(line: 254, column: 101, scope: !447)
!447 = !DILexicalBlockFile(scope: !441, file: !44, discriminator: 1)
!448 = !DILocation(line: 254, column: 100, scope: !441)
!449 = !DILocation(line: 254, column: 90, scope: !450)
!450 = !DILexicalBlockFile(scope: !441, file: !44, discriminator: 2)
!451 = !DILocation(line: 254, column: 4, scope: !452)
!452 = !DILexicalBlockFile(scope: !441, file: !44, discriminator: 3)
!453 = !DILocation(line: 254, column: 4, scope: !441)
!454 = !DILocation(line: 255, column: 2, scope: !437)
!455 = !DILocation(line: 257, column: 16, scope: !456)
!456 = distinct !DILexicalBlock(scope: !283, file: !44, line: 257, column: 6)
!457 = !DILocation(line: 257, column: 6, scope: !456)
!458 = !DILocation(line: 257, column: 6, scope: !283)
!459 = !DILocation(line: 258, column: 3, scope: !456)
!460 = !DILocation(line: 260, column: 7, scope: !461)
!461 = distinct !DILexicalBlock(scope: !283, file: !44, line: 260, column: 6)
!462 = !DILocation(line: 260, column: 6, scope: !283)
!463 = !DILocation(line: 261, column: 3, scope: !461)
!464 = !DILocation(line: 289, column: 33, scope: !283)
!465 = !DILocation(line: 289, column: 22, scope: !283)
!466 = !DILocation(line: 289, column: 27, scope: !283)
!467 = !DILocation(line: 289, column: 2, scope: !283)
!468 = !DILocation(line: 289, column: 31, scope: !283)
!469 = !DILocation(line: 290, column: 22, scope: !283)
!470 = !DILocation(line: 290, column: 11, scope: !283)
!471 = !DILocation(line: 290, column: 16, scope: !283)
!472 = !DILocation(line: 290, column: 2, scope: !283)
!473 = !DILocation(line: 290, column: 20, scope: !283)
!474 = !DILocation(line: 300, column: 1, scope: !283)
!475 = distinct !DISubprogram(name: "sigmask_func", scope: !476, file: !476, line: 35, type: !477, isLocal: true, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !257)
!476 = !DIFile(filename: "signals.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!477 = !DISubroutineType(types: !478)
!478 = !{!41, !41, !479, !481}
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64, align: 64)
!480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!482 = !DILocalVariable(name: "how", arg: 1, scope: !475, file: !476, line: 35, type: !41)
!483 = !DILocation(line: 35, column: 18, scope: !475)
!484 = !DILocalVariable(name: "set", arg: 2, scope: !475, file: !476, line: 35, type: !479)
!485 = !DILocation(line: 35, column: 39, scope: !475)
!486 = !DILocalVariable(name: "oldset", arg: 3, scope: !475, file: !476, line: 35, type: !481)
!487 = !DILocation(line: 35, column: 54, scope: !475)
!488 = !DILocation(line: 40, column: 24, scope: !475)
!489 = !DILocation(line: 40, column: 29, scope: !475)
!490 = !DILocation(line: 40, column: 34, scope: !475)
!491 = !DILocation(line: 40, column: 12, scope: !475)
!492 = !DILocation(line: 40, column: 5, scope: !475)
!493 = distinct !DISubprogram(name: "signal_ignore", scope: !44, file: !44, line: 304, type: !39, isLocal: false, isDefinition: true, scopeLine: 305, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !257)
!494 = !DILocalVariable(name: "signo", arg: 1, scope: !493, file: !44, line: 304, type: !41)
!495 = !DILocation(line: 304, column: 19, scope: !493)
!496 = !DILocation(line: 306, column: 13, scope: !493)
!497 = !DILocation(line: 306, column: 2, scope: !493)
!498 = !DILocation(line: 307, column: 25, scope: !493)
!499 = !DILocation(line: 307, column: 2, scope: !493)
!500 = !DILocation(line: 308, column: 1, scope: !493)
!501 = distinct !DISubprogram(name: "signal_rfd", scope: !44, file: !44, line: 362, type: !502, isLocal: false, isDefinition: true, scopeLine: 363, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !257)
!502 = !DISubroutineType(types: !503)
!503 = !{!41}
!504 = !DILocation(line: 365, column: 9, scope: !501)
!505 = !DILocation(line: 365, column: 2, scope: !501)
!506 = distinct !DISubprogram(name: "add_signal_read_thread", scope: !44, file: !44, line: 373, type: !507, isLocal: false, isDefinition: true, scopeLine: 374, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !257)
!507 = !DISubroutineType(types: !508)
!508 = !{null, !509}
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64, align: 64)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_master_t", file: !4, line: 149, baseType: !77)
!511 = !DILocalVariable(name: "master", arg: 1, scope: !506, file: !44, line: 373, type: !509)
!512 = !DILocation(line: 373, column: 41, scope: !506)
!513 = !DILocation(line: 375, column: 34, scope: !506)
!514 = !DILocation(line: 375, column: 68, scope: !506)
!515 = !DILocation(line: 375, column: 18, scope: !516)
!516 = !DILexicalBlockFile(scope: !506, file: !44, discriminator: 1)
!517 = !DILocation(line: 375, column: 16, scope: !506)
!518 = !DILocation(line: 376, column: 1, scope: !506)
!519 = distinct !DISubprogram(name: "signal_run_callback", scope: !44, file: !44, line: 312, type: !520, isLocal: true, isDefinition: true, scopeLine: 313, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !257)
!520 = !DISubroutineType(types: !521)
!521 = !{!41, !68}
!522 = !DILocalVariable(name: "thread", arg: 1, scope: !519, file: !44, line: 312, type: !68)
!523 = !DILocation(line: 312, column: 55, scope: !519)
!524 = !DILocalVariable(name: "sig", scope: !519, file: !44, line: 314, type: !41)
!525 = !DILocation(line: 314, column: 6, scope: !519)
!526 = !DILocalVariable(name: "siginfo", scope: !519, file: !44, line: 316, type: !527)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signalfd_siginfo", file: !528, line: 28, size: 1024, align: 64, elements: !529)
!528 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/signalfd.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!529 = !{!530, !533, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !547, !548, !549, !550}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "ssi_signo", scope: !527, file: !528, line: 30, baseType: !531, size: 32, align: 32)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !532, line: 51, baseType: !119)
!532 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!533 = !DIDerivedType(tag: DW_TAG_member, name: "ssi_errno", scope: !527, file: !528, line: 31, baseType: !534, size: 32, align: 32, offset: 32)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !238, line: 196, baseType: !41)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "ssi_code", scope: !527, file: !528, line: 32, baseType: !534, size: 32, align: 32, offset: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "ssi_pid", scope: !527, file: !528, line: 33, baseType: !531, size: 32, align: 32, offset: 96)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "ssi_uid", scope: !527, file: !528, line: 34, baseType: !531, size: 32, align: 32, offset: 128)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "ssi_fd", scope: !527, file: !528, line: 35, baseType: !534, size: 32, align: 32, offset: 160)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "ssi_tid", scope: !527, file: !528, line: 36, baseType: !531, size: 32, align: 32, offset: 192)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "ssi_band", scope: !527, file: !528, line: 37, baseType: !531, size: 32, align: 32, offset: 224)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "ssi_overrun", scope: !527, file: !528, line: 38, baseType: !531, size: 32, align: 32, offset: 256)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "ssi_trapno", scope: !527, file: !528, line: 39, baseType: !531, size: 32, align: 32, offset: 288)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "ssi_status", scope: !527, file: !528, line: 40, baseType: !534, size: 32, align: 32, offset: 320)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "ssi_int", scope: !527, file: !528, line: 41, baseType: !534, size: 32, align: 32, offset: 352)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "ssi_ptr", scope: !527, file: !528, line: 42, baseType: !546, size: 64, align: 64, offset: 384)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !532, line: 55, baseType: !62)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "ssi_utime", scope: !527, file: !528, line: 43, baseType: !546, size: 64, align: 64, offset: 448)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "ssi_stime", scope: !527, file: !528, line: 44, baseType: !546, size: 64, align: 64, offset: 512)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "ssi_addr", scope: !527, file: !528, line: 45, baseType: !546, size: 64, align: 64, offset: 576)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "__pad", scope: !527, file: !528, line: 46, baseType: !551, size: 384, align: 8, offset: 640)
!551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !552, size: 384, align: 8, elements: !554)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !532, line: 48, baseType: !553)
!553 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!554 = !{!555}
!555 = !DISubrange(count: 48)
!556 = !DILocation(line: 316, column: 26, scope: !519)
!557 = !DILocation(line: 318, column: 2, scope: !519)
!558 = !DILocation(line: 318, column: 14, scope: !559)
!559 = !DILexicalBlockFile(scope: !519, file: !44, discriminator: 1)
!560 = !DILocation(line: 318, column: 25, scope: !559)
!561 = !DILocation(line: 318, column: 9, scope: !559)
!562 = !DILocation(line: 318, column: 68, scope: !559)
!563 = !DILocation(line: 318, column: 2, scope: !559)
!564 = !DILocation(line: 319, column: 17, scope: !565)
!565 = distinct !DILexicalBlock(scope: !519, file: !44, line: 318, column: 104)
!566 = !DILocation(line: 319, column: 7, scope: !565)
!567 = !DILocation(line: 342, column: 7, scope: !568)
!568 = distinct !DILexicalBlock(scope: !565, file: !44, line: 342, column: 7)
!569 = !DILocation(line: 342, column: 11, scope: !568)
!570 = !DILocation(line: 342, column: 16, scope: !568)
!571 = !DILocation(line: 342, column: 19, scope: !572)
!572 = !DILexicalBlockFile(scope: !568, file: !44, discriminator: 1)
!573 = !DILocation(line: 342, column: 23, scope: !572)
!574 = !DILocation(line: 342, column: 33, scope: !572)
!575 = !DILocation(line: 342, column: 56, scope: !576)
!576 = !DILexicalBlockFile(scope: !568, file: !44, discriminator: 2)
!577 = !DILocation(line: 342, column: 59, scope: !576)
!578 = !DILocation(line: 342, column: 36, scope: !576)
!579 = !DILocation(line: 342, column: 7, scope: !576)
!580 = !DILocation(line: 343, column: 24, scope: !568)
!581 = !DILocation(line: 343, column: 27, scope: !568)
!582 = !DILocation(line: 343, column: 4, scope: !568)
!583 = !DILocation(line: 343, column: 40, scope: !568)
!584 = !DILocation(line: 343, column: 43, scope: !568)
!585 = !DILocation(line: 343, column: 31, scope: !568)
!586 = !DILocation(line: 343, column: 48, scope: !568)
!587 = !DILocation(line: 318, column: 2, scope: !588)
!588 = !DILexicalBlockFile(scope: !519, file: !44, discriminator: 2)
!589 = distinct !{!589, !557}
!590 = !DILocation(line: 347, column: 34, scope: !519)
!591 = !DILocation(line: 347, column: 68, scope: !519)
!592 = !DILocation(line: 347, column: 18, scope: !559)
!593 = !DILocation(line: 347, column: 16, scope: !519)
!594 = !DILocation(line: 349, column: 2, scope: !519)
!595 = distinct !DISubprogram(name: "cancel_signal_read_thread", scope: !44, file: !44, line: 379, type: !382, isLocal: false, isDefinition: true, scopeLine: 380, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !257)
!596 = !DILocation(line: 381, column: 6, scope: !597)
!597 = distinct !DILexicalBlock(scope: !595, file: !44, line: 381, column: 6)
!598 = !DILocation(line: 381, column: 6, scope: !595)
!599 = !DILocation(line: 382, column: 17, scope: !600)
!600 = distinct !DILexicalBlock(scope: !597, file: !44, line: 381, column: 21)
!601 = !DILocation(line: 382, column: 3, scope: !600)
!602 = !DILocation(line: 383, column: 17, scope: !600)
!603 = !DILocation(line: 384, column: 2, scope: !600)
!604 = !DILocation(line: 385, column: 1, scope: !595)
!605 = distinct !DISubprogram(name: "signal_handler_init", scope: !44, file: !44, line: 461, type: !382, isLocal: false, isDefinition: true, scopeLine: 462, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !257)
!606 = !DILocation(line: 466, column: 6, scope: !607)
!607 = distinct !DILexicalBlock(scope: !605, file: !44, line: 466, column: 6)
!608 = !DILocation(line: 466, column: 16, scope: !607)
!609 = !DILocation(line: 466, column: 6, scope: !605)
!610 = !DILocation(line: 467, column: 3, scope: !607)
!611 = !DILocation(line: 469, column: 3, scope: !607)
!612 = !DILocation(line: 472, column: 2, scope: !605)
!613 = !DILocation(line: 474, column: 2, scope: !605)
!614 = !DILocation(line: 476, column: 2, scope: !605)
!615 = !DILocation(line: 477, column: 1, scope: !605)
!616 = distinct !DISubprogram(name: "signal_handler_parent_init", scope: !44, file: !44, line: 412, type: !382, isLocal: true, isDefinition: true, scopeLine: 413, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !257)
!617 = !DILocalVariable(name: "sset", scope: !616, file: !44, line: 414, type: !54)
!618 = !DILocation(line: 414, column: 11, scope: !616)
!619 = !DILocalVariable(name: "sig", scope: !616, file: !44, line: 415, type: !41)
!620 = !DILocation(line: 415, column: 6, scope: !616)
!621 = !DILocalVariable(name: "act", scope: !616, file: !44, line: 416, type: !297)
!622 = !DILocation(line: 416, column: 19, scope: !616)
!623 = !DILocation(line: 419, column: 2, scope: !616)
!624 = !DILocation(line: 420, column: 2, scope: !616)
!625 = !DILocation(line: 421, column: 2, scope: !616)
!626 = !DILocation(line: 422, column: 2, scope: !616)
!627 = !DILocation(line: 423, column: 2, scope: !616)
!628 = !DILocation(line: 424, column: 2, scope: !616)
!629 = !DILocation(line: 425, column: 2, scope: !616)
!630 = !DILocation(line: 427, column: 12, scope: !616)
!631 = !DILocation(line: 429, column: 5, scope: !616)
!632 = !DILocation(line: 429, column: 25, scope: !616)
!633 = !DILocation(line: 429, column: 16, scope: !616)
!634 = !DILocation(line: 430, column: 19, scope: !616)
!635 = !DILocation(line: 430, column: 2, scope: !616)
!636 = !DILocation(line: 431, column: 6, scope: !616)
!637 = !DILocation(line: 431, column: 15, scope: !616)
!638 = !DILocation(line: 433, column: 11, scope: !639)
!639 = distinct !DILexicalBlock(scope: !616, file: !44, line: 433, column: 2)
!640 = !DILocation(line: 433, column: 7, scope: !639)
!641 = !DILocation(line: 433, column: 16, scope: !642)
!642 = !DILexicalBlockFile(scope: !643, file: !44, discriminator: 1)
!643 = distinct !DILexicalBlock(scope: !639, file: !44, line: 433, column: 2)
!644 = !DILocation(line: 433, column: 23, scope: !642)
!645 = !DILocation(line: 433, column: 20, scope: !642)
!646 = !DILocation(line: 433, column: 2, scope: !642)
!647 = !DILocation(line: 434, column: 27, scope: !648)
!648 = distinct !DILexicalBlock(scope: !649, file: !44, line: 434, column: 7)
!649 = distinct !DILexicalBlock(scope: !643, file: !44, line: 433, column: 39)
!650 = !DILocation(line: 434, column: 8, scope: !648)
!651 = !DILocation(line: 434, column: 7, scope: !649)
!652 = !DILocation(line: 435, column: 14, scope: !648)
!653 = !DILocation(line: 435, column: 4, scope: !648)
!654 = !DILocation(line: 436, column: 2, scope: !649)
!655 = !DILocation(line: 433, column: 35, scope: !656)
!656 = !DILexicalBlockFile(scope: !643, file: !44, discriminator: 2)
!657 = !DILocation(line: 433, column: 2, scope: !656)
!658 = distinct !{!658, !659}
!659 = !DILocation(line: 433, column: 2, scope: !616)
!660 = !DILocation(line: 439, column: 2, scope: !616)
!661 = !DILocation(line: 440, column: 2, scope: !616)
!662 = !DILocation(line: 442, column: 1, scope: !616)
!663 = distinct !DISubprogram(name: "signal_handler_child_init", scope: !44, file: !44, line: 445, type: !382, isLocal: true, isDefinition: true, scopeLine: 446, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !257)
!664 = !DILocalVariable(name: "act", scope: !663, file: !44, line: 447, type: !297)
!665 = !DILocation(line: 447, column: 19, scope: !663)
!666 = !DILocalVariable(name: "sig", scope: !663, file: !44, line: 448, type: !41)
!667 = !DILocation(line: 448, column: 6, scope: !663)
!668 = !DILocation(line: 450, column: 5, scope: !663)
!669 = !DILocation(line: 450, column: 25, scope: !663)
!670 = !DILocation(line: 450, column: 16, scope: !663)
!671 = !DILocation(line: 451, column: 19, scope: !663)
!672 = !DILocation(line: 451, column: 2, scope: !663)
!673 = !DILocation(line: 452, column: 6, scope: !663)
!674 = !DILocation(line: 452, column: 15, scope: !663)
!675 = !DILocation(line: 454, column: 11, scope: !676)
!676 = distinct !DILexicalBlock(scope: !663, file: !44, line: 454, column: 2)
!677 = !DILocation(line: 454, column: 7, scope: !676)
!678 = !DILocation(line: 454, column: 16, scope: !679)
!679 = !DILexicalBlockFile(scope: !680, file: !44, discriminator: 1)
!680 = distinct !DILexicalBlock(scope: !676, file: !44, line: 454, column: 2)
!681 = !DILocation(line: 454, column: 23, scope: !679)
!682 = !DILocation(line: 454, column: 20, scope: !679)
!683 = !DILocation(line: 454, column: 2, scope: !679)
!684 = !DILocation(line: 455, column: 32, scope: !685)
!685 = distinct !DILexicalBlock(scope: !686, file: !44, line: 455, column: 7)
!686 = distinct !DILexicalBlock(scope: !680, file: !44, line: 454, column: 39)
!687 = !DILocation(line: 455, column: 7, scope: !685)
!688 = !DILocation(line: 455, column: 7, scope: !686)
!689 = !DILocation(line: 456, column: 14, scope: !685)
!690 = !DILocation(line: 456, column: 4, scope: !685)
!691 = !DILocation(line: 457, column: 2, scope: !686)
!692 = !DILocation(line: 454, column: 35, scope: !693)
!693 = !DILexicalBlockFile(scope: !680, file: !44, discriminator: 2)
!694 = !DILocation(line: 454, column: 2, scope: !693)
!695 = distinct !{!695, !696}
!696 = !DILocation(line: 454, column: 2, scope: !663)
!697 = !DILocation(line: 458, column: 1, scope: !663)
!698 = distinct !DISubprogram(name: "open_signal_fd", scope: !44, file: !44, line: 388, type: !382, isLocal: true, isDefinition: true, scopeLine: 389, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !257)
!699 = !DILocation(line: 391, column: 2, scope: !698)
!700 = !DILocation(line: 394, column: 23, scope: !698)
!701 = !DILocation(line: 394, column: 14, scope: !698)
!702 = !DILocation(line: 394, column: 12, scope: !698)
!703 = !DILocation(line: 403, column: 6, scope: !704)
!704 = distinct !DILexicalBlock(scope: !698, file: !44, line: 403, column: 6)
!705 = !DILocation(line: 403, column: 16, scope: !704)
!706 = !DILocation(line: 403, column: 6, scope: !698)
!707 = !DILocation(line: 404, column: 82, scope: !704)
!708 = !DILocation(line: 404, column: 81, scope: !704)
!709 = !DILocation(line: 404, column: 98, scope: !710)
!710 = !DILexicalBlockFile(scope: !704, file: !44, discriminator: 1)
!711 = !DILocation(line: 404, column: 97, scope: !704)
!712 = !DILocation(line: 404, column: 87, scope: !713)
!713 = !DILexicalBlockFile(scope: !704, file: !44, discriminator: 2)
!714 = !DILocation(line: 404, column: 3, scope: !715)
!715 = !DILexicalBlockFile(scope: !704, file: !44, discriminator: 3)
!716 = !DILocation(line: 404, column: 3, scope: !704)
!717 = !DILocation(line: 409, column: 1, scope: !698)
!718 = distinct !DISubprogram(name: "clear_signal_handler_addresses", scope: !44, file: !44, line: 353, type: !382, isLocal: true, isDefinition: true, scopeLine: 354, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !257)
!719 = !DILocalVariable(name: "i", scope: !718, file: !44, line: 355, type: !41)
!720 = !DILocation(line: 355, column: 6, scope: !718)
!721 = !DILocation(line: 357, column: 9, scope: !722)
!722 = distinct !DILexicalBlock(scope: !718, file: !44, line: 357, column: 2)
!723 = !DILocation(line: 357, column: 7, scope: !722)
!724 = !DILocation(line: 357, column: 14, scope: !725)
!725 = !DILexicalBlockFile(scope: !726, file: !44, discriminator: 1)
!726 = distinct !DILexicalBlock(scope: !722, file: !44, line: 357, column: 2)
!727 = !DILocation(line: 357, column: 16, scope: !725)
!728 = !DILocation(line: 357, column: 2, scope: !725)
!729 = !DILocation(line: 358, column: 23, scope: !726)
!730 = !DILocation(line: 358, column: 3, scope: !726)
!731 = !DILocation(line: 358, column: 26, scope: !726)
!732 = !DILocation(line: 357, column: 27, scope: !733)
!733 = !DILexicalBlockFile(scope: !726, file: !44, discriminator: 2)
!734 = !DILocation(line: 357, column: 2, scope: !733)
!735 = distinct !{!735, !736}
!736 = !DILocation(line: 357, column: 2, scope: !718)
!737 = !DILocation(line: 359, column: 1, scope: !718)
!738 = distinct !DISubprogram(name: "signal_handler_destroy", scope: !44, file: !44, line: 498, type: !382, isLocal: false, isDefinition: true, scopeLine: 499, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !257)
!739 = !DILocation(line: 500, column: 6, scope: !740)
!740 = distinct !DILexicalBlock(scope: !738, file: !44, line: 500, column: 6)
!741 = !DILocation(line: 500, column: 6, scope: !738)
!742 = !DILocation(line: 501, column: 17, scope: !743)
!743 = distinct !DILexicalBlock(scope: !740, file: !44, line: 500, column: 21)
!744 = !DILocation(line: 501, column: 3, scope: !743)
!745 = !DILocation(line: 502, column: 17, scope: !743)
!746 = !DILocation(line: 503, column: 2, scope: !743)
!747 = !DILocation(line: 506, column: 6, scope: !748)
!748 = distinct !DILexicalBlock(scope: !738, file: !44, line: 506, column: 6)
!749 = !DILocation(line: 506, column: 16, scope: !748)
!750 = !DILocation(line: 506, column: 6, scope: !738)
!751 = !DILocation(line: 507, column: 9, scope: !752)
!752 = distinct !DILexicalBlock(scope: !748, file: !44, line: 506, column: 23)
!753 = !DILocation(line: 507, column: 3, scope: !752)
!754 = !DILocation(line: 508, column: 13, scope: !752)
!755 = !DILocation(line: 509, column: 2, scope: !752)
!756 = !DILocation(line: 510, column: 2, scope: !738)
!757 = !DILocation(line: 513, column: 2, scope: !738)
!758 = !DILocation(line: 525, column: 1, scope: !738)
!759 = distinct !DISubprogram(name: "signal_handlers_clear", scope: !44, file: !44, line: 480, type: !122, isLocal: true, isDefinition: true, scopeLine: 481, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !257)
!760 = !DILocalVariable(name: "state", arg: 1, scope: !759, file: !44, line: 480, type: !35)
!761 = !DILocation(line: 480, column: 29, scope: !759)
!762 = !DILocation(line: 483, column: 20, scope: !759)
!763 = !DILocation(line: 483, column: 2, scope: !759)
!764 = !DILocation(line: 484, column: 20, scope: !759)
!765 = !DILocation(line: 484, column: 2, scope: !759)
!766 = !DILocation(line: 485, column: 21, scope: !759)
!767 = !DILocation(line: 485, column: 2, scope: !759)
!768 = !DILocation(line: 486, column: 21, scope: !759)
!769 = !DILocation(line: 486, column: 2, scope: !759)
!770 = !DILocation(line: 487, column: 21, scope: !759)
!771 = !DILocation(line: 487, column: 2, scope: !759)
!772 = !DILocation(line: 488, column: 21, scope: !759)
!773 = !DILocation(line: 488, column: 2, scope: !759)
!774 = !DILocation(line: 490, column: 21, scope: !759)
!775 = !DILocation(line: 490, column: 2, scope: !759)
!776 = !DILocation(line: 495, column: 1, scope: !759)
!777 = distinct !DISubprogram(name: "signal_handler_script", scope: !44, file: !44, line: 530, type: !382, isLocal: false, isDefinition: true, scopeLine: 531, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !257)
!778 = !DILocalVariable(name: "dfl", scope: !777, file: !44, line: 532, type: !297)
!779 = !DILocation(line: 532, column: 19, scope: !777)
!780 = !DILocalVariable(name: "sig", scope: !777, file: !44, line: 533, type: !41)
!781 = !DILocation(line: 533, column: 6, scope: !777)
!782 = !DILocalVariable(name: "sset", scope: !777, file: !44, line: 535, type: !54)
!783 = !DILocation(line: 535, column: 11, scope: !777)
!784 = !DILocation(line: 537, column: 6, scope: !785)
!785 = distinct !DILexicalBlock(scope: !777, file: !44, line: 537, column: 6)
!786 = !DILocation(line: 537, column: 16, scope: !785)
!787 = !DILocation(line: 537, column: 6, scope: !777)
!788 = !DILocation(line: 538, column: 9, scope: !789)
!789 = distinct !DILexicalBlock(scope: !785, file: !44, line: 537, column: 22)
!790 = !DILocation(line: 538, column: 3, scope: !789)
!791 = !DILocation(line: 539, column: 13, scope: !789)
!792 = !DILocation(line: 540, column: 2, scope: !789)
!793 = !DILocation(line: 543, column: 5, scope: !777)
!794 = !DILocation(line: 543, column: 25, scope: !777)
!795 = !DILocation(line: 543, column: 16, scope: !777)
!796 = !DILocation(line: 544, column: 6, scope: !777)
!797 = !DILocation(line: 544, column: 15, scope: !777)
!798 = !DILocation(line: 545, column: 19, scope: !777)
!799 = !DILocation(line: 545, column: 2, scope: !777)
!800 = !DILocation(line: 547, column: 11, scope: !801)
!801 = distinct !DILexicalBlock(scope: !777, file: !44, line: 547, column: 2)
!802 = !DILocation(line: 547, column: 7, scope: !801)
!803 = !DILocation(line: 547, column: 16, scope: !804)
!804 = !DILexicalBlockFile(scope: !805, file: !44, discriminator: 1)
!805 = distinct !DILexicalBlock(scope: !801, file: !44, line: 547, column: 2)
!806 = !DILocation(line: 547, column: 23, scope: !804)
!807 = !DILocation(line: 547, column: 20, scope: !804)
!808 = !DILocation(line: 547, column: 2, scope: !804)
!809 = !DILocation(line: 548, column: 30, scope: !810)
!810 = distinct !DILexicalBlock(scope: !811, file: !44, line: 548, column: 7)
!811 = distinct !DILexicalBlock(scope: !805, file: !44, line: 547, column: 39)
!812 = !DILocation(line: 548, column: 8, scope: !810)
!813 = !DILocation(line: 548, column: 7, scope: !811)
!814 = !DILocation(line: 549, column: 14, scope: !810)
!815 = !DILocation(line: 549, column: 4, scope: !810)
!816 = !DILocation(line: 550, column: 2, scope: !811)
!817 = !DILocation(line: 547, column: 35, scope: !818)
!818 = !DILexicalBlockFile(scope: !805, file: !44, discriminator: 2)
!819 = !DILocation(line: 547, column: 2, scope: !818)
!820 = distinct !{!820, !821}
!821 = !DILocation(line: 547, column: 2, scope: !777)
!822 = !DILocation(line: 553, column: 2, scope: !777)
!823 = !DILocation(line: 554, column: 2, scope: !777)
!824 = !DILocation(line: 556, column: 1, scope: !777)
!825 = distinct !DISubprogram(name: "set_sigxcpu_handler", scope: !44, file: !44, line: 560, type: !382, isLocal: false, isDefinition: true, scopeLine: 561, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !257)
!826 = !DILocation(line: 562, column: 2, scope: !825)
!827 = !DILocation(line: 566, column: 1, scope: !825)
!828 = distinct !DISubprogram(name: "log_sigxcpu", scope: !44, file: !44, line: 121, type: !47, isLocal: true, isDefinition: true, scopeLine: 122, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !257)
!829 = !DILocalVariable(name: "ptr", arg: 1, scope: !828, file: !44, line: 121, type: !35)
!830 = !DILocation(line: 121, column: 44, scope: !828)
!831 = !DILocalVariable(name: "signum", arg: 2, scope: !828, file: !44, line: 121, type: !41)
!832 = !DILocation(line: 121, column: 77, scope: !828)
!833 = !DILocation(line: 128, column: 7, scope: !828)
!834 = !DILocation(line: 128, column: 17, scope: !828)
!835 = !DILocation(line: 128, column: 7, scope: !836)
!836 = !DILexicalBlockFile(scope: !828, file: !44, discriminator: 1)
!837 = !DILocation(line: 131, column: 7, scope: !828)
!838 = !DILocation(line: 131, column: 17, scope: !828)
!839 = !DILocation(line: 128, column: 7, scope: !840)
!840 = !DILexicalBlockFile(scope: !828, file: !44, discriminator: 2)
!841 = !DILocation(line: 128, column: 7, scope: !842)
!842 = !DILexicalBlockFile(scope: !828, file: !44, discriminator: 3)
!843 = !DILocation(line: 142, column: 7, scope: !828)
!844 = !DILocation(line: 142, column: 17, scope: !828)
!845 = !DILocation(line: 142, column: 7, scope: !836)
!846 = !DILocation(line: 145, column: 7, scope: !828)
!847 = !DILocation(line: 145, column: 17, scope: !828)
!848 = !DILocation(line: 142, column: 7, scope: !840)
!849 = !DILocation(line: 142, column: 7, scope: !842)
!850 = !DILocation(line: 123, column: 2, scope: !828)
!851 = !DILocation(line: 153, column: 1, scope: !828)
!852 = distinct !DISubprogram(name: "signal_fd_close", scope: !44, file: !44, line: 569, type: !39, isLocal: false, isDefinition: true, scopeLine: 570, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !257)
!853 = !DILocalVariable(name: "min_fd", arg: 1, scope: !852, file: !44, line: 569, type: !41)
!854 = !DILocation(line: 569, column: 26, scope: !852)
!855 = !DILocation(line: 572, column: 6, scope: !856)
!856 = distinct !DILexicalBlock(scope: !852, file: !44, line: 572, column: 6)
!857 = !DILocation(line: 572, column: 19, scope: !856)
!858 = !DILocation(line: 572, column: 16, scope: !856)
!859 = !DILocation(line: 572, column: 6, scope: !852)
!860 = !DILocation(line: 573, column: 9, scope: !861)
!861 = distinct !DILexicalBlock(scope: !856, file: !44, line: 572, column: 27)
!862 = !DILocation(line: 573, column: 3, scope: !861)
!863 = !DILocation(line: 574, column: 13, scope: !861)
!864 = !DILocation(line: 575, column: 2, scope: !861)
!865 = !DILocation(line: 586, column: 1, scope: !852)
