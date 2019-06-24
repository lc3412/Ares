; ModuleID = './rpctool.o.i'
source_filename = "./rpctool.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.sigaction = type { %union.anon.7, %struct.__sigset_t, i32, void ()* }
%union.anon.7 = type { void (i32)* }
%struct.__sigset_t = type { [16 x i64] }
%struct.siginfo_t = type { i32, i32, i32, %union.anon }
%union.anon = type { %struct.anon.2, [80 x i8] }
%struct.anon.2 = type { i32, i32, i32, i64, i64 }
%struct.ucontext = type { i64, %struct.ucontext*, %struct.sigaltstack, %struct.mcontext_t, %struct.__sigset_t, %struct._libc_fpstate }
%struct.sigaltstack = type { i8*, i32, i64 }
%struct.mcontext_t = type { [23 x i64], %struct._libc_fpstate*, [8 x i64] }
%struct._libc_fpstate = type { i16, i16, i16, i16, i64, i64, i32, i32, [8 x %struct._libc_fpxreg], [16 x %struct._libc_xmmreg], [24 x i32] }
%struct._libc_fpxreg = type { [4 x i16], i16, [3 x i16] }
%struct._libc_xmmreg = type { [4 x i32] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [18 x i8] c"rpctool syntax:\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"  -h | --help\09print usage.\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"  rpctool <text>\09send <text> as an RPC command.\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@Panic.buf = internal global [1024 x i8] zeroinitializer, align 16
@SetSignalHandler.old = internal global %struct.sigaction zeroinitializer, align 8
@.str.8 = private unnamed_addr constant [41 x i8] c"Unable to initialize a signal set: %s.\0A\0A\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"Unable to initialize a signal handler: %s.\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"Failed sending message to VMware.\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @PrintUsage() #0 !dbg !234 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !235
  %2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0)), !dbg !236
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !237
  %4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0)), !dbg !238
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !239
  %6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i32 0, i32 0)), !dbg !240
  ret void, !dbg !241
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @main(i32, i8**) #0 !dbg !242 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !247, metadata !248), !dbg !249
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !250, metadata !248), !dbg !251
  call void @llvm.dbg.declare(metadata i32* %6, metadata !252, metadata !248), !dbg !253
  store i32 1, i32* %6, align 4, !dbg !253
  %7 = load i32, i32* %4, align 4, !dbg !254
  %8 = icmp sle i32 %7, 1, !dbg !256
  br i1 %8, label %9, label %10, !dbg !257

; <label>:9:                                      ; preds = %2
  call void @PrintUsage(), !dbg !258
  store i32 1, i32* %3, align 4, !dbg !260
  br label %37, !dbg !260

; <label>:10:                                     ; preds = %2
  %11 = load i8**, i8*** %5, align 8, !dbg !261
  %12 = getelementptr inbounds i8*, i8** %11, i64 1, !dbg !261
  %13 = load i8*, i8** %12, align 8, !dbg !261
  %14 = call i32 @strncmp(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i64 2) #10, !dbg !263
  %15 = icmp ne i32 %14, 0, !dbg !263
  br i1 %15, label %16, label %22, !dbg !264

; <label>:16:                                     ; preds = %10
  %17 = load i8**, i8*** %5, align 8, !dbg !265
  %18 = getelementptr inbounds i8*, i8** %17, i64 1, !dbg !265
  %19 = load i8*, i8** %18, align 8, !dbg !265
  %20 = call i32 @strncmp(i8* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i64 6) #10, !dbg !266
  %21 = icmp ne i32 %20, 0, !dbg !266
  br i1 %21, label %23, label %22, !dbg !267

; <label>:22:                                     ; preds = %16, %10
  call void @PrintUsage(), !dbg !269
  store i32 0, i32* %3, align 4, !dbg !271
  br label %37, !dbg !271

; <label>:23:                                     ; preds = %16
  %24 = load i32, i32* %4, align 4, !dbg !272
  %25 = add nsw i32 %24, -1, !dbg !272
  store i32 %25, i32* %4, align 4, !dbg !272
  %26 = load i8**, i8*** %5, align 8, !dbg !273
  %27 = getelementptr inbounds i8*, i8** %26, i32 1, !dbg !273
  store i8** %27, i8*** %5, align 8, !dbg !273
  %28 = call signext i8 @SetSignalHandler(i32 11, void (i32, %struct.siginfo_t*, i8*)* @SignalHandler, i8 signext 0), !dbg !274
  %29 = icmp ne i8 %28, 0, !dbg !274
  br i1 %29, label %30, label %34, !dbg !276

; <label>:30:                                     ; preds = %23
  %31 = load i32, i32* %4, align 4, !dbg !277
  %32 = load i8**, i8*** %5, align 8, !dbg !279
  %33 = call i32 @RpcToolCommand(i32 %31, i8** %32), !dbg !280
  store i32 %33, i32* %6, align 4, !dbg !281
  br label %34, !dbg !282

; <label>:34:                                     ; preds = %30, %23
  %35 = call signext i8 @SetSignalHandler(i32 11, void (i32, %struct.siginfo_t*, i8*)* null, i8 signext 1), !dbg !283
  %36 = load i32, i32* %6, align 4, !dbg !284
  store i32 %36, i32* %3, align 4, !dbg !285
  br label %37, !dbg !285

; <label>:37:                                     ; preds = %34, %22, %9
  %38 = load i32, i32* %3, align 4, !dbg !286
  ret i32 %38, !dbg !286
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal signext i8 @SetSignalHandler(i32, void (i32, %struct.siginfo_t*, i8*)*, i8 signext) #0 !dbg !132 {
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca void (i32, %struct.siginfo_t*, i8*)*, align 8
  %7 = alloca i8, align 1
  %8 = alloca %struct.sigaction, align 8
  %9 = alloca %struct.sigaction, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !287, metadata !248), !dbg !288
  store void (i32, %struct.siginfo_t*, i8*)* %1, void (i32, %struct.siginfo_t*, i8*)** %6, align 8
  call void @llvm.dbg.declare(metadata void (i32, %struct.siginfo_t*, i8*)** %6, metadata !289, metadata !248), !dbg !290
  store i8 %2, i8* %7, align 1
  call void @llvm.dbg.declare(metadata i8* %7, metadata !291, metadata !248), !dbg !292
  %10 = load i8, i8* %7, align 1, !dbg !293
  %11 = icmp ne i8 %10, 0, !dbg !293
  br i1 %11, label %12, label %19, !dbg !295

; <label>:12:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata %struct.sigaction* %8, metadata !296, metadata !248), !dbg !298
  %13 = bitcast %struct.sigaction* %8 to i8*, !dbg !299
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* bitcast (%struct.sigaction* @SetSignalHandler.old to i8*), i64 152, i32 8, i1 false), !dbg !299
  call void @llvm.memset.p0i8.i64(i8* bitcast (%struct.sigaction* @SetSignalHandler.old to i8*), i8 0, i64 152, i32 8, i1 false), !dbg !300
  %14 = load i32, i32* %5, align 4, !dbg !301
  %15 = call i32 @sigaction(i32 %14, %struct.sigaction* %8, %struct.sigaction* null) #6, !dbg !302
  %16 = icmp ne i32 %15, 0, !dbg !302
  %17 = select i1 %16, i32 0, i32 1, !dbg !302
  %18 = trunc i32 %17 to i8, !dbg !302
  store i8 %18, i8* %4, align 1, !dbg !303
  br label %45, !dbg !303

; <label>:19:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata %struct.sigaction* %9, metadata !304, metadata !248), !dbg !306
  %20 = load void (i32, %struct.siginfo_t*, i8*)*, void (i32, %struct.siginfo_t*, i8*)** %6, align 8, !dbg !307
  %21 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %9, i32 0, i32 0, !dbg !308
  %22 = bitcast %union.anon.7* %21 to void (i32, %struct.siginfo_t*, i8*)**, !dbg !309
  store void (i32, %struct.siginfo_t*, i8*)* %20, void (i32, %struct.siginfo_t*, i8*)** %22, align 8, !dbg !310
  %23 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %9, i32 0, i32 2, !dbg !311
  store i32 4, i32* %23, align 8, !dbg !312
  %24 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %9, i32 0, i32 1, !dbg !313
  %25 = call i32 @sigfillset(%struct.__sigset_t* %24) #6, !dbg !315
  %26 = icmp eq i32 %25, -1, !dbg !316
  br i1 %26, label %27, label %33, !dbg !317

; <label>:27:                                     ; preds = %19
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !318
  %29 = call i32* @__errno_location() #2, !dbg !320
  %30 = load i32, i32* %29, align 4, !dbg !321
  %31 = call i8* @strerror(i32 %30) #6, !dbg !322
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i32 0, i32 0), i8* %31), !dbg !324
  store i8 0, i8* %4, align 1, !dbg !325
  br label %45, !dbg !325

; <label>:33:                                     ; preds = %19
  %34 = load i32, i32* %5, align 4, !dbg !326
  %35 = call i32 @sigaction(i32 %34, %struct.sigaction* %9, %struct.sigaction* @SetSignalHandler.old) #6, !dbg !328
  %36 = icmp eq i32 %35, -1, !dbg !329
  br i1 %36, label %37, label %43, !dbg !330

; <label>:37:                                     ; preds = %33
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !331
  %39 = call i32* @__errno_location() #2, !dbg !333
  %40 = load i32, i32* %39, align 4, !dbg !334
  %41 = call i8* @strerror(i32 %40) #6, !dbg !335
  %42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i32 0, i32 0), i8* %41), !dbg !337
  store i8 0, i8* %4, align 1, !dbg !338
  br label %45, !dbg !338

; <label>:43:                                     ; preds = %33
  br label %44

; <label>:44:                                     ; preds = %43
  store i8 1, i8* %4, align 1, !dbg !339
  br label %45, !dbg !339

; <label>:45:                                     ; preds = %44, %37, %27, %12
  %46 = load i8, i8* %4, align 1, !dbg !340
  ret i8 %46, !dbg !340
}

; Function Attrs: nounwind uwtable
define internal void @SignalHandler(i32, %struct.siginfo_t*, i8*) #0 !dbg !341 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.siginfo_t*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ucontext*, align 8
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !342, metadata !248), !dbg !343
  store %struct.siginfo_t* %1, %struct.siginfo_t** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.siginfo_t** %5, metadata !344, metadata !248), !dbg !345
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !346, metadata !248), !dbg !347
  call void @llvm.dbg.declare(metadata %struct.ucontext** %7, metadata !348, metadata !248), !dbg !349
  %10 = load i8*, i8** %6, align 8, !dbg !350
  %11 = bitcast i8* %10 to %struct.ucontext*, !dbg !351
  store %struct.ucontext* %11, %struct.ucontext** %7, align 8, !dbg !349
  call void @llvm.dbg.declare(metadata i16* %8, metadata !352, metadata !248), !dbg !356
  %12 = load %struct.ucontext*, %struct.ucontext** %7, align 8, !dbg !357
  %13 = getelementptr inbounds %struct.ucontext, %struct.ucontext* %12, i32 0, i32 3, !dbg !358
  %14 = getelementptr inbounds %struct.mcontext_t, %struct.mcontext_t* %13, i32 0, i32 0, !dbg !359
  %15 = getelementptr inbounds [23 x i64], [23 x i64]* %14, i64 0, i64 12, !dbg !360
  %16 = load i64, i64* %15, align 8, !dbg !360
  %17 = and i64 %16, 65535, !dbg !361
  %18 = trunc i64 %17 to i16, !dbg !362
  store i16 %18, i16* %8, align 2, !dbg !356
  call void @llvm.dbg.declare(metadata i32* %9, metadata !363, metadata !248), !dbg !366
  %19 = load %struct.ucontext*, %struct.ucontext** %7, align 8, !dbg !367
  %20 = getelementptr inbounds %struct.ucontext, %struct.ucontext* %19, i32 0, i32 3, !dbg !368
  %21 = getelementptr inbounds %struct.mcontext_t, %struct.mcontext_t* %20, i32 0, i32 0, !dbg !369
  %22 = getelementptr inbounds [23 x i64], [23 x i64]* %21, i64 0, i64 13, !dbg !370
  %23 = load i64, i64* %22, align 8, !dbg !370
  %24 = and i64 %23, 4294967295, !dbg !371
  %25 = trunc i64 %24 to i32, !dbg !372
  store i32 %25, i32* %9, align 4, !dbg !366
  %26 = load i32, i32* %9, align 4, !dbg !373
  %27 = icmp eq i32 %26, 1447909480, !dbg !375
  br i1 %27, label %28, label %39, !dbg !376

; <label>:28:                                     ; preds = %3
  %29 = load i16, i16* %8, align 2, !dbg !377
  %30 = zext i16 %29 to i32, !dbg !377
  %31 = icmp eq i32 %30, 22105, !dbg !378
  br i1 %31, label %36, label %32, !dbg !379

; <label>:32:                                     ; preds = %28
  %33 = load i16, i16* %8, align 2, !dbg !380
  %34 = zext i16 %33 to i32, !dbg !380
  %35 = icmp eq i32 %34, 22104, !dbg !382
  br i1 %35, label %36, label %39, !dbg !383

; <label>:36:                                     ; preds = %32, %28
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !385
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i32 0, i32 0)), !dbg !387
  call void @exit(i32 1) #11, !dbg !388
  unreachable, !dbg !388

; <label>:39:                                     ; preds = %32, %3
  %40 = load i32, i32* %4, align 4, !dbg !389
  %41 = call signext i8 @SetSignalHandler(i32 %40, void (i32, %struct.siginfo_t*, i8*)* null, i8 signext 1), !dbg !391
  %42 = load i32, i32* %4, align 4, !dbg !392
  %43 = call i32 @raise(i32 %42) #6, !dbg !393
  br label %44

; <label>:44:                                     ; preds = %39
  ret void, !dbg !394
}

; Function Attrs: nounwind uwtable
define i32 @RpcToolCommand(i32, i8**) #0 !dbg !395 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !396, metadata !248), !dbg !397
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !398, metadata !248), !dbg !399
  call void @llvm.dbg.declare(metadata i8** %5, metadata !400, metadata !248), !dbg !401
  store i8* null, i8** %5, align 8, !dbg !401
  call void @llvm.dbg.declare(metadata i8* %6, metadata !402, metadata !248), !dbg !403
  store i8 0, i8* %6, align 1, !dbg !403
  %7 = load i8**, i8*** %4, align 8, !dbg !404
  %8 = getelementptr inbounds i8*, i8** %7, i64 0, !dbg !404
  %9 = load i8*, i8** %8, align 8, !dbg !404
  %10 = call signext i8 (i8**, i64*, i8*, ...) @RpcOut_sendOne(i8** %5, i64* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* %9), !dbg !405
  store i8 %10, i8* %6, align 1, !dbg !406
  %11 = load i8, i8* %6, align 1, !dbg !407
  %12 = icmp ne i8 %11, 0, !dbg !407
  br i1 %12, label %23, label %13, !dbg !409

; <label>:13:                                     ; preds = %2
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !410
  %15 = load i8*, i8** %5, align 8, !dbg !412
  %16 = icmp ne i8* %15, null, !dbg !412
  br i1 %16, label %17, label %19, !dbg !412

; <label>:17:                                     ; preds = %13
  %18 = load i8*, i8** %5, align 8, !dbg !413
  br label %20, !dbg !415

; <label>:19:                                     ; preds = %13
  br label %20, !dbg !416

; <label>:20:                                     ; preds = %19, %17
  %21 = phi i8* [ %18, %17 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), %19 ], !dbg !418
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* %21), !dbg !420
  br label %26, !dbg !421

; <label>:23:                                     ; preds = %2
  %24 = load i8*, i8** %5, align 8, !dbg !422
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* %24), !dbg !424
  br label %26

; <label>:26:                                     ; preds = %23, %20
  %27 = load i8*, i8** %5, align 8, !dbg !425
  call void @free(i8* %27) #6, !dbg !426
  %28 = load i8, i8* %6, align 1, !dbg !427
  %29 = sext i8 %28 to i32, !dbg !427
  %30 = icmp eq i32 %29, 1, !dbg !428
  %31 = select i1 %30, i32 0, i32 1, !dbg !427
  ret i32 %31, !dbg !429
}

declare signext i8 @RpcOut_sendOne(i8**, i64*, i8*, ...) #1

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: noreturn nounwind uwtable
define void @Panic(i8*, ...) #5 !dbg !120 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !430, metadata !248), !dbg !431
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !432, metadata !248), !dbg !447
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !448
  %5 = bitcast %struct.__va_list_tag* %4 to i8*, !dbg !448
  call void @llvm.va_start(i8* %5), !dbg !448
  %6 = load i8*, i8** %2, align 8, !dbg !449
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !450
  %8 = call i32 @Str_Vsnprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @Panic.buf, i32 0, i32 0), i64 1024, i8* %6, %struct.__va_list_tag* %7), !dbg !451
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !452
  %10 = bitcast %struct.__va_list_tag* %9 to i8*, !dbg !452
  call void @llvm.va_end(i8* %10), !dbg !452
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !453
  %12 = call i32 @fputs(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @Panic.buf, i32 0, i32 0), %struct._IO_FILE* %11), !dbg !454
  call void @abort() #11, !dbg !455
  unreachable, !dbg !455
                                                  ; No predecessors!
  ret void, !dbg !456
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

declare i32 @Str_Vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

; Function Attrs: noreturn nounwind
declare void @abort() #7

; Function Attrs: nounwind uwtable
define void @Debug(i8*, ...) #0 !dbg !457 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !460, metadata !248), !dbg !461
  ret void, !dbg !462
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #8

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #8

; Function Attrs: nounwind
declare i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) #4

; Function Attrs: nounwind
declare i32 @sigfillset(%struct.__sigset_t*) #4

; Function Attrs: nounwind
declare i8* @strerror(i32) #4

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #9

; Function Attrs: noreturn nounwind
declare void @exit(i32) #7

; Function Attrs: nounwind
declare i32 @raise(i32) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { argmemonly nounwind }
attributes #9 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readonly }
attributes #11 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!231, !232}
!llvm.ident = !{!233}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !29, globals: !118)
!1 = !DIFile(filename: "rpctool.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1344")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 41, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/ucontext.h", directory: "/home/lichi/Desktop/open-vm-tools/line1344")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!6 = !DIEnumerator(name: "GNU_REG_R8", value: 0)
!7 = !DIEnumerator(name: "GNU_REG_R9", value: 1)
!8 = !DIEnumerator(name: "GNU_REG_R10", value: 2)
!9 = !DIEnumerator(name: "GNU_REG_R11", value: 3)
!10 = !DIEnumerator(name: "GNU_REG_R12", value: 4)
!11 = !DIEnumerator(name: "GNU_REG_R13", value: 5)
!12 = !DIEnumerator(name: "GNU_REG_R14", value: 6)
!13 = !DIEnumerator(name: "GNU_REG_R15", value: 7)
!14 = !DIEnumerator(name: "GNU_REG_RDI", value: 8)
!15 = !DIEnumerator(name: "GNU_REG_RSI", value: 9)
!16 = !DIEnumerator(name: "GNU_REG_RBP", value: 10)
!17 = !DIEnumerator(name: "GNU_REG_RBX", value: 11)
!18 = !DIEnumerator(name: "GNU_REG_RDX", value: 12)
!19 = !DIEnumerator(name: "GNU_REG_RAX", value: 13)
!20 = !DIEnumerator(name: "GNU_REG_RCX", value: 14)
!21 = !DIEnumerator(name: "GNU_REG_RSP", value: 15)
!22 = !DIEnumerator(name: "GNU_REG_RIP", value: 16)
!23 = !DIEnumerator(name: "REG_EFL", value: 17)
!24 = !DIEnumerator(name: "REG_CSGSFS", value: 18)
!25 = !DIEnumerator(name: "REG_ERR", value: 19)
!26 = !DIEnumerator(name: "REG_TRAPNO", value: 20)
!27 = !DIEnumerator(name: "REG_OLDMASK", value: 21)
!28 = !DIEnumerator(name: "REG_CR2", value: 22)
!29 = !{!30, !35}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucontext_t", file: !4, line: 141, baseType: !32)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucontext", file: !4, line: 133, size: 7488, align: 64, elements: !33)
!33 = !{!34, !36, !38, !50, !110, !117}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "uc_flags", scope: !32, file: !4, line: 135, baseType: !35, size: 64, align: 64)
!35 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "uc_link", scope: !32, file: !4, line: 136, baseType: !37, size: 64, align: 64, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, align: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "uc_stack", scope: !32, file: !4, line: 137, baseType: !39, size: 192, align: 64, offset: 128)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "stack_t", file: !40, line: 54, baseType: !41)
!40 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sigstack.h", directory: "/home/lichi/Desktop/open-vm-tools/line1344")
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaltstack", file: !40, line: 49, size: 192, align: 64, elements: !42)
!42 = !{!43, !45, !47}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "ss_sp", scope: !41, file: !40, line: 51, baseType: !44, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "ss_flags", scope: !41, file: !40, line: 52, baseType: !46, size: 32, align: 32, offset: 64)
!46 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "ss_size", scope: !41, file: !40, line: 53, baseType: !48, size: 64, align: 64, offset: 128)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !49, line: 216, baseType: !35)
!49 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line1344")
!50 = !DIDerivedType(tag: DW_TAG_member, name: "uc_mcontext", scope: !32, file: !4, line: 138, baseType: !51, size: 2048, align: 64, offset: 320)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "mcontext_t", file: !4, line: 130, baseType: !52)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 124, size: 2048, align: 64, elements: !53)
!53 = !{!54, !61, !107}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "gregs", scope: !52, file: !4, line: 126, baseType: !55, size: 1472, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "gregset_t", file: !4, line: 37, baseType: !56)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 1472, align: 64, elements: !59)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "greg_t", file: !4, line: 31, baseType: !58)
!58 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!59 = !{!60}
!60 = !DISubrange(count: 23)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "fpregs", scope: !52, file: !4, line: 128, baseType: !62, size: 64, align: 64, offset: 1472)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpregset_t", file: !4, line: 121, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_libc_fpstate", file: !4, line: 104, size: 4096, align: 64, elements: !65)
!65 = !{!66, !70, !71, !72, !73, !75, !76, !79, !80, !95, !103}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !64, file: !4, line: 107, baseType: !67, size: 16, align: 16)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !68, line: 39, baseType: !69)
!68 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1344")
!69 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !64, file: !4, line: 108, baseType: !67, size: 16, align: 16, offset: 16)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "ftw", scope: !64, file: !4, line: 109, baseType: !67, size: 16, align: 16, offset: 32)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !64, file: !4, line: 110, baseType: !67, size: 16, align: 16, offset: 48)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !64, file: !4, line: 111, baseType: !74, size: 64, align: 64, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !68, line: 44, baseType: !35)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !64, file: !4, line: 112, baseType: !74, size: 64, align: 64, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !64, file: !4, line: 113, baseType: !77, size: 32, align: 32, offset: 192)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !68, line: 41, baseType: !78)
!78 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "mxcr_mask", scope: !64, file: !4, line: 114, baseType: !77, size: 32, align: 32, offset: 224)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_st", scope: !64, file: !4, line: 115, baseType: !81, size: 1024, align: 16, offset: 256)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 1024, align: 16, elements: !93)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_libc_fpxreg", file: !4, line: 92, size: 128, align: 16, elements: !83)
!83 = !{!84, !88, !89}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "significand", scope: !82, file: !4, line: 94, baseType: !85, size: 64, align: 16)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 64, align: 16, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 4)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "exponent", scope: !82, file: !4, line: 95, baseType: !69, size: 16, align: 16, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !82, file: !4, line: 96, baseType: !90, size: 48, align: 16, offset: 80)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 48, align: 16, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 3)
!93 = !{!94}
!94 = !DISubrange(count: 8)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_xmm", scope: !64, file: !4, line: 116, baseType: !96, size: 2048, align: 32, offset: 1280)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 2048, align: 32, elements: !101)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_libc_xmmreg", file: !4, line: 99, size: 128, align: 32, elements: !98)
!98 = !{!99}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "element", scope: !97, file: !4, line: 101, baseType: !100, size: 128, align: 32)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 128, align: 32, elements: !86)
!101 = !{!102}
!102 = !DISubrange(count: 16)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !64, file: !4, line: 117, baseType: !104, size: 768, align: 32, offset: 3328)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 768, align: 32, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 24)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved1", scope: !52, file: !4, line: 129, baseType: !108, size: 512, align: 64, offset: 1536)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 512, align: 64, elements: !93)
!109 = !DIBasicType(name: "long long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "uc_sigmask", scope: !32, file: !4, line: 139, baseType: !111, size: 1024, align: 64, offset: 2368)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !112, line: 30, baseType: !113)
!112 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sigset.h", directory: "/home/lichi/Desktop/open-vm-tools/line1344")
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !112, line: 27, size: 1024, align: 64, elements: !114)
!114 = !{!115}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !113, file: !112, line: 29, baseType: !116, size: 1024, align: 64)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 1024, align: 64, elements: !101)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "__fpregs_mem", scope: !32, file: !4, line: 140, baseType: !64, size: 4096, align: 64, offset: 3392)
!118 = !{!119, !131}
!119 = distinct !DIGlobalVariable(name: "buf", scope: !120, file: !121, line: 194, type: !128, isLocal: true, isDefinition: true, variable: [1024 x i8]* @Panic.buf)
!120 = distinct !DISubprogram(name: "Panic", scope: !121, file: !121, line: 191, type: !122, isLocal: false, isDefinition: true, scopeLine: 192, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !127)
!121 = !DIFile(filename: "rpctool.c", directory: "/home/lichi/Desktop/open-vm-tools/line1344")
!122 = !DISubroutineType(types: !123)
!123 = !{null, !124, null}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64, align: 64)
!125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !126)
!126 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!127 = !{}
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 8192, align: 8, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 1024)
!131 = distinct !DIGlobalVariable(name: "old", scope: !132, file: !121, line: 101, type: !212, isLocal: true, isDefinition: true, variable: %struct.sigaction* @SetSignalHandler.old)
!132 = distinct !DISubprogram(name: "SetSignalHandler", scope: !121, file: !121, line: 97, type: !133, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !127)
!133 = !DISubroutineType(types: !134)
!134 = !{!135, !46, !137, !135}
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !136, line: 230, baseType: !126)
!136 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1344")
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64, align: 64)
!138 = !DISubroutineType(types: !139)
!139 = !{null, !46, !140, !44}
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !142, line: 133, baseType: !143)
!142 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/siginfo.h", directory: "/home/lichi/Desktop/open-vm-tools/line1344")
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !142, line: 62, size: 1024, align: 64, elements: !144)
!144 = !{!145, !146, !147, !148}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !143, file: !142, line: 64, baseType: !46, size: 32, align: 32)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !143, file: !142, line: 65, baseType: !46, size: 32, align: 32, offset: 32)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !143, file: !142, line: 67, baseType: !46, size: 32, align: 32, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !143, file: !142, line: 132, baseType: !149, size: 896, align: 64, offset: 128)
!149 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !143, file: !142, line: 69, size: 896, align: 64, elements: !150)
!150 = !{!151, !155, !162, !173, !179, !190, !201, !206}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_pad", scope: !149, file: !142, line: 71, baseType: !152, size: 896, align: 32)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 896, align: 32, elements: !153)
!153 = !{!154}
!154 = !DISubrange(count: 28)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !149, file: !142, line: 78, baseType: !156, size: 64, align: 32)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !149, file: !142, line: 74, size: 64, align: 32, elements: !157)
!157 = !{!158, !160}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !156, file: !142, line: 76, baseType: !159, size: 32, align: 32)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !68, line: 133, baseType: !46)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !156, file: !142, line: 77, baseType: !161, size: 32, align: 32, offset: 32)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !68, line: 125, baseType: !78)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !149, file: !142, line: 86, baseType: !163, size: 128, align: 64)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !149, file: !142, line: 81, size: 128, align: 64, elements: !164)
!164 = !{!165, !166, !167}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "si_tid", scope: !163, file: !142, line: 83, baseType: !46, size: 32, align: 32)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "si_overrun", scope: !163, file: !142, line: 84, baseType: !46, size: 32, align: 32, offset: 32)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !163, file: !142, line: 85, baseType: !168, size: 64, align: 64, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !142, line: 36, baseType: !169)
!169 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !142, line: 32, size: 64, align: 64, elements: !170)
!170 = !{!171, !172}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !169, file: !142, line: 34, baseType: !46, size: 32, align: 32)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !169, file: !142, line: 35, baseType: !44, size: 64, align: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !149, file: !142, line: 94, baseType: !174, size: 128, align: 64)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !149, file: !142, line: 89, size: 128, align: 64, elements: !175)
!175 = !{!176, !177, !178}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !174, file: !142, line: 91, baseType: !159, size: 32, align: 32)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !174, file: !142, line: 92, baseType: !161, size: 32, align: 32, offset: 32)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !174, file: !142, line: 93, baseType: !168, size: 64, align: 64, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !149, file: !142, line: 104, baseType: !180, size: 256, align: 64)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !149, file: !142, line: 97, size: 256, align: 64, elements: !181)
!181 = !{!182, !183, !184, !185, !189}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !180, file: !142, line: 99, baseType: !159, size: 32, align: 32)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !180, file: !142, line: 100, baseType: !161, size: 32, align: 32, offset: 32)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "si_status", scope: !180, file: !142, line: 101, baseType: !46, size: 32, align: 32, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "si_utime", scope: !180, file: !142, line: 102, baseType: !186, size: 64, align: 64, offset: 128)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigchld_clock_t", file: !142, line: 58, baseType: !187)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !68, line: 135, baseType: !188)
!188 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "si_stime", scope: !180, file: !142, line: 103, baseType: !186, size: 64, align: 64, offset: 192)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !149, file: !142, line: 116, baseType: !191, size: 256, align: 64)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !149, file: !142, line: 107, size: 256, align: 64, elements: !192)
!192 = !{!193, !194, !196}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr", scope: !191, file: !142, line: 109, baseType: !44, size: 64, align: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr_lsb", scope: !191, file: !142, line: 110, baseType: !195, size: 16, align: 16, offset: 64)
!195 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr_bnd", scope: !191, file: !142, line: 115, baseType: !197, size: 128, align: 64, offset: 128)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !191, file: !142, line: 111, size: 128, align: 64, elements: !198)
!198 = !{!199, !200}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !197, file: !142, line: 113, baseType: !44, size: 64, align: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !197, file: !142, line: 114, baseType: !44, size: 64, align: 64, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !149, file: !142, line: 123, baseType: !202, size: 128, align: 64)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !149, file: !142, line: 119, size: 128, align: 64, elements: !203)
!203 = !{!204, !205}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "si_band", scope: !202, file: !142, line: 121, baseType: !188, size: 64, align: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "si_fd", scope: !202, file: !142, line: 122, baseType: !46, size: 32, align: 32, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !149, file: !142, line: 131, baseType: !207, size: 128, align: 64)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !149, file: !142, line: 126, size: 128, align: 64, elements: !208)
!208 = !{!209, !210, !211}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !207, file: !142, line: 128, baseType: !44, size: 64, align: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !207, file: !142, line: 129, baseType: !46, size: 32, align: 32, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !207, file: !142, line: 130, baseType: !78, size: 32, align: 32, offset: 96)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !213, line: 24, size: 1216, align: 64, elements: !214)
!213 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sigaction.h", directory: "/home/lichi/Desktop/open-vm-tools/line1344")
!214 = !{!215, !225, !226, !227}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "__sigaction_handler", scope: !212, file: !213, line: 35, baseType: !216, size: 64, align: 64)
!216 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !212, file: !213, line: 28, size: 64, align: 64, elements: !217)
!217 = !{!218, !224}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !216, file: !213, line: 31, baseType: !219, size: 64, align: 64)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !220, line: 85, baseType: !221)
!220 = !DIFile(filename: "/usr/include/signal.h", directory: "/home/lichi/Desktop/open-vm-tools/line1344")
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64, align: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{null, !46}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "sa_sigaction", scope: !216, file: !213, line: 33, baseType: !137, size: 64, align: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !212, file: !213, line: 43, baseType: !111, size: 1024, align: 64, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !212, file: !213, line: 46, baseType: !46, size: 32, align: 32, offset: 1088)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !212, file: !213, line: 49, baseType: !228, size: 64, align: 64, offset: 1152)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64, align: 64)
!229 = !DISubroutineType(types: !230)
!230 = !{null}
!231 = !{i32 2, !"Dwarf Version", i32 4}
!232 = !{i32 2, !"Debug Info Version", i32 3}
!233 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!234 = distinct !DISubprogram(name: "PrintUsage", scope: !121, file: !121, line: 50, type: !229, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !127)
!235 = !DILocation(line: 52, column: 11, scope: !234)
!236 = !DILocation(line: 52, column: 4, scope: !234)
!237 = !DILocation(line: 53, column: 11, scope: !234)
!238 = !DILocation(line: 53, column: 4, scope: !234)
!239 = !DILocation(line: 54, column: 11, scope: !234)
!240 = !DILocation(line: 54, column: 4, scope: !234)
!241 = !DILocation(line: 55, column: 1, scope: !234)
!242 = distinct !DISubprogram(name: "main", scope: !121, file: !121, line: 134, type: !243, isLocal: false, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !127)
!243 = !DISubroutineType(types: !244)
!244 = !{!46, !46, !245}
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64, align: 64)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!247 = !DILocalVariable(name: "argc", arg: 1, scope: !242, file: !121, line: 134, type: !46)
!248 = !DIExpression()
!249 = !DILocation(line: 134, column: 10, scope: !242)
!250 = !DILocalVariable(name: "argv", arg: 2, scope: !242, file: !121, line: 134, type: !245)
!251 = !DILocation(line: 134, column: 22, scope: !242)
!252 = !DILocalVariable(name: "ret", scope: !242, file: !121, line: 136, type: !46)
!253 = !DILocation(line: 136, column: 8, scope: !242)
!254 = !DILocation(line: 138, column: 8, scope: !255)
!255 = distinct !DILexicalBlock(scope: !242, file: !121, line: 138, column: 8)
!256 = !DILocation(line: 138, column: 13, scope: !255)
!257 = !DILocation(line: 138, column: 8, scope: !242)
!258 = !DILocation(line: 139, column: 7, scope: !259)
!259 = distinct !DILexicalBlock(scope: !255, file: !121, line: 138, column: 19)
!260 = !DILocation(line: 140, column: 7, scope: !259)
!261 = !DILocation(line: 143, column: 17, scope: !262)
!262 = distinct !DILexicalBlock(scope: !242, file: !121, line: 143, column: 8)
!263 = !DILocation(line: 143, column: 9, scope: !262)
!264 = !DILocation(line: 143, column: 35, scope: !262)
!265 = !DILocation(line: 144, column: 17, scope: !262)
!266 = !DILocation(line: 144, column: 9, scope: !262)
!267 = !DILocation(line: 143, column: 8, scope: !268)
!268 = !DILexicalBlockFile(scope: !242, file: !121, discriminator: 1)
!269 = !DILocation(line: 145, column: 7, scope: !270)
!270 = distinct !DILexicalBlock(scope: !262, file: !121, line: 144, column: 40)
!271 = !DILocation(line: 146, column: 7, scope: !270)
!272 = !DILocation(line: 149, column: 8, scope: !242)
!273 = !DILocation(line: 150, column: 8, scope: !242)
!274 = !DILocation(line: 166, column: 8, scope: !275)
!275 = distinct !DILexicalBlock(scope: !242, file: !121, line: 166, column: 8)
!276 = !DILocation(line: 166, column: 8, scope: !242)
!277 = !DILocation(line: 167, column: 28, scope: !278)
!278 = distinct !DILexicalBlock(scope: !275, file: !121, line: 166, column: 57)
!279 = !DILocation(line: 167, column: 34, scope: !278)
!280 = !DILocation(line: 167, column: 13, scope: !278)
!281 = !DILocation(line: 167, column: 11, scope: !278)
!282 = !DILocation(line: 168, column: 4, scope: !278)
!283 = !DILocation(line: 169, column: 4, scope: !242)
!284 = !DILocation(line: 171, column: 11, scope: !242)
!285 = !DILocation(line: 171, column: 4, scope: !242)
!286 = !DILocation(line: 172, column: 1, scope: !242)
!287 = !DILocalVariable(name: "sig", arg: 1, scope: !132, file: !121, line: 97, type: !46)
!288 = !DILocation(line: 97, column: 22, scope: !132)
!289 = !DILocalVariable(name: "handler", arg: 2, scope: !132, file: !121, line: 98, type: !137)
!290 = !DILocation(line: 98, column: 25, scope: !132)
!291 = !DILocalVariable(name: "reset", arg: 3, scope: !132, file: !121, line: 99, type: !135)
!292 = !DILocation(line: 99, column: 23, scope: !132)
!293 = !DILocation(line: 103, column: 8, scope: !294)
!294 = distinct !DILexicalBlock(scope: !132, file: !121, line: 103, column: 8)
!295 = !DILocation(line: 103, column: 8, scope: !132)
!296 = !DILocalVariable(name: "tmp", scope: !297, file: !121, line: 104, type: !212)
!297 = distinct !DILexicalBlock(scope: !294, file: !121, line: 103, column: 15)
!298 = !DILocation(line: 104, column: 24, scope: !297)
!299 = !DILocation(line: 104, column: 30, scope: !297)
!300 = !DILocation(line: 106, column: 7, scope: !297)
!301 = !DILocation(line: 107, column: 24, scope: !297)
!302 = !DILocation(line: 107, column: 14, scope: !297)
!303 = !DILocation(line: 107, column: 7, scope: !297)
!304 = !DILocalVariable(name: "new", scope: !305, file: !121, line: 109, type: !212)
!305 = distinct !DILexicalBlock(scope: !294, file: !121, line: 108, column: 11)
!306 = !DILocation(line: 109, column: 24, scope: !305)
!307 = !DILocation(line: 112, column: 25, scope: !305)
!308 = !DILocation(line: 112, column: 10, scope: !305)
!309 = !DILocation(line: 112, column: 30, scope: !305)
!310 = !DILocation(line: 112, column: 23, scope: !305)
!311 = !DILocation(line: 113, column: 11, scope: !305)
!312 = !DILocation(line: 113, column: 20, scope: !305)
!313 = !DILocation(line: 116, column: 27, scope: !314)
!314 = distinct !DILexicalBlock(scope: !305, file: !121, line: 116, column: 11)
!315 = !DILocation(line: 116, column: 11, scope: !314)
!316 = !DILocation(line: 116, column: 36, scope: !314)
!317 = !DILocation(line: 116, column: 11, scope: !305)
!318 = !DILocation(line: 117, column: 17, scope: !319)
!319 = distinct !DILexicalBlock(scope: !314, file: !121, line: 116, column: 43)
!320 = !DILocation(line: 118, column: 28, scope: !319)
!321 = !DILocation(line: 118, column: 27, scope: !319)
!322 = !DILocation(line: 118, column: 18, scope: !323)
!323 = !DILexicalBlockFile(scope: !319, file: !121, discriminator: 1)
!324 = !DILocation(line: 117, column: 10, scope: !319)
!325 = !DILocation(line: 119, column: 10, scope: !319)
!326 = !DILocation(line: 122, column: 21, scope: !327)
!327 = distinct !DILexicalBlock(scope: !305, file: !121, line: 122, column: 11)
!328 = !DILocation(line: 122, column: 11, scope: !327)
!329 = !DILocation(line: 122, column: 38, scope: !327)
!330 = !DILocation(line: 122, column: 11, scope: !305)
!331 = !DILocation(line: 123, column: 17, scope: !332)
!332 = distinct !DILexicalBlock(scope: !327, file: !121, line: 122, column: 45)
!333 = !DILocation(line: 124, column: 28, scope: !332)
!334 = !DILocation(line: 124, column: 27, scope: !332)
!335 = !DILocation(line: 124, column: 18, scope: !336)
!336 = !DILexicalBlockFile(scope: !332, file: !121, discriminator: 1)
!337 = !DILocation(line: 123, column: 10, scope: !332)
!338 = !DILocation(line: 125, column: 10, scope: !332)
!339 = !DILocation(line: 128, column: 4, scope: !132)
!340 = !DILocation(line: 129, column: 1, scope: !132)
!341 = distinct !DISubprogram(name: "SignalHandler", scope: !121, file: !121, line: 77, type: !138, isLocal: true, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !127)
!342 = !DILocalVariable(name: "sig", arg: 1, scope: !341, file: !121, line: 77, type: !46)
!343 = !DILocation(line: 77, column: 19, scope: !341)
!344 = !DILocalVariable(name: "sip", arg: 2, scope: !341, file: !121, line: 78, type: !140)
!345 = !DILocation(line: 78, column: 26, scope: !341)
!346 = !DILocalVariable(name: "data", arg: 3, scope: !341, file: !121, line: 79, type: !44)
!347 = !DILocation(line: 79, column: 21, scope: !341)
!348 = !DILocalVariable(name: "ucp", scope: !341, file: !121, line: 81, type: !30)
!349 = !DILocation(line: 81, column: 16, scope: !341)
!350 = !DILocation(line: 81, column: 37, scope: !341)
!351 = !DILocation(line: 81, column: 22, scope: !341)
!352 = !DILocalVariable(name: "port", scope: !341, file: !121, line: 82, type: !353)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !136, line: 175, baseType: !354)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !355, line: 49, baseType: !69)
!355 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line1344")
!356 = !DILocation(line: 82, column: 11, scope: !341)
!357 = !DILocation(line: 82, column: 36, scope: !341)
!358 = !DILocation(line: 82, column: 42, scope: !341)
!359 = !DILocation(line: 82, column: 54, scope: !341)
!360 = !DILocation(line: 82, column: 35, scope: !341)
!361 = !DILocation(line: 82, column: 74, scope: !341)
!362 = !DILocation(line: 82, column: 18, scope: !341)
!363 = !DILocalVariable(name: "magic", scope: !341, file: !121, line: 83, type: !364)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !136, line: 173, baseType: !365)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !355, line: 51, baseType: !78)
!366 = !DILocation(line: 83, column: 11, scope: !341)
!367 = !DILocation(line: 83, column: 37, scope: !341)
!368 = !DILocation(line: 83, column: 43, scope: !341)
!369 = !DILocation(line: 83, column: 55, scope: !341)
!370 = !DILocation(line: 83, column: 36, scope: !341)
!371 = !DILocation(line: 83, column: 75, scope: !341)
!372 = !DILocation(line: 83, column: 19, scope: !341)
!373 = !DILocation(line: 85, column: 8, scope: !374)
!374 = distinct !DILexicalBlock(scope: !341, file: !121, line: 85, column: 8)
!375 = !DILocation(line: 85, column: 14, scope: !374)
!376 = !DILocation(line: 85, column: 28, scope: !374)
!377 = !DILocation(line: 86, column: 9, scope: !374)
!378 = !DILocation(line: 86, column: 14, scope: !374)
!379 = !DILocation(line: 86, column: 24, scope: !374)
!380 = !DILocation(line: 86, column: 27, scope: !381)
!381 = !DILexicalBlockFile(scope: !374, file: !121, discriminator: 1)
!382 = !DILocation(line: 86, column: 32, scope: !381)
!383 = !DILocation(line: 85, column: 8, scope: !384)
!384 = !DILexicalBlockFile(scope: !341, file: !121, discriminator: 1)
!385 = !DILocation(line: 87, column: 14, scope: !386)
!386 = distinct !DILexicalBlock(scope: !374, file: !121, line: 86, column: 44)
!387 = !DILocation(line: 87, column: 7, scope: !386)
!388 = !DILocation(line: 88, column: 7, scope: !386)
!389 = !DILocation(line: 90, column: 24, scope: !390)
!390 = distinct !DILexicalBlock(scope: !374, file: !121, line: 89, column: 11)
!391 = !DILocation(line: 90, column: 7, scope: !390)
!392 = !DILocation(line: 91, column: 13, scope: !390)
!393 = !DILocation(line: 91, column: 7, scope: !390)
!394 = !DILocation(line: 93, column: 1, scope: !341)
!395 = distinct !DISubprogram(name: "RpcToolCommand", scope: !121, file: !121, line: 175, type: !243, isLocal: false, isDefinition: true, scopeLine: 176, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !127)
!396 = !DILocalVariable(name: "argc", arg: 1, scope: !395, file: !121, line: 175, type: !46)
!397 = !DILocation(line: 175, column: 20, scope: !395)
!398 = !DILocalVariable(name: "argv", arg: 2, scope: !395, file: !121, line: 175, type: !245)
!399 = !DILocation(line: 175, column: 32, scope: !395)
!400 = !DILocalVariable(name: "result", scope: !395, file: !121, line: 177, type: !246)
!401 = !DILocation(line: 177, column: 10, scope: !395)
!402 = !DILocalVariable(name: "status", scope: !395, file: !121, line: 178, type: !135)
!403 = !DILocation(line: 178, column: 9, scope: !395)
!404 = !DILocation(line: 180, column: 48, scope: !395)
!405 = !DILocation(line: 180, column: 13, scope: !395)
!406 = !DILocation(line: 180, column: 11, scope: !395)
!407 = !DILocation(line: 181, column: 9, scope: !408)
!408 = distinct !DILexicalBlock(scope: !395, file: !121, line: 181, column: 8)
!409 = !DILocation(line: 181, column: 8, scope: !395)
!410 = !DILocation(line: 182, column: 14, scope: !411)
!411 = distinct !DILexicalBlock(scope: !408, file: !121, line: 181, column: 17)
!412 = !DILocation(line: 182, column: 30, scope: !411)
!413 = !DILocation(line: 182, column: 39, scope: !414)
!414 = !DILexicalBlockFile(scope: !411, file: !121, discriminator: 1)
!415 = !DILocation(line: 182, column: 30, scope: !414)
!416 = !DILocation(line: 182, column: 30, scope: !417)
!417 = !DILexicalBlockFile(scope: !411, file: !121, discriminator: 2)
!418 = !DILocation(line: 182, column: 30, scope: !419)
!419 = !DILexicalBlockFile(scope: !411, file: !121, discriminator: 3)
!420 = !DILocation(line: 182, column: 7, scope: !419)
!421 = !DILocation(line: 183, column: 4, scope: !411)
!422 = !DILocation(line: 184, column: 22, scope: !423)
!423 = distinct !DILexicalBlock(scope: !408, file: !121, line: 183, column: 11)
!424 = !DILocation(line: 184, column: 7, scope: !423)
!425 = !DILocation(line: 186, column: 9, scope: !395)
!426 = !DILocation(line: 186, column: 4, scope: !395)
!427 = !DILocation(line: 187, column: 12, scope: !395)
!428 = !DILocation(line: 187, column: 19, scope: !395)
!429 = !DILocation(line: 187, column: 4, scope: !395)
!430 = !DILocalVariable(name: "fmt", arg: 1, scope: !120, file: !121, line: 191, type: !124)
!431 = !DILocation(line: 191, column: 19, scope: !120)
!432 = !DILocalVariable(name: "args", scope: !120, file: !121, line: 193, type: !433)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !434, line: 79, baseType: !435)
!434 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/open-vm-tools/line1344")
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !436, line: 40, baseType: !437)
!436 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h", directory: "/home/lichi/Desktop/open-vm-tools/line1344")
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 193, baseType: !438)
!438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !439, size: 192, align: 64, elements: !445)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 193, size: 192, align: 64, elements: !440)
!440 = !{!441, !442, !443, !444}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !439, file: !1, line: 193, baseType: !78, size: 32, align: 32)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !439, file: !1, line: 193, baseType: !78, size: 32, align: 32, offset: 32)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !439, file: !1, line: 193, baseType: !44, size: 64, align: 64, offset: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !439, file: !1, line: 193, baseType: !44, size: 64, align: 64, offset: 128)
!445 = !{!446}
!446 = !DISubrange(count: 1)
!447 = !DILocation(line: 193, column: 12, scope: !120)
!448 = !DILocation(line: 196, column: 3, scope: !120)
!449 = !DILocation(line: 197, column: 35, scope: !120)
!450 = !DILocation(line: 197, column: 40, scope: !120)
!451 = !DILocation(line: 197, column: 4, scope: !120)
!452 = !DILocation(line: 198, column: 3, scope: !120)
!453 = !DILocation(line: 200, column: 14, scope: !120)
!454 = !DILocation(line: 200, column: 4, scope: !120)
!455 = !DILocation(line: 201, column: 4, scope: !120)
!456 = !DILocation(line: 202, column: 1, scope: !120)
!457 = distinct !DISubprogram(name: "Debug", scope: !121, file: !121, line: 206, type: !458, isLocal: false, isDefinition: true, scopeLine: 207, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !127)
!458 = !DISubroutineType(types: !459)
!459 = !{null, !246, null}
!460 = !DILocalVariable(name: "fmt", arg: 1, scope: !457, file: !121, line: 206, type: !246)
!461 = !DILocation(line: 206, column: 13, scope: !457)
!462 = !DILocation(line: 221, column: 1, scope: !457)
